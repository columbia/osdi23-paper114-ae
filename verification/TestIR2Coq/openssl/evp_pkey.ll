; ModuleID = 'crypto/evp/evp_pkey.c'
source_filename = "crypto/evp/evp_pkey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evp_pkey_st = type { i32, i32, %struct.evp_pkey_asn1_method_st*, %struct.engine_st*, %struct.engine_st*, %union.legacy_pkey_st, %union.legacy_pkey_st, i32, i8*, %struct.stack_st_X509_ATTRIBUTE*, i32, i8, %struct.crypto_ex_data_st, %struct.evp_keymgmt_st*, i8*, i64, %struct.stack_st_OP_CACHE_ELEM*, i64, %struct.anon }
%struct.evp_pkey_asn1_method_st = type { i32, i32, i64, i8*, i8*, i32 (%struct.evp_pkey_st*, %struct.X509_pubkey_st*)*, i32 (%struct.X509_pubkey_st*, %struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*, %struct.evp_pkey_st*)*, i32 (%struct.bio_st*, %struct.evp_pkey_st*, i32, %struct.asn1_pctx_st*)*, i32 (%struct.evp_pkey_st*, %struct.pkcs8_priv_key_info_st*)*, i32 (%struct.pkcs8_priv_key_info_st*, %struct.evp_pkey_st*)*, i32 (%struct.bio_st*, %struct.evp_pkey_st*, i32, %struct.asn1_pctx_st*)*, i32 (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*, i8**, i32)*, i32 (%struct.evp_pkey_st*, i8**)*, i32 (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*, %struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*, %struct.evp_pkey_st*)*, i32 (%struct.bio_st*, %struct.evp_pkey_st*, i32, %struct.asn1_pctx_st*)*, i32 (%struct.bio_st*, %struct.X509_algor_st*, %struct.asn1_string_st*, i32, %struct.asn1_pctx_st*)*, void (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*, i32, i64, i8*)*, i32 (%struct.evp_pkey_st*, i8**, i32)*, i32 (%struct.evp_pkey_st*, i8**)*, i32 (%struct.evp_md_ctx_st*, %struct.ASN1_ITEM_st*, i8*, %struct.X509_algor_st*, %struct.asn1_string_st*, %struct.evp_pkey_st*)*, i32 (%struct.evp_md_ctx_st*, %struct.ASN1_ITEM_st*, i8*, %struct.X509_algor_st*, %struct.X509_algor_st*, %struct.asn1_string_st*)*, i32 (%struct.x509_sig_info_st*, %struct.X509_algor_st*, %struct.asn1_string_st*)*, i32 (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*, i8*, i64)*, i32 (%struct.evp_pkey_st*, i8*, i64)*, i32 (%struct.evp_pkey_st*, i8*, i64*)*, i32 (%struct.evp_pkey_st*, i8*, i64*)*, i64 (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*, i8*, i32 (i8*, i32, %struct.ossl_param_st*)*, %struct.ossl_lib_ctx_st*, i8*)*, i32 (%struct.ossl_param_st*, i8*)*, i32 (%struct.evp_pkey_st*, %struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*, %struct.pkcs8_priv_key_info_st*, %struct.ossl_lib_ctx_st*, i8*)* }
%struct.X509_pubkey_st = type opaque
%struct.bio_st = type opaque
%struct.asn1_pctx_st = type { i64, i64, i64, i64, i64 }
%struct.X509_algor_st = type { %struct.asn1_object_st*, %struct.asn1_type_st* }
%struct.asn1_object_st = type { i8*, i8*, i32, i32, i8*, i32 }
%struct.asn1_type_st = type { i32, %union.anon }
%union.anon = type { i8* }
%struct.asn1_string_st = type { i32, i32, i8*, i64 }
%struct.evp_md_ctx_st = type opaque
%struct.ASN1_ITEM_st = type opaque
%struct.x509_sig_info_st = type { i32, i32, i32, i32 }
%struct.ossl_param_st = type { i8*, i32, i8*, i64, i64 }
%struct.engine_st = type opaque
%union.legacy_pkey_st = type { i8* }
%struct.stack_st_X509_ATTRIBUTE = type opaque
%struct.crypto_ex_data_st = type { %struct.ossl_lib_ctx_st*, %struct.stack_st_void* }
%struct.stack_st_void = type opaque
%struct.evp_keymgmt_st = type opaque
%struct.stack_st_OP_CACHE_ELEM = type opaque
%struct.anon = type { i32, i32, i32 }
%struct.pkcs8_priv_key_info_st = type { %struct.asn1_string_st*, %struct.X509_algor_st*, %struct.asn1_string_st*, %struct.stack_st_X509_ATTRIBUTE* }
%struct.ossl_lib_ctx_st = type opaque
%struct.ossl_decoder_ctx_st = type opaque
%struct.ossl_encoder_ctx_st = type opaque
%struct.x509_attributes_st = type opaque
%struct.ossl_provider_st = type opaque

@.str = private unnamed_addr constant [22 x i8] c"crypto/evp/evp_pkey.c\00", align 1
@__func__.evp_pkcs82pkey_legacy = private unnamed_addr constant [22 x i8] c"evp_pkcs82pkey_legacy\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"TYPE=%s\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"DER\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"PrivateKeyInfo\00", align 1
@__func__.EVP_PKEY2PKCS8 = private unnamed_addr constant [15 x i8] c"EVP_PKEY2PKCS8\00", align 1

; Function Attrs: noinline nounwind uwtable
define %struct.evp_pkey_st* @evp_pkcs82pkey_legacy(%struct.pkcs8_priv_key_info_st* noundef %p8, %struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef %propq) local_unnamed_addr #0 {
entry:
  %algoid = alloca %struct.asn1_object_st*, align 8
  %obj_tmp = alloca [80 x i8], align 16
  %0 = bitcast %struct.asn1_object_st** %algoid to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #3
  %1 = getelementptr inbounds [80 x i8], [80 x i8]* %obj_tmp, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %1) #3
  %call = call i32 @PKCS8_pkey_get0(%struct.asn1_object_st** noundef nonnull %algoid, i8** noundef null, i32* noundef null, %struct.X509_algor_st** noundef null, %struct.pkcs8_priv_key_info_st* noundef %p8) #4
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call1 = call %struct.evp_pkey_st* @EVP_PKEY_new() #4
  %cmp = icmp eq %struct.evp_pkey_st* %call1, null
  br i1 %cmp, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  call void @ERR_new() #4
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 35, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.evp_pkcs82pkey_legacy, i64 0, i64 0)) #4
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 6, i32 noundef 786688, i8* noundef null) #4
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %2 = load %struct.asn1_object_st*, %struct.asn1_object_st** %algoid, align 8, !tbaa !4
  %call4 = call i32 @OBJ_obj2nid(%struct.asn1_object_st* noundef %2) #4
  %call5 = call i32 @EVP_PKEY_set_type(%struct.evp_pkey_st* noundef nonnull %call1, i32 noundef %call4) #4
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.then7, label %if.end10

if.then7:                                         ; preds = %if.end3
  %3 = load %struct.asn1_object_st*, %struct.asn1_object_st** %algoid, align 8, !tbaa !4
  %call8 = call i32 @i2t_ASN1_OBJECT(i8* noundef nonnull %1, i32 noundef 80, %struct.asn1_object_st* noundef %3) #4
  call void @ERR_new() #4
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 41, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.evp_pkcs82pkey_legacy, i64 0, i64 0)) #4
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 6, i32 noundef 118, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* noundef nonnull %1) #4
  br label %error

if.end10:                                         ; preds = %if.end3
  %ameth = getelementptr inbounds %struct.evp_pkey_st, %struct.evp_pkey_st* %call1, i64 0, i32 2
  %4 = load %struct.evp_pkey_asn1_method_st*, %struct.evp_pkey_asn1_method_st** %ameth, align 8, !tbaa !8
  %priv_decode_ex = getelementptr inbounds %struct.evp_pkey_asn1_method_st, %struct.evp_pkey_asn1_method_st* %4, i64 0, i32 40
  %5 = load i32 (%struct.evp_pkey_st*, %struct.pkcs8_priv_key_info_st*, %struct.ossl_lib_ctx_st*, i8*)*, i32 (%struct.evp_pkey_st*, %struct.pkcs8_priv_key_info_st*, %struct.ossl_lib_ctx_st*, i8*)** %priv_decode_ex, align 8, !tbaa !14
  %cmp11.not = icmp eq i32 (%struct.evp_pkey_st*, %struct.pkcs8_priv_key_info_st*, %struct.ossl_lib_ctx_st*, i8*)* %5, null
  br i1 %cmp11.not, label %if.else, label %if.then12

if.then12:                                        ; preds = %if.end10
  %call15 = call i32 %5(%struct.evp_pkey_st* noundef nonnull %call1, %struct.pkcs8_priv_key_info_st* noundef %p8, %struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef %propq) #4
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %error, label %cleanup

if.else:                                          ; preds = %if.end10
  %priv_decode = getelementptr inbounds %struct.evp_pkey_asn1_method_st, %struct.evp_pkey_asn1_method_st* %4, i64 0, i32 9
  %6 = load i32 (%struct.evp_pkey_st*, %struct.pkcs8_priv_key_info_st*)*, i32 (%struct.evp_pkey_st*, %struct.pkcs8_priv_key_info_st*)** %priv_decode, align 8, !tbaa !16
  %cmp20.not = icmp eq i32 (%struct.evp_pkey_st*, %struct.pkcs8_priv_key_info_st*)* %6, null
  br i1 %cmp20.not, label %if.else28, label %if.then21

if.then21:                                        ; preds = %if.else
  %call24 = call i32 %6(%struct.evp_pkey_st* noundef nonnull %call1, %struct.pkcs8_priv_key_info_st* noundef %p8) #4
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %if.then26, label %cleanup

if.then26:                                        ; preds = %if.then21
  call void @ERR_new() #4
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 51, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.evp_pkcs82pkey_legacy, i64 0, i64 0)) #4
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 6, i32 noundef 145, i8* noundef null) #4
  br label %error

if.else28:                                        ; preds = %if.else
  call void @ERR_new() #4
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 55, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.evp_pkcs82pkey_legacy, i64 0, i64 0)) #4
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 6, i32 noundef 144, i8* noundef null) #4
  br label %error

error:                                            ; preds = %if.then12, %if.else28, %if.then26, %if.then7
  call void @EVP_PKEY_free(%struct.evp_pkey_st* noundef nonnull %call1) #4
  br label %cleanup

cleanup:                                          ; preds = %if.then12, %if.then21, %entry, %error, %if.then2
  %retval.0 = phi %struct.evp_pkey_st* [ null, %if.then2 ], [ null, %error ], [ null, %entry ], [ %call1, %if.then21 ], [ %call1, %if.then12 ]
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %1) #3
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #3
  ret %struct.evp_pkey_st* %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

declare i32 @PKCS8_pkey_get0(%struct.asn1_object_st** noundef, i8** noundef, i32* noundef, %struct.X509_algor_st** noundef, %struct.pkcs8_priv_key_info_st* noundef) local_unnamed_addr #2

declare %struct.evp_pkey_st* @EVP_PKEY_new() local_unnamed_addr #2

declare void @ERR_new() local_unnamed_addr #2

declare void @ERR_set_debug(i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #2

declare void @ERR_set_error(i32 noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #2

declare i32 @EVP_PKEY_set_type(%struct.evp_pkey_st* noundef, i32 noundef) local_unnamed_addr #2

declare i32 @OBJ_obj2nid(%struct.asn1_object_st* noundef) local_unnamed_addr #2

declare i32 @i2t_ASN1_OBJECT(i8* noundef, i32 noundef, %struct.asn1_object_st* noundef) local_unnamed_addr #2

declare void @EVP_PKEY_free(%struct.evp_pkey_st* noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: noinline nounwind uwtable
define %struct.evp_pkey_st* @EVP_PKCS82PKEY_ex(%struct.pkcs8_priv_key_info_st* noundef %p8, %struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef %propq) local_unnamed_addr #0 {
entry:
  %pkey = alloca %struct.evp_pkey_st*, align 8
  %p8_data = alloca i8*, align 8
  %encoded_data = alloca i8*, align 8
  %len = alloca i64, align 8
  %0 = bitcast %struct.evp_pkey_st** %pkey to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #3
  store %struct.evp_pkey_st* null, %struct.evp_pkey_st** %pkey, align 8, !tbaa !4
  %1 = bitcast i8** %p8_data to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #3
  %2 = bitcast i8** %encoded_data to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #3
  store i8* null, i8** %encoded_data, align 8, !tbaa !4
  %3 = bitcast i64* %len to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %3) #3
  %call = call i32 @i2d_PKCS8_PRIV_KEY_INFO(%struct.pkcs8_priv_key_info_st* noundef %p8, i8** noundef nonnull %encoded_data) #4
  %cmp = icmp slt i32 %call, 1
  %4 = load i8*, i8** %encoded_data, align 8
  %cmp1 = icmp eq i8* %4, null
  %or.cond = select i1 %cmp, i1 true, i1 %cmp1
  br i1 %or.cond, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  store i8* %4, i8** %p8_data, align 8, !tbaa !4
  %conv26 = zext i32 %call to i64
  store i64 %conv26, i64* %len, align 8, !tbaa !17
  %call2 = call %struct.ossl_decoder_ctx_st* @OSSL_DECODER_CTX_new_for_pkey(%struct.evp_pkey_st** noundef nonnull %pkey, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i8* noundef null, i32 noundef 135, %struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef %propq) #4
  %cmp3 = icmp eq %struct.ossl_decoder_ctx_st* %call2, null
  br i1 %cmp3, label %if.then7, label %lor.lhs.false5

lor.lhs.false5:                                   ; preds = %if.end
  %call6 = call i32 @OSSL_DECODER_from_data(%struct.ossl_decoder_ctx_st* noundef nonnull %call2, i8** noundef nonnull %p8_data, i64* noundef nonnull %len) #4
  %tobool.not = icmp eq i32 %call6, 0
  br i1 %tobool.not, label %if.then7, label %if.end9

if.then7:                                         ; preds = %lor.lhs.false5, %if.end
  %call8 = call %struct.evp_pkey_st* @evp_pkcs82pkey_legacy(%struct.pkcs8_priv_key_info_st* noundef %p8, %struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef %propq) #5
  store %struct.evp_pkey_st* %call8, %struct.evp_pkey_st** %pkey, align 8, !tbaa !4
  br label %if.end9

if.end9:                                          ; preds = %if.then7, %lor.lhs.false5
  %5 = load i8*, i8** %encoded_data, align 8, !tbaa !4
  call void @CRYPTO_clear_free(i8* noundef %5, i64 noundef %conv26, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 91) #4
  call void @OSSL_DECODER_CTX_free(%struct.ossl_decoder_ctx_st* noundef %call2) #4
  %6 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %pkey, align 8, !tbaa !4
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end9
  %retval.0 = phi %struct.evp_pkey_st* [ %6, %if.end9 ], [ null, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3) #3
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #3
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #3
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #3
  ret %struct.evp_pkey_st* %retval.0
}

declare i32 @i2d_PKCS8_PRIV_KEY_INFO(%struct.pkcs8_priv_key_info_st* noundef, i8** noundef) local_unnamed_addr #2

declare %struct.ossl_decoder_ctx_st* @OSSL_DECODER_CTX_new_for_pkey(%struct.evp_pkey_st** noundef, i8* noundef, i8* noundef, i8* noundef, i32 noundef, %struct.ossl_lib_ctx_st* noundef, i8* noundef) local_unnamed_addr #2

declare i32 @OSSL_DECODER_from_data(%struct.ossl_decoder_ctx_st* noundef, i8** noundef, i64* noundef) local_unnamed_addr #2

declare void @CRYPTO_clear_free(i8* noundef, i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare void @OSSL_DECODER_CTX_free(%struct.ossl_decoder_ctx_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define %struct.evp_pkey_st* @EVP_PKCS82PKEY(%struct.pkcs8_priv_key_info_st* noundef %p8) local_unnamed_addr #0 {
entry:
  %call = tail call %struct.evp_pkey_st* @EVP_PKCS82PKEY_ex(%struct.pkcs8_priv_key_info_st* noundef %p8, %struct.ossl_lib_ctx_st* noundef null, i8* noundef null) #5
  ret %struct.evp_pkey_st* %call
}

; Function Attrs: noinline nounwind uwtable
define %struct.pkcs8_priv_key_info_st* @EVP_PKEY2PKCS8(%struct.evp_pkey_st* noundef %pkey) local_unnamed_addr #0 {
entry:
  %der = alloca i8*, align 8
  %derlen = alloca i64, align 8
  %pp = alloca i8*, align 8
  %keymgmt = getelementptr inbounds %struct.evp_pkey_st, %struct.evp_pkey_st* %pkey, i64 0, i32 13
  %0 = load %struct.evp_keymgmt_st*, %struct.evp_keymgmt_st** %keymgmt, align 8, !tbaa !18
  %cmp.not = icmp eq %struct.evp_keymgmt_st* %0, null
  br i1 %cmp.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %1 = bitcast i8** %der to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #3
  store i8* null, i8** %der, align 8, !tbaa !4
  %2 = bitcast i64* %derlen to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #3
  store i64 0, i64* %derlen, align 8, !tbaa !17
  %3 = bitcast i8** %pp to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %3) #3
  %call = tail call %struct.ossl_encoder_ctx_st* @OSSL_ENCODER_CTX_new_for_pkey(%struct.evp_pkey_st* noundef nonnull %pkey, i32 noundef 135, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i8* noundef null) #4
  %cmp1 = icmp eq %struct.ossl_encoder_ctx_st* %call, null
  br i1 %cmp1, label %cleanup.thread, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then
  %call2 = call i32 @OSSL_ENCODER_to_data(%struct.ossl_encoder_ctx_st* noundef nonnull %call, i8** noundef nonnull %der, i64* noundef nonnull %derlen) #4
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %cleanup.thread, label %if.end

if.end:                                           ; preds = %lor.lhs.false
  %4 = load i8*, i8** %der, align 8, !tbaa !4
  store i8* %4, i8** %pp, align 8, !tbaa !4
  %5 = load i64, i64* %derlen, align 8, !tbaa !17
  %call4 = call %struct.pkcs8_priv_key_info_st* @d2i_PKCS8_PRIV_KEY_INFO(%struct.pkcs8_priv_key_info_st** noundef null, i8** noundef nonnull %pp, i64 noundef %5) #4
  %6 = load i8*, i8** %der, align 8, !tbaa !4
  call void @CRYPTO_free(i8* noundef %6, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 127) #4
  %cmp5 = icmp eq %struct.pkcs8_priv_key_info_st* %call4, null
  br i1 %cmp5, label %cleanup.thread, label %cleanup

cleanup.thread:                                   ; preds = %lor.lhs.false, %if.then, %if.end
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3) #3
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #3
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #3
  br label %error

cleanup:                                          ; preds = %if.end
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3) #3
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #3
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #3
  br label %end

if.else:                                          ; preds = %entry
  %call11 = tail call %struct.pkcs8_priv_key_info_st* @PKCS8_PRIV_KEY_INFO_new() #4
  %cmp12 = icmp eq %struct.pkcs8_priv_key_info_st* %call11, null
  br i1 %cmp12, label %if.then13, label %if.end14

if.then13:                                        ; preds = %if.else
  tail call void @ERR_new() #4
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 133, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__func__.EVP_PKEY2PKCS8, i64 0, i64 0)) #4
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 6, i32 noundef 786688, i8* noundef null) #4
  br label %cleanup31

if.end14:                                         ; preds = %if.else
  %ameth = getelementptr inbounds %struct.evp_pkey_st, %struct.evp_pkey_st* %pkey, i64 0, i32 2
  %7 = load %struct.evp_pkey_asn1_method_st*, %struct.evp_pkey_asn1_method_st** %ameth, align 8, !tbaa !8
  %cmp15.not = icmp eq %struct.evp_pkey_asn1_method_st* %7, null
  br i1 %cmp15.not, label %if.else28, label %if.then16

if.then16:                                        ; preds = %if.end14
  %priv_encode = getelementptr inbounds %struct.evp_pkey_asn1_method_st, %struct.evp_pkey_asn1_method_st* %7, i64 0, i32 10
  %8 = load i32 (%struct.pkcs8_priv_key_info_st*, %struct.evp_pkey_st*)*, i32 (%struct.pkcs8_priv_key_info_st*, %struct.evp_pkey_st*)** %priv_encode, align 8, !tbaa !19
  %cmp18.not = icmp eq i32 (%struct.pkcs8_priv_key_info_st*, %struct.evp_pkey_st*)* %8, null
  br i1 %cmp18.not, label %if.else26, label %if.then19

if.then19:                                        ; preds = %if.then16
  %call22 = tail call i32 %8(%struct.pkcs8_priv_key_info_st* noundef nonnull %call11, %struct.evp_pkey_st* noundef nonnull %pkey) #4
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.then24, label %end

if.then24:                                        ; preds = %if.then19
  tail call void @ERR_new() #4
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 140, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__func__.EVP_PKEY2PKCS8, i64 0, i64 0)) #4
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 6, i32 noundef 146, i8* noundef null) #4
  br label %error

if.else26:                                        ; preds = %if.then16
  tail call void @ERR_new() #4
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 144, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__func__.EVP_PKEY2PKCS8, i64 0, i64 0)) #4
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 6, i32 noundef 144, i8* noundef null) #4
  br label %error

if.else28:                                        ; preds = %if.end14
  tail call void @ERR_new() #4
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 148, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__func__.EVP_PKEY2PKCS8, i64 0, i64 0)) #4
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 6, i32 noundef 118, i8* noundef null) #4
  br label %error

error:                                            ; preds = %cleanup.thread, %if.else28, %if.else26, %if.then24
  %p8.1 = phi %struct.pkcs8_priv_key_info_st* [ %call11, %if.then24 ], [ %call11, %if.else26 ], [ %call11, %if.else28 ], [ null, %cleanup.thread ]
  %ctx.0 = phi %struct.ossl_encoder_ctx_st* [ null, %if.then24 ], [ null, %if.else26 ], [ null, %if.else28 ], [ %call, %cleanup.thread ]
  call void @PKCS8_PRIV_KEY_INFO_free(%struct.pkcs8_priv_key_info_st* noundef %p8.1) #4
  br label %end

end:                                              ; preds = %cleanup, %if.then19, %error
  %p8.2 = phi %struct.pkcs8_priv_key_info_st* [ null, %error ], [ %call4, %cleanup ], [ %call11, %if.then19 ]
  %ctx.1 = phi %struct.ossl_encoder_ctx_st* [ %ctx.0, %error ], [ %call, %cleanup ], [ null, %if.then19 ]
  call void @OSSL_ENCODER_CTX_free(%struct.ossl_encoder_ctx_st* noundef %ctx.1) #4
  br label %cleanup31

cleanup31:                                        ; preds = %end, %if.then13
  %retval.0 = phi %struct.pkcs8_priv_key_info_st* [ %p8.2, %end ], [ null, %if.then13 ]
  ret %struct.pkcs8_priv_key_info_st* %retval.0
}

declare %struct.ossl_encoder_ctx_st* @OSSL_ENCODER_CTX_new_for_pkey(%struct.evp_pkey_st* noundef, i32 noundef, i8* noundef, i8* noundef, i8* noundef) local_unnamed_addr #2

declare i32 @OSSL_ENCODER_to_data(%struct.ossl_encoder_ctx_st* noundef, i8** noundef, i64* noundef) local_unnamed_addr #2

declare %struct.pkcs8_priv_key_info_st* @d2i_PKCS8_PRIV_KEY_INFO(%struct.pkcs8_priv_key_info_st** noundef, i8** noundef, i64 noundef) local_unnamed_addr #2

declare void @CRYPTO_free(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare %struct.pkcs8_priv_key_info_st* @PKCS8_PRIV_KEY_INFO_new() local_unnamed_addr #2

declare void @PKCS8_PRIV_KEY_INFO_free(%struct.pkcs8_priv_key_info_st* noundef) local_unnamed_addr #2

declare void @OSSL_ENCODER_CTX_free(%struct.ossl_encoder_ctx_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @EVP_PKEY_get_attr_count(%struct.evp_pkey_st* nocapture noundef readonly %key) local_unnamed_addr #0 {
entry:
  %attributes = getelementptr inbounds %struct.evp_pkey_st, %struct.evp_pkey_st* %key, i64 0, i32 9
  %0 = load %struct.stack_st_X509_ATTRIBUTE*, %struct.stack_st_X509_ATTRIBUTE** %attributes, align 8, !tbaa !20
  %call = tail call i32 @X509at_get_attr_count(%struct.stack_st_X509_ATTRIBUTE* noundef %0) #4
  ret i32 %call
}

declare i32 @X509at_get_attr_count(%struct.stack_st_X509_ATTRIBUTE* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @EVP_PKEY_get_attr_by_NID(%struct.evp_pkey_st* nocapture noundef readonly %key, i32 noundef %nid, i32 noundef %lastpos) local_unnamed_addr #0 {
entry:
  %attributes = getelementptr inbounds %struct.evp_pkey_st, %struct.evp_pkey_st* %key, i64 0, i32 9
  %0 = load %struct.stack_st_X509_ATTRIBUTE*, %struct.stack_st_X509_ATTRIBUTE** %attributes, align 8, !tbaa !20
  %call = tail call i32 @X509at_get_attr_by_NID(%struct.stack_st_X509_ATTRIBUTE* noundef %0, i32 noundef %nid, i32 noundef %lastpos) #4
  ret i32 %call
}

declare i32 @X509at_get_attr_by_NID(%struct.stack_st_X509_ATTRIBUTE* noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @EVP_PKEY_get_attr_by_OBJ(%struct.evp_pkey_st* nocapture noundef readonly %key, %struct.asn1_object_st* noundef %obj, i32 noundef %lastpos) local_unnamed_addr #0 {
entry:
  %attributes = getelementptr inbounds %struct.evp_pkey_st, %struct.evp_pkey_st* %key, i64 0, i32 9
  %0 = load %struct.stack_st_X509_ATTRIBUTE*, %struct.stack_st_X509_ATTRIBUTE** %attributes, align 8, !tbaa !20
  %call = tail call i32 @X509at_get_attr_by_OBJ(%struct.stack_st_X509_ATTRIBUTE* noundef %0, %struct.asn1_object_st* noundef %obj, i32 noundef %lastpos) #4
  ret i32 %call
}

declare i32 @X509at_get_attr_by_OBJ(%struct.stack_st_X509_ATTRIBUTE* noundef, %struct.asn1_object_st* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define %struct.x509_attributes_st* @EVP_PKEY_get_attr(%struct.evp_pkey_st* nocapture noundef readonly %key, i32 noundef %loc) local_unnamed_addr #0 {
entry:
  %attributes = getelementptr inbounds %struct.evp_pkey_st, %struct.evp_pkey_st* %key, i64 0, i32 9
  %0 = load %struct.stack_st_X509_ATTRIBUTE*, %struct.stack_st_X509_ATTRIBUTE** %attributes, align 8, !tbaa !20
  %call = tail call %struct.x509_attributes_st* @X509at_get_attr(%struct.stack_st_X509_ATTRIBUTE* noundef %0, i32 noundef %loc) #4
  ret %struct.x509_attributes_st* %call
}

declare %struct.x509_attributes_st* @X509at_get_attr(%struct.stack_st_X509_ATTRIBUTE* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define %struct.x509_attributes_st* @EVP_PKEY_delete_attr(%struct.evp_pkey_st* nocapture noundef readonly %key, i32 noundef %loc) local_unnamed_addr #0 {
entry:
  %attributes = getelementptr inbounds %struct.evp_pkey_st, %struct.evp_pkey_st* %key, i64 0, i32 9
  %0 = load %struct.stack_st_X509_ATTRIBUTE*, %struct.stack_st_X509_ATTRIBUTE** %attributes, align 8, !tbaa !20
  %call = tail call %struct.x509_attributes_st* @X509at_delete_attr(%struct.stack_st_X509_ATTRIBUTE* noundef %0, i32 noundef %loc) #4
  ret %struct.x509_attributes_st* %call
}

declare %struct.x509_attributes_st* @X509at_delete_attr(%struct.stack_st_X509_ATTRIBUTE* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @EVP_PKEY_add1_attr(%struct.evp_pkey_st* noundef %key, %struct.x509_attributes_st* noundef %attr) local_unnamed_addr #0 {
entry:
  %attributes = getelementptr inbounds %struct.evp_pkey_st, %struct.evp_pkey_st* %key, i64 0, i32 9
  %call = tail call %struct.stack_st_X509_ATTRIBUTE* @X509at_add1_attr(%struct.stack_st_X509_ATTRIBUTE** noundef nonnull %attributes, %struct.x509_attributes_st* noundef %attr) #4
  %tobool.not = icmp ne %struct.stack_st_X509_ATTRIBUTE* %call, null
  %. = zext i1 %tobool.not to i32
  ret i32 %.
}

declare %struct.stack_st_X509_ATTRIBUTE* @X509at_add1_attr(%struct.stack_st_X509_ATTRIBUTE** noundef, %struct.x509_attributes_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @EVP_PKEY_add1_attr_by_OBJ(%struct.evp_pkey_st* noundef %key, %struct.asn1_object_st* noundef %obj, i32 noundef %type, i8* noundef %bytes, i32 noundef %len) local_unnamed_addr #0 {
entry:
  %attributes = getelementptr inbounds %struct.evp_pkey_st, %struct.evp_pkey_st* %key, i64 0, i32 9
  %call = tail call %struct.stack_st_X509_ATTRIBUTE* @X509at_add1_attr_by_OBJ(%struct.stack_st_X509_ATTRIBUTE** noundef nonnull %attributes, %struct.asn1_object_st* noundef %obj, i32 noundef %type, i8* noundef %bytes, i32 noundef %len) #4
  %tobool.not = icmp ne %struct.stack_st_X509_ATTRIBUTE* %call, null
  %. = zext i1 %tobool.not to i32
  ret i32 %.
}

declare %struct.stack_st_X509_ATTRIBUTE* @X509at_add1_attr_by_OBJ(%struct.stack_st_X509_ATTRIBUTE** noundef, %struct.asn1_object_st* noundef, i32 noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @EVP_PKEY_add1_attr_by_NID(%struct.evp_pkey_st* noundef %key, i32 noundef %nid, i32 noundef %type, i8* noundef %bytes, i32 noundef %len) local_unnamed_addr #0 {
entry:
  %attributes = getelementptr inbounds %struct.evp_pkey_st, %struct.evp_pkey_st* %key, i64 0, i32 9
  %call = tail call %struct.stack_st_X509_ATTRIBUTE* @X509at_add1_attr_by_NID(%struct.stack_st_X509_ATTRIBUTE** noundef nonnull %attributes, i32 noundef %nid, i32 noundef %type, i8* noundef %bytes, i32 noundef %len) #4
  %tobool.not = icmp ne %struct.stack_st_X509_ATTRIBUTE* %call, null
  %. = zext i1 %tobool.not to i32
  ret i32 %.
}

declare %struct.stack_st_X509_ATTRIBUTE* @X509at_add1_attr_by_NID(%struct.stack_st_X509_ATTRIBUTE** noundef, i32 noundef, i32 noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @EVP_PKEY_add1_attr_by_txt(%struct.evp_pkey_st* noundef %key, i8* noundef %attrname, i32 noundef %type, i8* noundef %bytes, i32 noundef %len) local_unnamed_addr #0 {
entry:
  %attributes = getelementptr inbounds %struct.evp_pkey_st, %struct.evp_pkey_st* %key, i64 0, i32 9
  %call = tail call %struct.stack_st_X509_ATTRIBUTE* @X509at_add1_attr_by_txt(%struct.stack_st_X509_ATTRIBUTE** noundef nonnull %attributes, i8* noundef %attrname, i32 noundef %type, i8* noundef %bytes, i32 noundef %len) #4
  %tobool.not = icmp ne %struct.stack_st_X509_ATTRIBUTE* %call, null
  %. = zext i1 %tobool.not to i32
  ret i32 %.
}

declare %struct.stack_st_X509_ATTRIBUTE* @X509at_add1_attr_by_txt(%struct.stack_st_X509_ATTRIBUTE** noundef, i8* noundef, i32 noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i8* @EVP_PKEY_get0_type_name(%struct.evp_pkey_st* noundef %key) local_unnamed_addr #0 {
entry:
  %name = alloca i8*, align 8
  %0 = bitcast i8** %name to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #3
  store i8* null, i8** %name, align 8, !tbaa !4
  %keymgmt = getelementptr inbounds %struct.evp_pkey_st, %struct.evp_pkey_st* %key, i64 0, i32 13
  %1 = load %struct.evp_keymgmt_st*, %struct.evp_keymgmt_st** %keymgmt, align 8, !tbaa !18
  %cmp.not = icmp eq %struct.evp_keymgmt_st* %1, null
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = tail call i8* @EVP_KEYMGMT_get0_name(%struct.evp_keymgmt_st* noundef nonnull %1) #4
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call %struct.evp_pkey_asn1_method_st* @EVP_PKEY_get0_asn1(%struct.evp_pkey_st* noundef nonnull %key) #4
  %cmp3.not = icmp eq %struct.evp_pkey_asn1_method_st* %call2, null
  br i1 %cmp3.not, label %cleanup, label %if.then4

if.then4:                                         ; preds = %if.end
  %call5 = call i32 @EVP_PKEY_asn1_get0_info(i32* noundef null, i32* noundef null, i32* noundef null, i8** noundef null, i8** noundef nonnull %name, %struct.evp_pkey_asn1_method_st* noundef nonnull %call2) #4
  %.pre = load i8*, i8** %name, align 8, !tbaa !4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then4, %if.then
  %retval.0 = phi i8* [ %call, %if.then ], [ %.pre, %if.then4 ], [ null, %if.end ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #3
  ret i8* %retval.0
}

declare i8* @EVP_KEYMGMT_get0_name(%struct.evp_keymgmt_st* noundef) local_unnamed_addr #2

declare %struct.evp_pkey_asn1_method_st* @EVP_PKEY_get0_asn1(%struct.evp_pkey_st* noundef) local_unnamed_addr #2

declare i32 @EVP_PKEY_asn1_get0_info(i32* noundef, i32* noundef, i32* noundef, i8** noundef, i8** noundef, %struct.evp_pkey_asn1_method_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define %struct.ossl_provider_st* @EVP_PKEY_get0_provider(%struct.evp_pkey_st* nocapture noundef readonly %key) local_unnamed_addr #0 {
entry:
  %keymgmt = getelementptr inbounds %struct.evp_pkey_st, %struct.evp_pkey_st* %key, i64 0, i32 13
  %0 = load %struct.evp_keymgmt_st*, %struct.evp_keymgmt_st** %keymgmt, align 8, !tbaa !18
  %cmp.not = icmp eq %struct.evp_keymgmt_st* %0, null
  br i1 %cmp.not, label %return, label %if.then

if.then:                                          ; preds = %entry
  %call = tail call %struct.ossl_provider_st* @EVP_KEYMGMT_get0_provider(%struct.evp_keymgmt_st* noundef nonnull %0) #4
  br label %return

return:                                           ; preds = %entry, %if.then
  %retval.0 = phi %struct.ossl_provider_st* [ %call, %if.then ], [ null, %entry ]
  ret %struct.ossl_provider_st* %retval.0
}

declare %struct.ossl_provider_st* @EVP_KEYMGMT_get0_provider(%struct.evp_keymgmt_st* noundef) local_unnamed_addr #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }
attributes #4 = { nobuiltin nounwind "no-builtins" }
attributes #5 = { nobuiltin "no-builtins" }

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
!8 = !{!9, !5, i64 8}
!9 = !{!"evp_pkey_st", !10, i64 0, !10, i64 4, !5, i64 8, !5, i64 16, !5, i64 24, !6, i64 32, !6, i64 40, !6, i64 48, !5, i64 56, !5, i64 64, !10, i64 72, !10, i64 76, !11, i64 80, !5, i64 96, !5, i64 104, !12, i64 112, !5, i64 120, !12, i64 128, !13, i64 136}
!10 = !{!"int", !6, i64 0}
!11 = !{!"crypto_ex_data_st", !5, i64 0, !5, i64 8}
!12 = !{!"long", !6, i64 0}
!13 = !{!"", !10, i64 0, !10, i64 4, !10, i64 8}
!14 = !{!15, !5, i64 312}
!15 = !{!"evp_pkey_asn1_method_st", !10, i64 0, !10, i64 4, !12, i64 8, !5, i64 16, !5, i64 24, !5, i64 32, !5, i64 40, !5, i64 48, !5, i64 56, !5, i64 64, !5, i64 72, !5, i64 80, !5, i64 88, !5, i64 96, !5, i64 104, !5, i64 112, !5, i64 120, !5, i64 128, !5, i64 136, !5, i64 144, !5, i64 152, !5, i64 160, !5, i64 168, !5, i64 176, !5, i64 184, !5, i64 192, !5, i64 200, !5, i64 208, !5, i64 216, !5, i64 224, !5, i64 232, !5, i64 240, !5, i64 248, !5, i64 256, !5, i64 264, !5, i64 272, !5, i64 280, !5, i64 288, !5, i64 296, !5, i64 304, !5, i64 312}
!16 = !{!15, !5, i64 64}
!17 = !{!12, !12, i64 0}
!18 = !{!9, !5, i64 96}
!19 = !{!15, !5, i64 72}
!20 = !{!9, !5, i64 64}
