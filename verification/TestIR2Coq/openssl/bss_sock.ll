; ModuleID = 'crypto/bio/bss_sock.c'
source_filename = "crypto/bio/bss_sock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bio_method_st = type { i32, i8*, i32 (%struct.bio_st*, i8*, i64, i64*)*, i32 (%struct.bio_st*, i8*, i32)*, i32 (%struct.bio_st*, i8*, i64, i64*)*, i32 (%struct.bio_st*, i8*, i32)*, i32 (%struct.bio_st*, i8*)*, i32 (%struct.bio_st*, i8*, i32)*, i64 (%struct.bio_st*, i32, i64, i8*)*, i32 (%struct.bio_st*)*, i32 (%struct.bio_st*)*, i64 (%struct.bio_st*, i32, i32 (%struct.bio_st*, i32, i32)*)* }
%struct.bio_st = type { %struct.ossl_lib_ctx_st*, %struct.bio_method_st*, i64 (%struct.bio_st*, i32, i8*, i32, i64, i64)*, i64 (%struct.bio_st*, i32, i8*, i64, i32, i64, i32, i64*)*, i8*, i32, i32, i32, i32, i32, i8*, %struct.bio_st*, %struct.bio_st*, i32, i64, i64, %struct.crypto_ex_data_st, i8* }
%struct.ossl_lib_ctx_st = type opaque
%struct.crypto_ex_data_st = type { %struct.ossl_lib_ctx_st*, %struct.stack_st_void* }
%struct.stack_st_void = type opaque

@methods_sockp = internal constant %struct.bio_method_st { i32 1285, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i32 (%struct.bio_st*, i8*, i64, i64*)* @bwrite_conv, i32 (%struct.bio_st*, i8*, i32)* @sock_write, i32 (%struct.bio_st*, i8*, i64, i64*)* @bread_conv, i32 (%struct.bio_st*, i8*, i32)* @sock_read, i32 (%struct.bio_st*, i8*)* @sock_puts, i32 (%struct.bio_st*, i8*, i32)* null, i64 (%struct.bio_st*, i32, i64, i8*)* @sock_ctrl, i32 (%struct.bio_st*)* @sock_new, i32 (%struct.bio_st*)* @sock_free, i64 (%struct.bio_st*, i32, i32 (%struct.bio_st*, i32, i32)*)* null }, align 8
@.str = private unnamed_addr constant [7 x i8] c"socket\00", align 1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define nonnull %struct.bio_method_st* @BIO_s_socket() local_unnamed_addr #0 {
entry:
  ret %struct.bio_method_st* @methods_sockp
}

; Function Attrs: noinline nounwind uwtable
define %struct.bio_st* @BIO_new_socket(i32 noundef %fd, i32 noundef %close_flag) local_unnamed_addr #1 {
entry:
  %call1 = tail call %struct.bio_st* @BIO_new(%struct.bio_method_st* noundef nonnull @methods_sockp) #7
  %cmp = icmp eq %struct.bio_st* %call1, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %conv = sext i32 %close_flag to i64
  %call2 = tail call i64 @BIO_int_ctrl(%struct.bio_st* noundef nonnull %call1, i32 noundef 104, i64 noundef %conv, i32 noundef %fd) #7
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  ret %struct.bio_st* %call1
}

declare %struct.bio_st* @BIO_new(%struct.bio_method_st* noundef) local_unnamed_addr #2

declare i64 @BIO_int_ctrl(%struct.bio_st* noundef, i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline nosync nounwind readonly uwtable willreturn
define i32 @BIO_sock_should_retry(i32 noundef %i) local_unnamed_addr #3 {
entry:
  %0 = add i32 %i, 1
  %1 = icmp ult i32 %0, 2
  br i1 %1, label %if.then, label %cleanup

if.then:                                          ; preds = %entry
  %call = tail call i32* @__errno_location() #8
  %2 = load i32, i32* %call, align 4, !tbaa !4
  %call2 = tail call i32 @BIO_sock_non_fatal_error(i32 noundef %2) #9
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.then
  %retval.0 = phi i32 [ %call2, %if.then ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
declare i32* @__errno_location() local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define i32 @BIO_sock_non_fatal_error(i32 noundef %err) local_unnamed_addr #0 {
entry:
  switch i32 %err, label %sw.epilog [
    i32 11, label %return
    i32 107, label %return
    i32 4, label %return
    i32 71, label %return
    i32 115, label %return
    i32 114, label %return
  ]

sw.epilog:                                        ; preds = %entry
  br label %return

return:                                           ; preds = %entry, %entry, %entry, %entry, %entry, %entry, %sw.epilog
  %retval.0 = phi i32 [ 0, %sw.epilog ], [ 1, %entry ], [ 1, %entry ], [ 1, %entry ], [ 1, %entry ], [ 1, %entry ], [ 1, %entry ]
  ret i32 %retval.0
}

declare i32 @bwrite_conv(%struct.bio_st* noundef, i8* noundef, i64 noundef, i64* noundef) #2

; Function Attrs: noinline nounwind uwtable
define internal i32 @sock_write(%struct.bio_st* noundef %b, i8* noundef %in, i32 noundef %inl) #1 {
entry:
  %call = tail call i32* @__errno_location() #8
  store i32 0, i32* %call, align 4, !tbaa !4
  %num = getelementptr inbounds %struct.bio_st, %struct.bio_st* %b, i64 0, i32 9
  %0 = load i32, i32* %num, align 8, !tbaa !8
  %conv = sext i32 %inl to i64
  %call1 = tail call i64 @write(i32 noundef %0, i8* noundef %in, i64 noundef %conv) #7
  %conv2 = trunc i64 %call1 to i32
  tail call void @BIO_clear_flags(%struct.bio_st* noundef %b, i32 noundef 15) #7
  %cmp = icmp slt i32 %conv2, 1
  br i1 %cmp, label %if.then, label %if.end6

if.then:                                          ; preds = %entry
  %call4 = tail call i32 @BIO_sock_should_retry(i32 noundef %conv2) #9
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %if.end6, label %if.then5

if.then5:                                         ; preds = %if.then
  tail call void @BIO_set_flags(%struct.bio_st* noundef nonnull %b, i32 noundef 10) #7
  br label %if.end6

if.end6:                                          ; preds = %if.then, %if.then5, %entry
  ret i32 %conv2
}

declare i32 @bread_conv(%struct.bio_st* noundef, i8* noundef, i64 noundef, i64* noundef) #2

; Function Attrs: noinline nounwind uwtable
define internal i32 @sock_read(%struct.bio_st* noundef %b, i8* noundef %out, i32 noundef %outl) #1 {
entry:
  %cmp.not = icmp eq i8* %out, null
  br i1 %cmp.not, label %if.end13, label %if.then

if.then:                                          ; preds = %entry
  %call = tail call i32* @__errno_location() #8
  store i32 0, i32* %call, align 4, !tbaa !4
  %num = getelementptr inbounds %struct.bio_st, %struct.bio_st* %b, i64 0, i32 9
  %0 = load i32, i32* %num, align 8, !tbaa !8
  %conv = sext i32 %outl to i64
  %call1 = tail call i64 @read(i32 noundef %0, i8* noundef nonnull %out, i64 noundef %conv) #7
  %conv2 = trunc i64 %call1 to i32
  tail call void @BIO_clear_flags(%struct.bio_st* noundef %b, i32 noundef 15) #7
  %cmp3 = icmp slt i32 %conv2, 1
  br i1 %cmp3, label %if.then5, label %if.end13

if.then5:                                         ; preds = %if.then
  %call6 = tail call i32 @BIO_sock_should_retry(i32 noundef %conv2) #9
  %tobool.not = icmp eq i32 %call6, 0
  br i1 %tobool.not, label %if.else, label %if.then7

if.then7:                                         ; preds = %if.then5
  tail call void @BIO_set_flags(%struct.bio_st* noundef nonnull %b, i32 noundef 9) #7
  br label %if.end13

if.else:                                          ; preds = %if.then5
  %cmp8 = icmp eq i32 %conv2, 0
  br i1 %cmp8, label %if.then10, label %if.end13

if.then10:                                        ; preds = %if.else
  %flags = getelementptr inbounds %struct.bio_st, %struct.bio_st* %b, i64 0, i32 7
  %1 = load i32, i32* %flags, align 8, !tbaa !13
  %or = or i32 %1, 2048
  store i32 %or, i32* %flags, align 8, !tbaa !13
  br label %if.end13

if.end13:                                         ; preds = %if.then, %if.else, %if.then10, %if.then7, %entry
  %ret.0 = phi i32 [ %conv2, %if.then7 ], [ 0, %if.then10 ], [ %conv2, %if.else ], [ %conv2, %if.then ], [ 0, %entry ]
  ret i32 %ret.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @sock_puts(%struct.bio_st* noundef %bp, i8* noundef %str) #1 {
entry:
  %call = tail call i64 @strlen(i8* noundef %str) #10
  %conv = trunc i64 %call to i32
  %call1 = tail call i32 @sock_write(%struct.bio_st* noundef %bp, i8* noundef %str, i32 noundef %conv) #9
  ret i32 %call1
}

; Function Attrs: noinline nounwind uwtable
define internal i64 @sock_ctrl(%struct.bio_st* noundef %b, i32 noundef %cmd, i64 noundef %num, i8* noundef %ptr) #1 {
entry:
  switch i32 %cmd, label %sw.default [
    i32 104, label %sw.bb
    i32 105, label %sw.bb2
    i32 8, label %sw.bb10
    i32 9, label %sw.bb13
    i32 12, label %sw.epilog
    i32 11, label %sw.epilog
    i32 2, label %sw.bb17
  ]

sw.bb:                                            ; preds = %entry
  %call = tail call i32 @sock_free(%struct.bio_st* noundef %b) #9
  %0 = bitcast i8* %ptr to i32*
  %1 = load i32, i32* %0, align 4, !tbaa !4
  %num1 = getelementptr inbounds %struct.bio_st, %struct.bio_st* %b, i64 0, i32 9
  store i32 %1, i32* %num1, align 8, !tbaa !8
  %conv = trunc i64 %num to i32
  %shutdown = getelementptr inbounds %struct.bio_st, %struct.bio_st* %b, i64 0, i32 6
  store i32 %conv, i32* %shutdown, align 4, !tbaa !14
  %init = getelementptr inbounds %struct.bio_st, %struct.bio_st* %b, i64 0, i32 5
  store i32 1, i32* %init, align 8, !tbaa !15
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  %init3 = getelementptr inbounds %struct.bio_st, %struct.bio_st* %b, i64 0, i32 5
  %2 = load i32, i32* %init3, align 8, !tbaa !15
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %sw.epilog, label %if.then

if.then:                                          ; preds = %sw.bb2
  %cmp.not = icmp eq i8* %ptr, null
  br i1 %cmp.not, label %if.end, label %if.then5

if.then5:                                         ; preds = %if.then
  %3 = bitcast i8* %ptr to i32*
  %num6 = getelementptr inbounds %struct.bio_st, %struct.bio_st* %b, i64 0, i32 9
  %4 = load i32, i32* %num6, align 8, !tbaa !8
  store i32 %4, i32* %3, align 4, !tbaa !4
  br label %if.end

if.end:                                           ; preds = %if.then5, %if.then
  %num7 = getelementptr inbounds %struct.bio_st, %struct.bio_st* %b, i64 0, i32 9
  %5 = load i32, i32* %num7, align 8, !tbaa !8
  %conv8 = sext i32 %5 to i64
  br label %sw.epilog

sw.bb10:                                          ; preds = %entry
  %shutdown11 = getelementptr inbounds %struct.bio_st, %struct.bio_st* %b, i64 0, i32 6
  %6 = load i32, i32* %shutdown11, align 4, !tbaa !14
  %conv12 = sext i32 %6 to i64
  br label %sw.epilog

sw.bb13:                                          ; preds = %entry
  %conv14 = trunc i64 %num to i32
  %shutdown15 = getelementptr inbounds %struct.bio_st, %struct.bio_st* %b, i64 0, i32 6
  store i32 %conv14, i32* %shutdown15, align 4, !tbaa !14
  br label %sw.epilog

sw.bb17:                                          ; preds = %entry
  %flags = getelementptr inbounds %struct.bio_st, %struct.bio_st* %b, i64 0, i32 7
  %7 = load i32, i32* %flags, align 8, !tbaa !13
  %and = lshr i32 %7, 11
  %and.lobit = and i32 %and, 1
  %8 = zext i32 %and.lobit to i64
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %sw.epilog

sw.epilog:                                        ; preds = %entry, %entry, %sw.bb2, %if.end, %sw.default, %sw.bb17, %sw.bb13, %sw.bb10, %sw.bb
  %ret.0 = phi i64 [ 0, %sw.default ], [ %8, %sw.bb17 ], [ 1, %sw.bb13 ], [ %conv12, %sw.bb10 ], [ %conv8, %if.end ], [ 1, %sw.bb ], [ -1, %sw.bb2 ], [ 1, %entry ], [ 1, %entry ]
  ret i64 %ret.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define internal i32 @sock_new(%struct.bio_st* nocapture noundef writeonly %bi) #5 {
entry:
  %init = getelementptr inbounds %struct.bio_st, %struct.bio_st* %bi, i64 0, i32 5
  store i32 0, i32* %init, align 8, !tbaa !15
  %num = getelementptr inbounds %struct.bio_st, %struct.bio_st* %bi, i64 0, i32 9
  store i32 0, i32* %num, align 8, !tbaa !8
  %ptr = getelementptr inbounds %struct.bio_st, %struct.bio_st* %bi, i64 0, i32 10
  store i8* null, i8** %ptr, align 8, !tbaa !16
  %flags = getelementptr inbounds %struct.bio_st, %struct.bio_st* %bi, i64 0, i32 7
  store i32 0, i32* %flags, align 8, !tbaa !13
  ret i32 1
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @sock_free(%struct.bio_st* noundef %a) #1 {
entry:
  %cmp = icmp eq %struct.bio_st* %a, null
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %shutdown = getelementptr inbounds %struct.bio_st, %struct.bio_st* %a, i64 0, i32 6
  %0 = load i32, i32* %shutdown, align 4, !tbaa !14
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %return, label %if.then1

if.then1:                                         ; preds = %if.end
  %init = getelementptr inbounds %struct.bio_st, %struct.bio_st* %a, i64 0, i32 5
  %1 = load i32, i32* %init, align 8, !tbaa !15
  %tobool2.not = icmp eq i32 %1, 0
  br i1 %tobool2.not, label %if.end4, label %if.then3

if.then3:                                         ; preds = %if.then1
  %num = getelementptr inbounds %struct.bio_st, %struct.bio_st* %a, i64 0, i32 9
  %2 = load i32, i32* %num, align 8, !tbaa !8
  %call = tail call i32 @BIO_closesocket(i32 noundef %2) #7
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %if.then1
  store i32 0, i32* %init, align 8, !tbaa !15
  %flags = getelementptr inbounds %struct.bio_st, %struct.bio_st* %a, i64 0, i32 7
  store i32 0, i32* %flags, align 8, !tbaa !13
  br label %return

return:                                           ; preds = %if.end, %if.end4, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ 1, %if.end4 ], [ 1, %if.end ]
  ret i32 %retval.0
}

declare i64 @write(i32 noundef, i8* noundef, i64 noundef) local_unnamed_addr #2

declare void @BIO_clear_flags(%struct.bio_st* noundef, i32 noundef) local_unnamed_addr #2

declare void @BIO_set_flags(%struct.bio_st* noundef, i32 noundef) local_unnamed_addr #2

declare i64 @read(i32 noundef, i8* noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare i64 @strlen(i8* noundef) local_unnamed_addr #6

declare i32 @BIO_closesocket(i32 noundef) local_unnamed_addr #2

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline nosync nounwind readonly uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nosync nounwind readnone willreturn "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nobuiltin nounwind "no-builtins" }
attributes #8 = { nobuiltin nounwind readnone willreturn "no-builtins" }
attributes #9 = { nobuiltin "no-builtins" }
attributes #10 = { nobuiltin nounwind readonly willreturn "no-builtins" }

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
!8 = !{!9, !5, i64 56}
!9 = !{!"bio_st", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !5, i64 40, !5, i64 44, !5, i64 48, !5, i64 52, !5, i64 56, !10, i64 64, !10, i64 72, !10, i64 80, !6, i64 88, !11, i64 96, !11, i64 104, !12, i64 112, !10, i64 128}
!10 = !{!"any pointer", !6, i64 0}
!11 = !{!"long", !6, i64 0}
!12 = !{!"crypto_ex_data_st", !10, i64 0, !10, i64 8}
!13 = !{!9, !5, i64 48}
!14 = !{!9, !5, i64 44}
!15 = !{!9, !5, i64 40}
!16 = !{!9, !10, i64 64}
