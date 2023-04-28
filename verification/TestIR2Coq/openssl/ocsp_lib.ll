; ModuleID = 'crypto/ocsp/ocsp_lib.c'
source_filename = "crypto/ocsp/ocsp_lib.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocsp_cert_id_st = type { %struct.X509_algor_st, %struct.asn1_string_st, %struct.asn1_string_st, %struct.asn1_string_st }
%struct.X509_algor_st = type { %struct.asn1_object_st*, %struct.asn1_type_st* }
%struct.asn1_object_st = type opaque
%struct.asn1_type_st = type { i32, %union.anon }
%union.anon = type { i8* }
%struct.asn1_string_st = type { i32, i32, i8*, i64 }
%struct.evp_md_st = type opaque
%struct.x509_st = type { %struct.x509_cinf_st, %struct.X509_algor_st, %struct.asn1_string_st, %struct.x509_sig_info_st, i32, %struct.crypto_ex_data_st, i64, i64, i32, i32, i32, i32, %struct.asn1_string_st*, %struct.AUTHORITY_KEYID_st*, %struct.X509_POLICY_CACHE_st*, %struct.stack_st_DIST_POINT*, %struct.stack_st_GENERAL_NAME*, %struct.NAME_CONSTRAINTS_st*, %struct.stack_st_IPAddressFamily*, %struct.ASIdentifiers_st*, [20 x i8], %struct.x509_cert_aux_st*, i8*, i32, %struct.asn1_string_st*, %struct.ossl_lib_ctx_st*, i8* }
%struct.x509_cinf_st = type { %struct.asn1_string_st*, %struct.asn1_string_st, %struct.X509_algor_st, %struct.X509_name_st*, %struct.X509_val_st, %struct.X509_name_st*, %struct.X509_pubkey_st*, %struct.asn1_string_st*, %struct.asn1_string_st*, %struct.stack_st_X509_EXTENSION*, %struct.ASN1_ENCODING_st }
%struct.X509_val_st = type { %struct.asn1_string_st*, %struct.asn1_string_st* }
%struct.X509_name_st = type { %struct.stack_st_X509_NAME_ENTRY*, i32, %struct.buf_mem_st*, i8*, i32 }
%struct.stack_st_X509_NAME_ENTRY = type opaque
%struct.buf_mem_st = type { i64, i8*, i64, i64 }
%struct.X509_pubkey_st = type opaque
%struct.stack_st_X509_EXTENSION = type opaque
%struct.ASN1_ENCODING_st = type { i8*, i64, i32 }
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
%struct.engine_st = type opaque
%struct.ASN1_ITEM_st = type { i8, i64, %struct.ASN1_TEMPLATE_st*, i64, i8*, i64, i8* }
%struct.ASN1_TEMPLATE_st = type { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* }

@.str = private unnamed_addr constant [23 x i8] c"crypto/ocsp/ocsp_lib.c\00", align 1
@__func__.OCSP_cert_id_new = private unnamed_addr constant [17 x i8] c"OCSP_cert_id_new\00", align 1

; Function Attrs: noinline nounwind uwtable
define %struct.ocsp_cert_id_st* @OCSP_cert_to_id(%struct.evp_md_st* noundef %dgst, %struct.x509_st* noundef %subject, %struct.x509_st* noundef %issuer) local_unnamed_addr #0 {
entry:
  %tobool.not = icmp eq %struct.evp_md_st* %dgst, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = tail call %struct.evp_md_st* @EVP_sha1() #3
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %dgst.addr.0 = phi %struct.evp_md_st* [ %dgst, %entry ], [ %call, %if.then ]
  %tobool1.not = icmp eq %struct.x509_st* %subject, null
  br i1 %tobool1.not, label %if.else, label %if.then2

if.then2:                                         ; preds = %if.end
  %call3 = tail call %struct.X509_name_st* @X509_get_issuer_name(%struct.x509_st* noundef nonnull %subject) #3
  %call4 = tail call %struct.asn1_string_st* @X509_get0_serialNumber(%struct.x509_st* noundef nonnull %subject) #3
  br label %if.end6

if.else:                                          ; preds = %if.end
  %call5 = tail call %struct.X509_name_st* @X509_get_subject_name(%struct.x509_st* noundef %issuer) #3
  br label %if.end6

if.end6:                                          ; preds = %if.else, %if.then2
  %iname.0 = phi %struct.X509_name_st* [ %call3, %if.then2 ], [ %call5, %if.else ]
  %serial.0 = phi %struct.asn1_string_st* [ %call4, %if.then2 ], [ null, %if.else ]
  %call7 = tail call %struct.asn1_string_st* @X509_get0_pubkey_bitstr(%struct.x509_st* noundef %issuer) #3
  %call8 = tail call %struct.ocsp_cert_id_st* @OCSP_cert_id_new(%struct.evp_md_st* noundef %dgst.addr.0, %struct.X509_name_st* noundef %iname.0, %struct.asn1_string_st* noundef %call7, %struct.asn1_string_st* noundef %serial.0) #4
  ret %struct.ocsp_cert_id_st* %call8
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

declare %struct.evp_md_st* @EVP_sha1() local_unnamed_addr #2

declare %struct.X509_name_st* @X509_get_issuer_name(%struct.x509_st* noundef) local_unnamed_addr #2

declare %struct.asn1_string_st* @X509_get0_serialNumber(%struct.x509_st* noundef) local_unnamed_addr #2

declare %struct.X509_name_st* @X509_get_subject_name(%struct.x509_st* noundef) local_unnamed_addr #2

declare %struct.asn1_string_st* @X509_get0_pubkey_bitstr(%struct.x509_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define %struct.ocsp_cert_id_st* @OCSP_cert_id_new(%struct.evp_md_st* noundef %dgst, %struct.X509_name_st* noundef %issuerName, %struct.asn1_string_st* nocapture noundef readonly %issuerKey, %struct.asn1_string_st* noundef %serialNumber) local_unnamed_addr #0 {
entry:
  %i = alloca i32, align 4
  %md = alloca [64 x i8], align 16
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #5
  %1 = getelementptr inbounds [64 x i8], [64 x i8]* %md, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %1) #5
  %call = tail call %struct.ocsp_cert_id_st* @OCSP_CERTID_new() #3
  %cmp = icmp eq %struct.ocsp_cert_id_st* %call, null
  br i1 %cmp, label %err, label %if.end

if.end:                                           ; preds = %entry
  %algorithm = getelementptr inbounds %struct.ocsp_cert_id_st, %struct.ocsp_cert_id_st* %call, i64 0, i32 0, i32 0
  %2 = load %struct.asn1_object_st*, %struct.asn1_object_st** %algorithm, align 8, !tbaa !4
  tail call void @ASN1_OBJECT_free(%struct.asn1_object_st* noundef %2) #3
  %call1 = tail call i32 @EVP_MD_get_type(%struct.evp_md_st* noundef %dgst) #3
  %cmp2 = icmp eq i32 %call1, 0
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  tail call void @ERR_new() #3
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 59, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.OCSP_cert_id_new, i64 0, i64 0)) #3
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 39, i32 noundef 120, i8* noundef null) #3
  br label %err

if.end4:                                          ; preds = %if.end
  %call5 = tail call %struct.asn1_object_st* @OBJ_nid2obj(i32 noundef %call1) #3
  store %struct.asn1_object_st* %call5, %struct.asn1_object_st** %algorithm, align 8, !tbaa !4
  %cmp7 = icmp eq %struct.asn1_object_st* %call5, null
  br i1 %cmp7, label %err, label %if.end9

if.end9:                                          ; preds = %if.end4
  %call10 = tail call %struct.asn1_type_st* @ASN1_TYPE_new() #3
  %parameter = getelementptr inbounds %struct.ocsp_cert_id_st, %struct.ocsp_cert_id_st* %call, i64 0, i32 0, i32 1
  store %struct.asn1_type_st* %call10, %struct.asn1_type_st** %parameter, align 8, !tbaa !9
  %cmp11 = icmp eq %struct.asn1_type_st* %call10, null
  br i1 %cmp11, label %err, label %if.end13

if.end13:                                         ; preds = %if.end9
  %type = getelementptr inbounds %struct.asn1_type_st, %struct.asn1_type_st* %call10, i64 0, i32 0
  store i32 5, i32* %type, align 8, !tbaa !10
  %call15 = call i32 @X509_NAME_digest(%struct.X509_name_st* noundef %issuerName, %struct.evp_md_st* noundef %dgst, i8* noundef nonnull %1, i32* noundef nonnull %i) #3
  %tobool.not = icmp eq i32 %call15, 0
  br i1 %tobool.not, label %digerr, label %if.end17

if.end17:                                         ; preds = %if.end13
  %issuerNameHash = getelementptr inbounds %struct.ocsp_cert_id_st, %struct.ocsp_cert_id_st* %call, i64 0, i32 1
  %3 = load i32, i32* %i, align 4, !tbaa !13
  %call19 = call i32 @ASN1_OCTET_STRING_set(%struct.asn1_string_st* noundef nonnull %issuerNameHash, i8* noundef nonnull %1, i32 noundef %3) #3
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %err, label %if.end22

if.end22:                                         ; preds = %if.end17
  %data = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %issuerKey, i64 0, i32 2
  %4 = load i8*, i8** %data, align 8, !tbaa !14
  %length = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %issuerKey, i64 0, i32 0
  %5 = load i32, i32* %length, align 8, !tbaa !17
  %conv = sext i32 %5 to i64
  %call24 = call i32 @EVP_Digest(i8* noundef %4, i64 noundef %conv, i8* noundef nonnull %1, i32* noundef nonnull %i, %struct.evp_md_st* noundef %dgst, %struct.engine_st* noundef null) #3
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %err, label %if.end27

if.end27:                                         ; preds = %if.end22
  %issuerKeyHash = getelementptr inbounds %struct.ocsp_cert_id_st, %struct.ocsp_cert_id_st* %call, i64 0, i32 2
  %6 = load i32, i32* %i, align 4, !tbaa !13
  %call29 = call i32 @ASN1_OCTET_STRING_set(%struct.asn1_string_st* noundef nonnull %issuerKeyHash, i8* noundef nonnull %1, i32 noundef %6) #3
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %err, label %if.end32

if.end32:                                         ; preds = %if.end27
  %tobool33.not = icmp eq %struct.asn1_string_st* %serialNumber, null
  br i1 %tobool33.not, label %cleanup, label %if.then34

if.then34:                                        ; preds = %if.end32
  %serialNumber35 = getelementptr inbounds %struct.ocsp_cert_id_st, %struct.ocsp_cert_id_st* %call, i64 0, i32 3
  %call36 = call i32 @ASN1_STRING_copy(%struct.asn1_string_st* noundef nonnull %serialNumber35, %struct.asn1_string_st* noundef nonnull %serialNumber) #3
  %cmp37 = icmp eq i32 %call36, 0
  br i1 %cmp37, label %err, label %cleanup

digerr:                                           ; preds = %if.end13
  call void @ERR_new() #3
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 86, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.OCSP_cert_id_new, i64 0, i64 0)) #3
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 39, i32 noundef 102, i8* noundef null) #3
  br label %err

err:                                              ; preds = %if.then34, %if.end27, %if.end22, %if.end17, %if.end9, %if.end4, %entry, %digerr, %if.then3
  call void @OCSP_CERTID_free(%struct.ocsp_cert_id_st* noundef %call) #3
  br label %cleanup

cleanup:                                          ; preds = %if.end32, %if.then34, %err
  %retval.0 = phi %struct.ocsp_cert_id_st* [ null, %err ], [ %call, %if.then34 ], [ %call, %if.end32 ]
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %1) #5
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #5
  ret %struct.ocsp_cert_id_st* %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

declare %struct.ocsp_cert_id_st* @OCSP_CERTID_new() local_unnamed_addr #2

declare void @ASN1_OBJECT_free(%struct.asn1_object_st* noundef) local_unnamed_addr #2

declare i32 @EVP_MD_get_type(%struct.evp_md_st* noundef) local_unnamed_addr #2

declare void @ERR_new() local_unnamed_addr #2

declare void @ERR_set_debug(i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #2

declare void @ERR_set_error(i32 noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #2

declare %struct.asn1_object_st* @OBJ_nid2obj(i32 noundef) local_unnamed_addr #2

declare %struct.asn1_type_st* @ASN1_TYPE_new() local_unnamed_addr #2

declare i32 @X509_NAME_digest(%struct.X509_name_st* noundef, %struct.evp_md_st* noundef, i8* noundef, i32* noundef) local_unnamed_addr #2

declare i32 @ASN1_OCTET_STRING_set(%struct.asn1_string_st* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare i32 @EVP_Digest(i8* noundef, i64 noundef, i8* noundef, i32* noundef, %struct.evp_md_st* noundef, %struct.engine_st* noundef) local_unnamed_addr #2

declare i32 @ASN1_STRING_copy(%struct.asn1_string_st* noundef, %struct.asn1_string_st* noundef) local_unnamed_addr #2

declare void @OCSP_CERTID_free(%struct.ocsp_cert_id_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @OCSP_id_issuer_cmp(%struct.ocsp_cert_id_st* noundef %a, %struct.ocsp_cert_id_st* noundef %b) local_unnamed_addr #0 {
entry:
  %algorithm = getelementptr inbounds %struct.ocsp_cert_id_st, %struct.ocsp_cert_id_st* %a, i64 0, i32 0, i32 0
  %0 = load %struct.asn1_object_st*, %struct.asn1_object_st** %algorithm, align 8, !tbaa !18
  %algorithm2 = getelementptr inbounds %struct.ocsp_cert_id_st, %struct.ocsp_cert_id_st* %b, i64 0, i32 0, i32 0
  %1 = load %struct.asn1_object_st*, %struct.asn1_object_st** %algorithm2, align 8, !tbaa !18
  %call = tail call i32 @OBJ_cmp(%struct.asn1_object_st* noundef %0, %struct.asn1_object_st* noundef %1) #3
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %issuerNameHash = getelementptr inbounds %struct.ocsp_cert_id_st, %struct.ocsp_cert_id_st* %a, i64 0, i32 1
  %issuerNameHash3 = getelementptr inbounds %struct.ocsp_cert_id_st, %struct.ocsp_cert_id_st* %b, i64 0, i32 1
  %call4 = tail call i32 @ASN1_OCTET_STRING_cmp(%struct.asn1_string_st* noundef nonnull %issuerNameHash, %struct.asn1_string_st* noundef nonnull %issuerNameHash3) #3
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end7, label %cleanup

if.end7:                                          ; preds = %if.end
  %issuerKeyHash = getelementptr inbounds %struct.ocsp_cert_id_st, %struct.ocsp_cert_id_st* %a, i64 0, i32 2
  %issuerKeyHash8 = getelementptr inbounds %struct.ocsp_cert_id_st, %struct.ocsp_cert_id_st* %b, i64 0, i32 2
  %call9 = tail call i32 @ASN1_OCTET_STRING_cmp(%struct.asn1_string_st* noundef nonnull %issuerKeyHash, %struct.asn1_string_st* noundef nonnull %issuerKeyHash8) #3
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry, %if.end7
  %retval.0 = phi i32 [ %call9, %if.end7 ], [ %call, %entry ], [ %call4, %if.end ]
  ret i32 %retval.0
}

declare i32 @OBJ_cmp(%struct.asn1_object_st* noundef, %struct.asn1_object_st* noundef) local_unnamed_addr #2

declare i32 @ASN1_OCTET_STRING_cmp(%struct.asn1_string_st* noundef, %struct.asn1_string_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @OCSP_id_cmp(%struct.ocsp_cert_id_st* noundef %a, %struct.ocsp_cert_id_st* noundef %b) local_unnamed_addr #0 {
entry:
  %call = tail call i32 @OCSP_id_issuer_cmp(%struct.ocsp_cert_id_st* noundef %a, %struct.ocsp_cert_id_st* noundef %b) #4
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %serialNumber = getelementptr inbounds %struct.ocsp_cert_id_st, %struct.ocsp_cert_id_st* %a, i64 0, i32 3
  %serialNumber1 = getelementptr inbounds %struct.ocsp_cert_id_st, %struct.ocsp_cert_id_st* %b, i64 0, i32 3
  %call2 = tail call i32 @ASN1_INTEGER_cmp(%struct.asn1_string_st* noundef nonnull %serialNumber, %struct.asn1_string_st* noundef nonnull %serialNumber1) #3
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %call2, %if.end ], [ %call, %entry ]
  ret i32 %retval.0
}

declare i32 @ASN1_INTEGER_cmp(%struct.asn1_string_st* noundef, %struct.asn1_string_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define %struct.ocsp_cert_id_st* @OCSP_CERTID_dup(%struct.ocsp_cert_id_st* noundef %x) local_unnamed_addr #0 {
entry:
  %call = tail call %struct.ASN1_ITEM_st* @OCSP_CERTID_it() #3
  %0 = bitcast %struct.ocsp_cert_id_st* %x to i8*
  %call1 = tail call i8* @ASN1_item_dup(%struct.ASN1_ITEM_st* noundef %call, i8* noundef %0) #3
  %1 = bitcast i8* %call1 to %struct.ocsp_cert_id_st*
  ret %struct.ocsp_cert_id_st* %1
}

declare i8* @ASN1_item_dup(%struct.ASN1_ITEM_st* noundef, i8* noundef) local_unnamed_addr #2

declare %struct.ASN1_ITEM_st* @OCSP_CERTID_it() local_unnamed_addr #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nobuiltin nounwind "no-builtins" }
attributes #4 = { nobuiltin "no-builtins" }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{!"clang version 14.0.0"}
!4 = !{!5, !6, i64 0}
!5 = !{!"X509_algor_st", !6, i64 0, !6, i64 8}
!6 = !{!"any pointer", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!5, !6, i64 8}
!10 = !{!11, !12, i64 0}
!11 = !{!"asn1_type_st", !12, i64 0, !7, i64 8}
!12 = !{!"int", !7, i64 0}
!13 = !{!12, !12, i64 0}
!14 = !{!15, !6, i64 8}
!15 = !{!"asn1_string_st", !12, i64 0, !12, i64 4, !6, i64 8, !16, i64 16}
!16 = !{!"long", !7, i64 0}
!17 = !{!15, !12, i64 0}
!18 = !{!19, !6, i64 0}
!19 = !{!"ocsp_cert_id_st", !5, i64 0, !15, i64 16, !15, i64 40, !15, i64 64}
