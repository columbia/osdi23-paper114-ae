; ModuleID = 'crypto/x509/x509_meth.c'
source_filename = "crypto/x509/x509_meth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.x509_lookup_method_st = type { i8*, i32 (%struct.x509_lookup_st*)*, void (%struct.x509_lookup_st*)*, i32 (%struct.x509_lookup_st*)*, i32 (%struct.x509_lookup_st*)*, i32 (%struct.x509_lookup_st*, i32, i8*, i64, i8**)*, i32 (%struct.x509_lookup_st*, i32, %struct.X509_name_st*, %struct.x509_object_st*)*, i32 (%struct.x509_lookup_st*, i32, %struct.X509_name_st*, %struct.asn1_string_st*, %struct.x509_object_st*)*, i32 (%struct.x509_lookup_st*, i32, i8*, i32, %struct.x509_object_st*)*, i32 (%struct.x509_lookup_st*, i32, i8*, i32, %struct.x509_object_st*)*, i32 (%struct.x509_lookup_st*, i32, %struct.X509_name_st*, %struct.x509_object_st*, %struct.ossl_lib_ctx_st*, i8*)*, i32 (%struct.x509_lookup_st*, i32, i8*, i64, i8**, %struct.ossl_lib_ctx_st*, i8*)* }
%struct.x509_lookup_st = type { i32, i32, %struct.x509_lookup_method_st*, i8*, %struct.x509_store_st* }
%struct.x509_store_st = type { i32, %struct.stack_st_X509_OBJECT*, %struct.stack_st_X509_LOOKUP*, %struct.X509_VERIFY_PARAM_st*, i32 (%struct.x509_store_ctx_st*)*, i32 (i32, %struct.x509_store_ctx_st*)*, i32 (%struct.x509_st**, %struct.x509_store_ctx_st*, %struct.x509_st*)*, i32 (%struct.x509_store_ctx_st*, %struct.x509_st*, %struct.x509_st*)*, i32 (%struct.x509_store_ctx_st*)*, i32 (%struct.x509_store_ctx_st*, %struct.X509_crl_st**, %struct.x509_st*)*, i32 (%struct.x509_store_ctx_st*, %struct.X509_crl_st*)*, i32 (%struct.x509_store_ctx_st*, %struct.X509_crl_st*, %struct.x509_st*)*, i32 (%struct.x509_store_ctx_st*)*, %struct.stack_st_X509* (%struct.x509_store_ctx_st*, %struct.X509_name_st*)*, %struct.stack_st_X509_CRL* (%struct.x509_store_ctx_st*, %struct.X509_name_st*)*, i32 (%struct.x509_store_ctx_st*)*, %struct.crypto_ex_data_st, i32, i8* }
%struct.stack_st_X509_OBJECT = type opaque
%struct.stack_st_X509_LOOKUP = type opaque
%struct.X509_VERIFY_PARAM_st = type { i8*, i64, i32, i64, i32, i32, i32, i32, %struct.stack_st_ASN1_OBJECT*, %struct.stack_st_OPENSSL_STRING*, i32, i8*, i8*, i64, i8*, i64 }
%struct.stack_st_ASN1_OBJECT = type opaque
%struct.stack_st_OPENSSL_STRING = type opaque
%struct.x509_store_ctx_st = type opaque
%struct.x509_st = type opaque
%struct.X509_crl_st = type opaque
%struct.stack_st_X509 = type opaque
%struct.X509_name_st = type opaque
%struct.stack_st_X509_CRL = type opaque
%struct.crypto_ex_data_st = type { %struct.ossl_lib_ctx_st*, %struct.stack_st_void* }
%struct.ossl_lib_ctx_st = type opaque
%struct.stack_st_void = type opaque
%struct.x509_object_st = type opaque
%struct.asn1_string_st = type { i32, i32, i8*, i64 }

@.str = private unnamed_addr constant [24 x i8] c"crypto/x509/x509_meth.c\00", align 1
@__func__.X509_LOOKUP_meth_new = private unnamed_addr constant [21 x i8] c"X509_LOOKUP_meth_new\00", align 1

; Function Attrs: noinline nounwind uwtable
define %struct.x509_lookup_method_st* @X509_LOOKUP_meth_new(i8* noundef %name) local_unnamed_addr #0 {
entry:
  %call = tail call i8* @CRYPTO_zalloc(i64 noundef 96, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 22) #4
  %0 = bitcast i8* %call to %struct.x509_lookup_method_st*
  %cmp.not = icmp eq i8* %call, null
  br i1 %cmp.not, label %cleanup, label %if.then

if.then:                                          ; preds = %entry
  %call1 = tail call i8* @CRYPTO_strdup(i8* noundef %name, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 25) #4
  %name2 = bitcast i8* %call to i8**
  store i8* %call1, i8** %name2, align 8, !tbaa !4
  %cmp4 = icmp eq i8* %call1, null
  br i1 %cmp4, label %if.then5, label %cleanup

if.then5:                                         ; preds = %if.then
  tail call void @ERR_new() #4
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 27, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.X509_LOOKUP_meth_new, i64 0, i64 0)) #4
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 11, i32 noundef 786688, i8* noundef null) #4
  tail call void @CRYPTO_free(i8* noundef nonnull %call, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 35) #4
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.then, %if.then5
  %retval.0 = phi %struct.x509_lookup_method_st* [ null, %if.then5 ], [ %0, %if.then ], [ %0, %entry ]
  ret %struct.x509_lookup_method_st* %retval.0
}

declare i8* @CRYPTO_zalloc(i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

declare i8* @CRYPTO_strdup(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

declare void @ERR_new() local_unnamed_addr #1

declare void @ERR_set_debug(i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #1

declare void @ERR_set_error(i32 noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #1

declare void @CRYPTO_free(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define void @X509_LOOKUP_meth_free(%struct.x509_lookup_method_st* noundef %method) local_unnamed_addr #0 {
entry:
  %cmp.not = icmp eq %struct.x509_lookup_method_st* %method, null
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %name = getelementptr inbounds %struct.x509_lookup_method_st, %struct.x509_lookup_method_st* %method, i64 0, i32 0
  %0 = load i8*, i8** %name, align 8, !tbaa !4
  tail call void @CRYPTO_free(i8* noundef %0, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 42) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = bitcast %struct.x509_lookup_method_st* %method to i8*
  tail call void @CRYPTO_free(i8* noundef %1, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 43) #4
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define i32 @X509_LOOKUP_meth_set_new_item(%struct.x509_lookup_method_st* nocapture noundef writeonly %method, i32 (%struct.x509_lookup_st*)* noundef %new_item) local_unnamed_addr #2 {
entry:
  %new_item1 = getelementptr inbounds %struct.x509_lookup_method_st, %struct.x509_lookup_method_st* %method, i64 0, i32 1
  store i32 (%struct.x509_lookup_st*)* %new_item, i32 (%struct.x509_lookup_st*)** %new_item1, align 8, !tbaa !9
  ret i32 1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define i32 (%struct.x509_lookup_st*)* @X509_LOOKUP_meth_get_new_item(%struct.x509_lookup_method_st* nocapture noundef readonly %method) local_unnamed_addr #3 {
entry:
  %new_item = getelementptr inbounds %struct.x509_lookup_method_st, %struct.x509_lookup_method_st* %method, i64 0, i32 1
  %0 = load i32 (%struct.x509_lookup_st*)*, i32 (%struct.x509_lookup_st*)** %new_item, align 8, !tbaa !9
  ret i32 (%struct.x509_lookup_st*)* %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define i32 @X509_LOOKUP_meth_set_free(%struct.x509_lookup_method_st* nocapture noundef writeonly %method, void (%struct.x509_lookup_st*)* noundef %free_fn) local_unnamed_addr #2 {
entry:
  %free = getelementptr inbounds %struct.x509_lookup_method_st, %struct.x509_lookup_method_st* %method, i64 0, i32 2
  store void (%struct.x509_lookup_st*)* %free_fn, void (%struct.x509_lookup_st*)** %free, align 8, !tbaa !10
  ret i32 1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define void (%struct.x509_lookup_st*)* @X509_LOOKUP_meth_get_free(%struct.x509_lookup_method_st* nocapture noundef readonly %method) local_unnamed_addr #3 {
entry:
  %free = getelementptr inbounds %struct.x509_lookup_method_st, %struct.x509_lookup_method_st* %method, i64 0, i32 2
  %0 = load void (%struct.x509_lookup_st*)*, void (%struct.x509_lookup_st*)** %free, align 8, !tbaa !10
  ret void (%struct.x509_lookup_st*)* %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define i32 @X509_LOOKUP_meth_set_init(%struct.x509_lookup_method_st* nocapture noundef writeonly %method, i32 (%struct.x509_lookup_st*)* noundef %init) local_unnamed_addr #2 {
entry:
  %init1 = getelementptr inbounds %struct.x509_lookup_method_st, %struct.x509_lookup_method_st* %method, i64 0, i32 3
  store i32 (%struct.x509_lookup_st*)* %init, i32 (%struct.x509_lookup_st*)** %init1, align 8, !tbaa !11
  ret i32 1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define i32 (%struct.x509_lookup_st*)* @X509_LOOKUP_meth_get_init(%struct.x509_lookup_method_st* nocapture noundef readonly %method) local_unnamed_addr #3 {
entry:
  %init = getelementptr inbounds %struct.x509_lookup_method_st, %struct.x509_lookup_method_st* %method, i64 0, i32 3
  %0 = load i32 (%struct.x509_lookup_st*)*, i32 (%struct.x509_lookup_st*)** %init, align 8, !tbaa !11
  ret i32 (%struct.x509_lookup_st*)* %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define i32 @X509_LOOKUP_meth_set_shutdown(%struct.x509_lookup_method_st* nocapture noundef writeonly %method, i32 (%struct.x509_lookup_st*)* noundef %shutdown) local_unnamed_addr #2 {
entry:
  %shutdown1 = getelementptr inbounds %struct.x509_lookup_method_st, %struct.x509_lookup_method_st* %method, i64 0, i32 4
  store i32 (%struct.x509_lookup_st*)* %shutdown, i32 (%struct.x509_lookup_st*)** %shutdown1, align 8, !tbaa !12
  ret i32 1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define i32 (%struct.x509_lookup_st*)* @X509_LOOKUP_meth_get_shutdown(%struct.x509_lookup_method_st* nocapture noundef readonly %method) local_unnamed_addr #3 {
entry:
  %shutdown = getelementptr inbounds %struct.x509_lookup_method_st, %struct.x509_lookup_method_st* %method, i64 0, i32 4
  %0 = load i32 (%struct.x509_lookup_st*)*, i32 (%struct.x509_lookup_st*)** %shutdown, align 8, !tbaa !12
  ret i32 (%struct.x509_lookup_st*)* %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define i32 @X509_LOOKUP_meth_set_ctrl(%struct.x509_lookup_method_st* nocapture noundef writeonly %method, i32 (%struct.x509_lookup_st*, i32, i8*, i64, i8**)* noundef %ctrl) local_unnamed_addr #2 {
entry:
  %ctrl1 = getelementptr inbounds %struct.x509_lookup_method_st, %struct.x509_lookup_method_st* %method, i64 0, i32 5
  store i32 (%struct.x509_lookup_st*, i32, i8*, i64, i8**)* %ctrl, i32 (%struct.x509_lookup_st*, i32, i8*, i64, i8**)** %ctrl1, align 8, !tbaa !13
  ret i32 1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define i32 (%struct.x509_lookup_st*, i32, i8*, i64, i8**)* @X509_LOOKUP_meth_get_ctrl(%struct.x509_lookup_method_st* nocapture noundef readonly %method) local_unnamed_addr #3 {
entry:
  %ctrl = getelementptr inbounds %struct.x509_lookup_method_st, %struct.x509_lookup_method_st* %method, i64 0, i32 5
  %0 = load i32 (%struct.x509_lookup_st*, i32, i8*, i64, i8**)*, i32 (%struct.x509_lookup_st*, i32, i8*, i64, i8**)** %ctrl, align 8, !tbaa !13
  ret i32 (%struct.x509_lookup_st*, i32, i8*, i64, i8**)* %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define i32 @X509_LOOKUP_meth_set_get_by_subject(%struct.x509_lookup_method_st* nocapture noundef writeonly %method, i32 (%struct.x509_lookup_st*, i32, %struct.X509_name_st*, %struct.x509_object_st*)* noundef %get_by_subject) local_unnamed_addr #2 {
entry:
  %get_by_subject1 = getelementptr inbounds %struct.x509_lookup_method_st, %struct.x509_lookup_method_st* %method, i64 0, i32 6
  store i32 (%struct.x509_lookup_st*, i32, %struct.X509_name_st*, %struct.x509_object_st*)* %get_by_subject, i32 (%struct.x509_lookup_st*, i32, %struct.X509_name_st*, %struct.x509_object_st*)** %get_by_subject1, align 8, !tbaa !14
  ret i32 1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define i32 (%struct.x509_lookup_st*, i32, %struct.X509_name_st*, %struct.x509_object_st*)* @X509_LOOKUP_meth_get_get_by_subject(%struct.x509_lookup_method_st* nocapture noundef readonly %method) local_unnamed_addr #3 {
entry:
  %get_by_subject = getelementptr inbounds %struct.x509_lookup_method_st, %struct.x509_lookup_method_st* %method, i64 0, i32 6
  %0 = load i32 (%struct.x509_lookup_st*, i32, %struct.X509_name_st*, %struct.x509_object_st*)*, i32 (%struct.x509_lookup_st*, i32, %struct.X509_name_st*, %struct.x509_object_st*)** %get_by_subject, align 8, !tbaa !14
  ret i32 (%struct.x509_lookup_st*, i32, %struct.X509_name_st*, %struct.x509_object_st*)* %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define i32 @X509_LOOKUP_meth_set_get_by_issuer_serial(%struct.x509_lookup_method_st* nocapture noundef writeonly %method, i32 (%struct.x509_lookup_st*, i32, %struct.X509_name_st*, %struct.asn1_string_st*, %struct.x509_object_st*)* noundef %get_by_issuer_serial) local_unnamed_addr #2 {
entry:
  %get_by_issuer_serial1 = getelementptr inbounds %struct.x509_lookup_method_st, %struct.x509_lookup_method_st* %method, i64 0, i32 7
  store i32 (%struct.x509_lookup_st*, i32, %struct.X509_name_st*, %struct.asn1_string_st*, %struct.x509_object_st*)* %get_by_issuer_serial, i32 (%struct.x509_lookup_st*, i32, %struct.X509_name_st*, %struct.asn1_string_st*, %struct.x509_object_st*)** %get_by_issuer_serial1, align 8, !tbaa !15
  ret i32 1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define i32 (%struct.x509_lookup_st*, i32, %struct.X509_name_st*, %struct.asn1_string_st*, %struct.x509_object_st*)* @X509_LOOKUP_meth_get_get_by_issuer_serial(%struct.x509_lookup_method_st* nocapture noundef readonly %method) local_unnamed_addr #3 {
entry:
  %get_by_issuer_serial = getelementptr inbounds %struct.x509_lookup_method_st, %struct.x509_lookup_method_st* %method, i64 0, i32 7
  %0 = load i32 (%struct.x509_lookup_st*, i32, %struct.X509_name_st*, %struct.asn1_string_st*, %struct.x509_object_st*)*, i32 (%struct.x509_lookup_st*, i32, %struct.X509_name_st*, %struct.asn1_string_st*, %struct.x509_object_st*)** %get_by_issuer_serial, align 8, !tbaa !15
  ret i32 (%struct.x509_lookup_st*, i32, %struct.X509_name_st*, %struct.asn1_string_st*, %struct.x509_object_st*)* %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define i32 @X509_LOOKUP_meth_set_get_by_fingerprint(%struct.x509_lookup_method_st* nocapture noundef writeonly %method, i32 (%struct.x509_lookup_st*, i32, i8*, i32, %struct.x509_object_st*)* noundef %get_by_fingerprint) local_unnamed_addr #2 {
entry:
  %get_by_fingerprint1 = getelementptr inbounds %struct.x509_lookup_method_st, %struct.x509_lookup_method_st* %method, i64 0, i32 8
  store i32 (%struct.x509_lookup_st*, i32, i8*, i32, %struct.x509_object_st*)* %get_by_fingerprint, i32 (%struct.x509_lookup_st*, i32, i8*, i32, %struct.x509_object_st*)** %get_by_fingerprint1, align 8, !tbaa !16
  ret i32 1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define i32 (%struct.x509_lookup_st*, i32, i8*, i32, %struct.x509_object_st*)* @X509_LOOKUP_meth_get_get_by_fingerprint(%struct.x509_lookup_method_st* nocapture noundef readonly %method) local_unnamed_addr #3 {
entry:
  %get_by_fingerprint = getelementptr inbounds %struct.x509_lookup_method_st, %struct.x509_lookup_method_st* %method, i64 0, i32 8
  %0 = load i32 (%struct.x509_lookup_st*, i32, i8*, i32, %struct.x509_object_st*)*, i32 (%struct.x509_lookup_st*, i32, i8*, i32, %struct.x509_object_st*)** %get_by_fingerprint, align 8, !tbaa !16
  ret i32 (%struct.x509_lookup_st*, i32, i8*, i32, %struct.x509_object_st*)* %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define i32 @X509_LOOKUP_meth_set_get_by_alias(%struct.x509_lookup_method_st* nocapture noundef writeonly %method, i32 (%struct.x509_lookup_st*, i32, i8*, i32, %struct.x509_object_st*)* noundef %get_by_alias) local_unnamed_addr #2 {
entry:
  %get_by_alias1 = getelementptr inbounds %struct.x509_lookup_method_st, %struct.x509_lookup_method_st* %method, i64 0, i32 9
  store i32 (%struct.x509_lookup_st*, i32, i8*, i32, %struct.x509_object_st*)* %get_by_alias, i32 (%struct.x509_lookup_st*, i32, i8*, i32, %struct.x509_object_st*)** %get_by_alias1, align 8, !tbaa !17
  ret i32 1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define i32 (%struct.x509_lookup_st*, i32, i8*, i32, %struct.x509_object_st*)* @X509_LOOKUP_meth_get_get_by_alias(%struct.x509_lookup_method_st* nocapture noundef readonly %method) local_unnamed_addr #3 {
entry:
  %get_by_alias = getelementptr inbounds %struct.x509_lookup_method_st, %struct.x509_lookup_method_st* %method, i64 0, i32 9
  %0 = load i32 (%struct.x509_lookup_st*, i32, i8*, i32, %struct.x509_object_st*)*, i32 (%struct.x509_lookup_st*, i32, i8*, i32, %struct.x509_object_st*)** %get_by_alias, align 8, !tbaa !17
  ret i32 (%struct.x509_lookup_st*, i32, i8*, i32, %struct.x509_object_st*)* %0
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nobuiltin nounwind "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{!"clang version 14.0.0"}
!4 = !{!5, !6, i64 0}
!5 = !{!"x509_lookup_method_st", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !6, i64 40, !6, i64 48, !6, i64 56, !6, i64 64, !6, i64 72, !6, i64 80, !6, i64 88}
!6 = !{!"any pointer", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!5, !6, i64 8}
!10 = !{!5, !6, i64 16}
!11 = !{!5, !6, i64 24}
!12 = !{!5, !6, i64 32}
!13 = !{!5, !6, i64 40}
!14 = !{!5, !6, i64 48}
!15 = !{!5, !6, i64 56}
!16 = !{!5, !6, i64 64}
!17 = !{!5, !6, i64 72}
