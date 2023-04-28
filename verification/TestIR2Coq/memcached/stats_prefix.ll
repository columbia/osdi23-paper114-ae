; ModuleID = 'stats_prefix.c'
source_filename = "stats_prefix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._prefix_stats = type { i8*, i64, i64, i64, i64, i64, %struct._prefix_stats* }

@prefix_delimiter = internal unnamed_addr global i8 0, align 1, !dbg !0
@prefix_stats = internal global [256 x %struct._prefix_stats*] zeroinitializer, align 16, !dbg !7
@num_prefixes = internal unnamed_addr global i32 0, align 4, !dbg !33
@total_prefix_size = internal unnamed_addr global i32 0, align 4, !dbg !36
@.str = private unnamed_addr constant [12 x i8] c"key != NULL\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"stats_prefix.c\00", align 1
@__PRETTY_FUNCTION__.stats_prefix_find = private unnamed_addr constant [60 x i8] c"PREFIX_STATS *stats_prefix_find(const char *, const size_t)\00", align 1
@hash = external dso_local local_unnamed_addr global i32 (i8*, i64)*, align 8
@.str.2 = private unnamed_addr constant [49 x i8] c"Can't allocate space for stats structure: calloc\00", align 1
@.str.3 = private unnamed_addr constant [48 x i8] c"Can't allocate space for copy of prefix: malloc\00", align 1
@.str.4 = private unnamed_addr constant [48 x i8] c"PREFIX %s get %llu hit %llu set %llu del %llu\0D\0A\00", align 1
@.str.5 = private unnamed_addr constant [38 x i8] c"Can't allocate stats response: malloc\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"total_written < size\00", align 1
@__PRETTY_FUNCTION__.stats_prefix_dump = private unnamed_addr constant [31 x i8] c"char *stats_prefix_dump(int *)\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"END\0D\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @stats_prefix_init(i8 noundef signext %delimiter) local_unnamed_addr #0 !dbg !43 {
entry:
  call void @llvm.dbg.value(metadata i8 %delimiter, metadata !47, metadata !DIExpression()), !dbg !48
  store i8 %delimiter, i8* @prefix_delimiter, align 1, !dbg !49, !tbaa !50
  %call = tail call i8* @memset(i8* noundef bitcast ([256 x %struct._prefix_stats*]* @prefix_stats to i8*), i32 noundef 0, i64 noundef 2048) #6, !dbg !53
  ret void, !dbg !54
}

; Function Attrs: nounwind
declare !dbg !55 dso_local i8* @memset(i8* noundef, i32 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @stats_prefix_clear() local_unnamed_addr #0 !dbg !60 {
entry:
  call void @llvm.dbg.value(metadata i32 0, metadata !64, metadata !DIExpression()), !dbg !70
  br label %for.body, !dbg !71

for.body:                                         ; preds = %entry, %for.end
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.next, %for.end ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !64, metadata !DIExpression()), !dbg !70
  %arrayidx = getelementptr inbounds [256 x %struct._prefix_stats*], [256 x %struct._prefix_stats*]* @prefix_stats, i64 0, i64 %indvars.iv, !dbg !72
  %0 = load %struct._prefix_stats*, %struct._prefix_stats** %arrayidx, align 8, !dbg !72, !tbaa !74
  call void @llvm.dbg.value(metadata %struct._prefix_stats* %0, metadata !65, metadata !DIExpression()), !dbg !76
  %cmp2.not18 = icmp eq %struct._prefix_stats* %0, null, !dbg !77
  br i1 %cmp2.not18, label %for.end, label %for.body3, !dbg !79

for.body3:                                        ; preds = %for.body, %for.body3
  %cur.019 = phi %struct._prefix_stats* [ %1, %for.body3 ], [ %0, %for.body ]
  call void @llvm.dbg.value(metadata %struct._prefix_stats* %cur.019, metadata !65, metadata !DIExpression()), !dbg !76
  %next4 = getelementptr inbounds %struct._prefix_stats, %struct._prefix_stats* %cur.019, i64 0, i32 6, !dbg !80
  %1 = load %struct._prefix_stats*, %struct._prefix_stats** %next4, align 8, !dbg !80, !tbaa !82
  call void @llvm.dbg.value(metadata %struct._prefix_stats* %1, metadata !69, metadata !DIExpression()), !dbg !76
  %prefix = getelementptr inbounds %struct._prefix_stats, %struct._prefix_stats* %cur.019, i64 0, i32 0, !dbg !85
  %2 = load i8*, i8** %prefix, align 8, !dbg !85, !tbaa !86
  tail call void @free(i8* noundef %2) #6, !dbg !87
  %3 = bitcast %struct._prefix_stats* %cur.019 to i8*, !dbg !88
  tail call void @free(i8* noundef nonnull %3) #6, !dbg !89
  call void @llvm.dbg.value(metadata %struct._prefix_stats* %1, metadata !65, metadata !DIExpression()), !dbg !76
  %cmp2.not = icmp eq %struct._prefix_stats* %1, null, !dbg !77
  br i1 %cmp2.not, label %for.end, label %for.body3, !dbg !79, !llvm.loop !90

for.end:                                          ; preds = %for.body3, %for.body
  store %struct._prefix_stats* null, %struct._prefix_stats** %arrayidx, align 8, !dbg !93, !tbaa !74
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !94
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !64, metadata !DIExpression()), !dbg !70
  %exitcond.not = icmp eq i64 %indvars.iv.next, 256, !dbg !95
  br i1 %exitcond.not, label %for.end8, label %for.body, !dbg !71, !llvm.loop !96

for.end8:                                         ; preds = %for.end
  store i32 0, i32* @num_prefixes, align 4, !dbg !98, !tbaa !99
  store i32 0, i32* @total_prefix_size, align 4, !dbg !101, !tbaa !99
  ret void, !dbg !102
}

; Function Attrs: nounwind
declare !dbg !103 dso_local void @free(i8* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define dso_local %struct._prefix_stats* @stats_prefix_find(i8* noundef %key, i64 noundef %nkey) local_unnamed_addr #0 !dbg !107 {
entry:
  call void @llvm.dbg.value(metadata i8* %key, metadata !114, metadata !DIExpression()), !dbg !124
  call void @llvm.dbg.value(metadata i64 %nkey, metadata !115, metadata !DIExpression()), !dbg !124
  call void @llvm.dbg.value(metadata i8 1, metadata !122, metadata !DIExpression()), !dbg !124
  %cmp.not = icmp eq i8* %key, null, !dbg !125
  br i1 %cmp.not, label %if.else, label %for.cond.preheader, !dbg !128

for.cond.preheader:                               ; preds = %entry
  call void @llvm.dbg.value(metadata i64 0, metadata !121, metadata !DIExpression()), !dbg !124
  %cmp191.not = icmp eq i64 %nkey, 0, !dbg !129
  br i1 %cmp191.not, label %cleanup, label %land.rhs.lr.ph, !dbg !132

land.rhs.lr.ph:                                   ; preds = %for.cond.preheader
  %0 = load i8, i8* @prefix_delimiter, align 1
  br label %land.rhs, !dbg !132

if.else:                                          ; preds = %entry
  tail call void @__assert_fail(i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 noundef 43, i8* noundef getelementptr inbounds ([60 x i8], [60 x i8]* @__PRETTY_FUNCTION__.stats_prefix_find, i64 0, i64 0)) #7, !dbg !125
  unreachable, !dbg !125

land.rhs:                                         ; preds = %land.rhs.lr.ph, %for.inc
  %length.092 = phi i64 [ 0, %land.rhs.lr.ph ], [ %inc, %for.inc ]
  call void @llvm.dbg.value(metadata i64 %length.092, metadata !121, metadata !DIExpression()), !dbg !124
  %arrayidx = getelementptr inbounds i8, i8* %key, i64 %length.092, !dbg !133
  %1 = load i8, i8* %arrayidx, align 1, !dbg !133, !tbaa !50
  %cmp2.not = icmp eq i8 %1, 0, !dbg !134
  br i1 %cmp2.not, label %cleanup, label %for.body, !dbg !135

for.body:                                         ; preds = %land.rhs
  %cmp7 = icmp eq i8 %1, %0, !dbg !136
  br i1 %cmp7, label %if.end12, label %for.inc, !dbg !139

for.inc:                                          ; preds = %for.body
  %inc = add nuw i64 %length.092, 1, !dbg !140
  call void @llvm.dbg.value(metadata i64 %inc, metadata !121, metadata !DIExpression()), !dbg !124
  %exitcond.not = icmp eq i64 %inc, %nkey, !dbg !129
  br i1 %exitcond.not, label %cleanup, label %land.rhs, !dbg !132, !llvm.loop !141

if.end12:                                         ; preds = %for.body
  call void @llvm.dbg.value(metadata i8 undef, metadata !122, metadata !DIExpression()), !dbg !124
  %2 = load i32 (i8*, i64)*, i32 (i8*, i64)** @hash, align 8, !dbg !143, !tbaa !74
  %call = tail call i32 %2(i8* noundef nonnull %key, i64 noundef %length.092) #6, !dbg !143
  %rem = and i32 %call, 255, !dbg !144
  call void @llvm.dbg.value(metadata i32 %rem, metadata !117, metadata !DIExpression()), !dbg !124
  %idxprom = zext i32 %rem to i64, !dbg !145
  %arrayidx13 = getelementptr inbounds [256 x %struct._prefix_stats*], [256 x %struct._prefix_stats*]* @prefix_stats, i64 0, i64 %idxprom, !dbg !145
  call void @llvm.dbg.value(metadata %struct._prefix_stats* undef, metadata !116, metadata !DIExpression()), !dbg !124
  %pfs.093 = load %struct._prefix_stats*, %struct._prefix_stats** %arrayidx13, align 8, !dbg !147, !tbaa !74
  call void @llvm.dbg.value(metadata %struct._prefix_stats* %pfs.093, metadata !116, metadata !DIExpression()), !dbg !124
  %cmp15.not94 = icmp eq %struct._prefix_stats* %pfs.093, null, !dbg !148
  br i1 %cmp15.not94, label %for.end24, label %for.body17, !dbg !150

for.body17:                                       ; preds = %if.end12, %for.inc23
  %pfs.095 = phi %struct._prefix_stats* [ %pfs.0, %for.inc23 ], [ %pfs.093, %if.end12 ]
  %prefix = getelementptr inbounds %struct._prefix_stats, %struct._prefix_stats* %pfs.095, i64 0, i32 0, !dbg !151
  %3 = load i8*, i8** %prefix, align 8, !dbg !151, !tbaa !86
  %call18 = tail call i32 @strncmp(i8* noundef %3, i8* noundef nonnull %key, i64 noundef %length.092) #8, !dbg !154
  %cmp19 = icmp eq i32 %call18, 0, !dbg !155
  br i1 %cmp19, label %cleanup, label %for.inc23, !dbg !156

for.inc23:                                        ; preds = %for.body17
  %next = getelementptr inbounds %struct._prefix_stats, %struct._prefix_stats* %pfs.095, i64 0, i32 6, !dbg !157
  call void @llvm.dbg.value(metadata %struct._prefix_stats* undef, metadata !116, metadata !DIExpression()), !dbg !124
  %pfs.0 = load %struct._prefix_stats*, %struct._prefix_stats** %next, align 8, !dbg !147, !tbaa !74
  call void @llvm.dbg.value(metadata %struct._prefix_stats* %pfs.0, metadata !116, metadata !DIExpression()), !dbg !124
  %cmp15.not = icmp eq %struct._prefix_stats* %pfs.0, null, !dbg !148
  br i1 %cmp15.not, label %for.end24, label %for.body17, !dbg !150, !llvm.loop !158

for.end24:                                        ; preds = %for.inc23, %if.end12
  %call25 = tail call noalias i8* @calloc(i64 noundef 56, i64 noundef 1) #6, !dbg !160
  %4 = bitcast i8* %call25 to %struct._prefix_stats*, !dbg !160
  call void @llvm.dbg.value(metadata %struct._prefix_stats* %4, metadata !116, metadata !DIExpression()), !dbg !124
  %cmp26 = icmp eq i8* %call25, null, !dbg !161
  br i1 %cmp26, label %if.then28, label %if.end29, !dbg !163

if.then28:                                        ; preds = %for.end24
  tail call void @perror(i8* noundef getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i64 0, i64 0)) #6, !dbg !164
  br label %cleanup, !dbg !166

if.end29:                                         ; preds = %for.end24
  %add = add i64 %length.092, 1, !dbg !167
  %call30 = tail call noalias i8* @malloc(i64 noundef %add) #6, !dbg !168
  %prefix31 = bitcast i8* %call25 to i8**, !dbg !169
  store i8* %call30, i8** %prefix31, align 8, !dbg !170, !tbaa !86
  %cmp33 = icmp eq i8* %call30, null, !dbg !171
  br i1 %cmp33, label %if.then35, label %if.end36, !dbg !173

if.then35:                                        ; preds = %if.end29
  tail call void @perror(i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @.str.3, i64 0, i64 0)) #6, !dbg !174
  tail call void @free(i8* noundef nonnull %call25) #6, !dbg !176
  br label %cleanup, !dbg !177

if.end36:                                         ; preds = %if.end29
  %call38 = tail call i8* @strncpy(i8* noundef nonnull %call30, i8* noundef nonnull %key, i64 noundef %length.092) #6, !dbg !178
  %arrayidx40 = getelementptr inbounds i8, i8* %call30, i64 %length.092, !dbg !179
  store i8 0, i8* %arrayidx40, align 1, !dbg !180, !tbaa !50
  %prefix_len = getelementptr inbounds i8, i8* %call25, i64 8, !dbg !181
  %5 = bitcast i8* %prefix_len to i64*, !dbg !181
  store i64 %length.092, i64* %5, align 8, !dbg !182, !tbaa !183
  %6 = load %struct._prefix_stats*, %struct._prefix_stats** %arrayidx13, align 8, !dbg !184, !tbaa !74
  %next43 = getelementptr inbounds i8, i8* %call25, i64 48, !dbg !185
  %7 = bitcast i8* %next43 to %struct._prefix_stats**, !dbg !185
  store %struct._prefix_stats* %6, %struct._prefix_stats** %7, align 8, !dbg !186, !tbaa !82
  %8 = bitcast %struct._prefix_stats** %arrayidx13 to i8**, !dbg !187
  store i8* %call25, i8** %8, align 8, !dbg !187, !tbaa !74
  %9 = load i32, i32* @num_prefixes, align 4, !dbg !188, !tbaa !99
  %inc46 = add nsw i32 %9, 1, !dbg !188
  store i32 %inc46, i32* @num_prefixes, align 4, !dbg !188, !tbaa !99
  %10 = load i32, i32* @total_prefix_size, align 4, !dbg !189, !tbaa !99
  %11 = trunc i64 %length.092 to i32, !dbg !189
  %conv49 = add i32 %10, %11, !dbg !189
  store i32 %conv49, i32* @total_prefix_size, align 4, !dbg !189, !tbaa !99
  br label %cleanup, !dbg !190

cleanup:                                          ; preds = %land.rhs, %for.inc, %for.body17, %for.cond.preheader, %if.end36, %if.then35, %if.then28
  %retval.0 = phi %struct._prefix_stats* [ null, %if.then28 ], [ null, %if.then35 ], [ %4, %if.end36 ], [ null, %for.cond.preheader ], [ %pfs.095, %for.body17 ], [ null, %for.inc ], [ null, %land.rhs ], !dbg !124
  ret %struct._prefix_stats* %retval.0, !dbg !191
}

; Function Attrs: noreturn nounwind
declare dso_local void @__assert_fail(i8* noundef, i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare !dbg !192 dso_local i32 @strncmp(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare !dbg !195 dso_local noalias i8* @calloc(i64 noundef, i64 noundef) local_unnamed_addr #1

declare !dbg !198 dso_local void @perror(i8* noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare !dbg !202 dso_local noalias i8* @malloc(i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare !dbg !205 dso_local i8* @strncpy(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @stats_prefix_record_get(i8* noundef %key, i64 noundef %nkey, i1 noundef zeroext %is_hit) local_unnamed_addr #0 !dbg !210 {
entry:
  call void @llvm.dbg.value(metadata i8* %key, metadata !215, metadata !DIExpression()), !dbg !219
  call void @llvm.dbg.value(metadata i64 %nkey, metadata !216, metadata !DIExpression()), !dbg !219
  call void @llvm.dbg.value(metadata i1 %is_hit, metadata !217, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !219
  tail call void @STATS_LOCK() #6, !dbg !220
  %call = tail call %struct._prefix_stats* @stats_prefix_find(i8* noundef %key, i64 noundef %nkey) #9, !dbg !221
  call void @llvm.dbg.value(metadata %struct._prefix_stats* %call, metadata !218, metadata !DIExpression()), !dbg !219
  %cmp.not = icmp eq %struct._prefix_stats* %call, null, !dbg !222
  br i1 %cmp.not, label %if.end3, label %if.then, !dbg !224

if.then:                                          ; preds = %entry
  %num_gets = getelementptr inbounds %struct._prefix_stats, %struct._prefix_stats* %call, i64 0, i32 2, !dbg !225
  %0 = load i64, i64* %num_gets, align 8, !dbg !227, !tbaa !228
  %inc = add i64 %0, 1, !dbg !227
  store i64 %inc, i64* %num_gets, align 8, !dbg !227, !tbaa !228
  br i1 %is_hit, label %if.then1, label %if.end3, !dbg !229

if.then1:                                         ; preds = %if.then
  %num_hits = getelementptr inbounds %struct._prefix_stats, %struct._prefix_stats* %call, i64 0, i32 5, !dbg !230
  %1 = load i64, i64* %num_hits, align 8, !dbg !233, !tbaa !234
  %inc2 = add i64 %1, 1, !dbg !233
  store i64 %inc2, i64* %num_hits, align 8, !dbg !233, !tbaa !234
  br label %if.end3, !dbg !235

if.end3:                                          ; preds = %if.then, %if.then1, %entry
  tail call void @STATS_UNLOCK() #6, !dbg !236
  ret void, !dbg !237
}

declare !dbg !238 dso_local void @STATS_LOCK() local_unnamed_addr #4

declare !dbg !240 dso_local void @STATS_UNLOCK() local_unnamed_addr #4

; Function Attrs: noinline nounwind uwtable
define dso_local void @stats_prefix_record_delete(i8* noundef %key, i64 noundef %nkey) local_unnamed_addr #0 !dbg !241 {
entry:
  call void @llvm.dbg.value(metadata i8* %key, metadata !245, metadata !DIExpression()), !dbg !248
  call void @llvm.dbg.value(metadata i64 %nkey, metadata !246, metadata !DIExpression()), !dbg !248
  tail call void @STATS_LOCK() #6, !dbg !249
  %call = tail call %struct._prefix_stats* @stats_prefix_find(i8* noundef %key, i64 noundef %nkey) #9, !dbg !250
  call void @llvm.dbg.value(metadata %struct._prefix_stats* %call, metadata !247, metadata !DIExpression()), !dbg !248
  %cmp.not = icmp eq %struct._prefix_stats* %call, null, !dbg !251
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !253

if.then:                                          ; preds = %entry
  %num_deletes = getelementptr inbounds %struct._prefix_stats, %struct._prefix_stats* %call, i64 0, i32 4, !dbg !254
  %0 = load i64, i64* %num_deletes, align 8, !dbg !256, !tbaa !257
  %inc = add i64 %0, 1, !dbg !256
  store i64 %inc, i64* %num_deletes, align 8, !dbg !256, !tbaa !257
  br label %if.end, !dbg !258

if.end:                                           ; preds = %if.then, %entry
  tail call void @STATS_UNLOCK() #6, !dbg !259
  ret void, !dbg !260
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @stats_prefix_record_set(i8* noundef %key, i64 noundef %nkey) local_unnamed_addr #0 !dbg !261 {
entry:
  call void @llvm.dbg.value(metadata i8* %key, metadata !263, metadata !DIExpression()), !dbg !266
  call void @llvm.dbg.value(metadata i64 %nkey, metadata !264, metadata !DIExpression()), !dbg !266
  tail call void @STATS_LOCK() #6, !dbg !267
  %call = tail call %struct._prefix_stats* @stats_prefix_find(i8* noundef %key, i64 noundef %nkey) #9, !dbg !268
  call void @llvm.dbg.value(metadata %struct._prefix_stats* %call, metadata !265, metadata !DIExpression()), !dbg !266
  %cmp.not = icmp eq %struct._prefix_stats* %call, null, !dbg !269
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !271

if.then:                                          ; preds = %entry
  %num_sets = getelementptr inbounds %struct._prefix_stats, %struct._prefix_stats* %call, i64 0, i32 3, !dbg !272
  %0 = load i64, i64* %num_sets, align 8, !dbg !274, !tbaa !275
  %inc = add i64 %0, 1, !dbg !274
  store i64 %inc, i64* %num_sets, align 8, !dbg !274, !tbaa !275
  br label %if.end, !dbg !276

if.end:                                           ; preds = %if.then, %entry
  tail call void @STATS_UNLOCK() #6, !dbg !277
  ret void, !dbg !278
}

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @stats_prefix_dump(i32* nocapture noundef writeonly %length) local_unnamed_addr #0 !dbg !279 {
entry:
  call void @llvm.dbg.value(metadata i32* %length, metadata !284, metadata !DIExpression()), !dbg !293
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.4, i64 0, i64 0), metadata !285, metadata !DIExpression()), !dbg !293
  call void @llvm.dbg.value(metadata i64 0, metadata !290, metadata !DIExpression()), !dbg !293
  call void @llvm.dbg.value(metadata i64 0, metadata !291, metadata !DIExpression()), !dbg !293
  call void @llvm.dbg.value(metadata i64 0, metadata !292, metadata !DIExpression()), !dbg !293
  tail call void @STATS_LOCK() #6, !dbg !294
  %call = tail call i64 @strlen(i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @.str.4, i64 0, i64 0)) #8, !dbg !295
  %0 = load i32, i32* @total_prefix_size, align 4, !dbg !296, !tbaa !99
  %conv = sext i32 %0 to i64, !dbg !296
  %1 = load i32, i32* @num_prefixes, align 4, !dbg !297, !tbaa !99
  %conv1 = sext i32 %1 to i64, !dbg !297
  %add3 = add i64 %call, 62, !dbg !298
  %mul = mul i64 %add3, %conv1, !dbg !299
  %add = add i64 %call, 6, !dbg !300
  %add4 = add i64 %add, %conv, !dbg !301
  %add5 = add i64 %add4, %mul, !dbg !302
  call void @llvm.dbg.value(metadata i64 %add5, metadata !290, metadata !DIExpression()), !dbg !293
  %call6 = tail call noalias i8* @malloc(i64 noundef %add5) #6, !dbg !303
  call void @llvm.dbg.value(metadata i8* %call6, metadata !287, metadata !DIExpression()), !dbg !293
  %cmp = icmp eq i8* %call6, null, !dbg !304
  br i1 %cmp, label %if.then, label %for.body, !dbg !306

if.then:                                          ; preds = %entry
  tail call void @perror(i8* noundef getelementptr inbounds ([38 x i8], [38 x i8]* @.str.5, i64 0, i64 0)) #6, !dbg !307
  tail call void @STATS_UNLOCK() #6, !dbg !309
  br label %cleanup, !dbg !310

for.body:                                         ; preds = %entry, %for.inc26
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc26 ], [ 0, %entry ]
  %total_written.079 = phi i64 [ %total_written.1.lcssa, %for.inc26 ], [ 0, %entry ]
  %pos.078 = phi i32 [ %pos.1.lcssa, %for.inc26 ], [ 0, %entry ]
  call void @llvm.dbg.value(metadata i64 %total_written.079, metadata !292, metadata !DIExpression()), !dbg !293
  call void @llvm.dbg.value(metadata i32 %pos.078, metadata !289, metadata !DIExpression()), !dbg !293
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !288, metadata !DIExpression()), !dbg !293
  %arrayidx = getelementptr inbounds [256 x %struct._prefix_stats*], [256 x %struct._prefix_stats*]* @prefix_stats, i64 0, i64 %indvars.iv, !dbg !311
  call void @llvm.dbg.value(metadata %struct._prefix_stats* undef, metadata !286, metadata !DIExpression()), !dbg !293
  %pfs.071 = load %struct._prefix_stats*, %struct._prefix_stats** %arrayidx, align 8, !dbg !316, !tbaa !74
  call void @llvm.dbg.value(metadata i64 %total_written.079, metadata !292, metadata !DIExpression()), !dbg !293
  call void @llvm.dbg.value(metadata i32 %pos.078, metadata !289, metadata !DIExpression()), !dbg !293
  call void @llvm.dbg.value(metadata %struct._prefix_stats* %pfs.071, metadata !286, metadata !DIExpression()), !dbg !293
  %cmp11.not72 = icmp eq %struct._prefix_stats* %pfs.071, null, !dbg !317
  br i1 %cmp11.not72, label %for.inc26, label %for.body13, !dbg !319

for.body13:                                       ; preds = %for.body, %for.inc
  %pfs.075 = phi %struct._prefix_stats* [ %pfs.0, %for.inc ], [ %pfs.071, %for.body ]
  %total_written.174 = phi i64 [ %add21, %for.inc ], [ %total_written.079, %for.body ]
  %pos.173 = phi i32 [ %add19, %for.inc ], [ %pos.078, %for.body ]
  call void @llvm.dbg.value(metadata i64 %total_written.174, metadata !292, metadata !DIExpression()), !dbg !293
  call void @llvm.dbg.value(metadata i32 %pos.173, metadata !289, metadata !DIExpression()), !dbg !293
  %idx.ext = sext i32 %pos.173 to i64, !dbg !320
  %add.ptr = getelementptr inbounds i8, i8* %call6, i64 %idx.ext, !dbg !320
  %sub15 = sub i64 %add5, %idx.ext, !dbg !322
  %prefix = getelementptr inbounds %struct._prefix_stats, %struct._prefix_stats* %pfs.075, i64 0, i32 0, !dbg !323
  %2 = load i8*, i8** %prefix, align 8, !dbg !323, !tbaa !86
  %num_gets = getelementptr inbounds %struct._prefix_stats, %struct._prefix_stats* %pfs.075, i64 0, i32 2, !dbg !324
  %3 = load i64, i64* %num_gets, align 8, !dbg !324, !tbaa !228
  %num_hits = getelementptr inbounds %struct._prefix_stats, %struct._prefix_stats* %pfs.075, i64 0, i32 5, !dbg !325
  %4 = load i64, i64* %num_hits, align 8, !dbg !325, !tbaa !234
  %num_sets = getelementptr inbounds %struct._prefix_stats, %struct._prefix_stats* %pfs.075, i64 0, i32 3, !dbg !326
  %5 = load i64, i64* %num_sets, align 8, !dbg !326, !tbaa !275
  %num_deletes = getelementptr inbounds %struct._prefix_stats, %struct._prefix_stats* %pfs.075, i64 0, i32 4, !dbg !327
  %6 = load i64, i64* %num_deletes, align 8, !dbg !327, !tbaa !257
  %call16 = tail call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef nonnull %add.ptr, i64 noundef %sub15, i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @.str.4, i64 0, i64 0), i8* noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6) #6, !dbg !328
  %conv17 = sext i32 %call16 to i64, !dbg !328
  call void @llvm.dbg.value(metadata i64 %conv17, metadata !291, metadata !DIExpression()), !dbg !293
  call void @llvm.dbg.value(metadata !DIArgList(i64 %idx.ext, i64 %conv17), metadata !289, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !293
  %add21 = add i64 %total_written.174, %conv17, !dbg !329
  call void @llvm.dbg.value(metadata i64 %add21, metadata !292, metadata !DIExpression()), !dbg !293
  %cmp22 = icmp ult i64 %add21, %add5, !dbg !330
  br i1 %cmp22, label %for.inc, label %if.else, !dbg !333

if.else:                                          ; preds = %for.body13
  tail call void @__assert_fail(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0), i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 noundef 161, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @__PRETTY_FUNCTION__.stats_prefix_dump, i64 0, i64 0)) #7, !dbg !330
  unreachable, !dbg !330

for.inc:                                          ; preds = %for.body13
  %add19 = add i32 %call16, %pos.173, !dbg !334
  call void @llvm.dbg.value(metadata i32 %add19, metadata !289, metadata !DIExpression()), !dbg !293
  %next = getelementptr inbounds %struct._prefix_stats, %struct._prefix_stats* %pfs.075, i64 0, i32 6, !dbg !335
  call void @llvm.dbg.value(metadata %struct._prefix_stats* undef, metadata !286, metadata !DIExpression()), !dbg !293
  %pfs.0 = load %struct._prefix_stats*, %struct._prefix_stats** %next, align 8, !dbg !316, !tbaa !74
  call void @llvm.dbg.value(metadata i64 %add21, metadata !292, metadata !DIExpression()), !dbg !293
  call void @llvm.dbg.value(metadata %struct._prefix_stats* %pfs.0, metadata !286, metadata !DIExpression()), !dbg !293
  %cmp11.not = icmp eq %struct._prefix_stats* %pfs.0, null, !dbg !317
  br i1 %cmp11.not, label %for.inc26, label %for.body13, !dbg !319, !llvm.loop !336

for.inc26:                                        ; preds = %for.inc, %for.body
  %pos.1.lcssa = phi i32 [ %pos.078, %for.body ], [ %add19, %for.inc ], !dbg !293
  %total_written.1.lcssa = phi i64 [ %total_written.079, %for.body ], [ %add21, %for.inc ], !dbg !293
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !338
  call void @llvm.dbg.value(metadata i64 %total_written.1.lcssa, metadata !292, metadata !DIExpression()), !dbg !293
  call void @llvm.dbg.value(metadata i32 %pos.1.lcssa, metadata !289, metadata !DIExpression()), !dbg !293
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !288, metadata !DIExpression()), !dbg !293
  %exitcond.not = icmp eq i64 %indvars.iv.next, 256, !dbg !339
  br i1 %exitcond.not, label %for.end27, label %for.body, !dbg !340, !llvm.loop !341

for.end27:                                        ; preds = %for.inc26
  tail call void @STATS_UNLOCK() #6, !dbg !343
  %idx.ext28 = sext i32 %pos.1.lcssa to i64, !dbg !344
  %add.ptr29 = getelementptr inbounds i8, i8* %call6, i64 %idx.ext28, !dbg !344
  %call30 = tail call i8* @memcpy(i8* noundef nonnull %add.ptr29, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i64 noundef 6) #6, !dbg !345
  %add31 = add nsw i32 %pos.1.lcssa, 5, !dbg !346
  store i32 %add31, i32* %length, align 4, !dbg !347, !tbaa !99
  br label %cleanup, !dbg !348

cleanup:                                          ; preds = %for.end27, %if.then
  ret i8* %call6, !dbg !349
}

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare !dbg !350 dso_local i64 @strlen(i8* noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare !dbg !353 dso_local i32 @snprintf(i8* noundef, i64 noundef, i8* noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind
declare !dbg !356 dso_local i8* @memcpy(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #5

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn nounwind "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nobuiltin nounwind "no-builtins" }
attributes #7 = { nobuiltin noreturn nounwind "no-builtins" }
attributes #8 = { nobuiltin nounwind readonly willreturn "no-builtins" }
attributes #9 = { nobuiltin "no-builtins" }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!38, !39, !40, !41}
!llvm.ident = !{!42}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "prefix_delimiter", scope: !2, file: !3, line: 12, type: !17, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 14.0.0", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !4, globals: !6, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "stats_prefix.c", directory: "/home/xuheng/blackbox/llvm-test/memcached", checksumkind: CSK_MD5, checksum: "4e1572cb85fc861900f5e424355778c1")
!4 = !{!5}
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!6 = !{!7, !0, !33, !36}
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(name: "prefix_stats", scope: !2, file: !3, line: 10, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 16384, elements: !31)
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64)
!11 = !DIDerivedType(tag: DW_TAG_typedef, name: "PREFIX_STATS", file: !12, line: 41, baseType: !13)
!12 = !DIFile(filename: "./stats_prefix.h", directory: "/home/xuheng/blackbox/llvm-test/memcached", checksumkind: CSK_MD5, checksum: "c26de3f3a40668b5f799218415be0cc4")
!13 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_prefix_stats", file: !12, line: 42, size: 448, elements: !14)
!14 = !{!15, !18, !22, !27, !28, !29, !30}
!15 = !DIDerivedType(tag: DW_TAG_member, name: "prefix", scope: !13, file: !12, line: 43, baseType: !16, size: 64)
!16 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 64)
!17 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!18 = !DIDerivedType(tag: DW_TAG_member, name: "prefix_len", scope: !13, file: !12, line: 44, baseType: !19, size: 64, offset: 64)
!19 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !20, line: 46, baseType: !21)
!20 = !DIFile(filename: "VeriFrame/LLVMUtils/llvm/lib/clang/14.0.0/include/stddef.h", directory: "/home/xuheng", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!21 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!22 = !DIDerivedType(tag: DW_TAG_member, name: "num_gets", scope: !13, file: !12, line: 45, baseType: !23, size: 64, offset: 128)
!23 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !24, line: 27, baseType: !25)
!24 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "d3ea318a915682aaf6645ec16ac9f991")
!25 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !26, line: 45, baseType: !21)
!26 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "f6304b1a6dcfc6bee76e9a51043b5090")
!27 = !DIDerivedType(tag: DW_TAG_member, name: "num_sets", scope: !13, file: !12, line: 46, baseType: !23, size: 64, offset: 192)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "num_deletes", scope: !13, file: !12, line: 47, baseType: !23, size: 64, offset: 256)
!29 = !DIDerivedType(tag: DW_TAG_member, name: "num_hits", scope: !13, file: !12, line: 48, baseType: !23, size: 64, offset: 320)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !13, file: !12, line: 49, baseType: !10, size: 64, offset: 384)
!31 = !{!32}
!32 = !DISubrange(count: 256)
!33 = !DIGlobalVariableExpression(var: !34, expr: !DIExpression())
!34 = distinct !DIGlobalVariable(name: "num_prefixes", scope: !2, file: !3, line: 13, type: !35, isLocal: true, isDefinition: true)
!35 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!36 = !DIGlobalVariableExpression(var: !37, expr: !DIExpression())
!37 = distinct !DIGlobalVariable(name: "total_prefix_size", scope: !2, file: !3, line: 14, type: !35, isLocal: true, isDefinition: true)
!38 = !{i32 7, !"Dwarf Version", i32 5}
!39 = !{i32 2, !"Debug Info Version", i32 3}
!40 = !{i32 1, !"wchar_size", i32 4}
!41 = !{i32 7, !"uwtable", i32 1}
!42 = !{!"clang version 14.0.0"}
!43 = distinct !DISubprogram(name: "stats_prefix_init", scope: !3, file: !3, line: 16, type: !44, scopeLine: 16, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !46)
!44 = !DISubroutineType(types: !45)
!45 = !{null, !17}
!46 = !{!47}
!47 = !DILocalVariable(name: "delimiter", arg: 1, scope: !43, file: !3, line: 16, type: !17)
!48 = !DILocation(line: 0, scope: !43)
!49 = !DILocation(line: 17, column: 22, scope: !43)
!50 = !{!51, !51, i64 0}
!51 = !{!"omnipotent char", !52, i64 0}
!52 = !{!"Simple C/C++ TBAA"}
!53 = !DILocation(line: 18, column: 5, scope: !43)
!54 = !DILocation(line: 19, column: 1, scope: !43)
!55 = !DISubprogram(name: "memset", scope: !56, file: !56, line: 61, type: !57, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !59)
!56 = !DIFile(filename: "/usr/include/string.h", directory: "", checksumkind: CSK_MD5, checksum: "61f60112cf5c0a45c54ea1f595add24c")
!57 = !DISubroutineType(types: !58)
!58 = !{!5, !5, !35, !19}
!59 = !{}
!60 = distinct !DISubprogram(name: "stats_prefix_clear", scope: !3, file: !3, line: 21, type: !61, scopeLine: 21, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !63)
!61 = !DISubroutineType(types: !62)
!62 = !{null}
!63 = !{!64, !65, !69}
!64 = !DILocalVariable(name: "i", scope: !60, file: !3, line: 22, type: !35)
!65 = !DILocalVariable(name: "cur", scope: !66, file: !3, line: 25, type: !10)
!66 = distinct !DILexicalBlock(scope: !67, file: !3, line: 24, column: 44)
!67 = distinct !DILexicalBlock(scope: !68, file: !3, line: 24, column: 5)
!68 = distinct !DILexicalBlock(scope: !60, file: !3, line: 24, column: 5)
!69 = !DILocalVariable(name: "next", scope: !66, file: !3, line: 25, type: !10)
!70 = !DILocation(line: 0, scope: !60)
!71 = !DILocation(line: 24, column: 5, scope: !68)
!72 = !DILocation(line: 26, column: 20, scope: !73)
!73 = distinct !DILexicalBlock(scope: !66, file: !3, line: 26, column: 9)
!74 = !{!75, !75, i64 0}
!75 = !{!"any pointer", !51, i64 0}
!76 = !DILocation(line: 0, scope: !66)
!77 = !DILocation(line: 26, column: 41, scope: !78)
!78 = distinct !DILexicalBlock(scope: !73, file: !3, line: 26, column: 9)
!79 = !DILocation(line: 26, column: 9, scope: !73)
!80 = !DILocation(line: 27, column: 25, scope: !81)
!81 = distinct !DILexicalBlock(scope: !78, file: !3, line: 26, column: 62)
!82 = !{!83, !75, i64 48}
!83 = !{!"_prefix_stats", !75, i64 0, !84, i64 8, !84, i64 16, !84, i64 24, !84, i64 32, !84, i64 40, !75, i64 48}
!84 = !{!"long", !51, i64 0}
!85 = !DILocation(line: 28, column: 23, scope: !81)
!86 = !{!83, !75, i64 0}
!87 = !DILocation(line: 28, column: 13, scope: !81)
!88 = !DILocation(line: 29, column: 18, scope: !81)
!89 = !DILocation(line: 29, column: 13, scope: !81)
!90 = distinct !{!90, !79, !91, !92}
!91 = !DILocation(line: 30, column: 9, scope: !73)
!92 = !{!"llvm.loop.mustprogress"}
!93 = !DILocation(line: 31, column: 25, scope: !66)
!94 = !DILocation(line: 24, column: 40, scope: !67)
!95 = !DILocation(line: 24, column: 19, scope: !67)
!96 = distinct !{!96, !71, !97, !92}
!97 = !DILocation(line: 32, column: 5, scope: !68)
!98 = !DILocation(line: 33, column: 18, scope: !60)
!99 = !{!100, !100, i64 0}
!100 = !{!"int", !51, i64 0}
!101 = !DILocation(line: 34, column: 23, scope: !60)
!102 = !DILocation(line: 35, column: 1, scope: !60)
!103 = !DISubprogram(name: "free", scope: !104, file: !104, line: 565, type: !105, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !59)
!104 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "f0db66726d35051e5af2525f5b33bd81")
!105 = !DISubroutineType(types: !106)
!106 = !{null, !5}
!107 = distinct !DISubprogram(name: "stats_prefix_find", scope: !3, file: !3, line: 37, type: !108, scopeLine: 37, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !113)
!108 = !DISubroutineType(types: !109)
!109 = !{!10, !110, !112}
!110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !111, size: 64)
!111 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !17)
!112 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !19)
!113 = !{!114, !115, !116, !117, !121, !122}
!114 = !DILocalVariable(name: "key", arg: 1, scope: !107, file: !3, line: 37, type: !110)
!115 = !DILocalVariable(name: "nkey", arg: 2, scope: !107, file: !3, line: 37, type: !112)
!116 = !DILocalVariable(name: "pfs", scope: !107, file: !3, line: 38, type: !10)
!117 = !DILocalVariable(name: "hashval", scope: !107, file: !3, line: 39, type: !118)
!118 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !24, line: 26, baseType: !119)
!119 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !26, line: 42, baseType: !120)
!120 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!121 = !DILocalVariable(name: "length", scope: !107, file: !3, line: 40, type: !19)
!122 = !DILocalVariable(name: "bailout", scope: !107, file: !3, line: 41, type: !123)
!123 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!124 = !DILocation(line: 0, scope: !107)
!125 = !DILocation(line: 43, column: 5, scope: !126)
!126 = distinct !DILexicalBlock(scope: !127, file: !3, line: 43, column: 5)
!127 = distinct !DILexicalBlock(scope: !107, file: !3, line: 43, column: 5)
!128 = !DILocation(line: 43, column: 5, scope: !127)
!129 = !DILocation(line: 45, column: 29, scope: !130)
!130 = distinct !DILexicalBlock(scope: !131, file: !3, line: 45, column: 5)
!131 = distinct !DILexicalBlock(scope: !107, file: !3, line: 45, column: 5)
!132 = !DILocation(line: 45, column: 36, scope: !130)
!133 = !DILocation(line: 45, column: 39, scope: !130)
!134 = !DILocation(line: 45, column: 51, scope: !130)
!135 = !DILocation(line: 45, column: 5, scope: !131)
!136 = !DILocation(line: 46, column: 25, scope: !137)
!137 = distinct !DILexicalBlock(scope: !138, file: !3, line: 46, column: 13)
!138 = distinct !DILexicalBlock(scope: !130, file: !3, line: 45, column: 70)
!139 = !DILocation(line: 46, column: 13, scope: !138)
!140 = !DILocation(line: 45, column: 66, scope: !130)
!141 = distinct !{!141, !135, !142, !92}
!142 = !DILocation(line: 50, column: 5, scope: !131)
!143 = !DILocation(line: 56, column: 15, scope: !107)
!144 = !DILocation(line: 56, column: 33, scope: !107)
!145 = !DILocation(line: 58, column: 16, scope: !146)
!146 = distinct !DILexicalBlock(scope: !107, file: !3, line: 58, column: 5)
!147 = !DILocation(line: 0, scope: !146)
!148 = !DILocation(line: 58, column: 44, scope: !149)
!149 = distinct !DILexicalBlock(scope: !146, file: !3, line: 58, column: 5)
!150 = !DILocation(line: 58, column: 5, scope: !146)
!151 = !DILocation(line: 59, column: 26, scope: !152)
!152 = distinct !DILexicalBlock(scope: !153, file: !3, line: 59, column: 13)
!153 = distinct !DILexicalBlock(scope: !149, file: !3, line: 58, column: 69)
!154 = !DILocation(line: 59, column: 13, scope: !152)
!155 = !DILocation(line: 59, column: 47, scope: !152)
!156 = !DILocation(line: 59, column: 13, scope: !153)
!157 = !DILocation(line: 58, column: 63, scope: !149)
!158 = distinct !{!158, !150, !159, !92}
!159 = !DILocation(line: 61, column: 5, scope: !146)
!160 = !DILocation(line: 63, column: 11, scope: !107)
!161 = !DILocation(line: 64, column: 14, scope: !162)
!162 = distinct !DILexicalBlock(scope: !107, file: !3, line: 64, column: 9)
!163 = !DILocation(line: 64, column: 9, scope: !107)
!164 = !DILocation(line: 65, column: 9, scope: !165)
!165 = distinct !DILexicalBlock(scope: !162, file: !3, line: 64, column: 22)
!166 = !DILocation(line: 66, column: 9, scope: !165)
!167 = !DILocation(line: 69, column: 33, scope: !107)
!168 = !DILocation(line: 69, column: 19, scope: !107)
!169 = !DILocation(line: 69, column: 10, scope: !107)
!170 = !DILocation(line: 69, column: 17, scope: !107)
!171 = !DILocation(line: 70, column: 14, scope: !172)
!172 = distinct !DILexicalBlock(scope: !107, file: !3, line: 70, column: 9)
!173 = !DILocation(line: 70, column: 9, scope: !107)
!174 = !DILocation(line: 71, column: 9, scope: !175)
!175 = distinct !DILexicalBlock(scope: !172, file: !3, line: 70, column: 30)
!176 = !DILocation(line: 72, column: 9, scope: !175)
!177 = !DILocation(line: 73, column: 9, scope: !175)
!178 = !DILocation(line: 76, column: 5, scope: !107)
!179 = !DILocation(line: 77, column: 5, scope: !107)
!180 = !DILocation(line: 77, column: 25, scope: !107)
!181 = !DILocation(line: 78, column: 10, scope: !107)
!182 = !DILocation(line: 78, column: 21, scope: !107)
!183 = !{!83, !84, i64 8}
!184 = !DILocation(line: 80, column: 17, scope: !107)
!185 = !DILocation(line: 80, column: 10, scope: !107)
!186 = !DILocation(line: 80, column: 15, scope: !107)
!187 = !DILocation(line: 81, column: 27, scope: !107)
!188 = !DILocation(line: 83, column: 17, scope: !107)
!189 = !DILocation(line: 84, column: 23, scope: !107)
!190 = !DILocation(line: 86, column: 5, scope: !107)
!191 = !DILocation(line: 87, column: 1, scope: !107)
!192 = !DISubprogram(name: "strncmp", scope: !56, file: !56, line: 140, type: !193, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !59)
!193 = !DISubroutineType(types: !194)
!194 = !{!35, !110, !110, !19}
!195 = !DISubprogram(name: "calloc", scope: !104, file: !104, line: 542, type: !196, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !59)
!196 = !DISubroutineType(types: !197)
!197 = !{!5, !19, !19}
!198 = !DISubprogram(name: "perror", scope: !199, file: !199, line: 775, type: !200, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !59)
!199 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "5b917eded35ce2507d1e294bf8cb74d7")
!200 = !DISubroutineType(types: !201)
!201 = !{null, !110}
!202 = !DISubprogram(name: "malloc", scope: !104, file: !104, line: 539, type: !203, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !59)
!203 = !DISubroutineType(types: !204)
!204 = !{!5, !19}
!205 = !DISubprogram(name: "strncpy", scope: !56, file: !56, line: 125, type: !206, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !59)
!206 = !DISubroutineType(types: !207)
!207 = !{!16, !208, !209, !19}
!208 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !16)
!209 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !110)
!210 = distinct !DISubprogram(name: "stats_prefix_record_get", scope: !3, file: !3, line: 89, type: !211, scopeLine: 89, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !214)
!211 = !DISubroutineType(types: !212)
!212 = !{null, !110, !112, !213}
!213 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !123)
!214 = !{!215, !216, !217, !218}
!215 = !DILocalVariable(name: "key", arg: 1, scope: !210, file: !3, line: 89, type: !110)
!216 = !DILocalVariable(name: "nkey", arg: 2, scope: !210, file: !3, line: 89, type: !112)
!217 = !DILocalVariable(name: "is_hit", arg: 3, scope: !210, file: !3, line: 89, type: !213)
!218 = !DILocalVariable(name: "pfs", scope: !210, file: !3, line: 90, type: !10)
!219 = !DILocation(line: 0, scope: !210)
!220 = !DILocation(line: 92, column: 5, scope: !210)
!221 = !DILocation(line: 93, column: 11, scope: !210)
!222 = !DILocation(line: 94, column: 14, scope: !223)
!223 = distinct !DILexicalBlock(scope: !210, file: !3, line: 94, column: 9)
!224 = !DILocation(line: 94, column: 9, scope: !210)
!225 = !DILocation(line: 95, column: 14, scope: !226)
!226 = distinct !DILexicalBlock(scope: !223, file: !3, line: 94, column: 22)
!227 = !DILocation(line: 95, column: 22, scope: !226)
!228 = !{!83, !84, i64 16}
!229 = !DILocation(line: 96, column: 13, scope: !226)
!230 = !DILocation(line: 97, column: 18, scope: !231)
!231 = distinct !DILexicalBlock(scope: !232, file: !3, line: 96, column: 21)
!232 = distinct !DILexicalBlock(scope: !226, file: !3, line: 96, column: 13)
!233 = !DILocation(line: 97, column: 26, scope: !231)
!234 = !{!83, !84, i64 40}
!235 = !DILocation(line: 98, column: 9, scope: !231)
!236 = !DILocation(line: 100, column: 5, scope: !210)
!237 = !DILocation(line: 101, column: 1, scope: !210)
!238 = !DISubprogram(name: "STATS_LOCK", scope: !239, file: !239, line: 991, type: !61, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !59)
!239 = !DIFile(filename: "./memcached.h", directory: "/home/xuheng/blackbox/llvm-test/memcached", checksumkind: CSK_MD5, checksum: "9260b30e1b6ff2e5471cc4f8f6971051")
!240 = !DISubprogram(name: "STATS_UNLOCK", scope: !239, file: !239, line: 992, type: !61, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !59)
!241 = distinct !DISubprogram(name: "stats_prefix_record_delete", scope: !3, file: !3, line: 103, type: !242, scopeLine: 103, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !244)
!242 = !DISubroutineType(types: !243)
!243 = !{null, !110, !112}
!244 = !{!245, !246, !247}
!245 = !DILocalVariable(name: "key", arg: 1, scope: !241, file: !3, line: 103, type: !110)
!246 = !DILocalVariable(name: "nkey", arg: 2, scope: !241, file: !3, line: 103, type: !112)
!247 = !DILocalVariable(name: "pfs", scope: !241, file: !3, line: 104, type: !10)
!248 = !DILocation(line: 0, scope: !241)
!249 = !DILocation(line: 106, column: 5, scope: !241)
!250 = !DILocation(line: 107, column: 11, scope: !241)
!251 = !DILocation(line: 108, column: 14, scope: !252)
!252 = distinct !DILexicalBlock(scope: !241, file: !3, line: 108, column: 9)
!253 = !DILocation(line: 108, column: 9, scope: !241)
!254 = !DILocation(line: 109, column: 14, scope: !255)
!255 = distinct !DILexicalBlock(scope: !252, file: !3, line: 108, column: 22)
!256 = !DILocation(line: 109, column: 25, scope: !255)
!257 = !{!83, !84, i64 32}
!258 = !DILocation(line: 110, column: 5, scope: !255)
!259 = !DILocation(line: 111, column: 5, scope: !241)
!260 = !DILocation(line: 112, column: 1, scope: !241)
!261 = distinct !DISubprogram(name: "stats_prefix_record_set", scope: !3, file: !3, line: 114, type: !242, scopeLine: 114, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !262)
!262 = !{!263, !264, !265}
!263 = !DILocalVariable(name: "key", arg: 1, scope: !261, file: !3, line: 114, type: !110)
!264 = !DILocalVariable(name: "nkey", arg: 2, scope: !261, file: !3, line: 114, type: !112)
!265 = !DILocalVariable(name: "pfs", scope: !261, file: !3, line: 115, type: !10)
!266 = !DILocation(line: 0, scope: !261)
!267 = !DILocation(line: 117, column: 5, scope: !261)
!268 = !DILocation(line: 118, column: 11, scope: !261)
!269 = !DILocation(line: 119, column: 14, scope: !270)
!270 = distinct !DILexicalBlock(scope: !261, file: !3, line: 119, column: 9)
!271 = !DILocation(line: 119, column: 9, scope: !261)
!272 = !DILocation(line: 120, column: 14, scope: !273)
!273 = distinct !DILexicalBlock(scope: !270, file: !3, line: 119, column: 22)
!274 = !DILocation(line: 120, column: 22, scope: !273)
!275 = !{!83, !84, i64 24}
!276 = !DILocation(line: 121, column: 5, scope: !273)
!277 = !DILocation(line: 122, column: 5, scope: !261)
!278 = !DILocation(line: 123, column: 1, scope: !261)
!279 = distinct !DISubprogram(name: "stats_prefix_dump", scope: !3, file: !3, line: 125, type: !280, scopeLine: 125, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !283)
!280 = !DISubroutineType(types: !281)
!281 = !{!16, !282}
!282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !35, size: 64)
!283 = !{!284, !285, !286, !287, !288, !289, !290, !291, !292}
!284 = !DILocalVariable(name: "length", arg: 1, scope: !279, file: !3, line: 125, type: !282)
!285 = !DILocalVariable(name: "format", scope: !279, file: !3, line: 126, type: !110)
!286 = !DILocalVariable(name: "pfs", scope: !279, file: !3, line: 127, type: !10)
!287 = !DILocalVariable(name: "buf", scope: !279, file: !3, line: 128, type: !16)
!288 = !DILocalVariable(name: "i", scope: !279, file: !3, line: 129, type: !35)
!289 = !DILocalVariable(name: "pos", scope: !279, file: !3, line: 129, type: !35)
!290 = !DILocalVariable(name: "size", scope: !279, file: !3, line: 130, type: !19)
!291 = !DILocalVariable(name: "written", scope: !279, file: !3, line: 130, type: !19)
!292 = !DILocalVariable(name: "total_written", scope: !279, file: !3, line: 132, type: !19)
!293 = !DILocation(line: 0, scope: !279)
!294 = !DILocation(line: 140, column: 5, scope: !279)
!295 = !DILocation(line: 141, column: 12, scope: !279)
!296 = !DILocation(line: 141, column: 29, scope: !279)
!297 = !DILocation(line: 142, column: 12, scope: !279)
!298 = !DILocation(line: 143, column: 28, scope: !279)
!299 = !DILocation(line: 142, column: 25, scope: !279)
!300 = !DILocation(line: 141, column: 27, scope: !279)
!301 = !DILocation(line: 141, column: 47, scope: !279)
!302 = !DILocation(line: 144, column: 28, scope: !279)
!303 = !DILocation(line: 145, column: 11, scope: !279)
!304 = !DILocation(line: 146, column: 14, scope: !305)
!305 = distinct !DILexicalBlock(scope: !279, file: !3, line: 146, column: 9)
!306 = !DILocation(line: 146, column: 9, scope: !279)
!307 = !DILocation(line: 147, column: 9, scope: !308)
!308 = distinct !DILexicalBlock(scope: !305, file: !3, line: 146, column: 22)
!309 = !DILocation(line: 148, column: 9, scope: !308)
!310 = !DILocation(line: 149, column: 9, scope: !308)
!311 = !DILocation(line: 154, column: 20, scope: !312)
!312 = distinct !DILexicalBlock(scope: !313, file: !3, line: 154, column: 9)
!313 = distinct !DILexicalBlock(scope: !314, file: !3, line: 153, column: 44)
!314 = distinct !DILexicalBlock(scope: !315, file: !3, line: 153, column: 5)
!315 = distinct !DILexicalBlock(scope: !279, file: !3, line: 153, column: 5)
!316 = !DILocation(line: 0, scope: !312)
!317 = !DILocation(line: 154, column: 42, scope: !318)
!318 = distinct !DILexicalBlock(scope: !312, file: !3, line: 154, column: 9)
!319 = !DILocation(line: 154, column: 9, scope: !312)
!320 = !DILocation(line: 155, column: 36, scope: !321)
!321 = distinct !DILexicalBlock(scope: !318, file: !3, line: 154, column: 67)
!322 = !DILocation(line: 155, column: 47, scope: !321)
!323 = !DILocation(line: 156, column: 33, scope: !321)
!324 = !DILocation(line: 156, column: 46, scope: !321)
!325 = !DILocation(line: 156, column: 61, scope: !321)
!326 = !DILocation(line: 157, column: 33, scope: !321)
!327 = !DILocation(line: 157, column: 48, scope: !321)
!328 = !DILocation(line: 155, column: 23, scope: !321)
!329 = !DILocation(line: 160, column: 27, scope: !321)
!330 = !DILocation(line: 161, column: 13, scope: !331)
!331 = distinct !DILexicalBlock(scope: !332, file: !3, line: 161, column: 13)
!332 = distinct !DILexicalBlock(scope: !321, file: !3, line: 161, column: 13)
!333 = !DILocation(line: 161, column: 13, scope: !332)
!334 = !DILocation(line: 158, column: 17, scope: !321)
!335 = !DILocation(line: 154, column: 61, scope: !318)
!336 = distinct !{!336, !319, !337, !92}
!337 = !DILocation(line: 163, column: 9, scope: !312)
!338 = !DILocation(line: 153, column: 40, scope: !314)
!339 = !DILocation(line: 153, column: 19, scope: !314)
!340 = !DILocation(line: 153, column: 5, scope: !315)
!341 = distinct !{!341, !340, !342, !92}
!342 = !DILocation(line: 164, column: 5, scope: !315)
!343 = !DILocation(line: 166, column: 5, scope: !279)
!344 = !DILocation(line: 167, column: 16, scope: !279)
!345 = !DILocation(line: 167, column: 5, scope: !279)
!346 = !DILocation(line: 169, column: 19, scope: !279)
!347 = !DILocation(line: 169, column: 13, scope: !279)
!348 = !DILocation(line: 170, column: 5, scope: !279)
!349 = !DILocation(line: 171, column: 1, scope: !279)
!350 = !DISubprogram(name: "strlen", scope: !56, file: !56, line: 385, type: !351, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !59)
!351 = !DISubroutineType(types: !352)
!352 = !{!19, !110}
!353 = !DISubprogram(name: "snprintf", scope: !199, file: !199, line: 354, type: !354, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !59)
!354 = !DISubroutineType(types: !355)
!355 = !{!35, !208, !19, !209, null}
!356 = !DISubprogram(name: "memcpy", scope: !56, file: !56, line: 43, type: !357, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !59)
!357 = !DISubroutineType(types: !358)
!358 = !{!5, !359, !360, !19}
!359 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !5)
!360 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !361)
!361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !362, size: 64)
!362 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
