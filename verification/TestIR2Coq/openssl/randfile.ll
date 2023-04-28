; ModuleID = 'crypto/rand/randfile.c'
source_filename = "crypto/rand/randfile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@.str = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"crypto/rand/randfile.c\00", align 1
@__func__.RAND_load_file = private unnamed_addr constant [15 x i8] c"RAND_load_file\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"Filename=%s\00", align 1
@__func__.RAND_write_file = private unnamed_addr constant [16 x i8] c"RAND_write_file\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"RANDFILE\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"HOME\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c".rnd\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"/\00", align 1

; Function Attrs: noinline nounwind uwtable
define i32 @RAND_load_file(i8* noundef %file, i64 noundef %bytes) local_unnamed_addr #0 {
entry:
  %buf = alloca [1280 x i8], align 16
  %sb = alloca %struct.stat, align 8
  %0 = getelementptr inbounds [1280 x i8], [1280 x i8]* %buf, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 1280, i8* nonnull %0) #6
  %1 = bitcast %struct.stat* %sb to i8*
  call void @llvm.lifetime.start.p0i8(i64 144, i8* nonnull %1) #6
  %cmp = icmp eq i64 %bytes, 0
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call = tail call %struct._IO_FILE* @openssl_fopen(i8* noundef %file, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0)) #7
  %cmp1 = icmp eq %struct._IO_FILE* %call, null
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 noundef 106, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__func__.RAND_load_file, i64 0, i64 0)) #7
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 36, i32 noundef 121, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i8* noundef %file) #7
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %call4 = tail call i32 @fileno(%struct._IO_FILE* noundef nonnull %call) #7
  %call5 = call i32 @fstat(i32 noundef %call4, %struct.stat* noundef %sb) #7
  %cmp6 = icmp slt i32 %call5, 0
  br i1 %cmp6, label %if.then7, label %if.end9

if.then7:                                         ; preds = %if.end3
  call void @ERR_new() #7
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 noundef 113, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__func__.RAND_load_file, i64 0, i64 0)) #7
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 36, i32 noundef 113, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i8* noundef %file) #7
  %call8 = call i32 @fclose(%struct._IO_FILE* noundef nonnull %call) #7
  br label %cleanup

if.end9:                                          ; preds = %if.end3
  %cmp10 = icmp slt i64 %bytes, 0
  br i1 %cmp10, label %if.then11, label %if.end15

if.then11:                                        ; preds = %if.end9
  %st_mode = getelementptr inbounds %struct.stat, %struct.stat* %sb, i64 0, i32 3
  %2 = load i32, i32* %st_mode, align 8, !tbaa !4
  %and = and i32 %2, 61440
  %cmp12 = icmp eq i32 %and, 32768
  br i1 %cmp12, label %if.then13, label %if.end15

if.then13:                                        ; preds = %if.then11
  %st_size = getelementptr inbounds %struct.stat, %struct.stat* %sb, i64 0, i32 8
  %3 = load i64, i64* %st_size, align 8, !tbaa !11
  br label %if.end15

if.end15:                                         ; preds = %if.then11, %if.then13, %if.end9
  %bytes.addr.0 = phi i64 [ %3, %if.then13 ], [ %bytes, %if.end9 ], [ 256, %if.then11 ]
  call void @setbuf(%struct._IO_FILE* noundef nonnull %call, i8* noundef null) #7
  br label %for.cond.outer.outer

for.cond.outer.outer:                             ; preds = %land.lhs.true42, %if.end15
  %bytes.addr.1.ph.ph = phi i64 [ %sub, %land.lhs.true42 ], [ %bytes.addr.0, %if.end15 ]
  %ret.0.ph.ph = phi i32 [ %add, %land.lhs.true42 ], [ 0, %if.end15 ]
  %cmp16 = icmp sgt i64 %bytes.addr.1.ph.ph, 0
  %cmp18 = icmp slt i64 %bytes.addr.1.ph.ph, 1281
  %bytes.addr.1.op = shl i64 %bytes.addr.1.ph.ph, 32
  %bytes.addr.1.op.op = ashr exact i64 %bytes.addr.1.op, 32
  %cond.op.op = select i1 %cmp18, i64 %bytes.addr.1.op.op, i64 1024
  %conv21 = select i1 %cmp16, i64 %cond.op.op, i64 1280
  br label %for.cond.outer

for.cond.outer:                                   ; preds = %for.cond.outer.outer, %if.end37
  %ret.0.ph = phi i32 [ %add, %if.end37 ], [ %ret.0.ph.ph, %for.cond.outer.outer ]
  br label %for.cond

for.cond:                                         ; preds = %for.cond.outer, %if.then28
  %call22 = call i64 @fread(i8* noundef nonnull %0, i64 noundef 1, i64 noundef %conv21, %struct._IO_FILE* noundef nonnull %call) #7
  %conv23 = trunc i64 %call22 to i32
  %call24 = call i32 @ferror(%struct._IO_FILE* noundef nonnull %call) #7
  %tobool.not = icmp eq i32 %call24, 0
  br i1 %tobool.not, label %if.end33, label %land.lhs.true

land.lhs.true:                                    ; preds = %for.cond
  %call25 = tail call i32* @__errno_location() #8
  %4 = load i32, i32* %call25, align 4, !tbaa !12
  %cmp26 = icmp eq i32 %4, 4
  br i1 %cmp26, label %if.then28, label %if.end33

if.then28:                                        ; preds = %land.lhs.true
  call void @clearerr(%struct._IO_FILE* noundef nonnull %call) #7
  %cond85 = icmp eq i32 %conv23, 0
  br i1 %cond85, label %for.cond, label %if.end37.loopexit

if.end33:                                         ; preds = %land.lhs.true, %for.cond
  %conv23.le102 = trunc i64 %call22 to i32
  %cmp34 = icmp eq i32 %conv23.le102, 0
  br i1 %cmp34, label %for.end, label %if.end37

if.end37.loopexit:                                ; preds = %if.then28
  %conv23.le = trunc i64 %call22 to i32
  br label %if.end37

if.end37:                                         ; preds = %if.end37.loopexit, %if.end33
  %conv2398 = phi i32 [ %conv23.le, %if.end37.loopexit ], [ %conv23.le102, %if.end33 ]
  %conv39 = sitofp i32 %conv2398 to double
  call void @RAND_add(i8* noundef nonnull %0, i32 noundef %conv2398, double noundef %conv39) #7
  %add = add nsw i32 %ret.0.ph, %conv2398
  br i1 %cmp16, label %land.lhs.true42, label %for.cond.outer

land.lhs.true42:                                  ; preds = %if.end37
  %sext84 = shl i64 %call22, 32
  %conv43 = ashr exact i64 %sext84, 32
  %sub = sub nsw i64 %bytes.addr.1.ph.ph, %conv43
  %cmp44 = icmp slt i64 %sub, 1
  br i1 %cmp44, label %for.end, label %for.cond.outer.outer

for.end:                                          ; preds = %land.lhs.true42, %if.end33
  %ret.1 = phi i32 [ %ret.0.ph, %if.end33 ], [ %add, %land.lhs.true42 ]
  call void @OPENSSL_cleanse(i8* noundef nonnull %0, i64 noundef 1280) #7
  %call49 = call i32 @fclose(%struct._IO_FILE* noundef nonnull %call) #7
  %call50 = call i32 @RAND_status() #7
  %tobool51.not = icmp eq i32 %call50, 0
  br i1 %tobool51.not, label %if.then52, label %cleanup

if.then52:                                        ; preds = %for.end
  call void @ERR_new() #7
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 noundef 174, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__func__.RAND_load_file, i64 0, i64 0)) #7
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 36, i32 noundef 118, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i8* noundef %file) #7
  br label %cleanup

cleanup:                                          ; preds = %for.end, %entry, %if.then52, %if.then7, %if.then2
  %retval.0 = phi i32 [ -1, %if.then2 ], [ -1, %if.then7 ], [ -1, %if.then52 ], [ 0, %entry ], [ %ret.1, %for.end ]
  call void @llvm.lifetime.end.p0i8(i64 144, i8* nonnull %1) #6
  call void @llvm.lifetime.end.p0i8(i64 1280, i8* nonnull %0) #6
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

declare %struct._IO_FILE* @openssl_fopen(i8* noundef, i8* noundef) local_unnamed_addr #2

declare void @ERR_new() local_unnamed_addr #2

declare void @ERR_set_debug(i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #2

declare void @ERR_set_error(i32 noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
declare i32 @fstat(i32 noundef, %struct.stat* noundef nonnull) local_unnamed_addr #0

; Function Attrs: nounwind
declare i32 @fileno(%struct._IO_FILE* noundef) local_unnamed_addr #3

declare i32 @fclose(%struct._IO_FILE* noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @setbuf(%struct._IO_FILE* noundef, i8* noundef) local_unnamed_addr #3

declare i64 @fread(i8* noundef, i64 noundef, i64 noundef, %struct._IO_FILE* noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @ferror(%struct._IO_FILE* noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
declare i32* @__errno_location() local_unnamed_addr #4

; Function Attrs: nounwind
declare void @clearerr(%struct._IO_FILE* noundef) local_unnamed_addr #3

declare void @RAND_add(i8* noundef, i32 noundef, double noundef) local_unnamed_addr #2

declare void @OPENSSL_cleanse(i8* noundef, i64 noundef) local_unnamed_addr #2

declare i32 @RAND_status() local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: noinline nounwind uwtable
define i32 @RAND_write_file(i8* noundef nonnull %file) local_unnamed_addr #0 {
entry:
  %buf = alloca [1024 x i8], align 16
  %sb = alloca %struct.stat, align 8
  %0 = getelementptr inbounds [1024 x i8], [1024 x i8]* %buf, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 1024, i8* nonnull %0) #6
  %1 = bitcast %struct.stat* %sb to i8*
  call void @llvm.lifetime.start.p0i8(i64 144, i8* nonnull %1) #6
  %call = call i32 @stat(i8* noundef %file, %struct.stat* noundef %sb) #7
  %cmp = icmp sgt i32 %call, -1
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %st_mode = getelementptr inbounds %struct.stat, %struct.stat* %sb, i64 0, i32 3
  %2 = load i32, i32* %st_mode, align 8, !tbaa !4
  %and = and i32 %2, 61440
  %cmp1 = icmp eq i32 %and, 32768
  br i1 %cmp1, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  call void @ERR_new() #7
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 noundef 190, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.RAND_write_file, i64 0, i64 0)) #7
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 36, i32 noundef 122, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i8* noundef nonnull %file) #7
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true, %entry
  %call2 = call i32 @RAND_priv_bytes(i8* noundef nonnull %0, i32 noundef 1024) #7
  %cmp3.not = icmp eq i32 %call2, 1
  br i1 %cmp3.not, label %if.end5, label %cleanup

if.end5:                                          ; preds = %if.end
  %call6 = call i32 (i8*, i32, ...) @open(i8* noundef nonnull %file, i32 noundef 65, i32 noundef 384) #7
  %cmp7.not = icmp eq i32 %call6, -1
  br i1 %cmp7.not, label %if.end14, label %if.end10

if.end10:                                         ; preds = %if.end5
  %call9 = call %struct._IO_FILE* @fdopen(i32 noundef %call6, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0)) #7
  %cmp11 = icmp eq %struct._IO_FILE* %call9, null
  br i1 %cmp11, label %if.end14, label %if.end17

if.end14:                                         ; preds = %if.end5, %if.end10
  %call13 = call %struct._IO_FILE* @openssl_fopen(i8* noundef nonnull %file, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0)) #7
  %cmp15 = icmp eq %struct._IO_FILE* %call13, null
  br i1 %cmp15, label %if.then16, label %if.end17

if.then16:                                        ; preds = %if.end14
  call void @ERR_new() #7
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 noundef 240, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.RAND_write_file, i64 0, i64 0)) #7
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 36, i32 noundef 121, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i8* noundef nonnull %file) #7
  br label %cleanup

if.end17:                                         ; preds = %if.end10, %if.end14
  %out.142 = phi %struct._IO_FILE* [ %call13, %if.end14 ], [ %call9, %if.end10 ]
  %call18 = call i32 @chmod(i8* noundef nonnull %file, i32 noundef 384) #7
  %call20 = call i64 @fwrite(i8* noundef nonnull %0, i64 noundef 1, i64 noundef 1024, %struct._IO_FILE* noundef nonnull %out.142) #7
  %conv = trunc i64 %call20 to i32
  %call21 = call i32 @fclose(%struct._IO_FILE* noundef nonnull %out.142) #7
  call void @OPENSSL_cleanse(i8* noundef nonnull %0, i64 noundef 1024) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.end17, %if.then16, %if.then
  %retval.0 = phi i32 [ -1, %if.then16 ], [ %conv, %if.end17 ], [ -1, %if.then ], [ -1, %if.end ]
  call void @llvm.lifetime.end.p0i8(i64 144, i8* nonnull %1) #6
  call void @llvm.lifetime.end.p0i8(i64 1024, i8* nonnull %0) #6
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
declare i32 @stat(i8* noundef nonnull, %struct.stat* noundef nonnull) local_unnamed_addr #0

declare i32 @RAND_priv_bytes(i8* noundef, i32 noundef) local_unnamed_addr #2

declare i32 @open(i8* noundef, i32 noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind
declare %struct._IO_FILE* @fdopen(i32 noundef, i8* noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare i32 @chmod(i8* noundef, i32 noundef) local_unnamed_addr #3

declare i64 @fwrite(i8* noundef, i64 noundef, i64 noundef, %struct._IO_FILE* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i8* @RAND_file_name(i8* noundef %buf, i64 noundef %size) local_unnamed_addr #0 {
entry:
  %call = tail call i8* @ossl_safe_getenv(i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0)) #7
  %cmp = icmp eq i8* %call, null
  br i1 %cmp, label %if.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %0 = load i8, i8* %call, align 1, !tbaa !13
  %cmp1 = icmp eq i8 %0, 0
  br i1 %cmp1, label %if.end, label %if.then13

if.end:                                           ; preds = %entry, %lor.lhs.false
  %call3 = tail call i8* @ossl_safe_getenv(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0)) #7
  %cmp4 = icmp eq i8* %call3, null
  br i1 %cmp4, label %cleanup, label %lor.lhs.false6

lor.lhs.false6:                                   ; preds = %if.end
  %.pr = load i8, i8* %call3, align 1, !tbaa !13
  %cmp8 = icmp eq i8 %.pr, 0
  br i1 %cmp8, label %cleanup, label %if.else

if.then13:                                        ; preds = %lor.lhs.false
  %call12 = tail call i64 @strlen(i8* noundef nonnull %call) #9
  %add = add i64 %call12, 1
  %cmp14.not = icmp ult i64 %add, %size
  br i1 %cmp14.not, label %if.end17, label %cleanup

if.end17:                                         ; preds = %if.then13
  %call18 = tail call i8* @strcpy(i8* noundef %buf, i8* noundef nonnull %call) #7
  br label %cleanup

if.else:                                          ; preds = %lor.lhs.false6
  %call1259 = tail call i64 @strlen(i8* noundef nonnull %call3) #9
  %call20 = tail call i64 @strlen(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0)) #9
  %add21 = add i64 %call1259, 2
  %add22 = add i64 %add21, %call20
  %cmp23.not = icmp ult i64 %add22, %size
  br i1 %cmp23.not, label %if.end26, label %cleanup

if.end26:                                         ; preds = %if.else
  %call27 = tail call i8* @strcpy(i8* noundef %buf, i8* noundef nonnull %call3) #7
  %call28 = tail call i8* @strcat(i8* noundef %buf, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0)) #7
  %call29 = tail call i8* @strcat(i8* noundef %buf, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0)) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end17, %if.end26, %if.else, %if.then13, %if.end, %lor.lhs.false6
  %retval.0 = phi i8* [ null, %lor.lhs.false6 ], [ null, %if.end ], [ null, %if.then13 ], [ null, %if.else ], [ %buf, %if.end26 ], [ %buf, %if.end17 ]
  ret i8* %retval.0
}

declare i8* @ossl_safe_getenv(i8* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare i64 @strlen(i8* noundef) local_unnamed_addr #5

; Function Attrs: nounwind
declare i8* @strcpy(i8* noundef, i8* noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare i8* @strcat(i8* noundef, i8* noundef) local_unnamed_addr #3

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nosync nounwind readnone willreturn "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind }
attributes #7 = { nobuiltin nounwind "no-builtins" }
attributes #8 = { nobuiltin nounwind readnone willreturn "no-builtins" }
attributes #9 = { nobuiltin nounwind readonly willreturn "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{!"clang version 14.0.0"}
!4 = !{!5, !9, i64 24}
!5 = !{!"stat", !6, i64 0, !6, i64 8, !6, i64 16, !9, i64 24, !9, i64 28, !9, i64 32, !9, i64 36, !6, i64 40, !6, i64 48, !6, i64 56, !6, i64 64, !10, i64 72, !10, i64 88, !10, i64 104, !7, i64 120}
!6 = !{!"long", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!"int", !7, i64 0}
!10 = !{!"timespec", !6, i64 0, !6, i64 8}
!11 = !{!5, !6, i64 48}
!12 = !{!9, !9, i64 0}
!13 = !{!7, !7, i64 0}
