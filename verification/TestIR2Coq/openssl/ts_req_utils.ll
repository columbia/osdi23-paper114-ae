; ModuleID = 'crypto/ts/ts_req_utils.c'
source_filename = "crypto/ts/ts_req_utils.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TS_req_st = type { %struct.asn1_string_st*, %struct.TS_msg_imprint_st*, %struct.asn1_object_st*, %struct.asn1_string_st*, i32, %struct.stack_st_X509_EXTENSION* }
%struct.TS_msg_imprint_st = type { %struct.X509_algor_st*, %struct.asn1_string_st* }
%struct.X509_algor_st = type { %struct.asn1_object_st*, %struct.asn1_type_st* }
%struct.asn1_type_st = type { i32, %union.anon }
%union.anon = type { i8* }
%struct.asn1_object_st = type opaque
%struct.asn1_string_st = type { i32, i32, i8*, i64 }
%struct.stack_st_X509_EXTENSION = type opaque
%struct.stack_st = type opaque
%struct.X509_extension_st = type opaque

@.str = private unnamed_addr constant [25 x i8] c"crypto/ts/ts_req_utils.c\00", align 1
@__func__.TS_REQ_set_msg_imprint = private unnamed_addr constant [23 x i8] c"TS_REQ_set_msg_imprint\00", align 1
@__func__.TS_MSG_IMPRINT_set_algo = private unnamed_addr constant [24 x i8] c"TS_MSG_IMPRINT_set_algo\00", align 1
@__func__.TS_REQ_set_policy_id = private unnamed_addr constant [21 x i8] c"TS_REQ_set_policy_id\00", align 1
@__func__.TS_REQ_set_nonce = private unnamed_addr constant [17 x i8] c"TS_REQ_set_nonce\00", align 1

; Function Attrs: noinline nounwind uwtable
define i32 @TS_REQ_set_version(%struct.TS_req_st* nocapture noundef readonly %a, i64 noundef %version) local_unnamed_addr #0 {
entry:
  %version1 = getelementptr inbounds %struct.TS_req_st, %struct.TS_req_st* %a, i64 0, i32 0
  %0 = load %struct.asn1_string_st*, %struct.asn1_string_st** %version1, align 8, !tbaa !4
  %call = tail call i32 @ASN1_INTEGER_set(%struct.asn1_string_st* noundef %0, i64 noundef %version) #5
  ret i32 %call
}

declare i32 @ASN1_INTEGER_set(%struct.asn1_string_st* noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define i64 @TS_REQ_get_version(%struct.TS_req_st* nocapture noundef readonly %a) local_unnamed_addr #0 {
entry:
  %version = getelementptr inbounds %struct.TS_req_st, %struct.TS_req_st* %a, i64 0, i32 0
  %0 = load %struct.asn1_string_st*, %struct.asn1_string_st** %version, align 8, !tbaa !4
  %call = tail call i64 @ASN1_INTEGER_get(%struct.asn1_string_st* noundef %0) #5
  ret i64 %call
}

declare i64 @ASN1_INTEGER_get(%struct.asn1_string_st* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define i32 @TS_REQ_set_msg_imprint(%struct.TS_req_st* nocapture noundef %a, %struct.TS_msg_imprint_st* noundef %msg_imprint) local_unnamed_addr #0 {
entry:
  %msg_imprint1 = getelementptr inbounds %struct.TS_req_st, %struct.TS_req_st* %a, i64 0, i32 1
  %0 = load %struct.TS_msg_imprint_st*, %struct.TS_msg_imprint_st** %msg_imprint1, align 8, !tbaa !10
  %cmp = icmp eq %struct.TS_msg_imprint_st* %0, %msg_imprint
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call = tail call %struct.TS_msg_imprint_st* @TS_MSG_IMPRINT_dup(%struct.TS_msg_imprint_st* noundef %msg_imprint) #5
  %cmp2 = icmp eq %struct.TS_msg_imprint_st* %call, null
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 35, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.TS_REQ_set_msg_imprint, i64 0, i64 0)) #5
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 47, i32 noundef 786688, i8* noundef null) #5
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %1 = load %struct.TS_msg_imprint_st*, %struct.TS_msg_imprint_st** %msg_imprint1, align 8, !tbaa !10
  tail call void @TS_MSG_IMPRINT_free(%struct.TS_msg_imprint_st* noundef %1) #5
  store %struct.TS_msg_imprint_st* %call, %struct.TS_msg_imprint_st** %msg_imprint1, align 8, !tbaa !10
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end4, %if.then3
  %retval.0 = phi i32 [ 0, %if.then3 ], [ 1, %if.end4 ], [ 1, %entry ]
  ret i32 %retval.0
}

declare %struct.TS_msg_imprint_st* @TS_MSG_IMPRINT_dup(%struct.TS_msg_imprint_st* noundef) local_unnamed_addr #1

declare void @ERR_new() local_unnamed_addr #1

declare void @ERR_set_debug(i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #1

declare void @ERR_set_error(i32 noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #1

declare void @TS_MSG_IMPRINT_free(%struct.TS_msg_imprint_st* noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define %struct.TS_msg_imprint_st* @TS_REQ_get_msg_imprint(%struct.TS_req_st* nocapture noundef readonly %a) local_unnamed_addr #2 {
entry:
  %msg_imprint = getelementptr inbounds %struct.TS_req_st, %struct.TS_req_st* %a, i64 0, i32 1
  %0 = load %struct.TS_msg_imprint_st*, %struct.TS_msg_imprint_st** %msg_imprint, align 8, !tbaa !10
  ret %struct.TS_msg_imprint_st* %0
}

; Function Attrs: noinline nounwind uwtable
define i32 @TS_MSG_IMPRINT_set_algo(%struct.TS_msg_imprint_st* nocapture noundef %a, %struct.X509_algor_st* noundef %alg) local_unnamed_addr #0 {
entry:
  %hash_algo = getelementptr inbounds %struct.TS_msg_imprint_st, %struct.TS_msg_imprint_st* %a, i64 0, i32 0
  %0 = load %struct.X509_algor_st*, %struct.X509_algor_st** %hash_algo, align 8, !tbaa !11
  %cmp = icmp eq %struct.X509_algor_st* %0, %alg
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call = tail call %struct.X509_algor_st* @X509_ALGOR_dup(%struct.X509_algor_st* noundef %alg) #5
  %cmp1 = icmp eq %struct.X509_algor_st* %call, null
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 56, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.TS_MSG_IMPRINT_set_algo, i64 0, i64 0)) #5
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 47, i32 noundef 786688, i8* noundef null) #5
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %1 = load %struct.X509_algor_st*, %struct.X509_algor_st** %hash_algo, align 8, !tbaa !11
  tail call void @X509_ALGOR_free(%struct.X509_algor_st* noundef %1) #5
  store %struct.X509_algor_st* %call, %struct.X509_algor_st** %hash_algo, align 8, !tbaa !11
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end3, %if.then2
  %retval.0 = phi i32 [ 0, %if.then2 ], [ 1, %if.end3 ], [ 1, %entry ]
  ret i32 %retval.0
}

declare %struct.X509_algor_st* @X509_ALGOR_dup(%struct.X509_algor_st* noundef) local_unnamed_addr #1

declare void @X509_ALGOR_free(%struct.X509_algor_st* noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define %struct.X509_algor_st* @TS_MSG_IMPRINT_get_algo(%struct.TS_msg_imprint_st* nocapture noundef readonly %a) local_unnamed_addr #2 {
entry:
  %hash_algo = getelementptr inbounds %struct.TS_msg_imprint_st, %struct.TS_msg_imprint_st* %a, i64 0, i32 0
  %0 = load %struct.X509_algor_st*, %struct.X509_algor_st** %hash_algo, align 8, !tbaa !11
  ret %struct.X509_algor_st* %0
}

; Function Attrs: noinline nounwind uwtable
define i32 @TS_MSG_IMPRINT_set_msg(%struct.TS_msg_imprint_st* nocapture noundef readonly %a, i8* noundef %d, i32 noundef %len) local_unnamed_addr #0 {
entry:
  %hashed_msg = getelementptr inbounds %struct.TS_msg_imprint_st, %struct.TS_msg_imprint_st* %a, i64 0, i32 1
  %0 = load %struct.asn1_string_st*, %struct.asn1_string_st** %hashed_msg, align 8, !tbaa !13
  %call = tail call i32 @ASN1_OCTET_STRING_set(%struct.asn1_string_st* noundef %0, i8* noundef %d, i32 noundef %len) #5
  ret i32 %call
}

declare i32 @ASN1_OCTET_STRING_set(%struct.asn1_string_st* noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define %struct.asn1_string_st* @TS_MSG_IMPRINT_get_msg(%struct.TS_msg_imprint_st* nocapture noundef readonly %a) local_unnamed_addr #2 {
entry:
  %hashed_msg = getelementptr inbounds %struct.TS_msg_imprint_st, %struct.TS_msg_imprint_st* %a, i64 0, i32 1
  %0 = load %struct.asn1_string_st*, %struct.asn1_string_st** %hashed_msg, align 8, !tbaa !13
  ret %struct.asn1_string_st* %0
}

; Function Attrs: noinline nounwind uwtable
define i32 @TS_REQ_set_policy_id(%struct.TS_req_st* nocapture noundef %a, %struct.asn1_object_st* noundef %policy) local_unnamed_addr #0 {
entry:
  %policy_id = getelementptr inbounds %struct.TS_req_st, %struct.TS_req_st* %a, i64 0, i32 2
  %0 = load %struct.asn1_object_st*, %struct.asn1_object_st** %policy_id, align 8, !tbaa !14
  %cmp = icmp eq %struct.asn1_object_st* %0, %policy
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call = tail call %struct.asn1_object_st* @OBJ_dup(%struct.asn1_object_st* noundef %policy) #5
  %cmp1 = icmp eq %struct.asn1_object_st* %call, null
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 87, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.TS_REQ_set_policy_id, i64 0, i64 0)) #5
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
define %struct.asn1_object_st* @TS_REQ_get_policy_id(%struct.TS_req_st* nocapture noundef readonly %a) local_unnamed_addr #2 {
entry:
  %policy_id = getelementptr inbounds %struct.TS_req_st, %struct.TS_req_st* %a, i64 0, i32 2
  %0 = load %struct.asn1_object_st*, %struct.asn1_object_st** %policy_id, align 8, !tbaa !14
  ret %struct.asn1_object_st* %0
}

; Function Attrs: noinline nounwind uwtable
define i32 @TS_REQ_set_nonce(%struct.TS_req_st* nocapture noundef %a, %struct.asn1_string_st* noundef %nonce) local_unnamed_addr #0 {
entry:
  %nonce1 = getelementptr inbounds %struct.TS_req_st, %struct.TS_req_st* %a, i64 0, i32 3
  %0 = load %struct.asn1_string_st*, %struct.asn1_string_st** %nonce1, align 8, !tbaa !15
  %cmp = icmp eq %struct.asn1_string_st* %0, %nonce
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call = tail call %struct.asn1_string_st* @ASN1_INTEGER_dup(%struct.asn1_string_st* noundef %nonce) #5
  %cmp2 = icmp eq %struct.asn1_string_st* %call, null
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 108, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.TS_REQ_set_nonce, i64 0, i64 0)) #5
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 47, i32 noundef 786688, i8* noundef null) #5
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %1 = load %struct.asn1_string_st*, %struct.asn1_string_st** %nonce1, align 8, !tbaa !15
  tail call void @ASN1_INTEGER_free(%struct.asn1_string_st* noundef %1) #5
  store %struct.asn1_string_st* %call, %struct.asn1_string_st** %nonce1, align 8, !tbaa !15
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end4, %if.then3
  %retval.0 = phi i32 [ 0, %if.then3 ], [ 1, %if.end4 ], [ 1, %entry ]
  ret i32 %retval.0
}

declare %struct.asn1_string_st* @ASN1_INTEGER_dup(%struct.asn1_string_st* noundef) local_unnamed_addr #1

declare void @ASN1_INTEGER_free(%struct.asn1_string_st* noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define %struct.asn1_string_st* @TS_REQ_get_nonce(%struct.TS_req_st* nocapture noundef readonly %a) local_unnamed_addr #2 {
entry:
  %nonce = getelementptr inbounds %struct.TS_req_st, %struct.TS_req_st* %a, i64 0, i32 3
  %0 = load %struct.asn1_string_st*, %struct.asn1_string_st** %nonce, align 8, !tbaa !15
  ret %struct.asn1_string_st* %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define i32 @TS_REQ_set_cert_req(%struct.TS_req_st* nocapture noundef writeonly %a, i32 noundef %cert_req) local_unnamed_addr #3 {
entry:
  %tobool.not = icmp eq i32 %cert_req, 0
  %cond = select i1 %tobool.not, i32 0, i32 255
  %cert_req1 = getelementptr inbounds %struct.TS_req_st, %struct.TS_req_st* %a, i64 0, i32 4
  store i32 %cond, i32* %cert_req1, align 8, !tbaa !16
  ret i32 1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define i32 @TS_REQ_get_cert_req(%struct.TS_req_st* nocapture noundef readonly %a) local_unnamed_addr #2 {
entry:
  %cert_req = getelementptr inbounds %struct.TS_req_st, %struct.TS_req_st* %a, i64 0, i32 4
  %0 = load i32, i32* %cert_req, align 8, !tbaa !16
  %tobool.not = icmp ne i32 %0, 0
  %cond = zext i1 %tobool.not to i32
  ret i32 %cond
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define %struct.stack_st_X509_EXTENSION* @TS_REQ_get_exts(%struct.TS_req_st* nocapture noundef readonly %a) local_unnamed_addr #2 {
entry:
  %extensions = getelementptr inbounds %struct.TS_req_st, %struct.TS_req_st* %a, i64 0, i32 5
  %0 = load %struct.stack_st_X509_EXTENSION*, %struct.stack_st_X509_EXTENSION** %extensions, align 8, !tbaa !17
  ret %struct.stack_st_X509_EXTENSION* %0
}

; Function Attrs: noinline nounwind uwtable
define void @TS_REQ_ext_free(%struct.TS_req_st* noundef %a) local_unnamed_addr #0 {
entry:
  %tobool.not = icmp eq %struct.TS_req_st* %a, null
  br i1 %tobool.not, label %return, label %if.end

if.end:                                           ; preds = %entry
  %extensions = getelementptr inbounds %struct.TS_req_st, %struct.TS_req_st* %a, i64 0, i32 5
  %0 = load %struct.stack_st_X509_EXTENSION*, %struct.stack_st_X509_EXTENSION** %extensions, align 8, !tbaa !17
  %call = tail call fastcc %struct.stack_st* @ossl_check_X509_EXTENSION_sk_type(%struct.stack_st_X509_EXTENSION* noundef %0) #6
  tail call void @OPENSSL_sk_pop_free(%struct.stack_st* noundef %call, void (i8*)* noundef bitcast (void (%struct.X509_extension_st*)* @X509_EXTENSION_free to void (i8*)*)) #5
  store %struct.stack_st_X509_EXTENSION* null, %struct.stack_st_X509_EXTENSION** %extensions, align 8, !tbaa !17
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
define i32 @TS_REQ_get_ext_count(%struct.TS_req_st* nocapture noundef readonly %a) local_unnamed_addr #0 {
entry:
  %extensions = getelementptr inbounds %struct.TS_req_st, %struct.TS_req_st* %a, i64 0, i32 5
  %0 = load %struct.stack_st_X509_EXTENSION*, %struct.stack_st_X509_EXTENSION** %extensions, align 8, !tbaa !17
  %call = tail call i32 @X509v3_get_ext_count(%struct.stack_st_X509_EXTENSION* noundef %0) #5
  ret i32 %call
}

declare i32 @X509v3_get_ext_count(%struct.stack_st_X509_EXTENSION* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define i32 @TS_REQ_get_ext_by_NID(%struct.TS_req_st* nocapture noundef readonly %a, i32 noundef %nid, i32 noundef %lastpos) local_unnamed_addr #0 {
entry:
  %extensions = getelementptr inbounds %struct.TS_req_st, %struct.TS_req_st* %a, i64 0, i32 5
  %0 = load %struct.stack_st_X509_EXTENSION*, %struct.stack_st_X509_EXTENSION** %extensions, align 8, !tbaa !17
  %call = tail call i32 @X509v3_get_ext_by_NID(%struct.stack_st_X509_EXTENSION* noundef %0, i32 noundef %nid, i32 noundef %lastpos) #5
  ret i32 %call
}

declare i32 @X509v3_get_ext_by_NID(%struct.stack_st_X509_EXTENSION* noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define i32 @TS_REQ_get_ext_by_OBJ(%struct.TS_req_st* nocapture noundef readonly %a, %struct.asn1_object_st* noundef %obj, i32 noundef %lastpos) local_unnamed_addr #0 {
entry:
  %extensions = getelementptr inbounds %struct.TS_req_st, %struct.TS_req_st* %a, i64 0, i32 5
  %0 = load %struct.stack_st_X509_EXTENSION*, %struct.stack_st_X509_EXTENSION** %extensions, align 8, !tbaa !17
  %call = tail call i32 @X509v3_get_ext_by_OBJ(%struct.stack_st_X509_EXTENSION* noundef %0, %struct.asn1_object_st* noundef %obj, i32 noundef %lastpos) #5
  ret i32 %call
}

declare i32 @X509v3_get_ext_by_OBJ(%struct.stack_st_X509_EXTENSION* noundef, %struct.asn1_object_st* noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define i32 @TS_REQ_get_ext_by_critical(%struct.TS_req_st* nocapture noundef readonly %a, i32 noundef %crit, i32 noundef %lastpos) local_unnamed_addr #0 {
entry:
  %extensions = getelementptr inbounds %struct.TS_req_st, %struct.TS_req_st* %a, i64 0, i32 5
  %0 = load %struct.stack_st_X509_EXTENSION*, %struct.stack_st_X509_EXTENSION** %extensions, align 8, !tbaa !17
  %call = tail call i32 @X509v3_get_ext_by_critical(%struct.stack_st_X509_EXTENSION* noundef %0, i32 noundef %crit, i32 noundef %lastpos) #5
  ret i32 %call
}

declare i32 @X509v3_get_ext_by_critical(%struct.stack_st_X509_EXTENSION* noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define %struct.X509_extension_st* @TS_REQ_get_ext(%struct.TS_req_st* nocapture noundef readonly %a, i32 noundef %loc) local_unnamed_addr #0 {
entry:
  %extensions = getelementptr inbounds %struct.TS_req_st, %struct.TS_req_st* %a, i64 0, i32 5
  %0 = load %struct.stack_st_X509_EXTENSION*, %struct.stack_st_X509_EXTENSION** %extensions, align 8, !tbaa !17
  %call = tail call %struct.X509_extension_st* @X509v3_get_ext(%struct.stack_st_X509_EXTENSION* noundef %0, i32 noundef %loc) #5
  ret %struct.X509_extension_st* %call
}

declare %struct.X509_extension_st* @X509v3_get_ext(%struct.stack_st_X509_EXTENSION* noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define %struct.X509_extension_st* @TS_REQ_delete_ext(%struct.TS_req_st* nocapture noundef readonly %a, i32 noundef %loc) local_unnamed_addr #0 {
entry:
  %extensions = getelementptr inbounds %struct.TS_req_st, %struct.TS_req_st* %a, i64 0, i32 5
  %0 = load %struct.stack_st_X509_EXTENSION*, %struct.stack_st_X509_EXTENSION** %extensions, align 8, !tbaa !17
  %call = tail call %struct.X509_extension_st* @X509v3_delete_ext(%struct.stack_st_X509_EXTENSION* noundef %0, i32 noundef %loc) #5
  ret %struct.X509_extension_st* %call
}

declare %struct.X509_extension_st* @X509v3_delete_ext(%struct.stack_st_X509_EXTENSION* noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define i32 @TS_REQ_add_ext(%struct.TS_req_st* noundef %a, %struct.X509_extension_st* noundef %ex, i32 noundef %loc) local_unnamed_addr #0 {
entry:
  %extensions = getelementptr inbounds %struct.TS_req_st, %struct.TS_req_st* %a, i64 0, i32 5
  %call = tail call %struct.stack_st_X509_EXTENSION* @X509v3_add_ext(%struct.stack_st_X509_EXTENSION** noundef nonnull %extensions, %struct.X509_extension_st* noundef %ex, i32 noundef %loc) #5
  %cmp = icmp ne %struct.stack_st_X509_EXTENSION* %call, null
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

declare %struct.stack_st_X509_EXTENSION* @X509v3_add_ext(%struct.stack_st_X509_EXTENSION** noundef, %struct.X509_extension_st* noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define i8* @TS_REQ_get_ext_d2i(%struct.TS_req_st* nocapture noundef readonly %a, i32 noundef %nid, i32* noundef %crit, i32* noundef %idx) local_unnamed_addr #0 {
entry:
  %extensions = getelementptr inbounds %struct.TS_req_st, %struct.TS_req_st* %a, i64 0, i32 5
  %0 = load %struct.stack_st_X509_EXTENSION*, %struct.stack_st_X509_EXTENSION** %extensions, align 8, !tbaa !17
  %call = tail call i8* @X509V3_get_d2i(%struct.stack_st_X509_EXTENSION* noundef %0, i32 noundef %nid, i32* noundef %crit, i32* noundef %idx) #5
  ret i8* %call
}

declare i8* @X509V3_get_d2i(%struct.stack_st_X509_EXTENSION* noundef, i32 noundef, i32* noundef, i32* noundef) local_unnamed_addr #1

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
!5 = !{!"TS_req_st", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !9, i64 32, !6, i64 40}
!6 = !{!"any pointer", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!"int", !7, i64 0}
!10 = !{!5, !6, i64 8}
!11 = !{!12, !6, i64 0}
!12 = !{!"TS_msg_imprint_st", !6, i64 0, !6, i64 8}
!13 = !{!12, !6, i64 8}
!14 = !{!5, !6, i64 16}
!15 = !{!5, !6, i64 24}
!16 = !{!5, !9, i64 32}
!17 = !{!5, !6, i64 40}
