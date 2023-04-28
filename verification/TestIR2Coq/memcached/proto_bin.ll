; ModuleID = 'proto_bin.c'
source_filename = "proto_bin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.settings = type { i64, i32, i32, i32, i8*, i32, i32, i64, i32, i8*, i8*, i32, double, i32, i32, i32, i8, i32, i32, i8, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i32, double, i32, i32, i8, i32, i8, i8, i8*, i32, i32, i32, i32, double, double, i32, i8, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, double, double, i8, i32, i32, i8*, i32 }
%emit_function_args_ty = type { i32, i32, i32 }
%emit_arcs_args_ty = type { i32, i64* }
%struct.conn = type { i8**, i32, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, %struct.event, i16, i16, i8*, i8*, i32, i32, %struct._mc_resp*, %struct._mc_resp*, i8*, i32, i8*, i32, i32, [3 x %struct.io_queue_s], i32, i32, i32, i32, i32, %struct.sockaddr_in6, i32, i8, %struct.anon.11, %union.protocol_binary_request_header, i64, i64, i16, i32, i32, %struct.conn*, %struct.LIBEVENT_THREAD*, i32 (%struct.conn*)*, i64 (%struct.conn*, i8*, i64)*, i64 (%struct.conn*, %struct.msghdr*, i32)*, i64 (%struct.conn*, i8*, i64)* }
%struct.event = type { %struct.event_callback, %union.anon.0, i32, %struct.event_base*, %union.anon.2, i16, i16, %struct.timeval }
%struct.event_callback = type { %struct.anon, i16, i8, i8, %union.anon, i8* }
%struct.anon = type { %struct.event_callback*, %struct.event_callback** }
%union.anon = type { void (i32, i16, i8*)* }
%union.anon.0 = type { %struct.anon.1 }
%struct.anon.1 = type { %struct.event*, %struct.event** }
%struct.event_base = type opaque
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.anon.4, %struct.timeval }
%struct.anon.4 = type { %struct.event*, %struct.event** }
%struct.timeval = type { i64, i64 }
%struct._mc_resp = type { %struct._mc_resp_bundle*, %struct._mc_resp*, i32, i32, i8*, %struct._io_pending_t*, %struct._stritem*, [4 x %struct.iovec], i32, i8, i8, i8, i8, i16, i16, i16, %struct.sockaddr_in6, i32, [1024 x i8] }
%struct._mc_resp_bundle = type { i8, i8, %struct._mc_resp_bundle*, %struct._mc_resp_bundle*, [0 x %struct._mc_resp] }
%struct._io_pending_t = type { i32, %struct.LIBEVENT_THREAD*, %struct.conn*, %struct._mc_resp*, [120 x i8] }
%struct._stritem = type { %struct._stritem*, %struct._stritem*, %struct._stritem*, i32, i32, i32, i16, i16, i8, i8, [0 x %union.anon.9] }
%union.anon.9 = type { i64 }
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
%union.pthread_mutex_t = type { %struct.__pthread_mutex_s }
%struct.__pthread_mutex_s = type { i32, i32, i32, i32, i32, i16, i16, %struct.__pthread_internal_list }
%struct.__pthread_internal_list = type { %struct.__pthread_internal_list*, %struct.__pthread_internal_list* }
%struct.slab_stats = type { i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.io_queue_cb_s = type { i8*, void (%struct.io_queue_s*)*, void (%struct.io_queue_s*)*, void (%struct._io_pending_t*)*, void (%struct._io_pending_t*)*, i32 }
%struct.conn_queue = type opaque
%struct.cache_t = type { %union.pthread_mutex_t, i8*, %struct.cache_head, i64, i32, i32, i32, i32 }
%struct.cache_head = type { %struct.cache_free_s*, %struct.cache_free_s** }
%struct.cache_free_s = type { %struct.anon.7 }
%struct.anon.7 = type { %struct.cache_free_s* }
%struct._logger = type { %struct._logger*, %struct._logger*, %union.pthread_mutex_t, i64, i64, i64, i16, i16, i16, %struct.bipbuf_t*, %struct._entry_details* }
%struct.bipbuf_t = type { i64, i32, i32, i32, i32, [0 x i8] }
%struct._entry_details = type { i32, i16, void (%struct._logentry*, %struct._entry_details*, i8*, %struct.__va_list_tag*)*, i32 (%struct._logentry*, i8*)*, i8* }
%struct._logentry = type { i32, i8, i16, i64, %struct.timeval, i32, [0 x %union.anon.8] }
%union.anon.8 = type { i8 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct.msghdr = type { i8*, i32, %struct.iovec*, i64, i8*, i64, i32 }
%struct._strchunk = type { %struct._strchunk*, %struct._strchunk*, %struct._stritem*, i32, i32, i32, i16, i16, i8, i8, [0 x i8] }

@.str = private unnamed_addr constant [10 x i8] c"c != NULL\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"proto_bin.c\00", align 1
@__PRETTY_FUNCTION__.complete_nread_binary = private unnamed_addr constant [35 x i8] c"void complete_nread_binary(conn *)\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"c->cmd >= 0\00", align 1
@stderr = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.3 = private unnamed_addr constant [26 x i8] c"Not handling substate %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@settings = external dso_local local_unnamed_addr global %struct.settings, align 8
@.str.5 = private unnamed_addr constant [31 x i8] c"<%d Read binary protocol data:\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"\0A<%d   \00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c" 0x%02x\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.9 = private unnamed_addr constant [20 x i8] c"Invalid magic:  %x\0A\00", align 1
@current_time = external dso_local global i32, align 4
@.str.10 = private unnamed_addr constant [14 x i8] c"Out of memory\00", align 1
@.str.11 = private unnamed_addr constant [16 x i8] c"Unknown command\00", align 1
@.str.12 = private unnamed_addr constant [10 x i8] c"Not found\00", align 1
@.str.13 = private unnamed_addr constant [18 x i8] c"Invalid arguments\00", align 1
@.str.14 = private unnamed_addr constant [21 x i8] c"Data exists for key.\00", align 1
@.str.15 = private unnamed_addr constant [11 x i8] c"Too large.\00", align 1
@.str.16 = private unnamed_addr constant [47 x i8] c"Non-numeric server-side value for incr or decr\00", align 1
@.str.17 = private unnamed_addr constant [12 x i8] c"Not stored.\00", align 1
@.str.18 = private unnamed_addr constant [14 x i8] c"Auth failure.\00", align 1
@.str.19 = private unnamed_addr constant [6 x i8] c"false\00", align 1
@__PRETTY_FUNCTION__.write_bin_error = private unnamed_addr constant [81 x i8] c"void write_bin_error(conn *, protocol_binary_response_status, const char *, int)\00", align 1
@.str.20 = private unnamed_addr constant [26 x i8] c">%d Writing an error: %s\0A\00", align 1
@.str.21 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.22 = private unnamed_addr constant [26 x i8] c">%d Writing bin response:\00", align 1
@.str.23 = private unnamed_addr constant [7 x i8] c"\0A>%d  \00", align 1
@__PRETTY_FUNCTION__.complete_update_bin = private unnamed_addr constant [33 x i8] c"void complete_update_bin(conn *)\00", align 1
@.str.24 = private unnamed_addr constant [9 x i8] c"c->ritem\00", align 1
@.str.25 = private unnamed_addr constant [25 x i8] c"ch->size - ch->used >= 2\00", align 1
@.str.26 = private unnamed_addr constant [14 x i8] c"settings.sasl\00", align 1
@__PRETTY_FUNCTION__.process_bin_complete_sasl_auth = private unnamed_addr constant [44 x i8] c"void process_bin_complete_sasl_auth(conn *)\00", align 1
@.str.27 = private unnamed_addr constant [8 x i8] c"c->item\00", align 1
@.str.28 = private unnamed_addr constant [37 x i8] c"mech:  ``%s'' with %d bytes of data\0A\00", align 1
@.str.29 = private unnamed_addr constant [76 x i8] c"%d: SASL_STEP called but sasl_server_start not called for this connection!\0A\00", align 1
@.str.30 = private unnamed_addr constant [23 x i8] c"sasl result code:  %d\0A\00", align 1
@.str.32 = private unnamed_addr constant [28 x i8] c"Unknown sasl response:  %d\0A\00", align 1
@__PRETTY_FUNCTION__.init_sasl_conn = private unnamed_addr constant [28 x i8] c"void init_sasl_conn(conn *)\00", align 1
@.str.33 = private unnamed_addr constant [33 x i8] c"Failed to initialize SASL conn.\0A\00", align 1
@.str.34 = private unnamed_addr constant [7 x i8] c"1.6.17\00", align 1
@__PRETTY_FUNCTION__.authenticated = private unnamed_addr constant [28 x i8] c"_Bool authenticated(conn *)\00", align 1
@.str.35 = private unnamed_addr constant [37 x i8] c"authenticated() in cmd 0x%02x is %s\0A\00", align 1
@.str.36 = private unnamed_addr constant [5 x i8] c"true\00", align 1
@.str.37 = private unnamed_addr constant [51 x i8] c"Protocol error (opcode %02x), close connection %d\0A\00", align 1
@__PRETTY_FUNCTION__.process_bin_update = private unnamed_addr constant [40 x i8] c"void process_bin_update(conn *, char *)\00", align 1
@.str.38 = private unnamed_addr constant [9 x i8] c"<%d ADD \00", align 1
@.str.39 = private unnamed_addr constant [9 x i8] c"<%d SET \00", align 1
@.str.40 = private unnamed_addr constant [13 x i8] c"<%d REPLACE \00", align 1
@.str.41 = private unnamed_addr constant [3 x i8] c"%c\00", align 1
@.str.42 = private unnamed_addr constant [17 x i8] c" Value len is %d\00", align 1
@.str.43 = private unnamed_addr constant [43 x i8] c"SERVER_ERROR Out of memory allocating item\00", align 1
@logger_key = external dso_local local_unnamed_addr global i32, align 4
@.str.44 = private unnamed_addr constant [8 x i8] c"<%d %s \00", align 1
@.str.45 = private unnamed_addr constant [6 x i8] c"TOUCH\00", align 1
@.str.46 = private unnamed_addr constant [4 x i8] c"GET\00", align 1
@__PRETTY_FUNCTION__.process_bin_delete = private unnamed_addr constant [32 x i8] c"void process_bin_delete(conn *)\00", align 1
@.str.47 = private unnamed_addr constant [10 x i8] c"Deleting \00", align 1
@__PRETTY_FUNCTION__.complete_incr_bin = private unnamed_addr constant [39 x i8] c"void complete_incr_bin(conn *, char *)\00", align 1
@.str.48 = private unnamed_addr constant [6 x i8] c"incr \00", align 1
@.str.49 = private unnamed_addr constant [17 x i8] c" %lld, %llu, %d\0A\00", align 1
@.str.50 = private unnamed_addr constant [46 x i8] c"SERVER_ERROR Out of memory incrementing value\00", align 1
@.str.51 = private unnamed_addr constant [5 x i8] c"%llu\00", align 1
@.str.52 = private unnamed_addr constant [3 x i8] c"\0D\0A\00", align 1
@.str.53 = private unnamed_addr constant [47 x i8] c"SERVER_ERROR Out of memory allocating new item\00", align 1
@__PRETTY_FUNCTION__.process_bin_append_prepend = private unnamed_addr constant [40 x i8] c"void process_bin_append_prepend(conn *)\00", align 1
@.str.54 = private unnamed_addr constant [17 x i8] c"Value len is %d\0A\00", align 1
@.str.55 = private unnamed_addr constant [11 x i8] c"<%d STATS \00", align 1
@.str.56 = private unnamed_addr constant [6 x i8] c"reset\00", align 1
@.str.57 = private unnamed_addr constant [9 x i8] c"settings\00", align 1
@.str.58 = private unnamed_addr constant [7 x i8] c"detail\00", align 1
@.str.59 = private unnamed_addr constant [6 x i8] c" dump\00", align 1
@.str.60 = private unnamed_addr constant [44 x i8] c"SERVER_ERROR Out of memory generating stats\00", align 1
@.str.61 = private unnamed_addr constant [9 x i8] c"detailed\00", align 1
@.str.62 = private unnamed_addr constant [4 x i8] c" on\00", align 1
@.str.63 = private unnamed_addr constant [5 x i8] c" off\00", align 1
@.str.64 = private unnamed_addr constant [51 x i8] c"SERVER_ERROR Out of memory preparing to send stats\00", align 1
@.str.65 = private unnamed_addr constant [33 x i8] c"Failed to list SASL mechanisms.\0A\00", align 1
@.str.66 = private unnamed_addr constant [37 x i8] c"c->binary_header.request.extlen == 0\00", align 1
@__PRETTY_FUNCTION__.process_bin_sasl_auth = private unnamed_addr constant [35 x i8] c"void process_bin_sasl_auth(conn *)\00", align 1
@.str.67 = private unnamed_addr constant [4 x i8] c"key\00", align 1
@__llvm_gcov_ctr = internal global [6 x i64] zeroinitializer
@__llvm_gcov_ctr.68 = internal global [12 x i64] zeroinitializer
@__llvm_gcov_ctr.69 = internal global [18 x i64] zeroinitializer
@__llvm_gcov_ctr.70 = internal global [12 x i64] zeroinitializer
@__llvm_gcov_ctr.71 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.72 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.73 = internal global [70 x i64] zeroinitializer
@__llvm_gcov_ctr.74 = internal global [14 x i64] zeroinitializer
@__llvm_gcov_ctr.75 = internal global [5 x i64] zeroinitializer
@__llvm_gcov_ctr.76 = internal global [5 x i64] zeroinitializer
@__llvm_gcov_ctr.77 = internal global [6 x i64] zeroinitializer
@__llvm_gcov_ctr.78 = internal global [4 x i64] zeroinitializer
@__llvm_gcov_ctr.79 = internal global [2 x i64] zeroinitializer
@__llvm_gcov_ctr.80 = internal global [7 x i64] zeroinitializer
@__llvm_gcov_ctr.81 = internal global [20 x i64] zeroinitializer
@__llvm_gcov_ctr.82 = internal global [28 x i64] zeroinitializer
@__llvm_gcov_ctr.83 = internal global [9 x i64] zeroinitializer
@__llvm_gcov_ctr.84 = internal global [16 x i64] zeroinitializer
@__llvm_gcov_ctr.85 = internal global [10 x i64] zeroinitializer
@__llvm_gcov_ctr.86 = internal global [19 x i64] zeroinitializer
@__llvm_gcov_ctr.87 = internal global [5 x i64] zeroinitializer
@__llvm_gcov_ctr.88 = internal global [9 x i64] zeroinitializer
@__llvm_gcov_ctr.89 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.90 = internal global [2 x i64] zeroinitializer
@0 = private unnamed_addr constant [57 x i8] c"/home/xuheng/blackbox/llvm-test/memcached/proto_bin.gcda\00", align 1
@__llvm_internal_gcov_emit_function_args.0 = internal unnamed_addr constant [24 x %emit_function_args_ty] [%emit_function_args_ty { i32 0, i32 1495229284, i32 390818216 }, %emit_function_args_ty { i32 1, i32 453854710, i32 390818216 }, %emit_function_args_ty { i32 2, i32 1123634395, i32 390818216 }, %emit_function_args_ty { i32 3, i32 918629710, i32 390818216 }, %emit_function_args_ty { i32 4, i32 358640027, i32 390818216 }, %emit_function_args_ty { i32 5, i32 1952771851, i32 390818216 }, %emit_function_args_ty { i32 6, i32 -429152665, i32 390818216 }, %emit_function_args_ty { i32 7, i32 1734872298, i32 390818216 }, %emit_function_args_ty { i32 8, i32 255486712, i32 390818216 }, %emit_function_args_ty { i32 9, i32 1902131571, i32 390818216 }, %emit_function_args_ty { i32 10, i32 472303106, i32 390818216 }, %emit_function_args_ty { i32 11, i32 -1987428242, i32 390818216 }, %emit_function_args_ty { i32 12, i32 -544110266, i32 390818216 }, %emit_function_args_ty { i32 13, i32 -1984254327, i32 390818216 }, %emit_function_args_ty { i32 14, i32 542630274, i32 390818216 }, %emit_function_args_ty { i32 15, i32 -1749766230, i32 390818216 }, %emit_function_args_ty { i32 16, i32 -2025681671, i32 390818216 }, %emit_function_args_ty { i32 17, i32 -1504980588, i32 390818216 }, %emit_function_args_ty { i32 18, i32 1244995459, i32 390818216 }, %emit_function_args_ty { i32 19, i32 72449635, i32 390818216 }, %emit_function_args_ty { i32 20, i32 451863500, i32 390818216 }, %emit_function_args_ty { i32 21, i32 776161809, i32 390818216 }, %emit_function_args_ty { i32 22, i32 -1454100885, i32 390818216 }, %emit_function_args_ty { i32 23, i32 358224952, i32 390818216 }]
@__llvm_internal_gcov_emit_arcs_args.0 = internal unnamed_addr constant [24 x %emit_arcs_args_ty] [%emit_arcs_args_ty { i32 6, i64* getelementptr inbounds ([6 x i64], [6 x i64]* @__llvm_gcov_ctr, i32 0, i32 0) }, %emit_arcs_args_ty { i32 12, i64* getelementptr inbounds ([12 x i64], [12 x i64]* @__llvm_gcov_ctr.68, i32 0, i32 0) }, %emit_arcs_args_ty { i32 18, i64* getelementptr inbounds ([18 x i64], [18 x i64]* @__llvm_gcov_ctr.69, i32 0, i32 0) }, %emit_arcs_args_ty { i32 12, i64* getelementptr inbounds ([12 x i64], [12 x i64]* @__llvm_gcov_ctr.70, i32 0, i32 0) }, %emit_arcs_args_ty { i32 1, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.71, i32 0, i32 0) }, %emit_arcs_args_ty { i32 1, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.72, i32 0, i32 0) }, %emit_arcs_args_ty { i32 70, i64* getelementptr inbounds ([70 x i64], [70 x i64]* @__llvm_gcov_ctr.73, i32 0, i32 0) }, %emit_arcs_args_ty { i32 14, i64* getelementptr inbounds ([14 x i64], [14 x i64]* @__llvm_gcov_ctr.74, i32 0, i32 0) }, %emit_arcs_args_ty { i32 5, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @__llvm_gcov_ctr.75, i32 0, i32 0) }, %emit_arcs_args_ty { i32 5, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @__llvm_gcov_ctr.76, i32 0, i32 0) }, %emit_arcs_args_ty { i32 6, i64* getelementptr inbounds ([6 x i64], [6 x i64]* @__llvm_gcov_ctr.77, i32 0, i32 0) }, %emit_arcs_args_ty { i32 4, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @__llvm_gcov_ctr.78, i32 0, i32 0) }, %emit_arcs_args_ty { i32 2, i64* getelementptr inbounds ([2 x i64], [2 x i64]* @__llvm_gcov_ctr.79, i32 0, i32 0) }, %emit_arcs_args_ty { i32 7, i64* getelementptr inbounds ([7 x i64], [7 x i64]* @__llvm_gcov_ctr.80, i32 0, i32 0) }, %emit_arcs_args_ty { i32 20, i64* getelementptr inbounds ([20 x i64], [20 x i64]* @__llvm_gcov_ctr.81, i32 0, i32 0) }, %emit_arcs_args_ty { i32 28, i64* getelementptr inbounds ([28 x i64], [28 x i64]* @__llvm_gcov_ctr.82, i32 0, i32 0) }, %emit_arcs_args_ty { i32 9, i64* getelementptr inbounds ([9 x i64], [9 x i64]* @__llvm_gcov_ctr.83, i32 0, i32 0) }, %emit_arcs_args_ty { i32 16, i64* getelementptr inbounds ([16 x i64], [16 x i64]* @__llvm_gcov_ctr.84, i32 0, i32 0) }, %emit_arcs_args_ty { i32 10, i64* getelementptr inbounds ([10 x i64], [10 x i64]* @__llvm_gcov_ctr.85, i32 0, i32 0) }, %emit_arcs_args_ty { i32 19, i64* getelementptr inbounds ([19 x i64], [19 x i64]* @__llvm_gcov_ctr.86, i32 0, i32 0) }, %emit_arcs_args_ty { i32 5, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @__llvm_gcov_ctr.87, i32 0, i32 0) }, %emit_arcs_args_ty { i32 9, i64* getelementptr inbounds ([9 x i64], [9 x i64]* @__llvm_gcov_ctr.88, i32 0, i32 0) }, %emit_arcs_args_ty { i32 1, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.89, i32 0, i32 0) }, %emit_arcs_args_ty { i32 2, i64* getelementptr inbounds ([2 x i64], [2 x i64]* @__llvm_gcov_ctr.90, i32 0, i32 0) }]
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 0, void ()* @__llvm_gcov_init, i8* null }]

; Function Attrs: noinline nounwind uwtable
define dso_local void @complete_nread_binary(%struct.conn* noundef %c) local_unnamed_addr #0 !dbg !388 {
entry:
  call void @llvm.dbg.value(metadata %struct.conn* %c, metadata !784, metadata !DIExpression()), !dbg !785
  %cmp.not = icmp eq %struct.conn* %c, null, !dbg !786
  br i1 %cmp.not, label %if.else, label %if.end, !dbg !789

if.else:                                          ; preds = %entry
  %gcov_ctr = load i64, i64* getelementptr inbounds ([6 x i64], [6 x i64]* @__llvm_gcov_ctr, i64 0, i64 0), align 16, !dbg !786
  %0 = add i64 %gcov_ctr, 1, !dbg !786
  store i64 %0, i64* getelementptr inbounds ([6 x i64], [6 x i64]* @__llvm_gcov_ctr, i64 0, i64 0), align 16, !dbg !786
  tail call void @__assert_fail(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 noundef 32, i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @__PRETTY_FUNCTION__.complete_nread_binary, i64 0, i64 0)) #14, !dbg !786
  unreachable, !dbg !786

if.end:                                           ; preds = %entry
  %cmd = getelementptr inbounds %struct.conn, %struct.conn* %c, i64 0, i32 39, !dbg !790
  %1 = load i16, i16* %cmd, align 8, !dbg !790, !tbaa !793
  %cmp1 = icmp sgt i16 %1, -1, !dbg !790
  br i1 %cmp1, label %if.end5, label %if.else4, !dbg !809

if.else4:                                         ; preds = %if.end
  %gcov_ctr12 = load i64, i64* getelementptr inbounds ([6 x i64], [6 x i64]* @__llvm_gcov_ctr, i64 0, i64 1), align 8, !dbg !790
  %2 = add i64 %gcov_ctr12, 1, !dbg !790
  store i64 %2, i64* getelementptr inbounds ([6 x i64], [6 x i64]* @__llvm_gcov_ctr, i64 0, i64 1), align 8, !dbg !790
  tail call void @__assert_fail(i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 noundef 33, i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @__PRETTY_FUNCTION__.complete_nread_binary, i64 0, i64 0)) #14, !dbg !790
  unreachable, !dbg !790

if.end5:                                          ; preds = %if.end
  %substate = getelementptr inbounds %struct.conn, %struct.conn* %c, i64 0, i32 10, !dbg !810
  %3 = load i32, i32* %substate, align 8, !dbg !810, !tbaa !811
  switch i32 %3, label %sw.default [
    i32 3, label %sw.bb
    i32 10, label %sw.bb6
  ], !dbg !812

sw.bb:                                            ; preds = %if.end5
  %gcov_ctr14 = load i64, i64* getelementptr inbounds ([6 x i64], [6 x i64]* @__llvm_gcov_ctr, i64 0, i64 3), align 8, !dbg !813
  %4 = add i64 %gcov_ctr14, 1, !dbg !813
  store i64 %4, i64* getelementptr inbounds ([6 x i64], [6 x i64]* @__llvm_gcov_ctr, i64 0, i64 3), align 8, !dbg !813
  tail call fastcc void @complete_update_bin(%struct.conn* noundef nonnull %c) #15, !dbg !815
  br label %sw.epilog, !dbg !816

sw.bb6:                                           ; preds = %if.end5
  tail call fastcc void @process_bin_complete_sasl_auth(%struct.conn* noundef nonnull %c) #15, !dbg !817
  %item = getelementptr inbounds %struct.conn, %struct.conn* %c, i64 0, i32 23, !dbg !818
  %5 = load i8*, i8** %item, align 8, !dbg !818, !tbaa !820
  %tobool.not = icmp eq i8* %5, null, !dbg !821
  br i1 %tobool.not, label %if.end10, label %if.then7, !dbg !822

if.then7:                                         ; preds = %sw.bb6
  %6 = bitcast i8* %5 to %struct._stritem*, !dbg !822
  %gcov_ctr15 = load i64, i64* getelementptr inbounds ([6 x i64], [6 x i64]* @__llvm_gcov_ctr, i64 0, i64 4), align 16, !dbg !823
  %7 = add i64 %gcov_ctr15, 1, !dbg !823
  store i64 %7, i64* getelementptr inbounds ([6 x i64], [6 x i64]* @__llvm_gcov_ctr, i64 0, i64 4), align 16, !dbg !823
  tail call void @do_item_remove(%struct._stritem* noundef nonnull %6) #16, !dbg !825
  store i8* null, i8** %item, align 8, !dbg !826, !tbaa !820
  br label %if.end10, !dbg !827

if.end10:                                         ; preds = %if.then7, %sw.bb6
  %gcov_ctr16 = load i64, i64* getelementptr inbounds ([6 x i64], [6 x i64]* @__llvm_gcov_ctr, i64 0, i64 5), align 8, !dbg !828
  %8 = add i64 %gcov_ctr16, 1, !dbg !828
  store i64 %8, i64* getelementptr inbounds ([6 x i64], [6 x i64]* @__llvm_gcov_ctr, i64 0, i64 5), align 8, !dbg !828
  br label %sw.epilog, !dbg !828

sw.default:                                       ; preds = %if.end5
  %gcov_ctr13 = load i64, i64* getelementptr inbounds ([6 x i64], [6 x i64]* @__llvm_gcov_ctr, i64 0, i64 2), align 16, !dbg !829
  %9 = add i64 %gcov_ctr13, 1, !dbg !829
  store i64 %9, i64* getelementptr inbounds ([6 x i64], [6 x i64]* @__llvm_gcov_ctr, i64 0, i64 2), align 16, !dbg !829
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !829, !tbaa !830
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %10, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i32 noundef %3) #16, !dbg !831
  tail call void @__assert_fail(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 noundef 48, i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @__PRETTY_FUNCTION__.complete_nread_binary, i64 0, i64 0)) #14, !dbg !832
  unreachable, !dbg !832

sw.epilog:                                        ; preds = %if.end10, %sw.bb
  ret void, !dbg !835
}

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noreturn nounwind
declare dso_local void @__assert_fail(i8* noundef, i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @complete_update_bin(%struct.conn* noundef %c) unnamed_addr #0 !dbg !836 {
entry:
  call void @llvm.dbg.value(metadata %struct.conn* %c, metadata !838, metadata !DIExpression()), !dbg !846
  call void @llvm.dbg.value(metadata i32 4, metadata !839, metadata !DIExpression()), !dbg !846
  call void @llvm.dbg.value(metadata i32 0, metadata !841, metadata !DIExpression()), !dbg !846
  %cmp.not = icmp eq %struct.conn* %c, null, !dbg !847
  br i1 %cmp.not, label %if.else, label %if.end, !dbg !850

if.else:                                          ; preds = %entry
  %gcov_ctr = load i64, i64* getelementptr inbounds ([12 x i64], [12 x i64]* @__llvm_gcov_ctr.68, i64 0, i64 0), align 16, !dbg !847
  %0 = add i64 %gcov_ctr, 1, !dbg !847
  store i64 %0, i64* getelementptr inbounds ([12 x i64], [12 x i64]* @__llvm_gcov_ctr.68, i64 0, i64 0), align 16, !dbg !847
  tail call void @__assert_fail(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 noundef 362, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @__PRETTY_FUNCTION__.complete_update_bin, i64 0, i64 0)) #14, !dbg !847
  unreachable, !dbg !847

if.end:                                           ; preds = %entry
  %item = getelementptr inbounds %struct.conn, %struct.conn* %c, i64 0, i32 23, !dbg !851
  %1 = bitcast i8** %item to %struct._stritem**, !dbg !851
  %2 = load %struct._stritem*, %struct._stritem** %1, align 8, !dbg !851, !tbaa !820
  call void @llvm.dbg.value(metadata %struct._stritem* %2, metadata !842, metadata !DIExpression()), !dbg !846
  %thread = getelementptr inbounds %struct.conn, %struct.conn* %c, i64 0, i32 43, !dbg !852
  %3 = load %struct.LIBEVENT_THREAD*, %struct.LIBEVENT_THREAD** %thread, align 8, !dbg !852, !tbaa !853
  %mutex = getelementptr inbounds %struct.LIBEVENT_THREAD, %struct.LIBEVENT_THREAD* %3, i64 0, i32 4, i32 0, !dbg !854
  %call = tail call i32 @pthread_mutex_lock(%union.pthread_mutex_t* noundef nonnull %mutex) #16, !dbg !855
  %4 = load %struct.LIBEVENT_THREAD*, %struct.LIBEVENT_THREAD** %thread, align 8, !dbg !856, !tbaa !853
  %slabs_clsid = getelementptr inbounds %struct._stritem, %struct._stritem* %2, i64 0, i32 8, !dbg !857
  %5 = load i8, i8* %slabs_clsid, align 8, !dbg !857, !tbaa !858
  %6 = and i8 %5, 63, !dbg !857
  %7 = zext i8 %6 to i64
  %set_cmds = getelementptr inbounds %struct.LIBEVENT_THREAD, %struct.LIBEVENT_THREAD* %4, i64 0, i32 4, i32 31, i64 %7, i32 0, !dbg !859
  %8 = load i64, i64* %set_cmds, align 8, !dbg !860, !tbaa !861
  %inc = add i64 %8, 1, !dbg !860
  store i64 %inc, i64* %set_cmds, align 8, !dbg !860, !tbaa !861
  %mutex5 = getelementptr inbounds %struct.LIBEVENT_THREAD, %struct.LIBEVENT_THREAD* %4, i64 0, i32 4, i32 0, !dbg !863
  %call6 = tail call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* noundef nonnull %mutex5) #16, !dbg !864
  %it_flags = getelementptr inbounds %struct._stritem, %struct._stritem* %2, i64 0, i32 7, !dbg !865
  %9 = load i16, i16* %it_flags, align 2, !dbg !865, !tbaa !866
  %10 = and i16 %9, 32, !dbg !867
  %cmp9 = icmp eq i16 %10, 0, !dbg !868
  br i1 %cmp9, label %if.then11, label %if.else49, !dbg !869

if.then11:                                        ; preds = %if.end
  %gcov_ctr99 = load i64, i64* getelementptr inbounds ([12 x i64], [12 x i64]* @__llvm_gcov_ctr.68, i64 0, i64 1), align 8, !dbg !870
  %11 = add i64 %gcov_ctr99, 1, !dbg !870
  store i64 %11, i64* getelementptr inbounds ([12 x i64], [12 x i64]* @__llvm_gcov_ctr.68, i64 0, i64 1), align 8, !dbg !870
  %data = getelementptr inbounds %struct._stritem, %struct._stritem* %2, i64 0, i32 10, !dbg !870
  %12 = bitcast [0 x %union.anon.9]* %data to i8*, !dbg !870
  %nkey = getelementptr inbounds %struct._stritem, %struct._stritem* %2, i64 0, i32 9, !dbg !870
  %13 = load i8, i8* %nkey, align 1, !dbg !870, !tbaa !858
  %14 = zext i8 %13 to i64
  %add.ptr = getelementptr inbounds i8, i8* %12, i64 %14, !dbg !870
  %add.ptr13 = getelementptr inbounds i8, i8* %add.ptr, i64 1, !dbg !870
  %conv15 = zext i16 %9 to i32, !dbg !870
  %and16 = lshr i32 %conv15, 6, !dbg !870
  %15 = and i32 %and16, 4, !dbg !870
  %16 = zext i32 %15 to i64, !dbg !870
  %add.ptr17 = getelementptr inbounds i8, i8* %add.ptr13, i64 %16, !dbg !870
  %and20 = shl nuw nsw i32 %conv15, 2, !dbg !870
  %17 = and i32 %and20, 8, !dbg !870
  %18 = zext i32 %17 to i64, !dbg !870
  %add.ptr23 = getelementptr inbounds i8, i8* %add.ptr17, i64 %18, !dbg !870
  %nbytes = getelementptr inbounds %struct._stritem, %struct._stritem* %2, i64 0, i32 5, !dbg !872
  %19 = load i32, i32* %nbytes, align 8, !dbg !872, !tbaa !873
  %idx.ext24 = sext i32 %19 to i64, !dbg !874
  %add.ptr25 = getelementptr inbounds i8, i8* %add.ptr23, i64 %idx.ext24, !dbg !874
  %add.ptr26 = getelementptr inbounds i8, i8* %add.ptr25, i64 -2, !dbg !875
  store i8 13, i8* %add.ptr26, align 1, !dbg !876, !tbaa !858
  %20 = load i8, i8* %nkey, align 1, !dbg !877, !tbaa !858
  %21 = zext i8 %20 to i64
  %add.ptr31 = getelementptr inbounds i8, i8* %12, i64 %21, !dbg !877
  %add.ptr32 = getelementptr inbounds i8, i8* %add.ptr31, i64 1, !dbg !877
  %22 = load i16, i16* %it_flags, align 2, !dbg !877, !tbaa !866
  %conv34 = zext i16 %22 to i32, !dbg !877
  %and35 = lshr i32 %conv34, 6, !dbg !877
  %23 = and i32 %and35, 4, !dbg !877
  %24 = zext i32 %23 to i64, !dbg !877
  %add.ptr38 = getelementptr inbounds i8, i8* %add.ptr32, i64 %24, !dbg !877
  %and41 = shl nuw nsw i32 %conv34, 2, !dbg !877
  %25 = and i32 %and41, 8, !dbg !877
  %26 = zext i32 %25 to i64, !dbg !877
  %add.ptr44 = getelementptr inbounds i8, i8* %add.ptr38, i64 %26, !dbg !877
  %27 = load i32, i32* %nbytes, align 8, !dbg !878, !tbaa !873
  %idx.ext46 = sext i32 %27 to i64, !dbg !879
  %add.ptr47 = getelementptr inbounds i8, i8* %add.ptr44, i64 %idx.ext46, !dbg !879
  %add.ptr48 = getelementptr inbounds i8, i8* %add.ptr47, i64 -1, !dbg !880
  store i8 10, i8* %add.ptr48, align 1, !dbg !881, !tbaa !858
  br label %if.end76, !dbg !882

if.else49:                                        ; preds = %if.end
  %ritem = getelementptr inbounds %struct.conn, %struct.conn* %c, i64 0, i32 21, !dbg !883
  %28 = load i8*, i8** %ritem, align 8, !dbg !883, !tbaa !886
  %tobool50.not = icmp eq i8* %28, null, !dbg !883
  br i1 %tobool50.not, label %if.else52, label %if.end53, !dbg !887

if.else52:                                        ; preds = %if.else49
  %gcov_ctr100 = load i64, i64* getelementptr inbounds ([12 x i64], [12 x i64]* @__llvm_gcov_ctr.68, i64 0, i64 2), align 16, !dbg !883
  %29 = add i64 %gcov_ctr100, 1, !dbg !883
  store i64 %29, i64* getelementptr inbounds ([12 x i64], [12 x i64]* @__llvm_gcov_ctr.68, i64 0, i64 2), align 16, !dbg !883
  tail call void @__assert_fail(i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.24, i64 0, i64 0), i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 noundef 375, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @__PRETTY_FUNCTION__.complete_update_bin, i64 0, i64 0)) #14, !dbg !883
  unreachable, !dbg !883

if.end53:                                         ; preds = %if.else49
  %30 = bitcast i8* %28 to %struct._strchunk*, !dbg !888
  call void @llvm.dbg.value(metadata %struct._strchunk* %30, metadata !843, metadata !DIExpression()), !dbg !889
  %size = getelementptr inbounds i8, i8* %28, i64 24, !dbg !890
  %31 = bitcast i8* %size to i32*, !dbg !890
  %32 = load i32, i32* %31, align 8, !dbg !890, !tbaa !873
  %used = getelementptr inbounds i8, i8* %28, i64 28, !dbg !892
  %33 = bitcast i8* %used to i32*, !dbg !892
  %34 = load i32, i32* %33, align 4, !dbg !892, !tbaa !873
  %cmp55 = icmp eq i32 %32, %34, !dbg !893
  br i1 %cmp55, label %if.then57, label %if.end58, !dbg !894

if.then57:                                        ; preds = %if.end53
  %gcov_ctr101 = load i64, i64* getelementptr inbounds ([12 x i64], [12 x i64]* @__llvm_gcov_ctr.68, i64 0, i64 3), align 8, !dbg !895
  %35 = add i64 %gcov_ctr101, 1, !dbg !895
  store i64 %35, i64* getelementptr inbounds ([12 x i64], [12 x i64]* @__llvm_gcov_ctr.68, i64 0, i64 3), align 8, !dbg !895
  %next = bitcast i8* %28 to %struct._strchunk**, !dbg !896
  %36 = load %struct._strchunk*, %struct._strchunk** %next, align 8, !dbg !896, !tbaa !830
  call void @llvm.dbg.value(metadata %struct._strchunk* %36, metadata !843, metadata !DIExpression()), !dbg !889
  br label %if.end58, !dbg !897

if.end58:                                         ; preds = %if.then57, %if.end53
  %ch.0 = phi %struct._strchunk* [ %36, %if.then57 ], [ %30, %if.end53 ], !dbg !889
  call void @llvm.dbg.value(metadata %struct._strchunk* %ch.0, metadata !843, metadata !DIExpression()), !dbg !889
  %size59 = getelementptr inbounds %struct._strchunk, %struct._strchunk* %ch.0, i64 0, i32 3, !dbg !898
  %37 = load i32, i32* %size59, align 8, !dbg !898, !tbaa !873
  %used60 = getelementptr inbounds %struct._strchunk, %struct._strchunk* %ch.0, i64 0, i32 4, !dbg !898
  %38 = load i32, i32* %used60, align 4, !dbg !898, !tbaa !873
  %sub = sub nsw i32 %37, %38, !dbg !898
  %cmp61 = icmp sgt i32 %sub, 1, !dbg !898
  br i1 %cmp61, label %if.end65, label %if.else64, !dbg !901

if.else64:                                        ; preds = %if.end58
  %gcov_ctr102 = load i64, i64* getelementptr inbounds ([12 x i64], [12 x i64]* @__llvm_gcov_ctr.68, i64 0, i64 4), align 16, !dbg !898
  %39 = add i64 %gcov_ctr102, 1, !dbg !898
  store i64 %39, i64* getelementptr inbounds ([12 x i64], [12 x i64]* @__llvm_gcov_ctr.68, i64 0, i64 4), align 16, !dbg !898
  tail call void @__assert_fail(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.25, i64 0, i64 0), i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 noundef 379, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @__PRETTY_FUNCTION__.complete_update_bin, i64 0, i64 0)) #14, !dbg !898
  unreachable, !dbg !898

if.end65:                                         ; preds = %if.end58
  %gcov_ctr103 = load i64, i64* getelementptr inbounds ([12 x i64], [12 x i64]* @__llvm_gcov_ctr.68, i64 0, i64 5), align 8, !dbg !902
  %40 = add i64 %gcov_ctr103, 1, !dbg !902
  store i64 %40, i64* getelementptr inbounds ([12 x i64], [12 x i64]* @__llvm_gcov_ctr.68, i64 0, i64 5), align 8, !dbg !902
  %41 = load i32, i32* %used60, align 4, !dbg !903, !tbaa !873
  %idxprom68 = sext i32 %41 to i64, !dbg !902
  %arrayidx69 = getelementptr inbounds %struct._strchunk, %struct._strchunk* %ch.0, i64 0, i32 10, i64 %idxprom68, !dbg !902
  store i8 13, i8* %arrayidx69, align 1, !dbg !904, !tbaa !858
  %42 = load i32, i32* %used60, align 4, !dbg !905, !tbaa !873
  %add = add nsw i32 %42, 1, !dbg !906
  %idxprom72 = sext i32 %add to i64, !dbg !907
  %arrayidx73 = getelementptr inbounds %struct._strchunk, %struct._strchunk* %ch.0, i64 0, i32 10, i64 %idxprom72, !dbg !907
  store i8 10, i8* %arrayidx73, align 1, !dbg !908, !tbaa !858
  %43 = load i32, i32* %used60, align 4, !dbg !909, !tbaa !873
  %add75 = add nsw i32 %43, 2, !dbg !909
  store i32 %add75, i32* %used60, align 4, !dbg !909, !tbaa !873
  br label %if.end76

if.end76:                                         ; preds = %if.end65, %if.then11
  %cmd = getelementptr inbounds %struct.conn, %struct.conn* %c, i64 0, i32 39, !dbg !910
  %44 = load i16, i16* %cmd, align 8, !dbg !910, !tbaa !793
  %conv77 = sext i16 %44 to i32, !dbg !911
  %call78 = tail call i32 @store_item(%struct._stritem* noundef nonnull %2, i32 noundef %conv77, %struct.conn* noundef nonnull %c) #16, !dbg !912
  call void @llvm.dbg.value(metadata i32 %call78, metadata !841, metadata !DIExpression()), !dbg !846
  switch i32 %call78, label %sw.epilog [
    i32 1, label %sw.bb
    i32 2, label %sw.bb79
    i32 3, label %sw.bb80
    i32 0, label %sw.bb81
    i32 4, label %sw.bb81
    i32 5, label %sw.bb81
  ], !dbg !913

sw.bb:                                            ; preds = %if.end76
  %gcov_ctr104 = load i64, i64* getelementptr inbounds ([12 x i64], [12 x i64]* @__llvm_gcov_ctr.68, i64 0, i64 6), align 16, !dbg !914
  %45 = add i64 %gcov_ctr104, 1, !dbg !914
  store i64 %45, i64* getelementptr inbounds ([12 x i64], [12 x i64]* @__llvm_gcov_ctr.68, i64 0, i64 6), align 16, !dbg !914
  tail call fastcc void @write_bin_response(%struct.conn* noundef nonnull %c, i8* noundef null, i32 noundef 0) #15, !dbg !916
  br label %sw.epilog, !dbg !917

sw.bb79:                                          ; preds = %if.end76
  %gcov_ctr105 = load i64, i64* getelementptr inbounds ([12 x i64], [12 x i64]* @__llvm_gcov_ctr.68, i64 0, i64 7), align 8, !dbg !918
  %46 = add i64 %gcov_ctr105, 1, !dbg !918
  store i64 %46, i64* getelementptr inbounds ([12 x i64], [12 x i64]* @__llvm_gcov_ctr.68, i64 0, i64 7), align 8, !dbg !918
  tail call void @write_bin_error(%struct.conn* noundef nonnull %c, i32 noundef 2, i8* noundef null, i32 noundef 0) #15, !dbg !919
  br label %sw.epilog, !dbg !920

sw.bb80:                                          ; preds = %if.end76
  %gcov_ctr106 = load i64, i64* getelementptr inbounds ([12 x i64], [12 x i64]* @__llvm_gcov_ctr.68, i64 0, i64 8), align 16, !dbg !921
  %47 = add i64 %gcov_ctr106, 1, !dbg !921
  store i64 %47, i64* getelementptr inbounds ([12 x i64], [12 x i64]* @__llvm_gcov_ctr.68, i64 0, i64 8), align 16, !dbg !921
  tail call void @write_bin_error(%struct.conn* noundef nonnull %c, i32 noundef 1, i8* noundef null, i32 noundef 0) #15, !dbg !922
  br label %sw.epilog, !dbg !923

sw.bb81:                                          ; preds = %if.end76, %if.end76, %if.end76
  %48 = load i16, i16* %cmd, align 8, !dbg !924, !tbaa !793
  switch i16 %48, label %if.else93 [
    i16 1, label %if.then86
    i16 3, label %if.then92
  ], !dbg !926

if.then86:                                        ; preds = %sw.bb81
  %gcov_ctr107 = load i64, i64* getelementptr inbounds ([12 x i64], [12 x i64]* @__llvm_gcov_ctr.68, i64 0, i64 9), align 8, !dbg !927
  %49 = add i64 %gcov_ctr107, 1, !dbg !927
  store i64 %49, i64* getelementptr inbounds ([12 x i64], [12 x i64]* @__llvm_gcov_ctr.68, i64 0, i64 9), align 8, !dbg !927
  call void @llvm.dbg.value(metadata i32 2, metadata !839, metadata !DIExpression()), !dbg !846
  br label %if.end95, !dbg !929

if.then92:                                        ; preds = %sw.bb81
  %gcov_ctr108 = load i64, i64* getelementptr inbounds ([12 x i64], [12 x i64]* @__llvm_gcov_ctr.68, i64 0, i64 10), align 16, !dbg !930
  %50 = add i64 %gcov_ctr108, 1, !dbg !930
  store i64 %50, i64* getelementptr inbounds ([12 x i64], [12 x i64]* @__llvm_gcov_ctr.68, i64 0, i64 10), align 16, !dbg !930
  call void @llvm.dbg.value(metadata i32 1, metadata !839, metadata !DIExpression()), !dbg !846
  br label %if.end95, !dbg !933

if.else93:                                        ; preds = %sw.bb81
  %gcov_ctr109 = load i64, i64* getelementptr inbounds ([12 x i64], [12 x i64]* @__llvm_gcov_ctr.68, i64 0, i64 11), align 8, !dbg !934
  %51 = add i64 %gcov_ctr109, 1, !dbg !934
  store i64 %51, i64* getelementptr inbounds ([12 x i64], [12 x i64]* @__llvm_gcov_ctr.68, i64 0, i64 11), align 8, !dbg !934
  call void @llvm.dbg.value(metadata i32 5, metadata !839, metadata !DIExpression()), !dbg !846
  br label %if.end95

if.end95:                                         ; preds = %if.then92, %if.else93, %if.then86
  %eno.0 = phi i32 [ 2, %if.then86 ], [ 1, %if.then92 ], [ 5, %if.else93 ], !dbg !936
  call void @llvm.dbg.value(metadata i32 %eno.0, metadata !839, metadata !DIExpression()), !dbg !846
  tail call void @write_bin_error(%struct.conn* noundef nonnull %c, i32 noundef %eno.0, i8* noundef null, i32 noundef 0) #15, !dbg !937
  br label %sw.epilog, !dbg !938

sw.epilog:                                        ; preds = %if.end95, %if.end76, %sw.bb80, %sw.bb79, %sw.bb
  %52 = load %struct._stritem*, %struct._stritem** %1, align 8, !dbg !939, !tbaa !820
  tail call void @item_remove(%struct._stritem* noundef %52) #16, !dbg !940
  store i8* null, i8** %item, align 8, !dbg !941, !tbaa !820
  ret void, !dbg !942
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @process_bin_complete_sasl_auth(%struct.conn* noundef %c) unnamed_addr #0 !dbg !943 {
entry:
  call void @llvm.dbg.value(metadata %struct.conn* %c, metadata !945, metadata !DIExpression()), !dbg !959
  %0 = load i8, i8* getelementptr inbounds (%struct.settings, %struct.settings* @settings, i64 0, i32 26), align 4, !dbg !960, !tbaa !963, !range !966
  %tobool.not = icmp eq i8 %0, 0, !dbg !960
  br i1 %tobool.not, label %if.else, label %if.end, !dbg !967

if.else:                                          ; preds = %entry
  %gcov_ctr = load i64, i64* getelementptr inbounds ([18 x i64], [18 x i64]* @__llvm_gcov_ctr.69, i64 0, i64 0), align 16, !dbg !960
  %1 = add i64 %gcov_ctr, 1, !dbg !960
  store i64 %1, i64* getelementptr inbounds ([18 x i64], [18 x i64]* @__llvm_gcov_ctr.69, i64 0, i64 0), align 16, !dbg !960
  tail call void @__assert_fail(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.26, i64 0, i64 0), i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 noundef 768, i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @__PRETTY_FUNCTION__.process_bin_complete_sasl_auth, i64 0, i64 0)) #14, !dbg !960
  unreachable, !dbg !960

if.end:                                           ; preds = %entry
  call void @llvm.dbg.value(metadata i8* null, metadata !946, metadata !DIExpression()), !dbg !959
  call void @llvm.dbg.value(metadata i32 0, metadata !949, metadata !DIExpression()), !dbg !959
  %item = getelementptr inbounds %struct.conn, %struct.conn* %c, i64 0, i32 23, !dbg !968
  %2 = load i8*, i8** %item, align 8, !dbg !968, !tbaa !820
  %tobool1.not = icmp eq i8* %2, null, !dbg !968
  br i1 %tobool1.not, label %if.else3, label %if.end4, !dbg !971

if.else3:                                         ; preds = %if.end
  %gcov_ctr110 = load i64, i64* getelementptr inbounds ([18 x i64], [18 x i64]* @__llvm_gcov_ctr.69, i64 0, i64 1), align 8, !dbg !968
  %3 = add i64 %gcov_ctr110, 1, !dbg !968
  store i64 %3, i64* getelementptr inbounds ([18 x i64], [18 x i64]* @__llvm_gcov_ctr.69, i64 0, i64 1), align 8, !dbg !968
  tail call void @__assert_fail(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.27, i64 0, i64 0), i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 noundef 772, i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @__PRETTY_FUNCTION__.process_bin_complete_sasl_auth, i64 0, i64 0)) #14, !dbg !968
  unreachable, !dbg !968

if.end4:                                          ; preds = %if.end
  tail call fastcc void @init_sasl_conn(%struct.conn* noundef nonnull %c) #15, !dbg !972
  %keylen = getelementptr inbounds %struct.conn, %struct.conn* %c, i64 0, i32 36, i32 0, i32 2, !dbg !973
  %4 = load i16, i16* %keylen, align 2, !dbg !973, !tbaa !858
  %conv = zext i16 %4 to i32, !dbg !974
  call void @llvm.dbg.value(metadata i32 %conv, metadata !950, metadata !DIExpression()), !dbg !959
  %bodylen = getelementptr inbounds %struct.conn, %struct.conn* %c, i64 0, i32 36, i32 0, i32 6, !dbg !975
  %5 = load i32, i32* %bodylen, align 8, !dbg !975, !tbaa !858
  %sub = sub i32 %5, %conv, !dbg !976
  call void @llvm.dbg.value(metadata i32 %sub, metadata !951, metadata !DIExpression()), !dbg !959
  %6 = bitcast i8** %item to %struct._stritem**, !dbg !977
  %7 = load %struct._stritem*, %struct._stritem** %6, align 8, !dbg !977, !tbaa !820
  %nkey8 = getelementptr inbounds %struct._stritem, %struct._stritem* %7, i64 0, i32 9, !dbg !979
  %8 = load i8, i8* %nkey8, align 1, !dbg !979, !tbaa !858
  %9 = zext i8 %8 to i16, !dbg !980
  %cmp = icmp ugt i16 %4, %9, !dbg !980
  br i1 %cmp, label %if.then11, label %if.end12, !dbg !981

if.then11:                                        ; preds = %if.end4
  %gcov_ctr111 = load i64, i64* getelementptr inbounds ([18 x i64], [18 x i64]* @__llvm_gcov_ctr.69, i64 0, i64 2), align 16, !dbg !982
  %10 = add i64 %gcov_ctr111, 1, !dbg !982
  store i64 %10, i64* getelementptr inbounds ([18 x i64], [18 x i64]* @__llvm_gcov_ctr.69, i64 0, i64 2), align 16, !dbg !982
  tail call void @write_bin_error(%struct.conn* noundef nonnull %c, i32 noundef 4, i8* noundef null, i32 noundef %sub) #15, !dbg !984
  tail call void @conn_set_state(%struct.conn* noundef nonnull %c, i32 noundef 7) #16, !dbg !985
  br label %cleanup106, !dbg !986

if.end12:                                         ; preds = %if.end4
  %add = add nuw nsw i32 %conv, 1, !dbg !987
  %11 = zext i32 %add to i64, !dbg !988
  %12 = tail call i8* @llvm.stacksave(), !dbg !988
  %vla = alloca i8, i64 %11, align 16, !dbg !988
  call void @llvm.dbg.value(metadata i64 %11, metadata !952, metadata !DIExpression()), !dbg !959
  call void @llvm.dbg.declare(metadata i8* %vla, metadata !953, metadata !DIExpression()), !dbg !989
  %13 = load %struct._stritem*, %struct._stritem** %6, align 8, !dbg !990, !tbaa !820
  %data = getelementptr inbounds %struct._stritem, %struct._stritem* %13, i64 0, i32 10, !dbg !990
  %14 = bitcast [0 x %union.anon.9]* %data to i8*, !dbg !990
  %it_flags = getelementptr inbounds %struct._stritem, %struct._stritem* %13, i64 0, i32 7, !dbg !990
  %15 = load i16, i16* %it_flags, align 2, !dbg !990, !tbaa !866
  %16 = shl i16 %15, 2, !dbg !990
  %17 = and i16 %16, 8, !dbg !990
  %18 = zext i16 %17 to i64, !dbg !990
  %add.ptr = getelementptr inbounds i8, i8* %14, i64 %18, !dbg !990
  %conv17 = zext i16 %4 to i64, !dbg !991
  %call = call i8* @memcpy(i8* noundef nonnull %vla, i8* noundef nonnull %add.ptr, i64 noundef %conv17) #16, !dbg !992
  %arrayidx = getelementptr inbounds i8, i8* %vla, i64 %conv17, !dbg !993
  store i8 0, i8* %arrayidx, align 1, !dbg !994, !tbaa !858
  %19 = load i32, i32* getelementptr inbounds (%struct.settings, %struct.settings* @settings, i64 0, i32 5), align 8, !dbg !995, !tbaa !997
  %tobool18.not = icmp eq i32 %19, 0, !dbg !998
  br i1 %tobool18.not, label %if.end21, label %if.then19, !dbg !999

if.then19:                                        ; preds = %if.end12
  %gcov_ctr112 = load i64, i64* getelementptr inbounds ([18 x i64], [18 x i64]* @__llvm_gcov_ctr.69, i64 0, i64 3), align 8, !dbg !1000
  %20 = add i64 %gcov_ctr112, 1, !dbg !1000
  store i64 %20, i64* getelementptr inbounds ([18 x i64], [18 x i64]* @__llvm_gcov_ctr.69, i64 0, i64 3), align 8, !dbg !1000
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1000, !tbaa !830
  %call20 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %21, i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.28, i64 0, i64 0), i8* noundef nonnull %vla, i32 noundef %sub) #16, !dbg !1001
  br label %if.end21, !dbg !1001

if.end21:                                         ; preds = %if.then19, %if.end12
  %cmp22 = icmp eq i32 %sub, 0, !dbg !1002
  br i1 %cmp22, label %cond.true, label %cond.end, !dbg !1003

cond.true:                                        ; preds = %if.end21
  %gcov_ctr113 = load i64, i64* getelementptr inbounds ([18 x i64], [18 x i64]* @__llvm_gcov_ctr.69, i64 0, i64 4), align 16, !dbg !1003
  %22 = add i64 %gcov_ctr113, 1, !dbg !1003
  store i64 %22, i64* getelementptr inbounds ([18 x i64], [18 x i64]* @__llvm_gcov_ctr.69, i64 0, i64 4), align 16, !dbg !1003
  br label %cond.end, !dbg !1003

cond.end:                                         ; preds = %if.end21, %cond.true
  call void @llvm.dbg.value(metadata i8* undef, metadata !957, metadata !DIExpression()), !dbg !959
  %23 = load %struct._stritem*, %struct._stritem** %6, align 8, !dbg !1004, !tbaa !820
  %nbytes = getelementptr inbounds %struct._stritem, %struct._stritem* %23, i64 0, i32 5, !dbg !1006
  %24 = load i32, i32* %nbytes, align 8, !dbg !1006, !tbaa !873
  %cmp47 = icmp sgt i32 %sub, %24, !dbg !1007
  br i1 %cmp47, label %if.then49, label %if.end50, !dbg !1008

if.then49:                                        ; preds = %cond.end
  %gcov_ctr114 = load i64, i64* getelementptr inbounds ([18 x i64], [18 x i64]* @__llvm_gcov_ctr.69, i64 0, i64 5), align 8, !dbg !1009
  %25 = add i64 %gcov_ctr114, 1, !dbg !1009
  store i64 %25, i64* getelementptr inbounds ([18 x i64], [18 x i64]* @__llvm_gcov_ctr.69, i64 0, i64 5), align 8, !dbg !1009
  call void @write_bin_error(%struct.conn* noundef nonnull %c, i32 noundef 4, i8* noundef null, i32 noundef %sub) #15, !dbg !1011
  call void @conn_set_state(%struct.conn* noundef nonnull %c, i32 noundef 7) #16, !dbg !1012
  br label %cleanup, !dbg !1013

if.end50:                                         ; preds = %cond.end
  call void @llvm.dbg.value(metadata i32 -1, metadata !958, metadata !DIExpression()), !dbg !959
  %cmd = getelementptr inbounds %struct.conn, %struct.conn* %c, i64 0, i32 39, !dbg !1014
  %26 = load i16, i16* %cmd, align 8, !dbg !1014, !tbaa !793
  %conv51 = sext i16 %26 to i32, !dbg !1015
  switch i32 %conv51, label %sw.default [
    i32 33, label %lor.rhs
    i32 34, label %sw.bb56
  ], !dbg !1016

lor.rhs:                                          ; preds = %if.end50
  call void @llvm.dbg.value(metadata i32 1, metadata !958, metadata !DIExpression()), !dbg !959
  %gcov_ctr115 = load i64, i64* getelementptr inbounds ([18 x i64], [18 x i64]* @__llvm_gcov_ctr.69, i64 0, i64 6), align 16, !dbg !1017
  %27 = add i64 %gcov_ctr115, 1, !dbg !1017
  store i64 %27, i64* getelementptr inbounds ([18 x i64], [18 x i64]* @__llvm_gcov_ctr.69, i64 0, i64 6), align 16, !dbg !1017
  %sasl_started = getelementptr inbounds %struct.conn, %struct.conn* %c, i64 0, i32 2, !dbg !1019
  store i8 0, i8* %sasl_started, align 4, !dbg !1020, !tbaa !1021
  br label %sw.epilog, !dbg !1022

sw.bb56:                                          ; preds = %if.end50
  %sasl_started57 = getelementptr inbounds %struct.conn, %struct.conn* %c, i64 0, i32 2, !dbg !1023
  %28 = load i8, i8* %sasl_started57, align 4, !dbg !1023, !tbaa !1021, !range !966
  %tobool58.not = icmp eq i8 %28, 0, !dbg !1023
  br i1 %tobool58.not, label %if.then59, label %if.end64, !dbg !1025

if.then59:                                        ; preds = %sw.bb56
  %29 = load i32, i32* getelementptr inbounds (%struct.settings, %struct.settings* @settings, i64 0, i32 5), align 8, !dbg !1026, !tbaa !997
  %tobool60.not = icmp eq i32 %29, 0, !dbg !1029
  br i1 %tobool60.not, label %if.end63, label %if.then61, !dbg !1030

if.then61:                                        ; preds = %if.then59
  %gcov_ctr116 = load i64, i64* getelementptr inbounds ([18 x i64], [18 x i64]* @__llvm_gcov_ctr.69, i64 0, i64 7), align 8, !dbg !1031
  %30 = add i64 %gcov_ctr116, 1, !dbg !1031
  store i64 %30, i64* getelementptr inbounds ([18 x i64], [18 x i64]* @__llvm_gcov_ctr.69, i64 0, i64 7), align 8, !dbg !1031
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1031, !tbaa !830
  %sfd = getelementptr inbounds %struct.conn, %struct.conn* %c, i64 0, i32 1, !dbg !1033
  %32 = load i32, i32* %sfd, align 8, !dbg !1033, !tbaa !1034
  %call62 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %31, i8* noundef getelementptr inbounds ([76 x i8], [76 x i8]* @.str.29, i64 0, i64 0), i32 noundef %32) #16, !dbg !1035
  br label %if.end63, !dbg !1036

if.end63:                                         ; preds = %if.then61, %if.then59
  %gcov_ctr117 = load i64, i64* getelementptr inbounds ([18 x i64], [18 x i64]* @__llvm_gcov_ctr.69, i64 0, i64 8), align 16, !dbg !1037
  %33 = add i64 %gcov_ctr117, 1, !dbg !1037
  store i64 %33, i64* getelementptr inbounds ([18 x i64], [18 x i64]* @__llvm_gcov_ctr.69, i64 0, i64 8), align 16, !dbg !1037
  br label %sw.epilog, !dbg !1037

if.end64:                                         ; preds = %sw.bb56
  %gcov_ctr118 = load i64, i64* getelementptr inbounds ([18 x i64], [18 x i64]* @__llvm_gcov_ctr.69, i64 0, i64 9), align 8, !dbg !1038
  %34 = add i64 %gcov_ctr118, 1, !dbg !1038
  store i64 %34, i64* getelementptr inbounds ([18 x i64], [18 x i64]* @__llvm_gcov_ctr.69, i64 0, i64 9), align 8, !dbg !1038
  call void @llvm.dbg.value(metadata i32 1, metadata !958, metadata !DIExpression()), !dbg !959
  br label %sw.epilog, !dbg !1039

sw.default:                                       ; preds = %if.end50
  %gcov_ctr119 = load i64, i64* getelementptr inbounds ([18 x i64], [18 x i64]* @__llvm_gcov_ctr.69, i64 0, i64 10), align 16, !dbg !1040
  %35 = add i64 %gcov_ctr119, 1, !dbg !1040
  store i64 %35, i64* getelementptr inbounds ([18 x i64], [18 x i64]* @__llvm_gcov_ctr.69, i64 0, i64 10), align 16, !dbg !1040
  call void @__assert_fail(i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i64 0, i64 0), i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 noundef 821, i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @__PRETTY_FUNCTION__.process_bin_complete_sasl_auth, i64 0, i64 0)) #14, !dbg !1040
  unreachable, !dbg !1040

sw.epilog:                                        ; preds = %if.end64, %if.end63, %lor.rhs
  %cond = phi i1 [ false, %if.end64 ], [ true, %if.end63 ], [ false, %lor.rhs ], !dbg !959
  %result.0 = phi i32 [ 1, %if.end64 ], [ -1, %if.end63 ], [ 1, %lor.rhs ], !dbg !959
  call void @llvm.dbg.value(metadata i32 %result.0, metadata !958, metadata !DIExpression()), !dbg !959
  %36 = load i32, i32* getelementptr inbounds (%struct.settings, %struct.settings* @settings, i64 0, i32 5), align 8, !dbg !1043, !tbaa !997
  %tobool65.not = icmp eq i32 %36, 0, !dbg !1045
  br i1 %tobool65.not, label %if.end68, label %if.then66, !dbg !1046

if.then66:                                        ; preds = %sw.epilog
  %gcov_ctr120 = load i64, i64* getelementptr inbounds ([18 x i64], [18 x i64]* @__llvm_gcov_ctr.69, i64 0, i64 11), align 8, !dbg !1047
  %37 = add i64 %gcov_ctr120, 1, !dbg !1047
  store i64 %37, i64* getelementptr inbounds ([18 x i64], [18 x i64]* @__llvm_gcov_ctr.69, i64 0, i64 11), align 8, !dbg !1047
  %38 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1047, !tbaa !830
  %call67 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %38, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.30, i64 0, i64 0), i32 noundef %result.0) #16, !dbg !1049
  br label %if.end68, !dbg !1050

if.end68:                                         ; preds = %if.then66, %sw.epilog
  br i1 %cond, label %sw.bb79, label %sw.default84, !dbg !1051

sw.bb79:                                          ; preds = %if.end68
  call fastcc void @add_bin_header(%struct.conn* noundef nonnull %c, i16 noundef zeroext 33, i8 noundef zeroext 0, i16 noundef zeroext 0, i32 noundef 0) #15, !dbg !1052
  %gcov_ctr123 = load i64, i64* getelementptr inbounds ([18 x i64], [18 x i64]* @__llvm_gcov_ctr.69, i64 0, i64 14), align 16, !dbg !1054
  %39 = add i64 %gcov_ctr123, 1, !dbg !1054
  store i64 %39, i64* getelementptr inbounds ([18 x i64], [18 x i64]* @__llvm_gcov_ctr.69, i64 0, i64 14), align 16, !dbg !1054
  call void @conn_set_state(%struct.conn* noundef nonnull %c, i32 noundef 9) #16, !dbg !1055
  br label %cleanup, !dbg !1056

sw.default84:                                     ; preds = %if.end68
  %40 = load i32, i32* getelementptr inbounds (%struct.settings, %struct.settings* @settings, i64 0, i32 5), align 8, !dbg !1057, !tbaa !997
  %tobool85.not = icmp eq i32 %40, 0, !dbg !1059
  br i1 %tobool85.not, label %if.end88, label %if.then86, !dbg !1060

if.then86:                                        ; preds = %sw.default84
  %gcov_ctr124 = load i64, i64* getelementptr inbounds ([18 x i64], [18 x i64]* @__llvm_gcov_ctr.69, i64 0, i64 15), align 8, !dbg !1061
  %41 = add i64 %gcov_ctr124, 1, !dbg !1061
  store i64 %41, i64* getelementptr inbounds ([18 x i64], [18 x i64]* @__llvm_gcov_ctr.69, i64 0, i64 15), align 8, !dbg !1061
  %42 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1061, !tbaa !830
  %call87 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %42, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.32, i64 0, i64 0), i32 noundef %result.0) #16, !dbg !1062
  br label %if.end88, !dbg !1062

if.end88:                                         ; preds = %if.then86, %sw.default84
  %gcov_ctr125 = load i64, i64* getelementptr inbounds ([18 x i64], [18 x i64]* @__llvm_gcov_ctr.69, i64 0, i64 16), align 16, !dbg !1063
  %43 = add i64 %gcov_ctr125, 1, !dbg !1063
  store i64 %43, i64* getelementptr inbounds ([18 x i64], [18 x i64]* @__llvm_gcov_ctr.69, i64 0, i64 16), align 16, !dbg !1063
  call void @write_bin_error(%struct.conn* noundef nonnull %c, i32 noundef 32, i8* noundef null, i32 noundef 0) #15, !dbg !1064
  %thread89 = getelementptr inbounds %struct.conn, %struct.conn* %c, i64 0, i32 43, !dbg !1065
  %44 = load %struct.LIBEVENT_THREAD*, %struct.LIBEVENT_THREAD** %thread89, align 8, !dbg !1065, !tbaa !853
  %mutex91 = getelementptr inbounds %struct.LIBEVENT_THREAD, %struct.LIBEVENT_THREAD* %44, i64 0, i32 4, i32 0, !dbg !1066
  %call92 = call i32 @pthread_mutex_lock(%union.pthread_mutex_t* noundef nonnull %mutex91) #16, !dbg !1067
  %45 = load %struct.LIBEVENT_THREAD*, %struct.LIBEVENT_THREAD** %thread89, align 8, !dbg !1068, !tbaa !853
  %auth_cmds95 = getelementptr inbounds %struct.LIBEVENT_THREAD, %struct.LIBEVENT_THREAD* %45, i64 0, i32 4, i32 16, !dbg !1069
  %46 = bitcast i64* %auth_cmds95 to <2 x i64>*, !dbg !1070
  %47 = load <2 x i64>, <2 x i64>* %46, align 8, !dbg !1070, !tbaa !1071
  %48 = add <2 x i64> %47, <i64 1, i64 1>, !dbg !1070
  %49 = bitcast i64* %auth_cmds95 to <2 x i64>*, !dbg !1070
  store <2 x i64> %48, <2 x i64>* %49, align 8, !dbg !1070, !tbaa !1071
  %mutex102 = getelementptr inbounds %struct.LIBEVENT_THREAD, %struct.LIBEVENT_THREAD* %45, i64 0, i32 4, i32 0, !dbg !1072
  %call103 = call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* noundef nonnull %mutex102) #16, !dbg !1073
  br label %cleanup, !dbg !1074

cleanup:                                          ; preds = %sw.bb79, %if.end88, %if.then49
  call void @llvm.stackrestore(i8* %12), !dbg !1075
  br label %cleanup106

cleanup106:                                       ; preds = %cleanup, %if.then11
  ret void, !dbg !1075
}

declare !dbg !1076 dso_local void @do_item_remove(%struct._stritem* noundef) local_unnamed_addr #3

declare !dbg !1081 dso_local i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @try_read_command_binary(%struct.conn* noundef %c) local_unnamed_addr #0 !dbg !1140 {
entry:
  %extbuf = alloca [48 x i8], align 16
  call void @llvm.dbg.value(metadata %struct.conn* %c, metadata !1142, metadata !DIExpression()), !dbg !1156
  %rbytes = getelementptr inbounds %struct.conn, %struct.conn* %c, i64 0, i32 18, !dbg !1157
  %0 = load i32, i32* %rbytes, align 4, !dbg !1157, !tbaa !1158
  %cmp = icmp ult i32 %0, 24, !dbg !1159
  br i1 %cmp, label %if.then, label %if.else, !dbg !1160

if.then:                                          ; preds = %entry
  %gcov_ctr = load i64, i64* getelementptr inbounds ([12 x i64], [12 x i64]* @__llvm_gcov_ctr.70, i64 0, i64 0), align 16, !dbg !1161
  %1 = add i64 %gcov_ctr, 1, !dbg !1161
  store i64 %1, i64* getelementptr inbounds ([12 x i64], [12 x i64]* @__llvm_gcov_ctr.70, i64 0, i64 0), align 16, !dbg !1161
  br label %return, !dbg !1161

if.else:                                          ; preds = %entry
  %binary_header = getelementptr inbounds %struct.conn, %struct.conn* %c, i64 0, i32 36, !dbg !1163
  %2 = getelementptr %union.protocol_binary_request_header, %union.protocol_binary_request_header* %binary_header, i64 0, i32 0, i32 0, !dbg !1164
  %rcurr = getelementptr inbounds %struct.conn, %struct.conn* %c, i64 0, i32 16, !dbg !1165
  %3 = load i8*, i8** %rcurr, align 8, !dbg !1165, !tbaa !1166
  %call = tail call i8* @memcpy(i8* noundef nonnull %2, i8* noundef %3, i64 noundef 24) #16, !dbg !1167
  call void @llvm.dbg.value(metadata %union.protocol_binary_request_header* %binary_header, metadata !1143, metadata !DIExpression()), !dbg !1168
  %4 = load i32, i32* getelementptr inbounds (%struct.settings, %struct.settings* @settings, i64 0, i32 5), align 8, !dbg !1169, !tbaa !997
  %cmp3 = icmp sgt i32 %4, 1, !dbg !1170
  br i1 %cmp3, label %if.then5, label %if.end18, !dbg !1171

if.then5:                                         ; preds = %if.else
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1172, !tbaa !830
  %sfd = getelementptr inbounds %struct.conn, %struct.conn* %c, i64 0, i32 1, !dbg !1173
  %6 = load i32, i32* %sfd, align 8, !dbg !1173, !tbaa !1034
  %call6 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %5, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0), i32 noundef %6) #16, !dbg !1174
  call void @llvm.dbg.value(metadata i32 0, metadata !1147, metadata !DIExpression()), !dbg !1175
  %bytes = bitcast %union.protocol_binary_request_header* %binary_header to [24 x i8]*
  br label %for.body, !dbg !1176

for.body:                                         ; preds = %if.then5, %if.end
  %indvars.iv = phi i64 [ 0, %if.then5 ], [ %indvars.iv.next, %if.end ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !1147, metadata !DIExpression()), !dbg !1175
  %rem168 = and i64 %indvars.iv, 3, !dbg !1178
  %cmp10 = icmp eq i64 %rem168, 0, !dbg !1178
  br i1 %cmp10, label %if.then12, label %if.end, !dbg !1182

if.then12:                                        ; preds = %for.body
  %gcov_ctr105 = load i64, i64* getelementptr inbounds ([12 x i64], [12 x i64]* @__llvm_gcov_ctr.70, i64 0, i64 1), align 8, !dbg !1183
  %7 = add i64 %gcov_ctr105, 1, !dbg !1183
  store i64 %7, i64* getelementptr inbounds ([12 x i64], [12 x i64]* @__llvm_gcov_ctr.70, i64 0, i64 1), align 8, !dbg !1183
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1183, !tbaa !830
  %9 = load i32, i32* %sfd, align 8, !dbg !1185, !tbaa !1034
  %call14 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %8, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i32 noundef %9) #16, !dbg !1186
  br label %if.end, !dbg !1187

if.end:                                           ; preds = %if.then12, %for.body
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1188, !tbaa !830
  %arrayidx = getelementptr inbounds [24 x i8], [24 x i8]* %bytes, i64 0, i64 %indvars.iv, !dbg !1189
  %11 = load i8, i8* %arrayidx, align 1, !dbg !1189, !tbaa !858
  %conv15 = zext i8 %11 to i32, !dbg !1189
  %call16 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %10, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), i32 noundef %conv15) #16, !dbg !1190
  %gcov_ctr106 = load i64, i64* getelementptr inbounds ([12 x i64], [12 x i64]* @__llvm_gcov_ctr.70, i64 0, i64 2), align 16, !dbg !1191
  %12 = add i64 %gcov_ctr106, 1, !dbg !1191
  store i64 %12, i64* getelementptr inbounds ([12 x i64], [12 x i64]* @__llvm_gcov_ctr.70, i64 0, i64 2), align 16, !dbg !1191
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !1191
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !1147, metadata !DIExpression()), !dbg !1175
  %exitcond.not = icmp eq i64 %indvars.iv.next, 24, !dbg !1192
  br i1 %exitcond.not, label %for.end, label %for.body, !dbg !1176, !llvm.loop !1193

for.end:                                          ; preds = %if.end
  %gcov_ctr107 = load i64, i64* getelementptr inbounds ([12 x i64], [12 x i64]* @__llvm_gcov_ctr.70, i64 0, i64 3), align 8, !dbg !1196
  %13 = add i64 %gcov_ctr107, 1, !dbg !1196
  store i64 %13, i64* getelementptr inbounds ([12 x i64], [12 x i64]* @__llvm_gcov_ctr.70, i64 0, i64 3), align 8, !dbg !1196
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1196, !tbaa !830
  %call17 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %14, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0)) #16, !dbg !1197
  br label %if.end18, !dbg !1198

if.end18:                                         ; preds = %for.end, %if.else
  %keylen = getelementptr inbounds %struct.conn, %struct.conn* %c, i64 0, i32 36, i32 0, i32 2, !dbg !1199
  %15 = load i16, i16* %keylen, align 2, !dbg !1199, !tbaa !858
  %call20 = tail call fastcc zeroext i16 @__bswap_16(i16 noundef zeroext %15) #15, !dbg !1199
  store i16 %call20, i16* %keylen, align 2, !dbg !1200, !tbaa !858
  %bodylen = getelementptr inbounds %struct.conn, %struct.conn* %c, i64 0, i32 36, i32 0, i32 6, !dbg !1201
  %16 = load i32, i32* %bodylen, align 8, !dbg !1201, !tbaa !858
  %call25 = tail call fastcc i32 @__bswap_32(i32 noundef %16) #15, !dbg !1201
  store i32 %call25, i32* %bodylen, align 8, !dbg !1202, !tbaa !858
  %cas = getelementptr inbounds %struct.conn, %struct.conn* %c, i64 0, i32 36, i32 0, i32 8, !dbg !1203
  %17 = load i64, i64* %cas, align 8, !dbg !1203, !tbaa !858
  %call30 = tail call i64 @ntohll(i64 noundef %17) #16, !dbg !1204
  store i64 %call30, i64* %cas, align 8, !dbg !1205, !tbaa !858
  %18 = load i8, i8* %2, align 8, !dbg !1206, !tbaa !858
  %cmp37.not = icmp eq i8 %18, -128, !dbg !1208
  br i1 %cmp37.not, label %if.end47, label %if.then39, !dbg !1209

if.then39:                                        ; preds = %if.end18
  %19 = load i32, i32* getelementptr inbounds (%struct.settings, %struct.settings* @settings, i64 0, i32 5), align 8, !dbg !1210, !tbaa !997
  %tobool.not = icmp eq i32 %19, 0, !dbg !1213
  br i1 %tobool.not, label %if.end46, label %if.then40, !dbg !1214

if.then40:                                        ; preds = %if.then39
  %gcov_ctr108 = load i64, i64* getelementptr inbounds ([12 x i64], [12 x i64]* @__llvm_gcov_ctr.70, i64 0, i64 4), align 16, !dbg !1215
  %20 = add i64 %gcov_ctr108, 1, !dbg !1215
  store i64 %20, i64* getelementptr inbounds ([12 x i64], [12 x i64]* @__llvm_gcov_ctr.70, i64 0, i64 4), align 16, !dbg !1215
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1215, !tbaa !830
  %conv44 = zext i8 %18 to i32, !dbg !1217
  %call45 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %21, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.9, i64 0, i64 0), i32 noundef %conv44) #16, !dbg !1218
  br label %if.end46, !dbg !1219

if.end46:                                         ; preds = %if.then40, %if.then39
  %gcov_ctr109 = load i64, i64* getelementptr inbounds ([12 x i64], [12 x i64]* @__llvm_gcov_ctr.70, i64 0, i64 5), align 8, !dbg !1220
  %22 = add i64 %gcov_ctr109, 1, !dbg !1220
  store i64 %22, i64* getelementptr inbounds ([12 x i64], [12 x i64]* @__llvm_gcov_ctr.70, i64 0, i64 5), align 8, !dbg !1220
  tail call void @conn_set_state(%struct.conn* noundef nonnull %c, i32 noundef 8) #16, !dbg !1221
  br label %return, !dbg !1222

if.end47:                                         ; preds = %if.end18
  %extlen50 = getelementptr inbounds %struct.conn, %struct.conn* %c, i64 0, i32 36, i32 0, i32 3, !dbg !1223
  %23 = load i8, i8* %extlen50, align 4, !dbg !1223, !tbaa !858
  call void @llvm.dbg.value(metadata i8 %23, metadata !1150, metadata !DIExpression()), !dbg !1168
  %24 = load i16, i16* %keylen, align 2, !dbg !1224, !tbaa !858
  call void @llvm.dbg.value(metadata i16 %24, metadata !1151, metadata !DIExpression()), !dbg !1168
  %25 = load i32, i32* %rbytes, align 4, !dbg !1225, !tbaa !1158
  %conv56 = sext i32 %25 to i64, !dbg !1227
  %conv57 = zext i16 %24 to i64, !dbg !1228
  %conv58 = zext i8 %23 to i64, !dbg !1229
  %add = add nuw nsw i64 %conv58, 24, !dbg !1230
  %narrow = add nuw nsw i64 %add, %conv57, !dbg !1231
  %cmp61 = icmp ugt i64 %narrow, %conv56, !dbg !1232
  br i1 %cmp61, label %if.then63, label %if.end64, !dbg !1233

if.then63:                                        ; preds = %if.end47
  %gcov_ctr110 = load i64, i64* getelementptr inbounds ([12 x i64], [12 x i64]* @__llvm_gcov_ctr.70, i64 0, i64 6), align 16, !dbg !1234
  %26 = add i64 %gcov_ctr110, 1, !dbg !1234
  store i64 %26, i64* getelementptr inbounds ([12 x i64], [12 x i64]* @__llvm_gcov_ctr.70, i64 0, i64 6), align 16, !dbg !1234
  br label %return, !dbg !1234

if.end64:                                         ; preds = %if.end47
  %call65 = tail call zeroext i1 @resp_start(%struct.conn* noundef nonnull %c) #16, !dbg !1236
  br i1 %call65, label %if.end67, label %if.then66, !dbg !1238

if.then66:                                        ; preds = %if.end64
  %gcov_ctr111 = load i64, i64* getelementptr inbounds ([12 x i64], [12 x i64]* @__llvm_gcov_ctr.70, i64 0, i64 7), align 8, !dbg !1239
  %27 = add i64 %gcov_ctr111, 1, !dbg !1239
  store i64 %27, i64* getelementptr inbounds ([12 x i64], [12 x i64]* @__llvm_gcov_ctr.70, i64 0, i64 7), align 8, !dbg !1239
  tail call void @conn_set_state(%struct.conn* noundef nonnull %c, i32 noundef 8) #16, !dbg !1241
  br label %return, !dbg !1242

if.end67:                                         ; preds = %if.end64
  %opcode = getelementptr inbounds %struct.conn, %struct.conn* %c, i64 0, i32 36, i32 0, i32 1, !dbg !1243
  %28 = load i8, i8* %opcode, align 1, !dbg !1243, !tbaa !858
  %conv70 = zext i8 %28 to i16, !dbg !1244
  %cmd = getelementptr inbounds %struct.conn, %struct.conn* %c, i64 0, i32 39, !dbg !1245
  store i16 %conv70, i16* %cmd, align 8, !dbg !1246, !tbaa !793
  %29 = load i16, i16* %keylen, align 2, !dbg !1247, !tbaa !858
  %conv74 = zext i16 %29 to i32, !dbg !1248
  %keylen75 = getelementptr inbounds %struct.conn, %struct.conn* %c, i64 0, i32 41, !dbg !1249
  store i32 %conv74, i32* %keylen75, align 8, !dbg !1250, !tbaa !1251
  %opaque = getelementptr inbounds %struct.conn, %struct.conn* %c, i64 0, i32 36, i32 0, i32 7, !dbg !1252
  %30 = load i32, i32* %opaque, align 4, !dbg !1252, !tbaa !858
  %opaque78 = getelementptr inbounds %struct.conn, %struct.conn* %c, i64 0, i32 40, !dbg !1253
  store i32 %30, i32* %opaque78, align 4, !dbg !1254, !tbaa !1255
  %cas79 = getelementptr inbounds %struct.conn, %struct.conn* %c, i64 0, i32 37, !dbg !1256
  store i64 0, i64* %cas79, align 8, !dbg !1257, !tbaa !1258
  %31 = load volatile i32, i32* @current_time, align 4, !dbg !1259, !tbaa !873
  %last_cmd_time = getelementptr inbounds %struct.conn, %struct.conn* %c, i64 0, i32 11, !dbg !1260
  store i32 %31, i32* %last_cmd_time, align 4, !dbg !1261, !tbaa !1262
  %32 = getelementptr inbounds [48 x i8], [48 x i8]* %extbuf, i64 0, i64 0, !dbg !1263
  call void @llvm.lifetime.start.p0i8(i64 48, i8* nonnull %32) #17, !dbg !1263
  call void @llvm.dbg.declare(metadata [48 x i8]* %extbuf, metadata !1152, metadata !DIExpression()), !dbg !1264
  %add.ptr = getelementptr inbounds [48 x i8], [48 x i8]* %extbuf, i64 0, i64 24, !dbg !1265
  %33 = load i8*, i8** %rcurr, align 8, !dbg !1266, !tbaa !1166
  %add.ptr81 = getelementptr inbounds i8, i8* %33, i64 24, !dbg !1267
  %cmp83 = icmp ugt i8 %23, 20, !dbg !1268
  br i1 %cmp83, label %cond.true, label %cond.false, !dbg !1269

cond.true:                                        ; preds = %if.end67
  %gcov_ctr112 = load i64, i64* getelementptr inbounds ([12 x i64], [12 x i64]* @__llvm_gcov_ctr.70, i64 0, i64 8), align 16, !dbg !1269
  %34 = add i64 %gcov_ctr112, 1, !dbg !1269
  store i64 %34, i64* getelementptr inbounds ([12 x i64], [12 x i64]* @__llvm_gcov_ctr.70, i64 0, i64 8), align 16, !dbg !1269
  br label %if.end104, !dbg !1269

cond.false:                                       ; preds = %if.end67
  %gcov_ctr113 = load i64, i64* getelementptr inbounds ([12 x i64], [12 x i64]* @__llvm_gcov_ctr.70, i64 0, i64 9), align 8, !dbg !1270
  %35 = add i64 %gcov_ctr113, 1, !dbg !1270
  store i64 %35, i64* getelementptr inbounds ([12 x i64], [12 x i64]* @__llvm_gcov_ctr.70, i64 0, i64 9), align 8, !dbg !1270
  br label %if.end104, !dbg !1269

if.end104:                                        ; preds = %cond.false, %cond.true
  %cond = phi i64 [ 20, %cond.true ], [ %conv58, %cond.false ]
  %call87 = call i8* @memcpy(i8* noundef nonnull %add.ptr, i8* noundef nonnull %add.ptr81, i64 noundef %cond) #16, !dbg !1271
  %36 = load i32, i32* %rbytes, align 4, !dbg !1272, !tbaa !1158
  %37 = trunc i64 %narrow to i32, !dbg !1272
  %conv94 = sub i32 %36, %37, !dbg !1272
  store i32 %conv94, i32* %rbytes, align 4, !dbg !1272, !tbaa !1158
  %38 = load i8*, i8** %rcurr, align 8, !dbg !1273, !tbaa !1166
  %add.ptr100 = getelementptr inbounds i8, i8* %38, i64 %narrow, !dbg !1273
  store i8* %add.ptr100, i8** %rcurr, align 8, !dbg !1273, !tbaa !1166
  call fastcc void @dispatch_bin_command(%struct.conn* noundef nonnull %c, i8* noundef nonnull %32) #15, !dbg !1274
  call void @llvm.lifetime.end.p0i8(i64 48, i8* nonnull %32) #17, !dbg !1275
  %gcov_ctr115 = load i64, i64* getelementptr inbounds ([12 x i64], [12 x i64]* @__llvm_gcov_ctr.70, i64 0, i64 11), align 8, !dbg !1276
  %39 = add i64 %gcov_ctr115, 1, !dbg !1276
  store i64 %39, i64* getelementptr inbounds ([12 x i64], [12 x i64]* @__llvm_gcov_ctr.70, i64 0, i64 11), align 8, !dbg !1276
  br label %return, !dbg !1276

return:                                           ; preds = %if.then66, %if.then63, %if.end46, %if.end104, %if.then
  %retval.2 = phi i32 [ 0, %if.then ], [ 1, %if.end104 ], [ -1, %if.then66 ], [ 0, %if.then63 ], [ -1, %if.end46 ], !dbg !1156
  ret i32 %retval.2, !dbg !1277
}

; Function Attrs: nounwind
declare !dbg !1278 dso_local i8* @memcpy(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #5

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #5

; Function Attrs: mustprogress nofree noinline nosync nounwind uwtable willreturn
define internal fastcc zeroext i16 @__bswap_16(i16 noundef zeroext %__bsx) unnamed_addr #6 !dbg !1284 {
entry:
  %gcov_ctr = load i64, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.71, i64 0, i64 0), align 8
  %0 = add i64 %gcov_ctr, 1
  store i64 %0, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.71, i64 0, i64 0), align 8
  call void @llvm.dbg.value(metadata i16 %__bsx, metadata !1289, metadata !DIExpression()), !dbg !1290
  %rev = tail call i16 @llvm.bswap.i16(i16 %__bsx)
  ret i16 %rev, !dbg !1291
}

; Function Attrs: mustprogress nofree noinline nosync nounwind uwtable willreturn
define internal fastcc i32 @__bswap_32(i32 noundef %__bsx) unnamed_addr #6 !dbg !1292 {
entry:
  %gcov_ctr = load i64, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.72, i64 0, i64 0), align 8
  %0 = add i64 %gcov_ctr, 1
  store i64 %0, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.72, i64 0, i64 0), align 8
  call void @llvm.dbg.value(metadata i32 %__bsx, metadata !1296, metadata !DIExpression()), !dbg !1297
  %or7 = tail call i32 @llvm.bswap.i32(i32 %__bsx), !dbg !1298
  ret i32 %or7, !dbg !1299
}

declare !dbg !1300 dso_local i64 @ntohll(i64 noundef) local_unnamed_addr #3

declare !dbg !1304 dso_local void @conn_set_state(%struct.conn* noundef, i32 noundef) local_unnamed_addr #3

declare !dbg !1307 dso_local zeroext i1 @resp_start(%struct.conn* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @dispatch_bin_command(%struct.conn* noundef %c, i8* nocapture noundef %extbuf) unnamed_addr #0 !dbg !1310 {
entry:
  call void @llvm.dbg.value(metadata %struct.conn* %c, metadata !1314, metadata !DIExpression()), !dbg !1320
  call void @llvm.dbg.value(metadata i8* %extbuf, metadata !1315, metadata !DIExpression()), !dbg !1320
  call void @llvm.dbg.value(metadata i32 0, metadata !1316, metadata !DIExpression()), !dbg !1320
  call void @llvm.dbg.value(metadata i8 undef, metadata !1317, metadata !DIExpression()), !dbg !1320
  %keylen4 = getelementptr inbounds %struct.conn, %struct.conn* %c, i64 0, i32 36, i32 0, i32 2, !dbg !1321
  %0 = load i16, i16* %keylen4, align 2, !dbg !1321, !tbaa !858
  call void @llvm.dbg.value(metadata i16 %0, metadata !1318, metadata !DIExpression()), !dbg !1320
  %bodylen7 = getelementptr inbounds %struct.conn, %struct.conn* %c, i64 0, i32 36, i32 0, i32 6, !dbg !1322
  %1 = load i32, i32* %bodylen7, align 8, !dbg !1322, !tbaa !858
  call void @llvm.dbg.value(metadata i32 %1, metadata !1319, metadata !DIExpression()), !dbg !1320
  %conv = zext i16 %0 to i32, !dbg !1323
  %cmp = icmp ult i32 %1, %conv, !dbg !1325
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !1326

lor.lhs.false:                                    ; preds = %entry
  %extlen1 = getelementptr inbounds %struct.conn, %struct.conn* %c, i64 0, i32 36, i32 0, i32 3, !dbg !1327
  %2 = load i8, i8* %extlen1, align 4, !dbg !1327, !tbaa !858
  call void @llvm.dbg.value(metadata i8 %2, metadata !1317, metadata !DIExpression()), !dbg !1320
  %gcov_ctr = load i64, i64* getelementptr inbounds ([70 x i64], [70 x i64]* @__llvm_gcov_ctr.73, i64 0, i64 0), align 16, !dbg !1328
  %3 = add i64 %gcov_ctr, 1, !dbg !1328
  store i64 %3, i64* getelementptr inbounds ([70 x i64], [70 x i64]* @__llvm_gcov_ctr.73, i64 0, i64 0), align 16, !dbg !1328
  %conv10 = zext i8 %2 to i32, !dbg !1329
  %add = add nuw nsw i32 %conv10, %conv, !dbg !1330
  %cmp11 = icmp ugt i32 %add, %1, !dbg !1331
  br i1 %cmp11, label %if.then, label %if.end, !dbg !1332

if.then:                                          ; preds = %lor.lhs.false, %entry
  %gcov_ctr247 = load i64, i64* getelementptr inbounds ([70 x i64], [70 x i64]* @__llvm_gcov_ctr.73, i64 0, i64 1), align 8, !dbg !1333
  %4 = add i64 %gcov_ctr247, 1, !dbg !1333
  store i64 %4, i64* getelementptr inbounds ([70 x i64], [70 x i64]* @__llvm_gcov_ctr.73, i64 0, i64 1), align 8, !dbg !1333
  tail call void @write_bin_error(%struct.conn* noundef nonnull %c, i32 noundef 129, i8* noundef null, i32 noundef 0) #15, !dbg !1335
  %close_after_write = getelementptr inbounds %struct.conn, %struct.conn* %c, i64 0, i32 6, !dbg !1336
  store i8 1, i8* %close_after_write, align 8, !dbg !1337, !tbaa !1338
  br label %cleanup, !dbg !1339

if.end:                                           ; preds = %lor.lhs.false
  %5 = load i8, i8* getelementptr inbounds (%struct.settings, %struct.settings* @settings, i64 0, i32 26), align 4, !dbg !1340, !tbaa !963, !range !966
  %tobool.not = icmp eq i8 %5, 0, !dbg !1340
  br i1 %tobool.not, label %if.end16, label %land.lhs.true, !dbg !1342

land.lhs.true:                                    ; preds = %if.end
  %gcov_ctr248 = load i64, i64* getelementptr inbounds ([70 x i64], [70 x i64]* @__llvm_gcov_ctr.73, i64 0, i64 2), align 16, !dbg !1343
  %6 = add i64 %gcov_ctr248, 1, !dbg !1343
  store i64 %6, i64* getelementptr inbounds ([70 x i64], [70 x i64]* @__llvm_gcov_ctr.73, i64 0, i64 2), align 16, !dbg !1343
  %call = tail call fastcc zeroext i1 @authenticated(%struct.conn* noundef nonnull %c) #15, !dbg !1344
  br i1 %call, label %if.end16, label %if.then14, !dbg !1345

if.then14:                                        ; preds = %land.lhs.true
  %gcov_ctr249 = load i64, i64* getelementptr inbounds ([70 x i64], [70 x i64]* @__llvm_gcov_ctr.73, i64 0, i64 3), align 8, !dbg !1346
  %7 = add i64 %gcov_ctr249, 1, !dbg !1346
  store i64 %7, i64* getelementptr inbounds ([70 x i64], [70 x i64]* @__llvm_gcov_ctr.73, i64 0, i64 3), align 8, !dbg !1346
  tail call void @write_bin_error(%struct.conn* noundef nonnull %c, i32 noundef 32, i8* noundef null, i32 noundef 0) #15, !dbg !1348
  %close_after_write15 = getelementptr inbounds %struct.conn, %struct.conn* %c, i64 0, i32 6, !dbg !1349
  store i8 1, i8* %close_after_write15, align 8, !dbg !1350, !tbaa !1338
  br label %cleanup, !dbg !1351

if.end16:                                         ; preds = %land.lhs.true, %if.end
  %noreply = getelementptr inbounds %struct.conn, %struct.conn* %c, i64 0, i32 34, !dbg !1352
  store i8 1, i8* %noreply, align 4, !dbg !1353, !tbaa !1354
  %cmp18 = icmp ugt i16 %0, 250, !dbg !1355
  br i1 %cmp18, label %if.then20, label %if.end21, !dbg !1357

if.then20:                                        ; preds = %if.end16
  %gcov_ctr250 = load i64, i64* getelementptr inbounds ([70 x i64], [70 x i64]* @__llvm_gcov_ctr.73, i64 0, i64 4), align 16, !dbg !1358
  %8 = add i64 %gcov_ctr250, 1, !dbg !1358
  store i64 %8, i64* getelementptr inbounds ([70 x i64], [70 x i64]* @__llvm_gcov_ctr.73, i64 0, i64 4), align 16, !dbg !1358
  tail call fastcc void @handle_binary_protocol_error(%struct.conn* noundef nonnull %c) #15, !dbg !1360
  br label %cleanup, !dbg !1361

if.end21:                                         ; preds = %if.end16
  %cmd = getelementptr inbounds %struct.conn, %struct.conn* %c, i64 0, i32 39, !dbg !1362
  %9 = load i16, i16* %cmd, align 8, !dbg !1362, !tbaa !793
  %conv22 = sext i16 %9 to i32, !dbg !1363
  switch i32 %conv22, label %sw.epilog [
    i32 17, label %sw.bb
    i32 18, label %sw.bb24
    i32 19, label %sw.bb26
    i32 20, label %sw.epilog.thread452
    i32 21, label %sw.bb30
    i32 22, label %sw.bb32
    i32 23, label %sw.epilog.thread454
    i32 24, label %sw.epilog.thread450
    i32 25, label %sw.bb38
    i32 26, label %sw.bb40
    i32 9, label %sw.bb42
    i32 13, label %sw.bb44
    i32 30, label %sw.bb46
    i32 36, label %sw.bb48
  ], !dbg !1364

sw.bb:                                            ; preds = %if.end21
  %gcov_ctr251 = load i64, i64* getelementptr inbounds ([70 x i64], [70 x i64]* @__llvm_gcov_ctr.73, i64 0, i64 5), align 8, !dbg !1365
  %10 = add i64 %gcov_ctr251, 1, !dbg !1365
  store i64 %10, i64* getelementptr inbounds ([70 x i64], [70 x i64]* @__llvm_gcov_ctr.73, i64 0, i64 5), align 8, !dbg !1365
  br label %sw.bb101.sink.split, !dbg !1367

sw.bb24:                                          ; preds = %if.end21
  %gcov_ctr252 = load i64, i64* getelementptr inbounds ([70 x i64], [70 x i64]* @__llvm_gcov_ctr.73, i64 0, i64 6), align 16, !dbg !1368
  %11 = add i64 %gcov_ctr252, 1, !dbg !1368
  store i64 %11, i64* getelementptr inbounds ([70 x i64], [70 x i64]* @__llvm_gcov_ctr.73, i64 0, i64 6), align 16, !dbg !1368
  br label %sw.bb101.sink.split, !dbg !1369

sw.bb26:                                          ; preds = %if.end21
  %gcov_ctr253 = load i64, i64* getelementptr inbounds ([70 x i64], [70 x i64]* @__llvm_gcov_ctr.73, i64 0, i64 7), align 8, !dbg !1370
  %12 = add i64 %gcov_ctr253, 1, !dbg !1370
  store i64 %12, i64* getelementptr inbounds ([70 x i64], [70 x i64]* @__llvm_gcov_ctr.73, i64 0, i64 7), align 8, !dbg !1370
  br label %sw.bb101.sink.split, !dbg !1371

sw.epilog.thread452:                              ; preds = %if.end21
  %gcov_ctr254 = load i64, i64* getelementptr inbounds ([70 x i64], [70 x i64]* @__llvm_gcov_ctr.73, i64 0, i64 8), align 16, !dbg !1372
  %13 = add i64 %gcov_ctr254, 1, !dbg !1372
  store i64 %13, i64* getelementptr inbounds ([70 x i64], [70 x i64]* @__llvm_gcov_ctr.73, i64 0, i64 8), align 16, !dbg !1372
  store i16 4, i16* %cmd, align 8, !dbg !1373, !tbaa !793
  br label %sw.bb132, !dbg !1374

sw.bb30:                                          ; preds = %if.end21
  %gcov_ctr255 = load i64, i64* getelementptr inbounds ([70 x i64], [70 x i64]* @__llvm_gcov_ctr.73, i64 0, i64 9), align 8, !dbg !1375
  %14 = add i64 %gcov_ctr255, 1, !dbg !1375
  store i64 %14, i64* getelementptr inbounds ([70 x i64], [70 x i64]* @__llvm_gcov_ctr.73, i64 0, i64 9), align 8, !dbg !1375
  br label %sw.bb147.sink.split, !dbg !1376

sw.bb32:                                          ; preds = %if.end21
  %gcov_ctr256 = load i64, i64* getelementptr inbounds ([70 x i64], [70 x i64]* @__llvm_gcov_ctr.73, i64 0, i64 10), align 16, !dbg !1377
  %15 = add i64 %gcov_ctr256, 1, !dbg !1377
  store i64 %15, i64* getelementptr inbounds ([70 x i64], [70 x i64]* @__llvm_gcov_ctr.73, i64 0, i64 10), align 16, !dbg !1377
  br label %sw.bb147.sink.split, !dbg !1378

sw.epilog.thread454:                              ; preds = %if.end21
  %gcov_ctr257 = load i64, i64* getelementptr inbounds ([70 x i64], [70 x i64]* @__llvm_gcov_ctr.73, i64 0, i64 11), align 8, !dbg !1379
  %16 = add i64 %gcov_ctr257, 1, !dbg !1379
  store i64 %16, i64* getelementptr inbounds ([70 x i64], [70 x i64]* @__llvm_gcov_ctr.73, i64 0, i64 11), align 8, !dbg !1379
  store i16 7, i16* %cmd, align 8, !dbg !1380, !tbaa !793
  br label %sw.bb182, !dbg !1374

sw.epilog.thread450:                              ; preds = %if.end21
  %gcov_ctr258 = load i64, i64* getelementptr inbounds ([70 x i64], [70 x i64]* @__llvm_gcov_ctr.73, i64 0, i64 12), align 16, !dbg !1381
  %17 = add i64 %gcov_ctr258, 1, !dbg !1381
  store i64 %17, i64* getelementptr inbounds ([70 x i64], [70 x i64]* @__llvm_gcov_ctr.73, i64 0, i64 12), align 16, !dbg !1381
  store i16 8, i16* %cmd, align 8, !dbg !1382, !tbaa !793
  br label %sw.bb68, !dbg !1374

sw.bb38:                                          ; preds = %if.end21
  %gcov_ctr259 = load i64, i64* getelementptr inbounds ([70 x i64], [70 x i64]* @__llvm_gcov_ctr.73, i64 0, i64 13), align 8, !dbg !1383
  %18 = add i64 %gcov_ctr259, 1, !dbg !1383
  store i64 %18, i64* getelementptr inbounds ([70 x i64], [70 x i64]* @__llvm_gcov_ctr.73, i64 0, i64 13), align 8, !dbg !1383
  br label %sw.bb164.sink.split, !dbg !1384

sw.bb40:                                          ; preds = %if.end21
  %gcov_ctr260 = load i64, i64* getelementptr inbounds ([70 x i64], [70 x i64]* @__llvm_gcov_ctr.73, i64 0, i64 14), align 16, !dbg !1385
  %19 = add i64 %gcov_ctr260, 1, !dbg !1385
  store i64 %19, i64* getelementptr inbounds ([70 x i64], [70 x i64]* @__llvm_gcov_ctr.73, i64 0, i64 14), align 16, !dbg !1385
  br label %sw.bb164.sink.split, !dbg !1386

sw.bb42:                                          ; preds = %if.end21
  %gcov_ctr261 = load i64, i64* getelementptr inbounds ([70 x i64], [70 x i64]* @__llvm_gcov_ctr.73, i64 0, i64 15), align 8, !dbg !1387
  %20 = add i64 %gcov_ctr261, 1, !dbg !1387
  store i64 %20, i64* getelementptr inbounds ([70 x i64], [70 x i64]* @__llvm_gcov_ctr.73, i64 0, i64 15), align 8, !dbg !1387
  br label %sw.bb117.sink.split, !dbg !1388

sw.bb44:                                          ; preds = %if.end21
  %gcov_ctr262 = load i64, i64* getelementptr inbounds ([70 x i64], [70 x i64]* @__llvm_gcov_ctr.73, i64 0, i64 16), align 16, !dbg !1389
  %21 = add i64 %gcov_ctr262, 1, !dbg !1389
  store i64 %21, i64* getelementptr inbounds ([70 x i64], [70 x i64]* @__llvm_gcov_ctr.73, i64 0, i64 16), align 16, !dbg !1389
  br label %sw.bb117.sink.split, !dbg !1390

sw.bb46:                                          ; preds = %if.end21
  %gcov_ctr263 = load i64, i64* getelementptr inbounds ([70 x i64], [70 x i64]* @__llvm_gcov_ctr.73, i64 0, i64 17), align 8, !dbg !1391
  %22 = add i64 %gcov_ctr263, 1, !dbg !1391
  store i64 %22, i64* getelementptr inbounds ([70 x i64], [70 x i64]* @__llvm_gcov_ctr.73, i64 0, i64 17), align 8, !dbg !1391
  br label %sw.bb222.sink.split, !dbg !1392

sw.bb48:                                          ; preds = %if.end21
  %gcov_ctr264 = load i64, i64* getelementptr inbounds ([70 x i64], [70 x i64]* @__llvm_gcov_ctr.73, i64 0, i64 18), align 16, !dbg !1393
  %23 = add i64 %gcov_ctr264, 1, !dbg !1393
  store i64 %23, i64* getelementptr inbounds ([70 x i64], [70 x i64]* @__llvm_gcov_ctr.73, i64 0, i64 18), align 16, !dbg !1393
  br label %sw.bb222.sink.split, !dbg !1394

sw.epilog:                                        ; preds = %if.end21
  %gcov_ctr265 = load i64, i64* getelementptr inbounds ([70 x i64], [70 x i64]* @__llvm_gcov_ctr.73, i64 0, i64 19), align 8, !dbg !1395
  %24 = add i64 %gcov_ctr265, 1, !dbg !1395
  store i64 %24, i64* getelementptr inbounds ([70 x i64], [70 x i64]* @__llvm_gcov_ctr.73, i64 0, i64 19), align 8, !dbg !1395
  store i8 0, i8* %noreply, align 4, !dbg !1396, !tbaa !1354
  %conv52 = sext i16 %9 to i32, !dbg !1397
  switch i32 %conv52, label %sw.default233 [
    i32 11, label %sw.bb53
    i32 8, label %sw.bb68
    i32 10, label %sw.bb87
    i32 1, label %sw.bb101
    i32 2, label %sw.bb101
    i32 3, label %sw.bb101
    i32 9, label %sw.bb117
    i32 0, label %sw.bb117
    i32 13, label %sw.bb117
    i32 12, label %sw.bb117
    i32 4, label %sw.bb132
    i32 5, label %sw.bb147
    i32 6, label %sw.bb147
    i32 14, label %sw.bb164
    i32 15, label %sw.bb164
    i32 16, label %sw.bb175
    i32 7, label %sw.bb182
    i32 32, label %sw.bb197
    i32 33, label %sw.bb211
    i32 34, label %sw.bb211
    i32 28, label %sw.bb222
    i32 29, label %sw.bb222
    i32 30, label %sw.bb222
    i32 35, label %sw.bb222
    i32 36, label %sw.bb222
  ], !dbg !1374

sw.bb53:                                          ; preds = %sw.epilog
  %cmp55 = icmp eq i8 %2, 0, !dbg !1398
  br i1 %cmp55, label %land.lhs.true57, label %if.else, !dbg !1401

land.lhs.true57:                                  ; preds = %sw.bb53
  %gcov_ctr266 = load i64, i64* getelementptr inbounds ([70 x i64], [70 x i64]* @__llvm_gcov_ctr.73, i64 0, i64 20), align 16, !dbg !1402
  %25 = add i64 %gcov_ctr266, 1, !dbg !1402
  store i64 %25, i64* getelementptr inbounds ([70 x i64], [70 x i64]* @__llvm_gcov_ctr.73, i64 0, i64 20), align 16, !dbg !1402
  %cmp59 = icmp eq i16 %0, 0, !dbg !1403
  br i1 %cmp59, label %land.lhs.true61, label %if.else, !dbg !1404

land.lhs.true61:                                  ; preds = %land.lhs.true57
  %gcov_ctr267 = load i64, i64* getelementptr inbounds ([70 x i64], [70 x i64]* @__llvm_gcov_ctr.73, i64 0, i64 21), align 8, !dbg !1405
  %26 = add i64 %gcov_ctr267, 1, !dbg !1405
  store i64 %26, i64* getelementptr inbounds ([70 x i64], [70 x i64]* @__llvm_gcov_ctr.73, i64 0, i64 21), align 8, !dbg !1405
  %cmp62 = icmp eq i32 %1, 0, !dbg !1406
  br i1 %cmp62, label %if.then64, label %if.else, !dbg !1407

if.then64:                                        ; preds = %land.lhs.true61
  %gcov_ctr268 = load i64, i64* getelementptr inbounds ([70 x i64], [70 x i64]* @__llvm_gcov_ctr.73, i64 0, i64 22), align 16, !dbg !1408
  %27 = add i64 %gcov_ctr268, 1, !dbg !1408
  store i64 %27, i64* getelementptr inbounds ([70 x i64], [70 x i64]* @__llvm_gcov_ctr.73, i64 0, i64 22), align 16, !dbg !1408
  %call65 = tail call i64 @strlen(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.34, i64 0, i64 0)) #18, !dbg !1410
  %conv66 = trunc i64 %call65 to i32, !dbg !1410
  tail call fastcc void @write_bin_response(%struct.conn* noundef nonnull %c, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.34, i64 0, i64 0), i32 noundef %conv66) #15, !dbg !1411
  call void @llvm.dbg.value(metadata i32 undef, metadata !1316, metadata !DIExpression()), !dbg !1320
  br label %cleanup, !dbg !1412

if.else:                                          ; preds = %land.lhs.true61, %land.lhs.true57, %sw.bb53
  %gcov_ctr269 = load i64, i64* getelementptr inbounds ([70 x i64], [70 x i64]* @__llvm_gcov_ctr.73, i64 0, i64 23), align 8, !dbg !1413
  %28 = add i64 %gcov_ctr269, 1, !dbg !1413
  store i64 %28, i64* getelementptr inbounds ([70 x i64], [70 x i64]* @__llvm_gcov_ctr.73, i64 0, i64 23), align 8, !dbg !1413
  call void @llvm.dbg.value(metadata i32 undef, metadata !1316, metadata !DIExpression()), !dbg !1320
  br label %if.then236, !dbg !1412

sw.bb68:                                          ; preds = %sw.epilog.thread450, %sw.epilog
  %cmp70 = icmp eq i16 %0, 0, !dbg !1415
  br i1 %cmp70, label %land.lhs.true72, label %if.else85, !dbg !1417

land.lhs.true72:                                  ; preds = %sw.bb68
  %gcov_ctr270 = load i64, i64* getelementptr inbounds ([70 x i64], [70 x i64]* @__llvm_gcov_ctr.73, i64 0, i64 24), align 16, !dbg !1418
  %29 = add i64 %gcov_ctr270, 1, !dbg !1418
  store i64 %29, i64* getelementptr inbounds ([70 x i64], [70 x i64]* @__llvm_gcov_ctr.73, i64 0, i64 24), align 16, !dbg !1418
  %cmp74 = icmp eq i32 %1, %conv10, !dbg !1419
  br i1 %cmp74, label %land.lhs.true76, label %if.else85, !dbg !1420

land.lhs.true76:                                  ; preds = %land.lhs.true72
  %gcov_ctr271 = load i64, i64* getelementptr inbounds ([70 x i64], [70 x i64]* @__llvm_gcov_ctr.73, i64 0, i64 25), align 8, !dbg !1421
  %30 = add i64 %gcov_ctr271, 1, !dbg !1421
  store i64 %30, i64* getelementptr inbounds ([70 x i64], [70 x i64]* @__llvm_gcov_ctr.73, i64 0, i64 25), align 8, !dbg !1421
  %cmp78 = icmp eq i8 %2, 0, !dbg !1422
  br i1 %cmp78, label %if.then84, label %lor.lhs.false80, !dbg !1423

lor.lhs.false80:                                  ; preds = %land.lhs.true76
  %gcov_ctr272 = load i64, i64* getelementptr inbounds ([70 x i64], [70 x i64]* @__llvm_gcov_ctr.73, i64 0, i64 26), align 16, !dbg !1424
  %31 = add i64 %gcov_ctr272, 1, !dbg !1424
  store i64 %31, i64* getelementptr inbounds ([70 x i64], [70 x i64]* @__llvm_gcov_ctr.73, i64 0, i64 26), align 16, !dbg !1424
  %cmp82 = icmp eq i8 %2, 4, !dbg !1425
  br i1 %cmp82, label %if.then84, label %if.else85, !dbg !1426

if.then84:                                        ; preds = %lor.lhs.false80, %land.lhs.true76
  %gcov_ctr273 = load i64, i64* getelementptr inbounds ([70 x i64], [70 x i64]* @__llvm_gcov_ctr.73, i64 0, i64 27), align 8, !dbg !1427
  %32 = add i64 %gcov_ctr273, 1, !dbg !1427
  store i64 %32, i64* getelementptr inbounds ([70 x i64], [70 x i64]* @__llvm_gcov_ctr.73, i64 0, i64 27), align 8, !dbg !1427
  tail call fastcc void @process_bin_flush(%struct.conn* noundef nonnull %c, i8* noundef %extbuf) #15, !dbg !1429
  call void @llvm.dbg.value(metadata i32 undef, metadata !1316, metadata !DIExpression()), !dbg !1320
  br label %cleanup, !dbg !1412

if.else85:                                        ; preds = %lor.lhs.false80, %land.lhs.true72, %sw.bb68
  %gcov_ctr274 = load i64, i64* getelementptr inbounds ([70 x i64], [70 x i64]* @__llvm_gcov_ctr.73, i64 0, i64 28), align 16, !dbg !1430
  %33 = add i64 %gcov_ctr274, 1, !dbg !1430
  store i64 %33, i64* getelementptr inbounds ([70 x i64], [70 x i64]* @__llvm_gcov_ctr.73, i64 0, i64 28), align 16, !dbg !1430
  call void @llvm.dbg.value(metadata i32 undef, metadata !1316, metadata !DIExpression()), !dbg !1320
  br label %if.then236, !dbg !1412

sw.bb87:                                          ; preds = %sw.epilog
  %cmp89 = icmp eq i8 %2, 0, !dbg !1432
  br i1 %cmp89, label %land.lhs.true91, label %if.else99, !dbg !1434

land.lhs.true91:                                  ; preds = %sw.bb87
  %gcov_ctr275 = load i64, i64* getelementptr inbounds ([70 x i64], [70 x i64]* @__llvm_gcov_ctr.73, i64 0, i64 29), align 8, !dbg !1435
  %34 = add i64 %gcov_ctr275, 1, !dbg !1435
  store i64 %34, i64* getelementptr inbounds ([70 x i64], [70 x i64]* @__llvm_gcov_ctr.73, i64 0, i64 29), align 8, !dbg !1435
  %cmp93 = icmp eq i16 %0, 0, !dbg !1436
  br i1 %cmp93, label %land.lhs.true95, label %if.else99, !dbg !1437

land.lhs.true95:                                  ; preds = %land.lhs.true91
  %gcov_ctr276 = load i64, i64* getelementptr inbounds ([70 x i64], [70 x i64]* @__llvm_gcov_ctr.73, i64 0, i64 30), align 16, !dbg !1438
  %35 = add i64 %gcov_ctr276, 1, !dbg !1438
  store i64 %35, i64* getelementptr inbounds ([70 x i64], [70 x i64]* @__llvm_gcov_ctr.73, i64 0, i64 30), align 16, !dbg !1438
  %cmp96 = icmp eq i32 %1, 0, !dbg !1439
  br i1 %cmp96, label %if.then98, label %if.else99, !dbg !1440

if.then98:                                        ; preds = %land.lhs.true95
  %gcov_ctr277 = load i64, i64* getelementptr inbounds ([70 x i64], [70 x i64]* @__llvm_gcov_ctr.73, i64 0, i64 31), align 8, !dbg !1441
  %36 = add i64 %gcov_ctr277, 1, !dbg !1441
  store i64 %36, i64* getelementptr inbounds ([70 x i64], [70 x i64]* @__llvm_gcov_ctr.73, i64 0, i64 31), align 8, !dbg !1441
  tail call fastcc void @write_bin_response(%struct.conn* noundef nonnull %c, i8* noundef null, i32 noundef 0) #15, !dbg !1443
  tail call void @conn_set_state(%struct.conn* noundef nonnull %c, i32 noundef 9) #16, !dbg !1444
  call void @llvm.dbg.value(metadata i32 undef, metadata !1316, metadata !DIExpression()), !dbg !1320
  br label %cleanup, !dbg !1412

if.else99:                                        ; preds = %land.lhs.true95, %land.lhs.true91, %sw.bb87
  %gcov_ctr278 = load i64, i64* getelementptr inbounds ([70 x i64], [70 x i64]* @__llvm_gcov_ctr.73, i64 0, i64 32), align 16, !dbg !1445
  %37 = add i64 %gcov_ctr278, 1, !dbg !1445
  store i64 %37, i64* getelementptr inbounds ([70 x i64], [70 x i64]* @__llvm_gcov_ctr.73, i64 0, i64 32), align 16, !dbg !1445
  call void @llvm.dbg.value(metadata i32 undef, metadata !1316, metadata !DIExpression()), !dbg !1320
  br label %if.then236, !dbg !1412

sw.bb101.sink.split:                              ; preds = %sw.bb26, %sw.bb24, %sw.bb
  %.sink = phi i16 [ 1, %sw.bb ], [ 2, %sw.bb24 ], [ 3, %sw.bb26 ]
  store i16 %.sink, i16* %cmd, align 8, !dbg !1447, !tbaa !793
  br label %sw.bb101, !dbg !1448

sw.bb101:                                         ; preds = %sw.bb101.sink.split, %sw.epilog, %sw.epilog, %sw.epilog
  %cmp103 = icmp eq i8 %2, 8, !dbg !1448
  br i1 %cmp103, label %land.lhs.true105, label %if.else115, !dbg !1450

land.lhs.true105:                                 ; preds = %sw.bb101
  %gcov_ctr279 = load i64, i64* getelementptr inbounds ([70 x i64], [70 x i64]* @__llvm_gcov_ctr.73, i64 0, i64 33), align 8, !dbg !1451
  %38 = add i64 %gcov_ctr279, 1, !dbg !1451
  store i64 %38, i64* getelementptr inbounds ([70 x i64], [70 x i64]* @__llvm_gcov_ctr.73, i64 0, i64 33), align 8, !dbg !1451
  %cmp107.not = icmp eq i16 %0, 0, !dbg !1452
  br i1 %cmp107.not, label %if.else115, label %land.lhs.true109, !dbg !1453

land.lhs.true109:                                 ; preds = %land.lhs.true105
  %gcov_ctr280 = load i64, i64* getelementptr inbounds ([70 x i64], [70 x i64]* @__llvm_gcov_ctr.73, i64 0, i64 34), align 16, !dbg !1454
  %39 = add i64 %gcov_ctr280, 1, !dbg !1454
  store i64 %39, i64* getelementptr inbounds ([70 x i64], [70 x i64]* @__llvm_gcov_ctr.73, i64 0, i64 34), align 16, !dbg !1454
  %add111 = add nuw nsw i32 %conv, 8, !dbg !1455
  %cmp112.not = icmp ult i32 %1, %add111, !dbg !1456
  br i1 %cmp112.not, label %if.else115, label %if.then114, !dbg !1457

if.then114:                                       ; preds = %land.lhs.true109
  %gcov_ctr281 = load i64, i64* getelementptr inbounds ([70 x i64], [70 x i64]* @__llvm_gcov_ctr.73, i64 0, i64 35), align 8, !dbg !1458
  %40 = add i64 %gcov_ctr281, 1, !dbg !1458
  store i64 %40, i64* getelementptr inbounds ([70 x i64], [70 x i64]* @__llvm_gcov_ctr.73, i64 0, i64 35), align 8, !dbg !1458
  tail call fastcc void @process_bin_update(%struct.conn* noundef nonnull %c, i8* noundef %extbuf) #15, !dbg !1460
  call void @llvm.dbg.value(metadata i32 undef, metadata !1316, metadata !DIExpression()), !dbg !1320
  br label %cleanup, !dbg !1412

if.else115:                                       ; preds = %land.lhs.true109, %land.lhs.true105, %sw.bb101
  %gcov_ctr282 = load i64, i64* getelementptr inbounds ([70 x i64], [70 x i64]* @__llvm_gcov_ctr.73, i64 0, i64 36), align 16, !dbg !1461
  %41 = add i64 %gcov_ctr282, 1, !dbg !1461
  store i64 %41, i64* getelementptr inbounds ([70 x i64], [70 x i64]* @__llvm_gcov_ctr.73, i64 0, i64 36), align 16, !dbg !1461
  call void @llvm.dbg.value(metadata i32 undef, metadata !1316, metadata !DIExpression()), !dbg !1320
  br label %if.then236, !dbg !1412

sw.bb117.sink.split:                              ; preds = %sw.bb44, %sw.bb42
  %.sink456 = phi i16 [ 0, %sw.bb42 ], [ 12, %sw.bb44 ]
  store i16 %.sink456, i16* %cmd, align 8, !dbg !1447, !tbaa !793
  br label %sw.bb117, !dbg !1463

sw.bb117:                                         ; preds = %sw.bb117.sink.split, %sw.epilog, %sw.epilog, %sw.epilog, %sw.epilog
  %cmp119 = icmp eq i8 %2, 0, !dbg !1463
  br i1 %cmp119, label %land.lhs.true121, label %if.then236, !dbg !1465

land.lhs.true121:                                 ; preds = %sw.bb117
  %gcov_ctr283 = load i64, i64* getelementptr inbounds ([70 x i64], [70 x i64]* @__llvm_gcov_ctr.73, i64 0, i64 37), align 8, !dbg !1466
  %42 = add i64 %gcov_ctr283, 1, !dbg !1466
  store i64 %42, i64* getelementptr inbounds ([70 x i64], [70 x i64]* @__llvm_gcov_ctr.73, i64 0, i64 37), align 8, !dbg !1466
  %cmp123 = icmp eq i32 %1, %conv, !dbg !1467
  br i1 %cmp123, label %land.lhs.true125, label %if.then236, !dbg !1468

land.lhs.true125:                                 ; preds = %land.lhs.true121
  %gcov_ctr284 = load i64, i64* getelementptr inbounds ([70 x i64], [70 x i64]* @__llvm_gcov_ctr.73, i64 0, i64 38), align 16, !dbg !1469
  %43 = add i64 %gcov_ctr284, 1, !dbg !1469
  store i64 %43, i64* getelementptr inbounds ([70 x i64], [70 x i64]* @__llvm_gcov_ctr.73, i64 0, i64 38), align 16, !dbg !1469
  %cmp127.not = icmp eq i16 %0, 0, !dbg !1470
  br i1 %cmp127.not, label %if.then236, label %if.then129, !dbg !1471

if.then129:                                       ; preds = %land.lhs.true125
  %gcov_ctr285 = load i64, i64* getelementptr inbounds ([70 x i64], [70 x i64]* @__llvm_gcov_ctr.73, i64 0, i64 39), align 8, !dbg !1472
  %44 = add i64 %gcov_ctr285, 1, !dbg !1472
  store i64 %44, i64* getelementptr inbounds ([70 x i64], [70 x i64]* @__llvm_gcov_ctr.73, i64 0, i64 39), align 8, !dbg !1472
  tail call fastcc void @process_bin_get_or_touch(%struct.conn* noundef nonnull %c, i8* noundef %extbuf) #15, !dbg !1474
  call void @llvm.dbg.value(metadata i32 undef, metadata !1316, metadata !DIExpression()), !dbg !1320
  br label %cleanup, !dbg !1412

sw.bb132:                                         ; preds = %sw.epilog.thread452, %sw.epilog
  %cmp134.not = icmp eq i16 %0, 0, !dbg !1475
  br i1 %cmp134.not, label %if.else145, label %land.lhs.true136, !dbg !1477

land.lhs.true136:                                 ; preds = %sw.bb132
  %gcov_ctr286 = load i64, i64* getelementptr inbounds ([70 x i64], [70 x i64]* @__llvm_gcov_ctr.73, i64 0, i64 40), align 16, !dbg !1478
  %45 = add i64 %gcov_ctr286, 1, !dbg !1478
  store i64 %45, i64* getelementptr inbounds ([70 x i64], [70 x i64]* @__llvm_gcov_ctr.73, i64 0, i64 40), align 16, !dbg !1478
  %cmp138 = icmp eq i8 %2, 0, !dbg !1479
  br i1 %cmp138, label %land.lhs.true140, label %if.else145, !dbg !1480

land.lhs.true140:                                 ; preds = %land.lhs.true136
  %gcov_ctr287 = load i64, i64* getelementptr inbounds ([70 x i64], [70 x i64]* @__llvm_gcov_ctr.73, i64 0, i64 41), align 8, !dbg !1481
  %46 = add i64 %gcov_ctr287, 1, !dbg !1481
  store i64 %46, i64* getelementptr inbounds ([70 x i64], [70 x i64]* @__llvm_gcov_ctr.73, i64 0, i64 41), align 8, !dbg !1481
  %cmp142 = icmp eq i32 %1, %conv, !dbg !1482
  br i1 %cmp142, label %if.then144, label %if.else145, !dbg !1483

if.then144:                                       ; preds = %land.lhs.true140
  %gcov_ctr288 = load i64, i64* getelementptr inbounds ([70 x i64], [70 x i64]* @__llvm_gcov_ctr.73, i64 0, i64 42), align 16, !dbg !1484
  %47 = add i64 %gcov_ctr288, 1, !dbg !1484
  store i64 %47, i64* getelementptr inbounds ([70 x i64], [70 x i64]* @__llvm_gcov_ctr.73, i64 0, i64 42), align 16, !dbg !1484
  tail call fastcc void @process_bin_delete(%struct.conn* noundef nonnull %c) #15, !dbg !1486
  call void @llvm.dbg.value(metadata i32 undef, metadata !1316, metadata !DIExpression()), !dbg !1320
  br label %cleanup, !dbg !1412

if.else145:                                       ; preds = %land.lhs.true140, %land.lhs.true136, %sw.bb132
  %gcov_ctr289 = load i64, i64* getelementptr inbounds ([70 x i64], [70 x i64]* @__llvm_gcov_ctr.73, i64 0, i64 43), align 8, !dbg !1487
  %48 = add i64 %gcov_ctr289, 1, !dbg !1487
  store i64 %48, i64* getelementptr inbounds ([70 x i64], [70 x i64]* @__llvm_gcov_ctr.73, i64 0, i64 43), align 8, !dbg !1487
  call void @llvm.dbg.value(metadata i32 undef, metadata !1316, metadata !DIExpression()), !dbg !1320
  br label %if.then236, !dbg !1412

sw.bb147.sink.split:                              ; preds = %sw.bb32, %sw.bb30
  %.sink457 = phi i16 [ 5, %sw.bb30 ], [ 6, %sw.bb32 ]
  store i16 %.sink457, i16* %cmd, align 8, !dbg !1447, !tbaa !793
  br label %sw.bb147, !dbg !1489

sw.bb147:                                         ; preds = %sw.bb147.sink.split, %sw.epilog, %sw.epilog
  %cmp149.not = icmp eq i16 %0, 0, !dbg !1489
  br i1 %cmp149.not, label %if.else162, label %land.lhs.true151, !dbg !1491

land.lhs.true151:                                 ; preds = %sw.bb147
  %gcov_ctr290 = load i64, i64* getelementptr inbounds ([70 x i64], [70 x i64]* @__llvm_gcov_ctr.73, i64 0, i64 44), align 16, !dbg !1492
  %49 = add i64 %gcov_ctr290, 1, !dbg !1492
  store i64 %49, i64* getelementptr inbounds ([70 x i64], [70 x i64]* @__llvm_gcov_ctr.73, i64 0, i64 44), align 16, !dbg !1492
  %cmp153 = icmp eq i8 %2, 20, !dbg !1493
  br i1 %cmp153, label %land.lhs.true155, label %if.else162, !dbg !1494

land.lhs.true155:                                 ; preds = %land.lhs.true151
  %gcov_ctr291 = load i64, i64* getelementptr inbounds ([70 x i64], [70 x i64]* @__llvm_gcov_ctr.73, i64 0, i64 45), align 8, !dbg !1495
  %50 = add i64 %gcov_ctr291, 1, !dbg !1495
  store i64 %50, i64* getelementptr inbounds ([70 x i64], [70 x i64]* @__llvm_gcov_ctr.73, i64 0, i64 45), align 8, !dbg !1495
  %cmp159 = icmp eq i32 %1, %add, !dbg !1496
  br i1 %cmp159, label %if.then161, label %if.else162, !dbg !1497

if.then161:                                       ; preds = %land.lhs.true155
  %gcov_ctr292 = load i64, i64* getelementptr inbounds ([70 x i64], [70 x i64]* @__llvm_gcov_ctr.73, i64 0, i64 46), align 16, !dbg !1498
  %51 = add i64 %gcov_ctr292, 1, !dbg !1498
  store i64 %51, i64* getelementptr inbounds ([70 x i64], [70 x i64]* @__llvm_gcov_ctr.73, i64 0, i64 46), align 16, !dbg !1498
  tail call fastcc void @complete_incr_bin(%struct.conn* noundef nonnull %c, i8* noundef %extbuf) #15, !dbg !1500
  call void @llvm.dbg.value(metadata i32 undef, metadata !1316, metadata !DIExpression()), !dbg !1320
  br label %cleanup, !dbg !1412

if.else162:                                       ; preds = %land.lhs.true155, %land.lhs.true151, %sw.bb147
  %gcov_ctr293 = load i64, i64* getelementptr inbounds ([70 x i64], [70 x i64]* @__llvm_gcov_ctr.73, i64 0, i64 47), align 8, !dbg !1501
  %52 = add i64 %gcov_ctr293, 1, !dbg !1501
  store i64 %52, i64* getelementptr inbounds ([70 x i64], [70 x i64]* @__llvm_gcov_ctr.73, i64 0, i64 47), align 8, !dbg !1501
  call void @llvm.dbg.value(metadata i32 undef, metadata !1316, metadata !DIExpression()), !dbg !1320
  br label %if.then236, !dbg !1412

sw.bb164.sink.split:                              ; preds = %sw.bb40, %sw.bb38
  %.sink458 = phi i16 [ 14, %sw.bb38 ], [ 15, %sw.bb40 ]
  store i16 %.sink458, i16* %cmd, align 8, !dbg !1447, !tbaa !793
  br label %sw.bb164, !dbg !1503

sw.bb164:                                         ; preds = %sw.bb164.sink.split, %sw.epilog, %sw.epilog
  %cmp166.not = icmp eq i16 %0, 0, !dbg !1503
  br i1 %cmp166.not, label %if.else173, label %land.lhs.true168, !dbg !1505

land.lhs.true168:                                 ; preds = %sw.bb164
  %gcov_ctr294 = load i64, i64* getelementptr inbounds ([70 x i64], [70 x i64]* @__llvm_gcov_ctr.73, i64 0, i64 48), align 16, !dbg !1506
  %53 = add i64 %gcov_ctr294, 1, !dbg !1506
  store i64 %53, i64* getelementptr inbounds ([70 x i64], [70 x i64]* @__llvm_gcov_ctr.73, i64 0, i64 48), align 16, !dbg !1506
  %cmp170 = icmp eq i8 %2, 0, !dbg !1507
  br i1 %cmp170, label %if.then172, label %if.else173, !dbg !1508

if.then172:                                       ; preds = %land.lhs.true168
  %gcov_ctr295 = load i64, i64* getelementptr inbounds ([70 x i64], [70 x i64]* @__llvm_gcov_ctr.73, i64 0, i64 49), align 8, !dbg !1509
  %54 = add i64 %gcov_ctr295, 1, !dbg !1509
  store i64 %54, i64* getelementptr inbounds ([70 x i64], [70 x i64]* @__llvm_gcov_ctr.73, i64 0, i64 49), align 8, !dbg !1509
  tail call fastcc void @process_bin_append_prepend(%struct.conn* noundef nonnull %c) #15, !dbg !1511
  call void @llvm.dbg.value(metadata i32 undef, metadata !1316, metadata !DIExpression()), !dbg !1320
  br label %cleanup, !dbg !1412

if.else173:                                       ; preds = %land.lhs.true168, %sw.bb164
  %gcov_ctr296 = load i64, i64* getelementptr inbounds ([70 x i64], [70 x i64]* @__llvm_gcov_ctr.73, i64 0, i64 50), align 16, !dbg !1512
  %55 = add i64 %gcov_ctr296, 1, !dbg !1512
  store i64 %55, i64* getelementptr inbounds ([70 x i64], [70 x i64]* @__llvm_gcov_ctr.73, i64 0, i64 50), align 16, !dbg !1512
  call void @llvm.dbg.value(metadata i32 undef, metadata !1316, metadata !DIExpression()), !dbg !1320
  br label %if.then236, !dbg !1412

sw.bb175:                                         ; preds = %sw.epilog
  %cmp177 = icmp eq i8 %2, 0, !dbg !1514
  br i1 %cmp177, label %if.then179, label %if.else180, !dbg !1516

if.then179:                                       ; preds = %sw.bb175
  %gcov_ctr298 = load i64, i64* getelementptr inbounds ([70 x i64], [70 x i64]* @__llvm_gcov_ctr.73, i64 0, i64 52), align 16, !dbg !1517
  %56 = add i64 %gcov_ctr298, 1, !dbg !1517
  store i64 %56, i64* getelementptr inbounds ([70 x i64], [70 x i64]* @__llvm_gcov_ctr.73, i64 0, i64 52), align 16, !dbg !1517
  tail call fastcc void @process_bin_stat(%struct.conn* noundef nonnull %c) #15, !dbg !1519
  call void @llvm.dbg.value(metadata i32 undef, metadata !1316, metadata !DIExpression()), !dbg !1320
  br label %cleanup, !dbg !1412

if.else180:                                       ; preds = %sw.bb175
  %gcov_ctr297 = load i64, i64* getelementptr inbounds ([70 x i64], [70 x i64]* @__llvm_gcov_ctr.73, i64 0, i64 51), align 8, !dbg !1520
  %57 = add i64 %gcov_ctr297, 1, !dbg !1520
  store i64 %57, i64* getelementptr inbounds ([70 x i64], [70 x i64]* @__llvm_gcov_ctr.73, i64 0, i64 51), align 8, !dbg !1520
  call void @llvm.dbg.value(metadata i32 undef, metadata !1316, metadata !DIExpression()), !dbg !1320
  br label %if.then236, !dbg !1412

sw.bb182:                                         ; preds = %sw.epilog.thread454, %sw.epilog
  %cmp184 = icmp eq i16 %0, 0, !dbg !1522
  br i1 %cmp184, label %land.lhs.true186, label %if.else195, !dbg !1524

land.lhs.true186:                                 ; preds = %sw.bb182
  %gcov_ctr299 = load i64, i64* getelementptr inbounds ([70 x i64], [70 x i64]* @__llvm_gcov_ctr.73, i64 0, i64 53), align 8, !dbg !1525
  %58 = add i64 %gcov_ctr299, 1, !dbg !1525
  store i64 %58, i64* getelementptr inbounds ([70 x i64], [70 x i64]* @__llvm_gcov_ctr.73, i64 0, i64 53), align 8, !dbg !1525
  %cmp188 = icmp eq i8 %2, 0, !dbg !1526
  br i1 %cmp188, label %land.lhs.true190, label %if.else195, !dbg !1527

land.lhs.true190:                                 ; preds = %land.lhs.true186
  %gcov_ctr300 = load i64, i64* getelementptr inbounds ([70 x i64], [70 x i64]* @__llvm_gcov_ctr.73, i64 0, i64 54), align 16, !dbg !1528
  %59 = add i64 %gcov_ctr300, 1, !dbg !1528
  store i64 %59, i64* getelementptr inbounds ([70 x i64], [70 x i64]* @__llvm_gcov_ctr.73, i64 0, i64 54), align 16, !dbg !1528
  %cmp191 = icmp eq i32 %1, 0, !dbg !1529
  br i1 %cmp191, label %if.then193, label %if.else195, !dbg !1530

if.then193:                                       ; preds = %land.lhs.true190
  %gcov_ctr301 = load i64, i64* getelementptr inbounds ([70 x i64], [70 x i64]* @__llvm_gcov_ctr.73, i64 0, i64 55), align 8, !dbg !1531
  %60 = add i64 %gcov_ctr301, 1, !dbg !1531
  store i64 %60, i64* getelementptr inbounds ([70 x i64], [70 x i64]* @__llvm_gcov_ctr.73, i64 0, i64 55), align 8, !dbg !1531
  tail call fastcc void @write_bin_response(%struct.conn* noundef nonnull %c, i8* noundef null, i32 noundef 0) #15, !dbg !1533
  tail call void @conn_set_state(%struct.conn* noundef nonnull %c, i32 noundef 9) #16, !dbg !1534
  %close_after_write194 = getelementptr inbounds %struct.conn, %struct.conn* %c, i64 0, i32 6, !dbg !1535
  store i8 1, i8* %close_after_write194, align 8, !dbg !1536, !tbaa !1338
  %close_reason = getelementptr inbounds %struct.conn, %struct.conn* %c, i64 0, i32 30, !dbg !1537
  store i32 1, i32* %close_reason, align 4, !dbg !1538, !tbaa !1539
  call void @llvm.dbg.value(metadata i32 undef, metadata !1316, metadata !DIExpression()), !dbg !1320
  br label %cleanup, !dbg !1412

if.else195:                                       ; preds = %land.lhs.true190, %land.lhs.true186, %sw.bb182
  %gcov_ctr302 = load i64, i64* getelementptr inbounds ([70 x i64], [70 x i64]* @__llvm_gcov_ctr.73, i64 0, i64 56), align 16, !dbg !1540
  %61 = add i64 %gcov_ctr302, 1, !dbg !1540
  store i64 %61, i64* getelementptr inbounds ([70 x i64], [70 x i64]* @__llvm_gcov_ctr.73, i64 0, i64 56), align 16, !dbg !1540
  call void @llvm.dbg.value(metadata i32 undef, metadata !1316, metadata !DIExpression()), !dbg !1320
  br label %if.then236, !dbg !1412

sw.bb197:                                         ; preds = %sw.epilog
  %cmp199 = icmp eq i8 %2, 0, !dbg !1542
  br i1 %cmp199, label %land.lhs.true201, label %if.else209, !dbg !1544

land.lhs.true201:                                 ; preds = %sw.bb197
  %gcov_ctr303 = load i64, i64* getelementptr inbounds ([70 x i64], [70 x i64]* @__llvm_gcov_ctr.73, i64 0, i64 57), align 8, !dbg !1545
  %62 = add i64 %gcov_ctr303, 1, !dbg !1545
  store i64 %62, i64* getelementptr inbounds ([70 x i64], [70 x i64]* @__llvm_gcov_ctr.73, i64 0, i64 57), align 8, !dbg !1545
  %cmp203 = icmp eq i16 %0, 0, !dbg !1546
  br i1 %cmp203, label %land.lhs.true205, label %if.else209, !dbg !1547

land.lhs.true205:                                 ; preds = %land.lhs.true201
  %gcov_ctr304 = load i64, i64* getelementptr inbounds ([70 x i64], [70 x i64]* @__llvm_gcov_ctr.73, i64 0, i64 58), align 16, !dbg !1548
  %63 = add i64 %gcov_ctr304, 1, !dbg !1548
  store i64 %63, i64* getelementptr inbounds ([70 x i64], [70 x i64]* @__llvm_gcov_ctr.73, i64 0, i64 58), align 16, !dbg !1548
  %cmp206 = icmp eq i32 %1, 0, !dbg !1549
  br i1 %cmp206, label %if.then208, label %if.else209, !dbg !1550

if.then208:                                       ; preds = %land.lhs.true205
  %gcov_ctr305 = load i64, i64* getelementptr inbounds ([70 x i64], [70 x i64]* @__llvm_gcov_ctr.73, i64 0, i64 59), align 8, !dbg !1551
  %64 = add i64 %gcov_ctr305, 1, !dbg !1551
  store i64 %64, i64* getelementptr inbounds ([70 x i64], [70 x i64]* @__llvm_gcov_ctr.73, i64 0, i64 59), align 8, !dbg !1551
  tail call fastcc void @bin_list_sasl_mechs(%struct.conn* noundef nonnull %c) #15, !dbg !1553
  call void @llvm.dbg.value(metadata i32 undef, metadata !1316, metadata !DIExpression()), !dbg !1320
  br label %cleanup, !dbg !1412

if.else209:                                       ; preds = %land.lhs.true205, %land.lhs.true201, %sw.bb197
  %gcov_ctr306 = load i64, i64* getelementptr inbounds ([70 x i64], [70 x i64]* @__llvm_gcov_ctr.73, i64 0, i64 60), align 16, !dbg !1554
  %65 = add i64 %gcov_ctr306, 1, !dbg !1554
  store i64 %65, i64* getelementptr inbounds ([70 x i64], [70 x i64]* @__llvm_gcov_ctr.73, i64 0, i64 60), align 16, !dbg !1554
  call void @llvm.dbg.value(metadata i32 undef, metadata !1316, metadata !DIExpression()), !dbg !1320
  br label %if.then236, !dbg !1412

sw.bb211:                                         ; preds = %sw.epilog, %sw.epilog
  %cmp213 = icmp eq i8 %2, 0, !dbg !1556
  br i1 %cmp213, label %land.lhs.true215, label %if.else220, !dbg !1558

land.lhs.true215:                                 ; preds = %sw.bb211
  %gcov_ctr307 = load i64, i64* getelementptr inbounds ([70 x i64], [70 x i64]* @__llvm_gcov_ctr.73, i64 0, i64 61), align 8, !dbg !1559
  %66 = add i64 %gcov_ctr307, 1, !dbg !1559
  store i64 %66, i64* getelementptr inbounds ([70 x i64], [70 x i64]* @__llvm_gcov_ctr.73, i64 0, i64 61), align 8, !dbg !1559
  %cmp217.not = icmp eq i16 %0, 0, !dbg !1560
  br i1 %cmp217.not, label %if.else220, label %if.then219, !dbg !1561

if.then219:                                       ; preds = %land.lhs.true215
  %gcov_ctr308 = load i64, i64* getelementptr inbounds ([70 x i64], [70 x i64]* @__llvm_gcov_ctr.73, i64 0, i64 62), align 16, !dbg !1562
  %67 = add i64 %gcov_ctr308, 1, !dbg !1562
  store i64 %67, i64* getelementptr inbounds ([70 x i64], [70 x i64]* @__llvm_gcov_ctr.73, i64 0, i64 62), align 16, !dbg !1562
  tail call fastcc void @process_bin_sasl_auth(%struct.conn* noundef nonnull %c) #15, !dbg !1564
  call void @llvm.dbg.value(metadata i32 undef, metadata !1316, metadata !DIExpression()), !dbg !1320
  br label %cleanup, !dbg !1412

if.else220:                                       ; preds = %land.lhs.true215, %sw.bb211
  %gcov_ctr309 = load i64, i64* getelementptr inbounds ([70 x i64], [70 x i64]* @__llvm_gcov_ctr.73, i64 0, i64 63), align 8, !dbg !1565
  %68 = add i64 %gcov_ctr309, 1, !dbg !1565
  store i64 %68, i64* getelementptr inbounds ([70 x i64], [70 x i64]* @__llvm_gcov_ctr.73, i64 0, i64 63), align 8, !dbg !1565
  call void @llvm.dbg.value(metadata i32 undef, metadata !1316, metadata !DIExpression()), !dbg !1320
  br label %if.then236, !dbg !1412

sw.bb222.sink.split:                              ; preds = %sw.bb48, %sw.bb46
  %.sink459 = phi i16 [ 29, %sw.bb46 ], [ 35, %sw.bb48 ]
  store i16 %.sink459, i16* %cmd, align 8, !dbg !1447, !tbaa !793
  br label %sw.bb222, !dbg !1567

sw.bb222:                                         ; preds = %sw.bb222.sink.split, %sw.epilog, %sw.epilog, %sw.epilog, %sw.epilog, %sw.epilog
  %cmp224 = icmp eq i8 %2, 4, !dbg !1567
  br i1 %cmp224, label %land.lhs.true226, label %if.else231, !dbg !1569

land.lhs.true226:                                 ; preds = %sw.bb222
  %gcov_ctr310 = load i64, i64* getelementptr inbounds ([70 x i64], [70 x i64]* @__llvm_gcov_ctr.73, i64 0, i64 64), align 16, !dbg !1570
  %69 = add i64 %gcov_ctr310, 1, !dbg !1570
  store i64 %69, i64* getelementptr inbounds ([70 x i64], [70 x i64]* @__llvm_gcov_ctr.73, i64 0, i64 64), align 16, !dbg !1570
  %cmp228.not = icmp eq i16 %0, 0, !dbg !1571
  br i1 %cmp228.not, label %if.else231, label %if.then230, !dbg !1572

if.then230:                                       ; preds = %land.lhs.true226
  %gcov_ctr311 = load i64, i64* getelementptr inbounds ([70 x i64], [70 x i64]* @__llvm_gcov_ctr.73, i64 0, i64 65), align 8, !dbg !1573
  %70 = add i64 %gcov_ctr311, 1, !dbg !1573
  store i64 %70, i64* getelementptr inbounds ([70 x i64], [70 x i64]* @__llvm_gcov_ctr.73, i64 0, i64 65), align 8, !dbg !1573
  tail call fastcc void @process_bin_get_or_touch(%struct.conn* noundef nonnull %c, i8* noundef %extbuf) #15, !dbg !1575
  call void @llvm.dbg.value(metadata i32 undef, metadata !1316, metadata !DIExpression()), !dbg !1320
  br label %cleanup, !dbg !1412

if.else231:                                       ; preds = %land.lhs.true226, %sw.bb222
  %gcov_ctr312 = load i64, i64* getelementptr inbounds ([70 x i64], [70 x i64]* @__llvm_gcov_ctr.73, i64 0, i64 66), align 16, !dbg !1576
  %71 = add i64 %gcov_ctr312, 1, !dbg !1576
  store i64 %71, i64* getelementptr inbounds ([70 x i64], [70 x i64]* @__llvm_gcov_ctr.73, i64 0, i64 66), align 16, !dbg !1576
  call void @llvm.dbg.value(metadata i32 undef, metadata !1316, metadata !DIExpression()), !dbg !1320
  br label %if.then236, !dbg !1412

sw.default233:                                    ; preds = %sw.epilog
  %gcov_ctr313 = load i64, i64* getelementptr inbounds ([70 x i64], [70 x i64]* @__llvm_gcov_ctr.73, i64 0, i64 67), align 8, !dbg !1578
  %72 = add i64 %gcov_ctr313, 1, !dbg !1578
  store i64 %72, i64* getelementptr inbounds ([70 x i64], [70 x i64]* @__llvm_gcov_ctr.73, i64 0, i64 67), align 8, !dbg !1578
  tail call void @write_bin_error(%struct.conn* noundef nonnull %c, i32 noundef 129, i8* noundef null, i32 noundef %1) #15, !dbg !1579
  call void @llvm.dbg.value(metadata i32 undef, metadata !1316, metadata !DIExpression()), !dbg !1320
  br label %cleanup, !dbg !1412

if.then236:                                       ; preds = %land.lhs.true125, %land.lhs.true121, %sw.bb117, %if.else, %if.else85, %if.else99, %if.else115, %if.else145, %if.else162, %if.else173, %if.else180, %if.else195, %if.else209, %if.else220, %if.else231
  %gcov_ctr314 = load i64, i64* getelementptr inbounds ([70 x i64], [70 x i64]* @__llvm_gcov_ctr.73, i64 0, i64 68), align 16, !dbg !1580
  %73 = add i64 %gcov_ctr314, 1, !dbg !1580
  store i64 %73, i64* getelementptr inbounds ([70 x i64], [70 x i64]* @__llvm_gcov_ctr.73, i64 0, i64 68), align 16, !dbg !1580
  tail call fastcc void @handle_binary_protocol_error(%struct.conn* noundef nonnull %c) #15, !dbg !1582
  br label %cleanup, !dbg !1582

cleanup:                                          ; preds = %if.then236, %if.then230, %if.then219, %if.then208, %if.then193, %if.then179, %if.then172, %if.then161, %if.then144, %if.then129, %if.then114, %if.then98, %if.then84, %if.then64, %sw.default233, %if.then20, %if.then14, %if.then
  ret void, !dbg !1583
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @write_bin_error(%struct.conn* noundef %c, i32 noundef %err, i8* noundef %errstr, i32 noundef %swallow) local_unnamed_addr #0 !dbg !1584 {
entry:
  call void @llvm.dbg.value(metadata %struct.conn* %c, metadata !1588, metadata !DIExpression()), !dbg !1593
  call void @llvm.dbg.value(metadata i32 %err, metadata !1589, metadata !DIExpression()), !dbg !1593
  call void @llvm.dbg.value(metadata i8* %errstr, metadata !1590, metadata !DIExpression()), !dbg !1593
  call void @llvm.dbg.value(metadata i32 %swallow, metadata !1591, metadata !DIExpression()), !dbg !1593
  %tobool.not = icmp eq i8* %errstr, null, !dbg !1594
  br i1 %tobool.not, label %if.then, label %if.end, !dbg !1596

if.then:                                          ; preds = %entry
  switch i32 %err, label %sw.default [
    i32 130, label %sw.bb
    i32 129, label %sw.bb1
    i32 1, label %sw.bb2
    i32 4, label %sw.bb3
    i32 2, label %sw.bb4
    i32 3, label %sw.bb5
    i32 6, label %sw.bb6
    i32 5, label %sw.bb7
    i32 32, label %sw.bb8
  ], !dbg !1597

sw.bb:                                            ; preds = %if.then
  %gcov_ctr = load i64, i64* getelementptr inbounds ([14 x i64], [14 x i64]* @__llvm_gcov_ctr.74, i64 0, i64 0), align 16, !dbg !1599
  %0 = add i64 %gcov_ctr, 1, !dbg !1599
  store i64 %0, i64* getelementptr inbounds ([14 x i64], [14 x i64]* @__llvm_gcov_ctr.74, i64 0, i64 0), align 16, !dbg !1599
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i64 0, i64 0), metadata !1590, metadata !DIExpression()), !dbg !1593
  br label %if.end, !dbg !1601

sw.bb1:                                           ; preds = %if.then
  %gcov_ctr22 = load i64, i64* getelementptr inbounds ([14 x i64], [14 x i64]* @__llvm_gcov_ctr.74, i64 0, i64 1), align 8, !dbg !1602
  %1 = add i64 %gcov_ctr22, 1, !dbg !1602
  store i64 %1, i64* getelementptr inbounds ([14 x i64], [14 x i64]* @__llvm_gcov_ctr.74, i64 0, i64 1), align 8, !dbg !1602
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i64 0, i64 0), metadata !1590, metadata !DIExpression()), !dbg !1593
  br label %if.end, !dbg !1603

sw.bb2:                                           ; preds = %if.then
  %gcov_ctr23 = load i64, i64* getelementptr inbounds ([14 x i64], [14 x i64]* @__llvm_gcov_ctr.74, i64 0, i64 2), align 16, !dbg !1604
  %2 = add i64 %gcov_ctr23, 1, !dbg !1604
  store i64 %2, i64* getelementptr inbounds ([14 x i64], [14 x i64]* @__llvm_gcov_ctr.74, i64 0, i64 2), align 16, !dbg !1604
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i64 0, i64 0), metadata !1590, metadata !DIExpression()), !dbg !1593
  br label %if.end, !dbg !1605

sw.bb3:                                           ; preds = %if.then
  %gcov_ctr24 = load i64, i64* getelementptr inbounds ([14 x i64], [14 x i64]* @__llvm_gcov_ctr.74, i64 0, i64 3), align 8, !dbg !1606
  %3 = add i64 %gcov_ctr24, 1, !dbg !1606
  store i64 %3, i64* getelementptr inbounds ([14 x i64], [14 x i64]* @__llvm_gcov_ctr.74, i64 0, i64 3), align 8, !dbg !1606
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.13, i64 0, i64 0), metadata !1590, metadata !DIExpression()), !dbg !1593
  br label %if.end, !dbg !1607

sw.bb4:                                           ; preds = %if.then
  %gcov_ctr25 = load i64, i64* getelementptr inbounds ([14 x i64], [14 x i64]* @__llvm_gcov_ctr.74, i64 0, i64 4), align 16, !dbg !1608
  %4 = add i64 %gcov_ctr25, 1, !dbg !1608
  store i64 %4, i64* getelementptr inbounds ([14 x i64], [14 x i64]* @__llvm_gcov_ctr.74, i64 0, i64 4), align 16, !dbg !1608
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14, i64 0, i64 0), metadata !1590, metadata !DIExpression()), !dbg !1593
  br label %if.end, !dbg !1609

sw.bb5:                                           ; preds = %if.then
  %gcov_ctr26 = load i64, i64* getelementptr inbounds ([14 x i64], [14 x i64]* @__llvm_gcov_ctr.74, i64 0, i64 5), align 8, !dbg !1610
  %5 = add i64 %gcov_ctr26, 1, !dbg !1610
  store i64 %5, i64* getelementptr inbounds ([14 x i64], [14 x i64]* @__llvm_gcov_ctr.74, i64 0, i64 5), align 8, !dbg !1610
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.15, i64 0, i64 0), metadata !1590, metadata !DIExpression()), !dbg !1593
  br label %if.end, !dbg !1611

sw.bb6:                                           ; preds = %if.then
  %gcov_ctr27 = load i64, i64* getelementptr inbounds ([14 x i64], [14 x i64]* @__llvm_gcov_ctr.74, i64 0, i64 6), align 16, !dbg !1612
  %6 = add i64 %gcov_ctr27, 1, !dbg !1612
  store i64 %6, i64* getelementptr inbounds ([14 x i64], [14 x i64]* @__llvm_gcov_ctr.74, i64 0, i64 6), align 16, !dbg !1612
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.16, i64 0, i64 0), metadata !1590, metadata !DIExpression()), !dbg !1593
  br label %if.end, !dbg !1613

sw.bb7:                                           ; preds = %if.then
  %gcov_ctr28 = load i64, i64* getelementptr inbounds ([14 x i64], [14 x i64]* @__llvm_gcov_ctr.74, i64 0, i64 7), align 8, !dbg !1614
  %7 = add i64 %gcov_ctr28, 1, !dbg !1614
  store i64 %7, i64* getelementptr inbounds ([14 x i64], [14 x i64]* @__llvm_gcov_ctr.74, i64 0, i64 7), align 8, !dbg !1614
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.17, i64 0, i64 0), metadata !1590, metadata !DIExpression()), !dbg !1593
  br label %if.end, !dbg !1615

sw.bb8:                                           ; preds = %if.then
  %gcov_ctr29 = load i64, i64* getelementptr inbounds ([14 x i64], [14 x i64]* @__llvm_gcov_ctr.74, i64 0, i64 8), align 16, !dbg !1616
  %8 = add i64 %gcov_ctr29, 1, !dbg !1616
  store i64 %8, i64* getelementptr inbounds ([14 x i64], [14 x i64]* @__llvm_gcov_ctr.74, i64 0, i64 8), align 16, !dbg !1616
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.18, i64 0, i64 0), metadata !1590, metadata !DIExpression()), !dbg !1593
  br label %if.end, !dbg !1617

sw.default:                                       ; preds = %if.then
  %gcov_ctr30 = load i64, i64* getelementptr inbounds ([14 x i64], [14 x i64]* @__llvm_gcov_ctr.74, i64 0, i64 9), align 8, !dbg !1618
  %9 = add i64 %gcov_ctr30, 1, !dbg !1618
  store i64 %9, i64* getelementptr inbounds ([14 x i64], [14 x i64]* @__llvm_gcov_ctr.74, i64 0, i64 9), align 8, !dbg !1618
  tail call void @__assert_fail(i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i64 0, i64 0), i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 noundef 213, i8* noundef getelementptr inbounds ([81 x i8], [81 x i8]* @__PRETTY_FUNCTION__.write_bin_error, i64 0, i64 0)) #14, !dbg !1618
  unreachable, !dbg !1618

if.end:                                           ; preds = %sw.bb, %sw.bb1, %sw.bb2, %sw.bb3, %sw.bb4, %sw.bb5, %sw.bb6, %sw.bb7, %sw.bb8, %entry
  %errstr.addr.0 = phi i8* [ %errstr, %entry ], [ getelementptr inbounds ([14 x i8], [14 x i8]* @.str.18, i64 0, i64 0), %sw.bb8 ], [ getelementptr inbounds ([12 x i8], [12 x i8]* @.str.17, i64 0, i64 0), %sw.bb7 ], [ getelementptr inbounds ([47 x i8], [47 x i8]* @.str.16, i64 0, i64 0), %sw.bb6 ], [ getelementptr inbounds ([11 x i8], [11 x i8]* @.str.15, i64 0, i64 0), %sw.bb5 ], [ getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14, i64 0, i64 0), %sw.bb4 ], [ getelementptr inbounds ([18 x i8], [18 x i8]* @.str.13, i64 0, i64 0), %sw.bb3 ], [ getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i64 0, i64 0), %sw.bb2 ], [ getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i64 0, i64 0), %sw.bb1 ], [ getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i64 0, i64 0), %sw.bb ]
  call void @llvm.dbg.value(metadata i8* %errstr.addr.0, metadata !1590, metadata !DIExpression()), !dbg !1593
  %10 = load i32, i32* getelementptr inbounds (%struct.settings, %struct.settings* @settings, i64 0, i32 5), align 8, !dbg !1621, !tbaa !997
  %cmp = icmp sgt i32 %10, 1, !dbg !1623
  br i1 %cmp, label %if.then9, label %if.end10, !dbg !1624

if.then9:                                         ; preds = %if.end
  %gcov_ctr31 = load i64, i64* getelementptr inbounds ([14 x i64], [14 x i64]* @__llvm_gcov_ctr.74, i64 0, i64 10), align 16, !dbg !1625
  %11 = add i64 %gcov_ctr31, 1, !dbg !1625
  store i64 %11, i64* getelementptr inbounds ([14 x i64], [14 x i64]* @__llvm_gcov_ctr.74, i64 0, i64 10), align 16, !dbg !1625
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1625, !tbaa !830
  %sfd = getelementptr inbounds %struct.conn, %struct.conn* %c, i64 0, i32 1, !dbg !1627
  %13 = load i32, i32* %sfd, align 8, !dbg !1627, !tbaa !1034
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %12, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.20, i64 0, i64 0), i32 noundef %13, i8* noundef %errstr.addr.0) #16, !dbg !1628
  br label %if.end10, !dbg !1629

if.end10:                                         ; preds = %if.then9, %if.end
  %call11 = tail call i64 @strlen(i8* noundef %errstr.addr.0) #18, !dbg !1630
  call void @llvm.dbg.value(metadata i64 %call11, metadata !1592, metadata !DIExpression()), !dbg !1593
  %conv = trunc i32 %err to i16, !dbg !1631
  %conv12 = trunc i64 %call11 to i32, !dbg !1632
  tail call fastcc void @add_bin_header(%struct.conn* noundef %c, i16 noundef zeroext %conv, i8 noundef zeroext 0, i16 noundef zeroext 0, i32 noundef %conv12) #15, !dbg !1633
  %cmp13.not = icmp eq i64 %call11, 0, !dbg !1634
  br i1 %cmp13.not, label %if.end17, label %if.then15, !dbg !1636

if.then15:                                        ; preds = %if.end10
  %gcov_ctr32 = load i64, i64* getelementptr inbounds ([14 x i64], [14 x i64]* @__llvm_gcov_ctr.74, i64 0, i64 11), align 8, !dbg !1637
  %14 = add i64 %gcov_ctr32, 1, !dbg !1637
  store i64 %14, i64* getelementptr inbounds ([14 x i64], [14 x i64]* @__llvm_gcov_ctr.74, i64 0, i64 11), align 8, !dbg !1637
  %resp = getelementptr inbounds %struct.conn, %struct.conn* %c, i64 0, i32 19, !dbg !1639
  %15 = load %struct._mc_resp*, %struct._mc_resp** %resp, align 8, !dbg !1639, !tbaa !1640
  tail call void @resp_add_iov(%struct._mc_resp* noundef %15, i8* noundef %errstr.addr.0, i32 noundef %conv12) #16, !dbg !1641
  br label %if.end17, !dbg !1642

if.end17:                                         ; preds = %if.then15, %if.end10
  %cmp18 = icmp sgt i32 %swallow, 0, !dbg !1643
  br i1 %cmp18, label %if.then20, label %if.else, !dbg !1645

if.then20:                                        ; preds = %if.end17
  %gcov_ctr33 = load i64, i64* getelementptr inbounds ([14 x i64], [14 x i64]* @__llvm_gcov_ctr.74, i64 0, i64 12), align 16, !dbg !1646
  %16 = add i64 %gcov_ctr33, 1, !dbg !1646
  store i64 %16, i64* getelementptr inbounds ([14 x i64], [14 x i64]* @__llvm_gcov_ctr.74, i64 0, i64 12), align 16, !dbg !1646
  %sbytes = getelementptr inbounds %struct.conn, %struct.conn* %c, i64 0, i32 24, !dbg !1648
  store i32 %swallow, i32* %sbytes, align 8, !dbg !1649, !tbaa !1650
  br label %if.end21, !dbg !1651

if.else:                                          ; preds = %if.end17
  %gcov_ctr34 = load i64, i64* getelementptr inbounds ([14 x i64], [14 x i64]* @__llvm_gcov_ctr.74, i64 0, i64 13), align 8, !dbg !1652
  %17 = add i64 %gcov_ctr34, 1, !dbg !1652
  store i64 %17, i64* getelementptr inbounds ([14 x i64], [14 x i64]* @__llvm_gcov_ctr.74, i64 0, i64 13), align 8, !dbg !1652
  br label %if.end21

if.end21:                                         ; preds = %if.else, %if.then20
  %.sink = phi i32 [ 9, %if.else ], [ 7, %if.then20 ]
  tail call void @conn_set_state(%struct.conn* noundef %c, i32 noundef %.sink) #16, !dbg !1654
  ret void, !dbg !1655
}

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare !dbg !1656 dso_local i64 @strlen(i8* noundef) local_unnamed_addr #7

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @add_bin_header(%struct.conn* noundef readonly %c, i16 noundef zeroext %err, i8 noundef zeroext %hdr_len, i16 noundef zeroext %key_len, i32 noundef %body_len) unnamed_addr #0 !dbg !1659 {
if.then:
  call void @llvm.dbg.value(metadata %struct.conn* %c, metadata !1663, metadata !DIExpression()), !dbg !1673
  call void @llvm.dbg.value(metadata i16 %err, metadata !1664, metadata !DIExpression()), !dbg !1673
  call void @llvm.dbg.value(metadata i8 %hdr_len, metadata !1665, metadata !DIExpression()), !dbg !1673
  call void @llvm.dbg.value(metadata i16 %key_len, metadata !1666, metadata !DIExpression()), !dbg !1673
  call void @llvm.dbg.value(metadata i32 %body_len, metadata !1667, metadata !DIExpression()), !dbg !1673
  %resp1 = getelementptr inbounds %struct.conn, %struct.conn* %c, i64 0, i32 19, !dbg !1674
  %0 = load %struct._mc_resp*, %struct._mc_resp** %resp1, align 8, !dbg !1674, !tbaa !1640
  call void @llvm.dbg.value(metadata %struct._mc_resp* %0, metadata !1669, metadata !DIExpression()), !dbg !1673
  %gcov_ctr = load i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @__llvm_gcov_ctr.75, i64 0, i64 0), align 16, !dbg !1675
  %1 = add i64 %gcov_ctr, 1, !dbg !1675
  store i64 %1, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @__llvm_gcov_ctr.75, i64 0, i64 0), align 16, !dbg !1675
  tail call void @resp_reset(%struct._mc_resp* noundef %0) #16, !dbg !1677
  %arraydecay = getelementptr inbounds %struct._mc_resp, %struct._mc_resp* %0, i64 0, i32 18, i64 0, !dbg !1678
  call void @llvm.dbg.value(metadata i8* %arraydecay, metadata !1668, metadata !DIExpression()), !dbg !1673
  store i8 -127, i8* %arraydecay, align 8, !dbg !1679, !tbaa !858
  %opcode = getelementptr inbounds %struct.conn, %struct.conn* %c, i64 0, i32 36, i32 0, i32 1, !dbg !1680
  %2 = load i8, i8* %opcode, align 1, !dbg !1680, !tbaa !858
  %3 = getelementptr inbounds %struct._mc_resp, %struct._mc_resp* %0, i64 0, i32 18, i64 1, !dbg !1681
  store i8 %2, i8* %3, align 1, !dbg !1682, !tbaa !858
  %call = tail call fastcc zeroext i16 @__bswap_16(i16 noundef zeroext %key_len) #15, !dbg !1683
  %keylen = getelementptr inbounds %struct._mc_resp, %struct._mc_resp* %0, i64 0, i32 18, i64 2, !dbg !1684
  %4 = bitcast i8* %keylen to i16*, !dbg !1684
  store i16 %call, i16* %4, align 2, !dbg !1685, !tbaa !858
  %5 = getelementptr inbounds %struct._mc_resp, %struct._mc_resp* %0, i64 0, i32 18, i64 4, !dbg !1686
  store i8 %hdr_len, i8* %5, align 4, !dbg !1687, !tbaa !858
  %6 = getelementptr inbounds %struct._mc_resp, %struct._mc_resp* %0, i64 0, i32 18, i64 5, !dbg !1688
  store i8 0, i8* %6, align 1, !dbg !1689, !tbaa !858
  %call7 = tail call fastcc zeroext i16 @__bswap_16(i16 noundef zeroext %err) #15, !dbg !1690
  %status = getelementptr inbounds %struct._mc_resp, %struct._mc_resp* %0, i64 0, i32 18, i64 6, !dbg !1691
  %7 = bitcast i8* %status to i16*, !dbg !1691
  store i16 %call7, i16* %7, align 2, !dbg !1692, !tbaa !858
  %call9 = tail call fastcc i32 @__bswap_32(i32 noundef %body_len) #15, !dbg !1693
  %bodylen = getelementptr inbounds %struct._mc_resp, %struct._mc_resp* %0, i64 0, i32 18, i64 8, !dbg !1694
  %8 = bitcast i8* %bodylen to i32*, !dbg !1694
  store i32 %call9, i32* %8, align 8, !dbg !1695, !tbaa !858
  %opaque = getelementptr inbounds %struct.conn, %struct.conn* %c, i64 0, i32 40, !dbg !1696
  %9 = load i32, i32* %opaque, align 4, !dbg !1696, !tbaa !1255
  %opaque12 = getelementptr inbounds %struct._mc_resp, %struct._mc_resp* %0, i64 0, i32 18, i64 12, !dbg !1697
  %10 = bitcast i8* %opaque12 to i32*, !dbg !1697
  store i32 %9, i32* %10, align 4, !dbg !1698, !tbaa !858
  %cas = getelementptr inbounds %struct.conn, %struct.conn* %c, i64 0, i32 37, !dbg !1699
  %11 = load i64, i64* %cas, align 8, !dbg !1699, !tbaa !1258
  %call13 = tail call i64 @htonll(i64 noundef %11) #16, !dbg !1700
  %cas15 = getelementptr inbounds %struct._mc_resp, %struct._mc_resp* %0, i64 0, i32 18, i64 16, !dbg !1701
  %12 = bitcast i8* %cas15 to i64*, !dbg !1701
  store i64 %call13, i64* %12, align 8, !dbg !1702, !tbaa !858
  %13 = load i32, i32* getelementptr inbounds (%struct.settings, %struct.settings* @settings, i64 0, i32 5), align 8, !dbg !1703, !tbaa !997
  %cmp = icmp sgt i32 %13, 1, !dbg !1704
  br i1 %cmp, label %if.then16, label %if.end29, !dbg !1705

if.then16:                                        ; preds = %if.then
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1706, !tbaa !830
  %sfd = getelementptr inbounds %struct.conn, %struct.conn* %c, i64 0, i32 1, !dbg !1707
  %15 = load i32, i32* %sfd, align 8, !dbg !1707, !tbaa !1034
  %call17 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %14, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.22, i64 0, i64 0), i32 noundef %15) #16, !dbg !1708
  call void @llvm.dbg.value(metadata i32 0, metadata !1670, metadata !DIExpression()), !dbg !1709
  br label %for.body, !dbg !1710

for.body:                                         ; preds = %if.then16, %if.end25
  %indvars.iv = phi i64 [ 0, %if.then16 ], [ %indvars.iv.next, %if.end25 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !1670, metadata !DIExpression()), !dbg !1709
  %rem66 = and i64 %indvars.iv, 3, !dbg !1712
  %cmp20 = icmp eq i64 %rem66, 0, !dbg !1712
  br i1 %cmp20, label %if.then22, label %if.end25, !dbg !1716

if.then22:                                        ; preds = %for.body
  %gcov_ctr34 = load i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @__llvm_gcov_ctr.75, i64 0, i64 2), align 16, !dbg !1717
  %16 = add i64 %gcov_ctr34, 1, !dbg !1717
  store i64 %16, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @__llvm_gcov_ctr.75, i64 0, i64 2), align 16, !dbg !1717
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1717, !tbaa !830
  %18 = load i32, i32* %sfd, align 8, !dbg !1719, !tbaa !1034
  %call24 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %17, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.23, i64 0, i64 0), i32 noundef %18) #16, !dbg !1720
  br label %if.end25, !dbg !1721

if.end25:                                         ; preds = %if.then22, %for.body
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1722, !tbaa !830
  %arrayidx = getelementptr inbounds %struct._mc_resp, %struct._mc_resp* %0, i64 0, i32 18, i64 %indvars.iv, !dbg !1723
  %20 = load i8, i8* %arrayidx, align 1, !dbg !1723, !tbaa !858
  %conv26 = zext i8 %20 to i32, !dbg !1723
  %call27 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %19, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), i32 noundef %conv26) #16, !dbg !1724
  %gcov_ctr35 = load i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @__llvm_gcov_ctr.75, i64 0, i64 3), align 8, !dbg !1725
  %21 = add i64 %gcov_ctr35, 1, !dbg !1725
  store i64 %21, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @__llvm_gcov_ctr.75, i64 0, i64 3), align 8, !dbg !1725
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !1725
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !1670, metadata !DIExpression()), !dbg !1709
  %exitcond.not = icmp eq i64 %indvars.iv.next, 24, !dbg !1726
  br i1 %exitcond.not, label %for.end, label %for.body, !dbg !1710, !llvm.loop !1727

for.end:                                          ; preds = %if.end25
  %gcov_ctr36 = load i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @__llvm_gcov_ctr.75, i64 0, i64 4), align 16, !dbg !1729
  %22 = add i64 %gcov_ctr36, 1, !dbg !1729
  store i64 %22, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @__llvm_gcov_ctr.75, i64 0, i64 4), align 16, !dbg !1729
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1729, !tbaa !830
  %call28 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %23, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0)) #16, !dbg !1730
  br label %if.end29, !dbg !1731

if.end29:                                         ; preds = %for.end, %if.then
  %wbytes = getelementptr inbounds %struct._mc_resp, %struct._mc_resp* %0, i64 0, i32 2, !dbg !1732
  store i32 24, i32* %wbytes, align 8, !dbg !1733, !tbaa !1734
  tail call void @resp_add_iov(%struct._mc_resp* noundef nonnull %0, i8* noundef nonnull %arraydecay, i32 noundef 24) #16, !dbg !1736
  ret void, !dbg !1737
}

declare !dbg !1738 dso_local void @resp_add_iov(%struct._mc_resp* noundef, i8* noundef, i32 noundef) local_unnamed_addr #3

declare !dbg !1741 dso_local void @resp_reset(%struct._mc_resp* noundef) local_unnamed_addr #3

declare !dbg !1744 dso_local i64 @htonll(i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare !dbg !1745 dso_local i32 @pthread_mutex_lock(%union.pthread_mutex_t* noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare !dbg !1750 dso_local i32 @pthread_mutex_unlock(%union.pthread_mutex_t* noundef) local_unnamed_addr #4

declare !dbg !1751 dso_local i32 @store_item(%struct._stritem* noundef, i32 noundef, %struct.conn* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @write_bin_response(%struct.conn* noundef %c, i8* noundef %d, i32 noundef %dlen) unnamed_addr #0 !dbg !1754 {
entry:
  %gcov_ctr = load i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @__llvm_gcov_ctr.76, i64 0, i64 0), align 16
  %0 = add i64 %gcov_ctr, 1
  store i64 %0, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @__llvm_gcov_ctr.76, i64 0, i64 0), align 16
  call void @llvm.dbg.value(metadata %struct.conn* %c, metadata !1758, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.value(metadata i8* %d, metadata !1759, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.value(metadata i32 0, metadata !1760, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.value(metadata i32 0, metadata !1761, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.value(metadata i32 %dlen, metadata !1762, metadata !DIExpression()), !dbg !1766
  %noreply = getelementptr inbounds %struct.conn, %struct.conn* %c, i64 0, i32 34, !dbg !1767
  %1 = load i8, i8* %noreply, align 4, !dbg !1767, !tbaa !1354, !range !966
  %tobool.not = icmp eq i8 %1, 0, !dbg !1767
  br i1 %tobool.not, label %if.then, label %lor.lhs.false, !dbg !1768

lor.lhs.false:                                    ; preds = %entry
  %gcov_ctr14 = load i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @__llvm_gcov_ctr.76, i64 0, i64 1), align 8, !dbg !1769
  %2 = add i64 %gcov_ctr14, 1, !dbg !1769
  store i64 %2, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @__llvm_gcov_ctr.76, i64 0, i64 1), align 8, !dbg !1769
  %cmd = getelementptr inbounds %struct.conn, %struct.conn* %c, i64 0, i32 39, !dbg !1770
  %3 = load i16, i16* %cmd, align 8, !dbg !1770, !tbaa !793
  %cmp = icmp eq i16 %3, 0, !dbg !1771
  br i1 %cmp, label %if.then, label %lor.lhs.false2, !dbg !1772

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %gcov_ctr15 = load i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @__llvm_gcov_ctr.76, i64 0, i64 2), align 16, !dbg !1773
  %4 = add i64 %gcov_ctr15, 1, !dbg !1773
  store i64 %4, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @__llvm_gcov_ctr.76, i64 0, i64 2), align 16, !dbg !1773
  %cmp5 = icmp eq i16 %3, 12, !dbg !1774
  br i1 %cmp5, label %if.then, label %if.end13, !dbg !1775

if.then:                                          ; preds = %lor.lhs.false2, %lor.lhs.false, %entry
  tail call fastcc void @add_bin_header(%struct.conn* noundef nonnull %c, i16 noundef zeroext 0, i8 noundef zeroext 0, i16 noundef zeroext 0, i32 noundef %dlen) #15, !dbg !1776
  call void @llvm.dbg.value(metadata %struct._mc_resp* undef, metadata !1763, metadata !DIExpression()), !dbg !1777
  %cmp10 = icmp sgt i32 %dlen, 0, !dbg !1778
  br i1 %cmp10, label %if.then12, label %if.end, !dbg !1780

if.then12:                                        ; preds = %if.then
  %resp9 = getelementptr inbounds %struct.conn, %struct.conn* %c, i64 0, i32 19, !dbg !1781
  %5 = load %struct._mc_resp*, %struct._mc_resp** %resp9, align 8, !dbg !1781, !tbaa !1640
  call void @llvm.dbg.value(metadata %struct._mc_resp* %5, metadata !1763, metadata !DIExpression()), !dbg !1777
  %gcov_ctr16 = load i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @__llvm_gcov_ctr.76, i64 0, i64 3), align 8, !dbg !1782
  %6 = add i64 %gcov_ctr16, 1, !dbg !1782
  store i64 %6, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @__llvm_gcov_ctr.76, i64 0, i64 3), align 8, !dbg !1782
  tail call void @resp_add_iov(%struct._mc_resp* noundef %5, i8* noundef %d, i32 noundef %dlen) #16, !dbg !1784
  br label %if.end, !dbg !1785

if.end:                                           ; preds = %if.then12, %if.then
  %gcov_ctr17 = load i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @__llvm_gcov_ctr.76, i64 0, i64 4), align 16, !dbg !1786
  %7 = add i64 %gcov_ctr17, 1, !dbg !1786
  store i64 %7, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @__llvm_gcov_ctr.76, i64 0, i64 4), align 16, !dbg !1786
  br label %if.end13, !dbg !1787

if.end13:                                         ; preds = %if.end, %lor.lhs.false2
  tail call void @conn_set_state(%struct.conn* noundef nonnull %c, i32 noundef 1) #16, !dbg !1788
  ret void, !dbg !1789
}

declare !dbg !1790 dso_local void @item_remove(%struct._stritem* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @init_sasl_conn(%struct.conn* noundef %c) unnamed_addr #0 !dbg !1791 {
entry:
  call void @llvm.dbg.value(metadata %struct.conn* %c, metadata !1793, metadata !DIExpression()), !dbg !1797
  %tobool.not = icmp eq %struct.conn* %c, null, !dbg !1798
  br i1 %tobool.not, label %if.else, label %if.end, !dbg !1801

if.else:                                          ; preds = %entry
  %gcov_ctr = load i64, i64* getelementptr inbounds ([6 x i64], [6 x i64]* @__llvm_gcov_ctr.77, i64 0, i64 0), align 16, !dbg !1798
  %0 = add i64 %gcov_ctr, 1, !dbg !1798
  store i64 %0, i64* getelementptr inbounds ([6 x i64], [6 x i64]* @__llvm_gcov_ctr.77, i64 0, i64 0), align 16, !dbg !1798
  tail call void @__assert_fail(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.21, i64 0, i64 0), i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 noundef 674, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @__PRETTY_FUNCTION__.init_sasl_conn, i64 0, i64 0)) #14, !dbg !1798
  unreachable, !dbg !1798

if.end:                                           ; preds = %entry
  %1 = load i8, i8* getelementptr inbounds (%struct.settings, %struct.settings* @settings, i64 0, i32 26), align 4, !dbg !1802, !tbaa !963, !range !966
  %tobool1.not = icmp eq i8 %1, 0, !dbg !1802
  br i1 %tobool1.not, label %if.then2, label %if.end3, !dbg !1804

if.then2:                                         ; preds = %if.end
  %gcov_ctr14 = load i64, i64* getelementptr inbounds ([6 x i64], [6 x i64]* @__llvm_gcov_ctr.77, i64 0, i64 2), align 16, !dbg !1805
  %2 = add i64 %gcov_ctr14, 1, !dbg !1805
  store i64 %2, i64* getelementptr inbounds ([6 x i64], [6 x i64]* @__llvm_gcov_ctr.77, i64 0, i64 2), align 16, !dbg !1805
  br label %if.end12, !dbg !1805

if.end3:                                          ; preds = %if.end
  %gcov_ctr13 = load i64, i64* getelementptr inbounds ([6 x i64], [6 x i64]* @__llvm_gcov_ctr.77, i64 0, i64 1), align 8, !dbg !1806
  %3 = add i64 %gcov_ctr13, 1, !dbg !1806
  store i64 %3, i64* getelementptr inbounds ([6 x i64], [6 x i64]* @__llvm_gcov_ctr.77, i64 0, i64 1), align 8, !dbg !1806
  %authenticated = getelementptr inbounds %struct.conn, %struct.conn* %c, i64 0, i32 3, !dbg !1807
  store i8 0, i8* %authenticated, align 1, !dbg !1808, !tbaa !1809
  %sasl_conn = getelementptr inbounds %struct.conn, %struct.conn* %c, i64 0, i32 0, !dbg !1810
  %4 = load i8**, i8*** %sasl_conn, align 8, !dbg !1810, !tbaa !1811
  %tobool4.not = icmp eq i8** %4, null, !dbg !1812
  br i1 %tobool4.not, label %if.then6, label %if.end12, !dbg !1813

if.then6:                                         ; preds = %if.end3
  call void @llvm.dbg.value(metadata i32 1, metadata !1794, metadata !DIExpression()), !dbg !1814
  %gcov_ctr15 = load i64, i64* getelementptr inbounds ([6 x i64], [6 x i64]* @__llvm_gcov_ctr.77, i64 0, i64 3), align 8, !dbg !1815
  %5 = add i64 %gcov_ctr15, 1, !dbg !1815
  store i64 %5, i64* getelementptr inbounds ([6 x i64], [6 x i64]* @__llvm_gcov_ctr.77, i64 0, i64 3), align 8, !dbg !1815
  %6 = load i32, i32* getelementptr inbounds (%struct.settings, %struct.settings* @settings, i64 0, i32 5), align 8, !dbg !1815, !tbaa !997
  %tobool7.not = icmp eq i32 %6, 0, !dbg !1819
  br i1 %tobool7.not, label %if.end9, label %if.then8, !dbg !1820

if.then8:                                         ; preds = %if.then6
  %gcov_ctr16 = load i64, i64* getelementptr inbounds ([6 x i64], [6 x i64]* @__llvm_gcov_ctr.77, i64 0, i64 4), align 16, !dbg !1821
  %7 = add i64 %gcov_ctr16, 1, !dbg !1821
  store i64 %7, i64* getelementptr inbounds ([6 x i64], [6 x i64]* @__llvm_gcov_ctr.77, i64 0, i64 4), align 16, !dbg !1821
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1821, !tbaa !830
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %8, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.33, i64 0, i64 0)) #16, !dbg !1823
  br label %if.end9, !dbg !1824

if.end9:                                          ; preds = %if.then8, %if.then6
  store i8** null, i8*** %sasl_conn, align 8, !dbg !1825, !tbaa !1811
  %gcov_ctr17 = load i64, i64* getelementptr inbounds ([6 x i64], [6 x i64]* @__llvm_gcov_ctr.77, i64 0, i64 5), align 8, !dbg !1826
  %9 = add i64 %gcov_ctr17, 1, !dbg !1826
  store i64 %9, i64* getelementptr inbounds ([6 x i64], [6 x i64]* @__llvm_gcov_ctr.77, i64 0, i64 5), align 8, !dbg !1826
  br label %if.end12, !dbg !1827

if.end12:                                         ; preds = %if.then2, %if.end9, %if.end3
  ret void, !dbg !1828
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn
declare i8* @llvm.stacksave() #8

; Function Attrs: mustprogress nofree nosync nounwind willreturn
declare void @llvm.stackrestore(i8*) #8

; Function Attrs: noinline nounwind uwtable
define internal fastcc zeroext i1 @authenticated(%struct.conn* nocapture noundef readonly %c) unnamed_addr #0 !dbg !1829 {
entry:
  call void @llvm.dbg.value(metadata %struct.conn* %c, metadata !1831, metadata !DIExpression()), !dbg !1833
  %0 = load i8, i8* getelementptr inbounds (%struct.settings, %struct.settings* @settings, i64 0, i32 26), align 4, !dbg !1834, !tbaa !963, !range !966
  %tobool.not = icmp eq i8 %0, 0, !dbg !1834
  br i1 %tobool.not, label %if.else, label %if.end, !dbg !1837

if.else:                                          ; preds = %entry
  %gcov_ctr = load i64, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @__llvm_gcov_ctr.78, i64 0, i64 0), align 16, !dbg !1834
  %1 = add i64 %gcov_ctr, 1, !dbg !1834
  store i64 %1, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @__llvm_gcov_ctr.78, i64 0, i64 0), align 16, !dbg !1834
  tail call void @__assert_fail(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.26, i64 0, i64 0), i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 noundef 863, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @__PRETTY_FUNCTION__.authenticated, i64 0, i64 0)) #14, !dbg !1834
  unreachable, !dbg !1834

if.end:                                           ; preds = %entry
  call void @llvm.dbg.value(metadata i8 0, metadata !1832, metadata !DIExpression()), !dbg !1833
  %cmd = getelementptr inbounds %struct.conn, %struct.conn* %c, i64 0, i32 39, !dbg !1838
  %2 = load i16, i16* %cmd, align 8, !dbg !1838, !tbaa !793
  %conv = sext i16 %2 to i32, !dbg !1839
  switch i32 %conv, label %sw.default [
    i32 32, label %sw.bb
    i32 33, label %sw.bb
    i32 34, label %sw.bb
    i32 11, label %sw.bb
  ], !dbg !1840

sw.bb:                                            ; preds = %if.end, %if.end, %if.end, %if.end
  %gcov_ctr12 = load i64, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @__llvm_gcov_ctr.78, i64 0, i64 1), align 8, !dbg !1841
  %3 = add i64 %gcov_ctr12, 1, !dbg !1841
  store i64 %3, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @__llvm_gcov_ctr.78, i64 0, i64 1), align 8, !dbg !1841
  call void @llvm.dbg.value(metadata i8 1, metadata !1832, metadata !DIExpression()), !dbg !1833
  br label %sw.epilog, !dbg !1843

sw.default:                                       ; preds = %if.end
  %gcov_ctr13 = load i64, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @__llvm_gcov_ctr.78, i64 0, i64 2), align 16, !dbg !1844
  %4 = add i64 %gcov_ctr13, 1, !dbg !1844
  store i64 %4, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @__llvm_gcov_ctr.78, i64 0, i64 2), align 16, !dbg !1844
  %authenticated = getelementptr inbounds %struct.conn, %struct.conn* %c, i64 0, i32 3, !dbg !1845
  %5 = load i8, i8* %authenticated, align 1, !dbg !1845, !tbaa !1809, !range !966
  %tobool1 = icmp ne i8 %5, 0, !dbg !1845
  call void @llvm.dbg.value(metadata i1 %tobool1, metadata !1832, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1833
  br label %sw.epilog, !dbg !1846

sw.epilog:                                        ; preds = %sw.default, %sw.bb
  %rv.0 = phi i1 [ %tobool1, %sw.default ], [ true, %sw.bb ]
  call void @llvm.dbg.value(metadata i8 undef, metadata !1832, metadata !DIExpression()), !dbg !1833
  %6 = load i32, i32* getelementptr inbounds (%struct.settings, %struct.settings* @settings, i64 0, i32 5), align 8, !dbg !1847, !tbaa !997
  %cmp = icmp sgt i32 %6, 1, !dbg !1849
  br i1 %cmp, label %if.then3, label %if.end8, !dbg !1850

if.then3:                                         ; preds = %sw.epilog
  %gcov_ctr14 = load i64, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @__llvm_gcov_ctr.78, i64 0, i64 3), align 8, !dbg !1851
  %7 = add i64 %gcov_ctr14, 1, !dbg !1851
  store i64 %7, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @__llvm_gcov_ctr.78, i64 0, i64 3), align 8, !dbg !1851
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1851, !tbaa !830
  %cond = select i1 %rv.0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.36, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i64 0, i64 0), !dbg !1853
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %8, i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.35, i64 0, i64 0), i32 noundef %conv, i8* noundef %cond) #16, !dbg !1854
  br label %if.end8, !dbg !1855

if.end8:                                          ; preds = %if.then3, %sw.epilog
  ret i1 %rv.0, !dbg !1856
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @handle_binary_protocol_error(%struct.conn* noundef %c) unnamed_addr #0 !dbg !1857 {
entry:
  %gcov_ctr = load i64, i64* getelementptr inbounds ([2 x i64], [2 x i64]* @__llvm_gcov_ctr.79, i64 0, i64 0), align 8
  %0 = add i64 %gcov_ctr, 1
  store i64 %0, i64* getelementptr inbounds ([2 x i64], [2 x i64]* @__llvm_gcov_ctr.79, i64 0, i64 0), align 8
  call void @llvm.dbg.value(metadata %struct.conn* %c, metadata !1859, metadata !DIExpression()), !dbg !1860
  tail call void @write_bin_error(%struct.conn* noundef %c, i32 noundef 4, i8* noundef null, i32 noundef 0) #15, !dbg !1861
  %1 = load i32, i32* getelementptr inbounds (%struct.settings, %struct.settings* @settings, i64 0, i32 5), align 8, !dbg !1862, !tbaa !997
  %tobool.not = icmp eq i32 %1, 0, !dbg !1864
  br i1 %tobool.not, label %if.end, label %if.then, !dbg !1865

if.then:                                          ; preds = %entry
  %gcov_ctr1 = load i64, i64* getelementptr inbounds ([2 x i64], [2 x i64]* @__llvm_gcov_ctr.79, i64 0, i64 1), align 8, !dbg !1866
  %2 = add i64 %gcov_ctr1, 1, !dbg !1866
  store i64 %2, i64* getelementptr inbounds ([2 x i64], [2 x i64]* @__llvm_gcov_ctr.79, i64 0, i64 1), align 8, !dbg !1866
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1866, !tbaa !830
  %opcode = getelementptr inbounds %struct.conn, %struct.conn* %c, i64 0, i32 36, i32 0, i32 1, !dbg !1868
  %4 = load i8, i8* %opcode, align 1, !dbg !1868, !tbaa !858
  %conv = zext i8 %4 to i32, !dbg !1869
  %sfd = getelementptr inbounds %struct.conn, %struct.conn* %c, i64 0, i32 1, !dbg !1870
  %5 = load i32, i32* %sfd, align 8, !dbg !1870, !tbaa !1034
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %3, i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str.37, i64 0, i64 0), i32 noundef %conv, i32 noundef %5) #16, !dbg !1871
  br label %if.end, !dbg !1872

if.end:                                           ; preds = %if.then, %entry
  %close_after_write = getelementptr inbounds %struct.conn, %struct.conn* %c, i64 0, i32 6, !dbg !1873
  store i8 1, i8* %close_after_write, align 8, !dbg !1874, !tbaa !1338
  ret void, !dbg !1875
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @process_bin_flush(%struct.conn* noundef %c, i8* nocapture noundef readonly %extbuf) unnamed_addr #0 !dbg !1876 {
entry:
  call void @llvm.dbg.value(metadata %struct.conn* %c, metadata !1878, metadata !DIExpression()), !dbg !1898
  call void @llvm.dbg.value(metadata i8* %extbuf, metadata !1879, metadata !DIExpression()), !dbg !1898
  call void @llvm.dbg.value(metadata i64 0, metadata !1880, metadata !DIExpression()), !dbg !1898
  call void @llvm.dbg.value(metadata i8* %extbuf, metadata !1883, metadata !DIExpression()), !dbg !1898
  call void @llvm.dbg.value(metadata i32 0, metadata !1897, metadata !DIExpression()), !dbg !1898
  %0 = load i8, i8* getelementptr inbounds (%struct.settings, %struct.settings* @settings, i64 0, i32 38), align 8, !dbg !1899, !tbaa !1901, !range !966
  %tobool.not = icmp eq i8 %0, 0, !dbg !1899
  br i1 %tobool.not, label %if.then, label %if.end, !dbg !1902

if.then:                                          ; preds = %entry
  %gcov_ctr = load i64, i64* getelementptr inbounds ([7 x i64], [7 x i64]* @__llvm_gcov_ctr.80, i64 0, i64 0), align 16, !dbg !1903
  %1 = add i64 %gcov_ctr, 1, !dbg !1903
  store i64 %1, i64* getelementptr inbounds ([7 x i64], [7 x i64]* @__llvm_gcov_ctr.80, i64 0, i64 0), align 16, !dbg !1903
  tail call void @write_bin_error(%struct.conn* noundef %c, i32 noundef 32, i8* noundef null, i32 noundef 0) #15, !dbg !1905
  br label %cleanup, !dbg !1906

if.end:                                           ; preds = %entry
  %extlen = getelementptr inbounds %struct.conn, %struct.conn* %c, i64 0, i32 36, i32 0, i32 3, !dbg !1907
  %2 = load i8, i8* %extlen, align 4, !dbg !1907, !tbaa !858
  %cmp = icmp eq i8 %2, 4, !dbg !1909
  br i1 %cmp, label %if.end4, label %if.else, !dbg !1910

if.end4:                                          ; preds = %if.end
  %gcov_ctr28 = load i64, i64* getelementptr inbounds ([7 x i64], [7 x i64]* @__llvm_gcov_ctr.80, i64 0, i64 1), align 8, !dbg !1911
  %3 = add i64 %gcov_ctr28, 1, !dbg !1911
  store i64 %3, i64* getelementptr inbounds ([7 x i64], [7 x i64]* @__llvm_gcov_ctr.80, i64 0, i64 1), align 8, !dbg !1911
  %body = getelementptr inbounds i8, i8* %extbuf, i64 24, !dbg !1911
  %expiration = bitcast i8* %body to i32*, !dbg !1911
  %4 = load i32, i32* %expiration, align 8, !dbg !1911, !tbaa !858
  %call = tail call fastcc i32 @__bswap_32(i32 noundef %4) #15, !dbg !1911
  call void @llvm.dbg.value(metadata i32 %call, metadata !1880, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1898
  %cmp5.not = icmp eq i32 %call, 0, !dbg !1913
  br i1 %cmp5.not, label %if.else, label %if.then7, !dbg !1915

if.then7:                                         ; preds = %if.end4
  %conv3 = zext i32 %call to i64, !dbg !1911
  call void @llvm.dbg.value(metadata i64 %conv3, metadata !1880, metadata !DIExpression()), !dbg !1898
  %call8 = tail call i32 @realtime(i64 noundef %conv3) #16, !dbg !1916
  call void @llvm.dbg.value(metadata i32 %call8, metadata !1897, metadata !DIExpression()), !dbg !1898
  br label %if.end9, !dbg !1918

if.else:                                          ; preds = %if.end, %if.end4
  %gcov_ctr29 = load i64, i64* getelementptr inbounds ([7 x i64], [7 x i64]* @__llvm_gcov_ctr.80, i64 0, i64 2), align 16, !dbg !1919
  %5 = add i64 %gcov_ctr29, 1, !dbg !1919
  store i64 %5, i64* getelementptr inbounds ([7 x i64], [7 x i64]* @__llvm_gcov_ctr.80, i64 0, i64 2), align 16, !dbg !1919
  %6 = load volatile i32, i32* @current_time, align 4, !dbg !1919, !tbaa !873
  call void @llvm.dbg.value(metadata i32 %6, metadata !1897, metadata !DIExpression()), !dbg !1898
  br label %if.end9

if.end9:                                          ; preds = %if.else, %if.then7
  %new_oldest.0 = phi i32 [ %call8, %if.then7 ], [ %6, %if.else ], !dbg !1921
  call void @llvm.dbg.value(metadata i32 %new_oldest.0, metadata !1897, metadata !DIExpression()), !dbg !1898
  %7 = load i8, i8* getelementptr inbounds (%struct.settings, %struct.settings* @settings, i64 0, i32 19), align 8, !dbg !1922, !tbaa !1924, !range !966
  %tobool10.not = icmp eq i8 %7, 0, !dbg !1922
  br i1 %tobool10.not, label %if.else17, label %if.then11, !dbg !1925

if.then11:                                        ; preds = %if.end9
  %sub = add i32 %new_oldest.0, -1, !dbg !1926
  store i32 %sub, i32* getelementptr inbounds (%struct.settings, %struct.settings* @settings, i64 0, i32 6), align 4, !dbg !1928, !tbaa !1929
  %8 = load volatile i32, i32* @current_time, align 4, !dbg !1930, !tbaa !873
  %cmp12.not = icmp ugt i32 %sub, %8, !dbg !1932
  br i1 %cmp12.not, label %if.end16, label %if.then14, !dbg !1933

if.then14:                                        ; preds = %if.then11
  %gcov_ctr30 = load i64, i64* getelementptr inbounds ([7 x i64], [7 x i64]* @__llvm_gcov_ctr.80, i64 0, i64 3), align 8, !dbg !1934
  %9 = add i64 %gcov_ctr30, 1, !dbg !1934
  store i64 %9, i64* getelementptr inbounds ([7 x i64], [7 x i64]* @__llvm_gcov_ctr.80, i64 0, i64 3), align 8, !dbg !1934
  %call15 = tail call i64 @get_cas_id() #16, !dbg !1934
  store i64 %call15, i64* getelementptr inbounds (%struct.settings, %struct.settings* @settings, i64 0, i32 7), align 8, !dbg !1935, !tbaa !1936
  br label %if.end16, !dbg !1937

if.end16:                                         ; preds = %if.then14, %if.then11
  %gcov_ctr31 = load i64, i64* getelementptr inbounds ([7 x i64], [7 x i64]* @__llvm_gcov_ctr.80, i64 0, i64 4), align 16, !dbg !1938
  %10 = add i64 %gcov_ctr31, 1, !dbg !1938
  store i64 %10, i64* getelementptr inbounds ([7 x i64], [7 x i64]* @__llvm_gcov_ctr.80, i64 0, i64 4), align 16, !dbg !1938
  br label %if.end18, !dbg !1938

if.else17:                                        ; preds = %if.end9
  %gcov_ctr32 = load i64, i64* getelementptr inbounds ([7 x i64], [7 x i64]* @__llvm_gcov_ctr.80, i64 0, i64 5), align 8, !dbg !1939
  %11 = add i64 %gcov_ctr32, 1, !dbg !1939
  store i64 %11, i64* getelementptr inbounds ([7 x i64], [7 x i64]* @__llvm_gcov_ctr.80, i64 0, i64 5), align 8, !dbg !1939
  store i32 %new_oldest.0, i32* getelementptr inbounds (%struct.settings, %struct.settings* @settings, i64 0, i32 6), align 4, !dbg !1941, !tbaa !1929
  br label %if.end18

if.end18:                                         ; preds = %if.else17, %if.end16
  %thread = getelementptr inbounds %struct.conn, %struct.conn* %c, i64 0, i32 43, !dbg !1942
  %12 = load %struct.LIBEVENT_THREAD*, %struct.LIBEVENT_THREAD** %thread, align 8, !dbg !1942, !tbaa !853
  %mutex = getelementptr inbounds %struct.LIBEVENT_THREAD, %struct.LIBEVENT_THREAD* %12, i64 0, i32 4, i32 0, !dbg !1943
  %call19 = tail call i32 @pthread_mutex_lock(%union.pthread_mutex_t* noundef nonnull %mutex) #16, !dbg !1944
  %13 = load %struct.LIBEVENT_THREAD*, %struct.LIBEVENT_THREAD** %thread, align 8, !dbg !1945, !tbaa !853
  %flush_cmds = getelementptr inbounds %struct.LIBEVENT_THREAD, %struct.LIBEVENT_THREAD* %13, i64 0, i32 4, i32 14, !dbg !1946
  %14 = load i64, i64* %flush_cmds, align 8, !dbg !1947, !tbaa !1948
  %inc = add i64 %14, 1, !dbg !1947
  store i64 %inc, i64* %flush_cmds, align 8, !dbg !1947, !tbaa !1948
  %mutex24 = getelementptr inbounds %struct.LIBEVENT_THREAD, %struct.LIBEVENT_THREAD* %13, i64 0, i32 4, i32 0, !dbg !1951
  %call25 = tail call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* noundef nonnull %mutex24) #16, !dbg !1952
  tail call fastcc void @write_bin_response(%struct.conn* noundef nonnull %c, i8* noundef null, i32 noundef 0) #15, !dbg !1953
  br label %cleanup, !dbg !1954

cleanup:                                          ; preds = %if.end18, %if.then
  ret void, !dbg !1954
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @process_bin_update(%struct.conn* noundef %c, i8* nocapture noundef %extbuf) unnamed_addr #0 !dbg !1955 {
entry:
  call void @llvm.dbg.value(metadata %struct.conn* %c, metadata !1957, metadata !DIExpression()), !dbg !1986
  call void @llvm.dbg.value(metadata i8* %extbuf, metadata !1958, metadata !DIExpression()), !dbg !1986
  call void @llvm.dbg.value(metadata i8* %extbuf, metadata !1963, metadata !DIExpression()), !dbg !1986
  %cmp.not = icmp eq %struct.conn* %c, null, !dbg !1987
  br i1 %cmp.not, label %if.else, label %if.end, !dbg !1990

if.else:                                          ; preds = %entry
  %gcov_ctr = load i64, i64* getelementptr inbounds ([20 x i64], [20 x i64]* @__llvm_gcov_ctr.81, i64 0, i64 0), align 16, !dbg !1987
  %0 = add i64 %gcov_ctr, 1, !dbg !1987
  store i64 %0, i64* getelementptr inbounds ([20 x i64], [20 x i64]* @__llvm_gcov_ctr.81, i64 0, i64 0), align 16, !dbg !1987
  tail call void @__assert_fail(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 noundef 1085, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @__PRETTY_FUNCTION__.process_bin_update, i64 0, i64 0)) #14, !dbg !1987
  unreachable, !dbg !1987

if.end:                                           ; preds = %entry
  call void @llvm.dbg.value(metadata i8* %extbuf, metadata !1963, metadata !DIExpression()), !dbg !1986
  %call = tail call fastcc i8* @binary_get_key(%struct.conn* noundef nonnull %c) #15, !dbg !1991
  call void @llvm.dbg.value(metadata i8* %call, metadata !1959, metadata !DIExpression()), !dbg !1986
  %keylen = getelementptr inbounds %struct.conn, %struct.conn* %c, i64 0, i32 36, i32 0, i32 2, !dbg !1992
  %1 = load i16, i16* %keylen, align 2, !dbg !1992, !tbaa !858
  %conv = zext i16 %1 to i32, !dbg !1993
  call void @llvm.dbg.value(metadata i32 %conv, metadata !1960, metadata !DIExpression()), !dbg !1986
  %body = getelementptr inbounds i8, i8* %extbuf, i64 24, !dbg !1994
  %flags = bitcast i8* %body to i32*, !dbg !1994
  %2 = load i32, i32* %flags, align 8, !dbg !1994, !tbaa !858
  %call1 = tail call fastcc i32 @__bswap_32(i32 noundef %2) #15, !dbg !1994
  store i32 %call1, i32* %flags, align 8, !dbg !1995, !tbaa !858
  %expiration = getelementptr inbounds i8, i8* %extbuf, i64 28, !dbg !1996
  %3 = bitcast i8* %expiration to i32*, !dbg !1996
  %4 = load i32, i32* %3, align 4, !dbg !1996, !tbaa !858
  %call7 = tail call fastcc i32 @__bswap_32(i32 noundef %4) #15, !dbg !1996
  store i32 %call7, i32* %3, align 4, !dbg !1997, !tbaa !858
  %bodylen = getelementptr inbounds %struct.conn, %struct.conn* %c, i64 0, i32 36, i32 0, i32 6, !dbg !1998
  %5 = load i32, i32* %bodylen, align 8, !dbg !1998, !tbaa !858
  %extlen = getelementptr inbounds %struct.conn, %struct.conn* %c, i64 0, i32 36, i32 0, i32 3, !dbg !1999
  %6 = load i8, i8* %extlen, align 4, !dbg !1999, !tbaa !858
  %conv15 = zext i8 %6 to i32, !dbg !2000
  %7 = add nuw nsw i32 %conv, %conv15, !dbg !2001
  %sub = sub i32 %5, %7, !dbg !2001
  call void @llvm.dbg.value(metadata i32 %sub, metadata !1961, metadata !DIExpression()), !dbg !1986
  %8 = load i32, i32* getelementptr inbounds (%struct.settings, %struct.settings* @settings, i64 0, i32 5), align 8, !dbg !2002, !tbaa !997
  %cmp16 = icmp sgt i32 %8, 1, !dbg !2003
  br i1 %cmp16, label %if.then18, label %if.end43, !dbg !2004

if.then18:                                        ; preds = %if.end
  %cmd = getelementptr inbounds %struct.conn, %struct.conn* %c, i64 0, i32 39, !dbg !2005
  %9 = load i16, i16* %cmd, align 8, !dbg !2005, !tbaa !793
  switch i16 %9, label %if.else32 [
    i16 2, label %if.then22
    i16 1, label %if.then29
  ], !dbg !2007

if.then22:                                        ; preds = %if.then18
  %gcov_ctr151 = load i64, i64* getelementptr inbounds ([20 x i64], [20 x i64]* @__llvm_gcov_ctr.81, i64 0, i64 1), align 8, !dbg !2008
  %10 = add i64 %gcov_ctr151, 1, !dbg !2008
  store i64 %10, i64* getelementptr inbounds ([20 x i64], [20 x i64]* @__llvm_gcov_ctr.81, i64 0, i64 1), align 8, !dbg !2008
  br label %if.end36, !dbg !2010

if.then29:                                        ; preds = %if.then18
  %gcov_ctr152 = load i64, i64* getelementptr inbounds ([20 x i64], [20 x i64]* @__llvm_gcov_ctr.81, i64 0, i64 2), align 16, !dbg !2011
  %11 = add i64 %gcov_ctr152, 1, !dbg !2011
  store i64 %11, i64* getelementptr inbounds ([20 x i64], [20 x i64]* @__llvm_gcov_ctr.81, i64 0, i64 2), align 16, !dbg !2011
  br label %if.end36, !dbg !2014

if.else32:                                        ; preds = %if.then18
  %gcov_ctr153 = load i64, i64* getelementptr inbounds ([20 x i64], [20 x i64]* @__llvm_gcov_ctr.81, i64 0, i64 3), align 8, !dbg !2015
  %12 = add i64 %gcov_ctr153, 1, !dbg !2015
  store i64 %12, i64* getelementptr inbounds ([20 x i64], [20 x i64]* @__llvm_gcov_ctr.81, i64 0, i64 3), align 8, !dbg !2015
  br label %if.end36

if.end36:                                         ; preds = %if.then29, %if.else32, %if.then22
  %.sink250 = phi i8* [ getelementptr inbounds ([9 x i8], [9 x i8]* @.str.39, i64 0, i64 0), %if.then29 ], [ getelementptr inbounds ([13 x i8], [13 x i8]* @.str.40, i64 0, i64 0), %if.else32 ], [ getelementptr inbounds ([9 x i8], [9 x i8]* @.str.38, i64 0, i64 0), %if.then22 ]
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2017, !tbaa !830
  %sfd30 = getelementptr inbounds %struct.conn, %struct.conn* %c, i64 0, i32 1, !dbg !2017
  %14 = load i32, i32* %sfd30, align 8, !dbg !2017, !tbaa !1034
  %call31 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %13, i8* noundef %.sink250, i32 noundef %14) #16, !dbg !2017
  call void @llvm.dbg.value(metadata i32 0, metadata !1978, metadata !DIExpression()), !dbg !2018
  %cmp37247.not = icmp eq i16 %1, 0, !dbg !2019
  br i1 %cmp37247.not, label %for.end, label %for.body.preheader, !dbg !2022

for.body.preheader:                               ; preds = %if.end36
  %wide.trip.count = zext i16 %1 to i64, !dbg !2019
  br label %for.body, !dbg !2022

for.body:                                         ; preds = %for.body.preheader, %for.body
  %indvars.iv = phi i64 [ 0, %for.body.preheader ], [ %indvars.iv.next, %for.body ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !1978, metadata !DIExpression()), !dbg !2018
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2023, !tbaa !830
  %arrayidx = getelementptr inbounds i8, i8* %call, i64 %indvars.iv, !dbg !2025
  %16 = load i8, i8* %arrayidx, align 1, !dbg !2025, !tbaa !858
  %conv39 = sext i8 %16 to i32, !dbg !2025
  %call40 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %15, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.41, i64 0, i64 0), i32 noundef %conv39) #16, !dbg !2026
  %gcov_ctr154 = load i64, i64* getelementptr inbounds ([20 x i64], [20 x i64]* @__llvm_gcov_ctr.81, i64 0, i64 4), align 16, !dbg !2027
  %17 = add i64 %gcov_ctr154, 1, !dbg !2027
  store i64 %17, i64* getelementptr inbounds ([20 x i64], [20 x i64]* @__llvm_gcov_ctr.81, i64 0, i64 4), align 16, !dbg !2027
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !2027
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !1978, metadata !DIExpression()), !dbg !2018
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count, !dbg !2019
  br i1 %exitcond.not, label %for.end, label %for.body, !dbg !2022, !llvm.loop !2028

for.end:                                          ; preds = %for.body, %if.end36
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2030, !tbaa !830
  %call41 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %18, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.42, i64 0, i64 0), i32 noundef %sub) #16, !dbg !2031
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2032, !tbaa !830
  %call42 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %19, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0)) #16, !dbg !2033
  br label %if.end43, !dbg !2034

if.end43:                                         ; preds = %for.end, %if.end
  %20 = load i32, i32* getelementptr inbounds (%struct.settings, %struct.settings* @settings, i64 0, i32 17), align 8, !dbg !2035, !tbaa !2037
  %tobool.not = icmp eq i32 %20, 0, !dbg !2038
  br i1 %tobool.not, label %if.end43.if.end46_crit_edge, label %if.then44, !dbg !2039

if.end43.if.end46_crit_edge:                      ; preds = %if.end43
  %.pre = zext i16 %1 to i64
  br label %if.end46, !dbg !2039

if.then44:                                        ; preds = %if.end43
  %gcov_ctr155 = load i64, i64* getelementptr inbounds ([20 x i64], [20 x i64]* @__llvm_gcov_ctr.81, i64 0, i64 5), align 8, !dbg !2040
  %21 = add i64 %gcov_ctr155, 1, !dbg !2040
  store i64 %21, i64* getelementptr inbounds ([20 x i64], [20 x i64]* @__llvm_gcov_ctr.81, i64 0, i64 5), align 8, !dbg !2040
  %22 = zext i16 %1 to i64
  tail call void @stats_prefix_record_set(i8* noundef %call, i64 noundef %22) #16, !dbg !2042
  br label %if.end46, !dbg !2043

if.end46:                                         ; preds = %if.end43.if.end46_crit_edge, %if.then44
  %.pre-phi = phi i64 [ %.pre, %if.end43.if.end46_crit_edge ], [ %22, %if.then44 ]
  %23 = load i32, i32* %flags, align 8, !dbg !2044, !tbaa !858
  %24 = load i32, i32* %3, align 4, !dbg !2045, !tbaa !858
  %conv54 = zext i32 %24 to i64, !dbg !2046
  %call55 = tail call i32 @realtime(i64 noundef %conv54) #16, !dbg !2047
  %add56 = add nsw i32 %sub, 2, !dbg !2048
  %call57 = tail call %struct._stritem* @item_alloc(i8* noundef %call, i64 noundef %.pre-phi, i32 noundef %23, i32 noundef %call55, i32 noundef %add56) #16, !dbg !2049
  call void @llvm.dbg.value(metadata %struct._stritem* %call57, metadata !1962, metadata !DIExpression()), !dbg !1986
  %cmp58 = icmp eq %struct._stritem* %call57, null, !dbg !2050
  br i1 %cmp58, label %if.then60, label %if.end103, !dbg !2051

if.then60:                                        ; preds = %if.end46
  %25 = load i32, i32* %flags, align 8, !dbg !2052, !tbaa !858
  %call66 = tail call zeroext i1 @item_size_ok(i64 noundef %.pre-phi, i32 noundef %25, i32 noundef %add56) #16, !dbg !2054
  br i1 %call66, label %if.else68, label %if.then67, !dbg !2055

if.then67:                                        ; preds = %if.then60
  %gcov_ctr156 = load i64, i64* getelementptr inbounds ([20 x i64], [20 x i64]* @__llvm_gcov_ctr.81, i64 0, i64 6), align 16, !dbg !2056
  %26 = add i64 %gcov_ctr156, 1, !dbg !2056
  store i64 %26, i64* getelementptr inbounds ([20 x i64], [20 x i64]* @__llvm_gcov_ctr.81, i64 0, i64 6), align 16, !dbg !2056
  tail call void @write_bin_error(%struct.conn* noundef %c, i32 noundef 3, i8* noundef null, i32 noundef %sub) #15, !dbg !2058
  call void @llvm.dbg.value(metadata i32 4, metadata !1981, metadata !DIExpression()), !dbg !2059
  br label %do.body, !dbg !2060

if.else68:                                        ; preds = %if.then60
  %gcov_ctr157 = load i64, i64* getelementptr inbounds ([20 x i64], [20 x i64]* @__llvm_gcov_ctr.81, i64 0, i64 7), align 8, !dbg !2061
  %27 = add i64 %gcov_ctr157, 1, !dbg !2061
  store i64 %27, i64* getelementptr inbounds ([20 x i64], [20 x i64]* @__llvm_gcov_ctr.81, i64 0, i64 7), align 8, !dbg !2061
  tail call void @out_of_memory(%struct.conn* noundef %c, i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.43, i64 0, i64 0)) #16, !dbg !2063
  %sbytes = getelementptr inbounds %struct.conn, %struct.conn* %c, i64 0, i32 24, !dbg !2064
  store i32 %sub, i32* %sbytes, align 8, !dbg !2065, !tbaa !1650
  call void @llvm.dbg.value(metadata i32 5, metadata !1981, metadata !DIExpression()), !dbg !2059
  br label %do.body

do.body:                                          ; preds = %if.then67, %if.else68
  %status.0 = phi i32 [ 5, %if.else68 ], [ 4, %if.then67 ], !dbg !2066
  call void @llvm.dbg.value(metadata i32 %status.0, metadata !1981, metadata !DIExpression()), !dbg !2059
  %thread = getelementptr inbounds %struct.conn, %struct.conn* %c, i64 0, i32 43, !dbg !2067
  %28 = load %struct.LIBEVENT_THREAD*, %struct.LIBEVENT_THREAD** %thread, align 8, !dbg !2067, !tbaa !853
  %l = getelementptr inbounds %struct.LIBEVENT_THREAD, %struct.LIBEVENT_THREAD* %28, i64 0, i32 11, !dbg !2067
  %29 = load %struct._logger*, %struct._logger** %l, align 8, !dbg !2067, !tbaa !2068
  call void @llvm.dbg.value(metadata %struct._logger* %29, metadata !1984, metadata !DIExpression()), !dbg !2069
  %cmp72 = icmp eq %struct._logger* %29, null, !dbg !2070
  br i1 %cmp72, label %if.then74, label %if.end76, !dbg !2067

if.then74:                                        ; preds = %do.body
  %gcov_ctr158 = load i64, i64* getelementptr inbounds ([20 x i64], [20 x i64]* @__llvm_gcov_ctr.81, i64 0, i64 8), align 16, !dbg !2070
  %30 = add i64 %gcov_ctr158, 1, !dbg !2070
  store i64 %30, i64* getelementptr inbounds ([20 x i64], [20 x i64]* @__llvm_gcov_ctr.81, i64 0, i64 8), align 16, !dbg !2070
  %31 = load i32, i32* @logger_key, align 4, !dbg !2070, !tbaa !873
  %call75 = tail call i8* @pthread_getspecific(i32 noundef %31) #16, !dbg !2070
  %32 = bitcast i8* %call75 to %struct._logger*, !dbg !2070
  call void @llvm.dbg.value(metadata %struct._logger* %32, metadata !1984, metadata !DIExpression()), !dbg !2069
  br label %if.end76, !dbg !2070

if.end76:                                         ; preds = %if.then74, %do.body
  %myl.0 = phi %struct._logger* [ %32, %if.then74 ], [ %29, %do.body ], !dbg !2069
  call void @llvm.dbg.value(metadata %struct._logger* %myl.0, metadata !1984, metadata !DIExpression()), !dbg !2069
  %eflags = getelementptr inbounds %struct._logger, %struct._logger* %myl.0, i64 0, i32 8, !dbg !2072
  %33 = load i16, i16* %eflags, align 4, !dbg !2072, !tbaa !2074
  %34 = and i16 %33, 8, !dbg !2072
  %tobool78.not = icmp eq i16 %34, 0, !dbg !2072
  br i1 %tobool78.not, label %if.end87, label %if.then79, !dbg !2067

if.then79:                                        ; preds = %if.end76
  %gcov_ctr159 = load i64, i64* getelementptr inbounds ([20 x i64], [20 x i64]* @__llvm_gcov_ctr.81, i64 0, i64 9), align 8, !dbg !2072
  %35 = add i64 %gcov_ctr159, 1, !dbg !2072
  store i64 %35, i64* getelementptr inbounds ([20 x i64], [20 x i64]* @__llvm_gcov_ctr.81, i64 0, i64 9), align 8, !dbg !2072
  %36 = load i32, i32* %3, align 4, !dbg !2072, !tbaa !858
  %37 = load i8, i8* inttoptr (i64 40 to i8*), align 8, !dbg !2072, !tbaa !858
  %38 = and i8 %37, 63, !dbg !2072
  %and84 = zext i8 %38 to i32, !dbg !2072
  %sfd85 = getelementptr inbounds %struct.conn, %struct.conn* %c, i64 0, i32 1, !dbg !2072
  %39 = load i32, i32* %sfd85, align 8, !dbg !2072, !tbaa !1034
  %call86 = tail call i32 (%struct._logger*, i32, i8*, ...) @logger_log(%struct._logger* noundef nonnull %myl.0, i32 noundef 3, i8* noundef null, i32 noundef %status.0, i32 noundef 0, i8* noundef %call, i32 noundef %conv, i32 noundef %36, i32 noundef %and84, i32 noundef %39) #16, !dbg !2072
  br label %if.end87, !dbg !2072

if.end87:                                         ; preds = %if.then79, %if.end76
  %cmd88 = getelementptr inbounds %struct.conn, %struct.conn* %c, i64 0, i32 39, !dbg !2076
  %40 = load i16, i16* %cmd88, align 8, !dbg !2076, !tbaa !793
  %cmp90 = icmp eq i16 %40, 1, !dbg !2078
  br i1 %cmp90, label %if.then92, label %if.end102, !dbg !2079

if.then92:                                        ; preds = %if.end87
  %call94 = tail call %struct._stritem* @item_get(i8* noundef %call, i64 noundef %.pre-phi, %struct.conn* noundef nonnull %c, i1 noundef zeroext false) #16, !dbg !2080
  call void @llvm.dbg.value(metadata %struct._stritem* %call94, metadata !1962, metadata !DIExpression()), !dbg !1986
  %tobool95.not = icmp eq %struct._stritem* %call94, null, !dbg !2082
  br i1 %tobool95.not, label %if.end101, label %if.then96, !dbg !2084

if.then96:                                        ; preds = %if.then92
  tail call void @item_unlink(%struct._stritem* noundef nonnull %call94) #16, !dbg !2085
  %41 = load %struct.LIBEVENT_THREAD*, %struct.LIBEVENT_THREAD** %thread, align 8, !dbg !2087, !tbaa !853
  %storage = getelementptr inbounds %struct.LIBEVENT_THREAD, %struct.LIBEVENT_THREAD* %41, i64 0, i32 10, !dbg !2087
  %42 = load i8*, i8** %storage, align 8, !dbg !2087, !tbaa !2089
  tail call void @storage_delete(i8* noundef %42, %struct._stritem* noundef nonnull %call94) #16, !dbg !2087
  %gcov_ctr160 = load i64, i64* getelementptr inbounds ([20 x i64], [20 x i64]* @__llvm_gcov_ctr.81, i64 0, i64 10), align 16, !dbg !2090
  %43 = add i64 %gcov_ctr160, 1, !dbg !2090
  store i64 %43, i64* getelementptr inbounds ([20 x i64], [20 x i64]* @__llvm_gcov_ctr.81, i64 0, i64 10), align 16, !dbg !2090
  tail call void @item_remove(%struct._stritem* noundef nonnull %call94) #16, !dbg !2091
  br label %if.end101, !dbg !2092

if.end101:                                        ; preds = %if.then96, %if.then92
  %gcov_ctr161 = load i64, i64* getelementptr inbounds ([20 x i64], [20 x i64]* @__llvm_gcov_ctr.81, i64 0, i64 11), align 8, !dbg !2093
  %44 = add i64 %gcov_ctr161, 1, !dbg !2093
  store i64 %44, i64* getelementptr inbounds ([20 x i64], [20 x i64]* @__llvm_gcov_ctr.81, i64 0, i64 11), align 8, !dbg !2093
  br label %if.end102, !dbg !2093

if.end102:                                        ; preds = %if.end101, %if.end87
  tail call void @conn_set_state(%struct.conn* noundef nonnull %c, i32 noundef 7) #16, !dbg !2094
  br label %cleanup

if.end103:                                        ; preds = %if.end46
  %it_flags = getelementptr inbounds %struct._stritem, %struct._stritem* %call57, i64 0, i32 7, !dbg !2095
  %45 = load i16, i16* %it_flags, align 2, !dbg !2095, !tbaa !866
  %46 = and i16 %45, 2, !dbg !2095
  %tobool106.not = icmp eq i16 %46, 0, !dbg !2095
  br i1 %tobool106.not, label %if.end111, label %if.then107, !dbg !2098

if.then107:                                       ; preds = %if.end103
  %gcov_ctr162 = load i64, i64* getelementptr inbounds ([20 x i64], [20 x i64]* @__llvm_gcov_ctr.81, i64 0, i64 12), align 16, !dbg !2099
  %47 = add i64 %gcov_ctr162, 1, !dbg !2099
  store i64 %47, i64* getelementptr inbounds ([20 x i64], [20 x i64]* @__llvm_gcov_ctr.81, i64 0, i64 12), align 16, !dbg !2099
  %cas = getelementptr inbounds %struct.conn, %struct.conn* %c, i64 0, i32 36, i32 0, i32 8, !dbg !2099
  %48 = load i64, i64* %cas, align 8, !dbg !2099, !tbaa !858
  %cas110 = getelementptr inbounds %struct._stritem, %struct._stritem* %call57, i64 0, i32 10, i64 0, i32 0, !dbg !2099
  store i64 %48, i64* %cas110, align 8, !dbg !2099, !tbaa !858
  br label %if.end111, !dbg !2099

if.end111:                                        ; preds = %if.then107, %if.end103
  %cmd112 = getelementptr inbounds %struct.conn, %struct.conn* %c, i64 0, i32 39, !dbg !2101
  %49 = load i16, i16* %cmd112, align 8, !dbg !2101, !tbaa !793
  %conv113 = sext i16 %49 to i32, !dbg !2102
  switch i32 %conv113, label %sw.default [
    i32 2, label %sw.bb
    i32 1, label %sw.bb115
    i32 3, label %sw.bb117
  ], !dbg !2103

sw.bb:                                            ; preds = %if.end111
  %gcov_ctr164 = load i64, i64* getelementptr inbounds ([20 x i64], [20 x i64]* @__llvm_gcov_ctr.81, i64 0, i64 14), align 16, !dbg !2104
  %50 = add i64 %gcov_ctr164, 1, !dbg !2104
  store i64 %50, i64* getelementptr inbounds ([20 x i64], [20 x i64]* @__llvm_gcov_ctr.81, i64 0, i64 14), align 16, !dbg !2104
  br label %sw.epilog, !dbg !2106

sw.bb115:                                         ; preds = %if.end111
  %gcov_ctr163 = load i64, i64* getelementptr inbounds ([20 x i64], [20 x i64]* @__llvm_gcov_ctr.81, i64 0, i64 13), align 8, !dbg !2107
  %51 = add i64 %gcov_ctr163, 1, !dbg !2107
  store i64 %51, i64* getelementptr inbounds ([20 x i64], [20 x i64]* @__llvm_gcov_ctr.81, i64 0, i64 13), align 8, !dbg !2107
  br label %sw.epilog, !dbg !2108

sw.bb117:                                         ; preds = %if.end111
  %gcov_ctr165 = load i64, i64* getelementptr inbounds ([20 x i64], [20 x i64]* @__llvm_gcov_ctr.81, i64 0, i64 15), align 8, !dbg !2109
  %52 = add i64 %gcov_ctr165, 1, !dbg !2109
  store i64 %52, i64* getelementptr inbounds ([20 x i64], [20 x i64]* @__llvm_gcov_ctr.81, i64 0, i64 15), align 8, !dbg !2109
  br label %sw.epilog, !dbg !2110

sw.default:                                       ; preds = %if.end111
  %gcov_ctr166 = load i64, i64* getelementptr inbounds ([20 x i64], [20 x i64]* @__llvm_gcov_ctr.81, i64 0, i64 16), align 16, !dbg !2111
  %53 = add i64 %gcov_ctr166, 1, !dbg !2111
  store i64 %53, i64* getelementptr inbounds ([20 x i64], [20 x i64]* @__llvm_gcov_ctr.81, i64 0, i64 16), align 16, !dbg !2111
  tail call void @__assert_fail(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 noundef 1165, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @__PRETTY_FUNCTION__.process_bin_update, i64 0, i64 0)) #14, !dbg !2111
  unreachable, !dbg !2111

sw.epilog:                                        ; preds = %sw.bb117, %sw.bb115, %sw.bb
  %.sink = phi i16 [ 3, %sw.bb117 ], [ 2, %sw.bb115 ], [ 1, %sw.bb ]
  store i16 %.sink, i16* %cmd112, align 8, !dbg !2114, !tbaa !793
  %54 = load i16, i16* %it_flags, align 2, !dbg !2115, !tbaa !866
  %55 = and i16 %54, 2, !dbg !2115
  %tobool122.not = icmp eq i16 %55, 0, !dbg !2115
  br i1 %tobool122.not, label %cond.false, label %cond.true, !dbg !2115

cond.true:                                        ; preds = %sw.epilog
  %cas125 = getelementptr inbounds %struct._stritem, %struct._stritem* %call57, i64 0, i32 10, i64 0, i32 0, !dbg !2115
  %56 = load i64, i64* %cas125, align 8, !dbg !2115, !tbaa !858
  %phi.cmp = icmp eq i64 %56, 0, !dbg !2115
  br i1 %phi.cmp, label %if.end130, label %if.then128, !dbg !2117

cond.false:                                       ; preds = %sw.epilog
  %gcov_ctr167 = load i64, i64* getelementptr inbounds ([20 x i64], [20 x i64]* @__llvm_gcov_ctr.81, i64 0, i64 17), align 8, !dbg !2115
  %57 = add i64 %gcov_ctr167, 1, !dbg !2115
  store i64 %57, i64* getelementptr inbounds ([20 x i64], [20 x i64]* @__llvm_gcov_ctr.81, i64 0, i64 17), align 8, !dbg !2115
  br label %if.end130, !dbg !2117

if.then128:                                       ; preds = %cond.true
  %gcov_ctr168 = load i64, i64* getelementptr inbounds ([20 x i64], [20 x i64]* @__llvm_gcov_ctr.81, i64 0, i64 18), align 16, !dbg !2118
  %58 = add i64 %gcov_ctr168, 1, !dbg !2118
  store i64 %58, i64* getelementptr inbounds ([20 x i64], [20 x i64]* @__llvm_gcov_ctr.81, i64 0, i64 18), align 16, !dbg !2118
  store i16 6, i16* %cmd112, align 8, !dbg !2120, !tbaa !793
  br label %if.end130, !dbg !2121

if.end130:                                        ; preds = %cond.false, %if.then128, %cond.true
  %item = getelementptr inbounds %struct.conn, %struct.conn* %c, i64 0, i32 23, !dbg !2122
  %59 = bitcast i8** %item to %struct._stritem**, !dbg !2123
  store %struct._stritem* %call57, %struct._stritem** %59, align 8, !dbg !2123, !tbaa !820
  %data131 = getelementptr inbounds %struct._stritem, %struct._stritem* %call57, i64 0, i32 10, !dbg !2124
  %60 = bitcast [0 x %union.anon.9]* %data131 to i8*, !dbg !2124
  %nkey132 = getelementptr inbounds %struct._stritem, %struct._stritem* %call57, i64 0, i32 9, !dbg !2124
  %61 = load i8, i8* %nkey132, align 1, !dbg !2124, !tbaa !858
  %62 = zext i8 %61 to i64
  %add.ptr = getelementptr inbounds i8, i8* %60, i64 %62, !dbg !2124
  %add.ptr134 = getelementptr inbounds i8, i8* %add.ptr, i64 1, !dbg !2124
  %63 = load i16, i16* %it_flags, align 2, !dbg !2124, !tbaa !866
  %conv136 = zext i16 %63 to i32, !dbg !2124
  %and137 = lshr i32 %conv136, 6, !dbg !2124
  %64 = and i32 %and137, 4, !dbg !2124
  %65 = zext i32 %64 to i64, !dbg !2124
  %add.ptr140 = getelementptr inbounds i8, i8* %add.ptr134, i64 %65, !dbg !2124
  %and143 = shl nuw nsw i32 %conv136, 2, !dbg !2124
  %66 = and i32 %and143, 8, !dbg !2124
  %67 = zext i32 %66 to i64, !dbg !2124
  %add.ptr146 = getelementptr inbounds i8, i8* %add.ptr140, i64 %67, !dbg !2124
  %ritem = getelementptr inbounds %struct.conn, %struct.conn* %c, i64 0, i32 21, !dbg !2125
  store i8* %add.ptr146, i8** %ritem, align 8, !dbg !2126, !tbaa !886
  %rlbytes = getelementptr inbounds %struct.conn, %struct.conn* %c, i64 0, i32 22, !dbg !2127
  store i32 %sub, i32* %rlbytes, align 8, !dbg !2128, !tbaa !2129
  tail call void @conn_set_state(%struct.conn* noundef nonnull %c, i32 noundef 6) #16, !dbg !2130
  %substate = getelementptr inbounds %struct.conn, %struct.conn* %c, i64 0, i32 10, !dbg !2131
  store i32 3, i32* %substate, align 8, !dbg !2132, !tbaa !811
  br label %cleanup, !dbg !2133

cleanup:                                          ; preds = %if.end130, %if.end102
  ret void, !dbg !2133
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @process_bin_get_or_touch(%struct.conn* noundef %c, i8* nocapture noundef readonly %extbuf) unnamed_addr #0 !dbg !2134 {
entry:
  call void @llvm.dbg.value(metadata %struct.conn* %c, metadata !2136, metadata !DIExpression()), !dbg !2167
  call void @llvm.dbg.value(metadata i8* %extbuf, metadata !2137, metadata !DIExpression()), !dbg !2167
  %resp = getelementptr inbounds %struct.conn, %struct.conn* %c, i64 0, i32 19, !dbg !2168
  %0 = load %struct._mc_resp*, %struct._mc_resp** %resp, align 8, !dbg !2168, !tbaa !1640
  call void @llvm.dbg.value(metadata %struct._mc_resp* %0, metadata !2139, metadata !DIExpression(DW_OP_plus_uconst, 160, DW_OP_stack_value)), !dbg !2167
  %call = tail call fastcc i8* @binary_get_key(%struct.conn* noundef %c) #15, !dbg !2169
  call void @llvm.dbg.value(metadata i8* %call, metadata !2140, metadata !DIExpression()), !dbg !2167
  %keylen = getelementptr inbounds %struct.conn, %struct.conn* %c, i64 0, i32 36, i32 0, i32 2, !dbg !2170
  %1 = load i16, i16* %keylen, align 2, !dbg !2170, !tbaa !858
  %conv = zext i16 %1 to i64, !dbg !2171
  call void @llvm.dbg.value(metadata i64 %conv, metadata !2141, metadata !DIExpression()), !dbg !2167
  %cmd = getelementptr inbounds %struct.conn, %struct.conn* %c, i64 0, i32 39, !dbg !2172
  %2 = load i16, i16* %cmd, align 8, !dbg !2172, !tbaa !793
  %cmp = icmp eq i16 %2, 28, !dbg !2173
  br i1 %cmp, label %lor.rhs15, label %lor.lhs.false, !dbg !2174

lor.lhs.false:                                    ; preds = %entry
  %gcov_ctr = load i64, i64* getelementptr inbounds ([28 x i64], [28 x i64]* @__llvm_gcov_ctr.82, i64 0, i64 0), align 16, !dbg !2175
  %3 = add i64 %gcov_ctr, 1, !dbg !2175
  store i64 %3, i64* getelementptr inbounds ([28 x i64], [28 x i64]* @__llvm_gcov_ctr.82, i64 0, i64 0), align 16, !dbg !2175
  %cmp5 = icmp eq i16 %2, 29, !dbg !2176
  br i1 %cmp5, label %lor.rhs15, label %lor.end, !dbg !2177

lor.end:                                          ; preds = %lor.lhs.false
  %gcov_ctr267 = load i64, i64* getelementptr inbounds ([28 x i64], [28 x i64]* @__llvm_gcov_ctr.82, i64 0, i64 1), align 8, !dbg !2178
  %4 = add i64 %gcov_ctr267, 1, !dbg !2178
  store i64 %4, i64* getelementptr inbounds ([28 x i64], [28 x i64]* @__llvm_gcov_ctr.82, i64 0, i64 1), align 8, !dbg !2178
  %cmp9 = icmp eq i16 %2, 35, !dbg !2179
  call void @llvm.dbg.value(metadata i1 %cmp9, metadata !2142, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2167
  %cmp13 = icmp eq i16 %2, 12, !dbg !2180
  br i1 %cmp13, label %lor.end20, label %lor.rhs15, !dbg !2181

lor.rhs15:                                        ; preds = %entry, %lor.lhs.false, %lor.end
  %5 = phi i1 [ %cmp9, %lor.end ], [ true, %lor.lhs.false ], [ true, %entry ]
  %gcov_ctr268 = load i64, i64* getelementptr inbounds ([28 x i64], [28 x i64]* @__llvm_gcov_ctr.82, i64 0, i64 2), align 16, !dbg !2182
  %6 = add i64 %gcov_ctr268, 1, !dbg !2182
  store i64 %6, i64* getelementptr inbounds ([28 x i64], [28 x i64]* @__llvm_gcov_ctr.82, i64 0, i64 2), align 16, !dbg !2182
  %cmp18 = icmp eq i16 %2, 35, !dbg !2183
  br label %lor.end20, !dbg !2181

lor.end20:                                        ; preds = %lor.rhs15, %lor.end
  %7 = phi i1 [ %cmp9, %lor.end ], [ %5, %lor.rhs15 ]
  %8 = phi i1 [ true, %lor.end ], [ %cmp18, %lor.rhs15 ]
  call void @llvm.dbg.value(metadata i1 %8, metadata !2143, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2167
  call void @llvm.dbg.value(metadata i1 %cmp, metadata !2144, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2167
  call void @llvm.dbg.value(metadata i8 0, metadata !2145, metadata !DIExpression()), !dbg !2167
  %9 = load i32, i32* getelementptr inbounds (%struct.settings, %struct.settings* @settings, i64 0, i32 5), align 8, !dbg !2184, !tbaa !997
  %cmp26 = icmp sgt i32 %9, 1, !dbg !2186
  br i1 %cmp26, label %if.then, label %if.end33, !dbg !2187

if.then:                                          ; preds = %lor.end20
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2188, !tbaa !830
  %sfd = getelementptr inbounds %struct.conn, %struct.conn* %c, i64 0, i32 1, !dbg !2190
  %11 = load i32, i32* %sfd, align 8, !dbg !2190, !tbaa !1034
  %cond = select i1 %7, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.45, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.46, i64 0, i64 0), !dbg !2191
  %call28 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %10, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.44, i64 0, i64 0), i32 noundef %11, i8* noundef %cond) #16, !dbg !2192
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2193, !tbaa !830
  %call29 = tail call i64 @fwrite(i8* noundef %call, i64 noundef 1, i64 noundef %conv, %struct._IO_FILE* noundef %12) #16, !dbg !2195
  %tobool30.not = icmp eq i64 %call29, 0, !dbg !2195
  br i1 %tobool30.not, label %if.end, label %if.then31, !dbg !2196

if.then31:                                        ; preds = %if.then
  %gcov_ctr269 = load i64, i64* getelementptr inbounds ([28 x i64], [28 x i64]* @__llvm_gcov_ctr.82, i64 0, i64 3), align 8, !dbg !2197
  %13 = add i64 %gcov_ctr269, 1, !dbg !2197
  store i64 %13, i64* getelementptr inbounds ([28 x i64], [28 x i64]* @__llvm_gcov_ctr.82, i64 0, i64 3), align 8, !dbg !2197
  br label %if.end, !dbg !2197

if.end:                                           ; preds = %if.then31, %if.then
  %gcov_ctr270 = load i64, i64* getelementptr inbounds ([28 x i64], [28 x i64]* @__llvm_gcov_ctr.82, i64 0, i64 4), align 16, !dbg !2199
  %14 = add i64 %gcov_ctr270, 1, !dbg !2199
  store i64 %14, i64* getelementptr inbounds ([28 x i64], [28 x i64]* @__llvm_gcov_ctr.82, i64 0, i64 4), align 16, !dbg !2199
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2199, !tbaa !830
  %call32 = tail call i32 @fputc(i32 noundef 10, %struct._IO_FILE* noundef %15) #16, !dbg !2200
  br i1 %7, label %if.then35, label %if.else, !dbg !2201

if.end33:                                         ; preds = %lor.end20
  br i1 %7, label %if.then35, label %if.else, !dbg !2201

if.then35:                                        ; preds = %if.end, %if.end33
  call void @llvm.dbg.value(metadata i8* %extbuf, metadata !2146, metadata !DIExpression()), !dbg !2202
  %body = getelementptr inbounds i8, i8* %extbuf, i64 24, !dbg !2203
  %expiration = bitcast i8* %body to i32*, !dbg !2203
  %16 = load i32, i32* %expiration, align 8, !dbg !2203, !tbaa !858
  %call36 = tail call fastcc i32 @__bswap_32(i32 noundef %16) #15, !dbg !2203
  %conv37 = zext i32 %call36 to i64, !dbg !2203
  call void @llvm.dbg.value(metadata i64 %conv37, metadata !2162, metadata !DIExpression()), !dbg !2202
  %call38 = tail call i32 @realtime(i64 noundef %conv37) #16, !dbg !2204
  %call39 = tail call %struct._stritem* @item_touch(i8* noundef %call, i64 noundef %conv, i32 noundef %call38, %struct.conn* noundef nonnull %c) #16, !dbg !2205
  call void @llvm.dbg.value(metadata %struct._stritem* %call39, metadata !2138, metadata !DIExpression()), !dbg !2167
  br label %if.end41, !dbg !2206

if.else:                                          ; preds = %if.end, %if.end33
  %gcov_ctr271 = load i64, i64* getelementptr inbounds ([28 x i64], [28 x i64]* @__llvm_gcov_ctr.82, i64 0, i64 5), align 8, !dbg !2207
  %17 = add i64 %gcov_ctr271, 1, !dbg !2207
  store i64 %17, i64* getelementptr inbounds ([28 x i64], [28 x i64]* @__llvm_gcov_ctr.82, i64 0, i64 5), align 8, !dbg !2207
  %call40 = tail call %struct._stritem* @item_get(i8* noundef %call, i64 noundef %conv, %struct.conn* noundef nonnull %c, i1 noundef zeroext true) #16, !dbg !2209
  call void @llvm.dbg.value(metadata %struct._stritem* %call40, metadata !2138, metadata !DIExpression()), !dbg !2167
  br label %if.end41

if.end41:                                         ; preds = %if.else, %if.then35
  %18 = phi i1 [ true, %if.then35 ], [ false, %if.else ]
  %it.0 = phi %struct._stritem* [ %call39, %if.then35 ], [ %call40, %if.else ], !dbg !2210
  call void @llvm.dbg.value(metadata %struct._stritem* %it.0, metadata !2138, metadata !DIExpression()), !dbg !2167
  %tobool42 = icmp ne %struct._stritem* %it.0, null, !dbg !2211
  br i1 %tobool42, label %if.then43, label %if.else219, !dbg !2212

if.then43:                                        ; preds = %if.end41
  call void @llvm.dbg.value(metadata i16 0, metadata !2163, metadata !DIExpression()), !dbg !2213
  %nbytes = getelementptr inbounds %struct._stritem, %struct._stritem* %it.0, i64 0, i32 5, !dbg !2214
  %19 = load i32, i32* %nbytes, align 8, !dbg !2214, !tbaa !873
  %add = add i32 %19, 2, !dbg !2215
  call void @llvm.dbg.value(metadata i32 %add, metadata !2166, metadata !DIExpression()), !dbg !2213
  %thread = getelementptr inbounds %struct.conn, %struct.conn* %c, i64 0, i32 43, !dbg !2216
  %20 = load %struct.LIBEVENT_THREAD*, %struct.LIBEVENT_THREAD** %thread, align 8, !dbg !2216, !tbaa !853
  %mutex = getelementptr inbounds %struct.LIBEVENT_THREAD, %struct.LIBEVENT_THREAD* %20, i64 0, i32 4, i32 0, !dbg !2217
  %call47 = tail call i32 @pthread_mutex_lock(%union.pthread_mutex_t* noundef nonnull %mutex) #16, !dbg !2218
  br i1 %18, label %if.end66.thread, label %if.else73, !dbg !2219

if.end66.thread:                                  ; preds = %if.then43
  %21 = load %struct.LIBEVENT_THREAD*, %struct.LIBEVENT_THREAD** %thread, align 8, !dbg !2220, !tbaa !853
  %touch_cmds = getelementptr inbounds %struct.LIBEVENT_THREAD, %struct.LIBEVENT_THREAD* %21, i64 0, i32 4, i32 5, !dbg !2223
  %22 = load i64, i64* %touch_cmds, align 8, !dbg !2224, !tbaa !2225
  %inc = add i64 %22, 1, !dbg !2224
  store i64 %inc, i64* %touch_cmds, align 8, !dbg !2224, !tbaa !2225
  %slabs_clsid = getelementptr inbounds %struct._stritem, %struct._stritem* %it.0, i64 0, i32 8, !dbg !2226
  %23 = load i8, i8* %slabs_clsid, align 8, !dbg !2226, !tbaa !858
  %24 = and i8 %23, 63, !dbg !2226
  %25 = zext i8 %24 to i64
  %touch_hits = getelementptr inbounds %struct.LIBEVENT_THREAD, %struct.LIBEVENT_THREAD* %21, i64 0, i32 4, i32 31, i64 %25, i32 2, !dbg !2227
  %26 = load i64, i64* %touch_hits, align 8, !dbg !2228, !tbaa !2229
  %inc55 = add i64 %26, 1, !dbg !2228
  store i64 %inc55, i64* %touch_hits, align 8, !dbg !2228, !tbaa !2229
  %mutex69400 = getelementptr inbounds %struct.LIBEVENT_THREAD, %struct.LIBEVENT_THREAD* %21, i64 0, i32 4, i32 0, !dbg !2230
  %call70401 = tail call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* noundef nonnull %mutex69400) #16, !dbg !2231
  br label %if.end74, !dbg !2232

if.else73:                                        ; preds = %if.then43
  %gcov_ctr273 = load i64, i64* getelementptr inbounds ([28 x i64], [28 x i64]* @__llvm_gcov_ctr.82, i64 0, i64 7), align 8, !dbg !2233
  %27 = add i64 %gcov_ctr273, 1, !dbg !2233
  store i64 %27, i64* getelementptr inbounds ([28 x i64], [28 x i64]* @__llvm_gcov_ctr.82, i64 0, i64 7), align 8, !dbg !2233
  %28 = load %struct.LIBEVENT_THREAD*, %struct.LIBEVENT_THREAD** %thread, align 8, !dbg !2235, !tbaa !853
  %get_cmds = getelementptr inbounds %struct.LIBEVENT_THREAD, %struct.LIBEVENT_THREAD* %28, i64 0, i32 4, i32 1, !dbg !2236
  %29 = load i64, i64* %get_cmds, align 8, !dbg !2237, !tbaa !2238
  %inc59 = add i64 %29, 1, !dbg !2237
  store i64 %inc59, i64* %get_cmds, align 8, !dbg !2237, !tbaa !2238
  %slabs_clsid62 = getelementptr inbounds %struct._stritem, %struct._stritem* %it.0, i64 0, i32 8, !dbg !2239
  %30 = load i8, i8* %slabs_clsid62, align 8, !dbg !2239, !tbaa !858
  %idxprom63 = zext i8 %30 to i64, !dbg !2240
  %arrayidx64 = getelementptr inbounds %struct.LIBEVENT_THREAD, %struct.LIBEVENT_THREAD* %28, i64 0, i32 4, i32 32, i64 %idxprom63, !dbg !2240
  %31 = load i64, i64* %arrayidx64, align 8, !dbg !2241, !tbaa !1071
  %inc65 = add i64 %31, 1, !dbg !2241
  store i64 %inc65, i64* %arrayidx64, align 8, !dbg !2241, !tbaa !1071
  %mutex69 = getelementptr inbounds %struct.LIBEVENT_THREAD, %struct.LIBEVENT_THREAD* %28, i64 0, i32 4, i32 0, !dbg !2230
  %call70 = tail call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* noundef nonnull %mutex69) #16, !dbg !2231
  %gcov_ctr274 = load i64, i64* getelementptr inbounds ([28 x i64], [28 x i64]* @__llvm_gcov_ctr.82, i64 0, i64 8), align 16
  %32 = add i64 %gcov_ctr274, 1
  store i64 %32, i64* getelementptr inbounds ([28 x i64], [28 x i64]* @__llvm_gcov_ctr.82, i64 0, i64 8), align 16
  br label %if.end74

if.end74:                                         ; preds = %if.end66.thread, %if.else73
  %33 = load i16, i16* %cmd, align 8, !dbg !2242, !tbaa !793
  %cmp77 = icmp eq i16 %33, 28, !dbg !2244
  br i1 %cmp77, label %if.then79, label %if.else83, !dbg !2245

if.then79:                                        ; preds = %if.end74
  %34 = load i32, i32* %nbytes, align 8, !dbg !2246, !tbaa !873
  %sub81.neg = add i32 %19, 4, !dbg !2248
  %sub82 = sub i32 %sub81.neg, %34, !dbg !2249
  call void @llvm.dbg.value(metadata i32 %sub82, metadata !2166, metadata !DIExpression()), !dbg !2213
  br label %if.end91, !dbg !2250

if.else83:                                        ; preds = %if.end74
  br i1 %8, label %if.then85, label %if.end90, !dbg !2251

if.then85:                                        ; preds = %if.else83
  %gcov_ctr275 = load i64, i64* getelementptr inbounds ([28 x i64], [28 x i64]* @__llvm_gcov_ctr.82, i64 0, i64 9), align 8, !dbg !2252
  %35 = add i64 %gcov_ctr275, 1, !dbg !2252
  store i64 %35, i64* getelementptr inbounds ([28 x i64], [28 x i64]* @__llvm_gcov_ctr.82, i64 0, i64 9), align 8, !dbg !2252
  %36 = zext i16 %1 to i32, !dbg !2255
  %conv88 = add i32 %add, %36, !dbg !2255
  call void @llvm.dbg.value(metadata i32 %conv88, metadata !2166, metadata !DIExpression()), !dbg !2213
  call void @llvm.dbg.value(metadata i16 %1, metadata !2163, metadata !DIExpression()), !dbg !2213
  br label %if.end90, !dbg !2256

if.end90:                                         ; preds = %if.then85, %if.else83
  %keylen44.0 = phi i16 [ %1, %if.then85 ], [ 0, %if.else83 ], !dbg !2213
  %bodylen.0 = phi i32 [ %conv88, %if.then85 ], [ %add, %if.else83 ], !dbg !2213
  call void @llvm.dbg.value(metadata i32 %bodylen.0, metadata !2166, metadata !DIExpression()), !dbg !2213
  call void @llvm.dbg.value(metadata i16 %keylen44.0, metadata !2163, metadata !DIExpression()), !dbg !2213
  %gcov_ctr276 = load i64, i64* getelementptr inbounds ([28 x i64], [28 x i64]* @__llvm_gcov_ctr.82, i64 0, i64 10), align 16
  %37 = add i64 %gcov_ctr276, 1
  store i64 %37, i64* getelementptr inbounds ([28 x i64], [28 x i64]* @__llvm_gcov_ctr.82, i64 0, i64 10), align 16
  br label %if.end91

if.end91:                                         ; preds = %if.end90, %if.then79
  %keylen44.1 = phi i16 [ 0, %if.then79 ], [ %keylen44.0, %if.end90 ], !dbg !2213
  %bodylen.1 = phi i32 [ %sub82, %if.then79 ], [ %bodylen.0, %if.end90 ], !dbg !2257
  call void @llvm.dbg.value(metadata i32 %bodylen.1, metadata !2166, metadata !DIExpression()), !dbg !2213
  call void @llvm.dbg.value(metadata i16 %keylen44.1, metadata !2163, metadata !DIExpression()), !dbg !2213
  tail call fastcc void @add_bin_header(%struct.conn* noundef nonnull %c, i16 noundef zeroext 0, i8 noundef zeroext 4, i16 noundef zeroext %keylen44.1, i32 noundef %bodylen.1) #15, !dbg !2258
  %it_flags = getelementptr inbounds %struct._stritem, %struct._stritem* %it.0, i64 0, i32 7, !dbg !2259
  %38 = load i16, i16* %it_flags, align 2, !dbg !2259, !tbaa !866
  %39 = and i16 %38, 2, !dbg !2259
  %tobool94.not = icmp eq i16 %39, 0, !dbg !2259
  br i1 %tobool94.not, label %cond.false, label %cond.true, !dbg !2259

cond.true:                                        ; preds = %if.end91
  %cas = getelementptr inbounds %struct._stritem, %struct._stritem* %it.0, i64 0, i32 10, i64 0, i32 0, !dbg !2259
  %40 = load i64, i64* %cas, align 8, !dbg !2259, !tbaa !858
  br label %cond.end, !dbg !2259

cond.false:                                       ; preds = %if.end91
  %gcov_ctr277 = load i64, i64* getelementptr inbounds ([28 x i64], [28 x i64]* @__llvm_gcov_ctr.82, i64 0, i64 11), align 8, !dbg !2259
  %41 = add i64 %gcov_ctr277, 1, !dbg !2259
  store i64 %41, i64* getelementptr inbounds ([28 x i64], [28 x i64]* @__llvm_gcov_ctr.82, i64 0, i64 11), align 8, !dbg !2259
  br label %cond.end, !dbg !2259

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond96 = phi i64 [ %40, %cond.true ], [ 0, %cond.false ], !dbg !2259
  %call97 = tail call i64 @htonll(i64 noundef %cond96) #16, !dbg !2260
  %cas99 = getelementptr inbounds %struct._mc_resp, %struct._mc_resp* %0, i64 0, i32 18, i64 16, !dbg !2261
  %42 = bitcast i8* %cas99 to i64*, !dbg !2261
  store i64 %call97, i64* %42, align 8, !dbg !2262, !tbaa !858
  %43 = load i16, i16* %it_flags, align 2, !dbg !2263, !tbaa !866
  %conv101 = zext i16 %43 to i32, !dbg !2263
  %and102 = and i32 %conv101, 256, !dbg !2263
  %tobool103.not = icmp eq i32 %and102, 0, !dbg !2263
  br i1 %tobool103.not, label %if.else117, label %if.then104, !dbg !2266

if.then104:                                       ; preds = %cond.end
  %data105 = getelementptr inbounds %struct._stritem, %struct._stritem* %it.0, i64 0, i32 10, !dbg !2267
  %44 = bitcast [0 x %union.anon.9]* %data105 to i8*, !dbg !2267
  %nkey106 = getelementptr inbounds %struct._stritem, %struct._stritem* %it.0, i64 0, i32 9, !dbg !2267
  %45 = load i8, i8* %nkey106, align 1, !dbg !2267, !tbaa !858
  %46 = zext i8 %45 to i64
  %add.ptr = getelementptr inbounds i8, i8* %44, i64 %46, !dbg !2267
  %add.ptr108 = getelementptr inbounds i8, i8* %add.ptr, i64 1, !dbg !2267
  %and111 = shl nuw nsw i32 %conv101, 2, !dbg !2267
  %47 = and i32 %and111, 8, !dbg !2267
  %48 = zext i32 %47 to i64, !dbg !2267
  %add.ptr114 = getelementptr inbounds i8, i8* %add.ptr108, i64 %48, !dbg !2267
  %49 = bitcast i8* %add.ptr114 to i32*, !dbg !2267
  %50 = load i32, i32* %49, align 4, !dbg !2267, !tbaa !873
  %body116 = getelementptr inbounds %struct._mc_resp, %struct._mc_resp* %0, i64 0, i32 18, i64 24, !dbg !2267
  %flags = bitcast i8* %body116 to i32*, !dbg !2267
  store i32 %50, i32* %flags, align 8, !dbg !2267, !tbaa !858
  br label %if.end121, !dbg !2267

if.else117:                                       ; preds = %cond.end
  %gcov_ctr278 = load i64, i64* getelementptr inbounds ([28 x i64], [28 x i64]* @__llvm_gcov_ctr.82, i64 0, i64 12), align 16, !dbg !2269
  %51 = add i64 %gcov_ctr278, 1, !dbg !2269
  store i64 %51, i64* getelementptr inbounds ([28 x i64], [28 x i64]* @__llvm_gcov_ctr.82, i64 0, i64 12), align 16, !dbg !2269
  %body119 = getelementptr inbounds %struct._mc_resp, %struct._mc_resp* %0, i64 0, i32 18, i64 24, !dbg !2269
  %flags120 = bitcast i8* %body119 to i32*, !dbg !2269
  store i32 0, i32* %flags120, align 8, !dbg !2269, !tbaa !858
  br label %if.end121

if.end121:                                        ; preds = %if.else117, %if.then104
  %flags124.pre-phi = phi i32* [ %flags120, %if.else117 ], [ %flags, %if.then104 ], !dbg !2271
  %52 = phi i32 [ 0, %if.else117 ], [ %50, %if.then104 ], !dbg !2271
  %body123 = getelementptr inbounds %struct._mc_resp, %struct._mc_resp* %0, i64 0, i32 18, i64 24, !dbg !2271
  %call125 = tail call fastcc i32 @__bswap_32(i32 noundef %52) #15, !dbg !2271
  store i32 %call125, i32* %flags124.pre-phi, align 8, !dbg !2272, !tbaa !858
  %53 = load %struct._mc_resp*, %struct._mc_resp** %resp, align 8, !dbg !2273, !tbaa !1640
  tail call void @resp_add_iov(%struct._mc_resp* noundef %53, i8* noundef nonnull %body123, i32 noundef 4) #16, !dbg !2274
  br i1 %8, label %if.then133, label %if.end143, !dbg !2275

if.then133:                                       ; preds = %if.end121
  %gcov_ctr279 = load i64, i64* getelementptr inbounds ([28 x i64], [28 x i64]* @__llvm_gcov_ctr.82, i64 0, i64 13), align 8, !dbg !2276
  %54 = add i64 %gcov_ctr279, 1, !dbg !2276
  store i64 %54, i64* getelementptr inbounds ([28 x i64], [28 x i64]* @__llvm_gcov_ctr.82, i64 0, i64 13), align 8, !dbg !2276
  %55 = load %struct._mc_resp*, %struct._mc_resp** %resp, align 8, !dbg !2279, !tbaa !1640
  %data135 = getelementptr inbounds %struct._stritem, %struct._stritem* %it.0, i64 0, i32 10, !dbg !2280
  %56 = bitcast [0 x %union.anon.9]* %data135 to i8*, !dbg !2280
  %57 = load i16, i16* %it_flags, align 2, !dbg !2280, !tbaa !866
  %58 = shl i16 %57, 2, !dbg !2280
  %59 = and i16 %58, 8, !dbg !2280
  %60 = zext i16 %59 to i64, !dbg !2280
  %add.ptr141 = getelementptr inbounds i8, i8* %56, i64 %60, !dbg !2280
  %conv142 = zext i16 %1 to i32, !dbg !2281
  tail call void @resp_add_iov(%struct._mc_resp* noundef %55, i8* noundef nonnull %add.ptr141, i32 noundef %conv142) #16, !dbg !2282
  br label %if.end143, !dbg !2283

if.end143:                                        ; preds = %if.then133, %if.end121
  br i1 %cmp, label %if.then204, label %if.then145, !dbg !2284

if.then145:                                       ; preds = %if.end143
  %61 = load i16, i16* %it_flags, align 2, !dbg !2285, !tbaa !866
  %conv147 = zext i16 %61 to i32, !dbg !2289
  %and148 = and i32 %conv147, 128, !dbg !2290
  %tobool149.not = icmp eq i32 %and148, 0, !dbg !2290
  br i1 %tobool149.not, label %if.else168, label %if.then150, !dbg !2291

if.then150:                                       ; preds = %if.then145
  %62 = load %struct._mc_resp*, %struct._mc_resp** %resp, align 8, !dbg !2292, !tbaa !1640
  %call152 = tail call i32 @storage_get_item(%struct.conn* noundef nonnull %c, %struct._stritem* noundef nonnull %it.0, %struct._mc_resp* noundef %62) #16, !dbg !2295
  %cmp153.not = icmp eq i32 %call152, 0, !dbg !2296
  br i1 %cmp153.not, label %if.end202.thread406, label %if.then222, !dbg !2297

if.end202.thread406:                              ; preds = %if.then150
  call void @llvm.dbg.value(metadata i8 1, metadata !2145, metadata !DIExpression()), !dbg !2167
  %gcov_ctr281408 = load i64, i64* getelementptr inbounds ([28 x i64], [28 x i64]* @__llvm_gcov_ctr.82, i64 0, i64 15), align 8, !dbg !2298
  %63 = add i64 %gcov_ctr281408, 1, !dbg !2298
  store i64 %63, i64* getelementptr inbounds ([28 x i64], [28 x i64]* @__llvm_gcov_ctr.82, i64 0, i64 15), align 8, !dbg !2298
  br label %if.then204, !dbg !2299

if.else168:                                       ; preds = %if.then145
  %and171 = and i32 %conv147, 32, !dbg !2300
  %cmp172 = icmp eq i32 %and171, 0, !dbg !2302
  br i1 %cmp172, label %if.then174, label %if.else196, !dbg !2303

if.then174:                                       ; preds = %if.else168
  %gcov_ctr282 = load i64, i64* getelementptr inbounds ([28 x i64], [28 x i64]* @__llvm_gcov_ctr.82, i64 0, i64 16), align 16, !dbg !2304
  %64 = add i64 %gcov_ctr282, 1, !dbg !2304
  store i64 %64, i64* getelementptr inbounds ([28 x i64], [28 x i64]* @__llvm_gcov_ctr.82, i64 0, i64 16), align 16, !dbg !2304
  %65 = load %struct._mc_resp*, %struct._mc_resp** %resp, align 8, !dbg !2306, !tbaa !1640
  %data176 = getelementptr inbounds %struct._stritem, %struct._stritem* %it.0, i64 0, i32 10, !dbg !2307
  %66 = bitcast [0 x %union.anon.9]* %data176 to i8*, !dbg !2307
  %nkey177 = getelementptr inbounds %struct._stritem, %struct._stritem* %it.0, i64 0, i32 9, !dbg !2307
  %67 = load i8, i8* %nkey177, align 1, !dbg !2307, !tbaa !858
  %68 = zext i8 %67 to i64
  %add.ptr180 = getelementptr inbounds i8, i8* %66, i64 %68, !dbg !2307
  %add.ptr181 = getelementptr inbounds i8, i8* %add.ptr180, i64 1, !dbg !2307
  %69 = load i16, i16* %it_flags, align 2, !dbg !2307, !tbaa !866
  %conv183 = zext i16 %69 to i32, !dbg !2307
  %and184 = lshr i32 %conv183, 6, !dbg !2307
  %70 = and i32 %and184, 4, !dbg !2307
  %71 = zext i32 %70 to i64, !dbg !2307
  %add.ptr187 = getelementptr inbounds i8, i8* %add.ptr181, i64 %71, !dbg !2307
  %and190 = shl nuw nsw i32 %conv183, 2, !dbg !2307
  %72 = and i32 %and190, 8, !dbg !2307
  %73 = zext i32 %72 to i64, !dbg !2307
  %add.ptr193 = getelementptr inbounds i8, i8* %add.ptr187, i64 %73, !dbg !2307
  %74 = load i32, i32* %nbytes, align 8, !dbg !2308, !tbaa !873
  %sub195 = add nsw i32 %74, -2, !dbg !2309
  tail call void @resp_add_iov(%struct._mc_resp* noundef %65, i8* noundef nonnull %add.ptr193, i32 noundef %sub195) #16, !dbg !2310
  br label %if.then204, !dbg !2311

if.else196:                                       ; preds = %if.else168
  %gcov_ctr283 = load i64, i64* getelementptr inbounds ([28 x i64], [28 x i64]* @__llvm_gcov_ctr.82, i64 0, i64 17), align 8, !dbg !2312
  %75 = add i64 %gcov_ctr283, 1, !dbg !2312
  store i64 %75, i64* getelementptr inbounds ([28 x i64], [28 x i64]* @__llvm_gcov_ctr.82, i64 0, i64 17), align 8, !dbg !2312
  %76 = load %struct._mc_resp*, %struct._mc_resp** %resp, align 8, !dbg !2314, !tbaa !1640
  %77 = bitcast %struct._stritem* %it.0 to i8*, !dbg !2315
  %78 = load i32, i32* %nbytes, align 8, !dbg !2316, !tbaa !873
  %sub199 = add nsw i32 %78, -2, !dbg !2317
  tail call void @resp_add_chunked_iov(%struct._mc_resp* noundef %76, i8* noundef nonnull %77, i32 noundef %sub199) #16, !dbg !2318
  br label %if.then204

if.then204:                                       ; preds = %if.end143, %if.else196, %if.then174, %if.end202.thread406
  tail call void @conn_set_state(%struct.conn* noundef nonnull %c, i32 noundef 1) #16, !dbg !2319
  %79 = load i16, i16* %it_flags, align 2, !dbg !2322, !tbaa !866
  %80 = and i16 %79, 128, !dbg !2324
  %cmp208.not = icmp eq i16 %80, 0, !dbg !2325
  br i1 %cmp208.not, label %if.else213, label %land.lhs.true, !dbg !2326

land.lhs.true:                                    ; preds = %if.then204
  %gcov_ctr284 = load i64, i64* getelementptr inbounds ([28 x i64], [28 x i64]* @__llvm_gcov_ctr.82, i64 0, i64 18), align 16, !dbg !2327
  %81 = add i64 %gcov_ctr284, 1, !dbg !2327
  store i64 %81, i64* getelementptr inbounds ([28 x i64], [28 x i64]* @__llvm_gcov_ctr.82, i64 0, i64 18), align 16, !dbg !2327
  br i1 %cmp, label %if.else213, label %if.then211, !dbg !2328

if.then211:                                       ; preds = %land.lhs.true
  %gcov_ctr285 = load i64, i64* getelementptr inbounds ([28 x i64], [28 x i64]* @__llvm_gcov_ctr.82, i64 0, i64 19), align 8, !dbg !2329
  %82 = add i64 %gcov_ctr285, 1, !dbg !2329
  store i64 %82, i64* getelementptr inbounds ([28 x i64], [28 x i64]* @__llvm_gcov_ctr.82, i64 0, i64 19), align 8, !dbg !2329
  %83 = load %struct._mc_resp*, %struct._mc_resp** %resp, align 8, !dbg !2331, !tbaa !1640
  %item = getelementptr inbounds %struct._mc_resp, %struct._mc_resp* %83, i64 0, i32 6, !dbg !2332
  store %struct._stritem* null, %struct._stritem** %item, align 8, !dbg !2333, !tbaa !2334
  br label %if.end261, !dbg !2335

if.else213:                                       ; preds = %land.lhs.true, %if.then204
  %gcov_ctr286 = load i64, i64* getelementptr inbounds ([28 x i64], [28 x i64]* @__llvm_gcov_ctr.82, i64 0, i64 20), align 16, !dbg !2336
  %84 = add i64 %gcov_ctr286, 1, !dbg !2336
  store i64 %84, i64* getelementptr inbounds ([28 x i64], [28 x i64]* @__llvm_gcov_ctr.82, i64 0, i64 20), align 16, !dbg !2336
  %85 = load %struct._mc_resp*, %struct._mc_resp** %resp, align 8, !dbg !2338, !tbaa !1640
  %item215 = getelementptr inbounds %struct._mc_resp, %struct._mc_resp* %85, i64 0, i32 6, !dbg !2339
  store %struct._stritem* %it.0, %struct._stritem** %item215, align 8, !dbg !2340, !tbaa !2334
  br label %if.end261

if.else219:                                       ; preds = %if.end41
  %gcov_ctr272 = load i64, i64* getelementptr inbounds ([28 x i64], [28 x i64]* @__llvm_gcov_ctr.82, i64 0, i64 6), align 16, !dbg !2341
  %86 = add i64 %gcov_ctr272, 1, !dbg !2341
  store i64 %86, i64* getelementptr inbounds ([28 x i64], [28 x i64]* @__llvm_gcov_ctr.82, i64 0, i64 6), align 16, !dbg !2341
  call void @llvm.dbg.value(metadata i8 1, metadata !2145, metadata !DIExpression()), !dbg !2167
  %thread223412 = getelementptr inbounds %struct.conn, %struct.conn* %c, i64 0, i32 43, !dbg !2343
  %87 = load %struct.LIBEVENT_THREAD*, %struct.LIBEVENT_THREAD** %thread223412, align 8, !dbg !2343, !tbaa !853
  %mutex225413 = getelementptr inbounds %struct.LIBEVENT_THREAD, %struct.LIBEVENT_THREAD* %87, i64 0, i32 4, i32 0, !dbg !2346
  %call226414 = tail call i32 @pthread_mutex_lock(%union.pthread_mutex_t* noundef nonnull %mutex225413) #16, !dbg !2347
  br i1 %18, label %if.end244.thread, label %if.else251, !dbg !2348

if.then222:                                       ; preds = %if.then150
  %gcov_ctr280 = load i64, i64* getelementptr inbounds ([28 x i64], [28 x i64]* @__llvm_gcov_ctr.82, i64 0, i64 14), align 16, !dbg !2349
  %88 = add i64 %gcov_ctr280, 1, !dbg !2349
  store i64 %88, i64* getelementptr inbounds ([28 x i64], [28 x i64]* @__llvm_gcov_ctr.82, i64 0, i64 14), align 16, !dbg !2349
  %89 = load %struct.LIBEVENT_THREAD*, %struct.LIBEVENT_THREAD** %thread, align 8, !dbg !2351, !tbaa !853
  %mutex158 = getelementptr inbounds %struct.LIBEVENT_THREAD, %struct.LIBEVENT_THREAD* %89, i64 0, i32 4, i32 0, !dbg !2352
  %call159 = tail call i32 @pthread_mutex_lock(%union.pthread_mutex_t* noundef nonnull %mutex158) #16, !dbg !2353
  %90 = load %struct.LIBEVENT_THREAD*, %struct.LIBEVENT_THREAD** %thread, align 8, !dbg !2354, !tbaa !853
  %get_oom_extstore = getelementptr inbounds %struct.LIBEVENT_THREAD, %struct.LIBEVENT_THREAD* %90, i64 0, i32 4, i32 27, !dbg !2355
  %91 = load i64, i64* %get_oom_extstore, align 8, !dbg !2356, !tbaa !2357
  %inc162 = add i64 %91, 1, !dbg !2356
  store i64 %inc162, i64* %get_oom_extstore, align 8, !dbg !2356, !tbaa !2357
  %mutex165 = getelementptr inbounds %struct.LIBEVENT_THREAD, %struct.LIBEVENT_THREAD* %90, i64 0, i32 4, i32 0, !dbg !2358
  %call166 = tail call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* noundef nonnull %mutex165) #16, !dbg !2359
  call void @llvm.dbg.value(metadata i8 1, metadata !2145, metadata !DIExpression()), !dbg !2167
  %gcov_ctr281 = load i64, i64* getelementptr inbounds ([28 x i64], [28 x i64]* @__llvm_gcov_ctr.82, i64 0, i64 15), align 8, !dbg !2298
  %92 = add i64 %gcov_ctr281, 1, !dbg !2298
  store i64 %92, i64* getelementptr inbounds ([28 x i64], [28 x i64]* @__llvm_gcov_ctr.82, i64 0, i64 15), align 8, !dbg !2298
  %gcov_ctr287 = load i64, i64* getelementptr inbounds ([28 x i64], [28 x i64]* @__llvm_gcov_ctr.82, i64 0, i64 21), align 8, !dbg !2360
  %93 = add i64 %gcov_ctr287, 1, !dbg !2360
  store i64 %93, i64* getelementptr inbounds ([28 x i64], [28 x i64]* @__llvm_gcov_ctr.82, i64 0, i64 21), align 8, !dbg !2360
  tail call void @item_remove(%struct._stritem* noundef nonnull %it.0) #16, !dbg !2362
  %94 = load %struct.LIBEVENT_THREAD*, %struct.LIBEVENT_THREAD** %thread, align 8, !dbg !2343, !tbaa !853
  %mutex225 = getelementptr inbounds %struct.LIBEVENT_THREAD, %struct.LIBEVENT_THREAD* %94, i64 0, i32 4, i32 0, !dbg !2346
  %call226 = tail call i32 @pthread_mutex_lock(%union.pthread_mutex_t* noundef nonnull %mutex225) #16, !dbg !2347
  br i1 %18, label %if.end244.thread, label %if.else251, !dbg !2348

if.end244.thread:                                 ; preds = %if.then222, %if.else219
  %thread223415 = phi %struct.LIBEVENT_THREAD** [ %thread223412, %if.else219 ], [ %thread, %if.then222 ]
  %95 = load %struct.LIBEVENT_THREAD*, %struct.LIBEVENT_THREAD** %thread223415, align 8, !dbg !2363, !tbaa !853
  %touch_cmds231 = getelementptr inbounds %struct.LIBEVENT_THREAD, %struct.LIBEVENT_THREAD* %95, i64 0, i32 4, i32 5, !dbg !2366
  %96 = bitcast i64* %touch_cmds231 to <2 x i64>*, !dbg !2367
  %97 = load <2 x i64>, <2 x i64>* %96, align 8, !dbg !2367, !tbaa !1071
  %98 = add <2 x i64> %97, <i64 1, i64 1>, !dbg !2367
  %99 = bitcast i64* %touch_cmds231 to <2 x i64>*, !dbg !2367
  store <2 x i64> %98, <2 x i64>* %99, align 8, !dbg !2367, !tbaa !1071
  %mutex247419 = getelementptr inbounds %struct.LIBEVENT_THREAD, %struct.LIBEVENT_THREAD* %95, i64 0, i32 4, i32 0, !dbg !2368
  %call248420 = tail call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* noundef nonnull %mutex247419) #16, !dbg !2369
  br label %if.end252, !dbg !2370

if.else251:                                       ; preds = %if.else219, %if.then222
  %thread223417 = phi %struct.LIBEVENT_THREAD** [ %thread223412, %if.else219 ], [ %thread, %if.then222 ]
  %gcov_ctr288 = load i64, i64* getelementptr inbounds ([28 x i64], [28 x i64]* @__llvm_gcov_ctr.82, i64 0, i64 22), align 16, !dbg !2371
  %100 = add i64 %gcov_ctr288, 1, !dbg !2371
  store i64 %100, i64* getelementptr inbounds ([28 x i64], [28 x i64]* @__llvm_gcov_ctr.82, i64 0, i64 22), align 16, !dbg !2371
  %101 = load %struct.LIBEVENT_THREAD*, %struct.LIBEVENT_THREAD** %thread223417, align 8, !dbg !2373, !tbaa !853
  %get_cmds239 = getelementptr inbounds %struct.LIBEVENT_THREAD, %struct.LIBEVENT_THREAD* %101, i64 0, i32 4, i32 1, !dbg !2374
  %102 = bitcast i64* %get_cmds239 to <2 x i64>*, !dbg !2375
  %103 = load <2 x i64>, <2 x i64>* %102, align 8, !dbg !2375, !tbaa !1071
  %104 = add <2 x i64> %103, <i64 1, i64 1>, !dbg !2375
  %105 = bitcast i64* %get_cmds239 to <2 x i64>*, !dbg !2375
  store <2 x i64> %104, <2 x i64>* %105, align 8, !dbg !2375, !tbaa !1071
  %mutex247 = getelementptr inbounds %struct.LIBEVENT_THREAD, %struct.LIBEVENT_THREAD* %101, i64 0, i32 4, i32 0, !dbg !2368
  %call248 = tail call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* noundef nonnull %mutex247) #16, !dbg !2369
  %gcov_ctr289 = load i64, i64* getelementptr inbounds ([28 x i64], [28 x i64]* @__llvm_gcov_ctr.82, i64 0, i64 23), align 8
  %106 = add i64 %gcov_ctr289, 1
  store i64 %106, i64* getelementptr inbounds ([28 x i64], [28 x i64]* @__llvm_gcov_ctr.82, i64 0, i64 23), align 8
  br label %if.end252

if.end252:                                        ; preds = %if.end244.thread, %if.else251
  %noreply = getelementptr inbounds %struct.conn, %struct.conn* %c, i64 0, i32 34, !dbg !2376
  %107 = load i8, i8* %noreply, align 4, !dbg !2376, !tbaa !1354, !range !966
  %tobool253.not = icmp eq i8 %107, 0, !dbg !2376
  br i1 %tobool253.not, label %if.else255, label %if.then254, !dbg !2378

if.then254:                                       ; preds = %if.end252
  %gcov_ctr290 = load i64, i64* getelementptr inbounds ([28 x i64], [28 x i64]* @__llvm_gcov_ctr.82, i64 0, i64 24), align 16, !dbg !2379
  %108 = add i64 %gcov_ctr290, 1, !dbg !2379
  store i64 %108, i64* getelementptr inbounds ([28 x i64], [28 x i64]* @__llvm_gcov_ctr.82, i64 0, i64 24), align 16, !dbg !2379
  tail call void @conn_set_state(%struct.conn* noundef nonnull %c, i32 noundef 1) #16, !dbg !2381
  br label %if.end261, !dbg !2382

if.else255:                                       ; preds = %if.end252
  br i1 %8, label %if.then257, label %if.else258, !dbg !2383

if.then257:                                       ; preds = %if.else255
  %gcov_ctr292 = load i64, i64* getelementptr inbounds ([28 x i64], [28 x i64]* @__llvm_gcov_ctr.82, i64 0, i64 26), align 16, !dbg !2385
  %109 = add i64 %gcov_ctr292, 1, !dbg !2385
  store i64 %109, i64* getelementptr inbounds ([28 x i64], [28 x i64]* @__llvm_gcov_ctr.82, i64 0, i64 26), align 16, !dbg !2385
  tail call fastcc void @write_bin_miss_response(%struct.conn* noundef nonnull %c, i8* noundef %call, i64 noundef %conv) #15, !dbg !2388
  br label %if.end261, !dbg !2389

if.else258:                                       ; preds = %if.else255
  %gcov_ctr291 = load i64, i64* getelementptr inbounds ([28 x i64], [28 x i64]* @__llvm_gcov_ctr.82, i64 0, i64 25), align 8, !dbg !2390
  %110 = add i64 %gcov_ctr291, 1, !dbg !2390
  store i64 %110, i64* getelementptr inbounds ([28 x i64], [28 x i64]* @__llvm_gcov_ctr.82, i64 0, i64 25), align 8, !dbg !2390
  tail call fastcc void @write_bin_miss_response(%struct.conn* noundef nonnull %c, i8* noundef null, i64 noundef 0) #15, !dbg !2392
  br label %if.end261

if.end261:                                        ; preds = %if.else213, %if.then211, %if.then254, %if.else258, %if.then257
  %111 = load i32, i32* getelementptr inbounds (%struct.settings, %struct.settings* @settings, i64 0, i32 17), align 8, !dbg !2393, !tbaa !2037
  %tobool262.not = icmp eq i32 %111, 0, !dbg !2395
  br i1 %tobool262.not, label %if.end266, label %if.then263, !dbg !2396

if.then263:                                       ; preds = %if.end261
  %gcov_ctr293 = load i64, i64* getelementptr inbounds ([28 x i64], [28 x i64]* @__llvm_gcov_ctr.82, i64 0, i64 27), align 8, !dbg !2397
  %112 = add i64 %gcov_ctr293, 1, !dbg !2397
  store i64 %112, i64* getelementptr inbounds ([28 x i64], [28 x i64]* @__llvm_gcov_ctr.82, i64 0, i64 27), align 8, !dbg !2397
  tail call void @stats_prefix_record_get(i8* noundef %call, i64 noundef %conv, i1 noundef zeroext %tobool42) #16, !dbg !2399
  br label %if.end266, !dbg !2400

if.end266:                                        ; preds = %if.then263, %if.end261
  ret void, !dbg !2401
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @process_bin_delete(%struct.conn* noundef %c) unnamed_addr #0 !dbg !2402 {
entry:
  %hv = alloca i32, align 4
  call void @llvm.dbg.value(metadata %struct.conn* %c, metadata !2404, metadata !DIExpression()), !dbg !2415
  %0 = bitcast i32* %hv to i8*, !dbg !2416
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #17, !dbg !2416
  %cmp.not = icmp eq %struct.conn* %c, null, !dbg !2417
  br i1 %cmp.not, label %if.else, label %if.end, !dbg !2420

if.else:                                          ; preds = %entry
  %gcov_ctr = load i64, i64* getelementptr inbounds ([9 x i64], [9 x i64]* @__llvm_gcov_ctr.83, i64 0, i64 0), align 16, !dbg !2417
  %1 = add i64 %gcov_ctr, 1, !dbg !2417
  store i64 %1, i64* getelementptr inbounds ([9 x i64], [9 x i64]* @__llvm_gcov_ctr.83, i64 0, i64 0), align 16, !dbg !2417
  tail call void @__assert_fail(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 noundef 1289, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @__PRETTY_FUNCTION__.process_bin_delete, i64 0, i64 0)) #14, !dbg !2417
  unreachable, !dbg !2417

if.end:                                           ; preds = %entry
  %call = tail call fastcc i8* @binary_get_key(%struct.conn* noundef nonnull %c) #15, !dbg !2421
  call void @llvm.dbg.value(metadata i8* %call, metadata !2407, metadata !DIExpression()), !dbg !2415
  %keylen = getelementptr inbounds %struct.conn, %struct.conn* %c, i64 0, i32 36, i32 0, i32 2, !dbg !2422
  %2 = load i16, i16* %keylen, align 2, !dbg !2422, !tbaa !858
  %conv = zext i16 %2 to i64, !dbg !2423
  call void @llvm.dbg.value(metadata i64 %conv, metadata !2408, metadata !DIExpression()), !dbg !2415
  %3 = load i32, i32* getelementptr inbounds (%struct.settings, %struct.settings* @settings, i64 0, i32 5), align 8, !dbg !2424, !tbaa !997
  %cmp1 = icmp sgt i32 %3, 1, !dbg !2425
  br i1 %cmp1, label %if.then3, label %if.end11, !dbg !2426

if.then3:                                         ; preds = %if.end
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2427, !tbaa !830
  %call4 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %4, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.47, i64 0, i64 0)) #16, !dbg !2428
  call void @llvm.dbg.value(metadata i32 0, metadata !2409, metadata !DIExpression()), !dbg !2429
  %cmp698.not = icmp eq i16 %2, 0, !dbg !2430
  br i1 %cmp698.not, label %for.end, label %for.body, !dbg !2433

for.body:                                         ; preds = %if.then3, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %if.then3 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !2409, metadata !DIExpression()), !dbg !2429
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2434, !tbaa !830
  %arrayidx = getelementptr inbounds i8, i8* %call, i64 %indvars.iv, !dbg !2436
  %6 = load i8, i8* %arrayidx, align 1, !dbg !2436, !tbaa !858
  %conv8 = sext i8 %6 to i32, !dbg !2436
  %call9 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %5, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.41, i64 0, i64 0), i32 noundef %conv8) #16, !dbg !2437
  %gcov_ctr56 = load i64, i64* getelementptr inbounds ([9 x i64], [9 x i64]* @__llvm_gcov_ctr.83, i64 0, i64 1), align 8, !dbg !2438
  %7 = add i64 %gcov_ctr56, 1, !dbg !2438
  store i64 %7, i64* getelementptr inbounds ([9 x i64], [9 x i64]* @__llvm_gcov_ctr.83, i64 0, i64 1), align 8, !dbg !2438
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !2438
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !2409, metadata !DIExpression()), !dbg !2429
  %exitcond.not = icmp eq i64 %indvars.iv.next, %conv, !dbg !2430
  br i1 %exitcond.not, label %for.end, label %for.body, !dbg !2433, !llvm.loop !2439

for.end:                                          ; preds = %for.body, %if.then3
  %gcov_ctr57 = load i64, i64* getelementptr inbounds ([9 x i64], [9 x i64]* @__llvm_gcov_ctr.83, i64 0, i64 2), align 16, !dbg !2441
  %8 = add i64 %gcov_ctr57, 1, !dbg !2441
  store i64 %8, i64* getelementptr inbounds ([9 x i64], [9 x i64]* @__llvm_gcov_ctr.83, i64 0, i64 2), align 16, !dbg !2441
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2441, !tbaa !830
  %call10 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %9, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0)) #16, !dbg !2442
  br label %if.end11, !dbg !2443

if.end11:                                         ; preds = %for.end, %if.end
  %10 = load i32, i32* getelementptr inbounds (%struct.settings, %struct.settings* @settings, i64 0, i32 17), align 8, !dbg !2444, !tbaa !2037
  %tobool.not = icmp eq i32 %10, 0, !dbg !2446
  br i1 %tobool.not, label %if.end13, label %if.then12, !dbg !2447

if.then12:                                        ; preds = %if.end11
  %gcov_ctr58 = load i64, i64* getelementptr inbounds ([9 x i64], [9 x i64]* @__llvm_gcov_ctr.83, i64 0, i64 3), align 8, !dbg !2448
  %11 = add i64 %gcov_ctr58, 1, !dbg !2448
  store i64 %11, i64* getelementptr inbounds ([9 x i64], [9 x i64]* @__llvm_gcov_ctr.83, i64 0, i64 3), align 8, !dbg !2448
  tail call void @stats_prefix_record_delete(i8* noundef %call, i64 noundef %conv) #16, !dbg !2450
  br label %if.end13, !dbg !2451

if.end13:                                         ; preds = %if.then12, %if.end11
  call void @llvm.dbg.value(metadata i32* %hv, metadata !2406, metadata !DIExpression(DW_OP_deref)), !dbg !2415
  %call14 = call %struct._stritem* @item_get_locked(i8* noundef %call, i64 noundef %conv, %struct.conn* noundef nonnull %c, i1 noundef zeroext false, i32* noundef nonnull %hv) #16, !dbg !2452
  call void @llvm.dbg.value(metadata %struct._stritem* %call14, metadata !2405, metadata !DIExpression()), !dbg !2415
  %tobool15.not = icmp eq %struct._stritem* %call14, null, !dbg !2453
  br i1 %tobool15.not, label %if.else43, label %if.then16, !dbg !2454

if.then16:                                        ; preds = %if.end13
  %cas19 = getelementptr inbounds %struct.conn, %struct.conn* %c, i64 0, i32 36, i32 0, i32 8, !dbg !2455
  %12 = load i64, i64* %cas19, align 8, !dbg !2455, !tbaa !858
  call void @llvm.dbg.value(metadata i64 %12, metadata !2412, metadata !DIExpression()), !dbg !2456
  %cmp20 = icmp eq i64 %12, 0, !dbg !2457
  br i1 %cmp20, label %if.then27, label %lor.lhs.false, !dbg !2459

lor.lhs.false:                                    ; preds = %if.then16
  %it_flags = getelementptr inbounds %struct._stritem, %struct._stritem* %call14, i64 0, i32 7, !dbg !2460
  %13 = load i16, i16* %it_flags, align 2, !dbg !2460, !tbaa !866
  %14 = and i16 %13, 2, !dbg !2460
  %tobool23.not = icmp eq i16 %14, 0, !dbg !2460
  br i1 %tobool23.not, label %cond.end.thread, label %cond.end, !dbg !2460

cond.end.thread:                                  ; preds = %lor.lhs.false
  %gcov_ctr60 = load i64, i64* getelementptr inbounds ([9 x i64], [9 x i64]* @__llvm_gcov_ctr.83, i64 0, i64 5), align 8, !dbg !2460
  %15 = add i64 %gcov_ctr60, 1, !dbg !2460
  store i64 %15, i64* getelementptr inbounds ([9 x i64], [9 x i64]* @__llvm_gcov_ctr.83, i64 0, i64 5), align 8, !dbg !2460
  br label %if.else41, !dbg !2461

cond.end:                                         ; preds = %lor.lhs.false
  %gcov_ctr59 = load i64, i64* getelementptr inbounds ([9 x i64], [9 x i64]* @__llvm_gcov_ctr.83, i64 0, i64 4), align 16, !dbg !2460
  %16 = add i64 %gcov_ctr59, 1, !dbg !2460
  store i64 %16, i64* getelementptr inbounds ([9 x i64], [9 x i64]* @__llvm_gcov_ctr.83, i64 0, i64 4), align 16, !dbg !2460
  %cas24 = getelementptr inbounds %struct._stritem, %struct._stritem* %call14, i64 0, i32 10, i64 0, i32 0, !dbg !2460
  %17 = load i64, i64* %cas24, align 8, !dbg !2460, !tbaa !858
  %cmp25 = icmp eq i64 %12, %17, !dbg !2462
  br i1 %cmp25, label %if.then27, label %if.else41, !dbg !2461

if.then27:                                        ; preds = %cond.end, %if.then16
  %thread = getelementptr inbounds %struct.conn, %struct.conn* %c, i64 0, i32 43, !dbg !2463
  %18 = load %struct.LIBEVENT_THREAD*, %struct.LIBEVENT_THREAD** %thread, align 8, !dbg !2463, !tbaa !853
  %mutex = getelementptr inbounds %struct.LIBEVENT_THREAD, %struct.LIBEVENT_THREAD* %18, i64 0, i32 4, i32 0, !dbg !2465
  %call28 = call i32 @pthread_mutex_lock(%union.pthread_mutex_t* noundef nonnull %mutex) #16, !dbg !2466
  %19 = load %struct.LIBEVENT_THREAD*, %struct.LIBEVENT_THREAD** %thread, align 8, !dbg !2467, !tbaa !853
  %slabs_clsid = getelementptr inbounds %struct._stritem, %struct._stritem* %call14, i64 0, i32 8, !dbg !2468
  %20 = load i8, i8* %slabs_clsid, align 8, !dbg !2468, !tbaa !858
  %21 = and i8 %20, 63, !dbg !2468
  %22 = zext i8 %21 to i64
  %delete_hits = getelementptr inbounds %struct.LIBEVENT_THREAD, %struct.LIBEVENT_THREAD* %19, i64 0, i32 4, i32 31, i64 %22, i32 3, !dbg !2469
  %23 = load i64, i64* %delete_hits, align 8, !dbg !2470, !tbaa !2471
  %inc35 = add i64 %23, 1, !dbg !2470
  store i64 %inc35, i64* %delete_hits, align 8, !dbg !2470, !tbaa !2471
  %mutex38 = getelementptr inbounds %struct.LIBEVENT_THREAD, %struct.LIBEVENT_THREAD* %19, i64 0, i32 4, i32 0, !dbg !2472
  %call39 = call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* noundef nonnull %mutex38) #16, !dbg !2473
  %24 = load i32, i32* %hv, align 4, !dbg !2474, !tbaa !873
  call void @llvm.dbg.value(metadata i32 %24, metadata !2406, metadata !DIExpression()), !dbg !2415
  call void @do_item_unlink(%struct._stritem* noundef nonnull %call14, i32 noundef %24) #16, !dbg !2475
  %25 = load %struct.LIBEVENT_THREAD*, %struct.LIBEVENT_THREAD** %thread, align 8, !dbg !2476, !tbaa !853
  %storage = getelementptr inbounds %struct.LIBEVENT_THREAD, %struct.LIBEVENT_THREAD* %25, i64 0, i32 10, !dbg !2476
  %26 = load i8*, i8** %storage, align 8, !dbg !2476, !tbaa !2089
  call void @storage_delete(i8* noundef %26, %struct._stritem* noundef nonnull %call14) #16, !dbg !2476
  %gcov_ctr61 = load i64, i64* getelementptr inbounds ([9 x i64], [9 x i64]* @__llvm_gcov_ctr.83, i64 0, i64 6), align 16, !dbg !2478
  %27 = add i64 %gcov_ctr61, 1, !dbg !2478
  store i64 %27, i64* getelementptr inbounds ([9 x i64], [9 x i64]* @__llvm_gcov_ctr.83, i64 0, i64 6), align 16, !dbg !2478
  call fastcc void @write_bin_response(%struct.conn* noundef nonnull %c, i8* noundef null, i32 noundef 0) #15, !dbg !2479
  br label %if.end42, !dbg !2480

if.else41:                                        ; preds = %cond.end.thread, %cond.end
  %gcov_ctr62 = load i64, i64* getelementptr inbounds ([9 x i64], [9 x i64]* @__llvm_gcov_ctr.83, i64 0, i64 7), align 8, !dbg !2481
  %28 = add i64 %gcov_ctr62, 1, !dbg !2481
  store i64 %28, i64* getelementptr inbounds ([9 x i64], [9 x i64]* @__llvm_gcov_ctr.83, i64 0, i64 7), align 8, !dbg !2481
  call void @write_bin_error(%struct.conn* noundef nonnull %c, i32 noundef 2, i8* noundef null, i32 noundef 0) #15, !dbg !2483
  br label %if.end42

if.end42:                                         ; preds = %if.else41, %if.then27
  call void @do_item_remove(%struct._stritem* noundef nonnull %call14) #16, !dbg !2484
  br label %if.end55, !dbg !2485

if.else43:                                        ; preds = %if.end13
  %gcov_ctr63 = load i64, i64* getelementptr inbounds ([9 x i64], [9 x i64]* @__llvm_gcov_ctr.83, i64 0, i64 8), align 16, !dbg !2486
  %29 = add i64 %gcov_ctr63, 1, !dbg !2486
  store i64 %29, i64* getelementptr inbounds ([9 x i64], [9 x i64]* @__llvm_gcov_ctr.83, i64 0, i64 8), align 16, !dbg !2486
  call void @write_bin_error(%struct.conn* noundef nonnull %c, i32 noundef 1, i8* noundef null, i32 noundef 0) #15, !dbg !2488
  %thread44 = getelementptr inbounds %struct.conn, %struct.conn* %c, i64 0, i32 43, !dbg !2489
  %30 = load %struct.LIBEVENT_THREAD*, %struct.LIBEVENT_THREAD** %thread44, align 8, !dbg !2489, !tbaa !853
  %mutex46 = getelementptr inbounds %struct.LIBEVENT_THREAD, %struct.LIBEVENT_THREAD* %30, i64 0, i32 4, i32 0, !dbg !2490
  %call47 = call i32 @pthread_mutex_lock(%union.pthread_mutex_t* noundef nonnull %mutex46) #16, !dbg !2491
  %31 = load %struct.LIBEVENT_THREAD*, %struct.LIBEVENT_THREAD** %thread44, align 8, !dbg !2492, !tbaa !853
  %delete_misses = getelementptr inbounds %struct.LIBEVENT_THREAD, %struct.LIBEVENT_THREAD* %31, i64 0, i32 4, i32 7, !dbg !2493
  %32 = load i64, i64* %delete_misses, align 8, !dbg !2494, !tbaa !2495
  %inc50 = add i64 %32, 1, !dbg !2494
  store i64 %inc50, i64* %delete_misses, align 8, !dbg !2494, !tbaa !2495
  %mutex53 = getelementptr inbounds %struct.LIBEVENT_THREAD, %struct.LIBEVENT_THREAD* %31, i64 0, i32 4, i32 0, !dbg !2496
  %call54 = call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* noundef nonnull %mutex53) #16, !dbg !2497
  br label %if.end55

if.end55:                                         ; preds = %if.else43, %if.end42
  %33 = load i32, i32* %hv, align 4, !dbg !2498, !tbaa !873
  call void @llvm.dbg.value(metadata i32 %33, metadata !2406, metadata !DIExpression()), !dbg !2415
  call void @item_unlock(i32 noundef %33) #16, !dbg !2499
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #17, !dbg !2500
  ret void, !dbg !2500
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @complete_incr_bin(%struct.conn* noundef %c, i8* nocapture noundef %extbuf) unnamed_addr #0 !dbg !2501 {
entry:
  %tmpbuf = alloca [24 x i8], align 16
  %cas = alloca i64, align 8
  call void @llvm.dbg.value(metadata %struct.conn* %c, metadata !2503, metadata !DIExpression()), !dbg !2538
  call void @llvm.dbg.value(metadata i8* %extbuf, metadata !2504, metadata !DIExpression()), !dbg !2538
  %0 = getelementptr inbounds [24 x i8], [24 x i8]* %tmpbuf, i64 0, i64 0, !dbg !2539
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %0) #17, !dbg !2539
  call void @llvm.dbg.declare(metadata [24 x i8]* %tmpbuf, metadata !2508, metadata !DIExpression()), !dbg !2540
  %1 = bitcast i64* %cas to i8*, !dbg !2541
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #17, !dbg !2541
  call void @llvm.dbg.value(metadata i64 0, metadata !2510, metadata !DIExpression()), !dbg !2538
  store i64 0, i64* %cas, align 8, !dbg !2542, !tbaa !1071
  %cmp.not = icmp eq %struct.conn* %c, null, !dbg !2543
  br i1 %cmp.not, label %if.else, label %if.then, !dbg !2546

if.then:                                          ; preds = %entry
  %gcov_ctr = load i64, i64* getelementptr inbounds ([16 x i64], [16 x i64]* @__llvm_gcov_ctr.84, i64 0, i64 0), align 16, !dbg !2546
  %2 = add i64 %gcov_ctr, 1, !dbg !2546
  store i64 %2, i64* getelementptr inbounds ([16 x i64], [16 x i64]* @__llvm_gcov_ctr.84, i64 0, i64 0), align 16, !dbg !2546
  %resp = getelementptr inbounds %struct.conn, %struct.conn* %c, i64 0, i32 19, !dbg !2547
  %3 = load %struct._mc_resp*, %struct._mc_resp** %resp, align 8, !dbg !2547, !tbaa !1640
  call void @llvm.dbg.value(metadata %struct._mc_resp* %3, metadata !2511, metadata !DIExpression(DW_OP_plus_uconst, 160, DW_OP_stack_value)), !dbg !2538
  call void @llvm.dbg.value(metadata i8* %extbuf, metadata !2512, metadata !DIExpression()), !dbg !2538
  %body = getelementptr inbounds i8, i8* %extbuf, i64 24, !dbg !2548
  %delta = bitcast i8* %body to i64*, !dbg !2549
  %4 = load i64, i64* %delta, align 8, !dbg !2549, !tbaa !858
  %call = tail call i64 @ntohll(i64 noundef %4) #16, !dbg !2550
  store i64 %call, i64* %delta, align 8, !dbg !2551, !tbaa !858
  %initial = getelementptr inbounds i8, i8* %extbuf, i64 32, !dbg !2552
  %5 = bitcast i8* %initial to i64*, !dbg !2552
  %6 = load i64, i64* %5, align 8, !dbg !2552, !tbaa !858
  %call6 = tail call i64 @ntohll(i64 noundef %6) #16, !dbg !2553
  store i64 %call6, i64* %5, align 8, !dbg !2554, !tbaa !858
  %expiration = getelementptr inbounds i8, i8* %extbuf, i64 40, !dbg !2555
  %7 = bitcast i8* %expiration to i32*, !dbg !2555
  %8 = load i32, i32* %7, align 8, !dbg !2555, !tbaa !858
  %call12 = tail call fastcc i32 @__bswap_32(i32 noundef %8) #15, !dbg !2555
  store i32 %call12, i32* %7, align 8, !dbg !2556, !tbaa !858
  %call16 = tail call fastcc i8* @binary_get_key(%struct.conn* noundef nonnull %c) #15, !dbg !2557
  call void @llvm.dbg.value(metadata i8* %call16, metadata !2506, metadata !DIExpression()), !dbg !2538
  %keylen = getelementptr inbounds %struct.conn, %struct.conn* %c, i64 0, i32 36, i32 0, i32 2, !dbg !2558
  %9 = load i16, i16* %keylen, align 2, !dbg !2558, !tbaa !858
  %conv = zext i16 %9 to i64, !dbg !2559
  call void @llvm.dbg.value(metadata i64 %conv, metadata !2507, metadata !DIExpression()), !dbg !2538
  %10 = load i32, i32* getelementptr inbounds (%struct.settings, %struct.settings* @settings, i64 0, i32 5), align 8, !dbg !2560, !tbaa !997
  %cmp17 = icmp sgt i32 %10, 1, !dbg !2561
  br i1 %cmp17, label %if.then19, label %if.end36, !dbg !2562

if.else:                                          ; preds = %entry
  %gcov_ctr173 = load i64, i64* getelementptr inbounds ([16 x i64], [16 x i64]* @__llvm_gcov_ctr.84, i64 0, i64 1), align 8, !dbg !2543
  %11 = add i64 %gcov_ctr173, 1, !dbg !2543
  store i64 %11, i64* getelementptr inbounds ([16 x i64], [16 x i64]* @__llvm_gcov_ctr.84, i64 0, i64 1), align 8, !dbg !2543
  tail call void @__assert_fail(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 noundef 268, i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @__PRETTY_FUNCTION__.complete_incr_bin, i64 0, i64 0)) #14, !dbg !2543
  unreachable, !dbg !2543

if.then19:                                        ; preds = %if.then
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2563, !tbaa !830
  %call20 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %12, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.48, i64 0, i64 0)) #16, !dbg !2564
  call void @llvm.dbg.value(metadata i32 0, metadata !2531, metadata !DIExpression()), !dbg !2565
  %cmp22254.not = icmp eq i16 %9, 0, !dbg !2566
  br i1 %cmp22254.not, label %for.end, label %for.body, !dbg !2569

for.body:                                         ; preds = %if.then19, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %if.then19 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !2531, metadata !DIExpression()), !dbg !2565
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2570, !tbaa !830
  %arrayidx = getelementptr inbounds i8, i8* %call16, i64 %indvars.iv, !dbg !2572
  %14 = load i8, i8* %arrayidx, align 1, !dbg !2572, !tbaa !858
  %conv24 = sext i8 %14 to i32, !dbg !2572
  %call25 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %13, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.41, i64 0, i64 0), i32 noundef %conv24) #16, !dbg !2573
  %gcov_ctr174 = load i64, i64* getelementptr inbounds ([16 x i64], [16 x i64]* @__llvm_gcov_ctr.84, i64 0, i64 2), align 16, !dbg !2574
  %15 = add i64 %gcov_ctr174, 1, !dbg !2574
  store i64 %15, i64* getelementptr inbounds ([16 x i64], [16 x i64]* @__llvm_gcov_ctr.84, i64 0, i64 2), align 16, !dbg !2574
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !2574
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !2531, metadata !DIExpression()), !dbg !2565
  %exitcond.not = icmp eq i64 %indvars.iv.next, %conv, !dbg !2566
  br i1 %exitcond.not, label %for.end, label %for.body, !dbg !2569, !llvm.loop !2575

for.end:                                          ; preds = %for.body, %if.then19
  %gcov_ctr175 = load i64, i64* getelementptr inbounds ([16 x i64], [16 x i64]* @__llvm_gcov_ctr.84, i64 0, i64 3), align 8, !dbg !2577
  %16 = add i64 %gcov_ctr175, 1, !dbg !2577
  store i64 %16, i64* getelementptr inbounds ([16 x i64], [16 x i64]* @__llvm_gcov_ctr.84, i64 0, i64 3), align 8, !dbg !2577
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2577, !tbaa !830
  %18 = load i64, i64* %delta, align 8, !dbg !2578, !tbaa !858
  %19 = load i64, i64* %5, align 8, !dbg !2579, !tbaa !858
  %20 = load i32, i32* %7, align 8, !dbg !2580, !tbaa !858
  %call35 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %17, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.49, i64 0, i64 0), i64 noundef %18, i64 noundef %19, i32 noundef %20) #16, !dbg !2581
  br label %if.end36, !dbg !2582

if.end36:                                         ; preds = %for.end, %if.then
  %cas39 = getelementptr inbounds %struct.conn, %struct.conn* %c, i64 0, i32 36, i32 0, i32 8, !dbg !2583
  %21 = load i64, i64* %cas39, align 8, !dbg !2583, !tbaa !858
  %cmp40.not = icmp eq i64 %21, 0, !dbg !2585
  br i1 %cmp40.not, label %if.end46, label %if.then42, !dbg !2586

if.then42:                                        ; preds = %if.end36
  %gcov_ctr176 = load i64, i64* getelementptr inbounds ([16 x i64], [16 x i64]* @__llvm_gcov_ctr.84, i64 0, i64 4), align 16, !dbg !2587
  %22 = add i64 %gcov_ctr176, 1, !dbg !2587
  store i64 %22, i64* getelementptr inbounds ([16 x i64], [16 x i64]* @__llvm_gcov_ctr.84, i64 0, i64 4), align 16, !dbg !2587
  call void @llvm.dbg.value(metadata i64 %21, metadata !2510, metadata !DIExpression()), !dbg !2538
  store i64 %21, i64* %cas, align 8, !dbg !2589, !tbaa !1071
  br label %if.end46, !dbg !2590

if.end46:                                         ; preds = %if.then42, %if.end36
  %cmd = getelementptr inbounds %struct.conn, %struct.conn* %c, i64 0, i32 39, !dbg !2591
  %23 = load i16, i16* %cmd, align 8, !dbg !2591, !tbaa !793
  %cmp48 = icmp eq i16 %23, 5, !dbg !2592
  %24 = load i64, i64* %delta, align 8, !dbg !2593, !tbaa !858
  call void @llvm.dbg.value(metadata i64* %cas, metadata !2510, metadata !DIExpression(DW_OP_deref)), !dbg !2538
  %call54 = call i32 @add_delta(%struct.conn* noundef nonnull %c, i8* noundef %call16, i64 noundef %conv, i1 noundef zeroext %cmp48, i64 noundef %24, i8* noundef nonnull %0, i64* noundef nonnull %cas) #16, !dbg !2594
  switch i32 %call54, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb65
    i32 2, label %sw.bb66
    i32 3, label %sw.bb67
    i32 4, label %sw.bb172
  ], !dbg !2595

sw.bb:                                            ; preds = %if.end46
  %call56 = call i64 @strtoull(i8* noundef nonnull %0, i8** noundef null, i32 noundef 10) #16, !dbg !2596
  %call57 = call i64 @htonll(i64 noundef %call56) #16, !dbg !2597
  %body59 = getelementptr inbounds %struct._mc_resp, %struct._mc_resp* %3, i64 0, i32 18, i64 24, !dbg !2598
  %value = bitcast i8* %body59 to i64*, !dbg !2599
  store i64 %call57, i64* %value, align 8, !dbg !2600, !tbaa !858
  %25 = load i64, i64* %cas, align 8, !dbg !2601, !tbaa !1071
  call void @llvm.dbg.value(metadata i64 %25, metadata !2510, metadata !DIExpression()), !dbg !2538
  %tobool.not = icmp eq i64 %25, 0, !dbg !2601
  br i1 %tobool.not, label %if.end62, label %if.then60, !dbg !2603

if.then60:                                        ; preds = %sw.bb
  %gcov_ctr178 = load i64, i64* getelementptr inbounds ([16 x i64], [16 x i64]* @__llvm_gcov_ctr.84, i64 0, i64 6), align 16, !dbg !2604
  %26 = add i64 %gcov_ctr178, 1, !dbg !2604
  store i64 %26, i64* getelementptr inbounds ([16 x i64], [16 x i64]* @__llvm_gcov_ctr.84, i64 0, i64 6), align 16, !dbg !2604
  call void @llvm.dbg.value(metadata i64 %25, metadata !2510, metadata !DIExpression()), !dbg !2538
  %cas61 = getelementptr inbounds %struct.conn, %struct.conn* %c, i64 0, i32 37, !dbg !2606
  store i64 %25, i64* %cas61, align 8, !dbg !2607, !tbaa !1258
  br label %if.end62, !dbg !2608

if.end62:                                         ; preds = %if.then60, %sw.bb
  %gcov_ctr179 = load i64, i64* getelementptr inbounds ([16 x i64], [16 x i64]* @__llvm_gcov_ctr.84, i64 0, i64 7), align 8, !dbg !2609
  %27 = add i64 %gcov_ctr179, 1, !dbg !2609
  store i64 %27, i64* getelementptr inbounds ([16 x i64], [16 x i64]* @__llvm_gcov_ctr.84, i64 0, i64 7), align 8, !dbg !2609
  call fastcc void @write_bin_response(%struct.conn* noundef nonnull %c, i8* noundef nonnull %body59, i32 noundef 8) #15, !dbg !2610
  br label %sw.epilog, !dbg !2611

sw.bb65:                                          ; preds = %if.end46
  %gcov_ctr177 = load i64, i64* getelementptr inbounds ([16 x i64], [16 x i64]* @__llvm_gcov_ctr.84, i64 0, i64 5), align 8, !dbg !2612
  %28 = add i64 %gcov_ctr177, 1, !dbg !2612
  store i64 %28, i64* getelementptr inbounds ([16 x i64], [16 x i64]* @__llvm_gcov_ctr.84, i64 0, i64 5), align 8, !dbg !2612
  call void @write_bin_error(%struct.conn* noundef nonnull %c, i32 noundef 6, i8* noundef null, i32 noundef 0) #15, !dbg !2613
  br label %sw.epilog, !dbg !2614

sw.bb66:                                          ; preds = %if.end46
  %gcov_ctr180 = load i64, i64* getelementptr inbounds ([16 x i64], [16 x i64]* @__llvm_gcov_ctr.84, i64 0, i64 8), align 16, !dbg !2615
  %29 = add i64 %gcov_ctr180, 1, !dbg !2615
  store i64 %29, i64* getelementptr inbounds ([16 x i64], [16 x i64]* @__llvm_gcov_ctr.84, i64 0, i64 8), align 16, !dbg !2615
  call void @out_of_memory(%struct.conn* noundef nonnull %c, i8* noundef getelementptr inbounds ([46 x i8], [46 x i8]* @.str.50, i64 0, i64 0)) #16, !dbg !2616
  br label %sw.epilog, !dbg !2617

sw.bb67:                                          ; preds = %if.end46
  %30 = load i32, i32* %7, align 8, !dbg !2618, !tbaa !858
  %cmp71.not = icmp eq i32 %30, -1, !dbg !2619
  br i1 %cmp71.not, label %if.else152, label %if.then73, !dbg !2620

if.then73:                                        ; preds = %sw.bb67
  %31 = load i64, i64* %5, align 8, !dbg !2621, !tbaa !858
  %call77 = call i64 @htonll(i64 noundef %31) #16, !dbg !2622
  %body79 = getelementptr inbounds %struct._mc_resp, %struct._mc_resp* %3, i64 0, i32 18, i64 24, !dbg !2623
  %value80 = bitcast i8* %body79 to i64*, !dbg !2624
  store i64 %call77, i64* %value80, align 8, !dbg !2625, !tbaa !858
  %32 = load i64, i64* %5, align 8, !dbg !2626, !tbaa !858
  %call85 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef nonnull %0, i64 noundef 24, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.51, i64 0, i64 0), i64 noundef %32) #16, !dbg !2627
  %call87 = call i64 @strlen(i8* noundef nonnull %0) #18, !dbg !2628
  %conv88 = trunc i64 %call87 to i32, !dbg !2628
  call void @llvm.dbg.value(metadata i32 %conv88, metadata !2534, metadata !DIExpression()), !dbg !2629
  %33 = load i32, i32* %7, align 8, !dbg !2630, !tbaa !858
  %conv92 = zext i32 %33 to i64, !dbg !2631
  %call93 = call i32 @realtime(i64 noundef %conv92) #16, !dbg !2632
  %add = add nsw i32 %conv88, 2, !dbg !2633
  %call94 = call %struct._stritem* @item_alloc(i8* noundef %call16, i64 noundef %conv, i32 noundef 0, i32 noundef %call93, i32 noundef %add) #16, !dbg !2634
  call void @llvm.dbg.value(metadata %struct._stritem* %call94, metadata !2505, metadata !DIExpression()), !dbg !2538
  %cmp95.not = icmp eq %struct._stritem* %call94, null, !dbg !2635
  br i1 %cmp95.not, label %if.else150, label %if.then97, !dbg !2637

if.then97:                                        ; preds = %if.then73
  %data = getelementptr inbounds %struct._stritem, %struct._stritem* %call94, i64 0, i32 10, !dbg !2638
  %34 = bitcast [0 x %union.anon.9]* %data to i8*, !dbg !2638
  %nkey98 = getelementptr inbounds %struct._stritem, %struct._stritem* %call94, i64 0, i32 9, !dbg !2638
  %35 = load i8, i8* %nkey98, align 1, !dbg !2638, !tbaa !858
  %36 = zext i8 %35 to i64
  %add.ptr = getelementptr inbounds i8, i8* %34, i64 %36, !dbg !2638
  %add.ptr100 = getelementptr inbounds i8, i8* %add.ptr, i64 1, !dbg !2638
  %it_flags = getelementptr inbounds %struct._stritem, %struct._stritem* %call94, i64 0, i32 7, !dbg !2638
  %37 = load i16, i16* %it_flags, align 2, !dbg !2638, !tbaa !866
  %conv101 = zext i16 %37 to i32, !dbg !2638
  %and = lshr i32 %conv101, 6, !dbg !2638
  %38 = and i32 %and, 4, !dbg !2638
  %39 = zext i32 %38 to i64, !dbg !2638
  %add.ptr103 = getelementptr inbounds i8, i8* %add.ptr100, i64 %39, !dbg !2638
  %and106 = shl nuw nsw i32 %conv101, 2, !dbg !2638
  %40 = and i32 %and106, 8, !dbg !2638
  %41 = zext i32 %40 to i64, !dbg !2638
  %add.ptr109 = getelementptr inbounds i8, i8* %add.ptr103, i64 %41, !dbg !2638
  %sext = shl i64 %call87, 32, !dbg !2640
  %conv111 = ashr exact i64 %sext, 32, !dbg !2640
  %call112 = call i8* @memcpy(i8* noundef nonnull %add.ptr109, i8* noundef nonnull %0, i64 noundef %conv111) #16, !dbg !2641
  %42 = load i8, i8* %nkey98, align 1, !dbg !2642, !tbaa !858
  %43 = zext i8 %42 to i64
  %add.ptr117 = getelementptr inbounds i8, i8* %34, i64 %43, !dbg !2642
  %add.ptr118 = getelementptr inbounds i8, i8* %add.ptr117, i64 1, !dbg !2642
  %44 = load i16, i16* %it_flags, align 2, !dbg !2642, !tbaa !866
  %conv120 = zext i16 %44 to i32, !dbg !2642
  %and121 = lshr i32 %conv120, 6, !dbg !2642
  %45 = and i32 %and121, 4, !dbg !2642
  %46 = zext i32 %45 to i64, !dbg !2642
  %add.ptr124 = getelementptr inbounds i8, i8* %add.ptr118, i64 %46, !dbg !2642
  %and127 = shl nuw nsw i32 %conv120, 2, !dbg !2642
  %47 = and i32 %and127, 8, !dbg !2642
  %48 = zext i32 %47 to i64, !dbg !2642
  %add.ptr130 = getelementptr inbounds i8, i8* %add.ptr124, i64 %48, !dbg !2642
  %add.ptr132 = getelementptr inbounds i8, i8* %add.ptr130, i64 %conv111, !dbg !2643
  %call133 = call i8* @memcpy(i8* noundef nonnull %add.ptr132, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.52, i64 0, i64 0), i64 noundef 2) #16, !dbg !2644
  %call134 = call i32 @store_item(%struct._stritem* noundef nonnull %call94, i32 noundef 1, %struct.conn* noundef nonnull %c) #16, !dbg !2645
  %tobool135.not = icmp eq i32 %call134, 0, !dbg !2645
  br i1 %tobool135.not, label %if.else148, label %if.then136, !dbg !2647

if.then136:                                       ; preds = %if.then97
  %49 = load i16, i16* %it_flags, align 2, !dbg !2648, !tbaa !866
  %50 = and i16 %49, 2, !dbg !2648
  %tobool140.not = icmp eq i16 %50, 0, !dbg !2648
  br i1 %tobool140.not, label %cond.false, label %cond.true, !dbg !2648

cond.true:                                        ; preds = %if.then136
  %gcov_ctr181 = load i64, i64* getelementptr inbounds ([16 x i64], [16 x i64]* @__llvm_gcov_ctr.84, i64 0, i64 9), align 8, !dbg !2648
  %51 = add i64 %gcov_ctr181, 1, !dbg !2648
  store i64 %51, i64* getelementptr inbounds ([16 x i64], [16 x i64]* @__llvm_gcov_ctr.84, i64 0, i64 9), align 8, !dbg !2648
  %cas143 = getelementptr inbounds [0 x %union.anon.9], [0 x %union.anon.9]* %data, i64 0, i64 0, i32 0, !dbg !2648
  %52 = load i64, i64* %cas143, align 8, !dbg !2648, !tbaa !858
  br label %cond.end, !dbg !2648

cond.false:                                       ; preds = %if.then136
  %gcov_ctr182 = load i64, i64* getelementptr inbounds ([16 x i64], [16 x i64]* @__llvm_gcov_ctr.84, i64 0, i64 10), align 16, !dbg !2648
  %53 = add i64 %gcov_ctr182, 1, !dbg !2648
  store i64 %53, i64* getelementptr inbounds ([16 x i64], [16 x i64]* @__llvm_gcov_ctr.84, i64 0, i64 10), align 16, !dbg !2648
  br label %cond.end, !dbg !2648

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond144 = phi i64 [ %52, %cond.true ], [ 0, %cond.false ], !dbg !2648
  %cas145 = getelementptr inbounds %struct.conn, %struct.conn* %c, i64 0, i32 37, !dbg !2650
  store i64 %cond144, i64* %cas145, align 8, !dbg !2651, !tbaa !1258
  call fastcc void @write_bin_response(%struct.conn* noundef nonnull %c, i8* noundef nonnull %body79, i32 noundef 8) #15, !dbg !2652
  br label %if.end149, !dbg !2653

if.else148:                                       ; preds = %if.then97
  %gcov_ctr183 = load i64, i64* getelementptr inbounds ([16 x i64], [16 x i64]* @__llvm_gcov_ctr.84, i64 0, i64 11), align 8, !dbg !2654
  %54 = add i64 %gcov_ctr183, 1, !dbg !2654
  store i64 %54, i64* getelementptr inbounds ([16 x i64], [16 x i64]* @__llvm_gcov_ctr.84, i64 0, i64 11), align 8, !dbg !2654
  call void @write_bin_error(%struct.conn* noundef nonnull %c, i32 noundef 5, i8* noundef null, i32 noundef 0) #15, !dbg !2656
  br label %if.end149

if.end149:                                        ; preds = %if.else148, %cond.end
  call void @item_remove(%struct._stritem* noundef nonnull %call94) #16, !dbg !2657
  br label %sw.epilog, !dbg !2658

if.else150:                                       ; preds = %if.then73
  %gcov_ctr184 = load i64, i64* getelementptr inbounds ([16 x i64], [16 x i64]* @__llvm_gcov_ctr.84, i64 0, i64 12), align 16, !dbg !2659
  %55 = add i64 %gcov_ctr184, 1, !dbg !2659
  store i64 %55, i64* getelementptr inbounds ([16 x i64], [16 x i64]* @__llvm_gcov_ctr.84, i64 0, i64 12), align 16, !dbg !2659
  call void @out_of_memory(%struct.conn* noundef nonnull %c, i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @.str.53, i64 0, i64 0)) #16, !dbg !2661
  br label %sw.epilog

if.else152:                                       ; preds = %sw.bb67
  %thread = getelementptr inbounds %struct.conn, %struct.conn* %c, i64 0, i32 43, !dbg !2662
  %56 = load %struct.LIBEVENT_THREAD*, %struct.LIBEVENT_THREAD** %thread, align 8, !dbg !2662, !tbaa !853
  %mutex = getelementptr inbounds %struct.LIBEVENT_THREAD, %struct.LIBEVENT_THREAD* %56, i64 0, i32 4, i32 0, !dbg !2664
  %call153 = call i32 @pthread_mutex_lock(%union.pthread_mutex_t* noundef nonnull %mutex) #16, !dbg !2665
  %57 = load i16, i16* %cmd, align 8, !dbg !2666, !tbaa !793
  %cmp156 = icmp eq i16 %57, 5, !dbg !2668
  br i1 %cmp156, label %if.then158, label %if.else162, !dbg !2669

if.then158:                                       ; preds = %if.else152
  %gcov_ctr185 = load i64, i64* getelementptr inbounds ([16 x i64], [16 x i64]* @__llvm_gcov_ctr.84, i64 0, i64 13), align 8, !dbg !2670
  %58 = add i64 %gcov_ctr185, 1, !dbg !2670
  store i64 %58, i64* getelementptr inbounds ([16 x i64], [16 x i64]* @__llvm_gcov_ctr.84, i64 0, i64 13), align 8, !dbg !2670
  %59 = load %struct.LIBEVENT_THREAD*, %struct.LIBEVENT_THREAD** %thread, align 8, !dbg !2672, !tbaa !853
  %incr_misses = getelementptr inbounds %struct.LIBEVENT_THREAD, %struct.LIBEVENT_THREAD* %59, i64 0, i32 4, i32 8, !dbg !2673
  br label %if.end166, !dbg !2674

if.else162:                                       ; preds = %if.else152
  %gcov_ctr186 = load i64, i64* getelementptr inbounds ([16 x i64], [16 x i64]* @__llvm_gcov_ctr.84, i64 0, i64 14), align 16, !dbg !2675
  %60 = add i64 %gcov_ctr186, 1, !dbg !2675
  store i64 %60, i64* getelementptr inbounds ([16 x i64], [16 x i64]* @__llvm_gcov_ctr.84, i64 0, i64 14), align 16, !dbg !2675
  %61 = load %struct.LIBEVENT_THREAD*, %struct.LIBEVENT_THREAD** %thread, align 8, !dbg !2677, !tbaa !853
  %decr_misses = getelementptr inbounds %struct.LIBEVENT_THREAD, %struct.LIBEVENT_THREAD* %61, i64 0, i32 4, i32 9, !dbg !2678
  br label %if.end166

if.end166:                                        ; preds = %if.else162, %if.then158
  %decr_misses.sink258 = phi i64* [ %decr_misses, %if.else162 ], [ %incr_misses, %if.then158 ]
  %62 = phi %struct.LIBEVENT_THREAD* [ %61, %if.else162 ], [ %59, %if.then158 ], !dbg !2679
  %63 = load i64, i64* %decr_misses.sink258, align 8, !dbg !2680, !tbaa !1071
  %inc165 = add i64 %63, 1, !dbg !2680
  store i64 %inc165, i64* %decr_misses.sink258, align 8, !dbg !2680, !tbaa !1071
  %mutex169 = getelementptr inbounds %struct.LIBEVENT_THREAD, %struct.LIBEVENT_THREAD* %62, i64 0, i32 4, i32 0, !dbg !2681
  %call170 = call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* noundef nonnull %mutex169) #16, !dbg !2682
  call void @write_bin_error(%struct.conn* noundef nonnull %c, i32 noundef 1, i8* noundef null, i32 noundef 0) #15, !dbg !2683
  br label %sw.epilog

sw.bb172:                                         ; preds = %if.end46
  %gcov_ctr187 = load i64, i64* getelementptr inbounds ([16 x i64], [16 x i64]* @__llvm_gcov_ctr.84, i64 0, i64 15), align 8, !dbg !2684
  %64 = add i64 %gcov_ctr187, 1, !dbg !2684
  store i64 %64, i64* getelementptr inbounds ([16 x i64], [16 x i64]* @__llvm_gcov_ctr.84, i64 0, i64 15), align 8, !dbg !2684
  call void @write_bin_error(%struct.conn* noundef nonnull %c, i32 noundef 2, i8* noundef null, i32 noundef 0) #15, !dbg !2685
  br label %sw.epilog, !dbg !2686

sw.epilog:                                        ; preds = %if.end149, %if.else150, %if.end166, %if.end46, %sw.bb172, %sw.bb66, %sw.bb65, %if.end62
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #17, !dbg !2687
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %0) #17, !dbg !2687
  ret void, !dbg !2687
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @process_bin_append_prepend(%struct.conn* noundef %c) unnamed_addr #0 !dbg !2688 {
entry:
  call void @llvm.dbg.value(metadata %struct.conn* %c, metadata !2690, metadata !DIExpression()), !dbg !2695
  %cmp.not = icmp eq %struct.conn* %c, null, !dbg !2696
  br i1 %cmp.not, label %if.else, label %if.end, !dbg !2699

if.else:                                          ; preds = %entry
  %gcov_ctr = load i64, i64* getelementptr inbounds ([10 x i64], [10 x i64]* @__llvm_gcov_ctr.85, i64 0, i64 0), align 16, !dbg !2696
  %0 = add i64 %gcov_ctr, 1, !dbg !2696
  store i64 %0, i64* getelementptr inbounds ([10 x i64], [10 x i64]* @__llvm_gcov_ctr.85, i64 0, i64 0), align 16, !dbg !2696
  tail call void @__assert_fail(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 noundef 1193, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @__PRETTY_FUNCTION__.process_bin_append_prepend, i64 0, i64 0)) #14, !dbg !2696
  unreachable, !dbg !2696

if.end:                                           ; preds = %entry
  %call = tail call fastcc i8* @binary_get_key(%struct.conn* noundef nonnull %c) #15, !dbg !2700
  call void @llvm.dbg.value(metadata i8* %call, metadata !2691, metadata !DIExpression()), !dbg !2695
  %keylen = getelementptr inbounds %struct.conn, %struct.conn* %c, i64 0, i32 36, i32 0, i32 2, !dbg !2701
  %1 = load i16, i16* %keylen, align 2, !dbg !2701, !tbaa !858
  %conv = zext i16 %1 to i32, !dbg !2702
  call void @llvm.dbg.value(metadata i32 %conv, metadata !2692, metadata !DIExpression()), !dbg !2695
  %bodylen = getelementptr inbounds %struct.conn, %struct.conn* %c, i64 0, i32 36, i32 0, i32 6, !dbg !2703
  %2 = load i32, i32* %bodylen, align 8, !dbg !2703, !tbaa !858
  %sub = sub i32 %2, %conv, !dbg !2704
  call void @llvm.dbg.value(metadata i32 %sub, metadata !2693, metadata !DIExpression()), !dbg !2695
  %3 = load i32, i32* getelementptr inbounds (%struct.settings, %struct.settings* @settings, i64 0, i32 5), align 8, !dbg !2705, !tbaa !997
  %cmp3 = icmp sgt i32 %3, 1, !dbg !2707
  br i1 %cmp3, label %if.then5, label %if.end7, !dbg !2708

if.then5:                                         ; preds = %if.end
  %gcov_ctr52 = load i64, i64* getelementptr inbounds ([10 x i64], [10 x i64]* @__llvm_gcov_ctr.85, i64 0, i64 1), align 8, !dbg !2709
  %4 = add i64 %gcov_ctr52, 1, !dbg !2709
  store i64 %4, i64* getelementptr inbounds ([10 x i64], [10 x i64]* @__llvm_gcov_ctr.85, i64 0, i64 1), align 8, !dbg !2709
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2709, !tbaa !830
  %call6 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %5, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.54, i64 0, i64 0), i32 noundef %sub) #16, !dbg !2711
  br label %if.end7, !dbg !2712

if.end7:                                          ; preds = %if.then5, %if.end
  %6 = load i32, i32* getelementptr inbounds (%struct.settings, %struct.settings* @settings, i64 0, i32 17), align 8, !dbg !2713, !tbaa !2037
  %tobool.not = icmp eq i32 %6, 0, !dbg !2715
  br i1 %tobool.not, label %if.end7.if.end10_crit_edge, label %if.then8, !dbg !2716

if.end7.if.end10_crit_edge:                       ; preds = %if.end7
  %.pre = zext i16 %1 to i64
  br label %if.end10, !dbg !2716

if.then8:                                         ; preds = %if.end7
  %gcov_ctr53 = load i64, i64* getelementptr inbounds ([10 x i64], [10 x i64]* @__llvm_gcov_ctr.85, i64 0, i64 2), align 16, !dbg !2717
  %7 = add i64 %gcov_ctr53, 1, !dbg !2717
  store i64 %7, i64* getelementptr inbounds ([10 x i64], [10 x i64]* @__llvm_gcov_ctr.85, i64 0, i64 2), align 16, !dbg !2717
  %8 = zext i16 %1 to i64
  tail call void @stats_prefix_record_set(i8* noundef %call, i64 noundef %8) #16, !dbg !2719
  br label %if.end10, !dbg !2720

if.end10:                                         ; preds = %if.end7.if.end10_crit_edge, %if.then8
  %.pre-phi = phi i64 [ %.pre, %if.end7.if.end10_crit_edge ], [ %8, %if.then8 ]
  %add = add nsw i32 %sub, 2, !dbg !2721
  %call12 = tail call %struct._stritem* @item_alloc(i8* noundef %call, i64 noundef %.pre-phi, i32 noundef 0, i32 noundef 0, i32 noundef %add) #16, !dbg !2722
  call void @llvm.dbg.value(metadata %struct._stritem* %call12, metadata !2694, metadata !DIExpression()), !dbg !2695
  %cmp13 = icmp eq %struct._stritem* %call12, null, !dbg !2723
  br i1 %cmp13, label %if.then15, label %if.end22, !dbg !2725

if.then15:                                        ; preds = %if.end10
  %call18 = tail call zeroext i1 @item_size_ok(i64 noundef %.pre-phi, i32 noundef 0, i32 noundef %add) #16, !dbg !2726
  br i1 %call18, label %if.else20, label %if.then19, !dbg !2729

if.then19:                                        ; preds = %if.then15
  %gcov_ctr54 = load i64, i64* getelementptr inbounds ([10 x i64], [10 x i64]* @__llvm_gcov_ctr.85, i64 0, i64 3), align 8, !dbg !2730
  %9 = add i64 %gcov_ctr54, 1, !dbg !2730
  store i64 %9, i64* getelementptr inbounds ([10 x i64], [10 x i64]* @__llvm_gcov_ctr.85, i64 0, i64 3), align 8, !dbg !2730
  tail call void @write_bin_error(%struct.conn* noundef nonnull %c, i32 noundef 3, i8* noundef null, i32 noundef %sub) #15, !dbg !2732
  br label %if.end21, !dbg !2733

if.else20:                                        ; preds = %if.then15
  %gcov_ctr55 = load i64, i64* getelementptr inbounds ([10 x i64], [10 x i64]* @__llvm_gcov_ctr.85, i64 0, i64 4), align 16, !dbg !2734
  %10 = add i64 %gcov_ctr55, 1, !dbg !2734
  store i64 %10, i64* getelementptr inbounds ([10 x i64], [10 x i64]* @__llvm_gcov_ctr.85, i64 0, i64 4), align 16, !dbg !2734
  tail call void @out_of_memory(%struct.conn* noundef nonnull %c, i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.43, i64 0, i64 0)) #16, !dbg !2736
  %sbytes = getelementptr inbounds %struct.conn, %struct.conn* %c, i64 0, i32 24, !dbg !2737
  store i32 %sub, i32* %sbytes, align 8, !dbg !2738, !tbaa !1650
  br label %if.end21

if.end21:                                         ; preds = %if.else20, %if.then19
  tail call void @conn_set_state(%struct.conn* noundef nonnull %c, i32 noundef 7) #16, !dbg !2739
  br label %cleanup, !dbg !2740

if.end22:                                         ; preds = %if.end10
  %it_flags = getelementptr inbounds %struct._stritem, %struct._stritem* %call12, i64 0, i32 7, !dbg !2741
  %11 = load i16, i16* %it_flags, align 2, !dbg !2741, !tbaa !866
  %12 = and i16 %11, 2, !dbg !2741
  %tobool24.not = icmp eq i16 %12, 0, !dbg !2741
  br i1 %tobool24.not, label %if.end29, label %if.then25, !dbg !2744

if.then25:                                        ; preds = %if.end22
  %gcov_ctr56 = load i64, i64* getelementptr inbounds ([10 x i64], [10 x i64]* @__llvm_gcov_ctr.85, i64 0, i64 5), align 8, !dbg !2745
  %13 = add i64 %gcov_ctr56, 1, !dbg !2745
  store i64 %13, i64* getelementptr inbounds ([10 x i64], [10 x i64]* @__llvm_gcov_ctr.85, i64 0, i64 5), align 8, !dbg !2745
  %cas = getelementptr inbounds %struct.conn, %struct.conn* %c, i64 0, i32 36, i32 0, i32 8, !dbg !2745
  %14 = load i64, i64* %cas, align 8, !dbg !2745, !tbaa !858
  %cas28 = getelementptr inbounds %struct._stritem, %struct._stritem* %call12, i64 0, i32 10, i64 0, i32 0, !dbg !2745
  store i64 %14, i64* %cas28, align 8, !dbg !2745, !tbaa !858
  br label %if.end29, !dbg !2745

if.end29:                                         ; preds = %if.then25, %if.end22
  %cmd = getelementptr inbounds %struct.conn, %struct.conn* %c, i64 0, i32 39, !dbg !2747
  %15 = load i16, i16* %cmd, align 8, !dbg !2747, !tbaa !793
  %conv30 = sext i16 %15 to i32, !dbg !2748
  switch i32 %conv30, label %sw.default [
    i32 14, label %sw.bb
    i32 15, label %sw.bb32
  ], !dbg !2749

sw.bb:                                            ; preds = %if.end29
  %gcov_ctr57 = load i64, i64* getelementptr inbounds ([10 x i64], [10 x i64]* @__llvm_gcov_ctr.85, i64 0, i64 6), align 16, !dbg !2750
  %16 = add i64 %gcov_ctr57, 1, !dbg !2750
  store i64 %16, i64* getelementptr inbounds ([10 x i64], [10 x i64]* @__llvm_gcov_ctr.85, i64 0, i64 6), align 16, !dbg !2750
  br label %sw.epilog, !dbg !2752

sw.bb32:                                          ; preds = %if.end29
  %gcov_ctr58 = load i64, i64* getelementptr inbounds ([10 x i64], [10 x i64]* @__llvm_gcov_ctr.85, i64 0, i64 7), align 8, !dbg !2753
  %17 = add i64 %gcov_ctr58, 1, !dbg !2753
  store i64 %17, i64* getelementptr inbounds ([10 x i64], [10 x i64]* @__llvm_gcov_ctr.85, i64 0, i64 7), align 8, !dbg !2753
  br label %sw.epilog, !dbg !2754

sw.default:                                       ; preds = %if.end29
  %gcov_ctr59 = load i64, i64* getelementptr inbounds ([10 x i64], [10 x i64]* @__llvm_gcov_ctr.85, i64 0, i64 8), align 16, !dbg !2755
  %18 = add i64 %gcov_ctr59, 1, !dbg !2755
  store i64 %18, i64* getelementptr inbounds ([10 x i64], [10 x i64]* @__llvm_gcov_ctr.85, i64 0, i64 8), align 16, !dbg !2755
  tail call void @__assert_fail(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 noundef 1232, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @__PRETTY_FUNCTION__.process_bin_append_prepend, i64 0, i64 0)) #14, !dbg !2755
  unreachable, !dbg !2755

sw.epilog:                                        ; preds = %sw.bb32, %sw.bb
  %storemerge = phi i16 [ 5, %sw.bb32 ], [ 4, %sw.bb ], !dbg !2758
  store i16 %storemerge, i16* %cmd, align 8, !dbg !2758, !tbaa !793
  %item = getelementptr inbounds %struct.conn, %struct.conn* %c, i64 0, i32 23, !dbg !2759
  %19 = bitcast i8** %item to %struct._stritem**, !dbg !2760
  store %struct._stritem* %call12, %struct._stritem** %19, align 8, !dbg !2760, !tbaa !820
  %data34 = getelementptr inbounds %struct._stritem, %struct._stritem* %call12, i64 0, i32 10, !dbg !2761
  %20 = bitcast [0 x %union.anon.9]* %data34 to i8*, !dbg !2761
  %nkey35 = getelementptr inbounds %struct._stritem, %struct._stritem* %call12, i64 0, i32 9, !dbg !2761
  %21 = load i8, i8* %nkey35, align 1, !dbg !2761, !tbaa !858
  %22 = zext i8 %21 to i64
  %add.ptr = getelementptr inbounds i8, i8* %20, i64 %22, !dbg !2761
  %add.ptr37 = getelementptr inbounds i8, i8* %add.ptr, i64 1, !dbg !2761
  %23 = load i16, i16* %it_flags, align 2, !dbg !2761, !tbaa !866
  %conv39 = zext i16 %23 to i32, !dbg !2761
  %and40 = lshr i32 %conv39, 6, !dbg !2761
  %24 = and i32 %and40, 4, !dbg !2761
  %25 = zext i32 %24 to i64, !dbg !2761
  %add.ptr42 = getelementptr inbounds i8, i8* %add.ptr37, i64 %25, !dbg !2761
  %and45 = shl nuw nsw i32 %conv39, 2, !dbg !2761
  %26 = and i32 %and45, 8, !dbg !2761
  %27 = zext i32 %26 to i64, !dbg !2761
  %add.ptr48 = getelementptr inbounds i8, i8* %add.ptr42, i64 %27, !dbg !2761
  %ritem = getelementptr inbounds %struct.conn, %struct.conn* %c, i64 0, i32 21, !dbg !2762
  store i8* %add.ptr48, i8** %ritem, align 8, !dbg !2763, !tbaa !886
  %rlbytes = getelementptr inbounds %struct.conn, %struct.conn* %c, i64 0, i32 22, !dbg !2764
  store i32 %sub, i32* %rlbytes, align 8, !dbg !2765, !tbaa !2129
  tail call void @conn_set_state(%struct.conn* noundef nonnull %c, i32 noundef 6) #16, !dbg !2766
  %substate = getelementptr inbounds %struct.conn, %struct.conn* %c, i64 0, i32 10, !dbg !2767
  store i32 3, i32* %substate, align 8, !dbg !2768, !tbaa !811
  br label %cleanup, !dbg !2769

cleanup:                                          ; preds = %sw.epilog, %if.end21
  ret void, !dbg !2769
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @process_bin_stat(%struct.conn* noundef %c) unnamed_addr #0 !dbg !2770 {
entry:
  %len = alloca i32, align 4
  call void @llvm.dbg.value(metadata %struct.conn* %c, metadata !2772, metadata !DIExpression()), !dbg !2788
  %call = tail call fastcc i8* @binary_get_key(%struct.conn* noundef %c) #15, !dbg !2789
  call void @llvm.dbg.value(metadata i8* %call, metadata !2773, metadata !DIExpression()), !dbg !2788
  %keylen = getelementptr inbounds %struct.conn, %struct.conn* %c, i64 0, i32 36, i32 0, i32 2, !dbg !2790
  %0 = load i16, i16* %keylen, align 2, !dbg !2790, !tbaa !858
  call void @llvm.dbg.value(metadata i16 %0, metadata !2774, metadata !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2788
  %1 = load i32, i32* getelementptr inbounds (%struct.settings, %struct.settings* @settings, i64 0, i32 5), align 8, !dbg !2791, !tbaa !997
  %cmp = icmp sgt i32 %1, 1, !dbg !2792
  br i1 %cmp, label %if.then, label %if.end, !dbg !2793

if.then:                                          ; preds = %entry
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2794, !tbaa !830
  %sfd = getelementptr inbounds %struct.conn, %struct.conn* %c, i64 0, i32 1, !dbg !2795
  %3 = load i32, i32* %sfd, align 8, !dbg !2795, !tbaa !1034
  %call2 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %2, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.55, i64 0, i64 0), i32 noundef %3) #16, !dbg !2796
  call void @llvm.dbg.value(metadata i32 0, metadata !2775, metadata !DIExpression()), !dbg !2797
  call void @llvm.dbg.value(metadata i32 0, metadata !2775, metadata !DIExpression()), !dbg !2797
  %cmp4167.not = icmp eq i16 %0, 0, !dbg !2798
  br i1 %cmp4167.not, label %for.end, label %for.body.preheader, !dbg !2801

for.body.preheader:                               ; preds = %if.then
  %wide.trip.count = zext i16 %0 to i64, !dbg !2798
  br label %for.body, !dbg !2801

for.body:                                         ; preds = %for.body.preheader, %for.body
  %indvars.iv = phi i64 [ 0, %for.body.preheader ], [ %indvars.iv.next, %for.body ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !2775, metadata !DIExpression()), !dbg !2797
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2802, !tbaa !830
  %arrayidx = getelementptr inbounds i8, i8* %call, i64 %indvars.iv, !dbg !2804
  %5 = load i8, i8* %arrayidx, align 1, !dbg !2804, !tbaa !858
  %conv6 = sext i8 %5 to i32, !dbg !2804
  %call7 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %4, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.41, i64 0, i64 0), i32 noundef %conv6) #16, !dbg !2805
  %gcov_ctr = load i64, i64* getelementptr inbounds ([19 x i64], [19 x i64]* @__llvm_gcov_ctr.86, i64 0, i64 0), align 16, !dbg !2806
  %6 = add i64 %gcov_ctr, 1, !dbg !2806
  store i64 %6, i64* getelementptr inbounds ([19 x i64], [19 x i64]* @__llvm_gcov_ctr.86, i64 0, i64 0), align 16, !dbg !2806
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !2806
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !2775, metadata !DIExpression()), !dbg !2797
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count, !dbg !2798
  br i1 %exitcond.not, label %for.end, label %for.body, !dbg !2801, !llvm.loop !2807

for.end:                                          ; preds = %for.body, %if.then
  %gcov_ctr102 = load i64, i64* getelementptr inbounds ([19 x i64], [19 x i64]* @__llvm_gcov_ctr.86, i64 0, i64 1), align 8, !dbg !2809
  %7 = add i64 %gcov_ctr102, 1, !dbg !2809
  store i64 %7, i64* getelementptr inbounds ([19 x i64], [19 x i64]* @__llvm_gcov_ctr.86, i64 0, i64 1), align 8, !dbg !2809
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2809, !tbaa !830
  %call8 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %8, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0)) #16, !dbg !2810
  br label %if.end, !dbg !2811

if.end:                                           ; preds = %for.end, %entry
  %cmp9 = icmp eq i16 %0, 0, !dbg !2812
  br i1 %cmp9, label %if.then11, label %if.else, !dbg !2813

if.then11:                                        ; preds = %if.end
  %gcov_ctr103 = load i64, i64* getelementptr inbounds ([19 x i64], [19 x i64]* @__llvm_gcov_ctr.86, i64 0, i64 2), align 16, !dbg !2814
  %9 = add i64 %gcov_ctr103, 1, !dbg !2814
  store i64 %9, i64* getelementptr inbounds ([19 x i64], [19 x i64]* @__llvm_gcov_ctr.86, i64 0, i64 2), align 16, !dbg !2814
  tail call void @server_stats(void (i8*, i16, i8*, i32, i8*)* noundef nonnull @append_stats, %struct.conn* noundef %c) #16, !dbg !2816
  %10 = bitcast %struct.conn* %c to i8*, !dbg !2817
  %call12 = tail call zeroext i1 @get_stats(i8* noundef null, i32 noundef 0, void (i8*, i16, i8*, i32, i8*)* noundef nonnull @append_stats, i8* noundef %10) #16, !dbg !2818
  br label %if.end83, !dbg !2819

if.else:                                          ; preds = %if.end
  %call13 = tail call i32 @strncmp(i8* noundef %call, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.56, i64 0, i64 0), i64 noundef 5) #18, !dbg !2820
  %cmp14 = icmp eq i32 %call13, 0, !dbg !2821
  br i1 %cmp14, label %if.then16, label %if.else17, !dbg !2822

if.then16:                                        ; preds = %if.else
  %gcov_ctr104 = load i64, i64* getelementptr inbounds ([19 x i64], [19 x i64]* @__llvm_gcov_ctr.86, i64 0, i64 3), align 8, !dbg !2823
  %11 = add i64 %gcov_ctr104, 1, !dbg !2823
  store i64 %11, i64* getelementptr inbounds ([19 x i64], [19 x i64]* @__llvm_gcov_ctr.86, i64 0, i64 3), align 8, !dbg !2823
  tail call void @stats_reset() #16, !dbg !2823
  br label %if.end83, !dbg !2825

if.else17:                                        ; preds = %if.else
  %call18 = tail call i32 @strncmp(i8* noundef %call, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.57, i64 0, i64 0), i64 noundef 8) #18, !dbg !2826
  %cmp19 = icmp eq i32 %call18, 0, !dbg !2827
  br i1 %cmp19, label %if.then21, label %if.else22, !dbg !2828

if.then21:                                        ; preds = %if.else17
  %gcov_ctr105 = load i64, i64* getelementptr inbounds ([19 x i64], [19 x i64]* @__llvm_gcov_ctr.86, i64 0, i64 4), align 16, !dbg !2829
  %12 = add i64 %gcov_ctr105, 1, !dbg !2829
  store i64 %12, i64* getelementptr inbounds ([19 x i64], [19 x i64]* @__llvm_gcov_ctr.86, i64 0, i64 4), align 16, !dbg !2829
  %13 = bitcast %struct.conn* %c to i8*, !dbg !2829
  tail call void @process_stat_settings(void (i8*, i16, i8*, i32, i8*)* noundef nonnull @append_stats, i8* noundef %13) #16, !dbg !2831
  br label %if.end83, !dbg !2832

if.else22:                                        ; preds = %if.else17
  %call23 = tail call i32 @strncmp(i8* noundef %call, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.58, i64 0, i64 0), i64 noundef 6) #18, !dbg !2833
  %cmp24 = icmp eq i32 %call23, 0, !dbg !2834
  br i1 %cmp24, label %if.then26, label %if.else63, !dbg !2835

if.then26:                                        ; preds = %if.else22
  %add.ptr = getelementptr inbounds i8, i8* %call, i64 6, !dbg !2836
  call void @llvm.dbg.value(metadata i8* %add.ptr, metadata !2778, metadata !DIExpression()), !dbg !2837
  %call27 = tail call i32 @strncmp(i8* noundef nonnull %add.ptr, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.59, i64 0, i64 0), i64 noundef 5) #18, !dbg !2838
  %cmp28 = icmp eq i32 %call27, 0, !dbg !2839
  br i1 %cmp28, label %if.then30, label %if.else46, !dbg !2840

if.then30:                                        ; preds = %if.then26
  %14 = bitcast i32* %len to i8*, !dbg !2841
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %14) #17, !dbg !2841
  call void @llvm.dbg.value(metadata i32* %len, metadata !2784, metadata !DIExpression(DW_OP_deref)), !dbg !2842
  %call31 = call i8* @stats_prefix_dump(i32* noundef nonnull %len) #16, !dbg !2843
  call void @llvm.dbg.value(metadata i8* %call31, metadata !2787, metadata !DIExpression()), !dbg !2842
  %cmp32 = icmp eq i8* %call31, null, !dbg !2844
  br i1 %cmp32, label %if.then36.thread, label %lor.lhs.false, !dbg !2846

if.then36.thread:                                 ; preds = %if.then30
  call void @out_of_memory(%struct.conn* noundef %c, i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.60, i64 0, i64 0)) #16, !dbg !2847
  br label %if.end40, !dbg !2849

lor.lhs.false:                                    ; preds = %if.then30
  %gcov_ctr106 = load i64, i64* getelementptr inbounds ([19 x i64], [19 x i64]* @__llvm_gcov_ctr.86, i64 0, i64 5), align 8, !dbg !2850
  %15 = add i64 %gcov_ctr106, 1, !dbg !2850
  store i64 %15, i64* getelementptr inbounds ([19 x i64], [19 x i64]* @__llvm_gcov_ctr.86, i64 0, i64 5), align 8, !dbg !2850
  %16 = load i32, i32* %len, align 4, !dbg !2850, !tbaa !873
  call void @llvm.dbg.value(metadata i32 %16, metadata !2784, metadata !DIExpression()), !dbg !2842
  %cmp34 = icmp slt i32 %16, 1, !dbg !2851
  br i1 %cmp34, label %if.then39, label %if.else41, !dbg !2852

if.then39:                                        ; preds = %lor.lhs.false
  call void @out_of_memory(%struct.conn* noundef %c, i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.60, i64 0, i64 0)) #16, !dbg !2847
  %gcov_ctr107 = load i64, i64* getelementptr inbounds ([19 x i64], [19 x i64]* @__llvm_gcov_ctr.86, i64 0, i64 6), align 16, !dbg !2853
  %17 = add i64 %gcov_ctr107, 1, !dbg !2853
  store i64 %17, i64* getelementptr inbounds ([19 x i64], [19 x i64]* @__llvm_gcov_ctr.86, i64 0, i64 6), align 16, !dbg !2853
  call void @free(i8* noundef nonnull %call31) #16, !dbg !2855
  br label %if.end40, !dbg !2855

if.end40:                                         ; preds = %if.then36.thread, %if.then39
  %gcov_ctr108 = load i64, i64* getelementptr inbounds ([19 x i64], [19 x i64]* @__llvm_gcov_ctr.86, i64 0, i64 7), align 8
  %18 = add i64 %gcov_ctr108, 1
  store i64 %18, i64* getelementptr inbounds ([19 x i64], [19 x i64]* @__llvm_gcov_ctr.86, i64 0, i64 7), align 8
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %14) #17, !dbg !2856
  br label %cleanup98

if.else41:                                        ; preds = %lor.lhs.false
  %call42 = call i64 @strlen(i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.61, i64 0, i64 0)) #18, !dbg !2857
  %conv43 = trunc i64 %call42 to i16, !dbg !2857
  %19 = bitcast %struct.conn* %c to i8*, !dbg !2859
  call void @append_stats(i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.61, i64 0, i64 0), i16 noundef zeroext %conv43, i8* noundef nonnull %call31, i32 noundef %16, i8* noundef %19) #16, !dbg !2860
  call void @free(i8* noundef nonnull %call31) #16, !dbg !2861
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %14) #17, !dbg !2856
  %20 = load <2 x i64>, <2 x i64>* bitcast (i64* getelementptr inbounds ([19 x i64], [19 x i64]* @__llvm_gcov_ctr.86, i64 0, i64 8) to <2 x i64>*), align 16, !dbg !2856
  %21 = add <2 x i64> %20, <i64 1, i64 1>, !dbg !2856
  store <2 x i64> %21, <2 x i64>* bitcast (i64* getelementptr inbounds ([19 x i64], [19 x i64]* @__llvm_gcov_ctr.86, i64 0, i64 8) to <2 x i64>*), align 16, !dbg !2856
  br label %if.end80, !dbg !2862

if.else46:                                        ; preds = %if.then26
  %call47 = tail call i32 @strncmp(i8* noundef nonnull %add.ptr, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.62, i64 0, i64 0), i64 noundef 3) #18, !dbg !2863
  %cmp48 = icmp eq i32 %call47, 0, !dbg !2865
  br i1 %cmp48, label %if.then50, label %if.else51, !dbg !2866

if.then50:                                        ; preds = %if.else46
  %gcov_ctr111 = load i64, i64* getelementptr inbounds ([19 x i64], [19 x i64]* @__llvm_gcov_ctr.86, i64 0, i64 10), align 16, !dbg !2867
  %22 = add i64 %gcov_ctr111, 1, !dbg !2867
  store i64 %22, i64* getelementptr inbounds ([19 x i64], [19 x i64]* @__llvm_gcov_ctr.86, i64 0, i64 10), align 16, !dbg !2867
  store i32 1, i32* getelementptr inbounds (%struct.settings, %struct.settings* @settings, i64 0, i32 17), align 8, !dbg !2867, !tbaa !2037
  br label %if.end80, !dbg !2869

if.else51:                                        ; preds = %if.else46
  %call52 = tail call i32 @strncmp(i8* noundef nonnull %add.ptr, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.63, i64 0, i64 0), i64 noundef 4) #18, !dbg !2870
  %cmp53 = icmp eq i32 %call52, 0, !dbg !2872
  br i1 %cmp53, label %if.then55, label %if.else56, !dbg !2873

if.then55:                                        ; preds = %if.else51
  store i32 0, i32* getelementptr inbounds (%struct.settings, %struct.settings* @settings, i64 0, i32 17), align 8, !dbg !2874, !tbaa !2037
  %gcov_ctr113 = load i64, i64* getelementptr inbounds ([19 x i64], [19 x i64]* @__llvm_gcov_ctr.86, i64 0, i64 12), align 16
  %23 = add i64 %gcov_ctr113, 1
  store i64 %23, i64* getelementptr inbounds ([19 x i64], [19 x i64]* @__llvm_gcov_ctr.86, i64 0, i64 12), align 16
  br label %if.end80

if.else56:                                        ; preds = %if.else51
  %gcov_ctr112 = load i64, i64* getelementptr inbounds ([19 x i64], [19 x i64]* @__llvm_gcov_ctr.86, i64 0, i64 11), align 8, !dbg !2876
  %24 = add i64 %gcov_ctr112, 1, !dbg !2876
  store i64 %24, i64* getelementptr inbounds ([19 x i64], [19 x i64]* @__llvm_gcov_ctr.86, i64 0, i64 11), align 8, !dbg !2876
  tail call void @write_bin_error(%struct.conn* noundef %c, i32 noundef 1, i8* noundef null, i32 noundef 0) #15, !dbg !2878
  br label %cleanup98

if.else63:                                        ; preds = %if.else22
  %conv64 = zext i16 %0 to i32, !dbg !2879
  %25 = bitcast %struct.conn* %c to i8*, !dbg !2882
  %call65 = tail call zeroext i1 @get_stats(i8* noundef %call, i32 noundef %conv64, void (i8*, i16, i8*, i32, i8*)* noundef nonnull @append_stats, i8* noundef %25) #16, !dbg !2883
  br i1 %call65, label %if.then66, label %if.else78, !dbg !2884

if.then66:                                        ; preds = %if.else63
  %buffer = getelementptr inbounds %struct.conn, %struct.conn* %c, i64 0, i32 35, i32 0, !dbg !2885
  %26 = load i8*, i8** %buffer, align 8, !dbg !2885, !tbaa !2888
  %cmp67 = icmp eq i8* %26, null, !dbg !2889
  br i1 %cmp67, label %if.then69, label %if.else70, !dbg !2890

if.then69:                                        ; preds = %if.then66
  %gcov_ctr114 = load i64, i64* getelementptr inbounds ([19 x i64], [19 x i64]* @__llvm_gcov_ctr.86, i64 0, i64 13), align 8, !dbg !2891
  %27 = add i64 %gcov_ctr114, 1, !dbg !2891
  store i64 %27, i64* getelementptr inbounds ([19 x i64], [19 x i64]* @__llvm_gcov_ctr.86, i64 0, i64 13), align 8, !dbg !2891
  tail call void @out_of_memory(%struct.conn* noundef nonnull %c, i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.60, i64 0, i64 0)) #16, !dbg !2893
  br label %cleanup98, !dbg !2894

if.else70:                                        ; preds = %if.then66
  %gcov_ctr115 = load i64, i64* getelementptr inbounds ([19 x i64], [19 x i64]* @__llvm_gcov_ctr.86, i64 0, i64 14), align 16, !dbg !2895
  %28 = add i64 %gcov_ctr115, 1, !dbg !2895
  store i64 %28, i64* getelementptr inbounds ([19 x i64], [19 x i64]* @__llvm_gcov_ctr.86, i64 0, i64 14), align 16, !dbg !2895
  %offset = getelementptr inbounds %struct.conn, %struct.conn* %c, i64 0, i32 35, i32 2, !dbg !2897
  %29 = load i64, i64* %offset, align 8, !dbg !2897, !tbaa !2898
  %conv74 = trunc i64 %29 to i32, !dbg !2899
  tail call void @write_and_free(%struct.conn* noundef nonnull %c, i8* noundef nonnull %26, i32 noundef %conv74) #16, !dbg !2900
  store i8* null, i8** %buffer, align 8, !dbg !2901, !tbaa !2888
  br label %cleanup98

if.else78:                                        ; preds = %if.else63
  %gcov_ctr116 = load i64, i64* getelementptr inbounds ([19 x i64], [19 x i64]* @__llvm_gcov_ctr.86, i64 0, i64 15), align 8, !dbg !2902
  %30 = add i64 %gcov_ctr116, 1, !dbg !2902
  store i64 %30, i64* getelementptr inbounds ([19 x i64], [19 x i64]* @__llvm_gcov_ctr.86, i64 0, i64 15), align 8, !dbg !2902
  tail call void @write_bin_error(%struct.conn* noundef %c, i32 noundef 1, i8* noundef null, i32 noundef 0) #15, !dbg !2904
  br label %cleanup98

if.end80:                                         ; preds = %if.then50, %if.then55, %if.else41
  %gcov_ctr117 = load i64, i64* getelementptr inbounds ([19 x i64], [19 x i64]* @__llvm_gcov_ctr.86, i64 0, i64 16), align 16
  %31 = add i64 %gcov_ctr117, 1
  store i64 %31, i64* getelementptr inbounds ([19 x i64], [19 x i64]* @__llvm_gcov_ctr.86, i64 0, i64 16), align 16
  br label %if.end83

if.end83:                                         ; preds = %if.then16, %if.end80, %if.then21, %if.then11
  %32 = bitcast %struct.conn* %c to i8*, !dbg !2905
  call void @append_stats(i8* noundef null, i16 noundef zeroext 0, i8* noundef null, i32 noundef 0, i8* noundef %32) #16, !dbg !2906
  %buffer85 = getelementptr inbounds %struct.conn, %struct.conn* %c, i64 0, i32 35, i32 0, !dbg !2907
  %33 = load i8*, i8** %buffer85, align 8, !dbg !2907, !tbaa !2888
  %cmp86 = icmp eq i8* %33, null, !dbg !2909
  br i1 %cmp86, label %if.then88, label %if.else89, !dbg !2910

if.then88:                                        ; preds = %if.end83
  %gcov_ctr118 = load i64, i64* getelementptr inbounds ([19 x i64], [19 x i64]* @__llvm_gcov_ctr.86, i64 0, i64 17), align 8, !dbg !2911
  %34 = add i64 %gcov_ctr118, 1, !dbg !2911
  store i64 %34, i64* getelementptr inbounds ([19 x i64], [19 x i64]* @__llvm_gcov_ctr.86, i64 0, i64 17), align 8, !dbg !2911
  call void @out_of_memory(%struct.conn* noundef nonnull %c, i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str.64, i64 0, i64 0)) #16, !dbg !2913
  br label %cleanup98, !dbg !2914

if.else89:                                        ; preds = %if.end83
  %offset93 = getelementptr inbounds %struct.conn, %struct.conn* %c, i64 0, i32 35, i32 2, !dbg !2915
  %35 = load i64, i64* %offset93, align 8, !dbg !2915, !tbaa !2898
  %conv94 = trunc i64 %35 to i32, !dbg !2917
  call void @write_and_free(%struct.conn* noundef nonnull %c, i8* noundef nonnull %33, i32 noundef %conv94) #16, !dbg !2918
  store i8* null, i8** %buffer85, align 8, !dbg !2919, !tbaa !2888
  br label %cleanup98

cleanup98:                                        ; preds = %if.then88, %if.else89, %if.else78, %if.else70, %if.then69, %if.else56, %if.end40
  ret void, !dbg !2920
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @bin_list_sasl_mechs(%struct.conn* noundef %c) unnamed_addr #0 !dbg !2921 {
entry:
  call void @llvm.dbg.value(metadata %struct.conn* %c, metadata !2923, metadata !DIExpression()), !dbg !2927
  %0 = load i8, i8* getelementptr inbounds (%struct.settings, %struct.settings* @settings, i64 0, i32 26), align 4, !dbg !2928, !tbaa !963, !range !966
  %tobool.not = icmp eq i8 %0, 0, !dbg !2928
  br i1 %tobool.not, label %if.then, label %if.end, !dbg !2930

if.then:                                          ; preds = %entry
  %gcov_ctr = load i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @__llvm_gcov_ctr.87, i64 0, i64 0), align 16, !dbg !2931
  %1 = add i64 %gcov_ctr, 1, !dbg !2931
  store i64 %1, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @__llvm_gcov_ctr.87, i64 0, i64 0), align 16, !dbg !2931
  %bodylen = getelementptr inbounds %struct.conn, %struct.conn* %c, i64 0, i32 36, i32 0, i32 6, !dbg !2933
  %2 = load i32, i32* %bodylen, align 8, !dbg !2933, !tbaa !858
  %keylen = getelementptr inbounds %struct.conn, %struct.conn* %c, i64 0, i32 36, i32 0, i32 2, !dbg !2934
  %3 = load i16, i16* %keylen, align 2, !dbg !2934, !tbaa !858
  %conv = zext i16 %3 to i32, !dbg !2935
  %sub = sub i32 %2, %conv, !dbg !2936
  tail call void @write_bin_error(%struct.conn* noundef %c, i32 noundef 129, i8* noundef null, i32 noundef %sub) #15, !dbg !2937
  br label %cleanup.cont, !dbg !2938

if.end:                                           ; preds = %entry
  tail call fastcc void @init_sasl_conn(%struct.conn* noundef %c) #15, !dbg !2939
  call void @llvm.dbg.value(metadata i8* null, metadata !2924, metadata !DIExpression()), !dbg !2927
  call void @llvm.dbg.value(metadata i32 0, metadata !2925, metadata !DIExpression()), !dbg !2927
  call void @llvm.dbg.value(metadata i32 1, metadata !2926, metadata !DIExpression()), !dbg !2927
  %4 = load i32, i32* getelementptr inbounds (%struct.settings, %struct.settings* @settings, i64 0, i32 5), align 8, !dbg !2940, !tbaa !997
  %tobool5.not = icmp eq i32 %4, 0, !dbg !2944
  br i1 %tobool5.not, label %if.end7, label %if.then6, !dbg !2945

if.then6:                                         ; preds = %if.end
  %gcov_ctr11 = load i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @__llvm_gcov_ctr.87, i64 0, i64 1), align 8, !dbg !2946
  %5 = add i64 %gcov_ctr11, 1, !dbg !2946
  store i64 %5, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @__llvm_gcov_ctr.87, i64 0, i64 1), align 8, !dbg !2946
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2946, !tbaa !830
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %6, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.65, i64 0, i64 0)) #16, !dbg !2948
  br label %if.end7, !dbg !2949

if.end7:                                          ; preds = %if.then6, %if.end
  %gcov_ctr12 = load i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @__llvm_gcov_ctr.87, i64 0, i64 2), align 16, !dbg !2950
  %7 = add i64 %gcov_ctr12, 1, !dbg !2950
  store i64 %7, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @__llvm_gcov_ctr.87, i64 0, i64 2), align 16, !dbg !2950
  tail call void @write_bin_error(%struct.conn* noundef %c, i32 noundef 32, i8* noundef null, i32 noundef 0) #15, !dbg !2951
  br label %cleanup.cont

cleanup.cont:                                     ; preds = %if.end7, %if.then
  ret void, !dbg !2952
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @process_bin_sasl_auth(%struct.conn* noundef %c) unnamed_addr #0 !dbg !2953 {
entry:
  call void @llvm.dbg.value(metadata %struct.conn* %c, metadata !2955, metadata !DIExpression()), !dbg !2960
  %0 = load i8, i8* getelementptr inbounds (%struct.settings, %struct.settings* @settings, i64 0, i32 26), align 4, !dbg !2961, !tbaa !963, !range !966
  %tobool.not = icmp eq i8 %0, 0, !dbg !2961
  br i1 %tobool.not, label %if.then, label %if.end, !dbg !2963

if.then:                                          ; preds = %entry
  %gcov_ctr = load i64, i64* getelementptr inbounds ([9 x i64], [9 x i64]* @__llvm_gcov_ctr.88, i64 0, i64 0), align 16, !dbg !2964
  %1 = add i64 %gcov_ctr, 1, !dbg !2964
  store i64 %1, i64* getelementptr inbounds ([9 x i64], [9 x i64]* @__llvm_gcov_ctr.88, i64 0, i64 0), align 16, !dbg !2964
  %bodylen = getelementptr inbounds %struct.conn, %struct.conn* %c, i64 0, i32 36, i32 0, i32 6, !dbg !2966
  %2 = load i32, i32* %bodylen, align 8, !dbg !2966, !tbaa !858
  %keylen = getelementptr inbounds %struct.conn, %struct.conn* %c, i64 0, i32 36, i32 0, i32 2, !dbg !2967
  %3 = load i16, i16* %keylen, align 2, !dbg !2967, !tbaa !858
  %conv = zext i16 %3 to i32, !dbg !2968
  %sub = sub i32 %2, %conv, !dbg !2969
  tail call void @write_bin_error(%struct.conn* noundef %c, i32 noundef 129, i8* noundef null, i32 noundef %sub) #15, !dbg !2970
  br label %cleanup.cont, !dbg !2971

if.end:                                           ; preds = %entry
  %extlen = getelementptr inbounds %struct.conn, %struct.conn* %c, i64 0, i32 36, i32 0, i32 3, !dbg !2972
  %4 = load i8, i8* %extlen, align 4, !dbg !2972, !tbaa !858
  %cmp = icmp eq i8 %4, 0, !dbg !2972
  br i1 %cmp, label %if.end8, label %if.else, !dbg !2975

if.else:                                          ; preds = %if.end
  %gcov_ctr53 = load i64, i64* getelementptr inbounds ([9 x i64], [9 x i64]* @__llvm_gcov_ctr.88, i64 0, i64 1), align 8, !dbg !2972
  %5 = add i64 %gcov_ctr53, 1, !dbg !2972
  store i64 %5, i64* getelementptr inbounds ([9 x i64], [9 x i64]* @__llvm_gcov_ctr.88, i64 0, i64 1), align 8, !dbg !2972
  tail call void @__assert_fail(i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.66, i64 0, i64 0), i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 noundef 734, i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @__PRETTY_FUNCTION__.process_bin_sasl_auth, i64 0, i64 0)) #14, !dbg !2972
  unreachable, !dbg !2972

if.end8:                                          ; preds = %if.end
  %keylen11 = getelementptr inbounds %struct.conn, %struct.conn* %c, i64 0, i32 36, i32 0, i32 2, !dbg !2976
  %6 = load i16, i16* %keylen11, align 2, !dbg !2976, !tbaa !858
  %conv12 = zext i16 %6 to i32, !dbg !2977
  call void @llvm.dbg.value(metadata i32 %conv12, metadata !2956, metadata !DIExpression()), !dbg !2960
  %bodylen15 = getelementptr inbounds %struct.conn, %struct.conn* %c, i64 0, i32 36, i32 0, i32 6, !dbg !2978
  %7 = load i32, i32* %bodylen15, align 8, !dbg !2978, !tbaa !858
  %sub16 = sub i32 %7, %conv12, !dbg !2979
  call void @llvm.dbg.value(metadata i32 %sub16, metadata !2957, metadata !DIExpression()), !dbg !2960
  %cmp17 = icmp ugt i16 %6, 32, !dbg !2980
  br i1 %cmp17, label %if.then19, label %if.end20, !dbg !2982

if.then19:                                        ; preds = %if.end8
  %gcov_ctr54 = load i64, i64* getelementptr inbounds ([9 x i64], [9 x i64]* @__llvm_gcov_ctr.88, i64 0, i64 2), align 16, !dbg !2983
  %8 = add i64 %gcov_ctr54, 1, !dbg !2983
  store i64 %8, i64* getelementptr inbounds ([9 x i64], [9 x i64]* @__llvm_gcov_ctr.88, i64 0, i64 2), align 16, !dbg !2983
  tail call void @write_bin_error(%struct.conn* noundef nonnull %c, i32 noundef 4, i8* noundef null, i32 noundef %sub16) #15, !dbg !2985
  tail call void @conn_set_state(%struct.conn* noundef nonnull %c, i32 noundef 7) #16, !dbg !2986
  br label %cleanup.cont, !dbg !2987

if.end20:                                         ; preds = %if.end8
  %call = tail call fastcc i8* @binary_get_key(%struct.conn* noundef nonnull %c) #15, !dbg !2988
  call void @llvm.dbg.value(metadata i8* %call, metadata !2958, metadata !DIExpression()), !dbg !2960
  %tobool21.not = icmp eq i8* %call, null, !dbg !2989
  br i1 %tobool21.not, label %if.else23, label %if.end24, !dbg !2992

if.else23:                                        ; preds = %if.end20
  %gcov_ctr55 = load i64, i64* getelementptr inbounds ([9 x i64], [9 x i64]* @__llvm_gcov_ctr.88, i64 0, i64 3), align 8, !dbg !2989
  %9 = add i64 %gcov_ctr55, 1, !dbg !2989
  store i64 %9, i64* getelementptr inbounds ([9 x i64], [9 x i64]* @__llvm_gcov_ctr.88, i64 0, i64 3), align 8, !dbg !2989
  tail call void @__assert_fail(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.67, i64 0, i64 0), i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 noundef 746, i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @__PRETTY_FUNCTION__.process_bin_sasl_auth, i64 0, i64 0)) #14, !dbg !2989
  unreachable, !dbg !2989

if.end24:                                         ; preds = %if.end20
  %conv25 = zext i16 %6 to i64, !dbg !2993
  %add = add nsw i32 %sub16, 2, !dbg !2994
  %call26 = tail call %struct._stritem* @item_alloc(i8* noundef nonnull %call, i64 noundef %conv25, i32 noundef 0, i32 noundef 0, i32 noundef %add) #16, !dbg !2995
  call void @llvm.dbg.value(metadata %struct._stritem* %call26, metadata !2959, metadata !DIExpression()), !dbg !2960
  %cmp27 = icmp eq %struct._stritem* %call26, null, !dbg !2996
  br i1 %cmp27, label %if.end34.critedge, label %lor.lhs.false, !dbg !2998

lor.lhs.false:                                    ; preds = %if.end24
  %gcov_ctr56 = load i64, i64* getelementptr inbounds ([9 x i64], [9 x i64]* @__llvm_gcov_ctr.88, i64 0, i64 4), align 16, !dbg !2999
  %10 = add i64 %gcov_ctr56, 1, !dbg !2999
  store i64 %10, i64* getelementptr inbounds ([9 x i64], [9 x i64]* @__llvm_gcov_ctr.88, i64 0, i64 4), align 16, !dbg !2999
  %it_flags = getelementptr inbounds %struct._stritem, %struct._stritem* %call26, i64 0, i32 7, !dbg !3000
  %11 = load i16, i16* %it_flags, align 2, !dbg !3000, !tbaa !866
  %12 = and i16 %11, 32, !dbg !3001
  %tobool30.not = icmp eq i16 %12, 0, !dbg !3001
  br i1 %tobool30.not, label %if.end35, label %if.then33, !dbg !3002

if.then33:                                        ; preds = %lor.lhs.false
  tail call void @write_bin_error(%struct.conn* noundef nonnull %c, i32 noundef 130, i8* noundef null, i32 noundef %sub16) #15, !dbg !3003
  tail call void @conn_set_state(%struct.conn* noundef nonnull %c, i32 noundef 7) #16, !dbg !3005
  %gcov_ctr57 = load i64, i64* getelementptr inbounds ([9 x i64], [9 x i64]* @__llvm_gcov_ctr.88, i64 0, i64 5), align 8, !dbg !3006
  %13 = add i64 %gcov_ctr57, 1, !dbg !3006
  store i64 %13, i64* getelementptr inbounds ([9 x i64], [9 x i64]* @__llvm_gcov_ctr.88, i64 0, i64 5), align 8, !dbg !3006
  tail call void @do_item_remove(%struct._stritem* noundef nonnull %call26) #16, !dbg !3009
  br label %if.end34, !dbg !3010

if.end34.critedge:                                ; preds = %if.end24
  tail call void @write_bin_error(%struct.conn* noundef nonnull %c, i32 noundef 130, i8* noundef null, i32 noundef %sub16) #15, !dbg !3003
  tail call void @conn_set_state(%struct.conn* noundef nonnull %c, i32 noundef 7) #16, !dbg !3005
  br label %if.end34, !dbg !3011

if.end34:                                         ; preds = %if.end34.critedge, %if.then33
  %gcov_ctr58 = load i64, i64* getelementptr inbounds ([9 x i64], [9 x i64]* @__llvm_gcov_ctr.88, i64 0, i64 6), align 16
  %14 = add i64 %gcov_ctr58, 1
  store i64 %14, i64* getelementptr inbounds ([9 x i64], [9 x i64]* @__llvm_gcov_ctr.88, i64 0, i64 6), align 16
  br label %cleanup.cont, !dbg !3012

if.end35:                                         ; preds = %lor.lhs.false
  %gcov_ctr59 = load i64, i64* getelementptr inbounds ([9 x i64], [9 x i64]* @__llvm_gcov_ctr.88, i64 0, i64 7), align 8, !dbg !3013
  %15 = add i64 %gcov_ctr59, 1, !dbg !3013
  store i64 %15, i64* getelementptr inbounds ([9 x i64], [9 x i64]* @__llvm_gcov_ctr.88, i64 0, i64 7), align 8, !dbg !3013
  %item = getelementptr inbounds %struct.conn, %struct.conn* %c, i64 0, i32 23, !dbg !3014
  %16 = bitcast i8** %item to %struct._stritem**, !dbg !3015
  store %struct._stritem* %call26, %struct._stritem** %16, align 8, !dbg !3015, !tbaa !820
  %data = getelementptr inbounds %struct._stritem, %struct._stritem* %call26, i64 0, i32 10, !dbg !3016
  %17 = bitcast [0 x %union.anon.9]* %data to i8*, !dbg !3016
  %nkey36 = getelementptr inbounds %struct._stritem, %struct._stritem* %call26, i64 0, i32 9, !dbg !3016
  %18 = load i8, i8* %nkey36, align 1, !dbg !3016, !tbaa !858
  %19 = zext i8 %18 to i64
  %add.ptr = getelementptr inbounds i8, i8* %17, i64 %19, !dbg !3016
  %add.ptr38 = getelementptr inbounds i8, i8* %add.ptr, i64 1, !dbg !3016
  %20 = load i16, i16* %it_flags, align 2, !dbg !3016, !tbaa !866
  %conv40 = zext i16 %20 to i32, !dbg !3016
  %and41 = lshr i32 %conv40, 6, !dbg !3016
  %21 = and i32 %and41, 4, !dbg !3016
  %22 = zext i32 %21 to i64, !dbg !3016
  %add.ptr43 = getelementptr inbounds i8, i8* %add.ptr38, i64 %22, !dbg !3016
  %and46 = shl nuw nsw i32 %conv40, 2, !dbg !3016
  %23 = and i32 %and46, 8, !dbg !3016
  %24 = zext i32 %23 to i64, !dbg !3016
  %add.ptr49 = getelementptr inbounds i8, i8* %add.ptr43, i64 %24, !dbg !3016
  %ritem = getelementptr inbounds %struct.conn, %struct.conn* %c, i64 0, i32 21, !dbg !3017
  store i8* %add.ptr49, i8** %ritem, align 8, !dbg !3018, !tbaa !886
  %rlbytes = getelementptr inbounds %struct.conn, %struct.conn* %c, i64 0, i32 22, !dbg !3019
  store i32 %sub16, i32* %rlbytes, align 8, !dbg !3020, !tbaa !2129
  tail call void @conn_set_state(%struct.conn* noundef nonnull %c, i32 noundef 6) #16, !dbg !3021
  %substate = getelementptr inbounds %struct.conn, %struct.conn* %c, i64 0, i32 10, !dbg !3022
  store i32 10, i32* %substate, align 8, !dbg !3023, !tbaa !811
  br label %cleanup.cont, !dbg !3024

cleanup.cont:                                     ; preds = %if.then19, %if.end35, %if.end34, %if.then
  ret void, !dbg !3024
}

declare !dbg !3025 dso_local i32 @realtime(i64 noundef) local_unnamed_addr #3

declare !dbg !3029 dso_local i64 @get_cas_id() local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define internal fastcc i8* @binary_get_key(%struct.conn* nocapture noundef readonly %c) unnamed_addr #9 !dbg !3032 {
entry:
  %gcov_ctr = load i64, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.89, i64 0, i64 0), align 8
  %0 = add i64 %gcov_ctr, 1
  store i64 %0, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.89, i64 0, i64 0), align 8
  call void @llvm.dbg.value(metadata %struct.conn* %c, metadata !3036, metadata !DIExpression()), !dbg !3037
  %rcurr = getelementptr inbounds %struct.conn, %struct.conn* %c, i64 0, i32 16, !dbg !3038
  %1 = load i8*, i8** %rcurr, align 8, !dbg !3038, !tbaa !1166
  %keylen = getelementptr inbounds %struct.conn, %struct.conn* %c, i64 0, i32 36, i32 0, i32 2, !dbg !3039
  %2 = load i16, i16* %keylen, align 2, !dbg !3039, !tbaa !858
  %3 = zext i16 %2 to i64
  %idx.neg = sub nsw i64 0, %3, !dbg !3040
  %add.ptr = getelementptr inbounds i8, i8* %1, i64 %idx.neg, !dbg !3040
  ret i8* %add.ptr, !dbg !3041
}

declare !dbg !3042 dso_local void @stats_prefix_record_set(i8* noundef, i64 noundef) local_unnamed_addr #3

declare !dbg !3047 dso_local %struct._stritem* @item_alloc(i8* noundef, i64 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare !dbg !3050 dso_local zeroext i1 @item_size_ok(i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare !dbg !3054 dso_local void @out_of_memory(%struct.conn* noundef, i8* noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare !dbg !3055 dso_local i8* @pthread_getspecific(i32 noundef) local_unnamed_addr #4

declare !dbg !3059 dso_local i32 @logger_log(%struct._logger* noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #3

declare !dbg !3063 dso_local %struct._stritem* @item_get(i8* noundef, i64 noundef, %struct.conn* noundef, i1 noundef zeroext) local_unnamed_addr #3

declare !dbg !3067 dso_local void @item_unlink(%struct._stritem* noundef) local_unnamed_addr #3

declare !dbg !3068 dso_local void @storage_delete(i8* noundef, %struct._stritem* noundef) local_unnamed_addr #3

declare !dbg !3072 dso_local i64 @fwrite(i8* noundef, i64 noundef, i64 noundef, %struct._IO_FILE* noundef) local_unnamed_addr #3

declare !dbg !3075 dso_local i32 @fputc(i32 noundef, %struct._IO_FILE* noundef) local_unnamed_addr #3

declare !dbg !3078 dso_local %struct._stritem* @item_touch(i8* noundef, i64 noundef, i32 noundef, %struct.conn* noundef) local_unnamed_addr #3

declare !dbg !3081 dso_local i32 @storage_get_item(%struct.conn* noundef, %struct._stritem* noundef, %struct._mc_resp* noundef) local_unnamed_addr #3

declare !dbg !3084 dso_local void @resp_add_chunked_iov(%struct._mc_resp* noundef, i8* noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @write_bin_miss_response(%struct.conn* noundef %c, i8* noundef %key, i64 noundef %nkey) unnamed_addr #0 !dbg !3085 {
entry:
  call void @llvm.dbg.value(metadata %struct.conn* %c, metadata !3089, metadata !DIExpression()), !dbg !3095
  call void @llvm.dbg.value(metadata i8* %key, metadata !3090, metadata !DIExpression()), !dbg !3095
  call void @llvm.dbg.value(metadata i64 %nkey, metadata !3091, metadata !DIExpression()), !dbg !3095
  %tobool.not = icmp eq i64 %nkey, 0, !dbg !3096
  br i1 %tobool.not, label %if.else, label %if.then, !dbg !3097

if.then:                                          ; preds = %entry
  %gcov_ctr = load i64, i64* getelementptr inbounds ([2 x i64], [2 x i64]* @__llvm_gcov_ctr.90, i64 0, i64 0), align 8, !dbg !3098
  %0 = add i64 %gcov_ctr, 1, !dbg !3098
  store i64 %0, i64* getelementptr inbounds ([2 x i64], [2 x i64]* @__llvm_gcov_ctr.90, i64 0, i64 0), align 8, !dbg !3098
  %conv = trunc i64 %nkey to i16, !dbg !3099
  %conv1 = trunc i64 %nkey to i32, !dbg !3100
  tail call fastcc void @add_bin_header(%struct.conn* noundef %c, i16 noundef zeroext 1, i8 noundef zeroext 0, i16 noundef zeroext %conv, i32 noundef %conv1) #15, !dbg !3101
  %resp = getelementptr inbounds %struct.conn, %struct.conn* %c, i64 0, i32 19, !dbg !3102
  %1 = load %struct._mc_resp*, %struct._mc_resp** %resp, align 8, !dbg !3102, !tbaa !1640
  %add.ptr = getelementptr inbounds %struct._mc_resp, %struct._mc_resp* %1, i64 0, i32 18, i64 24, !dbg !3103
  call void @llvm.dbg.value(metadata i8* %add.ptr, metadata !3092, metadata !DIExpression()), !dbg !3104
  %call = tail call i8* @memcpy(i8* noundef nonnull %add.ptr, i8* noundef %key, i64 noundef %nkey) #16, !dbg !3105
  %2 = load %struct._mc_resp*, %struct._mc_resp** %resp, align 8, !dbg !3106, !tbaa !1640
  tail call void @resp_add_iov(%struct._mc_resp* noundef %2, i8* noundef nonnull %add.ptr, i32 noundef %conv1) #16, !dbg !3107
  tail call void @conn_set_state(%struct.conn* noundef %c, i32 noundef 1) #16, !dbg !3108
  br label %if.end, !dbg !3109

if.else:                                          ; preds = %entry
  %gcov_ctr4 = load i64, i64* getelementptr inbounds ([2 x i64], [2 x i64]* @__llvm_gcov_ctr.90, i64 0, i64 1), align 8, !dbg !3110
  %3 = add i64 %gcov_ctr4, 1, !dbg !3110
  store i64 %3, i64* getelementptr inbounds ([2 x i64], [2 x i64]* @__llvm_gcov_ctr.90, i64 0, i64 1), align 8, !dbg !3110
  tail call void @write_bin_error(%struct.conn* noundef %c, i32 noundef 1, i8* noundef null, i32 noundef 0) #15, !dbg !3112
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void, !dbg !3113
}

declare !dbg !3114 dso_local void @stats_prefix_record_get(i8* noundef, i64 noundef, i1 noundef zeroext) local_unnamed_addr #3

declare !dbg !3117 dso_local void @stats_prefix_record_delete(i8* noundef, i64 noundef) local_unnamed_addr #3

declare !dbg !3118 dso_local %struct._stritem* @item_get_locked(i8* noundef, i64 noundef, %struct.conn* noundef, i1 noundef zeroext, i32* noundef) local_unnamed_addr #3

declare !dbg !3121 dso_local void @do_item_unlink(%struct._stritem* noundef, i32 noundef) local_unnamed_addr #3

declare !dbg !3125 dso_local void @item_unlock(i32 noundef) local_unnamed_addr #3

declare !dbg !3128 dso_local i32 @add_delta(%struct.conn* noundef, i8* noundef, i64 noundef, i1 noundef zeroext, i64 noundef, i8* noundef, i64* noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare !dbg !3136 dso_local i64 @strtoull(i8* noundef, i8** noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare !dbg !3142 dso_local i32 @snprintf(i8* noundef, i64 noundef, i8* noundef, ...) local_unnamed_addr #4

declare !dbg !3146 dso_local void @server_stats(void (i8*, i16, i8*, i32, i8*)* noundef, %struct.conn* noundef) local_unnamed_addr #3

declare !dbg !3154 dso_local void @append_stats(i8* noundef, i16 noundef zeroext, i8* noundef, i32 noundef, i8* noundef) #3

declare !dbg !3155 dso_local zeroext i1 @get_stats(i8* noundef, i32 noundef, void (i8*, i16, i8*, i32, i8*)* noundef, i8* noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare !dbg !3158 dso_local i32 @strncmp(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #7

declare !dbg !3161 dso_local void @stats_reset() local_unnamed_addr #3

declare !dbg !3164 dso_local void @process_stat_settings(void (i8*, i16, i8*, i32, i8*)* noundef, i8* noundef) local_unnamed_addr #3

declare !dbg !3167 dso_local i8* @stats_prefix_dump(i32* noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare !dbg !3171 dso_local void @free(i8* noundef) local_unnamed_addr #4

declare !dbg !3174 dso_local void @write_and_free(%struct.conn* noundef, i8* noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define internal void @__llvm_gcov_writeout() unnamed_addr #10 {
entry:
  tail call void @llvm_gcda_start_file(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @0, i64 0, i64 0), i32 875575338, i32 390818216) #17
  br label %counter.loop.header

counter.loop.header:                              ; preds = %entry, %counter.loop.header
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.next, %counter.loop.header ]
  %0 = getelementptr inbounds [24 x %emit_function_args_ty], [24 x %emit_function_args_ty]* @__llvm_internal_gcov_emit_function_args.0, i64 0, i64 %indvars.iv, i32 0
  %ident = load i32, i32* %0, align 4
  %1 = getelementptr inbounds [24 x %emit_function_args_ty], [24 x %emit_function_args_ty]* @__llvm_internal_gcov_emit_function_args.0, i64 0, i64 %indvars.iv, i32 1
  %func_checkssum = load i32, i32* %1, align 4
  %2 = getelementptr inbounds [24 x %emit_function_args_ty], [24 x %emit_function_args_ty]* @__llvm_internal_gcov_emit_function_args.0, i64 0, i64 %indvars.iv, i32 2
  %cfg_checksum = load i32, i32* %2, align 4
  tail call void @llvm_gcda_emit_function(i32 %ident, i32 %func_checkssum, i32 %cfg_checksum) #17
  %3 = getelementptr inbounds [24 x %emit_arcs_args_ty], [24 x %emit_arcs_args_ty]* @__llvm_internal_gcov_emit_arcs_args.0, i64 0, i64 %indvars.iv, i32 0
  %num_counters = load i32, i32* %3, align 16
  %4 = getelementptr inbounds [24 x %emit_arcs_args_ty], [24 x %emit_arcs_args_ty]* @__llvm_internal_gcov_emit_arcs_args.0, i64 0, i64 %indvars.iv, i32 1
  %counters = load i64*, i64** %4, align 8
  tail call void @llvm_gcda_emit_arcs(i32 %num_counters, i64* %counters) #17
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 24
  br i1 %exitcond.not, label %file.loop.latch, label %counter.loop.header

file.loop.latch:                                  ; preds = %counter.loop.header
  tail call void @llvm_gcda_summary_info() #17
  tail call void @llvm_gcda_end_file() #17
  ret void
}

declare void @llvm_gcda_start_file(i8*, i32, i32) local_unnamed_addr

declare void @llvm_gcda_emit_function(i32, i32, i32) local_unnamed_addr

declare void @llvm_gcda_emit_arcs(i32, i64*) local_unnamed_addr

declare void @llvm_gcda_summary_info() local_unnamed_addr

declare void @llvm_gcda_end_file() local_unnamed_addr

; Function Attrs: mustprogress nofree noinline nosync nounwind uwtable willreturn writeonly
define internal void @__llvm_gcov_reset() unnamed_addr #11 {
entry:
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(48) bitcast ([6 x i64]* @__llvm_gcov_ctr to i8*), i8 0, i64 48, i1 false)
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(96) bitcast ([12 x i64]* @__llvm_gcov_ctr.68 to i8*), i8 0, i64 96, i1 false)
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(144) bitcast ([18 x i64]* @__llvm_gcov_ctr.69 to i8*), i8 0, i64 144, i1 false)
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(96) bitcast ([12 x i64]* @__llvm_gcov_ctr.70 to i8*), i8 0, i64 96, i1 false)
  store i64 0, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.71, i64 0, i64 0), align 8
  store i64 0, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.72, i64 0, i64 0), align 8
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(560) bitcast ([70 x i64]* @__llvm_gcov_ctr.73 to i8*), i8 0, i64 560, i1 false)
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(112) bitcast ([14 x i64]* @__llvm_gcov_ctr.74 to i8*), i8 0, i64 112, i1 false)
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(40) bitcast ([5 x i64]* @__llvm_gcov_ctr.75 to i8*), i8 0, i64 40, i1 false)
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(40) bitcast ([5 x i64]* @__llvm_gcov_ctr.76 to i8*), i8 0, i64 40, i1 false)
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(48) bitcast ([6 x i64]* @__llvm_gcov_ctr.77 to i8*), i8 0, i64 48, i1 false)
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(32) bitcast ([4 x i64]* @__llvm_gcov_ctr.78 to i8*), i8 0, i64 32, i1 false)
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) bitcast ([2 x i64]* @__llvm_gcov_ctr.79 to i8*), i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(56) bitcast ([7 x i64]* @__llvm_gcov_ctr.80 to i8*), i8 0, i64 56, i1 false)
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(160) bitcast ([20 x i64]* @__llvm_gcov_ctr.81 to i8*), i8 0, i64 160, i1 false)
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(224) bitcast ([28 x i64]* @__llvm_gcov_ctr.82 to i8*), i8 0, i64 224, i1 false)
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(72) bitcast ([9 x i64]* @__llvm_gcov_ctr.83 to i8*), i8 0, i64 72, i1 false)
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(128) bitcast ([16 x i64]* @__llvm_gcov_ctr.84 to i8*), i8 0, i64 128, i1 false)
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(80) bitcast ([10 x i64]* @__llvm_gcov_ctr.85 to i8*), i8 0, i64 80, i1 false)
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(152) bitcast ([19 x i64]* @__llvm_gcov_ctr.86 to i8*), i8 0, i64 152, i1 false)
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(40) bitcast ([5 x i64]* @__llvm_gcov_ctr.87 to i8*), i8 0, i64 40, i1 false)
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(72) bitcast ([9 x i64]* @__llvm_gcov_ctr.88 to i8*), i8 0, i64 72, i1 false)
  store i64 0, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.89, i64 0, i64 0), align 8
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) bitcast ([2 x i64]* @__llvm_gcov_ctr.90 to i8*), i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #12

; Function Attrs: noinline nounwind uwtable
define internal void @__llvm_gcov_init() unnamed_addr #10 {
entry:
  tail call void @llvm_gcov_init(void ()* nonnull @__llvm_gcov_writeout, void ()* nonnull @__llvm_gcov_reset) #17
  ret void
}

declare void @llvm_gcov_init(void ()*, void ()*) local_unnamed_addr

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #13

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #13

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #13

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { noreturn nounwind "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #6 = { mustprogress nofree noinline nosync nounwind uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree nosync nounwind willreturn }
attributes #9 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { noinline nounwind uwtable }
attributes #11 = { mustprogress nofree noinline nosync nounwind uwtable willreturn writeonly }
attributes #12 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #13 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #14 = { nobuiltin noreturn nounwind "no-builtins" }
attributes #15 = { nobuiltin "no-builtins" }
attributes #16 = { nobuiltin nounwind "no-builtins" }
attributes #17 = { nounwind }
attributes #18 = { nobuiltin nounwind readonly willreturn "no-builtins" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!382, !383, !384, !385}
!llvm.gcov = !{!386}
!llvm.ident = !{!387}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 14.0.0", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !160, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "proto_bin.c", directory: "/home/xuheng/blackbox/llvm-test/memcached", checksumkind: CSK_MD5, checksum: "3a50ce7ef53b743822ddf6e1f28766f8")
!2 = !{!3, !21, !35, !53, !58, !63, !69, !74, !87, !90, !98, !148, !153}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "conn_states", file: !4, line: 199, baseType: !5, size: 32, elements: !6)
!4 = !DIFile(filename: "./memcached.h", directory: "/home/xuheng/blackbox/llvm-test/memcached", checksumkind: CSK_MD5, checksum: "9260b30e1b6ff2e5471cc4f8f6971051")
!5 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!6 = !{!7, !8, !9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19, !20}
!7 = !DIEnumerator(name: "conn_listening", value: 0)
!8 = !DIEnumerator(name: "conn_new_cmd", value: 1)
!9 = !DIEnumerator(name: "conn_waiting", value: 2)
!10 = !DIEnumerator(name: "conn_read", value: 3)
!11 = !DIEnumerator(name: "conn_parse_cmd", value: 4)
!12 = !DIEnumerator(name: "conn_write", value: 5)
!13 = !DIEnumerator(name: "conn_nread", value: 6)
!14 = !DIEnumerator(name: "conn_swallow", value: 7)
!15 = !DIEnumerator(name: "conn_closing", value: 8)
!16 = !DIEnumerator(name: "conn_mwrite", value: 9)
!17 = !DIEnumerator(name: "conn_closed", value: 10)
!18 = !DIEnumerator(name: "conn_watch", value: 11)
!19 = !DIEnumerator(name: "conn_io_queue", value: 12)
!20 = !DIEnumerator(name: "conn_max_state", value: 13)
!21 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "bin_substates", file: !4, line: 216, baseType: !5, size: 32, elements: !22)
!22 = !{!23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34}
!23 = !DIEnumerator(name: "bin_no_state", value: 0)
!24 = !DIEnumerator(name: "bin_reading_set_header", value: 1)
!25 = !DIEnumerator(name: "bin_reading_cas_header", value: 2)
!26 = !DIEnumerator(name: "bin_read_set_value", value: 3)
!27 = !DIEnumerator(name: "bin_reading_get_key", value: 4)
!28 = !DIEnumerator(name: "bin_reading_stat", value: 5)
!29 = !DIEnumerator(name: "bin_reading_del_header", value: 6)
!30 = !DIEnumerator(name: "bin_reading_incr_header", value: 7)
!31 = !DIEnumerator(name: "bin_read_flush_exptime", value: 8)
!32 = !DIEnumerator(name: "bin_reading_sasl_auth", value: 9)
!33 = !DIEnumerator(name: "bin_reading_sasl_auth_data", value: 10)
!34 = !DIEnumerator(name: "bin_reading_touch_key", value: 11)
!35 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "log_entry_type", file: !36, line: 16, baseType: !5, size: 32, elements: !37)
!36 = !DIFile(filename: "./logger.h", directory: "/home/xuheng/blackbox/llvm-test/memcached", checksumkind: CSK_MD5, checksum: "920aeded0afd45e7ff5c610f1349e8a7")
!37 = !{!38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52}
!38 = !DIEnumerator(name: "LOGGER_ASCII_CMD", value: 0)
!39 = !DIEnumerator(name: "LOGGER_EVICTION", value: 1)
!40 = !DIEnumerator(name: "LOGGER_ITEM_GET", value: 2)
!41 = !DIEnumerator(name: "LOGGER_ITEM_STORE", value: 3)
!42 = !DIEnumerator(name: "LOGGER_CRAWLER_STATUS", value: 4)
!43 = !DIEnumerator(name: "LOGGER_SLAB_MOVE", value: 5)
!44 = !DIEnumerator(name: "LOGGER_CONNECTION_NEW", value: 6)
!45 = !DIEnumerator(name: "LOGGER_CONNECTION_CLOSE", value: 7)
!46 = !DIEnumerator(name: "LOGGER_EXTSTORE_WRITE", value: 8)
!47 = !DIEnumerator(name: "LOGGER_COMPACT_START", value: 9)
!48 = !DIEnumerator(name: "LOGGER_COMPACT_ABORT", value: 10)
!49 = !DIEnumerator(name: "LOGGER_COMPACT_READ_START", value: 11)
!50 = !DIEnumerator(name: "LOGGER_COMPACT_READ_END", value: 12)
!51 = !DIEnumerator(name: "LOGGER_COMPACT_END", value: 13)
!52 = !DIEnumerator(name: "LOGGER_COMPACT_FRAGINFO", value: 14)
!53 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "protocol", file: !4, line: 231, baseType: !5, size: 32, elements: !54)
!54 = !{!55, !56, !57}
!55 = !DIEnumerator(name: "ascii_prot", value: 3)
!56 = !DIEnumerator(name: "binary_prot", value: 4)
!57 = !DIEnumerator(name: "negotiating_prot", value: 5)
!58 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "network_transport", file: !4, line: 240, baseType: !5, size: 32, elements: !59)
!59 = !{!60, !61, !62}
!60 = !DIEnumerator(name: "local_transport", value: 0)
!61 = !DIEnumerator(name: "tcp_transport", value: 1)
!62 = !DIEnumerator(name: "udp_transport", value: 2)
!63 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "close_reasons", file: !4, line: 259, baseType: !5, size: 32, elements: !64)
!64 = !{!65, !66, !67, !68}
!65 = !DIEnumerator(name: "ERROR_CLOSE", value: 0)
!66 = !DIEnumerator(name: "NORMAL_CLOSE", value: 1)
!67 = !DIEnumerator(name: "IDLE_TIMEOUT_CLOSE", value: 2)
!68 = !DIEnumerator(name: "SHUTDOWN_CLOSE", value: 3)
!69 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !70, line: 53, baseType: !5, size: 32, elements: !71)
!70 = !DIFile(filename: "./protocol_binary.h", directory: "/home/xuheng/blackbox/llvm-test/memcached", checksumkind: CSK_MD5, checksum: "7a322a65fa8661e9a597acbeeeb23107")
!71 = !{!72, !73}
!72 = !DIEnumerator(name: "PROTOCOL_BINARY_REQ", value: 128)
!73 = !DIEnumerator(name: "PROTOCOL_BINARY_RES", value: 129)
!74 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !70, line: 62, baseType: !5, size: 32, elements: !75)
!75 = !{!76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86}
!76 = !DIEnumerator(name: "PROTOCOL_BINARY_RESPONSE_SUCCESS", value: 0)
!77 = !DIEnumerator(name: "PROTOCOL_BINARY_RESPONSE_KEY_ENOENT", value: 1)
!78 = !DIEnumerator(name: "PROTOCOL_BINARY_RESPONSE_KEY_EEXISTS", value: 2)
!79 = !DIEnumerator(name: "PROTOCOL_BINARY_RESPONSE_E2BIG", value: 3)
!80 = !DIEnumerator(name: "PROTOCOL_BINARY_RESPONSE_EINVAL", value: 4)
!81 = !DIEnumerator(name: "PROTOCOL_BINARY_RESPONSE_NOT_STORED", value: 5)
!82 = !DIEnumerator(name: "PROTOCOL_BINARY_RESPONSE_DELTA_BADVAL", value: 6)
!83 = !DIEnumerator(name: "PROTOCOL_BINARY_RESPONSE_AUTH_ERROR", value: 32)
!84 = !DIEnumerator(name: "PROTOCOL_BINARY_RESPONSE_AUTH_CONTINUE", value: 33)
!85 = !DIEnumerator(name: "PROTOCOL_BINARY_RESPONSE_UNKNOWN_COMMAND", value: 129)
!86 = !DIEnumerator(name: "PROTOCOL_BINARY_RESPONSE_ENOMEM", value: 130)
!87 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !70, line: 143, baseType: !5, size: 32, elements: !88)
!88 = !{!89}
!89 = !DIEnumerator(name: "PROTOCOL_BINARY_RAW_BYTES", value: 0)
!90 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "store_item_type", file: !4, line: 276, baseType: !5, size: 32, elements: !91)
!91 = !{!92, !93, !94, !95, !96, !97}
!92 = !DIEnumerator(name: "NOT_STORED", value: 0)
!93 = !DIEnumerator(name: "STORED", value: 1)
!94 = !DIEnumerator(name: "EXISTS", value: 2)
!95 = !DIEnumerator(name: "NOT_FOUND", value: 3)
!96 = !DIEnumerator(name: "TOO_LARGE", value: 4)
!97 = !DIEnumerator(name: "NO_MEMORY", value: 5)
!98 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !70, line: 80, baseType: !5, size: 32, elements: !99)
!99 = !{!100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147}
!100 = !DIEnumerator(name: "PROTOCOL_BINARY_CMD_GET", value: 0)
!101 = !DIEnumerator(name: "PROTOCOL_BINARY_CMD_SET", value: 1)
!102 = !DIEnumerator(name: "PROTOCOL_BINARY_CMD_ADD", value: 2)
!103 = !DIEnumerator(name: "PROTOCOL_BINARY_CMD_REPLACE", value: 3)
!104 = !DIEnumerator(name: "PROTOCOL_BINARY_CMD_DELETE", value: 4)
!105 = !DIEnumerator(name: "PROTOCOL_BINARY_CMD_INCREMENT", value: 5)
!106 = !DIEnumerator(name: "PROTOCOL_BINARY_CMD_DECREMENT", value: 6)
!107 = !DIEnumerator(name: "PROTOCOL_BINARY_CMD_QUIT", value: 7)
!108 = !DIEnumerator(name: "PROTOCOL_BINARY_CMD_FLUSH", value: 8)
!109 = !DIEnumerator(name: "PROTOCOL_BINARY_CMD_GETQ", value: 9)
!110 = !DIEnumerator(name: "PROTOCOL_BINARY_CMD_NOOP", value: 10)
!111 = !DIEnumerator(name: "PROTOCOL_BINARY_CMD_VERSION", value: 11)
!112 = !DIEnumerator(name: "PROTOCOL_BINARY_CMD_GETK", value: 12)
!113 = !DIEnumerator(name: "PROTOCOL_BINARY_CMD_GETKQ", value: 13)
!114 = !DIEnumerator(name: "PROTOCOL_BINARY_CMD_APPEND", value: 14)
!115 = !DIEnumerator(name: "PROTOCOL_BINARY_CMD_PREPEND", value: 15)
!116 = !DIEnumerator(name: "PROTOCOL_BINARY_CMD_STAT", value: 16)
!117 = !DIEnumerator(name: "PROTOCOL_BINARY_CMD_SETQ", value: 17)
!118 = !DIEnumerator(name: "PROTOCOL_BINARY_CMD_ADDQ", value: 18)
!119 = !DIEnumerator(name: "PROTOCOL_BINARY_CMD_REPLACEQ", value: 19)
!120 = !DIEnumerator(name: "PROTOCOL_BINARY_CMD_DELETEQ", value: 20)
!121 = !DIEnumerator(name: "PROTOCOL_BINARY_CMD_INCREMENTQ", value: 21)
!122 = !DIEnumerator(name: "PROTOCOL_BINARY_CMD_DECREMENTQ", value: 22)
!123 = !DIEnumerator(name: "PROTOCOL_BINARY_CMD_QUITQ", value: 23)
!124 = !DIEnumerator(name: "PROTOCOL_BINARY_CMD_FLUSHQ", value: 24)
!125 = !DIEnumerator(name: "PROTOCOL_BINARY_CMD_APPENDQ", value: 25)
!126 = !DIEnumerator(name: "PROTOCOL_BINARY_CMD_PREPENDQ", value: 26)
!127 = !DIEnumerator(name: "PROTOCOL_BINARY_CMD_TOUCH", value: 28)
!128 = !DIEnumerator(name: "PROTOCOL_BINARY_CMD_GAT", value: 29)
!129 = !DIEnumerator(name: "PROTOCOL_BINARY_CMD_GATQ", value: 30)
!130 = !DIEnumerator(name: "PROTOCOL_BINARY_CMD_GATK", value: 35)
!131 = !DIEnumerator(name: "PROTOCOL_BINARY_CMD_GATKQ", value: 36)
!132 = !DIEnumerator(name: "PROTOCOL_BINARY_CMD_SASL_LIST_MECHS", value: 32)
!133 = !DIEnumerator(name: "PROTOCOL_BINARY_CMD_SASL_AUTH", value: 33)
!134 = !DIEnumerator(name: "PROTOCOL_BINARY_CMD_SASL_STEP", value: 34)
!135 = !DIEnumerator(name: "PROTOCOL_BINARY_CMD_RGET", value: 48)
!136 = !DIEnumerator(name: "PROTOCOL_BINARY_CMD_RSET", value: 49)
!137 = !DIEnumerator(name: "PROTOCOL_BINARY_CMD_RSETQ", value: 50)
!138 = !DIEnumerator(name: "PROTOCOL_BINARY_CMD_RAPPEND", value: 51)
!139 = !DIEnumerator(name: "PROTOCOL_BINARY_CMD_RAPPENDQ", value: 52)
!140 = !DIEnumerator(name: "PROTOCOL_BINARY_CMD_RPREPEND", value: 53)
!141 = !DIEnumerator(name: "PROTOCOL_BINARY_CMD_RPREPENDQ", value: 54)
!142 = !DIEnumerator(name: "PROTOCOL_BINARY_CMD_RDELETE", value: 55)
!143 = !DIEnumerator(name: "PROTOCOL_BINARY_CMD_RDELETEQ", value: 56)
!144 = !DIEnumerator(name: "PROTOCOL_BINARY_CMD_RINCR", value: 57)
!145 = !DIEnumerator(name: "PROTOCOL_BINARY_CMD_RINCRQ", value: 58)
!146 = !DIEnumerator(name: "PROTOCOL_BINARY_CMD_RDECR", value: 59)
!147 = !DIEnumerator(name: "PROTOCOL_BINARY_CMD_RDECRQ", value: 60)
!148 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "logger_ret_type", file: !36, line: 44, baseType: !5, size: 32, elements: !149)
!149 = !{!150, !151, !152}
!150 = !DIEnumerator(name: "LOGGER_RET_OK", value: 0)
!151 = !DIEnumerator(name: "LOGGER_RET_NOSPACE", value: 1)
!152 = !DIEnumerator(name: "LOGGER_RET_ERR", value: 2)
!153 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "delta_result_type", file: !4, line: 280, baseType: !5, size: 32, elements: !154)
!154 = !{!155, !156, !157, !158, !159}
!155 = !DIEnumerator(name: "OK", value: 0)
!156 = !DIEnumerator(name: "NON_NUMERIC", value: 1)
!157 = !DIEnumerator(name: "EOM", value: 2)
!158 = !DIEnumerator(name: "DELTA_ITEM_NOT_FOUND", value: 3)
!159 = !DIEnumerator(name: "DELTA_ITEM_CAS_MISMATCH", value: 4)
!160 = !{!161, !162, !165, !173, !179, !195, !197, !237, !239, !188, !347, !363, !364, !380, !381}
!161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!162 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !163, line: 40, baseType: !164)
!163 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "f6304b1a6dcfc6bee76e9a51043b5090")
!164 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !166, size: 64)
!166 = !DIDerivedType(tag: DW_TAG_typedef, name: "protocol_binary_response_header", file: !70, line: 183, baseType: !167)
!167 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !70, line: 170, size: 192, elements: !168)
!168 = !{!169, !191}
!169 = !DIDerivedType(tag: DW_TAG_member, name: "response", scope: !167, file: !70, line: 181, baseType: !170, size: 192)
!170 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !167, file: !70, line: 171, size: 192, elements: !171)
!171 = !{!172, !177, !178, !180, !181, !182, !183, !186, !187}
!172 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !170, file: !70, line: 172, baseType: !173, size: 8)
!173 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !174, line: 24, baseType: !175)
!174 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "d3ea318a915682aaf6645ec16ac9f991")
!175 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !163, line: 38, baseType: !176)
!176 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !170, file: !70, line: 173, baseType: !173, size: 8, offset: 8)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "keylen", scope: !170, file: !70, line: 174, baseType: !179, size: 16, offset: 16)
!179 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !174, line: 25, baseType: !162)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "extlen", scope: !170, file: !70, line: 175, baseType: !173, size: 8, offset: 32)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "datatype", scope: !170, file: !70, line: 176, baseType: !173, size: 8, offset: 40)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !170, file: !70, line: 177, baseType: !179, size: 16, offset: 48)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "bodylen", scope: !170, file: !70, line: 178, baseType: !184, size: 32, offset: 64)
!184 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !174, line: 26, baseType: !185)
!185 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !163, line: 42, baseType: !5)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "opaque", scope: !170, file: !70, line: 179, baseType: !184, size: 32, offset: 96)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "cas", scope: !170, file: !70, line: 180, baseType: !188, size: 64, offset: 128)
!188 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !174, line: 27, baseType: !189)
!189 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !163, line: 45, baseType: !190)
!190 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "bytes", scope: !167, file: !70, line: 182, baseType: !192, size: 192)
!192 = !DICompositeType(tag: DW_TAG_array_type, baseType: !173, size: 192, elements: !193)
!193 = !{!194}
!194 = !DISubrange(count: 24)
!195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !196, size: 64)
!196 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !198, size: 64)
!198 = !DIDerivedType(tag: DW_TAG_typedef, name: "item_chunk", file: !4, line: 635, baseType: !199)
!199 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_strchunk", file: !4, line: 623, size: 384, elements: !200)
!200 = !{!201, !203, !204, !228, !229, !230, !231, !232, !233, !234, !235}
!201 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !199, file: !4, line: 624, baseType: !202, size: 64)
!202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !199, size: 64)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !199, file: !4, line: 625, baseType: !202, size: 64, offset: 64)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !199, file: !4, line: 626, baseType: !205, size: 64, offset: 128)
!205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !206, size: 64)
!206 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_stritem", file: !4, line: 575, size: 384, elements: !207)
!207 = !{!208, !209, !210, !211, !213, !214, !216, !217, !218, !219, !220}
!208 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !206, file: !4, line: 577, baseType: !205, size: 64)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !206, file: !4, line: 578, baseType: !205, size: 64, offset: 64)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "h_next", scope: !206, file: !4, line: 580, baseType: !205, size: 64, offset: 128)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !206, file: !4, line: 581, baseType: !212, size: 32, offset: 192)
!212 = !DIDerivedType(tag: DW_TAG_typedef, name: "rel_time_t", file: !36, line: 14, baseType: !5)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "exptime", scope: !206, file: !4, line: 582, baseType: !212, size: 32, offset: 224)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "nbytes", scope: !206, file: !4, line: 583, baseType: !215, size: 32, offset: 256)
!215 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !206, file: !4, line: 584, baseType: !164, size: 16, offset: 288)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "it_flags", scope: !206, file: !4, line: 585, baseType: !179, size: 16, offset: 304)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "slabs_clsid", scope: !206, file: !4, line: 586, baseType: !173, size: 8, offset: 320)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "nkey", scope: !206, file: !4, line: 587, baseType: !173, size: 8, offset: 328)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !206, file: !4, line: 593, baseType: !221, offset: 384)
!221 = !DICompositeType(tag: DW_TAG_array_type, baseType: !222, elements: !226)
!222 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !206, file: !4, line: 590, size: 64, elements: !223)
!223 = !{!224, !225}
!224 = !DIDerivedType(tag: DW_TAG_member, name: "cas", scope: !222, file: !4, line: 591, baseType: !188, size: 64)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !222, file: !4, line: 592, baseType: !196, size: 8)
!226 = !{!227}
!227 = !DISubrange(count: -1)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !199, file: !4, line: 627, baseType: !215, size: 32, offset: 192)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !199, file: !4, line: 628, baseType: !215, size: 32, offset: 224)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "nbytes", scope: !199, file: !4, line: 629, baseType: !215, size: 32, offset: 256)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !199, file: !4, line: 630, baseType: !164, size: 16, offset: 288)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "it_flags", scope: !199, file: !4, line: 631, baseType: !179, size: 16, offset: 304)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "slabs_clsid", scope: !199, file: !4, line: 632, baseType: !173, size: 8, offset: 320)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "orig_clsid", scope: !199, file: !4, line: 633, baseType: !173, size: 8, offset: 328)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !199, file: !4, line: 634, baseType: !236, offset: 336)
!236 = !DICompositeType(tag: DW_TAG_array_type, baseType: !196, elements: !226)
!237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !238, size: 64)
!238 = !DIDerivedType(tag: DW_TAG_typedef, name: "item", file: !4, line: 598, baseType: !206)
!239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !240, size: 64)
!240 = !DIDerivedType(tag: DW_TAG_typedef, name: "logger", file: !36, line: 171, baseType: !241)
!241 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_logger", file: !36, line: 159, size: 832, elements: !242)
!242 = !{!243, !245, !246, !277, !278, !279, !280, !281, !282, !283, !296}
!243 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !241, file: !36, line: 160, baseType: !244, size: 64)
!244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !241, size: 64)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !241, file: !36, line: 161, baseType: !244, size: 64, offset: 64)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !241, file: !36, line: 162, baseType: !247, size: 320, offset: 128)
!247 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_mutex_t", file: !248, line: 72, baseType: !249)
!248 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/pthreadtypes.h", directory: "", checksumkind: CSK_MD5, checksum: "2d764266ce95ab26d4a4767c2ec78176")
!249 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !248, line: 67, size: 320, elements: !250)
!250 = !{!251, !271, !275}
!251 = !DIDerivedType(tag: DW_TAG_member, name: "__data", scope: !249, file: !248, line: 69, baseType: !252, size: 320)
!252 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__pthread_mutex_s", file: !253, line: 22, size: 320, elements: !254)
!253 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/struct_mutex.h", directory: "", checksumkind: CSK_MD5, checksum: "3a896f588055d599ccb9e3fe6eaee3e3")
!254 = !{!255, !256, !257, !258, !259, !260, !262, !263}
!255 = !DIDerivedType(tag: DW_TAG_member, name: "__lock", scope: !252, file: !253, line: 24, baseType: !215, size: 32)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !252, file: !253, line: 25, baseType: !5, size: 32, offset: 32)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "__owner", scope: !252, file: !253, line: 26, baseType: !215, size: 32, offset: 64)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "__nusers", scope: !252, file: !253, line: 28, baseType: !5, size: 32, offset: 96)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "__kind", scope: !252, file: !253, line: 32, baseType: !215, size: 32, offset: 128)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "__spins", scope: !252, file: !253, line: 34, baseType: !261, size: 16, offset: 160)
!261 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "__elision", scope: !252, file: !253, line: 35, baseType: !261, size: 16, offset: 176)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "__list", scope: !252, file: !253, line: 36, baseType: !264, size: 128, offset: 192)
!264 = !DIDerivedType(tag: DW_TAG_typedef, name: "__pthread_list_t", file: !265, line: 53, baseType: !266)
!265 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/thread-shared-types.h", directory: "", checksumkind: CSK_MD5, checksum: "4b8899127613e00869e96fcefd314d61")
!266 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__pthread_internal_list", file: !265, line: 49, size: 128, elements: !267)
!267 = !{!268, !270}
!268 = !DIDerivedType(tag: DW_TAG_member, name: "__prev", scope: !266, file: !265, line: 51, baseType: !269, size: 64)
!269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !266, size: 64)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "__next", scope: !266, file: !265, line: 52, baseType: !269, size: 64, offset: 64)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "__size", scope: !249, file: !248, line: 70, baseType: !272, size: 320)
!272 = !DICompositeType(tag: DW_TAG_array_type, baseType: !196, size: 320, elements: !273)
!273 = !{!274}
!274 = !DISubrange(count: 40)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "__align", scope: !249, file: !248, line: 71, baseType: !276, size: 64)
!276 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "written", scope: !241, file: !36, line: 163, baseType: !188, size: 64, offset: 448)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "dropped", scope: !241, file: !36, line: 164, baseType: !188, size: 64, offset: 512)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !241, file: !36, line: 165, baseType: !188, size: 64, offset: 576)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "fetcher_ratio", scope: !241, file: !36, line: 166, baseType: !179, size: 16, offset: 640)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "mutation_ratio", scope: !241, file: !36, line: 167, baseType: !179, size: 16, offset: 656)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "eflags", scope: !241, file: !36, line: 168, baseType: !179, size: 16, offset: 672)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !241, file: !36, line: 169, baseType: !284, size: 64, offset: 704)
!284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !285, size: 64)
!285 = !DIDerivedType(tag: DW_TAG_typedef, name: "bipbuf_t", file: !286, line: 18, baseType: !287)
!286 = !DIFile(filename: "./bipbuffer.h", directory: "/home/xuheng/blackbox/llvm-test/memcached", checksumkind: CSK_MD5, checksum: "99606bcb8393045e6bc9eef40115066f")
!287 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !286, line: 4, size: 192, elements: !288)
!288 = !{!289, !290, !291, !292, !293, !294}
!289 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !287, file: !286, line: 6, baseType: !190, size: 64)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "a_start", scope: !287, file: !286, line: 9, baseType: !5, size: 32, offset: 64)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "a_end", scope: !287, file: !286, line: 9, baseType: !5, size: 32, offset: 96)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "b_end", scope: !287, file: !286, line: 12, baseType: !5, size: 32, offset: 128)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "b_inuse", scope: !287, file: !286, line: 15, baseType: !215, size: 32, offset: 160)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !287, file: !286, line: 17, baseType: !295, offset: 192)
!295 = !DICompositeType(tag: DW_TAG_array_type, baseType: !176, elements: !226)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "entry_map", scope: !241, file: !36, line: 170, baseType: !297, size: 64, offset: 768)
!297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !298, size: 64)
!298 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !299)
!299 = !DIDerivedType(tag: DW_TAG_typedef, name: "entry_details", file: !36, line: 57, baseType: !300)
!300 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_entry_details", file: !36, line: 62, size: 256, elements: !301)
!301 = !{!302, !303, !304, !341, !346}
!302 = !DIDerivedType(tag: DW_TAG_member, name: "reqlen", scope: !300, file: !36, line: 63, baseType: !215, size: 32)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "eflags", scope: !300, file: !36, line: 64, baseType: !179, size: 16, offset: 32)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "log_cb", scope: !300, file: !36, line: 65, baseType: !305, size: 64, offset: 64)
!305 = !DIDerivedType(tag: DW_TAG_typedef, name: "entry_log_cb", file: !36, line: 59, baseType: !306)
!306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !307, size: 64)
!307 = !DISubroutineType(types: !308)
!308 = !{null, !309, !297, !331, !333}
!309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !310, size: 64)
!310 = !DIDerivedType(tag: DW_TAG_typedef, name: "logentry", file: !36, line: 56, baseType: !311)
!311 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_logentry", file: !36, line: 135, size: 320, elements: !312)
!312 = !{!313, !314, !315, !316, !317, !325, !326}
!313 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !311, file: !36, line: 136, baseType: !35, size: 32)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "pad", scope: !311, file: !36, line: 137, baseType: !173, size: 8, offset: 32)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "eflags", scope: !311, file: !36, line: 138, baseType: !179, size: 16, offset: 48)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !311, file: !36, line: 139, baseType: !188, size: 64, offset: 64)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "tv", scope: !311, file: !36, line: 140, baseType: !318, size: 128, offset: 128)
!318 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timeval", file: !319, line: 8, size: 128, elements: !320)
!319 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_timeval.h", directory: "", checksumkind: CSK_MD5, checksum: "7798c68081a8161421218378689a8d48")
!320 = !{!321, !323}
!321 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !318, file: !319, line: 10, baseType: !322, size: 64)
!322 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !163, line: 160, baseType: !276)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "tv_usec", scope: !318, file: !319, line: 11, baseType: !324, size: 64, offset: 64)
!324 = !DIDerivedType(tag: DW_TAG_typedef, name: "__suseconds_t", file: !163, line: 162, baseType: !276)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !311, file: !36, line: 141, baseType: !215, size: 32, offset: 256)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !311, file: !36, line: 144, baseType: !327, offset: 288)
!327 = !DICompositeType(tag: DW_TAG_array_type, baseType: !328, elements: !226)
!328 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !311, file: !36, line: 142, size: 8, elements: !329)
!329 = !{!330}
!330 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !328, file: !36, line: 143, baseType: !196, size: 8)
!331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !332, size: 64)
!332 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !334, size: 64)
!334 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !335)
!335 = !{!336, !338, !339, !340}
!336 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !334, file: !337, baseType: !5, size: 32)
!337 = !DIFile(filename: "proto_bin.c", directory: "/home/xuheng/blackbox/llvm-test/memcached")
!338 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !334, file: !337, baseType: !5, size: 32, offset: 32)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !334, file: !337, baseType: !161, size: 64, offset: 64)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !334, file: !337, baseType: !161, size: 64, offset: 128)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "parse_cb", scope: !300, file: !36, line: 66, baseType: !342, size: 64, offset: 128)
!342 = !DIDerivedType(tag: DW_TAG_typedef, name: "entry_parse_cb", file: !36, line: 60, baseType: !343)
!343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !344, size: 64)
!344 = !DISubroutineType(types: !345)
!345 = !{!215, !309, !195}
!346 = !DIDerivedType(tag: DW_TAG_member, name: "format", scope: !300, file: !36, line: 67, baseType: !195, size: 64, offset: 192)
!347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !348, size: 64)
!348 = !DIDerivedType(tag: DW_TAG_typedef, name: "protocol_binary_response_get", file: !70, line: 227, baseType: !349)
!349 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !70, line: 219, size: 256, elements: !350)
!350 = !{!351, !359}
!351 = !DIDerivedType(tag: DW_TAG_member, name: "message", scope: !349, file: !70, line: 225, baseType: !352, size: 256)
!352 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !349, file: !70, line: 220, size: 256, elements: !353)
!353 = !{!354, !355}
!354 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !352, file: !70, line: 221, baseType: !166, size: 192)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "body", scope: !352, file: !70, line: 224, baseType: !356, size: 32, offset: 192)
!356 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !352, file: !70, line: 222, size: 32, elements: !357)
!357 = !{!358}
!358 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !356, file: !70, line: 223, baseType: !184, size: 32)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "bytes", scope: !349, file: !70, line: 226, baseType: !360, size: 224)
!360 = !DICompositeType(tag: DW_TAG_array_type, baseType: !173, size: 224, elements: !361)
!361 = !{!362}
!362 = !DISubrange(count: 28)
!363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !184, size: 64)
!364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !365, size: 64)
!365 = !DIDerivedType(tag: DW_TAG_typedef, name: "protocol_binary_response_incr", file: !70, line: 335, baseType: !366)
!366 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !70, line: 327, size: 256, elements: !367)
!367 = !{!368, !376}
!368 = !DIDerivedType(tag: DW_TAG_member, name: "message", scope: !366, file: !70, line: 333, baseType: !369, size: 256)
!369 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !366, file: !70, line: 328, size: 256, elements: !370)
!370 = !{!371, !372}
!371 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !369, file: !70, line: 329, baseType: !166, size: 192)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "body", scope: !369, file: !70, line: 332, baseType: !373, size: 64, offset: 192)
!373 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !369, file: !70, line: 330, size: 64, elements: !374)
!374 = !{!375}
!375 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !373, file: !70, line: 331, baseType: !188, size: 64)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "bytes", scope: !366, file: !70, line: 334, baseType: !377, size: 256)
!377 = !DICompositeType(tag: DW_TAG_array_type, baseType: !173, size: 256, elements: !378)
!378 = !{!379}
!379 = !DISubrange(count: 32)
!380 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!381 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!382 = !{i32 7, !"Dwarf Version", i32 5}
!383 = !{i32 2, !"Debug Info Version", i32 3}
!384 = !{i32 1, !"wchar_size", i32 4}
!385 = !{i32 7, !"uwtable", i32 1}
!386 = !{!"/home/xuheng/blackbox/llvm-test/memcached/proto_bin.gcno", !"/home/xuheng/blackbox/llvm-test/memcached/proto_bin.gcda", !0}
!387 = !{!"clang version 14.0.0"}
!388 = distinct !DISubprogram(name: "complete_nread_binary", scope: !1, file: !1, line: 31, type: !389, scopeLine: 31, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !783)
!389 = !DISubroutineType(types: !390)
!390 = !{null, !391}
!391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !392, size: 64)
!392 = !DIDerivedType(tag: DW_TAG_typedef, name: "conn", file: !4, line: 781, baseType: !393)
!393 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "conn", file: !4, line: 794, size: 3968, elements: !394)
!394 = !{!395, !399, !400, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !486, !487, !488, !489, !490, !491, !492, !710, !711, !712, !713, !714, !715, !716, !718, !719, !720, !721, !722, !723, !724, !725, !726, !732, !749, !750, !751, !752, !753, !754, !755, !756, !760, !767, !782}
!395 = !DIDerivedType(tag: DW_TAG_member, name: "sasl_conn", scope: !393, file: !4, line: 795, baseType: !396, size: 64)
!396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !397, size: 64)
!397 = !DIDerivedType(tag: DW_TAG_typedef, name: "sasl_conn_t", file: !398, line: 16, baseType: !161)
!398 = !DIFile(filename: "./sasl_defs.h", directory: "/home/xuheng/blackbox/llvm-test/memcached", checksumkind: CSK_MD5, checksum: "3a8678a43d09d8e311388b26eedc7a3e")
!399 = !DIDerivedType(tag: DW_TAG_member, name: "sfd", scope: !393, file: !4, line: 796, baseType: !215, size: 32, offset: 64)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "sasl_started", scope: !393, file: !4, line: 797, baseType: !401, size: 8, offset: 96)
!401 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "authenticated", scope: !393, file: !4, line: 798, baseType: !401, size: 8, offset: 104)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "set_stale", scope: !393, file: !4, line: 799, baseType: !401, size: 8, offset: 112)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "mset_res", scope: !393, file: !4, line: 800, baseType: !401, size: 8, offset: 120)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "close_after_write", scope: !393, file: !4, line: 801, baseType: !401, size: 8, offset: 128)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "rbuf_malloced", scope: !393, file: !4, line: 802, baseType: !401, size: 8, offset: 136)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "item_malloced", scope: !393, file: !4, line: 803, baseType: !401, size: 8, offset: 144)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !393, file: !4, line: 809, baseType: !3, size: 32, offset: 160)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "substate", scope: !393, file: !4, line: 810, baseType: !21, size: 32, offset: 192)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "last_cmd_time", scope: !393, file: !4, line: 811, baseType: !212, size: 32, offset: 224)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !393, file: !4, line: 812, baseType: !412, size: 1024, offset: 256)
!412 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "event", file: !413, line: 123, size: 1024, elements: !414)
!413 = !DIFile(filename: "/usr/include/event2/event_struct.h", directory: "", checksumkind: CSK_MD5, checksum: "005d89b34bed2ed9e30b0cc3160619c1")
!414 = !{!415, !446, !456, !457, !460, !483, !484, !485}
!415 = !DIDerivedType(tag: DW_TAG_member, name: "ev_evcallback", scope: !412, file: !413, line: 124, baseType: !416, size: 320)
!416 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "event_callback", file: !413, line: 107, size: 320, elements: !417)
!417 = !{!418, !425, !426, !427, !428, !445}
!418 = !DIDerivedType(tag: DW_TAG_member, name: "evcb_active_next", scope: !416, file: !413, line: 108, baseType: !419, size: 128)
!419 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !416, file: !413, line: 108, size: 128, elements: !420)
!420 = !{!421, !423}
!421 = !DIDerivedType(tag: DW_TAG_member, name: "tqe_next", scope: !419, file: !413, line: 108, baseType: !422, size: 64)
!422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !416, size: 64)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "tqe_prev", scope: !419, file: !413, line: 108, baseType: !424, size: 64, offset: 64)
!424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !422, size: 64)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "evcb_flags", scope: !416, file: !413, line: 109, baseType: !261, size: 16, offset: 128)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "evcb_pri", scope: !416, file: !413, line: 110, baseType: !173, size: 8, offset: 144)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "evcb_closure", scope: !416, file: !413, line: 111, baseType: !173, size: 8, offset: 152)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "evcb_cb_union", scope: !416, file: !413, line: 118, baseType: !429, size: 64, offset: 192)
!429 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !416, file: !413, line: 113, size: 64, elements: !430)
!430 = !{!431, !435, !439, !444}
!431 = !DIDerivedType(tag: DW_TAG_member, name: "evcb_callback", scope: !429, file: !413, line: 114, baseType: !432, size: 64)
!432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !433, size: 64)
!433 = !DISubroutineType(types: !434)
!434 = !{null, !215, !261, !161}
!435 = !DIDerivedType(tag: DW_TAG_member, name: "evcb_selfcb", scope: !429, file: !413, line: 115, baseType: !436, size: 64)
!436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !437, size: 64)
!437 = !DISubroutineType(types: !438)
!438 = !{null, !422, !161}
!439 = !DIDerivedType(tag: DW_TAG_member, name: "evcb_evfinalize", scope: !429, file: !413, line: 116, baseType: !440, size: 64)
!440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !441, size: 64)
!441 = !DISubroutineType(types: !442)
!442 = !{null, !443, !161}
!443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !412, size: 64)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "evcb_cbfinalize", scope: !429, file: !413, line: 117, baseType: !436, size: 64)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "evcb_arg", scope: !416, file: !413, line: 119, baseType: !161, size: 64, offset: 256)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "ev_timeout_pos", scope: !412, file: !413, line: 130, baseType: !447, size: 128, offset: 320)
!447 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !412, file: !413, line: 127, size: 128, elements: !448)
!448 = !{!449, !455}
!449 = !DIDerivedType(tag: DW_TAG_member, name: "ev_next_with_common_timeout", scope: !447, file: !413, line: 128, baseType: !450, size: 128)
!450 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !447, file: !413, line: 128, size: 128, elements: !451)
!451 = !{!452, !453}
!452 = !DIDerivedType(tag: DW_TAG_member, name: "tqe_next", scope: !450, file: !413, line: 128, baseType: !443, size: 64)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "tqe_prev", scope: !450, file: !413, line: 128, baseType: !454, size: 64, offset: 64)
!454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !443, size: 64)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "min_heap_idx", scope: !447, file: !413, line: 129, baseType: !215, size: 32)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "ev_fd", scope: !412, file: !413, line: 131, baseType: !215, size: 32, offset: 448)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "ev_base", scope: !412, file: !413, line: 133, baseType: !458, size: 64, offset: 512)
!458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !459, size: 64)
!459 = !DICompositeType(tag: DW_TAG_structure_type, name: "event_base", file: !413, line: 122, flags: DIFlagFwdDecl)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "ev_", scope: !412, file: !413, line: 149, baseType: !461, size: 256, offset: 576)
!461 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !412, file: !413, line: 135, size: 256, elements: !462)
!462 = !{!463, !472}
!463 = !DIDerivedType(tag: DW_TAG_member, name: "ev_io", scope: !461, file: !413, line: 140, baseType: !464, size: 256)
!464 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !461, file: !413, line: 137, size: 256, elements: !465)
!465 = !{!466, !471}
!466 = !DIDerivedType(tag: DW_TAG_member, name: "ev_io_next", scope: !464, file: !413, line: 138, baseType: !467, size: 128)
!467 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !464, file: !413, line: 138, size: 128, elements: !468)
!468 = !{!469, !470}
!469 = !DIDerivedType(tag: DW_TAG_member, name: "le_next", scope: !467, file: !413, line: 138, baseType: !443, size: 64)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "le_prev", scope: !467, file: !413, line: 138, baseType: !454, size: 64, offset: 64)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "ev_timeout", scope: !464, file: !413, line: 139, baseType: !318, size: 128, offset: 128)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "ev_signal", scope: !461, file: !413, line: 148, baseType: !473, size: 256)
!473 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !461, file: !413, line: 143, size: 256, elements: !474)
!474 = !{!475, !480, !481}
!475 = !DIDerivedType(tag: DW_TAG_member, name: "ev_signal_next", scope: !473, file: !413, line: 144, baseType: !476, size: 128)
!476 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !473, file: !413, line: 144, size: 128, elements: !477)
!477 = !{!478, !479}
!478 = !DIDerivedType(tag: DW_TAG_member, name: "le_next", scope: !476, file: !413, line: 144, baseType: !443, size: 64)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "le_prev", scope: !476, file: !413, line: 144, baseType: !454, size: 64, offset: 64)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "ev_ncalls", scope: !473, file: !413, line: 145, baseType: !261, size: 16, offset: 128)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "ev_pncalls", scope: !473, file: !413, line: 147, baseType: !482, size: 64, offset: 192)
!482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !261, size: 64)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "ev_events", scope: !412, file: !413, line: 151, baseType: !261, size: 16, offset: 832)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "ev_res", scope: !412, file: !413, line: 152, baseType: !261, size: 16, offset: 848)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "ev_timeout", scope: !412, file: !413, line: 153, baseType: !318, size: 128, offset: 896)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "ev_flags", scope: !393, file: !4, line: 813, baseType: !261, size: 16, offset: 1280)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "which", scope: !393, file: !4, line: 814, baseType: !261, size: 16, offset: 1296)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "rbuf", scope: !393, file: !4, line: 816, baseType: !195, size: 64, offset: 1344)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "rcurr", scope: !393, file: !4, line: 817, baseType: !195, size: 64, offset: 1408)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "rsize", scope: !393, file: !4, line: 818, baseType: !215, size: 32, offset: 1472)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "rbytes", scope: !393, file: !4, line: 819, baseType: !215, size: 32, offset: 1504)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "resp", scope: !393, file: !4, line: 821, baseType: !493, size: 64, offset: 1536)
!493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !494, size: 64)
!494 = !DIDerivedType(tag: DW_TAG_typedef, name: "mc_resp", file: !4, line: 770, baseType: !495)
!495 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_mc_resp", file: !4, line: 743, size: 9472, elements: !496)
!496 = !{!497, !509, !511, !512, !513, !514, !657, !658, !667, !668, !669, !670, !671, !672, !673, !674, !675, !702, !706}
!497 = !DIDerivedType(tag: DW_TAG_member, name: "bundle", scope: !495, file: !4, line: 744, baseType: !498, size: 64)
!498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !499, size: 64)
!499 = !DIDerivedType(tag: DW_TAG_typedef, name: "mc_resp_bundle", file: !4, line: 703, baseType: !500)
!500 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_mc_resp_bundle", file: !4, line: 773, size: 192, elements: !501)
!501 = !{!502, !503, !504, !506, !507}
!502 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !500, file: !4, line: 774, baseType: !173, size: 8)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "next_check", scope: !500, file: !4, line: 775, baseType: !173, size: 8, offset: 8)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !500, file: !4, line: 776, baseType: !505, size: 64, offset: 64)
!505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !500, size: 64)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !500, file: !4, line: 777, baseType: !505, size: 64, offset: 128)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "r", scope: !500, file: !4, line: 778, baseType: !508, offset: 192)
!508 = !DICompositeType(tag: DW_TAG_array_type, baseType: !494, elements: !226)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !495, file: !4, line: 745, baseType: !510, size: 64, offset: 64)
!510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !495, size: 64)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "wbytes", scope: !495, file: !4, line: 746, baseType: !215, size: 32, offset: 128)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "tosend", scope: !495, file: !4, line: 747, baseType: !215, size: 32, offset: 160)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "write_and_free", scope: !495, file: !4, line: 748, baseType: !161, size: 64, offset: 192)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "io_pending", scope: !495, file: !4, line: 749, baseType: !515, size: 64, offset: 256)
!515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !516, size: 64)
!516 = !DIDerivedType(tag: DW_TAG_typedef, name: "io_pending_t", file: !4, line: 668, baseType: !517)
!517 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_io_pending_t", file: !4, line: 783, size: 1216, elements: !518)
!518 = !{!519, !520, !651, !652, !653}
!519 = !DIDerivedType(tag: DW_TAG_member, name: "io_queue_type", scope: !517, file: !4, line: 784, baseType: !215, size: 32)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !517, file: !4, line: 785, baseType: !521, size: 64, offset: 64)
!521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !522, size: 64)
!522 = !DIDerivedType(tag: DW_TAG_typedef, name: "LIBEVENT_THREAD", file: !4, line: 737, baseType: !523)
!523 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4, line: 704, size: 54464, elements: !524)
!524 = !{!525, !527, !528, !529, !530, !585, !614, !617, !645, !646, !647, !648, !649, !650}
!525 = !DIDerivedType(tag: DW_TAG_member, name: "thread_id", scope: !523, file: !4, line: 705, baseType: !526, size: 64)
!526 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_t", file: !248, line: 27, baseType: !190)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !523, file: !4, line: 706, baseType: !458, size: 64, offset: 64)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "notify_event", scope: !523, file: !4, line: 707, baseType: !412, size: 1024, offset: 128)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "notify_event_fd", scope: !523, file: !4, line: 709, baseType: !215, size: 32, offset: 1152)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !523, file: !4, line: 714, baseType: !531, size: 51584, offset: 1216)
!531 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_stats", file: !4, line: 356, size: 51584, elements: !532)
!532 = !{!533, !534, !535, !536, !537, !538, !539, !540, !541, !542, !543, !544, !545, !546, !547, !548, !549, !550, !551, !552, !553, !554, !555, !556, !557, !558, !559, !560, !561, !562, !563, !564, !578, !582, !583, !584}
!533 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !531, file: !4, line: 357, baseType: !247, size: 320)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "get_cmds", scope: !531, file: !4, line: 359, baseType: !188, size: 64, offset: 320)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "get_misses", scope: !531, file: !4, line: 359, baseType: !188, size: 64, offset: 384)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "get_expired", scope: !531, file: !4, line: 359, baseType: !188, size: 64, offset: 448)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "get_flushed", scope: !531, file: !4, line: 359, baseType: !188, size: 64, offset: 512)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "touch_cmds", scope: !531, file: !4, line: 359, baseType: !188, size: 64, offset: 576)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "touch_misses", scope: !531, file: !4, line: 359, baseType: !188, size: 64, offset: 640)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "delete_misses", scope: !531, file: !4, line: 359, baseType: !188, size: 64, offset: 704)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "incr_misses", scope: !531, file: !4, line: 359, baseType: !188, size: 64, offset: 768)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "decr_misses", scope: !531, file: !4, line: 359, baseType: !188, size: 64, offset: 832)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "cas_misses", scope: !531, file: !4, line: 359, baseType: !188, size: 64, offset: 896)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "meta_cmds", scope: !531, file: !4, line: 359, baseType: !188, size: 64, offset: 960)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "bytes_read", scope: !531, file: !4, line: 359, baseType: !188, size: 64, offset: 1024)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "bytes_written", scope: !531, file: !4, line: 359, baseType: !188, size: 64, offset: 1088)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "flush_cmds", scope: !531, file: !4, line: 359, baseType: !188, size: 64, offset: 1152)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "conn_yields", scope: !531, file: !4, line: 359, baseType: !188, size: 64, offset: 1216)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "auth_cmds", scope: !531, file: !4, line: 359, baseType: !188, size: 64, offset: 1280)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "auth_errors", scope: !531, file: !4, line: 359, baseType: !188, size: 64, offset: 1344)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "idle_kicks", scope: !531, file: !4, line: 359, baseType: !188, size: 64, offset: 1408)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "response_obj_oom", scope: !531, file: !4, line: 359, baseType: !188, size: 64, offset: 1472)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "response_obj_count", scope: !531, file: !4, line: 359, baseType: !188, size: 64, offset: 1536)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "response_obj_bytes", scope: !531, file: !4, line: 359, baseType: !188, size: 64, offset: 1600)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "read_buf_oom", scope: !531, file: !4, line: 359, baseType: !188, size: 64, offset: 1664)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "store_too_large", scope: !531, file: !4, line: 359, baseType: !188, size: 64, offset: 1728)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "store_no_memory", scope: !531, file: !4, line: 359, baseType: !188, size: 64, offset: 1792)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "get_extstore", scope: !531, file: !4, line: 361, baseType: !188, size: 64, offset: 1856)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "get_aborted_extstore", scope: !531, file: !4, line: 361, baseType: !188, size: 64, offset: 1920)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "get_oom_extstore", scope: !531, file: !4, line: 361, baseType: !188, size: 64, offset: 1984)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "recache_from_extstore", scope: !531, file: !4, line: 361, baseType: !188, size: 64, offset: 2048)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "miss_from_extstore", scope: !531, file: !4, line: 361, baseType: !188, size: 64, offset: 2112)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "badcrc_from_extstore", scope: !531, file: !4, line: 361, baseType: !188, size: 64, offset: 2176)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "slab_stats", scope: !531, file: !4, line: 367, baseType: !565, size: 32768, offset: 2240)
!565 = !DICompositeType(tag: DW_TAG_array_type, baseType: !566, size: 32768, elements: !576)
!566 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slab_stats", file: !4, line: 303, size: 512, elements: !567)
!567 = !{!568, !569, !570, !571, !572, !573, !574, !575}
!568 = !DIDerivedType(tag: DW_TAG_member, name: "set_cmds", scope: !566, file: !4, line: 305, baseType: !188, size: 64)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "get_hits", scope: !566, file: !4, line: 305, baseType: !188, size: 64, offset: 64)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "touch_hits", scope: !566, file: !4, line: 305, baseType: !188, size: 64, offset: 128)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "delete_hits", scope: !566, file: !4, line: 305, baseType: !188, size: 64, offset: 192)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "cas_hits", scope: !566, file: !4, line: 305, baseType: !188, size: 64, offset: 256)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "cas_badval", scope: !566, file: !4, line: 305, baseType: !188, size: 64, offset: 320)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "incr_hits", scope: !566, file: !4, line: 305, baseType: !188, size: 64, offset: 384)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "decr_hits", scope: !566, file: !4, line: 305, baseType: !188, size: 64, offset: 448)
!576 = !{!577}
!577 = !DISubrange(count: 64)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "lru_hits", scope: !531, file: !4, line: 368, baseType: !579, size: 16384, offset: 35008)
!579 = !DICompositeType(tag: DW_TAG_array_type, baseType: !188, size: 16384, elements: !580)
!580 = !{!581}
!581 = !DISubrange(count: 256)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "read_buf_count", scope: !531, file: !4, line: 369, baseType: !188, size: 64, offset: 51392)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "read_buf_bytes", scope: !531, file: !4, line: 370, baseType: !188, size: 64, offset: 51456)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "read_buf_bytes_free", scope: !531, file: !4, line: 371, baseType: !188, size: 64, offset: 51520)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "io_queues", scope: !523, file: !4, line: 715, baseType: !586, size: 1152, offset: 52800)
!586 = !DICompositeType(tag: DW_TAG_array_type, baseType: !587, size: 1152, elements: !612)
!587 = !DIDerivedType(tag: DW_TAG_typedef, name: "io_queue_cb_t", file: !4, line: 701, baseType: !588)
!588 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_queue_cb_s", file: !4, line: 694, size: 384, elements: !589)
!589 = !{!590, !591, !604, !605, !610, !611}
!590 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !588, file: !4, line: 695, baseType: !161, size: 64)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "submit_cb", scope: !588, file: !4, line: 696, baseType: !592, size: 64, offset: 64)
!592 = !DIDerivedType(tag: DW_TAG_typedef, name: "io_queue_stack_cb", file: !4, line: 670, baseType: !593)
!593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !594, size: 64)
!594 = !DISubroutineType(types: !595)
!595 = !{null, !596}
!596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !597, size: 64)
!597 = !DIDerivedType(tag: DW_TAG_typedef, name: "io_queue_t", file: !4, line: 669, baseType: !598)
!598 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_queue_s", file: !4, line: 687, size: 192, elements: !599)
!599 = !{!600, !601, !602, !603}
!600 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !598, file: !4, line: 688, baseType: !161, size: 64)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "stack_ctx", scope: !598, file: !4, line: 689, baseType: !161, size: 64, offset: 64)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !598, file: !4, line: 690, baseType: !215, size: 32, offset: 128)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !598, file: !4, line: 691, baseType: !215, size: 32, offset: 160)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "complete_cb", scope: !588, file: !4, line: 697, baseType: !592, size: 64, offset: 128)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "return_cb", scope: !588, file: !4, line: 698, baseType: !606, size: 64, offset: 192)
!606 = !DIDerivedType(tag: DW_TAG_typedef, name: "io_queue_cb", file: !4, line: 671, baseType: !607)
!607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !608, size: 64)
!608 = !DISubroutineType(types: !609)
!609 = !{null, !515}
!610 = !DIDerivedType(tag: DW_TAG_member, name: "finalize_cb", scope: !588, file: !4, line: 699, baseType: !606, size: 64, offset: 256)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !588, file: !4, line: 700, baseType: !215, size: 32, offset: 320)
!612 = !{!613}
!613 = !DISubrange(count: 3)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "ev_queue", scope: !523, file: !4, line: 716, baseType: !615, size: 64, offset: 53952)
!615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !616, size: 64)
!616 = !DICompositeType(tag: DW_TAG_structure_type, name: "conn_queue", file: !4, line: 716, flags: DIFlagFwdDecl)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "rbuf_cache", scope: !523, file: !4, line: 717, baseType: !618, size: 64, offset: 54016)
!618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !619, size: 64)
!619 = !DIDerivedType(tag: DW_TAG_typedef, name: "cache_t", file: !620, line: 39, baseType: !621)
!620 = !DIFile(filename: "./cache.h", directory: "/home/xuheng/blackbox/llvm-test/memcached", checksumkind: CSK_MD5, checksum: "d97639c8540587a19d8550d7d7156448")
!621 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !620, line: 22, size: 704, elements: !622)
!622 = !{!623, !624, !625, !638, !641, !642, !643, !644}
!623 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !621, file: !620, line: 24, baseType: !247, size: 320)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !621, file: !620, line: 26, baseType: !195, size: 64, offset: 320)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !621, file: !620, line: 28, baseType: !626, size: 128, offset: 384)
!626 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cache_head", file: !620, line: 28, size: 128, elements: !627)
!627 = !{!628, !636}
!628 = !DIDerivedType(tag: DW_TAG_member, name: "stqh_first", scope: !626, file: !620, line: 28, baseType: !629, size: 64)
!629 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !630, size: 64)
!630 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cache_free_s", file: !620, line: 12, size: 64, elements: !631)
!631 = !{!632}
!632 = !DIDerivedType(tag: DW_TAG_member, name: "c_next", scope: !630, file: !620, line: 13, baseType: !633, size: 64)
!633 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !630, file: !620, line: 13, size: 64, elements: !634)
!634 = !{!635}
!635 = !DIDerivedType(tag: DW_TAG_member, name: "stqe_next", scope: !633, file: !620, line: 13, baseType: !629, size: 64)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "stqh_last", scope: !626, file: !620, line: 28, baseType: !637, size: 64, offset: 64)
!637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !629, size: 64)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "bufsize", scope: !621, file: !620, line: 30, baseType: !639, size: 64, offset: 512)
!639 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !640, line: 46, baseType: !190)
!640 = !DIFile(filename: "VeriFrame/LLVMUtils/llvm/lib/clang/14.0.0/include/stddef.h", directory: "/home/xuheng", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!641 = !DIDerivedType(tag: DW_TAG_member, name: "freetotal", scope: !621, file: !620, line: 32, baseType: !215, size: 32, offset: 576)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "total", scope: !621, file: !620, line: 34, baseType: !215, size: 32, offset: 608)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "freecurr", scope: !621, file: !620, line: 36, baseType: !215, size: 32, offset: 640)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !621, file: !620, line: 38, baseType: !215, size: 32, offset: 672)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "open_bundle", scope: !523, file: !4, line: 718, baseType: !498, size: 64, offset: 54080)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "io_cache", scope: !523, file: !4, line: 719, baseType: !618, size: 64, offset: 54144)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "storage", scope: !523, file: !4, line: 721, baseType: !161, size: 64, offset: 54208)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !523, file: !4, line: 723, baseType: !239, size: 64, offset: 54272)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "lru_bump_buf", scope: !523, file: !4, line: 724, baseType: !161, size: 64, offset: 54336)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "napi_id", scope: !523, file: !4, line: 728, baseType: !215, size: 32, offset: 54400)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "c", scope: !517, file: !4, line: 786, baseType: !391, size: 64, offset: 128)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "resp", scope: !517, file: !4, line: 787, baseType: !493, size: 64, offset: 192)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !517, file: !4, line: 788, baseType: !654, size: 960, offset: 256)
!654 = !DICompositeType(tag: DW_TAG_array_type, baseType: !196, size: 960, elements: !655)
!655 = !{!656}
!656 = !DISubrange(count: 120)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "item", scope: !495, file: !4, line: 751, baseType: !237, size: 64, offset: 320)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "iov", scope: !495, file: !4, line: 752, baseType: !659, size: 512, offset: 384)
!659 = !DICompositeType(tag: DW_TAG_array_type, baseType: !660, size: 512, elements: !665)
!660 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iovec", file: !661, line: 26, size: 128, elements: !662)
!661 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_iovec.h", directory: "", checksumkind: CSK_MD5, checksum: "6a734cae8feaa37c12e11190a6573675")
!662 = !{!663, !664}
!663 = !DIDerivedType(tag: DW_TAG_member, name: "iov_base", scope: !660, file: !661, line: 28, baseType: !161, size: 64)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "iov_len", scope: !660, file: !661, line: 29, baseType: !639, size: 64, offset: 64)
!665 = !{!666}
!666 = !DISubrange(count: 4)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "chunked_total", scope: !495, file: !4, line: 753, baseType: !215, size: 32, offset: 896)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "iovcnt", scope: !495, file: !4, line: 754, baseType: !173, size: 8, offset: 928)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "chunked_data_iov", scope: !495, file: !4, line: 755, baseType: !173, size: 8, offset: 936)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "skip", scope: !495, file: !4, line: 760, baseType: !401, size: 8, offset: 944)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !495, file: !4, line: 761, baseType: !401, size: 8, offset: 952)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "request_id", scope: !495, file: !4, line: 763, baseType: !179, size: 16, offset: 960)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "udp_sequence", scope: !495, file: !4, line: 764, baseType: !179, size: 16, offset: 976)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "udp_total", scope: !495, file: !4, line: 765, baseType: !179, size: 16, offset: 992)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "request_addr", scope: !495, file: !4, line: 766, baseType: !676, size: 224, offset: 1024)
!676 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr_in6", file: !677, line: 253, size: 224, elements: !678)
!677 = !DIFile(filename: "/usr/include/netinet/in.h", directory: "", checksumkind: CSK_MD5, checksum: "6a5254a491bcdb8c3253de75bf3571c1")
!678 = !{!679, !682, !684, !685, !701}
!679 = !DIDerivedType(tag: DW_TAG_member, name: "sin6_family", scope: !676, file: !677, line: 255, baseType: !680, size: 16)
!680 = !DIDerivedType(tag: DW_TAG_typedef, name: "sa_family_t", file: !681, line: 28, baseType: !164)
!681 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/sockaddr.h", directory: "", checksumkind: CSK_MD5, checksum: "b70cbaf07ffb7e8bf11ee98d9a21e2fc")
!682 = !DIDerivedType(tag: DW_TAG_member, name: "sin6_port", scope: !676, file: !677, line: 256, baseType: !683, size: 16, offset: 16)
!683 = !DIDerivedType(tag: DW_TAG_typedef, name: "in_port_t", file: !677, line: 119, baseType: !179)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "sin6_flowinfo", scope: !676, file: !677, line: 257, baseType: !184, size: 32, offset: 32)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "sin6_addr", scope: !676, file: !677, line: 258, baseType: !686, size: 128, offset: 64)
!686 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "in6_addr", file: !677, line: 212, size: 128, elements: !687)
!687 = !{!688}
!688 = !DIDerivedType(tag: DW_TAG_member, name: "__in6_u", scope: !686, file: !677, line: 219, baseType: !689, size: 128)
!689 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !686, file: !677, line: 214, size: 128, elements: !690)
!690 = !{!691, !695, !699}
!691 = !DIDerivedType(tag: DW_TAG_member, name: "__u6_addr8", scope: !689, file: !677, line: 216, baseType: !692, size: 128)
!692 = !DICompositeType(tag: DW_TAG_array_type, baseType: !173, size: 128, elements: !693)
!693 = !{!694}
!694 = !DISubrange(count: 16)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "__u6_addr16", scope: !689, file: !677, line: 217, baseType: !696, size: 128)
!696 = !DICompositeType(tag: DW_TAG_array_type, baseType: !179, size: 128, elements: !697)
!697 = !{!698}
!698 = !DISubrange(count: 8)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "__u6_addr32", scope: !689, file: !677, line: 218, baseType: !700, size: 128)
!700 = !DICompositeType(tag: DW_TAG_array_type, baseType: !184, size: 128, elements: !665)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "sin6_scope_id", scope: !676, file: !677, line: 259, baseType: !184, size: 32, offset: 192)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "request_addr_size", scope: !495, file: !4, line: 767, baseType: !703, size: 32, offset: 1248)
!703 = !DIDerivedType(tag: DW_TAG_typedef, name: "socklen_t", file: !704, line: 33, baseType: !705)
!704 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/socket.h", directory: "", checksumkind: CSK_MD5, checksum: "b1d3343a573cbf39b225111209e02966")
!705 = !DIDerivedType(tag: DW_TAG_typedef, name: "__socklen_t", file: !163, line: 209, baseType: !5)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "wbuf", scope: !495, file: !4, line: 769, baseType: !707, size: 8192, offset: 1280)
!707 = !DICompositeType(tag: DW_TAG_array_type, baseType: !196, size: 8192, elements: !708)
!708 = !{!709}
!709 = !DISubrange(count: 1024)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "resp_head", scope: !393, file: !4, line: 822, baseType: !493, size: 64, offset: 1600)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "ritem", scope: !393, file: !4, line: 823, baseType: !195, size: 64, offset: 1664)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "rlbytes", scope: !393, file: !4, line: 824, baseType: !215, size: 32, offset: 1728)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "item", scope: !393, file: !4, line: 832, baseType: !161, size: 64, offset: 1792)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "sbytes", scope: !393, file: !4, line: 835, baseType: !215, size: 32, offset: 1856)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "io_queues_submitted", scope: !393, file: !4, line: 837, baseType: !215, size: 32, offset: 1888)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "io_queues", scope: !393, file: !4, line: 838, baseType: !717, size: 576, offset: 1920)
!717 = !DICompositeType(tag: DW_TAG_array_type, baseType: !597, size: 576, elements: !612)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "recache_counter", scope: !393, file: !4, line: 843, baseType: !5, size: 32, offset: 2496)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "protocol", scope: !393, file: !4, line: 845, baseType: !53, size: 32, offset: 2528)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "transport", scope: !393, file: !4, line: 846, baseType: !58, size: 32, offset: 2560)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "close_reason", scope: !393, file: !4, line: 847, baseType: !63, size: 32, offset: 2592)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "request_id", scope: !393, file: !4, line: 850, baseType: !215, size: 32, offset: 2624)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "request_addr", scope: !393, file: !4, line: 851, baseType: !676, size: 224, offset: 2656)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "request_addr_size", scope: !393, file: !4, line: 852, baseType: !703, size: 32, offset: 2880)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "noreply", scope: !393, file: !4, line: 854, baseType: !401, size: 8, offset: 2912)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !393, file: !4, line: 860, baseType: !727, size: 192, offset: 2944)
!727 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !393, file: !4, line: 856, size: 192, elements: !728)
!728 = !{!729, !730, !731}
!729 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !727, file: !4, line: 857, baseType: !195, size: 64)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !727, file: !4, line: 858, baseType: !639, size: 64, offset: 64)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !727, file: !4, line: 859, baseType: !639, size: 64, offset: 128)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "binary_header", scope: !393, file: !4, line: 864, baseType: !733, size: 192, offset: 3136)
!733 = !DIDerivedType(tag: DW_TAG_typedef, name: "protocol_binary_request_header", file: !70, line: 164, baseType: !734)
!734 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !70, line: 151, size: 192, elements: !735)
!735 = !{!736, !748}
!736 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !734, file: !70, line: 162, baseType: !737, size: 192)
!737 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !734, file: !70, line: 152, size: 192, elements: !738)
!738 = !{!739, !740, !741, !742, !743, !744, !745, !746, !747}
!739 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !737, file: !70, line: 153, baseType: !173, size: 8)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !737, file: !70, line: 154, baseType: !173, size: 8, offset: 8)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "keylen", scope: !737, file: !70, line: 155, baseType: !179, size: 16, offset: 16)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "extlen", scope: !737, file: !70, line: 156, baseType: !173, size: 8, offset: 32)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "datatype", scope: !737, file: !70, line: 157, baseType: !173, size: 8, offset: 40)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !737, file: !70, line: 158, baseType: !179, size: 16, offset: 48)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "bodylen", scope: !737, file: !70, line: 159, baseType: !184, size: 32, offset: 64)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "opaque", scope: !737, file: !70, line: 160, baseType: !184, size: 32, offset: 96)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "cas", scope: !737, file: !70, line: 161, baseType: !188, size: 64, offset: 128)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "bytes", scope: !734, file: !70, line: 163, baseType: !192, size: 192)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "cas", scope: !393, file: !4, line: 865, baseType: !188, size: 64, offset: 3328)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "tag", scope: !393, file: !4, line: 866, baseType: !188, size: 64, offset: 3392)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "cmd", scope: !393, file: !4, line: 867, baseType: !261, size: 16, offset: 3456)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "opaque", scope: !393, file: !4, line: 868, baseType: !215, size: 32, offset: 3488)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "keylen", scope: !393, file: !4, line: 869, baseType: !215, size: 32, offset: 3520)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !393, file: !4, line: 870, baseType: !391, size: 64, offset: 3584)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !393, file: !4, line: 871, baseType: !521, size: 64, offset: 3648)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "try_read_command", scope: !393, file: !4, line: 872, baseType: !757, size: 64, offset: 3712)
!757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !758, size: 64)
!758 = !DISubroutineType(types: !759)
!759 = !{!215, !391}
!760 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !393, file: !4, line: 873, baseType: !761, size: 64, offset: 3776)
!761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !762, size: 64)
!762 = !DISubroutineType(types: !763)
!763 = !{!764, !391, !161, !639}
!764 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !765, line: 108, baseType: !766)
!765 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/types.h", directory: "", checksumkind: CSK_MD5, checksum: "20e2108af45064f5c7b77fc9416f0cce")
!766 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !163, line: 193, baseType: !276)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "sendmsg", scope: !393, file: !4, line: 874, baseType: !768, size: 64, offset: 3840)
!768 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !769, size: 64)
!769 = !DISubroutineType(types: !770)
!770 = !{!764, !391, !771, !215}
!771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !772, size: 64)
!772 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "msghdr", file: !704, line: 257, size: 448, elements: !773)
!773 = !{!774, !775, !776, !778, !779, !780, !781}
!774 = !DIDerivedType(tag: DW_TAG_member, name: "msg_name", scope: !772, file: !704, line: 259, baseType: !161, size: 64)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "msg_namelen", scope: !772, file: !704, line: 260, baseType: !703, size: 32, offset: 64)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "msg_iov", scope: !772, file: !704, line: 262, baseType: !777, size: 64, offset: 128)
!777 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !660, size: 64)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "msg_iovlen", scope: !772, file: !704, line: 263, baseType: !639, size: 64, offset: 192)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "msg_control", scope: !772, file: !704, line: 265, baseType: !161, size: 64, offset: 256)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "msg_controllen", scope: !772, file: !704, line: 266, baseType: !639, size: 64, offset: 320)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "msg_flags", scope: !772, file: !704, line: 271, baseType: !215, size: 32, offset: 384)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !393, file: !4, line: 875, baseType: !761, size: 64, offset: 3904)
!783 = !{!784}
!784 = !DILocalVariable(name: "c", arg: 1, scope: !388, file: !1, line: 31, type: !391)
!785 = !DILocation(line: 0, scope: !388)
!786 = !DILocation(line: 32, column: 5, scope: !787)
!787 = distinct !DILexicalBlock(scope: !788, file: !1, line: 32, column: 5)
!788 = distinct !DILexicalBlock(scope: !388, file: !1, line: 32, column: 5)
!789 = !DILocation(line: 32, column: 5, scope: !788)
!790 = !DILocation(line: 33, column: 5, scope: !791)
!791 = distinct !DILexicalBlock(scope: !792, file: !1, line: 33, column: 5)
!792 = distinct !DILexicalBlock(scope: !388, file: !1, line: 33, column: 5)
!793 = !{!794, !803, i64 432}
!794 = !{!"conn", !795, i64 0, !798, i64 8, !799, i64 12, !799, i64 13, !799, i64 14, !799, i64 15, !799, i64 16, !799, i64 17, !799, i64 18, !796, i64 20, !796, i64 24, !798, i64 28, !800, i64 32, !803, i64 160, !803, i64 162, !795, i64 168, !795, i64 176, !798, i64 184, !798, i64 188, !795, i64 192, !795, i64 200, !795, i64 208, !798, i64 216, !795, i64 224, !798, i64 232, !798, i64 236, !796, i64 240, !798, i64 312, !796, i64 316, !796, i64 320, !796, i64 324, !798, i64 328, !806, i64 332, !798, i64 360, !799, i64 364, !808, i64 368, !796, i64 392, !805, i64 416, !805, i64 424, !803, i64 432, !798, i64 436, !798, i64 440, !795, i64 448, !795, i64 456, !795, i64 464, !795, i64 472, !795, i64 480, !795, i64 488}
!795 = !{!"any pointer", !796, i64 0}
!796 = !{!"omnipotent char", !797, i64 0}
!797 = !{!"Simple C/C++ TBAA"}
!798 = !{!"int", !796, i64 0}
!799 = !{!"_Bool", !796, i64 0}
!800 = !{!"event", !801, i64 0, !796, i64 40, !798, i64 56, !795, i64 64, !796, i64 72, !803, i64 104, !803, i64 106, !804, i64 112}
!801 = !{!"event_callback", !802, i64 0, !803, i64 16, !796, i64 18, !796, i64 19, !796, i64 24, !795, i64 32}
!802 = !{!"", !795, i64 0, !795, i64 8}
!803 = !{!"short", !796, i64 0}
!804 = !{!"timeval", !805, i64 0, !805, i64 8}
!805 = !{!"long", !796, i64 0}
!806 = !{!"sockaddr_in6", !803, i64 0, !803, i64 2, !798, i64 4, !807, i64 8, !798, i64 24}
!807 = !{!"in6_addr", !796, i64 0}
!808 = !{!"", !795, i64 0, !805, i64 8, !805, i64 16}
!809 = !DILocation(line: 33, column: 5, scope: !792)
!810 = !DILocation(line: 35, column: 15, scope: !388)
!811 = !{!794, !796, i64 24}
!812 = !DILocation(line: 35, column: 5, scope: !388)
!813 = !DILocation(line: 37, column: 29, scope: !814)
!814 = distinct !DILexicalBlock(scope: !388, file: !1, line: 35, column: 25)
!815 = !DILocation(line: 37, column: 9, scope: !814)
!816 = !DILocation(line: 38, column: 9, scope: !814)
!817 = !DILocation(line: 40, column: 9, scope: !814)
!818 = !DILocation(line: 41, column: 16, scope: !819)
!819 = distinct !DILexicalBlock(scope: !814, file: !1, line: 41, column: 13)
!820 = !{!794, !795, i64 224}
!821 = !DILocation(line: 41, column: 13, scope: !819)
!822 = !DILocation(line: 41, column: 13, scope: !814)
!823 = !DILocation(line: 42, column: 28, scope: !824)
!824 = distinct !DILexicalBlock(scope: !819, file: !1, line: 41, column: 22)
!825 = !DILocation(line: 42, column: 13, scope: !824)
!826 = !DILocation(line: 43, column: 21, scope: !824)
!827 = !DILocation(line: 44, column: 9, scope: !824)
!828 = !DILocation(line: 45, column: 9, scope: !814)
!829 = !DILocation(line: 47, column: 17, scope: !814)
!830 = !{!795, !795, i64 0}
!831 = !DILocation(line: 47, column: 9, scope: !814)
!832 = !DILocation(line: 48, column: 9, scope: !833)
!833 = distinct !DILexicalBlock(scope: !834, file: !1, line: 48, column: 9)
!834 = distinct !DILexicalBlock(scope: !814, file: !1, line: 48, column: 9)
!835 = !DILocation(line: 50, column: 1, scope: !388)
!836 = distinct !DISubprogram(name: "complete_update_bin", scope: !1, file: !1, line: 359, type: !389, scopeLine: 359, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !837)
!837 = !{!838, !839, !841, !842, !843}
!838 = !DILocalVariable(name: "c", arg: 1, scope: !836, file: !1, line: 359, type: !391)
!839 = !DILocalVariable(name: "eno", scope: !836, file: !1, line: 360, type: !840)
!840 = !DIDerivedType(tag: DW_TAG_typedef, name: "protocol_binary_response_status", file: !70, line: 74, baseType: !74)
!841 = !DILocalVariable(name: "ret", scope: !836, file: !1, line: 361, type: !90)
!842 = !DILocalVariable(name: "it", scope: !836, file: !1, line: 364, type: !237)
!843 = !DILocalVariable(name: "ch", scope: !844, file: !1, line: 376, type: !197)
!844 = distinct !DILexicalBlock(scope: !845, file: !1, line: 374, column: 12)
!845 = distinct !DILexicalBlock(scope: !836, file: !1, line: 371, column: 9)
!846 = !DILocation(line: 0, scope: !836)
!847 = !DILocation(line: 362, column: 5, scope: !848)
!848 = distinct !DILexicalBlock(scope: !849, file: !1, line: 362, column: 5)
!849 = distinct !DILexicalBlock(scope: !836, file: !1, line: 362, column: 5)
!850 = !DILocation(line: 362, column: 5, scope: !849)
!851 = !DILocation(line: 364, column: 19, scope: !836)
!852 = !DILocation(line: 365, column: 28, scope: !836)
!853 = !{!794, !795, i64 456}
!854 = !DILocation(line: 365, column: 42, scope: !836)
!855 = !DILocation(line: 365, column: 5, scope: !836)
!856 = !DILocation(line: 366, column: 8, scope: !836)
!857 = !DILocation(line: 366, column: 33, scope: !836)
!858 = !{!796, !796, i64 0}
!859 = !DILocation(line: 366, column: 49, scope: !836)
!860 = !DILocation(line: 366, column: 57, scope: !836)
!861 = !{!862, !805, i64 0}
!862 = !{!"slab_stats", !805, i64 0, !805, i64 8, !805, i64 16, !805, i64 24, !805, i64 32, !805, i64 40, !805, i64 48, !805, i64 56}
!863 = !DILocation(line: 367, column: 44, scope: !836)
!864 = !DILocation(line: 367, column: 5, scope: !836)
!865 = !DILocation(line: 371, column: 14, scope: !845)
!866 = !{!803, !803, i64 0}
!867 = !DILocation(line: 371, column: 23, scope: !845)
!868 = !DILocation(line: 371, column: 39, scope: !845)
!869 = !DILocation(line: 371, column: 9, scope: !836)
!870 = !DILocation(line: 372, column: 11, scope: !871)
!871 = distinct !DILexicalBlock(scope: !845, file: !1, line: 371, column: 45)
!872 = !DILocation(line: 372, column: 31, scope: !871)
!873 = !{!798, !798, i64 0}
!874 = !DILocation(line: 372, column: 25, scope: !871)
!875 = !DILocation(line: 372, column: 38, scope: !871)
!876 = !DILocation(line: 372, column: 43, scope: !871)
!877 = !DILocation(line: 373, column: 11, scope: !871)
!878 = !DILocation(line: 373, column: 31, scope: !871)
!879 = !DILocation(line: 373, column: 25, scope: !871)
!880 = !DILocation(line: 373, column: 38, scope: !871)
!881 = !DILocation(line: 373, column: 43, scope: !871)
!882 = !DILocation(line: 374, column: 5, scope: !871)
!883 = !DILocation(line: 375, column: 9, scope: !884)
!884 = distinct !DILexicalBlock(scope: !885, file: !1, line: 375, column: 9)
!885 = distinct !DILexicalBlock(scope: !844, file: !1, line: 375, column: 9)
!886 = !{!794, !795, i64 208}
!887 = !DILocation(line: 375, column: 9, scope: !885)
!888 = !DILocation(line: 376, column: 26, scope: !844)
!889 = !DILocation(line: 0, scope: !844)
!890 = !DILocation(line: 377, column: 17, scope: !891)
!891 = distinct !DILexicalBlock(scope: !844, file: !1, line: 377, column: 13)
!892 = !DILocation(line: 377, column: 29, scope: !891)
!893 = !DILocation(line: 377, column: 22, scope: !891)
!894 = !DILocation(line: 377, column: 13, scope: !844)
!895 = !DILocation(line: 378, column: 18, scope: !891)
!896 = !DILocation(line: 378, column: 22, scope: !891)
!897 = !DILocation(line: 378, column: 13, scope: !891)
!898 = !DILocation(line: 379, column: 9, scope: !899)
!899 = distinct !DILexicalBlock(scope: !900, file: !1, line: 379, column: 9)
!900 = distinct !DILexicalBlock(scope: !844, file: !1, line: 379, column: 9)
!901 = !DILocation(line: 379, column: 9, scope: !900)
!902 = !DILocation(line: 380, column: 9, scope: !844)
!903 = !DILocation(line: 380, column: 22, scope: !844)
!904 = !DILocation(line: 380, column: 28, scope: !844)
!905 = !DILocation(line: 381, column: 22, scope: !844)
!906 = !DILocation(line: 381, column: 27, scope: !844)
!907 = !DILocation(line: 381, column: 9, scope: !844)
!908 = !DILocation(line: 381, column: 32, scope: !844)
!909 = !DILocation(line: 382, column: 18, scope: !844)
!910 = !DILocation(line: 385, column: 29, scope: !836)
!911 = !DILocation(line: 385, column: 26, scope: !836)
!912 = !DILocation(line: 385, column: 11, scope: !836)
!913 = !DILocation(line: 413, column: 5, scope: !836)
!914 = !DILocation(line: 416, column: 28, scope: !915)
!915 = distinct !DILexicalBlock(scope: !836, file: !1, line: 413, column: 18)
!916 = !DILocation(line: 416, column: 9, scope: !915)
!917 = !DILocation(line: 417, column: 9, scope: !915)
!918 = !DILocation(line: 419, column: 25, scope: !915)
!919 = !DILocation(line: 419, column: 9, scope: !915)
!920 = !DILocation(line: 420, column: 9, scope: !915)
!921 = !DILocation(line: 422, column: 25, scope: !915)
!922 = !DILocation(line: 422, column: 9, scope: !915)
!923 = !DILocation(line: 423, column: 9, scope: !915)
!924 = !DILocation(line: 427, column: 16, scope: !925)
!925 = distinct !DILexicalBlock(scope: !915, file: !1, line: 427, column: 13)
!926 = !DILocation(line: 427, column: 13, scope: !915)
!927 = !DILocation(line: 428, column: 17, scope: !928)
!928 = distinct !DILexicalBlock(scope: !925, file: !1, line: 427, column: 34)
!929 = !DILocation(line: 429, column: 9, scope: !928)
!930 = !DILocation(line: 430, column: 17, scope: !931)
!931 = distinct !DILexicalBlock(scope: !932, file: !1, line: 429, column: 44)
!932 = distinct !DILexicalBlock(scope: !925, file: !1, line: 429, column: 19)
!933 = !DILocation(line: 431, column: 9, scope: !931)
!934 = !DILocation(line: 432, column: 17, scope: !935)
!935 = distinct !DILexicalBlock(scope: !932, file: !1, line: 431, column: 16)
!936 = !DILocation(line: 0, scope: !925)
!937 = !DILocation(line: 434, column: 9, scope: !915)
!938 = !DILocation(line: 435, column: 5, scope: !915)
!939 = !DILocation(line: 437, column: 20, scope: !836)
!940 = !DILocation(line: 437, column: 5, scope: !836)
!941 = !DILocation(line: 438, column: 13, scope: !836)
!942 = !DILocation(line: 439, column: 1, scope: !836)
!943 = distinct !DISubprogram(name: "process_bin_complete_sasl_auth", scope: !1, file: !1, line: 767, type: !389, scopeLine: 767, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !944)
!944 = !{!945, !946, !949, !950, !951, !952, !953, !957, !958}
!945 = !DILocalVariable(name: "c", arg: 1, scope: !943, file: !1, line: 767, type: !391)
!946 = !DILocalVariable(name: "out", scope: !943, file: !1, line: 769, type: !947)
!947 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !948, size: 64)
!948 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !196)
!949 = !DILocalVariable(name: "outlen", scope: !943, file: !1, line: 770, type: !5)
!950 = !DILocalVariable(name: "nkey", scope: !943, file: !1, line: 775, type: !215)
!951 = !DILocalVariable(name: "vlen", scope: !943, file: !1, line: 776, type: !215)
!952 = !DILocalVariable(name: "__vla_expr0", scope: !943, type: !190, flags: DIFlagArtificial)
!953 = !DILocalVariable(name: "mech", scope: !943, file: !1, line: 784, type: !954)
!954 = !DICompositeType(tag: DW_TAG_array_type, baseType: !196, elements: !955)
!955 = !{!956}
!956 = !DISubrange(count: !952)
!957 = !DILocalVariable(name: "challenge", scope: !943, file: !1, line: 791, type: !947)
!958 = !DILocalVariable(name: "result", scope: !943, file: !1, line: 799, type: !215)
!959 = !DILocation(line: 0, scope: !943)
!960 = !DILocation(line: 768, column: 5, scope: !961)
!961 = distinct !DILexicalBlock(scope: !962, file: !1, line: 768, column: 5)
!962 = distinct !DILexicalBlock(scope: !943, file: !1, line: 768, column: 5)
!963 = !{!964, !799, i64 140}
!964 = !{!"settings", !805, i64 0, !798, i64 8, !798, i64 12, !798, i64 16, !795, i64 24, !798, i64 32, !798, i64 36, !805, i64 40, !798, i64 48, !795, i64 56, !795, i64 64, !798, i64 72, !965, i64 80, !798, i64 88, !798, i64 92, !798, i64 96, !796, i64 100, !798, i64 104, !798, i64 108, !799, i64 112, !796, i64 116, !798, i64 120, !798, i64 124, !798, i64 128, !798, i64 132, !798, i64 136, !799, i64 140, !799, i64 141, !799, i64 142, !799, i64 143, !799, i64 144, !799, i64 145, !798, i64 148, !965, i64 152, !798, i64 160, !798, i64 164, !799, i64 168, !798, i64 172, !799, i64 176, !799, i64 177, !795, i64 184, !798, i64 192, !798, i64 196, !798, i64 200, !798, i64 204, !965, i64 208, !965, i64 216, !798, i64 224, !799, i64 228, !798, i64 232, !798, i64 236, !798, i64 240, !798, i64 244, !798, i64 248, !799, i64 252, !799, i64 253, !799, i64 254, !799, i64 255, !798, i64 256, !798, i64 260, !798, i64 264, !798, i64 268, !798, i64 272, !798, i64 276, !798, i64 280, !798, i64 284, !798, i64 288, !798, i64 292, !965, i64 296, !965, i64 304, !799, i64 312, !798, i64 316, !798, i64 320, !795, i64 328, !798, i64 336}
!965 = !{!"double", !796, i64 0}
!966 = !{i8 0, i8 2}
!967 = !DILocation(line: 768, column: 5, scope: !962)
!968 = !DILocation(line: 772, column: 5, scope: !969)
!969 = distinct !DILexicalBlock(scope: !970, file: !1, line: 772, column: 5)
!970 = distinct !DILexicalBlock(scope: !943, file: !1, line: 772, column: 5)
!971 = !DILocation(line: 772, column: 5, scope: !970)
!972 = !DILocation(line: 773, column: 5, scope: !943)
!973 = !DILocation(line: 775, column: 41, scope: !943)
!974 = !DILocation(line: 775, column: 16, scope: !943)
!975 = !DILocation(line: 776, column: 41, scope: !943)
!976 = !DILocation(line: 776, column: 49, scope: !943)
!977 = !DILocation(line: 778, column: 28, scope: !978)
!978 = distinct !DILexicalBlock(scope: !943, file: !1, line: 778, column: 9)
!979 = !DILocation(line: 778, column: 35, scope: !978)
!980 = !DILocation(line: 778, column: 14, scope: !978)
!981 = !DILocation(line: 778, column: 9, scope: !943)
!982 = !DILocation(line: 779, column: 25, scope: !983)
!983 = distinct !DILexicalBlock(scope: !978, file: !1, line: 778, column: 41)
!984 = !DILocation(line: 779, column: 9, scope: !983)
!985 = !DILocation(line: 780, column: 9, scope: !983)
!986 = !DILocation(line: 781, column: 9, scope: !983)
!987 = !DILocation(line: 784, column: 19, scope: !943)
!988 = !DILocation(line: 784, column: 5, scope: !943)
!989 = !DILocation(line: 784, column: 10, scope: !943)
!990 = !DILocation(line: 785, column: 18, scope: !943)
!991 = !DILocation(line: 785, column: 44, scope: !943)
!992 = !DILocation(line: 785, column: 5, scope: !943)
!993 = !DILocation(line: 786, column: 5, scope: !943)
!994 = !DILocation(line: 786, column: 16, scope: !943)
!995 = !DILocation(line: 788, column: 18, scope: !996)
!996 = distinct !DILexicalBlock(scope: !943, file: !1, line: 788, column: 9)
!997 = !{!964, !798, i64 32}
!998 = !DILocation(line: 788, column: 9, scope: !996)
!999 = !DILocation(line: 788, column: 9, scope: !943)
!1000 = !DILocation(line: 789, column: 17, scope: !996)
!1001 = !DILocation(line: 789, column: 9, scope: !996)
!1002 = !DILocation(line: 791, column: 34, scope: !943)
!1003 = !DILocation(line: 791, column: 29, scope: !943)
!1004 = !DILocation(line: 793, column: 28, scope: !1005)
!1005 = distinct !DILexicalBlock(scope: !943, file: !1, line: 793, column: 9)
!1006 = !DILocation(line: 793, column: 35, scope: !1005)
!1007 = !DILocation(line: 793, column: 14, scope: !1005)
!1008 = !DILocation(line: 793, column: 9, scope: !943)
!1009 = !DILocation(line: 794, column: 25, scope: !1010)
!1010 = distinct !DILexicalBlock(scope: !1005, file: !1, line: 793, column: 43)
!1011 = !DILocation(line: 794, column: 9, scope: !1010)
!1012 = !DILocation(line: 795, column: 9, scope: !1010)
!1013 = !DILocation(line: 796, column: 9, scope: !1010)
!1014 = !DILocation(line: 801, column: 16, scope: !943)
!1015 = !DILocation(line: 801, column: 13, scope: !943)
!1016 = !DILocation(line: 801, column: 5, scope: !943)
!1017 = !DILocation(line: 806, column: 49, scope: !1018)
!1018 = distinct !DILexicalBlock(scope: !943, file: !1, line: 801, column: 21)
!1019 = !DILocation(line: 806, column: 12, scope: !1018)
!1020 = !DILocation(line: 806, column: 25, scope: !1018)
!1021 = !{!794, !799, i64 12}
!1022 = !DILocation(line: 807, column: 9, scope: !1018)
!1023 = !DILocation(line: 809, column: 17, scope: !1024)
!1024 = distinct !DILexicalBlock(scope: !1018, file: !1, line: 809, column: 13)
!1025 = !DILocation(line: 809, column: 13, scope: !1018)
!1026 = !DILocation(line: 810, column: 26, scope: !1027)
!1027 = distinct !DILexicalBlock(scope: !1028, file: !1, line: 810, column: 17)
!1028 = distinct !DILexicalBlock(scope: !1024, file: !1, line: 809, column: 31)
!1029 = !DILocation(line: 810, column: 17, scope: !1027)
!1030 = !DILocation(line: 810, column: 17, scope: !1028)
!1031 = !DILocation(line: 811, column: 25, scope: !1032)
!1032 = distinct !DILexicalBlock(scope: !1027, file: !1, line: 810, column: 35)
!1033 = !DILocation(line: 812, column: 65, scope: !1032)
!1034 = !{!794, !798, i64 8}
!1035 = !DILocation(line: 811, column: 17, scope: !1032)
!1036 = !DILocation(line: 813, column: 13, scope: !1032)
!1037 = !DILocation(line: 814, column: 13, scope: !1028)
!1038 = !DILocation(line: 816, column: 16, scope: !1018)
!1039 = !DILocation(line: 819, column: 9, scope: !1018)
!1040 = !DILocation(line: 821, column: 9, scope: !1041)
!1041 = distinct !DILexicalBlock(scope: !1042, file: !1, line: 821, column: 9)
!1042 = distinct !DILexicalBlock(scope: !1018, file: !1, line: 821, column: 9)
!1043 = !DILocation(line: 831, column: 18, scope: !1044)
!1044 = distinct !DILexicalBlock(scope: !943, file: !1, line: 831, column: 9)
!1045 = !DILocation(line: 831, column: 9, scope: !1044)
!1046 = !DILocation(line: 831, column: 9, scope: !943)
!1047 = !DILocation(line: 832, column: 17, scope: !1048)
!1048 = distinct !DILexicalBlock(scope: !1044, file: !1, line: 831, column: 27)
!1049 = !DILocation(line: 832, column: 9, scope: !1048)
!1050 = !DILocation(line: 833, column: 5, scope: !1048)
!1051 = !DILocation(line: 835, column: 5, scope: !943)
!1052 = !DILocation(line: 844, column: 9, scope: !1053)
!1053 = distinct !DILexicalBlock(scope: !943, file: !1, line: 835, column: 20)
!1054 = !DILocation(line: 849, column: 24, scope: !1053)
!1055 = !DILocation(line: 849, column: 9, scope: !1053)
!1056 = !DILocation(line: 850, column: 9, scope: !1053)
!1057 = !DILocation(line: 852, column: 22, scope: !1058)
!1058 = distinct !DILexicalBlock(scope: !1053, file: !1, line: 852, column: 13)
!1059 = !DILocation(line: 852, column: 13, scope: !1058)
!1060 = !DILocation(line: 852, column: 13, scope: !1053)
!1061 = !DILocation(line: 853, column: 21, scope: !1058)
!1062 = !DILocation(line: 853, column: 13, scope: !1058)
!1063 = !DILocation(line: 854, column: 25, scope: !1053)
!1064 = !DILocation(line: 854, column: 9, scope: !1053)
!1065 = !DILocation(line: 855, column: 32, scope: !1053)
!1066 = !DILocation(line: 855, column: 46, scope: !1053)
!1067 = !DILocation(line: 855, column: 9, scope: !1053)
!1068 = !DILocation(line: 856, column: 12, scope: !1053)
!1069 = !DILocation(line: 856, column: 26, scope: !1053)
!1070 = !DILocation(line: 856, column: 35, scope: !1053)
!1071 = !{!805, !805, i64 0}
!1072 = !DILocation(line: 858, column: 48, scope: !1053)
!1073 = !DILocation(line: 858, column: 9, scope: !1053)
!1074 = !DILocation(line: 859, column: 5, scope: !1053)
!1075 = !DILocation(line: 860, column: 1, scope: !943)
!1076 = !DISubprogram(name: "do_item_remove", scope: !1077, file: !1077, line: 23, type: !1078, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1080)
!1077 = !DIFile(filename: "./items.h", directory: "/home/xuheng/blackbox/llvm-test/memcached", checksumkind: CSK_MD5, checksum: "24f8c54717bd547418db2338c9044014")
!1078 = !DISubroutineType(types: !1079)
!1079 = !{null, !237}
!1080 = !{}
!1081 = !DISubprogram(name: "fprintf", scope: !1082, file: !1082, line: 326, type: !1083, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1080)
!1082 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "5b917eded35ce2507d1e294bf8cb74d7")
!1083 = !DISubroutineType(types: !1084)
!1084 = !{!215, !1085, !1139, null}
!1085 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1086)
!1086 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1087, size: 64)
!1087 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1088, line: 7, baseType: !1089)
!1088 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!1089 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !1090, line: 49, size: 1728, elements: !1091)
!1090 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "f3c970561f3408448ce03a9676ead8f4")
!1091 = !{!1092, !1093, !1094, !1095, !1096, !1097, !1098, !1099, !1100, !1101, !1102, !1103, !1104, !1107, !1109, !1110, !1111, !1113, !1114, !1116, !1120, !1123, !1125, !1128, !1131, !1132, !1133, !1134, !1135}
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1089, file: !1090, line: 51, baseType: !215, size: 32)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1089, file: !1090, line: 54, baseType: !195, size: 64, offset: 64)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1089, file: !1090, line: 55, baseType: !195, size: 64, offset: 128)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1089, file: !1090, line: 56, baseType: !195, size: 64, offset: 192)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1089, file: !1090, line: 57, baseType: !195, size: 64, offset: 256)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1089, file: !1090, line: 58, baseType: !195, size: 64, offset: 320)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1089, file: !1090, line: 59, baseType: !195, size: 64, offset: 384)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1089, file: !1090, line: 60, baseType: !195, size: 64, offset: 448)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1089, file: !1090, line: 61, baseType: !195, size: 64, offset: 512)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1089, file: !1090, line: 64, baseType: !195, size: 64, offset: 576)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1089, file: !1090, line: 65, baseType: !195, size: 64, offset: 640)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1089, file: !1090, line: 66, baseType: !195, size: 64, offset: 704)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1089, file: !1090, line: 68, baseType: !1105, size: 64, offset: 768)
!1105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1106, size: 64)
!1106 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !1090, line: 36, flags: DIFlagFwdDecl)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1089, file: !1090, line: 70, baseType: !1108, size: 64, offset: 832)
!1108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1089, size: 64)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1089, file: !1090, line: 72, baseType: !215, size: 32, offset: 896)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1089, file: !1090, line: 73, baseType: !215, size: 32, offset: 928)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1089, file: !1090, line: 74, baseType: !1112, size: 64, offset: 960)
!1112 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !163, line: 152, baseType: !276)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1089, file: !1090, line: 77, baseType: !164, size: 16, offset: 1024)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1089, file: !1090, line: 78, baseType: !1115, size: 8, offset: 1040)
!1115 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1089, file: !1090, line: 79, baseType: !1117, size: 8, offset: 1048)
!1117 = !DICompositeType(tag: DW_TAG_array_type, baseType: !196, size: 8, elements: !1118)
!1118 = !{!1119}
!1119 = !DISubrange(count: 1)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1089, file: !1090, line: 81, baseType: !1121, size: 64, offset: 1088)
!1121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1122, size: 64)
!1122 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !1090, line: 43, baseType: null)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1089, file: !1090, line: 89, baseType: !1124, size: 64, offset: 1152)
!1124 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !163, line: 153, baseType: !276)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1089, file: !1090, line: 91, baseType: !1126, size: 64, offset: 1216)
!1126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1127, size: 64)
!1127 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !1090, line: 37, flags: DIFlagFwdDecl)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1089, file: !1090, line: 92, baseType: !1129, size: 64, offset: 1280)
!1129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1130, size: 64)
!1130 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !1090, line: 38, flags: DIFlagFwdDecl)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1089, file: !1090, line: 93, baseType: !1108, size: 64, offset: 1344)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1089, file: !1090, line: 94, baseType: !161, size: 64, offset: 1408)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1089, file: !1090, line: 95, baseType: !639, size: 64, offset: 1472)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1089, file: !1090, line: 96, baseType: !215, size: 32, offset: 1536)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1089, file: !1090, line: 98, baseType: !1136, size: 160, offset: 1568)
!1136 = !DICompositeType(tag: DW_TAG_array_type, baseType: !196, size: 160, elements: !1137)
!1137 = !{!1138}
!1138 = !DISubrange(count: 20)
!1139 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !947)
!1140 = distinct !DISubprogram(name: "try_read_command_binary", scope: !1, file: !1, line: 52, type: !758, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1141)
!1141 = !{!1142, !1143, !1147, !1150, !1151, !1152}
!1142 = !DILocalVariable(name: "c", arg: 1, scope: !1140, file: !1, line: 52, type: !391)
!1143 = !DILocalVariable(name: "req", scope: !1144, file: !1, line: 59, type: !1146)
!1144 = distinct !DILexicalBlock(scope: !1145, file: !1, line: 57, column: 12)
!1145 = distinct !DILexicalBlock(scope: !1140, file: !1, line: 54, column: 9)
!1146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !733, size: 64)
!1147 = !DILocalVariable(name: "ii", scope: !1148, file: !1, line: 64, type: !215)
!1148 = distinct !DILexicalBlock(scope: !1149, file: !1, line: 62, column: 35)
!1149 = distinct !DILexicalBlock(scope: !1144, file: !1, line: 62, column: 13)
!1150 = !DILocalVariable(name: "extlen", scope: !1144, file: !1, line: 89, type: !173)
!1151 = !DILocalVariable(name: "keylen", scope: !1144, file: !1, line: 90, type: !179)
!1152 = !DILocalVariable(name: "extbuf", scope: !1144, file: !1, line: 116, type: !1153)
!1153 = !DICompositeType(tag: DW_TAG_array_type, baseType: !196, size: 384, elements: !1154)
!1154 = !{!1155}
!1155 = !DISubrange(count: 48)
!1156 = !DILocation(line: 0, scope: !1140)
!1157 = !DILocation(line: 54, column: 12, scope: !1145)
!1158 = !{!794, !798, i64 188}
!1159 = !DILocation(line: 54, column: 19, scope: !1145)
!1160 = !DILocation(line: 54, column: 9, scope: !1140)
!1161 = !DILocation(line: 56, column: 9, scope: !1162)
!1162 = distinct !DILexicalBlock(scope: !1145, file: !1, line: 54, column: 47)
!1163 = !DILocation(line: 58, column: 20, scope: !1144)
!1164 = !DILocation(line: 58, column: 16, scope: !1144)
!1165 = !DILocation(line: 58, column: 38, scope: !1144)
!1166 = !{!794, !795, i64 176}
!1167 = !DILocation(line: 58, column: 9, scope: !1144)
!1168 = !DILocation(line: 0, scope: !1144)
!1169 = !DILocation(line: 62, column: 22, scope: !1149)
!1170 = !DILocation(line: 62, column: 30, scope: !1149)
!1171 = !DILocation(line: 62, column: 13, scope: !1144)
!1172 = !DILocation(line: 65, column: 21, scope: !1148)
!1173 = !DILocation(line: 65, column: 66, scope: !1148)
!1174 = !DILocation(line: 65, column: 13, scope: !1148)
!1175 = !DILocation(line: 0, scope: !1148)
!1176 = !DILocation(line: 66, column: 13, scope: !1177)
!1177 = distinct !DILexicalBlock(scope: !1148, file: !1, line: 66, column: 13)
!1178 = !DILocation(line: 67, column: 28, scope: !1179)
!1179 = distinct !DILexicalBlock(scope: !1180, file: !1, line: 67, column: 21)
!1180 = distinct !DILexicalBlock(scope: !1181, file: !1, line: 66, column: 57)
!1181 = distinct !DILexicalBlock(scope: !1177, file: !1, line: 66, column: 13)
!1182 = !DILocation(line: 67, column: 21, scope: !1180)
!1183 = !DILocation(line: 68, column: 29, scope: !1184)
!1184 = distinct !DILexicalBlock(scope: !1179, file: !1, line: 67, column: 34)
!1185 = !DILocation(line: 68, column: 52, scope: !1184)
!1186 = !DILocation(line: 68, column: 21, scope: !1184)
!1187 = !DILocation(line: 69, column: 17, scope: !1184)
!1188 = !DILocation(line: 70, column: 25, scope: !1180)
!1189 = !DILocation(line: 70, column: 44, scope: !1180)
!1190 = !DILocation(line: 70, column: 17, scope: !1180)
!1191 = !DILocation(line: 66, column: 51, scope: !1181)
!1192 = !DILocation(line: 66, column: 29, scope: !1181)
!1193 = distinct !{!1193, !1176, !1194, !1195}
!1194 = !DILocation(line: 71, column: 13, scope: !1177)
!1195 = !{!"llvm.loop.mustprogress"}
!1196 = !DILocation(line: 72, column: 21, scope: !1148)
!1197 = !DILocation(line: 72, column: 13, scope: !1148)
!1198 = !DILocation(line: 73, column: 9, scope: !1148)
!1199 = !DILocation(line: 76, column: 43, scope: !1144)
!1200 = !DILocation(line: 76, column: 41, scope: !1144)
!1201 = !DILocation(line: 77, column: 44, scope: !1144)
!1202 = !DILocation(line: 77, column: 42, scope: !1144)
!1203 = !DILocation(line: 78, column: 60, scope: !1144)
!1204 = !DILocation(line: 78, column: 40, scope: !1144)
!1205 = !DILocation(line: 78, column: 38, scope: !1144)
!1206 = !DILocation(line: 80, column: 38, scope: !1207)
!1207 = distinct !DILexicalBlock(scope: !1144, file: !1, line: 80, column: 13)
!1208 = !DILocation(line: 80, column: 44, scope: !1207)
!1209 = !DILocation(line: 80, column: 13, scope: !1144)
!1210 = !DILocation(line: 81, column: 26, scope: !1211)
!1211 = distinct !DILexicalBlock(scope: !1212, file: !1, line: 81, column: 17)
!1212 = distinct !DILexicalBlock(scope: !1207, file: !1, line: 80, column: 68)
!1213 = !DILocation(line: 81, column: 17, scope: !1211)
!1214 = !DILocation(line: 81, column: 17, scope: !1212)
!1215 = !DILocation(line: 82, column: 25, scope: !1216)
!1216 = distinct !DILexicalBlock(scope: !1211, file: !1, line: 81, column: 35)
!1217 = !DILocation(line: 83, column: 25, scope: !1216)
!1218 = !DILocation(line: 82, column: 17, scope: !1216)
!1219 = !DILocation(line: 84, column: 13, scope: !1216)
!1220 = !DILocation(line: 85, column: 28, scope: !1212)
!1221 = !DILocation(line: 85, column: 13, scope: !1212)
!1222 = !DILocation(line: 86, column: 13, scope: !1212)
!1223 = !DILocation(line: 89, column: 51, scope: !1144)
!1224 = !DILocation(line: 90, column: 52, scope: !1144)
!1225 = !DILocation(line: 91, column: 16, scope: !1226)
!1226 = distinct !DILexicalBlock(scope: !1144, file: !1, line: 91, column: 13)
!1227 = !DILocation(line: 91, column: 13, scope: !1226)
!1228 = !DILocation(line: 91, column: 25, scope: !1226)
!1229 = !DILocation(line: 91, column: 34, scope: !1226)
!1230 = !DILocation(line: 91, column: 32, scope: !1226)
!1231 = !DILocation(line: 91, column: 41, scope: !1226)
!1232 = !DILocation(line: 91, column: 23, scope: !1226)
!1233 = !DILocation(line: 91, column: 13, scope: !1144)
!1234 = !DILocation(line: 94, column: 13, scope: !1235)
!1235 = distinct !DILexicalBlock(scope: !1226, file: !1, line: 91, column: 69)
!1236 = !DILocation(line: 97, column: 14, scope: !1237)
!1237 = distinct !DILexicalBlock(scope: !1144, file: !1, line: 97, column: 13)
!1238 = !DILocation(line: 97, column: 13, scope: !1144)
!1239 = !DILocation(line: 98, column: 28, scope: !1240)
!1240 = distinct !DILexicalBlock(scope: !1237, file: !1, line: 97, column: 29)
!1241 = !DILocation(line: 98, column: 13, scope: !1240)
!1242 = !DILocation(line: 99, column: 13, scope: !1240)
!1243 = !DILocation(line: 102, column: 43, scope: !1144)
!1244 = !DILocation(line: 102, column: 18, scope: !1144)
!1245 = !DILocation(line: 102, column: 12, scope: !1144)
!1246 = !DILocation(line: 102, column: 16, scope: !1144)
!1247 = !DILocation(line: 103, column: 46, scope: !1144)
!1248 = !DILocation(line: 103, column: 21, scope: !1144)
!1249 = !DILocation(line: 103, column: 12, scope: !1144)
!1250 = !DILocation(line: 103, column: 19, scope: !1144)
!1251 = !{!794, !798, i64 440}
!1252 = !DILocation(line: 104, column: 46, scope: !1144)
!1253 = !DILocation(line: 104, column: 12, scope: !1144)
!1254 = !DILocation(line: 104, column: 19, scope: !1144)
!1255 = !{!794, !798, i64 436}
!1256 = !DILocation(line: 106, column: 12, scope: !1144)
!1257 = !DILocation(line: 106, column: 16, scope: !1144)
!1258 = !{!794, !805, i64 416}
!1259 = !DILocation(line: 108, column: 28, scope: !1144)
!1260 = !DILocation(line: 108, column: 12, scope: !1144)
!1261 = !DILocation(line: 108, column: 26, scope: !1144)
!1262 = !{!794, !798, i64 28}
!1263 = !DILocation(line: 116, column: 9, scope: !1144)
!1264 = !DILocation(line: 116, column: 14, scope: !1144)
!1265 = !DILocation(line: 117, column: 23, scope: !1144)
!1266 = !DILocation(line: 117, column: 54, scope: !1144)
!1267 = !DILocation(line: 117, column: 60, scope: !1144)
!1268 = !DILocation(line: 118, column: 24, scope: !1144)
!1269 = !DILocation(line: 118, column: 17, scope: !1144)
!1270 = !DILocation(line: 118, column: 60, scope: !1144)
!1271 = !DILocation(line: 117, column: 9, scope: !1144)
!1272 = !DILocation(line: 119, column: 19, scope: !1144)
!1273 = !DILocation(line: 120, column: 18, scope: !1144)
!1274 = !DILocation(line: 122, column: 9, scope: !1144)
!1275 = !DILocation(line: 123, column: 5, scope: !1145)
!1276 = !DILocation(line: 125, column: 5, scope: !1140)
!1277 = !DILocation(line: 126, column: 1, scope: !1140)
!1278 = !DISubprogram(name: "memcpy", scope: !1279, file: !1279, line: 43, type: !1280, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1080)
!1279 = !DIFile(filename: "/usr/include/string.h", directory: "", checksumkind: CSK_MD5, checksum: "61f60112cf5c0a45c54ea1f595add24c")
!1280 = !DISubroutineType(types: !1281)
!1281 = !{!161, !1282, !1283, !639}
!1282 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !161)
!1283 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !331)
!1284 = distinct !DISubprogram(name: "__bswap_16", scope: !1285, file: !1285, line: 34, type: !1286, scopeLine: 35, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1288)
!1285 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/byteswap.h", directory: "", checksumkind: CSK_MD5, checksum: "552c402ec2d372531713984b317e0c35")
!1286 = !DISubroutineType(types: !1287)
!1287 = !{!162, !162}
!1288 = !{!1289}
!1289 = !DILocalVariable(name: "__bsx", arg: 1, scope: !1284, file: !1285, line: 34, type: !162)
!1290 = !DILocation(line: 0, scope: !1284)
!1291 = !DILocation(line: 39, column: 3, scope: !1284)
!1292 = distinct !DISubprogram(name: "__bswap_32", scope: !1285, file: !1285, line: 49, type: !1293, scopeLine: 50, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1295)
!1293 = !DISubroutineType(types: !1294)
!1294 = !{!185, !185}
!1295 = !{!1296}
!1296 = !DILocalVariable(name: "__bsx", arg: 1, scope: !1292, file: !1285, line: 49, type: !185)
!1297 = !DILocation(line: 0, scope: !1292)
!1298 = !DILocation(line: 54, column: 10, scope: !1292)
!1299 = !DILocation(line: 54, column: 3, scope: !1292)
!1300 = !DISubprogram(name: "ntohll", scope: !1301, file: !1301, line: 27, type: !1302, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1080)
!1301 = !DIFile(filename: "./util.h", directory: "/home/xuheng/blackbox/llvm-test/memcached", checksumkind: CSK_MD5, checksum: "d1ef68c688867746f50aae7567be079a")
!1302 = !DISubroutineType(types: !1303)
!1303 = !{!188, !188}
!1304 = !DISubprogram(name: "conn_set_state", scope: !4, file: !4, line: 1026, type: !1305, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1080)
!1305 = !DISubroutineType(types: !1306)
!1306 = !{null, !391, !3}
!1307 = !DISubprogram(name: "resp_start", scope: !4, file: !4, line: 1021, type: !1308, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1080)
!1308 = !DISubroutineType(types: !1309)
!1309 = !{!401, !391}
!1310 = distinct !DISubprogram(name: "dispatch_bin_command", scope: !1, file: !1, line: 885, type: !1311, scopeLine: 885, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1313)
!1311 = !DISubroutineType(types: !1312)
!1312 = !{null, !391, !195}
!1313 = !{!1314, !1315, !1316, !1317, !1318, !1319}
!1314 = !DILocalVariable(name: "c", arg: 1, scope: !1310, file: !1, line: 885, type: !391)
!1315 = !DILocalVariable(name: "extbuf", arg: 2, scope: !1310, file: !1, line: 885, type: !195)
!1316 = !DILocalVariable(name: "protocol_error", scope: !1310, file: !1, line: 886, type: !215)
!1317 = !DILocalVariable(name: "extlen", scope: !1310, file: !1, line: 888, type: !173)
!1318 = !DILocalVariable(name: "keylen", scope: !1310, file: !1, line: 889, type: !179)
!1319 = !DILocalVariable(name: "bodylen", scope: !1310, file: !1, line: 890, type: !184)
!1320 = !DILocation(line: 0, scope: !1310)
!1321 = !DILocation(line: 889, column: 48, scope: !1310)
!1322 = !DILocation(line: 890, column: 49, scope: !1310)
!1323 = !DILocation(line: 892, column: 9, scope: !1324)
!1324 = distinct !DILexicalBlock(scope: !1310, file: !1, line: 892, column: 9)
!1325 = !DILocation(line: 892, column: 16, scope: !1324)
!1326 = !DILocation(line: 892, column: 26, scope: !1324)
!1327 = !DILocation(line: 888, column: 47, scope: !1310)
!1328 = !DILocation(line: 892, column: 29, scope: !1324)
!1329 = !DILocation(line: 892, column: 38, scope: !1324)
!1330 = !DILocation(line: 892, column: 36, scope: !1324)
!1331 = !DILocation(line: 892, column: 45, scope: !1324)
!1332 = !DILocation(line: 892, column: 9, scope: !1310)
!1333 = !DILocation(line: 893, column: 25, scope: !1334)
!1334 = distinct !DILexicalBlock(scope: !1324, file: !1, line: 892, column: 56)
!1335 = !DILocation(line: 893, column: 9, scope: !1334)
!1336 = !DILocation(line: 894, column: 12, scope: !1334)
!1337 = !DILocation(line: 894, column: 30, scope: !1334)
!1338 = !{!794, !799, i64 16}
!1339 = !DILocation(line: 895, column: 9, scope: !1334)
!1340 = !DILocation(line: 898, column: 18, scope: !1341)
!1341 = distinct !DILexicalBlock(scope: !1310, file: !1, line: 898, column: 9)
!1342 = !DILocation(line: 898, column: 23, scope: !1341)
!1343 = !DILocation(line: 898, column: 41, scope: !1341)
!1344 = !DILocation(line: 898, column: 27, scope: !1341)
!1345 = !DILocation(line: 898, column: 9, scope: !1310)
!1346 = !DILocation(line: 899, column: 25, scope: !1347)
!1347 = distinct !DILexicalBlock(scope: !1341, file: !1, line: 898, column: 45)
!1348 = !DILocation(line: 899, column: 9, scope: !1347)
!1349 = !DILocation(line: 900, column: 12, scope: !1347)
!1350 = !DILocation(line: 900, column: 30, scope: !1347)
!1351 = !DILocation(line: 901, column: 9, scope: !1347)
!1352 = !DILocation(line: 905, column: 8, scope: !1310)
!1353 = !DILocation(line: 905, column: 16, scope: !1310)
!1354 = !{!794, !799, i64 364}
!1355 = !DILocation(line: 908, column: 16, scope: !1356)
!1356 = distinct !DILexicalBlock(scope: !1310, file: !1, line: 908, column: 9)
!1357 = !DILocation(line: 908, column: 9, scope: !1310)
!1358 = !DILocation(line: 909, column: 38, scope: !1359)
!1359 = distinct !DILexicalBlock(scope: !1356, file: !1, line: 908, column: 34)
!1360 = !DILocation(line: 909, column: 9, scope: !1359)
!1361 = !DILocation(line: 910, column: 9, scope: !1359)
!1362 = !DILocation(line: 913, column: 16, scope: !1310)
!1363 = !DILocation(line: 913, column: 13, scope: !1310)
!1364 = !DILocation(line: 913, column: 5, scope: !1310)
!1365 = !DILocation(line: 915, column: 9, scope: !1366)
!1366 = distinct !DILexicalBlock(scope: !1310, file: !1, line: 913, column: 21)
!1367 = !DILocation(line: 916, column: 9, scope: !1366)
!1368 = !DILocation(line: 918, column: 9, scope: !1366)
!1369 = !DILocation(line: 919, column: 9, scope: !1366)
!1370 = !DILocation(line: 921, column: 9, scope: !1366)
!1371 = !DILocation(line: 922, column: 9, scope: !1366)
!1372 = !DILocation(line: 924, column: 9, scope: !1366)
!1373 = !DILocation(line: 924, column: 16, scope: !1366)
!1374 = !DILocation(line: 960, column: 5, scope: !1310)
!1375 = !DILocation(line: 927, column: 9, scope: !1366)
!1376 = !DILocation(line: 928, column: 9, scope: !1366)
!1377 = !DILocation(line: 930, column: 9, scope: !1366)
!1378 = !DILocation(line: 931, column: 9, scope: !1366)
!1379 = !DILocation(line: 933, column: 9, scope: !1366)
!1380 = !DILocation(line: 933, column: 16, scope: !1366)
!1381 = !DILocation(line: 936, column: 9, scope: !1366)
!1382 = !DILocation(line: 936, column: 16, scope: !1366)
!1383 = !DILocation(line: 939, column: 9, scope: !1366)
!1384 = !DILocation(line: 940, column: 9, scope: !1366)
!1385 = !DILocation(line: 942, column: 9, scope: !1366)
!1386 = !DILocation(line: 943, column: 9, scope: !1366)
!1387 = !DILocation(line: 945, column: 9, scope: !1366)
!1388 = !DILocation(line: 946, column: 9, scope: !1366)
!1389 = !DILocation(line: 948, column: 9, scope: !1366)
!1390 = !DILocation(line: 949, column: 9, scope: !1366)
!1391 = !DILocation(line: 951, column: 9, scope: !1366)
!1392 = !DILocation(line: 952, column: 9, scope: !1366)
!1393 = !DILocation(line: 954, column: 9, scope: !1366)
!1394 = !DILocation(line: 955, column: 9, scope: !1366)
!1395 = !DILocation(line: 957, column: 9, scope: !1366)
!1396 = !DILocation(line: 957, column: 20, scope: !1366)
!1397 = !DILocation(line: 960, column: 13, scope: !1310)
!1398 = !DILocation(line: 962, column: 24, scope: !1399)
!1399 = distinct !DILexicalBlock(scope: !1400, file: !1, line: 962, column: 17)
!1400 = distinct !DILexicalBlock(scope: !1310, file: !1, line: 960, column: 21)
!1401 = !DILocation(line: 962, column: 29, scope: !1399)
!1402 = !DILocation(line: 962, column: 32, scope: !1399)
!1403 = !DILocation(line: 962, column: 39, scope: !1399)
!1404 = !DILocation(line: 962, column: 44, scope: !1399)
!1405 = !DILocation(line: 962, column: 47, scope: !1399)
!1406 = !DILocation(line: 962, column: 55, scope: !1399)
!1407 = !DILocation(line: 962, column: 17, scope: !1400)
!1408 = !DILocation(line: 963, column: 36, scope: !1409)
!1409 = distinct !DILexicalBlock(scope: !1399, file: !1, line: 962, column: 61)
!1410 = !DILocation(line: 963, column: 54, scope: !1409)
!1411 = !DILocation(line: 963, column: 17, scope: !1409)
!1412 = !DILocation(line: 1074, column: 9, scope: !1310)
!1413 = !DILocation(line: 965, column: 32, scope: !1414)
!1414 = distinct !DILexicalBlock(scope: !1399, file: !1, line: 964, column: 20)
!1415 = !DILocation(line: 969, column: 24, scope: !1416)
!1416 = distinct !DILexicalBlock(scope: !1400, file: !1, line: 969, column: 17)
!1417 = !DILocation(line: 969, column: 29, scope: !1416)
!1418 = !DILocation(line: 969, column: 32, scope: !1416)
!1419 = !DILocation(line: 969, column: 40, scope: !1416)
!1420 = !DILocation(line: 969, column: 50, scope: !1416)
!1421 = !DILocation(line: 969, column: 54, scope: !1416)
!1422 = !DILocation(line: 969, column: 61, scope: !1416)
!1423 = !DILocation(line: 969, column: 66, scope: !1416)
!1424 = !DILocation(line: 969, column: 69, scope: !1416)
!1425 = !DILocation(line: 969, column: 76, scope: !1416)
!1426 = !DILocation(line: 969, column: 17, scope: !1400)
!1427 = !DILocation(line: 970, column: 35, scope: !1428)
!1428 = distinct !DILexicalBlock(scope: !1416, file: !1, line: 969, column: 83)
!1429 = !DILocation(line: 970, column: 17, scope: !1428)
!1430 = !DILocation(line: 972, column: 32, scope: !1431)
!1431 = distinct !DILexicalBlock(scope: !1416, file: !1, line: 971, column: 20)
!1432 = !DILocation(line: 976, column: 24, scope: !1433)
!1433 = distinct !DILexicalBlock(scope: !1400, file: !1, line: 976, column: 17)
!1434 = !DILocation(line: 976, column: 29, scope: !1433)
!1435 = !DILocation(line: 976, column: 32, scope: !1433)
!1436 = !DILocation(line: 976, column: 39, scope: !1433)
!1437 = !DILocation(line: 976, column: 44, scope: !1433)
!1438 = !DILocation(line: 976, column: 47, scope: !1433)
!1439 = !DILocation(line: 976, column: 55, scope: !1433)
!1440 = !DILocation(line: 976, column: 17, scope: !1400)
!1441 = !DILocation(line: 977, column: 36, scope: !1442)
!1442 = distinct !DILexicalBlock(scope: !1433, file: !1, line: 976, column: 61)
!1443 = !DILocation(line: 977, column: 17, scope: !1442)
!1444 = !DILocation(line: 979, column: 17, scope: !1442)
!1445 = !DILocation(line: 981, column: 32, scope: !1446)
!1446 = distinct !DILexicalBlock(scope: !1433, file: !1, line: 980, column: 20)
!1447 = !DILocation(line: 0, scope: !1366)
!1448 = !DILocation(line: 987, column: 24, scope: !1449)
!1449 = distinct !DILexicalBlock(scope: !1400, file: !1, line: 987, column: 17)
!1450 = !DILocation(line: 987, column: 29, scope: !1449)
!1451 = !DILocation(line: 987, column: 32, scope: !1449)
!1452 = !DILocation(line: 987, column: 39, scope: !1449)
!1453 = !DILocation(line: 987, column: 44, scope: !1449)
!1454 = !DILocation(line: 987, column: 47, scope: !1449)
!1455 = !DILocation(line: 987, column: 66, scope: !1449)
!1456 = !DILocation(line: 987, column: 55, scope: !1449)
!1457 = !DILocation(line: 987, column: 17, scope: !1400)
!1458 = !DILocation(line: 988, column: 36, scope: !1459)
!1459 = distinct !DILexicalBlock(scope: !1449, file: !1, line: 987, column: 72)
!1460 = !DILocation(line: 988, column: 17, scope: !1459)
!1461 = !DILocation(line: 990, column: 32, scope: !1462)
!1462 = distinct !DILexicalBlock(scope: !1449, file: !1, line: 989, column: 20)
!1463 = !DILocation(line: 997, column: 24, scope: !1464)
!1464 = distinct !DILexicalBlock(scope: !1400, file: !1, line: 997, column: 17)
!1465 = !DILocation(line: 997, column: 29, scope: !1464)
!1466 = !DILocation(line: 997, column: 32, scope: !1464)
!1467 = !DILocation(line: 997, column: 40, scope: !1464)
!1468 = !DILocation(line: 997, column: 50, scope: !1464)
!1469 = !DILocation(line: 997, column: 53, scope: !1464)
!1470 = !DILocation(line: 997, column: 60, scope: !1464)
!1471 = !DILocation(line: 997, column: 17, scope: !1400)
!1472 = !DILocation(line: 998, column: 42, scope: !1473)
!1473 = distinct !DILexicalBlock(scope: !1464, file: !1, line: 997, column: 65)
!1474 = !DILocation(line: 998, column: 17, scope: !1473)
!1475 = !DILocation(line: 1004, column: 24, scope: !1476)
!1476 = distinct !DILexicalBlock(scope: !1400, file: !1, line: 1004, column: 17)
!1477 = !DILocation(line: 1004, column: 28, scope: !1476)
!1478 = !DILocation(line: 1004, column: 31, scope: !1476)
!1479 = !DILocation(line: 1004, column: 38, scope: !1476)
!1480 = !DILocation(line: 1004, column: 43, scope: !1476)
!1481 = !DILocation(line: 1004, column: 46, scope: !1476)
!1482 = !DILocation(line: 1004, column: 54, scope: !1476)
!1483 = !DILocation(line: 1004, column: 17, scope: !1400)
!1484 = !DILocation(line: 1005, column: 36, scope: !1485)
!1485 = distinct !DILexicalBlock(scope: !1476, file: !1, line: 1004, column: 65)
!1486 = !DILocation(line: 1005, column: 17, scope: !1485)
!1487 = !DILocation(line: 1007, column: 32, scope: !1488)
!1488 = distinct !DILexicalBlock(scope: !1476, file: !1, line: 1006, column: 20)
!1489 = !DILocation(line: 1012, column: 24, scope: !1490)
!1490 = distinct !DILexicalBlock(scope: !1400, file: !1, line: 1012, column: 17)
!1491 = !DILocation(line: 1012, column: 28, scope: !1490)
!1492 = !DILocation(line: 1012, column: 31, scope: !1490)
!1493 = !DILocation(line: 1012, column: 38, scope: !1490)
!1494 = !DILocation(line: 1012, column: 44, scope: !1490)
!1495 = !DILocation(line: 1012, column: 47, scope: !1490)
!1496 = !DILocation(line: 1012, column: 55, scope: !1490)
!1497 = !DILocation(line: 1012, column: 17, scope: !1400)
!1498 = !DILocation(line: 1013, column: 35, scope: !1499)
!1499 = distinct !DILexicalBlock(scope: !1490, file: !1, line: 1012, column: 77)
!1500 = !DILocation(line: 1013, column: 17, scope: !1499)
!1501 = !DILocation(line: 1015, column: 32, scope: !1502)
!1502 = distinct !DILexicalBlock(scope: !1490, file: !1, line: 1014, column: 20)
!1503 = !DILocation(line: 1020, column: 24, scope: !1504)
!1504 = distinct !DILexicalBlock(scope: !1400, file: !1, line: 1020, column: 17)
!1505 = !DILocation(line: 1020, column: 28, scope: !1504)
!1506 = !DILocation(line: 1020, column: 31, scope: !1504)
!1507 = !DILocation(line: 1020, column: 38, scope: !1504)
!1508 = !DILocation(line: 1020, column: 17, scope: !1400)
!1509 = !DILocation(line: 1021, column: 44, scope: !1510)
!1510 = distinct !DILexicalBlock(scope: !1504, file: !1, line: 1020, column: 44)
!1511 = !DILocation(line: 1021, column: 17, scope: !1510)
!1512 = !DILocation(line: 1023, column: 32, scope: !1513)
!1513 = distinct !DILexicalBlock(scope: !1504, file: !1, line: 1022, column: 20)
!1514 = !DILocation(line: 1027, column: 24, scope: !1515)
!1515 = distinct !DILexicalBlock(scope: !1400, file: !1, line: 1027, column: 17)
!1516 = !DILocation(line: 1027, column: 17, scope: !1400)
!1517 = !DILocation(line: 1028, column: 34, scope: !1518)
!1518 = distinct !DILexicalBlock(scope: !1515, file: !1, line: 1027, column: 30)
!1519 = !DILocation(line: 1028, column: 17, scope: !1518)
!1520 = !DILocation(line: 1030, column: 32, scope: !1521)
!1521 = distinct !DILexicalBlock(scope: !1515, file: !1, line: 1029, column: 20)
!1522 = !DILocation(line: 1034, column: 24, scope: !1523)
!1523 = distinct !DILexicalBlock(scope: !1400, file: !1, line: 1034, column: 17)
!1524 = !DILocation(line: 1034, column: 29, scope: !1523)
!1525 = !DILocation(line: 1034, column: 32, scope: !1523)
!1526 = !DILocation(line: 1034, column: 39, scope: !1523)
!1527 = !DILocation(line: 1034, column: 44, scope: !1523)
!1528 = !DILocation(line: 1034, column: 47, scope: !1523)
!1529 = !DILocation(line: 1034, column: 55, scope: !1523)
!1530 = !DILocation(line: 1034, column: 17, scope: !1400)
!1531 = !DILocation(line: 1035, column: 36, scope: !1532)
!1532 = distinct !DILexicalBlock(scope: !1523, file: !1, line: 1034, column: 61)
!1533 = !DILocation(line: 1035, column: 17, scope: !1532)
!1534 = !DILocation(line: 1036, column: 17, scope: !1532)
!1535 = !DILocation(line: 1037, column: 20, scope: !1532)
!1536 = !DILocation(line: 1037, column: 38, scope: !1532)
!1537 = !DILocation(line: 1038, column: 20, scope: !1532)
!1538 = !DILocation(line: 1038, column: 33, scope: !1532)
!1539 = !{!794, !796, i64 324}
!1540 = !DILocation(line: 1040, column: 32, scope: !1541)
!1541 = distinct !DILexicalBlock(scope: !1523, file: !1, line: 1039, column: 20)
!1542 = !DILocation(line: 1044, column: 24, scope: !1543)
!1543 = distinct !DILexicalBlock(scope: !1400, file: !1, line: 1044, column: 17)
!1544 = !DILocation(line: 1044, column: 29, scope: !1543)
!1545 = !DILocation(line: 1044, column: 32, scope: !1543)
!1546 = !DILocation(line: 1044, column: 39, scope: !1543)
!1547 = !DILocation(line: 1044, column: 44, scope: !1543)
!1548 = !DILocation(line: 1044, column: 47, scope: !1543)
!1549 = !DILocation(line: 1044, column: 55, scope: !1543)
!1550 = !DILocation(line: 1044, column: 17, scope: !1400)
!1551 = !DILocation(line: 1045, column: 37, scope: !1552)
!1552 = distinct !DILexicalBlock(scope: !1543, file: !1, line: 1044, column: 61)
!1553 = !DILocation(line: 1045, column: 17, scope: !1552)
!1554 = !DILocation(line: 1047, column: 32, scope: !1555)
!1555 = distinct !DILexicalBlock(scope: !1543, file: !1, line: 1046, column: 20)
!1556 = !DILocation(line: 1052, column: 24, scope: !1557)
!1557 = distinct !DILexicalBlock(scope: !1400, file: !1, line: 1052, column: 17)
!1558 = !DILocation(line: 1052, column: 29, scope: !1557)
!1559 = !DILocation(line: 1052, column: 32, scope: !1557)
!1560 = !DILocation(line: 1052, column: 39, scope: !1557)
!1561 = !DILocation(line: 1052, column: 17, scope: !1400)
!1562 = !DILocation(line: 1053, column: 39, scope: !1563)
!1563 = distinct !DILexicalBlock(scope: !1557, file: !1, line: 1052, column: 45)
!1564 = !DILocation(line: 1053, column: 17, scope: !1563)
!1565 = !DILocation(line: 1055, column: 32, scope: !1566)
!1566 = distinct !DILexicalBlock(scope: !1557, file: !1, line: 1054, column: 20)
!1567 = !DILocation(line: 1063, column: 24, scope: !1568)
!1568 = distinct !DILexicalBlock(scope: !1400, file: !1, line: 1063, column: 17)
!1569 = !DILocation(line: 1063, column: 29, scope: !1568)
!1570 = !DILocation(line: 1063, column: 32, scope: !1568)
!1571 = !DILocation(line: 1063, column: 39, scope: !1568)
!1572 = !DILocation(line: 1063, column: 17, scope: !1400)
!1573 = !DILocation(line: 1064, column: 42, scope: !1574)
!1574 = distinct !DILexicalBlock(scope: !1568, file: !1, line: 1063, column: 45)
!1575 = !DILocation(line: 1064, column: 17, scope: !1574)
!1576 = !DILocation(line: 1066, column: 32, scope: !1577)
!1577 = distinct !DILexicalBlock(scope: !1568, file: !1, line: 1065, column: 20)
!1578 = !DILocation(line: 1070, column: 29, scope: !1400)
!1579 = !DILocation(line: 1070, column: 13, scope: !1400)
!1580 = !DILocation(line: 1075, column: 38, scope: !1581)
!1581 = distinct !DILexicalBlock(scope: !1310, file: !1, line: 1074, column: 9)
!1582 = !DILocation(line: 1075, column: 9, scope: !1581)
!1583 = !DILocation(line: 1076, column: 1, scope: !1310)
!1584 = distinct !DISubprogram(name: "write_bin_error", scope: !1, file: !1, line: 179, type: !1585, scopeLine: 180, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1587)
!1585 = !DISubroutineType(types: !1586)
!1586 = !{null, !391, !840, !947, !215}
!1587 = !{!1588, !1589, !1590, !1591, !1592}
!1588 = !DILocalVariable(name: "c", arg: 1, scope: !1584, file: !1, line: 179, type: !391)
!1589 = !DILocalVariable(name: "err", arg: 2, scope: !1584, file: !1, line: 179, type: !840)
!1590 = !DILocalVariable(name: "errstr", arg: 3, scope: !1584, file: !1, line: 180, type: !947)
!1591 = !DILocalVariable(name: "swallow", arg: 4, scope: !1584, file: !1, line: 180, type: !215)
!1592 = !DILocalVariable(name: "len", scope: !1584, file: !1, line: 181, type: !639)
!1593 = !DILocation(line: 0, scope: !1584)
!1594 = !DILocation(line: 183, column: 10, scope: !1595)
!1595 = distinct !DILexicalBlock(scope: !1584, file: !1, line: 183, column: 9)
!1596 = !DILocation(line: 183, column: 9, scope: !1584)
!1597 = !DILocation(line: 184, column: 9, scope: !1598)
!1598 = distinct !DILexicalBlock(scope: !1595, file: !1, line: 183, column: 18)
!1599 = !DILocation(line: 186, column: 20, scope: !1600)
!1600 = distinct !DILexicalBlock(scope: !1598, file: !1, line: 184, column: 22)
!1601 = !DILocation(line: 187, column: 13, scope: !1600)
!1602 = !DILocation(line: 189, column: 20, scope: !1600)
!1603 = !DILocation(line: 190, column: 13, scope: !1600)
!1604 = !DILocation(line: 192, column: 20, scope: !1600)
!1605 = !DILocation(line: 193, column: 13, scope: !1600)
!1606 = !DILocation(line: 195, column: 20, scope: !1600)
!1607 = !DILocation(line: 196, column: 13, scope: !1600)
!1608 = !DILocation(line: 198, column: 20, scope: !1600)
!1609 = !DILocation(line: 199, column: 13, scope: !1600)
!1610 = !DILocation(line: 201, column: 20, scope: !1600)
!1611 = !DILocation(line: 202, column: 13, scope: !1600)
!1612 = !DILocation(line: 204, column: 20, scope: !1600)
!1613 = !DILocation(line: 205, column: 13, scope: !1600)
!1614 = !DILocation(line: 207, column: 20, scope: !1600)
!1615 = !DILocation(line: 208, column: 13, scope: !1600)
!1616 = !DILocation(line: 210, column: 20, scope: !1600)
!1617 = !DILocation(line: 211, column: 13, scope: !1600)
!1618 = !DILocation(line: 213, column: 13, scope: !1619)
!1619 = distinct !DILexicalBlock(scope: !1620, file: !1, line: 213, column: 13)
!1620 = distinct !DILexicalBlock(scope: !1600, file: !1, line: 213, column: 13)
!1621 = !DILocation(line: 219, column: 18, scope: !1622)
!1622 = distinct !DILexicalBlock(scope: !1584, file: !1, line: 219, column: 9)
!1623 = !DILocation(line: 219, column: 26, scope: !1622)
!1624 = !DILocation(line: 219, column: 9, scope: !1584)
!1625 = !DILocation(line: 220, column: 17, scope: !1626)
!1626 = distinct !DILexicalBlock(scope: !1622, file: !1, line: 219, column: 31)
!1627 = !DILocation(line: 220, column: 58, scope: !1626)
!1628 = !DILocation(line: 220, column: 9, scope: !1626)
!1629 = !DILocation(line: 221, column: 5, scope: !1626)
!1630 = !DILocation(line: 223, column: 11, scope: !1584)
!1631 = !DILocation(line: 224, column: 23, scope: !1584)
!1632 = !DILocation(line: 224, column: 34, scope: !1584)
!1633 = !DILocation(line: 224, column: 5, scope: !1584)
!1634 = !DILocation(line: 225, column: 13, scope: !1635)
!1635 = distinct !DILexicalBlock(scope: !1584, file: !1, line: 225, column: 9)
!1636 = !DILocation(line: 225, column: 9, scope: !1584)
!1637 = !DILocation(line: 226, column: 22, scope: !1638)
!1638 = distinct !DILexicalBlock(scope: !1635, file: !1, line: 225, column: 18)
!1639 = !DILocation(line: 226, column: 25, scope: !1638)
!1640 = !{!794, !795, i64 192}
!1641 = !DILocation(line: 226, column: 9, scope: !1638)
!1642 = !DILocation(line: 227, column: 5, scope: !1638)
!1643 = !DILocation(line: 228, column: 17, scope: !1644)
!1644 = distinct !DILexicalBlock(scope: !1584, file: !1, line: 228, column: 9)
!1645 = !DILocation(line: 228, column: 9, scope: !1584)
!1646 = !DILocation(line: 229, column: 21, scope: !1647)
!1647 = distinct !DILexicalBlock(scope: !1644, file: !1, line: 228, column: 22)
!1648 = !DILocation(line: 229, column: 12, scope: !1647)
!1649 = !DILocation(line: 229, column: 19, scope: !1647)
!1650 = !{!794, !798, i64 232}
!1651 = !DILocation(line: 231, column: 5, scope: !1647)
!1652 = !DILocation(line: 232, column: 24, scope: !1653)
!1653 = distinct !DILexicalBlock(scope: !1644, file: !1, line: 231, column: 12)
!1654 = !DILocation(line: 0, scope: !1644)
!1655 = !DILocation(line: 234, column: 1, scope: !1584)
!1656 = !DISubprogram(name: "strlen", scope: !1279, file: !1279, line: 385, type: !1657, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1080)
!1657 = !DISubroutineType(types: !1658)
!1658 = !{!639, !947}
!1659 = distinct !DISubprogram(name: "add_bin_header", scope: !1, file: !1, line: 135, type: !1660, scopeLine: 135, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1662)
!1660 = !DISubroutineType(types: !1661)
!1661 = !{null, !391, !179, !173, !179, !184}
!1662 = !{!1663, !1664, !1665, !1666, !1667, !1668, !1669, !1670}
!1663 = !DILocalVariable(name: "c", arg: 1, scope: !1659, file: !1, line: 135, type: !391)
!1664 = !DILocalVariable(name: "err", arg: 2, scope: !1659, file: !1, line: 135, type: !179)
!1665 = !DILocalVariable(name: "hdr_len", arg: 3, scope: !1659, file: !1, line: 135, type: !173)
!1666 = !DILocalVariable(name: "key_len", arg: 4, scope: !1659, file: !1, line: 135, type: !179)
!1667 = !DILocalVariable(name: "body_len", arg: 5, scope: !1659, file: !1, line: 135, type: !184)
!1668 = !DILocalVariable(name: "header", scope: !1659, file: !1, line: 136, type: !165)
!1669 = !DILocalVariable(name: "resp", scope: !1659, file: !1, line: 137, type: !493)
!1670 = !DILocalVariable(name: "ii", scope: !1671, file: !1, line: 158, type: !215)
!1671 = distinct !DILexicalBlock(scope: !1672, file: !1, line: 157, column: 31)
!1672 = distinct !DILexicalBlock(scope: !1659, file: !1, line: 157, column: 9)
!1673 = !DILocation(line: 0, scope: !1659)
!1674 = !DILocation(line: 137, column: 24, scope: !1659)
!1675 = !DILocation(line: 139, column: 5, scope: !1676)
!1676 = distinct !DILexicalBlock(scope: !1659, file: !1, line: 139, column: 5)
!1677 = !DILocation(line: 141, column: 5, scope: !1659)
!1678 = !DILocation(line: 143, column: 49, scope: !1659)
!1679 = !DILocation(line: 145, column: 28, scope: !1659)
!1680 = !DILocation(line: 146, column: 56, scope: !1659)
!1681 = !DILocation(line: 146, column: 22, scope: !1659)
!1682 = !DILocation(line: 146, column: 29, scope: !1659)
!1683 = !DILocation(line: 147, column: 41, scope: !1659)
!1684 = !DILocation(line: 147, column: 22, scope: !1659)
!1685 = !DILocation(line: 147, column: 29, scope: !1659)
!1686 = !DILocation(line: 149, column: 22, scope: !1659)
!1687 = !DILocation(line: 149, column: 29, scope: !1659)
!1688 = !DILocation(line: 150, column: 22, scope: !1659)
!1689 = !DILocation(line: 150, column: 31, scope: !1659)
!1690 = !DILocation(line: 151, column: 41, scope: !1659)
!1691 = !DILocation(line: 151, column: 22, scope: !1659)
!1692 = !DILocation(line: 151, column: 29, scope: !1659)
!1693 = !DILocation(line: 153, column: 32, scope: !1659)
!1694 = !DILocation(line: 153, column: 22, scope: !1659)
!1695 = !DILocation(line: 153, column: 30, scope: !1659)
!1696 = !DILocation(line: 154, column: 34, scope: !1659)
!1697 = !DILocation(line: 154, column: 22, scope: !1659)
!1698 = !DILocation(line: 154, column: 29, scope: !1659)
!1699 = !DILocation(line: 155, column: 38, scope: !1659)
!1700 = !DILocation(line: 155, column: 28, scope: !1659)
!1701 = !DILocation(line: 155, column: 22, scope: !1659)
!1702 = !DILocation(line: 155, column: 26, scope: !1659)
!1703 = !DILocation(line: 157, column: 18, scope: !1672)
!1704 = !DILocation(line: 157, column: 26, scope: !1672)
!1705 = !DILocation(line: 157, column: 9, scope: !1659)
!1706 = !DILocation(line: 159, column: 17, scope: !1671)
!1707 = !DILocation(line: 159, column: 57, scope: !1671)
!1708 = !DILocation(line: 159, column: 9, scope: !1671)
!1709 = !DILocation(line: 0, scope: !1671)
!1710 = !DILocation(line: 160, column: 9, scope: !1711)
!1711 = distinct !DILexicalBlock(scope: !1671, file: !1, line: 160, column: 9)
!1712 = !DILocation(line: 161, column: 24, scope: !1713)
!1713 = distinct !DILexicalBlock(scope: !1714, file: !1, line: 161, column: 17)
!1714 = distinct !DILexicalBlock(scope: !1715, file: !1, line: 160, column: 56)
!1715 = distinct !DILexicalBlock(scope: !1711, file: !1, line: 160, column: 9)
!1716 = !DILocation(line: 161, column: 17, scope: !1714)
!1717 = !DILocation(line: 162, column: 25, scope: !1718)
!1718 = distinct !DILexicalBlock(scope: !1713, file: !1, line: 161, column: 30)
!1719 = !DILocation(line: 162, column: 47, scope: !1718)
!1720 = !DILocation(line: 162, column: 17, scope: !1718)
!1721 = !DILocation(line: 163, column: 13, scope: !1718)
!1722 = !DILocation(line: 164, column: 21, scope: !1714)
!1723 = !DILocation(line: 164, column: 40, scope: !1714)
!1724 = !DILocation(line: 164, column: 13, scope: !1714)
!1725 = !DILocation(line: 160, column: 50, scope: !1715)
!1726 = !DILocation(line: 160, column: 25, scope: !1715)
!1727 = distinct !{!1727, !1710, !1728, !1195}
!1728 = !DILocation(line: 165, column: 9, scope: !1711)
!1729 = !DILocation(line: 166, column: 17, scope: !1671)
!1730 = !DILocation(line: 166, column: 9, scope: !1671)
!1731 = !DILocation(line: 167, column: 5, scope: !1671)
!1732 = !DILocation(line: 169, column: 11, scope: !1659)
!1733 = !DILocation(line: 169, column: 18, scope: !1659)
!1734 = !{!1735, !798, i64 16}
!1735 = !{!"_mc_resp", !795, i64 0, !795, i64 8, !798, i64 16, !798, i64 20, !795, i64 24, !795, i64 32, !795, i64 40, !796, i64 48, !798, i64 112, !796, i64 116, !796, i64 117, !799, i64 118, !799, i64 119, !803, i64 120, !803, i64 122, !803, i64 124, !806, i64 128, !798, i64 156, !796, i64 160}
!1736 = !DILocation(line: 170, column: 5, scope: !1659)
!1737 = !DILocation(line: 171, column: 1, scope: !1659)
!1738 = !DISubprogram(name: "resp_add_iov", scope: !4, file: !4, line: 1019, type: !1739, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1080)
!1739 = !DISubroutineType(types: !1740)
!1740 = !{null, !493, !331, !215}
!1741 = !DISubprogram(name: "resp_reset", scope: !4, file: !4, line: 1018, type: !1742, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1080)
!1742 = !DISubroutineType(types: !1743)
!1743 = !{null, !493}
!1744 = !DISubprogram(name: "htonll", scope: !1301, file: !1301, line: 26, type: !1302, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1080)
!1745 = !DISubprogram(name: "pthread_mutex_lock", scope: !1746, file: !1746, line: 738, type: !1747, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1080)
!1746 = !DIFile(filename: "/usr/include/pthread.h", directory: "", checksumkind: CSK_MD5, checksum: "0e55f33d4e6889d38be50c852b7d6130")
!1747 = !DISubroutineType(types: !1748)
!1748 = !{!215, !1749}
!1749 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !247, size: 64)
!1750 = !DISubprogram(name: "pthread_mutex_unlock", scope: !1746, file: !1746, line: 756, type: !1747, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1080)
!1751 = !DISubprogram(name: "store_item", scope: !4, file: !4, line: 1004, type: !1752, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1080)
!1752 = !DISubroutineType(types: !1753)
!1753 = !{!90, !237, !215, !391}
!1754 = distinct !DISubprogram(name: "write_bin_response", scope: !1, file: !1, line: 247, type: !1755, scopeLine: 247, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1757)
!1755 = !DISubroutineType(types: !1756)
!1756 = !{null, !391, !161, !215, !215, !215}
!1757 = !{!1758, !1759, !1760, !1761, !1762, !1763}
!1758 = !DILocalVariable(name: "c", arg: 1, scope: !1754, file: !1, line: 247, type: !391)
!1759 = !DILocalVariable(name: "d", arg: 2, scope: !1754, file: !1, line: 247, type: !161)
!1760 = !DILocalVariable(name: "hlen", arg: 3, scope: !1754, file: !1, line: 247, type: !215)
!1761 = !DILocalVariable(name: "keylen", arg: 4, scope: !1754, file: !1, line: 247, type: !215)
!1762 = !DILocalVariable(name: "dlen", arg: 5, scope: !1754, file: !1, line: 247, type: !215)
!1763 = !DILocalVariable(name: "resp", scope: !1764, file: !1, line: 251, type: !493)
!1764 = distinct !DILexicalBlock(scope: !1765, file: !1, line: 249, column: 45)
!1765 = distinct !DILexicalBlock(scope: !1754, file: !1, line: 248, column: 9)
!1766 = !DILocation(line: 0, scope: !1754)
!1767 = !DILocation(line: 248, column: 13, scope: !1765)
!1768 = !DILocation(line: 248, column: 21, scope: !1765)
!1769 = !DILocation(line: 248, column: 24, scope: !1765)
!1770 = !DILocation(line: 248, column: 27, scope: !1765)
!1771 = !DILocation(line: 248, column: 31, scope: !1765)
!1772 = !DILocation(line: 248, column: 58, scope: !1765)
!1773 = !DILocation(line: 249, column: 9, scope: !1765)
!1774 = !DILocation(line: 249, column: 16, scope: !1765)
!1775 = !DILocation(line: 248, column: 9, scope: !1754)
!1776 = !DILocation(line: 250, column: 9, scope: !1764)
!1777 = !DILocation(line: 0, scope: !1764)
!1778 = !DILocation(line: 252, column: 18, scope: !1779)
!1779 = distinct !DILexicalBlock(scope: !1764, file: !1, line: 252, column: 13)
!1780 = !DILocation(line: 252, column: 13, scope: !1764)
!1781 = !DILocation(line: 251, column: 28, scope: !1764)
!1782 = !DILocation(line: 253, column: 26, scope: !1783)
!1783 = distinct !DILexicalBlock(scope: !1779, file: !1, line: 252, column: 23)
!1784 = !DILocation(line: 253, column: 13, scope: !1783)
!1785 = !DILocation(line: 254, column: 9, scope: !1783)
!1786 = !DILocation(line: 255, column: 5, scope: !1765)
!1787 = !DILocation(line: 255, column: 5, scope: !1764)
!1788 = !DILocation(line: 257, column: 5, scope: !1754)
!1789 = !DILocation(line: 258, column: 1, scope: !1754)
!1790 = !DISubprogram(name: "item_remove", scope: !4, file: !4, line: 978, type: !1078, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1080)
!1791 = distinct !DISubprogram(name: "init_sasl_conn", scope: !1, file: !1, line: 673, type: !389, scopeLine: 673, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1792)
!1792 = !{!1793, !1794}
!1793 = !DILocalVariable(name: "c", arg: 1, scope: !1791, file: !1, line: 673, type: !391)
!1794 = !DILocalVariable(name: "result", scope: !1795, file: !1, line: 682, type: !215)
!1795 = distinct !DILexicalBlock(scope: !1796, file: !1, line: 681, column: 24)
!1796 = distinct !DILexicalBlock(scope: !1791, file: !1, line: 681, column: 9)
!1797 = !DILocation(line: 0, scope: !1791)
!1798 = !DILocation(line: 674, column: 5, scope: !1799)
!1799 = distinct !DILexicalBlock(scope: !1800, file: !1, line: 674, column: 5)
!1800 = distinct !DILexicalBlock(scope: !1791, file: !1, line: 674, column: 5)
!1801 = !DILocation(line: 674, column: 5, scope: !1800)
!1802 = !DILocation(line: 676, column: 19, scope: !1803)
!1803 = distinct !DILexicalBlock(scope: !1791, file: !1, line: 676, column: 9)
!1804 = !DILocation(line: 676, column: 9, scope: !1791)
!1805 = !DILocation(line: 677, column: 9, scope: !1803)
!1806 = !DILocation(line: 679, column: 5, scope: !1791)
!1807 = !DILocation(line: 679, column: 8, scope: !1791)
!1808 = !DILocation(line: 679, column: 22, scope: !1791)
!1809 = !{!794, !799, i64 13}
!1810 = !DILocation(line: 681, column: 13, scope: !1796)
!1811 = !{!794, !795, i64 0}
!1812 = !DILocation(line: 681, column: 10, scope: !1796)
!1813 = !DILocation(line: 681, column: 9, scope: !1791)
!1814 = !DILocation(line: 0, scope: !1795)
!1815 = !DILocation(line: 688, column: 26, scope: !1816)
!1816 = distinct !DILexicalBlock(scope: !1817, file: !1, line: 688, column: 17)
!1817 = distinct !DILexicalBlock(scope: !1818, file: !1, line: 687, column: 32)
!1818 = distinct !DILexicalBlock(scope: !1795, file: !1, line: 687, column: 13)
!1819 = !DILocation(line: 688, column: 17, scope: !1816)
!1820 = !DILocation(line: 688, column: 17, scope: !1817)
!1821 = !DILocation(line: 689, column: 25, scope: !1822)
!1822 = distinct !DILexicalBlock(scope: !1816, file: !1, line: 688, column: 35)
!1823 = !DILocation(line: 689, column: 17, scope: !1822)
!1824 = !DILocation(line: 690, column: 13, scope: !1822)
!1825 = !DILocation(line: 691, column: 26, scope: !1817)
!1826 = !DILocation(line: 693, column: 5, scope: !1796)
!1827 = !DILocation(line: 693, column: 5, scope: !1795)
!1828 = !DILocation(line: 694, column: 1, scope: !1791)
!1829 = distinct !DISubprogram(name: "authenticated", scope: !1, file: !1, line: 862, type: !1308, scopeLine: 862, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1830)
!1830 = !{!1831, !1832}
!1831 = !DILocalVariable(name: "c", arg: 1, scope: !1829, file: !1, line: 862, type: !391)
!1832 = !DILocalVariable(name: "rv", scope: !1829, file: !1, line: 864, type: !401)
!1833 = !DILocation(line: 0, scope: !1829)
!1834 = !DILocation(line: 863, column: 5, scope: !1835)
!1835 = distinct !DILexicalBlock(scope: !1836, file: !1, line: 863, column: 5)
!1836 = distinct !DILexicalBlock(scope: !1829, file: !1, line: 863, column: 5)
!1837 = !DILocation(line: 863, column: 5, scope: !1836)
!1838 = !DILocation(line: 866, column: 16, scope: !1829)
!1839 = !DILocation(line: 866, column: 13, scope: !1829)
!1840 = !DILocation(line: 866, column: 5, scope: !1829)
!1841 = !DILocation(line: 871, column: 12, scope: !1842)
!1842 = distinct !DILexicalBlock(scope: !1829, file: !1, line: 866, column: 21)
!1843 = !DILocation(line: 872, column: 9, scope: !1842)
!1844 = !DILocation(line: 874, column: 14, scope: !1842)
!1845 = !DILocation(line: 874, column: 17, scope: !1842)
!1846 = !DILocation(line: 875, column: 5, scope: !1842)
!1847 = !DILocation(line: 877, column: 18, scope: !1848)
!1848 = distinct !DILexicalBlock(scope: !1829, file: !1, line: 877, column: 9)
!1849 = !DILocation(line: 877, column: 26, scope: !1848)
!1850 = !DILocation(line: 877, column: 9, scope: !1829)
!1851 = !DILocation(line: 878, column: 17, scope: !1852)
!1852 = distinct !DILexicalBlock(scope: !1848, file: !1, line: 877, column: 31)
!1853 = !DILocation(line: 879, column: 25, scope: !1852)
!1854 = !DILocation(line: 878, column: 9, scope: !1852)
!1855 = !DILocation(line: 880, column: 5, scope: !1852)
!1856 = !DILocation(line: 882, column: 5, scope: !1829)
!1857 = distinct !DISubprogram(name: "handle_binary_protocol_error", scope: !1, file: !1, line: 237, type: !389, scopeLine: 237, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1858)
!1858 = !{!1859}
!1859 = !DILocalVariable(name: "c", arg: 1, scope: !1857, file: !1, line: 237, type: !391)
!1860 = !DILocation(line: 0, scope: !1857)
!1861 = !DILocation(line: 238, column: 5, scope: !1857)
!1862 = !DILocation(line: 239, column: 18, scope: !1863)
!1863 = distinct !DILexicalBlock(scope: !1857, file: !1, line: 239, column: 9)
!1864 = !DILocation(line: 239, column: 9, scope: !1863)
!1865 = !DILocation(line: 239, column: 9, scope: !1857)
!1866 = !DILocation(line: 240, column: 17, scope: !1867)
!1867 = distinct !DILexicalBlock(scope: !1863, file: !1, line: 239, column: 27)
!1868 = !DILocation(line: 241, column: 42, scope: !1867)
!1869 = !DILocation(line: 241, column: 17, scope: !1867)
!1870 = !DILocation(line: 241, column: 53, scope: !1867)
!1871 = !DILocation(line: 240, column: 9, scope: !1867)
!1872 = !DILocation(line: 242, column: 5, scope: !1867)
!1873 = !DILocation(line: 243, column: 8, scope: !1857)
!1874 = !DILocation(line: 243, column: 26, scope: !1857)
!1875 = !DILocation(line: 244, column: 1, scope: !1857)
!1876 = distinct !DISubprogram(name: "process_bin_flush", scope: !1, file: !1, line: 1250, type: !1311, scopeLine: 1250, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1877)
!1877 = !{!1878, !1879, !1880, !1883, !1897}
!1878 = !DILocalVariable(name: "c", arg: 1, scope: !1876, file: !1, line: 1250, type: !391)
!1879 = !DILocalVariable(name: "extbuf", arg: 2, scope: !1876, file: !1, line: 1250, type: !195)
!1880 = !DILocalVariable(name: "exptime", scope: !1876, file: !1, line: 1251, type: !1881)
!1881 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !1882, line: 7, baseType: !322)
!1882 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/time_t.h", directory: "", checksumkind: CSK_MD5, checksum: "49b4e16ef1215de5afdbb283400ab90c")
!1883 = !DILocalVariable(name: "req", scope: !1876, file: !1, line: 1252, type: !1884)
!1884 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1885, size: 64)
!1885 = !DIDerivedType(tag: DW_TAG_typedef, name: "protocol_binary_request_flush", file: !70, line: 259, baseType: !1886)
!1886 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !70, line: 251, size: 256, elements: !1887)
!1887 = !{!1888, !1896}
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "message", scope: !1886, file: !70, line: 257, baseType: !1889, size: 256)
!1889 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1886, file: !70, line: 252, size: 256, elements: !1890)
!1890 = !{!1891, !1892}
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1889, file: !70, line: 253, baseType: !733, size: 192)
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "body", scope: !1889, file: !70, line: 256, baseType: !1893, size: 32, offset: 192)
!1893 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1889, file: !70, line: 254, size: 32, elements: !1894)
!1894 = !{!1895}
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "expiration", scope: !1893, file: !70, line: 255, baseType: !184, size: 32)
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "bytes", scope: !1886, file: !70, line: 258, baseType: !360, size: 224)
!1897 = !DILocalVariable(name: "new_oldest", scope: !1876, file: !1, line: 1253, type: !212)
!1898 = !DILocation(line: 0, scope: !1876)
!1899 = !DILocation(line: 1255, column: 19, scope: !1900)
!1900 = distinct !DILexicalBlock(scope: !1876, file: !1, line: 1255, column: 9)
!1901 = !{!964, !799, i64 176}
!1902 = !DILocation(line: 1255, column: 9, scope: !1876)
!1903 = !DILocation(line: 1257, column: 23, scope: !1904)
!1904 = distinct !DILexicalBlock(scope: !1900, file: !1, line: 1255, column: 34)
!1905 = !DILocation(line: 1257, column: 7, scope: !1904)
!1906 = !DILocation(line: 1258, column: 7, scope: !1904)
!1907 = !DILocation(line: 1261, column: 34, scope: !1908)
!1908 = distinct !DILexicalBlock(scope: !1876, file: !1, line: 1261, column: 9)
!1909 = !DILocation(line: 1261, column: 41, scope: !1908)
!1910 = !DILocation(line: 1261, column: 9, scope: !1876)
!1911 = !DILocation(line: 1262, column: 19, scope: !1912)
!1912 = distinct !DILexicalBlock(scope: !1908, file: !1, line: 1261, column: 71)
!1913 = !DILocation(line: 1265, column: 17, scope: !1914)
!1914 = distinct !DILexicalBlock(scope: !1876, file: !1, line: 1265, column: 9)
!1915 = !DILocation(line: 1265, column: 9, scope: !1876)
!1916 = !DILocation(line: 1266, column: 22, scope: !1917)
!1917 = distinct !DILexicalBlock(scope: !1914, file: !1, line: 1265, column: 22)
!1918 = !DILocation(line: 1267, column: 5, scope: !1917)
!1919 = !DILocation(line: 1268, column: 22, scope: !1920)
!1920 = distinct !DILexicalBlock(scope: !1914, file: !1, line: 1267, column: 12)
!1921 = !DILocation(line: 0, scope: !1914)
!1922 = !DILocation(line: 1270, column: 18, scope: !1923)
!1923 = distinct !DILexicalBlock(scope: !1876, file: !1, line: 1270, column: 9)
!1924 = !{!964, !799, i64 112}
!1925 = !DILocation(line: 1270, column: 9, scope: !1876)
!1926 = !DILocation(line: 1271, column: 43, scope: !1927)
!1927 = distinct !DILexicalBlock(scope: !1923, file: !1, line: 1270, column: 27)
!1928 = !DILocation(line: 1271, column: 30, scope: !1927)
!1929 = !{!964, !798, i64 36}
!1930 = !DILocation(line: 1272, column: 37, scope: !1931)
!1931 = distinct !DILexicalBlock(scope: !1927, file: !1, line: 1272, column: 13)
!1932 = !DILocation(line: 1272, column: 34, scope: !1931)
!1933 = !DILocation(line: 1272, column: 13, scope: !1927)
!1934 = !DILocation(line: 1273, column: 35, scope: !1931)
!1935 = !DILocation(line: 1273, column: 33, scope: !1931)
!1936 = !{!964, !805, i64 40}
!1937 = !DILocation(line: 1273, column: 13, scope: !1931)
!1938 = !DILocation(line: 1274, column: 5, scope: !1927)
!1939 = !DILocation(line: 1275, column: 32, scope: !1940)
!1940 = distinct !DILexicalBlock(scope: !1923, file: !1, line: 1274, column: 12)
!1941 = !DILocation(line: 1275, column: 30, scope: !1940)
!1942 = !DILocation(line: 1278, column: 28, scope: !1876)
!1943 = !DILocation(line: 1278, column: 42, scope: !1876)
!1944 = !DILocation(line: 1278, column: 5, scope: !1876)
!1945 = !DILocation(line: 1279, column: 8, scope: !1876)
!1946 = !DILocation(line: 1279, column: 22, scope: !1876)
!1947 = !DILocation(line: 1279, column: 32, scope: !1876)
!1948 = !{!1949, !805, i64 296}
!1949 = !{!"", !805, i64 0, !795, i64 8, !800, i64 16, !798, i64 144, !1950, i64 152, !796, i64 6600, !795, i64 6744, !795, i64 6752, !795, i64 6760, !795, i64 6768, !795, i64 6776, !795, i64 6784, !795, i64 6792, !798, i64 6800}
!1950 = !{!"thread_stats", !796, i64 0, !805, i64 40, !805, i64 48, !805, i64 56, !805, i64 64, !805, i64 72, !805, i64 80, !805, i64 88, !805, i64 96, !805, i64 104, !805, i64 112, !805, i64 120, !805, i64 128, !805, i64 136, !805, i64 144, !805, i64 152, !805, i64 160, !805, i64 168, !805, i64 176, !805, i64 184, !805, i64 192, !805, i64 200, !805, i64 208, !805, i64 216, !805, i64 224, !805, i64 232, !805, i64 240, !805, i64 248, !805, i64 256, !805, i64 264, !805, i64 272, !796, i64 280, !796, i64 4376, !805, i64 6424, !805, i64 6432, !805, i64 6440}
!1951 = !DILocation(line: 1280, column: 44, scope: !1876)
!1952 = !DILocation(line: 1280, column: 5, scope: !1876)
!1953 = !DILocation(line: 1282, column: 5, scope: !1876)
!1954 = !DILocation(line: 1283, column: 1, scope: !1876)
!1955 = distinct !DISubprogram(name: "process_bin_update", scope: !1, file: !1, line: 1078, type: !1311, scopeLine: 1078, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1956)
!1956 = !{!1957, !1958, !1959, !1960, !1961, !1962, !1963, !1978, !1981, !1984}
!1957 = !DILocalVariable(name: "c", arg: 1, scope: !1955, file: !1, line: 1078, type: !391)
!1958 = !DILocalVariable(name: "extbuf", arg: 2, scope: !1955, file: !1, line: 1078, type: !195)
!1959 = !DILocalVariable(name: "key", scope: !1955, file: !1, line: 1079, type: !195)
!1960 = !DILocalVariable(name: "nkey", scope: !1955, file: !1, line: 1080, type: !215)
!1961 = !DILocalVariable(name: "vlen", scope: !1955, file: !1, line: 1081, type: !215)
!1962 = !DILocalVariable(name: "it", scope: !1955, file: !1, line: 1082, type: !237)
!1963 = !DILocalVariable(name: "req", scope: !1955, file: !1, line: 1083, type: !1964)
!1964 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1965, size: 64)
!1965 = !DIDerivedType(tag: DW_TAG_typedef, name: "protocol_binary_request_set", file: !70, line: 280, baseType: !1966)
!1966 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !70, line: 271, size: 256, elements: !1967)
!1967 = !{!1968, !1977}
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "message", scope: !1966, file: !70, line: 278, baseType: !1969, size: 256)
!1969 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1966, file: !70, line: 272, size: 256, elements: !1970)
!1970 = !{!1971, !1972}
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1969, file: !70, line: 273, baseType: !733, size: 192)
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "body", scope: !1969, file: !70, line: 277, baseType: !1973, size: 64, offset: 192)
!1973 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1969, file: !70, line: 274, size: 64, elements: !1974)
!1974 = !{!1975, !1976}
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1973, file: !70, line: 275, baseType: !184, size: 32)
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "expiration", scope: !1973, file: !70, line: 276, baseType: !184, size: 32, offset: 32)
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "bytes", scope: !1966, file: !70, line: 279, baseType: !377, size: 256)
!1978 = !DILocalVariable(name: "ii", scope: !1979, file: !1, line: 1097, type: !215)
!1979 = distinct !DILexicalBlock(scope: !1980, file: !1, line: 1096, column: 31)
!1980 = distinct !DILexicalBlock(scope: !1955, file: !1, line: 1096, column: 9)
!1981 = !DILocalVariable(name: "status", scope: !1982, file: !1, line: 1121, type: !90)
!1982 = distinct !DILexicalBlock(scope: !1983, file: !1, line: 1120, column: 18)
!1983 = distinct !DILexicalBlock(scope: !1955, file: !1, line: 1120, column: 9)
!1984 = !DILocalVariable(name: "myl", scope: !1985, file: !1, line: 1132, type: !239)
!1985 = distinct !DILexicalBlock(scope: !1982, file: !1, line: 1132, column: 9)
!1986 = !DILocation(line: 0, scope: !1955)
!1987 = !DILocation(line: 1085, column: 5, scope: !1988)
!1988 = distinct !DILexicalBlock(scope: !1989, file: !1, line: 1085, column: 5)
!1989 = distinct !DILexicalBlock(scope: !1955, file: !1, line: 1085, column: 5)
!1990 = !DILocation(line: 1085, column: 5, scope: !1989)
!1991 = !DILocation(line: 1087, column: 11, scope: !1955)
!1992 = !DILocation(line: 1088, column: 37, scope: !1955)
!1993 = !DILocation(line: 1088, column: 12, scope: !1955)
!1994 = !DILocation(line: 1091, column: 31, scope: !1955)
!1995 = !DILocation(line: 1091, column: 29, scope: !1955)
!1996 = !DILocation(line: 1092, column: 36, scope: !1955)
!1997 = !DILocation(line: 1092, column: 34, scope: !1955)
!1998 = !DILocation(line: 1094, column: 37, scope: !1955)
!1999 = !DILocation(line: 1094, column: 80, scope: !1955)
!2000 = !DILocation(line: 1094, column: 55, scope: !1955)
!2001 = !DILocation(line: 1094, column: 45, scope: !1955)
!2002 = !DILocation(line: 1096, column: 18, scope: !1980)
!2003 = !DILocation(line: 1096, column: 26, scope: !1980)
!2004 = !DILocation(line: 1096, column: 9, scope: !1955)
!2005 = !DILocation(line: 1098, column: 16, scope: !2006)
!2006 = distinct !DILexicalBlock(scope: !1979, file: !1, line: 1098, column: 13)
!2007 = !DILocation(line: 1098, column: 13, scope: !1979)
!2008 = !DILocation(line: 1099, column: 21, scope: !2009)
!2009 = distinct !DILexicalBlock(scope: !2006, file: !1, line: 1098, column: 48)
!2010 = !DILocation(line: 1100, column: 9, scope: !2009)
!2011 = !DILocation(line: 1101, column: 21, scope: !2012)
!2012 = distinct !DILexicalBlock(scope: !2013, file: !1, line: 1100, column: 55)
!2013 = distinct !DILexicalBlock(scope: !2006, file: !1, line: 1100, column: 20)
!2014 = !DILocation(line: 1102, column: 9, scope: !2012)
!2015 = !DILocation(line: 1103, column: 21, scope: !2016)
!2016 = distinct !DILexicalBlock(scope: !2013, file: !1, line: 1102, column: 16)
!2017 = !DILocation(line: 0, scope: !2006)
!2018 = !DILocation(line: 0, scope: !1979)
!2019 = !DILocation(line: 1105, column: 25, scope: !2020)
!2020 = distinct !DILexicalBlock(scope: !2021, file: !1, line: 1105, column: 9)
!2021 = distinct !DILexicalBlock(scope: !1979, file: !1, line: 1105, column: 9)
!2022 = !DILocation(line: 1105, column: 9, scope: !2021)
!2023 = !DILocation(line: 1106, column: 21, scope: !2024)
!2024 = distinct !DILexicalBlock(scope: !2020, file: !1, line: 1105, column: 39)
!2025 = !DILocation(line: 1106, column: 35, scope: !2024)
!2026 = !DILocation(line: 1106, column: 13, scope: !2024)
!2027 = !DILocation(line: 1105, column: 33, scope: !2020)
!2028 = distinct !{!2028, !2022, !2029, !1195}
!2029 = !DILocation(line: 1107, column: 9, scope: !2021)
!2030 = !DILocation(line: 1109, column: 17, scope: !1979)
!2031 = !DILocation(line: 1109, column: 9, scope: !1979)
!2032 = !DILocation(line: 1110, column: 17, scope: !1979)
!2033 = !DILocation(line: 1110, column: 9, scope: !1979)
!2034 = !DILocation(line: 1111, column: 5, scope: !1979)
!2035 = !DILocation(line: 1113, column: 18, scope: !2036)
!2036 = distinct !DILexicalBlock(scope: !1955, file: !1, line: 1113, column: 9)
!2037 = !{!964, !798, i64 104}
!2038 = !DILocation(line: 1113, column: 9, scope: !2036)
!2039 = !DILocation(line: 1113, column: 9, scope: !1955)
!2040 = !DILocation(line: 1114, column: 33, scope: !2041)
!2041 = distinct !DILexicalBlock(scope: !2036, file: !1, line: 1113, column: 34)
!2042 = !DILocation(line: 1114, column: 9, scope: !2041)
!2043 = !DILocation(line: 1115, column: 5, scope: !2041)
!2044 = !DILocation(line: 1117, column: 50, scope: !1955)
!2045 = !DILocation(line: 1118, column: 40, scope: !1955)
!2046 = !DILocation(line: 1118, column: 22, scope: !1955)
!2047 = !DILocation(line: 1118, column: 13, scope: !1955)
!2048 = !DILocation(line: 1118, column: 57, scope: !1955)
!2049 = !DILocation(line: 1117, column: 10, scope: !1955)
!2050 = !DILocation(line: 1120, column: 12, scope: !1983)
!2051 = !DILocation(line: 1120, column: 9, scope: !1955)
!2052 = !DILocation(line: 1122, column: 52, scope: !2053)
!2053 = distinct !DILexicalBlock(scope: !1982, file: !1, line: 1122, column: 13)
!2054 = !DILocation(line: 1122, column: 15, scope: !2053)
!2055 = !DILocation(line: 1122, column: 13, scope: !1982)
!2056 = !DILocation(line: 1123, column: 29, scope: !2057)
!2057 = distinct !DILexicalBlock(scope: !2053, file: !1, line: 1122, column: 70)
!2058 = !DILocation(line: 1123, column: 13, scope: !2057)
!2059 = !DILocation(line: 0, scope: !1982)
!2060 = !DILocation(line: 1125, column: 9, scope: !2057)
!2061 = !DILocation(line: 1126, column: 27, scope: !2062)
!2062 = distinct !DILexicalBlock(scope: !2053, file: !1, line: 1125, column: 16)
!2063 = !DILocation(line: 1126, column: 13, scope: !2062)
!2064 = !DILocation(line: 1128, column: 16, scope: !2062)
!2065 = !DILocation(line: 1128, column: 23, scope: !2062)
!2066 = !DILocation(line: 0, scope: !2053)
!2067 = !DILocation(line: 1132, column: 9, scope: !1985)
!2068 = !{!1949, !795, i64 6784}
!2069 = !DILocation(line: 0, scope: !1985)
!2070 = !DILocation(line: 1132, column: 9, scope: !2071)
!2071 = distinct !DILexicalBlock(scope: !1985, file: !1, line: 1132, column: 9)
!2072 = !DILocation(line: 1132, column: 9, scope: !2073)
!2073 = distinct !DILexicalBlock(scope: !1985, file: !1, line: 1132, column: 9)
!2074 = !{!2075, !803, i64 84}
!2075 = !{!"_logger", !795, i64 0, !795, i64 8, !796, i64 16, !805, i64 56, !805, i64 64, !805, i64 72, !803, i64 80, !803, i64 82, !803, i64 84, !795, i64 88, !795, i64 96}
!2076 = !DILocation(line: 1138, column: 16, scope: !2077)
!2077 = distinct !DILexicalBlock(scope: !1982, file: !1, line: 1138, column: 13)
!2078 = !DILocation(line: 1138, column: 20, scope: !2077)
!2079 = !DILocation(line: 1138, column: 13, scope: !1982)
!2080 = !DILocation(line: 1139, column: 18, scope: !2081)
!2081 = distinct !DILexicalBlock(scope: !2077, file: !1, line: 1138, column: 48)
!2082 = !DILocation(line: 1140, column: 17, scope: !2083)
!2083 = distinct !DILexicalBlock(scope: !2081, file: !1, line: 1140, column: 17)
!2084 = !DILocation(line: 1140, column: 17, scope: !2081)
!2085 = !DILocation(line: 1141, column: 17, scope: !2086)
!2086 = distinct !DILexicalBlock(scope: !2083, file: !1, line: 1140, column: 21)
!2087 = !DILocation(line: 1142, column: 17, scope: !2088)
!2088 = distinct !DILexicalBlock(scope: !2086, file: !1, line: 1142, column: 17)
!2089 = !{!1949, !795, i64 6776}
!2090 = !DILocation(line: 1143, column: 29, scope: !2086)
!2091 = !DILocation(line: 1143, column: 17, scope: !2086)
!2092 = !DILocation(line: 1144, column: 13, scope: !2086)
!2093 = !DILocation(line: 1145, column: 9, scope: !2081)
!2094 = !DILocation(line: 1148, column: 9, scope: !1982)
!2095 = !DILocation(line: 1152, column: 5, scope: !2096)
!2096 = distinct !DILexicalBlock(scope: !2097, file: !1, line: 1152, column: 5)
!2097 = distinct !DILexicalBlock(scope: !1955, file: !1, line: 1152, column: 5)
!2098 = !DILocation(line: 1152, column: 5, scope: !2097)
!2099 = !DILocation(line: 1152, column: 5, scope: !2100)
!2100 = distinct !DILexicalBlock(scope: !2096, file: !1, line: 1152, column: 5)
!2101 = !DILocation(line: 1154, column: 16, scope: !1955)
!2102 = !DILocation(line: 1154, column: 13, scope: !1955)
!2103 = !DILocation(line: 1154, column: 5, scope: !1955)
!2104 = !DILocation(line: 1156, column: 13, scope: !2105)
!2105 = distinct !DILexicalBlock(scope: !1955, file: !1, line: 1154, column: 21)
!2106 = !DILocation(line: 1157, column: 13, scope: !2105)
!2107 = !DILocation(line: 1159, column: 13, scope: !2105)
!2108 = !DILocation(line: 1160, column: 13, scope: !2105)
!2109 = !DILocation(line: 1162, column: 13, scope: !2105)
!2110 = !DILocation(line: 1163, column: 13, scope: !2105)
!2111 = !DILocation(line: 1165, column: 13, scope: !2112)
!2112 = distinct !DILexicalBlock(scope: !2113, file: !1, line: 1165, column: 13)
!2113 = distinct !DILexicalBlock(scope: !2105, file: !1, line: 1165, column: 13)
!2114 = !DILocation(line: 0, scope: !2105)
!2115 = !DILocation(line: 1168, column: 9, scope: !2116)
!2116 = distinct !DILexicalBlock(scope: !1955, file: !1, line: 1168, column: 9)
!2117 = !DILocation(line: 1168, column: 9, scope: !1955)
!2118 = !DILocation(line: 1169, column: 9, scope: !2119)
!2119 = distinct !DILexicalBlock(scope: !2116, file: !1, line: 1168, column: 32)
!2120 = !DILocation(line: 1169, column: 16, scope: !2119)
!2121 = !DILocation(line: 1170, column: 5, scope: !2119)
!2122 = !DILocation(line: 1172, column: 8, scope: !1955)
!2123 = !DILocation(line: 1172, column: 13, scope: !1955)
!2124 = !DILocation(line: 1180, column: 16, scope: !1955)
!2125 = !DILocation(line: 1180, column: 8, scope: !1955)
!2126 = !DILocation(line: 1180, column: 14, scope: !1955)
!2127 = !DILocation(line: 1182, column: 8, scope: !1955)
!2128 = !DILocation(line: 1182, column: 16, scope: !1955)
!2129 = !{!794, !798, i64 216}
!2130 = !DILocation(line: 1183, column: 5, scope: !1955)
!2131 = !DILocation(line: 1184, column: 8, scope: !1955)
!2132 = !DILocation(line: 1184, column: 17, scope: !1955)
!2133 = !DILocation(line: 1185, column: 1, scope: !1955)
!2134 = distinct !DISubprogram(name: "process_bin_get_or_touch", scope: !1, file: !1, line: 455, type: !1311, scopeLine: 455, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2135)
!2135 = !{!2136, !2137, !2138, !2139, !2140, !2141, !2142, !2143, !2144, !2145, !2146, !2162, !2163, !2166}
!2136 = !DILocalVariable(name: "c", arg: 1, scope: !2134, file: !1, line: 455, type: !391)
!2137 = !DILocalVariable(name: "extbuf", arg: 2, scope: !2134, file: !1, line: 455, type: !195)
!2138 = !DILocalVariable(name: "it", scope: !2134, file: !1, line: 456, type: !237)
!2139 = !DILocalVariable(name: "rsp", scope: !2134, file: !1, line: 458, type: !347)
!2140 = !DILocalVariable(name: "key", scope: !2134, file: !1, line: 459, type: !195)
!2141 = !DILocalVariable(name: "nkey", scope: !2134, file: !1, line: 460, type: !639)
!2142 = !DILocalVariable(name: "should_touch", scope: !2134, file: !1, line: 461, type: !215)
!2143 = !DILocalVariable(name: "should_return_key", scope: !2134, file: !1, line: 464, type: !215)
!2144 = !DILocalVariable(name: "should_return_value", scope: !2134, file: !1, line: 466, type: !215)
!2145 = !DILocalVariable(name: "failed", scope: !2134, file: !1, line: 467, type: !401)
!2146 = !DILocalVariable(name: "t", scope: !2147, file: !1, line: 476, type: !2149)
!2147 = distinct !DILexicalBlock(scope: !2148, file: !1, line: 475, column: 23)
!2148 = distinct !DILexicalBlock(scope: !2134, file: !1, line: 475, column: 9)
!2149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2150, size: 64)
!2150 = !DIDerivedType(tag: DW_TAG_typedef, name: "protocol_binary_request_touch", file: !70, line: 400, baseType: !2151)
!2151 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !70, line: 392, size: 256, elements: !2152)
!2152 = !{!2153, !2161}
!2153 = !DIDerivedType(tag: DW_TAG_member, name: "message", scope: !2151, file: !70, line: 398, baseType: !2154, size: 256)
!2154 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2151, file: !70, line: 393, size: 256, elements: !2155)
!2155 = !{!2156, !2157}
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !2154, file: !70, line: 394, baseType: !733, size: 192)
!2157 = !DIDerivedType(tag: DW_TAG_member, name: "body", scope: !2154, file: !70, line: 397, baseType: !2158, size: 32, offset: 192)
!2158 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2154, file: !70, line: 395, size: 32, elements: !2159)
!2159 = !{!2160}
!2160 = !DIDerivedType(tag: DW_TAG_member, name: "expiration", scope: !2158, file: !70, line: 396, baseType: !184, size: 32)
!2161 = !DIDerivedType(tag: DW_TAG_member, name: "bytes", scope: !2151, file: !70, line: 399, baseType: !360, size: 224)
!2162 = !DILocalVariable(name: "exptime", scope: !2147, file: !1, line: 477, type: !1881)
!2163 = !DILocalVariable(name: "keylen", scope: !2164, file: !1, line: 486, type: !179)
!2164 = distinct !DILexicalBlock(scope: !2165, file: !1, line: 484, column: 13)
!2165 = distinct !DILexicalBlock(scope: !2134, file: !1, line: 484, column: 9)
!2166 = !DILocalVariable(name: "bodylen", scope: !2164, file: !1, line: 487, type: !184)
!2167 = !DILocation(line: 0, scope: !2134)
!2168 = !DILocation(line: 458, column: 75, scope: !2134)
!2169 = !DILocation(line: 459, column: 17, scope: !2134)
!2170 = !DILocation(line: 460, column: 44, scope: !2134)
!2171 = !DILocation(line: 460, column: 19, scope: !2134)
!2172 = !DILocation(line: 461, column: 28, scope: !2134)
!2173 = !DILocation(line: 461, column: 32, scope: !2134)
!2174 = !DILocation(line: 461, column: 61, scope: !2134)
!2175 = !DILocation(line: 462, column: 25, scope: !2134)
!2176 = !DILocation(line: 462, column: 32, scope: !2134)
!2177 = !DILocation(line: 462, column: 59, scope: !2134)
!2178 = !DILocation(line: 463, column: 25, scope: !2134)
!2179 = !DILocation(line: 463, column: 32, scope: !2134)
!2180 = !DILocation(line: 464, column: 37, scope: !2134)
!2181 = !DILocation(line: 464, column: 65, scope: !2134)
!2182 = !DILocation(line: 465, column: 30, scope: !2134)
!2183 = !DILocation(line: 465, column: 37, scope: !2134)
!2184 = !DILocation(line: 469, column: 18, scope: !2185)
!2185 = distinct !DILexicalBlock(scope: !2134, file: !1, line: 469, column: 9)
!2186 = !DILocation(line: 469, column: 26, scope: !2185)
!2187 = !DILocation(line: 469, column: 9, scope: !2134)
!2188 = !DILocation(line: 470, column: 17, scope: !2189)
!2189 = distinct !DILexicalBlock(scope: !2185, file: !1, line: 469, column: 31)
!2190 = !DILocation(line: 470, column: 39, scope: !2189)
!2191 = !DILocation(line: 470, column: 44, scope: !2189)
!2192 = !DILocation(line: 470, column: 9, scope: !2189)
!2193 = !DILocation(line: 471, column: 34, scope: !2194)
!2194 = distinct !DILexicalBlock(scope: !2189, file: !1, line: 471, column: 13)
!2195 = !DILocation(line: 471, column: 13, scope: !2194)
!2196 = !DILocation(line: 471, column: 13, scope: !2189)
!2197 = !DILocation(line: 471, column: 44, scope: !2198)
!2198 = distinct !DILexicalBlock(scope: !2194, file: !1, line: 471, column: 43)
!2199 = !DILocation(line: 472, column: 21, scope: !2189)
!2200 = !DILocation(line: 472, column: 9, scope: !2189)
!2201 = !DILocation(line: 475, column: 9, scope: !2134)
!2202 = !DILocation(line: 0, scope: !2147)
!2203 = !DILocation(line: 477, column: 26, scope: !2147)
!2204 = !DILocation(line: 479, column: 36, scope: !2147)
!2205 = !DILocation(line: 479, column: 14, scope: !2147)
!2206 = !DILocation(line: 480, column: 5, scope: !2147)
!2207 = !DILocation(line: 481, column: 23, scope: !2208)
!2208 = distinct !DILexicalBlock(scope: !2148, file: !1, line: 480, column: 12)
!2209 = !DILocation(line: 481, column: 14, scope: !2208)
!2210 = !DILocation(line: 0, scope: !2148)
!2211 = !DILocation(line: 484, column: 9, scope: !2165)
!2212 = !DILocation(line: 484, column: 9, scope: !2134)
!2213 = !DILocation(line: 0, scope: !2164)
!2214 = !DILocation(line: 487, column: 61, scope: !2164)
!2215 = !DILocation(line: 487, column: 54, scope: !2164)
!2216 = !DILocation(line: 489, column: 32, scope: !2164)
!2217 = !DILocation(line: 489, column: 46, scope: !2164)
!2218 = !DILocation(line: 489, column: 9, scope: !2164)
!2219 = !DILocation(line: 490, column: 13, scope: !2164)
!2220 = !DILocation(line: 491, column: 16, scope: !2221)
!2221 = distinct !DILexicalBlock(scope: !2222, file: !1, line: 490, column: 27)
!2222 = distinct !DILexicalBlock(scope: !2164, file: !1, line: 490, column: 13)
!2223 = !DILocation(line: 491, column: 30, scope: !2221)
!2224 = !DILocation(line: 491, column: 40, scope: !2221)
!2225 = !{!1949, !805, i64 224}
!2226 = !DILocation(line: 492, column: 41, scope: !2221)
!2227 = !DILocation(line: 492, column: 57, scope: !2221)
!2228 = !DILocation(line: 492, column: 67, scope: !2221)
!2229 = !{!862, !805, i64 16}
!2230 = !DILocation(line: 497, column: 48, scope: !2164)
!2231 = !DILocation(line: 497, column: 9, scope: !2164)
!2232 = !DILocation(line: 499, column: 13, scope: !2164)
!2233 = !DILocation(line: 494, column: 13, scope: !2234)
!2234 = distinct !DILexicalBlock(scope: !2222, file: !1, line: 493, column: 16)
!2235 = !DILocation(line: 494, column: 16, scope: !2234)
!2236 = !DILocation(line: 494, column: 30, scope: !2234)
!2237 = !DILocation(line: 494, column: 38, scope: !2234)
!2238 = !{!1949, !805, i64 192}
!2239 = !DILocation(line: 495, column: 43, scope: !2234)
!2240 = !DILocation(line: 495, column: 13, scope: !2234)
!2241 = !DILocation(line: 495, column: 55, scope: !2234)
!2242 = !DILocation(line: 507, column: 16, scope: !2243)
!2243 = distinct !DILexicalBlock(scope: !2164, file: !1, line: 507, column: 13)
!2244 = !DILocation(line: 507, column: 20, scope: !2243)
!2245 = !DILocation(line: 507, column: 13, scope: !2164)
!2246 = !DILocation(line: 508, column: 28, scope: !2247)
!2247 = distinct !DILexicalBlock(scope: !2243, file: !1, line: 507, column: 50)
!2248 = !DILocation(line: 508, column: 35, scope: !2247)
!2249 = !DILocation(line: 508, column: 21, scope: !2247)
!2250 = !DILocation(line: 509, column: 9, scope: !2247)
!2251 = !DILocation(line: 509, column: 20, scope: !2243)
!2252 = !DILocation(line: 510, column: 24, scope: !2253)
!2253 = distinct !DILexicalBlock(scope: !2254, file: !1, line: 509, column: 39)
!2254 = distinct !DILexicalBlock(scope: !2243, file: !1, line: 509, column: 20)
!2255 = !DILocation(line: 510, column: 21, scope: !2253)
!2256 = !DILocation(line: 512, column: 9, scope: !2253)
!2257 = !DILocation(line: 0, scope: !2243)
!2258 = !DILocation(line: 514, column: 9, scope: !2164)
!2259 = !DILocation(line: 515, column: 51, scope: !2164)
!2260 = !DILocation(line: 515, column: 44, scope: !2164)
!2261 = !DILocation(line: 515, column: 38, scope: !2164)
!2262 = !DILocation(line: 515, column: 42, scope: !2164)
!2263 = !DILocation(line: 518, column: 9, scope: !2264)
!2264 = distinct !DILexicalBlock(scope: !2265, file: !1, line: 518, column: 9)
!2265 = distinct !DILexicalBlock(scope: !2164, file: !1, line: 518, column: 9)
!2266 = !DILocation(line: 518, column: 9, scope: !2265)
!2267 = !DILocation(line: 518, column: 9, scope: !2268)
!2268 = distinct !DILexicalBlock(scope: !2264, file: !1, line: 518, column: 9)
!2269 = !DILocation(line: 518, column: 9, scope: !2270)
!2270 = distinct !DILexicalBlock(scope: !2264, file: !1, line: 518, column: 9)
!2271 = !DILocation(line: 519, column: 35, scope: !2164)
!2272 = !DILocation(line: 519, column: 33, scope: !2164)
!2273 = !DILocation(line: 520, column: 25, scope: !2164)
!2274 = !DILocation(line: 520, column: 9, scope: !2164)
!2275 = !DILocation(line: 522, column: 13, scope: !2164)
!2276 = !DILocation(line: 523, column: 26, scope: !2277)
!2277 = distinct !DILexicalBlock(scope: !2278, file: !1, line: 522, column: 32)
!2278 = distinct !DILexicalBlock(scope: !2164, file: !1, line: 522, column: 13)
!2279 = !DILocation(line: 523, column: 29, scope: !2277)
!2280 = !DILocation(line: 523, column: 35, scope: !2277)
!2281 = !DILocation(line: 523, column: 49, scope: !2277)
!2282 = !DILocation(line: 523, column: 13, scope: !2277)
!2283 = !DILocation(line: 524, column: 9, scope: !2277)
!2284 = !DILocation(line: 526, column: 13, scope: !2164)
!2285 = !DILocation(line: 529, column: 21, scope: !2286)
!2286 = distinct !DILexicalBlock(scope: !2287, file: !1, line: 529, column: 17)
!2287 = distinct !DILexicalBlock(scope: !2288, file: !1, line: 526, column: 34)
!2288 = distinct !DILexicalBlock(scope: !2164, file: !1, line: 526, column: 13)
!2289 = !DILocation(line: 529, column: 17, scope: !2286)
!2290 = !DILocation(line: 529, column: 30, scope: !2286)
!2291 = !DILocation(line: 529, column: 17, scope: !2287)
!2292 = !DILocation(line: 530, column: 48, scope: !2293)
!2293 = distinct !DILexicalBlock(scope: !2294, file: !1, line: 530, column: 21)
!2294 = distinct !DILexicalBlock(scope: !2286, file: !1, line: 529, column: 42)
!2295 = !DILocation(line: 530, column: 21, scope: !2293)
!2296 = !DILocation(line: 530, column: 54, scope: !2293)
!2297 = !DILocation(line: 530, column: 21, scope: !2294)
!2298 = !DILocation(line: 537, column: 13, scope: !2294)
!2299 = !DILocation(line: 552, column: 13, scope: !2164)
!2300 = !DILocation(line: 537, column: 38, scope: !2301)
!2301 = distinct !DILexicalBlock(scope: !2286, file: !1, line: 537, column: 24)
!2302 = !DILocation(line: 537, column: 54, scope: !2301)
!2303 = !DILocation(line: 537, column: 24, scope: !2286)
!2304 = !DILocation(line: 538, column: 30, scope: !2305)
!2305 = distinct !DILexicalBlock(scope: !2301, file: !1, line: 537, column: 60)
!2306 = !DILocation(line: 538, column: 33, scope: !2305)
!2307 = !DILocation(line: 538, column: 39, scope: !2305)
!2308 = !DILocation(line: 538, column: 58, scope: !2305)
!2309 = !DILocation(line: 538, column: 65, scope: !2305)
!2310 = !DILocation(line: 538, column: 17, scope: !2305)
!2311 = !DILocation(line: 539, column: 13, scope: !2305)
!2312 = !DILocation(line: 541, column: 38, scope: !2313)
!2313 = distinct !DILexicalBlock(scope: !2301, file: !1, line: 539, column: 20)
!2314 = !DILocation(line: 541, column: 41, scope: !2313)
!2315 = !DILocation(line: 541, column: 47, scope: !2313)
!2316 = !DILocation(line: 541, column: 55, scope: !2313)
!2317 = !DILocation(line: 541, column: 62, scope: !2313)
!2318 = !DILocation(line: 541, column: 17, scope: !2313)
!2319 = !DILocation(line: 553, column: 13, scope: !2320)
!2320 = distinct !DILexicalBlock(scope: !2321, file: !1, line: 552, column: 22)
!2321 = distinct !DILexicalBlock(scope: !2164, file: !1, line: 552, column: 13)
!2322 = !DILocation(line: 556, column: 22, scope: !2323)
!2323 = distinct !DILexicalBlock(scope: !2320, file: !1, line: 556, column: 17)
!2324 = !DILocation(line: 556, column: 31, scope: !2323)
!2325 = !DILocation(line: 556, column: 43, scope: !2323)
!2326 = !DILocation(line: 556, column: 48, scope: !2323)
!2327 = !DILocation(line: 556, column: 51, scope: !2323)
!2328 = !DILocation(line: 556, column: 17, scope: !2320)
!2329 = !DILocation(line: 558, column: 17, scope: !2330)
!2330 = distinct !DILexicalBlock(scope: !2323, file: !1, line: 556, column: 72)
!2331 = !DILocation(line: 558, column: 20, scope: !2330)
!2332 = !DILocation(line: 558, column: 26, scope: !2330)
!2333 = !DILocation(line: 558, column: 31, scope: !2330)
!2334 = !{!1735, !795, i64 40}
!2335 = !DILocation(line: 559, column: 13, scope: !2330)
!2336 = !DILocation(line: 560, column: 33, scope: !2337)
!2337 = distinct !DILexicalBlock(scope: !2323, file: !1, line: 559, column: 20)
!2338 = !DILocation(line: 560, column: 20, scope: !2337)
!2339 = !DILocation(line: 560, column: 26, scope: !2337)
!2340 = !DILocation(line: 560, column: 31, scope: !2337)
!2341 = !DILocation(line: 569, column: 16, scope: !2342)
!2342 = distinct !DILexicalBlock(scope: !2165, file: !1, line: 568, column: 12)
!2343 = !DILocation(line: 573, column: 32, scope: !2344)
!2344 = distinct !DILexicalBlock(scope: !2345, file: !1, line: 572, column: 17)
!2345 = distinct !DILexicalBlock(scope: !2134, file: !1, line: 572, column: 9)
!2346 = !DILocation(line: 573, column: 46, scope: !2344)
!2347 = !DILocation(line: 573, column: 9, scope: !2344)
!2348 = !DILocation(line: 574, column: 13, scope: !2344)
!2349 = !DILocation(line: 531, column: 41, scope: !2350)
!2350 = distinct !DILexicalBlock(scope: !2293, file: !1, line: 530, column: 60)
!2351 = !DILocation(line: 531, column: 44, scope: !2350)
!2352 = !DILocation(line: 531, column: 58, scope: !2350)
!2353 = !DILocation(line: 531, column: 21, scope: !2350)
!2354 = !DILocation(line: 532, column: 24, scope: !2350)
!2355 = !DILocation(line: 532, column: 38, scope: !2350)
!2356 = !DILocation(line: 532, column: 54, scope: !2350)
!2357 = !{!1949, !805, i64 400}
!2358 = !DILocation(line: 533, column: 60, scope: !2350)
!2359 = !DILocation(line: 533, column: 21, scope: !2350)
!2360 = !DILocation(line: 566, column: 25, scope: !2361)
!2361 = distinct !DILexicalBlock(scope: !2321, file: !1, line: 565, column: 16)
!2362 = !DILocation(line: 566, column: 13, scope: !2361)
!2363 = !DILocation(line: 575, column: 16, scope: !2364)
!2364 = distinct !DILexicalBlock(scope: !2365, file: !1, line: 574, column: 27)
!2365 = distinct !DILexicalBlock(scope: !2344, file: !1, line: 574, column: 13)
!2366 = !DILocation(line: 575, column: 30, scope: !2364)
!2367 = !DILocation(line: 575, column: 40, scope: !2364)
!2368 = !DILocation(line: 581, column: 48, scope: !2344)
!2369 = !DILocation(line: 581, column: 9, scope: !2344)
!2370 = !DILocation(line: 583, column: 13, scope: !2344)
!2371 = !DILocation(line: 578, column: 13, scope: !2372)
!2372 = distinct !DILexicalBlock(scope: !2365, file: !1, line: 577, column: 16)
!2373 = !DILocation(line: 578, column: 16, scope: !2372)
!2374 = !DILocation(line: 578, column: 30, scope: !2372)
!2375 = !DILocation(line: 578, column: 38, scope: !2372)
!2376 = !DILocation(line: 589, column: 16, scope: !2377)
!2377 = distinct !DILexicalBlock(scope: !2344, file: !1, line: 589, column: 13)
!2378 = !DILocation(line: 589, column: 13, scope: !2344)
!2379 = !DILocation(line: 590, column: 28, scope: !2380)
!2380 = distinct !DILexicalBlock(scope: !2377, file: !1, line: 589, column: 25)
!2381 = !DILocation(line: 590, column: 13, scope: !2380)
!2382 = !DILocation(line: 591, column: 9, scope: !2380)
!2383 = !DILocation(line: 592, column: 17, scope: !2384)
!2384 = distinct !DILexicalBlock(scope: !2377, file: !1, line: 591, column: 16)
!2385 = !DILocation(line: 593, column: 41, scope: !2386)
!2386 = distinct !DILexicalBlock(scope: !2387, file: !1, line: 592, column: 36)
!2387 = distinct !DILexicalBlock(scope: !2384, file: !1, line: 592, column: 17)
!2388 = !DILocation(line: 593, column: 17, scope: !2386)
!2389 = !DILocation(line: 594, column: 13, scope: !2386)
!2390 = !DILocation(line: 595, column: 41, scope: !2391)
!2391 = distinct !DILexicalBlock(scope: !2387, file: !1, line: 594, column: 20)
!2392 = !DILocation(line: 595, column: 17, scope: !2391)
!2393 = !DILocation(line: 600, column: 18, scope: !2394)
!2394 = distinct !DILexicalBlock(scope: !2134, file: !1, line: 600, column: 9)
!2395 = !DILocation(line: 600, column: 9, scope: !2394)
!2396 = !DILocation(line: 600, column: 9, scope: !2134)
!2397 = !DILocation(line: 601, column: 33, scope: !2398)
!2398 = distinct !DILexicalBlock(scope: !2394, file: !1, line: 600, column: 34)
!2399 = !DILocation(line: 601, column: 9, scope: !2398)
!2400 = !DILocation(line: 602, column: 5, scope: !2398)
!2401 = !DILocation(line: 603, column: 1, scope: !2134)
!2402 = distinct !DISubprogram(name: "process_bin_delete", scope: !1, file: !1, line: 1285, type: !389, scopeLine: 1285, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2403)
!2403 = !{!2404, !2405, !2406, !2407, !2408, !2409, !2412}
!2404 = !DILocalVariable(name: "c", arg: 1, scope: !2402, file: !1, line: 1285, type: !391)
!2405 = !DILocalVariable(name: "it", scope: !2402, file: !1, line: 1286, type: !237)
!2406 = !DILocalVariable(name: "hv", scope: !2402, file: !1, line: 1287, type: !184)
!2407 = !DILocalVariable(name: "key", scope: !2402, file: !1, line: 1290, type: !195)
!2408 = !DILocalVariable(name: "nkey", scope: !2402, file: !1, line: 1291, type: !639)
!2409 = !DILocalVariable(name: "ii", scope: !2410, file: !1, line: 1294, type: !215)
!2410 = distinct !DILexicalBlock(scope: !2411, file: !1, line: 1293, column: 31)
!2411 = distinct !DILexicalBlock(scope: !2402, file: !1, line: 1293, column: 9)
!2412 = !DILocalVariable(name: "cas", scope: !2413, file: !1, line: 1308, type: !188)
!2413 = distinct !DILexicalBlock(scope: !2414, file: !1, line: 1307, column: 13)
!2414 = distinct !DILexicalBlock(scope: !2402, file: !1, line: 1307, column: 9)
!2415 = !DILocation(line: 0, scope: !2402)
!2416 = !DILocation(line: 1287, column: 5, scope: !2402)
!2417 = !DILocation(line: 1289, column: 5, scope: !2418)
!2418 = distinct !DILexicalBlock(scope: !2419, file: !1, line: 1289, column: 5)
!2419 = distinct !DILexicalBlock(scope: !2402, file: !1, line: 1289, column: 5)
!2420 = !DILocation(line: 1289, column: 5, scope: !2419)
!2421 = !DILocation(line: 1290, column: 17, scope: !2402)
!2422 = !DILocation(line: 1291, column: 44, scope: !2402)
!2423 = !DILocation(line: 1291, column: 19, scope: !2402)
!2424 = !DILocation(line: 1293, column: 18, scope: !2411)
!2425 = !DILocation(line: 1293, column: 26, scope: !2411)
!2426 = !DILocation(line: 1293, column: 9, scope: !2402)
!2427 = !DILocation(line: 1295, column: 17, scope: !2410)
!2428 = !DILocation(line: 1295, column: 9, scope: !2410)
!2429 = !DILocation(line: 0, scope: !2410)
!2430 = !DILocation(line: 1296, column: 25, scope: !2431)
!2431 = distinct !DILexicalBlock(scope: !2432, file: !1, line: 1296, column: 9)
!2432 = distinct !DILexicalBlock(scope: !2410, file: !1, line: 1296, column: 9)
!2433 = !DILocation(line: 1296, column: 9, scope: !2432)
!2434 = !DILocation(line: 1297, column: 21, scope: !2435)
!2435 = distinct !DILexicalBlock(scope: !2431, file: !1, line: 1296, column: 39)
!2436 = !DILocation(line: 1297, column: 35, scope: !2435)
!2437 = !DILocation(line: 1297, column: 13, scope: !2435)
!2438 = !DILocation(line: 1296, column: 33, scope: !2431)
!2439 = distinct !{!2439, !2433, !2440, !1195}
!2440 = !DILocation(line: 1298, column: 9, scope: !2432)
!2441 = !DILocation(line: 1299, column: 17, scope: !2410)
!2442 = !DILocation(line: 1299, column: 9, scope: !2410)
!2443 = !DILocation(line: 1300, column: 5, scope: !2410)
!2444 = !DILocation(line: 1302, column: 18, scope: !2445)
!2445 = distinct !DILexicalBlock(scope: !2402, file: !1, line: 1302, column: 9)
!2446 = !DILocation(line: 1302, column: 9, scope: !2445)
!2447 = !DILocation(line: 1302, column: 9, scope: !2402)
!2448 = !DILocation(line: 1303, column: 36, scope: !2449)
!2449 = distinct !DILexicalBlock(scope: !2445, file: !1, line: 1302, column: 34)
!2450 = !DILocation(line: 1303, column: 9, scope: !2449)
!2451 = !DILocation(line: 1304, column: 5, scope: !2449)
!2452 = !DILocation(line: 1306, column: 10, scope: !2402)
!2453 = !DILocation(line: 1307, column: 9, scope: !2414)
!2454 = !DILocation(line: 1307, column: 9, scope: !2402)
!2455 = !DILocation(line: 1308, column: 49, scope: !2413)
!2456 = !DILocation(line: 0, scope: !2413)
!2457 = !DILocation(line: 1309, column: 17, scope: !2458)
!2458 = distinct !DILexicalBlock(scope: !2413, file: !1, line: 1309, column: 13)
!2459 = !DILocation(line: 1309, column: 22, scope: !2458)
!2460 = !DILocation(line: 1309, column: 32, scope: !2458)
!2461 = !DILocation(line: 1309, column: 13, scope: !2413)
!2462 = !DILocation(line: 1309, column: 29, scope: !2458)
!2463 = !DILocation(line: 1311, column: 36, scope: !2464)
!2464 = distinct !DILexicalBlock(scope: !2458, file: !1, line: 1309, column: 50)
!2465 = !DILocation(line: 1311, column: 50, scope: !2464)
!2466 = !DILocation(line: 1311, column: 13, scope: !2464)
!2467 = !DILocation(line: 1312, column: 16, scope: !2464)
!2468 = !DILocation(line: 1312, column: 41, scope: !2464)
!2469 = !DILocation(line: 1312, column: 57, scope: !2464)
!2470 = !DILocation(line: 1312, column: 68, scope: !2464)
!2471 = !{!862, !805, i64 24}
!2472 = !DILocation(line: 1313, column: 52, scope: !2464)
!2473 = !DILocation(line: 1313, column: 13, scope: !2464)
!2474 = !DILocation(line: 1314, column: 32, scope: !2464)
!2475 = !DILocation(line: 1314, column: 13, scope: !2464)
!2476 = !DILocation(line: 1315, column: 13, scope: !2477)
!2477 = distinct !DILexicalBlock(scope: !2464, file: !1, line: 1315, column: 13)
!2478 = !DILocation(line: 1316, column: 32, scope: !2464)
!2479 = !DILocation(line: 1316, column: 13, scope: !2464)
!2480 = !DILocation(line: 1317, column: 9, scope: !2464)
!2481 = !DILocation(line: 1318, column: 29, scope: !2482)
!2482 = distinct !DILexicalBlock(scope: !2458, file: !1, line: 1317, column: 16)
!2483 = !DILocation(line: 1318, column: 13, scope: !2482)
!2484 = !DILocation(line: 1320, column: 9, scope: !2413)
!2485 = !DILocation(line: 1321, column: 5, scope: !2413)
!2486 = !DILocation(line: 1322, column: 25, scope: !2487)
!2487 = distinct !DILexicalBlock(scope: !2414, file: !1, line: 1321, column: 12)
!2488 = !DILocation(line: 1322, column: 9, scope: !2487)
!2489 = !DILocation(line: 1323, column: 32, scope: !2487)
!2490 = !DILocation(line: 1323, column: 46, scope: !2487)
!2491 = !DILocation(line: 1323, column: 9, scope: !2487)
!2492 = !DILocation(line: 1324, column: 12, scope: !2487)
!2493 = !DILocation(line: 1324, column: 26, scope: !2487)
!2494 = !DILocation(line: 1324, column: 39, scope: !2487)
!2495 = !{!1949, !805, i64 240}
!2496 = !DILocation(line: 1325, column: 48, scope: !2487)
!2497 = !DILocation(line: 1325, column: 9, scope: !2487)
!2498 = !DILocation(line: 1327, column: 17, scope: !2402)
!2499 = !DILocation(line: 1327, column: 5, scope: !2402)
!2500 = !DILocation(line: 1328, column: 1, scope: !2402)
!2501 = distinct !DISubprogram(name: "complete_incr_bin", scope: !1, file: !1, line: 260, type: !1311, scopeLine: 260, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2502)
!2502 = !{!2503, !2504, !2505, !2506, !2507, !2508, !2510, !2511, !2512, !2531, !2534}
!2503 = !DILocalVariable(name: "c", arg: 1, scope: !2501, file: !1, line: 260, type: !391)
!2504 = !DILocalVariable(name: "extbuf", arg: 2, scope: !2501, file: !1, line: 260, type: !195)
!2505 = !DILocalVariable(name: "it", scope: !2501, file: !1, line: 261, type: !237)
!2506 = !DILocalVariable(name: "key", scope: !2501, file: !1, line: 262, type: !195)
!2507 = !DILocalVariable(name: "nkey", scope: !2501, file: !1, line: 263, type: !639)
!2508 = !DILocalVariable(name: "tmpbuf", scope: !2501, file: !1, line: 265, type: !2509)
!2509 = !DICompositeType(tag: DW_TAG_array_type, baseType: !196, size: 192, elements: !193)
!2510 = !DILocalVariable(name: "cas", scope: !2501, file: !1, line: 266, type: !188)
!2511 = !DILocalVariable(name: "rsp", scope: !2501, file: !1, line: 269, type: !364)
!2512 = !DILocalVariable(name: "req", scope: !2501, file: !1, line: 270, type: !2513)
!2513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2514, size: 64)
!2514 = !DIDerivedType(tag: DW_TAG_typedef, name: "protocol_binary_request_incr", file: !70, line: 319, baseType: !2515)
!2515 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !70, line: 309, size: 384, elements: !2516)
!2516 = !{!2517, !2527}
!2517 = !DIDerivedType(tag: DW_TAG_member, name: "message", scope: !2515, file: !70, line: 317, baseType: !2518, size: 384)
!2518 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2515, file: !70, line: 310, size: 384, elements: !2519)
!2519 = !{!2520, !2521}
!2520 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !2518, file: !70, line: 311, baseType: !733, size: 192)
!2521 = !DIDerivedType(tag: DW_TAG_member, name: "body", scope: !2518, file: !70, line: 316, baseType: !2522, size: 192, offset: 192)
!2522 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2518, file: !70, line: 312, size: 192, elements: !2523)
!2523 = !{!2524, !2525, !2526}
!2524 = !DIDerivedType(tag: DW_TAG_member, name: "delta", scope: !2522, file: !70, line: 313, baseType: !188, size: 64)
!2525 = !DIDerivedType(tag: DW_TAG_member, name: "initial", scope: !2522, file: !70, line: 314, baseType: !188, size: 64, offset: 64)
!2526 = !DIDerivedType(tag: DW_TAG_member, name: "expiration", scope: !2522, file: !70, line: 315, baseType: !184, size: 32, offset: 128)
!2527 = !DIDerivedType(tag: DW_TAG_member, name: "bytes", scope: !2515, file: !70, line: 318, baseType: !2528, size: 352)
!2528 = !DICompositeType(tag: DW_TAG_array_type, baseType: !173, size: 352, elements: !2529)
!2529 = !{!2530}
!2530 = !DISubrange(count: 44)
!2531 = !DILocalVariable(name: "i", scope: !2532, file: !1, line: 282, type: !215)
!2532 = distinct !DILexicalBlock(scope: !2533, file: !1, line: 281, column: 31)
!2533 = distinct !DILexicalBlock(scope: !2501, file: !1, line: 281, column: 9)
!2534 = !DILocalVariable(name: "res", scope: !2535, file: !1, line: 321, type: !215)
!2535 = distinct !DILexicalBlock(scope: !2536, file: !1, line: 315, column: 57)
!2536 = distinct !DILexicalBlock(scope: !2537, file: !1, line: 315, column: 13)
!2537 = distinct !DILexicalBlock(scope: !2501, file: !1, line: 299, column: 29)
!2538 = !DILocation(line: 0, scope: !2501)
!2539 = !DILocation(line: 265, column: 5, scope: !2501)
!2540 = !DILocation(line: 265, column: 10, scope: !2501)
!2541 = !DILocation(line: 266, column: 5, scope: !2501)
!2542 = !DILocation(line: 266, column: 14, scope: !2501)
!2543 = !DILocation(line: 268, column: 5, scope: !2544)
!2544 = distinct !DILexicalBlock(scope: !2545, file: !1, line: 268, column: 5)
!2545 = distinct !DILexicalBlock(scope: !2501, file: !1, line: 268, column: 5)
!2546 = !DILocation(line: 268, column: 5, scope: !2545)
!2547 = !DILocation(line: 269, column: 77, scope: !2501)
!2548 = !DILocation(line: 275, column: 51, scope: !2501)
!2549 = !DILocation(line: 275, column: 56, scope: !2501)
!2550 = !DILocation(line: 275, column: 31, scope: !2501)
!2551 = !DILocation(line: 275, column: 29, scope: !2501)
!2552 = !DILocation(line: 276, column: 58, scope: !2501)
!2553 = !DILocation(line: 276, column: 33, scope: !2501)
!2554 = !DILocation(line: 276, column: 31, scope: !2501)
!2555 = !DILocation(line: 277, column: 36, scope: !2501)
!2556 = !DILocation(line: 277, column: 34, scope: !2501)
!2557 = !DILocation(line: 278, column: 11, scope: !2501)
!2558 = !DILocation(line: 279, column: 37, scope: !2501)
!2559 = !DILocation(line: 279, column: 12, scope: !2501)
!2560 = !DILocation(line: 281, column: 18, scope: !2533)
!2561 = !DILocation(line: 281, column: 26, scope: !2533)
!2562 = !DILocation(line: 281, column: 9, scope: !2501)
!2563 = !DILocation(line: 283, column: 17, scope: !2532)
!2564 = !DILocation(line: 283, column: 9, scope: !2532)
!2565 = !DILocation(line: 0, scope: !2532)
!2566 = !DILocation(line: 285, column: 23, scope: !2567)
!2567 = distinct !DILexicalBlock(scope: !2568, file: !1, line: 285, column: 9)
!2568 = distinct !DILexicalBlock(scope: !2532, file: !1, line: 285, column: 9)
!2569 = !DILocation(line: 285, column: 9, scope: !2568)
!2570 = !DILocation(line: 286, column: 21, scope: !2571)
!2571 = distinct !DILexicalBlock(scope: !2567, file: !1, line: 285, column: 36)
!2572 = !DILocation(line: 286, column: 35, scope: !2571)
!2573 = !DILocation(line: 286, column: 13, scope: !2571)
!2574 = !DILocation(line: 285, column: 32, scope: !2567)
!2575 = distinct !{!2575, !2569, !2576, !1195}
!2576 = !DILocation(line: 287, column: 9, scope: !2568)
!2577 = !DILocation(line: 288, column: 17, scope: !2532)
!2578 = !DILocation(line: 289, column: 46, scope: !2532)
!2579 = !DILocation(line: 290, column: 46, scope: !2532)
!2580 = !DILocation(line: 291, column: 35, scope: !2532)
!2581 = !DILocation(line: 288, column: 9, scope: !2532)
!2582 = !DILocation(line: 292, column: 5, scope: !2532)
!2583 = !DILocation(line: 294, column: 34, scope: !2584)
!2584 = distinct !DILexicalBlock(scope: !2501, file: !1, line: 294, column: 9)
!2585 = !DILocation(line: 294, column: 38, scope: !2584)
!2586 = !DILocation(line: 294, column: 9, scope: !2501)
!2587 = !DILocation(line: 295, column: 15, scope: !2588)
!2588 = distinct !DILexicalBlock(scope: !2584, file: !1, line: 294, column: 44)
!2589 = !DILocation(line: 295, column: 13, scope: !2588)
!2590 = !DILocation(line: 296, column: 5, scope: !2588)
!2591 = !DILocation(line: 297, column: 39, scope: !2501)
!2592 = !DILocation(line: 297, column: 43, scope: !2501)
!2593 = !DILocation(line: 298, column: 40, scope: !2501)
!2594 = !DILocation(line: 297, column: 12, scope: !2501)
!2595 = !DILocation(line: 297, column: 5, scope: !2501)
!2596 = !DILocation(line: 301, column: 42, scope: !2537)
!2597 = !DILocation(line: 301, column: 35, scope: !2537)
!2598 = !DILocation(line: 301, column: 22, scope: !2537)
!2599 = !DILocation(line: 301, column: 27, scope: !2537)
!2600 = !DILocation(line: 301, column: 33, scope: !2537)
!2601 = !DILocation(line: 302, column: 13, scope: !2602)
!2602 = distinct !DILexicalBlock(scope: !2537, file: !1, line: 302, column: 13)
!2603 = !DILocation(line: 302, column: 13, scope: !2537)
!2604 = !DILocation(line: 303, column: 22, scope: !2605)
!2605 = distinct !DILexicalBlock(scope: !2602, file: !1, line: 302, column: 18)
!2606 = !DILocation(line: 303, column: 16, scope: !2605)
!2607 = !DILocation(line: 303, column: 20, scope: !2605)
!2608 = !DILocation(line: 304, column: 9, scope: !2605)
!2609 = !DILocation(line: 305, column: 28, scope: !2537)
!2610 = !DILocation(line: 305, column: 9, scope: !2537)
!2611 = !DILocation(line: 307, column: 9, scope: !2537)
!2612 = !DILocation(line: 309, column: 25, scope: !2537)
!2613 = !DILocation(line: 309, column: 9, scope: !2537)
!2614 = !DILocation(line: 310, column: 9, scope: !2537)
!2615 = !DILocation(line: 312, column: 23, scope: !2537)
!2616 = !DILocation(line: 312, column: 9, scope: !2537)
!2617 = !DILocation(line: 313, column: 9, scope: !2537)
!2618 = !DILocation(line: 315, column: 31, scope: !2536)
!2619 = !DILocation(line: 315, column: 42, scope: !2536)
!2620 = !DILocation(line: 315, column: 13, scope: !2537)
!2621 = !DILocation(line: 317, column: 64, scope: !2535)
!2622 = !DILocation(line: 317, column: 39, scope: !2535)
!2623 = !DILocation(line: 317, column: 26, scope: !2535)
!2624 = !DILocation(line: 317, column: 31, scope: !2535)
!2625 = !DILocation(line: 317, column: 37, scope: !2535)
!2626 = !DILocation(line: 320, column: 55, scope: !2535)
!2627 = !DILocation(line: 319, column: 13, scope: !2535)
!2628 = !DILocation(line: 321, column: 23, scope: !2535)
!2629 = !DILocation(line: 0, scope: !2535)
!2630 = !DILocation(line: 322, column: 70, scope: !2535)
!2631 = !DILocation(line: 322, column: 52, scope: !2535)
!2632 = !DILocation(line: 322, column: 43, scope: !2535)
!2633 = !DILocation(line: 323, column: 33, scope: !2535)
!2634 = !DILocation(line: 322, column: 18, scope: !2535)
!2635 = !DILocation(line: 325, column: 20, scope: !2636)
!2636 = distinct !DILexicalBlock(scope: !2535, file: !1, line: 325, column: 17)
!2637 = !DILocation(line: 325, column: 17, scope: !2535)
!2638 = !DILocation(line: 326, column: 24, scope: !2639)
!2639 = distinct !DILexicalBlock(scope: !2636, file: !1, line: 325, column: 29)
!2640 = !DILocation(line: 326, column: 47, scope: !2639)
!2641 = !DILocation(line: 326, column: 17, scope: !2639)
!2642 = !DILocation(line: 327, column: 24, scope: !2639)
!2643 = !DILocation(line: 327, column: 38, scope: !2639)
!2644 = !DILocation(line: 327, column: 17, scope: !2639)
!2645 = !DILocation(line: 329, column: 21, scope: !2646)
!2646 = distinct !DILexicalBlock(scope: !2639, file: !1, line: 329, column: 21)
!2647 = !DILocation(line: 329, column: 21, scope: !2639)
!2648 = !DILocation(line: 330, column: 30, scope: !2649)
!2649 = distinct !DILexicalBlock(scope: !2646, file: !1, line: 329, column: 51)
!2650 = !DILocation(line: 330, column: 24, scope: !2649)
!2651 = !DILocation(line: 330, column: 28, scope: !2649)
!2652 = !DILocation(line: 331, column: 21, scope: !2649)
!2653 = !DILocation(line: 332, column: 17, scope: !2649)
!2654 = !DILocation(line: 333, column: 37, scope: !2655)
!2655 = distinct !DILexicalBlock(scope: !2646, file: !1, line: 332, column: 24)
!2656 = !DILocation(line: 333, column: 21, scope: !2655)
!2657 = !DILocation(line: 336, column: 17, scope: !2639)
!2658 = !DILocation(line: 337, column: 13, scope: !2639)
!2659 = !DILocation(line: 338, column: 31, scope: !2660)
!2660 = distinct !DILexicalBlock(scope: !2636, file: !1, line: 337, column: 20)
!2661 = !DILocation(line: 338, column: 17, scope: !2660)
!2662 = !DILocation(line: 342, column: 36, scope: !2663)
!2663 = distinct !DILexicalBlock(scope: !2536, file: !1, line: 341, column: 16)
!2664 = !DILocation(line: 342, column: 50, scope: !2663)
!2665 = !DILocation(line: 342, column: 13, scope: !2663)
!2666 = !DILocation(line: 343, column: 20, scope: !2667)
!2667 = distinct !DILexicalBlock(scope: !2663, file: !1, line: 343, column: 17)
!2668 = !DILocation(line: 343, column: 24, scope: !2667)
!2669 = !DILocation(line: 343, column: 17, scope: !2663)
!2670 = !DILocation(line: 344, column: 17, scope: !2671)
!2671 = distinct !DILexicalBlock(scope: !2667, file: !1, line: 343, column: 58)
!2672 = !DILocation(line: 344, column: 20, scope: !2671)
!2673 = !DILocation(line: 344, column: 34, scope: !2671)
!2674 = !DILocation(line: 345, column: 13, scope: !2671)
!2675 = !DILocation(line: 346, column: 17, scope: !2676)
!2676 = distinct !DILexicalBlock(scope: !2667, file: !1, line: 345, column: 20)
!2677 = !DILocation(line: 346, column: 20, scope: !2676)
!2678 = !DILocation(line: 346, column: 34, scope: !2676)
!2679 = !DILocation(line: 348, column: 38, scope: !2663)
!2680 = !DILocation(line: 0, scope: !2667)
!2681 = !DILocation(line: 348, column: 52, scope: !2663)
!2682 = !DILocation(line: 348, column: 13, scope: !2663)
!2683 = !DILocation(line: 350, column: 13, scope: !2663)
!2684 = !DILocation(line: 354, column: 25, scope: !2537)
!2685 = !DILocation(line: 354, column: 9, scope: !2537)
!2686 = !DILocation(line: 355, column: 9, scope: !2537)
!2687 = !DILocation(line: 357, column: 1, scope: !2501)
!2688 = distinct !DISubprogram(name: "process_bin_append_prepend", scope: !1, file: !1, line: 1187, type: !389, scopeLine: 1187, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2689)
!2689 = !{!2690, !2691, !2692, !2693, !2694}
!2690 = !DILocalVariable(name: "c", arg: 1, scope: !2688, file: !1, line: 1187, type: !391)
!2691 = !DILocalVariable(name: "key", scope: !2688, file: !1, line: 1188, type: !195)
!2692 = !DILocalVariable(name: "nkey", scope: !2688, file: !1, line: 1189, type: !215)
!2693 = !DILocalVariable(name: "vlen", scope: !2688, file: !1, line: 1190, type: !215)
!2694 = !DILocalVariable(name: "it", scope: !2688, file: !1, line: 1191, type: !237)
!2695 = !DILocation(line: 0, scope: !2688)
!2696 = !DILocation(line: 1193, column: 5, scope: !2697)
!2697 = distinct !DILexicalBlock(scope: !2698, file: !1, line: 1193, column: 5)
!2698 = distinct !DILexicalBlock(scope: !2688, file: !1, line: 1193, column: 5)
!2699 = !DILocation(line: 1193, column: 5, scope: !2698)
!2700 = !DILocation(line: 1195, column: 11, scope: !2688)
!2701 = !DILocation(line: 1196, column: 37, scope: !2688)
!2702 = !DILocation(line: 1196, column: 12, scope: !2688)
!2703 = !DILocation(line: 1197, column: 37, scope: !2688)
!2704 = !DILocation(line: 1197, column: 45, scope: !2688)
!2705 = !DILocation(line: 1199, column: 18, scope: !2706)
!2706 = distinct !DILexicalBlock(scope: !2688, file: !1, line: 1199, column: 9)
!2707 = !DILocation(line: 1199, column: 26, scope: !2706)
!2708 = !DILocation(line: 1199, column: 9, scope: !2688)
!2709 = !DILocation(line: 1200, column: 17, scope: !2710)
!2710 = distinct !DILexicalBlock(scope: !2706, file: !1, line: 1199, column: 31)
!2711 = !DILocation(line: 1200, column: 9, scope: !2710)
!2712 = !DILocation(line: 1201, column: 5, scope: !2710)
!2713 = !DILocation(line: 1203, column: 18, scope: !2714)
!2714 = distinct !DILexicalBlock(scope: !2688, file: !1, line: 1203, column: 9)
!2715 = !DILocation(line: 1203, column: 9, scope: !2714)
!2716 = !DILocation(line: 1203, column: 9, scope: !2688)
!2717 = !DILocation(line: 1204, column: 33, scope: !2718)
!2718 = distinct !DILexicalBlock(scope: !2714, file: !1, line: 1203, column: 34)
!2719 = !DILocation(line: 1204, column: 9, scope: !2718)
!2720 = !DILocation(line: 1205, column: 5, scope: !2718)
!2721 = !DILocation(line: 1207, column: 42, scope: !2688)
!2722 = !DILocation(line: 1207, column: 10, scope: !2688)
!2723 = !DILocation(line: 1209, column: 12, scope: !2724)
!2724 = distinct !DILexicalBlock(scope: !2688, file: !1, line: 1209, column: 9)
!2725 = !DILocation(line: 1209, column: 9, scope: !2688)
!2726 = !DILocation(line: 1210, column: 15, scope: !2727)
!2727 = distinct !DILexicalBlock(scope: !2728, file: !1, line: 1210, column: 13)
!2728 = distinct !DILexicalBlock(scope: !2724, file: !1, line: 1209, column: 18)
!2729 = !DILocation(line: 1210, column: 13, scope: !2728)
!2730 = !DILocation(line: 1211, column: 29, scope: !2731)
!2731 = distinct !DILexicalBlock(scope: !2727, file: !1, line: 1210, column: 48)
!2732 = !DILocation(line: 1211, column: 13, scope: !2731)
!2733 = !DILocation(line: 1212, column: 9, scope: !2731)
!2734 = !DILocation(line: 1213, column: 27, scope: !2735)
!2735 = distinct !DILexicalBlock(scope: !2727, file: !1, line: 1212, column: 16)
!2736 = !DILocation(line: 1213, column: 13, scope: !2735)
!2737 = !DILocation(line: 1215, column: 16, scope: !2735)
!2738 = !DILocation(line: 1215, column: 23, scope: !2735)
!2739 = !DILocation(line: 1218, column: 9, scope: !2728)
!2740 = !DILocation(line: 1219, column: 9, scope: !2728)
!2741 = !DILocation(line: 1222, column: 5, scope: !2742)
!2742 = distinct !DILexicalBlock(scope: !2743, file: !1, line: 1222, column: 5)
!2743 = distinct !DILexicalBlock(scope: !2688, file: !1, line: 1222, column: 5)
!2744 = !DILocation(line: 1222, column: 5, scope: !2743)
!2745 = !DILocation(line: 1222, column: 5, scope: !2746)
!2746 = distinct !DILexicalBlock(scope: !2742, file: !1, line: 1222, column: 5)
!2747 = !DILocation(line: 1224, column: 16, scope: !2688)
!2748 = !DILocation(line: 1224, column: 13, scope: !2688)
!2749 = !DILocation(line: 1224, column: 5, scope: !2688)
!2750 = !DILocation(line: 1226, column: 13, scope: !2751)
!2751 = distinct !DILexicalBlock(scope: !2688, file: !1, line: 1224, column: 21)
!2752 = !DILocation(line: 1227, column: 13, scope: !2751)
!2753 = !DILocation(line: 1229, column: 13, scope: !2751)
!2754 = !DILocation(line: 1230, column: 13, scope: !2751)
!2755 = !DILocation(line: 1232, column: 13, scope: !2756)
!2756 = distinct !DILexicalBlock(scope: !2757, file: !1, line: 1232, column: 13)
!2757 = distinct !DILexicalBlock(scope: !2751, file: !1, line: 1232, column: 13)
!2758 = !DILocation(line: 0, scope: !2751)
!2759 = !DILocation(line: 1235, column: 8, scope: !2688)
!2760 = !DILocation(line: 1235, column: 13, scope: !2688)
!2761 = !DILocation(line: 1243, column: 16, scope: !2688)
!2762 = !DILocation(line: 1243, column: 8, scope: !2688)
!2763 = !DILocation(line: 1243, column: 14, scope: !2688)
!2764 = !DILocation(line: 1245, column: 8, scope: !2688)
!2765 = !DILocation(line: 1245, column: 16, scope: !2688)
!2766 = !DILocation(line: 1246, column: 5, scope: !2688)
!2767 = !DILocation(line: 1247, column: 8, scope: !2688)
!2768 = !DILocation(line: 1247, column: 17, scope: !2688)
!2769 = !DILocation(line: 1248, column: 1, scope: !2688)
!2770 = distinct !DISubprogram(name: "process_bin_stat", scope: !1, file: !1, line: 605, type: !389, scopeLine: 605, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2771)
!2771 = !{!2772, !2773, !2774, !2775, !2778, !2784, !2787}
!2772 = !DILocalVariable(name: "c", arg: 1, scope: !2770, file: !1, line: 605, type: !391)
!2773 = !DILocalVariable(name: "subcommand", scope: !2770, file: !1, line: 606, type: !195)
!2774 = !DILocalVariable(name: "nkey", scope: !2770, file: !1, line: 607, type: !639)
!2775 = !DILocalVariable(name: "ii", scope: !2776, file: !1, line: 610, type: !215)
!2776 = distinct !DILexicalBlock(scope: !2777, file: !1, line: 609, column: 31)
!2777 = distinct !DILexicalBlock(scope: !2770, file: !1, line: 609, column: 9)
!2778 = !DILocalVariable(name: "subcmd_pos", scope: !2779, file: !1, line: 627, type: !195)
!2779 = distinct !DILexicalBlock(scope: !2780, file: !1, line: 626, column: 55)
!2780 = distinct !DILexicalBlock(scope: !2781, file: !1, line: 626, column: 16)
!2781 = distinct !DILexicalBlock(scope: !2782, file: !1, line: 624, column: 16)
!2782 = distinct !DILexicalBlock(scope: !2783, file: !1, line: 622, column: 16)
!2783 = distinct !DILexicalBlock(scope: !2770, file: !1, line: 618, column: 9)
!2784 = !DILocalVariable(name: "len", scope: !2785, file: !1, line: 629, type: !215)
!2785 = distinct !DILexicalBlock(scope: !2786, file: !1, line: 628, column: 51)
!2786 = distinct !DILexicalBlock(scope: !2779, file: !1, line: 628, column: 13)
!2787 = !DILocalVariable(name: "dump_buf", scope: !2785, file: !1, line: 630, type: !195)
!2788 = !DILocation(line: 0, scope: !2770)
!2789 = !DILocation(line: 606, column: 24, scope: !2770)
!2790 = !DILocation(line: 607, column: 44, scope: !2770)
!2791 = !DILocation(line: 609, column: 18, scope: !2777)
!2792 = !DILocation(line: 609, column: 26, scope: !2777)
!2793 = !DILocation(line: 609, column: 9, scope: !2770)
!2794 = !DILocation(line: 611, column: 17, scope: !2776)
!2795 = !DILocation(line: 611, column: 42, scope: !2776)
!2796 = !DILocation(line: 611, column: 9, scope: !2776)
!2797 = !DILocation(line: 0, scope: !2776)
!2798 = !DILocation(line: 612, column: 25, scope: !2799)
!2799 = distinct !DILexicalBlock(scope: !2800, file: !1, line: 612, column: 9)
!2800 = distinct !DILexicalBlock(scope: !2776, file: !1, line: 612, column: 9)
!2801 = !DILocation(line: 612, column: 9, scope: !2800)
!2802 = !DILocation(line: 613, column: 21, scope: !2803)
!2803 = distinct !DILexicalBlock(scope: !2799, file: !1, line: 612, column: 39)
!2804 = !DILocation(line: 613, column: 35, scope: !2803)
!2805 = !DILocation(line: 613, column: 13, scope: !2803)
!2806 = !DILocation(line: 612, column: 33, scope: !2799)
!2807 = distinct !{!2807, !2801, !2808, !1195}
!2808 = !DILocation(line: 614, column: 9, scope: !2800)
!2809 = !DILocation(line: 615, column: 17, scope: !2776)
!2810 = !DILocation(line: 615, column: 9, scope: !2776)
!2811 = !DILocation(line: 616, column: 5, scope: !2776)
!2812 = !DILocation(line: 618, column: 14, scope: !2783)
!2813 = !DILocation(line: 618, column: 9, scope: !2770)
!2814 = !DILocation(line: 620, column: 37, scope: !2815)
!2815 = distinct !DILexicalBlock(scope: !2783, file: !1, line: 618, column: 20)
!2816 = !DILocation(line: 620, column: 9, scope: !2815)
!2817 = !DILocation(line: 621, column: 49, scope: !2815)
!2818 = !DILocation(line: 621, column: 15, scope: !2815)
!2819 = !DILocation(line: 622, column: 5, scope: !2815)
!2820 = !DILocation(line: 622, column: 16, scope: !2782)
!2821 = !DILocation(line: 622, column: 48, scope: !2782)
!2822 = !DILocation(line: 622, column: 16, scope: !2783)
!2823 = !DILocation(line: 623, column: 9, scope: !2824)
!2824 = distinct !DILexicalBlock(scope: !2782, file: !1, line: 622, column: 54)
!2825 = !DILocation(line: 624, column: 5, scope: !2824)
!2826 = !DILocation(line: 624, column: 16, scope: !2781)
!2827 = !DILocation(line: 624, column: 51, scope: !2781)
!2828 = !DILocation(line: 624, column: 16, scope: !2782)
!2829 = !DILocation(line: 625, column: 46, scope: !2830)
!2830 = distinct !DILexicalBlock(scope: !2781, file: !1, line: 624, column: 57)
!2831 = !DILocation(line: 625, column: 9, scope: !2830)
!2832 = !DILocation(line: 626, column: 5, scope: !2830)
!2833 = !DILocation(line: 626, column: 16, scope: !2780)
!2834 = !DILocation(line: 626, column: 49, scope: !2780)
!2835 = !DILocation(line: 626, column: 16, scope: !2781)
!2836 = !DILocation(line: 627, column: 39, scope: !2779)
!2837 = !DILocation(line: 0, scope: !2779)
!2838 = !DILocation(line: 628, column: 13, scope: !2786)
!2839 = !DILocation(line: 628, column: 45, scope: !2786)
!2840 = !DILocation(line: 628, column: 13, scope: !2779)
!2841 = !DILocation(line: 629, column: 13, scope: !2785)
!2842 = !DILocation(line: 0, scope: !2785)
!2843 = !DILocation(line: 630, column: 30, scope: !2785)
!2844 = !DILocation(line: 631, column: 26, scope: !2845)
!2845 = distinct !DILexicalBlock(scope: !2785, file: !1, line: 631, column: 17)
!2846 = !DILocation(line: 631, column: 34, scope: !2845)
!2847 = !DILocation(line: 632, column: 17, scope: !2848)
!2848 = distinct !DILexicalBlock(scope: !2845, file: !1, line: 631, column: 47)
!2849 = !DILocation(line: 633, column: 21, scope: !2848)
!2850 = !DILocation(line: 631, column: 37, scope: !2845)
!2851 = !DILocation(line: 631, column: 41, scope: !2845)
!2852 = !DILocation(line: 631, column: 17, scope: !2785)
!2853 = !DILocation(line: 634, column: 26, scope: !2854)
!2854 = distinct !DILexicalBlock(scope: !2848, file: !1, line: 633, column: 21)
!2855 = !DILocation(line: 634, column: 21, scope: !2854)
!2856 = !DILocation(line: 640, column: 9, scope: !2786)
!2857 = !DILocation(line: 637, column: 42, scope: !2858)
!2858 = distinct !DILexicalBlock(scope: !2845, file: !1, line: 636, column: 20)
!2859 = !DILocation(line: 637, column: 77, scope: !2858)
!2860 = !DILocation(line: 637, column: 17, scope: !2858)
!2861 = !DILocation(line: 638, column: 17, scope: !2858)
!2862 = !DILocation(line: 640, column: 9, scope: !2785)
!2863 = !DILocation(line: 640, column: 20, scope: !2864)
!2864 = distinct !DILexicalBlock(scope: !2786, file: !1, line: 640, column: 20)
!2865 = !DILocation(line: 640, column: 50, scope: !2864)
!2866 = !DILocation(line: 640, column: 20, scope: !2786)
!2867 = !DILocation(line: 641, column: 37, scope: !2868)
!2868 = distinct !DILexicalBlock(scope: !2864, file: !1, line: 640, column: 56)
!2869 = !DILocation(line: 642, column: 9, scope: !2868)
!2870 = !DILocation(line: 642, column: 20, scope: !2871)
!2871 = distinct !DILexicalBlock(scope: !2864, file: !1, line: 642, column: 20)
!2872 = !DILocation(line: 642, column: 51, scope: !2871)
!2873 = !DILocation(line: 642, column: 20, scope: !2864)
!2874 = !DILocation(line: 643, column: 37, scope: !2875)
!2875 = distinct !DILexicalBlock(scope: !2871, file: !1, line: 642, column: 57)
!2876 = !DILocation(line: 645, column: 29, scope: !2877)
!2877 = distinct !DILexicalBlock(scope: !2871, file: !1, line: 644, column: 16)
!2878 = !DILocation(line: 645, column: 13, scope: !2877)
!2879 = !DILocation(line: 649, column: 35, scope: !2880)
!2880 = distinct !DILexicalBlock(scope: !2881, file: !1, line: 649, column: 13)
!2881 = distinct !DILexicalBlock(scope: !2780, file: !1, line: 648, column: 12)
!2882 = !DILocation(line: 649, column: 56, scope: !2880)
!2883 = !DILocation(line: 649, column: 13, scope: !2880)
!2884 = !DILocation(line: 649, column: 13, scope: !2881)
!2885 = !DILocation(line: 650, column: 26, scope: !2886)
!2886 = distinct !DILexicalBlock(scope: !2887, file: !1, line: 650, column: 17)
!2887 = distinct !DILexicalBlock(scope: !2880, file: !1, line: 649, column: 60)
!2888 = !{!794, !795, i64 368}
!2889 = !DILocation(line: 650, column: 33, scope: !2886)
!2890 = !DILocation(line: 650, column: 17, scope: !2887)
!2891 = !DILocation(line: 651, column: 31, scope: !2892)
!2892 = distinct !DILexicalBlock(scope: !2886, file: !1, line: 650, column: 42)
!2893 = !DILocation(line: 651, column: 17, scope: !2892)
!2894 = !DILocation(line: 652, column: 13, scope: !2892)
!2895 = !DILocation(line: 653, column: 32, scope: !2896)
!2896 = distinct !DILexicalBlock(scope: !2886, file: !1, line: 652, column: 20)
!2897 = !DILocation(line: 653, column: 61, scope: !2896)
!2898 = !{!794, !805, i64 384}
!2899 = !DILocation(line: 653, column: 52, scope: !2896)
!2900 = !DILocation(line: 653, column: 17, scope: !2896)
!2901 = !DILocation(line: 654, column: 33, scope: !2896)
!2902 = !DILocation(line: 657, column: 29, scope: !2903)
!2903 = distinct !DILexicalBlock(scope: !2880, file: !1, line: 656, column: 16)
!2904 = !DILocation(line: 657, column: 13, scope: !2903)
!2905 = !DILocation(line: 664, column: 36, scope: !2770)
!2906 = !DILocation(line: 664, column: 5, scope: !2770)
!2907 = !DILocation(line: 665, column: 18, scope: !2908)
!2908 = distinct !DILexicalBlock(scope: !2770, file: !1, line: 665, column: 9)
!2909 = !DILocation(line: 665, column: 25, scope: !2908)
!2910 = !DILocation(line: 665, column: 9, scope: !2770)
!2911 = !DILocation(line: 666, column: 23, scope: !2912)
!2912 = distinct !DILexicalBlock(scope: !2908, file: !1, line: 665, column: 34)
!2913 = !DILocation(line: 666, column: 9, scope: !2912)
!2914 = !DILocation(line: 667, column: 5, scope: !2912)
!2915 = !DILocation(line: 668, column: 53, scope: !2916)
!2916 = distinct !DILexicalBlock(scope: !2908, file: !1, line: 667, column: 12)
!2917 = !DILocation(line: 668, column: 44, scope: !2916)
!2918 = !DILocation(line: 668, column: 9, scope: !2916)
!2919 = !DILocation(line: 669, column: 25, scope: !2916)
!2920 = !DILocation(line: 671, column: 1, scope: !2770)
!2921 = distinct !DISubprogram(name: "bin_list_sasl_mechs", scope: !1, file: !1, line: 696, type: !389, scopeLine: 696, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2922)
!2922 = !{!2923, !2924, !2925, !2926}
!2923 = !DILocalVariable(name: "c", arg: 1, scope: !2921, file: !1, line: 696, type: !391)
!2924 = !DILocalVariable(name: "result_string", scope: !2921, file: !1, line: 706, type: !947)
!2925 = !DILocalVariable(name: "string_length", scope: !2921, file: !1, line: 707, type: !5)
!2926 = !DILocalVariable(name: "result", scope: !2921, file: !1, line: 708, type: !215)
!2927 = !DILocation(line: 0, scope: !2921)
!2928 = !DILocation(line: 698, column: 19, scope: !2929)
!2929 = distinct !DILexicalBlock(scope: !2921, file: !1, line: 698, column: 9)
!2930 = !DILocation(line: 698, column: 9, scope: !2921)
!2931 = !DILocation(line: 699, column: 25, scope: !2932)
!2932 = distinct !DILexicalBlock(scope: !2929, file: !1, line: 698, column: 25)
!2933 = !DILocation(line: 700, column: 50, scope: !2932)
!2934 = !DILocation(line: 701, column: 52, scope: !2932)
!2935 = !DILocation(line: 701, column: 27, scope: !2932)
!2936 = !DILocation(line: 701, column: 25, scope: !2932)
!2937 = !DILocation(line: 699, column: 9, scope: !2932)
!2938 = !DILocation(line: 702, column: 9, scope: !2932)
!2939 = !DILocation(line: 705, column: 5, scope: !2921)
!2940 = !DILocation(line: 716, column: 22, scope: !2941)
!2941 = distinct !DILexicalBlock(scope: !2942, file: !1, line: 716, column: 13)
!2942 = distinct !DILexicalBlock(scope: !2943, file: !1, line: 714, column: 28)
!2943 = distinct !DILexicalBlock(scope: !2921, file: !1, line: 714, column: 9)
!2944 = !DILocation(line: 716, column: 13, scope: !2941)
!2945 = !DILocation(line: 716, column: 13, scope: !2942)
!2946 = !DILocation(line: 717, column: 21, scope: !2947)
!2947 = distinct !DILexicalBlock(scope: !2941, file: !1, line: 716, column: 31)
!2948 = !DILocation(line: 717, column: 13, scope: !2947)
!2949 = !DILocation(line: 718, column: 9, scope: !2947)
!2950 = !DILocation(line: 719, column: 25, scope: !2942)
!2951 = !DILocation(line: 719, column: 9, scope: !2942)
!2952 = !DILocation(line: 723, column: 1, scope: !2921)
!2953 = distinct !DISubprogram(name: "process_bin_sasl_auth", scope: !1, file: !1, line: 725, type: !389, scopeLine: 725, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2954)
!2954 = !{!2955, !2956, !2957, !2958, !2959}
!2955 = !DILocalVariable(name: "c", arg: 1, scope: !2953, file: !1, line: 725, type: !391)
!2956 = !DILocalVariable(name: "nkey", scope: !2953, file: !1, line: 736, type: !215)
!2957 = !DILocalVariable(name: "vlen", scope: !2953, file: !1, line: 737, type: !215)
!2958 = !DILocalVariable(name: "key", scope: !2953, file: !1, line: 745, type: !195)
!2959 = !DILocalVariable(name: "it", scope: !2953, file: !1, line: 748, type: !237)
!2960 = !DILocation(line: 0, scope: !2953)
!2961 = !DILocation(line: 727, column: 19, scope: !2962)
!2962 = distinct !DILexicalBlock(scope: !2953, file: !1, line: 727, column: 9)
!2963 = !DILocation(line: 727, column: 9, scope: !2953)
!2964 = !DILocation(line: 728, column: 25, scope: !2965)
!2965 = distinct !DILexicalBlock(scope: !2962, file: !1, line: 727, column: 25)
!2966 = !DILocation(line: 729, column: 50, scope: !2965)
!2967 = !DILocation(line: 730, column: 52, scope: !2965)
!2968 = !DILocation(line: 730, column: 27, scope: !2965)
!2969 = !DILocation(line: 730, column: 25, scope: !2965)
!2970 = !DILocation(line: 728, column: 9, scope: !2965)
!2971 = !DILocation(line: 731, column: 9, scope: !2965)
!2972 = !DILocation(line: 734, column: 5, scope: !2973)
!2973 = distinct !DILexicalBlock(scope: !2974, file: !1, line: 734, column: 5)
!2974 = distinct !DILexicalBlock(scope: !2953, file: !1, line: 734, column: 5)
!2975 = !DILocation(line: 734, column: 5, scope: !2974)
!2976 = !DILocation(line: 736, column: 41, scope: !2953)
!2977 = !DILocation(line: 736, column: 16, scope: !2953)
!2978 = !DILocation(line: 737, column: 41, scope: !2953)
!2979 = !DILocation(line: 737, column: 49, scope: !2953)
!2980 = !DILocation(line: 739, column: 14, scope: !2981)
!2981 = distinct !DILexicalBlock(scope: !2953, file: !1, line: 739, column: 9)
!2982 = !DILocation(line: 739, column: 9, scope: !2953)
!2983 = !DILocation(line: 740, column: 25, scope: !2984)
!2984 = distinct !DILexicalBlock(scope: !2981, file: !1, line: 739, column: 35)
!2985 = !DILocation(line: 740, column: 9, scope: !2984)
!2986 = !DILocation(line: 741, column: 9, scope: !2984)
!2987 = !DILocation(line: 742, column: 9, scope: !2984)
!2988 = !DILocation(line: 745, column: 17, scope: !2953)
!2989 = !DILocation(line: 746, column: 5, scope: !2990)
!2990 = distinct !DILexicalBlock(scope: !2991, file: !1, line: 746, column: 5)
!2991 = distinct !DILexicalBlock(scope: !2953, file: !1, line: 746, column: 5)
!2992 = !DILocation(line: 746, column: 5, scope: !2991)
!2993 = !DILocation(line: 748, column: 32, scope: !2953)
!2994 = !DILocation(line: 748, column: 48, scope: !2953)
!2995 = !DILocation(line: 748, column: 16, scope: !2953)
!2996 = !DILocation(line: 751, column: 12, scope: !2997)
!2997 = distinct !DILexicalBlock(scope: !2953, file: !1, line: 751, column: 9)
!2998 = !DILocation(line: 751, column: 17, scope: !2997)
!2999 = !DILocation(line: 751, column: 21, scope: !2997)
!3000 = !DILocation(line: 751, column: 25, scope: !2997)
!3001 = !DILocation(line: 751, column: 34, scope: !2997)
!3002 = !DILocation(line: 751, column: 9, scope: !2953)
!3003 = !DILocation(line: 752, column: 9, scope: !3004)
!3004 = distinct !DILexicalBlock(scope: !2997, file: !1, line: 751, column: 51)
!3005 = !DILocation(line: 753, column: 9, scope: !3004)
!3006 = !DILocation(line: 755, column: 28, scope: !3007)
!3007 = distinct !DILexicalBlock(scope: !3008, file: !1, line: 754, column: 17)
!3008 = distinct !DILexicalBlock(scope: !3004, file: !1, line: 754, column: 13)
!3009 = !DILocation(line: 755, column: 13, scope: !3007)
!3010 = !DILocation(line: 756, column: 9, scope: !3007)
!3011 = !DILocation(line: 754, column: 13, scope: !3004)
!3012 = !DILocation(line: 757, column: 9, scope: !3004)
!3013 = !DILocation(line: 760, column: 15, scope: !2953)
!3014 = !DILocation(line: 760, column: 8, scope: !2953)
!3015 = !DILocation(line: 760, column: 13, scope: !2953)
!3016 = !DILocation(line: 761, column: 16, scope: !2953)
!3017 = !DILocation(line: 761, column: 8, scope: !2953)
!3018 = !DILocation(line: 761, column: 14, scope: !2953)
!3019 = !DILocation(line: 762, column: 8, scope: !2953)
!3020 = !DILocation(line: 762, column: 16, scope: !2953)
!3021 = !DILocation(line: 763, column: 5, scope: !2953)
!3022 = !DILocation(line: 764, column: 8, scope: !2953)
!3023 = !DILocation(line: 764, column: 17, scope: !2953)
!3024 = !DILocation(line: 765, column: 1, scope: !2953)
!3025 = !DISubprogram(name: "realtime", scope: !4, file: !4, line: 1014, type: !3026, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1080)
!3026 = !DISubroutineType(types: !3027)
!3027 = !{!212, !3028}
!3028 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1881)
!3029 = !DISubprogram(name: "get_cas_id", scope: !1077, file: !1077, line: 10, type: !3030, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1080)
!3030 = !DISubroutineType(types: !3031)
!3031 = !{!188}
!3032 = distinct !DISubprogram(name: "binary_get_key", scope: !1, file: !1, line: 131, type: !3033, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3035)
!3033 = !DISubroutineType(types: !3034)
!3034 = !{!195, !391}
!3035 = !{!3036}
!3036 = !DILocalVariable(name: "c", arg: 1, scope: !3032, file: !1, line: 131, type: !391)
!3037 = !DILocation(line: 0, scope: !3032)
!3038 = !DILocation(line: 132, column: 15, scope: !3032)
!3039 = !DILocation(line: 132, column: 49, scope: !3032)
!3040 = !DILocation(line: 132, column: 21, scope: !3032)
!3041 = !DILocation(line: 132, column: 5, scope: !3032)
!3042 = !DISubprogram(name: "stats_prefix_record_set", scope: !3043, file: !3043, line: 31, type: !3044, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1080)
!3043 = !DIFile(filename: "./stats_prefix.h", directory: "/home/xuheng/blackbox/llvm-test/memcached", checksumkind: CSK_MD5, checksum: "c26de3f3a40668b5f799218415be0cc4")
!3044 = !DISubroutineType(types: !3045)
!3045 = !{null, !947, !3046}
!3046 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !639)
!3047 = !DISubprogram(name: "item_alloc", scope: !4, file: !4, line: 971, type: !3048, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1080)
!3048 = !DISubroutineType(types: !3049)
!3049 = !{!237, !195, !639, !215, !212, !215}
!3050 = !DISubprogram(name: "item_size_ok", scope: !1077, file: !1077, line: 18, type: !3051, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1080)
!3051 = !DISubroutineType(types: !3052)
!3052 = !{!401, !3046, !3053, !3053}
!3053 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !215)
!3054 = !DISubprogram(name: "out_of_memory", scope: !4, file: !4, line: 1027, type: !1311, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1080)
!3055 = !DISubprogram(name: "pthread_getspecific", scope: !1746, file: !1746, line: 1131, type: !3056, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1080)
!3056 = !DISubroutineType(types: !3057)
!3057 = !{!161, !3058}
!3058 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_key_t", file: !248, line: 49, baseType: !5)
!3059 = !DISubprogram(name: "logger_log", scope: !36, file: !36, line: 216, type: !3060, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1080)
!3060 = !DISubroutineType(types: !3061)
!3061 = !{!148, !239, !3062, !331, null}
!3062 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !35)
!3063 = !DISubprogram(name: "item_get", scope: !4, file: !4, line: 974, type: !3064, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1080)
!3064 = !DISubroutineType(types: !3065)
!3065 = !{!237, !947, !3046, !391, !3066}
!3066 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !401)
!3067 = !DISubprogram(name: "item_unlink", scope: !4, file: !4, line: 980, type: !1078, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1080)
!3068 = !DISubprogram(name: "storage_delete", scope: !3069, file: !3069, line: 4, type: !3070, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1080)
!3069 = !DIFile(filename: "./storage.h", directory: "/home/xuheng/blackbox/llvm-test/memcached", checksumkind: CSK_MD5, checksum: "1366cb74d3c75a613067dc0e748ab303")
!3070 = !DISubroutineType(types: !3071)
!3071 = !{null, !161, !237}
!3072 = !DISubprogram(name: "fwrite", scope: !1082, file: !1082, line: 652, type: !3073, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1080)
!3073 = !DISubroutineType(types: !3074)
!3074 = !{!639, !1283, !639, !639, !1085}
!3075 = !DISubprogram(name: "fputc", scope: !1082, file: !1082, line: 521, type: !3076, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1080)
!3076 = !DISubroutineType(types: !3077)
!3077 = !{!215, !215, !1086}
!3078 = !DISubprogram(name: "item_touch", scope: !4, file: !4, line: 976, type: !3079, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1080)
!3079 = !DISubroutineType(types: !3080)
!3080 = !{!237, !947, !3046, !184, !391}
!3081 = !DISubprogram(name: "storage_get_item", scope: !3069, file: !3069, line: 18, type: !3082, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1080)
!3082 = !DISubroutineType(types: !3083)
!3083 = !{!215, !391, !237, !493}
!3084 = !DISubprogram(name: "resp_add_chunked_iov", scope: !4, file: !4, line: 1020, type: !1739, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1080)
!3085 = distinct !DISubprogram(name: "write_bin_miss_response", scope: !1, file: !1, line: 441, type: !3086, scopeLine: 441, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3088)
!3086 = !DISubroutineType(types: !3087)
!3087 = !{null, !391, !195, !639}
!3088 = !{!3089, !3090, !3091, !3092}
!3089 = !DILocalVariable(name: "c", arg: 1, scope: !3085, file: !1, line: 441, type: !391)
!3090 = !DILocalVariable(name: "key", arg: 2, scope: !3085, file: !1, line: 441, type: !195)
!3091 = !DILocalVariable(name: "nkey", arg: 3, scope: !3085, file: !1, line: 441, type: !639)
!3092 = !DILocalVariable(name: "ofs", scope: !3093, file: !1, line: 445, type: !195)
!3093 = distinct !DILexicalBlock(scope: !3094, file: !1, line: 442, column: 15)
!3094 = distinct !DILexicalBlock(scope: !3085, file: !1, line: 442, column: 9)
!3095 = !DILocation(line: 0, scope: !3085)
!3096 = !DILocation(line: 442, column: 9, scope: !3094)
!3097 = !DILocation(line: 442, column: 9, scope: !3085)
!3098 = !DILocation(line: 443, column: 24, scope: !3093)
!3099 = !DILocation(line: 444, column: 20, scope: !3093)
!3100 = !DILocation(line: 444, column: 26, scope: !3093)
!3101 = !DILocation(line: 443, column: 9, scope: !3093)
!3102 = !DILocation(line: 445, column: 24, scope: !3093)
!3103 = !DILocation(line: 445, column: 35, scope: !3093)
!3104 = !DILocation(line: 0, scope: !3093)
!3105 = !DILocation(line: 446, column: 9, scope: !3093)
!3106 = !DILocation(line: 447, column: 25, scope: !3093)
!3107 = !DILocation(line: 447, column: 9, scope: !3093)
!3108 = !DILocation(line: 448, column: 9, scope: !3093)
!3109 = !DILocation(line: 449, column: 5, scope: !3093)
!3110 = !DILocation(line: 450, column: 25, scope: !3111)
!3111 = distinct !DILexicalBlock(scope: !3094, file: !1, line: 449, column: 12)
!3112 = !DILocation(line: 450, column: 9, scope: !3111)
!3113 = !DILocation(line: 453, column: 1, scope: !3085)
!3114 = !DISubprogram(name: "stats_prefix_record_get", scope: !3043, file: !3043, line: 25, type: !3115, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1080)
!3115 = !DISubroutineType(types: !3116)
!3116 = !{null, !947, !3046, !3066}
!3117 = !DISubprogram(name: "stats_prefix_record_delete", scope: !3043, file: !3043, line: 28, type: !3044, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1080)
!3118 = !DISubprogram(name: "item_get_locked", scope: !4, file: !4, line: 975, type: !3119, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1080)
!3119 = !DISubroutineType(types: !3120)
!3120 = !{!237, !947, !3046, !391, !3066, !363}
!3121 = !DISubprogram(name: "do_item_unlink", scope: !1077, file: !1077, line: 21, type: !3122, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1080)
!3122 = !DISubroutineType(types: !3123)
!3123 = !{null, !237, !3124}
!3124 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !184)
!3125 = !DISubprogram(name: "item_unlock", scope: !4, file: !4, line: 985, type: !3126, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1080)
!3126 = !DISubroutineType(types: !3127)
!3127 = !{null, !184}
!3128 = !DISubprogram(name: "add_delta", scope: !4, file: !4, line: 964, type: !3129, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1080)
!3129 = !DISubroutineType(types: !3130)
!3130 = !{!153, !391, !947, !3046, !401, !3131, !195, !3135}
!3131 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3132)
!3132 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !3133, line: 27, baseType: !3134)
!3133 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "", checksumkind: CSK_MD5, checksum: "081edea97425b3437dded4a7fe223193")
!3134 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !163, line: 44, baseType: !276)
!3135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !188, size: 64)
!3136 = !DISubprogram(name: "strtoull", scope: !3137, file: !3137, line: 205, type: !3138, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1080)
!3137 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "f0db66726d35051e5af2525f5b33bd81")
!3138 = !DISubroutineType(types: !3139)
!3139 = !{!381, !1139, !3140, !215}
!3140 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !3141)
!3141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !195, size: 64)
!3142 = !DISubprogram(name: "snprintf", scope: !1082, file: !1082, line: 354, type: !3143, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1080)
!3143 = !DISubroutineType(types: !3144)
!3144 = !{!215, !3145, !639, !1139, null}
!3145 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !195)
!3146 = !DISubprogram(name: "server_stats", scope: !4, file: !4, line: 1030, type: !3147, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1080)
!3147 = !DISubroutineType(types: !3148)
!3148 = !{null, !3149, !391}
!3149 = !DIDerivedType(tag: DW_TAG_typedef, name: "ADD_STAT", file: !4, line: 189, baseType: !3150)
!3150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3151, size: 64)
!3151 = !DISubroutineType(types: !3152)
!3152 = !{null, !947, !3153, !947, !3124, !331}
!3153 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !179)
!3154 = !DISubprogram(name: "append_stats", scope: !4, file: !4, line: 1031, type: !3151, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1080)
!3155 = !DISubprogram(name: "get_stats", scope: !4, file: !4, line: 1035, type: !3156, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1080)
!3156 = !DISubroutineType(types: !3157)
!3157 = !{!401, !947, !215, !3149, !161}
!3158 = !DISubprogram(name: "strncmp", scope: !1279, file: !1279, line: 140, type: !3159, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1080)
!3159 = !DISubroutineType(types: !3160)
!3160 = !{!215, !947, !947, !639}
!3161 = !DISubprogram(name: "stats_reset", scope: !4, file: !4, line: 1036, type: !3162, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1080)
!3162 = !DISubroutineType(types: !3163)
!3163 = !{null}
!3164 = !DISubprogram(name: "process_stat_settings", scope: !4, file: !4, line: 1037, type: !3165, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1080)
!3165 = !DISubroutineType(types: !3166)
!3166 = !{null, !3149, !161}
!3167 = !DISubprogram(name: "stats_prefix_dump", scope: !3043, file: !3043, line: 37, type: !3168, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1080)
!3168 = !DISubroutineType(types: !3169)
!3169 = !{!195, !3170}
!3170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !215, size: 64)
!3171 = !DISubprogram(name: "free", scope: !3137, file: !3137, line: 565, type: !3172, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1080)
!3172 = !DISubroutineType(types: !3173)
!3173 = !{null, !161}
!3174 = !DISubprogram(name: "write_and_free", scope: !4, file: !4, line: 1029, type: !3175, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1080)
!3175 = !DISubroutineType(types: !3176)
!3176 = !{null, !391, !195, !215}
