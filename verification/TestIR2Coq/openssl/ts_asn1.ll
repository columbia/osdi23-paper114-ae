; ModuleID = 'crypto/ts/ts_asn1.c'
source_filename = "crypto/ts/ts_asn1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ASN1_ITEM_st = type { i8, i64, %struct.ASN1_TEMPLATE_st*, i64, i8*, i64, i8* }
%struct.ASN1_TEMPLATE_st = type { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* }
%struct.ASN1_AUX_st = type { i8*, i32, i32, i32, i32 (i32, %struct.ASN1_VALUE_st**, %struct.ASN1_ITEM_st*, i8*)*, i32, i32 (i32, %struct.ASN1_VALUE_st**, %struct.ASN1_ITEM_st*, i8*)* }
%struct.ASN1_VALUE_st = type opaque
%struct.TS_msg_imprint_st = type { %struct.X509_algor_st*, %struct.asn1_string_st* }
%struct.X509_algor_st = type { %struct.asn1_object_st*, %struct.asn1_type_st* }
%struct.asn1_object_st = type opaque
%struct.asn1_type_st = type { i32, %union.anon }
%union.anon = type { i8* }
%struct.asn1_string_st = type { i32, i32, i8*, i64 }
%struct.bio_st = type opaque
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.TS_req_st = type { %struct.asn1_string_st*, %struct.TS_msg_imprint_st*, %struct.asn1_object_st*, %struct.asn1_string_st*, i32, %struct.stack_st_X509_EXTENSION* }
%struct.stack_st_X509_EXTENSION = type opaque
%struct.TS_accuracy_st = type { %struct.asn1_string_st*, %struct.asn1_string_st*, %struct.asn1_string_st* }
%struct.TS_tst_info_st = type { %struct.asn1_string_st*, %struct.asn1_object_st*, %struct.TS_msg_imprint_st*, %struct.asn1_string_st*, %struct.asn1_string_st*, %struct.TS_accuracy_st*, i32, %struct.asn1_string_st*, %struct.GENERAL_NAME_st*, %struct.stack_st_X509_EXTENSION* }
%struct.GENERAL_NAME_st = type { i32, %union.anon.0 }
%union.anon.0 = type { i8* }
%struct.TS_status_info_st = type { %struct.asn1_string_st*, %struct.stack_st_ASN1_UTF8STRING*, %struct.asn1_string_st* }
%struct.stack_st_ASN1_UTF8STRING = type opaque
%struct.TS_resp_st = type { %struct.TS_status_info_st*, %struct.pkcs7_st*, %struct.TS_tst_info_st* }
%struct.pkcs7_st = type { i8*, i64, i32, i32, %struct.asn1_object_st*, %union.anon.1, %struct.PKCS7_CTX_st }
%union.anon.1 = type { i8* }
%struct.PKCS7_CTX_st = type { %struct.ossl_lib_ctx_st*, i8* }
%struct.ossl_lib_ctx_st = type opaque
%struct.pkcs7_signed_st = type { %struct.asn1_string_st*, %struct.stack_st_X509_ALGOR*, %struct.stack_st_X509*, %struct.stack_st_X509_CRL*, %struct.stack_st_PKCS7_SIGNER_INFO*, %struct.pkcs7_st* }
%struct.stack_st_X509_ALGOR = type opaque
%struct.stack_st_X509 = type opaque
%struct.stack_st_X509_CRL = type opaque
%struct.stack_st_PKCS7_SIGNER_INFO = type opaque

@.str = private unnamed_addr constant [20 x i8] c"crypto/ts/ts_asn1.c\00", align 1
@__func__.PKCS7_to_TS_TST_INFO = private unnamed_addr constant [21 x i8] c"PKCS7_to_TS_TST_INFO\00", align 1
@TS_MSG_IMPRINT_it.local_it = internal constant %struct.ASN1_ITEM_st { i8 1, i64 16, %struct.ASN1_TEMPLATE_st* getelementptr inbounds ([2 x %struct.ASN1_TEMPLATE_st], [2 x %struct.ASN1_TEMPLATE_st]* @TS_MSG_IMPRINT_seq_tt, i32 0, i32 0), i64 2, i8* null, i64 16, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0) }, align 8
@TS_MSG_IMPRINT_seq_tt = internal constant [2 x %struct.ASN1_TEMPLATE_st] [%struct.ASN1_TEMPLATE_st { i64 0, i64 0, i64 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @X509_ALGOR_it }, %struct.ASN1_TEMPLATE_st { i64 0, i64 0, i64 8, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @ASN1_OCTET_STRING_it }], align 16
@.str.1 = private unnamed_addr constant [15 x i8] c"TS_MSG_IMPRINT\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"hash_algo\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"hashed_msg\00", align 1
@TS_REQ_it.local_it = internal constant %struct.ASN1_ITEM_st { i8 1, i64 16, %struct.ASN1_TEMPLATE_st* getelementptr inbounds ([6 x %struct.ASN1_TEMPLATE_st], [6 x %struct.ASN1_TEMPLATE_st]* @TS_REQ_seq_tt, i32 0, i32 0), i64 6, i8* null, i64 48, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i32 0, i32 0) }, align 8
@TS_REQ_seq_tt = internal constant [6 x %struct.ASN1_TEMPLATE_st] [%struct.ASN1_TEMPLATE_st { i64 0, i64 0, i64 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @ASN1_INTEGER_it }, %struct.ASN1_TEMPLATE_st { i64 0, i64 0, i64 8, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @TS_MSG_IMPRINT_it }, %struct.ASN1_TEMPLATE_st { i64 1, i64 0, i64 16, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @ASN1_OBJECT_it }, %struct.ASN1_TEMPLATE_st { i64 1, i64 0, i64 24, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @ASN1_INTEGER_it }, %struct.ASN1_TEMPLATE_st { i64 1, i64 0, i64 32, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @ASN1_FBOOLEAN_it }, %struct.ASN1_TEMPLATE_st { i64 141, i64 0, i64 40, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @X509_EXTENSION_it }], align 16
@.str.4 = private unnamed_addr constant [7 x i8] c"TS_REQ\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"msg_imprint\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"policy_id\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"nonce\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"cert_req\00", align 1
@.str.10 = private unnamed_addr constant [11 x i8] c"extensions\00", align 1
@TS_ACCURACY_it.local_it = internal constant %struct.ASN1_ITEM_st { i8 1, i64 16, %struct.ASN1_TEMPLATE_st* getelementptr inbounds ([3 x %struct.ASN1_TEMPLATE_st], [3 x %struct.ASN1_TEMPLATE_st]* @TS_ACCURACY_seq_tt, i32 0, i32 0), i64 3, i8* null, i64 24, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.11, i32 0, i32 0) }, align 8
@TS_ACCURACY_seq_tt = internal constant [3 x %struct.ASN1_TEMPLATE_st] [%struct.ASN1_TEMPLATE_st { i64 1, i64 0, i64 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @ASN1_INTEGER_it }, %struct.ASN1_TEMPLATE_st { i64 137, i64 0, i64 8, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @ASN1_INTEGER_it }, %struct.ASN1_TEMPLATE_st { i64 137, i64 1, i64 16, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @ASN1_INTEGER_it }], align 16
@.str.11 = private unnamed_addr constant [12 x i8] c"TS_ACCURACY\00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c"seconds\00", align 1
@.str.13 = private unnamed_addr constant [7 x i8] c"millis\00", align 1
@.str.14 = private unnamed_addr constant [7 x i8] c"micros\00", align 1
@TS_TST_INFO_it.local_it = internal constant %struct.ASN1_ITEM_st { i8 1, i64 16, %struct.ASN1_TEMPLATE_st* getelementptr inbounds ([10 x %struct.ASN1_TEMPLATE_st], [10 x %struct.ASN1_TEMPLATE_st]* @TS_TST_INFO_seq_tt, i32 0, i32 0), i64 10, i8* null, i64 80, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.15, i32 0, i32 0) }, align 8
@TS_TST_INFO_seq_tt = internal constant [10 x %struct.ASN1_TEMPLATE_st] [%struct.ASN1_TEMPLATE_st { i64 0, i64 0, i64 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @ASN1_INTEGER_it }, %struct.ASN1_TEMPLATE_st { i64 0, i64 0, i64 8, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @ASN1_OBJECT_it }, %struct.ASN1_TEMPLATE_st { i64 0, i64 0, i64 16, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @TS_MSG_IMPRINT_it }, %struct.ASN1_TEMPLATE_st { i64 0, i64 0, i64 24, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.16, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @ASN1_INTEGER_it }, %struct.ASN1_TEMPLATE_st { i64 0, i64 0, i64 32, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @ASN1_GENERALIZEDTIME_it }, %struct.ASN1_TEMPLATE_st { i64 1, i64 0, i64 40, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.18, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @TS_ACCURACY_it }, %struct.ASN1_TEMPLATE_st { i64 1, i64 0, i64 48, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.19, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @ASN1_FBOOLEAN_it }, %struct.ASN1_TEMPLATE_st { i64 1, i64 0, i64 56, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @ASN1_INTEGER_it }, %struct.ASN1_TEMPLATE_st { i64 145, i64 0, i64 64, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.20, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @GENERAL_NAME_it }, %struct.ASN1_TEMPLATE_st { i64 141, i64 1, i64 72, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @X509_EXTENSION_it }], align 16
@.str.15 = private unnamed_addr constant [12 x i8] c"TS_TST_INFO\00", align 1
@.str.16 = private unnamed_addr constant [7 x i8] c"serial\00", align 1
@.str.17 = private unnamed_addr constant [5 x i8] c"time\00", align 1
@.str.18 = private unnamed_addr constant [9 x i8] c"accuracy\00", align 1
@.str.19 = private unnamed_addr constant [9 x i8] c"ordering\00", align 1
@.str.20 = private unnamed_addr constant [4 x i8] c"tsa\00", align 1
@TS_STATUS_INFO_it.local_it = internal constant %struct.ASN1_ITEM_st { i8 1, i64 16, %struct.ASN1_TEMPLATE_st* getelementptr inbounds ([3 x %struct.ASN1_TEMPLATE_st], [3 x %struct.ASN1_TEMPLATE_st]* @TS_STATUS_INFO_seq_tt, i32 0, i32 0), i64 3, i8* null, i64 24, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.21, i32 0, i32 0) }, align 8
@TS_STATUS_INFO_seq_tt = internal constant [3 x %struct.ASN1_TEMPLATE_st] [%struct.ASN1_TEMPLATE_st { i64 0, i64 0, i64 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.22, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @ASN1_INTEGER_it }, %struct.ASN1_TEMPLATE_st { i64 5, i64 0, i64 8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.23, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @ASN1_UTF8STRING_it }, %struct.ASN1_TEMPLATE_st { i64 1, i64 0, i64 16, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.24, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @ASN1_BIT_STRING_it }], align 16
@.str.21 = private unnamed_addr constant [15 x i8] c"TS_STATUS_INFO\00", align 1
@.str.22 = private unnamed_addr constant [7 x i8] c"status\00", align 1
@.str.23 = private unnamed_addr constant [5 x i8] c"text\00", align 1
@.str.24 = private unnamed_addr constant [13 x i8] c"failure_info\00", align 1
@TS_RESP_it.local_it = internal constant %struct.ASN1_ITEM_st { i8 1, i64 16, %struct.ASN1_TEMPLATE_st* getelementptr inbounds ([2 x %struct.ASN1_TEMPLATE_st], [2 x %struct.ASN1_TEMPLATE_st]* @TS_RESP_seq_tt, i32 0, i32 0), i64 2, i8* bitcast (%struct.ASN1_AUX_st* @TS_RESP_aux to i8*), i64 24, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.25, i32 0, i32 0) }, align 8
@TS_RESP_seq_tt = internal constant [2 x %struct.ASN1_TEMPLATE_st] [%struct.ASN1_TEMPLATE_st { i64 0, i64 0, i64 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.26, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @TS_STATUS_INFO_it }, %struct.ASN1_TEMPLATE_st { i64 1, i64 0, i64 8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.27, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @PKCS7_it }], align 16
@TS_RESP_aux = internal constant %struct.ASN1_AUX_st { i8* null, i32 0, i32 0, i32 0, i32 (i32, %struct.ASN1_VALUE_st**, %struct.ASN1_ITEM_st*, i8*)* @ts_resp_cb, i32 0, i32 (i32, %struct.ASN1_VALUE_st**, %struct.ASN1_ITEM_st*, i8*)* null }, align 8
@.str.25 = private unnamed_addr constant [8 x i8] c"TS_RESP\00", align 1
@.str.26 = private unnamed_addr constant [12 x i8] c"status_info\00", align 1
@.str.27 = private unnamed_addr constant [6 x i8] c"token\00", align 1
@__func__.ts_resp_set_tst_info = private unnamed_addr constant [21 x i8] c"ts_resp_set_tst_info\00", align 1

; Function Attrs: noinline nounwind uwtable
define %struct.TS_msg_imprint_st* @d2i_TS_MSG_IMPRINT(%struct.TS_msg_imprint_st** noundef %a, i8** noundef %in, i64 noundef %len) #0 {
entry:
  %0 = bitcast %struct.TS_msg_imprint_st** %a to %struct.ASN1_VALUE_st**
  %call1 = tail call %struct.ASN1_VALUE_st* @ASN1_item_d2i(%struct.ASN1_VALUE_st** noundef %0, i8** noundef %in, i64 noundef %len, %struct.ASN1_ITEM_st* noundef nonnull @TS_MSG_IMPRINT_it.local_it) #4
  %1 = bitcast %struct.ASN1_VALUE_st* %call1 to %struct.TS_msg_imprint_st*
  ret %struct.TS_msg_imprint_st* %1
}

declare %struct.ASN1_VALUE_st* @ASN1_item_d2i(%struct.ASN1_VALUE_st** noundef, i8** noundef, i64 noundef, %struct.ASN1_ITEM_st* noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal nonnull %struct.ASN1_ITEM_st* @TS_MSG_IMPRINT_it() #2 {
entry:
  ret %struct.ASN1_ITEM_st* @TS_MSG_IMPRINT_it.local_it
}

; Function Attrs: noinline nounwind uwtable
define i32 @i2d_TS_MSG_IMPRINT(%struct.TS_msg_imprint_st* noundef %a, i8** noundef %out) #0 {
entry:
  %0 = bitcast %struct.TS_msg_imprint_st* %a to %struct.ASN1_VALUE_st*
  %call1 = tail call i32 @ASN1_item_i2d(%struct.ASN1_VALUE_st* noundef %0, i8** noundef %out, %struct.ASN1_ITEM_st* noundef nonnull @TS_MSG_IMPRINT_it.local_it) #4
  ret i32 %call1
}

declare i32 @ASN1_item_i2d(%struct.ASN1_VALUE_st* noundef, i8** noundef, %struct.ASN1_ITEM_st* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define %struct.TS_msg_imprint_st* @TS_MSG_IMPRINT_new() #0 {
entry:
  %call1 = tail call %struct.ASN1_VALUE_st* @ASN1_item_new(%struct.ASN1_ITEM_st* noundef nonnull @TS_MSG_IMPRINT_it.local_it) #4
  %0 = bitcast %struct.ASN1_VALUE_st* %call1 to %struct.TS_msg_imprint_st*
  ret %struct.TS_msg_imprint_st* %0
}

declare %struct.ASN1_VALUE_st* @ASN1_item_new(%struct.ASN1_ITEM_st* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define void @TS_MSG_IMPRINT_free(%struct.TS_msg_imprint_st* noundef %a) local_unnamed_addr #0 {
entry:
  %0 = bitcast %struct.TS_msg_imprint_st* %a to %struct.ASN1_VALUE_st*
  tail call void @ASN1_item_free(%struct.ASN1_VALUE_st* noundef %0, %struct.ASN1_ITEM_st* noundef nonnull @TS_MSG_IMPRINT_it.local_it) #4
  ret void
}

declare void @ASN1_item_free(%struct.ASN1_VALUE_st* noundef, %struct.ASN1_ITEM_st* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define %struct.TS_msg_imprint_st* @TS_MSG_IMPRINT_dup(%struct.TS_msg_imprint_st* noundef %x) local_unnamed_addr #0 {
entry:
  %0 = bitcast %struct.TS_msg_imprint_st* %x to i8*
  %call1 = tail call i8* @ASN1_item_dup(%struct.ASN1_ITEM_st* noundef nonnull @TS_MSG_IMPRINT_it.local_it, i8* noundef %0) #4
  %1 = bitcast i8* %call1 to %struct.TS_msg_imprint_st*
  ret %struct.TS_msg_imprint_st* %1
}

declare i8* @ASN1_item_dup(%struct.ASN1_ITEM_st* noundef, i8* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define %struct.TS_msg_imprint_st* @d2i_TS_MSG_IMPRINT_bio(%struct.bio_st* noundef %bp, %struct.TS_msg_imprint_st** noundef %a) local_unnamed_addr #0 {
entry:
  %0 = bitcast %struct.TS_msg_imprint_st** %a to i8**
  %call = tail call i8* @ASN1_d2i_bio(i8* ()* noundef bitcast (%struct.TS_msg_imprint_st* ()* @TS_MSG_IMPRINT_new to i8* ()*), i8* (i8**, i8**, i64)* noundef bitcast (%struct.TS_msg_imprint_st* (%struct.TS_msg_imprint_st**, i8**, i64)* @d2i_TS_MSG_IMPRINT to i8* (i8**, i8**, i64)*), %struct.bio_st* noundef %bp, i8** noundef %0) #4
  %1 = bitcast i8* %call to %struct.TS_msg_imprint_st*
  ret %struct.TS_msg_imprint_st* %1
}

declare i8* @ASN1_d2i_bio(i8* ()* noundef, i8* (i8**, i8**, i64)* noundef, %struct.bio_st* noundef, i8** noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define i32 @i2d_TS_MSG_IMPRINT_bio(%struct.bio_st* noundef %bp, %struct.TS_msg_imprint_st* noundef %a) local_unnamed_addr #0 {
entry:
  %0 = bitcast %struct.TS_msg_imprint_st* %a to i8*
  %call = tail call i32 @ASN1_i2d_bio(i32 (i8*, i8**)* noundef bitcast (i32 (%struct.TS_msg_imprint_st*, i8**)* @i2d_TS_MSG_IMPRINT to i32 (i8*, i8**)*), %struct.bio_st* noundef %bp, i8* noundef %0) #4
  ret i32 %call
}

declare i32 @ASN1_i2d_bio(i32 (i8*, i8**)* noundef, %struct.bio_st* noundef, i8* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define %struct.TS_msg_imprint_st* @d2i_TS_MSG_IMPRINT_fp(%struct._IO_FILE* noundef %fp, %struct.TS_msg_imprint_st** noundef %a) local_unnamed_addr #0 {
entry:
  %0 = bitcast %struct.TS_msg_imprint_st** %a to i8**
  %call = tail call i8* @ASN1_d2i_fp(i8* ()* noundef bitcast (%struct.TS_msg_imprint_st* ()* @TS_MSG_IMPRINT_new to i8* ()*), i8* (i8**, i8**, i64)* noundef bitcast (%struct.TS_msg_imprint_st* (%struct.TS_msg_imprint_st**, i8**, i64)* @d2i_TS_MSG_IMPRINT to i8* (i8**, i8**, i64)*), %struct._IO_FILE* noundef %fp, i8** noundef %0) #4
  %1 = bitcast i8* %call to %struct.TS_msg_imprint_st*
  ret %struct.TS_msg_imprint_st* %1
}

declare i8* @ASN1_d2i_fp(i8* ()* noundef, i8* (i8**, i8**, i64)* noundef, %struct._IO_FILE* noundef, i8** noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define i32 @i2d_TS_MSG_IMPRINT_fp(%struct._IO_FILE* noundef %fp, %struct.TS_msg_imprint_st* noundef %a) local_unnamed_addr #0 {
entry:
  %0 = bitcast %struct.TS_msg_imprint_st* %a to i8*
  %call = tail call i32 @ASN1_i2d_fp(i32 (i8*, i8**)* noundef bitcast (i32 (%struct.TS_msg_imprint_st*, i8**)* @i2d_TS_MSG_IMPRINT to i32 (i8*, i8**)*), %struct._IO_FILE* noundef %fp, i8* noundef %0) #4
  ret i32 %call
}

declare i32 @ASN1_i2d_fp(i32 (i8*, i8**)* noundef, %struct._IO_FILE* noundef, i8* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define %struct.TS_req_st* @d2i_TS_REQ(%struct.TS_req_st** noundef %a, i8** noundef %in, i64 noundef %len) #0 {
entry:
  %0 = bitcast %struct.TS_req_st** %a to %struct.ASN1_VALUE_st**
  %call1 = tail call %struct.ASN1_VALUE_st* @ASN1_item_d2i(%struct.ASN1_VALUE_st** noundef %0, i8** noundef %in, i64 noundef %len, %struct.ASN1_ITEM_st* noundef nonnull @TS_REQ_it.local_it) #4
  %1 = bitcast %struct.ASN1_VALUE_st* %call1 to %struct.TS_req_st*
  ret %struct.TS_req_st* %1
}

; Function Attrs: noinline nounwind uwtable
define i32 @i2d_TS_REQ(%struct.TS_req_st* noundef %a, i8** noundef %out) #0 {
entry:
  %0 = bitcast %struct.TS_req_st* %a to %struct.ASN1_VALUE_st*
  %call1 = tail call i32 @ASN1_item_i2d(%struct.ASN1_VALUE_st* noundef %0, i8** noundef %out, %struct.ASN1_ITEM_st* noundef nonnull @TS_REQ_it.local_it) #4
  ret i32 %call1
}

; Function Attrs: noinline nounwind uwtable
define %struct.TS_req_st* @TS_REQ_new() #0 {
entry:
  %call1 = tail call %struct.ASN1_VALUE_st* @ASN1_item_new(%struct.ASN1_ITEM_st* noundef nonnull @TS_REQ_it.local_it) #4
  %0 = bitcast %struct.ASN1_VALUE_st* %call1 to %struct.TS_req_st*
  ret %struct.TS_req_st* %0
}

; Function Attrs: noinline nounwind uwtable
define void @TS_REQ_free(%struct.TS_req_st* noundef %a) local_unnamed_addr #0 {
entry:
  %0 = bitcast %struct.TS_req_st* %a to %struct.ASN1_VALUE_st*
  tail call void @ASN1_item_free(%struct.ASN1_VALUE_st* noundef %0, %struct.ASN1_ITEM_st* noundef nonnull @TS_REQ_it.local_it) #4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define %struct.TS_req_st* @TS_REQ_dup(%struct.TS_req_st* noundef %x) local_unnamed_addr #0 {
entry:
  %0 = bitcast %struct.TS_req_st* %x to i8*
  %call1 = tail call i8* @ASN1_item_dup(%struct.ASN1_ITEM_st* noundef nonnull @TS_REQ_it.local_it, i8* noundef %0) #4
  %1 = bitcast i8* %call1 to %struct.TS_req_st*
  ret %struct.TS_req_st* %1
}

; Function Attrs: noinline nounwind uwtable
define %struct.TS_req_st* @d2i_TS_REQ_bio(%struct.bio_st* noundef %bp, %struct.TS_req_st** noundef %a) local_unnamed_addr #0 {
entry:
  %0 = bitcast %struct.TS_req_st** %a to i8**
  %call = tail call i8* @ASN1_d2i_bio(i8* ()* noundef bitcast (%struct.TS_req_st* ()* @TS_REQ_new to i8* ()*), i8* (i8**, i8**, i64)* noundef bitcast (%struct.TS_req_st* (%struct.TS_req_st**, i8**, i64)* @d2i_TS_REQ to i8* (i8**, i8**, i64)*), %struct.bio_st* noundef %bp, i8** noundef %0) #4
  %1 = bitcast i8* %call to %struct.TS_req_st*
  ret %struct.TS_req_st* %1
}

; Function Attrs: noinline nounwind uwtable
define i32 @i2d_TS_REQ_bio(%struct.bio_st* noundef %bp, %struct.TS_req_st* noundef %a) local_unnamed_addr #0 {
entry:
  %0 = bitcast %struct.TS_req_st* %a to i8*
  %call = tail call i32 @ASN1_i2d_bio(i32 (i8*, i8**)* noundef bitcast (i32 (%struct.TS_req_st*, i8**)* @i2d_TS_REQ to i32 (i8*, i8**)*), %struct.bio_st* noundef %bp, i8* noundef %0) #4
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define %struct.TS_req_st* @d2i_TS_REQ_fp(%struct._IO_FILE* noundef %fp, %struct.TS_req_st** noundef %a) local_unnamed_addr #0 {
entry:
  %0 = bitcast %struct.TS_req_st** %a to i8**
  %call = tail call i8* @ASN1_d2i_fp(i8* ()* noundef bitcast (%struct.TS_req_st* ()* @TS_REQ_new to i8* ()*), i8* (i8**, i8**, i64)* noundef bitcast (%struct.TS_req_st* (%struct.TS_req_st**, i8**, i64)* @d2i_TS_REQ to i8* (i8**, i8**, i64)*), %struct._IO_FILE* noundef %fp, i8** noundef %0) #4
  %1 = bitcast i8* %call to %struct.TS_req_st*
  ret %struct.TS_req_st* %1
}

; Function Attrs: noinline nounwind uwtable
define i32 @i2d_TS_REQ_fp(%struct._IO_FILE* noundef %fp, %struct.TS_req_st* noundef %a) local_unnamed_addr #0 {
entry:
  %0 = bitcast %struct.TS_req_st* %a to i8*
  %call = tail call i32 @ASN1_i2d_fp(i32 (i8*, i8**)* noundef bitcast (i32 (%struct.TS_req_st*, i8**)* @i2d_TS_REQ to i32 (i8*, i8**)*), %struct._IO_FILE* noundef %fp, i8* noundef %0) #4
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define %struct.TS_accuracy_st* @d2i_TS_ACCURACY(%struct.TS_accuracy_st** noundef %a, i8** noundef %in, i64 noundef %len) local_unnamed_addr #0 {
entry:
  %0 = bitcast %struct.TS_accuracy_st** %a to %struct.ASN1_VALUE_st**
  %call1 = tail call %struct.ASN1_VALUE_st* @ASN1_item_d2i(%struct.ASN1_VALUE_st** noundef %0, i8** noundef %in, i64 noundef %len, %struct.ASN1_ITEM_st* noundef nonnull @TS_ACCURACY_it.local_it) #4
  %1 = bitcast %struct.ASN1_VALUE_st* %call1 to %struct.TS_accuracy_st*
  ret %struct.TS_accuracy_st* %1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal nonnull %struct.ASN1_ITEM_st* @TS_ACCURACY_it() #2 {
entry:
  ret %struct.ASN1_ITEM_st* @TS_ACCURACY_it.local_it
}

; Function Attrs: noinline nounwind uwtable
define i32 @i2d_TS_ACCURACY(%struct.TS_accuracy_st* noundef %a, i8** noundef %out) local_unnamed_addr #0 {
entry:
  %0 = bitcast %struct.TS_accuracy_st* %a to %struct.ASN1_VALUE_st*
  %call1 = tail call i32 @ASN1_item_i2d(%struct.ASN1_VALUE_st* noundef %0, i8** noundef %out, %struct.ASN1_ITEM_st* noundef nonnull @TS_ACCURACY_it.local_it) #4
  ret i32 %call1
}

; Function Attrs: noinline nounwind uwtable
define %struct.TS_accuracy_st* @TS_ACCURACY_new() local_unnamed_addr #0 {
entry:
  %call1 = tail call %struct.ASN1_VALUE_st* @ASN1_item_new(%struct.ASN1_ITEM_st* noundef nonnull @TS_ACCURACY_it.local_it) #4
  %0 = bitcast %struct.ASN1_VALUE_st* %call1 to %struct.TS_accuracy_st*
  ret %struct.TS_accuracy_st* %0
}

; Function Attrs: noinline nounwind uwtable
define void @TS_ACCURACY_free(%struct.TS_accuracy_st* noundef %a) local_unnamed_addr #0 {
entry:
  %0 = bitcast %struct.TS_accuracy_st* %a to %struct.ASN1_VALUE_st*
  tail call void @ASN1_item_free(%struct.ASN1_VALUE_st* noundef %0, %struct.ASN1_ITEM_st* noundef nonnull @TS_ACCURACY_it.local_it) #4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define %struct.TS_accuracy_st* @TS_ACCURACY_dup(%struct.TS_accuracy_st* noundef %x) local_unnamed_addr #0 {
entry:
  %0 = bitcast %struct.TS_accuracy_st* %x to i8*
  %call1 = tail call i8* @ASN1_item_dup(%struct.ASN1_ITEM_st* noundef nonnull @TS_ACCURACY_it.local_it, i8* noundef %0) #4
  %1 = bitcast i8* %call1 to %struct.TS_accuracy_st*
  ret %struct.TS_accuracy_st* %1
}

; Function Attrs: noinline nounwind uwtable
define %struct.TS_tst_info_st* @d2i_TS_TST_INFO(%struct.TS_tst_info_st** noundef %a, i8** noundef %in, i64 noundef %len) #0 {
entry:
  %0 = bitcast %struct.TS_tst_info_st** %a to %struct.ASN1_VALUE_st**
  %call1 = tail call %struct.ASN1_VALUE_st* @ASN1_item_d2i(%struct.ASN1_VALUE_st** noundef %0, i8** noundef %in, i64 noundef %len, %struct.ASN1_ITEM_st* noundef nonnull @TS_TST_INFO_it.local_it) #4
  %1 = bitcast %struct.ASN1_VALUE_st* %call1 to %struct.TS_tst_info_st*
  ret %struct.TS_tst_info_st* %1
}

; Function Attrs: noinline nounwind uwtable
define i32 @i2d_TS_TST_INFO(%struct.TS_tst_info_st* noundef %a, i8** noundef %out) #0 {
entry:
  %0 = bitcast %struct.TS_tst_info_st* %a to %struct.ASN1_VALUE_st*
  %call1 = tail call i32 @ASN1_item_i2d(%struct.ASN1_VALUE_st* noundef %0, i8** noundef %out, %struct.ASN1_ITEM_st* noundef nonnull @TS_TST_INFO_it.local_it) #4
  ret i32 %call1
}

; Function Attrs: noinline nounwind uwtable
define %struct.TS_tst_info_st* @TS_TST_INFO_new() #0 {
entry:
  %call1 = tail call %struct.ASN1_VALUE_st* @ASN1_item_new(%struct.ASN1_ITEM_st* noundef nonnull @TS_TST_INFO_it.local_it) #4
  %0 = bitcast %struct.ASN1_VALUE_st* %call1 to %struct.TS_tst_info_st*
  ret %struct.TS_tst_info_st* %0
}

; Function Attrs: noinline nounwind uwtable
define void @TS_TST_INFO_free(%struct.TS_tst_info_st* noundef %a) local_unnamed_addr #0 {
entry:
  %0 = bitcast %struct.TS_tst_info_st* %a to %struct.ASN1_VALUE_st*
  tail call void @ASN1_item_free(%struct.ASN1_VALUE_st* noundef %0, %struct.ASN1_ITEM_st* noundef nonnull @TS_TST_INFO_it.local_it) #4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define %struct.TS_tst_info_st* @TS_TST_INFO_dup(%struct.TS_tst_info_st* noundef %x) local_unnamed_addr #0 {
entry:
  %0 = bitcast %struct.TS_tst_info_st* %x to i8*
  %call1 = tail call i8* @ASN1_item_dup(%struct.ASN1_ITEM_st* noundef nonnull @TS_TST_INFO_it.local_it, i8* noundef %0) #4
  %1 = bitcast i8* %call1 to %struct.TS_tst_info_st*
  ret %struct.TS_tst_info_st* %1
}

; Function Attrs: noinline nounwind uwtable
define %struct.TS_tst_info_st* @d2i_TS_TST_INFO_bio(%struct.bio_st* noundef %bp, %struct.TS_tst_info_st** noundef %a) local_unnamed_addr #0 {
entry:
  %0 = bitcast %struct.TS_tst_info_st** %a to i8**
  %call = tail call i8* @ASN1_d2i_bio(i8* ()* noundef bitcast (%struct.TS_tst_info_st* ()* @TS_TST_INFO_new to i8* ()*), i8* (i8**, i8**, i64)* noundef bitcast (%struct.TS_tst_info_st* (%struct.TS_tst_info_st**, i8**, i64)* @d2i_TS_TST_INFO to i8* (i8**, i8**, i64)*), %struct.bio_st* noundef %bp, i8** noundef %0) #4
  %1 = bitcast i8* %call to %struct.TS_tst_info_st*
  ret %struct.TS_tst_info_st* %1
}

; Function Attrs: noinline nounwind uwtable
define i32 @i2d_TS_TST_INFO_bio(%struct.bio_st* noundef %bp, %struct.TS_tst_info_st* noundef %a) local_unnamed_addr #0 {
entry:
  %0 = bitcast %struct.TS_tst_info_st* %a to i8*
  %call = tail call i32 @ASN1_i2d_bio(i32 (i8*, i8**)* noundef bitcast (i32 (%struct.TS_tst_info_st*, i8**)* @i2d_TS_TST_INFO to i32 (i8*, i8**)*), %struct.bio_st* noundef %bp, i8* noundef %0) #4
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define %struct.TS_tst_info_st* @d2i_TS_TST_INFO_fp(%struct._IO_FILE* noundef %fp, %struct.TS_tst_info_st** noundef %a) local_unnamed_addr #0 {
entry:
  %0 = bitcast %struct.TS_tst_info_st** %a to i8**
  %call = tail call i8* @ASN1_d2i_fp(i8* ()* noundef bitcast (%struct.TS_tst_info_st* ()* @TS_TST_INFO_new to i8* ()*), i8* (i8**, i8**, i64)* noundef bitcast (%struct.TS_tst_info_st* (%struct.TS_tst_info_st**, i8**, i64)* @d2i_TS_TST_INFO to i8* (i8**, i8**, i64)*), %struct._IO_FILE* noundef %fp, i8** noundef %0) #4
  %1 = bitcast i8* %call to %struct.TS_tst_info_st*
  ret %struct.TS_tst_info_st* %1
}

; Function Attrs: noinline nounwind uwtable
define i32 @i2d_TS_TST_INFO_fp(%struct._IO_FILE* noundef %fp, %struct.TS_tst_info_st* noundef %a) local_unnamed_addr #0 {
entry:
  %0 = bitcast %struct.TS_tst_info_st* %a to i8*
  %call = tail call i32 @ASN1_i2d_fp(i32 (i8*, i8**)* noundef bitcast (i32 (%struct.TS_tst_info_st*, i8**)* @i2d_TS_TST_INFO to i32 (i8*, i8**)*), %struct._IO_FILE* noundef %fp, i8* noundef %0) #4
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define %struct.TS_status_info_st* @d2i_TS_STATUS_INFO(%struct.TS_status_info_st** noundef %a, i8** noundef %in, i64 noundef %len) local_unnamed_addr #0 {
entry:
  %0 = bitcast %struct.TS_status_info_st** %a to %struct.ASN1_VALUE_st**
  %call1 = tail call %struct.ASN1_VALUE_st* @ASN1_item_d2i(%struct.ASN1_VALUE_st** noundef %0, i8** noundef %in, i64 noundef %len, %struct.ASN1_ITEM_st* noundef nonnull @TS_STATUS_INFO_it.local_it) #4
  %1 = bitcast %struct.ASN1_VALUE_st* %call1 to %struct.TS_status_info_st*
  ret %struct.TS_status_info_st* %1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal nonnull %struct.ASN1_ITEM_st* @TS_STATUS_INFO_it() #2 {
entry:
  ret %struct.ASN1_ITEM_st* @TS_STATUS_INFO_it.local_it
}

; Function Attrs: noinline nounwind uwtable
define i32 @i2d_TS_STATUS_INFO(%struct.TS_status_info_st* noundef %a, i8** noundef %out) local_unnamed_addr #0 {
entry:
  %0 = bitcast %struct.TS_status_info_st* %a to %struct.ASN1_VALUE_st*
  %call1 = tail call i32 @ASN1_item_i2d(%struct.ASN1_VALUE_st* noundef %0, i8** noundef %out, %struct.ASN1_ITEM_st* noundef nonnull @TS_STATUS_INFO_it.local_it) #4
  ret i32 %call1
}

; Function Attrs: noinline nounwind uwtable
define %struct.TS_status_info_st* @TS_STATUS_INFO_new() local_unnamed_addr #0 {
entry:
  %call1 = tail call %struct.ASN1_VALUE_st* @ASN1_item_new(%struct.ASN1_ITEM_st* noundef nonnull @TS_STATUS_INFO_it.local_it) #4
  %0 = bitcast %struct.ASN1_VALUE_st* %call1 to %struct.TS_status_info_st*
  ret %struct.TS_status_info_st* %0
}

; Function Attrs: noinline nounwind uwtable
define void @TS_STATUS_INFO_free(%struct.TS_status_info_st* noundef %a) local_unnamed_addr #0 {
entry:
  %0 = bitcast %struct.TS_status_info_st* %a to %struct.ASN1_VALUE_st*
  tail call void @ASN1_item_free(%struct.ASN1_VALUE_st* noundef %0, %struct.ASN1_ITEM_st* noundef nonnull @TS_STATUS_INFO_it.local_it) #4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define %struct.TS_status_info_st* @TS_STATUS_INFO_dup(%struct.TS_status_info_st* noundef %x) local_unnamed_addr #0 {
entry:
  %0 = bitcast %struct.TS_status_info_st* %x to i8*
  %call1 = tail call i8* @ASN1_item_dup(%struct.ASN1_ITEM_st* noundef nonnull @TS_STATUS_INFO_it.local_it, i8* noundef %0) #4
  %1 = bitcast i8* %call1 to %struct.TS_status_info_st*
  ret %struct.TS_status_info_st* %1
}

; Function Attrs: noinline nounwind uwtable
define %struct.TS_resp_st* @d2i_TS_RESP(%struct.TS_resp_st** noundef %a, i8** noundef %in, i64 noundef %len) #0 {
entry:
  %0 = bitcast %struct.TS_resp_st** %a to %struct.ASN1_VALUE_st**
  %call1 = tail call %struct.ASN1_VALUE_st* @ASN1_item_d2i(%struct.ASN1_VALUE_st** noundef %0, i8** noundef %in, i64 noundef %len, %struct.ASN1_ITEM_st* noundef nonnull @TS_RESP_it.local_it) #4
  %1 = bitcast %struct.ASN1_VALUE_st* %call1 to %struct.TS_resp_st*
  ret %struct.TS_resp_st* %1
}

; Function Attrs: noinline nounwind uwtable
define i32 @i2d_TS_RESP(%struct.TS_resp_st* noundef %a, i8** noundef %out) #0 {
entry:
  %0 = bitcast %struct.TS_resp_st* %a to %struct.ASN1_VALUE_st*
  %call1 = tail call i32 @ASN1_item_i2d(%struct.ASN1_VALUE_st* noundef %0, i8** noundef %out, %struct.ASN1_ITEM_st* noundef nonnull @TS_RESP_it.local_it) #4
  ret i32 %call1
}

; Function Attrs: noinline nounwind uwtable
define %struct.TS_resp_st* @TS_RESP_new() #0 {
entry:
  %call1 = tail call %struct.ASN1_VALUE_st* @ASN1_item_new(%struct.ASN1_ITEM_st* noundef nonnull @TS_RESP_it.local_it) #4
  %0 = bitcast %struct.ASN1_VALUE_st* %call1 to %struct.TS_resp_st*
  ret %struct.TS_resp_st* %0
}

; Function Attrs: noinline nounwind uwtable
define void @TS_RESP_free(%struct.TS_resp_st* noundef %a) local_unnamed_addr #0 {
entry:
  %0 = bitcast %struct.TS_resp_st* %a to %struct.ASN1_VALUE_st*
  tail call void @ASN1_item_free(%struct.ASN1_VALUE_st* noundef %0, %struct.ASN1_ITEM_st* noundef nonnull @TS_RESP_it.local_it) #4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define %struct.TS_resp_st* @TS_RESP_dup(%struct.TS_resp_st* noundef %x) local_unnamed_addr #0 {
entry:
  %0 = bitcast %struct.TS_resp_st* %x to i8*
  %call1 = tail call i8* @ASN1_item_dup(%struct.ASN1_ITEM_st* noundef nonnull @TS_RESP_it.local_it, i8* noundef %0) #4
  %1 = bitcast i8* %call1 to %struct.TS_resp_st*
  ret %struct.TS_resp_st* %1
}

; Function Attrs: noinline nounwind uwtable
define %struct.TS_resp_st* @d2i_TS_RESP_bio(%struct.bio_st* noundef %bp, %struct.TS_resp_st** noundef %a) local_unnamed_addr #0 {
entry:
  %0 = bitcast %struct.TS_resp_st** %a to i8**
  %call = tail call i8* @ASN1_d2i_bio(i8* ()* noundef bitcast (%struct.TS_resp_st* ()* @TS_RESP_new to i8* ()*), i8* (i8**, i8**, i64)* noundef bitcast (%struct.TS_resp_st* (%struct.TS_resp_st**, i8**, i64)* @d2i_TS_RESP to i8* (i8**, i8**, i64)*), %struct.bio_st* noundef %bp, i8** noundef %0) #4
  %1 = bitcast i8* %call to %struct.TS_resp_st*
  ret %struct.TS_resp_st* %1
}

; Function Attrs: noinline nounwind uwtable
define i32 @i2d_TS_RESP_bio(%struct.bio_st* noundef %bp, %struct.TS_resp_st* noundef %a) local_unnamed_addr #0 {
entry:
  %0 = bitcast %struct.TS_resp_st* %a to i8*
  %call = tail call i32 @ASN1_i2d_bio(i32 (i8*, i8**)* noundef bitcast (i32 (%struct.TS_resp_st*, i8**)* @i2d_TS_RESP to i32 (i8*, i8**)*), %struct.bio_st* noundef %bp, i8* noundef %0) #4
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define %struct.TS_resp_st* @d2i_TS_RESP_fp(%struct._IO_FILE* noundef %fp, %struct.TS_resp_st** noundef %a) local_unnamed_addr #0 {
entry:
  %0 = bitcast %struct.TS_resp_st** %a to i8**
  %call = tail call i8* @ASN1_d2i_fp(i8* ()* noundef bitcast (%struct.TS_resp_st* ()* @TS_RESP_new to i8* ()*), i8* (i8**, i8**, i64)* noundef bitcast (%struct.TS_resp_st* (%struct.TS_resp_st**, i8**, i64)* @d2i_TS_RESP to i8* (i8**, i8**, i64)*), %struct._IO_FILE* noundef %fp, i8** noundef %0) #4
  %1 = bitcast i8* %call to %struct.TS_resp_st*
  ret %struct.TS_resp_st* %1
}

; Function Attrs: noinline nounwind uwtable
define i32 @i2d_TS_RESP_fp(%struct._IO_FILE* noundef %fp, %struct.TS_resp_st* noundef %a) local_unnamed_addr #0 {
entry:
  %0 = bitcast %struct.TS_resp_st* %a to i8*
  %call = tail call i32 @ASN1_i2d_fp(i32 (i8*, i8**)* noundef bitcast (i32 (%struct.TS_resp_st*, i8**)* @i2d_TS_RESP to i32 (i8*, i8**)*), %struct._IO_FILE* noundef %fp, i8* noundef %0) #4
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define %struct.TS_tst_info_st* @PKCS7_to_TS_TST_INFO(%struct.pkcs7_st* noundef %token) local_unnamed_addr #0 {
entry:
  %p = alloca i8*, align 8
  %0 = bitcast i8** %p to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #5
  %type = getelementptr inbounds %struct.pkcs7_st, %struct.pkcs7_st* %token, i64 0, i32 4
  %1 = load %struct.asn1_object_st*, %struct.asn1_object_st** %type, align 8, !tbaa !4
  %call = tail call i32 @OBJ_obj2nid(%struct.asn1_object_st* noundef %1) #4
  %cmp = icmp eq i32 %call, 22
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #4
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 213, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.PKCS7_to_TS_TST_INFO, i64 0, i64 0)) #4
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 47, i32 noundef 132, i8* noundef null) #4
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i64 @PKCS7_ctrl(%struct.pkcs7_st* noundef nonnull %token, i32 noundef 2, i64 noundef 0, i8* noundef null) #4
  %tobool.not = icmp eq i64 %call1, 0
  br i1 %tobool.not, label %if.end3, label %if.then2

if.then2:                                         ; preds = %if.end
  tail call void @ERR_new() #4
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 217, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.PKCS7_to_TS_TST_INFO, i64 0, i64 0)) #4
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 47, i32 noundef 134, i8* noundef null) #4
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %d = getelementptr inbounds %struct.pkcs7_st, %struct.pkcs7_st* %token, i64 0, i32 5
  %sign = bitcast %union.anon.1* %d to %struct.pkcs7_signed_st**
  %2 = load %struct.pkcs7_signed_st*, %struct.pkcs7_signed_st** %sign, align 8, !tbaa !12
  %contents = getelementptr inbounds %struct.pkcs7_signed_st, %struct.pkcs7_signed_st* %2, i64 0, i32 5
  %3 = load %struct.pkcs7_st*, %struct.pkcs7_st** %contents, align 8, !tbaa !13
  %type4 = getelementptr inbounds %struct.pkcs7_st, %struct.pkcs7_st* %3, i64 0, i32 4
  %4 = load %struct.asn1_object_st*, %struct.asn1_object_st** %type4, align 8, !tbaa !4
  %call5 = tail call i32 @OBJ_obj2nid(%struct.asn1_object_st* noundef %4) #4
  %cmp6.not = icmp eq i32 %call5, 207
  br i1 %cmp6.not, label %if.end8, label %if.then7

if.then7:                                         ; preds = %if.end3
  tail call void @ERR_new() #4
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 223, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.PKCS7_to_TS_TST_INFO, i64 0, i64 0)) #4
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 47, i32 noundef 132, i8* noundef null) #4
  br label %cleanup

if.end8:                                          ; preds = %if.end3
  %d9 = getelementptr inbounds %struct.pkcs7_st, %struct.pkcs7_st* %3, i64 0, i32 5
  %other = bitcast %union.anon.1* %d9 to %struct.asn1_type_st**
  %5 = load %struct.asn1_type_st*, %struct.asn1_type_st** %other, align 8, !tbaa !12
  %type10 = getelementptr inbounds %struct.asn1_type_st, %struct.asn1_type_st* %5, i64 0, i32 0
  %6 = load i32, i32* %type10, align 8, !tbaa !15
  %cmp11.not = icmp eq i32 %6, 4
  br i1 %cmp11.not, label %if.end13, label %if.then12

if.then12:                                        ; preds = %if.end8
  tail call void @ERR_new() #4
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 228, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.PKCS7_to_TS_TST_INFO, i64 0, i64 0)) #4
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 47, i32 noundef 133, i8* noundef null) #4
  br label %cleanup

if.end13:                                         ; preds = %if.end8
  %value = getelementptr inbounds %struct.asn1_type_st, %struct.asn1_type_st* %5, i64 0, i32 1
  %octet_string = bitcast %union.anon* %value to %struct.asn1_string_st**
  %7 = load %struct.asn1_string_st*, %struct.asn1_string_st** %octet_string, align 8, !tbaa !12
  %data = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %7, i64 0, i32 2
  %8 = load i8*, i8** %data, align 8, !tbaa !17
  store i8* %8, i8** %p, align 8, !tbaa !19
  %length = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %7, i64 0, i32 0
  %9 = load i32, i32* %length, align 8, !tbaa !20
  %conv = sext i32 %9 to i64
  %call14 = call %struct.TS_tst_info_st* @d2i_TS_TST_INFO(%struct.TS_tst_info_st** noundef null, i8** noundef nonnull %p, i64 noundef %conv) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end13, %if.then12, %if.then7, %if.then2, %if.then
  %retval.0 = phi %struct.TS_tst_info_st* [ null, %if.then2 ], [ null, %if.then7 ], [ null, %if.then12 ], [ %call14, %if.end13 ], [ null, %if.then ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #5
  ret %struct.TS_tst_info_st* %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #3

declare i32 @OBJ_obj2nid(%struct.asn1_object_st* noundef) local_unnamed_addr #1

declare void @ERR_new() local_unnamed_addr #1

declare void @ERR_set_debug(i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #1

declare void @ERR_set_error(i32 noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #1

declare i64 @PKCS7_ctrl(%struct.pkcs7_st* noundef, i32 noundef, i64 noundef, i8* noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #3

declare %struct.ASN1_ITEM_st* @X509_ALGOR_it() #1

declare %struct.ASN1_ITEM_st* @ASN1_OCTET_STRING_it() #1

declare %struct.ASN1_ITEM_st* @ASN1_INTEGER_it() #1

declare %struct.ASN1_ITEM_st* @ASN1_OBJECT_it() #1

declare %struct.ASN1_ITEM_st* @ASN1_FBOOLEAN_it() #1

declare %struct.ASN1_ITEM_st* @X509_EXTENSION_it() #1

declare %struct.ASN1_ITEM_st* @ASN1_GENERALIZEDTIME_it() #1

declare %struct.ASN1_ITEM_st* @GENERAL_NAME_it() #1

declare %struct.ASN1_ITEM_st* @ASN1_UTF8STRING_it() #1

declare %struct.ASN1_ITEM_st* @ASN1_BIT_STRING_it() #1

declare %struct.ASN1_ITEM_st* @PKCS7_it() #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @ts_resp_cb(i32 noundef %op, %struct.ASN1_VALUE_st** nocapture noundef readonly %pval, %struct.ASN1_ITEM_st* nocapture noundef readnone %it, i8* nocapture noundef readnone %exarg) #0 {
entry:
  %0 = bitcast %struct.ASN1_VALUE_st** %pval to %struct.TS_resp_st**
  %1 = load %struct.TS_resp_st*, %struct.TS_resp_st** %0, align 8, !tbaa !19
  switch i32 %op, label %if.end11 [
    i32 1, label %if.then
    i32 3, label %if.then2
    i32 5, label %if.then6
  ]

if.then:                                          ; preds = %entry
  %tst_info = getelementptr inbounds %struct.TS_resp_st, %struct.TS_resp_st* %1, i64 0, i32 2
  store %struct.TS_tst_info_st* null, %struct.TS_tst_info_st** %tst_info, align 8, !tbaa !21
  br label %if.end11

if.then2:                                         ; preds = %entry
  %tst_info3 = getelementptr inbounds %struct.TS_resp_st, %struct.TS_resp_st* %1, i64 0, i32 2
  %2 = load %struct.TS_tst_info_st*, %struct.TS_tst_info_st** %tst_info3, align 8, !tbaa !21
  tail call void @TS_TST_INFO_free(%struct.TS_tst_info_st* noundef %2) #6
  br label %if.end11

if.then6:                                         ; preds = %entry
  %call = tail call fastcc i32 @ts_resp_set_tst_info(%struct.TS_resp_st* noundef %1) #6
  %cmp7 = icmp eq i32 %call, 0
  br i1 %cmp7, label %cleanup, label %if.end11

if.end11:                                         ; preds = %entry, %if.then2, %if.then6, %if.then
  br label %cleanup

cleanup:                                          ; preds = %if.then6, %if.end11
  %retval.0 = phi i32 [ 1, %if.end11 ], [ 0, %if.then6 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @ts_resp_set_tst_info(%struct.TS_resp_st* nocapture noundef %a) unnamed_addr #0 {
entry:
  %status_info = getelementptr inbounds %struct.TS_resp_st, %struct.TS_resp_st* %a, i64 0, i32 0
  %0 = load %struct.TS_status_info_st*, %struct.TS_status_info_st** %status_info, align 8, !tbaa !23
  %status1 = getelementptr inbounds %struct.TS_status_info_st, %struct.TS_status_info_st* %0, i64 0, i32 0
  %1 = load %struct.asn1_string_st*, %struct.asn1_string_st** %status1, align 8, !tbaa !24
  %call = tail call i64 @ASN1_INTEGER_get(%struct.asn1_string_st* noundef %1) #4
  %token = getelementptr inbounds %struct.TS_resp_st, %struct.TS_resp_st* %a, i64 0, i32 1
  %2 = load %struct.pkcs7_st*, %struct.pkcs7_st** %token, align 8, !tbaa !26
  %tobool.not = icmp eq %struct.pkcs7_st* %2, null
  %3 = icmp ult i64 %call, 2
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  br i1 %3, label %if.end, label %cleanup.sink.split

if.end:                                           ; preds = %if.then
  %tst_info = getelementptr inbounds %struct.TS_resp_st, %struct.TS_resp_st* %a, i64 0, i32 2
  %4 = load %struct.TS_tst_info_st*, %struct.TS_tst_info_st** %tst_info, align 8, !tbaa !21
  tail call void @TS_TST_INFO_free(%struct.TS_tst_info_st* noundef %4) #6
  %5 = load %struct.pkcs7_st*, %struct.pkcs7_st** %token, align 8, !tbaa !26
  %call5 = tail call %struct.TS_tst_info_st* @PKCS7_to_TS_TST_INFO(%struct.pkcs7_st* noundef %5) #6
  store %struct.TS_tst_info_st* %call5, %struct.TS_tst_info_st** %tst_info, align 8, !tbaa !21
  %tobool8.not = icmp eq %struct.TS_tst_info_st* %call5, null
  br i1 %tobool8.not, label %cleanup.sink.split, label %cleanup

if.else:                                          ; preds = %entry
  br i1 %3, label %cleanup.sink.split, label %cleanup

cleanup.sink.split:                               ; preds = %if.else, %if.end, %if.then
  %.sink26 = phi i32 [ 141, %if.then ], [ 147, %if.end ], [ 151, %if.else ]
  %.sink = phi i32 [ 131, %if.then ], [ 129, %if.end ], [ 130, %if.else ]
  tail call void @ERR_new() #4
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef %.sink26, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.ts_resp_set_tst_info, i64 0, i64 0)) #4
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 47, i32 noundef %.sink, i8* noundef null) #4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end, %if.else
  %retval.0 = phi i32 [ 1, %if.else ], [ 1, %if.end ], [ 0, %cleanup.sink.split ]
  ret i32 %retval.0
}

declare i64 @ASN1_INTEGER_get(%struct.asn1_string_st* noundef) local_unnamed_addr #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #4 = { nobuiltin nounwind "no-builtins" }
attributes #5 = { nounwind }
attributes #6 = { nobuiltin "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{!"clang version 14.0.0"}
!4 = !{!5, !6, i64 24}
!5 = !{!"pkcs7_st", !6, i64 0, !9, i64 8, !10, i64 16, !10, i64 20, !6, i64 24, !7, i64 32, !11, i64 40}
!6 = !{!"any pointer", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!"long", !7, i64 0}
!10 = !{!"int", !7, i64 0}
!11 = !{!"PKCS7_CTX_st", !6, i64 0, !6, i64 8}
!12 = !{!7, !7, i64 0}
!13 = !{!14, !6, i64 40}
!14 = !{!"pkcs7_signed_st", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !6, i64 40}
!15 = !{!16, !10, i64 0}
!16 = !{!"asn1_type_st", !10, i64 0, !7, i64 8}
!17 = !{!18, !6, i64 8}
!18 = !{!"asn1_string_st", !10, i64 0, !10, i64 4, !6, i64 8, !9, i64 16}
!19 = !{!6, !6, i64 0}
!20 = !{!18, !10, i64 0}
!21 = !{!22, !6, i64 16}
!22 = !{!"TS_resp_st", !6, i64 0, !6, i64 8, !6, i64 16}
!23 = !{!22, !6, i64 0}
!24 = !{!25, !6, i64 0}
!25 = !{!"TS_status_info_st", !6, i64 0, !6, i64 8, !6, i64 16}
!26 = !{!22, !6, i64 8}
