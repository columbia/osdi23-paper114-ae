; ModuleID = 'crypto/cms/cms_enc.c'
source_filename = "crypto/cms/cms_enc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bio_st = type opaque
%struct.CMS_EncryptedContentInfo_st = type { %struct.asn1_object_st*, %struct.X509_algor_st*, %struct.asn1_string_st*, %struct.evp_cipher_st*, i8*, i64, i8*, i64, i32, i32 }
%struct.asn1_object_st = type opaque
%struct.X509_algor_st = type { %struct.asn1_object_st*, %struct.asn1_type_st* }
%struct.asn1_type_st = type { i32, %union.anon }
%union.anon = type { i8* }
%struct.asn1_string_st = type { i32, i32, i8*, i64 }
%struct.evp_cipher_st = type { i32, i32, i32, i32, i64, i32, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i32)*, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i64)*, i32 (%struct.evp_cipher_ctx_st*)*, i32, i32 (%struct.evp_cipher_ctx_st*, %struct.asn1_type_st*)*, i32 (%struct.evp_cipher_ctx_st*, %struct.asn1_type_st*)*, i32 (%struct.evp_cipher_ctx_st*, i32, i32, i8*)*, i8*, i32, i8*, i8*, %struct.ossl_provider_st*, i32, i8*, i8* (i8*)*, i32 (i8*, i8*, i64, i8*, i64, %struct.ossl_param_st*)*, i32 (i8*, i8*, i64, i8*, i64, %struct.ossl_param_st*)*, i32 (i8*, i8*, i64*, i64, i8*, i64)*, i32 (i8*, i8*, i64*, i64)*, i32 (i8*, i8*, i64*, i64, i8*, i64)*, void (i8*)*, i8* (i8*)*, i32 (%struct.ossl_param_st*)*, i32 (i8*, %struct.ossl_param_st*)*, i32 (i8*, %struct.ossl_param_st*)*, %struct.ossl_param_st* (i8*)*, %struct.ossl_param_st* (i8*, i8*)*, %struct.ossl_param_st* (i8*, i8*)* }
%struct.evp_cipher_ctx_st = type opaque
%struct.ossl_provider_st = type opaque
%struct.ossl_param_st = type { i8*, i32, i8*, i64, i64 }
%struct.CMS_CTX_st = type { %struct.ossl_lib_ctx_st*, i8* }
%struct.ossl_lib_ctx_st = type opaque
%struct.evp_cipher_aead_asn1_params = type { [16 x i8], i32, i32 }
%struct.bio_method_st = type opaque
%struct.engine_st = type opaque
%struct.CMS_ContentInfo_st = type { %struct.asn1_object_st*, %union.anon.0, %struct.CMS_CTX_st }
%union.anon.0 = type { %struct.asn1_string_st* }
%struct.ASN1_ITEM_st = type { i8, i64, %struct.ASN1_TEMPLATE_st*, i64, i8*, i64, i8* }
%struct.ASN1_TEMPLATE_st = type { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* }
%struct.ASN1_VALUE_st = type opaque
%struct.CMS_EncryptedData_st = type { i32, %struct.CMS_EncryptedContentInfo_st*, %struct.stack_st_X509_ATTRIBUTE* }
%struct.stack_st_X509_ATTRIBUTE = type opaque

@.str = private unnamed_addr constant [21 x i8] c"crypto/cms/cms_enc.c\00", align 1
@__func__.ossl_cms_EncryptedContent_init_bio = private unnamed_addr constant [35 x i8] c"ossl_cms_EncryptedContent_init_bio\00", align 1
@__func__.ossl_cms_EncryptedContent_init = private unnamed_addr constant [31 x i8] c"ossl_cms_EncryptedContent_init\00", align 1
@__func__.CMS_EncryptedData_set1_key = private unnamed_addr constant [27 x i8] c"CMS_EncryptedData_set1_key\00", align 1

; Function Attrs: noinline nounwind uwtable
define %struct.bio_st* @ossl_cms_EncryptedContent_init_bio(%struct.CMS_EncryptedContentInfo_st* nocapture noundef %ec, %struct.CMS_CTX_st* noundef %cms_ctx) local_unnamed_addr #0 {
entry:
  %ctx = alloca %struct.evp_cipher_ctx_st*, align 8
  %aparams = alloca %struct.evp_cipher_aead_asn1_params, align 4
  %iv = alloca [16 x i8], align 16
  %0 = bitcast %struct.evp_cipher_ctx_st** %ctx to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #4
  %contentEncryptionAlgorithm = getelementptr inbounds %struct.CMS_EncryptedContentInfo_st, %struct.CMS_EncryptedContentInfo_st* %ec, i64 0, i32 1
  %1 = load %struct.X509_algor_st*, %struct.X509_algor_st** %contentEncryptionAlgorithm, align 8, !tbaa !4
  %2 = getelementptr inbounds %struct.evp_cipher_aead_asn1_params, %struct.evp_cipher_aead_asn1_params* %aparams, i64 0, i32 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %2) #4
  %3 = getelementptr inbounds [16 x i8], [16 x i8]* %iv, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %3) #4
  %call = tail call %struct.ossl_lib_ctx_st* @ossl_cms_ctx_get0_libctx(%struct.CMS_CTX_st* noundef %cms_ctx) #5
  %call1 = tail call i8* @ossl_cms_ctx_get0_propq(%struct.CMS_CTX_st* noundef %cms_ctx) #5
  %cipher2 = getelementptr inbounds %struct.CMS_EncryptedContentInfo_st, %struct.CMS_EncryptedContentInfo_st* %ec, i64 0, i32 3
  %4 = load %struct.evp_cipher_st*, %struct.evp_cipher_st** %cipher2, align 8, !tbaa !11
  %tobool.not = icmp eq %struct.evp_cipher_st* %4, null
  %not.tobool.not = xor i1 %tobool.not, true
  %cond = zext i1 %not.tobool.not to i32
  %call3 = tail call %struct.bio_method_st* @BIO_f_cipher() #5
  %call4 = tail call %struct.bio_st* @BIO_new(%struct.bio_method_st* noundef %call3) #5
  %cmp = icmp eq %struct.bio_st* %call4, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 47, i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @__func__.ossl_cms_EncryptedContent_init_bio, i64 0, i64 0)) #5
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 46, i32 noundef 786688, i8* noundef null) #5
  br label %cleanup

if.end:                                           ; preds = %entry
  %call5 = call i64 @BIO_ctrl(%struct.bio_st* noundef nonnull %call4, i32 noundef 129, i64 noundef 0, i8* noundef nonnull %0) #5
  %call6 = call i32 @ERR_set_mark() #5
  br i1 %tobool.not, label %if.else, label %if.then8

if.then8:                                         ; preds = %if.end
  %5 = load %struct.evp_cipher_st*, %struct.evp_cipher_st** %cipher2, align 8, !tbaa !11
  %key = getelementptr inbounds %struct.CMS_EncryptedContentInfo_st, %struct.CMS_EncryptedContentInfo_st* %ec, i64 0, i32 4
  %6 = load i8*, i8** %key, align 8, !tbaa !12
  %cmp10.not = icmp eq i8* %6, null
  br i1 %cmp10.not, label %if.end17, label %if.then11

if.then11:                                        ; preds = %if.then8
  store %struct.evp_cipher_st* null, %struct.evp_cipher_st** %cipher2, align 8, !tbaa !11
  br label %if.end17

if.else:                                          ; preds = %if.end
  %algorithm = getelementptr inbounds %struct.X509_algor_st, %struct.X509_algor_st* %1, i64 0, i32 0
  %7 = load %struct.asn1_object_st*, %struct.asn1_object_st** %algorithm, align 8, !tbaa !13
  %call14 = call i32 @OBJ_obj2nid(%struct.asn1_object_st* noundef %7) #5
  %call15 = call i8* @OBJ_nid2sn(i32 noundef %call14) #5
  %call16 = call %struct.evp_cipher_st* @EVP_get_cipherbyname(i8* noundef %call15) #5
  br label %if.end17

if.end17:                                         ; preds = %if.then8, %if.then11, %if.else
  %cipher.0 = phi %struct.evp_cipher_st* [ %5, %if.then11 ], [ %5, %if.then8 ], [ %call16, %if.else ]
  %cmp18.not = icmp eq %struct.evp_cipher_st* %cipher.0, null
  br i1 %cmp18.not, label %if.then27, label %if.then19

if.then19:                                        ; preds = %if.end17
  %call20 = call i8* @EVP_CIPHER_get0_name(%struct.evp_cipher_st* noundef nonnull %cipher.0) #5
  %call21 = call %struct.evp_cipher_st* @EVP_CIPHER_fetch(%struct.ossl_lib_ctx_st* noundef %call, i8* noundef %call20, i8* noundef %call1) #5
  %cmp22.not = icmp eq %struct.evp_cipher_st* %call21, null
  %spec.select = select i1 %cmp22.not, %struct.evp_cipher_st* %cipher.0, %struct.evp_cipher_st* %call21
  %call30 = call i32 @ERR_pop_to_mark() #5
  %8 = load %struct.evp_cipher_ctx_st*, %struct.evp_cipher_ctx_st** %ctx, align 8, !tbaa !15
  %call31 = call i32 @EVP_CipherInit_ex(%struct.evp_cipher_ctx_st* noundef %8, %struct.evp_cipher_st* noundef nonnull %spec.select, %struct.engine_st* noundef null, i8* noundef null, i8* noundef null, i32 noundef %cond) #5
  %cmp32 = icmp slt i32 %call31, 1
  br i1 %cmp32, label %err.thread.sink.split, label %if.end34

if.then27:                                        ; preds = %if.end17
  %call28 = call i32 @ERR_clear_last_mark() #5
  br label %err.thread.sink.split

if.end34:                                         ; preds = %if.then19
  %9 = load %struct.evp_cipher_ctx_st*, %struct.evp_cipher_ctx_st** %ctx, align 8, !tbaa !15
  br i1 %tobool.not, label %if.else51, label %if.then36

if.then36:                                        ; preds = %if.end34
  %call37 = call %struct.evp_cipher_st* @EVP_CIPHER_CTX_get0_cipher(%struct.evp_cipher_ctx_st* noundef %9) #5
  %call38 = call i32 @EVP_CIPHER_get_type(%struct.evp_cipher_st* noundef %call37) #5
  %call39 = call %struct.asn1_object_st* @OBJ_nid2obj(i32 noundef %call38) #5
  %algorithm40 = getelementptr inbounds %struct.X509_algor_st, %struct.X509_algor_st* %1, i64 0, i32 0
  store %struct.asn1_object_st* %call39, %struct.asn1_object_st** %algorithm40, align 8, !tbaa !13
  %10 = load %struct.evp_cipher_ctx_st*, %struct.evp_cipher_ctx_st** %ctx, align 8, !tbaa !15
  %call41 = call i32 @EVP_CIPHER_CTX_get_iv_length(%struct.evp_cipher_ctx_st* noundef %10) #5
  %cmp42 = icmp sgt i32 %call41, 0
  br i1 %cmp42, label %if.then43, label %if.end72

if.then43:                                        ; preds = %if.then36
  %conv310 = zext i32 %call41 to i64
  %call44 = call i32 @RAND_bytes_ex(%struct.ossl_lib_ctx_st* noundef %call, i8* noundef nonnull %3, i64 noundef %conv310, i32 noundef 0) #5
  %cmp45 = icmp slt i32 %call44, 1
  br i1 %cmp45, label %err.thread, label %if.end72

if.else51:                                        ; preds = %if.end34
  %parameter = getelementptr inbounds %struct.X509_algor_st, %struct.X509_algor_st* %1, i64 0, i32 1
  %11 = load %struct.asn1_type_st*, %struct.asn1_type_st** %parameter, align 8, !tbaa !16
  %call52 = call i32 @evp_cipher_asn1_to_param_ex(%struct.evp_cipher_ctx_st* noundef %9, %struct.asn1_type_st* noundef %11, %struct.evp_cipher_aead_asn1_params* noundef nonnull %aparams) #5
  %cmp53 = icmp slt i32 %call52, 1
  br i1 %cmp53, label %err.thread.sink.split, label %if.end56

if.end56:                                         ; preds = %if.else51
  %call57 = call i64 @EVP_CIPHER_get_flags(%struct.evp_cipher_st* noundef nonnull %spec.select) #5
  %and = and i64 %call57, 2097152
  %tobool58.not = icmp eq i64 %and, 0
  br i1 %tobool58.not, label %if.end72, label %if.then59

if.then59:                                        ; preds = %if.end56
  %taglen = getelementptr inbounds %struct.CMS_EncryptedContentInfo_st, %struct.CMS_EncryptedContentInfo_st* %ec, i64 0, i32 7
  %12 = load i64, i64* %taglen, align 8, !tbaa !17
  %cmp62.not = icmp eq i64 %12, 0
  br i1 %cmp62.not, label %if.end72, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.then59
  %13 = load %struct.evp_cipher_ctx_st*, %struct.evp_cipher_ctx_st** %ctx, align 8, !tbaa !15
  %conv65 = trunc i64 %12 to i32
  %tag = getelementptr inbounds %struct.CMS_EncryptedContentInfo_st, %struct.CMS_EncryptedContentInfo_st* %ec, i64 0, i32 6
  %14 = load i8*, i8** %tag, align 8, !tbaa !18
  %call66 = call i32 @EVP_CIPHER_CTX_ctrl(%struct.evp_cipher_ctx_st* noundef %13, i32 noundef 17, i32 noundef %conv65, i8* noundef %14) #5
  %cmp67 = icmp slt i32 %call66, 1
  br i1 %cmp67, label %err.thread.sink.split, label %if.end72

if.end72:                                         ; preds = %if.then43, %if.end56, %land.lhs.true, %if.then59, %if.then36
  %piv.0 = phi i8* [ null, %if.then36 ], [ %2, %land.lhs.true ], [ %2, %if.then59 ], [ null, %if.end56 ], [ %3, %if.then43 ]
  %ivlen.0 = phi i32 [ %call41, %if.then36 ], [ 0, %land.lhs.true ], [ 0, %if.then59 ], [ 0, %if.end56 ], [ %call41, %if.then43 ]
  %15 = load %struct.evp_cipher_ctx_st*, %struct.evp_cipher_ctx_st** %ctx, align 8, !tbaa !15
  %call73 = call i32 @EVP_CIPHER_CTX_get_key_length(%struct.evp_cipher_ctx_st* noundef %15) #5
  %cmp74 = icmp slt i32 %call73, 1
  br i1 %cmp74, label %err.thread, label %if.end77

if.end77:                                         ; preds = %if.end72
  %conv78309 = zext i32 %call73 to i64
  br i1 %tobool.not, label %if.then82, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end77
  %key80 = getelementptr inbounds %struct.CMS_EncryptedContentInfo_st, %struct.CMS_EncryptedContentInfo_st* %ec, i64 0, i32 4
  %16 = load i8*, i8** %key80, align 8, !tbaa !12
  %tobool81.not = icmp eq i8* %16, null
  br i1 %tobool81.not, label %if.then82, label %if.end102

if.then82:                                        ; preds = %lor.lhs.false, %if.end77
  %call83 = call i8* @CRYPTO_malloc(i64 noundef %conv78309, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 113) #5
  %cmp84 = icmp eq i8* %call83, null
  br i1 %cmp84, label %err.thread.sink.split, label %if.end87

if.end87:                                         ; preds = %if.then82
  %17 = load %struct.evp_cipher_ctx_st*, %struct.evp_cipher_ctx_st** %ctx, align 8, !tbaa !15
  %call88 = call i32 @EVP_CIPHER_CTX_rand_key(%struct.evp_cipher_ctx_st* noundef %17, i8* noundef nonnull %call83) #5
  %cmp89 = icmp slt i32 %call88, 1
  br i1 %cmp89, label %err.thread, label %if.end93

if.end93:                                         ; preds = %if.end87
  %key94 = getelementptr inbounds %struct.CMS_EncryptedContentInfo_st, %struct.CMS_EncryptedContentInfo_st* %ec, i64 0, i32 4
  %18 = load i8*, i8** %key94, align 8, !tbaa !12
  %tobool95.not = icmp eq i8* %18, null
  br i1 %tobool95.not, label %if.then96, label %if.end102

if.then96:                                        ; preds = %if.end93
  store i8* %call83, i8** %key94, align 8, !tbaa !12
  %keylen = getelementptr inbounds %struct.CMS_EncryptedContentInfo_st, %struct.CMS_EncryptedContentInfo_st* %ec, i64 0, i32 5
  store i64 %conv78309, i64* %keylen, align 8, !tbaa !19
  br i1 %tobool.not, label %if.else100, label %if.end102

if.else100:                                       ; preds = %if.then96
  call void @ERR_clear_error() #5
  br label %if.end102

if.end102:                                        ; preds = %lor.lhs.false, %if.then96, %if.else100, %if.end93
  %key94287 = phi i8** [ %key94, %if.end93 ], [ %key94, %if.else100 ], [ %key94, %if.then96 ], [ %key80, %lor.lhs.false ]
  %tkey.1 = phi i8* [ %call83, %if.end93 ], [ null, %if.else100 ], [ null, %if.then96 ], [ null, %lor.lhs.false ]
  %tobool169.not = phi i1 [ true, %if.end93 ], [ true, %if.else100 ], [ false, %if.then96 ], [ true, %lor.lhs.false ]
  %keylen103 = getelementptr inbounds %struct.CMS_EncryptedContentInfo_st, %struct.CMS_EncryptedContentInfo_st* %ec, i64 0, i32 5
  %19 = load i64, i64* %keylen103, align 8, !tbaa !19
  %cmp104.not = icmp eq i64 %19, %conv78309
  br i1 %cmp104.not, label %if.end124, label %if.then106

if.then106:                                       ; preds = %if.end102
  %20 = load %struct.evp_cipher_ctx_st*, %struct.evp_cipher_ctx_st** %ctx, align 8, !tbaa !15
  %conv108 = trunc i64 %19 to i32
  %call109 = call i32 @EVP_CIPHER_CTX_set_key_length(%struct.evp_cipher_ctx_st* noundef %20, i32 noundef %conv108) #5
  %cmp110 = icmp slt i32 %call109, 1
  br i1 %cmp110, label %if.then112, label %if.end124

if.then112:                                       ; preds = %if.then106
  br i1 %tobool.not, label %lor.lhs.false114, label %err.thread.sink.split

lor.lhs.false114:                                 ; preds = %if.then112
  %debug = getelementptr inbounds %struct.CMS_EncryptedContentInfo_st, %struct.CMS_EncryptedContentInfo_st* %ec, i64 0, i32 8
  %21 = load i32, i32* %debug, align 8, !tbaa !20
  %tobool115.not = icmp eq i32 %21, 0
  br i1 %tobool115.not, label %if.else117, label %err.thread.sink.split

if.else117:                                       ; preds = %lor.lhs.false114
  %22 = load i8*, i8** %key94287, align 8, !tbaa !12
  %23 = load i64, i64* %keylen103, align 8, !tbaa !19
  call void @CRYPTO_clear_free(i8* noundef %22, i64 noundef %23, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 145) #5
  store i8* %tkey.1, i8** %key94287, align 8, !tbaa !12
  store i64 %conv78309, i64* %keylen103, align 8, !tbaa !19
  call void @ERR_clear_error() #5
  br label %if.end124

if.end124:                                        ; preds = %if.then106, %if.else117, %if.end102
  %tkey.2 = phi i8* [ null, %if.else117 ], [ %tkey.1, %if.then106 ], [ %tkey.1, %if.end102 ]
  %24 = load %struct.evp_cipher_ctx_st*, %struct.evp_cipher_ctx_st** %ctx, align 8, !tbaa !15
  %25 = load i8*, i8** %key94287, align 8, !tbaa !12
  %call126 = call i32 @EVP_CipherInit_ex(%struct.evp_cipher_ctx_st* noundef %24, %struct.evp_cipher_st* noundef null, %struct.engine_st* noundef null, i8* noundef %25, i8* noundef %piv.0, i32 noundef %cond) #5
  %cmp127 = icmp slt i32 %call126, 1
  br i1 %cmp127, label %err.thread.sink.split, label %if.end130

if.end130:                                        ; preds = %if.end124
  br i1 %tobool.not, label %err, label %if.then132

if.then132:                                       ; preds = %if.end130
  %call133 = call %struct.asn1_type_st* @ASN1_TYPE_new() #5
  %parameter134 = getelementptr inbounds %struct.X509_algor_st, %struct.X509_algor_st* %1, i64 0, i32 1
  store %struct.asn1_type_st* %call133, %struct.asn1_type_st** %parameter134, align 8, !tbaa !16
  %cmp136 = icmp eq %struct.asn1_type_st* %call133, null
  br i1 %cmp136, label %err.thread.sink.split, label %if.end139

if.end139:                                        ; preds = %if.then132
  %call140 = call i64 @EVP_CIPHER_get_flags(%struct.evp_cipher_st* noundef nonnull %spec.select) #5
  %and141 = and i64 %call140, 2097152
  %tobool142.not = icmp eq i64 %and141, 0
  br i1 %tobool142.not, label %if.end154, label %if.then143

if.then143:                                       ; preds = %if.end139
  %conv146 = sext i32 %ivlen.0 to i64
  %call147 = call i8* @memcpy(i8* noundef nonnull %2, i8* noundef %piv.0, i64 noundef %conv146) #5
  %iv_len = getelementptr inbounds %struct.evp_cipher_aead_asn1_params, %struct.evp_cipher_aead_asn1_params* %aparams, i64 0, i32 1
  store i32 %ivlen.0, i32* %iv_len, align 4, !tbaa !21
  %26 = load %struct.evp_cipher_ctx_st*, %struct.evp_cipher_ctx_st** %ctx, align 8, !tbaa !15
  %call148 = call i32 @EVP_CIPHER_CTX_get_tag_length(%struct.evp_cipher_ctx_st* noundef %26) #5
  %tag_len = getelementptr inbounds %struct.evp_cipher_aead_asn1_params, %struct.evp_cipher_aead_asn1_params* %aparams, i64 0, i32 2
  store i32 %call148, i32* %tag_len, align 4, !tbaa !23
  %cmp150 = icmp eq i32 %call148, 0
  br i1 %cmp150, label %err.thread, label %if.end154

if.end154:                                        ; preds = %if.then143, %if.end139
  %27 = load %struct.evp_cipher_ctx_st*, %struct.evp_cipher_ctx_st** %ctx, align 8, !tbaa !15
  %28 = load %struct.asn1_type_st*, %struct.asn1_type_st** %parameter134, align 8, !tbaa !16
  %call156 = call i32 @evp_cipher_param_to_asn1_ex(%struct.evp_cipher_ctx_st* noundef %27, %struct.asn1_type_st* noundef %28, %struct.evp_cipher_aead_asn1_params* noundef nonnull %aparams) #5
  %cmp157 = icmp slt i32 %call156, 1
  br i1 %cmp157, label %err.thread.sink.split, label %if.end160

if.end160:                                        ; preds = %if.end154
  %29 = load %struct.asn1_type_st*, %struct.asn1_type_st** %parameter134, align 8, !tbaa !16
  %type = getelementptr inbounds %struct.asn1_type_st, %struct.asn1_type_st* %29, i64 0, i32 0
  %30 = load i32, i32* %type, align 8, !tbaa !24
  %cmp162 = icmp eq i32 %30, -1
  br i1 %cmp162, label %if.then164, label %err

if.then164:                                       ; preds = %if.end160
  call void @ASN1_TYPE_free(%struct.asn1_type_st* noundef nonnull %29) #5
  store %struct.asn1_type_st* null, %struct.asn1_type_st** %parameter134, align 8, !tbaa !16
  br label %err

err.thread.sink.split:                            ; preds = %if.end154, %if.then132, %if.end124, %if.then112, %lor.lhs.false114, %if.then82, %land.lhs.true, %if.else51, %if.then19, %if.then27
  %.sink311 = phi i32 [ 72, %if.then27 ], [ 78, %if.then19 ], [ 93, %if.else51 ], [ 101, %land.lhs.true ], [ 115, %if.then82 ], [ 141, %lor.lhs.false114 ], [ 141, %if.then112 ], [ 155, %if.end124 ], [ 161, %if.then132 ], [ 173, %if.end154 ]
  %.sink = phi i32 [ 148, %if.then27 ], [ 101, %if.then19 ], [ 102, %if.else51 ], [ 184, %land.lhs.true ], [ 786688, %if.then82 ], [ 118, %lor.lhs.false114 ], [ 118, %if.then112 ], [ 101, %if.end124 ], [ 786688, %if.then132 ], [ 102, %if.end154 ]
  %fetched_ciph.0281.ph.ph = phi %struct.evp_cipher_st* [ null, %if.then27 ], [ %call21, %if.then19 ], [ %call21, %if.else51 ], [ %call21, %land.lhs.true ], [ %call21, %if.then82 ], [ %call21, %lor.lhs.false114 ], [ %call21, %if.then112 ], [ %call21, %if.end124 ], [ %call21, %if.then132 ], [ %call21, %if.end154 ]
  %tkey.3.ph.ph = phi i8* [ null, %if.then27 ], [ null, %if.then19 ], [ null, %if.else51 ], [ null, %land.lhs.true ], [ null, %if.then82 ], [ %tkey.1, %lor.lhs.false114 ], [ %tkey.1, %if.then112 ], [ %tkey.2, %if.end124 ], [ %tkey.2, %if.then132 ], [ %tkey.2, %if.end154 ]
  %tkeylen.0.ph.ph = phi i64 [ 0, %if.then27 ], [ 0, %if.then19 ], [ 0, %if.else51 ], [ 0, %land.lhs.true ], [ %conv78309, %if.then82 ], [ %conv78309, %lor.lhs.false114 ], [ %conv78309, %if.then112 ], [ %conv78309, %if.end124 ], [ %conv78309, %if.then132 ], [ %conv78309, %if.end154 ]
  call void @ERR_new() #5
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef %.sink311, i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @__func__.ossl_cms_EncryptedContent_init_bio, i64 0, i64 0)) #5
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 46, i32 noundef %.sink, i8* noundef null) #5
  br label %err.thread

err.thread:                                       ; preds = %err.thread.sink.split, %if.then43, %if.end72, %if.end87, %if.then143
  %fetched_ciph.0281.ph = phi %struct.evp_cipher_st* [ %call21, %if.end87 ], [ %call21, %if.then143 ], [ %call21, %if.end72 ], [ %call21, %if.then43 ], [ %fetched_ciph.0281.ph.ph, %err.thread.sink.split ]
  %tkey.3.ph = phi i8* [ %call83, %if.end87 ], [ %tkey.2, %if.then143 ], [ null, %if.end72 ], [ null, %if.then43 ], [ %tkey.3.ph.ph, %err.thread.sink.split ]
  %tkeylen.0.ph = phi i64 [ %conv78309, %if.end87 ], [ %conv78309, %if.then143 ], [ 0, %if.end72 ], [ 0, %if.then43 ], [ %tkeylen.0.ph.ph, %err.thread.sink.split ]
  call void @EVP_CIPHER_free(%struct.evp_cipher_st* noundef %fetched_ciph.0281.ph) #5
  %key173.c = getelementptr inbounds %struct.CMS_EncryptedContentInfo_st, %struct.CMS_EncryptedContentInfo_st* %ec, i64 0, i32 4
  %31 = load i8*, i8** %key173.c, align 8, !tbaa !12
  %keylen174.c = getelementptr inbounds %struct.CMS_EncryptedContentInfo_st, %struct.CMS_EncryptedContentInfo_st* %ec, i64 0, i32 5
  %32 = load i64, i64* %keylen174.c, align 8, !tbaa !19
  call void @CRYPTO_clear_free(i8* noundef %31, i64 noundef %32, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 187) #5
  store i8* null, i8** %key173.c, align 8, !tbaa !12
  call void @CRYPTO_clear_free(i8* noundef %tkey.3.ph, i64 noundef %tkeylen.0.ph, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 190) #5
  %call180 = call i32 @BIO_free(%struct.bio_st* noundef nonnull %call4) #5
  br label %cleanup

err:                                              ; preds = %if.end130, %if.then164, %if.end160
  call void @EVP_CIPHER_free(%struct.evp_cipher_st* noundef %call21) #5
  br i1 %tobool169.not, label %if.end176, label %if.end176.thread

if.end176.thread:                                 ; preds = %err
  call void @CRYPTO_clear_free(i8* noundef %tkey.2, i64 noundef %conv78309, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 190) #5
  br label %cleanup

if.end176:                                        ; preds = %err
  %key173 = getelementptr inbounds %struct.CMS_EncryptedContentInfo_st, %struct.CMS_EncryptedContentInfo_st* %ec, i64 0, i32 4
  %33 = load i8*, i8** %key173, align 8, !tbaa !12
  %34 = load i64, i64* %keylen103, align 8, !tbaa !19
  call void @CRYPTO_clear_free(i8* noundef %33, i64 noundef %34, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 187) #5
  store i8* null, i8** %key173, align 8, !tbaa !12
  call void @CRYPTO_clear_free(i8* noundef %tkey.2, i64 noundef %conv78309, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 190) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end176, %if.end176.thread, %err.thread, %if.then
  %retval.0 = phi %struct.bio_st* [ null, %if.then ], [ null, %err.thread ], [ %call4, %if.end176 ], [ %call4, %if.end176.thread ]
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %3) #4
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %2) #4
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #4
  ret %struct.bio_st* %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

declare %struct.ossl_lib_ctx_st* @ossl_cms_ctx_get0_libctx(%struct.CMS_CTX_st* noundef) local_unnamed_addr #2

declare i8* @ossl_cms_ctx_get0_propq(%struct.CMS_CTX_st* noundef) local_unnamed_addr #2

declare %struct.bio_st* @BIO_new(%struct.bio_method_st* noundef) local_unnamed_addr #2

declare %struct.bio_method_st* @BIO_f_cipher() local_unnamed_addr #2

declare void @ERR_new() local_unnamed_addr #2

declare void @ERR_set_debug(i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #2

declare void @ERR_set_error(i32 noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #2

declare i64 @BIO_ctrl(%struct.bio_st* noundef, i32 noundef, i64 noundef, i8* noundef) local_unnamed_addr #2

declare i32 @ERR_set_mark() local_unnamed_addr #2

declare %struct.evp_cipher_st* @EVP_get_cipherbyname(i8* noundef) local_unnamed_addr #2

declare i8* @OBJ_nid2sn(i32 noundef) local_unnamed_addr #2

declare i32 @OBJ_obj2nid(%struct.asn1_object_st* noundef) local_unnamed_addr #2

declare %struct.evp_cipher_st* @EVP_CIPHER_fetch(%struct.ossl_lib_ctx_st* noundef, i8* noundef, i8* noundef) local_unnamed_addr #2

declare i8* @EVP_CIPHER_get0_name(%struct.evp_cipher_st* noundef) local_unnamed_addr #2

declare i32 @ERR_clear_last_mark() local_unnamed_addr #2

declare i32 @ERR_pop_to_mark() local_unnamed_addr #2

declare i32 @EVP_CipherInit_ex(%struct.evp_cipher_ctx_st* noundef, %struct.evp_cipher_st* noundef, %struct.engine_st* noundef, i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare %struct.asn1_object_st* @OBJ_nid2obj(i32 noundef) local_unnamed_addr #2

declare i32 @EVP_CIPHER_get_type(%struct.evp_cipher_st* noundef) local_unnamed_addr #2

declare %struct.evp_cipher_st* @EVP_CIPHER_CTX_get0_cipher(%struct.evp_cipher_ctx_st* noundef) local_unnamed_addr #2

declare i32 @EVP_CIPHER_CTX_get_iv_length(%struct.evp_cipher_ctx_st* noundef) local_unnamed_addr #2

declare i32 @RAND_bytes_ex(%struct.ossl_lib_ctx_st* noundef, i8* noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

declare i32 @evp_cipher_asn1_to_param_ex(%struct.evp_cipher_ctx_st* noundef, %struct.asn1_type_st* noundef, %struct.evp_cipher_aead_asn1_params* noundef) local_unnamed_addr #2

declare i64 @EVP_CIPHER_get_flags(%struct.evp_cipher_st* noundef) local_unnamed_addr #2

declare i32 @EVP_CIPHER_CTX_ctrl(%struct.evp_cipher_ctx_st* noundef, i32 noundef, i32 noundef, i8* noundef) local_unnamed_addr #2

declare i32 @EVP_CIPHER_CTX_get_key_length(%struct.evp_cipher_ctx_st* noundef) local_unnamed_addr #2

declare i8* @CRYPTO_malloc(i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare i32 @EVP_CIPHER_CTX_rand_key(%struct.evp_cipher_ctx_st* noundef, i8* noundef) local_unnamed_addr #2

declare void @ERR_clear_error() local_unnamed_addr #2

declare i32 @EVP_CIPHER_CTX_set_key_length(%struct.evp_cipher_ctx_st* noundef, i32 noundef) local_unnamed_addr #2

declare void @CRYPTO_clear_free(i8* noundef, i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare %struct.asn1_type_st* @ASN1_TYPE_new() local_unnamed_addr #2

; Function Attrs: nounwind
declare i8* @memcpy(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #3

declare i32 @EVP_CIPHER_CTX_get_tag_length(%struct.evp_cipher_ctx_st* noundef) local_unnamed_addr #2

declare i32 @evp_cipher_param_to_asn1_ex(%struct.evp_cipher_ctx_st* noundef, %struct.asn1_type_st* noundef, %struct.evp_cipher_aead_asn1_params* noundef) local_unnamed_addr #2

declare void @ASN1_TYPE_free(%struct.asn1_type_st* noundef) local_unnamed_addr #2

declare void @EVP_CIPHER_free(%struct.evp_cipher_st* noundef) local_unnamed_addr #2

declare i32 @BIO_free(%struct.bio_st* noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_cms_EncryptedContent_init(%struct.CMS_EncryptedContentInfo_st* nocapture noundef writeonly %ec, %struct.evp_cipher_st* noundef %cipher, i8* noundef %key, i64 noundef %keylen, %struct.CMS_CTX_st* nocapture readnone %cms_ctx) local_unnamed_addr #0 {
entry:
  %cipher1 = getelementptr inbounds %struct.CMS_EncryptedContentInfo_st, %struct.CMS_EncryptedContentInfo_st* %ec, i64 0, i32 3
  store %struct.evp_cipher_st* %cipher, %struct.evp_cipher_st** %cipher1, align 8, !tbaa !11
  %tobool.not = icmp eq i8* %key, null
  br i1 %tobool.not, label %if.end6, label %if.then

if.then:                                          ; preds = %entry
  %call = tail call i8* @CRYPTO_malloc(i64 noundef %keylen, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 204) #5
  %key2 = getelementptr inbounds %struct.CMS_EncryptedContentInfo_st, %struct.CMS_EncryptedContentInfo_st* %ec, i64 0, i32 4
  store i8* %call, i8** %key2, align 8, !tbaa !12
  %cmp = icmp eq i8* %call, null
  br i1 %cmp, label %if.then3, label %if.end

if.then3:                                         ; preds = %if.then
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 205, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.ossl_cms_EncryptedContent_init, i64 0, i64 0)) #5
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 46, i32 noundef 786688, i8* noundef null) #5
  br label %return

if.end:                                           ; preds = %if.then
  %call5 = tail call i8* @memcpy(i8* noundef nonnull %call, i8* noundef nonnull %key, i64 noundef %keylen) #5
  br label %if.end6

if.end6:                                          ; preds = %if.end, %entry
  %keylen7 = getelementptr inbounds %struct.CMS_EncryptedContentInfo_st, %struct.CMS_EncryptedContentInfo_st* %ec, i64 0, i32 5
  store i64 %keylen, i64* %keylen7, align 8, !tbaa !19
  %cmp8.not = icmp eq %struct.evp_cipher_st* %cipher, null
  br i1 %cmp8.not, label %return, label %if.then9

if.then9:                                         ; preds = %if.end6
  %call10 = tail call %struct.asn1_object_st* @OBJ_nid2obj(i32 noundef 21) #5
  %contentType = getelementptr inbounds %struct.CMS_EncryptedContentInfo_st, %struct.CMS_EncryptedContentInfo_st* %ec, i64 0, i32 0
  store %struct.asn1_object_st* %call10, %struct.asn1_object_st** %contentType, align 8, !tbaa !26
  br label %return

return:                                           ; preds = %if.end6, %if.then9, %if.then3
  %retval.0 = phi i32 [ 0, %if.then3 ], [ 1, %if.then9 ], [ 1, %if.end6 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @CMS_EncryptedData_set1_key(%struct.CMS_ContentInfo_st* noundef %cms, %struct.evp_cipher_st* noundef %ciph, i8* noundef %key, i64 noundef %keylen) local_unnamed_addr #0 {
entry:
  %tobool = icmp ne i8* %key, null
  %tobool1 = icmp ne i64 %keylen, 0
  %or.cond = and i1 %tobool, %tobool1
  br i1 %or.cond, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 222, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.CMS_EncryptedData_set1_key, i64 0, i64 0)) #5
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 46, i32 noundef 130, i8* noundef null) #5
  br label %cleanup

if.end:                                           ; preds = %entry
  %tobool2.not = icmp eq %struct.evp_cipher_st* %ciph, null
  br i1 %tobool2.not, label %if.else, label %if.then3

if.then3:                                         ; preds = %if.end
  %call = tail call %struct.ASN1_ITEM_st* @CMS_EncryptedData_it() #5
  %call4 = tail call %struct.ASN1_VALUE_st* @ASN1_item_new(%struct.ASN1_ITEM_st* noundef %call) #5
  %d = getelementptr inbounds %struct.CMS_ContentInfo_st, %struct.CMS_ContentInfo_st* %cms, i64 0, i32 1
  %0 = bitcast %union.anon.0* %d to %struct.ASN1_VALUE_st**
  store %struct.ASN1_VALUE_st* %call4, %struct.ASN1_VALUE_st** %0, align 8, !tbaa !27
  %tobool7.not = icmp eq %struct.ASN1_VALUE_st* %call4, null
  br i1 %tobool7.not, label %if.then8, label %if.end9

if.then8:                                         ; preds = %if.then3
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 228, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.CMS_EncryptedData_set1_key, i64 0, i64 0)) #5
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 46, i32 noundef 786688, i8* noundef null) #5
  br label %cleanup

if.end9:                                          ; preds = %if.then3
  %encryptedData = bitcast %union.anon.0* %d to %struct.CMS_EncryptedData_st**
  %call10 = tail call %struct.asn1_object_st* @OBJ_nid2obj(i32 noundef 26) #5
  %contentType = getelementptr inbounds %struct.CMS_ContentInfo_st, %struct.CMS_ContentInfo_st* %cms, i64 0, i32 0
  store %struct.asn1_object_st* %call10, %struct.asn1_object_st** %contentType, align 8, !tbaa !28
  %1 = load %struct.CMS_EncryptedData_st*, %struct.CMS_EncryptedData_st** %encryptedData, align 8, !tbaa !27
  %version = getelementptr inbounds %struct.CMS_EncryptedData_st, %struct.CMS_EncryptedData_st* %1, i64 0, i32 0
  store i32 0, i32* %version, align 8, !tbaa !31
  br label %if.end17

if.else:                                          ; preds = %if.end
  %contentType13 = getelementptr inbounds %struct.CMS_ContentInfo_st, %struct.CMS_ContentInfo_st* %cms, i64 0, i32 0
  %2 = load %struct.asn1_object_st*, %struct.asn1_object_st** %contentType13, align 8, !tbaa !28
  %call14 = tail call i32 @OBJ_obj2nid(%struct.asn1_object_st* noundef %2) #5
  %cmp.not = icmp eq i32 %call14, 26
  br i1 %cmp.not, label %if.end17, label %if.then15

if.then15:                                        ; preds = %if.else
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 234, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.CMS_EncryptedData_set1_key, i64 0, i64 0)) #5
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 46, i32 noundef 122, i8* noundef null) #5
  br label %cleanup

if.end17:                                         ; preds = %if.else, %if.end9
  %d18 = getelementptr inbounds %struct.CMS_ContentInfo_st, %struct.CMS_ContentInfo_st* %cms, i64 0, i32 1
  %encryptedData19 = bitcast %union.anon.0* %d18 to %struct.CMS_EncryptedData_st**
  %3 = load %struct.CMS_EncryptedData_st*, %struct.CMS_EncryptedData_st** %encryptedData19, align 8, !tbaa !27
  %encryptedContentInfo = getelementptr inbounds %struct.CMS_EncryptedData_st, %struct.CMS_EncryptedData_st* %3, i64 0, i32 1
  %4 = load %struct.CMS_EncryptedContentInfo_st*, %struct.CMS_EncryptedContentInfo_st** %encryptedContentInfo, align 8, !tbaa !33
  %call20 = tail call %struct.CMS_CTX_st* @ossl_cms_get0_cmsctx(%struct.CMS_ContentInfo_st* noundef nonnull %cms) #5
  %call21 = tail call i32 @ossl_cms_EncryptedContent_init(%struct.CMS_EncryptedContentInfo_st* noundef %4, %struct.evp_cipher_st* noundef %ciph, i8* noundef nonnull %key, i64 noundef %keylen, %struct.CMS_CTX_st* undef) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end17, %if.then15, %if.then8, %if.then
  %retval.0 = phi i32 [ %call21, %if.end17 ], [ 0, %if.then8 ], [ 0, %if.then15 ], [ 0, %if.then ]
  ret i32 %retval.0
}

declare %struct.ASN1_VALUE_st* @ASN1_item_new(%struct.ASN1_ITEM_st* noundef) local_unnamed_addr #2

declare %struct.ASN1_ITEM_st* @CMS_EncryptedData_it() local_unnamed_addr #2

declare %struct.CMS_CTX_st* @ossl_cms_get0_cmsctx(%struct.CMS_ContentInfo_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define %struct.bio_st* @ossl_cms_EncryptedData_init_bio(%struct.CMS_ContentInfo_st* noundef %cms) local_unnamed_addr #0 {
entry:
  %d = getelementptr inbounds %struct.CMS_ContentInfo_st, %struct.CMS_ContentInfo_st* %cms, i64 0, i32 1
  %encryptedData = bitcast %union.anon.0* %d to %struct.CMS_EncryptedData_st**
  %0 = load %struct.CMS_EncryptedData_st*, %struct.CMS_EncryptedData_st** %encryptedData, align 8, !tbaa !27
  %encryptedContentInfo = getelementptr inbounds %struct.CMS_EncryptedData_st, %struct.CMS_EncryptedData_st* %0, i64 0, i32 1
  %1 = load %struct.CMS_EncryptedContentInfo_st*, %struct.CMS_EncryptedContentInfo_st** %encryptedContentInfo, align 8, !tbaa !33
  %cipher = getelementptr inbounds %struct.CMS_EncryptedContentInfo_st, %struct.CMS_EncryptedContentInfo_st* %1, i64 0, i32 3
  %2 = load %struct.evp_cipher_st*, %struct.evp_cipher_st** %cipher, align 8, !tbaa !11
  %tobool.not = icmp eq %struct.evp_cipher_st* %2, null
  br i1 %tobool.not, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %unprotectedAttrs = getelementptr inbounds %struct.CMS_EncryptedData_st, %struct.CMS_EncryptedData_st* %0, i64 0, i32 2
  %3 = load %struct.stack_st_X509_ATTRIBUTE*, %struct.stack_st_X509_ATTRIBUTE** %unprotectedAttrs, align 8, !tbaa !34
  %tobool1.not = icmp eq %struct.stack_st_X509_ATTRIBUTE* %3, null
  br i1 %tobool1.not, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %version = getelementptr inbounds %struct.CMS_EncryptedData_st, %struct.CMS_EncryptedData_st* %0, i64 0, i32 0
  store i32 2, i32* %version, align 8, !tbaa !31
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %call = tail call %struct.CMS_CTX_st* @ossl_cms_get0_cmsctx(%struct.CMS_ContentInfo_st* noundef nonnull %cms) #5
  %call3 = tail call %struct.bio_st* @ossl_cms_EncryptedContent_init_bio(%struct.CMS_EncryptedContentInfo_st* noundef nonnull %1, %struct.CMS_CTX_st* noundef %call) #6
  ret %struct.bio_st* %call3
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }
attributes #5 = { nobuiltin nounwind "no-builtins" }
attributes #6 = { nobuiltin "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{!"clang version 14.0.0"}
!4 = !{!5, !6, i64 8}
!5 = !{!"CMS_EncryptedContentInfo_st", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !9, i64 40, !6, i64 48, !9, i64 56, !10, i64 64, !10, i64 68}
!6 = !{!"any pointer", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!"long", !7, i64 0}
!10 = !{!"int", !7, i64 0}
!11 = !{!5, !6, i64 24}
!12 = !{!5, !6, i64 32}
!13 = !{!14, !6, i64 0}
!14 = !{!"X509_algor_st", !6, i64 0, !6, i64 8}
!15 = !{!6, !6, i64 0}
!16 = !{!14, !6, i64 8}
!17 = !{!5, !9, i64 56}
!18 = !{!5, !6, i64 48}
!19 = !{!5, !9, i64 40}
!20 = !{!5, !10, i64 64}
!21 = !{!22, !10, i64 16}
!22 = !{!"", !7, i64 0, !10, i64 16, !10, i64 20}
!23 = !{!22, !10, i64 20}
!24 = !{!25, !10, i64 0}
!25 = !{!"asn1_type_st", !10, i64 0, !7, i64 8}
!26 = !{!5, !6, i64 0}
!27 = !{!7, !7, i64 0}
!28 = !{!29, !6, i64 0}
!29 = !{!"CMS_ContentInfo_st", !6, i64 0, !7, i64 8, !30, i64 16}
!30 = !{!"CMS_CTX_st", !6, i64 0, !6, i64 8}
!31 = !{!32, !10, i64 0}
!32 = !{!"CMS_EncryptedData_st", !10, i64 0, !6, i64 8, !6, i64 16}
!33 = !{!32, !6, i64 8}
!34 = !{!32, !6, i64 16}
