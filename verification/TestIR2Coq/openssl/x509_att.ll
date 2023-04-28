; ModuleID = 'crypto/x509/x509_att.c'
source_filename = "crypto/x509/x509_att.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stack_st_X509_ATTRIBUTE = type opaque
%struct.stack_st = type opaque
%struct.asn1_object_st = type opaque
%struct.x509_attributes_st = type { %struct.asn1_object_st*, %struct.stack_st_ASN1_TYPE* }
%struct.stack_st_ASN1_TYPE = type opaque
%struct.asn1_type_st = type { i32, %union.anon }
%union.anon = type { i8* }
%struct.asn1_string_st = type { i32, i32, i8*, i64 }

@.str = private unnamed_addr constant [23 x i8] c"crypto/x509/x509_att.c\00", align 1
@__func__.X509at_add1_attr = private unnamed_addr constant [17 x i8] c"X509at_add1_attr\00", align 1
@__func__.X509_ATTRIBUTE_create_by_NID = private unnamed_addr constant [29 x i8] c"X509_ATTRIBUTE_create_by_NID\00", align 1
@__func__.X509_ATTRIBUTE_create_by_OBJ = private unnamed_addr constant [29 x i8] c"X509_ATTRIBUTE_create_by_OBJ\00", align 1
@__func__.X509_ATTRIBUTE_create_by_txt = private unnamed_addr constant [29 x i8] c"X509_ATTRIBUTE_create_by_txt\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"name=%s\00", align 1
@__func__.X509_ATTRIBUTE_set1_data = private unnamed_addr constant [25 x i8] c"X509_ATTRIBUTE_set1_data\00", align 1
@__func__.X509_ATTRIBUTE_get0_data = private unnamed_addr constant [25 x i8] c"X509_ATTRIBUTE_get0_data\00", align 1

; Function Attrs: noinline nounwind uwtable
define i32 @X509at_get_attr_count(%struct.stack_st_X509_ATTRIBUTE* noundef %x) local_unnamed_addr #0 {
entry:
  %call = tail call fastcc %struct.stack_st* @ossl_check_const_X509_ATTRIBUTE_sk_type(%struct.stack_st_X509_ATTRIBUTE* noundef %x) #5
  %call1 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call) #6
  ret i32 %call1
}

declare i32 @OPENSSL_sk_num(%struct.stack_st* noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_const_X509_ATTRIBUTE_sk_type(%struct.stack_st_X509_ATTRIBUTE* noundef readnone %sk) unnamed_addr #2 {
entry:
  %0 = bitcast %struct.stack_st_X509_ATTRIBUTE* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

; Function Attrs: noinline nounwind uwtable
define i32 @X509at_get_attr_by_NID(%struct.stack_st_X509_ATTRIBUTE* noundef %x, i32 noundef %nid, i32 noundef %lastpos) local_unnamed_addr #0 {
entry:
  %call = tail call %struct.asn1_object_st* @OBJ_nid2obj(i32 noundef %nid) #6
  %cmp = icmp eq %struct.asn1_object_st* %call, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @X509at_get_attr_by_OBJ(%struct.stack_st_X509_ATTRIBUTE* noundef %x, %struct.asn1_object_st* noundef nonnull %call, i32 noundef %lastpos) #5
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %call1, %if.end ], [ -2, %entry ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #3

declare %struct.asn1_object_st* @OBJ_nid2obj(i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define i32 @X509at_get_attr_by_OBJ(%struct.stack_st_X509_ATTRIBUTE* noundef %sk, %struct.asn1_object_st* noundef %obj, i32 noundef %lastpos) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.stack_st_X509_ATTRIBUTE* %sk, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %0 = icmp sgt i32 %lastpos, -1
  %1 = select i1 %0, i32 %lastpos, i32 -1
  %call = tail call fastcc %struct.stack_st* @ossl_check_const_X509_ATTRIBUTE_sk_type(%struct.stack_st_X509_ATTRIBUTE* noundef nonnull %sk) #5
  %call4 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call) #6
  br label %for.cond

for.cond:                                         ; preds = %for.body, %if.end
  %lastpos.addr.0.in = phi i32 [ %1, %if.end ], [ %lastpos.addr.0, %for.body ]
  %lastpos.addr.0 = add nsw i32 %lastpos.addr.0.in, 1
  %cmp5 = icmp slt i32 %lastpos.addr.0, %call4
  br i1 %cmp5, label %for.body, label %cleanup

for.body:                                         ; preds = %for.cond
  %call7 = tail call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call, i32 noundef %lastpos.addr.0) #6
  %object = bitcast i8* %call7 to %struct.asn1_object_st**
  %2 = load %struct.asn1_object_st*, %struct.asn1_object_st** %object, align 8, !tbaa !4
  %call8 = tail call i32 @OBJ_cmp(%struct.asn1_object_st* noundef %2, %struct.asn1_object_st* noundef %obj) #6
  %cmp9 = icmp eq i32 %call8, 0
  br i1 %cmp9, label %cleanup, label %for.cond, !llvm.loop !9

cleanup:                                          ; preds = %for.cond, %for.body, %entry
  %retval.0 = phi i32 [ -1, %entry ], [ -1, %for.cond ], [ %lastpos.addr.0, %for.body ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #3

declare i8* @OPENSSL_sk_value(%struct.stack_st* noundef, i32 noundef) local_unnamed_addr #1

declare i32 @OBJ_cmp(%struct.asn1_object_st* noundef, %struct.asn1_object_st* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define %struct.x509_attributes_st* @X509at_get_attr(%struct.stack_st_X509_ATTRIBUTE* noundef %x, i32 noundef %loc) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.stack_st_X509_ATTRIBUTE* %x, null
  br i1 %cmp, label %return, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %call = tail call fastcc %struct.stack_st* @ossl_check_const_X509_ATTRIBUTE_sk_type(%struct.stack_st_X509_ATTRIBUTE* noundef nonnull %x) #5
  %call1 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call) #6
  %cmp2 = icmp sle i32 %call1, %loc
  %cmp4 = icmp slt i32 %loc, 0
  %or.cond = or i1 %cmp4, %cmp2
  br i1 %or.cond, label %return, label %if.end

if.end:                                           ; preds = %lor.lhs.false
  %call6 = tail call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call, i32 noundef %loc) #6
  %0 = bitcast i8* %call6 to %struct.x509_attributes_st*
  br label %return

return:                                           ; preds = %entry, %lor.lhs.false, %if.end
  %retval.0 = phi %struct.x509_attributes_st* [ %0, %if.end ], [ null, %lor.lhs.false ], [ null, %entry ]
  ret %struct.x509_attributes_st* %retval.0
}

; Function Attrs: noinline nounwind uwtable
define %struct.x509_attributes_st* @X509at_delete_attr(%struct.stack_st_X509_ATTRIBUTE* noundef %x, i32 noundef %loc) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.stack_st_X509_ATTRIBUTE* %x, null
  br i1 %cmp, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %call = tail call fastcc %struct.stack_st* @ossl_check_const_X509_ATTRIBUTE_sk_type(%struct.stack_st_X509_ATTRIBUTE* noundef nonnull %x) #5
  %call1 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call) #6
  %cmp2 = icmp sle i32 %call1, %loc
  %cmp4 = icmp slt i32 %loc, 0
  %or.cond = or i1 %cmp4, %cmp2
  br i1 %or.cond, label %cleanup, label %if.end

if.end:                                           ; preds = %lor.lhs.false
  %call5 = tail call fastcc %struct.stack_st* @ossl_check_X509_ATTRIBUTE_sk_type(%struct.stack_st_X509_ATTRIBUTE* noundef nonnull %x) #5
  %call6 = tail call i8* @OPENSSL_sk_delete(%struct.stack_st* noundef %call5, i32 noundef %loc) #6
  %0 = bitcast i8* %call6 to %struct.x509_attributes_st*
  br label %cleanup

cleanup:                                          ; preds = %entry, %lor.lhs.false, %if.end
  %retval.0 = phi %struct.x509_attributes_st* [ %0, %if.end ], [ null, %lor.lhs.false ], [ null, %entry ]
  ret %struct.x509_attributes_st* %retval.0
}

declare i8* @OPENSSL_sk_delete(%struct.stack_st* noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_X509_ATTRIBUTE_sk_type(%struct.stack_st_X509_ATTRIBUTE* noundef readnone %sk) unnamed_addr #2 {
entry:
  %0 = bitcast %struct.stack_st_X509_ATTRIBUTE* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

; Function Attrs: noinline nounwind uwtable
define %struct.stack_st_X509_ATTRIBUTE* @X509at_add1_attr(%struct.stack_st_X509_ATTRIBUTE** noundef %x, %struct.x509_attributes_st* noundef %attr) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.stack_st_X509_ATTRIBUTE** %x, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 81, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.X509at_add1_attr, i64 0, i64 0)) #6
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 11, i32 noundef 786690, i8* noundef null) #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = load %struct.stack_st_X509_ATTRIBUTE*, %struct.stack_st_X509_ATTRIBUTE** %x, align 8, !tbaa !11
  %cmp1 = icmp eq %struct.stack_st_X509_ATTRIBUTE* %0, null
  br i1 %cmp1, label %if.then2, label %if.end6

if.then2:                                         ; preds = %if.end
  %call = tail call %struct.stack_st* @OPENSSL_sk_new_null() #6
  %1 = bitcast %struct.stack_st* %call to %struct.stack_st_X509_ATTRIBUTE*
  %cmp3 = icmp eq %struct.stack_st* %call, null
  br i1 %cmp3, label %err, label %if.end6

if.end6:                                          ; preds = %if.end, %if.then2
  %sk.0 = phi %struct.stack_st_X509_ATTRIBUTE* [ %1, %if.then2 ], [ %0, %if.end ]
  %call7 = tail call %struct.x509_attributes_st* @X509_ATTRIBUTE_dup(%struct.x509_attributes_st* noundef %attr) #6
  %cmp8 = icmp eq %struct.x509_attributes_st* %call7, null
  br i1 %cmp8, label %err2, label %if.end10

if.end10:                                         ; preds = %if.end6
  %call11 = tail call fastcc %struct.stack_st* @ossl_check_X509_ATTRIBUTE_sk_type(%struct.stack_st_X509_ATTRIBUTE* noundef %sk.0) #5
  %2 = bitcast %struct.x509_attributes_st* %call7 to i8*
  %call13 = tail call i32 @OPENSSL_sk_push(%struct.stack_st* noundef %call11, i8* noundef nonnull %2) #6
  %tobool.not = icmp eq i32 %call13, 0
  br i1 %tobool.not, label %err, label %if.end15

if.end15:                                         ; preds = %if.end10
  %3 = load %struct.stack_st_X509_ATTRIBUTE*, %struct.stack_st_X509_ATTRIBUTE** %x, align 8, !tbaa !11
  %cmp16 = icmp eq %struct.stack_st_X509_ATTRIBUTE* %3, null
  br i1 %cmp16, label %if.then17, label %cleanup

if.then17:                                        ; preds = %if.end15
  store %struct.stack_st_X509_ATTRIBUTE* %sk.0, %struct.stack_st_X509_ATTRIBUTE** %x, align 8, !tbaa !11
  br label %cleanup

err:                                              ; preds = %if.end10, %if.then2
  %new_attr.0 = phi %struct.x509_attributes_st* [ null, %if.then2 ], [ %call7, %if.end10 ]
  %sk.1 = phi %struct.stack_st_X509_ATTRIBUTE* [ null, %if.then2 ], [ %sk.0, %if.end10 ]
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 100, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.X509at_add1_attr, i64 0, i64 0)) #6
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 11, i32 noundef 786688, i8* noundef null) #6
  br label %err2

err2:                                             ; preds = %if.end6, %err
  %new_attr.1 = phi %struct.x509_attributes_st* [ %new_attr.0, %err ], [ null, %if.end6 ]
  %sk.2 = phi %struct.stack_st_X509_ATTRIBUTE* [ %sk.1, %err ], [ %sk.0, %if.end6 ]
  tail call void @X509_ATTRIBUTE_free(%struct.x509_attributes_st* noundef %new_attr.1) #6
  %4 = load %struct.stack_st_X509_ATTRIBUTE*, %struct.stack_st_X509_ATTRIBUTE** %x, align 8, !tbaa !11
  %cmp19 = icmp eq %struct.stack_st_X509_ATTRIBUTE* %4, null
  br i1 %cmp19, label %if.then20, label %cleanup

if.then20:                                        ; preds = %err2
  %call21 = tail call fastcc %struct.stack_st* @ossl_check_X509_ATTRIBUTE_sk_type(%struct.stack_st_X509_ATTRIBUTE* noundef %sk.2) #5
  tail call void @OPENSSL_sk_free(%struct.stack_st* noundef %call21) #6
  br label %cleanup

cleanup:                                          ; preds = %err2, %if.then20, %if.end15, %if.then17, %if.then
  %retval.0 = phi %struct.stack_st_X509_ATTRIBUTE* [ null, %if.then ], [ %sk.0, %if.then17 ], [ %sk.0, %if.end15 ], [ null, %if.then20 ], [ null, %err2 ]
  ret %struct.stack_st_X509_ATTRIBUTE* %retval.0
}

declare void @ERR_new() local_unnamed_addr #1

declare void @ERR_set_debug(i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #1

declare void @ERR_set_error(i32 noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #1

declare %struct.stack_st* @OPENSSL_sk_new_null() local_unnamed_addr #1

declare %struct.x509_attributes_st* @X509_ATTRIBUTE_dup(%struct.x509_attributes_st* noundef) local_unnamed_addr #1

declare i32 @OPENSSL_sk_push(%struct.stack_st* noundef, i8* noundef) local_unnamed_addr #1

declare void @X509_ATTRIBUTE_free(%struct.x509_attributes_st* noundef) #1

declare void @OPENSSL_sk_free(%struct.stack_st* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define %struct.stack_st_X509_ATTRIBUTE* @X509at_add1_attr_by_OBJ(%struct.stack_st_X509_ATTRIBUTE** noundef %x, %struct.asn1_object_st* noundef %obj, i32 noundef %type, i8* noundef %bytes, i32 noundef %len) local_unnamed_addr #0 {
entry:
  %call = tail call %struct.x509_attributes_st* @X509_ATTRIBUTE_create_by_OBJ(%struct.x509_attributes_st** noundef null, %struct.asn1_object_st* noundef %obj, i32 noundef %type, i8* noundef %bytes, i32 noundef %len) #5
  %tobool.not = icmp eq %struct.x509_attributes_st* %call, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call1 = tail call %struct.stack_st_X509_ATTRIBUTE* @X509at_add1_attr(%struct.stack_st_X509_ATTRIBUTE** noundef %x, %struct.x509_attributes_st* noundef nonnull %call) #5
  tail call void @X509_ATTRIBUTE_free(%struct.x509_attributes_st* noundef nonnull %call) #6
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi %struct.stack_st_X509_ATTRIBUTE* [ %call1, %if.end ], [ null, %entry ]
  ret %struct.stack_st_X509_ATTRIBUTE* %retval.0
}

; Function Attrs: noinline nounwind uwtable
define %struct.x509_attributes_st* @X509_ATTRIBUTE_create_by_OBJ(%struct.x509_attributes_st** noundef %attr, %struct.asn1_object_st* noundef %obj, i32 noundef %atrtype, i8* noundef %data, i32 noundef %len) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.x509_attributes_st** %attr, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %0 = load %struct.x509_attributes_st*, %struct.x509_attributes_st** %attr, align 8, !tbaa !11
  %cmp1 = icmp eq %struct.x509_attributes_st* %0, null
  br i1 %cmp1, label %if.then, label %if.end4

if.then:                                          ; preds = %lor.lhs.false, %entry
  %call = tail call %struct.x509_attributes_st* @X509_ATTRIBUTE_new() #6
  %cmp2 = icmp eq %struct.x509_attributes_st* %call, null
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.then
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 215, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.X509_ATTRIBUTE_create_by_OBJ, i64 0, i64 0)) #6
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 11, i32 noundef 786688, i8* noundef null) #6
  br label %cleanup

if.end4:                                          ; preds = %lor.lhs.false, %if.then
  %ret.0 = phi %struct.x509_attributes_st* [ %call, %if.then ], [ %0, %lor.lhs.false ]
  %call5 = tail call i32 @X509_ATTRIBUTE_set1_object(%struct.x509_attributes_st* noundef nonnull %ret.0, %struct.asn1_object_st* noundef %obj) #5
  %tobool.not = icmp eq i32 %call5, 0
  br i1 %tobool.not, label %err, label %if.end7

if.end7:                                          ; preds = %if.end4
  %call8 = tail call i32 @X509_ATTRIBUTE_set1_data(%struct.x509_attributes_st* noundef nonnull %ret.0, i32 noundef %atrtype, i8* noundef %data, i32 noundef %len) #5
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %err, label %if.end11

if.end11:                                         ; preds = %if.end7
  br i1 %cmp, label %cleanup, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end11
  %1 = load %struct.x509_attributes_st*, %struct.x509_attributes_st** %attr, align 8, !tbaa !11
  %cmp13 = icmp eq %struct.x509_attributes_st* %1, null
  br i1 %cmp13, label %if.then14, label %cleanup

if.then14:                                        ; preds = %land.lhs.true
  store %struct.x509_attributes_st* %ret.0, %struct.x509_attributes_st** %attr, align 8, !tbaa !11
  br label %cleanup

err:                                              ; preds = %if.end7, %if.end4
  br i1 %cmp, label %if.then19, label %lor.lhs.false17

lor.lhs.false17:                                  ; preds = %err
  %2 = load %struct.x509_attributes_st*, %struct.x509_attributes_st** %attr, align 8, !tbaa !11
  %cmp18.not = icmp eq %struct.x509_attributes_st* %ret.0, %2
  br i1 %cmp18.not, label %cleanup, label %if.then19

if.then19:                                        ; preds = %lor.lhs.false17, %err
  tail call void @X509_ATTRIBUTE_free(%struct.x509_attributes_st* noundef nonnull %ret.0) #6
  br label %cleanup

cleanup:                                          ; preds = %lor.lhs.false17, %if.then19, %if.end11, %land.lhs.true, %if.then14, %if.then3
  %retval.0 = phi %struct.x509_attributes_st* [ null, %if.then3 ], [ %ret.0, %if.then14 ], [ %ret.0, %land.lhs.true ], [ %ret.0, %if.end11 ], [ null, %if.then19 ], [ null, %lor.lhs.false17 ]
  ret %struct.x509_attributes_st* %retval.0
}

; Function Attrs: noinline nounwind uwtable
define %struct.stack_st_X509_ATTRIBUTE* @X509at_add1_attr_by_NID(%struct.stack_st_X509_ATTRIBUTE** noundef %x, i32 noundef %nid, i32 noundef %type, i8* noundef %bytes, i32 noundef %len) local_unnamed_addr #0 {
entry:
  %call = tail call %struct.x509_attributes_st* @X509_ATTRIBUTE_create_by_NID(%struct.x509_attributes_st** noundef null, i32 noundef %nid, i32 noundef %type, i8* noundef %bytes, i32 noundef %len) #5
  %tobool.not = icmp eq %struct.x509_attributes_st* %call, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call1 = tail call %struct.stack_st_X509_ATTRIBUTE* @X509at_add1_attr(%struct.stack_st_X509_ATTRIBUTE** noundef %x, %struct.x509_attributes_st* noundef nonnull %call) #5
  tail call void @X509_ATTRIBUTE_free(%struct.x509_attributes_st* noundef nonnull %call) #6
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi %struct.stack_st_X509_ATTRIBUTE* [ %call1, %if.end ], [ null, %entry ]
  ret %struct.stack_st_X509_ATTRIBUTE* %retval.0
}

; Function Attrs: noinline nounwind uwtable
define %struct.x509_attributes_st* @X509_ATTRIBUTE_create_by_NID(%struct.x509_attributes_st** noundef %attr, i32 noundef %nid, i32 noundef %atrtype, i8* noundef %data, i32 noundef %len) local_unnamed_addr #0 {
entry:
  %call = tail call %struct.asn1_object_st* @OBJ_nid2obj(i32 noundef %nid) #6
  %cmp = icmp eq %struct.asn1_object_st* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 197, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.X509_ATTRIBUTE_create_by_NID, i64 0, i64 0)) #6
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 11, i32 noundef 109, i8* noundef null) #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call %struct.x509_attributes_st* @X509_ATTRIBUTE_create_by_OBJ(%struct.x509_attributes_st** noundef %attr, %struct.asn1_object_st* noundef nonnull %call, i32 noundef %atrtype, i8* noundef %data, i32 noundef %len) #5
  %cmp2 = icmp eq %struct.x509_attributes_st* %call1, null
  br i1 %cmp2, label %if.then3, label %cleanup

if.then3:                                         ; preds = %if.end
  tail call void @ASN1_OBJECT_free(%struct.asn1_object_st* noundef nonnull %call) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then3, %if.then
  %retval.0 = phi %struct.x509_attributes_st* [ null, %if.then ], [ null, %if.then3 ], [ %call1, %if.end ]
  ret %struct.x509_attributes_st* %retval.0
}

; Function Attrs: noinline nounwind uwtable
define %struct.stack_st_X509_ATTRIBUTE* @X509at_add1_attr_by_txt(%struct.stack_st_X509_ATTRIBUTE** noundef %x, i8* noundef %attrname, i32 noundef %type, i8* noundef %bytes, i32 noundef %len) local_unnamed_addr #0 {
entry:
  %call = tail call %struct.x509_attributes_st* @X509_ATTRIBUTE_create_by_txt(%struct.x509_attributes_st** noundef null, i8* noundef %attrname, i32 noundef %type, i8* noundef %bytes, i32 noundef %len) #5
  %tobool.not = icmp eq %struct.x509_attributes_st* %call, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call1 = tail call %struct.stack_st_X509_ATTRIBUTE* @X509at_add1_attr(%struct.stack_st_X509_ATTRIBUTE** noundef %x, %struct.x509_attributes_st* noundef nonnull %call) #5
  tail call void @X509_ATTRIBUTE_free(%struct.x509_attributes_st* noundef nonnull %call) #6
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi %struct.stack_st_X509_ATTRIBUTE* [ %call1, %if.end ], [ null, %entry ]
  ret %struct.stack_st_X509_ATTRIBUTE* %retval.0
}

; Function Attrs: noinline nounwind uwtable
define %struct.x509_attributes_st* @X509_ATTRIBUTE_create_by_txt(%struct.x509_attributes_st** noundef %attr, i8* noundef %atrname, i32 noundef %type, i8* noundef %bytes, i32 noundef %len) local_unnamed_addr #0 {
entry:
  %call = tail call %struct.asn1_object_st* @OBJ_txt2obj(i8* noundef %atrname, i32 noundef 0) #6
  %cmp = icmp eq %struct.asn1_object_st* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 245, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.X509_ATTRIBUTE_create_by_txt, i64 0, i64 0)) #6
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 11, i32 noundef 119, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* noundef %atrname) #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call %struct.x509_attributes_st* @X509_ATTRIBUTE_create_by_OBJ(%struct.x509_attributes_st** noundef %attr, %struct.asn1_object_st* noundef nonnull %call, i32 noundef %type, i8* noundef %bytes, i32 noundef %len) #5
  tail call void @ASN1_OBJECT_free(%struct.asn1_object_st* noundef nonnull %call) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi %struct.x509_attributes_st* [ null, %if.then ], [ %call1, %if.end ]
  ret %struct.x509_attributes_st* %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i8* @X509at_get0_data_by_OBJ(%struct.stack_st_X509_ATTRIBUTE* noundef %x, %struct.asn1_object_st* noundef %obj, i32 noundef %lastpos, i32 noundef %type) local_unnamed_addr #0 {
entry:
  %call = tail call i32 @X509at_get_attr_by_OBJ(%struct.stack_st_X509_ATTRIBUTE* noundef %x, %struct.asn1_object_st* noundef %obj, i32 noundef %lastpos) #5
  %cmp = icmp eq i32 %call, -1
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %cmp1 = icmp slt i32 %lastpos, -1
  br i1 %cmp1, label %land.lhs.true, label %if.end5.thread

if.end5.thread:                                   ; preds = %if.end
  %call625 = tail call %struct.x509_attributes_st* @X509at_get_attr(%struct.stack_st_X509_ATTRIBUTE* noundef %x, i32 noundef %call) #5
  br label %if.end12

land.lhs.true:                                    ; preds = %if.end
  %call2 = tail call i32 @X509at_get_attr_by_OBJ(%struct.stack_st_X509_ATTRIBUTE* noundef %x, %struct.asn1_object_st* noundef %obj, i32 noundef %call) #5
  %cmp3.not = icmp eq i32 %call2, -1
  br i1 %cmp3.not, label %if.end5, label %cleanup

if.end5:                                          ; preds = %land.lhs.true
  %call6 = tail call %struct.x509_attributes_st* @X509at_get_attr(%struct.stack_st_X509_ATTRIBUTE* noundef %x, i32 noundef %call) #5
  %cmp7 = icmp ult i32 %lastpos, -2
  br i1 %cmp7, label %land.lhs.true8, label %if.end12

land.lhs.true8:                                   ; preds = %if.end5
  %call9 = tail call i32 @X509_ATTRIBUTE_count(%struct.x509_attributes_st* noundef %call6) #5
  %cmp10.not = icmp eq i32 %call9, 1
  br i1 %cmp10.not, label %if.end12, label %cleanup

if.end12:                                         ; preds = %if.end5.thread, %land.lhs.true8, %if.end5
  %call627 = phi %struct.x509_attributes_st* [ %call625, %if.end5.thread ], [ %call6, %land.lhs.true8 ], [ %call6, %if.end5 ]
  %call13 = tail call i8* @X509_ATTRIBUTE_get0_data(%struct.x509_attributes_st* noundef %call627, i32 noundef 0, i32 noundef %type, i8* undef) #5
  br label %cleanup

cleanup:                                          ; preds = %land.lhs.true8, %land.lhs.true, %entry, %if.end12
  %retval.0 = phi i8* [ %call13, %if.end12 ], [ null, %entry ], [ null, %land.lhs.true ], [ null, %land.lhs.true8 ]
  ret i8* %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @X509_ATTRIBUTE_count(%struct.x509_attributes_st* noundef readonly %attr) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.x509_attributes_st* %attr, null
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %set = getelementptr inbounds %struct.x509_attributes_st, %struct.x509_attributes_st* %attr, i64 0, i32 1
  %0 = load %struct.stack_st_ASN1_TYPE*, %struct.stack_st_ASN1_TYPE** %set, align 8, !tbaa !12
  %call = tail call fastcc %struct.stack_st* @ossl_check_const_ASN1_TYPE_sk_type(%struct.stack_st_ASN1_TYPE* noundef %0) #5
  %call1 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call) #6
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %call1, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i8* @X509_ATTRIBUTE_get0_data(%struct.x509_attributes_st* noundef %attr, i32 noundef %idx, i32 noundef %atrtype, i8* nocapture readnone %data) local_unnamed_addr #0 {
entry:
  %call = tail call %struct.asn1_type_st* @X509_ATTRIBUTE_get0_type(%struct.x509_attributes_st* noundef %attr, i32 noundef %idx) #5
  %tobool.not = icmp eq %struct.asn1_type_st* %call, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %0 = and i32 %atrtype, -5
  %1 = icmp eq i32 %0, 1
  br i1 %1, label %if.then5, label %lor.lhs.false2

lor.lhs.false2:                                   ; preds = %if.end
  %call3 = tail call i32 @ASN1_TYPE_get(%struct.asn1_type_st* noundef nonnull %call) #6
  %cmp4.not = icmp eq i32 %call3, %atrtype
  br i1 %cmp4.not, label %if.end6, label %if.then5

if.then5:                                         ; preds = %lor.lhs.false2, %if.end
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 338, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.X509_ATTRIBUTE_get0_data, i64 0, i64 0)) #6
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 11, i32 noundef 122, i8* noundef null) #6
  br label %cleanup

if.end6:                                          ; preds = %lor.lhs.false2
  %ptr = getelementptr inbounds %struct.asn1_type_st, %struct.asn1_type_st* %call, i64 0, i32 1, i32 0
  %2 = load i8*, i8** %ptr, align 8, !tbaa !13
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end6, %if.then5
  %retval.0 = phi i8* [ null, %if.then5 ], [ %2, %if.end6 ], [ null, %entry ]
  ret i8* %retval.0
}

; Function Attrs: noinline nounwind uwtable
define %struct.stack_st_X509_ATTRIBUTE* @ossl_x509at_dup(%struct.stack_st_X509_ATTRIBUTE* noundef %x) local_unnamed_addr #0 {
entry:
  %sk = alloca %struct.stack_st_X509_ATTRIBUTE*, align 8
  %0 = bitcast %struct.stack_st_X509_ATTRIBUTE** %sk to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #7
  store %struct.stack_st_X509_ATTRIBUTE* null, %struct.stack_st_X509_ATTRIBUTE** %sk, align 8, !tbaa !11
  %call = tail call fastcc %struct.stack_st* @ossl_check_const_X509_ATTRIBUTE_sk_type(%struct.stack_st_X509_ATTRIBUTE* noundef %x) #5
  %call1 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call) #6
  %cmp17 = icmp sgt i32 %call1, 0
  br i1 %cmp17, label %for.body, label %cleanup8

for.cond:                                         ; preds = %for.body
  %exitcond.not = icmp eq i32 %inc, %call1
  br i1 %exitcond.not, label %for.end.loopexit, label %for.body, !llvm.loop !14

for.body:                                         ; preds = %entry, %for.cond
  %i.018 = phi i32 [ %inc, %for.cond ], [ 0, %entry ]
  %call3 = call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call, i32 noundef %i.018) #6
  %1 = bitcast i8* %call3 to %struct.x509_attributes_st*
  %call4 = call %struct.stack_st_X509_ATTRIBUTE* @X509at_add1_attr(%struct.stack_st_X509_ATTRIBUTE** noundef nonnull %sk, %struct.x509_attributes_st* noundef %1) #5
  %cmp5 = icmp eq %struct.stack_st_X509_ATTRIBUTE* %call4, null
  %inc = add nuw nsw i32 %i.018, 1
  br i1 %cmp5, label %if.then, label %for.cond

if.then:                                          ; preds = %for.body
  %2 = load %struct.stack_st_X509_ATTRIBUTE*, %struct.stack_st_X509_ATTRIBUTE** %sk, align 8, !tbaa !11
  %call6 = call fastcc %struct.stack_st* @ossl_check_X509_ATTRIBUTE_sk_type(%struct.stack_st_X509_ATTRIBUTE* noundef %2) #5
  call void @OPENSSL_sk_pop_free(%struct.stack_st* noundef %call6, void (i8*)* noundef bitcast (void (%struct.x509_attributes_st*)* @X509_ATTRIBUTE_free to void (i8*)*)) #6
  br label %cleanup8

for.end.loopexit:                                 ; preds = %for.cond
  %.pre = load %struct.stack_st_X509_ATTRIBUTE*, %struct.stack_st_X509_ATTRIBUTE** %sk, align 8, !tbaa !11
  br label %cleanup8

cleanup8:                                         ; preds = %entry, %for.end.loopexit, %if.then
  %retval.2 = phi %struct.stack_st_X509_ATTRIBUTE* [ null, %if.then ], [ %.pre, %for.end.loopexit ], [ null, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #7
  ret %struct.stack_st_X509_ATTRIBUTE* %retval.2
}

declare void @OPENSSL_sk_pop_free(%struct.stack_st* noundef, void (i8*)* noundef) local_unnamed_addr #1

declare void @ASN1_OBJECT_free(%struct.asn1_object_st* noundef) local_unnamed_addr #1

declare %struct.x509_attributes_st* @X509_ATTRIBUTE_new() local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define i32 @X509_ATTRIBUTE_set1_object(%struct.x509_attributes_st* noundef %attr, %struct.asn1_object_st* noundef %obj) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.x509_attributes_st* %attr, null
  %cmp1 = icmp eq %struct.asn1_object_st* %obj, null
  %or.cond = or i1 %cmp, %cmp1
  br i1 %or.cond, label %return, label %if.end

if.end:                                           ; preds = %entry
  %object = getelementptr inbounds %struct.x509_attributes_st, %struct.x509_attributes_st* %attr, i64 0, i32 0
  %0 = load %struct.asn1_object_st*, %struct.asn1_object_st** %object, align 8, !tbaa !4
  tail call void @ASN1_OBJECT_free(%struct.asn1_object_st* noundef %0) #6
  %call = tail call %struct.asn1_object_st* @OBJ_dup(%struct.asn1_object_st* noundef nonnull %obj) #6
  store %struct.asn1_object_st* %call, %struct.asn1_object_st** %object, align 8, !tbaa !4
  %cmp4 = icmp ne %struct.asn1_object_st* %call, null
  %conv = zext i1 %cmp4 to i32
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %conv, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @X509_ATTRIBUTE_set1_data(%struct.x509_attributes_st* noundef readonly %attr, i32 noundef %attrtype, i8* noundef %data, i32 noundef %len) local_unnamed_addr #0 {
entry:
  %tobool.not = icmp eq %struct.x509_attributes_st* %attr, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %and = and i32 %attrtype, 4096
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %if.else, label %if.then2

if.then2:                                         ; preds = %if.end
  %object = getelementptr inbounds %struct.x509_attributes_st, %struct.x509_attributes_st* %attr, i64 0, i32 0
  %0 = load %struct.asn1_object_st*, %struct.asn1_object_st** %object, align 8, !tbaa !4
  %call = tail call i32 @OBJ_obj2nid(%struct.asn1_object_st* noundef %0) #6
  %call3 = tail call %struct.asn1_string_st* @ASN1_STRING_set_by_NID(%struct.asn1_string_st** noundef null, i8* noundef %data, i32 noundef %len, i32 noundef %attrtype, i32 noundef %call) #6
  %tobool4.not = icmp eq %struct.asn1_string_st* %call3, null
  br i1 %tobool4.not, label %if.then5, label %if.end17.thread

if.then5:                                         ; preds = %if.then2
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 275, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.X509_ATTRIBUTE_set1_data, i64 0, i64 0)) #6
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 11, i32 noundef 524301, i8* noundef null) #6
  br label %cleanup

if.end17.thread:                                  ; preds = %if.then2
  %type = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %call3, i64 0, i32 1
  %1 = load i32, i32* %type, align 4, !tbaa !15
  br label %if.end20

if.else:                                          ; preds = %if.end
  %cmp.not = icmp eq i32 %len, -1
  br i1 %cmp.not, label %if.end17, label %if.then7

if.then7:                                         ; preds = %if.else
  %call8 = tail call %struct.asn1_string_st* @ASN1_STRING_type_new(i32 noundef %attrtype) #6
  %cmp9 = icmp eq %struct.asn1_string_st* %call8, null
  br i1 %cmp9, label %err, label %if.end11

if.end11:                                         ; preds = %if.then7
  %call12 = tail call i32 @ASN1_STRING_set(%struct.asn1_string_st* noundef nonnull %call8, i8* noundef %data, i32 noundef %len) #6
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %err, label %if.end17

if.end17:                                         ; preds = %if.end11, %if.else
  %stmp.0 = phi %struct.asn1_string_st* [ null, %if.else ], [ %call8, %if.end11 ]
  %atype.0 = phi i32 [ 0, %if.else ], [ %attrtype, %if.end11 ]
  %cmp18 = icmp eq i32 %attrtype, 0
  br i1 %cmp18, label %if.then19, label %if.end20

if.then19:                                        ; preds = %if.end17
  tail call void @ASN1_STRING_free(%struct.asn1_string_st* noundef %stmp.0) #6
  br label %cleanup

if.end20:                                         ; preds = %if.end17.thread, %if.end17
  %atype.071 = phi i32 [ %1, %if.end17.thread ], [ %atype.0, %if.end17 ]
  %stmp.070 = phi %struct.asn1_string_st* [ %call3, %if.end17.thread ], [ %stmp.0, %if.end17 ]
  %call21 = tail call %struct.asn1_type_st* @ASN1_TYPE_new() #6
  %cmp22 = icmp eq %struct.asn1_type_st* %call21, null
  br i1 %cmp22, label %err, label %if.end24

if.end24:                                         ; preds = %if.end20
  %cmp25 = icmp eq i32 %len, -1
  %2 = and i1 %tobool1.not, %cmp25
  br i1 %2, label %if.then28, label %if.else33

if.then28:                                        ; preds = %if.end24
  %call29 = tail call i32 @ASN1_TYPE_set1(%struct.asn1_type_st* noundef nonnull %call21, i32 noundef %attrtype, i8* noundef %data) #6
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %err, label %if.end34

if.else33:                                        ; preds = %if.end24
  %3 = bitcast %struct.asn1_string_st* %stmp.070 to i8*
  tail call void @ASN1_TYPE_set(%struct.asn1_type_st* noundef nonnull %call21, i32 noundef %atype.071, i8* noundef %3) #6
  br label %if.end34

if.end34:                                         ; preds = %if.then28, %if.else33
  %stmp.1 = phi %struct.asn1_string_st* [ null, %if.else33 ], [ %stmp.070, %if.then28 ]
  %set = getelementptr inbounds %struct.x509_attributes_st, %struct.x509_attributes_st* %attr, i64 0, i32 1
  %4 = load %struct.stack_st_ASN1_TYPE*, %struct.stack_st_ASN1_TYPE** %set, align 8, !tbaa !12
  %call35 = tail call fastcc %struct.stack_st* @ossl_check_ASN1_TYPE_sk_type(%struct.stack_st_ASN1_TYPE* noundef %4) #5
  %5 = bitcast %struct.asn1_type_st* %call21 to i8*
  %call37 = tail call i32 @OPENSSL_sk_push(%struct.stack_st* noundef %call35, i8* noundef nonnull %5) #6
  %tobool38.not = icmp eq i32 %call37, 0
  br i1 %tobool38.not, label %err, label %cleanup

err:                                              ; preds = %if.end34, %if.then28, %if.end20, %if.end11, %if.then7
  %ttmp.0 = phi %struct.asn1_type_st* [ null, %if.end20 ], [ %call21, %if.end34 ], [ %call21, %if.then28 ], [ null, %if.then7 ], [ null, %if.end11 ]
  %stmp.2 = phi %struct.asn1_string_st* [ %stmp.070, %if.end20 ], [ %stmp.1, %if.end34 ], [ %stmp.070, %if.then28 ], [ null, %if.then7 ], [ %call8, %if.end11 ]
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 308, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.X509_ATTRIBUTE_set1_data, i64 0, i64 0)) #6
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 11, i32 noundef 786688, i8* noundef null) #6
  tail call void @ASN1_TYPE_free(%struct.asn1_type_st* noundef %ttmp.0) #6
  tail call void @ASN1_STRING_free(%struct.asn1_string_st* noundef %stmp.2) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end34, %entry, %err, %if.then19, %if.then5
  %retval.0 = phi i32 [ 1, %if.then19 ], [ 0, %err ], [ 0, %if.then5 ], [ 0, %entry ], [ 1, %if.end34 ]
  ret i32 %retval.0
}

declare %struct.asn1_object_st* @OBJ_txt2obj(i8* noundef, i32 noundef) local_unnamed_addr #1

declare %struct.asn1_object_st* @OBJ_dup(%struct.asn1_object_st* noundef) local_unnamed_addr #1

declare %struct.asn1_string_st* @ASN1_STRING_set_by_NID(%struct.asn1_string_st** noundef, i8* noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare i32 @OBJ_obj2nid(%struct.asn1_object_st* noundef) local_unnamed_addr #1

declare %struct.asn1_string_st* @ASN1_STRING_type_new(i32 noundef) local_unnamed_addr #1

declare i32 @ASN1_STRING_set(%struct.asn1_string_st* noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

declare void @ASN1_STRING_free(%struct.asn1_string_st* noundef) local_unnamed_addr #1

declare %struct.asn1_type_st* @ASN1_TYPE_new() local_unnamed_addr #1

declare i32 @ASN1_TYPE_set1(%struct.asn1_type_st* noundef, i32 noundef, i8* noundef) local_unnamed_addr #1

declare void @ASN1_TYPE_set(%struct.asn1_type_st* noundef, i32 noundef, i8* noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_ASN1_TYPE_sk_type(%struct.stack_st_ASN1_TYPE* noundef readnone %sk) unnamed_addr #2 {
entry:
  %0 = bitcast %struct.stack_st_ASN1_TYPE* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

declare void @ASN1_TYPE_free(%struct.asn1_type_st* noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_const_ASN1_TYPE_sk_type(%struct.stack_st_ASN1_TYPE* noundef readnone %sk) unnamed_addr #2 {
entry:
  %0 = bitcast %struct.stack_st_ASN1_TYPE* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define %struct.asn1_object_st* @X509_ATTRIBUTE_get0_object(%struct.x509_attributes_st* noundef readonly %attr) local_unnamed_addr #4 {
entry:
  %cmp = icmp eq %struct.x509_attributes_st* %attr, null
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %object = getelementptr inbounds %struct.x509_attributes_st, %struct.x509_attributes_st* %attr, i64 0, i32 0
  %0 = load %struct.asn1_object_st*, %struct.asn1_object_st** %object, align 8, !tbaa !4
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi %struct.asn1_object_st* [ %0, %if.end ], [ null, %entry ]
  ret %struct.asn1_object_st* %retval.0
}

; Function Attrs: noinline nounwind uwtable
define %struct.asn1_type_st* @X509_ATTRIBUTE_get0_type(%struct.x509_attributes_st* noundef readonly %attr, i32 noundef %idx) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.x509_attributes_st* %attr, null
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %set = getelementptr inbounds %struct.x509_attributes_st, %struct.x509_attributes_st* %attr, i64 0, i32 1
  %0 = load %struct.stack_st_ASN1_TYPE*, %struct.stack_st_ASN1_TYPE** %set, align 8, !tbaa !12
  %call = tail call fastcc %struct.stack_st* @ossl_check_const_ASN1_TYPE_sk_type(%struct.stack_st_ASN1_TYPE* noundef %0) #5
  %call1 = tail call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call, i32 noundef %idx) #6
  %1 = bitcast i8* %call1 to %struct.asn1_type_st*
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi %struct.asn1_type_st* [ %1, %if.end ], [ null, %entry ]
  ret %struct.asn1_type_st* %retval.0
}

declare i32 @ASN1_TYPE_get(%struct.asn1_type_st* noundef) local_unnamed_addr #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nobuiltin "no-builtins" }
attributes #6 = { nobuiltin nounwind "no-builtins" }
attributes #7 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{!"clang version 14.0.0"}
!4 = !{!5, !6, i64 0}
!5 = !{!"x509_attributes_st", !6, i64 0, !6, i64 8}
!6 = !{!"any pointer", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = distinct !{!9, !10}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!6, !6, i64 0}
!12 = !{!5, !6, i64 8}
!13 = !{!7, !7, i64 0}
!14 = distinct !{!14, !10}
!15 = !{!16, !17, i64 4}
!16 = !{!"asn1_string_st", !17, i64 0, !17, i64 4, !6, i64 8, !18, i64 16}
!17 = !{!"int", !7, i64 0}
!18 = !{!"long", !7, i64 0}
