; ModuleID = 'crypto/ts/ts_rsp_utils.c'
source_filename = "crypto/ts/ts_rsp_utils.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TS_resp_st = type { %struct.TS_status_info_st*, %struct.pkcs7_st*, %struct.TS_tst_info_st* }
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
%struct.asn1_string_st = type { i32, i32, i8*, i64 }
%struct.GENERAL_NAME_st = type { i32, %union.anon.1 }
%union.anon.1 = type { i8* }
%struct.stack_st_X509_EXTENSION = type opaque
%struct.TS_status_info_st = type { %struct.asn1_string_st*, %struct.stack_st_ASN1_UTF8STRING*, %struct.asn1_string_st* }
%struct.stack_st_ASN1_UTF8STRING = type opaque
%struct.stack_st = type opaque
%struct.X509_extension_st = type opaque

@.str = private unnamed_addr constant [25 x i8] c"crypto/ts/ts_rsp_utils.c\00", align 1
@__func__.TS_RESP_set_status_info = private unnamed_addr constant [24 x i8] c"TS_RESP_set_status_info\00", align 1
@__func__.TS_TST_INFO_set_policy_id = private unnamed_addr constant [26 x i8] c"TS_TST_INFO_set_policy_id\00", align 1
@__func__.TS_TST_INFO_set_msg_imprint = private unnamed_addr constant [28 x i8] c"TS_TST_INFO_set_msg_imprint\00", align 1
@__func__.TS_TST_INFO_set_serial = private unnamed_addr constant [23 x i8] c"TS_TST_INFO_set_serial\00", align 1
@__func__.TS_TST_INFO_set_time = private unnamed_addr constant [21 x i8] c"TS_TST_INFO_set_time\00", align 1
@__func__.TS_TST_INFO_set_accuracy = private unnamed_addr constant [25 x i8] c"TS_TST_INFO_set_accuracy\00", align 1
@__func__.TS_ACCURACY_set_seconds = private unnamed_addr constant [24 x i8] c"TS_ACCURACY_set_seconds\00", align 1
@__func__.TS_ACCURACY_set_millis = private unnamed_addr constant [23 x i8] c"TS_ACCURACY_set_millis\00", align 1
@__func__.TS_ACCURACY_set_micros = private unnamed_addr constant [23 x i8] c"TS_ACCURACY_set_micros\00", align 1
@__func__.TS_TST_INFO_set_nonce = private unnamed_addr constant [22 x i8] c"TS_TST_INFO_set_nonce\00", align 1
@__func__.TS_TST_INFO_set_tsa = private unnamed_addr constant [20 x i8] c"TS_TST_INFO_set_tsa\00", align 1

; Function Attrs: noinline nounwind uwtable
define i32 @TS_RESP_set_status_info(%struct.TS_resp_st* nocapture noundef %a, %struct.TS_status_info_st* noundef %status_info) local_unnamed_addr #0 {
entry:
  %status_info1 = getelementptr inbounds %struct.TS_resp_st, %struct.TS_resp_st* %a, i64 0, i32 0
  %0 = load %struct.TS_status_info_st*, %struct.TS_status_info_st** %status_info1, align 8, !tbaa !4
  %cmp = icmp eq %struct.TS_status_info_st* %0, %status_info
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call = tail call %struct.TS_status_info_st* @TS_STATUS_INFO_dup(%struct.TS_status_info_st* noundef %status_info) #5
  %cmp2 = icmp eq %struct.TS_status_info_st* %call, null
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 25, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.TS_RESP_set_status_info, i64 0, i64 0)) #5
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 47, i32 noundef 786688, i8* noundef null) #5
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %1 = load %struct.TS_status_info_st*, %struct.TS_status_info_st** %status_info1, align 8, !tbaa !4
  tail call void @TS_STATUS_INFO_free(%struct.TS_status_info_st* noundef %1) #5
  store %struct.TS_status_info_st* %call, %struct.TS_status_info_st** %status_info1, align 8, !tbaa !4
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end4, %if.then3
  %retval.0 = phi i32 [ 0, %if.then3 ], [ 1, %if.end4 ], [ 1, %entry ]
  ret i32 %retval.0
}

declare %struct.TS_status_info_st* @TS_STATUS_INFO_dup(%struct.TS_status_info_st* noundef) local_unnamed_addr #1

declare void @ERR_new() local_unnamed_addr #1

declare void @ERR_set_debug(i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #1

declare void @ERR_set_error(i32 noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #1

declare void @TS_STATUS_INFO_free(%struct.TS_status_info_st* noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define %struct.TS_status_info_st* @TS_RESP_get_status_info(%struct.TS_resp_st* nocapture noundef readonly %a) local_unnamed_addr #2 {
entry:
  %status_info = getelementptr inbounds %struct.TS_resp_st, %struct.TS_resp_st* %a, i64 0, i32 0
  %0 = load %struct.TS_status_info_st*, %struct.TS_status_info_st** %status_info, align 8, !tbaa !4
  ret %struct.TS_status_info_st* %0
}

; Function Attrs: noinline nounwind uwtable
define void @TS_RESP_set_tst_info(%struct.TS_resp_st* nocapture noundef %a, %struct.pkcs7_st* noundef %p7, %struct.TS_tst_info_st* noundef %tst_info) local_unnamed_addr #0 {
entry:
  %token = getelementptr inbounds %struct.TS_resp_st, %struct.TS_resp_st* %a, i64 0, i32 1
  %0 = load %struct.pkcs7_st*, %struct.pkcs7_st** %token, align 8, !tbaa !9
  tail call void @PKCS7_free(%struct.pkcs7_st* noundef %0) #5
  store %struct.pkcs7_st* %p7, %struct.pkcs7_st** %token, align 8, !tbaa !9
  %tst_info2 = getelementptr inbounds %struct.TS_resp_st, %struct.TS_resp_st* %a, i64 0, i32 2
  %1 = load %struct.TS_tst_info_st*, %struct.TS_tst_info_st** %tst_info2, align 8, !tbaa !10
  tail call void @TS_TST_INFO_free(%struct.TS_tst_info_st* noundef %1) #5
  store %struct.TS_tst_info_st* %tst_info, %struct.TS_tst_info_st** %tst_info2, align 8, !tbaa !10
  ret void
}

declare void @PKCS7_free(%struct.pkcs7_st* noundef) local_unnamed_addr #1

declare void @TS_TST_INFO_free(%struct.TS_tst_info_st* noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define %struct.pkcs7_st* @TS_RESP_get_token(%struct.TS_resp_st* nocapture noundef readonly %a) local_unnamed_addr #2 {
entry:
  %token = getelementptr inbounds %struct.TS_resp_st, %struct.TS_resp_st* %a, i64 0, i32 1
  %0 = load %struct.pkcs7_st*, %struct.pkcs7_st** %token, align 8, !tbaa !9
  ret %struct.pkcs7_st* %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define %struct.TS_tst_info_st* @TS_RESP_get_tst_info(%struct.TS_resp_st* nocapture noundef readonly %a) local_unnamed_addr #2 {
entry:
  %tst_info = getelementptr inbounds %struct.TS_resp_st, %struct.TS_resp_st* %a, i64 0, i32 2
  %0 = load %struct.TS_tst_info_st*, %struct.TS_tst_info_st** %tst_info, align 8, !tbaa !10
  ret %struct.TS_tst_info_st* %0
}

; Function Attrs: noinline nounwind uwtable
define i32 @TS_TST_INFO_set_version(%struct.TS_tst_info_st* nocapture noundef readonly %a, i64 noundef %version) local_unnamed_addr #0 {
entry:
  %version1 = getelementptr inbounds %struct.TS_tst_info_st, %struct.TS_tst_info_st* %a, i64 0, i32 0
  %0 = load %struct.asn1_string_st*, %struct.asn1_string_st** %version1, align 8, !tbaa !11
  %call = tail call i32 @ASN1_INTEGER_set(%struct.asn1_string_st* noundef %0, i64 noundef %version) #5
  ret i32 %call
}

declare i32 @ASN1_INTEGER_set(%struct.asn1_string_st* noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define i64 @TS_TST_INFO_get_version(%struct.TS_tst_info_st* nocapture noundef readonly %a) local_unnamed_addr #0 {
entry:
  %version = getelementptr inbounds %struct.TS_tst_info_st, %struct.TS_tst_info_st* %a, i64 0, i32 0
  %0 = load %struct.asn1_string_st*, %struct.asn1_string_st** %version, align 8, !tbaa !11
  %call = tail call i64 @ASN1_INTEGER_get(%struct.asn1_string_st* noundef %0) #5
  ret i64 %call
}

declare i64 @ASN1_INTEGER_get(%struct.asn1_string_st* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define i32 @TS_TST_INFO_set_policy_id(%struct.TS_tst_info_st* nocapture noundef %a, %struct.asn1_object_st* noundef %policy) local_unnamed_addr #0 {
entry:
  %policy_id = getelementptr inbounds %struct.TS_tst_info_st, %struct.TS_tst_info_st* %a, i64 0, i32 1
  %0 = load %struct.asn1_object_st*, %struct.asn1_object_st** %policy_id, align 8, !tbaa !14
  %cmp = icmp eq %struct.asn1_object_st* %0, %policy
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call = tail call %struct.asn1_object_st* @OBJ_dup(%struct.asn1_object_st* noundef %policy) #5
  %cmp1 = icmp eq %struct.asn1_object_st* %call, null
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 76, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.TS_TST_INFO_set_policy_id, i64 0, i64 0)) #5
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 47, i32 noundef 786688, i8* noundef null) #5
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %1 = load %struct.asn1_object_st*, %struct.asn1_object_st** %policy_id, align 8, !tbaa !14
  tail call void @ASN1_OBJECT_free(%struct.asn1_object_st* noundef %1) #5
  store %struct.asn1_object_st* %call, %struct.asn1_object_st** %policy_id, align 8, !tbaa !14
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end3, %if.then2
  %retval.0 = phi i32 [ 0, %if.then2 ], [ 1, %if.end3 ], [ 1, %entry ]
  ret i32 %retval.0
}

declare %struct.asn1_object_st* @OBJ_dup(%struct.asn1_object_st* noundef) local_unnamed_addr #1

declare void @ASN1_OBJECT_free(%struct.asn1_object_st* noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define %struct.asn1_object_st* @TS_TST_INFO_get_policy_id(%struct.TS_tst_info_st* nocapture noundef readonly %a) local_unnamed_addr #2 {
entry:
  %policy_id = getelementptr inbounds %struct.TS_tst_info_st, %struct.TS_tst_info_st* %a, i64 0, i32 1
  %0 = load %struct.asn1_object_st*, %struct.asn1_object_st** %policy_id, align 8, !tbaa !14
  ret %struct.asn1_object_st* %0
}

; Function Attrs: noinline nounwind uwtable
define i32 @TS_TST_INFO_set_msg_imprint(%struct.TS_tst_info_st* nocapture noundef %a, %struct.TS_msg_imprint_st* noundef %msg_imprint) local_unnamed_addr #0 {
entry:
  %msg_imprint1 = getelementptr inbounds %struct.TS_tst_info_st, %struct.TS_tst_info_st* %a, i64 0, i32 2
  %0 = load %struct.TS_msg_imprint_st*, %struct.TS_msg_imprint_st** %msg_imprint1, align 8, !tbaa !15
  %cmp = icmp eq %struct.TS_msg_imprint_st* %0, %msg_imprint
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call = tail call %struct.TS_msg_imprint_st* @TS_MSG_IMPRINT_dup(%struct.TS_msg_imprint_st* noundef %msg_imprint) #5
  %cmp2 = icmp eq %struct.TS_msg_imprint_st* %call, null
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 97, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.TS_TST_INFO_set_msg_imprint, i64 0, i64 0)) #5
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 47, i32 noundef 786688, i8* noundef null) #5
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %1 = load %struct.TS_msg_imprint_st*, %struct.TS_msg_imprint_st** %msg_imprint1, align 8, !tbaa !15
  tail call void @TS_MSG_IMPRINT_free(%struct.TS_msg_imprint_st* noundef %1) #5
  store %struct.TS_msg_imprint_st* %call, %struct.TS_msg_imprint_st** %msg_imprint1, align 8, !tbaa !15
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end4, %if.then3
  %retval.0 = phi i32 [ 0, %if.then3 ], [ 1, %if.end4 ], [ 1, %entry ]
  ret i32 %retval.0
}

declare %struct.TS_msg_imprint_st* @TS_MSG_IMPRINT_dup(%struct.TS_msg_imprint_st* noundef) local_unnamed_addr #1

declare void @TS_MSG_IMPRINT_free(%struct.TS_msg_imprint_st* noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define %struct.TS_msg_imprint_st* @TS_TST_INFO_get_msg_imprint(%struct.TS_tst_info_st* nocapture noundef readonly %a) local_unnamed_addr #2 {
entry:
  %msg_imprint = getelementptr inbounds %struct.TS_tst_info_st, %struct.TS_tst_info_st* %a, i64 0, i32 2
  %0 = load %struct.TS_msg_imprint_st*, %struct.TS_msg_imprint_st** %msg_imprint, align 8, !tbaa !15
  ret %struct.TS_msg_imprint_st* %0
}

; Function Attrs: noinline nounwind uwtable
define i32 @TS_TST_INFO_set_serial(%struct.TS_tst_info_st* nocapture noundef %a, %struct.asn1_string_st* noundef %serial) local_unnamed_addr #0 {
entry:
  %serial1 = getelementptr inbounds %struct.TS_tst_info_st, %struct.TS_tst_info_st* %a, i64 0, i32 3
  %0 = load %struct.asn1_string_st*, %struct.asn1_string_st** %serial1, align 8, !tbaa !16
  %cmp = icmp eq %struct.asn1_string_st* %0, %serial
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call = tail call %struct.asn1_string_st* @ASN1_INTEGER_dup(%struct.asn1_string_st* noundef %serial) #5
  %cmp2 = icmp eq %struct.asn1_string_st* %call, null
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 118, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.TS_TST_INFO_set_serial, i64 0, i64 0)) #5
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 47, i32 noundef 786688, i8* noundef null) #5
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %1 = load %struct.asn1_string_st*, %struct.asn1_string_st** %serial1, align 8, !tbaa !16
  tail call void @ASN1_INTEGER_free(%struct.asn1_string_st* noundef %1) #5
  store %struct.asn1_string_st* %call, %struct.asn1_string_st** %serial1, align 8, !tbaa !16
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end4, %if.then3
  %retval.0 = phi i32 [ 0, %if.then3 ], [ 1, %if.end4 ], [ 1, %entry ]
  ret i32 %retval.0
}

declare %struct.asn1_string_st* @ASN1_INTEGER_dup(%struct.asn1_string_st* noundef) local_unnamed_addr #1

declare void @ASN1_INTEGER_free(%struct.asn1_string_st* noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define %struct.asn1_string_st* @TS_TST_INFO_get_serial(%struct.TS_tst_info_st* nocapture noundef readonly %a) local_unnamed_addr #2 {
entry:
  %serial = getelementptr inbounds %struct.TS_tst_info_st, %struct.TS_tst_info_st* %a, i64 0, i32 3
  %0 = load %struct.asn1_string_st*, %struct.asn1_string_st** %serial, align 8, !tbaa !16
  ret %struct.asn1_string_st* %0
}

; Function Attrs: noinline nounwind uwtable
define i32 @TS_TST_INFO_set_time(%struct.TS_tst_info_st* nocapture noundef %a, %struct.asn1_string_st* noundef %gtime) local_unnamed_addr #0 {
entry:
  %time = getelementptr inbounds %struct.TS_tst_info_st, %struct.TS_tst_info_st* %a, i64 0, i32 4
  %0 = load %struct.asn1_string_st*, %struct.asn1_string_st** %time, align 8, !tbaa !17
  %cmp = icmp eq %struct.asn1_string_st* %0, %gtime
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call = tail call %struct.asn1_string_st* @ASN1_STRING_dup(%struct.asn1_string_st* noundef %gtime) #5
  %cmp1 = icmp eq %struct.asn1_string_st* %call, null
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 139, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.TS_TST_INFO_set_time, i64 0, i64 0)) #5
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 47, i32 noundef 786688, i8* noundef null) #5
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %1 = load %struct.asn1_string_st*, %struct.asn1_string_st** %time, align 8, !tbaa !17
  tail call void @ASN1_GENERALIZEDTIME_free(%struct.asn1_string_st* noundef %1) #5
  store %struct.asn1_string_st* %call, %struct.asn1_string_st** %time, align 8, !tbaa !17
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end3, %if.then2
  %retval.0 = phi i32 [ 0, %if.then2 ], [ 1, %if.end3 ], [ 1, %entry ]
  ret i32 %retval.0
}

declare %struct.asn1_string_st* @ASN1_STRING_dup(%struct.asn1_string_st* noundef) local_unnamed_addr #1

declare void @ASN1_GENERALIZEDTIME_free(%struct.asn1_string_st* noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define %struct.asn1_string_st* @TS_TST_INFO_get_time(%struct.TS_tst_info_st* nocapture noundef readonly %a) local_unnamed_addr #2 {
entry:
  %time = getelementptr inbounds %struct.TS_tst_info_st, %struct.TS_tst_info_st* %a, i64 0, i32 4
  %0 = load %struct.asn1_string_st*, %struct.asn1_string_st** %time, align 8, !tbaa !17
  ret %struct.asn1_string_st* %0
}

; Function Attrs: noinline nounwind uwtable
define i32 @TS_TST_INFO_set_accuracy(%struct.TS_tst_info_st* nocapture noundef %a, %struct.TS_accuracy_st* noundef %accuracy) local_unnamed_addr #0 {
entry:
  %accuracy1 = getelementptr inbounds %struct.TS_tst_info_st, %struct.TS_tst_info_st* %a, i64 0, i32 5
  %0 = load %struct.TS_accuracy_st*, %struct.TS_accuracy_st** %accuracy1, align 8, !tbaa !18
  %cmp = icmp eq %struct.TS_accuracy_st* %0, %accuracy
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call = tail call %struct.TS_accuracy_st* @TS_ACCURACY_dup(%struct.TS_accuracy_st* noundef %accuracy) #5
  %cmp2 = icmp eq %struct.TS_accuracy_st* %call, null
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 160, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.TS_TST_INFO_set_accuracy, i64 0, i64 0)) #5
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 47, i32 noundef 786688, i8* noundef null) #5
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %1 = load %struct.TS_accuracy_st*, %struct.TS_accuracy_st** %accuracy1, align 8, !tbaa !18
  tail call void @TS_ACCURACY_free(%struct.TS_accuracy_st* noundef %1) #5
  store %struct.TS_accuracy_st* %call, %struct.TS_accuracy_st** %accuracy1, align 8, !tbaa !18
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end4, %if.then3
  %retval.0 = phi i32 [ 0, %if.then3 ], [ 1, %if.end4 ], [ 1, %entry ]
  ret i32 %retval.0
}

declare %struct.TS_accuracy_st* @TS_ACCURACY_dup(%struct.TS_accuracy_st* noundef) local_unnamed_addr #1

declare void @TS_ACCURACY_free(%struct.TS_accuracy_st* noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define %struct.TS_accuracy_st* @TS_TST_INFO_get_accuracy(%struct.TS_tst_info_st* nocapture noundef readonly %a) local_unnamed_addr #2 {
entry:
  %accuracy = getelementptr inbounds %struct.TS_tst_info_st, %struct.TS_tst_info_st* %a, i64 0, i32 5
  %0 = load %struct.TS_accuracy_st*, %struct.TS_accuracy_st** %accuracy, align 8, !tbaa !18
  ret %struct.TS_accuracy_st* %0
}

; Function Attrs: noinline nounwind uwtable
define i32 @TS_ACCURACY_set_seconds(%struct.TS_accuracy_st* nocapture noundef %a, %struct.asn1_string_st* noundef %seconds) local_unnamed_addr #0 {
entry:
  %seconds1 = getelementptr inbounds %struct.TS_accuracy_st, %struct.TS_accuracy_st* %a, i64 0, i32 0
  %0 = load %struct.asn1_string_st*, %struct.asn1_string_st** %seconds1, align 8, !tbaa !19
  %cmp = icmp eq %struct.asn1_string_st* %0, %seconds
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call = tail call %struct.asn1_string_st* @ASN1_INTEGER_dup(%struct.asn1_string_st* noundef %seconds) #5
  %cmp2 = icmp eq %struct.asn1_string_st* %call, null
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 181, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.TS_ACCURACY_set_seconds, i64 0, i64 0)) #5
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 47, i32 noundef 786688, i8* noundef null) #5
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %1 = load %struct.asn1_string_st*, %struct.asn1_string_st** %seconds1, align 8, !tbaa !19
  tail call void @ASN1_INTEGER_free(%struct.asn1_string_st* noundef %1) #5
  store %struct.asn1_string_st* %call, %struct.asn1_string_st** %seconds1, align 8, !tbaa !19
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end4, %if.then3
  %retval.0 = phi i32 [ 0, %if.then3 ], [ 1, %if.end4 ], [ 1, %entry ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define %struct.asn1_string_st* @TS_ACCURACY_get_seconds(%struct.TS_accuracy_st* nocapture noundef readonly %a) local_unnamed_addr #2 {
entry:
  %seconds = getelementptr inbounds %struct.TS_accuracy_st, %struct.TS_accuracy_st* %a, i64 0, i32 0
  %0 = load %struct.asn1_string_st*, %struct.asn1_string_st** %seconds, align 8, !tbaa !19
  ret %struct.asn1_string_st* %0
}

; Function Attrs: noinline nounwind uwtable
define i32 @TS_ACCURACY_set_millis(%struct.TS_accuracy_st* nocapture noundef %a, %struct.asn1_string_st* noundef %millis) local_unnamed_addr #0 {
entry:
  %millis1 = getelementptr inbounds %struct.TS_accuracy_st, %struct.TS_accuracy_st* %a, i64 0, i32 1
  %0 = load %struct.asn1_string_st*, %struct.asn1_string_st** %millis1, align 8, !tbaa !21
  %cmp = icmp eq %struct.asn1_string_st* %0, %millis
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %cmp2.not = icmp eq %struct.asn1_string_st* %millis, null
  br i1 %cmp2.not, label %if.end7, label %if.then3

if.then3:                                         ; preds = %if.end
  %call = tail call %struct.asn1_string_st* @ASN1_INTEGER_dup(%struct.asn1_string_st* noundef nonnull %millis) #5
  %cmp4 = icmp eq %struct.asn1_string_st* %call, null
  br i1 %cmp4, label %if.then5, label %if.then3.if.end7_crit_edge

if.then3.if.end7_crit_edge:                       ; preds = %if.then3
  %.pre = load %struct.asn1_string_st*, %struct.asn1_string_st** %millis1, align 8, !tbaa !21
  br label %if.end7

if.then5:                                         ; preds = %if.then3
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 203, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.TS_ACCURACY_set_millis, i64 0, i64 0)) #5
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 47, i32 noundef 786688, i8* noundef null) #5
  br label %cleanup

if.end7:                                          ; preds = %if.then3.if.end7_crit_edge, %if.end
  %1 = phi %struct.asn1_string_st* [ %.pre, %if.then3.if.end7_crit_edge ], [ %0, %if.end ]
  %new_millis.0 = phi %struct.asn1_string_st* [ %call, %if.then3.if.end7_crit_edge ], [ null, %if.end ]
  tail call void @ASN1_INTEGER_free(%struct.asn1_string_st* noundef %1) #5
  store %struct.asn1_string_st* %new_millis.0, %struct.asn1_string_st** %millis1, align 8, !tbaa !21
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end7, %if.then5
  %retval.0 = phi i32 [ 0, %if.then5 ], [ 1, %if.end7 ], [ 1, %entry ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define %struct.asn1_string_st* @TS_ACCURACY_get_millis(%struct.TS_accuracy_st* nocapture noundef readonly %a) local_unnamed_addr #2 {
entry:
  %millis = getelementptr inbounds %struct.TS_accuracy_st, %struct.TS_accuracy_st* %a, i64 0, i32 1
  %0 = load %struct.asn1_string_st*, %struct.asn1_string_st** %millis, align 8, !tbaa !21
  ret %struct.asn1_string_st* %0
}

; Function Attrs: noinline nounwind uwtable
define i32 @TS_ACCURACY_set_micros(%struct.TS_accuracy_st* nocapture noundef %a, %struct.asn1_string_st* noundef %micros) local_unnamed_addr #0 {
entry:
  %micros1 = getelementptr inbounds %struct.TS_accuracy_st, %struct.TS_accuracy_st* %a, i64 0, i32 2
  %0 = load %struct.asn1_string_st*, %struct.asn1_string_st** %micros1, align 8, !tbaa !22
  %cmp = icmp eq %struct.asn1_string_st* %0, %micros
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %cmp2.not = icmp eq %struct.asn1_string_st* %micros, null
  br i1 %cmp2.not, label %if.end7, label %if.then3

if.then3:                                         ; preds = %if.end
  %call = tail call %struct.asn1_string_st* @ASN1_INTEGER_dup(%struct.asn1_string_st* noundef nonnull %micros) #5
  %cmp4 = icmp eq %struct.asn1_string_st* %call, null
  br i1 %cmp4, label %if.then5, label %if.then3.if.end7_crit_edge

if.then3.if.end7_crit_edge:                       ; preds = %if.then3
  %.pre = load %struct.asn1_string_st*, %struct.asn1_string_st** %micros1, align 8, !tbaa !22
  br label %if.end7

if.then5:                                         ; preds = %if.then3
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 226, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.TS_ACCURACY_set_micros, i64 0, i64 0)) #5
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 47, i32 noundef 786688, i8* noundef null) #5
  br label %cleanup

if.end7:                                          ; preds = %if.then3.if.end7_crit_edge, %if.end
  %1 = phi %struct.asn1_string_st* [ %.pre, %if.then3.if.end7_crit_edge ], [ %0, %if.end ]
  %new_micros.0 = phi %struct.asn1_string_st* [ %call, %if.then3.if.end7_crit_edge ], [ null, %if.end ]
  tail call void @ASN1_INTEGER_free(%struct.asn1_string_st* noundef %1) #5
  store %struct.asn1_string_st* %new_micros.0, %struct.asn1_string_st** %micros1, align 8, !tbaa !22
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end7, %if.then5
  %retval.0 = phi i32 [ 0, %if.then5 ], [ 1, %if.end7 ], [ 1, %entry ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define %struct.asn1_string_st* @TS_ACCURACY_get_micros(%struct.TS_accuracy_st* nocapture noundef readonly %a) local_unnamed_addr #2 {
entry:
  %micros = getelementptr inbounds %struct.TS_accuracy_st, %struct.TS_accuracy_st* %a, i64 0, i32 2
  %0 = load %struct.asn1_string_st*, %struct.asn1_string_st** %micros, align 8, !tbaa !22
  ret %struct.asn1_string_st* %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define i32 @TS_TST_INFO_set_ordering(%struct.TS_tst_info_st* nocapture noundef writeonly %a, i32 noundef %ordering) local_unnamed_addr #3 {
entry:
  %tobool.not = icmp eq i32 %ordering, 0
  %cond = select i1 %tobool.not, i32 0, i32 255
  %ordering1 = getelementptr inbounds %struct.TS_tst_info_st, %struct.TS_tst_info_st* %a, i64 0, i32 6
  store i32 %cond, i32* %ordering1, align 8, !tbaa !23
  ret i32 1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define i32 @TS_TST_INFO_get_ordering(%struct.TS_tst_info_st* nocapture noundef readonly %a) local_unnamed_addr #2 {
entry:
  %ordering = getelementptr inbounds %struct.TS_tst_info_st, %struct.TS_tst_info_st* %a, i64 0, i32 6
  %0 = load i32, i32* %ordering, align 8, !tbaa !23
  %tobool.not = icmp ne i32 %0, 0
  %cond = zext i1 %tobool.not to i32
  ret i32 %cond
}

; Function Attrs: noinline nounwind uwtable
define i32 @TS_TST_INFO_set_nonce(%struct.TS_tst_info_st* nocapture noundef %a, %struct.asn1_string_st* noundef %nonce) local_unnamed_addr #0 {
entry:
  %nonce1 = getelementptr inbounds %struct.TS_tst_info_st, %struct.TS_tst_info_st* %a, i64 0, i32 7
  %0 = load %struct.asn1_string_st*, %struct.asn1_string_st** %nonce1, align 8, !tbaa !24
  %cmp = icmp eq %struct.asn1_string_st* %0, %nonce
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call = tail call %struct.asn1_string_st* @ASN1_INTEGER_dup(%struct.asn1_string_st* noundef %nonce) #5
  %cmp2 = icmp eq %struct.asn1_string_st* %call, null
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 259, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.TS_TST_INFO_set_nonce, i64 0, i64 0)) #5
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 47, i32 noundef 786688, i8* noundef null) #5
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %1 = load %struct.asn1_string_st*, %struct.asn1_string_st** %nonce1, align 8, !tbaa !24
  tail call void @ASN1_INTEGER_free(%struct.asn1_string_st* noundef %1) #5
  store %struct.asn1_string_st* %call, %struct.asn1_string_st** %nonce1, align 8, !tbaa !24
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end4, %if.then3
  %retval.0 = phi i32 [ 0, %if.then3 ], [ 1, %if.end4 ], [ 1, %entry ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define %struct.asn1_string_st* @TS_TST_INFO_get_nonce(%struct.TS_tst_info_st* nocapture noundef readonly %a) local_unnamed_addr #2 {
entry:
  %nonce = getelementptr inbounds %struct.TS_tst_info_st, %struct.TS_tst_info_st* %a, i64 0, i32 7
  %0 = load %struct.asn1_string_st*, %struct.asn1_string_st** %nonce, align 8, !tbaa !24
  ret %struct.asn1_string_st* %0
}

; Function Attrs: noinline nounwind uwtable
define i32 @TS_TST_INFO_set_tsa(%struct.TS_tst_info_st* nocapture noundef %a, %struct.GENERAL_NAME_st* noundef %tsa) local_unnamed_addr #0 {
entry:
  %tsa1 = getelementptr inbounds %struct.TS_tst_info_st, %struct.TS_tst_info_st* %a, i64 0, i32 8
  %0 = load %struct.GENERAL_NAME_st*, %struct.GENERAL_NAME_st** %tsa1, align 8, !tbaa !25
  %cmp = icmp eq %struct.GENERAL_NAME_st* %0, %tsa
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call = tail call %struct.GENERAL_NAME_st* @GENERAL_NAME_dup(%struct.GENERAL_NAME_st* noundef %tsa) #5
  %cmp2 = icmp eq %struct.GENERAL_NAME_st* %call, null
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 280, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.TS_TST_INFO_set_tsa, i64 0, i64 0)) #5
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 47, i32 noundef 786688, i8* noundef null) #5
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %1 = load %struct.GENERAL_NAME_st*, %struct.GENERAL_NAME_st** %tsa1, align 8, !tbaa !25
  tail call void @GENERAL_NAME_free(%struct.GENERAL_NAME_st* noundef %1) #5
  store %struct.GENERAL_NAME_st* %call, %struct.GENERAL_NAME_st** %tsa1, align 8, !tbaa !25
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end4, %if.then3
  %retval.0 = phi i32 [ 0, %if.then3 ], [ 1, %if.end4 ], [ 1, %entry ]
  ret i32 %retval.0
}

declare %struct.GENERAL_NAME_st* @GENERAL_NAME_dup(%struct.GENERAL_NAME_st* noundef) local_unnamed_addr #1

declare void @GENERAL_NAME_free(%struct.GENERAL_NAME_st* noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define %struct.GENERAL_NAME_st* @TS_TST_INFO_get_tsa(%struct.TS_tst_info_st* nocapture noundef readonly %a) local_unnamed_addr #2 {
entry:
  %tsa = getelementptr inbounds %struct.TS_tst_info_st, %struct.TS_tst_info_st* %a, i64 0, i32 8
  %0 = load %struct.GENERAL_NAME_st*, %struct.GENERAL_NAME_st** %tsa, align 8, !tbaa !25
  ret %struct.GENERAL_NAME_st* %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define %struct.stack_st_X509_EXTENSION* @TS_TST_INFO_get_exts(%struct.TS_tst_info_st* nocapture noundef readonly %a) local_unnamed_addr #2 {
entry:
  %extensions = getelementptr inbounds %struct.TS_tst_info_st, %struct.TS_tst_info_st* %a, i64 0, i32 9
  %0 = load %struct.stack_st_X509_EXTENSION*, %struct.stack_st_X509_EXTENSION** %extensions, align 8, !tbaa !26
  ret %struct.stack_st_X509_EXTENSION* %0
}

; Function Attrs: noinline nounwind uwtable
define void @TS_TST_INFO_ext_free(%struct.TS_tst_info_st* noundef %a) local_unnamed_addr #0 {
entry:
  %tobool.not = icmp eq %struct.TS_tst_info_st* %a, null
  br i1 %tobool.not, label %return, label %if.end

if.end:                                           ; preds = %entry
  %extensions = getelementptr inbounds %struct.TS_tst_info_st, %struct.TS_tst_info_st* %a, i64 0, i32 9
  %0 = load %struct.stack_st_X509_EXTENSION*, %struct.stack_st_X509_EXTENSION** %extensions, align 8, !tbaa !26
  %call = tail call fastcc %struct.stack_st* @ossl_check_X509_EXTENSION_sk_type(%struct.stack_st_X509_EXTENSION* noundef %0) #6
  tail call void @OPENSSL_sk_pop_free(%struct.stack_st* noundef %call, void (i8*)* noundef bitcast (void (%struct.X509_extension_st*)* @X509_EXTENSION_free to void (i8*)*)) #5
  store %struct.stack_st_X509_EXTENSION* null, %struct.stack_st_X509_EXTENSION** %extensions, align 8, !tbaa !26
  br label %return

return:                                           ; preds = %entry, %if.end
  ret void
}

declare void @OPENSSL_sk_pop_free(%struct.stack_st* noundef, void (i8*)* noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_X509_EXTENSION_sk_type(%struct.stack_st_X509_EXTENSION* noundef readnone %sk) unnamed_addr #4 {
entry:
  %0 = bitcast %struct.stack_st_X509_EXTENSION* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

declare void @X509_EXTENSION_free(%struct.X509_extension_st* noundef) #1

; Function Attrs: noinline nounwind uwtable
define i32 @TS_TST_INFO_get_ext_count(%struct.TS_tst_info_st* nocapture noundef readonly %a) local_unnamed_addr #0 {
entry:
  %extensions = getelementptr inbounds %struct.TS_tst_info_st, %struct.TS_tst_info_st* %a, i64 0, i32 9
  %0 = load %struct.stack_st_X509_EXTENSION*, %struct.stack_st_X509_EXTENSION** %extensions, align 8, !tbaa !26
  %call = tail call i32 @X509v3_get_ext_count(%struct.stack_st_X509_EXTENSION* noundef %0) #5
  ret i32 %call
}

declare i32 @X509v3_get_ext_count(%struct.stack_st_X509_EXTENSION* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define i32 @TS_TST_INFO_get_ext_by_NID(%struct.TS_tst_info_st* nocapture noundef readonly %a, i32 noundef %nid, i32 noundef %lastpos) local_unnamed_addr #0 {
entry:
  %extensions = getelementptr inbounds %struct.TS_tst_info_st, %struct.TS_tst_info_st* %a, i64 0, i32 9
  %0 = load %struct.stack_st_X509_EXTENSION*, %struct.stack_st_X509_EXTENSION** %extensions, align 8, !tbaa !26
  %call = tail call i32 @X509v3_get_ext_by_NID(%struct.stack_st_X509_EXTENSION* noundef %0, i32 noundef %nid, i32 noundef %lastpos) #5
  ret i32 %call
}

declare i32 @X509v3_get_ext_by_NID(%struct.stack_st_X509_EXTENSION* noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define i32 @TS_TST_INFO_get_ext_by_OBJ(%struct.TS_tst_info_st* nocapture noundef readonly %a, %struct.asn1_object_st* noundef %obj, i32 noundef %lastpos) local_unnamed_addr #0 {
entry:
  %extensions = getelementptr inbounds %struct.TS_tst_info_st, %struct.TS_tst_info_st* %a, i64 0, i32 9
  %0 = load %struct.stack_st_X509_EXTENSION*, %struct.stack_st_X509_EXTENSION** %extensions, align 8, !tbaa !26
  %call = tail call i32 @X509v3_get_ext_by_OBJ(%struct.stack_st_X509_EXTENSION* noundef %0, %struct.asn1_object_st* noundef %obj, i32 noundef %lastpos) #5
  ret i32 %call
}

declare i32 @X509v3_get_ext_by_OBJ(%struct.stack_st_X509_EXTENSION* noundef, %struct.asn1_object_st* noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define i32 @TS_TST_INFO_get_ext_by_critical(%struct.TS_tst_info_st* nocapture noundef readonly %a, i32 noundef %crit, i32 noundef %lastpos) local_unnamed_addr #0 {
entry:
  %extensions = getelementptr inbounds %struct.TS_tst_info_st, %struct.TS_tst_info_st* %a, i64 0, i32 9
  %0 = load %struct.stack_st_X509_EXTENSION*, %struct.stack_st_X509_EXTENSION** %extensions, align 8, !tbaa !26
  %call = tail call i32 @X509v3_get_ext_by_critical(%struct.stack_st_X509_EXTENSION* noundef %0, i32 noundef %crit, i32 noundef %lastpos) #5
  ret i32 %call
}

declare i32 @X509v3_get_ext_by_critical(%struct.stack_st_X509_EXTENSION* noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define %struct.X509_extension_st* @TS_TST_INFO_get_ext(%struct.TS_tst_info_st* nocapture noundef readonly %a, i32 noundef %loc) local_unnamed_addr #0 {
entry:
  %extensions = getelementptr inbounds %struct.TS_tst_info_st, %struct.TS_tst_info_st* %a, i64 0, i32 9
  %0 = load %struct.stack_st_X509_EXTENSION*, %struct.stack_st_X509_EXTENSION** %extensions, align 8, !tbaa !26
  %call = tail call %struct.X509_extension_st* @X509v3_get_ext(%struct.stack_st_X509_EXTENSION* noundef %0, i32 noundef %loc) #5
  ret %struct.X509_extension_st* %call
}

declare %struct.X509_extension_st* @X509v3_get_ext(%struct.stack_st_X509_EXTENSION* noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define %struct.X509_extension_st* @TS_TST_INFO_delete_ext(%struct.TS_tst_info_st* nocapture noundef readonly %a, i32 noundef %loc) local_unnamed_addr #0 {
entry:
  %extensions = getelementptr inbounds %struct.TS_tst_info_st, %struct.TS_tst_info_st* %a, i64 0, i32 9
  %0 = load %struct.stack_st_X509_EXTENSION*, %struct.stack_st_X509_EXTENSION** %extensions, align 8, !tbaa !26
  %call = tail call %struct.X509_extension_st* @X509v3_delete_ext(%struct.stack_st_X509_EXTENSION* noundef %0, i32 noundef %loc) #5
  ret %struct.X509_extension_st* %call
}

declare %struct.X509_extension_st* @X509v3_delete_ext(%struct.stack_st_X509_EXTENSION* noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define i32 @TS_TST_INFO_add_ext(%struct.TS_tst_info_st* noundef %a, %struct.X509_extension_st* noundef %ex, i32 noundef %loc) local_unnamed_addr #0 {
entry:
  %extensions = getelementptr inbounds %struct.TS_tst_info_st, %struct.TS_tst_info_st* %a, i64 0, i32 9
  %call = tail call %struct.stack_st_X509_EXTENSION* @X509v3_add_ext(%struct.stack_st_X509_EXTENSION** noundef nonnull %extensions, %struct.X509_extension_st* noundef %ex, i32 noundef %loc) #5
  %cmp = icmp ne %struct.stack_st_X509_EXTENSION* %call, null
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

declare %struct.stack_st_X509_EXTENSION* @X509v3_add_ext(%struct.stack_st_X509_EXTENSION** noundef, %struct.X509_extension_st* noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define i8* @TS_TST_INFO_get_ext_d2i(%struct.TS_tst_info_st* nocapture noundef readonly %a, i32 noundef %nid, i32* noundef %crit, i32* noundef %idx) local_unnamed_addr #0 {
entry:
  %extensions = getelementptr inbounds %struct.TS_tst_info_st, %struct.TS_tst_info_st* %a, i64 0, i32 9
  %0 = load %struct.stack_st_X509_EXTENSION*, %struct.stack_st_X509_EXTENSION** %extensions, align 8, !tbaa !26
  %call = tail call i8* @X509V3_get_d2i(%struct.stack_st_X509_EXTENSION* noundef %0, i32 noundef %nid, i32* noundef %crit, i32* noundef %idx) #5
  ret i8* %call
}

declare i8* @X509V3_get_d2i(%struct.stack_st_X509_EXTENSION* noundef, i32 noundef, i32* noundef, i32* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define i32 @TS_STATUS_INFO_set_status(%struct.TS_status_info_st* nocapture noundef readonly %a, i32 noundef %i) local_unnamed_addr #0 {
entry:
  %status = getelementptr inbounds %struct.TS_status_info_st, %struct.TS_status_info_st* %a, i64 0, i32 0
  %0 = load %struct.asn1_string_st*, %struct.asn1_string_st** %status, align 8, !tbaa !27
  %conv = sext i32 %i to i64
  %call = tail call i32 @ASN1_INTEGER_set(%struct.asn1_string_st* noundef %0, i64 noundef %conv) #5
  ret i32 %call
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define %struct.asn1_string_st* @TS_STATUS_INFO_get0_status(%struct.TS_status_info_st* nocapture noundef readonly %a) local_unnamed_addr #2 {
entry:
  %status = getelementptr inbounds %struct.TS_status_info_st, %struct.TS_status_info_st* %a, i64 0, i32 0
  %0 = load %struct.asn1_string_st*, %struct.asn1_string_st** %status, align 8, !tbaa !27
  ret %struct.asn1_string_st* %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define %struct.stack_st_ASN1_UTF8STRING* @TS_STATUS_INFO_get0_text(%struct.TS_status_info_st* nocapture noundef readonly %a) local_unnamed_addr #2 {
entry:
  %text = getelementptr inbounds %struct.TS_status_info_st, %struct.TS_status_info_st* %a, i64 0, i32 1
  %0 = load %struct.stack_st_ASN1_UTF8STRING*, %struct.stack_st_ASN1_UTF8STRING** %text, align 8, !tbaa !29
  ret %struct.stack_st_ASN1_UTF8STRING* %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define %struct.asn1_string_st* @TS_STATUS_INFO_get0_failure_info(%struct.TS_status_info_st* nocapture noundef readonly %a) local_unnamed_addr #2 {
entry:
  %failure_info = getelementptr inbounds %struct.TS_status_info_st, %struct.TS_status_info_st* %a, i64 0, i32 2
  %0 = load %struct.asn1_string_st*, %struct.asn1_string_st** %failure_info, align 8, !tbaa !30
  ret %struct.asn1_string_st* %0
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nobuiltin nounwind "no-builtins" }
attributes #6 = { nobuiltin "no-builtins" }

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
!9 = !{!5, !6, i64 8}
!10 = !{!5, !6, i64 16}
!11 = !{!12, !6, i64 0}
!12 = !{!"TS_tst_info_st", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !6, i64 40, !13, i64 48, !6, i64 56, !6, i64 64, !6, i64 72}
!13 = !{!"int", !7, i64 0}
!14 = !{!12, !6, i64 8}
!15 = !{!12, !6, i64 16}
!16 = !{!12, !6, i64 24}
!17 = !{!12, !6, i64 32}
!18 = !{!12, !6, i64 40}
!19 = !{!20, !6, i64 0}
!20 = !{!"TS_accuracy_st", !6, i64 0, !6, i64 8, !6, i64 16}
!21 = !{!20, !6, i64 8}
!22 = !{!20, !6, i64 16}
!23 = !{!12, !13, i64 48}
!24 = !{!12, !6, i64 56}
!25 = !{!12, !6, i64 64}
!26 = !{!12, !6, i64 72}
!27 = !{!28, !6, i64 0}
!28 = !{!"TS_status_info_st", !6, i64 0, !6, i64 8, !6, i64 16}
!29 = !{!28, !6, i64 8}
!30 = !{!28, !6, i64 16}
