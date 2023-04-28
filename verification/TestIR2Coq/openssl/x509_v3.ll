; ModuleID = 'crypto/x509/x509_v3.c'
source_filename = "crypto/x509/x509_v3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stack_st_X509_EXTENSION = type opaque
%struct.stack_st = type opaque
%struct.asn1_object_st = type opaque
%struct.X509_extension_st = type { %struct.asn1_object_st*, i32, %struct.asn1_string_st }
%struct.asn1_string_st = type { i32, i32, i8*, i64 }

@.str = private unnamed_addr constant [22 x i8] c"crypto/x509/x509_v3.c\00", align 1
@__func__.X509v3_add_ext = private unnamed_addr constant [15 x i8] c"X509v3_add_ext\00", align 1
@__func__.X509_EXTENSION_create_by_NID = private unnamed_addr constant [29 x i8] c"X509_EXTENSION_create_by_NID\00", align 1
@__func__.X509_EXTENSION_create_by_OBJ = private unnamed_addr constant [29 x i8] c"X509_EXTENSION_create_by_OBJ\00", align 1

; Function Attrs: noinline nounwind uwtable
define i32 @X509v3_get_ext_count(%struct.stack_st_X509_EXTENSION* noundef %x) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.stack_st_X509_EXTENSION* %x, null
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %call = tail call fastcc %struct.stack_st* @ossl_check_const_X509_EXTENSION_sk_type(%struct.stack_st_X509_EXTENSION* noundef nonnull %x) #5
  %call1 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call) #6
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %call1, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

declare i32 @OPENSSL_sk_num(%struct.stack_st* noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_const_X509_EXTENSION_sk_type(%struct.stack_st_X509_EXTENSION* noundef readnone %sk) unnamed_addr #2 {
entry:
  %0 = bitcast %struct.stack_st_X509_EXTENSION* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

; Function Attrs: noinline nounwind uwtable
define i32 @X509v3_get_ext_by_NID(%struct.stack_st_X509_EXTENSION* noundef %x, i32 noundef %nid, i32 noundef %lastpos) local_unnamed_addr #0 {
entry:
  %call = tail call %struct.asn1_object_st* @OBJ_nid2obj(i32 noundef %nid) #6
  %cmp = icmp eq %struct.asn1_object_st* %call, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @X509v3_get_ext_by_OBJ(%struct.stack_st_X509_EXTENSION* noundef %x, %struct.asn1_object_st* noundef nonnull %call, i32 noundef %lastpos) #5
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %call1, %if.end ], [ -2, %entry ]
  ret i32 %retval.0
}

declare %struct.asn1_object_st* @OBJ_nid2obj(i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define i32 @X509v3_get_ext_by_OBJ(%struct.stack_st_X509_EXTENSION* noundef %sk, %struct.asn1_object_st* noundef %obj, i32 noundef %lastpos) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.stack_st_X509_EXTENSION* %sk, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %0 = icmp sgt i32 %lastpos, -1
  %1 = select i1 %0, i32 %lastpos, i32 -1
  %call = tail call fastcc %struct.stack_st* @ossl_check_const_X509_EXTENSION_sk_type(%struct.stack_st_X509_EXTENSION* noundef nonnull %sk) #5
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
  br i1 %cmp9, label %cleanup, label %for.cond, !llvm.loop !12

cleanup:                                          ; preds = %for.cond, %for.body, %entry
  %retval.0 = phi i32 [ -1, %entry ], [ -1, %for.cond ], [ %lastpos.addr.0, %for.body ]
  ret i32 %retval.0
}

declare i8* @OPENSSL_sk_value(%struct.stack_st* noundef, i32 noundef) local_unnamed_addr #1

declare i32 @OBJ_cmp(%struct.asn1_object_st* noundef, %struct.asn1_object_st* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define i32 @X509v3_get_ext_by_critical(%struct.stack_st_X509_EXTENSION* noundef %sk, i32 noundef %crit, i32 noundef %lastpos) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.stack_st_X509_EXTENSION* %sk, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %0 = icmp sgt i32 %lastpos, -1
  %1 = select i1 %0, i32 %lastpos, i32 -1
  %call = tail call fastcc %struct.stack_st* @ossl_check_const_X509_EXTENSION_sk_type(%struct.stack_st_X509_EXTENSION* noundef nonnull %sk) #5
  %call4 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call) #6
  %tobool = icmp ne i32 %crit, 0
  br label %for.cond

for.cond:                                         ; preds = %for.body, %if.end
  %lastpos.addr.0.in = phi i32 [ %1, %if.end ], [ %lastpos.addr.0, %for.body ]
  %lastpos.addr.0 = add nsw i32 %lastpos.addr.0.in, 1
  %cmp5 = icmp slt i32 %lastpos.addr.0, %call4
  br i1 %cmp5, label %for.body, label %cleanup

for.body:                                         ; preds = %for.cond
  %call7 = tail call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call, i32 noundef %lastpos.addr.0) #6
  %critical = getelementptr inbounds i8, i8* %call7, i64 8
  %2 = bitcast i8* %critical to i32*
  %3 = load i32, i32* %2, align 8, !tbaa !14
  %cmp8 = icmp sgt i32 %3, 0
  %or.cond29 = xor i1 %tobool, %cmp8
  br i1 %or.cond29, label %for.cond, label %cleanup, !llvm.loop !15

cleanup:                                          ; preds = %for.cond, %for.body, %entry
  %retval.0 = phi i32 [ -1, %entry ], [ -1, %for.cond ], [ %lastpos.addr.0, %for.body ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define %struct.X509_extension_st* @X509v3_get_ext(%struct.stack_st_X509_EXTENSION* noundef %x, i32 noundef %loc) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.stack_st_X509_EXTENSION* %x, null
  br i1 %cmp, label %return, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %call = tail call fastcc %struct.stack_st* @ossl_check_const_X509_EXTENSION_sk_type(%struct.stack_st_X509_EXTENSION* noundef nonnull %x) #5
  %call1 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call) #6
  %cmp2 = icmp sle i32 %call1, %loc
  %cmp4 = icmp slt i32 %loc, 0
  %or.cond = or i1 %cmp4, %cmp2
  br i1 %or.cond, label %return, label %if.else

if.else:                                          ; preds = %lor.lhs.false
  %call6 = tail call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call, i32 noundef %loc) #6
  %0 = bitcast i8* %call6 to %struct.X509_extension_st*
  br label %return

return:                                           ; preds = %entry, %lor.lhs.false, %if.else
  %retval.0 = phi %struct.X509_extension_st* [ %0, %if.else ], [ null, %lor.lhs.false ], [ null, %entry ]
  ret %struct.X509_extension_st* %retval.0
}

; Function Attrs: noinline nounwind uwtable
define %struct.X509_extension_st* @X509v3_delete_ext(%struct.stack_st_X509_EXTENSION* noundef %x, i32 noundef %loc) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.stack_st_X509_EXTENSION* %x, null
  br i1 %cmp, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %call = tail call fastcc %struct.stack_st* @ossl_check_const_X509_EXTENSION_sk_type(%struct.stack_st_X509_EXTENSION* noundef nonnull %x) #5
  %call1 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call) #6
  %cmp2 = icmp sle i32 %call1, %loc
  %cmp4 = icmp slt i32 %loc, 0
  %or.cond = or i1 %cmp4, %cmp2
  br i1 %or.cond, label %cleanup, label %if.end

if.end:                                           ; preds = %lor.lhs.false
  %call5 = tail call fastcc %struct.stack_st* @ossl_check_X509_EXTENSION_sk_type(%struct.stack_st_X509_EXTENSION* noundef nonnull %x) #5
  %call6 = tail call i8* @OPENSSL_sk_delete(%struct.stack_st* noundef %call5, i32 noundef %loc) #6
  %0 = bitcast i8* %call6 to %struct.X509_extension_st*
  br label %cleanup

cleanup:                                          ; preds = %entry, %lor.lhs.false, %if.end
  %retval.0 = phi %struct.X509_extension_st* [ %0, %if.end ], [ null, %lor.lhs.false ], [ null, %entry ]
  ret %struct.X509_extension_st* %retval.0
}

declare i8* @OPENSSL_sk_delete(%struct.stack_st* noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_X509_EXTENSION_sk_type(%struct.stack_st_X509_EXTENSION* noundef readnone %sk) unnamed_addr #2 {
entry:
  %0 = bitcast %struct.stack_st_X509_EXTENSION* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

; Function Attrs: noinline nounwind uwtable
define %struct.stack_st_X509_EXTENSION* @X509v3_add_ext(%struct.stack_st_X509_EXTENSION** noundef %x, %struct.X509_extension_st* noundef %ex, i32 noundef %loc) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.stack_st_X509_EXTENSION** %x, null
  br i1 %cmp, label %err2, label %if.end

if.end:                                           ; preds = %entry
  %0 = load %struct.stack_st_X509_EXTENSION*, %struct.stack_st_X509_EXTENSION** %x, align 8, !tbaa !16
  %cmp1 = icmp eq %struct.stack_st_X509_EXTENSION* %0, null
  br i1 %cmp1, label %if.then2, label %if.end6

if.then2:                                         ; preds = %if.end
  %call = tail call %struct.stack_st* @OPENSSL_sk_new_null() #6
  %1 = bitcast %struct.stack_st* %call to %struct.stack_st_X509_EXTENSION*
  %cmp3 = icmp eq %struct.stack_st* %call, null
  br i1 %cmp3, label %err, label %if.end6

if.end6:                                          ; preds = %if.end, %if.then2
  %sk.0 = phi %struct.stack_st_X509_EXTENSION* [ %1, %if.then2 ], [ %0, %if.end ]
  %call7 = tail call fastcc %struct.stack_st* @ossl_check_const_X509_EXTENSION_sk_type(%struct.stack_st_X509_EXTENSION* noundef %sk.0) #5
  %call8 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call7) #6
  %call16 = tail call %struct.X509_extension_st* @X509_EXTENSION_dup(%struct.X509_extension_st* noundef %ex) #6
  %cmp17 = icmp eq %struct.X509_extension_st* %call16, null
  br i1 %cmp17, label %land.lhs.true, label %if.end19

if.end19:                                         ; preds = %if.end6
  %cmp9 = icmp slt i32 %call8, %loc
  %cmp12 = icmp slt i32 %loc, 0
  %2 = or i1 %cmp12, %cmp9
  %loc.addr.0 = select i1 %2, i32 %call8, i32 %loc
  %call20 = tail call fastcc %struct.stack_st* @ossl_check_X509_EXTENSION_sk_type(%struct.stack_st_X509_EXTENSION* noundef %sk.0) #5
  %3 = bitcast %struct.X509_extension_st* %call16 to i8*
  %call22 = tail call i32 @OPENSSL_sk_insert(%struct.stack_st* noundef %call20, i8* noundef nonnull %3, i32 noundef %loc.addr.0) #6
  %tobool.not = icmp eq i32 %call22, 0
  br i1 %tobool.not, label %err, label %if.end24

if.end24:                                         ; preds = %if.end19
  %4 = load %struct.stack_st_X509_EXTENSION*, %struct.stack_st_X509_EXTENSION** %x, align 8, !tbaa !16
  %cmp25 = icmp eq %struct.stack_st_X509_EXTENSION* %4, null
  br i1 %cmp25, label %if.then26, label %cleanup

if.then26:                                        ; preds = %if.end24
  store %struct.stack_st_X509_EXTENSION* %sk.0, %struct.stack_st_X509_EXTENSION** %x, align 8, !tbaa !16
  br label %cleanup

err:                                              ; preds = %if.end19, %if.then2
  %new_ex.0 = phi %struct.X509_extension_st* [ null, %if.then2 ], [ %call16, %if.end19 ]
  %sk.1 = phi %struct.stack_st_X509_EXTENSION* [ null, %if.then2 ], [ %sk.0, %if.end19 ]
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 128, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__func__.X509v3_add_ext, i64 0, i64 0)) #6
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 11, i32 noundef 786688, i8* noundef null) #6
  br label %land.lhs.true

err2:                                             ; preds = %entry
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 104, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__func__.X509v3_add_ext, i64 0, i64 0)) #6
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 11, i32 noundef 786690, i8* noundef null) #6
  tail call void @X509_EXTENSION_free(%struct.X509_extension_st* noundef null) #6
  br label %cleanup

land.lhs.true:                                    ; preds = %if.end6, %err
  %new_ex.1.ph = phi %struct.X509_extension_st* [ null, %if.end6 ], [ %new_ex.0, %err ]
  %sk.2.ph = phi %struct.stack_st_X509_EXTENSION* [ %sk.0, %if.end6 ], [ %sk.1, %err ]
  tail call void @X509_EXTENSION_free(%struct.X509_extension_st* noundef %new_ex.1.ph) #6
  %5 = load %struct.stack_st_X509_EXTENSION*, %struct.stack_st_X509_EXTENSION** %x, align 8, !tbaa !16
  %cmp29 = icmp eq %struct.stack_st_X509_EXTENSION* %5, null
  br i1 %cmp29, label %if.then30, label %cleanup

if.then30:                                        ; preds = %land.lhs.true
  %call31 = tail call fastcc %struct.stack_st* @ossl_check_X509_EXTENSION_sk_type(%struct.stack_st_X509_EXTENSION* noundef %sk.2.ph) #5
  tail call void @OPENSSL_sk_free(%struct.stack_st* noundef %call31) #6
  br label %cleanup

cleanup:                                          ; preds = %err2, %land.lhs.true, %if.then30, %if.end24, %if.then26
  %retval.0 = phi %struct.stack_st_X509_EXTENSION* [ %sk.0, %if.then26 ], [ %sk.0, %if.end24 ], [ null, %if.then30 ], [ null, %land.lhs.true ], [ null, %err2 ]
  ret %struct.stack_st_X509_EXTENSION* %retval.0
}

declare void @ERR_new() local_unnamed_addr #1

declare void @ERR_set_debug(i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #1

declare void @ERR_set_error(i32 noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #1

declare %struct.stack_st* @OPENSSL_sk_new_null() local_unnamed_addr #1

declare %struct.X509_extension_st* @X509_EXTENSION_dup(%struct.X509_extension_st* noundef) local_unnamed_addr #1

declare i32 @OPENSSL_sk_insert(%struct.stack_st* noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

declare void @X509_EXTENSION_free(%struct.X509_extension_st* noundef) local_unnamed_addr #1

declare void @OPENSSL_sk_free(%struct.stack_st* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define %struct.X509_extension_st* @X509_EXTENSION_create_by_NID(%struct.X509_extension_st** noundef %ex, i32 noundef %nid, i32 noundef %crit, %struct.asn1_string_st* nocapture noundef readonly %data) local_unnamed_addr #0 {
entry:
  %call = tail call %struct.asn1_object_st* @OBJ_nid2obj(i32 noundef %nid) #6
  %cmp = icmp eq %struct.asn1_object_st* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 145, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.X509_EXTENSION_create_by_NID, i64 0, i64 0)) #6
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 11, i32 noundef 109, i8* noundef null) #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call %struct.X509_extension_st* @X509_EXTENSION_create_by_OBJ(%struct.X509_extension_st** noundef %ex, %struct.asn1_object_st* noundef nonnull %call, i32 noundef %crit, %struct.asn1_string_st* noundef %data) #5
  %cmp2 = icmp eq %struct.X509_extension_st* %call1, null
  br i1 %cmp2, label %if.then3, label %cleanup

if.then3:                                         ; preds = %if.end
  tail call void @ASN1_OBJECT_free(%struct.asn1_object_st* noundef nonnull %call) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then3, %if.then
  %retval.0 = phi %struct.X509_extension_st* [ null, %if.then ], [ null, %if.then3 ], [ %call1, %if.end ]
  ret %struct.X509_extension_st* %retval.0
}

; Function Attrs: noinline nounwind uwtable
define %struct.X509_extension_st* @X509_EXTENSION_create_by_OBJ(%struct.X509_extension_st** noundef %ex, %struct.asn1_object_st* noundef %obj, i32 noundef %crit, %struct.asn1_string_st* nocapture noundef readonly %data) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.X509_extension_st** %ex, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %0 = load %struct.X509_extension_st*, %struct.X509_extension_st** %ex, align 8, !tbaa !16
  %cmp1 = icmp eq %struct.X509_extension_st* %0, null
  br i1 %cmp1, label %if.then, label %if.end4

if.then:                                          ; preds = %lor.lhs.false, %entry
  %call = tail call %struct.X509_extension_st* @X509_EXTENSION_new() #6
  %cmp2 = icmp eq %struct.X509_extension_st* %call, null
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.then
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 162, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.X509_EXTENSION_create_by_OBJ, i64 0, i64 0)) #6
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 11, i32 noundef 786688, i8* noundef null) #6
  br label %cleanup

if.end4:                                          ; preds = %lor.lhs.false, %if.then
  %ret.0 = phi %struct.X509_extension_st* [ %call, %if.then ], [ %0, %lor.lhs.false ]
  %call5 = tail call i32 @X509_EXTENSION_set_object(%struct.X509_extension_st* noundef nonnull %ret.0, %struct.asn1_object_st* noundef %obj) #5
  %tobool.not = icmp eq i32 %call5, 0
  br i1 %tobool.not, label %err, label %if.end7

if.end7:                                          ; preds = %if.end4
  %call8 = tail call i32 @X509_EXTENSION_set_critical(%struct.X509_extension_st* noundef nonnull %ret.0, i32 noundef %crit) #5
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %err, label %if.end11

if.end11:                                         ; preds = %if.end7
  %call12 = tail call i32 @X509_EXTENSION_set_data(%struct.X509_extension_st* noundef nonnull %ret.0, %struct.asn1_string_st* noundef %data) #5
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %err, label %if.end15

if.end15:                                         ; preds = %if.end11
  br i1 %cmp, label %cleanup, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end15
  %1 = load %struct.X509_extension_st*, %struct.X509_extension_st** %ex, align 8, !tbaa !16
  %cmp17 = icmp eq %struct.X509_extension_st* %1, null
  br i1 %cmp17, label %if.then18, label %cleanup

if.then18:                                        ; preds = %land.lhs.true
  store %struct.X509_extension_st* %ret.0, %struct.X509_extension_st** %ex, align 8, !tbaa !16
  br label %cleanup

err:                                              ; preds = %if.end11, %if.end7, %if.end4
  br i1 %cmp, label %if.then23, label %lor.lhs.false21

lor.lhs.false21:                                  ; preds = %err
  %2 = load %struct.X509_extension_st*, %struct.X509_extension_st** %ex, align 8, !tbaa !16
  %cmp22.not = icmp eq %struct.X509_extension_st* %ret.0, %2
  br i1 %cmp22.not, label %cleanup, label %if.then23

if.then23:                                        ; preds = %lor.lhs.false21, %err
  tail call void @X509_EXTENSION_free(%struct.X509_extension_st* noundef nonnull %ret.0) #6
  br label %cleanup

cleanup:                                          ; preds = %lor.lhs.false21, %if.then23, %if.end15, %land.lhs.true, %if.then18, %if.then3
  %retval.0 = phi %struct.X509_extension_st* [ null, %if.then3 ], [ %ret.0, %if.then18 ], [ %ret.0, %land.lhs.true ], [ %ret.0, %if.end15 ], [ null, %if.then23 ], [ null, %lor.lhs.false21 ]
  ret %struct.X509_extension_st* %retval.0
}

declare void @ASN1_OBJECT_free(%struct.asn1_object_st* noundef) local_unnamed_addr #1

declare %struct.X509_extension_st* @X509_EXTENSION_new() local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define i32 @X509_EXTENSION_set_object(%struct.X509_extension_st* noundef %ex, %struct.asn1_object_st* noundef %obj) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.X509_extension_st* %ex, null
  %cmp1 = icmp eq %struct.asn1_object_st* %obj, null
  %or.cond = or i1 %cmp, %cmp1
  br i1 %or.cond, label %return, label %if.end

if.end:                                           ; preds = %entry
  %object = getelementptr inbounds %struct.X509_extension_st, %struct.X509_extension_st* %ex, i64 0, i32 0
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

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define i32 @X509_EXTENSION_set_critical(%struct.X509_extension_st* noundef writeonly %ex, i32 noundef %crit) local_unnamed_addr #3 {
entry:
  %cmp = icmp eq %struct.X509_extension_st* %ex, null
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %tobool.not = icmp eq i32 %crit, 0
  %cond = select i1 %tobool.not, i32 -1, i32 255
  %critical = getelementptr inbounds %struct.X509_extension_st, %struct.X509_extension_st* %ex, i64 0, i32 1
  store i32 %cond, i32* %critical, align 8, !tbaa !14
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @X509_EXTENSION_set_data(%struct.X509_extension_st* noundef %ex, %struct.asn1_string_st* nocapture noundef readonly %data) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.X509_extension_st* %ex, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %value = getelementptr inbounds %struct.X509_extension_st, %struct.X509_extension_st* %ex, i64 0, i32 2
  %data1 = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %data, i64 0, i32 2
  %0 = load i8*, i8** %data1, align 8, !tbaa !17
  %length = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %data, i64 0, i32 0
  %1 = load i32, i32* %length, align 8, !tbaa !18
  %call = tail call i32 @ASN1_OCTET_STRING_set(%struct.asn1_string_st* noundef nonnull %value, i8* noundef %0, i32 noundef %1) #6
  %tobool.not = icmp ne i32 %call, 0
  %. = zext i1 %tobool.not to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ %., %if.end ]
  ret i32 %retval.0
}

declare %struct.asn1_object_st* @OBJ_dup(%struct.asn1_object_st* noundef) local_unnamed_addr #1

declare i32 @ASN1_OCTET_STRING_set(%struct.asn1_string_st* noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define %struct.asn1_object_st* @X509_EXTENSION_get_object(%struct.X509_extension_st* noundef readonly %ex) local_unnamed_addr #4 {
entry:
  %cmp = icmp eq %struct.X509_extension_st* %ex, null
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %object = getelementptr inbounds %struct.X509_extension_st, %struct.X509_extension_st* %ex, i64 0, i32 0
  %0 = load %struct.asn1_object_st*, %struct.asn1_object_st** %object, align 8, !tbaa !4
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi %struct.asn1_object_st* [ %0, %if.end ], [ null, %entry ]
  ret %struct.asn1_object_st* %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define %struct.asn1_string_st* @X509_EXTENSION_get_data(%struct.X509_extension_st* noundef readnone %ex) local_unnamed_addr #2 {
entry:
  %cmp = icmp eq %struct.X509_extension_st* %ex, null
  %value = getelementptr inbounds %struct.X509_extension_st, %struct.X509_extension_st* %ex, i64 0, i32 2
  %retval.0 = select i1 %cmp, %struct.asn1_string_st* null, %struct.asn1_string_st* %value
  ret %struct.asn1_string_st* %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define i32 @X509_EXTENSION_get_critical(%struct.X509_extension_st* noundef readonly %ex) local_unnamed_addr #4 {
entry:
  %cmp = icmp eq %struct.X509_extension_st* %ex, null
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %critical = getelementptr inbounds %struct.X509_extension_st, %struct.X509_extension_st* %ex, i64 0, i32 1
  %0 = load i32, i32* %critical, align 8, !tbaa !14
  %cmp1 = icmp sgt i32 %0, 0
  %. = zext i1 %cmp1 to i32
  br label %return

return:                                           ; preds = %if.end, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ %., %if.end ]
  ret i32 %retval.0
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nobuiltin "no-builtins" }
attributes #6 = { nobuiltin nounwind "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{!"clang version 14.0.0"}
!4 = !{!5, !6, i64 0}
!5 = !{!"X509_extension_st", !6, i64 0, !9, i64 8, !10, i64 16}
!6 = !{!"any pointer", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!"int", !7, i64 0}
!10 = !{!"asn1_string_st", !9, i64 0, !9, i64 4, !6, i64 8, !11, i64 16}
!11 = !{!"long", !7, i64 0}
!12 = distinct !{!12, !13}
!13 = !{!"llvm.loop.mustprogress"}
!14 = !{!5, !9, i64 8}
!15 = distinct !{!15, !13}
!16 = !{!6, !6, i64 0}
!17 = !{!10, !6, i64 8}
!18 = !{!10, !9, i64 0}
