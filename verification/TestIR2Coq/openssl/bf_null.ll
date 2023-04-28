; ModuleID = 'crypto/bio/bf_null.c'
source_filename = "crypto/bio/bf_null.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bio_method_st = type { i32, i8*, i32 (%struct.bio_st*, i8*, i64, i64*)*, i32 (%struct.bio_st*, i8*, i32)*, i32 (%struct.bio_st*, i8*, i64, i64*)*, i32 (%struct.bio_st*, i8*, i32)*, i32 (%struct.bio_st*, i8*)*, i32 (%struct.bio_st*, i8*, i32)*, i64 (%struct.bio_st*, i32, i64, i8*)*, i32 (%struct.bio_st*)*, i32 (%struct.bio_st*)*, i64 (%struct.bio_st*, i32, i32 (%struct.bio_st*, i32, i32)*)* }
%struct.bio_st = type { %struct.ossl_lib_ctx_st*, %struct.bio_method_st*, i64 (%struct.bio_st*, i32, i8*, i32, i64, i64)*, i64 (%struct.bio_st*, i32, i8*, i64, i32, i64, i32, i64*)*, i8*, i32, i32, i32, i32, i32, i8*, %struct.bio_st*, %struct.bio_st*, i32, i64, i64, %struct.crypto_ex_data_st, i8* }
%struct.ossl_lib_ctx_st = type opaque
%struct.crypto_ex_data_st = type { %struct.ossl_lib_ctx_st*, %struct.stack_st_void* }
%struct.stack_st_void = type opaque

@methods_nullf = internal constant %struct.bio_method_st { i32 529, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0), i32 (%struct.bio_st*, i8*, i64, i64*)* @bwrite_conv, i32 (%struct.bio_st*, i8*, i32)* @nullf_write, i32 (%struct.bio_st*, i8*, i64, i64*)* @bread_conv, i32 (%struct.bio_st*, i8*, i32)* @nullf_read, i32 (%struct.bio_st*, i8*)* @nullf_puts, i32 (%struct.bio_st*, i8*, i32)* @nullf_gets, i64 (%struct.bio_st*, i32, i64, i8*)* @nullf_ctrl, i32 (%struct.bio_st*)* null, i32 (%struct.bio_st*)* null, i64 (%struct.bio_st*, i32, i32 (%struct.bio_st*, i32, i32)*)* @nullf_callback_ctrl }, align 8
@.str = private unnamed_addr constant [12 x i8] c"NULL filter\00", align 1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define nonnull %struct.bio_method_st* @BIO_f_null() local_unnamed_addr #0 {
entry:
  ret %struct.bio_method_st* @methods_nullf
}

declare i32 @bwrite_conv(%struct.bio_st* noundef, i8* noundef, i64 noundef, i64* noundef) #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @nullf_write(%struct.bio_st* noundef %b, i8* noundef %in, i32 noundef %inl) #2 {
entry:
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
  %call = tail call i32 @BIO_write(%struct.bio_st* noundef nonnull %0, i8* noundef nonnull %in, i32 noundef %inl) #3
  tail call void @BIO_clear_flags(%struct.bio_st* noundef nonnull %b, i32 noundef 15) #3
  tail call void @BIO_copy_next_retry(%struct.bio_st* noundef nonnull %b) #3
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry, %if.end4
  %retval.0 = phi i32 [ %call, %if.end4 ], [ 0, %entry ], [ 0, %if.end ]
  ret i32 %retval.0
}

declare i32 @bread_conv(%struct.bio_st* noundef, i8* noundef, i64 noundef, i64* noundef) #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @nullf_read(%struct.bio_st* noundef %b, i8* noundef %out, i32 noundef %outl) #2 {
entry:
  %cmp = icmp eq i8* %out, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %next_bio = getelementptr inbounds %struct.bio_st, %struct.bio_st* %b, i64 0, i32 11
  %0 = load %struct.bio_st*, %struct.bio_st** %next_bio, align 8, !tbaa !4
  %cmp1 = icmp eq %struct.bio_st* %0, null
  br i1 %cmp1, label %cleanup, label %if.end3

if.end3:                                          ; preds = %if.end
  %call = tail call i32 @BIO_read(%struct.bio_st* noundef nonnull %0, i8* noundef nonnull %out, i32 noundef %outl) #3
  tail call void @BIO_clear_flags(%struct.bio_st* noundef nonnull %b, i32 noundef 15) #3
  tail call void @BIO_copy_next_retry(%struct.bio_st* noundef nonnull %b) #3
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry, %if.end3
  %retval.0 = phi i32 [ %call, %if.end3 ], [ 0, %entry ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @nullf_puts(%struct.bio_st* nocapture noundef readonly %bp, i8* noundef %str) #2 {
entry:
  %next_bio = getelementptr inbounds %struct.bio_st, %struct.bio_st* %bp, i64 0, i32 11
  %0 = load %struct.bio_st*, %struct.bio_st** %next_bio, align 8, !tbaa !4
  %cmp = icmp eq %struct.bio_st* %0, null
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %call = tail call i32 @BIO_puts(%struct.bio_st* noundef nonnull %0, i8* noundef %str) #3
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %call, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @nullf_gets(%struct.bio_st* nocapture noundef readonly %bp, i8* noundef %buf, i32 noundef %size) #2 {
entry:
  %next_bio = getelementptr inbounds %struct.bio_st, %struct.bio_st* %bp, i64 0, i32 11
  %0 = load %struct.bio_st*, %struct.bio_st** %next_bio, align 8, !tbaa !4
  %cmp = icmp eq %struct.bio_st* %0, null
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %call = tail call i32 @BIO_gets(%struct.bio_st* noundef nonnull %0, i8* noundef %buf, i32 noundef %size) #3
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %call, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i64 @nullf_ctrl(%struct.bio_st* noundef %b, i32 noundef %cmd, i64 noundef %num, i8* noundef %ptr) #2 {
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
  tail call void @BIO_clear_flags(%struct.bio_st* noundef nonnull %b, i32 noundef 15) #3
  %1 = load %struct.bio_st*, %struct.bio_st** %next_bio, align 8, !tbaa !4
  %call = tail call i64 @BIO_ctrl(%struct.bio_st* noundef %1, i32 noundef 101, i64 noundef %num, i8* noundef %ptr) #3
  tail call void @BIO_copy_next_retry(%struct.bio_st* noundef nonnull %b) #3
  br label %cleanup

sw.default:                                       ; preds = %if.end
  %call4 = tail call i64 @BIO_ctrl(%struct.bio_st* noundef nonnull %0, i32 noundef %cmd, i64 noundef %num, i8* noundef %ptr) #3
  br label %cleanup

cleanup:                                          ; preds = %sw.bb, %sw.default, %if.end, %entry
  %retval.0 = phi i64 [ 0, %entry ], [ %call4, %sw.default ], [ %call, %sw.bb ], [ 0, %if.end ]
  ret i64 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i64 @nullf_callback_ctrl(%struct.bio_st* nocapture noundef readonly %b, i32 noundef %cmd, i32 (%struct.bio_st*, i32, i32)* noundef %fp) #2 {
entry:
  %next_bio = getelementptr inbounds %struct.bio_st, %struct.bio_st* %b, i64 0, i32 11
  %0 = load %struct.bio_st*, %struct.bio_st** %next_bio, align 8, !tbaa !4
  %cmp = icmp eq %struct.bio_st* %0, null
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %call = tail call i64 @BIO_callback_ctrl(%struct.bio_st* noundef nonnull %0, i32 noundef %cmd, i32 (%struct.bio_st*, i32, i32)* noundef %fp) #3
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i64 [ %call, %if.end ], [ 0, %entry ]
  ret i64 %retval.0
}

declare i32 @BIO_write(%struct.bio_st* noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

declare void @BIO_clear_flags(%struct.bio_st* noundef, i32 noundef) local_unnamed_addr #1

declare void @BIO_copy_next_retry(%struct.bio_st* noundef) local_unnamed_addr #1

declare i32 @BIO_read(%struct.bio_st* noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

declare i32 @BIO_puts(%struct.bio_st* noundef, i8* noundef) local_unnamed_addr #1

declare i32 @BIO_gets(%struct.bio_st* noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

declare i64 @BIO_ctrl(%struct.bio_st* noundef, i32 noundef, i64 noundef, i8* noundef) local_unnamed_addr #1

declare i64 @BIO_callback_ctrl(%struct.bio_st* noundef, i32 noundef, i32 (%struct.bio_st*, i32, i32)* noundef) local_unnamed_addr #1

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nobuiltin nounwind "no-builtins" }

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
