; ModuleID = 'crypto/pkcs12/p12_decr.c'
source_filename = "crypto/pkcs12/p12_decr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.X509_algor_st = type { %struct.asn1_object_st*, %struct.asn1_type_st* }
%struct.asn1_object_st = type opaque
%struct.asn1_type_st = type { i32, %union.anon }
%union.anon = type { i8* }
%struct.ossl_lib_ctx_st = type opaque
%struct.evp_cipher_ctx_st = type opaque
%struct.evp_cipher_st = type opaque
%struct.ASN1_ITEM_st = type opaque
%struct.asn1_string_st = type { i32, i32, i8*, i64 }
%struct.ASN1_VALUE_st = type opaque

@.str = private unnamed_addr constant [25 x i8] c"crypto/pkcs12/p12_decr.c\00", align 1
@__func__.PKCS12_pbe_crypt_ex = private unnamed_addr constant [20 x i8] c"PKCS12_pbe_crypt_ex\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"empty password\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"maybe wrong password\00", align 1
@__func__.PKCS12_item_decrypt_d2i_ex = private unnamed_addr constant [27 x i8] c"PKCS12_item_decrypt_d2i_ex\00", align 1
@__func__.PKCS12_item_i2d_encrypt_ex = private unnamed_addr constant [27 x i8] c"PKCS12_item_i2d_encrypt_ex\00", align 1

; Function Attrs: noinline nounwind uwtable
define i8* @PKCS12_pbe_crypt_ex(%struct.X509_algor_st* nocapture noundef readonly %algor, i8* noundef %pass, i32 noundef %passlen, i8* noundef %in, i32 noundef %inlen, i8** noundef writeonly %data, i32* noundef writeonly %datalen, i32 noundef %en_de, %struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef %propq) local_unnamed_addr #0 {
entry:
  %i = alloca i32, align 4
  %mac_len = alloca i32, align 4
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #3
  %call = tail call %struct.evp_cipher_ctx_st* @EVP_CIPHER_CTX_new() #4
  %1 = bitcast i32* %mac_len to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %1) #3
  store i32 0, i32* %mac_len, align 4, !tbaa !4
  %cmp = icmp eq %struct.evp_cipher_ctx_st* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #4
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 31, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.PKCS12_pbe_crypt_ex, i64 0, i64 0)) #4
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 35, i32 noundef 786688, i8* noundef null) #4
  br label %err

if.end:                                           ; preds = %entry
  %algorithm = getelementptr inbounds %struct.X509_algor_st, %struct.X509_algor_st* %algor, i64 0, i32 0
  %2 = load %struct.asn1_object_st*, %struct.asn1_object_st** %algorithm, align 8, !tbaa !8
  %parameter = getelementptr inbounds %struct.X509_algor_st, %struct.X509_algor_st* %algor, i64 0, i32 1
  %3 = load %struct.asn1_type_st*, %struct.asn1_type_st** %parameter, align 8, !tbaa !11
  %call1 = tail call i32 @EVP_PBE_CipherInit_ex(%struct.asn1_object_st* noundef %2, i8* noundef %pass, i32 noundef %passlen, %struct.asn1_type_st* noundef %3, %struct.evp_cipher_ctx_st* noundef nonnull %call, i32 noundef %en_de, %struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef %propq) #4
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %err, label %if.end3

if.end3:                                          ; preds = %if.end
  %call4 = tail call i32 @EVP_CIPHER_CTX_get_block_size(%struct.evp_cipher_ctx_st* noundef nonnull %call) #4
  %add = add nsw i32 %call4, %inlen
  %call5 = tail call %struct.evp_cipher_st* @EVP_CIPHER_CTX_get0_cipher(%struct.evp_cipher_ctx_st* noundef nonnull %call) #4
  %call6 = tail call i64 @EVP_CIPHER_get_flags(%struct.evp_cipher_st* noundef %call5) #4
  %and = and i64 %call6, 33554432
  %cmp7.not = icmp eq i64 %and, 0
  br i1 %cmp7.not, label %if.end25, label %if.then8

if.then8:                                         ; preds = %if.end3
  %call9 = call i32 @EVP_CIPHER_CTX_ctrl(%struct.evp_cipher_ctx_st* noundef nonnull %call, i32 noundef 22, i32 noundef 0, i8* noundef nonnull %1) #4
  %cmp10 = icmp slt i32 %call9, 0
  br i1 %cmp10, label %if.then11, label %if.end12

if.then11:                                        ; preds = %if.then8
  call void @ERR_new() #4
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 50, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.PKCS12_pbe_crypt_ex, i64 0, i64 0)) #4
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 35, i32 noundef 786691, i8* noundef null) #4
  br label %err

if.end12:                                         ; preds = %if.then8
  %call13 = call i32 @EVP_CIPHER_CTX_is_encrypting(%struct.evp_cipher_ctx_st* noundef nonnull %call) #4
  %tobool14.not = icmp eq i32 %call13, 0
  %4 = load i32, i32* %mac_len, align 4, !tbaa !4
  br i1 %tobool14.not, label %if.else, label %if.then15

if.then15:                                        ; preds = %if.end12
  %add16 = add nsw i32 %4, %add
  br label %if.end25

if.else:                                          ; preds = %if.end12
  %cmp17 = icmp sgt i32 %4, %inlen
  br i1 %cmp17, label %if.then18, label %if.end19

if.then18:                                        ; preds = %if.else
  call void @ERR_new() #4
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 58, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.PKCS12_pbe_crypt_ex, i64 0, i64 0)) #4
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 35, i32 noundef 119, i8* noundef null) #4
  br label %err

if.end19:                                         ; preds = %if.else
  %sub = sub nsw i32 %inlen, %4
  %idx.ext = sext i32 %sub to i64
  %add.ptr = getelementptr inbounds i8, i8* %in, i64 %idx.ext
  %call20 = call i32 @EVP_CIPHER_CTX_ctrl(%struct.evp_cipher_ctx_st* noundef nonnull %call, i32 noundef 17, i32 noundef %4, i8* noundef %add.ptr) #4
  %cmp21 = icmp slt i32 %call20, 0
  br i1 %cmp21, label %if.then22, label %if.end25

if.then22:                                        ; preds = %if.end19
  call void @ERR_new() #4
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 64, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.PKCS12_pbe_crypt_ex, i64 0, i64 0)) #4
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 35, i32 noundef 786691, i8* noundef null) #4
  br label %err

if.end25:                                         ; preds = %if.then15, %if.end19, %if.end3
  %inlen.addr.0 = phi i32 [ %inlen, %if.then15 ], [ %sub, %if.end19 ], [ %inlen, %if.end3 ]
  %max_out_len.0 = phi i32 [ %add16, %if.then15 ], [ %add, %if.end19 ], [ %add, %if.end3 ]
  %conv = sext i32 %max_out_len.0 to i64
  %call26 = call i8* @CRYPTO_malloc(i64 noundef %conv, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 70) #4
  %cmp27 = icmp eq i8* %call26, null
  br i1 %cmp27, label %if.then29, label %if.end30

if.then29:                                        ; preds = %if.end25
  call void @ERR_new() #4
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 71, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.PKCS12_pbe_crypt_ex, i64 0, i64 0)) #4
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 35, i32 noundef 786688, i8* noundef null) #4
  br label %err

if.end30:                                         ; preds = %if.end25
  %call31 = call i32 @EVP_CipherUpdate(%struct.evp_cipher_ctx_st* noundef nonnull %call, i8* noundef nonnull %call26, i32* noundef nonnull %i, i8* noundef %in, i32 noundef %inlen.addr.0) #4
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %if.then33, label %if.end34

if.then33:                                        ; preds = %if.end30
  call void @CRYPTO_free(i8* noundef nonnull %call26, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 76) #4
  call void @ERR_new() #4
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 78, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.PKCS12_pbe_crypt_ex, i64 0, i64 0)) #4
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 35, i32 noundef 524294, i8* noundef null) #4
  br label %err

if.end34:                                         ; preds = %if.end30
  %5 = load i32, i32* %i, align 4, !tbaa !4
  %idx.ext35 = sext i32 %5 to i64
  %add.ptr36 = getelementptr inbounds i8, i8* %call26, i64 %idx.ext35
  %call37 = call i32 @EVP_CipherFinal_ex(%struct.evp_cipher_ctx_st* noundef nonnull %call, i8* noundef nonnull %add.ptr36, i32* noundef nonnull %i) #4
  %tobool38.not = icmp eq i32 %call37, 0
  br i1 %tobool38.not, label %if.then39, label %if.end42

if.then39:                                        ; preds = %if.end34
  call void @CRYPTO_free(i8* noundef nonnull %call26, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 84) #4
  call void @ERR_new() #4
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 86, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.PKCS12_pbe_crypt_ex, i64 0, i64 0)) #4
  %cmp40 = icmp eq i32 %passlen, 0
  %cond = select i1 %cmp40, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0)
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 35, i32 noundef 116, i8* noundef %cond) #4
  br label %err

if.end42:                                         ; preds = %if.end34
  %6 = load i32, i32* %i, align 4, !tbaa !4
  %add43 = add nsw i32 %6, %5
  %call44 = call %struct.evp_cipher_st* @EVP_CIPHER_CTX_get0_cipher(%struct.evp_cipher_ctx_st* noundef nonnull %call) #4
  %call45 = call i64 @EVP_CIPHER_get_flags(%struct.evp_cipher_st* noundef %call44) #4
  %and46 = and i64 %call45, 33554432
  %cmp47.not = icmp eq i64 %and46, 0
  br i1 %cmp47.not, label %if.end62, label %if.then49

if.then49:                                        ; preds = %if.end42
  %call50 = call i32 @EVP_CIPHER_CTX_is_encrypting(%struct.evp_cipher_ctx_st* noundef nonnull %call) #4
  %tobool51.not = icmp eq i32 %call50, 0
  br i1 %tobool51.not, label %if.end62, label %if.then52

if.then52:                                        ; preds = %if.then49
  %7 = load i32, i32* %mac_len, align 4, !tbaa !4
  %idx.ext53 = sext i32 %add43 to i64
  %add.ptr54 = getelementptr inbounds i8, i8* %call26, i64 %idx.ext53
  %call55 = call i32 @EVP_CIPHER_CTX_ctrl(%struct.evp_cipher_ctx_st* noundef nonnull %call, i32 noundef 16, i32 noundef %7, i8* noundef nonnull %add.ptr54) #4
  %cmp56 = icmp slt i32 %call55, 0
  br i1 %cmp56, label %if.then58, label %if.end59

if.then58:                                        ; preds = %if.then52
  call void @ERR_new() #4
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 97, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.PKCS12_pbe_crypt_ex, i64 0, i64 0)) #4
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 35, i32 noundef 786691, i8* noundef null) #4
  br label %err

if.end59:                                         ; preds = %if.then52
  %8 = load i32, i32* %mac_len, align 4, !tbaa !4
  %add60 = add nsw i32 %8, %add43
  br label %if.end62

if.end62:                                         ; preds = %if.then49, %if.end59, %if.end42
  %outlen.0 = phi i32 [ %add60, %if.end59 ], [ %add43, %if.then49 ], [ %add43, %if.end42 ]
  %tobool63.not = icmp eq i32* %datalen, null
  br i1 %tobool63.not, label %if.end65, label %if.then64

if.then64:                                        ; preds = %if.end62
  store i32 %outlen.0, i32* %datalen, align 4, !tbaa !4
  br label %if.end65

if.end65:                                         ; preds = %if.then64, %if.end62
  %tobool66.not = icmp eq i8** %data, null
  br i1 %tobool66.not, label %err, label %if.then67

if.then67:                                        ; preds = %if.end65
  store i8* %call26, i8** %data, align 8, !tbaa !12
  br label %err

err:                                              ; preds = %if.end65, %if.then67, %if.end, %if.then58, %if.then39, %if.then33, %if.then29, %if.then22, %if.then18, %if.then11, %if.then
  %out.0 = phi i8* [ null, %if.then ], [ null, %if.then11 ], [ null, %if.then29 ], [ %call26, %if.then58 ], [ %call26, %if.then67 ], [ %call26, %if.end65 ], [ null, %if.then39 ], [ null, %if.then33 ], [ null, %if.then18 ], [ null, %if.then22 ], [ null, %if.end ]
  call void @EVP_CIPHER_CTX_free(%struct.evp_cipher_ctx_st* noundef %call) #4
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %1) #3
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #3
  ret i8* %out.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

declare %struct.evp_cipher_ctx_st* @EVP_CIPHER_CTX_new() local_unnamed_addr #2

declare void @ERR_new() local_unnamed_addr #2

declare void @ERR_set_debug(i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #2

declare void @ERR_set_error(i32 noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #2

declare i32 @EVP_PBE_CipherInit_ex(%struct.asn1_object_st* noundef, i8* noundef, i32 noundef, %struct.asn1_type_st* noundef, %struct.evp_cipher_ctx_st* noundef, i32 noundef, %struct.ossl_lib_ctx_st* noundef, i8* noundef) local_unnamed_addr #2

declare i32 @EVP_CIPHER_CTX_get_block_size(%struct.evp_cipher_ctx_st* noundef) local_unnamed_addr #2

declare i64 @EVP_CIPHER_get_flags(%struct.evp_cipher_st* noundef) local_unnamed_addr #2

declare %struct.evp_cipher_st* @EVP_CIPHER_CTX_get0_cipher(%struct.evp_cipher_ctx_st* noundef) local_unnamed_addr #2

declare i32 @EVP_CIPHER_CTX_ctrl(%struct.evp_cipher_ctx_st* noundef, i32 noundef, i32 noundef, i8* noundef) local_unnamed_addr #2

declare i32 @EVP_CIPHER_CTX_is_encrypting(%struct.evp_cipher_ctx_st* noundef) local_unnamed_addr #2

declare i8* @CRYPTO_malloc(i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare i32 @EVP_CipherUpdate(%struct.evp_cipher_ctx_st* noundef, i8* noundef, i32* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare void @CRYPTO_free(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare i32 @EVP_CipherFinal_ex(%struct.evp_cipher_ctx_st* noundef, i8* noundef, i32* noundef) local_unnamed_addr #2

declare void @EVP_CIPHER_CTX_free(%struct.evp_cipher_ctx_st* noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: noinline nounwind uwtable
define i8* @PKCS12_pbe_crypt(%struct.X509_algor_st* nocapture noundef readonly %algor, i8* noundef %pass, i32 noundef %passlen, i8* noundef %in, i32 noundef %inlen, i8** noundef %data, i32* noundef %datalen, i32 noundef %en_de) local_unnamed_addr #0 {
entry:
  %call = tail call i8* @PKCS12_pbe_crypt_ex(%struct.X509_algor_st* noundef %algor, i8* noundef %pass, i32 noundef %passlen, i8* noundef %in, i32 noundef %inlen, i8** noundef %data, i32* noundef %datalen, i32 noundef %en_de, %struct.ossl_lib_ctx_st* noundef null, i8* noundef null) #5
  ret i8* %call
}

; Function Attrs: noinline nounwind uwtable
define i8* @PKCS12_item_decrypt_d2i_ex(%struct.X509_algor_st* nocapture noundef readonly %algor, %struct.ASN1_ITEM_st* noundef %it, i8* noundef %pass, i32 noundef %passlen, %struct.asn1_string_st* nocapture noundef readonly %oct, i32 noundef %zbuf, %struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef %propq) local_unnamed_addr #0 {
entry:
  %out = alloca i8*, align 8
  %p = alloca i8*, align 8
  %outlen = alloca i32, align 4
  %0 = bitcast i8** %out to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #3
  store i8* null, i8** %out, align 8, !tbaa !12
  %1 = bitcast i8** %p to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #3
  %2 = bitcast i32* %outlen to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %2) #3
  store i32 0, i32* %outlen, align 4, !tbaa !4
  %data = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %oct, i64 0, i32 2
  %3 = load i8*, i8** %data, align 8, !tbaa !13
  %length = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %oct, i64 0, i32 0
  %4 = load i32, i32* %length, align 8, !tbaa !16
  %call = call i8* @PKCS12_pbe_crypt_ex(%struct.X509_algor_st* noundef %algor, i8* noundef %pass, i32 noundef %passlen, i8* noundef %3, i32 noundef %4, i8** noundef nonnull %out, i32* noundef nonnull %outlen, i32 noundef 0, %struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef %propq) #5
  %tobool.not = icmp eq i8* %call, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %5 = load i8*, i8** %out, align 8, !tbaa !12
  store i8* %5, i8** %p, align 8, !tbaa !12
  %6 = load i32, i32* %outlen, align 4, !tbaa !4
  %conv = sext i32 %6 to i64
  %call1 = call %struct.ASN1_VALUE_st* @ASN1_item_d2i(%struct.ASN1_VALUE_st** noundef null, i8** noundef nonnull %p, i64 noundef %conv, %struct.ASN1_ITEM_st* noundef %it) #4
  %7 = bitcast %struct.ASN1_VALUE_st* %call1 to i8*
  %tobool2.not = icmp eq i32 %zbuf, 0
  br i1 %tobool2.not, label %if.end5, label %if.then3

if.then3:                                         ; preds = %if.end
  %8 = load i8*, i8** %out, align 8, !tbaa !12
  %9 = load i32, i32* %outlen, align 4, !tbaa !4
  %conv4 = sext i32 %9 to i64
  call void @OPENSSL_cleanse(i8* noundef %8, i64 noundef %conv4) #4
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %if.end
  %tobool6.not = icmp eq %struct.ASN1_VALUE_st* %call1, null
  br i1 %tobool6.not, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.end5
  call void @ERR_new() #4
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 151, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.PKCS12_item_decrypt_d2i_ex, i64 0, i64 0)) #4
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 35, i32 noundef 101, i8* noundef null) #4
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %if.end5
  %10 = load i8*, i8** %out, align 8, !tbaa !12
  call void @CRYPTO_free(i8* noundef %10, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 152) #4
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end8
  %retval.0 = phi i8* [ %7, %if.end8 ], [ null, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2) #3
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #3
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #3
  ret i8* %retval.0
}

declare %struct.ASN1_VALUE_st* @ASN1_item_d2i(%struct.ASN1_VALUE_st** noundef, i8** noundef, i64 noundef, %struct.ASN1_ITEM_st* noundef) local_unnamed_addr #2

declare void @OPENSSL_cleanse(i8* noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i8* @PKCS12_item_decrypt_d2i(%struct.X509_algor_st* nocapture noundef readonly %algor, %struct.ASN1_ITEM_st* noundef %it, i8* noundef %pass, i32 noundef %passlen, %struct.asn1_string_st* nocapture noundef readonly %oct, i32 noundef %zbuf) local_unnamed_addr #0 {
entry:
  %call = tail call i8* @PKCS12_item_decrypt_d2i_ex(%struct.X509_algor_st* noundef %algor, %struct.ASN1_ITEM_st* noundef %it, i8* noundef %pass, i32 noundef %passlen, %struct.asn1_string_st* noundef %oct, i32 noundef %zbuf, %struct.ossl_lib_ctx_st* noundef null, i8* noundef null) #5
  ret i8* %call
}

; Function Attrs: noinline nounwind uwtable
define %struct.asn1_string_st* @PKCS12_item_i2d_encrypt_ex(%struct.X509_algor_st* nocapture noundef readonly %algor, %struct.ASN1_ITEM_st* noundef %it, i8* noundef %pass, i32 noundef %passlen, i8* noundef %obj, i32 noundef %zbuf, %struct.ossl_lib_ctx_st* noundef %ctx, i8* noundef %propq) local_unnamed_addr #0 {
entry:
  %in = alloca i8*, align 8
  %0 = bitcast i8** %in to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #3
  store i8* null, i8** %in, align 8, !tbaa !12
  %call = tail call %struct.asn1_string_st* @ASN1_OCTET_STRING_new() #4
  %cmp = icmp eq %struct.asn1_string_st* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #4
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 181, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.PKCS12_item_i2d_encrypt_ex, i64 0, i64 0)) #4
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 35, i32 noundef 786688, i8* noundef null) #4
  br label %err

if.end:                                           ; preds = %entry
  %1 = bitcast i8* %obj to %struct.ASN1_VALUE_st*
  %call1 = call i32 @ASN1_item_i2d(%struct.ASN1_VALUE_st* noundef %1, i8** noundef nonnull %in, %struct.ASN1_ITEM_st* noundef %it) #4
  %2 = load i8*, i8** %in, align 8, !tbaa !12
  %tobool.not = icmp eq i8* %2, null
  br i1 %tobool.not, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  call void @ERR_new() #4
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 186, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.PKCS12_item_i2d_encrypt_ex, i64 0, i64 0)) #4
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 35, i32 noundef 102, i8* noundef null) #4
  br label %err

if.end3:                                          ; preds = %if.end
  %data = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %call, i64 0, i32 2
  %length = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %call, i64 0, i32 0
  %call4 = call i8* @PKCS12_pbe_crypt_ex(%struct.X509_algor_st* noundef %algor, i8* noundef %pass, i32 noundef %passlen, i8* noundef nonnull %2, i32 noundef %call1, i8** noundef nonnull %data, i32* noundef nonnull %length, i32 noundef 1, %struct.ossl_lib_ctx_st* noundef %ctx, i8* noundef %propq) #5
  %tobool5.not = icmp eq i8* %call4, null
  br i1 %tobool5.not, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.end3
  call void @ERR_new() #4
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 191, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.PKCS12_item_i2d_encrypt_ex, i64 0, i64 0)) #4
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 35, i32 noundef 103, i8* noundef null) #4
  %3 = load i8*, i8** %in, align 8, !tbaa !12
  call void @CRYPTO_free(i8* noundef %3, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 192) #4
  br label %err

if.end7:                                          ; preds = %if.end3
  %tobool8.not = icmp eq i32 %zbuf, 0
  br i1 %tobool8.not, label %if.end10, label %if.then9

if.then9:                                         ; preds = %if.end7
  %4 = load i8*, i8** %in, align 8, !tbaa !12
  %conv = sext i32 %call1 to i64
  call void @OPENSSL_cleanse(i8* noundef %4, i64 noundef %conv) #4
  br label %if.end10

if.end10:                                         ; preds = %if.then9, %if.end7
  %5 = load i8*, i8** %in, align 8, !tbaa !12
  call void @CRYPTO_free(i8* noundef %5, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 197) #4
  br label %cleanup

err:                                              ; preds = %if.then6, %if.then2, %if.then
  call void @ASN1_OCTET_STRING_free(%struct.asn1_string_st* noundef %call) #4
  br label %cleanup

cleanup:                                          ; preds = %err, %if.end10
  %retval.0 = phi %struct.asn1_string_st* [ null, %err ], [ %call, %if.end10 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #3
  ret %struct.asn1_string_st* %retval.0
}

declare %struct.asn1_string_st* @ASN1_OCTET_STRING_new() local_unnamed_addr #2

declare i32 @ASN1_item_i2d(%struct.ASN1_VALUE_st* noundef, i8** noundef, %struct.ASN1_ITEM_st* noundef) local_unnamed_addr #2

declare void @ASN1_OCTET_STRING_free(%struct.asn1_string_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define %struct.asn1_string_st* @PKCS12_item_i2d_encrypt(%struct.X509_algor_st* nocapture noundef readonly %algor, %struct.ASN1_ITEM_st* noundef %it, i8* noundef %pass, i32 noundef %passlen, i8* noundef %obj, i32 noundef %zbuf) local_unnamed_addr #0 {
entry:
  %call = tail call %struct.asn1_string_st* @PKCS12_item_i2d_encrypt_ex(%struct.X509_algor_st* noundef %algor, %struct.ASN1_ITEM_st* noundef %it, i8* noundef %pass, i32 noundef %passlen, i8* noundef %obj, i32 noundef %zbuf, %struct.ossl_lib_ctx_st* noundef null, i8* noundef null) #5
  ret %struct.asn1_string_st* %call
}

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
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !10, i64 0}
!9 = !{!"X509_algor_st", !10, i64 0, !10, i64 8}
!10 = !{!"any pointer", !6, i64 0}
!11 = !{!9, !10, i64 8}
!12 = !{!10, !10, i64 0}
!13 = !{!14, !10, i64 8}
!14 = !{!"asn1_string_st", !5, i64 0, !5, i64 4, !10, i64 8, !15, i64 16}
!15 = !{!"long", !6, i64 0}
!16 = !{!14, !5, i64 0}
