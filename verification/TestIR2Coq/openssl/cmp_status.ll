; ModuleID = 'crypto/cmp/cmp_status.c'
source_filename = "crypto/cmp/cmp_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ossl_cmp_pkisi_st = type { %struct.asn1_string_st*, %struct.stack_st_ASN1_UTF8STRING*, %struct.asn1_string_st* }
%struct.stack_st_ASN1_UTF8STRING = type opaque
%struct.asn1_string_st = type { i32, i32, i8*, i64 }
%struct.stack_st = type opaque
%struct.ossl_cmp_ctx_st = type { %struct.ossl_lib_ctx_st*, i8*, i32 (i8*, i8*, i32, i32, i8*)*, i32, %struct.ossl_cmp_msg_st* (%struct.ossl_cmp_ctx_st*, %struct.ossl_cmp_msg_st*)*, i8*, %struct.ossl_http_req_ctx_st*, i8*, i8*, i32, i8*, i8*, i32, i32, i32, i64, %struct.bio_st* (%struct.bio_st*, i8*, i32, i32)*, i8*, i32, %struct.x509_st*, %struct.x509_st*, %struct.X509_name_st*, %struct.x509_store_st*, %struct.stack_st_X509*, i32, i32, i32, %struct.x509_st*, %struct.stack_st_X509*, %struct.evp_pkey_st*, %struct.asn1_string_st*, %struct.asn1_string_st*, i64, %struct.evp_md_st*, i32, i32, %struct.X509_name_st*, %struct.evp_md_st*, %struct.asn1_string_st*, %struct.asn1_string_st*, %struct.asn1_string_st*, %struct.asn1_string_st*, %struct.stack_st_OSSL_CMP_ITAV*, i32, i32, %struct.stack_st_X509*, %struct.evp_pkey_st*, i32, %struct.X509_name_st*, i32, %struct.X509_name_st*, %struct.stack_st_GENERAL_NAME*, i32, i32, %struct.stack_st_X509_EXTENSION*, %struct.stack_st_POLICYINFO*, i32, i32, %struct.x509_st*, %struct.X509_req_st*, i32, %struct.stack_st_OSSL_CMP_ITAV*, i32, %struct.stack_st_ASN1_UTF8STRING*, i32, %struct.x509_st*, %struct.stack_st_X509*, %struct.stack_st_X509*, %struct.stack_st_X509*, i32 (%struct.ossl_cmp_ctx_st*, %struct.x509_st*, i32, i8**)*, i8* }
%struct.ossl_lib_ctx_st = type opaque
%struct.ossl_cmp_msg_st = type { %struct.ossl_cmp_pkiheader_st*, %struct.ossl_cmp_pkibody_st*, %struct.asn1_string_st*, %struct.stack_st_X509*, %struct.ossl_lib_ctx_st*, i8* }
%struct.ossl_cmp_pkiheader_st = type { %struct.asn1_string_st*, %struct.GENERAL_NAME_st*, %struct.GENERAL_NAME_st*, %struct.asn1_string_st*, %struct.X509_algor_st*, %struct.asn1_string_st*, %struct.asn1_string_st*, %struct.asn1_string_st*, %struct.asn1_string_st*, %struct.asn1_string_st*, %struct.stack_st_ASN1_UTF8STRING*, %struct.stack_st_OSSL_CMP_ITAV* }
%struct.GENERAL_NAME_st = type { i32, %union.anon }
%union.anon = type { i8* }
%struct.X509_algor_st = type { %struct.asn1_object_st*, %struct.asn1_type_st* }
%struct.asn1_object_st = type opaque
%struct.asn1_type_st = type { i32, %union.anon.0 }
%union.anon.0 = type { i8* }
%struct.ossl_cmp_pkibody_st = type { i32, %union.anon.1 }
%union.anon.1 = type { %struct.stack_st_OSSL_CRMF_MSG* }
%struct.stack_st_OSSL_CRMF_MSG = type opaque
%struct.ossl_http_req_ctx_st = type opaque
%struct.bio_st = type opaque
%struct.x509_store_st = type opaque
%struct.evp_md_st = type opaque
%struct.evp_pkey_st = type opaque
%struct.X509_name_st = type { %struct.stack_st_X509_NAME_ENTRY*, i32, %struct.buf_mem_st*, i8*, i32 }
%struct.stack_st_X509_NAME_ENTRY = type opaque
%struct.buf_mem_st = type { i64, i8*, i64, i64 }
%struct.stack_st_GENERAL_NAME = type opaque
%struct.stack_st_X509_EXTENSION = type opaque
%struct.stack_st_POLICYINFO = type opaque
%struct.X509_req_st = type { %struct.X509_req_info_st, %struct.X509_algor_st, %struct.asn1_string_st*, i32, i8*, %struct.asn1_string_st*, %struct.ossl_lib_ctx_st*, i8* }
%struct.X509_req_info_st = type { %struct.ASN1_ENCODING_st, %struct.asn1_string_st*, %struct.X509_name_st*, %struct.X509_pubkey_st*, %struct.stack_st_X509_ATTRIBUTE* }
%struct.ASN1_ENCODING_st = type { i8*, i64, i32 }
%struct.X509_pubkey_st = type opaque
%struct.stack_st_X509_ATTRIBUTE = type opaque
%struct.stack_st_OSSL_CMP_ITAV = type opaque
%struct.x509_st = type { %struct.x509_cinf_st, %struct.X509_algor_st, %struct.asn1_string_st, %struct.x509_sig_info_st, i32, %struct.crypto_ex_data_st, i64, i64, i32, i32, i32, i32, %struct.asn1_string_st*, %struct.AUTHORITY_KEYID_st*, %struct.X509_POLICY_CACHE_st*, %struct.stack_st_DIST_POINT*, %struct.stack_st_GENERAL_NAME*, %struct.NAME_CONSTRAINTS_st*, %struct.stack_st_IPAddressFamily*, %struct.ASIdentifiers_st*, [20 x i8], %struct.x509_cert_aux_st*, i8*, i32, %struct.asn1_string_st*, %struct.ossl_lib_ctx_st*, i8* }
%struct.x509_cinf_st = type { %struct.asn1_string_st*, %struct.asn1_string_st, %struct.X509_algor_st, %struct.X509_name_st*, %struct.X509_val_st, %struct.X509_name_st*, %struct.X509_pubkey_st*, %struct.asn1_string_st*, %struct.asn1_string_st*, %struct.stack_st_X509_EXTENSION*, %struct.ASN1_ENCODING_st }
%struct.X509_val_st = type { %struct.asn1_string_st*, %struct.asn1_string_st* }
%struct.x509_sig_info_st = type { i32, i32, i32, i32 }
%struct.crypto_ex_data_st = type { %struct.ossl_lib_ctx_st*, %struct.stack_st_void* }
%struct.stack_st_void = type opaque
%struct.AUTHORITY_KEYID_st = type { %struct.asn1_string_st*, %struct.stack_st_GENERAL_NAME*, %struct.asn1_string_st* }
%struct.X509_POLICY_CACHE_st = type opaque
%struct.stack_st_DIST_POINT = type opaque
%struct.NAME_CONSTRAINTS_st = type { %struct.stack_st_GENERAL_SUBTREE*, %struct.stack_st_GENERAL_SUBTREE* }
%struct.stack_st_GENERAL_SUBTREE = type opaque
%struct.stack_st_IPAddressFamily = type opaque
%struct.ASIdentifiers_st = type { %struct.ASIdentifierChoice_st*, %struct.ASIdentifierChoice_st* }
%struct.ASIdentifierChoice_st = type { i32, %union.anon.2 }
%union.anon.2 = type { i32* }
%struct.x509_cert_aux_st = type { %struct.stack_st_ASN1_OBJECT*, %struct.stack_st_ASN1_OBJECT*, %struct.asn1_string_st*, %struct.asn1_string_st*, %struct.stack_st_X509_ALGOR* }
%struct.stack_st_ASN1_OBJECT = type opaque
%struct.stack_st_X509_ALGOR = type opaque
%struct.stack_st_X509 = type opaque

@.str = private unnamed_addr constant [20 x i8] c"PKIStatus: accepted\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"PKIStatus: granted with modifications\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"PKIStatus: rejection\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"PKIStatus: waiting\00", align 1
@.str.4 = private unnamed_addr constant [69 x i8] c"PKIStatus: revocation warning - a revocation of the cert is imminent\00", align 1
@.str.5 = private unnamed_addr constant [75 x i8] c"PKIStatus: revocation notification - a revocation of the cert has occurred\00", align 1
@.str.6 = private unnamed_addr constant [65 x i8] c"PKIStatus: key update warning - update already done for the cert\00", align 1
@.str.7 = private unnamed_addr constant [24 x i8] c"crypto/cmp/cmp_status.c\00", align 1
@__func__.ossl_cmp_PKIStatus_to_string = private unnamed_addr constant [29 x i8] c"ossl_cmp_PKIStatus_to_string\00", align 1
@.str.8 = private unnamed_addr constant [22 x i8] c"PKIStatus: invalid=%d\00", align 1
@__func__.ossl_cmp_pkisi_check_pkifailureinfo = private unnamed_addr constant [36 x i8] c"ossl_cmp_pkisi_check_pkifailureinfo\00", align 1
@__func__.OSSL_CMP_snprint_PKIStatusInfo = private unnamed_addr constant [31 x i8] c"OSSL_CMP_snprint_PKIStatusInfo\00", align 1
@__func__.OSSL_CMP_CTX_snprint_PKIStatus = private unnamed_addr constant [31 x i8] c"OSSL_CMP_CTX_snprint_PKIStatus\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.10 = private unnamed_addr constant [19 x i8] c"; PKIFailureInfo: \00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@.str.12 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.13 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.14 = private unnamed_addr constant [20 x i8] c"; <no failure info>\00", align 1
@.str.15 = private unnamed_addr constant [19 x i8] c"; StatusString%s: \00", align 1
@.str.16 = private unnamed_addr constant [2 x i8] c"s\00", align 1
@.str.17 = private unnamed_addr constant [9 x i8] c"\22%.*s\22%s\00", align 1
@.str.18 = private unnamed_addr constant [7 x i8] c"badAlg\00", align 1
@.str.19 = private unnamed_addr constant [16 x i8] c"badMessageCheck\00", align 1
@.str.20 = private unnamed_addr constant [11 x i8] c"badRequest\00", align 1
@.str.21 = private unnamed_addr constant [8 x i8] c"badTime\00", align 1
@.str.22 = private unnamed_addr constant [10 x i8] c"badCertId\00", align 1
@.str.23 = private unnamed_addr constant [14 x i8] c"badDataFormat\00", align 1
@.str.24 = private unnamed_addr constant [15 x i8] c"wrongAuthority\00", align 1
@.str.25 = private unnamed_addr constant [14 x i8] c"incorrectData\00", align 1
@.str.26 = private unnamed_addr constant [17 x i8] c"missingTimeStamp\00", align 1
@.str.27 = private unnamed_addr constant [7 x i8] c"badPOP\00", align 1
@.str.28 = private unnamed_addr constant [12 x i8] c"certRevoked\00", align 1
@.str.29 = private unnamed_addr constant [14 x i8] c"certConfirmed\00", align 1
@.str.30 = private unnamed_addr constant [15 x i8] c"wrongIntegrity\00", align 1
@.str.31 = private unnamed_addr constant [18 x i8] c"badRecipientNonce\00", align 1
@.str.32 = private unnamed_addr constant [17 x i8] c"timeNotAvailable\00", align 1
@.str.33 = private unnamed_addr constant [17 x i8] c"unacceptedPolicy\00", align 1
@.str.34 = private unnamed_addr constant [20 x i8] c"unacceptedExtension\00", align 1
@.str.35 = private unnamed_addr constant [20 x i8] c"addInfoNotAvailable\00", align 1
@.str.36 = private unnamed_addr constant [15 x i8] c"badSenderNonce\00", align 1
@.str.37 = private unnamed_addr constant [16 x i8] c"badCertTemplate\00", align 1
@.str.38 = private unnamed_addr constant [17 x i8] c"signerNotTrusted\00", align 1
@.str.39 = private unnamed_addr constant [19 x i8] c"transactionIdInUse\00", align 1
@.str.40 = private unnamed_addr constant [19 x i8] c"unsupportedVersion\00", align 1
@.str.41 = private unnamed_addr constant [14 x i8] c"notAuthorized\00", align 1
@.str.42 = private unnamed_addr constant [14 x i8] c"systemUnavail\00", align 1
@.str.43 = private unnamed_addr constant [14 x i8] c"systemFailure\00", align 1
@.str.44 = private unnamed_addr constant [17 x i8] c"duplicateCertReq\00", align 1
@reltable.ossl_cmp_PKIStatus_to_string = private unnamed_addr constant [7 x i32] [i32 trunc (i64 sub (i64 ptrtoint ([20 x i8]* @.str to i64), i64 ptrtoint ([7 x i32]* @reltable.ossl_cmp_PKIStatus_to_string to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint ([38 x i8]* @.str.1 to i64), i64 ptrtoint ([7 x i32]* @reltable.ossl_cmp_PKIStatus_to_string to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint ([21 x i8]* @.str.2 to i64), i64 ptrtoint ([7 x i32]* @reltable.ossl_cmp_PKIStatus_to_string to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint ([19 x i8]* @.str.3 to i64), i64 ptrtoint ([7 x i32]* @reltable.ossl_cmp_PKIStatus_to_string to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint ([69 x i8]* @.str.4 to i64), i64 ptrtoint ([7 x i32]* @reltable.ossl_cmp_PKIStatus_to_string to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint ([75 x i8]* @.str.5 to i64), i64 ptrtoint ([7 x i32]* @reltable.ossl_cmp_PKIStatus_to_string to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint ([65 x i8]* @.str.6 to i64), i64 ptrtoint ([7 x i32]* @reltable.ossl_cmp_PKIStatus_to_string to i64)) to i32)], align 4
@reltable.CMP_PKIFAILUREINFO_to_string = private unnamed_addr constant [27 x i32] [i32 trunc (i64 sub (i64 ptrtoint ([7 x i8]* @.str.18 to i64), i64 ptrtoint ([27 x i32]* @reltable.CMP_PKIFAILUREINFO_to_string to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint ([16 x i8]* @.str.19 to i64), i64 ptrtoint ([27 x i32]* @reltable.CMP_PKIFAILUREINFO_to_string to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint ([11 x i8]* @.str.20 to i64), i64 ptrtoint ([27 x i32]* @reltable.CMP_PKIFAILUREINFO_to_string to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint ([8 x i8]* @.str.21 to i64), i64 ptrtoint ([27 x i32]* @reltable.CMP_PKIFAILUREINFO_to_string to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint ([10 x i8]* @.str.22 to i64), i64 ptrtoint ([27 x i32]* @reltable.CMP_PKIFAILUREINFO_to_string to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint ([14 x i8]* @.str.23 to i64), i64 ptrtoint ([27 x i32]* @reltable.CMP_PKIFAILUREINFO_to_string to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint ([15 x i8]* @.str.24 to i64), i64 ptrtoint ([27 x i32]* @reltable.CMP_PKIFAILUREINFO_to_string to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint ([14 x i8]* @.str.25 to i64), i64 ptrtoint ([27 x i32]* @reltable.CMP_PKIFAILUREINFO_to_string to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint ([17 x i8]* @.str.26 to i64), i64 ptrtoint ([27 x i32]* @reltable.CMP_PKIFAILUREINFO_to_string to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint ([7 x i8]* @.str.27 to i64), i64 ptrtoint ([27 x i32]* @reltable.CMP_PKIFAILUREINFO_to_string to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint ([12 x i8]* @.str.28 to i64), i64 ptrtoint ([27 x i32]* @reltable.CMP_PKIFAILUREINFO_to_string to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint ([14 x i8]* @.str.29 to i64), i64 ptrtoint ([27 x i32]* @reltable.CMP_PKIFAILUREINFO_to_string to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint ([15 x i8]* @.str.30 to i64), i64 ptrtoint ([27 x i32]* @reltable.CMP_PKIFAILUREINFO_to_string to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint ([18 x i8]* @.str.31 to i64), i64 ptrtoint ([27 x i32]* @reltable.CMP_PKIFAILUREINFO_to_string to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint ([17 x i8]* @.str.32 to i64), i64 ptrtoint ([27 x i32]* @reltable.CMP_PKIFAILUREINFO_to_string to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint ([17 x i8]* @.str.33 to i64), i64 ptrtoint ([27 x i32]* @reltable.CMP_PKIFAILUREINFO_to_string to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint ([20 x i8]* @.str.34 to i64), i64 ptrtoint ([27 x i32]* @reltable.CMP_PKIFAILUREINFO_to_string to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint ([20 x i8]* @.str.35 to i64), i64 ptrtoint ([27 x i32]* @reltable.CMP_PKIFAILUREINFO_to_string to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint ([15 x i8]* @.str.36 to i64), i64 ptrtoint ([27 x i32]* @reltable.CMP_PKIFAILUREINFO_to_string to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint ([16 x i8]* @.str.37 to i64), i64 ptrtoint ([27 x i32]* @reltable.CMP_PKIFAILUREINFO_to_string to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint ([17 x i8]* @.str.38 to i64), i64 ptrtoint ([27 x i32]* @reltable.CMP_PKIFAILUREINFO_to_string to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint ([19 x i8]* @.str.39 to i64), i64 ptrtoint ([27 x i32]* @reltable.CMP_PKIFAILUREINFO_to_string to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint ([19 x i8]* @.str.40 to i64), i64 ptrtoint ([27 x i32]* @reltable.CMP_PKIFAILUREINFO_to_string to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint ([14 x i8]* @.str.41 to i64), i64 ptrtoint ([27 x i32]* @reltable.CMP_PKIFAILUREINFO_to_string to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint ([14 x i8]* @.str.42 to i64), i64 ptrtoint ([27 x i32]* @reltable.CMP_PKIFAILUREINFO_to_string to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint ([14 x i8]* @.str.43 to i64), i64 ptrtoint ([27 x i32]* @reltable.CMP_PKIFAILUREINFO_to_string to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint ([17 x i8]* @.str.44 to i64), i64 ptrtoint ([27 x i32]* @reltable.CMP_PKIFAILUREINFO_to_string to i64)) to i32)], align 4

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_cmp_pkisi_get_status(%struct.ossl_cmp_pkisi_st* noundef readonly %si) local_unnamed_addr #0 {
entry:
  %cmp.not = icmp eq %struct.ossl_cmp_pkisi_st* %si, null
  br i1 %cmp.not, label %return, label %land.rhs

land.rhs:                                         ; preds = %entry
  %status = getelementptr inbounds %struct.ossl_cmp_pkisi_st, %struct.ossl_cmp_pkisi_st* %si, i64 0, i32 0
  %0 = load %struct.asn1_string_st*, %struct.asn1_string_st** %status, align 8, !tbaa !4
  %cmp1.not = icmp eq %struct.asn1_string_st* %0, null
  br i1 %cmp1.not, label %return, label %if.end

if.end:                                           ; preds = %land.rhs
  %call = tail call i32 @ossl_cmp_asn1_get_int(%struct.asn1_string_st* noundef nonnull %0) #5
  br label %return

return:                                           ; preds = %entry, %land.rhs, %if.end
  %retval.0 = phi i32 [ %call, %if.end ], [ -1, %land.rhs ], [ -1, %entry ]
  ret i32 %retval.0
}

declare i32 @ossl_cmp_asn1_get_int(%struct.asn1_string_st* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define i8* @ossl_cmp_PKIStatus_to_string(i32 noundef %status) local_unnamed_addr #0 {
entry:
  %0 = icmp ult i32 %status, 7
  br i1 %0, label %switch.lookup, label %sw.default

sw.default:                                       ; preds = %entry
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0), i32 noundef 56, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.ossl_cmp_PKIStatus_to_string, i64 0, i64 0)) #5
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 58, i32 noundef 107, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8, i64 0, i64 0), i32 noundef %status) #5
  br label %return

switch.lookup:                                    ; preds = %entry
  %1 = sext i32 %status to i64
  %reltable.shift = shl i64 %1, 2
  %reltable.intrinsic = call i8* @llvm.load.relative.i64(i8* bitcast ([7 x i32]* @reltable.ossl_cmp_PKIStatus_to_string to i8*), i64 %reltable.shift)
  br label %return

return:                                           ; preds = %switch.lookup, %sw.default
  %retval.0 = phi i8* [ null, %sw.default ], [ %reltable.intrinsic, %switch.lookup ]
  ret i8* %retval.0
}

declare void @ERR_new() local_unnamed_addr #1

declare void @ERR_set_debug(i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #1

declare void @ERR_set_error(i32 noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define %struct.stack_st_ASN1_UTF8STRING* @ossl_cmp_pkisi_get0_statusString(%struct.ossl_cmp_pkisi_st* noundef readonly %si) local_unnamed_addr #2 {
entry:
  %cmp.not = icmp eq %struct.ossl_cmp_pkisi_st* %si, null
  br i1 %cmp.not, label %return, label %if.end

if.end:                                           ; preds = %entry
  %statusString = getelementptr inbounds %struct.ossl_cmp_pkisi_st, %struct.ossl_cmp_pkisi_st* %si, i64 0, i32 1
  %0 = load %struct.stack_st_ASN1_UTF8STRING*, %struct.stack_st_ASN1_UTF8STRING** %statusString, align 8, !tbaa !9
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi %struct.stack_st_ASN1_UTF8STRING* [ %0, %if.end ], [ null, %entry ]
  ret %struct.stack_st_ASN1_UTF8STRING* %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_cmp_pkisi_get_pkifailureinfo(%struct.ossl_cmp_pkisi_st* noundef readonly %si) local_unnamed_addr #0 {
entry:
  %cmp.not = icmp eq %struct.ossl_cmp_pkisi_st* %si, null
  br i1 %cmp.not, label %cleanup, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  %failInfo = getelementptr inbounds %struct.ossl_cmp_pkisi_st, %struct.ossl_cmp_pkisi_st* %si, i64 0, i32 2
  br label %for.body

for.body:                                         ; preds = %for.cond.preheader, %for.body
  %res.016 = phi i32 [ 0, %for.cond.preheader ], [ %res.1, %for.body ]
  %i.015 = phi i32 [ 0, %for.cond.preheader ], [ %inc, %for.body ]
  %0 = load %struct.asn1_string_st*, %struct.asn1_string_st** %failInfo, align 8, !tbaa !10
  %call = tail call i32 @ASN1_BIT_STRING_get_bit(%struct.asn1_string_st* noundef %0, i32 noundef %i.015) #5
  %tobool.not = icmp eq i32 %call, 0
  %shl = shl nuw nsw i32 1, %i.015
  %or = select i1 %tobool.not, i32 0, i32 %shl
  %res.1 = or i32 %or, %res.016
  %inc = add nuw nsw i32 %i.015, 1
  %exitcond.not = icmp eq i32 %inc, 27
  br i1 %exitcond.not, label %cleanup, label %for.body, !llvm.loop !11

cleanup:                                          ; preds = %for.body, %entry
  %retval.0 = phi i32 [ -1, %entry ], [ %res.1, %for.body ]
  ret i32 %retval.0
}

declare i32 @ASN1_BIT_STRING_get_bit(%struct.asn1_string_st* noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_cmp_pkisi_check_pkifailureinfo(%struct.ossl_cmp_pkisi_st* noundef readonly %si, i32 noundef %bit_index) local_unnamed_addr #0 {
entry:
  %cmp.not = icmp eq %struct.ossl_cmp_pkisi_st* %si, null
  br i1 %cmp.not, label %return, label %land.rhs

land.rhs:                                         ; preds = %entry
  %failInfo = getelementptr inbounds %struct.ossl_cmp_pkisi_st, %struct.ossl_cmp_pkisi_st* %si, i64 0, i32 2
  %0 = load %struct.asn1_string_st*, %struct.asn1_string_st** %failInfo, align 8, !tbaa !10
  %cmp1.not = icmp eq %struct.asn1_string_st* %0, null
  br i1 %cmp1.not, label %return, label %if.end

if.end:                                           ; preds = %land.rhs
  %1 = icmp ugt i32 %bit_index, 26
  br i1 %1, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0), i32 noundef 153, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @__func__.ossl_cmp_pkisi_check_pkifailureinfo, i64 0, i64 0)) #5
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 58, i32 noundef 100, i8* noundef null) #5
  br label %return

if.end6:                                          ; preds = %if.end
  %call = tail call i32 @ASN1_BIT_STRING_get_bit(%struct.asn1_string_st* noundef nonnull %0, i32 noundef %bit_index) #5
  br label %return

return:                                           ; preds = %entry, %land.rhs, %if.end6, %if.then5
  %retval.0 = phi i32 [ -1, %if.then5 ], [ %call, %if.end6 ], [ -1, %land.rhs ], [ -1, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i8* @OSSL_CMP_snprint_PKIStatusInfo(%struct.ossl_cmp_pkisi_st* noundef %statusInfo, i8* noundef %buf, i64 noundef %bufsize) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.ossl_cmp_pkisi_st* %statusInfo, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0), i32 noundef 240, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.OSSL_CMP_snprint_PKIStatusInfo, i64 0, i64 0)) #5
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 58, i32 noundef 103, i8* noundef null) #5
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call i32 @ossl_cmp_pkisi_get_pkifailureinfo(%struct.ossl_cmp_pkisi_st* noundef nonnull %statusInfo) #6
  %status = getelementptr inbounds %struct.ossl_cmp_pkisi_st, %struct.ossl_cmp_pkisi_st* %statusInfo, i64 0, i32 0
  %0 = load %struct.asn1_string_st*, %struct.asn1_string_st** %status, align 8, !tbaa !4
  %call1 = tail call i64 @ASN1_INTEGER_get(%struct.asn1_string_st* noundef %0) #5
  %conv = trunc i64 %call1 to i32
  %statusString = getelementptr inbounds %struct.ossl_cmp_pkisi_st, %struct.ossl_cmp_pkisi_st* %statusInfo, i64 0, i32 1
  %1 = load %struct.stack_st_ASN1_UTF8STRING*, %struct.stack_st_ASN1_UTF8STRING** %statusString, align 8, !tbaa !9
  %call2 = tail call fastcc i8* @snprint_PKIStatusInfo_parts(i32 noundef %conv, i32 noundef %call, %struct.stack_st_ASN1_UTF8STRING* noundef %1, i8* noundef %buf, i64 noundef %bufsize) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i8* [ null, %if.then ], [ %call2, %if.end ]
  ret i8* %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i8* @snprint_PKIStatusInfo_parts(i32 noundef %status, i32 noundef %fail_info, %struct.stack_st_ASN1_UTF8STRING* noundef %status_strings, i8* noundef %buf, i64 noundef %bufsize) unnamed_addr #0 {
entry:
  %cmp = icmp eq i8* %buf, null
  %cmp1 = icmp slt i32 %status, 0
  %or.cond = or i1 %cmp1, %cmp
  br i1 %or.cond, label %cleanup, label %lor.lhs.false2

lor.lhs.false2:                                   ; preds = %entry
  %call = tail call i8* @ossl_cmp_PKIStatus_to_string(i32 noundef %status) #6
  %cmp3 = icmp eq i8* %call, null
  br i1 %cmp3, label %cleanup, label %if.end

if.end:                                           ; preds = %lor.lhs.false2
  %call4 = tail call i32 (i8*, i64, i8*, ...) @BIO_snprintf(i8* noundef nonnull %buf, i64 noundef %bufsize, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0), i8* noundef nonnull %call) #5
  %cmp5 = icmp slt i32 %call4, 0
  br i1 %cmp5, label %cleanup, label %lor.lhs.false6

lor.lhs.false6:                                   ; preds = %if.end
  %conv213 = zext i32 %call4 to i64
  %cmp7.not = icmp ult i64 %conv213, %bufsize
  br i1 %cmp7.not, label %if.end10, label %cleanup

if.end10:                                         ; preds = %lor.lhs.false6
  %add.ptr = getelementptr inbounds i8, i8* %buf, i64 %conv213
  %sub = sub i64 %bufsize, %conv213
  %cmp12.not = icmp eq i32 %fail_info, 0
  br i1 %cmp12.not, label %if.end52, label %if.then14

if.then14:                                        ; preds = %if.end10
  %call15 = tail call i32 (i8*, i64, i8*, ...) @BIO_snprintf(i8* noundef %add.ptr, i64 noundef %sub, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.10, i64 0, i64 0)) #5
  %cmp16 = icmp slt i32 %call15, 0
  br i1 %cmp16, label %cleanup, label %lor.lhs.false18

lor.lhs.false18:                                  ; preds = %if.then14
  %conv19217 = zext i32 %call15 to i64
  %cmp20.not = icmp ugt i64 %sub, %conv19217
  br i1 %cmp20.not, label %if.end23, label %cleanup

if.end23:                                         ; preds = %lor.lhs.false18
  %add.ptr25 = getelementptr inbounds i8, i8* %add.ptr, i64 %conv19217
  %sub27 = sub i64 %sub, %conv19217
  br label %for.body

for.body:                                         ; preds = %if.end23, %for.inc
  %write_ptr.0227 = phi i8* [ %add.ptr25, %if.end23 ], [ %write_ptr.1, %for.inc ]
  %failinfo_found.0226 = phi i32 [ 0, %if.end23 ], [ %failinfo_found.1, %for.inc ]
  %bufsize.addr.0225 = phi i64 [ %sub27, %if.end23 ], [ %bufsize.addr.1, %for.inc ]
  %failure.0223 = phi i32 [ 0, %if.end23 ], [ %inc, %for.inc ]
  %shl = shl nuw nsw i32 1, %failure.0223
  %and = and i32 %shl, %fail_info
  %cmp30.not = icmp eq i32 %and, 0
  br i1 %cmp30.not, label %for.inc, label %if.then32

if.then32:                                        ; preds = %for.body
  %call33 = tail call fastcc i8* @CMP_PKIFAILUREINFO_to_string(i32 noundef %failure.0223) #6
  %cmp34.not = icmp eq i8* %call33, null
  br i1 %cmp34.not, label %for.inc, label %if.then36

if.then36:                                        ; preds = %if.then32
  %tobool.not = icmp eq i32 %failinfo_found.0226, 0
  %cond = select i1 %tobool.not, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i64 0, i64 0)
  %call37 = tail call i32 (i8*, i64, i8*, ...) @BIO_snprintf(i8* noundef %write_ptr.0227, i64 noundef %bufsize.addr.0225, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0), i8* noundef %cond, i8* noundef nonnull %call33) #5
  %cmp38 = icmp slt i32 %call37, 0
  br i1 %cmp38, label %cleanup, label %lor.lhs.false40

lor.lhs.false40:                                  ; preds = %if.then36
  %conv41218 = zext i32 %call37 to i64
  %cmp42.not = icmp ugt i64 %bufsize.addr.0225, %conv41218
  br i1 %cmp42.not, label %if.end45, label %cleanup

if.end45:                                         ; preds = %lor.lhs.false40
  %add.ptr47 = getelementptr inbounds i8, i8* %write_ptr.0227, i64 %conv41218
  %sub49 = sub i64 %bufsize.addr.0225, %conv41218
  br label %for.inc

for.inc:                                          ; preds = %for.body, %if.end45, %if.then32
  %bufsize.addr.1 = phi i64 [ %sub49, %if.end45 ], [ %bufsize.addr.0225, %if.then32 ], [ %bufsize.addr.0225, %for.body ]
  %failinfo_found.1 = phi i32 [ 1, %if.end45 ], [ %failinfo_found.0226, %if.then32 ], [ %failinfo_found.0226, %for.body ]
  %write_ptr.1 = phi i8* [ %add.ptr47, %if.end45 ], [ %write_ptr.0227, %if.then32 ], [ %write_ptr.0227, %for.body ]
  %inc = add nuw nsw i32 %failure.0223, 1
  %exitcond.not = icmp eq i32 %inc, 27
  br i1 %exitcond.not, label %if.end52, label %for.body, !llvm.loop !13

if.end52:                                         ; preds = %for.inc, %if.end10
  %bufsize.addr.2 = phi i64 [ %sub, %if.end10 ], [ %bufsize.addr.1, %for.inc ]
  %failinfo_found.2 = phi i32 [ 0, %if.end10 ], [ %failinfo_found.1, %for.inc ]
  %write_ptr.2 = phi i8* [ %add.ptr, %if.end10 ], [ %write_ptr.1, %for.inc ]
  %tobool53 = icmp eq i32 %failinfo_found.2, 0
  %0 = icmp ugt i32 %status, 1
  %1 = and i1 %0, %tobool53
  br i1 %1, label %if.then59, label %if.end73

if.then59:                                        ; preds = %if.end52
  %call60 = tail call i32 (i8*, i64, i8*, ...) @BIO_snprintf(i8* noundef %write_ptr.2, i64 noundef %bufsize.addr.2, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.14, i64 0, i64 0)) #5
  %cmp61 = icmp slt i32 %call60, 0
  br i1 %cmp61, label %cleanup, label %lor.lhs.false63

lor.lhs.false63:                                  ; preds = %if.then59
  %conv64214 = zext i32 %call60 to i64
  %cmp65.not = icmp ugt i64 %bufsize.addr.2, %conv64214
  br i1 %cmp65.not, label %if.end68, label %cleanup

if.end68:                                         ; preds = %lor.lhs.false63
  %add.ptr70 = getelementptr inbounds i8, i8* %write_ptr.2, i64 %conv64214
  %sub72 = sub i64 %bufsize.addr.2, %conv64214
  br label %if.end73

if.end73:                                         ; preds = %if.end68, %if.end52
  %bufsize.addr.3 = phi i64 [ %sub72, %if.end68 ], [ %bufsize.addr.2, %if.end52 ]
  %write_ptr.3 = phi i8* [ %add.ptr70, %if.end68 ], [ %write_ptr.2, %if.end52 ]
  %call74 = tail call fastcc %struct.stack_st* @ossl_check_const_ASN1_UTF8STRING_sk_type(%struct.stack_st_ASN1_UTF8STRING* noundef %status_strings) #6
  %call75 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call74) #5
  %cmp76 = icmp sgt i32 %call75, 0
  br i1 %cmp76, label %if.then78, label %cleanup

if.then78:                                        ; preds = %if.end73
  %cmp79.not = icmp eq i32 %call75, 1
  %cond81 = select i1 %cmp79.not, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i64 0, i64 0)
  %call82 = tail call i32 (i8*, i64, i8*, ...) @BIO_snprintf(i8* noundef %write_ptr.3, i64 noundef %bufsize.addr.3, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.15, i64 0, i64 0), i8* noundef %cond81) #5
  %cmp83 = icmp slt i32 %call82, 0
  br i1 %cmp83, label %cleanup, label %lor.lhs.false85

lor.lhs.false85:                                  ; preds = %if.then78
  %conv86215 = zext i32 %call82 to i64
  %cmp87.not = icmp ugt i64 %bufsize.addr.3, %conv86215
  br i1 %cmp87.not, label %for.body98.lr.ph, label %cleanup

for.body98.lr.ph:                                 ; preds = %lor.lhs.false85
  %sub94 = sub i64 %bufsize.addr.3, %conv86215
  %add.ptr92 = getelementptr inbounds i8, i8* %write_ptr.3, i64 %conv86215
  %sub103 = add nsw i32 %call75, -1
  br label %for.body98

for.body98:                                       ; preds = %for.body98.lr.ph, %if.end115
  %write_ptr.4231 = phi i8* [ %add.ptr92, %for.body98.lr.ph ], [ %add.ptr117, %if.end115 ]
  %i.0230 = phi i32 [ 0, %for.body98.lr.ph ], [ %inc121, %if.end115 ]
  %bufsize.addr.4229 = phi i64 [ %sub94, %for.body98.lr.ph ], [ %sub119, %if.end115 ]
  %call100 = tail call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call74, i32 noundef %i.0230) #5
  %2 = bitcast i8* %call100 to %struct.asn1_string_st*
  %call101 = tail call i32 @ASN1_STRING_length(%struct.asn1_string_st* noundef %2) #5
  %call102 = tail call i8* @ASN1_STRING_get0_data(%struct.asn1_string_st* noundef %2) #5
  %cmp104 = icmp slt i32 %i.0230, %sub103
  %cond106 = select i1 %cmp104, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.13, i64 0, i64 0)
  %call107 = tail call i32 (i8*, i64, i8*, ...) @BIO_snprintf(i8* noundef %write_ptr.4231, i64 noundef %bufsize.addr.4229, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.17, i64 0, i64 0), i32 noundef %call101, i8* noundef %call102, i8* noundef %cond106) #5
  %cmp108 = icmp slt i32 %call107, 0
  br i1 %cmp108, label %cleanup, label %lor.lhs.false110

lor.lhs.false110:                                 ; preds = %for.body98
  %conv111216 = zext i32 %call107 to i64
  %cmp112.not = icmp ugt i64 %bufsize.addr.4229, %conv111216
  br i1 %cmp112.not, label %if.end115, label %cleanup

if.end115:                                        ; preds = %lor.lhs.false110
  %add.ptr117 = getelementptr inbounds i8, i8* %write_ptr.4231, i64 %conv111216
  %sub119 = sub i64 %bufsize.addr.4229, %conv111216
  %inc121 = add nuw nsw i32 %i.0230, 1
  %exitcond235.not = icmp eq i32 %inc121, %call75
  br i1 %exitcond235.not, label %cleanup, label %for.body98, !llvm.loop !14

cleanup:                                          ; preds = %if.then36, %lor.lhs.false40, %lor.lhs.false110, %for.body98, %if.end115, %if.end73, %if.then78, %lor.lhs.false85, %if.then59, %lor.lhs.false63, %if.then14, %lor.lhs.false18, %if.end, %lor.lhs.false6, %entry, %lor.lhs.false2
  %retval.0 = phi i8* [ null, %lor.lhs.false2 ], [ null, %entry ], [ null, %lor.lhs.false6 ], [ null, %if.end ], [ null, %lor.lhs.false18 ], [ null, %if.then14 ], [ null, %lor.lhs.false63 ], [ null, %if.then59 ], [ null, %lor.lhs.false85 ], [ null, %if.then78 ], [ %buf, %if.end73 ], [ null, %lor.lhs.false110 ], [ null, %for.body98 ], [ %buf, %if.end115 ], [ null, %lor.lhs.false40 ], [ null, %if.then36 ]
  ret i8* %retval.0
}

declare i64 @ASN1_INTEGER_get(%struct.asn1_string_st* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define i8* @OSSL_CMP_CTX_snprint_PKIStatus(%struct.ossl_cmp_ctx_st* noundef %ctx, i8* noundef %buf, i64 noundef %bufsize) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.ossl_cmp_ctx_st* %ctx, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0), i32 noundef 255, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.OSSL_CMP_CTX_snprint_PKIStatus, i64 0, i64 0)) #5
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 58, i32 noundef 103, i8* noundef null) #5
  br label %return

if.end:                                           ; preds = %entry
  %call = tail call i32 @OSSL_CMP_CTX_get_status(%struct.ossl_cmp_ctx_st* noundef nonnull %ctx) #5
  %call1 = tail call i32 @OSSL_CMP_CTX_get_failInfoCode(%struct.ossl_cmp_ctx_st* noundef nonnull %ctx) #5
  %call2 = tail call %struct.stack_st_ASN1_UTF8STRING* @OSSL_CMP_CTX_get0_statusString(%struct.ossl_cmp_ctx_st* noundef nonnull %ctx) #5
  %call3 = tail call fastcc i8* @snprint_PKIStatusInfo_parts(i32 noundef %call, i32 noundef %call1, %struct.stack_st_ASN1_UTF8STRING* noundef %call2, i8* noundef %buf, i64 noundef %bufsize) #6
  br label %return

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi i8* [ null, %if.then ], [ %call3, %if.end ]
  ret i8* %retval.0
}

declare i32 @OSSL_CMP_CTX_get_status(%struct.ossl_cmp_ctx_st* noundef) local_unnamed_addr #1

declare i32 @OSSL_CMP_CTX_get_failInfoCode(%struct.ossl_cmp_ctx_st* noundef) local_unnamed_addr #1

declare %struct.stack_st_ASN1_UTF8STRING* @OSSL_CMP_CTX_get0_statusString(%struct.ossl_cmp_ctx_st* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define %struct.ossl_cmp_pkisi_st* @OSSL_CMP_STATUSINFO_new(i32 noundef %status, i32 noundef %fail_info, i8* noundef %text) local_unnamed_addr #0 {
entry:
  %call = tail call %struct.ossl_cmp_pkisi_st* @OSSL_CMP_PKISI_new() #5
  %cmp = icmp eq %struct.ossl_cmp_pkisi_st* %call, null
  br i1 %cmp, label %err, label %if.end

if.end:                                           ; preds = %entry
  %status1 = getelementptr inbounds %struct.ossl_cmp_pkisi_st, %struct.ossl_cmp_pkisi_st* %call, i64 0, i32 0
  %0 = load %struct.asn1_string_st*, %struct.asn1_string_st** %status1, align 8, !tbaa !4
  %conv = sext i32 %status to i64
  %call2 = tail call i32 @ASN1_INTEGER_set(%struct.asn1_string_st* noundef %0, i64 noundef %conv) #5
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %err, label %if.end4

if.end4:                                          ; preds = %if.end
  %cmp5.not = icmp eq i8* %text, null
  br i1 %cmp5.not, label %if.end27, label %if.then7

if.then7:                                         ; preds = %if.end4
  %call8 = tail call %struct.asn1_string_st* @ASN1_UTF8STRING_new() #5
  %cmp9 = icmp eq %struct.asn1_string_st* %call8, null
  br i1 %cmp9, label %err, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then7
  %call11 = tail call i32 @ASN1_STRING_set(%struct.asn1_string_st* noundef nonnull %call8, i8* noundef nonnull %text, i32 noundef -1) #5
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %err, label %if.end14

if.end14:                                         ; preds = %lor.lhs.false
  %call15 = tail call %struct.stack_st* @OPENSSL_sk_new_null() #5
  %statusString = getelementptr inbounds %struct.ossl_cmp_pkisi_st, %struct.ossl_cmp_pkisi_st* %call, i64 0, i32 1
  %1 = bitcast %struct.stack_st_ASN1_UTF8STRING** %statusString to %struct.stack_st**
  store %struct.stack_st* %call15, %struct.stack_st** %1, align 8, !tbaa !9
  %cmp16 = icmp eq %struct.stack_st* %call15, null
  br i1 %cmp16, label %err, label %if.end19

if.end19:                                         ; preds = %if.end14
  %2 = bitcast %struct.stack_st* %call15 to %struct.stack_st_ASN1_UTF8STRING*
  %call21 = tail call fastcc %struct.stack_st* @ossl_check_ASN1_UTF8STRING_sk_type(%struct.stack_st_ASN1_UTF8STRING* noundef nonnull %2) #6
  %3 = bitcast %struct.asn1_string_st* %call8 to i8*
  %call23 = tail call i32 @OPENSSL_sk_push(%struct.stack_st* noundef %call21, i8* noundef nonnull %3) #5
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %err, label %if.end27

if.end27:                                         ; preds = %if.end19, %if.end4
  %failInfo = getelementptr inbounds %struct.ossl_cmp_pkisi_st, %struct.ossl_cmp_pkisi_st* %call, i64 0, i32 2
  br label %for.body

for.body:                                         ; preds = %if.end27, %for.inc
  %failure.066 = phi i32 [ 0, %if.end27 ], [ %inc, %for.inc ]
  %shl = shl nuw nsw i32 1, %failure.066
  %and = and i32 %shl, %fail_info
  %cmp30.not = icmp eq i32 %and, 0
  br i1 %cmp30.not, label %for.inc, label %if.then32

if.then32:                                        ; preds = %for.body
  %4 = load %struct.asn1_string_st*, %struct.asn1_string_st** %failInfo, align 8, !tbaa !10
  %cmp33 = icmp eq %struct.asn1_string_st* %4, null
  br i1 %cmp33, label %land.lhs.true, label %if.end40

land.lhs.true:                                    ; preds = %if.then32
  %call35 = tail call %struct.asn1_string_st* @ASN1_BIT_STRING_new() #5
  store %struct.asn1_string_st* %call35, %struct.asn1_string_st** %failInfo, align 8, !tbaa !10
  %cmp37 = icmp eq %struct.asn1_string_st* %call35, null
  br i1 %cmp37, label %err, label %if.end40

if.end40:                                         ; preds = %land.lhs.true, %if.then32
  %5 = phi %struct.asn1_string_st* [ %call35, %land.lhs.true ], [ %4, %if.then32 ]
  %call42 = tail call i32 @ASN1_BIT_STRING_set_bit(%struct.asn1_string_st* noundef nonnull %5, i32 noundef %failure.066, i32 noundef 1) #5
  %tobool43.not = icmp eq i32 %call42, 0
  br i1 %tobool43.not, label %err, label %for.inc

for.inc:                                          ; preds = %for.body, %if.end40
  %inc = add nuw nsw i32 %failure.066, 1
  %exitcond.not = icmp eq i32 %inc, 27
  br i1 %exitcond.not, label %cleanup, label %for.body, !llvm.loop !15

err:                                              ; preds = %if.end40, %land.lhs.true, %if.end19, %if.end14, %if.then7, %lor.lhs.false, %if.end, %entry
  %utf8_text.1 = phi %struct.asn1_string_st* [ null, %entry ], [ null, %if.then7 ], [ %call8, %if.end14 ], [ %call8, %if.end19 ], [ %call8, %lor.lhs.false ], [ null, %if.end ], [ null, %land.lhs.true ], [ null, %if.end40 ]
  tail call void @OSSL_CMP_PKISI_free(%struct.ossl_cmp_pkisi_st* noundef %call) #5
  tail call void @ASN1_UTF8STRING_free(%struct.asn1_string_st* noundef %utf8_text.1) #5
  br label %cleanup

cleanup:                                          ; preds = %for.inc, %err
  %retval.0 = phi %struct.ossl_cmp_pkisi_st* [ null, %err ], [ %call, %for.inc ]
  ret %struct.ossl_cmp_pkisi_st* %retval.0
}

declare %struct.ossl_cmp_pkisi_st* @OSSL_CMP_PKISI_new() local_unnamed_addr #1

declare i32 @ASN1_INTEGER_set(%struct.asn1_string_st* noundef, i64 noundef) local_unnamed_addr #1

declare %struct.asn1_string_st* @ASN1_UTF8STRING_new() local_unnamed_addr #1

declare i32 @ASN1_STRING_set(%struct.asn1_string_st* noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

declare %struct.stack_st* @OPENSSL_sk_new_null() local_unnamed_addr #1

declare i32 @OPENSSL_sk_push(%struct.stack_st* noundef, i8* noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_ASN1_UTF8STRING_sk_type(%struct.stack_st_ASN1_UTF8STRING* noundef readnone %sk) unnamed_addr #3 {
entry:
  %0 = bitcast %struct.stack_st_ASN1_UTF8STRING* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

declare %struct.asn1_string_st* @ASN1_BIT_STRING_new() local_unnamed_addr #1

declare i32 @ASN1_BIT_STRING_set_bit(%struct.asn1_string_st* noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare void @OSSL_CMP_PKISI_free(%struct.ossl_cmp_pkisi_st* noundef) local_unnamed_addr #1

declare void @ASN1_UTF8STRING_free(%struct.asn1_string_st* noundef) local_unnamed_addr #1

declare i32 @BIO_snprintf(i8* noundef, i64 noundef, i8* noundef, ...) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc i8* @CMP_PKIFAILUREINFO_to_string(i32 noundef %number) unnamed_addr #3 {
entry:
  %0 = icmp ult i32 %number, 27
  br i1 %0, label %switch.lookup, label %return

switch.lookup:                                    ; preds = %entry
  %1 = sext i32 %number to i64
  %reltable.shift = shl i64 %1, 2
  %reltable.intrinsic = call i8* @llvm.load.relative.i64(i8* bitcast ([27 x i32]* @reltable.CMP_PKIFAILUREINFO_to_string to i8*), i64 %reltable.shift)
  br label %return

return:                                           ; preds = %entry, %switch.lookup
  %retval.0 = phi i8* [ %reltable.intrinsic, %switch.lookup ], [ null, %entry ]
  ret i8* %retval.0
}

declare i32 @OPENSSL_sk_num(%struct.stack_st* noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_const_ASN1_UTF8STRING_sk_type(%struct.stack_st_ASN1_UTF8STRING* noundef readnone %sk) unnamed_addr #3 {
entry:
  %0 = bitcast %struct.stack_st_ASN1_UTF8STRING* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

declare i8* @OPENSSL_sk_value(%struct.stack_st* noundef, i32 noundef) local_unnamed_addr #1

declare i32 @ASN1_STRING_length(%struct.asn1_string_st* noundef) local_unnamed_addr #1

declare i8* @ASN1_STRING_get0_data(%struct.asn1_string_st* noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nosync nounwind readonly willreturn
declare i8* @llvm.load.relative.i64(i8*, i64) #4

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly nofree nosync nounwind readonly willreturn }
attributes #5 = { nobuiltin nounwind "no-builtins" }
attributes #6 = { nobuiltin "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{!"clang version 14.0.0"}
!4 = !{!5, !6, i64 0}
!5 = !{!"ossl_cmp_pkisi_st", !6, i64 0, !6, i64 8, !6, i64 16}
!6 = !{!"any pointer", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!5, !6, i64 8}
!10 = !{!5, !6, i64 16}
!11 = distinct !{!11, !12}
!12 = !{!"llvm.loop.mustprogress"}
!13 = distinct !{!13, !12}
!14 = distinct !{!14, !12}
!15 = distinct !{!15, !12}
