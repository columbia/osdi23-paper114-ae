; ModuleID = 'crypto/cms/cms_smime.c'
source_filename = "crypto/cms/cms_smime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.CMS_ContentInfo_st = type { %struct.asn1_object_st*, %union.anon, %struct.CMS_CTX_st }
%struct.asn1_object_st = type { i8*, i8*, i32, i32, i8*, i32 }
%union.anon = type { %struct.asn1_string_st* }
%struct.asn1_string_st = type { i32, i32, i8*, i64 }
%struct.CMS_CTX_st = type { %struct.ossl_lib_ctx_st*, i8* }
%struct.ossl_lib_ctx_st = type opaque
%struct.bio_st = type opaque
%struct.evp_md_st = type opaque
%struct.evp_cipher_st = type opaque
%struct.stack_st_X509 = type opaque
%struct.x509_store_st = type opaque
%struct.x509_st = type opaque
%struct.stack_st_CMS_SignerInfo = type opaque
%struct.stack_st = type opaque
%struct.CMS_SignerInfo_st = type { i32, %struct.CMS_SignerIdentifier_st*, %struct.X509_algor_st*, %struct.stack_st_X509_ATTRIBUTE*, %struct.X509_algor_st*, %struct.asn1_string_st*, %struct.stack_st_X509_ATTRIBUTE*, %struct.x509_st*, %struct.evp_pkey_st*, %struct.evp_md_ctx_st*, %struct.evp_pkey_ctx_st*, %struct.CMS_CTX_st* }
%struct.CMS_SignerIdentifier_st = type { i32, %union.anon.1 }
%union.anon.1 = type { %struct.CMS_IssuerAndSerialNumber_st* }
%struct.CMS_IssuerAndSerialNumber_st = type { %struct.X509_name_st*, %struct.asn1_string_st* }
%struct.X509_name_st = type opaque
%struct.X509_algor_st = type { %struct.asn1_object_st*, %struct.asn1_type_st* }
%struct.asn1_type_st = type { i32, %union.anon.0 }
%union.anon.0 = type { i8* }
%struct.stack_st_X509_ATTRIBUTE = type opaque
%struct.evp_pkey_st = type opaque
%struct.evp_md_ctx_st = type opaque
%struct.evp_pkey_ctx_st = type opaque
%struct.stack_st_X509_CRL = type opaque
%struct.x509_store_ctx_st = type opaque
%struct.bio_method_st = type opaque
%struct.X509_crl_st = type opaque
%struct.CMS_RecipientInfo_st = type { i32, %union.anon.2 }
%union.anon.2 = type { %struct.CMS_KeyTransRecipientInfo_st* }
%struct.CMS_KeyTransRecipientInfo_st = type { i32, %struct.CMS_SignerIdentifier_st*, %struct.X509_algor_st*, %struct.asn1_string_st*, %struct.x509_st*, %struct.evp_pkey_st*, %struct.evp_pkey_ctx_st*, %struct.CMS_CTX_st* }
%struct.stack_st_CMS_RecipientInfo = type opaque
%struct.CMS_EncryptedContentInfo_st = type { %struct.asn1_object_st*, %struct.X509_algor_st*, %struct.asn1_string_st*, %struct.evp_cipher_st*, i8*, i64, i8*, i64, i32, i32 }
%struct.stack_st_CMS_RecipientEncryptedKey = type opaque
%struct.CMS_RecipientEncryptedKey_st = type { %struct.CMS_KeyAgreeRecipientIdentifier_st*, %struct.asn1_string_st*, %struct.evp_pkey_st* }
%struct.CMS_KeyAgreeRecipientIdentifier_st = type { i32, %union.anon.4 }
%union.anon.4 = type { %struct.CMS_IssuerAndSerialNumber_st* }

@.str = private unnamed_addr constant [23 x i8] c"crypto/cms/cms_smime.c\00", align 1
@__func__.CMS_data = private unnamed_addr constant [9 x i8] c"CMS_data\00", align 1
@__func__.CMS_digest_verify = private unnamed_addr constant [18 x i8] c"CMS_digest_verify\00", align 1
@__func__.CMS_EncryptedData_decrypt = private unnamed_addr constant [26 x i8] c"CMS_EncryptedData_decrypt\00", align 1
@__func__.CMS_EncryptedData_encrypt_ex = private unnamed_addr constant [29 x i8] c"CMS_EncryptedData_encrypt_ex\00", align 1
@__func__.CMS_verify = private unnamed_addr constant [11 x i8] c"CMS_verify\00", align 1
@__func__.CMS_sign_ex = private unnamed_addr constant [12 x i8] c"CMS_sign_ex\00", align 1
@__func__.CMS_sign_receipt = private unnamed_addr constant [17 x i8] c"CMS_sign_receipt\00", align 1
@__func__.CMS_encrypt_ex = private unnamed_addr constant [15 x i8] c"CMS_encrypt_ex\00", align 1
@__func__.CMS_decrypt_set1_pkey_and_peer = private unnamed_addr constant [31 x i8] c"CMS_decrypt_set1_pkey_and_peer\00", align 1
@__func__.CMS_decrypt_set1_key = private unnamed_addr constant [21 x i8] c"CMS_decrypt_set1_key\00", align 1
@__func__.CMS_decrypt_set1_password = private unnamed_addr constant [26 x i8] c"CMS_decrypt_set1_password\00", align 1
@__func__.CMS_decrypt = private unnamed_addr constant [12 x i8] c"CMS_decrypt\00", align 1
@__func__.CMS_final = private unnamed_addr constant [10 x i8] c"CMS_final\00", align 1
@__func__.CMS_uncompress = private unnamed_addr constant [15 x i8] c"CMS_uncompress\00", align 1
@__func__.CMS_compress = private unnamed_addr constant [13 x i8] c"CMS_compress\00", align 1
@__func__.cms_copy_content = private unnamed_addr constant [17 x i8] c"cms_copy_content\00", align 1
@__func__.check_content = private unnamed_addr constant [14 x i8] c"check_content\00", align 1
@__func__.cms_signerinfo_verify_cert = private unnamed_addr constant [27 x i8] c"cms_signerinfo_verify_cert\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"smime_sign\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"Verify error: %s\00", align 1

; Function Attrs: noinline nounwind uwtable
define i32 @CMS_data(%struct.CMS_ContentInfo_st* noundef %cms, %struct.bio_st* noundef %out, i32 noundef %flags) local_unnamed_addr #0 {
entry:
  %call = tail call %struct.asn1_object_st* @CMS_get0_type(%struct.CMS_ContentInfo_st* noundef %cms) #4
  %call1 = tail call i32 @OBJ_obj2nid(%struct.asn1_object_st* noundef %call) #4
  %cmp.not = icmp eq i32 %call1, 21
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #4
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 110, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @__func__.CMS_data, i64 0, i64 0)) #4
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 46, i32 noundef 143, i8* noundef null) #4
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call %struct.bio_st* @CMS_dataInit(%struct.CMS_ContentInfo_st* noundef %cms, %struct.bio_st* noundef null) #4
  %cmp3 = icmp eq %struct.bio_st* %call2, null
  br i1 %cmp3, label %cleanup, label %if.end5

if.end5:                                          ; preds = %if.end
  %call6 = tail call fastcc i32 @cms_copy_content(%struct.bio_st* noundef %out, %struct.bio_st* noundef nonnull %call2, i32 noundef %flags) #5
  tail call void @BIO_free_all(%struct.bio_st* noundef nonnull %call2) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.end5, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ %call6, %if.end5 ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

declare i32 @OBJ_obj2nid(%struct.asn1_object_st* noundef) local_unnamed_addr #2

declare %struct.asn1_object_st* @CMS_get0_type(%struct.CMS_ContentInfo_st* noundef) local_unnamed_addr #2

declare void @ERR_new() local_unnamed_addr #2

declare void @ERR_set_debug(i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #2

declare void @ERR_set_error(i32 noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #2

declare %struct.bio_st* @CMS_dataInit(%struct.CMS_ContentInfo_st* noundef, %struct.bio_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @cms_copy_content(%struct.bio_st* noundef %out, %struct.bio_st* noundef %in, i32 noundef %flags) unnamed_addr #0 {
entry:
  %buf = alloca [4096 x i8], align 16
  %0 = getelementptr inbounds [4096 x i8], [4096 x i8]* %buf, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 4096, i8* nonnull %0) #6
  %call = tail call fastcc %struct.bio_st* @cms_get_text_bio(%struct.bio_st* noundef %out, i32 noundef %flags) #5
  %cmp = icmp eq %struct.bio_st* %call, null
  br i1 %cmp, label %if.then, label %for.cond

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #4
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 42, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.cms_copy_content, i64 0, i64 0)) #4
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 46, i32 noundef 786688, i8* noundef null) #4
  br label %err

for.cond:                                         ; preds = %entry, %land.lhs.true
  %call1 = call i32 @BIO_read(%struct.bio_st* noundef %in, i8* noundef nonnull %0, i32 noundef 4096) #4
  %cmp2 = icmp slt i32 %call1, 1
  br i1 %cmp2, label %if.then3, label %land.lhs.true

if.then3:                                         ; preds = %for.cond
  %call4 = call i32 @BIO_method_type(%struct.bio_st* noundef %in) #4
  %cmp5 = icmp eq i32 %call4, 522
  br i1 %cmp5, label %if.then6, label %if.end10

if.then6:                                         ; preds = %if.then3
  %call7 = call i64 @BIO_ctrl(%struct.bio_st* noundef %in, i32 noundef 113, i64 noundef 0, i8* noundef null) #4
  %tobool = icmp eq i64 %call7, 0
  %cmp11 = icmp slt i32 %call1, 0
  %or.cond = select i1 %tobool, i1 true, i1 %cmp11
  br i1 %or.cond, label %err, label %for.end

if.end10:                                         ; preds = %if.then3
  %cmp11.old = icmp slt i32 %call1, 0
  br i1 %cmp11.old, label %err, label %for.end

land.lhs.true:                                    ; preds = %for.cond
  %call17 = call i32 @BIO_write(%struct.bio_st* noundef nonnull %call, i8* noundef nonnull %0, i32 noundef %call1) #4
  %cmp18.not = icmp eq i32 %call17, %call1
  br i1 %cmp18.not, label %for.cond, label %err

for.end:                                          ; preds = %if.then6, %if.end10
  %and = and i32 %flags, 1
  %tobool21.not = icmp eq i32 %and, 0
  br i1 %tobool21.not, label %err, label %if.then22

if.then22:                                        ; preds = %for.end
  %call23 = call i32 @SMIME_text(%struct.bio_st* noundef nonnull %call, %struct.bio_st* noundef %out) #4
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %if.then25, label %err

if.then25:                                        ; preds = %if.then22
  call void @ERR_new() #4
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 65, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.cms_copy_content, i64 0, i64 0)) #4
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 46, i32 noundef 140, i8* noundef null) #4
  br label %err

err:                                              ; preds = %land.lhs.true, %for.end, %if.then22, %if.end10, %if.then6, %if.then25, %if.then
  %r.0 = phi i32 [ 0, %if.then ], [ 0, %if.then6 ], [ 0, %if.then25 ], [ 0, %if.end10 ], [ 1, %if.then22 ], [ 1, %for.end ], [ 0, %land.lhs.true ]
  %cmp28.not = icmp eq %struct.bio_st* %call, %out
  br i1 %cmp28.not, label %if.end31, label %if.then29

if.then29:                                        ; preds = %err
  %call30 = call i32 @BIO_free(%struct.bio_st* noundef %call) #4
  br label %if.end31

if.end31:                                         ; preds = %if.then29, %err
  call void @llvm.lifetime.end.p0i8(i64 4096, i8* nonnull %0) #6
  ret i32 %r.0
}

declare void @BIO_free_all(%struct.bio_st* noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: noinline nounwind uwtable
define %struct.CMS_ContentInfo_st* @CMS_data_create_ex(%struct.bio_st* noundef %in, i32 noundef %flags, %struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef %propq) local_unnamed_addr #0 {
entry:
  %call = tail call %struct.CMS_ContentInfo_st* @ossl_cms_Data_create(%struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef %propq) #4
  %cmp = icmp eq %struct.CMS_ContentInfo_st* %call, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %and = and i32 %flags, 4096
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %lor.lhs.false, label %cleanup

lor.lhs.false:                                    ; preds = %if.end
  %call1 = tail call i32 @CMS_final(%struct.CMS_ContentInfo_st* noundef nonnull %call, %struct.bio_st* noundef %in, %struct.bio_st* noundef null, i32 noundef %flags) #5
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %cleanup

if.end4:                                          ; preds = %lor.lhs.false
  tail call void @CMS_ContentInfo_free(%struct.CMS_ContentInfo_st* noundef nonnull %call) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %lor.lhs.false, %entry, %if.end4
  %retval.0 = phi %struct.CMS_ContentInfo_st* [ null, %if.end4 ], [ null, %entry ], [ %call, %lor.lhs.false ], [ %call, %if.end ]
  ret %struct.CMS_ContentInfo_st* %retval.0
}

declare %struct.CMS_ContentInfo_st* @ossl_cms_Data_create(%struct.ossl_lib_ctx_st* noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @CMS_final(%struct.CMS_ContentInfo_st* noundef %cms, %struct.bio_st* noundef %data, %struct.bio_st* noundef %dcont, i32 noundef %flags) local_unnamed_addr #0 {
entry:
  %call = tail call %struct.bio_st* @CMS_dataInit(%struct.CMS_ContentInfo_st* noundef %cms, %struct.bio_st* noundef %dcont) #4
  %cmp = icmp eq %struct.bio_st* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #4
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 879, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.CMS_final, i64 0, i64 0)) #4
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 46, i32 noundef 104, i8* noundef null) #4
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @SMIME_crlf_copy(%struct.bio_st* noundef %data, %struct.bio_st* noundef nonnull %call, i32 noundef %flags) #4
  %call2 = tail call i64 @BIO_ctrl(%struct.bio_st* noundef nonnull %call, i32 noundef 11, i64 noundef 0, i8* noundef null) #4
  %call3 = tail call i32 @CMS_dataFinal(%struct.CMS_ContentInfo_st* noundef %cms, %struct.bio_st* noundef nonnull %call) #4
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.then4, label %err

if.then4:                                         ; preds = %if.end
  tail call void @ERR_new() #4
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 888, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.CMS_final, i64 0, i64 0)) #4
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 46, i32 noundef 103, i8* noundef null) #4
  br label %err

err:                                              ; preds = %if.end, %if.then4
  tail call fastcc void @do_free_upto(%struct.bio_st* noundef nonnull %call, %struct.bio_st* noundef %dcont) #5
  br label %cleanup

cleanup:                                          ; preds = %err, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ %call1, %err ]
  ret i32 %retval.0
}

declare void @CMS_ContentInfo_free(%struct.CMS_ContentInfo_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define %struct.CMS_ContentInfo_st* @CMS_data_create(%struct.bio_st* noundef %in, i32 noundef %flags) local_unnamed_addr #0 {
entry:
  %call = tail call %struct.CMS_ContentInfo_st* @CMS_data_create_ex(%struct.bio_st* noundef %in, i32 noundef %flags, %struct.ossl_lib_ctx_st* noundef null, i8* noundef null) #5
  ret %struct.CMS_ContentInfo_st* %call
}

; Function Attrs: noinline nounwind uwtable
define i32 @CMS_digest_verify(%struct.CMS_ContentInfo_st* noundef %cms, %struct.bio_st* noundef %dcont, %struct.bio_st* noundef %out, i32 noundef %flags) local_unnamed_addr #0 {
entry:
  %call = tail call %struct.asn1_object_st* @CMS_get0_type(%struct.CMS_ContentInfo_st* noundef %cms) #4
  %call1 = tail call i32 @OBJ_obj2nid(%struct.asn1_object_st* noundef %call) #4
  %cmp.not = icmp eq i32 %call1, 25
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #4
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 148, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.CMS_digest_verify, i64 0, i64 0)) #4
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 46, i32 noundef 144, i8* noundef null) #4
  br label %cleanup

if.end:                                           ; preds = %entry
  %cmp2 = icmp eq %struct.bio_st* %dcont, null
  br i1 %cmp2, label %land.lhs.true, label %if.end5

land.lhs.true:                                    ; preds = %if.end
  %call3 = tail call fastcc i32 @check_content(%struct.CMS_ContentInfo_st* noundef %cms) #5
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %cleanup, label %if.end5

if.end5:                                          ; preds = %land.lhs.true, %if.end
  %call6 = tail call %struct.bio_st* @CMS_dataInit(%struct.CMS_ContentInfo_st* noundef %cms, %struct.bio_st* noundef %dcont) #4
  %cmp7 = icmp eq %struct.bio_st* %call6, null
  br i1 %cmp7, label %cleanup, label %if.end9

if.end9:                                          ; preds = %if.end5
  %call10 = tail call fastcc i32 @cms_copy_content(%struct.bio_st* noundef %out, %struct.bio_st* noundef nonnull %call6, i32 noundef %flags) #5
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end14, label %if.then12

if.then12:                                        ; preds = %if.end9
  %call13 = tail call i32 @ossl_cms_DigestedData_do_final(%struct.CMS_ContentInfo_st* noundef %cms, %struct.bio_st* noundef nonnull %call6, i32 noundef 1) #4
  br label %if.end14

if.end14:                                         ; preds = %if.then12, %if.end9
  %r.0 = phi i32 [ %call13, %if.then12 ], [ 0, %if.end9 ]
  tail call fastcc void @do_free_upto(%struct.bio_st* noundef nonnull %call6, %struct.bio_st* noundef %dcont) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %land.lhs.true, %if.end14, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ %r.0, %if.end14 ], [ 0, %land.lhs.true ], [ 0, %if.end5 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @check_content(%struct.CMS_ContentInfo_st* noundef %cms) unnamed_addr #0 {
entry:
  %call = tail call %struct.asn1_string_st** @CMS_get0_content(%struct.CMS_ContentInfo_st* noundef %cms) #4
  %cmp = icmp eq %struct.asn1_string_st** %call, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %0 = load %struct.asn1_string_st*, %struct.asn1_string_st** %call, align 8, !tbaa !4
  %cmp1 = icmp eq %struct.asn1_string_st* %0, null
  br i1 %cmp1, label %if.then, label %cleanup

if.then:                                          ; preds = %lor.lhs.false, %entry
  tail call void @ERR_new() #4
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 83, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.check_content, i64 0, i64 0)) #4
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 46, i32 noundef 127, i8* noundef null) #4
  br label %cleanup

cleanup:                                          ; preds = %lor.lhs.false, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 1, %lor.lhs.false ]
  ret i32 %retval.0
}

declare i32 @ossl_cms_DigestedData_do_final(%struct.CMS_ContentInfo_st* noundef, %struct.bio_st* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @do_free_upto(%struct.bio_st* noundef %f, %struct.bio_st* noundef readnone %upto) unnamed_addr #0 {
entry:
  %cmp.not = icmp eq %struct.bio_st* %upto, null
  br i1 %cmp.not, label %if.else, label %do.body

do.body:                                          ; preds = %entry, %do.body
  %f.addr.0 = phi %struct.bio_st* [ %call, %do.body ], [ %f, %entry ]
  %call = tail call %struct.bio_st* @BIO_pop(%struct.bio_st* noundef %f.addr.0) #4
  %call1 = tail call i32 @BIO_free(%struct.bio_st* noundef %f.addr.0) #4
  %cmp2 = icmp ne %struct.bio_st* %call, null
  %cmp3 = icmp ne %struct.bio_st* %call, %upto
  %0 = and i1 %cmp2, %cmp3
  br i1 %0, label %do.body, label %if.end, !llvm.loop !8

if.else:                                          ; preds = %entry
  tail call void @BIO_free_all(%struct.bio_st* noundef %f) #4
  br label %if.end

if.end:                                           ; preds = %do.body, %if.else
  ret void
}

; Function Attrs: noinline nounwind uwtable
define %struct.CMS_ContentInfo_st* @CMS_digest_create_ex(%struct.bio_st* noundef %in, %struct.evp_md_st* noundef %md, i32 noundef %flags, %struct.ossl_lib_ctx_st* noundef %ctx, i8* noundef %propq) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.evp_md_st* %md, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = tail call %struct.evp_md_st* @EVP_sha1() #4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %md.addr.0 = phi %struct.evp_md_st* [ %call, %if.then ], [ %md, %entry ]
  %call1 = tail call %struct.CMS_ContentInfo_st* @ossl_cms_DigestedData_create(%struct.evp_md_st* noundef %md.addr.0, %struct.ossl_lib_ctx_st* noundef %ctx, i8* noundef %propq) #4
  %cmp2 = icmp eq %struct.CMS_ContentInfo_st* %call1, null
  br i1 %cmp2, label %cleanup, label %if.end4

if.end4:                                          ; preds = %if.end
  %and = and i32 %flags, 64
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then5, label %if.end7

if.then5:                                         ; preds = %if.end4
  %call6 = tail call i32 @CMS_set_detached(%struct.CMS_ContentInfo_st* noundef nonnull %call1, i32 noundef 0) #4
  br label %if.end7

if.end7:                                          ; preds = %if.then5, %if.end4
  %and8 = and i32 %flags, 4096
  %tobool9.not = icmp eq i32 %and8, 0
  br i1 %tobool9.not, label %lor.lhs.false, label %cleanup

lor.lhs.false:                                    ; preds = %if.end7
  %call10 = tail call i32 @CMS_final(%struct.CMS_ContentInfo_st* noundef nonnull %call1, %struct.bio_st* noundef %in, %struct.bio_st* noundef null, i32 noundef %flags) #5
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end13, label %cleanup

if.end13:                                         ; preds = %lor.lhs.false
  tail call void @CMS_ContentInfo_free(%struct.CMS_ContentInfo_st* noundef nonnull %call1) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %lor.lhs.false, %if.end, %if.end13
  %retval.0 = phi %struct.CMS_ContentInfo_st* [ null, %if.end13 ], [ null, %if.end ], [ %call1, %lor.lhs.false ], [ %call1, %if.end7 ]
  ret %struct.CMS_ContentInfo_st* %retval.0
}

declare %struct.evp_md_st* @EVP_sha1() local_unnamed_addr #2

declare %struct.CMS_ContentInfo_st* @ossl_cms_DigestedData_create(%struct.evp_md_st* noundef, %struct.ossl_lib_ctx_st* noundef, i8* noundef) local_unnamed_addr #2

declare i32 @CMS_set_detached(%struct.CMS_ContentInfo_st* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define %struct.CMS_ContentInfo_st* @CMS_digest_create(%struct.bio_st* noundef %in, %struct.evp_md_st* noundef %md, i32 noundef %flags) local_unnamed_addr #0 {
entry:
  %call = tail call %struct.CMS_ContentInfo_st* @CMS_digest_create_ex(%struct.bio_st* noundef %in, %struct.evp_md_st* noundef %md, i32 noundef %flags, %struct.ossl_lib_ctx_st* noundef null, i8* noundef null) #5
  ret %struct.CMS_ContentInfo_st* %call
}

; Function Attrs: noinline nounwind uwtable
define i32 @CMS_EncryptedData_decrypt(%struct.CMS_ContentInfo_st* noundef %cms, i8* noundef %key, i64 noundef %keylen, %struct.bio_st* noundef %dcont, %struct.bio_st* noundef %out, i32 noundef %flags) local_unnamed_addr #0 {
entry:
  %call = tail call %struct.asn1_object_st* @CMS_get0_type(%struct.CMS_ContentInfo_st* noundef %cms) #4
  %call1 = tail call i32 @OBJ_obj2nid(%struct.asn1_object_st* noundef %call) #4
  %cmp.not = icmp eq i32 %call1, 26
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #4
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 206, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.CMS_EncryptedData_decrypt, i64 0, i64 0)) #4
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 46, i32 noundef 145, i8* noundef null) #4
  br label %cleanup

if.end:                                           ; preds = %entry
  %cmp2 = icmp eq %struct.bio_st* %dcont, null
  br i1 %cmp2, label %land.lhs.true, label %if.end5

land.lhs.true:                                    ; preds = %if.end
  %call3 = tail call fastcc i32 @check_content(%struct.CMS_ContentInfo_st* noundef %cms) #5
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %cleanup, label %if.end5

if.end5:                                          ; preds = %land.lhs.true, %if.end
  %call6 = tail call i32 @CMS_EncryptedData_set1_key(%struct.CMS_ContentInfo_st* noundef %cms, %struct.evp_cipher_st* noundef null, i8* noundef %key, i64 noundef %keylen) #4
  %cmp7 = icmp slt i32 %call6, 1
  br i1 %cmp7, label %cleanup, label %if.end9

if.end9:                                          ; preds = %if.end5
  %call10 = tail call %struct.bio_st* @CMS_dataInit(%struct.CMS_ContentInfo_st* noundef %cms, %struct.bio_st* noundef %dcont) #4
  %cmp11 = icmp eq %struct.bio_st* %call10, null
  br i1 %cmp11, label %cleanup, label %if.end13

if.end13:                                         ; preds = %if.end9
  %call14 = tail call fastcc i32 @cms_copy_content(%struct.bio_st* noundef %out, %struct.bio_st* noundef nonnull %call10, i32 noundef %flags) #5
  tail call fastcc void @do_free_upto(%struct.bio_st* noundef nonnull %call10, %struct.bio_st* noundef %dcont) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %if.end5, %land.lhs.true, %if.end13, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ %call14, %if.end13 ], [ 0, %land.lhs.true ], [ 0, %if.end5 ], [ 0, %if.end9 ]
  ret i32 %retval.0
}

declare i32 @CMS_EncryptedData_set1_key(%struct.CMS_ContentInfo_st* noundef, %struct.evp_cipher_st* noundef, i8* noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define %struct.CMS_ContentInfo_st* @CMS_EncryptedData_encrypt_ex(%struct.bio_st* noundef %in, %struct.evp_cipher_st* noundef %cipher, i8* noundef %key, i64 noundef %keylen, i32 noundef %flags, %struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef %propq) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.evp_cipher_st* %cipher, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #4
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 232, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.CMS_EncryptedData_encrypt_ex, i64 0, i64 0)) #4
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 46, i32 noundef 126, i8* noundef null) #4
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call %struct.CMS_ContentInfo_st* @CMS_ContentInfo_new_ex(%struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef %propq) #4
  %cmp1 = icmp eq %struct.CMS_ContentInfo_st* %call, null
  br i1 %cmp1, label %cleanup, label %if.end3

if.end3:                                          ; preds = %if.end
  %call4 = tail call i32 @CMS_EncryptedData_set1_key(%struct.CMS_ContentInfo_st* noundef nonnull %call, %struct.evp_cipher_st* noundef nonnull %cipher, i8* noundef %key, i64 noundef %keylen) #4
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %cleanup, label %if.end6

if.end6:                                          ; preds = %if.end3
  %and = and i32 %flags, 64
  %tobool7.not = icmp eq i32 %and, 0
  br i1 %tobool7.not, label %if.then8, label %if.end10

if.then8:                                         ; preds = %if.end6
  %call9 = tail call i32 @CMS_set_detached(%struct.CMS_ContentInfo_st* noundef nonnull %call, i32 noundef 0) #4
  br label %if.end10

if.end10:                                         ; preds = %if.then8, %if.end6
  %and11 = and i32 %flags, 20480
  %tobool12.not = icmp eq i32 %and11, 0
  br i1 %tobool12.not, label %lor.lhs.false, label %cleanup

lor.lhs.false:                                    ; preds = %if.end10
  %call13 = tail call i32 @CMS_final(%struct.CMS_ContentInfo_st* noundef nonnull %call, %struct.bio_st* noundef %in, %struct.bio_st* noundef null, i32 noundef %flags) #5
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.end16, label %cleanup

if.end16:                                         ; preds = %lor.lhs.false
  tail call void @CMS_ContentInfo_free(%struct.CMS_ContentInfo_st* noundef nonnull %call) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %lor.lhs.false, %if.end3, %if.end, %if.end16, %if.then
  %retval.0 = phi %struct.CMS_ContentInfo_st* [ null, %if.then ], [ null, %if.end16 ], [ null, %if.end ], [ null, %if.end3 ], [ %call, %lor.lhs.false ], [ %call, %if.end10 ]
  ret %struct.CMS_ContentInfo_st* %retval.0
}

declare %struct.CMS_ContentInfo_st* @CMS_ContentInfo_new_ex(%struct.ossl_lib_ctx_st* noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define %struct.CMS_ContentInfo_st* @CMS_EncryptedData_encrypt(%struct.bio_st* noundef %in, %struct.evp_cipher_st* noundef %cipher, i8* noundef %key, i64 noundef %keylen, i32 noundef %flags) local_unnamed_addr #0 {
entry:
  %call = tail call %struct.CMS_ContentInfo_st* @CMS_EncryptedData_encrypt_ex(%struct.bio_st* noundef %in, %struct.evp_cipher_st* noundef %cipher, i8* noundef %key, i64 noundef %keylen, i32 noundef %flags, %struct.ossl_lib_ctx_st* noundef null, i8* noundef null) #5
  ret %struct.CMS_ContentInfo_st* %call
}

; Function Attrs: noinline nounwind uwtable
define i32 @CMS_verify(%struct.CMS_ContentInfo_st* noundef %cms, %struct.stack_st_X509* noundef %certs, %struct.x509_store_st* noundef %store, %struct.bio_st* noundef %dcont, %struct.bio_st* noundef %out, i32 noundef %flags) local_unnamed_addr #0 {
entry:
  %signer = alloca %struct.x509_st*, align 8
  %ptr = alloca i8*, align 8
  %0 = bitcast %struct.x509_st** %signer to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #6
  %and = and i32 %flags, 1048576
  %cmp = icmp ne i32 %and, 0
  %call = tail call %struct.CMS_CTX_st* @ossl_cms_get0_cmsctx(%struct.CMS_ContentInfo_st* noundef %cms) #4
  %cmp1 = icmp eq %struct.bio_st* %dcont, null
  br i1 %cmp1, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %call3 = tail call fastcc i32 @check_content(%struct.CMS_ContentInfo_st* noundef %cms) #5
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %cleanup246, label %if.end16

if.end:                                           ; preds = %entry
  %and7 = and i32 %flags, 128
  %tobool8.not = icmp eq i32 %and7, 0
  br i1 %tobool8.not, label %if.then9, label %if.end16

if.then9:                                         ; preds = %if.end
  %call10 = tail call %struct.asn1_object_st* @CMS_get0_eContentType(%struct.CMS_ContentInfo_st* noundef %cms) #4
  %call11 = tail call i32 @OBJ_obj2nid(%struct.asn1_object_st* noundef %call10) #4
  %cmp12 = icmp eq i32 %call11, 787
  %or = or i32 %flags, 524288
  %spec.select = select i1 %cmp12, i32 %or, i32 %flags
  br label %if.end16

if.end16:                                         ; preds = %land.lhs.true, %if.then9, %if.end
  %cmp4389 = phi i1 [ true, %if.then9 ], [ true, %if.end ], [ false, %land.lhs.true ]
  %flags.addr.1 = phi i32 [ %spec.select, %if.then9 ], [ %flags, %if.end ], [ %flags, %land.lhs.true ]
  %call17 = tail call %struct.stack_st_CMS_SignerInfo* @CMS_get0_SignerInfos(%struct.CMS_ContentInfo_st* noundef %cms) #4
  %call18 = tail call fastcc %struct.stack_st* @ossl_check_const_CMS_SignerInfo_sk_type(%struct.stack_st_CMS_SignerInfo* noundef %call17) #5
  %call19 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call18) #4
  %cmp20 = icmp slt i32 %call19, 1
  br i1 %cmp20, label %if.then22, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end16
  %call25400 = call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call18) #4
  %cmp26401 = icmp sgt i32 %call25400, 0
  br i1 %cmp26401, label %for.body, label %for.end

if.then22:                                        ; preds = %if.end16
  tail call void @ERR_new() #4
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 332, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @__func__.CMS_verify, i64 0, i64 0)) #4
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 46, i32 noundef 135, i8* noundef null) #4
  br label %err

for.body:                                         ; preds = %for.cond.preheader, %for.body
  %scount.0403 = phi i32 [ %spec.select383, %for.body ], [ 0, %for.cond.preheader ]
  %i.0402 = phi i32 [ %inc33, %for.body ], [ 0, %for.cond.preheader ]
  %call29 = call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call18, i32 noundef %i.0402) #4
  %1 = bitcast i8* %call29 to %struct.CMS_SignerInfo_st*
  call void @CMS_SignerInfo_get0_algs(%struct.CMS_SignerInfo_st* noundef %1, %struct.evp_pkey_st** noundef null, %struct.x509_st** noundef nonnull %signer, %struct.X509_algor_st** noundef null, %struct.X509_algor_st** noundef null) #4
  %2 = load %struct.x509_st*, %struct.x509_st** %signer, align 8, !tbaa !4
  %tobool30.not = icmp ne %struct.x509_st* %2, null
  %inc = zext i1 %tobool30.not to i32
  %spec.select383 = add nuw nsw i32 %scount.0403, %inc
  %inc33 = add nuw nsw i32 %i.0402, 1
  %call25 = call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call18) #4
  %cmp26 = icmp slt i32 %inc33, %call25
  br i1 %cmp26, label %for.body, label %for.end, !llvm.loop !10

for.end:                                          ; preds = %for.body, %for.cond.preheader
  %scount.0.lcssa = phi i32 [ 0, %for.cond.preheader ], [ %spec.select383, %for.body ]
  %call35 = call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call18) #4
  %cmp36.not = icmp eq i32 %scount.0.lcssa, %call35
  br i1 %cmp36.not, label %if.end40, label %if.then38

if.then38:                                        ; preds = %for.end
  %call39 = call i32 @CMS_set1_signers_certs(%struct.CMS_ContentInfo_st* noundef %cms, %struct.stack_st_X509* noundef %certs, i32 noundef %flags.addr.1) #4
  %add = add nsw i32 %call39, %scount.0.lcssa
  br label %if.end40

if.end40:                                         ; preds = %if.then38, %for.end
  %scount.2 = phi i32 [ %add, %if.then38 ], [ %scount.0.lcssa, %for.end ]
  %call42 = call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call18) #4
  %cmp43.not = icmp eq i32 %scount.2, %call42
  br i1 %cmp43.not, label %if.end46, label %if.then45

if.then45:                                        ; preds = %if.end40
  call void @ERR_new() #4
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 347, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @__func__.CMS_verify, i64 0, i64 0)) #4
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 46, i32 noundef 138, i8* noundef null) #4
  br label %err

if.end46:                                         ; preds = %if.end40
  %and47 = and i32 %flags.addr.1, 32
  %cmp48 = icmp eq i32 %and47, 0
  %or.cond = or i1 %cmp, %cmp48
  br i1 %or.cond, label %if.then51, label %if.end81

if.then51:                                        ; preds = %if.end46
  br i1 %cmp, label %if.then53, label %if.end60

if.then53:                                        ; preds = %if.then51
  %conv54 = sext i32 %scount.2 to i64
  %mul = shl nsw i64 %conv54, 3
  %call55 = call i8* @CRYPTO_zalloc(i64 noundef %mul, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 357) #4
  %3 = bitcast i8* %call55 to %struct.stack_st_X509**
  %cmp56 = icmp eq i8* %call55, null
  br i1 %cmp56, label %if.then58, label %if.end60

if.then58:                                        ; preds = %if.then53
  call void @ERR_new() #4
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 359, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @__func__.CMS_verify, i64 0, i64 0)) #4
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 46, i32 noundef 786688, i8* noundef null) #4
  br label %err

if.end60:                                         ; preds = %if.then53, %if.then51
  %si_chains.0 = phi %struct.stack_st_X509** [ %3, %if.then53 ], [ null, %if.then51 ]
  %call61 = call %struct.stack_st_X509* @CMS_get1_certs(%struct.CMS_ContentInfo_st* noundef %cms) #4
  %and62 = and i32 %flags.addr.1, 8192
  %tobool63.not = icmp eq i32 %and62, 0
  br i1 %tobool63.not, label %if.then64, label %if.end66

if.then64:                                        ; preds = %if.end60
  %call65 = call %struct.stack_st_X509_CRL* @CMS_get1_crls(%struct.CMS_ContentInfo_st* noundef %cms) #4
  br label %if.end66

if.end66:                                         ; preds = %if.then64, %if.end60
  %crls.0 = phi %struct.stack_st_X509_CRL* [ null, %if.end60 ], [ %call65, %if.then64 ]
  %cmp68404 = icmp sgt i32 %scount.2, 0
  br i1 %cmp68404, label %for.body70.lr.ph, label %if.end122

for.body70.lr.ph:                                 ; preds = %if.end66
  %tobool73.not = icmp eq %struct.stack_st_X509** %si_chains.0, null
  %wide.trip.count = zext i32 %scount.2 to i64
  br label %for.body70

for.cond67:                                       ; preds = %for.body70
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %if.end81, label %for.body70, !llvm.loop !11

for.body70:                                       ; preds = %for.body70.lr.ph, %for.cond67
  %indvars.iv = phi i64 [ 0, %for.body70.lr.ph ], [ %indvars.iv.next, %for.cond67 ]
  %4 = trunc i64 %indvars.iv to i32
  %call72 = call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call18, i32 noundef %4) #4
  %5 = bitcast i8* %call72 to %struct.CMS_SignerInfo_st*
  %arrayidx = getelementptr inbounds %struct.stack_st_X509*, %struct.stack_st_X509** %si_chains.0, i64 %indvars.iv
  %cond = select i1 %tobool73.not, %struct.stack_st_X509** null, %struct.stack_st_X509** %arrayidx
  %call74 = call fastcc i32 @cms_signerinfo_verify_cert(%struct.CMS_SignerInfo_st* noundef %5, %struct.x509_store_st* noundef %store, %struct.stack_st_X509* noundef %call61, %struct.stack_st_X509_CRL* noundef %crls.0, %struct.stack_st_X509** noundef %cond, %struct.CMS_CTX_st* noundef %call) #5
  %tobool75.not = icmp eq i32 %call74, 0
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br i1 %tobool75.not, label %err, label %for.cond67

if.end81:                                         ; preds = %for.cond67, %if.end46
  %si_chains.1 = phi %struct.stack_st_X509** [ null, %if.end46 ], [ %si_chains.0, %for.cond67 ]
  %crls.1 = phi %struct.stack_st_X509_CRL* [ null, %if.end46 ], [ %crls.0, %for.cond67 ]
  %cms_certs.0 = phi %struct.stack_st_X509* [ null, %if.end46 ], [ %call61, %for.cond67 ]
  %and82 = and i32 %flags.addr.1, 8
  %cmp83 = icmp eq i32 %and82, 0
  %or.cond260 = or i1 %cmp, %cmp83
  %cmp89406 = icmp sgt i32 %scount.2, 0
  %or.cond415 = select i1 %or.cond260, i1 %cmp89406, i1 false
  br i1 %or.cond415, label %for.body91.lr.ph, label %if.end122

for.body91.lr.ph:                                 ; preds = %if.end81
  %tobool106.not = icmp eq %struct.stack_st_X509** %si_chains.1, null
  %wide.trip.count422 = zext i32 %scount.2 to i64
  br label %for.body91

for.body91:                                       ; preds = %for.body91.lr.ph, %for.inc119
  %indvars.iv419 = phi i64 [ 0, %for.body91.lr.ph ], [ %indvars.iv.next420, %for.inc119 ]
  %6 = trunc i64 %indvars.iv419 to i32
  %call93 = call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call18, i32 noundef %6) #4
  %7 = bitcast i8* %call93 to %struct.CMS_SignerInfo_st*
  %call94 = call i32 @CMS_signed_get_attr_count(%struct.CMS_SignerInfo_st* noundef %7) #4
  %cmp95 = icmp slt i32 %call94, 0
  br i1 %cmp95, label %for.inc119, label %if.end98

if.end98:                                         ; preds = %for.body91
  %call99 = call i32 @CMS_SignerInfo_verify(%struct.CMS_SignerInfo_st* noundef %7) #4
  %cmp100 = icmp slt i32 %call99, 1
  br i1 %cmp100, label %err, label %if.end103

if.end103:                                        ; preds = %if.end98
  br i1 %cmp, label %if.then105, label %for.inc119

if.then105:                                       ; preds = %if.end103
  br i1 %tobool106.not, label %cond.end111, label %cond.true107

cond.true107:                                     ; preds = %if.then105
  %arrayidx109 = getelementptr inbounds %struct.stack_st_X509*, %struct.stack_st_X509** %si_chains.1, i64 %indvars.iv419
  %8 = load %struct.stack_st_X509*, %struct.stack_st_X509** %arrayidx109, align 8, !tbaa !4
  br label %cond.end111

cond.end111:                                      ; preds = %if.then105, %cond.true107
  %cond112 = phi %struct.stack_st_X509* [ %8, %cond.true107 ], [ null, %if.then105 ]
  %call113 = call i32 @ossl_cms_check_signing_certs(%struct.CMS_SignerInfo_st* noundef %7, %struct.stack_st_X509* noundef %cond112) #4
  %cmp114 = icmp slt i32 %call113, 1
  br i1 %cmp114, label %err, label %for.inc119

for.inc119:                                       ; preds = %cond.end111, %if.end103, %for.body91
  %indvars.iv.next420 = add nuw nsw i64 %indvars.iv419, 1
  %exitcond423.not = icmp eq i64 %indvars.iv.next420, %wide.trip.count422
  br i1 %exitcond423.not, label %if.end122, label %for.body91, !llvm.loop !12

if.end122:                                        ; preds = %for.inc119, %if.end66, %if.end81
  %cms_certs.0447 = phi %struct.stack_st_X509* [ %cms_certs.0, %if.end81 ], [ %call61, %if.end66 ], [ %cms_certs.0, %for.inc119 ]
  %crls.1442 = phi %struct.stack_st_X509_CRL* [ %crls.1, %if.end81 ], [ %crls.0, %if.end66 ], [ %crls.1, %for.inc119 ]
  %si_chains.1437 = phi %struct.stack_st_X509** [ %si_chains.1, %if.end81 ], [ %si_chains.0, %if.end66 ], [ %si_chains.1, %for.inc119 ]
  br i1 %cmp4389, label %land.lhs.true125, label %if.else173

land.lhs.true125:                                 ; preds = %if.end122
  %call126 = call i32 @BIO_method_type(%struct.bio_st* noundef nonnull %dcont) #4
  %cmp127 = icmp eq i32 %call126, 1025
  br i1 %cmp127, label %if.then129, label %if.end147

if.then129:                                       ; preds = %land.lhs.true125
  %9 = bitcast i8** %ptr to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %9) #6
  %call130 = call i64 @BIO_ctrl(%struct.bio_st* noundef nonnull %dcont, i32 noundef 3, i64 noundef 0, i8* noundef nonnull %9) #4
  %cmp131 = icmp eq i64 %call130, 0
  br i1 %cmp131, label %cond.end137, label %cond.false134

cond.false134:                                    ; preds = %if.then129
  %10 = load i8*, i8** %ptr, align 8, !tbaa !4
  %conv135 = trunc i64 %call130 to i32
  %call136 = call %struct.bio_st* @BIO_new_mem_buf(i8* noundef %10, i32 noundef %conv135) #4
  br label %cond.end137

cond.end137:                                      ; preds = %if.then129, %cond.false134
  %cond138 = phi %struct.bio_st* [ %call136, %cond.false134 ], [ %dcont, %if.then129 ]
  %cmp139 = icmp eq %struct.bio_st* %cond138, null
  br i1 %cmp139, label %cleanup143, label %cleanup143.thread

cleanup143.thread:                                ; preds = %cond.end137
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %9) #6
  br label %if.end147

cleanup143:                                       ; preds = %cond.end137
  call void @ERR_new() #4
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 408, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @__func__.CMS_verify, i64 0, i64 0)) #4
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 46, i32 noundef 786688, i8* noundef null) #4
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %9) #6
  br label %err2

if.end147:                                        ; preds = %cleanup143.thread, %land.lhs.true125
  %tmpin.0 = phi %struct.bio_st* [ %dcont, %land.lhs.true125 ], [ %cond138, %cleanup143.thread ]
  %and148 = and i32 %flags.addr.1, 128
  %tobool149 = icmp eq i32 %and148, 0
  br i1 %tobool149, label %if.then152, label %if.else173

if.then152:                                       ; preds = %if.end147
  %call153 = call fastcc %struct.bio_st* @cms_get_text_bio(%struct.bio_st* noundef %out, i32 noundef %flags.addr.1) #5
  %cmp154 = icmp eq %struct.bio_st* %call153, null
  br i1 %cmp154, label %if.then156, label %if.end157

if.then156:                                       ; preds = %if.then152
  call void @ERR_new() #4
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 425, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @__func__.CMS_verify, i64 0, i64 0)) #4
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 46, i32 noundef 786688, i8* noundef null) #4
  br label %err

if.end157:                                        ; preds = %if.then152
  %call158 = call %struct.bio_st* @CMS_dataInit(%struct.CMS_ContentInfo_st* noundef %cms, %struct.bio_st* noundef nonnull %call153) #4
  %cmp159 = icmp eq %struct.bio_st* %call158, null
  br i1 %cmp159, label %err, label %if.end162

if.end162:                                        ; preds = %if.end157
  %and163 = and i32 %flags.addr.1, -2
  %call164 = call i32 @SMIME_crlf_copy(%struct.bio_st* noundef nonnull %dcont, %struct.bio_st* noundef nonnull %call158, i32 noundef %and163) #4
  %and165 = and i32 %flags.addr.1, 1
  %tobool166.not = icmp eq i32 %and165, 0
  br i1 %tobool166.not, label %if.end183, label %if.then167

if.then167:                                       ; preds = %if.end162
  %call168 = call i32 @SMIME_text(%struct.bio_st* noundef nonnull %call153, %struct.bio_st* noundef %out) #4
  %tobool169.not = icmp eq i32 %call168, 0
  br i1 %tobool169.not, label %if.then170, label %if.end183

if.then170:                                       ; preds = %if.then167
  call void @ERR_new() #4
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 439, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @__func__.CMS_verify, i64 0, i64 0)) #4
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 46, i32 noundef 140, i8* noundef null) #4
  br label %err

if.else173:                                       ; preds = %if.end122, %if.end147
  %tmpin.0396 = phi %struct.bio_st* [ %tmpin.0, %if.end147 ], [ %dcont, %if.end122 ]
  %call174 = call %struct.bio_st* @CMS_dataInit(%struct.CMS_ContentInfo_st* noundef %cms, %struct.bio_st* noundef %tmpin.0396) #4
  %cmp175 = icmp eq %struct.bio_st* %call174, null
  br i1 %cmp175, label %err, label %if.end178

if.end178:                                        ; preds = %if.else173
  %call179 = call fastcc i32 @cms_copy_content(%struct.bio_st* noundef %out, %struct.bio_st* noundef nonnull %call174, i32 noundef %flags.addr.1) #5
  %tobool180.not = icmp eq i32 %call179, 0
  br i1 %tobool180.not, label %err, label %if.end183

if.end183:                                        ; preds = %if.end178, %if.end162, %if.then167
  %tmpin.0397 = phi %struct.bio_st* [ %tmpin.0, %if.then167 ], [ %tmpin.0, %if.end162 ], [ %tmpin.0396, %if.end178 ]
  %cmsbio.0 = phi %struct.bio_st* [ %call158, %if.then167 ], [ %call158, %if.end162 ], [ %call174, %if.end178 ]
  %tmpout.0 = phi %struct.bio_st* [ %call153, %if.then167 ], [ %call153, %if.end162 ], [ null, %if.end178 ]
  %and184 = and i32 %flags.addr.1, 4
  %tobool185.not = icmp eq i32 %and184, 0
  br i1 %tobool185.not, label %for.cond187.preheader, label %err

for.cond187.preheader:                            ; preds = %if.end183
  %call189410 = call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call18) #4
  %cmp190411 = icmp sgt i32 %call189410, 0
  br i1 %cmp190411, label %for.body192, label %err

for.cond187:                                      ; preds = %for.body192
  %call189 = call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call18) #4
  %cmp190 = icmp slt i32 %inc201, %call189
  br i1 %cmp190, label %for.body192, label %err, !llvm.loop !13

for.body192:                                      ; preds = %for.cond187.preheader, %for.cond187
  %i.3412 = phi i32 [ %inc201, %for.cond187 ], [ 0, %for.cond187.preheader ]
  %call194 = call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call18, i32 noundef %i.3412) #4
  %11 = bitcast i8* %call194 to %struct.CMS_SignerInfo_st*
  %call195 = call i32 @CMS_SignerInfo_verify_content(%struct.CMS_SignerInfo_st* noundef %11, %struct.bio_st* noundef nonnull %cmsbio.0) #4
  %cmp196 = icmp slt i32 %call195, 1
  %inc201 = add nuw nsw i32 %i.3412, 1
  br i1 %cmp196, label %if.then198, label %for.cond187

if.then198:                                       ; preds = %for.body192
  call void @ERR_new() #4
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 456, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @__func__.CMS_verify, i64 0, i64 0)) #4
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 46, i32 noundef 109, i8* noundef null) #4
  br label %err

err:                                              ; preds = %for.body70, %cond.end111, %if.end98, %for.cond187, %for.cond187.preheader, %if.end183, %if.end178, %if.else173, %if.end157, %if.then198, %if.then170, %if.then156, %if.then58, %if.then45, %if.then22
  %si_chains.2 = phi %struct.stack_st_X509** [ null, %if.then22 ], [ null, %if.then45 ], [ null, %if.then58 ], [ %si_chains.1437, %if.then156 ], [ %si_chains.1437, %if.end157 ], [ %si_chains.1437, %if.then198 ], [ %si_chains.1437, %if.then170 ], [ %si_chains.1437, %if.else173 ], [ %si_chains.1437, %if.end178 ], [ %si_chains.1437, %if.end183 ], [ %si_chains.1437, %for.cond187.preheader ], [ %si_chains.1437, %for.cond187 ], [ %si_chains.1, %if.end98 ], [ %si_chains.1, %cond.end111 ], [ %si_chains.0, %for.body70 ]
  %scount.3 = phi i32 [ 0, %if.then22 ], [ %scount.2, %if.then45 ], [ %scount.2, %if.then58 ], [ %scount.2, %if.then156 ], [ %scount.2, %if.end157 ], [ %scount.2, %if.then198 ], [ %scount.2, %if.then170 ], [ %scount.2, %if.else173 ], [ %scount.2, %if.end178 ], [ %scount.2, %if.end183 ], [ %scount.2, %for.cond187.preheader ], [ %scount.2, %for.cond187 ], [ %scount.2, %if.end98 ], [ %scount.2, %cond.end111 ], [ %scount.2, %for.body70 ]
  %ret.0 = phi i32 [ 0, %if.then22 ], [ 0, %if.then45 ], [ 0, %if.then58 ], [ 0, %if.then156 ], [ 0, %if.end157 ], [ 0, %if.then198 ], [ 0, %if.then170 ], [ 0, %if.else173 ], [ 0, %if.end178 ], [ 1, %if.end183 ], [ 1, %for.cond187.preheader ], [ 1, %for.cond187 ], [ 0, %if.end98 ], [ 0, %cond.end111 ], [ 0, %for.body70 ]
  %cmsbio.1 = phi %struct.bio_st* [ null, %if.then22 ], [ null, %if.then45 ], [ null, %if.then58 ], [ null, %if.then156 ], [ null, %if.end157 ], [ %cmsbio.0, %if.then198 ], [ %call158, %if.then170 ], [ null, %if.else173 ], [ %call174, %if.end178 ], [ %cmsbio.0, %if.end183 ], [ %cmsbio.0, %for.cond187.preheader ], [ %cmsbio.0, %for.cond187 ], [ null, %if.end98 ], [ null, %cond.end111 ], [ null, %for.body70 ]
  %tmpin.1 = phi %struct.bio_st* [ null, %if.then22 ], [ null, %if.then45 ], [ null, %if.then58 ], [ %tmpin.0, %if.then156 ], [ %tmpin.0, %if.end157 ], [ %tmpin.0397, %if.then198 ], [ %tmpin.0, %if.then170 ], [ %tmpin.0396, %if.else173 ], [ %tmpin.0396, %if.end178 ], [ %tmpin.0397, %if.end183 ], [ %tmpin.0397, %for.cond187.preheader ], [ %tmpin.0397, %for.cond187 ], [ null, %if.end98 ], [ null, %cond.end111 ], [ null, %for.body70 ]
  %tmpout.1 = phi %struct.bio_st* [ null, %if.then22 ], [ null, %if.then45 ], [ null, %if.then58 ], [ null, %if.then156 ], [ %call153, %if.end157 ], [ %tmpout.0, %if.then198 ], [ %call153, %if.then170 ], [ null, %if.else173 ], [ null, %if.end178 ], [ %tmpout.0, %if.end183 ], [ %tmpout.0, %for.cond187.preheader ], [ %tmpout.0, %for.cond187 ], [ null, %if.end98 ], [ null, %cond.end111 ], [ null, %for.body70 ]
  %crls.2 = phi %struct.stack_st_X509_CRL* [ null, %if.then22 ], [ null, %if.then45 ], [ null, %if.then58 ], [ %crls.1442, %if.then156 ], [ %crls.1442, %if.end157 ], [ %crls.1442, %if.then198 ], [ %crls.1442, %if.then170 ], [ %crls.1442, %if.else173 ], [ %crls.1442, %if.end178 ], [ %crls.1442, %if.end183 ], [ %crls.1442, %for.cond187.preheader ], [ %crls.1442, %for.cond187 ], [ %crls.1, %if.end98 ], [ %crls.1, %cond.end111 ], [ %crls.0, %for.body70 ]
  %cms_certs.1 = phi %struct.stack_st_X509* [ null, %if.then22 ], [ null, %if.then45 ], [ null, %if.then58 ], [ %cms_certs.0447, %if.then156 ], [ %cms_certs.0447, %if.end157 ], [ %cms_certs.0447, %if.then198 ], [ %cms_certs.0447, %if.then170 ], [ %cms_certs.0447, %if.else173 ], [ %cms_certs.0447, %if.end178 ], [ %cms_certs.0447, %if.end183 ], [ %cms_certs.0447, %for.cond187.preheader ], [ %cms_certs.0447, %for.cond187 ], [ %cms_certs.0, %if.end98 ], [ %cms_certs.0, %cond.end111 ], [ %call61, %for.body70 ]
  %and204 = and i32 %flags.addr.1, 128
  %tobool205 = icmp eq i32 %and204, 0
  %or.cond262 = and i1 %tobool205, %cmp4389
  br i1 %or.cond262, label %if.then208, label %if.else214

if.then208:                                       ; preds = %err
  call fastcc void @do_free_upto(%struct.bio_st* noundef %cmsbio.1, %struct.bio_st* noundef %tmpout.1) #5
  %cmp209.not = icmp eq %struct.bio_st* %tmpin.1, %dcont
  br i1 %cmp209.not, label %if.end222, label %if.then211

if.then211:                                       ; preds = %if.then208
  %call212 = call i32 @BIO_free(%struct.bio_st* noundef %tmpin.1) #4
  br label %if.end222

if.else214:                                       ; preds = %err
  %cmp217 = icmp eq %struct.bio_st* %tmpin.1, %dcont
  %or.cond384 = select i1 %cmp4389, i1 %cmp217, i1 false
  br i1 %or.cond384, label %if.then219, label %if.else220

if.then219:                                       ; preds = %if.else214
  call fastcc void @do_free_upto(%struct.bio_st* noundef %cmsbio.1, %struct.bio_st* noundef nonnull %dcont) #5
  br label %if.end222

if.else220:                                       ; preds = %if.else214
  call void @BIO_free_all(%struct.bio_st* noundef %cmsbio.1) #4
  br label %if.end222

if.end222:                                        ; preds = %if.then219, %if.else220, %if.then208, %if.then211
  %cmp223.not = icmp eq %struct.bio_st* %tmpout.1, %out
  br i1 %cmp223.not, label %err2, label %if.then225

if.then225:                                       ; preds = %if.end222
  call void @BIO_free_all(%struct.bio_st* noundef %tmpout.1) #4
  br label %err2

err2:                                             ; preds = %cleanup143, %if.end222, %if.then225
  %si_chains.3 = phi %struct.stack_st_X509** [ %si_chains.2, %if.then225 ], [ %si_chains.2, %if.end222 ], [ %si_chains.1437, %cleanup143 ]
  %scount.4 = phi i32 [ %scount.3, %if.then225 ], [ %scount.3, %if.end222 ], [ %scount.2, %cleanup143 ]
  %ret.1 = phi i32 [ %ret.0, %if.then225 ], [ %ret.0, %if.end222 ], [ 0, %cleanup143 ]
  %crls.3 = phi %struct.stack_st_X509_CRL* [ %crls.2, %if.then225 ], [ %crls.2, %if.end222 ], [ %crls.1442, %cleanup143 ]
  %cms_certs.2 = phi %struct.stack_st_X509* [ %cms_certs.1, %if.then225 ], [ %cms_certs.1, %if.end222 ], [ %cms_certs.0447, %cleanup143 ]
  %cmp227.not = icmp eq %struct.stack_st_X509** %si_chains.3, null
  br i1 %cmp227.not, label %if.end241, label %for.cond230.preheader

for.cond230.preheader:                            ; preds = %err2
  %cmp231413 = icmp sgt i32 %scount.4, 0
  br i1 %cmp231413, label %for.body233.preheader, label %for.end240

for.body233.preheader:                            ; preds = %for.cond230.preheader
  %wide.trip.count427 = zext i32 %scount.4 to i64
  br label %for.body233

for.body233:                                      ; preds = %for.body233.preheader, %for.body233
  %indvars.iv424 = phi i64 [ 0, %for.body233.preheader ], [ %indvars.iv.next425, %for.body233 ]
  %arrayidx235 = getelementptr inbounds %struct.stack_st_X509*, %struct.stack_st_X509** %si_chains.3, i64 %indvars.iv424
  %12 = load %struct.stack_st_X509*, %struct.stack_st_X509** %arrayidx235, align 8, !tbaa !4
  %call236 = call fastcc %struct.stack_st* @ossl_check_X509_sk_type(%struct.stack_st_X509* noundef %12) #5
  call void @OPENSSL_sk_pop_free(%struct.stack_st* noundef %call236, void (i8*)* noundef bitcast (void (%struct.x509_st*)* @X509_free to void (i8*)*)) #4
  %indvars.iv.next425 = add nuw nsw i64 %indvars.iv424, 1
  %exitcond428.not = icmp eq i64 %indvars.iv.next425, %wide.trip.count427
  br i1 %exitcond428.not, label %for.end240, label %for.body233, !llvm.loop !14

for.end240:                                       ; preds = %for.body233, %for.cond230.preheader
  %13 = bitcast %struct.stack_st_X509** %si_chains.3 to i8*
  call void @CRYPTO_free(i8* noundef nonnull %13, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 482) #4
  br label %if.end241

if.end241:                                        ; preds = %for.end240, %err2
  %call242 = call fastcc %struct.stack_st* @ossl_check_X509_sk_type(%struct.stack_st_X509* noundef %cms_certs.2) #5
  call void @OPENSSL_sk_pop_free(%struct.stack_st* noundef %call242, void (i8*)* noundef bitcast (void (%struct.x509_st*)* @X509_free to void (i8*)*)) #4
  %call244 = call fastcc %struct.stack_st* @ossl_check_X509_CRL_sk_type(%struct.stack_st_X509_CRL* noundef %crls.3) #5
  call void @OPENSSL_sk_pop_free(%struct.stack_st* noundef %call244, void (i8*)* noundef bitcast (void (%struct.X509_crl_st*)* @X509_CRL_free to void (i8*)*)) #4
  br label %cleanup246

cleanup246:                                       ; preds = %land.lhs.true, %if.end241
  %retval.0 = phi i32 [ %ret.1, %if.end241 ], [ 0, %land.lhs.true ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #6
  ret i32 %retval.0
}

declare %struct.CMS_CTX_st* @ossl_cms_get0_cmsctx(%struct.CMS_ContentInfo_st* noundef) local_unnamed_addr #2

declare %struct.asn1_object_st* @CMS_get0_eContentType(%struct.CMS_ContentInfo_st* noundef) local_unnamed_addr #2

declare %struct.stack_st_CMS_SignerInfo* @CMS_get0_SignerInfos(%struct.CMS_ContentInfo_st* noundef) local_unnamed_addr #2

declare i32 @OPENSSL_sk_num(%struct.stack_st* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_const_CMS_SignerInfo_sk_type(%struct.stack_st_CMS_SignerInfo* noundef readnone %sk) unnamed_addr #3 {
entry:
  %0 = bitcast %struct.stack_st_CMS_SignerInfo* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

declare i8* @OPENSSL_sk_value(%struct.stack_st* noundef, i32 noundef) local_unnamed_addr #2

declare void @CMS_SignerInfo_get0_algs(%struct.CMS_SignerInfo_st* noundef, %struct.evp_pkey_st** noundef, %struct.x509_st** noundef, %struct.X509_algor_st** noundef, %struct.X509_algor_st** noundef) local_unnamed_addr #2

declare i32 @CMS_set1_signers_certs(%struct.CMS_ContentInfo_st* noundef, %struct.stack_st_X509* noundef, i32 noundef) local_unnamed_addr #2

declare i8* @CRYPTO_zalloc(i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare %struct.stack_st_X509* @CMS_get1_certs(%struct.CMS_ContentInfo_st* noundef) local_unnamed_addr #2

declare %struct.stack_st_X509_CRL* @CMS_get1_crls(%struct.CMS_ContentInfo_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @cms_signerinfo_verify_cert(%struct.CMS_SignerInfo_st* noundef %si, %struct.x509_store_st* noundef %store, %struct.stack_st_X509* noundef %certs, %struct.stack_st_X509_CRL* noundef %crls, %struct.stack_st_X509** noundef writeonly %chain, %struct.CMS_CTX_st* noundef %cms_ctx) unnamed_addr #0 {
entry:
  %signer = alloca %struct.x509_st*, align 8
  %0 = bitcast %struct.x509_st** %signer to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #6
  %call = tail call %struct.ossl_lib_ctx_st* @ossl_cms_ctx_get0_libctx(%struct.CMS_CTX_st* noundef %cms_ctx) #4
  %call1 = tail call i8* @ossl_cms_ctx_get0_propq(%struct.CMS_CTX_st* noundef %cms_ctx) #4
  %call2 = tail call %struct.x509_store_ctx_st* @X509_STORE_CTX_new_ex(%struct.ossl_lib_ctx_st* noundef %call, i8* noundef %call1) #4
  %cmp = icmp eq %struct.x509_store_ctx_st* %call2, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #4
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 274, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.cms_signerinfo_verify_cert, i64 0, i64 0)) #4
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 46, i32 noundef 786688, i8* noundef null) #4
  br label %err

if.end:                                           ; preds = %entry
  call void @CMS_SignerInfo_get0_algs(%struct.CMS_SignerInfo_st* noundef %si, %struct.evp_pkey_st** noundef null, %struct.x509_st** noundef nonnull %signer, %struct.X509_algor_st** noundef null, %struct.X509_algor_st** noundef null) #4
  %1 = load %struct.x509_st*, %struct.x509_st** %signer, align 8, !tbaa !4
  %call3 = call i32 @X509_STORE_CTX_init(%struct.x509_store_ctx_st* noundef nonnull %call2, %struct.x509_store_st* noundef %store, %struct.x509_st* noundef %1, %struct.stack_st_X509* noundef %certs) #4
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  call void @ERR_new() #4
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 279, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.cms_signerinfo_verify_cert, i64 0, i64 0)) #4
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 46, i32 noundef 141, i8* noundef null) #4
  br label %err

if.end5:                                          ; preds = %if.end
  %call6 = call i32 @X509_STORE_CTX_set_default(%struct.x509_store_ctx_st* noundef nonnull %call2, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0)) #4
  %cmp7.not = icmp eq %struct.stack_st_X509_CRL* %crls, null
  br i1 %cmp7.not, label %if.end9, label %if.then8

if.then8:                                         ; preds = %if.end5
  call void @X509_STORE_CTX_set0_crls(%struct.x509_store_ctx_st* noundef nonnull %call2, %struct.stack_st_X509_CRL* noundef nonnull %crls) #4
  br label %if.end9

if.end9:                                          ; preds = %if.then8, %if.end5
  %call10 = call i32 @X509_verify_cert(%struct.x509_store_ctx_st* noundef nonnull %call2) #4
  %cmp11 = icmp slt i32 %call10, 1
  br i1 %cmp11, label %if.then12, label %if.end15

if.then12:                                        ; preds = %if.end9
  %call13 = call i32 @X509_STORE_CTX_get_error(%struct.x509_store_ctx_st* noundef nonnull %call2) #4
  call void @ERR_new() #4
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 289, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.cms_signerinfo_verify_cert, i64 0, i64 0)) #4
  %conv = sext i32 %call13 to i64
  %call14 = call i8* @X509_verify_cert_error_string(i64 noundef %conv) #4
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 46, i32 noundef 100, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i8* noundef %call14) #4
  br label %err

if.end15:                                         ; preds = %if.end9
  %cmp16.not = icmp eq %struct.stack_st_X509** %chain, null
  br i1 %cmp16.not, label %err, label %if.then18

if.then18:                                        ; preds = %if.end15
  %call19 = call %struct.stack_st_X509* @X509_STORE_CTX_get1_chain(%struct.x509_store_ctx_st* noundef nonnull %call2) #4
  store %struct.stack_st_X509* %call19, %struct.stack_st_X509** %chain, align 8, !tbaa !4
  br label %err

err:                                              ; preds = %if.end15, %if.then18, %if.then12, %if.then4, %if.then
  %r.0 = phi i32 [ 0, %if.then ], [ 0, %if.then12 ], [ 1, %if.then18 ], [ 1, %if.end15 ], [ 0, %if.then4 ]
  call void @X509_STORE_CTX_free(%struct.x509_store_ctx_st* noundef %call2) #4
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #6
  ret i32 %r.0
}

declare i32 @CMS_signed_get_attr_count(%struct.CMS_SignerInfo_st* noundef) local_unnamed_addr #2

declare i32 @CMS_SignerInfo_verify(%struct.CMS_SignerInfo_st* noundef) local_unnamed_addr #2

declare i32 @ossl_cms_check_signing_certs(%struct.CMS_SignerInfo_st* noundef, %struct.stack_st_X509* noundef) local_unnamed_addr #2

declare i32 @BIO_method_type(%struct.bio_st* noundef) local_unnamed_addr #2

declare i64 @BIO_ctrl(%struct.bio_st* noundef, i32 noundef, i64 noundef, i8* noundef) local_unnamed_addr #2

declare %struct.bio_st* @BIO_new_mem_buf(i8* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.bio_st* @cms_get_text_bio(%struct.bio_st* noundef readnone %out, i32 noundef %flags) unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.bio_st* %out, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call = tail call %struct.bio_method_st* @BIO_s_null() #4
  %call1 = tail call %struct.bio_st* @BIO_new(%struct.bio_method_st* noundef %call) #4
  br label %if.end7

if.else:                                          ; preds = %entry
  %and = and i32 %flags, 1
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end7, label %if.then2

if.then2:                                         ; preds = %if.else
  %call3 = tail call %struct.bio_method_st* @BIO_s_mem() #4
  %call4 = tail call %struct.bio_st* @BIO_new(%struct.bio_method_st* noundef %call3) #4
  %call5 = tail call i64 @BIO_ctrl(%struct.bio_st* noundef %call4, i32 noundef 130, i64 noundef 0, i8* noundef null) #4
  br label %if.end7

if.end7:                                          ; preds = %if.else, %if.then2, %if.then
  %rbio.0 = phi %struct.bio_st* [ %call1, %if.then ], [ %call4, %if.then2 ], [ %out, %if.else ]
  ret %struct.bio_st* %rbio.0
}

declare i32 @SMIME_crlf_copy(%struct.bio_st* noundef, %struct.bio_st* noundef, i32 noundef) local_unnamed_addr #2

declare i32 @SMIME_text(%struct.bio_st* noundef, %struct.bio_st* noundef) local_unnamed_addr #2

declare i32 @CMS_SignerInfo_verify_content(%struct.CMS_SignerInfo_st* noundef, %struct.bio_st* noundef) local_unnamed_addr #2

declare i32 @BIO_free(%struct.bio_st* noundef) local_unnamed_addr #2

declare void @OPENSSL_sk_pop_free(%struct.stack_st* noundef, void (i8*)* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_X509_sk_type(%struct.stack_st_X509* noundef readnone %sk) unnamed_addr #3 {
entry:
  %0 = bitcast %struct.stack_st_X509* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

declare void @X509_free(%struct.x509_st* noundef) #2

declare void @CRYPTO_free(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_X509_CRL_sk_type(%struct.stack_st_X509_CRL* noundef readnone %sk) unnamed_addr #3 {
entry:
  %0 = bitcast %struct.stack_st_X509_CRL* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

declare void @X509_CRL_free(%struct.X509_crl_st* noundef) #2

; Function Attrs: noinline nounwind uwtable
define i32 @CMS_verify_receipt(%struct.CMS_ContentInfo_st* noundef %rcms, %struct.CMS_ContentInfo_st* noundef %ocms, %struct.stack_st_X509* noundef %certs, %struct.x509_store_st* noundef %store, i32 noundef %flags) local_unnamed_addr #0 {
entry:
  %and = and i32 %flags, -66
  %call = tail call i32 @CMS_verify(%struct.CMS_ContentInfo_st* noundef %rcms, %struct.stack_st_X509* noundef %certs, %struct.x509_store_st* noundef %store, %struct.bio_st* noundef null, %struct.bio_st* noundef null, i32 noundef %and) #5
  %cmp = icmp slt i32 %call, 1
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @ossl_cms_Receipt_verify(%struct.CMS_ContentInfo_st* noundef %rcms, %struct.CMS_ContentInfo_st* noundef %ocms) #4
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %call1, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

declare i32 @ossl_cms_Receipt_verify(%struct.CMS_ContentInfo_st* noundef, %struct.CMS_ContentInfo_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define %struct.CMS_ContentInfo_st* @CMS_sign_ex(%struct.x509_st* noundef %signcert, %struct.evp_pkey_st* noundef %pkey, %struct.stack_st_X509* noundef %certs, %struct.bio_st* noundef %data, i32 noundef %flags, %struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef %propq) local_unnamed_addr #0 {
entry:
  %call = tail call %struct.CMS_ContentInfo_st* @CMS_ContentInfo_new_ex(%struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef %propq) #4
  %cmp = icmp eq %struct.CMS_ContentInfo_st* %call, null
  br i1 %cmp, label %err.sink.split, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %call1 = tail call i32 @CMS_SignedData_init(%struct.CMS_ContentInfo_st* noundef nonnull %call) #4
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %err.sink.split, label %if.end

if.end:                                           ; preds = %lor.lhs.false
  %and = and i32 %flags, 524288
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %if.end7, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  %call3 = tail call %struct.asn1_object_st* @OBJ_nid2obj(i32 noundef 787) #4
  %call4 = tail call i32 @CMS_set1_eContentType(%struct.CMS_ContentInfo_st* noundef nonnull %call, %struct.asn1_object_st* noundef %call3) #4
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %err, label %if.end7

if.end7:                                          ; preds = %land.lhs.true, %if.end
  %cmp8.not = icmp eq %struct.evp_pkey_st* %pkey, null
  br i1 %cmp8.not, label %if.end13, label %land.lhs.true9

land.lhs.true9:                                   ; preds = %if.end7
  %call10 = tail call %struct.CMS_SignerInfo_st* @CMS_add1_signer(%struct.CMS_ContentInfo_st* noundef nonnull %call, %struct.x509_st* noundef %signcert, %struct.evp_pkey_st* noundef nonnull %pkey, %struct.evp_md_st* noundef null, i32 noundef %flags) #4
  %tobool11.not = icmp eq %struct.CMS_SignerInfo_st* %call10, null
  br i1 %tobool11.not, label %err.sink.split, label %if.end13

if.end13:                                         ; preds = %land.lhs.true9, %if.end7
  %call14 = tail call fastcc %struct.stack_st* @ossl_check_const_X509_sk_type(%struct.stack_st_X509* noundef %certs) #5
  %call1555 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call14) #4
  %cmp1656 = icmp sgt i32 %call1555, 0
  br i1 %cmp1656, label %for.body, label %for.end

for.cond:                                         ; preds = %for.body
  %call15 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call14) #4
  %cmp16 = icmp slt i32 %inc, %call15
  br i1 %cmp16, label %for.body, label %for.end, !llvm.loop !15

for.body:                                         ; preds = %if.end13, %for.cond
  %i.057 = phi i32 [ %inc, %for.cond ], [ 0, %if.end13 ]
  %call18 = tail call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call14, i32 noundef %i.057) #4
  %0 = bitcast i8* %call18 to %struct.x509_st*
  %call19 = tail call i32 @CMS_add1_cert(%struct.CMS_ContentInfo_st* noundef nonnull %call, %struct.x509_st* noundef %0) #4
  %tobool20.not = icmp eq i32 %call19, 0
  %inc = add nuw nsw i32 %i.057, 1
  br i1 %tobool20.not, label %err.sink.split, label %for.cond

for.end:                                          ; preds = %for.cond, %if.end13
  %and23 = and i32 %flags, 64
  %tobool24.not = icmp eq i32 %and23, 0
  br i1 %tobool24.not, label %if.then25, label %if.end27

if.then25:                                        ; preds = %for.end
  %call26 = tail call i32 @CMS_set_detached(%struct.CMS_ContentInfo_st* noundef nonnull %call, i32 noundef 0) #4
  br label %if.end27

if.end27:                                         ; preds = %if.then25, %for.end
  %and28 = and i32 %flags, 20480
  %tobool29.not = icmp eq i32 %and28, 0
  br i1 %tobool29.not, label %lor.lhs.false30, label %cleanup34

lor.lhs.false30:                                  ; preds = %if.end27
  %call31 = tail call i32 @CMS_final(%struct.CMS_ContentInfo_st* noundef nonnull %call, %struct.bio_st* noundef %data, %struct.bio_st* noundef null, i32 noundef %flags) #5
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %err, label %cleanup34

err.sink.split:                                   ; preds = %for.body, %lor.lhs.false, %entry, %land.lhs.true9
  %.sink58 = phi i32 [ 520, %land.lhs.true9 ], [ 541, %entry ], [ 541, %lor.lhs.false ], [ 541, %for.body ]
  %.sink = phi i32 [ 99, %land.lhs.true9 ], [ 786688, %entry ], [ 786688, %lor.lhs.false ], [ 786688, %for.body ]
  tail call void @ERR_new() #4
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef %.sink58, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @__func__.CMS_sign_ex, i64 0, i64 0)) #4
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 46, i32 noundef %.sink, i8* noundef null) #4
  br label %err

err:                                              ; preds = %err.sink.split, %lor.lhs.false30, %land.lhs.true
  tail call void @CMS_ContentInfo_free(%struct.CMS_ContentInfo_st* noundef %call) #4
  br label %cleanup34

cleanup34:                                        ; preds = %if.end27, %lor.lhs.false30, %err
  %retval.0 = phi %struct.CMS_ContentInfo_st* [ null, %err ], [ %call, %lor.lhs.false30 ], [ %call, %if.end27 ]
  ret %struct.CMS_ContentInfo_st* %retval.0
}

declare i32 @CMS_SignedData_init(%struct.CMS_ContentInfo_st* noundef) local_unnamed_addr #2

declare i32 @CMS_set1_eContentType(%struct.CMS_ContentInfo_st* noundef, %struct.asn1_object_st* noundef) local_unnamed_addr #2

declare %struct.asn1_object_st* @OBJ_nid2obj(i32 noundef) local_unnamed_addr #2

declare %struct.CMS_SignerInfo_st* @CMS_add1_signer(%struct.CMS_ContentInfo_st* noundef, %struct.x509_st* noundef, %struct.evp_pkey_st* noundef, %struct.evp_md_st* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_const_X509_sk_type(%struct.stack_st_X509* noundef readnone %sk) unnamed_addr #3 {
entry:
  %0 = bitcast %struct.stack_st_X509* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

declare i32 @CMS_add1_cert(%struct.CMS_ContentInfo_st* noundef, %struct.x509_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define %struct.CMS_ContentInfo_st* @CMS_sign(%struct.x509_st* noundef %signcert, %struct.evp_pkey_st* noundef %pkey, %struct.stack_st_X509* noundef %certs, %struct.bio_st* noundef %data, i32 noundef %flags) local_unnamed_addr #0 {
entry:
  %call = tail call %struct.CMS_ContentInfo_st* @CMS_sign_ex(%struct.x509_st* noundef %signcert, %struct.evp_pkey_st* noundef %pkey, %struct.stack_st_X509* noundef %certs, %struct.bio_st* noundef %data, i32 noundef %flags, %struct.ossl_lib_ctx_st* noundef null, i8* noundef null) #5
  ret %struct.CMS_ContentInfo_st* %call
}

; Function Attrs: noinline nounwind uwtable
define %struct.CMS_ContentInfo_st* @CMS_sign_receipt(%struct.CMS_SignerInfo_st* noundef %si, %struct.x509_st* noundef %signcert, %struct.evp_pkey_st* noundef %pkey, %struct.stack_st_X509* noundef %certs, i32 noundef %flags) local_unnamed_addr #0 {
entry:
  %cms_ctx = getelementptr inbounds %struct.CMS_SignerInfo_st, %struct.CMS_SignerInfo_st* %si, i64 0, i32 11
  %0 = load %struct.CMS_CTX_st*, %struct.CMS_CTX_st** %cms_ctx, align 8, !tbaa !16
  %and = and i32 %flags, -20674
  %or = or i32 %and, 16576
  %cmp = icmp eq %struct.evp_pkey_st* %pkey, null
  %cmp1 = icmp eq %struct.x509_st* %signcert, null
  %or.cond = or i1 %cmp1, %cmp
  br i1 %or.cond, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #4
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 569, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.CMS_sign_receipt, i64 0, i64 0)) #4
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 46, i32 noundef 174, i8* noundef null) #4
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call %struct.ossl_lib_ctx_st* @ossl_cms_ctx_get0_libctx(%struct.CMS_CTX_st* noundef %0) #4
  %call2 = tail call i8* @ossl_cms_ctx_get0_propq(%struct.CMS_CTX_st* noundef %0) #4
  %call3 = tail call %struct.CMS_ContentInfo_st* @CMS_sign_ex(%struct.x509_st* noundef null, %struct.evp_pkey_st* noundef null, %struct.stack_st_X509* noundef %certs, %struct.bio_st* noundef null, i32 noundef %or, %struct.ossl_lib_ctx_st* noundef %call, i8* noundef %call2) #5
  %cmp4 = icmp eq %struct.CMS_ContentInfo_st* %call3, null
  br i1 %cmp4, label %if.end35, label %if.end6

if.end6:                                          ; preds = %if.end
  %call7 = tail call %struct.asn1_object_st* @OBJ_nid2obj(i32 noundef 204) #4
  %call8 = tail call i32 @CMS_set1_eContentType(%struct.CMS_ContentInfo_st* noundef nonnull %call3, %struct.asn1_object_st* noundef %call7) #4
  %tobool.not = icmp eq i32 %call8, 0
  br i1 %tobool.not, label %if.end35, label %if.end10

if.end10:                                         ; preds = %if.end6
  %call11 = tail call %struct.CMS_SignerInfo_st* @CMS_add1_signer(%struct.CMS_ContentInfo_st* noundef nonnull %call3, %struct.x509_st* noundef nonnull %signcert, %struct.evp_pkey_st* noundef nonnull %pkey, %struct.evp_md_st* noundef null, i32 noundef %or) #4
  %tobool12.not = icmp eq %struct.CMS_SignerInfo_st* %call11, null
  br i1 %tobool12.not, label %if.then13, label %if.end14

if.then13:                                        ; preds = %if.end10
  tail call void @ERR_new() #4
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 587, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.CMS_sign_receipt, i64 0, i64 0)) #4
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 46, i32 noundef 99, i8* noundef null) #4
  br label %if.end35

if.end14:                                         ; preds = %if.end10
  %call15 = tail call %struct.asn1_string_st* @ossl_cms_encode_Receipt(%struct.CMS_SignerInfo_st* noundef nonnull %si) #4
  %cmp16 = icmp eq %struct.asn1_string_st* %call15, null
  br i1 %cmp16, label %if.end35, label %if.end18

if.end18:                                         ; preds = %if.end14
  %data = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %call15, i64 0, i32 2
  %1 = load i8*, i8** %data, align 8, !tbaa !19
  %length = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %call15, i64 0, i32 0
  %2 = load i32, i32* %length, align 8, !tbaa !22
  %call19 = tail call %struct.bio_st* @BIO_new_mem_buf(i8* noundef %1, i32 noundef %2) #4
  %cmp20 = icmp eq %struct.bio_st* %call19, null
  br i1 %cmp20, label %if.end35, label %if.end22

if.end22:                                         ; preds = %if.end18
  %call23 = tail call i32 @ossl_cms_msgSigDigest_add1(%struct.CMS_SignerInfo_st* noundef nonnull %call11, %struct.CMS_SignerInfo_st* noundef nonnull %si) #4
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %if.end35, label %if.end26

if.end26:                                         ; preds = %if.end22
  %call27 = tail call i32 @CMS_final(%struct.CMS_ContentInfo_st* noundef nonnull %call3, %struct.bio_st* noundef nonnull %call19, %struct.bio_st* noundef null, i32 noundef %or) #5
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %if.end35, label %if.end30

if.end30:                                         ; preds = %if.end26
  %call31 = tail call %struct.asn1_string_st** @CMS_get0_content(%struct.CMS_ContentInfo_st* noundef nonnull %call3) #4
  store %struct.asn1_string_st* %call15, %struct.asn1_string_st** %call31, align 8, !tbaa !4
  %call32.c74 = tail call i32 @BIO_free(%struct.bio_st* noundef nonnull %call19) #4
  br label %cleanup

if.end35:                                         ; preds = %if.end18, %if.end14, %if.end, %if.then13, %if.end6, %if.end22, %if.end26
  %rct_cont.0.sink = phi %struct.bio_st* [ %call19, %if.end26 ], [ %call19, %if.end22 ], [ null, %if.then13 ], [ null, %if.end6 ], [ null, %if.end ], [ null, %if.end14 ], [ null, %if.end18 ]
  %call32 = tail call i32 @BIO_free(%struct.bio_st* noundef %rct_cont.0.sink) #4
  tail call void @CMS_ContentInfo_free(%struct.CMS_ContentInfo_st* noundef %call3) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end35, %if.end30, %if.then
  %retval.0 = phi %struct.CMS_ContentInfo_st* [ null, %if.then ], [ %call3, %if.end30 ], [ null, %if.end35 ]
  ret %struct.CMS_ContentInfo_st* %retval.0
}

declare %struct.ossl_lib_ctx_st* @ossl_cms_ctx_get0_libctx(%struct.CMS_CTX_st* noundef) local_unnamed_addr #2

declare i8* @ossl_cms_ctx_get0_propq(%struct.CMS_CTX_st* noundef) local_unnamed_addr #2

declare %struct.asn1_string_st* @ossl_cms_encode_Receipt(%struct.CMS_SignerInfo_st* noundef) local_unnamed_addr #2

declare i32 @ossl_cms_msgSigDigest_add1(%struct.CMS_SignerInfo_st* noundef, %struct.CMS_SignerInfo_st* noundef) local_unnamed_addr #2

declare %struct.asn1_string_st** @CMS_get0_content(%struct.CMS_ContentInfo_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define %struct.CMS_ContentInfo_st* @CMS_encrypt_ex(%struct.stack_st_X509* noundef %certs, %struct.bio_st* noundef %data, %struct.evp_cipher_st* noundef %cipher, i32 noundef %flags, %struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef %propq) local_unnamed_addr #0 {
entry:
  %call = tail call i64 @EVP_CIPHER_get_flags(%struct.evp_cipher_st* noundef %cipher) #4
  %and = and i64 %call, 2097152
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %cond.false, label %cond.true

cond.true:                                        ; preds = %entry
  %call1 = tail call %struct.CMS_ContentInfo_st* @CMS_AuthEnvelopedData_create_ex(%struct.evp_cipher_st* noundef %cipher, %struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef %propq) #4
  br label %cond.end

cond.false:                                       ; preds = %entry
  %call2 = tail call %struct.CMS_ContentInfo_st* @CMS_EnvelopedData_create_ex(%struct.evp_cipher_st* noundef %cipher, %struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef %propq) #4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.CMS_ContentInfo_st* [ %call1, %cond.true ], [ %call2, %cond.false ]
  %cmp = icmp eq %struct.CMS_ContentInfo_st* %cond, null
  br i1 %cmp, label %err.sink.split, label %for.cond.preheader

for.cond.preheader:                               ; preds = %cond.end
  %call3 = tail call fastcc %struct.stack_st* @ossl_check_const_X509_sk_type(%struct.stack_st_X509* noundef %certs) #5
  %call442 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call3) #4
  %cmp543 = icmp sgt i32 %call442, 0
  br i1 %cmp543, label %for.body, label %for.end

for.cond:                                         ; preds = %for.body
  %call4 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call3) #4
  %cmp5 = icmp slt i32 %inc, %call4
  br i1 %cmp5, label %for.body, label %for.end, !llvm.loop !23

for.body:                                         ; preds = %for.cond.preheader, %for.cond
  %i.044 = phi i32 [ %inc, %for.cond ], [ 0, %for.cond.preheader ]
  %call7 = tail call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call3, i32 noundef %i.044) #4
  %0 = bitcast i8* %call7 to %struct.x509_st*
  %call8 = tail call %struct.CMS_RecipientInfo_st* @CMS_add1_recipient_cert(%struct.CMS_ContentInfo_st* noundef nonnull %cond, %struct.x509_st* noundef %0, i32 noundef %flags) #4
  %tobool9.not = icmp eq %struct.CMS_RecipientInfo_st* %call8, null
  %inc = add nuw nsw i32 %i.044, 1
  br i1 %tobool9.not, label %err.sink.split, label %for.cond

for.end:                                          ; preds = %for.cond, %for.cond.preheader
  %and12 = and i32 %flags, 64
  %tobool13.not = icmp eq i32 %and12, 0
  br i1 %tobool13.not, label %if.then14, label %if.end16

if.then14:                                        ; preds = %for.end
  %call15 = tail call i32 @CMS_set_detached(%struct.CMS_ContentInfo_st* noundef nonnull %cond, i32 noundef 0) #4
  br label %if.end16

if.end16:                                         ; preds = %if.then14, %for.end
  %and17 = and i32 %flags, 20480
  %tobool18.not = icmp eq i32 %and17, 0
  br i1 %tobool18.not, label %lor.lhs.false, label %cleanup

lor.lhs.false:                                    ; preds = %if.end16
  %call19 = tail call i32 @CMS_final(%struct.CMS_ContentInfo_st* noundef nonnull %cond, %struct.bio_st* noundef %data, %struct.bio_st* noundef null, i32 noundef %flags) #5
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %err, label %cleanup

err.sink.split:                                   ; preds = %for.body, %cond.end
  %.sink45 = phi i32 [ 656, %cond.end ], [ 641, %for.body ]
  %.sink = phi i32 [ 786688, %cond.end ], [ 137, %for.body ]
  tail call void @ERR_new() #4
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef %.sink45, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__func__.CMS_encrypt_ex, i64 0, i64 0)) #4
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 46, i32 noundef %.sink, i8* noundef null) #4
  br label %err

err:                                              ; preds = %err.sink.split, %lor.lhs.false
  tail call void @CMS_ContentInfo_free(%struct.CMS_ContentInfo_st* noundef %cond) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %lor.lhs.false, %err
  %retval.0 = phi %struct.CMS_ContentInfo_st* [ null, %err ], [ %cond, %lor.lhs.false ], [ %cond, %if.end16 ]
  ret %struct.CMS_ContentInfo_st* %retval.0
}

declare i64 @EVP_CIPHER_get_flags(%struct.evp_cipher_st* noundef) local_unnamed_addr #2

declare %struct.CMS_ContentInfo_st* @CMS_AuthEnvelopedData_create_ex(%struct.evp_cipher_st* noundef, %struct.ossl_lib_ctx_st* noundef, i8* noundef) local_unnamed_addr #2

declare %struct.CMS_ContentInfo_st* @CMS_EnvelopedData_create_ex(%struct.evp_cipher_st* noundef, %struct.ossl_lib_ctx_st* noundef, i8* noundef) local_unnamed_addr #2

declare %struct.CMS_RecipientInfo_st* @CMS_add1_recipient_cert(%struct.CMS_ContentInfo_st* noundef, %struct.x509_st* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define %struct.CMS_ContentInfo_st* @CMS_encrypt(%struct.stack_st_X509* noundef %certs, %struct.bio_st* noundef %data, %struct.evp_cipher_st* noundef %cipher, i32 noundef %flags) local_unnamed_addr #0 {
entry:
  %call = tail call %struct.CMS_ContentInfo_st* @CMS_encrypt_ex(%struct.stack_st_X509* noundef %certs, %struct.bio_st* noundef %data, %struct.evp_cipher_st* noundef %cipher, i32 noundef %flags, %struct.ossl_lib_ctx_st* noundef null, i8* noundef null) #5
  ret %struct.CMS_ContentInfo_st* %call
}

; Function Attrs: noinline nounwind uwtable
define i32 @CMS_decrypt_set1_pkey(%struct.CMS_ContentInfo_st* noundef %cms, %struct.evp_pkey_st* noundef %pk, %struct.x509_st* noundef %cert) local_unnamed_addr #0 {
entry:
  %call = tail call i32 @CMS_decrypt_set1_pkey_and_peer(%struct.CMS_ContentInfo_st* noundef %cms, %struct.evp_pkey_st* noundef %pk, %struct.x509_st* noundef %cert, %struct.x509_st* noundef null) #5
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define i32 @CMS_decrypt_set1_pkey_and_peer(%struct.CMS_ContentInfo_st* noundef %cms, %struct.evp_pkey_st* noundef %pk, %struct.x509_st* noundef %cert, %struct.x509_st* noundef %peer) local_unnamed_addr #0 {
entry:
  %call = tail call %struct.stack_st_CMS_RecipientInfo* @CMS_get0_RecipientInfos(%struct.CMS_ContentInfo_st* noundef %cms) #4
  %cmp.not = icmp eq %struct.stack_st_CMS_RecipientInfo* %call, null
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call1 = tail call %struct.CMS_EncryptedContentInfo_st* @ossl_cms_get0_env_enc_content(%struct.CMS_ContentInfo_st* noundef %cms) #4
  %debug2 = getelementptr inbounds %struct.CMS_EncryptedContentInfo_st, %struct.CMS_EncryptedContentInfo_st* %call1, i64 0, i32 8
  %0 = load i32, i32* %debug2, align 8, !tbaa !24
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %debug.0 = phi i32 [ %0, %if.then ], [ 0, %entry ]
  %call3 = tail call i32 @ossl_cms_pkey_get_ri_type(%struct.evp_pkey_st* noundef %pk) #4
  %cmp4 = icmp eq i32 %call3, -1
  br i1 %cmp4, label %if.then5, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end
  %call7 = tail call fastcc %struct.stack_st* @ossl_check_const_CMS_RecipientInfo_sk_type(%struct.stack_st_CMS_RecipientInfo* noundef %call) #5
  %call8111 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call7) #4
  %cmp9112 = icmp sgt i32 %call8111, 0
  br i1 %cmp9112, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %cmp25 = icmp eq %struct.x509_st* %cert, null
  %tobool43 = icmp eq i32 %debug.0, 0
  %cmp45 = icmp eq i32 %call3, 0
  %or.cond = select i1 %tobool43, i1 %cmp45, i1 false
  br label %for.body

if.then5:                                         ; preds = %if.end
  tail call void @ERR_new() #4
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 712, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.CMS_decrypt_set1_pkey_and_peer, i64 0, i64 0)) #4
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 46, i32 noundef 125, i8* noundef null) #4
  br label %cleanup60

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %match_ri.0114 = phi i32 [ 0, %for.body.lr.ph ], [ %match_ri.1, %for.inc ]
  %i.0113 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc ]
  %call11 = tail call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call7, i32 noundef %i.0113) #4
  %1 = bitcast i8* %call11 to %struct.CMS_RecipientInfo_st*
  %call12 = tail call i32 @CMS_RecipientInfo_type(%struct.CMS_RecipientInfo_st* noundef %1) #4
  %call13 = tail call i32 @ossl_cms_pkey_is_ri_type_supported(%struct.evp_pkey_st* noundef %pk, i32 noundef %call12) #4
  %tobool.not = icmp eq i32 %call13, 0
  br i1 %tobool.not, label %for.inc, label %if.end15

if.end15:                                         ; preds = %for.body
  %cmp16 = icmp eq i32 %call12, 1
  br i1 %cmp16, label %if.then17, label %if.else

if.then17:                                        ; preds = %if.end15
  %call18 = tail call fastcc i32 @cms_kari_set1_pkey_and_peer(%struct.CMS_ContentInfo_st* noundef %cms, %struct.CMS_RecipientInfo_st* noundef %1, %struct.evp_pkey_st* noundef %pk, %struct.x509_st* noundef %cert, %struct.x509_st* noundef %peer) #5
  %cmp19 = icmp sgt i32 %call18, 0
  br i1 %cmp19, label %cleanup60, label %if.end21

if.end21:                                         ; preds = %if.then17
  %cmp22 = icmp slt i32 %call18, 0
  br i1 %cmp22, label %cleanup60, label %for.inc

if.else:                                          ; preds = %if.end15
  br i1 %cmp25, label %if.then28, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else
  %call26 = tail call i32 @CMS_RecipientInfo_ktri_cert_cmp(%struct.CMS_RecipientInfo_st* noundef %1, %struct.x509_st* noundef nonnull %cert) #4
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %if.then28, label %for.inc

if.then28:                                        ; preds = %lor.lhs.false, %if.else
  %call29 = tail call i32 @EVP_PKEY_up_ref(%struct.evp_pkey_st* noundef %pk) #4
  %call30 = tail call i32 @CMS_RecipientInfo_set0_pkey(%struct.CMS_RecipientInfo_st* noundef %1, %struct.evp_pkey_st* noundef %pk) #4
  %call31 = tail call i32 @CMS_RecipientInfo_decrypt(%struct.CMS_ContentInfo_st* noundef %cms, %struct.CMS_RecipientInfo_st* noundef %1) #4
  %call32 = tail call i32 @CMS_RecipientInfo_set0_pkey(%struct.CMS_RecipientInfo_st* noundef %1, %struct.evp_pkey_st* noundef null) #4
  br i1 %cmp25, label %if.else41, label %if.then34

if.then34:                                        ; preds = %if.then28
  br i1 %tobool43, label %if.then36, label %if.end37

if.then36:                                        ; preds = %if.then34
  tail call void @ERR_clear_error() #4
  br label %cleanup60

if.end37:                                         ; preds = %if.then34
  %cmp38 = icmp sgt i32 %call31, 0
  br i1 %cmp38, label %cleanup60, label %if.end40

if.end40:                                         ; preds = %if.end37
  tail call void @ERR_new() #4
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 751, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.CMS_decrypt_set1_pkey_and_peer, i64 0, i64 0)) #4
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 46, i32 noundef 112, i8* noundef null) #4
  br label %cleanup60

if.else41:                                        ; preds = %if.then28
  %cmp42 = icmp slt i32 %call31, 1
  %brmerge = select i1 %cmp42, i1 true, i1 %or.cond
  br i1 %brmerge, label %for.inc, label %cleanup60

for.inc:                                          ; preds = %if.else41, %if.end21, %lor.lhs.false, %for.body
  %match_ri.1 = phi i32 [ %match_ri.0114, %for.body ], [ 1, %lor.lhs.false ], [ 1, %if.else41 ], [ 1, %if.end21 ]
  %inc = add nuw nsw i32 %i.0113, 1
  %call8 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call7) #4
  %cmp9 = icmp slt i32 %inc, %call8
  br i1 %cmp9, label %for.body, label %for.end, !llvm.loop !26

for.end:                                          ; preds = %for.inc, %for.cond.preheader
  %match_ri.0.lcssa = phi i32 [ 0, %for.cond.preheader ], [ %match_ri.1, %for.inc ]
  %cmp51 = icmp ne %struct.x509_st* %cert, null
  %cmp53 = icmp ne i32 %call3, 0
  %or.cond67 = select i1 %cmp51, i1 true, i1 %cmp53
  %tobool55 = icmp eq i32 %match_ri.0.lcssa, 0
  %or.cond68 = select i1 %or.cond67, i1 true, i1 %tobool55
  %tobool57 = icmp ne i32 %debug.0, 0
  %or.cond69 = select i1 %or.cond68, i1 true, i1 %tobool57
  br i1 %or.cond69, label %if.end59, label %if.then58

if.then58:                                        ; preds = %for.end
  tail call void @ERR_clear_error() #4
  br label %cleanup60

if.end59:                                         ; preds = %for.end
  tail call void @ERR_new() #4
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 772, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.CMS_decrypt_set1_pkey_and_peer, i64 0, i64 0)) #4
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 46, i32 noundef 132, i8* noundef null) #4
  br label %cleanup60

cleanup60:                                        ; preds = %if.end21, %if.then17, %if.else41, %if.end37, %if.then36, %if.end40, %if.end59, %if.then58, %if.then5
  %retval.2 = phi i32 [ 0, %if.then5 ], [ 0, %if.end59 ], [ 1, %if.then58 ], [ 1, %if.end37 ], [ 1, %if.then36 ], [ 0, %if.end40 ], [ 1, %if.then17 ], [ 0, %if.end21 ], [ 1, %if.else41 ]
  ret i32 %retval.2
}

declare %struct.stack_st_CMS_RecipientInfo* @CMS_get0_RecipientInfos(%struct.CMS_ContentInfo_st* noundef) local_unnamed_addr #2

declare %struct.CMS_EncryptedContentInfo_st* @ossl_cms_get0_env_enc_content(%struct.CMS_ContentInfo_st* noundef) local_unnamed_addr #2

declare i32 @ossl_cms_pkey_get_ri_type(%struct.evp_pkey_st* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_const_CMS_RecipientInfo_sk_type(%struct.stack_st_CMS_RecipientInfo* noundef readnone %sk) unnamed_addr #3 {
entry:
  %0 = bitcast %struct.stack_st_CMS_RecipientInfo* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

declare i32 @CMS_RecipientInfo_type(%struct.CMS_RecipientInfo_st* noundef) local_unnamed_addr #2

declare i32 @ossl_cms_pkey_is_ri_type_supported(%struct.evp_pkey_st* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @cms_kari_set1_pkey_and_peer(%struct.CMS_ContentInfo_st* noundef %cms, %struct.CMS_RecipientInfo_st* noundef %ri, %struct.evp_pkey_st* noundef %pk, %struct.x509_st* noundef %cert, %struct.x509_st* noundef %peer) unnamed_addr #0 {
entry:
  %call = tail call %struct.stack_st_CMS_RecipientEncryptedKey* @CMS_RecipientInfo_kari_get0_reks(%struct.CMS_RecipientInfo_st* noundef %ri) #4
  %call1 = tail call fastcc %struct.stack_st* @ossl_check_const_CMS_RecipientEncryptedKey_sk_type(%struct.stack_st_CMS_RecipientEncryptedKey* noundef %call) #5
  %call233 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call1) #4
  %cmp34 = icmp sgt i32 %call233, 0
  br i1 %cmp34, label %for.body.lr.ph, label %cleanup14

for.body.lr.ph:                                   ; preds = %entry
  %cmp5.not = icmp eq %struct.x509_st* %cert, null
  br label %for.body

for.cond:                                         ; preds = %land.lhs.true
  %call2 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call1) #4
  %cmp = icmp slt i32 %inc, %call2
  br i1 %cmp, label %for.body, label %cleanup14, !llvm.loop !27

for.body:                                         ; preds = %for.body.lr.ph, %for.cond
  %i.035 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.cond ]
  %call4 = tail call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call1, i32 noundef %i.035) #4
  br i1 %cmp5.not, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %for.body
  %0 = bitcast i8* %call4 to %struct.CMS_RecipientEncryptedKey_st*
  %call6 = tail call i32 @CMS_RecipientEncryptedKey_cert_cmp(%struct.CMS_RecipientEncryptedKey_st* noundef %0, %struct.x509_st* noundef nonnull %cert) #4
  %tobool.not = icmp eq i32 %call6, 0
  %inc = add nuw nsw i32 %i.035, 1
  br i1 %tobool.not, label %if.end, label %for.cond

if.end:                                           ; preds = %land.lhs.true, %for.body
  %.pre-phi = bitcast i8* %call4 to %struct.CMS_RecipientEncryptedKey_st*
  %call7 = tail call i32 @CMS_RecipientInfo_kari_set0_pkey_and_peer(%struct.CMS_RecipientInfo_st* noundef %ri, %struct.evp_pkey_st* noundef %pk, %struct.x509_st* noundef %peer) #4
  %call8 = tail call i32 @CMS_RecipientInfo_kari_decrypt(%struct.CMS_ContentInfo_st* noundef %cms, %struct.CMS_RecipientInfo_st* noundef %ri, %struct.CMS_RecipientEncryptedKey_st* noundef %.pre-phi) #4
  %call9 = tail call i32 @CMS_RecipientInfo_kari_set0_pkey(%struct.CMS_RecipientInfo_st* noundef %ri, %struct.evp_pkey_st* noundef null) #4
  %cmp10 = icmp sgt i32 %call8, 0
  br i1 %cmp10, label %cleanup14, label %if.end12

if.end12:                                         ; preds = %if.end
  %cmp13 = icmp ne %struct.x509_st* %cert, null
  %cond = sext i1 %cmp13 to i32
  br label %cleanup14

cleanup14:                                        ; preds = %for.cond, %entry, %if.end, %if.end12
  %retval.2 = phi i32 [ 1, %if.end ], [ %cond, %if.end12 ], [ 0, %entry ], [ 0, %for.cond ]
  ret i32 %retval.2
}

declare i32 @CMS_RecipientInfo_ktri_cert_cmp(%struct.CMS_RecipientInfo_st* noundef, %struct.x509_st* noundef) local_unnamed_addr #2

declare i32 @EVP_PKEY_up_ref(%struct.evp_pkey_st* noundef) local_unnamed_addr #2

declare i32 @CMS_RecipientInfo_set0_pkey(%struct.CMS_RecipientInfo_st* noundef, %struct.evp_pkey_st* noundef) local_unnamed_addr #2

declare i32 @CMS_RecipientInfo_decrypt(%struct.CMS_ContentInfo_st* noundef, %struct.CMS_RecipientInfo_st* noundef) local_unnamed_addr #2

declare void @ERR_clear_error() local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @CMS_decrypt_set1_key(%struct.CMS_ContentInfo_st* noundef %cms, i8* noundef %key, i64 noundef %keylen, i8* noundef %id, i64 noundef %idlen) local_unnamed_addr #0 {
entry:
  %call = tail call %struct.stack_st_CMS_RecipientInfo* @CMS_get0_RecipientInfos(%struct.CMS_ContentInfo_st* noundef %cms) #4
  %call1 = tail call fastcc %struct.stack_st* @ossl_check_const_CMS_RecipientInfo_sk_type(%struct.stack_st_CMS_RecipientInfo* noundef %call) #5
  %call238 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call1) #4
  %cmp39 = icmp sgt i32 %call238, 0
  br i1 %cmp39, label %for.body.lr.ph, label %cleanup.sink.split

for.body.lr.ph:                                   ; preds = %entry
  %cmp7 = icmp eq i8* %id, null
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %i.040 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc ]
  %call4 = tail call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call1, i32 noundef %i.040) #4
  %0 = bitcast i8* %call4 to %struct.CMS_RecipientInfo_st*
  %call5 = tail call i32 @CMS_RecipientInfo_type(%struct.CMS_RecipientInfo_st* noundef %0) #4
  %cmp6.not = icmp eq i32 %call5, 2
  br i1 %cmp6.not, label %if.end, label %for.inc

if.end:                                           ; preds = %for.body
  br i1 %cmp7, label %if.then10, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %call8 = tail call i32 @CMS_RecipientInfo_kekri_id_cmp(%struct.CMS_RecipientInfo_st* noundef %0, i8* noundef nonnull %id, i64 noundef %idlen) #4
  %cmp9 = icmp eq i32 %call8, 0
  br i1 %cmp9, label %if.then10, label %for.inc

if.then10:                                        ; preds = %lor.lhs.false, %if.end
  %call11 = tail call i32 @CMS_RecipientInfo_set0_key(%struct.CMS_RecipientInfo_st* noundef %0, i8* noundef %key, i64 noundef %keylen) #4
  %call12 = tail call i32 @CMS_RecipientInfo_decrypt(%struct.CMS_ContentInfo_st* noundef %cms, %struct.CMS_RecipientInfo_st* noundef %0) #4
  %call13 = tail call i32 @CMS_RecipientInfo_set0_key(%struct.CMS_RecipientInfo_st* noundef %0, i8* noundef null, i64 noundef 0) #4
  %cmp14 = icmp sgt i32 %call12, 0
  br i1 %cmp14, label %cleanup, label %if.end16

if.end16:                                         ; preds = %if.then10
  br i1 %cmp7, label %if.end19, label %cleanup.sink.split

if.end19:                                         ; preds = %if.end16
  tail call void @ERR_clear_error() #4
  br label %for.inc

for.inc:                                          ; preds = %lor.lhs.false, %if.end19, %for.body
  %inc = add nuw nsw i32 %i.040, 1
  %call2 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call1) #4
  %cmp = icmp slt i32 %inc, %call2
  br i1 %cmp, label %for.body, label %cleanup.sink.split, !llvm.loop !28

cleanup.sink.split:                               ; preds = %for.inc, %if.end16, %entry
  %.sink41 = phi i32 [ 809, %entry ], [ 802, %if.end16 ], [ 809, %for.inc ]
  %.sink = phi i32 [ 132, %entry ], [ 112, %if.end16 ], [ 132, %for.inc ]
  tail call void @ERR_new() #4
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef %.sink41, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.CMS_decrypt_set1_key, i64 0, i64 0)) #4
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 46, i32 noundef %.sink, i8* noundef null) #4
  br label %cleanup

cleanup:                                          ; preds = %if.then10, %cleanup.sink.split
  %retval.0 = phi i32 [ 0, %cleanup.sink.split ], [ 1, %if.then10 ]
  ret i32 %retval.0
}

declare i32 @CMS_RecipientInfo_kekri_id_cmp(%struct.CMS_RecipientInfo_st* noundef, i8* noundef, i64 noundef) local_unnamed_addr #2

declare i32 @CMS_RecipientInfo_set0_key(%struct.CMS_RecipientInfo_st* noundef, i8* noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @CMS_decrypt_set1_password(%struct.CMS_ContentInfo_st* noundef %cms, i8* noundef %pass, i64 noundef %passlen) local_unnamed_addr #0 {
entry:
  %call = tail call %struct.stack_st_CMS_RecipientInfo* @CMS_get0_RecipientInfos(%struct.CMS_ContentInfo_st* noundef %cms) #4
  %call1 = tail call fastcc %struct.stack_st* @ossl_check_const_CMS_RecipientInfo_sk_type(%struct.stack_st_CMS_RecipientInfo* noundef %call) #5
  %call227 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call1) #4
  %cmp28 = icmp sgt i32 %call227, 0
  br i1 %cmp28, label %for.body, label %for.end

for.body:                                         ; preds = %entry, %for.inc
  %i.029 = phi i32 [ %inc, %for.inc ], [ 0, %entry ]
  %call4 = tail call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call1, i32 noundef %i.029) #4
  %0 = bitcast i8* %call4 to %struct.CMS_RecipientInfo_st*
  %call5 = tail call i32 @CMS_RecipientInfo_type(%struct.CMS_RecipientInfo_st* noundef %0) #4
  %cmp6.not = icmp eq i32 %call5, 3
  br i1 %cmp6.not, label %if.end, label %for.inc

if.end:                                           ; preds = %for.body
  %call7 = tail call i32 @CMS_RecipientInfo_set0_password(%struct.CMS_RecipientInfo_st* noundef %0, i8* noundef %pass, i64 noundef %passlen) #4
  %call8 = tail call i32 @CMS_RecipientInfo_decrypt(%struct.CMS_ContentInfo_st* noundef %cms, %struct.CMS_RecipientInfo_st* noundef %0) #4
  %call9 = tail call i32 @CMS_RecipientInfo_set0_password(%struct.CMS_RecipientInfo_st* noundef %0, i8* noundef null, i64 noundef 0) #4
  %cmp10 = icmp sgt i32 %call8, 0
  br i1 %cmp10, label %cleanup, label %for.inc

for.inc:                                          ; preds = %if.end, %for.body
  %inc = add nuw nsw i32 %i.029, 1
  %call2 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call1) #4
  %cmp = icmp slt i32 %inc, %call2
  br i1 %cmp, label %for.body, label %for.end, !llvm.loop !29

for.end:                                          ; preds = %for.inc, %entry
  tail call void @ERR_new() #4
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 833, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.CMS_decrypt_set1_password, i64 0, i64 0)) #4
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 46, i32 noundef 132, i8* noundef null) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %for.end
  %retval.0 = phi i32 [ 0, %for.end ], [ 1, %if.end ]
  ret i32 %retval.0
}

declare i32 @CMS_RecipientInfo_set0_password(%struct.CMS_RecipientInfo_st* noundef, i8* noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @CMS_decrypt(%struct.CMS_ContentInfo_st* noundef %cms, %struct.evp_pkey_st* noundef %pk, %struct.x509_st* noundef %cert, %struct.bio_st* noundef %dcont, %struct.bio_st* noundef %out, i32 noundef %flags) local_unnamed_addr #0 {
entry:
  %call = tail call %struct.asn1_object_st* @CMS_get0_type(%struct.CMS_ContentInfo_st* noundef %cms) #4
  %call1 = tail call i32 @OBJ_obj2nid(%struct.asn1_object_st* noundef %call) #4
  switch i32 %call1, label %if.then [
    i32 1059, label %if.end
    i32 23, label %if.end
  ]

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #4
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 848, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @__func__.CMS_decrypt, i64 0, i64 0)) #4
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 46, i32 noundef 146, i8* noundef null) #4
  br label %cleanup

if.end:                                           ; preds = %entry, %entry
  %cmp3 = icmp eq %struct.bio_st* %dcont, null
  br i1 %cmp3, label %land.lhs.true4, label %if.end7

land.lhs.true4:                                   ; preds = %if.end
  %call5 = tail call fastcc i32 @check_content(%struct.CMS_ContentInfo_st* noundef %cms) #5
  %tobool.not = icmp eq i32 %call5, 0
  br i1 %tobool.not, label %cleanup, label %if.end7

if.end7:                                          ; preds = %land.lhs.true4, %if.end
  %call11 = tail call %struct.CMS_EncryptedContentInfo_st* @ossl_cms_get0_env_enc_content(%struct.CMS_ContentInfo_st* noundef %cms) #4
  %debug12 = getelementptr inbounds %struct.CMS_EncryptedContentInfo_st, %struct.CMS_EncryptedContentInfo_st* %call11, i64 0, i32 8
  %and = lshr i32 %flags, 17
  %and.lobit = and i32 %and, 1
  store i32 %and.lobit, i32* %debug12, align 8, !tbaa !24
  %cmp14 = icmp eq %struct.x509_st* %cert, null
  %call16 = tail call %struct.CMS_EncryptedContentInfo_st* @ossl_cms_get0_env_enc_content(%struct.CMS_ContentInfo_st* noundef %cms) #4
  %havenocert = getelementptr inbounds %struct.CMS_EncryptedContentInfo_st, %struct.CMS_EncryptedContentInfo_st* %call16, i64 0, i32 9
  br i1 %cmp14, label %if.end20, label %if.end20.thread

if.end20.thread:                                  ; preds = %if.end7
  store i32 0, i32* %havenocert, align 4, !tbaa !30
  %cmp2168 = icmp eq %struct.evp_pkey_st* %pk, null
  br i1 %cmp2168, label %if.end35, label %land.lhs.true31

if.end20:                                         ; preds = %if.end7
  store i32 1, i32* %havenocert, align 4, !tbaa !30
  %cmp21 = icmp eq %struct.evp_pkey_st* %pk, null
  %or.cond44 = and i1 %cmp21, %cmp3
  %cmp27 = icmp eq %struct.bio_st* %out, null
  %or.cond45 = and i1 %or.cond44, %cmp27
  br i1 %or.cond45, label %cleanup, label %if.end29

if.end29:                                         ; preds = %if.end20
  br i1 %cmp21, label %if.end35, label %land.lhs.true31

land.lhs.true31:                                  ; preds = %if.end20.thread, %if.end29
  %call32 = tail call i32 @CMS_decrypt_set1_pkey(%struct.CMS_ContentInfo_st* noundef %cms, %struct.evp_pkey_st* noundef nonnull %pk, %struct.x509_st* noundef %cert) #5
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %cleanup, label %if.end35

if.end35:                                         ; preds = %if.end20.thread, %land.lhs.true31, %if.end29
  %call36 = tail call %struct.bio_st* @CMS_dataInit(%struct.CMS_ContentInfo_st* noundef %cms, %struct.bio_st* noundef %dcont) #4
  %cmp37 = icmp eq %struct.bio_st* %call36, null
  br i1 %cmp37, label %cleanup, label %if.end39

if.end39:                                         ; preds = %if.end35
  %call40 = tail call fastcc i32 @cms_copy_content(%struct.bio_st* noundef %out, %struct.bio_st* noundef nonnull %call36, i32 noundef %flags) #5
  tail call fastcc void @do_free_upto(%struct.bio_st* noundef nonnull %call36, %struct.bio_st* noundef %dcont) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end35, %land.lhs.true31, %if.end20, %land.lhs.true4, %if.end39, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ %call40, %if.end39 ], [ 0, %land.lhs.true4 ], [ 1, %if.end20 ], [ 0, %land.lhs.true31 ], [ 0, %if.end35 ]
  ret i32 %retval.0
}

declare i32 @CMS_dataFinal(%struct.CMS_ContentInfo_st* noundef, %struct.bio_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @CMS_uncompress(%struct.CMS_ContentInfo_st* nocapture noundef readnone %cms, %struct.bio_st* nocapture noundef readnone %dcont, %struct.bio_st* nocapture noundef readnone %out, i32 noundef %flags) local_unnamed_addr #0 {
entry:
  tail call void @ERR_new() #4
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 947, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__func__.CMS_uncompress, i64 0, i64 0)) #4
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 46, i32 noundef 151, i8* noundef null) #4
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define noalias %struct.CMS_ContentInfo_st* @CMS_compress(%struct.bio_st* nocapture noundef readnone %in, i32 noundef %comp_nid, i32 noundef %flags) local_unnamed_addr #0 {
entry:
  tail call void @ERR_new() #4
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 953, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @__func__.CMS_compress, i64 0, i64 0)) #4
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 46, i32 noundef 151, i8* noundef null) #4
  ret %struct.CMS_ContentInfo_st* null
}

declare i32 @BIO_read(%struct.bio_st* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare i32 @BIO_write(%struct.bio_st* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare %struct.bio_st* @BIO_pop(%struct.bio_st* noundef) local_unnamed_addr #2

declare %struct.x509_store_ctx_st* @X509_STORE_CTX_new_ex(%struct.ossl_lib_ctx_st* noundef, i8* noundef) local_unnamed_addr #2

declare i32 @X509_STORE_CTX_init(%struct.x509_store_ctx_st* noundef, %struct.x509_store_st* noundef, %struct.x509_st* noundef, %struct.stack_st_X509* noundef) local_unnamed_addr #2

declare i32 @X509_STORE_CTX_set_default(%struct.x509_store_ctx_st* noundef, i8* noundef) local_unnamed_addr #2

declare void @X509_STORE_CTX_set0_crls(%struct.x509_store_ctx_st* noundef, %struct.stack_st_X509_CRL* noundef) local_unnamed_addr #2

declare i32 @X509_verify_cert(%struct.x509_store_ctx_st* noundef) local_unnamed_addr #2

declare i32 @X509_STORE_CTX_get_error(%struct.x509_store_ctx_st* noundef) local_unnamed_addr #2

declare i8* @X509_verify_cert_error_string(i64 noundef) local_unnamed_addr #2

declare %struct.stack_st_X509* @X509_STORE_CTX_get1_chain(%struct.x509_store_ctx_st* noundef) local_unnamed_addr #2

declare void @X509_STORE_CTX_free(%struct.x509_store_ctx_st* noundef) local_unnamed_addr #2

declare %struct.bio_st* @BIO_new(%struct.bio_method_st* noundef) local_unnamed_addr #2

declare %struct.bio_method_st* @BIO_s_null() local_unnamed_addr #2

declare %struct.bio_method_st* @BIO_s_mem() local_unnamed_addr #2

declare %struct.stack_st_CMS_RecipientEncryptedKey* @CMS_RecipientInfo_kari_get0_reks(%struct.CMS_RecipientInfo_st* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_const_CMS_RecipientEncryptedKey_sk_type(%struct.stack_st_CMS_RecipientEncryptedKey* noundef readnone %sk) unnamed_addr #3 {
entry:
  %0 = bitcast %struct.stack_st_CMS_RecipientEncryptedKey* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

declare i32 @CMS_RecipientEncryptedKey_cert_cmp(%struct.CMS_RecipientEncryptedKey_st* noundef, %struct.x509_st* noundef) local_unnamed_addr #2

declare i32 @CMS_RecipientInfo_kari_set0_pkey_and_peer(%struct.CMS_RecipientInfo_st* noundef, %struct.evp_pkey_st* noundef, %struct.x509_st* noundef) local_unnamed_addr #2

declare i32 @CMS_RecipientInfo_kari_decrypt(%struct.CMS_ContentInfo_st* noundef, %struct.CMS_RecipientInfo_st* noundef, %struct.CMS_RecipientEncryptedKey_st* noundef) local_unnamed_addr #2

declare i32 @CMS_RecipientInfo_kari_set0_pkey(%struct.CMS_RecipientInfo_st* noundef, %struct.evp_pkey_st* noundef) local_unnamed_addr #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nobuiltin nounwind "no-builtins" }
attributes #5 = { nobuiltin "no-builtins" }
attributes #6 = { nounwind }

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
!8 = distinct !{!8, !9}
!9 = !{!"llvm.loop.mustprogress"}
!10 = distinct !{!10, !9}
!11 = distinct !{!11, !9}
!12 = distinct !{!12, !9}
!13 = distinct !{!13, !9}
!14 = distinct !{!14, !9}
!15 = distinct !{!15, !9}
!16 = !{!17, !5, i64 88}
!17 = !{!"CMS_SignerInfo_st", !18, i64 0, !5, i64 8, !5, i64 16, !5, i64 24, !5, i64 32, !5, i64 40, !5, i64 48, !5, i64 56, !5, i64 64, !5, i64 72, !5, i64 80, !5, i64 88}
!18 = !{!"int", !6, i64 0}
!19 = !{!20, !5, i64 8}
!20 = !{!"asn1_string_st", !18, i64 0, !18, i64 4, !5, i64 8, !21, i64 16}
!21 = !{!"long", !6, i64 0}
!22 = !{!20, !18, i64 0}
!23 = distinct !{!23, !9}
!24 = !{!25, !18, i64 64}
!25 = !{!"CMS_EncryptedContentInfo_st", !5, i64 0, !5, i64 8, !5, i64 16, !5, i64 24, !5, i64 32, !21, i64 40, !5, i64 48, !21, i64 56, !18, i64 64, !18, i64 68}
!26 = distinct !{!26, !9}
!27 = distinct !{!27, !9}
!28 = distinct !{!28, !9}
!29 = distinct !{!29, !9}
!30 = !{!25, !18, i64 68}
