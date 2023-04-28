; ModuleID = 'restart.c'
source_filename = "restart.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct._restart_data_cb = type { i8*, %struct._restart_data_cb*, i32 (i8*, i8*, i8*)*, i32 (i8*, i8*, i8*)*, [255 x i8] }
%struct.settings = type { i64, i32, i32, i32, i8*, i32, i32, i64, i32, i8*, i8*, i32, double, i32, i32, i32, i8, i32, i32, i8, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i32, double, i32, i32, i8, i32, i8, i8, i8*, i32, i32, i32, i32, double, double, i32, i8, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, double, double, i8, i32, i32, i8*, i32 }
%emit_function_args_ty = type { i32, i32, i32 }
%emit_arcs_args_ty = type { i32, i64* }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct.restart_cb_ctx = type { %struct._IO_FILE*, %struct._restart_data_cb*, i8*, i8 }
%struct.timeval = type { i64, i64 }
%struct._stritem = type { %struct._stritem*, %struct._stritem*, %struct._stritem*, i32, i32, i32, i16, i16, i8, i8, [0 x %union.anon] }
%union.anon = type { i64 }
%struct._strchunk = type { %struct._strchunk*, %struct._strchunk*, %struct._stritem*, i32, i32, i32, i16, i16, i8, i8, [0 x i8] }

@memory_file = dso_local local_unnamed_addr global i8* null, align 8, !dbg !0
@stderr = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [48 x i8] c"[restart] failed to allocate callback register\0A\00", align 1
@cb_stack = internal unnamed_addr global %struct._restart_data_cb* null, align 8, !dbg !377
@.str.1 = private unnamed_addr constant [60 x i8] c"[restart] internal handler for metadata tag not found: %s:\0A\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"[restart] invalid metadata line:\0A\0A%s\0A\00", align 1
@.str.3 = private unnamed_addr constant [77 x i8] c"[restart] fatal error while saving metadata state, value too long for: %s %s\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"K%s %s\0A\00", align 1
@mmap_fd = internal unnamed_addr global i32 0, align 4, !dbg !379
@.str.5 = private unnamed_addr constant [29 x i8] c"failed to open file for mmap\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"ftruncate failed\00", align 1
@.str.7 = private unnamed_addr constant [77 x i8] c"[restart] memory limit not divisible evenly by pagesize (please report bug)\0A\00", align 1
@mmap_base = internal unnamed_addr global i8* null, align 8, !dbg !381
@.str.8 = private unnamed_addr constant [25 x i8] c"failed to mmap, aborting\00", align 1
@slabmem_limit = internal unnamed_addr global i64 0, align 8, !dbg !383
@.str.9 = private unnamed_addr constant [34 x i8] c"[restart] failed to save metadata\00", align 1
@.str.10 = private unnamed_addr constant [41 x i8] c"[restart] failed to munmap shared memory\00", align 1
@.str.11 = private unnamed_addr constant [43 x i8] c"[restart] failed to close shared memory fd\00", align 1
@settings = external dso_local local_unnamed_addr global %struct.settings, align 8
@.str.12 = private unnamed_addr constant [53 x i8] c"[restart] original memory base: [%p] new base: [%p]\0A\00", align 1
@.str.13 = private unnamed_addr constant [34 x i8] c"[restart] recovery start [%d.%d]\0A\00", align 1
@.str.14 = private unnamed_addr constant [29 x i8] c"page_remain % page_size == 0\00", align 1
@.str.15 = private unnamed_addr constant [10 x i8] c"restart.c\00", align 1
@__PRETTY_FUNCTION__.restart_fixup = private unnamed_addr constant [35 x i8] c"unsigned int restart_fixup(void *)\00", align 1
@.str.16 = private unnamed_addr constant [25 x i8] c"page_remain == page_size\00", align 1
@.str.17 = private unnamed_addr constant [32 x i8] c"[restart] recovery end [%d.%d]\0A\00", align 1
@.str.18 = private unnamed_addr constant [6 x i8] c".meta\00", align 1
@.str.19 = private unnamed_addr constant [55 x i8] c"[restart] failed to allocate memory for restart check\0A\00", align 1
@.str.20 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.21 = private unnamed_addr constant [62 x i8] c"[restart] no metadata save file, starting with a clean cache\0A\00", align 1
@.str.22 = private unnamed_addr constant [33 x i8] c"[restart] corrupt metadata file\0A\00", align 1
@.str.23 = private unnamed_addr constant [51 x i8] c"[restart] Failed to read a tag from metadata file\0A\00", align 1
@.str.24 = private unnamed_addr constant [68 x i8] c"[restart] failed to validate metadata, starting with a clean cache\0A\00", align 1
@.str.25 = private unnamed_addr constant [58 x i8] c"[restart] failed to allocate memory during metadata save\0A\00", align 1
@.str.26 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.27 = private unnamed_addr constant [30 x i8] c"failed to write metadata file\00", align 1
@.str.28 = private unnamed_addr constant [5 x i8] c"T%s\0A\00", align 1
@__llvm_gcov_ctr = internal global [4 x i64] zeroinitializer
@__llvm_gcov_ctr.29 = internal global [14 x i64] zeroinitializer
@__llvm_gcov_ctr.30 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.31 = internal global [2 x i64] zeroinitializer
@__llvm_gcov_ctr.32 = internal global [6 x i64] zeroinitializer
@__llvm_gcov_ctr.33 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.34 = internal global [11 x i64] zeroinitializer
@__llvm_gcov_ctr.35 = internal global [4 x i64] zeroinitializer
@__llvm_gcov_ctr.36 = internal global [5 x i64] zeroinitializer
@__llvm_gcov_ctr.37 = internal global [18 x i64] zeroinitializer
@0 = private unnamed_addr constant [55 x i8] c"/home/xuheng/blackbox/llvm-test/memcached/restart.gcda\00", align 1
@__llvm_internal_gcov_emit_function_args.0 = internal unnamed_addr constant [10 x %emit_function_args_ty] [%emit_function_args_ty { i32 0, i32 -737912061, i32 139929467 }, %emit_function_args_ty { i32 1, i32 1267185046, i32 139929467 }, %emit_function_args_ty { i32 2, i32 290215283, i32 139929467 }, %emit_function_args_ty { i32 3, i32 955608338, i32 139929467 }, %emit_function_args_ty { i32 4, i32 -372336126, i32 139929467 }, %emit_function_args_ty { i32 5, i32 -1159708563, i32 139929467 }, %emit_function_args_ty { i32 6, i32 96088467, i32 139929467 }, %emit_function_args_ty { i32 7, i32 223740450, i32 139929467 }, %emit_function_args_ty { i32 8, i32 -1151949843, i32 139929467 }, %emit_function_args_ty { i32 9, i32 2099085724, i32 139929467 }]
@__llvm_internal_gcov_emit_arcs_args.0 = internal unnamed_addr constant [10 x %emit_arcs_args_ty] [%emit_arcs_args_ty { i32 4, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @__llvm_gcov_ctr, i32 0, i32 0) }, %emit_arcs_args_ty { i32 14, i64* getelementptr inbounds ([14 x i64], [14 x i64]* @__llvm_gcov_ctr.29, i32 0, i32 0) }, %emit_arcs_args_ty { i32 1, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.30, i32 0, i32 0) }, %emit_arcs_args_ty { i32 2, i64* getelementptr inbounds ([2 x i64], [2 x i64]* @__llvm_gcov_ctr.31, i32 0, i32 0) }, %emit_arcs_args_ty { i32 6, i64* getelementptr inbounds ([6 x i64], [6 x i64]* @__llvm_gcov_ctr.32, i32 0, i32 0) }, %emit_arcs_args_ty { i32 1, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.33, i32 0, i32 0) }, %emit_arcs_args_ty { i32 11, i64* getelementptr inbounds ([11 x i64], [11 x i64]* @__llvm_gcov_ctr.34, i32 0, i32 0) }, %emit_arcs_args_ty { i32 4, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @__llvm_gcov_ctr.35, i32 0, i32 0) }, %emit_arcs_args_ty { i32 5, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @__llvm_gcov_ctr.36, i32 0, i32 0) }, %emit_arcs_args_ty { i32 18, i64* getelementptr inbounds ([18 x i64], [18 x i64]* @__llvm_gcov_ctr.37, i32 0, i32 0) }]
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 0, void ()* @__llvm_gcov_init, i8* null }]

; Function Attrs: noinline nounwind uwtable
define dso_local void @restart_register(i8* noundef %tag, i32 (i8*, i8*, i8*)* noundef %ccb, i32 (i8*, i8*, i8*)* noundef %scb, i8* noundef %data) local_unnamed_addr #0 !dbg !391 {
entry:
  call void @llvm.dbg.value(metadata i8* %tag, metadata !395, metadata !DIExpression()), !dbg !403
  call void @llvm.dbg.value(metadata i32 (i8*, i8*, i8*)* %ccb, metadata !396, metadata !DIExpression()), !dbg !403
  call void @llvm.dbg.value(metadata i32 (i8*, i8*, i8*)* %scb, metadata !397, metadata !DIExpression()), !dbg !403
  call void @llvm.dbg.value(metadata i8* %data, metadata !398, metadata !DIExpression()), !dbg !403
  %call = tail call noalias i8* @calloc(i64 noundef 1, i64 noundef 288) #12, !dbg !404
  call void @llvm.dbg.value(metadata i8* %call, metadata !399, metadata !DIExpression()), !dbg !403
  %cmp = icmp eq i8* %call, null, !dbg !405
  br i1 %cmp, label %if.then, label %if.end, !dbg !407

if.then:                                          ; preds = %entry
  %gcov_ctr = load i64, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @__llvm_gcov_ctr, i64 0, i64 0), align 16, !dbg !408
  %0 = add i64 %gcov_ctr, 1, !dbg !408
  store i64 %0, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @__llvm_gcov_ctr, i64 0, i64 0), align 16, !dbg !408
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !408, !tbaa !410
  %call1 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %1, i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0)) #12, !dbg !414
  tail call void @abort() #13, !dbg !415
  unreachable, !dbg !415

if.end:                                           ; preds = %entry
  %2 = load %struct._restart_data_cb*, %struct._restart_data_cb** @cb_stack, align 8, !dbg !416, !tbaa !410
  %cmp2 = icmp eq %struct._restart_data_cb* %2, null, !dbg !417
  br i1 %cmp2, label %if.then3, label %while.cond.preheader, !dbg !418

while.cond.preheader:                             ; preds = %if.end
  call void @llvm.dbg.value(metadata %struct._restart_data_cb* %2, metadata !400, metadata !DIExpression()), !dbg !419
  %next27 = getelementptr inbounds %struct._restart_data_cb, %struct._restart_data_cb* %2, i64 0, i32 1, !dbg !420
  %3 = load %struct._restart_data_cb*, %struct._restart_data_cb** %next27, align 8, !dbg !420, !tbaa !421
  %cmp4.not28 = icmp eq %struct._restart_data_cb* %3, null, !dbg !423
  br i1 %cmp4.not28, label %while.end, label %while.body.preheader, !dbg !424

while.body.preheader:                             ; preds = %while.cond.preheader
  %gcov_ctr14.pre = load i64, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @__llvm_gcov_ctr, i64 0, i64 2), align 16, !dbg !425
  br label %while.body, !dbg !424

if.then3:                                         ; preds = %if.end
  %gcov_ctr13 = load i64, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @__llvm_gcov_ctr, i64 0, i64 1), align 8, !dbg !427
  %4 = add i64 %gcov_ctr13, 1, !dbg !427
  store i64 %4, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @__llvm_gcov_ctr, i64 0, i64 1), align 8, !dbg !427
  br label %if.end7, !dbg !429

while.body:                                       ; preds = %while.body.preheader, %while.body
  %gcov_ctr14 = phi i64 [ %5, %while.body ], [ %gcov_ctr14.pre, %while.body.preheader ], !dbg !425
  %next29 = phi %struct._restart_data_cb** [ %next, %while.body ], [ %next27, %while.body.preheader ]
  %5 = add i64 %gcov_ctr14, 1, !dbg !425
  store i64 %5, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @__llvm_gcov_ctr, i64 0, i64 2), align 16, !dbg !425
  %6 = load %struct._restart_data_cb*, %struct._restart_data_cb** %next29, align 8, !dbg !430, !tbaa !421
  call void @llvm.dbg.value(metadata %struct._restart_data_cb* %6, metadata !400, metadata !DIExpression()), !dbg !419
  %next = getelementptr inbounds %struct._restart_data_cb, %struct._restart_data_cb* %6, i64 0, i32 1, !dbg !420
  %7 = load %struct._restart_data_cb*, %struct._restart_data_cb** %next, align 8, !dbg !420, !tbaa !421
  %cmp4.not = icmp eq %struct._restart_data_cb* %7, null, !dbg !423
  br i1 %cmp4.not, label %while.end, label %while.body, !dbg !424, !llvm.loop !431

while.end:                                        ; preds = %while.body, %while.cond.preheader
  %next.lcssa = phi %struct._restart_data_cb** [ %next27, %while.cond.preheader ], [ %next, %while.body ], !dbg !420
  %gcov_ctr15 = load i64, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @__llvm_gcov_ctr, i64 0, i64 3), align 8, !dbg !434
  %8 = add i64 %gcov_ctr15, 1, !dbg !434
  store i64 %8, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @__llvm_gcov_ctr, i64 0, i64 3), align 8, !dbg !434
  %9 = bitcast %struct._restart_data_cb** %next.lcssa to i8**, !dbg !435
  br label %if.end7

if.end7:                                          ; preds = %while.end, %if.then3
  %.sink = phi i8** [ %9, %while.end ], [ bitcast (%struct._restart_data_cb** @cb_stack to i8**), %if.then3 ]
  store i8* %call, i8** %.sink, align 8, !dbg !436, !tbaa !410
  %tag8 = getelementptr inbounds i8, i8* %call, i64 32, !dbg !437
  %call9 = tail call zeroext i1 @safe_strcpy(i8* noundef nonnull %tag8, i8* noundef %tag, i64 noundef 255) #12, !dbg !438
  %data10 = bitcast i8* %call to i8**, !dbg !439
  store i8* %data, i8** %data10, align 8, !dbg !440, !tbaa !441
  %ccb11 = getelementptr inbounds i8, i8* %call, i64 16, !dbg !442
  %10 = bitcast i8* %ccb11 to i32 (i8*, i8*, i8*)**, !dbg !442
  store i32 (i8*, i8*, i8*)* %ccb, i32 (i8*, i8*, i8*)** %10, align 8, !dbg !443, !tbaa !444
  %scb12 = getelementptr inbounds i8, i8* %call, i64 24, !dbg !445
  %11 = bitcast i8* %scb12 to i32 (i8*, i8*, i8*)**, !dbg !445
  store i32 (i8*, i8*, i8*)* %scb, i32 (i8*, i8*, i8*)** %11, align 8, !dbg !446, !tbaa !447
  ret void, !dbg !448
}

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: nounwind
declare !dbg !449 dso_local noalias i8* @calloc(i64 noundef, i64 noundef) local_unnamed_addr #3

declare !dbg !454 dso_local i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) local_unnamed_addr #4

; Function Attrs: noreturn nounwind
declare !dbg !460 dso_local void @abort() local_unnamed_addr #5

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

declare !dbg !463 dso_local zeroext i1 @safe_strcpy(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @restart_get_kv(i8* nocapture noundef %ctx, i8** noundef writeonly %key, i8** noundef writeonly %val) local_unnamed_addr #0 !dbg !468 {
entry:
  %line = alloca i8*, align 8
  %len = alloca i64, align 8
  call void @llvm.dbg.value(metadata i8* %ctx, metadata !473, metadata !DIExpression()), !dbg !487
  call void @llvm.dbg.value(metadata i8** %key, metadata !474, metadata !DIExpression()), !dbg !487
  call void @llvm.dbg.value(metadata i8** %val, metadata !475, metadata !DIExpression()), !dbg !487
  %0 = bitcast i8** %line to i8*, !dbg !488
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #14, !dbg !488
  call void @llvm.dbg.value(metadata i8* null, metadata !476, metadata !DIExpression()), !dbg !487
  store i8* null, i8** %line, align 8, !dbg !489, !tbaa !410
  %1 = bitcast i64* %len to i8*, !dbg !490
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #14, !dbg !490
  call void @llvm.dbg.value(metadata i64 0, metadata !477, metadata !DIExpression()), !dbg !487
  store i64 0, i64* %len, align 8, !dbg !491, !tbaa !492
  call void @llvm.dbg.value(metadata %struct._restart_data_cb* null, metadata !478, metadata !DIExpression()), !dbg !487
  call void @llvm.dbg.value(metadata i8* %ctx, metadata !479, metadata !DIExpression()), !dbg !487
  %line1 = getelementptr inbounds i8, i8* %ctx, i64 16, !dbg !494
  %2 = bitcast i8* %line1 to i8**, !dbg !494
  %3 = load i8*, i8** %2, align 8, !dbg !494, !tbaa !496
  %cmp.not = icmp eq i8* %3, null, !dbg !499
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !500

if.then:                                          ; preds = %entry
  %gcov_ctr = load i64, i64* getelementptr inbounds ([14 x i64], [14 x i64]* @__llvm_gcov_ctr.29, i64 0, i64 0), align 16, !dbg !501
  %4 = add i64 %gcov_ctr, 1, !dbg !501
  store i64 %4, i64* getelementptr inbounds ([14 x i64], [14 x i64]* @__llvm_gcov_ctr.29, i64 0, i64 0), align 16, !dbg !501
  tail call void @free(i8* noundef nonnull %3) #12, !dbg !503
  store i8* null, i8** %2, align 8, !dbg !504, !tbaa !496
  br label %if.end, !dbg !505

if.end:                                           ; preds = %if.then, %entry
  %f = bitcast i8* %ctx to %struct._IO_FILE**, !dbg !506
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8, !dbg !506, !tbaa !507
  call void @llvm.dbg.value(metadata i8** %line, metadata !476, metadata !DIExpression(DW_OP_deref)), !dbg !487
  call void @llvm.dbg.value(metadata i64* %len, metadata !477, metadata !DIExpression(DW_OP_deref)), !dbg !487
  %call = call i64 @getline(i8** noundef nonnull %line, i64* noundef nonnull %len, %struct._IO_FILE* noundef %5) #15, !dbg !508
  %cmp4.not = icmp eq i64 %call, -1, !dbg !509
  br i1 %cmp4.not, label %if.else58, label %if.then5, !dbg !510

if.then5:                                         ; preds = %if.end
  %6 = load i8*, i8** %line, align 8, !dbg !511, !tbaa !410
  call void @llvm.dbg.value(metadata i8* %6, metadata !476, metadata !DIExpression()), !dbg !487
  call void @llvm.dbg.value(metadata i8* %6, metadata !480, metadata !DIExpression()), !dbg !512
  %7 = load i8, i8* %6, align 1, !dbg !513, !tbaa !514
  %cmp6.not105 = icmp eq i8 %7, 10, !dbg !515
  br i1 %cmp6.not105, label %while.end, label %while.body.preheader, !dbg !516

while.body.preheader:                             ; preds = %if.then5
  %gcov_ctr64.pre = load i64, i64* getelementptr inbounds ([14 x i64], [14 x i64]* @__llvm_gcov_ctr.29, i64 0, i64 1), align 8, !dbg !517
  br label %while.body, !dbg !516

while.body:                                       ; preds = %while.body.preheader, %while.body
  %gcov_ctr64 = phi i64 [ %8, %while.body ], [ %gcov_ctr64.pre, %while.body.preheader ], !dbg !517
  %p.0106 = phi i8* [ %incdec.ptr, %while.body ], [ %6, %while.body.preheader ]
  call void @llvm.dbg.value(metadata i8* %p.0106, metadata !480, metadata !DIExpression()), !dbg !512
  %8 = add i64 %gcov_ctr64, 1, !dbg !517
  store i64 %8, i64* getelementptr inbounds ([14 x i64], [14 x i64]* @__llvm_gcov_ctr.29, i64 0, i64 1), align 8, !dbg !517
  %incdec.ptr = getelementptr inbounds i8, i8* %p.0106, i64 1, !dbg !517
  call void @llvm.dbg.value(metadata i8* %incdec.ptr, metadata !480, metadata !DIExpression()), !dbg !512
  %9 = load i8, i8* %incdec.ptr, align 1, !dbg !513, !tbaa !514
  %cmp6.not = icmp eq i8 %9, 10, !dbg !515
  br i1 %cmp6.not, label %while.end, label %while.body, !dbg !516, !llvm.loop !519

while.end:                                        ; preds = %while.body, %if.then5
  %p.0.lcssa = phi i8* [ %6, %if.then5 ], [ %incdec.ptr, %while.body ], !dbg !512
  store i8 0, i8* %p.0.lcssa, align 1, !dbg !521, !tbaa !514
  %10 = load i8*, i8** %line, align 8, !dbg !522, !tbaa !410
  call void @llvm.dbg.value(metadata i8* %10, metadata !476, metadata !DIExpression()), !dbg !487
  %11 = load i8, i8* %10, align 1, !dbg !522, !tbaa !514
  switch i8 %11, label %if.else55 [
    i8 84, label %while.cond12.preheader
    i8 75, label %if.then33
  ], !dbg !523

while.cond12.preheader:                           ; preds = %while.end
  %cb.0111 = load %struct._restart_data_cb*, %struct._restart_data_cb** @cb_stack, align 8, !dbg !524, !tbaa !410
  call void @llvm.dbg.value(metadata %struct._restart_data_cb* %cb.0111, metadata !478, metadata !DIExpression()), !dbg !487
  %cond101112 = icmp eq %struct._restart_data_cb* %cb.0111, null, !dbg !526
  br i1 %cond101112, label %if.then24, label %while.body15.lr.ph, !dbg !526

while.body15.lr.ph:                               ; preds = %while.cond12.preheader
  %add.ptr = getelementptr inbounds i8, i8* %10, i64 1
  br label %while.body15, !dbg !526

while.body15:                                     ; preds = %while.body15.lr.ph, %if.end20
  %cb.0113 = phi %struct._restart_data_cb* [ %cb.0111, %while.body15.lr.ph ], [ %cb.0, %if.end20 ]
  %arraydecay = getelementptr inbounds %struct._restart_data_cb, %struct._restart_data_cb* %cb.0113, i64 0, i32 4, i64 0, !dbg !527
  call void @llvm.dbg.value(metadata i8* %10, metadata !476, metadata !DIExpression()), !dbg !487
  %call16 = call i32 @strcmp(i8* noundef nonnull %arraydecay, i8* noundef nonnull %add.ptr) #16, !dbg !530
  %cmp17 = icmp eq i32 %call16, 0, !dbg !531
  br i1 %cmp17, label %if.then19, label %if.end20, !dbg !532

if.then19:                                        ; preds = %while.body15
  %gcov_ctr65 = load i64, i64* getelementptr inbounds ([14 x i64], [14 x i64]* @__llvm_gcov_ctr.29, i64 0, i64 2), align 16, !dbg !533
  %12 = add i64 %gcov_ctr65, 1, !dbg !533
  store i64 %12, i64* getelementptr inbounds ([14 x i64], [14 x i64]* @__llvm_gcov_ctr.29, i64 0, i64 2), align 16, !dbg !533
  %cb28 = getelementptr inbounds i8, i8* %ctx, i64 8, !dbg !535
  %13 = bitcast i8* %cb28 to %struct._restart_data_cb**, !dbg !535
  store %struct._restart_data_cb* %cb.0113, %struct._restart_data_cb** %13, align 8, !dbg !536, !tbaa !537
  %14 = load <2 x i64>, <2 x i64>* bitcast (i64* getelementptr inbounds ([14 x i64], [14 x i64]* @__llvm_gcov_ctr.29, i64 0, i64 11) to <2 x i64>*), align 8, !dbg !538
  %15 = add <2 x i64> %14, <i64 1, i64 1>, !dbg !538
  store <2 x i64> %15, <2 x i64>* bitcast (i64* getelementptr inbounds ([14 x i64], [14 x i64]* @__llvm_gcov_ctr.29, i64 0, i64 11) to <2 x i64>*), align 8, !dbg !538
  br label %cleanup60, !dbg !539

if.end20:                                         ; preds = %while.body15
  %gcov_ctr66 = load i64, i64* getelementptr inbounds ([14 x i64], [14 x i64]* @__llvm_gcov_ctr.29, i64 0, i64 3), align 8, !dbg !540
  %16 = add i64 %gcov_ctr66, 1, !dbg !540
  store i64 %16, i64* getelementptr inbounds ([14 x i64], [14 x i64]* @__llvm_gcov_ctr.29, i64 0, i64 3), align 8, !dbg !540
  %next = getelementptr inbounds %struct._restart_data_cb, %struct._restart_data_cb* %cb.0113, i64 0, i32 1, !dbg !541
  call void @llvm.dbg.value(metadata %struct._restart_data_cb* undef, metadata !478, metadata !DIExpression()), !dbg !487
  %cb.0 = load %struct._restart_data_cb*, %struct._restart_data_cb** %next, align 8, !dbg !524, !tbaa !410
  call void @llvm.dbg.value(metadata %struct._restart_data_cb* %cb.0, metadata !478, metadata !DIExpression()), !dbg !487
  %cond101 = icmp eq %struct._restart_data_cb* %cb.0, null, !dbg !526
  br i1 %cond101, label %if.then24, label %while.body15, !dbg !526, !llvm.loop !542

if.then24:                                        ; preds = %if.end20, %while.cond12.preheader
  %gcov_ctr67 = load i64, i64* getelementptr inbounds ([14 x i64], [14 x i64]* @__llvm_gcov_ctr.29, i64 0, i64 4), align 16, !dbg !544
  %17 = add i64 %gcov_ctr67, 1, !dbg !544
  store i64 %17, i64* getelementptr inbounds ([14 x i64], [14 x i64]* @__llvm_gcov_ctr.29, i64 0, i64 4), align 16, !dbg !544
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !544, !tbaa !410
  call void @llvm.dbg.value(metadata i8* %10, metadata !476, metadata !DIExpression()), !dbg !487
  %add.ptr25 = getelementptr inbounds i8, i8* %10, i64 1, !dbg !547
  %call26 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %18, i8* noundef getelementptr inbounds ([60 x i8], [60 x i8]* @.str.1, i64 0, i64 0), i8* noundef nonnull %add.ptr25) #12, !dbg !548
  br label %cleanup60, !dbg !549

if.then33:                                        ; preds = %while.end
  %add.ptr35 = getelementptr inbounds i8, i8* %10, i64 1, !dbg !550
  call void @llvm.dbg.value(metadata i8* %add.ptr35, metadata !483, metadata !DIExpression()), !dbg !551
  %cmp36.not = icmp eq i8** %key, null, !dbg !552
  br i1 %cmp36.not, label %if.end39, label %if.then38, !dbg !554

if.then38:                                        ; preds = %if.then33
  %gcov_ctr68 = load i64, i64* getelementptr inbounds ([14 x i64], [14 x i64]* @__llvm_gcov_ctr.29, i64 0, i64 5), align 8, !dbg !555
  %19 = add i64 %gcov_ctr68, 1, !dbg !555
  store i64 %19, i64* getelementptr inbounds ([14 x i64], [14 x i64]* @__llvm_gcov_ctr.29, i64 0, i64 5), align 8, !dbg !555
  store i8* %add.ptr35, i8** %key, align 8, !dbg !557, !tbaa !410
  br label %if.end39, !dbg !558

if.end39:                                         ; preds = %if.then38, %if.then33
  call void @llvm.dbg.value(metadata i8* %add.ptr35, metadata !483, metadata !DIExpression()), !dbg !551
  %20 = load i8, i8* %add.ptr35, align 1, !dbg !559, !tbaa !514
  %cmp42.not107 = icmp eq i8 %20, 32, !dbg !560
  br i1 %cmp42.not107, label %while.end48, label %land.rhs.lr.ph, !dbg !561

land.rhs.lr.ph:                                   ; preds = %if.end39
  %sub.ptr.rhs.cast = ptrtoint i8* %10 to i64
  %21 = load i64, i64* %len, align 8, !tbaa !492
  %umax = call i64 @llvm.umax.i64(i64 %21, i64 1), !dbg !561
  %scevgep = getelementptr i8, i8* %10, i64 %umax, !dbg !561
  %gcov_ctr69.pre = load i64, i64* getelementptr inbounds ([14 x i64], [14 x i64]* @__llvm_gcov_ctr.29, i64 0, i64 6), align 16, !dbg !562
  br label %land.rhs, !dbg !561

land.rhs:                                         ; preds = %land.rhs.lr.ph, %while.body46
  %gcov_ctr69 = phi i64 [ %gcov_ctr69.pre, %land.rhs.lr.ph ], [ %22, %while.body46 ], !dbg !562
  %p34.0108 = phi i8* [ %add.ptr35, %land.rhs.lr.ph ], [ %incdec.ptr47, %while.body46 ]
  call void @llvm.dbg.value(metadata i8* %p34.0108, metadata !483, metadata !DIExpression()), !dbg !551
  %22 = add i64 %gcov_ctr69, 1, !dbg !562
  store i64 %22, i64* getelementptr inbounds ([14 x i64], [14 x i64]* @__llvm_gcov_ctr.29, i64 0, i64 6), align 16, !dbg !562
  call void @llvm.dbg.value(metadata i8* %10, metadata !476, metadata !DIExpression()), !dbg !487
  %sub.ptr.lhs.cast = ptrtoint i8* %p34.0108 to i64, !dbg !563
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !563
  call void @llvm.dbg.value(metadata i64 %21, metadata !477, metadata !DIExpression()), !dbg !487
  %cmp44 = icmp ult i64 %sub.ptr.sub, %21, !dbg !564
  br i1 %cmp44, label %while.body46, label %while.end48, !dbg !565

while.body46:                                     ; preds = %land.rhs
  %gcov_ctr70 = load i64, i64* getelementptr inbounds ([14 x i64], [14 x i64]* @__llvm_gcov_ctr.29, i64 0, i64 7), align 8, !dbg !566
  %23 = add i64 %gcov_ctr70, 1, !dbg !566
  store i64 %23, i64* getelementptr inbounds ([14 x i64], [14 x i64]* @__llvm_gcov_ctr.29, i64 0, i64 7), align 8, !dbg !566
  %incdec.ptr47 = getelementptr inbounds i8, i8* %p34.0108, i64 1, !dbg !566
  call void @llvm.dbg.value(metadata i8* %incdec.ptr47, metadata !483, metadata !DIExpression()), !dbg !551
  %24 = load i8, i8* %incdec.ptr47, align 1, !dbg !559, !tbaa !514
  %cmp42.not = icmp eq i8 %24, 32, !dbg !560
  br i1 %cmp42.not, label %while.end48, label %land.rhs, !dbg !561, !llvm.loop !568

while.end48:                                      ; preds = %land.rhs, %while.body46, %if.end39
  %p34.0.lcssa = phi i8* [ %add.ptr35, %if.end39 ], [ %incdec.ptr47, %while.body46 ], [ %scevgep, %land.rhs ], !dbg !551
  store i8 0, i8* %p34.0.lcssa, align 1, !dbg !570, !tbaa !514
  call void @llvm.dbg.value(metadata i8* %p34.0.lcssa, metadata !483, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !551
  %cmp50.not = icmp eq i8** %val, null, !dbg !571
  br i1 %cmp50.not, label %if.end53, label %if.then52, !dbg !573

if.then52:                                        ; preds = %while.end48
  %incdec.ptr49 = getelementptr inbounds i8, i8* %p34.0.lcssa, i64 1, !dbg !574
  call void @llvm.dbg.value(metadata i8* %incdec.ptr49, metadata !483, metadata !DIExpression()), !dbg !551
  %gcov_ctr71 = load i64, i64* getelementptr inbounds ([14 x i64], [14 x i64]* @__llvm_gcov_ctr.29, i64 0, i64 8), align 16, !dbg !575
  %25 = add i64 %gcov_ctr71, 1, !dbg !575
  store i64 %25, i64* getelementptr inbounds ([14 x i64], [14 x i64]* @__llvm_gcov_ctr.29, i64 0, i64 8), align 16, !dbg !575
  store i8* %incdec.ptr49, i8** %val, align 8, !dbg !577, !tbaa !410
  br label %if.end53, !dbg !578

if.end53:                                         ; preds = %if.then52, %while.end48
  %gcov_ctr72 = load i64, i64* getelementptr inbounds ([14 x i64], [14 x i64]* @__llvm_gcov_ctr.29, i64 0, i64 9), align 8, !dbg !579
  %26 = add i64 %gcov_ctr72, 1, !dbg !579
  store i64 %26, i64* getelementptr inbounds ([14 x i64], [14 x i64]* @__llvm_gcov_ctr.29, i64 0, i64 9), align 8, !dbg !579
  %27 = load i8*, i8** %line, align 8, !dbg !579, !tbaa !410
  call void @llvm.dbg.value(metadata i8* %27, metadata !476, metadata !DIExpression()), !dbg !487
  store i8* %27, i8** %2, align 8, !dbg !580, !tbaa !496
  br label %cleanup60

if.else55:                                        ; preds = %while.end
  %gcov_ctr73 = load i64, i64* getelementptr inbounds ([14 x i64], [14 x i64]* @__llvm_gcov_ctr.29, i64 0, i64 10), align 16, !dbg !581
  %28 = add i64 %gcov_ctr73, 1, !dbg !581
  store i64 %28, i64* getelementptr inbounds ([14 x i64], [14 x i64]* @__llvm_gcov_ctr.29, i64 0, i64 10), align 16, !dbg !581
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !581, !tbaa !410
  call void @llvm.dbg.value(metadata i8* %10, metadata !476, metadata !DIExpression()), !dbg !487
  %call56 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %29, i8* noundef getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i8* noundef nonnull %10) #12, !dbg !583
  %30 = load i8*, i8** %line, align 8, !dbg !584, !tbaa !410
  call void @llvm.dbg.value(metadata i8* %30, metadata !476, metadata !DIExpression()), !dbg !487
  call void @free(i8* noundef %30) #12, !dbg !585
  br label %cleanup60, !dbg !586

if.else58:                                        ; preds = %if.end
  %gcov_ctr76 = load i64, i64* getelementptr inbounds ([14 x i64], [14 x i64]* @__llvm_gcov_ctr.29, i64 0, i64 13), align 8, !dbg !587
  %31 = add i64 %gcov_ctr76, 1, !dbg !587
  store i64 %31, i64* getelementptr inbounds ([14 x i64], [14 x i64]* @__llvm_gcov_ctr.29, i64 0, i64 13), align 8, !dbg !587
  %32 = getelementptr inbounds i8, i8* %ctx, i64 24, !dbg !589
  store i8 1, i8* %32, align 8, !dbg !590, !tbaa !591
  br label %cleanup60

cleanup60:                                        ; preds = %if.else55, %if.end53, %if.then24, %if.then19, %if.else58
  %retval.1 = phi i32 [ 3, %if.else58 ], [ 3, %if.then19 ], [ 2, %if.else55 ], [ 0, %if.end53 ], [ 1, %if.then24 ], !dbg !487
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #14, !dbg !592
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #14, !dbg !592
  ret i32 %retval.1, !dbg !592
}

; Function Attrs: nounwind
declare !dbg !593 dso_local void @free(i8* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
declare dso_local i64 @getline(i8** noundef, i64* noundef, %struct._IO_FILE* noundef) local_unnamed_addr #0

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare !dbg !596 dso_local i32 @strcmp(i8* noundef, i8* noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind uwtable
define dso_local void @restart_set_kv(i8* nocapture noundef readonly %ctx, i8* noundef %key, i8* noundef %fmt, ...) local_unnamed_addr #0 !dbg !600 {
entry:
  %gcov_ctr = load i64, i64* getelementptr inbounds ([2 x i64], [2 x i64]* @__llvm_gcov_ctr.31, i64 0, i64 0), align 8
  %0 = add i64 %gcov_ctr, 1
  store i64 %0, i64* getelementptr inbounds ([2 x i64], [2 x i64]* @__llvm_gcov_ctr.31, i64 0, i64 0), align 8
  %ap = alloca [1 x %struct.__va_list_tag], align 16
  %valbuf = alloca [4096 x i8], align 16
  call void @llvm.dbg.value(metadata i8* %ctx, metadata !604, metadata !DIExpression()), !dbg !626
  call void @llvm.dbg.value(metadata i8* %key, metadata !605, metadata !DIExpression()), !dbg !626
  call void @llvm.dbg.value(metadata i8* %fmt, metadata !606, metadata !DIExpression()), !dbg !626
  %1 = bitcast [1 x %struct.__va_list_tag]* %ap to i8*, !dbg !627
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %1) #14, !dbg !627
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %ap, metadata !607, metadata !DIExpression()), !dbg !628
  call void @llvm.dbg.value(metadata i8* %ctx, metadata !620, metadata !DIExpression()), !dbg !626
  %2 = getelementptr inbounds [4096 x i8], [4096 x i8]* %valbuf, i64 0, i64 0, !dbg !629
  call void @llvm.lifetime.start.p0i8(i64 4096, i8* nonnull %2) #14, !dbg !629
  call void @llvm.dbg.declare(metadata [4096 x i8]* %valbuf, metadata !621, metadata !DIExpression()), !dbg !630
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %ap, i64 0, i64 0, !dbg !631
  call void @llvm.va_start(i8* nonnull %1), !dbg !631
  %call = call i32 @vsnprintf(i8* noundef nonnull %2, i64 noundef 4095, i8* noundef %fmt, %struct.__va_list_tag* noundef nonnull %arraydecay) #12, !dbg !632
  call void @llvm.dbg.value(metadata i32 %call, metadata !625, metadata !DIExpression()), !dbg !626
  call void @llvm.va_end(i8* nonnull %1), !dbg !633
  %cmp = icmp sgt i32 %call, 4095, !dbg !634
  br i1 %cmp, label %if.then, label %if.end, !dbg !636

if.then:                                          ; preds = %entry
  %gcov_ctr10 = load i64, i64* getelementptr inbounds ([2 x i64], [2 x i64]* @__llvm_gcov_ctr.31, i64 0, i64 1), align 8, !dbg !637
  %3 = add i64 %gcov_ctr10, 1, !dbg !637
  store i64 %3, i64* getelementptr inbounds ([2 x i64], [2 x i64]* @__llvm_gcov_ctr.31, i64 0, i64 1), align 8, !dbg !637
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !637, !tbaa !410
  %call7 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %4, i8* noundef getelementptr inbounds ([77 x i8], [77 x i8]* @.str.3, i64 0, i64 0), i8* noundef %key, i8* noundef nonnull %2) #12, !dbg !639
  call void @abort() #13, !dbg !640
  unreachable, !dbg !640

if.end:                                           ; preds = %entry
  call void @llvm.dbg.value(metadata i8* %ctx, metadata !620, metadata !DIExpression()), !dbg !626
  %f = bitcast i8* %ctx to %struct._IO_FILE**, !dbg !641
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8, !dbg !641, !tbaa !507
  %call9 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %5, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i8* noundef %key, i8* noundef nonnull %2) #12, !dbg !642
  call void @llvm.lifetime.end.p0i8(i64 4096, i8* nonnull %2) #14, !dbg !643
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %1) #14, !dbg !643
  ret void, !dbg !643
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn
declare void @llvm.va_start(i8*) #7

; Function Attrs: nounwind
declare !dbg !644 dso_local i32 @vsnprintf(i8* noundef, i64 noundef, i8* noundef, %struct.__va_list_tag* noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nosync nounwind willreturn
declare void @llvm.va_end(i8*) #7

; Function Attrs: noinline nounwind uwtable
define dso_local zeroext i1 @restart_mmap_open(i64 noundef %limit, i8* noundef %file, i8** nocapture noundef writeonly %mem_base) local_unnamed_addr #0 !dbg !649 {
entry:
  call void @llvm.dbg.value(metadata i64 %limit, metadata !654, metadata !DIExpression()), !dbg !659
  call void @llvm.dbg.value(metadata i8* %file, metadata !655, metadata !DIExpression()), !dbg !659
  call void @llvm.dbg.value(metadata i8** %mem_base, metadata !656, metadata !DIExpression()), !dbg !659
  call void @llvm.dbg.value(metadata i8 1, metadata !657, metadata !DIExpression()), !dbg !659
  %call = tail call fastcc i64 @_find_pagesize() #15, !dbg !660
  call void @llvm.dbg.value(metadata i64 %call, metadata !658, metadata !DIExpression()), !dbg !659
  %call1 = tail call noalias i8* @strdup(i8* noundef %file) #12, !dbg !661
  store i8* %call1, i8** @memory_file, align 8, !dbg !662, !tbaa !410
  %call2 = tail call i32 (i8*, i32, ...) @open(i8* noundef %file, i32 noundef 66, i32 noundef 448) #12, !dbg !663
  store i32 %call2, i32* @mmap_fd, align 4, !dbg !664, !tbaa !665
  %cmp = icmp eq i32 %call2, -1, !dbg !667
  br i1 %cmp, label %if.then, label %if.end, !dbg !669

if.then:                                          ; preds = %entry
  %gcov_ctr = load i64, i64* getelementptr inbounds ([6 x i64], [6 x i64]* @__llvm_gcov_ctr.32, i64 0, i64 0), align 16, !dbg !670
  %0 = add i64 %gcov_ctr, 1, !dbg !670
  store i64 %0, i64* getelementptr inbounds ([6 x i64], [6 x i64]* @__llvm_gcov_ctr.32, i64 0, i64 0), align 16, !dbg !670
  tail call void @perror(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0)) #12, !dbg !670
  tail call void @abort() #13, !dbg !672
  unreachable, !dbg !672

if.end:                                           ; preds = %entry
  %call3 = tail call i32 @ftruncate(i32 noundef %call2, i64 noundef %limit) #12, !dbg !673
  %cmp4.not = icmp eq i32 %call3, 0, !dbg !675
  br i1 %cmp4.not, label %if.end6, label %if.then5, !dbg !676

if.then5:                                         ; preds = %if.end
  %gcov_ctr19 = load i64, i64* getelementptr inbounds ([6 x i64], [6 x i64]* @__llvm_gcov_ctr.32, i64 0, i64 1), align 8, !dbg !677
  %1 = add i64 %gcov_ctr19, 1, !dbg !677
  store i64 %1, i64* getelementptr inbounds ([6 x i64], [6 x i64]* @__llvm_gcov_ctr.32, i64 0, i64 1), align 8, !dbg !677
  tail call void @perror(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0)) #12, !dbg !677
  tail call void @abort() #13, !dbg !679
  unreachable, !dbg !679

if.end6:                                          ; preds = %if.end
  %rem = urem i64 %limit, %call, !dbg !680
  %tobool.not = icmp eq i64 %rem, 0, !dbg !680
  br i1 %tobool.not, label %if.end9, label %if.then7, !dbg !682

if.then7:                                         ; preds = %if.end6
  %gcov_ctr20 = load i64, i64* getelementptr inbounds ([6 x i64], [6 x i64]* @__llvm_gcov_ctr.32, i64 0, i64 2), align 16, !dbg !683
  %2 = add i64 %gcov_ctr20, 1, !dbg !683
  store i64 %2, i64* getelementptr inbounds ([6 x i64], [6 x i64]* @__llvm_gcov_ctr.32, i64 0, i64 2), align 16, !dbg !683
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !683, !tbaa !410
  %call8 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %3, i8* noundef getelementptr inbounds ([77 x i8], [77 x i8]* @.str.7, i64 0, i64 0)) #12, !dbg !685
  tail call void @abort() #13, !dbg !686
  unreachable, !dbg !686

if.end9:                                          ; preds = %if.end6
  %4 = load i32, i32* @mmap_fd, align 4, !dbg !687, !tbaa !665
  %call10 = tail call i8* @mmap(i8* noundef null, i64 noundef %limit, i32 noundef 3, i32 noundef 1, i32 noundef %4, i64 noundef 0) #12, !dbg !688
  store i8* %call10, i8** @mmap_base, align 8, !dbg !689, !tbaa !410
  %cmp11 = icmp eq i8* %call10, inttoptr (i64 -1 to i8*), !dbg !690
  br i1 %cmp11, label %if.then12, label %if.end13, !dbg !692

if.then12:                                        ; preds = %if.end9
  %gcov_ctr21 = load i64, i64* getelementptr inbounds ([6 x i64], [6 x i64]* @__llvm_gcov_ctr.32, i64 0, i64 3), align 8, !dbg !693
  %5 = add i64 %gcov_ctr21, 1, !dbg !693
  store i64 %5, i64* getelementptr inbounds ([6 x i64], [6 x i64]* @__llvm_gcov_ctr.32, i64 0, i64 3), align 8, !dbg !693
  tail call void @perror(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i64 0, i64 0)) #12, !dbg !693
  tail call void @abort() #13, !dbg !695
  unreachable, !dbg !695

if.end13:                                         ; preds = %if.end9
  %gcov_ctr22 = load i64, i64* getelementptr inbounds ([6 x i64], [6 x i64]* @__llvm_gcov_ctr.32, i64 0, i64 4), align 16, !dbg !696
  %6 = add i64 %gcov_ctr22, 1, !dbg !696
  store i64 %6, i64* getelementptr inbounds ([6 x i64], [6 x i64]* @__llvm_gcov_ctr.32, i64 0, i64 4), align 16, !dbg !696
  store i64 %limit, i64* @slabmem_limit, align 8, !dbg !697, !tbaa !492
  %call14 = tail call fastcc i32 @restart_check(i8* noundef %file) #15, !dbg !698
  %cmp15.not = icmp eq i32 %call14, 0, !dbg !700
  br i1 %cmp15.not, label %if.end17, label %if.then16, !dbg !701

if.then16:                                        ; preds = %if.end13
  %gcov_ctr23 = load i64, i64* getelementptr inbounds ([6 x i64], [6 x i64]* @__llvm_gcov_ctr.32, i64 0, i64 5), align 8, !dbg !702
  %7 = add i64 %gcov_ctr23, 1, !dbg !702
  store i64 %7, i64* getelementptr inbounds ([6 x i64], [6 x i64]* @__llvm_gcov_ctr.32, i64 0, i64 5), align 8, !dbg !702
  call void @llvm.dbg.value(metadata i8 0, metadata !657, metadata !DIExpression()), !dbg !659
  br label %if.end17, !dbg !704

if.end17:                                         ; preds = %if.then16, %if.end13
  call void @llvm.dbg.value(metadata i8 undef, metadata !657, metadata !DIExpression()), !dbg !659
  %8 = load i8*, i8** @mmap_base, align 8, !dbg !705, !tbaa !410
  store i8* %8, i8** %mem_base, align 8, !dbg !706, !tbaa !410
  ret i1 %cmp15.not, !dbg !707
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i64 @_find_pagesize() unnamed_addr #0 !dbg !708 {
entry:
  %gcov_ctr = load i64, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.33, i64 0, i64 0), align 8, !dbg !711
  %0 = add i64 %gcov_ctr, 1, !dbg !711
  store i64 %0, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.33, i64 0, i64 0), align 8, !dbg !711
  %call = tail call i64 @sysconf(i32 noundef 30) #12, !dbg !711
  ret i64 %call, !dbg !712
}

; Function Attrs: nounwind
declare !dbg !713 dso_local noalias i8* @strdup(i8* noundef) local_unnamed_addr #3

declare !dbg !716 dso_local i32 @open(i8* noundef, i32 noundef, ...) local_unnamed_addr #4

declare !dbg !720 dso_local void @perror(i8* noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare !dbg !723 dso_local i32 @ftruncate(i32 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare !dbg !727 dso_local i8* @mmap(i8* noundef, i64 noundef, i32 noundef, i32 noundef, i32 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @restart_check(i8* noundef %file) unnamed_addr #0 !dbg !731 {
entry:
  %ctx = alloca %struct.restart_cb_ctx, align 8
  call void @llvm.dbg.value(metadata i8* %file, metadata !735, metadata !DIExpression()), !dbg !744
  %call = tail call i64 @strlen(i8* noundef %file) #16, !dbg !745
  call void @llvm.dbg.value(metadata i64 %call, metadata !736, metadata !DIExpression()), !dbg !744
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.18, i64 0, i64 0), metadata !737, metadata !DIExpression()), !dbg !744
  %call1 = tail call i64 @strlen(i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.18, i64 0, i64 0)) #16, !dbg !746
  %add = add i64 %call, 1, !dbg !747
  %add2 = add i64 %add, %call1, !dbg !748
  %call3 = tail call noalias i8* @calloc(i64 noundef 1, i64 noundef %add2) #12, !dbg !749
  call void @llvm.dbg.value(metadata i8* %call3, metadata !738, metadata !DIExpression()), !dbg !744
  %cmp = icmp eq i8* %call3, null, !dbg !750
  br i1 %cmp, label %if.then, label %if.end, !dbg !752

if.then:                                          ; preds = %entry
  %gcov_ctr = load i64, i64* getelementptr inbounds ([11 x i64], [11 x i64]* @__llvm_gcov_ctr.34, i64 0, i64 0), align 16, !dbg !753
  %0 = add i64 %gcov_ctr, 1, !dbg !753
  store i64 %0, i64* getelementptr inbounds ([11 x i64], [11 x i64]* @__llvm_gcov_ctr.34, i64 0, i64 0), align 16, !dbg !753
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !753, !tbaa !410
  %call4 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %1, i8* noundef getelementptr inbounds ([55 x i8], [55 x i8]* @.str.19, i64 0, i64 0)) #12, !dbg !755
  tail call void @abort() #13, !dbg !756
  unreachable, !dbg !756

if.end:                                           ; preds = %entry
  %call5 = tail call i8* @memcpy(i8* noundef nonnull %call3, i8* noundef %file, i64 noundef %call) #12, !dbg !757
  %add.ptr = getelementptr inbounds i8, i8* %call3, i64 %call, !dbg !758
  %call6 = tail call i64 @strlen(i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.18, i64 0, i64 0)) #16, !dbg !759
  %call7 = tail call i8* @memcpy(i8* noundef nonnull %add.ptr, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.18, i64 0, i64 0), i64 noundef %call6) #12, !dbg !760
  %call8 = tail call %struct._IO_FILE* @fopen(i8* noundef nonnull %call3, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.20, i64 0, i64 0)) #12, !dbg !761
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %call8, metadata !739, metadata !DIExpression()), !dbg !744
  %cmp9 = icmp eq %struct._IO_FILE* %call8, null, !dbg !762
  br i1 %cmp9, label %if.then10, label %if.end12, !dbg !764

if.then10:                                        ; preds = %if.end
  %gcov_ctr47 = load i64, i64* getelementptr inbounds ([11 x i64], [11 x i64]* @__llvm_gcov_ctr.34, i64 0, i64 1), align 8, !dbg !765
  %2 = add i64 %gcov_ctr47, 1, !dbg !765
  store i64 %2, i64* getelementptr inbounds ([11 x i64], [11 x i64]* @__llvm_gcov_ctr.34, i64 0, i64 1), align 8, !dbg !765
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !765, !tbaa !410
  %call11 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %3, i8* noundef getelementptr inbounds ([62 x i8], [62 x i8]* @.str.21, i64 0, i64 0)) #12, !dbg !767
  tail call void @free(i8* noundef nonnull %call3) #12, !dbg !768
  br label %cleanup43, !dbg !769

if.end12:                                         ; preds = %if.end
  %4 = bitcast %struct.restart_cb_ctx* %ctx to i8*, !dbg !770
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %4) #14, !dbg !770
  call void @llvm.dbg.declare(metadata %struct.restart_cb_ctx* %ctx, metadata !740, metadata !DIExpression()), !dbg !771
  %f13 = getelementptr inbounds %struct.restart_cb_ctx, %struct.restart_cb_ctx* %ctx, i64 0, i32 0, !dbg !772
  store %struct._IO_FILE* %call8, %struct._IO_FILE** %f13, align 8, !dbg !773, !tbaa !507
  %cb = getelementptr inbounds %struct.restart_cb_ctx, %struct.restart_cb_ctx* %ctx, i64 0, i32 1, !dbg !774
  store %struct._restart_data_cb* null, %struct._restart_data_cb** %cb, align 8, !dbg !775, !tbaa !537
  %line = getelementptr inbounds %struct.restart_cb_ctx, %struct.restart_cb_ctx* %ctx, i64 0, i32 2, !dbg !776
  store i8* null, i8** %line, align 8, !dbg !777, !tbaa !496
  %done = getelementptr inbounds %struct.restart_cb_ctx, %struct.restart_cb_ctx* %ctx, i64 0, i32 3, !dbg !778
  store i8 0, i8* %done, align 8, !dbg !779, !tbaa !591
  %call14 = call i32 @restart_get_kv(i8* noundef nonnull %4, i8** noundef null, i8** noundef null) #15, !dbg !780
  %cmp15.not = icmp eq i32 %call14, 3, !dbg !782
  br i1 %cmp15.not, label %if.end18, label %if.then16, !dbg !783

if.then16:                                        ; preds = %if.end12
  %gcov_ctr48 = load i64, i64* getelementptr inbounds ([11 x i64], [11 x i64]* @__llvm_gcov_ctr.34, i64 0, i64 2), align 16, !dbg !784
  %5 = add i64 %gcov_ctr48, 1, !dbg !784
  store i64 %5, i64* getelementptr inbounds ([11 x i64], [11 x i64]* @__llvm_gcov_ctr.34, i64 0, i64 2), align 16, !dbg !784
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !784, !tbaa !410
  %call17 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %6, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.22, i64 0, i64 0)) #12, !dbg !786
  tail call void @abort() #13, !dbg !787
  unreachable, !dbg !787

if.end18:                                         ; preds = %if.end12
  %7 = load %struct._restart_data_cb*, %struct._restart_data_cb** %cb, align 8, !dbg !788, !tbaa !537
  %cmp20 = icmp eq %struct._restart_data_cb* %7, null, !dbg !790
  br i1 %cmp20, label %if.then21, label %while.cond.preheader, !dbg !791

while.cond.preheader:                             ; preds = %if.end18
  call void @llvm.dbg.value(metadata i8 0, metadata !741, metadata !DIExpression()), !dbg !744
  %8 = load i8, i8* %done, align 8, !dbg !792, !tbaa !591, !range !793
  %tobool.not83 = icmp eq i8 %8, 0, !dbg !792
  br i1 %tobool.not83, label %while.body.preheader, label %while.end, !dbg !794

while.body.preheader:                             ; preds = %while.cond.preheader
  call void @llvm.dbg.value(metadata %struct._restart_data_cb* %7, metadata !742, metadata !DIExpression()), !dbg !795
  %ccb86 = getelementptr inbounds %struct._restart_data_cb, %struct._restart_data_cb* %7, i64 0, i32 2, !dbg !796
  %9 = load i32 (i8*, i8*, i8*)*, i32 (i8*, i8*, i8*)** %ccb86, align 8, !dbg !796, !tbaa !444
  %arraydecay87 = getelementptr inbounds %struct._restart_data_cb, %struct._restart_data_cb* %7, i64 0, i32 4, i64 0, !dbg !798
  %data88 = getelementptr inbounds %struct._restart_data_cb, %struct._restart_data_cb* %7, i64 0, i32 0, !dbg !799
  %10 = load i8*, i8** %data88, align 8, !dbg !799, !tbaa !441
  %call2789 = call i32 %9(i8* noundef nonnull %arraydecay87, i8* noundef nonnull %4, i8* noundef %10) #12, !dbg !800
  %cmp28.not90 = icmp eq i32 %call2789, 0, !dbg !801
  br i1 %cmp28.not90, label %cleanup.cont, label %cleanup, !dbg !802

if.then21:                                        ; preds = %if.end18
  %gcov_ctr49 = load i64, i64* getelementptr inbounds ([11 x i64], [11 x i64]* @__llvm_gcov_ctr.34, i64 0, i64 3), align 8, !dbg !803
  %11 = add i64 %gcov_ctr49, 1, !dbg !803
  store i64 %11, i64* getelementptr inbounds ([11 x i64], [11 x i64]* @__llvm_gcov_ctr.34, i64 0, i64 3), align 8, !dbg !803
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !803, !tbaa !410
  %call22 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %12, i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str.23, i64 0, i64 0)) #12, !dbg !805
  tail call void @abort() #13, !dbg !806
  unreachable, !dbg !806

cleanup:                                          ; preds = %cleanup.cont.while.body_crit_edge, %while.body.preheader
  %gcov_ctr50 = load i64, i64* getelementptr inbounds ([11 x i64], [11 x i64]* @__llvm_gcov_ctr.34, i64 0, i64 4), align 16, !dbg !807
  %13 = add i64 %gcov_ctr50, 1, !dbg !807
  store i64 %13, i64* getelementptr inbounds ([11 x i64], [11 x i64]* @__llvm_gcov_ctr.34, i64 0, i64 4), align 16, !dbg !807
  call void @llvm.dbg.value(metadata i8 1, metadata !741, metadata !DIExpression()), !dbg !744
  br label %while.end

cleanup.cont:                                     ; preds = %while.body.preheader, %cleanup.cont.while.body_crit_edge
  %gcov_ctr51 = load i64, i64* getelementptr inbounds ([11 x i64], [11 x i64]* @__llvm_gcov_ctr.34, i64 0, i64 5), align 8, !dbg !809
  %14 = add i64 %gcov_ctr51, 1, !dbg !809
  store i64 %14, i64* getelementptr inbounds ([11 x i64], [11 x i64]* @__llvm_gcov_ctr.34, i64 0, i64 5), align 8, !dbg !809
  call void @llvm.dbg.value(metadata i8 1, metadata !741, metadata !DIExpression()), !dbg !744
  %gcov_ctr53 = load i64, i64* getelementptr inbounds ([11 x i64], [11 x i64]* @__llvm_gcov_ctr.34, i64 0, i64 7), align 8, !dbg !794
  %15 = add i64 %gcov_ctr53, 1, !dbg !794
  store i64 %15, i64* getelementptr inbounds ([11 x i64], [11 x i64]* @__llvm_gcov_ctr.34, i64 0, i64 7), align 8, !dbg !794
  call void @llvm.dbg.value(metadata i8 0, metadata !741, metadata !DIExpression()), !dbg !744
  %16 = load i8, i8* %done, align 8, !dbg !792, !tbaa !591, !range !793
  %tobool.not = icmp eq i8 %16, 0, !dbg !792
  br i1 %tobool.not, label %cleanup.cont.while.body_crit_edge, label %while.end, !dbg !794, !llvm.loop !810

cleanup.cont.while.body_crit_edge:                ; preds = %cleanup.cont
  %.pre = load %struct._restart_data_cb*, %struct._restart_data_cb** %cb, align 8, !dbg !811, !tbaa !537
  call void @llvm.dbg.value(metadata %struct._restart_data_cb* %.pre, metadata !742, metadata !DIExpression()), !dbg !795
  %ccb = getelementptr inbounds %struct._restart_data_cb, %struct._restart_data_cb* %.pre, i64 0, i32 2, !dbg !796
  %17 = load i32 (i8*, i8*, i8*)*, i32 (i8*, i8*, i8*)** %ccb, align 8, !dbg !796, !tbaa !444
  %arraydecay = getelementptr inbounds %struct._restart_data_cb, %struct._restart_data_cb* %.pre, i64 0, i32 4, i64 0, !dbg !798
  %data = getelementptr inbounds %struct._restart_data_cb, %struct._restart_data_cb* %.pre, i64 0, i32 0, !dbg !799
  %18 = load i8*, i8** %data, align 8, !dbg !799, !tbaa !441
  %call27 = call i32 %17(i8* noundef nonnull %arraydecay, i8* noundef nonnull %4, i8* noundef %18) #12, !dbg !800
  %cmp28.not = icmp eq i32 %call27, 0, !dbg !801
  br i1 %cmp28.not, label %cleanup.cont, label %cleanup, !dbg !802

while.end:                                        ; preds = %cleanup.cont, %while.cond.preheader, %cleanup
  %tobool.not82 = phi i1 [ true, %cleanup ], [ false, %while.cond.preheader ], [ false, %cleanup.cont ]
  call void @llvm.dbg.value(metadata i8 undef, metadata !741, metadata !DIExpression()), !dbg !744
  %19 = load i8*, i8** %line, align 8, !dbg !812, !tbaa !496
  %tobool32.not = icmp eq i8* %19, null, !dbg !814
  br i1 %tobool32.not, label %if.end35, label %if.then33, !dbg !815

if.then33:                                        ; preds = %while.end
  %gcov_ctr54 = load i64, i64* getelementptr inbounds ([11 x i64], [11 x i64]* @__llvm_gcov_ctr.34, i64 0, i64 8), align 16, !dbg !816
  %20 = add i64 %gcov_ctr54, 1, !dbg !816
  store i64 %20, i64* getelementptr inbounds ([11 x i64], [11 x i64]* @__llvm_gcov_ctr.34, i64 0, i64 8), align 16, !dbg !816
  call void @free(i8* noundef nonnull %19) #12, !dbg !817
  br label %if.end35, !dbg !817

if.end35:                                         ; preds = %if.then33, %while.end
  %call36 = call i32 @fclose(%struct._IO_FILE* noundef nonnull %call8) #12, !dbg !818
  %call37 = call i32 @unlink(i8* noundef nonnull %call3) #12, !dbg !819
  call void @free(i8* noundef nonnull %call3) #12, !dbg !820
  br i1 %tobool.not82, label %if.then39, label %if.else, !dbg !821

if.then39:                                        ; preds = %if.end35
  %gcov_ctr55 = load i64, i64* getelementptr inbounds ([11 x i64], [11 x i64]* @__llvm_gcov_ctr.34, i64 0, i64 9), align 8, !dbg !822
  %21 = add i64 %gcov_ctr55, 1, !dbg !822
  store i64 %21, i64* getelementptr inbounds ([11 x i64], [11 x i64]* @__llvm_gcov_ctr.34, i64 0, i64 9), align 8, !dbg !822
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !822, !tbaa !410
  %call40 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %22, i8* noundef getelementptr inbounds ([68 x i8], [68 x i8]* @.str.24, i64 0, i64 0)) #12, !dbg !825
  br label %cleanup41, !dbg !826

if.else:                                          ; preds = %if.end35
  %gcov_ctr56 = load i64, i64* getelementptr inbounds ([11 x i64], [11 x i64]* @__llvm_gcov_ctr.34, i64 0, i64 10), align 16, !dbg !827
  %23 = add i64 %gcov_ctr56, 1, !dbg !827
  store i64 %23, i64* getelementptr inbounds ([11 x i64], [11 x i64]* @__llvm_gcov_ctr.34, i64 0, i64 10), align 16, !dbg !827
  br label %cleanup41, !dbg !827

cleanup41:                                        ; preds = %if.else, %if.then39
  %retval.0 = phi i32 [ -1, %if.then39 ], [ 0, %if.else ], !dbg !829
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %4) #14, !dbg !830
  br label %cleanup43

cleanup43:                                        ; preds = %cleanup41, %if.then10
  %retval.1 = phi i32 [ -1, %if.then10 ], [ %retval.0, %cleanup41 ], !dbg !744
  ret i32 %retval.1, !dbg !830
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @restart_mmap_close() local_unnamed_addr #0 !dbg !831 {
entry:
  %0 = load i8*, i8** @mmap_base, align 8, !dbg !832, !tbaa !410
  %1 = load i64, i64* @slabmem_limit, align 8, !dbg !833, !tbaa !492
  %call = tail call i32 @msync(i8* noundef %0, i64 noundef %1, i32 noundef 4) #12, !dbg !834
  %2 = load i8*, i8** @memory_file, align 8, !dbg !835, !tbaa !410
  %call1 = tail call fastcc i32 @restart_save(i8* noundef %2) #15, !dbg !837
  %cmp.not = icmp eq i32 %call1, 0, !dbg !838
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !839

if.then:                                          ; preds = %entry
  %gcov_ctr = load i64, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @__llvm_gcov_ctr.35, i64 0, i64 0), align 16, !dbg !840
  %3 = add i64 %gcov_ctr, 1, !dbg !840
  store i64 %3, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @__llvm_gcov_ctr.35, i64 0, i64 0), align 16, !dbg !840
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !840, !tbaa !410
  %call2 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %4, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.9, i64 0, i64 0)) #12, !dbg !842
  br label %if.end, !dbg !843

if.end:                                           ; preds = %if.then, %entry
  %5 = load i8*, i8** @mmap_base, align 8, !dbg !844, !tbaa !410
  %6 = load i64, i64* @slabmem_limit, align 8, !dbg !846, !tbaa !492
  %call3 = tail call i32 @munmap(i8* noundef %5, i64 noundef %6) #12, !dbg !847
  %cmp4.not = icmp eq i32 %call3, 0, !dbg !848
  br i1 %cmp4.not, label %if.else, label %if.then5, !dbg !849

if.then5:                                         ; preds = %if.end
  %gcov_ctr11 = load i64, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @__llvm_gcov_ctr.35, i64 0, i64 1), align 8, !dbg !850
  %7 = add i64 %gcov_ctr11, 1, !dbg !850
  store i64 %7, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @__llvm_gcov_ctr.35, i64 0, i64 1), align 8, !dbg !850
  tail call void @perror(i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str.10, i64 0, i64 0)) #12, !dbg !850
  br label %if.end10, !dbg !852

if.else:                                          ; preds = %if.end
  %8 = load i32, i32* @mmap_fd, align 4, !dbg !853, !tbaa !665
  %call6 = tail call i32 @close(i32 noundef %8) #12, !dbg !855
  %cmp7.not = icmp eq i32 %call6, 0, !dbg !856
  br i1 %cmp7.not, label %if.end9, label %if.then8, !dbg !857

if.then8:                                         ; preds = %if.else
  %gcov_ctr12 = load i64, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @__llvm_gcov_ctr.35, i64 0, i64 2), align 16, !dbg !858
  %9 = add i64 %gcov_ctr12, 1, !dbg !858
  store i64 %9, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @__llvm_gcov_ctr.35, i64 0, i64 2), align 16, !dbg !858
  tail call void @perror(i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.11, i64 0, i64 0)) #12, !dbg !858
  br label %if.end9, !dbg !860

if.end9:                                          ; preds = %if.then8, %if.else
  %gcov_ctr13 = load i64, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @__llvm_gcov_ctr.35, i64 0, i64 3), align 8
  %10 = add i64 %gcov_ctr13, 1
  store i64 %10, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @__llvm_gcov_ctr.35, i64 0, i64 3), align 8
  br label %if.end10

if.end10:                                         ; preds = %if.end9, %if.then5
  %11 = load i8*, i8** @memory_file, align 8, !dbg !861, !tbaa !410
  tail call void @free(i8* noundef %11) #12, !dbg !862
  ret void, !dbg !863
}

declare !dbg !864 dso_local i32 @msync(i8* noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @restart_save(i8* noundef %file) unnamed_addr #0 !dbg !867 {
entry:
  %ctx = alloca %struct.restart_cb_ctx, align 8
  call void @llvm.dbg.value(metadata i8* %file, metadata !869, metadata !DIExpression()), !dbg !881
  %call = tail call i64 @strlen(i8* noundef %file) #16, !dbg !882
  call void @llvm.dbg.value(metadata i64 %call, metadata !870, metadata !DIExpression()), !dbg !881
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.18, i64 0, i64 0), metadata !871, metadata !DIExpression()), !dbg !881
  %call1 = tail call i64 @strlen(i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.18, i64 0, i64 0)) #16, !dbg !883
  call void @llvm.dbg.value(metadata i64 %call1, metadata !872, metadata !DIExpression()), !dbg !881
  %add = add i64 %call, 1, !dbg !884
  %add2 = add i64 %add, %call1, !dbg !885
  %call3 = tail call noalias i8* @calloc(i64 noundef 1, i64 noundef %add2) #12, !dbg !886
  call void @llvm.dbg.value(metadata i8* %call3, metadata !873, metadata !DIExpression()), !dbg !881
  %cmp = icmp eq i8* %call3, null, !dbg !887
  br i1 %cmp, label %if.then, label %if.end, !dbg !889

if.then:                                          ; preds = %entry
  %gcov_ctr = load i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @__llvm_gcov_ctr.36, i64 0, i64 0), align 16, !dbg !890
  %0 = add i64 %gcov_ctr, 1, !dbg !890
  store i64 %0, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @__llvm_gcov_ctr.36, i64 0, i64 0), align 16, !dbg !890
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !890, !tbaa !410
  %call4 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %1, i8* noundef getelementptr inbounds ([58 x i8], [58 x i8]* @.str.25, i64 0, i64 0)) #12, !dbg !892
  br label %cleanup27, !dbg !893

if.end:                                           ; preds = %entry
  %call5 = tail call i8* @memcpy(i8* noundef nonnull %call3, i8* noundef %file, i64 noundef %call) #12, !dbg !894
  %add.ptr = getelementptr inbounds i8, i8* %call3, i64 %call, !dbg !895
  %call6 = tail call i8* @memcpy(i8* noundef nonnull %add.ptr, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.18, i64 0, i64 0), i64 noundef %call1) #12, !dbg !896
  %call7 = tail call i32 @umask(i32 noundef -385) #12, !dbg !897
  call void @llvm.dbg.value(metadata i32 %call7, metadata !874, metadata !DIExpression()), !dbg !881
  %call8 = tail call %struct._IO_FILE* @fopen(i8* noundef nonnull %call3, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.26, i64 0, i64 0)) #12, !dbg !898
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %call8, metadata !878, metadata !DIExpression()), !dbg !881
  %call9 = tail call i32 @umask(i32 noundef %call7) #12, !dbg !899
  %cmp10 = icmp eq %struct._IO_FILE* %call8, null, !dbg !900
  br i1 %cmp10, label %if.then11, label %if.end12, !dbg !902

if.then11:                                        ; preds = %if.end
  %gcov_ctr31 = load i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @__llvm_gcov_ctr.36, i64 0, i64 1), align 8, !dbg !903
  %2 = add i64 %gcov_ctr31, 1, !dbg !903
  store i64 %2, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @__llvm_gcov_ctr.36, i64 0, i64 1), align 8, !dbg !903
  tail call void @free(i8* noundef nonnull %call3) #12, !dbg !905
  tail call void @perror(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.27, i64 0, i64 0)) #12, !dbg !906
  br label %cleanup27, !dbg !907

if.end12:                                         ; preds = %if.end
  %3 = load %struct._restart_data_cb*, %struct._restart_data_cb** @cb_stack, align 8, !dbg !908, !tbaa !410
  call void @llvm.dbg.value(metadata %struct._restart_data_cb* %3, metadata !879, metadata !DIExpression()), !dbg !881
  %4 = bitcast %struct.restart_cb_ctx* %ctx to i8*, !dbg !909
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %4) #14, !dbg !909
  call void @llvm.dbg.declare(metadata %struct.restart_cb_ctx* %ctx, metadata !880, metadata !DIExpression()), !dbg !910
  %f13 = getelementptr inbounds %struct.restart_cb_ctx, %struct.restart_cb_ctx* %ctx, i64 0, i32 0, !dbg !911
  store %struct._IO_FILE* %call8, %struct._IO_FILE** %f13, align 8, !dbg !912, !tbaa !507
  call void @llvm.dbg.value(metadata %struct._restart_data_cb* %3, metadata !879, metadata !DIExpression()), !dbg !881
  %cmp14.not62 = icmp eq %struct._restart_data_cb* %3, null, !dbg !913
  br i1 %cmp14.not62, label %cleanup, label %while.body, !dbg !914

while.body:                                       ; preds = %if.end12, %if.end22
  %cb.063 = phi %struct._restart_data_cb* [ %8, %if.end22 ], [ %3, %if.end12 ]
  call void @llvm.dbg.value(metadata %struct._restart_data_cb* %cb.063, metadata !879, metadata !DIExpression()), !dbg !881
  %arraydecay = getelementptr inbounds %struct._restart_data_cb, %struct._restart_data_cb* %cb.063, i64 0, i32 4, i64 0, !dbg !915
  %call15 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef nonnull %call8, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.28, i64 0, i64 0), i8* noundef nonnull %arraydecay) #12, !dbg !917
  %scb = getelementptr inbounds %struct._restart_data_cb, %struct._restart_data_cb* %cb.063, i64 0, i32 3, !dbg !918
  %5 = load i32 (i8*, i8*, i8*)*, i32 (i8*, i8*, i8*)** %scb, align 8, !dbg !918, !tbaa !447
  %data = getelementptr inbounds %struct._restart_data_cb, %struct._restart_data_cb* %cb.063, i64 0, i32 0, !dbg !920
  %6 = load i8*, i8** %data, align 8, !dbg !920, !tbaa !441
  %call18 = call i32 %5(i8* noundef nonnull %arraydecay, i8* noundef nonnull %4, i8* noundef %6) #12, !dbg !921
  %cmp19.not = icmp eq i32 %call18, 0, !dbg !922
  br i1 %cmp19.not, label %if.end22, label %cleanup, !dbg !923

if.end22:                                         ; preds = %while.body
  %gcov_ctr33 = load i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @__llvm_gcov_ctr.36, i64 0, i64 3), align 8, !dbg !924
  %7 = add i64 %gcov_ctr33, 1, !dbg !924
  store i64 %7, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @__llvm_gcov_ctr.36, i64 0, i64 3), align 8, !dbg !924
  %next = getelementptr inbounds %struct._restart_data_cb, %struct._restart_data_cb* %cb.063, i64 0, i32 1, !dbg !925
  %8 = load %struct._restart_data_cb*, %struct._restart_data_cb** %next, align 8, !dbg !925, !tbaa !421
  call void @llvm.dbg.value(metadata %struct._restart_data_cb* %8, metadata !879, metadata !DIExpression()), !dbg !881
  %cmp14.not = icmp eq %struct._restart_data_cb* %8, null, !dbg !913
  br i1 %cmp14.not, label %cleanup, label %while.body, !dbg !914, !llvm.loop !926

cleanup:                                          ; preds = %if.end22, %while.body, %if.end12
  %.sink = phi i64* [ getelementptr inbounds ([5 x i64], [5 x i64]* @__llvm_gcov_ctr.36, i64 0, i64 4), %if.end12 ], [ getelementptr inbounds ([5 x i64], [5 x i64]* @__llvm_gcov_ctr.36, i64 0, i64 2), %while.body ], [ getelementptr inbounds ([5 x i64], [5 x i64]* @__llvm_gcov_ctr.36, i64 0, i64 4), %if.end22 ]
  %retval.0 = phi i32 [ 0, %if.end12 ], [ -1, %while.body ], [ 0, %if.end22 ], !dbg !881
  %gcov_ctr34 = load i64, i64* %.sink, align 16, !dbg !881
  %9 = add i64 %gcov_ctr34, 1, !dbg !881
  store i64 %9, i64* %.sink, align 16, !dbg !881
  %call23 = call i32 @fclose(%struct._IO_FILE* noundef nonnull %call8) #12, !dbg !881
  call void @free(i8* noundef nonnull %call3) #12, !dbg !881
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %4) #14, !dbg !928
  br label %cleanup27

cleanup27:                                        ; preds = %if.then11, %cleanup, %if.then
  %retval.2 = phi i32 [ -1, %if.then ], [ -1, %if.then11 ], [ %retval.0, %cleanup ], !dbg !881
  ret i32 %retval.2, !dbg !928
}

; Function Attrs: nounwind
declare !dbg !929 dso_local i32 @munmap(i8* noundef, i64 noundef) local_unnamed_addr #3

declare !dbg !932 dso_local i32 @close(i32 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @restart_fixup(i8* noundef %orig_addr) local_unnamed_addr #0 !dbg !935 {
entry:
  %tv = alloca %struct.timeval, align 8
  call void @llvm.dbg.value(metadata i8* %orig_addr, metadata !939, metadata !DIExpression()), !dbg !958
  %0 = bitcast %struct.timeval* %tv to i8*, !dbg !959
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #14, !dbg !959
  call void @llvm.dbg.declare(metadata %struct.timeval* %tv, metadata !940, metadata !DIExpression()), !dbg !960
  call void @llvm.dbg.value(metadata i64 0, metadata !948, metadata !DIExpression()), !dbg !958
  %1 = load i32, i32* getelementptr inbounds (%struct.settings, %struct.settings* @settings, i64 0, i32 24), align 4, !dbg !961, !tbaa !962
  call void @llvm.dbg.value(metadata i32 %1, metadata !949, metadata !DIExpression()), !dbg !958
  call void @llvm.dbg.value(metadata i32 %1, metadata !951, metadata !DIExpression()), !dbg !958
  %call = call i32 @gettimeofday(%struct.timeval* noundef nonnull %tv, i8* noundef null) #12, !dbg !965
  %2 = load i32, i32* getelementptr inbounds (%struct.settings, %struct.settings* @settings, i64 0, i32 5), align 8, !dbg !966, !tbaa !968
  %cmp = icmp sgt i32 %2, 0, !dbg !969
  br i1 %cmp, label %if.then, label %if.end, !dbg !970

if.then:                                          ; preds = %entry
  %gcov_ctr = load i64, i64* getelementptr inbounds ([18 x i64], [18 x i64]* @__llvm_gcov_ctr.37, i64 0, i64 0), align 16, !dbg !971
  %3 = add i64 %gcov_ctr, 1, !dbg !971
  store i64 %3, i64* getelementptr inbounds ([18 x i64], [18 x i64]* @__llvm_gcov_ctr.37, i64 0, i64 0), align 16, !dbg !971
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !971, !tbaa !410
  %5 = load i8*, i8** @mmap_base, align 8, !dbg !973, !tbaa !410
  %call1 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %4, i8* noundef getelementptr inbounds ([53 x i8], [53 x i8]* @.str.12, i64 0, i64 0), i8* noundef %orig_addr, i8* noundef %5) #12, !dbg !974
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !975, !tbaa !410
  %tv_sec = getelementptr inbounds %struct.timeval, %struct.timeval* %tv, i64 0, i32 0, !dbg !976
  %7 = load i64, i64* %tv_sec, align 8, !dbg !976, !tbaa !977
  %conv = trunc i64 %7 to i32, !dbg !979
  %tv_usec = getelementptr inbounds %struct.timeval, %struct.timeval* %tv, i64 0, i32 1, !dbg !980
  %8 = load i64, i64* %tv_usec, align 8, !dbg !980, !tbaa !981
  %conv2 = trunc i64 %8 to i32, !dbg !982
  %call3 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %6, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.13, i64 0, i64 0), i32 noundef %conv, i32 noundef %conv2) #12, !dbg !983
  br label %if.end, !dbg !984

if.end:                                           ; preds = %if.then, %entry
  call void @llvm.dbg.value(metadata i64 0, metadata !948, metadata !DIExpression()), !dbg !958
  call void @llvm.dbg.value(metadata i32 %1, metadata !951, metadata !DIExpression()), !dbg !958
  %9 = load i64, i64* @slabmem_limit, align 8, !dbg !985, !tbaa !492
  %cmp4211.not = icmp eq i64 %9, 0, !dbg !986
  br i1 %cmp4211.not, label %while.end, label %while.body.lr.ph, !dbg !987

while.body.lr.ph:                                 ; preds = %if.end
  %10 = ptrtoint i8* %orig_addr to i64
  %conv23 = zext i32 %1 to i64
  br label %while.body, !dbg !987

while.body:                                       ; preds = %while.body.lr.ph, %while.cond.backedge
  %checked.0213 = phi i64 [ 0, %while.body.lr.ph ], [ %checked.0.be, %while.cond.backedge ]
  %page_remain.0212 = phi i32 [ %1, %while.body.lr.ph ], [ %page_remain.0.be, %while.cond.backedge ]
  call void @llvm.dbg.value(metadata i64 %checked.0213, metadata !948, metadata !DIExpression()), !dbg !958
  call void @llvm.dbg.value(metadata i32 %page_remain.0212, metadata !951, metadata !DIExpression()), !dbg !958
  %11 = load i8*, i8** @mmap_base, align 8, !dbg !988, !tbaa !410
  %add.ptr = getelementptr inbounds i8, i8* %11, i64 %checked.0213, !dbg !989
  %12 = bitcast i8* %add.ptr to %struct._stritem*, !dbg !990
  call void @llvm.dbg.value(metadata %struct._stritem* %12, metadata !952, metadata !DIExpression()), !dbg !991
  %13 = load i32, i32* getelementptr inbounds (%struct.settings, %struct.settings* @settings, i64 0, i32 24), align 4, !dbg !992, !tbaa !962
  %conv7 = sext i32 %13 to i64, !dbg !993
  %rem = urem i64 %checked.0213, %conv7, !dbg !994
  %conv8 = trunc i64 %rem to i32, !dbg !995
  %call9 = call i32 @slabs_fixup(i8* noundef %add.ptr, i32 noundef %conv8) #12, !dbg !996
  call void @llvm.dbg.value(metadata i32 %call9, metadata !954, metadata !DIExpression()), !dbg !991
  %cmp10 = icmp eq i32 %call9, -1, !dbg !997
  br i1 %cmp10, label %if.then12, label %if.end24, !dbg !999

if.then12:                                        ; preds = %while.body
  %rem13 = urem i32 %page_remain.0212, %1, !dbg !1000
  %cmp14 = icmp eq i32 %rem13, 0, !dbg !1000
  br i1 %cmp14, label %if.end17, label %if.else, !dbg !1004

if.else:                                          ; preds = %if.then12
  %gcov_ctr128 = load i64, i64* getelementptr inbounds ([18 x i64], [18 x i64]* @__llvm_gcov_ctr.37, i64 0, i64 2), align 16, !dbg !1000
  %14 = add i64 %gcov_ctr128, 1, !dbg !1000
  store i64 %14, i64* getelementptr inbounds ([18 x i64], [18 x i64]* @__llvm_gcov_ctr.37, i64 0, i64 2), align 16, !dbg !1000
  call void @__assert_fail(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.14, i64 0, i64 0), i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.15, i64 0, i64 0), i32 noundef 376, i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @__PRETTY_FUNCTION__.restart_fixup, i64 0, i64 0)) #13, !dbg !1000
  unreachable, !dbg !1000

if.end17:                                         ; preds = %if.then12
  %cmp18 = icmp eq i32 %page_remain.0212, %1, !dbg !1005
  br i1 %cmp18, label %cleanup, label %if.else21, !dbg !1008

if.else21:                                        ; preds = %if.end17
  %gcov_ctr129 = load i64, i64* getelementptr inbounds ([18 x i64], [18 x i64]* @__llvm_gcov_ctr.37, i64 0, i64 3), align 8, !dbg !1005
  %15 = add i64 %gcov_ctr129, 1, !dbg !1005
  store i64 %15, i64* getelementptr inbounds ([18 x i64], [18 x i64]* @__llvm_gcov_ctr.37, i64 0, i64 3), align 8, !dbg !1005
  call void @__assert_fail(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.16, i64 0, i64 0), i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.15, i64 0, i64 0), i32 noundef 377, i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @__PRETTY_FUNCTION__.restart_fixup, i64 0, i64 0)) #13, !dbg !1005
  unreachable, !dbg !1005

if.end24:                                         ; preds = %while.body
  %it_flags = getelementptr inbounds i8, i8* %add.ptr, i64 38, !dbg !1009
  %16 = bitcast i8* %it_flags to i16*, !dbg !1009
  %17 = load i16, i16* %16, align 2, !dbg !1009, !tbaa !1011
  %18 = and i16 %17, 1, !dbg !1013
  %tobool.not = icmp eq i16 %18, 0, !dbg !1013
  br i1 %tobool.not, label %if.end44, label %if.then26, !dbg !1014

if.then26:                                        ; preds = %if.end24
  %next = bitcast i8* %add.ptr to %struct._stritem**, !dbg !1015
  %19 = load %struct._stritem*, %struct._stritem** %next, align 8, !dbg !1015, !tbaa !410
  %tobool27.not = icmp eq %struct._stritem* %19, null, !dbg !1018
  br i1 %tobool27.not, label %if.end34, label %if.then28, !dbg !1019

if.then28:                                        ; preds = %if.then26
  %gcov_ctr131 = load i64, i64* getelementptr inbounds ([18 x i64], [18 x i64]* @__llvm_gcov_ctr.37, i64 0, i64 5), align 8, !dbg !1020
  %20 = add i64 %gcov_ctr131, 1, !dbg !1020
  store i64 %20, i64* getelementptr inbounds ([18 x i64], [18 x i64]* @__llvm_gcov_ctr.37, i64 0, i64 5), align 8, !dbg !1020
  %21 = load %struct._stritem*, %struct._stritem** %next, align 8, !dbg !1022, !tbaa !410
  %22 = ptrtoint %struct._stritem* %21 to i64, !dbg !1023
  %sub = sub i64 %22, %10, !dbg !1024
  %23 = load i8*, i8** @mmap_base, align 8, !dbg !1025, !tbaa !410
  %24 = ptrtoint i8* %23 to i64, !dbg !1026
  %add32 = add i64 %sub, %24, !dbg !1027
  %25 = inttoptr i64 %add32 to %struct._stritem*, !dbg !1028
  store %struct._stritem* %25, %struct._stritem** %next, align 8, !dbg !1029, !tbaa !410
  br label %if.end34, !dbg !1030

if.end34:                                         ; preds = %if.then28, %if.then26
  %prev = getelementptr inbounds i8, i8* %add.ptr, i64 8, !dbg !1031
  %26 = bitcast i8* %prev to %struct._stritem**, !dbg !1031
  %27 = load %struct._stritem*, %struct._stritem** %26, align 8, !dbg !1031, !tbaa !410
  %tobool35.not = icmp eq %struct._stritem* %27, null, !dbg !1033
  br i1 %tobool35.not, label %if.end43, label %if.then36, !dbg !1034

if.then36:                                        ; preds = %if.end34
  %gcov_ctr132 = load i64, i64* getelementptr inbounds ([18 x i64], [18 x i64]* @__llvm_gcov_ctr.37, i64 0, i64 6), align 16, !dbg !1035
  %28 = add i64 %gcov_ctr132, 1, !dbg !1035
  store i64 %28, i64* getelementptr inbounds ([18 x i64], [18 x i64]* @__llvm_gcov_ctr.37, i64 0, i64 6), align 16, !dbg !1035
  %29 = load %struct._stritem*, %struct._stritem** %26, align 8, !dbg !1037, !tbaa !410
  %30 = ptrtoint %struct._stritem* %29 to i64, !dbg !1038
  %sub38 = sub i64 %30, %10, !dbg !1039
  %31 = load i8*, i8** @mmap_base, align 8, !dbg !1040, !tbaa !410
  %32 = ptrtoint i8* %31 to i64, !dbg !1041
  %add41 = add i64 %sub38, %32, !dbg !1042
  %33 = inttoptr i64 %add41 to %struct._stritem*, !dbg !1043
  store %struct._stritem* %33, %struct._stritem** %26, align 8, !dbg !1044, !tbaa !410
  br label %if.end43, !dbg !1045

if.end43:                                         ; preds = %if.then36, %if.end34
  %gcov_ctr133 = load i64, i64* getelementptr inbounds ([18 x i64], [18 x i64]* @__llvm_gcov_ctr.37, i64 0, i64 7), align 8, !dbg !1046
  %34 = add i64 %gcov_ctr133, 1, !dbg !1046
  store i64 %34, i64* getelementptr inbounds ([18 x i64], [18 x i64]* @__llvm_gcov_ctr.37, i64 0, i64 7), align 8, !dbg !1046
  call void @do_item_link_fixup(%struct._stritem* noundef nonnull %12) #12, !dbg !1047
  %.pre = load i16, i16* %16, align 2, !dbg !1048, !tbaa !1011
  br label %if.end44, !dbg !1049

if.end44:                                         ; preds = %if.end43, %if.end24
  %35 = phi i16 [ %.pre, %if.end43 ], [ %17, %if.end24 ], !dbg !1048
  %conv46 = zext i16 %35 to i32, !dbg !1050
  %and47 = and i32 %conv46, 96, !dbg !1051
  %tobool48.not = icmp eq i32 %and47, 0, !dbg !1051
  br i1 %tobool48.not, label %if.end102, label %if.then49, !dbg !1052

if.then49:                                        ; preds = %if.end44
  %and52 = and i32 %conv46, 32, !dbg !1053
  %tobool53.not = icmp eq i32 %and52, 0, !dbg !1053
  br i1 %tobool53.not, label %if.else71, label %if.then54, !dbg !1055

if.then54:                                        ; preds = %if.then49
  %gcov_ctr134 = load i64, i64* getelementptr inbounds ([18 x i64], [18 x i64]* @__llvm_gcov_ctr.37, i64 0, i64 8), align 16, !dbg !1056
  %36 = add i64 %gcov_ctr134, 1, !dbg !1056
  store i64 %36, i64* getelementptr inbounds ([18 x i64], [18 x i64]* @__llvm_gcov_ctr.37, i64 0, i64 8), align 16, !dbg !1056
  %data = getelementptr inbounds i8, i8* %add.ptr, i64 48, !dbg !1056
  %37 = getelementptr inbounds i8, i8* %add.ptr, i64 41, !dbg !1056
  %38 = load i8, i8* %37, align 1, !dbg !1056, !tbaa !514
  %39 = zext i8 %38 to i64
  %add.ptr56 = getelementptr inbounds i8, i8* %data, i64 1, !dbg !1056
  %add.ptr57 = getelementptr inbounds i8, i8* %add.ptr56, i64 %39, !dbg !1056
  %40 = load i16, i16* %16, align 2, !dbg !1056, !tbaa !1011
  %conv59 = zext i16 %40 to i32, !dbg !1056
  %and60 = lshr i32 %conv59, 6, !dbg !1056
  %41 = and i32 %and60, 4, !dbg !1056
  %42 = zext i32 %41 to i64, !dbg !1056
  %add.ptr62 = getelementptr inbounds i8, i8* %add.ptr57, i64 %42, !dbg !1056
  %and65 = shl nuw nsw i32 %conv59, 2, !dbg !1056
  %43 = and i32 %and65, 8, !dbg !1056
  %44 = zext i32 %43 to i64, !dbg !1056
  %add.ptr68 = getelementptr inbounds i8, i8* %add.ptr62, i64 %44, !dbg !1056
  call void @llvm.dbg.value(metadata i8* %add.ptr68, metadata !955, metadata !DIExpression()), !dbg !1058
  %45 = getelementptr inbounds i8, i8* %add.ptr68, i64 41, !dbg !1059
  %46 = load i8, i8* %45, align 1, !dbg !1059, !tbaa !514
  %conv69 = zext i8 %46 to i32, !dbg !1060
  %call70 = call i32 @slabs_size(i32 noundef %conv69) #12, !dbg !1061
  call void @llvm.dbg.value(metadata i32 %call70, metadata !954, metadata !DIExpression()), !dbg !991
  br label %if.end72, !dbg !1062

if.else71:                                        ; preds = %if.then49
  %gcov_ctr135 = load i64, i64* getelementptr inbounds ([18 x i64], [18 x i64]* @__llvm_gcov_ctr.37, i64 0, i64 9), align 8, !dbg !1063
  %47 = add i64 %gcov_ctr135, 1, !dbg !1063
  store i64 %47, i64* getelementptr inbounds ([18 x i64], [18 x i64]* @__llvm_gcov_ctr.37, i64 0, i64 9), align 8, !dbg !1063
  call void @llvm.dbg.value(metadata i8* %add.ptr, metadata !955, metadata !DIExpression()), !dbg !1058
  br label %if.end72

if.end72:                                         ; preds = %if.else71, %if.then54
  %size.0 = phi i32 [ %call70, %if.then54 ], [ %call9, %if.else71 ], !dbg !991
  %ch.0.in = phi i8* [ %add.ptr68, %if.then54 ], [ %add.ptr, %if.else71 ]
  call void @llvm.dbg.value(metadata i8* %ch.0.in, metadata !955, metadata !DIExpression()), !dbg !1058
  call void @llvm.dbg.value(metadata i32 %size.0, metadata !954, metadata !DIExpression()), !dbg !991
  %next73 = bitcast i8* %ch.0.in to %struct._strchunk**, !dbg !1065
  %48 = load %struct._strchunk*, %struct._strchunk** %next73, align 8, !dbg !1065, !tbaa !410
  %tobool74.not = icmp eq %struct._strchunk* %48, null, !dbg !1067
  br i1 %tobool74.not, label %if.end82, label %if.then75, !dbg !1068

if.then75:                                        ; preds = %if.end72
  %gcov_ctr136 = load i64, i64* getelementptr inbounds ([18 x i64], [18 x i64]* @__llvm_gcov_ctr.37, i64 0, i64 10), align 16, !dbg !1069
  %49 = add i64 %gcov_ctr136, 1, !dbg !1069
  store i64 %49, i64* getelementptr inbounds ([18 x i64], [18 x i64]* @__llvm_gcov_ctr.37, i64 0, i64 10), align 16, !dbg !1069
  %50 = load %struct._strchunk*, %struct._strchunk** %next73, align 8, !dbg !1071, !tbaa !410
  %51 = ptrtoint %struct._strchunk* %50 to i64, !dbg !1072
  %sub77 = sub i64 %51, %10, !dbg !1073
  %52 = load i8*, i8** @mmap_base, align 8, !dbg !1074, !tbaa !410
  %53 = ptrtoint i8* %52 to i64, !dbg !1075
  %add80 = add i64 %sub77, %53, !dbg !1076
  %54 = inttoptr i64 %add80 to %struct._strchunk*, !dbg !1077
  store %struct._strchunk* %54, %struct._strchunk** %next73, align 8, !dbg !1078, !tbaa !410
  br label %if.end82, !dbg !1079

if.end82:                                         ; preds = %if.then75, %if.end72
  %prev83 = getelementptr inbounds i8, i8* %ch.0.in, i64 8, !dbg !1080
  %55 = bitcast i8* %prev83 to %struct._strchunk**, !dbg !1080
  %56 = load %struct._strchunk*, %struct._strchunk** %55, align 8, !dbg !1080, !tbaa !410
  %tobool84.not = icmp eq %struct._strchunk* %56, null, !dbg !1082
  br i1 %tobool84.not, label %if.end92, label %if.then85, !dbg !1083

if.then85:                                        ; preds = %if.end82
  %gcov_ctr137 = load i64, i64* getelementptr inbounds ([18 x i64], [18 x i64]* @__llvm_gcov_ctr.37, i64 0, i64 11), align 8, !dbg !1084
  %57 = add i64 %gcov_ctr137, 1, !dbg !1084
  store i64 %57, i64* getelementptr inbounds ([18 x i64], [18 x i64]* @__llvm_gcov_ctr.37, i64 0, i64 11), align 8, !dbg !1084
  %58 = load %struct._strchunk*, %struct._strchunk** %55, align 8, !dbg !1086, !tbaa !410
  %59 = ptrtoint %struct._strchunk* %58 to i64, !dbg !1087
  %sub87 = sub i64 %59, %10, !dbg !1088
  %60 = load i8*, i8** @mmap_base, align 8, !dbg !1089, !tbaa !410
  %61 = ptrtoint i8* %60 to i64, !dbg !1090
  %add90 = add i64 %sub87, %61, !dbg !1091
  %62 = inttoptr i64 %add90 to %struct._strchunk*, !dbg !1092
  store %struct._strchunk* %62, %struct._strchunk** %55, align 8, !dbg !1093, !tbaa !410
  br label %if.end92, !dbg !1094

if.end92:                                         ; preds = %if.then85, %if.end82
  %head = getelementptr inbounds i8, i8* %ch.0.in, i64 16, !dbg !1095
  %63 = bitcast i8* %head to %struct._stritem**, !dbg !1095
  %64 = load %struct._stritem*, %struct._stritem** %63, align 8, !dbg !1095, !tbaa !410
  %tobool93.not = icmp eq %struct._stritem* %64, null, !dbg !1097
  br i1 %tobool93.not, label %if.end102, label %if.then94, !dbg !1098

if.then94:                                        ; preds = %if.end92
  %gcov_ctr138 = load i64, i64* getelementptr inbounds ([18 x i64], [18 x i64]* @__llvm_gcov_ctr.37, i64 0, i64 12), align 16, !dbg !1099
  %65 = add i64 %gcov_ctr138, 1, !dbg !1099
  store i64 %65, i64* getelementptr inbounds ([18 x i64], [18 x i64]* @__llvm_gcov_ctr.37, i64 0, i64 12), align 16, !dbg !1099
  %66 = load %struct._stritem*, %struct._stritem** %63, align 8, !dbg !1101, !tbaa !410
  %67 = ptrtoint %struct._stritem* %66 to i64, !dbg !1102
  %sub96 = sub i64 %67, %10, !dbg !1103
  %68 = load i8*, i8** @mmap_base, align 8, !dbg !1104, !tbaa !410
  %69 = ptrtoint i8* %68 to i64, !dbg !1105
  %add99 = add i64 %sub96, %69, !dbg !1106
  %70 = inttoptr i64 %add99 to %struct._stritem*, !dbg !1107
  store %struct._stritem* %70, %struct._stritem** %63, align 8, !dbg !1108, !tbaa !410
  br label %if.end102, !dbg !1109

if.end102:                                        ; preds = %if.end92, %if.then94, %if.end44
  %size.1 = phi i32 [ %call9, %if.end44 ], [ %size.0, %if.then94 ], [ %size.0, %if.end92 ], !dbg !991
  call void @llvm.dbg.value(metadata i32 %size.1, metadata !954, metadata !DIExpression()), !dbg !991
  %conv103 = sext i32 %size.1 to i64, !dbg !1110
  %add104 = add i64 %checked.0213, %conv103, !dbg !1111
  call void @llvm.dbg.value(metadata i64 %add104, metadata !948, metadata !DIExpression()), !dbg !958
  %sub105 = sub i32 %page_remain.0212, %size.1, !dbg !1112
  call void @llvm.dbg.value(metadata i32 %sub105, metadata !951, metadata !DIExpression()), !dbg !958
  %cmp106 = icmp ugt i32 %size.1, %sub105, !dbg !1113
  br i1 %cmp106, label %if.then108, label %cleanup.cont, !dbg !1115

if.then108:                                       ; preds = %if.end102
  %gcov_ctr139 = load i64, i64* getelementptr inbounds ([18 x i64], [18 x i64]* @__llvm_gcov_ctr.37, i64 0, i64 13), align 8, !dbg !1116
  %71 = add i64 %gcov_ctr139, 1, !dbg !1116
  store i64 %71, i64* getelementptr inbounds ([18 x i64], [18 x i64]* @__llvm_gcov_ctr.37, i64 0, i64 13), align 8, !dbg !1116
  %conv109 = zext i32 %sub105 to i64, !dbg !1116
  %add110 = add i64 %add104, %conv109, !dbg !1118
  call void @llvm.dbg.value(metadata i64 %add110, metadata !948, metadata !DIExpression()), !dbg !958
  %72 = load i32, i32* getelementptr inbounds (%struct.settings, %struct.settings* @settings, i64 0, i32 24), align 4, !dbg !1119, !tbaa !962
  call void @llvm.dbg.value(metadata i32 %72, metadata !951, metadata !DIExpression()), !dbg !958
  br label %cleanup.cont, !dbg !1120

cleanup:                                          ; preds = %if.end17
  %gcov_ctr130 = load i64, i64* getelementptr inbounds ([18 x i64], [18 x i64]* @__llvm_gcov_ctr.37, i64 0, i64 4), align 16, !dbg !1121
  %73 = add i64 %gcov_ctr130, 1, !dbg !1121
  store i64 %73, i64* getelementptr inbounds ([18 x i64], [18 x i64]* @__llvm_gcov_ctr.37, i64 0, i64 4), align 16, !dbg !1121
  %add = add i64 %checked.0213, %conv23, !dbg !1122
  call void @llvm.dbg.value(metadata i64 %add, metadata !948, metadata !DIExpression()), !dbg !958
  call void @llvm.dbg.value(metadata i32 %1, metadata !951, metadata !DIExpression()), !dbg !958
  br label %while.cond.backedge

cleanup.cont:                                     ; preds = %if.end102, %if.then108
  %page_remain.1 = phi i32 [ %72, %if.then108 ], [ %sub105, %if.end102 ], !dbg !991
  %checked.1 = phi i64 [ %add110, %if.then108 ], [ %add104, %if.end102 ], !dbg !991
  call void @llvm.dbg.value(metadata i64 %checked.1, metadata !948, metadata !DIExpression()), !dbg !958
  call void @llvm.dbg.value(metadata i32 %page_remain.1, metadata !951, metadata !DIExpression()), !dbg !958
  %gcov_ctr140 = load i64, i64* getelementptr inbounds ([18 x i64], [18 x i64]* @__llvm_gcov_ctr.37, i64 0, i64 14), align 16, !dbg !1123
  %74 = add i64 %gcov_ctr140, 1, !dbg !1123
  store i64 %74, i64* getelementptr inbounds ([18 x i64], [18 x i64]* @__llvm_gcov_ctr.37, i64 0, i64 14), align 16, !dbg !1123
  call void @llvm.dbg.value(metadata i64 %add, metadata !948, metadata !DIExpression()), !dbg !958
  call void @llvm.dbg.value(metadata i32 %1, metadata !951, metadata !DIExpression()), !dbg !958
  %gcov_ctr142 = load i64, i64* getelementptr inbounds ([18 x i64], [18 x i64]* @__llvm_gcov_ctr.37, i64 0, i64 16), align 16, !dbg !987
  %75 = add i64 %gcov_ctr142, 1, !dbg !987
  store i64 %75, i64* getelementptr inbounds ([18 x i64], [18 x i64]* @__llvm_gcov_ctr.37, i64 0, i64 16), align 16, !dbg !987
  br label %while.cond.backedge, !dbg !987

while.cond.backedge:                              ; preds = %cleanup.cont, %cleanup
  %page_remain.0.be = phi i32 [ %1, %cleanup ], [ %page_remain.1, %cleanup.cont ]
  %checked.0.be = phi i64 [ %add, %cleanup ], [ %checked.1, %cleanup.cont ]
  call void @llvm.dbg.value(metadata i64 %checked.0.be, metadata !948, metadata !DIExpression()), !dbg !958
  call void @llvm.dbg.value(metadata i32 %page_remain.0.be, metadata !951, metadata !DIExpression()), !dbg !958
  %76 = load i64, i64* @slabmem_limit, align 8, !dbg !985, !tbaa !492
  %cmp4 = icmp ult i64 %checked.0.be, %76, !dbg !986
  br i1 %cmp4, label %while.body, label %while.end, !dbg !987, !llvm.loop !1124

while.end:                                        ; preds = %while.cond.backedge, %if.end
  %gcov_ctr127 = load i64, i64* getelementptr inbounds ([18 x i64], [18 x i64]* @__llvm_gcov_ctr.37, i64 0, i64 1), align 8, !dbg !1125
  %77 = add i64 %gcov_ctr127, 1, !dbg !1125
  store i64 %77, i64* getelementptr inbounds ([18 x i64], [18 x i64]* @__llvm_gcov_ctr.37, i64 0, i64 1), align 8, !dbg !1125
  %78 = load i32, i32* getelementptr inbounds (%struct.settings, %struct.settings* @settings, i64 0, i32 5), align 8, !dbg !1125, !tbaa !968
  %cmp113 = icmp sgt i32 %78, 0, !dbg !1127
  br i1 %cmp113, label %if.then115, label %if.end122, !dbg !1128

if.then115:                                       ; preds = %while.end
  %gcov_ctr143 = load i64, i64* getelementptr inbounds ([18 x i64], [18 x i64]* @__llvm_gcov_ctr.37, i64 0, i64 17), align 8, !dbg !1129
  %79 = add i64 %gcov_ctr143, 1, !dbg !1129
  store i64 %79, i64* getelementptr inbounds ([18 x i64], [18 x i64]* @__llvm_gcov_ctr.37, i64 0, i64 17), align 8, !dbg !1129
  %call116 = call i32 @gettimeofday(%struct.timeval* noundef nonnull %tv, i8* noundef null) #12, !dbg !1129
  %80 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1131, !tbaa !410
  %tv_sec117 = getelementptr inbounds %struct.timeval, %struct.timeval* %tv, i64 0, i32 0, !dbg !1132
  %81 = load i64, i64* %tv_sec117, align 8, !dbg !1132, !tbaa !977
  %conv118 = trunc i64 %81 to i32, !dbg !1133
  %tv_usec119 = getelementptr inbounds %struct.timeval, %struct.timeval* %tv, i64 0, i32 1, !dbg !1134
  %82 = load i64, i64* %tv_usec119, align 8, !dbg !1134, !tbaa !981
  %conv120 = trunc i64 %82 to i32, !dbg !1135
  %call121 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %80, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.17, i64 0, i64 0), i32 noundef %conv118, i32 noundef %conv120) #12, !dbg !1136
  br label %if.end122, !dbg !1137

if.end122:                                        ; preds = %if.then115, %while.end
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #14, !dbg !1138
  ret i32 0, !dbg !1139
}

; Function Attrs: nounwind
declare !dbg !1140 dso_local i32 @gettimeofday(%struct.timeval* noundef, i8* noundef) local_unnamed_addr #3

declare !dbg !1147 dso_local i32 @slabs_fixup(i8* noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: noreturn nounwind
declare dso_local void @__assert_fail(i8* noundef, i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #5

declare !dbg !1152 dso_local void @do_item_link_fixup(%struct._stritem* noundef) local_unnamed_addr #4

declare !dbg !1156 dso_local i32 @slabs_size(i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare !dbg !1159 dso_local i64 @sysconf(i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare !dbg !1162 dso_local i64 @strlen(i8* noundef) local_unnamed_addr #6

; Function Attrs: nounwind
declare !dbg !1165 dso_local i8* @memcpy(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #3

declare !dbg !1171 dso_local %struct._IO_FILE* @fopen(i8* noundef, i8* noundef) local_unnamed_addr #4

declare !dbg !1174 dso_local i32 @fclose(%struct._IO_FILE* noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare !dbg !1177 dso_local i32 @unlink(i8* noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare !dbg !1178 dso_local i32 @umask(i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define internal void @__llvm_gcov_writeout() unnamed_addr #8 {
entry:
  tail call void @llvm_gcda_start_file(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @0, i64 0, i64 0), i32 875575338, i32 139929467) #14
  br label %counter.loop.header

counter.loop.header:                              ; preds = %entry, %counter.loop.header
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.next, %counter.loop.header ]
  %0 = getelementptr inbounds [10 x %emit_function_args_ty], [10 x %emit_function_args_ty]* @__llvm_internal_gcov_emit_function_args.0, i64 0, i64 %indvars.iv, i32 0
  %ident = load i32, i32* %0, align 4
  %1 = getelementptr inbounds [10 x %emit_function_args_ty], [10 x %emit_function_args_ty]* @__llvm_internal_gcov_emit_function_args.0, i64 0, i64 %indvars.iv, i32 1
  %func_checkssum = load i32, i32* %1, align 4
  %2 = getelementptr inbounds [10 x %emit_function_args_ty], [10 x %emit_function_args_ty]* @__llvm_internal_gcov_emit_function_args.0, i64 0, i64 %indvars.iv, i32 2
  %cfg_checksum = load i32, i32* %2, align 4
  tail call void @llvm_gcda_emit_function(i32 %ident, i32 %func_checkssum, i32 %cfg_checksum) #14
  %3 = getelementptr inbounds [10 x %emit_arcs_args_ty], [10 x %emit_arcs_args_ty]* @__llvm_internal_gcov_emit_arcs_args.0, i64 0, i64 %indvars.iv, i32 0
  %num_counters = load i32, i32* %3, align 16
  %4 = getelementptr inbounds [10 x %emit_arcs_args_ty], [10 x %emit_arcs_args_ty]* @__llvm_internal_gcov_emit_arcs_args.0, i64 0, i64 %indvars.iv, i32 1
  %counters = load i64*, i64** %4, align 8
  tail call void @llvm_gcda_emit_arcs(i32 %num_counters, i64* %counters) #14
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 10
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
define internal void @__llvm_gcov_reset() unnamed_addr #9 {
entry:
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(32) bitcast ([4 x i64]* @__llvm_gcov_ctr to i8*), i8 0, i64 32, i1 false)
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(112) bitcast ([14 x i64]* @__llvm_gcov_ctr.29 to i8*), i8 0, i64 112, i1 false)
  store i64 0, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.30, i64 0, i64 0), align 8
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) bitcast ([2 x i64]* @__llvm_gcov_ctr.31 to i8*), i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(48) bitcast ([6 x i64]* @__llvm_gcov_ctr.32 to i8*), i8 0, i64 48, i1 false)
  store i64 0, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.33, i64 0, i64 0), align 8
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(88) bitcast ([11 x i64]* @__llvm_gcov_ctr.34 to i8*), i8 0, i64 88, i1 false)
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(32) bitcast ([4 x i64]* @__llvm_gcov_ctr.35 to i8*), i8 0, i64 32, i1 false)
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(40) bitcast ([5 x i64]* @__llvm_gcov_ctr.36 to i8*), i8 0, i64 40, i1 false)
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(144) bitcast ([18 x i64]* @__llvm_gcov_ctr.37 to i8*), i8 0, i64 144, i1 false)
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #10

; Function Attrs: noinline nounwind uwtable
define internal void @__llvm_gcov_init() unnamed_addr #8 {
entry:
  tail call void @llvm_gcov_init(void ()* nonnull @__llvm_gcov_writeout, void ()* nonnull @__llvm_gcov_reset) #14
  ret void
}

declare void @llvm_gcov_init(void ()*, void ()*) local_unnamed_addr

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #11

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umax.i64(i64, i64) #11

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #3 = { nounwind "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn nounwind "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nosync nounwind willreturn }
attributes #8 = { noinline nounwind uwtable }
attributes #9 = { mustprogress nofree noinline nosync nounwind uwtable willreturn writeonly }
attributes #10 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #11 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #12 = { nobuiltin nounwind "no-builtins" }
attributes #13 = { nobuiltin noreturn nounwind "no-builtins" }
attributes #14 = { nounwind }
attributes #15 = { nobuiltin "no-builtins" }
attributes #16 = { nobuiltin nounwind readonly willreturn "no-builtins" }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!385, !386, !387, !388}
!llvm.gcov = !{!389}
!llvm.ident = !{!390}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "memory_file", scope: !2, file: !3, line: 27, type: !247, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 14.0.0", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !231, globals: !376, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "restart.c", directory: "/home/xuheng/blackbox/llvm-test/memcached", checksumkind: CSK_MD5, checksum: "746241a1abae182820c51a9ba83b9422")
!4 = !{!5, !13}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "restart_get_kv_ret", file: !6, line: 13, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./restart.h", directory: "/home/xuheng/blackbox/llvm-test/memcached", checksumkind: CSK_MD5, checksum: "34d98453d5bea5bc37d52cb816cff5f2")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12}
!9 = !DIEnumerator(name: "RESTART_OK", value: 0)
!10 = !DIEnumerator(name: "RESTART_NOTAG", value: 1)
!11 = !DIEnumerator(name: "RESTART_BADLINE", value: 2)
!12 = !DIEnumerator(name: "RESTART_DONE", value: 3)
!13 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !14, line: 71, baseType: !7, size: 32, elements: !15)
!14 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/confname.h", directory: "", checksumkind: CSK_MD5, checksum: "0f5bce861c15bbd1441ec9f4ae61d842")
!15 = !{!16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230}
!16 = !DIEnumerator(name: "_SC_ARG_MAX", value: 0)
!17 = !DIEnumerator(name: "_SC_CHILD_MAX", value: 1)
!18 = !DIEnumerator(name: "_SC_CLK_TCK", value: 2)
!19 = !DIEnumerator(name: "_SC_NGROUPS_MAX", value: 3)
!20 = !DIEnumerator(name: "_SC_OPEN_MAX", value: 4)
!21 = !DIEnumerator(name: "_SC_STREAM_MAX", value: 5)
!22 = !DIEnumerator(name: "_SC_TZNAME_MAX", value: 6)
!23 = !DIEnumerator(name: "_SC_JOB_CONTROL", value: 7)
!24 = !DIEnumerator(name: "_SC_SAVED_IDS", value: 8)
!25 = !DIEnumerator(name: "_SC_REALTIME_SIGNALS", value: 9)
!26 = !DIEnumerator(name: "_SC_PRIORITY_SCHEDULING", value: 10)
!27 = !DIEnumerator(name: "_SC_TIMERS", value: 11)
!28 = !DIEnumerator(name: "_SC_ASYNCHRONOUS_IO", value: 12)
!29 = !DIEnumerator(name: "_SC_PRIORITIZED_IO", value: 13)
!30 = !DIEnumerator(name: "_SC_SYNCHRONIZED_IO", value: 14)
!31 = !DIEnumerator(name: "_SC_FSYNC", value: 15)
!32 = !DIEnumerator(name: "_SC_MAPPED_FILES", value: 16)
!33 = !DIEnumerator(name: "_SC_MEMLOCK", value: 17)
!34 = !DIEnumerator(name: "_SC_MEMLOCK_RANGE", value: 18)
!35 = !DIEnumerator(name: "_SC_MEMORY_PROTECTION", value: 19)
!36 = !DIEnumerator(name: "_SC_MESSAGE_PASSING", value: 20)
!37 = !DIEnumerator(name: "_SC_SEMAPHORES", value: 21)
!38 = !DIEnumerator(name: "_SC_SHARED_MEMORY_OBJECTS", value: 22)
!39 = !DIEnumerator(name: "_SC_AIO_LISTIO_MAX", value: 23)
!40 = !DIEnumerator(name: "_SC_AIO_MAX", value: 24)
!41 = !DIEnumerator(name: "_SC_AIO_PRIO_DELTA_MAX", value: 25)
!42 = !DIEnumerator(name: "_SC_DELAYTIMER_MAX", value: 26)
!43 = !DIEnumerator(name: "_SC_MQ_OPEN_MAX", value: 27)
!44 = !DIEnumerator(name: "_SC_MQ_PRIO_MAX", value: 28)
!45 = !DIEnumerator(name: "_SC_VERSION", value: 29)
!46 = !DIEnumerator(name: "_SC_PAGESIZE", value: 30)
!47 = !DIEnumerator(name: "_SC_RTSIG_MAX", value: 31)
!48 = !DIEnumerator(name: "_SC_SEM_NSEMS_MAX", value: 32)
!49 = !DIEnumerator(name: "_SC_SEM_VALUE_MAX", value: 33)
!50 = !DIEnumerator(name: "_SC_SIGQUEUE_MAX", value: 34)
!51 = !DIEnumerator(name: "_SC_TIMER_MAX", value: 35)
!52 = !DIEnumerator(name: "_SC_BC_BASE_MAX", value: 36)
!53 = !DIEnumerator(name: "_SC_BC_DIM_MAX", value: 37)
!54 = !DIEnumerator(name: "_SC_BC_SCALE_MAX", value: 38)
!55 = !DIEnumerator(name: "_SC_BC_STRING_MAX", value: 39)
!56 = !DIEnumerator(name: "_SC_COLL_WEIGHTS_MAX", value: 40)
!57 = !DIEnumerator(name: "_SC_EQUIV_CLASS_MAX", value: 41)
!58 = !DIEnumerator(name: "_SC_EXPR_NEST_MAX", value: 42)
!59 = !DIEnumerator(name: "_SC_LINE_MAX", value: 43)
!60 = !DIEnumerator(name: "_SC_RE_DUP_MAX", value: 44)
!61 = !DIEnumerator(name: "_SC_CHARCLASS_NAME_MAX", value: 45)
!62 = !DIEnumerator(name: "_SC_2_VERSION", value: 46)
!63 = !DIEnumerator(name: "_SC_2_C_BIND", value: 47)
!64 = !DIEnumerator(name: "_SC_2_C_DEV", value: 48)
!65 = !DIEnumerator(name: "_SC_2_FORT_DEV", value: 49)
!66 = !DIEnumerator(name: "_SC_2_FORT_RUN", value: 50)
!67 = !DIEnumerator(name: "_SC_2_SW_DEV", value: 51)
!68 = !DIEnumerator(name: "_SC_2_LOCALEDEF", value: 52)
!69 = !DIEnumerator(name: "_SC_PII", value: 53)
!70 = !DIEnumerator(name: "_SC_PII_XTI", value: 54)
!71 = !DIEnumerator(name: "_SC_PII_SOCKET", value: 55)
!72 = !DIEnumerator(name: "_SC_PII_INTERNET", value: 56)
!73 = !DIEnumerator(name: "_SC_PII_OSI", value: 57)
!74 = !DIEnumerator(name: "_SC_POLL", value: 58)
!75 = !DIEnumerator(name: "_SC_SELECT", value: 59)
!76 = !DIEnumerator(name: "_SC_UIO_MAXIOV", value: 60)
!77 = !DIEnumerator(name: "_SC_IOV_MAX", value: 60)
!78 = !DIEnumerator(name: "_SC_PII_INTERNET_STREAM", value: 61)
!79 = !DIEnumerator(name: "_SC_PII_INTERNET_DGRAM", value: 62)
!80 = !DIEnumerator(name: "_SC_PII_OSI_COTS", value: 63)
!81 = !DIEnumerator(name: "_SC_PII_OSI_CLTS", value: 64)
!82 = !DIEnumerator(name: "_SC_PII_OSI_M", value: 65)
!83 = !DIEnumerator(name: "_SC_T_IOV_MAX", value: 66)
!84 = !DIEnumerator(name: "_SC_THREADS", value: 67)
!85 = !DIEnumerator(name: "_SC_THREAD_SAFE_FUNCTIONS", value: 68)
!86 = !DIEnumerator(name: "_SC_GETGR_R_SIZE_MAX", value: 69)
!87 = !DIEnumerator(name: "_SC_GETPW_R_SIZE_MAX", value: 70)
!88 = !DIEnumerator(name: "_SC_LOGIN_NAME_MAX", value: 71)
!89 = !DIEnumerator(name: "_SC_TTY_NAME_MAX", value: 72)
!90 = !DIEnumerator(name: "_SC_THREAD_DESTRUCTOR_ITERATIONS", value: 73)
!91 = !DIEnumerator(name: "_SC_THREAD_KEYS_MAX", value: 74)
!92 = !DIEnumerator(name: "_SC_THREAD_STACK_MIN", value: 75)
!93 = !DIEnumerator(name: "_SC_THREAD_THREADS_MAX", value: 76)
!94 = !DIEnumerator(name: "_SC_THREAD_ATTR_STACKADDR", value: 77)
!95 = !DIEnumerator(name: "_SC_THREAD_ATTR_STACKSIZE", value: 78)
!96 = !DIEnumerator(name: "_SC_THREAD_PRIORITY_SCHEDULING", value: 79)
!97 = !DIEnumerator(name: "_SC_THREAD_PRIO_INHERIT", value: 80)
!98 = !DIEnumerator(name: "_SC_THREAD_PRIO_PROTECT", value: 81)
!99 = !DIEnumerator(name: "_SC_THREAD_PROCESS_SHARED", value: 82)
!100 = !DIEnumerator(name: "_SC_NPROCESSORS_CONF", value: 83)
!101 = !DIEnumerator(name: "_SC_NPROCESSORS_ONLN", value: 84)
!102 = !DIEnumerator(name: "_SC_PHYS_PAGES", value: 85)
!103 = !DIEnumerator(name: "_SC_AVPHYS_PAGES", value: 86)
!104 = !DIEnumerator(name: "_SC_ATEXIT_MAX", value: 87)
!105 = !DIEnumerator(name: "_SC_PASS_MAX", value: 88)
!106 = !DIEnumerator(name: "_SC_XOPEN_VERSION", value: 89)
!107 = !DIEnumerator(name: "_SC_XOPEN_XCU_VERSION", value: 90)
!108 = !DIEnumerator(name: "_SC_XOPEN_UNIX", value: 91)
!109 = !DIEnumerator(name: "_SC_XOPEN_CRYPT", value: 92)
!110 = !DIEnumerator(name: "_SC_XOPEN_ENH_I18N", value: 93)
!111 = !DIEnumerator(name: "_SC_XOPEN_SHM", value: 94)
!112 = !DIEnumerator(name: "_SC_2_CHAR_TERM", value: 95)
!113 = !DIEnumerator(name: "_SC_2_C_VERSION", value: 96)
!114 = !DIEnumerator(name: "_SC_2_UPE", value: 97)
!115 = !DIEnumerator(name: "_SC_XOPEN_XPG2", value: 98)
!116 = !DIEnumerator(name: "_SC_XOPEN_XPG3", value: 99)
!117 = !DIEnumerator(name: "_SC_XOPEN_XPG4", value: 100)
!118 = !DIEnumerator(name: "_SC_CHAR_BIT", value: 101)
!119 = !DIEnumerator(name: "_SC_CHAR_MAX", value: 102)
!120 = !DIEnumerator(name: "_SC_CHAR_MIN", value: 103)
!121 = !DIEnumerator(name: "_SC_INT_MAX", value: 104)
!122 = !DIEnumerator(name: "_SC_INT_MIN", value: 105)
!123 = !DIEnumerator(name: "_SC_LONG_BIT", value: 106)
!124 = !DIEnumerator(name: "_SC_WORD_BIT", value: 107)
!125 = !DIEnumerator(name: "_SC_MB_LEN_MAX", value: 108)
!126 = !DIEnumerator(name: "_SC_NZERO", value: 109)
!127 = !DIEnumerator(name: "_SC_SSIZE_MAX", value: 110)
!128 = !DIEnumerator(name: "_SC_SCHAR_MAX", value: 111)
!129 = !DIEnumerator(name: "_SC_SCHAR_MIN", value: 112)
!130 = !DIEnumerator(name: "_SC_SHRT_MAX", value: 113)
!131 = !DIEnumerator(name: "_SC_SHRT_MIN", value: 114)
!132 = !DIEnumerator(name: "_SC_UCHAR_MAX", value: 115)
!133 = !DIEnumerator(name: "_SC_UINT_MAX", value: 116)
!134 = !DIEnumerator(name: "_SC_ULONG_MAX", value: 117)
!135 = !DIEnumerator(name: "_SC_USHRT_MAX", value: 118)
!136 = !DIEnumerator(name: "_SC_NL_ARGMAX", value: 119)
!137 = !DIEnumerator(name: "_SC_NL_LANGMAX", value: 120)
!138 = !DIEnumerator(name: "_SC_NL_MSGMAX", value: 121)
!139 = !DIEnumerator(name: "_SC_NL_NMAX", value: 122)
!140 = !DIEnumerator(name: "_SC_NL_SETMAX", value: 123)
!141 = !DIEnumerator(name: "_SC_NL_TEXTMAX", value: 124)
!142 = !DIEnumerator(name: "_SC_XBS5_ILP32_OFF32", value: 125)
!143 = !DIEnumerator(name: "_SC_XBS5_ILP32_OFFBIG", value: 126)
!144 = !DIEnumerator(name: "_SC_XBS5_LP64_OFF64", value: 127)
!145 = !DIEnumerator(name: "_SC_XBS5_LPBIG_OFFBIG", value: 128)
!146 = !DIEnumerator(name: "_SC_XOPEN_LEGACY", value: 129)
!147 = !DIEnumerator(name: "_SC_XOPEN_REALTIME", value: 130)
!148 = !DIEnumerator(name: "_SC_XOPEN_REALTIME_THREADS", value: 131)
!149 = !DIEnumerator(name: "_SC_ADVISORY_INFO", value: 132)
!150 = !DIEnumerator(name: "_SC_BARRIERS", value: 133)
!151 = !DIEnumerator(name: "_SC_BASE", value: 134)
!152 = !DIEnumerator(name: "_SC_C_LANG_SUPPORT", value: 135)
!153 = !DIEnumerator(name: "_SC_C_LANG_SUPPORT_R", value: 136)
!154 = !DIEnumerator(name: "_SC_CLOCK_SELECTION", value: 137)
!155 = !DIEnumerator(name: "_SC_CPUTIME", value: 138)
!156 = !DIEnumerator(name: "_SC_THREAD_CPUTIME", value: 139)
!157 = !DIEnumerator(name: "_SC_DEVICE_IO", value: 140)
!158 = !DIEnumerator(name: "_SC_DEVICE_SPECIFIC", value: 141)
!159 = !DIEnumerator(name: "_SC_DEVICE_SPECIFIC_R", value: 142)
!160 = !DIEnumerator(name: "_SC_FD_MGMT", value: 143)
!161 = !DIEnumerator(name: "_SC_FIFO", value: 144)
!162 = !DIEnumerator(name: "_SC_PIPE", value: 145)
!163 = !DIEnumerator(name: "_SC_FILE_ATTRIBUTES", value: 146)
!164 = !DIEnumerator(name: "_SC_FILE_LOCKING", value: 147)
!165 = !DIEnumerator(name: "_SC_FILE_SYSTEM", value: 148)
!166 = !DIEnumerator(name: "_SC_MONOTONIC_CLOCK", value: 149)
!167 = !DIEnumerator(name: "_SC_MULTI_PROCESS", value: 150)
!168 = !DIEnumerator(name: "_SC_SINGLE_PROCESS", value: 151)
!169 = !DIEnumerator(name: "_SC_NETWORKING", value: 152)
!170 = !DIEnumerator(name: "_SC_READER_WRITER_LOCKS", value: 153)
!171 = !DIEnumerator(name: "_SC_SPIN_LOCKS", value: 154)
!172 = !DIEnumerator(name: "_SC_REGEXP", value: 155)
!173 = !DIEnumerator(name: "_SC_REGEX_VERSION", value: 156)
!174 = !DIEnumerator(name: "_SC_SHELL", value: 157)
!175 = !DIEnumerator(name: "_SC_SIGNALS", value: 158)
!176 = !DIEnumerator(name: "_SC_SPAWN", value: 159)
!177 = !DIEnumerator(name: "_SC_SPORADIC_SERVER", value: 160)
!178 = !DIEnumerator(name: "_SC_THREAD_SPORADIC_SERVER", value: 161)
!179 = !DIEnumerator(name: "_SC_SYSTEM_DATABASE", value: 162)
!180 = !DIEnumerator(name: "_SC_SYSTEM_DATABASE_R", value: 163)
!181 = !DIEnumerator(name: "_SC_TIMEOUTS", value: 164)
!182 = !DIEnumerator(name: "_SC_TYPED_MEMORY_OBJECTS", value: 165)
!183 = !DIEnumerator(name: "_SC_USER_GROUPS", value: 166)
!184 = !DIEnumerator(name: "_SC_USER_GROUPS_R", value: 167)
!185 = !DIEnumerator(name: "_SC_2_PBS", value: 168)
!186 = !DIEnumerator(name: "_SC_2_PBS_ACCOUNTING", value: 169)
!187 = !DIEnumerator(name: "_SC_2_PBS_LOCATE", value: 170)
!188 = !DIEnumerator(name: "_SC_2_PBS_MESSAGE", value: 171)
!189 = !DIEnumerator(name: "_SC_2_PBS_TRACK", value: 172)
!190 = !DIEnumerator(name: "_SC_SYMLOOP_MAX", value: 173)
!191 = !DIEnumerator(name: "_SC_STREAMS", value: 174)
!192 = !DIEnumerator(name: "_SC_2_PBS_CHECKPOINT", value: 175)
!193 = !DIEnumerator(name: "_SC_V6_ILP32_OFF32", value: 176)
!194 = !DIEnumerator(name: "_SC_V6_ILP32_OFFBIG", value: 177)
!195 = !DIEnumerator(name: "_SC_V6_LP64_OFF64", value: 178)
!196 = !DIEnumerator(name: "_SC_V6_LPBIG_OFFBIG", value: 179)
!197 = !DIEnumerator(name: "_SC_HOST_NAME_MAX", value: 180)
!198 = !DIEnumerator(name: "_SC_TRACE", value: 181)
!199 = !DIEnumerator(name: "_SC_TRACE_EVENT_FILTER", value: 182)
!200 = !DIEnumerator(name: "_SC_TRACE_INHERIT", value: 183)
!201 = !DIEnumerator(name: "_SC_TRACE_LOG", value: 184)
!202 = !DIEnumerator(name: "_SC_LEVEL1_ICACHE_SIZE", value: 185)
!203 = !DIEnumerator(name: "_SC_LEVEL1_ICACHE_ASSOC", value: 186)
!204 = !DIEnumerator(name: "_SC_LEVEL1_ICACHE_LINESIZE", value: 187)
!205 = !DIEnumerator(name: "_SC_LEVEL1_DCACHE_SIZE", value: 188)
!206 = !DIEnumerator(name: "_SC_LEVEL1_DCACHE_ASSOC", value: 189)
!207 = !DIEnumerator(name: "_SC_LEVEL1_DCACHE_LINESIZE", value: 190)
!208 = !DIEnumerator(name: "_SC_LEVEL2_CACHE_SIZE", value: 191)
!209 = !DIEnumerator(name: "_SC_LEVEL2_CACHE_ASSOC", value: 192)
!210 = !DIEnumerator(name: "_SC_LEVEL2_CACHE_LINESIZE", value: 193)
!211 = !DIEnumerator(name: "_SC_LEVEL3_CACHE_SIZE", value: 194)
!212 = !DIEnumerator(name: "_SC_LEVEL3_CACHE_ASSOC", value: 195)
!213 = !DIEnumerator(name: "_SC_LEVEL3_CACHE_LINESIZE", value: 196)
!214 = !DIEnumerator(name: "_SC_LEVEL4_CACHE_SIZE", value: 197)
!215 = !DIEnumerator(name: "_SC_LEVEL4_CACHE_ASSOC", value: 198)
!216 = !DIEnumerator(name: "_SC_LEVEL4_CACHE_LINESIZE", value: 199)
!217 = !DIEnumerator(name: "_SC_IPV6", value: 235)
!218 = !DIEnumerator(name: "_SC_RAW_SOCKETS", value: 236)
!219 = !DIEnumerator(name: "_SC_V7_ILP32_OFF32", value: 237)
!220 = !DIEnumerator(name: "_SC_V7_ILP32_OFFBIG", value: 238)
!221 = !DIEnumerator(name: "_SC_V7_LP64_OFF64", value: 239)
!222 = !DIEnumerator(name: "_SC_V7_LPBIG_OFFBIG", value: 240)
!223 = !DIEnumerator(name: "_SC_SS_REPL_MAX", value: 241)
!224 = !DIEnumerator(name: "_SC_TRACE_EVENT_NAME_MAX", value: 242)
!225 = !DIEnumerator(name: "_SC_TRACE_NAME_MAX", value: 243)
!226 = !DIEnumerator(name: "_SC_TRACE_SYS_MAX", value: 244)
!227 = !DIEnumerator(name: "_SC_TRACE_USER_EVENT_MAX", value: 245)
!228 = !DIEnumerator(name: "_SC_XOPEN_STREAMS", value: 246)
!229 = !DIEnumerator(name: "_SC_THREAD_ROBUST_PRIO_INHERIT", value: 247)
!230 = !DIEnumerator(name: "_SC_THREAD_ROBUST_PRIO_PROTECT", value: 248)
!231 = !{!232, !233, !245, !324, !247, !358, !359}
!232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !234, size: 64)
!234 = !DIDerivedType(tag: DW_TAG_typedef, name: "restart_cb_ctx", file: !3, line: 65, baseType: !235)
!235 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3, line: 60, size: 256, elements: !236)
!236 = !{!237, !300, !321, !322}
!237 = !DIDerivedType(tag: DW_TAG_member, name: "f", scope: !235, file: !3, line: 61, baseType: !238, size: 64)
!238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !239, size: 64)
!239 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !240, line: 7, baseType: !241)
!240 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!241 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !242, line: 49, size: 1728, elements: !243)
!242 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "f3c970561f3408448ce03a9676ead8f4")
!243 = !{!244, !246, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !262, !264, !265, !266, !270, !272, !274, !278, !281, !283, !286, !289, !290, !291, !295, !296}
!244 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !241, file: !242, line: 51, baseType: !245, size: 32)
!245 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !241, file: !242, line: 54, baseType: !247, size: 64, offset: 64)
!247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !248, size: 64)
!248 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !241, file: !242, line: 55, baseType: !247, size: 64, offset: 128)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !241, file: !242, line: 56, baseType: !247, size: 64, offset: 192)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !241, file: !242, line: 57, baseType: !247, size: 64, offset: 256)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !241, file: !242, line: 58, baseType: !247, size: 64, offset: 320)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !241, file: !242, line: 59, baseType: !247, size: 64, offset: 384)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !241, file: !242, line: 60, baseType: !247, size: 64, offset: 448)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !241, file: !242, line: 61, baseType: !247, size: 64, offset: 512)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !241, file: !242, line: 64, baseType: !247, size: 64, offset: 576)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !241, file: !242, line: 65, baseType: !247, size: 64, offset: 640)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !241, file: !242, line: 66, baseType: !247, size: 64, offset: 704)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !241, file: !242, line: 68, baseType: !260, size: 64, offset: 768)
!260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !261, size: 64)
!261 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !242, line: 36, flags: DIFlagFwdDecl)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !241, file: !242, line: 70, baseType: !263, size: 64, offset: 832)
!263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !241, size: 64)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !241, file: !242, line: 72, baseType: !245, size: 32, offset: 896)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !241, file: !242, line: 73, baseType: !245, size: 32, offset: 928)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !241, file: !242, line: 74, baseType: !267, size: 64, offset: 960)
!267 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !268, line: 152, baseType: !269)
!268 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "f6304b1a6dcfc6bee76e9a51043b5090")
!269 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !241, file: !242, line: 77, baseType: !271, size: 16, offset: 1024)
!271 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !241, file: !242, line: 78, baseType: !273, size: 8, offset: 1040)
!273 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !241, file: !242, line: 79, baseType: !275, size: 8, offset: 1048)
!275 = !DICompositeType(tag: DW_TAG_array_type, baseType: !248, size: 8, elements: !276)
!276 = !{!277}
!277 = !DISubrange(count: 1)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !241, file: !242, line: 81, baseType: !279, size: 64, offset: 1088)
!279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !280, size: 64)
!280 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !242, line: 43, baseType: null)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !241, file: !242, line: 89, baseType: !282, size: 64, offset: 1152)
!282 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !268, line: 153, baseType: !269)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !241, file: !242, line: 91, baseType: !284, size: 64, offset: 1216)
!284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !285, size: 64)
!285 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !242, line: 37, flags: DIFlagFwdDecl)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !241, file: !242, line: 92, baseType: !287, size: 64, offset: 1280)
!287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !288, size: 64)
!288 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !242, line: 38, flags: DIFlagFwdDecl)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !241, file: !242, line: 93, baseType: !263, size: 64, offset: 1344)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !241, file: !242, line: 94, baseType: !232, size: 64, offset: 1408)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !241, file: !242, line: 95, baseType: !292, size: 64, offset: 1472)
!292 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !293, line: 46, baseType: !294)
!293 = !DIFile(filename: "VeriFrame/LLVMUtils/llvm/lib/clang/14.0.0/include/stddef.h", directory: "/home/xuheng", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!294 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !241, file: !242, line: 96, baseType: !245, size: 32, offset: 1536)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !241, file: !242, line: 98, baseType: !297, size: 160, offset: 1568)
!297 = !DICompositeType(tag: DW_TAG_array_type, baseType: !248, size: 160, elements: !298)
!298 = !{!299}
!299 = !DISubrange(count: 20)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "cb", scope: !235, file: !3, line: 62, baseType: !301, size: 64, offset: 64)
!301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !302, size: 64)
!302 = !DIDerivedType(tag: DW_TAG_typedef, name: "restart_data_cb", file: !3, line: 13, baseType: !303)
!303 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_restart_data_cb", file: !3, line: 15, size: 2304, elements: !304)
!304 = !{!305, !306, !308, !315, !317}
!305 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !303, file: !3, line: 16, baseType: !232, size: 64)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !303, file: !3, line: 17, baseType: !307, size: 64, offset: 64)
!307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !303, size: 64)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "ccb", scope: !303, file: !3, line: 18, baseType: !309, size: 64, offset: 128)
!309 = !DIDerivedType(tag: DW_TAG_typedef, name: "restart_check_cb", file: !6, line: 17, baseType: !310)
!310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !311, size: 64)
!311 = !DISubroutineType(types: !312)
!312 = !{!245, !313, !232, !232}
!313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !314, size: 64)
!314 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !248)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "scb", scope: !303, file: !3, line: 19, baseType: !316, size: 64, offset: 192)
!316 = !DIDerivedType(tag: DW_TAG_typedef, name: "restart_save_cb", file: !6, line: 18, baseType: !310)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "tag", scope: !303, file: !3, line: 20, baseType: !318, size: 2040, offset: 256)
!318 = !DICompositeType(tag: DW_TAG_array_type, baseType: !248, size: 2040, elements: !319)
!319 = !{!320}
!320 = !DISubrange(count: 255)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !235, file: !3, line: 63, baseType: !247, size: 64, offset: 128)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !235, file: !3, line: 64, baseType: !323, size: 8, offset: 192)
!323 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !325, size: 64)
!325 = !DIDerivedType(tag: DW_TAG_typedef, name: "item", file: !326, line: 598, baseType: !327)
!326 = !DIFile(filename: "./memcached.h", directory: "/home/xuheng/blackbox/llvm-test/memcached", checksumkind: CSK_MD5, checksum: "9260b30e1b6ff2e5471cc4f8f6971051")
!327 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_stritem", file: !326, line: 575, size: 384, elements: !328)
!328 = !{!329, !331, !332, !333, !336, !337, !338, !339, !343, !347, !348}
!329 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !327, file: !326, line: 577, baseType: !330, size: 64)
!330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !327, size: 64)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !327, file: !326, line: 578, baseType: !330, size: 64, offset: 64)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "h_next", scope: !327, file: !326, line: 580, baseType: !330, size: 64, offset: 128)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !327, file: !326, line: 581, baseType: !334, size: 32, offset: 192)
!334 = !DIDerivedType(tag: DW_TAG_typedef, name: "rel_time_t", file: !335, line: 14, baseType: !7)
!335 = !DIFile(filename: "./logger.h", directory: "/home/xuheng/blackbox/llvm-test/memcached", checksumkind: CSK_MD5, checksum: "920aeded0afd45e7ff5c610f1349e8a7")
!336 = !DIDerivedType(tag: DW_TAG_member, name: "exptime", scope: !327, file: !326, line: 582, baseType: !334, size: 32, offset: 224)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "nbytes", scope: !327, file: !326, line: 583, baseType: !245, size: 32, offset: 256)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !327, file: !326, line: 584, baseType: !271, size: 16, offset: 288)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "it_flags", scope: !327, file: !326, line: 585, baseType: !340, size: 16, offset: 304)
!340 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !341, line: 25, baseType: !342)
!341 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "d3ea318a915682aaf6645ec16ac9f991")
!342 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !268, line: 40, baseType: !271)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "slabs_clsid", scope: !327, file: !326, line: 586, baseType: !344, size: 8, offset: 320)
!344 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !341, line: 24, baseType: !345)
!345 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !268, line: 38, baseType: !346)
!346 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "nkey", scope: !327, file: !326, line: 587, baseType: !344, size: 8, offset: 328)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !327, file: !326, line: 593, baseType: !349, offset: 384)
!349 = !DICompositeType(tag: DW_TAG_array_type, baseType: !350, elements: !356)
!350 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !327, file: !326, line: 590, size: 64, elements: !351)
!351 = !{!352, !355}
!352 = !DIDerivedType(tag: DW_TAG_member, name: "cas", scope: !350, file: !326, line: 591, baseType: !353, size: 64)
!353 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !341, line: 27, baseType: !354)
!354 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !268, line: 45, baseType: !294)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !350, file: !326, line: 592, baseType: !248, size: 8)
!356 = !{!357}
!357 = !DISubrange(count: -1)
!358 = !DIDerivedType(tag: DW_TAG_typedef, name: "mc_ptr_t", file: !6, line: 8, baseType: !353)
!359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !360, size: 64)
!360 = !DIDerivedType(tag: DW_TAG_typedef, name: "item_chunk", file: !326, line: 635, baseType: !361)
!361 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_strchunk", file: !326, line: 623, size: 384, elements: !362)
!362 = !{!363, !365, !366, !367, !368, !369, !370, !371, !372, !373, !374}
!363 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !361, file: !326, line: 624, baseType: !364, size: 64)
!364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !361, size: 64)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !361, file: !326, line: 625, baseType: !364, size: 64, offset: 64)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !361, file: !326, line: 626, baseType: !330, size: 64, offset: 128)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !361, file: !326, line: 627, baseType: !245, size: 32, offset: 192)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !361, file: !326, line: 628, baseType: !245, size: 32, offset: 224)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "nbytes", scope: !361, file: !326, line: 629, baseType: !245, size: 32, offset: 256)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !361, file: !326, line: 630, baseType: !271, size: 16, offset: 288)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "it_flags", scope: !361, file: !326, line: 631, baseType: !340, size: 16, offset: 304)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "slabs_clsid", scope: !361, file: !326, line: 632, baseType: !344, size: 8, offset: 320)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "orig_clsid", scope: !361, file: !326, line: 633, baseType: !344, size: 8, offset: 328)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !361, file: !326, line: 634, baseType: !375, offset: 336)
!375 = !DICompositeType(tag: DW_TAG_array_type, baseType: !248, elements: !356)
!376 = !{!0, !377, !379, !381, !383}
!377 = !DIGlobalVariableExpression(var: !378, expr: !DIExpression())
!378 = distinct !DIGlobalVariable(name: "cb_stack", scope: !2, file: !3, line: 29, type: !301, isLocal: true, isDefinition: true)
!379 = !DIGlobalVariableExpression(var: !380, expr: !DIExpression())
!380 = distinct !DIGlobalVariable(name: "mmap_fd", scope: !2, file: !3, line: 24, type: !245, isLocal: true, isDefinition: true)
!381 = !DIGlobalVariableExpression(var: !382, expr: !DIExpression())
!382 = distinct !DIGlobalVariable(name: "mmap_base", scope: !2, file: !3, line: 25, type: !232, isLocal: true, isDefinition: true)
!383 = !DIGlobalVariableExpression(var: !384, expr: !DIExpression())
!384 = distinct !DIGlobalVariable(name: "slabmem_limit", scope: !2, file: !3, line: 26, type: !292, isLocal: true, isDefinition: true)
!385 = !{i32 7, !"Dwarf Version", i32 5}
!386 = !{i32 2, !"Debug Info Version", i32 3}
!387 = !{i32 1, !"wchar_size", i32 4}
!388 = !{i32 7, !"uwtable", i32 1}
!389 = !{!"/home/xuheng/blackbox/llvm-test/memcached/restart.gcno", !"/home/xuheng/blackbox/llvm-test/memcached/restart.gcda", !2}
!390 = !{!"clang version 14.0.0"}
!391 = distinct !DISubprogram(name: "restart_register", scope: !3, file: !3, line: 33, type: !392, scopeLine: 33, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !394)
!392 = !DISubroutineType(types: !393)
!393 = !{null, !313, !309, !316, !232}
!394 = !{!395, !396, !397, !398, !399, !400}
!395 = !DILocalVariable(name: "tag", arg: 1, scope: !391, file: !3, line: 33, type: !313)
!396 = !DILocalVariable(name: "ccb", arg: 2, scope: !391, file: !3, line: 33, type: !309)
!397 = !DILocalVariable(name: "scb", arg: 3, scope: !391, file: !3, line: 33, type: !316)
!398 = !DILocalVariable(name: "data", arg: 4, scope: !391, file: !3, line: 33, type: !232)
!399 = !DILocalVariable(name: "cb", scope: !391, file: !3, line: 34, type: !301)
!400 = !DILocalVariable(name: "finder", scope: !401, file: !3, line: 47, type: !301)
!401 = distinct !DILexicalBlock(scope: !402, file: !3, line: 44, column: 12)
!402 = distinct !DILexicalBlock(scope: !391, file: !3, line: 42, column: 9)
!403 = !DILocation(line: 0, scope: !391)
!404 = !DILocation(line: 34, column: 27, scope: !391)
!405 = !DILocation(line: 35, column: 12, scope: !406)
!406 = distinct !DILexicalBlock(scope: !391, file: !3, line: 35, column: 9)
!407 = !DILocation(line: 35, column: 9, scope: !391)
!408 = !DILocation(line: 36, column: 17, scope: !409)
!409 = distinct !DILexicalBlock(scope: !406, file: !3, line: 35, column: 21)
!410 = !{!411, !411, i64 0}
!411 = !{!"any pointer", !412, i64 0}
!412 = !{!"omnipotent char", !413, i64 0}
!413 = !{!"Simple C/C++ TBAA"}
!414 = !DILocation(line: 36, column: 9, scope: !409)
!415 = !DILocation(line: 37, column: 9, scope: !409)
!416 = !DILocation(line: 42, column: 9, scope: !402)
!417 = !DILocation(line: 42, column: 18, scope: !402)
!418 = !DILocation(line: 42, column: 9, scope: !391)
!419 = !DILocation(line: 0, scope: !401)
!420 = !DILocation(line: 48, column: 24, scope: !401)
!421 = !{!422, !411, i64 8}
!422 = !{!"_restart_data_cb", !411, i64 0, !411, i64 8, !411, i64 16, !411, i64 24, !412, i64 32}
!423 = !DILocation(line: 48, column: 29, scope: !401)
!424 = !DILocation(line: 48, column: 9, scope: !401)
!425 = !DILocation(line: 49, column: 22, scope: !426)
!426 = distinct !DILexicalBlock(scope: !401, file: !3, line: 48, column: 38)
!427 = !DILocation(line: 43, column: 20, scope: !428)
!428 = distinct !DILexicalBlock(scope: !402, file: !3, line: 42, column: 27)
!429 = !DILocation(line: 44, column: 5, scope: !428)
!430 = !DILocation(line: 49, column: 30, scope: !426)
!431 = distinct !{!431, !424, !432, !433}
!432 = !DILocation(line: 50, column: 9, scope: !401)
!433 = !{!"llvm.loop.mustprogress"}
!434 = !DILocation(line: 51, column: 24, scope: !401)
!435 = !DILocation(line: 51, column: 22, scope: !401)
!436 = !DILocation(line: 0, scope: !402)
!437 = !DILocation(line: 54, column: 21, scope: !391)
!438 = !DILocation(line: 54, column: 5, scope: !391)
!439 = !DILocation(line: 55, column: 9, scope: !391)
!440 = !DILocation(line: 55, column: 14, scope: !391)
!441 = !{!422, !411, i64 0}
!442 = !DILocation(line: 56, column: 9, scope: !391)
!443 = !DILocation(line: 56, column: 13, scope: !391)
!444 = !{!422, !411, i64 16}
!445 = !DILocation(line: 57, column: 9, scope: !391)
!446 = !DILocation(line: 57, column: 13, scope: !391)
!447 = !{!422, !411, i64 24}
!448 = !DILocation(line: 58, column: 1, scope: !391)
!449 = !DISubprogram(name: "calloc", scope: !450, file: !450, line: 542, type: !451, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !453)
!450 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "f0db66726d35051e5af2525f5b33bd81")
!451 = !DISubroutineType(types: !452)
!452 = !{!232, !292, !292}
!453 = !{}
!454 = !DISubprogram(name: "fprintf", scope: !455, file: !455, line: 326, type: !456, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !453)
!455 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "5b917eded35ce2507d1e294bf8cb74d7")
!456 = !DISubroutineType(types: !457)
!457 = !{!245, !458, !459, null}
!458 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !238)
!459 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !313)
!460 = !DISubprogram(name: "abort", scope: !450, file: !450, line: 591, type: !461, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized, retainedNodes: !453)
!461 = !DISubroutineType(types: !462)
!462 = !{null}
!463 = !DISubprogram(name: "safe_strcpy", scope: !464, file: !464, line: 22, type: !465, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !453)
!464 = !DIFile(filename: "./util.h", directory: "/home/xuheng/blackbox/llvm-test/memcached", checksumkind: CSK_MD5, checksum: "d1ef68c688867746f50aae7567be079a")
!465 = !DISubroutineType(types: !466)
!466 = !{!323, !247, !313, !467}
!467 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !292)
!468 = distinct !DISubprogram(name: "restart_get_kv", scope: !3, file: !3, line: 141, type: !469, scopeLine: 141, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !472)
!469 = !DISubroutineType(types: !470)
!470 = !{!5, !232, !471, !471}
!471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !247, size: 64)
!472 = !{!473, !474, !475, !476, !477, !478, !479, !480, !483}
!473 = !DILocalVariable(name: "ctx", arg: 1, scope: !468, file: !3, line: 141, type: !232)
!474 = !DILocalVariable(name: "key", arg: 2, scope: !468, file: !3, line: 141, type: !471)
!475 = !DILocalVariable(name: "val", arg: 3, scope: !468, file: !3, line: 141, type: !471)
!476 = !DILocalVariable(name: "line", scope: !468, file: !3, line: 142, type: !247)
!477 = !DILocalVariable(name: "len", scope: !468, file: !3, line: 143, type: !292)
!478 = !DILocalVariable(name: "cb", scope: !468, file: !3, line: 144, type: !301)
!479 = !DILocalVariable(name: "c", scope: !468, file: !3, line: 145, type: !233)
!480 = !DILocalVariable(name: "p", scope: !481, file: !3, line: 158, type: !247)
!481 = distinct !DILexicalBlock(scope: !482, file: !3, line: 154, column: 43)
!482 = distinct !DILexicalBlock(scope: !468, file: !3, line: 154, column: 9)
!483 = !DILocalVariable(name: "p", scope: !484, file: !3, line: 179, type: !247)
!484 = distinct !DILexicalBlock(scope: !485, file: !3, line: 178, column: 36)
!485 = distinct !DILexicalBlock(scope: !486, file: !3, line: 178, column: 20)
!486 = distinct !DILexicalBlock(scope: !481, file: !3, line: 164, column: 13)
!487 = !DILocation(line: 0, scope: !468)
!488 = !DILocation(line: 142, column: 5, scope: !468)
!489 = !DILocation(line: 142, column: 11, scope: !468)
!490 = !DILocation(line: 143, column: 5, scope: !468)
!491 = !DILocation(line: 143, column: 12, scope: !468)
!492 = !{!493, !493, i64 0}
!493 = !{!"long", !412, i64 0}
!494 = !DILocation(line: 149, column: 12, scope: !495)
!495 = distinct !DILexicalBlock(scope: !468, file: !3, line: 149, column: 9)
!496 = !{!497, !411, i64 16}
!497 = !{!"", !411, i64 0, !411, i64 8, !411, i64 16, !498, i64 24}
!498 = !{!"_Bool", !412, i64 0}
!499 = !DILocation(line: 149, column: 17, scope: !495)
!500 = !DILocation(line: 149, column: 9, scope: !468)
!501 = !DILocation(line: 150, column: 14, scope: !502)
!502 = distinct !DILexicalBlock(scope: !495, file: !3, line: 149, column: 26)
!503 = !DILocation(line: 150, column: 9, scope: !502)
!504 = !DILocation(line: 151, column: 17, scope: !502)
!505 = !DILocation(line: 152, column: 5, scope: !502)
!506 = !DILocation(line: 154, column: 33, scope: !482)
!507 = !{!497, !411, i64 0}
!508 = !DILocation(line: 154, column: 9, scope: !482)
!509 = !DILocation(line: 154, column: 36, scope: !482)
!510 = !DILocation(line: 154, column: 9, scope: !468)
!511 = !DILocation(line: 158, column: 19, scope: !481)
!512 = !DILocation(line: 0, scope: !481)
!513 = !DILocation(line: 159, column: 16, scope: !481)
!514 = !{!412, !412, i64 0}
!515 = !DILocation(line: 159, column: 19, scope: !481)
!516 = !DILocation(line: 159, column: 9, scope: !481)
!517 = !DILocation(line: 160, column: 14, scope: !518)
!518 = distinct !DILexicalBlock(scope: !481, file: !3, line: 159, column: 28)
!519 = distinct !{!519, !516, !520, !433}
!520 = !DILocation(line: 161, column: 9, scope: !481)
!521 = !DILocation(line: 162, column: 12, scope: !481)
!522 = !DILocation(line: 164, column: 13, scope: !486)
!523 = !DILocation(line: 164, column: 13, scope: !481)
!524 = !DILocation(line: 0, scope: !525)
!525 = distinct !DILexicalBlock(scope: !486, file: !3, line: 164, column: 29)
!526 = !DILocation(line: 166, column: 13, scope: !525)
!527 = !DILocation(line: 168, column: 28, scope: !528)
!528 = distinct !DILexicalBlock(scope: !529, file: !3, line: 168, column: 21)
!529 = distinct !DILexicalBlock(scope: !525, file: !3, line: 166, column: 32)
!530 = !DILocation(line: 168, column: 21, scope: !528)
!531 = !DILocation(line: 168, column: 45, scope: !528)
!532 = !DILocation(line: 168, column: 21, scope: !529)
!533 = !DILocation(line: 169, column: 21, scope: !534)
!534 = distinct !DILexicalBlock(scope: !528, file: !3, line: 168, column: 51)
!535 = !DILocation(line: 177, column: 16, scope: !525)
!536 = !DILocation(line: 177, column: 19, scope: !525)
!537 = !{!497, !411, i64 8}
!538 = !DILocation(line: 205, column: 5, scope: !482)
!539 = !DILocation(line: 205, column: 5, scope: !481)
!540 = !DILocation(line: 171, column: 22, scope: !529)
!541 = !DILocation(line: 171, column: 26, scope: !529)
!542 = distinct !{!542, !526, !543, !433}
!543 = !DILocation(line: 172, column: 13, scope: !525)
!544 = !DILocation(line: 174, column: 25, scope: !545)
!545 = distinct !DILexicalBlock(scope: !546, file: !3, line: 173, column: 29)
!546 = distinct !DILexicalBlock(scope: !525, file: !3, line: 173, column: 17)
!547 = !DILocation(line: 174, column: 101, scope: !545)
!548 = !DILocation(line: 174, column: 17, scope: !545)
!549 = !DILocation(line: 175, column: 17, scope: !545)
!550 = !DILocation(line: 179, column: 27, scope: !484)
!551 = !DILocation(line: 0, scope: !484)
!552 = !DILocation(line: 181, column: 21, scope: !553)
!553 = distinct !DILexicalBlock(scope: !484, file: !3, line: 181, column: 17)
!554 = !DILocation(line: 181, column: 17, scope: !484)
!555 = !DILocation(line: 182, column: 24, scope: !556)
!556 = distinct !DILexicalBlock(scope: !553, file: !3, line: 181, column: 30)
!557 = !DILocation(line: 182, column: 22, scope: !556)
!558 = !DILocation(line: 183, column: 13, scope: !556)
!559 = !DILocation(line: 186, column: 20, scope: !484)
!560 = !DILocation(line: 186, column: 23, scope: !484)
!561 = !DILocation(line: 186, column: 30, scope: !484)
!562 = !DILocation(line: 186, column: 34, scope: !484)
!563 = !DILocation(line: 186, column: 36, scope: !484)
!564 = !DILocation(line: 186, column: 43, scope: !484)
!565 = !DILocation(line: 186, column: 13, scope: !484)
!566 = !DILocation(line: 187, column: 18, scope: !567)
!567 = distinct !DILexicalBlock(scope: !484, file: !3, line: 186, column: 51)
!568 = distinct !{!568, !565, !569, !433}
!569 = !DILocation(line: 188, column: 13, scope: !484)
!570 = !DILocation(line: 189, column: 16, scope: !484)
!571 = !DILocation(line: 193, column: 21, scope: !572)
!572 = distinct !DILexicalBlock(scope: !484, file: !3, line: 193, column: 17)
!573 = !DILocation(line: 193, column: 17, scope: !484)
!574 = !DILocation(line: 190, column: 14, scope: !484)
!575 = !DILocation(line: 194, column: 24, scope: !576)
!576 = distinct !DILexicalBlock(scope: !572, file: !3, line: 193, column: 30)
!577 = !DILocation(line: 194, column: 22, scope: !576)
!578 = !DILocation(line: 195, column: 13, scope: !576)
!579 = !DILocation(line: 196, column: 23, scope: !484)
!580 = !DILocation(line: 196, column: 21, scope: !484)
!581 = !DILocation(line: 201, column: 21, scope: !582)
!582 = distinct !DILexicalBlock(scope: !485, file: !3, line: 199, column: 16)
!583 = !DILocation(line: 201, column: 13, scope: !582)
!584 = !DILocation(line: 202, column: 18, scope: !582)
!585 = !DILocation(line: 202, column: 13, scope: !582)
!586 = !DILocation(line: 203, column: 13, scope: !582)
!587 = !DILocation(line: 207, column: 9, scope: !588)
!588 = distinct !DILexicalBlock(scope: !482, file: !3, line: 205, column: 12)
!589 = !DILocation(line: 207, column: 12, scope: !588)
!590 = !DILocation(line: 207, column: 17, scope: !588)
!591 = !{!497, !498, i64 24}
!592 = !DILocation(line: 211, column: 1, scope: !468)
!593 = !DISubprogram(name: "free", scope: !450, file: !450, line: 565, type: !594, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !453)
!594 = !DISubroutineType(types: !595)
!595 = !{null, !232}
!596 = !DISubprogram(name: "strcmp", scope: !597, file: !597, line: 137, type: !598, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !453)
!597 = !DIFile(filename: "/usr/include/string.h", directory: "", checksumkind: CSK_MD5, checksum: "61f60112cf5c0a45c54ea1f595add24c")
!598 = !DISubroutineType(types: !599)
!599 = !{!245, !313, !313}
!600 = distinct !DISubprogram(name: "restart_set_kv", scope: !3, file: !3, line: 268, type: !601, scopeLine: 268, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !603)
!601 = !DISubroutineType(types: !602)
!602 = !{null, !232, !313, !313, null}
!603 = !{!604, !605, !606, !607, !620, !621, !625}
!604 = !DILocalVariable(name: "ctx", arg: 1, scope: !600, file: !3, line: 268, type: !232)
!605 = !DILocalVariable(name: "key", arg: 2, scope: !600, file: !3, line: 268, type: !313)
!606 = !DILocalVariable(name: "fmt", arg: 3, scope: !600, file: !3, line: 268, type: !313)
!607 = !DILocalVariable(name: "ap", scope: !600, file: !3, line: 269, type: !608)
!608 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !455, line: 52, baseType: !609)
!609 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !610, line: 32, baseType: !611)
!610 = !DIFile(filename: "VeriFrame/LLVMUtils/llvm/lib/clang/14.0.0/include/stdarg.h", directory: "/home/xuheng", checksumkind: CSK_MD5, checksum: "4de3cbd931b589d291e5c39387aecf82")
!611 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !612, baseType: !613)
!612 = !DIFile(filename: "restart.c", directory: "/home/xuheng/blackbox/llvm-test/memcached")
!613 = !DICompositeType(tag: DW_TAG_array_type, baseType: !614, size: 192, elements: !276)
!614 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !615)
!615 = !{!616, !617, !618, !619}
!616 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !614, file: !612, line: 269, baseType: !7, size: 32)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !614, file: !612, line: 269, baseType: !7, size: 32, offset: 32)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !614, file: !612, line: 269, baseType: !232, size: 64, offset: 64)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !614, file: !612, line: 269, baseType: !232, size: 64, offset: 128)
!620 = !DILocalVariable(name: "c", scope: !600, file: !3, line: 270, type: !233)
!621 = !DILocalVariable(name: "valbuf", scope: !600, file: !3, line: 271, type: !622)
!622 = !DICompositeType(tag: DW_TAG_array_type, baseType: !248, size: 32768, elements: !623)
!623 = !{!624}
!624 = !DISubrange(count: 4096)
!625 = !DILocalVariable(name: "vlen", scope: !600, file: !3, line: 274, type: !245)
!626 = !DILocation(line: 0, scope: !600)
!627 = !DILocation(line: 269, column: 5, scope: !600)
!628 = !DILocation(line: 269, column: 13, scope: !600)
!629 = !DILocation(line: 271, column: 5, scope: !600)
!630 = !DILocation(line: 271, column: 10, scope: !600)
!631 = !DILocation(line: 273, column: 5, scope: !600)
!632 = !DILocation(line: 274, column: 16, scope: !600)
!633 = !DILocation(line: 275, column: 5, scope: !600)
!634 = !DILocation(line: 279, column: 14, scope: !635)
!635 = distinct !DILexicalBlock(scope: !600, file: !3, line: 279, column: 9)
!636 = !DILocation(line: 279, column: 9, scope: !600)
!637 = !DILocation(line: 280, column: 17, scope: !638)
!638 = distinct !DILexicalBlock(scope: !635, file: !3, line: 279, column: 30)
!639 = !DILocation(line: 280, column: 9, scope: !638)
!640 = !DILocation(line: 282, column: 9, scope: !638)
!641 = !DILocation(line: 285, column: 16, scope: !600)
!642 = !DILocation(line: 285, column: 5, scope: !600)
!643 = !DILocation(line: 287, column: 1, scope: !600)
!644 = !DISubprogram(name: "vsnprintf", scope: !455, file: !455, line: 358, type: !645, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !453)
!645 = !DISubroutineType(types: !646)
!646 = !{!245, !647, !292, !459, !648}
!647 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !247)
!648 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !614, size: 64)
!649 = distinct !DISubprogram(name: "restart_mmap_open", scope: !3, file: !3, line: 298, type: !650, scopeLine: 298, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !653)
!650 = !DISubroutineType(types: !651)
!651 = !{!323, !467, !313, !652}
!652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !232, size: 64)
!653 = !{!654, !655, !656, !657, !658}
!654 = !DILocalVariable(name: "limit", arg: 1, scope: !649, file: !3, line: 298, type: !467)
!655 = !DILocalVariable(name: "file", arg: 2, scope: !649, file: !3, line: 298, type: !313)
!656 = !DILocalVariable(name: "mem_base", arg: 3, scope: !649, file: !3, line: 298, type: !652)
!657 = !DILocalVariable(name: "reuse_mmap", scope: !649, file: !3, line: 299, type: !323)
!658 = !DILocalVariable(name: "pagesize", scope: !649, file: !3, line: 301, type: !269)
!659 = !DILocation(line: 0, scope: !649)
!660 = !DILocation(line: 301, column: 21, scope: !649)
!661 = !DILocation(line: 302, column: 19, scope: !649)
!662 = !DILocation(line: 302, column: 17, scope: !649)
!663 = !DILocation(line: 303, column: 15, scope: !649)
!664 = !DILocation(line: 303, column: 13, scope: !649)
!665 = !{!666, !666, i64 0}
!666 = !{!"int", !412, i64 0}
!667 = !DILocation(line: 304, column: 17, scope: !668)
!668 = distinct !DILexicalBlock(scope: !649, file: !3, line: 304, column: 9)
!669 = !DILocation(line: 304, column: 9, scope: !649)
!670 = !DILocation(line: 305, column: 9, scope: !671)
!671 = distinct !DILexicalBlock(scope: !668, file: !3, line: 304, column: 24)
!672 = !DILocation(line: 306, column: 9, scope: !671)
!673 = !DILocation(line: 308, column: 9, scope: !674)
!674 = distinct !DILexicalBlock(scope: !649, file: !3, line: 308, column: 9)
!675 = !DILocation(line: 308, column: 35, scope: !674)
!676 = !DILocation(line: 308, column: 9, scope: !649)
!677 = !DILocation(line: 309, column: 9, scope: !678)
!678 = distinct !DILexicalBlock(scope: !674, file: !3, line: 308, column: 41)
!679 = !DILocation(line: 310, column: 9, scope: !678)
!680 = !DILocation(line: 313, column: 15, scope: !681)
!681 = distinct !DILexicalBlock(scope: !649, file: !3, line: 313, column: 9)
!682 = !DILocation(line: 313, column: 9, scope: !649)
!683 = !DILocation(line: 316, column: 17, scope: !684)
!684 = distinct !DILexicalBlock(scope: !681, file: !3, line: 313, column: 27)
!685 = !DILocation(line: 316, column: 9, scope: !684)
!686 = !DILocation(line: 317, column: 9, scope: !684)
!687 = !DILocation(line: 319, column: 69, scope: !649)
!688 = !DILocation(line: 319, column: 17, scope: !649)
!689 = !DILocation(line: 319, column: 15, scope: !649)
!690 = !DILocation(line: 320, column: 19, scope: !691)
!691 = distinct !DILexicalBlock(scope: !649, file: !3, line: 320, column: 9)
!692 = !DILocation(line: 320, column: 9, scope: !649)
!693 = !DILocation(line: 321, column: 9, scope: !694)
!694 = distinct !DILexicalBlock(scope: !691, file: !3, line: 320, column: 34)
!695 = !DILocation(line: 322, column: 9, scope: !694)
!696 = !DILocation(line: 325, column: 21, scope: !649)
!697 = !DILocation(line: 325, column: 19, scope: !649)
!698 = !DILocation(line: 326, column: 9, scope: !699)
!699 = distinct !DILexicalBlock(scope: !649, file: !3, line: 326, column: 9)
!700 = !DILocation(line: 326, column: 29, scope: !699)
!701 = !DILocation(line: 326, column: 9, scope: !649)
!702 = !DILocation(line: 327, column: 20, scope: !703)
!703 = distinct !DILexicalBlock(scope: !699, file: !3, line: 326, column: 35)
!704 = !DILocation(line: 328, column: 5, scope: !703)
!705 = !DILocation(line: 329, column: 17, scope: !649)
!706 = !DILocation(line: 329, column: 15, scope: !649)
!707 = !DILocation(line: 331, column: 5, scope: !649)
!708 = distinct !DISubprogram(name: "_find_pagesize", scope: !3, file: !3, line: 289, type: !709, scopeLine: 289, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !453)
!709 = !DISubroutineType(types: !710)
!710 = !{!269}
!711 = !DILocation(line: 291, column: 12, scope: !708)
!712 = !DILocation(line: 291, column: 5, scope: !708)
!713 = !DISubprogram(name: "strdup", scope: !597, file: !597, line: 167, type: !714, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !453)
!714 = !DISubroutineType(types: !715)
!715 = !{!247, !313}
!716 = !DISubprogram(name: "open", scope: !717, file: !717, line: 168, type: !718, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !453)
!717 = !DIFile(filename: "/usr/include/fcntl.h", directory: "", checksumkind: CSK_MD5, checksum: "270596b098606fab5166d0114edf8288")
!718 = !DISubroutineType(types: !719)
!719 = !{!245, !313, !245, null}
!720 = !DISubprogram(name: "perror", scope: !455, file: !455, line: 775, type: !721, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !453)
!721 = !DISubroutineType(types: !722)
!722 = !{null, !313}
!723 = !DISubprogram(name: "ftruncate", scope: !724, file: !724, line: 1014, type: !725, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !453)
!724 = !DIFile(filename: "/usr/include/unistd.h", directory: "", checksumkind: CSK_MD5, checksum: "29bea3f2d65ec3bb874f389bfdfa2266")
!725 = !DISubroutineType(types: !726)
!726 = !{!245, !245, !267}
!727 = !DISubprogram(name: "mmap", scope: !728, file: !728, line: 57, type: !729, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !453)
!728 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/mman.h", directory: "", checksumkind: CSK_MD5, checksum: "2f0ac90c7588adcea5a1a12d771e1e34")
!729 = !DISubroutineType(types: !730)
!730 = !{!232, !232, !292, !245, !245, !245, !267}
!731 = distinct !DISubprogram(name: "restart_check", scope: !3, file: !3, line: 72, type: !732, scopeLine: 72, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !734)
!732 = !DISubroutineType(types: !733)
!733 = !{!245, !313}
!734 = !{!735, !736, !737, !738, !739, !740, !741, !742}
!735 = !DILocalVariable(name: "file", arg: 1, scope: !731, file: !3, line: 72, type: !313)
!736 = !DILocalVariable(name: "flen", scope: !731, file: !3, line: 74, type: !292)
!737 = !DILocalVariable(name: "ext", scope: !731, file: !3, line: 75, type: !313)
!738 = !DILocalVariable(name: "metafile", scope: !731, file: !3, line: 76, type: !247)
!739 = !DILocalVariable(name: "f", scope: !731, file: !3, line: 85, type: !238)
!740 = !DILocalVariable(name: "ctx", scope: !731, file: !3, line: 92, type: !234)
!741 = !DILocalVariable(name: "failed", scope: !731, file: !3, line: 111, type: !323)
!742 = !DILocalVariable(name: "cb", scope: !743, file: !3, line: 113, type: !301)
!743 = distinct !DILexicalBlock(scope: !731, file: !3, line: 112, column: 23)
!744 = !DILocation(line: 0, scope: !731)
!745 = !DILocation(line: 74, column: 19, scope: !731)
!746 = !DILocation(line: 76, column: 39, scope: !731)
!747 = !DILocation(line: 76, column: 37, scope: !731)
!748 = !DILocation(line: 76, column: 51, scope: !731)
!749 = !DILocation(line: 76, column: 22, scope: !731)
!750 = !DILocation(line: 77, column: 18, scope: !751)
!751 = distinct !DILexicalBlock(scope: !731, file: !3, line: 77, column: 9)
!752 = !DILocation(line: 77, column: 9, scope: !731)
!753 = !DILocation(line: 79, column: 17, scope: !754)
!754 = distinct !DILexicalBlock(scope: !751, file: !3, line: 77, column: 27)
!755 = !DILocation(line: 79, column: 9, scope: !754)
!756 = !DILocation(line: 80, column: 9, scope: !754)
!757 = !DILocation(line: 82, column: 5, scope: !731)
!758 = !DILocation(line: 83, column: 20, scope: !731)
!759 = !DILocation(line: 83, column: 32, scope: !731)
!760 = !DILocation(line: 83, column: 5, scope: !731)
!761 = !DILocation(line: 85, column: 15, scope: !731)
!762 = !DILocation(line: 86, column: 11, scope: !763)
!763 = distinct !DILexicalBlock(scope: !731, file: !3, line: 86, column: 9)
!764 = !DILocation(line: 86, column: 9, scope: !731)
!765 = !DILocation(line: 87, column: 17, scope: !766)
!766 = distinct !DILexicalBlock(scope: !763, file: !3, line: 86, column: 20)
!767 = !DILocation(line: 87, column: 9, scope: !766)
!768 = !DILocation(line: 88, column: 9, scope: !766)
!769 = !DILocation(line: 89, column: 9, scope: !766)
!770 = !DILocation(line: 92, column: 5, scope: !731)
!771 = !DILocation(line: 92, column: 20, scope: !731)
!772 = !DILocation(line: 94, column: 9, scope: !731)
!773 = !DILocation(line: 94, column: 11, scope: !731)
!774 = !DILocation(line: 95, column: 9, scope: !731)
!775 = !DILocation(line: 95, column: 12, scope: !731)
!776 = !DILocation(line: 96, column: 9, scope: !731)
!777 = !DILocation(line: 96, column: 14, scope: !731)
!778 = !DILocation(line: 97, column: 9, scope: !731)
!779 = !DILocation(line: 97, column: 14, scope: !731)
!780 = !DILocation(line: 98, column: 9, scope: !781)
!781 = distinct !DILexicalBlock(scope: !731, file: !3, line: 98, column: 9)
!782 = !DILocation(line: 98, column: 42, scope: !781)
!783 = !DILocation(line: 98, column: 9, scope: !731)
!784 = !DILocation(line: 101, column: 17, scope: !785)
!785 = distinct !DILexicalBlock(scope: !781, file: !3, line: 98, column: 59)
!786 = !DILocation(line: 101, column: 9, scope: !785)
!787 = !DILocation(line: 103, column: 9, scope: !785)
!788 = !DILocation(line: 105, column: 13, scope: !789)
!789 = distinct !DILexicalBlock(scope: !731, file: !3, line: 105, column: 9)
!790 = !DILocation(line: 105, column: 16, scope: !789)
!791 = !DILocation(line: 105, column: 9, scope: !731)
!792 = !DILocation(line: 112, column: 17, scope: !731)
!793 = !{i8 0, i8 2}
!794 = !DILocation(line: 112, column: 5, scope: !731)
!795 = !DILocation(line: 0, scope: !743)
!796 = !DILocation(line: 114, column: 17, scope: !797)
!797 = distinct !DILexicalBlock(scope: !743, file: !3, line: 114, column: 13)
!798 = !DILocation(line: 114, column: 21, scope: !797)
!799 = !DILocation(line: 114, column: 40, scope: !797)
!800 = !DILocation(line: 114, column: 13, scope: !797)
!801 = !DILocation(line: 114, column: 46, scope: !797)
!802 = !DILocation(line: 114, column: 13, scope: !743)
!803 = !DILocation(line: 106, column: 17, scope: !804)
!804 = distinct !DILexicalBlock(scope: !789, file: !3, line: 105, column: 25)
!805 = !DILocation(line: 106, column: 9, scope: !804)
!806 = !DILocation(line: 107, column: 9, scope: !804)
!807 = !DILocation(line: 115, column: 20, scope: !808)
!808 = distinct !DILexicalBlock(scope: !797, file: !3, line: 114, column: 52)
!809 = !DILocation(line: 118, column: 5, scope: !731)
!810 = distinct !{!810, !794, !809, !433}
!811 = !DILocation(line: 113, column: 35, scope: !743)
!812 = !DILocation(line: 120, column: 13, scope: !813)
!813 = distinct !DILexicalBlock(scope: !731, file: !3, line: 120, column: 9)
!814 = !DILocation(line: 120, column: 9, scope: !813)
!815 = !DILocation(line: 120, column: 9, scope: !731)
!816 = !DILocation(line: 121, column: 18, scope: !813)
!817 = !DILocation(line: 121, column: 9, scope: !813)
!818 = !DILocation(line: 123, column: 5, scope: !731)
!819 = !DILocation(line: 125, column: 5, scope: !731)
!820 = !DILocation(line: 126, column: 5, scope: !731)
!821 = !DILocation(line: 128, column: 9, scope: !731)
!822 = !DILocation(line: 129, column: 17, scope: !823)
!823 = distinct !DILexicalBlock(scope: !824, file: !3, line: 128, column: 17)
!824 = distinct !DILexicalBlock(scope: !731, file: !3, line: 128, column: 9)
!825 = !DILocation(line: 129, column: 9, scope: !823)
!826 = !DILocation(line: 130, column: 9, scope: !823)
!827 = !DILocation(line: 132, column: 9, scope: !828)
!828 = distinct !DILexicalBlock(scope: !824, file: !3, line: 131, column: 12)
!829 = !DILocation(line: 0, scope: !824)
!830 = !DILocation(line: 134, column: 1, scope: !731)
!831 = distinct !DISubprogram(name: "restart_mmap_close", scope: !3, file: !3, line: 335, type: !461, scopeLine: 335, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !453)
!832 = !DILocation(line: 336, column: 11, scope: !831)
!833 = !DILocation(line: 336, column: 22, scope: !831)
!834 = !DILocation(line: 336, column: 5, scope: !831)
!835 = !DILocation(line: 338, column: 22, scope: !836)
!836 = distinct !DILexicalBlock(scope: !831, file: !3, line: 338, column: 9)
!837 = !DILocation(line: 338, column: 9, scope: !836)
!838 = !DILocation(line: 338, column: 35, scope: !836)
!839 = !DILocation(line: 338, column: 9, scope: !831)
!840 = !DILocation(line: 339, column: 17, scope: !841)
!841 = distinct !DILexicalBlock(scope: !836, file: !3, line: 338, column: 41)
!842 = !DILocation(line: 339, column: 9, scope: !841)
!843 = !DILocation(line: 340, column: 5, scope: !841)
!844 = !DILocation(line: 342, column: 16, scope: !845)
!845 = distinct !DILexicalBlock(scope: !831, file: !3, line: 342, column: 9)
!846 = !DILocation(line: 342, column: 27, scope: !845)
!847 = !DILocation(line: 342, column: 9, scope: !845)
!848 = !DILocation(line: 342, column: 42, scope: !845)
!849 = !DILocation(line: 342, column: 9, scope: !831)
!850 = !DILocation(line: 343, column: 9, scope: !851)
!851 = distinct !DILexicalBlock(scope: !845, file: !3, line: 342, column: 48)
!852 = !DILocation(line: 344, column: 5, scope: !851)
!853 = !DILocation(line: 344, column: 22, scope: !854)
!854 = distinct !DILexicalBlock(scope: !845, file: !3, line: 344, column: 16)
!855 = !DILocation(line: 344, column: 16, scope: !854)
!856 = !DILocation(line: 344, column: 31, scope: !854)
!857 = !DILocation(line: 344, column: 16, scope: !845)
!858 = !DILocation(line: 345, column: 9, scope: !859)
!859 = distinct !DILexicalBlock(scope: !854, file: !3, line: 344, column: 37)
!860 = !DILocation(line: 346, column: 5, scope: !859)
!861 = !DILocation(line: 348, column: 10, scope: !831)
!862 = !DILocation(line: 348, column: 5, scope: !831)
!863 = !DILocation(line: 349, column: 1, scope: !831)
!864 = !DISubprogram(name: "msync", scope: !728, file: !728, line: 89, type: !865, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !453)
!865 = !DISubroutineType(types: !866)
!866 = !{!245, !232, !292, !245}
!867 = distinct !DISubprogram(name: "restart_save", scope: !3, file: !3, line: 217, type: !732, scopeLine: 217, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !868)
!868 = !{!869, !870, !871, !872, !873, !874, !878, !879, !880}
!869 = !DILocalVariable(name: "file", arg: 1, scope: !867, file: !3, line: 217, type: !313)
!870 = !DILocalVariable(name: "flen", scope: !867, file: !3, line: 220, type: !292)
!871 = !DILocalVariable(name: "ext", scope: !867, file: !3, line: 221, type: !313)
!872 = !DILocalVariable(name: "extlen", scope: !867, file: !3, line: 222, type: !292)
!873 = !DILocalVariable(name: "metafile", scope: !867, file: !3, line: 223, type: !247)
!874 = !DILocalVariable(name: "oldmask", scope: !867, file: !3, line: 233, type: !875)
!875 = !DIDerivedType(tag: DW_TAG_typedef, name: "mode_t", file: !876, line: 69, baseType: !877)
!876 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/types.h", directory: "", checksumkind: CSK_MD5, checksum: "20e2108af45064f5c7b77fc9416f0cce")
!877 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !268, line: 150, baseType: !7)
!878 = !DILocalVariable(name: "f", scope: !867, file: !3, line: 234, type: !238)
!879 = !DILocalVariable(name: "cb", scope: !867, file: !3, line: 243, type: !301)
!880 = !DILocalVariable(name: "ctx", scope: !867, file: !3, line: 244, type: !234)
!881 = !DILocation(line: 0, scope: !867)
!882 = !DILocation(line: 220, column: 19, scope: !867)
!883 = !DILocation(line: 222, column: 21, scope: !867)
!884 = !DILocation(line: 223, column: 37, scope: !867)
!885 = !DILocation(line: 223, column: 46, scope: !867)
!886 = !DILocation(line: 223, column: 22, scope: !867)
!887 = !DILocation(line: 224, column: 18, scope: !888)
!888 = distinct !DILexicalBlock(scope: !867, file: !3, line: 224, column: 9)
!889 = !DILocation(line: 224, column: 9, scope: !867)
!890 = !DILocation(line: 225, column: 17, scope: !891)
!891 = distinct !DILexicalBlock(scope: !888, file: !3, line: 224, column: 27)
!892 = !DILocation(line: 225, column: 9, scope: !891)
!893 = !DILocation(line: 226, column: 9, scope: !891)
!894 = !DILocation(line: 228, column: 5, scope: !867)
!895 = !DILocation(line: 229, column: 20, scope: !867)
!896 = !DILocation(line: 229, column: 5, scope: !867)
!897 = !DILocation(line: 233, column: 22, scope: !867)
!898 = !DILocation(line: 234, column: 15, scope: !867)
!899 = !DILocation(line: 235, column: 5, scope: !867)
!900 = !DILocation(line: 236, column: 11, scope: !901)
!901 = distinct !DILexicalBlock(scope: !867, file: !3, line: 236, column: 9)
!902 = !DILocation(line: 236, column: 9, scope: !867)
!903 = !DILocation(line: 238, column: 14, scope: !904)
!904 = distinct !DILexicalBlock(scope: !901, file: !3, line: 236, column: 20)
!905 = !DILocation(line: 238, column: 9, scope: !904)
!906 = !DILocation(line: 239, column: 9, scope: !904)
!907 = !DILocation(line: 240, column: 9, scope: !904)
!908 = !DILocation(line: 243, column: 27, scope: !867)
!909 = !DILocation(line: 244, column: 5, scope: !867)
!910 = !DILocation(line: 244, column: 20, scope: !867)
!911 = !DILocation(line: 245, column: 9, scope: !867)
!912 = !DILocation(line: 245, column: 11, scope: !867)
!913 = !DILocation(line: 246, column: 15, scope: !867)
!914 = !DILocation(line: 246, column: 5, scope: !867)
!915 = !DILocation(line: 248, column: 29, scope: !916)
!916 = distinct !DILexicalBlock(scope: !867, file: !3, line: 246, column: 24)
!917 = !DILocation(line: 248, column: 9, scope: !916)
!918 = !DILocation(line: 249, column: 17, scope: !919)
!919 = distinct !DILexicalBlock(scope: !916, file: !3, line: 249, column: 13)
!920 = !DILocation(line: 249, column: 40, scope: !919)
!921 = !DILocation(line: 249, column: 13, scope: !919)
!922 = !DILocation(line: 249, column: 46, scope: !919)
!923 = !DILocation(line: 249, column: 13, scope: !916)
!924 = !DILocation(line: 255, column: 14, scope: !916)
!925 = !DILocation(line: 255, column: 18, scope: !916)
!926 = distinct !{!926, !914, !927, !433}
!927 = !DILocation(line: 256, column: 5, scope: !867)
!928 = !DILocation(line: 262, column: 1, scope: !867)
!929 = !DISubprogram(name: "munmap", scope: !728, file: !728, line: 76, type: !930, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !453)
!930 = !DISubroutineType(types: !931)
!931 = !{!245, !232, !292}
!932 = !DISubprogram(name: "close", scope: !724, file: !724, line: 353, type: !933, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !453)
!933 = !DISubroutineType(types: !934)
!934 = !{!245, !245}
!935 = distinct !DISubprogram(name: "restart_fixup", scope: !3, file: !3, line: 354, type: !936, scopeLine: 354, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !938)
!936 = !DISubroutineType(types: !937)
!937 = !{!7, !232}
!938 = !{!939, !940, !948, !949, !951, !952, !954, !955}
!939 = !DILocalVariable(name: "orig_addr", arg: 1, scope: !935, file: !3, line: 354, type: !232)
!940 = !DILocalVariable(name: "tv", scope: !935, file: !3, line: 355, type: !941)
!941 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timeval", file: !942, line: 8, size: 128, elements: !943)
!942 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_timeval.h", directory: "", checksumkind: CSK_MD5, checksum: "7798c68081a8161421218378689a8d48")
!943 = !{!944, !946}
!944 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !941, file: !942, line: 10, baseType: !945, size: 64)
!945 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !268, line: 160, baseType: !269)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "tv_usec", scope: !941, file: !942, line: 11, baseType: !947, size: 64, offset: 64)
!947 = !DIDerivedType(tag: DW_TAG_typedef, name: "__suseconds_t", file: !268, line: 162, baseType: !269)
!948 = !DILocalVariable(name: "checked", scope: !935, file: !3, line: 356, type: !353)
!949 = !DILocalVariable(name: "page_size", scope: !935, file: !3, line: 357, type: !950)
!950 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!951 = !DILocalVariable(name: "page_remain", scope: !935, file: !3, line: 358, type: !7)
!952 = !DILocalVariable(name: "it", scope: !953, file: !3, line: 369, type: !324)
!953 = distinct !DILexicalBlock(scope: !935, file: !3, line: 367, column: 37)
!954 = !DILocalVariable(name: "size", scope: !953, file: !3, line: 371, type: !245)
!955 = !DILocalVariable(name: "ch", scope: !956, file: !3, line: 399, type: !359)
!956 = distinct !DILexicalBlock(scope: !957, file: !3, line: 398, column: 55)
!957 = distinct !DILexicalBlock(scope: !953, file: !3, line: 398, column: 13)
!958 = !DILocation(line: 0, scope: !935)
!959 = !DILocation(line: 355, column: 5, scope: !935)
!960 = !DILocation(line: 355, column: 20, scope: !935)
!961 = !DILocation(line: 357, column: 45, scope: !935)
!962 = !{!963, !666, i64 132}
!963 = !{!"settings", !493, i64 0, !666, i64 8, !666, i64 12, !666, i64 16, !411, i64 24, !666, i64 32, !666, i64 36, !493, i64 40, !666, i64 48, !411, i64 56, !411, i64 64, !666, i64 72, !964, i64 80, !666, i64 88, !666, i64 92, !666, i64 96, !412, i64 100, !666, i64 104, !666, i64 108, !498, i64 112, !412, i64 116, !666, i64 120, !666, i64 124, !666, i64 128, !666, i64 132, !666, i64 136, !498, i64 140, !498, i64 141, !498, i64 142, !498, i64 143, !498, i64 144, !498, i64 145, !666, i64 148, !964, i64 152, !666, i64 160, !666, i64 164, !498, i64 168, !666, i64 172, !498, i64 176, !498, i64 177, !411, i64 184, !666, i64 192, !666, i64 196, !666, i64 200, !666, i64 204, !964, i64 208, !964, i64 216, !666, i64 224, !498, i64 228, !666, i64 232, !666, i64 236, !666, i64 240, !666, i64 244, !666, i64 248, !498, i64 252, !498, i64 253, !498, i64 254, !498, i64 255, !666, i64 256, !666, i64 260, !666, i64 264, !666, i64 268, !666, i64 272, !666, i64 276, !666, i64 280, !666, i64 284, !666, i64 288, !666, i64 292, !964, i64 296, !964, i64 304, !498, i64 312, !666, i64 316, !666, i64 320, !411, i64 328, !666, i64 336}
!964 = !{!"double", !412, i64 0}
!965 = !DILocation(line: 360, column: 5, scope: !935)
!966 = !DILocation(line: 361, column: 18, scope: !967)
!967 = distinct !DILexicalBlock(scope: !935, file: !3, line: 361, column: 9)
!968 = !{!963, !666, i64 32}
!969 = !DILocation(line: 361, column: 26, scope: !967)
!970 = !DILocation(line: 361, column: 9, scope: !935)
!971 = !DILocation(line: 362, column: 17, scope: !972)
!972 = distinct !DILexicalBlock(scope: !967, file: !3, line: 361, column: 31)
!973 = !DILocation(line: 362, column: 93, scope: !972)
!974 = !DILocation(line: 362, column: 9, scope: !972)
!975 = !DILocation(line: 363, column: 17, scope: !972)
!976 = !DILocation(line: 363, column: 71, scope: !972)
!977 = !{!978, !493, i64 0}
!978 = !{!"timeval", !493, i64 0, !493, i64 8}
!979 = !DILocation(line: 363, column: 63, scope: !972)
!980 = !DILocation(line: 363, column: 87, scope: !972)
!981 = !{!978, !493, i64 8}
!982 = !DILocation(line: 363, column: 79, scope: !972)
!983 = !DILocation(line: 363, column: 9, scope: !972)
!984 = !DILocation(line: 364, column: 5, scope: !972)
!985 = !DILocation(line: 367, column: 22, scope: !935)
!986 = !DILocation(line: 367, column: 20, scope: !935)
!987 = !DILocation(line: 367, column: 5, scope: !935)
!988 = !DILocation(line: 369, column: 37, scope: !953)
!989 = !DILocation(line: 369, column: 47, scope: !953)
!990 = !DILocation(line: 369, column: 20, scope: !953)
!991 = !DILocation(line: 0, scope: !953)
!992 = !DILocation(line: 372, column: 36, scope: !953)
!993 = !DILocation(line: 372, column: 27, scope: !953)
!994 = !DILocation(line: 372, column: 25, scope: !953)
!995 = !DILocation(line: 372, column: 17, scope: !953)
!996 = !DILocation(line: 371, column: 20, scope: !953)
!997 = !DILocation(line: 375, column: 18, scope: !998)
!998 = distinct !DILexicalBlock(scope: !953, file: !3, line: 375, column: 13)
!999 = !DILocation(line: 375, column: 13, scope: !953)
!1000 = !DILocation(line: 376, column: 13, scope: !1001)
!1001 = distinct !DILexicalBlock(scope: !1002, file: !3, line: 376, column: 13)
!1002 = distinct !DILexicalBlock(scope: !1003, file: !3, line: 376, column: 13)
!1003 = distinct !DILexicalBlock(scope: !998, file: !3, line: 375, column: 25)
!1004 = !DILocation(line: 376, column: 13, scope: !1002)
!1005 = !DILocation(line: 377, column: 13, scope: !1006)
!1006 = distinct !DILexicalBlock(scope: !1007, file: !3, line: 377, column: 13)
!1007 = distinct !DILexicalBlock(scope: !1003, file: !3, line: 377, column: 13)
!1008 = !DILocation(line: 377, column: 13, scope: !1007)
!1009 = !DILocation(line: 383, column: 17, scope: !1010)
!1010 = distinct !DILexicalBlock(scope: !953, file: !3, line: 383, column: 13)
!1011 = !{!1012, !1012, i64 0}
!1012 = !{!"short", !412, i64 0}
!1013 = !DILocation(line: 383, column: 26, scope: !1010)
!1014 = !DILocation(line: 383, column: 13, scope: !953)
!1015 = !DILocation(line: 385, column: 21, scope: !1016)
!1016 = distinct !DILexicalBlock(scope: !1017, file: !3, line: 385, column: 17)
!1017 = distinct !DILexicalBlock(scope: !1010, file: !3, line: 383, column: 41)
!1018 = !DILocation(line: 385, column: 17, scope: !1016)
!1019 = !DILocation(line: 385, column: 17, scope: !1017)
!1020 = !DILocation(line: 386, column: 47, scope: !1021)
!1021 = distinct !DILexicalBlock(scope: !1016, file: !3, line: 385, column: 27)
!1022 = !DILocation(line: 386, column: 51, scope: !1021)
!1023 = !DILocation(line: 386, column: 37, scope: !1021)
!1024 = !DILocation(line: 386, column: 56, scope: !1021)
!1025 = !DILocation(line: 387, column: 68, scope: !1021)
!1026 = !DILocation(line: 387, column: 58, scope: !1021)
!1027 = !DILocation(line: 387, column: 56, scope: !1021)
!1028 = !DILocation(line: 387, column: 28, scope: !1021)
!1029 = !DILocation(line: 387, column: 26, scope: !1021)
!1030 = !DILocation(line: 388, column: 13, scope: !1021)
!1031 = !DILocation(line: 389, column: 21, scope: !1032)
!1032 = distinct !DILexicalBlock(scope: !1017, file: !3, line: 389, column: 17)
!1033 = !DILocation(line: 389, column: 17, scope: !1032)
!1034 = !DILocation(line: 389, column: 17, scope: !1017)
!1035 = !DILocation(line: 390, column: 47, scope: !1036)
!1036 = distinct !DILexicalBlock(scope: !1032, file: !3, line: 389, column: 27)
!1037 = !DILocation(line: 390, column: 51, scope: !1036)
!1038 = !DILocation(line: 390, column: 37, scope: !1036)
!1039 = !DILocation(line: 390, column: 56, scope: !1036)
!1040 = !DILocation(line: 391, column: 68, scope: !1036)
!1041 = !DILocation(line: 391, column: 58, scope: !1036)
!1042 = !DILocation(line: 391, column: 56, scope: !1036)
!1043 = !DILocation(line: 391, column: 28, scope: !1036)
!1044 = !DILocation(line: 391, column: 26, scope: !1036)
!1045 = !DILocation(line: 392, column: 13, scope: !1036)
!1046 = !DILocation(line: 395, column: 32, scope: !1017)
!1047 = !DILocation(line: 395, column: 13, scope: !1017)
!1048 = !DILocation(line: 398, column: 17, scope: !957)
!1049 = !DILocation(line: 396, column: 9, scope: !1017)
!1050 = !DILocation(line: 398, column: 13, scope: !957)
!1051 = !DILocation(line: 398, column: 26, scope: !957)
!1052 = !DILocation(line: 398, column: 13, scope: !953)
!1053 = !DILocation(line: 400, column: 30, scope: !1054)
!1054 = distinct !DILexicalBlock(scope: !956, file: !3, line: 400, column: 17)
!1055 = !DILocation(line: 400, column: 17, scope: !956)
!1056 = !DILocation(line: 401, column: 37, scope: !1057)
!1057 = distinct !DILexicalBlock(scope: !1054, file: !3, line: 400, column: 46)
!1058 = !DILocation(line: 0, scope: !956)
!1059 = !DILocation(line: 406, column: 39, scope: !1057)
!1060 = !DILocation(line: 406, column: 35, scope: !1057)
!1061 = !DILocation(line: 406, column: 24, scope: !1057)
!1062 = !DILocation(line: 408, column: 13, scope: !1057)
!1063 = !DILocation(line: 410, column: 37, scope: !1064)
!1064 = distinct !DILexicalBlock(scope: !1054, file: !3, line: 408, column: 20)
!1065 = !DILocation(line: 412, column: 21, scope: !1066)
!1066 = distinct !DILexicalBlock(scope: !956, file: !3, line: 412, column: 17)
!1067 = !DILocation(line: 412, column: 17, scope: !1066)
!1068 = !DILocation(line: 412, column: 17, scope: !956)
!1069 = !DILocation(line: 413, column: 53, scope: !1070)
!1070 = distinct !DILexicalBlock(scope: !1066, file: !3, line: 412, column: 27)
!1071 = !DILocation(line: 413, column: 57, scope: !1070)
!1072 = !DILocation(line: 413, column: 43, scope: !1070)
!1073 = !DILocation(line: 413, column: 62, scope: !1070)
!1074 = !DILocation(line: 414, column: 74, scope: !1070)
!1075 = !DILocation(line: 414, column: 64, scope: !1070)
!1076 = !DILocation(line: 414, column: 62, scope: !1070)
!1077 = !DILocation(line: 414, column: 28, scope: !1070)
!1078 = !DILocation(line: 414, column: 26, scope: !1070)
!1079 = !DILocation(line: 415, column: 13, scope: !1070)
!1080 = !DILocation(line: 416, column: 21, scope: !1081)
!1081 = distinct !DILexicalBlock(scope: !956, file: !3, line: 416, column: 17)
!1082 = !DILocation(line: 416, column: 17, scope: !1081)
!1083 = !DILocation(line: 416, column: 17, scope: !956)
!1084 = !DILocation(line: 417, column: 53, scope: !1085)
!1085 = distinct !DILexicalBlock(scope: !1081, file: !3, line: 416, column: 27)
!1086 = !DILocation(line: 417, column: 57, scope: !1085)
!1087 = !DILocation(line: 417, column: 43, scope: !1085)
!1088 = !DILocation(line: 417, column: 62, scope: !1085)
!1089 = !DILocation(line: 418, column: 74, scope: !1085)
!1090 = !DILocation(line: 418, column: 64, scope: !1085)
!1091 = !DILocation(line: 418, column: 62, scope: !1085)
!1092 = !DILocation(line: 418, column: 28, scope: !1085)
!1093 = !DILocation(line: 418, column: 26, scope: !1085)
!1094 = !DILocation(line: 419, column: 13, scope: !1085)
!1095 = !DILocation(line: 420, column: 21, scope: !1096)
!1096 = distinct !DILexicalBlock(scope: !956, file: !3, line: 420, column: 17)
!1097 = !DILocation(line: 420, column: 17, scope: !1096)
!1098 = !DILocation(line: 420, column: 17, scope: !956)
!1099 = !DILocation(line: 421, column: 47, scope: !1100)
!1100 = distinct !DILexicalBlock(scope: !1096, file: !3, line: 420, column: 27)
!1101 = !DILocation(line: 421, column: 51, scope: !1100)
!1102 = !DILocation(line: 421, column: 37, scope: !1100)
!1103 = !DILocation(line: 421, column: 56, scope: !1100)
!1104 = !DILocation(line: 422, column: 68, scope: !1100)
!1105 = !DILocation(line: 422, column: 58, scope: !1100)
!1106 = !DILocation(line: 422, column: 56, scope: !1100)
!1107 = !DILocation(line: 422, column: 28, scope: !1100)
!1108 = !DILocation(line: 422, column: 26, scope: !1100)
!1109 = !DILocation(line: 423, column: 13, scope: !1100)
!1110 = !DILocation(line: 427, column: 20, scope: !953)
!1111 = !DILocation(line: 427, column: 17, scope: !953)
!1112 = !DILocation(line: 428, column: 21, scope: !953)
!1113 = !DILocation(line: 429, column: 18, scope: !1114)
!1114 = distinct !DILexicalBlock(scope: !953, file: !3, line: 429, column: 13)
!1115 = !DILocation(line: 429, column: 13, scope: !953)
!1116 = !DILocation(line: 431, column: 24, scope: !1117)
!1117 = distinct !DILexicalBlock(scope: !1114, file: !3, line: 429, column: 33)
!1118 = !DILocation(line: 431, column: 21, scope: !1117)
!1119 = !DILocation(line: 432, column: 36, scope: !1117)
!1120 = !DILocation(line: 433, column: 9, scope: !1117)
!1121 = !DILocation(line: 378, column: 24, scope: !1003)
!1122 = !DILocation(line: 378, column: 21, scope: !1003)
!1123 = !DILocation(line: 435, column: 5, scope: !935)
!1124 = distinct !{!1124, !987, !1123, !433}
!1125 = !DILocation(line: 437, column: 18, scope: !1126)
!1126 = distinct !DILexicalBlock(scope: !935, file: !3, line: 437, column: 9)
!1127 = !DILocation(line: 437, column: 26, scope: !1126)
!1128 = !DILocation(line: 437, column: 9, scope: !935)
!1129 = !DILocation(line: 438, column: 9, scope: !1130)
!1130 = distinct !DILexicalBlock(scope: !1126, file: !3, line: 437, column: 31)
!1131 = !DILocation(line: 439, column: 17, scope: !1130)
!1132 = !DILocation(line: 439, column: 69, scope: !1130)
!1133 = !DILocation(line: 439, column: 61, scope: !1130)
!1134 = !DILocation(line: 439, column: 85, scope: !1130)
!1135 = !DILocation(line: 439, column: 77, scope: !1130)
!1136 = !DILocation(line: 439, column: 9, scope: !1130)
!1137 = !DILocation(line: 440, column: 5, scope: !1130)
!1138 = !DILocation(line: 443, column: 1, scope: !935)
!1139 = !DILocation(line: 442, column: 5, scope: !935)
!1140 = !DISubprogram(name: "gettimeofday", scope: !1141, file: !1141, line: 66, type: !1142, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !453)
!1141 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/time.h", directory: "", checksumkind: CSK_MD5, checksum: "99ab902f1529d4d72694df20fbf7a8ec")
!1142 = !DISubroutineType(types: !1143)
!1143 = !{!245, !1144, !1146}
!1144 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1145)
!1145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !941, size: 64)
!1146 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !232)
!1147 = !DISubprogram(name: "slabs_fixup", scope: !1148, file: !1148, line: 70, type: !1149, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !453)
!1148 = !DIFile(filename: "./slabs.h", directory: "/home/xuheng/blackbox/llvm-test/memcached", checksumkind: CSK_MD5, checksum: "28867aba1f41c79140864d76faedcb32")
!1149 = !DISubroutineType(types: !1150)
!1150 = !{!7, !247, !1151}
!1151 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !245)
!1152 = !DISubprogram(name: "do_item_link_fixup", scope: !1153, file: !1153, line: 27, type: !1154, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !453)
!1153 = !DIFile(filename: "./items.h", directory: "/home/xuheng/blackbox/llvm-test/memcached", checksumkind: CSK_MD5, checksum: "24f8c54717bd547418db2338c9044014")
!1154 = !DISubroutineType(types: !1155)
!1155 = !{null, !324}
!1156 = !DISubprogram(name: "slabs_size", scope: !1148, file: !1148, line: 22, type: !1157, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !453)
!1157 = !DISubroutineType(types: !1158)
!1158 = !{!7, !1151}
!1159 = !DISubprogram(name: "sysconf", scope: !724, file: !724, line: 619, type: !1160, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !453)
!1160 = !DISubroutineType(types: !1161)
!1161 = !{!269, !245}
!1162 = !DISubprogram(name: "strlen", scope: !597, file: !597, line: 385, type: !1163, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !453)
!1163 = !DISubroutineType(types: !1164)
!1164 = !{!292, !313}
!1165 = !DISubprogram(name: "memcpy", scope: !597, file: !597, line: 43, type: !1166, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !453)
!1166 = !DISubroutineType(types: !1167)
!1167 = !{!232, !1146, !1168, !292}
!1168 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1169)
!1169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1170, size: 64)
!1170 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1171 = !DISubprogram(name: "fopen", scope: !455, file: !455, line: 246, type: !1172, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !453)
!1172 = !DISubroutineType(types: !1173)
!1173 = !{!238, !459, !459}
!1174 = !DISubprogram(name: "fclose", scope: !455, file: !455, line: 213, type: !1175, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !453)
!1175 = !DISubroutineType(types: !1176)
!1176 = !{!245, !238}
!1177 = !DISubprogram(name: "unlink", scope: !724, file: !724, line: 825, type: !732, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !453)
!1178 = !DISubprogram(name: "umask", scope: !1179, file: !1179, line: 308, type: !1180, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !453)
!1179 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/stat.h", directory: "", checksumkind: CSK_MD5, checksum: "461013b06495e219438a7cca03a67307")
!1180 = !DISubroutineType(types: !1181)
!1181 = !{!877, !877}
