; ModuleID = 'crypto/o_dir.c'
source_filename = "crypto/o_dir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.OPENSSL_dir_context_st = type { %struct.__dirstream*, [4097 x i8] }
%struct.__dirstream = type opaque
%struct.dirent = type { i64, i64, i16, i8, [256 x i8] }

; Function Attrs: noinline nounwind uwtable
define i8* @OPENSSL_DIR_read(%struct.OPENSSL_dir_context_st** noundef %ctx, i8* noundef %directory) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.OPENSSL_dir_context_st** %ctx, null
  %cmp1 = icmp eq i8* %directory, null
  %or.cond = or i1 %cmp, %cmp1
  %call = tail call i32* @__errno_location() #4
  br i1 %or.cond, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 22, i32* %call, align 4, !tbaa !4
  br label %cleanup

if.end:                                           ; preds = %entry
  store i32 0, i32* %call, align 4, !tbaa !4
  %0 = load %struct.OPENSSL_dir_context_st*, %struct.OPENSSL_dir_context_st** %ctx, align 8, !tbaa !8
  %cmp3 = icmp eq %struct.OPENSSL_dir_context_st* %0, null
  br i1 %cmp3, label %if.then4, label %if.end.if.end18_crit_edge

if.end.if.end18_crit_edge:                        ; preds = %if.end
  %dir19.phi.trans.insert = getelementptr inbounds %struct.OPENSSL_dir_context_st, %struct.OPENSSL_dir_context_st* %0, i64 0, i32 0
  %.pre = load %struct.__dirstream*, %struct.__dirstream** %dir19.phi.trans.insert, align 8, !tbaa !10
  br label %if.end18

if.then4:                                         ; preds = %if.end
  %call5 = tail call noalias i8* @malloc(i64 noundef 4112) #5
  %1 = bitcast %struct.OPENSSL_dir_context_st** %ctx to i8**
  store i8* %call5, i8** %1, align 8, !tbaa !8
  %cmp6 = icmp eq i8* %call5, null
  br i1 %cmp6, label %if.then7, label %if.end9

if.then7:                                         ; preds = %if.then4
  store i32 12, i32* %call, align 4, !tbaa !4
  br label %cleanup

if.end9:                                          ; preds = %if.then4
  %call10 = tail call i8* @memset(i8* noundef nonnull %call5, i32 noundef 0, i64 noundef 4112) #5
  %call11 = tail call %struct.__dirstream* @opendir(i8* noundef nonnull %directory) #5
  %2 = load %struct.OPENSSL_dir_context_st*, %struct.OPENSSL_dir_context_st** %ctx, align 8, !tbaa !8
  %dir = getelementptr inbounds %struct.OPENSSL_dir_context_st, %struct.OPENSSL_dir_context_st* %2, i64 0, i32 0
  store %struct.__dirstream* %call11, %struct.__dirstream** %dir, align 8, !tbaa !10
  %3 = load %struct.OPENSSL_dir_context_st*, %struct.OPENSSL_dir_context_st** %ctx, align 8, !tbaa !8
  %dir12 = getelementptr inbounds %struct.OPENSSL_dir_context_st, %struct.OPENSSL_dir_context_st* %3, i64 0, i32 0
  %4 = load %struct.__dirstream*, %struct.__dirstream** %dir12, align 8, !tbaa !10
  %cmp13 = icmp eq %struct.__dirstream* %4, null
  br i1 %cmp13, label %if.then14, label %if.end18

if.then14:                                        ; preds = %if.end9
  %5 = load i32, i32* %call, align 4, !tbaa !4
  %6 = bitcast %struct.OPENSSL_dir_context_st* %3 to i8*
  tail call void @free(i8* noundef %6) #5
  store %struct.OPENSSL_dir_context_st* null, %struct.OPENSSL_dir_context_st** %ctx, align 8, !tbaa !8
  store i32 %5, i32* %call, align 4, !tbaa !4
  br label %cleanup

if.end18:                                         ; preds = %if.end.if.end18_crit_edge, %if.end9
  %7 = phi %struct.__dirstream* [ %4, %if.end9 ], [ %.pre, %if.end.if.end18_crit_edge ]
  %call20 = tail call %struct.dirent* @readdir(%struct.__dirstream* noundef %7) #5
  %cmp21 = icmp eq %struct.dirent* %call20, null
  br i1 %cmp21, label %cleanup, label %if.end23

if.end23:                                         ; preds = %if.end18
  %8 = load %struct.OPENSSL_dir_context_st*, %struct.OPENSSL_dir_context_st** %ctx, align 8, !tbaa !8
  %arraydecay = getelementptr inbounds %struct.OPENSSL_dir_context_st, %struct.OPENSSL_dir_context_st* %8, i64 0, i32 1, i64 0
  %arraydecay24 = getelementptr inbounds %struct.dirent, %struct.dirent* %call20, i64 0, i32 4, i64 0
  %call25 = tail call i64 @OPENSSL_strlcpy(i8* noundef nonnull %arraydecay, i8* noundef nonnull %arraydecay24, i64 noundef 4097) #5
  %9 = load %struct.OPENSSL_dir_context_st*, %struct.OPENSSL_dir_context_st** %ctx, align 8, !tbaa !8
  %arraydecay27 = getelementptr inbounds %struct.OPENSSL_dir_context_st, %struct.OPENSSL_dir_context_st* %9, i64 0, i32 1, i64 0
  br label %cleanup

cleanup:                                          ; preds = %if.end18, %if.end23, %if.then14, %if.then7, %if.then
  %retval.0 = phi i8* [ null, %if.then ], [ null, %if.then7 ], [ null, %if.then14 ], [ %arraydecay27, %if.end23 ], [ null, %if.end18 ]
  ret i8* %retval.0
}

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
declare i32* @__errno_location() local_unnamed_addr #1

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare i8* @memset(i8* noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

declare %struct.__dirstream* @opendir(i8* noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @free(i8* noundef) local_unnamed_addr #2

declare %struct.dirent* @readdir(%struct.__dirstream* noundef) local_unnamed_addr #3

declare i64 @OPENSSL_strlcpy(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define i32 @OPENSSL_DIR_end(%struct.OPENSSL_dir_context_st** noundef readonly %ctx) local_unnamed_addr #0 {
entry:
  %cmp.not = icmp eq %struct.OPENSSL_dir_context_st** %ctx, null
  br i1 %cmp.not, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %0 = load %struct.OPENSSL_dir_context_st*, %struct.OPENSSL_dir_context_st** %ctx, align 8, !tbaa !8
  %cmp1.not = icmp eq %struct.OPENSSL_dir_context_st* %0, null
  br i1 %cmp1.not, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %dir = getelementptr inbounds %struct.OPENSSL_dir_context_st, %struct.OPENSSL_dir_context_st* %0, i64 0, i32 0
  %1 = load %struct.__dirstream*, %struct.__dirstream** %dir, align 8, !tbaa !10
  %call = tail call i32 @closedir(%struct.__dirstream* noundef %1) #5
  %2 = bitcast %struct.OPENSSL_dir_context_st** %ctx to i8**
  %3 = load i8*, i8** %2, align 8, !tbaa !8
  tail call void @free(i8* noundef %3) #5
  switch i32 %call, label %if.end [
    i32 0, label %return
    i32 -1, label %sw.bb2
  ]

sw.bb2:                                           ; preds = %if.then
  br label %return

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %call3 = tail call i32* @__errno_location() #4
  store i32 22, i32* %call3, align 4, !tbaa !4
  br label %return

return:                                           ; preds = %if.then, %sw.bb2, %if.end
  %retval.1 = phi i32 [ 0, %if.end ], [ 1, %if.then ], [ 0, %sw.bb2 ]
  ret i32 %retval.1
}

declare i32 @closedir(%struct.__dirstream* noundef) local_unnamed_addr #3

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree nosync nounwind readnone willreturn "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nobuiltin nounwind readnone willreturn "no-builtins" }
attributes #5 = { nobuiltin nounwind "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{!"clang version 14.0.0"}
!4 = !{!5, !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !9, i64 0}
!9 = !{!"any pointer", !6, i64 0}
!10 = !{!11, !9, i64 0}
!11 = !{!"OPENSSL_dir_context_st", !9, i64 0, !6, i64 8}
