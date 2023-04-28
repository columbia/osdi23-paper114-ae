; ModuleID = 'crypto/ts/ts_rsp_sign.c'
source_filename = "crypto/ts/ts_rsp_sign.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TS_resp_ctx = type { %struct.x509_st*, %struct.evp_pkey_st*, %struct.evp_md_st*, %struct.evp_md_st*, %struct.stack_st_X509*, %struct.stack_st_ASN1_OBJECT*, %struct.asn1_object_st*, %struct.stack_st_EVP_MD*, %struct.asn1_string_st*, %struct.asn1_string_st*, %struct.asn1_string_st*, i32, i32, %struct.asn1_string_st* (%struct.TS_resp_ctx*, i8*)*, i8*, i32 (%struct.TS_resp_ctx*, i8*, i64*, i64*)*, i8*, i32 (%struct.TS_resp_ctx*, %struct.X509_extension_st*, i8*)*, i8*, %struct.TS_req_st*, %struct.TS_resp_st*, %struct.TS_tst_info_st*, %struct.ossl_lib_ctx_st*, i8* }
%struct.x509_st = type opaque
%struct.evp_pkey_st = type opaque
%struct.evp_md_st = type opaque
%struct.stack_st_X509 = type opaque
%struct.stack_st_ASN1_OBJECT = type opaque
%struct.asn1_object_st = type opaque
%struct.stack_st_EVP_MD = type opaque
%struct.asn1_string_st = type { i32, i32, i8*, i64 }
%struct.X509_extension_st = type opaque
%struct.TS_req_st = type { %struct.asn1_string_st*, %struct.TS_msg_imprint_st*, %struct.asn1_object_st*, %struct.asn1_string_st*, i32, %struct.stack_st_X509_EXTENSION* }
%struct.TS_msg_imprint_st = type { %struct.X509_algor_st*, %struct.asn1_string_st* }
%struct.X509_algor_st = type { %struct.asn1_object_st*, %struct.asn1_type_st* }
%struct.asn1_type_st = type { i32, %union.anon }
%union.anon = type { i8* }
%struct.stack_st_X509_EXTENSION = type opaque
%struct.TS_resp_st = type { %struct.TS_status_info_st*, %struct.pkcs7_st*, %struct.TS_tst_info_st* }
%struct.TS_status_info_st = type { %struct.asn1_string_st*, %struct.stack_st_ASN1_UTF8STRING*, %struct.asn1_string_st* }
%struct.stack_st_ASN1_UTF8STRING = type opaque
%struct.pkcs7_st = type { i8*, i64, i32, i32, %struct.asn1_object_st*, %union.anon.0, %struct.PKCS7_CTX_st }
%union.anon.0 = type { i8* }
%struct.PKCS7_CTX_st = type { %struct.ossl_lib_ctx_st*, i8* }
%struct.TS_tst_info_st = type { %struct.asn1_string_st*, %struct.asn1_object_st*, %struct.TS_msg_imprint_st*, %struct.asn1_string_st*, %struct.asn1_string_st*, %struct.TS_accuracy_st*, i32, %struct.asn1_string_st*, %struct.GENERAL_NAME_st*, %struct.stack_st_X509_EXTENSION* }
%struct.TS_accuracy_st = type { %struct.asn1_string_st*, %struct.asn1_string_st*, %struct.asn1_string_st* }
%struct.GENERAL_NAME_st = type { i32, %union.anon.1 }
%union.anon.1 = type { i8* }
%struct.ossl_lib_ctx_st = type opaque
%struct.timeval = type { i64, i64 }
%struct.stack_st = type opaque
%struct.bio_st = type opaque
%struct.X509_name_st = type opaque
%struct.pkcs7_signed_st = type { %struct.asn1_string_st*, %struct.stack_st_X509_ALGOR*, %struct.stack_st_X509*, %struct.stack_st_X509_CRL*, %struct.stack_st_PKCS7_SIGNER_INFO*, %struct.pkcs7_st* }
%struct.stack_st_X509_ALGOR = type opaque
%struct.stack_st_X509_CRL = type opaque
%struct.stack_st_PKCS7_SIGNER_INFO = type opaque
%struct.ossl_provider_st = type opaque
%struct.pkcs7_signer_info_st = type { %struct.asn1_string_st*, %struct.pkcs7_issuer_and_serial_st*, %struct.X509_algor_st*, %struct.stack_st_X509_ATTRIBUTE*, %struct.X509_algor_st*, %struct.asn1_string_st*, %struct.stack_st_X509_ATTRIBUTE*, %struct.evp_pkey_st*, %struct.PKCS7_CTX_st* }
%struct.pkcs7_issuer_and_serial_st = type { %struct.X509_name_st*, %struct.asn1_string_st* }
%struct.stack_st_X509_ATTRIBUTE = type opaque
%struct.ESS_signing_cert = type { %struct.stack_st_ESS_CERT_ID*, %struct.stack_st_POLICYINFO* }
%struct.stack_st_ESS_CERT_ID = type opaque
%struct.stack_st_POLICYINFO = type opaque
%struct.ESS_signing_cert_v2_st = type { %struct.stack_st_ESS_CERT_ID_V2*, %struct.stack_st_POLICYINFO* }
%struct.stack_st_ESS_CERT_ID_V2 = type opaque
%struct.tm = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8* }

@.str = private unnamed_addr constant [24 x i8] c"crypto/ts/ts_rsp_sign.c\00", align 1
@__func__.TS_RESP_CTX_new_ex = private unnamed_addr constant [19 x i8] c"TS_RESP_CTX_new_ex\00", align 1
@__func__.TS_RESP_CTX_set_signer_cert = private unnamed_addr constant [28 x i8] c"TS_RESP_CTX_set_signer_cert\00", align 1
@__func__.TS_RESP_CTX_set_def_policy = private unnamed_addr constant [27 x i8] c"TS_RESP_CTX_set_def_policy\00", align 1
@__func__.TS_RESP_CTX_add_policy = private unnamed_addr constant [23 x i8] c"TS_RESP_CTX_add_policy\00", align 1
@__func__.TS_RESP_CTX_add_md = private unnamed_addr constant [19 x i8] c"TS_RESP_CTX_add_md\00", align 1
@__func__.TS_RESP_CTX_set_accuracy = private unnamed_addr constant [25 x i8] c"TS_RESP_CTX_set_accuracy\00", align 1
@__func__.TS_RESP_CTX_set_status_info = private unnamed_addr constant [28 x i8] c"TS_RESP_CTX_set_status_info\00", align 1
@__func__.TS_RESP_CTX_add_failure_info = private unnamed_addr constant [29 x i8] c"TS_RESP_CTX_add_failure_info\00", align 1
@__func__.TS_RESP_create_response = private unnamed_addr constant [24 x i8] c"TS_RESP_create_response\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"Bad request format or system error.\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"Error during response generation.\00", align 1
@__func__.def_serial_cb = private unnamed_addr constant [14 x i8] c"def_serial_cb\00", align 1
@.str.3 = private unnamed_addr constant [39 x i8] c"Error during serial number generation.\00", align 1
@__func__.def_time_cb = private unnamed_addr constant [12 x i8] c"def_time_cb\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"Time is not available.\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"Unsupported extension.\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"Bad request version.\00", align 1
@.str.7 = private unnamed_addr constant [43 x i8] c"Message digest algorithm is not supported.\00", align 1
@.str.8 = private unnamed_addr constant [38 x i8] c"Superfluous message digest parameter.\00", align 1
@.str.9 = private unnamed_addr constant [20 x i8] c"Bad message digest.\00", align 1
@__func__.ts_RESP_get_policy = private unnamed_addr constant [19 x i8] c"ts_RESP_get_policy\00", align 1
@.str.10 = private unnamed_addr constant [35 x i8] c"Requested policy is not supported.\00", align 1
@__func__.ts_RESP_create_tst_info = private unnamed_addr constant [24 x i8] c"ts_RESP_create_tst_info\00", align 1
@.str.11 = private unnamed_addr constant [33 x i8] c"Error during TSTInfo generation.\00", align 1
@.str.12 = private unnamed_addr constant [25 x i8] c"%04d%02d%02d%02d%02d%02d\00", align 1
@.str.13 = private unnamed_addr constant [7 x i8] c".%06ld\00", align 1
@__func__.TS_RESP_set_genTime_with_precision = private unnamed_addr constant [35 x i8] c"TS_RESP_set_genTime_with_precision\00", align 1
@__func__.ts_RESP_sign = private unnamed_addr constant [13 x i8] c"ts_RESP_sign\00", align 1
@.str.14 = private unnamed_addr constant [7 x i8] c"SHA256\00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c"SHA1\00", align 1
@.str.16 = private unnamed_addr constant [35 x i8] c"Error during signature generation.\00", align 1

; Function Attrs: noinline nounwind uwtable
define %struct.TS_resp_ctx* @TS_RESP_CTX_new_ex(%struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef %propq) local_unnamed_addr #0 {
entry:
  %call = tail call i8* @CRYPTO_zalloc(i64 noundef 184, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 116) #9
  %0 = bitcast i8* %call to %struct.TS_resp_ctx*
  %cmp = icmp eq i8* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #9
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 117, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.TS_RESP_CTX_new_ex, i64 0, i64 0)) #9
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 47, i32 noundef 786688, i8* noundef null) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %cmp1.not = icmp eq i8* %propq, null
  br i1 %cmp1.not, label %if.end9, label %if.then2

if.then2:                                         ; preds = %if.end
  %call3 = tail call i8* @CRYPTO_strdup(i8* noundef nonnull %propq, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 122) #9
  %propq4 = getelementptr inbounds i8, i8* %call, i64 176
  %1 = bitcast i8* %propq4 to i8**
  store i8* %call3, i8** %1, align 8, !tbaa !4
  %cmp6 = icmp eq i8* %call3, null
  br i1 %cmp6, label %if.then7, label %if.end9

if.then7:                                         ; preds = %if.then2
  tail call void @CRYPTO_free(i8* noundef nonnull %call, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 124) #9
  tail call void @ERR_new() #9
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 125, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.TS_RESP_CTX_new_ex, i64 0, i64 0)) #9
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 47, i32 noundef 786688, i8* noundef null) #9
  br label %cleanup

if.end9:                                          ; preds = %if.then2, %if.end
  %libctx10 = getelementptr inbounds i8, i8* %call, i64 168
  %2 = bitcast i8* %libctx10 to %struct.ossl_lib_ctx_st**
  store %struct.ossl_lib_ctx_st* %libctx, %struct.ossl_lib_ctx_st** %2, align 8, !tbaa !10
  %serial_cb = getelementptr inbounds i8, i8* %call, i64 96
  %3 = bitcast i8* %serial_cb to %struct.asn1_string_st* (%struct.TS_resp_ctx*, i8*)**
  store %struct.asn1_string_st* (%struct.TS_resp_ctx*, i8*)* @def_serial_cb, %struct.asn1_string_st* (%struct.TS_resp_ctx*, i8*)** %3, align 8, !tbaa !11
  %time_cb = getelementptr inbounds i8, i8* %call, i64 112
  %4 = bitcast i8* %time_cb to i32 (%struct.TS_resp_ctx*, i8*, i64*, i64*)**
  store i32 (%struct.TS_resp_ctx*, i8*, i64*, i64*)* @def_time_cb, i32 (%struct.TS_resp_ctx*, i8*, i64*, i64*)** %4, align 8, !tbaa !12
  %extension_cb = getelementptr inbounds i8, i8* %call, i64 128
  %5 = bitcast i8* %extension_cb to i32 (%struct.TS_resp_ctx*, %struct.X509_extension_st*, i8*)**
  store i32 (%struct.TS_resp_ctx*, %struct.X509_extension_st*, i8*)* @def_extension_cb, i32 (%struct.TS_resp_ctx*, %struct.X509_extension_st*, i8*)** %5, align 8, !tbaa !13
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %if.then7, %if.then
  %retval.0 = phi %struct.TS_resp_ctx* [ null, %if.then ], [ null, %if.then7 ], [ %0, %if.end9 ]
  ret %struct.TS_resp_ctx* %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

declare i8* @CRYPTO_zalloc(i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare void @ERR_new() local_unnamed_addr #2

declare void @ERR_set_debug(i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #2

declare void @ERR_set_error(i32 noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #2

declare i8* @CRYPTO_strdup(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare void @CRYPTO_free(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal %struct.asn1_string_st* @def_serial_cb(%struct.TS_resp_ctx* nocapture noundef readonly %ctx, i8* nocapture noundef readnone %data) #0 {
entry:
  %call = tail call %struct.asn1_string_st* @ASN1_INTEGER_new() #9
  %cmp = icmp eq %struct.asn1_string_st* %call, null
  br i1 %cmp, label %err, label %if.end

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @ASN1_INTEGER_set(%struct.asn1_string_st* noundef nonnull %call, i64 noundef 1) #9
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %err, label %cleanup

err:                                              ; preds = %if.end, %entry
  tail call void @ERR_new() #9
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 54, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.def_serial_cb, i64 0, i64 0)) #9
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 47, i32 noundef 786688, i8* noundef null) #9
  %call4 = tail call i32 @TS_RESP_CTX_set_status_info(%struct.TS_resp_ctx* noundef %ctx, i32 noundef 2, i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0)) #10
  tail call void @ASN1_INTEGER_free(%struct.asn1_string_st* noundef %call) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %err
  %retval.0 = phi %struct.asn1_string_st* [ null, %err ], [ %call, %if.end ]
  ret %struct.asn1_string_st* %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @def_time_cb(%struct.TS_resp_ctx* nocapture noundef readonly %ctx, i8* nocapture noundef readnone %data, i64* nocapture noundef writeonly %sec, i64* nocapture noundef writeonly %usec) #0 {
entry:
  %tv = alloca %struct.timeval, align 8
  %0 = bitcast %struct.timeval* %tv to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #11
  %call = call i32 @gettimeofday(%struct.timeval* noundef nonnull %tv, i8* noundef null) #9
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @ERR_new() #9
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 68, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @__func__.def_time_cb, i64 0, i64 0)) #9
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 47, i32 noundef 122, i8* noundef null) #9
  %call1 = call i32 @TS_RESP_CTX_set_status_info(%struct.TS_resp_ctx* noundef %ctx, i32 noundef 2, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0)) #10
  %call2 = call i32 @TS_RESP_CTX_add_failure_info(%struct.TS_resp_ctx* noundef %ctx, i32 noundef 14) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %tv_sec = getelementptr inbounds %struct.timeval, %struct.timeval* %tv, i64 0, i32 0
  %1 = load i64, i64* %tv_sec, align 8, !tbaa !14
  store i64 %1, i64* %sec, align 8, !tbaa !17
  %tv_usec = getelementptr inbounds %struct.timeval, %struct.timeval* %tv, i64 0, i32 1
  %2 = load i64, i64* %tv_usec, align 8, !tbaa !18
  store i64 %2, i64* %usec, align 8, !tbaa !17
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 1, %if.end ]
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #11
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @def_extension_cb(%struct.TS_resp_ctx* nocapture noundef readonly %ctx, %struct.X509_extension_st* nocapture noundef readnone %ext, i8* nocapture noundef readnone %data) #0 {
entry:
  %call = tail call i32 @TS_RESP_CTX_set_status_info(%struct.TS_resp_ctx* noundef %ctx, i32 noundef 2, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0)) #10
  %call1 = tail call i32 @TS_RESP_CTX_add_failure_info(%struct.TS_resp_ctx* noundef %ctx, i32 noundef 16) #10
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: noinline nounwind uwtable
define %struct.TS_resp_ctx* @TS_RESP_CTX_new() local_unnamed_addr #0 {
entry:
  %call = tail call %struct.TS_resp_ctx* @TS_RESP_CTX_new_ex(%struct.ossl_lib_ctx_st* noundef null, i8* noundef null) #10
  ret %struct.TS_resp_ctx* %call
}

; Function Attrs: noinline nounwind uwtable
define void @TS_RESP_CTX_free(%struct.TS_resp_ctx* noundef %ctx) local_unnamed_addr #0 {
entry:
  %tobool.not = icmp eq %struct.TS_resp_ctx* %ctx, null
  br i1 %tobool.not, label %return, label %if.end

if.end:                                           ; preds = %entry
  %propq = getelementptr inbounds %struct.TS_resp_ctx, %struct.TS_resp_ctx* %ctx, i64 0, i32 23
  %0 = load i8*, i8** %propq, align 8, !tbaa !4
  tail call void @CRYPTO_free(i8* noundef %0, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 147) #9
  %signer_cert = getelementptr inbounds %struct.TS_resp_ctx, %struct.TS_resp_ctx* %ctx, i64 0, i32 0
  %1 = load %struct.x509_st*, %struct.x509_st** %signer_cert, align 8, !tbaa !19
  tail call void @X509_free(%struct.x509_st* noundef %1) #9
  %signer_key = getelementptr inbounds %struct.TS_resp_ctx, %struct.TS_resp_ctx* %ctx, i64 0, i32 1
  %2 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %signer_key, align 8, !tbaa !20
  tail call void @EVP_PKEY_free(%struct.evp_pkey_st* noundef %2) #9
  %certs = getelementptr inbounds %struct.TS_resp_ctx, %struct.TS_resp_ctx* %ctx, i64 0, i32 4
  %3 = load %struct.stack_st_X509*, %struct.stack_st_X509** %certs, align 8, !tbaa !21
  %call = tail call fastcc %struct.stack_st* @ossl_check_X509_sk_type(%struct.stack_st_X509* noundef %3) #10
  tail call void @OPENSSL_sk_pop_free(%struct.stack_st* noundef %call, void (i8*)* noundef bitcast (void (%struct.x509_st*)* @X509_free to void (i8*)*)) #9
  %policies = getelementptr inbounds %struct.TS_resp_ctx, %struct.TS_resp_ctx* %ctx, i64 0, i32 5
  %4 = load %struct.stack_st_ASN1_OBJECT*, %struct.stack_st_ASN1_OBJECT** %policies, align 8, !tbaa !22
  %call2 = tail call fastcc %struct.stack_st* @ossl_check_ASN1_OBJECT_sk_type(%struct.stack_st_ASN1_OBJECT* noundef %4) #10
  tail call void @OPENSSL_sk_pop_free(%struct.stack_st* noundef %call2, void (i8*)* noundef bitcast (void (%struct.asn1_object_st*)* @ASN1_OBJECT_free to void (i8*)*)) #9
  %default_policy = getelementptr inbounds %struct.TS_resp_ctx, %struct.TS_resp_ctx* %ctx, i64 0, i32 6
  %5 = load %struct.asn1_object_st*, %struct.asn1_object_st** %default_policy, align 8, !tbaa !23
  tail call void @ASN1_OBJECT_free(%struct.asn1_object_st* noundef %5) #9
  %mds = getelementptr inbounds %struct.TS_resp_ctx, %struct.TS_resp_ctx* %ctx, i64 0, i32 7
  %6 = load %struct.stack_st_EVP_MD*, %struct.stack_st_EVP_MD** %mds, align 8, !tbaa !24
  tail call fastcc void @sk_EVP_MD_free(%struct.stack_st_EVP_MD* noundef %6) #10
  %seconds = getelementptr inbounds %struct.TS_resp_ctx, %struct.TS_resp_ctx* %ctx, i64 0, i32 8
  %7 = load %struct.asn1_string_st*, %struct.asn1_string_st** %seconds, align 8, !tbaa !25
  tail call void @ASN1_INTEGER_free(%struct.asn1_string_st* noundef %7) #9
  %millis = getelementptr inbounds %struct.TS_resp_ctx, %struct.TS_resp_ctx* %ctx, i64 0, i32 9
  %8 = load %struct.asn1_string_st*, %struct.asn1_string_st** %millis, align 8, !tbaa !26
  tail call void @ASN1_INTEGER_free(%struct.asn1_string_st* noundef %8) #9
  %micros = getelementptr inbounds %struct.TS_resp_ctx, %struct.TS_resp_ctx* %ctx, i64 0, i32 10
  %9 = load %struct.asn1_string_st*, %struct.asn1_string_st** %micros, align 8, !tbaa !27
  tail call void @ASN1_INTEGER_free(%struct.asn1_string_st* noundef %9) #9
  %10 = bitcast %struct.TS_resp_ctx* %ctx to i8*
  tail call void @CRYPTO_free(i8* noundef nonnull %10, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 157) #9
  br label %return

return:                                           ; preds = %entry, %if.end
  ret void
}

declare void @X509_free(%struct.x509_st* noundef) #2

declare void @EVP_PKEY_free(%struct.evp_pkey_st* noundef) local_unnamed_addr #2

declare void @OPENSSL_sk_pop_free(%struct.stack_st* noundef, void (i8*)* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_X509_sk_type(%struct.stack_st_X509* noundef readnone %sk) unnamed_addr #3 {
entry:
  %0 = bitcast %struct.stack_st_X509* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_ASN1_OBJECT_sk_type(%struct.stack_st_ASN1_OBJECT* noundef readnone %sk) unnamed_addr #3 {
entry:
  %0 = bitcast %struct.stack_st_ASN1_OBJECT* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

declare void @ASN1_OBJECT_free(%struct.asn1_object_st* noundef) #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @sk_EVP_MD_free(%struct.stack_st_EVP_MD* noundef %sk) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.stack_st_EVP_MD* %sk to %struct.stack_st*
  tail call void @OPENSSL_sk_free(%struct.stack_st* noundef %0) #9
  ret void
}

declare void @ASN1_INTEGER_free(%struct.asn1_string_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @TS_RESP_CTX_set_signer_cert(%struct.TS_resp_ctx* nocapture noundef %ctx, %struct.x509_st* noundef %signer) local_unnamed_addr #0 {
entry:
  %call = tail call i32 @X509_check_purpose(%struct.x509_st* noundef %signer, i32 noundef 9, i32 noundef 0) #9
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #9
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 163, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.TS_RESP_CTX_set_signer_cert, i64 0, i64 0)) #9
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 47, i32 noundef 117, i8* noundef null) #9
  br label %return

if.end:                                           ; preds = %entry
  %signer_cert = getelementptr inbounds %struct.TS_resp_ctx, %struct.TS_resp_ctx* %ctx, i64 0, i32 0
  %0 = load %struct.x509_st*, %struct.x509_st** %signer_cert, align 8, !tbaa !19
  tail call void @X509_free(%struct.x509_st* noundef %0) #9
  store %struct.x509_st* %signer, %struct.x509_st** %signer_cert, align 8, !tbaa !19
  %call3 = tail call i32 @X509_up_ref(%struct.x509_st* noundef %signer) #9
  br label %return

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 1, %if.end ]
  ret i32 %retval.0
}

declare i32 @X509_check_purpose(%struct.x509_st* noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare i32 @X509_up_ref(%struct.x509_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @TS_RESP_CTX_set_signer_key(%struct.TS_resp_ctx* nocapture noundef %ctx, %struct.evp_pkey_st* noundef %key) local_unnamed_addr #0 {
entry:
  %signer_key = getelementptr inbounds %struct.TS_resp_ctx, %struct.TS_resp_ctx* %ctx, i64 0, i32 1
  %0 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %signer_key, align 8, !tbaa !20
  tail call void @EVP_PKEY_free(%struct.evp_pkey_st* noundef %0) #9
  store %struct.evp_pkey_st* %key, %struct.evp_pkey_st** %signer_key, align 8, !tbaa !20
  %call = tail call i32 @EVP_PKEY_up_ref(%struct.evp_pkey_st* noundef %key) #9
  ret i32 1
}

declare i32 @EVP_PKEY_up_ref(%struct.evp_pkey_st* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define i32 @TS_RESP_CTX_set_signer_digest(%struct.TS_resp_ctx* nocapture noundef writeonly %ctx, %struct.evp_md_st* noundef %md) local_unnamed_addr #4 {
entry:
  %signer_md = getelementptr inbounds %struct.TS_resp_ctx, %struct.TS_resp_ctx* %ctx, i64 0, i32 2
  store %struct.evp_md_st* %md, %struct.evp_md_st** %signer_md, align 8, !tbaa !28
  ret i32 1
}

; Function Attrs: noinline nounwind uwtable
define i32 @TS_RESP_CTX_set_def_policy(%struct.TS_resp_ctx* nocapture noundef %ctx, %struct.asn1_object_st* noundef %def_policy) local_unnamed_addr #0 {
entry:
  %default_policy = getelementptr inbounds %struct.TS_resp_ctx, %struct.TS_resp_ctx* %ctx, i64 0, i32 6
  %0 = load %struct.asn1_object_st*, %struct.asn1_object_st** %default_policy, align 8, !tbaa !23
  tail call void @ASN1_OBJECT_free(%struct.asn1_object_st* noundef %0) #9
  %call = tail call %struct.asn1_object_st* @OBJ_dup(%struct.asn1_object_st* noundef %def_policy) #9
  store %struct.asn1_object_st* %call, %struct.asn1_object_st** %default_policy, align 8, !tbaa !23
  %cmp = icmp eq %struct.asn1_object_st* %call, null
  br i1 %cmp, label %err, label %return

err:                                              ; preds = %entry
  tail call void @ERR_new() #9
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 194, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.TS_RESP_CTX_set_def_policy, i64 0, i64 0)) #9
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 47, i32 noundef 786688, i8* noundef null) #9
  br label %return

return:                                           ; preds = %entry, %err
  %retval.0 = phi i32 [ 0, %err ], [ 1, %entry ]
  ret i32 %retval.0
}

declare %struct.asn1_object_st* @OBJ_dup(%struct.asn1_object_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @TS_RESP_CTX_set_certs(%struct.TS_resp_ctx* nocapture noundef %ctx, %struct.stack_st_X509* noundef %certs) local_unnamed_addr #0 {
entry:
  %certs1 = getelementptr inbounds %struct.TS_resp_ctx, %struct.TS_resp_ctx* %ctx, i64 0, i32 4
  %0 = load %struct.stack_st_X509*, %struct.stack_st_X509** %certs1, align 8, !tbaa !21
  %call = tail call fastcc %struct.stack_st* @ossl_check_X509_sk_type(%struct.stack_st_X509* noundef %0) #10
  tail call void @OPENSSL_sk_pop_free(%struct.stack_st* noundef %call, void (i8*)* noundef bitcast (void (%struct.x509_st*)* @X509_free to void (i8*)*)) #9
  store %struct.stack_st_X509* null, %struct.stack_st_X509** %certs1, align 8, !tbaa !21
  %cmp = icmp eq %struct.stack_st_X509* %certs, null
  br i1 %cmp, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %entry
  %call4 = tail call %struct.stack_st_X509* @X509_chain_up_ref(%struct.stack_st_X509* noundef nonnull %certs) #9
  store %struct.stack_st_X509* %call4, %struct.stack_st_X509** %certs1, align 8, !tbaa !21
  %cmp6 = icmp ne %struct.stack_st_X509* %call4, null
  %phi.cast = zext i1 %cmp6 to i32
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %entry
  %1 = phi i32 [ 1, %entry ], [ %phi.cast, %lor.rhs ]
  ret i32 %1
}

declare %struct.stack_st_X509* @X509_chain_up_ref(%struct.stack_st_X509* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @TS_RESP_CTX_add_policy(%struct.TS_resp_ctx* nocapture noundef %ctx, %struct.asn1_object_st* noundef %policy) local_unnamed_addr #0 {
entry:
  %policies = getelementptr inbounds %struct.TS_resp_ctx, %struct.TS_resp_ctx* %ctx, i64 0, i32 5
  %0 = load %struct.stack_st_ASN1_OBJECT*, %struct.stack_st_ASN1_OBJECT** %policies, align 8, !tbaa !22
  %cmp = icmp eq %struct.stack_st_ASN1_OBJECT* %0, null
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %call = tail call %struct.stack_st* @OPENSSL_sk_new_null() #9
  %1 = bitcast %struct.stack_st_ASN1_OBJECT** %policies to %struct.stack_st**
  store %struct.stack_st* %call, %struct.stack_st** %1, align 8, !tbaa !22
  %cmp2 = icmp eq %struct.stack_st* %call, null
  br i1 %cmp2, label %err, label %if.end

if.end:                                           ; preds = %land.lhs.true, %entry
  %call3 = tail call %struct.asn1_object_st* @OBJ_dup(%struct.asn1_object_st* noundef %policy) #9
  %cmp4 = icmp eq %struct.asn1_object_st* %call3, null
  br i1 %cmp4, label %err, label %if.end6

if.end6:                                          ; preds = %if.end
  %2 = load %struct.stack_st_ASN1_OBJECT*, %struct.stack_st_ASN1_OBJECT** %policies, align 8, !tbaa !22
  %call8 = tail call fastcc %struct.stack_st* @ossl_check_ASN1_OBJECT_sk_type(%struct.stack_st_ASN1_OBJECT* noundef %2) #10
  %3 = bitcast %struct.asn1_object_st* %call3 to i8*
  %call10 = tail call i32 @OPENSSL_sk_push(%struct.stack_st* noundef %call8, i8* noundef nonnull %3) #9
  %tobool.not = icmp eq i32 %call10, 0
  br i1 %tobool.not, label %err, label %cleanup

err:                                              ; preds = %if.end6, %if.end, %land.lhs.true
  %copy.0 = phi %struct.asn1_object_st* [ null, %land.lhs.true ], [ null, %if.end ], [ %call3, %if.end6 ]
  tail call void @ERR_new() #9
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 220, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.TS_RESP_CTX_add_policy, i64 0, i64 0)) #9
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 47, i32 noundef 786688, i8* noundef null) #9
  tail call void @ASN1_OBJECT_free(%struct.asn1_object_st* noundef %copy.0) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %err
  %retval.0 = phi i32 [ 0, %err ], [ 1, %if.end6 ]
  ret i32 %retval.0
}

declare %struct.stack_st* @OPENSSL_sk_new_null() local_unnamed_addr #2

declare i32 @OPENSSL_sk_push(%struct.stack_st* noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @TS_RESP_CTX_add_md(%struct.TS_resp_ctx* nocapture noundef %ctx, %struct.evp_md_st* noundef %md) local_unnamed_addr #0 {
entry:
  %mds = getelementptr inbounds %struct.TS_resp_ctx, %struct.TS_resp_ctx* %ctx, i64 0, i32 7
  %0 = load %struct.stack_st_EVP_MD*, %struct.stack_st_EVP_MD** %mds, align 8, !tbaa !24
  %cmp = icmp eq %struct.stack_st_EVP_MD* %0, null
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %call = tail call fastcc %struct.stack_st_EVP_MD* @sk_EVP_MD_new_null() #10
  store %struct.stack_st_EVP_MD* %call, %struct.stack_st_EVP_MD** %mds, align 8, !tbaa !24
  %cmp2 = icmp eq %struct.stack_st_EVP_MD* %call, null
  br i1 %cmp2, label %err, label %if.end

if.end:                                           ; preds = %land.lhs.true, %entry
  %1 = phi %struct.stack_st_EVP_MD* [ %call, %land.lhs.true ], [ %0, %entry ]
  %call4 = tail call fastcc i32 @sk_EVP_MD_push(%struct.stack_st_EVP_MD* noundef nonnull %1, %struct.evp_md_st* noundef %md) #10
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %err, label %return

err:                                              ; preds = %if.end, %land.lhs.true
  tail call void @ERR_new() #9
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 235, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.TS_RESP_CTX_add_md, i64 0, i64 0)) #9
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 47, i32 noundef 786688, i8* noundef null) #9
  br label %return

return:                                           ; preds = %if.end, %err
  %retval.0 = phi i32 [ 0, %err ], [ 1, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.stack_st_EVP_MD* @sk_EVP_MD_new_null() unnamed_addr #0 {
entry:
  %call = tail call %struct.stack_st* @OPENSSL_sk_new_null() #9
  %0 = bitcast %struct.stack_st* %call to %struct.stack_st_EVP_MD*
  ret %struct.stack_st_EVP_MD* %0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @sk_EVP_MD_push(%struct.stack_st_EVP_MD* noundef %sk, %struct.evp_md_st* noundef %ptr) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.stack_st_EVP_MD* %sk to %struct.stack_st*
  %1 = bitcast %struct.evp_md_st* %ptr to i8*
  %call = tail call i32 @OPENSSL_sk_push(%struct.stack_st* noundef %0, i8* noundef %1) #9
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define i32 @TS_RESP_CTX_set_accuracy(%struct.TS_resp_ctx* nocapture noundef %ctx, i32 noundef %secs, i32 noundef %millis, i32 noundef %micros) local_unnamed_addr #0 {
entry:
  %seconds = getelementptr inbounds %struct.TS_resp_ctx, %struct.TS_resp_ctx* %ctx, i64 0, i32 8
  %0 = load %struct.asn1_string_st*, %struct.asn1_string_st** %seconds, align 8, !tbaa !25
  tail call void @ASN1_INTEGER_free(%struct.asn1_string_st* noundef %0) #9
  store %struct.asn1_string_st* null, %struct.asn1_string_st** %seconds, align 8, !tbaa !25
  %millis2 = getelementptr inbounds %struct.TS_resp_ctx, %struct.TS_resp_ctx* %ctx, i64 0, i32 9
  %1 = load %struct.asn1_string_st*, %struct.asn1_string_st** %millis2, align 8, !tbaa !26
  tail call void @ASN1_INTEGER_free(%struct.asn1_string_st* noundef %1) #9
  store %struct.asn1_string_st* null, %struct.asn1_string_st** %millis2, align 8, !tbaa !26
  %micros4 = getelementptr inbounds %struct.TS_resp_ctx, %struct.TS_resp_ctx* %ctx, i64 0, i32 10
  %2 = load %struct.asn1_string_st*, %struct.asn1_string_st** %micros4, align 8, !tbaa !27
  tail call void @ASN1_INTEGER_free(%struct.asn1_string_st* noundef %2) #9
  store %struct.asn1_string_st* null, %struct.asn1_string_st** %micros4, align 8, !tbaa !27
  %tobool.not = icmp eq i32 %secs, 0
  br i1 %tobool.not, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %call = tail call %struct.asn1_string_st* @ASN1_INTEGER_new() #9
  store %struct.asn1_string_st* %call, %struct.asn1_string_st** %seconds, align 8, !tbaa !25
  %cmp = icmp eq %struct.asn1_string_st* %call, null
  br i1 %cmp, label %err, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %conv = sext i32 %secs to i64
  %call8 = tail call i32 @ASN1_INTEGER_set(%struct.asn1_string_st* noundef nonnull %call, i64 noundef %conv) #9
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %err, label %if.end

if.end:                                           ; preds = %lor.lhs.false, %entry
  %tobool10.not = icmp eq i32 %millis, 0
  br i1 %tobool10.not, label %if.end22, label %land.lhs.true11

land.lhs.true11:                                  ; preds = %if.end
  %call12 = tail call %struct.asn1_string_st* @ASN1_INTEGER_new() #9
  store %struct.asn1_string_st* %call12, %struct.asn1_string_st** %millis2, align 8, !tbaa !26
  %cmp14 = icmp eq %struct.asn1_string_st* %call12, null
  br i1 %cmp14, label %err, label %lor.lhs.false16

lor.lhs.false16:                                  ; preds = %land.lhs.true11
  %conv18 = sext i32 %millis to i64
  %call19 = tail call i32 @ASN1_INTEGER_set(%struct.asn1_string_st* noundef nonnull %call12, i64 noundef %conv18) #9
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %err, label %if.end22

if.end22:                                         ; preds = %lor.lhs.false16, %if.end
  %tobool23.not = icmp eq i32 %micros, 0
  br i1 %tobool23.not, label %return, label %land.lhs.true24

land.lhs.true24:                                  ; preds = %if.end22
  %call25 = tail call %struct.asn1_string_st* @ASN1_INTEGER_new() #9
  store %struct.asn1_string_st* %call25, %struct.asn1_string_st** %micros4, align 8, !tbaa !27
  %cmp27 = icmp eq %struct.asn1_string_st* %call25, null
  br i1 %cmp27, label %err, label %lor.lhs.false29

lor.lhs.false29:                                  ; preds = %land.lhs.true24
  %conv31 = sext i32 %micros to i64
  %call32 = tail call i32 @ASN1_INTEGER_set(%struct.asn1_string_st* noundef nonnull %call25, i64 noundef %conv31) #9
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %err, label %return

err:                                              ; preds = %land.lhs.true24, %lor.lhs.false29, %land.lhs.true11, %lor.lhs.false16, %land.lhs.true, %lor.lhs.false
  %3 = load %struct.asn1_string_st*, %struct.asn1_string_st** %seconds, align 8, !tbaa !25
  tail call void @ASN1_INTEGER_free(%struct.asn1_string_st* noundef %3) #9
  store %struct.asn1_string_st* null, %struct.asn1_string_st** %seconds, align 8, !tbaa !25
  %4 = load %struct.asn1_string_st*, %struct.asn1_string_st** %millis2, align 8, !tbaa !26
  tail call void @ASN1_INTEGER_free(%struct.asn1_string_st* noundef %4) #9
  store %struct.asn1_string_st* null, %struct.asn1_string_st** %millis2, align 8, !tbaa !26
  %5 = load %struct.asn1_string_st*, %struct.asn1_string_st** %micros4, align 8, !tbaa !27
  tail call void @ASN1_INTEGER_free(%struct.asn1_string_st* noundef %5) #9
  store %struct.asn1_string_st* null, %struct.asn1_string_st** %micros4, align 8, !tbaa !27
  tail call void @ERR_new() #9
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 268, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.TS_RESP_CTX_set_accuracy, i64 0, i64 0)) #9
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 47, i32 noundef 786688, i8* noundef null) #9
  br label %return

return:                                           ; preds = %if.end22, %lor.lhs.false29, %err
  %retval.0 = phi i32 [ 0, %err ], [ 1, %lor.lhs.false29 ], [ 1, %if.end22 ]
  ret i32 %retval.0
}

declare %struct.asn1_string_st* @ASN1_INTEGER_new() local_unnamed_addr #2

declare i32 @ASN1_INTEGER_set(%struct.asn1_string_st* noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define void @TS_RESP_CTX_add_flags(%struct.TS_resp_ctx* nocapture noundef %ctx, i32 noundef %flags) local_unnamed_addr #5 {
entry:
  %flags1 = getelementptr inbounds %struct.TS_resp_ctx, %struct.TS_resp_ctx* %ctx, i64 0, i32 12
  %0 = load i32, i32* %flags1, align 4, !tbaa !29
  %or = or i32 %0, %flags
  store i32 %or, i32* %flags1, align 4, !tbaa !29
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define void @TS_RESP_CTX_set_serial_cb(%struct.TS_resp_ctx* nocapture noundef writeonly %ctx, %struct.asn1_string_st* (%struct.TS_resp_ctx*, i8*)* noundef %cb, i8* noundef %data) local_unnamed_addr #4 {
entry:
  %serial_cb = getelementptr inbounds %struct.TS_resp_ctx, %struct.TS_resp_ctx* %ctx, i64 0, i32 13
  store %struct.asn1_string_st* (%struct.TS_resp_ctx*, i8*)* %cb, %struct.asn1_string_st* (%struct.TS_resp_ctx*, i8*)** %serial_cb, align 8, !tbaa !11
  %serial_cb_data = getelementptr inbounds %struct.TS_resp_ctx, %struct.TS_resp_ctx* %ctx, i64 0, i32 14
  store i8* %data, i8** %serial_cb_data, align 8, !tbaa !30
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define void @TS_RESP_CTX_set_time_cb(%struct.TS_resp_ctx* nocapture noundef writeonly %ctx, i32 (%struct.TS_resp_ctx*, i8*, i64*, i64*)* noundef %cb, i8* noundef %data) local_unnamed_addr #4 {
entry:
  %time_cb = getelementptr inbounds %struct.TS_resp_ctx, %struct.TS_resp_ctx* %ctx, i64 0, i32 15
  store i32 (%struct.TS_resp_ctx*, i8*, i64*, i64*)* %cb, i32 (%struct.TS_resp_ctx*, i8*, i64*, i64*)** %time_cb, align 8, !tbaa !12
  %time_cb_data = getelementptr inbounds %struct.TS_resp_ctx, %struct.TS_resp_ctx* %ctx, i64 0, i32 16
  store i8* %data, i8** %time_cb_data, align 8, !tbaa !31
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define void @TS_RESP_CTX_set_extension_cb(%struct.TS_resp_ctx* nocapture noundef writeonly %ctx, i32 (%struct.TS_resp_ctx*, %struct.X509_extension_st*, i8*)* noundef %cb, i8* noundef %data) local_unnamed_addr #4 {
entry:
  %extension_cb = getelementptr inbounds %struct.TS_resp_ctx, %struct.TS_resp_ctx* %ctx, i64 0, i32 17
  store i32 (%struct.TS_resp_ctx*, %struct.X509_extension_st*, i8*)* %cb, i32 (%struct.TS_resp_ctx*, %struct.X509_extension_st*, i8*)** %extension_cb, align 8, !tbaa !13
  %extension_cb_data = getelementptr inbounds %struct.TS_resp_ctx, %struct.TS_resp_ctx* %ctx, i64 0, i32 18
  store i8* %data, i8** %extension_cb_data, align 8, !tbaa !32
  ret void
}

; Function Attrs: noinline nounwind uwtable
define i32 @TS_RESP_CTX_set_status_info(%struct.TS_resp_ctx* nocapture noundef readonly %ctx, i32 noundef %status, i8* noundef %text) local_unnamed_addr #0 {
entry:
  %call = tail call %struct.TS_status_info_st* @TS_STATUS_INFO_new() #9
  %cmp = icmp eq %struct.TS_status_info_st* %call, null
  br i1 %cmp, label %if.then38, label %if.end

if.end:                                           ; preds = %entry
  %status1 = getelementptr inbounds %struct.TS_status_info_st, %struct.TS_status_info_st* %call, i64 0, i32 0
  %0 = load %struct.asn1_string_st*, %struct.asn1_string_st** %status1, align 8, !tbaa !33
  %conv = sext i32 %status to i64
  %call2 = tail call i32 @ASN1_INTEGER_set(%struct.asn1_string_st* noundef %0, i64 noundef %conv) #9
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.then38, label %if.end4

if.end4:                                          ; preds = %if.end
  %tobool5.not = icmp eq i8* %text, null
  br i1 %tobool5.not, label %err, label %if.then6

if.then6:                                         ; preds = %if.end4
  %call7 = tail call %struct.asn1_string_st* @ASN1_UTF8STRING_new() #9
  %cmp8 = icmp eq %struct.asn1_string_st* %call7, null
  br i1 %cmp8, label %if.then38, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then6
  %call10 = tail call i64 @strlen(i8* noundef nonnull %text) #12
  %conv11 = trunc i64 %call10 to i32
  %call12 = tail call i32 @ASN1_STRING_set(%struct.asn1_string_st* noundef nonnull %call7, i8* noundef nonnull %text, i32 noundef %conv11) #9
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.then38, label %if.end15

if.end15:                                         ; preds = %lor.lhs.false
  %text16 = getelementptr inbounds %struct.TS_status_info_st, %struct.TS_status_info_st* %call, i64 0, i32 1
  %1 = load %struct.stack_st_ASN1_UTF8STRING*, %struct.stack_st_ASN1_UTF8STRING** %text16, align 8, !tbaa !35
  %cmp17 = icmp eq %struct.stack_st_ASN1_UTF8STRING* %1, null
  br i1 %cmp17, label %land.lhs.true, label %if.end24

land.lhs.true:                                    ; preds = %if.end15
  %call19 = tail call %struct.stack_st* @OPENSSL_sk_new_null() #9
  %2 = bitcast %struct.stack_st_ASN1_UTF8STRING** %text16 to %struct.stack_st**
  store %struct.stack_st* %call19, %struct.stack_st** %2, align 8, !tbaa !35
  %cmp21 = icmp eq %struct.stack_st* %call19, null
  %3 = bitcast %struct.stack_st* %call19 to %struct.stack_st_ASN1_UTF8STRING*
  br i1 %cmp21, label %if.then38, label %if.end24

if.end24:                                         ; preds = %land.lhs.true, %if.end15
  %4 = phi %struct.stack_st_ASN1_UTF8STRING* [ %3, %land.lhs.true ], [ %1, %if.end15 ]
  %call26 = tail call fastcc %struct.stack_st* @ossl_check_ASN1_UTF8STRING_sk_type(%struct.stack_st_ASN1_UTF8STRING* noundef %4) #10
  %5 = bitcast %struct.asn1_string_st* %call7 to i8*
  %call28 = tail call i32 @OPENSSL_sk_push(%struct.stack_st* noundef %call26, i8* noundef nonnull %5) #9
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %if.then38, label %err

err:                                              ; preds = %if.end4, %if.end24
  %response = getelementptr inbounds %struct.TS_resp_ctx, %struct.TS_resp_ctx* %ctx, i64 0, i32 20
  %6 = load %struct.TS_resp_st*, %struct.TS_resp_st** %response, align 8, !tbaa !36
  %call33 = tail call i32 @TS_RESP_set_status_info(%struct.TS_resp_st* noundef %6, %struct.TS_status_info_st* noundef nonnull %call) #9
  %tobool34.not = icmp eq i32 %call33, 0
  br i1 %tobool34.not, label %if.then38, label %if.end39

if.then38:                                        ; preds = %if.end, %lor.lhs.false, %if.end24, %land.lhs.true, %if.then6, %entry, %err
  %utf8_text.158 = phi %struct.asn1_string_st* [ null, %err ], [ null, %if.end ], [ %call7, %lor.lhs.false ], [ %call7, %if.end24 ], [ %call7, %land.lhs.true ], [ null, %if.then6 ], [ null, %entry ]
  tail call void @ERR_new() #9
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 323, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.TS_RESP_CTX_set_status_info, i64 0, i64 0)) #9
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 47, i32 noundef 786688, i8* noundef null) #9
  br label %if.end39

if.end39:                                         ; preds = %if.then38, %err
  %ret.059 = phi i32 [ 0, %if.then38 ], [ 1, %err ]
  %utf8_text.157 = phi %struct.asn1_string_st* [ %utf8_text.158, %if.then38 ], [ null, %err ]
  tail call void @TS_STATUS_INFO_free(%struct.TS_status_info_st* noundef %call) #9
  tail call void @ASN1_UTF8STRING_free(%struct.asn1_string_st* noundef %utf8_text.157) #9
  ret i32 %ret.059
}

declare %struct.TS_status_info_st* @TS_STATUS_INFO_new() local_unnamed_addr #2

declare %struct.asn1_string_st* @ASN1_UTF8STRING_new() local_unnamed_addr #2

declare i32 @ASN1_STRING_set(%struct.asn1_string_st* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare i64 @strlen(i8* noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_ASN1_UTF8STRING_sk_type(%struct.stack_st_ASN1_UTF8STRING* noundef readnone %sk) unnamed_addr #3 {
entry:
  %0 = bitcast %struct.stack_st_ASN1_UTF8STRING* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

declare i32 @TS_RESP_set_status_info(%struct.TS_resp_st* noundef, %struct.TS_status_info_st* noundef) local_unnamed_addr #2

declare void @TS_STATUS_INFO_free(%struct.TS_status_info_st* noundef) local_unnamed_addr #2

declare void @ASN1_UTF8STRING_free(%struct.asn1_string_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @TS_RESP_CTX_set_status_info_cond(%struct.TS_resp_ctx* nocapture noundef readonly %ctx, i32 noundef %status, i8* noundef %text) local_unnamed_addr #0 {
entry:
  %response = getelementptr inbounds %struct.TS_resp_ctx, %struct.TS_resp_ctx* %ctx, i64 0, i32 20
  %0 = load %struct.TS_resp_st*, %struct.TS_resp_st** %response, align 8, !tbaa !36
  %status_info = getelementptr inbounds %struct.TS_resp_st, %struct.TS_resp_st* %0, i64 0, i32 0
  %1 = load %struct.TS_status_info_st*, %struct.TS_status_info_st** %status_info, align 8, !tbaa !37
  %status1 = getelementptr inbounds %struct.TS_status_info_st, %struct.TS_status_info_st* %1, i64 0, i32 0
  %2 = load %struct.asn1_string_st*, %struct.asn1_string_st** %status1, align 8, !tbaa !33
  %call = tail call i64 @ASN1_INTEGER_get(%struct.asn1_string_st* noundef %2) #9
  %cmp = icmp eq i64 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call2 = tail call i32 @TS_RESP_CTX_set_status_info(%struct.TS_resp_ctx* noundef nonnull %ctx, i32 noundef %status, i8* noundef %text) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %ret.0 = phi i32 [ %call2, %if.then ], [ 1, %entry ]
  ret i32 %ret.0
}

declare i64 @ASN1_INTEGER_get(%struct.asn1_string_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @TS_RESP_CTX_add_failure_info(%struct.TS_resp_ctx* nocapture noundef readonly %ctx, i32 noundef %failure) local_unnamed_addr #0 {
entry:
  %response = getelementptr inbounds %struct.TS_resp_ctx, %struct.TS_resp_ctx* %ctx, i64 0, i32 20
  %0 = load %struct.TS_resp_st*, %struct.TS_resp_st** %response, align 8, !tbaa !36
  %status_info = getelementptr inbounds %struct.TS_resp_st, %struct.TS_resp_st* %0, i64 0, i32 0
  %1 = load %struct.TS_status_info_st*, %struct.TS_status_info_st** %status_info, align 8, !tbaa !37
  %failure_info = getelementptr inbounds %struct.TS_status_info_st, %struct.TS_status_info_st* %1, i64 0, i32 2
  %2 = load %struct.asn1_string_st*, %struct.asn1_string_st** %failure_info, align 8, !tbaa !39
  %cmp = icmp eq %struct.asn1_string_st* %2, null
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %call = tail call %struct.asn1_string_st* @ASN1_BIT_STRING_new() #9
  store %struct.asn1_string_st* %call, %struct.asn1_string_st** %failure_info, align 8, !tbaa !39
  %cmp2 = icmp eq %struct.asn1_string_st* %call, null
  br i1 %cmp2, label %err, label %if.end

if.end:                                           ; preds = %land.lhs.true, %entry
  %3 = phi %struct.asn1_string_st* [ %call, %land.lhs.true ], [ %2, %entry ]
  %call4 = tail call i32 @ASN1_BIT_STRING_set_bit(%struct.asn1_string_st* noundef nonnull %3, i32 noundef %failure, i32 noundef 1) #9
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %err, label %cleanup

err:                                              ; preds = %if.end, %land.lhs.true
  tail call void @ERR_new() #9
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 351, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.TS_RESP_CTX_add_failure_info, i64 0, i64 0)) #9
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 47, i32 noundef 786688, i8* noundef null) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %err
  %retval.0 = phi i32 [ 0, %err ], [ 1, %if.end ]
  ret i32 %retval.0
}

declare %struct.asn1_string_st* @ASN1_BIT_STRING_new() local_unnamed_addr #2

declare i32 @ASN1_BIT_STRING_set_bit(%struct.asn1_string_st* noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define %struct.TS_req_st* @TS_RESP_CTX_get_request(%struct.TS_resp_ctx* nocapture noundef readonly %ctx) local_unnamed_addr #7 {
entry:
  %request = getelementptr inbounds %struct.TS_resp_ctx, %struct.TS_resp_ctx* %ctx, i64 0, i32 19
  %0 = load %struct.TS_req_st*, %struct.TS_req_st** %request, align 8, !tbaa !40
  ret %struct.TS_req_st* %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define %struct.TS_tst_info_st* @TS_RESP_CTX_get_tst_info(%struct.TS_resp_ctx* nocapture noundef readonly %ctx) local_unnamed_addr #7 {
entry:
  %tst_info = getelementptr inbounds %struct.TS_resp_ctx, %struct.TS_resp_ctx* %ctx, i64 0, i32 21
  %0 = load %struct.TS_tst_info_st*, %struct.TS_tst_info_st** %tst_info, align 8, !tbaa !41
  ret %struct.TS_tst_info_st* %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define i32 @TS_RESP_CTX_set_clock_precision_digits(%struct.TS_resp_ctx* nocapture noundef writeonly %ctx, i32 noundef %precision) local_unnamed_addr #4 {
entry:
  %cmp = icmp ugt i32 %precision, 6
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %clock_precision_digits = getelementptr inbounds %struct.TS_resp_ctx, %struct.TS_resp_ctx* %ctx, i64 0, i32 11
  store i32 %precision, i32* %clock_precision_digits, align 8, !tbaa !42
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define %struct.TS_resp_st* @TS_RESP_create_response(%struct.TS_resp_ctx* noundef %ctx, %struct.bio_st* noundef %req_bio) local_unnamed_addr #0 {
entry:
  tail call fastcc void @ts_RESP_CTX_init(%struct.TS_resp_ctx* noundef %ctx) #10
  %call = tail call %struct.TS_resp_st* @TS_RESP_new() #9
  %response1 = getelementptr inbounds %struct.TS_resp_ctx, %struct.TS_resp_ctx* %ctx, i64 0, i32 20
  store %struct.TS_resp_st* %call, %struct.TS_resp_st** %response1, align 8, !tbaa !36
  %cmp = icmp eq %struct.TS_resp_st* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #9
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 384, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.TS_RESP_create_response, i64 0, i64 0)) #9
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 47, i32 noundef 786688, i8* noundef null) #9
  br label %if.then32

if.end:                                           ; preds = %entry
  %call2 = tail call %struct.TS_req_st* @d2i_TS_REQ_bio(%struct.bio_st* noundef %req_bio, %struct.TS_req_st** noundef null) #9
  %request = getelementptr inbounds %struct.TS_resp_ctx, %struct.TS_resp_ctx* %ctx, i64 0, i32 19
  store %struct.TS_req_st* %call2, %struct.TS_req_st** %request, align 8, !tbaa !40
  %cmp3 = icmp eq %struct.TS_req_st* %call2, null
  br i1 %cmp3, label %if.then4, label %if.end7

if.then4:                                         ; preds = %if.end
  %call5 = tail call i32 @TS_RESP_CTX_set_status_info(%struct.TS_resp_ctx* noundef nonnull %ctx, i32 noundef 2, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0)) #10
  %call6 = tail call i32 @TS_RESP_CTX_add_failure_info(%struct.TS_resp_ctx* noundef nonnull %ctx, i32 noundef 5) #10
  br label %if.then32

if.end7:                                          ; preds = %if.end
  %call8 = tail call i32 @TS_RESP_CTX_set_status_info(%struct.TS_resp_ctx* noundef nonnull %ctx, i32 noundef 0, i8* noundef null) #10
  %tobool.not = icmp eq i32 %call8, 0
  br i1 %tobool.not, label %if.then32, label %if.end10

if.end10:                                         ; preds = %if.end7
  %call11 = tail call fastcc i32 @ts_RESP_check_request(%struct.TS_resp_ctx* noundef nonnull %ctx) #10
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.then32, label %if.end14

if.end14:                                         ; preds = %if.end10
  %call15 = tail call fastcc %struct.asn1_object_st* @ts_RESP_get_policy(%struct.TS_resp_ctx* noundef nonnull %ctx) #10
  %cmp16 = icmp eq %struct.asn1_object_st* %call15, null
  br i1 %cmp16, label %if.then32, label %if.end18

if.end18:                                         ; preds = %if.end14
  %call19 = tail call fastcc %struct.TS_tst_info_st* @ts_RESP_create_tst_info(%struct.TS_resp_ctx* noundef nonnull %ctx, %struct.asn1_object_st* noundef nonnull %call15) #10
  %tst_info = getelementptr inbounds %struct.TS_resp_ctx, %struct.TS_resp_ctx* %ctx, i64 0, i32 21
  store %struct.TS_tst_info_st* %call19, %struct.TS_tst_info_st** %tst_info, align 8, !tbaa !41
  %cmp20 = icmp eq %struct.TS_tst_info_st* %call19, null
  br i1 %cmp20, label %if.then32, label %if.end22

if.end22:                                         ; preds = %if.end18
  %call23 = tail call fastcc i32 @ts_RESP_process_extensions(%struct.TS_resp_ctx* noundef nonnull %ctx) #10
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %if.then32, label %if.end26

if.end26:                                         ; preds = %if.end22
  %call27 = tail call fastcc i32 @ts_RESP_sign(%struct.TS_resp_ctx* noundef nonnull %ctx) #10
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %if.then32, label %if.end43

if.then32:                                        ; preds = %if.end7, %if.end10, %if.end14, %if.end18, %if.end22, %if.then, %if.then4, %if.end26
  tail call void @ERR_new() #9
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 409, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.TS_RESP_create_response, i64 0, i64 0)) #9
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 47, i32 noundef 121, i8* noundef null) #9
  %0 = load %struct.TS_resp_st*, %struct.TS_resp_st** %response1, align 8, !tbaa !36
  %cmp34.not = icmp eq %struct.TS_resp_st* %0, null
  br i1 %cmp34.not, label %if.end43, label %if.then35

if.then35:                                        ; preds = %if.then32
  %call36 = tail call i32 @TS_RESP_CTX_set_status_info_cond(%struct.TS_resp_ctx* noundef nonnull %ctx, i32 noundef 2, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0)) #10
  %cmp37 = icmp eq i32 %call36, 0
  br i1 %cmp37, label %if.then38, label %if.end43

if.then38:                                        ; preds = %if.then35
  %1 = load %struct.TS_resp_st*, %struct.TS_resp_st** %response1, align 8, !tbaa !36
  tail call void @TS_RESP_free(%struct.TS_resp_st* noundef %1) #9
  store %struct.TS_resp_st* null, %struct.TS_resp_st** %response1, align 8, !tbaa !36
  br label %if.end43

if.end43:                                         ; preds = %if.then32, %if.then38, %if.then35, %if.end26
  %2 = load %struct.TS_resp_st*, %struct.TS_resp_st** %response1, align 8, !tbaa !36
  store %struct.TS_resp_st* null, %struct.TS_resp_st** %response1, align 8, !tbaa !36
  tail call fastcc void @ts_RESP_CTX_cleanup(%struct.TS_resp_ctx* noundef nonnull %ctx) #10
  ret %struct.TS_resp_st* %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define internal fastcc void @ts_RESP_CTX_init(%struct.TS_resp_ctx* nocapture noundef writeonly %ctx) unnamed_addr #4 {
entry:
  %request = getelementptr inbounds %struct.TS_resp_ctx, %struct.TS_resp_ctx* %ctx, i64 0, i32 19
  store %struct.TS_req_st* null, %struct.TS_req_st** %request, align 8, !tbaa !40
  %response = getelementptr inbounds %struct.TS_resp_ctx, %struct.TS_resp_ctx* %ctx, i64 0, i32 20
  store %struct.TS_resp_st* null, %struct.TS_resp_st** %response, align 8, !tbaa !36
  %tst_info = getelementptr inbounds %struct.TS_resp_ctx, %struct.TS_resp_ctx* %ctx, i64 0, i32 21
  store %struct.TS_tst_info_st* null, %struct.TS_tst_info_st** %tst_info, align 8, !tbaa !41
  ret void
}

declare %struct.TS_resp_st* @TS_RESP_new() local_unnamed_addr #2

declare %struct.TS_req_st* @d2i_TS_REQ_bio(%struct.bio_st* noundef, %struct.TS_req_st** noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @ts_RESP_check_request(%struct.TS_resp_ctx* nocapture noundef readonly %ctx) unnamed_addr #0 {
entry:
  %md_alg_name = alloca [50 x i8], align 16
  %request1 = getelementptr inbounds %struct.TS_resp_ctx, %struct.TS_resp_ctx* %ctx, i64 0, i32 19
  %0 = load %struct.TS_req_st*, %struct.TS_req_st** %request1, align 8, !tbaa !40
  %1 = getelementptr inbounds [50 x i8], [50 x i8]* %md_alg_name, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 50, i8* nonnull %1) #11
  %call = tail call i64 @TS_REQ_get_version(%struct.TS_req_st* noundef %0) #9
  %cmp.not = icmp eq i64 %call, 1
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call2 = tail call i32 @TS_RESP_CTX_set_status_info(%struct.TS_resp_ctx* noundef nonnull %ctx, i32 noundef 2, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0)) #10
  %call3 = tail call i32 @TS_RESP_CTX_add_failure_info(%struct.TS_resp_ctx* noundef nonnull %ctx, i32 noundef 2) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %msg_imprint4 = getelementptr inbounds %struct.TS_req_st, %struct.TS_req_st* %0, i64 0, i32 1
  %2 = load %struct.TS_msg_imprint_st*, %struct.TS_msg_imprint_st** %msg_imprint4, align 8, !tbaa !43
  %hash_algo = getelementptr inbounds %struct.TS_msg_imprint_st, %struct.TS_msg_imprint_st* %2, i64 0, i32 0
  %3 = load %struct.X509_algor_st*, %struct.X509_algor_st** %hash_algo, align 8, !tbaa !45
  %algorithm = getelementptr inbounds %struct.X509_algor_st, %struct.X509_algor_st* %3, i64 0, i32 0
  %4 = load %struct.asn1_object_st*, %struct.asn1_object_st** %algorithm, align 8, !tbaa !47
  %call5 = call i32 @OBJ_obj2txt(i8* noundef nonnull %1, i32 noundef 50, %struct.asn1_object_st* noundef %4, i32 noundef 0) #9
  %mds = getelementptr inbounds %struct.TS_resp_ctx, %struct.TS_resp_ctx* %ctx, i64 0, i32 7
  br label %land.rhs

land.rhs:                                         ; preds = %if.end, %for.body
  %i.067 = phi i32 [ 0, %if.end ], [ %inc, %for.body ]
  %5 = load %struct.stack_st_EVP_MD*, %struct.stack_st_EVP_MD** %mds, align 8, !tbaa !24
  %call6 = call fastcc i32 @sk_EVP_MD_num(%struct.stack_st_EVP_MD* noundef %5) #10
  %cmp7 = icmp slt i32 %i.067, %call6
  br i1 %cmp7, label %for.body, label %if.then16

for.body:                                         ; preds = %land.rhs
  %6 = load %struct.stack_st_EVP_MD*, %struct.stack_st_EVP_MD** %mds, align 8, !tbaa !24
  %call9 = call fastcc %struct.evp_md_st* @sk_EVP_MD_value(%struct.stack_st_EVP_MD* noundef %6, i32 noundef %i.067) #10
  %call11 = call i32 @EVP_MD_is_a(%struct.evp_md_st* noundef %call9, i8* noundef nonnull %1) #9
  %tobool12.not = icmp eq i32 %call11, 0
  %inc = add nuw nsw i32 %i.067, 1
  %tobool.not68 = icmp eq %struct.evp_md_st* %call9, null
  %tobool.not = or i1 %tobool12.not, %tobool.not68
  br i1 %tobool.not, label %land.rhs, label %if.end19

if.then16:                                        ; preds = %land.rhs
  %call17 = call i32 @TS_RESP_CTX_set_status_info(%struct.TS_resp_ctx* noundef nonnull %ctx, i32 noundef 2, i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.7, i64 0, i64 0)) #10
  %call18 = call i32 @TS_RESP_CTX_add_failure_info(%struct.TS_resp_ctx* noundef nonnull %ctx, i32 noundef 0) #10
  br label %cleanup

if.end19:                                         ; preds = %for.body
  %parameter = getelementptr inbounds %struct.X509_algor_st, %struct.X509_algor_st* %3, i64 0, i32 1
  %7 = load %struct.asn1_type_st*, %struct.asn1_type_st** %parameter, align 8, !tbaa !49
  %tobool20.not = icmp eq %struct.asn1_type_st* %7, null
  br i1 %tobool20.not, label %if.end27, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end19
  %call22 = call i32 @ASN1_TYPE_get(%struct.asn1_type_st* noundef nonnull %7) #9
  %cmp23.not = icmp eq i32 %call22, 5
  br i1 %cmp23.not, label %if.end27, label %if.then24

if.then24:                                        ; preds = %land.lhs.true
  %call25 = call i32 @TS_RESP_CTX_set_status_info(%struct.TS_resp_ctx* noundef nonnull %ctx, i32 noundef 2, i8* noundef getelementptr inbounds ([38 x i8], [38 x i8]* @.str.8, i64 0, i64 0)) #10
  %call26 = call i32 @TS_RESP_CTX_add_failure_info(%struct.TS_resp_ctx* noundef nonnull %ctx, i32 noundef 0) #10
  br label %cleanup

if.end27:                                         ; preds = %land.lhs.true, %if.end19
  %hashed_msg = getelementptr inbounds %struct.TS_msg_imprint_st, %struct.TS_msg_imprint_st* %2, i64 0, i32 1
  %8 = load %struct.asn1_string_st*, %struct.asn1_string_st** %hashed_msg, align 8, !tbaa !50
  %length = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %8, i64 0, i32 0
  %9 = load i32, i32* %length, align 8, !tbaa !51
  %call28 = call i32 @EVP_MD_get_size(%struct.evp_md_st* noundef nonnull %call9) #9
  %cmp29.not = icmp eq i32 %9, %call28
  br i1 %cmp29.not, label %cleanup, label %if.then30

if.then30:                                        ; preds = %if.end27
  %call31 = call i32 @TS_RESP_CTX_set_status_info(%struct.TS_resp_ctx* noundef nonnull %ctx, i32 noundef 2, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.9, i64 0, i64 0)) #10
  %call32 = call i32 @TS_RESP_CTX_add_failure_info(%struct.TS_resp_ctx* noundef nonnull %ctx, i32 noundef 5) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end27, %if.then30, %if.then24, %if.then16, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 0, %if.then24 ], [ 0, %if.then30 ], [ 0, %if.then16 ], [ 1, %if.end27 ]
  call void @llvm.lifetime.end.p0i8(i64 50, i8* nonnull %1) #11
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.asn1_object_st* @ts_RESP_get_policy(%struct.TS_resp_ctx* nocapture noundef readonly %ctx) unnamed_addr #0 {
entry:
  %request = getelementptr inbounds %struct.TS_resp_ctx, %struct.TS_resp_ctx* %ctx, i64 0, i32 19
  %0 = load %struct.TS_req_st*, %struct.TS_req_st** %request, align 8, !tbaa !40
  %policy_id = getelementptr inbounds %struct.TS_req_st, %struct.TS_req_st* %0, i64 0, i32 2
  %1 = load %struct.asn1_object_st*, %struct.asn1_object_st** %policy_id, align 8, !tbaa !53
  %default_policy = getelementptr inbounds %struct.TS_resp_ctx, %struct.TS_resp_ctx* %ctx, i64 0, i32 6
  %2 = load %struct.asn1_object_st*, %struct.asn1_object_st** %default_policy, align 8, !tbaa !23
  %cmp = icmp eq %struct.asn1_object_st* %2, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #9
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 505, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.ts_RESP_get_policy, i64 0, i64 0)) #9
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 47, i32 noundef 102, i8* noundef null) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %tobool.not = icmp eq %struct.asn1_object_st* %1, null
  br i1 %tobool.not, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %call = tail call i32 @OBJ_cmp(%struct.asn1_object_st* noundef nonnull %1, %struct.asn1_object_st* noundef nonnull %2) #9
  %tobool2.not = icmp eq i32 %call, 0
  br i1 %tobool2.not, label %if.end5, label %land.rhs.lr.ph

if.end5:                                          ; preds = %lor.lhs.false
  %.pre = load %struct.asn1_object_st*, %struct.asn1_object_st** %default_policy, align 8, !tbaa !23
  %cond44 = icmp eq %struct.asn1_object_st* %.pre, null
  br i1 %cond44, label %land.rhs.lr.ph, label %cleanup

land.rhs.lr.ph:                                   ; preds = %lor.lhs.false, %if.end5
  %policies = getelementptr inbounds %struct.TS_resp_ctx, %struct.TS_resp_ctx* %ctx, i64 0, i32 5
  br label %land.rhs

land.rhs:                                         ; preds = %land.rhs.lr.ph, %for.body
  %i.046 = phi i32 [ 0, %land.rhs.lr.ph ], [ %inc, %for.body ]
  %3 = load %struct.stack_st_ASN1_OBJECT*, %struct.stack_st_ASN1_OBJECT** %policies, align 8, !tbaa !22
  %call7 = tail call fastcc %struct.stack_st* @ossl_check_const_ASN1_OBJECT_sk_type(%struct.stack_st_ASN1_OBJECT* noundef %3) #10
  %call8 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call7) #9
  %cmp9 = icmp slt i32 %i.046, %call8
  br i1 %cmp9, label %for.body, label %if.then18

for.body:                                         ; preds = %land.rhs
  %4 = load %struct.stack_st_ASN1_OBJECT*, %struct.stack_st_ASN1_OBJECT** %policies, align 8, !tbaa !22
  %call11 = tail call fastcc %struct.stack_st* @ossl_check_const_ASN1_OBJECT_sk_type(%struct.stack_st_ASN1_OBJECT* noundef %4) #10
  %call12 = tail call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call11, i32 noundef %i.046) #9
  %5 = bitcast i8* %call12 to %struct.asn1_object_st*
  %call13 = tail call i32 @OBJ_cmp(%struct.asn1_object_st* noundef nonnull %1, %struct.asn1_object_st* noundef %5) #9
  %tobool14.not = icmp ne i32 %call13, 0
  %inc = add nuw nsw i32 %i.046, 1
  %cond53 = icmp eq i8* %call12, null
  %cond = select i1 %tobool14.not, i1 true, i1 %cond53
  br i1 %cond, label %land.rhs, label %cleanup.loopexit, !llvm.loop !54

if.then18:                                        ; preds = %land.rhs
  tail call void @ERR_new() #9
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 518, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.ts_RESP_get_policy, i64 0, i64 0)) #9
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 47, i32 noundef 125, i8* noundef null) #9
  %call19 = tail call i32 @TS_RESP_CTX_set_status_info(%struct.TS_resp_ctx* noundef nonnull %ctx, i32 noundef 2, i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.10, i64 0, i64 0)) #10
  %call20 = tail call i32 @TS_RESP_CTX_add_failure_info(%struct.TS_resp_ctx* noundef nonnull %ctx, i32 noundef 15) #10
  br label %cleanup

cleanup.loopexit:                                 ; preds = %for.body
  %6 = bitcast i8* %call12 to %struct.asn1_object_st*
  br label %cleanup

cleanup:                                          ; preds = %cleanup.loopexit, %if.end, %if.end5, %if.then18, %if.then
  %retval.0 = phi %struct.asn1_object_st* [ null, %if.then ], [ null, %if.then18 ], [ %.pre, %if.end5 ], [ %2, %if.end ], [ %6, %cleanup.loopexit ]
  ret %struct.asn1_object_st* %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.TS_tst_info_st* @ts_RESP_create_tst_info(%struct.TS_resp_ctx* noundef %ctx, %struct.asn1_object_st* noundef %policy) unnamed_addr #0 {
entry:
  %sec = alloca i64, align 8
  %usec = alloca i64, align 8
  %0 = bitcast i64* %sec to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #11
  %1 = bitcast i64* %usec to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #11
  %call = tail call %struct.TS_tst_info_st* @TS_TST_INFO_new() #9
  %cmp = icmp eq %struct.TS_tst_info_st* %call, null
  br i1 %cmp, label %if.then102, label %if.end

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @TS_TST_INFO_set_version(%struct.TS_tst_info_st* noundef nonnull %call, i64 noundef 1) #9
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.then102, label %if.end3

if.end3:                                          ; preds = %if.end
  %call4 = tail call i32 @TS_TST_INFO_set_policy_id(%struct.TS_tst_info_st* noundef nonnull %call, %struct.asn1_object_st* noundef %policy) #9
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.then102, label %if.end7

if.end7:                                          ; preds = %if.end3
  %request = getelementptr inbounds %struct.TS_resp_ctx, %struct.TS_resp_ctx* %ctx, i64 0, i32 19
  %2 = load %struct.TS_req_st*, %struct.TS_req_st** %request, align 8, !tbaa !40
  %msg_imprint = getelementptr inbounds %struct.TS_req_st, %struct.TS_req_st* %2, i64 0, i32 1
  %3 = load %struct.TS_msg_imprint_st*, %struct.TS_msg_imprint_st** %msg_imprint, align 8, !tbaa !43
  %call8 = tail call i32 @TS_TST_INFO_set_msg_imprint(%struct.TS_tst_info_st* noundef nonnull %call, %struct.TS_msg_imprint_st* noundef %3) #9
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.then102, label %if.end11

if.end11:                                         ; preds = %if.end7
  %serial_cb = getelementptr inbounds %struct.TS_resp_ctx, %struct.TS_resp_ctx* %ctx, i64 0, i32 13
  %4 = load %struct.asn1_string_st* (%struct.TS_resp_ctx*, i8*)*, %struct.asn1_string_st* (%struct.TS_resp_ctx*, i8*)** %serial_cb, align 8, !tbaa !11
  %serial_cb_data = getelementptr inbounds %struct.TS_resp_ctx, %struct.TS_resp_ctx* %ctx, i64 0, i32 14
  %5 = load i8*, i8** %serial_cb_data, align 8, !tbaa !30
  %call12 = tail call %struct.asn1_string_st* %4(%struct.TS_resp_ctx* noundef nonnull %ctx, i8* noundef %5) #9
  %cmp13 = icmp eq %struct.asn1_string_st* %call12, null
  br i1 %cmp13, label %if.then102, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end11
  %call14 = tail call i32 @TS_TST_INFO_set_serial(%struct.TS_tst_info_st* noundef nonnull %call, %struct.asn1_string_st* noundef nonnull %call12) #9
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.then102, label %if.end17

if.end17:                                         ; preds = %lor.lhs.false
  %time_cb = getelementptr inbounds %struct.TS_resp_ctx, %struct.TS_resp_ctx* %ctx, i64 0, i32 15
  %6 = load i32 (%struct.TS_resp_ctx*, i8*, i64*, i64*)*, i32 (%struct.TS_resp_ctx*, i8*, i64*, i64*)** %time_cb, align 8, !tbaa !12
  %time_cb_data = getelementptr inbounds %struct.TS_resp_ctx, %struct.TS_resp_ctx* %ctx, i64 0, i32 16
  %7 = load i8*, i8** %time_cb_data, align 8, !tbaa !31
  %call18 = call i32 %6(%struct.TS_resp_ctx* noundef nonnull %ctx, i8* noundef %7, i64* noundef nonnull %sec, i64* noundef nonnull %usec) #9
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.then102, label %lor.lhs.false20

lor.lhs.false20:                                  ; preds = %if.end17
  %8 = load i64, i64* %sec, align 8, !tbaa !17
  %9 = load i64, i64* %usec, align 8, !tbaa !17
  %clock_precision_digits = getelementptr inbounds %struct.TS_resp_ctx, %struct.TS_resp_ctx* %ctx, i64 0, i32 11
  %10 = load i32, i32* %clock_precision_digits, align 8, !tbaa !42
  %call21 = call fastcc %struct.asn1_string_st* @TS_RESP_set_genTime_with_precision(i64 noundef %8, i64 noundef %9, i32 noundef %10) #10
  %cmp22 = icmp eq %struct.asn1_string_st* %call21, null
  br i1 %cmp22, label %if.then102, label %lor.lhs.false23

lor.lhs.false23:                                  ; preds = %lor.lhs.false20
  %call24 = call i32 @TS_TST_INFO_set_time(%struct.TS_tst_info_st* noundef nonnull %call, %struct.asn1_string_st* noundef nonnull %call21) #9
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %if.then102, label %if.end27

if.end27:                                         ; preds = %lor.lhs.false23
  %seconds = getelementptr inbounds %struct.TS_resp_ctx, %struct.TS_resp_ctx* %ctx, i64 0, i32 8
  %11 = load %struct.asn1_string_st*, %struct.asn1_string_st** %seconds, align 8, !tbaa !25
  %tobool28.not = icmp eq %struct.asn1_string_st* %11, null
  br i1 %tobool28.not, label %lor.lhs.false29, label %land.lhs.true

lor.lhs.false29:                                  ; preds = %if.end27
  %millis = getelementptr inbounds %struct.TS_resp_ctx, %struct.TS_resp_ctx* %ctx, i64 0, i32 9
  %12 = load %struct.asn1_string_st*, %struct.asn1_string_st** %millis, align 8, !tbaa !26
  %tobool30.not = icmp eq %struct.asn1_string_st* %12, null
  br i1 %tobool30.not, label %lor.lhs.false31, label %land.lhs.true

lor.lhs.false31:                                  ; preds = %lor.lhs.false29
  %micros = getelementptr inbounds %struct.TS_resp_ctx, %struct.TS_resp_ctx* %ctx, i64 0, i32 10
  %13 = load %struct.asn1_string_st*, %struct.asn1_string_st** %micros, align 8, !tbaa !27
  %tobool32.not = icmp eq %struct.asn1_string_st* %13, null
  br i1 %tobool32.not, label %if.end44, label %land.lhs.true

land.lhs.true:                                    ; preds = %lor.lhs.false31, %lor.lhs.false29, %if.end27
  %call33 = call %struct.TS_accuracy_st* @TS_ACCURACY_new() #9
  %cmp34 = icmp eq %struct.TS_accuracy_st* %call33, null
  br i1 %cmp34, label %if.then102, label %if.end36

if.end36:                                         ; preds = %land.lhs.true
  %.pre = load %struct.asn1_string_st*, %struct.asn1_string_st** %seconds, align 8, !tbaa !25
  %tobool38.not = icmp eq %struct.asn1_string_st* %.pre, null
  br i1 %tobool38.not, label %if.end44, label %land.lhs.true39

land.lhs.true39:                                  ; preds = %if.end36
  %call41 = call i32 @TS_ACCURACY_set_seconds(%struct.TS_accuracy_st* noundef nonnull %call33, %struct.asn1_string_st* noundef nonnull %.pre) #9
  %tobool42.not = icmp eq i32 %call41, 0
  br i1 %tobool42.not, label %if.then102, label %if.end44

if.end44:                                         ; preds = %lor.lhs.false31, %land.lhs.true39, %if.end36
  %accuracy.0172 = phi %struct.TS_accuracy_st* [ %call33, %land.lhs.true39 ], [ %call33, %if.end36 ], [ null, %lor.lhs.false31 ]
  %millis45 = getelementptr inbounds %struct.TS_resp_ctx, %struct.TS_resp_ctx* %ctx, i64 0, i32 9
  %14 = load %struct.asn1_string_st*, %struct.asn1_string_st** %millis45, align 8, !tbaa !26
  %tobool46.not = icmp eq %struct.asn1_string_st* %14, null
  br i1 %tobool46.not, label %if.end52, label %land.lhs.true47

land.lhs.true47:                                  ; preds = %if.end44
  %call49 = call i32 @TS_ACCURACY_set_millis(%struct.TS_accuracy_st* noundef %accuracy.0172, %struct.asn1_string_st* noundef nonnull %14) #9
  %tobool50.not = icmp eq i32 %call49, 0
  br i1 %tobool50.not, label %if.then102, label %if.end52

if.end52:                                         ; preds = %land.lhs.true47, %if.end44
  %micros53 = getelementptr inbounds %struct.TS_resp_ctx, %struct.TS_resp_ctx* %ctx, i64 0, i32 10
  %15 = load %struct.asn1_string_st*, %struct.asn1_string_st** %micros53, align 8, !tbaa !27
  %tobool54.not = icmp eq %struct.asn1_string_st* %15, null
  br i1 %tobool54.not, label %if.end60, label %land.lhs.true55

land.lhs.true55:                                  ; preds = %if.end52
  %call57 = call i32 @TS_ACCURACY_set_micros(%struct.TS_accuracy_st* noundef %accuracy.0172, %struct.asn1_string_st* noundef nonnull %15) #9
  %tobool58.not = icmp eq i32 %call57, 0
  br i1 %tobool58.not, label %if.then102, label %if.end60

if.end60:                                         ; preds = %land.lhs.true55, %if.end52
  %tobool61.not = icmp eq %struct.TS_accuracy_st* %accuracy.0172, null
  br i1 %tobool61.not, label %if.end66, label %land.lhs.true62

land.lhs.true62:                                  ; preds = %if.end60
  %call63 = call i32 @TS_TST_INFO_set_accuracy(%struct.TS_tst_info_st* noundef nonnull %call, %struct.TS_accuracy_st* noundef nonnull %accuracy.0172) #9
  %tobool64.not = icmp eq i32 %call63, 0
  br i1 %tobool64.not, label %if.then102, label %if.end66

if.end66:                                         ; preds = %land.lhs.true62, %if.end60
  %accuracy.0175 = phi %struct.TS_accuracy_st* [ %accuracy.0172, %land.lhs.true62 ], [ null, %if.end60 ]
  %flags = getelementptr inbounds %struct.TS_resp_ctx, %struct.TS_resp_ctx* %ctx, i64 0, i32 12
  %16 = load i32, i32* %flags, align 4, !tbaa !29
  %and = and i32 %16, 2
  %tobool67.not = icmp eq i32 %and, 0
  br i1 %tobool67.not, label %if.end72, label %land.lhs.true68

land.lhs.true68:                                  ; preds = %if.end66
  %call69 = call i32 @TS_TST_INFO_set_ordering(%struct.TS_tst_info_st* noundef nonnull %call, i32 noundef 1) #9
  %tobool70.not = icmp eq i32 %call69, 0
  br i1 %tobool70.not, label %if.then102, label %if.end72

if.end72:                                         ; preds = %land.lhs.true68, %if.end66
  %17 = load %struct.TS_req_st*, %struct.TS_req_st** %request, align 8, !tbaa !40
  %nonce74 = getelementptr inbounds %struct.TS_req_st, %struct.TS_req_st* %17, i64 0, i32 3
  %18 = load %struct.asn1_string_st*, %struct.asn1_string_st** %nonce74, align 8, !tbaa !56
  %cmp75.not = icmp eq %struct.asn1_string_st* %18, null
  br i1 %cmp75.not, label %if.end80, label %land.lhs.true76

land.lhs.true76:                                  ; preds = %if.end72
  %call77 = call i32 @TS_TST_INFO_set_nonce(%struct.TS_tst_info_st* noundef nonnull %call, %struct.asn1_string_st* noundef nonnull %18) #9
  %tobool78.not = icmp eq i32 %call77, 0
  br i1 %tobool78.not, label %if.then102, label %if.end80

if.end80:                                         ; preds = %land.lhs.true76, %if.end72
  %19 = load i32, i32* %flags, align 4, !tbaa !29
  %and82 = and i32 %19, 1
  %tobool83.not = icmp eq i32 %and82, 0
  br i1 %tobool83.not, label %if.end104, label %if.then84

if.then84:                                        ; preds = %if.end80
  %call85 = call %struct.GENERAL_NAME_st* @GENERAL_NAME_new() #9
  %cmp86 = icmp eq %struct.GENERAL_NAME_st* %call85, null
  br i1 %cmp86, label %if.then102, label %if.end88

if.end88:                                         ; preds = %if.then84
  %type = getelementptr inbounds %struct.GENERAL_NAME_st, %struct.GENERAL_NAME_st* %call85, i64 0, i32 0
  store i32 4, i32* %type, align 8, !tbaa !57
  %signer_cert = getelementptr inbounds %struct.TS_resp_ctx, %struct.TS_resp_ctx* %ctx, i64 0, i32 0
  %20 = load %struct.x509_st*, %struct.x509_st** %signer_cert, align 8, !tbaa !19
  %call89 = call %struct.X509_name_st* @X509_get_subject_name(%struct.x509_st* noundef %20) #9
  %call90 = call %struct.X509_name_st* @X509_NAME_dup(%struct.X509_name_st* noundef %call89) #9
  %d = getelementptr inbounds %struct.GENERAL_NAME_st, %struct.GENERAL_NAME_st* %call85, i64 0, i32 1
  %dirn = bitcast %union.anon.1* %d to %struct.X509_name_st**
  store %struct.X509_name_st* %call90, %struct.X509_name_st** %dirn, align 8, !tbaa !59
  %tobool93.not = icmp eq %struct.X509_name_st* %call90, null
  br i1 %tobool93.not, label %if.then102, label %if.end95

if.end95:                                         ; preds = %if.end88
  %call96 = call i32 @TS_TST_INFO_set_tsa(%struct.TS_tst_info_st* noundef nonnull %call, %struct.GENERAL_NAME_st* noundef nonnull %call85) #9
  %tobool97.not = icmp eq i32 %call96, 0
  br i1 %tobool97.not, label %if.then102, label %if.end104

if.then102:                                       ; preds = %entry, %if.end11, %lor.lhs.false20, %land.lhs.true, %if.then84, %if.end95, %if.end88, %land.lhs.true76, %land.lhs.true68, %land.lhs.true62, %land.lhs.true55, %land.lhs.true47, %land.lhs.true39, %lor.lhs.false23, %if.end17, %lor.lhs.false, %if.end7, %if.end3, %if.end
  %serial.0.ph = phi %struct.asn1_string_st* [ null, %if.end ], [ null, %if.end3 ], [ null, %if.end7 ], [ %call12, %lor.lhs.false ], [ %call12, %if.end17 ], [ %call12, %lor.lhs.false23 ], [ %call12, %land.lhs.true39 ], [ %call12, %land.lhs.true47 ], [ %call12, %land.lhs.true55 ], [ %call12, %land.lhs.true62 ], [ %call12, %land.lhs.true68 ], [ %call12, %land.lhs.true76 ], [ %call12, %if.end88 ], [ %call12, %if.end95 ], [ %call12, %if.then84 ], [ %call12, %land.lhs.true ], [ %call12, %lor.lhs.false20 ], [ null, %if.end11 ], [ null, %entry ]
  %asn1_time.0.ph = phi %struct.asn1_string_st* [ null, %if.end ], [ null, %if.end3 ], [ null, %if.end7 ], [ null, %lor.lhs.false ], [ null, %if.end17 ], [ %call21, %lor.lhs.false23 ], [ %call21, %land.lhs.true39 ], [ %call21, %land.lhs.true47 ], [ %call21, %land.lhs.true55 ], [ %call21, %land.lhs.true62 ], [ %call21, %land.lhs.true68 ], [ %call21, %land.lhs.true76 ], [ %call21, %if.end88 ], [ %call21, %if.end95 ], [ %call21, %if.then84 ], [ %call21, %land.lhs.true ], [ null, %lor.lhs.false20 ], [ null, %if.end11 ], [ null, %entry ]
  %accuracy.1.ph = phi %struct.TS_accuracy_st* [ null, %if.end ], [ null, %if.end3 ], [ null, %if.end7 ], [ null, %lor.lhs.false ], [ null, %if.end17 ], [ null, %lor.lhs.false23 ], [ %call33, %land.lhs.true39 ], [ %accuracy.0172, %land.lhs.true47 ], [ %accuracy.0172, %land.lhs.true55 ], [ %accuracy.0172, %land.lhs.true62 ], [ %accuracy.0175, %land.lhs.true68 ], [ %accuracy.0175, %land.lhs.true76 ], [ %accuracy.0175, %if.end88 ], [ %accuracy.0175, %if.end95 ], [ %accuracy.0175, %if.then84 ], [ null, %land.lhs.true ], [ null, %lor.lhs.false20 ], [ null, %if.end11 ], [ null, %entry ]
  %tsa_name.1.ph = phi %struct.GENERAL_NAME_st* [ null, %if.end ], [ null, %if.end3 ], [ null, %if.end7 ], [ null, %lor.lhs.false ], [ null, %if.end17 ], [ null, %lor.lhs.false23 ], [ null, %land.lhs.true39 ], [ null, %land.lhs.true47 ], [ null, %land.lhs.true55 ], [ null, %land.lhs.true62 ], [ null, %land.lhs.true68 ], [ null, %land.lhs.true76 ], [ %call85, %if.end88 ], [ %call85, %if.end95 ], [ null, %if.then84 ], [ null, %land.lhs.true ], [ null, %lor.lhs.false20 ], [ null, %if.end11 ], [ null, %entry ]
  call void @TS_TST_INFO_free(%struct.TS_tst_info_st* noundef %call) #9
  call void @ERR_new() #9
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 594, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.ts_RESP_create_tst_info, i64 0, i64 0)) #9
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 47, i32 noundef 123, i8* noundef null) #9
  %call103 = call i32 @TS_RESP_CTX_set_status_info_cond(%struct.TS_resp_ctx* noundef %ctx, i32 noundef 2, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.11, i64 0, i64 0)) #10
  br label %if.end104

if.end104:                                        ; preds = %if.end95, %if.end80, %if.then102
  %tsa_name.1168 = phi %struct.GENERAL_NAME_st* [ %tsa_name.1.ph, %if.then102 ], [ %call85, %if.end95 ], [ null, %if.end80 ]
  %accuracy.1166 = phi %struct.TS_accuracy_st* [ %accuracy.1.ph, %if.then102 ], [ %accuracy.0175, %if.end95 ], [ %accuracy.0175, %if.end80 ]
  %asn1_time.0164 = phi %struct.asn1_string_st* [ %asn1_time.0.ph, %if.then102 ], [ %call21, %if.end95 ], [ %call21, %if.end80 ]
  %serial.0162 = phi %struct.asn1_string_st* [ %serial.0.ph, %if.then102 ], [ %call12, %if.end95 ], [ %call12, %if.end80 ]
  %tst_info.0 = phi %struct.TS_tst_info_st* [ null, %if.then102 ], [ %call, %if.end95 ], [ %call, %if.end80 ]
  call void @GENERAL_NAME_free(%struct.GENERAL_NAME_st* noundef %tsa_name.1168) #9
  call void @TS_ACCURACY_free(%struct.TS_accuracy_st* noundef %accuracy.1166) #9
  call void @ASN1_GENERALIZEDTIME_free(%struct.asn1_string_st* noundef %asn1_time.0164) #9
  call void @ASN1_INTEGER_free(%struct.asn1_string_st* noundef %serial.0162) #9
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #11
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #11
  ret %struct.TS_tst_info_st* %tst_info.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @ts_RESP_process_extensions(%struct.TS_resp_ctx* noundef %ctx) unnamed_addr #0 {
entry:
  %request = getelementptr inbounds %struct.TS_resp_ctx, %struct.TS_resp_ctx* %ctx, i64 0, i32 19
  %0 = load %struct.TS_req_st*, %struct.TS_req_st** %request, align 8, !tbaa !40
  %extensions = getelementptr inbounds %struct.TS_req_st, %struct.TS_req_st* %0, i64 0, i32 5
  %1 = load %struct.stack_st_X509_EXTENSION*, %struct.stack_st_X509_EXTENSION** %extensions, align 8, !tbaa !60
  %call = tail call fastcc %struct.stack_st* @ossl_check_const_X509_EXTENSION_sk_type(%struct.stack_st_X509_EXTENSION* noundef %1) #10
  %extension_cb = getelementptr inbounds %struct.TS_resp_ctx, %struct.TS_resp_ctx* %ctx, i64 0, i32 17
  %call117 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call) #9
  %cmp18 = icmp sgt i32 %call117, 0
  br i1 %cmp18, label %for.body, label %for.end

land.rhs:                                         ; preds = %for.body
  %call1 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call) #9
  %cmp = icmp slt i32 %inc, %call1
  br i1 %cmp, label %for.body, label %for.end, !llvm.loop !61

for.body:                                         ; preds = %entry, %land.rhs
  %i.01619 = phi i32 [ %inc, %land.rhs ], [ 0, %entry ]
  %call3 = tail call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call, i32 noundef %i.01619) #9
  %2 = bitcast i8* %call3 to %struct.X509_extension_st*
  %3 = load i32 (%struct.TS_resp_ctx*, %struct.X509_extension_st*, i8*)*, i32 (%struct.TS_resp_ctx*, %struct.X509_extension_st*, i8*)** %extension_cb, align 8, !tbaa !13
  %call4 = tail call i32 %3(%struct.TS_resp_ctx* noundef nonnull %ctx, %struct.X509_extension_st* noundef %2, i8* noundef null) #9
  %inc = add nuw nsw i32 %i.01619, 1
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %for.end, label %land.rhs, !llvm.loop !61

for.end:                                          ; preds = %land.rhs, %for.body, %entry
  %ok.0.lcssa = phi i32 [ 1, %entry ], [ %call4, %land.rhs ], [ 0, %for.body ]
  ret i32 %ok.0.lcssa
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @ts_RESP_sign(%struct.TS_resp_ctx* nocapture noundef %ctx) unnamed_addr #0 {
entry:
  %signer_cert = getelementptr inbounds %struct.TS_resp_ctx, %struct.TS_resp_ctx* %ctx, i64 0, i32 0
  %0 = load %struct.x509_st*, %struct.x509_st** %signer_cert, align 8, !tbaa !19
  %signer_key = getelementptr inbounds %struct.TS_resp_ctx, %struct.TS_resp_ctx* %ctx, i64 0, i32 1
  %1 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %signer_key, align 8, !tbaa !20
  %call = tail call i32 @X509_check_private_key(%struct.x509_st* noundef %0, %struct.evp_pkey_st* noundef %1) #9
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #9
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 689, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @__func__.ts_RESP_sign, i64 0, i64 0)) #9
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 47, i32 noundef 120, i8* noundef null) #9
  br label %err

if.end:                                           ; preds = %entry
  %libctx = getelementptr inbounds %struct.TS_resp_ctx, %struct.TS_resp_ctx* %ctx, i64 0, i32 22
  %2 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** %libctx, align 8, !tbaa !10
  %propq = getelementptr inbounds %struct.TS_resp_ctx, %struct.TS_resp_ctx* %ctx, i64 0, i32 23
  %3 = load i8*, i8** %propq, align 8, !tbaa !4
  %call1 = tail call %struct.pkcs7_st* @PKCS7_new_ex(%struct.ossl_lib_ctx_st* noundef %2, i8* noundef %3) #9
  %cmp = icmp eq %struct.pkcs7_st* %call1, null
  br i1 %cmp, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  tail call void @ERR_new() #9
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 694, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @__func__.ts_RESP_sign, i64 0, i64 0)) #9
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 47, i32 noundef 786688, i8* noundef null) #9
  br label %err

if.end3:                                          ; preds = %if.end
  %call4 = tail call i32 @PKCS7_set_type(%struct.pkcs7_st* noundef nonnull %call1, i32 noundef 22) #9
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %err, label %if.end7

if.end7:                                          ; preds = %if.end3
  %d = getelementptr inbounds %struct.pkcs7_st, %struct.pkcs7_st* %call1, i64 0, i32 5
  %sign = bitcast %union.anon.0* %d to %struct.pkcs7_signed_st**
  %4 = load %struct.pkcs7_signed_st*, %struct.pkcs7_signed_st** %sign, align 8, !tbaa !59
  %version = getelementptr inbounds %struct.pkcs7_signed_st, %struct.pkcs7_signed_st* %4, i64 0, i32 0
  %5 = load %struct.asn1_string_st*, %struct.asn1_string_st** %version, align 8, !tbaa !62
  %call8 = tail call i32 @ASN1_INTEGER_set(%struct.asn1_string_st* noundef %5, i64 noundef 3) #9
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %err, label %if.end11

if.end11:                                         ; preds = %if.end7
  %request = getelementptr inbounds %struct.TS_resp_ctx, %struct.TS_resp_ctx* %ctx, i64 0, i32 19
  %6 = load %struct.TS_req_st*, %struct.TS_req_st** %request, align 8, !tbaa !40
  %cert_req = getelementptr inbounds %struct.TS_req_st, %struct.TS_req_st* %6, i64 0, i32 4
  %7 = load i32, i32* %cert_req, align 8, !tbaa !64
  %tobool12.not = icmp eq i32 %7, 0
  br i1 %tobool12.not, label %if.end28, label %if.then13

if.then13:                                        ; preds = %if.end11
  %8 = load %struct.x509_st*, %struct.x509_st** %signer_cert, align 8, !tbaa !19
  %call15 = tail call i32 @PKCS7_add_certificate(%struct.pkcs7_st* noundef nonnull %call1, %struct.x509_st* noundef %8) #9
  %certs16 = getelementptr inbounds %struct.TS_resp_ctx, %struct.TS_resp_ctx* %ctx, i64 0, i32 4
  %9 = load %struct.stack_st_X509*, %struct.stack_st_X509** %certs16, align 8, !tbaa !21
  %tobool17.not = icmp eq %struct.stack_st_X509* %9, null
  br i1 %tobool17.not, label %if.end28, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.then13
  %call20178 = tail call fastcc %struct.stack_st* @ossl_check_const_X509_sk_type(%struct.stack_st_X509* noundef nonnull %9) #10
  %call21179 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call20178) #9
  %cmp22180 = icmp sgt i32 %call21179, 0
  br i1 %cmp22180, label %for.body, label %if.end28

for.body:                                         ; preds = %for.cond.preheader, %for.body
  %i.0181 = phi i32 [ %inc, %for.body ], [ 0, %for.cond.preheader ]
  %10 = load %struct.stack_st_X509*, %struct.stack_st_X509** %certs16, align 8, !tbaa !21
  %call24 = tail call fastcc %struct.stack_st* @ossl_check_const_X509_sk_type(%struct.stack_st_X509* noundef %10) #10
  %call25 = tail call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call24, i32 noundef %i.0181) #9
  %11 = bitcast i8* %call25 to %struct.x509_st*
  %call26 = tail call i32 @PKCS7_add_certificate(%struct.pkcs7_st* noundef %call1, %struct.x509_st* noundef %11) #9
  %inc = add nuw nsw i32 %i.0181, 1
  %12 = load %struct.stack_st_X509*, %struct.stack_st_X509** %certs16, align 8, !tbaa !21
  %call20 = tail call fastcc %struct.stack_st* @ossl_check_const_X509_sk_type(%struct.stack_st_X509* noundef %12) #10
  %call21 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call20) #9
  %cmp22 = icmp slt i32 %inc, %call21
  br i1 %cmp22, label %for.body, label %if.end28, !llvm.loop !65

if.end28:                                         ; preds = %for.body, %for.cond.preheader, %if.then13, %if.end11
  %signer_md29 = getelementptr inbounds %struct.TS_resp_ctx, %struct.TS_resp_ctx* %ctx, i64 0, i32 2
  %13 = load %struct.evp_md_st*, %struct.evp_md_st** %signer_md29, align 8, !tbaa !28
  %cmp30 = icmp eq %struct.evp_md_st* %13, null
  br i1 %cmp30, label %if.then31, label %if.else

if.then31:                                        ; preds = %if.end28
  %14 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** %libctx, align 8, !tbaa !10
  %15 = load i8*, i8** %propq, align 8, !tbaa !4
  %call34 = tail call %struct.evp_md_st* @EVP_MD_fetch(%struct.ossl_lib_ctx_st* noundef %14, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i64 0, i64 0), i8* noundef %15) #9
  br label %if.end47

if.else:                                          ; preds = %if.end28
  %call36 = tail call %struct.ossl_provider_st* @EVP_MD_get0_provider(%struct.evp_md_st* noundef nonnull %13) #9
  %cmp37 = icmp eq %struct.ossl_provider_st* %call36, null
  br i1 %cmp37, label %if.then38, label %if.else44

if.then38:                                        ; preds = %if.else
  %16 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** %libctx, align 8, !tbaa !10
  %17 = load %struct.evp_md_st*, %struct.evp_md_st** %signer_md29, align 8, !tbaa !28
  %call41 = tail call i8* @EVP_MD_get0_name(%struct.evp_md_st* noundef %17) #9
  %18 = load i8*, i8** %propq, align 8, !tbaa !4
  %call43 = tail call %struct.evp_md_st* @EVP_MD_fetch(%struct.ossl_lib_ctx_st* noundef %16, i8* noundef %call41, i8* noundef %18) #9
  br label %if.end47

if.else44:                                        ; preds = %if.else
  %19 = load %struct.evp_md_st*, %struct.evp_md_st** %signer_md29, align 8, !tbaa !28
  br label %if.end47

if.end47:                                         ; preds = %if.then38, %if.else44, %if.then31
  %signer_md.0 = phi %struct.evp_md_st* [ %call34, %if.then31 ], [ %call43, %if.then38 ], [ %19, %if.else44 ]
  %20 = load %struct.x509_st*, %struct.x509_st** %signer_cert, align 8, !tbaa !19
  %21 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %signer_key, align 8, !tbaa !20
  %call50 = tail call %struct.pkcs7_signer_info_st* @PKCS7_add_signature(%struct.pkcs7_st* noundef %call1, %struct.x509_st* noundef %20, %struct.evp_pkey_st* noundef %21, %struct.evp_md_st* noundef %signer_md.0) #9
  %cmp51 = icmp eq %struct.pkcs7_signer_info_st* %call50, null
  br i1 %cmp51, label %if.then52, label %if.end53

if.then52:                                        ; preds = %if.end47
  tail call void @ERR_new() #9
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 722, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @__func__.ts_RESP_sign, i64 0, i64 0)) #9
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 47, i32 noundef 118, i8* noundef null) #9
  br label %err

if.end53:                                         ; preds = %if.end47
  %call54 = tail call %struct.asn1_object_st* @OBJ_nid2obj(i32 noundef 207) #9
  %22 = bitcast %struct.asn1_object_st* %call54 to i8*
  %call55 = tail call i32 @PKCS7_add_signed_attribute(%struct.pkcs7_signer_info_st* noundef nonnull %call50, i32 noundef 50, i32 noundef 6, i8* noundef %22) #9
  %tobool56.not = icmp eq i32 %call55, 0
  br i1 %tobool56.not, label %if.then57, label %if.end58

if.then57:                                        ; preds = %if.end53
  tail call void @ERR_new() #9
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 729, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @__func__.ts_RESP_sign, i64 0, i64 0)) #9
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 47, i32 noundef 119, i8* noundef null) #9
  br label %err

if.end58:                                         ; preds = %if.end53
  %flags = getelementptr inbounds %struct.TS_resp_ctx, %struct.TS_resp_ctx* %ctx, i64 0, i32 12
  %23 = load i32, i32* %flags, align 4, !tbaa !29
  %and = and i32 %23, 4
  %tobool59.not = icmp eq i32 %and, 0
  br i1 %tobool59.not, label %cond.end, label %cond.true

cond.true:                                        ; preds = %if.end58
  %certs60 = getelementptr inbounds %struct.TS_resp_ctx, %struct.TS_resp_ctx* %ctx, i64 0, i32 4
  %24 = load %struct.stack_st_X509*, %struct.stack_st_X509** %certs60, align 8, !tbaa !21
  br label %cond.end

cond.end:                                         ; preds = %if.end58, %cond.true
  %cond = phi %struct.stack_st_X509* [ %24, %cond.true ], [ null, %if.end58 ]
  %ess_cert_id_digest = getelementptr inbounds %struct.TS_resp_ctx, %struct.TS_resp_ctx* %ctx, i64 0, i32 3
  %25 = load %struct.evp_md_st*, %struct.evp_md_st** %ess_cert_id_digest, align 8, !tbaa !66
  %cmp61 = icmp eq %struct.evp_md_st* %25, null
  br i1 %cmp61, label %if.then65, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %cond.end
  %call63 = tail call i32 @EVP_MD_is_a(%struct.evp_md_st* noundef nonnull %25, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i64 0, i64 0)) #9
  %tobool64.not = icmp eq i32 %call63, 0
  br i1 %tobool64.not, label %if.else75, label %if.then65

if.then65:                                        ; preds = %lor.lhs.false, %cond.end
  %26 = load %struct.x509_st*, %struct.x509_st** %signer_cert, align 8, !tbaa !19
  %call67 = tail call %struct.ESS_signing_cert* @OSSL_ESS_signing_cert_new_init(%struct.x509_st* noundef %26, %struct.stack_st_X509* noundef %cond, i32 noundef 0) #9
  %cmp68 = icmp eq %struct.ESS_signing_cert* %call67, null
  br i1 %cmp68, label %err, label %if.end70

if.end70:                                         ; preds = %if.then65
  %call71 = tail call fastcc i32 @ossl_ess_add1_signing_cert(%struct.pkcs7_signer_info_st* noundef nonnull %call50, %struct.ESS_signing_cert* noundef nonnull %call67) #10
  %tobool72.not = icmp eq i32 %call71, 0
  br i1 %tobool72.not, label %if.then73, label %if.end86

if.then73:                                        ; preds = %if.end70
  tail call void @ERR_new() #9
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 741, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @__func__.ts_RESP_sign, i64 0, i64 0)) #9
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 47, i32 noundef 116, i8* noundef null) #9
  br label %err

if.else75:                                        ; preds = %lor.lhs.false
  %27 = load %struct.evp_md_st*, %struct.evp_md_st** %ess_cert_id_digest, align 8, !tbaa !66
  %28 = load %struct.x509_st*, %struct.x509_st** %signer_cert, align 8, !tbaa !19
  %call78 = tail call %struct.ESS_signing_cert_v2_st* @OSSL_ESS_signing_cert_v2_new_init(%struct.evp_md_st* noundef %27, %struct.x509_st* noundef %28, %struct.stack_st_X509* noundef %cond, i32 noundef 0) #9
  %cmp79 = icmp eq %struct.ESS_signing_cert_v2_st* %call78, null
  br i1 %cmp79, label %err, label %if.end81

if.end81:                                         ; preds = %if.else75
  %call82 = tail call fastcc i32 @ossl_ess_add1_signing_cert_v2(%struct.pkcs7_signer_info_st* noundef nonnull %call50, %struct.ESS_signing_cert_v2_st* noundef nonnull %call78) #10
  %tobool83.not = icmp eq i32 %call82, 0
  br i1 %tobool83.not, label %if.then84, label %if.end86

if.then84:                                        ; preds = %if.end81
  tail call void @ERR_new() #9
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 751, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @__func__.ts_RESP_sign, i64 0, i64 0)) #9
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 47, i32 noundef 139, i8* noundef null) #9
  br label %err

if.end86:                                         ; preds = %if.end81, %if.end70
  %sc2.0 = phi %struct.ESS_signing_cert_v2_st* [ null, %if.end70 ], [ %call78, %if.end81 ]
  %sc.0 = phi %struct.ESS_signing_cert* [ %call67, %if.end70 ], [ null, %if.end81 ]
  %call87 = tail call fastcc i32 @ts_TST_INFO_content_new(%struct.pkcs7_st* noundef %call1) #10
  %tobool88.not = icmp eq i32 %call87, 0
  br i1 %tobool88.not, label %err, label %if.end90

if.end90:                                         ; preds = %if.end86
  %call91 = tail call %struct.bio_st* @PKCS7_dataInit(%struct.pkcs7_st* noundef %call1, %struct.bio_st* noundef null) #9
  %cmp92 = icmp eq %struct.bio_st* %call91, null
  br i1 %cmp92, label %if.then93, label %if.end94

if.then93:                                        ; preds = %if.end90
  tail call void @ERR_new() #9
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 759, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @__func__.ts_RESP_sign, i64 0, i64 0)) #9
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 47, i32 noundef 786688, i8* noundef null) #9
  br label %err

if.end94:                                         ; preds = %if.end90
  %tst_info = getelementptr inbounds %struct.TS_resp_ctx, %struct.TS_resp_ctx* %ctx, i64 0, i32 21
  %29 = load %struct.TS_tst_info_st*, %struct.TS_tst_info_st** %tst_info, align 8, !tbaa !41
  %call95 = tail call i32 @i2d_TS_TST_INFO_bio(%struct.bio_st* noundef nonnull %call91, %struct.TS_tst_info_st* noundef %29) #9
  %tobool96.not = icmp eq i32 %call95, 0
  br i1 %tobool96.not, label %if.then97, label %if.end98

if.then97:                                        ; preds = %if.end94
  tail call void @ERR_new() #9
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 763, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @__func__.ts_RESP_sign, i64 0, i64 0)) #9
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 47, i32 noundef 124, i8* noundef null) #9
  br label %err

if.end98:                                         ; preds = %if.end94
  %call99 = tail call i32 @PKCS7_dataFinal(%struct.pkcs7_st* noundef %call1, %struct.bio_st* noundef nonnull %call91) #9
  %tobool100.not = icmp eq i32 %call99, 0
  br i1 %tobool100.not, label %if.then101, label %if.end102

if.then101:                                       ; preds = %if.end98
  tail call void @ERR_new() #9
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 767, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @__func__.ts_RESP_sign, i64 0, i64 0)) #9
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 47, i32 noundef 124, i8* noundef null) #9
  br label %err

if.end102:                                        ; preds = %if.end98
  %response = getelementptr inbounds %struct.TS_resp_ctx, %struct.TS_resp_ctx* %ctx, i64 0, i32 20
  %30 = load %struct.TS_resp_st*, %struct.TS_resp_st** %response, align 8, !tbaa !36
  %31 = load %struct.TS_tst_info_st*, %struct.TS_tst_info_st** %tst_info, align 8, !tbaa !41
  tail call void @TS_RESP_set_tst_info(%struct.TS_resp_st* noundef %30, %struct.pkcs7_st* noundef %call1, %struct.TS_tst_info_st* noundef %31) #9
  store %struct.TS_tst_info_st* null, %struct.TS_tst_info_st** %tst_info, align 8, !tbaa !41
  br label %err

err:                                              ; preds = %if.end86, %if.else75, %if.then65, %if.end7, %if.end3, %if.end102, %if.then101, %if.then97, %if.then93, %if.then84, %if.then73, %if.then57, %if.then52, %if.then2, %if.then
  %sc2.1 = phi %struct.ESS_signing_cert_v2_st* [ null, %if.then2 ], [ null, %if.then52 ], [ null, %if.then65 ], [ %sc2.0, %if.then93 ], [ %sc2.0, %if.end102 ], [ %sc2.0, %if.then101 ], [ %sc2.0, %if.then97 ], [ %sc2.0, %if.end86 ], [ null, %if.then73 ], [ null, %if.else75 ], [ %call78, %if.then84 ], [ null, %if.then57 ], [ null, %if.end7 ], [ null, %if.end3 ], [ null, %if.then ]
  %sc.1 = phi %struct.ESS_signing_cert* [ null, %if.then2 ], [ null, %if.then52 ], [ null, %if.then65 ], [ %sc.0, %if.then93 ], [ %sc.0, %if.end102 ], [ %sc.0, %if.then101 ], [ %sc.0, %if.then97 ], [ %sc.0, %if.end86 ], [ %call67, %if.then73 ], [ null, %if.else75 ], [ null, %if.then84 ], [ null, %if.then57 ], [ null, %if.end7 ], [ null, %if.end3 ], [ null, %if.then ]
  %p7.0 = phi %struct.pkcs7_st* [ null, %if.then2 ], [ %call1, %if.then52 ], [ %call1, %if.then65 ], [ %call1, %if.then93 ], [ null, %if.end102 ], [ %call1, %if.then101 ], [ %call1, %if.then97 ], [ %call1, %if.end86 ], [ %call1, %if.then73 ], [ %call1, %if.else75 ], [ %call1, %if.then84 ], [ %call1, %if.then57 ], [ %call1, %if.end7 ], [ %call1, %if.end3 ], [ null, %if.then ]
  %p7bio.0 = phi %struct.bio_st* [ null, %if.then2 ], [ null, %if.then52 ], [ null, %if.then65 ], [ null, %if.then93 ], [ %call91, %if.end102 ], [ %call91, %if.then101 ], [ %call91, %if.then97 ], [ null, %if.end86 ], [ null, %if.then73 ], [ null, %if.else75 ], [ null, %if.then84 ], [ null, %if.then57 ], [ null, %if.end7 ], [ null, %if.end3 ], [ null, %if.then ]
  %signer_md.1 = phi %struct.evp_md_st* [ null, %if.then2 ], [ %signer_md.0, %if.then52 ], [ %signer_md.0, %if.then65 ], [ %signer_md.0, %if.then93 ], [ %signer_md.0, %if.end102 ], [ %signer_md.0, %if.then101 ], [ %signer_md.0, %if.then97 ], [ %signer_md.0, %if.end86 ], [ %signer_md.0, %if.then73 ], [ %signer_md.0, %if.else75 ], [ %signer_md.0, %if.then84 ], [ %signer_md.0, %if.then57 ], [ null, %if.end7 ], [ null, %if.end3 ], [ null, %if.then ]
  %tobool109.not = phi i1 [ true, %if.then2 ], [ true, %if.then52 ], [ true, %if.then65 ], [ true, %if.then93 ], [ false, %if.end102 ], [ true, %if.then101 ], [ true, %if.then97 ], [ true, %if.end86 ], [ true, %if.then73 ], [ true, %if.else75 ], [ true, %if.then84 ], [ true, %if.then57 ], [ true, %if.end7 ], [ true, %if.end3 ], [ true, %if.then ]
  %ret.0 = phi i32 [ 0, %if.then2 ], [ 0, %if.then52 ], [ 0, %if.then65 ], [ 0, %if.then93 ], [ 1, %if.end102 ], [ 0, %if.then101 ], [ 0, %if.then97 ], [ 0, %if.end86 ], [ 0, %if.then73 ], [ 0, %if.else75 ], [ 0, %if.then84 ], [ 0, %if.then57 ], [ 0, %if.end7 ], [ 0, %if.end3 ], [ 0, %if.then ]
  %signer_md105 = getelementptr inbounds %struct.TS_resp_ctx, %struct.TS_resp_ctx* %ctx, i64 0, i32 2
  %32 = load %struct.evp_md_st*, %struct.evp_md_st** %signer_md105, align 8, !tbaa !28
  %cmp106.not = icmp eq %struct.evp_md_st* %signer_md.1, %32
  br i1 %cmp106.not, label %if.end108, label %if.then107

if.then107:                                       ; preds = %err
  tail call void @EVP_MD_free(%struct.evp_md_st* noundef %signer_md.1) #9
  br label %if.end108

if.end108:                                        ; preds = %if.then107, %err
  br i1 %tobool109.not, label %if.then110, label %if.end112

if.then110:                                       ; preds = %if.end108
  %call111 = tail call i32 @TS_RESP_CTX_set_status_info_cond(%struct.TS_resp_ctx* noundef nonnull %ctx, i32 noundef 2, i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.16, i64 0, i64 0)) #10
  br label %if.end112

if.end112:                                        ; preds = %if.then110, %if.end108
  tail call void @BIO_free_all(%struct.bio_st* noundef %p7bio.0) #9
  tail call void @ESS_SIGNING_CERT_V2_free(%struct.ESS_signing_cert_v2_st* noundef %sc2.1) #9
  tail call void @ESS_SIGNING_CERT_free(%struct.ESS_signing_cert* noundef %sc.1) #9
  tail call void @PKCS7_free(%struct.pkcs7_st* noundef %p7.0) #9
  ret i32 %ret.0
}

declare void @TS_RESP_free(%struct.TS_resp_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @ts_RESP_CTX_cleanup(%struct.TS_resp_ctx* nocapture noundef %ctx) unnamed_addr #0 {
entry:
  %request = getelementptr inbounds %struct.TS_resp_ctx, %struct.TS_resp_ctx* %ctx, i64 0, i32 19
  %0 = load %struct.TS_req_st*, %struct.TS_req_st** %request, align 8, !tbaa !40
  tail call void @TS_REQ_free(%struct.TS_req_st* noundef %0) #9
  store %struct.TS_req_st* null, %struct.TS_req_st** %request, align 8, !tbaa !40
  %response = getelementptr inbounds %struct.TS_resp_ctx, %struct.TS_resp_ctx* %ctx, i64 0, i32 20
  %1 = load %struct.TS_resp_st*, %struct.TS_resp_st** %response, align 8, !tbaa !36
  tail call void @TS_RESP_free(%struct.TS_resp_st* noundef %1) #9
  store %struct.TS_resp_st* null, %struct.TS_resp_st** %response, align 8, !tbaa !36
  %tst_info = getelementptr inbounds %struct.TS_resp_ctx, %struct.TS_resp_ctx* %ctx, i64 0, i32 21
  %2 = load %struct.TS_tst_info_st*, %struct.TS_tst_info_st** %tst_info, align 8, !tbaa !41
  tail call void @TS_TST_INFO_free(%struct.TS_tst_info_st* noundef %2) #9
  store %struct.TS_tst_info_st* null, %struct.TS_tst_info_st** %tst_info, align 8, !tbaa !41
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define i32 @TS_RESP_CTX_set_ess_cert_id_digest(%struct.TS_resp_ctx* nocapture noundef writeonly %ctx, %struct.evp_md_st* noundef %md) local_unnamed_addr #4 {
entry:
  %ess_cert_id_digest = getelementptr inbounds %struct.TS_resp_ctx, %struct.TS_resp_ctx* %ctx, i64 0, i32 3
  store %struct.evp_md_st* %md, %struct.evp_md_st** %ess_cert_id_digest, align 8, !tbaa !66
  ret i32 1
}

; Function Attrs: nounwind
declare i32 @gettimeofday(%struct.timeval* noundef, i8* noundef) local_unnamed_addr #8

declare void @OPENSSL_sk_free(%struct.stack_st* noundef) local_unnamed_addr #2

declare void @TS_REQ_free(%struct.TS_req_st* noundef) local_unnamed_addr #2

declare void @TS_TST_INFO_free(%struct.TS_tst_info_st* noundef) local_unnamed_addr #2

declare i64 @TS_REQ_get_version(%struct.TS_req_st* noundef) local_unnamed_addr #2

declare i32 @OBJ_obj2txt(i8* noundef, i32 noundef, %struct.asn1_object_st* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @sk_EVP_MD_num(%struct.stack_st_EVP_MD* noundef %sk) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.stack_st_EVP_MD* %sk to %struct.stack_st*
  %call = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %0) #9
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.evp_md_st* @sk_EVP_MD_value(%struct.stack_st_EVP_MD* noundef %sk, i32 noundef %idx) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.stack_st_EVP_MD* %sk to %struct.stack_st*
  %call = tail call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %0, i32 noundef %idx) #9
  %1 = bitcast i8* %call to %struct.evp_md_st*
  ret %struct.evp_md_st* %1
}

declare i32 @EVP_MD_is_a(%struct.evp_md_st* noundef, i8* noundef) local_unnamed_addr #2

declare i32 @ASN1_TYPE_get(%struct.asn1_type_st* noundef) local_unnamed_addr #2

declare i32 @EVP_MD_get_size(%struct.evp_md_st* noundef) local_unnamed_addr #2

declare i32 @OPENSSL_sk_num(%struct.stack_st* noundef) local_unnamed_addr #2

declare i8* @OPENSSL_sk_value(%struct.stack_st* noundef, i32 noundef) local_unnamed_addr #2

declare i32 @OBJ_cmp(%struct.asn1_object_st* noundef, %struct.asn1_object_st* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_const_ASN1_OBJECT_sk_type(%struct.stack_st_ASN1_OBJECT* noundef readnone %sk) unnamed_addr #3 {
entry:
  %0 = bitcast %struct.stack_st_ASN1_OBJECT* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

declare %struct.TS_tst_info_st* @TS_TST_INFO_new() local_unnamed_addr #2

declare i32 @TS_TST_INFO_set_version(%struct.TS_tst_info_st* noundef, i64 noundef) local_unnamed_addr #2

declare i32 @TS_TST_INFO_set_policy_id(%struct.TS_tst_info_st* noundef, %struct.asn1_object_st* noundef) local_unnamed_addr #2

declare i32 @TS_TST_INFO_set_msg_imprint(%struct.TS_tst_info_st* noundef, %struct.TS_msg_imprint_st* noundef) local_unnamed_addr #2

declare i32 @TS_TST_INFO_set_serial(%struct.TS_tst_info_st* noundef, %struct.asn1_string_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.asn1_string_st* @TS_RESP_set_genTime_with_precision(i64 noundef %sec, i64 noundef %usec, i32 noundef %precision) unnamed_addr #0 {
entry:
  %time_sec = alloca i64, align 8
  %tm_result = alloca %struct.tm, align 8
  %genTime_str = alloca [23 x i8], align 16
  %0 = bitcast i64* %time_sec to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #11
  store i64 %sec, i64* %time_sec, align 8, !tbaa !17
  %1 = bitcast %struct.tm* %tm_result to i8*
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %1) #11
  %2 = getelementptr inbounds [23 x i8], [23 x i8]* %genTime_str, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 23, i8* nonnull %2) #11
  %cmp = icmp ugt i32 %precision, 6
  br i1 %cmp, label %err, label %if.end

if.end:                                           ; preds = %entry
  %call = call %struct.tm* @OPENSSL_gmtime(i64* noundef nonnull %time_sec, %struct.tm* noundef nonnull %tm_result) #9
  %cmp2 = icmp eq %struct.tm* %call, null
  br i1 %cmp2, label %err, label %if.end4

if.end4:                                          ; preds = %if.end
  %tm_year = getelementptr inbounds %struct.tm, %struct.tm* %call, i64 0, i32 5
  %3 = load i32, i32* %tm_year, align 4, !tbaa !67
  %add = add nsw i32 %3, 1900
  %tm_mon = getelementptr inbounds %struct.tm, %struct.tm* %call, i64 0, i32 4
  %4 = load i32, i32* %tm_mon, align 8, !tbaa !69
  %add5 = add nsw i32 %4, 1
  %tm_mday = getelementptr inbounds %struct.tm, %struct.tm* %call, i64 0, i32 3
  %5 = load i32, i32* %tm_mday, align 4, !tbaa !70
  %tm_hour = getelementptr inbounds %struct.tm, %struct.tm* %call, i64 0, i32 2
  %6 = load i32, i32* %tm_hour, align 8, !tbaa !71
  %tm_min = getelementptr inbounds %struct.tm, %struct.tm* %call, i64 0, i32 1
  %7 = load i32, i32* %tm_min, align 4, !tbaa !72
  %tm_sec = getelementptr inbounds %struct.tm, %struct.tm* %call, i64 0, i32 0
  %8 = load i32, i32* %tm_sec, align 8, !tbaa !73
  %call6 = call i32 (i8*, i64, i8*, ...) @BIO_snprintf(i8* noundef nonnull %2, i64 noundef 23, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.12, i64 0, i64 0), i32 noundef %add, i32 noundef %add5, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8) #9
  %idx.ext = sext i32 %call6 to i64
  %add.ptr7 = getelementptr inbounds [23 x i8], [23 x i8]* %genTime_str, i64 0, i64 %idx.ext
  %cmp8.not = icmp eq i32 %precision, 0
  br i1 %cmp8.not, label %if.end23, label %if.then9

if.then9:                                         ; preds = %if.end4
  %add10 = add nuw nsw i32 %precision, 2
  %conv = zext i32 %add10 to i64
  %call11 = call i32 (i8*, i64, i8*, ...) @BIO_snprintf(i8* noundef nonnull %add.ptr7, i64 noundef %conv, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i64 0, i64 0), i64 noundef %usec) #9
  %call12 = call i64 @strlen(i8* noundef nonnull %add.ptr7) #12
  %add.ptr13 = getelementptr inbounds i8, i8* %add.ptr7, i64 %call12
  br label %while.cond

while.cond:                                       ; preds = %while.cond, %if.then9
  %p.0 = phi i8* [ %add.ptr13, %if.then9 ], [ %incdec.ptr, %while.cond ]
  %incdec.ptr = getelementptr inbounds i8, i8* %p.0, i64 -1
  %9 = load i8, i8* %incdec.ptr, align 1, !tbaa !59
  switch i8 %9, label %if.end23 [
    i8 48, label %while.cond
    i8 46, label %if.end23.loopexit
  ]

if.end23.loopexit:                                ; preds = %while.cond
  br label %if.end23

if.end23:                                         ; preds = %while.cond, %if.end23.loopexit, %if.end4
  %p.1 = phi i8* [ %add.ptr7, %if.end4 ], [ %incdec.ptr, %if.end23.loopexit ], [ %p.0, %while.cond ]
  %incdec.ptr24 = getelementptr inbounds i8, i8* %p.1, i64 1
  store i8 90, i8* %p.1, align 1, !tbaa !59
  store i8 0, i8* %incdec.ptr24, align 1, !tbaa !59
  %call28 = call %struct.asn1_string_st* @ASN1_GENERALIZEDTIME_new() #9
  %cmp29 = icmp eq %struct.asn1_string_st* %call28, null
  br i1 %cmp29, label %err, label %if.end32

if.end32:                                         ; preds = %if.end23
  %call34 = call i32 @ASN1_GENERALIZEDTIME_set_string(%struct.asn1_string_st* noundef nonnull %call28, i8* noundef nonnull %2) #9
  %tobool.not = icmp eq i32 %call34, 0
  br i1 %tobool.not, label %if.then35, label %cleanup

if.then35:                                        ; preds = %if.end32
  call void @ASN1_GENERALIZEDTIME_free(%struct.asn1_string_st* noundef nonnull %call28) #9
  br label %err

err:                                              ; preds = %if.end23, %if.end, %entry, %if.then35
  call void @ERR_new() #9
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 881, i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @__func__.TS_RESP_set_genTime_with_precision, i64 0, i64 0)) #9
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 47, i32 noundef 115, i8* noundef null) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end32, %err
  %retval.0 = phi %struct.asn1_string_st* [ null, %err ], [ %call28, %if.end32 ]
  call void @llvm.lifetime.end.p0i8(i64 23, i8* nonnull %2) #11
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %1) #11
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #11
  ret %struct.asn1_string_st* %retval.0
}

declare i32 @TS_TST_INFO_set_time(%struct.TS_tst_info_st* noundef, %struct.asn1_string_st* noundef) local_unnamed_addr #2

declare %struct.TS_accuracy_st* @TS_ACCURACY_new() local_unnamed_addr #2

declare i32 @TS_ACCURACY_set_seconds(%struct.TS_accuracy_st* noundef, %struct.asn1_string_st* noundef) local_unnamed_addr #2

declare i32 @TS_ACCURACY_set_millis(%struct.TS_accuracy_st* noundef, %struct.asn1_string_st* noundef) local_unnamed_addr #2

declare i32 @TS_ACCURACY_set_micros(%struct.TS_accuracy_st* noundef, %struct.asn1_string_st* noundef) local_unnamed_addr #2

declare i32 @TS_TST_INFO_set_accuracy(%struct.TS_tst_info_st* noundef, %struct.TS_accuracy_st* noundef) local_unnamed_addr #2

declare i32 @TS_TST_INFO_set_ordering(%struct.TS_tst_info_st* noundef, i32 noundef) local_unnamed_addr #2

declare i32 @TS_TST_INFO_set_nonce(%struct.TS_tst_info_st* noundef, %struct.asn1_string_st* noundef) local_unnamed_addr #2

declare %struct.GENERAL_NAME_st* @GENERAL_NAME_new() local_unnamed_addr #2

declare %struct.X509_name_st* @X509_NAME_dup(%struct.X509_name_st* noundef) local_unnamed_addr #2

declare %struct.X509_name_st* @X509_get_subject_name(%struct.x509_st* noundef) local_unnamed_addr #2

declare i32 @TS_TST_INFO_set_tsa(%struct.TS_tst_info_st* noundef, %struct.GENERAL_NAME_st* noundef) local_unnamed_addr #2

declare void @GENERAL_NAME_free(%struct.GENERAL_NAME_st* noundef) local_unnamed_addr #2

declare void @TS_ACCURACY_free(%struct.TS_accuracy_st* noundef) local_unnamed_addr #2

declare void @ASN1_GENERALIZEDTIME_free(%struct.asn1_string_st* noundef) local_unnamed_addr #2

declare %struct.tm* @OPENSSL_gmtime(i64* noundef, %struct.tm* noundef) local_unnamed_addr #2

declare i32 @BIO_snprintf(i8* noundef, i64 noundef, i8* noundef, ...) local_unnamed_addr #2

declare %struct.asn1_string_st* @ASN1_GENERALIZEDTIME_new() local_unnamed_addr #2

declare i32 @ASN1_GENERALIZEDTIME_set_string(%struct.asn1_string_st* noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_const_X509_EXTENSION_sk_type(%struct.stack_st_X509_EXTENSION* noundef readnone %sk) unnamed_addr #3 {
entry:
  %0 = bitcast %struct.stack_st_X509_EXTENSION* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

declare i32 @X509_check_private_key(%struct.x509_st* noundef, %struct.evp_pkey_st* noundef) local_unnamed_addr #2

declare %struct.pkcs7_st* @PKCS7_new_ex(%struct.ossl_lib_ctx_st* noundef, i8* noundef) local_unnamed_addr #2

declare i32 @PKCS7_set_type(%struct.pkcs7_st* noundef, i32 noundef) local_unnamed_addr #2

declare i32 @PKCS7_add_certificate(%struct.pkcs7_st* noundef, %struct.x509_st* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_const_X509_sk_type(%struct.stack_st_X509* noundef readnone %sk) unnamed_addr #3 {
entry:
  %0 = bitcast %struct.stack_st_X509* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

declare %struct.evp_md_st* @EVP_MD_fetch(%struct.ossl_lib_ctx_st* noundef, i8* noundef, i8* noundef) local_unnamed_addr #2

declare %struct.ossl_provider_st* @EVP_MD_get0_provider(%struct.evp_md_st* noundef) local_unnamed_addr #2

declare i8* @EVP_MD_get0_name(%struct.evp_md_st* noundef) local_unnamed_addr #2

declare %struct.pkcs7_signer_info_st* @PKCS7_add_signature(%struct.pkcs7_st* noundef, %struct.x509_st* noundef, %struct.evp_pkey_st* noundef, %struct.evp_md_st* noundef) local_unnamed_addr #2

declare %struct.asn1_object_st* @OBJ_nid2obj(i32 noundef) local_unnamed_addr #2

declare i32 @PKCS7_add_signed_attribute(%struct.pkcs7_signer_info_st* noundef, i32 noundef, i32 noundef, i8* noundef) local_unnamed_addr #2

declare %struct.ESS_signing_cert* @OSSL_ESS_signing_cert_new_init(%struct.x509_st* noundef, %struct.stack_st_X509* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @ossl_ess_add1_signing_cert(%struct.pkcs7_signer_info_st* noundef %si, %struct.ESS_signing_cert* noundef %sc) unnamed_addr #0 {
entry:
  %p = alloca i8*, align 8
  %call = tail call i32 @i2d_ESS_SIGNING_CERT(%struct.ESS_signing_cert* noundef %sc, i8** noundef null) #9
  %0 = bitcast i8** %p to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #11
  %conv = sext i32 %call to i64
  %call1 = tail call i8* @CRYPTO_malloc(i64 noundef %conv, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 634) #9
  %cmp = icmp eq i8* %call1, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  store i8* %call1, i8** %p, align 8, !tbaa !74
  %call3 = call i32 @i2d_ESS_SIGNING_CERT(%struct.ESS_signing_cert* noundef %sc, i8** noundef nonnull %p) #9
  %call4 = call %struct.asn1_string_st* @ASN1_STRING_new() #9
  %cmp5 = icmp eq %struct.asn1_string_st* %call4, null
  br i1 %cmp5, label %if.then8, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %call7 = call i32 @ASN1_STRING_set(%struct.asn1_string_st* noundef nonnull %call4, i8* noundef nonnull %call1, i32 noundef %call) #9
  %tobool.not = icmp eq i32 %call7, 0
  br i1 %tobool.not, label %if.then8, label %if.end9

if.then8:                                         ; preds = %lor.lhs.false, %if.end
  call void @ASN1_STRING_free(%struct.asn1_string_st* noundef %call4) #9
  call void @CRYPTO_free(i8* noundef nonnull %call1, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 643) #9
  br label %cleanup

if.end9:                                          ; preds = %lor.lhs.false
  call void @CRYPTO_free(i8* noundef nonnull %call1, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 647) #9
  %1 = bitcast %struct.asn1_string_st* %call4 to i8*
  %call10 = call i32 @PKCS7_add_signed_attribute(%struct.pkcs7_signer_info_st* noundef %si, i32 noundef 223, i32 noundef 16, i8* noundef nonnull %1) #9
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end9, %if.then8
  %retval.0 = phi i32 [ 0, %if.then8 ], [ %call10, %if.end9 ], [ 0, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #11
  ret i32 %retval.0
}

declare %struct.ESS_signing_cert_v2_st* @OSSL_ESS_signing_cert_v2_new_init(%struct.evp_md_st* noundef, %struct.x509_st* noundef, %struct.stack_st_X509* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @ossl_ess_add1_signing_cert_v2(%struct.pkcs7_signer_info_st* noundef %si, %struct.ESS_signing_cert_v2_st* noundef %sc) unnamed_addr #0 {
entry:
  %p = alloca i8*, align 8
  %call = tail call i32 @i2d_ESS_SIGNING_CERT_V2(%struct.ESS_signing_cert_v2_st* noundef %sc, i8** noundef null) #9
  %0 = bitcast i8** %p to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #11
  %conv = sext i32 %call to i64
  %call1 = tail call i8* @CRYPTO_malloc(i64 noundef %conv, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 657) #9
  %cmp = icmp eq i8* %call1, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  store i8* %call1, i8** %p, align 8, !tbaa !74
  %call3 = call i32 @i2d_ESS_SIGNING_CERT_V2(%struct.ESS_signing_cert_v2_st* noundef %sc, i8** noundef nonnull %p) #9
  %call4 = call %struct.asn1_string_st* @ASN1_STRING_new() #9
  %cmp5 = icmp eq %struct.asn1_string_st* %call4, null
  br i1 %cmp5, label %if.then8, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %call7 = call i32 @ASN1_STRING_set(%struct.asn1_string_st* noundef nonnull %call4, i8* noundef nonnull %call1, i32 noundef %call) #9
  %tobool.not = icmp eq i32 %call7, 0
  br i1 %tobool.not, label %if.then8, label %if.end9

if.then8:                                         ; preds = %lor.lhs.false, %if.end
  call void @ASN1_STRING_free(%struct.asn1_string_st* noundef %call4) #9
  call void @CRYPTO_free(i8* noundef nonnull %call1, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 666) #9
  br label %cleanup

if.end9:                                          ; preds = %lor.lhs.false
  call void @CRYPTO_free(i8* noundef nonnull %call1, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 670) #9
  %1 = bitcast %struct.asn1_string_st* %call4 to i8*
  %call10 = call i32 @PKCS7_add_signed_attribute(%struct.pkcs7_signer_info_st* noundef %si, i32 noundef 1086, i32 noundef 16, i8* noundef nonnull %1) #9
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end9, %if.then8
  %retval.0 = phi i32 [ 0, %if.then8 ], [ %call10, %if.end9 ], [ 0, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #11
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @ts_TST_INFO_content_new(%struct.pkcs7_st* noundef %p7) unnamed_addr #0 {
entry:
  %call = tail call %struct.pkcs7_st* @PKCS7_new() #9
  %cmp = icmp eq %struct.pkcs7_st* %call, null
  br i1 %cmp, label %err, label %if.end

if.end:                                           ; preds = %entry
  %call1 = tail call %struct.asn1_type_st* @ASN1_TYPE_new() #9
  %d = getelementptr inbounds %struct.pkcs7_st, %struct.pkcs7_st* %call, i64 0, i32 5
  %other = bitcast %union.anon.0* %d to %struct.asn1_type_st**
  store %struct.asn1_type_st* %call1, %struct.asn1_type_st** %other, align 8, !tbaa !59
  %cmp2 = icmp eq %struct.asn1_type_st* %call1, null
  br i1 %cmp2, label %err, label %if.end4

if.end4:                                          ; preds = %if.end
  %call5 = tail call %struct.asn1_object_st* @OBJ_nid2obj(i32 noundef 207) #9
  %type = getelementptr inbounds %struct.pkcs7_st, %struct.pkcs7_st* %call, i64 0, i32 4
  store %struct.asn1_object_st* %call5, %struct.asn1_object_st** %type, align 8, !tbaa !75
  %call6 = tail call %struct.asn1_string_st* @ASN1_OCTET_STRING_new() #9
  %cmp7 = icmp eq %struct.asn1_string_st* %call6, null
  br i1 %cmp7, label %err, label %if.end9

if.end9:                                          ; preds = %if.end4
  %0 = load %struct.asn1_type_st*, %struct.asn1_type_st** %other, align 8, !tbaa !59
  %1 = bitcast %struct.asn1_string_st* %call6 to i8*
  tail call void @ASN1_TYPE_set(%struct.asn1_type_st* noundef %0, i32 noundef 4, i8* noundef nonnull %1) #9
  %call12 = tail call i32 @PKCS7_set_content(%struct.pkcs7_st* noundef %p7, %struct.pkcs7_st* noundef nonnull %call) #9
  %tobool.not = icmp eq i32 %call12, 0
  br i1 %tobool.not, label %err, label %cleanup

err:                                              ; preds = %if.end9, %if.end4, %if.end, %entry
  tail call void @ASN1_OCTET_STRING_free(%struct.asn1_string_st* noundef null) #9
  tail call void @PKCS7_free(%struct.pkcs7_st* noundef %call) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %err
  %retval.0 = phi i32 [ 0, %err ], [ 1, %if.end9 ]
  ret i32 %retval.0
}

declare %struct.bio_st* @PKCS7_dataInit(%struct.pkcs7_st* noundef, %struct.bio_st* noundef) local_unnamed_addr #2

declare i32 @i2d_TS_TST_INFO_bio(%struct.bio_st* noundef, %struct.TS_tst_info_st* noundef) local_unnamed_addr #2

declare i32 @PKCS7_dataFinal(%struct.pkcs7_st* noundef, %struct.bio_st* noundef) local_unnamed_addr #2

declare void @TS_RESP_set_tst_info(%struct.TS_resp_st* noundef, %struct.pkcs7_st* noundef, %struct.TS_tst_info_st* noundef) local_unnamed_addr #2

declare void @EVP_MD_free(%struct.evp_md_st* noundef) local_unnamed_addr #2

declare void @BIO_free_all(%struct.bio_st* noundef) local_unnamed_addr #2

declare void @ESS_SIGNING_CERT_V2_free(%struct.ESS_signing_cert_v2_st* noundef) local_unnamed_addr #2

declare void @ESS_SIGNING_CERT_free(%struct.ESS_signing_cert* noundef) local_unnamed_addr #2

declare void @PKCS7_free(%struct.pkcs7_st* noundef) local_unnamed_addr #2

declare i32 @i2d_ESS_SIGNING_CERT(%struct.ESS_signing_cert* noundef, i8** noundef) local_unnamed_addr #2

declare i8* @CRYPTO_malloc(i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare %struct.asn1_string_st* @ASN1_STRING_new() local_unnamed_addr #2

declare void @ASN1_STRING_free(%struct.asn1_string_st* noundef) local_unnamed_addr #2

declare i32 @i2d_ESS_SIGNING_CERT_V2(%struct.ESS_signing_cert_v2_st* noundef, i8** noundef) local_unnamed_addr #2

declare %struct.pkcs7_st* @PKCS7_new() local_unnamed_addr #2

declare %struct.asn1_type_st* @ASN1_TYPE_new() local_unnamed_addr #2

declare %struct.asn1_string_st* @ASN1_OCTET_STRING_new() local_unnamed_addr #2

declare void @ASN1_TYPE_set(%struct.asn1_type_st* noundef, i32 noundef, i8* noundef) local_unnamed_addr #2

declare i32 @PKCS7_set_content(%struct.pkcs7_st* noundef, %struct.pkcs7_st* noundef) local_unnamed_addr #2

declare void @ASN1_OCTET_STRING_free(%struct.asn1_string_st* noundef) local_unnamed_addr #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nobuiltin nounwind "no-builtins" }
attributes #10 = { nobuiltin "no-builtins" }
attributes #11 = { nounwind }
attributes #12 = { nobuiltin nounwind readonly willreturn "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{!"clang version 14.0.0"}
!4 = !{!5, !6, i64 176}
!5 = !{!"TS_resp_ctx", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !6, i64 40, !6, i64 48, !6, i64 56, !6, i64 64, !6, i64 72, !6, i64 80, !9, i64 88, !9, i64 92, !6, i64 96, !6, i64 104, !6, i64 112, !6, i64 120, !6, i64 128, !6, i64 136, !6, i64 144, !6, i64 152, !6, i64 160, !6, i64 168, !6, i64 176}
!6 = !{!"any pointer", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!"int", !7, i64 0}
!10 = !{!5, !6, i64 168}
!11 = !{!5, !6, i64 96}
!12 = !{!5, !6, i64 112}
!13 = !{!5, !6, i64 128}
!14 = !{!15, !16, i64 0}
!15 = !{!"timeval", !16, i64 0, !16, i64 8}
!16 = !{!"long", !7, i64 0}
!17 = !{!16, !16, i64 0}
!18 = !{!15, !16, i64 8}
!19 = !{!5, !6, i64 0}
!20 = !{!5, !6, i64 8}
!21 = !{!5, !6, i64 32}
!22 = !{!5, !6, i64 40}
!23 = !{!5, !6, i64 48}
!24 = !{!5, !6, i64 56}
!25 = !{!5, !6, i64 64}
!26 = !{!5, !6, i64 72}
!27 = !{!5, !6, i64 80}
!28 = !{!5, !6, i64 16}
!29 = !{!5, !9, i64 92}
!30 = !{!5, !6, i64 104}
!31 = !{!5, !6, i64 120}
!32 = !{!5, !6, i64 136}
!33 = !{!34, !6, i64 0}
!34 = !{!"TS_status_info_st", !6, i64 0, !6, i64 8, !6, i64 16}
!35 = !{!34, !6, i64 8}
!36 = !{!5, !6, i64 152}
!37 = !{!38, !6, i64 0}
!38 = !{!"TS_resp_st", !6, i64 0, !6, i64 8, !6, i64 16}
!39 = !{!34, !6, i64 16}
!40 = !{!5, !6, i64 144}
!41 = !{!5, !6, i64 160}
!42 = !{!5, !9, i64 88}
!43 = !{!44, !6, i64 8}
!44 = !{!"TS_req_st", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !9, i64 32, !6, i64 40}
!45 = !{!46, !6, i64 0}
!46 = !{!"TS_msg_imprint_st", !6, i64 0, !6, i64 8}
!47 = !{!48, !6, i64 0}
!48 = !{!"X509_algor_st", !6, i64 0, !6, i64 8}
!49 = !{!48, !6, i64 8}
!50 = !{!46, !6, i64 8}
!51 = !{!52, !9, i64 0}
!52 = !{!"asn1_string_st", !9, i64 0, !9, i64 4, !6, i64 8, !16, i64 16}
!53 = !{!44, !6, i64 16}
!54 = distinct !{!54, !55}
!55 = !{!"llvm.loop.mustprogress"}
!56 = !{!44, !6, i64 24}
!57 = !{!58, !9, i64 0}
!58 = !{!"GENERAL_NAME_st", !9, i64 0, !7, i64 8}
!59 = !{!7, !7, i64 0}
!60 = !{!44, !6, i64 40}
!61 = distinct !{!61, !55}
!62 = !{!63, !6, i64 0}
!63 = !{!"pkcs7_signed_st", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !6, i64 40}
!64 = !{!44, !9, i64 32}
!65 = distinct !{!65, !55}
!66 = !{!5, !6, i64 24}
!67 = !{!68, !9, i64 20}
!68 = !{!"tm", !9, i64 0, !9, i64 4, !9, i64 8, !9, i64 12, !9, i64 16, !9, i64 20, !9, i64 24, !9, i64 28, !9, i64 32, !16, i64 40, !6, i64 48}
!69 = !{!68, !9, i64 16}
!70 = !{!68, !9, i64 12}
!71 = !{!68, !9, i64 8}
!72 = !{!68, !9, i64 4}
!73 = !{!68, !9, i64 0}
!74 = !{!6, !6, i64 0}
!75 = !{!76, !6, i64 24}
!76 = !{!"pkcs7_st", !6, i64 0, !16, i64 8, !9, i64 16, !9, i64 20, !6, i64 24, !7, i64 32, !77, i64 40}
!77 = !{!"PKCS7_CTX_st", !6, i64 0, !6, i64 8}
