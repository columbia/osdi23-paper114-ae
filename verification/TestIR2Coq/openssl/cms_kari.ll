; ModuleID = 'crypto/cms/cms_kari.c'
source_filename = "crypto/cms/cms_kari.c"
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
%struct.CMS_KeyAgreeRecipientInfo_st = type { i32, %struct.CMS_OriginatorIdentifierOrKey_st*, %struct.asn1_string_st*, %struct.X509_algor_st*, %struct.stack_st_CMS_RecipientEncryptedKey*, %struct.evp_pkey_ctx_st*, %struct.evp_cipher_ctx_st*, %struct.CMS_CTX_st* }
%struct.CMS_OriginatorIdentifierOrKey_st = type { i32, %union.anon.2 }
%union.anon.2 = type { %struct.CMS_IssuerAndSerialNumber_st* }
%struct.stack_st_CMS_RecipientEncryptedKey = type opaque
%struct.evp_cipher_ctx_st = type opaque
%struct.CMS_OriginatorPublicKey_st = type { %struct.X509_algor_st*, %struct.asn1_string_st* }
%struct.CMS_RecipientEncryptedKey_st = type { %struct.CMS_KeyAgreeRecipientIdentifier_st*, %struct.asn1_string_st*, %struct.evp_pkey_st* }
%struct.CMS_KeyAgreeRecipientIdentifier_st = type { i32, %union.anon.3 }
%union.anon.3 = type { %struct.CMS_IssuerAndSerialNumber_st* }
%struct.CMS_OtherKeyAttribute_st = type { %struct.asn1_object_st*, %struct.asn1_type_st* }
%struct.CMS_RecipientKeyIdentifier_st = type { %struct.asn1_string_st*, %struct.asn1_string_st*, %struct.CMS_OtherKeyAttribute_st* }
%struct.CMS_ContentInfo_st = type { %struct.asn1_object_st*, %union.anon.4, %struct.CMS_CTX_st }
%union.anon.4 = type { %struct.asn1_string_st* }
%struct.CMS_EncryptedContentInfo_st = type { %struct.asn1_object_st*, %struct.X509_algor_st*, %struct.asn1_string_st*, %struct.evp_cipher_st*, i8*, i64, i8*, i64, i32, i32 }
%struct.evp_cipher_st = type opaque
%struct.engine_st = type opaque
%struct.ASN1_ITEM_st = type { i8, i64, %struct.ASN1_TEMPLATE_st*, i64, i8*, i64, i8* }
%struct.ASN1_TEMPLATE_st = type { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* }
%struct.ASN1_VALUE_st = type opaque
%struct.stack_st = type opaque

@.str = private unnamed_addr constant [22 x i8] c"crypto/cms/cms_kari.c\00", align 1
@__func__.CMS_RecipientInfo_kari_get0_alg = private unnamed_addr constant [32 x i8] c"CMS_RecipientInfo_kari_get0_alg\00", align 1
@__func__.CMS_RecipientInfo_kari_get0_reks = private unnamed_addr constant [33 x i8] c"CMS_RecipientInfo_kari_get0_reks\00", align 1
@__func__.CMS_RecipientInfo_kari_get0_orig_id = private unnamed_addr constant [36 x i8] c"CMS_RecipientInfo_kari_get0_orig_id\00", align 1
@__func__.CMS_RecipientInfo_kari_orig_id_cmp = private unnamed_addr constant [35 x i8] c"CMS_RecipientInfo_kari_orig_id_cmp\00", align 1
@__func__.ossl_cms_RecipientInfo_kari_encrypt = private unnamed_addr constant [36 x i8] c"ossl_cms_RecipientInfo_kari_encrypt\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"id-smime-alg-CMS3DESwrap\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"id-aes128-wrap\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"id-aes192-wrap\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"id-aes256-wrap\00", align 1

; Function Attrs: noinline nounwind uwtable
define i32 @CMS_RecipientInfo_kari_get0_alg(%struct.CMS_RecipientInfo_st* nocapture noundef readonly %ri, %struct.X509_algor_st** noundef writeonly %palg, %struct.asn1_string_st** noundef writeonly %pukm) local_unnamed_addr #0 {
entry:
  %type = getelementptr inbounds %struct.CMS_RecipientInfo_st, %struct.CMS_RecipientInfo_st* %ri, i64 0, i32 0
  %0 = load i32, i32* %type, align 8, !tbaa !4
  %cmp.not = icmp eq i32 %0, 1
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 33, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @__func__.CMS_RecipientInfo_kari_get0_alg, i64 0, i64 0)) #6
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 46, i32 noundef 181, i8* noundef null) #6
  br label %return

if.end:                                           ; preds = %entry
  %tobool.not = icmp eq %struct.X509_algor_st** %palg, null
  br i1 %tobool.not, label %if.end2, label %if.then1

if.then1:                                         ; preds = %if.end
  %d = getelementptr inbounds %struct.CMS_RecipientInfo_st, %struct.CMS_RecipientInfo_st* %ri, i64 0, i32 1
  %kari = bitcast %union.anon* %d to %struct.CMS_KeyAgreeRecipientInfo_st**
  %1 = load %struct.CMS_KeyAgreeRecipientInfo_st*, %struct.CMS_KeyAgreeRecipientInfo_st** %kari, align 8, !tbaa !9
  %keyEncryptionAlgorithm = getelementptr inbounds %struct.CMS_KeyAgreeRecipientInfo_st, %struct.CMS_KeyAgreeRecipientInfo_st* %1, i64 0, i32 3
  %2 = load %struct.X509_algor_st*, %struct.X509_algor_st** %keyEncryptionAlgorithm, align 8, !tbaa !10
  store %struct.X509_algor_st* %2, %struct.X509_algor_st** %palg, align 8, !tbaa !13
  br label %if.end2

if.end2:                                          ; preds = %if.then1, %if.end
  %tobool3.not = icmp eq %struct.asn1_string_st** %pukm, null
  br i1 %tobool3.not, label %return, label %if.then4

if.then4:                                         ; preds = %if.end2
  %d5 = getelementptr inbounds %struct.CMS_RecipientInfo_st, %struct.CMS_RecipientInfo_st* %ri, i64 0, i32 1
  %kari6 = bitcast %union.anon* %d5 to %struct.CMS_KeyAgreeRecipientInfo_st**
  %3 = load %struct.CMS_KeyAgreeRecipientInfo_st*, %struct.CMS_KeyAgreeRecipientInfo_st** %kari6, align 8, !tbaa !9
  %ukm = getelementptr inbounds %struct.CMS_KeyAgreeRecipientInfo_st, %struct.CMS_KeyAgreeRecipientInfo_st* %3, i64 0, i32 2
  %4 = load %struct.asn1_string_st*, %struct.asn1_string_st** %ukm, align 8, !tbaa !14
  store %struct.asn1_string_st* %4, %struct.asn1_string_st** %pukm, align 8, !tbaa !13
  br label %return

return:                                           ; preds = %if.end2, %if.then4, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 1, %if.then4 ], [ 1, %if.end2 ]
  ret i32 %retval.0
}

declare void @ERR_new() local_unnamed_addr #1

declare void @ERR_set_debug(i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #1

declare void @ERR_set_error(i32 noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define %struct.stack_st_CMS_RecipientEncryptedKey* @CMS_RecipientInfo_kari_get0_reks(%struct.CMS_RecipientInfo_st* nocapture noundef readonly %ri) local_unnamed_addr #0 {
entry:
  %type = getelementptr inbounds %struct.CMS_RecipientInfo_st, %struct.CMS_RecipientInfo_st* %ri, i64 0, i32 0
  %0 = load i32, i32* %type, align 8, !tbaa !4
  %cmp.not = icmp eq i32 %0, 1
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 49, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @__func__.CMS_RecipientInfo_kari_get0_reks, i64 0, i64 0)) #6
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 46, i32 noundef 181, i8* noundef null) #6
  br label %return

if.end:                                           ; preds = %entry
  %d = getelementptr inbounds %struct.CMS_RecipientInfo_st, %struct.CMS_RecipientInfo_st* %ri, i64 0, i32 1
  %kari = bitcast %union.anon* %d to %struct.CMS_KeyAgreeRecipientInfo_st**
  %1 = load %struct.CMS_KeyAgreeRecipientInfo_st*, %struct.CMS_KeyAgreeRecipientInfo_st** %kari, align 8, !tbaa !9
  %recipientEncryptedKeys = getelementptr inbounds %struct.CMS_KeyAgreeRecipientInfo_st, %struct.CMS_KeyAgreeRecipientInfo_st* %1, i64 0, i32 4
  %2 = load %struct.stack_st_CMS_RecipientEncryptedKey*, %struct.stack_st_CMS_RecipientEncryptedKey** %recipientEncryptedKeys, align 8, !tbaa !15
  br label %return

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi %struct.stack_st_CMS_RecipientEncryptedKey* [ null, %if.then ], [ %2, %if.end ]
  ret %struct.stack_st_CMS_RecipientEncryptedKey* %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @CMS_RecipientInfo_kari_get0_orig_id(%struct.CMS_RecipientInfo_st* nocapture noundef readonly %ri, %struct.X509_algor_st** noundef writeonly %pubalg, %struct.asn1_string_st** noundef writeonly %pubkey, %struct.asn1_string_st** noundef writeonly %keyid, %struct.X509_name_st** noundef writeonly %issuer, %struct.asn1_string_st** noundef writeonly %sno) local_unnamed_addr #0 {
entry:
  %type = getelementptr inbounds %struct.CMS_RecipientInfo_st, %struct.CMS_RecipientInfo_st* %ri, i64 0, i32 0
  %0 = load i32, i32* %type, align 8, !tbaa !4
  %cmp.not = icmp eq i32 %0, 1
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 65, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @__func__.CMS_RecipientInfo_kari_get0_orig_id, i64 0, i64 0)) #6
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 46, i32 noundef 181, i8* noundef null) #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %d = getelementptr inbounds %struct.CMS_RecipientInfo_st, %struct.CMS_RecipientInfo_st* %ri, i64 0, i32 1
  %kari = bitcast %union.anon* %d to %struct.CMS_KeyAgreeRecipientInfo_st**
  %1 = load %struct.CMS_KeyAgreeRecipientInfo_st*, %struct.CMS_KeyAgreeRecipientInfo_st** %kari, align 8, !tbaa !9
  %originator = getelementptr inbounds %struct.CMS_KeyAgreeRecipientInfo_st, %struct.CMS_KeyAgreeRecipientInfo_st* %1, i64 0, i32 1
  %2 = load %struct.CMS_OriginatorIdentifierOrKey_st*, %struct.CMS_OriginatorIdentifierOrKey_st** %originator, align 8, !tbaa !16
  %tobool.not = icmp eq %struct.X509_name_st** %issuer, null
  br i1 %tobool.not, label %if.end2, label %if.then1

if.then1:                                         ; preds = %if.end
  store %struct.X509_name_st* null, %struct.X509_name_st** %issuer, align 8, !tbaa !13
  br label %if.end2

if.end2:                                          ; preds = %if.then1, %if.end
  %tobool3.not = icmp eq %struct.asn1_string_st** %sno, null
  br i1 %tobool3.not, label %if.end5, label %if.then4

if.then4:                                         ; preds = %if.end2
  store %struct.asn1_string_st* null, %struct.asn1_string_st** %sno, align 8, !tbaa !13
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %if.end2
  %tobool6.not = icmp eq %struct.asn1_string_st** %keyid, null
  br i1 %tobool6.not, label %if.end8, label %if.then7

if.then7:                                         ; preds = %if.end5
  store %struct.asn1_string_st* null, %struct.asn1_string_st** %keyid, align 8, !tbaa !13
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %if.end5
  %tobool9.not = icmp eq %struct.X509_algor_st** %pubalg, null
  br i1 %tobool9.not, label %if.end11, label %if.then10

if.then10:                                        ; preds = %if.end8
  store %struct.X509_algor_st* null, %struct.X509_algor_st** %pubalg, align 8, !tbaa !13
  br label %if.end11

if.end11:                                         ; preds = %if.then10, %if.end8
  %tobool12.not = icmp eq %struct.asn1_string_st** %pubkey, null
  br i1 %tobool12.not, label %if.end14, label %if.then13

if.then13:                                        ; preds = %if.end11
  store %struct.asn1_string_st* null, %struct.asn1_string_st** %pubkey, align 8, !tbaa !13
  br label %if.end14

if.end14:                                         ; preds = %if.then13, %if.end11
  %type15 = getelementptr inbounds %struct.CMS_OriginatorIdentifierOrKey_st, %struct.CMS_OriginatorIdentifierOrKey_st* %2, i64 0, i32 0
  %3 = load i32, i32* %type15, align 8, !tbaa !17
  switch i32 %3, label %cleanup [
    i32 0, label %if.then17
    i32 1, label %if.then30
    i32 2, label %if.then38
  ]

if.then17:                                        ; preds = %if.end14
  br i1 %tobool.not, label %if.end22, label %if.then19

if.then19:                                        ; preds = %if.then17
  %issuerAndSerialNumber = getelementptr inbounds %struct.CMS_OriginatorIdentifierOrKey_st, %struct.CMS_OriginatorIdentifierOrKey_st* %2, i64 0, i32 1, i32 0
  %4 = load %struct.CMS_IssuerAndSerialNumber_st*, %struct.CMS_IssuerAndSerialNumber_st** %issuerAndSerialNumber, align 8, !tbaa !9
  %issuer21 = getelementptr inbounds %struct.CMS_IssuerAndSerialNumber_st, %struct.CMS_IssuerAndSerialNumber_st* %4, i64 0, i32 0
  %5 = load %struct.X509_name_st*, %struct.X509_name_st** %issuer21, align 8, !tbaa !19
  store %struct.X509_name_st* %5, %struct.X509_name_st** %issuer, align 8, !tbaa !13
  br label %if.end22

if.end22:                                         ; preds = %if.then19, %if.then17
  br i1 %tobool3.not, label %cleanup, label %if.then24

if.then24:                                        ; preds = %if.end22
  %issuerAndSerialNumber26 = getelementptr inbounds %struct.CMS_OriginatorIdentifierOrKey_st, %struct.CMS_OriginatorIdentifierOrKey_st* %2, i64 0, i32 1, i32 0
  %6 = load %struct.CMS_IssuerAndSerialNumber_st*, %struct.CMS_IssuerAndSerialNumber_st** %issuerAndSerialNumber26, align 8, !tbaa !9
  %serialNumber = getelementptr inbounds %struct.CMS_IssuerAndSerialNumber_st, %struct.CMS_IssuerAndSerialNumber_st* %6, i64 0, i32 1
  %7 = load %struct.asn1_string_st*, %struct.asn1_string_st** %serialNumber, align 8, !tbaa !21
  store %struct.asn1_string_st* %7, %struct.asn1_string_st** %sno, align 8, !tbaa !13
  br label %cleanup

if.then30:                                        ; preds = %if.end14
  br i1 %tobool6.not, label %cleanup, label %if.then32

if.then32:                                        ; preds = %if.then30
  %d33 = getelementptr inbounds %struct.CMS_OriginatorIdentifierOrKey_st, %struct.CMS_OriginatorIdentifierOrKey_st* %2, i64 0, i32 1
  %subjectKeyIdentifier = bitcast %union.anon.2* %d33 to %struct.asn1_string_st**
  %8 = load %struct.asn1_string_st*, %struct.asn1_string_st** %subjectKeyIdentifier, align 8, !tbaa !9
  store %struct.asn1_string_st* %8, %struct.asn1_string_st** %keyid, align 8, !tbaa !13
  br label %cleanup

if.then38:                                        ; preds = %if.end14
  br i1 %tobool9.not, label %if.end42, label %if.then40

if.then40:                                        ; preds = %if.then38
  %d41 = getelementptr inbounds %struct.CMS_OriginatorIdentifierOrKey_st, %struct.CMS_OriginatorIdentifierOrKey_st* %2, i64 0, i32 1
  %originatorKey = bitcast %union.anon.2* %d41 to %struct.CMS_OriginatorPublicKey_st**
  %9 = load %struct.CMS_OriginatorPublicKey_st*, %struct.CMS_OriginatorPublicKey_st** %originatorKey, align 8, !tbaa !9
  %algorithm = getelementptr inbounds %struct.CMS_OriginatorPublicKey_st, %struct.CMS_OriginatorPublicKey_st* %9, i64 0, i32 0
  %10 = load %struct.X509_algor_st*, %struct.X509_algor_st** %algorithm, align 8, !tbaa !22
  store %struct.X509_algor_st* %10, %struct.X509_algor_st** %pubalg, align 8, !tbaa !13
  br label %if.end42

if.end42:                                         ; preds = %if.then40, %if.then38
  br i1 %tobool12.not, label %cleanup, label %if.then44

if.then44:                                        ; preds = %if.end42
  %d45 = getelementptr inbounds %struct.CMS_OriginatorIdentifierOrKey_st, %struct.CMS_OriginatorIdentifierOrKey_st* %2, i64 0, i32 1
  %originatorKey46 = bitcast %union.anon.2* %d45 to %struct.CMS_OriginatorPublicKey_st**
  %11 = load %struct.CMS_OriginatorPublicKey_st*, %struct.CMS_OriginatorPublicKey_st** %originatorKey46, align 8, !tbaa !9
  %publicKey = getelementptr inbounds %struct.CMS_OriginatorPublicKey_st, %struct.CMS_OriginatorPublicKey_st* %11, i64 0, i32 1
  %12 = load %struct.asn1_string_st*, %struct.asn1_string_st** %publicKey, align 8, !tbaa !24
  store %struct.asn1_string_st* %12, %struct.asn1_string_st** %pubkey, align 8, !tbaa !13
  br label %cleanup

cleanup:                                          ; preds = %if.then24, %if.end22, %if.then44, %if.end42, %if.then30, %if.then32, %if.end14, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 0, %if.end14 ], [ 1, %if.then32 ], [ 1, %if.then30 ], [ 1, %if.end42 ], [ 1, %if.then44 ], [ 1, %if.end22 ], [ 1, %if.then24 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: noinline nounwind uwtable
define i32 @CMS_RecipientInfo_kari_orig_id_cmp(%struct.CMS_RecipientInfo_st* nocapture noundef readonly %ri, %struct.x509_st* noundef %cert) local_unnamed_addr #0 {
entry:
  %type = getelementptr inbounds %struct.CMS_RecipientInfo_st, %struct.CMS_RecipientInfo_st* %ri, i64 0, i32 0
  %0 = load i32, i32* %type, align 8, !tbaa !4
  %cmp.not = icmp eq i32 %0, 1
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 102, i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @__func__.CMS_RecipientInfo_kari_orig_id_cmp, i64 0, i64 0)) #6
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 46, i32 noundef 181, i8* noundef null) #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %d = getelementptr inbounds %struct.CMS_RecipientInfo_st, %struct.CMS_RecipientInfo_st* %ri, i64 0, i32 1
  %kari = bitcast %union.anon* %d to %struct.CMS_KeyAgreeRecipientInfo_st**
  %1 = load %struct.CMS_KeyAgreeRecipientInfo_st*, %struct.CMS_KeyAgreeRecipientInfo_st** %kari, align 8, !tbaa !9
  %originator = getelementptr inbounds %struct.CMS_KeyAgreeRecipientInfo_st, %struct.CMS_KeyAgreeRecipientInfo_st* %1, i64 0, i32 1
  %2 = load %struct.CMS_OriginatorIdentifierOrKey_st*, %struct.CMS_OriginatorIdentifierOrKey_st** %originator, align 8, !tbaa !16
  %type1 = getelementptr inbounds %struct.CMS_OriginatorIdentifierOrKey_st, %struct.CMS_OriginatorIdentifierOrKey_st* %2, i64 0, i32 0
  %3 = load i32, i32* %type1, align 8, !tbaa !17
  switch i32 %3, label %cleanup [
    i32 0, label %if.then3
    i32 1, label %if.then7
  ]

if.then3:                                         ; preds = %if.end
  %issuerAndSerialNumber = getelementptr inbounds %struct.CMS_OriginatorIdentifierOrKey_st, %struct.CMS_OriginatorIdentifierOrKey_st* %2, i64 0, i32 1, i32 0
  %4 = load %struct.CMS_IssuerAndSerialNumber_st*, %struct.CMS_IssuerAndSerialNumber_st** %issuerAndSerialNumber, align 8, !tbaa !9
  %call = tail call i32 @ossl_cms_ias_cert_cmp(%struct.CMS_IssuerAndSerialNumber_st* noundef %4, %struct.x509_st* noundef %cert) #6
  br label %cleanup

if.then7:                                         ; preds = %if.end
  %d8 = getelementptr inbounds %struct.CMS_OriginatorIdentifierOrKey_st, %struct.CMS_OriginatorIdentifierOrKey_st* %2, i64 0, i32 1
  %subjectKeyIdentifier = bitcast %union.anon.2* %d8 to %struct.asn1_string_st**
  %5 = load %struct.asn1_string_st*, %struct.asn1_string_st** %subjectKeyIdentifier, align 8, !tbaa !9
  %call9 = tail call i32 @ossl_cms_keyid_cert_cmp(%struct.asn1_string_st* noundef %5, %struct.x509_st* noundef %cert) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then7, %if.then3, %if.then
  %retval.0 = phi i32 [ -2, %if.then ], [ %call, %if.then3 ], [ %call9, %if.then7 ], [ -1, %if.end ]
  ret i32 %retval.0
}

declare i32 @ossl_cms_ias_cert_cmp(%struct.CMS_IssuerAndSerialNumber_st* noundef, %struct.x509_st* noundef) local_unnamed_addr #1

declare i32 @ossl_cms_keyid_cert_cmp(%struct.asn1_string_st* noundef, %struct.x509_st* noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define i32 @CMS_RecipientEncryptedKey_get0_id(%struct.CMS_RecipientEncryptedKey_st* nocapture noundef readonly %rek, %struct.asn1_string_st** noundef writeonly %keyid, %struct.asn1_string_st** noundef writeonly %tm, %struct.CMS_OtherKeyAttribute_st** noundef writeonly %other, %struct.X509_name_st** noundef writeonly %issuer, %struct.asn1_string_st** noundef writeonly %sno) local_unnamed_addr #3 {
entry:
  %rid1 = getelementptr inbounds %struct.CMS_RecipientEncryptedKey_st, %struct.CMS_RecipientEncryptedKey_st* %rek, i64 0, i32 0
  %0 = load %struct.CMS_KeyAgreeRecipientIdentifier_st*, %struct.CMS_KeyAgreeRecipientIdentifier_st** %rid1, align 8, !tbaa !25
  %type = getelementptr inbounds %struct.CMS_KeyAgreeRecipientIdentifier_st, %struct.CMS_KeyAgreeRecipientIdentifier_st* %0, i64 0, i32 0
  %1 = load i32, i32* %type, align 8, !tbaa !27
  switch i32 %1, label %cleanup [
    i32 0, label %if.then
    i32 1, label %if.then20
  ]

if.then:                                          ; preds = %entry
  %tobool.not = icmp eq %struct.X509_name_st** %issuer, null
  br i1 %tobool.not, label %if.end, label %if.then2

if.then2:                                         ; preds = %if.then
  %issuerAndSerialNumber = getelementptr inbounds %struct.CMS_KeyAgreeRecipientIdentifier_st, %struct.CMS_KeyAgreeRecipientIdentifier_st* %0, i64 0, i32 1, i32 0
  %2 = load %struct.CMS_IssuerAndSerialNumber_st*, %struct.CMS_IssuerAndSerialNumber_st** %issuerAndSerialNumber, align 8, !tbaa !9
  %issuer3 = getelementptr inbounds %struct.CMS_IssuerAndSerialNumber_st, %struct.CMS_IssuerAndSerialNumber_st* %2, i64 0, i32 0
  %3 = load %struct.X509_name_st*, %struct.X509_name_st** %issuer3, align 8, !tbaa !19
  store %struct.X509_name_st* %3, %struct.X509_name_st** %issuer, align 8, !tbaa !13
  br label %if.end

if.end:                                           ; preds = %if.then2, %if.then
  %tobool4.not = icmp eq %struct.asn1_string_st** %sno, null
  br i1 %tobool4.not, label %if.end8, label %if.then5

if.then5:                                         ; preds = %if.end
  %issuerAndSerialNumber7 = getelementptr inbounds %struct.CMS_KeyAgreeRecipientIdentifier_st, %struct.CMS_KeyAgreeRecipientIdentifier_st* %0, i64 0, i32 1, i32 0
  %4 = load %struct.CMS_IssuerAndSerialNumber_st*, %struct.CMS_IssuerAndSerialNumber_st** %issuerAndSerialNumber7, align 8, !tbaa !9
  %serialNumber = getelementptr inbounds %struct.CMS_IssuerAndSerialNumber_st, %struct.CMS_IssuerAndSerialNumber_st* %4, i64 0, i32 1
  %5 = load %struct.asn1_string_st*, %struct.asn1_string_st** %serialNumber, align 8, !tbaa !21
  store %struct.asn1_string_st* %5, %struct.asn1_string_st** %sno, align 8, !tbaa !13
  br label %if.end8

if.end8:                                          ; preds = %if.then5, %if.end
  %tobool9.not = icmp eq %struct.asn1_string_st** %keyid, null
  br i1 %tobool9.not, label %if.end11, label %if.then10

if.then10:                                        ; preds = %if.end8
  store %struct.asn1_string_st* null, %struct.asn1_string_st** %keyid, align 8, !tbaa !13
  br label %if.end11

if.end11:                                         ; preds = %if.then10, %if.end8
  %tobool12.not = icmp eq %struct.asn1_string_st** %tm, null
  br i1 %tobool12.not, label %if.end14, label %if.then13

if.then13:                                        ; preds = %if.end11
  store %struct.asn1_string_st* null, %struct.asn1_string_st** %tm, align 8, !tbaa !13
  br label %if.end14

if.end14:                                         ; preds = %if.then13, %if.end11
  %tobool15.not = icmp eq %struct.CMS_OtherKeyAttribute_st** %other, null
  br i1 %tobool15.not, label %cleanup, label %if.then16

if.then16:                                        ; preds = %if.end14
  store %struct.CMS_OtherKeyAttribute_st* null, %struct.CMS_OtherKeyAttribute_st** %other, align 8, !tbaa !13
  br label %cleanup

if.then20:                                        ; preds = %entry
  %tobool21.not = icmp eq %struct.asn1_string_st** %keyid, null
  br i1 %tobool21.not, label %if.end24, label %if.then22

if.then22:                                        ; preds = %if.then20
  %d23 = getelementptr inbounds %struct.CMS_KeyAgreeRecipientIdentifier_st, %struct.CMS_KeyAgreeRecipientIdentifier_st* %0, i64 0, i32 1
  %rKeyId = bitcast %union.anon.3* %d23 to %struct.CMS_RecipientKeyIdentifier_st**
  %6 = load %struct.CMS_RecipientKeyIdentifier_st*, %struct.CMS_RecipientKeyIdentifier_st** %rKeyId, align 8, !tbaa !9
  %subjectKeyIdentifier = getelementptr inbounds %struct.CMS_RecipientKeyIdentifier_st, %struct.CMS_RecipientKeyIdentifier_st* %6, i64 0, i32 0
  %7 = load %struct.asn1_string_st*, %struct.asn1_string_st** %subjectKeyIdentifier, align 8, !tbaa !29
  store %struct.asn1_string_st* %7, %struct.asn1_string_st** %keyid, align 8, !tbaa !13
  br label %if.end24

if.end24:                                         ; preds = %if.then22, %if.then20
  %tobool25.not = icmp eq %struct.asn1_string_st** %tm, null
  br i1 %tobool25.not, label %if.end29, label %if.then26

if.then26:                                        ; preds = %if.end24
  %d27 = getelementptr inbounds %struct.CMS_KeyAgreeRecipientIdentifier_st, %struct.CMS_KeyAgreeRecipientIdentifier_st* %0, i64 0, i32 1
  %rKeyId28 = bitcast %union.anon.3* %d27 to %struct.CMS_RecipientKeyIdentifier_st**
  %8 = load %struct.CMS_RecipientKeyIdentifier_st*, %struct.CMS_RecipientKeyIdentifier_st** %rKeyId28, align 8, !tbaa !9
  %date = getelementptr inbounds %struct.CMS_RecipientKeyIdentifier_st, %struct.CMS_RecipientKeyIdentifier_st* %8, i64 0, i32 1
  %9 = load %struct.asn1_string_st*, %struct.asn1_string_st** %date, align 8, !tbaa !31
  store %struct.asn1_string_st* %9, %struct.asn1_string_st** %tm, align 8, !tbaa !13
  br label %if.end29

if.end29:                                         ; preds = %if.then26, %if.end24
  %tobool30.not = icmp eq %struct.CMS_OtherKeyAttribute_st** %other, null
  br i1 %tobool30.not, label %if.end35, label %if.then31

if.then31:                                        ; preds = %if.end29
  %d32 = getelementptr inbounds %struct.CMS_KeyAgreeRecipientIdentifier_st, %struct.CMS_KeyAgreeRecipientIdentifier_st* %0, i64 0, i32 1
  %rKeyId33 = bitcast %union.anon.3* %d32 to %struct.CMS_RecipientKeyIdentifier_st**
  %10 = load %struct.CMS_RecipientKeyIdentifier_st*, %struct.CMS_RecipientKeyIdentifier_st** %rKeyId33, align 8, !tbaa !9
  %other34 = getelementptr inbounds %struct.CMS_RecipientKeyIdentifier_st, %struct.CMS_RecipientKeyIdentifier_st* %10, i64 0, i32 2
  %11 = load %struct.CMS_OtherKeyAttribute_st*, %struct.CMS_OtherKeyAttribute_st** %other34, align 8, !tbaa !32
  store %struct.CMS_OtherKeyAttribute_st* %11, %struct.CMS_OtherKeyAttribute_st** %other, align 8, !tbaa !13
  br label %if.end35

if.end35:                                         ; preds = %if.then31, %if.end29
  %tobool36.not = icmp eq %struct.X509_name_st** %issuer, null
  br i1 %tobool36.not, label %if.end38, label %if.then37

if.then37:                                        ; preds = %if.end35
  store %struct.X509_name_st* null, %struct.X509_name_st** %issuer, align 8, !tbaa !13
  br label %if.end38

if.end38:                                         ; preds = %if.then37, %if.end35
  %tobool39.not = icmp eq %struct.asn1_string_st** %sno, null
  br i1 %tobool39.not, label %cleanup, label %if.then40

if.then40:                                        ; preds = %if.end38
  store %struct.asn1_string_st* null, %struct.asn1_string_st** %sno, align 8, !tbaa !13
  br label %cleanup

cleanup:                                          ; preds = %if.then16, %if.end14, %if.end38, %if.then40, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ 1, %if.then40 ], [ 1, %if.end38 ], [ 1, %if.end14 ], [ 1, %if.then16 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @CMS_RecipientEncryptedKey_cert_cmp(%struct.CMS_RecipientEncryptedKey_st* nocapture noundef readonly %rek, %struct.x509_st* noundef %cert) local_unnamed_addr #0 {
entry:
  %rid1 = getelementptr inbounds %struct.CMS_RecipientEncryptedKey_st, %struct.CMS_RecipientEncryptedKey_st* %rek, i64 0, i32 0
  %0 = load %struct.CMS_KeyAgreeRecipientIdentifier_st*, %struct.CMS_KeyAgreeRecipientIdentifier_st** %rid1, align 8, !tbaa !25
  %type = getelementptr inbounds %struct.CMS_KeyAgreeRecipientIdentifier_st, %struct.CMS_KeyAgreeRecipientIdentifier_st* %0, i64 0, i32 0
  %1 = load i32, i32* %type, align 8, !tbaa !27
  switch i32 %1, label %cleanup [
    i32 0, label %if.then
    i32 1, label %if.then4
  ]

if.then:                                          ; preds = %entry
  %issuerAndSerialNumber = getelementptr inbounds %struct.CMS_KeyAgreeRecipientIdentifier_st, %struct.CMS_KeyAgreeRecipientIdentifier_st* %0, i64 0, i32 1, i32 0
  %2 = load %struct.CMS_IssuerAndSerialNumber_st*, %struct.CMS_IssuerAndSerialNumber_st** %issuerAndSerialNumber, align 8, !tbaa !9
  %call = tail call i32 @ossl_cms_ias_cert_cmp(%struct.CMS_IssuerAndSerialNumber_st* noundef %2, %struct.x509_st* noundef %cert) #6
  br label %cleanup

if.then4:                                         ; preds = %entry
  %d5 = getelementptr inbounds %struct.CMS_KeyAgreeRecipientIdentifier_st, %struct.CMS_KeyAgreeRecipientIdentifier_st* %0, i64 0, i32 1
  %rKeyId = bitcast %union.anon.3* %d5 to %struct.CMS_RecipientKeyIdentifier_st**
  %3 = load %struct.CMS_RecipientKeyIdentifier_st*, %struct.CMS_RecipientKeyIdentifier_st** %rKeyId, align 8, !tbaa !9
  %subjectKeyIdentifier = getelementptr inbounds %struct.CMS_RecipientKeyIdentifier_st, %struct.CMS_RecipientKeyIdentifier_st* %3, i64 0, i32 0
  %4 = load %struct.asn1_string_st*, %struct.asn1_string_st** %subjectKeyIdentifier, align 8, !tbaa !29
  %call6 = tail call i32 @ossl_cms_keyid_cert_cmp(%struct.asn1_string_st* noundef %4, %struct.x509_st* noundef %cert) #6
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.then4, %if.then
  %retval.0 = phi i32 [ %call, %if.then ], [ %call6, %if.then4 ], [ -1, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @CMS_RecipientInfo_kari_set0_pkey_and_peer(%struct.CMS_RecipientInfo_st* nocapture noundef readonly %ri, %struct.evp_pkey_st* noundef %pk, %struct.x509_st* noundef %peer) local_unnamed_addr #0 {
entry:
  %d = getelementptr inbounds %struct.CMS_RecipientInfo_st, %struct.CMS_RecipientInfo_st* %ri, i64 0, i32 1
  %kari1 = bitcast %union.anon* %d to %struct.CMS_KeyAgreeRecipientInfo_st**
  %0 = load %struct.CMS_KeyAgreeRecipientInfo_st*, %struct.CMS_KeyAgreeRecipientInfo_st** %kari1, align 8, !tbaa !9
  %pctx2 = getelementptr inbounds %struct.CMS_KeyAgreeRecipientInfo_st, %struct.CMS_KeyAgreeRecipientInfo_st* %0, i64 0, i32 5
  %1 = load %struct.evp_pkey_ctx_st*, %struct.evp_pkey_ctx_st** %pctx2, align 8, !tbaa !33
  tail call void @EVP_PKEY_CTX_free(%struct.evp_pkey_ctx_st* noundef %1) #6
  store %struct.evp_pkey_ctx_st* null, %struct.evp_pkey_ctx_st** %pctx2, align 8, !tbaa !33
  %cmp = icmp eq %struct.evp_pkey_st* %pk, null
  br i1 %cmp, label %cleanup21, label %if.end

if.end:                                           ; preds = %entry
  %cms_ctx = getelementptr inbounds %struct.CMS_KeyAgreeRecipientInfo_st, %struct.CMS_KeyAgreeRecipientInfo_st* %0, i64 0, i32 7
  %2 = load %struct.CMS_CTX_st*, %struct.CMS_CTX_st** %cms_ctx, align 8, !tbaa !34
  %call = tail call %struct.ossl_lib_ctx_st* @ossl_cms_ctx_get0_libctx(%struct.CMS_CTX_st* noundef %2) #6
  %3 = load %struct.CMS_CTX_st*, %struct.CMS_CTX_st** %cms_ctx, align 8, !tbaa !34
  %call5 = tail call i8* @ossl_cms_ctx_get0_propq(%struct.CMS_CTX_st* noundef %3) #6
  %call6 = tail call %struct.evp_pkey_ctx_st* @EVP_PKEY_CTX_new_from_pkey(%struct.ossl_lib_ctx_st* noundef %call, %struct.evp_pkey_st* noundef nonnull %pk, i8* noundef %call5) #6
  %cmp7 = icmp eq %struct.evp_pkey_ctx_st* %call6, null
  br i1 %cmp7, label %err, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %call8 = tail call i32 @EVP_PKEY_derive_init(%struct.evp_pkey_ctx_st* noundef nonnull %call6) #6
  %cmp9 = icmp slt i32 %call8, 1
  br i1 %cmp9, label %err, label %if.end11

if.end11:                                         ; preds = %lor.lhs.false
  %cmp12.not = icmp eq %struct.x509_st* %peer, null
  br i1 %cmp12.not, label %if.end19, label %if.then13

if.then13:                                        ; preds = %if.end11
  %call14 = tail call %struct.evp_pkey_st* @X509_get0_pubkey(%struct.x509_st* noundef nonnull %peer) #6
  %call15 = tail call i32 @EVP_PKEY_derive_set_peer(%struct.evp_pkey_ctx_st* noundef nonnull %call6, %struct.evp_pkey_st* noundef %call14) #6
  %cmp16 = icmp slt i32 %call15, 1
  br i1 %cmp16, label %err, label %if.end19

if.end19:                                         ; preds = %if.then13, %if.end11
  store %struct.evp_pkey_ctx_st* %call6, %struct.evp_pkey_ctx_st** %pctx2, align 8, !tbaa !33
  br label %cleanup21

err:                                              ; preds = %if.then13, %if.end, %lor.lhs.false
  tail call void @EVP_PKEY_CTX_free(%struct.evp_pkey_ctx_st* noundef %call6) #6
  br label %cleanup21

cleanup21:                                        ; preds = %entry, %err, %if.end19
  %retval.0 = phi i32 [ 0, %err ], [ 1, %if.end19 ], [ 1, %entry ]
  ret i32 %retval.0
}

declare void @EVP_PKEY_CTX_free(%struct.evp_pkey_ctx_st* noundef) local_unnamed_addr #1

declare %struct.evp_pkey_ctx_st* @EVP_PKEY_CTX_new_from_pkey(%struct.ossl_lib_ctx_st* noundef, %struct.evp_pkey_st* noundef, i8* noundef) local_unnamed_addr #1

declare %struct.ossl_lib_ctx_st* @ossl_cms_ctx_get0_libctx(%struct.CMS_CTX_st* noundef) local_unnamed_addr #1

declare i8* @ossl_cms_ctx_get0_propq(%struct.CMS_CTX_st* noundef) local_unnamed_addr #1

declare i32 @EVP_PKEY_derive_init(%struct.evp_pkey_ctx_st* noundef) local_unnamed_addr #1

declare %struct.evp_pkey_st* @X509_get0_pubkey(%struct.x509_st* noundef) local_unnamed_addr #1

declare i32 @EVP_PKEY_derive_set_peer(%struct.evp_pkey_ctx_st* noundef, %struct.evp_pkey_st* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define i32 @CMS_RecipientInfo_kari_set0_pkey(%struct.CMS_RecipientInfo_st* nocapture noundef readonly %ri, %struct.evp_pkey_st* noundef %pk) local_unnamed_addr #0 {
entry:
  %call = tail call i32 @CMS_RecipientInfo_kari_set0_pkey_and_peer(%struct.CMS_RecipientInfo_st* noundef %ri, %struct.evp_pkey_st* noundef %pk, %struct.x509_st* noundef null) #7
  ret i32 %call
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define %struct.evp_cipher_ctx_st* @CMS_RecipientInfo_kari_get0_ctx(%struct.CMS_RecipientInfo_st* nocapture noundef readonly %ri) local_unnamed_addr #4 {
entry:
  %type = getelementptr inbounds %struct.CMS_RecipientInfo_st, %struct.CMS_RecipientInfo_st* %ri, i64 0, i32 0
  %0 = load i32, i32* %type, align 8, !tbaa !4
  %cmp = icmp eq i32 %0, 1
  br i1 %cmp, label %if.then, label %return

if.then:                                          ; preds = %entry
  %d = getelementptr inbounds %struct.CMS_RecipientInfo_st, %struct.CMS_RecipientInfo_st* %ri, i64 0, i32 1
  %kari = bitcast %union.anon* %d to %struct.CMS_KeyAgreeRecipientInfo_st**
  %1 = load %struct.CMS_KeyAgreeRecipientInfo_st*, %struct.CMS_KeyAgreeRecipientInfo_st** %kari, align 8, !tbaa !9
  %ctx = getelementptr inbounds %struct.CMS_KeyAgreeRecipientInfo_st, %struct.CMS_KeyAgreeRecipientInfo_st* %1, i64 0, i32 6
  %2 = load %struct.evp_cipher_ctx_st*, %struct.evp_cipher_ctx_st** %ctx, align 8, !tbaa !35
  br label %return

return:                                           ; preds = %entry, %if.then
  %retval.0 = phi %struct.evp_cipher_ctx_st* [ %2, %if.then ], [ null, %entry ]
  ret %struct.evp_cipher_ctx_st* %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @CMS_RecipientInfo_kari_decrypt(%struct.CMS_ContentInfo_st* noundef %cms, %struct.CMS_RecipientInfo_st* noundef %ri, %struct.CMS_RecipientEncryptedKey_st* nocapture noundef readonly %rek) local_unnamed_addr #0 {
entry:
  %cek = alloca i8*, align 8
  %ceklen = alloca i64, align 8
  %0 = bitcast i8** %cek to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #8
  store i8* null, i8** %cek, align 8, !tbaa !13
  %1 = bitcast i64* %ceklen to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #8
  %encryptedKey = getelementptr inbounds %struct.CMS_RecipientEncryptedKey_st, %struct.CMS_RecipientEncryptedKey_st* %rek, i64 0, i32 1
  %2 = load %struct.asn1_string_st*, %struct.asn1_string_st** %encryptedKey, align 8, !tbaa !36
  %length = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %2, i64 0, i32 0
  %3 = load i32, i32* %length, align 8, !tbaa !37
  %data = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %2, i64 0, i32 2
  %4 = load i8*, i8** %data, align 8, !tbaa !40
  %call = tail call i32 @ossl_cms_env_asn1_ctrl(%struct.CMS_RecipientInfo_st* noundef %ri, i32 noundef 1) #6
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %err, label %if.end

if.end:                                           ; preds = %entry
  %conv = sext i32 %3 to i64
  %d = getelementptr inbounds %struct.CMS_RecipientInfo_st, %struct.CMS_RecipientInfo_st* %ri, i64 0, i32 1
  %kari = bitcast %union.anon* %d to %struct.CMS_KeyAgreeRecipientInfo_st**
  %5 = load %struct.CMS_KeyAgreeRecipientInfo_st*, %struct.CMS_KeyAgreeRecipientInfo_st** %kari, align 8, !tbaa !9
  %call2 = call fastcc i32 @cms_kek_cipher(i8** noundef nonnull %cek, i64* noundef nonnull %ceklen, i8* noundef %4, i64 noundef %conv, %struct.CMS_KeyAgreeRecipientInfo_st* noundef %5, i32 noundef 0) #7
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end.err_crit_edge, label %if.end5

if.end.err_crit_edge:                             ; preds = %if.end
  %.pre = load i8*, i8** %cek, align 8, !tbaa !13
  br label %err

if.end5:                                          ; preds = %if.end
  %call6 = tail call %struct.CMS_EncryptedContentInfo_st* @ossl_cms_get0_env_enc_content(%struct.CMS_ContentInfo_st* noundef %cms) #6
  %key = getelementptr inbounds %struct.CMS_EncryptedContentInfo_st, %struct.CMS_EncryptedContentInfo_st* %call6, i64 0, i32 4
  %6 = load i8*, i8** %key, align 8, !tbaa !41
  %keylen = getelementptr inbounds %struct.CMS_EncryptedContentInfo_st, %struct.CMS_EncryptedContentInfo_st* %call6, i64 0, i32 5
  %7 = load i64, i64* %keylen, align 8, !tbaa !43
  tail call void @CRYPTO_clear_free(i8* noundef %6, i64 noundef %7, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 272) #6
  %8 = load i8*, i8** %cek, align 8, !tbaa !13
  store i8* %8, i8** %key, align 8, !tbaa !41
  %9 = load i64, i64* %ceklen, align 8, !tbaa !44
  store i64 %9, i64* %keylen, align 8, !tbaa !43
  br label %err

err:                                              ; preds = %if.end.err_crit_edge, %entry, %if.end5
  %10 = phi i8* [ null, %if.end5 ], [ %.pre, %if.end.err_crit_edge ], [ null, %entry ]
  %rv.0 = phi i32 [ 1, %if.end5 ], [ 0, %if.end.err_crit_edge ], [ 0, %entry ]
  tail call void @CRYPTO_free(i8* noundef %10, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 278) #6
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #8
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #8
  ret i32 %rv.0
}

declare i32 @ossl_cms_env_asn1_ctrl(%struct.CMS_RecipientInfo_st* noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @cms_kek_cipher(i8** nocapture noundef writeonly %pout, i64* nocapture noundef writeonly %poutlen, i8* noundef %in, i64 noundef %inlen, %struct.CMS_KeyAgreeRecipientInfo_st* nocapture noundef %kari, i32 noundef %enc) unnamed_addr #0 {
entry:
  %kek = alloca [64 x i8], align 16
  %keklen = alloca i64, align 8
  %outlen = alloca i32, align 4
  %0 = getelementptr inbounds [64 x i8], [64 x i8]* %kek, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %0) #8
  %1 = bitcast i64* %keklen to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #8
  %2 = bitcast i32* %outlen to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %2) #8
  %ctx = getelementptr inbounds %struct.CMS_KeyAgreeRecipientInfo_st, %struct.CMS_KeyAgreeRecipientInfo_st* %kari, i64 0, i32 6
  %3 = load %struct.evp_cipher_ctx_st*, %struct.evp_cipher_ctx_st** %ctx, align 8, !tbaa !35
  %call = tail call i32 @EVP_CIPHER_CTX_get_key_length(%struct.evp_cipher_ctx_st* noundef %3) #6
  %conv = sext i32 %call to i64
  store i64 %conv, i64* %keklen, align 8, !tbaa !44
  %cmp = icmp ugt i32 %call, 64
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %pctx = getelementptr inbounds %struct.CMS_KeyAgreeRecipientInfo_st, %struct.CMS_KeyAgreeRecipientInfo_st* %kari, i64 0, i32 5
  %4 = load %struct.evp_pkey_ctx_st*, %struct.evp_pkey_ctx_st** %pctx, align 8, !tbaa !33
  %call2 = call i32 @EVP_PKEY_derive(%struct.evp_pkey_ctx_st* noundef %4, i8* noundef nonnull %0, i64* noundef nonnull %keklen) #6
  %cmp3 = icmp slt i32 %call2, 1
  br i1 %cmp3, label %if.then33, label %if.end6

if.end6:                                          ; preds = %if.end
  %5 = load %struct.evp_cipher_ctx_st*, %struct.evp_cipher_ctx_st** %ctx, align 8, !tbaa !35
  %call9 = call i32 @EVP_CipherInit_ex(%struct.evp_cipher_ctx_st* noundef %5, %struct.evp_cipher_st* noundef null, %struct.engine_st* noundef null, i8* noundef nonnull %0, i8* noundef null, i32 noundef %enc) #6
  %tobool.not = icmp eq i32 %call9, 0
  br i1 %tobool.not, label %if.then33, label %if.end11

if.end11:                                         ; preds = %if.end6
  %6 = load %struct.evp_cipher_ctx_st*, %struct.evp_cipher_ctx_st** %ctx, align 8, !tbaa !35
  %conv13 = trunc i64 %inlen to i32
  %call14 = call i32 @EVP_CipherUpdate(%struct.evp_cipher_ctx_st* noundef %6, i8* noundef null, i32* noundef nonnull %outlen, i8* noundef %in, i32 noundef %conv13) #6
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.then33, label %if.end17

if.end17:                                         ; preds = %if.end11
  %7 = load i32, i32* %outlen, align 4, !tbaa !45
  %conv18 = sext i32 %7 to i64
  %call19 = call i8* @CRYPTO_malloc(i64 noundef %conv18, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 233) #6
  %cmp20 = icmp eq i8* %call19, null
  br i1 %cmp20, label %if.then33, label %if.end23

if.end23:                                         ; preds = %if.end17
  %8 = load %struct.evp_cipher_ctx_st*, %struct.evp_cipher_ctx_st** %ctx, align 8, !tbaa !35
  %call26 = call i32 @EVP_CipherUpdate(%struct.evp_cipher_ctx_st* noundef %8, i8* noundef nonnull %call19, i32* noundef nonnull %outlen, i8* noundef %in, i32 noundef %conv13) #6
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %if.then33, label %err

err:                                              ; preds = %if.end23
  store i8* %call19, i8** %pout, align 8, !tbaa !13
  %9 = load i32, i32* %outlen, align 4, !tbaa !45
  %conv30 = sext i32 %9 to i64
  store i64 %conv30, i64* %poutlen, align 8, !tbaa !44
  %10 = load i64, i64* %keklen, align 8, !tbaa !44
  call void @OPENSSL_cleanse(i8* noundef nonnull %0, i64 noundef %10) #6
  br label %if.end34

if.then33:                                        ; preds = %if.end23, %if.end17, %if.end11, %if.end6, %if.end
  %out.0.ph = phi i8* [ null, %if.end ], [ null, %if.end6 ], [ null, %if.end11 ], [ null, %if.end17 ], [ %call19, %if.end23 ]
  %11 = load i64, i64* %keklen, align 8, !tbaa !44
  call void @OPENSSL_cleanse(i8* noundef nonnull %0, i64 noundef %11) #6
  call void @CRYPTO_free(i8* noundef %out.0.ph, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 245) #6
  br label %if.end34

if.end34:                                         ; preds = %err, %if.then33
  %rv.061 = phi i32 [ 0, %if.then33 ], [ 1, %err ]
  %12 = load %struct.evp_cipher_ctx_st*, %struct.evp_cipher_ctx_st** %ctx, align 8, !tbaa !35
  %call36 = call i32 @EVP_CIPHER_CTX_reset(%struct.evp_cipher_ctx_st* noundef %12) #6
  %13 = load %struct.evp_pkey_ctx_st*, %struct.evp_pkey_ctx_st** %pctx, align 8, !tbaa !33
  call void @EVP_PKEY_CTX_free(%struct.evp_pkey_ctx_st* noundef %13) #6
  store %struct.evp_pkey_ctx_st* null, %struct.evp_pkey_ctx_st** %pctx, align 8, !tbaa !33
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end34
  %retval.0 = phi i32 [ %rv.061, %if.end34 ], [ 0, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2) #8
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #8
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %0) #8
  ret i32 %retval.0
}

declare %struct.CMS_EncryptedContentInfo_st* @ossl_cms_get0_env_enc_content(%struct.CMS_ContentInfo_st* noundef) local_unnamed_addr #1

declare void @CRYPTO_clear_free(i8* noundef, i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

declare void @CRYPTO_free(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_cms_RecipientInfo_kari_init(%struct.CMS_RecipientInfo_st* nocapture noundef %ri, %struct.x509_st* noundef %recip, %struct.evp_pkey_st* noundef %recipPubKey, %struct.x509_st* noundef %originator, %struct.evp_pkey_st* noundef %originatorPrivKey, i32 noundef %flags, %struct.CMS_CTX_st* noundef %ctx) local_unnamed_addr #0 {
entry:
  %call = tail call %struct.ASN1_ITEM_st* @CMS_KeyAgreeRecipientInfo_it() #6
  %call1 = tail call %struct.ASN1_VALUE_st* @ASN1_item_new(%struct.ASN1_ITEM_st* noundef %call) #6
  %d = getelementptr inbounds %struct.CMS_RecipientInfo_st, %struct.CMS_RecipientInfo_st* %ri, i64 0, i32 1
  %kari2 = bitcast %union.anon* %d to %struct.CMS_KeyAgreeRecipientInfo_st**
  %0 = bitcast %union.anon* %d to %struct.ASN1_VALUE_st**
  store %struct.ASN1_VALUE_st* %call1, %struct.ASN1_VALUE_st** %0, align 8, !tbaa !9
  %cmp = icmp eq %struct.ASN1_VALUE_st* %call1, null
  %1 = bitcast %struct.ASN1_VALUE_st* %call1 to %struct.CMS_KeyAgreeRecipientInfo_st*
  br i1 %cmp, label %cleanup95, label %if.end

if.end:                                           ; preds = %entry
  %type = getelementptr inbounds %struct.CMS_RecipientInfo_st, %struct.CMS_RecipientInfo_st* %ri, i64 0, i32 0
  store i32 1, i32* %type, align 8, !tbaa !4
  %version = bitcast %struct.ASN1_VALUE_st* %call1 to i32*
  store i32 3, i32* %version, align 8, !tbaa !46
  %cms_ctx = getelementptr inbounds %struct.CMS_KeyAgreeRecipientInfo_st, %struct.CMS_KeyAgreeRecipientInfo_st* %1, i64 0, i32 7
  store %struct.CMS_CTX_st* %ctx, %struct.CMS_CTX_st** %cms_ctx, align 8, !tbaa !34
  %call7 = tail call %struct.ASN1_ITEM_st* @CMS_RecipientEncryptedKey_it() #6
  %call8 = tail call %struct.ASN1_VALUE_st* @ASN1_item_new(%struct.ASN1_ITEM_st* noundef %call7) #6
  %2 = bitcast %struct.ASN1_VALUE_st* %call8 to %struct.CMS_RecipientEncryptedKey_st*
  %cmp9 = icmp eq %struct.ASN1_VALUE_st* %call8, null
  br i1 %cmp9, label %cleanup95, label %if.end11

if.end11:                                         ; preds = %if.end
  %recipientEncryptedKeys = getelementptr inbounds %struct.CMS_KeyAgreeRecipientInfo_st, %struct.CMS_KeyAgreeRecipientInfo_st* %1, i64 0, i32 4
  %3 = load %struct.stack_st_CMS_RecipientEncryptedKey*, %struct.stack_st_CMS_RecipientEncryptedKey** %recipientEncryptedKeys, align 8, !tbaa !15
  %call12 = tail call fastcc %struct.stack_st* @ossl_check_CMS_RecipientEncryptedKey_sk_type(%struct.stack_st_CMS_RecipientEncryptedKey* noundef %3) #7
  %4 = bitcast %struct.ASN1_VALUE_st* %call8 to i8*
  %call14 = tail call i32 @OPENSSL_sk_push(%struct.stack_st* noundef %call12, i8* noundef nonnull %4) #6
  %tobool.not = icmp eq i32 %call14, 0
  br i1 %tobool.not, label %if.then15, label %if.end17

if.then15:                                        ; preds = %if.end11
  %call16 = tail call %struct.ASN1_ITEM_st* @CMS_RecipientEncryptedKey_it() #6
  tail call void @ASN1_item_free(%struct.ASN1_VALUE_st* noundef nonnull %call8, %struct.ASN1_ITEM_st* noundef %call16) #6
  br label %cleanup95

if.end17:                                         ; preds = %if.end11
  %and = and i32 %flags, 65536
  %tobool18.not = icmp eq i32 %and, 0
  %rid38 = bitcast %struct.ASN1_VALUE_st* %call8 to %struct.CMS_KeyAgreeRecipientIdentifier_st**
  %5 = load %struct.CMS_KeyAgreeRecipientIdentifier_st*, %struct.CMS_KeyAgreeRecipientIdentifier_st** %rid38, align 8, !tbaa !25
  %type39 = getelementptr inbounds %struct.CMS_KeyAgreeRecipientIdentifier_st, %struct.CMS_KeyAgreeRecipientIdentifier_st* %5, i64 0, i32 0
  br i1 %tobool18.not, label %if.else, label %if.then19

if.then19:                                        ; preds = %if.end17
  store i32 1, i32* %type39, align 8, !tbaa !27
  %call21 = tail call %struct.ASN1_ITEM_st* @CMS_RecipientKeyIdentifier_it() #6
  %call22 = tail call %struct.ASN1_VALUE_st* @ASN1_item_new(%struct.ASN1_ITEM_st* noundef %call21) #6
  %6 = load %struct.CMS_KeyAgreeRecipientIdentifier_st*, %struct.CMS_KeyAgreeRecipientIdentifier_st** %rid38, align 8, !tbaa !25
  %d24 = getelementptr inbounds %struct.CMS_KeyAgreeRecipientIdentifier_st, %struct.CMS_KeyAgreeRecipientIdentifier_st* %6, i64 0, i32 1
  %7 = bitcast %union.anon.3* %d24 to %struct.ASN1_VALUE_st**
  store %struct.ASN1_VALUE_st* %call22, %struct.ASN1_VALUE_st** %7, align 8, !tbaa !9
  %8 = load %struct.CMS_KeyAgreeRecipientIdentifier_st*, %struct.CMS_KeyAgreeRecipientIdentifier_st** %rid38, align 8, !tbaa !25
  %d26 = getelementptr inbounds %struct.CMS_KeyAgreeRecipientIdentifier_st, %struct.CMS_KeyAgreeRecipientIdentifier_st* %8, i64 0, i32 1
  %rKeyId27 = bitcast %union.anon.3* %d26 to %struct.CMS_RecipientKeyIdentifier_st**
  %9 = load %struct.CMS_RecipientKeyIdentifier_st*, %struct.CMS_RecipientKeyIdentifier_st** %rKeyId27, align 8, !tbaa !9
  %cmp28 = icmp eq %struct.CMS_RecipientKeyIdentifier_st* %9, null
  br i1 %cmp28, label %cleanup95, label %if.end30

if.end30:                                         ; preds = %if.then19
  %subjectKeyIdentifier = getelementptr inbounds %struct.CMS_RecipientKeyIdentifier_st, %struct.CMS_RecipientKeyIdentifier_st* %9, i64 0, i32 0
  %call34 = tail call i32 @ossl_cms_set1_keyid(%struct.asn1_string_st** noundef nonnull %subjectKeyIdentifier, %struct.x509_st* noundef %recip) #6
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %cleanup95, label %if.end46

if.else:                                          ; preds = %if.end17
  store i32 0, i32* %type39, align 8, !tbaa !27
  %issuerAndSerialNumber = getelementptr inbounds %struct.CMS_KeyAgreeRecipientIdentifier_st, %struct.CMS_KeyAgreeRecipientIdentifier_st* %5, i64 0, i32 1, i32 0
  %call42 = tail call i32 @ossl_cms_set1_ias(%struct.CMS_IssuerAndSerialNumber_st** noundef nonnull %issuerAndSerialNumber, %struct.x509_st* noundef %recip) #6
  %tobool43.not = icmp eq i32 %call42, 0
  br i1 %tobool43.not, label %cleanup95, label %if.end46

if.end46:                                         ; preds = %if.else, %if.end30
  %cmp47 = icmp eq %struct.evp_pkey_st* %originatorPrivKey, null
  %cmp48 = icmp eq %struct.x509_st* %originator, null
  %or.cond = and i1 %cmp48, %cmp47
  br i1 %or.cond, label %if.then49, label %if.else54

if.then49:                                        ; preds = %if.end46
  %call50 = tail call fastcc i32 @cms_kari_create_ephemeral_key(%struct.CMS_KeyAgreeRecipientInfo_st* noundef nonnull %1, %struct.evp_pkey_st* noundef %recipPubKey) #7
  %tobool51.not = icmp eq i32 %call50, 0
  br i1 %tobool51.not, label %cleanup95, label %if.end93

if.else54:                                        ; preds = %if.end46
  %10 = load %struct.CMS_KeyAgreeRecipientInfo_st*, %struct.CMS_KeyAgreeRecipientInfo_st** %kari2, align 8, !tbaa !9
  %originator57 = getelementptr inbounds %struct.CMS_KeyAgreeRecipientInfo_st, %struct.CMS_KeyAgreeRecipientInfo_st* %10, i64 0, i32 1
  %11 = load %struct.CMS_OriginatorIdentifierOrKey_st*, %struct.CMS_OriginatorIdentifierOrKey_st** %originator57, align 8, !tbaa !16
  %or.cond97 = or i1 %cmp48, %cmp47
  br i1 %or.cond97, label %cleanup95, label %if.end61

if.end61:                                         ; preds = %if.else54
  %and62 = and i32 %flags, 2097152
  %tobool63.not = icmp eq i32 %and62, 0
  %type81 = getelementptr inbounds %struct.CMS_OriginatorIdentifierOrKey_st, %struct.CMS_OriginatorIdentifierOrKey_st* %11, i64 0, i32 0
  br i1 %tobool63.not, label %if.else80, label %if.then64

if.then64:                                        ; preds = %if.end61
  store i32 1, i32* %type81, align 8, !tbaa !17
  %call66 = tail call %struct.asn1_string_st* @ASN1_OCTET_STRING_new() #6
  %d67 = getelementptr inbounds %struct.CMS_OriginatorIdentifierOrKey_st, %struct.CMS_OriginatorIdentifierOrKey_st* %11, i64 0, i32 1
  %subjectKeyIdentifier68 = bitcast %union.anon.2* %d67 to %struct.asn1_string_st**
  store %struct.asn1_string_st* %call66, %struct.asn1_string_st** %subjectKeyIdentifier68, align 8, !tbaa !9
  %cmp71 = icmp eq %struct.asn1_string_st* %call66, null
  br i1 %cmp71, label %cleanup95, label %if.end73

if.end73:                                         ; preds = %if.then64
  %call76 = tail call i32 @ossl_cms_set1_keyid(%struct.asn1_string_st** noundef nonnull %subjectKeyIdentifier68, %struct.x509_st* noundef nonnull %originator) #6
  %tobool77.not = icmp eq i32 %call76, 0
  br i1 %tobool77.not, label %cleanup95, label %if.end88

if.else80:                                        ; preds = %if.end61
  store i32 0, i32* %type81, align 8, !tbaa !17
  %issuerAndSerialNumber83 = getelementptr inbounds %struct.CMS_OriginatorIdentifierOrKey_st, %struct.CMS_OriginatorIdentifierOrKey_st* %11, i64 0, i32 1, i32 0
  %call84 = tail call i32 @ossl_cms_set1_ias(%struct.CMS_IssuerAndSerialNumber_st** noundef nonnull %issuerAndSerialNumber83, %struct.x509_st* noundef nonnull %originator) #6
  %tobool85.not = icmp eq i32 %call84, 0
  br i1 %tobool85.not, label %cleanup95, label %if.end88

if.end88:                                         ; preds = %if.else80, %if.end73
  %call89 = tail call fastcc i32 @cms_kari_set_originator_private_key(%struct.CMS_KeyAgreeRecipientInfo_st* noundef nonnull %1, %struct.evp_pkey_st* noundef nonnull %originatorPrivKey) #7
  %tobool90.not.not = icmp eq i32 %call89, 0
  br i1 %tobool90.not.not, label %cleanup95, label %if.end93

if.end93:                                         ; preds = %if.end88, %if.then49
  %call94 = tail call i32 @EVP_PKEY_up_ref(%struct.evp_pkey_st* noundef %recipPubKey) #6
  %pkey = getelementptr inbounds %struct.CMS_RecipientEncryptedKey_st, %struct.CMS_RecipientEncryptedKey_st* %2, i64 0, i32 2
  store %struct.evp_pkey_st* %recipPubKey, %struct.evp_pkey_st** %pkey, align 8, !tbaa !47
  br label %cleanup95

cleanup95:                                        ; preds = %if.else80, %if.end73, %if.then64, %if.else54, %if.then49, %if.else, %if.end30, %if.then19, %if.end, %entry, %if.end88, %if.end93, %if.then15
  %retval.1 = phi i32 [ 1, %if.end93 ], [ 0, %if.end88 ], [ 0, %if.then15 ], [ 0, %entry ], [ 0, %if.end ], [ 0, %if.then19 ], [ 0, %if.end30 ], [ 0, %if.else ], [ 0, %if.then49 ], [ 0, %if.else54 ], [ 0, %if.then64 ], [ 0, %if.end73 ], [ 0, %if.else80 ]
  ret i32 %retval.1
}

declare %struct.ASN1_VALUE_st* @ASN1_item_new(%struct.ASN1_ITEM_st* noundef) local_unnamed_addr #1

declare %struct.ASN1_ITEM_st* @CMS_KeyAgreeRecipientInfo_it() local_unnamed_addr #1

declare %struct.ASN1_ITEM_st* @CMS_RecipientEncryptedKey_it() local_unnamed_addr #1

declare i32 @OPENSSL_sk_push(%struct.stack_st* noundef, i8* noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_CMS_RecipientEncryptedKey_sk_type(%struct.stack_st_CMS_RecipientEncryptedKey* noundef readnone %sk) unnamed_addr #5 {
entry:
  %0 = bitcast %struct.stack_st_CMS_RecipientEncryptedKey* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

declare void @ASN1_item_free(%struct.ASN1_VALUE_st* noundef, %struct.ASN1_ITEM_st* noundef) local_unnamed_addr #1

declare %struct.ASN1_ITEM_st* @CMS_RecipientKeyIdentifier_it() local_unnamed_addr #1

declare i32 @ossl_cms_set1_keyid(%struct.asn1_string_st** noundef, %struct.x509_st* noundef) local_unnamed_addr #1

declare i32 @ossl_cms_set1_ias(%struct.CMS_IssuerAndSerialNumber_st** noundef, %struct.x509_st* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @cms_kari_create_ephemeral_key(%struct.CMS_KeyAgreeRecipientInfo_st* nocapture noundef %kari, %struct.evp_pkey_st* noundef %pk) unnamed_addr #0 {
entry:
  %ekey = alloca %struct.evp_pkey_st*, align 8
  %0 = bitcast %struct.evp_pkey_st** %ekey to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #8
  store %struct.evp_pkey_st* null, %struct.evp_pkey_st** %ekey, align 8, !tbaa !13
  %cms_ctx = getelementptr inbounds %struct.CMS_KeyAgreeRecipientInfo_st, %struct.CMS_KeyAgreeRecipientInfo_st* %kari, i64 0, i32 7
  %1 = load %struct.CMS_CTX_st*, %struct.CMS_CTX_st** %cms_ctx, align 8, !tbaa !34
  %call = tail call %struct.ossl_lib_ctx_st* @ossl_cms_ctx_get0_libctx(%struct.CMS_CTX_st* noundef %1) #6
  %call1 = tail call i8* @ossl_cms_ctx_get0_propq(%struct.CMS_CTX_st* noundef %1) #6
  %call2 = tail call %struct.evp_pkey_ctx_st* @EVP_PKEY_CTX_new_from_pkey(%struct.ossl_lib_ctx_st* noundef %call, %struct.evp_pkey_st* noundef %pk, i8* noundef %call1) #6
  %cmp = icmp eq %struct.evp_pkey_ctx_st* %call2, null
  br i1 %cmp, label %if.then20, label %if.end

if.end:                                           ; preds = %entry
  %call3 = tail call i32 @EVP_PKEY_keygen_init(%struct.evp_pkey_ctx_st* noundef nonnull %call2) #6
  %cmp4 = icmp slt i32 %call3, 1
  br i1 %cmp4, label %if.then20, label %if.end6

if.end6:                                          ; preds = %if.end
  %call7 = call i32 @EVP_PKEY_keygen(%struct.evp_pkey_ctx_st* noundef nonnull %call2, %struct.evp_pkey_st** noundef nonnull %ekey) #6
  %cmp8 = icmp slt i32 %call7, 1
  br i1 %cmp8, label %if.then20, label %if.end10

if.end10:                                         ; preds = %if.end6
  call void @EVP_PKEY_CTX_free(%struct.evp_pkey_ctx_st* noundef nonnull %call2) #6
  %2 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %ekey, align 8, !tbaa !13
  %call11 = call %struct.evp_pkey_ctx_st* @EVP_PKEY_CTX_new_from_pkey(%struct.ossl_lib_ctx_st* noundef %call, %struct.evp_pkey_st* noundef %2, i8* noundef %call1) #6
  %cmp12 = icmp eq %struct.evp_pkey_ctx_st* %call11, null
  br i1 %cmp12, label %if.then20, label %if.end14

if.end14:                                         ; preds = %if.end10
  %call15 = call i32 @EVP_PKEY_derive_init(%struct.evp_pkey_ctx_st* noundef nonnull %call11) #6
  %cmp16 = icmp slt i32 %call15, 1
  br i1 %cmp16, label %if.then20, label %err

err:                                              ; preds = %if.end14
  %pctx19 = getelementptr inbounds %struct.CMS_KeyAgreeRecipientInfo_st, %struct.CMS_KeyAgreeRecipientInfo_st* %kari, i64 0, i32 5
  store %struct.evp_pkey_ctx_st* %call11, %struct.evp_pkey_ctx_st** %pctx19, align 8, !tbaa !33
  br label %if.end21

if.then20:                                        ; preds = %if.end14, %if.end10, %if.end6, %if.end, %entry
  %pctx.0.ph = phi %struct.evp_pkey_ctx_st* [ null, %entry ], [ %call2, %if.end ], [ %call2, %if.end6 ], [ null, %if.end10 ], [ %call11, %if.end14 ]
  call void @EVP_PKEY_CTX_free(%struct.evp_pkey_ctx_st* noundef %pctx.0.ph) #6
  br label %if.end21

if.end21:                                         ; preds = %err, %if.then20
  %rv.042 = phi i32 [ 0, %if.then20 ], [ 1, %err ]
  %3 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %ekey, align 8, !tbaa !13
  call void @EVP_PKEY_free(%struct.evp_pkey_st* noundef %3) #6
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #8
  ret i32 %rv.042
}

declare %struct.asn1_string_st* @ASN1_OCTET_STRING_new() local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @cms_kari_set_originator_private_key(%struct.CMS_KeyAgreeRecipientInfo_st* nocapture noundef %kari, %struct.evp_pkey_st* noundef %originatorPrivKey) unnamed_addr #0 {
entry:
  %cms_ctx = getelementptr inbounds %struct.CMS_KeyAgreeRecipientInfo_st, %struct.CMS_KeyAgreeRecipientInfo_st* %kari, i64 0, i32 7
  %0 = load %struct.CMS_CTX_st*, %struct.CMS_CTX_st** %cms_ctx, align 8, !tbaa !34
  %call = tail call %struct.ossl_lib_ctx_st* @ossl_cms_ctx_get0_libctx(%struct.CMS_CTX_st* noundef %0) #6
  %call1 = tail call i8* @ossl_cms_ctx_get0_propq(%struct.CMS_CTX_st* noundef %0) #6
  %call2 = tail call %struct.evp_pkey_ctx_st* @EVP_PKEY_CTX_new_from_pkey(%struct.ossl_lib_ctx_st* noundef %call, %struct.evp_pkey_st* noundef %originatorPrivKey, i8* noundef %call1) #6
  %cmp = icmp eq %struct.evp_pkey_ctx_st* %call2, null
  br i1 %cmp, label %if.then9, label %if.end

if.end:                                           ; preds = %entry
  %call3 = tail call i32 @EVP_PKEY_derive_init(%struct.evp_pkey_ctx_st* noundef nonnull %call2) #6
  %cmp4 = icmp slt i32 %call3, 1
  br i1 %cmp4, label %if.then9, label %err

err:                                              ; preds = %if.end
  %pctx7 = getelementptr inbounds %struct.CMS_KeyAgreeRecipientInfo_st, %struct.CMS_KeyAgreeRecipientInfo_st* %kari, i64 0, i32 5
  store %struct.evp_pkey_ctx_st* %call2, %struct.evp_pkey_ctx_st** %pctx7, align 8, !tbaa !33
  br label %if.end10

if.then9:                                         ; preds = %if.end, %entry
  tail call void @EVP_PKEY_CTX_free(%struct.evp_pkey_ctx_st* noundef %call2) #6
  br label %if.end10

if.end10:                                         ; preds = %err, %if.then9
  %rv.022 = phi i32 [ 0, %if.then9 ], [ 1, %err ]
  ret i32 %rv.022
}

declare i32 @EVP_PKEY_up_ref(%struct.evp_pkey_st* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_cms_RecipientInfo_kari_encrypt(%struct.CMS_ContentInfo_st* noundef %cms, %struct.CMS_RecipientInfo_st* noundef %ri) local_unnamed_addr #0 {
entry:
  %enckey = alloca i8*, align 8
  %enckeylen = alloca i64, align 8
  %type = getelementptr inbounds %struct.CMS_RecipientInfo_st, %struct.CMS_RecipientInfo_st* %ri, i64 0, i32 0
  %0 = load i32, i32* %type, align 8, !tbaa !4
  %cmp.not = icmp eq i32 %0, 1
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 486, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @__func__.ossl_cms_RecipientInfo_kari_encrypt, i64 0, i64 0)) #6
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 46, i32 noundef 181, i8* noundef null) #6
  br label %cleanup40

if.end:                                           ; preds = %entry
  %d = getelementptr inbounds %struct.CMS_RecipientInfo_st, %struct.CMS_RecipientInfo_st* %ri, i64 0, i32 1
  %kari1 = bitcast %union.anon* %d to %struct.CMS_KeyAgreeRecipientInfo_st**
  %1 = load %struct.CMS_KeyAgreeRecipientInfo_st*, %struct.CMS_KeyAgreeRecipientInfo_st** %kari1, align 8, !tbaa !9
  %recipientEncryptedKeys = getelementptr inbounds %struct.CMS_KeyAgreeRecipientInfo_st, %struct.CMS_KeyAgreeRecipientInfo_st* %1, i64 0, i32 4
  %2 = load %struct.stack_st_CMS_RecipientEncryptedKey*, %struct.stack_st_CMS_RecipientEncryptedKey** %recipientEncryptedKeys, align 8, !tbaa !15
  %call = tail call %struct.CMS_EncryptedContentInfo_st* @ossl_cms_get0_env_enc_content(%struct.CMS_ContentInfo_st* noundef %cms) #6
  %cipher = getelementptr inbounds %struct.CMS_EncryptedContentInfo_st, %struct.CMS_EncryptedContentInfo_st* %call, i64 0, i32 3
  %3 = load %struct.evp_cipher_st*, %struct.evp_cipher_st** %cipher, align 8, !tbaa !48
  %call2 = tail call fastcc i32 @cms_wrap_init(%struct.CMS_KeyAgreeRecipientInfo_st* noundef %1, %struct.evp_cipher_st* noundef %3) #7
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %cleanup40, label %if.end4

if.end4:                                          ; preds = %if.end
  %originator = getelementptr inbounds %struct.CMS_KeyAgreeRecipientInfo_st, %struct.CMS_KeyAgreeRecipientInfo_st* %1, i64 0, i32 1
  %4 = load %struct.CMS_OriginatorIdentifierOrKey_st*, %struct.CMS_OriginatorIdentifierOrKey_st** %originator, align 8, !tbaa !16
  %type5 = getelementptr inbounds %struct.CMS_OriginatorIdentifierOrKey_st, %struct.CMS_OriginatorIdentifierOrKey_st* %4, i64 0, i32 0
  %5 = load i32, i32* %type5, align 8, !tbaa !17
  %cmp6 = icmp eq i32 %5, -1
  br i1 %cmp6, label %if.then7, label %if.end18

if.then7:                                         ; preds = %if.end4
  store i32 2, i32* %type5, align 8, !tbaa !17
  %call10 = tail call %struct.ASN1_ITEM_st* @CMS_OriginatorPublicKey_it() #6
  %call11 = tail call %struct.ASN1_VALUE_st* @ASN1_item_new(%struct.ASN1_ITEM_st* noundef %call10) #6
  %d12 = getelementptr inbounds %struct.CMS_OriginatorIdentifierOrKey_st, %struct.CMS_OriginatorIdentifierOrKey_st* %4, i64 0, i32 1
  %6 = bitcast %union.anon.2* %d12 to %struct.ASN1_VALUE_st**
  store %struct.ASN1_VALUE_st* %call11, %struct.ASN1_VALUE_st** %6, align 8, !tbaa !9
  %tobool15.not = icmp eq %struct.ASN1_VALUE_st* %call11, null
  br i1 %tobool15.not, label %cleanup40, label %if.end18

if.end18:                                         ; preds = %if.then7, %if.end4
  %call19 = tail call i32 @ossl_cms_env_asn1_ctrl(%struct.CMS_RecipientInfo_st* noundef nonnull %ri, i32 noundef 0) #6
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %cleanup40, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end18
  %call23 = tail call fastcc %struct.stack_st* @ossl_check_const_CMS_RecipientEncryptedKey_sk_type(%struct.stack_st_CMS_RecipientEncryptedKey* noundef %2) #7
  %call2469 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call23) #6
  %cmp2570 = icmp sgt i32 %call2469, 0
  br i1 %cmp2570, label %for.body.lr.ph, label %cleanup40

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %7 = bitcast i8** %enckey to i8*
  %8 = bitcast i64* %enckeylen to i8*
  %pctx = getelementptr inbounds %struct.CMS_KeyAgreeRecipientInfo_st, %struct.CMS_KeyAgreeRecipientInfo_st* %1, i64 0, i32 5
  %key = getelementptr inbounds %struct.CMS_EncryptedContentInfo_st, %struct.CMS_EncryptedContentInfo_st* %call, i64 0, i32 4
  %keylen = getelementptr inbounds %struct.CMS_EncryptedContentInfo_st, %struct.CMS_EncryptedContentInfo_st* %call, i64 0, i32 5
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %if.end35
  %i.071 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end35 ]
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %7) #8
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %8) #8
  %call27 = tail call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call23, i32 noundef %i.071) #6
  %9 = load %struct.evp_pkey_ctx_st*, %struct.evp_pkey_ctx_st** %pctx, align 8, !tbaa !33
  %pkey = getelementptr inbounds i8, i8* %call27, i64 16
  %10 = bitcast i8* %pkey to %struct.evp_pkey_st**
  %11 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %10, align 8, !tbaa !47
  %call28 = tail call i32 @EVP_PKEY_derive_set_peer(%struct.evp_pkey_ctx_st* noundef %9, %struct.evp_pkey_st* noundef %11) #6
  %cmp29 = icmp slt i32 %call28, 1
  br i1 %cmp29, label %cleanup36, label %if.end31

if.end31:                                         ; preds = %for.body
  %12 = load i8*, i8** %key, align 8, !tbaa !41
  %13 = load i64, i64* %keylen, align 8, !tbaa !43
  %call32 = call fastcc i32 @cms_kek_cipher(i8** noundef nonnull %enckey, i64* noundef nonnull %enckeylen, i8* noundef %12, i64 noundef %13, %struct.CMS_KeyAgreeRecipientInfo_st* noundef nonnull %1, i32 noundef 1) #7
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %cleanup36, label %if.end35

if.end35:                                         ; preds = %if.end31
  %encryptedKey = getelementptr inbounds i8, i8* %call27, i64 8
  %14 = bitcast i8* %encryptedKey to %struct.asn1_string_st**
  %15 = load %struct.asn1_string_st*, %struct.asn1_string_st** %14, align 8, !tbaa !36
  %16 = load i8*, i8** %enckey, align 8, !tbaa !13
  %17 = load i64, i64* %enckeylen, align 8, !tbaa !44
  %conv = trunc i64 %17 to i32
  tail call void @ASN1_STRING_set0(%struct.asn1_string_st* noundef %15, i8* noundef %16, i32 noundef %conv) #6
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %8) #8
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %7) #8
  %inc = add nuw nsw i32 %i.071, 1
  %call24 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call23) #6
  %cmp25 = icmp slt i32 %inc, %call24
  br i1 %cmp25, label %for.body, label %cleanup40, !llvm.loop !49

cleanup36:                                        ; preds = %if.end31, %for.body
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %8) #8
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %7) #8
  br label %cleanup40

cleanup40:                                        ; preds = %if.end35, %for.cond.preheader, %cleanup36, %if.end18, %if.end, %if.then7, %if.then
  %retval.4 = phi i32 [ 0, %if.then ], [ 0, %cleanup36 ], [ 0, %if.then7 ], [ 0, %if.end ], [ 0, %if.end18 ], [ 1, %for.cond.preheader ], [ 1, %if.end35 ]
  ret i32 %retval.4
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @cms_wrap_init(%struct.CMS_KeyAgreeRecipientInfo_st* nocapture noundef readonly %kari, %struct.evp_cipher_st* noundef %cipher) unnamed_addr #0 {
entry:
  %kekcipher = alloca %struct.evp_cipher_st*, align 8
  %cms_ctx1 = getelementptr inbounds %struct.CMS_KeyAgreeRecipientInfo_st, %struct.CMS_KeyAgreeRecipientInfo_st* %kari, i64 0, i32 7
  %0 = load %struct.CMS_CTX_st*, %struct.CMS_CTX_st** %cms_ctx1, align 8, !tbaa !34
  %ctx2 = getelementptr inbounds %struct.CMS_KeyAgreeRecipientInfo_st, %struct.CMS_KeyAgreeRecipientInfo_st* %kari, i64 0, i32 6
  %1 = load %struct.evp_cipher_ctx_st*, %struct.evp_cipher_ctx_st** %ctx2, align 8, !tbaa !35
  %2 = bitcast %struct.evp_cipher_st** %kekcipher to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #8
  %call = tail call %struct.evp_cipher_st* @EVP_CIPHER_CTX_get0_cipher(%struct.evp_cipher_ctx_st* noundef %1) #6
  store %struct.evp_cipher_st* %call, %struct.evp_cipher_st** %kekcipher, align 8, !tbaa !13
  %cmp.not = icmp eq %struct.evp_cipher_st* %call, null
  br i1 %cmp.not, label %if.end7, label %if.then

if.then:                                          ; preds = %entry
  %call3 = tail call %struct.evp_cipher_st* @EVP_CIPHER_CTX_get0_cipher(%struct.evp_cipher_ctx_st* noundef %1) #6
  %call4 = tail call i32 @EVP_CIPHER_get_mode(%struct.evp_cipher_st* noundef %call3) #6
  %cmp5.not = icmp eq i32 %call4, 65538
  %. = zext i1 %cmp5.not to i32
  br label %cleanup

if.end7:                                          ; preds = %entry
  %cmp8 = icmp eq %struct.evp_cipher_st* %cipher, null
  br i1 %cmp8, label %cleanup, label %if.end10

if.end10:                                         ; preds = %if.end7
  %call11 = tail call i32 @EVP_CIPHER_get_key_length(%struct.evp_cipher_st* noundef nonnull %cipher) #6
  %call12 = tail call i64 @EVP_CIPHER_get_flags(%struct.evp_cipher_st* noundef nonnull %cipher) #6
  %and = and i64 %call12, 67108864
  %cmp13.not = icmp eq i64 %and, 0
  br i1 %cmp13.not, label %if.end28, label %if.then14

if.then14:                                        ; preds = %if.end10
  %call15 = tail call i32 (%struct.evp_cipher_ctx_st*, i32, i32, i8*)* @EVP_CIPHER_meth_get_ctrl(%struct.evp_cipher_st* noundef nonnull %cipher) #6
  %call16 = call i32 %call15(%struct.evp_cipher_ctx_st* noundef null, i32 noundef 41, i32 noundef 0, i8* noundef nonnull %2) #6
  %cmp17 = icmp slt i32 %call16, 1
  br i1 %cmp17, label %cleanup, label %if.end19

if.end19:                                         ; preds = %if.then14
  %3 = load %struct.evp_cipher_st*, %struct.evp_cipher_st** %kekcipher, align 8, !tbaa !13
  %cmp20.not = icmp eq %struct.evp_cipher_st* %3, null
  br i1 %cmp20.not, label %if.end28, label %if.then21

if.then21:                                        ; preds = %if.end19
  %call22 = call i32 @EVP_CIPHER_get_mode(%struct.evp_cipher_st* noundef nonnull %3) #6
  %cmp23.not = icmp eq i32 %call22, 65538
  br i1 %cmp23.not, label %if.end25, label %cleanup

if.end25:                                         ; preds = %if.then21
  %4 = load %struct.evp_cipher_st*, %struct.evp_cipher_st** %kekcipher, align 8, !tbaa !13
  %call26 = call i8* @EVP_CIPHER_get0_name(%struct.evp_cipher_st* noundef %4) #6
  br label %enc

if.end28:                                         ; preds = %if.end19, %if.end10
  %call29 = call i32 @EVP_CIPHER_get_type(%struct.evp_cipher_st* noundef nonnull %cipher) #6
  %cmp30 = icmp eq i32 %call29, 44
  br i1 %cmp30, label %enc, label %if.else

if.else:                                          ; preds = %if.end28
  %cmp32 = icmp slt i32 %call11, 17
  br i1 %cmp32, label %enc, label %if.else34

if.else34:                                        ; preds = %if.else
  %cmp35 = icmp ult i32 %call11, 25
  %.72 = select i1 %cmp35, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0)
  br label %enc

enc:                                              ; preds = %if.else34, %if.else, %if.end28, %if.end25
  %kekcipher_name.0 = phi i8* [ %call26, %if.end25 ], [ getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), %if.end28 ], [ getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), %if.else ], [ %.72, %if.else34 ]
  %call41 = call %struct.ossl_lib_ctx_st* @ossl_cms_ctx_get0_libctx(%struct.CMS_CTX_st* noundef %0) #6
  %call42 = call i8* @ossl_cms_ctx_get0_propq(%struct.CMS_CTX_st* noundef %0) #6
  %call43 = call %struct.evp_cipher_st* @EVP_CIPHER_fetch(%struct.ossl_lib_ctx_st* noundef %call41, i8* noundef %kekcipher_name.0, i8* noundef %call42) #6
  %cmp44 = icmp eq %struct.evp_cipher_st* %call43, null
  br i1 %cmp44, label %cleanup, label %if.end46

if.end46:                                         ; preds = %enc
  %call47 = call i32 @EVP_EncryptInit_ex(%struct.evp_cipher_ctx_st* noundef %1, %struct.evp_cipher_st* noundef nonnull %call43, %struct.engine_st* noundef null, i8* noundef null, i8* noundef null) #6
  call void @EVP_CIPHER_free(%struct.evp_cipher_st* noundef nonnull %call43) #6
  br label %cleanup

cleanup:                                          ; preds = %enc, %if.then21, %if.then14, %if.end7, %if.then, %if.end46
  %retval.0 = phi i32 [ %call47, %if.end46 ], [ %., %if.then ], [ 0, %if.end7 ], [ 0, %if.then14 ], [ 0, %if.then21 ], [ 0, %enc ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #8
  ret i32 %retval.0
}

declare %struct.ASN1_ITEM_st* @CMS_OriginatorPublicKey_it() local_unnamed_addr #1

declare i32 @OPENSSL_sk_num(%struct.stack_st* noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_const_CMS_RecipientEncryptedKey_sk_type(%struct.stack_st_CMS_RecipientEncryptedKey* noundef readnone %sk) unnamed_addr #5 {
entry:
  %0 = bitcast %struct.stack_st_CMS_RecipientEncryptedKey* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

declare i8* @OPENSSL_sk_value(%struct.stack_st* noundef, i32 noundef) local_unnamed_addr #1

declare void @ASN1_STRING_set0(%struct.asn1_string_st* noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

declare i32 @EVP_CIPHER_CTX_get_key_length(%struct.evp_cipher_ctx_st* noundef) local_unnamed_addr #1

declare i32 @EVP_PKEY_derive(%struct.evp_pkey_ctx_st* noundef, i8* noundef, i64* noundef) local_unnamed_addr #1

declare i32 @EVP_CipherInit_ex(%struct.evp_cipher_ctx_st* noundef, %struct.evp_cipher_st* noundef, %struct.engine_st* noundef, i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

declare i32 @EVP_CipherUpdate(%struct.evp_cipher_ctx_st* noundef, i8* noundef, i32* noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

declare i8* @CRYPTO_malloc(i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

declare void @OPENSSL_cleanse(i8* noundef, i64 noundef) local_unnamed_addr #1

declare i32 @EVP_CIPHER_CTX_reset(%struct.evp_cipher_ctx_st* noundef) local_unnamed_addr #1

declare i32 @EVP_PKEY_keygen_init(%struct.evp_pkey_ctx_st* noundef) local_unnamed_addr #1

declare i32 @EVP_PKEY_keygen(%struct.evp_pkey_ctx_st* noundef, %struct.evp_pkey_st** noundef) local_unnamed_addr #1

declare void @EVP_PKEY_free(%struct.evp_pkey_st* noundef) local_unnamed_addr #1

declare %struct.evp_cipher_st* @EVP_CIPHER_CTX_get0_cipher(%struct.evp_cipher_ctx_st* noundef) local_unnamed_addr #1

declare i32 @EVP_CIPHER_get_mode(%struct.evp_cipher_st* noundef) local_unnamed_addr #1

declare i32 @EVP_CIPHER_get_key_length(%struct.evp_cipher_st* noundef) local_unnamed_addr #1

declare i64 @EVP_CIPHER_get_flags(%struct.evp_cipher_st* noundef) local_unnamed_addr #1

declare i32 (%struct.evp_cipher_ctx_st*, i32, i32, i8*)* @EVP_CIPHER_meth_get_ctrl(%struct.evp_cipher_st* noundef) local_unnamed_addr #1

declare i8* @EVP_CIPHER_get0_name(%struct.evp_cipher_st* noundef) local_unnamed_addr #1

declare i32 @EVP_CIPHER_get_type(%struct.evp_cipher_st* noundef) local_unnamed_addr #1

declare %struct.evp_cipher_st* @EVP_CIPHER_fetch(%struct.ossl_lib_ctx_st* noundef, i8* noundef, i8* noundef) local_unnamed_addr #1

declare i32 @EVP_EncryptInit_ex(%struct.evp_cipher_ctx_st* noundef, %struct.evp_cipher_st* noundef, %struct.engine_st* noundef, i8* noundef, i8* noundef) local_unnamed_addr #1

declare void @EVP_CIPHER_free(%struct.evp_cipher_st* noundef) local_unnamed_addr #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nobuiltin nounwind "no-builtins" }
attributes #7 = { nobuiltin "no-builtins" }
attributes #8 = { nounwind }

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
!10 = !{!11, !12, i64 24}
!11 = !{!"CMS_KeyAgreeRecipientInfo_st", !6, i64 0, !12, i64 8, !12, i64 16, !12, i64 24, !12, i64 32, !12, i64 40, !12, i64 48, !12, i64 56}
!12 = !{!"any pointer", !7, i64 0}
!13 = !{!12, !12, i64 0}
!14 = !{!11, !12, i64 16}
!15 = !{!11, !12, i64 32}
!16 = !{!11, !12, i64 8}
!17 = !{!18, !6, i64 0}
!18 = !{!"CMS_OriginatorIdentifierOrKey_st", !6, i64 0, !7, i64 8}
!19 = !{!20, !12, i64 0}
!20 = !{!"CMS_IssuerAndSerialNumber_st", !12, i64 0, !12, i64 8}
!21 = !{!20, !12, i64 8}
!22 = !{!23, !12, i64 0}
!23 = !{!"CMS_OriginatorPublicKey_st", !12, i64 0, !12, i64 8}
!24 = !{!23, !12, i64 8}
!25 = !{!26, !12, i64 0}
!26 = !{!"CMS_RecipientEncryptedKey_st", !12, i64 0, !12, i64 8, !12, i64 16}
!27 = !{!28, !6, i64 0}
!28 = !{!"CMS_KeyAgreeRecipientIdentifier_st", !6, i64 0, !7, i64 8}
!29 = !{!30, !12, i64 0}
!30 = !{!"CMS_RecipientKeyIdentifier_st", !12, i64 0, !12, i64 8, !12, i64 16}
!31 = !{!30, !12, i64 8}
!32 = !{!30, !12, i64 16}
!33 = !{!11, !12, i64 40}
!34 = !{!11, !12, i64 56}
!35 = !{!11, !12, i64 48}
!36 = !{!26, !12, i64 8}
!37 = !{!38, !6, i64 0}
!38 = !{!"asn1_string_st", !6, i64 0, !6, i64 4, !12, i64 8, !39, i64 16}
!39 = !{!"long", !7, i64 0}
!40 = !{!38, !12, i64 8}
!41 = !{!42, !12, i64 32}
!42 = !{!"CMS_EncryptedContentInfo_st", !12, i64 0, !12, i64 8, !12, i64 16, !12, i64 24, !12, i64 32, !39, i64 40, !12, i64 48, !39, i64 56, !6, i64 64, !6, i64 68}
!43 = !{!42, !39, i64 40}
!44 = !{!39, !39, i64 0}
!45 = !{!6, !6, i64 0}
!46 = !{!11, !6, i64 0}
!47 = !{!26, !12, i64 16}
!48 = !{!42, !12, i64 24}
!49 = distinct !{!49, !50}
!50 = !{!"llvm.loop.mustprogress"}
