; ModuleID = 'fuzz/test-corpus.c'
source_filename = "fuzz/test-corpus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.OPENSSL_dir_context_st = type opaque
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }

@.str = private unnamed_addr constant [6 x i8] c"# %s\0A\00", align 1
@stdout = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.1 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.2 = private unnamed_addr constant [42 x i8] c"assertion failed: s == (size_t)st.st_size\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"fuzz/test-corpus.c\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %argc, i8** noundef %argv) local_unnamed_addr #0 {
entry:
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %ctx = alloca %struct.OPENSSL_dir_context_st*, align 8
  store i32 %argc, i32* %argc.addr, align 4, !tbaa !3
  store i8** %argv, i8*** %argv.addr, align 8, !tbaa !7
  %call = call i32 @FuzzerInitialize(i32* noundef nonnull %argc.addr, i8*** noundef nonnull %argv.addr) #6
  %0 = load i32, i32* %argc.addr, align 4, !tbaa !3
  %cmp57 = icmp sgt i32 %0, 1
  br i1 %cmp57, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %1 = bitcast %struct.OPENSSL_dir_context_st** %ctx to i8*
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %if.end21
  %indvars.iv = phi i64 [ 1, %for.body.lr.ph ], [ %indvars.iv.next, %if.end21 ]
  %2 = load i8**, i8*** %argv.addr, align 8, !tbaa !7
  %arrayidx = getelementptr inbounds i8*, i8** %2, i64 %indvars.iv
  %3 = load i8*, i8** %arrayidx, align 8, !tbaa !7
  %call1 = call i64 @strlen(i8* noundef %3) #7
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #8
  store %struct.OPENSSL_dir_context_st* null, %struct.OPENSSL_dir_context_st** %ctx, align 8, !tbaa !7
  %4 = load i8*, i8** %arrayidx, align 8, !tbaa !7
  %call451 = call i8* @OPENSSL_DIR_read(%struct.OPENSSL_dir_context_st** noundef nonnull %ctx, i8* noundef %4) #6
  %cmp5.not52 = icmp eq i8* %call451, null
  br i1 %cmp5.not52, label %while.end.thread61, label %while.body

while.end.thread61:                               ; preds = %for.body
  %call1763 = call i32 @OPENSSL_DIR_end(%struct.OPENSSL_dir_context_st** noundef nonnull %ctx) #6
  br label %if.then18

while.body:                                       ; preds = %for.body, %if.end15
  %call455 = phi i8* [ %call4, %if.end15 ], [ %call451, %for.body ]
  %pathname.054 = phi i8* [ %pathname.1, %if.end15 ], [ null, %for.body ]
  %dirname_len.053 = phi i64 [ %dirname_len.1, %if.end15 ], [ %call1, %for.body ]
  %cmp6 = icmp eq i8* %pathname.054, null
  br i1 %cmp6, label %if.then, label %if.end15

if.then:                                          ; preds = %while.body
  %call7 = call noalias i8* @malloc(i64 noundef 4096) #6
  %cmp8 = icmp eq i8* %call7, null
  br i1 %cmp8, label %while.end.thread, label %if.end

while.end.thread:                                 ; preds = %if.then
  %call1744 = call i32 @OPENSSL_DIR_end(%struct.OPENSSL_dir_context_st** noundef nonnull %ctx) #6
  br label %if.end21

if.end:                                           ; preds = %if.then
  %5 = load i8**, i8*** %argv.addr, align 8, !tbaa !7
  %arrayidx11 = getelementptr inbounds i8*, i8** %5, i64 %indvars.iv
  %6 = load i8*, i8** %arrayidx11, align 8, !tbaa !7
  %call12 = call i8* @strcpy(i8* noundef nonnull %call7, i8* noundef %6) #6
  %inc = add i64 %dirname_len.053, 1
  %arrayidx13 = getelementptr inbounds i8, i8* %call7, i64 %dirname_len.053
  store i8 47, i8* %arrayidx13, align 1, !tbaa !9
  %arrayidx14 = getelementptr inbounds i8, i8* %call7, i64 %inc
  store i8 0, i8* %arrayidx14, align 1, !tbaa !9
  br label %if.end15

if.end15:                                         ; preds = %if.end, %while.body
  %dirname_len.1 = phi i64 [ %inc, %if.end ], [ %dirname_len.053, %while.body ]
  %pathname.1 = phi i8* [ %call7, %if.end ], [ %pathname.054, %while.body ]
  %add.ptr = getelementptr inbounds i8, i8* %pathname.1, i64 %dirname_len.1
  %call16 = call i8* @strcpy(i8* noundef %add.ptr, i8* noundef nonnull %call455) #6
  call fastcc void @testfile(i8* noundef %pathname.1) #9
  %7 = load i8**, i8*** %argv.addr, align 8, !tbaa !7
  %arrayidx3 = getelementptr inbounds i8*, i8** %7, i64 %indvars.iv
  %8 = load i8*, i8** %arrayidx3, align 8, !tbaa !7
  %call4 = call i8* @OPENSSL_DIR_read(%struct.OPENSSL_dir_context_st** noundef nonnull %ctx, i8* noundef %8) #6
  %cmp5.not = icmp eq i8* %call4, null
  br i1 %cmp5.not, label %while.end, label %while.body, !llvm.loop !10

while.end:                                        ; preds = %if.end15
  %call17 = call i32 @OPENSSL_DIR_end(%struct.OPENSSL_dir_context_st** noundef nonnull %ctx) #6
  br i1 %cmp5.not52, label %if.then18, label %if.end21

if.then18:                                        ; preds = %while.end.thread61, %while.end
  %pathname.0.lcssa64 = phi i8* [ null, %while.end.thread61 ], [ %pathname.1, %while.end ]
  %9 = load i8**, i8*** %argv.addr, align 8, !tbaa !7
  %arrayidx20 = getelementptr inbounds i8*, i8** %9, i64 %indvars.iv
  %10 = load i8*, i8** %arrayidx20, align 8, !tbaa !7
  call fastcc void @testfile(i8* noundef %10) #9
  br label %if.end21

if.end21:                                         ; preds = %while.end.thread, %if.then18, %while.end
  %pathname.049 = phi i8* [ null, %while.end.thread ], [ %pathname.0.lcssa64, %if.then18 ], [ %pathname.1, %while.end ]
  call void @free(i8* noundef %pathname.049) #6
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %11 = load i32, i32* %argc.addr, align 4, !tbaa !3
  %12 = sext i32 %11 to i64
  %cmp = icmp slt i64 %indvars.iv.next, %12
  br i1 %cmp, label %for.body, label %for.end, !llvm.loop !12

for.end:                                          ; preds = %if.end21, %entry
  call void @FuzzerCleanup() #6
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

declare dso_local i32 @FuzzerInitialize(i32* noundef, i8*** noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i64 @strlen(i8* noundef) local_unnamed_addr #3

declare dso_local i8* @OPENSSL_DIR_read(%struct.OPENSSL_dir_context_st** noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64 noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8* noundef, i8* noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @testfile(i8* noundef nonnull %pathname) unnamed_addr #0 {
entry:
  %st = alloca %struct.stat, align 8
  %0 = bitcast %struct.stat* %st to i8*
  call void @llvm.lifetime.start.p0i8(i64 144, i8* nonnull %0) #8
  %call = call i32 @stat(i8* noundef %pathname, %struct.stat* noundef %st) #6
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %st_mode = getelementptr inbounds %struct.stat, %struct.stat* %st, i64 0, i32 3
  %1 = load i32, i32* %st_mode, align 8, !tbaa !13
  %and = and i32 %1, 61440
  %cmp1 = icmp eq i32 %and, 32768
  br i1 %cmp1, label %if.end, label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %call2 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* noundef nonnull %pathname) #6
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !7
  %call3 = call i32 @fflush(%struct._IO_FILE* noundef %2) #6
  %call4 = call %struct._IO_FILE* @fopen(i8* noundef nonnull %pathname, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0)) #6
  %cmp5 = icmp eq %struct._IO_FILE* %call4, null
  br i1 %cmp5, label %cleanup, label %if.end7

if.end7:                                          ; preds = %if.end
  %st_size = getelementptr inbounds %struct.stat, %struct.stat* %st, i64 0, i32 8
  %3 = load i64, i64* %st_size, align 8, !tbaa !17
  %call8 = call noalias i8* @malloc(i64 noundef %3) #6
  %cmp9.not = icmp eq i8* %call8, null
  br i1 %cmp9.not, label %if.end16, label %if.then10

if.then10:                                        ; preds = %if.end7
  %4 = load i64, i64* %st_size, align 8, !tbaa !17
  %call12 = call i64 @fread(i8* noundef nonnull %call8, i64 noundef 1, i64 noundef %4, %struct._IO_FILE* noundef nonnull %call4) #6
  %5 = load i64, i64* %st_size, align 8, !tbaa !17
  %cmp14 = icmp eq i64 %call12, %5
  br i1 %cmp14, label %cond.end, label %cond.false

cond.false:                                       ; preds = %if.then10
  call void @OPENSSL_die(i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0), i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i32 noundef 54) #10
  unreachable

cond.end:                                         ; preds = %if.then10
  %call15 = call i32 @FuzzerTestOneInput(i8* noundef nonnull %call8, i64 noundef %call12) #6
  call void @free(i8* noundef nonnull %call8) #6
  br label %if.end16

if.end16:                                         ; preds = %cond.end, %if.end7
  %call17 = call i32 @fclose(%struct._IO_FILE* noundef nonnull %call4) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry, %lor.lhs.false, %if.end16
  call void @llvm.lifetime.end.p0i8(i64 144, i8* nonnull %0) #8
  ret void
}

declare dso_local i32 @OPENSSL_DIR_end(%struct.OPENSSL_dir_context_st** noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare dso_local void @free(i8* noundef) local_unnamed_addr #4

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

declare dso_local void @FuzzerCleanup() local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
declare dso_local i32 @stat(i8* noundef nonnull, %struct.stat* noundef nonnull) local_unnamed_addr #0

declare dso_local i32 @printf(i8* noundef, ...) local_unnamed_addr #2

declare dso_local i32 @fflush(%struct._IO_FILE* noundef) local_unnamed_addr #2

declare dso_local %struct._IO_FILE* @fopen(i8* noundef, i8* noundef) local_unnamed_addr #2

declare dso_local i64 @fread(i8* noundef, i64 noundef, i64 noundef, %struct._IO_FILE* noundef) local_unnamed_addr #2

; Function Attrs: noreturn
declare dso_local void @OPENSSL_die(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #5

declare dso_local i32 @FuzzerTestOneInput(i8* noundef, i64 noundef) local_unnamed_addr #2

declare dso_local i32 @fclose(%struct._IO_FILE* noundef) local_unnamed_addr #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nobuiltin nounwind "no-builtins" }
attributes #7 = { nobuiltin nounwind readonly willreturn "no-builtins" }
attributes #8 = { nounwind }
attributes #9 = { nobuiltin "no-builtins" }
attributes #10 = { nobuiltin noreturn nounwind "no-builtins" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{!"clang version 14.0.0"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!8, !8, i64 0}
!8 = !{!"any pointer", !5, i64 0}
!9 = !{!5, !5, i64 0}
!10 = distinct !{!10, !11}
!11 = !{!"llvm.loop.mustprogress"}
!12 = distinct !{!12, !11}
!13 = !{!14, !4, i64 24}
!14 = !{!"stat", !15, i64 0, !15, i64 8, !15, i64 16, !4, i64 24, !4, i64 28, !4, i64 32, !4, i64 36, !15, i64 40, !15, i64 48, !15, i64 56, !15, i64 64, !16, i64 72, !16, i64 88, !16, i64 104, !5, i64 120}
!15 = !{!"long", !5, i64 0}
!16 = !{!"timespec", !15, i64 0, !15, i64 8}
!17 = !{!14, !15, i64 48}
