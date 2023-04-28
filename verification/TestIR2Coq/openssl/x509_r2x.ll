; ModuleID = 'crypto/x509/x509_r2x.c'
source_filename = "crypto/x509/x509_r2x.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.x509_st = type { %struct.x509_cinf_st, %struct.X509_algor_st, %struct.asn1_string_st, %struct.x509_sig_info_st, i32, %struct.crypto_ex_data_st, i64, i64, i32, i32, i32, i32, %struct.asn1_string_st*, %struct.AUTHORITY_KEYID_st*, %struct.X509_POLICY_CACHE_st*, %struct.stack_st_DIST_POINT*, %struct.stack_st_GENERAL_NAME*, %struct.NAME_CONSTRAINTS_st*, %struct.stack_st_IPAddressFamily*, %struct.ASIdentifiers_st*, [20 x i8], %struct.x509_cert_aux_st*, i8*, i32, %struct.asn1_string_st*, %struct.ossl_lib_ctx_st*, i8* }
%struct.x509_cinf_st = type { %struct.asn1_string_st*, %struct.asn1_string_st, %struct.X509_algor_st, %struct.X509_name_st*, %struct.X509_val_st, %struct.X509_name_st*, %struct.X509_pubkey_st*, %struct.asn1_string_st*, %struct.asn1_string_st*, %struct.stack_st_X509_EXTENSION*, %struct.ASN1_ENCODING_st }
%struct.X509_val_st = type { %struct.asn1_string_st*, %struct.asn1_string_st* }
%struct.X509_name_st = type { %struct.stack_st_X509_NAME_ENTRY*, i32, %struct.buf_mem_st*, i8*, i32 }
%struct.stack_st_X509_NAME_ENTRY = type opaque
%struct.buf_mem_st = type { i64, i8*, i64, i64 }
%struct.X509_pubkey_st = type opaque
%struct.stack_st_X509_EXTENSION = type opaque
%struct.ASN1_ENCODING_st = type { i8*, i64, i32 }
%struct.X509_algor_st = type { %struct.asn1_object_st*, %struct.asn1_type_st* }
%struct.asn1_object_st = type opaque
%struct.asn1_type_st = type { i32, %union.anon }
%union.anon = type { i8* }
%struct.asn1_string_st = type { i32, i32, i8*, i64 }
%struct.x509_sig_info_st = type { i32, i32, i32, i32 }
%struct.crypto_ex_data_st = type { %struct.ossl_lib_ctx_st*, %struct.stack_st_void* }
%struct.stack_st_void = type opaque
%struct.AUTHORITY_KEYID_st = type { %struct.asn1_string_st*, %struct.stack_st_GENERAL_NAME*, %struct.asn1_string_st* }
%struct.X509_POLICY_CACHE_st = type opaque
%struct.stack_st_DIST_POINT = type opaque
%struct.stack_st_GENERAL_NAME = type opaque
%struct.NAME_CONSTRAINTS_st = type { %struct.stack_st_GENERAL_SUBTREE*, %struct.stack_st_GENERAL_SUBTREE* }
%struct.stack_st_GENERAL_SUBTREE = type opaque
%struct.stack_st_IPAddressFamily = type opaque
%struct.ASIdentifiers_st = type { %struct.ASIdentifierChoice_st*, %struct.ASIdentifierChoice_st* }
%struct.ASIdentifierChoice_st = type { i32, %union.anon.0 }
%union.anon.0 = type { i32* }
%struct.x509_cert_aux_st = type { %struct.stack_st_ASN1_OBJECT*, %struct.stack_st_ASN1_OBJECT*, %struct.asn1_string_st*, %struct.asn1_string_st*, %struct.stack_st_X509_ALGOR* }
%struct.stack_st_ASN1_OBJECT = type opaque
%struct.stack_st_X509_ALGOR = type opaque
%struct.ossl_lib_ctx_st = type opaque
%struct.X509_req_st = type { %struct.X509_req_info_st, %struct.X509_algor_st, %struct.asn1_string_st*, i32, i8*, %struct.asn1_string_st*, %struct.ossl_lib_ctx_st*, i8* }
%struct.X509_req_info_st = type { %struct.ASN1_ENCODING_st, %struct.asn1_string_st*, %struct.X509_name_st*, %struct.X509_pubkey_st*, %struct.stack_st_X509_ATTRIBUTE* }
%struct.stack_st_X509_ATTRIBUTE = type opaque
%struct.evp_pkey_st = type opaque
%struct.stack_st = type opaque
%struct.evp_md_st = type opaque

@.str = private unnamed_addr constant [23 x i8] c"crypto/x509/x509_r2x.c\00", align 1
@__func__.X509_REQ_to_X509 = private unnamed_addr constant [17 x i8] c"X509_REQ_to_X509\00", align 1

; Function Attrs: noinline nounwind uwtable
define %struct.x509_st* @X509_REQ_to_X509(%struct.X509_req_st* noundef %r, i32 noundef %days, %struct.evp_pkey_st* noundef %pkey) local_unnamed_addr #0 {
entry:
  %call = tail call %struct.x509_st* @X509_new() #3
  %cmp = icmp eq %struct.x509_st* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #3
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 28, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.X509_REQ_to_X509, i64 0, i64 0)) #3
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 11, i32 noundef 786688, i8* noundef null) #3
  br label %cleanup

if.end:                                           ; preds = %entry
  %attributes = getelementptr inbounds %struct.X509_req_st, %struct.X509_req_st* %r, i64 0, i32 0, i32 4
  %0 = load %struct.stack_st_X509_ATTRIBUTE*, %struct.stack_st_X509_ATTRIBUTE** %attributes, align 8, !tbaa !4
  %call1 = tail call fastcc %struct.stack_st* @ossl_check_const_X509_ATTRIBUTE_sk_type(%struct.stack_st_X509_ATTRIBUTE* noundef %0) #4
  %call2 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call1) #3
  %cmp3.not = icmp eq i32 %call2, 0
  br i1 %cmp3.not, label %if.end13, label %if.then4

if.then4:                                         ; preds = %if.end
  %call5 = tail call %struct.asn1_string_st* @ASN1_INTEGER_new() #3
  %version = getelementptr inbounds %struct.x509_st, %struct.x509_st* %call, i64 0, i32 0, i32 0
  store %struct.asn1_string_st* %call5, %struct.asn1_string_st** %version, align 8, !tbaa !14
  %cmp6 = icmp eq %struct.asn1_string_st* %call5, null
  br i1 %cmp6, label %err, label %if.end8

if.end8:                                          ; preds = %if.then4
  %call10 = tail call i32 @ASN1_INTEGER_set(%struct.asn1_string_st* noundef nonnull %call5, i64 noundef 2) #3
  %tobool.not = icmp eq i32 %call10, 0
  br i1 %tobool.not, label %err, label %if.end13

if.end13:                                         ; preds = %if.end8, %if.end
  %call14 = tail call %struct.X509_name_st* @X509_REQ_get_subject_name(%struct.X509_req_st* noundef nonnull %r) #3
  %call15 = tail call i32 @X509_set_subject_name(%struct.x509_st* noundef nonnull %call, %struct.X509_name_st* noundef %call14) #3
  %cmp16 = icmp eq i32 %call15, 0
  br i1 %cmp16, label %err, label %if.end18

if.end18:                                         ; preds = %if.end13
  %call19 = tail call i32 @X509_set_issuer_name(%struct.x509_st* noundef nonnull %call, %struct.X509_name_st* noundef %call14) #3
  %cmp20 = icmp eq i32 %call19, 0
  br i1 %cmp20, label %err, label %if.end22

if.end22:                                         ; preds = %if.end18
  %notBefore = getelementptr inbounds %struct.x509_st, %struct.x509_st* %call, i64 0, i32 0, i32 4, i32 0
  %1 = load %struct.asn1_string_st*, %struct.asn1_string_st** %notBefore, align 8, !tbaa !18
  %call23 = tail call %struct.asn1_string_st* @X509_gmtime_adj(%struct.asn1_string_st* noundef %1, i64 noundef 0) #3
  %cmp24 = icmp eq %struct.asn1_string_st* %call23, null
  br i1 %cmp24, label %err, label %if.end26

if.end26:                                         ; preds = %if.end22
  %notAfter = getelementptr inbounds %struct.x509_st, %struct.x509_st* %call, i64 0, i32 0, i32 4, i32 1
  %2 = load %struct.asn1_string_st*, %struct.asn1_string_st** %notAfter, align 8, !tbaa !19
  %conv = sext i32 %days to i64
  %mul = mul nsw i64 %conv, 86400
  %call28 = tail call %struct.asn1_string_st* @X509_gmtime_adj(%struct.asn1_string_st* noundef %2, i64 noundef %mul) #3
  %cmp29 = icmp eq %struct.asn1_string_st* %call28, null
  br i1 %cmp29, label %err, label %if.end32

if.end32:                                         ; preds = %if.end26
  %call33 = tail call %struct.evp_pkey_st* @X509_REQ_get0_pubkey(%struct.X509_req_st* noundef nonnull %r) #3
  %cmp34 = icmp eq %struct.evp_pkey_st* %call33, null
  br i1 %cmp34, label %err, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end32
  %call36 = tail call i32 @X509_set_pubkey(%struct.x509_st* noundef nonnull %call, %struct.evp_pkey_st* noundef nonnull %call33) #3
  %tobool37.not = icmp eq i32 %call36, 0
  br i1 %tobool37.not, label %err, label %if.end39

if.end39:                                         ; preds = %lor.lhs.false
  %call40 = tail call %struct.evp_md_st* @EVP_md5() #3
  %call41 = tail call i32 @X509_sign(%struct.x509_st* noundef nonnull %call, %struct.evp_pkey_st* noundef %pkey, %struct.evp_md_st* noundef %call40) #3
  %tobool42.not = icmp eq i32 %call41, 0
  br i1 %tobool42.not, label %err, label %cleanup

err:                                              ; preds = %if.end39, %if.end32, %lor.lhs.false, %if.end26, %if.end22, %if.end18, %if.end13, %if.end8, %if.then4
  tail call void @X509_free(%struct.x509_st* noundef nonnull %call) #3
  br label %cleanup

cleanup:                                          ; preds = %if.end39, %err, %if.then
  %retval.0 = phi %struct.x509_st* [ null, %if.then ], [ null, %err ], [ %call, %if.end39 ]
  ret %struct.x509_st* %retval.0
}

declare %struct.x509_st* @X509_new() local_unnamed_addr #1

declare void @ERR_new() local_unnamed_addr #1

declare void @ERR_set_debug(i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #1

declare void @ERR_set_error(i32 noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #1

declare i32 @OPENSSL_sk_num(%struct.stack_st* noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_const_X509_ATTRIBUTE_sk_type(%struct.stack_st_X509_ATTRIBUTE* noundef readnone %sk) unnamed_addr #2 {
entry:
  %0 = bitcast %struct.stack_st_X509_ATTRIBUTE* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

declare %struct.asn1_string_st* @ASN1_INTEGER_new() local_unnamed_addr #1

declare i32 @ASN1_INTEGER_set(%struct.asn1_string_st* noundef, i64 noundef) local_unnamed_addr #1

declare %struct.X509_name_st* @X509_REQ_get_subject_name(%struct.X509_req_st* noundef) local_unnamed_addr #1

declare i32 @X509_set_subject_name(%struct.x509_st* noundef, %struct.X509_name_st* noundef) local_unnamed_addr #1

declare i32 @X509_set_issuer_name(%struct.x509_st* noundef, %struct.X509_name_st* noundef) local_unnamed_addr #1

declare %struct.asn1_string_st* @X509_gmtime_adj(%struct.asn1_string_st* noundef, i64 noundef) local_unnamed_addr #1

declare %struct.evp_pkey_st* @X509_REQ_get0_pubkey(%struct.X509_req_st* noundef) local_unnamed_addr #1

declare i32 @X509_set_pubkey(%struct.x509_st* noundef, %struct.evp_pkey_st* noundef) local_unnamed_addr #1

declare i32 @X509_sign(%struct.x509_st* noundef, %struct.evp_pkey_st* noundef, %struct.evp_md_st* noundef) local_unnamed_addr #1

declare %struct.evp_md_st* @EVP_md5() local_unnamed_addr #1

declare void @X509_free(%struct.x509_st* noundef) local_unnamed_addr #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nobuiltin nounwind "no-builtins" }
attributes #4 = { nobuiltin "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{!"clang version 14.0.0"}
!4 = !{!5, !8, i64 48}
!5 = !{!"X509_req_st", !6, i64 0, !13, i64 56, !8, i64 72, !9, i64 80, !8, i64 88, !8, i64 96, !8, i64 104, !8, i64 112}
!6 = !{!"X509_req_info_st", !7, i64 0, !8, i64 24, !8, i64 32, !8, i64 40, !8, i64 48}
!7 = !{!"ASN1_ENCODING_st", !8, i64 0, !11, i64 8, !12, i64 16}
!8 = !{!"any pointer", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
!11 = !{!"long", !9, i64 0}
!12 = !{!"int", !9, i64 0}
!13 = !{!"X509_algor_st", !8, i64 0, !8, i64 8}
!14 = !{!15, !8, i64 0}
!15 = !{!"x509_cinf_st", !8, i64 0, !16, i64 8, !13, i64 32, !8, i64 48, !17, i64 56, !8, i64 72, !8, i64 80, !8, i64 88, !8, i64 96, !8, i64 104, !7, i64 112}
!16 = !{!"asn1_string_st", !12, i64 0, !12, i64 4, !8, i64 8, !11, i64 16}
!17 = !{!"X509_val_st", !8, i64 0, !8, i64 8}
!18 = !{!15, !8, i64 56}
!19 = !{!15, !8, i64 64}
