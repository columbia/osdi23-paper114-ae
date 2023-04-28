; ModuleID = 'redis-check-aof.c'
source_filename = "redis-check-aof.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }

@.str = private unnamed_addr constant [3 x i8] c"\0D\0A\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"Expected \\r\\n, got: %02x%02x\00", align 1
@error = internal global [1024 x i8] zeroinitializer, align 16, !dbg !0
@.str.2 = private unnamed_addr constant [12 x i8] c"0x%08lx: %s\00", align 1
@epos = internal unnamed_addr global i64 0, align 8, !dbg !9
@.str.3 = private unnamed_addr constant [32 x i8] c"Expected prefix '%c', got: '%c'\00", align 1
@.str.4 = private unnamed_addr constant [42 x i8] c"Expected to read %ld bytes, got %ld bytes\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"multi\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"Unexpected MULTI\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"exec\00", align 1
@.str.8 = private unnamed_addr constant [16 x i8] c"Unexpected EXEC\00", align 1
@.str.9 = private unnamed_addr constant [42 x i8] c"Reached EOF before reading EXEC for MULTI\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.11 = private unnamed_addr constant [30 x i8] c"Usage: %s [--fix] <file.aof>\0A\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"--fix\00", align 1
@.str.13 = private unnamed_addr constant [22 x i8] c"Invalid argument: %s\0A\00", align 1
@.str.14 = private unnamed_addr constant [19 x i8] c"Invalid arguments\0A\00", align 1
@.str.15 = private unnamed_addr constant [3 x i8] c"r+\00", align 1
@.str.16 = private unnamed_addr constant [22 x i8] c"Cannot open file: %s\0A\00", align 1
@.str.17 = private unnamed_addr constant [22 x i8] c"Cannot stat file: %s\0A\00", align 1
@.str.18 = private unnamed_addr constant [16 x i8] c"Empty file: %s\0A\00", align 1
@.str.19 = private unnamed_addr constant [71 x i8] c"This will shrink the AOF from %ld bytes, with %ld bytes, to %ld bytes\0A\00", align 1
@.str.20 = private unnamed_addr constant [18 x i8] c"Continue? [y/N]: \00", align 1
@stdin = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.21 = private unnamed_addr constant [2 x i8] c"y\00", align 1
@.str.22 = private unnamed_addr constant [13 x i8] c"Aborting...\0A\00", align 1
@.str.23 = private unnamed_addr constant [24 x i8] c"Failed to truncate AOF\0A\00", align 1
@.str.24 = private unnamed_addr constant [28 x i8] c"Successfully truncated AOF\0A\00", align 1
@.str.25 = private unnamed_addr constant [18 x i8] c"AOF is not valid\0A\00", align 1
@.str.26 = private unnamed_addr constant [14 x i8] c"AOF is valid\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @consumeNewline(i8* noundef readonly %buf) local_unnamed_addr #0 !dbg !20 {
entry:
  %__buf = alloca [1024 x i8], align 16
  call void @llvm.dbg.value(metadata i8* %buf, metadata !25, metadata !DIExpression()), !dbg !30
  %call = tail call i32 @strncmp(i8* noundef %buf, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i64 noundef 2) #8, !dbg !31
  %cmp.not = icmp eq i32 %call, 0, !dbg !32
  br i1 %cmp.not, label %return, label %if.then, !dbg !33

if.then:                                          ; preds = %entry
  %0 = getelementptr inbounds [1024 x i8], [1024 x i8]* %__buf, i64 0, i64 0, !dbg !34
  call void @llvm.lifetime.start.p0i8(i64 1024, i8* nonnull %0) #9, !dbg !34
  call void @llvm.dbg.declare(metadata [1024 x i8]* %__buf, metadata !26, metadata !DIExpression()), !dbg !34
  %1 = load i8, i8* %buf, align 1, !dbg !34, !tbaa !35
  %conv = sext i8 %1 to i32, !dbg !34
  %arrayidx1 = getelementptr inbounds i8, i8* %buf, i64 1, !dbg !34
  %2 = load i8, i8* %arrayidx1, align 1, !dbg !34, !tbaa !35
  %conv2 = sext i8 %2 to i32, !dbg !34
  %call3 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef nonnull %0, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 noundef %conv, i32 noundef %conv2) #10, !dbg !34
  %3 = load i64, i64* @epos, align 8, !dbg !34, !tbaa !38
  %call5 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef getelementptr inbounds ([1024 x i8], [1024 x i8]* @error, i64 0, i64 0), i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i64 noundef %3, i8* noundef nonnull %0) #10, !dbg !34
  call void @llvm.lifetime.end.p0i8(i64 1024, i8* nonnull %0) #9, !dbg !40
  br label %return, !dbg !41

return:                                           ; preds = %entry, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 1, %entry ], !dbg !30
  ret i32 %retval.0, !dbg !42
}

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare !dbg !43 dso_local i32 @strncmp(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #3

; Function Attrs: nounwind
declare !dbg !53 dso_local i32 @sprintf(i8* noundef, i8* noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #3

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @readLong(%struct._IO_FILE* noundef %fp, i8 noundef signext %prefix, i64* nocapture noundef writeonly %target) local_unnamed_addr #0 !dbg !59 {
entry:
  %buf = alloca [128 x i8], align 16
  %eptr = alloca i8*, align 8
  %__buf = alloca [1024 x i8], align 16
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %fp, metadata !119, metadata !DIExpression()), !dbg !131
  call void @llvm.dbg.value(metadata i8 %prefix, metadata !120, metadata !DIExpression()), !dbg !131
  call void @llvm.dbg.value(metadata i64* %target, metadata !121, metadata !DIExpression()), !dbg !131
  %0 = getelementptr inbounds [128 x i8], [128 x i8]* %buf, i64 0, i64 0, !dbg !132
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %0) #9, !dbg !132
  call void @llvm.dbg.declare(metadata [128 x i8]* %buf, metadata !122, metadata !DIExpression()), !dbg !133
  %1 = bitcast i8** %eptr to i8*, !dbg !132
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #9, !dbg !132
  %call = tail call i64 @ftell(%struct._IO_FILE* noundef %fp) #10, !dbg !134
  store i64 %call, i64* @epos, align 8, !dbg !135, !tbaa !38
  %call1 = call i8* @fgets(i8* noundef nonnull %0, i32 noundef 128, %struct._IO_FILE* noundef %fp) #10, !dbg !136
  %cmp = icmp eq i8* %call1, null, !dbg !138
  br i1 %cmp, label %cleanup, label %if.end, !dbg !139

if.end:                                           ; preds = %entry
  %2 = load i8, i8* %0, align 16, !dbg !140, !tbaa !35
  %cmp3.not = icmp eq i8 %2, %prefix, !dbg !141
  br i1 %cmp3.not, label %if.end13, label %if.then5, !dbg !142

if.then5:                                         ; preds = %if.end
  %conv2 = sext i8 %prefix to i32, !dbg !143
  %3 = getelementptr inbounds [1024 x i8], [1024 x i8]* %__buf, i64 0, i64 0, !dbg !144
  call void @llvm.lifetime.start.p0i8(i64 1024, i8* nonnull %3) #9, !dbg !144
  call void @llvm.dbg.declare(metadata [1024 x i8]* %__buf, metadata !127, metadata !DIExpression()), !dbg !144
  %conv8 = sext i8 %2 to i32, !dbg !144
  %call10 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef nonnull %3, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i32 noundef %conv8, i32 noundef %conv2) #10, !dbg !144
  %4 = load i64, i64* @epos, align 8, !dbg !144, !tbaa !38
  %call12 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef getelementptr inbounds ([1024 x i8], [1024 x i8]* @error, i64 0, i64 0), i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i64 noundef %4, i8* noundef nonnull %3) #10, !dbg !144
  call void @llvm.lifetime.end.p0i8(i64 1024, i8* nonnull %3) #9, !dbg !145
  br label %cleanup, !dbg !146

if.end13:                                         ; preds = %if.end
  %add.ptr = getelementptr inbounds [128 x i8], [128 x i8]* %buf, i64 0, i64 1, !dbg !147
  call void @llvm.dbg.value(metadata i8** %eptr, metadata !126, metadata !DIExpression(DW_OP_deref)), !dbg !131
  %call15 = call i64 @strtol(i8* noundef nonnull %add.ptr, i8** noundef nonnull %eptr, i32 noundef 10) #10, !dbg !148
  store i64 %call15, i64* %target, align 8, !dbg !149, !tbaa !38
  %5 = load i8*, i8** %eptr, align 8, !dbg !150, !tbaa !151
  call void @llvm.dbg.value(metadata i8* %5, metadata !126, metadata !DIExpression()), !dbg !131
  %call16 = call i32 @consumeNewline(i8* noundef %5) #11, !dbg !153
  br label %cleanup, !dbg !154

cleanup:                                          ; preds = %entry, %if.end13, %if.then5
  %retval.0 = phi i32 [ 0, %if.then5 ], [ %call16, %if.end13 ], [ 0, %entry ], !dbg !131
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #9, !dbg !155
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %0) #9, !dbg !155
  ret i32 %retval.0, !dbg !155
}

declare !dbg !156 dso_local i64 @ftell(%struct._IO_FILE* noundef) local_unnamed_addr #5

declare !dbg !159 dso_local i8* @fgets(i8* noundef, i32 noundef, %struct._IO_FILE* noundef) local_unnamed_addr #5

; Function Attrs: nounwind
declare !dbg !163 dso_local i64 @strtol(i8* noundef, i8** noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @readBytes(%struct._IO_FILE* noundef %fp, i8* noundef %target, i64 noundef %length) local_unnamed_addr #0 !dbg !169 {
entry:
  %__buf = alloca [1024 x i8], align 16
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %fp, metadata !173, metadata !DIExpression()), !dbg !181
  call void @llvm.dbg.value(metadata i8* %target, metadata !174, metadata !DIExpression()), !dbg !181
  call void @llvm.dbg.value(metadata i64 %length, metadata !175, metadata !DIExpression()), !dbg !181
  %call = tail call i64 @ftell(%struct._IO_FILE* noundef %fp) #10, !dbg !182
  store i64 %call, i64* @epos, align 8, !dbg !183, !tbaa !38
  %call1 = tail call i64 @fread(i8* noundef %target, i64 noundef 1, i64 noundef %length, %struct._IO_FILE* noundef %fp) #10, !dbg !184
  call void @llvm.dbg.value(metadata i64 %call1, metadata !176, metadata !DIExpression()), !dbg !181
  %cmp.not = icmp eq i64 %call1, %length, !dbg !185
  br i1 %cmp.not, label %cleanup, label %if.then, !dbg !186

if.then:                                          ; preds = %entry
  %0 = getelementptr inbounds [1024 x i8], [1024 x i8]* %__buf, i64 0, i64 0, !dbg !187
  call void @llvm.lifetime.start.p0i8(i64 1024, i8* nonnull %0) #9, !dbg !187
  call void @llvm.dbg.declare(metadata [1024 x i8]* %__buf, metadata !177, metadata !DIExpression()), !dbg !187
  %call2 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef nonnull %0, i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @.str.4, i64 0, i64 0), i64 noundef %length, i64 noundef %call1) #10, !dbg !187
  %1 = load i64, i64* @epos, align 8, !dbg !187, !tbaa !38
  %call4 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef getelementptr inbounds ([1024 x i8], [1024 x i8]* @error, i64 0, i64 0), i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i64 noundef %1, i8* noundef nonnull %0) #10, !dbg !187
  call void @llvm.lifetime.end.p0i8(i64 1024, i8* nonnull %0) #9, !dbg !188
  br label %cleanup, !dbg !189

cleanup:                                          ; preds = %entry, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 1, %entry ], !dbg !181
  ret i32 %retval.0, !dbg !190
}

declare !dbg !191 dso_local i64 @fread(i8* noundef, i64 noundef, i64 noundef, %struct._IO_FILE* noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @readString(%struct._IO_FILE* noundef %fp, i8** nocapture noundef %target) local_unnamed_addr #0 !dbg !195 {
entry:
  %len = alloca i64, align 8
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %fp, metadata !199, metadata !DIExpression()), !dbg !202
  call void @llvm.dbg.value(metadata i8** %target, metadata !200, metadata !DIExpression()), !dbg !202
  %0 = bitcast i64* %len to i8*, !dbg !203
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #9, !dbg !203
  store i8* null, i8** %target, align 8, !dbg !204, !tbaa !151
  call void @llvm.dbg.value(metadata i64* %len, metadata !201, metadata !DIExpression(DW_OP_deref)), !dbg !202
  %call = call i32 @readLong(%struct._IO_FILE* noundef %fp, i8 noundef signext 36, i64* noundef nonnull %len) #11, !dbg !205
  %tobool.not = icmp eq i32 %call, 0, !dbg !205
  br i1 %tobool.not, label %cleanup, label %if.end, !dbg !207

if.end:                                           ; preds = %entry
  %1 = load i64, i64* %len, align 8, !dbg !208, !tbaa !38
  call void @llvm.dbg.value(metadata i64 %1, metadata !201, metadata !DIExpression()), !dbg !202
  %add = add nsw i64 %1, 2, !dbg !208
  call void @llvm.dbg.value(metadata i64 %add, metadata !201, metadata !DIExpression()), !dbg !202
  %call1 = tail call noalias i8* @malloc(i64 noundef %add) #10, !dbg !209
  store i8* %call1, i8** %target, align 8, !dbg !210, !tbaa !151
  call void @llvm.dbg.value(metadata i64 %add, metadata !201, metadata !DIExpression()), !dbg !202
  %call2 = tail call i32 @readBytes(%struct._IO_FILE* noundef %fp, i8* noundef %call1, i64 noundef %add) #11, !dbg !211
  %tobool3.not = icmp eq i32 %call2, 0, !dbg !211
  br i1 %tobool3.not, label %cleanup, label %if.end5, !dbg !213

if.end5:                                          ; preds = %if.end
  %2 = load i8*, i8** %target, align 8, !dbg !214, !tbaa !151
  call void @llvm.dbg.value(metadata i64 %add, metadata !201, metadata !DIExpression()), !dbg !202
  %add.ptr6 = getelementptr inbounds i8, i8* %2, i64 %1, !dbg !216
  %call7 = tail call i32 @consumeNewline(i8* noundef nonnull %add.ptr6) #11, !dbg !217
  %tobool8.not = icmp eq i32 %call7, 0, !dbg !217
  br i1 %tobool8.not, label %cleanup, label %if.end10, !dbg !218

if.end10:                                         ; preds = %if.end5
  %3 = load i8*, i8** %target, align 8, !dbg !219, !tbaa !151
  call void @llvm.dbg.value(metadata i64 %add, metadata !201, metadata !DIExpression()), !dbg !202
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 %1, !dbg !220
  store i8 0, i8* %arrayidx, align 1, !dbg !221, !tbaa !35
  br label %cleanup, !dbg !222

cleanup:                                          ; preds = %if.end5, %if.end, %entry, %if.end10
  %retval.0 = phi i32 [ 1, %if.end10 ], [ 0, %entry ], [ 0, %if.end ], [ 0, %if.end5 ], !dbg !202
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #9, !dbg !223
  ret i32 %retval.0, !dbg !223
}

; Function Attrs: nounwind
declare !dbg !224 dso_local noalias i8* @malloc(i64 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @readArgc(%struct._IO_FILE* noundef %fp, i64* nocapture noundef writeonly %target) local_unnamed_addr #0 !dbg !227 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %fp, metadata !231, metadata !DIExpression()), !dbg !233
  call void @llvm.dbg.value(metadata i64* %target, metadata !232, metadata !DIExpression()), !dbg !233
  %call = tail call i32 @readLong(%struct._IO_FILE* noundef %fp, i8 noundef signext 42, i64* noundef %target) #11, !dbg !234
  ret i32 %call, !dbg !235
}

; Function Attrs: noinline nounwind uwtable
define dso_local i64 @process(%struct._IO_FILE* noundef %fp) local_unnamed_addr #0 !dbg !236 {
entry:
  %argc = alloca i64, align 8
  %str = alloca i8*, align 8
  %__buf = alloca [1024 x i8], align 16
  %__buf29 = alloca [1024 x i8], align 16
  %__buf55 = alloca [1024 x i8], align 16
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %fp, metadata !238, metadata !DIExpression()), !dbg !266
  %0 = bitcast i64* %argc to i8*, !dbg !267
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #9, !dbg !267
  call void @llvm.dbg.value(metadata i64 0, metadata !240, metadata !DIExpression()), !dbg !266
  call void @llvm.dbg.value(metadata i32 0, metadata !242, metadata !DIExpression()), !dbg !266
  %1 = bitcast i8** %str to i8*, !dbg !268
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #9, !dbg !268
  br label %while.cond.outer, !dbg !269

while.cond.outer:                                 ; preds = %if.end37, %entry
  %pos.0.ph = phi i64 [ 0, %entry ], [ %pos.1, %if.end37 ]
  %multi.0.ph = phi i32 [ 0, %entry ], [ %multi.2, %if.end37 ]
  %tobool.not = icmp eq i32 %multi.0.ph, 0
  br label %while.cond, !dbg !270

while.cond:                                       ; preds = %while.cond.outer, %for.cond.preheader
  %pos.0 = phi i64 [ %pos.1, %for.cond.preheader ], [ %pos.0.ph, %while.cond.outer ], !dbg !271
  call void @llvm.dbg.value(metadata i32 %multi.0.ph, metadata !242, metadata !DIExpression()), !dbg !266
  call void @llvm.dbg.value(metadata i64 %pos.0, metadata !240, metadata !DIExpression()), !dbg !266
  br i1 %tobool.not, label %if.then, label %if.end, !dbg !270

if.then:                                          ; preds = %while.cond
  %call = tail call i64 @ftell(%struct._IO_FILE* noundef %fp) #10, !dbg !272
  call void @llvm.dbg.value(metadata i64 %call, metadata !240, metadata !DIExpression()), !dbg !266
  br label %if.end, !dbg !274

if.end:                                           ; preds = %if.then, %while.cond
  %pos.1 = phi i64 [ %pos.0, %while.cond ], [ %call, %if.then ], !dbg !266
  call void @llvm.dbg.value(metadata i64 %pos.1, metadata !240, metadata !DIExpression()), !dbg !266
  call void @llvm.dbg.value(metadata i64* %argc, metadata !239, metadata !DIExpression(DW_OP_deref)), !dbg !266
  %call1 = call i32 @readArgc(%struct._IO_FILE* noundef %fp, i64* noundef nonnull %argc) #11, !dbg !275
  %tobool2.not = icmp eq i32 %call1, 0, !dbg !275
  br i1 %tobool2.not, label %while.end, label %for.cond.preheader, !dbg !277

for.cond.preheader:                               ; preds = %if.end
  %2 = load i64, i64* %argc, align 8, !tbaa !38
  call void @llvm.dbg.value(metadata i32 %multi.0.ph, metadata !242, metadata !DIExpression()), !dbg !266
  call void @llvm.dbg.value(metadata i32 0, metadata !241, metadata !DIExpression()), !dbg !266
  call void @llvm.dbg.value(metadata i64 %2, metadata !239, metadata !DIExpression()), !dbg !266
  %cmp92 = icmp sgt i64 %2, 0, !dbg !278
  br i1 %cmp92, label %for.body, label %while.cond, !dbg !279

for.body:                                         ; preds = %for.cond.preheader, %if.end37
  %indvars.iv = phi i64 [ %indvars.iv.next, %if.end37 ], [ 0, %for.cond.preheader ]
  %multi.194 = phi i32 [ %multi.2, %if.end37 ], [ %multi.0.ph, %for.cond.preheader ]
  call void @llvm.dbg.value(metadata i32 %multi.194, metadata !242, metadata !DIExpression()), !dbg !266
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !241, metadata !DIExpression()), !dbg !266
  call void @llvm.dbg.value(metadata i8** %str, metadata !243, metadata !DIExpression(DW_OP_deref)), !dbg !266
  %call6 = call i32 @readString(%struct._IO_FILE* noundef %fp, i8** noundef nonnull %str) #11, !dbg !280
  %tobool7.not = icmp eq i32 %call6, 0, !dbg !280
  br i1 %tobool7.not, label %if.then42.loopexit, label %if.end9, !dbg !282

if.end9:                                          ; preds = %for.body
  %cmp10 = icmp eq i64 %indvars.iv, 0, !dbg !283
  %3 = load i8*, i8** %str, align 8, !dbg !284, !tbaa !151
  br i1 %cmp10, label %if.then12, label %if.end37, !dbg !285

if.then12:                                        ; preds = %if.end9
  call void @llvm.dbg.value(metadata i8* %3, metadata !243, metadata !DIExpression()), !dbg !266
  %call13 = tail call i32 @strcasecmp(i8* noundef %3, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0)) #8, !dbg !286
  %cmp14 = icmp eq i32 %call13, 0, !dbg !287
  br i1 %cmp14, label %if.then16, label %if.else, !dbg !288

if.then16:                                        ; preds = %if.then12
  call void @llvm.dbg.value(metadata i32 %multi.194, metadata !242, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !266
  %tobool17.not = icmp eq i32 %multi.194, 0, !dbg !289
  br i1 %tobool17.not, label %if.end37, label %if.then18, !dbg !290

if.then18:                                        ; preds = %if.then16
  %inc = add nsw i32 %multi.194, 1, !dbg !289
  call void @llvm.dbg.value(metadata i32 %inc, metadata !242, metadata !DIExpression()), !dbg !266
  %4 = getelementptr inbounds [1024 x i8], [1024 x i8]* %__buf, i64 0, i64 0, !dbg !291
  call void @llvm.lifetime.start.p0i8(i64 1024, i8* nonnull %4) #9, !dbg !291
  call void @llvm.dbg.declare(metadata [1024 x i8]* %__buf, metadata !244, metadata !DIExpression()), !dbg !291
  %call19 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef nonnull %4, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0)) #10, !dbg !291
  %5 = load i64, i64* @epos, align 8, !dbg !291, !tbaa !38
  %call21 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef getelementptr inbounds ([1024 x i8], [1024 x i8]* @error, i64 0, i64 0), i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i64 noundef %5, i8* noundef nonnull %4) #10, !dbg !291
  call void @llvm.lifetime.end.p0i8(i64 1024, i8* nonnull %4) #9, !dbg !292
  br label %if.then42, !dbg !293

if.else:                                          ; preds = %if.then12
  %call23 = tail call i32 @strcasecmp(i8* noundef %3, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0)) #8, !dbg !294
  %cmp24 = icmp eq i32 %call23, 0, !dbg !295
  br i1 %cmp24, label %if.then26, label %if.end37, !dbg !296

if.then26:                                        ; preds = %if.else
  %dec = add nsw i32 %multi.194, -1, !dbg !297
  call void @llvm.dbg.value(metadata i32 %dec, metadata !242, metadata !DIExpression()), !dbg !266
  %tobool27.not = icmp eq i32 %dec, 0, !dbg !297
  br i1 %tobool27.not, label %if.end37, label %if.then28, !dbg !298

if.then28:                                        ; preds = %if.then26
  %6 = getelementptr inbounds [1024 x i8], [1024 x i8]* %__buf29, i64 0, i64 0, !dbg !299
  call void @llvm.lifetime.start.p0i8(i64 1024, i8* nonnull %6) #9, !dbg !299
  call void @llvm.dbg.declare(metadata [1024 x i8]* %__buf29, metadata !256, metadata !DIExpression()), !dbg !299
  %call31 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef nonnull %6, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i64 0, i64 0)) #10, !dbg !299
  %7 = load i64, i64* @epos, align 8, !dbg !299, !tbaa !38
  %call33 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef getelementptr inbounds ([1024 x i8], [1024 x i8]* @error, i64 0, i64 0), i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i64 noundef %7, i8* noundef nonnull %6) #10, !dbg !299
  call void @llvm.lifetime.end.p0i8(i64 1024, i8* nonnull %6) #9, !dbg !300
  br label %if.then42, !dbg !301

if.end37:                                         ; preds = %if.end9, %if.then16, %if.then26, %if.else
  %multi.2 = phi i32 [ 1, %if.then16 ], [ 0, %if.then26 ], [ %multi.194, %if.else ], [ %multi.194, %if.end9 ], !dbg !266
  call void @llvm.dbg.value(metadata i32 %multi.2, metadata !242, metadata !DIExpression()), !dbg !266
  call void @llvm.dbg.value(metadata i8* %3, metadata !243, metadata !DIExpression()), !dbg !266
  tail call void @free(i8* noundef %3) #10, !dbg !302
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !303
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !241, metadata !DIExpression()), !dbg !266
  call void @llvm.dbg.value(metadata i64 %2, metadata !239, metadata !DIExpression()), !dbg !266
  %exitcond.not = icmp eq i64 %indvars.iv.next, %2, !dbg !278
  br i1 %exitcond.not, label %while.cond.outer, label %for.body, !dbg !279, !llvm.loop !304

if.then42.loopexit:                               ; preds = %for.body
  %.pre107 = load i8*, i8** %str, align 8, !dbg !306, !tbaa !151
  br label %if.then42, !dbg !306

if.then42:                                        ; preds = %if.then42.loopexit, %if.then28, %if.then18
  %8 = phi i8* [ %3, %if.then28 ], [ %3, %if.then18 ], [ %.pre107, %if.then42.loopexit ], !dbg !306
  %multi.3.ph = phi i32 [ %dec, %if.then28 ], [ %inc, %if.then18 ], [ %multi.194, %if.then42.loopexit ]
  call void @llvm.dbg.value(metadata i32 undef, metadata !242, metadata !DIExpression()), !dbg !266
  call void @llvm.dbg.value(metadata i64 %2, metadata !239, metadata !DIExpression()), !dbg !266
  call void @llvm.dbg.value(metadata i8* %8, metadata !243, metadata !DIExpression()), !dbg !266
  %tobool43.not = icmp eq i8* %8, null, !dbg !306
  br i1 %tobool43.not, label %while.end, label %if.then44, !dbg !310

if.then44:                                        ; preds = %if.then42
  call void @free(i8* noundef nonnull %8) #10, !dbg !311
  br label %while.end, !dbg !311

while.end:                                        ; preds = %if.end, %if.then42, %if.then44
  %multi.4 = phi i32 [ %multi.3.ph, %if.then44 ], [ %multi.3.ph, %if.then42 ], [ %multi.0.ph, %if.end ], !dbg !266
  call void @llvm.dbg.value(metadata i32 %multi.4, metadata !242, metadata !DIExpression()), !dbg !266
  %call47 = call i32 @feof(%struct._IO_FILE* noundef %fp) #10, !dbg !312
  %tobool48 = icmp ne i32 %call47, 0, !dbg !312
  %tobool49 = icmp ne i32 %multi.4, 0
  %or.cond = select i1 %tobool48, i1 %tobool49, i1 false, !dbg !313
  br i1 %or.cond, label %land.lhs.true50, label %if.end60, !dbg !313

land.lhs.true50:                                  ; preds = %while.end
  %call51 = call i64 @strlen(i8* noundef getelementptr inbounds ([1024 x i8], [1024 x i8]* @error, i64 0, i64 0)) #8, !dbg !314
  %cmp52 = icmp eq i64 %call51, 0, !dbg !315
  br i1 %cmp52, label %if.then54, label %if.end60, !dbg !316

if.then54:                                        ; preds = %land.lhs.true50
  %9 = getelementptr inbounds [1024 x i8], [1024 x i8]* %__buf55, i64 0, i64 0, !dbg !317
  call void @llvm.lifetime.start.p0i8(i64 1024, i8* nonnull %9) #9, !dbg !317
  call void @llvm.dbg.declare(metadata [1024 x i8]* %__buf55, metadata !262, metadata !DIExpression()), !dbg !317
  %call57 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef nonnull %9, i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @.str.9, i64 0, i64 0)) #10, !dbg !317
  %10 = load i64, i64* @epos, align 8, !dbg !317, !tbaa !38
  %call59 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef getelementptr inbounds ([1024 x i8], [1024 x i8]* @error, i64 0, i64 0), i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i64 noundef %10, i8* noundef nonnull %9) #10, !dbg !317
  call void @llvm.lifetime.end.p0i8(i64 1024, i8* nonnull %9) #9, !dbg !318
  br label %if.end60, !dbg !319

if.end60:                                         ; preds = %if.then54, %land.lhs.true50, %while.end
  %call61 = call i64 @strlen(i8* noundef getelementptr inbounds ([1024 x i8], [1024 x i8]* @error, i64 0, i64 0)) #8, !dbg !320
  %cmp62.not = icmp eq i64 %call61, 0, !dbg !322
  br i1 %cmp62.not, label %if.end66, label %if.then64, !dbg !323

if.then64:                                        ; preds = %if.end60
  %call65 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0), i8* noundef getelementptr inbounds ([1024 x i8], [1024 x i8]* @error, i64 0, i64 0)) #10, !dbg !324
  br label %if.end66, !dbg !326

if.end66:                                         ; preds = %if.then64, %if.end60
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #9, !dbg !327
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #9, !dbg !327
  ret i64 %pos.1, !dbg !328
}

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare !dbg !329 dso_local i32 @strcasecmp(i8* noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !333 dso_local void @free(i8* noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare !dbg !336 dso_local i32 @feof(%struct._IO_FILE* noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare !dbg !339 dso_local i64 @strlen(i8* noundef) local_unnamed_addr #2

declare !dbg !342 dso_local i32 @printf(i8* noundef, ...) local_unnamed_addr #5

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %argc, i8** nocapture noundef readonly %argv) local_unnamed_addr #0 !dbg !345 {
entry:
  %sb = alloca %struct.stat, align 8
  %buf = alloca [2 x i8], align 1
  call void @llvm.dbg.value(metadata i32 %argc, metadata !349, metadata !DIExpression()), !dbg !403
  call void @llvm.dbg.value(metadata i8** %argv, metadata !350, metadata !DIExpression()), !dbg !403
  call void @llvm.dbg.value(metadata i32 0, metadata !352, metadata !DIExpression()), !dbg !403
  %cmp = icmp slt i32 %argc, 2, !dbg !404
  br i1 %cmp, label %if.then, label %if.else, !dbg !406

if.then:                                          ; preds = %entry
  %0 = load i8*, i8** %argv, align 8, !dbg !407, !tbaa !151
  %call = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.11, i64 0, i64 0), i8* noundef %0) #10, !dbg !409
  tail call void @exit(i32 noundef 1) #12, !dbg !410
  unreachable, !dbg !410

if.else:                                          ; preds = %entry
  %cmp1 = icmp eq i32 %argc, 2, !dbg !411
  br i1 %cmp1, label %if.end18, label %if.else4, !dbg !413

if.else4:                                         ; preds = %if.else
  %cmp5 = icmp eq i32 %argc, 3, !dbg !414
  br i1 %cmp5, label %if.then6, label %if.else14, !dbg !416

if.then6:                                         ; preds = %if.else4
  %arrayidx7 = getelementptr inbounds i8*, i8** %argv, i64 1, !dbg !417
  %1 = load i8*, i8** %arrayidx7, align 8, !dbg !417, !tbaa !151
  %call8 = tail call i32 @strcmp(i8* noundef %1, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i64 0, i64 0)) #8, !dbg !420
  %cmp9.not = icmp eq i32 %call8, 0, !dbg !421
  br i1 %cmp9.not, label %if.end18, label %if.then10, !dbg !422

if.then10:                                        ; preds = %if.then6
  %call12 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.13, i64 0, i64 0), i8* noundef %1) #10, !dbg !423
  tail call void @exit(i32 noundef 1) #12, !dbg !425
  unreachable, !dbg !425

if.else14:                                        ; preds = %if.else4
  %call15 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.14, i64 0, i64 0)) #10, !dbg !426
  tail call void @exit(i32 noundef 1) #12, !dbg !428
  unreachable, !dbg !428

if.end18:                                         ; preds = %if.then6, %if.else
  %.sink = phi i64 [ 1, %if.else ], [ 2, %if.then6 ]
  %arrayidx3 = getelementptr inbounds i8*, i8** %argv, i64 %.sink, !dbg !429
  %filename.0 = load i8*, i8** %arrayidx3, align 8, !dbg !429, !tbaa !151
  call void @llvm.dbg.value(metadata i8* %filename.0, metadata !351, metadata !DIExpression()), !dbg !403
  call void @llvm.dbg.value(metadata i32 undef, metadata !352, metadata !DIExpression()), !dbg !403
  %call19 = tail call %struct._IO_FILE* @fopen64(i8* noundef %filename.0, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i64 0, i64 0)) #10, !dbg !430
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %call19, metadata !353, metadata !DIExpression()), !dbg !403
  %cmp20 = icmp eq %struct._IO_FILE* %call19, null, !dbg !431
  br i1 %cmp20, label %if.then21, label %if.end23, !dbg !433

if.then21:                                        ; preds = %if.end18
  %call22 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i8* noundef %filename.0) #10, !dbg !434
  tail call void @exit(i32 noundef 1) #12, !dbg !436
  unreachable, !dbg !436

if.end23:                                         ; preds = %if.end18
  %2 = bitcast %struct.stat* %sb to i8*, !dbg !437
  call void @llvm.lifetime.start.p0i8(i64 144, i8* nonnull %2) #9, !dbg !437
  call void @llvm.dbg.declare(metadata %struct.stat* %sb, metadata !354, metadata !DIExpression()), !dbg !438
  %call24 = tail call i32 @fileno(%struct._IO_FILE* noundef nonnull %call19) #10, !dbg !439
  %call25 = call i32 @fstat64(i32 noundef %call24, %struct.stat* noundef %sb) #10, !dbg !441
  %cmp26 = icmp eq i32 %call25, -1, !dbg !442
  br i1 %cmp26, label %if.then27, label %if.end29, !dbg !443

if.then27:                                        ; preds = %if.end23
  %call28 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.17, i64 0, i64 0), i8* noundef %filename.0) #10, !dbg !444
  call void @exit(i32 noundef 1) #12, !dbg !446
  unreachable, !dbg !446

if.end29:                                         ; preds = %if.end23
  %st_size = getelementptr inbounds %struct.stat, %struct.stat* %sb, i64 0, i32 8, !dbg !447
  %3 = load i64, i64* %st_size, align 8, !dbg !447, !tbaa !448
  call void @llvm.dbg.value(metadata i64 %3, metadata !392, metadata !DIExpression()), !dbg !403
  %cmp30 = icmp eq i64 %3, 0, !dbg !452
  br i1 %cmp30, label %if.then31, label %if.end33, !dbg !454

if.then31:                                        ; preds = %if.end29
  %call32 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i64 0, i64 0), i8* noundef %filename.0) #10, !dbg !455
  call void @exit(i32 noundef 1) #12, !dbg !457
  unreachable, !dbg !457

if.end33:                                         ; preds = %if.end29
  %call34 = call i64 @process(%struct._IO_FILE* noundef nonnull %call19) #11, !dbg !458
  call void @llvm.dbg.value(metadata i64 %call34, metadata !393, metadata !DIExpression()), !dbg !403
  %sub = sub nsw i64 %3, %call34, !dbg !459
  call void @llvm.dbg.value(metadata i64 %sub, metadata !394, metadata !DIExpression()), !dbg !403
  %cmp35 = icmp sgt i64 %sub, 0, !dbg !460
  br i1 %cmp35, label %if.then36, label %if.else59, !dbg !461

if.then36:                                        ; preds = %if.end33
  br i1 %cmp1, label %if.else56, label %if.then37, !dbg !462

if.then37:                                        ; preds = %if.then36
  %4 = getelementptr inbounds [2 x i8], [2 x i8]* %buf, i64 0, i64 0, !dbg !463
  call void @llvm.lifetime.start.p0i8(i64 2, i8* nonnull %4) #9, !dbg !463
  call void @llvm.dbg.declare(metadata [2 x i8]* %buf, metadata !395, metadata !DIExpression()), !dbg !464
  %call38 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([71 x i8], [71 x i8]* @.str.19, i64 0, i64 0), i64 noundef %3, i64 noundef %sub, i64 noundef %call34) #10, !dbg !465
  %call39 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.20, i64 0, i64 0)) #10, !dbg !466
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !467, !tbaa !151
  %call40 = call i8* @fgets(i8* noundef nonnull %4, i32 noundef 2, %struct._IO_FILE* noundef %5) #10, !dbg !469
  %cmp41 = icmp eq i8* %call40, null, !dbg !470
  br i1 %cmp41, label %if.then45, label %lor.lhs.false, !dbg !471

lor.lhs.false:                                    ; preds = %if.then37
  %call43 = call i32 @strncasecmp(i8* noundef nonnull %4, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.21, i64 0, i64 0), i64 noundef 1) #8, !dbg !472
  %cmp44.not = icmp eq i32 %call43, 0, !dbg !473
  br i1 %cmp44.not, label %if.end47, label %if.then45, !dbg !474

if.then45:                                        ; preds = %lor.lhs.false, %if.then37
  %call46 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.22, i64 0, i64 0)) #10, !dbg !475
  call void @exit(i32 noundef 1) #12, !dbg !477
  unreachable, !dbg !477

if.end47:                                         ; preds = %lor.lhs.false
  %call48 = call i32 @fileno(%struct._IO_FILE* noundef nonnull %call19) #10, !dbg !478
  %call49 = call i32 @ftruncate64(i32 noundef %call48, i64 noundef %call34) #10, !dbg !480
  %cmp50 = icmp eq i32 %call49, -1, !dbg !481
  br i1 %cmp50, label %if.then51, label %if.else53, !dbg !482

if.then51:                                        ; preds = %if.end47
  %call52 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.23, i64 0, i64 0)) #10, !dbg !483
  call void @exit(i32 noundef 1) #12, !dbg !485
  unreachable, !dbg !485

if.else53:                                        ; preds = %if.end47
  %call54 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.24, i64 0, i64 0)) #10, !dbg !486
  call void @llvm.lifetime.end.p0i8(i64 2, i8* nonnull %4) #9, !dbg !488
  br label %if.end61, !dbg !489

if.else56:                                        ; preds = %if.then36
  %call57 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.25, i64 0, i64 0)) #10, !dbg !490
  call void @exit(i32 noundef 1) #12, !dbg !492
  unreachable, !dbg !492

if.else59:                                        ; preds = %if.end33
  %call60 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.26, i64 0, i64 0)) #10, !dbg !493
  br label %if.end61

if.end61:                                         ; preds = %if.else59, %if.else53
  %call62 = call i32 @fclose(%struct._IO_FILE* noundef nonnull %call19) #10, !dbg !495
  call void @llvm.lifetime.end.p0i8(i64 144, i8* nonnull %2) #9, !dbg !496
  ret i32 0, !dbg !497
}

; Function Attrs: noreturn nounwind
declare !dbg !498 dso_local void @exit(i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare !dbg !501 dso_local i32 @strcmp(i8* noundef, i8* noundef) local_unnamed_addr #2

declare !dbg !502 dso_local %struct._IO_FILE* @fopen64(i8* noundef, i8* noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind uwtable
declare dso_local i32 @fstat64(i32 noundef, %struct.stat* noundef nonnull) local_unnamed_addr #0

; Function Attrs: nounwind
declare !dbg !505 dso_local i32 @fileno(%struct._IO_FILE* noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare !dbg !506 dso_local i32 @strncasecmp(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !507 dso_local i32 @ftruncate64(i32 noundef, i64 noundef) local_unnamed_addr #4

declare !dbg !511 dso_local i32 @fclose(%struct._IO_FILE* noundef) local_unnamed_addr #5

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #7

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #4 = { nounwind "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noreturn nounwind "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nobuiltin nounwind readonly willreturn "no-builtins" }
attributes #9 = { nounwind }
attributes #10 = { nobuiltin nounwind "no-builtins" }
attributes #11 = { nobuiltin "no-builtins" }
attributes #12 = { nobuiltin noreturn nounwind "no-builtins" }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!15, !16, !17, !18}
!llvm.ident = !{!19}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "error", scope: !2, file: !3, line: 15, type: !12, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 14.0.0", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !4, globals: !8, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "redis-check-aof.c", directory: "/home/xuheng/blackbox/llvm-test/redis", checksumkind: CSK_MD5, checksum: "3d89b3f180486c2ac4aafcd367ca7b0d")
!4 = !{!5, !6}
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!7 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!8 = !{!0, !9}
!9 = !DIGlobalVariableExpression(var: !10, expr: !DIExpression())
!10 = distinct !DIGlobalVariable(name: "epos", scope: !2, file: !3, line: 16, type: !11, isLocal: true, isDefinition: true)
!11 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!12 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 8192, elements: !13)
!13 = !{!14}
!14 = !DISubrange(count: 1024)
!15 = !{i32 7, !"Dwarf Version", i32 5}
!16 = !{i32 2, !"Debug Info Version", i32 3}
!17 = !{i32 1, !"wchar_size", i32 4}
!18 = !{i32 7, !"uwtable", i32 1}
!19 = !{!"clang version 14.0.0"}
!20 = distinct !DISubprogram(name: "consumeNewline", scope: !3, file: !3, line: 18, type: !21, scopeLine: 18, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !24)
!21 = !DISubroutineType(types: !22)
!22 = !{!23, !6}
!23 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!24 = !{!25, !26}
!25 = !DILocalVariable(name: "buf", arg: 1, scope: !20, file: !3, line: 18, type: !6)
!26 = !DILocalVariable(name: "__buf", scope: !27, file: !3, line: 20, type: !12)
!27 = distinct !DILexicalBlock(scope: !28, file: !3, line: 20, column: 9)
!28 = distinct !DILexicalBlock(scope: !29, file: !3, line: 19, column: 37)
!29 = distinct !DILexicalBlock(scope: !20, file: !3, line: 19, column: 9)
!30 = !DILocation(line: 0, scope: !20)
!31 = !DILocation(line: 19, column: 9, scope: !29)
!32 = !DILocation(line: 19, column: 31, scope: !29)
!33 = !DILocation(line: 19, column: 9, scope: !20)
!34 = !DILocation(line: 20, column: 9, scope: !27)
!35 = !{!36, !36, i64 0}
!36 = !{!"omnipotent char", !37, i64 0}
!37 = !{!"Simple C/C++ TBAA"}
!38 = !{!39, !39, i64 0}
!39 = !{!"long", !36, i64 0}
!40 = !DILocation(line: 20, column: 9, scope: !28)
!41 = !DILocation(line: 21, column: 9, scope: !28)
!42 = !DILocation(line: 24, column: 1, scope: !20)
!43 = !DISubprogram(name: "strncmp", scope: !44, file: !44, line: 140, type: !45, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !52)
!44 = !DIFile(filename: "/usr/include/string.h", directory: "", checksumkind: CSK_MD5, checksum: "61f60112cf5c0a45c54ea1f595add24c")
!45 = !DISubroutineType(types: !46)
!46 = !{!23, !47, !47, !49}
!47 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !48, size: 64)
!48 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!49 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !50, line: 46, baseType: !51)
!50 = !DIFile(filename: "VeriFrame/LLVMUtils/llvm/lib/clang/14.0.0/include/stddef.h", directory: "/home/xuheng", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!51 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!52 = !{}
!53 = !DISubprogram(name: "sprintf", scope: !54, file: !54, line: 334, type: !55, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !52)
!54 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "5b917eded35ce2507d1e294bf8cb74d7")
!55 = !DISubroutineType(types: !56)
!56 = !{!23, !57, !58, null}
!57 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !6)
!58 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !47)
!59 = distinct !DISubprogram(name: "readLong", scope: !3, file: !3, line: 26, type: !60, scopeLine: 26, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !118)
!60 = !DISubroutineType(types: !61)
!61 = !{!23, !62, !7, !117}
!62 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !63, size: 64)
!63 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !64, line: 7, baseType: !65)
!64 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!65 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !66, line: 49, size: 1728, elements: !67)
!66 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "f3c970561f3408448ce03a9676ead8f4")
!67 = !{!68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !83, !85, !86, !87, !90, !92, !94, !98, !101, !103, !106, !109, !110, !111, !112, !113}
!68 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !65, file: !66, line: 51, baseType: !23, size: 32)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !65, file: !66, line: 54, baseType: !6, size: 64, offset: 64)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !65, file: !66, line: 55, baseType: !6, size: 64, offset: 128)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !65, file: !66, line: 56, baseType: !6, size: 64, offset: 192)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !65, file: !66, line: 57, baseType: !6, size: 64, offset: 256)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !65, file: !66, line: 58, baseType: !6, size: 64, offset: 320)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !65, file: !66, line: 59, baseType: !6, size: 64, offset: 384)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !65, file: !66, line: 60, baseType: !6, size: 64, offset: 448)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !65, file: !66, line: 61, baseType: !6, size: 64, offset: 512)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !65, file: !66, line: 64, baseType: !6, size: 64, offset: 576)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !65, file: !66, line: 65, baseType: !6, size: 64, offset: 640)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !65, file: !66, line: 66, baseType: !6, size: 64, offset: 704)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !65, file: !66, line: 68, baseType: !81, size: 64, offset: 768)
!81 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !82, size: 64)
!82 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !66, line: 36, flags: DIFlagFwdDecl)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !65, file: !66, line: 70, baseType: !84, size: 64, offset: 832)
!84 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !65, size: 64)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !65, file: !66, line: 72, baseType: !23, size: 32, offset: 896)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !65, file: !66, line: 73, baseType: !23, size: 32, offset: 928)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !65, file: !66, line: 74, baseType: !88, size: 64, offset: 960)
!88 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !89, line: 152, baseType: !11)
!89 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "f6304b1a6dcfc6bee76e9a51043b5090")
!90 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !65, file: !66, line: 77, baseType: !91, size: 16, offset: 1024)
!91 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !65, file: !66, line: 78, baseType: !93, size: 8, offset: 1040)
!93 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !65, file: !66, line: 79, baseType: !95, size: 8, offset: 1048)
!95 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 8, elements: !96)
!96 = !{!97}
!97 = !DISubrange(count: 1)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !65, file: !66, line: 81, baseType: !99, size: 64, offset: 1088)
!99 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100, size: 64)
!100 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !66, line: 43, baseType: null)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !65, file: !66, line: 89, baseType: !102, size: 64, offset: 1152)
!102 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !89, line: 153, baseType: !11)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !65, file: !66, line: 91, baseType: !104, size: 64, offset: 1216)
!104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !105, size: 64)
!105 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !66, line: 37, flags: DIFlagFwdDecl)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !65, file: !66, line: 92, baseType: !107, size: 64, offset: 1280)
!107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !108, size: 64)
!108 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !66, line: 38, flags: DIFlagFwdDecl)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !65, file: !66, line: 93, baseType: !84, size: 64, offset: 1344)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !65, file: !66, line: 94, baseType: !5, size: 64, offset: 1408)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !65, file: !66, line: 95, baseType: !49, size: 64, offset: 1472)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !65, file: !66, line: 96, baseType: !23, size: 32, offset: 1536)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !65, file: !66, line: 98, baseType: !114, size: 160, offset: 1568)
!114 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 160, elements: !115)
!115 = !{!116}
!116 = !DISubrange(count: 20)
!117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64)
!118 = !{!119, !120, !121, !122, !126, !127}
!119 = !DILocalVariable(name: "fp", arg: 1, scope: !59, file: !3, line: 26, type: !62)
!120 = !DILocalVariable(name: "prefix", arg: 2, scope: !59, file: !3, line: 26, type: !7)
!121 = !DILocalVariable(name: "target", arg: 3, scope: !59, file: !3, line: 26, type: !117)
!122 = !DILocalVariable(name: "buf", scope: !59, file: !3, line: 27, type: !123)
!123 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 1024, elements: !124)
!124 = !{!125}
!125 = !DISubrange(count: 128)
!126 = !DILocalVariable(name: "eptr", scope: !59, file: !3, line: 27, type: !6)
!127 = !DILocalVariable(name: "__buf", scope: !128, file: !3, line: 33, type: !12)
!128 = distinct !DILexicalBlock(scope: !129, file: !3, line: 33, column: 9)
!129 = distinct !DILexicalBlock(scope: !130, file: !3, line: 32, column: 27)
!130 = distinct !DILexicalBlock(scope: !59, file: !3, line: 32, column: 9)
!131 = !DILocation(line: 0, scope: !59)
!132 = !DILocation(line: 27, column: 5, scope: !59)
!133 = !DILocation(line: 27, column: 10, scope: !59)
!134 = !DILocation(line: 28, column: 12, scope: !59)
!135 = !DILocation(line: 28, column: 10, scope: !59)
!136 = !DILocation(line: 29, column: 9, scope: !137)
!137 = distinct !DILexicalBlock(scope: !59, file: !3, line: 29, column: 9)
!138 = !DILocation(line: 29, column: 35, scope: !137)
!139 = !DILocation(line: 29, column: 9, scope: !59)
!140 = !DILocation(line: 32, column: 9, scope: !130)
!141 = !DILocation(line: 32, column: 16, scope: !130)
!142 = !DILocation(line: 32, column: 9, scope: !59)
!143 = !DILocation(line: 32, column: 19, scope: !130)
!144 = !DILocation(line: 33, column: 9, scope: !128)
!145 = !DILocation(line: 33, column: 9, scope: !129)
!146 = !DILocation(line: 34, column: 9, scope: !129)
!147 = !DILocation(line: 36, column: 25, scope: !59)
!148 = !DILocation(line: 36, column: 15, scope: !59)
!149 = !DILocation(line: 36, column: 13, scope: !59)
!150 = !DILocation(line: 37, column: 27, scope: !59)
!151 = !{!152, !152, i64 0}
!152 = !{!"any pointer", !36, i64 0}
!153 = !DILocation(line: 37, column: 12, scope: !59)
!154 = !DILocation(line: 37, column: 5, scope: !59)
!155 = !DILocation(line: 38, column: 1, scope: !59)
!156 = !DISubprogram(name: "ftell", scope: !54, file: !54, line: 689, type: !157, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !52)
!157 = !DISubroutineType(types: !158)
!158 = !{!11, !62}
!159 = !DISubprogram(name: "fgets", scope: !54, file: !54, line: 564, type: !160, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !52)
!160 = !DISubroutineType(types: !161)
!161 = !{!6, !57, !23, !162}
!162 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !62)
!163 = !DISubprogram(name: "strtol", scope: !164, file: !164, line: 176, type: !165, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !52)
!164 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "f0db66726d35051e5af2525f5b33bd81")
!165 = !DISubroutineType(types: !166)
!166 = !{!11, !58, !167, !23}
!167 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !168)
!168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!169 = distinct !DISubprogram(name: "readBytes", scope: !3, file: !3, line: 40, type: !170, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !172)
!170 = !DISubroutineType(types: !171)
!171 = !{!23, !62, !6, !11}
!172 = !{!173, !174, !175, !176, !177}
!173 = !DILocalVariable(name: "fp", arg: 1, scope: !169, file: !3, line: 40, type: !62)
!174 = !DILocalVariable(name: "target", arg: 2, scope: !169, file: !3, line: 40, type: !6)
!175 = !DILocalVariable(name: "length", arg: 3, scope: !169, file: !3, line: 40, type: !11)
!176 = !DILocalVariable(name: "real", scope: !169, file: !3, line: 41, type: !11)
!177 = !DILocalVariable(name: "__buf", scope: !178, file: !3, line: 45, type: !12)
!178 = distinct !DILexicalBlock(scope: !179, file: !3, line: 45, column: 9)
!179 = distinct !DILexicalBlock(scope: !180, file: !3, line: 44, column: 25)
!180 = distinct !DILexicalBlock(scope: !169, file: !3, line: 44, column: 9)
!181 = !DILocation(line: 0, scope: !169)
!182 = !DILocation(line: 42, column: 12, scope: !169)
!183 = !DILocation(line: 42, column: 10, scope: !169)
!184 = !DILocation(line: 43, column: 12, scope: !169)
!185 = !DILocation(line: 44, column: 14, scope: !180)
!186 = !DILocation(line: 44, column: 9, scope: !169)
!187 = !DILocation(line: 45, column: 9, scope: !178)
!188 = !DILocation(line: 45, column: 9, scope: !179)
!189 = !DILocation(line: 46, column: 9, scope: !179)
!190 = !DILocation(line: 49, column: 1, scope: !169)
!191 = !DISubprogram(name: "fread", scope: !54, file: !54, line: 646, type: !192, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !52)
!192 = !DISubroutineType(types: !193)
!193 = !{!49, !194, !49, !49, !162}
!194 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !5)
!195 = distinct !DISubprogram(name: "readString", scope: !3, file: !3, line: 51, type: !196, scopeLine: 51, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !198)
!196 = !DISubroutineType(types: !197)
!197 = !{!23, !62, !168}
!198 = !{!199, !200, !201}
!199 = !DILocalVariable(name: "fp", arg: 1, scope: !195, file: !3, line: 51, type: !62)
!200 = !DILocalVariable(name: "target", arg: 2, scope: !195, file: !3, line: 51, type: !168)
!201 = !DILocalVariable(name: "len", scope: !195, file: !3, line: 52, type: !11)
!202 = !DILocation(line: 0, scope: !195)
!203 = !DILocation(line: 52, column: 5, scope: !195)
!204 = !DILocation(line: 53, column: 13, scope: !195)
!205 = !DILocation(line: 54, column: 10, scope: !206)
!206 = distinct !DILexicalBlock(scope: !195, file: !3, line: 54, column: 9)
!207 = !DILocation(line: 54, column: 9, scope: !195)
!208 = !DILocation(line: 59, column: 9, scope: !195)
!209 = !DILocation(line: 60, column: 22, scope: !195)
!210 = !DILocation(line: 60, column: 13, scope: !195)
!211 = !DILocation(line: 61, column: 10, scope: !212)
!212 = distinct !DILexicalBlock(scope: !195, file: !3, line: 61, column: 9)
!213 = !DILocation(line: 61, column: 9, scope: !195)
!214 = !DILocation(line: 64, column: 25, scope: !215)
!215 = distinct !DILexicalBlock(scope: !195, file: !3, line: 64, column: 9)
!216 = !DILocation(line: 64, column: 36, scope: !215)
!217 = !DILocation(line: 64, column: 10, scope: !215)
!218 = !DILocation(line: 64, column: 9, scope: !195)
!219 = !DILocation(line: 67, column: 6, scope: !195)
!220 = !DILocation(line: 67, column: 5, scope: !195)
!221 = !DILocation(line: 67, column: 22, scope: !195)
!222 = !DILocation(line: 68, column: 5, scope: !195)
!223 = !DILocation(line: 69, column: 1, scope: !195)
!224 = !DISubprogram(name: "malloc", scope: !164, file: !164, line: 539, type: !225, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !52)
!225 = !DISubroutineType(types: !226)
!226 = !{!5, !49}
!227 = distinct !DISubprogram(name: "readArgc", scope: !3, file: !3, line: 71, type: !228, scopeLine: 71, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !230)
!228 = !DISubroutineType(types: !229)
!229 = !{!23, !62, !117}
!230 = !{!231, !232}
!231 = !DILocalVariable(name: "fp", arg: 1, scope: !227, file: !3, line: 71, type: !62)
!232 = !DILocalVariable(name: "target", arg: 2, scope: !227, file: !3, line: 71, type: !117)
!233 = !DILocation(line: 0, scope: !227)
!234 = !DILocation(line: 72, column: 12, scope: !227)
!235 = !DILocation(line: 72, column: 5, scope: !227)
!236 = distinct !DISubprogram(name: "process", scope: !3, file: !3, line: 75, type: !157, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !237)
!237 = !{!238, !239, !240, !241, !242, !243, !244, !256, !262}
!238 = !DILocalVariable(name: "fp", arg: 1, scope: !236, file: !3, line: 75, type: !62)
!239 = !DILocalVariable(name: "argc", scope: !236, file: !3, line: 76, type: !11)
!240 = !DILocalVariable(name: "pos", scope: !236, file: !3, line: 76, type: !11)
!241 = !DILocalVariable(name: "i", scope: !236, file: !3, line: 77, type: !23)
!242 = !DILocalVariable(name: "multi", scope: !236, file: !3, line: 77, type: !23)
!243 = !DILocalVariable(name: "str", scope: !236, file: !3, line: 78, type: !6)
!244 = !DILocalVariable(name: "__buf", scope: !245, file: !3, line: 89, type: !12)
!245 = distinct !DILexicalBlock(scope: !246, file: !3, line: 89, column: 25)
!246 = distinct !DILexicalBlock(scope: !247, file: !3, line: 88, column: 34)
!247 = distinct !DILexicalBlock(scope: !248, file: !3, line: 88, column: 25)
!248 = distinct !DILexicalBlock(scope: !249, file: !3, line: 87, column: 52)
!249 = distinct !DILexicalBlock(scope: !250, file: !3, line: 87, column: 21)
!250 = distinct !DILexicalBlock(scope: !251, file: !3, line: 86, column: 25)
!251 = distinct !DILexicalBlock(scope: !252, file: !3, line: 86, column: 17)
!252 = distinct !DILexicalBlock(scope: !253, file: !3, line: 84, column: 36)
!253 = distinct !DILexicalBlock(scope: !254, file: !3, line: 84, column: 9)
!254 = distinct !DILexicalBlock(scope: !255, file: !3, line: 84, column: 9)
!255 = distinct !DILexicalBlock(scope: !236, file: !3, line: 80, column: 14)
!256 = !DILocalVariable(name: "__buf", scope: !257, file: !3, line: 94, type: !12)
!257 = distinct !DILexicalBlock(scope: !258, file: !3, line: 94, column: 25)
!258 = distinct !DILexicalBlock(scope: !259, file: !3, line: 93, column: 34)
!259 = distinct !DILexicalBlock(scope: !260, file: !3, line: 93, column: 25)
!260 = distinct !DILexicalBlock(scope: !261, file: !3, line: 92, column: 58)
!261 = distinct !DILexicalBlock(scope: !249, file: !3, line: 92, column: 28)
!262 = !DILocalVariable(name: "__buf", scope: !263, file: !3, line: 110, type: !12)
!263 = distinct !DILexicalBlock(scope: !264, file: !3, line: 110, column: 9)
!264 = distinct !DILexicalBlock(scope: !265, file: !3, line: 109, column: 50)
!265 = distinct !DILexicalBlock(scope: !236, file: !3, line: 109, column: 9)
!266 = !DILocation(line: 0, scope: !236)
!267 = !DILocation(line: 76, column: 5, scope: !236)
!268 = !DILocation(line: 78, column: 5, scope: !236)
!269 = !DILocation(line: 80, column: 5, scope: !236)
!270 = !DILocation(line: 81, column: 13, scope: !255)
!271 = !DILocation(line: 76, column: 16, scope: !236)
!272 = !DILocation(line: 81, column: 27, scope: !273)
!273 = distinct !DILexicalBlock(scope: !255, file: !3, line: 81, column: 13)
!274 = !DILocation(line: 81, column: 21, scope: !273)
!275 = !DILocation(line: 82, column: 14, scope: !276)
!276 = distinct !DILexicalBlock(scope: !255, file: !3, line: 82, column: 13)
!277 = !DILocation(line: 82, column: 13, scope: !255)
!278 = !DILocation(line: 84, column: 23, scope: !253)
!279 = !DILocation(line: 84, column: 9, scope: !254)
!280 = !DILocation(line: 85, column: 18, scope: !281)
!281 = distinct !DILexicalBlock(scope: !252, file: !3, line: 85, column: 17)
!282 = !DILocation(line: 85, column: 17, scope: !252)
!283 = !DILocation(line: 86, column: 19, scope: !251)
!284 = !DILocation(line: 0, scope: !252)
!285 = !DILocation(line: 86, column: 17, scope: !252)
!286 = !DILocation(line: 87, column: 21, scope: !249)
!287 = !DILocation(line: 87, column: 46, scope: !249)
!288 = !DILocation(line: 87, column: 21, scope: !250)
!289 = !DILocation(line: 88, column: 30, scope: !247)
!290 = !DILocation(line: 88, column: 25, scope: !248)
!291 = !DILocation(line: 89, column: 25, scope: !245)
!292 = !DILocation(line: 89, column: 25, scope: !246)
!293 = !DILocation(line: 90, column: 25, scope: !246)
!294 = !DILocation(line: 92, column: 28, scope: !261)
!295 = !DILocation(line: 92, column: 52, scope: !261)
!296 = !DILocation(line: 92, column: 28, scope: !249)
!297 = !DILocation(line: 93, column: 25, scope: !259)
!298 = !DILocation(line: 93, column: 25, scope: !260)
!299 = !DILocation(line: 94, column: 25, scope: !257)
!300 = !DILocation(line: 94, column: 25, scope: !258)
!301 = !DILocation(line: 95, column: 25, scope: !258)
!302 = !DILocation(line: 99, column: 13, scope: !252)
!303 = !DILocation(line: 84, column: 32, scope: !253)
!304 = distinct !{!304, !279, !305}
!305 = !DILocation(line: 100, column: 9, scope: !254)
!306 = !DILocation(line: 104, column: 17, scope: !307)
!307 = distinct !DILexicalBlock(scope: !308, file: !3, line: 104, column: 17)
!308 = distinct !DILexicalBlock(scope: !309, file: !3, line: 103, column: 23)
!309 = distinct !DILexicalBlock(scope: !255, file: !3, line: 103, column: 13)
!310 = !DILocation(line: 104, column: 17, scope: !308)
!311 = !DILocation(line: 104, column: 22, scope: !307)
!312 = !DILocation(line: 109, column: 9, scope: !265)
!313 = !DILocation(line: 109, column: 18, scope: !265)
!314 = !DILocation(line: 109, column: 30, scope: !265)
!315 = !DILocation(line: 109, column: 44, scope: !265)
!316 = !DILocation(line: 109, column: 9, scope: !236)
!317 = !DILocation(line: 110, column: 9, scope: !263)
!318 = !DILocation(line: 110, column: 9, scope: !264)
!319 = !DILocation(line: 111, column: 5, scope: !264)
!320 = !DILocation(line: 112, column: 9, scope: !321)
!321 = distinct !DILexicalBlock(scope: !236, file: !3, line: 112, column: 9)
!322 = !DILocation(line: 112, column: 23, scope: !321)
!323 = !DILocation(line: 112, column: 9, scope: !236)
!324 = !DILocation(line: 113, column: 9, scope: !325)
!325 = distinct !DILexicalBlock(scope: !321, file: !3, line: 112, column: 28)
!326 = !DILocation(line: 114, column: 5, scope: !325)
!327 = !DILocation(line: 116, column: 1, scope: !236)
!328 = !DILocation(line: 115, column: 5, scope: !236)
!329 = !DISubprogram(name: "strcasecmp", scope: !330, file: !330, line: 116, type: !331, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !52)
!330 = !DIFile(filename: "/usr/include/strings.h", directory: "", checksumkind: CSK_MD5, checksum: "bd81fc6b401eca7e7fe9248ee68afe69")
!331 = !DISubroutineType(types: !332)
!332 = !{!23, !47, !47}
!333 = !DISubprogram(name: "free", scope: !164, file: !164, line: 565, type: !334, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !52)
!334 = !DISubroutineType(types: !335)
!335 = !{null, !5}
!336 = !DISubprogram(name: "feof", scope: !54, file: !54, line: 759, type: !337, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !52)
!337 = !DISubroutineType(types: !338)
!338 = !{!23, !62}
!339 = !DISubprogram(name: "strlen", scope: !44, file: !44, line: 385, type: !340, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !52)
!340 = !DISubroutineType(types: !341)
!341 = !{!49, !47}
!342 = !DISubprogram(name: "printf", scope: !54, file: !54, line: 332, type: !343, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !52)
!343 = !DISubroutineType(types: !344)
!344 = !{!23, !58, null}
!345 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 118, type: !346, scopeLine: 118, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !348)
!346 = !DISubroutineType(types: !347)
!347 = !{!23, !23, !168}
!348 = !{!349, !350, !351, !352, !353, !354, !392, !393, !394, !395}
!349 = !DILocalVariable(name: "argc", arg: 1, scope: !345, file: !3, line: 118, type: !23)
!350 = !DILocalVariable(name: "argv", arg: 2, scope: !345, file: !3, line: 118, type: !168)
!351 = !DILocalVariable(name: "filename", scope: !345, file: !3, line: 119, type: !6)
!352 = !DILocalVariable(name: "fix", scope: !345, file: !3, line: 120, type: !23)
!353 = !DILocalVariable(name: "fp", scope: !345, file: !3, line: 139, type: !62)
!354 = !DILocalVariable(name: "sb", scope: !345, file: !3, line: 145, type: !355)
!355 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !356, line: 46, size: 1152, elements: !357)
!356 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stat.h", directory: "", checksumkind: CSK_MD5, checksum: "f8d5b541c4f89219f8e8ff8c3e2940d9")
!357 = !{!358, !360, !362, !364, !367, !369, !371, !372, !373, !374, !376, !378, !386, !387, !388}
!358 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !355, file: !356, line: 48, baseType: !359, size: 64)
!359 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !89, line: 145, baseType: !51)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !355, file: !356, line: 53, baseType: !361, size: 64, offset: 64)
!361 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !89, line: 148, baseType: !51)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !355, file: !356, line: 61, baseType: !363, size: 64, offset: 128)
!363 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !89, line: 151, baseType: !51)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !355, file: !356, line: 62, baseType: !365, size: 32, offset: 192)
!365 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !89, line: 150, baseType: !366)
!366 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !355, file: !356, line: 64, baseType: !368, size: 32, offset: 224)
!368 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !89, line: 146, baseType: !366)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !355, file: !356, line: 65, baseType: !370, size: 32, offset: 256)
!370 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !89, line: 147, baseType: !366)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !355, file: !356, line: 67, baseType: !23, size: 32, offset: 288)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !355, file: !356, line: 69, baseType: !359, size: 64, offset: 320)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !355, file: !356, line: 74, baseType: !88, size: 64, offset: 384)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !355, file: !356, line: 78, baseType: !375, size: 64, offset: 448)
!375 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !89, line: 174, baseType: !11)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !355, file: !356, line: 80, baseType: !377, size: 64, offset: 512)
!377 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !89, line: 179, baseType: !11)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !355, file: !356, line: 91, baseType: !379, size: 128, offset: 576)
!379 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !380, line: 10, size: 128, elements: !381)
!380 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_timespec.h", directory: "", checksumkind: CSK_MD5, checksum: "33f28095c70788baa6982a79b13f774b")
!381 = !{!382, !384}
!382 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !379, file: !380, line: 12, baseType: !383, size: 64)
!383 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !89, line: 160, baseType: !11)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !379, file: !380, line: 16, baseType: !385, size: 64, offset: 64)
!385 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !89, line: 196, baseType: !11)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !355, file: !356, line: 92, baseType: !379, size: 128, offset: 704)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !355, file: !356, line: 93, baseType: !379, size: 128, offset: 832)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !355, file: !356, line: 106, baseType: !389, size: 192, offset: 960)
!389 = !DICompositeType(tag: DW_TAG_array_type, baseType: !385, size: 192, elements: !390)
!390 = !{!391}
!391 = !DISubrange(count: 3)
!392 = !DILocalVariable(name: "size", scope: !345, file: !3, line: 151, type: !11)
!393 = !DILocalVariable(name: "pos", scope: !345, file: !3, line: 157, type: !11)
!394 = !DILocalVariable(name: "diff", scope: !345, file: !3, line: 158, type: !11)
!395 = !DILocalVariable(name: "buf", scope: !396, file: !3, line: 161, type: !400)
!396 = distinct !DILexicalBlock(scope: !397, file: !3, line: 160, column: 18)
!397 = distinct !DILexicalBlock(scope: !398, file: !3, line: 160, column: 13)
!398 = distinct !DILexicalBlock(scope: !399, file: !3, line: 159, column: 19)
!399 = distinct !DILexicalBlock(scope: !345, file: !3, line: 159, column: 9)
!400 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 16, elements: !401)
!401 = !{!402}
!402 = !DISubrange(count: 2)
!403 = !DILocation(line: 0, scope: !345)
!404 = !DILocation(line: 122, column: 14, scope: !405)
!405 = distinct !DILexicalBlock(scope: !345, file: !3, line: 122, column: 9)
!406 = !DILocation(line: 122, column: 9, scope: !345)
!407 = !DILocation(line: 123, column: 50, scope: !408)
!408 = distinct !DILexicalBlock(scope: !405, file: !3, line: 122, column: 19)
!409 = !DILocation(line: 123, column: 9, scope: !408)
!410 = !DILocation(line: 124, column: 9, scope: !408)
!411 = !DILocation(line: 125, column: 21, scope: !412)
!412 = distinct !DILexicalBlock(scope: !405, file: !3, line: 125, column: 16)
!413 = !DILocation(line: 125, column: 16, scope: !405)
!414 = !DILocation(line: 127, column: 21, scope: !415)
!415 = distinct !DILexicalBlock(scope: !412, file: !3, line: 127, column: 16)
!416 = !DILocation(line: 127, column: 16, scope: !412)
!417 = !DILocation(line: 128, column: 20, scope: !418)
!418 = distinct !DILexicalBlock(scope: !419, file: !3, line: 128, column: 13)
!419 = distinct !DILexicalBlock(scope: !415, file: !3, line: 127, column: 27)
!420 = !DILocation(line: 128, column: 13, scope: !418)
!421 = !DILocation(line: 128, column: 37, scope: !418)
!422 = !DILocation(line: 128, column: 13, scope: !419)
!423 = !DILocation(line: 129, column: 13, scope: !424)
!424 = distinct !DILexicalBlock(scope: !418, file: !3, line: 128, column: 43)
!425 = !DILocation(line: 130, column: 13, scope: !424)
!426 = !DILocation(line: 135, column: 9, scope: !427)
!427 = distinct !DILexicalBlock(scope: !415, file: !3, line: 134, column: 12)
!428 = !DILocation(line: 136, column: 9, scope: !427)
!429 = !DILocation(line: 0, scope: !412)
!430 = !DILocation(line: 139, column: 16, scope: !345)
!431 = !DILocation(line: 140, column: 12, scope: !432)
!432 = distinct !DILexicalBlock(scope: !345, file: !3, line: 140, column: 9)
!433 = !DILocation(line: 140, column: 9, scope: !345)
!434 = !DILocation(line: 141, column: 9, scope: !435)
!435 = distinct !DILexicalBlock(scope: !432, file: !3, line: 140, column: 21)
!436 = !DILocation(line: 142, column: 9, scope: !435)
!437 = !DILocation(line: 145, column: 5, scope: !345)
!438 = !DILocation(line: 145, column: 23, scope: !345)
!439 = !DILocation(line: 146, column: 21, scope: !440)
!440 = distinct !DILexicalBlock(scope: !345, file: !3, line: 146, column: 9)
!441 = !DILocation(line: 146, column: 9, scope: !440)
!442 = !DILocation(line: 146, column: 37, scope: !440)
!443 = !DILocation(line: 146, column: 9, scope: !345)
!444 = !DILocation(line: 147, column: 9, scope: !445)
!445 = distinct !DILexicalBlock(scope: !440, file: !3, line: 146, column: 44)
!446 = !DILocation(line: 148, column: 9, scope: !445)
!447 = !DILocation(line: 151, column: 20, scope: !345)
!448 = !{!449, !39, i64 48}
!449 = !{!"stat", !39, i64 0, !39, i64 8, !39, i64 16, !450, i64 24, !450, i64 28, !450, i64 32, !450, i64 36, !39, i64 40, !39, i64 48, !39, i64 56, !39, i64 64, !451, i64 72, !451, i64 88, !451, i64 104, !36, i64 120}
!450 = !{!"int", !36, i64 0}
!451 = !{!"timespec", !39, i64 0, !39, i64 8}
!452 = !DILocation(line: 152, column: 14, scope: !453)
!453 = distinct !DILexicalBlock(scope: !345, file: !3, line: 152, column: 9)
!454 = !DILocation(line: 152, column: 9, scope: !345)
!455 = !DILocation(line: 153, column: 9, scope: !456)
!456 = distinct !DILexicalBlock(scope: !453, file: !3, line: 152, column: 20)
!457 = !DILocation(line: 154, column: 9, scope: !456)
!458 = !DILocation(line: 157, column: 16, scope: !345)
!459 = !DILocation(line: 158, column: 21, scope: !345)
!460 = !DILocation(line: 159, column: 14, scope: !399)
!461 = !DILocation(line: 159, column: 9, scope: !345)
!462 = !DILocation(line: 160, column: 13, scope: !398)
!463 = !DILocation(line: 161, column: 13, scope: !396)
!464 = !DILocation(line: 161, column: 18, scope: !396)
!465 = !DILocation(line: 162, column: 13, scope: !396)
!466 = !DILocation(line: 163, column: 13, scope: !396)
!467 = !DILocation(line: 164, column: 39, scope: !468)
!468 = distinct !DILexicalBlock(scope: !396, file: !3, line: 164, column: 17)
!469 = !DILocation(line: 164, column: 17, scope: !468)
!470 = !DILocation(line: 164, column: 46, scope: !468)
!471 = !DILocation(line: 164, column: 54, scope: !468)
!472 = !DILocation(line: 165, column: 17, scope: !468)
!473 = !DILocation(line: 165, column: 40, scope: !468)
!474 = !DILocation(line: 164, column: 17, scope: !396)
!475 = !DILocation(line: 166, column: 21, scope: !476)
!476 = distinct !DILexicalBlock(scope: !468, file: !3, line: 165, column: 46)
!477 = !DILocation(line: 167, column: 21, scope: !476)
!478 = !DILocation(line: 169, column: 27, scope: !479)
!479 = distinct !DILexicalBlock(scope: !396, file: !3, line: 169, column: 17)
!480 = !DILocation(line: 169, column: 17, scope: !479)
!481 = !DILocation(line: 169, column: 44, scope: !479)
!482 = !DILocation(line: 169, column: 17, scope: !396)
!483 = !DILocation(line: 170, column: 17, scope: !484)
!484 = distinct !DILexicalBlock(scope: !479, file: !3, line: 169, column: 51)
!485 = !DILocation(line: 171, column: 17, scope: !484)
!486 = !DILocation(line: 173, column: 17, scope: !487)
!487 = distinct !DILexicalBlock(scope: !479, file: !3, line: 172, column: 20)
!488 = !DILocation(line: 175, column: 9, scope: !397)
!489 = !DILocation(line: 179, column: 5, scope: !398)
!490 = !DILocation(line: 176, column: 13, scope: !491)
!491 = distinct !DILexicalBlock(scope: !397, file: !3, line: 175, column: 16)
!492 = !DILocation(line: 177, column: 13, scope: !491)
!493 = !DILocation(line: 180, column: 9, scope: !494)
!494 = distinct !DILexicalBlock(scope: !399, file: !3, line: 179, column: 12)
!495 = !DILocation(line: 183, column: 5, scope: !345)
!496 = !DILocation(line: 185, column: 1, scope: !345)
!497 = !DILocation(line: 184, column: 5, scope: !345)
!498 = !DISubprogram(name: "exit", scope: !164, file: !164, line: 617, type: !499, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized, retainedNodes: !52)
!499 = !DISubroutineType(types: !500)
!500 = !{null, !23}
!501 = !DISubprogram(name: "strcmp", scope: !44, file: !44, line: 137, type: !331, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !52)
!502 = !DISubprogram(name: "fopen", linkageName: "fopen64", scope: !54, file: !54, line: 257, type: !503, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !52)
!503 = !DISubroutineType(types: !504)
!504 = !{!62, !58, !58}
!505 = !DISubprogram(name: "fileno", scope: !54, file: !54, line: 786, type: !337, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !52)
!506 = !DISubprogram(name: "strncasecmp", scope: !330, file: !330, line: 120, type: !45, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !52)
!507 = !DISubprogram(name: "ftruncate", linkageName: "ftruncate64", scope: !508, file: !508, line: 1017, type: !509, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !52)
!508 = !DIFile(filename: "/usr/include/unistd.h", directory: "", checksumkind: CSK_MD5, checksum: "29bea3f2d65ec3bb874f389bfdfa2266")
!509 = !DISubroutineType(types: !510)
!510 = !{!23, !23, !102}
!511 = !DISubprogram(name: "fclose", scope: !54, file: !54, line: 213, type: !337, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !52)
