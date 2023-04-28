; ModuleID = 'crypto/asn1/tasn_scn.c'
source_filename = "crypto/asn1/tasn_scn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.asn1_sctx_st = type { %struct.ASN1_ITEM_st*, %struct.ASN1_TEMPLATE_st*, i64, i32, i32, i8*, i8*, i32, %struct.ASN1_VALUE_st**, i32 (%struct.asn1_sctx_st*)*, i8* }
%struct.ASN1_ITEM_st = type { i8, i64, %struct.ASN1_TEMPLATE_st*, i64, i8*, i64, i8* }
%struct.ASN1_TEMPLATE_st = type { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* }
%struct.ASN1_VALUE_st = type opaque

@.str = private unnamed_addr constant [23 x i8] c"crypto/asn1/tasn_scn.c\00", align 1
@__func__.ASN1_SCTX_new = private unnamed_addr constant [14 x i8] c"ASN1_SCTX_new\00", align 1

; Function Attrs: noinline nounwind uwtable
define %struct.asn1_sctx_st* @ASN1_SCTX_new(i32 (%struct.asn1_sctx_st*)* noundef %scan_cb) local_unnamed_addr #0 {
entry:
  %call = tail call i8* @CRYPTO_zalloc(i64 noundef 80, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 27) #4
  %cmp = icmp eq i8* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #4
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 30, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.ASN1_SCTX_new, i64 0, i64 0)) #4
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 13, i32 noundef 786688, i8* noundef null) #4
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = bitcast i8* %call to %struct.asn1_sctx_st*
  %scan_cb1 = getelementptr inbounds i8, i8* %call, i64 64
  %1 = bitcast i8* %scan_cb1 to i32 (%struct.asn1_sctx_st*)**
  store i32 (%struct.asn1_sctx_st*)* %scan_cb, i32 (%struct.asn1_sctx_st*)** %1, align 8, !tbaa !4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi %struct.asn1_sctx_st* [ null, %if.then ], [ %0, %if.end ]
  ret %struct.asn1_sctx_st* %retval.0
}

declare i8* @CRYPTO_zalloc(i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

declare void @ERR_new() local_unnamed_addr #1

declare void @ERR_set_debug(i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #1

declare void @ERR_set_error(i32 noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define void @ASN1_SCTX_free(%struct.asn1_sctx_st* noundef %p) local_unnamed_addr #0 {
entry:
  %0 = bitcast %struct.asn1_sctx_st* %p to i8*
  tail call void @CRYPTO_free(i8* noundef %0, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 39) #4
  ret void
}

declare void @CRYPTO_free(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define %struct.ASN1_ITEM_st* @ASN1_SCTX_get_item(%struct.asn1_sctx_st* nocapture noundef readonly %p) local_unnamed_addr #2 {
entry:
  %it = getelementptr inbounds %struct.asn1_sctx_st, %struct.asn1_sctx_st* %p, i64 0, i32 0
  %0 = load %struct.ASN1_ITEM_st*, %struct.ASN1_ITEM_st** %it, align 8, !tbaa !11
  ret %struct.ASN1_ITEM_st* %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define %struct.ASN1_TEMPLATE_st* @ASN1_SCTX_get_template(%struct.asn1_sctx_st* nocapture noundef readonly %p) local_unnamed_addr #2 {
entry:
  %tt = getelementptr inbounds %struct.asn1_sctx_st, %struct.asn1_sctx_st* %p, i64 0, i32 1
  %0 = load %struct.ASN1_TEMPLATE_st*, %struct.ASN1_TEMPLATE_st** %tt, align 8, !tbaa !12
  ret %struct.ASN1_TEMPLATE_st* %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define i64 @ASN1_SCTX_get_flags(%struct.asn1_sctx_st* nocapture noundef readonly %p) local_unnamed_addr #2 {
entry:
  %flags = getelementptr inbounds %struct.asn1_sctx_st, %struct.asn1_sctx_st* %p, i64 0, i32 2
  %0 = load i64, i64* %flags, align 8, !tbaa !13
  ret i64 %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define void @ASN1_SCTX_set_app_data(%struct.asn1_sctx_st* nocapture noundef writeonly %p, i8* noundef %data) local_unnamed_addr #3 {
entry:
  %app_data = getelementptr inbounds %struct.asn1_sctx_st, %struct.asn1_sctx_st* %p, i64 0, i32 10
  store i8* %data, i8** %app_data, align 8, !tbaa !14
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define i8* @ASN1_SCTX_get_app_data(%struct.asn1_sctx_st* nocapture noundef readonly %p) local_unnamed_addr #2 {
entry:
  %app_data = getelementptr inbounds %struct.asn1_sctx_st, %struct.asn1_sctx_st* %p, i64 0, i32 10
  %0 = load i8*, i8** %app_data, align 8, !tbaa !14
  ret i8* %0
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nobuiltin nounwind "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{!"clang version 14.0.0"}
!4 = !{!5, !6, i64 64}
!5 = !{!"asn1_sctx_st", !6, i64 0, !6, i64 8, !9, i64 16, !10, i64 24, !10, i64 28, !6, i64 32, !6, i64 40, !10, i64 48, !6, i64 56, !6, i64 64, !6, i64 72}
!6 = !{!"any pointer", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!"long", !7, i64 0}
!10 = !{!"int", !7, i64 0}
!11 = !{!5, !6, i64 0}
!12 = !{!5, !6, i64 8}
!13 = !{!5, !9, i64 16}
!14 = !{!5, !6, i64 72}
