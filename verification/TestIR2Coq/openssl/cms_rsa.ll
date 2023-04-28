; ModuleID = 'crypto/cms/cms_rsa.c'
source_filename = "crypto/cms/cms_rsa.c"
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
%struct.rsa_oaep_params_st = type { %struct.X509_algor_st*, %struct.X509_algor_st*, %struct.X509_algor_st*, %struct.X509_algor_st* }
%struct.evp_md_st = type opaque
%struct.ASN1_ITEM_st = type opaque
%struct.CMS_SignerInfo_st = type { i32, %struct.CMS_SignerIdentifier_st*, %struct.X509_algor_st*, %struct.stack_st_X509_ATTRIBUTE*, %struct.X509_algor_st*, %struct.asn1_string_st*, %struct.stack_st_X509_ATTRIBUTE*, %struct.x509_st*, %struct.evp_pkey_st*, %struct.evp_md_ctx_st*, %struct.evp_pkey_ctx_st*, %struct.CMS_CTX_st* }
%struct.stack_st_X509_ATTRIBUTE = type opaque
%struct.evp_md_ctx_st = type opaque

@.str = private unnamed_addr constant [21 x i8] c"crypto/cms/cms_rsa.c\00", align 1
@__func__.ossl_cms_rsa_envelope = private unnamed_addr constant [22 x i8] c"ossl_cms_rsa_envelope\00", align 1
@__func__.ossl_cms_rsa_sign = private unnamed_addr constant [18 x i8] c"ossl_cms_rsa_sign\00", align 1
@__func__.rsa_cms_decrypt = private unnamed_addr constant [16 x i8] c"rsa_cms_decrypt\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"RSA-PSS\00", align 1
@__func__.rsa_cms_verify = private unnamed_addr constant [15 x i8] c"rsa_cms_verify\00", align 1

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_cms_rsa_envelope(%struct.CMS_RecipientInfo_st* noundef %ri, i32 noundef %decrypt) local_unnamed_addr #0 {
entry:
  switch i32 %decrypt, label %if.end4 [
    i32 1, label %if.then
    i32 0, label %if.then2
  ]

if.then:                                          ; preds = %entry
  %call = tail call fastcc i32 @rsa_cms_decrypt(%struct.CMS_RecipientInfo_st* noundef %ri) #3
  br label %return

if.then2:                                         ; preds = %entry
  %call3 = tail call fastcc i32 @rsa_cms_encrypt(%struct.CMS_RecipientInfo_st* noundef %ri) #3
  br label %return

if.end4:                                          ; preds = %entry
  tail call void @ERR_new() #4
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 185, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.ossl_cms_rsa_envelope, i64 0, i64 0)) #4
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 46, i32 noundef 125, i8* noundef null) #4
  br label %return

return:                                           ; preds = %if.end4, %if.then2, %if.then
  %retval.0 = phi i32 [ %call, %if.then ], [ %call3, %if.then2 ], [ 0, %if.end4 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @rsa_cms_decrypt(%struct.CMS_RecipientInfo_st* noundef %ri) unnamed_addr #0 {
entry:
  %cmsalg = alloca %struct.X509_algor_st*, align 8
  %0 = bitcast %struct.X509_algor_st** %cmsalg to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #5
  %call = tail call %struct.evp_pkey_ctx_st* @CMS_RecipientInfo_get0_pkey_ctx(%struct.CMS_RecipientInfo_st* noundef %ri) #4
  %cmp = icmp eq %struct.evp_pkey_ctx_st* %call, null
  br i1 %cmp, label %cleanup60, label %if.end

if.end:                                           ; preds = %entry
  %call1 = call i32 @CMS_RecipientInfo_ktri_get0_algs(%struct.CMS_RecipientInfo_st* noundef %ri, %struct.evp_pkey_st** noundef null, %struct.x509_st** noundef null, %struct.X509_algor_st** noundef nonnull %cmsalg) #4
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %cleanup60, label %if.end3

if.end3:                                          ; preds = %if.end
  %1 = load %struct.X509_algor_st*, %struct.X509_algor_st** %cmsalg, align 8, !tbaa !4
  %algorithm = getelementptr inbounds %struct.X509_algor_st, %struct.X509_algor_st* %1, i64 0, i32 0
  %2 = load %struct.asn1_object_st*, %struct.asn1_object_st** %algorithm, align 8, !tbaa !8
  %call4 = call i32 @OBJ_obj2nid(%struct.asn1_object_st* noundef %2) #4
  switch i32 %call4, label %if.then9 [
    i32 6, label %cleanup60
    i32 919, label %if.end10
  ]

if.then9:                                         ; preds = %if.end3
  call void @ERR_new() #4
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 57, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.rsa_cms_decrypt, i64 0, i64 0)) #4
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 46, i32 noundef 192, i8* noundef null) #4
  br label %cleanup60

if.end10:                                         ; preds = %if.end3
  %3 = load %struct.X509_algor_st*, %struct.X509_algor_st** %cmsalg, align 8, !tbaa !4
  %call11 = call fastcc %struct.rsa_oaep_params_st* @rsa_oaep_decode(%struct.X509_algor_st* noundef %3) #3
  %cmp12 = icmp eq %struct.rsa_oaep_params_st* %call11, null
  br i1 %cmp12, label %if.then13, label %if.end14

if.then13:                                        ; preds = %if.end10
  call void @ERR_new() #4
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 64, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.rsa_cms_decrypt, i64 0, i64 0)) #4
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 46, i32 noundef 191, i8* noundef null) #4
  br label %err

if.end14:                                         ; preds = %if.end10
  %maskHash = getelementptr inbounds %struct.rsa_oaep_params_st, %struct.rsa_oaep_params_st* %call11, i64 0, i32 3
  %4 = load %struct.X509_algor_st*, %struct.X509_algor_st** %maskHash, align 8, !tbaa !10
  %call15 = call %struct.evp_md_st* @ossl_x509_algor_get_md(%struct.X509_algor_st* noundef %4) #4
  %cmp16 = icmp eq %struct.evp_md_st* %call15, null
  br i1 %cmp16, label %err, label %if.end18

if.end18:                                         ; preds = %if.end14
  %hashFunc = getelementptr inbounds %struct.rsa_oaep_params_st, %struct.rsa_oaep_params_st* %call11, i64 0, i32 0
  %5 = load %struct.X509_algor_st*, %struct.X509_algor_st** %hashFunc, align 8, !tbaa !12
  %call19 = call %struct.evp_md_st* @ossl_x509_algor_get_md(%struct.X509_algor_st* noundef %5) #4
  %cmp20 = icmp eq %struct.evp_md_st* %call19, null
  br i1 %cmp20, label %err, label %if.end22

if.end22:                                         ; preds = %if.end18
  %pSourceFunc = getelementptr inbounds %struct.rsa_oaep_params_st, %struct.rsa_oaep_params_st* %call11, i64 0, i32 2
  %6 = load %struct.X509_algor_st*, %struct.X509_algor_st** %pSourceFunc, align 8, !tbaa !13
  %cmp23.not = icmp eq %struct.X509_algor_st* %6, null
  br i1 %cmp23.not, label %if.end42, label %if.then24

if.then24:                                        ; preds = %if.end22
  %algorithm26 = getelementptr inbounds %struct.X509_algor_st, %struct.X509_algor_st* %6, i64 0, i32 0
  %7 = load %struct.asn1_object_st*, %struct.asn1_object_st** %algorithm26, align 8, !tbaa !8
  %call27 = call i32 @OBJ_obj2nid(%struct.asn1_object_st* noundef %7) #4
  %cmp28.not = icmp eq i32 %call27, 935
  br i1 %cmp28.not, label %if.end30, label %if.then29

if.then29:                                        ; preds = %if.then24
  call void @ERR_new() #4
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 79, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.rsa_cms_decrypt, i64 0, i64 0)) #4
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 46, i32 noundef 193, i8* noundef null) #4
  br label %err

if.end30:                                         ; preds = %if.then24
  %parameter = getelementptr inbounds %struct.X509_algor_st, %struct.X509_algor_st* %6, i64 0, i32 1
  %8 = load %struct.asn1_type_st*, %struct.asn1_type_st** %parameter, align 8, !tbaa !14
  %type = getelementptr inbounds %struct.asn1_type_st, %struct.asn1_type_st* %8, i64 0, i32 0
  %9 = load i32, i32* %type, align 8, !tbaa !15
  %cmp31.not = icmp eq i32 %9, 4
  br i1 %cmp31.not, label %cleanup, label %if.then32

if.then32:                                        ; preds = %if.end30
  call void @ERR_new() #4
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 83, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.rsa_cms_decrypt, i64 0, i64 0)) #4
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 46, i32 noundef 190, i8* noundef null) #4
  br label %err

cleanup:                                          ; preds = %if.end30
  %value = getelementptr inbounds %struct.asn1_type_st, %struct.asn1_type_st* %8, i64 0, i32 1
  %octet_string = bitcast %union.anon.1* %value to %struct.asn1_string_st**
  %10 = load %struct.asn1_string_st*, %struct.asn1_string_st** %octet_string, align 8, !tbaa !18
  %data = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %10, i64 0, i32 2
  %11 = load i8*, i8** %data, align 8, !tbaa !19
  store i8* null, i8** %data, align 8, !tbaa !19
  %12 = load %struct.asn1_string_st*, %struct.asn1_string_st** %octet_string, align 8, !tbaa !18
  %length = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %12, i64 0, i32 0
  %13 = load i32, i32* %length, align 8, !tbaa !22
  br label %if.end42

if.end42:                                         ; preds = %cleanup, %if.end22
  %label.1 = phi i8* [ %11, %cleanup ], [ null, %if.end22 ]
  %labellen.1 = phi i32 [ %13, %cleanup ], [ 0, %if.end22 ]
  %call43 = call i32 @EVP_PKEY_CTX_set_rsa_padding(%struct.evp_pkey_ctx_st* noundef nonnull %call, i32 noundef 4) #4
  %cmp44 = icmp slt i32 %call43, 1
  br i1 %cmp44, label %err, label %if.end46

if.end46:                                         ; preds = %if.end42
  %call47 = call i32 @EVP_PKEY_CTX_set_rsa_oaep_md(%struct.evp_pkey_ctx_st* noundef nonnull %call, %struct.evp_md_st* noundef nonnull %call19) #4
  %cmp48 = icmp slt i32 %call47, 1
  br i1 %cmp48, label %err, label %if.end50

if.end50:                                         ; preds = %if.end46
  %call51 = call i32 @EVP_PKEY_CTX_set_rsa_mgf1_md(%struct.evp_pkey_ctx_st* noundef nonnull %call, %struct.evp_md_st* noundef nonnull %call15) #4
  %cmp52 = icmp slt i32 %call51, 1
  br i1 %cmp52, label %err, label %if.end54

if.end54:                                         ; preds = %if.end50
  %cmp55.not = icmp eq i8* %label.1, null
  br i1 %cmp55.not, label %if.end59, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end54
  %call56 = call i32 @EVP_PKEY_CTX_set0_rsa_oaep_label(%struct.evp_pkey_ctx_st* noundef nonnull %call, i8* noundef nonnull %label.1, i32 noundef %labellen.1) #4
  %cmp57 = icmp slt i32 %call56, 1
  br i1 %cmp57, label %err, label %if.end59

if.end59:                                         ; preds = %land.lhs.true, %if.end54
  br label %err

err:                                              ; preds = %if.then32, %if.then29, %land.lhs.true, %if.end50, %if.end46, %if.end42, %if.end18, %if.end14, %if.end59, %if.then13
  %rv.0 = phi i32 [ -1, %if.then13 ], [ -1, %if.end14 ], [ -1, %if.end18 ], [ -1, %if.end42 ], [ -1, %if.end46 ], [ -1, %if.end50 ], [ -1, %land.lhs.true ], [ 1, %if.end59 ], [ -1, %if.then29 ], [ -1, %if.then32 ]
  call void @RSA_OAEP_PARAMS_free(%struct.rsa_oaep_params_st* noundef %call11) #4
  br label %cleanup60

cleanup60:                                        ; preds = %if.end3, %if.end, %entry, %err, %if.then9
  %retval.0 = phi i32 [ -1, %if.then9 ], [ %rv.0, %err ], [ 0, %entry ], [ -1, %if.end ], [ 1, %if.end3 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #5
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @rsa_cms_encrypt(%struct.CMS_RecipientInfo_st* noundef %ri) unnamed_addr #0 {
entry:
  %md = alloca %struct.evp_md_st*, align 8
  %mgf1md = alloca %struct.evp_md_st*, align 8
  %os = alloca %struct.asn1_string_st*, align 8
  %alg = alloca %struct.X509_algor_st*, align 8
  %pad_mode = alloca i32, align 4
  %label = alloca i8*, align 8
  %0 = bitcast %struct.evp_md_st** %md to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #5
  %1 = bitcast %struct.evp_md_st** %mgf1md to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #5
  %2 = bitcast %struct.asn1_string_st** %os to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #5
  store %struct.asn1_string_st* null, %struct.asn1_string_st** %os, align 8, !tbaa !4
  %3 = bitcast %struct.X509_algor_st** %alg to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %3) #5
  %call = tail call %struct.evp_pkey_ctx_st* @CMS_RecipientInfo_get0_pkey_ctx(%struct.CMS_RecipientInfo_st* noundef %ri) #4
  %4 = bitcast i32* %pad_mode to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %4) #5
  store i32 1, i32* %pad_mode, align 4, !tbaa !23
  %5 = bitcast i8** %label to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %5) #5
  %call1 = call i32 @CMS_RecipientInfo_ktri_get0_algs(%struct.CMS_RecipientInfo_st* noundef %ri, %struct.evp_pkey_st** noundef null, %struct.x509_st** noundef null, %struct.X509_algor_st** noundef nonnull %alg) #4
  %cmp = icmp slt i32 %call1, 1
  br i1 %cmp, label %cleanup66, label %if.end

if.end:                                           ; preds = %entry
  %cmp2.not = icmp eq %struct.evp_pkey_ctx_st* %call, null
  br i1 %cmp2.not, label %if.then10, label %if.then3

if.then3:                                         ; preds = %if.end
  %call4 = call i32 @EVP_PKEY_CTX_get_rsa_padding(%struct.evp_pkey_ctx_st* noundef nonnull %call, i32* noundef nonnull %pad_mode) #4
  %cmp5 = icmp slt i32 %call4, 1
  br i1 %cmp5, label %cleanup66, label %if.end8

if.end8:                                          ; preds = %if.then3
  %.pre = load i32, i32* %pad_mode, align 4, !tbaa !23
  switch i32 %.pre, label %cleanup66 [
    i32 1, label %if.then10
    i32 4, label %if.end16
  ]

if.then10:                                        ; preds = %if.end, %if.end8
  %6 = load %struct.X509_algor_st*, %struct.X509_algor_st** %alg, align 8, !tbaa !4
  %call11 = call %struct.asn1_object_st* @OBJ_nid2obj(i32 noundef 6) #4
  %call12 = call i32 @X509_ALGOR_set0(%struct.X509_algor_st* noundef %6, %struct.asn1_object_st* noundef %call11, i32 noundef 5, i8* noundef null) #4
  br label %cleanup66

if.end16:                                         ; preds = %if.end8
  %call17 = call i32 @EVP_PKEY_CTX_get_rsa_oaep_md(%struct.evp_pkey_ctx_st* noundef nonnull %call, %struct.evp_md_st** noundef nonnull %md) #4
  %cmp18 = icmp slt i32 %call17, 1
  br i1 %cmp18, label %err, label %if.end20

if.end20:                                         ; preds = %if.end16
  %call21 = call i32 @EVP_PKEY_CTX_get_rsa_mgf1_md(%struct.evp_pkey_ctx_st* noundef nonnull %call, %struct.evp_md_st** noundef nonnull %mgf1md) #4
  %cmp22 = icmp slt i32 %call21, 1
  br i1 %cmp22, label %err, label %if.end24

if.end24:                                         ; preds = %if.end20
  %call25 = call i32 @EVP_PKEY_CTX_get0_rsa_oaep_label(%struct.evp_pkey_ctx_st* noundef nonnull %call, i8** noundef nonnull %label) #4
  %cmp26 = icmp slt i32 %call25, 0
  br i1 %cmp26, label %err, label %if.end28

if.end28:                                         ; preds = %if.end24
  %call29 = call %struct.rsa_oaep_params_st* @RSA_OAEP_PARAMS_new() #4
  %cmp30 = icmp eq %struct.rsa_oaep_params_st* %call29, null
  br i1 %cmp30, label %err, label %if.end32

if.end32:                                         ; preds = %if.end28
  %hashFunc = getelementptr inbounds %struct.rsa_oaep_params_st, %struct.rsa_oaep_params_st* %call29, i64 0, i32 0
  %7 = load %struct.evp_md_st*, %struct.evp_md_st** %md, align 8, !tbaa !4
  %call33 = call i32 @ossl_x509_algor_new_from_md(%struct.X509_algor_st** noundef nonnull %hashFunc, %struct.evp_md_st* noundef %7) #4
  %tobool.not = icmp eq i32 %call33, 0
  br i1 %tobool.not, label %err, label %if.end35

if.end35:                                         ; preds = %if.end32
  %maskGenFunc = getelementptr inbounds %struct.rsa_oaep_params_st, %struct.rsa_oaep_params_st* %call29, i64 0, i32 1
  %8 = load %struct.evp_md_st*, %struct.evp_md_st** %mgf1md, align 8, !tbaa !4
  %call36 = call i32 @ossl_x509_algor_md_to_mgf1(%struct.X509_algor_st** noundef nonnull %maskGenFunc, %struct.evp_md_st* noundef %8) #4
  %tobool37.not = icmp eq i32 %call36, 0
  br i1 %tobool37.not, label %err, label %if.end39

if.end39:                                         ; preds = %if.end35
  %cmp40.not = icmp eq i32 %call25, 0
  br i1 %cmp40.not, label %if.end58, label %if.then41

if.then41:                                        ; preds = %if.end39
  %call42 = call %struct.X509_algor_st* @X509_ALGOR_new() #4
  %pSourceFunc = getelementptr inbounds %struct.rsa_oaep_params_st, %struct.rsa_oaep_params_st* %call29, i64 0, i32 2
  store %struct.X509_algor_st* %call42, %struct.X509_algor_st** %pSourceFunc, align 8, !tbaa !13
  %cmp44 = icmp eq %struct.X509_algor_st* %call42, null
  br i1 %cmp44, label %err, label %if.end46

if.end46:                                         ; preds = %if.then41
  %call47 = call %struct.asn1_string_st* @ASN1_OCTET_STRING_new() #4
  %cmp48 = icmp eq %struct.asn1_string_st* %call47, null
  br i1 %cmp48, label %err, label %if.end50

if.end50:                                         ; preds = %if.end46
  %9 = load i8*, i8** %label, align 8, !tbaa !4
  %call51 = call i32 @ASN1_OCTET_STRING_set(%struct.asn1_string_st* noundef nonnull %call47, i8* noundef %9, i32 noundef %call25) #4
  %tobool52.not = icmp eq i32 %call51, 0
  br i1 %tobool52.not, label %if.then53, label %cleanup

if.then53:                                        ; preds = %if.end50
  call void @ASN1_OCTET_STRING_free(%struct.asn1_string_st* noundef nonnull %call47) #4
  br label %err

cleanup:                                          ; preds = %if.end50
  %10 = load %struct.X509_algor_st*, %struct.X509_algor_st** %pSourceFunc, align 8, !tbaa !13
  %call56 = call %struct.asn1_object_st* @OBJ_nid2obj(i32 noundef 935) #4
  %11 = bitcast %struct.asn1_string_st* %call47 to i8*
  %call57 = call i32 @X509_ALGOR_set0(%struct.X509_algor_st* noundef %10, %struct.asn1_object_st* noundef %call56, i32 noundef 4, i8* noundef nonnull %11) #4
  br label %if.end58

if.end58:                                         ; preds = %cleanup, %if.end39
  %12 = bitcast %struct.rsa_oaep_params_st* %call29 to i8*
  %call59 = call %struct.ASN1_ITEM_st* @RSA_OAEP_PARAMS_it() #4
  %call60 = call %struct.asn1_string_st* @ASN1_item_pack(i8* noundef nonnull %12, %struct.ASN1_ITEM_st* noundef %call59, %struct.asn1_string_st** noundef nonnull %os) #4
  %tobool61.not = icmp eq %struct.asn1_string_st* %call60, null
  br i1 %tobool61.not, label %err, label %if.end63

if.end63:                                         ; preds = %if.end58
  %13 = load %struct.X509_algor_st*, %struct.X509_algor_st** %alg, align 8, !tbaa !4
  %call64 = call %struct.asn1_object_st* @OBJ_nid2obj(i32 noundef 919) #4
  %14 = bitcast %struct.asn1_string_st** %os to i8**
  %15 = load i8*, i8** %14, align 8, !tbaa !4
  %call65 = call i32 @X509_ALGOR_set0(%struct.X509_algor_st* noundef %13, %struct.asn1_object_st* noundef %call64, i32 noundef 16, i8* noundef %15) #4
  store %struct.asn1_string_st* null, %struct.asn1_string_st** %os, align 8, !tbaa !4
  br label %err

err:                                              ; preds = %if.end46, %if.then41, %if.then53, %if.end58, %if.end35, %if.end32, %if.end28, %if.end24, %if.end20, %if.end16, %if.end63
  %rv.0 = phi i32 [ 0, %if.end16 ], [ 0, %if.end20 ], [ 0, %if.end24 ], [ 0, %if.end28 ], [ 1, %if.end63 ], [ 0, %if.end58 ], [ 0, %if.end35 ], [ 0, %if.end32 ], [ 0, %if.then53 ], [ 0, %if.then41 ], [ 0, %if.end46 ]
  %oaep.0 = phi %struct.rsa_oaep_params_st* [ null, %if.end16 ], [ null, %if.end20 ], [ null, %if.end24 ], [ null, %if.end28 ], [ %call29, %if.end63 ], [ %call29, %if.end58 ], [ %call29, %if.end35 ], [ %call29, %if.end32 ], [ %call29, %if.then53 ], [ %call29, %if.then41 ], [ %call29, %if.end46 ]
  call void @RSA_OAEP_PARAMS_free(%struct.rsa_oaep_params_st* noundef %oaep.0) #4
  %16 = load %struct.asn1_string_st*, %struct.asn1_string_st** %os, align 8, !tbaa !4
  call void @ASN1_STRING_free(%struct.asn1_string_st* noundef %16) #4
  br label %cleanup66

cleanup66:                                        ; preds = %if.end8, %if.then3, %entry, %err, %if.then10
  %retval.0 = phi i32 [ 1, %if.then10 ], [ %rv.0, %err ], [ 0, %entry ], [ 0, %if.then3 ], [ 0, %if.end8 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %5) #5
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %4) #5
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3) #5
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #5
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #5
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #5
  ret i32 %retval.0
}

declare void @ERR_new() local_unnamed_addr #1

declare void @ERR_set_debug(i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #1

declare void @ERR_set_error(i32 noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_cms_rsa_sign(%struct.CMS_SignerInfo_st* noundef %si, i32 noundef %verify) local_unnamed_addr #0 {
entry:
  switch i32 %verify, label %if.end4 [
    i32 1, label %if.then
    i32 0, label %if.then2
  ]

if.then:                                          ; preds = %entry
  %call = tail call fastcc i32 @rsa_cms_verify(%struct.CMS_SignerInfo_st* noundef %si) #3
  br label %return

if.then2:                                         ; preds = %entry
  %call3 = tail call fastcc i32 @rsa_cms_sign(%struct.CMS_SignerInfo_st* noundef %si) #3
  br label %return

if.end4:                                          ; preds = %entry
  tail call void @ERR_new() #4
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 251, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.ossl_cms_rsa_sign, i64 0, i64 0)) #4
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 46, i32 noundef 125, i8* noundef null) #4
  br label %return

return:                                           ; preds = %if.end4, %if.then2, %if.then
  %retval.0 = phi i32 [ %call, %if.then ], [ %call3, %if.then2 ], [ 0, %if.end4 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @rsa_cms_verify(%struct.CMS_SignerInfo_st* noundef %si) unnamed_addr #0 {
entry:
  %nid2 = alloca i32, align 4
  %alg = alloca %struct.X509_algor_st*, align 8
  %0 = bitcast i32* %nid2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #5
  %1 = bitcast %struct.X509_algor_st** %alg to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #5
  %call = tail call %struct.evp_pkey_ctx_st* @CMS_SignerInfo_get0_pkey_ctx(%struct.CMS_SignerInfo_st* noundef %si) #4
  %call1 = tail call %struct.evp_pkey_st* @EVP_PKEY_CTX_get0_pkey(%struct.evp_pkey_ctx_st* noundef %call) #4
  call void @CMS_SignerInfo_get0_algs(%struct.CMS_SignerInfo_st* noundef %si, %struct.evp_pkey_st** noundef null, %struct.x509_st** noundef null, %struct.X509_algor_st** noundef null, %struct.X509_algor_st** noundef nonnull %alg) #4
  %2 = load %struct.X509_algor_st*, %struct.X509_algor_st** %alg, align 8, !tbaa !4
  %algorithm = getelementptr inbounds %struct.X509_algor_st, %struct.X509_algor_st* %2, i64 0, i32 0
  %3 = load %struct.asn1_object_st*, %struct.asn1_object_st** %algorithm, align 8, !tbaa !8
  %call2 = call i32 @OBJ_obj2nid(%struct.asn1_object_st* noundef %3) #4
  %cmp = icmp eq i32 %call2, 912
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load %struct.X509_algor_st*, %struct.X509_algor_st** %alg, align 8, !tbaa !4
  %call3 = call i32 @ossl_rsa_pss_to_ctx(%struct.evp_md_ctx_st* noundef null, %struct.evp_pkey_ctx_st* noundef %call, %struct.X509_algor_st* noundef %4, %struct.evp_pkey_st* noundef null) #4
  %cmp4 = icmp sgt i32 %call3, 0
  br label %cleanup

if.end:                                           ; preds = %entry
  %call5 = call i32 @EVP_PKEY_is_a(%struct.evp_pkey_st* noundef %call1, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0)) #4
  %tobool.not = icmp eq i32 %call5, 0
  br i1 %tobool.not, label %if.end7, label %if.then6

if.then6:                                         ; preds = %if.end
  call void @ERR_new() #4
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 228, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__func__.rsa_cms_verify, i64 0, i64 0)) #4
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 4, i32 noundef 144, i8* noundef null) #4
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %cmp8 = icmp eq i32 %call2, 6
  br i1 %cmp8, label %cleanup, label %if.end11

if.end11:                                         ; preds = %if.end7
  %call12 = call i32 @OBJ_find_sigid_algs(i32 noundef %call2, i32* noundef null, i32* noundef nonnull %nid2) #4
  %tobool13 = icmp ne i32 %call12, 0
  %5 = load i32, i32* %nid2, align 4
  %cmp15 = icmp eq i32 %5, 6
  %or.cond = select i1 %tobool13, i1 %cmp15, i1 false
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %if.end7, %if.then6, %if.then
  %retval.0.shrunk = phi i1 [ %cmp4, %if.then ], [ false, %if.then6 ], [ true, %if.end7 ], [ %or.cond, %if.end11 ]
  %retval.0 = zext i1 %retval.0.shrunk to i32
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #5
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #5
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @rsa_cms_sign(%struct.CMS_SignerInfo_st* noundef %si) unnamed_addr #0 {
entry:
  %pad_mode = alloca i32, align 4
  %alg = alloca %struct.X509_algor_st*, align 8
  %0 = bitcast i32* %pad_mode to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #5
  store i32 1, i32* %pad_mode, align 4, !tbaa !23
  %1 = bitcast %struct.X509_algor_st** %alg to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #5
  %call = tail call %struct.evp_pkey_ctx_st* @CMS_SignerInfo_get0_pkey_ctx(%struct.CMS_SignerInfo_st* noundef %si) #4
  call void @CMS_SignerInfo_get0_algs(%struct.CMS_SignerInfo_st* noundef %si, %struct.evp_pkey_st** noundef null, %struct.x509_st** noundef null, %struct.X509_algor_st** noundef null, %struct.X509_algor_st** noundef nonnull %alg) #4
  %cmp.not = icmp eq %struct.evp_pkey_ctx_st* %call, null
  br i1 %cmp.not, label %if.then6, label %if.then

if.then:                                          ; preds = %entry
  %call1 = call i32 @EVP_PKEY_CTX_get_rsa_padding(%struct.evp_pkey_ctx_st* noundef nonnull %call, i32* noundef nonnull %pad_mode) #4
  %cmp2 = icmp slt i32 %call1, 1
  br i1 %cmp2, label %cleanup, label %if.end4

if.end4:                                          ; preds = %if.then
  %.pre = load i32, i32* %pad_mode, align 4, !tbaa !23
  switch i32 %.pre, label %cleanup [
    i32 1, label %if.then6
    i32 6, label %if.end12
  ]

if.then6:                                         ; preds = %entry, %if.end4
  %2 = load %struct.X509_algor_st*, %struct.X509_algor_st** %alg, align 8, !tbaa !4
  %call7 = call %struct.asn1_object_st* @OBJ_nid2obj(i32 noundef 6) #4
  %call8 = call i32 @X509_ALGOR_set0(%struct.X509_algor_st* noundef %2, %struct.asn1_object_st* noundef %call7, i32 noundef 5, i8* noundef null) #4
  br label %cleanup

if.end12:                                         ; preds = %if.end4
  %call13 = call %struct.asn1_string_st* @ossl_rsa_ctx_to_pss_string(%struct.evp_pkey_ctx_st* noundef nonnull %call) #4
  %cmp14 = icmp eq %struct.asn1_string_st* %call13, null
  br i1 %cmp14, label %cleanup, label %if.end16

if.end16:                                         ; preds = %if.end12
  %3 = load %struct.X509_algor_st*, %struct.X509_algor_st** %alg, align 8, !tbaa !4
  %call17 = call %struct.asn1_object_st* @OBJ_nid2obj(i32 noundef 912) #4
  %4 = bitcast %struct.asn1_string_st* %call13 to i8*
  %call18 = call i32 @X509_ALGOR_set0(%struct.X509_algor_st* noundef %3, %struct.asn1_object_st* noundef %call17, i32 noundef 16, i8* noundef nonnull %4) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %if.end4, %if.then, %if.end16, %if.then6
  %retval.0 = phi i32 [ 1, %if.then6 ], [ 1, %if.end16 ], [ 0, %if.then ], [ 0, %if.end4 ], [ 0, %if.end12 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #5
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #5
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

declare %struct.evp_pkey_ctx_st* @CMS_RecipientInfo_get0_pkey_ctx(%struct.CMS_RecipientInfo_st* noundef) local_unnamed_addr #1

declare i32 @CMS_RecipientInfo_ktri_get0_algs(%struct.CMS_RecipientInfo_st* noundef, %struct.evp_pkey_st** noundef, %struct.x509_st** noundef, %struct.X509_algor_st** noundef) local_unnamed_addr #1

declare i32 @OBJ_obj2nid(%struct.asn1_object_st* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.rsa_oaep_params_st* @rsa_oaep_decode(%struct.X509_algor_st* nocapture noundef readonly %alg) unnamed_addr #0 {
entry:
  %call = tail call %struct.ASN1_ITEM_st* @RSA_OAEP_PARAMS_it() #4
  %parameter = getelementptr inbounds %struct.X509_algor_st, %struct.X509_algor_st* %alg, i64 0, i32 1
  %0 = load %struct.asn1_type_st*, %struct.asn1_type_st** %parameter, align 8, !tbaa !14
  %call1 = tail call i8* @ASN1_TYPE_unpack_sequence(%struct.ASN1_ITEM_st* noundef %call, %struct.asn1_type_st* noundef %0) #4
  %1 = bitcast i8* %call1 to %struct.rsa_oaep_params_st*
  %cmp = icmp eq i8* %call1, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %maskGenFunc = getelementptr inbounds i8, i8* %call1, i64 8
  %2 = bitcast i8* %maskGenFunc to %struct.X509_algor_st**
  %3 = load %struct.X509_algor_st*, %struct.X509_algor_st** %2, align 8, !tbaa !24
  %cmp2.not = icmp eq %struct.X509_algor_st* %3, null
  br i1 %cmp2.not, label %cleanup, label %if.then3

if.then3:                                         ; preds = %if.end
  %call5 = tail call %struct.X509_algor_st* @ossl_x509_algor_mgf1_decode(%struct.X509_algor_st* noundef nonnull %3) #4
  %maskHash = getelementptr inbounds i8, i8* %call1, i64 24
  %4 = bitcast i8* %maskHash to %struct.X509_algor_st**
  store %struct.X509_algor_st* %call5, %struct.X509_algor_st** %4, align 8, !tbaa !10
  %cmp7 = icmp eq %struct.X509_algor_st* %call5, null
  br i1 %cmp7, label %if.then8, label %cleanup

if.then8:                                         ; preds = %if.then3
  tail call void @RSA_OAEP_PARAMS_free(%struct.rsa_oaep_params_st* noundef nonnull %1) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then3, %entry, %if.then8
  %retval.0 = phi %struct.rsa_oaep_params_st* [ null, %if.then8 ], [ null, %entry ], [ %1, %if.then3 ], [ %1, %if.end ]
  ret %struct.rsa_oaep_params_st* %retval.0
}

declare %struct.evp_md_st* @ossl_x509_algor_get_md(%struct.X509_algor_st* noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

declare i32 @EVP_PKEY_CTX_set_rsa_padding(%struct.evp_pkey_ctx_st* noundef, i32 noundef) local_unnamed_addr #1

declare i32 @EVP_PKEY_CTX_set_rsa_oaep_md(%struct.evp_pkey_ctx_st* noundef, %struct.evp_md_st* noundef) local_unnamed_addr #1

declare i32 @EVP_PKEY_CTX_set_rsa_mgf1_md(%struct.evp_pkey_ctx_st* noundef, %struct.evp_md_st* noundef) local_unnamed_addr #1

declare i32 @EVP_PKEY_CTX_set0_rsa_oaep_label(%struct.evp_pkey_ctx_st* noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

declare void @RSA_OAEP_PARAMS_free(%struct.rsa_oaep_params_st* noundef) local_unnamed_addr #1

declare i8* @ASN1_TYPE_unpack_sequence(%struct.ASN1_ITEM_st* noundef, %struct.asn1_type_st* noundef) local_unnamed_addr #1

declare %struct.ASN1_ITEM_st* @RSA_OAEP_PARAMS_it() local_unnamed_addr #1

declare %struct.X509_algor_st* @ossl_x509_algor_mgf1_decode(%struct.X509_algor_st* noundef) local_unnamed_addr #1

declare i32 @EVP_PKEY_CTX_get_rsa_padding(%struct.evp_pkey_ctx_st* noundef, i32* noundef) local_unnamed_addr #1

declare i32 @X509_ALGOR_set0(%struct.X509_algor_st* noundef, %struct.asn1_object_st* noundef, i32 noundef, i8* noundef) local_unnamed_addr #1

declare %struct.asn1_object_st* @OBJ_nid2obj(i32 noundef) local_unnamed_addr #1

declare i32 @EVP_PKEY_CTX_get_rsa_oaep_md(%struct.evp_pkey_ctx_st* noundef, %struct.evp_md_st** noundef) local_unnamed_addr #1

declare i32 @EVP_PKEY_CTX_get_rsa_mgf1_md(%struct.evp_pkey_ctx_st* noundef, %struct.evp_md_st** noundef) local_unnamed_addr #1

declare i32 @EVP_PKEY_CTX_get0_rsa_oaep_label(%struct.evp_pkey_ctx_st* noundef, i8** noundef) local_unnamed_addr #1

declare %struct.rsa_oaep_params_st* @RSA_OAEP_PARAMS_new() local_unnamed_addr #1

declare i32 @ossl_x509_algor_new_from_md(%struct.X509_algor_st** noundef, %struct.evp_md_st* noundef) local_unnamed_addr #1

declare i32 @ossl_x509_algor_md_to_mgf1(%struct.X509_algor_st** noundef, %struct.evp_md_st* noundef) local_unnamed_addr #1

declare %struct.X509_algor_st* @X509_ALGOR_new() local_unnamed_addr #1

declare %struct.asn1_string_st* @ASN1_OCTET_STRING_new() local_unnamed_addr #1

declare i32 @ASN1_OCTET_STRING_set(%struct.asn1_string_st* noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

declare void @ASN1_OCTET_STRING_free(%struct.asn1_string_st* noundef) local_unnamed_addr #1

declare %struct.asn1_string_st* @ASN1_item_pack(i8* noundef, %struct.ASN1_ITEM_st* noundef, %struct.asn1_string_st** noundef) local_unnamed_addr #1

declare void @ASN1_STRING_free(%struct.asn1_string_st* noundef) local_unnamed_addr #1

declare %struct.evp_pkey_ctx_st* @CMS_SignerInfo_get0_pkey_ctx(%struct.CMS_SignerInfo_st* noundef) local_unnamed_addr #1

declare %struct.evp_pkey_st* @EVP_PKEY_CTX_get0_pkey(%struct.evp_pkey_ctx_st* noundef) local_unnamed_addr #1

declare void @CMS_SignerInfo_get0_algs(%struct.CMS_SignerInfo_st* noundef, %struct.evp_pkey_st** noundef, %struct.x509_st** noundef, %struct.X509_algor_st** noundef, %struct.X509_algor_st** noundef) local_unnamed_addr #1

declare i32 @ossl_rsa_pss_to_ctx(%struct.evp_md_ctx_st* noundef, %struct.evp_pkey_ctx_st* noundef, %struct.X509_algor_st* noundef, %struct.evp_pkey_st* noundef) local_unnamed_addr #1

declare i32 @EVP_PKEY_is_a(%struct.evp_pkey_st* noundef, i8* noundef) local_unnamed_addr #1

declare i32 @OBJ_find_sigid_algs(i32 noundef, i32* noundef, i32* noundef) local_unnamed_addr #1

declare %struct.asn1_string_st* @ossl_rsa_ctx_to_pss_string(%struct.evp_pkey_ctx_st* noundef) local_unnamed_addr #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #3 = { nobuiltin "no-builtins" }
attributes #4 = { nobuiltin nounwind "no-builtins" }
attributes #5 = { nounwind }

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
!8 = !{!9, !5, i64 0}
!9 = !{!"X509_algor_st", !5, i64 0, !5, i64 8}
!10 = !{!11, !5, i64 24}
!11 = !{!"rsa_oaep_params_st", !5, i64 0, !5, i64 8, !5, i64 16, !5, i64 24}
!12 = !{!11, !5, i64 0}
!13 = !{!11, !5, i64 16}
!14 = !{!9, !5, i64 8}
!15 = !{!16, !17, i64 0}
!16 = !{!"asn1_type_st", !17, i64 0, !6, i64 8}
!17 = !{!"int", !6, i64 0}
!18 = !{!6, !6, i64 0}
!19 = !{!20, !5, i64 8}
!20 = !{!"asn1_string_st", !17, i64 0, !17, i64 4, !5, i64 8, !21, i64 16}
!21 = !{!"long", !6, i64 0}
!22 = !{!20, !17, i64 0}
!23 = !{!17, !17, i64 0}
!24 = !{!11, !5, i64 8}
