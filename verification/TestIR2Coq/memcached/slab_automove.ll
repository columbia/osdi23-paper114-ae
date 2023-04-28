; ModuleID = 'slab_automove.c'
source_filename = "slab_automove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.settings = type { i64, i32, i32, i32, i8*, i32, i32, i64, i32, i8*, i8*, i32, double, i32, i32, i32, i8, i32, i32, i8, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i32, double, i32, i32, i8, i32, i8, i8, i8*, i32, i32, i32, i32, double, double, i32, i8, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, double, double, i8, i32, i32, i8*, i32 }
%struct.item_stats_automove = type { i64, i64, i32 }
%struct.slab_stats_automove = type { i32, i32, i64, i64 }
%struct.window_data = type { i64, i64, float, i64 }

@__llvm_gcov_ctr = internal global [3 x i64] zeroinitializer
@__llvm_gcov_ctr.1 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.2 = internal global [20 x i64] zeroinitializer
@__llvm_gcov_ctr.3 = internal global [2 x i64] zeroinitializer
@0 = private unnamed_addr constant [61 x i8] c"/home/xuheng/blackbox/llvm-test/memcached/slab_automove.gcda\00", align 1
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 0, void ()* @__llvm_gcov_init, i8* null }]

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @slab_automove_init(%struct.settings* nocapture noundef readonly %settings) local_unnamed_addr #0 !dbg !69 {
entry:
  call void @llvm.dbg.value(metadata %struct.settings* %settings, metadata !163, metadata !DIExpression()), !dbg !167
  %slab_automove_window = getelementptr inbounds %struct.settings, %struct.settings* %settings, i64 0, i32 34, !dbg !168
  %0 = load i32, i32* %slab_automove_window, align 8, !dbg !168, !tbaa !169
  call void @llvm.dbg.value(metadata i32 %0, metadata !164, metadata !DIExpression()), !dbg !167
  %slab_automove_ratio = getelementptr inbounds %struct.settings, %struct.settings* %settings, i64 0, i32 33, !dbg !178
  %1 = load double, double* %slab_automove_ratio, align 8, !dbg !178, !tbaa !179
  call void @llvm.dbg.value(metadata double %1, metadata !165, metadata !DIExpression()), !dbg !167
  %call = tail call noalias i8* @calloc(i64 noundef 1, i64 noundef 6168) #10, !dbg !180
  call void @llvm.dbg.value(metadata i8* %call, metadata !166, metadata !DIExpression()), !dbg !167
  %cmp = icmp eq i8* %call, null, !dbg !181
  br i1 %cmp, label %if.then, label %if.end, !dbg !183

if.then:                                          ; preds = %entry
  %gcov_ctr = load i64, i64* getelementptr inbounds ([3 x i64], [3 x i64]* @__llvm_gcov_ctr, i64 0, i64 0), align 16, !dbg !184
  %2 = add i64 %gcov_ctr, 1, !dbg !184
  store i64 %2, i64* getelementptr inbounds ([3 x i64], [3 x i64]* @__llvm_gcov_ctr, i64 0, i64 0), align 16, !dbg !184
  br label %cleanup, !dbg !184

if.end:                                           ; preds = %entry
  %mul = shl i32 %0, 6, !dbg !185
  %conv = zext i32 %mul to i64, !dbg !186
  %call1 = tail call noalias i8* @calloc(i64 noundef %conv, i64 noundef 32) #10, !dbg !187
  %3 = bitcast i8* %call to i8**, !dbg !188
  store i8* %call1, i8** %3, align 8, !dbg !188, !tbaa !189
  %window_size2 = getelementptr inbounds i8, i8* %call, i64 8, !dbg !191
  %4 = bitcast i8* %window_size2 to i32*, !dbg !191
  store i32 %0, i32* %4, align 8, !dbg !192, !tbaa !193
  %max_age_ratio3 = getelementptr inbounds i8, i8* %call, i64 16, !dbg !194
  %5 = bitcast i8* %max_age_ratio3 to double*, !dbg !194
  store double %1, double* %5, align 8, !dbg !195, !tbaa !196
  %cmp5 = icmp eq i8* %call1, null, !dbg !197
  br i1 %cmp5, label %if.then7, label %if.end8, !dbg !199

if.then7:                                         ; preds = %if.end
  %gcov_ctr12 = load i64, i64* getelementptr inbounds ([3 x i64], [3 x i64]* @__llvm_gcov_ctr, i64 0, i64 1), align 8, !dbg !200
  %6 = add i64 %gcov_ctr12, 1, !dbg !200
  store i64 %6, i64* getelementptr inbounds ([3 x i64], [3 x i64]* @__llvm_gcov_ctr, i64 0, i64 1), align 8, !dbg !200
  tail call void @free(i8* noundef nonnull %call) #10, !dbg !202
  br label %cleanup, !dbg !203

if.end8:                                          ; preds = %if.end
  %gcov_ctr13 = load i64, i64* getelementptr inbounds ([3 x i64], [3 x i64]* @__llvm_gcov_ctr, i64 0, i64 2), align 16, !dbg !204
  %7 = add i64 %gcov_ctr13, 1, !dbg !204
  store i64 %7, i64* getelementptr inbounds ([3 x i64], [3 x i64]* @__llvm_gcov_ctr, i64 0, i64 2), align 16, !dbg !204
  %iam_before = getelementptr inbounds i8, i8* %call, i64 24, !dbg !205
  %arraydecay = bitcast i8* %iam_before to %struct.item_stats_automove*, !dbg !204
  tail call void @fill_item_stats_automove(%struct.item_stats_automove* noundef nonnull %arraydecay) #10, !dbg !206
  %sam_before = getelementptr inbounds i8, i8* %call, i64 3096, !dbg !207
  %arraydecay9 = bitcast i8* %sam_before to %struct.slab_stats_automove*, !dbg !208
  tail call void @fill_slab_stats_automove(%struct.slab_stats_automove* noundef nonnull %arraydecay9) #10, !dbg !209
  br label %cleanup, !dbg !210

cleanup:                                          ; preds = %if.end8, %if.then7, %if.then
  %retval.0 = phi i8* [ null, %if.then ], [ null, %if.then7 ], [ %call, %if.end8 ], !dbg !167
  ret i8* %retval.0, !dbg !211
}

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: nounwind
declare !dbg !212 dso_local noalias i8* @calloc(i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare !dbg !217 dso_local void @free(i8* noundef) local_unnamed_addr #3

declare !dbg !220 dso_local void @fill_item_stats_automove(%struct.item_stats_automove* noundef) local_unnamed_addr #4

declare !dbg !224 dso_local void @fill_slab_stats_automove(%struct.slab_stats_automove* noundef) local_unnamed_addr #4

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @slab_automove_free(i8* noundef %arg) local_unnamed_addr #0 !dbg !228 {
entry:
  %gcov_ctr = load i64, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.1, i64 0, i64 0), align 8
  %0 = add i64 %gcov_ctr, 1
  store i64 %0, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.1, i64 0, i64 0), align 8
  call void @llvm.dbg.value(metadata i8* %arg, metadata !230, metadata !DIExpression()), !dbg !232
  call void @llvm.dbg.value(metadata i8* %arg, metadata !231, metadata !DIExpression()), !dbg !232
  %1 = bitcast i8* %arg to i8**, !dbg !233
  %2 = load i8*, i8** %1, align 8, !dbg !233, !tbaa !189
  tail call void @free(i8* noundef %2) #10, !dbg !234
  tail call void @free(i8* noundef %arg) #10, !dbg !235
  ret void, !dbg !236
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @slab_automove_run(i8* noundef %arg, i32* nocapture noundef writeonly %src, i32* nocapture noundef writeonly %dst) local_unnamed_addr #0 !dbg !237 {
entry:
  %gcov_ctr = load i64, i64* getelementptr inbounds ([20 x i64], [20 x i64]* @__llvm_gcov_ctr.2, i64 0, i64 0), align 16
  %0 = add i64 %gcov_ctr, 1
  store i64 %0, i64* getelementptr inbounds ([20 x i64], [20 x i64]* @__llvm_gcov_ctr.2, i64 0, i64 0), align 16
  %w_sum = alloca %struct.window_data, align 8
  call void @llvm.dbg.value(metadata i8* %arg, metadata !242, metadata !DIExpression()), !dbg !261
  call void @llvm.dbg.value(metadata i32* %src, metadata !243, metadata !DIExpression()), !dbg !261
  call void @llvm.dbg.value(metadata i32* %dst, metadata !244, metadata !DIExpression()), !dbg !261
  call void @llvm.dbg.value(metadata i8* %arg, metadata !245, metadata !DIExpression()), !dbg !261
  %1 = bitcast %struct.window_data* %w_sum to i8*, !dbg !262
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %1) #11, !dbg !262
  call void @llvm.dbg.declare(metadata %struct.window_data* %w_sum, metadata !247, metadata !DIExpression()), !dbg !263
  call void @llvm.dbg.value(metadata i32 -1, metadata !248, metadata !DIExpression()), !dbg !261
  call void @llvm.dbg.value(metadata i64 0, metadata !249, metadata !DIExpression()), !dbg !261
  call void @llvm.dbg.value(metadata i32 -1, metadata !250, metadata !DIExpression()), !dbg !261
  call void @llvm.dbg.value(metadata i64 -1, metadata !251, metadata !DIExpression()), !dbg !261
  call void @llvm.dbg.value(metadata i8 0, metadata !252, metadata !DIExpression()), !dbg !261
  store i32 -1, i32* %src, align 4, !dbg !264, !tbaa !265
  store i32 -1, i32* %dst, align 4, !dbg !266, !tbaa !265
  %iam_after = getelementptr inbounds i8, i8* %arg, i64 1560, !dbg !267
  %2 = bitcast i8* %iam_after to [64 x %struct.item_stats_automove]*, !dbg !267
  %arraydecay = bitcast i8* %iam_after to %struct.item_stats_automove*, !dbg !268
  tail call void @fill_item_stats_automove(%struct.item_stats_automove* noundef nonnull %arraydecay) #10, !dbg !269
  %sam_after = getelementptr inbounds i8, i8* %arg, i64 4632, !dbg !270
  %arraydecay1 = bitcast i8* %sam_after to %struct.slab_stats_automove*, !dbg !271
  tail call void @fill_slab_stats_automove(%struct.slab_stats_automove* noundef nonnull %arraydecay1) #10, !dbg !272
  call void @llvm.dbg.value(metadata i64 0, metadata !253, metadata !DIExpression()), !dbg !261
  call void @llvm.dbg.value(metadata i32 1, metadata !246, metadata !DIExpression()), !dbg !261
  %iam_before = getelementptr inbounds i8, i8* %arg, i64 24
  %3 = bitcast i8* %iam_before to [64 x %struct.item_stats_automove]*
  call void @llvm.dbg.value(metadata i32 1, metadata !246, metadata !DIExpression()), !dbg !261
  call void @llvm.dbg.value(metadata i64 0, metadata !253, metadata !DIExpression()), !dbg !261
  %gcov_ctr161.pre = load i64, i64* getelementptr inbounds ([20 x i64], [20 x i64]* @__llvm_gcov_ctr.2, i64 0, i64 1), align 8, !dbg !273
  br label %for.body, !dbg !276

for.body:                                         ; preds = %for.body.1, %entry
  %gcov_ctr161 = phi i64 [ %gcov_ctr161.pre, %entry ], [ %9, %for.body.1 ], !dbg !273
  %indvars.iv = phi i64 [ 1, %entry ], [ %indvars.iv.next.1, %for.body.1 ]
  %evicted_total.0282 = phi i64 [ 0, %entry ], [ %add.1, %for.body.1 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !246, metadata !DIExpression()), !dbg !261
  call void @llvm.dbg.value(metadata i64 %evicted_total.0282, metadata !253, metadata !DIExpression()), !dbg !261
  %evicted = getelementptr inbounds [64 x %struct.item_stats_automove], [64 x %struct.item_stats_automove]* %2, i64 0, i64 %indvars.iv, i32 0, !dbg !277
  %4 = load i64, i64* %evicted, align 8, !dbg !277, !tbaa !279
  %evicted5 = getelementptr inbounds [64 x %struct.item_stats_automove], [64 x %struct.item_stats_automove]* %3, i64 0, i64 %indvars.iv, i32 0, !dbg !281
  %5 = load i64, i64* %evicted5, align 8, !dbg !281, !tbaa !279
  %sub = add i64 %4, %evicted_total.0282, !dbg !282
  %add = sub i64 %sub, %5, !dbg !283
  call void @llvm.dbg.value(metadata i64 %add, metadata !253, metadata !DIExpression()), !dbg !261
  %6 = add i64 %gcov_ctr161, 1, !dbg !273
  store i64 %6, i64* getelementptr inbounds ([20 x i64], [20 x i64]* @__llvm_gcov_ctr.2, i64 0, i64 1), align 8, !dbg !273
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !273
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !246, metadata !DIExpression()), !dbg !261
  %exitcond.not = icmp eq i64 %indvars.iv.next, 64, !dbg !284
  br i1 %exitcond.not, label %for.end, label %for.body.1, !dbg !276, !llvm.loop !285

for.body.1:                                       ; preds = %for.body
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !246, metadata !DIExpression()), !dbg !261
  call void @llvm.dbg.value(metadata i64 %add, metadata !253, metadata !DIExpression()), !dbg !261
  %evicted.1 = getelementptr inbounds [64 x %struct.item_stats_automove], [64 x %struct.item_stats_automove]* %2, i64 0, i64 %indvars.iv.next, i32 0, !dbg !277
  %7 = load i64, i64* %evicted.1, align 8, !dbg !277, !tbaa !279
  %evicted5.1 = getelementptr inbounds [64 x %struct.item_stats_automove], [64 x %struct.item_stats_automove]* %3, i64 0, i64 %indvars.iv.next, i32 0, !dbg !281
  %8 = load i64, i64* %evicted5.1, align 8, !dbg !281, !tbaa !279
  %sub.1 = add i64 %7, %add, !dbg !282
  %add.1 = sub i64 %sub.1, %8, !dbg !283
  call void @llvm.dbg.value(metadata i64 %add.1, metadata !253, metadata !DIExpression()), !dbg !261
  %9 = add i64 %gcov_ctr161, 2, !dbg !273
  store i64 %9, i64* getelementptr inbounds ([20 x i64], [20 x i64]* @__llvm_gcov_ctr.2, i64 0, i64 1), align 8, !dbg !273
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2, !dbg !273
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next.1, metadata !246, metadata !DIExpression()), !dbg !261
  br label %for.body

for.end:                                          ; preds = %for.body
  %10 = bitcast i8* %sam_after to [64 x %struct.slab_stats_automove]*, !dbg !270
  %window_cur = getelementptr inbounds i8, i8* %arg, i64 12, !dbg !288
  %11 = bitcast i8* %window_cur to i32*, !dbg !288
  %12 = load i32, i32* %11, align 4, !dbg !289, !tbaa !290
  %inc6 = add i32 %12, 1, !dbg !289
  store i32 %inc6, i32* %11, align 4, !dbg !289, !tbaa !290
  call void @llvm.dbg.value(metadata i32 1, metadata !246, metadata !DIExpression()), !dbg !261
  %window_size = getelementptr inbounds i8, i8* %arg, i64 8
  %13 = bitcast i8* %window_size to i32*
  %window_data = bitcast i8* %arg to %struct.window_data**
  call void @llvm.dbg.value(metadata i32 1, metadata !246, metadata !DIExpression()), !dbg !261
  call void @llvm.dbg.value(metadata i32 -1, metadata !248, metadata !DIExpression()), !dbg !261
  call void @llvm.dbg.value(metadata i64 0, metadata !249, metadata !DIExpression()), !dbg !261
  call void @llvm.dbg.value(metadata i32 -1, metadata !250, metadata !DIExpression()), !dbg !261
  call void @llvm.dbg.value(metadata i8 0, metadata !252, metadata !DIExpression()), !dbg !261
  call void @llvm.dbg.value(metadata i64 -1, metadata !251, metadata !DIExpression()), !dbg !261
  %conv25 = uitofp i64 %add to float
  %sam_before = getelementptr inbounds i8, i8* %arg, i64 3096
  %14 = bitcast i8* %sam_before to [64 x %struct.slab_stats_automove]*
  %age62 = getelementptr inbounds %struct.window_data, %struct.window_data* %w_sum, i64 0, i32 0
  %dirty78 = getelementptr inbounds %struct.window_data, %struct.window_data* %w_sum, i64 0, i32 1
  %evicted_seen97 = getelementptr inbounds %struct.window_data, %struct.window_data* %w_sum, i64 0, i32 3
  %evicted_ratio103 = getelementptr inbounds %struct.window_data, %struct.window_data* %w_sum, i64 0, i32 2
  br label %for.body9, !dbg !291

for.body9:                                        ; preds = %for.inc117.for.body9_crit_edge, %for.end
  %15 = phi i32 [ %inc6, %for.end ], [ %.pre, %for.inc117.for.body9_crit_edge ], !dbg !292
  %indvars.iv299 = phi i64 [ 1, %for.end ], [ %indvars.iv.next300, %for.inc117.for.body9_crit_edge ]
  %oldest.0291 = phi i32 [ -1, %for.end ], [ %oldest.1, %for.inc117.for.body9_crit_edge ]
  %oldest_age.0289 = phi i64 [ 0, %for.end ], [ %oldest_age.1, %for.inc117.for.body9_crit_edge ]
  %youngest.0288 = phi i32 [ -1, %for.end ], [ %youngest.1, %for.inc117.for.body9_crit_edge ]
  %youngest_evicting.0286 = phi i8 [ 0, %for.end ], [ %youngest_evicting.1, %for.inc117.for.body9_crit_edge ]
  %youngest_age.0284 = phi i64 [ -1, %for.end ], [ %youngest_age.1, %for.inc117.for.body9_crit_edge ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv299, metadata !246, metadata !DIExpression()), !dbg !261
  call void @llvm.dbg.value(metadata i32 %oldest.0291, metadata !248, metadata !DIExpression()), !dbg !261
  call void @llvm.dbg.value(metadata i64 %oldest_age.0289, metadata !249, metadata !DIExpression()), !dbg !261
  call void @llvm.dbg.value(metadata i32 %youngest.0288, metadata !250, metadata !DIExpression()), !dbg !261
  call void @llvm.dbg.value(metadata i8 %youngest_evicting.0286, metadata !252, metadata !DIExpression()), !dbg !261
  call void @llvm.dbg.value(metadata i64 %youngest_age.0284, metadata !251, metadata !DIExpression()), !dbg !261
  %16 = load i32, i32* %13, align 8, !dbg !293, !tbaa !193
  %17 = trunc i64 %indvars.iv299 to i32, !dbg !294
  %mul = mul i32 %16, %17, !dbg !294
  call void @llvm.dbg.value(metadata i32 %mul, metadata !254, metadata !DIExpression()), !dbg !295
  %18 = load %struct.window_data*, %struct.window_data** %window_data, align 8, !dbg !296, !tbaa !189
  %rem = urem i32 %15, %16, !dbg !297
  %add12 = add i32 %rem, %mul, !dbg !298
  %idxprom13 = zext i32 %add12 to i64, !dbg !299
  %arrayidx14 = getelementptr inbounds %struct.window_data, %struct.window_data* %18, i64 %idxprom13, !dbg !299
  call void @llvm.dbg.value(metadata %struct.window_data* %arrayidx14, metadata !258, metadata !DIExpression()), !dbg !295
  %19 = bitcast %struct.window_data* %arrayidx14 to i8*, !dbg !300
  %call = call i8* @memset(i8* noundef %19, i32 noundef 0, i64 noundef 32) #10, !dbg !301
  %evicted18 = getelementptr inbounds [64 x %struct.item_stats_automove], [64 x %struct.item_stats_automove]* %2, i64 0, i64 %indvars.iv299, i32 0, !dbg !302
  %20 = load i64, i64* %evicted18, align 8, !dbg !302, !tbaa !279
  %evicted22 = getelementptr inbounds [64 x %struct.item_stats_automove], [64 x %struct.item_stats_automove]* %3, i64 0, i64 %indvars.iv299, i32 0, !dbg !303
  %21 = load i64, i64* %evicted22, align 8, !dbg !303, !tbaa !279
  %sub23 = sub nsw i64 %20, %21, !dbg !304
  call void @llvm.dbg.value(metadata i64 %sub23, metadata !259, metadata !DIExpression()), !dbg !295
  %cmp24.not = icmp eq i64 %sub23, 0, !dbg !305
  br i1 %cmp24.not, label %if.end, label %if.then, !dbg !307

if.then:                                          ; preds = %for.body9
  %gcov_ctr162 = load i64, i64* getelementptr inbounds ([20 x i64], [20 x i64]* @__llvm_gcov_ctr.2, i64 0, i64 2), align 16, !dbg !308
  %22 = add i64 %gcov_ctr162, 1, !dbg !308
  store i64 %22, i64* getelementptr inbounds ([20 x i64], [20 x i64]* @__llvm_gcov_ctr.2, i64 0, i64 2), align 16, !dbg !308
  %conv = uitofp i64 %sub23 to float, !dbg !310
  %div = fdiv float %conv, %conv25, !dbg !311
  %evicted_ratio = getelementptr inbounds %struct.window_data, %struct.window_data* %18, i64 %idxprom13, i32 2, !dbg !312
  store float %div, float* %evicted_ratio, align 8, !dbg !313, !tbaa !314
  %evicted_seen = getelementptr inbounds %struct.window_data, %struct.window_data* %18, i64 %idxprom13, i32 3, !dbg !317
  store i64 1, i64* %evicted_seen, align 8, !dbg !318, !tbaa !319
  %dirty = getelementptr inbounds %struct.window_data, %struct.window_data* %18, i64 %idxprom13, i32 1, !dbg !320
  store i64 1, i64* %dirty, align 8, !dbg !321, !tbaa !322
  br label %if.end, !dbg !323

if.end:                                           ; preds = %if.then, %for.body9
  %outofmemory = getelementptr inbounds [64 x %struct.item_stats_automove], [64 x %struct.item_stats_automove]* %2, i64 0, i64 %indvars.iv299, i32 1, !dbg !324
  %23 = load i64, i64* %outofmemory, align 8, !dbg !324, !tbaa !326
  %outofmemory32 = getelementptr inbounds [64 x %struct.item_stats_automove], [64 x %struct.item_stats_automove]* %3, i64 0, i64 %indvars.iv299, i32 1, !dbg !327
  %24 = load i64, i64* %outofmemory32, align 8, !dbg !327, !tbaa !326
  %cmp34 = icmp sgt i64 %23, %24, !dbg !328
  br i1 %cmp34, label %if.then36, label %if.end38, !dbg !329

if.then36:                                        ; preds = %if.end
  %gcov_ctr163 = load i64, i64* getelementptr inbounds ([20 x i64], [20 x i64]* @__llvm_gcov_ctr.2, i64 0, i64 3), align 8, !dbg !330
  %25 = add i64 %gcov_ctr163, 1, !dbg !330
  store i64 %25, i64* getelementptr inbounds ([20 x i64], [20 x i64]* @__llvm_gcov_ctr.2, i64 0, i64 3), align 8, !dbg !330
  %dirty37 = getelementptr inbounds %struct.window_data, %struct.window_data* %18, i64 %idxprom13, i32 1, !dbg !332
  store i64 1, i64* %dirty37, align 8, !dbg !333, !tbaa !322
  br label %if.end38, !dbg !334

if.end38:                                         ; preds = %if.then36, %if.end
  %total_pages = getelementptr inbounds [64 x %struct.slab_stats_automove], [64 x %struct.slab_stats_automove]* %10, i64 0, i64 %indvars.iv299, i32 3, !dbg !335
  %26 = load i64, i64* %total_pages, align 8, !dbg !335, !tbaa !337
  %total_pages44 = getelementptr inbounds [64 x %struct.slab_stats_automove], [64 x %struct.slab_stats_automove]* %14, i64 0, i64 %indvars.iv299, i32 3, !dbg !339
  %27 = load i64, i64* %total_pages44, align 8, !dbg !339, !tbaa !337
  %cmp46 = icmp sgt i64 %26, %27, !dbg !340
  br i1 %cmp46, label %if.then48, label %if.end50, !dbg !341

if.then48:                                        ; preds = %if.end38
  %gcov_ctr164 = load i64, i64* getelementptr inbounds ([20 x i64], [20 x i64]* @__llvm_gcov_ctr.2, i64 0, i64 4), align 16, !dbg !342
  %28 = add i64 %gcov_ctr164, 1, !dbg !342
  store i64 %28, i64* getelementptr inbounds ([20 x i64], [20 x i64]* @__llvm_gcov_ctr.2, i64 0, i64 4), align 16, !dbg !342
  %dirty49 = getelementptr inbounds %struct.window_data, %struct.window_data* %18, i64 %idxprom13, i32 1, !dbg !344
  store i64 1, i64* %dirty49, align 8, !dbg !345, !tbaa !322
  br label %if.end50, !dbg !346

if.end50:                                         ; preds = %if.then48, %if.end38
  %age = getelementptr inbounds [64 x %struct.item_stats_automove], [64 x %struct.item_stats_automove]* %2, i64 0, i64 %indvars.iv299, i32 2, !dbg !347
  %29 = load i32, i32* %age, align 8, !dbg !347, !tbaa !348
  %conv54 = zext i32 %29 to i64, !dbg !349
  %age55 = getelementptr inbounds %struct.window_data, %struct.window_data* %arrayidx14, i64 0, i32 0, !dbg !350
  store i64 %conv54, i64* %age55, align 8, !dbg !351, !tbaa !352
  %call56 = call i8* @memset(i8* noundef nonnull %1, i32 noundef 0, i64 noundef 32) #10, !dbg !353
  %30 = load %struct.window_data*, %struct.window_data** %window_data, align 8, !dbg !354, !tbaa !189
  %idxprom58 = sext i32 %mul to i64, !dbg !355
  %arrayidx59 = getelementptr inbounds %struct.window_data, %struct.window_data* %30, i64 %idxprom58, !dbg !355
  %31 = load i32, i32* %13, align 8, !dbg !356, !tbaa !193
  call fastcc void @window_sum(%struct.window_data* noundef %arrayidx59, %struct.window_data* noundef nonnull %w_sum, i32 noundef %31) #12, !dbg !357
  %32 = load i64, i64* %age62, align 8, !dbg !358, !tbaa !352
  %33 = load i32, i32* %13, align 8, !dbg !359, !tbaa !193
  %conv64 = zext i32 %33 to i64, !dbg !360
  %div65 = udiv i64 %32, %conv64, !dbg !361
  call void @llvm.dbg.value(metadata i64 %div65, metadata !260, metadata !DIExpression()), !dbg !295
  %free_chunks = getelementptr inbounds [64 x %struct.slab_stats_automove], [64 x %struct.slab_stats_automove]* %10, i64 0, i64 %indvars.iv299, i32 2, !dbg !362
  %34 = load i64, i64* %free_chunks, align 8, !dbg !362, !tbaa !364
  %conv69 = sitofp i64 %34 to double, !dbg !365
  %chunks_per_page = getelementptr inbounds [64 x %struct.slab_stats_automove], [64 x %struct.slab_stats_automove]* %10, i64 0, i64 %indvars.iv299, i32 0, !dbg !366
  %35 = load i32, i32* %chunks_per_page, align 8, !dbg !366, !tbaa !367
  %conv73 = uitofp i32 %35 to double, !dbg !368
  %mul74 = fmul double %conv73, 2.500000e+00, !dbg !369
  %cmp75 = fcmp olt double %mul74, %conv69, !dbg !370
  br i1 %cmp75, label %if.then77, label %if.end83, !dbg !371

if.then77:                                        ; preds = %if.end50
  %36 = load i64, i64* %dirty78, align 8, !dbg !372, !tbaa !322
  %cmp79 = icmp eq i64 %36, 0, !dbg !375
  br i1 %cmp79, label %cleanup, label %if.end82, !dbg !376

if.end82:                                         ; preds = %if.then77
  %gcov_ctr166 = load i64, i64* getelementptr inbounds ([20 x i64], [20 x i64]* @__llvm_gcov_ctr.2, i64 0, i64 6), align 16, !dbg !377
  %37 = add i64 %gcov_ctr166, 1, !dbg !377
  store i64 %37, i64* getelementptr inbounds ([20 x i64], [20 x i64]* @__llvm_gcov_ctr.2, i64 0, i64 6), align 16, !dbg !377
  br label %if.end83, !dbg !377

if.end83:                                         ; preds = %if.end82, %if.end50
  %cmp84 = icmp ugt i64 %div65, %oldest_age.0289, !dbg !378
  br i1 %cmp84, label %land.lhs.true, label %if.end93, !dbg !380

land.lhs.true:                                    ; preds = %if.end83
  %gcov_ctr167 = load i64, i64* getelementptr inbounds ([20 x i64], [20 x i64]* @__llvm_gcov_ctr.2, i64 0, i64 7), align 8, !dbg !381
  %38 = add i64 %gcov_ctr167, 1, !dbg !381
  store i64 %38, i64* getelementptr inbounds ([20 x i64], [20 x i64]* @__llvm_gcov_ctr.2, i64 0, i64 7), align 8, !dbg !381
  %39 = load i64, i64* %total_pages, align 8, !dbg !382, !tbaa !337
  %cmp90 = icmp sgt i64 %39, 2, !dbg !383
  br i1 %cmp90, label %if.then92, label %if.end93, !dbg !384

if.then92:                                        ; preds = %land.lhs.true
  %gcov_ctr168 = load i64, i64* getelementptr inbounds ([20 x i64], [20 x i64]* @__llvm_gcov_ctr.2, i64 0, i64 8), align 16, !dbg !385
  %40 = add i64 %gcov_ctr168, 1, !dbg !385
  store i64 %40, i64* getelementptr inbounds ([20 x i64], [20 x i64]* @__llvm_gcov_ctr.2, i64 0, i64 8), align 16, !dbg !385
  call void @llvm.dbg.value(metadata i64 %indvars.iv299, metadata !248, metadata !DIExpression()), !dbg !261
  call void @llvm.dbg.value(metadata i64 %div65, metadata !249, metadata !DIExpression()), !dbg !261
  br label %if.end93, !dbg !387

if.end93:                                         ; preds = %if.then92, %land.lhs.true, %if.end83
  %oldest_age.1 = phi i64 [ %div65, %if.then92 ], [ %oldest_age.0289, %land.lhs.true ], [ %oldest_age.0289, %if.end83 ], !dbg !261
  %oldest.1 = phi i32 [ %17, %if.then92 ], [ %oldest.0291, %land.lhs.true ], [ %oldest.0291, %if.end83 ], !dbg !261
  call void @llvm.dbg.value(metadata i32 %oldest.1, metadata !248, metadata !DIExpression()), !dbg !261
  call void @llvm.dbg.value(metadata i64 %oldest_age.1, metadata !249, metadata !DIExpression()), !dbg !261
  %cmp94 = icmp ult i64 %div65, %youngest_age.0284, !dbg !388
  br i1 %cmp94, label %land.lhs.true96, label %for.inc117, !dbg !390

land.lhs.true96:                                  ; preds = %if.end93
  %gcov_ctr169 = load i64, i64* getelementptr inbounds ([20 x i64], [20 x i64]* @__llvm_gcov_ctr.2, i64 0, i64 9), align 8, !dbg !391
  %41 = add i64 %gcov_ctr169, 1, !dbg !391
  store i64 %41, i64* getelementptr inbounds ([20 x i64], [20 x i64]* @__llvm_gcov_ctr.2, i64 0, i64 9), align 8, !dbg !391
  %42 = load i64, i64* %evicted_seen97, align 8, !dbg !391, !tbaa !319
  %43 = load i32, i32* %13, align 8, !dbg !392, !tbaa !193
  %div99 = lshr i32 %43, 1, !dbg !393
  %conv100 = zext i32 %div99 to i64, !dbg !394
  %cmp101 = icmp ugt i64 %42, %conv100, !dbg !395
  br i1 %cmp101, label %if.then110, label %lor.lhs.false, !dbg !396

lor.lhs.false:                                    ; preds = %land.lhs.true96
  %gcov_ctr170 = load i64, i64* getelementptr inbounds ([20 x i64], [20 x i64]* @__llvm_gcov_ctr.2, i64 0, i64 10), align 16, !dbg !397
  %44 = add i64 %gcov_ctr170, 1, !dbg !397
  store i64 %44, i64* getelementptr inbounds ([20 x i64], [20 x i64]* @__llvm_gcov_ctr.2, i64 0, i64 10), align 16, !dbg !397
  %45 = load float, float* %evicted_ratio103, align 8, !dbg !397, !tbaa !314
  %46 = load i32, i32* %13, align 8, !dbg !398, !tbaa !193
  %conv105 = uitofp i32 %46 to float, !dbg !399
  %div106 = fdiv float %45, %conv105, !dbg !400
  %cmp108 = fcmp ogt float %div106, 2.500000e-01, !dbg !401
  br i1 %cmp108, label %if.then110, label %for.inc117, !dbg !402

if.then110:                                       ; preds = %lor.lhs.false, %land.lhs.true96
  %gcov_ctr171 = load i64, i64* getelementptr inbounds ([20 x i64], [20 x i64]* @__llvm_gcov_ctr.2, i64 0, i64 11), align 8, !dbg !403
  %47 = add i64 %gcov_ctr171, 1, !dbg !403
  store i64 %47, i64* getelementptr inbounds ([20 x i64], [20 x i64]* @__llvm_gcov_ctr.2, i64 0, i64 11), align 8, !dbg !403
  call void @llvm.dbg.value(metadata i64 %indvars.iv299, metadata !250, metadata !DIExpression()), !dbg !261
  call void @llvm.dbg.value(metadata i64 %div65, metadata !251, metadata !DIExpression()), !dbg !261
  %evicted_seen111 = getelementptr inbounds %struct.window_data, %struct.window_data* %18, i64 %idxprom13, i32 3, !dbg !405
  %48 = load i64, i64* %evicted_seen111, align 8, !dbg !405, !tbaa !319
  %tobool = icmp ne i64 %48, 0, !dbg !406
  %frombool = zext i1 %tobool to i8, !dbg !407
  call void @llvm.dbg.value(metadata i8 %frombool, metadata !252, metadata !DIExpression()), !dbg !261
  br label %for.inc117, !dbg !408

cleanup:                                          ; preds = %if.then77
  %49 = trunc i64 %indvars.iv299 to i32, !dbg !294
  %gcov_ctr165 = load i64, i64* getelementptr inbounds ([20 x i64], [20 x i64]* @__llvm_gcov_ctr.2, i64 0, i64 5), align 8, !dbg !409
  %50 = add i64 %gcov_ctr165, 1, !dbg !409
  store i64 %50, i64* getelementptr inbounds ([20 x i64], [20 x i64]* @__llvm_gcov_ctr.2, i64 0, i64 5), align 8, !dbg !409
  store i32 %49, i32* %src, align 4, !dbg !411, !tbaa !265
  store i32 0, i32* %dst, align 4, !dbg !412, !tbaa !265
  call void @llvm.dbg.value(metadata i32 -1, metadata !248, metadata !DIExpression()), !dbg !261
  call void @llvm.dbg.value(metadata i64 %oldest_age.0289, metadata !249, metadata !DIExpression()), !dbg !261
  call void @llvm.dbg.value(metadata i32 -1, metadata !250, metadata !DIExpression()), !dbg !261
  call void @llvm.dbg.value(metadata i8 %youngest_evicting.0286, metadata !252, metadata !DIExpression()), !dbg !261
  call void @llvm.dbg.value(metadata i64 %youngest_age.0284, metadata !251, metadata !DIExpression()), !dbg !261
  br label %for.end119

for.inc117:                                       ; preds = %if.end93, %lor.lhs.false, %if.then110
  %youngest_age.1 = phi i64 [ %div65, %if.then110 ], [ %youngest_age.0284, %lor.lhs.false ], [ %youngest_age.0284, %if.end93 ], !dbg !261
  %youngest_evicting.1 = phi i8 [ %frombool, %if.then110 ], [ %youngest_evicting.0286, %lor.lhs.false ], [ %youngest_evicting.0286, %if.end93 ], !dbg !261
  %youngest.1 = phi i32 [ %17, %if.then110 ], [ %youngest.0288, %lor.lhs.false ], [ %youngest.0288, %if.end93 ], !dbg !261
  call void @llvm.dbg.value(metadata i32 %youngest.1, metadata !250, metadata !DIExpression()), !dbg !261
  call void @llvm.dbg.value(metadata i8 %youngest_evicting.1, metadata !252, metadata !DIExpression()), !dbg !261
  call void @llvm.dbg.value(metadata i64 %youngest_age.1, metadata !251, metadata !DIExpression()), !dbg !261
  %gcov_ctr172 = load i64, i64* getelementptr inbounds ([20 x i64], [20 x i64]* @__llvm_gcov_ctr.2, i64 0, i64 12), align 16, !dbg !413
  %51 = add i64 %gcov_ctr172, 1, !dbg !413
  store i64 %51, i64* getelementptr inbounds ([20 x i64], [20 x i64]* @__llvm_gcov_ctr.2, i64 0, i64 12), align 16, !dbg !413
  call void @llvm.dbg.value(metadata i32 -1, metadata !248, metadata !DIExpression()), !dbg !261
  call void @llvm.dbg.value(metadata i64 undef, metadata !249, metadata !DIExpression()), !dbg !261
  call void @llvm.dbg.value(metadata i32 -1, metadata !250, metadata !DIExpression()), !dbg !261
  call void @llvm.dbg.value(metadata i8 undef, metadata !252, metadata !DIExpression()), !dbg !261
  call void @llvm.dbg.value(metadata i64 undef, metadata !251, metadata !DIExpression()), !dbg !261
  %gcov_ctr174 = load i64, i64* getelementptr inbounds ([20 x i64], [20 x i64]* @__llvm_gcov_ctr.2, i64 0, i64 14), align 16, !dbg !414
  %52 = add i64 %gcov_ctr174, 1, !dbg !414
  store i64 %52, i64* getelementptr inbounds ([20 x i64], [20 x i64]* @__llvm_gcov_ctr.2, i64 0, i64 14), align 16, !dbg !414
  %indvars.iv.next300 = add nuw nsw i64 %indvars.iv299, 1, !dbg !414
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next300, metadata !246, metadata !DIExpression()), !dbg !261
  call void @llvm.dbg.value(metadata i32 %oldest.1, metadata !248, metadata !DIExpression()), !dbg !261
  call void @llvm.dbg.value(metadata i64 %oldest_age.1, metadata !249, metadata !DIExpression()), !dbg !261
  call void @llvm.dbg.value(metadata i32 %youngest.1, metadata !250, metadata !DIExpression()), !dbg !261
  call void @llvm.dbg.value(metadata i8 %youngest_evicting.1, metadata !252, metadata !DIExpression()), !dbg !261
  call void @llvm.dbg.value(metadata i64 %youngest_age.1, metadata !251, metadata !DIExpression()), !dbg !261
  %exitcond301.not = icmp eq i64 %indvars.iv.next300, 64, !dbg !415
  br i1 %exitcond301.not, label %for.end119, label %for.inc117.for.body9_crit_edge, !dbg !291, !llvm.loop !416

for.inc117.for.body9_crit_edge:                   ; preds = %for.inc117
  %.pre = load i32, i32* %11, align 4, !dbg !292, !tbaa !290
  br label %for.body9, !dbg !291

for.end119:                                       ; preds = %for.inc117, %cleanup
  %youngest_age.0281 = phi i64 [ %youngest_age.0284, %cleanup ], [ %youngest_age.1, %for.inc117 ]
  %youngest_evicting.0279 = phi i8 [ %youngest_evicting.0286, %cleanup ], [ %youngest_evicting.1, %for.inc117 ]
  %oldest_age.0276 = phi i64 [ %oldest_age.0289, %cleanup ], [ %oldest_age.1, %for.inc117 ]
  %youngest.3 = phi i32 [ -1, %cleanup ], [ %youngest.1, %for.inc117 ], !dbg !261
  %oldest.3 = phi i32 [ -1, %cleanup ], [ %oldest.1, %for.inc117 ], !dbg !261
  call void @llvm.dbg.value(metadata i32 %oldest.3, metadata !248, metadata !DIExpression()), !dbg !261
  call void @llvm.dbg.value(metadata i64 %oldest_age.0276, metadata !249, metadata !DIExpression()), !dbg !261
  call void @llvm.dbg.value(metadata i32 %youngest.3, metadata !250, metadata !DIExpression()), !dbg !261
  call void @llvm.dbg.value(metadata i8 %youngest_evicting.0279, metadata !252, metadata !DIExpression()), !dbg !261
  call void @llvm.dbg.value(metadata i64 %youngest_age.0281, metadata !251, metadata !DIExpression()), !dbg !261
  %call124 = call i8* @memcpy(i8* noundef nonnull %iam_before, i8* noundef nonnull %iam_after, i64 noundef 1536) #10, !dbg !418
  %call129 = call i8* @memcpy(i8* noundef nonnull %sam_before, i8* noundef nonnull %sam_after, i64 noundef 1536) #10, !dbg !419
  %cmp130.not = icmp eq i32 %youngest.3, -1, !dbg !420
  br i1 %cmp130.not, label %if.end151, label %land.lhs.true132, !dbg !422

land.lhs.true132:                                 ; preds = %for.end119
  %gcov_ctr175 = load i64, i64* getelementptr inbounds ([20 x i64], [20 x i64]* @__llvm_gcov_ctr.2, i64 0, i64 15), align 8, !dbg !423
  %53 = add i64 %gcov_ctr175, 1, !dbg !423
  store i64 %53, i64* getelementptr inbounds ([20 x i64], [20 x i64]* @__llvm_gcov_ctr.2, i64 0, i64 15), align 8, !dbg !423
  %cmp133.not = icmp eq i32 %oldest.3, -1, !dbg !424
  br i1 %cmp133.not, label %if.end151, label %land.lhs.true135, !dbg !425

land.lhs.true135:                                 ; preds = %land.lhs.true132
  %gcov_ctr176 = load i64, i64* getelementptr inbounds ([20 x i64], [20 x i64]* @__llvm_gcov_ctr.2, i64 0, i64 16), align 16, !dbg !426
  %54 = add i64 %gcov_ctr176, 1, !dbg !426
  store i64 %54, i64* getelementptr inbounds ([20 x i64], [20 x i64]* @__llvm_gcov_ctr.2, i64 0, i64 16), align 16, !dbg !426
  %55 = load i32, i32* %11, align 4, !dbg !427, !tbaa !290
  %56 = load i32, i32* %13, align 8, !dbg !428, !tbaa !193
  %cmp138 = icmp ugt i32 %55, %56, !dbg !429
  br i1 %cmp138, label %if.then140, label %if.end151, !dbg !430

if.then140:                                       ; preds = %land.lhs.true135
  %conv141 = uitofp i64 %youngest_age.0281 to double, !dbg !431
  %conv142 = uitofp i64 %oldest_age.0276 to double, !dbg !434
  %max_age_ratio = getelementptr inbounds i8, i8* %arg, i64 16, !dbg !435
  %57 = bitcast i8* %max_age_ratio to double*, !dbg !435
  %58 = load double, double* %57, align 8, !dbg !435, !tbaa !196
  %mul143 = fmul double %58, %conv142, !dbg !436
  %cmp144 = fcmp ogt double %mul143, %conv141, !dbg !437
  br i1 %cmp144, label %land.lhs.true146, label %if.end150, !dbg !438

land.lhs.true146:                                 ; preds = %if.then140
  %gcov_ctr177 = load i64, i64* getelementptr inbounds ([20 x i64], [20 x i64]* @__llvm_gcov_ctr.2, i64 0, i64 17), align 8, !dbg !439
  %59 = add i64 %gcov_ctr177, 1, !dbg !439
  store i64 %59, i64* getelementptr inbounds ([20 x i64], [20 x i64]* @__llvm_gcov_ctr.2, i64 0, i64 17), align 8, !dbg !439
  %60 = and i8 %youngest_evicting.0279, 1, !dbg !439
  %tobool147.not = icmp eq i8 %60, 0, !dbg !439
  br i1 %tobool147.not, label %if.end150, label %if.then149, !dbg !440

if.then149:                                       ; preds = %land.lhs.true146
  %gcov_ctr178 = load i64, i64* getelementptr inbounds ([20 x i64], [20 x i64]* @__llvm_gcov_ctr.2, i64 0, i64 18), align 16, !dbg !441
  %61 = add i64 %gcov_ctr178, 1, !dbg !441
  store i64 %61, i64* getelementptr inbounds ([20 x i64], [20 x i64]* @__llvm_gcov_ctr.2, i64 0, i64 18), align 16, !dbg !441
  store i32 %oldest.3, i32* %src, align 4, !dbg !443, !tbaa !265
  store i32 %youngest.3, i32* %dst, align 4, !dbg !444, !tbaa !265
  br label %if.end150, !dbg !445

if.end150:                                        ; preds = %if.then149, %land.lhs.true146, %if.then140
  %gcov_ctr179 = load i64, i64* getelementptr inbounds ([20 x i64], [20 x i64]* @__llvm_gcov_ctr.2, i64 0, i64 19), align 8, !dbg !446
  %62 = add i64 %gcov_ctr179, 1, !dbg !446
  store i64 %62, i64* getelementptr inbounds ([20 x i64], [20 x i64]* @__llvm_gcov_ctr.2, i64 0, i64 19), align 8, !dbg !446
  br label %if.end151, !dbg !446

if.end151:                                        ; preds = %if.end150, %land.lhs.true135, %land.lhs.true132, %for.end119
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %1) #11, !dbg !447
  ret void, !dbg !447
}

; Function Attrs: nounwind
declare !dbg !448 dso_local i8* @memset(i8* noundef, i32 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define internal fastcc void @window_sum(%struct.window_data* nocapture noundef readonly %wd, %struct.window_data* nocapture noundef %w, i32 noundef %size) unnamed_addr #5 !dbg !452 {
entry:
  %gcov_ctr = load i64, i64* getelementptr inbounds ([2 x i64], [2 x i64]* @__llvm_gcov_ctr.3, i64 0, i64 0), align 8
  %0 = add i64 %gcov_ctr, 1
  store i64 %0, i64* getelementptr inbounds ([2 x i64], [2 x i64]* @__llvm_gcov_ctr.3, i64 0, i64 0), align 8
  call void @llvm.dbg.value(metadata %struct.window_data* %wd, metadata !456, metadata !DIExpression()), !dbg !464
  call void @llvm.dbg.value(metadata %struct.window_data* %w, metadata !457, metadata !DIExpression()), !dbg !464
  call void @llvm.dbg.value(metadata i32 %size, metadata !458, metadata !DIExpression()), !dbg !464
  call void @llvm.dbg.value(metadata i32 0, metadata !459, metadata !DIExpression()), !dbg !464
  %cmp19.not = icmp eq i32 %size, 0, !dbg !465
  br i1 %cmp19.not, label %for.end, label %for.body.lr.ph, !dbg !466

for.body.lr.ph:                                   ; preds = %entry
  %evicted_ratio4 = getelementptr inbounds %struct.window_data, %struct.window_data* %w, i64 0, i32 2
  %evicted_seen6 = getelementptr inbounds %struct.window_data, %struct.window_data* %w, i64 0, i32 3
  %wide.trip.count = zext i32 %size to i64, !dbg !465
  %.pre = load float, float* %evicted_ratio4, align 8, !dbg !467, !tbaa !314
  %.pre22 = load i64, i64* %evicted_seen6, align 8, !dbg !468, !tbaa !319
  %1 = bitcast %struct.window_data* %w to <2 x i64>*
  %2 = bitcast %struct.window_data* %w to <2 x i64>*
  br label %for.body, !dbg !466

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %3 = phi i64 [ %.pre22, %for.body.lr.ph ], [ %add7, %for.body ], !dbg !468
  %4 = phi float [ %.pre, %for.body.lr.ph ], [ %add5, %for.body ], !dbg !467
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.body ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !459, metadata !DIExpression()), !dbg !464
  call void @llvm.dbg.value(metadata !DIArgList(%struct.window_data* %wd, i64 %indvars.iv), metadata !460, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 32, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !469
  %age = getelementptr inbounds %struct.window_data, %struct.window_data* %wd, i64 %indvars.iv, i32 0, !dbg !470
  %5 = bitcast i64* %age to <2 x i64>*, !dbg !470
  %6 = load <2 x i64>, <2 x i64>* %5, align 8, !dbg !470, !tbaa !471
  %7 = load <2 x i64>, <2 x i64>* %1, align 8, !dbg !472, !tbaa !471
  %8 = add <2 x i64> %7, %6, !dbg !472
  store <2 x i64> %8, <2 x i64>* %2, align 8, !dbg !472, !tbaa !471
  %evicted_ratio = getelementptr inbounds %struct.window_data, %struct.window_data* %wd, i64 %indvars.iv, i32 2, !dbg !473
  %9 = load float, float* %evicted_ratio, align 8, !dbg !473, !tbaa !314
  %add5 = fadd float %9, %4, !dbg !467
  store float %add5, float* %evicted_ratio4, align 8, !dbg !467, !tbaa !314
  %evicted_seen = getelementptr inbounds %struct.window_data, %struct.window_data* %wd, i64 %indvars.iv, i32 3, !dbg !474
  %10 = load i64, i64* %evicted_seen, align 8, !dbg !474, !tbaa !319
  %add7 = add i64 %3, %10, !dbg !468
  store i64 %add7, i64* %evicted_seen6, align 8, !dbg !468, !tbaa !319
  %gcov_ctr8 = load i64, i64* getelementptr inbounds ([2 x i64], [2 x i64]* @__llvm_gcov_ctr.3, i64 0, i64 1), align 8, !dbg !475
  %11 = add i64 %gcov_ctr8, 1, !dbg !475
  store i64 %11, i64* getelementptr inbounds ([2 x i64], [2 x i64]* @__llvm_gcov_ctr.3, i64 0, i64 1), align 8, !dbg !475
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !475
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !459, metadata !DIExpression()), !dbg !464
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count, !dbg !465
  br i1 %exitcond.not, label %for.end, label %for.body, !dbg !466, !llvm.loop !476

for.end:                                          ; preds = %for.body, %entry
  ret void, !dbg !478
}

; Function Attrs: nounwind
declare !dbg !479 dso_local i8* @memcpy(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define internal void @__llvm_gcov_writeout() unnamed_addr #6 {
entry:
  tail call void @llvm_gcda_start_file(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @0, i64 0, i64 0), i32 875575338, i32 17070135) #11
  tail call void @llvm_gcda_emit_function(i32 0, i32 -84790488, i32 17070135) #11
  tail call void @llvm_gcda_emit_arcs(i32 3, i64* getelementptr inbounds ([3 x i64], [3 x i64]* @__llvm_gcov_ctr, i64 0, i64 0)) #11
  tail call void @llvm_gcda_emit_function(i32 1, i32 960301477, i32 17070135) #11
  tail call void @llvm_gcda_emit_arcs(i32 1, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.1, i64 0, i64 0)) #11
  tail call void @llvm_gcda_emit_function(i32 2, i32 164302020, i32 17070135) #11
  tail call void @llvm_gcda_emit_arcs(i32 20, i64* getelementptr inbounds ([20 x i64], [20 x i64]* @__llvm_gcov_ctr.2, i64 0, i64 0)) #11
  tail call void @llvm_gcda_emit_function(i32 3, i32 -1614232199, i32 17070135) #11
  tail call void @llvm_gcda_emit_arcs(i32 2, i64* getelementptr inbounds ([2 x i64], [2 x i64]* @__llvm_gcov_ctr.3, i64 0, i64 0)) #11
  tail call void @llvm_gcda_summary_info() #11
  tail call void @llvm_gcda_end_file() #11
  ret void
}

declare void @llvm_gcda_start_file(i8*, i32, i32) local_unnamed_addr

declare void @llvm_gcda_emit_function(i32, i32, i32) local_unnamed_addr

declare void @llvm_gcda_emit_arcs(i32, i64*) local_unnamed_addr

declare void @llvm_gcda_summary_info() local_unnamed_addr

declare void @llvm_gcda_end_file() local_unnamed_addr

; Function Attrs: mustprogress nofree noinline nosync nounwind uwtable willreturn writeonly
define internal void @__llvm_gcov_reset() unnamed_addr #7 {
entry:
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(24) bitcast ([3 x i64]* @__llvm_gcov_ctr to i8*), i8 0, i64 24, i1 false)
  store i64 0, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.1, i64 0, i64 0), align 8
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(160) bitcast ([20 x i64]* @__llvm_gcov_ctr.2 to i8*), i8 0, i64 160, i1 false)
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) bitcast ([2 x i64]* @__llvm_gcov_ctr.3 to i8*), i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #8

; Function Attrs: noinline nounwind uwtable
define internal void @__llvm_gcov_init() unnamed_addr #6 {
entry:
  tail call void @llvm_gcov_init(void ()* nonnull @__llvm_gcov_writeout, void ()* nonnull @__llvm_gcov_reset) #11
  ret void
}

declare void @llvm_gcov_init(void ()*, void ()*) local_unnamed_addr

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #9

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #3 = { nounwind "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree noinline norecurse nosync nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noinline nounwind uwtable }
attributes #7 = { mustprogress nofree noinline nosync nounwind uwtable willreturn writeonly }
attributes #8 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #9 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nobuiltin nounwind "no-builtins" }
attributes #11 = { nounwind }
attributes #12 = { nobuiltin "no-builtins" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!63, !64, !65, !66}
!llvm.gcov = !{!67}
!llvm.ident = !{!68}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 14.0.0", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !10, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "slab_automove.c", directory: "/home/xuheng/blackbox/llvm-test/memcached", checksumkind: CSK_MD5, checksum: "534035e0cd8b3edc8051650b2b5a19ef")
!2 = !{!3}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "protocol", file: !4, line: 231, baseType: !5, size: 32, elements: !6)
!4 = !DIFile(filename: "./memcached.h", directory: "/home/xuheng/blackbox/llvm-test/memcached", checksumkind: CSK_MD5, checksum: "9260b30e1b6ff2e5471cc4f8f6971051")
!5 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!6 = !{!7, !8, !9}
!7 = !DIEnumerator(name: "ascii_prot", value: 3)
!8 = !DIEnumerator(name: "binary_prot", value: 4)
!9 = !DIEnumerator(name: "negotiating_prot", value: 5)
!10 = !{!11, !12, !28, !35}
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!13 = !DIDerivedType(tag: DW_TAG_typedef, name: "slab_automove", file: !1, line: 32, baseType: !14)
!14 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1, line: 23, size: 49344, elements: !15)
!15 = !{!16, !30, !33, !34, !36, !51, !52, !62}
!16 = !DIDerivedType(tag: DW_TAG_member, name: "window_data", scope: !14, file: !1, line: 24, baseType: !17, size: 64)
!17 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64)
!18 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "window_data", file: !1, line: 16, size: 256, elements: !19)
!19 = !{!20, !26, !27, !29}
!20 = !DIDerivedType(tag: DW_TAG_member, name: "age", scope: !18, file: !1, line: 17, baseType: !21, size: 64)
!21 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !22, line: 27, baseType: !23)
!22 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "d3ea318a915682aaf6645ec16ac9f991")
!23 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !24, line: 45, baseType: !25)
!24 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "f6304b1a6dcfc6bee76e9a51043b5090")
!25 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "dirty", scope: !18, file: !1, line: 18, baseType: !21, size: 64, offset: 64)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "evicted_ratio", scope: !18, file: !1, line: 19, baseType: !28, size: 32, offset: 128)
!28 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!29 = !DIDerivedType(tag: DW_TAG_member, name: "evicted_seen", scope: !18, file: !1, line: 20, baseType: !21, size: 64, offset: 192)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "window_size", scope: !14, file: !1, line: 25, baseType: !31, size: 32, offset: 64)
!31 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !22, line: 26, baseType: !32)
!32 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !24, line: 42, baseType: !5)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "window_cur", scope: !14, file: !1, line: 26, baseType: !31, size: 32, offset: 96)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "max_age_ratio", scope: !14, file: !1, line: 27, baseType: !35, size: 64, offset: 128)
!35 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "iam_before", scope: !14, file: !1, line: 28, baseType: !37, size: 12288, offset: 192)
!37 = !DICompositeType(tag: DW_TAG_array_type, baseType: !38, size: 12288, elements: !49)
!38 = !DIDerivedType(tag: DW_TAG_typedef, name: "item_stats_automove", file: !39, line: 71, baseType: !40)
!39 = !DIFile(filename: "./items.h", directory: "/home/xuheng/blackbox/llvm-test/memcached", checksumkind: CSK_MD5, checksum: "24f8c54717bd547418db2338c9044014")
!40 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !39, line: 67, size: 192, elements: !41)
!41 = !{!42, !47, !48}
!42 = !DIDerivedType(tag: DW_TAG_member, name: "evicted", scope: !40, file: !39, line: 68, baseType: !43, size: 64)
!43 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !44, line: 27, baseType: !45)
!44 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "", checksumkind: CSK_MD5, checksum: "081edea97425b3437dded4a7fe223193")
!45 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !24, line: 44, baseType: !46)
!46 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "outofmemory", scope: !40, file: !39, line: 69, baseType: !43, size: 64, offset: 64)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "age", scope: !40, file: !39, line: 70, baseType: !31, size: 32, offset: 128)
!49 = !{!50}
!50 = !DISubrange(count: 64)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "iam_after", scope: !14, file: !1, line: 29, baseType: !37, size: 12288, offset: 12480)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "sam_before", scope: !14, file: !1, line: 30, baseType: !53, size: 12288, offset: 24768)
!53 = !DICompositeType(tag: DW_TAG_array_type, baseType: !54, size: 12288, elements: !49)
!54 = !DIDerivedType(tag: DW_TAG_typedef, name: "slab_stats_automove", file: !55, line: 39, baseType: !56)
!55 = !DIFile(filename: "./slabs.h", directory: "/home/xuheng/blackbox/llvm-test/memcached", checksumkind: CSK_MD5, checksum: "28867aba1f41c79140864d76faedcb32")
!56 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !55, line: 34, size: 192, elements: !57)
!57 = !{!58, !59, !60, !61}
!58 = !DIDerivedType(tag: DW_TAG_member, name: "chunks_per_page", scope: !56, file: !55, line: 35, baseType: !5, size: 32)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_size", scope: !56, file: !55, line: 36, baseType: !5, size: 32, offset: 32)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "free_chunks", scope: !56, file: !55, line: 37, baseType: !46, size: 64, offset: 64)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "total_pages", scope: !56, file: !55, line: 38, baseType: !46, size: 64, offset: 128)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "sam_after", scope: !14, file: !1, line: 31, baseType: !53, size: 12288, offset: 37056)
!63 = !{i32 7, !"Dwarf Version", i32 5}
!64 = !{i32 2, !"Debug Info Version", i32 3}
!65 = !{i32 1, !"wchar_size", i32 4}
!66 = !{i32 7, !"uwtable", i32 1}
!67 = !{!"/home/xuheng/blackbox/llvm-test/memcached/slab_automove.gcno", !"/home/xuheng/blackbox/llvm-test/memcached/slab_automove.gcda", !0}
!68 = !{!"clang version 14.0.0"}
!69 = distinct !DISubprogram(name: "slab_automove_init", scope: !1, file: !1, line: 34, type: !70, scopeLine: 34, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !162)
!70 = !DISubroutineType(types: !71)
!71 = !{!11, !72}
!72 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !73, size: 64)
!73 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "settings", file: !4, line: 436, size: 2752, elements: !74)
!74 = !{!75, !78, !80, !81, !82, !85, !86, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !103, !104, !105, !106, !107, !108, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161}
!75 = !DIDerivedType(tag: DW_TAG_member, name: "maxbytes", scope: !73, file: !4, line: 437, baseType: !76, size: 64)
!76 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !77, line: 46, baseType: !25)
!77 = !DIFile(filename: "VeriFrame/LLVMUtils/llvm/lib/clang/14.0.0/include/stddef.h", directory: "/home/xuheng", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!78 = !DIDerivedType(tag: DW_TAG_member, name: "maxconns", scope: !73, file: !4, line: 438, baseType: !79, size: 32, offset: 64)
!79 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !73, file: !4, line: 439, baseType: !79, size: 32, offset: 96)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "udpport", scope: !73, file: !4, line: 440, baseType: !79, size: 32, offset: 128)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "inter", scope: !73, file: !4, line: 441, baseType: !83, size: 64, offset: 192)
!83 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !84, size: 64)
!84 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "verbose", scope: !73, file: !4, line: 442, baseType: !79, size: 32, offset: 256)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "oldest_live", scope: !73, file: !4, line: 443, baseType: !87, size: 32, offset: 288)
!87 = !DIDerivedType(tag: DW_TAG_typedef, name: "rel_time_t", file: !88, line: 14, baseType: !5)
!88 = !DIFile(filename: "./logger.h", directory: "/home/xuheng/blackbox/llvm-test/memcached", checksumkind: CSK_MD5, checksum: "920aeded0afd45e7ff5c610f1349e8a7")
!89 = !DIDerivedType(tag: DW_TAG_member, name: "oldest_cas", scope: !73, file: !4, line: 444, baseType: !21, size: 64, offset: 320)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "evict_to_free", scope: !73, file: !4, line: 445, baseType: !79, size: 32, offset: 384)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "socketpath", scope: !73, file: !4, line: 446, baseType: !83, size: 64, offset: 448)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "auth_file", scope: !73, file: !4, line: 447, baseType: !83, size: 64, offset: 512)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !73, file: !4, line: 448, baseType: !79, size: 32, offset: 576)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "factor", scope: !73, file: !4, line: 449, baseType: !35, size: 64, offset: 640)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_size", scope: !73, file: !4, line: 450, baseType: !79, size: 32, offset: 704)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "num_threads", scope: !73, file: !4, line: 451, baseType: !79, size: 32, offset: 736)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "num_threads_per_udp", scope: !73, file: !4, line: 452, baseType: !79, size: 32, offset: 768)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "prefix_delimiter", scope: !73, file: !4, line: 453, baseType: !84, size: 8, offset: 800)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "detail_enabled", scope: !73, file: !4, line: 454, baseType: !79, size: 32, offset: 832)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "reqs_per_event", scope: !73, file: !4, line: 455, baseType: !79, size: 32, offset: 864)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "use_cas", scope: !73, file: !4, line: 457, baseType: !102, size: 8, offset: 896)
!102 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "binding_protocol", scope: !73, file: !4, line: 458, baseType: !3, size: 32, offset: 928)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "backlog", scope: !73, file: !4, line: 459, baseType: !79, size: 32, offset: 960)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "item_size_max", scope: !73, file: !4, line: 460, baseType: !79, size: 32, offset: 992)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "slab_chunk_size_max", scope: !73, file: !4, line: 461, baseType: !79, size: 32, offset: 1024)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "slab_page_size", scope: !73, file: !4, line: 462, baseType: !79, size: 32, offset: 1056)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "sig_hup", scope: !73, file: !4, line: 463, baseType: !109, size: 32, offset: 1088)
!109 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !110)
!110 = !DIDerivedType(tag: DW_TAG_typedef, name: "sig_atomic_t", file: !111, line: 8, baseType: !112)
!111 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/sig_atomic_t.h", directory: "", checksumkind: CSK_MD5, checksum: "d9236f7e3e7f10f53aa9d4cd97f503cf")
!112 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sig_atomic_t", file: !24, line: 214, baseType: !79)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "sasl", scope: !73, file: !4, line: 464, baseType: !102, size: 8, offset: 1120)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "maxconns_fast", scope: !73, file: !4, line: 465, baseType: !102, size: 8, offset: 1128)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "lru_crawler", scope: !73, file: !4, line: 466, baseType: !102, size: 8, offset: 1136)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "lru_maintainer_thread", scope: !73, file: !4, line: 467, baseType: !102, size: 8, offset: 1144)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "lru_segmented", scope: !73, file: !4, line: 468, baseType: !102, size: 8, offset: 1152)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "slab_reassign", scope: !73, file: !4, line: 469, baseType: !102, size: 8, offset: 1160)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "slab_automove", scope: !73, file: !4, line: 470, baseType: !79, size: 32, offset: 1184)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "slab_automove_ratio", scope: !73, file: !4, line: 471, baseType: !35, size: 64, offset: 1216)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "slab_automove_window", scope: !73, file: !4, line: 472, baseType: !5, size: 32, offset: 1280)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "hashpower_init", scope: !73, file: !4, line: 473, baseType: !79, size: 32, offset: 1312)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_command", scope: !73, file: !4, line: 474, baseType: !102, size: 8, offset: 1344)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "tail_repair_time", scope: !73, file: !4, line: 475, baseType: !79, size: 32, offset: 1376)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "flush_enabled", scope: !73, file: !4, line: 476, baseType: !102, size: 8, offset: 1408)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "dump_enabled", scope: !73, file: !4, line: 477, baseType: !102, size: 8, offset: 1416)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "hash_algorithm", scope: !73, file: !4, line: 478, baseType: !83, size: 64, offset: 1472)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "lru_crawler_sleep", scope: !73, file: !4, line: 479, baseType: !79, size: 32, offset: 1536)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "lru_crawler_tocrawl", scope: !73, file: !4, line: 480, baseType: !31, size: 32, offset: 1568)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "hot_lru_pct", scope: !73, file: !4, line: 481, baseType: !79, size: 32, offset: 1600)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "warm_lru_pct", scope: !73, file: !4, line: 482, baseType: !79, size: 32, offset: 1632)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "hot_max_factor", scope: !73, file: !4, line: 483, baseType: !35, size: 64, offset: 1664)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "warm_max_factor", scope: !73, file: !4, line: 484, baseType: !35, size: 64, offset: 1728)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "crawls_persleep", scope: !73, file: !4, line: 485, baseType: !79, size: 32, offset: 1792)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "temp_lru", scope: !73, file: !4, line: 486, baseType: !102, size: 8, offset: 1824)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "temporary_ttl", scope: !73, file: !4, line: 487, baseType: !31, size: 32, offset: 1856)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "idle_timeout", scope: !73, file: !4, line: 488, baseType: !79, size: 32, offset: 1888)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "logger_watcher_buf_size", scope: !73, file: !4, line: 489, baseType: !5, size: 32, offset: 1920)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "logger_buf_size", scope: !73, file: !4, line: 490, baseType: !5, size: 32, offset: 1952)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "read_buf_mem_limit", scope: !73, file: !4, line: 491, baseType: !5, size: 32, offset: 1984)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "drop_privileges", scope: !73, file: !4, line: 492, baseType: !102, size: 8, offset: 2016)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "watch_enabled", scope: !73, file: !4, line: 493, baseType: !102, size: 8, offset: 2024)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "relaxed_privileges", scope: !73, file: !4, line: 494, baseType: !102, size: 8, offset: 2032)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "meta_response_old", scope: !73, file: !4, line: 495, baseType: !102, size: 8, offset: 2040)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "ext_io_threadcount", scope: !73, file: !4, line: 497, baseType: !5, size: 32, offset: 2048)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "ext_page_size", scope: !73, file: !4, line: 498, baseType: !5, size: 32, offset: 2080)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "ext_item_size", scope: !73, file: !4, line: 499, baseType: !5, size: 32, offset: 2112)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "ext_item_age", scope: !73, file: !4, line: 500, baseType: !5, size: 32, offset: 2144)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "ext_low_ttl", scope: !73, file: !4, line: 501, baseType: !5, size: 32, offset: 2176)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "ext_recache_rate", scope: !73, file: !4, line: 502, baseType: !5, size: 32, offset: 2208)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "ext_wbuf_size", scope: !73, file: !4, line: 503, baseType: !5, size: 32, offset: 2240)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "ext_compact_under", scope: !73, file: !4, line: 504, baseType: !5, size: 32, offset: 2272)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "ext_drop_under", scope: !73, file: !4, line: 505, baseType: !5, size: 32, offset: 2304)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "ext_max_sleep", scope: !73, file: !4, line: 506, baseType: !5, size: 32, offset: 2336)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "ext_max_frag", scope: !73, file: !4, line: 507, baseType: !35, size: 64, offset: 2368)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "slab_automove_freeratio", scope: !73, file: !4, line: 508, baseType: !35, size: 64, offset: 2432)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "ext_drop_unread", scope: !73, file: !4, line: 509, baseType: !102, size: 8, offset: 2496)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "ext_global_pool_min", scope: !73, file: !4, line: 511, baseType: !5, size: 32, offset: 2528)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "num_napi_ids", scope: !73, file: !4, line: 528, baseType: !79, size: 32, offset: 2560)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "memory_file", scope: !73, file: !4, line: 529, baseType: !83, size: 64, offset: 2624)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "sock_cookie_id", scope: !73, file: !4, line: 537, baseType: !31, size: 32, offset: 2688)
!162 = !{!163, !164, !165, !166}
!163 = !DILocalVariable(name: "settings", arg: 1, scope: !69, file: !1, line: 34, type: !72)
!164 = !DILocalVariable(name: "window_size", scope: !69, file: !1, line: 35, type: !31)
!165 = !DILocalVariable(name: "max_age_ratio", scope: !69, file: !1, line: 36, type: !35)
!166 = !DILocalVariable(name: "a", scope: !69, file: !1, line: 37, type: !12)
!167 = !DILocation(line: 0, scope: !69)
!168 = !DILocation(line: 35, column: 38, scope: !69)
!169 = !{!170, !174, i64 160}
!170 = !{!"settings", !171, i64 0, !174, i64 8, !174, i64 12, !174, i64 16, !175, i64 24, !174, i64 32, !174, i64 36, !171, i64 40, !174, i64 48, !175, i64 56, !175, i64 64, !174, i64 72, !176, i64 80, !174, i64 88, !174, i64 92, !174, i64 96, !172, i64 100, !174, i64 104, !174, i64 108, !177, i64 112, !172, i64 116, !174, i64 120, !174, i64 124, !174, i64 128, !174, i64 132, !174, i64 136, !177, i64 140, !177, i64 141, !177, i64 142, !177, i64 143, !177, i64 144, !177, i64 145, !174, i64 148, !176, i64 152, !174, i64 160, !174, i64 164, !177, i64 168, !174, i64 172, !177, i64 176, !177, i64 177, !175, i64 184, !174, i64 192, !174, i64 196, !174, i64 200, !174, i64 204, !176, i64 208, !176, i64 216, !174, i64 224, !177, i64 228, !174, i64 232, !174, i64 236, !174, i64 240, !174, i64 244, !174, i64 248, !177, i64 252, !177, i64 253, !177, i64 254, !177, i64 255, !174, i64 256, !174, i64 260, !174, i64 264, !174, i64 268, !174, i64 272, !174, i64 276, !174, i64 280, !174, i64 284, !174, i64 288, !174, i64 292, !176, i64 296, !176, i64 304, !177, i64 312, !174, i64 316, !174, i64 320, !175, i64 328, !174, i64 336}
!171 = !{!"long", !172, i64 0}
!172 = !{!"omnipotent char", !173, i64 0}
!173 = !{!"Simple C/C++ TBAA"}
!174 = !{!"int", !172, i64 0}
!175 = !{!"any pointer", !172, i64 0}
!176 = !{!"double", !172, i64 0}
!177 = !{!"_Bool", !172, i64 0}
!178 = !DILocation(line: 36, column: 38, scope: !69)
!179 = !{!170, !176, i64 152}
!180 = !DILocation(line: 37, column: 24, scope: !69)
!181 = !DILocation(line: 38, column: 11, scope: !182)
!182 = distinct !DILexicalBlock(scope: !69, file: !1, line: 38, column: 9)
!183 = !DILocation(line: 38, column: 9, scope: !69)
!184 = !DILocation(line: 39, column: 9, scope: !182)
!185 = !DILocation(line: 40, column: 41, scope: !69)
!186 = !DILocation(line: 40, column: 29, scope: !69)
!187 = !DILocation(line: 40, column: 22, scope: !69)
!188 = !DILocation(line: 40, column: 20, scope: !69)
!189 = !{!190, !175, i64 0}
!190 = !{!"", !175, i64 0, !174, i64 8, !174, i64 12, !176, i64 16, !172, i64 24, !172, i64 1560, !172, i64 3096, !172, i64 4632}
!191 = !DILocation(line: 41, column: 8, scope: !69)
!192 = !DILocation(line: 41, column: 20, scope: !69)
!193 = !{!190, !174, i64 8}
!194 = !DILocation(line: 42, column: 8, scope: !69)
!195 = !DILocation(line: 42, column: 22, scope: !69)
!196 = !{!190, !176, i64 16}
!197 = !DILocation(line: 43, column: 24, scope: !198)
!198 = distinct !DILexicalBlock(scope: !69, file: !1, line: 43, column: 9)
!199 = !DILocation(line: 43, column: 9, scope: !69)
!200 = !DILocation(line: 44, column: 14, scope: !201)
!201 = distinct !DILexicalBlock(scope: !198, file: !1, line: 43, column: 33)
!202 = !DILocation(line: 44, column: 9, scope: !201)
!203 = !DILocation(line: 45, column: 9, scope: !201)
!204 = !DILocation(line: 49, column: 30, scope: !69)
!205 = !DILocation(line: 49, column: 33, scope: !69)
!206 = !DILocation(line: 49, column: 5, scope: !69)
!207 = !DILocation(line: 50, column: 33, scope: !69)
!208 = !DILocation(line: 50, column: 30, scope: !69)
!209 = !DILocation(line: 50, column: 5, scope: !69)
!210 = !DILocation(line: 52, column: 5, scope: !69)
!211 = !DILocation(line: 53, column: 1, scope: !69)
!212 = !DISubprogram(name: "calloc", scope: !213, file: !213, line: 542, type: !214, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !216)
!213 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "f0db66726d35051e5af2525f5b33bd81")
!214 = !DISubroutineType(types: !215)
!215 = !{!11, !76, !76}
!216 = !{}
!217 = !DISubprogram(name: "free", scope: !213, file: !213, line: 565, type: !218, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !216)
!218 = !DISubroutineType(types: !219)
!219 = !{null, !11}
!220 = !DISubprogram(name: "fill_item_stats_automove", scope: !39, file: !39, line: 72, type: !221, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !216)
!221 = !DISubroutineType(types: !222)
!222 = !{null, !223}
!223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !38, size: 64)
!224 = !DISubprogram(name: "fill_slab_stats_automove", scope: !55, file: !55, line: 40, type: !225, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !216)
!225 = !DISubroutineType(types: !226)
!226 = !{null, !227}
!227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !54, size: 64)
!228 = distinct !DISubprogram(name: "slab_automove_free", scope: !1, file: !1, line: 55, type: !218, scopeLine: 55, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !229)
!229 = !{!230, !231}
!230 = !DILocalVariable(name: "arg", arg: 1, scope: !228, file: !1, line: 55, type: !11)
!231 = !DILocalVariable(name: "a", scope: !228, file: !1, line: 56, type: !12)
!232 = !DILocation(line: 0, scope: !228)
!233 = !DILocation(line: 57, column: 13, scope: !228)
!234 = !DILocation(line: 57, column: 5, scope: !228)
!235 = !DILocation(line: 58, column: 5, scope: !228)
!236 = !DILocation(line: 59, column: 1, scope: !228)
!237 = distinct !DISubprogram(name: "slab_automove_run", scope: !1, file: !1, line: 74, type: !238, scopeLine: 74, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !241)
!238 = !DISubroutineType(types: !239)
!239 = !{null, !11, !240, !240}
!240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !79, size: 64)
!241 = !{!242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !258, !259, !260}
!242 = !DILocalVariable(name: "arg", arg: 1, scope: !237, file: !1, line: 74, type: !11)
!243 = !DILocalVariable(name: "src", arg: 2, scope: !237, file: !1, line: 74, type: !240)
!244 = !DILocalVariable(name: "dst", arg: 3, scope: !237, file: !1, line: 74, type: !240)
!245 = !DILocalVariable(name: "a", scope: !237, file: !1, line: 75, type: !12)
!246 = !DILocalVariable(name: "n", scope: !237, file: !1, line: 76, type: !79)
!247 = !DILocalVariable(name: "w_sum", scope: !237, file: !1, line: 77, type: !18)
!248 = !DILocalVariable(name: "oldest", scope: !237, file: !1, line: 78, type: !79)
!249 = !DILocalVariable(name: "oldest_age", scope: !237, file: !1, line: 79, type: !21)
!250 = !DILocalVariable(name: "youngest", scope: !237, file: !1, line: 80, type: !79)
!251 = !DILocalVariable(name: "youngest_age", scope: !237, file: !1, line: 81, type: !21)
!252 = !DILocalVariable(name: "youngest_evicting", scope: !237, file: !1, line: 82, type: !102)
!253 = !DILocalVariable(name: "evicted_total", scope: !237, file: !1, line: 90, type: !21)
!254 = !DILocalVariable(name: "w_offset", scope: !255, file: !1, line: 98, type: !79)
!255 = distinct !DILexicalBlock(scope: !256, file: !1, line: 97, column: 67)
!256 = distinct !DILexicalBlock(scope: !257, file: !1, line: 97, column: 5)
!257 = distinct !DILexicalBlock(scope: !237, file: !1, line: 97, column: 5)
!258 = !DILocalVariable(name: "wd", scope: !255, file: !1, line: 99, type: !17)
!259 = !DILocalVariable(name: "evicted_delta", scope: !255, file: !1, line: 104, type: !21)
!260 = !DILocalVariable(name: "age", scope: !255, file: !1, line: 127, type: !21)
!261 = !DILocation(line: 0, scope: !237)
!262 = !DILocation(line: 77, column: 5, scope: !237)
!263 = !DILocation(line: 77, column: 24, scope: !237)
!264 = !DILocation(line: 83, column: 10, scope: !237)
!265 = !{!174, !174, i64 0}
!266 = !DILocation(line: 84, column: 10, scope: !237)
!267 = !DILocation(line: 87, column: 33, scope: !237)
!268 = !DILocation(line: 87, column: 30, scope: !237)
!269 = !DILocation(line: 87, column: 5, scope: !237)
!270 = !DILocation(line: 88, column: 33, scope: !237)
!271 = !DILocation(line: 88, column: 30, scope: !237)
!272 = !DILocation(line: 88, column: 5, scope: !237)
!273 = !DILocation(line: 91, column: 63, scope: !274)
!274 = distinct !DILexicalBlock(scope: !275, file: !1, line: 91, column: 5)
!275 = distinct !DILexicalBlock(scope: !237, file: !1, line: 91, column: 5)
!276 = !DILocation(line: 91, column: 5, scope: !275)
!277 = !DILocation(line: 92, column: 42, scope: !278)
!278 = distinct !DILexicalBlock(scope: !274, file: !1, line: 91, column: 67)
!279 = !{!280, !171, i64 0}
!280 = !{!"", !171, i64 0, !171, i64 8, !174, i64 16}
!281 = !DILocation(line: 92, column: 69, scope: !278)
!282 = !DILocation(line: 92, column: 50, scope: !278)
!283 = !DILocation(line: 92, column: 23, scope: !278)
!284 = !DILocation(line: 91, column: 32, scope: !274)
!285 = distinct !{!285, !276, !286, !287}
!286 = !DILocation(line: 93, column: 5, scope: !275)
!287 = !{!"llvm.loop.mustprogress"}
!288 = !DILocation(line: 94, column: 8, scope: !237)
!289 = !DILocation(line: 94, column: 18, scope: !237)
!290 = !{!190, !174, i64 12}
!291 = !DILocation(line: 97, column: 5, scope: !257)
!292 = !DILocation(line: 99, column: 65, scope: !255)
!293 = !DILocation(line: 98, column: 31, scope: !255)
!294 = !DILocation(line: 98, column: 26, scope: !255)
!295 = !DILocation(line: 0, scope: !255)
!296 = !DILocation(line: 99, column: 38, scope: !255)
!297 = !DILocation(line: 99, column: 76, scope: !255)
!298 = !DILocation(line: 99, column: 59, scope: !255)
!299 = !DILocation(line: 99, column: 35, scope: !255)
!300 = !DILocation(line: 100, column: 16, scope: !255)
!301 = !DILocation(line: 100, column: 9, scope: !255)
!302 = !DILocation(line: 104, column: 50, scope: !255)
!303 = !DILocation(line: 104, column: 77, scope: !255)
!304 = !DILocation(line: 104, column: 58, scope: !255)
!305 = !DILocation(line: 105, column: 27, scope: !306)
!306 = distinct !DILexicalBlock(scope: !255, file: !1, line: 105, column: 13)
!307 = !DILocation(line: 105, column: 13, scope: !255)
!308 = !DILocation(line: 107, column: 41, scope: !309)
!309 = distinct !DILexicalBlock(scope: !306, file: !1, line: 105, column: 32)
!310 = !DILocation(line: 107, column: 33, scope: !309)
!311 = !DILocation(line: 107, column: 55, scope: !309)
!312 = !DILocation(line: 107, column: 17, scope: !309)
!313 = !DILocation(line: 107, column: 31, scope: !309)
!314 = !{!315, !316, i64 16}
!315 = !{!"window_data", !171, i64 0, !171, i64 8, !316, i64 16, !171, i64 24}
!316 = !{!"float", !172, i64 0}
!317 = !DILocation(line: 108, column: 17, scope: !309)
!318 = !DILocation(line: 108, column: 30, scope: !309)
!319 = !{!315, !171, i64 24}
!320 = !DILocation(line: 109, column: 17, scope: !309)
!321 = !DILocation(line: 109, column: 23, scope: !309)
!322 = !{!315, !171, i64 8}
!323 = !DILocation(line: 110, column: 9, scope: !309)
!324 = !DILocation(line: 112, column: 29, scope: !325)
!325 = distinct !DILexicalBlock(scope: !255, file: !1, line: 112, column: 13)
!326 = !{!280, !171, i64 8}
!327 = !DILocation(line: 112, column: 60, scope: !325)
!328 = !DILocation(line: 112, column: 72, scope: !325)
!329 = !DILocation(line: 112, column: 13, scope: !255)
!330 = !DILocation(line: 113, column: 13, scope: !331)
!331 = distinct !DILexicalBlock(scope: !325, file: !1, line: 112, column: 77)
!332 = !DILocation(line: 113, column: 17, scope: !331)
!333 = !DILocation(line: 113, column: 23, scope: !331)
!334 = !DILocation(line: 114, column: 9, scope: !331)
!335 = !DILocation(line: 115, column: 29, scope: !336)
!336 = distinct !DILexicalBlock(scope: !255, file: !1, line: 115, column: 13)
!337 = !{!338, !171, i64 16}
!338 = !{!"", !174, i64 0, !174, i64 4, !171, i64 8, !171, i64 16}
!339 = !DILocation(line: 115, column: 60, scope: !336)
!340 = !DILocation(line: 115, column: 72, scope: !336)
!341 = !DILocation(line: 115, column: 13, scope: !255)
!342 = !DILocation(line: 116, column: 13, scope: !343)
!343 = distinct !DILexicalBlock(scope: !336, file: !1, line: 115, column: 77)
!344 = !DILocation(line: 116, column: 17, scope: !343)
!345 = !DILocation(line: 116, column: 23, scope: !343)
!346 = !DILocation(line: 117, column: 9, scope: !343)
!347 = !DILocation(line: 120, column: 35, scope: !255)
!348 = !{!280, !174, i64 16}
!349 = !DILocation(line: 120, column: 19, scope: !255)
!350 = !DILocation(line: 120, column: 13, scope: !255)
!351 = !DILocation(line: 120, column: 17, scope: !255)
!352 = !{!315, !171, i64 0}
!353 = !DILocation(line: 123, column: 9, scope: !255)
!354 = !DILocation(line: 124, column: 24, scope: !255)
!355 = !DILocation(line: 124, column: 21, scope: !255)
!356 = !DILocation(line: 124, column: 58, scope: !255)
!357 = !DILocation(line: 124, column: 9, scope: !255)
!358 = !DILocation(line: 127, column: 30, scope: !255)
!359 = !DILocation(line: 127, column: 39, scope: !255)
!360 = !DILocation(line: 127, column: 36, scope: !255)
!361 = !DILocation(line: 127, column: 34, scope: !255)
!362 = !DILocation(line: 130, column: 29, scope: !363)
!363 = distinct !DILexicalBlock(scope: !255, file: !1, line: 130, column: 13)
!364 = !{!338, !171, i64 8}
!365 = !DILocation(line: 130, column: 13, scope: !363)
!366 = !DILocation(line: 130, column: 59, scope: !363)
!367 = !{!338, !174, i64 0}
!368 = !DILocation(line: 130, column: 43, scope: !363)
!369 = !DILocation(line: 130, column: 75, scope: !363)
!370 = !DILocation(line: 130, column: 41, scope: !363)
!371 = !DILocation(line: 130, column: 13, scope: !255)
!372 = !DILocation(line: 131, column: 23, scope: !373)
!373 = distinct !DILexicalBlock(scope: !374, file: !1, line: 131, column: 17)
!374 = distinct !DILexicalBlock(scope: !363, file: !1, line: 130, column: 100)
!375 = !DILocation(line: 131, column: 29, scope: !373)
!376 = !DILocation(line: 131, column: 17, scope: !374)
!377 = !DILocation(line: 137, column: 9, scope: !374)
!378 = !DILocation(line: 140, column: 17, scope: !379)
!379 = distinct !DILexicalBlock(scope: !255, file: !1, line: 140, column: 13)
!380 = !DILocation(line: 140, column: 30, scope: !379)
!381 = !DILocation(line: 140, column: 33, scope: !379)
!382 = !DILocation(line: 140, column: 49, scope: !379)
!383 = !DILocation(line: 140, column: 61, scope: !379)
!384 = !DILocation(line: 140, column: 13, scope: !255)
!385 = !DILocation(line: 141, column: 22, scope: !386)
!386 = distinct !DILexicalBlock(scope: !379, file: !1, line: 140, column: 85)
!387 = !DILocation(line: 143, column: 9, scope: !386)
!388 = !DILocation(line: 148, column: 17, scope: !389)
!389 = distinct !DILexicalBlock(scope: !255, file: !1, line: 148, column: 13)
!390 = !DILocation(line: 148, column: 32, scope: !389)
!391 = !DILocation(line: 148, column: 42, scope: !389)
!392 = !DILocation(line: 148, column: 60, scope: !389)
!393 = !DILocation(line: 148, column: 72, scope: !389)
!394 = !DILocation(line: 148, column: 57, scope: !389)
!395 = !DILocation(line: 148, column: 55, scope: !389)
!396 = !DILocation(line: 149, column: 21, scope: !389)
!397 = !DILocation(line: 149, column: 30, scope: !389)
!398 = !DILocation(line: 149, column: 49, scope: !389)
!399 = !DILocation(line: 149, column: 46, scope: !389)
!400 = !DILocation(line: 149, column: 44, scope: !389)
!401 = !DILocation(line: 149, column: 61, scope: !389)
!402 = !DILocation(line: 148, column: 13, scope: !255)
!403 = !DILocation(line: 150, column: 24, scope: !404)
!404 = distinct !DILexicalBlock(scope: !389, file: !1, line: 149, column: 70)
!405 = !DILocation(line: 152, column: 37, scope: !404)
!406 = !DILocation(line: 152, column: 33, scope: !404)
!407 = !DILocation(line: 152, column: 31, scope: !404)
!408 = !DILocation(line: 153, column: 9, scope: !404)
!409 = !DILocation(line: 132, column: 24, scope: !410)
!410 = distinct !DILexicalBlock(scope: !373, file: !1, line: 131, column: 35)
!411 = !DILocation(line: 132, column: 22, scope: !410)
!412 = !DILocation(line: 133, column: 22, scope: !410)
!413 = !DILocation(line: 154, column: 5, scope: !256)
!414 = !DILocation(line: 97, column: 63, scope: !256)
!415 = !DILocation(line: 97, column: 32, scope: !256)
!416 = distinct !{!416, !291, !417, !287}
!417 = !DILocation(line: 154, column: 5, scope: !257)
!418 = !DILocation(line: 156, column: 5, scope: !237)
!419 = !DILocation(line: 158, column: 5, scope: !237)
!420 = !DILocation(line: 162, column: 18, scope: !421)
!421 = distinct !DILexicalBlock(scope: !237, file: !1, line: 162, column: 9)
!422 = !DILocation(line: 162, column: 24, scope: !421)
!423 = !DILocation(line: 162, column: 27, scope: !421)
!424 = !DILocation(line: 162, column: 34, scope: !421)
!425 = !DILocation(line: 162, column: 40, scope: !421)
!426 = !DILocation(line: 162, column: 43, scope: !421)
!427 = !DILocation(line: 162, column: 46, scope: !421)
!428 = !DILocation(line: 162, column: 62, scope: !421)
!429 = !DILocation(line: 162, column: 57, scope: !421)
!430 = !DILocation(line: 162, column: 9, scope: !237)
!431 = !DILocation(line: 163, column: 13, scope: !432)
!432 = distinct !DILexicalBlock(scope: !433, file: !1, line: 163, column: 13)
!433 = distinct !DILexicalBlock(scope: !421, file: !1, line: 162, column: 75)
!434 = !DILocation(line: 163, column: 29, scope: !432)
!435 = !DILocation(line: 163, column: 53, scope: !432)
!436 = !DILocation(line: 163, column: 48, scope: !432)
!437 = !DILocation(line: 163, column: 26, scope: !432)
!438 = !DILocation(line: 163, column: 68, scope: !432)
!439 = !DILocation(line: 163, column: 71, scope: !432)
!440 = !DILocation(line: 163, column: 13, scope: !433)
!441 = !DILocation(line: 164, column: 20, scope: !442)
!442 = distinct !DILexicalBlock(scope: !432, file: !1, line: 163, column: 90)
!443 = !DILocation(line: 164, column: 18, scope: !442)
!444 = !DILocation(line: 165, column: 18, scope: !442)
!445 = !DILocation(line: 166, column: 9, scope: !442)
!446 = !DILocation(line: 167, column: 5, scope: !433)
!447 = !DILocation(line: 169, column: 1, scope: !237)
!448 = !DISubprogram(name: "memset", scope: !449, file: !449, line: 61, type: !450, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !216)
!449 = !DIFile(filename: "/usr/include/string.h", directory: "", checksumkind: CSK_MD5, checksum: "61f60112cf5c0a45c54ea1f595add24c")
!450 = !DISubroutineType(types: !451)
!451 = !{!11, !11, !79, !76}
!452 = distinct !DISubprogram(name: "window_sum", scope: !1, file: !1, line: 61, type: !453, scopeLine: 61, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !455)
!453 = !DISubroutineType(types: !454)
!454 = !{null, !17, !17, !31}
!455 = !{!456, !457, !458, !459, !460}
!456 = !DILocalVariable(name: "wd", arg: 1, scope: !452, file: !1, line: 61, type: !17)
!457 = !DILocalVariable(name: "w", arg: 2, scope: !452, file: !1, line: 61, type: !17)
!458 = !DILocalVariable(name: "size", arg: 3, scope: !452, file: !1, line: 61, type: !31)
!459 = !DILocalVariable(name: "x", scope: !452, file: !1, line: 62, type: !79)
!460 = !DILocalVariable(name: "d", scope: !461, file: !1, line: 64, type: !17)
!461 = distinct !DILexicalBlock(scope: !462, file: !1, line: 63, column: 32)
!462 = distinct !DILexicalBlock(scope: !463, file: !1, line: 63, column: 5)
!463 = distinct !DILexicalBlock(scope: !452, file: !1, line: 63, column: 5)
!464 = !DILocation(line: 0, scope: !452)
!465 = !DILocation(line: 63, column: 19, scope: !462)
!466 = !DILocation(line: 63, column: 5, scope: !463)
!467 = !DILocation(line: 67, column: 26, scope: !461)
!468 = !DILocation(line: 68, column: 25, scope: !461)
!469 = !DILocation(line: 0, scope: !461)
!470 = !DILocation(line: 65, column: 22, scope: !461)
!471 = !{!171, !171, i64 0}
!472 = !DILocation(line: 65, column: 16, scope: !461)
!473 = !DILocation(line: 67, column: 32, scope: !461)
!474 = !DILocation(line: 68, column: 31, scope: !461)
!475 = !DILocation(line: 63, column: 28, scope: !462)
!476 = distinct !{!476, !466, !477, !287}
!477 = !DILocation(line: 69, column: 5, scope: !463)
!478 = !DILocation(line: 70, column: 1, scope: !452)
!479 = !DISubprogram(name: "memcpy", scope: !449, file: !449, line: 43, type: !480, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !216)
!480 = !DISubroutineType(types: !481)
!481 = !{!11, !482, !483, !76}
!482 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !11)
!483 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !484)
!484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !485, size: 64)
!485 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
