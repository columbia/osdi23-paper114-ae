; ModuleID = 'util.c'
source_filename = "util.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@uriencode_str = internal global [768 x i8] zeroinitializer, align 16, !dbg !0
@uriencode_map = internal unnamed_addr global [256 x i8*] zeroinitializer, align 16, !dbg !32
@.str = private unnamed_addr constant [9 x i8] c"%%%02hhX\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"out != NULL\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"util.c\00", align 1
@__PRETTY_FUNCTION__.safe_strtoull = private unnamed_addr constant [46 x i8] c"_Bool safe_strtoull(const char *, uint64_t *)\00", align 1
@__PRETTY_FUNCTION__.safe_strtoull_hex = private unnamed_addr constant [50 x i8] c"_Bool safe_strtoull_hex(const char *, uint64_t *)\00", align 1
@__PRETTY_FUNCTION__.safe_strtoll = private unnamed_addr constant [44 x i8] c"_Bool safe_strtoll(const char *, int64_t *)\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"out\00", align 1
@__PRETTY_FUNCTION__.safe_strtoul = private unnamed_addr constant [45 x i8] c"_Bool safe_strtoul(const char *, uint32_t *)\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"str\00", align 1
@__PRETTY_FUNCTION__.safe_strtol = private unnamed_addr constant [43 x i8] c"_Bool safe_strtol(const char *, int32_t *)\00", align 1
@__PRETTY_FUNCTION__.safe_strtod = private unnamed_addr constant [42 x i8] c"_Bool safe_strtod(const char *, double *)\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @uriencode_init() local_unnamed_addr #0 !dbg !47 {
entry:
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([768 x i8], [768 x i8]* @uriencode_str, i64 0, i64 0), metadata !52, metadata !DIExpression()), !dbg !53
  call void @llvm.dbg.value(metadata i32 0, metadata !51, metadata !DIExpression()), !dbg !53
  %call = tail call i16** @__ctype_b_loc() #13, !dbg !53
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([768 x i8], [768 x i8]* @uriencode_str, i64 0, i64 0), metadata !52, metadata !DIExpression()), !dbg !53
  call void @llvm.dbg.value(metadata i32 0, metadata !51, metadata !DIExpression()), !dbg !53
  br label %for.body, !dbg !54

for.body:                                         ; preds = %entry, %for.inc
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.next, %for.inc ]
  %str.039 = phi i8* [ getelementptr inbounds ([768 x i8], [768 x i8]* @uriencode_str, i64 0, i64 0), %entry ], [ %str.1, %for.inc ]
  call void @llvm.dbg.value(metadata i8* %str.039, metadata !52, metadata !DIExpression()), !dbg !53
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !51, metadata !DIExpression()), !dbg !53
  %0 = load i16*, i16** %call, align 8, !dbg !56, !tbaa !60
  %arrayidx = getelementptr inbounds i16, i16* %0, i64 %indvars.iv, !dbg !56
  %1 = load i16, i16* %arrayidx, align 2, !dbg !56, !tbaa !64
  %.fr35 = freeze i16 %1
  %2 = and i16 %.fr35, 8, !dbg !56
  %tobool.not = icmp eq i16 %2, 0, !dbg !56
  br i1 %tobool.not, label %switch.early.test, label %if.then, !dbg !66

switch.early.test:                                ; preds = %for.body
  %3 = trunc i64 %indvars.iv to i32, !dbg !66
  switch i32 %3, label %if.else [
    i32 126, label %if.then
    i32 95, label %if.then
    i32 46, label %if.then
    i32 45, label %if.then
  ], !dbg !66

if.then:                                          ; preds = %switch.early.test, %switch.early.test, %switch.early.test, %switch.early.test, %for.body
  %arrayidx13 = getelementptr inbounds [256 x i8*], [256 x i8*]* @uriencode_map, i64 0, i64 %indvars.iv, !dbg !67
  store i8* null, i8** %arrayidx13, align 8, !dbg !69, !tbaa !60
  br label %for.inc, !dbg !70

if.else:                                          ; preds = %switch.early.test
  %call16 = tail call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef %str.039, i64 noundef 4, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 noundef %3) #14, !dbg !71
  %arrayidx18 = getelementptr inbounds [256 x i8*], [256 x i8*]* @uriencode_map, i64 0, i64 %indvars.iv, !dbg !73
  store i8* %str.039, i8** %arrayidx18, align 8, !dbg !74, !tbaa !60
  %add.ptr = getelementptr inbounds i8, i8* %str.039, i64 3, !dbg !75
  call void @llvm.dbg.value(metadata i8* %add.ptr, metadata !52, metadata !DIExpression()), !dbg !53
  br label %for.inc

for.inc:                                          ; preds = %if.then, %if.else
  %str.1 = phi i8* [ %str.039, %if.then ], [ %add.ptr, %if.else ], !dbg !53
  call void @llvm.dbg.value(metadata i8* %str.1, metadata !52, metadata !DIExpression()), !dbg !53
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !76
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !51, metadata !DIExpression()), !dbg !53
  %exitcond.not = icmp eq i64 %indvars.iv.next, 256, !dbg !77
  br i1 %exitcond.not, label %for.end, label %for.body, !dbg !54, !llvm.loop !78

for.end:                                          ; preds = %for.inc
  ret void, !dbg !81
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
declare dso_local i16** @__ctype_b_loc() local_unnamed_addr #3

; Function Attrs: nounwind
declare !dbg !82 dso_local i32 @snprintf(i8* noundef, i64 noundef, i8* noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: noinline nounwind uwtable
define dso_local zeroext i1 @uriencode(i8* nocapture noundef readonly %src, i8* noundef %dst, i64 noundef %srclen, i64 noundef %dstlen) local_unnamed_addr #0 !dbg !94 {
entry:
  call void @llvm.dbg.value(metadata i8* %src, metadata !100, metadata !DIExpression()), !dbg !106
  call void @llvm.dbg.value(metadata i8* %dst, metadata !101, metadata !DIExpression()), !dbg !106
  call void @llvm.dbg.value(metadata i64 %srclen, metadata !102, metadata !DIExpression()), !dbg !106
  call void @llvm.dbg.value(metadata i64 %dstlen, metadata !103, metadata !DIExpression()), !dbg !106
  call void @llvm.dbg.value(metadata i64 0, metadata !105, metadata !DIExpression()), !dbg !106
  call void @llvm.dbg.value(metadata i32 0, metadata !104, metadata !DIExpression()), !dbg !106
  %cmp40.not = icmp eq i64 %srclen, 0, !dbg !107
  br i1 %cmp40.not, label %for.end, label %for.body.preheader, !dbg !110

for.body.preheader:                               ; preds = %entry
  call void @llvm.dbg.value(metadata i64 0, metadata !105, metadata !DIExpression()), !dbg !106
  call void @llvm.dbg.value(metadata i64 0, metadata !104, metadata !DIExpression()), !dbg !106
  %cmp252 = icmp ult i64 %dstlen, 4, !dbg !111
  br i1 %cmp252, label %cleanup, label %if.end, !dbg !114

for.body:                                         ; preds = %for.inc
  call void @llvm.dbg.value(metadata i64 %add14, metadata !105, metadata !DIExpression()), !dbg !106
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !104, metadata !DIExpression()), !dbg !106
  %add = add i64 %add14, 4, !dbg !115
  %cmp2 = icmp ugt i64 %add, %dstlen, !dbg !111
  br i1 %cmp2, label %cleanup.loopexit, label %if.end, !dbg !114, !llvm.loop !116

if.end:                                           ; preds = %for.body.preheader, %for.body
  %d.04254 = phi i64 [ %add14, %for.body ], [ 0, %for.body.preheader ]
  %indvars.iv53 = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %for.body.preheader ]
  call void @llvm.dbg.value(metadata i64 %d.04254, metadata !105, metadata !DIExpression()), !dbg !106
  call void @llvm.dbg.value(metadata i64 %indvars.iv53, metadata !104, metadata !DIExpression()), !dbg !106
  %arrayidx = getelementptr inbounds i8, i8* %src, i64 %indvars.iv53, !dbg !118
  %0 = load i8, i8* %arrayidx, align 1, !dbg !118, !tbaa !120
  %idxprom4 = zext i8 %0 to i64, !dbg !121
  %arrayidx5 = getelementptr inbounds [256 x i8*], [256 x i8*]* @uriencode_map, i64 0, i64 %idxprom4, !dbg !121
  %1 = load i8*, i8** %arrayidx5, align 8, !dbg !121, !tbaa !60
  %cmp6.not = icmp eq i8* %1, null, !dbg !122
  %arrayidx17 = getelementptr inbounds i8, i8* %dst, i64 %d.04254, !dbg !123
  br i1 %cmp6.not, label %if.else, label %if.then8, !dbg !124

if.then8:                                         ; preds = %if.end
  %call = tail call i8* @memcpy(i8* noundef %arrayidx17, i8* noundef nonnull %1, i64 noundef 3) #14, !dbg !125
  call void @llvm.dbg.value(metadata i64 %add14, metadata !105, metadata !DIExpression()), !dbg !106
  br label %for.inc, !dbg !127

if.else:                                          ; preds = %if.end
  store i8 %0, i8* %arrayidx17, align 1, !dbg !128, !tbaa !120
  call void @llvm.dbg.value(metadata i64 undef, metadata !105, metadata !DIExpression()), !dbg !106
  br label %for.inc

for.inc:                                          ; preds = %if.then8, %if.else
  %.sink = phi i64 [ 3, %if.then8 ], [ 1, %if.else ]
  %add14 = add i64 %d.04254, %.sink, !dbg !123
  call void @llvm.dbg.value(metadata i64 %add14, metadata !105, metadata !DIExpression()), !dbg !106
  %indvars.iv.next = add nuw i64 %indvars.iv53, 1, !dbg !130
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !104, metadata !DIExpression()), !dbg !106
  %exitcond.not = icmp eq i64 %indvars.iv.next, %srclen, !dbg !107
  br i1 %exitcond.not, label %for.end.loopexit, label %for.body, !dbg !110, !llvm.loop !116

for.end.loopexit:                                 ; preds = %for.inc
  %cmp.le61 = icmp ult i64 %indvars.iv.next, %srclen, !dbg !107
  br label %for.end, !dbg !131

for.end:                                          ; preds = %for.end.loopexit, %entry
  %d.0.lcssa = phi i64 [ 0, %entry ], [ %add14, %for.end.loopexit ], !dbg !106
  %cmp.lcssa = phi i1 [ false, %entry ], [ %cmp.le61, %for.end.loopexit ], !dbg !107
  %arrayidx20 = getelementptr inbounds i8, i8* %dst, i64 %d.0.lcssa, !dbg !131
  store i8 0, i8* %arrayidx20, align 1, !dbg !132, !tbaa !120
  br label %cleanup, !dbg !133

cleanup.loopexit:                                 ; preds = %for.body
  %cmp.le = icmp ult i64 %indvars.iv.next, %srclen, !dbg !107
  br label %cleanup, !dbg !134

cleanup:                                          ; preds = %cleanup.loopexit, %for.body.preheader, %for.end
  %cmp38 = phi i1 [ %cmp.lcssa, %for.end ], [ true, %for.body.preheader ], [ %cmp.le, %cleanup.loopexit ]
  %2 = xor i1 %cmp38, true, !dbg !134
  ret i1 %2, !dbg !134
}

; Function Attrs: nounwind
declare !dbg !135 dso_local i8* @memcpy(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind uwtable
define dso_local zeroext i1 @safe_strtoull(i8* noundef %str, i64* noundef writeonly %out) local_unnamed_addr #0 !dbg !143 {
entry:
  %endptr = alloca i8*, align 8
  call void @llvm.dbg.value(metadata i8* %str, metadata !152, metadata !DIExpression()), !dbg !157
  call void @llvm.dbg.value(metadata i64* %out, metadata !153, metadata !DIExpression()), !dbg !157
  %cmp.not = icmp eq i64* %out, null, !dbg !158
  br i1 %cmp.not, label %if.else, label %if.end, !dbg !161

if.else:                                          ; preds = %entry
  tail call void @__assert_fail(i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 noundef 50, i8* noundef getelementptr inbounds ([46 x i8], [46 x i8]* @__PRETTY_FUNCTION__.safe_strtoull, i64 0, i64 0)) #15, !dbg !158
  unreachable, !dbg !158

if.end:                                           ; preds = %entry
  %call = tail call i32* @__errno_location() #13, !dbg !162
  store i32 0, i32* %call, align 4, !dbg !163, !tbaa !164
  store i64 0, i64* %out, align 8, !dbg !166, !tbaa !167
  %0 = bitcast i8** %endptr to i8*, !dbg !169
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #16, !dbg !169
  call void @llvm.dbg.value(metadata i8** %endptr, metadata !154, metadata !DIExpression(DW_OP_deref)), !dbg !157
  %call1 = call i64 @strtoull(i8* noundef %str, i8** noundef nonnull %endptr, i32 noundef 10) #14, !dbg !170
  call void @llvm.dbg.value(metadata i64 %call1, metadata !155, metadata !DIExpression()), !dbg !157
  %1 = load i32, i32* %call, align 4, !dbg !171, !tbaa !164
  %cmp3 = icmp eq i32 %1, 34, !dbg !173
  br i1 %cmp3, label %cleanup, label %lor.lhs.false, !dbg !174

lor.lhs.false:                                    ; preds = %if.end
  %2 = load i8*, i8** %endptr, align 8, !dbg !175, !tbaa !60
  call void @llvm.dbg.value(metadata i8* %2, metadata !154, metadata !DIExpression()), !dbg !157
  %cmp4 = icmp eq i8* %2, %str, !dbg !176
  br i1 %cmp4, label %cleanup, label %if.end6, !dbg !177

if.end6:                                          ; preds = %lor.lhs.false
  %call7 = tail call i16** @__ctype_b_loc() #13, !dbg !178
  %3 = load i16*, i16** %call7, align 8, !dbg !178, !tbaa !60
  %4 = load i8, i8* %2, align 1, !dbg !178, !tbaa !120
  %5 = zext i8 %4 to i64
  %arrayidx = getelementptr inbounds i16, i16* %3, i64 %5, !dbg !178
  %6 = load i16, i16* %arrayidx, align 2, !dbg !178, !tbaa !64
  %7 = and i16 %6, 8192, !dbg !178
  %tobool.not = icmp eq i16 %7, 0, !dbg !178
  %cmp11 = icmp ne i8 %4, 0
  %or.cond = select i1 %tobool.not, i1 %cmp11, i1 false, !dbg !180
  br i1 %or.cond, label %cleanup, label %if.then15, !dbg !180

if.then15:                                        ; preds = %if.end6
  %cmp16 = icmp slt i64 %call1, 0, !dbg !181
  br i1 %cmp16, label %if.then18, label %if.end24, !dbg !184

if.then18:                                        ; preds = %if.then15
  %call19 = call i8* @strchr(i8* noundef %str, i32 noundef 45) #17, !dbg !185
  %cmp20.not = icmp eq i8* %call19, null, !dbg !188
  br i1 %cmp20.not, label %if.end24, label %cleanup, !dbg !189

if.end24:                                         ; preds = %if.then18, %if.then15
  store i64 %call1, i64* %out, align 8, !dbg !190, !tbaa !167
  br label %cleanup, !dbg !191

cleanup:                                          ; preds = %if.end6, %if.then18, %if.end, %lor.lhs.false, %if.end24
  %retval.0 = phi i1 [ true, %if.end24 ], [ false, %lor.lhs.false ], [ false, %if.end ], [ false, %if.then18 ], [ false, %if.end6 ], !dbg !157
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #16, !dbg !192
  ret i1 %retval.0, !dbg !192
}

; Function Attrs: noreturn nounwind
declare dso_local void @__assert_fail(i8* noundef, i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
declare dso_local i32* @__errno_location() local_unnamed_addr #3

; Function Attrs: nounwind
declare !dbg !193 dso_local i64 @strtoull(i8* noundef, i8** noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare !dbg !199 dso_local i8* @strchr(i8* noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind uwtable
define dso_local zeroext i1 @safe_strtoull_hex(i8* noundef %str, i64* noundef writeonly %out) local_unnamed_addr #0 !dbg !202 {
entry:
  %endptr = alloca i8*, align 8
  call void @llvm.dbg.value(metadata i8* %str, metadata !204, metadata !DIExpression()), !dbg !208
  call void @llvm.dbg.value(metadata i64* %out, metadata !205, metadata !DIExpression()), !dbg !208
  %cmp.not = icmp eq i64* %out, null, !dbg !209
  br i1 %cmp.not, label %if.else, label %if.end, !dbg !212

if.else:                                          ; preds = %entry
  tail call void @__assert_fail(i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 noundef 80, i8* noundef getelementptr inbounds ([50 x i8], [50 x i8]* @__PRETTY_FUNCTION__.safe_strtoull_hex, i64 0, i64 0)) #15, !dbg !209
  unreachable, !dbg !209

if.end:                                           ; preds = %entry
  %call = tail call i32* @__errno_location() #13, !dbg !213
  store i32 0, i32* %call, align 4, !dbg !214, !tbaa !164
  store i64 0, i64* %out, align 8, !dbg !215, !tbaa !167
  %0 = bitcast i8** %endptr to i8*, !dbg !216
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #16, !dbg !216
  call void @llvm.dbg.value(metadata i8** %endptr, metadata !206, metadata !DIExpression(DW_OP_deref)), !dbg !208
  %call1 = call i64 @strtoull(i8* noundef %str, i8** noundef nonnull %endptr, i32 noundef 16) #14, !dbg !217
  call void @llvm.dbg.value(metadata i64 %call1, metadata !207, metadata !DIExpression()), !dbg !208
  %1 = load i32, i32* %call, align 4, !dbg !218, !tbaa !164
  %cmp3 = icmp eq i32 %1, 34, !dbg !220
  br i1 %cmp3, label %cleanup, label %lor.lhs.false, !dbg !221

lor.lhs.false:                                    ; preds = %if.end
  %2 = load i8*, i8** %endptr, align 8, !dbg !222, !tbaa !60
  call void @llvm.dbg.value(metadata i8* %2, metadata !206, metadata !DIExpression()), !dbg !208
  %cmp4 = icmp eq i8* %2, %str, !dbg !223
  br i1 %cmp4, label %cleanup, label %if.end6, !dbg !224

if.end6:                                          ; preds = %lor.lhs.false
  %call7 = tail call i16** @__ctype_b_loc() #13, !dbg !225
  %3 = load i16*, i16** %call7, align 8, !dbg !225, !tbaa !60
  %4 = load i8, i8* %2, align 1, !dbg !225, !tbaa !120
  %5 = zext i8 %4 to i64
  %arrayidx = getelementptr inbounds i16, i16* %3, i64 %5, !dbg !225
  %6 = load i16, i16* %arrayidx, align 2, !dbg !225, !tbaa !64
  %7 = and i16 %6, 8192, !dbg !225
  %tobool.not = icmp eq i16 %7, 0, !dbg !225
  %cmp11 = icmp ne i8 %4, 0
  %or.cond = select i1 %tobool.not, i1 %cmp11, i1 false, !dbg !227
  br i1 %or.cond, label %cleanup, label %if.then15, !dbg !227

if.then15:                                        ; preds = %if.end6
  %cmp16 = icmp slt i64 %call1, 0, !dbg !228
  br i1 %cmp16, label %if.then18, label %if.end24, !dbg !231

if.then18:                                        ; preds = %if.then15
  %call19 = call i8* @strchr(i8* noundef %str, i32 noundef 45) #17, !dbg !232
  %cmp20.not = icmp eq i8* %call19, null, !dbg !235
  br i1 %cmp20.not, label %if.end24, label %cleanup, !dbg !236

if.end24:                                         ; preds = %if.then18, %if.then15
  store i64 %call1, i64* %out, align 8, !dbg !237, !tbaa !167
  br label %cleanup, !dbg !238

cleanup:                                          ; preds = %if.end6, %if.then18, %if.end, %lor.lhs.false, %if.end24
  %retval.0 = phi i1 [ true, %if.end24 ], [ false, %lor.lhs.false ], [ false, %if.end ], [ false, %if.then18 ], [ false, %if.end6 ], !dbg !208
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #16, !dbg !239
  ret i1 %retval.0, !dbg !239
}

; Function Attrs: noinline nounwind uwtable
define dso_local zeroext i1 @safe_strtoll(i8* noundef %str, i64* noundef writeonly %out) local_unnamed_addr #0 !dbg !240 {
entry:
  %endptr = alloca i8*, align 8
  call void @llvm.dbg.value(metadata i8* %str, metadata !248, metadata !DIExpression()), !dbg !252
  call void @llvm.dbg.value(metadata i64* %out, metadata !249, metadata !DIExpression()), !dbg !252
  %cmp.not = icmp eq i64* %out, null, !dbg !253
  br i1 %cmp.not, label %if.else, label %if.end, !dbg !256

if.else:                                          ; preds = %entry
  tail call void @__assert_fail(i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 noundef 105, i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @__PRETTY_FUNCTION__.safe_strtoll, i64 0, i64 0)) #15, !dbg !253
  unreachable, !dbg !253

if.end:                                           ; preds = %entry
  %call = tail call i32* @__errno_location() #13, !dbg !257
  store i32 0, i32* %call, align 4, !dbg !258, !tbaa !164
  store i64 0, i64* %out, align 8, !dbg !259, !tbaa !167
  %0 = bitcast i8** %endptr to i8*, !dbg !260
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #16, !dbg !260
  call void @llvm.dbg.value(metadata i8** %endptr, metadata !250, metadata !DIExpression(DW_OP_deref)), !dbg !252
  %call1 = call i64 @strtoll(i8* noundef %str, i8** noundef nonnull %endptr, i32 noundef 10) #14, !dbg !261
  call void @llvm.dbg.value(metadata i64 %call1, metadata !251, metadata !DIExpression()), !dbg !252
  %1 = load i32, i32* %call, align 4, !dbg !262, !tbaa !164
  %cmp3 = icmp eq i32 %1, 34, !dbg !264
  br i1 %cmp3, label %cleanup, label %lor.lhs.false, !dbg !265

lor.lhs.false:                                    ; preds = %if.end
  %2 = load i8*, i8** %endptr, align 8, !dbg !266, !tbaa !60
  call void @llvm.dbg.value(metadata i8* %2, metadata !250, metadata !DIExpression()), !dbg !252
  %cmp4 = icmp eq i8* %2, %str, !dbg !267
  br i1 %cmp4, label %cleanup, label %if.end6, !dbg !268

if.end6:                                          ; preds = %lor.lhs.false
  %call7 = tail call i16** @__ctype_b_loc() #13, !dbg !269
  %3 = load i16*, i16** %call7, align 8, !dbg !269, !tbaa !60
  %4 = load i8, i8* %2, align 1, !dbg !269, !tbaa !120
  %5 = zext i8 %4 to i64
  %arrayidx = getelementptr inbounds i16, i16* %3, i64 %5, !dbg !269
  %6 = load i16, i16* %arrayidx, align 2, !dbg !269, !tbaa !64
  %7 = and i16 %6, 8192, !dbg !269
  %tobool.not = icmp eq i16 %7, 0, !dbg !269
  %cmp11 = icmp ne i8 %4, 0
  %or.cond = select i1 %tobool.not, i1 %cmp11, i1 false, !dbg !271
  br i1 %or.cond, label %cleanup, label %if.then15, !dbg !271

if.then15:                                        ; preds = %if.end6
  store i64 %call1, i64* %out, align 8, !dbg !272, !tbaa !167
  br label %cleanup, !dbg !274

cleanup:                                          ; preds = %if.end6, %if.end, %lor.lhs.false, %if.then15
  %retval.0 = phi i1 [ true, %if.then15 ], [ false, %lor.lhs.false ], [ false, %if.end ], [ false, %if.end6 ], !dbg !252
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #16, !dbg !275
  ret i1 %retval.0, !dbg !275
}

; Function Attrs: nounwind
declare !dbg !276 dso_local i64 @strtoll(i8* noundef, i8** noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind uwtable
define dso_local zeroext i1 @safe_strtoul(i8* noundef %str, i32* noundef writeonly %out) local_unnamed_addr #0 !dbg !279 {
entry:
  %endptr = alloca i8*, align 8
  call void @llvm.dbg.value(metadata i8* %str, metadata !286, metadata !DIExpression()), !dbg !290
  call void @llvm.dbg.value(metadata i32* %out, metadata !287, metadata !DIExpression()), !dbg !290
  %0 = bitcast i8** %endptr to i8*, !dbg !291
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #16, !dbg !291
  call void @llvm.dbg.value(metadata i8* null, metadata !288, metadata !DIExpression()), !dbg !290
  store i8* null, i8** %endptr, align 8, !dbg !292, !tbaa !60
  call void @llvm.dbg.value(metadata i64 0, metadata !289, metadata !DIExpression()), !dbg !290
  %tobool.not = icmp eq i32* %out, null, !dbg !293
  br i1 %tobool.not, label %if.else, label %if.end, !dbg !296

if.else:                                          ; preds = %entry
  tail call void @__assert_fail(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 noundef 124, i8* noundef getelementptr inbounds ([45 x i8], [45 x i8]* @__PRETTY_FUNCTION__.safe_strtoul, i64 0, i64 0)) #15, !dbg !293
  unreachable, !dbg !293

if.end:                                           ; preds = %entry
  %tobool1.not = icmp eq i8* %str, null, !dbg !297
  br i1 %tobool1.not, label %if.else3, label %if.end4, !dbg !300

if.else3:                                         ; preds = %if.end
  tail call void @__assert_fail(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 noundef 125, i8* noundef getelementptr inbounds ([45 x i8], [45 x i8]* @__PRETTY_FUNCTION__.safe_strtoul, i64 0, i64 0)) #15, !dbg !297
  unreachable, !dbg !297

if.end4:                                          ; preds = %if.end
  store i32 0, i32* %out, align 4, !dbg !301, !tbaa !164
  %call = tail call i32* @__errno_location() #13, !dbg !302
  store i32 0, i32* %call, align 4, !dbg !303, !tbaa !164
  call void @llvm.dbg.value(metadata i8** %endptr, metadata !288, metadata !DIExpression(DW_OP_deref)), !dbg !290
  %call5 = call i64 @strtoul(i8* noundef nonnull %str, i8** noundef nonnull %endptr, i32 noundef 10) #14, !dbg !304
  call void @llvm.dbg.value(metadata i64 %call5, metadata !289, metadata !DIExpression()), !dbg !290
  %1 = load i32, i32* %call, align 4, !dbg !305, !tbaa !164
  %cmp = icmp eq i32 %1, 34, !dbg !307
  br i1 %cmp, label %cleanup, label %lor.lhs.false, !dbg !308

lor.lhs.false:                                    ; preds = %if.end4
  %2 = load i8*, i8** %endptr, align 8, !dbg !309, !tbaa !60
  call void @llvm.dbg.value(metadata i8* %2, metadata !288, metadata !DIExpression()), !dbg !290
  %cmp7 = icmp eq i8* %2, %str, !dbg !310
  br i1 %cmp7, label %cleanup, label %if.end9, !dbg !311

if.end9:                                          ; preds = %lor.lhs.false
  %call10 = tail call i16** @__ctype_b_loc() #13, !dbg !312
  %3 = load i16*, i16** %call10, align 8, !dbg !312, !tbaa !60
  %4 = load i8, i8* %2, align 1, !dbg !312, !tbaa !120
  %5 = zext i8 %4 to i64
  %arrayidx = getelementptr inbounds i16, i16* %3, i64 %5, !dbg !312
  %6 = load i16, i16* %arrayidx, align 2, !dbg !312, !tbaa !64
  %7 = and i16 %6, 8192, !dbg !312
  %tobool12.not = icmp eq i16 %7, 0, !dbg !312
  %cmp15 = icmp ne i8 %4, 0
  %or.cond = select i1 %tobool12.not, i1 %cmp15, i1 false, !dbg !314
  br i1 %or.cond, label %cleanup, label %if.then19, !dbg !314

if.then19:                                        ; preds = %if.end9
  %cmp20 = icmp slt i64 %call5, 0, !dbg !315
  br i1 %cmp20, label %if.then22, label %if.end28, !dbg !318

if.then22:                                        ; preds = %if.then19
  %call23 = call i8* @strchr(i8* noundef nonnull %str, i32 noundef 45) #17, !dbg !319
  %cmp24.not = icmp eq i8* %call23, null, !dbg !322
  br i1 %cmp24.not, label %if.end28, label %cleanup, !dbg !323

if.end28:                                         ; preds = %if.then22, %if.then19
  %conv29 = trunc i64 %call5 to i32, !dbg !324
  store i32 %conv29, i32* %out, align 4, !dbg !325, !tbaa !164
  br label %cleanup, !dbg !326

cleanup:                                          ; preds = %if.end9, %if.then22, %if.end4, %lor.lhs.false, %if.end28
  %retval.0 = phi i1 [ true, %if.end28 ], [ false, %lor.lhs.false ], [ false, %if.end4 ], [ false, %if.then22 ], [ false, %if.end9 ], !dbg !290
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #16, !dbg !327
  ret i1 %retval.0, !dbg !327
}

; Function Attrs: nounwind
declare !dbg !328 dso_local i64 @strtoul(i8* noundef, i8** noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind uwtable
define dso_local zeroext i1 @safe_strtol(i8* noundef %str, i32* noundef writeonly %out) local_unnamed_addr #0 !dbg !331 {
entry:
  %endptr = alloca i8*, align 8
  call void @llvm.dbg.value(metadata i8* %str, metadata !338, metadata !DIExpression()), !dbg !342
  call void @llvm.dbg.value(metadata i32* %out, metadata !339, metadata !DIExpression()), !dbg !342
  %cmp.not = icmp eq i32* %out, null, !dbg !343
  br i1 %cmp.not, label %if.else, label %if.end, !dbg !346

if.else:                                          ; preds = %entry
  tail call void @__assert_fail(i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 noundef 151, i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @__PRETTY_FUNCTION__.safe_strtol, i64 0, i64 0)) #15, !dbg !343
  unreachable, !dbg !343

if.end:                                           ; preds = %entry
  %call = tail call i32* @__errno_location() #13, !dbg !347
  store i32 0, i32* %call, align 4, !dbg !348, !tbaa !164
  store i32 0, i32* %out, align 4, !dbg !349, !tbaa !164
  %0 = bitcast i8** %endptr to i8*, !dbg !350
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #16, !dbg !350
  call void @llvm.dbg.value(metadata i8** %endptr, metadata !340, metadata !DIExpression(DW_OP_deref)), !dbg !342
  %call1 = call i64 @strtol(i8* noundef %str, i8** noundef nonnull %endptr, i32 noundef 10) #14, !dbg !351
  call void @llvm.dbg.value(metadata i64 %call1, metadata !341, metadata !DIExpression()), !dbg !342
  %1 = load i32, i32* %call, align 4, !dbg !352, !tbaa !164
  %cmp3 = icmp eq i32 %1, 34, !dbg !354
  br i1 %cmp3, label %cleanup, label %lor.lhs.false, !dbg !355

lor.lhs.false:                                    ; preds = %if.end
  %2 = load i8*, i8** %endptr, align 8, !dbg !356, !tbaa !60
  call void @llvm.dbg.value(metadata i8* %2, metadata !340, metadata !DIExpression()), !dbg !342
  %cmp4 = icmp eq i8* %2, %str, !dbg !357
  br i1 %cmp4, label %cleanup, label %if.end6, !dbg !358

if.end6:                                          ; preds = %lor.lhs.false
  %call7 = tail call i16** @__ctype_b_loc() #13, !dbg !359
  %3 = load i16*, i16** %call7, align 8, !dbg !359, !tbaa !60
  %4 = load i8, i8* %2, align 1, !dbg !359, !tbaa !120
  %5 = zext i8 %4 to i64
  %arrayidx = getelementptr inbounds i16, i16* %3, i64 %5, !dbg !359
  %6 = load i16, i16* %arrayidx, align 2, !dbg !359, !tbaa !64
  %7 = and i16 %6, 8192, !dbg !359
  %tobool.not = icmp eq i16 %7, 0, !dbg !359
  %cmp11 = icmp ne i8 %4, 0
  %or.cond = select i1 %tobool.not, i1 %cmp11, i1 false, !dbg !361
  br i1 %or.cond, label %cleanup, label %if.then15, !dbg !361

if.then15:                                        ; preds = %if.end6
  %conv16 = trunc i64 %call1 to i32, !dbg !362
  store i32 %conv16, i32* %out, align 4, !dbg !364, !tbaa !164
  br label %cleanup, !dbg !365

cleanup:                                          ; preds = %if.end6, %if.end, %lor.lhs.false, %if.then15
  %retval.0 = phi i1 [ true, %if.then15 ], [ false, %lor.lhs.false ], [ false, %if.end ], [ false, %if.end6 ], !dbg !342
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #16, !dbg !366
  ret i1 %retval.0, !dbg !366
}

; Function Attrs: nounwind
declare !dbg !367 dso_local i64 @strtol(i8* noundef, i8** noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind uwtable
define dso_local zeroext i1 @safe_strtod(i8* noundef %str, double* noundef writeonly %out) local_unnamed_addr #0 !dbg !370 {
entry:
  %endptr = alloca i8*, align 8
  call void @llvm.dbg.value(metadata i8* %str, metadata !376, metadata !DIExpression()), !dbg !380
  call void @llvm.dbg.value(metadata double* %out, metadata !377, metadata !DIExpression()), !dbg !380
  %cmp.not = icmp eq double* %out, null, !dbg !381
  br i1 %cmp.not, label %if.else, label %if.end, !dbg !384

if.else:                                          ; preds = %entry
  tail call void @__assert_fail(i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 noundef 168, i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @__PRETTY_FUNCTION__.safe_strtod, i64 0, i64 0)) #15, !dbg !381
  unreachable, !dbg !381

if.end:                                           ; preds = %entry
  %call = tail call i32* @__errno_location() #13, !dbg !385
  store i32 0, i32* %call, align 4, !dbg !386, !tbaa !164
  store double 0.000000e+00, double* %out, align 8, !dbg !387, !tbaa !388
  %0 = bitcast i8** %endptr to i8*, !dbg !390
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #16, !dbg !390
  call void @llvm.dbg.value(metadata i8** %endptr, metadata !378, metadata !DIExpression(DW_OP_deref)), !dbg !380
  %call1 = call double @strtod(i8* noundef %str, i8** noundef nonnull %endptr) #14, !dbg !391
  call void @llvm.dbg.value(metadata double %call1, metadata !379, metadata !DIExpression()), !dbg !380
  %1 = load i32, i32* %call, align 4, !dbg !392, !tbaa !164
  %cmp3 = icmp eq i32 %1, 34, !dbg !394
  br i1 %cmp3, label %cleanup, label %lor.lhs.false, !dbg !395

lor.lhs.false:                                    ; preds = %if.end
  %2 = load i8*, i8** %endptr, align 8, !dbg !396, !tbaa !60
  call void @llvm.dbg.value(metadata i8* %2, metadata !378, metadata !DIExpression()), !dbg !380
  %cmp4 = icmp eq i8* %2, %str, !dbg !397
  br i1 %cmp4, label %cleanup, label %if.end6, !dbg !398

if.end6:                                          ; preds = %lor.lhs.false
  %call7 = tail call i16** @__ctype_b_loc() #13, !dbg !399
  %3 = load i16*, i16** %call7, align 8, !dbg !399, !tbaa !60
  %4 = load i8, i8* %2, align 1, !dbg !399, !tbaa !120
  %5 = zext i8 %4 to i64
  %arrayidx = getelementptr inbounds i16, i16* %3, i64 %5, !dbg !399
  %6 = load i16, i16* %arrayidx, align 2, !dbg !399, !tbaa !64
  %7 = and i16 %6, 8192, !dbg !399
  %tobool.not = icmp eq i16 %7, 0, !dbg !399
  %cmp11 = icmp ne i8 %4, 0
  %or.cond = select i1 %tobool.not, i1 %cmp11, i1 false, !dbg !401
  br i1 %or.cond, label %cleanup, label %if.then15, !dbg !401

if.then15:                                        ; preds = %if.end6
  store double %call1, double* %out, align 8, !dbg !402, !tbaa !388
  br label %cleanup, !dbg !404

cleanup:                                          ; preds = %if.end6, %if.end, %lor.lhs.false, %if.then15
  %retval.0 = phi i1 [ true, %if.then15 ], [ false, %lor.lhs.false ], [ false, %if.end ], [ false, %if.end6 ], !dbg !380
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #16, !dbg !405
  ret i1 %retval.0, !dbg !405
}

; Function Attrs: nounwind
declare !dbg !406 dso_local double @strtod(i8* noundef, i8** noundef) local_unnamed_addr #4

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define dso_local zeroext i1 @safe_strcpy(i8* nocapture noundef writeonly %dst, i8* nocapture noundef readonly %src, i64 noundef %dstmax) local_unnamed_addr #7 !dbg !409 {
entry:
  call void @llvm.dbg.value(metadata i8* %dst, metadata !413, metadata !DIExpression()), !dbg !417
  call void @llvm.dbg.value(metadata i8* %src, metadata !414, metadata !DIExpression()), !dbg !417
  call void @llvm.dbg.value(metadata i64 %dstmax, metadata !415, metadata !DIExpression()), !dbg !417
  call void @llvm.dbg.value(metadata i64 0, metadata !416, metadata !DIExpression()), !dbg !417
  %sub = add i64 %dstmax, -1
  call void @llvm.dbg.value(metadata i64 0, metadata !416, metadata !DIExpression()), !dbg !417
  %cmp20.not = icmp eq i64 %sub, 0, !dbg !418
  br i1 %cmp20.not, label %for.end, label %land.rhs, !dbg !421

land.rhs:                                         ; preds = %entry, %for.body
  %x.021 = phi i64 [ %inc, %for.body ], [ 0, %entry ]
  call void @llvm.dbg.value(metadata i64 %x.021, metadata !416, metadata !DIExpression()), !dbg !417
  %arrayidx = getelementptr inbounds i8, i8* %src, i64 %x.021, !dbg !422
  %0 = load i8, i8* %arrayidx, align 1, !dbg !422, !tbaa !120
  %cmp1.not = icmp eq i8 %0, 0, !dbg !423
  br i1 %cmp1.not, label %for.end, label %for.body, !dbg !424

for.body:                                         ; preds = %land.rhs
  %arrayidx4 = getelementptr inbounds i8, i8* %dst, i64 %x.021, !dbg !425
  store i8 %0, i8* %arrayidx4, align 1, !dbg !427, !tbaa !120
  %inc = add nuw i64 %x.021, 1, !dbg !428
  call void @llvm.dbg.value(metadata i64 %inc, metadata !416, metadata !DIExpression()), !dbg !417
  %exitcond.not = icmp eq i64 %inc, %sub, !dbg !418
  br i1 %exitcond.not, label %for.end, label %land.rhs, !dbg !421, !llvm.loop !429

for.end:                                          ; preds = %land.rhs, %for.body, %entry
  %x.0.lcssa = phi i64 [ 0, %entry ], [ %sub, %for.body ], [ %x.021, %land.rhs ], !dbg !431
  %arrayidx5 = getelementptr inbounds i8, i8* %dst, i64 %x.0.lcssa, !dbg !432
  store i8 0, i8* %arrayidx5, align 1, !dbg !433, !tbaa !120
  %arrayidx6 = getelementptr inbounds i8, i8* %src, i64 %x.0.lcssa, !dbg !434
  %1 = load i8, i8* %arrayidx6, align 1, !dbg !434, !tbaa !120
  %cmp8 = icmp eq i8 %1, 0, !dbg !436
  ret i1 %cmp8, !dbg !437
}

; Function Attrs: nofree noinline norecurse nounwind uwtable
define dso_local zeroext i1 @safe_memcmp(i8* noundef %a, i8* noundef %b, i64 noundef %len) local_unnamed_addr #8 !dbg !438 {
entry:
  call void @llvm.dbg.value(metadata i8* %a, metadata !442, metadata !DIExpression()), !dbg !449
  call void @llvm.dbg.value(metadata i8* %b, metadata !443, metadata !DIExpression()), !dbg !449
  call void @llvm.dbg.value(metadata i64 %len, metadata !444, metadata !DIExpression()), !dbg !449
  call void @llvm.dbg.value(metadata i8* %a, metadata !445, metadata !DIExpression()), !dbg !449
  call void @llvm.dbg.value(metadata i8* %b, metadata !446, metadata !DIExpression()), !dbg !449
  call void @llvm.dbg.value(metadata i32 0, metadata !447, metadata !DIExpression()), !dbg !449
  call void @llvm.dbg.value(metadata i64 0, metadata !448, metadata !DIExpression()), !dbg !449
  %cmp17.not = icmp eq i64 %len, 0, !dbg !450
  br i1 %cmp17.not, label %for.end, label %for.body.preheader, !dbg !453

for.body.preheader:                               ; preds = %entry
  %0 = add i64 %len, -1, !dbg !453
  %xtraiter = and i64 %len, 3, !dbg !453
  %1 = icmp ult i64 %0, 3, !dbg !453
  br i1 %1, label %for.end.loopexit.unr-lcssa, label %for.body.preheader.new, !dbg !453

for.body.preheader.new:                           ; preds = %for.body.preheader
  %unroll_iter = and i64 %len, -4, !dbg !453
  br label %for.body, !dbg !453

for.body:                                         ; preds = %for.body, %for.body.preheader.new
  %x.019 = phi i64 [ 0, %for.body.preheader.new ], [ %inc.3, %for.body ]
  %delta.018 = phi i32 [ 0, %for.body.preheader.new ], [ %or.3, %for.body ]
  %niter = phi i64 [ 0, %for.body.preheader.new ], [ %niter.next.3, %for.body ]
  call void @llvm.dbg.value(metadata i64 %x.019, metadata !448, metadata !DIExpression()), !dbg !449
  call void @llvm.dbg.value(metadata i32 %delta.018, metadata !447, metadata !DIExpression()), !dbg !449
  %arrayidx = getelementptr inbounds i8, i8* %a, i64 %x.019, !dbg !454
  %2 = load volatile i8, i8* %arrayidx, align 1, !dbg !454, !tbaa !120
  %arrayidx1 = getelementptr inbounds i8, i8* %b, i64 %x.019, !dbg !456
  %3 = load volatile i8, i8* %arrayidx1, align 1, !dbg !456, !tbaa !120
  %xor16 = xor i8 %3, %2, !dbg !457
  %xor = zext i8 %xor16 to i32, !dbg !457
  %or = or i32 %delta.018, %xor, !dbg !458
  call void @llvm.dbg.value(metadata i32 %or, metadata !447, metadata !DIExpression()), !dbg !449
  %inc = or i64 %x.019, 1, !dbg !459
  call void @llvm.dbg.value(metadata i64 %inc, metadata !448, metadata !DIExpression()), !dbg !449
  call void @llvm.dbg.value(metadata i64 %inc, metadata !448, metadata !DIExpression()), !dbg !449
  call void @llvm.dbg.value(metadata i32 %or, metadata !447, metadata !DIExpression()), !dbg !449
  %arrayidx.1 = getelementptr inbounds i8, i8* %a, i64 %inc, !dbg !454
  %4 = load volatile i8, i8* %arrayidx.1, align 1, !dbg !454, !tbaa !120
  %arrayidx1.1 = getelementptr inbounds i8, i8* %b, i64 %inc, !dbg !456
  %5 = load volatile i8, i8* %arrayidx1.1, align 1, !dbg !456, !tbaa !120
  %xor16.1 = xor i8 %5, %4, !dbg !457
  %xor.1 = zext i8 %xor16.1 to i32, !dbg !457
  %or.1 = or i32 %or, %xor.1, !dbg !458
  call void @llvm.dbg.value(metadata i32 %or.1, metadata !447, metadata !DIExpression()), !dbg !449
  %inc.1 = or i64 %x.019, 2, !dbg !459
  call void @llvm.dbg.value(metadata i64 %inc.1, metadata !448, metadata !DIExpression()), !dbg !449
  call void @llvm.dbg.value(metadata i64 %inc.1, metadata !448, metadata !DIExpression()), !dbg !449
  call void @llvm.dbg.value(metadata i32 %or.1, metadata !447, metadata !DIExpression()), !dbg !449
  %arrayidx.2 = getelementptr inbounds i8, i8* %a, i64 %inc.1, !dbg !454
  %6 = load volatile i8, i8* %arrayidx.2, align 1, !dbg !454, !tbaa !120
  %arrayidx1.2 = getelementptr inbounds i8, i8* %b, i64 %inc.1, !dbg !456
  %7 = load volatile i8, i8* %arrayidx1.2, align 1, !dbg !456, !tbaa !120
  %xor16.2 = xor i8 %7, %6, !dbg !457
  %xor.2 = zext i8 %xor16.2 to i32, !dbg !457
  %or.2 = or i32 %or.1, %xor.2, !dbg !458
  call void @llvm.dbg.value(metadata i32 %or.2, metadata !447, metadata !DIExpression()), !dbg !449
  %inc.2 = or i64 %x.019, 3, !dbg !459
  call void @llvm.dbg.value(metadata i64 %inc.2, metadata !448, metadata !DIExpression()), !dbg !449
  call void @llvm.dbg.value(metadata i64 %inc.2, metadata !448, metadata !DIExpression()), !dbg !449
  call void @llvm.dbg.value(metadata i32 %or.2, metadata !447, metadata !DIExpression()), !dbg !449
  %arrayidx.3 = getelementptr inbounds i8, i8* %a, i64 %inc.2, !dbg !454
  %8 = load volatile i8, i8* %arrayidx.3, align 1, !dbg !454, !tbaa !120
  %arrayidx1.3 = getelementptr inbounds i8, i8* %b, i64 %inc.2, !dbg !456
  %9 = load volatile i8, i8* %arrayidx1.3, align 1, !dbg !456, !tbaa !120
  %xor16.3 = xor i8 %9, %8, !dbg !457
  %xor.3 = zext i8 %xor16.3 to i32, !dbg !457
  %or.3 = or i32 %or.2, %xor.3, !dbg !458
  call void @llvm.dbg.value(metadata i32 %or.3, metadata !447, metadata !DIExpression()), !dbg !449
  %inc.3 = add nuw i64 %x.019, 4, !dbg !459
  call void @llvm.dbg.value(metadata i64 %inc.3, metadata !448, metadata !DIExpression()), !dbg !449
  %niter.next.3 = add i64 %niter, 4, !dbg !453
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter, !dbg !453
  br i1 %niter.ncmp.3, label %for.end.loopexit.unr-lcssa, label %for.body, !dbg !453, !llvm.loop !460

for.end.loopexit.unr-lcssa:                       ; preds = %for.body, %for.body.preheader
  %or.lcssa.ph = phi i32 [ undef, %for.body.preheader ], [ %or.3, %for.body ]
  %x.019.unr = phi i64 [ 0, %for.body.preheader ], [ %inc.3, %for.body ]
  %delta.018.unr = phi i32 [ 0, %for.body.preheader ], [ %or.3, %for.body ]
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !453
  br i1 %lcmp.mod.not, label %for.end.loopexit, label %for.body.epil, !dbg !453

for.body.epil:                                    ; preds = %for.end.loopexit.unr-lcssa, %for.body.epil
  %x.019.epil = phi i64 [ %inc.epil, %for.body.epil ], [ %x.019.unr, %for.end.loopexit.unr-lcssa ]
  %delta.018.epil = phi i32 [ %or.epil, %for.body.epil ], [ %delta.018.unr, %for.end.loopexit.unr-lcssa ]
  %epil.iter = phi i64 [ %epil.iter.next, %for.body.epil ], [ 0, %for.end.loopexit.unr-lcssa ]
  call void @llvm.dbg.value(metadata i64 %x.019.epil, metadata !448, metadata !DIExpression()), !dbg !449
  call void @llvm.dbg.value(metadata i32 %delta.018.epil, metadata !447, metadata !DIExpression()), !dbg !449
  %arrayidx.epil = getelementptr inbounds i8, i8* %a, i64 %x.019.epil, !dbg !454
  %10 = load volatile i8, i8* %arrayidx.epil, align 1, !dbg !454, !tbaa !120
  %arrayidx1.epil = getelementptr inbounds i8, i8* %b, i64 %x.019.epil, !dbg !456
  %11 = load volatile i8, i8* %arrayidx1.epil, align 1, !dbg !456, !tbaa !120
  %xor16.epil = xor i8 %11, %10, !dbg !457
  %xor.epil = zext i8 %xor16.epil to i32, !dbg !457
  %or.epil = or i32 %delta.018.epil, %xor.epil, !dbg !458
  call void @llvm.dbg.value(metadata i32 %or.epil, metadata !447, metadata !DIExpression()), !dbg !449
  %inc.epil = add nuw i64 %x.019.epil, 1, !dbg !459
  call void @llvm.dbg.value(metadata i64 %inc.epil, metadata !448, metadata !DIExpression()), !dbg !449
  %epil.iter.next = add i64 %epil.iter, 1, !dbg !453
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter, !dbg !453
  br i1 %epil.iter.cmp.not, label %for.end.loopexit, label %for.body.epil, !dbg !453, !llvm.loop !462

for.end.loopexit:                                 ; preds = %for.body.epil, %for.end.loopexit.unr-lcssa
  %or.lcssa = phi i32 [ %or.lcssa.ph, %for.end.loopexit.unr-lcssa ], [ %or.epil, %for.body.epil ], !dbg !458
  %phi.cmp = icmp eq i32 %or.lcssa, 0, !dbg !464
  br label %for.end, !dbg !464

for.end:                                          ; preds = %for.end.loopexit, %entry
  %delta.0.lcssa = phi i1 [ true, %entry ], [ %phi.cmp, %for.end.loopexit ]
  ret i1 %delta.0.lcssa, !dbg !466
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @vperror(i8* noundef %fmt, ...) local_unnamed_addr #0 !dbg !467 {
entry:
  %buf = alloca [1024 x i8], align 16
  %ap = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata i8* %fmt, metadata !471, metadata !DIExpression()), !dbg !492
  %call = tail call i32* @__errno_location() #13, !dbg !493
  %0 = load i32, i32* %call, align 4, !dbg !493, !tbaa !164
  call void @llvm.dbg.value(metadata i32 %0, metadata !472, metadata !DIExpression()), !dbg !492
  %1 = getelementptr inbounds [1024 x i8], [1024 x i8]* %buf, i64 0, i64 0, !dbg !494
  call void @llvm.lifetime.start.p0i8(i64 1024, i8* nonnull %1) #16, !dbg !494
  call void @llvm.dbg.declare(metadata [1024 x i8]* %buf, metadata !473, metadata !DIExpression()), !dbg !495
  %2 = bitcast [1 x %struct.__va_list_tag]* %ap to i8*, !dbg !496
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %2) #16, !dbg !496
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %ap, metadata !477, metadata !DIExpression()), !dbg !497
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %ap, i64 0, i64 0, !dbg !498
  call void @llvm.va_start(i8* nonnull %2), !dbg !498
  %call4 = call i32 @vsnprintf(i8* noundef nonnull %1, i64 noundef 1024, i8* noundef %fmt, %struct.__va_list_tag* noundef nonnull %arraydecay) #14, !dbg !499
  %cmp = icmp eq i32 %call4, -1, !dbg !501
  br i1 %cmp, label %if.then, label %if.end, !dbg !502

if.then:                                          ; preds = %entry
  %arrayidx = getelementptr inbounds [1024 x i8], [1024 x i8]* %buf, i64 0, i64 1023, !dbg !503
  store i8 0, i8* %arrayidx, align 1, !dbg !505, !tbaa !120
  br label %if.end, !dbg !506

if.end:                                           ; preds = %if.then, %entry
  call void @llvm.va_end(i8* nonnull %2), !dbg !507
  store i32 %0, i32* %call, align 4, !dbg !508, !tbaa !164
  call void @perror(i8* noundef nonnull %1) #14, !dbg !509
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %2) #16, !dbg !510
  call void @llvm.lifetime.end.p0i8(i64 1024, i8* nonnull %1) #16, !dbg !510
  ret void, !dbg !510
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn
declare void @llvm.va_start(i8*) #9

; Function Attrs: nounwind
declare !dbg !511 dso_local i32 @vsnprintf(i8* noundef, i64 noundef, i8* noundef, %struct.__va_list_tag* noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nosync nounwind willreturn
declare void @llvm.va_end(i8*) #9

declare !dbg !515 dso_local void @perror(i8* noundef) local_unnamed_addr #10

; Function Attrs: nofree noinline norecurse nosync nounwind readnone uwtable
define dso_local i64 @ntohll(i64 noundef %val) local_unnamed_addr #11 !dbg !518 {
entry:
  call void @llvm.dbg.value(metadata i64 %val, metadata !522, metadata !DIExpression()), !dbg !523
  %call = tail call fastcc i64 @mc_swap64(i64 noundef %val) #18, !dbg !524
  ret i64 %call, !dbg !525
}

; Function Attrs: nofree noinline norecurse nosync nounwind readnone uwtable
define internal fastcc i64 @mc_swap64(i64 noundef %in) unnamed_addr #11 !dbg !526 {
entry:
  call void @llvm.dbg.value(metadata i64 %in, metadata !528, metadata !DIExpression()), !dbg !531
  call void @llvm.dbg.value(metadata i64 0, metadata !529, metadata !DIExpression()), !dbg !531
  call void @llvm.dbg.value(metadata i32 0, metadata !530, metadata !DIExpression()), !dbg !531
  call void @llvm.dbg.value(metadata i32 0, metadata !530, metadata !DIExpression()), !dbg !531
  call void @llvm.dbg.value(metadata i32 0, metadata !530, metadata !DIExpression()), !dbg !531
  call void @llvm.dbg.value(metadata i64 0, metadata !529, metadata !DIExpression()), !dbg !531
  call void @llvm.dbg.value(metadata i64 %in, metadata !528, metadata !DIExpression()), !dbg !531
  call void @llvm.dbg.value(metadata i64 %in, metadata !529, metadata !DIExpression(DW_OP_constu, 255, DW_OP_and, DW_OP_stack_value)), !dbg !531
  call void @llvm.dbg.value(metadata i64 %in, metadata !528, metadata !DIExpression(DW_OP_constu, 16, DW_OP_shr, DW_OP_stack_value)), !dbg !531
  call void @llvm.dbg.value(metadata i32 1, metadata !530, metadata !DIExpression()), !dbg !531
  call void @llvm.dbg.value(metadata i32 1, metadata !530, metadata !DIExpression()), !dbg !531
  call void @llvm.dbg.value(metadata i64 %in, metadata !529, metadata !DIExpression(DW_OP_constu, 255, DW_OP_and, DW_OP_stack_value)), !dbg !531
  call void @llvm.dbg.value(metadata i64 %in, metadata !528, metadata !DIExpression(DW_OP_constu, 16, DW_OP_shr, DW_OP_stack_value)), !dbg !531
  call void @llvm.dbg.value(metadata i16 undef, metadata !529, metadata !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !531
  call void @llvm.dbg.value(metadata i64 %in, metadata !528, metadata !DIExpression(DW_OP_constu, 16, DW_OP_shr, DW_OP_stack_value)), !dbg !531
  call void @llvm.dbg.value(metadata i32 2, metadata !530, metadata !DIExpression()), !dbg !531
  call void @llvm.dbg.value(metadata i32 2, metadata !530, metadata !DIExpression()), !dbg !531
  call void @llvm.dbg.value(metadata i16 undef, metadata !529, metadata !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !531
  call void @llvm.dbg.value(metadata i64 %in, metadata !528, metadata !DIExpression(DW_OP_constu, 16, DW_OP_shr, DW_OP_stack_value)), !dbg !531
  call void @llvm.dbg.value(metadata !DIArgList(i16 undef, i64 %in), metadata !529, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_constu, 8, DW_OP_shl, DW_OP_LLVM_arg, 1, DW_OP_constu, 16, DW_OP_shr, DW_OP_constu, 255, DW_OP_and, DW_OP_or, DW_OP_stack_value)), !dbg !531
  call void @llvm.dbg.value(metadata i64 %in, metadata !528, metadata !DIExpression(DW_OP_constu, 32, DW_OP_shr, DW_OP_stack_value)), !dbg !531
  call void @llvm.dbg.value(metadata i32 3, metadata !530, metadata !DIExpression()), !dbg !531
  call void @llvm.dbg.value(metadata i32 3, metadata !530, metadata !DIExpression()), !dbg !531
  call void @llvm.dbg.value(metadata !DIArgList(i16 undef, i64 %in), metadata !529, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_constu, 8, DW_OP_shl, DW_OP_LLVM_arg, 1, DW_OP_constu, 16, DW_OP_shr, DW_OP_constu, 255, DW_OP_and, DW_OP_or, DW_OP_stack_value)), !dbg !531
  call void @llvm.dbg.value(metadata i64 %in, metadata !528, metadata !DIExpression(DW_OP_constu, 32, DW_OP_shr, DW_OP_stack_value)), !dbg !531
  call void @llvm.dbg.value(metadata i32 undef, metadata !529, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !531
  call void @llvm.dbg.value(metadata i64 %in, metadata !528, metadata !DIExpression(DW_OP_constu, 32, DW_OP_shr, DW_OP_stack_value)), !dbg !531
  call void @llvm.dbg.value(metadata i32 4, metadata !530, metadata !DIExpression()), !dbg !531
  call void @llvm.dbg.value(metadata i32 4, metadata !530, metadata !DIExpression()), !dbg !531
  call void @llvm.dbg.value(metadata i32 undef, metadata !529, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !531
  call void @llvm.dbg.value(metadata i64 %in, metadata !528, metadata !DIExpression(DW_OP_constu, 32, DW_OP_shr, DW_OP_stack_value)), !dbg !531
  call void @llvm.dbg.value(metadata !DIArgList(i32 undef, i64 %in), metadata !529, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_constu, 8, DW_OP_shl, DW_OP_LLVM_arg, 1, DW_OP_constu, 32, DW_OP_shr, DW_OP_constu, 255, DW_OP_and, DW_OP_or, DW_OP_stack_value)), !dbg !531
  call void @llvm.dbg.value(metadata i64 %in, metadata !528, metadata !DIExpression(DW_OP_constu, 48, DW_OP_shr, DW_OP_stack_value)), !dbg !531
  call void @llvm.dbg.value(metadata i32 5, metadata !530, metadata !DIExpression()), !dbg !531
  call void @llvm.dbg.value(metadata i32 5, metadata !530, metadata !DIExpression()), !dbg !531
  call void @llvm.dbg.value(metadata !DIArgList(i32 undef, i64 %in), metadata !529, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_constu, 8, DW_OP_shl, DW_OP_LLVM_arg, 1, DW_OP_constu, 32, DW_OP_shr, DW_OP_constu, 255, DW_OP_and, DW_OP_or, DW_OP_stack_value)), !dbg !531
  call void @llvm.dbg.value(metadata i64 %in, metadata !528, metadata !DIExpression(DW_OP_constu, 48, DW_OP_shr, DW_OP_stack_value)), !dbg !531
  call void @llvm.dbg.value(metadata i48 undef, metadata !529, metadata !DIExpression(DW_OP_LLVM_convert, 48, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !531
  call void @llvm.dbg.value(metadata i64 %in, metadata !528, metadata !DIExpression(DW_OP_constu, 48, DW_OP_shr, DW_OP_stack_value)), !dbg !531
  call void @llvm.dbg.value(metadata i32 6, metadata !530, metadata !DIExpression()), !dbg !531
  call void @llvm.dbg.value(metadata i32 6, metadata !530, metadata !DIExpression()), !dbg !531
  call void @llvm.dbg.value(metadata i48 undef, metadata !529, metadata !DIExpression(DW_OP_LLVM_convert, 48, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !531
  call void @llvm.dbg.value(metadata i64 %in, metadata !528, metadata !DIExpression(DW_OP_constu, 48, DW_OP_shr, DW_OP_stack_value)), !dbg !531
  call void @llvm.dbg.value(metadata !DIArgList(i48 undef, i64 %in), metadata !529, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_convert, 48, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_constu, 8, DW_OP_shl, DW_OP_LLVM_arg, 1, DW_OP_constu, 48, DW_OP_shr, DW_OP_constu, 255, DW_OP_and, DW_OP_or, DW_OP_stack_value)), !dbg !531
  call void @llvm.dbg.value(metadata i64 %in, metadata !528, metadata !DIExpression(DW_OP_constu, 56, DW_OP_shr, DW_OP_stack_value)), !dbg !531
  call void @llvm.dbg.value(metadata i32 7, metadata !530, metadata !DIExpression()), !dbg !531
  call void @llvm.dbg.value(metadata i32 7, metadata !530, metadata !DIExpression()), !dbg !531
  call void @llvm.dbg.value(metadata !DIArgList(i48 undef, i64 %in), metadata !529, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_convert, 48, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_constu, 8, DW_OP_shl, DW_OP_LLVM_arg, 1, DW_OP_constu, 48, DW_OP_shr, DW_OP_constu, 255, DW_OP_and, DW_OP_or, DW_OP_stack_value)), !dbg !531
  call void @llvm.dbg.value(metadata i64 %in, metadata !528, metadata !DIExpression(DW_OP_constu, 56, DW_OP_shr, DW_OP_stack_value)), !dbg !531
  %or.7 = call i64 @llvm.bswap.i64(i64 %in), !dbg !532
  call void @llvm.dbg.value(metadata i64 %or.7, metadata !529, metadata !DIExpression()), !dbg !531
  call void @llvm.dbg.value(metadata i64 %in, metadata !528, metadata !DIExpression(DW_OP_constu, 56, DW_OP_shr, DW_OP_constu, 8, DW_OP_shr, DW_OP_stack_value)), !dbg !531
  call void @llvm.dbg.value(metadata i32 8, metadata !530, metadata !DIExpression()), !dbg !531
  ret i64 %or.7, !dbg !536
}

; Function Attrs: nofree noinline norecurse nosync nounwind readnone uwtable
define dso_local i64 @htonll(i64 noundef %val) local_unnamed_addr #11 !dbg !537 {
entry:
  call void @llvm.dbg.value(metadata i64 %val, metadata !539, metadata !DIExpression()), !dbg !540
  %call = tail call fastcc i64 @mc_swap64(i64 noundef %val) #18, !dbg !541
  ret i64 %call, !dbg !542
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #12

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #12

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { mustprogress nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { mustprogress nofree nosync nounwind readnone willreturn "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn nounwind "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree noinline norecurse nosync nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree noinline norecurse nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree nosync nounwind willreturn }
attributes #10 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree noinline norecurse nosync nounwind readnone uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #13 = { nobuiltin nounwind readnone willreturn "no-builtins" }
attributes #14 = { nobuiltin nounwind "no-builtins" }
attributes #15 = { nobuiltin noreturn nounwind "no-builtins" }
attributes #16 = { nounwind }
attributes #17 = { nobuiltin nounwind readonly willreturn "no-builtins" }
attributes #18 = { nobuiltin "no-builtins" }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!42, !43, !44, !45}
!llvm.ident = !{!46}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "uriencode_str", scope: !2, file: !3, line: 12, type: !39, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 14.0.0", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !21, globals: !31, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "util.c", directory: "/home/xuheng/blackbox/llvm-test/memcached", checksumkind: CSK_MD5, checksum: "6107713b5a5435c3fd57ca3049491676")
!4 = !{!5}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 46, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "/usr/include/ctype.h", directory: "", checksumkind: CSK_MD5, checksum: "36575f934ef4fe7e9d50a3cb17bd5c66")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19, !20}
!9 = !DIEnumerator(name: "_ISupper", value: 256)
!10 = !DIEnumerator(name: "_ISlower", value: 512)
!11 = !DIEnumerator(name: "_ISalpha", value: 1024)
!12 = !DIEnumerator(name: "_ISdigit", value: 2048)
!13 = !DIEnumerator(name: "_ISxdigit", value: 4096)
!14 = !DIEnumerator(name: "_ISspace", value: 8192)
!15 = !DIEnumerator(name: "_ISprint", value: 16384)
!16 = !DIEnumerator(name: "_ISgraph", value: 32768)
!17 = !DIEnumerator(name: "_ISblank", value: 1)
!18 = !DIEnumerator(name: "_IScntrl", value: 2)
!19 = !DIEnumerator(name: "_ISpunct", value: 4)
!20 = !DIEnumerator(name: "_ISalnum", value: 8)
!21 = !{!22, !23, !24, !25, !26, !27, !28}
!22 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!23 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!24 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!25 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!26 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!27 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!28 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !29, size: 64)
!29 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !30)
!30 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !24)
!31 = !{!32, !0}
!32 = !DIGlobalVariableExpression(var: !33, expr: !DIExpression())
!33 = distinct !DIGlobalVariable(name: "uriencode_map", scope: !2, file: !3, line: 11, type: !34, isLocal: true, isDefinition: true)
!34 = !DICompositeType(tag: DW_TAG_array_type, baseType: !35, size: 16384, elements: !37)
!35 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !36, size: 64)
!36 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!37 = !{!38}
!38 = !DISubrange(count: 256)
!39 = !DICompositeType(tag: DW_TAG_array_type, baseType: !36, size: 6144, elements: !40)
!40 = !{!41}
!41 = !DISubrange(count: 768)
!42 = !{i32 7, !"Dwarf Version", i32 5}
!43 = !{i32 2, !"Debug Info Version", i32 3}
!44 = !{i32 1, !"wchar_size", i32 4}
!45 = !{i32 7, !"uwtable", i32 1}
!46 = !{!"clang version 14.0.0"}
!47 = distinct !DISubprogram(name: "uriencode_init", scope: !3, file: !3, line: 14, type: !48, scopeLine: 14, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !50)
!48 = !DISubroutineType(types: !49)
!49 = !{null}
!50 = !{!51, !52}
!51 = !DILocalVariable(name: "x", scope: !47, file: !3, line: 15, type: !22)
!52 = !DILocalVariable(name: "str", scope: !47, file: !3, line: 16, type: !35)
!53 = !DILocation(line: 0, scope: !47)
!54 = !DILocation(line: 17, column: 5, scope: !55)
!55 = distinct !DILexicalBlock(scope: !47, file: !3, line: 17, column: 5)
!56 = !DILocation(line: 18, column: 13, scope: !57)
!57 = distinct !DILexicalBlock(scope: !58, file: !3, line: 18, column: 13)
!58 = distinct !DILexicalBlock(scope: !59, file: !3, line: 17, column: 31)
!59 = distinct !DILexicalBlock(scope: !55, file: !3, line: 17, column: 5)
!60 = !{!61, !61, i64 0}
!61 = !{!"any pointer", !62, i64 0}
!62 = !{!"omnipotent char", !63, i64 0}
!63 = !{!"Simple C/C++ TBAA"}
!64 = !{!65, !65, i64 0}
!65 = !{!"short", !62, i64 0}
!66 = !DILocation(line: 18, column: 24, scope: !57)
!67 = !DILocation(line: 19, column: 13, scope: !68)
!68 = distinct !DILexicalBlock(scope: !57, file: !3, line: 18, column: 73)
!69 = !DILocation(line: 19, column: 30, scope: !68)
!70 = !DILocation(line: 20, column: 9, scope: !68)
!71 = !DILocation(line: 21, column: 13, scope: !72)
!72 = distinct !DILexicalBlock(scope: !57, file: !3, line: 20, column: 16)
!73 = !DILocation(line: 22, column: 13, scope: !72)
!74 = !DILocation(line: 22, column: 30, scope: !72)
!75 = !DILocation(line: 23, column: 17, scope: !72)
!76 = !DILocation(line: 17, column: 27, scope: !59)
!77 = !DILocation(line: 17, column: 19, scope: !59)
!78 = distinct !{!78, !54, !79, !80}
!79 = !DILocation(line: 25, column: 5, scope: !55)
!80 = !{!"llvm.loop.mustprogress"}
!81 = !DILocation(line: 26, column: 1, scope: !47)
!82 = !DISubprogram(name: "snprintf", scope: !83, file: !83, line: 354, type: !84, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !93)
!83 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "5b917eded35ce2507d1e294bf8cb74d7")
!84 = !DISubroutineType(types: !85)
!85 = !{!22, !86, !87, !90, null}
!86 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !35)
!87 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !88, line: 46, baseType: !89)
!88 = !DIFile(filename: "VeriFrame/LLVMUtils/llvm/lib/clang/14.0.0/include/stddef.h", directory: "/home/xuheng", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!89 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!90 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !91)
!91 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !92, size: 64)
!92 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !36)
!93 = !{}
!94 = distinct !DISubprogram(name: "uriencode", scope: !3, file: !3, line: 28, type: !95, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !99)
!95 = !DISubroutineType(types: !96)
!96 = !{!97, !91, !35, !98, !98}
!97 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!98 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !87)
!99 = !{!100, !101, !102, !103, !104, !105}
!100 = !DILocalVariable(name: "src", arg: 1, scope: !94, file: !3, line: 28, type: !91)
!101 = !DILocalVariable(name: "dst", arg: 2, scope: !94, file: !3, line: 28, type: !35)
!102 = !DILocalVariable(name: "srclen", arg: 3, scope: !94, file: !3, line: 28, type: !98)
!103 = !DILocalVariable(name: "dstlen", arg: 4, scope: !94, file: !3, line: 28, type: !98)
!104 = !DILocalVariable(name: "x", scope: !94, file: !3, line: 29, type: !22)
!105 = !DILocalVariable(name: "d", scope: !94, file: !3, line: 30, type: !87)
!106 = !DILocation(line: 0, scope: !94)
!107 = !DILocation(line: 31, column: 19, scope: !108)
!108 = distinct !DILexicalBlock(scope: !109, file: !3, line: 31, column: 5)
!109 = distinct !DILexicalBlock(scope: !94, file: !3, line: 31, column: 5)
!110 = !DILocation(line: 31, column: 5, scope: !109)
!111 = !DILocation(line: 32, column: 19, scope: !112)
!112 = distinct !DILexicalBlock(scope: !113, file: !3, line: 32, column: 13)
!113 = distinct !DILexicalBlock(scope: !108, file: !3, line: 31, column: 34)
!114 = !DILocation(line: 32, column: 13, scope: !113)
!115 = !DILocation(line: 32, column: 15, scope: !112)
!116 = distinct !{!116, !110, !117, !80}
!117 = !DILocation(line: 41, column: 5, scope: !109)
!118 = !DILocation(line: 34, column: 43, scope: !119)
!119 = distinct !DILexicalBlock(scope: !113, file: !3, line: 34, column: 13)
!120 = !{!62, !62, i64 0}
!121 = !DILocation(line: 34, column: 13, scope: !119)
!122 = !DILocation(line: 34, column: 51, scope: !119)
!123 = !DILocation(line: 0, scope: !119)
!124 = !DILocation(line: 34, column: 13, scope: !113)
!125 = !DILocation(line: 35, column: 13, scope: !126)
!126 = distinct !DILexicalBlock(scope: !119, file: !3, line: 34, column: 60)
!127 = !DILocation(line: 37, column: 9, scope: !126)
!128 = !DILocation(line: 38, column: 20, scope: !129)
!129 = distinct !DILexicalBlock(scope: !119, file: !3, line: 37, column: 16)
!130 = !DILocation(line: 31, column: 30, scope: !108)
!131 = !DILocation(line: 42, column: 5, scope: !94)
!132 = !DILocation(line: 42, column: 12, scope: !94)
!133 = !DILocation(line: 43, column: 5, scope: !94)
!134 = !DILocation(line: 44, column: 1, scope: !94)
!135 = !DISubprogram(name: "memcpy", scope: !136, file: !136, line: 43, type: !137, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !93)
!136 = !DIFile(filename: "/usr/include/string.h", directory: "", checksumkind: CSK_MD5, checksum: "61f60112cf5c0a45c54ea1f595add24c")
!137 = !DISubroutineType(types: !138)
!138 = !{!25, !139, !140, !87}
!139 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !25)
!140 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !141)
!141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !142, size: 64)
!142 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!143 = distinct !DISubprogram(name: "safe_strtoull", scope: !3, file: !3, line: 49, type: !144, scopeLine: 49, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !151)
!144 = !DISubroutineType(types: !145)
!145 = !{!97, !91, !146}
!146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !147, size: 64)
!147 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !148, line: 27, baseType: !149)
!148 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "d3ea318a915682aaf6645ec16ac9f991")
!149 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !150, line: 45, baseType: !89)
!150 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "f6304b1a6dcfc6bee76e9a51043b5090")
!151 = !{!152, !153, !154, !155}
!152 = !DILocalVariable(name: "str", arg: 1, scope: !143, file: !3, line: 49, type: !91)
!153 = !DILocalVariable(name: "out", arg: 2, scope: !143, file: !3, line: 49, type: !146)
!154 = !DILocalVariable(name: "endptr", scope: !143, file: !3, line: 53, type: !35)
!155 = !DILocalVariable(name: "ull", scope: !143, file: !3, line: 54, type: !156)
!156 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!157 = !DILocation(line: 0, scope: !143)
!158 = !DILocation(line: 50, column: 5, scope: !159)
!159 = distinct !DILexicalBlock(scope: !160, file: !3, line: 50, column: 5)
!160 = distinct !DILexicalBlock(scope: !143, file: !3, line: 50, column: 5)
!161 = !DILocation(line: 50, column: 5, scope: !160)
!162 = !DILocation(line: 51, column: 5, scope: !143)
!163 = !DILocation(line: 51, column: 11, scope: !143)
!164 = !{!165, !165, i64 0}
!165 = !{!"int", !62, i64 0}
!166 = !DILocation(line: 52, column: 10, scope: !143)
!167 = !{!168, !168, i64 0}
!168 = !{!"long", !62, i64 0}
!169 = !DILocation(line: 53, column: 5, scope: !143)
!170 = !DILocation(line: 54, column: 30, scope: !143)
!171 = !DILocation(line: 55, column: 10, scope: !172)
!172 = distinct !DILexicalBlock(scope: !143, file: !3, line: 55, column: 9)
!173 = !DILocation(line: 55, column: 16, scope: !172)
!174 = !DILocation(line: 55, column: 27, scope: !172)
!175 = !DILocation(line: 55, column: 38, scope: !172)
!176 = !DILocation(line: 55, column: 35, scope: !172)
!177 = !DILocation(line: 55, column: 9, scope: !143)
!178 = !DILocation(line: 59, column: 9, scope: !179)
!179 = distinct !DILexicalBlock(scope: !143, file: !3, line: 59, column: 9)
!180 = !DILocation(line: 59, column: 27, scope: !179)
!181 = !DILocation(line: 60, column: 29, scope: !182)
!182 = distinct !DILexicalBlock(scope: !183, file: !3, line: 60, column: 13)
!183 = distinct !DILexicalBlock(scope: !179, file: !3, line: 59, column: 66)
!184 = !DILocation(line: 60, column: 13, scope: !183)
!185 = !DILocation(line: 64, column: 17, scope: !186)
!186 = distinct !DILexicalBlock(scope: !187, file: !3, line: 64, column: 17)
!187 = distinct !DILexicalBlock(scope: !182, file: !3, line: 60, column: 34)
!188 = !DILocation(line: 64, column: 34, scope: !186)
!189 = !DILocation(line: 64, column: 17, scope: !187)
!190 = !DILocation(line: 68, column: 14, scope: !183)
!191 = !DILocation(line: 69, column: 9, scope: !183)
!192 = !DILocation(line: 72, column: 1, scope: !143)
!193 = !DISubprogram(name: "strtoull", scope: !194, file: !194, line: 205, type: !195, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !93)
!194 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "f0db66726d35051e5af2525f5b33bd81")
!195 = !DISubroutineType(types: !196)
!196 = !{!156, !90, !197, !22}
!197 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !198)
!198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !35, size: 64)
!199 = !DISubprogram(name: "strchr", scope: !136, file: !136, line: 226, type: !200, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !93)
!200 = !DISubroutineType(types: !201)
!201 = !{!35, !91, !22}
!202 = distinct !DISubprogram(name: "safe_strtoull_hex", scope: !3, file: !3, line: 79, type: !144, scopeLine: 79, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !203)
!203 = !{!204, !205, !206, !207}
!204 = !DILocalVariable(name: "str", arg: 1, scope: !202, file: !3, line: 79, type: !91)
!205 = !DILocalVariable(name: "out", arg: 2, scope: !202, file: !3, line: 79, type: !146)
!206 = !DILocalVariable(name: "endptr", scope: !202, file: !3, line: 83, type: !35)
!207 = !DILocalVariable(name: "ull", scope: !202, file: !3, line: 84, type: !156)
!208 = !DILocation(line: 0, scope: !202)
!209 = !DILocation(line: 80, column: 5, scope: !210)
!210 = distinct !DILexicalBlock(scope: !211, file: !3, line: 80, column: 5)
!211 = distinct !DILexicalBlock(scope: !202, file: !3, line: 80, column: 5)
!212 = !DILocation(line: 80, column: 5, scope: !211)
!213 = !DILocation(line: 81, column: 5, scope: !202)
!214 = !DILocation(line: 81, column: 11, scope: !202)
!215 = !DILocation(line: 82, column: 10, scope: !202)
!216 = !DILocation(line: 83, column: 5, scope: !202)
!217 = !DILocation(line: 84, column: 30, scope: !202)
!218 = !DILocation(line: 85, column: 10, scope: !219)
!219 = distinct !DILexicalBlock(scope: !202, file: !3, line: 85, column: 9)
!220 = !DILocation(line: 85, column: 16, scope: !219)
!221 = !DILocation(line: 85, column: 27, scope: !219)
!222 = !DILocation(line: 85, column: 38, scope: !219)
!223 = !DILocation(line: 85, column: 35, scope: !219)
!224 = !DILocation(line: 85, column: 9, scope: !202)
!225 = !DILocation(line: 89, column: 9, scope: !226)
!226 = distinct !DILexicalBlock(scope: !202, file: !3, line: 89, column: 9)
!227 = !DILocation(line: 89, column: 27, scope: !226)
!228 = !DILocation(line: 90, column: 29, scope: !229)
!229 = distinct !DILexicalBlock(scope: !230, file: !3, line: 90, column: 13)
!230 = distinct !DILexicalBlock(scope: !226, file: !3, line: 89, column: 66)
!231 = !DILocation(line: 90, column: 13, scope: !230)
!232 = !DILocation(line: 94, column: 17, scope: !233)
!233 = distinct !DILexicalBlock(scope: !234, file: !3, line: 94, column: 17)
!234 = distinct !DILexicalBlock(scope: !229, file: !3, line: 90, column: 34)
!235 = !DILocation(line: 94, column: 34, scope: !233)
!236 = !DILocation(line: 94, column: 17, scope: !234)
!237 = !DILocation(line: 98, column: 14, scope: !230)
!238 = !DILocation(line: 99, column: 9, scope: !230)
!239 = !DILocation(line: 102, column: 1, scope: !202)
!240 = distinct !DISubprogram(name: "safe_strtoll", scope: !3, file: !3, line: 104, type: !241, scopeLine: 104, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !247)
!241 = !DISubroutineType(types: !242)
!242 = !{!97, !91, !243}
!243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !244, size: 64)
!244 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !245, line: 27, baseType: !246)
!245 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "", checksumkind: CSK_MD5, checksum: "081edea97425b3437dded4a7fe223193")
!246 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !150, line: 44, baseType: !27)
!247 = !{!248, !249, !250, !251}
!248 = !DILocalVariable(name: "str", arg: 1, scope: !240, file: !3, line: 104, type: !91)
!249 = !DILocalVariable(name: "out", arg: 2, scope: !240, file: !3, line: 104, type: !243)
!250 = !DILocalVariable(name: "endptr", scope: !240, file: !3, line: 108, type: !35)
!251 = !DILocalVariable(name: "ll", scope: !240, file: !3, line: 109, type: !26)
!252 = !DILocation(line: 0, scope: !240)
!253 = !DILocation(line: 105, column: 5, scope: !254)
!254 = distinct !DILexicalBlock(scope: !255, file: !3, line: 105, column: 5)
!255 = distinct !DILexicalBlock(scope: !240, file: !3, line: 105, column: 5)
!256 = !DILocation(line: 105, column: 5, scope: !255)
!257 = !DILocation(line: 106, column: 5, scope: !240)
!258 = !DILocation(line: 106, column: 11, scope: !240)
!259 = !DILocation(line: 107, column: 10, scope: !240)
!260 = !DILocation(line: 108, column: 5, scope: !240)
!261 = !DILocation(line: 109, column: 20, scope: !240)
!262 = !DILocation(line: 110, column: 10, scope: !263)
!263 = distinct !DILexicalBlock(scope: !240, file: !3, line: 110, column: 9)
!264 = !DILocation(line: 110, column: 16, scope: !263)
!265 = !DILocation(line: 110, column: 27, scope: !263)
!266 = !DILocation(line: 110, column: 38, scope: !263)
!267 = !DILocation(line: 110, column: 35, scope: !263)
!268 = !DILocation(line: 110, column: 9, scope: !240)
!269 = !DILocation(line: 114, column: 9, scope: !270)
!270 = distinct !DILexicalBlock(scope: !240, file: !3, line: 114, column: 9)
!271 = !DILocation(line: 114, column: 27, scope: !270)
!272 = !DILocation(line: 115, column: 14, scope: !273)
!273 = distinct !DILexicalBlock(scope: !270, file: !3, line: 114, column: 66)
!274 = !DILocation(line: 116, column: 9, scope: !273)
!275 = !DILocation(line: 119, column: 1, scope: !240)
!276 = !DISubprogram(name: "strtoll", scope: !194, file: !194, line: 200, type: !277, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !93)
!277 = !DISubroutineType(types: !278)
!278 = !{!26, !90, !197, !22}
!279 = distinct !DISubprogram(name: "safe_strtoul", scope: !3, file: !3, line: 121, type: !280, scopeLine: 121, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !285)
!280 = !DISubroutineType(types: !281)
!281 = !{!97, !91, !282}
!282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !283, size: 64)
!283 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !148, line: 26, baseType: !284)
!284 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !150, line: 42, baseType: !7)
!285 = !{!286, !287, !288, !289}
!286 = !DILocalVariable(name: "str", arg: 1, scope: !279, file: !3, line: 121, type: !91)
!287 = !DILocalVariable(name: "out", arg: 2, scope: !279, file: !3, line: 121, type: !282)
!288 = !DILocalVariable(name: "endptr", scope: !279, file: !3, line: 122, type: !35)
!289 = !DILocalVariable(name: "l", scope: !279, file: !3, line: 123, type: !89)
!290 = !DILocation(line: 0, scope: !279)
!291 = !DILocation(line: 122, column: 5, scope: !279)
!292 = !DILocation(line: 122, column: 11, scope: !279)
!293 = !DILocation(line: 124, column: 5, scope: !294)
!294 = distinct !DILexicalBlock(scope: !295, file: !3, line: 124, column: 5)
!295 = distinct !DILexicalBlock(scope: !279, file: !3, line: 124, column: 5)
!296 = !DILocation(line: 124, column: 5, scope: !295)
!297 = !DILocation(line: 125, column: 5, scope: !298)
!298 = distinct !DILexicalBlock(scope: !299, file: !3, line: 125, column: 5)
!299 = distinct !DILexicalBlock(scope: !279, file: !3, line: 125, column: 5)
!300 = !DILocation(line: 125, column: 5, scope: !299)
!301 = !DILocation(line: 126, column: 10, scope: !279)
!302 = !DILocation(line: 127, column: 5, scope: !279)
!303 = !DILocation(line: 127, column: 11, scope: !279)
!304 = !DILocation(line: 129, column: 9, scope: !279)
!305 = !DILocation(line: 130, column: 10, scope: !306)
!306 = distinct !DILexicalBlock(scope: !279, file: !3, line: 130, column: 9)
!307 = !DILocation(line: 130, column: 16, scope: !306)
!308 = !DILocation(line: 130, column: 27, scope: !306)
!309 = !DILocation(line: 130, column: 38, scope: !306)
!310 = !DILocation(line: 130, column: 35, scope: !306)
!311 = !DILocation(line: 130, column: 9, scope: !279)
!312 = !DILocation(line: 134, column: 9, scope: !313)
!313 = distinct !DILexicalBlock(scope: !279, file: !3, line: 134, column: 9)
!314 = !DILocation(line: 134, column: 27, scope: !313)
!315 = !DILocation(line: 135, column: 22, scope: !316)
!316 = distinct !DILexicalBlock(scope: !317, file: !3, line: 135, column: 13)
!317 = distinct !DILexicalBlock(scope: !313, file: !3, line: 134, column: 66)
!318 = !DILocation(line: 135, column: 13, scope: !317)
!319 = !DILocation(line: 139, column: 17, scope: !320)
!320 = distinct !DILexicalBlock(scope: !321, file: !3, line: 139, column: 17)
!321 = distinct !DILexicalBlock(scope: !316, file: !3, line: 135, column: 27)
!322 = !DILocation(line: 139, column: 34, scope: !320)
!323 = !DILocation(line: 139, column: 17, scope: !321)
!324 = !DILocation(line: 143, column: 16, scope: !317)
!325 = !DILocation(line: 143, column: 14, scope: !317)
!326 = !DILocation(line: 144, column: 9, scope: !317)
!327 = !DILocation(line: 148, column: 1, scope: !279)
!328 = !DISubprogram(name: "strtoul", scope: !194, file: !194, line: 180, type: !329, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !93)
!329 = !DISubroutineType(types: !330)
!330 = !{!89, !90, !197, !22}
!331 = distinct !DISubprogram(name: "safe_strtol", scope: !3, file: !3, line: 150, type: !332, scopeLine: 150, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !337)
!332 = !DISubroutineType(types: !333)
!333 = !{!97, !91, !334}
!334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !335, size: 64)
!335 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !245, line: 26, baseType: !336)
!336 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int32_t", file: !150, line: 41, baseType: !22)
!337 = !{!338, !339, !340, !341}
!338 = !DILocalVariable(name: "str", arg: 1, scope: !331, file: !3, line: 150, type: !91)
!339 = !DILocalVariable(name: "out", arg: 2, scope: !331, file: !3, line: 150, type: !334)
!340 = !DILocalVariable(name: "endptr", scope: !331, file: !3, line: 154, type: !35)
!341 = !DILocalVariable(name: "l", scope: !331, file: !3, line: 155, type: !27)
!342 = !DILocation(line: 0, scope: !331)
!343 = !DILocation(line: 151, column: 5, scope: !344)
!344 = distinct !DILexicalBlock(scope: !345, file: !3, line: 151, column: 5)
!345 = distinct !DILexicalBlock(scope: !331, file: !3, line: 151, column: 5)
!346 = !DILocation(line: 151, column: 5, scope: !345)
!347 = !DILocation(line: 152, column: 5, scope: !331)
!348 = !DILocation(line: 152, column: 11, scope: !331)
!349 = !DILocation(line: 153, column: 10, scope: !331)
!350 = !DILocation(line: 154, column: 5, scope: !331)
!351 = !DILocation(line: 155, column: 14, scope: !331)
!352 = !DILocation(line: 156, column: 10, scope: !353)
!353 = distinct !DILexicalBlock(scope: !331, file: !3, line: 156, column: 9)
!354 = !DILocation(line: 156, column: 16, scope: !353)
!355 = !DILocation(line: 156, column: 27, scope: !353)
!356 = !DILocation(line: 156, column: 38, scope: !353)
!357 = !DILocation(line: 156, column: 35, scope: !353)
!358 = !DILocation(line: 156, column: 9, scope: !331)
!359 = !DILocation(line: 160, column: 9, scope: !360)
!360 = distinct !DILexicalBlock(scope: !331, file: !3, line: 160, column: 9)
!361 = !DILocation(line: 160, column: 27, scope: !360)
!362 = !DILocation(line: 161, column: 16, scope: !363)
!363 = distinct !DILexicalBlock(scope: !360, file: !3, line: 160, column: 66)
!364 = !DILocation(line: 161, column: 14, scope: !363)
!365 = !DILocation(line: 162, column: 9, scope: !363)
!366 = !DILocation(line: 165, column: 1, scope: !331)
!367 = !DISubprogram(name: "strtol", scope: !194, file: !194, line: 176, type: !368, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !93)
!368 = !DISubroutineType(types: !369)
!369 = !{!27, !90, !197, !22}
!370 = distinct !DISubprogram(name: "safe_strtod", scope: !3, file: !3, line: 167, type: !371, scopeLine: 167, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !375)
!371 = !DISubroutineType(types: !372)
!372 = !{!97, !91, !373}
!373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !374, size: 64)
!374 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!375 = !{!376, !377, !378, !379}
!376 = !DILocalVariable(name: "str", arg: 1, scope: !370, file: !3, line: 167, type: !91)
!377 = !DILocalVariable(name: "out", arg: 2, scope: !370, file: !3, line: 167, type: !373)
!378 = !DILocalVariable(name: "endptr", scope: !370, file: !3, line: 171, type: !35)
!379 = !DILocalVariable(name: "d", scope: !370, file: !3, line: 172, type: !374)
!380 = !DILocation(line: 0, scope: !370)
!381 = !DILocation(line: 168, column: 5, scope: !382)
!382 = distinct !DILexicalBlock(scope: !383, file: !3, line: 168, column: 5)
!383 = distinct !DILexicalBlock(scope: !370, file: !3, line: 168, column: 5)
!384 = !DILocation(line: 168, column: 5, scope: !383)
!385 = !DILocation(line: 169, column: 5, scope: !370)
!386 = !DILocation(line: 169, column: 11, scope: !370)
!387 = !DILocation(line: 170, column: 10, scope: !370)
!388 = !{!389, !389, i64 0}
!389 = !{!"double", !62, i64 0}
!390 = !DILocation(line: 171, column: 5, scope: !370)
!391 = !DILocation(line: 172, column: 16, scope: !370)
!392 = !DILocation(line: 173, column: 10, scope: !393)
!393 = distinct !DILexicalBlock(scope: !370, file: !3, line: 173, column: 9)
!394 = !DILocation(line: 173, column: 16, scope: !393)
!395 = !DILocation(line: 173, column: 27, scope: !393)
!396 = !DILocation(line: 173, column: 38, scope: !393)
!397 = !DILocation(line: 173, column: 35, scope: !393)
!398 = !DILocation(line: 173, column: 9, scope: !370)
!399 = !DILocation(line: 177, column: 9, scope: !400)
!400 = distinct !DILexicalBlock(scope: !370, file: !3, line: 177, column: 9)
!401 = !DILocation(line: 177, column: 27, scope: !400)
!402 = !DILocation(line: 178, column: 14, scope: !403)
!403 = distinct !DILexicalBlock(scope: !400, file: !3, line: 177, column: 66)
!404 = !DILocation(line: 179, column: 9, scope: !403)
!405 = !DILocation(line: 182, column: 1, scope: !370)
!406 = !DISubprogram(name: "strtod", scope: !194, file: !194, line: 117, type: !407, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !93)
!407 = !DISubroutineType(types: !408)
!408 = !{!374, !90, !197}
!409 = distinct !DISubprogram(name: "safe_strcpy", scope: !3, file: !3, line: 190, type: !410, scopeLine: 190, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !412)
!410 = !DISubroutineType(types: !411)
!411 = !{!97, !35, !91, !98}
!412 = !{!413, !414, !415, !416}
!413 = !DILocalVariable(name: "dst", arg: 1, scope: !409, file: !3, line: 190, type: !35)
!414 = !DILocalVariable(name: "src", arg: 2, scope: !409, file: !3, line: 190, type: !91)
!415 = !DILocalVariable(name: "dstmax", arg: 3, scope: !409, file: !3, line: 190, type: !98)
!416 = !DILocalVariable(name: "x", scope: !409, file: !3, line: 191, type: !87)
!417 = !DILocation(line: 0, scope: !409)
!418 = !DILocation(line: 193, column: 18, scope: !419)
!419 = distinct !DILexicalBlock(scope: !420, file: !3, line: 193, column: 4)
!420 = distinct !DILexicalBlock(scope: !409, file: !3, line: 193, column: 4)
!421 = !DILocation(line: 193, column: 31, scope: !419)
!422 = !DILocation(line: 193, column: 34, scope: !419)
!423 = !DILocation(line: 193, column: 41, scope: !419)
!424 = !DILocation(line: 193, column: 4, scope: !420)
!425 = !DILocation(line: 194, column: 9, scope: !426)
!426 = distinct !DILexicalBlock(scope: !419, file: !3, line: 193, column: 55)
!427 = !DILocation(line: 194, column: 16, scope: !426)
!428 = !DILocation(line: 193, column: 51, scope: !419)
!429 = distinct !{!429, !424, !430, !80}
!430 = !DILocation(line: 195, column: 4, scope: !420)
!431 = !DILocation(line: 0, scope: !420)
!432 = !DILocation(line: 197, column: 4, scope: !409)
!433 = !DILocation(line: 197, column: 11, scope: !409)
!434 = !DILocation(line: 199, column: 8, scope: !435)
!435 = distinct !DILexicalBlock(scope: !409, file: !3, line: 199, column: 8)
!436 = !DILocation(line: 199, column: 15, scope: !435)
!437 = !DILocation(line: 204, column: 1, scope: !409)
!438 = distinct !DISubprogram(name: "safe_memcmp", scope: !3, file: !3, line: 206, type: !439, scopeLine: 206, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !441)
!439 = !DISubroutineType(types: !440)
!440 = !{!97, !141, !141, !87}
!441 = !{!442, !443, !444, !445, !446, !447, !448}
!442 = !DILocalVariable(name: "a", arg: 1, scope: !438, file: !3, line: 206, type: !141)
!443 = !DILocalVariable(name: "b", arg: 2, scope: !438, file: !3, line: 206, type: !141)
!444 = !DILocalVariable(name: "len", arg: 3, scope: !438, file: !3, line: 206, type: !87)
!445 = !DILocalVariable(name: "ua", scope: !438, file: !3, line: 207, type: !28)
!446 = !DILocalVariable(name: "ub", scope: !438, file: !3, line: 208, type: !28)
!447 = !DILocalVariable(name: "delta", scope: !438, file: !3, line: 209, type: !22)
!448 = !DILocalVariable(name: "x", scope: !438, file: !3, line: 210, type: !87)
!449 = !DILocation(line: 0, scope: !438)
!450 = !DILocation(line: 212, column: 19, scope: !451)
!451 = distinct !DILexicalBlock(scope: !452, file: !3, line: 212, column: 5)
!452 = distinct !DILexicalBlock(scope: !438, file: !3, line: 212, column: 5)
!453 = !DILocation(line: 212, column: 5, scope: !452)
!454 = !DILocation(line: 213, column: 18, scope: !455)
!455 = distinct !DILexicalBlock(scope: !451, file: !3, line: 212, column: 31)
!456 = !DILocation(line: 213, column: 26, scope: !455)
!457 = !DILocation(line: 213, column: 24, scope: !455)
!458 = !DILocation(line: 213, column: 15, scope: !455)
!459 = !DILocation(line: 212, column: 27, scope: !451)
!460 = distinct !{!460, !453, !461, !80}
!461 = !DILocation(line: 214, column: 5, scope: !452)
!462 = distinct !{!462, !463}
!463 = !{!"llvm.loop.unroll.disable"}
!464 = !DILocation(line: 216, column: 15, scope: !465)
!465 = distinct !DILexicalBlock(scope: !438, file: !3, line: 216, column: 9)
!466 = !DILocation(line: 221, column: 1, scope: !438)
!467 = distinct !DISubprogram(name: "vperror", scope: !3, file: !3, line: 223, type: !468, scopeLine: 223, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !470)
!468 = !DISubroutineType(types: !469)
!469 = !{null, !91, null}
!470 = !{!471, !472, !473, !477}
!471 = !DILocalVariable(name: "fmt", arg: 1, scope: !467, file: !3, line: 223, type: !91)
!472 = !DILocalVariable(name: "old_errno", scope: !467, file: !3, line: 224, type: !22)
!473 = !DILocalVariable(name: "buf", scope: !467, file: !3, line: 225, type: !474)
!474 = !DICompositeType(tag: DW_TAG_array_type, baseType: !36, size: 8192, elements: !475)
!475 = !{!476}
!476 = !DISubrange(count: 1024)
!477 = !DILocalVariable(name: "ap", scope: !467, file: !3, line: 226, type: !478)
!478 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !83, line: 52, baseType: !479)
!479 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !480, line: 32, baseType: !481)
!480 = !DIFile(filename: "VeriFrame/LLVMUtils/llvm/lib/clang/14.0.0/include/stdarg.h", directory: "/home/xuheng", checksumkind: CSK_MD5, checksum: "4de3cbd931b589d291e5c39387aecf82")
!481 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !482, baseType: !483)
!482 = !DIFile(filename: "util.c", directory: "/home/xuheng/blackbox/llvm-test/memcached")
!483 = !DICompositeType(tag: DW_TAG_array_type, baseType: !484, size: 192, elements: !490)
!484 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !485)
!485 = !{!486, !487, !488, !489}
!486 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !484, file: !482, line: 226, baseType: !7, size: 32)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !484, file: !482, line: 226, baseType: !7, size: 32, offset: 32)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !484, file: !482, line: 226, baseType: !25, size: 64, offset: 64)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !484, file: !482, line: 226, baseType: !25, size: 64, offset: 128)
!490 = !{!491}
!491 = !DISubrange(count: 1)
!492 = !DILocation(line: 0, scope: !467)
!493 = !DILocation(line: 224, column: 21, scope: !467)
!494 = !DILocation(line: 225, column: 5, scope: !467)
!495 = !DILocation(line: 225, column: 10, scope: !467)
!496 = !DILocation(line: 226, column: 5, scope: !467)
!497 = !DILocation(line: 226, column: 13, scope: !467)
!498 = !DILocation(line: 228, column: 5, scope: !467)
!499 = !DILocation(line: 229, column: 9, scope: !500)
!500 = distinct !DILexicalBlock(scope: !467, file: !3, line: 229, column: 9)
!501 = !DILocation(line: 229, column: 46, scope: !500)
!502 = !DILocation(line: 229, column: 9, scope: !467)
!503 = !DILocation(line: 230, column: 9, scope: !504)
!504 = distinct !DILexicalBlock(scope: !500, file: !3, line: 229, column: 53)
!505 = !DILocation(line: 230, column: 30, scope: !504)
!506 = !DILocation(line: 231, column: 5, scope: !504)
!507 = !DILocation(line: 232, column: 5, scope: !467)
!508 = !DILocation(line: 234, column: 11, scope: !467)
!509 = !DILocation(line: 236, column: 5, scope: !467)
!510 = !DILocation(line: 237, column: 1, scope: !467)
!511 = !DISubprogram(name: "vsnprintf", scope: !83, file: !83, line: 358, type: !512, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !93)
!512 = !DISubroutineType(types: !513)
!513 = !{!22, !86, !87, !90, !514}
!514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !484, size: 64)
!515 = !DISubprogram(name: "perror", scope: !83, file: !83, line: 775, type: !516, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !93)
!516 = !DISubroutineType(types: !517)
!517 = !{null, !91}
!518 = distinct !DISubprogram(name: "ntohll", scope: !3, file: !3, line: 257, type: !519, scopeLine: 257, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !521)
!519 = !DISubroutineType(types: !520)
!520 = !{!147, !147}
!521 = !{!522}
!522 = !DILocalVariable(name: "val", arg: 1, scope: !518, file: !3, line: 257, type: !147)
!523 = !DILocation(line: 0, scope: !518)
!524 = !DILocation(line: 258, column: 11, scope: !518)
!525 = !DILocation(line: 258, column: 4, scope: !518)
!526 = distinct !DISubprogram(name: "mc_swap64", scope: !3, file: !3, line: 240, type: !519, scopeLine: 240, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !527)
!527 = !{!528, !529, !530}
!528 = !DILocalVariable(name: "in", arg: 1, scope: !526, file: !3, line: 240, type: !147)
!529 = !DILocalVariable(name: "rv", scope: !526, file: !3, line: 244, type: !244)
!530 = !DILocalVariable(name: "i", scope: !526, file: !3, line: 245, type: !22)
!531 = !DILocation(line: 0, scope: !526)
!532 = !DILocation(line: 247, column: 24, scope: !533)
!533 = distinct !DILexicalBlock(scope: !534, file: !3, line: 246, column: 27)
!534 = distinct !DILexicalBlock(scope: !535, file: !3, line: 246, column: 6)
!535 = distinct !DILexicalBlock(scope: !526, file: !3, line: 246, column: 6)
!536 = !DILocation(line: 250, column: 5, scope: !526)
!537 = distinct !DISubprogram(name: "htonll", scope: !3, file: !3, line: 261, type: !519, scopeLine: 261, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !538)
!538 = !{!539}
!539 = !DILocalVariable(name: "val", arg: 1, scope: !537, file: !3, line: 261, type: !147)
!540 = !DILocation(line: 0, scope: !537)
!541 = !DILocation(line: 262, column: 11, scope: !537)
!542 = !DILocation(line: 262, column: 4, scope: !537)
