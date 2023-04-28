; ModuleID = 'crypto/bio/bf_nbio.c'
source_filename = "crypto/bio/bf_nbio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bio_method_st = type { i32, i8*, i32 (%struct.bio_st*, i8*, i64, i64*)*, i32 (%struct.bio_st*, i8*, i32)*, i32 (%struct.bio_st*, i8*, i64, i64*)*, i32 (%struct.bio_st*, i8*, i32)*, i32 (%struct.bio_st*, i8*)*, i32 (%struct.bio_st*, i8*, i32)*, i64 (%struct.bio_st*, i32, i64, i8*)*, i32 (%struct.bio_st*)*, i32 (%struct.bio_st*)*, i64 (%struct.bio_st*, i32, i32 (%struct.bio_st*, i32, i32)*)* }
%struct.bio_st = type { %struct.ossl_lib_ctx_st*, %struct.bio_method_st*, i64 (%struct.bio_st*, i32, i8*, i32, i64, i64)*, i64 (%struct.bio_st*, i32, i8*, i64, i32, i64, i32, i64*)*, i8*, i32, i32, i32, i32, i32, i8*, %struct.bio_st*, %struct.bio_st*, i32, i64, i64, %struct.crypto_ex_data_st, i8* }
%struct.ossl_lib_ctx_st = type opaque
%struct.crypto_ex_data_st = type { %struct.ossl_lib_ctx_st*, %struct.stack_st_void* }
%struct.stack_st_void = type opaque
%struct.nbio_test_st = type { i32, i32 }

@methods_nbiof = internal constant %struct.bio_method_st { i32 528, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i32 0, i32 0), i32 (%struct.bio_st*, i8*, i64, i64*)* @bwrite_conv, i32 (%struct.bio_st*, i8*, i32)* @nbiof_write, i32 (%struct.bio_st*, i8*, i64, i64*)* @bread_conv, i32 (%struct.bio_st*, i8*, i32)* @nbiof_read, i32 (%struct.bio_st*, i8*)* @nbiof_puts, i32 (%struct.bio_st*, i8*, i32)* @nbiof_gets, i64 (%struct.bio_st*, i32, i64, i8*)* @nbiof_ctrl, i32 (%struct.bio_st*)* @nbiof_new, i32 (%struct.bio_st*)* @nbiof_free, i64 (%struct.bio_st*, i32, i32 (%struct.bio_st*, i32, i32)*)* @nbiof_callback_ctrl }, align 8
@.str = private unnamed_addr constant [28 x i8] c"non-blocking IO test filter\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"crypto/bio/bf_nbio.c\00", align 1
@__func__.nbiof_new = private unnamed_addr constant [10 x i8] c"nbiof_new\00", align 1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define nonnull %struct.bio_method_st* @BIO_f_nbio_test() local_unnamed_addr #0 {
entry:
  ret %struct.bio_method_st* @methods_nbiof
}

declare i32 @bwrite_conv(%struct.bio_st* noundef, i8* noundef, i64 noundef, i64* noundef) #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @nbiof_write(%struct.bio_st* noundef %b, i8* noundef %in, i32 noundef %inl) #2 {
entry:
  %n = alloca i8, align 1
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %n) #4
  %cmp = icmp eq i8* %in, null
  %cmp1 = icmp slt i32 %inl, 1
  %or.cond = or i1 %cmp, %cmp1
  br i1 %or.cond, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %next_bio = getelementptr inbounds %struct.bio_st, %struct.bio_st* %b, i64 0, i32 11
  %0 = load %struct.bio_st*, %struct.bio_st** %next_bio, align 8, !tbaa !4
  %cmp2 = icmp eq %struct.bio_st* %0, null
  br i1 %cmp2, label %cleanup, label %if.end4

if.end4:                                          ; preds = %if.end
  %ptr = getelementptr inbounds %struct.bio_st, %struct.bio_st* %b, i64 0, i32 10
  %1 = bitcast i8** %ptr to %struct.nbio_test_st**
  %2 = load %struct.nbio_test_st*, %struct.nbio_test_st** %1, align 8, !tbaa !12
  tail call void @BIO_clear_flags(%struct.bio_st* noundef nonnull %b, i32 noundef 15) #5
  %lwn = getelementptr inbounds %struct.nbio_test_st, %struct.nbio_test_st* %2, i64 0, i32 1
  %3 = load i32, i32* %lwn, align 4, !tbaa !13
  %cmp5 = icmp sgt i32 %3, 0
  br i1 %cmp5, label %if.end12.thread, label %if.else

if.end12.thread:                                  ; preds = %if.end4
  store i32 0, i32* %lwn, align 4, !tbaa !13
  %cmp1351 = icmp ult i32 %3, %inl
  %spec.select52 = select i1 %cmp1351, i32 %3, i32 %inl
  br label %if.else20

if.else:                                          ; preds = %if.end4
  %call = call i32 @RAND_priv_bytes(i8* noundef nonnull %n, i32 noundef 1) #5
  %cmp9 = icmp slt i32 %call, 1
  br i1 %cmp9, label %cleanup, label %if.end12

if.end12:                                         ; preds = %if.else
  %4 = load i8, i8* %n, align 1, !tbaa !15
  %5 = and i8 %4, 7
  %and = zext i8 %5 to i32
  %cmp13 = icmp ult i32 %and, %inl
  %spec.select = select i1 %cmp13, i32 %and, i32 %inl
  %cmp17 = icmp eq i8 %5, 0
  br i1 %cmp17, label %if.then19, label %if.else20

if.then19:                                        ; preds = %if.end12
  call void @BIO_set_flags(%struct.bio_st* noundef nonnull %b, i32 noundef 10) #5
  br label %cleanup

if.else20:                                        ; preds = %if.end12.thread, %if.end12
  %spec.select54 = phi i32 [ %spec.select52, %if.end12.thread ], [ %spec.select, %if.end12 ]
  %6 = load %struct.bio_st*, %struct.bio_st** %next_bio, align 8, !tbaa !4
  %call22 = call i32 @BIO_write(%struct.bio_st* noundef %6, i8* noundef nonnull %in, i32 noundef %spec.select54) #5
  %cmp23 = icmp slt i32 %call22, 0
  br i1 %cmp23, label %if.then25, label %cleanup

if.then25:                                        ; preds = %if.else20
  call void @BIO_copy_next_retry(%struct.bio_st* noundef nonnull %b) #5
  store i32 %spec.select54, i32* %lwn, align 4, !tbaa !13
  br label %cleanup

cleanup:                                          ; preds = %if.then19, %if.then25, %if.else20, %if.else, %if.end, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ 0, %if.end ], [ -1, %if.else ], [ -1, %if.then19 ], [ %call22, %if.then25 ], [ %call22, %if.else20 ]
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %n) #4
  ret i32 %retval.0
}

declare i32 @bread_conv(%struct.bio_st* noundef, i8* noundef, i64 noundef, i64* noundef) #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @nbiof_read(%struct.bio_st* noundef %b, i8* noundef %out, i32 noundef %outl) #2 {
entry:
  %n = alloca i8, align 1
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %n) #4
  %cmp = icmp eq i8* %out, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %next_bio = getelementptr inbounds %struct.bio_st, %struct.bio_st* %b, i64 0, i32 11
  %0 = load %struct.bio_st*, %struct.bio_st** %next_bio, align 8, !tbaa !4
  %cmp1 = icmp eq %struct.bio_st* %0, null
  br i1 %cmp1, label %cleanup, label %if.end3

if.end3:                                          ; preds = %if.end
  tail call void @BIO_clear_flags(%struct.bio_st* noundef nonnull %b, i32 noundef 15) #5
  %call = call i32 @RAND_priv_bytes(i8* noundef nonnull %n, i32 noundef 1) #5
  %cmp4 = icmp slt i32 %call, 1
  br i1 %cmp4, label %cleanup, label %if.end6

if.end6:                                          ; preds = %if.end3
  %1 = load i8, i8* %n, align 1, !tbaa !15
  %2 = and i8 %1, 7
  %and = zext i8 %2 to i32
  %cmp11 = icmp eq i8 %2, 0
  br i1 %cmp11, label %if.then13, label %if.else

if.then13:                                        ; preds = %if.end6
  call void @BIO_set_flags(%struct.bio_st* noundef nonnull %b, i32 noundef 9) #5
  br label %cleanup

if.else:                                          ; preds = %if.end6
  %cmp7 = icmp slt i32 %and, %outl
  %spec.select = select i1 %cmp7, i32 %and, i32 %outl
  %3 = load %struct.bio_st*, %struct.bio_st** %next_bio, align 8, !tbaa !4
  %call15 = call i32 @BIO_read(%struct.bio_st* noundef %3, i8* noundef nonnull %out, i32 noundef %spec.select) #5
  %cmp16 = icmp slt i32 %call15, 0
  br i1 %cmp16, label %if.then18, label %cleanup

if.then18:                                        ; preds = %if.else
  call void @BIO_copy_next_retry(%struct.bio_st* noundef nonnull %b) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then13, %if.then18, %if.else, %if.end3, %if.end, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ 0, %if.end ], [ -1, %if.end3 ], [ -1, %if.then13 ], [ %call15, %if.then18 ], [ %call15, %if.else ]
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %n) #4
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @nbiof_puts(%struct.bio_st* nocapture noundef readonly %bp, i8* noundef %str) #2 {
entry:
  %next_bio = getelementptr inbounds %struct.bio_st, %struct.bio_st* %bp, i64 0, i32 11
  %0 = load %struct.bio_st*, %struct.bio_st** %next_bio, align 8, !tbaa !4
  %cmp = icmp eq %struct.bio_st* %0, null
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %call = tail call i32 @BIO_puts(%struct.bio_st* noundef nonnull %0, i8* noundef %str) #5
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %call, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @nbiof_gets(%struct.bio_st* nocapture noundef readonly %bp, i8* noundef %buf, i32 noundef %size) #2 {
entry:
  %next_bio = getelementptr inbounds %struct.bio_st, %struct.bio_st* %bp, i64 0, i32 11
  %0 = load %struct.bio_st*, %struct.bio_st** %next_bio, align 8, !tbaa !4
  %cmp = icmp eq %struct.bio_st* %0, null
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %call = tail call i32 @BIO_gets(%struct.bio_st* noundef nonnull %0, i8* noundef %buf, i32 noundef %size) #5
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %call, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i64 @nbiof_ctrl(%struct.bio_st* noundef %b, i32 noundef %cmd, i64 noundef %num, i8* noundef %ptr) #2 {
entry:
  %next_bio = getelementptr inbounds %struct.bio_st, %struct.bio_st* %b, i64 0, i32 11
  %0 = load %struct.bio_st*, %struct.bio_st** %next_bio, align 8, !tbaa !4
  %cmp = icmp eq %struct.bio_st* %0, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  switch i32 %cmd, label %sw.default [
    i32 101, label %sw.bb
    i32 12, label %cleanup
  ]

sw.bb:                                            ; preds = %if.end
  tail call void @BIO_clear_flags(%struct.bio_st* noundef nonnull %b, i32 noundef 15) #5
  %1 = load %struct.bio_st*, %struct.bio_st** %next_bio, align 8, !tbaa !4
  %call = tail call i64 @BIO_ctrl(%struct.bio_st* noundef %1, i32 noundef 101, i64 noundef %num, i8* noundef %ptr) #5
  tail call void @BIO_copy_next_retry(%struct.bio_st* noundef nonnull %b) #5
  br label %cleanup

sw.default:                                       ; preds = %if.end
  %call4 = tail call i64 @BIO_ctrl(%struct.bio_st* noundef nonnull %0, i32 noundef %cmd, i64 noundef %num, i8* noundef %ptr) #5
  br label %cleanup

cleanup:                                          ; preds = %sw.bb, %sw.default, %if.end, %entry
  %retval.0 = phi i64 [ 0, %entry ], [ %call4, %sw.default ], [ %call, %sw.bb ], [ 0, %if.end ]
  ret i64 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @nbiof_new(%struct.bio_st* nocapture noundef writeonly %bi) #2 {
entry:
  %call = tail call i8* @CRYPTO_zalloc(i64 noundef 8, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 noundef 58) #5
  %cmp = icmp eq i8* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 noundef 59, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.nbiof_new, i64 0, i64 0)) #5
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 32, i32 noundef 786688, i8* noundef null) #5
  br label %cleanup

if.end:                                           ; preds = %entry
  %lrn = bitcast i8* %call to i32*
  store i32 -1, i32* %lrn, align 4, !tbaa !16
  %lwn = getelementptr inbounds i8, i8* %call, i64 4
  %0 = bitcast i8* %lwn to i32*
  store i32 -1, i32* %0, align 4, !tbaa !13
  %ptr = getelementptr inbounds %struct.bio_st, %struct.bio_st* %bi, i64 0, i32 10
  store i8* %call, i8** %ptr, align 8, !tbaa !12
  %init = getelementptr inbounds %struct.bio_st, %struct.bio_st* %bi, i64 0, i32 5
  store i32 1, i32* %init, align 8, !tbaa !17
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 1, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @nbiof_free(%struct.bio_st* noundef %a) #2 {
entry:
  %cmp = icmp eq %struct.bio_st* %a, null
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %ptr = getelementptr inbounds %struct.bio_st, %struct.bio_st* %a, i64 0, i32 10
  %0 = load i8*, i8** %ptr, align 8, !tbaa !12
  tail call void @CRYPTO_free(i8* noundef %0, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 noundef 73) #5
  store i8* null, i8** %ptr, align 8, !tbaa !12
  %init = getelementptr inbounds %struct.bio_st, %struct.bio_st* %a, i64 0, i32 5
  store i32 0, i32* %init, align 8, !tbaa !17
  %flags = getelementptr inbounds %struct.bio_st, %struct.bio_st* %a, i64 0, i32 7
  store i32 0, i32* %flags, align 8, !tbaa !18
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i64 @nbiof_callback_ctrl(%struct.bio_st* nocapture noundef readonly %b, i32 noundef %cmd, i32 (%struct.bio_st*, i32, i32)* noundef %fp) #2 {
entry:
  %next_bio = getelementptr inbounds %struct.bio_st, %struct.bio_st* %b, i64 0, i32 11
  %0 = load %struct.bio_st*, %struct.bio_st** %next_bio, align 8, !tbaa !4
  %cmp = icmp eq %struct.bio_st* %0, null
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %call = tail call i64 @BIO_callback_ctrl(%struct.bio_st* noundef nonnull %0, i32 noundef %cmd, i32 (%struct.bio_st*, i32, i32)* noundef %fp) #5
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i64 [ %call, %if.end ], [ 0, %entry ]
  ret i64 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #3

declare void @BIO_clear_flags(%struct.bio_st* noundef, i32 noundef) local_unnamed_addr #1

declare i32 @RAND_priv_bytes(i8* noundef, i32 noundef) local_unnamed_addr #1

declare void @BIO_set_flags(%struct.bio_st* noundef, i32 noundef) local_unnamed_addr #1

declare i32 @BIO_write(%struct.bio_st* noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

declare void @BIO_copy_next_retry(%struct.bio_st* noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #3

declare i32 @BIO_read(%struct.bio_st* noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

declare i32 @BIO_puts(%struct.bio_st* noundef, i8* noundef) local_unnamed_addr #1

declare i32 @BIO_gets(%struct.bio_st* noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

declare i64 @BIO_ctrl(%struct.bio_st* noundef, i32 noundef, i64 noundef, i8* noundef) local_unnamed_addr #1

declare i8* @CRYPTO_zalloc(i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

declare void @ERR_new() local_unnamed_addr #1

declare void @ERR_set_debug(i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #1

declare void @ERR_set_error(i32 noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #1

declare void @CRYPTO_free(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

declare i64 @BIO_callback_ctrl(%struct.bio_st* noundef, i32 noundef, i32 (%struct.bio_st*, i32, i32)* noundef) local_unnamed_addr #1

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #4 = { nounwind }
attributes #5 = { nobuiltin nounwind "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{!"clang version 14.0.0"}
!4 = !{!5, !6, i64 72}
!5 = !{!"bio_st", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !9, i64 40, !9, i64 44, !9, i64 48, !9, i64 52, !9, i64 56, !6, i64 64, !6, i64 72, !6, i64 80, !7, i64 88, !10, i64 96, !10, i64 104, !11, i64 112, !6, i64 128}
!6 = !{!"any pointer", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!"int", !7, i64 0}
!10 = !{!"long", !7, i64 0}
!11 = !{!"crypto_ex_data_st", !6, i64 0, !6, i64 8}
!12 = !{!5, !6, i64 64}
!13 = !{!14, !9, i64 4}
!14 = !{!"nbio_test_st", !9, i64 0, !9, i64 4}
!15 = !{!7, !7, i64 0}
!16 = !{!14, !9, i64 0}
!17 = !{!5, !9, i64 40}
!18 = !{!5, !9, i64 48}
