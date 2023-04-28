; ModuleID = 'slab_automove_extstore.c'
source_filename = "slab_automove_extstore.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.settings = type { i64, i32, i32, i32, i8*, i32, i32, i64, i32, i8*, i8*, i32, double, i32, i32, i32, i8, i32, i32, i8, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i32, double, i32, i32, i8, i32, i8, i8, i8*, i32, i32, i32, i32, double, double, i32, i8, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, double, double, i8, i32, i32, i8*, i32 }
%struct.item_stats_automove = type { i64, i64, i32 }
%struct.slab_stats_automove = type { i32, i32, i64, i64 }
%struct.window_data = type { i64, i64, i64, i32, i32 }
%struct.slab_automove = type { %struct.window_data*, %struct.settings*, i32, i32, i32, double, double, i8, i32, [64 x %struct.item_stats_automove], [64 x %struct.item_stats_automove], [64 x %struct.slab_stats_automove], [64 x %struct.slab_stats_automove] }

@settings = external dso_local local_unnamed_addr global %struct.settings, align 8
@__llvm_gcov_ctr = internal global [4 x i64] zeroinitializer
@__llvm_gcov_ctr.1 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.2 = internal global [18 x i64] zeroinitializer
@__llvm_gcov_ctr.3 = internal global [3 x i64] zeroinitializer
@__llvm_gcov_ctr.4 = internal global [3 x i64] zeroinitializer
@__llvm_gcov_ctr.5 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.6 = internal global [2 x i64] zeroinitializer
@0 = private unnamed_addr constant [70 x i8] c"/home/xuheng/blackbox/llvm-test/memcached/slab_automove_extstore.gcda\00", align 1
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 0, void ()* @__llvm_gcov_init, i8* null }]

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @slab_automove_extstore_init(%struct.settings* noundef %settings) local_unnamed_addr #0 !dbg !164 {
entry:
  call void @llvm.dbg.value(metadata %struct.settings* %settings, metadata !168, metadata !DIExpression()), !dbg !172
  %slab_automove_window = getelementptr inbounds %struct.settings, %struct.settings* %settings, i64 0, i32 34, !dbg !173
  %0 = load i32, i32* %slab_automove_window, align 8, !dbg !173, !tbaa !174
  call void @llvm.dbg.value(metadata i32 %0, metadata !169, metadata !DIExpression()), !dbg !172
  %slab_automove_ratio = getelementptr inbounds %struct.settings, %struct.settings* %settings, i64 0, i32 33, !dbg !183
  %1 = load double, double* %slab_automove_ratio, align 8, !dbg !183, !tbaa !184
  call void @llvm.dbg.value(metadata double %1, metadata !170, metadata !DIExpression()), !dbg !172
  %call = tail call noalias i8* @calloc(i64 noundef 1, i64 noundef 6200) #11, !dbg !185
  call void @llvm.dbg.value(metadata i8* %call, metadata !171, metadata !DIExpression()), !dbg !172
  %cmp = icmp eq i8* %call, null, !dbg !186
  br i1 %cmp, label %if.then, label %if.end, !dbg !188

if.then:                                          ; preds = %entry
  %gcov_ctr = load i64, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @__llvm_gcov_ctr, i64 0, i64 0), align 16, !dbg !189
  %2 = add i64 %gcov_ctr, 1, !dbg !189
  store i64 %2, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @__llvm_gcov_ctr, i64 0, i64 0), align 16, !dbg !189
  br label %cleanup, !dbg !189

if.end:                                           ; preds = %entry
  %mul = shl i32 %0, 6, !dbg !190
  %conv = zext i32 %mul to i64, !dbg !191
  %call1 = tail call noalias i8* @calloc(i64 noundef %conv, i64 noundef 32) #11, !dbg !192
  %3 = bitcast i8* %call to i8**, !dbg !193
  store i8* %call1, i8** %3, align 8, !dbg !193, !tbaa !194
  %window_size2 = getelementptr inbounds i8, i8* %call, i64 16, !dbg !196
  %4 = bitcast i8* %window_size2 to i32*, !dbg !196
  store i32 %0, i32* %4, align 8, !dbg !197, !tbaa !198
  %max_age_ratio3 = getelementptr inbounds i8, i8* %call, i64 32, !dbg !199
  %5 = bitcast i8* %max_age_ratio3 to double*, !dbg !199
  store double %1, double* %5, align 8, !dbg !200, !tbaa !201
  %slab_automove_freeratio = getelementptr inbounds %struct.settings, %struct.settings* %settings, i64 0, i32 69, !dbg !202
  %6 = load double, double* %slab_automove_freeratio, align 8, !dbg !202, !tbaa !203
  %free_ratio = getelementptr inbounds i8, i8* %call, i64 40, !dbg !204
  %7 = bitcast i8* %free_ratio to double*, !dbg !204
  store double %6, double* %7, align 8, !dbg !205, !tbaa !206
  %ext_item_size = getelementptr inbounds %struct.settings, %struct.settings* %settings, i64 0, i32 60, !dbg !207
  %8 = load i32, i32* %ext_item_size, align 8, !dbg !207, !tbaa !208
  %item_size = getelementptr inbounds i8, i8* %call, i64 24, !dbg !209
  %9 = bitcast i8* %item_size to i32*, !dbg !209
  store i32 %8, i32* %9, align 8, !dbg !210, !tbaa !211
  %settings4 = getelementptr inbounds i8, i8* %call, i64 8, !dbg !212
  %10 = bitcast i8* %settings4 to %struct.settings**, !dbg !212
  store %struct.settings* %settings, %struct.settings** %10, align 8, !dbg !213, !tbaa !214
  %11 = getelementptr inbounds i8, i8* %call, i64 48, !dbg !215
  store i8 0, i8* %11, align 8, !dbg !216, !tbaa !217
  %cmp6 = icmp eq i8* %call1, null, !dbg !218
  br i1 %cmp6, label %if.end12, label %if.end13, !dbg !220

if.end12:                                         ; preds = %if.end
  %gcov_ctr18 = load i64, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @__llvm_gcov_ctr, i64 0, i64 2), align 16, !dbg !221
  %12 = add i64 %gcov_ctr18, 1, !dbg !221
  store i64 %12, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @__llvm_gcov_ctr, i64 0, i64 2), align 16, !dbg !221
  tail call void @free(i8* noundef nonnull %call) #11, !dbg !223
  br label %cleanup, !dbg !224

if.end13:                                         ; preds = %if.end
  %gcov_ctr19 = load i64, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @__llvm_gcov_ctr, i64 0, i64 3), align 8, !dbg !225
  %13 = add i64 %gcov_ctr19, 1, !dbg !225
  store i64 %13, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @__llvm_gcov_ctr, i64 0, i64 3), align 8, !dbg !225
  %iam_before = getelementptr inbounds i8, i8* %call, i64 56, !dbg !226
  %arraydecay = bitcast i8* %iam_before to %struct.item_stats_automove*, !dbg !225
  tail call void @fill_item_stats_automove(%struct.item_stats_automove* noundef nonnull %arraydecay) #11, !dbg !227
  %sam_before = getelementptr inbounds i8, i8* %call, i64 3128, !dbg !228
  %arraydecay14 = bitcast i8* %sam_before to %struct.slab_stats_automove*, !dbg !229
  tail call void @fill_slab_stats_automove(%struct.slab_stats_automove* noundef nonnull %arraydecay14) #11, !dbg !230
  br label %cleanup, !dbg !231

cleanup:                                          ; preds = %if.end13, %if.end12, %if.then
  %retval.0 = phi i8* [ null, %if.then ], [ null, %if.end12 ], [ %call, %if.end13 ], !dbg !172
  ret i8* %retval.0, !dbg !232
}

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: nounwind
declare !dbg !233 dso_local noalias i8* @calloc(i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare !dbg !238 dso_local void @free(i8* noundef) local_unnamed_addr #3

declare !dbg !241 dso_local void @fill_item_stats_automove(%struct.item_stats_automove* noundef) local_unnamed_addr #4

declare !dbg !245 dso_local void @fill_slab_stats_automove(%struct.slab_stats_automove* noundef) local_unnamed_addr #4

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @slab_automove_extstore_free(i8* noundef %arg) local_unnamed_addr #0 !dbg !249 {
entry:
  %gcov_ctr = load i64, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.1, i64 0, i64 0), align 8
  %0 = add i64 %gcov_ctr, 1
  store i64 %0, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.1, i64 0, i64 0), align 8
  call void @llvm.dbg.value(metadata i8* %arg, metadata !251, metadata !DIExpression()), !dbg !253
  call void @llvm.dbg.value(metadata i8* %arg, metadata !252, metadata !DIExpression()), !dbg !253
  %1 = bitcast i8* %arg to i8**, !dbg !254
  %2 = load i8*, i8** %1, align 8, !dbg !254, !tbaa !194
  tail call void @free(i8* noundef %2) #11, !dbg !255
  tail call void @free(i8* noundef %arg) #11, !dbg !256
  ret void, !dbg !257
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @slab_automove_extstore_run(i8* noundef %arg, i32* nocapture noundef writeonly %src, i32* nocapture noundef writeonly %dst) local_unnamed_addr #0 !dbg !258 {
entry:
  %w_sum = alloca %struct.window_data, align 8
  call void @llvm.dbg.value(metadata i8* %arg, metadata !263, metadata !DIExpression()), !dbg !281
  call void @llvm.dbg.value(metadata i32* %src, metadata !264, metadata !DIExpression()), !dbg !281
  call void @llvm.dbg.value(metadata i32* %dst, metadata !265, metadata !DIExpression()), !dbg !281
  %0 = bitcast i8* %arg to %struct.slab_automove*, !dbg !282
  call void @llvm.dbg.value(metadata %struct.slab_automove* %0, metadata !266, metadata !DIExpression()), !dbg !281
  %1 = bitcast %struct.window_data* %w_sum to i8*, !dbg !283
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %1) #12, !dbg !283
  call void @llvm.dbg.declare(metadata %struct.window_data* %w_sum, metadata !268, metadata !DIExpression()), !dbg !284
  call void @llvm.dbg.value(metadata i32 -1, metadata !269, metadata !DIExpression()), !dbg !281
  call void @llvm.dbg.value(metadata i64 0, metadata !270, metadata !DIExpression()), !dbg !281
  call void @llvm.dbg.value(metadata i8 0, metadata !271, metadata !DIExpression()), !dbg !281
  store i32 -1, i32* %src, align 4, !dbg !285, !tbaa !286
  store i32 -1, i32* %dst, align 4, !dbg !287, !tbaa !286
  %call = tail call fastcc i32 @global_pool_check(%struct.slab_automove* noundef %0) #13, !dbg !288
  call void @llvm.dbg.value(metadata i32 %call, metadata !272, metadata !DIExpression()), !dbg !281
  %iam_after = getelementptr inbounds i8, i8* %arg, i64 1592, !dbg !289
  %2 = bitcast i8* %iam_after to [64 x %struct.item_stats_automove]*, !dbg !289
  %arraydecay = bitcast i8* %iam_after to %struct.item_stats_automove*, !dbg !290
  tail call void @fill_item_stats_automove(%struct.item_stats_automove* noundef nonnull %arraydecay) #11, !dbg !291
  %sam_after = getelementptr inbounds i8, i8* %arg, i64 4664, !dbg !292
  %3 = bitcast i8* %sam_after to [64 x %struct.slab_stats_automove]*, !dbg !292
  %arraydecay1 = bitcast i8* %sam_after to %struct.slab_stats_automove*, !dbg !293
  tail call void @fill_slab_stats_automove(%struct.slab_stats_automove* noundef nonnull %arraydecay1) #11, !dbg !294
  %window_cur = getelementptr inbounds i8, i8* %arg, i64 20, !dbg !295
  %4 = bitcast i8* %window_cur to i32*, !dbg !295
  %5 = load i32, i32* %4, align 4, !dbg !296, !tbaa !297
  %inc = add i32 %5, 1, !dbg !296
  store i32 %inc, i32* %4, align 4, !dbg !296, !tbaa !297
  tail call fastcc void @memcheck(%struct.slab_automove* noundef %0) #13, !dbg !298
  call void @llvm.dbg.value(metadata i32 1, metadata !267, metadata !DIExpression()), !dbg !281
  %sam_before = getelementptr inbounds i8, i8* %arg, i64 3128
  %6 = bitcast i8* %sam_before to [64 x %struct.slab_stats_automove]*
  %item_size = getelementptr inbounds i8, i8* %arg, i64 24
  %7 = bitcast i8* %item_size to i32*
  %window_size = getelementptr inbounds i8, i8* %arg, i64 16
  %8 = bitcast i8* %window_size to i32*
  call void @llvm.dbg.value(metadata i32 1, metadata !267, metadata !DIExpression()), !dbg !281
  call void @llvm.dbg.value(metadata i32 -1, metadata !269, metadata !DIExpression()), !dbg !281
  call void @llvm.dbg.value(metadata i64 0, metadata !270, metadata !DIExpression()), !dbg !281
  call void @llvm.dbg.value(metadata i8 0, metadata !271, metadata !DIExpression()), !dbg !281
  %iam_before = getelementptr inbounds i8, i8* %arg, i64 56
  %9 = bitcast i8* %iam_before to [64 x %struct.item_stats_automove]*
  %window_data = bitcast i8* %arg to %struct.window_data**
  %age61 = getelementptr inbounds %struct.window_data, %struct.window_data* %w_sum, i64 0, i32 0
  %dirty77 = getelementptr inbounds %struct.window_data, %struct.window_data* %w_sum, i64 0, i32 1
  %excess_free85 = getelementptr inbounds %struct.window_data, %struct.window_data* %w_sum, i64 0, i32 3
  br label %for.body, !dbg !299

for.body:                                         ; preds = %entry, %if.end106
  %indvars.iv = phi i64 [ 1, %entry ], [ %indvars.iv.next, %if.end106 ]
  %oldest.0237 = phi i32 [ -1, %entry ], [ %oldest.2, %if.end106 ]
  %oldest_age.0234 = phi i64 [ 0, %entry ], [ %oldest_age.2, %if.end106 ]
  %too_free.0233 = phi i8 [ 0, %entry ], [ %too_free.2229, %if.end106 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !267, metadata !DIExpression()), !dbg !281
  call void @llvm.dbg.value(metadata i32 %oldest.0237, metadata !269, metadata !DIExpression()), !dbg !281
  call void @llvm.dbg.value(metadata i64 %oldest_age.0234, metadata !270, metadata !DIExpression()), !dbg !281
  call void @llvm.dbg.value(metadata i8 %too_free.0233, metadata !271, metadata !DIExpression()), !dbg !281
  %chunk_size = getelementptr inbounds [64 x %struct.slab_stats_automove], [64 x %struct.slab_stats_automove]* %6, i64 0, i64 %indvars.iv, i32 1, !dbg !300
  %10 = load i32, i32* %chunk_size, align 4, !dbg !300, !tbaa !301
  %11 = load i32, i32* %7, align 8, !dbg !303, !tbaa !211
  %cmp2 = icmp ult i32 %10, %11, !dbg !304
  call void @llvm.dbg.value(metadata i1 %cmp2, metadata !273, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !305
  %12 = trunc i64 %indvars.iv to i32, !dbg !306
  %call3 = call fastcc %struct.window_data* @get_window_data(%struct.slab_automove* noundef nonnull %0, i32 noundef %12) #13, !dbg !306
  call void @llvm.dbg.value(metadata %struct.window_data* %call3, metadata !277, metadata !DIExpression()), !dbg !305
  %13 = load i32, i32* %8, align 8, !dbg !307, !tbaa !198
  %mul = mul i32 %13, %12, !dbg !308
  call void @llvm.dbg.value(metadata i32 %mul, metadata !278, metadata !DIExpression()), !dbg !305
  %14 = bitcast %struct.window_data* %call3 to i8*, !dbg !309
  %call4 = call i8* @memset(i8* noundef %14, i32 noundef 0, i64 noundef 32) #11, !dbg !310
  %chunks_per_page = getelementptr inbounds [64 x %struct.slab_stats_automove], [64 x %struct.slab_stats_automove]* %3, i64 0, i64 %indvars.iv, i32 0, !dbg !311
  %15 = load i32, i32* %chunks_per_page, align 8, !dbg !311, !tbaa !312
  %conv = uitofp i32 %15 to double, !dbg !313
  %mul8 = fmul double %conv, 1.500000e+00, !dbg !314
  %conv9 = fptoui double %mul8 to i32, !dbg !313
  call void @llvm.dbg.value(metadata i32 %conv9, metadata !279, metadata !DIExpression()), !dbg !305
  %evicted = getelementptr inbounds [64 x %struct.item_stats_automove], [64 x %struct.item_stats_automove]* %2, i64 0, i64 %indvars.iv, i32 0, !dbg !315
  %16 = load i64, i64* %evicted, align 8, !dbg !315, !tbaa !317
  %evicted15 = getelementptr inbounds [64 x %struct.item_stats_automove], [64 x %struct.item_stats_automove]* %9, i64 0, i64 %indvars.iv, i32 0, !dbg !319
  %17 = load i64, i64* %evicted15, align 8, !dbg !319, !tbaa !317
  %cmp16 = icmp sgt i64 %16, %17, !dbg !320
  br i1 %cmp16, label %if.then, label %lor.lhs.false, !dbg !321

lor.lhs.false:                                    ; preds = %for.body
  %gcov_ctr = load i64, i64* getelementptr inbounds ([18 x i64], [18 x i64]* @__llvm_gcov_ctr.2, i64 0, i64 0), align 16, !dbg !322
  %18 = add i64 %gcov_ctr, 1, !dbg !322
  store i64 %18, i64* getelementptr inbounds ([18 x i64], [18 x i64]* @__llvm_gcov_ctr.2, i64 0, i64 0), align 16, !dbg !322
  %outofmemory = getelementptr inbounds [64 x %struct.item_stats_automove], [64 x %struct.item_stats_automove]* %2, i64 0, i64 %indvars.iv, i32 1, !dbg !323
  %19 = load i64, i64* %outofmemory, align 8, !dbg !323, !tbaa !324
  %outofmemory24 = getelementptr inbounds [64 x %struct.item_stats_automove], [64 x %struct.item_stats_automove]* %9, i64 0, i64 %indvars.iv, i32 1, !dbg !325
  %20 = load i64, i64* %outofmemory24, align 8, !dbg !325, !tbaa !324
  %cmp26 = icmp sgt i64 %19, %20, !dbg !326
  br i1 %cmp26, label %if.then, label %if.end, !dbg !327

if.then:                                          ; preds = %lor.lhs.false, %for.body
  %gcov_ctr138 = load i64, i64* getelementptr inbounds ([18 x i64], [18 x i64]* @__llvm_gcov_ctr.2, i64 0, i64 1), align 8, !dbg !328
  %21 = add i64 %gcov_ctr138, 1, !dbg !328
  store i64 %21, i64* getelementptr inbounds ([18 x i64], [18 x i64]* @__llvm_gcov_ctr.2, i64 0, i64 1), align 8, !dbg !328
  %dirty = getelementptr inbounds %struct.window_data, %struct.window_data* %call3, i64 0, i32 1, !dbg !330
  %22 = bitcast i64* %dirty to <2 x i64>*, !dbg !331
  store <2 x i64> <i64 1, i64 1>, <2 x i64>* %22, align 8, !dbg !331, !tbaa !332
  br label %if.end, !dbg !333

if.end:                                           ; preds = %if.then, %lor.lhs.false
  %total_pages = getelementptr inbounds [64 x %struct.slab_stats_automove], [64 x %struct.slab_stats_automove]* %3, i64 0, i64 %indvars.iv, i32 3, !dbg !334
  %23 = load i64, i64* %total_pages, align 8, !dbg !334, !tbaa !336
  %total_pages35 = getelementptr inbounds [64 x %struct.slab_stats_automove], [64 x %struct.slab_stats_automove]* %6, i64 0, i64 %indvars.iv, i32 3, !dbg !337
  %24 = load i64, i64* %total_pages35, align 8, !dbg !337, !tbaa !336
  %cmp37 = icmp sgt i64 %23, %24, !dbg !338
  br i1 %cmp37, label %if.then39, label %if.end41, !dbg !339

if.then39:                                        ; preds = %if.end
  %gcov_ctr139 = load i64, i64* getelementptr inbounds ([18 x i64], [18 x i64]* @__llvm_gcov_ctr.2, i64 0, i64 2), align 16, !dbg !340
  %25 = add i64 %gcov_ctr139, 1, !dbg !340
  store i64 %25, i64* getelementptr inbounds ([18 x i64], [18 x i64]* @__llvm_gcov_ctr.2, i64 0, i64 2), align 16, !dbg !340
  %dirty40 = getelementptr inbounds %struct.window_data, %struct.window_data* %call3, i64 0, i32 1, !dbg !342
  store i64 1, i64* %dirty40, align 8, !dbg !343, !tbaa !344
  br label %if.end41, !dbg !346

if.end41:                                         ; preds = %if.then39, %if.end
  %free_chunks = getelementptr inbounds [64 x %struct.slab_stats_automove], [64 x %struct.slab_stats_automove]* %3, i64 0, i64 %indvars.iv, i32 2, !dbg !347
  %26 = load i64, i64* %free_chunks, align 8, !dbg !347, !tbaa !349
  %mul45 = shl i32 %conv9, 1, !dbg !350
  %conv46 = zext i32 %mul45 to i64, !dbg !351
  %cmp47 = icmp sgt i64 %26, %conv46, !dbg !352
  br i1 %cmp47, label %if.then49, label %if.end50, !dbg !353

if.then49:                                        ; preds = %if.end41
  %gcov_ctr140 = load i64, i64* getelementptr inbounds ([18 x i64], [18 x i64]* @__llvm_gcov_ctr.2, i64 0, i64 3), align 8, !dbg !354
  %27 = add i64 %gcov_ctr140, 1, !dbg !354
  store i64 %27, i64* getelementptr inbounds ([18 x i64], [18 x i64]* @__llvm_gcov_ctr.2, i64 0, i64 3), align 8, !dbg !354
  %excess_free = getelementptr inbounds %struct.window_data, %struct.window_data* %call3, i64 0, i32 3, !dbg !356
  store i32 1, i32* %excess_free, align 8, !dbg !357, !tbaa !358
  br label %if.end50, !dbg !359

if.end50:                                         ; preds = %if.then49, %if.end41
  %age = getelementptr inbounds [64 x %struct.item_stats_automove], [64 x %struct.item_stats_automove]* %2, i64 0, i64 %indvars.iv, i32 2, !dbg !360
  %28 = load i32, i32* %age, align 8, !dbg !360, !tbaa !361
  %conv54 = zext i32 %28 to i64, !dbg !362
  %age55 = getelementptr inbounds %struct.window_data, %struct.window_data* %call3, i64 0, i32 0, !dbg !363
  store i64 %conv54, i64* %age55, align 8, !dbg !364, !tbaa !365
  %call56 = call i8* @memset(i8* noundef nonnull %1, i32 noundef 0, i64 noundef 32) #11, !dbg !366
  %29 = load %struct.window_data*, %struct.window_data** %window_data, align 8, !dbg !367, !tbaa !194
  %idxprom57 = sext i32 %mul to i64, !dbg !368
  %arrayidx58 = getelementptr inbounds %struct.window_data, %struct.window_data* %29, i64 %idxprom57, !dbg !368
  %30 = load i32, i32* %8, align 8, !dbg !369, !tbaa !198
  call fastcc void @window_sum(%struct.window_data* noundef %arrayidx58, %struct.window_data* noundef nonnull %w_sum, i32 noundef %30) #13, !dbg !370
  %31 = load i64, i64* %age61, align 8, !dbg !371, !tbaa !365
  %32 = load i32, i32* %8, align 8, !dbg !372, !tbaa !198
  %conv63 = zext i32 %32 to i64, !dbg !373
  %div = udiv i64 %31, %conv63, !dbg !374
  call void @llvm.dbg.value(metadata i64 %div, metadata !280, metadata !DIExpression()), !dbg !305
  %33 = load i64, i64* %free_chunks, align 8, !dbg !375, !tbaa !349
  %conv68 = sitofp i64 %33 to double, !dbg !377
  %34 = load i32, i32* %chunks_per_page, align 8, !dbg !378, !tbaa !312
  %conv73 = uitofp i32 %34 to double, !dbg !379
  %mul74 = fmul double %conv73, 2.500000e+00, !dbg !380
  %cmp75 = fcmp olt double %mul74, %conv68, !dbg !381
  br i1 %cmp75, label %land.lhs.true, label %if.end92, !dbg !382

land.lhs.true:                                    ; preds = %if.end50
  %gcov_ctr141 = load i64, i64* getelementptr inbounds ([18 x i64], [18 x i64]* @__llvm_gcov_ctr.2, i64 0, i64 4), align 16, !dbg !383
  %35 = add i64 %gcov_ctr141, 1, !dbg !383
  store i64 %35, i64* getelementptr inbounds ([18 x i64], [18 x i64]* @__llvm_gcov_ctr.2, i64 0, i64 4), align 16, !dbg !383
  %36 = load i64, i64* %dirty77, align 8, !dbg !383, !tbaa !344
  %cmp78 = icmp eq i64 %36, 0, !dbg !384
  br i1 %cmp78, label %if.then80, label %if.end92, !dbg !385

if.then80:                                        ; preds = %land.lhs.true
  br i1 %cmp2, label %if.end92.thread, label %land.lhs.true84, !dbg !386

if.end92.thread:                                  ; preds = %if.then80
  %gcov_ctr142 = load i64, i64* getelementptr inbounds ([18 x i64], [18 x i64]* @__llvm_gcov_ctr.2, i64 0, i64 5), align 8, !dbg !388
  %37 = add i64 %gcov_ctr142, 1, !dbg !388
  store i64 %37, i64* getelementptr inbounds ([18 x i64], [18 x i64]* @__llvm_gcov_ctr.2, i64 0, i64 5), align 8, !dbg !388
  store i32 %12, i32* %src, align 4, !dbg !391, !tbaa !286
  store i32 0, i32* %dst, align 4, !dbg !392, !tbaa !286
  call void @llvm.dbg.value(metadata i8 undef, metadata !271, metadata !DIExpression()), !dbg !281
  br label %if.end106, !dbg !393

land.lhs.true84:                                  ; preds = %if.then80
  %gcov_ctr143 = load i64, i64* getelementptr inbounds ([18 x i64], [18 x i64]* @__llvm_gcov_ctr.2, i64 0, i64 6), align 16, !dbg !394
  %38 = add i64 %gcov_ctr143, 1, !dbg !394
  store i64 %38, i64* getelementptr inbounds ([18 x i64], [18 x i64]* @__llvm_gcov_ctr.2, i64 0, i64 6), align 16, !dbg !394
  %39 = load i32, i32* %excess_free85, align 8, !dbg !394, !tbaa !358
  %40 = load i32, i32* %8, align 8, !dbg !396, !tbaa !198
  %cmp87.not = icmp ult i32 %39, %40, !dbg !397
  br i1 %cmp87.not, label %if.end92.thread230, label %if.then89, !dbg !398

if.then89:                                        ; preds = %land.lhs.true84
  %gcov_ctr144 = load i64, i64* getelementptr inbounds ([18 x i64], [18 x i64]* @__llvm_gcov_ctr.2, i64 0, i64 7), align 8, !dbg !399
  %41 = add i64 %gcov_ctr144, 1, !dbg !399
  store i64 %41, i64* getelementptr inbounds ([18 x i64], [18 x i64]* @__llvm_gcov_ctr.2, i64 0, i64 7), align 8, !dbg !399
  store i32 %12, i32* %src, align 4, !dbg !401, !tbaa !286
  store i32 0, i32* %dst, align 4, !dbg !402, !tbaa !286
  call void @llvm.dbg.value(metadata i8 1, metadata !271, metadata !DIExpression()), !dbg !281
  br label %if.end92.thread230, !dbg !403

if.end92.thread230:                               ; preds = %land.lhs.true84, %if.then89
  %too_free.1 = phi i8 [ 1, %if.then89 ], [ %too_free.0233, %land.lhs.true84 ], !dbg !281
  call void @llvm.dbg.value(metadata i8 %too_free.1, metadata !271, metadata !DIExpression()), !dbg !281
  %gcov_ctr145 = load i64, i64* getelementptr inbounds ([18 x i64], [18 x i64]* @__llvm_gcov_ctr.2, i64 0, i64 8), align 16
  %42 = add i64 %gcov_ctr145, 1
  store i64 %42, i64* getelementptr inbounds ([18 x i64], [18 x i64]* @__llvm_gcov_ctr.2, i64 0, i64 8), align 16
  call void @llvm.dbg.value(metadata i8 undef, metadata !271, metadata !DIExpression()), !dbg !281
  br label %if.then94, !dbg !393

if.end92:                                         ; preds = %land.lhs.true, %if.end50
  call void @llvm.dbg.value(metadata i8 %too_free.0233, metadata !271, metadata !DIExpression()), !dbg !281
  br i1 %cmp2, label %if.end106, label %if.then94, !dbg !393

if.then94:                                        ; preds = %if.end92.thread230, %if.end92
  %too_free.2232 = phi i8 [ %too_free.1, %if.end92.thread230 ], [ %too_free.0233, %if.end92 ]
  %cmp95 = icmp ugt i64 %div, %oldest_age.0234, !dbg !404
  br i1 %cmp95, label %land.lhs.true97, label %if.end105, !dbg !408

land.lhs.true97:                                  ; preds = %if.then94
  %gcov_ctr146 = load i64, i64* getelementptr inbounds ([18 x i64], [18 x i64]* @__llvm_gcov_ctr.2, i64 0, i64 9), align 8, !dbg !409
  %43 = add i64 %gcov_ctr146, 1, !dbg !409
  store i64 %43, i64* getelementptr inbounds ([18 x i64], [18 x i64]* @__llvm_gcov_ctr.2, i64 0, i64 9), align 8, !dbg !409
  %44 = load i64, i64* %total_pages, align 8, !dbg !410, !tbaa !336
  %cmp102 = icmp sgt i64 %44, 2, !dbg !411
  br i1 %cmp102, label %if.then104, label %if.end105, !dbg !412

if.then104:                                       ; preds = %land.lhs.true97
  %gcov_ctr147 = load i64, i64* getelementptr inbounds ([18 x i64], [18 x i64]* @__llvm_gcov_ctr.2, i64 0, i64 10), align 16, !dbg !413
  %45 = add i64 %gcov_ctr147, 1, !dbg !413
  store i64 %45, i64* getelementptr inbounds ([18 x i64], [18 x i64]* @__llvm_gcov_ctr.2, i64 0, i64 10), align 16, !dbg !413
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !269, metadata !DIExpression()), !dbg !281
  call void @llvm.dbg.value(metadata i64 %div, metadata !270, metadata !DIExpression()), !dbg !281
  br label %if.end105, !dbg !415

if.end105:                                        ; preds = %if.then104, %land.lhs.true97, %if.then94
  %oldest_age.1 = phi i64 [ %div, %if.then104 ], [ %oldest_age.0234, %land.lhs.true97 ], [ %oldest_age.0234, %if.then94 ], !dbg !281
  %oldest.1 = phi i32 [ %12, %if.then104 ], [ %oldest.0237, %land.lhs.true97 ], [ %oldest.0237, %if.then94 ], !dbg !281
  call void @llvm.dbg.value(metadata i32 %oldest.1, metadata !269, metadata !DIExpression()), !dbg !281
  call void @llvm.dbg.value(metadata i64 %oldest_age.1, metadata !270, metadata !DIExpression()), !dbg !281
  %gcov_ctr148 = load i64, i64* getelementptr inbounds ([18 x i64], [18 x i64]* @__llvm_gcov_ctr.2, i64 0, i64 11), align 8, !dbg !416
  %46 = add i64 %gcov_ctr148, 1, !dbg !416
  store i64 %46, i64* getelementptr inbounds ([18 x i64], [18 x i64]* @__llvm_gcov_ctr.2, i64 0, i64 11), align 8, !dbg !416
  br label %if.end106, !dbg !416

if.end106:                                        ; preds = %if.end92.thread, %if.end105, %if.end92
  %too_free.2229 = phi i8 [ %too_free.0233, %if.end92 ], [ %too_free.2232, %if.end105 ], [ 1, %if.end92.thread ]
  %oldest_age.2 = phi i64 [ %oldest_age.0234, %if.end92 ], [ %oldest_age.1, %if.end105 ], [ %oldest_age.0234, %if.end92.thread ], !dbg !281
  %oldest.2 = phi i32 [ %oldest.0237, %if.end92 ], [ %oldest.1, %if.end105 ], [ %oldest.0237, %if.end92.thread ], !dbg !281
  call void @llvm.dbg.value(metadata i32 %oldest.2, metadata !269, metadata !DIExpression()), !dbg !281
  call void @llvm.dbg.value(metadata i64 %oldest_age.2, metadata !270, metadata !DIExpression()), !dbg !281
  %gcov_ctr149 = load i64, i64* getelementptr inbounds ([18 x i64], [18 x i64]* @__llvm_gcov_ctr.2, i64 0, i64 12), align 16, !dbg !417
  %47 = add i64 %gcov_ctr149, 1, !dbg !417
  store i64 %47, i64* getelementptr inbounds ([18 x i64], [18 x i64]* @__llvm_gcov_ctr.2, i64 0, i64 12), align 16, !dbg !417
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !417
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !267, metadata !DIExpression()), !dbg !281
  call void @llvm.dbg.value(metadata i8 %too_free.2229, metadata !271, metadata !DIExpression()), !dbg !281
  %exitcond.not = icmp eq i64 %indvars.iv.next, 64, !dbg !418
  br i1 %exitcond.not, label %for.end, label %for.body, !dbg !299, !llvm.loop !419

for.end:                                          ; preds = %if.end106
  %call112 = call i8* @memcpy(i8* noundef nonnull %iam_before, i8* noundef nonnull %iam_after, i64 noundef 1536) #11, !dbg !422
  %call117 = call i8* @memcpy(i8* noundef nonnull %sam_before, i8* noundef nonnull %sam_after, i64 noundef 1536) #11, !dbg !423
  %48 = load i32, i32* %4, align 4, !dbg !424, !tbaa !297
  %49 = load i32, i32* %8, align 8, !dbg !426, !tbaa !198
  %cmp120 = icmp ult i32 %48, %49, !dbg !427
  br i1 %cmp120, label %cleanup, label %if.end123, !dbg !428

if.end123:                                        ; preds = %for.end
  %50 = and i8 %too_free.2229, 1, !dbg !429
  %tobool124.not = icmp eq i8 %50, 0, !dbg !429
  br i1 %tobool124.not, label %land.lhs.true125, label %cleanup, !dbg !431

land.lhs.true125:                                 ; preds = %if.end123
  %gcov_ctr151 = load i64, i64* getelementptr inbounds ([18 x i64], [18 x i64]* @__llvm_gcov_ctr.2, i64 0, i64 14), align 16, !dbg !432
  %51 = add i64 %gcov_ctr151, 1, !dbg !432
  store i64 %51, i64* getelementptr inbounds ([18 x i64], [18 x i64]* @__llvm_gcov_ctr.2, i64 0, i64 14), align 16, !dbg !432
  %tobool126.not = icmp eq i32 %call, 0, !dbg !432
  br i1 %tobool126.not, label %cleanup, label %land.lhs.true127, !dbg !433

land.lhs.true127:                                 ; preds = %land.lhs.true125
  %gcov_ctr152 = load i64, i64* getelementptr inbounds ([18 x i64], [18 x i64]* @__llvm_gcov_ctr.2, i64 0, i64 15), align 8, !dbg !434
  %52 = add i64 %gcov_ctr152, 1, !dbg !434
  store i64 %52, i64* getelementptr inbounds ([18 x i64], [18 x i64]* @__llvm_gcov_ctr.2, i64 0, i64 15), align 8, !dbg !434
  %cmp128.not = icmp eq i32 %oldest.2, -1, !dbg !435
  br i1 %cmp128.not, label %cleanup, label %if.then130, !dbg !436

if.then130:                                       ; preds = %land.lhs.true127
  %gcov_ctr153 = load i64, i64* getelementptr inbounds ([18 x i64], [18 x i64]* @__llvm_gcov_ctr.2, i64 0, i64 16), align 16, !dbg !437
  %53 = add i64 %gcov_ctr153, 1, !dbg !437
  store i64 %53, i64* getelementptr inbounds ([18 x i64], [18 x i64]* @__llvm_gcov_ctr.2, i64 0, i64 16), align 16, !dbg !437
  store i32 %oldest.2, i32* %src, align 4, !dbg !439, !tbaa !286
  store i32 0, i32* %dst, align 4, !dbg !440, !tbaa !286
  br label %cleanup, !dbg !441

cleanup:                                          ; preds = %if.end123, %land.lhs.true125, %land.lhs.true127, %if.then130, %for.end
  %.sink = phi i64* [ getelementptr inbounds ([18 x i64], [18 x i64]* @__llvm_gcov_ctr.2, i64 0, i64 13), %for.end ], [ getelementptr inbounds ([18 x i64], [18 x i64]* @__llvm_gcov_ctr.2, i64 0, i64 17), %if.then130 ], [ getelementptr inbounds ([18 x i64], [18 x i64]* @__llvm_gcov_ctr.2, i64 0, i64 17), %land.lhs.true127 ], [ getelementptr inbounds ([18 x i64], [18 x i64]* @__llvm_gcov_ctr.2, i64 0, i64 17), %land.lhs.true125 ], [ getelementptr inbounds ([18 x i64], [18 x i64]* @__llvm_gcov_ctr.2, i64 0, i64 17), %if.end123 ]
  %gcov_ctr154 = load i64, i64* %.sink, align 8
  %54 = add i64 %gcov_ctr154, 1
  store i64 %54, i64* %.sink, align 8
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %1) #12, !dbg !442
  ret void, !dbg !442
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @global_pool_check(%struct.slab_automove* nocapture noundef %a) unnamed_addr #0 !dbg !443 {
entry:
  %mem_limit_reached = alloca i8, align 1
  call void @llvm.dbg.value(metadata %struct.slab_automove* %a, metadata !447, metadata !DIExpression()), !dbg !451
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %mem_limit_reached) #12, !dbg !452
  %global_pool_watermark = getelementptr inbounds %struct.slab_automove, %struct.slab_automove* %a, i64 0, i32 8, !dbg !453
  %0 = load i32, i32* %global_pool_watermark, align 4, !dbg !453, !tbaa !454
  call void @llvm.dbg.value(metadata i32 %0, metadata !449, metadata !DIExpression()), !dbg !451
  call void @llvm.dbg.value(metadata i8* %mem_limit_reached, metadata !448, metadata !DIExpression(DW_OP_deref)), !dbg !451
  %call = call i32 @global_page_pool_size(i8* noundef nonnull %mem_limit_reached) #11, !dbg !455
  call void @llvm.dbg.value(metadata i32 %call, metadata !450, metadata !DIExpression()), !dbg !451
  %1 = load i8, i8* %mem_limit_reached, align 1, !dbg !456, !tbaa !458, !range !459
  call void @llvm.dbg.value(metadata i8 %1, metadata !448, metadata !DIExpression()), !dbg !451
  %tobool.not = icmp eq i8 %1, 0, !dbg !456
  br i1 %tobool.not, label %if.then, label %if.end, !dbg !460

if.then:                                          ; preds = %entry
  %gcov_ctr = load i64, i64* getelementptr inbounds ([3 x i64], [3 x i64]* @__llvm_gcov_ctr.3, i64 0, i64 0), align 16, !dbg !461
  %2 = add i64 %gcov_ctr, 1, !dbg !461
  store i64 %2, i64* getelementptr inbounds ([3 x i64], [3 x i64]* @__llvm_gcov_ctr.3, i64 0, i64 0), align 16, !dbg !461
  br label %cleanup, !dbg !461

if.end:                                           ; preds = %entry
  %cmp = icmp ult i32 %call, %0, !dbg !462
  br i1 %cmp, label %if.then1, label %if.else, !dbg !464

if.then1:                                         ; preds = %if.end
  %gcov_ctr6 = load i64, i64* getelementptr inbounds ([3 x i64], [3 x i64]* @__llvm_gcov_ctr.3, i64 0, i64 1), align 8, !dbg !465
  %3 = add i64 %gcov_ctr6, 1, !dbg !465
  store i64 %3, i64* getelementptr inbounds ([3 x i64], [3 x i64]* @__llvm_gcov_ctr.3, i64 0, i64 1), align 8, !dbg !465
  %pool_filled_once = getelementptr inbounds %struct.slab_automove, %struct.slab_automove* %a, i64 0, i32 7, !dbg !467
  store i8 1, i8* %pool_filled_once, align 8, !dbg !468, !tbaa !217
  br label %cleanup, !dbg !469

if.else:                                          ; preds = %if.end
  %gcov_ctr7 = load i64, i64* getelementptr inbounds ([3 x i64], [3 x i64]* @__llvm_gcov_ctr.3, i64 0, i64 2), align 16, !dbg !470
  %4 = add i64 %gcov_ctr7, 1, !dbg !470
  store i64 %4, i64* getelementptr inbounds ([3 x i64], [3 x i64]* @__llvm_gcov_ctr.3, i64 0, i64 2), align 16, !dbg !470
  %pool_filled_once2 = getelementptr inbounds %struct.slab_automove, %struct.slab_automove* %a, i64 0, i32 7, !dbg !472
  store i8 1, i8* %pool_filled_once2, align 8, !dbg !473, !tbaa !217
  br label %cleanup, !dbg !474

cleanup:                                          ; preds = %if.else, %if.then1, %if.then
  %retval.0 = phi i32 [ 1, %if.then1 ], [ 0, %if.else ], [ 0, %if.then ], !dbg !451
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %mem_limit_reached) #12, !dbg !475
  ret i32 %retval.0, !dbg !475
}

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define internal fastcc void @memcheck(%struct.slab_automove* nocapture noundef %a) unnamed_addr #5 !dbg !476 {
entry:
  call void @llvm.dbg.value(metadata %struct.slab_automove* %a, metadata !480, metadata !DIExpression()), !dbg !487
  call void @llvm.dbg.value(metadata i32 0, metadata !481, metadata !DIExpression()), !dbg !487
  call void @llvm.dbg.value(metadata i32 1, metadata !482, metadata !DIExpression()), !dbg !488
  call void @llvm.dbg.value(metadata i32 undef, metadata !481, metadata !DIExpression()), !dbg !487
  %gcov_ctr16.pre = load i64, i64* getelementptr inbounds ([3 x i64], [3 x i64]* @__llvm_gcov_ctr.4, i64 0, i64 1), align 8, !dbg !489
  br label %for.body, !dbg !490

for.cond.cleanup:                                 ; preds = %for.body
  %gcov_ctr = load i64, i64* getelementptr inbounds ([3 x i64], [3 x i64]* @__llvm_gcov_ctr.4, i64 0, i64 0), align 16, !dbg !491
  %0 = add i64 %gcov_ctr, 1, !dbg !491
  store i64 %0, i64* getelementptr inbounds ([3 x i64], [3 x i64]* @__llvm_gcov_ctr.4, i64 0, i64 0), align 16, !dbg !491
  %total_pages5 = getelementptr inbounds %struct.slab_automove, %struct.slab_automove* %a, i64 0, i32 12, i64 0, i32 3, !dbg !492
  %1 = load i64, i64* %total_pages5, align 8, !dbg !492, !tbaa !336
  %add7 = add i64 %1, %add.2, !dbg !493
  %conv8 = trunc i64 %add7 to i32, !dbg !493
  call void @llvm.dbg.value(metadata i32 %conv8, metadata !481, metadata !DIExpression()), !dbg !487
  %conv9 = uitofp i32 %conv8 to double, !dbg !494
  %free_ratio = getelementptr inbounds %struct.slab_automove, %struct.slab_automove* %a, i64 0, i32 6, !dbg !495
  %2 = load double, double* %free_ratio, align 8, !dbg !495, !tbaa !206
  %mul = fmul double %2, %conv9, !dbg !496
  %conv10 = fptoui double %mul to i32, !dbg !494
  %global_pool_watermark = getelementptr inbounds %struct.slab_automove, %struct.slab_automove* %a, i64 0, i32 8, !dbg !497
  store i32 %conv10, i32* %global_pool_watermark, align 4, !dbg !498, !tbaa !454
  %cmp12 = icmp ult i32 %conv10, 2, !dbg !499
  br i1 %cmp12, label %if.then, label %if.end, !dbg !501

for.body:                                         ; preds = %for.body, %entry
  %gcov_ctr16 = phi i64 [ %gcov_ctr16.pre, %entry ], [ %8, %for.body ], !dbg !489
  %indvars.iv = phi i64 [ 1, %entry ], [ %indvars.iv.next.2, %for.body ]
  %total_pages.032 = phi i64 [ 0, %entry ], [ %phi.cast.2, %for.body ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !482, metadata !DIExpression()), !dbg !488
  call void @llvm.dbg.value(metadata !DIArgList(%struct.slab_automove* %a, i64 %indvars.iv), metadata !484, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 24, DW_OP_mul, DW_OP_plus, DW_OP_plus_uconst, 4664, DW_OP_stack_value)), !dbg !502
  %total_pages1 = getelementptr inbounds %struct.slab_automove, %struct.slab_automove* %a, i64 0, i32 12, i64 %indvars.iv, i32 3, !dbg !503
  %3 = load i64, i64* %total_pages1, align 8, !dbg !503, !tbaa !336
  %add = add nsw i64 %3, %total_pages.032, !dbg !504
  call void @llvm.dbg.value(metadata i64 %add, metadata !481, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !487
  %4 = add i64 %gcov_ctr16, 1, !dbg !489
  store i64 %4, i64* getelementptr inbounds ([3 x i64], [3 x i64]* @__llvm_gcov_ctr.4, i64 0, i64 1), align 8, !dbg !489
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !489
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !482, metadata !DIExpression()), !dbg !488
  call void @llvm.dbg.value(metadata i32 undef, metadata !481, metadata !DIExpression()), !dbg !487
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !482, metadata !DIExpression()), !dbg !488
  call void @llvm.dbg.value(metadata !DIArgList(%struct.slab_automove* %a, i64 %indvars.iv.next), metadata !484, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 24, DW_OP_mul, DW_OP_plus, DW_OP_plus_uconst, 4664, DW_OP_stack_value)), !dbg !502
  %total_pages1.1 = getelementptr inbounds %struct.slab_automove, %struct.slab_automove* %a, i64 0, i32 12, i64 %indvars.iv.next, i32 3, !dbg !503
  %5 = load i64, i64* %total_pages1.1, align 8, !dbg !503, !tbaa !336
  %add.1 = add i64 %5, %add, !dbg !504
  call void @llvm.dbg.value(metadata !DIArgList(i64 %5, i64 %add), metadata !481, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !487
  %6 = add i64 %gcov_ctr16, 2, !dbg !489
  store i64 %6, i64* getelementptr inbounds ([3 x i64], [3 x i64]* @__llvm_gcov_ctr.4, i64 0, i64 1), align 8, !dbg !489
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2, !dbg !489
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next.1, metadata !482, metadata !DIExpression()), !dbg !488
  %phi.cast.1 = and i64 %add.1, 4294967295, !dbg !491
  call void @llvm.dbg.value(metadata i32 undef, metadata !481, metadata !DIExpression()), !dbg !487
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next.1, metadata !482, metadata !DIExpression()), !dbg !488
  call void @llvm.dbg.value(metadata !DIArgList(%struct.slab_automove* %a, i64 %indvars.iv.next.1), metadata !484, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 24, DW_OP_mul, DW_OP_plus, DW_OP_plus_uconst, 4664, DW_OP_stack_value)), !dbg !502
  %total_pages1.2 = getelementptr inbounds %struct.slab_automove, %struct.slab_automove* %a, i64 0, i32 12, i64 %indvars.iv.next.1, i32 3, !dbg !503
  %7 = load i64, i64* %total_pages1.2, align 8, !dbg !503, !tbaa !336
  %add.2 = add nsw i64 %7, %phi.cast.1, !dbg !504
  call void @llvm.dbg.value(metadata i64 %add.2, metadata !481, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !487
  %8 = add i64 %gcov_ctr16, 3, !dbg !489
  store i64 %8, i64* getelementptr inbounds ([3 x i64], [3 x i64]* @__llvm_gcov_ctr.4, i64 0, i64 1), align 8, !dbg !489
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3, !dbg !489
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next.2, metadata !482, metadata !DIExpression()), !dbg !488
  %phi.cast.2 = and i64 %add.2, 4294967295, !dbg !491
  call void @llvm.dbg.value(metadata i32 undef, metadata !481, metadata !DIExpression()), !dbg !487
  %exitcond.not.2 = icmp eq i64 %indvars.iv.next.2, 64, !dbg !505
  br i1 %exitcond.not.2, label %for.cond.cleanup, label %for.body, !dbg !490, !llvm.loop !506

if.then:                                          ; preds = %for.cond.cleanup
  %gcov_ctr17 = load i64, i64* getelementptr inbounds ([3 x i64], [3 x i64]* @__llvm_gcov_ctr.4, i64 0, i64 2), align 16, !dbg !508
  %9 = add i64 %gcov_ctr17, 1, !dbg !508
  store i64 %9, i64* getelementptr inbounds ([3 x i64], [3 x i64]* @__llvm_gcov_ctr.4, i64 0, i64 2), align 16, !dbg !508
  store i32 2, i32* %global_pool_watermark, align 4, !dbg !509, !tbaa !454
  br label %if.end, !dbg !508

if.end:                                           ; preds = %if.then, %for.cond.cleanup
  %10 = phi i32 [ 2, %if.then ], [ %conv10, %for.cond.cleanup ], !dbg !510
  store i32 %10, i32* getelementptr inbounds (%struct.settings, %struct.settings* @settings, i64 0, i32 71), align 4, !dbg !511, !tbaa !512
  ret void, !dbg !513
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define internal fastcc %struct.window_data* @get_window_data(%struct.slab_automove* nocapture noundef readonly %a, i32 noundef %class) unnamed_addr #6 !dbg !514 {
entry:
  %gcov_ctr = load i64, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.5, i64 0, i64 0), align 8
  %0 = add i64 %gcov_ctr, 1
  store i64 %0, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.5, i64 0, i64 0), align 8
  call void @llvm.dbg.value(metadata %struct.slab_automove* %a, metadata !518, metadata !DIExpression()), !dbg !521
  call void @llvm.dbg.value(metadata i32 %class, metadata !519, metadata !DIExpression()), !dbg !521
  %window_size = getelementptr inbounds %struct.slab_automove, %struct.slab_automove* %a, i64 0, i32 2, !dbg !522
  %1 = load i32, i32* %window_size, align 8, !dbg !522, !tbaa !198
  %mul = mul i32 %1, %class, !dbg !523
  call void @llvm.dbg.value(metadata i32 %mul, metadata !520, metadata !DIExpression()), !dbg !521
  %window_data = getelementptr inbounds %struct.slab_automove, %struct.slab_automove* %a, i64 0, i32 0, !dbg !524
  %2 = load %struct.window_data*, %struct.window_data** %window_data, align 8, !dbg !524, !tbaa !194
  %window_cur = getelementptr inbounds %struct.slab_automove, %struct.slab_automove* %a, i64 0, i32 3, !dbg !525
  %3 = load i32, i32* %window_cur, align 4, !dbg !525, !tbaa !297
  %rem = urem i32 %3, %1, !dbg !526
  %add = add i32 %rem, %mul, !dbg !527
  %idxprom = zext i32 %add to i64, !dbg !528
  %arrayidx = getelementptr inbounds %struct.window_data, %struct.window_data* %2, i64 %idxprom, !dbg !528
  ret %struct.window_data* %arrayidx, !dbg !529
}

; Function Attrs: nounwind
declare !dbg !530 dso_local i8* @memset(i8* noundef, i32 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define internal fastcc void @window_sum(%struct.window_data* nocapture noundef readonly %wd, %struct.window_data* nocapture noundef %w, i32 noundef %size) unnamed_addr #5 !dbg !534 {
entry:
  call void @llvm.dbg.value(metadata %struct.window_data* %wd, metadata !538, metadata !DIExpression()), !dbg !546
  call void @llvm.dbg.value(metadata %struct.window_data* %w, metadata !539, metadata !DIExpression()), !dbg !546
  call void @llvm.dbg.value(metadata i32 %size, metadata !540, metadata !DIExpression()), !dbg !546
  call void @llvm.dbg.value(metadata i32 0, metadata !541, metadata !DIExpression()), !dbg !547
  %cmp23.not = icmp eq i32 %size, 0, !dbg !548
  br i1 %cmp23.not, label %for.cond.cleanup, label %for.body.lr.ph, !dbg !549

for.body.lr.ph:                                   ; preds = %entry
  %evicted4 = getelementptr inbounds %struct.window_data, %struct.window_data* %w, i64 0, i32 2
  %excess_free6 = getelementptr inbounds %struct.window_data, %struct.window_data* %w, i64 0, i32 3
  %relaxed8 = getelementptr inbounds %struct.window_data, %struct.window_data* %w, i64 0, i32 4
  %wide.trip.count = zext i32 %size to i64, !dbg !548
  %.pre = load i64, i64* %evicted4, align 8, !dbg !550, !tbaa !551
  %.pre26 = load i32, i32* %excess_free6, align 8, !dbg !552, !tbaa !358
  %.pre27 = load i32, i32* %relaxed8, align 4, !dbg !553, !tbaa !554
  %0 = bitcast %struct.window_data* %w to <2 x i64>*
  %1 = bitcast %struct.window_data* %w to <2 x i64>*
  br label %for.body, !dbg !549

for.cond.cleanup:                                 ; preds = %for.body, %entry
  %gcov_ctr = load i64, i64* getelementptr inbounds ([2 x i64], [2 x i64]* @__llvm_gcov_ctr.6, i64 0, i64 0), align 8, !dbg !555
  %2 = add i64 %gcov_ctr, 1, !dbg !555
  store i64 %2, i64* getelementptr inbounds ([2 x i64], [2 x i64]* @__llvm_gcov_ctr.6, i64 0, i64 0), align 8, !dbg !555
  ret void, !dbg !556

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %3 = phi i32 [ %.pre27, %for.body.lr.ph ], [ %add9, %for.body ], !dbg !553
  %4 = phi i32 [ %.pre26, %for.body.lr.ph ], [ %add7, %for.body ], !dbg !552
  %5 = phi i64 [ %.pre, %for.body.lr.ph ], [ %add5, %for.body ], !dbg !550
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.body ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !541, metadata !DIExpression()), !dbg !547
  call void @llvm.dbg.value(metadata !DIArgList(%struct.window_data* %wd, i64 %indvars.iv), metadata !543, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 32, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !557
  %age = getelementptr inbounds %struct.window_data, %struct.window_data* %wd, i64 %indvars.iv, i32 0, !dbg !558
  %6 = bitcast i64* %age to <2 x i64>*, !dbg !558
  %7 = load <2 x i64>, <2 x i64>* %6, align 8, !dbg !558, !tbaa !332
  %8 = load <2 x i64>, <2 x i64>* %0, align 8, !dbg !559, !tbaa !332
  %9 = add <2 x i64> %8, %7, !dbg !559
  store <2 x i64> %9, <2 x i64>* %1, align 8, !dbg !559, !tbaa !332
  %evicted = getelementptr inbounds %struct.window_data, %struct.window_data* %wd, i64 %indvars.iv, i32 2, !dbg !560
  %10 = load i64, i64* %evicted, align 8, !dbg !560, !tbaa !551
  %add5 = add i64 %5, %10, !dbg !550
  store i64 %add5, i64* %evicted4, align 8, !dbg !550, !tbaa !551
  %excess_free = getelementptr inbounds %struct.window_data, %struct.window_data* %wd, i64 %indvars.iv, i32 3, !dbg !561
  %11 = load i32, i32* %excess_free, align 8, !dbg !561, !tbaa !358
  %add7 = add i32 %4, %11, !dbg !552
  store i32 %add7, i32* %excess_free6, align 8, !dbg !552, !tbaa !358
  %relaxed = getelementptr inbounds %struct.window_data, %struct.window_data* %wd, i64 %indvars.iv, i32 4, !dbg !562
  %12 = load i32, i32* %relaxed, align 4, !dbg !562, !tbaa !554
  %add9 = add i32 %3, %12, !dbg !553
  store i32 %add9, i32* %relaxed8, align 4, !dbg !553, !tbaa !554
  %gcov_ctr10 = load i64, i64* getelementptr inbounds ([2 x i64], [2 x i64]* @__llvm_gcov_ctr.6, i64 0, i64 1), align 8, !dbg !563
  %13 = add i64 %gcov_ctr10, 1, !dbg !563
  store i64 %13, i64* getelementptr inbounds ([2 x i64], [2 x i64]* @__llvm_gcov_ctr.6, i64 0, i64 1), align 8, !dbg !563
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !563
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !541, metadata !DIExpression()), !dbg !547
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count, !dbg !548
  br i1 %exitcond.not, label %for.cond.cleanup, label %for.body, !dbg !549, !llvm.loop !564
}

; Function Attrs: nounwind
declare !dbg !566 dso_local i8* @memcpy(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #3

declare !dbg !573 dso_local i32 @global_page_pool_size(i8* noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind uwtable
define internal void @__llvm_gcov_writeout() unnamed_addr #7 {
entry:
  tail call void @llvm_gcda_start_file(i8* getelementptr inbounds ([70 x i8], [70 x i8]* @0, i64 0, i64 0), i32 875575338, i32 765425214) #12
  tail call void @llvm_gcda_emit_function(i32 0, i32 683637596, i32 765425214) #12
  tail call void @llvm_gcda_emit_arcs(i32 4, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @__llvm_gcov_ctr, i64 0, i64 0)) #12
  tail call void @llvm_gcda_emit_function(i32 1, i32 -754295336, i32 765425214) #12
  tail call void @llvm_gcda_emit_arcs(i32 1, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.1, i64 0, i64 0)) #12
  tail call void @llvm_gcda_emit_function(i32 2, i32 617158939, i32 765425214) #12
  tail call void @llvm_gcda_emit_arcs(i32 18, i64* getelementptr inbounds ([18 x i64], [18 x i64]* @__llvm_gcov_ctr.2, i64 0, i64 0)) #12
  tail call void @llvm_gcda_emit_function(i32 3, i32 -1861853222, i32 765425214) #12
  tail call void @llvm_gcda_emit_arcs(i32 3, i64* getelementptr inbounds ([3 x i64], [3 x i64]* @__llvm_gcov_ctr.3, i64 0, i64 0)) #12
  tail call void @llvm_gcda_emit_function(i32 4, i32 -454952116, i32 765425214) #12
  tail call void @llvm_gcda_emit_arcs(i32 3, i64* getelementptr inbounds ([3 x i64], [3 x i64]* @__llvm_gcov_ctr.4, i64 0, i64 0)) #12
  tail call void @llvm_gcda_emit_function(i32 5, i32 579813769, i32 765425214) #12
  tail call void @llvm_gcda_emit_arcs(i32 1, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.5, i64 0, i64 0)) #12
  tail call void @llvm_gcda_emit_function(i32 6, i32 -1273135542, i32 765425214) #12
  tail call void @llvm_gcda_emit_arcs(i32 2, i64* getelementptr inbounds ([2 x i64], [2 x i64]* @__llvm_gcov_ctr.6, i64 0, i64 0)) #12
  tail call void @llvm_gcda_summary_info() #12
  tail call void @llvm_gcda_end_file() #12
  ret void
}

declare void @llvm_gcda_start_file(i8*, i32, i32) local_unnamed_addr

declare void @llvm_gcda_emit_function(i32, i32, i32) local_unnamed_addr

declare void @llvm_gcda_emit_arcs(i32, i64*) local_unnamed_addr

declare void @llvm_gcda_summary_info() local_unnamed_addr

declare void @llvm_gcda_end_file() local_unnamed_addr

; Function Attrs: mustprogress nofree noinline nosync nounwind uwtable willreturn writeonly
define internal void @__llvm_gcov_reset() unnamed_addr #8 {
entry:
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(32) bitcast ([4 x i64]* @__llvm_gcov_ctr to i8*), i8 0, i64 32, i1 false)
  store i64 0, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.1, i64 0, i64 0), align 8
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(144) bitcast ([18 x i64]* @__llvm_gcov_ctr.2 to i8*), i8 0, i64 144, i1 false)
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(24) bitcast ([3 x i64]* @__llvm_gcov_ctr.3 to i8*), i8 0, i64 24, i1 false)
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(24) bitcast ([3 x i64]* @__llvm_gcov_ctr.4 to i8*), i8 0, i64 24, i1 false)
  store i64 0, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.5, i64 0, i64 0), align 8
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) bitcast ([2 x i64]* @__llvm_gcov_ctr.6 to i8*), i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #9

; Function Attrs: noinline nounwind uwtable
define internal void @__llvm_gcov_init() unnamed_addr #7 {
entry:
  tail call void @llvm_gcov_init(void ()* nonnull @__llvm_gcov_writeout, void ()* nonnull @__llvm_gcov_reset) #12
  ret void
}

declare void @llvm_gcov_init(void ()*, void ()*) local_unnamed_addr

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #10

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #3 = { nounwind "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree noinline norecurse nosync nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { noinline nounwind uwtable }
attributes #8 = { mustprogress nofree noinline nosync nounwind uwtable willreturn writeonly }
attributes #9 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #10 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { nobuiltin nounwind "no-builtins" }
attributes #12 = { nounwind }
attributes #13 = { nobuiltin "no-builtins" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!158, !159, !160, !161}
!llvm.gcov = !{!162}
!llvm.ident = !{!163}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 14.0.0", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !10, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "slab_automove_extstore.c", directory: "/home/xuheng/blackbox/llvm-test/memcached", checksumkind: CSK_MD5, checksum: "5ac442847ae9d5d39daa212c51ba7d9f")
!2 = !{!3}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "protocol", file: !4, line: 231, baseType: !5, size: 32, elements: !6)
!4 = !DIFile(filename: "./memcached.h", directory: "/home/xuheng/blackbox/llvm-test/memcached", checksumkind: CSK_MD5, checksum: "9260b30e1b6ff2e5471cc4f8f6971051")
!5 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!6 = !{!7, !8, !9}
!7 = !DIEnumerator(name: "ascii_prot", value: 3)
!8 = !DIEnumerator(name: "binary_prot", value: 4)
!9 = !DIEnumerator(name: "negotiating_prot", value: 5)
!10 = !{!11, !12}
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!13 = !DIDerivedType(tag: DW_TAG_typedef, name: "slab_automove", file: !1, line: 39, baseType: !14)
!14 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1, line: 25, size: 49600, elements: !15)
!15 = !{!16, !30, !124, !125, !126, !127, !128, !129, !130, !131, !146, !147, !157}
!16 = !DIDerivedType(tag: DW_TAG_member, name: "window_data", scope: !14, file: !1, line: 26, baseType: !17, size: 64)
!17 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64)
!18 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "window_data", file: !1, line: 17, size: 256, elements: !19)
!19 = !{!20, !26, !27, !28, !29}
!20 = !DIDerivedType(tag: DW_TAG_member, name: "age", scope: !18, file: !1, line: 18, baseType: !21, size: 64)
!21 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !22, line: 27, baseType: !23)
!22 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "d3ea318a915682aaf6645ec16ac9f991")
!23 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !24, line: 45, baseType: !25)
!24 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "f6304b1a6dcfc6bee76e9a51043b5090")
!25 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "dirty", scope: !18, file: !1, line: 19, baseType: !21, size: 64, offset: 64)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "evicted", scope: !18, file: !1, line: 20, baseType: !21, size: 64, offset: 128)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "excess_free", scope: !18, file: !1, line: 21, baseType: !5, size: 32, offset: 192)
!29 = !DIDerivedType(tag: DW_TAG_member, name: "relaxed", scope: !18, file: !1, line: 22, baseType: !5, size: 32, offset: 224)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "settings", scope: !14, file: !1, line: 27, baseType: !31, size: 64, offset: 64)
!31 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !32, size: 64)
!32 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "settings", file: !4, line: 436, size: 2752, elements: !33)
!33 = !{!34, !37, !39, !40, !41, !44, !45, !48, !49, !50, !51, !52, !53, !55, !56, !57, !58, !59, !60, !61, !63, !64, !65, !66, !67, !68, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123}
!34 = !DIDerivedType(tag: DW_TAG_member, name: "maxbytes", scope: !32, file: !4, line: 437, baseType: !35, size: 64)
!35 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !36, line: 46, baseType: !25)
!36 = !DIFile(filename: "VeriFrame/LLVMUtils/llvm/lib/clang/14.0.0/include/stddef.h", directory: "/home/xuheng", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!37 = !DIDerivedType(tag: DW_TAG_member, name: "maxconns", scope: !32, file: !4, line: 438, baseType: !38, size: 32, offset: 64)
!38 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !32, file: !4, line: 439, baseType: !38, size: 32, offset: 96)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "udpport", scope: !32, file: !4, line: 440, baseType: !38, size: 32, offset: 128)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "inter", scope: !32, file: !4, line: 441, baseType: !42, size: 64, offset: 192)
!42 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !43, size: 64)
!43 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "verbose", scope: !32, file: !4, line: 442, baseType: !38, size: 32, offset: 256)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "oldest_live", scope: !32, file: !4, line: 443, baseType: !46, size: 32, offset: 288)
!46 = !DIDerivedType(tag: DW_TAG_typedef, name: "rel_time_t", file: !47, line: 14, baseType: !5)
!47 = !DIFile(filename: "./logger.h", directory: "/home/xuheng/blackbox/llvm-test/memcached", checksumkind: CSK_MD5, checksum: "920aeded0afd45e7ff5c610f1349e8a7")
!48 = !DIDerivedType(tag: DW_TAG_member, name: "oldest_cas", scope: !32, file: !4, line: 444, baseType: !21, size: 64, offset: 320)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "evict_to_free", scope: !32, file: !4, line: 445, baseType: !38, size: 32, offset: 384)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "socketpath", scope: !32, file: !4, line: 446, baseType: !42, size: 64, offset: 448)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "auth_file", scope: !32, file: !4, line: 447, baseType: !42, size: 64, offset: 512)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !32, file: !4, line: 448, baseType: !38, size: 32, offset: 576)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "factor", scope: !32, file: !4, line: 449, baseType: !54, size: 64, offset: 640)
!54 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_size", scope: !32, file: !4, line: 450, baseType: !38, size: 32, offset: 704)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "num_threads", scope: !32, file: !4, line: 451, baseType: !38, size: 32, offset: 736)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "num_threads_per_udp", scope: !32, file: !4, line: 452, baseType: !38, size: 32, offset: 768)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "prefix_delimiter", scope: !32, file: !4, line: 453, baseType: !43, size: 8, offset: 800)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "detail_enabled", scope: !32, file: !4, line: 454, baseType: !38, size: 32, offset: 832)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "reqs_per_event", scope: !32, file: !4, line: 455, baseType: !38, size: 32, offset: 864)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "use_cas", scope: !32, file: !4, line: 457, baseType: !62, size: 8, offset: 896)
!62 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "binding_protocol", scope: !32, file: !4, line: 458, baseType: !3, size: 32, offset: 928)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "backlog", scope: !32, file: !4, line: 459, baseType: !38, size: 32, offset: 960)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "item_size_max", scope: !32, file: !4, line: 460, baseType: !38, size: 32, offset: 992)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "slab_chunk_size_max", scope: !32, file: !4, line: 461, baseType: !38, size: 32, offset: 1024)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "slab_page_size", scope: !32, file: !4, line: 462, baseType: !38, size: 32, offset: 1056)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "sig_hup", scope: !32, file: !4, line: 463, baseType: !69, size: 32, offset: 1088)
!69 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !70)
!70 = !DIDerivedType(tag: DW_TAG_typedef, name: "sig_atomic_t", file: !71, line: 8, baseType: !72)
!71 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/sig_atomic_t.h", directory: "", checksumkind: CSK_MD5, checksum: "d9236f7e3e7f10f53aa9d4cd97f503cf")
!72 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sig_atomic_t", file: !24, line: 214, baseType: !38)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "sasl", scope: !32, file: !4, line: 464, baseType: !62, size: 8, offset: 1120)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "maxconns_fast", scope: !32, file: !4, line: 465, baseType: !62, size: 8, offset: 1128)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "lru_crawler", scope: !32, file: !4, line: 466, baseType: !62, size: 8, offset: 1136)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "lru_maintainer_thread", scope: !32, file: !4, line: 467, baseType: !62, size: 8, offset: 1144)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "lru_segmented", scope: !32, file: !4, line: 468, baseType: !62, size: 8, offset: 1152)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "slab_reassign", scope: !32, file: !4, line: 469, baseType: !62, size: 8, offset: 1160)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "slab_automove", scope: !32, file: !4, line: 470, baseType: !38, size: 32, offset: 1184)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "slab_automove_ratio", scope: !32, file: !4, line: 471, baseType: !54, size: 64, offset: 1216)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "slab_automove_window", scope: !32, file: !4, line: 472, baseType: !5, size: 32, offset: 1280)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "hashpower_init", scope: !32, file: !4, line: 473, baseType: !38, size: 32, offset: 1312)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_command", scope: !32, file: !4, line: 474, baseType: !62, size: 8, offset: 1344)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "tail_repair_time", scope: !32, file: !4, line: 475, baseType: !38, size: 32, offset: 1376)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "flush_enabled", scope: !32, file: !4, line: 476, baseType: !62, size: 8, offset: 1408)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "dump_enabled", scope: !32, file: !4, line: 477, baseType: !62, size: 8, offset: 1416)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "hash_algorithm", scope: !32, file: !4, line: 478, baseType: !42, size: 64, offset: 1472)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "lru_crawler_sleep", scope: !32, file: !4, line: 479, baseType: !38, size: 32, offset: 1536)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "lru_crawler_tocrawl", scope: !32, file: !4, line: 480, baseType: !90, size: 32, offset: 1568)
!90 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !22, line: 26, baseType: !91)
!91 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !24, line: 42, baseType: !5)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "hot_lru_pct", scope: !32, file: !4, line: 481, baseType: !38, size: 32, offset: 1600)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "warm_lru_pct", scope: !32, file: !4, line: 482, baseType: !38, size: 32, offset: 1632)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "hot_max_factor", scope: !32, file: !4, line: 483, baseType: !54, size: 64, offset: 1664)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "warm_max_factor", scope: !32, file: !4, line: 484, baseType: !54, size: 64, offset: 1728)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "crawls_persleep", scope: !32, file: !4, line: 485, baseType: !38, size: 32, offset: 1792)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "temp_lru", scope: !32, file: !4, line: 486, baseType: !62, size: 8, offset: 1824)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "temporary_ttl", scope: !32, file: !4, line: 487, baseType: !90, size: 32, offset: 1856)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "idle_timeout", scope: !32, file: !4, line: 488, baseType: !38, size: 32, offset: 1888)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "logger_watcher_buf_size", scope: !32, file: !4, line: 489, baseType: !5, size: 32, offset: 1920)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "logger_buf_size", scope: !32, file: !4, line: 490, baseType: !5, size: 32, offset: 1952)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "read_buf_mem_limit", scope: !32, file: !4, line: 491, baseType: !5, size: 32, offset: 1984)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "drop_privileges", scope: !32, file: !4, line: 492, baseType: !62, size: 8, offset: 2016)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "watch_enabled", scope: !32, file: !4, line: 493, baseType: !62, size: 8, offset: 2024)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "relaxed_privileges", scope: !32, file: !4, line: 494, baseType: !62, size: 8, offset: 2032)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "meta_response_old", scope: !32, file: !4, line: 495, baseType: !62, size: 8, offset: 2040)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "ext_io_threadcount", scope: !32, file: !4, line: 497, baseType: !5, size: 32, offset: 2048)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "ext_page_size", scope: !32, file: !4, line: 498, baseType: !5, size: 32, offset: 2080)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "ext_item_size", scope: !32, file: !4, line: 499, baseType: !5, size: 32, offset: 2112)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "ext_item_age", scope: !32, file: !4, line: 500, baseType: !5, size: 32, offset: 2144)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "ext_low_ttl", scope: !32, file: !4, line: 501, baseType: !5, size: 32, offset: 2176)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "ext_recache_rate", scope: !32, file: !4, line: 502, baseType: !5, size: 32, offset: 2208)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "ext_wbuf_size", scope: !32, file: !4, line: 503, baseType: !5, size: 32, offset: 2240)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "ext_compact_under", scope: !32, file: !4, line: 504, baseType: !5, size: 32, offset: 2272)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "ext_drop_under", scope: !32, file: !4, line: 505, baseType: !5, size: 32, offset: 2304)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "ext_max_sleep", scope: !32, file: !4, line: 506, baseType: !5, size: 32, offset: 2336)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "ext_max_frag", scope: !32, file: !4, line: 507, baseType: !54, size: 64, offset: 2368)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "slab_automove_freeratio", scope: !32, file: !4, line: 508, baseType: !54, size: 64, offset: 2432)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "ext_drop_unread", scope: !32, file: !4, line: 509, baseType: !62, size: 8, offset: 2496)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "ext_global_pool_min", scope: !32, file: !4, line: 511, baseType: !5, size: 32, offset: 2528)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "num_napi_ids", scope: !32, file: !4, line: 528, baseType: !38, size: 32, offset: 2560)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "memory_file", scope: !32, file: !4, line: 529, baseType: !42, size: 64, offset: 2624)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "sock_cookie_id", scope: !32, file: !4, line: 537, baseType: !90, size: 32, offset: 2688)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "window_size", scope: !14, file: !1, line: 28, baseType: !90, size: 32, offset: 128)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "window_cur", scope: !14, file: !1, line: 29, baseType: !90, size: 32, offset: 160)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "item_size", scope: !14, file: !1, line: 30, baseType: !90, size: 32, offset: 192)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "max_age_ratio", scope: !14, file: !1, line: 31, baseType: !54, size: 64, offset: 256)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "free_ratio", scope: !14, file: !1, line: 32, baseType: !54, size: 64, offset: 320)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "pool_filled_once", scope: !14, file: !1, line: 33, baseType: !62, size: 8, offset: 384)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "global_pool_watermark", scope: !14, file: !1, line: 34, baseType: !5, size: 32, offset: 416)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "iam_before", scope: !14, file: !1, line: 35, baseType: !132, size: 12288, offset: 448)
!132 = !DICompositeType(tag: DW_TAG_array_type, baseType: !133, size: 12288, elements: !144)
!133 = !DIDerivedType(tag: DW_TAG_typedef, name: "item_stats_automove", file: !134, line: 71, baseType: !135)
!134 = !DIFile(filename: "./items.h", directory: "/home/xuheng/blackbox/llvm-test/memcached", checksumkind: CSK_MD5, checksum: "24f8c54717bd547418db2338c9044014")
!135 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !134, line: 67, size: 192, elements: !136)
!136 = !{!137, !142, !143}
!137 = !DIDerivedType(tag: DW_TAG_member, name: "evicted", scope: !135, file: !134, line: 68, baseType: !138, size: 64)
!138 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !139, line: 27, baseType: !140)
!139 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "", checksumkind: CSK_MD5, checksum: "081edea97425b3437dded4a7fe223193")
!140 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !24, line: 44, baseType: !141)
!141 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "outofmemory", scope: !135, file: !134, line: 69, baseType: !138, size: 64, offset: 64)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "age", scope: !135, file: !134, line: 70, baseType: !90, size: 32, offset: 128)
!144 = !{!145}
!145 = !DISubrange(count: 64)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "iam_after", scope: !14, file: !1, line: 36, baseType: !132, size: 12288, offset: 12736)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "sam_before", scope: !14, file: !1, line: 37, baseType: !148, size: 12288, offset: 25024)
!148 = !DICompositeType(tag: DW_TAG_array_type, baseType: !149, size: 12288, elements: !144)
!149 = !DIDerivedType(tag: DW_TAG_typedef, name: "slab_stats_automove", file: !150, line: 39, baseType: !151)
!150 = !DIFile(filename: "./slabs.h", directory: "/home/xuheng/blackbox/llvm-test/memcached", checksumkind: CSK_MD5, checksum: "28867aba1f41c79140864d76faedcb32")
!151 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !150, line: 34, size: 192, elements: !152)
!152 = !{!153, !154, !155, !156}
!153 = !DIDerivedType(tag: DW_TAG_member, name: "chunks_per_page", scope: !151, file: !150, line: 35, baseType: !5, size: 32)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_size", scope: !151, file: !150, line: 36, baseType: !5, size: 32, offset: 32)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "free_chunks", scope: !151, file: !150, line: 37, baseType: !141, size: 64, offset: 64)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "total_pages", scope: !151, file: !150, line: 38, baseType: !141, size: 64, offset: 128)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "sam_after", scope: !14, file: !1, line: 38, baseType: !148, size: 12288, offset: 37312)
!158 = !{i32 7, !"Dwarf Version", i32 5}
!159 = !{i32 2, !"Debug Info Version", i32 3}
!160 = !{i32 1, !"wchar_size", i32 4}
!161 = !{i32 7, !"uwtable", i32 1}
!162 = !{!"/home/xuheng/blackbox/llvm-test/memcached/slab_automove_extstore.gcno", !"/home/xuheng/blackbox/llvm-test/memcached/slab_automove_extstore.gcda", !0}
!163 = !{!"clang version 14.0.0"}
!164 = distinct !DISubprogram(name: "slab_automove_extstore_init", scope: !1, file: !1, line: 41, type: !165, scopeLine: 41, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !167)
!165 = !DISubroutineType(types: !166)
!166 = !{!11, !31}
!167 = !{!168, !169, !170, !171}
!168 = !DILocalVariable(name: "settings", arg: 1, scope: !164, file: !1, line: 41, type: !31)
!169 = !DILocalVariable(name: "window_size", scope: !164, file: !1, line: 42, type: !90)
!170 = !DILocalVariable(name: "max_age_ratio", scope: !164, file: !1, line: 43, type: !54)
!171 = !DILocalVariable(name: "a", scope: !164, file: !1, line: 44, type: !12)
!172 = !DILocation(line: 0, scope: !164)
!173 = !DILocation(line: 42, column: 38, scope: !164)
!174 = !{!175, !179, i64 160}
!175 = !{!"settings", !176, i64 0, !179, i64 8, !179, i64 12, !179, i64 16, !180, i64 24, !179, i64 32, !179, i64 36, !176, i64 40, !179, i64 48, !180, i64 56, !180, i64 64, !179, i64 72, !181, i64 80, !179, i64 88, !179, i64 92, !179, i64 96, !177, i64 100, !179, i64 104, !179, i64 108, !182, i64 112, !177, i64 116, !179, i64 120, !179, i64 124, !179, i64 128, !179, i64 132, !179, i64 136, !182, i64 140, !182, i64 141, !182, i64 142, !182, i64 143, !182, i64 144, !182, i64 145, !179, i64 148, !181, i64 152, !179, i64 160, !179, i64 164, !182, i64 168, !179, i64 172, !182, i64 176, !182, i64 177, !180, i64 184, !179, i64 192, !179, i64 196, !179, i64 200, !179, i64 204, !181, i64 208, !181, i64 216, !179, i64 224, !182, i64 228, !179, i64 232, !179, i64 236, !179, i64 240, !179, i64 244, !179, i64 248, !182, i64 252, !182, i64 253, !182, i64 254, !182, i64 255, !179, i64 256, !179, i64 260, !179, i64 264, !179, i64 268, !179, i64 272, !179, i64 276, !179, i64 280, !179, i64 284, !179, i64 288, !179, i64 292, !181, i64 296, !181, i64 304, !182, i64 312, !179, i64 316, !179, i64 320, !180, i64 328, !179, i64 336}
!176 = !{!"long", !177, i64 0}
!177 = !{!"omnipotent char", !178, i64 0}
!178 = !{!"Simple C/C++ TBAA"}
!179 = !{!"int", !177, i64 0}
!180 = !{!"any pointer", !177, i64 0}
!181 = !{!"double", !177, i64 0}
!182 = !{!"_Bool", !177, i64 0}
!183 = !DILocation(line: 43, column: 38, scope: !164)
!184 = !{!175, !181, i64 152}
!185 = !DILocation(line: 44, column: 24, scope: !164)
!186 = !DILocation(line: 45, column: 11, scope: !187)
!187 = distinct !DILexicalBlock(scope: !164, file: !1, line: 45, column: 9)
!188 = !DILocation(line: 45, column: 9, scope: !164)
!189 = !DILocation(line: 46, column: 9, scope: !187)
!190 = !DILocation(line: 47, column: 41, scope: !164)
!191 = !DILocation(line: 47, column: 29, scope: !164)
!192 = !DILocation(line: 47, column: 22, scope: !164)
!193 = !DILocation(line: 47, column: 20, scope: !164)
!194 = !{!195, !180, i64 0}
!195 = !{!"", !180, i64 0, !180, i64 8, !179, i64 16, !179, i64 20, !179, i64 24, !181, i64 32, !181, i64 40, !182, i64 48, !179, i64 52, !177, i64 56, !177, i64 1592, !177, i64 3128, !177, i64 4664}
!196 = !DILocation(line: 48, column: 8, scope: !164)
!197 = !DILocation(line: 48, column: 20, scope: !164)
!198 = !{!195, !179, i64 16}
!199 = !DILocation(line: 49, column: 8, scope: !164)
!200 = !DILocation(line: 49, column: 22, scope: !164)
!201 = !{!195, !181, i64 32}
!202 = !DILocation(line: 50, column: 31, scope: !164)
!203 = !{!175, !181, i64 304}
!204 = !DILocation(line: 50, column: 8, scope: !164)
!205 = !DILocation(line: 50, column: 19, scope: !164)
!206 = !{!195, !181, i64 40}
!207 = !DILocation(line: 51, column: 30, scope: !164)
!208 = !{!175, !179, i64 264}
!209 = !DILocation(line: 51, column: 8, scope: !164)
!210 = !DILocation(line: 51, column: 18, scope: !164)
!211 = !{!195, !179, i64 24}
!212 = !DILocation(line: 52, column: 8, scope: !164)
!213 = !DILocation(line: 52, column: 17, scope: !164)
!214 = !{!195, !180, i64 8}
!215 = !DILocation(line: 53, column: 8, scope: !164)
!216 = !DILocation(line: 53, column: 25, scope: !164)
!217 = !{!195, !182, i64 48}
!218 = !DILocation(line: 54, column: 24, scope: !219)
!219 = distinct !DILexicalBlock(scope: !164, file: !1, line: 54, column: 9)
!220 = !DILocation(line: 54, column: 9, scope: !164)
!221 = !DILocation(line: 57, column: 14, scope: !222)
!222 = distinct !DILexicalBlock(scope: !219, file: !1, line: 54, column: 33)
!223 = !DILocation(line: 57, column: 9, scope: !222)
!224 = !DILocation(line: 58, column: 9, scope: !222)
!225 = !DILocation(line: 62, column: 30, scope: !164)
!226 = !DILocation(line: 62, column: 33, scope: !164)
!227 = !DILocation(line: 62, column: 5, scope: !164)
!228 = !DILocation(line: 63, column: 33, scope: !164)
!229 = !DILocation(line: 63, column: 30, scope: !164)
!230 = !DILocation(line: 63, column: 5, scope: !164)
!231 = !DILocation(line: 65, column: 5, scope: !164)
!232 = !DILocation(line: 66, column: 1, scope: !164)
!233 = !DISubprogram(name: "calloc", scope: !234, file: !234, line: 542, type: !235, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !237)
!234 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "f0db66726d35051e5af2525f5b33bd81")
!235 = !DISubroutineType(types: !236)
!236 = !{!11, !35, !35}
!237 = !{}
!238 = !DISubprogram(name: "free", scope: !234, file: !234, line: 565, type: !239, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !237)
!239 = !DISubroutineType(types: !240)
!240 = !{null, !11}
!241 = !DISubprogram(name: "fill_item_stats_automove", scope: !134, file: !134, line: 72, type: !242, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !237)
!242 = !DISubroutineType(types: !243)
!243 = !{null, !244}
!244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !133, size: 64)
!245 = !DISubprogram(name: "fill_slab_stats_automove", scope: !150, file: !150, line: 40, type: !246, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !237)
!246 = !DISubroutineType(types: !247)
!247 = !{null, !248}
!248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !149, size: 64)
!249 = distinct !DISubprogram(name: "slab_automove_extstore_free", scope: !1, file: !1, line: 68, type: !239, scopeLine: 68, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !250)
!250 = !{!251, !252}
!251 = !DILocalVariable(name: "arg", arg: 1, scope: !249, file: !1, line: 68, type: !11)
!252 = !DILocalVariable(name: "a", scope: !249, file: !1, line: 69, type: !12)
!253 = !DILocation(line: 0, scope: !249)
!254 = !DILocation(line: 70, column: 13, scope: !249)
!255 = !DILocation(line: 70, column: 5, scope: !249)
!256 = !DILocation(line: 71, column: 5, scope: !249)
!257 = !DILocation(line: 72, column: 1, scope: !249)
!258 = distinct !DISubprogram(name: "slab_automove_extstore_run", scope: !1, file: !1, line: 133, type: !259, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !262)
!259 = !DISubroutineType(types: !260)
!260 = !{null, !11, !261, !261}
!261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !38, size: 64)
!262 = !{!263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !277, !278, !279, !280}
!263 = !DILocalVariable(name: "arg", arg: 1, scope: !258, file: !1, line: 133, type: !11)
!264 = !DILocalVariable(name: "src", arg: 2, scope: !258, file: !1, line: 133, type: !261)
!265 = !DILocalVariable(name: "dst", arg: 3, scope: !258, file: !1, line: 133, type: !261)
!266 = !DILocalVariable(name: "a", scope: !258, file: !1, line: 134, type: !12)
!267 = !DILocalVariable(name: "n", scope: !258, file: !1, line: 135, type: !38)
!268 = !DILocalVariable(name: "w_sum", scope: !258, file: !1, line: 136, type: !18)
!269 = !DILocalVariable(name: "oldest", scope: !258, file: !1, line: 137, type: !38)
!270 = !DILocalVariable(name: "oldest_age", scope: !258, file: !1, line: 138, type: !21)
!271 = !DILocalVariable(name: "too_free", scope: !258, file: !1, line: 139, type: !62)
!272 = !DILocalVariable(name: "global_low", scope: !258, file: !1, line: 143, type: !38)
!273 = !DILocalVariable(name: "small_slab", scope: !274, file: !1, line: 153, type: !62)
!274 = distinct !DILexicalBlock(scope: !275, file: !1, line: 152, column: 67)
!275 = distinct !DILexicalBlock(scope: !276, file: !1, line: 152, column: 5)
!276 = distinct !DILexicalBlock(scope: !258, file: !1, line: 152, column: 5)
!277 = !DILocalVariable(name: "wd", scope: !274, file: !1, line: 155, type: !17)
!278 = !DILocalVariable(name: "w_offset", scope: !274, file: !1, line: 156, type: !38)
!279 = !DILocalVariable(name: "free_target", scope: !274, file: !1, line: 158, type: !5)
!280 = !DILocalVariable(name: "age", scope: !274, file: !1, line: 184, type: !21)
!281 = !DILocation(line: 0, scope: !258)
!282 = !DILocation(line: 134, column: 24, scope: !258)
!283 = !DILocation(line: 136, column: 5, scope: !258)
!284 = !DILocation(line: 136, column: 24, scope: !258)
!285 = !DILocation(line: 140, column: 10, scope: !258)
!286 = !{!179, !179, i64 0}
!287 = !DILocation(line: 141, column: 10, scope: !258)
!288 = !DILocation(line: 143, column: 22, scope: !258)
!289 = !DILocation(line: 145, column: 33, scope: !258)
!290 = !DILocation(line: 145, column: 30, scope: !258)
!291 = !DILocation(line: 145, column: 5, scope: !258)
!292 = !DILocation(line: 146, column: 33, scope: !258)
!293 = !DILocation(line: 146, column: 30, scope: !258)
!294 = !DILocation(line: 146, column: 5, scope: !258)
!295 = !DILocation(line: 147, column: 8, scope: !258)
!296 = !DILocation(line: 147, column: 18, scope: !258)
!297 = !{!195, !179, i64 20}
!298 = !DILocation(line: 149, column: 5, scope: !258)
!299 = !DILocation(line: 152, column: 5, scope: !276)
!300 = !DILocation(line: 153, column: 44, scope: !274)
!301 = !{!302, !179, i64 4}
!302 = !{!"", !179, i64 0, !179, i64 4, !176, i64 8, !176, i64 16}
!303 = !DILocation(line: 153, column: 60, scope: !274)
!304 = !DILocation(line: 153, column: 55, scope: !274)
!305 = !DILocation(line: 0, scope: !274)
!306 = !DILocation(line: 155, column: 34, scope: !274)
!307 = !DILocation(line: 156, column: 31, scope: !274)
!308 = !DILocation(line: 156, column: 26, scope: !274)
!309 = !DILocation(line: 157, column: 16, scope: !274)
!310 = !DILocation(line: 157, column: 9, scope: !274)
!311 = !DILocation(line: 158, column: 52, scope: !274)
!312 = !{!302, !179, i64 0}
!313 = !DILocation(line: 158, column: 36, scope: !274)
!314 = !DILocation(line: 158, column: 68, scope: !274)
!315 = !DILocation(line: 162, column: 29, scope: !316)
!316 = distinct !DILexicalBlock(scope: !274, file: !1, line: 162, column: 13)
!317 = !{!318, !176, i64 0}
!318 = !{!"", !176, i64 0, !176, i64 8, !179, i64 16}
!319 = !DILocation(line: 162, column: 56, scope: !316)
!320 = !DILocation(line: 162, column: 64, scope: !316)
!321 = !DILocation(line: 162, column: 68, scope: !316)
!322 = !DILocation(line: 163, column: 13, scope: !316)
!323 = !DILocation(line: 163, column: 29, scope: !316)
!324 = !{!318, !176, i64 8}
!325 = !DILocation(line: 163, column: 60, scope: !316)
!326 = !DILocation(line: 163, column: 72, scope: !316)
!327 = !DILocation(line: 162, column: 13, scope: !274)
!328 = !DILocation(line: 164, column: 13, scope: !329)
!329 = distinct !DILexicalBlock(scope: !316, file: !1, line: 163, column: 77)
!330 = !DILocation(line: 165, column: 17, scope: !329)
!331 = !DILocation(line: 165, column: 23, scope: !329)
!332 = !{!176, !176, i64 0}
!333 = !DILocation(line: 166, column: 9, scope: !329)
!334 = !DILocation(line: 167, column: 29, scope: !335)
!335 = distinct !DILexicalBlock(scope: !274, file: !1, line: 167, column: 13)
!336 = !{!302, !176, i64 16}
!337 = !DILocation(line: 167, column: 60, scope: !335)
!338 = !DILocation(line: 167, column: 72, scope: !335)
!339 = !DILocation(line: 167, column: 13, scope: !274)
!340 = !DILocation(line: 168, column: 13, scope: !341)
!341 = distinct !DILexicalBlock(scope: !335, file: !1, line: 167, column: 77)
!342 = !DILocation(line: 168, column: 17, scope: !341)
!343 = !DILocation(line: 168, column: 23, scope: !341)
!344 = !{!345, !176, i64 8}
!345 = !{!"window_data", !176, i64 0, !176, i64 8, !176, i64 16, !179, i64 24, !179, i64 28}
!346 = !DILocation(line: 169, column: 9, scope: !341)
!347 = !DILocation(line: 172, column: 29, scope: !348)
!348 = distinct !DILexicalBlock(scope: !274, file: !1, line: 172, column: 13)
!349 = !{!302, !176, i64 8}
!350 = !DILocation(line: 172, column: 56, scope: !348)
!351 = !DILocation(line: 172, column: 43, scope: !348)
!352 = !DILocation(line: 172, column: 41, scope: !348)
!353 = !DILocation(line: 172, column: 13, scope: !274)
!354 = !DILocation(line: 173, column: 13, scope: !355)
!355 = distinct !DILexicalBlock(scope: !348, file: !1, line: 172, column: 62)
!356 = !DILocation(line: 173, column: 17, scope: !355)
!357 = !DILocation(line: 173, column: 29, scope: !355)
!358 = !{!345, !179, i64 24}
!359 = !DILocation(line: 174, column: 9, scope: !355)
!360 = !DILocation(line: 177, column: 35, scope: !274)
!361 = !{!318, !179, i64 16}
!362 = !DILocation(line: 177, column: 19, scope: !274)
!363 = !DILocation(line: 177, column: 13, scope: !274)
!364 = !DILocation(line: 177, column: 17, scope: !274)
!365 = !{!345, !176, i64 0}
!366 = !DILocation(line: 180, column: 9, scope: !274)
!367 = !DILocation(line: 181, column: 24, scope: !274)
!368 = !DILocation(line: 181, column: 21, scope: !274)
!369 = !DILocation(line: 181, column: 58, scope: !274)
!370 = !DILocation(line: 181, column: 9, scope: !274)
!371 = !DILocation(line: 184, column: 30, scope: !274)
!372 = !DILocation(line: 184, column: 39, scope: !274)
!373 = !DILocation(line: 184, column: 36, scope: !274)
!374 = !DILocation(line: 184, column: 34, scope: !274)
!375 = !DILocation(line: 189, column: 29, scope: !376)
!376 = distinct !DILexicalBlock(scope: !274, file: !1, line: 189, column: 13)
!377 = !DILocation(line: 189, column: 13, scope: !376)
!378 = !DILocation(line: 189, column: 59, scope: !376)
!379 = !DILocation(line: 189, column: 43, scope: !376)
!380 = !DILocation(line: 189, column: 75, scope: !376)
!381 = !DILocation(line: 189, column: 41, scope: !376)
!382 = !DILocation(line: 190, column: 17, scope: !376)
!383 = !DILocation(line: 190, column: 26, scope: !376)
!384 = !DILocation(line: 190, column: 32, scope: !376)
!385 = !DILocation(line: 189, column: 13, scope: !274)
!386 = !DILocation(line: 191, column: 17, scope: !387)
!387 = distinct !DILexicalBlock(scope: !376, file: !1, line: 190, column: 38)
!388 = !DILocation(line: 192, column: 24, scope: !389)
!389 = distinct !DILexicalBlock(scope: !390, file: !1, line: 191, column: 29)
!390 = distinct !DILexicalBlock(scope: !387, file: !1, line: 191, column: 17)
!391 = !DILocation(line: 192, column: 22, scope: !389)
!392 = !DILocation(line: 193, column: 22, scope: !389)
!393 = !DILocation(line: 204, column: 13, scope: !274)
!394 = !DILocation(line: 195, column: 45, scope: !395)
!395 = distinct !DILexicalBlock(scope: !390, file: !1, line: 195, column: 24)
!396 = !DILocation(line: 195, column: 63, scope: !395)
!397 = !DILocation(line: 195, column: 57, scope: !395)
!398 = !DILocation(line: 195, column: 24, scope: !390)
!399 = !DILocation(line: 198, column: 24, scope: !400)
!400 = distinct !DILexicalBlock(scope: !395, file: !1, line: 195, column: 76)
!401 = !DILocation(line: 198, column: 22, scope: !400)
!402 = !DILocation(line: 199, column: 22, scope: !400)
!403 = !DILocation(line: 201, column: 13, scope: !400)
!404 = !DILocation(line: 206, column: 21, scope: !405)
!405 = distinct !DILexicalBlock(scope: !406, file: !1, line: 206, column: 17)
!406 = distinct !DILexicalBlock(scope: !407, file: !1, line: 204, column: 26)
!407 = distinct !DILexicalBlock(scope: !274, file: !1, line: 204, column: 13)
!408 = !DILocation(line: 207, column: 21, scope: !405)
!409 = !DILocation(line: 207, column: 24, scope: !405)
!410 = !DILocation(line: 207, column: 40, scope: !405)
!411 = !DILocation(line: 207, column: 52, scope: !405)
!412 = !DILocation(line: 206, column: 17, scope: !406)
!413 = !DILocation(line: 208, column: 26, scope: !414)
!414 = distinct !DILexicalBlock(scope: !405, file: !1, line: 207, column: 76)
!415 = !DILocation(line: 210, column: 13, scope: !414)
!416 = !DILocation(line: 212, column: 9, scope: !406)
!417 = !DILocation(line: 152, column: 63, scope: !275)
!418 = !DILocation(line: 152, column: 32, scope: !275)
!419 = distinct !{!419, !299, !420, !421}
!420 = !DILocation(line: 213, column: 5, scope: !276)
!421 = !{!"llvm.loop.mustprogress"}
!422 = !DILocation(line: 215, column: 5, scope: !258)
!423 = !DILocation(line: 217, column: 5, scope: !258)
!424 = !DILocation(line: 220, column: 12, scope: !425)
!425 = distinct !DILexicalBlock(scope: !258, file: !1, line: 220, column: 9)
!426 = !DILocation(line: 220, column: 28, scope: !425)
!427 = !DILocation(line: 220, column: 23, scope: !425)
!428 = !DILocation(line: 220, column: 9, scope: !258)
!429 = !DILocation(line: 223, column: 10, scope: !430)
!430 = distinct !DILexicalBlock(scope: !258, file: !1, line: 223, column: 9)
!431 = !DILocation(line: 223, column: 19, scope: !430)
!432 = !DILocation(line: 223, column: 22, scope: !430)
!433 = !DILocation(line: 223, column: 33, scope: !430)
!434 = !DILocation(line: 223, column: 36, scope: !430)
!435 = !DILocation(line: 223, column: 43, scope: !430)
!436 = !DILocation(line: 223, column: 9, scope: !258)
!437 = !DILocation(line: 224, column: 16, scope: !438)
!438 = distinct !DILexicalBlock(scope: !430, file: !1, line: 223, column: 50)
!439 = !DILocation(line: 224, column: 14, scope: !438)
!440 = !DILocation(line: 225, column: 14, scope: !438)
!441 = !DILocation(line: 226, column: 5, scope: !438)
!442 = !DILocation(line: 228, column: 1, scope: !258)
!443 = distinct !DISubprogram(name: "global_pool_check", scope: !1, file: !1, line: 86, type: !444, scopeLine: 86, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !446)
!444 = !DISubroutineType(types: !445)
!445 = !{!38, !12}
!446 = !{!447, !448, !449, !450}
!447 = !DILocalVariable(name: "a", arg: 1, scope: !443, file: !1, line: 86, type: !12)
!448 = !DILocalVariable(name: "mem_limit_reached", scope: !443, file: !1, line: 87, type: !62)
!449 = !DILocalVariable(name: "free", scope: !443, file: !1, line: 88, type: !5)
!450 = !DILocalVariable(name: "count", scope: !443, file: !1, line: 89, type: !5)
!451 = !DILocation(line: 0, scope: !443)
!452 = !DILocation(line: 87, column: 5, scope: !443)
!453 = !DILocation(line: 88, column: 28, scope: !443)
!454 = !{!195, !179, i64 52}
!455 = !DILocation(line: 89, column: 26, scope: !443)
!456 = !DILocation(line: 90, column: 10, scope: !457)
!457 = distinct !DILexicalBlock(scope: !443, file: !1, line: 90, column: 9)
!458 = !{!182, !182, i64 0}
!459 = !{i8 0, i8 2}
!460 = !DILocation(line: 90, column: 9, scope: !443)
!461 = !DILocation(line: 91, column: 9, scope: !457)
!462 = !DILocation(line: 92, column: 15, scope: !463)
!463 = distinct !DILexicalBlock(scope: !443, file: !1, line: 92, column: 9)
!464 = !DILocation(line: 92, column: 9, scope: !443)
!465 = !DILocation(line: 93, column: 9, scope: !466)
!466 = distinct !DILexicalBlock(scope: !463, file: !1, line: 92, column: 23)
!467 = !DILocation(line: 93, column: 12, scope: !466)
!468 = !DILocation(line: 93, column: 29, scope: !466)
!469 = !DILocation(line: 94, column: 9, scope: !466)
!470 = !DILocation(line: 96, column: 9, scope: !471)
!471 = distinct !DILexicalBlock(scope: !463, file: !1, line: 95, column: 12)
!472 = !DILocation(line: 96, column: 12, scope: !471)
!473 = !DILocation(line: 96, column: 29, scope: !471)
!474 = !DILocation(line: 98, column: 5, scope: !443)
!475 = !DILocation(line: 99, column: 1, scope: !443)
!476 = distinct !DISubprogram(name: "memcheck", scope: !1, file: !1, line: 110, type: !477, scopeLine: 110, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !479)
!477 = !DISubroutineType(types: !478)
!478 = !{null, !12}
!479 = !{!480, !481, !482, !484}
!480 = !DILocalVariable(name: "a", arg: 1, scope: !476, file: !1, line: 110, type: !12)
!481 = !DILocalVariable(name: "total_pages", scope: !476, file: !1, line: 111, type: !5)
!482 = !DILocalVariable(name: "n", scope: !483, file: !1, line: 116, type: !38)
!483 = distinct !DILexicalBlock(scope: !476, file: !1, line: 116, column: 5)
!484 = !DILocalVariable(name: "sam", scope: !485, file: !1, line: 117, type: !248)
!485 = distinct !DILexicalBlock(scope: !486, file: !1, line: 116, column: 58)
!486 = distinct !DILexicalBlock(scope: !483, file: !1, line: 116, column: 5)
!487 = !DILocation(line: 0, scope: !476)
!488 = !DILocation(line: 0, scope: !483)
!489 = !DILocation(line: 116, column: 54, scope: !486)
!490 = !DILocation(line: 116, column: 5, scope: !483)
!491 = !DILocation(line: 116, column: 5, scope: !486)
!492 = !DILocation(line: 121, column: 36, scope: !476)
!493 = !DILocation(line: 121, column: 17, scope: !476)
!494 = !DILocation(line: 122, column: 32, scope: !476)
!495 = !DILocation(line: 122, column: 49, scope: !476)
!496 = !DILocation(line: 122, column: 44, scope: !476)
!497 = !DILocation(line: 122, column: 8, scope: !476)
!498 = !DILocation(line: 122, column: 30, scope: !476)
!499 = !DILocation(line: 123, column: 34, scope: !500)
!500 = distinct !DILexicalBlock(scope: !476, file: !1, line: 123, column: 9)
!501 = !DILocation(line: 123, column: 9, scope: !476)
!502 = !DILocation(line: 0, scope: !485)
!503 = !DILocation(line: 118, column: 29, scope: !485)
!504 = !DILocation(line: 118, column: 21, scope: !485)
!505 = !DILocation(line: 116, column: 23, scope: !486)
!506 = distinct !{!506, !490, !507, !421}
!507 = !DILocation(line: 119, column: 5, scope: !483)
!508 = !DILocation(line: 124, column: 9, scope: !500)
!509 = !DILocation(line: 124, column: 34, scope: !500)
!510 = !DILocation(line: 125, column: 39, scope: !476)
!511 = !DILocation(line: 125, column: 34, scope: !476)
!512 = !{!175, !179, i64 316}
!513 = !DILocation(line: 126, column: 1, scope: !476)
!514 = distinct !DISubprogram(name: "get_window_data", scope: !1, file: !1, line: 128, type: !515, scopeLine: 128, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !517)
!515 = !DISubroutineType(types: !516)
!516 = !{!17, !12, !38}
!517 = !{!518, !519, !520}
!518 = !DILocalVariable(name: "a", arg: 1, scope: !514, file: !1, line: 128, type: !12)
!519 = !DILocalVariable(name: "class", arg: 2, scope: !514, file: !1, line: 128, type: !38)
!520 = !DILocalVariable(name: "w_offset", scope: !514, file: !1, line: 129, type: !38)
!521 = !DILocation(line: 0, scope: !514)
!522 = !DILocation(line: 129, column: 31, scope: !514)
!523 = !DILocation(line: 129, column: 26, scope: !514)
!524 = !DILocation(line: 130, column: 16, scope: !514)
!525 = !DILocation(line: 130, column: 43, scope: !514)
!526 = !DILocation(line: 130, column: 54, scope: !514)
!527 = !DILocation(line: 130, column: 37, scope: !514)
!528 = !DILocation(line: 130, column: 13, scope: !514)
!529 = !DILocation(line: 130, column: 5, scope: !514)
!530 = !DISubprogram(name: "memset", scope: !531, file: !531, line: 61, type: !532, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !237)
!531 = !DIFile(filename: "/usr/include/string.h", directory: "", checksumkind: CSK_MD5, checksum: "61f60112cf5c0a45c54ea1f595add24c")
!532 = !DISubroutineType(types: !533)
!533 = !{!11, !11, !38, !35}
!534 = distinct !DISubprogram(name: "window_sum", scope: !1, file: !1, line: 74, type: !535, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !537)
!535 = !DISubroutineType(types: !536)
!536 = !{null, !17, !17, !90}
!537 = !{!538, !539, !540, !541, !543}
!538 = !DILocalVariable(name: "wd", arg: 1, scope: !534, file: !1, line: 74, type: !17)
!539 = !DILocalVariable(name: "w", arg: 2, scope: !534, file: !1, line: 74, type: !17)
!540 = !DILocalVariable(name: "size", arg: 3, scope: !534, file: !1, line: 75, type: !90)
!541 = !DILocalVariable(name: "x", scope: !542, file: !1, line: 76, type: !38)
!542 = distinct !DILexicalBlock(scope: !534, file: !1, line: 76, column: 5)
!543 = !DILocalVariable(name: "d", scope: !544, file: !1, line: 77, type: !17)
!544 = distinct !DILexicalBlock(scope: !545, file: !1, line: 76, column: 36)
!545 = distinct !DILexicalBlock(scope: !542, file: !1, line: 76, column: 5)
!546 = !DILocation(line: 0, scope: !534)
!547 = !DILocation(line: 0, scope: !542)
!548 = !DILocation(line: 76, column: 23, scope: !545)
!549 = !DILocation(line: 76, column: 5, scope: !542)
!550 = !DILocation(line: 80, column: 20, scope: !544)
!551 = !{!345, !176, i64 16}
!552 = !DILocation(line: 81, column: 24, scope: !544)
!553 = !DILocation(line: 82, column: 20, scope: !544)
!554 = !{!345, !179, i64 28}
!555 = !DILocation(line: 76, column: 5, scope: !545)
!556 = !DILocation(line: 84, column: 1, scope: !534)
!557 = !DILocation(line: 0, scope: !544)
!558 = !DILocation(line: 78, column: 22, scope: !544)
!559 = !DILocation(line: 78, column: 16, scope: !544)
!560 = !DILocation(line: 80, column: 26, scope: !544)
!561 = !DILocation(line: 81, column: 30, scope: !544)
!562 = !DILocation(line: 82, column: 26, scope: !544)
!563 = !DILocation(line: 76, column: 32, scope: !545)
!564 = distinct !{!564, !549, !565, !421}
!565 = !DILocation(line: 83, column: 5, scope: !542)
!566 = !DISubprogram(name: "memcpy", scope: !531, file: !531, line: 43, type: !567, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !237)
!567 = !DISubroutineType(types: !568)
!568 = !{!11, !569, !570, !35}
!569 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !11)
!570 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !571)
!571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !572, size: 64)
!572 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!573 = !DISubprogram(name: "global_page_pool_size", scope: !150, file: !150, line: 41, type: !574, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !237)
!574 = !DISubroutineType(types: !575)
!575 = !{!5, !576}
!576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !62, size: 64)
