; ModuleID = 'crypto/ts/ts_rsp_verify.c'
source_filename = "crypto/ts/ts_rsp_verify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.anon = type { i32, i8* }
%struct.pkcs7_st = type { i8*, i64, i32, i32, %struct.asn1_object_st*, %union.anon, %struct.PKCS7_CTX_st }
%struct.asn1_object_st = type opaque
%union.anon = type { i8* }
%struct.PKCS7_CTX_st = type { %struct.ossl_lib_ctx_st*, i8* }
%struct.ossl_lib_ctx_st = type opaque
%struct.stack_st_X509 = type opaque
%struct.x509_store_st = type opaque
%struct.x509_st = type opaque
%struct.stack_st_PKCS7_SIGNER_INFO = type opaque
%struct.stack_st = type opaque
%struct.pkcs7_signer_info_st = type { %struct.asn1_string_st*, %struct.pkcs7_issuer_and_serial_st*, %struct.X509_algor_st*, %struct.stack_st_X509_ATTRIBUTE*, %struct.X509_algor_st*, %struct.asn1_string_st*, %struct.stack_st_X509_ATTRIBUTE*, %struct.evp_pkey_st*, %struct.PKCS7_CTX_st* }
%struct.pkcs7_issuer_and_serial_st = type { %struct.X509_name_st*, %struct.asn1_string_st* }
%struct.X509_name_st = type opaque
%struct.X509_algor_st = type { %struct.asn1_object_st*, %struct.asn1_type_st* }
%struct.asn1_type_st = type { i32, %union.anon.0 }
%union.anon.0 = type { i8* }
%struct.asn1_string_st = type { i32, i32, i8*, i64 }
%struct.stack_st_X509_ATTRIBUTE = type opaque
%struct.evp_pkey_st = type opaque
%struct.pkcs7_signed_st = type { %struct.asn1_string_st*, %struct.stack_st_X509_ALGOR*, %struct.stack_st_X509*, %struct.stack_st_X509_CRL*, %struct.stack_st_PKCS7_SIGNER_INFO*, %struct.pkcs7_st* }
%struct.stack_st_X509_ALGOR = type opaque
%struct.stack_st_X509_CRL = type opaque
%struct.bio_st = type opaque
%struct.x509_store_ctx_st = type opaque
%struct.ESS_signing_cert = type { %struct.stack_st_ESS_CERT_ID*, %struct.stack_st_POLICYINFO* }
%struct.stack_st_ESS_CERT_ID = type opaque
%struct.stack_st_POLICYINFO = type opaque
%struct.ESS_signing_cert_v2_st = type { %struct.stack_st_ESS_CERT_ID_V2*, %struct.stack_st_POLICYINFO* }
%struct.stack_st_ESS_CERT_ID_V2 = type opaque
%struct.TS_verify_ctx = type { i32, %struct.x509_store_st*, %struct.stack_st_X509*, %struct.asn1_object_st*, %struct.X509_algor_st*, i8*, i32, %struct.bio_st*, %struct.asn1_string_st*, %struct.GENERAL_NAME_st* }
%struct.GENERAL_NAME_st = type { i32, %union.anon.1 }
%union.anon.1 = type { i8* }
%struct.TS_resp_st = type { %struct.TS_status_info_st*, %struct.pkcs7_st*, %struct.TS_tst_info_st* }
%struct.TS_status_info_st = type { %struct.asn1_string_st*, %struct.stack_st_ASN1_UTF8STRING*, %struct.asn1_string_st* }
%struct.stack_st_ASN1_UTF8STRING = type opaque
%struct.TS_tst_info_st = type { %struct.asn1_string_st*, %struct.asn1_object_st*, %struct.TS_msg_imprint_st*, %struct.asn1_string_st*, %struct.asn1_string_st*, %struct.TS_accuracy_st*, i32, %struct.asn1_string_st*, %struct.GENERAL_NAME_st*, %struct.stack_st_X509_EXTENSION* }
%struct.TS_msg_imprint_st = type { %struct.X509_algor_st*, %struct.asn1_string_st* }
%struct.TS_accuracy_st = type { %struct.asn1_string_st*, %struct.asn1_string_st*, %struct.asn1_string_st* }
%struct.stack_st_X509_EXTENSION = type opaque
%struct.evp_md_st = type opaque
%struct.evp_md_ctx_st = type opaque
%struct.stack_st_GENERAL_NAME = type opaque

@.str = private unnamed_addr constant [26 x i8] c"crypto/ts/ts_rsp_verify.c\00", align 1
@__func__.TS_RESP_verify_signature = private unnamed_addr constant [25 x i8] c"TS_RESP_verify_signature\00", align 1
@__func__.ts_verify_cert = private unnamed_addr constant [15 x i8] c"ts_verify_cert\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"Verify error:%s\00", align 1
@__func__.int_ts_RESP_verify_token = private unnamed_addr constant [25 x i8] c"int_ts_RESP_verify_token\00", align 1
@__func__.ts_check_policy = private unnamed_addr constant [16 x i8] c"ts_check_policy\00", align 1
@__func__.ts_check_imprints = private unnamed_addr constant [18 x i8] c"ts_check_imprints\00", align 1
@__func__.ts_compute_imprint = private unnamed_addr constant [19 x i8] c"ts_compute_imprint\00", align 1
@__func__.ts_check_nonces = private unnamed_addr constant [16 x i8] c"ts_check_nonces\00", align 1
@reltable.ts_check_status_info = internal unnamed_addr constant [6 x i32] [i32 trunc (i64 sub (i64 ptrtoint ([8 x i8]* @.str.6 to i64), i64 ptrtoint ([6 x i32]* @reltable.ts_check_status_info to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint ([16 x i8]* @.str.7 to i64), i64 ptrtoint ([6 x i32]* @reltable.ts_check_status_info to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint ([10 x i8]* @.str.8 to i64), i64 ptrtoint ([6 x i32]* @reltable.ts_check_status_info to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint ([8 x i8]* @.str.9 to i64), i64 ptrtoint ([6 x i32]* @reltable.ts_check_status_info to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint ([18 x i8]* @.str.10 to i64), i64 ptrtoint ([6 x i32]* @reltable.ts_check_status_info to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint ([23 x i8]* @.str.11 to i64), i64 ptrtoint ([6 x i32]* @reltable.ts_check_status_info to i64)) to i32)], align 4
@.str.2 = private unnamed_addr constant [13 x i8] c"unknown code\00", align 1
@ts_failure_info = internal unnamed_addr constant [8 x %struct.anon] [%struct.anon { i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i32 0, i32 0) }, %struct.anon { i32 2, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.14, i32 0, i32 0) }, %struct.anon { i32 5, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.15, i32 0, i32 0) }, %struct.anon { i32 14, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.16, i32 0, i32 0) }, %struct.anon { i32 15, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.17, i32 0, i32 0) }, %struct.anon { i32 16, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.18, i32 0, i32 0) }, %struct.anon { i32 17, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.19, i32 0, i32 0) }, %struct.anon { i32 25, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.20, i32 0, i32 0) }], align 16
@.str.3 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"unspecified\00", align 1
@__func__.ts_check_status_info = private unnamed_addr constant [21 x i8] c"ts_check_status_info\00", align 1
@.str.5 = private unnamed_addr constant [52 x i8] c"status code: %s, status text: %s, failure codes: %s\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"granted\00", align 1
@.str.7 = private unnamed_addr constant [16 x i8] c"grantedWithMods\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"rejection\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"waiting\00", align 1
@.str.10 = private unnamed_addr constant [18 x i8] c"revocationWarning\00", align 1
@.str.11 = private unnamed_addr constant [23 x i8] c"revocationNotification\00", align 1
@.str.12 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.13 = private unnamed_addr constant [7 x i8] c"badAlg\00", align 1
@.str.14 = private unnamed_addr constant [11 x i8] c"badRequest\00", align 1
@.str.15 = private unnamed_addr constant [14 x i8] c"badDataFormat\00", align 1
@.str.16 = private unnamed_addr constant [17 x i8] c"timeNotAvailable\00", align 1
@.str.17 = private unnamed_addr constant [17 x i8] c"unacceptedPolicy\00", align 1
@.str.18 = private unnamed_addr constant [20 x i8] c"unacceptedExtension\00", align 1
@.str.19 = private unnamed_addr constant [20 x i8] c"addInfoNotAvailable\00", align 1
@.str.20 = private unnamed_addr constant [14 x i8] c"systemFailure\00", align 1

; Function Attrs: noinline nounwind uwtable
define i32 @TS_RESP_verify_signature(%struct.pkcs7_st* noundef %token, %struct.stack_st_X509* noundef %certs, %struct.x509_store_st* noundef %store, %struct.x509_st** noundef writeonly %signer_out) local_unnamed_addr #0 {
entry:
  %chain = alloca %struct.stack_st_X509*, align 8
  %buf = alloca [4096 x i8], align 16
  %0 = bitcast %struct.stack_st_X509** %chain to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #8
  store %struct.stack_st_X509* null, %struct.stack_st_X509** %chain, align 8, !tbaa !4
  %1 = getelementptr inbounds [4096 x i8], [4096 x i8]* %buf, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 4096, i8* nonnull %1) #8
  %tobool.not = icmp eq %struct.pkcs7_st* %token, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #9
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 noundef 103, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.TS_RESP_verify_signature, i64 0, i64 0)) #9
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 47, i32 noundef 102, i8* noundef null) #9
  br label %err

if.end:                                           ; preds = %entry
  %type = getelementptr inbounds %struct.pkcs7_st, %struct.pkcs7_st* %token, i64 0, i32 4
  %2 = load %struct.asn1_object_st*, %struct.asn1_object_st** %type, align 8, !tbaa !8
  %call = tail call i32 @OBJ_obj2nid(%struct.asn1_object_st* noundef %2) #9
  %cmp = icmp eq i32 %call, 22
  br i1 %cmp, label %if.end2, label %if.then1

if.then1:                                         ; preds = %if.end
  tail call void @ERR_new() #9
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 noundef 107, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.TS_RESP_verify_signature, i64 0, i64 0)) #9
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 47, i32 noundef 114, i8* noundef null) #9
  br label %err

if.end2:                                          ; preds = %if.end
  %call3 = tail call %struct.stack_st_PKCS7_SIGNER_INFO* @PKCS7_get_signer_info(%struct.pkcs7_st* noundef nonnull %token) #9
  %tobool4.not = icmp eq %struct.stack_st_PKCS7_SIGNER_INFO* %call3, null
  br i1 %tobool4.not, label %if.then8, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end2
  %call5 = tail call fastcc %struct.stack_st* @ossl_check_const_PKCS7_SIGNER_INFO_sk_type(%struct.stack_st_PKCS7_SIGNER_INFO* noundef nonnull %call3) #10
  %call6 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call5) #9
  %cmp7.not = icmp eq i32 %call6, 1
  br i1 %cmp7.not, label %if.end9, label %if.then8

if.then8:                                         ; preds = %lor.lhs.false, %if.end2
  tail call void @ERR_new() #9
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 noundef 112, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.TS_RESP_verify_signature, i64 0, i64 0)) #9
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 47, i32 noundef 110, i8* noundef null) #9
  br label %err

if.end9:                                          ; preds = %lor.lhs.false
  %call11 = tail call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call5, i32 noundef 0) #9
  %3 = bitcast i8* %call11 to %struct.pkcs7_signer_info_st*
  %call12 = tail call i64 @PKCS7_ctrl(%struct.pkcs7_st* noundef nonnull %token, i32 noundef 2, i64 noundef 0, i8* noundef null) #9
  %tobool13.not = icmp eq i64 %call12, 0
  br i1 %tobool13.not, label %if.end15, label %if.then14

if.then14:                                        ; preds = %if.end9
  tail call void @ERR_new() #9
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 noundef 117, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.TS_RESP_verify_signature, i64 0, i64 0)) #9
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 47, i32 noundef 106, i8* noundef null) #9
  br label %err

if.end15:                                         ; preds = %if.end9
  %call16 = tail call %struct.stack_st_X509* @PKCS7_get0_signers(%struct.pkcs7_st* noundef nonnull %token, %struct.stack_st_X509* noundef %certs, i32 noundef 0) #9
  %tobool17.not = icmp eq %struct.stack_st_X509* %call16, null
  br i1 %tobool17.not, label %err, label %lor.lhs.false18

lor.lhs.false18:                                  ; preds = %if.end15
  %call19 = tail call fastcc %struct.stack_st* @ossl_check_const_X509_sk_type(%struct.stack_st_X509* noundef nonnull %call16) #10
  %call20 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call19) #9
  %cmp21.not = icmp eq i32 %call20, 1
  br i1 %cmp21.not, label %if.end23, label %err

if.end23:                                         ; preds = %lor.lhs.false18
  %call25 = tail call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call19, i32 noundef 0) #9
  %4 = bitcast i8* %call25 to %struct.x509_st*
  %call27 = tail call fastcc %struct.stack_st* @ossl_check_const_X509_sk_type(%struct.stack_st_X509* noundef %certs) #10
  %call28 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call27) #9
  %d = getelementptr inbounds %struct.pkcs7_st, %struct.pkcs7_st* %token, i64 0, i32 5
  %sign = bitcast %union.anon* %d to %struct.pkcs7_signed_st**
  %5 = load %struct.pkcs7_signed_st*, %struct.pkcs7_signed_st** %sign, align 8, !tbaa !13
  %cert = getelementptr inbounds %struct.pkcs7_signed_st, %struct.pkcs7_signed_st* %5, i64 0, i32 2
  %6 = load %struct.stack_st_X509*, %struct.stack_st_X509** %cert, align 8, !tbaa !14
  %call29 = tail call fastcc %struct.stack_st* @ossl_check_const_X509_sk_type(%struct.stack_st_X509* noundef %6) #10
  %call30 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call29) #9
  %add = add nsw i32 %call30, %call28
  %call31 = tail call %struct.stack_st* @OPENSSL_sk_new_reserve(i32 (i8*, i8*)* noundef null, i32 noundef %add) #9
  %7 = bitcast %struct.stack_st* %call31 to %struct.stack_st_X509*
  %cmp32 = icmp eq %struct.stack_st* %call31, null
  br i1 %cmp32, label %err, label %lor.lhs.false33

lor.lhs.false33:                                  ; preds = %if.end23
  %call34 = tail call i32 @X509_add_certs(%struct.stack_st_X509* noundef nonnull %7, %struct.stack_st_X509* noundef %certs, i32 noundef 0) #9
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %err, label %lor.lhs.false36

lor.lhs.false36:                                  ; preds = %lor.lhs.false33
  %8 = load %struct.pkcs7_signed_st*, %struct.pkcs7_signed_st** %sign, align 8, !tbaa !13
  %cert39 = getelementptr inbounds %struct.pkcs7_signed_st, %struct.pkcs7_signed_st* %8, i64 0, i32 2
  %9 = load %struct.stack_st_X509*, %struct.stack_st_X509** %cert39, align 8, !tbaa !14
  %call40 = tail call i32 @X509_add_certs(%struct.stack_st_X509* noundef nonnull %7, %struct.stack_st_X509* noundef %9, i32 noundef 0) #9
  %tobool41.not = icmp eq i32 %call40, 0
  br i1 %tobool41.not, label %err, label %if.end43

if.end43:                                         ; preds = %lor.lhs.false36
  %call44 = call fastcc i32 @ts_verify_cert(%struct.x509_store_st* noundef %store, %struct.stack_st_X509* noundef nonnull %7, %struct.x509_st* noundef %4, %struct.stack_st_X509** noundef nonnull %chain) #10
  %tobool45.not = icmp eq i32 %call44, 0
  %.pre = load %struct.stack_st_X509*, %struct.stack_st_X509** %chain, align 8, !tbaa !4
  br i1 %tobool45.not, label %err, label %if.end47

if.end47:                                         ; preds = %if.end43
  %call48 = tail call fastcc i32 @ts_check_signing_certs(%struct.pkcs7_signer_info_st* noundef %3, %struct.stack_st_X509* noundef %.pre) #10
  %tobool49.not = icmp eq i32 %call48, 0
  br i1 %tobool49.not, label %err, label %if.end51

if.end51:                                         ; preds = %if.end47
  %call52 = tail call %struct.bio_st* @PKCS7_dataInit(%struct.pkcs7_st* noundef nonnull %token, %struct.bio_st* noundef null) #9
  br label %while.cond

while.cond:                                       ; preds = %while.cond, %if.end51
  %call53 = call i32 @BIO_read(%struct.bio_st* noundef %call52, i8* noundef nonnull %1, i32 noundef 4096) #9
  %cmp54 = icmp sgt i32 %call53, 0
  br i1 %cmp54, label %while.cond, label %while.end, !llvm.loop !16

while.end:                                        ; preds = %while.cond
  %call55 = call i32 @PKCS7_signatureVerify(%struct.bio_st* noundef %call52, %struct.pkcs7_st* noundef nonnull %token, %struct.pkcs7_signer_info_st* noundef %3, %struct.x509_st* noundef %4) #9
  %cmp56 = icmp slt i32 %call55, 1
  br i1 %cmp56, label %if.then57, label %if.end58

if.then57:                                        ; preds = %while.end
  call void @ERR_new() #9
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 noundef 148, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.TS_RESP_verify_signature, i64 0, i64 0)) #9
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 47, i32 noundef 109, i8* noundef null) #9
  br label %err

if.end58:                                         ; preds = %while.end
  %tobool59.not = icmp eq %struct.x509_st** %signer_out, null
  br i1 %tobool59.not, label %err, label %if.then60

if.then60:                                        ; preds = %if.end58
  %10 = bitcast %struct.x509_st** %signer_out to i8**
  store i8* %call25, i8** %10, align 8, !tbaa !4
  %call61 = call i32 @X509_up_ref(%struct.x509_st* noundef %4) #9
  br label %err

err:                                              ; preds = %if.end43, %if.end58, %if.then60, %if.end47, %if.end23, %lor.lhs.false33, %lor.lhs.false36, %if.end15, %lor.lhs.false18, %if.then57, %if.then14, %if.then8, %if.then1, %if.then
  %11 = phi %struct.stack_st_X509* [ null, %if.then8 ], [ null, %if.then14 ], [ null, %lor.lhs.false18 ], [ null, %if.end23 ], [ %.pre, %if.then57 ], [ %.pre, %if.end47 ], [ null, %lor.lhs.false36 ], [ null, %lor.lhs.false33 ], [ null, %if.end15 ], [ null, %if.then1 ], [ null, %if.then ], [ %.pre, %if.then60 ], [ %.pre, %if.end58 ], [ %.pre, %if.end43 ]
  %signers.0 = phi %struct.stack_st_X509* [ null, %if.then8 ], [ null, %if.then14 ], [ %call16, %lor.lhs.false18 ], [ %call16, %if.end23 ], [ %call16, %if.then57 ], [ %call16, %if.end47 ], [ %call16, %lor.lhs.false36 ], [ %call16, %lor.lhs.false33 ], [ null, %if.end15 ], [ null, %if.then1 ], [ null, %if.then ], [ %call16, %if.then60 ], [ %call16, %if.end58 ], [ %call16, %if.end43 ]
  %untrusted.0 = phi %struct.stack_st_X509* [ null, %if.then8 ], [ null, %if.then14 ], [ null, %lor.lhs.false18 ], [ null, %if.end23 ], [ %7, %if.then57 ], [ %7, %if.end47 ], [ %7, %lor.lhs.false36 ], [ %7, %lor.lhs.false33 ], [ null, %if.end15 ], [ null, %if.then1 ], [ null, %if.then ], [ %7, %if.then60 ], [ %7, %if.end58 ], [ %7, %if.end43 ]
  %ret.0 = phi i32 [ 0, %if.then8 ], [ 0, %if.then14 ], [ 0, %lor.lhs.false18 ], [ 0, %if.end23 ], [ 0, %if.then57 ], [ 0, %if.end47 ], [ 0, %lor.lhs.false36 ], [ 0, %lor.lhs.false33 ], [ 0, %if.end15 ], [ 0, %if.then1 ], [ 0, %if.then ], [ 1, %if.then60 ], [ 1, %if.end58 ], [ 0, %if.end43 ]
  %p7bio.0 = phi %struct.bio_st* [ null, %if.then8 ], [ null, %if.then14 ], [ null, %lor.lhs.false18 ], [ null, %if.end23 ], [ %call52, %if.then57 ], [ null, %if.end47 ], [ null, %lor.lhs.false36 ], [ null, %lor.lhs.false33 ], [ null, %if.end15 ], [ null, %if.then1 ], [ null, %if.then ], [ %call52, %if.then60 ], [ %call52, %if.end58 ], [ null, %if.end43 ]
  call void @BIO_free_all(%struct.bio_st* noundef %p7bio.0) #9
  %call63 = call fastcc %struct.stack_st* @ossl_check_X509_sk_type(%struct.stack_st_X509* noundef %untrusted.0) #10
  call void @OPENSSL_sk_free(%struct.stack_st* noundef %call63) #9
  %call64 = call fastcc %struct.stack_st* @ossl_check_X509_sk_type(%struct.stack_st_X509* noundef %11) #10
  call void @OPENSSL_sk_pop_free(%struct.stack_st* noundef %call64, void (i8*)* noundef bitcast (void (%struct.x509_st*)* @X509_free to void (i8*)*)) #9
  %call66 = call fastcc %struct.stack_st* @ossl_check_X509_sk_type(%struct.stack_st_X509* noundef %signers.0) #10
  call void @OPENSSL_sk_free(%struct.stack_st* noundef %call66) #9
  call void @llvm.lifetime.end.p0i8(i64 4096, i8* nonnull %1) #8
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #8
  ret i32 %ret.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

declare void @ERR_new() local_unnamed_addr #2

declare void @ERR_set_debug(i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #2

declare void @ERR_set_error(i32 noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #2

declare i32 @OBJ_obj2nid(%struct.asn1_object_st* noundef) local_unnamed_addr #2

declare %struct.stack_st_PKCS7_SIGNER_INFO* @PKCS7_get_signer_info(%struct.pkcs7_st* noundef) local_unnamed_addr #2

declare i32 @OPENSSL_sk_num(%struct.stack_st* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_const_PKCS7_SIGNER_INFO_sk_type(%struct.stack_st_PKCS7_SIGNER_INFO* noundef readnone %sk) unnamed_addr #3 {
entry:
  %0 = bitcast %struct.stack_st_PKCS7_SIGNER_INFO* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

declare i8* @OPENSSL_sk_value(%struct.stack_st* noundef, i32 noundef) local_unnamed_addr #2

declare i64 @PKCS7_ctrl(%struct.pkcs7_st* noundef, i32 noundef, i64 noundef, i8* noundef) local_unnamed_addr #2

declare %struct.stack_st_X509* @PKCS7_get0_signers(%struct.pkcs7_st* noundef, %struct.stack_st_X509* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_const_X509_sk_type(%struct.stack_st_X509* noundef readnone %sk) unnamed_addr #3 {
entry:
  %0 = bitcast %struct.stack_st_X509* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

declare %struct.stack_st* @OPENSSL_sk_new_reserve(i32 (i8*, i8*)* noundef, i32 noundef) local_unnamed_addr #2

declare i32 @X509_add_certs(%struct.stack_st_X509* noundef, %struct.stack_st_X509* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @ts_verify_cert(%struct.x509_store_st* noundef %store, %struct.stack_st_X509* noundef %untrusted, %struct.x509_st* noundef %signer, %struct.stack_st_X509** nocapture noundef writeonly %chain) unnamed_addr #0 {
entry:
  store %struct.stack_st_X509* null, %struct.stack_st_X509** %chain, align 8, !tbaa !4
  %call = tail call %struct.x509_store_ctx_st* @X509_STORE_CTX_new() #9
  %cmp = icmp eq %struct.x509_store_ctx_st* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #9
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 noundef 181, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__func__.ts_verify_cert, i64 0, i64 0)) #9
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 47, i32 noundef 786688, i8* noundef null) #9
  br label %end

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @X509_STORE_CTX_init(%struct.x509_store_ctx_st* noundef nonnull %call, %struct.x509_store_st* noundef %store, %struct.x509_st* noundef %signer, %struct.stack_st_X509* noundef %untrusted) #9
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %end, label %if.end3

if.end3:                                          ; preds = %if.end
  %call4 = tail call i32 @X509_STORE_CTX_set_purpose(%struct.x509_store_ctx_st* noundef nonnull %call, i32 noundef 9) #9
  %call5 = tail call i32 @X509_verify_cert(%struct.x509_store_ctx_st* noundef nonnull %call) #9
  %cmp6 = icmp slt i32 %call5, 1
  br i1 %cmp6, label %if.then7, label %if.end10

if.then7:                                         ; preds = %if.end3
  %call8 = tail call i32 @X509_STORE_CTX_get_error(%struct.x509_store_ctx_st* noundef nonnull %call) #9
  tail call void @ERR_new() #9
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 noundef 190, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__func__.ts_verify_cert, i64 0, i64 0)) #9
  %conv = sext i32 %call8 to i64
  %call9 = tail call i8* @X509_verify_cert_error_string(i64 noundef %conv) #9
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 47, i32 noundef 100, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i8* noundef %call9) #9
  br label %end

if.end10:                                         ; preds = %if.end3
  %call11 = tail call %struct.stack_st_X509* @X509_STORE_CTX_get1_chain(%struct.x509_store_ctx_st* noundef nonnull %call) #9
  store %struct.stack_st_X509* %call11, %struct.stack_st_X509** %chain, align 8, !tbaa !4
  br label %end

end:                                              ; preds = %if.then, %if.then7, %if.end, %if.end10
  %ret.0 = phi i32 [ 1, %if.end10 ], [ 0, %if.end ], [ 0, %if.then7 ], [ 0, %if.then ]
  tail call void @X509_STORE_CTX_free(%struct.x509_store_ctx_st* noundef %call) #9
  ret i32 %ret.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @ts_check_signing_certs(%struct.pkcs7_signer_info_st* noundef %si, %struct.stack_st_X509* noundef %chain) unnamed_addr #0 {
entry:
  %call = tail call fastcc %struct.ESS_signing_cert* @ossl_ess_get_signing_cert(%struct.pkcs7_signer_info_st* noundef %si) #10
  %call1 = tail call fastcc %struct.ESS_signing_cert_v2_st* @ossl_ess_get_signing_cert_v2(%struct.pkcs7_signer_info_st* noundef %si) #10
  %call2 = tail call i32 @OSSL_ESS_check_signing_certs(%struct.ESS_signing_cert* noundef %call, %struct.ESS_signing_cert_v2_st* noundef %call1, %struct.stack_st_X509* noundef %chain, i32 noundef 1) #9
  %cmp = icmp sgt i32 %call2, 0
  %conv = zext i1 %cmp to i32
  tail call void @ESS_SIGNING_CERT_free(%struct.ESS_signing_cert* noundef %call) #9
  tail call void @ESS_SIGNING_CERT_V2_free(%struct.ESS_signing_cert_v2_st* noundef %call1) #9
  ret i32 %conv
}

declare %struct.bio_st* @PKCS7_dataInit(%struct.pkcs7_st* noundef, %struct.bio_st* noundef) local_unnamed_addr #2

declare i32 @BIO_read(%struct.bio_st* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare i32 @PKCS7_signatureVerify(%struct.bio_st* noundef, %struct.pkcs7_st* noundef, %struct.pkcs7_signer_info_st* noundef, %struct.x509_st* noundef) local_unnamed_addr #2

declare i32 @X509_up_ref(%struct.x509_st* noundef) local_unnamed_addr #2

declare void @BIO_free_all(%struct.bio_st* noundef) local_unnamed_addr #2

declare void @OPENSSL_sk_free(%struct.stack_st* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_X509_sk_type(%struct.stack_st_X509* noundef readnone %sk) unnamed_addr #3 {
entry:
  %0 = bitcast %struct.stack_st_X509* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

declare void @OPENSSL_sk_pop_free(%struct.stack_st* noundef, void (i8*)* noundef) local_unnamed_addr #2

declare void @X509_free(%struct.x509_st* noundef) #2

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: noinline nounwind uwtable
define i32 @TS_RESP_verify_response(%struct.TS_verify_ctx* nocapture noundef readonly %ctx, %struct.TS_resp_st* nocapture noundef readonly %response) local_unnamed_addr #0 {
entry:
  %token1 = getelementptr inbounds %struct.TS_resp_st, %struct.TS_resp_st* %response, i64 0, i32 1
  %0 = load %struct.pkcs7_st*, %struct.pkcs7_st** %token1, align 8, !tbaa !18
  %tst_info2 = getelementptr inbounds %struct.TS_resp_st, %struct.TS_resp_st* %response, i64 0, i32 2
  %1 = load %struct.TS_tst_info_st*, %struct.TS_tst_info_st** %tst_info2, align 8, !tbaa !20
  %call = tail call fastcc i32 @ts_check_status_info(%struct.TS_resp_st* noundef %response) #10
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %err, label %if.end

if.end:                                           ; preds = %entry
  %call3 = tail call fastcc i32 @int_ts_RESP_verify_token(%struct.TS_verify_ctx* noundef %ctx, %struct.pkcs7_st* noundef %0, %struct.TS_tst_info_st* noundef %1) #10
  %tobool4.not = icmp ne i32 %call3, 0
  %spec.select = zext i1 %tobool4.not to i32
  br label %err

err:                                              ; preds = %if.end, %entry
  %ret.0 = phi i32 [ 0, %entry ], [ %spec.select, %if.end ]
  ret i32 %ret.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @ts_check_status_info(%struct.TS_resp_st* nocapture noundef readonly %response) unnamed_addr #0 {
entry:
  %failure_text = alloca [256 x i8], align 16
  %status_info = getelementptr inbounds %struct.TS_resp_st, %struct.TS_resp_st* %response, i64 0, i32 0
  %0 = load %struct.TS_status_info_st*, %struct.TS_status_info_st** %status_info, align 8, !tbaa !21
  %status1 = getelementptr inbounds %struct.TS_status_info_st, %struct.TS_status_info_st* %0, i64 0, i32 0
  %1 = load %struct.asn1_string_st*, %struct.asn1_string_st** %status1, align 8, !tbaa !22
  %call = tail call i64 @ASN1_INTEGER_get(%struct.asn1_string_st* noundef %1) #9
  %2 = getelementptr inbounds [256 x i8], [256 x i8]* %failure_text, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 256, i8* nonnull %2) #8
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(256) %2, i8 0, i64 256, i1 false)
  %3 = icmp ult i64 %call, 2
  br i1 %3, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %4 = icmp ult i64 %call, 6
  br i1 %4, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end
  %reltable.shift = shl i64 %call, 2
  %reltable.intrinsic = call i8* @llvm.load.relative.i64(i8* bitcast ([6 x i32]* @reltable.ts_check_status_info to i8*), i64 %reltable.shift)
  br label %if.end6

if.end6:                                          ; preds = %if.end, %if.then5
  %status_text.0 = phi i8* [ %reltable.intrinsic, %if.then5 ], [ getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), %if.end ]
  %text = getelementptr inbounds %struct.TS_status_info_st, %struct.TS_status_info_st* %0, i64 0, i32 1
  %5 = load %struct.stack_st_ASN1_UTF8STRING*, %struct.stack_st_ASN1_UTF8STRING** %text, align 8, !tbaa !24
  %call7 = tail call fastcc %struct.stack_st* @ossl_check_const_ASN1_UTF8STRING_sk_type(%struct.stack_st_ASN1_UTF8STRING* noundef %5) #10
  %call8 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call7) #9
  %cmp9 = icmp sgt i32 %call8, 0
  br i1 %cmp9, label %land.lhs.true10, label %if.end15

land.lhs.true10:                                  ; preds = %if.end6
  %6 = load %struct.stack_st_ASN1_UTF8STRING*, %struct.stack_st_ASN1_UTF8STRING** %text, align 8, !tbaa !24
  %call12 = tail call fastcc i8* @ts_get_status_text(%struct.stack_st_ASN1_UTF8STRING* noundef %6) #10
  %cmp13 = icmp eq i8* %call12, null
  br i1 %cmp13, label %cleanup, label %if.end15

if.end15:                                         ; preds = %land.lhs.true10, %if.end6
  %embedded_status_text.0 = phi i8* [ %call12, %land.lhs.true10 ], [ null, %if.end6 ]
  %failure_info = getelementptr inbounds %struct.TS_status_info_st, %struct.TS_status_info_st* %0, i64 0, i32 2
  %7 = load %struct.asn1_string_st*, %struct.asn1_string_st** %failure_info, align 8, !tbaa !25
  %tobool.not = icmp eq %struct.asn1_string_st* %7, null
  br i1 %tobool.not, label %if.then38, label %for.body

for.body:                                         ; preds = %if.end15, %for.inc.for.body_crit_edge
  %8 = phi %struct.asn1_string_st* [ %.pre, %for.inc.for.body_crit_edge ], [ %7, %if.end15 ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc.for.body_crit_edge ], [ 0, %if.end15 ]
  %first.069 = phi i32 [ %first.2, %for.inc.for.body_crit_edge ], [ 1, %if.end15 ]
  %code = getelementptr inbounds [8 x %struct.anon], [8 x %struct.anon]* @ts_failure_info, i64 0, i64 %indvars.iv, i32 0
  %9 = load i32, i32* %code, align 16, !tbaa !26
  %call20 = call i32 @ASN1_BIT_STRING_get_bit(%struct.asn1_string_st* noundef %8, i32 noundef %9) #9
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %for.inc, label %if.then22

if.then22:                                        ; preds = %for.body
  %tobool23.not = icmp eq i32 %first.069, 0
  br i1 %tobool23.not, label %if.then24, label %if.end27

if.then24:                                        ; preds = %if.then22
  %call25 = call i8* @strcat(i8* noundef nonnull %2, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #9
  br label %if.end27

if.end27:                                         ; preds = %if.then22, %if.then24
  %text31 = getelementptr inbounds [8 x %struct.anon], [8 x %struct.anon]* @ts_failure_info, i64 0, i64 %indvars.iv, i32 1
  %10 = load i8*, i8** %text31, align 8, !tbaa !28
  %call32 = call i8* @strcat(i8* noundef nonnull %2, i8* noundef %10) #9
  br label %for.inc

for.inc:                                          ; preds = %for.body, %if.end27
  %first.2 = phi i32 [ 0, %if.end27 ], [ %first.069, %for.body ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 8
  br i1 %exitcond.not, label %if.end34, label %for.inc.for.body_crit_edge, !llvm.loop !29

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  %.pre = load %struct.asn1_string_st*, %struct.asn1_string_st** %failure_info, align 8, !tbaa !25
  br label %for.body

if.end34:                                         ; preds = %for.inc
  %.pre71 = load i8, i8* %2, align 16, !tbaa !13
  %phi.cmp = icmp eq i8 %.pre71, 0
  br i1 %phi.cmp, label %if.then38, label %if.end41

if.then38:                                        ; preds = %if.end15, %if.end34
  %call40 = call i8* @strcpy(i8* noundef nonnull %2, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0)) #9
  br label %if.end41

if.end41:                                         ; preds = %if.then38, %if.end34
  call void @ERR_new() #9
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 noundef 390, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.ts_check_status_info, i64 0, i64 0)) #9
  %tobool42.not = icmp eq i8* %embedded_status_text.0, null
  %cond = select i1 %tobool42.not, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i8* %embedded_status_text.0
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 47, i32 noundef 107, i8* noundef getelementptr inbounds ([52 x i8], [52 x i8]* @.str.5, i64 0, i64 0), i8* noundef %status_text.0, i8* noundef %cond, i8* noundef nonnull %2) #9
  call void @CRYPTO_free(i8* noundef %embedded_status_text.0, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 noundef 395) #9
  br label %cleanup

cleanup:                                          ; preds = %land.lhs.true10, %entry, %if.end41
  %retval.0 = phi i32 [ 0, %if.end41 ], [ 1, %entry ], [ 0, %land.lhs.true10 ]
  call void @llvm.lifetime.end.p0i8(i64 256, i8* nonnull %2) #8
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @int_ts_RESP_verify_token(%struct.TS_verify_ctx* nocapture noundef readonly %ctx, %struct.pkcs7_st* noundef %token, %struct.TS_tst_info_st* noundef %tst_info) unnamed_addr #0 {
entry:
  %signer = alloca %struct.x509_st*, align 8
  %md_alg = alloca %struct.X509_algor_st*, align 8
  %imprint = alloca i8*, align 8
  %imprint_len = alloca i32, align 4
  %0 = bitcast %struct.x509_st** %signer to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #8
  store %struct.x509_st* null, %struct.x509_st** %signer, align 8, !tbaa !4
  %tsa = getelementptr inbounds %struct.TS_tst_info_st, %struct.TS_tst_info_st* %tst_info, i64 0, i32 8
  %1 = load %struct.GENERAL_NAME_st*, %struct.GENERAL_NAME_st** %tsa, align 8, !tbaa !30
  %2 = bitcast %struct.X509_algor_st** %md_alg to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #8
  store %struct.X509_algor_st* null, %struct.X509_algor_st** %md_alg, align 8, !tbaa !4
  %3 = bitcast i8** %imprint to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %3) #8
  store i8* null, i8** %imprint, align 8, !tbaa !4
  %4 = bitcast i32* %imprint_len to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %4) #8
  store i32 0, i32* %imprint_len, align 4, !tbaa !32
  %flags1 = getelementptr inbounds %struct.TS_verify_ctx, %struct.TS_verify_ctx* %ctx, i64 0, i32 0
  %5 = load i32, i32* %flags1, align 8, !tbaa !33
  %and = and i32 %5, 64
  %tobool = icmp ne i32 %and, 0
  %cmp = icmp ne %struct.GENERAL_NAME_st* %1, null
  %or.cond = select i1 %tobool, i1 %cmp, i1 false
  %and2 = and i32 %5, 128
  %tobool3.not = icmp ne i32 %and2, 0
  %not.or.cond99 = select i1 %or.cond, i1 true, i1 %tobool3.not
  %or = zext i1 %not.or.cond99 to i32
  %.masked = and i32 %5, 1
  %and4 = or i32 %.masked, %or
  %tobool5.not = icmp eq i32 %and4, 0
  br i1 %tobool5.not, label %if.end9, label %land.lhs.true6

land.lhs.true6:                                   ; preds = %entry
  %certs = getelementptr inbounds %struct.TS_verify_ctx, %struct.TS_verify_ctx* %ctx, i64 0, i32 2
  %6 = load %struct.stack_st_X509*, %struct.stack_st_X509** %certs, align 8, !tbaa !35
  %store = getelementptr inbounds %struct.TS_verify_ctx, %struct.TS_verify_ctx* %ctx, i64 0, i32 1
  %7 = load %struct.x509_store_st*, %struct.x509_store_st** %store, align 8, !tbaa !36
  %call = call i32 @TS_RESP_verify_signature(%struct.pkcs7_st* noundef %token, %struct.stack_st_X509* noundef %6, %struct.x509_store_st* noundef %7, %struct.x509_st** noundef nonnull %signer) #10
  %tobool7.not = icmp eq i32 %call, 0
  br i1 %tobool7.not, label %err, label %if.end9

if.end9:                                          ; preds = %land.lhs.true6, %entry
  %and10 = and i32 %5, 2
  %tobool11.not = icmp eq i32 %and10, 0
  br i1 %tobool11.not, label %if.end16, label %land.lhs.true12

land.lhs.true12:                                  ; preds = %if.end9
  %call13 = call i64 @TS_TST_INFO_get_version(%struct.TS_tst_info_st* noundef nonnull %tst_info) #9
  %cmp14.not = icmp eq i64 %call13, 1
  br i1 %cmp14.not, label %if.end16, label %err.sink.split

if.end16:                                         ; preds = %land.lhs.true12, %if.end9
  %and17 = and i32 %5, 4
  %tobool18.not = icmp eq i32 %and17, 0
  br i1 %tobool18.not, label %if.end23, label %land.lhs.true19

land.lhs.true19:                                  ; preds = %if.end16
  %policy = getelementptr inbounds %struct.TS_verify_ctx, %struct.TS_verify_ctx* %ctx, i64 0, i32 3
  %8 = load %struct.asn1_object_st*, %struct.asn1_object_st** %policy, align 8, !tbaa !37
  %call20 = call fastcc i32 @ts_check_policy(%struct.asn1_object_st* noundef %8, %struct.TS_tst_info_st* noundef nonnull %tst_info) #10
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %err, label %if.end23

if.end23:                                         ; preds = %land.lhs.true19, %if.end16
  %and24 = and i32 %5, 8
  %tobool25.not = icmp eq i32 %and24, 0
  br i1 %tobool25.not, label %if.end33, label %land.lhs.true26

land.lhs.true26:                                  ; preds = %if.end23
  %md_alg27 = getelementptr inbounds %struct.TS_verify_ctx, %struct.TS_verify_ctx* %ctx, i64 0, i32 4
  %9 = load %struct.X509_algor_st*, %struct.X509_algor_st** %md_alg27, align 8, !tbaa !38
  %imprint28 = getelementptr inbounds %struct.TS_verify_ctx, %struct.TS_verify_ctx* %ctx, i64 0, i32 5
  %10 = load i8*, i8** %imprint28, align 8, !tbaa !39
  %imprint_len29 = getelementptr inbounds %struct.TS_verify_ctx, %struct.TS_verify_ctx* %ctx, i64 0, i32 6
  %11 = load i32, i32* %imprint_len29, align 8, !tbaa !40
  %call30 = call fastcc i32 @ts_check_imprints(%struct.X509_algor_st* noundef %9, i8* noundef %10, i32 noundef %11, %struct.TS_tst_info_st* noundef nonnull %tst_info) #10
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %err, label %if.end33

if.end33:                                         ; preds = %land.lhs.true26, %if.end23
  %and34 = and i32 %5, 16
  %tobool35.not = icmp eq i32 %and34, 0
  br i1 %tobool35.not, label %if.end43, label %land.lhs.true36

land.lhs.true36:                                  ; preds = %if.end33
  %data = getelementptr inbounds %struct.TS_verify_ctx, %struct.TS_verify_ctx* %ctx, i64 0, i32 7
  %12 = load %struct.bio_st*, %struct.bio_st** %data, align 8, !tbaa !41
  %call37 = call fastcc i32 @ts_compute_imprint(%struct.bio_st* noundef %12, %struct.TS_tst_info_st* noundef nonnull %tst_info, %struct.X509_algor_st** noundef nonnull %md_alg, i8** noundef nonnull %imprint, i32* noundef nonnull %imprint_len) #10
  %tobool38.not = icmp eq i32 %call37, 0
  %.pre = load %struct.X509_algor_st*, %struct.X509_algor_st** %md_alg, align 8, !tbaa !4
  %.pre100 = load i8*, i8** %imprint, align 8, !tbaa !4
  br i1 %tobool38.not, label %err, label %lor.lhs.false39

lor.lhs.false39:                                  ; preds = %land.lhs.true36
  %13 = load i32, i32* %imprint_len, align 4, !tbaa !32
  %call40 = call fastcc i32 @ts_check_imprints(%struct.X509_algor_st* noundef %.pre, i8* noundef %.pre100, i32 noundef %13, %struct.TS_tst_info_st* noundef nonnull %tst_info) #10
  %tobool41.not = icmp eq i32 %call40, 0
  br i1 %tobool41.not, label %err, label %if.end43

if.end43:                                         ; preds = %lor.lhs.false39, %if.end33
  %14 = phi i8* [ %.pre100, %lor.lhs.false39 ], [ null, %if.end33 ]
  %15 = phi %struct.X509_algor_st* [ %.pre, %lor.lhs.false39 ], [ null, %if.end33 ]
  %and44 = and i32 %5, 32
  %tobool45.not = icmp eq i32 %and44, 0
  br i1 %tobool45.not, label %if.end50, label %land.lhs.true46

land.lhs.true46:                                  ; preds = %if.end43
  %nonce = getelementptr inbounds %struct.TS_verify_ctx, %struct.TS_verify_ctx* %ctx, i64 0, i32 8
  %16 = load %struct.asn1_string_st*, %struct.asn1_string_st** %nonce, align 8, !tbaa !42
  %call47 = call fastcc i32 @ts_check_nonces(%struct.asn1_string_st* noundef %16, %struct.TS_tst_info_st* noundef nonnull %tst_info) #10
  %tobool48.not = icmp eq i32 %call47, 0
  br i1 %tobool48.not, label %err, label %if.end50

if.end50:                                         ; preds = %land.lhs.true46, %if.end43
  br i1 %or.cond, label %land.lhs.true55, label %if.end59

land.lhs.true55:                                  ; preds = %if.end50
  %17 = load %struct.x509_st*, %struct.x509_st** %signer, align 8, !tbaa !4
  %call56 = call fastcc i32 @ts_check_signer_name(%struct.GENERAL_NAME_st* noundef nonnull %1, %struct.x509_st* noundef %17) #10
  %tobool57.not = icmp eq i32 %call56, 0
  br i1 %tobool57.not, label %err.sink.split, label %if.end59

if.end59:                                         ; preds = %land.lhs.true55, %if.end50
  %tobool61.not = icmp eq i32 %and2, 0
  br i1 %tobool61.not, label %err, label %land.lhs.true62

land.lhs.true62:                                  ; preds = %if.end59
  %tsa_name63 = getelementptr inbounds %struct.TS_verify_ctx, %struct.TS_verify_ctx* %ctx, i64 0, i32 9
  %18 = load %struct.GENERAL_NAME_st*, %struct.GENERAL_NAME_st** %tsa_name63, align 8, !tbaa !43
  %19 = load %struct.x509_st*, %struct.x509_st** %signer, align 8, !tbaa !4
  %call64 = call fastcc i32 @ts_check_signer_name(%struct.GENERAL_NAME_st* noundef %18, %struct.x509_st* noundef %19) #10
  %tobool65.not = icmp eq i32 %call64, 0
  br i1 %tobool65.not, label %err.sink.split, label %err

err.sink.split:                                   ; preds = %land.lhs.true62, %land.lhs.true55, %land.lhs.true12
  %.sink102 = phi i32 [ 314, %land.lhs.true12 ], [ 334, %land.lhs.true55 ], [ 339, %land.lhs.true62 ]
  %.sink = phi i32 [ 113, %land.lhs.true12 ], [ 111, %land.lhs.true55 ], [ 112, %land.lhs.true62 ]
  %.ph = phi i8* [ null, %land.lhs.true12 ], [ %14, %land.lhs.true55 ], [ %14, %land.lhs.true62 ]
  %.ph101 = phi %struct.X509_algor_st* [ null, %land.lhs.true12 ], [ %15, %land.lhs.true55 ], [ %15, %land.lhs.true62 ]
  call void @ERR_new() #9
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 noundef %.sink102, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.int_ts_RESP_verify_token, i64 0, i64 0)) #9
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 47, i32 noundef %.sink, i8* noundef null) #9
  br label %err

err:                                              ; preds = %err.sink.split, %land.lhs.true36, %if.end59, %land.lhs.true62, %land.lhs.true46, %lor.lhs.false39, %land.lhs.true26, %land.lhs.true19, %land.lhs.true6
  %20 = phi i8* [ %14, %land.lhs.true46 ], [ %.pre100, %lor.lhs.false39 ], [ null, %land.lhs.true26 ], [ null, %land.lhs.true19 ], [ null, %land.lhs.true6 ], [ %14, %land.lhs.true62 ], [ %14, %if.end59 ], [ %.pre100, %land.lhs.true36 ], [ %.ph, %err.sink.split ]
  %21 = phi %struct.X509_algor_st* [ %15, %land.lhs.true46 ], [ %.pre, %lor.lhs.false39 ], [ null, %land.lhs.true26 ], [ null, %land.lhs.true19 ], [ null, %land.lhs.true6 ], [ %15, %land.lhs.true62 ], [ %15, %if.end59 ], [ %.pre, %land.lhs.true36 ], [ %.ph101, %err.sink.split ]
  %ret.0 = phi i32 [ 0, %land.lhs.true46 ], [ 0, %lor.lhs.false39 ], [ 0, %land.lhs.true26 ], [ 0, %land.lhs.true19 ], [ 0, %land.lhs.true6 ], [ 1, %land.lhs.true62 ], [ 1, %if.end59 ], [ 0, %land.lhs.true36 ], [ 0, %err.sink.split ]
  %22 = load %struct.x509_st*, %struct.x509_st** %signer, align 8, !tbaa !4
  call void @X509_free(%struct.x509_st* noundef %22) #9
  call void @X509_ALGOR_free(%struct.X509_algor_st* noundef %21) #9
  call void @CRYPTO_free(i8* noundef %20, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 noundef 347) #9
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %4) #8
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3) #8
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #8
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #8
  ret i32 %ret.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @TS_RESP_verify_token(%struct.TS_verify_ctx* nocapture noundef readonly %ctx, %struct.pkcs7_st* noundef %token) local_unnamed_addr #0 {
entry:
  %call = tail call %struct.TS_tst_info_st* @PKCS7_to_TS_TST_INFO(%struct.pkcs7_st* noundef %token) #9
  %tobool.not = icmp eq %struct.TS_tst_info_st* %call, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call1 = tail call fastcc i32 @int_ts_RESP_verify_token(%struct.TS_verify_ctx* noundef %ctx, %struct.pkcs7_st* noundef %token, %struct.TS_tst_info_st* noundef nonnull %call) #10
  tail call void @TS_TST_INFO_free(%struct.TS_tst_info_st* noundef nonnull %call) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %ret.0 = phi i32 [ %call1, %if.then ], [ 0, %entry ]
  ret i32 %ret.0
}

declare %struct.TS_tst_info_st* @PKCS7_to_TS_TST_INFO(%struct.pkcs7_st* noundef) local_unnamed_addr #2

declare void @TS_TST_INFO_free(%struct.TS_tst_info_st* noundef) local_unnamed_addr #2

declare %struct.x509_store_ctx_st* @X509_STORE_CTX_new() local_unnamed_addr #2

declare i32 @X509_STORE_CTX_init(%struct.x509_store_ctx_st* noundef, %struct.x509_store_st* noundef, %struct.x509_st* noundef, %struct.stack_st_X509* noundef) local_unnamed_addr #2

declare i32 @X509_STORE_CTX_set_purpose(%struct.x509_store_ctx_st* noundef, i32 noundef) local_unnamed_addr #2

declare i32 @X509_verify_cert(%struct.x509_store_ctx_st* noundef) local_unnamed_addr #2

declare i32 @X509_STORE_CTX_get_error(%struct.x509_store_ctx_st* noundef) local_unnamed_addr #2

declare i8* @X509_verify_cert_error_string(i64 noundef) local_unnamed_addr #2

declare %struct.stack_st_X509* @X509_STORE_CTX_get1_chain(%struct.x509_store_ctx_st* noundef) local_unnamed_addr #2

declare void @X509_STORE_CTX_free(%struct.x509_store_ctx_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.ESS_signing_cert* @ossl_ess_get_signing_cert(%struct.pkcs7_signer_info_st* noundef %si) unnamed_addr #0 {
entry:
  %p = alloca i8*, align 8
  %0 = bitcast i8** %p to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #8
  %call = tail call %struct.asn1_type_st* @PKCS7_get_signed_attribute(%struct.pkcs7_signer_info_st* noundef %si, i32 noundef 223) #9
  %cmp = icmp eq %struct.asn1_type_st* %call, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %value = getelementptr inbounds %struct.asn1_type_st, %struct.asn1_type_st* %call, i64 0, i32 1
  %sequence = bitcast %union.anon.0* %value to %struct.asn1_string_st**
  %1 = load %struct.asn1_string_st*, %struct.asn1_string_st** %sequence, align 8, !tbaa !13
  %data = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %1, i64 0, i32 2
  %2 = load i8*, i8** %data, align 8, !tbaa !44
  store i8* %2, i8** %p, align 8, !tbaa !4
  %length = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %1, i64 0, i32 0
  %3 = load i32, i32* %length, align 8, !tbaa !46
  %conv = sext i32 %3 to i64
  %call3 = call %struct.ESS_signing_cert* @d2i_ESS_SIGNING_CERT(%struct.ESS_signing_cert** noundef null, i8** noundef nonnull %p, i64 noundef %conv) #9
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi %struct.ESS_signing_cert* [ %call3, %if.end ], [ null, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #8
  ret %struct.ESS_signing_cert* %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.ESS_signing_cert_v2_st* @ossl_ess_get_signing_cert_v2(%struct.pkcs7_signer_info_st* noundef %si) unnamed_addr #0 {
entry:
  %p = alloca i8*, align 8
  %0 = bitcast i8** %p to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #8
  %call = tail call %struct.asn1_type_st* @PKCS7_get_signed_attribute(%struct.pkcs7_signer_info_st* noundef %si, i32 noundef 1086) #9
  %cmp = icmp eq %struct.asn1_type_st* %call, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %value = getelementptr inbounds %struct.asn1_type_st, %struct.asn1_type_st* %call, i64 0, i32 1
  %sequence = bitcast %union.anon.0* %value to %struct.asn1_string_st**
  %1 = load %struct.asn1_string_st*, %struct.asn1_string_st** %sequence, align 8, !tbaa !13
  %data = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %1, i64 0, i32 2
  %2 = load i8*, i8** %data, align 8, !tbaa !44
  store i8* %2, i8** %p, align 8, !tbaa !4
  %length = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %1, i64 0, i32 0
  %3 = load i32, i32* %length, align 8, !tbaa !46
  %conv = sext i32 %3 to i64
  %call3 = call %struct.ESS_signing_cert_v2_st* @d2i_ESS_SIGNING_CERT_V2(%struct.ESS_signing_cert_v2_st** noundef null, i8** noundef nonnull %p, i64 noundef %conv) #9
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi %struct.ESS_signing_cert_v2_st* [ %call3, %if.end ], [ null, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #8
  ret %struct.ESS_signing_cert_v2_st* %retval.0
}

declare i32 @OSSL_ESS_check_signing_certs(%struct.ESS_signing_cert* noundef, %struct.ESS_signing_cert_v2_st* noundef, %struct.stack_st_X509* noundef, i32 noundef) local_unnamed_addr #2

declare void @ESS_SIGNING_CERT_free(%struct.ESS_signing_cert* noundef) local_unnamed_addr #2

declare void @ESS_SIGNING_CERT_V2_free(%struct.ESS_signing_cert_v2_st* noundef) local_unnamed_addr #2

declare %struct.asn1_type_st* @PKCS7_get_signed_attribute(%struct.pkcs7_signer_info_st* noundef, i32 noundef) local_unnamed_addr #2

declare %struct.ESS_signing_cert* @d2i_ESS_SIGNING_CERT(%struct.ESS_signing_cert** noundef, i8** noundef, i64 noundef) local_unnamed_addr #2

declare %struct.ESS_signing_cert_v2_st* @d2i_ESS_SIGNING_CERT_V2(%struct.ESS_signing_cert_v2_st** noundef, i8** noundef, i64 noundef) local_unnamed_addr #2

declare i64 @TS_TST_INFO_get_version(%struct.TS_tst_info_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @ts_check_policy(%struct.asn1_object_st* noundef %req_oid, %struct.TS_tst_info_st* nocapture noundef readonly %tst_info) unnamed_addr #0 {
entry:
  %policy_id = getelementptr inbounds %struct.TS_tst_info_st, %struct.TS_tst_info_st* %tst_info, i64 0, i32 1
  %0 = load %struct.asn1_object_st*, %struct.asn1_object_st** %policy_id, align 8, !tbaa !47
  %call = tail call i32 @OBJ_cmp(%struct.asn1_object_st* noundef %req_oid, %struct.asn1_object_st* noundef %0) #9
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %cleanup, label %if.then

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #9
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 noundef 411, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.ts_check_policy, i64 0, i64 0)) #9
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 47, i32 noundef 108, i8* noundef null) #9
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 1, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @ts_check_imprints(%struct.X509_algor_st* noundef readonly %algor_a, i8* noundef readonly %imprint_a, i32 noundef %len_a, %struct.TS_tst_info_st* nocapture noundef readonly %tst_info) unnamed_addr #0 {
entry:
  %msg_imprint = getelementptr inbounds %struct.TS_tst_info_st, %struct.TS_tst_info_st* %tst_info, i64 0, i32 2
  %0 = load %struct.TS_msg_imprint_st*, %struct.TS_msg_imprint_st** %msg_imprint, align 8, !tbaa !48
  %hash_algo = getelementptr inbounds %struct.TS_msg_imprint_st, %struct.TS_msg_imprint_st* %0, i64 0, i32 0
  %1 = load %struct.X509_algor_st*, %struct.X509_algor_st** %hash_algo, align 8, !tbaa !49
  %tobool.not = icmp eq %struct.X509_algor_st* %algor_a, null
  br i1 %tobool.not, label %if.end15, label %if.then

if.then:                                          ; preds = %entry
  %algorithm = getelementptr inbounds %struct.X509_algor_st, %struct.X509_algor_st* %algor_a, i64 0, i32 0
  %2 = load %struct.asn1_object_st*, %struct.asn1_object_st** %algorithm, align 8, !tbaa !51
  %algorithm1 = getelementptr inbounds %struct.X509_algor_st, %struct.X509_algor_st* %1, i64 0, i32 0
  %3 = load %struct.asn1_object_st*, %struct.asn1_object_st** %algorithm1, align 8, !tbaa !51
  %call = tail call i32 @OBJ_cmp(%struct.asn1_object_st* noundef %2, %struct.asn1_object_st* noundef %3) #9
  %tobool2.not = icmp eq i32 %call, 0
  br i1 %tobool2.not, label %if.end, label %if.then24

if.end:                                           ; preds = %if.then
  %parameter = getelementptr inbounds %struct.X509_algor_st, %struct.X509_algor_st* %algor_a, i64 0, i32 1
  %4 = load %struct.asn1_type_st*, %struct.asn1_type_st** %parameter, align 8, !tbaa !53
  %tobool4.not = icmp eq %struct.asn1_type_st* %4, null
  br i1 %tobool4.not, label %lor.lhs.false, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  %call6 = tail call i32 @ASN1_TYPE_get(%struct.asn1_type_st* noundef nonnull %4) #9
  %cmp.not = icmp eq i32 %call6, 5
  br i1 %cmp.not, label %lor.lhs.false, label %if.then24

lor.lhs.false:                                    ; preds = %land.lhs.true, %if.end
  %parameter7 = getelementptr inbounds %struct.X509_algor_st, %struct.X509_algor_st* %1, i64 0, i32 1
  %5 = load %struct.asn1_type_st*, %struct.asn1_type_st** %parameter7, align 8, !tbaa !53
  %tobool8.not = icmp eq %struct.asn1_type_st* %5, null
  br i1 %tobool8.not, label %if.end15, label %land.lhs.true9

land.lhs.true9:                                   ; preds = %lor.lhs.false
  %call11 = tail call i32 @ASN1_TYPE_get(%struct.asn1_type_st* noundef nonnull %5) #9
  %cmp12.not = icmp eq i32 %call11, 5
  br i1 %cmp12.not, label %if.end15, label %if.then24

if.end15:                                         ; preds = %lor.lhs.false, %land.lhs.true9, %entry
  %hashed_msg = getelementptr inbounds %struct.TS_msg_imprint_st, %struct.TS_msg_imprint_st* %0, i64 0, i32 1
  %6 = load %struct.asn1_string_st*, %struct.asn1_string_st** %hashed_msg, align 8, !tbaa !54
  %call16 = tail call i32 @ASN1_STRING_length(%struct.asn1_string_st* noundef %6) #9
  %cmp17 = icmp eq i32 %call16, %len_a
  br i1 %cmp17, label %err, label %if.then24

err:                                              ; preds = %if.end15
  %7 = load %struct.asn1_string_st*, %struct.asn1_string_st** %hashed_msg, align 8, !tbaa !54
  %call19 = tail call i8* @ASN1_STRING_get0_data(%struct.asn1_string_st* noundef %7) #9
  %conv = zext i32 %len_a to i64
  %call20 = tail call i32 @memcmp(i8* noundef %imprint_a, i8* noundef %call19, i64 noundef %conv) #11
  %cmp21.not = icmp eq i32 %call20, 0
  br i1 %cmp21.not, label %if.end25, label %if.then24

if.then24:                                        ; preds = %if.end15, %land.lhs.true9, %land.lhs.true, %if.then, %err
  tail call void @ERR_new() #9
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 noundef 512, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.ts_check_imprints, i64 0, i64 0)) #9
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 47, i32 noundef 103, i8* noundef null) #9
  br label %if.end25

if.end25:                                         ; preds = %if.then24, %err
  %ret.041 = phi i32 [ 0, %if.then24 ], [ 1, %err ]
  ret i32 %ret.041
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @ts_compute_imprint(%struct.bio_st* noundef %data, %struct.TS_tst_info_st* nocapture noundef readonly %tst_info, %struct.X509_algor_st** nocapture noundef %md_alg, i8** nocapture noundef %imprint, i32* nocapture noundef writeonly %imprint_len) unnamed_addr #0 {
entry:
  %buffer = alloca [4096 x i8], align 16
  %name = alloca [50 x i8], align 16
  %msg_imprint1 = getelementptr inbounds %struct.TS_tst_info_st, %struct.TS_tst_info_st* %tst_info, i64 0, i32 2
  %0 = load %struct.TS_msg_imprint_st*, %struct.TS_msg_imprint_st** %msg_imprint1, align 8, !tbaa !48
  %hash_algo = getelementptr inbounds %struct.TS_msg_imprint_st, %struct.TS_msg_imprint_st* %0, i64 0, i32 0
  %1 = load %struct.X509_algor_st*, %struct.X509_algor_st** %hash_algo, align 8, !tbaa !49
  %2 = getelementptr inbounds [4096 x i8], [4096 x i8]* %buffer, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 4096, i8* nonnull %2) #8
  %3 = getelementptr inbounds [50 x i8], [50 x i8]* %name, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 50, i8* nonnull %3) #8
  store %struct.X509_algor_st* null, %struct.X509_algor_st** %md_alg, align 8, !tbaa !4
  store i8* null, i8** %imprint, align 8, !tbaa !4
  %call = tail call %struct.X509_algor_st* @X509_ALGOR_dup(%struct.X509_algor_st* noundef %1) #9
  store %struct.X509_algor_st* %call, %struct.X509_algor_st** %md_alg, align 8, !tbaa !4
  %cmp = icmp eq %struct.X509_algor_st* %call, null
  br i1 %cmp, label %err, label %if.end

if.end:                                           ; preds = %entry
  %algorithm = getelementptr inbounds %struct.X509_algor_st, %struct.X509_algor_st* %1, i64 0, i32 0
  %4 = load %struct.asn1_object_st*, %struct.asn1_object_st** %algorithm, align 8, !tbaa !51
  %call2 = call i32 @OBJ_obj2txt(i8* noundef nonnull %3, i32 noundef 50, %struct.asn1_object_st* noundef %4, i32 noundef 0) #9
  %call3 = call i32 @ERR_set_mark() #9
  %call5 = call %struct.evp_md_st* @EVP_MD_fetch(%struct.ossl_lib_ctx_st* noundef null, i8* noundef nonnull %3, i8* noundef null) #9
  %cmp6 = icmp eq %struct.evp_md_st* %call5, null
  br i1 %cmp6, label %if.end10, label %if.end14

if.end10:                                         ; preds = %if.end
  %call9 = call %struct.evp_md_st* @EVP_get_digestbyname(i8* noundef nonnull %3) #9
  %cmp11 = icmp eq %struct.evp_md_st* %call9, null
  br i1 %cmp11, label %if.then12, label %if.end14

if.then12:                                        ; preds = %if.end10
  %call13 = call i32 @ERR_clear_last_mark() #9
  br label %err

if.end14:                                         ; preds = %if.end, %if.end10
  %md.082 = phi %struct.evp_md_st* [ %call9, %if.end10 ], [ %call5, %if.end ]
  %call15 = call i32 @ERR_pop_to_mark() #9
  %call16 = call i32 @EVP_MD_get_size(%struct.evp_md_st* noundef nonnull %md.082) #9
  %cmp17 = icmp slt i32 %call16, 0
  br i1 %cmp17, label %err, label %if.end19

if.end19:                                         ; preds = %if.end14
  store i32 %call16, i32* %imprint_len, align 4, !tbaa !32
  %conv = zext i32 %call16 to i64
  %call20 = call i8* @CRYPTO_malloc(i64 noundef %conv, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 noundef 454) #9
  store i8* %call20, i8** %imprint, align 8, !tbaa !4
  %cmp21 = icmp eq i8* %call20, null
  br i1 %cmp21, label %if.then23, label %if.end24

if.then23:                                        ; preds = %if.end19
  call void @ERR_new() #9
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 noundef 455, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.ts_compute_imprint, i64 0, i64 0)) #9
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 47, i32 noundef 786688, i8* noundef null) #9
  br label %err

if.end24:                                         ; preds = %if.end19
  %call25 = call %struct.evp_md_ctx_st* @EVP_MD_CTX_new() #9
  %cmp26 = icmp eq %struct.evp_md_ctx_st* %call25, null
  br i1 %cmp26, label %if.then28, label %if.end29

if.then28:                                        ; preds = %if.end24
  call void @ERR_new() #9
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 noundef 461, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.ts_compute_imprint, i64 0, i64 0)) #9
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 47, i32 noundef 786688, i8* noundef null) #9
  br label %err

if.end29:                                         ; preds = %if.end24
  %call30 = call i32 @EVP_DigestInit(%struct.evp_md_ctx_st* noundef nonnull %call25, %struct.evp_md_st* noundef nonnull %md.082) #9
  %tobool.not = icmp eq i32 %call30, 0
  br i1 %tobool.not, label %err, label %if.end32

if.end32:                                         ; preds = %if.end29
  call void @EVP_MD_free(%struct.evp_md_st* noundef nonnull %md.082) #9
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end32
  %call34 = call i32 @BIO_read(%struct.bio_st* noundef %data, i8* noundef nonnull %2, i32 noundef 4096) #9
  %cmp35 = icmp sgt i32 %call34, 0
  br i1 %cmp35, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %conv3883 = zext i32 %call34 to i64
  %call39 = call i32 @EVP_DigestUpdate(%struct.evp_md_ctx_st* noundef nonnull %call25, i8* noundef nonnull %2, i64 noundef %conv3883) #9
  %tobool40.not = icmp eq i32 %call39, 0
  br i1 %tobool40.not, label %err, label %while.cond, !llvm.loop !55

while.end:                                        ; preds = %while.cond
  %5 = load i8*, i8** %imprint, align 8, !tbaa !4
  %call43 = call i32 @EVP_DigestFinal(%struct.evp_md_ctx_st* noundef nonnull %call25, i8* noundef %5, i32* noundef null) #9
  %tobool44.not = icmp eq i32 %call43, 0
  br i1 %tobool44.not, label %err, label %if.end46

if.end46:                                         ; preds = %while.end
  call void @EVP_MD_CTX_free(%struct.evp_md_ctx_st* noundef nonnull %call25) #9
  br label %cleanup

err:                                              ; preds = %while.body, %while.end, %if.end29, %if.end14, %entry, %if.then28, %if.then23, %if.then12
  %md.1 = phi %struct.evp_md_st* [ null, %entry ], [ null, %if.then12 ], [ %md.082, %if.end14 ], [ %md.082, %if.then23 ], [ %md.082, %if.then28 ], [ null, %while.end ], [ %md.082, %if.end29 ], [ null, %while.body ]
  %md_ctx.0 = phi %struct.evp_md_ctx_st* [ null, %entry ], [ null, %if.then12 ], [ null, %if.end14 ], [ null, %if.then23 ], [ null, %if.then28 ], [ %call25, %while.end ], [ %call25, %if.end29 ], [ %call25, %while.body ]
  call void @EVP_MD_CTX_free(%struct.evp_md_ctx_st* noundef %md_ctx.0) #9
  call void @EVP_MD_free(%struct.evp_md_st* noundef %md.1) #9
  %6 = load %struct.X509_algor_st*, %struct.X509_algor_st** %md_alg, align 8, !tbaa !4
  call void @X509_ALGOR_free(%struct.X509_algor_st* noundef %6) #9
  store %struct.X509_algor_st* null, %struct.X509_algor_st** %md_alg, align 8, !tbaa !4
  %7 = load i8*, i8** %imprint, align 8, !tbaa !4
  call void @CRYPTO_free(i8* noundef %7, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 noundef 482) #9
  store i32 0, i32* %imprint_len, align 4, !tbaa !32
  store i8* null, i8** %imprint, align 8, !tbaa !4
  br label %cleanup

cleanup:                                          ; preds = %err, %if.end46
  %retval.0 = phi i32 [ 0, %err ], [ 1, %if.end46 ]
  call void @llvm.lifetime.end.p0i8(i64 50, i8* nonnull %3) #8
  call void @llvm.lifetime.end.p0i8(i64 4096, i8* nonnull %2) #8
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @ts_check_nonces(%struct.asn1_string_st* noundef %a, %struct.TS_tst_info_st* nocapture noundef readonly %tst_info) unnamed_addr #0 {
entry:
  %nonce = getelementptr inbounds %struct.TS_tst_info_st, %struct.TS_tst_info_st* %tst_info, i64 0, i32 7
  %0 = load %struct.asn1_string_st*, %struct.asn1_string_st** %nonce, align 8, !tbaa !56
  %tobool.not = icmp eq %struct.asn1_string_st* %0, null
  br i1 %tobool.not, label %cleanup.sink.split, label %if.end

if.end:                                           ; preds = %entry
  %call = tail call i32 @ASN1_INTEGER_cmp(%struct.asn1_string_st* noundef %a, %struct.asn1_string_st* noundef nonnull %0) #9
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %cleanup, label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end, %entry
  %.sink5 = phi i32 [ 521, %entry ], [ 527, %if.end ]
  %.sink = phi i32 [ 105, %entry ], [ 104, %if.end ]
  tail call void @ERR_new() #9
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 noundef %.sink5, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.ts_check_nonces, i64 0, i64 0)) #9
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 47, i32 noundef %.sink, i8* noundef null) #9
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @ts_check_signer_name(%struct.GENERAL_NAME_st* noundef %tsa_name, %struct.x509_st* noundef %signer) unnamed_addr #0 {
entry:
  %idx = alloca i32, align 4
  %0 = bitcast i32* %idx to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #8
  store i32 -1, i32* %idx, align 4, !tbaa !32
  %type = getelementptr inbounds %struct.GENERAL_NAME_st, %struct.GENERAL_NAME_st* %tsa_name, i64 0, i32 0
  %1 = load i32, i32* %type, align 8, !tbaa !57
  %cmp = icmp eq i32 %1, 4
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %d = getelementptr inbounds %struct.GENERAL_NAME_st, %struct.GENERAL_NAME_st* %tsa_name, i64 0, i32 1
  %dirn = bitcast %union.anon.1* %d to %struct.X509_name_st**
  %2 = load %struct.X509_name_st*, %struct.X509_name_st** %dirn, align 8, !tbaa !13
  %call = tail call %struct.X509_name_st* @X509_get_subject_name(%struct.x509_st* noundef %signer) #9
  %call1 = tail call i32 @X509_NAME_cmp(%struct.X509_name_st* noundef %2, %struct.X509_name_st* noundef %call) #9
  %cmp2 = icmp eq i32 %call1, 0
  br i1 %cmp2, label %cleanup, label %if.end

if.end:                                           ; preds = %land.lhs.true, %entry
  %call3 = call i8* @X509_get_ext_d2i(%struct.x509_st* noundef %signer, i32 noundef 85, i32* noundef null, i32* noundef nonnull %idx) #9
  %cmp4.not23 = icmp eq i8* %call3, null
  br i1 %cmp4.not23, label %while.end, label %while.body

while.body:                                       ; preds = %if.end, %if.end8
  %gen_names.0.in24 = phi i8* [ %call9, %if.end8 ], [ %call3, %if.end ]
  %gen_names.025 = bitcast i8* %gen_names.0.in24 to %struct.stack_st_GENERAL_NAME*
  %call5 = call fastcc i32 @ts_find_name(%struct.stack_st_GENERAL_NAME* noundef nonnull %gen_names.025, %struct.GENERAL_NAME_st* noundef %tsa_name) #10
  %cmp6 = icmp sgt i32 %call5, -1
  br i1 %cmp6, label %while.body.while.end_crit_edge, label %if.end8

if.end8:                                          ; preds = %while.body
  call void @GENERAL_NAMES_free(%struct.stack_st_GENERAL_NAME* noundef nonnull %gen_names.025) #9
  %call9 = call i8* @X509_get_ext_d2i(%struct.x509_st* noundef %signer, i32 noundef 85, i32* noundef null, i32* noundef nonnull %idx) #9
  %cmp4.not = icmp eq i8* %call9, null
  br i1 %cmp4.not, label %while.cond.while.end_crit_edge, label %while.body, !llvm.loop !59

while.body.while.end_crit_edge:                   ; preds = %while.body
  %3 = xor i32 %call5, -1
  %call5.lobit.not.le29 = lshr i32 %3, 31
  br label %while.end

while.cond.while.end_crit_edge:                   ; preds = %if.end8
  %4 = xor i32 %call5, -1
  %call5.lobit.not.le = lshr i32 %4, 31
  br label %while.end

while.end:                                        ; preds = %while.cond.while.end_crit_edge, %while.body.while.end_crit_edge, %if.end
  %gen_names.0.in.lcssa = phi i8* [ %gen_names.0.in24, %while.body.while.end_crit_edge ], [ null, %while.cond.while.end_crit_edge ], [ null, %if.end ]
  %found.1 = phi i32 [ %call5.lobit.not.le29, %while.body.while.end_crit_edge ], [ %call5.lobit.not.le, %while.cond.while.end_crit_edge ], [ 0, %if.end ]
  %gen_names.0.le = bitcast i8* %gen_names.0.in.lcssa to %struct.stack_st_GENERAL_NAME*
  call void @GENERAL_NAMES_free(%struct.stack_st_GENERAL_NAME* noundef %gen_names.0.le) #9
  br label %cleanup

cleanup:                                          ; preds = %land.lhs.true, %while.end
  %retval.0 = phi i32 [ %found.1, %while.end ], [ 1, %land.lhs.true ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #8
  ret i32 %retval.0
}

declare void @X509_ALGOR_free(%struct.X509_algor_st* noundef) local_unnamed_addr #2

declare void @CRYPTO_free(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare i32 @OBJ_cmp(%struct.asn1_object_st* noundef, %struct.asn1_object_st* noundef) local_unnamed_addr #2

declare i32 @ASN1_TYPE_get(%struct.asn1_type_st* noundef) local_unnamed_addr #2

declare i32 @ASN1_STRING_length(%struct.asn1_string_st* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare i32 @memcmp(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #4

declare i8* @ASN1_STRING_get0_data(%struct.asn1_string_st* noundef) local_unnamed_addr #2

declare %struct.X509_algor_st* @X509_ALGOR_dup(%struct.X509_algor_st* noundef) local_unnamed_addr #2

declare i32 @OBJ_obj2txt(i8* noundef, i32 noundef, %struct.asn1_object_st* noundef, i32 noundef) local_unnamed_addr #2

declare i32 @ERR_set_mark() local_unnamed_addr #2

declare %struct.evp_md_st* @EVP_MD_fetch(%struct.ossl_lib_ctx_st* noundef, i8* noundef, i8* noundef) local_unnamed_addr #2

declare %struct.evp_md_st* @EVP_get_digestbyname(i8* noundef) local_unnamed_addr #2

declare i32 @ERR_clear_last_mark() local_unnamed_addr #2

declare i32 @ERR_pop_to_mark() local_unnamed_addr #2

declare i32 @EVP_MD_get_size(%struct.evp_md_st* noundef) local_unnamed_addr #2

declare i8* @CRYPTO_malloc(i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare %struct.evp_md_ctx_st* @EVP_MD_CTX_new() local_unnamed_addr #2

declare i32 @EVP_DigestInit(%struct.evp_md_ctx_st* noundef, %struct.evp_md_st* noundef) local_unnamed_addr #2

declare void @EVP_MD_free(%struct.evp_md_st* noundef) local_unnamed_addr #2

declare i32 @EVP_DigestUpdate(%struct.evp_md_ctx_st* noundef, i8* noundef, i64 noundef) local_unnamed_addr #2

declare i32 @EVP_DigestFinal(%struct.evp_md_ctx_st* noundef, i8* noundef, i32* noundef) local_unnamed_addr #2

declare void @EVP_MD_CTX_free(%struct.evp_md_ctx_st* noundef) local_unnamed_addr #2

declare i32 @ASN1_INTEGER_cmp(%struct.asn1_string_st* noundef, %struct.asn1_string_st* noundef) local_unnamed_addr #2

declare i32 @X509_NAME_cmp(%struct.X509_name_st* noundef, %struct.X509_name_st* noundef) local_unnamed_addr #2

declare %struct.X509_name_st* @X509_get_subject_name(%struct.x509_st* noundef) local_unnamed_addr #2

declare i8* @X509_get_ext_d2i(%struct.x509_st* noundef, i32 noundef, i32* noundef, i32* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @ts_find_name(%struct.stack_st_GENERAL_NAME* noundef %gen_names, %struct.GENERAL_NAME_st* noundef %name) unnamed_addr #0 {
entry:
  %call = tail call fastcc %struct.stack_st* @ossl_check_const_GENERAL_NAME_sk_type(%struct.stack_st_GENERAL_NAME* noundef %gen_names) #10
  br label %land.rhs

land.rhs:                                         ; preds = %entry, %for.body
  %i.015 = phi i32 [ 0, %entry ], [ %inc, %for.body ]
  %call1 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call) #9
  %cmp = icmp slt i32 %i.015, %call1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %land.rhs
  %call3 = tail call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call, i32 noundef %i.015) #9
  %0 = bitcast i8* %call3 to %struct.GENERAL_NAME_st*
  %call4 = tail call i32 @GENERAL_NAME_cmp(%struct.GENERAL_NAME_st* noundef %0, %struct.GENERAL_NAME_st* noundef %name) #9
  %cmp5.not = icmp eq i32 %call4, 0
  %inc = add nuw nsw i32 %i.015, 1
  br i1 %cmp5.not, label %for.end, label %land.rhs, !llvm.loop !60

for.end:                                          ; preds = %for.body, %land.rhs
  %i.0.lcssa = phi i32 [ %inc, %for.body ], [ %i.015, %land.rhs ]
  %sub = add nsw i32 %i.0.lcssa, -1
  %cond = select i1 %cmp, i32 %sub, i32 -1
  ret i32 %cond
}

declare void @GENERAL_NAMES_free(%struct.stack_st_GENERAL_NAME* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_const_GENERAL_NAME_sk_type(%struct.stack_st_GENERAL_NAME* noundef readnone %sk) unnamed_addr #3 {
entry:
  %0 = bitcast %struct.stack_st_GENERAL_NAME* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

declare i32 @GENERAL_NAME_cmp(%struct.GENERAL_NAME_st* noundef, %struct.GENERAL_NAME_st* noundef) local_unnamed_addr #2

declare i64 @ASN1_INTEGER_get(%struct.asn1_string_st* noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_const_ASN1_UTF8STRING_sk_type(%struct.stack_st_ASN1_UTF8STRING* noundef readnone %sk) unnamed_addr #3 {
entry:
  %0 = bitcast %struct.stack_st_ASN1_UTF8STRING* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i8* @ts_get_status_text(%struct.stack_st_ASN1_UTF8STRING* noundef %text) unnamed_addr #0 {
entry:
  %call = tail call i8* @ossl_sk_ASN1_UTF8STRING2text(%struct.stack_st_ASN1_UTF8STRING* noundef %text, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0), i64 noundef 1048576) #9
  ret i8* %call
}

declare i32 @ASN1_BIT_STRING_get_bit(%struct.asn1_string_st* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare i8* @strcat(i8* noundef, i8* noundef) local_unnamed_addr #6

; Function Attrs: nounwind
declare i8* @strcpy(i8* noundef, i8* noundef) local_unnamed_addr #6

declare i8* @ossl_sk_ASN1_UTF8STRING2text(%struct.stack_st_ASN1_UTF8STRING* noundef, i8* noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nosync nounwind readonly willreturn
declare i8* @llvm.load.relative.i64(i8*, i64) #7

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #6 = { nounwind "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { argmemonly nofree nosync nounwind readonly willreturn }
attributes #8 = { nounwind }
attributes #9 = { nobuiltin nounwind "no-builtins" }
attributes #10 = { nobuiltin "no-builtins" }
attributes #11 = { nobuiltin nounwind readonly willreturn "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{!"clang version 14.0.0"}
!4 = !{!5, !5, i64 0}
!5 = !{!"any pointer", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !5, i64 24}
!9 = !{!"pkcs7_st", !5, i64 0, !10, i64 8, !11, i64 16, !11, i64 20, !5, i64 24, !6, i64 32, !12, i64 40}
!10 = !{!"long", !6, i64 0}
!11 = !{!"int", !6, i64 0}
!12 = !{!"PKCS7_CTX_st", !5, i64 0, !5, i64 8}
!13 = !{!6, !6, i64 0}
!14 = !{!15, !5, i64 16}
!15 = !{!"pkcs7_signed_st", !5, i64 0, !5, i64 8, !5, i64 16, !5, i64 24, !5, i64 32, !5, i64 40}
!16 = distinct !{!16, !17}
!17 = !{!"llvm.loop.mustprogress"}
!18 = !{!19, !5, i64 8}
!19 = !{!"TS_resp_st", !5, i64 0, !5, i64 8, !5, i64 16}
!20 = !{!19, !5, i64 16}
!21 = !{!19, !5, i64 0}
!22 = !{!23, !5, i64 0}
!23 = !{!"TS_status_info_st", !5, i64 0, !5, i64 8, !5, i64 16}
!24 = !{!23, !5, i64 8}
!25 = !{!23, !5, i64 16}
!26 = !{!27, !11, i64 0}
!27 = !{!"", !11, i64 0, !5, i64 8}
!28 = !{!27, !5, i64 8}
!29 = distinct !{!29, !17}
!30 = !{!31, !5, i64 64}
!31 = !{!"TS_tst_info_st", !5, i64 0, !5, i64 8, !5, i64 16, !5, i64 24, !5, i64 32, !5, i64 40, !11, i64 48, !5, i64 56, !5, i64 64, !5, i64 72}
!32 = !{!11, !11, i64 0}
!33 = !{!34, !11, i64 0}
!34 = !{!"TS_verify_ctx", !11, i64 0, !5, i64 8, !5, i64 16, !5, i64 24, !5, i64 32, !5, i64 40, !11, i64 48, !5, i64 56, !5, i64 64, !5, i64 72}
!35 = !{!34, !5, i64 16}
!36 = !{!34, !5, i64 8}
!37 = !{!34, !5, i64 24}
!38 = !{!34, !5, i64 32}
!39 = !{!34, !5, i64 40}
!40 = !{!34, !11, i64 48}
!41 = !{!34, !5, i64 56}
!42 = !{!34, !5, i64 64}
!43 = !{!34, !5, i64 72}
!44 = !{!45, !5, i64 8}
!45 = !{!"asn1_string_st", !11, i64 0, !11, i64 4, !5, i64 8, !10, i64 16}
!46 = !{!45, !11, i64 0}
!47 = !{!31, !5, i64 8}
!48 = !{!31, !5, i64 16}
!49 = !{!50, !5, i64 0}
!50 = !{!"TS_msg_imprint_st", !5, i64 0, !5, i64 8}
!51 = !{!52, !5, i64 0}
!52 = !{!"X509_algor_st", !5, i64 0, !5, i64 8}
!53 = !{!52, !5, i64 8}
!54 = !{!50, !5, i64 8}
!55 = distinct !{!55, !17}
!56 = !{!31, !5, i64 56}
!57 = !{!58, !11, i64 0}
!58 = !{!"GENERAL_NAME_st", !11, i64 0, !6, i64 8}
!59 = distinct !{!59, !17}
!60 = distinct !{!60, !17}
