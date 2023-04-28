; ModuleID = 'crypto/x509/x509name.c'
source_filename = "crypto/x509/x509name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.X509_name_st = type { %struct.stack_st_X509_NAME_ENTRY*, i32, %struct.buf_mem_st*, i8*, i32 }
%struct.stack_st_X509_NAME_ENTRY = type opaque
%struct.buf_mem_st = type { i64, i8*, i64, i64 }
%struct.asn1_object_st = type opaque
%struct.X509_name_entry_st = type { %struct.asn1_object_st*, %struct.asn1_string_st*, i32, i32 }
%struct.asn1_string_st = type { i32, i32, i8*, i64 }
%struct.stack_st = type opaque

@.str = private unnamed_addr constant [23 x i8] c"crypto/x509/x509name.c\00", align 1
@__func__.X509_NAME_add_entry = private unnamed_addr constant [20 x i8] c"X509_NAME_add_entry\00", align 1
@__func__.X509_NAME_ENTRY_create_by_txt = private unnamed_addr constant [30 x i8] c"X509_NAME_ENTRY_create_by_txt\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"name=%s\00", align 1
@__func__.X509_NAME_ENTRY_create_by_NID = private unnamed_addr constant [30 x i8] c"X509_NAME_ENTRY_create_by_NID\00", align 1
@__func__.X509_NAME_ENTRY_set_object = private unnamed_addr constant [27 x i8] c"X509_NAME_ENTRY_set_object\00", align 1

; Function Attrs: noinline nounwind uwtable
define i32 @X509_NAME_get_text_by_NID(%struct.X509_name_st* noundef %name, i32 noundef %nid, i8* noundef %buf, i32 noundef %len) local_unnamed_addr #0 {
entry:
  %call = tail call %struct.asn1_object_st* @OBJ_nid2obj(i32 noundef %nid) #6
  %cmp = icmp eq %struct.asn1_object_st* %call, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @X509_NAME_get_text_by_OBJ(%struct.X509_name_st* noundef %name, %struct.asn1_object_st* noundef nonnull %call, i8* noundef %buf, i32 noundef %len) #7
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %call1, %if.end ], [ -1, %entry ]
  ret i32 %retval.0
}

declare %struct.asn1_object_st* @OBJ_nid2obj(i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define i32 @X509_NAME_get_text_by_OBJ(%struct.X509_name_st* noundef %name, %struct.asn1_object_st* noundef %obj, i8* noundef %buf, i32 noundef %len) local_unnamed_addr #0 {
entry:
  %call = tail call i32 @X509_NAME_get_index_by_OBJ(%struct.X509_name_st* noundef %name, %struct.asn1_object_st* noundef %obj, i32 noundef -1) #7
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call1 = tail call %struct.X509_name_entry_st* @X509_NAME_get_entry(%struct.X509_name_st* noundef %name, i32 noundef %call) #7
  %call2 = tail call %struct.asn1_string_st* @X509_NAME_ENTRY_get_data(%struct.X509_name_entry_st* noundef %call1) #7
  %cmp3 = icmp eq i8* %buf, null
  br i1 %cmp3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  %length = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %call2, i64 0, i32 0
  %0 = load i32, i32* %length, align 8, !tbaa !4
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %cmp6 = icmp slt i32 %len, 1
  br i1 %cmp6, label %cleanup, label %if.end8

if.end8:                                          ; preds = %if.end5
  %length9 = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %call2, i64 0, i32 0
  %1 = load i32, i32* %length9, align 8, !tbaa !4
  %cmp10.not = icmp slt i32 %1, %len
  %sub = add nsw i32 %len, -1
  %cond = select i1 %cmp10.not, i32 %1, i32 %sub
  %data13 = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %call2, i64 0, i32 2
  %2 = load i8*, i8** %data13, align 8, !tbaa !11
  %conv = sext i32 %cond to i64
  %call14 = tail call i8* @memcpy(i8* noundef nonnull %buf, i8* noundef %2, i64 noundef %conv) #6
  %arrayidx = getelementptr inbounds i8, i8* %buf, i64 %conv
  store i8 0, i8* %arrayidx, align 1, !tbaa !12
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %entry, %if.end8, %if.then4
  %retval.0 = phi i32 [ %0, %if.then4 ], [ %cond, %if.end8 ], [ -1, %entry ], [ 0, %if.end5 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @X509_NAME_get_index_by_OBJ(%struct.X509_name_st* noundef readonly %name, %struct.asn1_object_st* noundef %obj, i32 noundef %lastpos) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.X509_name_st* %name, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %cmp1.inv = icmp sgt i32 %lastpos, -1
  %spec.store.select = select i1 %cmp1.inv, i32 %lastpos, i32 -1
  %entries = getelementptr inbounds %struct.X509_name_st, %struct.X509_name_st* %name, i64 0, i32 0
  %0 = load %struct.stack_st_X509_NAME_ENTRY*, %struct.stack_st_X509_NAME_ENTRY** %entries, align 8, !tbaa !13
  %call = tail call fastcc %struct.stack_st* @ossl_check_const_X509_NAME_ENTRY_sk_type(%struct.stack_st_X509_NAME_ENTRY* noundef %0) #7
  %call4 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call) #6
  br label %for.cond

for.cond:                                         ; preds = %for.body, %if.end
  %lastpos.addr.0.in = phi i32 [ %spec.store.select, %if.end ], [ %lastpos.addr.0, %for.body ]
  %lastpos.addr.0 = add nsw i32 %lastpos.addr.0.in, 1
  %cmp5 = icmp slt i32 %lastpos.addr.0, %call4
  br i1 %cmp5, label %for.body, label %cleanup

for.body:                                         ; preds = %for.cond
  %call7 = tail call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call, i32 noundef %lastpos.addr.0) #6
  %object = bitcast i8* %call7 to %struct.asn1_object_st**
  %1 = load %struct.asn1_object_st*, %struct.asn1_object_st** %object, align 8, !tbaa !15
  %call8 = tail call i32 @OBJ_cmp(%struct.asn1_object_st* noundef %1, %struct.asn1_object_st* noundef %obj) #6
  %cmp9 = icmp eq i32 %call8, 0
  br i1 %cmp9, label %cleanup, label %for.cond, !llvm.loop !17

cleanup:                                          ; preds = %for.cond, %for.body, %entry
  %retval.0 = phi i32 [ -1, %entry ], [ -1, %for.cond ], [ %lastpos.addr.0, %for.body ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define %struct.asn1_string_st* @X509_NAME_ENTRY_get_data(%struct.X509_name_entry_st* noundef readonly %ne) local_unnamed_addr #2 {
entry:
  %cmp = icmp eq %struct.X509_name_entry_st* %ne, null
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %value = getelementptr inbounds %struct.X509_name_entry_st, %struct.X509_name_entry_st* %ne, i64 0, i32 1
  %0 = load %struct.asn1_string_st*, %struct.asn1_string_st** %value, align 8, !tbaa !19
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi %struct.asn1_string_st* [ %0, %if.end ], [ null, %entry ]
  ret %struct.asn1_string_st* %retval.0
}

; Function Attrs: noinline nounwind uwtable
define %struct.X509_name_entry_st* @X509_NAME_get_entry(%struct.X509_name_st* noundef readonly %name, i32 noundef %loc) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.X509_name_st* %name, null
  br i1 %cmp, label %return, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %entries = getelementptr inbounds %struct.X509_name_st, %struct.X509_name_st* %name, i64 0, i32 0
  %0 = load %struct.stack_st_X509_NAME_ENTRY*, %struct.stack_st_X509_NAME_ENTRY** %entries, align 8, !tbaa !13
  %call = tail call fastcc %struct.stack_st* @ossl_check_const_X509_NAME_ENTRY_sk_type(%struct.stack_st_X509_NAME_ENTRY* noundef %0) #7
  %call1 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call) #6
  %cmp2 = icmp sle i32 %call1, %loc
  %cmp4 = icmp slt i32 %loc, 0
  %or.cond = or i1 %cmp4, %cmp2
  br i1 %or.cond, label %return, label %if.end

if.end:                                           ; preds = %lor.lhs.false
  %1 = load %struct.stack_st_X509_NAME_ENTRY*, %struct.stack_st_X509_NAME_ENTRY** %entries, align 8, !tbaa !13
  %call6 = tail call fastcc %struct.stack_st* @ossl_check_const_X509_NAME_ENTRY_sk_type(%struct.stack_st_X509_NAME_ENTRY* noundef %1) #7
  %call7 = tail call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call6, i32 noundef %loc) #6
  %2 = bitcast i8* %call7 to %struct.X509_name_entry_st*
  br label %return

return:                                           ; preds = %entry, %lor.lhs.false, %if.end
  %retval.0 = phi %struct.X509_name_entry_st* [ %2, %if.end ], [ null, %lor.lhs.false ], [ null, %entry ]
  ret %struct.X509_name_entry_st* %retval.0
}

; Function Attrs: nounwind
declare i8* @memcpy(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define i32 @X509_NAME_entry_count(%struct.X509_name_st* noundef readonly %name) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.X509_name_st* %name, null
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %entries = getelementptr inbounds %struct.X509_name_st, %struct.X509_name_st* %name, i64 0, i32 0
  %0 = load %struct.stack_st_X509_NAME_ENTRY*, %struct.stack_st_X509_NAME_ENTRY** %entries, align 8, !tbaa !13
  %call = tail call fastcc %struct.stack_st* @ossl_check_const_X509_NAME_ENTRY_sk_type(%struct.stack_st_X509_NAME_ENTRY* noundef %0) #7
  %call1 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call) #6
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %call1, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

declare i32 @OPENSSL_sk_num(%struct.stack_st* noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_const_X509_NAME_ENTRY_sk_type(%struct.stack_st_X509_NAME_ENTRY* noundef readnone %sk) unnamed_addr #4 {
entry:
  %0 = bitcast %struct.stack_st_X509_NAME_ENTRY* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

; Function Attrs: noinline nounwind uwtable
define i32 @X509_NAME_get_index_by_NID(%struct.X509_name_st* noundef %name, i32 noundef %nid, i32 noundef %lastpos) local_unnamed_addr #0 {
entry:
  %call = tail call %struct.asn1_object_st* @OBJ_nid2obj(i32 noundef %nid) #6
  %cmp = icmp eq %struct.asn1_object_st* %call, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @X509_NAME_get_index_by_OBJ(%struct.X509_name_st* noundef %name, %struct.asn1_object_st* noundef nonnull %call, i32 noundef %lastpos) #7
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %call1, %if.end ], [ -2, %entry ]
  ret i32 %retval.0
}

declare i8* @OPENSSL_sk_value(%struct.stack_st* noundef, i32 noundef) local_unnamed_addr #1

declare i32 @OBJ_cmp(%struct.asn1_object_st* noundef, %struct.asn1_object_st* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define %struct.X509_name_entry_st* @X509_NAME_delete_entry(%struct.X509_name_st* noundef %name, i32 noundef %loc) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.X509_name_st* %name, null
  br i1 %cmp, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %entries = getelementptr inbounds %struct.X509_name_st, %struct.X509_name_st* %name, i64 0, i32 0
  %0 = load %struct.stack_st_X509_NAME_ENTRY*, %struct.stack_st_X509_NAME_ENTRY** %entries, align 8, !tbaa !13
  %call = tail call fastcc %struct.stack_st* @ossl_check_const_X509_NAME_ENTRY_sk_type(%struct.stack_st_X509_NAME_ENTRY* noundef %0) #7
  %call1 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call) #6
  %cmp2 = icmp sle i32 %call1, %loc
  %cmp4 = icmp slt i32 %loc, 0
  %or.cond = or i1 %cmp4, %cmp2
  br i1 %or.cond, label %cleanup, label %if.end

if.end:                                           ; preds = %lor.lhs.false
  %1 = load %struct.stack_st_X509_NAME_ENTRY*, %struct.stack_st_X509_NAME_ENTRY** %entries, align 8, !tbaa !13
  %call6 = tail call fastcc %struct.stack_st* @ossl_check_X509_NAME_ENTRY_sk_type(%struct.stack_st_X509_NAME_ENTRY* noundef %1) #7
  %call7 = tail call i8* @OPENSSL_sk_delete(%struct.stack_st* noundef %call6, i32 noundef %loc) #6
  %2 = bitcast i8* %call7 to %struct.X509_name_entry_st*
  %call8 = tail call fastcc %struct.stack_st* @ossl_check_const_X509_NAME_ENTRY_sk_type(%struct.stack_st_X509_NAME_ENTRY* noundef %1) #7
  %call9 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call8) #6
  %modified = getelementptr inbounds %struct.X509_name_st, %struct.X509_name_st* %name, i64 0, i32 1
  store i32 1, i32* %modified, align 8, !tbaa !20
  %cmp10 = icmp eq i32 %call9, %loc
  br i1 %cmp10, label %cleanup, label %if.end12

if.end12:                                         ; preds = %if.end
  %cmp13.not = icmp eq i32 %loc, 0
  br i1 %cmp13.not, label %if.else, label %if.then14

if.then14:                                        ; preds = %if.end12
  %sub = add nsw i32 %loc, -1
  %call16 = tail call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call8, i32 noundef %sub) #6
  %set = getelementptr inbounds i8, i8* %call16, i64 16
  %3 = bitcast i8* %set to i32*
  %4 = load i32, i32* %3, align 8, !tbaa !21
  br label %if.end19

if.else:                                          ; preds = %if.end12
  %set17 = getelementptr inbounds i8, i8* %call7, i64 16
  %5 = bitcast i8* %set17 to i32*
  %6 = load i32, i32* %5, align 8, !tbaa !21
  %sub18 = add nsw i32 %6, -1
  br label %if.end19

if.end19:                                         ; preds = %if.else, %if.then14
  %set_prev.0 = phi i32 [ %4, %if.then14 ], [ %sub18, %if.else ]
  %call21 = tail call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call8, i32 noundef %loc) #6
  %set22 = getelementptr inbounds i8, i8* %call21, i64 16
  %7 = bitcast i8* %set22 to i32*
  %8 = load i32, i32* %7, align 8, !tbaa !21
  %add = add nsw i32 %set_prev.0, 1
  %cmp23 = icmp slt i32 %add, %8
  %cmp2560 = icmp sgt i32 %call9, %loc
  %or.cond62 = select i1 %cmp23, i1 %cmp2560, i1 false
  br i1 %or.cond62, label %for.body, label %cleanup

for.body:                                         ; preds = %if.end19, %for.body
  %i.061 = phi i32 [ %inc, %for.body ], [ %loc, %if.end19 ]
  %call27 = tail call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call8, i32 noundef %i.061) #6
  %set28 = getelementptr inbounds i8, i8* %call27, i64 16
  %9 = bitcast i8* %set28 to i32*
  %10 = load i32, i32* %9, align 8, !tbaa !21
  %dec = add nsw i32 %10, -1
  store i32 %dec, i32* %9, align 8, !tbaa !21
  %inc = add i32 %i.061, 1
  %exitcond.not = icmp eq i32 %inc, %call9
  br i1 %exitcond.not, label %cleanup, label %for.body, !llvm.loop !22

cleanup:                                          ; preds = %for.body, %if.end19, %if.end, %entry, %lor.lhs.false
  %retval.0 = phi %struct.X509_name_entry_st* [ null, %lor.lhs.false ], [ null, %entry ], [ %2, %if.end ], [ %2, %if.end19 ], [ %2, %for.body ]
  ret %struct.X509_name_entry_st* %retval.0
}

declare i8* @OPENSSL_sk_delete(%struct.stack_st* noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_X509_NAME_ENTRY_sk_type(%struct.stack_st_X509_NAME_ENTRY* noundef readnone %sk) unnamed_addr #4 {
entry:
  %0 = bitcast %struct.stack_st_X509_NAME_ENTRY* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

; Function Attrs: noinline nounwind uwtable
define i32 @X509_NAME_add_entry_by_OBJ(%struct.X509_name_st* noundef %name, %struct.asn1_object_st* noundef %obj, i32 noundef %type, i8* noundef %bytes, i32 noundef %len, i32 noundef %loc, i32 noundef %set) local_unnamed_addr #0 {
entry:
  %call = tail call %struct.X509_name_entry_st* @X509_NAME_ENTRY_create_by_OBJ(%struct.X509_name_entry_st** noundef null, %struct.asn1_object_st* noundef %obj, i32 noundef %type, i8* noundef %bytes, i32 noundef %len) #7
  %tobool.not = icmp eq %struct.X509_name_entry_st* %call, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @X509_NAME_add_entry(%struct.X509_name_st* noundef %name, %struct.X509_name_entry_st* noundef nonnull %call, i32 noundef %loc, i32 noundef %set) #7
  tail call void @X509_NAME_ENTRY_free(%struct.X509_name_entry_st* noundef nonnull %call) #6
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %call1, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define %struct.X509_name_entry_st* @X509_NAME_ENTRY_create_by_OBJ(%struct.X509_name_entry_st** noundef %ne, %struct.asn1_object_st* noundef %obj, i32 noundef %type, i8* noundef %bytes, i32 noundef %len) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.X509_name_entry_st** %ne, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %0 = load %struct.X509_name_entry_st*, %struct.X509_name_entry_st** %ne, align 8, !tbaa !23
  %cmp1 = icmp eq %struct.X509_name_entry_st* %0, null
  br i1 %cmp1, label %if.then, label %if.end4

if.then:                                          ; preds = %lor.lhs.false, %entry
  %call = tail call %struct.X509_name_entry_st* @X509_NAME_ENTRY_new() #6
  %cmp2 = icmp eq %struct.X509_name_entry_st* %call, null
  br i1 %cmp2, label %cleanup, label %if.end4

if.end4:                                          ; preds = %lor.lhs.false, %if.then
  %ret.0 = phi %struct.X509_name_entry_st* [ %call, %if.then ], [ %0, %lor.lhs.false ]
  %call5 = tail call i32 @X509_NAME_ENTRY_set_object(%struct.X509_name_entry_st* noundef nonnull %ret.0, %struct.asn1_object_st* noundef %obj) #7
  %tobool.not = icmp eq i32 %call5, 0
  br i1 %tobool.not, label %err, label %if.end7

if.end7:                                          ; preds = %if.end4
  %call8 = tail call i32 @X509_NAME_ENTRY_set_data(%struct.X509_name_entry_st* noundef nonnull %ret.0, i32 noundef %type, i8* noundef %bytes, i32 noundef %len) #7
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %err, label %if.end11

if.end11:                                         ; preds = %if.end7
  br i1 %cmp, label %cleanup, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end11
  %1 = load %struct.X509_name_entry_st*, %struct.X509_name_entry_st** %ne, align 8, !tbaa !23
  %cmp13 = icmp eq %struct.X509_name_entry_st* %1, null
  br i1 %cmp13, label %if.then14, label %cleanup

if.then14:                                        ; preds = %land.lhs.true
  store %struct.X509_name_entry_st* %ret.0, %struct.X509_name_entry_st** %ne, align 8, !tbaa !23
  br label %cleanup

err:                                              ; preds = %if.end7, %if.end4
  br i1 %cmp, label %if.then19, label %lor.lhs.false17

lor.lhs.false17:                                  ; preds = %err
  %2 = load %struct.X509_name_entry_st*, %struct.X509_name_entry_st** %ne, align 8, !tbaa !23
  %cmp18.not = icmp eq %struct.X509_name_entry_st* %ret.0, %2
  br i1 %cmp18.not, label %cleanup, label %if.then19

if.then19:                                        ; preds = %lor.lhs.false17, %err
  tail call void @X509_NAME_ENTRY_free(%struct.X509_name_entry_st* noundef nonnull %ret.0) #6
  br label %cleanup

cleanup:                                          ; preds = %lor.lhs.false17, %if.then19, %if.end11, %land.lhs.true, %if.then14, %if.then
  %retval.0 = phi %struct.X509_name_entry_st* [ null, %if.then ], [ %ret.0, %if.then14 ], [ %ret.0, %land.lhs.true ], [ %ret.0, %if.end11 ], [ null, %if.then19 ], [ null, %lor.lhs.false17 ]
  ret %struct.X509_name_entry_st* %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @X509_NAME_add_entry(%struct.X509_name_st* noundef %name, %struct.X509_name_entry_st* noundef %ne, i32 noundef %loc, i32 noundef %set) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.X509_name_st* %name, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %entries = getelementptr inbounds %struct.X509_name_st, %struct.X509_name_st* %name, i64 0, i32 0
  %0 = load %struct.stack_st_X509_NAME_ENTRY*, %struct.stack_st_X509_NAME_ENTRY** %entries, align 8, !tbaa !13
  %call = tail call fastcc %struct.stack_st* @ossl_check_const_X509_NAME_ENTRY_sk_type(%struct.stack_st_X509_NAME_ENTRY* noundef %0) #7
  %call1 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call) #6
  %cmp2 = icmp slt i32 %call1, %loc
  %cmp4 = icmp slt i32 %loc, 0
  %1 = or i1 %cmp4, %cmp2
  %loc.addr.0 = select i1 %1, i32 %call1, i32 %loc
  %cmp8 = icmp eq i32 %set, 0
  %modified = getelementptr inbounds %struct.X509_name_st, %struct.X509_name_st* %name, i64 0, i32 1
  store i32 1, i32* %modified, align 8, !tbaa !20
  %cmp9 = icmp eq i32 %set, -1
  br i1 %cmp9, label %if.then11, label %if.else20

if.then11:                                        ; preds = %if.end
  %cmp12 = icmp eq i32 %loc.addr.0, 0
  br i1 %cmp12, label %if.end38, label %if.else15

if.else15:                                        ; preds = %if.then11
  %sub = add nsw i32 %loc.addr.0, -1
  %call17 = tail call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call, i32 noundef %sub) #6
  %set18 = getelementptr inbounds i8, i8* %call17, i64 16
  %2 = bitcast i8* %set18 to i32*
  %3 = load i32, i32* %2, align 8, !tbaa !21
  br label %if.end38

if.else20:                                        ; preds = %if.end
  %cmp21.not = icmp slt i32 %loc.addr.0, %call1
  br i1 %cmp21.not, label %if.else33, label %if.then23

if.then23:                                        ; preds = %if.else20
  %cmp24.not = icmp eq i32 %loc.addr.0, 0
  br i1 %cmp24.not, label %if.end38, label %if.then26

if.then26:                                        ; preds = %if.then23
  %sub28 = add nsw i32 %loc.addr.0, -1
  %call29 = tail call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call, i32 noundef %sub28) #6
  %set30 = getelementptr inbounds i8, i8* %call29, i64 16
  %4 = bitcast i8* %set30 to i32*
  %5 = load i32, i32* %4, align 8, !tbaa !21
  %add = add nsw i32 %5, 1
  br label %if.end38

if.else33:                                        ; preds = %if.else20
  %call35 = tail call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call, i32 noundef %loc.addr.0) #6
  %set36 = getelementptr inbounds i8, i8* %call35, i64 16
  %6 = bitcast i8* %set36 to i32*
  %7 = load i32, i32* %6, align 8, !tbaa !21
  br label %if.end38

if.end38:                                         ; preds = %if.then23, %if.then11, %if.else33, %if.then26, %if.else15
  %set.addr.0 = phi i32 [ %3, %if.else15 ], [ %add, %if.then26 ], [ %7, %if.else33 ], [ 0, %if.then11 ], [ 0, %if.then23 ]
  %inc.0.shrunk = phi i1 [ %cmp8, %if.else15 ], [ %cmp8, %if.then26 ], [ %cmp8, %if.else33 ], [ true, %if.then11 ], [ %cmp8, %if.then23 ]
  %call39 = tail call %struct.X509_name_entry_st* @X509_NAME_ENTRY_dup(%struct.X509_name_entry_st* noundef %ne) #6
  %cmp40 = icmp eq %struct.X509_name_entry_st* %call39, null
  br i1 %cmp40, label %err, label %if.end43

if.end43:                                         ; preds = %if.end38
  %set44 = getelementptr inbounds %struct.X509_name_entry_st, %struct.X509_name_entry_st* %call39, i64 0, i32 2
  store i32 %set.addr.0, i32* %set44, align 8, !tbaa !21
  %call45 = tail call fastcc %struct.stack_st* @ossl_check_X509_NAME_ENTRY_sk_type(%struct.stack_st_X509_NAME_ENTRY* noundef %0) #7
  %8 = bitcast %struct.X509_name_entry_st* %call39 to i8*
  %call47 = tail call i32 @OPENSSL_sk_insert(%struct.stack_st* noundef %call45, i8* noundef nonnull %8, i32 noundef %loc.addr.0) #6
  %tobool.not = icmp eq i32 %call47, 0
  br i1 %tobool.not, label %if.then48, label %if.end49

if.then48:                                        ; preds = %if.end43
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 225, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.X509_NAME_add_entry, i64 0, i64 0)) #6
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 11, i32 noundef 786688, i8* noundef null) #6
  br label %err

if.end49:                                         ; preds = %if.end43
  br i1 %inc.0.shrunk, label %if.then51, label %cleanup

if.then51:                                        ; preds = %if.end49
  %call53 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call) #6
  %i.099 = add nsw i32 %loc.addr.0, 1
  %cmp55100 = icmp slt i32 %i.099, %call53
  br i1 %cmp55100, label %for.body, label %cleanup

for.body:                                         ; preds = %if.then51, %for.body
  %i.0101 = phi i32 [ %i.0, %for.body ], [ %i.099, %if.then51 ]
  %call58 = tail call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call, i32 noundef %i.0101) #6
  %set59 = getelementptr inbounds i8, i8* %call58, i64 16
  %9 = bitcast i8* %set59 to i32*
  %10 = load i32, i32* %9, align 8, !tbaa !21
  %add60 = add nsw i32 %10, 1
  store i32 %add60, i32* %9, align 8, !tbaa !21
  %i.0 = add nsw i32 %i.0101, 1
  %exitcond.not = icmp eq i32 %i.0, %call53
  br i1 %exitcond.not, label %cleanup, label %for.body, !llvm.loop !24

err:                                              ; preds = %if.end38, %if.then48
  tail call void @X509_NAME_ENTRY_free(%struct.X509_name_entry_st* noundef %call39) #6
  br label %cleanup

cleanup:                                          ; preds = %for.body, %if.then51, %if.end49, %entry, %err
  %retval.0 = phi i32 [ 0, %err ], [ 0, %entry ], [ 1, %if.end49 ], [ 1, %if.then51 ], [ 1, %for.body ]
  ret i32 %retval.0
}

declare void @X509_NAME_ENTRY_free(%struct.X509_name_entry_st* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define i32 @X509_NAME_add_entry_by_NID(%struct.X509_name_st* noundef %name, i32 noundef %nid, i32 noundef %type, i8* noundef %bytes, i32 noundef %len, i32 noundef %loc, i32 noundef %set) local_unnamed_addr #0 {
entry:
  %call = tail call %struct.X509_name_entry_st* @X509_NAME_ENTRY_create_by_NID(%struct.X509_name_entry_st** noundef null, i32 noundef %nid, i32 noundef %type, i8* noundef %bytes, i32 noundef %len) #7
  %tobool.not = icmp eq %struct.X509_name_entry_st* %call, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @X509_NAME_add_entry(%struct.X509_name_st* noundef %name, %struct.X509_name_entry_st* noundef nonnull %call, i32 noundef %loc, i32 noundef %set) #7
  tail call void @X509_NAME_ENTRY_free(%struct.X509_name_entry_st* noundef nonnull %call) #6
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %call1, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define %struct.X509_name_entry_st* @X509_NAME_ENTRY_create_by_NID(%struct.X509_name_entry_st** noundef %ne, i32 noundef %nid, i32 noundef %type, i8* noundef %bytes, i32 noundef %len) local_unnamed_addr #0 {
entry:
  %call = tail call %struct.asn1_object_st* @OBJ_nid2obj(i32 noundef %nid) #6
  %cmp = icmp eq %struct.asn1_object_st* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 268, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.X509_NAME_ENTRY_create_by_NID, i64 0, i64 0)) #6
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 11, i32 noundef 109, i8* noundef null) #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call %struct.X509_name_entry_st* @X509_NAME_ENTRY_create_by_OBJ(%struct.X509_name_entry_st** noundef %ne, %struct.asn1_object_st* noundef nonnull %call, i32 noundef %type, i8* noundef %bytes, i32 noundef %len) #7
  tail call void @ASN1_OBJECT_free(%struct.asn1_object_st* noundef nonnull %call) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi %struct.X509_name_entry_st* [ null, %if.then ], [ %call1, %if.end ]
  ret %struct.X509_name_entry_st* %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @X509_NAME_add_entry_by_txt(%struct.X509_name_st* noundef %name, i8* noundef %field, i32 noundef %type, i8* noundef %bytes, i32 noundef %len, i32 noundef %loc, i32 noundef %set) local_unnamed_addr #0 {
entry:
  %call = tail call %struct.X509_name_entry_st* @X509_NAME_ENTRY_create_by_txt(%struct.X509_name_entry_st** noundef null, i8* noundef %field, i32 noundef %type, i8* noundef %bytes, i32 noundef %len) #7
  %tobool.not = icmp eq %struct.X509_name_entry_st* %call, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @X509_NAME_add_entry(%struct.X509_name_st* noundef %name, %struct.X509_name_entry_st* noundef nonnull %call, i32 noundef %loc, i32 noundef %set) #7
  tail call void @X509_NAME_ENTRY_free(%struct.X509_name_entry_st* noundef nonnull %call) #6
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %call1, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define %struct.X509_name_entry_st* @X509_NAME_ENTRY_create_by_txt(%struct.X509_name_entry_st** noundef %ne, i8* noundef %field, i32 noundef %type, i8* noundef %bytes, i32 noundef %len) local_unnamed_addr #0 {
entry:
  %call = tail call %struct.asn1_object_st* @OBJ_txt2obj(i8* noundef %field, i32 noundef 0) #6
  %cmp = icmp eq %struct.asn1_object_st* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 249, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.X509_NAME_ENTRY_create_by_txt, i64 0, i64 0)) #6
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 11, i32 noundef 119, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* noundef %field) #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call %struct.X509_name_entry_st* @X509_NAME_ENTRY_create_by_OBJ(%struct.X509_name_entry_st** noundef %ne, %struct.asn1_object_st* noundef nonnull %call, i32 noundef %type, i8* noundef %bytes, i32 noundef %len) #7
  tail call void @ASN1_OBJECT_free(%struct.asn1_object_st* noundef nonnull %call) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi %struct.X509_name_entry_st* [ null, %if.then ], [ %call1, %if.end ]
  ret %struct.X509_name_entry_st* %retval.0
}

declare %struct.X509_name_entry_st* @X509_NAME_ENTRY_dup(%struct.X509_name_entry_st* noundef) local_unnamed_addr #1

declare i32 @OPENSSL_sk_insert(%struct.stack_st* noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

declare void @ERR_new() local_unnamed_addr #1

declare void @ERR_set_debug(i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #1

declare void @ERR_set_error(i32 noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #1

declare %struct.asn1_object_st* @OBJ_txt2obj(i8* noundef, i32 noundef) local_unnamed_addr #1

declare void @ASN1_OBJECT_free(%struct.asn1_object_st* noundef) local_unnamed_addr #1

declare %struct.X509_name_entry_st* @X509_NAME_ENTRY_new() local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define i32 @X509_NAME_ENTRY_set_object(%struct.X509_name_entry_st* noundef %ne, %struct.asn1_object_st* noundef %obj) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.X509_name_entry_st* %ne, null
  %cmp1 = icmp eq %struct.asn1_object_st* %obj, null
  %or.cond = or i1 %cmp, %cmp1
  br i1 %or.cond, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 306, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.X509_NAME_ENTRY_set_object, i64 0, i64 0)) #6
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 11, i32 noundef 786690, i8* noundef null) #6
  br label %return

if.end:                                           ; preds = %entry
  %object = getelementptr inbounds %struct.X509_name_entry_st, %struct.X509_name_entry_st* %ne, i64 0, i32 0
  %0 = load %struct.asn1_object_st*, %struct.asn1_object_st** %object, align 8, !tbaa !15
  tail call void @ASN1_OBJECT_free(%struct.asn1_object_st* noundef %0) #6
  %call = tail call %struct.asn1_object_st* @OBJ_dup(%struct.asn1_object_st* noundef nonnull %obj) #6
  store %struct.asn1_object_st* %call, %struct.asn1_object_st** %object, align 8, !tbaa !15
  %cmp4 = icmp ne %struct.asn1_object_st* %call, null
  %cond = zext i1 %cmp4 to i32
  br label %return

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ %cond, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @X509_NAME_ENTRY_set_data(%struct.X509_name_entry_st* noundef %ne, i32 noundef %type, i8* noundef %bytes, i32 noundef %len) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.X509_name_entry_st* %ne, null
  br i1 %cmp, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %cmp1 = icmp eq i8* %bytes, null
  %cmp2 = icmp ne i32 %len, 0
  %or.cond = and i1 %cmp1, %cmp2
  br i1 %or.cond, label %cleanup, label %if.end

if.end:                                           ; preds = %lor.lhs.false
  %cmp3 = icmp slt i32 %type, 1
  %and = and i32 %type, 4096
  %tobool.not = icmp eq i32 %and, 0
  %or.cond50 = or i1 %cmp3, %tobool.not
  br i1 %or.cond50, label %if.end8, label %if.then5

if.then5:                                         ; preds = %if.end
  %value = getelementptr inbounds %struct.X509_name_entry_st, %struct.X509_name_entry_st* %ne, i64 0, i32 1
  %object = getelementptr inbounds %struct.X509_name_entry_st, %struct.X509_name_entry_st* %ne, i64 0, i32 0
  %0 = load %struct.asn1_object_st*, %struct.asn1_object_st** %object, align 8, !tbaa !15
  %call = tail call i32 @OBJ_obj2nid(%struct.asn1_object_st* noundef %0) #6
  %call6 = tail call %struct.asn1_string_st* @ASN1_STRING_set_by_NID(%struct.asn1_string_st** noundef nonnull %value, i8* noundef %bytes, i32 noundef %len, i32 noundef %type, i32 noundef %call) #6
  %tobool7.not = icmp ne %struct.asn1_string_st* %call6, null
  %cond = zext i1 %tobool7.not to i32
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %cmp9 = icmp slt i32 %len, 0
  br i1 %cmp9, label %if.then10, label %if.end12

if.then10:                                        ; preds = %if.end8
  %call11 = tail call i64 @strlen(i8* noundef %bytes) #8
  %conv = trunc i64 %call11 to i32
  br label %if.end12

if.end12:                                         ; preds = %if.then10, %if.end8
  %len.addr.0 = phi i32 [ %conv, %if.then10 ], [ %len, %if.end8 ]
  %value13 = getelementptr inbounds %struct.X509_name_entry_st, %struct.X509_name_entry_st* %ne, i64 0, i32 1
  %1 = load %struct.asn1_string_st*, %struct.asn1_string_st** %value13, align 8, !tbaa !19
  %call14 = tail call i32 @ASN1_STRING_set(%struct.asn1_string_st* noundef %1, i8* noundef %bytes, i32 noundef %len.addr.0) #6
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %cleanup, label %if.end17

if.end17:                                         ; preds = %if.end12
  switch i32 %type, label %if.else [
    i32 -1, label %cleanup
    i32 -2, label %if.then23
  ]

if.then23:                                        ; preds = %if.end17
  %call24 = tail call i32 @ASN1_PRINTABLE_type(i8* noundef %bytes, i32 noundef %len.addr.0) #6
  %2 = load %struct.asn1_string_st*, %struct.asn1_string_st** %value13, align 8, !tbaa !19
  %type26 = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %2, i64 0, i32 1
  store i32 %call24, i32* %type26, align 4, !tbaa !25
  br label %cleanup

if.else:                                          ; preds = %if.end17
  %3 = load %struct.asn1_string_st*, %struct.asn1_string_st** %value13, align 8, !tbaa !19
  %type28 = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %3, i64 0, i32 1
  store i32 %type, i32* %type28, align 4, !tbaa !25
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then23, %if.end17, %if.end12, %entry, %lor.lhs.false, %if.then5
  %retval.0 = phi i32 [ %cond, %if.then5 ], [ 0, %lor.lhs.false ], [ 0, %entry ], [ 0, %if.end12 ], [ 1, %if.end17 ], [ 1, %if.then23 ], [ 1, %if.else ]
  ret i32 %retval.0
}

declare %struct.asn1_object_st* @OBJ_dup(%struct.asn1_object_st* noundef) local_unnamed_addr #1

declare %struct.asn1_string_st* @ASN1_STRING_set_by_NID(%struct.asn1_string_st** noundef, i8* noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare i32 @OBJ_obj2nid(%struct.asn1_object_st* noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare i64 @strlen(i8* noundef) local_unnamed_addr #5

declare i32 @ASN1_STRING_set(%struct.asn1_string_st* noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

declare i32 @ASN1_PRINTABLE_type(i8* noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define %struct.asn1_object_st* @X509_NAME_ENTRY_get_object(%struct.X509_name_entry_st* noundef readonly %ne) local_unnamed_addr #2 {
entry:
  %cmp = icmp eq %struct.X509_name_entry_st* %ne, null
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %object = getelementptr inbounds %struct.X509_name_entry_st, %struct.X509_name_entry_st* %ne, i64 0, i32 0
  %0 = load %struct.asn1_object_st*, %struct.asn1_object_st** %object, align 8, !tbaa !15
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi %struct.asn1_object_st* [ %0, %if.end ], [ null, %entry ]
  ret %struct.asn1_object_st* %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define i32 @X509_NAME_ENTRY_set(%struct.X509_name_entry_st* nocapture noundef readonly %ne) local_unnamed_addr #2 {
entry:
  %set = getelementptr inbounds %struct.X509_name_entry_st, %struct.X509_name_entry_st* %ne, i64 0, i32 2
  %0 = load i32, i32* %set, align 8, !tbaa !21
  ret i32 %0
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nobuiltin nounwind "no-builtins" }
attributes #7 = { nobuiltin "no-builtins" }
attributes #8 = { nobuiltin nounwind readonly willreturn "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{!"clang version 14.0.0"}
!4 = !{!5, !6, i64 0}
!5 = !{!"asn1_string_st", !6, i64 0, !6, i64 4, !9, i64 8, !10, i64 16}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!"any pointer", !7, i64 0}
!10 = !{!"long", !7, i64 0}
!11 = !{!5, !9, i64 8}
!12 = !{!7, !7, i64 0}
!13 = !{!14, !9, i64 0}
!14 = !{!"X509_name_st", !9, i64 0, !6, i64 8, !9, i64 16, !9, i64 24, !6, i64 32}
!15 = !{!16, !9, i64 0}
!16 = !{!"X509_name_entry_st", !9, i64 0, !9, i64 8, !6, i64 16, !6, i64 20}
!17 = distinct !{!17, !18}
!18 = !{!"llvm.loop.mustprogress"}
!19 = !{!16, !9, i64 8}
!20 = !{!14, !6, i64 8}
!21 = !{!16, !6, i64 16}
!22 = distinct !{!22, !18}
!23 = !{!9, !9, i64 0}
!24 = distinct !{!24, !18}
!25 = !{!5, !6, i64 4}
