; ModuleID = 'crypto/cms/cms_pwri.c'
source_filename = "crypto/cms/cms_pwri.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.CMS_RecipientInfo_st = type { i32, %union.anon }
%union.anon = type { %struct.CMS_KeyTransRecipientInfo_st* }
%struct.CMS_KeyTransRecipientInfo_st = type { i32, %struct.CMS_SignerIdentifier_st*, %struct.X509_algor_st*, %struct.asn1_string_st*, %struct.x509_st*, %struct.evp_pkey_st*, %struct.evp_pkey_ctx_st*, %struct.CMS_CTX_st* }
%struct.CMS_SignerIdentifier_st = type { i32, %union.anon.0 }
%union.anon.0 = type { %struct.CMS_IssuerAndSerialNumber_st* }
%struct.CMS_IssuerAndSerialNumber_st = type { %struct.X509_name_st*, %struct.asn1_string_st* }
%struct.X509_name_st = type opaque
%struct.X509_algor_st = type { %struct.asn1_object_st*, %struct.asn1_type_st* }
%struct.asn1_object_st = type { i8*, i8*, i32, i32, i8*, i32 }
%struct.asn1_type_st = type { i32, %union.anon.1 }
%union.anon.1 = type { i8* }
%struct.asn1_string_st = type { i32, i32, i8*, i64 }
%struct.x509_st = type opaque
%struct.evp_pkey_st = type opaque
%struct.evp_pkey_ctx_st = type opaque
%struct.CMS_CTX_st = type { %struct.ossl_lib_ctx_st*, i8* }
%struct.ossl_lib_ctx_st = type opaque
%struct.CMS_PasswordRecipientInfo_st = type { i32, %struct.X509_algor_st*, %struct.X509_algor_st*, %struct.asn1_string_st*, i8*, i64, %struct.CMS_CTX_st* }
%struct.CMS_ContentInfo_st = type { %struct.asn1_object_st*, %union.anon.3, %struct.CMS_CTX_st }
%union.anon.3 = type { %struct.asn1_string_st* }
%struct.evp_cipher_st = type opaque
%struct.CMS_EncryptedContentInfo_st = type { %struct.asn1_object_st*, %struct.X509_algor_st*, %struct.asn1_string_st*, %struct.evp_cipher_st*, i8*, i64, i8*, i64, i32, i32 }
%struct.stack_st_CMS_RecipientInfo = type opaque
%struct.evp_cipher_ctx_st = type opaque
%struct.engine_st = type opaque
%struct.ASN1_ITEM_st = type { i8, i64, %struct.ASN1_TEMPLATE_st*, i64, i8*, i64, i8* }
%struct.ASN1_TEMPLATE_st = type { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* }
%struct.ASN1_VALUE_st = type opaque
%struct.stack_st = type opaque

@.str = private unnamed_addr constant [22 x i8] c"crypto/cms/cms_pwri.c\00", align 1
@__func__.CMS_RecipientInfo_set0_password = private unnamed_addr constant [32 x i8] c"CMS_RecipientInfo_set0_password\00", align 1
@__func__.CMS_add0_recipient_password = private unnamed_addr constant [28 x i8] c"CMS_add0_recipient_password\00", align 1
@__func__.ossl_cms_RecipientInfo_pwri_crypt = private unnamed_addr constant [34 x i8] c"ossl_cms_RecipientInfo_pwri_crypt\00", align 1
@__func__.kek_unwrap_key = private unnamed_addr constant [15 x i8] c"kek_unwrap_key\00", align 1

; Function Attrs: noinline nounwind uwtable
define i32 @CMS_RecipientInfo_set0_password(%struct.CMS_RecipientInfo_st* nocapture noundef readonly %ri, i8* noundef %pass, i64 noundef %passlen) local_unnamed_addr #0 {
entry:
  %type = getelementptr inbounds %struct.CMS_RecipientInfo_st, %struct.CMS_RecipientInfo_st* %ri, i64 0, i32 0
  %0 = load i32, i32* %type, align 8, !tbaa !4
  %cmp.not = icmp eq i32 %0, 3
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 27, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @__func__.CMS_RecipientInfo_set0_password, i64 0, i64 0)) #6
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 46, i32 noundef 177, i8* noundef null) #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %d = getelementptr inbounds %struct.CMS_RecipientInfo_st, %struct.CMS_RecipientInfo_st* %ri, i64 0, i32 1
  %pwri1 = bitcast %union.anon* %d to %struct.CMS_PasswordRecipientInfo_st**
  %1 = load %struct.CMS_PasswordRecipientInfo_st*, %struct.CMS_PasswordRecipientInfo_st** %pwri1, align 8, !tbaa !9
  %pass2 = getelementptr inbounds %struct.CMS_PasswordRecipientInfo_st, %struct.CMS_PasswordRecipientInfo_st* %1, i64 0, i32 4
  store i8* %pass, i8** %pass2, align 8, !tbaa !10
  %tobool = icmp ne i8* %pass, null
  %cmp3 = icmp slt i64 %passlen, 0
  %or.cond = and i1 %tobool, %cmp3
  br i1 %or.cond, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  %call = tail call i64 @strlen(i8* noundef nonnull %pass) #7
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %if.end
  %passlen.addr.0 = phi i64 [ %call, %if.then4 ], [ %passlen, %if.end ]
  %passlen6 = getelementptr inbounds %struct.CMS_PasswordRecipientInfo_st, %struct.CMS_PasswordRecipientInfo_st* %1, i64 0, i32 5
  store i64 %passlen.addr.0, i64* %passlen6, align 8, !tbaa !14
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 1, %if.end5 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

declare void @ERR_new() local_unnamed_addr #2

declare void @ERR_set_debug(i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #2

declare void @ERR_set_error(i32 noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare i64 @strlen(i8* noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: noinline nounwind uwtable
define %struct.CMS_RecipientInfo_st* @CMS_add0_recipient_password(%struct.CMS_ContentInfo_st* noundef %cms, i32 noundef %iter, i32 noundef %wrap_nid, i32 noundef %pbe_nid, i8* noundef %pass, i64 noundef %passlen, %struct.evp_cipher_st* noundef %kekciph) local_unnamed_addr #0 {
entry:
  %iv = alloca [16 x i8], align 16
  %0 = getelementptr inbounds [16 x i8], [16 x i8]* %iv, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #8
  %call = tail call %struct.CMS_CTX_st* @ossl_cms_get0_cmsctx(%struct.CMS_ContentInfo_st* noundef %cms) #6
  %call1 = tail call %struct.CMS_EncryptedContentInfo_st* @ossl_cms_get0_env_enc_content(%struct.CMS_ContentInfo_st* noundef %cms) #6
  %cmp = icmp eq %struct.CMS_EncryptedContentInfo_st* %call1, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call2 = tail call %struct.stack_st_CMS_RecipientInfo* @CMS_get0_RecipientInfos(%struct.CMS_ContentInfo_st* noundef %cms) #6
  %cmp3 = icmp eq %struct.stack_st_CMS_RecipientInfo* %call2, null
  br i1 %cmp3, label %cleanup, label %if.end5

if.end5:                                          ; preds = %if.end
  %cmp6 = icmp slt i32 %wrap_nid, 1
  %cmp12 = icmp eq %struct.evp_cipher_st* %kekciph, null
  br i1 %cmp12, label %if.end14, label %if.end17

if.end14:                                         ; preds = %if.end5
  %cipher = getelementptr inbounds %struct.CMS_EncryptedContentInfo_st, %struct.CMS_EncryptedContentInfo_st* %call1, i64 0, i32 3
  %1 = load %struct.evp_cipher_st*, %struct.evp_cipher_st** %cipher, align 8, !tbaa !15
  %cmp15 = icmp eq %struct.evp_cipher_st* %1, null
  br i1 %cmp15, label %if.then16, label %if.end17

if.then16:                                        ; preds = %if.end14
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 74, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.CMS_add0_recipient_password, i64 0, i64 0)) #6
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 46, i32 noundef 126, i8* noundef null) #6
  br label %cleanup

if.end17:                                         ; preds = %if.end5, %if.end14
  %kekciph.addr.0186 = phi %struct.evp_cipher_st* [ %1, %if.end14 ], [ %kekciph, %if.end5 ]
  %cmp18.not183 = icmp eq i32 %wrap_nid, 893
  %cmp18.not = or i1 %cmp6, %cmp18.not183
  br i1 %cmp18.not, label %if.end20, label %if.then19

if.then19:                                        ; preds = %if.end17
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 78, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.CMS_add0_recipient_password, i64 0, i64 0)) #6
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 46, i32 noundef 179, i8* noundef null) #6
  br label %cleanup

if.end20:                                         ; preds = %if.end17
  %call21 = tail call %struct.X509_algor_st* @X509_ALGOR_new() #6
  %cmp22 = icmp eq %struct.X509_algor_st* %call21, null
  br i1 %cmp22, label %err, label %if.end24

if.end24:                                         ; preds = %if.end20
  %call25 = tail call %struct.evp_cipher_ctx_st* @EVP_CIPHER_CTX_new() #6
  %call26 = tail call i32 @EVP_EncryptInit_ex(%struct.evp_cipher_ctx_st* noundef %call25, %struct.evp_cipher_st* noundef nonnull %kekciph.addr.0186, %struct.engine_st* noundef null, i8* noundef null, i8* noundef null) #6
  %cmp27 = icmp slt i32 %call26, 1
  br i1 %cmp27, label %if.then28, label %if.end29

if.then28:                                        ; preds = %if.end24
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 90, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.CMS_add0_recipient_password, i64 0, i64 0)) #6
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 46, i32 noundef 524294, i8* noundef null) #6
  br label %err.thread

if.end29:                                         ; preds = %if.end24
  %call30 = tail call i32 @EVP_CIPHER_CTX_get_iv_length(%struct.evp_cipher_ctx_st* noundef %call25) #6
  %cmp31 = icmp sgt i32 %call30, 0
  br i1 %cmp31, label %if.then32, label %if.end55

if.then32:                                        ; preds = %if.end29
  %call33 = tail call %struct.ossl_lib_ctx_st* @ossl_cms_ctx_get0_libctx(%struct.CMS_CTX_st* noundef %call) #6
  %conv199 = zext i32 %call30 to i64
  %call34 = call i32 @RAND_bytes_ex(%struct.ossl_lib_ctx_st* noundef %call33, i8* noundef nonnull %0, i64 noundef %conv199, i32 noundef 0) #6
  %cmp35 = icmp slt i32 %call34, 1
  br i1 %cmp35, label %err.thread, label %if.end38

if.end38:                                         ; preds = %if.then32
  %call40 = call i32 @EVP_EncryptInit_ex(%struct.evp_cipher_ctx_st* noundef %call25, %struct.evp_cipher_st* noundef null, %struct.engine_st* noundef null, i8* noundef null, i8* noundef nonnull %0) #6
  %cmp41 = icmp slt i32 %call40, 1
  br i1 %cmp41, label %if.then43, label %if.end44

if.then43:                                        ; preds = %if.end38
  call void @ERR_new() #6
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 100, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.CMS_add0_recipient_password, i64 0, i64 0)) #6
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 46, i32 noundef 524294, i8* noundef null) #6
  br label %err.thread

if.end44:                                         ; preds = %if.end38
  %call45 = call %struct.asn1_type_st* @ASN1_TYPE_new() #6
  %parameter = getelementptr inbounds %struct.X509_algor_st, %struct.X509_algor_st* %call21, i64 0, i32 1
  store %struct.asn1_type_st* %call45, %struct.asn1_type_st** %parameter, align 8, !tbaa !17
  %tobool.not = icmp eq %struct.asn1_type_st* %call45, null
  br i1 %tobool.not, label %if.then47, label %if.end48

if.then47:                                        ; preds = %if.end44
  call void @ERR_new() #6
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 105, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.CMS_add0_recipient_password, i64 0, i64 0)) #6
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 46, i32 noundef 786688, i8* noundef null) #6
  br label %err.thread

if.end48:                                         ; preds = %if.end44
  %call50 = call i32 @EVP_CIPHER_param_to_asn1(%struct.evp_cipher_ctx_st* noundef %call25, %struct.asn1_type_st* noundef nonnull %call45) #6
  %cmp51 = icmp slt i32 %call50, 1
  br i1 %cmp51, label %if.then53, label %if.end55

if.then53:                                        ; preds = %if.end48
  call void @ERR_new() #6
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 109, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.CMS_add0_recipient_password, i64 0, i64 0)) #6
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 46, i32 noundef 102, i8* noundef null) #6
  br label %err.thread

if.end55:                                         ; preds = %if.end48, %if.end29
  %call56 = call %struct.evp_cipher_st* @EVP_CIPHER_CTX_get0_cipher(%struct.evp_cipher_ctx_st* noundef %call25) #6
  %call57 = call i32 @EVP_CIPHER_get_type(%struct.evp_cipher_st* noundef %call56) #6
  %call58 = call %struct.asn1_object_st* @OBJ_nid2obj(i32 noundef %call57) #6
  %algorithm = getelementptr inbounds %struct.X509_algor_st, %struct.X509_algor_st* %call21, i64 0, i32 0
  store %struct.asn1_object_st* %call58, %struct.asn1_object_st** %algorithm, align 8, !tbaa !19
  call void @EVP_CIPHER_CTX_free(%struct.evp_cipher_ctx_st* noundef %call25) #6
  %call59 = call %struct.ASN1_ITEM_st* @CMS_RecipientInfo_it() #6
  %call60 = call %struct.ASN1_VALUE_st* @ASN1_item_new(%struct.ASN1_ITEM_st* noundef %call59) #6
  %2 = bitcast %struct.ASN1_VALUE_st* %call60 to %struct.CMS_RecipientInfo_st*
  %cmp61 = icmp eq %struct.ASN1_VALUE_st* %call60, null
  br i1 %cmp61, label %err, label %if.end64

if.end64:                                         ; preds = %if.end55
  %call65 = call %struct.ASN1_ITEM_st* @CMS_PasswordRecipientInfo_it() #6
  %call66 = call %struct.ASN1_VALUE_st* @ASN1_item_new(%struct.ASN1_ITEM_st* noundef %call65) #6
  %d = getelementptr inbounds %struct.CMS_RecipientInfo_st, %struct.CMS_RecipientInfo_st* %2, i64 0, i32 1
  %3 = bitcast %union.anon* %d to %struct.ASN1_VALUE_st**
  store %struct.ASN1_VALUE_st* %call66, %struct.ASN1_VALUE_st** %3, align 8, !tbaa !9
  %cmp70 = icmp eq %struct.ASN1_VALUE_st* %call66, null
  %4 = bitcast %struct.ASN1_VALUE_st* %call66 to %struct.CMS_PasswordRecipientInfo_st*
  br i1 %cmp70, label %err, label %if.end73

if.end73:                                         ; preds = %if.end64
  %type = bitcast %struct.ASN1_VALUE_st* %call60 to i32*
  store i32 3, i32* %type, align 8, !tbaa !4
  %cms_ctx76 = getelementptr inbounds %struct.CMS_PasswordRecipientInfo_st, %struct.CMS_PasswordRecipientInfo_st* %4, i64 0, i32 6
  store %struct.CMS_CTX_st* %call, %struct.CMS_CTX_st** %cms_ctx76, align 8, !tbaa !20
  %keyEncryptionAlgorithm = getelementptr inbounds %struct.CMS_PasswordRecipientInfo_st, %struct.CMS_PasswordRecipientInfo_st* %4, i64 0, i32 2
  %5 = load %struct.X509_algor_st*, %struct.X509_algor_st** %keyEncryptionAlgorithm, align 8, !tbaa !21
  call void @X509_ALGOR_free(%struct.X509_algor_st* noundef %5) #6
  %call77 = call %struct.X509_algor_st* @X509_ALGOR_new() #6
  store %struct.X509_algor_st* %call77, %struct.X509_algor_st** %keyEncryptionAlgorithm, align 8, !tbaa !21
  %cmp80 = icmp eq %struct.X509_algor_st* %call77, null
  br i1 %cmp80, label %err, label %if.end83

if.end83:                                         ; preds = %if.end73
  %call84 = call %struct.asn1_object_st* @OBJ_nid2obj(i32 noundef 893) #6
  %6 = load %struct.X509_algor_st*, %struct.X509_algor_st** %keyEncryptionAlgorithm, align 8, !tbaa !21
  %algorithm86 = getelementptr inbounds %struct.X509_algor_st, %struct.X509_algor_st* %6, i64 0, i32 0
  store %struct.asn1_object_st* %call84, %struct.asn1_object_st** %algorithm86, align 8, !tbaa !19
  %call87 = call %struct.asn1_type_st* @ASN1_TYPE_new() #6
  %7 = load %struct.X509_algor_st*, %struct.X509_algor_st** %keyEncryptionAlgorithm, align 8, !tbaa !21
  %parameter89 = getelementptr inbounds %struct.X509_algor_st, %struct.X509_algor_st* %7, i64 0, i32 1
  store %struct.asn1_type_st* %call87, %struct.asn1_type_st** %parameter89, align 8, !tbaa !17
  %cmp92 = icmp eq %struct.asn1_type_st* %call87, null
  br i1 %cmp92, label %err, label %if.end95

if.end95:                                         ; preds = %if.end83
  %8 = bitcast %struct.X509_algor_st* %call21 to i8*
  %call96 = call %struct.ASN1_ITEM_st* @X509_ALGOR_it() #6
  %9 = load %struct.X509_algor_st*, %struct.X509_algor_st** %keyEncryptionAlgorithm, align 8, !tbaa !21
  %parameter98 = getelementptr inbounds %struct.X509_algor_st, %struct.X509_algor_st* %9, i64 0, i32 1
  %10 = load %struct.asn1_type_st*, %struct.asn1_type_st** %parameter98, align 8, !tbaa !17
  %value = getelementptr inbounds %struct.asn1_type_st, %struct.asn1_type_st* %10, i64 0, i32 1
  %sequence = bitcast %union.anon.1* %value to %struct.asn1_string_st**
  %call99 = call %struct.asn1_string_st* @ASN1_item_pack(i8* noundef nonnull %8, %struct.ASN1_ITEM_st* noundef %call96, %struct.asn1_string_st** noundef nonnull %sequence) #6
  %tobool100.not = icmp eq %struct.asn1_string_st* %call99, null
  br i1 %tobool100.not, label %err, label %if.end102

if.end102:                                        ; preds = %if.end95
  %11 = load %struct.X509_algor_st*, %struct.X509_algor_st** %keyEncryptionAlgorithm, align 8, !tbaa !21
  %parameter104 = getelementptr inbounds %struct.X509_algor_st, %struct.X509_algor_st* %11, i64 0, i32 1
  %12 = load %struct.asn1_type_st*, %struct.asn1_type_st** %parameter104, align 8, !tbaa !17
  %type105 = getelementptr inbounds %struct.asn1_type_st, %struct.asn1_type_st* %12, i64 0, i32 0
  store i32 16, i32* %type105, align 8, !tbaa !22
  call void @X509_ALGOR_free(%struct.X509_algor_st* noundef nonnull %call21) #6
  %call106 = call %struct.X509_algor_st* @PKCS5_pbkdf2_set(i32 noundef %iter, i8* noundef null, i32 noundef 0, i32 noundef -1, i32 noundef -1) #6
  %keyDerivationAlgorithm = getelementptr inbounds %struct.CMS_PasswordRecipientInfo_st, %struct.CMS_PasswordRecipientInfo_st* %4, i64 0, i32 1
  store %struct.X509_algor_st* %call106, %struct.X509_algor_st** %keyDerivationAlgorithm, align 8, !tbaa !24
  %cmp108 = icmp eq %struct.X509_algor_st* %call106, null
  br i1 %cmp108, label %err.thread192, label %if.end111

err.thread192:                                    ; preds = %if.end102
  call void @EVP_CIPHER_CTX_free(%struct.evp_cipher_ctx_st* noundef null) #6
  br label %if.then120

if.end111:                                        ; preds = %if.end102
  %call112 = call i32 @CMS_RecipientInfo_set0_password(%struct.CMS_RecipientInfo_st* noundef nonnull %2, i8* noundef %pass, i64 noundef %passlen) #9
  %version = bitcast %struct.ASN1_VALUE_st* %call66 to i32*
  store i32 0, i32* %version, align 8, !tbaa !25
  %call113 = call fastcc %struct.stack_st* @ossl_check_CMS_RecipientInfo_sk_type(%struct.stack_st_CMS_RecipientInfo* noundef nonnull %call2) #9
  %13 = bitcast %struct.ASN1_VALUE_st* %call60 to i8*
  %call115 = call i32 @OPENSSL_sk_push(%struct.stack_st* noundef %call113, i8* noundef nonnull %13) #6
  %tobool116.not = icmp eq i32 %call115, 0
  br i1 %tobool116.not, label %err, label %cleanup

err.thread:                                       ; preds = %if.then28, %if.then32, %if.then43, %if.then53, %if.then47
  call void @EVP_CIPHER_CTX_free(%struct.evp_cipher_ctx_st* noundef %call25) #6
  br label %if.end122

err:                                              ; preds = %if.end20, %if.end55, %if.end64, %if.end73, %if.end83, %if.end95, %if.end111
  %ri.0 = phi %struct.CMS_RecipientInfo_st* [ null, %if.end20 ], [ null, %if.end55 ], [ %2, %if.end64 ], [ %2, %if.end73 ], [ %2, %if.end83 ], [ %2, %if.end111 ], [ %2, %if.end95 ]
  %encalg.0 = phi %struct.X509_algor_st* [ null, %if.end20 ], [ %call21, %if.end55 ], [ %call21, %if.end64 ], [ %call21, %if.end73 ], [ %call21, %if.end83 ], [ null, %if.end111 ], [ %call21, %if.end95 ]
  call void @ERR_new() #6
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 166, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.CMS_add0_recipient_password, i64 0, i64 0)) #6
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 46, i32 noundef 786688, i8* noundef null) #6
  call void @EVP_CIPHER_CTX_free(%struct.evp_cipher_ctx_st* noundef null) #6
  %tobool119.not = icmp eq %struct.CMS_RecipientInfo_st* %ri.0, null
  br i1 %tobool119.not, label %if.end122, label %if.then120

if.then120:                                       ; preds = %err.thread192, %err
  %encalg.1198 = phi %struct.X509_algor_st* [ null, %err.thread192 ], [ %encalg.0, %err ]
  %ri.1197 = phi %struct.CMS_RecipientInfo_st* [ %2, %err.thread192 ], [ %ri.0, %err ]
  %14 = bitcast %struct.CMS_RecipientInfo_st* %ri.1197 to %struct.ASN1_VALUE_st*
  %call121 = call %struct.ASN1_ITEM_st* @CMS_RecipientInfo_it() #6
  call void @ASN1_item_free(%struct.ASN1_VALUE_st* noundef nonnull %14, %struct.ASN1_ITEM_st* noundef %call121) #6
  br label %if.end122

if.end122:                                        ; preds = %err.thread, %if.then120, %err
  %encalg.1191 = phi %struct.X509_algor_st* [ %call21, %err.thread ], [ %encalg.1198, %if.then120 ], [ %encalg.0, %err ]
  call void @X509_ALGOR_free(%struct.X509_algor_st* noundef %encalg.1191) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end111, %if.end, %entry, %if.end122, %if.then19, %if.then16
  %retval.0 = phi %struct.CMS_RecipientInfo_st* [ null, %if.then16 ], [ null, %if.then19 ], [ null, %if.end122 ], [ null, %entry ], [ null, %if.end ], [ %2, %if.end111 ]
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #8
  ret %struct.CMS_RecipientInfo_st* %retval.0
}

declare %struct.CMS_CTX_st* @ossl_cms_get0_cmsctx(%struct.CMS_ContentInfo_st* noundef) local_unnamed_addr #2

declare %struct.CMS_EncryptedContentInfo_st* @ossl_cms_get0_env_enc_content(%struct.CMS_ContentInfo_st* noundef) local_unnamed_addr #2

declare %struct.stack_st_CMS_RecipientInfo* @CMS_get0_RecipientInfos(%struct.CMS_ContentInfo_st* noundef) local_unnamed_addr #2

declare %struct.X509_algor_st* @X509_ALGOR_new() local_unnamed_addr #2

declare %struct.evp_cipher_ctx_st* @EVP_CIPHER_CTX_new() local_unnamed_addr #2

declare i32 @EVP_EncryptInit_ex(%struct.evp_cipher_ctx_st* noundef, %struct.evp_cipher_st* noundef, %struct.engine_st* noundef, i8* noundef, i8* noundef) local_unnamed_addr #2

declare i32 @EVP_CIPHER_CTX_get_iv_length(%struct.evp_cipher_ctx_st* noundef) local_unnamed_addr #2

declare i32 @RAND_bytes_ex(%struct.ossl_lib_ctx_st* noundef, i8* noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

declare %struct.ossl_lib_ctx_st* @ossl_cms_ctx_get0_libctx(%struct.CMS_CTX_st* noundef) local_unnamed_addr #2

declare %struct.asn1_type_st* @ASN1_TYPE_new() local_unnamed_addr #2

declare i32 @EVP_CIPHER_param_to_asn1(%struct.evp_cipher_ctx_st* noundef, %struct.asn1_type_st* noundef) local_unnamed_addr #2

declare %struct.asn1_object_st* @OBJ_nid2obj(i32 noundef) local_unnamed_addr #2

declare i32 @EVP_CIPHER_get_type(%struct.evp_cipher_st* noundef) local_unnamed_addr #2

declare %struct.evp_cipher_st* @EVP_CIPHER_CTX_get0_cipher(%struct.evp_cipher_ctx_st* noundef) local_unnamed_addr #2

declare void @EVP_CIPHER_CTX_free(%struct.evp_cipher_ctx_st* noundef) local_unnamed_addr #2

declare %struct.ASN1_VALUE_st* @ASN1_item_new(%struct.ASN1_ITEM_st* noundef) local_unnamed_addr #2

declare %struct.ASN1_ITEM_st* @CMS_RecipientInfo_it() local_unnamed_addr #2

declare %struct.ASN1_ITEM_st* @CMS_PasswordRecipientInfo_it() local_unnamed_addr #2

declare void @X509_ALGOR_free(%struct.X509_algor_st* noundef) local_unnamed_addr #2

declare %struct.asn1_string_st* @ASN1_item_pack(i8* noundef, %struct.ASN1_ITEM_st* noundef, %struct.asn1_string_st** noundef) local_unnamed_addr #2

declare %struct.ASN1_ITEM_st* @X509_ALGOR_it() local_unnamed_addr #2

declare %struct.X509_algor_st* @PKCS5_pbkdf2_set(i32 noundef, i8* noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare i32 @OPENSSL_sk_push(%struct.stack_st* noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_CMS_RecipientInfo_sk_type(%struct.stack_st_CMS_RecipientInfo* noundef readnone %sk) unnamed_addr #4 {
entry:
  %0 = bitcast %struct.stack_st_CMS_RecipientInfo* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

declare void @ASN1_item_free(%struct.ASN1_VALUE_st* noundef, %struct.ASN1_ITEM_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_cms_RecipientInfo_pwri_crypt(%struct.CMS_ContentInfo_st* noundef %cms, %struct.CMS_RecipientInfo_st* nocapture noundef readonly %ri, i32 noundef %en_de) local_unnamed_addr #0 {
entry:
  %name = alloca [50 x i8], align 16
  %keylen = alloca i64, align 8
  %0 = getelementptr inbounds [50 x i8], [50 x i8]* %name, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 50, i8* nonnull %0) #8
  %1 = bitcast i64* %keylen to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #8
  %call = tail call %struct.CMS_CTX_st* @ossl_cms_get0_cmsctx(%struct.CMS_ContentInfo_st* noundef %cms) #6
  %call1 = tail call %struct.CMS_EncryptedContentInfo_st* @ossl_cms_get0_env_enc_content(%struct.CMS_ContentInfo_st* noundef %cms) #6
  %d = getelementptr inbounds %struct.CMS_RecipientInfo_st, %struct.CMS_RecipientInfo_st* %ri, i64 0, i32 1
  %pwri2 = bitcast %union.anon* %d to %struct.CMS_PasswordRecipientInfo_st**
  %2 = load %struct.CMS_PasswordRecipientInfo_st*, %struct.CMS_PasswordRecipientInfo_st** %pwri2, align 8, !tbaa !9
  %pass = getelementptr inbounds %struct.CMS_PasswordRecipientInfo_st, %struct.CMS_PasswordRecipientInfo_st* %2, i64 0, i32 4
  %3 = load i8*, i8** %pass, align 8, !tbaa !10
  %cmp = icmp eq i8* %3, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 301, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @__func__.ossl_cms_RecipientInfo_pwri_crypt, i64 0, i64 0)) #6
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 46, i32 noundef 178, i8* noundef null) #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %keyEncryptionAlgorithm = getelementptr inbounds %struct.CMS_PasswordRecipientInfo_st, %struct.CMS_PasswordRecipientInfo_st* %2, i64 0, i32 2
  %4 = load %struct.X509_algor_st*, %struct.X509_algor_st** %keyEncryptionAlgorithm, align 8, !tbaa !21
  %tobool.not = icmp eq %struct.X509_algor_st* %4, null
  br i1 %tobool.not, label %if.then5, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %algorithm = getelementptr inbounds %struct.X509_algor_st, %struct.X509_algor_st* %4, i64 0, i32 0
  %5 = load %struct.asn1_object_st*, %struct.asn1_object_st** %algorithm, align 8, !tbaa !19
  %call3 = tail call i32 @OBJ_obj2nid(%struct.asn1_object_st* noundef %5) #6
  %cmp4.not = icmp eq i32 %call3, 893
  br i1 %cmp4.not, label %if.end6, label %if.then5

if.then5:                                         ; preds = %lor.lhs.false, %if.end
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 307, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @__func__.ossl_cms_RecipientInfo_pwri_crypt, i64 0, i64 0)) #6
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 46, i32 noundef 179, i8* noundef null) #6
  br label %cleanup

if.end6:                                          ; preds = %lor.lhs.false
  %call7 = tail call %struct.ASN1_ITEM_st* @X509_ALGOR_it() #6
  %parameter = getelementptr inbounds %struct.X509_algor_st, %struct.X509_algor_st* %4, i64 0, i32 1
  %6 = load %struct.asn1_type_st*, %struct.asn1_type_st** %parameter, align 8, !tbaa !17
  %call8 = tail call i8* @ASN1_TYPE_unpack_sequence(%struct.ASN1_ITEM_st* noundef %call7, %struct.asn1_type_st* noundef %6) #6
  %7 = bitcast i8* %call8 to %struct.X509_algor_st*
  %cmp9 = icmp eq i8* %call8, null
  br i1 %cmp9, label %if.then10, label %if.end11

if.then10:                                        ; preds = %if.end6
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 315, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @__func__.ossl_cms_RecipientInfo_pwri_crypt, i64 0, i64 0)) #6
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 46, i32 noundef 176, i8* noundef null) #6
  br label %cleanup

if.end11:                                         ; preds = %if.end6
  %algorithm12 = bitcast i8* %call8 to %struct.asn1_object_st**
  %8 = load %struct.asn1_object_st*, %struct.asn1_object_st** %algorithm12, align 8, !tbaa !19
  %call13 = call i32 @OBJ_obj2txt(i8* noundef nonnull %0, i32 noundef 50, %struct.asn1_object_st* noundef %8, i32 noundef 0) #6
  %call14 = call %struct.ossl_lib_ctx_st* @ossl_cms_ctx_get0_libctx(%struct.CMS_CTX_st* noundef %call) #6
  %call16 = call i8* @ossl_cms_ctx_get0_propq(%struct.CMS_CTX_st* noundef %call) #6
  %call17 = call %struct.evp_cipher_st* @EVP_CIPHER_fetch(%struct.ossl_lib_ctx_st* noundef %call14, i8* noundef nonnull %0, i8* noundef %call16) #6
  %cmp18 = icmp eq %struct.evp_cipher_st* %call17, null
  br i1 %cmp18, label %if.then19, label %if.end20

if.then19:                                        ; preds = %if.end11
  call void @ERR_new() #6
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 324, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @__func__.ossl_cms_RecipientInfo_pwri_crypt, i64 0, i64 0)) #6
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 46, i32 noundef 148, i8* noundef null) #6
  br label %err

if.end20:                                         ; preds = %if.end11
  %call21 = call %struct.evp_cipher_ctx_st* @EVP_CIPHER_CTX_new() #6
  %cmp22 = icmp eq %struct.evp_cipher_ctx_st* %call21, null
  br i1 %cmp22, label %if.then23, label %if.end24

if.then23:                                        ; preds = %if.end20
  call void @ERR_new() #6
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 330, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @__func__.ossl_cms_RecipientInfo_pwri_crypt, i64 0, i64 0)) #6
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 46, i32 noundef 786688, i8* noundef null) #6
  br label %err

if.end24:                                         ; preds = %if.end20
  %call25 = call i32 @EVP_CipherInit_ex(%struct.evp_cipher_ctx_st* noundef nonnull %call21, %struct.evp_cipher_st* noundef nonnull %call17, %struct.engine_st* noundef null, i8* noundef null, i8* noundef null, i32 noundef %en_de) #6
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %err, label %if.end28

if.end28:                                         ; preds = %if.end24
  %call29 = call i32 @EVP_CIPHER_CTX_set_padding(%struct.evp_cipher_ctx_st* noundef nonnull %call21, i32 noundef 0) #6
  %parameter30 = getelementptr inbounds i8, i8* %call8, i64 8
  %9 = bitcast i8* %parameter30 to %struct.asn1_type_st**
  %10 = load %struct.asn1_type_st*, %struct.asn1_type_st** %9, align 8, !tbaa !17
  %call31 = call i32 @EVP_CIPHER_asn1_to_param(%struct.evp_cipher_ctx_st* noundef nonnull %call21, %struct.asn1_type_st* noundef %10) #6
  %cmp32 = icmp slt i32 %call31, 1
  br i1 %cmp32, label %if.then33, label %if.end34

if.then33:                                        ; preds = %if.end28
  call void @ERR_new() #6
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 338, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @__func__.ossl_cms_RecipientInfo_pwri_crypt, i64 0, i64 0)) #6
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 46, i32 noundef 102, i8* noundef null) #6
  br label %err

if.end34:                                         ; preds = %if.end28
  %keyDerivationAlgorithm = getelementptr inbounds %struct.CMS_PasswordRecipientInfo_st, %struct.CMS_PasswordRecipientInfo_st* %2, i64 0, i32 1
  %11 = load %struct.X509_algor_st*, %struct.X509_algor_st** %keyDerivationAlgorithm, align 8, !tbaa !24
  %algorithm35 = getelementptr inbounds %struct.X509_algor_st, %struct.X509_algor_st* %11, i64 0, i32 0
  %12 = load %struct.asn1_object_st*, %struct.asn1_object_st** %algorithm35, align 8, !tbaa !19
  %13 = load i8*, i8** %pass, align 8, !tbaa !10
  %passlen = getelementptr inbounds %struct.CMS_PasswordRecipientInfo_st, %struct.CMS_PasswordRecipientInfo_st* %2, i64 0, i32 5
  %14 = load i64, i64* %passlen, align 8, !tbaa !14
  %conv = trunc i64 %14 to i32
  %parameter37 = getelementptr inbounds %struct.X509_algor_st, %struct.X509_algor_st* %11, i64 0, i32 1
  %15 = load %struct.asn1_type_st*, %struct.asn1_type_st** %parameter37, align 8, !tbaa !17
  %call38 = call i32 @EVP_PBE_CipherInit(%struct.asn1_object_st* noundef %12, i8* noundef %13, i32 noundef %conv, %struct.asn1_type_st* noundef %15, %struct.evp_cipher_ctx_st* noundef nonnull %call21, i32 noundef %en_de) #6
  %cmp39 = icmp slt i32 %call38, 0
  br i1 %cmp39, label %if.then41, label %if.end42

if.then41:                                        ; preds = %if.end34
  call void @ERR_new() #6
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 349, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @__func__.ossl_cms_RecipientInfo_pwri_crypt, i64 0, i64 0)) #6
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 46, i32 noundef 524294, i8* noundef null) #6
  br label %err

if.end42:                                         ; preds = %if.end34
  %tobool43.not = icmp eq i32 %en_de, 0
  br i1 %tobool43.not, label %if.else, label %if.then44

if.then44:                                        ; preds = %if.end42
  %key45 = getelementptr inbounds %struct.CMS_EncryptedContentInfo_st, %struct.CMS_EncryptedContentInfo_st* %call1, i64 0, i32 4
  %16 = load i8*, i8** %key45, align 8, !tbaa !26
  %keylen46 = getelementptr inbounds %struct.CMS_EncryptedContentInfo_st, %struct.CMS_EncryptedContentInfo_st* %call1, i64 0, i32 5
  %17 = load i64, i64* %keylen46, align 8, !tbaa !27
  %call47 = call fastcc i32 @kek_wrap_key(i8* noundef null, i64* noundef nonnull %keylen, i8* noundef %16, i64 noundef %17, %struct.evp_cipher_ctx_st* noundef nonnull %call21, %struct.CMS_CTX_st* noundef %call) #9
  %tobool48.not = icmp eq i32 %call47, 0
  br i1 %tobool48.not, label %err, label %if.end50

if.end50:                                         ; preds = %if.then44
  %18 = load i64, i64* %keylen, align 8, !tbaa !28
  %call51 = call i8* @CRYPTO_malloc(i64 noundef %18, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 360) #6
  %cmp52 = icmp eq i8* %call51, null
  br i1 %cmp52, label %err, label %if.end55

if.end55:                                         ; preds = %if.end50
  %19 = load i8*, i8** %key45, align 8, !tbaa !26
  %20 = load i64, i64* %keylen46, align 8, !tbaa !27
  %call58 = call fastcc i32 @kek_wrap_key(i8* noundef nonnull %call51, i64* noundef nonnull %keylen, i8* noundef %19, i64 noundef %20, %struct.evp_cipher_ctx_st* noundef nonnull %call21, %struct.CMS_CTX_st* noundef %call) #9
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %err, label %if.end61

if.end61:                                         ; preds = %if.end55
  %encryptedKey = getelementptr inbounds %struct.CMS_PasswordRecipientInfo_st, %struct.CMS_PasswordRecipientInfo_st* %2, i64 0, i32 3
  %21 = load %struct.asn1_string_st*, %struct.asn1_string_st** %encryptedKey, align 8, !tbaa !29
  %data = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %21, i64 0, i32 2
  store i8* %call51, i8** %data, align 8, !tbaa !30
  %22 = load i64, i64* %keylen, align 8, !tbaa !28
  %conv62 = trunc i64 %22 to i32
  %length = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %21, i64 0, i32 0
  store i32 %conv62, i32* %length, align 8, !tbaa !32
  br label %err

if.else:                                          ; preds = %if.end42
  %encryptedKey64 = getelementptr inbounds %struct.CMS_PasswordRecipientInfo_st, %struct.CMS_PasswordRecipientInfo_st* %2, i64 0, i32 3
  %23 = load %struct.asn1_string_st*, %struct.asn1_string_st** %encryptedKey64, align 8, !tbaa !29
  %length65 = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %23, i64 0, i32 0
  %24 = load i32, i32* %length65, align 8, !tbaa !32
  %conv66 = sext i32 %24 to i64
  %call67 = call i8* @CRYPTO_malloc(i64 noundef %conv66, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 370) #6
  %cmp68 = icmp eq i8* %call67, null
  br i1 %cmp68, label %if.then70, label %if.end71

if.then70:                                        ; preds = %if.else
  call void @ERR_new() #6
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 373, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @__func__.ossl_cms_RecipientInfo_pwri_crypt, i64 0, i64 0)) #6
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 46, i32 noundef 786688, i8* noundef null) #6
  br label %err

if.end71:                                         ; preds = %if.else
  %25 = load %struct.asn1_string_st*, %struct.asn1_string_st** %encryptedKey64, align 8, !tbaa !29
  %data73 = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %25, i64 0, i32 2
  %26 = load i8*, i8** %data73, align 8, !tbaa !30
  %length75 = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %25, i64 0, i32 0
  %27 = load i32, i32* %length75, align 8, !tbaa !32
  %conv76 = sext i32 %27 to i64
  %call77 = call fastcc i32 @kek_unwrap_key(i8* noundef nonnull %call67, i64* noundef nonnull %keylen, i8* noundef %26, i64 noundef %conv76, %struct.evp_cipher_ctx_st* noundef nonnull %call21) #9
  %tobool78.not = icmp eq i32 %call77, 0
  br i1 %tobool78.not, label %if.then79, label %if.end80

if.then79:                                        ; preds = %if.end71
  call void @ERR_new() #6
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 379, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @__func__.ossl_cms_RecipientInfo_pwri_crypt, i64 0, i64 0)) #6
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 46, i32 noundef 180, i8* noundef null) #6
  br label %err

if.end80:                                         ; preds = %if.end71
  %key81 = getelementptr inbounds %struct.CMS_EncryptedContentInfo_st, %struct.CMS_EncryptedContentInfo_st* %call1, i64 0, i32 4
  %28 = load i8*, i8** %key81, align 8, !tbaa !26
  %keylen82 = getelementptr inbounds %struct.CMS_EncryptedContentInfo_st, %struct.CMS_EncryptedContentInfo_st* %call1, i64 0, i32 5
  %29 = load i64, i64* %keylen82, align 8, !tbaa !27
  call void @CRYPTO_clear_free(i8* noundef %28, i64 noundef %29, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 383) #6
  store i8* %call67, i8** %key81, align 8, !tbaa !26
  %30 = load i64, i64* %keylen, align 8, !tbaa !28
  store i64 %30, i64* %keylen82, align 8, !tbaa !27
  br label %err

err:                                              ; preds = %if.end61, %if.end80, %if.end55, %if.end50, %if.then44, %if.end24, %if.then79, %if.then70, %if.then41, %if.then33, %if.then23, %if.then19
  %kekctx.0 = phi %struct.evp_cipher_ctx_st* [ null, %if.then19 ], [ null, %if.then23 ], [ %call21, %if.then33 ], [ %call21, %if.then41 ], [ %call21, %if.end50 ], [ %call21, %if.end55 ], [ %call21, %if.then44 ], [ %call21, %if.then70 ], [ %call21, %if.then79 ], [ %call21, %if.end24 ], [ %call21, %if.end80 ], [ %call21, %if.end61 ]
  %tobool86.not = phi i1 [ true, %if.then19 ], [ true, %if.then23 ], [ true, %if.then33 ], [ true, %if.then41 ], [ true, %if.end50 ], [ true, %if.end55 ], [ true, %if.then44 ], [ true, %if.then70 ], [ true, %if.then79 ], [ true, %if.end24 ], [ false, %if.end80 ], [ false, %if.end61 ]
  %r.0 = phi i32 [ 0, %if.then19 ], [ 0, %if.then23 ], [ 0, %if.then33 ], [ 0, %if.then41 ], [ 0, %if.end50 ], [ 0, %if.end55 ], [ 0, %if.then44 ], [ 0, %if.then70 ], [ 0, %if.then79 ], [ 0, %if.end24 ], [ 1, %if.end80 ], [ 1, %if.end61 ]
  %key.1 = phi i8* [ null, %if.then19 ], [ null, %if.then23 ], [ null, %if.then33 ], [ null, %if.then41 ], [ null, %if.end50 ], [ %call51, %if.end55 ], [ null, %if.then44 ], [ null, %if.then70 ], [ %call67, %if.then79 ], [ null, %if.end24 ], [ %call67, %if.end80 ], [ %call51, %if.end61 ]
  call void @EVP_CIPHER_free(%struct.evp_cipher_st* noundef %call17) #6
  call void @EVP_CIPHER_CTX_free(%struct.evp_cipher_ctx_st* noundef %kekctx.0) #6
  br i1 %tobool86.not, label %if.then87, label %if.end88

if.then87:                                        ; preds = %err
  call void @CRYPTO_free(i8* noundef %key.1, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 396) #6
  br label %if.end88

if.end88:                                         ; preds = %if.then87, %err
  call void @X509_ALGOR_free(%struct.X509_algor_st* noundef nonnull %7) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end88, %if.then10, %if.then5, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 0, %if.then5 ], [ 0, %if.then10 ], [ %r.0, %if.end88 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #8
  call void @llvm.lifetime.end.p0i8(i64 50, i8* nonnull %0) #8
  ret i32 %retval.0
}

declare i32 @OBJ_obj2nid(%struct.asn1_object_st* noundef) local_unnamed_addr #2

declare i8* @ASN1_TYPE_unpack_sequence(%struct.ASN1_ITEM_st* noundef, %struct.asn1_type_st* noundef) local_unnamed_addr #2

declare i32 @OBJ_obj2txt(i8* noundef, i32 noundef, %struct.asn1_object_st* noundef, i32 noundef) local_unnamed_addr #2

declare %struct.evp_cipher_st* @EVP_CIPHER_fetch(%struct.ossl_lib_ctx_st* noundef, i8* noundef, i8* noundef) local_unnamed_addr #2

declare i8* @ossl_cms_ctx_get0_propq(%struct.CMS_CTX_st* noundef) local_unnamed_addr #2

declare i32 @EVP_CipherInit_ex(%struct.evp_cipher_ctx_st* noundef, %struct.evp_cipher_st* noundef, %struct.engine_st* noundef, i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare i32 @EVP_CIPHER_CTX_set_padding(%struct.evp_cipher_ctx_st* noundef, i32 noundef) local_unnamed_addr #2

declare i32 @EVP_CIPHER_asn1_to_param(%struct.evp_cipher_ctx_st* noundef, %struct.asn1_type_st* noundef) local_unnamed_addr #2

declare i32 @EVP_PBE_CipherInit(%struct.asn1_object_st* noundef, i8* noundef, i32 noundef, %struct.asn1_type_st* noundef, %struct.evp_cipher_ctx_st* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @kek_wrap_key(i8* noundef %out, i64* nocapture noundef writeonly %outlen, i8* noundef %in, i64 noundef %inlen, %struct.evp_cipher_ctx_st* noundef %ctx, %struct.CMS_CTX_st* noundef %cms_ctx) unnamed_addr #0 {
entry:
  %dummy = alloca i32, align 4
  %call = tail call i32 @EVP_CIPHER_CTX_get_block_size(%struct.evp_cipher_ctx_st* noundef %ctx) #6
  %conv = sext i32 %call to i64
  %0 = bitcast i32* %dummy to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #8
  %add = add i64 %inlen, 4
  %add1 = add i64 %inlen, 3
  %sub = add i64 %add1, %conv
  %1 = urem i64 %sub, %conv
  %mul = sub i64 %sub, %1
  %mul2 = shl nsw i64 %conv, 1
  %cmp = icmp ult i64 %mul, %mul2
  %cmp4 = icmp ugt i64 %inlen, 255
  %or.cond = or i1 %cmp4, %cmp
  br i1 %or.cond, label %cleanup, label %if.end7

if.end7:                                          ; preds = %entry
  %tobool.not = icmp eq i8* %out, null
  br i1 %tobool.not, label %if.end46, label %if.then8

if.then8:                                         ; preds = %if.end7
  %conv9 = trunc i64 %inlen to i8
  store i8 %conv9, i8* %out, align 1, !tbaa !9
  %2 = load i8, i8* %in, align 1, !tbaa !9
  %3 = xor i8 %2, -1
  %arrayidx13 = getelementptr inbounds i8, i8* %out, i64 1
  store i8 %3, i8* %arrayidx13, align 1, !tbaa !9
  %arrayidx14 = getelementptr inbounds i8, i8* %in, i64 1
  %4 = load i8, i8* %arrayidx14, align 1, !tbaa !9
  %5 = xor i8 %4, -1
  %arrayidx18 = getelementptr inbounds i8, i8* %out, i64 2
  store i8 %5, i8* %arrayidx18, align 1, !tbaa !9
  %arrayidx19 = getelementptr inbounds i8, i8* %in, i64 2
  %6 = load i8, i8* %arrayidx19, align 1, !tbaa !9
  %7 = xor i8 %6, -1
  %arrayidx23 = getelementptr inbounds i8, i8* %out, i64 3
  store i8 %7, i8* %arrayidx23, align 1, !tbaa !9
  %add.ptr = getelementptr inbounds i8, i8* %out, i64 4
  %call24 = tail call i8* @memcpy(i8* noundef nonnull %add.ptr, i8* noundef nonnull %in, i64 noundef %inlen) #6
  %cmp26 = icmp ugt i64 %mul, %add
  br i1 %cmp26, label %land.lhs.true, label %if.end37

land.lhs.true:                                    ; preds = %if.then8
  %call28 = tail call %struct.ossl_lib_ctx_st* @ossl_cms_ctx_get0_libctx(%struct.CMS_CTX_st* noundef %cms_ctx) #6
  %add.ptr30 = getelementptr inbounds i8, i8* %add.ptr, i64 %inlen
  %sub31 = sub nuw nsw i64 -4, %inlen
  %sub32 = add i64 %sub31, %mul
  %call33 = tail call i32 @RAND_bytes_ex(%struct.ossl_lib_ctx_st* noundef %call28, i8* noundef nonnull %add.ptr30, i64 noundef %sub32, i32 noundef 0) #6
  %cmp34 = icmp slt i32 %call33, 1
  br i1 %cmp34, label %cleanup, label %if.end37

if.end37:                                         ; preds = %land.lhs.true, %if.then8
  %conv38 = trunc i64 %mul to i32
  %call39 = call i32 @EVP_EncryptUpdate(%struct.evp_cipher_ctx_st* noundef %ctx, i8* noundef nonnull %out, i32* noundef nonnull %dummy, i8* noundef nonnull %out, i32 noundef %conv38) #6
  %tobool40.not = icmp eq i32 %call39, 0
  br i1 %tobool40.not, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end37
  %call42 = call i32 @EVP_EncryptUpdate(%struct.evp_cipher_ctx_st* noundef %ctx, i8* noundef nonnull %out, i32* noundef nonnull %dummy, i8* noundef nonnull %out, i32 noundef %conv38) #6
  %tobool43.not = icmp eq i32 %call42, 0
  br i1 %tobool43.not, label %cleanup, label %if.end46

if.end46:                                         ; preds = %lor.lhs.false, %if.end7
  store i64 %mul, i64* %outlen, align 8, !tbaa !28
  br label %cleanup

cleanup:                                          ; preds = %if.end37, %lor.lhs.false, %land.lhs.true, %entry, %if.end46
  %retval.0 = phi i32 [ 1, %if.end46 ], [ 0, %entry ], [ 0, %land.lhs.true ], [ 0, %lor.lhs.false ], [ 0, %if.end37 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #8
  ret i32 %retval.0
}

declare i8* @CRYPTO_malloc(i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @kek_unwrap_key(i8* noundef %out, i64* nocapture noundef writeonly %outlen, i8* noundef %in, i64 noundef %inlen, %struct.evp_cipher_ctx_st* noundef %ctx) unnamed_addr #0 {
entry:
  %outl = alloca i32, align 4
  %call = tail call i32 @EVP_CIPHER_CTX_get_block_size(%struct.evp_cipher_ctx_st* noundef %ctx) #6
  %conv = sext i32 %call to i64
  %0 = bitcast i32* %outl to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #8
  %mul = shl nsw i64 %conv, 1
  %cmp = icmp ugt i64 %mul, %inlen
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %rem = urem i64 %inlen, %conv
  %tobool.not = icmp eq i64 %rem, 0
  br i1 %tobool.not, label %if.end3, label %cleanup

if.end3:                                          ; preds = %if.end
  %call4 = tail call i8* @CRYPTO_malloc(i64 noundef %inlen, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 196) #6
  %cmp5 = icmp eq i8* %call4, null
  br i1 %cmp5, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.end3
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 197, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__func__.kek_unwrap_key, i64 0, i64 0)) #6
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 46, i32 noundef 786688, i8* noundef null) #6
  br label %cleanup

if.end8:                                          ; preds = %if.end3
  %add.ptr = getelementptr inbounds i8, i8* %call4, i64 %inlen
  %idx.neg = sub nsw i64 0, %mul
  %add.ptr10 = getelementptr inbounds i8, i8* %add.ptr, i64 %idx.neg
  %add.ptr11 = getelementptr inbounds i8, i8* %in, i64 %inlen
  %add.ptr14 = getelementptr inbounds i8, i8* %add.ptr11, i64 %idx.neg
  %conv16 = trunc i64 %mul to i32
  %call17 = call i32 @EVP_DecryptUpdate(%struct.evp_cipher_ctx_st* noundef %ctx, i8* noundef nonnull %add.ptr10, i32* noundef nonnull %outl, i8* noundef %add.ptr14, i32 noundef %conv16) #6
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %err, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end8
  %idx.neg20 = sub nsw i64 0, %conv
  %add.ptr21 = getelementptr inbounds i8, i8* %add.ptr, i64 %idx.neg20
  %call23 = call i32 @EVP_DecryptUpdate(%struct.evp_cipher_ctx_st* noundef %ctx, i8* noundef nonnull %call4, i32* noundef nonnull %outl, i8* noundef nonnull %add.ptr21, i32 noundef %call) #6
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %err, label %lor.lhs.false25

lor.lhs.false25:                                  ; preds = %lor.lhs.false
  %1 = trunc i64 %inlen to i32
  %conv26 = sub i32 %1, %call
  %call27 = call i32 @EVP_DecryptUpdate(%struct.evp_cipher_ctx_st* noundef %ctx, i8* noundef nonnull %call4, i32* noundef nonnull %outl, i8* noundef %in, i32 noundef %conv26) #6
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %err, label %lor.lhs.false29

lor.lhs.false29:                                  ; preds = %lor.lhs.false25
  %call30 = call i32 @EVP_DecryptInit_ex(%struct.evp_cipher_ctx_st* noundef %ctx, %struct.evp_cipher_st* noundef null, %struct.engine_st* noundef null, i8* noundef null, i8* noundef null) #6
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %err, label %lor.lhs.false32

lor.lhs.false32:                                  ; preds = %lor.lhs.false29
  %call34 = call i32 @EVP_DecryptUpdate(%struct.evp_cipher_ctx_st* noundef %ctx, i8* noundef nonnull %call4, i32* noundef nonnull %outl, i8* noundef nonnull %call4, i32 noundef %1) #6
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %err, label %if.end37

if.end37:                                         ; preds = %lor.lhs.false32
  %arrayidx = getelementptr inbounds i8, i8* %call4, i64 1
  %2 = load i8, i8* %arrayidx, align 1, !tbaa !9
  %arrayidx39 = getelementptr inbounds i8, i8* %call4, i64 4
  %3 = load i8, i8* %arrayidx39, align 1, !tbaa !9
  %xor112 = xor i8 %3, %2
  %arrayidx41 = getelementptr inbounds i8, i8* %call4, i64 2
  %4 = load i8, i8* %arrayidx41, align 1, !tbaa !9
  %arrayidx43 = getelementptr inbounds i8, i8* %call4, i64 5
  %5 = load i8, i8* %arrayidx43, align 1, !tbaa !9
  %xor45113 = xor i8 %5, %4
  %and114 = and i8 %xor45113, %xor112
  %arrayidx46 = getelementptr inbounds i8, i8* %call4, i64 3
  %6 = load i8, i8* %arrayidx46, align 1, !tbaa !9
  %arrayidx48 = getelementptr inbounds i8, i8* %call4, i64 6
  %7 = load i8, i8* %arrayidx48, align 1, !tbaa !9
  %xor50115 = xor i8 %7, %6
  %and51116 = and i8 %and114, %xor50115
  %cmp52.not = icmp eq i8 %and51116, -1
  br i1 %cmp52.not, label %if.end55, label %err

if.end55:                                         ; preds = %if.end37
  %8 = load i8, i8* %call4, align 1, !tbaa !9
  %conv57 = zext i8 %8 to i64
  %sub58 = add nsw i64 %conv57, -4
  %cmp60 = icmp ugt i64 %sub58, %inlen
  br i1 %cmp60, label %err, label %if.end63

if.end63:                                         ; preds = %if.end55
  store i64 %conv57, i64* %outlen, align 8, !tbaa !28
  %call67 = call i8* @memcpy(i8* noundef %out, i8* noundef nonnull %arrayidx39, i64 noundef %conv57) #6
  br label %err

err:                                              ; preds = %if.end55, %if.end37, %if.end8, %lor.lhs.false, %lor.lhs.false25, %lor.lhs.false29, %lor.lhs.false32, %if.end63
  %rv.0 = phi i32 [ 0, %if.end37 ], [ 0, %if.end55 ], [ 1, %if.end63 ], [ 0, %lor.lhs.false32 ], [ 0, %lor.lhs.false29 ], [ 0, %lor.lhs.false25 ], [ 0, %lor.lhs.false ], [ 0, %if.end8 ]
  call void @CRYPTO_clear_free(i8* noundef nonnull %call4, i64 noundef %inlen, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 231) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry, %err, %if.then7
  %retval.0 = phi i32 [ 0, %if.then7 ], [ %rv.0, %err ], [ 0, %entry ], [ 0, %if.end ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #8
  ret i32 %retval.0
}

declare void @CRYPTO_clear_free(i8* noundef, i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare void @EVP_CIPHER_free(%struct.evp_cipher_st* noundef) local_unnamed_addr #2

declare void @CRYPTO_free(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare i32 @EVP_CIPHER_CTX_get_block_size(%struct.evp_cipher_ctx_st* noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare i8* @memcpy(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #5

declare i32 @EVP_EncryptUpdate(%struct.evp_cipher_ctx_st* noundef, i8* noundef, i32* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare i32 @EVP_DecryptUpdate(%struct.evp_cipher_ctx_st* noundef, i8* noundef, i32* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare i32 @EVP_DecryptInit_ex(%struct.evp_cipher_ctx_st* noundef, %struct.evp_cipher_st* noundef, %struct.engine_st* noundef, i8* noundef, i8* noundef) local_unnamed_addr #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nobuiltin nounwind "no-builtins" }
attributes #7 = { nobuiltin nounwind readonly willreturn "no-builtins" }
attributes #8 = { nounwind }
attributes #9 = { nobuiltin "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{!"clang version 14.0.0"}
!4 = !{!5, !6, i64 0}
!5 = !{!"CMS_RecipientInfo_st", !6, i64 0, !7, i64 8}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!7, !7, i64 0}
!10 = !{!11, !12, i64 32}
!11 = !{!"CMS_PasswordRecipientInfo_st", !6, i64 0, !12, i64 8, !12, i64 16, !12, i64 24, !12, i64 32, !13, i64 40, !12, i64 48}
!12 = !{!"any pointer", !7, i64 0}
!13 = !{!"long", !7, i64 0}
!14 = !{!11, !13, i64 40}
!15 = !{!16, !12, i64 24}
!16 = !{!"CMS_EncryptedContentInfo_st", !12, i64 0, !12, i64 8, !12, i64 16, !12, i64 24, !12, i64 32, !13, i64 40, !12, i64 48, !13, i64 56, !6, i64 64, !6, i64 68}
!17 = !{!18, !12, i64 8}
!18 = !{!"X509_algor_st", !12, i64 0, !12, i64 8}
!19 = !{!18, !12, i64 0}
!20 = !{!11, !12, i64 48}
!21 = !{!11, !12, i64 16}
!22 = !{!23, !6, i64 0}
!23 = !{!"asn1_type_st", !6, i64 0, !7, i64 8}
!24 = !{!11, !12, i64 8}
!25 = !{!11, !6, i64 0}
!26 = !{!16, !12, i64 32}
!27 = !{!16, !13, i64 40}
!28 = !{!13, !13, i64 0}
!29 = !{!11, !12, i64 24}
!30 = !{!31, !12, i64 8}
!31 = !{!"asn1_string_st", !6, i64 0, !6, i64 4, !12, i64 8, !13, i64 16}
!32 = !{!31, !6, i64 0}
