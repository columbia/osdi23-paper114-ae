; ModuleID = 'crypto/ts/ts_rsp_print.c'
source_filename = "crypto/ts/ts_rsp_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bio_st = type opaque
%struct.TS_resp_st = type { %struct.TS_status_info_st*, %struct.pkcs7_st*, %struct.TS_tst_info_st* }
%struct.TS_status_info_st = type { %struct.asn1_string_st*, %struct.stack_st_ASN1_UTF8STRING*, %struct.asn1_string_st* }
%struct.stack_st_ASN1_UTF8STRING = type opaque
%struct.asn1_string_st = type { i32, i32, i8*, i64 }
%struct.pkcs7_st = type { i8*, i64, i32, i32, %struct.asn1_object_st*, %union.anon, %struct.PKCS7_CTX_st }
%struct.asn1_object_st = type opaque
%union.anon = type { i8* }
%struct.PKCS7_CTX_st = type { %struct.ossl_lib_ctx_st*, i8* }
%struct.ossl_lib_ctx_st = type opaque
%struct.TS_tst_info_st = type { %struct.asn1_string_st*, %struct.asn1_object_st*, %struct.TS_msg_imprint_st*, %struct.asn1_string_st*, %struct.asn1_string_st*, %struct.TS_accuracy_st*, i32, %struct.asn1_string_st*, %struct.GENERAL_NAME_st*, %struct.stack_st_X509_EXTENSION* }
%struct.TS_msg_imprint_st = type { %struct.X509_algor_st*, %struct.asn1_string_st* }
%struct.X509_algor_st = type { %struct.asn1_object_st*, %struct.asn1_type_st* }
%struct.asn1_type_st = type { i32, %union.anon.0 }
%union.anon.0 = type { i8* }
%struct.TS_accuracy_st = type { %struct.asn1_string_st*, %struct.asn1_string_st*, %struct.asn1_string_st* }
%struct.GENERAL_NAME_st = type { i32, %union.anon.1 }
%union.anon.1 = type { i8* }
%struct.stack_st_X509_EXTENSION = type opaque
%struct.stack_st = type opaque
%struct.stack_st_CONF_VALUE = type opaque
%struct.v3_ext_method = type { i32, i32, %struct.ASN1_ITEM_st* ()*, i8* ()*, void (i8*)*, i8* (i8*, i8**, i64)*, i32 (i8*, i8**)*, i8* (%struct.v3_ext_method*, i8*)*, i8* (%struct.v3_ext_method*, %struct.v3_ext_ctx*, i8*)*, %struct.stack_st_CONF_VALUE* (%struct.v3_ext_method*, i8*, %struct.stack_st_CONF_VALUE*)*, i8* (%struct.v3_ext_method*, %struct.v3_ext_ctx*, %struct.stack_st_CONF_VALUE*)*, i32 (%struct.v3_ext_method*, i8*, %struct.bio_st*, i32)*, i8* (%struct.v3_ext_method*, %struct.v3_ext_ctx*, i8*)*, i8* }
%struct.ASN1_ITEM_st = type opaque
%struct.v3_ext_ctx = type { i32, %struct.x509_st*, %struct.x509_st*, %struct.X509_req_st*, %struct.X509_crl_st*, %struct.X509V3_CONF_METHOD_st*, i8*, %struct.evp_pkey_st* }
%struct.x509_st = type opaque
%struct.X509_req_st = type opaque
%struct.X509_crl_st = type opaque
%struct.X509V3_CONF_METHOD_st = type { i8* (i8*, i8*, i8*)*, %struct.stack_st_CONF_VALUE* (i8*, i8*)*, void (i8*, i8*)*, void (i8*, %struct.stack_st_CONF_VALUE*)* }
%struct.evp_pkey_st = type opaque
%struct.CONF_VALUE = type { i8*, i8*, i8* }

@.str = private unnamed_addr constant [14 x i8] c"Status info:\0A\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"\0ATST info:\0A\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"Not included.\0A\00", align 1
@reltable.TS_STATUS_INFO_print_bio = internal unnamed_addr constant [6 x i32] [i32 trunc (i64 sub (i64 ptrtoint ([9 x i8]* @.str.3 to i64), i64 ptrtoint ([6 x i32]* @reltable.TS_STATUS_INFO_print_bio to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint ([28 x i8]* @.str.4 to i64), i64 ptrtoint ([6 x i32]* @reltable.TS_STATUS_INFO_print_bio to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint ([10 x i8]* @.str.5 to i64), i64 ptrtoint ([6 x i32]* @reltable.TS_STATUS_INFO_print_bio to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint ([9 x i8]* @.str.6 to i64), i64 ptrtoint ([6 x i32]* @reltable.TS_STATUS_INFO_print_bio to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint ([20 x i8]* @.str.7 to i64), i64 ptrtoint ([6 x i32]* @reltable.TS_STATUS_INFO_print_bio to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint ([9 x i8]* @.str.8 to i64), i64 ptrtoint ([6 x i32]* @reltable.TS_STATUS_INFO_print_bio to i64)) to i32)], align 4
@.str.3 = private unnamed_addr constant [9 x i8] c"Granted.\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"Granted with modifications.\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"Rejected.\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"Waiting.\00", align 1
@.str.7 = private unnamed_addr constant [20 x i8] c"Revocation warning.\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"Revoked.\00", align 1
@.str.9 = private unnamed_addr constant [49 x i8] c"unrecognized or unsupported algorithm identifier\00", align 1
@.str.10 = private unnamed_addr constant [39 x i8] c"transaction not permitted or supported\00", align 1
@.str.11 = private unnamed_addr constant [40 x i8] c"the data submitted has the wrong format\00", align 1
@.str.12 = private unnamed_addr constant [39 x i8] c"the TSA's time source is not available\00", align 1
@.str.13 = private unnamed_addr constant [53 x i8] c"the requested TSA policy is not supported by the TSA\00", align 1
@.str.14 = private unnamed_addr constant [52 x i8] c"the requested extension is not supported by the TSA\00", align 1
@.str.15 = private unnamed_addr constant [81 x i8] c"the additional information requested could not be understood or is not available\00", align 1
@.str.16 = private unnamed_addr constant [52 x i8] c"the request cannot be handled due to system failure\00", align 1
@.str.17 = private unnamed_addr constant [9 x i8] c"Status: \00", align 1
@.str.18 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.19 = private unnamed_addr constant [15 x i8] c"out of bounds\0A\00", align 1
@.str.20 = private unnamed_addr constant [21 x i8] c"Status description: \00", align 1
@.str.21 = private unnamed_addr constant [2 x i8] c"\09\00", align 1
@.str.22 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.23 = private unnamed_addr constant [13 x i8] c"unspecified\0A\00", align 1
@.str.24 = private unnamed_addr constant [15 x i8] c"Failure info: \00", align 1
@.str.25 = private unnamed_addr constant [12 x i8] c"unspecified\00", align 1
@.str.26 = private unnamed_addr constant [13 x i8] c"Version: %d\0A\00", align 1
@.str.27 = private unnamed_addr constant [13 x i8] c"Policy OID: \00", align 1
@.str.28 = private unnamed_addr constant [16 x i8] c"Serial number: \00", align 1
@.str.29 = private unnamed_addr constant [13 x i8] c"Time stamp: \00", align 1
@.str.30 = private unnamed_addr constant [11 x i8] c"Accuracy: \00", align 1
@.str.31 = private unnamed_addr constant [14 x i8] c"Ordering: %s\0A\00", align 1
@.str.32 = private unnamed_addr constant [4 x i8] c"yes\00", align 1
@.str.33 = private unnamed_addr constant [3 x i8] c"no\00", align 1
@.str.34 = private unnamed_addr constant [8 x i8] c"Nonce: \00", align 1
@.str.35 = private unnamed_addr constant [6 x i8] c"TSA: \00", align 1
@.str.36 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.37 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.38 = private unnamed_addr constant [11 x i8] c" seconds, \00", align 1
@.str.39 = private unnamed_addr constant [10 x i8] c" millis, \00", align 1
@.str.40 = private unnamed_addr constant [8 x i8] c" micros\00", align 1

; Function Attrs: noinline nounwind uwtable
define i32 @TS_RESP_print_bio(%struct.bio_st* noundef %bio, %struct.TS_resp_st* nocapture noundef readonly %a) local_unnamed_addr #0 {
entry:
  %call = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %bio, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0)) #4
  %status_info = getelementptr inbounds %struct.TS_resp_st, %struct.TS_resp_st* %a, i64 0, i32 0
  %0 = load %struct.TS_status_info_st*, %struct.TS_status_info_st** %status_info, align 8, !tbaa !4
  %call1 = tail call i32 @TS_STATUS_INFO_print_bio(%struct.bio_st* noundef %bio, %struct.TS_status_info_st* noundef %0) #5
  %call2 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %bio, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0)) #4
  %tst_info = getelementptr inbounds %struct.TS_resp_st, %struct.TS_resp_st* %a, i64 0, i32 2
  %1 = load %struct.TS_tst_info_st*, %struct.TS_tst_info_st** %tst_info, align 8, !tbaa !9
  %cmp.not = icmp eq %struct.TS_tst_info_st* %1, null
  br i1 %cmp.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %call4 = tail call i32 @TS_TST_INFO_print_bio(%struct.bio_st* noundef %bio, %struct.TS_tst_info_st* noundef nonnull %1) #5
  br label %if.end

if.else:                                          ; preds = %entry
  %call5 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %bio, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0)) #4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret i32 1
}

declare i32 @BIO_printf(%struct.bio_st* noundef, i8* noundef, ...) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define i32 @TS_STATUS_INFO_print_bio(%struct.bio_st* noundef %bio, %struct.TS_status_info_st* nocapture noundef readonly %a) local_unnamed_addr #0 {
entry:
  %call = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %bio, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.17, i64 0, i64 0)) #4
  %status1 = getelementptr inbounds %struct.TS_status_info_st, %struct.TS_status_info_st* %a, i64 0, i32 0
  %0 = load %struct.asn1_string_st*, %struct.asn1_string_st** %status1, align 8, !tbaa !10
  %call2 = tail call i64 @ASN1_INTEGER_get(%struct.asn1_string_st* noundef %0) #4
  %1 = icmp ult i64 %call2, 6
  br i1 %1, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %reltable.shift = shl i64 %call2, 2
  %reltable.intrinsic = call i8* @llvm.load.relative.i64(i8* bitcast ([6 x i32]* @reltable.TS_STATUS_INFO_print_bio to i8*), i64 %reltable.shift)
  %call4 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %bio, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.18, i64 0, i64 0), i8* noundef %reltable.intrinsic) #4
  br label %if.end

if.else:                                          ; preds = %entry
  %call5 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %bio, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.19, i64 0, i64 0)) #4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %call6 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %bio, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.20, i64 0, i64 0)) #4
  %text = getelementptr inbounds %struct.TS_status_info_st, %struct.TS_status_info_st* %a, i64 0, i32 1
  %2 = load %struct.stack_st_ASN1_UTF8STRING*, %struct.stack_st_ASN1_UTF8STRING** %text, align 8, !tbaa !12
  %call758 = tail call fastcc %struct.stack_st* @ossl_check_const_ASN1_UTF8STRING_sk_type(%struct.stack_st_ASN1_UTF8STRING* noundef %2) #5
  %call859 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call758) #4
  %cmp960 = icmp sgt i32 %call859, 0
  br i1 %cmp960, label %if.end13.peel, label %if.then20

if.end13.peel:                                    ; preds = %if.end
  %.pre = load %struct.stack_st_ASN1_UTF8STRING*, %struct.stack_st_ASN1_UTF8STRING** %text, align 8, !tbaa !12
  %call15.peel = tail call fastcc %struct.stack_st* @ossl_check_const_ASN1_UTF8STRING_sk_type(%struct.stack_st_ASN1_UTF8STRING* noundef %.pre) #5
  %call16.peel = tail call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call15.peel, i32 noundef 0) #4
  %3 = bitcast i8* %call16.peel to %struct.asn1_string_st*
  %call17.peel = tail call i32 @ASN1_STRING_print_ex(%struct.bio_st* noundef %bio, %struct.asn1_string_st* noundef %3, i64 noundef 0) #4
  %call18.peel = tail call i32 @BIO_puts(%struct.bio_st* noundef %bio, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.22, i64 0, i64 0)) #4
  %4 = load %struct.stack_st_ASN1_UTF8STRING*, %struct.stack_st_ASN1_UTF8STRING** %text, align 8, !tbaa !12
  %call7.peel = tail call fastcc %struct.stack_st* @ossl_check_const_ASN1_UTF8STRING_sk_type(%struct.stack_st_ASN1_UTF8STRING* noundef %4) #5
  %call8.peel = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call7.peel) #4
  %cmp9.peel = icmp sgt i32 %call8.peel, 1
  br i1 %cmp9.peel, label %if.end13, label %if.end22

if.end13:                                         ; preds = %if.end13.peel, %if.end13
  %i.061 = phi i32 [ %inc, %if.end13 ], [ 1, %if.end13.peel ]
  %call12 = tail call i32 @BIO_puts(%struct.bio_st* noundef %bio, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.21, i64 0, i64 0)) #4
  %5 = load %struct.stack_st_ASN1_UTF8STRING*, %struct.stack_st_ASN1_UTF8STRING** %text, align 8, !tbaa !12
  %call15 = tail call fastcc %struct.stack_st* @ossl_check_const_ASN1_UTF8STRING_sk_type(%struct.stack_st_ASN1_UTF8STRING* noundef %5) #5
  %call16 = tail call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call15, i32 noundef %i.061) #4
  %6 = bitcast i8* %call16 to %struct.asn1_string_st*
  %call17 = tail call i32 @ASN1_STRING_print_ex(%struct.bio_st* noundef %bio, %struct.asn1_string_st* noundef %6, i64 noundef 0) #4
  %call18 = tail call i32 @BIO_puts(%struct.bio_st* noundef %bio, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.22, i64 0, i64 0)) #4
  %inc = add nuw nsw i32 %i.061, 1
  %7 = load %struct.stack_st_ASN1_UTF8STRING*, %struct.stack_st_ASN1_UTF8STRING** %text, align 8, !tbaa !12
  %call7 = tail call fastcc %struct.stack_st* @ossl_check_const_ASN1_UTF8STRING_sk_type(%struct.stack_st_ASN1_UTF8STRING* noundef %7) #5
  %call8 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call7) #4
  %cmp9 = icmp slt i32 %inc, %call8
  br i1 %cmp9, label %if.end13, label %for.end, !llvm.loop !13

for.end:                                          ; preds = %if.end13
  br i1 %cmp960, label %if.end22, label %if.then20

if.then20:                                        ; preds = %if.end, %for.end
  %call21 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %bio, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.23, i64 0, i64 0)) #4
  br label %if.end22

if.end22:                                         ; preds = %if.end13.peel, %if.then20, %for.end
  %call23 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %bio, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.24, i64 0, i64 0)) #4
  %failure_info = getelementptr inbounds %struct.TS_status_info_st, %struct.TS_status_info_st* %a, i64 0, i32 2
  %8 = load %struct.asn1_string_st*, %struct.asn1_string_st** %failure_info, align 8, !tbaa !16
  %cmp24.not = icmp eq %struct.asn1_string_st* %8, null
  br i1 %cmp24.not, label %if.then30, label %if.then25

if.then25:                                        ; preds = %if.end22
  %call27 = tail call fastcc i32 @ts_status_map_print(%struct.bio_st* noundef %bio, %struct.asn1_string_st* noundef nonnull %8) #5
  %phi.cmp = icmp eq i32 %call27, 0
  br i1 %phi.cmp, label %if.then30, label %if.end32

if.then30:                                        ; preds = %if.end22, %if.then25
  %call31 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %bio, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.25, i64 0, i64 0)) #4
  br label %if.end32

if.end32:                                         ; preds = %if.then30, %if.then25
  %call33 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %bio, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.22, i64 0, i64 0)) #4
  ret i32 1
}

; Function Attrs: noinline nounwind uwtable
define i32 @TS_TST_INFO_print_bio(%struct.bio_st* noundef %bio, %struct.TS_tst_info_st* noundef readonly %a) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.TS_tst_info_st* %a, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %version = getelementptr inbounds %struct.TS_tst_info_st, %struct.TS_tst_info_st* %a, i64 0, i32 0
  %0 = load %struct.asn1_string_st*, %struct.asn1_string_st** %version, align 8, !tbaa !17
  %call = tail call i64 @ASN1_INTEGER_get(%struct.asn1_string_st* noundef %0) #4
  %conv = trunc i64 %call to i32
  %call1 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %bio, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.26, i64 0, i64 0), i32 noundef %conv) #4
  %call2 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %bio, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.27, i64 0, i64 0)) #4
  %policy_id = getelementptr inbounds %struct.TS_tst_info_st, %struct.TS_tst_info_st* %a, i64 0, i32 1
  %1 = load %struct.asn1_object_st*, %struct.asn1_object_st** %policy_id, align 8, !tbaa !20
  %call3 = tail call i32 @TS_OBJ_print_bio(%struct.bio_st* noundef %bio, %struct.asn1_object_st* noundef %1) #4
  %msg_imprint = getelementptr inbounds %struct.TS_tst_info_st, %struct.TS_tst_info_st* %a, i64 0, i32 2
  %2 = load %struct.TS_msg_imprint_st*, %struct.TS_msg_imprint_st** %msg_imprint, align 8, !tbaa !21
  %call4 = tail call i32 @TS_MSG_IMPRINT_print_bio(%struct.bio_st* noundef %bio, %struct.TS_msg_imprint_st* noundef %2) #4
  %call5 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %bio, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.28, i64 0, i64 0)) #4
  %serial = getelementptr inbounds %struct.TS_tst_info_st, %struct.TS_tst_info_st* %a, i64 0, i32 3
  %3 = load %struct.asn1_string_st*, %struct.asn1_string_st** %serial, align 8, !tbaa !22
  %cmp6 = icmp eq %struct.asn1_string_st* %3, null
  br i1 %cmp6, label %if.then8, label %if.else

if.then8:                                         ; preds = %if.end
  %call9 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %bio, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.25, i64 0, i64 0)) #4
  br label %if.end12

if.else:                                          ; preds = %if.end
  %call11 = tail call i32 @TS_ASN1_INTEGER_print_bio(%struct.bio_st* noundef %bio, %struct.asn1_string_st* noundef nonnull %3) #4
  br label %if.end12

if.end12:                                         ; preds = %if.else, %if.then8
  %call13 = tail call i32 @BIO_write(%struct.bio_st* noundef %bio, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.22, i64 0, i64 0), i32 noundef 1) #4
  %call14 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %bio, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.29, i64 0, i64 0)) #4
  %time = getelementptr inbounds %struct.TS_tst_info_st, %struct.TS_tst_info_st* %a, i64 0, i32 4
  %4 = load %struct.asn1_string_st*, %struct.asn1_string_st** %time, align 8, !tbaa !23
  %call15 = tail call i32 @ASN1_GENERALIZEDTIME_print(%struct.bio_st* noundef %bio, %struct.asn1_string_st* noundef %4) #4
  %call16 = tail call i32 @BIO_write(%struct.bio_st* noundef %bio, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.22, i64 0, i64 0), i32 noundef 1) #4
  %call17 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %bio, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.30, i64 0, i64 0)) #4
  %accuracy = getelementptr inbounds %struct.TS_tst_info_st, %struct.TS_tst_info_st* %a, i64 0, i32 5
  %5 = load %struct.TS_accuracy_st*, %struct.TS_accuracy_st** %accuracy, align 8, !tbaa !24
  %cmp18 = icmp eq %struct.TS_accuracy_st* %5, null
  br i1 %cmp18, label %if.then20, label %if.else22

if.then20:                                        ; preds = %if.end12
  %call21 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %bio, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.25, i64 0, i64 0)) #4
  br label %if.end25

if.else22:                                        ; preds = %if.end12
  tail call fastcc void @ts_ACCURACY_print_bio(%struct.bio_st* noundef %bio, %struct.TS_accuracy_st* noundef nonnull %5) #5
  br label %if.end25

if.end25:                                         ; preds = %if.else22, %if.then20
  %call26 = tail call i32 @BIO_write(%struct.bio_st* noundef %bio, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.22, i64 0, i64 0), i32 noundef 1) #4
  %ordering = getelementptr inbounds %struct.TS_tst_info_st, %struct.TS_tst_info_st* %a, i64 0, i32 6
  %6 = load i32, i32* %ordering, align 8, !tbaa !25
  %tobool.not = icmp eq i32 %6, 0
  %cond = select i1 %tobool.not, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.33, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.32, i64 0, i64 0)
  %call27 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %bio, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.31, i64 0, i64 0), i8* noundef %cond) #4
  %call28 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %bio, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.34, i64 0, i64 0)) #4
  %nonce = getelementptr inbounds %struct.TS_tst_info_st, %struct.TS_tst_info_st* %a, i64 0, i32 7
  %7 = load %struct.asn1_string_st*, %struct.asn1_string_st** %nonce, align 8, !tbaa !26
  %cmp29 = icmp eq %struct.asn1_string_st* %7, null
  br i1 %cmp29, label %if.then31, label %if.else33

if.then31:                                        ; preds = %if.end25
  %call32 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %bio, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.25, i64 0, i64 0)) #4
  br label %if.end36

if.else33:                                        ; preds = %if.end25
  %call35 = tail call i32 @TS_ASN1_INTEGER_print_bio(%struct.bio_st* noundef %bio, %struct.asn1_string_st* noundef nonnull %7) #4
  br label %if.end36

if.end36:                                         ; preds = %if.else33, %if.then31
  %call37 = tail call i32 @BIO_write(%struct.bio_st* noundef %bio, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.22, i64 0, i64 0), i32 noundef 1) #4
  %call38 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %bio, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.35, i64 0, i64 0)) #4
  %tsa = getelementptr inbounds %struct.TS_tst_info_st, %struct.TS_tst_info_st* %a, i64 0, i32 8
  %8 = load %struct.GENERAL_NAME_st*, %struct.GENERAL_NAME_st** %tsa, align 8, !tbaa !27
  %cmp39 = icmp eq %struct.GENERAL_NAME_st* %8, null
  br i1 %cmp39, label %if.then41, label %if.else43

if.then41:                                        ; preds = %if.end36
  %call42 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %bio, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.25, i64 0, i64 0)) #4
  br label %if.end51

if.else43:                                        ; preds = %if.end36
  %call45 = tail call %struct.stack_st_CONF_VALUE* @i2v_GENERAL_NAME(%struct.v3_ext_method* noundef null, %struct.GENERAL_NAME_st* noundef nonnull %8, %struct.stack_st_CONF_VALUE* noundef null) #4
  %tobool46.not = icmp eq %struct.stack_st_CONF_VALUE* %call45, null
  br i1 %tobool46.not, label %if.end48, label %if.then47

if.then47:                                        ; preds = %if.else43
  tail call void @X509V3_EXT_val_prn(%struct.bio_st* noundef %bio, %struct.stack_st_CONF_VALUE* noundef nonnull %call45, i32 noundef 0, i32 noundef 0) #4
  br label %if.end48

if.end48:                                         ; preds = %if.then47, %if.else43
  %call49 = tail call fastcc %struct.stack_st* @ossl_check_CONF_VALUE_sk_type(%struct.stack_st_CONF_VALUE* noundef %call45) #5
  tail call void @OPENSSL_sk_pop_free(%struct.stack_st* noundef %call49, void (i8*)* noundef bitcast (void (%struct.CONF_VALUE*)* @X509V3_conf_free to void (i8*)*)) #4
  br label %if.end51

if.end51:                                         ; preds = %if.end48, %if.then41
  %call52 = tail call i32 @BIO_write(%struct.bio_st* noundef %bio, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.22, i64 0, i64 0), i32 noundef 1) #4
  %extensions = getelementptr inbounds %struct.TS_tst_info_st, %struct.TS_tst_info_st* %a, i64 0, i32 9
  %9 = load %struct.stack_st_X509_EXTENSION*, %struct.stack_st_X509_EXTENSION** %extensions, align 8, !tbaa !28
  %call53 = tail call i32 @TS_ext_print_bio(%struct.bio_st* noundef %bio, %struct.stack_st_X509_EXTENSION* noundef %9) #4
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end51
  %retval.0 = phi i32 [ 1, %if.end51 ], [ 0, %entry ]
  ret i32 %retval.0
}

declare i64 @ASN1_INTEGER_get(%struct.asn1_string_st* noundef) local_unnamed_addr #1

declare i32 @OPENSSL_sk_num(%struct.stack_st* noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_const_ASN1_UTF8STRING_sk_type(%struct.stack_st_ASN1_UTF8STRING* noundef readnone %sk) unnamed_addr #2 {
entry:
  %0 = bitcast %struct.stack_st_ASN1_UTF8STRING* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

declare i32 @BIO_puts(%struct.bio_st* noundef, i8* noundef) local_unnamed_addr #1

declare i32 @ASN1_STRING_print_ex(%struct.bio_st* noundef, %struct.asn1_string_st* noundef, i64 noundef) local_unnamed_addr #1

declare i8* @OPENSSL_sk_value(%struct.stack_st* noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @ts_status_map_print(%struct.bio_st* noundef %bio, %struct.asn1_string_st* noundef %v) unnamed_addr #0 {
entry:
  %call = tail call i32 @ASN1_BIT_STRING_get_bit(%struct.asn1_string_st* noundef %v, i32 noundef 0) #4
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %for.inc, label %for.inc.thread

for.inc:                                          ; preds = %entry
  %call.1 = tail call i32 @ASN1_BIT_STRING_get_bit(%struct.asn1_string_st* noundef %v, i32 noundef 2) #4
  %tobool.not.1 = icmp eq i32 %call.1, 0
  br i1 %tobool.not.1, label %for.inc.1, label %if.end.1

for.inc.thread:                                   ; preds = %entry
  %call5 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %bio, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.37, i64 0, i64 0), i8* noundef getelementptr inbounds ([49 x i8], [49 x i8]* @.str.9, i64 0, i64 0)) #4
  %call.14 = tail call i32 @ASN1_BIT_STRING_get_bit(%struct.asn1_string_st* noundef %v, i32 noundef 2) #4
  %tobool.not.15 = icmp eq i32 %call.14, 0
  br i1 %tobool.not.15, label %for.inc.1, label %if.then3.1

if.then3.1:                                       ; preds = %for.inc.thread
  %call4.1 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %bio, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.36, i64 0, i64 0)) #4
  br label %if.end.1

if.end.1:                                         ; preds = %for.inc, %if.then3.1
  %inc.110 = phi i32 [ 2, %if.then3.1 ], [ 1, %for.inc ]
  %call5.1 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %bio, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.37, i64 0, i64 0), i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.10, i64 0, i64 0)) #4
  br label %for.inc.1

for.inc.1:                                        ; preds = %for.inc.thread, %if.end.1, %for.inc
  %lines.1.1 = phi i32 [ %inc.110, %if.end.1 ], [ 0, %for.inc ], [ 1, %for.inc.thread ]
  %call.2 = tail call i32 @ASN1_BIT_STRING_get_bit(%struct.asn1_string_st* noundef %v, i32 noundef 5) #4
  %tobool.not.2 = icmp eq i32 %call.2, 0
  br i1 %tobool.not.2, label %for.inc.2, label %if.then.2

if.then.2:                                        ; preds = %for.inc.1
  %inc.2 = add nuw nsw i32 %lines.1.1, 1
  %cmp2.2.not = icmp eq i32 %lines.1.1, 0
  br i1 %cmp2.2.not, label %if.end.2, label %if.then3.2

if.then3.2:                                       ; preds = %if.then.2
  %call4.2 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %bio, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.36, i64 0, i64 0)) #4
  br label %if.end.2

if.end.2:                                         ; preds = %if.then3.2, %if.then.2
  %call5.2 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %bio, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.37, i64 0, i64 0), i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.11, i64 0, i64 0)) #4
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.end.2, %for.inc.1
  %lines.1.2 = phi i32 [ %inc.2, %if.end.2 ], [ %lines.1.1, %for.inc.1 ]
  %call.3 = tail call i32 @ASN1_BIT_STRING_get_bit(%struct.asn1_string_st* noundef %v, i32 noundef 14) #4
  %tobool.not.3 = icmp eq i32 %call.3, 0
  br i1 %tobool.not.3, label %for.inc.3, label %if.then.3

if.then.3:                                        ; preds = %for.inc.2
  %inc.3 = add nuw nsw i32 %lines.1.2, 1
  %cmp2.3.not = icmp eq i32 %lines.1.2, 0
  br i1 %cmp2.3.not, label %if.end.3, label %if.then3.3

if.then3.3:                                       ; preds = %if.then.3
  %call4.3 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %bio, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.36, i64 0, i64 0)) #4
  br label %if.end.3

if.end.3:                                         ; preds = %if.then3.3, %if.then.3
  %call5.3 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %bio, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.37, i64 0, i64 0), i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.12, i64 0, i64 0)) #4
  br label %for.inc.3

for.inc.3:                                        ; preds = %if.end.3, %for.inc.2
  %lines.1.3 = phi i32 [ %inc.3, %if.end.3 ], [ %lines.1.2, %for.inc.2 ]
  %call.4 = tail call i32 @ASN1_BIT_STRING_get_bit(%struct.asn1_string_st* noundef %v, i32 noundef 15) #4
  %tobool.not.4 = icmp eq i32 %call.4, 0
  br i1 %tobool.not.4, label %for.inc.4, label %if.then.4

if.then.4:                                        ; preds = %for.inc.3
  %inc.4 = add nuw nsw i32 %lines.1.3, 1
  %cmp2.4.not = icmp eq i32 %lines.1.3, 0
  br i1 %cmp2.4.not, label %if.end.4, label %if.then3.4

if.then3.4:                                       ; preds = %if.then.4
  %call4.4 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %bio, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.36, i64 0, i64 0)) #4
  br label %if.end.4

if.end.4:                                         ; preds = %if.then3.4, %if.then.4
  %call5.4 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %bio, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.37, i64 0, i64 0), i8* noundef getelementptr inbounds ([53 x i8], [53 x i8]* @.str.13, i64 0, i64 0)) #4
  br label %for.inc.4

for.inc.4:                                        ; preds = %if.end.4, %for.inc.3
  %lines.1.4 = phi i32 [ %inc.4, %if.end.4 ], [ %lines.1.3, %for.inc.3 ]
  %call.5 = tail call i32 @ASN1_BIT_STRING_get_bit(%struct.asn1_string_st* noundef %v, i32 noundef 16) #4
  %tobool.not.5 = icmp eq i32 %call.5, 0
  br i1 %tobool.not.5, label %for.inc.5, label %if.then.5

if.then.5:                                        ; preds = %for.inc.4
  %inc.5 = add nuw nsw i32 %lines.1.4, 1
  %cmp2.5.not = icmp eq i32 %lines.1.4, 0
  br i1 %cmp2.5.not, label %if.end.5, label %if.then3.5

if.then3.5:                                       ; preds = %if.then.5
  %call4.5 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %bio, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.36, i64 0, i64 0)) #4
  br label %if.end.5

if.end.5:                                         ; preds = %if.then3.5, %if.then.5
  %call5.5 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %bio, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.37, i64 0, i64 0), i8* noundef getelementptr inbounds ([52 x i8], [52 x i8]* @.str.14, i64 0, i64 0)) #4
  br label %for.inc.5

for.inc.5:                                        ; preds = %if.end.5, %for.inc.4
  %lines.1.5 = phi i32 [ %inc.5, %if.end.5 ], [ %lines.1.4, %for.inc.4 ]
  %call.6 = tail call i32 @ASN1_BIT_STRING_get_bit(%struct.asn1_string_st* noundef %v, i32 noundef 17) #4
  %tobool.not.6 = icmp eq i32 %call.6, 0
  br i1 %tobool.not.6, label %for.inc.6, label %if.then.6

if.then.6:                                        ; preds = %for.inc.5
  %inc.6 = add nuw nsw i32 %lines.1.5, 1
  %cmp2.6.not = icmp eq i32 %lines.1.5, 0
  br i1 %cmp2.6.not, label %if.end.6, label %if.then3.6

if.then3.6:                                       ; preds = %if.then.6
  %call4.6 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %bio, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.36, i64 0, i64 0)) #4
  br label %if.end.6

if.end.6:                                         ; preds = %if.then3.6, %if.then.6
  %call5.6 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %bio, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.37, i64 0, i64 0), i8* noundef getelementptr inbounds ([81 x i8], [81 x i8]* @.str.15, i64 0, i64 0)) #4
  br label %for.inc.6

for.inc.6:                                        ; preds = %if.end.6, %for.inc.5
  %lines.1.6 = phi i32 [ %inc.6, %if.end.6 ], [ %lines.1.5, %for.inc.5 ]
  %call.7 = tail call i32 @ASN1_BIT_STRING_get_bit(%struct.asn1_string_st* noundef %v, i32 noundef 25) #4
  %tobool.not.7 = icmp eq i32 %call.7, 0
  br i1 %tobool.not.7, label %for.inc.7, label %if.then.7

if.then.7:                                        ; preds = %for.inc.6
  %inc.7 = add nuw nsw i32 %lines.1.6, 1
  %cmp2.7.not = icmp eq i32 %lines.1.6, 0
  br i1 %cmp2.7.not, label %if.end.7, label %if.then3.7

if.then3.7:                                       ; preds = %if.then.7
  %call4.7 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %bio, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.36, i64 0, i64 0)) #4
  br label %if.end.7

if.end.7:                                         ; preds = %if.then3.7, %if.then.7
  %call5.7 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %bio, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.37, i64 0, i64 0), i8* noundef getelementptr inbounds ([52 x i8], [52 x i8]* @.str.16, i64 0, i64 0)) #4
  br label %for.inc.7

for.inc.7:                                        ; preds = %if.end.7, %for.inc.6
  %lines.1.7 = phi i32 [ %inc.7, %if.end.7 ], [ %lines.1.6, %for.inc.6 ]
  ret i32 %lines.1.7
}

declare i32 @TS_OBJ_print_bio(%struct.bio_st* noundef, %struct.asn1_object_st* noundef) local_unnamed_addr #1

declare i32 @TS_MSG_IMPRINT_print_bio(%struct.bio_st* noundef, %struct.TS_msg_imprint_st* noundef) local_unnamed_addr #1

declare i32 @TS_ASN1_INTEGER_print_bio(%struct.bio_st* noundef, %struct.asn1_string_st* noundef) local_unnamed_addr #1

declare i32 @BIO_write(%struct.bio_st* noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

declare i32 @ASN1_GENERALIZEDTIME_print(%struct.bio_st* noundef, %struct.asn1_string_st* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @ts_ACCURACY_print_bio(%struct.bio_st* noundef %bio, %struct.TS_accuracy_st* nocapture noundef readonly %a) unnamed_addr #0 {
entry:
  %seconds = getelementptr inbounds %struct.TS_accuracy_st, %struct.TS_accuracy_st* %a, i64 0, i32 0
  %0 = load %struct.asn1_string_st*, %struct.asn1_string_st** %seconds, align 8, !tbaa !29
  %cmp.not = icmp eq %struct.asn1_string_st* %0, null
  br i1 %cmp.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %call = tail call i32 @TS_ASN1_INTEGER_print_bio(%struct.bio_st* noundef %bio, %struct.asn1_string_st* noundef nonnull %0) #4
  br label %if.end

if.else:                                          ; preds = %entry
  %call2 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %bio, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.25, i64 0, i64 0)) #4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %call3 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %bio, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.38, i64 0, i64 0)) #4
  %millis = getelementptr inbounds %struct.TS_accuracy_st, %struct.TS_accuracy_st* %a, i64 0, i32 1
  %1 = load %struct.asn1_string_st*, %struct.asn1_string_st** %millis, align 8, !tbaa !31
  %cmp4.not = icmp eq %struct.asn1_string_st* %1, null
  br i1 %cmp4.not, label %if.else8, label %if.then5

if.then5:                                         ; preds = %if.end
  %call7 = tail call i32 @TS_ASN1_INTEGER_print_bio(%struct.bio_st* noundef %bio, %struct.asn1_string_st* noundef nonnull %1) #4
  br label %if.end10

if.else8:                                         ; preds = %if.end
  %call9 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %bio, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.25, i64 0, i64 0)) #4
  br label %if.end10

if.end10:                                         ; preds = %if.else8, %if.then5
  %call11 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %bio, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.39, i64 0, i64 0)) #4
  %micros = getelementptr inbounds %struct.TS_accuracy_st, %struct.TS_accuracy_st* %a, i64 0, i32 2
  %2 = load %struct.asn1_string_st*, %struct.asn1_string_st** %micros, align 8, !tbaa !32
  %cmp12.not = icmp eq %struct.asn1_string_st* %2, null
  br i1 %cmp12.not, label %if.else16, label %if.then13

if.then13:                                        ; preds = %if.end10
  %call15 = tail call i32 @TS_ASN1_INTEGER_print_bio(%struct.bio_st* noundef %bio, %struct.asn1_string_st* noundef nonnull %2) #4
  br label %if.end18

if.else16:                                        ; preds = %if.end10
  %call17 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %bio, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.25, i64 0, i64 0)) #4
  br label %if.end18

if.end18:                                         ; preds = %if.else16, %if.then13
  %call19 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %bio, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.40, i64 0, i64 0)) #4
  ret void
}

declare %struct.stack_st_CONF_VALUE* @i2v_GENERAL_NAME(%struct.v3_ext_method* noundef, %struct.GENERAL_NAME_st* noundef, %struct.stack_st_CONF_VALUE* noundef) local_unnamed_addr #1

declare void @X509V3_EXT_val_prn(%struct.bio_st* noundef, %struct.stack_st_CONF_VALUE* noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare void @OPENSSL_sk_pop_free(%struct.stack_st* noundef, void (i8*)* noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_CONF_VALUE_sk_type(%struct.stack_st_CONF_VALUE* noundef readnone %sk) unnamed_addr #2 {
entry:
  %0 = bitcast %struct.stack_st_CONF_VALUE* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

declare void @X509V3_conf_free(%struct.CONF_VALUE* noundef) #1

declare i32 @TS_ext_print_bio(%struct.bio_st* noundef, %struct.stack_st_X509_EXTENSION* noundef) local_unnamed_addr #1

declare i32 @ASN1_BIT_STRING_get_bit(%struct.asn1_string_st* noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nosync nounwind readonly willreturn
declare i8* @llvm.load.relative.i64(i8*, i64) #3

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly nofree nosync nounwind readonly willreturn }
attributes #4 = { nobuiltin nounwind "no-builtins" }
attributes #5 = { nobuiltin "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{!"clang version 14.0.0"}
!4 = !{!5, !6, i64 0}
!5 = !{!"TS_resp_st", !6, i64 0, !6, i64 8, !6, i64 16}
!6 = !{!"any pointer", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!5, !6, i64 16}
!10 = !{!11, !6, i64 0}
!11 = !{!"TS_status_info_st", !6, i64 0, !6, i64 8, !6, i64 16}
!12 = !{!11, !6, i64 8}
!13 = distinct !{!13, !14, !15}
!14 = !{!"llvm.loop.mustprogress"}
!15 = !{!"llvm.loop.peeled.count", i32 1}
!16 = !{!11, !6, i64 16}
!17 = !{!18, !6, i64 0}
!18 = !{!"TS_tst_info_st", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !6, i64 40, !19, i64 48, !6, i64 56, !6, i64 64, !6, i64 72}
!19 = !{!"int", !7, i64 0}
!20 = !{!18, !6, i64 8}
!21 = !{!18, !6, i64 16}
!22 = !{!18, !6, i64 24}
!23 = !{!18, !6, i64 32}
!24 = !{!18, !6, i64 40}
!25 = !{!18, !19, i64 48}
!26 = !{!18, !6, i64 56}
!27 = !{!18, !6, i64 64}
!28 = !{!18, !6, i64 72}
!29 = !{!30, !6, i64 0}
!30 = !{!"TS_accuracy_st", !6, i64 0, !6, i64 8, !6, i64 16}
!31 = !{!30, !6, i64 8}
!32 = !{!30, !6, i64 16}
