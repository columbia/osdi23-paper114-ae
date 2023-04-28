; ModuleID = 'crypto/cms/cms_att.c'
source_filename = "crypto/cms/cms_att.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.anon = type { i32, i32 }
%struct.CMS_SignerInfo_st = type { i32, %struct.CMS_SignerIdentifier_st*, %struct.X509_algor_st*, %struct.stack_st_X509_ATTRIBUTE*, %struct.X509_algor_st*, %struct.asn1_string_st*, %struct.stack_st_X509_ATTRIBUTE*, %struct.x509_st*, %struct.evp_pkey_st*, %struct.evp_md_ctx_st*, %struct.evp_pkey_ctx_st*, %struct.CMS_CTX_st* }
%struct.CMS_SignerIdentifier_st = type { i32, %union.anon }
%union.anon = type { %struct.CMS_IssuerAndSerialNumber_st* }
%struct.CMS_IssuerAndSerialNumber_st = type { %struct.X509_name_st*, %struct.asn1_string_st* }
%struct.X509_name_st = type opaque
%struct.X509_algor_st = type { %struct.asn1_object_st*, %struct.asn1_type_st* }
%struct.asn1_object_st = type opaque
%struct.asn1_type_st = type { i32, %union.anon.0 }
%union.anon.0 = type { i8* }
%struct.asn1_string_st = type { i32, i32, i8*, i64 }
%struct.stack_st_X509_ATTRIBUTE = type opaque
%struct.x509_st = type opaque
%struct.evp_pkey_st = type opaque
%struct.evp_md_ctx_st = type opaque
%struct.evp_pkey_ctx_st = type opaque
%struct.CMS_CTX_st = type { %struct.ossl_lib_ctx_st*, i8* }
%struct.ossl_lib_ctx_st = type opaque
%struct.x509_attributes_st = type opaque

@cms_attribute_properties = internal unnamed_addr constant [7 x %struct.anon] [%struct.anon { i32 50, i32 113 }, %struct.anon { i32 51, i32 113 }, %struct.anon { i32 52, i32 97 }, %struct.anon { i32 53, i32 2 }, %struct.anon { i32 223, i32 97 }, %struct.anon { i32 1086, i32 97 }, %struct.anon { i32 212, i32 97 }], align 16
@.str = private unnamed_addr constant [21 x i8] c"crypto/cms/cms_att.c\00", align 1
@__func__.ossl_cms_si_check_attributes = private unnamed_addr constant [29 x i8] c"ossl_cms_si_check_attributes\00", align 1

; Function Attrs: noinline nounwind uwtable
define i32 @CMS_signed_get_attr_count(%struct.CMS_SignerInfo_st* nocapture noundef readonly %si) local_unnamed_addr #0 {
entry:
  %signedAttrs = getelementptr inbounds %struct.CMS_SignerInfo_st, %struct.CMS_SignerInfo_st* %si, i64 0, i32 3
  %0 = load %struct.stack_st_X509_ATTRIBUTE*, %struct.stack_st_X509_ATTRIBUTE** %signedAttrs, align 8, !tbaa !4
  %call = tail call i32 @X509at_get_attr_count(%struct.stack_st_X509_ATTRIBUTE* noundef %0) #3
  ret i32 %call
}

declare i32 @X509at_get_attr_count(%struct.stack_st_X509_ATTRIBUTE* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define i32 @CMS_signed_get_attr_by_NID(%struct.CMS_SignerInfo_st* nocapture noundef readonly %si, i32 noundef %nid, i32 noundef %lastpos) local_unnamed_addr #0 {
entry:
  %signedAttrs = getelementptr inbounds %struct.CMS_SignerInfo_st, %struct.CMS_SignerInfo_st* %si, i64 0, i32 3
  %0 = load %struct.stack_st_X509_ATTRIBUTE*, %struct.stack_st_X509_ATTRIBUTE** %signedAttrs, align 8, !tbaa !4
  %call = tail call i32 @X509at_get_attr_by_NID(%struct.stack_st_X509_ATTRIBUTE* noundef %0, i32 noundef %nid, i32 noundef %lastpos) #3
  ret i32 %call
}

declare i32 @X509at_get_attr_by_NID(%struct.stack_st_X509_ATTRIBUTE* noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define i32 @CMS_signed_get_attr_by_OBJ(%struct.CMS_SignerInfo_st* nocapture noundef readonly %si, %struct.asn1_object_st* noundef %obj, i32 noundef %lastpos) local_unnamed_addr #0 {
entry:
  %signedAttrs = getelementptr inbounds %struct.CMS_SignerInfo_st, %struct.CMS_SignerInfo_st* %si, i64 0, i32 3
  %0 = load %struct.stack_st_X509_ATTRIBUTE*, %struct.stack_st_X509_ATTRIBUTE** %signedAttrs, align 8, !tbaa !4
  %call = tail call i32 @X509at_get_attr_by_OBJ(%struct.stack_st_X509_ATTRIBUTE* noundef %0, %struct.asn1_object_st* noundef %obj, i32 noundef %lastpos) #3
  ret i32 %call
}

declare i32 @X509at_get_attr_by_OBJ(%struct.stack_st_X509_ATTRIBUTE* noundef, %struct.asn1_object_st* noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define %struct.x509_attributes_st* @CMS_signed_get_attr(%struct.CMS_SignerInfo_st* nocapture noundef readonly %si, i32 noundef %loc) local_unnamed_addr #0 {
entry:
  %signedAttrs = getelementptr inbounds %struct.CMS_SignerInfo_st, %struct.CMS_SignerInfo_st* %si, i64 0, i32 3
  %0 = load %struct.stack_st_X509_ATTRIBUTE*, %struct.stack_st_X509_ATTRIBUTE** %signedAttrs, align 8, !tbaa !4
  %call = tail call %struct.x509_attributes_st* @X509at_get_attr(%struct.stack_st_X509_ATTRIBUTE* noundef %0, i32 noundef %loc) #3
  ret %struct.x509_attributes_st* %call
}

declare %struct.x509_attributes_st* @X509at_get_attr(%struct.stack_st_X509_ATTRIBUTE* noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define %struct.x509_attributes_st* @CMS_signed_delete_attr(%struct.CMS_SignerInfo_st* nocapture noundef readonly %si, i32 noundef %loc) local_unnamed_addr #0 {
entry:
  %signedAttrs = getelementptr inbounds %struct.CMS_SignerInfo_st, %struct.CMS_SignerInfo_st* %si, i64 0, i32 3
  %0 = load %struct.stack_st_X509_ATTRIBUTE*, %struct.stack_st_X509_ATTRIBUTE** %signedAttrs, align 8, !tbaa !4
  %call = tail call %struct.x509_attributes_st* @X509at_delete_attr(%struct.stack_st_X509_ATTRIBUTE* noundef %0, i32 noundef %loc) #3
  ret %struct.x509_attributes_st* %call
}

declare %struct.x509_attributes_st* @X509at_delete_attr(%struct.stack_st_X509_ATTRIBUTE* noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define i32 @CMS_signed_add1_attr(%struct.CMS_SignerInfo_st* noundef %si, %struct.x509_attributes_st* noundef %attr) local_unnamed_addr #0 {
entry:
  %signedAttrs = getelementptr inbounds %struct.CMS_SignerInfo_st, %struct.CMS_SignerInfo_st* %si, i64 0, i32 3
  %call = tail call %struct.stack_st_X509_ATTRIBUTE* @X509at_add1_attr(%struct.stack_st_X509_ATTRIBUTE** noundef nonnull %signedAttrs, %struct.x509_attributes_st* noundef %attr) #3
  %tobool.not = icmp ne %struct.stack_st_X509_ATTRIBUTE* %call, null
  %. = zext i1 %tobool.not to i32
  ret i32 %.
}

declare %struct.stack_st_X509_ATTRIBUTE* @X509at_add1_attr(%struct.stack_st_X509_ATTRIBUTE** noundef, %struct.x509_attributes_st* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define i32 @CMS_signed_add1_attr_by_OBJ(%struct.CMS_SignerInfo_st* noundef %si, %struct.asn1_object_st* noundef %obj, i32 noundef %type, i8* noundef %bytes, i32 noundef %len) local_unnamed_addr #0 {
entry:
  %signedAttrs = getelementptr inbounds %struct.CMS_SignerInfo_st, %struct.CMS_SignerInfo_st* %si, i64 0, i32 3
  %call = tail call %struct.stack_st_X509_ATTRIBUTE* @X509at_add1_attr_by_OBJ(%struct.stack_st_X509_ATTRIBUTE** noundef nonnull %signedAttrs, %struct.asn1_object_st* noundef %obj, i32 noundef %type, i8* noundef %bytes, i32 noundef %len) #3
  %tobool.not = icmp ne %struct.stack_st_X509_ATTRIBUTE* %call, null
  %. = zext i1 %tobool.not to i32
  ret i32 %.
}

declare %struct.stack_st_X509_ATTRIBUTE* @X509at_add1_attr_by_OBJ(%struct.stack_st_X509_ATTRIBUTE** noundef, %struct.asn1_object_st* noundef, i32 noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define i32 @CMS_signed_add1_attr_by_NID(%struct.CMS_SignerInfo_st* noundef %si, i32 noundef %nid, i32 noundef %type, i8* noundef %bytes, i32 noundef %len) local_unnamed_addr #0 {
entry:
  %signedAttrs = getelementptr inbounds %struct.CMS_SignerInfo_st, %struct.CMS_SignerInfo_st* %si, i64 0, i32 3
  %call = tail call %struct.stack_st_X509_ATTRIBUTE* @X509at_add1_attr_by_NID(%struct.stack_st_X509_ATTRIBUTE** noundef nonnull %signedAttrs, i32 noundef %nid, i32 noundef %type, i8* noundef %bytes, i32 noundef %len) #3
  %tobool.not = icmp ne %struct.stack_st_X509_ATTRIBUTE* %call, null
  %. = zext i1 %tobool.not to i32
  ret i32 %.
}

declare %struct.stack_st_X509_ATTRIBUTE* @X509at_add1_attr_by_NID(%struct.stack_st_X509_ATTRIBUTE** noundef, i32 noundef, i32 noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define i32 @CMS_signed_add1_attr_by_txt(%struct.CMS_SignerInfo_st* noundef %si, i8* noundef %attrname, i32 noundef %type, i8* noundef %bytes, i32 noundef %len) local_unnamed_addr #0 {
entry:
  %signedAttrs = getelementptr inbounds %struct.CMS_SignerInfo_st, %struct.CMS_SignerInfo_st* %si, i64 0, i32 3
  %call = tail call %struct.stack_st_X509_ATTRIBUTE* @X509at_add1_attr_by_txt(%struct.stack_st_X509_ATTRIBUTE** noundef nonnull %signedAttrs, i8* noundef %attrname, i32 noundef %type, i8* noundef %bytes, i32 noundef %len) #3
  %tobool.not = icmp ne %struct.stack_st_X509_ATTRIBUTE* %call, null
  %. = zext i1 %tobool.not to i32
  ret i32 %.
}

declare %struct.stack_st_X509_ATTRIBUTE* @X509at_add1_attr_by_txt(%struct.stack_st_X509_ATTRIBUTE** noundef, i8* noundef, i32 noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define i8* @CMS_signed_get0_data_by_OBJ(%struct.CMS_SignerInfo_st* nocapture noundef readonly %si, %struct.asn1_object_st* noundef %oid, i32 noundef %lastpos, i32 noundef %type) local_unnamed_addr #0 {
entry:
  %signedAttrs = getelementptr inbounds %struct.CMS_SignerInfo_st, %struct.CMS_SignerInfo_st* %si, i64 0, i32 3
  %0 = load %struct.stack_st_X509_ATTRIBUTE*, %struct.stack_st_X509_ATTRIBUTE** %signedAttrs, align 8, !tbaa !4
  %call = tail call i8* @X509at_get0_data_by_OBJ(%struct.stack_st_X509_ATTRIBUTE* noundef %0, %struct.asn1_object_st* noundef %oid, i32 noundef %lastpos, i32 noundef %type) #3
  ret i8* %call
}

declare i8* @X509at_get0_data_by_OBJ(%struct.stack_st_X509_ATTRIBUTE* noundef, %struct.asn1_object_st* noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define i32 @CMS_unsigned_get_attr_count(%struct.CMS_SignerInfo_st* nocapture noundef readonly %si) local_unnamed_addr #0 {
entry:
  %unsignedAttrs = getelementptr inbounds %struct.CMS_SignerInfo_st, %struct.CMS_SignerInfo_st* %si, i64 0, i32 6
  %0 = load %struct.stack_st_X509_ATTRIBUTE*, %struct.stack_st_X509_ATTRIBUTE** %unsignedAttrs, align 8, !tbaa !10
  %call = tail call i32 @X509at_get_attr_count(%struct.stack_st_X509_ATTRIBUTE* noundef %0) #3
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define i32 @CMS_unsigned_get_attr_by_NID(%struct.CMS_SignerInfo_st* nocapture noundef readonly %si, i32 noundef %nid, i32 noundef %lastpos) local_unnamed_addr #0 {
entry:
  %unsignedAttrs = getelementptr inbounds %struct.CMS_SignerInfo_st, %struct.CMS_SignerInfo_st* %si, i64 0, i32 6
  %0 = load %struct.stack_st_X509_ATTRIBUTE*, %struct.stack_st_X509_ATTRIBUTE** %unsignedAttrs, align 8, !tbaa !10
  %call = tail call i32 @X509at_get_attr_by_NID(%struct.stack_st_X509_ATTRIBUTE* noundef %0, i32 noundef %nid, i32 noundef %lastpos) #3
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define i32 @CMS_unsigned_get_attr_by_OBJ(%struct.CMS_SignerInfo_st* nocapture noundef readonly %si, %struct.asn1_object_st* noundef %obj, i32 noundef %lastpos) local_unnamed_addr #0 {
entry:
  %unsignedAttrs = getelementptr inbounds %struct.CMS_SignerInfo_st, %struct.CMS_SignerInfo_st* %si, i64 0, i32 6
  %0 = load %struct.stack_st_X509_ATTRIBUTE*, %struct.stack_st_X509_ATTRIBUTE** %unsignedAttrs, align 8, !tbaa !10
  %call = tail call i32 @X509at_get_attr_by_OBJ(%struct.stack_st_X509_ATTRIBUTE* noundef %0, %struct.asn1_object_st* noundef %obj, i32 noundef %lastpos) #3
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define %struct.x509_attributes_st* @CMS_unsigned_get_attr(%struct.CMS_SignerInfo_st* nocapture noundef readonly %si, i32 noundef %loc) local_unnamed_addr #0 {
entry:
  %unsignedAttrs = getelementptr inbounds %struct.CMS_SignerInfo_st, %struct.CMS_SignerInfo_st* %si, i64 0, i32 6
  %0 = load %struct.stack_st_X509_ATTRIBUTE*, %struct.stack_st_X509_ATTRIBUTE** %unsignedAttrs, align 8, !tbaa !10
  %call = tail call %struct.x509_attributes_st* @X509at_get_attr(%struct.stack_st_X509_ATTRIBUTE* noundef %0, i32 noundef %loc) #3
  ret %struct.x509_attributes_st* %call
}

; Function Attrs: noinline nounwind uwtable
define %struct.x509_attributes_st* @CMS_unsigned_delete_attr(%struct.CMS_SignerInfo_st* nocapture noundef readonly %si, i32 noundef %loc) local_unnamed_addr #0 {
entry:
  %unsignedAttrs = getelementptr inbounds %struct.CMS_SignerInfo_st, %struct.CMS_SignerInfo_st* %si, i64 0, i32 6
  %0 = load %struct.stack_st_X509_ATTRIBUTE*, %struct.stack_st_X509_ATTRIBUTE** %unsignedAttrs, align 8, !tbaa !10
  %call = tail call %struct.x509_attributes_st* @X509at_delete_attr(%struct.stack_st_X509_ATTRIBUTE* noundef %0, i32 noundef %loc) #3
  ret %struct.x509_attributes_st* %call
}

; Function Attrs: noinline nounwind uwtable
define i32 @CMS_unsigned_add1_attr(%struct.CMS_SignerInfo_st* noundef %si, %struct.x509_attributes_st* noundef %attr) local_unnamed_addr #0 {
entry:
  %unsignedAttrs = getelementptr inbounds %struct.CMS_SignerInfo_st, %struct.CMS_SignerInfo_st* %si, i64 0, i32 6
  %call = tail call %struct.stack_st_X509_ATTRIBUTE* @X509at_add1_attr(%struct.stack_st_X509_ATTRIBUTE** noundef nonnull %unsignedAttrs, %struct.x509_attributes_st* noundef %attr) #3
  %tobool.not = icmp ne %struct.stack_st_X509_ATTRIBUTE* %call, null
  %. = zext i1 %tobool.not to i32
  ret i32 %.
}

; Function Attrs: noinline nounwind uwtable
define i32 @CMS_unsigned_add1_attr_by_OBJ(%struct.CMS_SignerInfo_st* noundef %si, %struct.asn1_object_st* noundef %obj, i32 noundef %type, i8* noundef %bytes, i32 noundef %len) local_unnamed_addr #0 {
entry:
  %unsignedAttrs = getelementptr inbounds %struct.CMS_SignerInfo_st, %struct.CMS_SignerInfo_st* %si, i64 0, i32 6
  %call = tail call %struct.stack_st_X509_ATTRIBUTE* @X509at_add1_attr_by_OBJ(%struct.stack_st_X509_ATTRIBUTE** noundef nonnull %unsignedAttrs, %struct.asn1_object_st* noundef %obj, i32 noundef %type, i8* noundef %bytes, i32 noundef %len) #3
  %tobool.not = icmp ne %struct.stack_st_X509_ATTRIBUTE* %call, null
  %. = zext i1 %tobool.not to i32
  ret i32 %.
}

; Function Attrs: noinline nounwind uwtable
define i32 @CMS_unsigned_add1_attr_by_NID(%struct.CMS_SignerInfo_st* noundef %si, i32 noundef %nid, i32 noundef %type, i8* noundef %bytes, i32 noundef %len) local_unnamed_addr #0 {
entry:
  %unsignedAttrs = getelementptr inbounds %struct.CMS_SignerInfo_st, %struct.CMS_SignerInfo_st* %si, i64 0, i32 6
  %call = tail call %struct.stack_st_X509_ATTRIBUTE* @X509at_add1_attr_by_NID(%struct.stack_st_X509_ATTRIBUTE** noundef nonnull %unsignedAttrs, i32 noundef %nid, i32 noundef %type, i8* noundef %bytes, i32 noundef %len) #3
  %tobool.not = icmp ne %struct.stack_st_X509_ATTRIBUTE* %call, null
  %. = zext i1 %tobool.not to i32
  ret i32 %.
}

; Function Attrs: noinline nounwind uwtable
define i32 @CMS_unsigned_add1_attr_by_txt(%struct.CMS_SignerInfo_st* noundef %si, i8* noundef %attrname, i32 noundef %type, i8* noundef %bytes, i32 noundef %len) local_unnamed_addr #0 {
entry:
  %unsignedAttrs = getelementptr inbounds %struct.CMS_SignerInfo_st, %struct.CMS_SignerInfo_st* %si, i64 0, i32 6
  %call = tail call %struct.stack_st_X509_ATTRIBUTE* @X509at_add1_attr_by_txt(%struct.stack_st_X509_ATTRIBUTE** noundef nonnull %unsignedAttrs, i8* noundef %attrname, i32 noundef %type, i8* noundef %bytes, i32 noundef %len) #3
  %tobool.not = icmp ne %struct.stack_st_X509_ATTRIBUTE* %call, null
  %. = zext i1 %tobool.not to i32
  ret i32 %.
}

; Function Attrs: noinline nounwind uwtable
define i8* @CMS_unsigned_get0_data_by_OBJ(%struct.CMS_SignerInfo_st* nocapture noundef readonly %si, %struct.asn1_object_st* noundef %oid, i32 noundef %lastpos, i32 noundef %type) local_unnamed_addr #0 {
entry:
  %unsignedAttrs = getelementptr inbounds %struct.CMS_SignerInfo_st, %struct.CMS_SignerInfo_st* %si, i64 0, i32 6
  %0 = load %struct.stack_st_X509_ATTRIBUTE*, %struct.stack_st_X509_ATTRIBUTE** %unsignedAttrs, align 8, !tbaa !10
  %call = tail call i8* @X509at_get0_data_by_OBJ(%struct.stack_st_X509_ATTRIBUTE* noundef %0, %struct.asn1_object_st* noundef %oid, i32 noundef %lastpos, i32 noundef %type) #3
  ret i8* %call
}

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_cms_si_check_attributes(%struct.CMS_SignerInfo_st* nocapture noundef readonly %si) local_unnamed_addr #0 {
entry:
  %call = tail call i32 @CMS_signed_get_attr_count(%struct.CMS_SignerInfo_st* noundef %si) #4
  %cmp = icmp sgt i32 %call, 0
  %conv = zext i1 %cmp to i32
  %call1 = tail call i32 @CMS_unsigned_get_attr_count(%struct.CMS_SignerInfo_st* noundef %si) #4
  %cmp2 = icmp sgt i32 %call1, 0
  %conv3 = zext i1 %cmp2 to i32
  %signedAttrs = getelementptr inbounds %struct.CMS_SignerInfo_st, %struct.CMS_SignerInfo_st* %si, i64 0, i32 3
  %unsignedAttrs = getelementptr inbounds %struct.CMS_SignerInfo_st, %struct.CMS_SignerInfo_st* %si, i64 0, i32 6
  br label %for.body

for.cond:                                         ; preds = %lor.lhs.false
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 7
  br i1 %exitcond.not, label %cleanup14, label %for.body, !llvm.loop !11

for.body:                                         ; preds = %entry, %for.cond
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.next, %for.cond ]
  %nid6 = getelementptr inbounds [7 x %struct.anon], [7 x %struct.anon]* @cms_attribute_properties, i64 0, i64 %indvars.iv, i32 0
  %0 = load i32, i32* %nid6, align 8, !tbaa !13
  %flags9 = getelementptr inbounds [7 x %struct.anon], [7 x %struct.anon]* @cms_attribute_properties, i64 0, i64 %indvars.iv, i32 1
  %1 = load i32, i32* %flags9, align 4, !tbaa !15
  %2 = load %struct.stack_st_X509_ATTRIBUTE*, %struct.stack_st_X509_ATTRIBUTE** %signedAttrs, align 8, !tbaa !4
  %call10 = tail call fastcc i32 @cms_check_attribute(i32 noundef %0, i32 noundef %1, i32 noundef 1, %struct.stack_st_X509_ATTRIBUTE* noundef %2, i32 noundef %conv) #4
  %tobool.not = icmp eq i32 %call10, 0
  br i1 %tobool.not, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %3 = load %struct.stack_st_X509_ATTRIBUTE*, %struct.stack_st_X509_ATTRIBUTE** %unsignedAttrs, align 8, !tbaa !10
  %call11 = tail call fastcc i32 @cms_check_attribute(i32 noundef %0, i32 noundef %1, i32 noundef 2, %struct.stack_st_X509_ATTRIBUTE* noundef %3, i32 noundef %conv3) #4
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.then, label %for.cond

if.then:                                          ; preds = %lor.lhs.false, %for.body
  tail call void @ERR_new() #3
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 280, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.ossl_cms_si_check_attributes, i64 0, i64 0)) #3
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 46, i32 noundef 161, i8* noundef null) #3
  br label %cleanup14

cleanup14:                                        ; preds = %for.cond, %if.then
  %retval.2 = phi i32 [ 0, %if.then ], [ 1, %for.cond ]
  ret i32 %retval.2
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @cms_check_attribute(i32 noundef %nid, i32 noundef %flags, i32 noundef %type, %struct.stack_st_X509_ATTRIBUTE* noundef %attrs, i32 noundef %have_attrs) unnamed_addr #0 {
entry:
  %lastpos = alloca i32, align 4
  %0 = bitcast i32* %lastpos to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #5
  store i32 -1, i32* %lastpos, align 4, !tbaa !16
  %call = call fastcc %struct.x509_attributes_st* @cms_attrib_get(i32 noundef %nid, %struct.stack_st_X509_ATTRIBUTE* noundef %attrs, i32* noundef nonnull %lastpos) #4
  %cmp.not = icmp eq %struct.x509_attributes_st* %call, null
  br i1 %cmp.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %call1 = tail call i32 @X509_ATTRIBUTE_count(%struct.x509_attributes_st* noundef nonnull %call) #3
  %and = and i32 %type, %flags
  %cmp2 = icmp eq i32 %and, 0
  br i1 %cmp2, label %cleanup24, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then
  %and3 = and i32 %flags, 32
  %cmp4.not = icmp eq i32 %and3, 0
  br i1 %cmp4.not, label %lor.lhs.false7, label %land.lhs.true

land.lhs.true:                                    ; preds = %lor.lhs.false
  %call5 = call fastcc %struct.x509_attributes_st* @cms_attrib_get(i32 noundef %nid, %struct.stack_st_X509_ATTRIBUTE* noundef %attrs, i32* noundef nonnull %lastpos) #4
  %cmp6.not = icmp eq %struct.x509_attributes_st* %call5, null
  br i1 %cmp6.not, label %lor.lhs.false7, label %cleanup24

lor.lhs.false7:                                   ; preds = %land.lhs.true, %lor.lhs.false
  %and8 = and i32 %flags, 64
  %cmp9 = icmp ne i32 %and8, 0
  %cmp11 = icmp ne i32 %call1, 1
  %or.cond = select i1 %cmp9, i1 %cmp11, i1 false
  %cmp13 = icmp eq i32 %call1, 0
  %or.cond26 = select i1 %or.cond, i1 true, i1 %cmp13
  br i1 %or.cond26, label %cleanup24, label %if.end23

if.else:                                          ; preds = %entry
  %tobool.not = icmp eq i32 %have_attrs, 0
  %and16 = and i32 %flags, 16
  %cmp17.not = icmp eq i32 %and16, 0
  %or.cond38 = or i1 %cmp17.not, %tobool.not
  %and19 = and i32 %type, %flags
  %cmp20.not = icmp eq i32 %and19, 0
  %or.cond39 = or i1 %cmp20.not, %or.cond38
  br i1 %or.cond39, label %if.end23, label %cleanup24

if.end23:                                         ; preds = %lor.lhs.false7, %if.else
  br label %cleanup24

cleanup24:                                        ; preds = %if.else, %lor.lhs.false7, %land.lhs.true, %if.then, %if.end23
  %retval.1 = phi i32 [ 1, %if.end23 ], [ 0, %if.then ], [ 0, %land.lhs.true ], [ 0, %lor.lhs.false7 ], [ 0, %if.else ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #5
  ret i32 %retval.1
}

declare void @ERR_new() local_unnamed_addr #1

declare void @ERR_set_debug(i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #1

declare void @ERR_set_error(i32 noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.x509_attributes_st* @cms_attrib_get(i32 noundef %nid, %struct.stack_st_X509_ATTRIBUTE* noundef %attrs, i32* nocapture noundef %lastpos) unnamed_addr #0 {
entry:
  %0 = load i32, i32* %lastpos, align 4, !tbaa !16
  %call = tail call i32 @X509at_get_attr_by_NID(%struct.stack_st_X509_ATTRIBUTE* noundef %attrs, i32 noundef %nid, i32 noundef %0) #3
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call1 = tail call %struct.x509_attributes_st* @X509at_get_attr(%struct.stack_st_X509_ATTRIBUTE* noundef %attrs, i32 noundef %call) #3
  store i32 %call, i32* %lastpos, align 4, !tbaa !16
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi %struct.x509_attributes_st* [ %call1, %if.end ], [ null, %entry ]
  ret %struct.x509_attributes_st* %retval.0
}

declare i32 @X509_ATTRIBUTE_count(%struct.x509_attributes_st* noundef) local_unnamed_addr #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #3 = { nobuiltin nounwind "no-builtins" }
attributes #4 = { nobuiltin "no-builtins" }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{!"clang version 14.0.0"}
!4 = !{!5, !9, i64 24}
!5 = !{!"CMS_SignerInfo_st", !6, i64 0, !9, i64 8, !9, i64 16, !9, i64 24, !9, i64 32, !9, i64 40, !9, i64 48, !9, i64 56, !9, i64 64, !9, i64 72, !9, i64 80, !9, i64 88}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!"any pointer", !7, i64 0}
!10 = !{!5, !9, i64 48}
!11 = distinct !{!11, !12}
!12 = !{!"llvm.loop.mustprogress"}
!13 = !{!14, !6, i64 0}
!14 = !{!"", !6, i64 0, !6, i64 4}
!15 = !{!14, !6, i64 4}
!16 = !{!6, !6, i64 0}
