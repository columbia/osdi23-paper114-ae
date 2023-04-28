; ModuleID = 'extstore.c'
source_filename = "extstore.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%emit_function_args_ty = type { i32, i32, i32 }
%emit_arcs_args_ty = type { i32, i64* }
%struct.extstore_stats = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, %struct.extstore_page_data* }
%struct.extstore_page_data = type { i64, i64, i32, i32 }
%union.pthread_mutex_t = type { %struct.__pthread_mutex_s }
%struct.__pthread_mutex_s = type { i32, i32, i32, i32, i32, i16, i16, %struct.__pthread_internal_list }
%struct.__pthread_internal_list = type { %struct.__pthread_internal_list*, %struct.__pthread_internal_list* }
%struct.store_io_thread = type { %union.pthread_mutex_t, %union.pthread_cond_t, %struct._obj_io*, %struct._obj_io*, %struct.store_engine*, i32 }
%union.pthread_cond_t = type { %struct.__pthread_cond_s }
%struct.__pthread_cond_s = type { %union.anon, %union.anon.0, [2 x i32], [2 x i32], i32, i32, [2 x i32] }
%union.anon = type { i64 }
%union.anon.0 = type { i64 }
%struct._obj_io = type { i8*, %struct._obj_io*, i8*, %struct.iovec*, i32, i32, i32, i32, i16, i32, void (i8*, %struct._obj_io*, i32)* }
%struct.iovec = type { i8*, i64 }
%struct.store_engine = type { %union.pthread_mutex_t, %struct._store_page*, %struct.__store_wbuf*, %struct._obj_io*, %struct.store_io_thread*, %struct.store_maint_thread*, %struct._store_page*, %struct._store_page**, %struct._store_page**, i64, i32, i32, i32, i32, i32, i32, i32, i32, %union.pthread_mutex_t, %struct.extstore_stats }
%struct.__store_wbuf = type { %struct.__store_wbuf*, i8*, i8*, i32, i32, i32, i8, i8 }
%struct.store_maint_thread = type { %union.pthread_mutex_t, %union.pthread_cond_t, %struct.store_engine* }
%struct._store_page = type { %union.pthread_mutex_t, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i16, i8, i8, i8, %struct.__store_wbuf*, %struct._store_page* }
%struct.extstore_conf_file = type { i32, i8*, i32, i64, i32, i32, %struct.extstore_conf_file* }
%struct.extstore_conf = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.flock = type { i16, i16, i64, i64, i32 }
%union.pthread_mutexattr_t = type { i32 }
%union.pthread_condattr_t = type { i32 }
%union.pthread_attr_t = type { i64, [48 x i8] }

@.str = private unnamed_addr constant [14 x i8] c"unknown error\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"page_size must be divisible by wbuf_size\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"wbuf_count must be >= page_buckets\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"page_buckets must be > 0\00", align 1
@.str.4 = private unnamed_addr constant [57 x i8] c"page_size and wbuf_size must be divisible by 1024*1024*2\00", align 1
@.str.5 = private unnamed_addr constant [73 x i8] c"page_count must total to < 65536. Increase page_size or lower path sizes\00", align 1
@.str.6 = private unnamed_addr constant [25 x i8] c"failed calloc for engine\00", align 1
@.str.7 = private unnamed_addr constant [20 x i8] c"failed to open file\00", align 1
@.str.8 = private unnamed_addr constant [19 x i8] c"tail->next == NULL\00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c"extstore.c\00", align 1
@__PRETTY_FUNCTION__.extstore_submit = private unnamed_addr constant [38 x i8] c"int extstore_submit(void *, obj_io *)\00", align 1
@.str.10 = private unnamed_addr constant [28 x i8] c"t->queue_tail->next == NULL\00", align 1
@.str.11 = private unnamed_addr constant [79 x i8] c"!e->page_buckets[bucket] || e->page_buckets[bucket]->allocated == e->page_size\00", align 1
@__PRETTY_FUNCTION__._allocate_page = private unnamed_addr constant [71 x i8] c"store_page *_allocate_page(store_engine *, unsigned int, unsigned int)\00", align 1
@.str.12 = private unnamed_addr constant [17 x i8] c"e->page_free > 0\00", align 1
@.str.13 = private unnamed_addr constant [32 x i8] c"p->wbuf != NULL && p->wbuf == w\00", align 1
@__PRETTY_FUNCTION__._wbuf_cb = private unnamed_addr constant [37 x i8] c"void _wbuf_cb(void *, obj_io *, int)\00", align 1
@.str.14 = private unnamed_addr constant [24 x i8] c"p->written == w->offset\00", align 1
@.str.15 = private unnamed_addr constant [9 x i8] c"!p->wbuf\00", align 1
@__PRETTY_FUNCTION__._allocate_wbuf = private unnamed_addr constant [50 x i8] c"void _allocate_wbuf(store_engine *, store_page *)\00", align 1
@.str.16 = private unnamed_addr constant [13 x i8] c"wbuf != NULL\00", align 1
@__PRETTY_FUNCTION__._read_from_wbuf = private unnamed_addr constant [44 x i8] c"int _read_from_wbuf(store_page *, obj_io *)\00", align 1
@.str.17 = private unnamed_addr constant [37 x i8] c"io->offset < p->written + wbuf->size\00", align 1
@__llvm_gcov_ctr = internal global [2 x i64] zeroinitializer
@__llvm_gcov_ctr.18 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.19 = internal global [8 x i64] zeroinitializer
@__llvm_gcov_ctr.20 = internal global [22 x i64] zeroinitializer
@__llvm_gcov_ctr.21 = internal global [3 x i64] zeroinitializer
@__llvm_gcov_ctr.22 = internal global [18 x i64] zeroinitializer
@__llvm_gcov_ctr.23 = internal global [18 x i64] zeroinitializer
@__llvm_gcov_ctr.24 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.25 = internal global [15 x i64] zeroinitializer
@__llvm_gcov_ctr.26 = internal global [11 x i64] zeroinitializer
@__llvm_gcov_ctr.27 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.28 = internal global [4 x i64] zeroinitializer
@__llvm_gcov_ctr.29 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.30 = internal global [5 x i64] zeroinitializer
@__llvm_gcov_ctr.31 = internal global [4 x i64] zeroinitializer
@__llvm_gcov_ctr.32 = internal global [6 x i64] zeroinitializer
@__llvm_gcov_ctr.33 = internal global [2 x i64] zeroinitializer
@__llvm_gcov_ctr.34 = internal global [3 x i64] zeroinitializer
@__llvm_gcov_ctr.35 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.36 = internal global [4 x i64] zeroinitializer
@__llvm_gcov_ctr.37 = internal global [5 x i64] zeroinitializer
@__llvm_gcov_ctr.38 = internal global [5 x i64] zeroinitializer
@0 = private unnamed_addr constant [56 x i8] c"/home/xuheng/blackbox/llvm-test/memcached/extstore.gcda\00", align 1
@__llvm_internal_gcov_emit_function_args.0 = internal unnamed_addr constant [22 x %emit_function_args_ty] [%emit_function_args_ty { i32 0, i32 376372202, i32 -1935869607 }, %emit_function_args_ty { i32 1, i32 689507309, i32 -1935869607 }, %emit_function_args_ty { i32 2, i32 171704559, i32 -1935869607 }, %emit_function_args_ty { i32 3, i32 853489121, i32 -1935869607 }, %emit_function_args_ty { i32 4, i32 1883312460, i32 -1935869607 }, %emit_function_args_ty { i32 5, i32 812888548, i32 -1935869607 }, %emit_function_args_ty { i32 6, i32 -155672070, i32 -1935869607 }, %emit_function_args_ty { i32 7, i32 512493911, i32 -1935869607 }, %emit_function_args_ty { i32 8, i32 -1941221202, i32 -1935869607 }, %emit_function_args_ty { i32 9, i32 1012486219, i32 -1935869607 }, %emit_function_args_ty { i32 10, i32 -448504239, i32 -1935869607 }, %emit_function_args_ty { i32 11, i32 1367200900, i32 -1935869607 }, %emit_function_args_ty { i32 12, i32 223389120, i32 -1935869607 }, %emit_function_args_ty { i32 13, i32 1399619512, i32 -1935869607 }, %emit_function_args_ty { i32 14, i32 -366558477, i32 -1935869607 }, %emit_function_args_ty { i32 15, i32 -1216714082, i32 -1935869607 }, %emit_function_args_ty { i32 16, i32 1024241379, i32 -1935869607 }, %emit_function_args_ty { i32 17, i32 1424314585, i32 -1935869607 }, %emit_function_args_ty { i32 18, i32 503453702, i32 -1935869607 }, %emit_function_args_ty { i32 19, i32 -437606025, i32 -1935869607 }, %emit_function_args_ty { i32 20, i32 601542752, i32 -1935869607 }, %emit_function_args_ty { i32 21, i32 2083023451, i32 -1935869607 }]
@__llvm_internal_gcov_emit_arcs_args.0 = internal unnamed_addr constant [22 x %emit_arcs_args_ty] [%emit_arcs_args_ty { i32 2, i64* getelementptr inbounds ([2 x i64], [2 x i64]* @__llvm_gcov_ctr, i32 0, i32 0) }, %emit_arcs_args_ty { i32 1, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.18, i32 0, i32 0) }, %emit_arcs_args_ty { i32 8, i64* getelementptr inbounds ([8 x i64], [8 x i64]* @__llvm_gcov_ctr.19, i32 0, i32 0) }, %emit_arcs_args_ty { i32 22, i64* getelementptr inbounds ([22 x i64], [22 x i64]* @__llvm_gcov_ctr.20, i32 0, i32 0) }, %emit_arcs_args_ty { i32 3, i64* getelementptr inbounds ([3 x i64], [3 x i64]* @__llvm_gcov_ctr.21, i32 0, i32 0) }, %emit_arcs_args_ty { i32 18, i64* getelementptr inbounds ([18 x i64], [18 x i64]* @__llvm_gcov_ctr.22, i32 0, i32 0) }, %emit_arcs_args_ty { i32 18, i64* getelementptr inbounds ([18 x i64], [18 x i64]* @__llvm_gcov_ctr.23, i32 0, i32 0) }, %emit_arcs_args_ty { i32 1, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.24, i32 0, i32 0) }, %emit_arcs_args_ty { i32 15, i64* getelementptr inbounds ([15 x i64], [15 x i64]* @__llvm_gcov_ctr.25, i32 0, i32 0) }, %emit_arcs_args_ty { i32 11, i64* getelementptr inbounds ([11 x i64], [11 x i64]* @__llvm_gcov_ctr.26, i32 0, i32 0) }, %emit_arcs_args_ty { i32 1, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.27, i32 0, i32 0) }, %emit_arcs_args_ty { i32 4, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @__llvm_gcov_ctr.28, i32 0, i32 0) }, %emit_arcs_args_ty { i32 1, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.29, i32 0, i32 0) }, %emit_arcs_args_ty { i32 5, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @__llvm_gcov_ctr.30, i32 0, i32 0) }, %emit_arcs_args_ty { i32 4, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @__llvm_gcov_ctr.31, i32 0, i32 0) }, %emit_arcs_args_ty { i32 6, i64* getelementptr inbounds ([6 x i64], [6 x i64]* @__llvm_gcov_ctr.32, i32 0, i32 0) }, %emit_arcs_args_ty { i32 2, i64* getelementptr inbounds ([2 x i64], [2 x i64]* @__llvm_gcov_ctr.33, i32 0, i32 0) }, %emit_arcs_args_ty { i32 3, i64* getelementptr inbounds ([3 x i64], [3 x i64]* @__llvm_gcov_ctr.34, i32 0, i32 0) }, %emit_arcs_args_ty { i32 1, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.35, i32 0, i32 0) }, %emit_arcs_args_ty { i32 4, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @__llvm_gcov_ctr.36, i32 0, i32 0) }, %emit_arcs_args_ty { i32 5, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @__llvm_gcov_ctr.37, i32 0, i32 0) }, %emit_arcs_args_ty { i32 5, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @__llvm_gcov_ctr.38, i32 0, i32 0) }]
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 0, void ()* @__llvm_gcov_init, i8* null }]

; Function Attrs: noinline nounwind uwtable
define dso_local void @extstore_get_stats(i8* noundef %ptr, %struct.extstore_stats* noundef %st) local_unnamed_addr #0 !dbg !238 {
entry:
  call void @llvm.dbg.value(metadata i8* %ptr, metadata !243, metadata !DIExpression()), !dbg !248
  call void @llvm.dbg.value(metadata %struct.extstore_stats* %st, metadata !244, metadata !DIExpression()), !dbg !248
  call void @llvm.dbg.value(metadata i8* %ptr, metadata !245, metadata !DIExpression()), !dbg !248
  %stats_mutex = getelementptr inbounds i8, i8* %ptr, i64 144, !dbg !249
  %0 = bitcast i8* %stats_mutex to %union.pthread_mutex_t*, !dbg !249
  %call = tail call i32 @pthread_mutex_lock(%union.pthread_mutex_t* noundef nonnull %0) #12, !dbg !249
  %1 = bitcast %struct.extstore_stats* %st to i8*, !dbg !250
  %stats = getelementptr inbounds i8, i8* %ptr, i64 184, !dbg !251
  %call1 = tail call i8* @memcpy(i8* noundef %1, i8* noundef nonnull %stats, i64 noundef 144) #12, !dbg !252
  %call3 = tail call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* noundef nonnull %0) #12, !dbg !253
  %mutex = bitcast i8* %ptr to %union.pthread_mutex_t*, !dbg !254
  %call4 = tail call i32 @pthread_mutex_lock(%union.pthread_mutex_t* noundef %mutex) #12, !dbg !255
  %page_free = getelementptr inbounds i8, i8* %ptr, i64 128, !dbg !256
  %2 = bitcast i8* %page_free to i32*, !dbg !256
  %3 = load i32, i32* %2, align 8, !dbg !256, !tbaa !257
  %conv = zext i32 %3 to i64, !dbg !265
  %pages_free = getelementptr inbounds %struct.extstore_stats, %struct.extstore_stats* %st, i64 0, i32 5, !dbg !266
  store i64 %conv, i64* %pages_free, align 8, !dbg !267, !tbaa !268
  %page_count = getelementptr inbounds i8, i8* %ptr, i64 124, !dbg !269
  %4 = bitcast i8* %page_count to i32*, !dbg !269
  %5 = load i32, i32* %4, align 4, !dbg !269, !tbaa !270
  %sub = sub i32 %5, %3, !dbg !271
  %conv6 = zext i32 %sub to i64, !dbg !272
  %pages_used = getelementptr inbounds %struct.extstore_stats, %struct.extstore_stats* %st, i64 0, i32 6, !dbg !273
  store i64 %conv6, i64* %pages_used, align 8, !dbg !274, !tbaa !275
  %call8 = tail call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* noundef %mutex) #12, !dbg !276
  %io_queue = getelementptr inbounds %struct.extstore_stats, %struct.extstore_stats* %st, i64 0, i32 16, !dbg !277
  store i64 0, i64* %io_queue, align 8, !dbg !278, !tbaa !279
  call void @llvm.dbg.value(metadata i32 0, metadata !246, metadata !DIExpression()), !dbg !280
  %io_threadcount = getelementptr inbounds i8, i8* %ptr, i64 120
  %6 = bitcast i8* %io_threadcount to i32*
  call void @llvm.dbg.value(metadata i32 0, metadata !246, metadata !DIExpression()), !dbg !280
  %7 = load i32, i32* %6, align 8, !dbg !281, !tbaa !283
  %cmp50.not = icmp eq i32 %7, 0, !dbg !284
  br i1 %cmp50.not, label %for.cond.cleanup, label %for.body.lr.ph, !dbg !285

for.body.lr.ph:                                   ; preds = %entry
  %io_threads = getelementptr inbounds i8, i8* %ptr, i64 64
  %8 = bitcast i8* %io_threads to %struct.store_io_thread**
  br label %for.body, !dbg !285

for.cond.cleanup:                                 ; preds = %for.body, %entry
  %gcov_ctr = load i64, i64* getelementptr inbounds ([2 x i64], [2 x i64]* @__llvm_gcov_ctr, i64 0, i64 0), align 8, !dbg !286
  %9 = add i64 %gcov_ctr, 1, !dbg !286
  store i64 %9, i64* getelementptr inbounds ([2 x i64], [2 x i64]* @__llvm_gcov_ctr, i64 0, i64 0), align 8, !dbg !286
  %10 = load i64, i64* %pages_used, align 8, !dbg !287, !tbaa !275
  %page_size = getelementptr inbounds i8, i8* %ptr, i64 104, !dbg !288
  %11 = bitcast i8* %page_size to i64*, !dbg !288
  %12 = load i64, i64* %11, align 8, !dbg !288, !tbaa !289
  %mul = mul i64 %12, %10, !dbg !290
  %bytes_used = getelementptr inbounds %struct.extstore_stats, %struct.extstore_stats* %st, i64 0, i32 14, !dbg !291
  %13 = load i64, i64* %bytes_used, align 8, !dbg !291, !tbaa !292
  %sub23 = sub i64 %mul, %13, !dbg !293
  %bytes_fragmented = getelementptr inbounds %struct.extstore_stats, %struct.extstore_stats* %st, i64 0, i32 15, !dbg !294
  store i64 %sub23, i64* %bytes_fragmented, align 8, !dbg !295, !tbaa !296
  ret void, !dbg !297

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.body ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !246, metadata !DIExpression()), !dbg !280
  %14 = load %struct.store_io_thread*, %struct.store_io_thread** %8, align 8, !dbg !298, !tbaa !300
  %mutex10 = getelementptr inbounds %struct.store_io_thread, %struct.store_io_thread* %14, i64 %indvars.iv, i32 0, !dbg !301
  %call11 = tail call i32 @pthread_mutex_lock(%union.pthread_mutex_t* noundef %mutex10) #12, !dbg !302
  %15 = load %struct.store_io_thread*, %struct.store_io_thread** %8, align 8, !dbg !303, !tbaa !300
  %depth = getelementptr inbounds %struct.store_io_thread, %struct.store_io_thread* %15, i64 %indvars.iv, i32 5, !dbg !304
  %16 = load i32, i32* %depth, align 8, !dbg !304, !tbaa !305
  %conv15 = zext i32 %16 to i64, !dbg !307
  %17 = load i64, i64* %io_queue, align 8, !dbg !308, !tbaa !279
  %add = add i64 %17, %conv15, !dbg !308
  store i64 %add, i64* %io_queue, align 8, !dbg !308, !tbaa !279
  %mutex20 = getelementptr inbounds %struct.store_io_thread, %struct.store_io_thread* %15, i64 %indvars.iv, i32 0, !dbg !309
  %call21 = tail call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* noundef %mutex20) #12, !dbg !310
  %gcov_ctr24 = load i64, i64* getelementptr inbounds ([2 x i64], [2 x i64]* @__llvm_gcov_ctr, i64 0, i64 1), align 8, !dbg !311
  %18 = add i64 %gcov_ctr24, 1, !dbg !311
  store i64 %18, i64* getelementptr inbounds ([2 x i64], [2 x i64]* @__llvm_gcov_ctr, i64 0, i64 1), align 8, !dbg !311
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !311
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !246, metadata !DIExpression()), !dbg !280
  %19 = load i32, i32* %6, align 8, !dbg !281, !tbaa !283
  %20 = zext i32 %19 to i64, !dbg !284
  %cmp = icmp ult i64 %indvars.iv.next, %20, !dbg !284
  br i1 %cmp, label %for.body, label %for.cond.cleanup, !dbg !285, !llvm.loop !312
}

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: nounwind
declare !dbg !315 dso_local i32 @pthread_mutex_lock(%union.pthread_mutex_t* noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare !dbg !321 dso_local i8* @memcpy(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare !dbg !329 dso_local i32 @pthread_mutex_unlock(%union.pthread_mutex_t* noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @extstore_get_page_data(i8* noundef %ptr, %struct.extstore_stats* nocapture noundef readonly %st) local_unnamed_addr #0 !dbg !330 {
entry:
  %gcov_ctr = load i64, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.18, i64 0, i64 0), align 8
  %0 = add i64 %gcov_ctr, 1
  store i64 %0, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.18, i64 0, i64 0), align 8
  call void @llvm.dbg.value(metadata i8* %ptr, metadata !332, metadata !DIExpression()), !dbg !335
  call void @llvm.dbg.value(metadata %struct.extstore_stats* %st, metadata !333, metadata !DIExpression()), !dbg !335
  call void @llvm.dbg.value(metadata i8* %ptr, metadata !334, metadata !DIExpression()), !dbg !335
  %stats_mutex = getelementptr inbounds i8, i8* %ptr, i64 144, !dbg !336
  %1 = bitcast i8* %stats_mutex to %union.pthread_mutex_t*, !dbg !336
  %call = tail call i32 @pthread_mutex_lock(%union.pthread_mutex_t* noundef nonnull %1) #12, !dbg !336
  %page_data = getelementptr inbounds %struct.extstore_stats, %struct.extstore_stats* %st, i64 0, i32 17, !dbg !337
  %2 = bitcast %struct.extstore_page_data** %page_data to i8**, !dbg !337
  %3 = load i8*, i8** %2, align 8, !dbg !337, !tbaa !338
  %page_data1 = getelementptr inbounds i8, i8* %ptr, i64 320, !dbg !339
  %4 = bitcast i8* %page_data1 to i8**, !dbg !339
  %5 = load i8*, i8** %4, align 8, !dbg !339, !tbaa !340
  %page_count = getelementptr inbounds i8, i8* %ptr, i64 124, !dbg !341
  %6 = bitcast i8* %page_count to i32*, !dbg !341
  %7 = load i32, i32* %6, align 4, !dbg !341, !tbaa !270
  %conv = zext i32 %7 to i64, !dbg !342
  %mul = mul nuw nsw i64 %conv, 24, !dbg !343
  %call2 = tail call i8* @memcpy(i8* noundef %3, i8* noundef %5, i64 noundef %mul) #12, !dbg !344
  %call4 = tail call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* noundef nonnull %1) #12, !dbg !345
  ret void, !dbg !346
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define dso_local i8* @extstore_err(i32 noundef %res) local_unnamed_addr #4 !dbg !347 {
entry:
  %gcov_ctr = load i64, i64* getelementptr inbounds ([8 x i64], [8 x i64]* @__llvm_gcov_ctr.19, i64 0, i64 0), align 16
  %0 = add i64 %gcov_ctr, 1
  store i64 %0, i64* getelementptr inbounds ([8 x i64], [8 x i64]* @__llvm_gcov_ctr.19, i64 0, i64 0), align 16
  call void @llvm.dbg.value(metadata i32 %res, metadata !353, metadata !DIExpression()), !dbg !355
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), metadata !354, metadata !DIExpression()), !dbg !355
  switch i32 %res, label %sw.epilog [
    i32 1, label %sw.bb
    i32 2, label %sw.bb1
    i32 3, label %sw.bb2
    i32 4, label %sw.bb3
    i32 5, label %sw.bb4
    i32 6, label %sw.bb5
    i32 7, label %sw.bb6
  ], !dbg !356

sw.bb:                                            ; preds = %entry
  %gcov_ctr7 = load i64, i64* getelementptr inbounds ([8 x i64], [8 x i64]* @__llvm_gcov_ctr.19, i64 0, i64 1), align 8, !dbg !357
  %1 = add i64 %gcov_ctr7, 1, !dbg !357
  store i64 %1, i64* getelementptr inbounds ([8 x i64], [8 x i64]* @__llvm_gcov_ctr.19, i64 0, i64 1), align 8, !dbg !357
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), metadata !354, metadata !DIExpression()), !dbg !355
  br label %sw.epilog, !dbg !359

sw.bb1:                                           ; preds = %entry
  %gcov_ctr8 = load i64, i64* getelementptr inbounds ([8 x i64], [8 x i64]* @__llvm_gcov_ctr.19, i64 0, i64 2), align 16, !dbg !360
  %2 = add i64 %gcov_ctr8, 1, !dbg !360
  store i64 %2, i64* getelementptr inbounds ([8 x i64], [8 x i64]* @__llvm_gcov_ctr.19, i64 0, i64 2), align 16, !dbg !360
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), metadata !354, metadata !DIExpression()), !dbg !355
  br label %sw.epilog, !dbg !361

sw.bb2:                                           ; preds = %entry
  %gcov_ctr9 = load i64, i64* getelementptr inbounds ([8 x i64], [8 x i64]* @__llvm_gcov_ctr.19, i64 0, i64 3), align 8, !dbg !362
  %3 = add i64 %gcov_ctr9, 1, !dbg !362
  store i64 %3, i64* getelementptr inbounds ([8 x i64], [8 x i64]* @__llvm_gcov_ctr.19, i64 0, i64 3), align 8, !dbg !362
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), metadata !354, metadata !DIExpression()), !dbg !355
  br label %sw.epilog, !dbg !363

sw.bb3:                                           ; preds = %entry
  %gcov_ctr10 = load i64, i64* getelementptr inbounds ([8 x i64], [8 x i64]* @__llvm_gcov_ctr.19, i64 0, i64 4), align 16, !dbg !364
  %4 = add i64 %gcov_ctr10, 1, !dbg !364
  store i64 %4, i64* getelementptr inbounds ([8 x i64], [8 x i64]* @__llvm_gcov_ctr.19, i64 0, i64 4), align 16, !dbg !364
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.4, i64 0, i64 0), metadata !354, metadata !DIExpression()), !dbg !355
  br label %sw.epilog, !dbg !365

sw.bb4:                                           ; preds = %entry
  %gcov_ctr11 = load i64, i64* getelementptr inbounds ([8 x i64], [8 x i64]* @__llvm_gcov_ctr.19, i64 0, i64 5), align 8, !dbg !366
  %5 = add i64 %gcov_ctr11, 1, !dbg !366
  store i64 %5, i64* getelementptr inbounds ([8 x i64], [8 x i64]* @__llvm_gcov_ctr.19, i64 0, i64 5), align 8, !dbg !366
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.5, i64 0, i64 0), metadata !354, metadata !DIExpression()), !dbg !355
  br label %sw.epilog, !dbg !367

sw.bb5:                                           ; preds = %entry
  %gcov_ctr12 = load i64, i64* getelementptr inbounds ([8 x i64], [8 x i64]* @__llvm_gcov_ctr.19, i64 0, i64 6), align 16, !dbg !368
  %6 = add i64 %gcov_ctr12, 1, !dbg !368
  store i64 %6, i64* getelementptr inbounds ([8 x i64], [8 x i64]* @__llvm_gcov_ctr.19, i64 0, i64 6), align 16, !dbg !368
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i64 0, i64 0), metadata !354, metadata !DIExpression()), !dbg !355
  br label %sw.epilog, !dbg !369

sw.bb6:                                           ; preds = %entry
  %gcov_ctr13 = load i64, i64* getelementptr inbounds ([8 x i64], [8 x i64]* @__llvm_gcov_ctr.19, i64 0, i64 7), align 8, !dbg !370
  %7 = add i64 %gcov_ctr13, 1, !dbg !370
  store i64 %7, i64* getelementptr inbounds ([8 x i64], [8 x i64]* @__llvm_gcov_ctr.19, i64 0, i64 7), align 8, !dbg !370
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i64 0, i64 0), metadata !354, metadata !DIExpression()), !dbg !355
  br label %sw.epilog, !dbg !371

sw.epilog:                                        ; preds = %entry, %sw.bb6, %sw.bb5, %sw.bb4, %sw.bb3, %sw.bb2, %sw.bb1, %sw.bb
  %rv.0 = phi i8* [ getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), %entry ], [ getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i64 0, i64 0), %sw.bb6 ], [ getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i64 0, i64 0), %sw.bb5 ], [ getelementptr inbounds ([73 x i8], [73 x i8]* @.str.5, i64 0, i64 0), %sw.bb4 ], [ getelementptr inbounds ([57 x i8], [57 x i8]* @.str.4, i64 0, i64 0), %sw.bb3 ], [ getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), %sw.bb2 ], [ getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), %sw.bb1 ], [ getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), %sw.bb ], !dbg !355
  call void @llvm.dbg.value(metadata i8* %rv.0, metadata !354, metadata !DIExpression()), !dbg !355
  ret i8* %rv.0, !dbg !372
}

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @extstore_init(%struct.extstore_conf_file* noundef %fh, %struct.extstore_conf* nocapture noundef readonly %cf, i32* nocapture noundef writeonly %res) local_unnamed_addr #0 !dbg !373 {
entry:
  %thread = alloca i64, align 8
  %lock = alloca %struct.flock, align 8
  call void @llvm.dbg.value(metadata %struct.extstore_conf_file* %fh, metadata !399, metadata !DIExpression()), !dbg !433
  call void @llvm.dbg.value(metadata %struct.extstore_conf* %cf, metadata !400, metadata !DIExpression()), !dbg !433
  call void @llvm.dbg.value(metadata i32* %res, metadata !401, metadata !DIExpression()), !dbg !433
  call void @llvm.dbg.value(metadata %struct.extstore_conf_file* null, metadata !403, metadata !DIExpression()), !dbg !433
  %0 = bitcast i64* %thread to i8*, !dbg !434
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #13, !dbg !434
  %page_size = getelementptr inbounds %struct.extstore_conf, %struct.extstore_conf* %cf, i64 0, i32 0, !dbg !435
  %1 = load i32, i32* %page_size, align 4, !dbg !435, !tbaa !437
  %wbuf_size = getelementptr inbounds %struct.extstore_conf, %struct.extstore_conf* %cf, i64 0, i32 4, !dbg !439
  %2 = load i32, i32* %wbuf_size, align 4, !dbg !439, !tbaa !440
  %rem = urem i32 %1, %2, !dbg !441
  %cmp.not = icmp eq i32 %rem, 0, !dbg !442
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !443

if.then:                                          ; preds = %entry
  %gcov_ctr = load i64, i64* getelementptr inbounds ([22 x i64], [22 x i64]* @__llvm_gcov_ctr.20, i64 0, i64 0), align 16, !dbg !444
  %3 = add i64 %gcov_ctr, 1, !dbg !444
  store i64 %3, i64* getelementptr inbounds ([22 x i64], [22 x i64]* @__llvm_gcov_ctr.20, i64 0, i64 0), align 16, !dbg !444
  store i32 1, i32* %res, align 4, !dbg !446, !tbaa !447
  br label %cleanup227, !dbg !448

if.end:                                           ; preds = %entry
  %page_buckets = getelementptr inbounds %struct.extstore_conf, %struct.extstore_conf* %cf, i64 0, i32 2, !dbg !449
  %4 = load i32, i32* %page_buckets, align 4, !dbg !449, !tbaa !451
  %wbuf_count = getelementptr inbounds %struct.extstore_conf, %struct.extstore_conf* %cf, i64 0, i32 5, !dbg !452
  %5 = load i32, i32* %wbuf_count, align 4, !dbg !452, !tbaa !453
  %cmp1 = icmp ugt i32 %4, %5, !dbg !454
  br i1 %cmp1, label %if.then2, label %if.end3, !dbg !455

if.then2:                                         ; preds = %if.end
  %gcov_ctr230 = load i64, i64* getelementptr inbounds ([22 x i64], [22 x i64]* @__llvm_gcov_ctr.20, i64 0, i64 1), align 8, !dbg !456
  %6 = add i64 %gcov_ctr230, 1, !dbg !456
  store i64 %6, i64* getelementptr inbounds ([22 x i64], [22 x i64]* @__llvm_gcov_ctr.20, i64 0, i64 1), align 8, !dbg !456
  store i32 2, i32* %res, align 4, !dbg !458, !tbaa !447
  br label %cleanup227, !dbg !459

if.end3:                                          ; preds = %if.end
  %cmp5 = icmp eq i32 %4, 0, !dbg !460
  br i1 %cmp5, label %if.then6, label %if.end7, !dbg !462

if.then6:                                         ; preds = %if.end3
  %gcov_ctr231 = load i64, i64* getelementptr inbounds ([22 x i64], [22 x i64]* @__llvm_gcov_ctr.20, i64 0, i64 2), align 16, !dbg !463
  %7 = add i64 %gcov_ctr231, 1, !dbg !463
  store i64 %7, i64* getelementptr inbounds ([22 x i64], [22 x i64]* @__llvm_gcov_ctr.20, i64 0, i64 2), align 16, !dbg !463
  store i32 3, i32* %res, align 4, !dbg !465, !tbaa !447
  br label %cleanup227, !dbg !466

if.end7:                                          ; preds = %if.end3
  %rem9 = and i32 %1, 2097151, !dbg !467
  %cmp10.not = icmp eq i32 %rem9, 0, !dbg !469
  br i1 %cmp10.not, label %lor.lhs.false, label %if.then14, !dbg !470

lor.lhs.false:                                    ; preds = %if.end7
  %gcov_ctr232 = load i64, i64* getelementptr inbounds ([22 x i64], [22 x i64]* @__llvm_gcov_ctr.20, i64 0, i64 3), align 8, !dbg !471
  %8 = add i64 %gcov_ctr232, 1, !dbg !471
  store i64 %8, i64* getelementptr inbounds ([22 x i64], [22 x i64]* @__llvm_gcov_ctr.20, i64 0, i64 3), align 8, !dbg !471
  %9 = load i32, i32* %wbuf_size, align 4, !dbg !472, !tbaa !440
  %rem12 = and i32 %9, 2097151, !dbg !473
  %cmp13.not = icmp eq i32 %rem12, 0, !dbg !474
  br i1 %cmp13.not, label %if.end15, label %if.then14, !dbg !475

if.then14:                                        ; preds = %lor.lhs.false, %if.end7
  %gcov_ctr233 = load i64, i64* getelementptr inbounds ([22 x i64], [22 x i64]* @__llvm_gcov_ctr.20, i64 0, i64 4), align 16, !dbg !476
  %10 = add i64 %gcov_ctr233, 1, !dbg !476
  store i64 %10, i64* getelementptr inbounds ([22 x i64], [22 x i64]* @__llvm_gcov_ctr.20, i64 0, i64 4), align 16, !dbg !476
  store i32 4, i32* %res, align 4, !dbg !478, !tbaa !447
  br label %cleanup227, !dbg !479

if.end15:                                         ; preds = %lor.lhs.false
  %call = tail call noalias i8* @calloc(i64 noundef 1, i64 noundef 328) #12, !dbg !480
  call void @llvm.dbg.value(metadata i8* %call, metadata !406, metadata !DIExpression()), !dbg !433
  %cmp16 = icmp eq i8* %call, null, !dbg !481
  br i1 %cmp16, label %if.then17, label %if.end18, !dbg !483

if.then17:                                        ; preds = %if.end15
  %gcov_ctr235 = load i64, i64* getelementptr inbounds ([22 x i64], [22 x i64]* @__llvm_gcov_ctr.20, i64 0, i64 6), align 16, !dbg !484
  %11 = add i64 %gcov_ctr235, 1, !dbg !484
  store i64 %11, i64* getelementptr inbounds ([22 x i64], [22 x i64]* @__llvm_gcov_ctr.20, i64 0, i64 6), align 16, !dbg !484
  store i32 6, i32* %res, align 4, !dbg !486, !tbaa !447
  br label %cleanup227, !dbg !487

if.end18:                                         ; preds = %if.end15
  %gcov_ctr234 = load i64, i64* getelementptr inbounds ([22 x i64], [22 x i64]* @__llvm_gcov_ctr.20, i64 0, i64 5), align 8, !dbg !488
  %12 = add i64 %gcov_ctr234, 1, !dbg !488
  store i64 %12, i64* getelementptr inbounds ([22 x i64], [22 x i64]* @__llvm_gcov_ctr.20, i64 0, i64 5), align 8, !dbg !488
  %13 = load i32, i32* %page_size, align 4, !dbg !489, !tbaa !437
  %conv = zext i32 %13 to i64, !dbg !488
  %page_size20 = getelementptr inbounds i8, i8* %call, i64 104, !dbg !490
  %14 = bitcast i8* %page_size20 to i64*, !dbg !490
  store i64 %conv, i64* %14, align 8, !dbg !491, !tbaa !289
  call void @llvm.dbg.value(metadata i64 0, metadata !407, metadata !DIExpression()), !dbg !433
  call void @llvm.dbg.value(metadata %struct.extstore_conf_file* %fh, metadata !403, metadata !DIExpression()), !dbg !433
  %cmp21.not405 = icmp eq %struct.extstore_conf_file* %fh, null, !dbg !492
  br i1 %cmp21.not405, label %if.end45, label %for.body.lr.ph, !dbg !493

for.body.lr.ph:                                   ; preds = %if.end18
  %15 = bitcast %struct.flock* %lock to i8*
  %l_type = getelementptr inbounds %struct.flock, %struct.flock* %lock, i64 0, i32 0
  %l_start = getelementptr inbounds %struct.flock, %struct.flock* %lock, i64 0, i32 2
  %l_whence = getelementptr inbounds %struct.flock, %struct.flock* %lock, i64 0, i32 1
  %16 = bitcast i64* %l_start to <2 x i64>*
  br label %for.body, !dbg !493

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %f.0407 = phi %struct.extstore_conf_file* [ %fh, %for.body.lr.ph ], [ %24, %for.inc ]
  %temp_page_count.0406 = phi i64 [ 0, %for.body.lr.ph ], [ %add, %for.inc ]
  call void @llvm.dbg.value(metadata %struct.extstore_conf_file* %f.0407, metadata !403, metadata !DIExpression()), !dbg !433
  call void @llvm.dbg.value(metadata i64 %temp_page_count.0406, metadata !407, metadata !DIExpression()), !dbg !433
  %file = getelementptr inbounds %struct.extstore_conf_file, %struct.extstore_conf_file* %f.0407, i64 0, i32 1, !dbg !494
  %17 = load i8*, i8** %file, align 8, !dbg !494, !tbaa !495
  %call23 = call i32 (i8*, i32, ...) @open(i8* noundef %17, i32 noundef 66, i32 noundef 420) #12, !dbg !497
  %fd = getelementptr inbounds %struct.extstore_conf_file, %struct.extstore_conf_file* %f.0407, i64 0, i32 2, !dbg !498
  store i32 %call23, i32* %fd, align 8, !dbg !499, !tbaa !500
  %cmp25 = icmp slt i32 %call23, 0, !dbg !501
  br i1 %cmp25, label %if.then27, label %if.end28, !dbg !503

if.then27:                                        ; preds = %for.body
  %gcov_ctr236 = load i64, i64* getelementptr inbounds ([22 x i64], [22 x i64]* @__llvm_gcov_ctr.20, i64 0, i64 7), align 8, !dbg !504
  %18 = add i64 %gcov_ctr236, 1, !dbg !504
  store i64 %18, i64* getelementptr inbounds ([22 x i64], [22 x i64]* @__llvm_gcov_ctr.20, i64 0, i64 7), align 8, !dbg !504
  store i32 7, i32* %res, align 4, !dbg !506, !tbaa !447
  call void @free(i8* noundef %call) #12, !dbg !507
  br label %cleanup227, !dbg !508

if.end28:                                         ; preds = %for.body
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %15) #13, !dbg !509
  call void @llvm.dbg.declare(metadata %struct.flock* %lock, metadata !408, metadata !DIExpression()), !dbg !510
  store i16 1, i16* %l_type, align 8, !dbg !511, !tbaa !512
  store i16 0, i16* %l_whence, align 2, !dbg !515, !tbaa !516
  store <2 x i64> zeroinitializer, <2 x i64>* %16, align 8, !dbg !517, !tbaa !518
  %call30 = call i32 (i32, i32, ...) @fcntl(i32 noundef %call23, i32 noundef 6, %struct.flock* noundef nonnull %lock) #12, !dbg !519
  %cmp31 = icmp slt i32 %call30, 0, !dbg !521
  br i1 %cmp31, label %if.then33, label %if.end34, !dbg !522

if.then33:                                        ; preds = %if.end28
  %gcov_ctr237 = load i64, i64* getelementptr inbounds ([22 x i64], [22 x i64]* @__llvm_gcov_ctr.20, i64 0, i64 8), align 16, !dbg !523
  %19 = add i64 %gcov_ctr237, 1, !dbg !523
  store i64 %19, i64* getelementptr inbounds ([22 x i64], [22 x i64]* @__llvm_gcov_ctr.20, i64 0, i64 8), align 16, !dbg !523
  br label %cleanup.thread, !dbg !525

if.end34:                                         ; preds = %if.end28
  %20 = load i32, i32* %fd, align 8, !dbg !526, !tbaa !500
  %call36 = call i32 @ftruncate(i32 noundef %20, i64 noundef 0) #12, !dbg !528
  %cmp37 = icmp slt i32 %call36, 0, !dbg !529
  br i1 %cmp37, label %if.then39, label %for.inc, !dbg !530

if.then39:                                        ; preds = %if.end34
  %gcov_ctr238 = load i64, i64* getelementptr inbounds ([22 x i64], [22 x i64]* @__llvm_gcov_ctr.20, i64 0, i64 9), align 8, !dbg !531
  %21 = add i64 %gcov_ctr238, 1, !dbg !531
  store i64 %21, i64* getelementptr inbounds ([22 x i64], [22 x i64]* @__llvm_gcov_ctr.20, i64 0, i64 9), align 8, !dbg !531
  br label %cleanup.thread, !dbg !533

cleanup.thread:                                   ; preds = %if.then39, %if.then33
  store i32 7, i32* %res, align 4, !dbg !534, !tbaa !447
  call void @free(i8* noundef %call) #12, !dbg !534
  call void @llvm.dbg.value(metadata i64 %add, metadata !407, metadata !DIExpression()), !dbg !433
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %15) #13, !dbg !535
  br label %cleanup227

for.inc:                                          ; preds = %if.end34
  %gcov_ctr239 = load i64, i64* getelementptr inbounds ([22 x i64], [22 x i64]* @__llvm_gcov_ctr.20, i64 0, i64 10), align 16, !dbg !536
  %22 = add i64 %gcov_ctr239, 1, !dbg !536
  store i64 %22, i64* getelementptr inbounds ([22 x i64], [22 x i64]* @__llvm_gcov_ctr.20, i64 0, i64 10), align 16, !dbg !536
  %page_count = getelementptr inbounds %struct.extstore_conf_file, %struct.extstore_conf_file* %f.0407, i64 0, i32 0, !dbg !537
  %23 = load i32, i32* %page_count, align 8, !dbg !537, !tbaa !538
  %conv41 = zext i32 %23 to i64, !dbg !536
  %add = add i64 %temp_page_count.0406, %conv41, !dbg !539
  call void @llvm.dbg.value(metadata i64 %add, metadata !407, metadata !DIExpression()), !dbg !433
  %offset = getelementptr inbounds %struct.extstore_conf_file, %struct.extstore_conf_file* %f.0407, i64 0, i32 3, !dbg !540
  store i64 0, i64* %offset, align 8, !dbg !541, !tbaa !542
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %15) #13, !dbg !535
  %next = getelementptr inbounds %struct.extstore_conf_file, %struct.extstore_conf_file* %f.0407, i64 0, i32 6, !dbg !543
  %24 = load %struct.extstore_conf_file*, %struct.extstore_conf_file** %next, align 8, !dbg !543, !tbaa !544
  call void @llvm.dbg.value(metadata %struct.extstore_conf_file* %24, metadata !403, metadata !DIExpression()), !dbg !433
  %cmp21.not = icmp eq %struct.extstore_conf_file* %24, null, !dbg !492
  br i1 %cmp21.not, label %for.end, label %for.body, !dbg !493, !llvm.loop !545

for.end:                                          ; preds = %for.inc
  %cmp42 = icmp ugt i64 %add, 65534, !dbg !547
  br i1 %cmp42, label %if.then44, label %if.end45, !dbg !549

if.then44:                                        ; preds = %for.end
  %gcov_ctr240 = load i64, i64* getelementptr inbounds ([22 x i64], [22 x i64]* @__llvm_gcov_ctr.20, i64 0, i64 11), align 8, !dbg !550
  %25 = add i64 %gcov_ctr240, 1, !dbg !550
  store i64 %25, i64* getelementptr inbounds ([22 x i64], [22 x i64]* @__llvm_gcov_ctr.20, i64 0, i64 11), align 8, !dbg !550
  store i32 5, i32* %res, align 4, !dbg !552, !tbaa !447
  call void @free(i8* noundef %call) #12, !dbg !553
  br label %cleanup227, !dbg !554

if.end45:                                         ; preds = %if.end18, %for.end
  %temp_page_count.0.lcssa429 = phi i64 [ %add, %for.end ], [ 0, %if.end18 ]
  %conv46 = trunc i64 %temp_page_count.0.lcssa429 to i32, !dbg !555
  %page_count47 = getelementptr inbounds i8, i8* %call, i64 124, !dbg !556
  %26 = bitcast i8* %page_count47 to i32*, !dbg !556
  store i32 %conv46, i32* %26, align 4, !dbg !557, !tbaa !270
  %call50 = call noalias i8* @calloc(i64 noundef %temp_page_count.0.lcssa429, i64 noundef 120) #12, !dbg !558
  %pages = getelementptr inbounds i8, i8* %call, i64 40, !dbg !559
  %27 = bitcast i8* %pages to %struct._store_page**, !dbg !559
  %28 = bitcast i8* %pages to i8**, !dbg !560
  store i8* %call50, i8** %28, align 8, !dbg !560, !tbaa !561
  %cmp52 = icmp eq i8* %call50, null, !dbg !562
  br i1 %cmp52, label %if.then54, label %for.cond56.preheader, !dbg !564

for.cond56.preheader:                             ; preds = %if.end45
  call void @llvm.dbg.value(metadata i32 0, metadata !402, metadata !DIExpression()), !dbg !433
  call void @llvm.dbg.value(metadata %struct.extstore_conf_file* null, metadata !403, metadata !DIExpression()), !dbg !433
  %29 = load i32, i32* %26, align 4, !dbg !565, !tbaa !270
  %cmp58409.not = icmp eq i32 %29, 0, !dbg !568
  br i1 %cmp58409.not, label %for.end101, label %for.body60.preheader, !dbg !569

for.body60.preheader:                             ; preds = %for.cond56.preheader
  %30 = bitcast i8* %call50 to %struct._store_page*, !dbg !564
  br label %for.body60, !dbg !569

if.then54:                                        ; preds = %if.end45
  %gcov_ctr241 = load i64, i64* getelementptr inbounds ([22 x i64], [22 x i64]* @__llvm_gcov_ctr.20, i64 0, i64 12), align 16, !dbg !570
  %31 = add i64 %gcov_ctr241, 1, !dbg !570
  store i64 %31, i64* getelementptr inbounds ([22 x i64], [22 x i64]* @__llvm_gcov_ctr.20, i64 0, i64 12), align 16, !dbg !570
  store i32 6, i32* %res, align 4, !dbg !572, !tbaa !447
  call void @free(i8* noundef nonnull %call) #12, !dbg !573
  br label %cleanup227, !dbg !574

for.body60:                                       ; preds = %for.body60.preheader, %if.then71
  %32 = phi %struct._store_page* [ %40, %if.then71 ], [ %30, %for.body60.preheader ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %if.then71 ], [ 0, %for.body60.preheader ]
  %f.1410 = phi %struct.extstore_conf_file* [ %f.3, %if.then71 ], [ null, %for.body60.preheader ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !402, metadata !DIExpression()), !dbg !433
  call void @llvm.dbg.value(metadata %struct.extstore_conf_file* %f.1410, metadata !403, metadata !DIExpression()), !dbg !433
  %gcov_ctr242 = load i64, i64* getelementptr inbounds ([22 x i64], [22 x i64]* @__llvm_gcov_ctr.20, i64 0, i64 13), align 8, !dbg !575
  %33 = add i64 %gcov_ctr242, 1, !dbg !575
  store i64 %33, i64* getelementptr inbounds ([22 x i64], [22 x i64]* @__llvm_gcov_ctr.20, i64 0, i64 13), align 8, !dbg !575
  br label %while.cond, !dbg !575

while.cond:                                       ; preds = %if.end69, %for.body60
  %f.2 = phi %struct.extstore_conf_file* [ %f.1410, %for.body60 ], [ %f.3, %if.end69 ], !dbg !433
  call void @llvm.dbg.value(metadata %struct.extstore_conf_file* %f.2, metadata !403, metadata !DIExpression()), !dbg !433
  %cmp61 = icmp eq %struct.extstore_conf_file* %f.2, null, !dbg !577
  br i1 %cmp61, label %if.then67, label %lor.lhs.false63, !dbg !580

lor.lhs.false63:                                  ; preds = %while.cond
  %gcov_ctr243 = load i64, i64* getelementptr inbounds ([22 x i64], [22 x i64]* @__llvm_gcov_ctr.20, i64 0, i64 14), align 16, !dbg !581
  %34 = add i64 %gcov_ctr243, 1, !dbg !581
  store i64 %34, i64* getelementptr inbounds ([22 x i64], [22 x i64]* @__llvm_gcov_ctr.20, i64 0, i64 14), align 16, !dbg !581
  %next64 = getelementptr inbounds %struct.extstore_conf_file, %struct.extstore_conf_file* %f.2, i64 0, i32 6, !dbg !582
  %35 = load %struct.extstore_conf_file*, %struct.extstore_conf_file** %next64, align 8, !dbg !582, !tbaa !544
  %cmp65 = icmp eq %struct.extstore_conf_file* %35, null, !dbg !583
  br i1 %cmp65, label %if.then67, label %if.else, !dbg !584

if.then67:                                        ; preds = %lor.lhs.false63, %while.cond
  %gcov_ctr244 = load i64, i64* getelementptr inbounds ([22 x i64], [22 x i64]* @__llvm_gcov_ctr.20, i64 0, i64 15), align 8, !dbg !585
  %36 = add i64 %gcov_ctr244, 1, !dbg !585
  store i64 %36, i64* getelementptr inbounds ([22 x i64], [22 x i64]* @__llvm_gcov_ctr.20, i64 0, i64 15), align 8, !dbg !585
  call void @llvm.dbg.value(metadata %struct.extstore_conf_file* %fh, metadata !403, metadata !DIExpression()), !dbg !433
  br label %if.end69, !dbg !587

if.else:                                          ; preds = %lor.lhs.false63
  %gcov_ctr245 = load i64, i64* getelementptr inbounds ([22 x i64], [22 x i64]* @__llvm_gcov_ctr.20, i64 0, i64 16), align 16, !dbg !588
  %37 = add i64 %gcov_ctr245, 1, !dbg !588
  store i64 %37, i64* getelementptr inbounds ([22 x i64], [22 x i64]* @__llvm_gcov_ctr.20, i64 0, i64 16), align 16, !dbg !588
  %38 = load %struct.extstore_conf_file*, %struct.extstore_conf_file** %next64, align 8, !dbg !590, !tbaa !544
  call void @llvm.dbg.value(metadata %struct.extstore_conf_file* %38, metadata !403, metadata !DIExpression()), !dbg !433
  br label %if.end69

if.end69:                                         ; preds = %if.else, %if.then67
  %f.3 = phi %struct.extstore_conf_file* [ %fh, %if.then67 ], [ %38, %if.else ], !dbg !591
  call void @llvm.dbg.value(metadata %struct.extstore_conf_file* %f.3, metadata !403, metadata !DIExpression()), !dbg !433
  %page_count70 = getelementptr inbounds %struct.extstore_conf_file, %struct.extstore_conf_file* %f.3, i64 0, i32 0, !dbg !592
  %39 = load i32, i32* %page_count70, align 8, !dbg !592, !tbaa !538
  %tobool.not = icmp eq i32 %39, 0, !dbg !594
  br i1 %tobool.not, label %while.cond, label %if.then71, !dbg !595, !llvm.loop !596

if.then71:                                        ; preds = %if.end69
  %page_count70.le = getelementptr inbounds %struct.extstore_conf_file, %struct.extstore_conf_file* %f.3, i64 0, i32 0, !dbg !592
  %dec = add i32 %39, -1, !dbg !598
  store i32 %dec, i32* %page_count70.le, align 8, !dbg !598, !tbaa !538
  %mutex = getelementptr inbounds %struct._store_page, %struct._store_page* %32, i64 %indvars.iv, i32 0, !dbg !600
  %call75 = call i32 @pthread_mutex_init(%union.pthread_mutex_t* noundef %mutex, %union.pthread_mutexattr_t* noundef null) #12, !dbg !601
  %conv76 = trunc i64 %indvars.iv to i16, !dbg !602
  %40 = load %struct._store_page*, %struct._store_page** %27, align 8, !dbg !603, !tbaa !561
  %id = getelementptr inbounds %struct._store_page, %struct._store_page* %40, i64 %indvars.iv, i32 11, !dbg !604
  store i16 %conv76, i16* %id, align 4, !dbg !605, !tbaa !606
  %fd80 = getelementptr inbounds %struct.extstore_conf_file, %struct.extstore_conf_file* %f.3, i64 0, i32 2, !dbg !609
  %41 = load i32, i32* %fd80, align 8, !dbg !609, !tbaa !500
  %fd84 = getelementptr inbounds %struct._store_page, %struct._store_page* %40, i64 %indvars.iv, i32 10, !dbg !610
  store i32 %41, i32* %fd84, align 8, !dbg !611, !tbaa !612
  %free_bucket = getelementptr inbounds %struct.extstore_conf_file, %struct.extstore_conf_file* %f.3, i64 0, i32 5, !dbg !613
  %42 = load i32, i32* %free_bucket, align 4, !dbg !613, !tbaa !614
  %free_bucket88 = getelementptr inbounds %struct._store_page, %struct._store_page* %40, i64 %indvars.iv, i32 9, !dbg !615
  store i32 %42, i32* %free_bucket88, align 4, !dbg !616, !tbaa !617
  %offset89 = getelementptr inbounds %struct.extstore_conf_file, %struct.extstore_conf_file* %f.3, i64 0, i32 3, !dbg !618
  %43 = load i64, i64* %offset89, align 8, !dbg !618, !tbaa !542
  %offset93 = getelementptr inbounds %struct._store_page, %struct._store_page* %40, i64 %indvars.iv, i32 3, !dbg !619
  store i64 %43, i64* %offset93, align 8, !dbg !620, !tbaa !621
  %free = getelementptr inbounds %struct._store_page, %struct._store_page* %40, i64 %indvars.iv, i32 14, !dbg !622
  store i8 1, i8* %free, align 8, !dbg !623, !tbaa !624
  %44 = load i64, i64* %14, align 8, !dbg !625, !tbaa !289
  %add99 = add i64 %44, %43, !dbg !626
  store i64 %add99, i64* %offset89, align 8, !dbg !626, !tbaa !542
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !627
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !402, metadata !DIExpression()), !dbg !433
  call void @llvm.dbg.value(metadata %struct.extstore_conf_file* %f.3, metadata !403, metadata !DIExpression()), !dbg !433
  %45 = load i32, i32* %26, align 4, !dbg !565, !tbaa !270
  %46 = zext i32 %45 to i64, !dbg !568
  %cmp58 = icmp ult i64 %indvars.iv.next, %46, !dbg !568
  br i1 %cmp58, label %for.body60, label %for.end101, !dbg !569, !llvm.loop !628

for.end101:                                       ; preds = %if.then71, %for.cond56.preheader
  %47 = load i32, i32* %page_buckets, align 4, !dbg !630, !tbaa !451
  %conv103 = zext i32 %47 to i64, !dbg !631
  %call104 = call noalias i8* @calloc(i64 noundef %conv103, i64 noundef 8) #12, !dbg !632
  %free_page_buckets = getelementptr inbounds i8, i8* %call, i64 96, !dbg !633
  %48 = bitcast i8* %free_page_buckets to %struct._store_page***, !dbg !633
  %49 = bitcast i8* %free_page_buckets to i8**, !dbg !634
  store i8* %call104, i8** %49, align 8, !dbg !634, !tbaa !635
  %50 = load i32, i32* %page_buckets, align 4, !dbg !636, !tbaa !451
  %page_bucketcount = getelementptr inbounds i8, i8* %call, i64 132, !dbg !637
  %51 = bitcast i8* %page_bucketcount to i32*, !dbg !637
  store i32 %50, i32* %51, align 4, !dbg !638, !tbaa !639
  %52 = load i32, i32* %26, align 4, !dbg !640, !tbaa !270
  call void @llvm.dbg.value(metadata i32 %52, metadata !402, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !433
  %i.1412 = add i32 %52, -1, !dbg !641
  call void @llvm.dbg.value(metadata i32 %i.1412, metadata !402, metadata !DIExpression()), !dbg !433
  %cmp108413 = icmp sgt i32 %i.1412, 0, !dbg !642
  br i1 %cmp108413, label %for.body110.lr.ph, label %for.end148, !dbg !643

for.body110.lr.ph:                                ; preds = %for.end101
  %page_free = getelementptr inbounds i8, i8* %call, i64 128
  %53 = bitcast i8* %page_free to i32*
  %page_freelist = getelementptr inbounds i8, i8* %call, i64 80
  %54 = bitcast i8* %page_freelist to %struct._store_page**
  %.promoted = load i32, i32* %53, align 8, !tbaa !257
  %55 = zext i32 %i.1412 to i64, !dbg !643
  %56 = add i32 %52, %.promoted, !dbg !643
  br label %for.body110, !dbg !643

for.body110:                                      ; preds = %for.body110.lr.ph, %for.inc146
  %indvars.iv420 = phi i64 [ %55, %for.body110.lr.ph ], [ %indvars.iv.next421, %for.inc146 ], !dbg !644
  %57 = load %struct._store_page*, %struct._store_page** %27, align 8, !dbg !645, !tbaa !561
  %free_bucket115 = getelementptr inbounds %struct._store_page, %struct._store_page* %57, i64 %indvars.iv420, i32 9, !dbg !646
  %58 = load i32, i32* %free_bucket115, align 4, !dbg !646, !tbaa !617
  %cmp116 = icmp eq i32 %58, 0, !dbg !647
  br i1 %cmp116, label %if.then118, label %if.else127, !dbg !648

if.then118:                                       ; preds = %for.body110
  %gcov_ctr246 = load i64, i64* getelementptr inbounds ([22 x i64], [22 x i64]* @__llvm_gcov_ctr.20, i64 0, i64 17), align 8, !dbg !649
  %59 = add i64 %gcov_ctr246, 1, !dbg !649
  store i64 %59, i64* getelementptr inbounds ([22 x i64], [22 x i64]* @__llvm_gcov_ctr.20, i64 0, i64 17), align 8, !dbg !649
  br label %for.inc146, !dbg !651

if.else127:                                       ; preds = %for.body110
  %gcov_ctr247 = load i64, i64* getelementptr inbounds ([22 x i64], [22 x i64]* @__llvm_gcov_ctr.20, i64 0, i64 18), align 16, !dbg !652
  %60 = add i64 %gcov_ctr247, 1, !dbg !652
  store i64 %60, i64* getelementptr inbounds ([22 x i64], [22 x i64]* @__llvm_gcov_ctr.20, i64 0, i64 18), align 16, !dbg !652
  %61 = load i32, i32* %free_bucket115, align 4, !dbg !653, !tbaa !617
  call void @llvm.dbg.value(metadata i32 %61, metadata !422, metadata !DIExpression()), !dbg !654
  %62 = load %struct._store_page**, %struct._store_page*** %48, align 8, !dbg !655, !tbaa !635
  %idxprom133 = sext i32 %61 to i64, !dbg !656
  %arrayidx134 = getelementptr inbounds %struct._store_page*, %struct._store_page** %62, i64 %idxprom133, !dbg !656
  br label %for.inc146

for.inc146:                                       ; preds = %if.then118, %if.else127
  %.sink432 = phi %struct._store_page** [ %54, %if.then118 ], [ %arrayidx134, %if.else127 ]
  %63 = load %struct._store_page*, %struct._store_page** %.sink432, align 8, !dbg !657, !tbaa !658
  %next122 = getelementptr inbounds %struct._store_page, %struct._store_page* %57, i64 %indvars.iv420, i32 16, !dbg !657
  store %struct._store_page* %63, %struct._store_page** %next122, align 8, !dbg !657, !tbaa !659
  %arrayidx125 = getelementptr inbounds %struct._store_page, %struct._store_page* %57, i64 %indvars.iv420, !dbg !657
  store %struct._store_page* %arrayidx125, %struct._store_page** %.sink432, align 8, !dbg !657, !tbaa !658
  call void @llvm.dbg.value(metadata i64 %indvars.iv420, metadata !402, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !433
  %indvars.iv.next421 = add nsw i64 %indvars.iv420, -1, !dbg !641
  %indvars = trunc i64 %indvars.iv.next421 to i32, !dbg !641
  call void @llvm.dbg.value(metadata i32 %indvars, metadata !402, metadata !DIExpression()), !dbg !433
  %cmp108 = icmp sgt i32 %indvars, 0, !dbg !642
  br i1 %cmp108, label %for.body110, label %for.cond107.for.end148_crit_edge, !dbg !643, !llvm.loop !660

for.cond107.for.end148_crit_edge:                 ; preds = %for.inc146
  %64 = add i32 %56, -1, !dbg !643
  store i32 %64, i32* %53, align 8, !dbg !644, !tbaa !257
  br label %for.end148, !dbg !643

for.end148:                                       ; preds = %for.cond107.for.end148_crit_edge, %for.end101
  %version = getelementptr inbounds i8, i8* %call, i64 112, !dbg !662
  %65 = bitcast i8* %version to i32*, !dbg !662
  store i32 1, i32* %65, align 8, !dbg !663, !tbaa !664
  %conv150 = zext i32 %52 to i64, !dbg !665
  %call151 = call noalias i8* @calloc(i64 noundef %conv150, i64 noundef 24) #12, !dbg !666
  %page_data = getelementptr inbounds i8, i8* %call, i64 320, !dbg !667
  %66 = bitcast i8* %page_data to i8**, !dbg !668
  store i8* %call151, i8** %66, align 8, !dbg !668, !tbaa !340
  %67 = load i32, i32* %26, align 4, !dbg !669, !tbaa !270
  %conv153 = zext i32 %67 to i64, !dbg !670
  %page_count155 = getelementptr inbounds i8, i8* %call, i64 192, !dbg !671
  %68 = bitcast i8* %page_count155 to i64*, !dbg !671
  store i64 %conv153, i64* %68, align 8, !dbg !672, !tbaa !673
  %69 = load i64, i64* %14, align 8, !dbg !674, !tbaa !289
  %page_size158 = getelementptr inbounds i8, i8* %call, i64 216, !dbg !675
  %70 = bitcast i8* %page_size158 to i64*, !dbg !675
  store i64 %69, i64* %70, align 8, !dbg !676, !tbaa !677
  %71 = load i32, i32* %page_buckets, align 4, !dbg !678, !tbaa !451
  %conv160 = zext i32 %71 to i64, !dbg !679
  %call161 = call noalias i8* @calloc(i64 noundef %conv160, i64 noundef 8) #12, !dbg !680
  %page_buckets162 = getelementptr inbounds i8, i8* %call, i64 88, !dbg !681
  %72 = bitcast i8* %page_buckets162 to i8**, !dbg !682
  store i8* %call161, i8** %72, align 8, !dbg !682, !tbaa !683
  %73 = load i32, i32* %page_buckets, align 4, !dbg !684, !tbaa !451
  store i32 %73, i32* %51, align 4, !dbg !685, !tbaa !639
  call void @llvm.dbg.value(metadata i32 0, metadata !402, metadata !DIExpression()), !dbg !433
  %74 = load i32, i32* %wbuf_count, align 4, !dbg !686, !tbaa !453
  %cmp167415.not = icmp eq i32 %74, 0, !dbg !687
  br i1 %cmp167415.not, label %for.end180, label %for.body169.lr.ph, !dbg !688

for.body169.lr.ph:                                ; preds = %for.end148
  %wbuf_stack = getelementptr inbounds i8, i8* %call, i64 48
  %75 = bitcast i8* %wbuf_stack to %struct.__store_wbuf**
  %io_stack = getelementptr inbounds i8, i8* %call, i64 56
  %76 = bitcast i8* %io_stack to %struct._obj_io**
  %77 = bitcast i8* %io_stack to i8**
  br label %for.body169, !dbg !688

for.body169:                                      ; preds = %for.body169.lr.ph, %for.body169
  %i.2416 = phi i32 [ 0, %for.body169.lr.ph ], [ %inc179, %for.body169 ]
  call void @llvm.dbg.value(metadata i32 %i.2416, metadata !402, metadata !DIExpression()), !dbg !433
  %gcov_ctr248 = load i64, i64* getelementptr inbounds ([22 x i64], [22 x i64]* @__llvm_gcov_ctr.20, i64 0, i64 19), align 8, !dbg !689
  %78 = add i64 %gcov_ctr248, 1, !dbg !689
  store i64 %78, i64* getelementptr inbounds ([22 x i64], [22 x i64]* @__llvm_gcov_ctr.20, i64 0, i64 19), align 8, !dbg !689
  %79 = load i32, i32* %wbuf_size, align 4, !dbg !690, !tbaa !440
  %conv171 = zext i32 %79 to i64, !dbg !691
  %call172 = call fastcc %struct.__store_wbuf* @wbuf_new(i64 noundef %conv171) #14, !dbg !692
  call void @llvm.dbg.value(metadata %struct.__store_wbuf* %call172, metadata !428, metadata !DIExpression()), !dbg !693
  %call173 = call noalias i8* @calloc(i64 noundef 1, i64 noundef 64) #12, !dbg !694
  call void @llvm.dbg.value(metadata i8* %call173, metadata !432, metadata !DIExpression()), !dbg !693
  %80 = load %struct.__store_wbuf*, %struct.__store_wbuf** %75, align 8, !dbg !695, !tbaa !696
  %next174 = getelementptr inbounds %struct.__store_wbuf, %struct.__store_wbuf* %call172, i64 0, i32 0, !dbg !697
  store %struct.__store_wbuf* %80, %struct.__store_wbuf** %next174, align 8, !dbg !698, !tbaa !699
  store %struct.__store_wbuf* %call172, %struct.__store_wbuf** %75, align 8, !dbg !701, !tbaa !696
  %81 = load %struct._obj_io*, %struct._obj_io** %76, align 8, !dbg !702, !tbaa !703
  %next176 = getelementptr inbounds i8, i8* %call173, i64 8, !dbg !704
  %82 = bitcast i8* %next176 to %struct._obj_io**, !dbg !704
  store %struct._obj_io* %81, %struct._obj_io** %82, align 8, !dbg !705, !tbaa !706
  store i8* %call173, i8** %77, align 8, !dbg !708, !tbaa !703
  %inc179 = add nuw nsw i32 %i.2416, 1, !dbg !709
  call void @llvm.dbg.value(metadata i32 %inc179, metadata !402, metadata !DIExpression()), !dbg !433
  %83 = load i32, i32* %wbuf_count, align 4, !dbg !686, !tbaa !453
  %cmp167 = icmp ult i32 %inc179, %83, !dbg !687
  br i1 %cmp167, label %for.body169, label %for.end180, !dbg !688, !llvm.loop !710

for.end180:                                       ; preds = %for.body169, %for.end148
  %mutex181 = bitcast i8* %call to %union.pthread_mutex_t*, !dbg !712
  %call182 = call i32 @pthread_mutex_init(%union.pthread_mutex_t* noundef nonnull %mutex181, %union.pthread_mutexattr_t* noundef null) #12, !dbg !713
  %stats_mutex = getelementptr inbounds i8, i8* %call, i64 144, !dbg !714
  %84 = bitcast i8* %stats_mutex to %union.pthread_mutex_t*, !dbg !714
  %call183 = call i32 @pthread_mutex_init(%union.pthread_mutex_t* noundef nonnull %84, %union.pthread_mutexattr_t* noundef null) #12, !dbg !715
  %io_depth = getelementptr inbounds %struct.extstore_conf, %struct.extstore_conf* %cf, i64 0, i32 7, !dbg !716
  %85 = load i32, i32* %io_depth, align 4, !dbg !716, !tbaa !717
  %io_depth184 = getelementptr inbounds i8, i8* %call, i64 140, !dbg !718
  %86 = bitcast i8* %io_depth184 to i32*, !dbg !718
  store i32 %85, i32* %86, align 4, !dbg !719, !tbaa !720
  %io_threadcount = getelementptr inbounds %struct.extstore_conf, %struct.extstore_conf* %cf, i64 0, i32 6, !dbg !721
  %87 = load i32, i32* %io_threadcount, align 4, !dbg !721, !tbaa !722
  %conv185 = zext i32 %87 to i64, !dbg !723
  %call186 = call noalias i8* @calloc(i64 noundef %conv185, i64 noundef 120) #12, !dbg !724
  %io_threads = getelementptr inbounds i8, i8* %call, i64 64, !dbg !725
  %88 = bitcast i8* %io_threads to %struct.store_io_thread**, !dbg !725
  %89 = bitcast i8* %io_threads to i8**, !dbg !726
  store i8* %call186, i8** %89, align 8, !dbg !726, !tbaa !300
  call void @llvm.dbg.value(metadata i32 0, metadata !402, metadata !DIExpression()), !dbg !433
  %90 = load i32, i32* %io_threadcount, align 4, !dbg !727, !tbaa !722
  %cmp189417.not = icmp eq i32 %90, 0, !dbg !730
  br i1 %cmp189417.not, label %for.end211, label %for.body191.preheader, !dbg !731

for.body191.preheader:                            ; preds = %for.end180
  %91 = bitcast i8* %call186 to %struct.store_io_thread*, !dbg !731
  br label %for.body191, !dbg !731

for.body191:                                      ; preds = %for.body191.for.body191_crit_edge, %for.body191.preheader
  %92 = phi %struct.store_io_thread* [ %91, %for.body191.preheader ], [ %.pre, %for.body191.for.body191_crit_edge ], !dbg !732
  %indvars.iv423 = phi i64 [ 0, %for.body191.preheader ], [ %indvars.iv.next424, %for.body191.for.body191_crit_edge ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv423, metadata !402, metadata !DIExpression()), !dbg !433
  %gcov_ctr249 = load i64, i64* getelementptr inbounds ([22 x i64], [22 x i64]* @__llvm_gcov_ctr.20, i64 0, i64 20), align 16, !dbg !734
  %93 = add i64 %gcov_ctr249, 1, !dbg !734
  store i64 %93, i64* getelementptr inbounds ([22 x i64], [22 x i64]* @__llvm_gcov_ctr.20, i64 0, i64 20), align 16, !dbg !734
  %mutex195 = getelementptr inbounds %struct.store_io_thread, %struct.store_io_thread* %92, i64 %indvars.iv423, i32 0, !dbg !735
  %call196 = call i32 @pthread_mutex_init(%union.pthread_mutex_t* noundef %mutex195, %union.pthread_mutexattr_t* noundef null) #12, !dbg !736
  %94 = load %struct.store_io_thread*, %struct.store_io_thread** %88, align 8, !dbg !737, !tbaa !300
  %cond = getelementptr inbounds %struct.store_io_thread, %struct.store_io_thread* %94, i64 %indvars.iv423, i32 1, !dbg !738
  %call200 = call i32 @pthread_cond_init(%union.pthread_cond_t* noundef nonnull %cond, %union.pthread_condattr_t* noundef null) #12, !dbg !739
  %95 = load %struct.store_io_thread*, %struct.store_io_thread** %88, align 8, !dbg !740, !tbaa !300
  %e204 = getelementptr inbounds %struct.store_io_thread, %struct.store_io_thread* %95, i64 %indvars.iv423, i32 4, !dbg !741
  %96 = bitcast %struct.store_engine** %e204 to i8**, !dbg !742
  store i8* %call, i8** %96, align 8, !dbg !742, !tbaa !743
  %arrayidx207 = getelementptr inbounds %struct.store_io_thread, %struct.store_io_thread* %95, i64 %indvars.iv423, !dbg !744
  %97 = bitcast %struct.store_io_thread* %arrayidx207 to i8*, !dbg !745
  call void @llvm.dbg.value(metadata i64* %thread, metadata !404, metadata !DIExpression(DW_OP_deref)), !dbg !433
  %call208 = call i32 @pthread_create(i64* noundef nonnull %thread, %union.pthread_attr_t* noundef null, i8* (i8*)* noundef nonnull @extstore_io_thread, i8* noundef %97) #12, !dbg !746
  %indvars.iv.next424 = add nuw nsw i64 %indvars.iv423, 1, !dbg !747
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next424, metadata !402, metadata !DIExpression()), !dbg !433
  %98 = load i32, i32* %io_threadcount, align 4, !dbg !727, !tbaa !722
  %99 = zext i32 %98 to i64, !dbg !730
  %cmp189 = icmp ult i64 %indvars.iv.next424, %99, !dbg !730
  br i1 %cmp189, label %for.body191.for.body191_crit_edge, label %for.end211, !dbg !731, !llvm.loop !748

for.body191.for.body191_crit_edge:                ; preds = %for.body191
  %.pre = load %struct.store_io_thread*, %struct.store_io_thread** %88, align 8, !dbg !732, !tbaa !300
  br label %for.body191, !dbg !731

for.end211:                                       ; preds = %for.body191, %for.end180
  %gcov_ctr250 = load i64, i64* getelementptr inbounds ([22 x i64], [22 x i64]* @__llvm_gcov_ctr.20, i64 0, i64 21), align 8, !dbg !750
  %100 = add i64 %gcov_ctr250, 1, !dbg !750
  store i64 %100, i64* getelementptr inbounds ([22 x i64], [22 x i64]* @__llvm_gcov_ctr.20, i64 0, i64 21), align 8, !dbg !750
  %101 = load i32, i32* %io_threadcount, align 4, !dbg !751, !tbaa !722
  %io_threadcount213 = getelementptr inbounds i8, i8* %call, i64 120, !dbg !752
  %102 = bitcast i8* %io_threadcount213 to i32*, !dbg !752
  store i32 %101, i32* %102, align 8, !dbg !753, !tbaa !283
  %call214 = call noalias i8* @calloc(i64 noundef 1, i64 noundef 96) #12, !dbg !754
  %maint_thread = getelementptr inbounds i8, i8* %call, i64 72, !dbg !755
  %103 = bitcast i8* %maint_thread to %struct.store_maint_thread**, !dbg !755
  %104 = bitcast i8* %maint_thread to i8**, !dbg !756
  store i8* %call214, i8** %104, align 8, !dbg !756, !tbaa !757
  %e216 = getelementptr inbounds i8, i8* %call214, i64 88, !dbg !758
  %105 = bitcast i8* %e216 to i8**, !dbg !759
  store i8* %call, i8** %105, align 8, !dbg !759, !tbaa !760
  %mutex218 = bitcast i8* %call214 to %union.pthread_mutex_t*, !dbg !762
  %call219 = call i32 @pthread_mutex_init(%union.pthread_mutex_t* noundef %mutex218, %union.pthread_mutexattr_t* noundef null) #12, !dbg !763
  %106 = load %struct.store_maint_thread*, %struct.store_maint_thread** %103, align 8, !dbg !764, !tbaa !757
  %cond221 = getelementptr inbounds %struct.store_maint_thread, %struct.store_maint_thread* %106, i64 0, i32 1, !dbg !765
  %call222 = call i32 @pthread_cond_init(%union.pthread_cond_t* noundef nonnull %cond221, %union.pthread_condattr_t* noundef null) #12, !dbg !766
  %107 = load i8*, i8** %104, align 8, !dbg !767, !tbaa !757
  call void @llvm.dbg.value(metadata i64* %thread, metadata !404, metadata !DIExpression(DW_OP_deref)), !dbg !433
  %call224 = call i32 @pthread_create(i64* noundef nonnull %thread, %union.pthread_attr_t* noundef null, i8* (i8*)* noundef nonnull @extstore_maint_thread, i8* noundef %107) #12, !dbg !768
  call void @extstore_run_maint(i8* noundef nonnull %call) #14, !dbg !769
  br label %cleanup227, !dbg !770

cleanup227:                                       ; preds = %cleanup.thread, %if.then17, %for.end211, %if.then54, %if.then44, %if.then27, %if.then14, %if.then6, %if.then2, %if.then
  %retval.4 = phi i8* [ null, %if.then ], [ null, %if.then2 ], [ null, %if.then6 ], [ null, %if.then14 ], [ null, %if.then17 ], [ null, %if.then27 ], [ null, %if.then44 ], [ null, %if.then54 ], [ %call, %for.end211 ], [ null, %cleanup.thread ], !dbg !433
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #13, !dbg !771
  ret i8* %retval.4, !dbg !771
}

; Function Attrs: nounwind
declare !dbg !772 dso_local noalias i8* @calloc(i64 noundef, i64 noundef) local_unnamed_addr #3

declare !dbg !776 dso_local i32 @open(i8* noundef, i32 noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind
declare !dbg !780 dso_local void @free(i8* noundef) local_unnamed_addr #3

declare !dbg !783 dso_local i32 @fcntl(i32 noundef, i32 noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind
declare !dbg !786 dso_local i32 @ftruncate(i32 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare !dbg !790 dso_local i32 @pthread_mutex_init(%union.pthread_mutex_t* noundef, %union.pthread_mutexattr_t* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.__store_wbuf* @wbuf_new(i64 noundef %size) unnamed_addr #0 !dbg !803 {
entry:
  call void @llvm.dbg.value(metadata i64 %size, metadata !807, metadata !DIExpression()), !dbg !809
  %call = tail call noalias i8* @calloc(i64 noundef 1, i64 noundef 40) #12, !dbg !810
  %0 = bitcast i8* %call to %struct.__store_wbuf*, !dbg !810
  call void @llvm.dbg.value(metadata %struct.__store_wbuf* %0, metadata !808, metadata !DIExpression()), !dbg !809
  %cmp = icmp eq i8* %call, null, !dbg !811
  br i1 %cmp, label %if.then, label %if.end, !dbg !813

if.then:                                          ; preds = %entry
  %gcov_ctr = load i64, i64* getelementptr inbounds ([3 x i64], [3 x i64]* @__llvm_gcov_ctr.21, i64 0, i64 0), align 16, !dbg !814
  %1 = add i64 %gcov_ctr, 1, !dbg !814
  store i64 %1, i64* getelementptr inbounds ([3 x i64], [3 x i64]* @__llvm_gcov_ctr.21, i64 0, i64 0), align 16, !dbg !814
  br label %cleanup, !dbg !814

if.end:                                           ; preds = %entry
  %call1 = tail call noalias i8* @calloc(i64 noundef %size, i64 noundef 1) #12, !dbg !815
  %buf = getelementptr inbounds i8, i8* %call, i64 8, !dbg !816
  %2 = bitcast i8* %buf to i8**, !dbg !816
  store i8* %call1, i8** %2, align 8, !dbg !817, !tbaa !818
  %cmp3 = icmp eq i8* %call1, null, !dbg !819
  br i1 %cmp3, label %if.then4, label %if.end5, !dbg !821

if.then4:                                         ; preds = %if.end
  %gcov_ctr9 = load i64, i64* getelementptr inbounds ([3 x i64], [3 x i64]* @__llvm_gcov_ctr.21, i64 0, i64 1), align 8, !dbg !822
  %3 = add i64 %gcov_ctr9, 1, !dbg !822
  store i64 %3, i64* getelementptr inbounds ([3 x i64], [3 x i64]* @__llvm_gcov_ctr.21, i64 0, i64 1), align 8, !dbg !822
  tail call void @free(i8* noundef nonnull %call) #12, !dbg !824
  br label %cleanup, !dbg !825

if.end5:                                          ; preds = %if.end
  %gcov_ctr10 = load i64, i64* getelementptr inbounds ([3 x i64], [3 x i64]* @__llvm_gcov_ctr.21, i64 0, i64 2), align 16, !dbg !826
  %4 = add i64 %gcov_ctr10, 1, !dbg !826
  store i64 %4, i64* getelementptr inbounds ([3 x i64], [3 x i64]* @__llvm_gcov_ctr.21, i64 0, i64 2), align 16, !dbg !826
  %buf_pos = getelementptr inbounds i8, i8* %call, i64 16, !dbg !827
  %5 = bitcast i8* %buf_pos to i8**, !dbg !827
  store i8* %call1, i8** %5, align 8, !dbg !828, !tbaa !829
  %conv = trunc i64 %size to i32, !dbg !830
  %free = getelementptr inbounds i8, i8* %call, i64 24, !dbg !831
  %6 = bitcast i8* %free to i32*, !dbg !831
  store i32 %conv, i32* %6, align 8, !dbg !832, !tbaa !833
  %size8 = getelementptr inbounds i8, i8* %call, i64 28, !dbg !834
  %7 = bitcast i8* %size8 to i32*, !dbg !834
  store i32 %conv, i32* %7, align 4, !dbg !835, !tbaa !836
  br label %cleanup, !dbg !837

cleanup:                                          ; preds = %if.end5, %if.then4, %if.then
  %retval.0 = phi %struct.__store_wbuf* [ null, %if.then ], [ null, %if.then4 ], [ %0, %if.end5 ], !dbg !809
  ret %struct.__store_wbuf* %retval.0, !dbg !838
}

; Function Attrs: nounwind
declare !dbg !839 dso_local i32 @pthread_cond_init(%union.pthread_cond_t* noundef, %union.pthread_condattr_t* noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare !dbg !852 dso_local i32 @pthread_create(i64* noundef, %union.pthread_attr_t* noundef, i8* (i8*)* noundef, i8* noundef) local_unnamed_addr #3

; Function Attrs: noinline noreturn nounwind uwtable
define internal i8* @extstore_io_thread(i8* noundef %arg) #6 !dbg !871 {
entry:
  %gcov_ctr = load i64, i64* getelementptr inbounds ([18 x i64], [18 x i64]* @__llvm_gcov_ctr.22, i64 0, i64 0), align 16
  %0 = add i64 %gcov_ctr, 1
  store i64 %0, i64* getelementptr inbounds ([18 x i64], [18 x i64]* @__llvm_gcov_ctr.22, i64 0, i64 0), align 16
  call void @llvm.dbg.value(metadata i8* %arg, metadata !873, metadata !DIExpression()), !dbg !888
  call void @llvm.dbg.value(metadata i8* %arg, metadata !874, metadata !DIExpression()), !dbg !888
  %e1 = getelementptr inbounds i8, i8* %arg, i64 104, !dbg !889
  %1 = bitcast i8* %e1 to %struct.store_engine**, !dbg !889
  %2 = load %struct.store_engine*, %struct.store_engine** %1, align 8, !dbg !889, !tbaa !743
  call void @llvm.dbg.value(metadata %struct.store_engine* %2, metadata !875, metadata !DIExpression()), !dbg !888
  %mutex = bitcast i8* %arg to %union.pthread_mutex_t*
  %queue = getelementptr inbounds i8, i8* %arg, i64 88
  %3 = bitcast i8* %queue to %struct._obj_io**
  %cond = getelementptr inbounds i8, i8* %arg, i64 40
  %4 = bitcast i8* %cond to %union.pthread_cond_t*
  %io_depth = getelementptr inbounds %struct.store_engine, %struct.store_engine* %2, i64 0, i32 17
  %queue_tail = getelementptr inbounds i8, i8* %arg, i64 96
  %5 = bitcast i8* %queue_tail to %struct._obj_io**
  %depth = getelementptr inbounds i8, i8* %arg, i64 112
  %6 = bitcast i8* %depth to i32*
  %pages = getelementptr inbounds %struct.store_engine, %struct.store_engine* %2, i64 0, i32 1
  %7 = bitcast %struct.store_engine* %2 to i8*
  %stats_mutex = getelementptr inbounds %struct.store_engine, %struct.store_engine* %2, i64 0, i32 18
  %bytes_read = getelementptr inbounds %struct.store_engine, %struct.store_engine* %2, i64 0, i32 19, i32 13
  %objects_read = getelementptr inbounds %struct.store_engine, %struct.store_engine* %2, i64 0, i32 19, i32 8
  br label %while.cond, !dbg !890

while.cond:                                       ; preds = %while.end, %entry
  call void @llvm.dbg.value(metadata %struct._obj_io* null, metadata !876, metadata !DIExpression()), !dbg !891
  %call = tail call i32 @pthread_mutex_lock(%union.pthread_mutex_t* noundef %mutex) #12, !dbg !892
  %8 = load %struct._obj_io*, %struct._obj_io** %3, align 8, !dbg !893, !tbaa !895
  %cmp = icmp eq %struct._obj_io* %8, null, !dbg !896
  br i1 %cmp, label %if.end, label %for.cond.preheader, !dbg !897

if.end:                                           ; preds = %while.cond
  %gcov_ctr95 = load i64, i64* getelementptr inbounds ([18 x i64], [18 x i64]* @__llvm_gcov_ctr.22, i64 0, i64 1), align 8, !dbg !898
  %9 = add i64 %gcov_ctr95, 1, !dbg !898
  store i64 %9, i64* getelementptr inbounds ([18 x i64], [18 x i64]* @__llvm_gcov_ctr.22, i64 0, i64 1), align 8, !dbg !898
  %call3 = tail call i32 @pthread_cond_wait(%union.pthread_cond_t* noundef nonnull %4, %union.pthread_mutex_t* noundef nonnull %mutex) #12, !dbg !900
  %.pr = load %struct._obj_io*, %struct._obj_io** %3, align 8, !dbg !901, !tbaa !895
  %cmp5.not = icmp eq %struct._obj_io* %.pr, null, !dbg !902
  br i1 %cmp5.not, label %if.end16.thread, label %for.cond.preheader, !dbg !903

if.end16.thread:                                  ; preds = %if.end
  call void @llvm.dbg.value(metadata %struct._obj_io* %.pr, metadata !876, metadata !DIExpression()), !dbg !891
  %call18218 = tail call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* noundef nonnull %mutex) #12, !dbg !904
  call void @llvm.dbg.value(metadata %struct._obj_io* %.pr, metadata !882, metadata !DIExpression()), !dbg !891
  br label %while.end, !dbg !905

for.cond.preheader:                               ; preds = %while.cond, %if.end
  %10 = phi %struct._obj_io* [ %.pr, %if.end ], [ %8, %while.cond ]
  call void @llvm.dbg.value(metadata i32 1, metadata !878, metadata !DIExpression()), !dbg !906
  call void @llvm.dbg.value(metadata %struct._obj_io* %.pr, metadata !881, metadata !DIExpression()), !dbg !906
  %11 = load i32, i32* %io_depth, align 4, !dbg !907, !tbaa !720
  %cmp8204 = icmp ugt i32 %11, 1, !dbg !910
  br i1 %cmp8204, label %for.body, label %if.end16, !dbg !911

for.body:                                         ; preds = %for.cond.preheader, %if.then9
  %i.0206 = phi i32 [ %inc, %if.then9 ], [ 1, %for.cond.preheader ]
  %end.0205 = phi %struct._obj_io* [ %14, %if.then9 ], [ %10, %for.cond.preheader ]
  call void @llvm.dbg.value(metadata i32 %i.0206, metadata !878, metadata !DIExpression()), !dbg !906
  call void @llvm.dbg.value(metadata %struct._obj_io* %end.0205, metadata !881, metadata !DIExpression()), !dbg !906
  %next = getelementptr inbounds %struct._obj_io, %struct._obj_io* %end.0205, i64 0, i32 1, !dbg !912
  %12 = load %struct._obj_io*, %struct._obj_io** %next, align 8, !dbg !912, !tbaa !706
  %tobool.not = icmp eq %struct._obj_io* %12, null, !dbg !915
  br i1 %tobool.not, label %if.else, label %if.then9, !dbg !916

if.then9:                                         ; preds = %for.body
  %gcov_ctr96 = load i64, i64* getelementptr inbounds ([18 x i64], [18 x i64]* @__llvm_gcov_ctr.22, i64 0, i64 2), align 16, !dbg !917
  %13 = add i64 %gcov_ctr96, 1, !dbg !917
  store i64 %13, i64* getelementptr inbounds ([18 x i64], [18 x i64]* @__llvm_gcov_ctr.22, i64 0, i64 2), align 16, !dbg !917
  %14 = load %struct._obj_io*, %struct._obj_io** %next, align 8, !dbg !919, !tbaa !706
  call void @llvm.dbg.value(metadata %struct._obj_io* %14, metadata !881, metadata !DIExpression()), !dbg !906
  %inc = add nuw nsw i32 %i.0206, 1, !dbg !920
  call void @llvm.dbg.value(metadata i32 %inc, metadata !878, metadata !DIExpression()), !dbg !906
  %cmp8 = icmp ult i32 %inc, %11, !dbg !910
  br i1 %cmp8, label %for.body, label %if.end16, !dbg !911, !llvm.loop !921

if.else:                                          ; preds = %for.body
  %gcov_ctr97 = load i64, i64* getelementptr inbounds ([18 x i64], [18 x i64]* @__llvm_gcov_ctr.22, i64 0, i64 3), align 8, !dbg !923
  %15 = add i64 %gcov_ctr97, 1, !dbg !923
  store i64 %15, i64* getelementptr inbounds ([18 x i64], [18 x i64]* @__llvm_gcov_ctr.22, i64 0, i64 3), align 8, !dbg !923
  %16 = load %struct._obj_io*, %struct._obj_io** %next, align 8, !dbg !925, !tbaa !706
  store %struct._obj_io* %16, %struct._obj_io** %5, align 8, !dbg !926, !tbaa !927
  br label %if.end16, !dbg !928

if.end16:                                         ; preds = %if.then9, %if.else, %for.cond.preheader
  %end.0203 = phi %struct._obj_io* [ %end.0205, %if.else ], [ %10, %for.cond.preheader ], [ %14, %if.then9 ]
  %i.0201 = phi i32 [ %i.0206, %if.else ], [ 1, %for.cond.preheader ], [ %inc, %if.then9 ]
  %gcov_ctr98 = load i64, i64* getelementptr inbounds ([18 x i64], [18 x i64]* @__llvm_gcov_ctr.22, i64 0, i64 4), align 16, !dbg !929
  %17 = add i64 %gcov_ctr98, 1, !dbg !929
  store i64 %17, i64* getelementptr inbounds ([18 x i64], [18 x i64]* @__llvm_gcov_ctr.22, i64 0, i64 4), align 16, !dbg !929
  %18 = load i32, i32* %6, align 8, !dbg !930, !tbaa !305
  %sub = sub i32 %18, %i.0201, !dbg !930
  store i32 %sub, i32* %6, align 8, !dbg !930, !tbaa !305
  %next13 = getelementptr inbounds %struct._obj_io, %struct._obj_io* %end.0203, i64 0, i32 1, !dbg !931
  %19 = load %struct._obj_io*, %struct._obj_io** %next13, align 8, !dbg !931, !tbaa !706
  store %struct._obj_io* %19, %struct._obj_io** %3, align 8, !dbg !932, !tbaa !895
  store %struct._obj_io* null, %struct._obj_io** %next13, align 8, !dbg !933, !tbaa !706
  call void @llvm.dbg.value(metadata %struct._obj_io* %.pr, metadata !876, metadata !DIExpression()), !dbg !891
  %call18 = tail call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* noundef nonnull %mutex) #12, !dbg !904
  call void @llvm.dbg.value(metadata %struct._obj_io* %.pr, metadata !882, metadata !DIExpression()), !dbg !891
  br label %while.body21, !dbg !905

while.body21:                                     ; preds = %if.end16, %if.end94
  %cur_io.0209 = phi %struct._obj_io* [ %20, %if.end94 ], [ %10, %if.end16 ]
  call void @llvm.dbg.value(metadata %struct._obj_io* %cur_io.0209, metadata !882, metadata !DIExpression()), !dbg !891
  %next23 = getelementptr inbounds %struct._obj_io, %struct._obj_io* %cur_io.0209, i64 0, i32 1, !dbg !934
  %20 = load %struct._obj_io*, %struct._obj_io** %next23, align 8, !dbg !934, !tbaa !706
  call void @llvm.dbg.value(metadata %struct._obj_io* %20, metadata !883, metadata !DIExpression()), !dbg !935
  call void @llvm.dbg.value(metadata i32 0, metadata !885, metadata !DIExpression()), !dbg !935
  call void @llvm.dbg.value(metadata i32 1, metadata !886, metadata !DIExpression()), !dbg !935
  %21 = load %struct._store_page*, %struct._store_page** %pages, align 8, !dbg !936, !tbaa !561
  %page_id = getelementptr inbounds %struct._obj_io, %struct._obj_io* %cur_io.0209, i64 0, i32 8, !dbg !937
  %22 = load i16, i16* %page_id, align 8, !dbg !937, !tbaa !938
  %idxprom = zext i16 %22 to i64, !dbg !939
  %arrayidx = getelementptr inbounds %struct._store_page, %struct._store_page* %21, i64 %idxprom, !dbg !939
  call void @llvm.dbg.value(metadata %struct._store_page* %arrayidx, metadata !887, metadata !DIExpression()), !dbg !935
  %mode = getelementptr inbounds %struct._obj_io, %struct._obj_io* %cur_io.0209, i64 0, i32 9, !dbg !940
  %23 = load i32, i32* %mode, align 4, !dbg !940, !tbaa !941
  switch i32 %23, label %if.then88.critedge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb72
  ], !dbg !942

sw.bb:                                            ; preds = %while.body21
  %mutex24 = getelementptr inbounds %struct._store_page, %struct._store_page* %arrayidx, i64 0, i32 0, !dbg !943
  %call25 = tail call i32 @pthread_mutex_lock(%union.pthread_mutex_t* noundef %mutex24) #12, !dbg !945
  %free = getelementptr inbounds %struct._store_page, %struct._store_page* %21, i64 %idxprom, i32 14, !dbg !946
  %24 = load i8, i8* %free, align 8, !dbg !946, !tbaa !624, !range !948
  %tobool26.not = icmp eq i8 %24, 0, !dbg !946
  br i1 %tobool26.not, label %land.lhs.true, label %if.end86.thread, !dbg !949

land.lhs.true:                                    ; preds = %sw.bb
  %gcov_ctr99 = load i64, i64* getelementptr inbounds ([18 x i64], [18 x i64]* @__llvm_gcov_ctr.22, i64 0, i64 5), align 8, !dbg !950
  %25 = add i64 %gcov_ctr99, 1, !dbg !950
  store i64 %25, i64* getelementptr inbounds ([18 x i64], [18 x i64]* @__llvm_gcov_ctr.22, i64 0, i64 5), align 8, !dbg !950
  %closed = getelementptr inbounds %struct._store_page, %struct._store_page* %21, i64 %idxprom, i32 13, !dbg !951
  %26 = load i8, i8* %closed, align 1, !dbg !951, !tbaa !952, !range !948
  %tobool27.not = icmp eq i8 %26, 0, !dbg !951
  br i1 %tobool27.not, label %land.lhs.true28, label %if.end86.thread, !dbg !953

land.lhs.true28:                                  ; preds = %land.lhs.true
  %gcov_ctr100 = load i64, i64* getelementptr inbounds ([18 x i64], [18 x i64]* @__llvm_gcov_ctr.22, i64 0, i64 6), align 16, !dbg !954
  %27 = add i64 %gcov_ctr100, 1, !dbg !954
  store i64 %27, i64* getelementptr inbounds ([18 x i64], [18 x i64]* @__llvm_gcov_ctr.22, i64 0, i64 6), align 16, !dbg !954
  %version = getelementptr inbounds %struct._store_page, %struct._store_page* %21, i64 %idxprom, i32 4, !dbg !955
  %28 = load i32, i32* %version, align 8, !dbg !955, !tbaa !956
  %page_version = getelementptr inbounds %struct._obj_io, %struct._obj_io* %cur_io.0209, i64 0, i32 5, !dbg !957
  %29 = load i32, i32* %page_version, align 4, !dbg !957, !tbaa !958
  %cmp29 = icmp eq i32 %28, %29, !dbg !959
  br i1 %cmp29, label %if.then30, label %if.end86.thread, !dbg !960

if.then30:                                        ; preds = %land.lhs.true28
  %active = getelementptr inbounds %struct._store_page, %struct._store_page* %21, i64 %idxprom, i32 12, !dbg !961
  %30 = load i8, i8* %active, align 2, !dbg !961, !tbaa !964, !range !948
  %tobool31.not = icmp eq i8 %30, 0, !dbg !961
  br i1 %tobool31.not, label %if.else36, label %land.lhs.true32, !dbg !965

land.lhs.true32:                                  ; preds = %if.then30
  %gcov_ctr101 = load i64, i64* getelementptr inbounds ([18 x i64], [18 x i64]* @__llvm_gcov_ctr.22, i64 0, i64 7), align 8, !dbg !966
  %31 = add i64 %gcov_ctr101, 1, !dbg !966
  store i64 %31, i64* getelementptr inbounds ([18 x i64], [18 x i64]* @__llvm_gcov_ctr.22, i64 0, i64 7), align 8, !dbg !966
  %offset = getelementptr inbounds %struct._obj_io, %struct._obj_io* %cur_io.0209, i64 0, i32 7, !dbg !967
  %32 = load i32, i32* %offset, align 4, !dbg !967, !tbaa !968
  %written = getelementptr inbounds %struct._store_page, %struct._store_page* %21, i64 %idxprom, i32 7, !dbg !969
  %33 = load i32, i32* %written, align 4, !dbg !969, !tbaa !970
  %cmp33.not = icmp ult i32 %32, %33, !dbg !971
  br i1 %cmp33.not, label %if.else36, label %if.then34, !dbg !972

if.then34:                                        ; preds = %land.lhs.true32
  %gcov_ctr102 = load i64, i64* getelementptr inbounds ([18 x i64], [18 x i64]* @__llvm_gcov_ctr.22, i64 0, i64 8), align 16, !dbg !973
  %34 = add i64 %gcov_ctr102, 1, !dbg !973
  store i64 %34, i64* getelementptr inbounds ([18 x i64], [18 x i64]* @__llvm_gcov_ctr.22, i64 0, i64 8), align 16, !dbg !973
  %call35 = tail call fastcc i32 @_read_from_wbuf(%struct._store_page* noundef nonnull %arrayidx, %struct._obj_io* noundef nonnull %cur_io.0209) #14, !dbg !975
  call void @llvm.dbg.value(metadata i32 %call35, metadata !885, metadata !DIExpression()), !dbg !935
  call void @llvm.dbg.value(metadata i32 0, metadata !886, metadata !DIExpression()), !dbg !935
  br label %if.end45, !dbg !976

if.else36:                                        ; preds = %land.lhs.true32, %if.then30
  %gcov_ctr103 = load i64, i64* getelementptr inbounds ([18 x i64], [18 x i64]* @__llvm_gcov_ctr.22, i64 0, i64 9), align 8, !dbg !977
  %35 = add i64 %gcov_ctr103, 1, !dbg !977
  store i64 %35, i64* getelementptr inbounds ([18 x i64], [18 x i64]* @__llvm_gcov_ctr.22, i64 0, i64 9), align 8, !dbg !977
  %refcount = getelementptr inbounds %struct._store_page, %struct._store_page* %21, i64 %idxprom, i32 5, !dbg !979
  %36 = load i32, i32* %refcount, align 4, !dbg !980, !tbaa !981
  %inc37 = add i32 %36, 1, !dbg !980
  store i32 %inc37, i32* %refcount, align 4, !dbg !980, !tbaa !981
  br label %if.end45

if.end86.thread:                                  ; preds = %sw.bb, %land.lhs.true, %land.lhs.true28
  %gcov_ctr104 = load i64, i64* getelementptr inbounds ([18 x i64], [18 x i64]* @__llvm_gcov_ctr.22, i64 0, i64 10), align 16, !dbg !982
  %37 = add i64 %gcov_ctr104, 1, !dbg !982
  store i64 %37, i64* getelementptr inbounds ([18 x i64], [18 x i64]* @__llvm_gcov_ctr.22, i64 0, i64 10), align 16, !dbg !982
  call void @llvm.dbg.value(metadata i32 undef, metadata !886, metadata !DIExpression()), !dbg !935
  call void @llvm.dbg.value(metadata i32 %ret.0, metadata !885, metadata !DIExpression()), !dbg !935
  %call47183 = tail call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* noundef nonnull %mutex24) #12, !dbg !984
  call void @llvm.dbg.value(metadata i32 %ret.2, metadata !885, metadata !DIExpression()), !dbg !935
  %cb198 = getelementptr inbounds %struct._obj_io, %struct._obj_io* %cur_io.0209, i64 0, i32 10, !dbg !985
  %38 = load void (i8*, %struct._obj_io*, i32)*, void (i8*, %struct._obj_io*, i32)** %cb198, align 8, !dbg !985, !tbaa !986
  tail call void %38(i8* noundef %7, %struct._obj_io* noundef nonnull %cur_io.0209, i32 noundef -2) #12, !dbg !987
  br label %if.end94, !dbg !988

if.end45:                                         ; preds = %if.then34, %if.else36
  %ret.0 = phi i32 [ %call35, %if.then34 ], [ 0, %if.else36 ], !dbg !935
  %tobool48.not = phi i1 [ true, %if.then34 ], [ false, %if.else36 ], !dbg !935
  call void @llvm.dbg.value(metadata i32 undef, metadata !886, metadata !DIExpression()), !dbg !935
  call void @llvm.dbg.value(metadata i32 %ret.0, metadata !885, metadata !DIExpression()), !dbg !935
  %call39 = tail call i32 @pthread_mutex_lock(%union.pthread_mutex_t* noundef nonnull %stats_mutex) #12, !dbg !989
  %len = getelementptr inbounds %struct._obj_io, %struct._obj_io* %cur_io.0209, i64 0, i32 6, !dbg !990
  %39 = load i32, i32* %len, align 8, !dbg !990, !tbaa !991
  %conv = zext i32 %39 to i64, !dbg !992
  %40 = load i64, i64* %bytes_read, align 8, !dbg !993, !tbaa !994
  %add = add i64 %40, %conv, !dbg !993
  store i64 %add, i64* %bytes_read, align 8, !dbg !993, !tbaa !994
  %41 = load i64, i64* %objects_read, align 8, !dbg !995, !tbaa !996
  %inc41 = add i64 %41, 1, !dbg !995
  store i64 %inc41, i64* %objects_read, align 8, !dbg !995, !tbaa !996
  %call43 = tail call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* noundef nonnull %stats_mutex) #12, !dbg !997
  %call47 = tail call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* noundef nonnull %mutex24) #12, !dbg !984
  br i1 %tobool48.not, label %sw.epilog, label %if.then49, !dbg !998

if.then49:                                        ; preds = %if.end45
  %iov = getelementptr inbounds %struct._obj_io, %struct._obj_io* %cur_io.0209, i64 0, i32 3, !dbg !999
  %42 = load %struct.iovec*, %struct.iovec** %iov, align 8, !dbg !999, !tbaa !1003
  %cmp50 = icmp eq %struct.iovec* %42, null, !dbg !1004
  br i1 %cmp50, label %if.then52, label %if.else61, !dbg !1005

if.then52:                                        ; preds = %if.then49
  %gcov_ctr105 = load i64, i64* getelementptr inbounds ([18 x i64], [18 x i64]* @__llvm_gcov_ctr.22, i64 0, i64 11), align 8, !dbg !1006
  %43 = add i64 %gcov_ctr105, 1, !dbg !1006
  store i64 %43, i64* getelementptr inbounds ([18 x i64], [18 x i64]* @__llvm_gcov_ctr.22, i64 0, i64 11), align 8, !dbg !1006
  %fd = getelementptr inbounds %struct._store_page, %struct._store_page* %21, i64 %idxprom, i32 10, !dbg !1008
  %44 = load i32, i32* %fd, align 8, !dbg !1008, !tbaa !612
  %buf = getelementptr inbounds %struct._obj_io, %struct._obj_io* %cur_io.0209, i64 0, i32 2, !dbg !1009
  %45 = load i8*, i8** %buf, align 8, !dbg !1009, !tbaa !1010
  %46 = load i32, i32* %len, align 8, !dbg !1011, !tbaa !991
  %conv54 = zext i32 %46 to i64, !dbg !1012
  %offset55 = getelementptr inbounds %struct._store_page, %struct._store_page* %21, i64 %idxprom, i32 3, !dbg !1013
  %47 = load i64, i64* %offset55, align 8, !dbg !1013, !tbaa !621
  %offset56 = getelementptr inbounds %struct._obj_io, %struct._obj_io* %cur_io.0209, i64 0, i32 7, !dbg !1014
  %48 = load i32, i32* %offset56, align 4, !dbg !1014, !tbaa !968
  %conv57 = zext i32 %48 to i64, !dbg !1015
  %add58 = add i64 %47, %conv57, !dbg !1016
  %call59 = tail call i64 @pread(i32 noundef %44, i8* noundef %45, i64 noundef %conv54, i64 noundef %add58) #12, !dbg !1017
  %conv60 = trunc i64 %call59 to i32, !dbg !1017
  call void @llvm.dbg.value(metadata i32 %conv60, metadata !885, metadata !DIExpression()), !dbg !935
  br label %sw.epilog, !dbg !1018

if.else61:                                        ; preds = %if.then49
  %gcov_ctr106 = load i64, i64* getelementptr inbounds ([18 x i64], [18 x i64]* @__llvm_gcov_ctr.22, i64 0, i64 12), align 16, !dbg !1019
  %49 = add i64 %gcov_ctr106, 1, !dbg !1019
  store i64 %49, i64* getelementptr inbounds ([18 x i64], [18 x i64]* @__llvm_gcov_ctr.22, i64 0, i64 12), align 16, !dbg !1019
  %fd62 = getelementptr inbounds %struct._store_page, %struct._store_page* %21, i64 %idxprom, i32 10, !dbg !1021
  %50 = load i32, i32* %fd62, align 8, !dbg !1021, !tbaa !612
  %51 = load %struct.iovec*, %struct.iovec** %iov, align 8, !dbg !1022, !tbaa !1003
  %iovcnt = getelementptr inbounds %struct._obj_io, %struct._obj_io* %cur_io.0209, i64 0, i32 4, !dbg !1023
  %52 = load i32, i32* %iovcnt, align 8, !dbg !1023, !tbaa !1024
  %offset64 = getelementptr inbounds %struct._store_page, %struct._store_page* %21, i64 %idxprom, i32 3, !dbg !1025
  %53 = load i64, i64* %offset64, align 8, !dbg !1025, !tbaa !621
  %offset65 = getelementptr inbounds %struct._obj_io, %struct._obj_io* %cur_io.0209, i64 0, i32 7, !dbg !1026
  %54 = load i32, i32* %offset65, align 4, !dbg !1026, !tbaa !968
  %conv66 = zext i32 %54 to i64, !dbg !1027
  %add67 = add i64 %53, %conv66, !dbg !1028
  %call68 = tail call i64 @preadv(i32 noundef %50, %struct.iovec* noundef %51, i32 noundef %52, i64 noundef %add67) #12, !dbg !1029
  %conv69 = trunc i64 %call68 to i32, !dbg !1029
  call void @llvm.dbg.value(metadata i32 %conv69, metadata !885, metadata !DIExpression()), !dbg !935
  br label %sw.epilog

sw.bb72:                                          ; preds = %while.body21
  %gcov_ctr107 = load i64, i64* getelementptr inbounds ([18 x i64], [18 x i64]* @__llvm_gcov_ctr.22, i64 0, i64 13), align 8, !dbg !1030
  %55 = add i64 %gcov_ctr107, 1, !dbg !1030
  store i64 %55, i64* getelementptr inbounds ([18 x i64], [18 x i64]* @__llvm_gcov_ctr.22, i64 0, i64 13), align 8, !dbg !1030
  call void @llvm.dbg.value(metadata i32 0, metadata !886, metadata !DIExpression()), !dbg !935
  %fd73 = getelementptr inbounds %struct._store_page, %struct._store_page* %21, i64 %idxprom, i32 10, !dbg !1031
  %56 = load i32, i32* %fd73, align 8, !dbg !1031, !tbaa !612
  %buf74 = getelementptr inbounds %struct._obj_io, %struct._obj_io* %cur_io.0209, i64 0, i32 2, !dbg !1032
  %57 = load i8*, i8** %buf74, align 8, !dbg !1032, !tbaa !1010
  %len75 = getelementptr inbounds %struct._obj_io, %struct._obj_io* %cur_io.0209, i64 0, i32 6, !dbg !1033
  %58 = load i32, i32* %len75, align 8, !dbg !1033, !tbaa !991
  %conv76 = zext i32 %58 to i64, !dbg !1034
  %offset77 = getelementptr inbounds %struct._store_page, %struct._store_page* %21, i64 %idxprom, i32 3, !dbg !1035
  %59 = load i64, i64* %offset77, align 8, !dbg !1035, !tbaa !621
  %offset78 = getelementptr inbounds %struct._obj_io, %struct._obj_io* %cur_io.0209, i64 0, i32 7, !dbg !1036
  %60 = load i32, i32* %offset78, align 4, !dbg !1036, !tbaa !968
  %conv79 = zext i32 %60 to i64, !dbg !1037
  %add80 = add i64 %59, %conv79, !dbg !1038
  %call81 = tail call i64 @pwrite(i32 noundef %56, i8* noundef %57, i64 noundef %conv76, i64 noundef %add80) #12, !dbg !1039
  %conv82 = trunc i64 %call81 to i32, !dbg !1039
  call void @llvm.dbg.value(metadata i32 %conv82, metadata !885, metadata !DIExpression()), !dbg !935
  br label %sw.epilog, !dbg !1040

sw.epilog:                                        ; preds = %if.end45, %if.else61, %if.then52, %sw.bb72
  %ret.2 = phi i32 [ %conv82, %sw.bb72 ], [ %conv60, %if.then52 ], [ %conv69, %if.else61 ], [ %ret.0, %if.end45 ], !dbg !935
  %tobool87.not = phi i1 [ true, %sw.bb72 ], [ false, %if.then52 ], [ false, %if.else61 ], [ true, %if.end45 ], !dbg !935
  call void @llvm.dbg.value(metadata i32 undef, metadata !886, metadata !DIExpression()), !dbg !935
  call void @llvm.dbg.value(metadata i32 %ret.2, metadata !885, metadata !DIExpression()), !dbg !935
  %cmp83 = icmp eq i32 %ret.2, 0, !dbg !1041
  br i1 %cmp83, label %if.then85, label %if.end86, !dbg !1043

if.then85:                                        ; preds = %sw.epilog
  %gcov_ctr108 = load i64, i64* getelementptr inbounds ([18 x i64], [18 x i64]* @__llvm_gcov_ctr.22, i64 0, i64 14), align 16, !dbg !1044
  %61 = add i64 %gcov_ctr108, 1, !dbg !1044
  store i64 %61, i64* getelementptr inbounds ([18 x i64], [18 x i64]* @__llvm_gcov_ctr.22, i64 0, i64 14), align 16, !dbg !1044
  %cb199 = getelementptr inbounds %struct._obj_io, %struct._obj_io* %cur_io.0209, i64 0, i32 10, !dbg !985
  %62 = load void (i8*, %struct._obj_io*, i32)*, void (i8*, %struct._obj_io*, i32)** %cb199, align 8, !dbg !985, !tbaa !986
  tail call void %62(i8* noundef %7, %struct._obj_io* noundef nonnull %cur_io.0209, i32 noundef 0) #12, !dbg !987
  br i1 %tobool87.not, label %if.end94, label %if.then88, !dbg !988

if.end86:                                         ; preds = %sw.epilog
  %cb = getelementptr inbounds %struct._obj_io, %struct._obj_io* %cur_io.0209, i64 0, i32 10, !dbg !985
  %63 = load void (i8*, %struct._obj_io*, i32)*, void (i8*, %struct._obj_io*, i32)** %cb, align 8, !dbg !985, !tbaa !986
  tail call void %63(i8* noundef %7, %struct._obj_io* noundef nonnull %cur_io.0209, i32 noundef %ret.2) #12, !dbg !987
  br i1 %tobool87.not, label %if.end94, label %if.then88, !dbg !988

if.then88.critedge:                               ; preds = %while.body21
  %gcov_ctr108.c = load i64, i64* getelementptr inbounds ([18 x i64], [18 x i64]* @__llvm_gcov_ctr.22, i64 0, i64 14), align 16, !dbg !1044
  %64 = add i64 %gcov_ctr108.c, 1, !dbg !1044
  store i64 %64, i64* getelementptr inbounds ([18 x i64], [18 x i64]* @__llvm_gcov_ctr.22, i64 0, i64 14), align 16, !dbg !1044
  %cb199.c = getelementptr inbounds %struct._obj_io, %struct._obj_io* %cur_io.0209, i64 0, i32 10, !dbg !985
  %65 = load void (i8*, %struct._obj_io*, i32)*, void (i8*, %struct._obj_io*, i32)** %cb199.c, align 8, !dbg !985, !tbaa !986
  tail call void %65(i8* noundef nonnull %7, %struct._obj_io* noundef nonnull %cur_io.0209, i32 noundef 0) #12, !dbg !987
  br label %if.then88, !dbg !988

if.then88:                                        ; preds = %if.then88.critedge, %if.then85, %if.end86
  %gcov_ctr109 = load i64, i64* getelementptr inbounds ([18 x i64], [18 x i64]* @__llvm_gcov_ctr.22, i64 0, i64 15), align 8, !dbg !1046
  %66 = add i64 %gcov_ctr109, 1, !dbg !1046
  store i64 %66, i64* getelementptr inbounds ([18 x i64], [18 x i64]* @__llvm_gcov_ctr.22, i64 0, i64 15), align 8, !dbg !1046
  %mutex89 = getelementptr inbounds %struct._store_page, %struct._store_page* %arrayidx, i64 0, i32 0, !dbg !1049
  %call90 = tail call i32 @pthread_mutex_lock(%union.pthread_mutex_t* noundef %mutex89) #12, !dbg !1050
  %refcount91 = getelementptr inbounds %struct._store_page, %struct._store_page* %21, i64 %idxprom, i32 5, !dbg !1051
  %67 = load i32, i32* %refcount91, align 4, !dbg !1052, !tbaa !981
  %dec = add i32 %67, -1, !dbg !1052
  store i32 %dec, i32* %refcount91, align 4, !dbg !1052, !tbaa !981
  %call93 = tail call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* noundef %mutex89) #12, !dbg !1053
  br label %if.end94, !dbg !1054

if.end94:                                         ; preds = %if.then85, %if.end86.thread, %if.then88, %if.end86
  %gcov_ctr110 = load i64, i64* getelementptr inbounds ([18 x i64], [18 x i64]* @__llvm_gcov_ctr.22, i64 0, i64 16), align 16, !dbg !1055
  %68 = add i64 %gcov_ctr110, 1, !dbg !1055
  store i64 %68, i64* getelementptr inbounds ([18 x i64], [18 x i64]* @__llvm_gcov_ctr.22, i64 0, i64 16), align 16, !dbg !1055
  call void @llvm.dbg.value(metadata %struct._obj_io* %20, metadata !882, metadata !DIExpression()), !dbg !891
  %tobool20.not = icmp eq %struct._obj_io* %20, null, !dbg !905
  br i1 %tobool20.not, label %while.end, label %while.body21, !dbg !905, !llvm.loop !1056

while.end:                                        ; preds = %if.end94, %if.end16.thread
  %gcov_ctr111 = load i64, i64* getelementptr inbounds ([18 x i64], [18 x i64]* @__llvm_gcov_ctr.22, i64 0, i64 17), align 8, !dbg !1058
  %69 = add i64 %gcov_ctr111, 1, !dbg !1058
  store i64 %69, i64* getelementptr inbounds ([18 x i64], [18 x i64]* @__llvm_gcov_ctr.22, i64 0, i64 17), align 8, !dbg !1058
  br label %while.cond, !dbg !890, !llvm.loop !1059
}

; Function Attrs: noinline noreturn nounwind uwtable
define internal noalias nonnull i8* @extstore_maint_thread(i8* noundef %arg) #6 !dbg !1060 {
entry:
  call void @llvm.dbg.value(metadata i8* %arg, metadata !1062, metadata !DIExpression()), !dbg !1078
  call void @llvm.dbg.value(metadata i8* %arg, metadata !1063, metadata !DIExpression()), !dbg !1078
  %e1 = getelementptr inbounds i8, i8* %arg, i64 88, !dbg !1079
  %0 = bitcast i8* %e1 to %struct.store_engine**, !dbg !1079
  %1 = load %struct.store_engine*, %struct.store_engine** %0, align 8, !dbg !1079, !tbaa !760
  call void @llvm.dbg.value(metadata %struct.store_engine* %1, metadata !1064, metadata !DIExpression()), !dbg !1078
  %page_count = getelementptr inbounds %struct.store_engine, %struct.store_engine* %1, i64 0, i32 13, !dbg !1080
  %2 = load i32, i32* %page_count, align 4, !dbg !1080, !tbaa !270
  %conv = zext i32 %2 to i64, !dbg !1081
  %call = tail call noalias i8* @calloc(i64 noundef %conv, i64 noundef 24) #12, !dbg !1082
  %3 = bitcast i8* %call to %struct.extstore_page_data*, !dbg !1082
  call void @llvm.dbg.value(metadata %struct.extstore_page_data* %3, metadata !1065, metadata !DIExpression()), !dbg !1078
  %mutex = bitcast i8* %arg to %union.pthread_mutex_t*, !dbg !1083
  %call2 = tail call i32 @pthread_mutex_lock(%union.pthread_mutex_t* noundef %mutex) #12, !dbg !1084
  %cond = getelementptr inbounds i8, i8* %arg, i64 40
  %4 = bitcast i8* %cond to %union.pthread_cond_t*
  %mutex5 = getelementptr inbounds %struct.store_engine, %struct.store_engine* %1, i64 0, i32 0
  %page_free = getelementptr inbounds %struct.store_engine, %struct.store_engine* %1, i64 0, i32 14
  %page_freelist = getelementptr inbounds %struct.store_engine, %struct.store_engine* %1, i64 0, i32 6
  %pages = getelementptr inbounds %struct.store_engine, %struct.store_engine* %1, i64 0, i32 1
  %stats_mutex = getelementptr inbounds %struct.store_engine, %struct.store_engine* %1, i64 0, i32 18
  %page_evictions = getelementptr inbounds %struct.store_engine, %struct.store_engine* %1, i64 0, i32 19, i32 2
  %objects_evicted = getelementptr inbounds %struct.store_engine, %struct.store_engine* %1, i64 0, i32 19, i32 7
  %bytes_evicted = getelementptr inbounds %struct.store_engine, %struct.store_engine* %1, i64 0, i32 19, i32 11
  %page_data = getelementptr inbounds %struct.store_engine, %struct.store_engine* %1, i64 0, i32 19, i32 17
  %5 = bitcast %struct.extstore_page_data** %page_data to i8**
  br label %while.cond, !dbg !1085

while.cond:                                       ; preds = %if.end108, %entry
  call void @llvm.dbg.value(metadata i8 0, metadata !1068, metadata !DIExpression()), !dbg !1086
  call void @llvm.dbg.value(metadata i32 0, metadata !1069, metadata !DIExpression()), !dbg !1086
  call void @llvm.dbg.value(metadata i64 -1, metadata !1070, metadata !DIExpression()), !dbg !1086
  %call4 = tail call i32 @pthread_cond_wait(%union.pthread_cond_t* noundef nonnull %4, %union.pthread_mutex_t* noundef %mutex) #12, !dbg !1087
  %call6 = tail call i32 @pthread_mutex_lock(%union.pthread_mutex_t* noundef nonnull %mutex5) #12, !dbg !1088
  %6 = load i32, i32* %page_free, align 8, !dbg !1089, !tbaa !257
  %cmp = icmp eq i32 %6, 0, !dbg !1091
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !1092

lor.lhs.false:                                    ; preds = %while.cond
  %gcov_ctr = load i64, i64* getelementptr inbounds ([18 x i64], [18 x i64]* @__llvm_gcov_ctr.23, i64 0, i64 0), align 16, !dbg !1093
  %7 = add i64 %gcov_ctr, 1, !dbg !1093
  store i64 %7, i64* getelementptr inbounds ([18 x i64], [18 x i64]* @__llvm_gcov_ctr.23, i64 0, i64 0), align 16, !dbg !1093
  %8 = load %struct._store_page*, %struct._store_page** %page_freelist, align 8, !dbg !1094, !tbaa !1095
  %cmp8 = icmp eq %struct._store_page* %8, null, !dbg !1096
  br i1 %cmp8, label %if.then, label %if.end, !dbg !1097

if.then:                                          ; preds = %lor.lhs.false, %while.cond
  %gcov_ctr118 = load i64, i64* getelementptr inbounds ([18 x i64], [18 x i64]* @__llvm_gcov_ctr.23, i64 0, i64 1), align 8, !dbg !1098
  %9 = add i64 %gcov_ctr118, 1, !dbg !1098
  store i64 %9, i64* getelementptr inbounds ([18 x i64], [18 x i64]* @__llvm_gcov_ctr.23, i64 0, i64 1), align 8, !dbg !1098
  call void @llvm.dbg.value(metadata i8 1, metadata !1068, metadata !DIExpression()), !dbg !1086
  br label %if.end, !dbg !1100

if.end:                                           ; preds = %if.then, %lor.lhs.false
  %tobool75.not230 = phi i1 [ false, %if.then ], [ true, %lor.lhs.false ], !dbg !1086
  %do_evict.0 = phi i8 [ 1, %if.then ], [ 0, %lor.lhs.false ], !dbg !1086
  call void @llvm.dbg.value(metadata i8 %do_evict.0, metadata !1068, metadata !DIExpression()), !dbg !1086
  %call11 = tail call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* noundef nonnull %mutex5) #12, !dbg !1101
  %10 = load i32, i32* %page_count, align 4, !dbg !1102, !tbaa !270
  %conv13 = zext i32 %10 to i64, !dbg !1103
  %mul = mul nuw nsw i64 %conv13, 24, !dbg !1104
  %call14 = tail call i8* @memset(i8* noundef %call, i32 noundef 0, i64 noundef %mul) #12, !dbg !1105
  call void @llvm.dbg.value(metadata i32 0, metadata !1066, metadata !DIExpression()), !dbg !1086
  call void @llvm.dbg.value(metadata i8 %do_evict.0, metadata !1068, metadata !DIExpression()), !dbg !1086
  call void @llvm.dbg.value(metadata i64 -1, metadata !1070, metadata !DIExpression()), !dbg !1086
  call void @llvm.dbg.value(metadata i32 0, metadata !1069, metadata !DIExpression()), !dbg !1086
  %11 = load i32, i32* %page_count, align 4, !dbg !1106, !tbaa !270
  %cmp16217.not = icmp eq i32 %11, 0, !dbg !1107
  br i1 %cmp16217.not, label %for.end.thread, label %for.body, !dbg !1108

for.body:                                         ; preds = %if.end, %for.inc
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %if.end ]
  %do_evict.1222 = phi i8 [ %do_evict.3215, %for.inc ], [ %do_evict.0, %if.end ]
  %low_version.0220 = phi i64 [ %low_version.3213, %for.inc ], [ -1, %if.end ]
  %low_page.0218 = phi i32 [ %low_page.3211, %for.inc ], [ 0, %if.end ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !1066, metadata !DIExpression()), !dbg !1086
  call void @llvm.dbg.value(metadata i8 %do_evict.1222, metadata !1068, metadata !DIExpression()), !dbg !1086
  call void @llvm.dbg.value(metadata i64 %low_version.0220, metadata !1070, metadata !DIExpression()), !dbg !1086
  call void @llvm.dbg.value(metadata i32 %low_page.0218, metadata !1069, metadata !DIExpression()), !dbg !1086
  %12 = load %struct._store_page*, %struct._store_page** %pages, align 8, !dbg !1109, !tbaa !561
  %arrayidx = getelementptr inbounds %struct._store_page, %struct._store_page* %12, i64 %indvars.iv, !dbg !1110
  call void @llvm.dbg.value(metadata %struct._store_page* %arrayidx, metadata !1071, metadata !DIExpression()), !dbg !1111
  %mutex18 = getelementptr inbounds %struct._store_page, %struct._store_page* %arrayidx, i64 0, i32 0, !dbg !1112
  %call19 = tail call i32 @pthread_mutex_lock(%union.pthread_mutex_t* noundef %mutex18) #12, !dbg !1113
  %free_bucket = getelementptr inbounds %struct._store_page, %struct._store_page* %12, i64 %indvars.iv, i32 9, !dbg !1114
  %13 = load i32, i32* %free_bucket, align 4, !dbg !1114, !tbaa !617
  %id = getelementptr inbounds %struct._store_page, %struct._store_page* %12, i64 %indvars.iv, i32 11, !dbg !1115
  %14 = load i16, i16* %id, align 4, !dbg !1115, !tbaa !606
  %idxprom20 = zext i16 %14 to i64, !dbg !1116
  %free_bucket22 = getelementptr inbounds %struct.extstore_page_data, %struct.extstore_page_data* %3, i64 %idxprom20, i32 3, !dbg !1117
  store i32 %13, i32* %free_bucket22, align 4, !dbg !1118, !tbaa !1119
  %active = getelementptr inbounds %struct._store_page, %struct._store_page* %12, i64 %indvars.iv, i32 12, !dbg !1121
  %15 = load i8, i8* %active, align 2, !dbg !1121, !tbaa !964, !range !948
  %tobool.not = icmp eq i8 %15, 0, !dbg !1121
  br i1 %tobool.not, label %lor.lhs.false24, label %cleanup, !dbg !1123

lor.lhs.false24:                                  ; preds = %for.body
  %gcov_ctr119 = load i64, i64* getelementptr inbounds ([18 x i64], [18 x i64]* @__llvm_gcov_ctr.23, i64 0, i64 2), align 16, !dbg !1124
  %16 = add i64 %gcov_ctr119, 1, !dbg !1124
  store i64 %16, i64* getelementptr inbounds ([18 x i64], [18 x i64]* @__llvm_gcov_ctr.23, i64 0, i64 2), align 16, !dbg !1124
  %free = getelementptr inbounds %struct._store_page, %struct._store_page* %12, i64 %indvars.iv, i32 14, !dbg !1125
  %17 = load i8, i8* %free, align 8, !dbg !1125, !tbaa !624, !range !948
  %tobool25.not = icmp eq i8 %17, 0, !dbg !1125
  br i1 %tobool25.not, label %if.end30, label %cleanup, !dbg !1126

if.end30:                                         ; preds = %lor.lhs.false24
  %obj_count = getelementptr inbounds %struct._store_page, %struct._store_page* %12, i64 %indvars.iv, i32 1, !dbg !1127
  %18 = load i64, i64* %obj_count, align 8, !dbg !1127, !tbaa !1129
  %cmp31.not = icmp eq i64 %18, 0, !dbg !1130
  br i1 %cmp31.not, label %land.lhs.true68, label %land.lhs.true, !dbg !1131

land.lhs.true:                                    ; preds = %if.end30
  %gcov_ctr121 = load i64, i64* getelementptr inbounds ([18 x i64], [18 x i64]* @__llvm_gcov_ctr.23, i64 0, i64 4), align 16, !dbg !1132
  %19 = add i64 %gcov_ctr121, 1, !dbg !1132
  store i64 %19, i64* getelementptr inbounds ([18 x i64], [18 x i64]* @__llvm_gcov_ctr.23, i64 0, i64 4), align 16, !dbg !1132
  %closed = getelementptr inbounds %struct._store_page, %struct._store_page* %12, i64 %indvars.iv, i32 13, !dbg !1133
  %20 = load i8, i8* %closed, align 1, !dbg !1133, !tbaa !952, !range !948
  %tobool33.not = icmp eq i8 %20, 0, !dbg !1133
  br i1 %tobool33.not, label %if.then34, label %if.end60, !dbg !1134

if.then34:                                        ; preds = %land.lhs.true
  %version = getelementptr inbounds %struct._store_page, %struct._store_page* %12, i64 %indvars.iv, i32 4, !dbg !1135
  %21 = load i32, i32* %version, align 8, !dbg !1135, !tbaa !956
  %conv35 = zext i32 %21 to i64, !dbg !1137
  %22 = load i16, i16* %id, align 4, !dbg !1138, !tbaa !606
  %idxprom37 = zext i16 %22 to i64, !dbg !1139
  %version39 = getelementptr inbounds %struct.extstore_page_data, %struct.extstore_page_data* %3, i64 %idxprom37, i32 0, !dbg !1140
  store i64 %conv35, i64* %version39, align 8, !dbg !1141, !tbaa !1142
  %bytes_used = getelementptr inbounds %struct._store_page, %struct._store_page* %12, i64 %indvars.iv, i32 2, !dbg !1143
  %23 = load i64, i64* %bytes_used, align 8, !dbg !1143, !tbaa !1144
  %bytes_used43 = getelementptr inbounds %struct.extstore_page_data, %struct.extstore_page_data* %3, i64 %idxprom37, i32 1, !dbg !1145
  store i64 %23, i64* %bytes_used43, align 8, !dbg !1146, !tbaa !1147
  %bucket = getelementptr inbounds %struct._store_page, %struct._store_page* %12, i64 %indvars.iv, i32 8, !dbg !1148
  %24 = load i32, i32* %bucket, align 8, !dbg !1148, !tbaa !1149
  %bucket47 = getelementptr inbounds %struct.extstore_page_data, %struct.extstore_page_data* %3, i64 %idxprom37, i32 2, !dbg !1150
  store i32 %24, i32* %bucket47, align 8, !dbg !1151, !tbaa !1152
  %25 = load i32, i32* %free_bucket, align 4, !dbg !1153, !tbaa !617
  %cmp49 = icmp eq i32 %25, 0, !dbg !1155
  br i1 %cmp49, label %land.lhs.true51, label %if.end59, !dbg !1156

land.lhs.true51:                                  ; preds = %if.then34
  %gcov_ctr122 = load i64, i64* getelementptr inbounds ([18 x i64], [18 x i64]* @__llvm_gcov_ctr.23, i64 0, i64 5), align 8, !dbg !1157
  %26 = add i64 %gcov_ctr122, 1, !dbg !1157
  store i64 %26, i64* getelementptr inbounds ([18 x i64], [18 x i64]* @__llvm_gcov_ctr.23, i64 0, i64 5), align 8, !dbg !1157
  %27 = load i32, i32* %version, align 8, !dbg !1158, !tbaa !956
  %conv53 = zext i32 %27 to i64, !dbg !1157
  %cmp54 = icmp ugt i64 %low_version.0220, %conv53, !dbg !1159
  br i1 %cmp54, label %if.then56, label %if.end59, !dbg !1160

if.then56:                                        ; preds = %land.lhs.true51
  %gcov_ctr123 = load i64, i64* getelementptr inbounds ([18 x i64], [18 x i64]* @__llvm_gcov_ctr.23, i64 0, i64 6), align 16, !dbg !1161
  %28 = add i64 %gcov_ctr123, 1, !dbg !1161
  store i64 %28, i64* getelementptr inbounds ([18 x i64], [18 x i64]* @__llvm_gcov_ctr.23, i64 0, i64 6), align 16, !dbg !1161
  %29 = load i32, i32* %version, align 8, !dbg !1163, !tbaa !956
  %conv58 = zext i32 %29 to i64, !dbg !1161
  call void @llvm.dbg.value(metadata i64 %conv58, metadata !1070, metadata !DIExpression()), !dbg !1086
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !1069, metadata !DIExpression()), !dbg !1086
  %30 = trunc i64 %indvars.iv to i32, !dbg !1164
  br label %if.end59, !dbg !1164

if.end59:                                         ; preds = %if.then56, %land.lhs.true51, %if.then34
  %low_page.1 = phi i32 [ %30, %if.then56 ], [ %low_page.0218, %land.lhs.true51 ], [ %low_page.0218, %if.then34 ], !dbg !1086
  %low_version.1 = phi i64 [ %conv58, %if.then56 ], [ %low_version.0220, %land.lhs.true51 ], [ %low_version.0220, %if.then34 ], !dbg !1086
  call void @llvm.dbg.value(metadata i64 %low_version.1, metadata !1070, metadata !DIExpression()), !dbg !1086
  call void @llvm.dbg.value(metadata i32 %low_page.1, metadata !1069, metadata !DIExpression()), !dbg !1086
  %gcov_ctr124 = load i64, i64* getelementptr inbounds ([18 x i64], [18 x i64]* @__llvm_gcov_ctr.23, i64 0, i64 7), align 8, !dbg !1165
  %31 = add i64 %gcov_ctr124, 1, !dbg !1165
  store i64 %31, i64* getelementptr inbounds ([18 x i64], [18 x i64]* @__llvm_gcov_ctr.23, i64 0, i64 7), align 8, !dbg !1165
  br label %if.end60, !dbg !1165

if.end60:                                         ; preds = %if.end59, %land.lhs.true
  %low_page.2.ph = phi i32 [ %low_page.1, %if.end59 ], [ %low_page.0218, %land.lhs.true ]
  %low_version.2.ph = phi i64 [ %low_version.1, %if.end59 ], [ %low_version.0220, %land.lhs.true ]
  %.pr = load i64, i64* %obj_count, align 8, !dbg !1166, !tbaa !1129
  call void @llvm.dbg.value(metadata i64 %low_version.2.ph, metadata !1070, metadata !DIExpression()), !dbg !1086
  call void @llvm.dbg.value(metadata i32 %low_page.2.ph, metadata !1069, metadata !DIExpression()), !dbg !1086
  %cmp62 = icmp eq i64 %.pr, 0, !dbg !1168
  br i1 %cmp62, label %land.lhs.true68, label %lor.lhs.false64, !dbg !1169

lor.lhs.false64:                                  ; preds = %if.end60
  %gcov_ctr125 = load i64, i64* getelementptr inbounds ([18 x i64], [18 x i64]* @__llvm_gcov_ctr.23, i64 0, i64 8), align 16, !dbg !1170
  %32 = add i64 %gcov_ctr125, 1, !dbg !1170
  store i64 %32, i64* getelementptr inbounds ([18 x i64], [18 x i64]* @__llvm_gcov_ctr.23, i64 0, i64 8), align 16, !dbg !1170
  %33 = load i8, i8* %closed, align 1, !dbg !1171, !tbaa !952, !range !948
  %tobool66.not = icmp eq i8 %33, 0, !dbg !1171
  br i1 %tobool66.not, label %cleanup.cont, label %land.lhs.true68, !dbg !1172

land.lhs.true68:                                  ; preds = %if.end30, %lor.lhs.false64, %if.end60
  %low_version.2205 = phi i64 [ %low_version.2.ph, %lor.lhs.false64 ], [ %low_version.2.ph, %if.end60 ], [ %low_version.0220, %if.end30 ]
  %low_page.2203 = phi i32 [ %low_page.2.ph, %lor.lhs.false64 ], [ %low_page.2.ph, %if.end60 ], [ %low_page.0218, %if.end30 ]
  %refcount = getelementptr inbounds %struct._store_page, %struct._store_page* %12, i64 %indvars.iv, i32 5, !dbg !1173
  %34 = load i32, i32* %refcount, align 4, !dbg !1173, !tbaa !981
  %cmp69 = icmp eq i32 %34, 0, !dbg !1174
  br i1 %cmp69, label %if.then71, label %cleanup.cont, !dbg !1175

if.then71:                                        ; preds = %land.lhs.true68
  %gcov_ctr126 = load i64, i64* getelementptr inbounds ([18 x i64], [18 x i64]* @__llvm_gcov_ctr.23, i64 0, i64 9), align 8, !dbg !1176
  %35 = add i64 %gcov_ctr126, 1, !dbg !1176
  store i64 %35, i64* getelementptr inbounds ([18 x i64], [18 x i64]* @__llvm_gcov_ctr.23, i64 0, i64 9), align 8, !dbg !1176
  tail call fastcc void @_free_page(%struct.store_engine* noundef nonnull %1, %struct._store_page* noundef nonnull %arrayidx) #14, !dbg !1178
  call void @llvm.dbg.value(metadata i8 0, metadata !1068, metadata !DIExpression()), !dbg !1086
  br label %cleanup.cont, !dbg !1179

cleanup:                                          ; preds = %for.body, %lor.lhs.false24
  %gcov_ctr120 = load i64, i64* getelementptr inbounds ([18 x i64], [18 x i64]* @__llvm_gcov_ctr.23, i64 0, i64 3), align 8, !dbg !1180
  %36 = add i64 %gcov_ctr120, 1, !dbg !1180
  store i64 %36, i64* getelementptr inbounds ([18 x i64], [18 x i64]* @__llvm_gcov_ctr.23, i64 0, i64 3), align 8, !dbg !1180
  %call29 = tail call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* noundef nonnull %mutex18) #12, !dbg !1182
  call void @llvm.dbg.value(metadata i8 %do_evict.1222, metadata !1068, metadata !DIExpression()), !dbg !1086
  call void @llvm.dbg.value(metadata i64 %low_version.0220, metadata !1070, metadata !DIExpression()), !dbg !1086
  call void @llvm.dbg.value(metadata i32 %low_page.0218, metadata !1069, metadata !DIExpression()), !dbg !1086
  br label %for.inc

cleanup.cont:                                     ; preds = %land.lhs.true68, %if.then71, %lor.lhs.false64
  %low_version.2204 = phi i64 [ %low_version.2205, %if.then71 ], [ %low_version.2205, %land.lhs.true68 ], [ %low_version.2.ph, %lor.lhs.false64 ]
  %low_page.2202 = phi i32 [ %low_page.2203, %if.then71 ], [ %low_page.2203, %land.lhs.true68 ], [ %low_page.2.ph, %lor.lhs.false64 ]
  %do_evict.2 = phi i8 [ 0, %if.then71 ], [ %do_evict.1222, %land.lhs.true68 ], [ %do_evict.1222, %lor.lhs.false64 ], !dbg !1086
  call void @llvm.dbg.value(metadata i8 %do_evict.2, metadata !1068, metadata !DIExpression()), !dbg !1086
  %gcov_ctr127 = load i64, i64* getelementptr inbounds ([18 x i64], [18 x i64]* @__llvm_gcov_ctr.23, i64 0, i64 10), align 16, !dbg !1183
  %37 = add i64 %gcov_ctr127, 1, !dbg !1183
  store i64 %37, i64* getelementptr inbounds ([18 x i64], [18 x i64]* @__llvm_gcov_ctr.23, i64 0, i64 10), align 16, !dbg !1183
  %call74 = tail call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* noundef nonnull %mutex18) #12, !dbg !1184
  call void @llvm.dbg.value(metadata i8 undef, metadata !1068, metadata !DIExpression()), !dbg !1086
  call void @llvm.dbg.value(metadata i64 undef, metadata !1070, metadata !DIExpression()), !dbg !1086
  call void @llvm.dbg.value(metadata i32 undef, metadata !1069, metadata !DIExpression()), !dbg !1086
  %gcov_ctr129 = load i64, i64* getelementptr inbounds ([18 x i64], [18 x i64]* @__llvm_gcov_ctr.23, i64 0, i64 12), align 16, !dbg !1185
  %38 = add i64 %gcov_ctr129, 1, !dbg !1185
  store i64 %38, i64* getelementptr inbounds ([18 x i64], [18 x i64]* @__llvm_gcov_ctr.23, i64 0, i64 12), align 16, !dbg !1185
  br label %for.inc, !dbg !1185

for.inc:                                          ; preds = %cleanup, %cleanup.cont
  %do_evict.3215 = phi i8 [ %do_evict.1222, %cleanup ], [ %do_evict.2, %cleanup.cont ]
  %low_version.3213 = phi i64 [ %low_version.0220, %cleanup ], [ %low_version.2204, %cleanup.cont ]
  %low_page.3211 = phi i32 [ %low_page.0218, %cleanup ], [ %low_page.2202, %cleanup.cont ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !1186
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !1066, metadata !DIExpression()), !dbg !1086
  call void @llvm.dbg.value(metadata i8 %do_evict.3215, metadata !1068, metadata !DIExpression()), !dbg !1086
  call void @llvm.dbg.value(metadata i64 %low_version.3213, metadata !1070, metadata !DIExpression()), !dbg !1086
  call void @llvm.dbg.value(metadata i32 %low_page.3211, metadata !1069, metadata !DIExpression()), !dbg !1086
  %39 = load i32, i32* %page_count, align 4, !dbg !1106, !tbaa !270
  %40 = zext i32 %39 to i64, !dbg !1107
  %cmp16 = icmp ult i64 %indvars.iv.next, %40, !dbg !1107
  br i1 %cmp16, label %for.body, label %for.end, !dbg !1108, !llvm.loop !1187

for.end:                                          ; preds = %for.inc
  %41 = and i8 %do_evict.3215, 1, !dbg !1189
  %tobool75.not = icmp eq i8 %41, 0, !dbg !1189
  br i1 %tobool75.not, label %if.end108, label %land.lhs.true77, !dbg !1190

for.end.thread:                                   ; preds = %if.end
  br i1 %tobool75.not230, label %if.end108, label %land.lhs.true77.thread, !dbg !1190

land.lhs.true77.thread:                           ; preds = %for.end.thread
  %gcov_ctr130235 = load i64, i64* getelementptr inbounds ([18 x i64], [18 x i64]* @__llvm_gcov_ctr.23, i64 0, i64 13), align 8, !dbg !1191
  %42 = add i64 %gcov_ctr130235, 1, !dbg !1191
  store i64 %42, i64* getelementptr inbounds ([18 x i64], [18 x i64]* @__llvm_gcov_ctr.23, i64 0, i64 13), align 8, !dbg !1191
  br label %if.end108, !dbg !1192

land.lhs.true77:                                  ; preds = %for.end
  %gcov_ctr130 = load i64, i64* getelementptr inbounds ([18 x i64], [18 x i64]* @__llvm_gcov_ctr.23, i64 0, i64 13), align 8, !dbg !1191
  %43 = add i64 %gcov_ctr130, 1, !dbg !1191
  store i64 %43, i64* getelementptr inbounds ([18 x i64], [18 x i64]* @__llvm_gcov_ctr.23, i64 0, i64 13), align 8, !dbg !1191
  %cmp78.not = icmp eq i64 %low_version.3213, -1, !dbg !1193
  br i1 %cmp78.not, label %if.end108, label %if.then80, !dbg !1192

if.then80:                                        ; preds = %land.lhs.true77
  %gcov_ctr131 = load i64, i64* getelementptr inbounds ([18 x i64], [18 x i64]* @__llvm_gcov_ctr.23, i64 0, i64 14), align 16, !dbg !1194
  %44 = add i64 %gcov_ctr131, 1, !dbg !1194
  store i64 %44, i64* getelementptr inbounds ([18 x i64], [18 x i64]* @__llvm_gcov_ctr.23, i64 0, i64 14), align 16, !dbg !1194
  %45 = load %struct._store_page*, %struct._store_page** %pages, align 8, !dbg !1195, !tbaa !561
  %idxprom83 = zext i32 %low_page.3211 to i64, !dbg !1196
  %arrayidx84 = getelementptr inbounds %struct._store_page, %struct._store_page* %45, i64 %idxprom83, !dbg !1196
  call void @llvm.dbg.value(metadata %struct._store_page* %arrayidx84, metadata !1075, metadata !DIExpression()), !dbg !1197
  %mutex85 = getelementptr inbounds %struct._store_page, %struct._store_page* %arrayidx84, i64 0, i32 0, !dbg !1198
  %call86 = tail call i32 @pthread_mutex_lock(%union.pthread_mutex_t* noundef %mutex85) #12, !dbg !1199
  %closed87 = getelementptr inbounds %struct._store_page, %struct._store_page* %45, i64 %idxprom83, i32 13, !dbg !1200
  %46 = load i8, i8* %closed87, align 1, !dbg !1200, !tbaa !952, !range !948
  %tobool88.not = icmp eq i8 %46, 0, !dbg !1200
  br i1 %tobool88.not, label %if.then89, label %if.end105, !dbg !1202

if.then89:                                        ; preds = %if.then80
  store i8 1, i8* %closed87, align 1, !dbg !1203, !tbaa !952
  %call91 = tail call i32 @pthread_mutex_lock(%union.pthread_mutex_t* noundef nonnull %stats_mutex) #12, !dbg !1205
  %47 = load i64, i64* %page_evictions, align 8, !dbg !1206, !tbaa !1207
  %inc92 = add i64 %47, 1, !dbg !1206
  store i64 %inc92, i64* %page_evictions, align 8, !dbg !1206, !tbaa !1207
  %obj_count93 = getelementptr inbounds %struct._store_page, %struct._store_page* %45, i64 %idxprom83, i32 1, !dbg !1208
  %48 = load i64, i64* %obj_count93, align 8, !dbg !1208, !tbaa !1129
  %49 = load i64, i64* %objects_evicted, align 8, !dbg !1209, !tbaa !1210
  %add = add i64 %49, %48, !dbg !1209
  store i64 %add, i64* %objects_evicted, align 8, !dbg !1209, !tbaa !1210
  %bytes_used95 = getelementptr inbounds %struct._store_page, %struct._store_page* %45, i64 %idxprom83, i32 2, !dbg !1211
  %50 = load i64, i64* %bytes_used95, align 8, !dbg !1211, !tbaa !1144
  %51 = load i64, i64* %bytes_evicted, align 8, !dbg !1212, !tbaa !1213
  %add97 = add i64 %51, %50, !dbg !1212
  store i64 %add97, i64* %bytes_evicted, align 8, !dbg !1212, !tbaa !1213
  %call99 = tail call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* noundef nonnull %stats_mutex) #12, !dbg !1214
  %refcount100 = getelementptr inbounds %struct._store_page, %struct._store_page* %45, i64 %idxprom83, i32 5, !dbg !1215
  %52 = load i32, i32* %refcount100, align 4, !dbg !1215, !tbaa !981
  %cmp101 = icmp eq i32 %52, 0, !dbg !1217
  br i1 %cmp101, label %if.then103, label %if.end104, !dbg !1218

if.then103:                                       ; preds = %if.then89
  %gcov_ctr132 = load i64, i64* getelementptr inbounds ([18 x i64], [18 x i64]* @__llvm_gcov_ctr.23, i64 0, i64 15), align 8, !dbg !1219
  %53 = add i64 %gcov_ctr132, 1, !dbg !1219
  store i64 %53, i64* getelementptr inbounds ([18 x i64], [18 x i64]* @__llvm_gcov_ctr.23, i64 0, i64 15), align 8, !dbg !1219
  tail call fastcc void @_free_page(%struct.store_engine* noundef nonnull %1, %struct._store_page* noundef nonnull %arrayidx84) #14, !dbg !1221
  br label %if.end104, !dbg !1222

if.end104:                                        ; preds = %if.then103, %if.then89
  %gcov_ctr133 = load i64, i64* getelementptr inbounds ([18 x i64], [18 x i64]* @__llvm_gcov_ctr.23, i64 0, i64 16), align 16, !dbg !1223
  %54 = add i64 %gcov_ctr133, 1, !dbg !1223
  store i64 %54, i64* getelementptr inbounds ([18 x i64], [18 x i64]* @__llvm_gcov_ctr.23, i64 0, i64 16), align 16, !dbg !1223
  br label %if.end105, !dbg !1223

if.end105:                                        ; preds = %if.end104, %if.then80
  %call107 = tail call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* noundef nonnull %mutex85) #12, !dbg !1224
  br label %if.end108, !dbg !1225

if.end108:                                        ; preds = %land.lhs.true77.thread, %for.end.thread, %if.end105, %land.lhs.true77, %for.end
  %gcov_ctr134 = load i64, i64* getelementptr inbounds ([18 x i64], [18 x i64]* @__llvm_gcov_ctr.23, i64 0, i64 17), align 8, !dbg !1226
  %55 = add i64 %gcov_ctr134, 1, !dbg !1226
  store i64 %55, i64* getelementptr inbounds ([18 x i64], [18 x i64]* @__llvm_gcov_ctr.23, i64 0, i64 17), align 8, !dbg !1226
  %call110 = tail call i32 @pthread_mutex_lock(%union.pthread_mutex_t* noundef nonnull %stats_mutex) #12, !dbg !1226
  %56 = load i8*, i8** %5, align 8, !dbg !1227, !tbaa !340
  %57 = load i32, i32* %page_count, align 4, !dbg !1228, !tbaa !270
  %conv113 = zext i32 %57 to i64, !dbg !1229
  %mul114 = mul nuw nsw i64 %conv113, 24, !dbg !1230
  %call115 = tail call i8* @memcpy(i8* noundef %56, i8* noundef %call, i64 noundef %mul114) #12, !dbg !1231
  %call117 = tail call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* noundef nonnull %stats_mutex) #12, !dbg !1232
  br label %while.cond, !dbg !1085, !llvm.loop !1233
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @extstore_run_maint(i8* nocapture noundef readonly %ptr) local_unnamed_addr #0 !dbg !1235 {
entry:
  %gcov_ctr = load i64, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.24, i64 0, i64 0), align 8
  %0 = add i64 %gcov_ctr, 1
  store i64 %0, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.24, i64 0, i64 0), align 8
  call void @llvm.dbg.value(metadata i8* %ptr, metadata !1237, metadata !DIExpression()), !dbg !1239
  call void @llvm.dbg.value(metadata i8* %ptr, metadata !1238, metadata !DIExpression()), !dbg !1239
  %maint_thread = getelementptr inbounds i8, i8* %ptr, i64 72, !dbg !1240
  %1 = bitcast i8* %maint_thread to %struct.store_maint_thread**, !dbg !1240
  %2 = load %struct.store_maint_thread*, %struct.store_maint_thread** %1, align 8, !dbg !1240, !tbaa !757
  %cond = getelementptr inbounds %struct.store_maint_thread, %struct.store_maint_thread* %2, i64 0, i32 1, !dbg !1241
  %call = tail call i32 @pthread_cond_signal(%union.pthread_cond_t* noundef nonnull %cond) #12, !dbg !1242
  ret void, !dbg !1243
}

; Function Attrs: nounwind
declare !dbg !1244 dso_local i32 @pthread_cond_signal(%union.pthread_cond_t* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @extstore_write_request(i8* noundef %ptr, i32 noundef %bucket, i32 noundef %free_bucket, %struct._obj_io* nocapture noundef %io) local_unnamed_addr #0 !dbg !1247 {
entry:
  call void @llvm.dbg.value(metadata i8* %ptr, metadata !1251, metadata !DIExpression()), !dbg !1258
  call void @llvm.dbg.value(metadata i32 %bucket, metadata !1252, metadata !DIExpression()), !dbg !1258
  call void @llvm.dbg.value(metadata i32 %free_bucket, metadata !1253, metadata !DIExpression()), !dbg !1258
  call void @llvm.dbg.value(metadata %struct._obj_io* %io, metadata !1254, metadata !DIExpression()), !dbg !1258
  %0 = bitcast i8* %ptr to %struct.store_engine*, !dbg !1259
  call void @llvm.dbg.value(metadata %struct.store_engine* %0, metadata !1255, metadata !DIExpression()), !dbg !1258
  call void @llvm.dbg.value(metadata i32 -1, metadata !1257, metadata !DIExpression()), !dbg !1258
  %page_bucketcount = getelementptr inbounds i8, i8* %ptr, i64 132, !dbg !1260
  %1 = bitcast i8* %page_bucketcount to i32*, !dbg !1260
  %2 = load i32, i32* %1, align 4, !dbg !1260, !tbaa !639
  %cmp.not = icmp ugt i32 %2, %bucket, !dbg !1262
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !1263

if.then:                                          ; preds = %entry
  %gcov_ctr = load i64, i64* getelementptr inbounds ([15 x i64], [15 x i64]* @__llvm_gcov_ctr.25, i64 0, i64 0), align 16, !dbg !1264
  %3 = add i64 %gcov_ctr, 1, !dbg !1264
  store i64 %3, i64* getelementptr inbounds ([15 x i64], [15 x i64]* @__llvm_gcov_ctr.25, i64 0, i64 0), align 16, !dbg !1264
  br label %cleanup, !dbg !1265

if.end:                                           ; preds = %entry
  %mutex = bitcast i8* %ptr to %union.pthread_mutex_t*, !dbg !1266
  %call = tail call i32 @pthread_mutex_lock(%union.pthread_mutex_t* noundef %mutex) #12, !dbg !1267
  %page_buckets = getelementptr inbounds i8, i8* %ptr, i64 88, !dbg !1268
  %4 = bitcast i8* %page_buckets to %struct._store_page***, !dbg !1268
  %5 = load %struct._store_page**, %struct._store_page*** %4, align 8, !dbg !1268, !tbaa !683
  %idxprom = zext i32 %bucket to i64, !dbg !1269
  %arrayidx = getelementptr inbounds %struct._store_page*, %struct._store_page** %5, i64 %idxprom, !dbg !1269
  %6 = load %struct._store_page*, %struct._store_page** %arrayidx, align 8, !dbg !1269, !tbaa !658
  call void @llvm.dbg.value(metadata %struct._store_page* %6, metadata !1256, metadata !DIExpression()), !dbg !1258
  %tobool.not = icmp eq %struct._store_page* %6, null, !dbg !1270
  br i1 %tobool.not, label %if.end3, label %if.end3.thread, !dbg !1272

if.end3.thread:                                   ; preds = %if.end
  call void @llvm.dbg.value(metadata %struct._store_page* %call2, metadata !1256, metadata !DIExpression()), !dbg !1258
  %call5130 = tail call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* noundef nonnull %mutex) #12, !dbg !1273
  br label %if.end8, !dbg !1274

if.end3:                                          ; preds = %if.end
  %gcov_ctr70 = load i64, i64* getelementptr inbounds ([15 x i64], [15 x i64]* @__llvm_gcov_ctr.25, i64 0, i64 1), align 8, !dbg !1275
  %7 = add i64 %gcov_ctr70, 1, !dbg !1275
  store i64 %7, i64* getelementptr inbounds ([15 x i64], [15 x i64]* @__llvm_gcov_ctr.25, i64 0, i64 1), align 8, !dbg !1275
  %call2 = tail call fastcc %struct._store_page* @_allocate_page(%struct.store_engine* noundef nonnull %0, i32 noundef %bucket, i32 noundef %free_bucket) #14, !dbg !1277
  call void @llvm.dbg.value(metadata %struct._store_page* %call2, metadata !1256, metadata !DIExpression()), !dbg !1258
  %call5 = tail call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* noundef nonnull %mutex) #12, !dbg !1273
  %tobool6.not = icmp eq %struct._store_page* %call2, null, !dbg !1278
  br i1 %tobool6.not, label %if.then7, label %if.end8, !dbg !1274

if.then7:                                         ; preds = %if.end3
  %gcov_ctr71 = load i64, i64* getelementptr inbounds ([15 x i64], [15 x i64]* @__llvm_gcov_ctr.25, i64 0, i64 2), align 16, !dbg !1280
  %8 = add i64 %gcov_ctr71, 1, !dbg !1280
  store i64 %8, i64* getelementptr inbounds ([15 x i64], [15 x i64]* @__llvm_gcov_ctr.25, i64 0, i64 2), align 16, !dbg !1280
  br label %cleanup, !dbg !1281

if.end8:                                          ; preds = %if.end3.thread, %if.end3
  %p.0132 = phi %struct._store_page* [ %6, %if.end3.thread ], [ %call2, %if.end3 ]
  %mutex9 = getelementptr inbounds %struct._store_page, %struct._store_page* %p.0132, i64 0, i32 0, !dbg !1282
  %call10 = tail call i32 @pthread_mutex_lock(%union.pthread_mutex_t* noundef nonnull %mutex9) #12, !dbg !1283
  %active = getelementptr inbounds %struct._store_page, %struct._store_page* %p.0132, i64 0, i32 12, !dbg !1284
  %9 = load i8, i8* %active, align 2, !dbg !1284, !tbaa !964, !range !948
  %tobool11.not = icmp eq i8 %9, 0, !dbg !1284
  br i1 %tobool11.not, label %if.then18, label %lor.lhs.false, !dbg !1286

lor.lhs.false:                                    ; preds = %if.end8
  %gcov_ctr72 = load i64, i64* getelementptr inbounds ([15 x i64], [15 x i64]* @__llvm_gcov_ctr.25, i64 0, i64 3), align 8, !dbg !1287
  %10 = add i64 %gcov_ctr72, 1, !dbg !1287
  store i64 %10, i64* getelementptr inbounds ([15 x i64], [15 x i64]* @__llvm_gcov_ctr.25, i64 0, i64 3), align 8, !dbg !1287
  %wbuf = getelementptr inbounds %struct._store_page, %struct._store_page* %p.0132, i64 0, i32 15, !dbg !1288
  %11 = load %struct.__store_wbuf*, %struct.__store_wbuf** %wbuf, align 8, !dbg !1288, !tbaa !1289
  %tobool12.not = icmp eq %struct.__store_wbuf* %11, null, !dbg !1287
  br i1 %tobool12.not, label %land.lhs.true, label %lor.lhs.false13, !dbg !1290

lor.lhs.false13:                                  ; preds = %lor.lhs.false
  %gcov_ctr73 = load i64, i64* getelementptr inbounds ([15 x i64], [15 x i64]* @__llvm_gcov_ctr.25, i64 0, i64 4), align 16, !dbg !1291
  %12 = add i64 %gcov_ctr73, 1, !dbg !1291
  store i64 %12, i64* getelementptr inbounds ([15 x i64], [15 x i64]* @__llvm_gcov_ctr.25, i64 0, i64 4), align 16, !dbg !1291
  %full = getelementptr inbounds %struct.__store_wbuf, %struct.__store_wbuf* %11, i64 0, i32 6, !dbg !1292
  %13 = load i8, i8* %full, align 4, !dbg !1292, !tbaa !1293, !range !948
  %tobool15.not = icmp eq i8 %13, 0, !dbg !1292
  br i1 %tobool15.not, label %land.lhs.true29, label %land.lhs.true.thread, !dbg !1294

land.lhs.true:                                    ; preds = %lor.lhs.false
  %allocated = getelementptr inbounds %struct._store_page, %struct._store_page* %p.0132, i64 0, i32 6, !dbg !1295
  %14 = load i32, i32* %allocated, align 8, !dbg !1295, !tbaa !1296
  %conv = zext i32 %14 to i64, !dbg !1297
  %page_size = getelementptr inbounds i8, i8* %ptr, i64 104, !dbg !1298
  %15 = bitcast i8* %page_size to i64*, !dbg !1298
  %16 = load i64, i64* %15, align 8, !dbg !1298, !tbaa !289
  %cmp16.not = icmp ugt i64 %16, %conv, !dbg !1299
  br i1 %cmp16.not, label %land.lhs.true43, label %if.then18, !dbg !1300

land.lhs.true.thread:                             ; preds = %lor.lhs.false13
  %allocated142 = getelementptr inbounds %struct._store_page, %struct._store_page* %p.0132, i64 0, i32 6, !dbg !1295
  %17 = load i32, i32* %allocated142, align 8, !dbg !1295, !tbaa !1296
  %conv143 = zext i32 %17 to i64, !dbg !1297
  %page_size144 = getelementptr inbounds i8, i8* %ptr, i64 104, !dbg !1298
  %18 = bitcast i8* %page_size144 to i64*, !dbg !1298
  %19 = load i64, i64* %18, align 8, !dbg !1298, !tbaa !289
  %cmp16.not145 = icmp ugt i64 %19, %conv143, !dbg !1299
  br i1 %cmp16.not145, label %land.lhs.true29, label %if.then18, !dbg !1300

if.then18:                                        ; preds = %land.lhs.true.thread, %land.lhs.true, %if.end8
  %gcov_ctr74 = load i64, i64* getelementptr inbounds ([15 x i64], [15 x i64]* @__llvm_gcov_ctr.25, i64 0, i64 5), align 8, !dbg !1301
  %20 = add i64 %gcov_ctr74, 1, !dbg !1301
  store i64 %20, i64* getelementptr inbounds ([15 x i64], [15 x i64]* @__llvm_gcov_ctr.25, i64 0, i64 5), align 8, !dbg !1301
  %call20 = tail call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* noundef nonnull %mutex9) #12, !dbg !1303
  %call22 = tail call i32 @pthread_mutex_lock(%union.pthread_mutex_t* noundef nonnull %mutex) #12, !dbg !1304
  %call23 = tail call fastcc %struct._store_page* @_allocate_page(%struct.store_engine* noundef nonnull %0, i32 noundef %bucket, i32 noundef %free_bucket) #14, !dbg !1305
  %call25 = tail call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* noundef nonnull %mutex) #12, !dbg !1306
  br label %cleanup, !dbg !1307

land.lhs.true29:                                  ; preds = %land.lhs.true.thread, %lor.lhs.false13
  %gcov_ctr75 = load i64, i64* getelementptr inbounds ([15 x i64], [15 x i64]* @__llvm_gcov_ctr.25, i64 0, i64 6), align 16, !dbg !1308
  %21 = add i64 %gcov_ctr75, 1, !dbg !1308
  store i64 %21, i64* getelementptr inbounds ([15 x i64], [15 x i64]* @__llvm_gcov_ctr.25, i64 0, i64 6), align 16, !dbg !1308
  %free = getelementptr inbounds %struct.__store_wbuf, %struct.__store_wbuf* %11, i64 0, i32 3, !dbg !1310
  %22 = load i32, i32* %free, align 8, !dbg !1310, !tbaa !833
  %len = getelementptr inbounds %struct._obj_io, %struct._obj_io* %io, i64 0, i32 6, !dbg !1311
  %23 = load i32, i32* %len, align 8, !dbg !1311, !tbaa !991
  %cmp31 = icmp ult i32 %22, %23, !dbg !1312
  br i1 %cmp31, label %land.lhs.true33, label %land.lhs.true53, !dbg !1313

land.lhs.true33:                                  ; preds = %land.lhs.true29
  %gcov_ctr76 = load i64, i64* getelementptr inbounds ([15 x i64], [15 x i64]* @__llvm_gcov_ctr.25, i64 0, i64 7), align 8, !dbg !1314
  %24 = add i64 %gcov_ctr76, 1, !dbg !1314
  store i64 %24, i64* getelementptr inbounds ([15 x i64], [15 x i64]* @__llvm_gcov_ctr.25, i64 0, i64 7), align 8, !dbg !1314
  %full35 = getelementptr inbounds %struct.__store_wbuf, %struct.__store_wbuf* %11, i64 0, i32 6, !dbg !1315
  %25 = load i8, i8* %full35, align 4, !dbg !1315, !tbaa !1293, !range !948
  %tobool36.not = icmp eq i8 %25, 0, !dbg !1315
  br i1 %tobool36.not, label %if.end40.thread135, label %land.lhs.true53, !dbg !1316

if.end40.thread135:                               ; preds = %land.lhs.true33
  %gcov_ctr77 = load i64, i64* getelementptr inbounds ([15 x i64], [15 x i64]* @__llvm_gcov_ctr.25, i64 0, i64 8), align 16, !dbg !1317
  %26 = add i64 %gcov_ctr77, 1, !dbg !1317
  store i64 %26, i64* getelementptr inbounds ([15 x i64], [15 x i64]* @__llvm_gcov_ctr.25, i64 0, i64 8), align 16, !dbg !1317
  tail call fastcc void @_submit_wbuf(%struct.store_engine* noundef nonnull %0, %struct._store_page* noundef nonnull %p.0132) #14, !dbg !1319
  %27 = load %struct.__store_wbuf*, %struct.__store_wbuf** %wbuf, align 8, !dbg !1320, !tbaa !1289
  %full39 = getelementptr inbounds %struct.__store_wbuf, %struct.__store_wbuf* %27, i64 0, i32 6, !dbg !1321
  store i8 1, i8* %full39, align 4, !dbg !1322, !tbaa !1293
  br label %land.lhs.true53, !dbg !1323

land.lhs.true43:                                  ; preds = %land.lhs.true
  %gcov_ctr78 = load i64, i64* getelementptr inbounds ([15 x i64], [15 x i64]* @__llvm_gcov_ctr.25, i64 0, i64 9), align 8, !dbg !1325
  %28 = add i64 %gcov_ctr78, 1, !dbg !1325
  store i64 %28, i64* getelementptr inbounds ([15 x i64], [15 x i64]* @__llvm_gcov_ctr.25, i64 0, i64 9), align 8, !dbg !1325
  %allocated44 = getelementptr inbounds %struct._store_page, %struct._store_page* %p.0132, i64 0, i32 6, !dbg !1326
  %29 = load i32, i32* %allocated44, align 8, !dbg !1326, !tbaa !1296
  %conv45 = zext i32 %29 to i64, !dbg !1325
  %page_size46 = getelementptr inbounds i8, i8* %ptr, i64 104, !dbg !1327
  %30 = bitcast i8* %page_size46 to i64*, !dbg !1327
  %31 = load i64, i64* %30, align 8, !dbg !1327, !tbaa !289
  %cmp47 = icmp ugt i64 %31, %conv45, !dbg !1328
  br i1 %cmp47, label %if.then49, label %if.end50, !dbg !1329

if.then49:                                        ; preds = %land.lhs.true43
  %gcov_ctr79 = load i64, i64* getelementptr inbounds ([15 x i64], [15 x i64]* @__llvm_gcov_ctr.25, i64 0, i64 10), align 16, !dbg !1330
  %32 = add i64 %gcov_ctr79, 1, !dbg !1330
  store i64 %32, i64* getelementptr inbounds ([15 x i64], [15 x i64]* @__llvm_gcov_ctr.25, i64 0, i64 10), align 16, !dbg !1330
  tail call fastcc void @_allocate_wbuf(%struct.store_engine* noundef nonnull %0, %struct._store_page* noundef nonnull %p.0132) #14, !dbg !1332
  %.pr137.pre = load %struct.__store_wbuf*, %struct.__store_wbuf** %wbuf, align 8, !dbg !1333, !tbaa !1289
  br label %if.end50, !dbg !1335

if.end50:                                         ; preds = %if.then49, %land.lhs.true43
  %.pr137 = phi %struct.__store_wbuf* [ %.pr137.pre, %if.then49 ], [ %11, %land.lhs.true43 ], !dbg !1333
  %tobool52.not = icmp eq %struct.__store_wbuf* %.pr137, null, !dbg !1336
  br i1 %tobool52.not, label %if.end65, label %land.lhs.true53, !dbg !1337

land.lhs.true53:                                  ; preds = %land.lhs.true29, %land.lhs.true33, %if.end40.thread135, %if.end50
  %33 = phi %struct.__store_wbuf* [ %.pr137, %if.end50 ], [ %27, %if.end40.thread135 ], [ %11, %land.lhs.true33 ], [ %11, %land.lhs.true29 ]
  %gcov_ctr80 = load i64, i64* getelementptr inbounds ([15 x i64], [15 x i64]* @__llvm_gcov_ctr.25, i64 0, i64 11), align 8, !dbg !1338
  %34 = add i64 %gcov_ctr80, 1, !dbg !1338
  store i64 %34, i64* getelementptr inbounds ([15 x i64], [15 x i64]* @__llvm_gcov_ctr.25, i64 0, i64 11), align 8, !dbg !1338
  %full55 = getelementptr inbounds %struct.__store_wbuf, %struct.__store_wbuf* %33, i64 0, i32 6, !dbg !1339
  %35 = load i8, i8* %full55, align 4, !dbg !1339, !tbaa !1293, !range !948
  %tobool56.not = icmp eq i8 %35, 0, !dbg !1339
  br i1 %tobool56.not, label %land.lhs.true57, label %if.end65, !dbg !1340

land.lhs.true57:                                  ; preds = %land.lhs.true53
  %gcov_ctr81 = load i64, i64* getelementptr inbounds ([15 x i64], [15 x i64]* @__llvm_gcov_ctr.25, i64 0, i64 12), align 16, !dbg !1341
  %36 = add i64 %gcov_ctr81, 1, !dbg !1341
  store i64 %36, i64* getelementptr inbounds ([15 x i64], [15 x i64]* @__llvm_gcov_ctr.25, i64 0, i64 12), align 16, !dbg !1341
  %free59 = getelementptr inbounds %struct.__store_wbuf, %struct.__store_wbuf* %33, i64 0, i32 3, !dbg !1342
  %37 = load i32, i32* %free59, align 8, !dbg !1342, !tbaa !833
  %len60 = getelementptr inbounds %struct._obj_io, %struct._obj_io* %io, i64 0, i32 6, !dbg !1343
  %38 = load i32, i32* %len60, align 8, !dbg !1343, !tbaa !991
  %cmp61.not = icmp ult i32 %37, %38, !dbg !1344
  br i1 %cmp61.not, label %if.end65, label %if.then63, !dbg !1345

if.then63:                                        ; preds = %land.lhs.true57
  %gcov_ctr82 = load i64, i64* getelementptr inbounds ([15 x i64], [15 x i64]* @__llvm_gcov_ctr.25, i64 0, i64 13), align 8, !dbg !1346
  %39 = add i64 %gcov_ctr82, 1, !dbg !1346
  store i64 %39, i64* getelementptr inbounds ([15 x i64], [15 x i64]* @__llvm_gcov_ctr.25, i64 0, i64 13), align 8, !dbg !1346
  %40 = load %struct.__store_wbuf*, %struct.__store_wbuf** %wbuf, align 8, !dbg !1348, !tbaa !1289
  %buf_pos = getelementptr inbounds %struct.__store_wbuf, %struct.__store_wbuf* %40, i64 0, i32 2, !dbg !1349
  %41 = load i8*, i8** %buf_pos, align 8, !dbg !1349, !tbaa !829
  %buf = getelementptr inbounds %struct._obj_io, %struct._obj_io* %io, i64 0, i32 2, !dbg !1350
  store i8* %41, i8** %buf, align 8, !dbg !1351, !tbaa !1010
  %id = getelementptr inbounds %struct._store_page, %struct._store_page* %p.0132, i64 0, i32 11, !dbg !1352
  %42 = load i16, i16* %id, align 4, !dbg !1352, !tbaa !606
  %page_id = getelementptr inbounds %struct._obj_io, %struct._obj_io* %io, i64 0, i32 8, !dbg !1353
  store i16 %42, i16* %page_id, align 8, !dbg !1354, !tbaa !938
  br label %cleanup, !dbg !1355

if.end65:                                         ; preds = %land.lhs.true57, %land.lhs.true53, %if.end50
  %gcov_ctr83 = load i64, i64* getelementptr inbounds ([15 x i64], [15 x i64]* @__llvm_gcov_ctr.25, i64 0, i64 14), align 16, !dbg !1356
  %43 = add i64 %gcov_ctr83, 1, !dbg !1356
  store i64 %43, i64* getelementptr inbounds ([15 x i64], [15 x i64]* @__llvm_gcov_ctr.25, i64 0, i64 14), align 16, !dbg !1356
  %call67 = tail call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* noundef nonnull %mutex9) #12, !dbg !1357
  br label %cleanup, !dbg !1358

cleanup:                                          ; preds = %if.end65, %if.then63, %if.then18, %if.then7, %if.then
  %retval.0 = phi i32 [ -1, %if.then ], [ -1, %if.then18 ], [ -1, %if.end65 ], [ 0, %if.then63 ], [ -1, %if.then7 ], !dbg !1258
  ret i32 %retval.0, !dbg !1359
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct._store_page* @_allocate_page(%struct.store_engine* noundef %e, i32 noundef %bucket, i32 noundef %free_bucket) unnamed_addr #0 !dbg !1360 {
entry:
  call void @llvm.dbg.value(metadata %struct.store_engine* %e, metadata !1364, metadata !DIExpression()), !dbg !1368
  call void @llvm.dbg.value(metadata i32 %bucket, metadata !1365, metadata !DIExpression()), !dbg !1368
  call void @llvm.dbg.value(metadata i32 %free_bucket, metadata !1366, metadata !DIExpression()), !dbg !1368
  %page_buckets = getelementptr inbounds %struct.store_engine, %struct.store_engine* %e, i64 0, i32 7, !dbg !1369
  %0 = load %struct._store_page**, %struct._store_page*** %page_buckets, align 8, !dbg !1369, !tbaa !683
  %idxprom = zext i32 %bucket to i64, !dbg !1369
  %arrayidx = getelementptr inbounds %struct._store_page*, %struct._store_page** %0, i64 %idxprom, !dbg !1369
  %1 = load %struct._store_page*, %struct._store_page** %arrayidx, align 8, !dbg !1369, !tbaa !658
  %tobool.not = icmp eq %struct._store_page* %1, null, !dbg !1369
  br i1 %tobool.not, label %if.end, label %lor.lhs.false, !dbg !1369

lor.lhs.false:                                    ; preds = %entry
  %gcov_ctr = load i64, i64* getelementptr inbounds ([11 x i64], [11 x i64]* @__llvm_gcov_ctr.26, i64 0, i64 0), align 16, !dbg !1369
  %2 = add i64 %gcov_ctr, 1, !dbg !1369
  store i64 %2, i64* getelementptr inbounds ([11 x i64], [11 x i64]* @__llvm_gcov_ctr.26, i64 0, i64 0), align 16, !dbg !1369
  %3 = load %struct._store_page*, %struct._store_page** %arrayidx, align 8, !dbg !1369, !tbaa !658
  %allocated = getelementptr inbounds %struct._store_page, %struct._store_page* %3, i64 0, i32 6, !dbg !1369
  %4 = load i32, i32* %allocated, align 8, !dbg !1369, !tbaa !1296
  %conv = zext i32 %4 to i64, !dbg !1369
  %page_size = getelementptr inbounds %struct.store_engine, %struct.store_engine* %e, i64 0, i32 9, !dbg !1369
  %5 = load i64, i64* %page_size, align 8, !dbg !1369, !tbaa !289
  %cmp = icmp eq i64 %5, %conv, !dbg !1369
  br i1 %cmp, label %if.end, label %if.else, !dbg !1372

if.else:                                          ; preds = %lor.lhs.false
  %gcov_ctr59 = load i64, i64* getelementptr inbounds ([11 x i64], [11 x i64]* @__llvm_gcov_ctr.26, i64 0, i64 1), align 8, !dbg !1369
  %6 = add i64 %gcov_ctr59, 1, !dbg !1369
  store i64 %6, i64* getelementptr inbounds ([11 x i64], [11 x i64]* @__llvm_gcov_ctr.26, i64 0, i64 1), align 8, !dbg !1369
  tail call void @__assert_fail(i8* noundef getelementptr inbounds ([79 x i8], [79 x i8]* @.str.11, i64 0, i64 0), i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i64 0, i64 0), i32 noundef 404, i8* noundef getelementptr inbounds ([71 x i8], [71 x i8]* @__PRETTY_FUNCTION__._allocate_page, i64 0, i64 0)) #15, !dbg !1369
  unreachable, !dbg !1369

if.end:                                           ; preds = %entry, %lor.lhs.false
  call void @llvm.dbg.value(metadata %struct._store_page* null, metadata !1367, metadata !DIExpression()), !dbg !1368
  %cmp5.not = icmp eq i32 %free_bucket, 0, !dbg !1373
  br i1 %cmp5.not, label %land.lhs.true26, label %land.lhs.true, !dbg !1375

land.lhs.true:                                    ; preds = %if.end
  %gcov_ctr60 = load i64, i64* getelementptr inbounds ([11 x i64], [11 x i64]* @__llvm_gcov_ctr.26, i64 0, i64 2), align 16, !dbg !1376
  %7 = add i64 %gcov_ctr60, 1, !dbg !1376
  store i64 %7, i64* getelementptr inbounds ([11 x i64], [11 x i64]* @__llvm_gcov_ctr.26, i64 0, i64 2), align 16, !dbg !1376
  %free_page_buckets = getelementptr inbounds %struct.store_engine, %struct.store_engine* %e, i64 0, i32 8, !dbg !1377
  %8 = load %struct._store_page**, %struct._store_page*** %free_page_buckets, align 8, !dbg !1377, !tbaa !635
  %idxprom7 = zext i32 %free_bucket to i64, !dbg !1376
  %arrayidx8 = getelementptr inbounds %struct._store_page*, %struct._store_page** %8, i64 %idxprom7, !dbg !1376
  %9 = load %struct._store_page*, %struct._store_page** %arrayidx8, align 8, !dbg !1376, !tbaa !658
  %cmp9.not = icmp eq %struct._store_page* %9, null, !dbg !1378
  br i1 %cmp9.not, label %land.lhs.true26, label %if.then11, !dbg !1379

if.then11:                                        ; preds = %land.lhs.true
  %page_free = getelementptr inbounds %struct.store_engine, %struct.store_engine* %e, i64 0, i32 14, !dbg !1380
  %10 = load i32, i32* %page_free, align 8, !dbg !1380, !tbaa !257
  %cmp12.not = icmp eq i32 %10, 0, !dbg !1380
  br i1 %cmp12.not, label %if.else15, label %if.end33.thread124, !dbg !1384

if.else15:                                        ; preds = %if.then11
  %gcov_ctr61 = load i64, i64* getelementptr inbounds ([11 x i64], [11 x i64]* @__llvm_gcov_ctr.26, i64 0, i64 3), align 8, !dbg !1380
  %11 = add i64 %gcov_ctr61, 1, !dbg !1380
  store i64 %11, i64* getelementptr inbounds ([11 x i64], [11 x i64]* @__llvm_gcov_ctr.26, i64 0, i64 3), align 8, !dbg !1380
  tail call void @__assert_fail(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.12, i64 0, i64 0), i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i64 0, i64 0), i32 noundef 408, i8* noundef getelementptr inbounds ([71 x i8], [71 x i8]* @__PRETTY_FUNCTION__._allocate_page, i64 0, i64 0)) #15, !dbg !1380
  unreachable, !dbg !1380

if.end33.thread124:                               ; preds = %if.then11
  %gcov_ctr62 = load i64, i64* getelementptr inbounds ([11 x i64], [11 x i64]* @__llvm_gcov_ctr.26, i64 0, i64 4), align 16, !dbg !1385
  %12 = add i64 %gcov_ctr62, 1, !dbg !1385
  store i64 %12, i64* getelementptr inbounds ([11 x i64], [11 x i64]* @__llvm_gcov_ctr.26, i64 0, i64 4), align 16, !dbg !1385
  %13 = load %struct._store_page*, %struct._store_page** %arrayidx8, align 8, !dbg !1385, !tbaa !658
  call void @llvm.dbg.value(metadata %struct._store_page* %13, metadata !1367, metadata !DIExpression()), !dbg !1368
  %next = getelementptr inbounds %struct._store_page, %struct._store_page* %13, i64 0, i32 16, !dbg !1386
  %14 = load %struct._store_page*, %struct._store_page** %next, align 8, !dbg !1386, !tbaa !659
  store %struct._store_page* %14, %struct._store_page** %arrayidx8, align 8, !dbg !1387, !tbaa !658
  call void @llvm.dbg.value(metadata %struct._store_page* %16, metadata !1367, metadata !DIExpression()), !dbg !1368
  br label %if.end55.thread, !dbg !1388

land.lhs.true26:                                  ; preds = %if.end, %land.lhs.true
  %gcov_ctr63 = load i64, i64* getelementptr inbounds ([11 x i64], [11 x i64]* @__llvm_gcov_ctr.26, i64 0, i64 5), align 8, !dbg !1390
  %15 = add i64 %gcov_ctr63, 1, !dbg !1390
  store i64 %15, i64* getelementptr inbounds ([11 x i64], [11 x i64]* @__llvm_gcov_ctr.26, i64 0, i64 5), align 8, !dbg !1390
  %page_freelist = getelementptr inbounds %struct.store_engine, %struct.store_engine* %e, i64 0, i32 6, !dbg !1392
  %16 = load %struct._store_page*, %struct._store_page** %page_freelist, align 8, !dbg !1392, !tbaa !1095
  %cmp27.not = icmp eq %struct._store_page* %16, null, !dbg !1393
  br i1 %cmp27.not, label %if.end33.thread, label %if.end33, !dbg !1394

if.end33:                                         ; preds = %land.lhs.true26
  %gcov_ctr64 = load i64, i64* getelementptr inbounds ([11 x i64], [11 x i64]* @__llvm_gcov_ctr.26, i64 0, i64 6), align 16, !dbg !1395
  %17 = add i64 %gcov_ctr64, 1, !dbg !1395
  store i64 %17, i64* getelementptr inbounds ([11 x i64], [11 x i64]* @__llvm_gcov_ctr.26, i64 0, i64 6), align 16, !dbg !1395
  call void @llvm.dbg.value(metadata %struct._store_page* %16, metadata !1367, metadata !DIExpression()), !dbg !1368
  %next31 = getelementptr inbounds %struct._store_page, %struct._store_page* %16, i64 0, i32 16, !dbg !1397
  %18 = load %struct._store_page*, %struct._store_page** %next31, align 8, !dbg !1397, !tbaa !659
  store %struct._store_page* %18, %struct._store_page** %page_freelist, align 8, !dbg !1398, !tbaa !1095
  %page_free34.phi.trans.insert = getelementptr inbounds %struct.store_engine, %struct.store_engine* %e, i64 0, i32 14
  %.pre = load i32, i32* %page_free34.phi.trans.insert, align 8, !dbg !1399, !tbaa !257
  %phi.cmp = icmp eq i32 %.pre, 0, !dbg !1400
  br i1 %phi.cmp, label %if.end55, label %if.end55.thread, !dbg !1388

if.end33.thread:                                  ; preds = %land.lhs.true26
  call void @llvm.dbg.value(metadata %struct._store_page* %16, metadata !1367, metadata !DIExpression()), !dbg !1368
  %page_free34110 = getelementptr inbounds %struct.store_engine, %struct.store_engine* %e, i64 0, i32 14, !dbg !1399
  %19 = load i32, i32* %page_free34110, align 8, !dbg !1399, !tbaa !257
  %cmp35.not111 = icmp eq i32 %19, 0, !dbg !1401
  br i1 %cmp35.not111, label %if.end55, label %land.lhs.true37.thread, !dbg !1388

land.lhs.true37.thread:                           ; preds = %if.end33.thread
  %gcov_ctr65118 = load i64, i64* getelementptr inbounds ([11 x i64], [11 x i64]* @__llvm_gcov_ctr.26, i64 0, i64 7), align 8, !dbg !1402
  %20 = add i64 %gcov_ctr65118, 1, !dbg !1402
  store i64 %20, i64* getelementptr inbounds ([11 x i64], [11 x i64]* @__llvm_gcov_ctr.26, i64 0, i64 7), align 8, !dbg !1402
  br label %if.end55, !dbg !1403

if.end55.thread:                                  ; preds = %if.end33, %if.end33.thread124
  %tmp.1127 = phi %struct._store_page* [ %13, %if.end33.thread124 ], [ %16, %if.end33 ]
  %page_free34128 = getelementptr inbounds %struct.store_engine, %struct.store_engine* %e, i64 0, i32 14, !dbg !1399
  %21 = load <2 x i64>, <2 x i64>* bitcast (i64* getelementptr inbounds ([11 x i64], [11 x i64]* @__llvm_gcov_ctr.26, i64 0, i64 7) to <2 x i64>*), align 8, !dbg !1402
  %22 = add <2 x i64> %21, <i64 1, i64 1>, !dbg !1402
  store <2 x i64> %22, <2 x i64>* bitcast (i64* getelementptr inbounds ([11 x i64], [11 x i64]* @__llvm_gcov_ctr.26, i64 0, i64 7) to <2 x i64>*), align 8, !dbg !1402
  %23 = load %struct._store_page**, %struct._store_page*** %page_buckets, align 8, !dbg !1404, !tbaa !683
  %arrayidx43 = getelementptr inbounds %struct._store_page*, %struct._store_page** %23, i64 %idxprom, !dbg !1406
  %24 = load %struct._store_page*, %struct._store_page** %arrayidx43, align 8, !dbg !1406, !tbaa !658
  %next44 = getelementptr inbounds %struct._store_page, %struct._store_page* %tmp.1127, i64 0, i32 16, !dbg !1407
  store %struct._store_page* %24, %struct._store_page** %next44, align 8, !dbg !1408, !tbaa !659
  store %struct._store_page* %tmp.1127, %struct._store_page** %arrayidx43, align 8, !dbg !1409, !tbaa !658
  %active = getelementptr inbounds %struct._store_page, %struct._store_page* %tmp.1127, i64 0, i32 12, !dbg !1410
  store i8 1, i8* %active, align 2, !dbg !1411, !tbaa !964
  %free = getelementptr inbounds %struct._store_page, %struct._store_page* %tmp.1127, i64 0, i32 14, !dbg !1412
  store i8 0, i8* %free, align 8, !dbg !1413, !tbaa !624
  %closed = getelementptr inbounds %struct._store_page, %struct._store_page* %tmp.1127, i64 0, i32 13, !dbg !1414
  store i8 0, i8* %closed, align 1, !dbg !1415, !tbaa !952
  %call = tail call fastcc i64 @_next_version(%struct.store_engine* noundef nonnull %e) #14, !dbg !1416
  %conv48 = trunc i64 %call to i32, !dbg !1416
  %version = getelementptr inbounds %struct._store_page, %struct._store_page* %tmp.1127, i64 0, i32 4, !dbg !1417
  store i32 %conv48, i32* %version, align 8, !dbg !1418, !tbaa !956
  %bucket49 = getelementptr inbounds %struct._store_page, %struct._store_page* %tmp.1127, i64 0, i32 8, !dbg !1419
  store i32 %bucket, i32* %bucket49, align 8, !dbg !1420, !tbaa !1149
  %25 = load i32, i32* %page_free34128, align 8, !dbg !1421, !tbaa !257
  %dec = add i32 %25, -1, !dbg !1421
  store i32 %dec, i32* %page_free34128, align 8, !dbg !1421, !tbaa !257
  %stats_mutex = getelementptr inbounds %struct.store_engine, %struct.store_engine* %e, i64 0, i32 18, !dbg !1422
  %call51 = tail call i32 @pthread_mutex_lock(%union.pthread_mutex_t* noundef nonnull %stats_mutex) #12, !dbg !1422
  %page_allocs = getelementptr inbounds %struct.store_engine, %struct.store_engine* %e, i64 0, i32 19, i32 0, !dbg !1422
  %26 = load i64, i64* %page_allocs, align 8, !dbg !1422, !tbaa !1424
  %add = add i64 %26, 1, !dbg !1422
  store i64 %add, i64* %page_allocs, align 8, !dbg !1422, !tbaa !1424
  %call53 = tail call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* noundef nonnull %stats_mutex) #12, !dbg !1422
  br label %if.then57, !dbg !1425

if.end55:                                         ; preds = %if.end33, %if.end33.thread, %land.lhs.true37.thread
  %gcov_ctr67 = load i64, i64* getelementptr inbounds ([11 x i64], [11 x i64]* @__llvm_gcov_ctr.26, i64 0, i64 9), align 8, !dbg !1426
  %27 = add i64 %gcov_ctr67, 1, !dbg !1426
  store i64 %27, i64* getelementptr inbounds ([11 x i64], [11 x i64]* @__llvm_gcov_ctr.26, i64 0, i64 9), align 8, !dbg !1426
  %28 = bitcast %struct.store_engine* %e to i8*, !dbg !1426
  tail call void @extstore_run_maint(i8* noundef %28) #14, !dbg !1428
  %tobool56.not = icmp eq %struct._store_page* %16, null, !dbg !1429
  br i1 %tobool56.not, label %if.end58, label %if.then57, !dbg !1425

if.then57:                                        ; preds = %if.end55.thread, %if.end55
  %tmp.1113122 = phi %struct._store_page* [ %tmp.1127, %if.end55.thread ], [ %16, %if.end55 ]
  %gcov_ctr68 = load i64, i64* getelementptr inbounds ([11 x i64], [11 x i64]* @__llvm_gcov_ctr.26, i64 0, i64 10), align 16, !dbg !1425
  %29 = add i64 %gcov_ctr68, 1, !dbg !1425
  store i64 %29, i64* getelementptr inbounds ([11 x i64], [11 x i64]* @__llvm_gcov_ctr.26, i64 0, i64 10), align 16, !dbg !1425
  br label %if.end58, !dbg !1425

if.end58:                                         ; preds = %if.then57, %if.end55
  %tmp.1113123 = phi %struct._store_page* [ %tmp.1113122, %if.then57 ], [ null, %if.end55 ]
  ret %struct._store_page* %tmp.1113123, !dbg !1431
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @_submit_wbuf(%struct.store_engine* noundef %e, %struct._store_page* nocapture noundef readonly %p) unnamed_addr #0 !dbg !1432 {
entry:
  %gcov_ctr = load i64, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.27, i64 0, i64 0), align 8
  %0 = add i64 %gcov_ctr, 1
  store i64 %0, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.27, i64 0, i64 0), align 8
  call void @llvm.dbg.value(metadata %struct.store_engine* %e, metadata !1436, metadata !DIExpression()), !dbg !1440
  call void @llvm.dbg.value(metadata %struct._store_page* %p, metadata !1437, metadata !DIExpression()), !dbg !1440
  %mutex = getelementptr inbounds %struct.store_engine, %struct.store_engine* %e, i64 0, i32 0, !dbg !1441
  %call = tail call i32 @pthread_mutex_lock(%union.pthread_mutex_t* noundef %mutex) #12, !dbg !1442
  %io_stack = getelementptr inbounds %struct.store_engine, %struct.store_engine* %e, i64 0, i32 3, !dbg !1443
  %1 = load %struct._obj_io*, %struct._obj_io** %io_stack, align 8, !dbg !1443, !tbaa !703
  call void @llvm.dbg.value(metadata %struct._obj_io* %1, metadata !1439, metadata !DIExpression()), !dbg !1440
  %next = getelementptr inbounds %struct._obj_io, %struct._obj_io* %1, i64 0, i32 1, !dbg !1444
  %2 = load %struct._obj_io*, %struct._obj_io** %next, align 8, !dbg !1444, !tbaa !706
  store %struct._obj_io* %2, %struct._obj_io** %io_stack, align 8, !dbg !1445, !tbaa !703
  %call3 = tail call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* noundef %mutex) #12, !dbg !1446
  %wbuf = getelementptr inbounds %struct._store_page, %struct._store_page* %p, i64 0, i32 15, !dbg !1447
  %3 = load %struct.__store_wbuf*, %struct.__store_wbuf** %wbuf, align 8, !dbg !1447, !tbaa !1289
  call void @llvm.dbg.value(metadata %struct.__store_wbuf* %3, metadata !1438, metadata !DIExpression()), !dbg !1440
  %buf = getelementptr inbounds %struct.__store_wbuf, %struct.__store_wbuf* %3, i64 0, i32 1, !dbg !1448
  %4 = load i8*, i8** %buf, align 8, !dbg !1448, !tbaa !818
  %size = getelementptr inbounds %struct.__store_wbuf, %struct.__store_wbuf* %3, i64 0, i32 4, !dbg !1449
  %5 = load i32, i32* %size, align 4, !dbg !1449, !tbaa !836
  %free = getelementptr inbounds %struct.__store_wbuf, %struct.__store_wbuf* %3, i64 0, i32 3, !dbg !1450
  %6 = load i32, i32* %free, align 8, !dbg !1450, !tbaa !833
  %sub = sub i32 %5, %6, !dbg !1451
  %idx.ext = zext i32 %sub to i64, !dbg !1452
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 %idx.ext, !dbg !1452
  %conv = zext i32 %6 to i64, !dbg !1453
  %call5 = tail call i8* @memset(i8* noundef %add.ptr, i32 noundef 0, i64 noundef %conv) #12, !dbg !1454
  store %struct._obj_io* null, %struct._obj_io** %next, align 8, !dbg !1455, !tbaa !706
  %mode = getelementptr inbounds %struct._obj_io, %struct._obj_io* %1, i64 0, i32 9, !dbg !1456
  store i32 1, i32* %mode, align 4, !dbg !1457, !tbaa !941
  %id = getelementptr inbounds %struct._store_page, %struct._store_page* %p, i64 0, i32 11, !dbg !1458
  %7 = load i16, i16* %id, align 4, !dbg !1458, !tbaa !606
  %page_id = getelementptr inbounds %struct._obj_io, %struct._obj_io* %1, i64 0, i32 8, !dbg !1459
  store i16 %7, i16* %page_id, align 8, !dbg !1460, !tbaa !938
  %8 = bitcast %struct._obj_io* %1 to %struct.__store_wbuf**, !dbg !1461
  store %struct.__store_wbuf* %3, %struct.__store_wbuf** %8, align 8, !dbg !1461, !tbaa !1462
  %offset = getelementptr inbounds %struct.__store_wbuf, %struct.__store_wbuf* %3, i64 0, i32 5, !dbg !1463
  %9 = load i32, i32* %offset, align 8, !dbg !1463, !tbaa !1464
  %offset7 = getelementptr inbounds %struct._obj_io, %struct._obj_io* %1, i64 0, i32 7, !dbg !1465
  store i32 %9, i32* %offset7, align 4, !dbg !1466, !tbaa !968
  %10 = load i32, i32* %size, align 4, !dbg !1467, !tbaa !836
  %len = getelementptr inbounds %struct._obj_io, %struct._obj_io* %1, i64 0, i32 6, !dbg !1468
  store i32 %10, i32* %len, align 8, !dbg !1469, !tbaa !991
  %11 = load i8*, i8** %buf, align 8, !dbg !1470, !tbaa !818
  %buf10 = getelementptr inbounds %struct._obj_io, %struct._obj_io* %1, i64 0, i32 2, !dbg !1471
  store i8* %11, i8** %buf10, align 8, !dbg !1472, !tbaa !1010
  %cb = getelementptr inbounds %struct._obj_io, %struct._obj_io* %1, i64 0, i32 10, !dbg !1473
  store void (i8*, %struct._obj_io*, i32)* @_wbuf_cb, void (i8*, %struct._obj_io*, i32)** %cb, align 8, !dbg !1474, !tbaa !986
  %12 = bitcast %struct.store_engine* %e to i8*, !dbg !1475
  %call11 = tail call i32 @extstore_submit(i8* noundef %12, %struct._obj_io* noundef %1) #14, !dbg !1476
  ret void, !dbg !1477
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @_allocate_wbuf(%struct.store_engine* noundef %e, %struct._store_page* nocapture noundef %p) unnamed_addr #0 !dbg !1478 {
entry:
  call void @llvm.dbg.value(metadata %struct.store_engine* %e, metadata !1480, metadata !DIExpression()), !dbg !1483
  call void @llvm.dbg.value(metadata %struct._store_page* %p, metadata !1481, metadata !DIExpression()), !dbg !1483
  call void @llvm.dbg.value(metadata %struct.__store_wbuf* null, metadata !1482, metadata !DIExpression()), !dbg !1483
  %wbuf1 = getelementptr inbounds %struct._store_page, %struct._store_page* %p, i64 0, i32 15, !dbg !1484
  %0 = load %struct.__store_wbuf*, %struct.__store_wbuf** %wbuf1, align 8, !dbg !1484, !tbaa !1289
  %tobool.not = icmp eq %struct.__store_wbuf* %0, null, !dbg !1484
  br i1 %tobool.not, label %if.then, label %if.else, !dbg !1487

if.then:                                          ; preds = %entry
  %gcov_ctr16 = load i64, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @__llvm_gcov_ctr.28, i64 0, i64 1), align 8, !dbg !1487
  %1 = add i64 %gcov_ctr16, 1, !dbg !1487
  store i64 %1, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @__llvm_gcov_ctr.28, i64 0, i64 1), align 8, !dbg !1487
  %mutex = getelementptr inbounds %struct.store_engine, %struct.store_engine* %e, i64 0, i32 0, !dbg !1488
  %call = tail call i32 @pthread_mutex_lock(%union.pthread_mutex_t* noundef %mutex) #12, !dbg !1489
  %wbuf_stack = getelementptr inbounds %struct.store_engine, %struct.store_engine* %e, i64 0, i32 2, !dbg !1490
  %2 = load %struct.__store_wbuf*, %struct.__store_wbuf** %wbuf_stack, align 8, !dbg !1490, !tbaa !696
  %tobool2.not = icmp eq %struct.__store_wbuf* %2, null, !dbg !1492
  br i1 %tobool2.not, label %if.end7.thread, label %if.then11, !dbg !1493

if.end7.thread:                                   ; preds = %if.then
  call void @llvm.dbg.value(metadata %struct.__store_wbuf* %2, metadata !1482, metadata !DIExpression()), !dbg !1483
  %call939 = tail call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* noundef nonnull %mutex) #12, !dbg !1494
  br label %if.end15, !dbg !1495

if.else:                                          ; preds = %entry
  %gcov_ctr = load i64, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @__llvm_gcov_ctr.28, i64 0, i64 0), align 16, !dbg !1484
  %3 = add i64 %gcov_ctr, 1, !dbg !1484
  store i64 %3, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @__llvm_gcov_ctr.28, i64 0, i64 0), align 16, !dbg !1484
  tail call void @__assert_fail(i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i64 0, i64 0), i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i64 0, i64 0), i32 noundef 441, i8* noundef getelementptr inbounds ([50 x i8], [50 x i8]* @__PRETTY_FUNCTION__._allocate_wbuf, i64 0, i64 0)) #15, !dbg !1484
  unreachable, !dbg !1484

if.then11:                                        ; preds = %if.then
  %gcov_ctr17 = load i64, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @__llvm_gcov_ctr.28, i64 0, i64 2), align 16, !dbg !1496
  %4 = add i64 %gcov_ctr17, 1, !dbg !1496
  store i64 %4, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @__llvm_gcov_ctr.28, i64 0, i64 2), align 16, !dbg !1496
  call void @llvm.dbg.value(metadata %struct.__store_wbuf* %2, metadata !1482, metadata !DIExpression()), !dbg !1483
  %next = getelementptr inbounds %struct.__store_wbuf, %struct.__store_wbuf* %2, i64 0, i32 0, !dbg !1498
  %5 = load %struct.__store_wbuf*, %struct.__store_wbuf** %next, align 8, !dbg !1498, !tbaa !699
  store %struct.__store_wbuf* %5, %struct.__store_wbuf** %wbuf_stack, align 8, !dbg !1499, !tbaa !696
  store %struct.__store_wbuf* null, %struct.__store_wbuf** %next, align 8, !dbg !1500, !tbaa !699
  %call9 = tail call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* noundef nonnull %mutex) #12, !dbg !1494
  %gcov_ctr18 = load i64, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @__llvm_gcov_ctr.28, i64 0, i64 3), align 8, !dbg !1501
  %6 = add i64 %gcov_ctr18, 1, !dbg !1501
  store i64 %6, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @__llvm_gcov_ctr.28, i64 0, i64 3), align 8, !dbg !1501
  %allocated = getelementptr inbounds %struct._store_page, %struct._store_page* %p, i64 0, i32 6, !dbg !1504
  %7 = load i32, i32* %allocated, align 8, !dbg !1504, !tbaa !1296
  %offset = getelementptr inbounds %struct.__store_wbuf, %struct.__store_wbuf* %2, i64 0, i32 5, !dbg !1505
  store i32 %7, i32* %offset, align 8, !dbg !1506, !tbaa !1464
  %size = getelementptr inbounds %struct.__store_wbuf, %struct.__store_wbuf* %2, i64 0, i32 4, !dbg !1507
  %8 = load i32, i32* %size, align 4, !dbg !1507, !tbaa !836
  %add = add i32 %8, %7, !dbg !1508
  store i32 %add, i32* %allocated, align 8, !dbg !1508, !tbaa !1296
  %free = getelementptr inbounds %struct.__store_wbuf, %struct.__store_wbuf* %2, i64 0, i32 3, !dbg !1509
  store i32 %8, i32* %free, align 8, !dbg !1510, !tbaa !833
  %buf = getelementptr inbounds %struct.__store_wbuf, %struct.__store_wbuf* %2, i64 0, i32 1, !dbg !1511
  %9 = load i8*, i8** %buf, align 8, !dbg !1511, !tbaa !818
  %buf_pos = getelementptr inbounds %struct.__store_wbuf, %struct.__store_wbuf* %2, i64 0, i32 2, !dbg !1512
  store i8* %9, i8** %buf_pos, align 8, !dbg !1513, !tbaa !829
  %full = getelementptr inbounds %struct.__store_wbuf, %struct.__store_wbuf* %2, i64 0, i32 6, !dbg !1514
  store i8 0, i8* %full, align 4, !dbg !1515, !tbaa !1293
  %flushed = getelementptr inbounds %struct.__store_wbuf, %struct.__store_wbuf* %2, i64 0, i32 7, !dbg !1516
  store i8 0, i8* %flushed, align 1, !dbg !1517, !tbaa !1518
  store %struct.__store_wbuf* %2, %struct.__store_wbuf** %wbuf1, align 8, !dbg !1519, !tbaa !1289
  br label %if.end15, !dbg !1520

if.end15:                                         ; preds = %if.end7.thread, %if.then11
  ret void, !dbg !1521
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @extstore_write(i8* noundef %ptr, %struct._obj_io* nocapture noundef %io) local_unnamed_addr #0 !dbg !1522 {
entry:
  %gcov_ctr = load i64, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.29, i64 0, i64 0), align 8
  %0 = add i64 %gcov_ctr, 1
  store i64 %0, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.29, i64 0, i64 0), align 8
  call void @llvm.dbg.value(metadata i8* %ptr, metadata !1526, metadata !DIExpression()), !dbg !1530
  call void @llvm.dbg.value(metadata %struct._obj_io* %io, metadata !1527, metadata !DIExpression()), !dbg !1530
  call void @llvm.dbg.value(metadata i8* %ptr, metadata !1528, metadata !DIExpression()), !dbg !1530
  %pages = getelementptr inbounds i8, i8* %ptr, i64 40, !dbg !1531
  %1 = bitcast i8* %pages to %struct._store_page**, !dbg !1531
  %2 = load %struct._store_page*, %struct._store_page** %1, align 8, !dbg !1531, !tbaa !561
  %page_id = getelementptr inbounds %struct._obj_io, %struct._obj_io* %io, i64 0, i32 8, !dbg !1532
  %3 = load i16, i16* %page_id, align 8, !dbg !1532, !tbaa !938
  %idxprom = zext i16 %3 to i64, !dbg !1533
  call void @llvm.dbg.value(metadata !DIArgList(%struct._store_page* %2, i64 %idxprom), metadata !1529, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 120, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !1530
  %wbuf = getelementptr inbounds %struct._store_page, %struct._store_page* %2, i64 %idxprom, i32 15, !dbg !1534
  %4 = load %struct.__store_wbuf*, %struct.__store_wbuf** %wbuf, align 8, !dbg !1534, !tbaa !1289
  %offset = getelementptr inbounds %struct.__store_wbuf, %struct.__store_wbuf* %4, i64 0, i32 5, !dbg !1535
  %5 = load i32, i32* %offset, align 8, !dbg !1535, !tbaa !1464
  %size = getelementptr inbounds %struct.__store_wbuf, %struct.__store_wbuf* %4, i64 0, i32 4, !dbg !1536
  %6 = load i32, i32* %size, align 4, !dbg !1536, !tbaa !836
  %free = getelementptr inbounds %struct.__store_wbuf, %struct.__store_wbuf* %4, i64 0, i32 3, !dbg !1537
  %7 = load i32, i32* %free, align 8, !dbg !1537, !tbaa !833
  %sub = add i32 %6, %5, !dbg !1538
  %add = sub i32 %sub, %7, !dbg !1539
  %offset3 = getelementptr inbounds %struct._obj_io, %struct._obj_io* %io, i64 0, i32 7, !dbg !1540
  store i32 %add, i32* %offset3, align 4, !dbg !1541, !tbaa !968
  %version = getelementptr inbounds %struct._store_page, %struct._store_page* %2, i64 %idxprom, i32 4, !dbg !1542
  %8 = load i32, i32* %version, align 8, !dbg !1542, !tbaa !956
  %page_version = getelementptr inbounds %struct._obj_io, %struct._obj_io* %io, i64 0, i32 5, !dbg !1543
  store i32 %8, i32* %page_version, align 4, !dbg !1544, !tbaa !958
  %len = getelementptr inbounds %struct._obj_io, %struct._obj_io* %io, i64 0, i32 6, !dbg !1545
  %9 = load i32, i32* %len, align 8, !dbg !1545, !tbaa !991
  %buf_pos = getelementptr inbounds %struct.__store_wbuf, %struct.__store_wbuf* %4, i64 0, i32 2, !dbg !1546
  %10 = load i8*, i8** %buf_pos, align 8, !dbg !1547, !tbaa !829
  %idx.ext = zext i32 %9 to i64, !dbg !1547
  %add.ptr = getelementptr inbounds i8, i8* %10, i64 %idx.ext, !dbg !1547
  store i8* %add.ptr, i8** %buf_pos, align 8, !dbg !1547, !tbaa !829
  %sub8 = sub i32 %7, %9, !dbg !1548
  store i32 %sub8, i32* %free, align 8, !dbg !1548, !tbaa !833
  %obj_count = getelementptr inbounds %struct._store_page, %struct._store_page* %2, i64 %idxprom, i32 1, !dbg !1549
  %11 = bitcast i64* %obj_count to <2 x i64>*, !dbg !1550
  %12 = load <2 x i64>, <2 x i64>* %11, align 8, !dbg !1550, !tbaa !518
  %13 = insertelement <2 x i64> <i64 1, i64 poison>, i64 %idx.ext, i64 1, !dbg !1550
  %14 = add <2 x i64> %12, %13, !dbg !1550
  %15 = bitcast i64* %obj_count to <2 x i64>*, !dbg !1550
  store <2 x i64> %14, <2 x i64>* %15, align 8, !dbg !1550, !tbaa !518
  %stats_mutex = getelementptr inbounds i8, i8* %ptr, i64 144, !dbg !1551
  %16 = bitcast i8* %stats_mutex to %union.pthread_mutex_t*, !dbg !1551
  %call = tail call i32 @pthread_mutex_lock(%union.pthread_mutex_t* noundef nonnull %16) #12, !dbg !1551
  %17 = load i32, i32* %len, align 8, !dbg !1552, !tbaa !991
  %conv12 = zext i32 %17 to i64, !dbg !1553
  %bytes_written = getelementptr inbounds i8, i8* %ptr, i64 280, !dbg !1554
  %18 = bitcast i8* %bytes_written to i64*, !dbg !1554
  %19 = load i64, i64* %18, align 8, !dbg !1555, !tbaa !1556
  %add13 = add i64 %19, %conv12, !dbg !1555
  store i64 %add13, i64* %18, align 8, !dbg !1555, !tbaa !1556
  %bytes_used17 = getelementptr inbounds i8, i8* %ptr, i64 296, !dbg !1557
  %20 = bitcast i8* %bytes_used17 to i64*, !dbg !1557
  %21 = load i64, i64* %20, align 8, !dbg !1558, !tbaa !1559
  %add18 = add i64 %21, %conv12, !dbg !1558
  store i64 %add18, i64* %20, align 8, !dbg !1558, !tbaa !1559
  %objects_written = getelementptr inbounds i8, i8* %ptr, i64 256, !dbg !1560
  %22 = bitcast i8* %objects_written to <2 x i64>*, !dbg !1561
  %23 = load <2 x i64>, <2 x i64>* %22, align 8, !dbg !1561, !tbaa !518
  %24 = add <2 x i64> %23, <i64 1, i64 1>, !dbg !1561
  %25 = bitcast i8* %objects_written to <2 x i64>*, !dbg !1561
  store <2 x i64> %24, <2 x i64>* %25, align 8, !dbg !1561, !tbaa !518
  %call24 = tail call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* noundef nonnull %16) #12, !dbg !1562
  %mutex = getelementptr inbounds %struct._store_page, %struct._store_page* %2, i64 %idxprom, i32 0, !dbg !1563
  %call25 = tail call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* noundef %mutex) #12, !dbg !1564
  ret void, !dbg !1565
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @extstore_submit(i8* noundef %ptr, %struct._obj_io* noundef %io) local_unnamed_addr #0 !dbg !1566 {
entry:
  call void @llvm.dbg.value(metadata i8* %ptr, metadata !1570, metadata !DIExpression()), !dbg !1577
  call void @llvm.dbg.value(metadata %struct._obj_io* %io, metadata !1571, metadata !DIExpression()), !dbg !1577
  %0 = bitcast i8* %ptr to %struct.store_engine*, !dbg !1578
  call void @llvm.dbg.value(metadata %struct.store_engine* %0, metadata !1572, metadata !DIExpression()), !dbg !1577
  call void @llvm.dbg.value(metadata i32 0, metadata !1573, metadata !DIExpression()), !dbg !1577
  call void @llvm.dbg.value(metadata %struct._obj_io* %io, metadata !1574, metadata !DIExpression()), !dbg !1577
  call void @llvm.dbg.value(metadata %struct._obj_io* null, metadata !1575, metadata !DIExpression()), !dbg !1577
  call void @llvm.dbg.value(metadata i32 0, metadata !1573, metadata !DIExpression()), !dbg !1577
  call void @llvm.dbg.value(metadata %struct._obj_io* null, metadata !1575, metadata !DIExpression()), !dbg !1577
  call void @llvm.dbg.value(metadata %struct._obj_io* %io, metadata !1574, metadata !DIExpression()), !dbg !1577
  %cmp.not47 = icmp eq %struct._obj_io* %io, null, !dbg !1579
  br i1 %cmp.not47, label %while.end, label %while.body.preheader, !dbg !1580

while.body.preheader:                             ; preds = %entry
  %.promoted = load i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @__llvm_gcov_ctr.30, i64 0, i64 0), align 16
  br label %while.body, !dbg !1580

while.body:                                       ; preds = %while.body.preheader, %while.body
  %depth.049 = phi i32 [ %inc, %while.body ], [ 0, %while.body.preheader ]
  %tio.048 = phi %struct._obj_io* [ %3, %while.body ], [ %io, %while.body.preheader ]
  %1 = phi i64 [ %2, %while.body ], [ %.promoted, %while.body.preheader ]
  call void @llvm.dbg.value(metadata i32 %depth.049, metadata !1573, metadata !DIExpression()), !dbg !1577
  call void @llvm.dbg.value(metadata %struct._obj_io* %tio.048, metadata !1574, metadata !DIExpression()), !dbg !1577
  %2 = add i64 %1, 1, !dbg !1581
  call void @llvm.dbg.value(metadata %struct._obj_io* %tio.048, metadata !1575, metadata !DIExpression()), !dbg !1577
  %inc = add i32 %depth.049, 1, !dbg !1583
  call void @llvm.dbg.value(metadata i32 %inc, metadata !1573, metadata !DIExpression()), !dbg !1577
  %next = getelementptr inbounds %struct._obj_io, %struct._obj_io* %tio.048, i64 0, i32 1, !dbg !1584
  %3 = load %struct._obj_io*, %struct._obj_io** %next, align 8, !dbg !1584, !tbaa !706
  call void @llvm.dbg.value(metadata %struct._obj_io* %3, metadata !1574, metadata !DIExpression()), !dbg !1577
  %cmp.not = icmp eq %struct._obj_io* %3, null, !dbg !1579
  br i1 %cmp.not, label %while.cond.while.end_crit_edge, label %while.body, !dbg !1580, !llvm.loop !1585

while.cond.while.end_crit_edge:                   ; preds = %while.body
  store i64 %2, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @__llvm_gcov_ctr.30, i64 0, i64 0), align 16, !dbg !1581
  br label %while.end, !dbg !1580

while.end:                                        ; preds = %while.cond.while.end_crit_edge, %entry
  %tail.0.lcssa = phi %struct._obj_io* [ %tio.048, %while.cond.while.end_crit_edge ], [ null, %entry ], !dbg !1577
  %depth.0.lcssa = phi i32 [ %inc, %while.cond.while.end_crit_edge ], [ 0, %entry ], !dbg !1577
  %call = tail call fastcc %struct.store_io_thread* @_get_io_thread(%struct.store_engine* noundef %0) #14, !dbg !1587
  call void @llvm.dbg.value(metadata %struct.store_io_thread* %call, metadata !1576, metadata !DIExpression()), !dbg !1577
  %mutex = getelementptr inbounds %struct.store_io_thread, %struct.store_io_thread* %call, i64 0, i32 0, !dbg !1588
  %call1 = tail call i32 @pthread_mutex_lock(%union.pthread_mutex_t* noundef %mutex) #12, !dbg !1589
  %depth2 = getelementptr inbounds %struct.store_io_thread, %struct.store_io_thread* %call, i64 0, i32 5, !dbg !1590
  %4 = load i32, i32* %depth2, align 8, !dbg !1591, !tbaa !305
  %add = add i32 %4, %depth.0.lcssa, !dbg !1591
  store i32 %add, i32* %depth2, align 8, !dbg !1591, !tbaa !305
  %queue = getelementptr inbounds %struct.store_io_thread, %struct.store_io_thread* %call, i64 0, i32 2, !dbg !1592
  %5 = load %struct._obj_io*, %struct._obj_io** %queue, align 8, !dbg !1592, !tbaa !895
  %cmp3 = icmp eq %struct._obj_io* %5, null, !dbg !1594
  br i1 %cmp3, label %if.then, label %if.else, !dbg !1595

if.then:                                          ; preds = %while.end
  %gcov_ctr22 = load i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @__llvm_gcov_ctr.30, i64 0, i64 1), align 8, !dbg !1596
  %6 = add i64 %gcov_ctr22, 1, !dbg !1596
  store i64 %6, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @__llvm_gcov_ctr.30, i64 0, i64 1), align 8, !dbg !1596
  store %struct._obj_io* %io, %struct._obj_io** %queue, align 8, !dbg !1598, !tbaa !895
  %queue_tail = getelementptr inbounds %struct.store_io_thread, %struct.store_io_thread* %call, i64 0, i32 3, !dbg !1599
  br label %if.end18, !dbg !1600

if.else:                                          ; preds = %while.end
  %next5 = getelementptr inbounds %struct._obj_io, %struct._obj_io* %tail.0.lcssa, i64 0, i32 1, !dbg !1601
  %7 = load %struct._obj_io*, %struct._obj_io** %next5, align 8, !dbg !1601, !tbaa !706
  %cmp6 = icmp eq %struct._obj_io* %7, null, !dbg !1601
  br i1 %cmp6, label %if.end, label %if.else8, !dbg !1605

if.else8:                                         ; preds = %if.else
  %gcov_ctr23 = load i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @__llvm_gcov_ctr.30, i64 0, i64 2), align 16, !dbg !1601
  %8 = add i64 %gcov_ctr23, 1, !dbg !1601
  store i64 %8, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @__llvm_gcov_ctr.30, i64 0, i64 2), align 16, !dbg !1601
  tail call void @__assert_fail(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.8, i64 0, i64 0), i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i64 0, i64 0), i32 noundef 632, i8* noundef getelementptr inbounds ([38 x i8], [38 x i8]* @__PRETTY_FUNCTION__.extstore_submit, i64 0, i64 0)) #15, !dbg !1601
  unreachable, !dbg !1601

if.end:                                           ; preds = %if.else
  %queue_tail9 = getelementptr inbounds %struct.store_io_thread, %struct.store_io_thread* %call, i64 0, i32 3, !dbg !1606
  %9 = load %struct._obj_io*, %struct._obj_io** %queue_tail9, align 8, !dbg !1606, !tbaa !927
  %next10 = getelementptr inbounds %struct._obj_io, %struct._obj_io* %9, i64 0, i32 1, !dbg !1606
  %10 = load %struct._obj_io*, %struct._obj_io** %next10, align 8, !dbg !1606, !tbaa !706
  %cmp11 = icmp eq %struct._obj_io* %10, null, !dbg !1606
  br i1 %cmp11, label %if.end14, label %if.else13, !dbg !1609

if.else13:                                        ; preds = %if.end
  %gcov_ctr24 = load i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @__llvm_gcov_ctr.30, i64 0, i64 3), align 8, !dbg !1606
  %11 = add i64 %gcov_ctr24, 1, !dbg !1606
  store i64 %11, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @__llvm_gcov_ctr.30, i64 0, i64 3), align 8, !dbg !1606
  tail call void @__assert_fail(i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.10, i64 0, i64 0), i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i64 0, i64 0), i32 noundef 633, i8* noundef getelementptr inbounds ([38 x i8], [38 x i8]* @__PRETTY_FUNCTION__.extstore_submit, i64 0, i64 0)) #15, !dbg !1606
  unreachable, !dbg !1606

if.end14:                                         ; preds = %if.end
  %gcov_ctr25 = load i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @__llvm_gcov_ctr.30, i64 0, i64 4), align 16, !dbg !1610
  %12 = add i64 %gcov_ctr25, 1, !dbg !1610
  store i64 %12, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @__llvm_gcov_ctr.30, i64 0, i64 4), align 16, !dbg !1610
  store %struct._obj_io* %io, %struct._obj_io** %next10, align 8, !dbg !1611, !tbaa !706
  br label %if.end18

if.end18:                                         ; preds = %if.end14, %if.then
  %queue_tail9.sink = phi %struct._obj_io** [ %queue_tail9, %if.end14 ], [ %queue_tail, %if.then ]
  store %struct._obj_io* %tail.0.lcssa, %struct._obj_io** %queue_tail9.sink, align 8, !dbg !1612, !tbaa !927
  %call20 = tail call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* noundef nonnull %mutex) #12, !dbg !1613
  %cond = getelementptr inbounds %struct.store_io_thread, %struct.store_io_thread* %call, i64 0, i32 1, !dbg !1614
  %call21 = tail call i32 @pthread_cond_signal(%union.pthread_cond_t* noundef nonnull %cond) #12, !dbg !1615
  ret i32 0, !dbg !1616
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.store_io_thread* @_get_io_thread(%struct.store_engine* noundef %e) unnamed_addr #0 !dbg !1617 {
entry:
  call void @llvm.dbg.value(metadata %struct.store_engine* %e, metadata !1621, metadata !DIExpression()), !dbg !1626
  call void @llvm.dbg.value(metadata i32 -1, metadata !1622, metadata !DIExpression()), !dbg !1626
  call void @llvm.dbg.value(metadata i64 9223372036854775807, metadata !1623, metadata !DIExpression()), !dbg !1626
  %mutex = getelementptr inbounds %struct.store_engine, %struct.store_engine* %e, i64 0, i32 0, !dbg !1627
  %call = tail call i32 @pthread_mutex_lock(%union.pthread_mutex_t* noundef %mutex) #12, !dbg !1628
  call void @llvm.dbg.value(metadata i32 0, metadata !1624, metadata !DIExpression()), !dbg !1629
  %io_threadcount = getelementptr inbounds %struct.store_engine, %struct.store_engine* %e, i64 0, i32 12
  %0 = load i32, i32* %io_threadcount, align 8, !tbaa !283
  call void @llvm.dbg.value(metadata i32 0, metadata !1624, metadata !DIExpression()), !dbg !1629
  call void @llvm.dbg.value(metadata i64 9223372036854775807, metadata !1623, metadata !DIExpression()), !dbg !1626
  call void @llvm.dbg.value(metadata i32 -1, metadata !1622, metadata !DIExpression()), !dbg !1626
  %cmp42.not = icmp eq i32 %0, 0, !dbg !1630
  br i1 %cmp42.not, label %for.cond.cleanup, label %for.body.lr.ph, !dbg !1632

for.body.lr.ph:                                   ; preds = %entry
  %io_threads = getelementptr inbounds %struct.store_engine, %struct.store_engine* %e, i64 0, i32 4
  %1 = load %struct.store_io_thread*, %struct.store_io_thread** %io_threads, align 8, !tbaa !300
  %wide.trip.count = zext i32 %0 to i64, !dbg !1630
  br label %for.body, !dbg !1632

for.cond.cleanup:                                 ; preds = %for.inc, %entry
  %tid.0.lcssa = phi i32 [ -1, %entry ], [ %tid.1, %for.inc ], !dbg !1626
  %gcov_ctr = load i64, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @__llvm_gcov_ctr.31, i64 0, i64 0), align 16
  %2 = add i64 %gcov_ctr, 1
  store i64 %2, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @__llvm_gcov_ctr.31, i64 0, i64 0), align 16
  br label %cleanup, !dbg !1632

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.inc ]
  %low.044 = phi i64 [ 9223372036854775807, %for.body.lr.ph ], [ %low.1, %for.inc ]
  %tid.043 = phi i32 [ -1, %for.body.lr.ph ], [ %tid.1, %for.inc ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !1624, metadata !DIExpression()), !dbg !1629
  call void @llvm.dbg.value(metadata i64 %low.044, metadata !1623, metadata !DIExpression()), !dbg !1626
  call void @llvm.dbg.value(metadata i32 %tid.043, metadata !1622, metadata !DIExpression()), !dbg !1626
  %depth = getelementptr inbounds %struct.store_io_thread, %struct.store_io_thread* %1, i64 %indvars.iv, i32 5, !dbg !1633
  %3 = load i32, i32* %depth, align 8, !dbg !1633, !tbaa !305
  %cmp1 = icmp eq i32 %3, 0, !dbg !1636
  br i1 %cmp1, label %if.then, label %if.else, !dbg !1637

if.then:                                          ; preds = %for.body
  %4 = trunc i64 %indvars.iv to i32, !dbg !1638
  %gcov_ctr22 = load i64, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @__llvm_gcov_ctr.31, i64 0, i64 1), align 8, !dbg !1638
  %5 = add i64 %gcov_ctr22, 1, !dbg !1638
  store i64 %5, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @__llvm_gcov_ctr.31, i64 0, i64 1), align 8, !dbg !1638
  call void @llvm.dbg.value(metadata i32 %4, metadata !1622, metadata !DIExpression()), !dbg !1626
  br label %cleanup, !dbg !1640

if.else:                                          ; preds = %for.body
  %conv = zext i32 %3 to i64, !dbg !1641
  %cmp6 = icmp sgt i64 %low.044, %conv, !dbg !1643
  br i1 %cmp6, label %if.then8, label %for.inc, !dbg !1644

if.then8:                                         ; preds = %if.else
  %gcov_ctr23 = load i64, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @__llvm_gcov_ctr.31, i64 0, i64 2), align 16, !dbg !1645
  %6 = add i64 %gcov_ctr23, 1, !dbg !1645
  store i64 %6, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @__llvm_gcov_ctr.31, i64 0, i64 2), align 16, !dbg !1645
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !1622, metadata !DIExpression()), !dbg !1626
  %7 = load i32, i32* %depth, align 8, !dbg !1647, !tbaa !305
  %conv13 = zext i32 %7 to i64, !dbg !1648
  call void @llvm.dbg.value(metadata i64 %conv13, metadata !1623, metadata !DIExpression()), !dbg !1626
  %8 = trunc i64 %indvars.iv to i32, !dbg !1649
  br label %for.inc, !dbg !1649

for.inc:                                          ; preds = %if.then8, %if.else
  %tid.1 = phi i32 [ %8, %if.then8 ], [ %tid.043, %if.else ], !dbg !1626
  %low.1 = phi i64 [ %conv13, %if.then8 ], [ %low.044, %if.else ], !dbg !1626
  call void @llvm.dbg.value(metadata i64 %low.1, metadata !1623, metadata !DIExpression()), !dbg !1626
  call void @llvm.dbg.value(metadata i32 %tid.1, metadata !1622, metadata !DIExpression()), !dbg !1626
  %gcov_ctr24 = load i64, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @__llvm_gcov_ctr.31, i64 0, i64 3), align 8, !dbg !1650
  %9 = add i64 %gcov_ctr24, 1, !dbg !1650
  store i64 %9, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @__llvm_gcov_ctr.31, i64 0, i64 3), align 8, !dbg !1650
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !1650
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !1624, metadata !DIExpression()), !dbg !1629
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count, !dbg !1630
  br i1 %exitcond.not, label %for.cond.cleanup, label %for.body, !dbg !1632, !llvm.loop !1651

cleanup:                                          ; preds = %if.then, %for.cond.cleanup
  %tid.2 = phi i32 [ %4, %if.then ], [ %tid.0.lcssa, %for.cond.cleanup ], !dbg !1626
  call void @llvm.dbg.value(metadata i32 %tid.2, metadata !1622, metadata !DIExpression()), !dbg !1626
  %call16 = tail call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* noundef nonnull %mutex) #12, !dbg !1653
  %io_threads17 = getelementptr inbounds %struct.store_engine, %struct.store_engine* %e, i64 0, i32 4, !dbg !1654
  %10 = load %struct.store_io_thread*, %struct.store_io_thread** %io_threads17, align 8, !dbg !1654, !tbaa !300
  %idxprom18 = sext i32 %tid.2 to i64, !dbg !1655
  %arrayidx19 = getelementptr inbounds %struct.store_io_thread, %struct.store_io_thread* %10, i64 %idxprom18, !dbg !1655
  ret %struct.store_io_thread* %arrayidx19, !dbg !1656
}

; Function Attrs: noreturn nounwind
declare dso_local void @__assert_fail(i8* noundef, i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #7

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @extstore_delete(i8* noundef %ptr, i32 noundef %page_id, i64 noundef %page_version, i32 noundef %count, i32 noundef %bytes) local_unnamed_addr #0 !dbg !1657 {
entry:
  call void @llvm.dbg.value(metadata i8* %ptr, metadata !1661, metadata !DIExpression()), !dbg !1669
  call void @llvm.dbg.value(metadata i32 %page_id, metadata !1662, metadata !DIExpression()), !dbg !1669
  call void @llvm.dbg.value(metadata i64 %page_version, metadata !1663, metadata !DIExpression()), !dbg !1669
  call void @llvm.dbg.value(metadata i32 %count, metadata !1664, metadata !DIExpression()), !dbg !1669
  call void @llvm.dbg.value(metadata i32 %bytes, metadata !1665, metadata !DIExpression()), !dbg !1669
  call void @llvm.dbg.value(metadata i8* %ptr, metadata !1666, metadata !DIExpression()), !dbg !1669
  %pages = getelementptr inbounds i8, i8* %ptr, i64 40, !dbg !1670
  %0 = bitcast i8* %pages to %struct._store_page**, !dbg !1670
  %1 = load %struct._store_page*, %struct._store_page** %0, align 8, !dbg !1670, !tbaa !561
  %idxprom = zext i32 %page_id to i64, !dbg !1671
  call void @llvm.dbg.value(metadata !DIArgList(%struct._store_page* %1, i64 %idxprom), metadata !1667, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 120, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !1669
  call void @llvm.dbg.value(metadata i32 0, metadata !1668, metadata !DIExpression()), !dbg !1669
  %mutex = getelementptr inbounds %struct._store_page, %struct._store_page* %1, i64 %idxprom, i32 0, !dbg !1672
  %call = tail call i32 @pthread_mutex_lock(%union.pthread_mutex_t* noundef %mutex) #12, !dbg !1673
  %closed = getelementptr inbounds %struct._store_page, %struct._store_page* %1, i64 %idxprom, i32 13, !dbg !1674
  %2 = load i8, i8* %closed, align 1, !dbg !1674, !tbaa !952, !range !948
  %tobool.not = icmp eq i8 %2, 0, !dbg !1674
  br i1 %tobool.not, label %land.lhs.true, label %if.else33, !dbg !1676

land.lhs.true:                                    ; preds = %entry
  %gcov_ctr = load i64, i64* getelementptr inbounds ([6 x i64], [6 x i64]* @__llvm_gcov_ctr.32, i64 0, i64 0), align 16, !dbg !1677
  %3 = add i64 %gcov_ctr, 1, !dbg !1677
  store i64 %3, i64* getelementptr inbounds ([6 x i64], [6 x i64]* @__llvm_gcov_ctr.32, i64 0, i64 0), align 16, !dbg !1677
  %version = getelementptr inbounds %struct._store_page, %struct._store_page* %1, i64 %idxprom, i32 4, !dbg !1678
  %4 = load i32, i32* %version, align 8, !dbg !1678, !tbaa !956
  %conv = zext i32 %4 to i64, !dbg !1677
  %cmp = icmp eq i64 %conv, %page_version, !dbg !1679
  br i1 %cmp, label %if.then, label %if.else33, !dbg !1680

if.then:                                          ; preds = %land.lhs.true
  %bytes_used = getelementptr inbounds %struct._store_page, %struct._store_page* %1, i64 %idxprom, i32 2, !dbg !1681
  %5 = load i64, i64* %bytes_used, align 8, !dbg !1681, !tbaa !1144
  %conv2 = zext i32 %bytes to i64, !dbg !1684
  %cmp3.not = icmp ult i64 %5, %conv2, !dbg !1685
  br i1 %cmp3.not, label %if.else, label %if.then5, !dbg !1686

if.then5:                                         ; preds = %if.then
  %sub = sub i64 %5, %conv2, !dbg !1687
  br label %if.end, !dbg !1689

if.else:                                          ; preds = %if.then
  %gcov_ctr37 = load i64, i64* getelementptr inbounds ([6 x i64], [6 x i64]* @__llvm_gcov_ctr.32, i64 0, i64 1), align 8, !dbg !1690
  %6 = add i64 %gcov_ctr37, 1, !dbg !1690
  store i64 %6, i64* getelementptr inbounds ([6 x i64], [6 x i64]* @__llvm_gcov_ctr.32, i64 0, i64 1), align 8, !dbg !1690
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then5
  %storemerge = phi i64 [ 0, %if.else ], [ %sub, %if.then5 ], !dbg !1692
  store i64 %storemerge, i64* %bytes_used, align 8, !dbg !1692, !tbaa !1144
  %obj_count = getelementptr inbounds %struct._store_page, %struct._store_page* %1, i64 %idxprom, i32 1, !dbg !1693
  %7 = load i64, i64* %obj_count, align 8, !dbg !1693, !tbaa !1129
  %conv9 = zext i32 %count to i64, !dbg !1695
  %cmp10.not = icmp ult i64 %7, %conv9, !dbg !1696
  br i1 %cmp10.not, label %if.else16, label %if.then12, !dbg !1697

if.then12:                                        ; preds = %if.end
  %gcov_ctr38 = load i64, i64* getelementptr inbounds ([6 x i64], [6 x i64]* @__llvm_gcov_ctr.32, i64 0, i64 2), align 16, !dbg !1698
  %8 = add i64 %gcov_ctr38, 1, !dbg !1698
  store i64 %8, i64* getelementptr inbounds ([6 x i64], [6 x i64]* @__llvm_gcov_ctr.32, i64 0, i64 2), align 16, !dbg !1698
  %9 = load i64, i64* %obj_count, align 8, !dbg !1700, !tbaa !1129
  %sub15 = sub i64 %9, %conv9, !dbg !1700
  br label %if.end18, !dbg !1701

if.else16:                                        ; preds = %if.end
  %gcov_ctr39 = load i64, i64* getelementptr inbounds ([6 x i64], [6 x i64]* @__llvm_gcov_ctr.32, i64 0, i64 3), align 8, !dbg !1702
  %10 = add i64 %gcov_ctr39, 1, !dbg !1702
  store i64 %10, i64* getelementptr inbounds ([6 x i64], [6 x i64]* @__llvm_gcov_ctr.32, i64 0, i64 3), align 8, !dbg !1702
  br label %if.end18

if.end18:                                         ; preds = %if.else16, %if.then12
  %storemerge64 = phi i64 [ 0, %if.else16 ], [ %sub15, %if.then12 ], !dbg !1704
  store i64 %storemerge64, i64* %obj_count, align 8, !dbg !1704, !tbaa !1129
  %stats_mutex = getelementptr inbounds i8, i8* %ptr, i64 144, !dbg !1705
  %11 = bitcast i8* %stats_mutex to %union.pthread_mutex_t*, !dbg !1705
  %call19 = tail call i32 @pthread_mutex_lock(%union.pthread_mutex_t* noundef nonnull %11) #12, !dbg !1705
  %bytes_used21 = getelementptr inbounds i8, i8* %ptr, i64 296, !dbg !1706
  %12 = bitcast i8* %bytes_used21 to i64*, !dbg !1706
  %13 = load i64, i64* %12, align 8, !dbg !1707, !tbaa !1559
  %sub22 = sub i64 %13, %conv2, !dbg !1707
  store i64 %sub22, i64* %12, align 8, !dbg !1707, !tbaa !1559
  %objects_used = getelementptr inbounds i8, i8* %ptr, i64 264, !dbg !1708
  %14 = bitcast i8* %objects_used to i64*, !dbg !1708
  %15 = load i64, i64* %14, align 8, !dbg !1709, !tbaa !1710
  %sub25 = sub i64 %15, %conv9, !dbg !1709
  store i64 %sub25, i64* %14, align 8, !dbg !1709, !tbaa !1710
  %call27 = tail call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* noundef nonnull %11) #12, !dbg !1711
  %16 = load i64, i64* %obj_count, align 8, !dbg !1712, !tbaa !1129
  %cmp29 = icmp eq i64 %16, 0, !dbg !1714
  br i1 %cmp29, label %if.then31, label %if.end34, !dbg !1715

if.then31:                                        ; preds = %if.end18
  %gcov_ctr40 = load i64, i64* getelementptr inbounds ([6 x i64], [6 x i64]* @__llvm_gcov_ctr.32, i64 0, i64 4), align 16, !dbg !1716
  %17 = add i64 %gcov_ctr40, 1, !dbg !1716
  store i64 %17, i64* getelementptr inbounds ([6 x i64], [6 x i64]* @__llvm_gcov_ctr.32, i64 0, i64 4), align 16, !dbg !1716
  tail call void @extstore_run_maint(i8* noundef nonnull %ptr) #14, !dbg !1718
  br label %if.end34, !dbg !1719

if.else33:                                        ; preds = %land.lhs.true, %entry
  %gcov_ctr41 = load i64, i64* getelementptr inbounds ([6 x i64], [6 x i64]* @__llvm_gcov_ctr.32, i64 0, i64 5), align 8, !dbg !1720
  %18 = add i64 %gcov_ctr41, 1, !dbg !1720
  store i64 %18, i64* getelementptr inbounds ([6 x i64], [6 x i64]* @__llvm_gcov_ctr.32, i64 0, i64 5), align 8, !dbg !1720
  call void @llvm.dbg.value(metadata i32 -1, metadata !1668, metadata !DIExpression()), !dbg !1669
  br label %if.end34

if.end34:                                         ; preds = %if.end18, %if.then31, %if.else33
  %ret.0 = phi i32 [ -1, %if.else33 ], [ 0, %if.then31 ], [ 0, %if.end18 ], !dbg !1669
  call void @llvm.dbg.value(metadata i32 %ret.0, metadata !1668, metadata !DIExpression()), !dbg !1669
  %call36 = tail call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* noundef nonnull %mutex) #12, !dbg !1722
  ret i32 %ret.0, !dbg !1723
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @extstore_check(i8* nocapture noundef readonly %ptr, i32 noundef %page_id, i64 noundef %page_version) local_unnamed_addr #0 !dbg !1724 {
entry:
  %gcov_ctr = load i64, i64* getelementptr inbounds ([2 x i64], [2 x i64]* @__llvm_gcov_ctr.33, i64 0, i64 0), align 8
  %0 = add i64 %gcov_ctr, 1
  store i64 %0, i64* getelementptr inbounds ([2 x i64], [2 x i64]* @__llvm_gcov_ctr.33, i64 0, i64 0), align 8
  call void @llvm.dbg.value(metadata i8* %ptr, metadata !1728, metadata !DIExpression()), !dbg !1734
  call void @llvm.dbg.value(metadata i32 %page_id, metadata !1729, metadata !DIExpression()), !dbg !1734
  call void @llvm.dbg.value(metadata i64 %page_version, metadata !1730, metadata !DIExpression()), !dbg !1734
  call void @llvm.dbg.value(metadata i8* %ptr, metadata !1731, metadata !DIExpression()), !dbg !1734
  %pages = getelementptr inbounds i8, i8* %ptr, i64 40, !dbg !1735
  %1 = bitcast i8* %pages to %struct._store_page**, !dbg !1735
  %2 = load %struct._store_page*, %struct._store_page** %1, align 8, !dbg !1735, !tbaa !561
  %idxprom = zext i32 %page_id to i64, !dbg !1736
  call void @llvm.dbg.value(metadata !DIArgList(%struct._store_page* %2, i64 %idxprom), metadata !1732, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 120, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !1734
  call void @llvm.dbg.value(metadata i32 0, metadata !1733, metadata !DIExpression()), !dbg !1734
  %mutex = getelementptr inbounds %struct._store_page, %struct._store_page* %2, i64 %idxprom, i32 0, !dbg !1737
  %call = tail call i32 @pthread_mutex_lock(%union.pthread_mutex_t* noundef %mutex) #12, !dbg !1738
  %version = getelementptr inbounds %struct._store_page, %struct._store_page* %2, i64 %idxprom, i32 4, !dbg !1739
  %3 = load i32, i32* %version, align 8, !dbg !1739, !tbaa !956
  %conv = zext i32 %3 to i64, !dbg !1741
  %cmp.not = icmp eq i64 %conv, %page_version, !dbg !1742
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !1743

if.then:                                          ; preds = %entry
  %gcov_ctr4 = load i64, i64* getelementptr inbounds ([2 x i64], [2 x i64]* @__llvm_gcov_ctr.33, i64 0, i64 1), align 8, !dbg !1744
  %4 = add i64 %gcov_ctr4, 1, !dbg !1744
  store i64 %4, i64* getelementptr inbounds ([2 x i64], [2 x i64]* @__llvm_gcov_ctr.33, i64 0, i64 1), align 8, !dbg !1744
  call void @llvm.dbg.value(metadata i32 -1, metadata !1733, metadata !DIExpression()), !dbg !1734
  br label %if.end, !dbg !1745

if.end:                                           ; preds = %if.then, %entry
  %ret.0 = phi i32 [ -1, %if.then ], [ 0, %entry ], !dbg !1734
  call void @llvm.dbg.value(metadata i32 %ret.0, metadata !1733, metadata !DIExpression()), !dbg !1734
  %call3 = tail call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* noundef nonnull %mutex) #12, !dbg !1746
  ret i32 %ret.0, !dbg !1747
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @extstore_close_page(i8* nocapture noundef readonly %ptr, i32 noundef %page_id, i64 noundef %page_version) local_unnamed_addr #0 !dbg !1748 {
entry:
  %gcov_ctr = load i64, i64* getelementptr inbounds ([3 x i64], [3 x i64]* @__llvm_gcov_ctr.34, i64 0, i64 0), align 16
  %0 = add i64 %gcov_ctr, 1
  store i64 %0, i64* getelementptr inbounds ([3 x i64], [3 x i64]* @__llvm_gcov_ctr.34, i64 0, i64 0), align 16
  call void @llvm.dbg.value(metadata i8* %ptr, metadata !1752, metadata !DIExpression()), !dbg !1757
  call void @llvm.dbg.value(metadata i32 %page_id, metadata !1753, metadata !DIExpression()), !dbg !1757
  call void @llvm.dbg.value(metadata i64 %page_version, metadata !1754, metadata !DIExpression()), !dbg !1757
  call void @llvm.dbg.value(metadata i8* %ptr, metadata !1755, metadata !DIExpression()), !dbg !1757
  %pages = getelementptr inbounds i8, i8* %ptr, i64 40, !dbg !1758
  %1 = bitcast i8* %pages to %struct._store_page**, !dbg !1758
  %2 = load %struct._store_page*, %struct._store_page** %1, align 8, !dbg !1758, !tbaa !561
  %idxprom = zext i32 %page_id to i64, !dbg !1759
  call void @llvm.dbg.value(metadata !DIArgList(%struct._store_page* %2, i64 %idxprom), metadata !1756, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 120, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !1757
  %mutex = getelementptr inbounds %struct._store_page, %struct._store_page* %2, i64 %idxprom, i32 0, !dbg !1760
  %call = tail call i32 @pthread_mutex_lock(%union.pthread_mutex_t* noundef %mutex) #12, !dbg !1761
  %closed = getelementptr inbounds %struct._store_page, %struct._store_page* %2, i64 %idxprom, i32 13, !dbg !1762
  %3 = load i8, i8* %closed, align 1, !dbg !1762, !tbaa !952, !range !948
  %tobool.not = icmp eq i8 %3, 0, !dbg !1762
  br i1 %tobool.not, label %land.lhs.true, label %if.end, !dbg !1764

land.lhs.true:                                    ; preds = %entry
  %gcov_ctr5 = load i64, i64* getelementptr inbounds ([3 x i64], [3 x i64]* @__llvm_gcov_ctr.34, i64 0, i64 1), align 8, !dbg !1765
  %4 = add i64 %gcov_ctr5, 1, !dbg !1765
  store i64 %4, i64* getelementptr inbounds ([3 x i64], [3 x i64]* @__llvm_gcov_ctr.34, i64 0, i64 1), align 8, !dbg !1765
  %version = getelementptr inbounds %struct._store_page, %struct._store_page* %2, i64 %idxprom, i32 4, !dbg !1766
  %5 = load i32, i32* %version, align 8, !dbg !1766, !tbaa !956
  %conv = zext i32 %5 to i64, !dbg !1765
  %cmp = icmp eq i64 %conv, %page_version, !dbg !1767
  br i1 %cmp, label %if.then, label %if.end, !dbg !1768

if.then:                                          ; preds = %land.lhs.true
  %gcov_ctr6 = load i64, i64* getelementptr inbounds ([3 x i64], [3 x i64]* @__llvm_gcov_ctr.34, i64 0, i64 2), align 16, !dbg !1769
  %6 = add i64 %gcov_ctr6, 1, !dbg !1769
  store i64 %6, i64* getelementptr inbounds ([3 x i64], [3 x i64]* @__llvm_gcov_ctr.34, i64 0, i64 2), align 16, !dbg !1769
  store i8 1, i8* %closed, align 1, !dbg !1771, !tbaa !952
  tail call void @extstore_run_maint(i8* noundef nonnull %ptr) #14, !dbg !1772
  br label %if.end, !dbg !1773

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %call4 = tail call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* noundef nonnull %mutex) #12, !dbg !1774
  ret void, !dbg !1775
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define internal fastcc i64 @_next_version(%struct.store_engine* nocapture noundef %e) unnamed_addr #4 !dbg !1776 {
entry:
  %gcov_ctr = load i64, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.35, i64 0, i64 0), align 8
  %0 = add i64 %gcov_ctr, 1
  store i64 %0, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.35, i64 0, i64 0), align 8
  call void @llvm.dbg.value(metadata %struct.store_engine* %e, metadata !1780, metadata !DIExpression()), !dbg !1781
  %version = getelementptr inbounds %struct.store_engine, %struct.store_engine* %e, i64 0, i32 10, !dbg !1782
  %1 = load i32, i32* %version, align 8, !dbg !1783, !tbaa !664
  %inc = add i32 %1, 1, !dbg !1783
  store i32 %inc, i32* %version, align 8, !dbg !1783, !tbaa !664
  %conv = zext i32 %1 to i64, !dbg !1784
  ret i64 %conv, !dbg !1785
}

; Function Attrs: nounwind
declare !dbg !1786 dso_local i8* @memset(i8* noundef, i32 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define internal void @_wbuf_cb(i8* noundef %ep, %struct._obj_io* noundef %io, i32 noundef %ret) #0 !dbg !1789 {
entry:
  call void @llvm.dbg.value(metadata i8* %ep, metadata !1791, metadata !DIExpression()), !dbg !1797
  call void @llvm.dbg.value(metadata %struct._obj_io* %io, metadata !1792, metadata !DIExpression()), !dbg !1797
  call void @llvm.dbg.value(metadata i32 %ret, metadata !1793, metadata !DIExpression()), !dbg !1797
  call void @llvm.dbg.value(metadata i8* %ep, metadata !1794, metadata !DIExpression()), !dbg !1797
  %pages = getelementptr inbounds i8, i8* %ep, i64 40, !dbg !1798
  %0 = bitcast i8* %pages to %struct._store_page**, !dbg !1798
  %1 = load %struct._store_page*, %struct._store_page** %0, align 8, !dbg !1798, !tbaa !561
  %page_id = getelementptr inbounds %struct._obj_io, %struct._obj_io* %io, i64 0, i32 8, !dbg !1799
  %2 = load i16, i16* %page_id, align 8, !dbg !1799, !tbaa !938
  %idxprom = zext i16 %2 to i64, !dbg !1800
  call void @llvm.dbg.value(metadata !DIArgList(%struct._store_page* %1, i64 %idxprom), metadata !1795, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 120, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !1797
  %3 = bitcast %struct._obj_io* %io to %struct.__store_wbuf**, !dbg !1801
  %4 = load %struct.__store_wbuf*, %struct.__store_wbuf** %3, align 8, !dbg !1801, !tbaa !1462
  call void @llvm.dbg.value(metadata %struct.__store_wbuf* %4, metadata !1796, metadata !DIExpression()), !dbg !1797
  %flushed = getelementptr inbounds %struct.__store_wbuf, %struct.__store_wbuf* %4, i64 0, i32 7, !dbg !1802
  store i8 1, i8* %flushed, align 1, !dbg !1803, !tbaa !1518
  %mutex = getelementptr inbounds %struct._store_page, %struct._store_page* %1, i64 %idxprom, i32 0, !dbg !1804
  %call = tail call i32 @pthread_mutex_lock(%union.pthread_mutex_t* noundef %mutex) #12, !dbg !1805
  %wbuf = getelementptr inbounds %struct._store_page, %struct._store_page* %1, i64 %idxprom, i32 15, !dbg !1806
  %5 = load %struct.__store_wbuf*, %struct.__store_wbuf** %wbuf, align 8, !dbg !1806, !tbaa !1289
  %cmp.not = icmp ne %struct.__store_wbuf* %5, null, !dbg !1806
  %cmp2 = icmp eq %struct.__store_wbuf* %5, %4, !dbg !1806
  %or.cond = select i1 %cmp.not, i1 %cmp2, i1 false, !dbg !1806
  br i1 %or.cond, label %if.end, label %if.else, !dbg !1806

if.else:                                          ; preds = %entry
  %gcov_ctr = load i64, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @__llvm_gcov_ctr.36, i64 0, i64 0), align 16, !dbg !1806
  %6 = add i64 %gcov_ctr, 1, !dbg !1806
  store i64 %6, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @__llvm_gcov_ctr.36, i64 0, i64 0), align 16, !dbg !1806
  tail call void @__assert_fail(i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.13, i64 0, i64 0), i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i64 0, i64 0), i32 noundef 476, i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @__PRETTY_FUNCTION__._wbuf_cb, i64 0, i64 0)) #15, !dbg !1806
  unreachable, !dbg !1806

if.end:                                           ; preds = %entry
  %written = getelementptr inbounds %struct._store_page, %struct._store_page* %1, i64 %idxprom, i32 7, !dbg !1809
  %7 = load i32, i32* %written, align 4, !dbg !1809, !tbaa !970
  %offset = getelementptr inbounds %struct.__store_wbuf, %struct.__store_wbuf* %4, i64 0, i32 5, !dbg !1809
  %8 = load i32, i32* %offset, align 8, !dbg !1809, !tbaa !1464
  %cmp3 = icmp eq i32 %7, %8, !dbg !1809
  br i1 %cmp3, label %if.then4, label %if.else5, !dbg !1812

if.then4:                                         ; preds = %if.end
  %gcov_ctr24 = load i64, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @__llvm_gcov_ctr.36, i64 0, i64 2), align 16, !dbg !1812
  %9 = add i64 %gcov_ctr24, 1, !dbg !1812
  store i64 %9, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @__llvm_gcov_ctr.36, i64 0, i64 2), align 16, !dbg !1812
  %size = getelementptr inbounds %struct.__store_wbuf, %struct.__store_wbuf* %4, i64 0, i32 4, !dbg !1813
  %10 = load i32, i32* %size, align 4, !dbg !1813, !tbaa !836
  %11 = load i32, i32* %written, align 4, !dbg !1814, !tbaa !970
  %add = add i32 %11, %10, !dbg !1814
  store i32 %add, i32* %written, align 4, !dbg !1814, !tbaa !970
  store %struct.__store_wbuf* null, %struct.__store_wbuf** %wbuf, align 8, !dbg !1815, !tbaa !1289
  %conv = zext i32 %add to i64, !dbg !1816
  %page_size = getelementptr inbounds i8, i8* %ep, i64 104, !dbg !1818
  %12 = bitcast i8* %page_size to i64*, !dbg !1818
  %13 = load i64, i64* %12, align 8, !dbg !1818, !tbaa !289
  %cmp10 = icmp eq i64 %13, %conv, !dbg !1819
  br i1 %cmp10, label %if.then12, label %if.end13, !dbg !1820

if.else5:                                         ; preds = %if.end
  %gcov_ctr23 = load i64, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @__llvm_gcov_ctr.36, i64 0, i64 1), align 8, !dbg !1809
  %14 = add i64 %gcov_ctr23, 1, !dbg !1809
  store i64 %14, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @__llvm_gcov_ctr.36, i64 0, i64 1), align 8, !dbg !1809
  tail call void @__assert_fail(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.14, i64 0, i64 0), i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i64 0, i64 0), i32 noundef 477, i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @__PRETTY_FUNCTION__._wbuf_cb, i64 0, i64 0)) #15, !dbg !1809
  unreachable, !dbg !1809

if.then12:                                        ; preds = %if.then4
  %gcov_ctr25 = load i64, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @__llvm_gcov_ctr.36, i64 0, i64 3), align 8, !dbg !1821
  %15 = add i64 %gcov_ctr25, 1, !dbg !1821
  store i64 %15, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @__llvm_gcov_ctr.36, i64 0, i64 3), align 8, !dbg !1821
  %active = getelementptr inbounds %struct._store_page, %struct._store_page* %1, i64 %idxprom, i32 12, !dbg !1822
  store i8 0, i8* %active, align 2, !dbg !1823, !tbaa !964
  br label %if.end13, !dbg !1821

if.end13:                                         ; preds = %if.then12, %if.then4
  call void @llvm.dbg.value(metadata i8* %ep, metadata !1794, metadata !DIExpression()), !dbg !1797
  %mutex14 = bitcast i8* %ep to %union.pthread_mutex_t*, !dbg !1824
  %call15 = tail call i32 @pthread_mutex_lock(%union.pthread_mutex_t* noundef %mutex14) #12, !dbg !1825
  %wbuf_stack = getelementptr inbounds i8, i8* %ep, i64 48, !dbg !1826
  %16 = bitcast i8* %wbuf_stack to %struct.__store_wbuf**, !dbg !1826
  %17 = load %struct.__store_wbuf*, %struct.__store_wbuf** %16, align 8, !dbg !1826, !tbaa !696
  %next = getelementptr inbounds %struct.__store_wbuf, %struct.__store_wbuf* %4, i64 0, i32 0, !dbg !1827
  store %struct.__store_wbuf* %17, %struct.__store_wbuf** %next, align 8, !dbg !1828, !tbaa !699
  store %struct.__store_wbuf* %4, %struct.__store_wbuf** %16, align 8, !dbg !1829, !tbaa !696
  %io_stack = getelementptr inbounds i8, i8* %ep, i64 56, !dbg !1830
  %18 = bitcast i8* %io_stack to %struct._obj_io**, !dbg !1830
  %19 = load %struct._obj_io*, %struct._obj_io** %18, align 8, !dbg !1830, !tbaa !703
  %next17 = getelementptr inbounds %struct._obj_io, %struct._obj_io* %io, i64 0, i32 1, !dbg !1831
  store %struct._obj_io* %19, %struct._obj_io** %next17, align 8, !dbg !1832, !tbaa !706
  store %struct._obj_io* %io, %struct._obj_io** %18, align 8, !dbg !1833, !tbaa !703
  %call20 = tail call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* noundef %mutex14) #12, !dbg !1834
  %call22 = tail call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* noundef nonnull %mutex) #12, !dbg !1835
  ret void, !dbg !1836
}

declare !dbg !1837 dso_local i32 @pthread_cond_wait(%union.pthread_cond_t* noundef, %union.pthread_mutex_t* noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @_read_from_wbuf(%struct._store_page* nocapture noundef readonly %p, %struct._obj_io* nocapture noundef readonly %io) unnamed_addr #0 !dbg !1841 {
entry:
  call void @llvm.dbg.value(metadata %struct._store_page* %p, metadata !1845, metadata !DIExpression()), !dbg !1856
  call void @llvm.dbg.value(metadata %struct._obj_io* %io, metadata !1846, metadata !DIExpression()), !dbg !1856
  %wbuf1 = getelementptr inbounds %struct._store_page, %struct._store_page* %p, i64 0, i32 15, !dbg !1857
  %0 = load %struct.__store_wbuf*, %struct.__store_wbuf** %wbuf1, align 8, !dbg !1857, !tbaa !1289
  call void @llvm.dbg.value(metadata %struct.__store_wbuf* %0, metadata !1847, metadata !DIExpression()), !dbg !1856
  %cmp.not = icmp eq %struct.__store_wbuf* %0, null, !dbg !1858
  br i1 %cmp.not, label %if.else, label %if.end, !dbg !1861

if.else:                                          ; preds = %entry
  %gcov_ctr = load i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @__llvm_gcov_ctr.37, i64 0, i64 0), align 16, !dbg !1858
  %1 = add i64 %gcov_ctr, 1, !dbg !1858
  store i64 %1, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @__llvm_gcov_ctr.37, i64 0, i64 0), align 16, !dbg !1858
  tail call void @__assert_fail(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.16, i64 0, i64 0), i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i64 0, i64 0), i32 noundef 717, i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @__PRETTY_FUNCTION__._read_from_wbuf, i64 0, i64 0)) #15, !dbg !1858
  unreachable, !dbg !1858

if.end:                                           ; preds = %entry
  %offset = getelementptr inbounds %struct._obj_io, %struct._obj_io* %io, i64 0, i32 7, !dbg !1862
  %2 = load i32, i32* %offset, align 4, !dbg !1862, !tbaa !968
  %written = getelementptr inbounds %struct._store_page, %struct._store_page* %p, i64 0, i32 7, !dbg !1862
  %3 = load i32, i32* %written, align 4, !dbg !1862, !tbaa !970
  %size = getelementptr inbounds %struct.__store_wbuf, %struct.__store_wbuf* %0, i64 0, i32 4, !dbg !1862
  %4 = load i32, i32* %size, align 4, !dbg !1862, !tbaa !836
  %add = add i32 %4, %3, !dbg !1862
  %cmp2 = icmp ult i32 %2, %add, !dbg !1862
  br i1 %cmp2, label %if.end5, label %if.else4, !dbg !1865

if.else4:                                         ; preds = %if.end
  %gcov_ctr29 = load i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @__llvm_gcov_ctr.37, i64 0, i64 1), align 8, !dbg !1862
  %5 = add i64 %gcov_ctr29, 1, !dbg !1862
  store i64 %5, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @__llvm_gcov_ctr.37, i64 0, i64 1), align 8, !dbg !1862
  tail call void @__assert_fail(i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.17, i64 0, i64 0), i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i64 0, i64 0), i32 noundef 718, i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @__PRETTY_FUNCTION__._read_from_wbuf, i64 0, i64 0)) #15, !dbg !1862
  unreachable, !dbg !1862

if.end5:                                          ; preds = %if.end
  %iov = getelementptr inbounds %struct._obj_io, %struct._obj_io* %io, i64 0, i32 3, !dbg !1866
  %6 = load %struct.iovec*, %struct.iovec** %iov, align 8, !dbg !1866, !tbaa !1003
  %cmp6 = icmp eq %struct.iovec* %6, null, !dbg !1867
  br i1 %cmp6, label %if.then7, label %if.else11, !dbg !1868

if.then7:                                         ; preds = %if.end5
  %gcov_ctr30 = load i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @__llvm_gcov_ctr.37, i64 0, i64 2), align 16, !dbg !1869
  %7 = add i64 %gcov_ctr30, 1, !dbg !1869
  store i64 %7, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @__llvm_gcov_ctr.37, i64 0, i64 2), align 16, !dbg !1869
  %buf = getelementptr inbounds %struct._obj_io, %struct._obj_io* %io, i64 0, i32 2, !dbg !1871
  %8 = load i8*, i8** %buf, align 8, !dbg !1871, !tbaa !1010
  %buf8 = getelementptr inbounds %struct.__store_wbuf, %struct.__store_wbuf* %0, i64 0, i32 1, !dbg !1872
  %9 = load i8*, i8** %buf8, align 8, !dbg !1872, !tbaa !818
  %offset10 = getelementptr inbounds %struct.__store_wbuf, %struct.__store_wbuf* %0, i64 0, i32 5, !dbg !1873
  %10 = load i32, i32* %offset10, align 8, !dbg !1873, !tbaa !1464
  %sub = sub i32 %2, %10, !dbg !1874
  %idx.ext = zext i32 %sub to i64, !dbg !1875
  %add.ptr = getelementptr inbounds i8, i8* %9, i64 %idx.ext, !dbg !1875
  %len = getelementptr inbounds %struct._obj_io, %struct._obj_io* %io, i64 0, i32 6, !dbg !1876
  %11 = load i32, i32* %len, align 8, !dbg !1876, !tbaa !991
  %conv = zext i32 %11 to i64, !dbg !1877
  %call = tail call i8* @memcpy(i8* noundef %8, i8* noundef %add.ptr, i64 noundef %conv) #12, !dbg !1878
  br label %if.end27, !dbg !1879

if.else11:                                        ; preds = %if.end5
  call void @llvm.dbg.value(metadata !DIArgList(i32 %2, i32 undef), metadata !1851, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !1880
  call void @llvm.dbg.value(metadata i32 0, metadata !1848, metadata !DIExpression()), !dbg !1880
  %iovcnt = getelementptr inbounds %struct._obj_io, %struct._obj_io* %io, i64 0, i32 4
  call void @llvm.dbg.value(metadata i32 0, metadata !1848, metadata !DIExpression()), !dbg !1880
  call void @llvm.dbg.value(metadata !DIArgList(i32 %2, i32 undef), metadata !1851, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !1880
  %12 = load i32, i32* %iovcnt, align 8, !dbg !1881, !tbaa !1024
  %cmp1557.not = icmp eq i32 %12, 0, !dbg !1882
  br i1 %cmp1557.not, label %for.end, label %for.body.lr.ph, !dbg !1883

for.body.lr.ph:                                   ; preds = %if.else11
  %offset13 = getelementptr inbounds %struct.__store_wbuf, %struct.__store_wbuf* %0, i64 0, i32 5, !dbg !1884
  %13 = load i32, i32* %offset13, align 8, !dbg !1884, !tbaa !1464
  call void @llvm.dbg.value(metadata !DIArgList(i32 %2, i32 %13), metadata !1851, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !1880
  %sub14 = sub i32 %2, %13, !dbg !1885
  call void @llvm.dbg.value(metadata i32 %sub14, metadata !1851, metadata !DIExpression()), !dbg !1880
  %buf19 = getelementptr inbounds %struct.__store_wbuf, %struct.__store_wbuf* %0, i64 0, i32 1
  br label %for.body, !dbg !1883

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %14 = phi %struct.iovec* [ %6, %for.body.lr.ph ], [ %.pre, %for.body.for.body_crit_edge ], !dbg !1886
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.body.for.body_crit_edge ]
  %off.058 = phi i32 [ %sub14, %for.body.lr.ph ], [ %conv26, %for.body.for.body_crit_edge ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !1848, metadata !DIExpression()), !dbg !1880
  call void @llvm.dbg.value(metadata i32 %off.058, metadata !1851, metadata !DIExpression()), !dbg !1880
  call void @llvm.dbg.value(metadata !DIArgList(%struct.iovec* %14, i64 %indvars.iv), metadata !1852, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 16, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !1887
  %iov_base = getelementptr inbounds %struct.iovec, %struct.iovec* %14, i64 %indvars.iv, i32 0, !dbg !1888
  %15 = load i8*, i8** %iov_base, align 8, !dbg !1888, !tbaa !1889
  %16 = load i8*, i8** %buf19, align 8, !dbg !1891, !tbaa !818
  %idx.ext20 = zext i32 %off.058 to i64, !dbg !1892
  %add.ptr21 = getelementptr inbounds i8, i8* %16, i64 %idx.ext20, !dbg !1892
  %iov_len = getelementptr inbounds %struct.iovec, %struct.iovec* %14, i64 %indvars.iv, i32 1, !dbg !1893
  %17 = load i64, i64* %iov_len, align 8, !dbg !1893, !tbaa !1894
  %call22 = tail call i8* @memcpy(i8* noundef %15, i8* noundef %add.ptr21, i64 noundef %17) #12, !dbg !1895
  %18 = load i64, i64* %iov_len, align 8, !dbg !1896, !tbaa !1894
  call void @llvm.dbg.value(metadata !DIArgList(i32 %off.058, i64 %18), metadata !1851, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_plus, DW_OP_stack_value)), !dbg !1880
  %gcov_ctr31 = load i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @__llvm_gcov_ctr.37, i64 0, i64 3), align 8, !dbg !1897
  %19 = add i64 %gcov_ctr31, 1, !dbg !1897
  store i64 %19, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @__llvm_gcov_ctr.37, i64 0, i64 3), align 8, !dbg !1897
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !1897
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !1848, metadata !DIExpression()), !dbg !1880
  %20 = load i32, i32* %iovcnt, align 8, !dbg !1881, !tbaa !1024
  %21 = zext i32 %20 to i64, !dbg !1882
  %cmp15 = icmp ult i64 %indvars.iv.next, %21, !dbg !1882
  br i1 %cmp15, label %for.body.for.body_crit_edge, label %for.end, !dbg !1883, !llvm.loop !1898

for.body.for.body_crit_edge:                      ; preds = %for.body
  %22 = trunc i64 %18 to i32, !dbg !1900
  call void @llvm.dbg.value(metadata !DIArgList(i32 %off.058, i32 %22), metadata !1851, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value)), !dbg !1880
  %conv26 = add i32 %off.058, %22, !dbg !1900
  call void @llvm.dbg.value(metadata i32 %conv26, metadata !1851, metadata !DIExpression()), !dbg !1880
  %.pre = load %struct.iovec*, %struct.iovec** %iov, align 8, !dbg !1886, !tbaa !1003
  br label %for.body, !dbg !1883

for.end:                                          ; preds = %for.body, %if.else11
  %gcov_ctr32 = load i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @__llvm_gcov_ctr.37, i64 0, i64 4), align 16, !dbg !1901
  %23 = add i64 %gcov_ctr32, 1, !dbg !1901
  store i64 %23, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @__llvm_gcov_ctr.37, i64 0, i64 4), align 16, !dbg !1901
  br label %if.end27

if.end27:                                         ; preds = %for.end, %if.then7
  %len28 = getelementptr inbounds %struct._obj_io, %struct._obj_io* %io, i64 0, i32 6, !dbg !1902
  %24 = load i32, i32* %len28, align 8, !dbg !1902, !tbaa !991
  ret i32 %24, !dbg !1903
}

declare !dbg !1904 dso_local i64 @pread(i32 noundef, i8* noundef, i64 noundef, i64 noundef) local_unnamed_addr #5

declare !dbg !1910 dso_local i64 @preadv(i32 noundef, %struct.iovec* noundef, i32 noundef, i64 noundef) local_unnamed_addr #5

declare !dbg !1916 dso_local i64 @pwrite(i32 noundef, i8* noundef, i64 noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @_free_page(%struct.store_engine* noundef %e, %struct._store_page* noundef %p) unnamed_addr #0 !dbg !1919 {
entry:
  call void @llvm.dbg.value(metadata %struct.store_engine* %e, metadata !1921, metadata !DIExpression()), !dbg !1925
  call void @llvm.dbg.value(metadata %struct._store_page* %p, metadata !1922, metadata !DIExpression()), !dbg !1925
  call void @llvm.dbg.value(metadata %struct._store_page* null, metadata !1923, metadata !DIExpression()), !dbg !1925
  call void @llvm.dbg.value(metadata %struct._store_page* null, metadata !1924, metadata !DIExpression()), !dbg !1925
  %stats_mutex = getelementptr inbounds %struct.store_engine, %struct.store_engine* %e, i64 0, i32 18, !dbg !1926
  %call = tail call i32 @pthread_mutex_lock(%union.pthread_mutex_t* noundef nonnull %stats_mutex) #12, !dbg !1926
  %obj_count = getelementptr inbounds %struct._store_page, %struct._store_page* %p, i64 0, i32 1, !dbg !1927
  %0 = load i64, i64* %obj_count, align 8, !dbg !1927, !tbaa !1129
  %objects_used = getelementptr inbounds %struct.store_engine, %struct.store_engine* %e, i64 0, i32 19, i32 10, !dbg !1928
  %1 = load i64, i64* %objects_used, align 8, !dbg !1929, !tbaa !1710
  %sub = sub i64 %1, %0, !dbg !1929
  store i64 %sub, i64* %objects_used, align 8, !dbg !1929, !tbaa !1710
  %bytes_used = getelementptr inbounds %struct._store_page, %struct._store_page* %p, i64 0, i32 2, !dbg !1930
  %2 = load i64, i64* %bytes_used, align 8, !dbg !1930, !tbaa !1144
  %bytes_used2 = getelementptr inbounds %struct.store_engine, %struct.store_engine* %e, i64 0, i32 19, i32 14, !dbg !1931
  %3 = load i64, i64* %bytes_used2, align 8, !dbg !1932, !tbaa !1559
  %sub3 = sub i64 %3, %2, !dbg !1932
  store i64 %sub3, i64* %bytes_used2, align 8, !dbg !1932, !tbaa !1559
  %page_reclaims = getelementptr inbounds %struct.store_engine, %struct.store_engine* %e, i64 0, i32 19, i32 3, !dbg !1933
  %4 = load i64, i64* %page_reclaims, align 8, !dbg !1934, !tbaa !1935
  %inc = add i64 %4, 1, !dbg !1934
  store i64 %inc, i64* %page_reclaims, align 8, !dbg !1934, !tbaa !1935
  %call6 = tail call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* noundef nonnull %stats_mutex) #12, !dbg !1936
  %mutex = getelementptr inbounds %struct.store_engine, %struct.store_engine* %e, i64 0, i32 0, !dbg !1937
  %call7 = tail call i32 @pthread_mutex_lock(%union.pthread_mutex_t* noundef %mutex) #12, !dbg !1938
  %page_buckets = getelementptr inbounds %struct.store_engine, %struct.store_engine* %e, i64 0, i32 7, !dbg !1939
  %5 = load %struct._store_page**, %struct._store_page*** %page_buckets, align 8, !dbg !1939, !tbaa !683
  %bucket = getelementptr inbounds %struct._store_page, %struct._store_page* %p, i64 0, i32 8, !dbg !1940
  %6 = load i32, i32* %bucket, align 8, !dbg !1940, !tbaa !1149
  %idxprom = zext i32 %6 to i64, !dbg !1941
  %arrayidx = getelementptr inbounds %struct._store_page*, %struct._store_page** %5, i64 %idxprom, !dbg !1941
  call void @llvm.dbg.value(metadata %struct._store_page* undef, metadata !1923, metadata !DIExpression()), !dbg !1925
  %tmp.088 = load %struct._store_page*, %struct._store_page** %arrayidx, align 8, !dbg !1925, !tbaa !658
  call void @llvm.dbg.value(metadata %struct._store_page* null, metadata !1924, metadata !DIExpression()), !dbg !1925
  call void @llvm.dbg.value(metadata %struct._store_page* %tmp.088, metadata !1923, metadata !DIExpression()), !dbg !1925
  %tobool.not89 = icmp eq %struct._store_page* %tmp.088, null, !dbg !1942
  br i1 %tobool.not89, label %while.end, label %while.body.lr.ph, !dbg !1942

while.body.lr.ph:                                 ; preds = %entry
  call void @llvm.dbg.value(metadata %struct._store_page* null, metadata !1924, metadata !DIExpression()), !dbg !1925
  %cmp98 = icmp eq %struct._store_page* %tmp.088, %p, !dbg !1943
  br i1 %cmp98, label %if.then, label %if.end17.lr.ph, !dbg !1946

if.end17.lr.ph:                                   ; preds = %while.body.lr.ph
  %.promoted = load i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @__llvm_gcov_ctr.38, i64 0, i64 0), align 16
  br label %if.end17, !dbg !1946

while.body:                                       ; preds = %if.end17
  call void @llvm.dbg.value(metadata %struct._store_page* %tmp.09199, metadata !1924, metadata !DIExpression()), !dbg !1925
  %cmp = icmp eq %struct._store_page* %tmp.0, %p, !dbg !1943
  br i1 %cmp, label %if.then.loopexit, label %if.end17, !dbg !1946, !llvm.loop !1947

if.then.loopexit:                                 ; preds = %while.body
  store i64 %12, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @__llvm_gcov_ctr.38, i64 0, i64 0), align 16, !dbg !1949
  br label %if.then, !dbg !1950

if.then:                                          ; preds = %if.then.loopexit, %while.body.lr.ph
  %prev.090.lcssa = phi %struct._store_page* [ null, %while.body.lr.ph ], [ %tmp.09199, %if.then.loopexit ]
  %tobool8.not = icmp eq %struct._store_page* %prev.090.lcssa, null, !dbg !1950
  br i1 %tobool8.not, label %if.else, label %if.then9, !dbg !1953

if.then9:                                         ; preds = %if.then
  %gcov_ctr40 = load i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @__llvm_gcov_ctr.38, i64 0, i64 2), align 16, !dbg !1954
  %7 = add i64 %gcov_ctr40, 1, !dbg !1954
  store i64 %7, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @__llvm_gcov_ctr.38, i64 0, i64 2), align 16, !dbg !1954
  %next = getelementptr inbounds %struct._store_page, %struct._store_page* %p, i64 0, i32 16, !dbg !1956
  %8 = load %struct._store_page*, %struct._store_page** %next, align 8, !dbg !1956, !tbaa !659
  %next10 = getelementptr inbounds %struct._store_page, %struct._store_page* %prev.090.lcssa, i64 0, i32 16, !dbg !1957
  store %struct._store_page* %8, %struct._store_page** %next10, align 8, !dbg !1958, !tbaa !659
  br label %if.end, !dbg !1959

if.else:                                          ; preds = %if.then
  %gcov_ctr39 = load i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @__llvm_gcov_ctr.38, i64 0, i64 1), align 8, !dbg !1960
  %9 = add i64 %gcov_ctr39, 1, !dbg !1960
  store i64 %9, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @__llvm_gcov_ctr.38, i64 0, i64 1), align 8, !dbg !1960
  %next11 = getelementptr inbounds %struct._store_page, %struct._store_page* %p, i64 0, i32 16, !dbg !1962
  %10 = load %struct._store_page*, %struct._store_page** %next11, align 8, !dbg !1962, !tbaa !659
  store %struct._store_page* %10, %struct._store_page** %arrayidx, align 8, !dbg !1963, !tbaa !658
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then9
  %next16 = getelementptr inbounds %struct._store_page, %struct._store_page* %p, i64 0, i32 16, !dbg !1964
  store %struct._store_page* null, %struct._store_page** %next16, align 8, !dbg !1965, !tbaa !659
  br label %while.end, !dbg !1966

if.end17:                                         ; preds = %if.end17.lr.ph, %while.body
  %tmp.09199 = phi %struct._store_page* [ %tmp.088, %if.end17.lr.ph ], [ %tmp.0, %while.body ]
  %11 = phi i64 [ %.promoted, %if.end17.lr.ph ], [ %12, %while.body ]
  %12 = add i64 %11, 1, !dbg !1949
  call void @llvm.dbg.value(metadata %struct._store_page* %tmp.09199, metadata !1924, metadata !DIExpression()), !dbg !1925
  %next18 = getelementptr inbounds %struct._store_page, %struct._store_page* %tmp.09199, i64 0, i32 16, !dbg !1967
  call void @llvm.dbg.value(metadata %struct._store_page* undef, metadata !1923, metadata !DIExpression()), !dbg !1925
  %tmp.0 = load %struct._store_page*, %struct._store_page** %next18, align 8, !dbg !1925, !tbaa !658
  call void @llvm.dbg.value(metadata %struct._store_page* %tmp.0, metadata !1923, metadata !DIExpression()), !dbg !1925
  %tobool.not = icmp eq %struct._store_page* %tmp.0, null, !dbg !1942
  br i1 %tobool.not, label %while.end.loopexit, label %while.body, !dbg !1942, !llvm.loop !1947

while.end.loopexit:                               ; preds = %if.end17
  store i64 %12, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @__llvm_gcov_ctr.38, i64 0, i64 0), align 16, !dbg !1949
  br label %while.end, !dbg !1968

while.end:                                        ; preds = %while.end.loopexit, %entry, %if.end
  %version = getelementptr inbounds %struct._store_page, %struct._store_page* %p, i64 0, i32 4, !dbg !1968
  store i32 0, i32* %version, align 8, !dbg !1969, !tbaa !956
  %13 = bitcast i64* %obj_count to <2 x i64>*, !dbg !1970
  store <2 x i64> zeroinitializer, <2 x i64>* %13, align 8, !dbg !1970, !tbaa !518
  %allocated = getelementptr inbounds %struct._store_page, %struct._store_page* %p, i64 0, i32 6, !dbg !1971
  store i32 0, i32* %allocated, align 8, !dbg !1972, !tbaa !1296
  %written = getelementptr inbounds %struct._store_page, %struct._store_page* %p, i64 0, i32 7, !dbg !1973
  store i32 0, i32* %written, align 4, !dbg !1974, !tbaa !970
  store i32 0, i32* %bucket, align 8, !dbg !1975, !tbaa !1149
  %active = getelementptr inbounds %struct._store_page, %struct._store_page* %p, i64 0, i32 12, !dbg !1976
  store i8 0, i8* %active, align 2, !dbg !1977, !tbaa !964
  %closed = getelementptr inbounds %struct._store_page, %struct._store_page* %p, i64 0, i32 13, !dbg !1978
  store i8 0, i8* %closed, align 1, !dbg !1979, !tbaa !952
  %free = getelementptr inbounds %struct._store_page, %struct._store_page* %p, i64 0, i32 14, !dbg !1980
  store i8 1, i8* %free, align 8, !dbg !1981, !tbaa !624
  %free_bucket = getelementptr inbounds %struct._store_page, %struct._store_page* %p, i64 0, i32 9, !dbg !1982
  %14 = load i32, i32* %free_bucket, align 4, !dbg !1982, !tbaa !617
  %cmp22.not = icmp eq i32 %14, 0, !dbg !1984
  br i1 %cmp22.not, label %if.else32, label %if.then23, !dbg !1985

if.then23:                                        ; preds = %while.end
  %gcov_ctr41 = load i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @__llvm_gcov_ctr.38, i64 0, i64 3), align 8, !dbg !1986
  %15 = add i64 %gcov_ctr41, 1, !dbg !1986
  store i64 %15, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @__llvm_gcov_ctr.38, i64 0, i64 3), align 8, !dbg !1986
  %free_page_buckets = getelementptr inbounds %struct.store_engine, %struct.store_engine* %e, i64 0, i32 8, !dbg !1988
  %16 = load %struct._store_page**, %struct._store_page*** %free_page_buckets, align 8, !dbg !1988, !tbaa !635
  %idxprom25 = zext i32 %14 to i64, !dbg !1986
  %arrayidx26 = getelementptr inbounds %struct._store_page*, %struct._store_page** %16, i64 %idxprom25, !dbg !1986
  br label %if.end35, !dbg !1989

if.else32:                                        ; preds = %while.end
  %gcov_ctr42 = load i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @__llvm_gcov_ctr.38, i64 0, i64 4), align 16, !dbg !1990
  %17 = add i64 %gcov_ctr42, 1, !dbg !1990
  store i64 %17, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @__llvm_gcov_ctr.38, i64 0, i64 4), align 16, !dbg !1990
  %page_freelist = getelementptr inbounds %struct.store_engine, %struct.store_engine* %e, i64 0, i32 6, !dbg !1992
  br label %if.end35

if.end35:                                         ; preds = %if.else32, %if.then23
  %page_freelist.sink96 = phi %struct._store_page** [ %page_freelist, %if.else32 ], [ %arrayidx26, %if.then23 ]
  %18 = load %struct._store_page*, %struct._store_page** %page_freelist.sink96, align 8, !dbg !1993, !tbaa !658
  %next33 = getelementptr inbounds %struct._store_page, %struct._store_page* %p, i64 0, i32 16, !dbg !1993
  store %struct._store_page* %18, %struct._store_page** %next33, align 8, !dbg !1993, !tbaa !659
  store %struct._store_page* %p, %struct._store_page** %page_freelist.sink96, align 8, !dbg !1993, !tbaa !658
  %page_free = getelementptr inbounds %struct.store_engine, %struct.store_engine* %e, i64 0, i32 14, !dbg !1994
  %19 = load i32, i32* %page_free, align 8, !dbg !1995, !tbaa !257
  %inc36 = add i32 %19, 1, !dbg !1995
  store i32 %inc36, i32* %page_free, align 8, !dbg !1995, !tbaa !257
  %call38 = tail call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* noundef nonnull %mutex) #12, !dbg !1996
  ret void, !dbg !1997
}

; Function Attrs: noinline nounwind uwtable
define internal void @__llvm_gcov_writeout() unnamed_addr #8 {
entry:
  tail call void @llvm_gcda_start_file(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @0, i64 0, i64 0), i32 875575338, i32 -1935869607) #13
  br label %counter.loop.header

counter.loop.header:                              ; preds = %entry, %counter.loop.header
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.next, %counter.loop.header ]
  %0 = getelementptr inbounds [22 x %emit_function_args_ty], [22 x %emit_function_args_ty]* @__llvm_internal_gcov_emit_function_args.0, i64 0, i64 %indvars.iv, i32 0
  %ident = load i32, i32* %0, align 4
  %1 = getelementptr inbounds [22 x %emit_function_args_ty], [22 x %emit_function_args_ty]* @__llvm_internal_gcov_emit_function_args.0, i64 0, i64 %indvars.iv, i32 1
  %func_checkssum = load i32, i32* %1, align 4
  %2 = getelementptr inbounds [22 x %emit_function_args_ty], [22 x %emit_function_args_ty]* @__llvm_internal_gcov_emit_function_args.0, i64 0, i64 %indvars.iv, i32 2
  %cfg_checksum = load i32, i32* %2, align 4
  tail call void @llvm_gcda_emit_function(i32 %ident, i32 %func_checkssum, i32 %cfg_checksum) #13
  %3 = getelementptr inbounds [22 x %emit_arcs_args_ty], [22 x %emit_arcs_args_ty]* @__llvm_internal_gcov_emit_arcs_args.0, i64 0, i64 %indvars.iv, i32 0
  %num_counters = load i32, i32* %3, align 16
  %4 = getelementptr inbounds [22 x %emit_arcs_args_ty], [22 x %emit_arcs_args_ty]* @__llvm_internal_gcov_emit_arcs_args.0, i64 0, i64 %indvars.iv, i32 1
  %counters = load i64*, i64** %4, align 8
  tail call void @llvm_gcda_emit_arcs(i32 %num_counters, i64* %counters) #13
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 22
  br i1 %exitcond.not, label %file.loop.latch, label %counter.loop.header

file.loop.latch:                                  ; preds = %counter.loop.header
  tail call void @llvm_gcda_summary_info() #13
  tail call void @llvm_gcda_end_file() #13
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
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) bitcast ([2 x i64]* @__llvm_gcov_ctr to i8*), i8 0, i64 16, i1 false)
  store i64 0, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.18, i64 0, i64 0), align 8
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(64) bitcast ([8 x i64]* @__llvm_gcov_ctr.19 to i8*), i8 0, i64 64, i1 false)
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(176) bitcast ([22 x i64]* @__llvm_gcov_ctr.20 to i8*), i8 0, i64 176, i1 false)
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(24) bitcast ([3 x i64]* @__llvm_gcov_ctr.21 to i8*), i8 0, i64 24, i1 false)
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(144) bitcast ([18 x i64]* @__llvm_gcov_ctr.22 to i8*), i8 0, i64 144, i1 false)
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(144) bitcast ([18 x i64]* @__llvm_gcov_ctr.23 to i8*), i8 0, i64 144, i1 false)
  store i64 0, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.24, i64 0, i64 0), align 8
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(120) bitcast ([15 x i64]* @__llvm_gcov_ctr.25 to i8*), i8 0, i64 120, i1 false)
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(88) bitcast ([11 x i64]* @__llvm_gcov_ctr.26 to i8*), i8 0, i64 88, i1 false)
  store i64 0, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.27, i64 0, i64 0), align 8
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(32) bitcast ([4 x i64]* @__llvm_gcov_ctr.28 to i8*), i8 0, i64 32, i1 false)
  store i64 0, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.29, i64 0, i64 0), align 8
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(40) bitcast ([5 x i64]* @__llvm_gcov_ctr.30 to i8*), i8 0, i64 40, i1 false)
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(32) bitcast ([4 x i64]* @__llvm_gcov_ctr.31 to i8*), i8 0, i64 32, i1 false)
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(48) bitcast ([6 x i64]* @__llvm_gcov_ctr.32 to i8*), i8 0, i64 48, i1 false)
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) bitcast ([2 x i64]* @__llvm_gcov_ctr.33 to i8*), i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(24) bitcast ([3 x i64]* @__llvm_gcov_ctr.34 to i8*), i8 0, i64 24, i1 false)
  store i64 0, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.35, i64 0, i64 0), align 8
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(32) bitcast ([4 x i64]* @__llvm_gcov_ctr.36 to i8*), i8 0, i64 32, i1 false)
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(40) bitcast ([5 x i64]* @__llvm_gcov_ctr.37 to i8*), i8 0, i64 40, i1 false)
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(40) bitcast ([5 x i64]* @__llvm_gcov_ctr.38 to i8*), i8 0, i64 40, i1 false)
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #10

; Function Attrs: noinline nounwind uwtable
define internal void @__llvm_gcov_init() unnamed_addr #8 {
entry:
  tail call void @llvm_gcov_init(void ()* nonnull @__llvm_gcov_writeout, void ()* nonnull @__llvm_gcov_reset) #13
  ret void
}

declare void @llvm_gcov_init(void ()*, void ()*) local_unnamed_addr

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #11

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #3 = { nounwind "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noinline noreturn nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { noreturn nounwind "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { noinline nounwind uwtable }
attributes #9 = { mustprogress nofree noinline nosync nounwind uwtable willreturn writeonly }
attributes #10 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #11 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #12 = { nobuiltin nounwind "no-builtins" }
attributes #13 = { nounwind }
attributes #14 = { nobuiltin "no-builtins" }
attributes #15 = { nobuiltin noreturn nounwind "no-builtins" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!232, !233, !234, !235}
!llvm.gcov = !{!236}
!llvm.ident = !{!237}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 14.0.0", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !19, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "extstore.c", directory: "/home/xuheng/blackbox/llvm-test/memcached", checksumkind: CSK_MD5, checksum: "e0a2fa7a9c9fbf71c06b5dc3bd4287f8")
!2 = !{!3, !9}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "obj_io_mode", file: !4, line: 65, baseType: !5, size: 32, elements: !6)
!4 = !DIFile(filename: "./extstore.h", directory: "/home/xuheng/blackbox/llvm-test/memcached", checksumkind: CSK_MD5, checksum: "89218fefe8c4dc299a86fedbd8729747")
!5 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!6 = !{!7, !8}
!7 = !DIEnumerator(name: "OBJ_IO_READ", value: 0)
!8 = !DIEnumerator(name: "OBJ_IO_WRITE", value: 1)
!9 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "extstore_res", file: !4, line: 92, baseType: !5, size: 32, elements: !10)
!10 = !{!11, !12, !13, !14, !15, !16, !17, !18}
!11 = !DIEnumerator(name: "EXTSTORE_INIT_BAD_WBUF_SIZE", value: 1)
!12 = !DIEnumerator(name: "EXTSTORE_INIT_NEED_MORE_WBUF", value: 2)
!13 = !DIEnumerator(name: "EXTSTORE_INIT_NEED_MORE_BUCKETS", value: 3)
!14 = !DIEnumerator(name: "EXTSTORE_INIT_PAGE_WBUF_ALIGNMENT", value: 4)
!15 = !DIEnumerator(name: "EXTSTORE_INIT_TOO_MANY_PAGES", value: 5)
!16 = !DIEnumerator(name: "EXTSTORE_INIT_OOM", value: 6)
!17 = !DIEnumerator(name: "EXTSTORE_INIT_OPEN_FAIL", value: 7)
!18 = !DIEnumerator(name: "EXTSTORE_INIT_THREAD_FAIL", value: 8)
!19 = !{!20, !108, !85, !133, !183}
!20 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !21, size: 64)
!21 = !DIDerivedType(tag: DW_TAG_typedef, name: "store_engine", file: !1, line: 76, baseType: !22)
!22 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "store_engine", file: !1, line: 92, size: 2624, elements: !23)
!23 = !{!24, !57, !101, !102, !132, !182, !190, !191, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204}
!24 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !22, file: !1, line: 93, baseType: !25, size: 320)
!25 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_mutex_t", file: !26, line: 72, baseType: !27)
!26 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/pthreadtypes.h", directory: "", checksumkind: CSK_MD5, checksum: "2d764266ce95ab26d4a4767c2ec78176")
!27 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !26, line: 67, size: 320, elements: !28)
!28 = !{!29, !50, !55}
!29 = !DIDerivedType(tag: DW_TAG_member, name: "__data", scope: !27, file: !26, line: 69, baseType: !30, size: 320)
!30 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__pthread_mutex_s", file: !31, line: 22, size: 320, elements: !32)
!31 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/struct_mutex.h", directory: "", checksumkind: CSK_MD5, checksum: "3a896f588055d599ccb9e3fe6eaee3e3")
!32 = !{!33, !35, !36, !37, !38, !39, !41, !42}
!33 = !DIDerivedType(tag: DW_TAG_member, name: "__lock", scope: !30, file: !31, line: 24, baseType: !34, size: 32)
!34 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !30, file: !31, line: 25, baseType: !5, size: 32, offset: 32)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "__owner", scope: !30, file: !31, line: 26, baseType: !34, size: 32, offset: 64)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "__nusers", scope: !30, file: !31, line: 28, baseType: !5, size: 32, offset: 96)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "__kind", scope: !30, file: !31, line: 32, baseType: !34, size: 32, offset: 128)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "__spins", scope: !30, file: !31, line: 34, baseType: !40, size: 16, offset: 160)
!40 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "__elision", scope: !30, file: !31, line: 35, baseType: !40, size: 16, offset: 176)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "__list", scope: !30, file: !31, line: 36, baseType: !43, size: 128, offset: 192)
!43 = !DIDerivedType(tag: DW_TAG_typedef, name: "__pthread_list_t", file: !44, line: 53, baseType: !45)
!44 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/thread-shared-types.h", directory: "", checksumkind: CSK_MD5, checksum: "4b8899127613e00869e96fcefd314d61")
!45 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__pthread_internal_list", file: !44, line: 49, size: 128, elements: !46)
!46 = !{!47, !49}
!47 = !DIDerivedType(tag: DW_TAG_member, name: "__prev", scope: !45, file: !44, line: 51, baseType: !48, size: 64)
!48 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !45, size: 64)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "__next", scope: !45, file: !44, line: 52, baseType: !48, size: 64, offset: 64)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "__size", scope: !27, file: !26, line: 70, baseType: !51, size: 320)
!51 = !DICompositeType(tag: DW_TAG_array_type, baseType: !52, size: 320, elements: !53)
!52 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!53 = !{!54}
!54 = !DISubrange(count: 40)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "__align", scope: !27, file: !26, line: 71, baseType: !56, size: 64)
!56 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !22, file: !1, line: 94, baseType: !58, size: 64, offset: 320)
!58 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !59, size: 64)
!59 = !DIDerivedType(tag: DW_TAG_typedef, name: "store_page", file: !1, line: 74, baseType: !60)
!60 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_store_page", file: !1, line: 56, size: 960, elements: !61)
!61 = !{!62, !63, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !80, !82, !83, !84, !99}
!62 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !60, file: !1, line: 57, baseType: !25, size: 320)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "obj_count", scope: !60, file: !1, line: 58, baseType: !64, size: 64, offset: 320)
!64 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !65, line: 27, baseType: !66)
!65 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "d3ea318a915682aaf6645ec16ac9f991")
!66 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !67, line: 45, baseType: !68)
!67 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "f6304b1a6dcfc6bee76e9a51043b5090")
!68 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "bytes_used", scope: !60, file: !1, line: 59, baseType: !64, size: 64, offset: 384)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !60, file: !1, line: 60, baseType: !64, size: 64, offset: 448)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !60, file: !1, line: 61, baseType: !5, size: 32, offset: 512)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !60, file: !1, line: 62, baseType: !5, size: 32, offset: 544)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "allocated", scope: !60, file: !1, line: 63, baseType: !5, size: 32, offset: 576)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "written", scope: !60, file: !1, line: 64, baseType: !5, size: 32, offset: 608)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "bucket", scope: !60, file: !1, line: 65, baseType: !5, size: 32, offset: 640)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "free_bucket", scope: !60, file: !1, line: 66, baseType: !5, size: 32, offset: 672)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !60, file: !1, line: 67, baseType: !34, size: 32, offset: 704)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !60, file: !1, line: 68, baseType: !79, size: 16, offset: 736)
!79 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !60, file: !1, line: 69, baseType: !81, size: 8, offset: 752)
!81 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "closed", scope: !60, file: !1, line: 70, baseType: !81, size: 8, offset: 760)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !60, file: !1, line: 71, baseType: !81, size: 8, offset: 768)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "wbuf", scope: !60, file: !1, line: 72, baseType: !85, size: 64, offset: 832)
!85 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !86, size: 64)
!86 = !DIDerivedType(tag: DW_TAG_typedef, name: "_store_wbuf", file: !1, line: 54, baseType: !87)
!87 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__store_wbuf", file: !1, line: 45, size: 320, elements: !88)
!88 = !{!89, !91, !93, !94, !95, !96, !97, !98}
!89 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !87, file: !1, line: 46, baseType: !90, size: 64)
!90 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !87, size: 64)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !87, file: !1, line: 47, baseType: !92, size: 64, offset: 64)
!92 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !52, size: 64)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "buf_pos", scope: !87, file: !1, line: 48, baseType: !92, size: 64, offset: 128)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !87, file: !1, line: 49, baseType: !5, size: 32, offset: 192)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !87, file: !1, line: 50, baseType: !5, size: 32, offset: 224)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !87, file: !1, line: 51, baseType: !5, size: 32, offset: 256)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "full", scope: !87, file: !1, line: 52, baseType: !81, size: 8, offset: 288)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "flushed", scope: !87, file: !1, line: 53, baseType: !81, size: 8, offset: 296)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !60, file: !1, line: 73, baseType: !100, size: 64, offset: 896)
!100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !60, size: 64)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "wbuf_stack", scope: !22, file: !1, line: 95, baseType: !85, size: 64, offset: 384)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "io_stack", scope: !22, file: !1, line: 96, baseType: !103, size: 64, offset: 448)
!103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !104, size: 64)
!104 = !DIDerivedType(tag: DW_TAG_typedef, name: "obj_io", file: !4, line: 70, baseType: !105)
!105 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_obj_io", file: !4, line: 77, size: 512, elements: !106)
!106 = !{!107, !109, !111, !112, !121, !122, !123, !124, !125, !126, !127}
!107 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !105, file: !4, line: 78, baseType: !108, size: 64)
!108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !105, file: !4, line: 79, baseType: !110, size: 64, offset: 64)
!110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !105, size: 64)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !105, file: !4, line: 80, baseType: !92, size: 64, offset: 128)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "iov", scope: !105, file: !4, line: 81, baseType: !113, size: 64, offset: 192)
!113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !114, size: 64)
!114 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iovec", file: !115, line: 26, size: 128, elements: !116)
!115 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_iovec.h", directory: "", checksumkind: CSK_MD5, checksum: "6a734cae8feaa37c12e11190a6573675")
!116 = !{!117, !118}
!117 = !DIDerivedType(tag: DW_TAG_member, name: "iov_base", scope: !114, file: !115, line: 28, baseType: !108, size: 64)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "iov_len", scope: !114, file: !115, line: 29, baseType: !119, size: 64, offset: 64)
!119 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !120, line: 46, baseType: !68)
!120 = !DIFile(filename: "VeriFrame/LLVMUtils/llvm/lib/clang/14.0.0/include/stddef.h", directory: "/home/xuheng", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!121 = !DIDerivedType(tag: DW_TAG_member, name: "iovcnt", scope: !105, file: !4, line: 82, baseType: !5, size: 32, offset: 256)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "page_version", scope: !105, file: !4, line: 83, baseType: !5, size: 32, offset: 288)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !105, file: !4, line: 84, baseType: !5, size: 32, offset: 320)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !105, file: !4, line: 85, baseType: !5, size: 32, offset: 352)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "page_id", scope: !105, file: !4, line: 86, baseType: !79, size: 16, offset: 384)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !105, file: !4, line: 87, baseType: !3, size: 32, offset: 416)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "cb", scope: !105, file: !4, line: 89, baseType: !128, size: 64, offset: 448)
!128 = !DIDerivedType(tag: DW_TAG_typedef, name: "obj_io_cb", file: !4, line: 71, baseType: !129)
!129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !130, size: 64)
!130 = !DISubroutineType(types: !131)
!131 = !{null, !108, !103, !34}
!132 = !DIDerivedType(tag: DW_TAG_member, name: "io_threads", scope: !22, file: !1, line: 97, baseType: !133, size: 64, offset: 512)
!133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !134, size: 64)
!134 = !DIDerivedType(tag: DW_TAG_typedef, name: "store_io_thread", file: !1, line: 84, baseType: !135)
!135 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1, line: 77, size: 960, elements: !136)
!136 = !{!137, !138, !178, !179, !180, !181}
!137 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !135, file: !1, line: 78, baseType: !25, size: 320)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "cond", scope: !135, file: !1, line: 79, baseType: !139, size: 384, offset: 320)
!139 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_cond_t", file: !26, line: 80, baseType: !140)
!140 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !26, line: 75, size: 384, elements: !141)
!141 = !{!142, !172, !176}
!142 = !DIDerivedType(tag: DW_TAG_member, name: "__data", scope: !140, file: !26, line: 77, baseType: !143, size: 384)
!143 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__pthread_cond_s", file: !44, line: 92, size: 384, elements: !144)
!144 = !{!145, !155, !164, !168, !169, !170, !171}
!145 = !DIDerivedType(tag: DW_TAG_member, scope: !143, file: !44, line: 94, baseType: !146, size: 64)
!146 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !143, file: !44, line: 94, size: 64, elements: !147)
!147 = !{!148, !150}
!148 = !DIDerivedType(tag: DW_TAG_member, name: "__wseq", scope: !146, file: !44, line: 96, baseType: !149, size: 64)
!149 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "__wseq32", scope: !146, file: !44, line: 101, baseType: !151, size: 64)
!151 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !146, file: !44, line: 97, size: 64, elements: !152)
!152 = !{!153, !154}
!153 = !DIDerivedType(tag: DW_TAG_member, name: "__low", scope: !151, file: !44, line: 99, baseType: !5, size: 32)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "__high", scope: !151, file: !44, line: 100, baseType: !5, size: 32, offset: 32)
!155 = !DIDerivedType(tag: DW_TAG_member, scope: !143, file: !44, line: 103, baseType: !156, size: 64, offset: 64)
!156 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !143, file: !44, line: 103, size: 64, elements: !157)
!157 = !{!158, !159}
!158 = !DIDerivedType(tag: DW_TAG_member, name: "__g1_start", scope: !156, file: !44, line: 105, baseType: !149, size: 64)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "__g1_start32", scope: !156, file: !44, line: 110, baseType: !160, size: 64)
!160 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !156, file: !44, line: 106, size: 64, elements: !161)
!161 = !{!162, !163}
!162 = !DIDerivedType(tag: DW_TAG_member, name: "__low", scope: !160, file: !44, line: 108, baseType: !5, size: 32)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "__high", scope: !160, file: !44, line: 109, baseType: !5, size: 32, offset: 32)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "__g_refs", scope: !143, file: !44, line: 112, baseType: !165, size: 64, offset: 128)
!165 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 64, elements: !166)
!166 = !{!167}
!167 = !DISubrange(count: 2)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "__g_size", scope: !143, file: !44, line: 113, baseType: !165, size: 64, offset: 192)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "__g1_orig_size", scope: !143, file: !44, line: 114, baseType: !5, size: 32, offset: 256)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "__wrefs", scope: !143, file: !44, line: 115, baseType: !5, size: 32, offset: 288)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "__g_signals", scope: !143, file: !44, line: 116, baseType: !165, size: 64, offset: 320)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "__size", scope: !140, file: !26, line: 78, baseType: !173, size: 384)
!173 = !DICompositeType(tag: DW_TAG_array_type, baseType: !52, size: 384, elements: !174)
!174 = !{!175}
!175 = !DISubrange(count: 48)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "__align", scope: !140, file: !26, line: 79, baseType: !177, size: 64)
!177 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "queue", scope: !135, file: !1, line: 80, baseType: !103, size: 64, offset: 704)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "queue_tail", scope: !135, file: !1, line: 81, baseType: !103, size: 64, offset: 768)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "e", scope: !135, file: !1, line: 82, baseType: !20, size: 64, offset: 832)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !135, file: !1, line: 83, baseType: !5, size: 32, offset: 896)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "maint_thread", scope: !22, file: !1, line: 98, baseType: !183, size: 64, offset: 576)
!183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !184, size: 64)
!184 = !DIDerivedType(tag: DW_TAG_typedef, name: "store_maint_thread", file: !1, line: 90, baseType: !185)
!185 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1, line: 86, size: 768, elements: !186)
!186 = !{!187, !188, !189}
!187 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !185, file: !1, line: 87, baseType: !25, size: 320)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "cond", scope: !185, file: !1, line: 88, baseType: !139, size: 384, offset: 320)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "e", scope: !185, file: !1, line: 89, baseType: !20, size: 64, offset: 704)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "page_freelist", scope: !22, file: !1, line: 99, baseType: !58, size: 64, offset: 640)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "page_buckets", scope: !22, file: !1, line: 100, baseType: !192, size: 64, offset: 704)
!192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !58, size: 64)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "free_page_buckets", scope: !22, file: !1, line: 101, baseType: !192, size: 64, offset: 768)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "page_size", scope: !22, file: !1, line: 102, baseType: !119, size: 64, offset: 832)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !22, file: !1, line: 103, baseType: !5, size: 32, offset: 896)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "last_io_thread", scope: !22, file: !1, line: 104, baseType: !5, size: 32, offset: 928)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "io_threadcount", scope: !22, file: !1, line: 105, baseType: !5, size: 32, offset: 960)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "page_count", scope: !22, file: !1, line: 106, baseType: !5, size: 32, offset: 992)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !22, file: !1, line: 107, baseType: !5, size: 32, offset: 1024)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "page_bucketcount", scope: !22, file: !1, line: 108, baseType: !5, size: 32, offset: 1056)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "free_page_bucketcount", scope: !22, file: !1, line: 109, baseType: !5, size: 32, offset: 1088)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "io_depth", scope: !22, file: !1, line: 110, baseType: !5, size: 32, offset: 1120)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "stats_mutex", scope: !22, file: !1, line: 111, baseType: !25, size: 320, offset: 1152)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !22, file: !1, line: 112, baseType: !205, size: 1152, offset: 1472)
!205 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "extstore_stats", file: !4, line: 20, size: 1152, elements: !206)
!206 = !{!207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224}
!207 = !DIDerivedType(tag: DW_TAG_member, name: "page_allocs", scope: !205, file: !4, line: 21, baseType: !64, size: 64)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "page_count", scope: !205, file: !4, line: 22, baseType: !64, size: 64, offset: 64)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "page_evictions", scope: !205, file: !4, line: 23, baseType: !64, size: 64, offset: 128)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "page_reclaims", scope: !205, file: !4, line: 24, baseType: !64, size: 64, offset: 192)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "page_size", scope: !205, file: !4, line: 25, baseType: !64, size: 64, offset: 256)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "pages_free", scope: !205, file: !4, line: 26, baseType: !64, size: 64, offset: 320)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "pages_used", scope: !205, file: !4, line: 27, baseType: !64, size: 64, offset: 384)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "objects_evicted", scope: !205, file: !4, line: 28, baseType: !64, size: 64, offset: 448)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "objects_read", scope: !205, file: !4, line: 29, baseType: !64, size: 64, offset: 512)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "objects_written", scope: !205, file: !4, line: 30, baseType: !64, size: 64, offset: 576)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "objects_used", scope: !205, file: !4, line: 31, baseType: !64, size: 64, offset: 640)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "bytes_evicted", scope: !205, file: !4, line: 32, baseType: !64, size: 64, offset: 704)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "bytes_written", scope: !205, file: !4, line: 33, baseType: !64, size: 64, offset: 768)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "bytes_read", scope: !205, file: !4, line: 34, baseType: !64, size: 64, offset: 832)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "bytes_used", scope: !205, file: !4, line: 35, baseType: !64, size: 64, offset: 896)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "bytes_fragmented", scope: !205, file: !4, line: 36, baseType: !64, size: 64, offset: 960)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "io_queue", scope: !205, file: !4, line: 37, baseType: !64, size: 64, offset: 1024)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "page_data", scope: !205, file: !4, line: 38, baseType: !225, size: 64, offset: 1088)
!225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !226, size: 64)
!226 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "extstore_page_data", file: !4, line: 7, size: 192, elements: !227)
!227 = !{!228, !229, !230, !231}
!228 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !226, file: !4, line: 8, baseType: !64, size: 64)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "bytes_used", scope: !226, file: !4, line: 9, baseType: !64, size: 64, offset: 64)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "bucket", scope: !226, file: !4, line: 10, baseType: !5, size: 32, offset: 128)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "free_bucket", scope: !226, file: !4, line: 11, baseType: !5, size: 32, offset: 160)
!232 = !{i32 7, !"Dwarf Version", i32 5}
!233 = !{i32 2, !"Debug Info Version", i32 3}
!234 = !{i32 1, !"wchar_size", i32 4}
!235 = !{i32 7, !"uwtable", i32 1}
!236 = !{!"/home/xuheng/blackbox/llvm-test/memcached/extstore.gcno", !"/home/xuheng/blackbox/llvm-test/memcached/extstore.gcda", !0}
!237 = !{!"clang version 14.0.0"}
!238 = distinct !DISubprogram(name: "extstore_get_stats", scope: !1, file: !1, line: 159, type: !239, scopeLine: 159, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !242)
!239 = !DISubroutineType(types: !240)
!240 = !{null, !108, !241}
!241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !205, size: 64)
!242 = !{!243, !244, !245, !246}
!243 = !DILocalVariable(name: "ptr", arg: 1, scope: !238, file: !1, line: 159, type: !108)
!244 = !DILocalVariable(name: "st", arg: 2, scope: !238, file: !1, line: 159, type: !241)
!245 = !DILocalVariable(name: "e", scope: !238, file: !1, line: 160, type: !20)
!246 = !DILocalVariable(name: "x", scope: !247, file: !1, line: 171, type: !34)
!247 = distinct !DILexicalBlock(scope: !238, file: !1, line: 171, column: 5)
!248 = !DILocation(line: 0, scope: !238)
!249 = !DILocation(line: 161, column: 5, scope: !238)
!250 = !DILocation(line: 162, column: 12, scope: !238)
!251 = !DILocation(line: 162, column: 20, scope: !238)
!252 = !DILocation(line: 162, column: 5, scope: !238)
!253 = !DILocation(line: 163, column: 5, scope: !238)
!254 = !DILocation(line: 166, column: 28, scope: !238)
!255 = !DILocation(line: 166, column: 5, scope: !238)
!256 = !DILocation(line: 167, column: 25, scope: !238)
!257 = !{!258, !263, i64 128}
!258 = !{!"store_engine", !259, i64 0, !261, i64 40, !261, i64 48, !261, i64 56, !261, i64 64, !261, i64 72, !261, i64 80, !261, i64 88, !261, i64 96, !262, i64 104, !263, i64 112, !263, i64 116, !263, i64 120, !263, i64 124, !263, i64 128, !263, i64 132, !263, i64 136, !263, i64 140, !259, i64 144, !264, i64 184}
!259 = !{!"omnipotent char", !260, i64 0}
!260 = !{!"Simple C/C++ TBAA"}
!261 = !{!"any pointer", !259, i64 0}
!262 = !{!"long", !259, i64 0}
!263 = !{!"int", !259, i64 0}
!264 = !{!"extstore_stats", !262, i64 0, !262, i64 8, !262, i64 16, !262, i64 24, !262, i64 32, !262, i64 40, !262, i64 48, !262, i64 56, !262, i64 64, !262, i64 72, !262, i64 80, !262, i64 88, !262, i64 96, !262, i64 104, !262, i64 112, !262, i64 120, !262, i64 128, !261, i64 136}
!265 = !DILocation(line: 167, column: 22, scope: !238)
!266 = !DILocation(line: 167, column: 9, scope: !238)
!267 = !DILocation(line: 167, column: 20, scope: !238)
!268 = !{!264, !262, i64 40}
!269 = !DILocation(line: 168, column: 25, scope: !238)
!270 = !{!258, !263, i64 124}
!271 = !DILocation(line: 168, column: 36, scope: !238)
!272 = !DILocation(line: 168, column: 22, scope: !238)
!273 = !DILocation(line: 168, column: 9, scope: !238)
!274 = !DILocation(line: 168, column: 20, scope: !238)
!275 = !{!264, !262, i64 48}
!276 = !DILocation(line: 169, column: 5, scope: !238)
!277 = !DILocation(line: 170, column: 9, scope: !238)
!278 = !DILocation(line: 170, column: 18, scope: !238)
!279 = !{!264, !262, i64 128}
!280 = !DILocation(line: 0, scope: !247)
!281 = !DILocation(line: 171, column: 28, scope: !282)
!282 = distinct !DILexicalBlock(scope: !247, file: !1, line: 171, column: 5)
!283 = !{!258, !263, i64 120}
!284 = !DILocation(line: 171, column: 23, scope: !282)
!285 = !DILocation(line: 171, column: 5, scope: !247)
!286 = !DILocation(line: 171, column: 5, scope: !282)
!287 = !DILocation(line: 178, column: 32, scope: !238)
!288 = !DILocation(line: 178, column: 48, scope: !238)
!289 = !{!258, !262, i64 104}
!290 = !DILocation(line: 178, column: 43, scope: !238)
!291 = !DILocation(line: 179, column: 13, scope: !238)
!292 = !{!264, !262, i64 112}
!293 = !DILocation(line: 178, column: 58, scope: !238)
!294 = !DILocation(line: 178, column: 9, scope: !238)
!295 = !DILocation(line: 178, column: 26, scope: !238)
!296 = !{!264, !262, i64 120}
!297 = !DILocation(line: 180, column: 1, scope: !238)
!298 = !DILocation(line: 172, column: 32, scope: !299)
!299 = distinct !DILexicalBlock(scope: !282, file: !1, line: 171, column: 49)
!300 = !{!258, !261, i64 64}
!301 = !DILocation(line: 172, column: 46, scope: !299)
!302 = !DILocation(line: 172, column: 9, scope: !299)
!303 = !DILocation(line: 173, column: 28, scope: !299)
!304 = !DILocation(line: 173, column: 42, scope: !299)
!305 = !{!306, !263, i64 112}
!306 = !{!"", !259, i64 0, !259, i64 40, !261, i64 88, !261, i64 96, !261, i64 104, !263, i64 112}
!307 = !DILocation(line: 173, column: 25, scope: !299)
!308 = !DILocation(line: 173, column: 22, scope: !299)
!309 = !DILocation(line: 174, column: 48, scope: !299)
!310 = !DILocation(line: 174, column: 9, scope: !299)
!311 = !DILocation(line: 171, column: 45, scope: !282)
!312 = distinct !{!312, !285, !313, !314}
!313 = !DILocation(line: 175, column: 5, scope: !247)
!314 = !{!"llvm.loop.mustprogress"}
!315 = !DISubprogram(name: "pthread_mutex_lock", scope: !316, file: !316, line: 738, type: !317, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !320)
!316 = !DIFile(filename: "/usr/include/pthread.h", directory: "", checksumkind: CSK_MD5, checksum: "0e55f33d4e6889d38be50c852b7d6130")
!317 = !DISubroutineType(types: !318)
!318 = !{!34, !319}
!319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!320 = !{}
!321 = !DISubprogram(name: "memcpy", scope: !322, file: !322, line: 43, type: !323, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !320)
!322 = !DIFile(filename: "/usr/include/string.h", directory: "", checksumkind: CSK_MD5, checksum: "61f60112cf5c0a45c54ea1f595add24c")
!323 = !DISubroutineType(types: !324)
!324 = !{!108, !325, !326, !119}
!325 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !108)
!326 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !327)
!327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !328, size: 64)
!328 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!329 = !DISubprogram(name: "pthread_mutex_unlock", scope: !316, file: !316, line: 756, type: !317, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !320)
!330 = distinct !DISubprogram(name: "extstore_get_page_data", scope: !1, file: !1, line: 182, type: !239, scopeLine: 182, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !331)
!331 = !{!332, !333, !334}
!332 = !DILocalVariable(name: "ptr", arg: 1, scope: !330, file: !1, line: 182, type: !108)
!333 = !DILocalVariable(name: "st", arg: 2, scope: !330, file: !1, line: 182, type: !241)
!334 = !DILocalVariable(name: "e", scope: !330, file: !1, line: 183, type: !20)
!335 = !DILocation(line: 0, scope: !330)
!336 = !DILocation(line: 184, column: 5, scope: !330)
!337 = !DILocation(line: 185, column: 16, scope: !330)
!338 = !{!264, !261, i64 136}
!339 = !DILocation(line: 185, column: 36, scope: !330)
!340 = !{!258, !261, i64 320}
!341 = !DILocation(line: 186, column: 52, scope: !330)
!342 = !DILocation(line: 186, column: 49, scope: !330)
!343 = !DILocation(line: 186, column: 47, scope: !330)
!344 = !DILocation(line: 185, column: 5, scope: !330)
!345 = !DILocation(line: 187, column: 5, scope: !330)
!346 = !DILocation(line: 188, column: 1, scope: !330)
!347 = distinct !DISubprogram(name: "extstore_err", scope: !1, file: !1, line: 190, type: !348, scopeLine: 190, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !352)
!348 = !DISubroutineType(types: !349)
!349 = !{!350, !9}
!350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !351, size: 64)
!351 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !52)
!352 = !{!353, !354}
!353 = !DILocalVariable(name: "res", arg: 1, scope: !347, file: !1, line: 190, type: !9)
!354 = !DILocalVariable(name: "rv", scope: !347, file: !1, line: 191, type: !350)
!355 = !DILocation(line: 0, scope: !347)
!356 = !DILocation(line: 192, column: 5, scope: !347)
!357 = !DILocation(line: 194, column: 16, scope: !358)
!358 = distinct !DILexicalBlock(scope: !347, file: !1, line: 192, column: 18)
!359 = !DILocation(line: 195, column: 13, scope: !358)
!360 = !DILocation(line: 197, column: 16, scope: !358)
!361 = !DILocation(line: 198, column: 13, scope: !358)
!362 = !DILocation(line: 200, column: 16, scope: !358)
!363 = !DILocation(line: 201, column: 13, scope: !358)
!364 = !DILocation(line: 203, column: 16, scope: !358)
!365 = !DILocation(line: 204, column: 13, scope: !358)
!366 = !DILocation(line: 206, column: 16, scope: !358)
!367 = !DILocation(line: 207, column: 13, scope: !358)
!368 = !DILocation(line: 209, column: 16, scope: !358)
!369 = !DILocation(line: 210, column: 13, scope: !358)
!370 = !DILocation(line: 212, column: 16, scope: !358)
!371 = !DILocation(line: 213, column: 13, scope: !358)
!372 = !DILocation(line: 217, column: 5, scope: !347)
!373 = distinct !DISubprogram(name: "extstore_init", scope: !1, file: !1, line: 221, type: !374, scopeLine: 222, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !398)
!374 = !DISubroutineType(types: !375)
!375 = !{!108, !376, !386, !397}
!376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !377, size: 64)
!377 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "extstore_conf_file", file: !4, line: 55, size: 384, elements: !378)
!378 = !{!379, !380, !381, !382, !383, !384, !385}
!379 = !DIDerivedType(tag: DW_TAG_member, name: "page_count", scope: !377, file: !4, line: 56, baseType: !5, size: 32)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !377, file: !4, line: 57, baseType: !92, size: 64, offset: 64)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !377, file: !4, line: 58, baseType: !34, size: 32, offset: 128)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !377, file: !4, line: 59, baseType: !64, size: 64, offset: 192)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "bucket", scope: !377, file: !4, line: 60, baseType: !5, size: 32, offset: 256)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "free_bucket", scope: !377, file: !4, line: 61, baseType: !5, size: 32, offset: 288)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !377, file: !4, line: 62, baseType: !376, size: 64, offset: 320)
!386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !387, size: 64)
!387 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "extstore_conf", file: !4, line: 44, size: 256, elements: !388)
!388 = !{!389, !390, !391, !392, !393, !394, !395, !396}
!389 = !DIDerivedType(tag: DW_TAG_member, name: "page_size", scope: !387, file: !4, line: 45, baseType: !5, size: 32)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "page_count", scope: !387, file: !4, line: 46, baseType: !5, size: 32, offset: 32)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "page_buckets", scope: !387, file: !4, line: 47, baseType: !5, size: 32, offset: 64)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "free_page_buckets", scope: !387, file: !4, line: 48, baseType: !5, size: 32, offset: 96)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "wbuf_size", scope: !387, file: !4, line: 49, baseType: !5, size: 32, offset: 128)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "wbuf_count", scope: !387, file: !4, line: 50, baseType: !5, size: 32, offset: 160)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "io_threadcount", scope: !387, file: !4, line: 51, baseType: !5, size: 32, offset: 192)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "io_depth", scope: !387, file: !4, line: 52, baseType: !5, size: 32, offset: 224)
!397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 64)
!398 = !{!399, !400, !401, !402, !403, !404, !406, !407, !408, !422, !428, !432}
!399 = !DILocalVariable(name: "fh", arg: 1, scope: !373, file: !1, line: 221, type: !376)
!400 = !DILocalVariable(name: "cf", arg: 2, scope: !373, file: !1, line: 221, type: !386)
!401 = !DILocalVariable(name: "res", arg: 3, scope: !373, file: !1, line: 222, type: !397)
!402 = !DILocalVariable(name: "i", scope: !373, file: !1, line: 223, type: !34)
!403 = !DILocalVariable(name: "f", scope: !373, file: !1, line: 224, type: !376)
!404 = !DILocalVariable(name: "thread", scope: !373, file: !1, line: 225, type: !405)
!405 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_t", file: !26, line: 27, baseType: !68)
!406 = !DILocalVariable(name: "e", scope: !373, file: !1, line: 248, type: !20)
!407 = !DILocalVariable(name: "temp_page_count", scope: !373, file: !1, line: 255, type: !64)
!408 = !DILocalVariable(name: "lock", scope: !409, file: !1, line: 267, type: !412)
!409 = distinct !DILexicalBlock(scope: !410, file: !1, line: 256, column: 42)
!410 = distinct !DILexicalBlock(scope: !411, file: !1, line: 256, column: 5)
!411 = distinct !DILexicalBlock(scope: !373, file: !1, line: 256, column: 5)
!412 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "flock", file: !413, line: 35, size: 256, elements: !414)
!413 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/fcntl.h", directory: "", checksumkind: CSK_MD5, checksum: "de7230bc4c2eecad91b473306f6d8225")
!414 = !{!415, !416, !417, !419, !420}
!415 = !DIDerivedType(tag: DW_TAG_member, name: "l_type", scope: !412, file: !413, line: 37, baseType: !40, size: 16)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "l_whence", scope: !412, file: !413, line: 38, baseType: !40, size: 16, offset: 16)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "l_start", scope: !412, file: !413, line: 40, baseType: !418, size: 64, offset: 64)
!418 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !67, line: 152, baseType: !56)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "l_len", scope: !412, file: !413, line: 41, baseType: !418, size: 64, offset: 128)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "l_pid", scope: !412, file: !413, line: 46, baseType: !421, size: 32, offset: 192)
!421 = !DIDerivedType(tag: DW_TAG_typedef, name: "__pid_t", file: !67, line: 154, baseType: !34)
!422 = !DILocalVariable(name: "fb", scope: !423, file: !1, line: 337, type: !34)
!423 = distinct !DILexicalBlock(scope: !424, file: !1, line: 336, column: 16)
!424 = distinct !DILexicalBlock(scope: !425, file: !1, line: 333, column: 13)
!425 = distinct !DILexicalBlock(scope: !426, file: !1, line: 331, column: 43)
!426 = distinct !DILexicalBlock(scope: !427, file: !1, line: 331, column: 5)
!427 = distinct !DILexicalBlock(scope: !373, file: !1, line: 331, column: 5)
!428 = !DILocalVariable(name: "w", scope: !429, file: !1, line: 359, type: !85)
!429 = distinct !DILexicalBlock(scope: !430, file: !1, line: 358, column: 42)
!430 = distinct !DILexicalBlock(scope: !431, file: !1, line: 358, column: 5)
!431 = distinct !DILexicalBlock(scope: !373, file: !1, line: 358, column: 5)
!432 = !DILocalVariable(name: "io", scope: !429, file: !1, line: 360, type: !103)
!433 = !DILocation(line: 0, scope: !373)
!434 = !DILocation(line: 225, column: 5, scope: !373)
!435 = !DILocation(line: 227, column: 13, scope: !436)
!436 = distinct !DILexicalBlock(scope: !373, file: !1, line: 227, column: 9)
!437 = !{!438, !263, i64 0}
!438 = !{!"extstore_conf", !263, i64 0, !263, i64 4, !263, i64 8, !263, i64 12, !263, i64 16, !263, i64 20, !263, i64 24, !263, i64 28}
!439 = !DILocation(line: 227, column: 29, scope: !436)
!440 = !{!438, !263, i64 16}
!441 = !DILocation(line: 227, column: 23, scope: !436)
!442 = !DILocation(line: 227, column: 39, scope: !436)
!443 = !DILocation(line: 227, column: 9, scope: !373)
!444 = !DILocation(line: 228, column: 10, scope: !445)
!445 = distinct !DILexicalBlock(scope: !436, file: !1, line: 227, column: 45)
!446 = !DILocation(line: 228, column: 14, scope: !445)
!447 = !{!259, !259, i64 0}
!448 = !DILocation(line: 229, column: 9, scope: !445)
!449 = !DILocation(line: 232, column: 13, scope: !450)
!450 = distinct !DILexicalBlock(scope: !373, file: !1, line: 232, column: 9)
!451 = !{!438, !263, i64 8}
!452 = !DILocation(line: 232, column: 32, scope: !450)
!453 = !{!438, !263, i64 20}
!454 = !DILocation(line: 232, column: 26, scope: !450)
!455 = !DILocation(line: 232, column: 9, scope: !373)
!456 = !DILocation(line: 233, column: 10, scope: !457)
!457 = distinct !DILexicalBlock(scope: !450, file: !1, line: 232, column: 44)
!458 = !DILocation(line: 233, column: 14, scope: !457)
!459 = !DILocation(line: 234, column: 9, scope: !457)
!460 = !DILocation(line: 236, column: 26, scope: !461)
!461 = distinct !DILexicalBlock(scope: !373, file: !1, line: 236, column: 9)
!462 = !DILocation(line: 236, column: 9, scope: !373)
!463 = !DILocation(line: 237, column: 10, scope: !464)
!464 = distinct !DILexicalBlock(scope: !461, file: !1, line: 236, column: 31)
!465 = !DILocation(line: 237, column: 14, scope: !464)
!466 = !DILocation(line: 238, column: 9, scope: !464)
!467 = !DILocation(line: 242, column: 23, scope: !468)
!468 = distinct !DILexicalBlock(scope: !373, file: !1, line: 242, column: 9)
!469 = !DILocation(line: 242, column: 43, scope: !468)
!470 = !DILocation(line: 242, column: 48, scope: !468)
!471 = !DILocation(line: 243, column: 9, scope: !468)
!472 = !DILocation(line: 243, column: 13, scope: !468)
!473 = !DILocation(line: 243, column: 23, scope: !468)
!474 = !DILocation(line: 243, column: 43, scope: !468)
!475 = !DILocation(line: 242, column: 9, scope: !373)
!476 = !DILocation(line: 244, column: 10, scope: !477)
!477 = distinct !DILexicalBlock(scope: !468, file: !1, line: 243, column: 49)
!478 = !DILocation(line: 244, column: 14, scope: !477)
!479 = !DILocation(line: 245, column: 9, scope: !477)
!480 = !DILocation(line: 248, column: 23, scope: !373)
!481 = !DILocation(line: 249, column: 11, scope: !482)
!482 = distinct !DILexicalBlock(scope: !373, file: !1, line: 249, column: 9)
!483 = !DILocation(line: 249, column: 9, scope: !373)
!484 = !DILocation(line: 250, column: 10, scope: !485)
!485 = distinct !DILexicalBlock(scope: !482, file: !1, line: 249, column: 20)
!486 = !DILocation(line: 250, column: 14, scope: !485)
!487 = !DILocation(line: 251, column: 9, scope: !485)
!488 = !DILocation(line: 254, column: 20, scope: !373)
!489 = !DILocation(line: 254, column: 24, scope: !373)
!490 = !DILocation(line: 254, column: 8, scope: !373)
!491 = !DILocation(line: 254, column: 18, scope: !373)
!492 = !DILocation(line: 256, column: 20, scope: !410)
!493 = !DILocation(line: 256, column: 5, scope: !411)
!494 = !DILocation(line: 257, column: 25, scope: !409)
!495 = !{!496, !261, i64 8}
!496 = !{!"extstore_conf_file", !263, i64 0, !261, i64 8, !263, i64 16, !262, i64 24, !263, i64 32, !263, i64 36, !261, i64 40}
!497 = !DILocation(line: 257, column: 17, scope: !409)
!498 = !DILocation(line: 257, column: 12, scope: !409)
!499 = !DILocation(line: 257, column: 15, scope: !409)
!500 = !{!496, !263, i64 16}
!501 = !DILocation(line: 258, column: 19, scope: !502)
!502 = distinct !DILexicalBlock(scope: !409, file: !1, line: 258, column: 13)
!503 = !DILocation(line: 258, column: 13, scope: !409)
!504 = !DILocation(line: 259, column: 14, scope: !505)
!505 = distinct !DILexicalBlock(scope: !502, file: !1, line: 258, column: 24)
!506 = !DILocation(line: 259, column: 18, scope: !505)
!507 = !DILocation(line: 263, column: 13, scope: !505)
!508 = !DILocation(line: 264, column: 13, scope: !505)
!509 = !DILocation(line: 267, column: 9, scope: !409)
!510 = !DILocation(line: 267, column: 22, scope: !409)
!511 = !DILocation(line: 268, column: 21, scope: !409)
!512 = !{!513, !514, i64 0}
!513 = !{!"flock", !514, i64 0, !514, i64 2, !262, i64 8, !262, i64 16, !263, i64 24}
!514 = !{!"short", !259, i64 0}
!515 = !DILocation(line: 270, column: 23, scope: !409)
!516 = !{!513, !514, i64 2}
!517 = !DILocation(line: 269, column: 22, scope: !409)
!518 = !{!262, !262, i64 0}
!519 = !DILocation(line: 272, column: 13, scope: !520)
!520 = distinct !DILexicalBlock(scope: !409, file: !1, line: 272, column: 13)
!521 = !DILocation(line: 272, column: 42, scope: !520)
!522 = !DILocation(line: 272, column: 13, scope: !409)
!523 = !DILocation(line: 273, column: 14, scope: !524)
!524 = distinct !DILexicalBlock(scope: !520, file: !1, line: 272, column: 47)
!525 = !DILocation(line: 275, column: 13, scope: !524)
!526 = !DILocation(line: 277, column: 26, scope: !527)
!527 = distinct !DILexicalBlock(scope: !409, file: !1, line: 277, column: 13)
!528 = !DILocation(line: 277, column: 13, scope: !527)
!529 = !DILocation(line: 277, column: 33, scope: !527)
!530 = !DILocation(line: 277, column: 13, scope: !409)
!531 = !DILocation(line: 278, column: 14, scope: !532)
!532 = distinct !DILexicalBlock(scope: !527, file: !1, line: 277, column: 38)
!533 = !DILocation(line: 280, column: 13, scope: !532)
!534 = !DILocation(line: 0, scope: !409)
!535 = !DILocation(line: 285, column: 5, scope: !410)
!536 = !DILocation(line: 283, column: 28, scope: !409)
!537 = !DILocation(line: 283, column: 31, scope: !409)
!538 = !{!496, !263, i64 0}
!539 = !DILocation(line: 283, column: 25, scope: !409)
!540 = !DILocation(line: 284, column: 12, scope: !409)
!541 = !DILocation(line: 284, column: 19, scope: !409)
!542 = !{!496, !262, i64 24}
!543 = !DILocation(line: 256, column: 36, scope: !410)
!544 = !{!496, !261, i64 40}
!545 = distinct !{!545, !493, !546, !314}
!546 = !DILocation(line: 285, column: 5, scope: !411)
!547 = !DILocation(line: 287, column: 25, scope: !548)
!548 = distinct !DILexicalBlock(scope: !373, file: !1, line: 287, column: 9)
!549 = !DILocation(line: 287, column: 9, scope: !373)
!550 = !DILocation(line: 288, column: 10, scope: !551)
!551 = distinct !DILexicalBlock(scope: !548, file: !1, line: 287, column: 40)
!552 = !DILocation(line: 288, column: 14, scope: !551)
!553 = !DILocation(line: 289, column: 9, scope: !551)
!554 = !DILocation(line: 290, column: 9, scope: !551)
!555 = !DILocation(line: 292, column: 21, scope: !373)
!556 = !DILocation(line: 292, column: 8, scope: !373)
!557 = !DILocation(line: 292, column: 19, scope: !373)
!558 = !DILocation(line: 294, column: 16, scope: !373)
!559 = !DILocation(line: 294, column: 8, scope: !373)
!560 = !DILocation(line: 294, column: 14, scope: !373)
!561 = !{!258, !261, i64 40}
!562 = !DILocation(line: 295, column: 18, scope: !563)
!563 = distinct !DILexicalBlock(scope: !373, file: !1, line: 295, column: 9)
!564 = !DILocation(line: 295, column: 9, scope: !373)
!565 = !DILocation(line: 304, column: 24, scope: !566)
!566 = distinct !DILexicalBlock(scope: !567, file: !1, line: 304, column: 5)
!567 = distinct !DILexicalBlock(scope: !373, file: !1, line: 304, column: 5)
!568 = !DILocation(line: 304, column: 19, scope: !566)
!569 = !DILocation(line: 304, column: 5, scope: !567)
!570 = !DILocation(line: 296, column: 10, scope: !571)
!571 = distinct !DILexicalBlock(scope: !563, file: !1, line: 295, column: 27)
!572 = !DILocation(line: 296, column: 14, scope: !571)
!573 = !DILocation(line: 298, column: 9, scope: !571)
!574 = !DILocation(line: 299, column: 9, scope: !571)
!575 = !DILocation(line: 306, column: 9, scope: !576)
!576 = distinct !DILexicalBlock(scope: !566, file: !1, line: 304, column: 41)
!577 = !DILocation(line: 308, column: 19, scope: !578)
!578 = distinct !DILexicalBlock(scope: !579, file: !1, line: 308, column: 17)
!579 = distinct !DILexicalBlock(scope: !576, file: !1, line: 306, column: 19)
!580 = !DILocation(line: 308, column: 27, scope: !578)
!581 = !DILocation(line: 308, column: 30, scope: !578)
!582 = !DILocation(line: 308, column: 33, scope: !578)
!583 = !DILocation(line: 308, column: 38, scope: !578)
!584 = !DILocation(line: 308, column: 17, scope: !579)
!585 = !DILocation(line: 309, column: 21, scope: !586)
!586 = distinct !DILexicalBlock(scope: !578, file: !1, line: 308, column: 47)
!587 = !DILocation(line: 310, column: 13, scope: !586)
!588 = !DILocation(line: 311, column: 21, scope: !589)
!589 = distinct !DILexicalBlock(scope: !578, file: !1, line: 310, column: 20)
!590 = !DILocation(line: 311, column: 24, scope: !589)
!591 = !DILocation(line: 0, scope: !578)
!592 = !DILocation(line: 313, column: 20, scope: !593)
!593 = distinct !DILexicalBlock(scope: !579, file: !1, line: 313, column: 17)
!594 = !DILocation(line: 313, column: 17, scope: !593)
!595 = !DILocation(line: 313, column: 17, scope: !579)
!596 = distinct !{!596, !575, !597}
!597 = !DILocation(line: 317, column: 9, scope: !576)
!598 = !DILocation(line: 314, column: 30, scope: !599)
!599 = distinct !DILexicalBlock(scope: !593, file: !1, line: 313, column: 32)
!600 = !DILocation(line: 318, column: 41, scope: !576)
!601 = !DILocation(line: 318, column: 9, scope: !576)
!602 = !DILocation(line: 319, column: 26, scope: !576)
!603 = !DILocation(line: 319, column: 12, scope: !576)
!604 = !DILocation(line: 319, column: 21, scope: !576)
!605 = !DILocation(line: 319, column: 24, scope: !576)
!606 = !{!607, !514, i64 92}
!607 = !{!"_store_page", !259, i64 0, !262, i64 40, !262, i64 48, !262, i64 56, !263, i64 64, !263, i64 68, !263, i64 72, !263, i64 76, !263, i64 80, !263, i64 84, !263, i64 88, !514, i64 92, !608, i64 94, !608, i64 95, !608, i64 96, !261, i64 104, !261, i64 112}
!608 = !{!"_Bool", !259, i64 0}
!609 = !DILocation(line: 320, column: 29, scope: !576)
!610 = !DILocation(line: 320, column: 21, scope: !576)
!611 = !DILocation(line: 320, column: 24, scope: !576)
!612 = !{!607, !263, i64 88}
!613 = !DILocation(line: 321, column: 38, scope: !576)
!614 = !{!496, !263, i64 36}
!615 = !DILocation(line: 321, column: 21, scope: !576)
!616 = !DILocation(line: 321, column: 33, scope: !576)
!617 = !{!607, !263, i64 84}
!618 = !DILocation(line: 322, column: 33, scope: !576)
!619 = !DILocation(line: 322, column: 21, scope: !576)
!620 = !DILocation(line: 322, column: 28, scope: !576)
!621 = !{!607, !262, i64 56}
!622 = !DILocation(line: 323, column: 21, scope: !576)
!623 = !DILocation(line: 323, column: 26, scope: !576)
!624 = !{!607, !608, i64 96}
!625 = !DILocation(line: 324, column: 25, scope: !576)
!626 = !DILocation(line: 324, column: 19, scope: !576)
!627 = !DILocation(line: 304, column: 37, scope: !566)
!628 = distinct !{!628, !569, !629, !314}
!629 = !DILocation(line: 325, column: 5, scope: !567)
!630 = !DILocation(line: 328, column: 39, scope: !373)
!631 = !DILocation(line: 328, column: 35, scope: !373)
!632 = !DILocation(line: 328, column: 28, scope: !373)
!633 = !DILocation(line: 328, column: 8, scope: !373)
!634 = !DILocation(line: 328, column: 26, scope: !373)
!635 = !{!258, !261, i64 96}
!636 = !DILocation(line: 329, column: 31, scope: !373)
!637 = !DILocation(line: 329, column: 8, scope: !373)
!638 = !DILocation(line: 329, column: 25, scope: !373)
!639 = !{!258, !263, i64 132}
!640 = !DILocation(line: 331, column: 17, scope: !427)
!641 = !DILocation(line: 0, scope: !427)
!642 = !DILocation(line: 331, column: 33, scope: !426)
!643 = !DILocation(line: 331, column: 5, scope: !427)
!644 = !DILocation(line: 332, column: 21, scope: !425)
!645 = !DILocation(line: 333, column: 16, scope: !424)
!646 = !DILocation(line: 333, column: 25, scope: !424)
!647 = !DILocation(line: 333, column: 37, scope: !424)
!648 = !DILocation(line: 333, column: 13, scope: !425)
!649 = !DILocation(line: 334, column: 32, scope: !650)
!650 = distinct !DILexicalBlock(scope: !424, file: !1, line: 333, column: 43)
!651 = !DILocation(line: 336, column: 9, scope: !650)
!652 = !DILocation(line: 337, column: 13, scope: !423)
!653 = !DILocation(line: 337, column: 34, scope: !423)
!654 = !DILocation(line: 0, scope: !423)
!655 = !DILocation(line: 338, column: 35, scope: !423)
!656 = !DILocation(line: 338, column: 32, scope: !423)
!657 = !DILocation(line: 0, scope: !424)
!658 = !{!261, !261, i64 0}
!659 = !{!607, !261, i64 112}
!660 = distinct !{!660, !643, !661, !314}
!661 = !DILocation(line: 341, column: 5, scope: !427)
!662 = !DILocation(line: 344, column: 8, scope: !373)
!663 = !DILocation(line: 344, column: 16, scope: !373)
!664 = !{!258, !263, i64 112}
!665 = !DILocation(line: 348, column: 16, scope: !373)
!666 = !DILocation(line: 348, column: 9, scope: !373)
!667 = !DILocation(line: 347, column: 14, scope: !373)
!668 = !DILocation(line: 347, column: 24, scope: !373)
!669 = !DILocation(line: 349, column: 30, scope: !373)
!670 = !DILocation(line: 349, column: 27, scope: !373)
!671 = !DILocation(line: 349, column: 14, scope: !373)
!672 = !DILocation(line: 349, column: 25, scope: !373)
!673 = !{!258, !262, i64 192}
!674 = !DILocation(line: 350, column: 29, scope: !373)
!675 = !DILocation(line: 350, column: 14, scope: !373)
!676 = !DILocation(line: 350, column: 24, scope: !373)
!677 = !{!258, !262, i64 216}
!678 = !DILocation(line: 353, column: 34, scope: !373)
!679 = !DILocation(line: 353, column: 30, scope: !373)
!680 = !DILocation(line: 353, column: 23, scope: !373)
!681 = !DILocation(line: 353, column: 8, scope: !373)
!682 = !DILocation(line: 353, column: 21, scope: !373)
!683 = !{!258, !261, i64 88}
!684 = !DILocation(line: 354, column: 31, scope: !373)
!685 = !DILocation(line: 354, column: 25, scope: !373)
!686 = !DILocation(line: 358, column: 25, scope: !430)
!687 = !DILocation(line: 358, column: 19, scope: !430)
!688 = !DILocation(line: 358, column: 5, scope: !431)
!689 = !DILocation(line: 359, column: 9, scope: !429)
!690 = !DILocation(line: 359, column: 39, scope: !429)
!691 = !DILocation(line: 359, column: 35, scope: !429)
!692 = !DILocation(line: 359, column: 26, scope: !429)
!693 = !DILocation(line: 0, scope: !429)
!694 = !DILocation(line: 360, column: 22, scope: !429)
!695 = !DILocation(line: 362, column: 22, scope: !429)
!696 = !{!258, !261, i64 48}
!697 = !DILocation(line: 362, column: 12, scope: !429)
!698 = !DILocation(line: 362, column: 17, scope: !429)
!699 = !{!700, !261, i64 0}
!700 = !{!"__store_wbuf", !261, i64 0, !261, i64 8, !261, i64 16, !263, i64 24, !263, i64 28, !263, i64 32, !608, i64 36, !608, i64 37}
!701 = !DILocation(line: 363, column: 23, scope: !429)
!702 = !DILocation(line: 364, column: 23, scope: !429)
!703 = !{!258, !261, i64 56}
!704 = !DILocation(line: 364, column: 13, scope: !429)
!705 = !DILocation(line: 364, column: 18, scope: !429)
!706 = !{!707, !261, i64 8}
!707 = !{!"_obj_io", !261, i64 0, !261, i64 8, !261, i64 16, !261, i64 24, !263, i64 32, !263, i64 36, !263, i64 40, !263, i64 44, !514, i64 48, !259, i64 52, !261, i64 56}
!708 = !DILocation(line: 365, column: 21, scope: !429)
!709 = !DILocation(line: 358, column: 38, scope: !430)
!710 = distinct !{!710, !688, !711, !314}
!711 = !DILocation(line: 366, column: 5, scope: !431)
!712 = !DILocation(line: 368, column: 28, scope: !373)
!713 = !DILocation(line: 368, column: 5, scope: !373)
!714 = !DILocation(line: 369, column: 28, scope: !373)
!715 = !DILocation(line: 369, column: 5, scope: !373)
!716 = !DILocation(line: 371, column: 23, scope: !373)
!717 = !{!438, !263, i64 28}
!718 = !DILocation(line: 371, column: 8, scope: !373)
!719 = !DILocation(line: 371, column: 17, scope: !373)
!720 = !{!258, !263, i64 140}
!721 = !DILocation(line: 374, column: 32, scope: !373)
!722 = !{!438, !263, i64 24}
!723 = !DILocation(line: 374, column: 28, scope: !373)
!724 = !DILocation(line: 374, column: 21, scope: !373)
!725 = !DILocation(line: 374, column: 8, scope: !373)
!726 = !DILocation(line: 374, column: 19, scope: !373)
!727 = !DILocation(line: 375, column: 25, scope: !728)
!728 = distinct !DILexicalBlock(scope: !729, file: !1, line: 375, column: 5)
!729 = distinct !DILexicalBlock(scope: !373, file: !1, line: 375, column: 5)
!730 = !DILocation(line: 375, column: 19, scope: !728)
!731 = !DILocation(line: 375, column: 5, scope: !729)
!732 = !DILocation(line: 376, column: 32, scope: !733)
!733 = distinct !DILexicalBlock(scope: !728, file: !1, line: 375, column: 46)
!734 = !DILocation(line: 376, column: 29, scope: !733)
!735 = !DILocation(line: 376, column: 46, scope: !733)
!736 = !DILocation(line: 376, column: 9, scope: !733)
!737 = !DILocation(line: 377, column: 31, scope: !733)
!738 = !DILocation(line: 377, column: 45, scope: !733)
!739 = !DILocation(line: 377, column: 9, scope: !733)
!740 = !DILocation(line: 378, column: 12, scope: !733)
!741 = !DILocation(line: 378, column: 26, scope: !733)
!742 = !DILocation(line: 378, column: 28, scope: !733)
!743 = !{!306, !261, i64 104}
!744 = !DILocation(line: 380, column: 60, scope: !733)
!745 = !DILocation(line: 380, column: 59, scope: !733)
!746 = !DILocation(line: 380, column: 9, scope: !733)
!747 = !DILocation(line: 375, column: 42, scope: !728)
!748 = distinct !{!748, !731, !749, !314}
!749 = !DILocation(line: 381, column: 5, scope: !729)
!750 = !DILocation(line: 382, column: 25, scope: !373)
!751 = !DILocation(line: 382, column: 29, scope: !373)
!752 = !DILocation(line: 382, column: 8, scope: !373)
!753 = !DILocation(line: 382, column: 23, scope: !373)
!754 = !DILocation(line: 384, column: 23, scope: !373)
!755 = !DILocation(line: 384, column: 8, scope: !373)
!756 = !DILocation(line: 384, column: 21, scope: !373)
!757 = !{!258, !261, i64 72}
!758 = !DILocation(line: 385, column: 22, scope: !373)
!759 = !DILocation(line: 385, column: 24, scope: !373)
!760 = !{!761, !261, i64 88}
!761 = !{!"", !259, i64 0, !259, i64 40, !261, i64 88}
!762 = !DILocation(line: 387, column: 42, scope: !373)
!763 = !DILocation(line: 387, column: 5, scope: !373)
!764 = !DILocation(line: 388, column: 27, scope: !373)
!765 = !DILocation(line: 388, column: 41, scope: !373)
!766 = !DILocation(line: 388, column: 5, scope: !373)
!767 = !DILocation(line: 389, column: 61, scope: !373)
!768 = !DILocation(line: 389, column: 5, scope: !373)
!769 = !DILocation(line: 391, column: 5, scope: !373)
!770 = !DILocation(line: 393, column: 5, scope: !373)
!771 = !DILocation(line: 394, column: 1, scope: !373)
!772 = !DISubprogram(name: "calloc", scope: !773, file: !773, line: 542, type: !774, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !320)
!773 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "f0db66726d35051e5af2525f5b33bd81")
!774 = !DISubroutineType(types: !775)
!775 = !{!108, !119, !119}
!776 = !DISubprogram(name: "open", scope: !777, file: !777, line: 168, type: !778, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !320)
!777 = !DIFile(filename: "/usr/include/fcntl.h", directory: "", checksumkind: CSK_MD5, checksum: "270596b098606fab5166d0114edf8288")
!778 = !DISubroutineType(types: !779)
!779 = !{!34, !350, !34, null}
!780 = !DISubprogram(name: "free", scope: !773, file: !773, line: 565, type: !781, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !320)
!781 = !DISubroutineType(types: !782)
!782 = !{null, !108}
!783 = !DISubprogram(name: "fcntl", scope: !777, file: !777, line: 148, type: !784, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !320)
!784 = !DISubroutineType(types: !785)
!785 = !{!34, !34, !34, null}
!786 = !DISubprogram(name: "ftruncate", scope: !787, file: !787, line: 1014, type: !788, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !320)
!787 = !DIFile(filename: "/usr/include/unistd.h", directory: "", checksumkind: CSK_MD5, checksum: "29bea3f2d65ec3bb874f389bfdfa2266")
!788 = !DISubroutineType(types: !789)
!789 = !{!34, !34, !418}
!790 = !DISubprogram(name: "pthread_mutex_init", scope: !316, file: !316, line: 725, type: !791, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !320)
!791 = !DISubroutineType(types: !792)
!792 = !{!34, !319, !793}
!793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !794, size: 64)
!794 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !795)
!795 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_mutexattr_t", file: !26, line: 36, baseType: !796)
!796 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !26, line: 32, size: 32, elements: !797)
!797 = !{!798, !802}
!798 = !DIDerivedType(tag: DW_TAG_member, name: "__size", scope: !796, file: !26, line: 34, baseType: !799, size: 32)
!799 = !DICompositeType(tag: DW_TAG_array_type, baseType: !52, size: 32, elements: !800)
!800 = !{!801}
!801 = !DISubrange(count: 4)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "__align", scope: !796, file: !26, line: 35, baseType: !34, size: 32)
!803 = distinct !DISubprogram(name: "wbuf_new", scope: !1, file: !1, line: 115, type: !804, scopeLine: 115, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !806)
!804 = !DISubroutineType(types: !805)
!805 = !{!85, !119}
!806 = !{!807, !808}
!807 = !DILocalVariable(name: "size", arg: 1, scope: !803, file: !1, line: 115, type: !119)
!808 = !DILocalVariable(name: "b", scope: !803, file: !1, line: 116, type: !85)
!809 = !DILocation(line: 0, scope: !803)
!810 = !DILocation(line: 116, column: 22, scope: !803)
!811 = !DILocation(line: 117, column: 11, scope: !812)
!812 = distinct !DILexicalBlock(scope: !803, file: !1, line: 117, column: 9)
!813 = !DILocation(line: 117, column: 9, scope: !803)
!814 = !DILocation(line: 118, column: 9, scope: !812)
!815 = !DILocation(line: 119, column: 14, scope: !803)
!816 = !DILocation(line: 119, column: 8, scope: !803)
!817 = !DILocation(line: 119, column: 12, scope: !803)
!818 = !{!700, !261, i64 8}
!819 = !DILocation(line: 120, column: 16, scope: !820)
!820 = distinct !DILexicalBlock(scope: !803, file: !1, line: 120, column: 9)
!821 = !DILocation(line: 120, column: 9, scope: !803)
!822 = !DILocation(line: 121, column: 14, scope: !823)
!823 = distinct !DILexicalBlock(scope: !820, file: !1, line: 120, column: 25)
!824 = !DILocation(line: 121, column: 9, scope: !823)
!825 = !DILocation(line: 122, column: 9, scope: !823)
!826 = !DILocation(line: 124, column: 18, scope: !803)
!827 = !DILocation(line: 124, column: 8, scope: !803)
!828 = !DILocation(line: 124, column: 16, scope: !803)
!829 = !{!700, !261, i64 16}
!830 = !DILocation(line: 125, column: 15, scope: !803)
!831 = !DILocation(line: 125, column: 8, scope: !803)
!832 = !DILocation(line: 125, column: 13, scope: !803)
!833 = !{!700, !263, i64 24}
!834 = !DILocation(line: 126, column: 8, scope: !803)
!835 = !DILocation(line: 126, column: 13, scope: !803)
!836 = !{!700, !263, i64 28}
!837 = !DILocation(line: 127, column: 5, scope: !803)
!838 = !DILocation(line: 128, column: 1, scope: !803)
!839 = !DISubprogram(name: "pthread_cond_init", scope: !316, file: !316, line: 965, type: !840, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !320)
!840 = !DISubroutineType(types: !841)
!841 = !{!34, !842, !844}
!842 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !843)
!843 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !139, size: 64)
!844 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !845)
!845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !846, size: 64)
!846 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !847)
!847 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_condattr_t", file: !26, line: 45, baseType: !848)
!848 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !26, line: 41, size: 32, elements: !849)
!849 = !{!850, !851}
!850 = !DIDerivedType(tag: DW_TAG_member, name: "__size", scope: !848, file: !26, line: 43, baseType: !799, size: 32)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "__align", scope: !848, file: !26, line: 44, baseType: !34, size: 32)
!852 = !DISubprogram(name: "pthread_create", scope: !316, file: !316, line: 198, type: !853, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !320)
!853 = !DISubroutineType(types: !854)
!854 = !{!34, !855, !857, !868, !325}
!855 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !856)
!856 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !405, size: 64)
!857 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !858)
!858 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !859, size: 64)
!859 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !860)
!860 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_attr_t", file: !26, line: 62, baseType: !861)
!861 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "pthread_attr_t", file: !26, line: 56, size: 448, elements: !862)
!862 = !{!863, !867}
!863 = !DIDerivedType(tag: DW_TAG_member, name: "__size", scope: !861, file: !26, line: 58, baseType: !864, size: 448)
!864 = !DICompositeType(tag: DW_TAG_array_type, baseType: !52, size: 448, elements: !865)
!865 = !{!866}
!866 = !DISubrange(count: 56)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "__align", scope: !861, file: !26, line: 59, baseType: !56, size: 64)
!868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !869, size: 64)
!869 = !DISubroutineType(types: !870)
!870 = !{!108, !108}
!871 = distinct !DISubprogram(name: "extstore_io_thread", scope: !1, file: !1, line: 739, type: !869, scopeLine: 739, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !872)
!872 = !{!873, !874, !875, !876, !878, !881, !882, !883, !885, !886, !887}
!873 = !DILocalVariable(name: "arg", arg: 1, scope: !871, file: !1, line: 739, type: !108)
!874 = !DILocalVariable(name: "me", scope: !871, file: !1, line: 740, type: !133)
!875 = !DILocalVariable(name: "e", scope: !871, file: !1, line: 741, type: !20)
!876 = !DILocalVariable(name: "io_stack", scope: !877, file: !1, line: 743, type: !103)
!877 = distinct !DILexicalBlock(scope: !871, file: !1, line: 742, column: 15)
!878 = !DILocalVariable(name: "i", scope: !879, file: !1, line: 754, type: !34)
!879 = distinct !DILexicalBlock(scope: !880, file: !1, line: 753, column: 32)
!880 = distinct !DILexicalBlock(scope: !877, file: !1, line: 753, column: 13)
!881 = !DILocalVariable(name: "end", scope: !879, file: !1, line: 755, type: !103)
!882 = !DILocalVariable(name: "cur_io", scope: !877, file: !1, line: 772, type: !103)
!883 = !DILocalVariable(name: "next", scope: !884, file: !1, line: 776, type: !103)
!884 = distinct !DILexicalBlock(scope: !877, file: !1, line: 773, column: 24)
!885 = !DILocalVariable(name: "ret", scope: !884, file: !1, line: 777, type: !34)
!886 = !DILocalVariable(name: "do_op", scope: !884, file: !1, line: 778, type: !34)
!887 = !DILocalVariable(name: "p", scope: !884, file: !1, line: 779, type: !58)
!888 = !DILocation(line: 0, scope: !871)
!889 = !DILocation(line: 741, column: 27, scope: !871)
!890 = !DILocation(line: 742, column: 5, scope: !871)
!891 = !DILocation(line: 0, scope: !877)
!892 = !DILocation(line: 744, column: 9, scope: !877)
!893 = !DILocation(line: 745, column: 17, scope: !894)
!894 = distinct !DILexicalBlock(scope: !877, file: !1, line: 745, column: 13)
!895 = !{!306, !261, i64 88}
!896 = !DILocation(line: 745, column: 23, scope: !894)
!897 = !DILocation(line: 745, column: 13, scope: !877)
!898 = !DILocation(line: 746, column: 32, scope: !899)
!899 = distinct !DILexicalBlock(scope: !894, file: !1, line: 745, column: 32)
!900 = !DILocation(line: 746, column: 13, scope: !899)
!901 = !DILocation(line: 753, column: 17, scope: !880)
!902 = !DILocation(line: 753, column: 23, scope: !880)
!903 = !DILocation(line: 753, column: 13, scope: !877)
!904 = !DILocation(line: 770, column: 9, scope: !877)
!905 = !DILocation(line: 773, column: 9, scope: !877)
!906 = !DILocation(line: 0, scope: !879)
!907 = !DILocation(line: 758, column: 32, scope: !908)
!908 = distinct !DILexicalBlock(scope: !909, file: !1, line: 758, column: 13)
!909 = distinct !DILexicalBlock(scope: !879, file: !1, line: 758, column: 13)
!910 = !DILocation(line: 758, column: 27, scope: !908)
!911 = !DILocation(line: 758, column: 13, scope: !909)
!912 = !DILocation(line: 759, column: 26, scope: !913)
!913 = distinct !DILexicalBlock(scope: !914, file: !1, line: 759, column: 21)
!914 = distinct !DILexicalBlock(scope: !908, file: !1, line: 758, column: 47)
!915 = !DILocation(line: 759, column: 21, scope: !913)
!916 = !DILocation(line: 759, column: 21, scope: !914)
!917 = !DILocation(line: 760, column: 27, scope: !918)
!918 = distinct !DILexicalBlock(scope: !913, file: !1, line: 759, column: 32)
!919 = !DILocation(line: 760, column: 32, scope: !918)
!920 = !DILocation(line: 758, column: 43, scope: !908)
!921 = distinct !{!921, !911, !922, !314}
!922 = !DILocation(line: 765, column: 13, scope: !909)
!923 = !DILocation(line: 762, column: 38, scope: !924)
!924 = distinct !DILexicalBlock(scope: !913, file: !1, line: 761, column: 24)
!925 = !DILocation(line: 762, column: 43, scope: !924)
!926 = !DILocation(line: 762, column: 36, scope: !924)
!927 = !{!306, !261, i64 96}
!928 = !DILocation(line: 763, column: 21, scope: !924)
!929 = !DILocation(line: 766, column: 26, scope: !879)
!930 = !DILocation(line: 766, column: 23, scope: !879)
!931 = !DILocation(line: 767, column: 30, scope: !879)
!932 = !DILocation(line: 767, column: 23, scope: !879)
!933 = !DILocation(line: 768, column: 23, scope: !879)
!934 = !DILocation(line: 776, column: 36, scope: !884)
!935 = !DILocation(line: 0, scope: !884)
!936 = !DILocation(line: 779, column: 33, scope: !884)
!937 = !DILocation(line: 779, column: 47, scope: !884)
!938 = !{!707, !514, i64 48}
!939 = !DILocation(line: 779, column: 30, scope: !884)
!940 = !DILocation(line: 781, column: 29, scope: !884)
!941 = !{!707, !259, i64 52}
!942 = !DILocation(line: 781, column: 13, scope: !884)
!943 = !DILocation(line: 784, column: 44, scope: !944)
!944 = distinct !DILexicalBlock(scope: !884, file: !1, line: 781, column: 35)
!945 = !DILocation(line: 784, column: 21, scope: !944)
!946 = !DILocation(line: 785, column: 29, scope: !947)
!947 = distinct !DILexicalBlock(scope: !944, file: !1, line: 785, column: 25)
!948 = !{i8 0, i8 2}
!949 = !DILocation(line: 785, column: 34, scope: !947)
!950 = !DILocation(line: 785, column: 38, scope: !947)
!951 = !DILocation(line: 785, column: 41, scope: !947)
!952 = !{!607, !608, i64 95}
!953 = !DILocation(line: 785, column: 48, scope: !947)
!954 = !DILocation(line: 785, column: 51, scope: !947)
!955 = !DILocation(line: 785, column: 54, scope: !947)
!956 = !{!607, !263, i64 64}
!957 = !DILocation(line: 785, column: 73, scope: !947)
!958 = !{!707, !263, i64 36}
!959 = !DILocation(line: 785, column: 62, scope: !947)
!960 = !DILocation(line: 785, column: 25, scope: !944)
!961 = !DILocation(line: 786, column: 32, scope: !962)
!962 = distinct !DILexicalBlock(scope: !963, file: !1, line: 786, column: 29)
!963 = distinct !DILexicalBlock(scope: !947, file: !1, line: 785, column: 87)
!964 = !{!607, !608, i64 94}
!965 = !DILocation(line: 786, column: 39, scope: !962)
!966 = !DILocation(line: 786, column: 42, scope: !962)
!967 = !DILocation(line: 786, column: 50, scope: !962)
!968 = !{!707, !263, i64 44}
!969 = !DILocation(line: 786, column: 63, scope: !962)
!970 = !{!607, !263, i64 76}
!971 = !DILocation(line: 786, column: 57, scope: !962)
!972 = !DILocation(line: 786, column: 29, scope: !963)
!973 = !DILocation(line: 787, column: 51, scope: !974)
!974 = distinct !DILexicalBlock(scope: !962, file: !1, line: 786, column: 72)
!975 = !DILocation(line: 787, column: 35, scope: !974)
!976 = !DILocation(line: 789, column: 25, scope: !974)
!977 = !DILocation(line: 790, column: 29, scope: !978)
!978 = distinct !DILexicalBlock(scope: !962, file: !1, line: 789, column: 32)
!979 = !DILocation(line: 790, column: 32, scope: !978)
!980 = !DILocation(line: 790, column: 40, scope: !978)
!981 = !{!607, !263, i64 68}
!982 = !DILocation(line: 797, column: 31, scope: !983)
!983 = distinct !DILexicalBlock(scope: !947, file: !1, line: 796, column: 28)
!984 = !DILocation(line: 800, column: 21, scope: !944)
!985 = !DILocation(line: 838, column: 21, scope: !884)
!986 = !{!707, !261, i64 56}
!987 = !DILocation(line: 838, column: 13, scope: !884)
!988 = !DILocation(line: 839, column: 17, scope: !884)
!989 = !DILocation(line: 792, column: 25, scope: !963)
!990 = !DILocation(line: 793, column: 56, scope: !963)
!991 = !{!707, !263, i64 40}
!992 = !DILocation(line: 793, column: 48, scope: !963)
!993 = !DILocation(line: 793, column: 45, scope: !963)
!994 = !{!258, !262, i64 288}
!995 = !DILocation(line: 794, column: 46, scope: !963)
!996 = !{!258, !262, i64 248}
!997 = !DILocation(line: 795, column: 25, scope: !963)
!998 = !DILocation(line: 801, column: 25, scope: !944)
!999 = !DILocation(line: 814, column: 37, scope: !1000)
!1000 = distinct !DILexicalBlock(scope: !1001, file: !1, line: 814, column: 29)
!1001 = distinct !DILexicalBlock(scope: !1002, file: !1, line: 801, column: 32)
!1002 = distinct !DILexicalBlock(scope: !944, file: !1, line: 801, column: 25)
!1003 = !{!707, !261, i64 24}
!1004 = !DILocation(line: 814, column: 41, scope: !1000)
!1005 = !DILocation(line: 814, column: 29, scope: !1001)
!1006 = !DILocation(line: 815, column: 41, scope: !1007)
!1007 = distinct !DILexicalBlock(scope: !1000, file: !1, line: 814, column: 50)
!1008 = !DILocation(line: 815, column: 44, scope: !1007)
!1009 = !DILocation(line: 815, column: 56, scope: !1007)
!1010 = !{!707, !261, i64 16}
!1011 = !DILocation(line: 815, column: 69, scope: !1007)
!1012 = !DILocation(line: 815, column: 61, scope: !1007)
!1013 = !DILocation(line: 815, column: 77, scope: !1007)
!1014 = !DILocation(line: 815, column: 94, scope: !1007)
!1015 = !DILocation(line: 815, column: 86, scope: !1007)
!1016 = !DILocation(line: 815, column: 84, scope: !1007)
!1017 = !DILocation(line: 815, column: 35, scope: !1007)
!1018 = !DILocation(line: 816, column: 25, scope: !1007)
!1019 = !DILocation(line: 817, column: 42, scope: !1020)
!1020 = distinct !DILexicalBlock(scope: !1000, file: !1, line: 816, column: 32)
!1021 = !DILocation(line: 817, column: 45, scope: !1020)
!1022 = !DILocation(line: 817, column: 57, scope: !1020)
!1023 = !DILocation(line: 817, column: 70, scope: !1020)
!1024 = !{!707, !263, i64 32}
!1025 = !DILocation(line: 817, column: 81, scope: !1020)
!1026 = !DILocation(line: 817, column: 98, scope: !1020)
!1027 = !DILocation(line: 817, column: 90, scope: !1020)
!1028 = !DILocation(line: 817, column: 88, scope: !1020)
!1029 = !DILocation(line: 817, column: 35, scope: !1020)
!1030 = !DILocation(line: 823, column: 27, scope: !944)
!1031 = !DILocation(line: 826, column: 37, scope: !944)
!1032 = !DILocation(line: 826, column: 49, scope: !944)
!1033 = !DILocation(line: 826, column: 62, scope: !944)
!1034 = !DILocation(line: 826, column: 54, scope: !944)
!1035 = !DILocation(line: 826, column: 70, scope: !944)
!1036 = !DILocation(line: 826, column: 87, scope: !944)
!1037 = !DILocation(line: 826, column: 79, scope: !944)
!1038 = !DILocation(line: 826, column: 77, scope: !944)
!1039 = !DILocation(line: 826, column: 27, scope: !944)
!1040 = !DILocation(line: 827, column: 21, scope: !944)
!1041 = !DILocation(line: 829, column: 21, scope: !1042)
!1042 = distinct !DILexicalBlock(scope: !884, file: !1, line: 829, column: 17)
!1043 = !DILocation(line: 829, column: 17, scope: !884)
!1044 = !DILocation(line: 831, column: 13, scope: !1045)
!1045 = distinct !DILexicalBlock(scope: !1042, file: !1, line: 829, column: 27)
!1046 = !DILocation(line: 840, column: 37, scope: !1047)
!1047 = distinct !DILexicalBlock(scope: !1048, file: !1, line: 839, column: 24)
!1048 = distinct !DILexicalBlock(scope: !884, file: !1, line: 839, column: 17)
!1049 = !DILocation(line: 840, column: 40, scope: !1047)
!1050 = !DILocation(line: 840, column: 17, scope: !1047)
!1051 = !DILocation(line: 841, column: 20, scope: !1047)
!1052 = !DILocation(line: 841, column: 28, scope: !1047)
!1053 = !DILocation(line: 842, column: 17, scope: !1047)
!1054 = !DILocation(line: 843, column: 13, scope: !1047)
!1055 = !DILocation(line: 844, column: 22, scope: !884)
!1056 = distinct !{!1056, !905, !1057, !314}
!1057 = !DILocation(line: 845, column: 9, scope: !877)
!1058 = !DILocation(line: 846, column: 5, scope: !871)
!1059 = distinct !{!1059, !890, !1058}
!1060 = distinct !DISubprogram(name: "extstore_maint_thread", scope: !1, file: !1, line: 913, type: !869, scopeLine: 913, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1061)
!1061 = !{!1062, !1063, !1064, !1065, !1066, !1068, !1069, !1070, !1071, !1075}
!1062 = !DILocalVariable(name: "arg", arg: 1, scope: !1060, file: !1, line: 913, type: !108)
!1063 = !DILocalVariable(name: "me", scope: !1060, file: !1, line: 914, type: !183)
!1064 = !DILocalVariable(name: "e", scope: !1060, file: !1, line: 915, type: !20)
!1065 = !DILocalVariable(name: "pd", scope: !1060, file: !1, line: 916, type: !225)
!1066 = !DILocalVariable(name: "i", scope: !1067, file: !1, line: 920, type: !34)
!1067 = distinct !DILexicalBlock(scope: !1060, file: !1, line: 919, column: 15)
!1068 = !DILocalVariable(name: "do_evict", scope: !1067, file: !1, line: 921, type: !81)
!1069 = !DILocalVariable(name: "low_page", scope: !1067, file: !1, line: 922, type: !5)
!1070 = !DILocalVariable(name: "low_version", scope: !1067, file: !1, line: 923, type: !64)
!1071 = !DILocalVariable(name: "p", scope: !1072, file: !1, line: 936, type: !58)
!1072 = distinct !DILexicalBlock(scope: !1073, file: !1, line: 935, column: 45)
!1073 = distinct !DILexicalBlock(scope: !1074, file: !1, line: 935, column: 9)
!1074 = distinct !DILexicalBlock(scope: !1067, file: !1, line: 935, column: 9)
!1075 = !DILocalVariable(name: "p", scope: !1076, file: !1, line: 967, type: !58)
!1076 = distinct !DILexicalBlock(scope: !1077, file: !1, line: 966, column: 52)
!1077 = distinct !DILexicalBlock(scope: !1067, file: !1, line: 966, column: 13)
!1078 = !DILocation(line: 0, scope: !1060)
!1079 = !DILocation(line: 915, column: 27, scope: !1060)
!1080 = !DILocation(line: 917, column: 19, scope: !1060)
!1081 = !DILocation(line: 917, column: 16, scope: !1060)
!1082 = !DILocation(line: 917, column: 9, scope: !1060)
!1083 = !DILocation(line: 918, column: 29, scope: !1060)
!1084 = !DILocation(line: 918, column: 5, scope: !1060)
!1085 = !DILocation(line: 919, column: 5, scope: !1060)
!1086 = !DILocation(line: 0, scope: !1067)
!1087 = !DILocation(line: 925, column: 9, scope: !1067)
!1088 = !DILocation(line: 926, column: 9, scope: !1067)
!1089 = !DILocation(line: 929, column: 16, scope: !1090)
!1090 = distinct !DILexicalBlock(scope: !1067, file: !1, line: 929, column: 13)
!1091 = !DILocation(line: 929, column: 26, scope: !1090)
!1092 = !DILocation(line: 929, column: 31, scope: !1090)
!1093 = !DILocation(line: 929, column: 34, scope: !1090)
!1094 = !DILocation(line: 929, column: 37, scope: !1090)
!1095 = !{!258, !261, i64 80}
!1096 = !DILocation(line: 929, column: 51, scope: !1090)
!1097 = !DILocation(line: 929, column: 13, scope: !1067)
!1098 = !DILocation(line: 930, column: 22, scope: !1099)
!1099 = distinct !DILexicalBlock(scope: !1090, file: !1, line: 929, column: 60)
!1100 = !DILocation(line: 931, column: 9, scope: !1099)
!1101 = !DILocation(line: 932, column: 9, scope: !1067)
!1102 = !DILocation(line: 933, column: 62, scope: !1067)
!1103 = !DILocation(line: 933, column: 59, scope: !1067)
!1104 = !DILocation(line: 933, column: 57, scope: !1067)
!1105 = !DILocation(line: 933, column: 9, scope: !1067)
!1106 = !DILocation(line: 935, column: 28, scope: !1073)
!1107 = !DILocation(line: 935, column: 23, scope: !1073)
!1108 = !DILocation(line: 935, column: 9, scope: !1074)
!1109 = !DILocation(line: 936, column: 33, scope: !1072)
!1110 = !DILocation(line: 936, column: 30, scope: !1072)
!1111 = !DILocation(line: 0, scope: !1072)
!1112 = !DILocation(line: 937, column: 36, scope: !1072)
!1113 = !DILocation(line: 937, column: 13, scope: !1072)
!1114 = !DILocation(line: 938, column: 40, scope: !1072)
!1115 = !DILocation(line: 938, column: 19, scope: !1072)
!1116 = !DILocation(line: 938, column: 13, scope: !1072)
!1117 = !DILocation(line: 938, column: 23, scope: !1072)
!1118 = !DILocation(line: 938, column: 35, scope: !1072)
!1119 = !{!1120, !263, i64 20}
!1120 = !{!"extstore_page_data", !262, i64 0, !262, i64 8, !263, i64 16, !263, i64 20}
!1121 = !DILocation(line: 939, column: 20, scope: !1122)
!1122 = distinct !DILexicalBlock(scope: !1072, file: !1, line: 939, column: 17)
!1123 = !DILocation(line: 939, column: 27, scope: !1122)
!1124 = !DILocation(line: 939, column: 30, scope: !1122)
!1125 = !DILocation(line: 939, column: 33, scope: !1122)
!1126 = !DILocation(line: 939, column: 17, scope: !1072)
!1127 = !DILocation(line: 943, column: 20, scope: !1128)
!1128 = distinct !DILexicalBlock(scope: !1072, file: !1, line: 943, column: 17)
!1129 = !{!607, !262, i64 40}
!1130 = !DILocation(line: 943, column: 30, scope: !1128)
!1131 = !DILocation(line: 943, column: 34, scope: !1128)
!1132 = !DILocation(line: 943, column: 38, scope: !1128)
!1133 = !DILocation(line: 943, column: 41, scope: !1128)
!1134 = !DILocation(line: 943, column: 17, scope: !1072)
!1135 = !DILocation(line: 944, column: 40, scope: !1136)
!1136 = distinct !DILexicalBlock(scope: !1128, file: !1, line: 943, column: 49)
!1137 = !DILocation(line: 944, column: 37, scope: !1136)
!1138 = !DILocation(line: 944, column: 23, scope: !1136)
!1139 = !DILocation(line: 944, column: 17, scope: !1136)
!1140 = !DILocation(line: 944, column: 27, scope: !1136)
!1141 = !DILocation(line: 944, column: 35, scope: !1136)
!1142 = !{!1120, !262, i64 0}
!1143 = !DILocation(line: 945, column: 43, scope: !1136)
!1144 = !{!607, !262, i64 48}
!1145 = !DILocation(line: 945, column: 27, scope: !1136)
!1146 = !DILocation(line: 945, column: 38, scope: !1136)
!1147 = !{!1120, !262, i64 8}
!1148 = !DILocation(line: 946, column: 39, scope: !1136)
!1149 = !{!607, !263, i64 80}
!1150 = !DILocation(line: 946, column: 27, scope: !1136)
!1151 = !DILocation(line: 946, column: 34, scope: !1136)
!1152 = !{!1120, !263, i64 16}
!1153 = !DILocation(line: 953, column: 24, scope: !1154)
!1154 = distinct !DILexicalBlock(scope: !1136, file: !1, line: 953, column: 21)
!1155 = !DILocation(line: 953, column: 36, scope: !1154)
!1156 = !DILocation(line: 953, column: 41, scope: !1154)
!1157 = !DILocation(line: 953, column: 44, scope: !1154)
!1158 = !DILocation(line: 953, column: 47, scope: !1154)
!1159 = !DILocation(line: 953, column: 55, scope: !1154)
!1160 = !DILocation(line: 953, column: 21, scope: !1136)
!1161 = !DILocation(line: 954, column: 35, scope: !1162)
!1162 = distinct !DILexicalBlock(scope: !1154, file: !1, line: 953, column: 70)
!1163 = !DILocation(line: 954, column: 38, scope: !1162)
!1164 = !DILocation(line: 956, column: 17, scope: !1162)
!1165 = !DILocation(line: 957, column: 13, scope: !1136)
!1166 = !DILocation(line: 958, column: 21, scope: !1167)
!1167 = distinct !DILexicalBlock(scope: !1072, file: !1, line: 958, column: 17)
!1168 = !DILocation(line: 958, column: 31, scope: !1167)
!1169 = !DILocation(line: 958, column: 36, scope: !1167)
!1170 = !DILocation(line: 958, column: 39, scope: !1167)
!1171 = !DILocation(line: 958, column: 42, scope: !1167)
!1172 = !DILocation(line: 958, column: 50, scope: !1167)
!1173 = !DILocation(line: 958, column: 56, scope: !1167)
!1174 = !DILocation(line: 958, column: 65, scope: !1167)
!1175 = !DILocation(line: 958, column: 17, scope: !1072)
!1176 = !DILocation(line: 959, column: 28, scope: !1177)
!1177 = distinct !DILexicalBlock(scope: !1167, file: !1, line: 958, column: 71)
!1178 = !DILocation(line: 959, column: 17, scope: !1177)
!1179 = !DILocation(line: 962, column: 13, scope: !1177)
!1180 = !DILocation(line: 940, column: 39, scope: !1181)
!1181 = distinct !DILexicalBlock(scope: !1122, file: !1, line: 939, column: 39)
!1182 = !DILocation(line: 940, column: 17, scope: !1181)
!1183 = !DILocation(line: 963, column: 35, scope: !1072)
!1184 = !DILocation(line: 963, column: 13, scope: !1072)
!1185 = !DILocation(line: 964, column: 9, scope: !1072)
!1186 = !DILocation(line: 935, column: 41, scope: !1073)
!1187 = distinct !{!1187, !1108, !1188, !314}
!1188 = !DILocation(line: 964, column: 9, scope: !1074)
!1189 = !DILocation(line: 966, column: 13, scope: !1077)
!1190 = !DILocation(line: 966, column: 22, scope: !1077)
!1191 = !DILocation(line: 966, column: 25, scope: !1077)
!1192 = !DILocation(line: 966, column: 13, scope: !1067)
!1193 = !DILocation(line: 966, column: 37, scope: !1077)
!1194 = !DILocation(line: 967, column: 13, scope: !1076)
!1195 = !DILocation(line: 967, column: 33, scope: !1076)
!1196 = !DILocation(line: 967, column: 30, scope: !1076)
!1197 = !DILocation(line: 0, scope: !1076)
!1198 = !DILocation(line: 970, column: 36, scope: !1076)
!1199 = !DILocation(line: 970, column: 13, scope: !1076)
!1200 = !DILocation(line: 971, column: 21, scope: !1201)
!1201 = distinct !DILexicalBlock(scope: !1076, file: !1, line: 971, column: 17)
!1202 = !DILocation(line: 971, column: 17, scope: !1076)
!1203 = !DILocation(line: 972, column: 27, scope: !1204)
!1204 = distinct !DILexicalBlock(scope: !1201, file: !1, line: 971, column: 29)
!1205 = !DILocation(line: 973, column: 17, scope: !1204)
!1206 = !DILocation(line: 974, column: 40, scope: !1204)
!1207 = !{!258, !262, i64 200}
!1208 = !DILocation(line: 975, column: 48, scope: !1204)
!1209 = !DILocation(line: 975, column: 42, scope: !1204)
!1210 = !{!258, !262, i64 240}
!1211 = !DILocation(line: 976, column: 46, scope: !1204)
!1212 = !DILocation(line: 976, column: 40, scope: !1204)
!1213 = !{!258, !262, i64 272}
!1214 = !DILocation(line: 977, column: 17, scope: !1204)
!1215 = !DILocation(line: 978, column: 24, scope: !1216)
!1216 = distinct !DILexicalBlock(scope: !1204, file: !1, line: 978, column: 21)
!1217 = !DILocation(line: 978, column: 33, scope: !1216)
!1218 = !DILocation(line: 978, column: 21, scope: !1204)
!1219 = !DILocation(line: 979, column: 32, scope: !1220)
!1220 = distinct !DILexicalBlock(scope: !1216, file: !1, line: 978, column: 39)
!1221 = !DILocation(line: 979, column: 21, scope: !1220)
!1222 = !DILocation(line: 980, column: 17, scope: !1220)
!1223 = !DILocation(line: 981, column: 13, scope: !1204)
!1224 = !DILocation(line: 982, column: 13, scope: !1076)
!1225 = !DILocation(line: 983, column: 9, scope: !1076)
!1226 = !DILocation(line: 987, column: 9, scope: !1067)
!1227 = !DILocation(line: 988, column: 25, scope: !1067)
!1228 = !DILocation(line: 989, column: 56, scope: !1067)
!1229 = !DILocation(line: 989, column: 53, scope: !1067)
!1230 = !DILocation(line: 989, column: 51, scope: !1067)
!1231 = !DILocation(line: 988, column: 9, scope: !1067)
!1232 = !DILocation(line: 990, column: 9, scope: !1067)
!1233 = distinct !{!1233, !1085, !1234}
!1234 = !DILocation(line: 991, column: 5, scope: !1060)
!1235 = distinct !DISubprogram(name: "extstore_run_maint", scope: !1, file: !1, line: 396, type: !781, scopeLine: 396, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1236)
!1236 = !{!1237, !1238}
!1237 = !DILocalVariable(name: "ptr", arg: 1, scope: !1235, file: !1, line: 396, type: !108)
!1238 = !DILocalVariable(name: "e", scope: !1235, file: !1, line: 397, type: !20)
!1239 = !DILocation(line: 0, scope: !1235)
!1240 = !DILocation(line: 398, column: 29, scope: !1235)
!1241 = !DILocation(line: 398, column: 43, scope: !1235)
!1242 = !DILocation(line: 398, column: 5, scope: !1235)
!1243 = !DILocation(line: 399, column: 1, scope: !1235)
!1244 = !DISubprogram(name: "pthread_cond_signal", scope: !316, file: !316, line: 974, type: !1245, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !320)
!1245 = !DISubroutineType(types: !1246)
!1246 = !{!34, !843}
!1247 = distinct !DISubprogram(name: "extstore_write_request", scope: !1, file: !1, line: 530, type: !1248, scopeLine: 531, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1250)
!1248 = !DISubroutineType(types: !1249)
!1249 = !{!34, !108, !5, !5, !103}
!1250 = !{!1251, !1252, !1253, !1254, !1255, !1256, !1257}
!1251 = !DILocalVariable(name: "ptr", arg: 1, scope: !1247, file: !1, line: 530, type: !108)
!1252 = !DILocalVariable(name: "bucket", arg: 2, scope: !1247, file: !1, line: 530, type: !5)
!1253 = !DILocalVariable(name: "free_bucket", arg: 3, scope: !1247, file: !1, line: 531, type: !5)
!1254 = !DILocalVariable(name: "io", arg: 4, scope: !1247, file: !1, line: 531, type: !103)
!1255 = !DILocalVariable(name: "e", scope: !1247, file: !1, line: 532, type: !20)
!1256 = !DILocalVariable(name: "p", scope: !1247, file: !1, line: 533, type: !58)
!1257 = !DILocalVariable(name: "ret", scope: !1247, file: !1, line: 534, type: !34)
!1258 = !DILocation(line: 0, scope: !1247)
!1259 = !DILocation(line: 532, column: 23, scope: !1247)
!1260 = !DILocation(line: 535, column: 22, scope: !1261)
!1261 = distinct !DILexicalBlock(scope: !1247, file: !1, line: 535, column: 9)
!1262 = !DILocation(line: 535, column: 16, scope: !1261)
!1263 = !DILocation(line: 535, column: 9, scope: !1247)
!1264 = !DILocation(line: 536, column: 16, scope: !1261)
!1265 = !DILocation(line: 536, column: 9, scope: !1261)
!1266 = !DILocation(line: 538, column: 28, scope: !1247)
!1267 = !DILocation(line: 538, column: 5, scope: !1247)
!1268 = !DILocation(line: 539, column: 12, scope: !1247)
!1269 = !DILocation(line: 539, column: 9, scope: !1247)
!1270 = !DILocation(line: 540, column: 10, scope: !1271)
!1271 = distinct !DILexicalBlock(scope: !1247, file: !1, line: 540, column: 9)
!1272 = !DILocation(line: 540, column: 9, scope: !1247)
!1273 = !DILocation(line: 543, column: 5, scope: !1247)
!1274 = !DILocation(line: 544, column: 9, scope: !1247)
!1275 = !DILocation(line: 541, column: 28, scope: !1276)
!1276 = distinct !DILexicalBlock(scope: !1271, file: !1, line: 540, column: 13)
!1277 = !DILocation(line: 541, column: 13, scope: !1276)
!1278 = !DILocation(line: 544, column: 10, scope: !1279)
!1279 = distinct !DILexicalBlock(scope: !1247, file: !1, line: 544, column: 9)
!1280 = !DILocation(line: 545, column: 16, scope: !1279)
!1281 = !DILocation(line: 545, column: 9, scope: !1279)
!1282 = !DILocation(line: 547, column: 28, scope: !1247)
!1283 = !DILocation(line: 547, column: 5, scope: !1247)
!1284 = !DILocation(line: 551, column: 13, scope: !1285)
!1285 = distinct !DILexicalBlock(scope: !1247, file: !1, line: 551, column: 9)
!1286 = !DILocation(line: 551, column: 20, scope: !1285)
!1287 = !DILocation(line: 552, column: 16, scope: !1285)
!1288 = !DILocation(line: 552, column: 19, scope: !1285)
!1289 = !{!607, !261, i64 104}
!1290 = !DILocation(line: 552, column: 24, scope: !1285)
!1291 = !DILocation(line: 552, column: 27, scope: !1285)
!1292 = !DILocation(line: 552, column: 36, scope: !1285)
!1293 = !{!700, !608, i64 36}
!1294 = !DILocation(line: 552, column: 42, scope: !1285)
!1295 = !DILocation(line: 552, column: 48, scope: !1285)
!1296 = !{!607, !263, i64 72}
!1297 = !DILocation(line: 552, column: 45, scope: !1285)
!1298 = !DILocation(line: 552, column: 64, scope: !1285)
!1299 = !DILocation(line: 552, column: 58, scope: !1285)
!1300 = !DILocation(line: 551, column: 9, scope: !1247)
!1301 = !DILocation(line: 553, column: 31, scope: !1302)
!1302 = distinct !DILexicalBlock(scope: !1285, file: !1, line: 552, column: 76)
!1303 = !DILocation(line: 553, column: 9, scope: !1302)
!1304 = !DILocation(line: 554, column: 9, scope: !1302)
!1305 = !DILocation(line: 555, column: 9, scope: !1302)
!1306 = !DILocation(line: 556, column: 9, scope: !1302)
!1307 = !DILocation(line: 557, column: 9, scope: !1302)
!1308 = !DILocation(line: 561, column: 20, scope: !1309)
!1309 = distinct !DILexicalBlock(scope: !1247, file: !1, line: 561, column: 9)
!1310 = !DILocation(line: 561, column: 29, scope: !1309)
!1311 = !DILocation(line: 561, column: 40, scope: !1309)
!1312 = !DILocation(line: 561, column: 34, scope: !1309)
!1313 = !DILocation(line: 561, column: 44, scope: !1309)
!1314 = !DILocation(line: 561, column: 48, scope: !1309)
!1315 = !DILocation(line: 561, column: 57, scope: !1309)
!1316 = !DILocation(line: 561, column: 9, scope: !1247)
!1317 = !DILocation(line: 562, column: 22, scope: !1318)
!1318 = distinct !DILexicalBlock(scope: !1309, file: !1, line: 561, column: 63)
!1319 = !DILocation(line: 562, column: 9, scope: !1318)
!1320 = !DILocation(line: 563, column: 12, scope: !1318)
!1321 = !DILocation(line: 563, column: 18, scope: !1318)
!1322 = !DILocation(line: 563, column: 23, scope: !1318)
!1323 = !DILocation(line: 566, column: 18, scope: !1324)
!1324 = distinct !DILexicalBlock(scope: !1247, file: !1, line: 566, column: 9)
!1325 = !DILocation(line: 566, column: 21, scope: !1324)
!1326 = !DILocation(line: 566, column: 24, scope: !1324)
!1327 = !DILocation(line: 566, column: 39, scope: !1324)
!1328 = !DILocation(line: 566, column: 34, scope: !1324)
!1329 = !DILocation(line: 566, column: 9, scope: !1247)
!1330 = !DILocation(line: 567, column: 24, scope: !1331)
!1331 = distinct !DILexicalBlock(scope: !1324, file: !1, line: 566, column: 50)
!1332 = !DILocation(line: 567, column: 9, scope: !1331)
!1333 = !DILocation(line: 572, column: 12, scope: !1334)
!1334 = distinct !DILexicalBlock(scope: !1247, file: !1, line: 572, column: 9)
!1335 = !DILocation(line: 568, column: 5, scope: !1331)
!1336 = !DILocation(line: 572, column: 9, scope: !1334)
!1337 = !DILocation(line: 572, column: 17, scope: !1334)
!1338 = !DILocation(line: 572, column: 21, scope: !1334)
!1339 = !DILocation(line: 572, column: 30, scope: !1334)
!1340 = !DILocation(line: 572, column: 35, scope: !1334)
!1341 = !DILocation(line: 572, column: 38, scope: !1334)
!1342 = !DILocation(line: 572, column: 47, scope: !1334)
!1343 = !DILocation(line: 572, column: 59, scope: !1334)
!1344 = !DILocation(line: 572, column: 52, scope: !1334)
!1345 = !DILocation(line: 572, column: 9, scope: !1247)
!1346 = !DILocation(line: 573, column: 19, scope: !1347)
!1347 = distinct !DILexicalBlock(scope: !1334, file: !1, line: 572, column: 64)
!1348 = !DILocation(line: 573, column: 22, scope: !1347)
!1349 = !DILocation(line: 573, column: 28, scope: !1347)
!1350 = !DILocation(line: 573, column: 13, scope: !1347)
!1351 = !DILocation(line: 573, column: 17, scope: !1347)
!1352 = !DILocation(line: 574, column: 26, scope: !1347)
!1353 = !DILocation(line: 574, column: 13, scope: !1347)
!1354 = !DILocation(line: 574, column: 21, scope: !1347)
!1355 = !DILocation(line: 575, column: 9, scope: !1347)
!1356 = !DILocation(line: 578, column: 27, scope: !1247)
!1357 = !DILocation(line: 578, column: 5, scope: !1247)
!1358 = !DILocation(line: 580, column: 5, scope: !1247)
!1359 = !DILocation(line: 581, column: 1, scope: !1247)
!1360 = distinct !DISubprogram(name: "_allocate_page", scope: !1, file: !1, line: 402, type: !1361, scopeLine: 403, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1363)
!1361 = !DISubroutineType(types: !1362)
!1362 = !{!58, !20, !5, !5}
!1363 = !{!1364, !1365, !1366, !1367}
!1364 = !DILocalVariable(name: "e", arg: 1, scope: !1360, file: !1, line: 402, type: !20)
!1365 = !DILocalVariable(name: "bucket", arg: 2, scope: !1360, file: !1, line: 402, type: !5)
!1366 = !DILocalVariable(name: "free_bucket", arg: 3, scope: !1360, file: !1, line: 403, type: !5)
!1367 = !DILocalVariable(name: "tmp", scope: !1360, file: !1, line: 405, type: !58)
!1368 = !DILocation(line: 0, scope: !1360)
!1369 = !DILocation(line: 404, column: 5, scope: !1370)
!1370 = distinct !DILexicalBlock(scope: !1371, file: !1, line: 404, column: 5)
!1371 = distinct !DILexicalBlock(scope: !1360, file: !1, line: 404, column: 5)
!1372 = !DILocation(line: 404, column: 5, scope: !1371)
!1373 = !DILocation(line: 407, column: 21, scope: !1374)
!1374 = distinct !DILexicalBlock(scope: !1360, file: !1, line: 407, column: 9)
!1375 = !DILocation(line: 407, column: 26, scope: !1374)
!1376 = !DILocation(line: 407, column: 29, scope: !1374)
!1377 = !DILocation(line: 407, column: 32, scope: !1374)
!1378 = !DILocation(line: 407, column: 63, scope: !1374)
!1379 = !DILocation(line: 407, column: 9, scope: !1360)
!1380 = !DILocation(line: 408, column: 9, scope: !1381)
!1381 = distinct !DILexicalBlock(scope: !1382, file: !1, line: 408, column: 9)
!1382 = distinct !DILexicalBlock(scope: !1383, file: !1, line: 408, column: 9)
!1383 = distinct !DILexicalBlock(scope: !1374, file: !1, line: 407, column: 72)
!1384 = !DILocation(line: 408, column: 9, scope: !1382)
!1385 = !DILocation(line: 409, column: 15, scope: !1383)
!1386 = !DILocation(line: 410, column: 50, scope: !1383)
!1387 = !DILocation(line: 410, column: 43, scope: !1383)
!1388 = !DILocation(line: 420, column: 26, scope: !1389)
!1389 = distinct !DILexicalBlock(scope: !1360, file: !1, line: 420, column: 9)
!1390 = !DILocation(line: 413, column: 24, scope: !1391)
!1391 = distinct !DILexicalBlock(scope: !1360, file: !1, line: 413, column: 9)
!1392 = !DILocation(line: 413, column: 27, scope: !1391)
!1393 = !DILocation(line: 413, column: 41, scope: !1391)
!1394 = !DILocation(line: 413, column: 9, scope: !1360)
!1395 = !DILocation(line: 414, column: 15, scope: !1396)
!1396 = distinct !DILexicalBlock(scope: !1391, file: !1, line: 413, column: 50)
!1397 = !DILocation(line: 415, column: 33, scope: !1396)
!1398 = !DILocation(line: 415, column: 26, scope: !1396)
!1399 = !DILocation(line: 420, column: 12, scope: !1389)
!1400 = !DILocation(line: 416, column: 5, scope: !1396)
!1401 = !DILocation(line: 420, column: 22, scope: !1389)
!1402 = !DILocation(line: 420, column: 29, scope: !1389)
!1403 = !DILocation(line: 420, column: 9, scope: !1360)
!1404 = !DILocation(line: 421, column: 24, scope: !1405)
!1405 = distinct !DILexicalBlock(scope: !1389, file: !1, line: 420, column: 42)
!1406 = !DILocation(line: 421, column: 21, scope: !1405)
!1407 = !DILocation(line: 421, column: 14, scope: !1405)
!1408 = !DILocation(line: 421, column: 19, scope: !1405)
!1409 = !DILocation(line: 422, column: 33, scope: !1405)
!1410 = !DILocation(line: 423, column: 14, scope: !1405)
!1411 = !DILocation(line: 423, column: 21, scope: !1405)
!1412 = !DILocation(line: 424, column: 14, scope: !1405)
!1413 = !DILocation(line: 424, column: 19, scope: !1405)
!1414 = !DILocation(line: 425, column: 14, scope: !1405)
!1415 = !DILocation(line: 425, column: 21, scope: !1405)
!1416 = !DILocation(line: 426, column: 24, scope: !1405)
!1417 = !DILocation(line: 426, column: 14, scope: !1405)
!1418 = !DILocation(line: 426, column: 22, scope: !1405)
!1419 = !DILocation(line: 427, column: 14, scope: !1405)
!1420 = !DILocation(line: 427, column: 21, scope: !1405)
!1421 = !DILocation(line: 428, column: 21, scope: !1405)
!1422 = !DILocation(line: 429, column: 9, scope: !1423)
!1423 = distinct !DILexicalBlock(scope: !1405, file: !1, line: 429, column: 9)
!1424 = !{!258, !262, i64 184}
!1425 = !DILocation(line: 433, column: 9, scope: !1360)
!1426 = !DILocation(line: 431, column: 28, scope: !1427)
!1427 = distinct !DILexicalBlock(scope: !1389, file: !1, line: 430, column: 12)
!1428 = !DILocation(line: 431, column: 9, scope: !1427)
!1429 = !DILocation(line: 433, column: 9, scope: !1430)
!1430 = distinct !DILexicalBlock(scope: !1360, file: !1, line: 433, column: 9)
!1431 = !DILocation(line: 435, column: 5, scope: !1360)
!1432 = distinct !DISubprogram(name: "_submit_wbuf", scope: !1, file: !1, line: 498, type: !1433, scopeLine: 498, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1435)
!1433 = !DISubroutineType(types: !1434)
!1434 = !{null, !20, !58}
!1435 = !{!1436, !1437, !1438, !1439}
!1436 = !DILocalVariable(name: "e", arg: 1, scope: !1432, file: !1, line: 498, type: !20)
!1437 = !DILocalVariable(name: "p", arg: 2, scope: !1432, file: !1, line: 498, type: !58)
!1438 = !DILocalVariable(name: "w", scope: !1432, file: !1, line: 499, type: !85)
!1439 = !DILocalVariable(name: "io", scope: !1432, file: !1, line: 501, type: !103)
!1440 = !DILocation(line: 0, scope: !1432)
!1441 = !DILocation(line: 500, column: 28, scope: !1432)
!1442 = !DILocation(line: 500, column: 5, scope: !1432)
!1443 = !DILocation(line: 501, column: 21, scope: !1432)
!1444 = !DILocation(line: 502, column: 23, scope: !1432)
!1445 = !DILocation(line: 502, column: 17, scope: !1432)
!1446 = !DILocation(line: 503, column: 5, scope: !1432)
!1447 = !DILocation(line: 504, column: 12, scope: !1432)
!1448 = !DILocation(line: 507, column: 15, scope: !1432)
!1449 = !DILocation(line: 507, column: 25, scope: !1432)
!1450 = !DILocation(line: 507, column: 35, scope: !1432)
!1451 = !DILocation(line: 507, column: 30, scope: !1432)
!1452 = !DILocation(line: 507, column: 19, scope: !1432)
!1453 = !DILocation(line: 507, column: 45, scope: !1432)
!1454 = !DILocation(line: 507, column: 5, scope: !1432)
!1455 = !DILocation(line: 509, column: 14, scope: !1432)
!1456 = !DILocation(line: 510, column: 9, scope: !1432)
!1457 = !DILocation(line: 510, column: 14, scope: !1432)
!1458 = !DILocation(line: 511, column: 22, scope: !1432)
!1459 = !DILocation(line: 511, column: 9, scope: !1432)
!1460 = !DILocation(line: 511, column: 17, scope: !1432)
!1461 = !DILocation(line: 512, column: 14, scope: !1432)
!1462 = !{!707, !261, i64 0}
!1463 = !DILocation(line: 513, column: 21, scope: !1432)
!1464 = !{!700, !263, i64 32}
!1465 = !DILocation(line: 513, column: 9, scope: !1432)
!1466 = !DILocation(line: 513, column: 16, scope: !1432)
!1467 = !DILocation(line: 514, column: 18, scope: !1432)
!1468 = !DILocation(line: 514, column: 9, scope: !1432)
!1469 = !DILocation(line: 514, column: 13, scope: !1432)
!1470 = !DILocation(line: 515, column: 18, scope: !1432)
!1471 = !DILocation(line: 515, column: 9, scope: !1432)
!1472 = !DILocation(line: 515, column: 13, scope: !1432)
!1473 = !DILocation(line: 516, column: 9, scope: !1432)
!1474 = !DILocation(line: 516, column: 12, scope: !1432)
!1475 = !DILocation(line: 518, column: 21, scope: !1432)
!1476 = !DILocation(line: 518, column: 5, scope: !1432)
!1477 = !DILocation(line: 519, column: 1, scope: !1432)
!1478 = distinct !DISubprogram(name: "_allocate_wbuf", scope: !1, file: !1, line: 439, type: !1433, scopeLine: 439, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1479)
!1479 = !{!1480, !1481, !1482}
!1480 = !DILocalVariable(name: "e", arg: 1, scope: !1478, file: !1, line: 439, type: !20)
!1481 = !DILocalVariable(name: "p", arg: 2, scope: !1478, file: !1, line: 439, type: !58)
!1482 = !DILocalVariable(name: "wbuf", scope: !1478, file: !1, line: 440, type: !85)
!1483 = !DILocation(line: 0, scope: !1478)
!1484 = !DILocation(line: 441, column: 5, scope: !1485)
!1485 = distinct !DILexicalBlock(scope: !1486, file: !1, line: 441, column: 5)
!1486 = distinct !DILexicalBlock(scope: !1478, file: !1, line: 441, column: 5)
!1487 = !DILocation(line: 441, column: 5, scope: !1486)
!1488 = !DILocation(line: 442, column: 28, scope: !1478)
!1489 = !DILocation(line: 442, column: 5, scope: !1478)
!1490 = !DILocation(line: 443, column: 12, scope: !1491)
!1491 = distinct !DILexicalBlock(scope: !1478, file: !1, line: 443, column: 9)
!1492 = !DILocation(line: 443, column: 9, scope: !1491)
!1493 = !DILocation(line: 443, column: 9, scope: !1478)
!1494 = !DILocation(line: 448, column: 5, scope: !1478)
!1495 = !DILocation(line: 449, column: 9, scope: !1478)
!1496 = !DILocation(line: 444, column: 16, scope: !1497)
!1497 = distinct !DILexicalBlock(scope: !1491, file: !1, line: 443, column: 24)
!1498 = !DILocation(line: 445, column: 31, scope: !1497)
!1499 = !DILocation(line: 445, column: 23, scope: !1497)
!1500 = !DILocation(line: 446, column: 20, scope: !1497)
!1501 = !DILocation(line: 450, column: 24, scope: !1502)
!1502 = distinct !DILexicalBlock(scope: !1503, file: !1, line: 449, column: 15)
!1503 = distinct !DILexicalBlock(scope: !1478, file: !1, line: 449, column: 9)
!1504 = !DILocation(line: 450, column: 27, scope: !1502)
!1505 = !DILocation(line: 450, column: 15, scope: !1502)
!1506 = !DILocation(line: 450, column: 22, scope: !1502)
!1507 = !DILocation(line: 451, column: 31, scope: !1502)
!1508 = !DILocation(line: 451, column: 22, scope: !1502)
!1509 = !DILocation(line: 452, column: 15, scope: !1502)
!1510 = !DILocation(line: 452, column: 20, scope: !1502)
!1511 = !DILocation(line: 453, column: 31, scope: !1502)
!1512 = !DILocation(line: 453, column: 15, scope: !1502)
!1513 = !DILocation(line: 453, column: 23, scope: !1502)
!1514 = !DILocation(line: 454, column: 15, scope: !1502)
!1515 = !DILocation(line: 454, column: 20, scope: !1502)
!1516 = !DILocation(line: 455, column: 15, scope: !1502)
!1517 = !DILocation(line: 455, column: 23, scope: !1502)
!1518 = !{!700, !608, i64 37}
!1519 = !DILocation(line: 457, column: 17, scope: !1502)
!1520 = !DILocation(line: 458, column: 5, scope: !1502)
!1521 = !DILocation(line: 459, column: 1, scope: !1478)
!1522 = distinct !DISubprogram(name: "extstore_write", scope: !1, file: !1, line: 586, type: !1523, scopeLine: 586, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1525)
!1523 = !DISubroutineType(types: !1524)
!1524 = !{null, !108, !103}
!1525 = !{!1526, !1527, !1528, !1529}
!1526 = !DILocalVariable(name: "ptr", arg: 1, scope: !1522, file: !1, line: 586, type: !108)
!1527 = !DILocalVariable(name: "io", arg: 2, scope: !1522, file: !1, line: 586, type: !103)
!1528 = !DILocalVariable(name: "e", scope: !1522, file: !1, line: 587, type: !20)
!1529 = !DILocalVariable(name: "p", scope: !1522, file: !1, line: 588, type: !58)
!1530 = !DILocation(line: 0, scope: !1522)
!1531 = !DILocation(line: 588, column: 25, scope: !1522)
!1532 = !DILocation(line: 588, column: 35, scope: !1522)
!1533 = !DILocation(line: 588, column: 22, scope: !1522)
!1534 = !DILocation(line: 590, column: 21, scope: !1522)
!1535 = !DILocation(line: 590, column: 27, scope: !1522)
!1536 = !DILocation(line: 590, column: 46, scope: !1522)
!1537 = !DILocation(line: 590, column: 62, scope: !1522)
!1538 = !DILocation(line: 590, column: 51, scope: !1522)
!1539 = !DILocation(line: 590, column: 34, scope: !1522)
!1540 = !DILocation(line: 590, column: 9, scope: !1522)
!1541 = !DILocation(line: 590, column: 16, scope: !1522)
!1542 = !DILocation(line: 591, column: 27, scope: !1522)
!1543 = !DILocation(line: 591, column: 9, scope: !1522)
!1544 = !DILocation(line: 591, column: 22, scope: !1522)
!1545 = !DILocation(line: 592, column: 29, scope: !1522)
!1546 = !DILocation(line: 592, column: 14, scope: !1522)
!1547 = !DILocation(line: 592, column: 22, scope: !1522)
!1548 = !DILocation(line: 593, column: 19, scope: !1522)
!1549 = !DILocation(line: 595, column: 8, scope: !1522)
!1550 = !DILocation(line: 595, column: 17, scope: !1522)
!1551 = !DILocation(line: 596, column: 5, scope: !1522)
!1552 = !DILocation(line: 597, column: 35, scope: !1522)
!1553 = !DILocation(line: 597, column: 31, scope: !1522)
!1554 = !DILocation(line: 597, column: 14, scope: !1522)
!1555 = !DILocation(line: 597, column: 28, scope: !1522)
!1556 = !{!258, !262, i64 280}
!1557 = !DILocation(line: 598, column: 14, scope: !1522)
!1558 = !DILocation(line: 598, column: 25, scope: !1522)
!1559 = !{!258, !262, i64 296}
!1560 = !DILocation(line: 599, column: 14, scope: !1522)
!1561 = !DILocation(line: 599, column: 29, scope: !1522)
!1562 = !DILocation(line: 601, column: 5, scope: !1522)
!1563 = !DILocation(line: 603, column: 30, scope: !1522)
!1564 = !DILocation(line: 603, column: 5, scope: !1522)
!1565 = !DILocation(line: 604, column: 1, scope: !1522)
!1566 = distinct !DISubprogram(name: "extstore_submit", scope: !1, file: !1, line: 611, type: !1567, scopeLine: 611, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1569)
!1567 = !DISubroutineType(types: !1568)
!1568 = !{!34, !108, !103}
!1569 = !{!1570, !1571, !1572, !1573, !1574, !1575, !1576}
!1570 = !DILocalVariable(name: "ptr", arg: 1, scope: !1566, file: !1, line: 611, type: !108)
!1571 = !DILocalVariable(name: "io", arg: 2, scope: !1566, file: !1, line: 611, type: !103)
!1572 = !DILocalVariable(name: "e", scope: !1566, file: !1, line: 612, type: !20)
!1573 = !DILocalVariable(name: "depth", scope: !1566, file: !1, line: 614, type: !5)
!1574 = !DILocalVariable(name: "tio", scope: !1566, file: !1, line: 615, type: !103)
!1575 = !DILocalVariable(name: "tail", scope: !1566, file: !1, line: 616, type: !103)
!1576 = !DILocalVariable(name: "t", scope: !1566, file: !1, line: 623, type: !133)
!1577 = !DILocation(line: 0, scope: !1566)
!1578 = !DILocation(line: 612, column: 23, scope: !1566)
!1579 = !DILocation(line: 617, column: 16, scope: !1566)
!1580 = !DILocation(line: 617, column: 5, scope: !1566)
!1581 = !DILocation(line: 618, column: 16, scope: !1582)
!1582 = distinct !DILexicalBlock(scope: !1566, file: !1, line: 617, column: 25)
!1583 = !DILocation(line: 619, column: 14, scope: !1582)
!1584 = !DILocation(line: 620, column: 20, scope: !1582)
!1585 = distinct !{!1585, !1580, !1586, !314}
!1586 = !DILocation(line: 621, column: 5, scope: !1566)
!1587 = !DILocation(line: 623, column: 26, scope: !1566)
!1588 = !DILocation(line: 624, column: 28, scope: !1566)
!1589 = !DILocation(line: 624, column: 5, scope: !1566)
!1590 = !DILocation(line: 626, column: 8, scope: !1566)
!1591 = !DILocation(line: 626, column: 14, scope: !1566)
!1592 = !DILocation(line: 627, column: 12, scope: !1593)
!1593 = distinct !DILexicalBlock(scope: !1566, file: !1, line: 627, column: 9)
!1594 = !DILocation(line: 627, column: 18, scope: !1593)
!1595 = !DILocation(line: 627, column: 9, scope: !1566)
!1596 = !DILocation(line: 628, column: 20, scope: !1597)
!1597 = distinct !DILexicalBlock(scope: !1593, file: !1, line: 627, column: 27)
!1598 = !DILocation(line: 628, column: 18, scope: !1597)
!1599 = !DILocation(line: 629, column: 12, scope: !1597)
!1600 = !DILocation(line: 630, column: 5, scope: !1597)
!1601 = !DILocation(line: 632, column: 9, scope: !1602)
!1602 = distinct !DILexicalBlock(scope: !1603, file: !1, line: 632, column: 9)
!1603 = distinct !DILexicalBlock(scope: !1604, file: !1, line: 632, column: 9)
!1604 = distinct !DILexicalBlock(scope: !1593, file: !1, line: 630, column: 12)
!1605 = !DILocation(line: 632, column: 9, scope: !1603)
!1606 = !DILocation(line: 633, column: 9, scope: !1607)
!1607 = distinct !DILexicalBlock(scope: !1608, file: !1, line: 633, column: 9)
!1608 = distinct !DILexicalBlock(scope: !1604, file: !1, line: 633, column: 9)
!1609 = !DILocation(line: 633, column: 9, scope: !1608)
!1610 = !DILocation(line: 634, column: 31, scope: !1604)
!1611 = !DILocation(line: 634, column: 29, scope: !1604)
!1612 = !DILocation(line: 0, scope: !1593)
!1613 = !DILocation(line: 638, column: 5, scope: !1566)
!1614 = !DILocation(line: 641, column: 29, scope: !1566)
!1615 = !DILocation(line: 641, column: 5, scope: !1566)
!1616 = !DILocation(line: 643, column: 5, scope: !1566)
!1617 = distinct !DISubprogram(name: "_get_io_thread", scope: !1, file: !1, line: 130, type: !1618, scopeLine: 130, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1620)
!1618 = !DISubroutineType(types: !1619)
!1619 = !{!133, !20}
!1620 = !{!1621, !1622, !1623, !1624}
!1621 = !DILocalVariable(name: "e", arg: 1, scope: !1617, file: !1, line: 130, type: !20)
!1622 = !DILocalVariable(name: "tid", scope: !1617, file: !1, line: 131, type: !34)
!1623 = !DILocalVariable(name: "low", scope: !1617, file: !1, line: 132, type: !177)
!1624 = !DILocalVariable(name: "x", scope: !1625, file: !1, line: 137, type: !34)
!1625 = distinct !DILexicalBlock(scope: !1617, file: !1, line: 137, column: 5)
!1626 = !DILocation(line: 0, scope: !1617)
!1627 = !DILocation(line: 133, column: 28, scope: !1617)
!1628 = !DILocation(line: 133, column: 5, scope: !1617)
!1629 = !DILocation(line: 0, scope: !1625)
!1630 = !DILocation(line: 137, column: 23, scope: !1631)
!1631 = distinct !DILexicalBlock(scope: !1625, file: !1, line: 137, column: 5)
!1632 = !DILocation(line: 137, column: 5, scope: !1625)
!1633 = !DILocation(line: 138, column: 30, scope: !1634)
!1634 = distinct !DILexicalBlock(scope: !1635, file: !1, line: 138, column: 13)
!1635 = distinct !DILexicalBlock(scope: !1631, file: !1, line: 137, column: 49)
!1636 = !DILocation(line: 138, column: 36, scope: !1634)
!1637 = !DILocation(line: 138, column: 13, scope: !1635)
!1638 = !DILocation(line: 139, column: 19, scope: !1639)
!1639 = distinct !DILexicalBlock(scope: !1634, file: !1, line: 138, column: 42)
!1640 = !DILocation(line: 140, column: 13, scope: !1639)
!1641 = !DILocation(line: 141, column: 20, scope: !1642)
!1642 = distinct !DILexicalBlock(scope: !1634, file: !1, line: 141, column: 20)
!1643 = !DILocation(line: 141, column: 43, scope: !1642)
!1644 = !DILocation(line: 141, column: 20, scope: !1634)
!1645 = !DILocation(line: 142, column: 23, scope: !1646)
!1646 = distinct !DILexicalBlock(scope: !1642, file: !1, line: 141, column: 50)
!1647 = !DILocation(line: 143, column: 36, scope: !1646)
!1648 = !DILocation(line: 143, column: 19, scope: !1646)
!1649 = !DILocation(line: 144, column: 9, scope: !1646)
!1650 = !DILocation(line: 137, column: 45, scope: !1631)
!1651 = distinct !{!1651, !1632, !1652, !314}
!1652 = !DILocation(line: 145, column: 5, scope: !1625)
!1653 = !DILocation(line: 146, column: 5, scope: !1617)
!1654 = !DILocation(line: 148, column: 16, scope: !1617)
!1655 = !DILocation(line: 148, column: 13, scope: !1617)
!1656 = !DILocation(line: 148, column: 5, scope: !1617)
!1657 = distinct !DISubprogram(name: "extstore_delete", scope: !1, file: !1, line: 649, type: !1658, scopeLine: 650, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1660)
!1658 = !DISubroutineType(types: !1659)
!1659 = !{!34, !108, !5, !64, !5, !5}
!1660 = !{!1661, !1662, !1663, !1664, !1665, !1666, !1667, !1668}
!1661 = !DILocalVariable(name: "ptr", arg: 1, scope: !1657, file: !1, line: 649, type: !108)
!1662 = !DILocalVariable(name: "page_id", arg: 2, scope: !1657, file: !1, line: 649, type: !5)
!1663 = !DILocalVariable(name: "page_version", arg: 3, scope: !1657, file: !1, line: 649, type: !64)
!1664 = !DILocalVariable(name: "count", arg: 4, scope: !1657, file: !1, line: 650, type: !5)
!1665 = !DILocalVariable(name: "bytes", arg: 5, scope: !1657, file: !1, line: 650, type: !5)
!1666 = !DILocalVariable(name: "e", scope: !1657, file: !1, line: 651, type: !20)
!1667 = !DILocalVariable(name: "p", scope: !1657, file: !1, line: 653, type: !58)
!1668 = !DILocalVariable(name: "ret", scope: !1657, file: !1, line: 654, type: !34)
!1669 = !DILocation(line: 0, scope: !1657)
!1670 = !DILocation(line: 653, column: 25, scope: !1657)
!1671 = !DILocation(line: 653, column: 22, scope: !1657)
!1672 = !DILocation(line: 656, column: 28, scope: !1657)
!1673 = !DILocation(line: 656, column: 5, scope: !1657)
!1674 = !DILocation(line: 657, column: 13, scope: !1675)
!1675 = distinct !DILexicalBlock(scope: !1657, file: !1, line: 657, column: 9)
!1676 = !DILocation(line: 657, column: 20, scope: !1675)
!1677 = !DILocation(line: 657, column: 23, scope: !1675)
!1678 = !DILocation(line: 657, column: 26, scope: !1675)
!1679 = !DILocation(line: 657, column: 34, scope: !1675)
!1680 = !DILocation(line: 657, column: 9, scope: !1657)
!1681 = !DILocation(line: 658, column: 16, scope: !1682)
!1682 = distinct !DILexicalBlock(scope: !1683, file: !1, line: 658, column: 13)
!1683 = distinct !DILexicalBlock(scope: !1675, file: !1, line: 657, column: 51)
!1684 = !DILocation(line: 658, column: 30, scope: !1682)
!1685 = !DILocation(line: 658, column: 27, scope: !1682)
!1686 = !DILocation(line: 658, column: 13, scope: !1683)
!1687 = !DILocation(line: 659, column: 27, scope: !1688)
!1688 = distinct !DILexicalBlock(scope: !1682, file: !1, line: 658, column: 37)
!1689 = !DILocation(line: 660, column: 9, scope: !1688)
!1690 = !DILocation(line: 661, column: 13, scope: !1691)
!1691 = distinct !DILexicalBlock(scope: !1682, file: !1, line: 660, column: 16)
!1692 = !DILocation(line: 0, scope: !1682)
!1693 = !DILocation(line: 664, column: 16, scope: !1694)
!1694 = distinct !DILexicalBlock(scope: !1683, file: !1, line: 664, column: 13)
!1695 = !DILocation(line: 664, column: 29, scope: !1694)
!1696 = !DILocation(line: 664, column: 26, scope: !1694)
!1697 = !DILocation(line: 664, column: 13, scope: !1683)
!1698 = !DILocation(line: 665, column: 29, scope: !1699)
!1699 = distinct !DILexicalBlock(scope: !1694, file: !1, line: 664, column: 36)
!1700 = !DILocation(line: 665, column: 26, scope: !1699)
!1701 = !DILocation(line: 666, column: 9, scope: !1699)
!1702 = !DILocation(line: 667, column: 13, scope: !1703)
!1703 = distinct !DILexicalBlock(scope: !1694, file: !1, line: 666, column: 16)
!1704 = !DILocation(line: 0, scope: !1694)
!1705 = !DILocation(line: 669, column: 9, scope: !1683)
!1706 = !DILocation(line: 670, column: 18, scope: !1683)
!1707 = !DILocation(line: 670, column: 29, scope: !1683)
!1708 = !DILocation(line: 671, column: 18, scope: !1683)
!1709 = !DILocation(line: 671, column: 31, scope: !1683)
!1710 = !{!258, !262, i64 264}
!1711 = !DILocation(line: 672, column: 9, scope: !1683)
!1712 = !DILocation(line: 674, column: 16, scope: !1713)
!1713 = distinct !DILexicalBlock(scope: !1683, file: !1, line: 674, column: 13)
!1714 = !DILocation(line: 674, column: 26, scope: !1713)
!1715 = !DILocation(line: 674, column: 13, scope: !1683)
!1716 = !DILocation(line: 675, column: 32, scope: !1717)
!1717 = distinct !DILexicalBlock(scope: !1713, file: !1, line: 674, column: 32)
!1718 = !DILocation(line: 675, column: 13, scope: !1717)
!1719 = !DILocation(line: 676, column: 9, scope: !1717)
!1720 = !DILocation(line: 678, column: 13, scope: !1721)
!1721 = distinct !DILexicalBlock(scope: !1675, file: !1, line: 677, column: 12)
!1722 = !DILocation(line: 680, column: 5, scope: !1657)
!1723 = !DILocation(line: 681, column: 5, scope: !1657)
!1724 = distinct !DISubprogram(name: "extstore_check", scope: !1, file: !1, line: 684, type: !1725, scopeLine: 684, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1727)
!1725 = !DISubroutineType(types: !1726)
!1726 = !{!34, !108, !5, !64}
!1727 = !{!1728, !1729, !1730, !1731, !1732, !1733}
!1728 = !DILocalVariable(name: "ptr", arg: 1, scope: !1724, file: !1, line: 684, type: !108)
!1729 = !DILocalVariable(name: "page_id", arg: 2, scope: !1724, file: !1, line: 684, type: !5)
!1730 = !DILocalVariable(name: "page_version", arg: 3, scope: !1724, file: !1, line: 684, type: !64)
!1731 = !DILocalVariable(name: "e", scope: !1724, file: !1, line: 685, type: !20)
!1732 = !DILocalVariable(name: "p", scope: !1724, file: !1, line: 686, type: !58)
!1733 = !DILocalVariable(name: "ret", scope: !1724, file: !1, line: 687, type: !34)
!1734 = !DILocation(line: 0, scope: !1724)
!1735 = !DILocation(line: 686, column: 25, scope: !1724)
!1736 = !DILocation(line: 686, column: 22, scope: !1724)
!1737 = !DILocation(line: 689, column: 28, scope: !1724)
!1738 = !DILocation(line: 689, column: 5, scope: !1724)
!1739 = !DILocation(line: 690, column: 12, scope: !1740)
!1740 = distinct !DILexicalBlock(scope: !1724, file: !1, line: 690, column: 9)
!1741 = !DILocation(line: 690, column: 9, scope: !1740)
!1742 = !DILocation(line: 690, column: 20, scope: !1740)
!1743 = !DILocation(line: 690, column: 9, scope: !1724)
!1744 = !DILocation(line: 691, column: 13, scope: !1740)
!1745 = !DILocation(line: 691, column: 9, scope: !1740)
!1746 = !DILocation(line: 692, column: 5, scope: !1724)
!1747 = !DILocation(line: 693, column: 5, scope: !1724)
!1748 = distinct !DISubprogram(name: "extstore_close_page", scope: !1, file: !1, line: 697, type: !1749, scopeLine: 697, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1751)
!1749 = !DISubroutineType(types: !1750)
!1750 = !{null, !108, !5, !64}
!1751 = !{!1752, !1753, !1754, !1755, !1756}
!1752 = !DILocalVariable(name: "ptr", arg: 1, scope: !1748, file: !1, line: 697, type: !108)
!1753 = !DILocalVariable(name: "page_id", arg: 2, scope: !1748, file: !1, line: 697, type: !5)
!1754 = !DILocalVariable(name: "page_version", arg: 3, scope: !1748, file: !1, line: 697, type: !64)
!1755 = !DILocalVariable(name: "e", scope: !1748, file: !1, line: 698, type: !20)
!1756 = !DILocalVariable(name: "p", scope: !1748, file: !1, line: 699, type: !58)
!1757 = !DILocation(line: 0, scope: !1748)
!1758 = !DILocation(line: 699, column: 25, scope: !1748)
!1759 = !DILocation(line: 699, column: 22, scope: !1748)
!1760 = !DILocation(line: 701, column: 28, scope: !1748)
!1761 = !DILocation(line: 701, column: 5, scope: !1748)
!1762 = !DILocation(line: 702, column: 13, scope: !1763)
!1763 = distinct !DILexicalBlock(scope: !1748, file: !1, line: 702, column: 9)
!1764 = !DILocation(line: 702, column: 20, scope: !1763)
!1765 = !DILocation(line: 702, column: 23, scope: !1763)
!1766 = !DILocation(line: 702, column: 26, scope: !1763)
!1767 = !DILocation(line: 702, column: 34, scope: !1763)
!1768 = !DILocation(line: 702, column: 9, scope: !1748)
!1769 = !DILocation(line: 703, column: 9, scope: !1770)
!1770 = distinct !DILexicalBlock(scope: !1763, file: !1, line: 702, column: 51)
!1771 = !DILocation(line: 703, column: 19, scope: !1770)
!1772 = !DILocation(line: 704, column: 9, scope: !1770)
!1773 = !DILocation(line: 705, column: 5, scope: !1770)
!1774 = !DILocation(line: 706, column: 5, scope: !1748)
!1775 = !DILocation(line: 707, column: 1, scope: !1748)
!1776 = distinct !DISubprogram(name: "_next_version", scope: !1, file: !1, line: 151, type: !1777, scopeLine: 151, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1779)
!1777 = !DISubroutineType(types: !1778)
!1778 = !{!64, !20}
!1779 = !{!1780}
!1780 = !DILocalVariable(name: "e", arg: 1, scope: !1776, file: !1, line: 151, type: !20)
!1781 = !DILocation(line: 0, scope: !1776)
!1782 = !DILocation(line: 152, column: 15, scope: !1776)
!1783 = !DILocation(line: 152, column: 22, scope: !1776)
!1784 = !DILocation(line: 152, column: 12, scope: !1776)
!1785 = !DILocation(line: 152, column: 5, scope: !1776)
!1786 = !DISubprogram(name: "memset", scope: !322, file: !322, line: 61, type: !1787, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !320)
!1787 = !DISubroutineType(types: !1788)
!1788 = !{!108, !108, !34, !119}
!1789 = distinct !DISubprogram(name: "_wbuf_cb", scope: !1, file: !1, line: 467, type: !130, scopeLine: 467, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1790)
!1790 = !{!1791, !1792, !1793, !1794, !1795, !1796}
!1791 = !DILocalVariable(name: "ep", arg: 1, scope: !1789, file: !1, line: 467, type: !108)
!1792 = !DILocalVariable(name: "io", arg: 2, scope: !1789, file: !1, line: 467, type: !103)
!1793 = !DILocalVariable(name: "ret", arg: 3, scope: !1789, file: !1, line: 467, type: !34)
!1794 = !DILocalVariable(name: "e", scope: !1789, file: !1, line: 468, type: !20)
!1795 = !DILocalVariable(name: "p", scope: !1789, file: !1, line: 469, type: !58)
!1796 = !DILocalVariable(name: "w", scope: !1789, file: !1, line: 470, type: !85)
!1797 = !DILocation(line: 0, scope: !1789)
!1798 = !DILocation(line: 469, column: 25, scope: !1789)
!1799 = !DILocation(line: 469, column: 35, scope: !1789)
!1800 = !DILocation(line: 469, column: 22, scope: !1789)
!1801 = !DILocation(line: 470, column: 42, scope: !1789)
!1802 = !DILocation(line: 474, column: 8, scope: !1789)
!1803 = !DILocation(line: 474, column: 16, scope: !1789)
!1804 = !DILocation(line: 475, column: 28, scope: !1789)
!1805 = !DILocation(line: 475, column: 5, scope: !1789)
!1806 = !DILocation(line: 476, column: 5, scope: !1807)
!1807 = distinct !DILexicalBlock(scope: !1808, file: !1, line: 476, column: 5)
!1808 = distinct !DILexicalBlock(scope: !1789, file: !1, line: 476, column: 5)
!1809 = !DILocation(line: 477, column: 5, scope: !1810)
!1810 = distinct !DILexicalBlock(scope: !1811, file: !1, line: 477, column: 5)
!1811 = distinct !DILexicalBlock(scope: !1789, file: !1, line: 477, column: 5)
!1812 = !DILocation(line: 477, column: 5, scope: !1811)
!1813 = !DILocation(line: 478, column: 22, scope: !1789)
!1814 = !DILocation(line: 478, column: 16, scope: !1789)
!1815 = !DILocation(line: 479, column: 13, scope: !1789)
!1816 = !DILocation(line: 481, column: 9, scope: !1817)
!1817 = distinct !DILexicalBlock(scope: !1789, file: !1, line: 481, column: 9)
!1818 = !DILocation(line: 481, column: 26, scope: !1817)
!1819 = !DILocation(line: 481, column: 20, scope: !1817)
!1820 = !DILocation(line: 481, column: 9, scope: !1789)
!1821 = !DILocation(line: 482, column: 9, scope: !1817)
!1822 = !DILocation(line: 482, column: 12, scope: !1817)
!1823 = !DILocation(line: 482, column: 19, scope: !1817)
!1824 = !DILocation(line: 485, column: 28, scope: !1789)
!1825 = !DILocation(line: 485, column: 5, scope: !1789)
!1826 = !DILocation(line: 486, column: 18, scope: !1789)
!1827 = !DILocation(line: 486, column: 8, scope: !1789)
!1828 = !DILocation(line: 486, column: 13, scope: !1789)
!1829 = !DILocation(line: 487, column: 19, scope: !1789)
!1830 = !DILocation(line: 489, column: 19, scope: !1789)
!1831 = !DILocation(line: 489, column: 9, scope: !1789)
!1832 = !DILocation(line: 489, column: 14, scope: !1789)
!1833 = !DILocation(line: 490, column: 17, scope: !1789)
!1834 = !DILocation(line: 491, column: 5, scope: !1789)
!1835 = !DILocation(line: 492, column: 5, scope: !1789)
!1836 = !DILocation(line: 493, column: 1, scope: !1789)
!1837 = !DISubprogram(name: "pthread_cond_wait", scope: !316, file: !316, line: 986, type: !1838, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !320)
!1838 = !DISubroutineType(types: !1839)
!1839 = !{!34, !842, !1840}
!1840 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !319)
!1841 = distinct !DISubprogram(name: "_read_from_wbuf", scope: !1, file: !1, line: 715, type: !1842, scopeLine: 715, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1844)
!1842 = !DISubroutineType(types: !1843)
!1843 = !{!34, !58, !103}
!1844 = !{!1845, !1846, !1847, !1848, !1851, !1852}
!1845 = !DILocalVariable(name: "p", arg: 1, scope: !1841, file: !1, line: 715, type: !58)
!1846 = !DILocalVariable(name: "io", arg: 2, scope: !1841, file: !1, line: 715, type: !103)
!1847 = !DILocalVariable(name: "wbuf", scope: !1841, file: !1, line: 716, type: !85)
!1848 = !DILocalVariable(name: "x", scope: !1849, file: !1, line: 722, type: !34)
!1849 = distinct !DILexicalBlock(scope: !1850, file: !1, line: 721, column: 12)
!1850 = distinct !DILexicalBlock(scope: !1841, file: !1, line: 719, column: 9)
!1851 = !DILocalVariable(name: "off", scope: !1849, file: !1, line: 723, type: !5)
!1852 = !DILocalVariable(name: "iov", scope: !1853, file: !1, line: 726, type: !113)
!1853 = distinct !DILexicalBlock(scope: !1854, file: !1, line: 725, column: 42)
!1854 = distinct !DILexicalBlock(scope: !1855, file: !1, line: 725, column: 9)
!1855 = distinct !DILexicalBlock(scope: !1849, file: !1, line: 725, column: 9)
!1856 = !DILocation(line: 0, scope: !1841)
!1857 = !DILocation(line: 716, column: 28, scope: !1841)
!1858 = !DILocation(line: 717, column: 5, scope: !1859)
!1859 = distinct !DILexicalBlock(scope: !1860, file: !1, line: 717, column: 5)
!1860 = distinct !DILexicalBlock(scope: !1841, file: !1, line: 717, column: 5)
!1861 = !DILocation(line: 717, column: 5, scope: !1860)
!1862 = !DILocation(line: 718, column: 5, scope: !1863)
!1863 = distinct !DILexicalBlock(scope: !1864, file: !1, line: 718, column: 5)
!1864 = distinct !DILexicalBlock(scope: !1841, file: !1, line: 718, column: 5)
!1865 = !DILocation(line: 718, column: 5, scope: !1864)
!1866 = !DILocation(line: 719, column: 13, scope: !1850)
!1867 = !DILocation(line: 719, column: 17, scope: !1850)
!1868 = !DILocation(line: 719, column: 9, scope: !1841)
!1869 = !DILocation(line: 720, column: 16, scope: !1870)
!1870 = distinct !DILexicalBlock(scope: !1850, file: !1, line: 719, column: 26)
!1871 = !DILocation(line: 720, column: 20, scope: !1870)
!1872 = !DILocation(line: 720, column: 31, scope: !1870)
!1873 = !DILocation(line: 720, column: 57, scope: !1870)
!1874 = !DILocation(line: 720, column: 49, scope: !1870)
!1875 = !DILocation(line: 720, column: 35, scope: !1870)
!1876 = !DILocation(line: 720, column: 70, scope: !1870)
!1877 = !DILocation(line: 720, column: 66, scope: !1870)
!1878 = !DILocation(line: 720, column: 9, scope: !1870)
!1879 = !DILocation(line: 721, column: 5, scope: !1870)
!1880 = !DILocation(line: 0, scope: !1849)
!1881 = !DILocation(line: 725, column: 29, scope: !1854)
!1882 = !DILocation(line: 725, column: 23, scope: !1854)
!1883 = !DILocation(line: 725, column: 9, scope: !1855)
!1884 = !DILocation(line: 723, column: 47, scope: !1849)
!1885 = !DILocation(line: 723, column: 39, scope: !1849)
!1886 = !DILocation(line: 726, column: 38, scope: !1853)
!1887 = !DILocation(line: 0, scope: !1853)
!1888 = !DILocation(line: 727, column: 25, scope: !1853)
!1889 = !{!1890, !261, i64 0}
!1890 = !{!"iovec", !261, i64 0, !262, i64 8}
!1891 = !DILocation(line: 727, column: 41, scope: !1853)
!1892 = !DILocation(line: 727, column: 45, scope: !1853)
!1893 = !DILocation(line: 727, column: 57, scope: !1853)
!1894 = !{!1890, !262, i64 8}
!1895 = !DILocation(line: 727, column: 13, scope: !1853)
!1896 = !DILocation(line: 728, column: 25, scope: !1853)
!1897 = !DILocation(line: 725, column: 38, scope: !1854)
!1898 = distinct !{!1898, !1883, !1899, !314}
!1899 = !DILocation(line: 729, column: 9, scope: !1855)
!1900 = !DILocation(line: 728, column: 17, scope: !1853)
!1901 = !DILocation(line: 730, column: 5, scope: !1850)
!1902 = !DILocation(line: 731, column: 16, scope: !1841)
!1903 = !DILocation(line: 731, column: 5, scope: !1841)
!1904 = !DISubprogram(name: "pread", scope: !787, file: !787, line: 376, type: !1905, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !320)
!1905 = !DISubroutineType(types: !1906)
!1906 = !{!1907, !34, !108, !119, !418}
!1907 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !1908, line: 108, baseType: !1909)
!1908 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/types.h", directory: "", checksumkind: CSK_MD5, checksum: "20e2108af45064f5c7b77fc9416f0cce")
!1909 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !67, line: 193, baseType: !56)
!1910 = !DISubprogram(name: "preadv", scope: !1911, file: !1911, line: 67, type: !1912, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !320)
!1911 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/uio.h", directory: "", checksumkind: CSK_MD5, checksum: "b45afcbdd2bdf62d9ec67b3a109f51e9")
!1912 = !DISubroutineType(types: !1913)
!1913 = !{!1907, !34, !1914, !34, !418}
!1914 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1915, size: 64)
!1915 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !114)
!1916 = !DISubprogram(name: "pwrite", scope: !787, file: !787, line: 384, type: !1917, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !320)
!1917 = !DISubroutineType(types: !1918)
!1918 = !{!1907, !34, !327, !119, !418}
!1919 = distinct !DISubprogram(name: "_free_page", scope: !1, file: !1, line: 852, type: !1433, scopeLine: 852, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1920)
!1920 = !{!1921, !1922, !1923, !1924}
!1921 = !DILocalVariable(name: "e", arg: 1, scope: !1919, file: !1, line: 852, type: !20)
!1922 = !DILocalVariable(name: "p", arg: 2, scope: !1919, file: !1, line: 852, type: !58)
!1923 = !DILocalVariable(name: "tmp", scope: !1919, file: !1, line: 853, type: !58)
!1924 = !DILocalVariable(name: "prev", scope: !1919, file: !1, line: 854, type: !58)
!1925 = !DILocation(line: 0, scope: !1919)
!1926 = !DILocation(line: 856, column: 5, scope: !1919)
!1927 = !DILocation(line: 857, column: 33, scope: !1919)
!1928 = !DILocation(line: 857, column: 14, scope: !1919)
!1929 = !DILocation(line: 857, column: 27, scope: !1919)
!1930 = !DILocation(line: 858, column: 31, scope: !1919)
!1931 = !DILocation(line: 858, column: 14, scope: !1919)
!1932 = !DILocation(line: 858, column: 25, scope: !1919)
!1933 = !DILocation(line: 859, column: 14, scope: !1919)
!1934 = !DILocation(line: 859, column: 27, scope: !1919)
!1935 = !{!258, !262, i64 208}
!1936 = !DILocation(line: 860, column: 5, scope: !1919)
!1937 = !DILocation(line: 861, column: 28, scope: !1919)
!1938 = !DILocation(line: 861, column: 5, scope: !1919)
!1939 = !DILocation(line: 863, column: 14, scope: !1919)
!1940 = !DILocation(line: 863, column: 30, scope: !1919)
!1941 = !DILocation(line: 863, column: 11, scope: !1919)
!1942 = !DILocation(line: 864, column: 5, scope: !1919)
!1943 = !DILocation(line: 865, column: 17, scope: !1944)
!1944 = distinct !DILexicalBlock(scope: !1945, file: !1, line: 865, column: 13)
!1945 = distinct !DILexicalBlock(scope: !1919, file: !1, line: 864, column: 17)
!1946 = !DILocation(line: 865, column: 13, scope: !1945)
!1947 = distinct !{!1947, !1942, !1948, !314}
!1948 = !DILocation(line: 876, column: 5, scope: !1919)
!1949 = !DILocation(line: 874, column: 16, scope: !1945)
!1950 = !DILocation(line: 866, column: 17, scope: !1951)
!1951 = distinct !DILexicalBlock(scope: !1952, file: !1, line: 866, column: 17)
!1952 = distinct !DILexicalBlock(scope: !1944, file: !1, line: 865, column: 23)
!1953 = !DILocation(line: 866, column: 17, scope: !1952)
!1954 = !DILocation(line: 867, column: 30, scope: !1955)
!1955 = distinct !DILexicalBlock(scope: !1951, file: !1, line: 866, column: 23)
!1956 = !DILocation(line: 867, column: 35, scope: !1955)
!1957 = !DILocation(line: 867, column: 23, scope: !1955)
!1958 = !DILocation(line: 867, column: 28, scope: !1955)
!1959 = !DILocation(line: 868, column: 13, scope: !1955)
!1960 = !DILocation(line: 869, column: 46, scope: !1961)
!1961 = distinct !DILexicalBlock(scope: !1951, file: !1, line: 868, column: 20)
!1962 = !DILocation(line: 869, column: 51, scope: !1961)
!1963 = !DILocation(line: 869, column: 44, scope: !1961)
!1964 = !DILocation(line: 871, column: 18, scope: !1952)
!1965 = !DILocation(line: 871, column: 23, scope: !1952)
!1966 = !DILocation(line: 872, column: 13, scope: !1952)
!1967 = !DILocation(line: 875, column: 20, scope: !1945)
!1968 = !DILocation(line: 878, column: 8, scope: !1919)
!1969 = !DILocation(line: 878, column: 16, scope: !1919)
!1970 = !DILocation(line: 879, column: 18, scope: !1919)
!1971 = !DILocation(line: 881, column: 8, scope: !1919)
!1972 = !DILocation(line: 881, column: 18, scope: !1919)
!1973 = !DILocation(line: 882, column: 8, scope: !1919)
!1974 = !DILocation(line: 882, column: 16, scope: !1919)
!1975 = !DILocation(line: 883, column: 15, scope: !1919)
!1976 = !DILocation(line: 884, column: 8, scope: !1919)
!1977 = !DILocation(line: 884, column: 15, scope: !1919)
!1978 = !DILocation(line: 885, column: 8, scope: !1919)
!1979 = !DILocation(line: 885, column: 15, scope: !1919)
!1980 = !DILocation(line: 886, column: 8, scope: !1919)
!1981 = !DILocation(line: 886, column: 13, scope: !1919)
!1982 = !DILocation(line: 889, column: 12, scope: !1983)
!1983 = distinct !DILexicalBlock(scope: !1919, file: !1, line: 889, column: 9)
!1984 = !DILocation(line: 889, column: 24, scope: !1983)
!1985 = !DILocation(line: 889, column: 9, scope: !1919)
!1986 = !DILocation(line: 890, column: 19, scope: !1987)
!1987 = distinct !DILexicalBlock(scope: !1983, file: !1, line: 889, column: 30)
!1988 = !DILocation(line: 890, column: 22, scope: !1987)
!1989 = !DILocation(line: 892, column: 5, scope: !1987)
!1990 = !DILocation(line: 893, column: 19, scope: !1991)
!1991 = distinct !DILexicalBlock(scope: !1983, file: !1, line: 892, column: 12)
!1992 = !DILocation(line: 893, column: 22, scope: !1991)
!1993 = !DILocation(line: 0, scope: !1983)
!1994 = !DILocation(line: 896, column: 8, scope: !1919)
!1995 = !DILocation(line: 896, column: 17, scope: !1919)
!1996 = !DILocation(line: 897, column: 5, scope: !1919)
!1997 = !DILocation(line: 898, column: 1, scope: !1919)
