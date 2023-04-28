; ModuleID = 'linenoise.c'
source_filename = "linenoise.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.termios = type { i32, i32, i32, i32, i8, [32 x i8], i32, i32 }
%struct.winsize = type { i16, i16, i16, i16 }

@history = dso_local local_unnamed_addr global i8** null, align 8, !dbg !0
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@stdout = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@stdin = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@history_max_len = internal unnamed_addr global i32 100, align 4, !dbg !41
@history_len = internal unnamed_addr global i32 0, align 4, !dbg !43
@.str.1 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"TERM\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"dumb\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"cons25\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@atexit_registered = internal unnamed_addr global i1 false, align 4, !dbg !46
@orig_termios = internal global %struct.termios zeroinitializer, align 4, !dbg !17
@rawmode = internal unnamed_addr global i1 false, align 4, !dbg !47
@.str.8 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"\1B[0G\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"\1B[0K\00", align 1
@.str.11 = private unnamed_addr constant [10 x i8] c"\1B[0G\1B[%dC\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local noalias i8* @linenoise(i8* noundef %prompt) local_unnamed_addr #0 !dbg !53 {
entry:
  %buf = alloca [4096 x i8], align 16
  call void @llvm.dbg.value(metadata i8* %prompt, metadata !59, metadata !DIExpression()), !dbg !71
  %0 = getelementptr inbounds [4096 x i8], [4096 x i8]* %buf, i64 0, i64 0, !dbg !72
  call void @llvm.lifetime.start.p0i8(i64 4096, i8* nonnull %0) #9, !dbg !72
  call void @llvm.dbg.declare(metadata [4096 x i8]* %buf, metadata !60, metadata !DIExpression()), !dbg !73
  %call = tail call fastcc i32 @isUnsupportedTerm() #10, !dbg !74
  %tobool.not = icmp eq i32 %call, 0, !dbg !74
  br i1 %tobool.not, label %if.else, label %if.then, !dbg !75

if.then:                                          ; preds = %entry
  %call1 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* noundef %prompt) #11, !dbg !76
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !77, !tbaa !78
  %call2 = tail call i32 @fflush(%struct._IO_FILE* noundef %1) #11, !dbg !82
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !83, !tbaa !78
  %call3 = call i8* @fgets(i8* noundef nonnull %0, i32 noundef 4096, %struct._IO_FILE* noundef %2) #11, !dbg !85
  %cmp = icmp eq i8* %call3, null, !dbg !86
  br i1 %cmp, label %cleanup26, label %if.end, !dbg !87

if.end:                                           ; preds = %if.then
  %call6 = call i64 @strlen(i8* noundef nonnull %0) #12, !dbg !88
  call void @llvm.dbg.value(metadata i64 %call6, metadata !65, metadata !DIExpression()), !dbg !89
  %tobool7.not35 = icmp eq i64 %call6, 0, !dbg !90
  br i1 %tobool7.not35, label %cleanup26.sink.split, label %land.rhs, !dbg !91

land.rhs:                                         ; preds = %if.end, %while.body
  %len.036 = phi i64 [ %sub, %while.body ], [ %call6, %if.end ]
  call void @llvm.dbg.value(metadata i64 %len.036, metadata !65, metadata !DIExpression()), !dbg !89
  %sub = add i64 %len.036, -1, !dbg !92
  %arrayidx = getelementptr inbounds [4096 x i8], [4096 x i8]* %buf, i64 0, i64 %sub, !dbg !93
  %3 = load i8, i8* %arrayidx, align 1, !dbg !93, !tbaa !94
  switch i8 %3, label %cleanup26.sink.split [
    i8 10, label %while.body
    i8 13, label %while.body
  ], !dbg !95

while.body:                                       ; preds = %land.rhs, %land.rhs
  call void @llvm.dbg.value(metadata i64 %sub, metadata !65, metadata !DIExpression()), !dbg !89
  store i8 0, i8* %arrayidx, align 1, !dbg !96, !tbaa !94
  %tobool7.not = icmp eq i64 %sub, 0, !dbg !90
  br i1 %tobool7.not, label %cleanup26.sink.split, label %land.rhs, !dbg !91, !llvm.loop !98

if.else:                                          ; preds = %entry
  %call19 = call fastcc i32 @linenoiseRaw(i8* noundef nonnull %0, i8* noundef %prompt) #10, !dbg !101
  call void @llvm.dbg.value(metadata i32 %call19, metadata !64, metadata !DIExpression()), !dbg !71
  %cmp20 = icmp eq i32 %call19, -1, !dbg !103
  br i1 %cmp20, label %cleanup26, label %cleanup26.sink.split, !dbg !105

cleanup26.sink.split:                             ; preds = %land.rhs, %while.body, %if.else, %if.end
  %call17 = call noalias i8* @strdup(i8* noundef nonnull %0) #11, !dbg !106
  br label %cleanup26, !dbg !107

cleanup26:                                        ; preds = %cleanup26.sink.split, %if.else, %if.then
  %retval.1 = phi i8* [ null, %if.then ], [ null, %if.else ], [ %call17, %cleanup26.sink.split ], !dbg !106
  call void @llvm.lifetime.end.p0i8(i64 4096, i8* nonnull %0) #9, !dbg !107
  ret i8* %retval.1, !dbg !107
}

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @isUnsupportedTerm() unnamed_addr #0 !dbg !108 {
entry:
  %call = tail call i8* @getenv(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0)) #11, !dbg !114
  call void @llvm.dbg.value(metadata i8* %call, metadata !112, metadata !DIExpression()), !dbg !115
  %cmp = icmp eq i8* %call, null, !dbg !116
  br i1 %cmp, label %cleanup, label %for.body.preheader, !dbg !118

for.body.preheader:                               ; preds = %entry
  call void @llvm.dbg.value(metadata i64 0, metadata !113, metadata !DIExpression()), !dbg !115
  %call3 = tail call i32 @strcasecmp(i8* noundef nonnull %call, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0)) #12, !dbg !119
  %tobool4.not = icmp eq i32 %call3, 0, !dbg !119
  call void @llvm.dbg.value(metadata i64 1, metadata !113, metadata !DIExpression()), !dbg !115
  br i1 %tobool4.not, label %cleanup, label %for.cond, !dbg !123

for.cond:                                         ; preds = %for.body.preheader
  call void @llvm.dbg.value(metadata i64 1, metadata !113, metadata !DIExpression()), !dbg !115
  call void @llvm.dbg.value(metadata i64 1, metadata !113, metadata !DIExpression()), !dbg !115
  %call3.1 = tail call i32 @strcasecmp(i8* noundef nonnull %call, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0)) #12, !dbg !119
  %tobool4.not.1 = icmp eq i32 %call3.1, 0, !dbg !119
  call void @llvm.dbg.value(metadata i64 2, metadata !113, metadata !DIExpression()), !dbg !115
  %spec.select = zext i1 %tobool4.not.1 to i32, !dbg !123
  br label %cleanup, !dbg !123

cleanup:                                          ; preds = %for.cond, %for.body.preheader, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ 1, %for.body.preheader ], [ %spec.select, %for.cond ], !dbg !115
  ret i32 %retval.0, !dbg !124
}

declare !dbg !125 dso_local i32 @printf(i8* noundef, ...) local_unnamed_addr #3

declare !dbg !131 dso_local i32 @fflush(%struct._IO_FILE* noundef) local_unnamed_addr #3

declare !dbg !190 dso_local i8* @fgets(i8* noundef, i32 noundef, %struct._IO_FILE* noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare !dbg !195 dso_local i64 @strlen(i8* noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare !dbg !199 dso_local noalias i8* @strdup(i8* noundef) local_unnamed_addr #5

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @linenoiseRaw(i8* noundef %buf, i8* noundef %prompt) unnamed_addr #0 !dbg !200 {
entry:
  call void @llvm.dbg.value(metadata i8* %buf, metadata !204, metadata !DIExpression()), !dbg !209
  call void @llvm.dbg.value(metadata i64 4096, metadata !205, metadata !DIExpression()), !dbg !209
  call void @llvm.dbg.value(metadata i8* %prompt, metadata !206, metadata !DIExpression()), !dbg !209
  call void @llvm.dbg.value(metadata i32 0, metadata !207, metadata !DIExpression()), !dbg !209
  %call1 = tail call i32 @isatty(i32 noundef 0) #11, !dbg !210
  %tobool.not = icmp eq i32 %call1, 0, !dbg !210
  br i1 %tobool.not, label %if.then2, label %if.else, !dbg !212

if.then2:                                         ; preds = %entry
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !213, !tbaa !78
  %call3 = tail call i8* @fgets(i8* noundef %buf, i32 noundef 4096, %struct._IO_FILE* noundef %0) #11, !dbg !216
  %cmp4 = icmp eq i8* %call3, null, !dbg !217
  br i1 %cmp4, label %cleanup, label %if.end7, !dbg !218

if.end7:                                          ; preds = %if.then2
  %call8 = tail call i64 @strlen(i8* noundef %buf) #12, !dbg !219
  %conv9 = trunc i64 %call8 to i32, !dbg !219
  call void @llvm.dbg.value(metadata i32 %conv9, metadata !208, metadata !DIExpression()), !dbg !209
  %tobool10.not = icmp eq i32 %conv9, 0, !dbg !220
  br i1 %tobool10.not, label %cleanup, label %land.lhs.true, !dbg !222

land.lhs.true:                                    ; preds = %if.end7
  %sub = shl i64 %call8, 32, !dbg !223
  %sext = add i64 %sub, -4294967296, !dbg !223
  %idxprom = ashr exact i64 %sext, 32, !dbg !223
  %arrayidx = getelementptr inbounds i8, i8* %buf, i64 %idxprom, !dbg !223
  %1 = load i8, i8* %arrayidx, align 1, !dbg !223, !tbaa !94
  %cmp12 = icmp eq i8 %1, 10, !dbg !224
  br i1 %cmp12, label %if.then14, label %cleanup, !dbg !225

if.then14:                                        ; preds = %land.lhs.true
  %dec = add nsw i32 %conv9, -1, !dbg !226
  call void @llvm.dbg.value(metadata i32 %dec, metadata !208, metadata !DIExpression()), !dbg !209
  %idxprom15 = sext i32 %dec to i64, !dbg !228
  %arrayidx16 = getelementptr inbounds i8, i8* %buf, i64 %idxprom15, !dbg !228
  store i8 0, i8* %arrayidx16, align 1, !dbg !229, !tbaa !94
  br label %cleanup, !dbg !230

if.else:                                          ; preds = %entry
  %call18 = tail call fastcc i32 @enableRawMode() #10, !dbg !231
  %cmp19 = icmp eq i32 %call18, -1, !dbg !234
  br i1 %cmp19, label %cleanup, label %if.end22, !dbg !235

if.end22:                                         ; preds = %if.else
  %call23 = tail call fastcc i32 @linenoisePrompt(i8* noundef %buf, i8* noundef %prompt) #10, !dbg !236
  call void @llvm.dbg.value(metadata i32 %call23, metadata !208, metadata !DIExpression()), !dbg !209
  tail call fastcc void @disableRawMode() #10, !dbg !237
  %call24 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0)) #11, !dbg !238
  br label %cleanup

cleanup:                                          ; preds = %if.end22, %if.then14, %land.lhs.true, %if.end7, %if.else, %if.then2
  %retval.0 = phi i32 [ -1, %if.then2 ], [ -1, %if.else ], [ %call23, %if.end22 ], [ %dec, %if.then14 ], [ %conv9, %land.lhs.true ], [ 0, %if.end7 ], !dbg !209
  ret i32 %retval.0, !dbg !239
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @linenoiseHistoryAdd(i8* noundef %line) local_unnamed_addr #0 !dbg !240 {
entry:
  call void @llvm.dbg.value(metadata i8* %line, metadata !244, metadata !DIExpression()), !dbg !246
  %0 = load i8**, i8*** @history, align 8, !dbg !247, !tbaa !78
  %cmp1 = icmp eq i8** %0, null, !dbg !249
  br i1 %cmp1, label %if.then2, label %if.end10, !dbg !250

if.then2:                                         ; preds = %entry
  %1 = load i32, i32* @history_max_len, align 4, !dbg !251, !tbaa !253
  %conv = sext i32 %1 to i64, !dbg !255
  %mul = shl nsw i64 %conv, 3, !dbg !257
  %call = tail call noalias i8* @malloc(i64 noundef %mul) #11, !dbg !258
  store i8* %call, i8** bitcast (i8*** @history to i8**), align 8, !dbg !259, !tbaa !78
  %cmp3 = icmp eq i8* %call, null, !dbg !260
  br i1 %cmp3, label %cleanup, label %if.end6, !dbg !262

if.end6:                                          ; preds = %if.then2
  %2 = load i32, i32* @history_max_len, align 4, !dbg !263, !tbaa !253
  %conv7 = sext i32 %2 to i64, !dbg !263
  %mul8 = shl nsw i64 %conv7, 3, !dbg !264
  %call9 = tail call i8* @memset(i8* noundef nonnull %call, i32 noundef 0, i64 noundef %mul8) #11, !dbg !265
  br label %if.end10, !dbg !266

if.end10:                                         ; preds = %if.end6, %entry
  %call11 = tail call noalias i8* @strdup(i8* noundef %line) #11, !dbg !267
  call void @llvm.dbg.value(metadata i8* %call11, metadata !245, metadata !DIExpression()), !dbg !246
  %tobool.not = icmp eq i8* %call11, null, !dbg !268
  br i1 %tobool.not, label %cleanup, label %if.end13, !dbg !270

if.end13:                                         ; preds = %if.end10
  %3 = load i32, i32* @history_len, align 4, !dbg !271, !tbaa !253
  %4 = load i32, i32* @history_max_len, align 4, !dbg !273, !tbaa !253
  %cmp14 = icmp eq i32 %3, %4, !dbg !274
  br i1 %cmp14, label %if.then16, label %if.end20, !dbg !275

if.then16:                                        ; preds = %if.end13
  %5 = load i8**, i8*** @history, align 8, !dbg !276, !tbaa !78
  %6 = load i8*, i8** %5, align 8, !dbg !276, !tbaa !78
  tail call void @free(i8* noundef %6) #11, !dbg !278
  %7 = load i8**, i8*** @history, align 8, !dbg !279, !tbaa !78
  %8 = bitcast i8** %7 to i8*, !dbg !279
  %add.ptr = getelementptr inbounds i8*, i8** %7, i64 1, !dbg !280
  %9 = bitcast i8** %add.ptr to i8*, !dbg !281
  %10 = load i32, i32* @history_max_len, align 4, !dbg !282, !tbaa !253
  %sub = add nsw i32 %10, -1, !dbg !283
  %11 = zext i32 %sub to i64
  %mul18 = shl nuw nsw i64 %11, 3, !dbg !284
  %call19 = tail call i8* @memmove(i8* noundef %8, i8* noundef nonnull %9, i64 noundef %mul18) #11, !dbg !285
  %12 = load i32, i32* @history_len, align 4, !dbg !286, !tbaa !253
  %dec = add nsw i32 %12, -1, !dbg !286
  br label %if.end20, !dbg !287

if.end20:                                         ; preds = %if.then16, %if.end13
  %13 = phi i32 [ %dec, %if.then16 ], [ %3, %if.end13 ], !dbg !288
  %14 = load i8**, i8*** @history, align 8, !dbg !289, !tbaa !78
  %idxprom = sext i32 %13 to i64, !dbg !289
  %arrayidx21 = getelementptr inbounds i8*, i8** %14, i64 %idxprom, !dbg !289
  store i8* %call11, i8** %arrayidx21, align 8, !dbg !290, !tbaa !78
  %inc = add nsw i32 %13, 1, !dbg !291
  store i32 %inc, i32* @history_len, align 4, !dbg !291, !tbaa !253
  br label %cleanup, !dbg !292

cleanup:                                          ; preds = %if.end10, %if.then2, %if.end20
  %retval.0 = phi i32 [ 1, %if.end20 ], [ 0, %if.then2 ], [ 0, %if.end10 ], !dbg !246
  ret i32 %retval.0, !dbg !293
}

; Function Attrs: nounwind
declare !dbg !294 dso_local noalias i8* @malloc(i64 noundef) local_unnamed_addr #5

; Function Attrs: nounwind
declare !dbg !298 dso_local i8* @memset(i8* noundef, i32 noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: nounwind
declare !dbg !301 dso_local void @free(i8* noundef) local_unnamed_addr #5

; Function Attrs: nounwind
declare !dbg !304 dso_local i8* @memmove(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @linenoiseHistorySetMaxLen(i32 noundef %len) local_unnamed_addr #0 !dbg !309 {
entry:
  call void @llvm.dbg.value(metadata i32 %len, metadata !313, metadata !DIExpression()), !dbg !318
  %cmp = icmp slt i32 %len, 1, !dbg !319
  br i1 %cmp, label %cleanup18, label %if.end, !dbg !321

if.end:                                           ; preds = %entry
  %0 = load i8**, i8*** @history, align 8, !dbg !322, !tbaa !78
  %tobool.not = icmp eq i8** %0, null, !dbg !322
  br i1 %tobool.not, label %if.end13, label %if.then1, !dbg !323

if.then1:                                         ; preds = %if.end
  %1 = load i32, i32* @history_len, align 4, !dbg !324, !tbaa !253
  call void @llvm.dbg.value(metadata i32 %1, metadata !315, metadata !DIExpression()), !dbg !325
  %conv30 = zext i32 %len to i64, !dbg !326
  %mul = shl nuw nsw i64 %conv30, 3, !dbg !327
  %call = tail call noalias i8* @malloc(i64 noundef %mul) #11, !dbg !328
  call void @llvm.dbg.value(metadata i8* %call, metadata !314, metadata !DIExpression()), !dbg !318
  %cmp2 = icmp eq i8* %call, null, !dbg !329
  br i1 %cmp2, label %cleanup18, label %if.end5, !dbg !331

if.end5:                                          ; preds = %if.then1
  %cmp6 = icmp sgt i32 %1, %len, !dbg !332
  %spec.select = select i1 %cmp6, i32 %len, i32 %1, !dbg !334
  call void @llvm.dbg.value(metadata i32 %spec.select, metadata !315, metadata !DIExpression()), !dbg !325
  %2 = load i8**, i8*** @history, align 8, !dbg !335, !tbaa !78
  %3 = load i32, i32* @history_max_len, align 4, !dbg !336, !tbaa !253
  %sub = sub nsw i32 %3, %spec.select, !dbg !337
  %idx.ext = sext i32 %sub to i64, !dbg !338
  %add.ptr = getelementptr inbounds i8*, i8** %2, i64 %idx.ext, !dbg !338
  %4 = bitcast i8** %add.ptr to i8*, !dbg !335
  %conv10 = sext i32 %spec.select to i64, !dbg !339
  %mul11 = shl nsw i64 %conv10, 3, !dbg !340
  %call12 = tail call i8* @memcpy(i8* noundef nonnull %call, i8* noundef %4, i64 noundef %mul11) #11, !dbg !341
  %5 = load i8*, i8** bitcast (i8*** @history to i8**), align 8, !dbg !342, !tbaa !78
  tail call void @free(i8* noundef %5) #11, !dbg !343
  store i8* %call, i8** bitcast (i8*** @history to i8**), align 8, !dbg !344, !tbaa !78
  br label %if.end13

if.end13:                                         ; preds = %if.end5, %if.end
  store i32 %len, i32* @history_max_len, align 4, !dbg !345, !tbaa !253
  %6 = load i32, i32* @history_len, align 4, !dbg !346, !tbaa !253
  %cmp14 = icmp sgt i32 %6, %len, !dbg !348
  br i1 %cmp14, label %if.then16, label %cleanup18, !dbg !349

if.then16:                                        ; preds = %if.end13
  store i32 %len, i32* @history_len, align 4, !dbg !350, !tbaa !253
  br label %cleanup18, !dbg !351

cleanup18:                                        ; preds = %if.then1, %if.end13, %if.then16, %entry
  %retval.1 = phi i32 [ 0, %entry ], [ 1, %if.then16 ], [ 1, %if.end13 ], [ 0, %if.then1 ], !dbg !318
  ret i32 %retval.1, !dbg !352
}

; Function Attrs: nounwind
declare !dbg !353 dso_local i8* @memcpy(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @linenoiseHistorySave(i8* noundef %filename) local_unnamed_addr #0 !dbg !358 {
entry:
  call void @llvm.dbg.value(metadata i8* %filename, metadata !362, metadata !DIExpression()), !dbg !365
  %call = tail call %struct._IO_FILE* @fopen64(i8* noundef %filename, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #11, !dbg !366
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %call, metadata !363, metadata !DIExpression()), !dbg !365
  %cmp = icmp eq %struct._IO_FILE* %call, null, !dbg !367
  br i1 %cmp, label %cleanup, label %for.cond.preheader, !dbg !369

for.cond.preheader:                               ; preds = %entry
  call void @llvm.dbg.value(metadata i32 0, metadata !364, metadata !DIExpression()), !dbg !365
  %0 = load i32, i32* @history_len, align 4, !dbg !370, !tbaa !253
  %cmp111 = icmp sgt i32 %0, 0, !dbg !373
  br i1 %cmp111, label %for.body, label %for.end, !dbg !374

for.body:                                         ; preds = %for.cond.preheader, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %for.cond.preheader ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !364, metadata !DIExpression()), !dbg !365
  %1 = load i8**, i8*** @history, align 8, !dbg !375, !tbaa !78
  %arrayidx = getelementptr inbounds i8*, i8** %1, i64 %indvars.iv, !dbg !375
  %2 = load i8*, i8** %arrayidx, align 8, !dbg !375, !tbaa !78
  %call2 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef nonnull %call, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* noundef %2) #11, !dbg !376
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !377
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !364, metadata !DIExpression()), !dbg !365
  %3 = load i32, i32* @history_len, align 4, !dbg !370, !tbaa !253
  %4 = sext i32 %3 to i64, !dbg !373
  %cmp1 = icmp slt i64 %indvars.iv.next, %4, !dbg !373
  br i1 %cmp1, label %for.body, label %for.end, !dbg !374, !llvm.loop !378

for.end:                                          ; preds = %for.body, %for.cond.preheader
  %call3 = tail call i32 @fclose(%struct._IO_FILE* noundef nonnull %call) #11, !dbg !380
  br label %cleanup, !dbg !381

cleanup:                                          ; preds = %entry, %for.end
  %retval.0 = phi i32 [ 0, %for.end ], [ -1, %entry ], !dbg !365
  ret i32 %retval.0, !dbg !382
}

declare !dbg !383 dso_local %struct._IO_FILE* @fopen64(i8* noundef, i8* noundef) local_unnamed_addr #3

declare !dbg !386 dso_local i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) local_unnamed_addr #3

declare !dbg !389 dso_local i32 @fclose(%struct._IO_FILE* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @linenoiseHistoryLoad(i8* noundef %filename) local_unnamed_addr #0 !dbg !390 {
entry:
  %buf = alloca [4096 x i8], align 16
  call void @llvm.dbg.value(metadata i8* %filename, metadata !392, metadata !DIExpression()), !dbg !397
  %call = tail call %struct._IO_FILE* @fopen64(i8* noundef %filename, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #11, !dbg !398
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %call, metadata !393, metadata !DIExpression()), !dbg !397
  %0 = getelementptr inbounds [4096 x i8], [4096 x i8]* %buf, i64 0, i64 0, !dbg !399
  call void @llvm.lifetime.start.p0i8(i64 4096, i8* nonnull %0) #9, !dbg !399
  call void @llvm.dbg.declare(metadata [4096 x i8]* %buf, metadata !394, metadata !DIExpression()), !dbg !400
  %cmp = icmp eq %struct._IO_FILE* %call, null, !dbg !401
  br i1 %cmp, label %cleanup, label %while.cond.preheader, !dbg !403

while.cond.preheader:                             ; preds = %entry
  %call125 = call i8* @fgets(i8* noundef nonnull %0, i32 noundef 4096, %struct._IO_FILE* noundef nonnull %call) #11, !dbg !404
  %cmp2.not26 = icmp eq i8* %call125, null, !dbg !405
  br i1 %cmp2.not26, label %while.end, label %while.body, !dbg !406

while.body:                                       ; preds = %while.cond.preheader, %if.end11
  %call4 = call i8* @strchr(i8* noundef nonnull %0, i32 noundef 13) #12, !dbg !407
  call void @llvm.dbg.value(metadata i8* %call4, metadata !395, metadata !DIExpression()), !dbg !408
  %tobool.not = icmp eq i8* %call4, null, !dbg !409
  br i1 %tobool.not, label %if.end8, label %if.then10, !dbg !411

if.end8:                                          ; preds = %while.body
  %call7 = call i8* @strchr(i8* noundef nonnull %0, i32 noundef 10) #12, !dbg !412
  call void @llvm.dbg.value(metadata i8* %call7, metadata !395, metadata !DIExpression()), !dbg !408
  %tobool9.not = icmp eq i8* %call7, null, !dbg !413
  br i1 %tobool9.not, label %if.end11, label %if.then10, !dbg !415

if.then10:                                        ; preds = %while.body, %if.end8
  %p.024 = phi i8* [ %call7, %if.end8 ], [ %call4, %while.body ]
  store i8 0, i8* %p.024, align 1, !dbg !416, !tbaa !94
  br label %if.end11, !dbg !417

if.end11:                                         ; preds = %if.then10, %if.end8
  %call13 = call i32 @linenoiseHistoryAdd(i8* noundef nonnull %0) #10, !dbg !418
  %call1 = call i8* @fgets(i8* noundef nonnull %0, i32 noundef 4096, %struct._IO_FILE* noundef nonnull %call) #11, !dbg !404
  %cmp2.not = icmp eq i8* %call1, null, !dbg !405
  br i1 %cmp2.not, label %while.end, label %while.body, !dbg !406, !llvm.loop !419

while.end:                                        ; preds = %if.end11, %while.cond.preheader
  %call14 = call i32 @fclose(%struct._IO_FILE* noundef nonnull %call) #11, !dbg !421
  br label %cleanup, !dbg !422

cleanup:                                          ; preds = %entry, %while.end
  %retval.0 = phi i32 [ 0, %while.end ], [ -1, %entry ], !dbg !397
  call void @llvm.lifetime.end.p0i8(i64 4096, i8* nonnull %0) #9, !dbg !423
  ret i32 %retval.0, !dbg !423
}

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare !dbg !424 dso_local i8* @strchr(i8* noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare !dbg !427 dso_local i8* @getenv(i8* noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare !dbg !428 dso_local i32 @strcasecmp(i8* noundef, i8* noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
declare dso_local i32* @__errno_location() local_unnamed_addr #6

; Function Attrs: nounwind
declare !dbg !432 dso_local i32 @isatty(i32 noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @enableRawMode() unnamed_addr #0 !dbg !434 {
entry:
  %raw = alloca %struct.termios, align 16
  call void @llvm.dbg.value(metadata i32 0, metadata !436, metadata !DIExpression()), !dbg !439
  %0 = bitcast %struct.termios* %raw to i8*, !dbg !440
  call void @llvm.lifetime.start.p0i8(i64 60, i8* nonnull %0) #9, !dbg !440
  call void @llvm.dbg.declare(metadata %struct.termios* %raw, metadata !437, metadata !DIExpression()), !dbg !441
  %call = tail call i32 @isatty(i32 noundef 0) #11, !dbg !442
  %tobool.not = icmp eq i32 %call, 0, !dbg !442
  br i1 %tobool.not, label %fatal, label %if.end, !dbg !444

if.end:                                           ; preds = %entry
  %.b = load i1, i1* @atexit_registered, align 4, !dbg !445
  br i1 %.b, label %if.end4, label %if.then2, !dbg !447

if.then2:                                         ; preds = %if.end
  %call3 = tail call i32 @atexit(void ()* noundef nonnull @linenoiseAtExit) #11, !dbg !448
  store i1 true, i1* @atexit_registered, align 4, !dbg !450
  br label %if.end4, !dbg !451

if.end4:                                          ; preds = %if.then2, %if.end
  %call5 = tail call i32 @tcgetattr(i32 noundef 0, %struct.termios* noundef nonnull @orig_termios) #11, !dbg !452
  %cmp = icmp eq i32 %call5, -1, !dbg !454
  br i1 %cmp, label %fatal, label %if.end7, !dbg !455

if.end7:                                          ; preds = %if.end4
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(60) %0, i8* noundef nonnull align 4 dereferenceable(60) bitcast (%struct.termios* @orig_termios to i8*), i64 60, i1 false), !dbg !456, !tbaa.struct !457
  %1 = bitcast %struct.termios* %raw to <4 x i32>*, !dbg !458
  %2 = load <4 x i32>, <4 x i32>* %1, align 16, !dbg !458, !tbaa !253
  %3 = and <4 x i32> %2, <i32 -1331, i32 -2, i32 poison, i32 -32780>, !dbg !458
  %4 = or <4 x i32> %2, <i32 poison, i32 poison, i32 48, i32 poison>, !dbg !458
  %5 = shufflevector <4 x i32> %3, <4 x i32> %4, <4 x i32> <i32 0, i32 1, i32 6, i32 3>, !dbg !458
  %6 = bitcast %struct.termios* %raw to <4 x i32>*, !dbg !458
  store <4 x i32> %5, <4 x i32>* %6, align 16, !dbg !458, !tbaa !253
  %arrayidx = getelementptr inbounds %struct.termios, %struct.termios* %raw, i64 0, i32 5, i64 6, !dbg !459
  store i8 1, i8* %arrayidx, align 1, !dbg !460, !tbaa !94
  %arrayidx11 = getelementptr inbounds %struct.termios, %struct.termios* %raw, i64 0, i32 5, i64 5, !dbg !461
  store i8 0, i8* %arrayidx11, align 2, !dbg !462, !tbaa !94
  %call12 = call i32 @tcsetattr(i32 noundef 0, i32 noundef 2, %struct.termios* noundef nonnull %raw) #11, !dbg !463
  %cmp13 = icmp slt i32 %call12, 0, !dbg !465
  br i1 %cmp13, label %fatal, label %if.end15, !dbg !466

if.end15:                                         ; preds = %if.end7
  store i1 true, i1* @rawmode, align 4, !dbg !467
  br label %cleanup, !dbg !468

fatal:                                            ; preds = %if.end7, %if.end4, %entry
  call void @llvm.dbg.label(metadata !438), !dbg !469
  %call16 = tail call i32* @__errno_location() #13, !dbg !470
  store i32 25, i32* %call16, align 4, !dbg !471, !tbaa !253
  br label %cleanup, !dbg !472

cleanup:                                          ; preds = %fatal, %if.end15
  %retval.0 = phi i32 [ -1, %fatal ], [ 0, %if.end15 ], !dbg !439
  call void @llvm.lifetime.end.p0i8(i64 60, i8* nonnull %0) #9, !dbg !473
  ret i32 %retval.0, !dbg !473
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @linenoisePrompt(i8* noundef %buf, i8* noundef %prompt) unnamed_addr #0 !dbg !474 {
entry:
  %c = alloca i8, align 1
  %seq = alloca [2 x i8], align 1
  call void @llvm.dbg.value(metadata i32 0, metadata !478, metadata !DIExpression()), !dbg !507
  call void @llvm.dbg.value(metadata i8* %buf, metadata !479, metadata !DIExpression()), !dbg !507
  call void @llvm.dbg.value(metadata i64 4096, metadata !480, metadata !DIExpression()), !dbg !507
  call void @llvm.dbg.value(metadata i8* %prompt, metadata !481, metadata !DIExpression()), !dbg !507
  %call = tail call i64 @strlen(i8* noundef %prompt) #12, !dbg !508
  call void @llvm.dbg.value(metadata i64 %call, metadata !482, metadata !DIExpression()), !dbg !507
  call void @llvm.dbg.value(metadata i64 0, metadata !483, metadata !DIExpression()), !dbg !507
  call void @llvm.dbg.value(metadata i64 0, metadata !484, metadata !DIExpression()), !dbg !507
  %call1 = tail call fastcc i32 @getColumns() #10, !dbg !509
  %0 = zext i32 %call1 to i64
  call void @llvm.dbg.value(metadata i64 %0, metadata !485, metadata !DIExpression()), !dbg !507
  call void @llvm.dbg.value(metadata i32 0, metadata !486, metadata !DIExpression()), !dbg !507
  store i8 0, i8* %buf, align 1, !dbg !510, !tbaa !94
  call void @llvm.dbg.value(metadata i64 4095, metadata !480, metadata !DIExpression()), !dbg !507
  %call2 = tail call i32 @linenoiseHistoryAdd(i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i64 0, i64 0)) #10, !dbg !511
  %call3 = tail call i64 @write(i32 noundef 0, i8* noundef %prompt, i64 noundef %call) #11, !dbg !512
  %cmp = icmp eq i64 %call3, -1, !dbg !514
  br i1 %cmp, label %cleanup194, label %while.cond.preheader, !dbg !515

while.cond.preheader:                             ; preds = %entry
  %1 = getelementptr inbounds [2 x i8], [2 x i8]* %seq, i64 0, i64 0
  call void @llvm.dbg.value(metadata i32 0, metadata !486, metadata !DIExpression()), !dbg !507
  call void @llvm.dbg.value(metadata i64 0, metadata !483, metadata !DIExpression()), !dbg !507
  call void @llvm.dbg.value(metadata i64 0, metadata !484, metadata !DIExpression()), !dbg !507
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %c) #9, !dbg !516
  call void @llvm.lifetime.start.p0i8(i64 2, i8* nonnull %1) #9, !dbg !517
  call void @llvm.dbg.declare(metadata [2 x i8]* %seq, metadata !490, metadata !DIExpression()), !dbg !518
  call void @llvm.dbg.value(metadata i8* %c, metadata !487, metadata !DIExpression(DW_OP_deref)), !dbg !519
  %call512 = call i64 @read(i32 noundef 0, i8* noundef nonnull %c, i64 noundef 1) #11, !dbg !520
  %conv613 = trunc i64 %call512 to i32, !dbg !520
  call void @llvm.dbg.value(metadata i32 %conv613, metadata !489, metadata !DIExpression()), !dbg !519
  %cmp714 = icmp slt i32 %conv613, 1, !dbg !521
  br i1 %cmp714, label %if.then9, label %if.end11.lr.ph, !dbg !523

if.end11.lr.ph:                                   ; preds = %while.cond.preheader
  %arrayidx75 = getelementptr inbounds [2 x i8], [2 x i8]* %seq, i64 0, i64 1
  %arrayidx147 = getelementptr inbounds i8, i8* %buf, i64 4095
  br label %if.end11, !dbg !523

if.then9:                                         ; preds = %cleanup, %while.cond.preheader
  %len.0.lcssa = phi i64 [ 0, %while.cond.preheader ], [ %len.1, %cleanup ], !dbg !524
  %conv10 = trunc i64 %len.0.lcssa to i32, !dbg !525
  br label %cleanup.thread, !dbg !526

if.end11:                                         ; preds = %if.end11.lr.ph, %cleanup
  %history_index.021 = phi i32 [ 0, %if.end11.lr.ph ], [ %history_index.1, %cleanup ]
  %pos.018 = phi i64 [ 0, %if.end11.lr.ph ], [ %pos.2, %cleanup ]
  %len.015 = phi i64 [ 0, %if.end11.lr.ph ], [ %len.1, %cleanup ]
  call void @llvm.dbg.value(metadata i32 %history_index.021, metadata !486, metadata !DIExpression()), !dbg !507
  call void @llvm.dbg.value(metadata i64 %pos.018, metadata !483, metadata !DIExpression()), !dbg !507
  call void @llvm.dbg.value(metadata i64 %len.015, metadata !484, metadata !DIExpression()), !dbg !507
  %2 = load i8, i8* %c, align 1, !dbg !527, !tbaa !94
  call void @llvm.dbg.value(metadata i8 %2, metadata !487, metadata !DIExpression()), !dbg !519
  %conv12 = sext i8 %2 to i32, !dbg !527
  switch i32 %conv12, label %sw.default [
    i32 13, label %sw.bb
    i32 4, label %sw.bb
    i32 3, label %sw.bb21
    i32 127, label %sw.bb23
    i32 8, label %sw.bb23
    i32 20, label %sw.bb37
    i32 2, label %left_arrow
    i32 6, label %right_arrow
    i32 16, label %up_down_arrow
    i32 14, label %sw.bb62
    i32 27, label %sw.bb64
    i32 21, label %sw.bb186
    i32 11, label %sw.bb188
    i32 1, label %sw.bb190
    i32 5, label %sw.bb191
  ], !dbg !528

sw.bb:                                            ; preds = %if.end11, %if.end11
  %3 = load i32, i32* @history_len, align 4, !dbg !529, !tbaa !253
  %dec13 = add nsw i32 %3, -1, !dbg !529
  store i32 %dec13, i32* @history_len, align 4, !dbg !529, !tbaa !253
  %4 = load i8**, i8*** @history, align 8, !dbg !530, !tbaa !78
  %idxprom = sext i32 %dec13 to i64, !dbg !530
  %arrayidx14 = getelementptr inbounds i8*, i8** %4, i64 %idxprom, !dbg !530
  %5 = load i8*, i8** %arrayidx14, align 8, !dbg !530, !tbaa !78
  call void @free(i8* noundef %5) #11, !dbg !531
  %cmp15 = icmp eq i64 %len.015, 0, !dbg !532
  %6 = load i8, i8* %c, align 1
  call void @llvm.dbg.value(metadata i8 %6, metadata !487, metadata !DIExpression()), !dbg !519
  %cmp18 = icmp eq i8 %6, 4
  %or.cond = select i1 %cmp15, i1 %cmp18, i1 false, !dbg !533
  %conv20 = trunc i64 %len.015 to i32, !dbg !533
  %cond = select i1 %or.cond, i32 -1, i32 %conv20, !dbg !533
  br label %cleanup.thread, !dbg !534

sw.bb21:                                          ; preds = %if.end11
  %call22 = tail call i32* @__errno_location() #13, !dbg !535
  store i32 11, i32* %call22, align 4, !dbg !536, !tbaa !253
  br label %cleanup.thread, !dbg !537

sw.bb23:                                          ; preds = %if.end11, %if.end11
  %cmp24 = icmp ne i64 %pos.018, 0, !dbg !538
  %cmp27 = icmp ne i64 %len.015, 0
  %or.cond200 = select i1 %cmp24, i1 %cmp27, i1 false, !dbg !540
  br i1 %or.cond200, label %if.then29, label %cleanup, !dbg !540

if.then29:                                        ; preds = %sw.bb23
  %add.ptr = getelementptr inbounds i8, i8* %buf, i64 %pos.018, !dbg !541
  %add.ptr30 = getelementptr inbounds i8, i8* %add.ptr, i64 -1, !dbg !543
  %sub = sub i64 %len.015, %pos.018, !dbg !544
  %call32 = call i8* @memmove(i8* noundef nonnull %add.ptr30, i8* noundef nonnull %add.ptr, i64 noundef %sub) #11, !dbg !545
  %dec33 = add i64 %pos.018, -1, !dbg !546
  call void @llvm.dbg.value(metadata i64 %dec33, metadata !483, metadata !DIExpression()), !dbg !507
  %dec34 = add i64 %len.015, -1, !dbg !547
  call void @llvm.dbg.value(metadata i64 %dec34, metadata !484, metadata !DIExpression()), !dbg !507
  %arrayidx35 = getelementptr inbounds i8, i8* %buf, i64 %dec34, !dbg !548
  store i8 0, i8* %arrayidx35, align 1, !dbg !549, !tbaa !94
  call fastcc void @refreshLine(i8* noundef %prompt, i8* noundef %buf, i64 noundef %dec34, i64 noundef %dec33, i64 noundef %0) #10, !dbg !550
  br label %cleanup, !dbg !551

sw.bb37:                                          ; preds = %if.end11
  %cmp38.not = icmp eq i64 %pos.018, 0, !dbg !552
  br i1 %cmp38.not, label %cleanup, label %land.lhs.true40, !dbg !553

land.lhs.true40:                                  ; preds = %sw.bb37
  %cmp41 = icmp ugt i64 %len.015, %pos.018, !dbg !554
  br i1 %cmp41, label %if.then43, label %cleanup, !dbg !555

if.then43:                                        ; preds = %land.lhs.true40
  %sub44 = add i64 %pos.018, -1, !dbg !556
  %arrayidx45 = getelementptr inbounds i8, i8* %buf, i64 %sub44, !dbg !557
  %7 = load i8, i8* %arrayidx45, align 1, !dbg !557, !tbaa !94
  call void @llvm.dbg.value(metadata i8 %7, metadata !494, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)), !dbg !558
  %arrayidx47 = getelementptr inbounds i8, i8* %buf, i64 %pos.018, !dbg !559
  %8 = load i8, i8* %arrayidx47, align 1, !dbg !559, !tbaa !94
  store i8 %8, i8* %arrayidx45, align 1, !dbg !560, !tbaa !94
  store i8 %7, i8* %arrayidx47, align 1, !dbg !561, !tbaa !94
  %sub52 = add i64 %len.015, -1, !dbg !562
  %cmp53.not = icmp ne i64 %pos.018, %sub52, !dbg !564
  %inc = zext i1 %cmp53.not to i64, !dbg !565
  %spec.select = add nuw i64 %pos.018, %inc, !dbg !565
  call void @llvm.dbg.value(metadata i64 %spec.select, metadata !483, metadata !DIExpression()), !dbg !507
  call fastcc void @refreshLine(i8* noundef %prompt, i8* noundef %buf, i64 noundef %len.015, i64 noundef %spec.select, i64 noundef %0) #10, !dbg !566
  br label %cleanup, !dbg !567

sw.bb62:                                          ; preds = %if.end11
  br label %up_down_arrow, !dbg !568

sw.bb64:                                          ; preds = %if.end11
  %call65 = call i64 @read(i32 noundef 0, i8* noundef nonnull %1, i64 noundef 2) #11, !dbg !569
  %cmp66 = icmp eq i64 %call65, -1, !dbg !571
  br i1 %cmp66, label %cleanup, label %if.end69, !dbg !572

if.end69:                                         ; preds = %sw.bb64
  %9 = load i8, i8* %1, align 1, !dbg !573, !tbaa !94
  %cmp72 = icmp eq i8 %9, 91, !dbg !574
  %10 = load i8, i8* %arrayidx75, align 1
  %cmp77 = icmp eq i8 %10, 68
  %or.cond201 = select i1 %cmp72, i1 %cmp77, i1 false, !dbg !575
  br i1 %or.cond201, label %left_arrow, label %if.else, !dbg !575

left_arrow:                                       ; preds = %if.end69, %if.end11
  call void @llvm.dbg.label(metadata !498), !dbg !576
  %cmp80.not = icmp eq i64 %pos.018, 0, !dbg !577
  br i1 %cmp80.not, label %cleanup, label %if.then82, !dbg !579

if.then82:                                        ; preds = %left_arrow
  %dec83 = add i64 %pos.018, -1, !dbg !580
  call void @llvm.dbg.value(metadata i64 %dec83, metadata !483, metadata !DIExpression()), !dbg !507
  call fastcc void @refreshLine(i8* noundef %prompt, i8* noundef %buf, i64 noundef %len.015, i64 noundef %dec83, i64 noundef %0) #10, !dbg !582
  br label %cleanup, !dbg !583

if.else:                                          ; preds = %if.end69
  %cmp92 = icmp eq i8 %10, 67
  %or.cond202 = select i1 %cmp72, i1 %cmp92, i1 false, !dbg !584
  br i1 %or.cond202, label %right_arrow, label %if.else100, !dbg !584

right_arrow:                                      ; preds = %if.else, %if.end11
  call void @llvm.dbg.label(metadata !501), !dbg !585
  %cmp95.not = icmp eq i64 %len.015, %pos.018, !dbg !586
  br i1 %cmp95.not, label %cleanup, label %if.then97, !dbg !588

if.then97:                                        ; preds = %right_arrow
  %inc98 = add i64 %pos.018, 1, !dbg !589
  call void @llvm.dbg.value(metadata i64 %inc98, metadata !483, metadata !DIExpression()), !dbg !507
  call fastcc void @refreshLine(i8* noundef %prompt, i8* noundef %buf, i64 noundef %len.015, i64 noundef %inc98, i64 noundef %0) #10, !dbg !591
  br label %cleanup, !dbg !592

if.else100:                                       ; preds = %if.else
  br i1 %cmp72, label %land.lhs.true105, label %cleanup, !dbg !593

land.lhs.true105:                                 ; preds = %if.else100
  %11 = add i8 %10, -65, !dbg !594
  %12 = icmp ult i8 %11, 2, !dbg !594
  %13 = load i32, i32* @history_len, align 4
  %cmp115 = icmp sgt i32 %13, 1
  %or.cond204 = select i1 %12, i1 %cmp115, i1 false, !dbg !594
  call void @llvm.dbg.label(metadata !504), !dbg !595
  br i1 %or.cond204, label %if.then117, label %cleanup, !dbg !594

up_down_arrow:                                    ; preds = %if.end11, %sw.bb62
  %storemerge = phi i8 [ 66, %sw.bb62 ], [ 65, %if.end11 ], !dbg !596
  store i8 %storemerge, i8* %arrayidx75, align 1, !dbg !596, !tbaa !94
  call void @llvm.dbg.label(metadata !504), !dbg !595
  %.old = load i32, i32* @history_len, align 4, !dbg !597, !tbaa !253
  %cmp115.old = icmp sgt i32 %.old, 1, !dbg !599
  br i1 %cmp115.old, label %if.then117, label %cleanup, !dbg !600

if.then117:                                       ; preds = %land.lhs.true105, %up_down_arrow
  %14 = phi i32 [ %13, %land.lhs.true105 ], [ %.old, %up_down_arrow ], !dbg !601
  %15 = load i8**, i8*** @history, align 8, !dbg !603, !tbaa !78
  %16 = xor i32 %history_index.021, -1, !dbg !604
  %sub119 = add i32 %14, %16, !dbg !604
  %idxprom120 = sext i32 %sub119 to i64, !dbg !603
  %arrayidx121 = getelementptr inbounds i8*, i8** %15, i64 %idxprom120, !dbg !603
  %17 = load i8*, i8** %arrayidx121, align 8, !dbg !603, !tbaa !78
  call void @free(i8* noundef %17) #11, !dbg !605
  %call122 = call noalias i8* @strdup(i8* noundef %buf) #11, !dbg !606
  %18 = load i8**, i8*** @history, align 8, !dbg !607, !tbaa !78
  %19 = load i32, i32* @history_len, align 4, !dbg !608, !tbaa !253
  %sub124 = add i32 %19, %16, !dbg !609
  %idxprom125 = sext i32 %sub124 to i64, !dbg !607
  %arrayidx126 = getelementptr inbounds i8*, i8** %18, i64 %idxprom125, !dbg !607
  store i8* %call122, i8** %arrayidx126, align 8, !dbg !610, !tbaa !78
  %20 = load i8, i8* %arrayidx75, align 1, !dbg !611, !tbaa !94
  %cmp129 = icmp eq i8 %20, 65, !dbg !612
  %cond131 = select i1 %cmp129, i32 1, i32 -1, !dbg !613
  %add = add nsw i32 %cond131, %history_index.021, !dbg !614
  call void @llvm.dbg.value(metadata i32 %add, metadata !486, metadata !DIExpression()), !dbg !507
  %cmp132 = icmp slt i32 %add, 0, !dbg !615
  br i1 %cmp132, label %cleanup, label %if.else135, !dbg !617

if.else135:                                       ; preds = %if.then117
  %cmp136.not = icmp slt i32 %add, %19, !dbg !618
  br i1 %cmp136.not, label %if.end141, label %if.then138, !dbg !620

if.then138:                                       ; preds = %if.else135
  %sub139 = add nsw i32 %19, -1, !dbg !621
  call void @llvm.dbg.value(metadata i32 %sub139, metadata !486, metadata !DIExpression()), !dbg !507
  br label %cleanup, !dbg !623

if.end141:                                        ; preds = %if.else135
  %21 = load i8**, i8*** @history, align 8, !dbg !624, !tbaa !78
  %22 = xor i32 %add, -1, !dbg !625
  %sub143 = add i32 %19, %22, !dbg !625
  %idxprom144 = sext i32 %sub143 to i64, !dbg !624
  %arrayidx145 = getelementptr inbounds i8*, i8** %21, i64 %idxprom144, !dbg !624
  %23 = load i8*, i8** %arrayidx145, align 8, !dbg !624, !tbaa !78
  %call146 = call i8* @strncpy(i8* noundef %buf, i8* noundef %23, i64 noundef 4095) #11, !dbg !626
  store i8 0, i8* %arrayidx147, align 1, !dbg !627, !tbaa !94
  %call148 = call i64 @strlen(i8* noundef %buf) #12, !dbg !628
  call void @llvm.dbg.value(metadata i64 %call148, metadata !483, metadata !DIExpression()), !dbg !507
  call void @llvm.dbg.value(metadata i64 %call148, metadata !484, metadata !DIExpression()), !dbg !507
  call fastcc void @refreshLine(i8* noundef %prompt, i8* noundef %buf, i64 noundef %call148, i64 noundef %call148, i64 noundef %0) #10, !dbg !629
  br label %cleanup, !dbg !630

sw.default:                                       ; preds = %if.end11
  %cmp153 = icmp ult i64 %len.015, 4095, !dbg !631
  br i1 %cmp153, label %if.then155, label %cleanup, !dbg !633

if.then155:                                       ; preds = %sw.default
  %cmp156 = icmp eq i64 %len.015, %pos.018, !dbg !634
  %arrayidx159 = getelementptr inbounds i8, i8* %buf, i64 %pos.018, !dbg !637
  br i1 %cmp156, label %if.then158, label %if.else174, !dbg !638

if.then158:                                       ; preds = %if.then155
  store i8 %2, i8* %arrayidx159, align 1, !dbg !639, !tbaa !94
  %inc160 = add i64 %pos.018, 1, !dbg !641
  call void @llvm.dbg.value(metadata i64 %inc160, metadata !483, metadata !DIExpression()), !dbg !507
  call void @llvm.dbg.value(metadata i64 %inc160, metadata !484, metadata !DIExpression()), !dbg !507
  %arrayidx162 = getelementptr inbounds i8, i8* %buf, i64 %inc160, !dbg !642
  store i8 0, i8* %arrayidx162, align 1, !dbg !643, !tbaa !94
  %add163 = add i64 %inc160, %call, !dbg !644
  %cmp164 = icmp ult i64 %add163, %0, !dbg !646
  br i1 %cmp164, label %if.then166, label %if.else172, !dbg !647

if.then166:                                       ; preds = %if.then158
  call void @llvm.dbg.value(metadata i8* %c, metadata !487, metadata !DIExpression(DW_OP_deref)), !dbg !519
  %call167 = call i64 @write(i32 noundef 0, i8* noundef nonnull %c, i64 noundef 1) #11, !dbg !648
  %cmp168 = icmp eq i64 %call167, -1, !dbg !651
  br i1 %cmp168, label %cleanup.thread, label %cleanup, !dbg !652

if.else172:                                       ; preds = %if.then158
  call fastcc void @refreshLine(i8* noundef %prompt, i8* noundef nonnull %buf, i64 noundef %inc160, i64 noundef %inc160, i64 noundef %0) #10, !dbg !653
  br label %cleanup

if.else174:                                       ; preds = %if.then155
  %add.ptr176 = getelementptr inbounds i8, i8* %arrayidx159, i64 1, !dbg !655
  %sub178 = sub i64 %len.015, %pos.018, !dbg !657
  %call179 = call i8* @memmove(i8* noundef nonnull %add.ptr176, i8* noundef %arrayidx159, i64 noundef %sub178) #11, !dbg !658
  %24 = load i8, i8* %c, align 1, !dbg !659, !tbaa !94
  call void @llvm.dbg.value(metadata i8 %24, metadata !487, metadata !DIExpression()), !dbg !519
  store i8 %24, i8* %arrayidx159, align 1, !dbg !660, !tbaa !94
  %inc181 = add nuw nsw i64 %len.015, 1, !dbg !661
  call void @llvm.dbg.value(metadata i64 %inc181, metadata !484, metadata !DIExpression()), !dbg !507
  %inc182 = add i64 %pos.018, 1, !dbg !662
  call void @llvm.dbg.value(metadata i64 %inc182, metadata !483, metadata !DIExpression()), !dbg !507
  %arrayidx183 = getelementptr inbounds i8, i8* %buf, i64 %inc181, !dbg !663
  store i8 0, i8* %arrayidx183, align 1, !dbg !664, !tbaa !94
  call fastcc void @refreshLine(i8* noundef %prompt, i8* noundef %buf, i64 noundef %inc181, i64 noundef %inc182, i64 noundef %0) #10, !dbg !665
  br label %cleanup

sw.bb186:                                         ; preds = %if.end11
  store i8 0, i8* %buf, align 1, !dbg !666, !tbaa !94
  call void @llvm.dbg.value(metadata i64 0, metadata !484, metadata !DIExpression()), !dbg !507
  call void @llvm.dbg.value(metadata i64 0, metadata !483, metadata !DIExpression()), !dbg !507
  call fastcc void @refreshLine(i8* noundef %prompt, i8* noundef %buf, i64 noundef 0, i64 noundef 0, i64 noundef %0) #10, !dbg !667
  br label %cleanup, !dbg !668

sw.bb188:                                         ; preds = %if.end11
  %arrayidx189 = getelementptr inbounds i8, i8* %buf, i64 %pos.018, !dbg !669
  store i8 0, i8* %arrayidx189, align 1, !dbg !670, !tbaa !94
  call void @llvm.dbg.value(metadata i64 %pos.018, metadata !484, metadata !DIExpression()), !dbg !507
  call fastcc void @refreshLine(i8* noundef %prompt, i8* noundef %buf, i64 noundef %pos.018, i64 noundef %pos.018, i64 noundef %0) #10, !dbg !671
  br label %cleanup, !dbg !672

sw.bb190:                                         ; preds = %if.end11
  call void @llvm.dbg.value(metadata i64 0, metadata !483, metadata !DIExpression()), !dbg !507
  call fastcc void @refreshLine(i8* noundef %prompt, i8* noundef %buf, i64 noundef %len.015, i64 noundef 0, i64 noundef %0) #10, !dbg !673
  br label %cleanup, !dbg !674

sw.bb191:                                         ; preds = %if.end11
  call void @llvm.dbg.value(metadata i64 %len.015, metadata !483, metadata !DIExpression()), !dbg !507
  call fastcc void @refreshLine(i8* noundef %prompt, i8* noundef %buf, i64 noundef %len.015, i64 noundef %len.015, i64 noundef %0) #10, !dbg !675
  br label %cleanup, !dbg !676

cleanup.thread:                                   ; preds = %if.then166, %if.then9, %sw.bb21, %sw.bb
  %retval.1.ph = phi i32 [ %cond, %sw.bb ], [ -1, %sw.bb21 ], [ %conv10, %if.then9 ], [ -1, %if.then166 ]
  call void @llvm.dbg.value(metadata i32 %history_index.1, metadata !486, metadata !DIExpression()), !dbg !507
  call void @llvm.dbg.value(metadata i64 %pos.2, metadata !483, metadata !DIExpression()), !dbg !507
  call void @llvm.dbg.value(metadata i64 undef, metadata !484, metadata !DIExpression()), !dbg !507
  call void @llvm.lifetime.end.p0i8(i64 2, i8* nonnull %1) #9, !dbg !677
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %c) #9, !dbg !677
  br label %cleanup194

cleanup:                                          ; preds = %if.then138, %sw.bb186, %sw.bb188, %sw.bb190, %sw.bb191, %if.then29, %sw.bb23, %if.then43, %land.lhs.true40, %sw.bb37, %sw.bb64, %if.then97, %right_arrow, %up_down_arrow, %if.end141, %land.lhs.true105, %if.else100, %left_arrow, %if.then82, %if.else174, %if.then166, %if.else172, %sw.default, %if.then117
  %len.1 = phi i64 [ %inc160, %if.then166 ], [ %inc160, %if.else172 ], [ %inc181, %if.else174 ], [ %len.015, %sw.default ], [ %len.015, %sw.bb191 ], [ %len.015, %sw.bb190 ], [ %pos.018, %sw.bb188 ], [ 0, %sw.bb186 ], [ %len.015, %sw.bb64 ], [ %len.015, %if.then82 ], [ %len.015, %left_arrow ], [ %len.015, %if.then97 ], [ %pos.018, %right_arrow ], [ %len.015, %if.then138 ], [ %call148, %if.end141 ], [ %len.015, %land.lhs.true105 ], [ %len.015, %if.else100 ], [ %len.015, %up_down_arrow ], [ %len.015, %if.then43 ], [ %len.015, %land.lhs.true40 ], [ %len.015, %sw.bb37 ], [ %dec34, %if.then29 ], [ %len.015, %sw.bb23 ], [ %len.015, %if.then117 ], !dbg !507
  %pos.2 = phi i64 [ %inc160, %if.then166 ], [ %inc160, %if.else172 ], [ %inc182, %if.else174 ], [ %pos.018, %sw.default ], [ %len.015, %sw.bb191 ], [ 0, %sw.bb190 ], [ %pos.018, %sw.bb188 ], [ 0, %sw.bb186 ], [ %pos.018, %sw.bb64 ], [ %dec83, %if.then82 ], [ 0, %left_arrow ], [ %inc98, %if.then97 ], [ %pos.018, %right_arrow ], [ %pos.018, %if.then138 ], [ %call148, %if.end141 ], [ %pos.018, %land.lhs.true105 ], [ %pos.018, %if.else100 ], [ %pos.018, %up_down_arrow ], [ %spec.select, %if.then43 ], [ %pos.018, %land.lhs.true40 ], [ 0, %sw.bb37 ], [ %dec33, %if.then29 ], [ %pos.018, %sw.bb23 ], [ %pos.018, %if.then117 ], !dbg !507
  %history_index.1 = phi i32 [ %history_index.021, %if.then166 ], [ %history_index.021, %if.else172 ], [ %history_index.021, %if.else174 ], [ %history_index.021, %sw.default ], [ %history_index.021, %sw.bb191 ], [ %history_index.021, %sw.bb190 ], [ %history_index.021, %sw.bb188 ], [ %history_index.021, %sw.bb186 ], [ %history_index.021, %sw.bb64 ], [ %history_index.021, %if.then82 ], [ %history_index.021, %left_arrow ], [ %history_index.021, %if.then97 ], [ %history_index.021, %right_arrow ], [ %sub139, %if.then138 ], [ %add, %if.end141 ], [ %history_index.021, %land.lhs.true105 ], [ %history_index.021, %if.else100 ], [ %history_index.021, %up_down_arrow ], [ %history_index.021, %if.then43 ], [ %history_index.021, %land.lhs.true40 ], [ %history_index.021, %sw.bb37 ], [ %history_index.021, %if.then29 ], [ %history_index.021, %sw.bb23 ], [ 0, %if.then117 ], !dbg !507
  call void @llvm.dbg.value(metadata i32 %history_index.1, metadata !486, metadata !DIExpression()), !dbg !507
  call void @llvm.dbg.value(metadata i64 %pos.2, metadata !483, metadata !DIExpression()), !dbg !507
  call void @llvm.dbg.value(metadata i64 %len.1, metadata !484, metadata !DIExpression()), !dbg !507
  call void @llvm.lifetime.end.p0i8(i64 2, i8* nonnull %1) #9, !dbg !677
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %c) #9, !dbg !677
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %c) #9, !dbg !516
  call void @llvm.lifetime.start.p0i8(i64 2, i8* nonnull %1) #9, !dbg !517
  call void @llvm.dbg.declare(metadata [2 x i8]* %seq, metadata !490, metadata !DIExpression()), !dbg !518
  call void @llvm.dbg.value(metadata i8* %c, metadata !487, metadata !DIExpression(DW_OP_deref)), !dbg !519
  %call5 = call i64 @read(i32 noundef 0, i8* noundef nonnull %c, i64 noundef 1) #11, !dbg !520
  %conv6 = trunc i64 %call5 to i32, !dbg !520
  call void @llvm.dbg.value(metadata i32 %conv6, metadata !489, metadata !DIExpression()), !dbg !519
  %cmp7 = icmp slt i32 %conv6, 1, !dbg !521
  br i1 %cmp7, label %if.then9, label %if.end11, !dbg !523, !llvm.loop !678

cleanup194:                                       ; preds = %cleanup.thread, %entry
  %retval.2 = phi i32 [ -1, %entry ], [ %retval.1.ph, %cleanup.thread ], !dbg !507
  ret i32 %retval.2, !dbg !680
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @disableRawMode() unnamed_addr #0 !dbg !681 {
entry:
  call void @llvm.dbg.value(metadata i32 0, metadata !685, metadata !DIExpression()), !dbg !686
  %.b = load i1, i1* @rawmode, align 4, !dbg !687
  br i1 %.b, label %land.lhs.true, label %if.end, !dbg !689

land.lhs.true:                                    ; preds = %entry
  %call = tail call i32 @tcsetattr(i32 noundef 0, i32 noundef 2, %struct.termios* noundef nonnull @orig_termios) #11, !dbg !690
  %cmp.not = icmp eq i32 %call, -1, !dbg !691
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !692

if.then:                                          ; preds = %land.lhs.true
  store i1 false, i1* @rawmode, align 4, !dbg !693
  br label %if.end, !dbg !694

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  ret void, !dbg !695
}

; Function Attrs: nounwind
declare !dbg !696 dso_local i32 @atexit(void ()* noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind uwtable
define internal void @linenoiseAtExit() #0 !dbg !702 {
entry:
  tail call fastcc void @disableRawMode() #10, !dbg !703
  tail call fastcc void @freeHistory() #10, !dbg !704
  ret void, !dbg !705
}

; Function Attrs: nounwind
declare !dbg !706 dso_local i32 @tcgetattr(i32 noundef, %struct.termios* noundef) local_unnamed_addr #5

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #7

; Function Attrs: nounwind
declare !dbg !711 dso_local i32 @tcsetattr(i32 noundef, i32 noundef, %struct.termios* noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @freeHistory() unnamed_addr #0 !dbg !716 {
entry:
  %0 = load i8**, i8*** @history, align 8, !dbg !721, !tbaa !78
  %tobool.not = icmp eq i8** %0, null, !dbg !721
  br i1 %tobool.not, label %if.end, label %for.cond.preheader, !dbg !722

for.cond.preheader:                               ; preds = %entry
  %1 = bitcast i8** %0 to i8*, !dbg !722
  call void @llvm.dbg.value(metadata i32 0, metadata !718, metadata !DIExpression()), !dbg !723
  %2 = load i32, i32* @history_len, align 4, !dbg !724, !tbaa !253
  %cmp4 = icmp sgt i32 %2, 0, !dbg !727
  br i1 %cmp4, label %for.body.preheader, label %for.end, !dbg !728

for.body.preheader:                               ; preds = %for.cond.preheader
  call void @llvm.dbg.value(metadata i64 0, metadata !718, metadata !DIExpression()), !dbg !723
  %3 = load i8*, i8** %0, align 8, !dbg !729, !tbaa !78
  tail call void @free(i8* noundef %3) #11, !dbg !730
  call void @llvm.dbg.value(metadata i64 1, metadata !718, metadata !DIExpression()), !dbg !723
  %4 = load i32, i32* @history_len, align 4, !dbg !724, !tbaa !253
  %cmp8 = icmp sgt i32 %4, 1, !dbg !727
  br i1 %cmp8, label %for.body.for.body_crit_edge, label %for.end.loopexit, !dbg !728, !llvm.loop !731

for.body.for.body_crit_edge:                      ; preds = %for.body.preheader, %for.body.for.body_crit_edge
  %indvars.iv.next9 = phi i64 [ %indvars.iv.next, %for.body.for.body_crit_edge ], [ 1, %for.body.preheader ]
  %.pre = load i8**, i8*** @history, align 8, !dbg !729, !tbaa !78
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next9, metadata !718, metadata !DIExpression()), !dbg !723
  %arrayidx = getelementptr inbounds i8*, i8** %.pre, i64 %indvars.iv.next9, !dbg !729
  %5 = load i8*, i8** %arrayidx, align 8, !dbg !729, !tbaa !78
  tail call void @free(i8* noundef %5) #11, !dbg !730
  %indvars.iv.next = add nuw nsw i64 %indvars.iv.next9, 1, !dbg !733
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !718, metadata !DIExpression()), !dbg !723
  %6 = load i32, i32* @history_len, align 4, !dbg !724, !tbaa !253
  %7 = sext i32 %6 to i64, !dbg !727
  %cmp = icmp slt i64 %indvars.iv.next, %7, !dbg !727
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.end.loopexit, !dbg !728, !llvm.loop !731

for.end.loopexit:                                 ; preds = %for.body.for.body_crit_edge, %for.body.preheader
  %.pre7 = load i8*, i8** bitcast (i8*** @history to i8**), align 8, !dbg !734, !tbaa !78
  br label %for.end, !dbg !734

for.end:                                          ; preds = %for.end.loopexit, %for.cond.preheader
  %8 = phi i8* [ %.pre7, %for.end.loopexit ], [ %1, %for.cond.preheader ], !dbg !734
  tail call void @free(i8* noundef %8) #11, !dbg !735
  br label %if.end, !dbg !736

if.end:                                           ; preds = %for.end, %entry
  ret void, !dbg !737
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @getColumns() unnamed_addr #0 !dbg !738 {
entry:
  %ws = alloca %struct.winsize, align 2
  %0 = bitcast %struct.winsize* %ws to i8*, !dbg !748
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #9, !dbg !748
  call void @llvm.dbg.declare(metadata %struct.winsize* %ws, metadata !740, metadata !DIExpression()), !dbg !749
  %call = call i32 (i32, i64, ...) @ioctl(i32 noundef 1, i64 noundef 21523, %struct.winsize* noundef nonnull %ws) #11, !dbg !750
  %cmp = icmp eq i32 %call, -1, !dbg !752
  %ws_col = getelementptr inbounds %struct.winsize, %struct.winsize* %ws, i64 0, i32 1, !dbg !753
  %1 = load i16, i16* %ws_col, align 2, !dbg !753
  %conv = zext i16 %1 to i32, !dbg !753
  %retval.0 = select i1 %cmp, i32 80, i32 %conv, !dbg !753
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #9, !dbg !754
  ret i32 %retval.0, !dbg !754
}

declare !dbg !755 dso_local i64 @write(i32 noundef, i8* noundef, i64 noundef) local_unnamed_addr #3

declare !dbg !760 dso_local i64 @read(i32 noundef, i8* noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @refreshLine(i8* noundef %prompt, i8* noundef %buf, i64 noundef %len, i64 noundef %pos, i64 noundef %cols) unnamed_addr #0 !dbg !763 {
entry:
  %seq = alloca [64 x i8], align 16
  call void @llvm.dbg.value(metadata i32 0, metadata !767, metadata !DIExpression()), !dbg !778
  call void @llvm.dbg.value(metadata i8* %prompt, metadata !768, metadata !DIExpression()), !dbg !778
  call void @llvm.dbg.value(metadata i8* %buf, metadata !769, metadata !DIExpression()), !dbg !778
  call void @llvm.dbg.value(metadata i64 %len, metadata !770, metadata !DIExpression()), !dbg !778
  call void @llvm.dbg.value(metadata i64 %pos, metadata !771, metadata !DIExpression()), !dbg !778
  call void @llvm.dbg.value(metadata i64 %cols, metadata !772, metadata !DIExpression()), !dbg !778
  %0 = getelementptr inbounds [64 x i8], [64 x i8]* %seq, i64 0, i64 0, !dbg !779
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %0) #9, !dbg !779
  call void @llvm.dbg.declare(metadata [64 x i8]* %seq, metadata !773, metadata !DIExpression()), !dbg !780
  %call = tail call i64 @strlen(i8* noundef %prompt) #12, !dbg !781
  call void @llvm.dbg.value(metadata i64 %call, metadata !777, metadata !DIExpression()), !dbg !778
  call void @llvm.dbg.value(metadata i8* %buf, metadata !769, metadata !DIExpression()), !dbg !778
  call void @llvm.dbg.value(metadata i64 %len, metadata !770, metadata !DIExpression()), !dbg !778
  call void @llvm.dbg.value(metadata i64 %pos, metadata !771, metadata !DIExpression()), !dbg !778
  %add1 = add i64 %call, %pos, !dbg !782
  %cmp.not2 = icmp ult i64 %add1, %cols, !dbg !783
  br i1 %cmp.not2, label %while.cond2.preheader, label %while.body, !dbg !784

while.cond2.preheader:                            ; preds = %while.body, %entry
  %len.addr.0.lcssa = phi i64 [ %len, %entry ], [ %dec, %while.body ]
  %buf.addr.0.lcssa = phi i8* [ %buf, %entry ], [ %incdec.ptr, %while.body ]
  %add.lcssa = phi i64 [ %add1, %entry ], [ %add, %while.body ], !dbg !782
  %1 = add i64 %call, %len.addr.0.lcssa, !dbg !785
  %umin = call i64 @llvm.umin.i64(i64 %cols, i64 %1), !dbg !785
  call void @llvm.dbg.value(metadata i32 undef, metadata !770, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !778
  %2 = sub i64 %umin, %call, !dbg !785
  %call8 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef nonnull %0, i64 noundef 64, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0)) #11, !dbg !786
  %call11 = call i64 @strlen(i8* noundef nonnull %0) #12, !dbg !787
  %call12 = call i64 @write(i32 noundef 0, i8* noundef nonnull %0, i64 noundef %call11) #11, !dbg !789
  %cmp13 = icmp eq i64 %call12, -1, !dbg !790
  br i1 %cmp13, label %cleanup, label %if.end, !dbg !791

while.body:                                       ; preds = %entry, %while.body
  %buf.addr.05 = phi i8* [ %incdec.ptr, %while.body ], [ %buf, %entry ]
  %len.addr.04 = phi i64 [ %dec, %while.body ], [ %len, %entry ]
  %pos.addr.03 = phi i64 [ %dec1, %while.body ], [ %pos, %entry ]
  call void @llvm.dbg.value(metadata i8* %buf.addr.05, metadata !769, metadata !DIExpression()), !dbg !778
  call void @llvm.dbg.value(metadata i64 %len.addr.04, metadata !770, metadata !DIExpression()), !dbg !778
  call void @llvm.dbg.value(metadata i64 %pos.addr.03, metadata !771, metadata !DIExpression()), !dbg !778
  %incdec.ptr = getelementptr inbounds i8, i8* %buf.addr.05, i64 1, !dbg !792
  call void @llvm.dbg.value(metadata i8* %incdec.ptr, metadata !769, metadata !DIExpression()), !dbg !778
  %dec = add i64 %len.addr.04, -1, !dbg !794
  call void @llvm.dbg.value(metadata i64 %dec, metadata !770, metadata !DIExpression()), !dbg !778
  %dec1 = add i64 %pos.addr.03, -1, !dbg !795
  call void @llvm.dbg.value(metadata i64 %dec1, metadata !771, metadata !DIExpression()), !dbg !778
  %add = add i64 %dec1, %call, !dbg !782
  %cmp.not = icmp ult i64 %add, %cols, !dbg !783
  br i1 %cmp.not, label %while.cond2.preheader, label %while.body, !dbg !784, !llvm.loop !796

if.end:                                           ; preds = %while.cond2.preheader
  %call14 = call i64 @strlen(i8* noundef %prompt) #12, !dbg !798
  %call15 = call i64 @write(i32 noundef 0, i8* noundef %prompt, i64 noundef %call14) #11, !dbg !800
  %cmp16 = icmp eq i64 %call15, -1, !dbg !801
  br i1 %cmp16, label %cleanup, label %if.end18, !dbg !802

if.end18:                                         ; preds = %if.end
  %call19 = call i64 @write(i32 noundef 0, i8* noundef %buf.addr.0.lcssa, i64 noundef %2) #11, !dbg !803
  %cmp20 = icmp eq i64 %call19, -1, !dbg !805
  br i1 %cmp20, label %cleanup, label %if.end22, !dbg !806

if.end22:                                         ; preds = %if.end18
  %call24 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef nonnull %0, i64 noundef 64, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0)) #11, !dbg !807
  %call27 = call i64 @strlen(i8* noundef nonnull %0) #12, !dbg !808
  %call28 = call i64 @write(i32 noundef 0, i8* noundef nonnull %0, i64 noundef %call27) #11, !dbg !810
  %cmp29 = icmp eq i64 %call28, -1, !dbg !811
  br i1 %cmp29, label %cleanup, label %if.end31, !dbg !812

if.end31:                                         ; preds = %if.end22
  %conv = trunc i64 %add.lcssa to i32, !dbg !813
  %call34 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef nonnull %0, i64 noundef 64, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i64 0, i64 0), i32 noundef %conv) #11, !dbg !814
  %call37 = call i64 @strlen(i8* noundef nonnull %0) #12, !dbg !815
  %call38 = call i64 @write(i32 noundef 0, i8* noundef nonnull %0, i64 noundef %call37) #11, !dbg !817
  br label %cleanup, !dbg !778

cleanup:                                          ; preds = %if.end31, %if.end22, %if.end18, %if.end, %while.cond2.preheader
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %0) #9, !dbg !818
  ret void, !dbg !818
}

; Function Attrs: nounwind
declare !dbg !819 dso_local i8* @strncpy(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: nounwind
declare !dbg !822 dso_local i32 @ioctl(i32 noundef, i64 noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind
declare !dbg !826 dso_local i32 @snprintf(i8* noundef, i64 noundef, i8* noundef, ...) local_unnamed_addr #5

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #8

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umin.i64(i64, i64) #8

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #3 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nosync nounwind readnone willreturn "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #8 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { nobuiltin "no-builtins" }
attributes #11 = { nobuiltin nounwind "no-builtins" }
attributes #12 = { nobuiltin nounwind readonly willreturn "no-builtins" }
attributes #13 = { nobuiltin nounwind readnone willreturn "no-builtins" }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!48, !49, !50, !51}
!llvm.ident = !{!52}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "history", scope: !2, file: !3, line: 94, type: !45, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 14.0.0", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !4, globals: !7, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "linenoise.c", directory: "/home/xuheng/blackbox/llvm-test/redis", checksumkind: CSK_MD5, checksum: "931183a8cac331e33ca48466f6e78733")
!4 = !{!5, !6}
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!6 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!7 = !{!0, !8, !15, !17, !39, !41, !43}
!8 = !DIGlobalVariableExpression(var: !9, expr: !DIExpression())
!9 = distinct !DIGlobalVariable(name: "unsupported_term", scope: !2, file: !3, line: 87, type: !10, isLocal: true, isDefinition: true)
!10 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 192, elements: !13)
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!12 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!13 = !{!14}
!14 = !DISubrange(count: 3)
!15 = !DIGlobalVariableExpression(var: !16, expr: !DIExpression())
!16 = distinct !DIGlobalVariable(name: "atexit_registered", scope: !2, file: !3, line: 91, type: !6, isLocal: true, isDefinition: true)
!17 = !DIGlobalVariableExpression(var: !18, expr: !DIExpression())
!18 = distinct !DIGlobalVariable(name: "orig_termios", scope: !2, file: !3, line: 89, type: !19, isLocal: true, isDefinition: true)
!19 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "termios", file: !20, line: 24, size: 480, elements: !21)
!20 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/termios-struct.h", directory: "", checksumkind: CSK_MD5, checksum: "f159932b18f45e69bb37242e9d5405d7")
!21 = !{!22, !26, !27, !28, !29, !32, !36, !38}
!22 = !DIDerivedType(tag: DW_TAG_member, name: "c_iflag", scope: !19, file: !20, line: 26, baseType: !23, size: 32)
!23 = !DIDerivedType(tag: DW_TAG_typedef, name: "tcflag_t", file: !24, line: 25, baseType: !25)
!24 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/termios.h", directory: "", checksumkind: CSK_MD5, checksum: "4cc53e07a3106a0383fec47842a0a036")
!25 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "c_oflag", scope: !19, file: !20, line: 27, baseType: !23, size: 32, offset: 32)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "c_cflag", scope: !19, file: !20, line: 28, baseType: !23, size: 32, offset: 64)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "c_lflag", scope: !19, file: !20, line: 29, baseType: !23, size: 32, offset: 96)
!29 = !DIDerivedType(tag: DW_TAG_member, name: "c_line", scope: !19, file: !20, line: 30, baseType: !30, size: 8, offset: 128)
!30 = !DIDerivedType(tag: DW_TAG_typedef, name: "cc_t", file: !24, line: 23, baseType: !31)
!31 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "c_cc", scope: !19, file: !20, line: 31, baseType: !33, size: 256, offset: 136)
!33 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 256, elements: !34)
!34 = !{!35}
!35 = !DISubrange(count: 32)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "c_ispeed", scope: !19, file: !20, line: 32, baseType: !37, size: 32, offset: 416)
!37 = !DIDerivedType(tag: DW_TAG_typedef, name: "speed_t", file: !24, line: 24, baseType: !25)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "c_ospeed", scope: !19, file: !20, line: 33, baseType: !37, size: 32, offset: 448)
!39 = !DIGlobalVariableExpression(var: !40, expr: !DIExpression())
!40 = distinct !DIGlobalVariable(name: "rawmode", scope: !2, file: !3, line: 90, type: !6, isLocal: true, isDefinition: true)
!41 = !DIGlobalVariableExpression(var: !42, expr: !DIExpression())
!42 = distinct !DIGlobalVariable(name: "history_max_len", scope: !2, file: !3, line: 92, type: !6, isLocal: true, isDefinition: true)
!43 = !DIGlobalVariableExpression(var: !44, expr: !DIExpression())
!44 = distinct !DIGlobalVariable(name: "history_len", scope: !2, file: !3, line: 93, type: !6, isLocal: true, isDefinition: true)
!45 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64)
!46 = !DIGlobalVariableExpression(var: !16, expr: !DIExpression(DW_OP_deref_size, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!47 = !DIGlobalVariableExpression(var: !40, expr: !DIExpression(DW_OP_deref_size, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!48 = !{i32 7, !"Dwarf Version", i32 5}
!49 = !{i32 2, !"Debug Info Version", i32 3}
!50 = !{i32 1, !"wchar_size", i32 4}
!51 = !{i32 7, !"uwtable", i32 1}
!52 = !{!"clang version 14.0.0"}
!53 = distinct !DISubprogram(name: "linenoise", scope: !3, file: !3, line: 372, type: !54, scopeLine: 372, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !58)
!54 = !DISubroutineType(types: !55)
!55 = !{!11, !56}
!56 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !57, size: 64)
!57 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !12)
!58 = !{!59, !60, !64, !65}
!59 = !DILocalVariable(name: "prompt", arg: 1, scope: !53, file: !3, line: 372, type: !56)
!60 = !DILocalVariable(name: "buf", scope: !53, file: !3, line: 373, type: !61)
!61 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 32768, elements: !62)
!62 = !{!63}
!63 = !DISubrange(count: 4096)
!64 = !DILocalVariable(name: "count", scope: !53, file: !3, line: 374, type: !6)
!65 = !DILocalVariable(name: "len", scope: !66, file: !3, line: 377, type: !68)
!66 = distinct !DILexicalBlock(scope: !67, file: !3, line: 376, column: 30)
!67 = distinct !DILexicalBlock(scope: !53, file: !3, line: 376, column: 9)
!68 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !69, line: 46, baseType: !70)
!69 = !DIFile(filename: "VeriFrame/LLVMUtils/llvm/lib/clang/14.0.0/include/stddef.h", directory: "/home/xuheng", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!70 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!71 = !DILocation(line: 0, scope: !53)
!72 = !DILocation(line: 373, column: 5, scope: !53)
!73 = !DILocation(line: 373, column: 10, scope: !53)
!74 = !DILocation(line: 376, column: 9, scope: !67)
!75 = !DILocation(line: 376, column: 9, scope: !53)
!76 = !DILocation(line: 379, column: 9, scope: !66)
!77 = !DILocation(line: 380, column: 16, scope: !66)
!78 = !{!79, !79, i64 0}
!79 = !{!"any pointer", !80, i64 0}
!80 = !{!"omnipotent char", !81, i64 0}
!81 = !{!"Simple C/C++ TBAA"}
!82 = !DILocation(line: 380, column: 9, scope: !66)
!83 = !DILocation(line: 381, column: 42, scope: !84)
!84 = distinct !DILexicalBlock(scope: !66, file: !3, line: 381, column: 13)
!85 = !DILocation(line: 381, column: 13, scope: !84)
!86 = !DILocation(line: 381, column: 49, scope: !84)
!87 = !DILocation(line: 381, column: 13, scope: !66)
!88 = !DILocation(line: 382, column: 15, scope: !66)
!89 = !DILocation(line: 0, scope: !66)
!90 = !DILocation(line: 383, column: 15, scope: !66)
!91 = !DILocation(line: 383, column: 19, scope: !66)
!92 = !DILocation(line: 383, column: 30, scope: !66)
!93 = !DILocation(line: 383, column: 23, scope: !66)
!94 = !{!80, !80, i64 0}
!95 = !DILocation(line: 383, column: 42, scope: !66)
!96 = !DILocation(line: 385, column: 22, scope: !97)
!97 = distinct !DILexicalBlock(scope: !66, file: !3, line: 383, column: 66)
!98 = distinct !{!98, !99, !100}
!99 = !DILocation(line: 383, column: 9, scope: !66)
!100 = !DILocation(line: 386, column: 9, scope: !66)
!101 = !DILocation(line: 389, column: 17, scope: !102)
!102 = distinct !DILexicalBlock(scope: !67, file: !3, line: 388, column: 12)
!103 = !DILocation(line: 390, column: 19, scope: !104)
!104 = distinct !DILexicalBlock(scope: !102, file: !3, line: 390, column: 13)
!105 = !DILocation(line: 390, column: 13, scope: !102)
!106 = !DILocation(line: 0, scope: !67)
!107 = !DILocation(line: 393, column: 1, scope: !53)
!108 = distinct !DISubprogram(name: "isUnsupportedTerm", scope: !3, file: !3, line: 99, type: !109, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !111)
!109 = !DISubroutineType(types: !110)
!110 = !{!6}
!111 = !{!112, !113}
!112 = !DILocalVariable(name: "term", scope: !108, file: !3, line: 100, type: !11)
!113 = !DILocalVariable(name: "j", scope: !108, file: !3, line: 101, type: !6)
!114 = !DILocation(line: 100, column: 18, scope: !108)
!115 = !DILocation(line: 0, scope: !108)
!116 = !DILocation(line: 103, column: 14, scope: !117)
!117 = distinct !DILexicalBlock(scope: !108, file: !3, line: 103, column: 9)
!118 = !DILocation(line: 103, column: 9, scope: !108)
!119 = !DILocation(line: 105, column: 14, scope: !120)
!120 = distinct !DILexicalBlock(scope: !121, file: !3, line: 105, column: 13)
!121 = distinct !DILexicalBlock(scope: !122, file: !3, line: 104, column: 5)
!122 = distinct !DILexicalBlock(scope: !108, file: !3, line: 104, column: 5)
!123 = !DILocation(line: 105, column: 13, scope: !121)
!124 = !DILocation(line: 107, column: 1, scope: !108)
!125 = !DISubprogram(name: "printf", scope: !126, file: !126, line: 332, type: !127, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !130)
!126 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "5b917eded35ce2507d1e294bf8cb74d7")
!127 = !DISubroutineType(types: !128)
!128 = !{!6, !129, null}
!129 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !56)
!130 = !{}
!131 = !DISubprogram(name: "fflush", scope: !126, file: !126, line: 218, type: !132, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !130)
!132 = !DISubroutineType(types: !133)
!133 = !{!6, !134}
!134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !135, size: 64)
!135 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !136, line: 7, baseType: !137)
!136 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!137 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !138, line: 49, size: 1728, elements: !139)
!138 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "f3c970561f3408448ce03a9676ead8f4")
!139 = !{!140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !155, !157, !158, !159, !163, !165, !167, !171, !174, !176, !179, !182, !183, !184, !185, !186}
!140 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !137, file: !138, line: 51, baseType: !6, size: 32)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !137, file: !138, line: 54, baseType: !11, size: 64, offset: 64)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !137, file: !138, line: 55, baseType: !11, size: 64, offset: 128)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !137, file: !138, line: 56, baseType: !11, size: 64, offset: 192)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !137, file: !138, line: 57, baseType: !11, size: 64, offset: 256)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !137, file: !138, line: 58, baseType: !11, size: 64, offset: 320)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !137, file: !138, line: 59, baseType: !11, size: 64, offset: 384)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !137, file: !138, line: 60, baseType: !11, size: 64, offset: 448)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !137, file: !138, line: 61, baseType: !11, size: 64, offset: 512)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !137, file: !138, line: 64, baseType: !11, size: 64, offset: 576)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !137, file: !138, line: 65, baseType: !11, size: 64, offset: 640)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !137, file: !138, line: 66, baseType: !11, size: 64, offset: 704)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !137, file: !138, line: 68, baseType: !153, size: 64, offset: 768)
!153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !154, size: 64)
!154 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !138, line: 36, flags: DIFlagFwdDecl)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !137, file: !138, line: 70, baseType: !156, size: 64, offset: 832)
!156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !137, size: 64)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !137, file: !138, line: 72, baseType: !6, size: 32, offset: 896)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !137, file: !138, line: 73, baseType: !6, size: 32, offset: 928)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !137, file: !138, line: 74, baseType: !160, size: 64, offset: 960)
!160 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !161, line: 152, baseType: !162)
!161 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "f6304b1a6dcfc6bee76e9a51043b5090")
!162 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !137, file: !138, line: 77, baseType: !164, size: 16, offset: 1024)
!164 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !137, file: !138, line: 78, baseType: !166, size: 8, offset: 1040)
!166 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !137, file: !138, line: 79, baseType: !168, size: 8, offset: 1048)
!168 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 8, elements: !169)
!169 = !{!170}
!170 = !DISubrange(count: 1)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !137, file: !138, line: 81, baseType: !172, size: 64, offset: 1088)
!172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !173, size: 64)
!173 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !138, line: 43, baseType: null)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !137, file: !138, line: 89, baseType: !175, size: 64, offset: 1152)
!175 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !161, line: 153, baseType: !162)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !137, file: !138, line: 91, baseType: !177, size: 64, offset: 1216)
!177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !178, size: 64)
!178 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !138, line: 37, flags: DIFlagFwdDecl)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !137, file: !138, line: 92, baseType: !180, size: 64, offset: 1280)
!180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !181, size: 64)
!181 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !138, line: 38, flags: DIFlagFwdDecl)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !137, file: !138, line: 93, baseType: !156, size: 64, offset: 1344)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !137, file: !138, line: 94, baseType: !5, size: 64, offset: 1408)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !137, file: !138, line: 95, baseType: !68, size: 64, offset: 1472)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !137, file: !138, line: 96, baseType: !6, size: 32, offset: 1536)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !137, file: !138, line: 98, baseType: !187, size: 160, offset: 1568)
!187 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 160, elements: !188)
!188 = !{!189}
!189 = !DISubrange(count: 20)
!190 = !DISubprogram(name: "fgets", scope: !126, file: !126, line: 564, type: !191, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !130)
!191 = !DISubroutineType(types: !192)
!192 = !{!11, !193, !6, !194}
!193 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !11)
!194 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !134)
!195 = !DISubprogram(name: "strlen", scope: !196, file: !196, line: 385, type: !197, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !130)
!196 = !DIFile(filename: "/usr/include/string.h", directory: "", checksumkind: CSK_MD5, checksum: "61f60112cf5c0a45c54ea1f595add24c")
!197 = !DISubroutineType(types: !198)
!198 = !{!68, !56}
!199 = !DISubprogram(name: "strdup", scope: !196, file: !196, line: 167, type: !54, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !130)
!200 = distinct !DISubprogram(name: "linenoiseRaw", scope: !3, file: !3, line: 348, type: !201, scopeLine: 348, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !203)
!201 = !DISubroutineType(types: !202)
!202 = !{!6, !11, !68, !56}
!203 = !{!204, !205, !206, !207, !208}
!204 = !DILocalVariable(name: "buf", arg: 1, scope: !200, file: !3, line: 348, type: !11)
!205 = !DILocalVariable(name: "buflen", arg: 2, scope: !200, file: !3, line: 348, type: !68)
!206 = !DILocalVariable(name: "prompt", arg: 3, scope: !200, file: !3, line: 348, type: !56)
!207 = !DILocalVariable(name: "fd", scope: !200, file: !3, line: 349, type: !6)
!208 = !DILocalVariable(name: "count", scope: !200, file: !3, line: 350, type: !6)
!209 = !DILocation(line: 0, scope: !200)
!210 = !DILocation(line: 356, column: 10, scope: !211)
!211 = distinct !DILexicalBlock(scope: !200, file: !3, line: 356, column: 9)
!212 = !DILocation(line: 356, column: 9, scope: !200)
!213 = !DILocation(line: 357, column: 32, scope: !214)
!214 = distinct !DILexicalBlock(scope: !215, file: !3, line: 357, column: 13)
!215 = distinct !DILexicalBlock(scope: !211, file: !3, line: 356, column: 32)
!216 = !DILocation(line: 357, column: 13, scope: !214)
!217 = !DILocation(line: 357, column: 39, scope: !214)
!218 = !DILocation(line: 357, column: 13, scope: !215)
!219 = !DILocation(line: 358, column: 17, scope: !215)
!220 = !DILocation(line: 359, column: 13, scope: !221)
!221 = distinct !DILexicalBlock(scope: !215, file: !3, line: 359, column: 13)
!222 = !DILocation(line: 359, column: 19, scope: !221)
!223 = !DILocation(line: 359, column: 22, scope: !221)
!224 = !DILocation(line: 359, column: 35, scope: !221)
!225 = !DILocation(line: 359, column: 13, scope: !215)
!226 = !DILocation(line: 360, column: 18, scope: !227)
!227 = distinct !DILexicalBlock(scope: !221, file: !3, line: 359, column: 44)
!228 = !DILocation(line: 361, column: 13, scope: !227)
!229 = !DILocation(line: 361, column: 24, scope: !227)
!230 = !DILocation(line: 362, column: 9, scope: !227)
!231 = !DILocation(line: 364, column: 13, scope: !232)
!232 = distinct !DILexicalBlock(scope: !233, file: !3, line: 364, column: 13)
!233 = distinct !DILexicalBlock(scope: !211, file: !3, line: 363, column: 12)
!234 = !DILocation(line: 364, column: 31, scope: !232)
!235 = !DILocation(line: 364, column: 13, scope: !233)
!236 = !DILocation(line: 365, column: 17, scope: !233)
!237 = !DILocation(line: 366, column: 9, scope: !233)
!238 = !DILocation(line: 367, column: 9, scope: !233)
!239 = !DILocation(line: 370, column: 1, scope: !200)
!240 = distinct !DISubprogram(name: "linenoiseHistoryAdd", scope: !3, file: !3, line: 396, type: !241, scopeLine: 396, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !243)
!241 = !DISubroutineType(types: !242)
!242 = !{!6, !56}
!243 = !{!244, !245}
!244 = !DILocalVariable(name: "line", arg: 1, scope: !240, file: !3, line: 396, type: !56)
!245 = !DILocalVariable(name: "linecopy", scope: !240, file: !3, line: 397, type: !11)
!246 = !DILocation(line: 0, scope: !240)
!247 = !DILocation(line: 400, column: 9, scope: !248)
!248 = distinct !DILexicalBlock(scope: !240, file: !3, line: 400, column: 9)
!249 = !DILocation(line: 400, column: 17, scope: !248)
!250 = !DILocation(line: 400, column: 9, scope: !240)
!251 = !DILocation(line: 399, column: 9, scope: !252)
!252 = distinct !DILexicalBlock(scope: !240, file: !3, line: 399, column: 9)
!253 = !{!254, !254, i64 0}
!254 = !{!"int", !80, i64 0}
!255 = !DILocation(line: 401, column: 40, scope: !256)
!256 = distinct !DILexicalBlock(scope: !248, file: !3, line: 400, column: 26)
!257 = !DILocation(line: 401, column: 39, scope: !256)
!258 = !DILocation(line: 401, column: 19, scope: !256)
!259 = !DILocation(line: 401, column: 17, scope: !256)
!260 = !DILocation(line: 402, column: 21, scope: !261)
!261 = distinct !DILexicalBlock(scope: !256, file: !3, line: 402, column: 13)
!262 = !DILocation(line: 402, column: 13, scope: !256)
!263 = !DILocation(line: 403, column: 41, scope: !256)
!264 = !DILocation(line: 403, column: 40, scope: !256)
!265 = !DILocation(line: 403, column: 9, scope: !256)
!266 = !DILocation(line: 404, column: 5, scope: !256)
!267 = !DILocation(line: 405, column: 16, scope: !240)
!268 = !DILocation(line: 406, column: 10, scope: !269)
!269 = distinct !DILexicalBlock(scope: !240, file: !3, line: 406, column: 9)
!270 = !DILocation(line: 406, column: 9, scope: !240)
!271 = !DILocation(line: 407, column: 9, scope: !272)
!272 = distinct !DILexicalBlock(scope: !240, file: !3, line: 407, column: 9)
!273 = !DILocation(line: 407, column: 24, scope: !272)
!274 = !DILocation(line: 407, column: 21, scope: !272)
!275 = !DILocation(line: 407, column: 9, scope: !240)
!276 = !DILocation(line: 408, column: 14, scope: !277)
!277 = distinct !DILexicalBlock(scope: !272, file: !3, line: 407, column: 41)
!278 = !DILocation(line: 408, column: 9, scope: !277)
!279 = !DILocation(line: 409, column: 17, scope: !277)
!280 = !DILocation(line: 409, column: 32, scope: !277)
!281 = !DILocation(line: 409, column: 25, scope: !277)
!282 = !DILocation(line: 409, column: 50, scope: !277)
!283 = !DILocation(line: 409, column: 65, scope: !277)
!284 = !DILocation(line: 409, column: 48, scope: !277)
!285 = !DILocation(line: 409, column: 9, scope: !277)
!286 = !DILocation(line: 410, column: 20, scope: !277)
!287 = !DILocation(line: 411, column: 5, scope: !277)
!288 = !DILocation(line: 412, column: 13, scope: !240)
!289 = !DILocation(line: 412, column: 5, scope: !240)
!290 = !DILocation(line: 412, column: 26, scope: !240)
!291 = !DILocation(line: 413, column: 16, scope: !240)
!292 = !DILocation(line: 414, column: 5, scope: !240)
!293 = !DILocation(line: 415, column: 1, scope: !240)
!294 = !DISubprogram(name: "malloc", scope: !295, file: !295, line: 539, type: !296, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !130)
!295 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "f0db66726d35051e5af2525f5b33bd81")
!296 = !DISubroutineType(types: !297)
!297 = !{!5, !68}
!298 = !DISubprogram(name: "memset", scope: !196, file: !196, line: 61, type: !299, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !130)
!299 = !DISubroutineType(types: !300)
!300 = !{!5, !5, !6, !68}
!301 = !DISubprogram(name: "free", scope: !295, file: !295, line: 565, type: !302, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !130)
!302 = !DISubroutineType(types: !303)
!303 = !{null, !5}
!304 = !DISubprogram(name: "memmove", scope: !196, file: !196, line: 47, type: !305, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !130)
!305 = !DISubroutineType(types: !306)
!306 = !{!5, !5, !307, !68}
!307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !308, size: 64)
!308 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!309 = distinct !DISubprogram(name: "linenoiseHistorySetMaxLen", scope: !3, file: !3, line: 417, type: !310, scopeLine: 417, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !312)
!310 = !DISubroutineType(types: !311)
!311 = !{!6, !6}
!312 = !{!313, !314, !315}
!313 = !DILocalVariable(name: "len", arg: 1, scope: !309, file: !3, line: 417, type: !6)
!314 = !DILocalVariable(name: "new", scope: !309, file: !3, line: 418, type: !45)
!315 = !DILocalVariable(name: "tocopy", scope: !316, file: !3, line: 422, type: !6)
!316 = distinct !DILexicalBlock(scope: !317, file: !3, line: 421, column: 18)
!317 = distinct !DILexicalBlock(scope: !309, file: !3, line: 421, column: 9)
!318 = !DILocation(line: 0, scope: !309)
!319 = !DILocation(line: 420, column: 13, scope: !320)
!320 = distinct !DILexicalBlock(scope: !309, file: !3, line: 420, column: 9)
!321 = !DILocation(line: 420, column: 9, scope: !309)
!322 = !DILocation(line: 421, column: 9, scope: !317)
!323 = !DILocation(line: 421, column: 9, scope: !309)
!324 = !DILocation(line: 422, column: 22, scope: !316)
!325 = !DILocation(line: 0, scope: !316)
!326 = !DILocation(line: 424, column: 36, scope: !316)
!327 = !DILocation(line: 424, column: 35, scope: !316)
!328 = !DILocation(line: 424, column: 15, scope: !316)
!329 = !DILocation(line: 425, column: 17, scope: !330)
!330 = distinct !DILexicalBlock(scope: !316, file: !3, line: 425, column: 13)
!331 = !DILocation(line: 425, column: 13, scope: !316)
!332 = !DILocation(line: 426, column: 17, scope: !333)
!333 = distinct !DILexicalBlock(scope: !316, file: !3, line: 426, column: 13)
!334 = !DILocation(line: 426, column: 13, scope: !316)
!335 = !DILocation(line: 427, column: 20, scope: !316)
!336 = !DILocation(line: 427, column: 29, scope: !316)
!337 = !DILocation(line: 427, column: 44, scope: !316)
!338 = !DILocation(line: 427, column: 27, scope: !316)
!339 = !DILocation(line: 427, column: 68, scope: !316)
!340 = !DILocation(line: 427, column: 67, scope: !316)
!341 = !DILocation(line: 427, column: 9, scope: !316)
!342 = !DILocation(line: 428, column: 14, scope: !316)
!343 = !DILocation(line: 428, column: 9, scope: !316)
!344 = !DILocation(line: 429, column: 17, scope: !316)
!345 = !DILocation(line: 431, column: 21, scope: !309)
!346 = !DILocation(line: 432, column: 9, scope: !347)
!347 = distinct !DILexicalBlock(scope: !309, file: !3, line: 432, column: 9)
!348 = !DILocation(line: 432, column: 21, scope: !347)
!349 = !DILocation(line: 432, column: 9, scope: !309)
!350 = !DILocation(line: 433, column: 21, scope: !347)
!351 = !DILocation(line: 433, column: 9, scope: !347)
!352 = !DILocation(line: 435, column: 1, scope: !309)
!353 = !DISubprogram(name: "memcpy", scope: !196, file: !196, line: 43, type: !354, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !130)
!354 = !DISubroutineType(types: !355)
!355 = !{!5, !356, !357, !68}
!356 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !5)
!357 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !307)
!358 = distinct !DISubprogram(name: "linenoiseHistorySave", scope: !3, file: !3, line: 439, type: !359, scopeLine: 439, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !361)
!359 = !DISubroutineType(types: !360)
!360 = !{!6, !11}
!361 = !{!362, !363, !364}
!362 = !DILocalVariable(name: "filename", arg: 1, scope: !358, file: !3, line: 439, type: !11)
!363 = !DILocalVariable(name: "fp", scope: !358, file: !3, line: 440, type: !134)
!364 = !DILocalVariable(name: "j", scope: !358, file: !3, line: 441, type: !6)
!365 = !DILocation(line: 0, scope: !358)
!366 = !DILocation(line: 440, column: 16, scope: !358)
!367 = !DILocation(line: 443, column: 12, scope: !368)
!368 = distinct !DILexicalBlock(scope: !358, file: !3, line: 443, column: 9)
!369 = !DILocation(line: 443, column: 9, scope: !358)
!370 = !DILocation(line: 444, column: 21, scope: !371)
!371 = distinct !DILexicalBlock(scope: !372, file: !3, line: 444, column: 5)
!372 = distinct !DILexicalBlock(scope: !358, file: !3, line: 444, column: 5)
!373 = !DILocation(line: 444, column: 19, scope: !371)
!374 = !DILocation(line: 444, column: 5, scope: !372)
!375 = !DILocation(line: 445, column: 27, scope: !371)
!376 = !DILocation(line: 445, column: 9, scope: !371)
!377 = !DILocation(line: 444, column: 35, scope: !371)
!378 = distinct !{!378, !374, !379}
!379 = !DILocation(line: 445, column: 37, scope: !372)
!380 = !DILocation(line: 446, column: 5, scope: !358)
!381 = !DILocation(line: 447, column: 5, scope: !358)
!382 = !DILocation(line: 448, column: 1, scope: !358)
!383 = !DISubprogram(name: "fopen", linkageName: "fopen64", scope: !126, file: !126, line: 257, type: !384, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !130)
!384 = !DISubroutineType(types: !385)
!385 = !{!134, !129, !129}
!386 = !DISubprogram(name: "fprintf", scope: !126, file: !126, line: 326, type: !387, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !130)
!387 = !DISubroutineType(types: !388)
!388 = !{!6, !194, !129, null}
!389 = !DISubprogram(name: "fclose", scope: !126, file: !126, line: 213, type: !132, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !130)
!390 = distinct !DISubprogram(name: "linenoiseHistoryLoad", scope: !3, file: !3, line: 455, type: !359, scopeLine: 455, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !391)
!391 = !{!392, !393, !394, !395}
!392 = !DILocalVariable(name: "filename", arg: 1, scope: !390, file: !3, line: 455, type: !11)
!393 = !DILocalVariable(name: "fp", scope: !390, file: !3, line: 456, type: !134)
!394 = !DILocalVariable(name: "buf", scope: !390, file: !3, line: 457, type: !61)
!395 = !DILocalVariable(name: "p", scope: !396, file: !3, line: 462, type: !11)
!396 = distinct !DILexicalBlock(scope: !390, file: !3, line: 461, column: 54)
!397 = !DILocation(line: 0, scope: !390)
!398 = !DILocation(line: 456, column: 16, scope: !390)
!399 = !DILocation(line: 457, column: 5, scope: !390)
!400 = !DILocation(line: 457, column: 10, scope: !390)
!401 = !DILocation(line: 459, column: 12, scope: !402)
!402 = distinct !DILexicalBlock(scope: !390, file: !3, line: 459, column: 9)
!403 = !DILocation(line: 459, column: 9, scope: !390)
!404 = !DILocation(line: 461, column: 12, scope: !390)
!405 = !DILocation(line: 461, column: 45, scope: !390)
!406 = !DILocation(line: 461, column: 5, scope: !390)
!407 = !DILocation(line: 464, column: 13, scope: !396)
!408 = !DILocation(line: 0, scope: !396)
!409 = !DILocation(line: 465, column: 14, scope: !410)
!410 = distinct !DILexicalBlock(scope: !396, file: !3, line: 465, column: 13)
!411 = !DILocation(line: 465, column: 13, scope: !396)
!412 = !DILocation(line: 465, column: 21, scope: !410)
!413 = !DILocation(line: 466, column: 13, scope: !414)
!414 = distinct !DILexicalBlock(scope: !396, file: !3, line: 466, column: 13)
!415 = !DILocation(line: 466, column: 13, scope: !396)
!416 = !DILocation(line: 466, column: 19, scope: !414)
!417 = !DILocation(line: 466, column: 16, scope: !414)
!418 = !DILocation(line: 467, column: 9, scope: !396)
!419 = distinct !{!419, !406, !420}
!420 = !DILocation(line: 468, column: 5, scope: !390)
!421 = !DILocation(line: 469, column: 5, scope: !390)
!422 = !DILocation(line: 470, column: 5, scope: !390)
!423 = !DILocation(line: 471, column: 1, scope: !390)
!424 = !DISubprogram(name: "strchr", scope: !196, file: !196, line: 226, type: !425, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !130)
!425 = !DISubroutineType(types: !426)
!426 = !{!11, !56, !6}
!427 = !DISubprogram(name: "getenv", scope: !295, file: !295, line: 634, type: !54, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !130)
!428 = !DISubprogram(name: "strcasecmp", scope: !429, file: !429, line: 116, type: !430, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !130)
!429 = !DIFile(filename: "/usr/include/strings.h", directory: "", checksumkind: CSK_MD5, checksum: "bd81fc6b401eca7e7fe9248ee68afe69")
!430 = !DISubroutineType(types: !431)
!431 = !{!6, !56, !56}
!432 = !DISubprogram(name: "isatty", scope: !433, file: !433, line: 779, type: !310, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !130)
!433 = !DIFile(filename: "/usr/include/unistd.h", directory: "", checksumkind: CSK_MD5, checksum: "29bea3f2d65ec3bb874f389bfdfa2266")
!434 = distinct !DISubprogram(name: "enableRawMode", scope: !3, file: !3, line: 119, type: !310, scopeLine: 119, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !435)
!435 = !{!436, !437, !438}
!436 = !DILocalVariable(name: "fd", arg: 1, scope: !434, file: !3, line: 119, type: !6)
!437 = !DILocalVariable(name: "raw", scope: !434, file: !3, line: 120, type: !19)
!438 = !DILabel(scope: !434, name: "fatal", file: !3, line: 149)
!439 = !DILocation(line: 0, scope: !434)
!440 = !DILocation(line: 120, column: 5, scope: !434)
!441 = !DILocation(line: 120, column: 20, scope: !434)
!442 = !DILocation(line: 122, column: 10, scope: !443)
!443 = distinct !DILexicalBlock(scope: !434, file: !3, line: 122, column: 9)
!444 = !DILocation(line: 122, column: 9, scope: !434)
!445 = !DILocation(line: 123, column: 10, scope: !446)
!446 = distinct !DILexicalBlock(scope: !434, file: !3, line: 123, column: 9)
!447 = !DILocation(line: 123, column: 9, scope: !434)
!448 = !DILocation(line: 124, column: 9, scope: !449)
!449 = distinct !DILexicalBlock(scope: !446, file: !3, line: 123, column: 29)
!450 = !DILocation(line: 125, column: 27, scope: !449)
!451 = !DILocation(line: 126, column: 5, scope: !449)
!452 = !DILocation(line: 127, column: 9, scope: !453)
!453 = distinct !DILexicalBlock(scope: !434, file: !3, line: 127, column: 9)
!454 = !DILocation(line: 127, column: 37, scope: !453)
!455 = !DILocation(line: 127, column: 9, scope: !434)
!456 = !DILocation(line: 129, column: 11, scope: !434)
!457 = !{i64 0, i64 4, !253, i64 4, i64 4, !253, i64 8, i64 4, !253, i64 12, i64 4, !253, i64 16, i64 1, !94, i64 17, i64 32, !94, i64 52, i64 4, !253, i64 56, i64 4, !253}
!458 = !DILocation(line: 132, column: 17, scope: !434)
!459 = !DILocation(line: 142, column: 5, scope: !434)
!460 = !DILocation(line: 142, column: 20, scope: !434)
!461 = !DILocation(line: 142, column: 25, scope: !434)
!462 = !DILocation(line: 142, column: 41, scope: !434)
!463 = !DILocation(line: 145, column: 9, scope: !464)
!464 = distinct !DILexicalBlock(scope: !434, file: !3, line: 145, column: 9)
!465 = !DILocation(line: 145, column: 38, scope: !464)
!466 = !DILocation(line: 145, column: 9, scope: !434)
!467 = !DILocation(line: 146, column: 13, scope: !434)
!468 = !DILocation(line: 147, column: 5, scope: !434)
!469 = !DILocation(line: 149, column: 1, scope: !434)
!470 = !DILocation(line: 150, column: 5, scope: !434)
!471 = !DILocation(line: 150, column: 11, scope: !434)
!472 = !DILocation(line: 151, column: 5, scope: !434)
!473 = !DILocation(line: 152, column: 1, scope: !434)
!474 = distinct !DISubprogram(name: "linenoisePrompt", scope: !3, file: !3, line: 200, type: !475, scopeLine: 200, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !477)
!475 = !DISubroutineType(types: !476)
!476 = !{!6, !6, !11, !68, !56}
!477 = !{!478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !489, !490, !494, !498, !501, !504}
!478 = !DILocalVariable(name: "fd", arg: 1, scope: !474, file: !3, line: 200, type: !6)
!479 = !DILocalVariable(name: "buf", arg: 2, scope: !474, file: !3, line: 200, type: !11)
!480 = !DILocalVariable(name: "buflen", arg: 3, scope: !474, file: !3, line: 200, type: !68)
!481 = !DILocalVariable(name: "prompt", arg: 4, scope: !474, file: !3, line: 200, type: !56)
!482 = !DILocalVariable(name: "plen", scope: !474, file: !3, line: 201, type: !68)
!483 = !DILocalVariable(name: "pos", scope: !474, file: !3, line: 202, type: !68)
!484 = !DILocalVariable(name: "len", scope: !474, file: !3, line: 203, type: !68)
!485 = !DILocalVariable(name: "cols", scope: !474, file: !3, line: 204, type: !68)
!486 = !DILocalVariable(name: "history_index", scope: !474, file: !3, line: 205, type: !6)
!487 = !DILocalVariable(name: "c", scope: !488, file: !3, line: 216, type: !12)
!488 = distinct !DILexicalBlock(scope: !474, file: !3, line: 215, column: 14)
!489 = !DILocalVariable(name: "nread", scope: !488, file: !3, line: 217, type: !6)
!490 = !DILocalVariable(name: "seq", scope: !488, file: !3, line: 218, type: !491)
!491 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 16, elements: !492)
!492 = !{!493}
!493 = !DISubrange(count: 2)
!494 = !DILocalVariable(name: "aux", scope: !495, file: !3, line: 243, type: !6)
!495 = distinct !DILexicalBlock(scope: !496, file: !3, line: 242, column: 39)
!496 = distinct !DILexicalBlock(scope: !497, file: !3, line: 242, column: 17)
!497 = distinct !DILexicalBlock(scope: !488, file: !3, line: 222, column: 19)
!498 = !DILabel(scope: !499, name: "left_arrow", file: !3, line: 264)
!499 = distinct !DILexicalBlock(scope: !500, file: !3, line: 263, column: 47)
!500 = distinct !DILexicalBlock(scope: !497, file: !3, line: 263, column: 17)
!501 = !DILabel(scope: !502, name: "right_arrow", file: !3, line: 271)
!502 = distinct !DILexicalBlock(scope: !503, file: !3, line: 270, column: 54)
!503 = distinct !DILexicalBlock(scope: !500, file: !3, line: 270, column: 24)
!504 = !DILabel(scope: !505, name: "up_down_arrow", file: !3, line: 278)
!505 = distinct !DILexicalBlock(scope: !506, file: !3, line: 277, column: 72)
!506 = distinct !DILexicalBlock(scope: !503, file: !3, line: 277, column: 24)
!507 = !DILocation(line: 0, scope: !474)
!508 = !DILocation(line: 201, column: 19, scope: !474)
!509 = !DILocation(line: 204, column: 19, scope: !474)
!510 = !DILocation(line: 207, column: 12, scope: !474)
!511 = !DILocation(line: 212, column: 5, scope: !474)
!512 = !DILocation(line: 214, column: 9, scope: !513)
!513 = distinct !DILexicalBlock(scope: !474, file: !3, line: 214, column: 9)
!514 = !DILocation(line: 214, column: 31, scope: !513)
!515 = !DILocation(line: 214, column: 9, scope: !474)
!516 = !DILocation(line: 216, column: 9, scope: !488)
!517 = !DILocation(line: 218, column: 9, scope: !488)
!518 = !DILocation(line: 218, column: 14, scope: !488)
!519 = !DILocation(line: 0, scope: !488)
!520 = !DILocation(line: 220, column: 17, scope: !488)
!521 = !DILocation(line: 221, column: 19, scope: !522)
!522 = distinct !DILexicalBlock(scope: !488, file: !3, line: 221, column: 13)
!523 = !DILocation(line: 221, column: 13, scope: !488)
!524 = !DILocation(line: 203, column: 12, scope: !474)
!525 = !DILocation(line: 221, column: 32, scope: !522)
!526 = !DILocation(line: 221, column: 25, scope: !522)
!527 = !DILocation(line: 222, column: 16, scope: !488)
!528 = !DILocation(line: 222, column: 9, scope: !488)
!529 = !DILocation(line: 225, column: 24, scope: !497)
!530 = !DILocation(line: 226, column: 18, scope: !497)
!531 = !DILocation(line: 226, column: 13, scope: !497)
!532 = !DILocation(line: 227, column: 25, scope: !497)
!533 = !DILocation(line: 227, column: 30, scope: !497)
!534 = !DILocation(line: 227, column: 13, scope: !497)
!535 = !DILocation(line: 229, column: 13, scope: !497)
!536 = !DILocation(line: 229, column: 19, scope: !497)
!537 = !DILocation(line: 230, column: 13, scope: !497)
!538 = !DILocation(line: 233, column: 21, scope: !539)
!539 = distinct !DILexicalBlock(scope: !497, file: !3, line: 233, column: 17)
!540 = !DILocation(line: 233, column: 25, scope: !539)
!541 = !DILocation(line: 234, column: 28, scope: !542)
!542 = distinct !DILexicalBlock(scope: !539, file: !3, line: 233, column: 37)
!543 = !DILocation(line: 234, column: 32, scope: !542)
!544 = !DILocation(line: 234, column: 46, scope: !542)
!545 = !DILocation(line: 234, column: 17, scope: !542)
!546 = !DILocation(line: 235, column: 20, scope: !542)
!547 = !DILocation(line: 236, column: 20, scope: !542)
!548 = !DILocation(line: 237, column: 17, scope: !542)
!549 = !DILocation(line: 237, column: 26, scope: !542)
!550 = !DILocation(line: 238, column: 17, scope: !542)
!551 = !DILocation(line: 239, column: 13, scope: !542)
!552 = !DILocation(line: 242, column: 21, scope: !496)
!553 = !DILocation(line: 242, column: 25, scope: !496)
!554 = !DILocation(line: 242, column: 32, scope: !496)
!555 = !DILocation(line: 242, column: 17, scope: !497)
!556 = !DILocation(line: 243, column: 34, scope: !495)
!557 = !DILocation(line: 243, column: 27, scope: !495)
!558 = !DILocation(line: 0, scope: !495)
!559 = !DILocation(line: 244, column: 30, scope: !495)
!560 = !DILocation(line: 244, column: 28, scope: !495)
!561 = !DILocation(line: 245, column: 26, scope: !495)
!562 = !DILocation(line: 246, column: 31, scope: !563)
!563 = distinct !DILexicalBlock(scope: !495, file: !3, line: 246, column: 21)
!564 = !DILocation(line: 246, column: 25, scope: !563)
!565 = !DILocation(line: 246, column: 21, scope: !495)
!566 = !DILocation(line: 247, column: 17, scope: !495)
!567 = !DILocation(line: 248, column: 13, scope: !495)
!568 = !DILocation(line: 259, column: 13, scope: !497)
!569 = !DILocation(line: 262, column: 17, scope: !570)
!570 = distinct !DILexicalBlock(scope: !497, file: !3, line: 262, column: 17)
!571 = !DILocation(line: 262, column: 32, scope: !570)
!572 = !DILocation(line: 262, column: 17, scope: !497)
!573 = !DILocation(line: 263, column: 17, scope: !500)
!574 = !DILocation(line: 263, column: 24, scope: !500)
!575 = !DILocation(line: 263, column: 30, scope: !500)
!576 = !DILocation(line: 264, column: 1, scope: !499)
!577 = !DILocation(line: 266, column: 25, scope: !578)
!578 = distinct !DILexicalBlock(scope: !499, file: !3, line: 266, column: 21)
!579 = !DILocation(line: 266, column: 21, scope: !499)
!580 = !DILocation(line: 267, column: 24, scope: !581)
!581 = distinct !DILexicalBlock(scope: !578, file: !3, line: 266, column: 30)
!582 = !DILocation(line: 268, column: 21, scope: !581)
!583 = !DILocation(line: 269, column: 17, scope: !581)
!584 = !DILocation(line: 270, column: 37, scope: !503)
!585 = !DILocation(line: 271, column: 1, scope: !502)
!586 = !DILocation(line: 273, column: 25, scope: !587)
!587 = distinct !DILexicalBlock(scope: !502, file: !3, line: 273, column: 21)
!588 = !DILocation(line: 273, column: 21, scope: !502)
!589 = !DILocation(line: 274, column: 24, scope: !590)
!590 = distinct !DILexicalBlock(scope: !587, file: !3, line: 273, column: 33)
!591 = !DILocation(line: 275, column: 21, scope: !590)
!592 = !DILocation(line: 276, column: 17, scope: !590)
!593 = !DILocation(line: 277, column: 37, scope: !506)
!594 = !DILocation(line: 277, column: 54, scope: !506)
!595 = !DILocation(line: 278, column: 1, scope: !505)
!596 = !DILocation(line: 0, scope: !497)
!597 = !DILocation(line: 280, column: 21, scope: !598)
!598 = distinct !DILexicalBlock(scope: !505, file: !3, line: 280, column: 21)
!599 = !DILocation(line: 280, column: 33, scope: !598)
!600 = !DILocation(line: 280, column: 21, scope: !505)
!601 = !DILocation(line: 283, column: 34, scope: !602)
!602 = distinct !DILexicalBlock(scope: !598, file: !3, line: 280, column: 38)
!603 = !DILocation(line: 283, column: 26, scope: !602)
!604 = !DILocation(line: 283, column: 47, scope: !602)
!605 = !DILocation(line: 283, column: 21, scope: !602)
!606 = !DILocation(line: 284, column: 60, scope: !602)
!607 = !DILocation(line: 284, column: 21, scope: !602)
!608 = !DILocation(line: 284, column: 29, scope: !602)
!609 = !DILocation(line: 284, column: 42, scope: !602)
!610 = !DILocation(line: 284, column: 58, scope: !602)
!611 = !DILocation(line: 286, column: 39, scope: !602)
!612 = !DILocation(line: 286, column: 46, scope: !602)
!613 = !DILocation(line: 286, column: 38, scope: !602)
!614 = !DILocation(line: 286, column: 35, scope: !602)
!615 = !DILocation(line: 287, column: 39, scope: !616)
!616 = distinct !DILexicalBlock(scope: !602, file: !3, line: 287, column: 25)
!617 = !DILocation(line: 287, column: 25, scope: !602)
!618 = !DILocation(line: 290, column: 46, scope: !619)
!619 = distinct !DILexicalBlock(scope: !616, file: !3, line: 290, column: 32)
!620 = !DILocation(line: 290, column: 32, scope: !616)
!621 = !DILocation(line: 291, column: 52, scope: !622)
!622 = distinct !DILexicalBlock(scope: !619, file: !3, line: 290, column: 62)
!623 = !DILocation(line: 292, column: 25, scope: !622)
!624 = !DILocation(line: 294, column: 33, scope: !602)
!625 = !DILocation(line: 294, column: 54, scope: !602)
!626 = !DILocation(line: 294, column: 21, scope: !602)
!627 = !DILocation(line: 295, column: 33, scope: !602)
!628 = !DILocation(line: 296, column: 33, scope: !602)
!629 = !DILocation(line: 297, column: 21, scope: !602)
!630 = !DILocation(line: 298, column: 17, scope: !602)
!631 = !DILocation(line: 302, column: 21, scope: !632)
!632 = distinct !DILexicalBlock(scope: !497, file: !3, line: 302, column: 17)
!633 = !DILocation(line: 302, column: 17, scope: !497)
!634 = !DILocation(line: 303, column: 25, scope: !635)
!635 = distinct !DILexicalBlock(scope: !636, file: !3, line: 303, column: 21)
!636 = distinct !DILexicalBlock(scope: !632, file: !3, line: 302, column: 31)
!637 = !DILocation(line: 0, scope: !635)
!638 = !DILocation(line: 303, column: 21, scope: !636)
!639 = !DILocation(line: 304, column: 30, scope: !640)
!640 = distinct !DILexicalBlock(scope: !635, file: !3, line: 303, column: 33)
!641 = !DILocation(line: 305, column: 24, scope: !640)
!642 = !DILocation(line: 307, column: 21, scope: !640)
!643 = !DILocation(line: 307, column: 30, scope: !640)
!644 = !DILocation(line: 308, column: 29, scope: !645)
!645 = distinct !DILexicalBlock(scope: !640, file: !3, line: 308, column: 25)
!646 = !DILocation(line: 308, column: 34, scope: !645)
!647 = !DILocation(line: 308, column: 25, scope: !640)
!648 = !DILocation(line: 311, column: 29, scope: !649)
!649 = distinct !DILexicalBlock(scope: !650, file: !3, line: 311, column: 29)
!650 = distinct !DILexicalBlock(scope: !645, file: !3, line: 308, column: 42)
!651 = !DILocation(line: 311, column: 44, scope: !649)
!652 = !DILocation(line: 311, column: 29, scope: !650)
!653 = !DILocation(line: 313, column: 25, scope: !654)
!654 = distinct !DILexicalBlock(scope: !645, file: !3, line: 312, column: 28)
!655 = !DILocation(line: 316, column: 36, scope: !656)
!656 = distinct !DILexicalBlock(scope: !635, file: !3, line: 315, column: 24)
!657 = !DILocation(line: 316, column: 50, scope: !656)
!658 = !DILocation(line: 316, column: 21, scope: !656)
!659 = !DILocation(line: 317, column: 32, scope: !656)
!660 = !DILocation(line: 317, column: 30, scope: !656)
!661 = !DILocation(line: 318, column: 24, scope: !656)
!662 = !DILocation(line: 319, column: 24, scope: !656)
!663 = !DILocation(line: 320, column: 21, scope: !656)
!664 = !DILocation(line: 320, column: 30, scope: !656)
!665 = !DILocation(line: 321, column: 21, scope: !656)
!666 = !DILocation(line: 326, column: 20, scope: !497)
!667 = !DILocation(line: 328, column: 13, scope: !497)
!668 = !DILocation(line: 329, column: 13, scope: !497)
!669 = !DILocation(line: 331, column: 13, scope: !497)
!670 = !DILocation(line: 331, column: 22, scope: !497)
!671 = !DILocation(line: 333, column: 13, scope: !497)
!672 = !DILocation(line: 334, column: 13, scope: !497)
!673 = !DILocation(line: 337, column: 13, scope: !497)
!674 = !DILocation(line: 338, column: 13, scope: !497)
!675 = !DILocation(line: 341, column: 13, scope: !497)
!676 = !DILocation(line: 342, column: 13, scope: !497)
!677 = !DILocation(line: 344, column: 5, scope: !474)
!678 = distinct !{!678, !679, !677}
!679 = !DILocation(line: 215, column: 5, scope: !474)
!680 = !DILocation(line: 346, column: 1, scope: !474)
!681 = distinct !DISubprogram(name: "disableRawMode", scope: !3, file: !3, line: 154, type: !682, scopeLine: 154, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !684)
!682 = !DISubroutineType(types: !683)
!683 = !{null, !6}
!684 = !{!685}
!685 = !DILocalVariable(name: "fd", arg: 1, scope: !681, file: !3, line: 154, type: !6)
!686 = !DILocation(line: 0, scope: !681)
!687 = !DILocation(line: 156, column: 9, scope: !688)
!688 = distinct !DILexicalBlock(scope: !681, file: !3, line: 156, column: 9)
!689 = !DILocation(line: 156, column: 17, scope: !688)
!690 = !DILocation(line: 156, column: 20, scope: !688)
!691 = !DILocation(line: 156, column: 58, scope: !688)
!692 = !DILocation(line: 156, column: 9, scope: !681)
!693 = !DILocation(line: 157, column: 17, scope: !688)
!694 = !DILocation(line: 157, column: 9, scope: !688)
!695 = !DILocation(line: 158, column: 1, scope: !681)
!696 = !DISubprogram(name: "atexit", scope: !295, file: !295, line: 595, type: !697, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !130)
!697 = !DISubroutineType(types: !698)
!698 = !{!6, !699}
!699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !700, size: 64)
!700 = !DISubroutineType(types: !701)
!701 = !{null}
!702 = distinct !DISubprogram(name: "linenoiseAtExit", scope: !3, file: !3, line: 161, type: !700, scopeLine: 161, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !130)
!703 = !DILocation(line: 162, column: 5, scope: !702)
!704 = !DILocation(line: 163, column: 5, scope: !702)
!705 = !DILocation(line: 164, column: 1, scope: !702)
!706 = !DISubprogram(name: "tcgetattr", scope: !707, file: !707, line: 66, type: !708, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !130)
!707 = !DIFile(filename: "/usr/include/termios.h", directory: "", checksumkind: CSK_MD5, checksum: "1f720965364a7d89cff5209f42fcfa7a")
!708 = !DISubroutineType(types: !709)
!709 = !{!6, !6, !710}
!710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 64)
!711 = !DISubprogram(name: "tcsetattr", scope: !707, file: !707, line: 70, type: !712, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !130)
!712 = !DISubroutineType(types: !713)
!713 = !{!6, !6, !6, !714}
!714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !715, size: 64)
!715 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !19)
!716 = distinct !DISubprogram(name: "freeHistory", scope: !3, file: !3, line: 109, type: !700, scopeLine: 109, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !717)
!717 = !{!718}
!718 = !DILocalVariable(name: "j", scope: !719, file: !3, line: 111, type: !6)
!719 = distinct !DILexicalBlock(scope: !720, file: !3, line: 110, column: 18)
!720 = distinct !DILexicalBlock(scope: !716, file: !3, line: 110, column: 9)
!721 = !DILocation(line: 110, column: 9, scope: !720)
!722 = !DILocation(line: 110, column: 9, scope: !716)
!723 = !DILocation(line: 0, scope: !719)
!724 = !DILocation(line: 113, column: 25, scope: !725)
!725 = distinct !DILexicalBlock(scope: !726, file: !3, line: 113, column: 9)
!726 = distinct !DILexicalBlock(scope: !719, file: !3, line: 113, column: 9)
!727 = !DILocation(line: 113, column: 23, scope: !725)
!728 = !DILocation(line: 113, column: 9, scope: !726)
!729 = !DILocation(line: 114, column: 18, scope: !725)
!730 = !DILocation(line: 114, column: 13, scope: !725)
!731 = distinct !{!731, !728, !732}
!732 = !DILocation(line: 114, column: 28, scope: !726)
!733 = !DILocation(line: 113, column: 39, scope: !725)
!734 = !DILocation(line: 115, column: 14, scope: !719)
!735 = !DILocation(line: 115, column: 9, scope: !719)
!736 = !DILocation(line: 116, column: 5, scope: !719)
!737 = !DILocation(line: 117, column: 1, scope: !716)
!738 = distinct !DISubprogram(name: "getColumns", scope: !3, file: !3, line: 166, type: !109, scopeLine: 166, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !739)
!739 = !{!740}
!740 = !DILocalVariable(name: "ws", scope: !738, file: !3, line: 167, type: !741)
!741 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "winsize", file: !742, line: 27, size: 64, elements: !743)
!742 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/ioctl-types.h", directory: "", checksumkind: CSK_MD5, checksum: "cc9d53066b74891e5f7de4d12aa1d757")
!743 = !{!744, !745, !746, !747}
!744 = !DIDerivedType(tag: DW_TAG_member, name: "ws_row", scope: !741, file: !742, line: 29, baseType: !164, size: 16)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "ws_col", scope: !741, file: !742, line: 30, baseType: !164, size: 16, offset: 16)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "ws_xpixel", scope: !741, file: !742, line: 31, baseType: !164, size: 16, offset: 32)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "ws_ypixel", scope: !741, file: !742, line: 32, baseType: !164, size: 16, offset: 48)
!748 = !DILocation(line: 167, column: 5, scope: !738)
!749 = !DILocation(line: 167, column: 20, scope: !738)
!750 = !DILocation(line: 169, column: 9, scope: !751)
!751 = distinct !DILexicalBlock(scope: !738, file: !3, line: 169, column: 9)
!752 = !DILocation(line: 169, column: 35, scope: !751)
!753 = !DILocation(line: 169, column: 9, scope: !738)
!754 = !DILocation(line: 171, column: 1, scope: !738)
!755 = !DISubprogram(name: "write", scope: !433, file: !433, line: 366, type: !756, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !130)
!756 = !DISubroutineType(types: !757)
!757 = !{!758, !6, !307, !68}
!758 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !433, line: 220, baseType: !759)
!759 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !161, line: 193, baseType: !162)
!760 = !DISubprogram(name: "read", scope: !433, file: !433, line: 360, type: !761, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !130)
!761 = !DISubroutineType(types: !762)
!762 = !{!758, !6, !5, !68}
!763 = distinct !DISubprogram(name: "refreshLine", scope: !3, file: !3, line: 173, type: !764, scopeLine: 173, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !766)
!764 = !DISubroutineType(types: !765)
!765 = !{null, !6, !56, !11, !68, !68, !68}
!766 = !{!767, !768, !769, !770, !771, !772, !773, !777}
!767 = !DILocalVariable(name: "fd", arg: 1, scope: !763, file: !3, line: 173, type: !6)
!768 = !DILocalVariable(name: "prompt", arg: 2, scope: !763, file: !3, line: 173, type: !56)
!769 = !DILocalVariable(name: "buf", arg: 3, scope: !763, file: !3, line: 173, type: !11)
!770 = !DILocalVariable(name: "len", arg: 4, scope: !763, file: !3, line: 173, type: !68)
!771 = !DILocalVariable(name: "pos", arg: 5, scope: !763, file: !3, line: 173, type: !68)
!772 = !DILocalVariable(name: "cols", arg: 6, scope: !763, file: !3, line: 173, type: !68)
!773 = !DILocalVariable(name: "seq", scope: !763, file: !3, line: 174, type: !774)
!774 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 512, elements: !775)
!775 = !{!776}
!776 = !DISubrange(count: 64)
!777 = !DILocalVariable(name: "plen", scope: !763, file: !3, line: 175, type: !68)
!778 = !DILocation(line: 0, scope: !763)
!779 = !DILocation(line: 174, column: 5, scope: !763)
!780 = !DILocation(line: 174, column: 10, scope: !763)
!781 = !DILocation(line: 175, column: 19, scope: !763)
!782 = !DILocation(line: 177, column: 16, scope: !763)
!783 = !DILocation(line: 177, column: 22, scope: !763)
!784 = !DILocation(line: 177, column: 5, scope: !763)
!785 = !DILocation(line: 182, column: 5, scope: !763)
!786 = !DILocation(line: 187, column: 5, scope: !763)
!787 = !DILocation(line: 188, column: 22, scope: !788)
!788 = distinct !DILexicalBlock(scope: !763, file: !3, line: 188, column: 9)
!789 = !DILocation(line: 188, column: 9, scope: !788)
!790 = !DILocation(line: 188, column: 35, scope: !788)
!791 = !DILocation(line: 188, column: 9, scope: !763)
!792 = !DILocation(line: 178, column: 12, scope: !793)
!793 = distinct !DILexicalBlock(scope: !763, file: !3, line: 177, column: 31)
!794 = !DILocation(line: 179, column: 12, scope: !793)
!795 = !DILocation(line: 180, column: 12, scope: !793)
!796 = distinct !{!796, !784, !797}
!797 = !DILocation(line: 181, column: 5, scope: !763)
!798 = !DILocation(line: 190, column: 25, scope: !799)
!799 = distinct !DILexicalBlock(scope: !763, file: !3, line: 190, column: 9)
!800 = !DILocation(line: 190, column: 9, scope: !799)
!801 = !DILocation(line: 190, column: 41, scope: !799)
!802 = !DILocation(line: 190, column: 9, scope: !763)
!803 = !DILocation(line: 191, column: 9, scope: !804)
!804 = distinct !DILexicalBlock(scope: !763, file: !3, line: 191, column: 9)
!805 = !DILocation(line: 191, column: 27, scope: !804)
!806 = !DILocation(line: 191, column: 9, scope: !763)
!807 = !DILocation(line: 193, column: 5, scope: !763)
!808 = !DILocation(line: 194, column: 22, scope: !809)
!809 = distinct !DILexicalBlock(scope: !763, file: !3, line: 194, column: 9)
!810 = !DILocation(line: 194, column: 9, scope: !809)
!811 = !DILocation(line: 194, column: 35, scope: !809)
!812 = !DILocation(line: 194, column: 9, scope: !763)
!813 = !DILocation(line: 196, column: 40, scope: !763)
!814 = !DILocation(line: 196, column: 5, scope: !763)
!815 = !DILocation(line: 197, column: 22, scope: !816)
!816 = distinct !DILexicalBlock(scope: !763, file: !3, line: 197, column: 9)
!817 = !DILocation(line: 197, column: 9, scope: !816)
!818 = !DILocation(line: 198, column: 1, scope: !763)
!819 = !DISubprogram(name: "strncpy", scope: !196, file: !196, line: 125, type: !820, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !130)
!820 = !DISubroutineType(types: !821)
!821 = !{!11, !193, !129, !68}
!822 = !DISubprogram(name: "ioctl", scope: !823, file: !823, line: 41, type: !824, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !130)
!823 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/ioctl.h", directory: "", checksumkind: CSK_MD5, checksum: "268d3fafc0badd347a233d5c84f81ce2")
!824 = !DISubroutineType(types: !825)
!825 = !{!6, !6, !70, null}
!826 = !DISubprogram(name: "snprintf", scope: !126, file: !126, line: 354, type: !827, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !130)
!827 = !DISubroutineType(types: !828)
!828 = !{!6, !193, !68, !129, null}
