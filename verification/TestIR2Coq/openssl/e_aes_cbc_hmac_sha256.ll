; ModuleID = 'crypto/evp/e_aes_cbc_hmac_sha256.c'
source_filename = "crypto/evp/e_aes_cbc_hmac_sha256.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evp_cipher_st = type { i32, i32, i32, i32, i64, i32, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i32)*, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i64)*, i32 (%struct.evp_cipher_ctx_st*)*, i32, i32 (%struct.evp_cipher_ctx_st*, %struct.asn1_type_st*)*, i32 (%struct.evp_cipher_ctx_st*, %struct.asn1_type_st*)*, i32 (%struct.evp_cipher_ctx_st*, i32, i32, i8*)*, i8*, i32, i8*, i8*, %struct.ossl_provider_st*, i32, i8*, i8* (i8*)*, i32 (i8*, i8*, i64, i8*, i64, %struct.ossl_param_st*)*, i32 (i8*, i8*, i64, i8*, i64, %struct.ossl_param_st*)*, i32 (i8*, i8*, i64*, i64, i8*, i64)*, i32 (i8*, i8*, i64*, i64)*, i32 (i8*, i8*, i64*, i64, i8*, i64)*, void (i8*)*, i8* (i8*)*, i32 (%struct.ossl_param_st*)*, i32 (i8*, %struct.ossl_param_st*)*, i32 (i8*, %struct.ossl_param_st*)*, %struct.ossl_param_st* (i8*)*, %struct.ossl_param_st* (i8*, i8*)*, %struct.ossl_param_st* (i8*, i8*)* }
%struct.evp_cipher_ctx_st = type { %struct.evp_cipher_st*, %struct.engine_st*, i32, i32, [16 x i8], [16 x i8], [32 x i8], i32, i8*, i32, i64, i8*, i32, i32, [32 x i8], i8*, %struct.evp_cipher_st* }
%struct.engine_st = type opaque
%struct.asn1_type_st = type { i32, %union.anon }
%union.anon = type { i8* }
%struct.ossl_provider_st = type opaque
%struct.ossl_param_st = type { i8*, i32, i8*, i64, i64 }
%struct.aes_key_st = type { [60 x i32], i32 }
%struct.SHA256state_st = type { [8 x i32], i32, i32, [16 x i32], i32, i32 }
%union.anon.1 = type { [8 x i32], [64 x i8] }
%struct.EVP_AES_HMAC_SHA256 = type { %struct.aes_key_st, %struct.SHA256state_st, %struct.SHA256state_st, %struct.SHA256state_st, i64, %union.anon.0 }
%union.anon.0 = type { i32, [12 x i8] }
%struct.HASH_DESC = type { i8*, i32 }
%struct.CIPH_DESC = type { i8*, i8*, i32, [2 x i64] }
%union.anon.3 = type { [16 x i64] }
%struct.SHA256_MB_CTX = type { [8 x i32], [8 x i32], [8 x i32], [8 x i32], [8 x i32], [8 x i32], [8 x i32], [8 x i32] }

@OPENSSL_ia32cap_P = external local_unnamed_addr global [0 x i32], align 4
@aesni_128_cbc_hmac_sha256_cipher = internal global %struct.evp_cipher_st { i32 948, i32 16, i32 16, i32 16, i64 6291458, i32 1, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i32)* @aesni_cbc_hmac_sha256_init_key, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i64)* @aesni_cbc_hmac_sha256_cipher, i32 (%struct.evp_cipher_ctx_st*)* null, i32 608, i32 (%struct.evp_cipher_ctx_st*, %struct.asn1_type_st*)* @EVP_CIPHER_set_asn1_iv, i32 (%struct.evp_cipher_ctx_st*, %struct.asn1_type_st*)* @EVP_CIPHER_get_asn1_iv, i32 (%struct.evp_cipher_ctx_st*, i32, i32, i8*)* @aesni_cbc_hmac_sha256_ctrl, i8* null, i32 0, i8* null, i8* null, %struct.ossl_provider_st* null, i32 0, i8* null, i8* (i8*)* null, i32 (i8*, i8*, i64, i8*, i64, %struct.ossl_param_st*)* null, i32 (i8*, i8*, i64, i8*, i64, %struct.ossl_param_st*)* null, i32 (i8*, i8*, i64*, i64, i8*, i64)* null, i32 (i8*, i8*, i64*, i64)* null, i32 (i8*, i8*, i64*, i64, i8*, i64)* null, void (i8*)* null, i8* (i8*)* null, i32 (%struct.ossl_param_st*)* null, i32 (i8*, %struct.ossl_param_st*)* null, i32 (i8*, %struct.ossl_param_st*)* null, %struct.ossl_param_st* (i8*)* null, %struct.ossl_param_st* (i8*, i8*)* null, %struct.ossl_param_st* (i8*, i8*)* null }, align 8
@aesni_256_cbc_hmac_sha256_cipher = internal global %struct.evp_cipher_st { i32 950, i32 16, i32 32, i32 16, i64 6291458, i32 1, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i32)* @aesni_cbc_hmac_sha256_init_key, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i64)* @aesni_cbc_hmac_sha256_cipher, i32 (%struct.evp_cipher_ctx_st*)* null, i32 608, i32 (%struct.evp_cipher_ctx_st*, %struct.asn1_type_st*)* @EVP_CIPHER_set_asn1_iv, i32 (%struct.evp_cipher_ctx_st*, %struct.asn1_type_st*)* @EVP_CIPHER_get_asn1_iv, i32 (%struct.evp_cipher_ctx_st*, i32, i32, i8*)* @aesni_cbc_hmac_sha256_ctrl, i8* null, i32 0, i8* null, i8* null, %struct.ossl_provider_st* null, i32 0, i8* null, i8* (i8*)* null, i32 (i8*, i8*, i64, i8*, i64, %struct.ossl_param_st*)* null, i32 (i8*, i8*, i64, i8*, i64, %struct.ossl_param_st*)* null, i32 (i8*, i8*, i64*, i64, i8*, i64)* null, i32 (i8*, i8*, i64*, i64)* null, i32 (i8*, i8*, i64*, i64, i8*, i64)* null, void (i8*)* null, i8* (i8*)* null, i32 (%struct.ossl_param_st*)* null, i32 (i8*, %struct.ossl_param_st*)* null, i32 (i8*, %struct.ossl_param_st*)* null, %struct.ossl_param_st* (i8*)* null, %struct.ossl_param_st* (i8*, i8*)* null, %struct.ossl_param_st* (i8*, i8*)* null }, align 8

; Function Attrs: noinline nounwind uwtable
define %struct.evp_cipher_st* @EVP_aes_128_cbc_hmac_sha256() local_unnamed_addr #0 {
entry:
  %0 = load i32, i32* getelementptr inbounds ([0 x i32], [0 x i32]* @OPENSSL_ia32cap_P, i64 0, i64 1), align 4, !tbaa !4
  %and = and i32 %0, 33554432
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %call = tail call i32 @aesni_cbc_sha256_enc(i8* noundef null, i8* noundef null, i64 noundef 0, %struct.aes_key_st* noundef null, i8* noundef null, %struct.SHA256state_st* noundef null, i8* noundef null) #8
  %tobool1.not = icmp eq i32 %call, 0
  %phi.sel = select i1 %tobool1.not, %struct.evp_cipher_st* null, %struct.evp_cipher_st* @aesni_128_cbc_hmac_sha256_cipher
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %1 = phi %struct.evp_cipher_st* [ null, %entry ], [ %phi.sel, %land.rhs ]
  ret %struct.evp_cipher_st* %1
}

declare i32 @aesni_cbc_sha256_enc(i8* noundef, i8* noundef, i64 noundef, %struct.aes_key_st* noundef, i8* noundef, %struct.SHA256state_st* noundef, i8* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define %struct.evp_cipher_st* @EVP_aes_256_cbc_hmac_sha256() local_unnamed_addr #0 {
entry:
  %0 = load i32, i32* getelementptr inbounds ([0 x i32], [0 x i32]* @OPENSSL_ia32cap_P, i64 0, i64 1), align 4, !tbaa !4
  %and = and i32 %0, 33554432
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %call = tail call i32 @aesni_cbc_sha256_enc(i8* noundef null, i8* noundef null, i64 noundef 0, %struct.aes_key_st* noundef null, i8* noundef null, %struct.SHA256state_st* noundef null, i8* noundef null) #8
  %tobool1.not = icmp eq i32 %call, 0
  %phi.sel = select i1 %tobool1.not, %struct.evp_cipher_st* null, %struct.evp_cipher_st* @aesni_256_cbc_hmac_sha256_cipher
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %1 = phi %struct.evp_cipher_st* [ null, %entry ], [ %phi.sel, %land.rhs ]
  ret %struct.evp_cipher_st* %1
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @aesni_cbc_hmac_sha256_init_key(%struct.evp_cipher_ctx_st* noundef %ctx, i8* noundef %inkey, i8* nocapture noundef readnone %iv, i32 noundef %enc) #0 {
entry:
  %call = tail call i8* @EVP_CIPHER_CTX_get_cipher_data(%struct.evp_cipher_ctx_st* noundef %ctx) #8
  %tobool.not = icmp eq i32 %enc, 0
  %call3 = tail call i32 @EVP_CIPHER_CTX_get_key_length(%struct.evp_cipher_ctx_st* noundef %ctx) #8
  %mul4 = shl nsw i32 %call3, 3
  %ks5 = bitcast i8* %call to %struct.aes_key_st*
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %call2 = tail call i32 @aesni_set_encrypt_key(i8* noundef %inkey, i32 noundef %mul4, %struct.aes_key_st* noundef %ks5) #8
  br label %if.end

if.else:                                          ; preds = %entry
  %call6 = tail call i32 @aesni_set_decrypt_key(i8* noundef %inkey, i32 noundef %mul4, %struct.aes_key_st* noundef %ks5) #8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %ret.0 = phi i32 [ %call2, %if.then ], [ %call6, %if.else ]
  %head = getelementptr inbounds i8, i8* %call, i64 244
  %0 = bitcast i8* %head to %struct.SHA256state_st*
  %call7 = tail call i32 @SHA256_Init(%struct.SHA256state_st* noundef nonnull %0) #8
  %tail = getelementptr inbounds i8, i8* %call, i64 356
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 4 dereferenceable(112) %tail, i8* noundef nonnull align 4 dereferenceable(112) %head, i64 112, i1 false), !tbaa.struct !8
  %md = getelementptr inbounds i8, i8* %call, i64 468
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 4 dereferenceable(112) %md, i8* noundef nonnull align 4 dereferenceable(112) %head, i64 112, i1 false), !tbaa.struct !8
  %payload_length = getelementptr inbounds i8, i8* %call, i64 584
  %1 = bitcast i8* %payload_length to i64*
  store i64 -1, i64* %1, align 8, !tbaa !10
  %2 = xor i32 %ret.0, -1
  %ret.0.lobit.not = lshr i32 %2, 31
  ret i32 %ret.0.lobit.not
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @aesni_cbc_hmac_sha256_cipher(%struct.evp_cipher_ctx_st* noundef %ctx, i8* noundef %out, i8* noundef %in, i64 noundef %len) #0 {
entry:
  %mac = alloca %union.anon.1, align 4
  %call = tail call i8* @EVP_CIPHER_CTX_get_cipher_data(%struct.evp_cipher_ctx_st* noundef %ctx) #8
  %payload_length = getelementptr inbounds i8, i8* %call, i64 584
  %0 = bitcast i8* %payload_length to i64*
  %1 = load i64, i64* %0, align 8, !tbaa !10
  %md = getelementptr inbounds i8, i8* %call, i64 468
  %2 = bitcast i8* %md to %struct.SHA256state_st*
  %num = getelementptr inbounds i8, i8* %call, i64 572
  %3 = bitcast i8* %num to i32*
  %4 = load i32, i32* %3, align 4, !tbaa !15
  %sub = sub i32 64, %4
  %conv = zext i32 %sub to i64
  store i64 -1, i64* %0, align 8, !tbaa !10
  %rem = and i64 %len, 15
  %tobool.not = icmp eq i64 %rem, 0
  br i1 %tobool.not, label %if.end, label %cleanup662

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @EVP_CIPHER_CTX_is_encrypting(%struct.evp_cipher_ctx_st* noundef %ctx) #8
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.else107, label %if.then4

if.then4:                                         ; preds = %if.end
  %cmp = icmp eq i64 %1, -1
  br i1 %cmp, label %if.end17, label %if.else

if.else:                                          ; preds = %if.then4
  %add7 = add i64 %1, 48
  %and = and i64 %add7, -16
  %cmp8.not = icmp eq i64 %and, %len
  br i1 %cmp8.not, label %if.else11, label %cleanup662

if.else11:                                        ; preds = %if.else
  %aux = getelementptr inbounds i8, i8* %call, i64 592
  %tls_ver = bitcast i8* %aux to i32*
  %5 = load i32, i32* %tls_ver, align 8, !tbaa !9
  %cmp12 = icmp ugt i32 %5, 769
  %spec.select = select i1 %cmp12, i64 16, i64 0
  br label %if.end17

if.end17:                                         ; preds = %if.else11, %if.then4
  %iv.0 = phi i64 [ 0, %if.then4 ], [ %spec.select, %if.else11 ]
  %plen.0 = phi i64 [ %len, %if.then4 ], [ %1, %if.else11 ]
  %6 = load i32, i32* getelementptr inbounds ([0 x i32], [0 x i32]* @OPENSSL_ia32cap_P, i64 0, i64 2), align 4, !tbaa !4
  %and18 = and i32 %6, 536870912
  %tobool19.not = icmp eq i32 %and18, 0
  br i1 %tobool19.not, label %lor.lhs.false, label %land.lhs.true25

lor.lhs.false:                                    ; preds = %if.end17
  %7 = load i32, i32* getelementptr inbounds ([0 x i32], [0 x i32]* @OPENSSL_ia32cap_P, i64 0, i64 1), align 4, !tbaa !4
  %and20 = and i32 %7, 268435456
  %tobool21.not = icmp eq i32 %and20, 0
  br i1 %tobool21.not, label %if.end60, label %land.lhs.true

land.lhs.true:                                    ; preds = %lor.lhs.false
  %and22 = and i32 %7, 2048
  %8 = load i32, i32* getelementptr inbounds ([0 x i32], [0 x i32]* @OPENSSL_ia32cap_P, i64 0, i64 0), align 4, !tbaa !4
  %and23 = and i32 %8, 1073741824
  %or = or i32 %and23, %and22
  %tobool24.not = icmp eq i32 %or, 0
  br i1 %tobool24.not, label %if.end60, label %land.lhs.true25

land.lhs.true25:                                  ; preds = %land.lhs.true, %if.end17
  %add26 = add nuw nsw i64 %iv.0, %conv
  %cmp27 = icmp ugt i64 %plen.0, %add26
  br i1 %cmp27, label %land.lhs.true29, label %if.end60

land.lhs.true29:                                  ; preds = %land.lhs.true25
  %sub31 = sub i64 %plen.0, %add26
  %tobool32.not = icmp ult i64 %sub31, 64
  br i1 %tobool32.not, label %if.end60, label %if.then33

if.then33:                                        ; preds = %land.lhs.true29
  %div = lshr i64 %sub31, 6
  %add.ptr = getelementptr inbounds i8, i8* %in, i64 %iv.0
  tail call fastcc void @sha256_update(%struct.SHA256state_st* noundef nonnull %2, i8* noundef %add.ptr, i64 noundef %conv) #9
  %ks = bitcast i8* %call to %struct.aes_key_st*
  %arraydecay = getelementptr inbounds %struct.evp_cipher_ctx_st, %struct.evp_cipher_ctx_st* %ctx, i64 0, i32 5, i64 0
  %add.ptr38 = getelementptr inbounds i8, i8* %add.ptr, i64 %conv
  %call39 = tail call i32 @aesni_cbc_sha256_enc(i8* noundef %in, i8* noundef %out, i64 noundef %div, %struct.aes_key_st* noundef %ks, i8* noundef nonnull %arraydecay, %struct.SHA256state_st* noundef nonnull %2, i8* noundef %add.ptr38) #8
  %mul = and i64 %sub31, -64
  %add41 = add i64 %mul, %conv
  %shr = lshr i64 %sub31, 29
  %Nh = getelementptr inbounds i8, i8* %call, i64 504
  %9 = bitcast i8* %Nh to i32*
  %10 = load i32, i32* %9, align 4, !tbaa !16
  %11 = trunc i64 %shr to i32
  %conv45 = add i32 %10, %11
  store i32 %conv45, i32* %9, align 4, !tbaa !16
  %Nl = getelementptr inbounds i8, i8* %call, i64 500
  %12 = bitcast i8* %Nl to i32*
  %13 = load i32, i32* %12, align 4, !tbaa !17
  %mul.tr = trunc i64 %mul to i32
  %14 = shl i32 %mul.tr, 3
  %conv49 = add i32 %13, %14
  store i32 %conv49, i32* %12, align 4, !tbaa !17
  %cmp53 = icmp ult i32 %conv49, %14
  br i1 %cmp53, label %if.then55, label %if.end60

if.then55:                                        ; preds = %if.then33
  %inc = add i32 %conv45, 1
  store i32 %inc, i32* %9, align 4, !tbaa !16
  br label %if.end60

if.end60:                                         ; preds = %lor.lhs.false, %land.lhs.true, %land.lhs.true25, %land.lhs.true29, %if.then33, %if.then55
  %aes_off.0 = phi i64 [ %mul, %if.then55 ], [ %mul, %if.then33 ], [ 0, %land.lhs.true29 ], [ 0, %land.lhs.true25 ], [ 0, %land.lhs.true ], [ 0, %lor.lhs.false ]
  %sha_off.0 = phi i64 [ %add41, %if.then55 ], [ %add41, %if.then33 ], [ 0, %land.lhs.true29 ], [ 0, %land.lhs.true25 ], [ 0, %land.lhs.true ], [ 0, %lor.lhs.false ]
  %add61 = add i64 %sha_off.0, %iv.0
  %add.ptr63 = getelementptr inbounds i8, i8* %in, i64 %add61
  %sub64 = sub i64 %plen.0, %add61
  tail call fastcc void @sha256_update(%struct.SHA256state_st* noundef nonnull %2, i8* noundef %add.ptr63, i64 noundef %sub64) #9
  %cmp65.not = icmp eq i64 %plen.0, %len
  br i1 %cmp65.not, label %if.else99, label %if.then67

if.then67:                                        ; preds = %if.end60
  %cmp68.not = icmp eq i8* %in, %out
  br i1 %cmp68.not, label %if.end75, label %if.then70

if.then70:                                        ; preds = %if.then67
  %add.ptr71 = getelementptr inbounds i8, i8* %out, i64 %aes_off.0
  %add.ptr72 = getelementptr inbounds i8, i8* %in, i64 %aes_off.0
  %sub73 = sub i64 %plen.0, %aes_off.0
  %call74 = tail call i8* @memcpy(i8* noundef %add.ptr71, i8* noundef %add.ptr72, i64 noundef %sub73) #8
  br label %if.end75

if.end75:                                         ; preds = %if.then70, %if.then67
  %add.ptr76 = getelementptr inbounds i8, i8* %out, i64 %plen.0
  %call78 = tail call i32 @SHA256_Final(i8* noundef %add.ptr76, %struct.SHA256state_st* noundef nonnull %2) #8
  %tail = getelementptr inbounds i8, i8* %call, i64 356
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 4 dereferenceable(112) %md, i8* noundef nonnull align 4 dereferenceable(112) %tail, i64 112, i1 false), !tbaa.struct !8
  tail call fastcc void @sha256_update(%struct.SHA256state_st* noundef nonnull %2, i8* noundef %add.ptr76, i64 noundef 32) #9
  %call84 = tail call i32 @SHA256_Final(i8* noundef %add.ptr76, %struct.SHA256state_st* noundef nonnull %2) #8
  %add85 = add i64 %plen.0, 32
  %cmp891039 = icmp ult i64 %add85, %len
  br i1 %cmp891039, label %iter.check, label %for.end

iter.check:                                       ; preds = %if.end75
  %15 = add i64 %len, 223
  %sub87 = sub i64 %15, %plen.0
  %conv91 = trunc i64 %sub87 to i8
  %16 = add i64 %len, -32
  %17 = sub i64 %16, %plen.0
  %min.iters.check = icmp ult i64 %17, 8
  br i1 %min.iters.check, label %for.body.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check1060 = icmp ult i64 %17, 32
  br i1 %min.iters.check1060, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.vec = and i64 %17, -32
  %broadcast.splatinsert = insertelement <16 x i8> poison, i8 %conv91, i64 0
  %broadcast.splat = shufflevector <16 x i8> %broadcast.splatinsert, <16 x i8> poison, <16 x i32> zeroinitializer
  %broadcast.splatinsert1061 = insertelement <16 x i8> poison, i8 %conv91, i64 0
  %broadcast.splat1062 = shufflevector <16 x i8> %broadcast.splatinsert1061, <16 x i8> poison, <16 x i32> zeroinitializer
  %18 = add i64 %n.vec, -32
  %19 = lshr exact i64 %18, 5
  %20 = add nuw nsw i64 %19, 1
  %xtraiter = and i64 %20, 3
  %21 = icmp ult i64 %18, 96
  br i1 %21, label %middle.block.unr-lcssa, label %vector.ph.new

vector.ph.new:                                    ; preds = %vector.ph
  %unroll_iter = and i64 %20, 1152921504606846972
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph.new
  %index = phi i64 [ 0, %vector.ph.new ], [ %index.next.3, %vector.body ]
  %niter = phi i64 [ 0, %vector.ph.new ], [ %niter.next.3, %vector.body ]
  %offset.idx = add i64 %add85, %index
  %22 = getelementptr inbounds i8, i8* %out, i64 %offset.idx
  %23 = bitcast i8* %22 to <16 x i8>*
  store <16 x i8> %broadcast.splat, <16 x i8>* %23, align 1, !tbaa !9
  %24 = getelementptr inbounds i8, i8* %22, i64 16
  %25 = bitcast i8* %24 to <16 x i8>*
  store <16 x i8> %broadcast.splat1062, <16 x i8>* %25, align 1, !tbaa !9
  %index.next = or i64 %index, 32
  %offset.idx.1 = add i64 %add85, %index.next
  %26 = getelementptr inbounds i8, i8* %out, i64 %offset.idx.1
  %27 = bitcast i8* %26 to <16 x i8>*
  store <16 x i8> %broadcast.splat, <16 x i8>* %27, align 1, !tbaa !9
  %28 = getelementptr inbounds i8, i8* %26, i64 16
  %29 = bitcast i8* %28 to <16 x i8>*
  store <16 x i8> %broadcast.splat1062, <16 x i8>* %29, align 1, !tbaa !9
  %index.next.1 = or i64 %index, 64
  %offset.idx.2 = add i64 %add85, %index.next.1
  %30 = getelementptr inbounds i8, i8* %out, i64 %offset.idx.2
  %31 = bitcast i8* %30 to <16 x i8>*
  store <16 x i8> %broadcast.splat, <16 x i8>* %31, align 1, !tbaa !9
  %32 = getelementptr inbounds i8, i8* %30, i64 16
  %33 = bitcast i8* %32 to <16 x i8>*
  store <16 x i8> %broadcast.splat1062, <16 x i8>* %33, align 1, !tbaa !9
  %index.next.2 = or i64 %index, 96
  %offset.idx.3 = add i64 %add85, %index.next.2
  %34 = getelementptr inbounds i8, i8* %out, i64 %offset.idx.3
  %35 = bitcast i8* %34 to <16 x i8>*
  store <16 x i8> %broadcast.splat, <16 x i8>* %35, align 1, !tbaa !9
  %36 = getelementptr inbounds i8, i8* %34, i64 16
  %37 = bitcast i8* %36 to <16 x i8>*
  store <16 x i8> %broadcast.splat1062, <16 x i8>* %37, align 1, !tbaa !9
  %index.next.3 = add nuw i64 %index, 128
  %niter.next.3 = add i64 %niter, 4
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %middle.block.unr-lcssa, label %vector.body, !llvm.loop !18

middle.block.unr-lcssa:                           ; preds = %vector.body, %vector.ph
  %index.unr = phi i64 [ 0, %vector.ph ], [ %index.next.3, %vector.body ]
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %middle.block, label %vector.body.epil

vector.body.epil:                                 ; preds = %middle.block.unr-lcssa, %vector.body.epil
  %index.epil = phi i64 [ %index.next.epil, %vector.body.epil ], [ %index.unr, %middle.block.unr-lcssa ]
  %epil.iter = phi i64 [ %epil.iter.next, %vector.body.epil ], [ 0, %middle.block.unr-lcssa ]
  %offset.idx.epil = add i64 %add85, %index.epil
  %38 = getelementptr inbounds i8, i8* %out, i64 %offset.idx.epil
  %39 = bitcast i8* %38 to <16 x i8>*
  store <16 x i8> %broadcast.splat, <16 x i8>* %39, align 1, !tbaa !9
  %40 = getelementptr inbounds i8, i8* %38, i64 16
  %41 = bitcast i8* %40 to <16 x i8>*
  store <16 x i8> %broadcast.splat1062, <16 x i8>* %41, align 1, !tbaa !9
  %index.next.epil = add nuw i64 %index.epil, 32
  %epil.iter.next = add i64 %epil.iter, 1
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %middle.block, label %vector.body.epil, !llvm.loop !21

middle.block:                                     ; preds = %vector.body.epil, %middle.block.unr-lcssa
  %cmp.n = icmp eq i64 %17, %n.vec
  br i1 %cmp.n, label %for.end, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %ind.end1065 = add i64 %add85, %n.vec
  %n.vec.remaining = and i64 %17, 24
  %min.epilog.iters.check = icmp eq i64 %n.vec.remaining, 0
  br i1 %min.epilog.iters.check, label %for.body.preheader, label %vec.epilog.ph

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %42 = add i64 %len, -32
  %43 = sub i64 %42, %plen.0
  %n.vec1064 = and i64 %43, -8
  %ind.end = add i64 %add85, %n.vec1064
  %broadcast.splatinsert1069 = insertelement <8 x i8> poison, i8 %conv91, i64 0
  %broadcast.splat1070 = shufflevector <8 x i8> %broadcast.splatinsert1069, <8 x i8> poison, <8 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index1067 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next1071, %vec.epilog.vector.body ]
  %offset.idx1068 = add i64 %add85, %index1067
  %44 = getelementptr inbounds i8, i8* %out, i64 %offset.idx1068
  %45 = bitcast i8* %44 to <8 x i8>*
  store <8 x i8> %broadcast.splat1070, <8 x i8>* %45, align 1, !tbaa !9
  %index.next1071 = add nuw i64 %index1067, 8
  %46 = icmp eq i64 %index.next1071, %n.vec1064
  br i1 %46, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !23

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n1066 = icmp eq i64 %43, %n.vec1064
  br i1 %cmp.n1066, label %for.end, label %for.body.preheader

for.body.preheader:                               ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %plen.11040.ph = phi i64 [ %add85, %iter.check ], [ %ind.end1065, %vec.epilog.iter.check ], [ %ind.end, %vec.epilog.middle.block ]
  br label %for.body

for.body:                                         ; preds = %for.body.preheader, %for.body
  %plen.11040 = phi i64 [ %inc92, %for.body ], [ %plen.11040.ph, %for.body.preheader ]
  %arrayidx = getelementptr inbounds i8, i8* %out, i64 %plen.11040
  store i8 %conv91, i8* %arrayidx, align 1, !tbaa !9
  %inc92 = add nuw i64 %plen.11040, 1
  %exitcond.not = icmp eq i64 %inc92, %len
  br i1 %exitcond.not, label %for.end, label %for.body, !llvm.loop !25

for.end:                                          ; preds = %for.body, %middle.block, %vec.epilog.middle.block, %if.end75
  %add.ptr93 = getelementptr inbounds i8, i8* %out, i64 %aes_off.0
  %sub95 = sub i64 %len, %aes_off.0
  %ks96 = bitcast i8* %call to %struct.aes_key_st*
  %arraydecay98 = getelementptr inbounds %struct.evp_cipher_ctx_st, %struct.evp_cipher_ctx_st* %ctx, i64 0, i32 5, i64 0
  tail call void @aesni_cbc_encrypt(i8* noundef %add.ptr93, i8* noundef %add.ptr93, i64 noundef %sub95, %struct.aes_key_st* noundef %ks96, i8* noundef nonnull %arraydecay98, i32 noundef 1) #8
  br label %cleanup662

if.else99:                                        ; preds = %if.end60
  %add.ptr100 = getelementptr inbounds i8, i8* %in, i64 %aes_off.0
  %add.ptr101 = getelementptr inbounds i8, i8* %out, i64 %aes_off.0
  %sub102 = sub i64 %len, %aes_off.0
  %ks103 = bitcast i8* %call to %struct.aes_key_st*
  %arraydecay105 = getelementptr inbounds %struct.evp_cipher_ctx_st, %struct.evp_cipher_ctx_st* %ctx, i64 0, i32 5, i64 0
  tail call void @aesni_cbc_encrypt(i8* noundef %add.ptr100, i8* noundef %add.ptr101, i64 noundef %sub102, %struct.aes_key_st* noundef %ks103, i8* noundef nonnull %arraydecay105, i32 noundef 1) #8
  br label %cleanup662

if.else107:                                       ; preds = %if.end
  %47 = bitcast %union.anon.1* %mac to i8*
  call void @llvm.lifetime.start.p0i8(i64 96, i8* nonnull %47) #10
  %48 = ptrtoint %union.anon.1* %mac to i64
  %add109 = add i64 %48, 63
  %and110 = and i64 %add109, -64
  %49 = inttoptr i64 %and110 to %union.anon.1*
  %ks111 = bitcast i8* %call to %struct.aes_key_st*
  %arraydecay113 = getelementptr inbounds %struct.evp_cipher_ctx_st, %struct.evp_cipher_ctx_st* %ctx, i64 0, i32 5, i64 0
  call void @aesni_cbc_encrypt(i8* noundef %in, i8* noundef %out, i64 noundef %len, %struct.aes_key_st* noundef %ks111, i8* noundef nonnull %arraydecay113, i32 noundef 0) #8
  %cmp114.not = icmp eq i64 %1, -1
  br i1 %cmp114.not, label %cleanup657.thread, label %if.then116

if.then116:                                       ; preds = %if.else107
  %data118 = getelementptr inbounds i8, i8* %call, i64 508
  %aux120 = getelementptr inbounds i8, i8* %call, i64 592
  %sub121 = add i64 %1, -4
  %arrayidx122 = getelementptr inbounds i8, i8* %aux120, i64 %sub121
  %50 = load i8, i8* %arrayidx122, align 1, !tbaa !9
  %conv123 = zext i8 %50 to i32
  %shl124 = shl nuw nsw i32 %conv123, 8
  %sub127 = add i64 %1, -3
  %arrayidx128 = getelementptr inbounds i8, i8* %aux120, i64 %sub127
  %51 = load i8, i8* %arrayidx128, align 1, !tbaa !9
  %conv129 = zext i8 %51 to i32
  %or130 = or i32 %shl124, %conv129
  %cmp131 = icmp ugt i32 %or130, 769
  %spec.select1035 = select i1 %cmp131, i64 16, i64 0
  %add136 = or i64 %spec.select1035, 33
  %cmp137 = icmp ugt i64 %add136, %len
  br i1 %cmp137, label %cleanup657.thread1037, label %if.end140

cleanup657.thread1037:                            ; preds = %if.then116
  call void @llvm.lifetime.end.p0i8(i64 96, i8* nonnull %47) #10
  br label %cleanup662

if.end140:                                        ; preds = %if.then116
  %add.ptr141 = getelementptr inbounds i8, i8* %out, i64 %spec.select1035
  %sub142 = sub i64 %len, %spec.select1035
  %sub143 = add i64 %sub142, -1
  %arrayidx144 = getelementptr inbounds i8, i8* %add.ptr141, i64 %sub143
  %52 = load i8, i8* %arrayidx144, align 1, !tbaa !9
  %conv145 = zext i8 %52 to i32
  %53 = trunc i64 %sub142 to i32
  %conv147 = add i32 %53, 223
  %sub148 = sub i32 288, %53
  %shr149 = lshr i32 %sub148, 24
  %conv147.masked = and i32 %conv147, 255
  %and151 = or i32 %conv147.masked, %shr149
  %call152 = call fastcc i32 @constant_time_ge(i32 noundef %and151, i32 noundef %conv145) #9, !range !26
  %54 = and i32 %call152, 1
  %call158 = call fastcc i32 @constant_time_select(i32 noundef %call152, i32 noundef %conv145, i32 noundef %and151) #9
  %add160 = add i32 %call158, 33
  %conv161 = zext i32 %add160 to i64
  %sub162 = sub i64 %sub142, %conv161
  %shr163 = lshr i64 %sub162, 8
  %conv164 = trunc i64 %shr163 to i8
  %sub167 = add i64 %1, -2
  %arrayidx168 = getelementptr inbounds i8, i8* %aux120, i64 %sub167
  store i8 %conv164, i8* %arrayidx168, align 1, !tbaa !9
  %conv169 = trunc i64 %sub162 to i8
  %sub172 = add i64 %1, -1
  %arrayidx173 = getelementptr inbounds i8, i8* %aux120, i64 %sub172
  store i8 %conv169, i8* %arrayidx173, align 1, !tbaa !9
  %head = getelementptr inbounds i8, i8* %call, i64 244
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 4 dereferenceable(112) %md, i8* noundef nonnull align 4 dereferenceable(112) %head, i64 112, i1 false), !tbaa.struct !8
  call fastcc void @sha256_update(%struct.SHA256state_st* noundef nonnull %2, i8* noundef nonnull %aux120, i64 noundef %1) #9
  %sub179 = add i64 %sub142, -32
  %cmp180 = icmp ugt i64 %sub179, 319
  br i1 %cmp180, label %if.then182, label %if.end194

if.then182:                                       ; preds = %if.end140
  %sub183 = add i64 %sub142, -352
  %and184 = and i64 %sub183, -64
  %55 = load i32, i32* %3, align 4, !tbaa !15
  %sub187 = sub i32 64, %55
  %conv188 = zext i32 %sub187 to i64
  %add189 = add i64 %and184, %conv188
  call fastcc void @sha256_update(%struct.SHA256state_st* noundef nonnull %2, i8* noundef nonnull %add.ptr141, i64 noundef %add189) #9
  %add.ptr191 = getelementptr inbounds i8, i8* %add.ptr141, i64 %add189
  %sub192 = sub i64 %sub179, %add189
  %sub193 = sub i64 %sub162, %add189
  br label %if.end194

if.end194:                                        ; preds = %if.then182, %if.end140
  %inp_len.0 = phi i64 [ %sub193, %if.then182 ], [ %sub162, %if.end140 ]
  %len.addr.0 = phi i64 [ %sub192, %if.then182 ], [ %sub179, %if.end140 ]
  %out.addr.0 = phi i8* [ %add.ptr191, %if.then182 ], [ %add.ptr141, %if.end140 ]
  %Nl196 = getelementptr inbounds i8, i8* %call, i64 500
  %56 = bitcast i8* %Nl196 to i32*
  %57 = load i32, i32* %56, align 4, !tbaa !17
  %inp_len.0.tr = trunc i64 %inp_len.0 to i32
  %58 = shl i32 %inp_len.0.tr, 3
  %conv200 = add i32 %57, %58
  %59 = call i32 asm "bswapl $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %conv200) #11, !srcloc !27
  %arrayidx201 = getelementptr inbounds %union.anon.1, %union.anon.1* %49, i64 0, i32 0, i64 0
  %arrayidx203 = getelementptr inbounds %union.anon.1, %union.anon.1* %49, i64 0, i32 0, i64 1
  %arrayidx205 = getelementptr inbounds %union.anon.1, %union.anon.1* %49, i64 0, i32 0, i64 2
  %arrayidx207 = getelementptr inbounds %union.anon.1, %union.anon.1* %49, i64 0, i32 0, i64 3
  %60 = inttoptr i64 %and110 to <4 x i32>*
  store <4 x i32> zeroinitializer, <4 x i32>* %60, align 64, !tbaa !9
  %arrayidx209 = getelementptr inbounds %union.anon.1, %union.anon.1* %49, i64 0, i32 0, i64 4
  %arrayidx211 = getelementptr inbounds %union.anon.1, %union.anon.1* %49, i64 0, i32 0, i64 5
  %arrayidx213 = getelementptr inbounds %union.anon.1, %union.anon.1* %49, i64 0, i32 0, i64 6
  %arrayidx215 = getelementptr inbounds %union.anon.1, %union.anon.1* %49, i64 0, i32 0, i64 7
  %61 = bitcast i32* %arrayidx209 to <4 x i32>*
  store <4 x i32> zeroinitializer, <4 x i32>* %61, align 16, !tbaa !9
  %62 = load i32, i32* %3, align 4, !tbaa !15
  %cmp2191041.not = icmp eq i64 %len.addr.0, 0
  br i1 %cmp2191041.not, label %for.end340, label %for.body221.lr.ph

for.body221.lr.ph:                                ; preds = %if.end194
  %add242 = add i64 %inp_len.0, 7
  %arrayidx249 = getelementptr inbounds i8, i8* %call, i64 568
  %63 = bitcast i8* %arrayidx249 to i32*
  %arrayidx260 = bitcast i8* %md to i32*
  %arrayidx270 = getelementptr inbounds i8, i8* %call, i64 472
  %64 = bitcast i8* %arrayidx270 to i32*
  %arrayidx280 = getelementptr inbounds i8, i8* %call, i64 476
  %65 = bitcast i8* %arrayidx280 to i32*
  %arrayidx290 = getelementptr inbounds i8, i8* %call, i64 480
  %66 = bitcast i8* %arrayidx290 to i32*
  %arrayidx300 = getelementptr inbounds i8, i8* %call, i64 484
  %67 = bitcast i8* %arrayidx300 to i32*
  %arrayidx310 = getelementptr inbounds i8, i8* %call, i64 488
  %68 = bitcast i8* %arrayidx310 to i32*
  %arrayidx320 = getelementptr inbounds i8, i8* %call, i64 492
  %69 = bitcast i8* %arrayidx320 to i32*
  %arrayidx330 = getelementptr inbounds i8, i8* %call, i64 496
  %70 = bitcast i8* %arrayidx330 to i32*
  br label %for.body221

for.body221:                                      ; preds = %for.body221.lr.ph, %cleanup
  %j.01043 = phi i64 [ 0, %for.body221.lr.ph ], [ %inc339, %cleanup ]
  %res.01042 = phi i32 [ %62, %for.body221.lr.ph ], [ %res.1, %cleanup ]
  %arrayidx223 = getelementptr inbounds i8, i8* %out.addr.0, i64 %j.01043
  %71 = load i8, i8* %arrayidx223, align 1, !tbaa !9
  %conv224 = zext i8 %71 to i64
  %sub225 = sub i64 %j.01043, %inp_len.0
  %shr226 = lshr i64 %sub225, 56
  %and227 = and i64 %shr226, %conv224
  %neg = and i64 %shr226, 128
  %and228 = xor i64 %neg, 128
  %sub229 = sub i64 %inp_len.0, %j.01043
  %shr230 = lshr i64 %sub229, 56
  %neg231 = xor i64 %shr230, -1
  %and232 = and i64 %and228, %neg231
  %or233 = or i64 %and227, %and232
  %conv234 = trunc i64 %or233 to i8
  %inc236 = add i32 %res.01042, 1
  %idxprom = zext i32 %res.01042 to i64
  %arrayidx237 = getelementptr inbounds i8, i8* %data118, i64 %idxprom
  store i8 %conv234, i8* %arrayidx237, align 1, !tbaa !9
  %cmp238.not = icmp eq i32 %inc236, 64
  br i1 %cmp238.not, label %if.end241, label %cleanup

if.end241:                                        ; preds = %for.body221
  %sub243 = sub i64 %add242, %j.01043
  %shr244.neg = ashr i64 %sub243, 63
  %72 = load i32, i32* %63, align 4, !tbaa !9
  %73 = trunc i64 %shr244.neg to i32
  %74 = and i32 %59, %73
  %conv252 = or i32 %72, %74
  store i32 %conv252, i32* %63, align 4, !tbaa !9
  call void @sha256_block_data_order(i8* noundef nonnull %md, i8* noundef nonnull %data118, i64 noundef 1) #8
  %sub255 = add i64 %sub225, -72
  %isneg1034 = icmp slt i64 %sub255, 0
  %75 = load i32, i32* %arrayidx260, align 4, !tbaa !4
  %76 = load i32, i32* %arrayidx201, align 64, !tbaa !9
  %77 = select i1 %isneg1034, i32 %73, i32 0
  %78 = and i32 %75, %77
  %conv267 = or i32 %78, %76
  store i32 %conv267, i32* %arrayidx201, align 64, !tbaa !9
  %79 = load i32, i32* %64, align 4, !tbaa !4
  %80 = load i32, i32* %arrayidx203, align 4, !tbaa !9
  %81 = and i32 %79, %77
  %conv277 = or i32 %81, %80
  store i32 %conv277, i32* %arrayidx203, align 4, !tbaa !9
  %82 = load i32, i32* %65, align 4, !tbaa !4
  %83 = load i32, i32* %arrayidx205, align 8, !tbaa !9
  %84 = and i32 %82, %77
  %conv287 = or i32 %84, %83
  store i32 %conv287, i32* %arrayidx205, align 8, !tbaa !9
  %85 = load i32, i32* %66, align 4, !tbaa !4
  %86 = load i32, i32* %arrayidx207, align 4, !tbaa !9
  %87 = and i32 %85, %77
  %conv297 = or i32 %87, %86
  store i32 %conv297, i32* %arrayidx207, align 4, !tbaa !9
  %88 = load i32, i32* %67, align 4, !tbaa !4
  %89 = load i32, i32* %arrayidx209, align 16, !tbaa !9
  %90 = and i32 %88, %77
  %conv307 = or i32 %90, %89
  store i32 %conv307, i32* %arrayidx209, align 16, !tbaa !9
  %91 = load i32, i32* %68, align 4, !tbaa !4
  %92 = load i32, i32* %arrayidx211, align 4, !tbaa !9
  %93 = and i32 %91, %77
  %conv317 = or i32 %93, %92
  store i32 %conv317, i32* %arrayidx211, align 4, !tbaa !9
  %94 = load i32, i32* %69, align 4, !tbaa !4
  %95 = load i32, i32* %arrayidx213, align 8, !tbaa !9
  %96 = and i32 %94, %77
  %conv327 = or i32 %96, %95
  store i32 %conv327, i32* %arrayidx213, align 8, !tbaa !9
  %97 = load i32, i32* %70, align 4, !tbaa !4
  %98 = load i32, i32* %arrayidx215, align 4, !tbaa !9
  %99 = and i32 %97, %77
  %conv337 = or i32 %99, %98
  store i32 %conv337, i32* %arrayidx215, align 4, !tbaa !9
  br label %cleanup

cleanup:                                          ; preds = %for.body221, %if.end241
  %res.1 = phi i32 [ 0, %if.end241 ], [ %inc236, %for.body221 ]
  %inc339 = add nuw i64 %j.01043, 1
  %exitcond1053.not = icmp eq i64 %inc339, %len.addr.0
  br i1 %exitcond1053.not, label %for.end340, label %for.body221, !llvm.loop !28

for.end340:                                       ; preds = %cleanup, %if.end194
  %res.0.lcssa = phi i32 [ %62, %if.end194 ], [ %res.1, %cleanup ]
  %conv341 = zext i32 %res.0.lcssa to i64
  %cmp3431046 = icmp ult i32 %res.0.lcssa, 64
  br i1 %cmp3431046, label %iter.check1076, label %if.then354

iter.check1076:                                   ; preds = %for.end340
  %100 = add i64 %len.addr.0, 64
  %101 = sub nsw i64 64, %conv341
  %min.iters.check1074 = icmp ult i64 %101, 8
  br i1 %min.iters.check1074, label %for.body345.preheader, label %vector.main.loop.iter.check1078

vector.main.loop.iter.check1078:                  ; preds = %iter.check1076
  %min.iters.check1077 = icmp ult i64 %101, 16
  br i1 %min.iters.check1077, label %vec.epilog.ph1090, label %vector.ph1079

vector.ph1079:                                    ; preds = %vector.main.loop.iter.check1078
  %n.vec1081 = and i64 %101, -16
  %102 = add nsw i64 %n.vec1081, -16
  %103 = lshr exact i64 %102, 4
  %104 = add nuw nsw i64 %103, 1
  %xtraiter1103 = and i64 %104, 7
  %105 = icmp ult i64 %102, 112
  br i1 %105, label %middle.block1072.unr-lcssa, label %vector.ph1079.new

vector.ph1079.new:                                ; preds = %vector.ph1079
  %unroll_iter1106 = and i64 %104, 2305843009213693944
  br label %vector.body1073

vector.body1073:                                  ; preds = %vector.body1073, %vector.ph1079.new
  %index1083 = phi i64 [ 0, %vector.ph1079.new ], [ %index.next1085.7, %vector.body1073 ]
  %niter1107 = phi i64 [ 0, %vector.ph1079.new ], [ %niter1107.next.7, %vector.body1073 ]
  %offset.idx1084 = add i64 %index1083, %conv341
  %106 = getelementptr inbounds i8, i8* %data118, i64 %offset.idx1084
  %107 = bitcast i8* %106 to <16 x i8>*
  store <16 x i8> zeroinitializer, <16 x i8>* %107, align 1, !tbaa !9
  %index.next1085 = or i64 %index1083, 16
  %offset.idx1084.1 = add i64 %index.next1085, %conv341
  %108 = getelementptr inbounds i8, i8* %data118, i64 %offset.idx1084.1
  %109 = bitcast i8* %108 to <16 x i8>*
  store <16 x i8> zeroinitializer, <16 x i8>* %109, align 1, !tbaa !9
  %index.next1085.1 = or i64 %index1083, 32
  %offset.idx1084.2 = add i64 %index.next1085.1, %conv341
  %110 = getelementptr inbounds i8, i8* %data118, i64 %offset.idx1084.2
  %111 = bitcast i8* %110 to <16 x i8>*
  store <16 x i8> zeroinitializer, <16 x i8>* %111, align 1, !tbaa !9
  %index.next1085.2 = or i64 %index1083, 48
  %offset.idx1084.3 = add i64 %index.next1085.2, %conv341
  %112 = getelementptr inbounds i8, i8* %data118, i64 %offset.idx1084.3
  %113 = bitcast i8* %112 to <16 x i8>*
  store <16 x i8> zeroinitializer, <16 x i8>* %113, align 1, !tbaa !9
  %index.next1085.3 = or i64 %index1083, 64
  %offset.idx1084.4 = add i64 %index.next1085.3, %conv341
  %114 = getelementptr inbounds i8, i8* %data118, i64 %offset.idx1084.4
  %115 = bitcast i8* %114 to <16 x i8>*
  store <16 x i8> zeroinitializer, <16 x i8>* %115, align 1, !tbaa !9
  %index.next1085.4 = or i64 %index1083, 80
  %offset.idx1084.5 = add i64 %index.next1085.4, %conv341
  %116 = getelementptr inbounds i8, i8* %data118, i64 %offset.idx1084.5
  %117 = bitcast i8* %116 to <16 x i8>*
  store <16 x i8> zeroinitializer, <16 x i8>* %117, align 1, !tbaa !9
  %index.next1085.5 = or i64 %index1083, 96
  %offset.idx1084.6 = add i64 %index.next1085.5, %conv341
  %118 = getelementptr inbounds i8, i8* %data118, i64 %offset.idx1084.6
  %119 = bitcast i8* %118 to <16 x i8>*
  store <16 x i8> zeroinitializer, <16 x i8>* %119, align 1, !tbaa !9
  %index.next1085.6 = or i64 %index1083, 112
  %offset.idx1084.7 = add i64 %index.next1085.6, %conv341
  %120 = getelementptr inbounds i8, i8* %data118, i64 %offset.idx1084.7
  %121 = bitcast i8* %120 to <16 x i8>*
  store <16 x i8> zeroinitializer, <16 x i8>* %121, align 1, !tbaa !9
  %index.next1085.7 = add nuw i64 %index1083, 128
  %niter1107.next.7 = add i64 %niter1107, 8
  %niter1107.ncmp.7 = icmp eq i64 %niter1107.next.7, %unroll_iter1106
  br i1 %niter1107.ncmp.7, label %middle.block1072.unr-lcssa, label %vector.body1073, !llvm.loop !29

middle.block1072.unr-lcssa:                       ; preds = %vector.body1073, %vector.ph1079
  %index1083.unr = phi i64 [ 0, %vector.ph1079 ], [ %index.next1085.7, %vector.body1073 ]
  %lcmp.mod1105.not = icmp eq i64 %xtraiter1103, 0
  br i1 %lcmp.mod1105.not, label %middle.block1072, label %vector.body1073.epil

vector.body1073.epil:                             ; preds = %middle.block1072.unr-lcssa, %vector.body1073.epil
  %index1083.epil = phi i64 [ %index.next1085.epil, %vector.body1073.epil ], [ %index1083.unr, %middle.block1072.unr-lcssa ]
  %epil.iter1104 = phi i64 [ %epil.iter1104.next, %vector.body1073.epil ], [ 0, %middle.block1072.unr-lcssa ]
  %offset.idx1084.epil = add i64 %index1083.epil, %conv341
  %122 = getelementptr inbounds i8, i8* %data118, i64 %offset.idx1084.epil
  %123 = bitcast i8* %122 to <16 x i8>*
  store <16 x i8> zeroinitializer, <16 x i8>* %123, align 1, !tbaa !9
  %index.next1085.epil = add nuw i64 %index1083.epil, 16
  %epil.iter1104.next = add i64 %epil.iter1104, 1
  %epil.iter1104.cmp.not = icmp eq i64 %epil.iter1104.next, %xtraiter1103
  br i1 %epil.iter1104.cmp.not, label %middle.block1072, label %vector.body1073.epil, !llvm.loop !30

middle.block1072:                                 ; preds = %vector.body1073.epil, %middle.block1072.unr-lcssa
  %cmp.n1082 = icmp eq i64 %101, %n.vec1081
  br i1 %cmp.n1082, label %for.end351, label %vec.epilog.iter.check1089

vec.epilog.iter.check1089:                        ; preds = %middle.block1072
  %ind.end1098 = add nsw i64 %n.vec1081, %conv341
  %n.vec.remaining1091 = and i64 %101, 8
  %min.epilog.iters.check1092.not.not = icmp eq i64 %n.vec.remaining1091, 0
  br i1 %min.epilog.iters.check1092.not.not, label %for.body345.preheader, label %vec.epilog.ph1090

vec.epilog.ph1090:                                ; preds = %vector.main.loop.iter.check1078, %vec.epilog.iter.check1089
  %vec.epilog.resume.val1093 = phi i64 [ %n.vec1081, %vec.epilog.iter.check1089 ], [ 0, %vector.main.loop.iter.check1078 ]
  %124 = sub nsw i64 64, %conv341
  %n.vec1095 = and i64 %124, -8
  %ind.end1097 = add nsw i64 %n.vec1095, %conv341
  br label %vec.epilog.vector.body1088

vec.epilog.vector.body1088:                       ; preds = %vec.epilog.vector.body1088, %vec.epilog.ph1090
  %index1100 = phi i64 [ %vec.epilog.resume.val1093, %vec.epilog.ph1090 ], [ %index.next1102, %vec.epilog.vector.body1088 ]
  %offset.idx1101 = add i64 %index1100, %conv341
  %125 = getelementptr inbounds i8, i8* %data118, i64 %offset.idx1101
  %126 = bitcast i8* %125 to <8 x i8>*
  store <8 x i8> zeroinitializer, <8 x i8>* %126, align 1, !tbaa !9
  %index.next1102 = add nuw i64 %index1100, 8
  %127 = icmp eq i64 %index.next1102, %n.vec1095
  br i1 %127, label %vec.epilog.middle.block1086, label %vec.epilog.vector.body1088, !llvm.loop !31

vec.epilog.middle.block1086:                      ; preds = %vec.epilog.vector.body1088
  %cmp.n1099 = icmp eq i64 %124, %n.vec1095
  br i1 %cmp.n1099, label %for.end351, label %for.body345.preheader

for.body345.preheader:                            ; preds = %iter.check1076, %vec.epilog.iter.check1089, %vec.epilog.middle.block1086
  %i.01047.ph = phi i64 [ %conv341, %iter.check1076 ], [ %ind.end1098, %vec.epilog.iter.check1089 ], [ %ind.end1097, %vec.epilog.middle.block1086 ]
  br label %for.body345

for.body345:                                      ; preds = %for.body345.preheader, %for.body345
  %i.01047 = phi i64 [ %inc349, %for.body345 ], [ %i.01047.ph, %for.body345.preheader ]
  %arrayidx347 = getelementptr inbounds i8, i8* %data118, i64 %i.01047
  store i8 0, i8* %arrayidx347, align 1, !tbaa !9
  %inc349 = add nuw nsw i64 %i.01047, 1
  %exitcond1054.not = icmp eq i64 %inc349, 64
  br i1 %exitcond1054.not, label %for.end351, label %for.body345, !llvm.loop !32

for.end351:                                       ; preds = %for.body345, %vec.epilog.middle.block1086, %middle.block1072
  %128 = sub i64 %100, %conv341
  %cmp352 = icmp ugt i32 %res.0.lcssa, 56
  br i1 %cmp352, label %if.then354, label %for.end351.if.end454_crit_edge

for.end351.if.end454_crit_edge:                   ; preds = %for.end351
  %.pre = sub i64 -73, %inp_len.0
  br label %if.end454

if.then354:                                       ; preds = %for.end340, %for.end351
  %j.1.lcssa1059 = phi i64 [ %128, %for.end351 ], [ %len.addr.0, %for.end340 ]
  %add355 = add i64 %inp_len.0, 8
  %sub356 = sub i64 %add355, %j.1.lcssa1059
  %shr357.neg = ashr i64 %sub356, 63
  %arrayidx362 = getelementptr inbounds i8, i8* %call, i64 568
  %129 = bitcast i8* %arrayidx362 to i32*
  %130 = load i32, i32* %129, align 4, !tbaa !9
  %131 = trunc i64 %shr357.neg to i32
  %132 = and i32 %59, %131
  %conv365 = or i32 %130, %132
  store i32 %conv365, i32* %129, align 4, !tbaa !9
  call void @sha256_block_data_order(i8* noundef nonnull %md, i8* noundef nonnull %data118, i64 noundef 1) #8
  %sub367 = sub i64 -73, %inp_len.0
  %sub368 = add i64 %sub367, %j.1.lcssa1059
  %isneg1033 = icmp slt i64 %sub368, 0
  %arrayidx374 = bitcast i8* %md to i32*
  %133 = load i32, i32* %arrayidx374, align 4, !tbaa !4
  %134 = load i32, i32* %arrayidx201, align 64, !tbaa !9
  %135 = select i1 %isneg1033, i32 %131, i32 0
  %136 = and i32 %133, %135
  %conv381 = or i32 %136, %134
  store i32 %conv381, i32* %arrayidx201, align 64, !tbaa !9
  %arrayidx384 = getelementptr inbounds i8, i8* %call, i64 472
  %137 = bitcast i8* %arrayidx384 to i32*
  %138 = load i32, i32* %137, align 4, !tbaa !4
  %139 = load i32, i32* %arrayidx203, align 4, !tbaa !9
  %140 = and i32 %138, %135
  %conv391 = or i32 %140, %139
  store i32 %conv391, i32* %arrayidx203, align 4, !tbaa !9
  %arrayidx394 = getelementptr inbounds i8, i8* %call, i64 476
  %141 = bitcast i8* %arrayidx394 to i32*
  %142 = load i32, i32* %141, align 4, !tbaa !4
  %143 = load i32, i32* %arrayidx205, align 8, !tbaa !9
  %144 = and i32 %142, %135
  %conv401 = or i32 %144, %143
  store i32 %conv401, i32* %arrayidx205, align 8, !tbaa !9
  %arrayidx404 = getelementptr inbounds i8, i8* %call, i64 480
  %145 = bitcast i8* %arrayidx404 to i32*
  %146 = load i32, i32* %145, align 4, !tbaa !4
  %147 = load i32, i32* %arrayidx207, align 4, !tbaa !9
  %148 = and i32 %146, %135
  %conv411 = or i32 %148, %147
  store i32 %conv411, i32* %arrayidx207, align 4, !tbaa !9
  %arrayidx414 = getelementptr inbounds i8, i8* %call, i64 484
  %149 = bitcast i8* %arrayidx414 to i32*
  %150 = load i32, i32* %149, align 4, !tbaa !4
  %151 = load i32, i32* %arrayidx209, align 16, !tbaa !9
  %152 = and i32 %150, %135
  %conv421 = or i32 %152, %151
  store i32 %conv421, i32* %arrayidx209, align 16, !tbaa !9
  %arrayidx424 = getelementptr inbounds i8, i8* %call, i64 488
  %153 = bitcast i8* %arrayidx424 to i32*
  %154 = load i32, i32* %153, align 4, !tbaa !4
  %155 = load i32, i32* %arrayidx211, align 4, !tbaa !9
  %156 = and i32 %154, %135
  %conv431 = or i32 %156, %155
  store i32 %conv431, i32* %arrayidx211, align 4, !tbaa !9
  %arrayidx434 = getelementptr inbounds i8, i8* %call, i64 492
  %157 = bitcast i8* %arrayidx434 to i32*
  %158 = load i32, i32* %157, align 4, !tbaa !4
  %159 = load i32, i32* %arrayidx213, align 8, !tbaa !9
  %160 = and i32 %158, %135
  %conv441 = or i32 %160, %159
  store i32 %conv441, i32* %arrayidx213, align 8, !tbaa !9
  %arrayidx444 = getelementptr inbounds i8, i8* %call, i64 496
  %161 = bitcast i8* %arrayidx444 to i32*
  %162 = load i32, i32* %161, align 4, !tbaa !4
  %163 = load i32, i32* %arrayidx215, align 4, !tbaa !9
  %164 = and i32 %162, %135
  %conv451 = or i32 %164, %163
  store i32 %conv451, i32* %arrayidx215, align 4, !tbaa !9
  %call452 = call i8* @memset(i8* noundef nonnull %data118, i32 noundef 0, i64 noundef 64) #8
  %add453 = add i64 %j.1.lcssa1059, 64
  br label %if.end454

if.end454:                                        ; preds = %for.end351.if.end454_crit_edge, %if.then354
  %sub458.pre-phi = phi i64 [ %.pre, %for.end351.if.end454_crit_edge ], [ %sub367, %if.then354 ]
  %j.2 = phi i64 [ %128, %for.end351.if.end454_crit_edge ], [ %add453, %if.then354 ]
  %arrayidx464.pre-phi = bitcast i8* %md to i32*
  %arrayidx456 = getelementptr inbounds i8, i8* %call, i64 568
  %165 = bitcast i8* %arrayidx456 to i32*
  store i32 %59, i32* %165, align 4, !tbaa !9
  call void @sha256_block_data_order(i8* noundef nonnull %md, i8* noundef nonnull %data118, i64 noundef 1) #8
  %sub459 = add i64 %sub458.pre-phi, %j.2
  %shr460.neg = ashr i64 %sub459, 63
  %166 = load i32, i32* %arrayidx464.pre-phi, align 4, !tbaa !4
  %167 = load i32, i32* %arrayidx201, align 64, !tbaa !9
  %168 = trunc i64 %shr460.neg to i32
  %169 = and i32 %166, %168
  %conv471 = or i32 %169, %167
  store i32 %conv471, i32* %arrayidx201, align 64, !tbaa !9
  %arrayidx474 = getelementptr inbounds i8, i8* %call, i64 472
  %170 = bitcast i8* %arrayidx474 to i32*
  %171 = load i32, i32* %170, align 4, !tbaa !4
  %172 = load i32, i32* %arrayidx203, align 4, !tbaa !9
  %173 = and i32 %171, %168
  %conv481 = or i32 %173, %172
  store i32 %conv481, i32* %arrayidx203, align 4, !tbaa !9
  %arrayidx484 = getelementptr inbounds i8, i8* %call, i64 476
  %174 = bitcast i8* %arrayidx484 to i32*
  %175 = load i32, i32* %174, align 4, !tbaa !4
  %176 = load i32, i32* %arrayidx205, align 8, !tbaa !9
  %177 = and i32 %175, %168
  %conv491 = or i32 %177, %176
  store i32 %conv491, i32* %arrayidx205, align 8, !tbaa !9
  %arrayidx494 = getelementptr inbounds i8, i8* %call, i64 480
  %178 = bitcast i8* %arrayidx494 to i32*
  %179 = load i32, i32* %178, align 4, !tbaa !4
  %180 = load i32, i32* %arrayidx207, align 4, !tbaa !9
  %181 = and i32 %179, %168
  %conv501 = or i32 %181, %180
  store i32 %conv501, i32* %arrayidx207, align 4, !tbaa !9
  %arrayidx504 = getelementptr inbounds i8, i8* %call, i64 484
  %182 = bitcast i8* %arrayidx504 to i32*
  %183 = load i32, i32* %182, align 4, !tbaa !4
  %184 = load i32, i32* %arrayidx209, align 16, !tbaa !9
  %185 = and i32 %183, %168
  %conv511 = or i32 %185, %184
  store i32 %conv511, i32* %arrayidx209, align 16, !tbaa !9
  %arrayidx514 = getelementptr inbounds i8, i8* %call, i64 488
  %186 = bitcast i8* %arrayidx514 to i32*
  %187 = load i32, i32* %186, align 4, !tbaa !4
  %188 = load i32, i32* %arrayidx211, align 4, !tbaa !9
  %189 = and i32 %187, %168
  %conv521 = or i32 %189, %188
  store i32 %conv521, i32* %arrayidx211, align 4, !tbaa !9
  %arrayidx524 = getelementptr inbounds i8, i8* %call, i64 492
  %190 = bitcast i8* %arrayidx524 to i32*
  %191 = load i32, i32* %190, align 4, !tbaa !4
  %192 = load i32, i32* %arrayidx213, align 8, !tbaa !9
  %193 = and i32 %191, %168
  %conv531 = or i32 %193, %192
  store i32 %conv531, i32* %arrayidx213, align 8, !tbaa !9
  %arrayidx534 = getelementptr inbounds i8, i8* %call, i64 496
  %194 = bitcast i8* %arrayidx534 to i32*
  %195 = load i32, i32* %194, align 4, !tbaa !4
  %196 = load i32, i32* %arrayidx215, align 4, !tbaa !9
  %197 = and i32 %195, %168
  %conv541 = or i32 %197, %196
  %198 = call i32 asm "bswapl $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %conv471) #11, !srcloc !33
  store i32 %198, i32* %arrayidx201, align 64, !tbaa !9
  %199 = call i32 asm "bswapl $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %conv481) #11, !srcloc !34
  store i32 %199, i32* %arrayidx203, align 4, !tbaa !9
  %200 = call i32 asm "bswapl $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %conv491) #11, !srcloc !35
  store i32 %200, i32* %arrayidx205, align 8, !tbaa !9
  %201 = call i32 asm "bswapl $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %conv501) #11, !srcloc !36
  store i32 %201, i32* %arrayidx207, align 4, !tbaa !9
  %202 = call i32 asm "bswapl $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %conv511) #11, !srcloc !37
  store i32 %202, i32* %arrayidx209, align 16, !tbaa !9
  %203 = call i32 asm "bswapl $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %conv521) #11, !srcloc !38
  store i32 %203, i32* %arrayidx211, align 4, !tbaa !9
  %204 = call i32 asm "bswapl $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %conv531) #11, !srcloc !39
  store i32 %204, i32* %arrayidx213, align 8, !tbaa !9
  %205 = call i32 asm "bswapl $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %conv541) #11, !srcloc !40
  store i32 %205, i32* %arrayidx215, align 4, !tbaa !9
  %add590 = add i64 %len.addr.0, 32
  %tail592 = getelementptr inbounds i8, i8* %call, i64 356
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 4 dereferenceable(112) %md, i8* noundef nonnull align 4 dereferenceable(112) %tail592, i64 112, i1 false), !tbaa.struct !8
  %c594 = inttoptr i64 %and110 to [96 x i8]*
  %arraydecay595 = getelementptr inbounds [96 x i8], [96 x i8]* %c594, i64 0, i64 0
  call fastcc void @sha256_update(%struct.SHA256state_st* noundef nonnull %2, i8* noundef %arraydecay595, i64 noundef 32) #9
  %call599 = call i32 @SHA256_Final(i8* noundef %arraydecay595, %struct.SHA256state_st* noundef nonnull %2) #8
  %add.ptr600 = getelementptr inbounds i8, i8* %out.addr.0, i64 %inp_len.0
  %add.ptr602 = getelementptr inbounds i8, i8* %out.addr.0, i64 %add590
  %add.ptr603 = getelementptr inbounds i8, i8* %add.ptr602, i64 -1
  %idx.ext = zext i32 %and151 to i64
  %idx.neg = sub nsw i64 0, %idx.ext
  %add.ptr604 = getelementptr inbounds i8, i8* %add.ptr603, i64 %idx.neg
  %add.ptr605 = getelementptr inbounds i8, i8* %add.ptr604, i64 -32
  %sub.ptr.lhs.cast = ptrtoint i8* %add.ptr600 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %add.ptr605 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %add608 = add nuw nsw i32 %and151, 32
  %conv609 = zext i32 %add608 to i64
  br label %for.body612

for.body612:                                      ; preds = %if.end454, %for.body612
  %j.31052 = phi i64 [ 0, %if.end454 ], [ %inc637, %for.body612 ]
  %i.11051 = phi i64 [ 0, %if.end454 ], [ %add635, %for.body612 ]
  %res.21050 = phi i32 [ 0, %if.end454 ], [ %or632, %for.body612 ]
  %arrayidx613 = getelementptr inbounds i8, i8* %add.ptr605, i64 %j.31052
  %206 = load i8, i8* %arrayidx613, align 1, !tbaa !9
  %conv614 = zext i8 %206 to i32
  %sub615 = sub i64 %j.31052, %sub.ptr.sub
  %207 = trunc i64 %sub615 to i32
  %conv617 = add i32 %207, -32
  %xor = xor i32 %call158, %conv614
  %isneg = icmp slt i32 %conv617, 0
  %and620 = select i1 %isneg, i32 0, i32 %xor
  %or621 = or i32 %and620, %res.21050
  %208 = xor i64 %j.31052, -1
  %sub623 = add i64 %sub.ptr.sub, %208
  %conv624 = trunc i64 %sub623 to i32
  %shr6181031 = and i32 %conv617, %conv624
  %and626 = ashr i32 %shr6181031, 31
  %arrayidx628 = getelementptr inbounds [96 x i8], [96 x i8]* %c594, i64 0, i64 %i.11051
  %209 = load i8, i8* %arrayidx628, align 1, !tbaa !9
  %xor6301032 = xor i8 %209, %206
  %xor630 = zext i8 %xor6301032 to i32
  %and631 = and i32 %and626, %xor630
  %or632 = or i32 %or621, %and631
  %and633 = and i32 %and626, 1
  %conv634 = zext i32 %and633 to i64
  %add635 = add i64 %i.11051, %conv634
  %inc637 = add nuw nsw i64 %j.31052, 1
  %exitcond1055.not = icmp eq i64 %inc637, %conv609
  br i1 %exitcond1055.not, label %cleanup657, label %for.body612, !llvm.loop !41

cleanup657.thread:                                ; preds = %if.else107
  call fastcc void @sha256_update(%struct.SHA256state_st* noundef nonnull %2, i8* noundef %out, i64 noundef %len) #9
  call void @llvm.lifetime.end.p0i8(i64 96, i8* nonnull %47) #10
  br label %cleanup662

cleanup657:                                       ; preds = %for.body612
  %notsub = add i32 %or632, -1
  %isneg.inv = icmp slt i32 %notsub, 0
  %and643 = select i1 %isneg.inv, i32 %54, i32 0
  call void @llvm.lifetime.end.p0i8(i64 96, i8* nonnull %47) #10
  br label %cleanup662

cleanup662:                                       ; preds = %if.else99, %for.end, %cleanup657.thread, %cleanup657, %cleanup657.thread1037, %if.else, %entry
  %retval.2 = phi i32 [ %and643, %cleanup657 ], [ 0, %entry ], [ 0, %if.else ], [ 0, %cleanup657.thread1037 ], [ 1, %cleanup657.thread ], [ 1, %for.end ], [ 1, %if.else99 ]
  ret i32 %retval.2
}

declare i32 @EVP_CIPHER_set_asn1_iv(%struct.evp_cipher_ctx_st* noundef, %struct.asn1_type_st* noundef) #1

declare i32 @EVP_CIPHER_get_asn1_iv(%struct.evp_cipher_ctx_st* noundef, %struct.asn1_type_st* noundef) #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @aesni_cbc_hmac_sha256_ctrl(%struct.evp_cipher_ctx_st* noundef %ctx, i32 noundef %type, i32 noundef %arg, i8* noundef %ptr) #0 {
entry:
  %hmac_key = alloca [64 x i8], align 16
  %call = tail call i8* @EVP_CIPHER_CTX_get_cipher_data(%struct.evp_cipher_ctx_st* noundef %ctx) #8
  switch i32 %type, label %cleanup210 [
    i32 23, label %sw.bb
    i32 22, label %sw.bb42
    i32 28, label %sw.bb98
    i32 25, label %sw.bb103
    i32 26, label %sw.bb200
  ]

sw.bb:                                            ; preds = %entry
  %0 = getelementptr inbounds [64 x i8], [64 x i8]* %hmac_key, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %0) #10
  %call1 = call i8* @memset(i8* noundef nonnull %0, i32 noundef 0, i64 noundef 64) #8
  %cmp = icmp slt i32 %arg, 0
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %sw.bb
  %cmp2 = icmp ugt i32 %arg, 64
  br i1 %cmp2, label %if.then4, label %if.else

if.then4:                                         ; preds = %if.end
  %head = getelementptr inbounds i8, i8* %call, i64 244
  %1 = bitcast i8* %head to %struct.SHA256state_st*
  %call5 = call i32 @SHA256_Init(%struct.SHA256state_st* noundef nonnull %1) #8
  %conv7313 = zext i32 %arg to i64
  call fastcc void @sha256_update(%struct.SHA256state_st* noundef nonnull %1, i8* noundef %ptr, i64 noundef %conv7313) #9
  %call10 = call i32 @SHA256_Final(i8* noundef nonnull %0, %struct.SHA256state_st* noundef nonnull %1) #8
  br label %vector.body

if.else:                                          ; preds = %if.end
  %conv12314 = zext i32 %arg to i64
  %call13 = call i8* @memcpy(i8* noundef nonnull %0, i8* noundef %ptr, i64 noundef %conv12314) #8
  br label %vector.body

vector.body:                                      ; preds = %if.then4, %if.else
  %2 = bitcast [64 x i8]* %hmac_key to <16 x i8>*
  %wide.load = load <16 x i8>, <16 x i8>* %2, align 16, !tbaa !9
  %3 = xor <16 x i8> %wide.load, <i8 54, i8 54, i8 54, i8 54, i8 54, i8 54, i8 54, i8 54, i8 54, i8 54, i8 54, i8 54, i8 54, i8 54, i8 54, i8 54>
  %4 = bitcast [64 x i8]* %hmac_key to <16 x i8>*
  store <16 x i8> %3, <16 x i8>* %4, align 16, !tbaa !9
  %5 = getelementptr inbounds [64 x i8], [64 x i8]* %hmac_key, i64 0, i64 16
  %6 = bitcast i8* %5 to <16 x i8>*
  %wide.load.1 = load <16 x i8>, <16 x i8>* %6, align 16, !tbaa !9
  %7 = xor <16 x i8> %wide.load.1, <i8 54, i8 54, i8 54, i8 54, i8 54, i8 54, i8 54, i8 54, i8 54, i8 54, i8 54, i8 54, i8 54, i8 54, i8 54, i8 54>
  %8 = bitcast i8* %5 to <16 x i8>*
  store <16 x i8> %7, <16 x i8>* %8, align 16, !tbaa !9
  %9 = getelementptr inbounds [64 x i8], [64 x i8]* %hmac_key, i64 0, i64 32
  %10 = bitcast i8* %9 to <16 x i8>*
  %wide.load.2 = load <16 x i8>, <16 x i8>* %10, align 16, !tbaa !9
  %11 = xor <16 x i8> %wide.load.2, <i8 54, i8 54, i8 54, i8 54, i8 54, i8 54, i8 54, i8 54, i8 54, i8 54, i8 54, i8 54, i8 54, i8 54, i8 54, i8 54>
  %12 = bitcast i8* %9 to <16 x i8>*
  store <16 x i8> %11, <16 x i8>* %12, align 16, !tbaa !9
  %13 = getelementptr inbounds [64 x i8], [64 x i8]* %hmac_key, i64 0, i64 48
  %14 = bitcast i8* %13 to <16 x i8>*
  %wide.load.3 = load <16 x i8>, <16 x i8>* %14, align 16, !tbaa !9
  %15 = xor <16 x i8> %wide.load.3, <i8 54, i8 54, i8 54, i8 54, i8 54, i8 54, i8 54, i8 54, i8 54, i8 54, i8 54, i8 54, i8 54, i8 54, i8 54, i8 54>
  %16 = bitcast i8* %13 to <16 x i8>*
  store <16 x i8> %15, <16 x i8>* %16, align 16, !tbaa !9
  %head20 = getelementptr inbounds i8, i8* %call, i64 244
  %17 = bitcast i8* %head20 to %struct.SHA256state_st*
  %call21 = call i32 @SHA256_Init(%struct.SHA256state_st* noundef nonnull %17) #8
  call fastcc void @sha256_update(%struct.SHA256state_st* noundef nonnull %17, i8* noundef nonnull %0, i64 noundef 64) #9
  %18 = bitcast [64 x i8]* %hmac_key to <16 x i8>*
  %wide.load334 = load <16 x i8>, <16 x i8>* %18, align 16, !tbaa !9
  %19 = xor <16 x i8> %wide.load334, <i8 106, i8 106, i8 106, i8 106, i8 106, i8 106, i8 106, i8 106, i8 106, i8 106, i8 106, i8 106, i8 106, i8 106, i8 106, i8 106>
  %20 = bitcast [64 x i8]* %hmac_key to <16 x i8>*
  store <16 x i8> %19, <16 x i8>* %20, align 16, !tbaa !9
  %21 = getelementptr inbounds [64 x i8], [64 x i8]* %hmac_key, i64 0, i64 16
  %22 = bitcast i8* %21 to <16 x i8>*
  %wide.load334.1 = load <16 x i8>, <16 x i8>* %22, align 16, !tbaa !9
  %23 = xor <16 x i8> %wide.load334.1, <i8 106, i8 106, i8 106, i8 106, i8 106, i8 106, i8 106, i8 106, i8 106, i8 106, i8 106, i8 106, i8 106, i8 106, i8 106, i8 106>
  %24 = bitcast i8* %21 to <16 x i8>*
  store <16 x i8> %23, <16 x i8>* %24, align 16, !tbaa !9
  %25 = getelementptr inbounds [64 x i8], [64 x i8]* %hmac_key, i64 0, i64 32
  %26 = bitcast i8* %25 to <16 x i8>*
  %wide.load334.2 = load <16 x i8>, <16 x i8>* %26, align 16, !tbaa !9
  %27 = xor <16 x i8> %wide.load334.2, <i8 106, i8 106, i8 106, i8 106, i8 106, i8 106, i8 106, i8 106, i8 106, i8 106, i8 106, i8 106, i8 106, i8 106, i8 106, i8 106>
  %28 = bitcast i8* %25 to <16 x i8>*
  store <16 x i8> %27, <16 x i8>* %28, align 16, !tbaa !9
  %29 = getelementptr inbounds [64 x i8], [64 x i8]* %hmac_key, i64 0, i64 48
  %30 = bitcast i8* %29 to <16 x i8>*
  %wide.load334.3 = load <16 x i8>, <16 x i8>* %30, align 16, !tbaa !9
  %31 = xor <16 x i8> %wide.load334.3, <i8 106, i8 106, i8 106, i8 106, i8 106, i8 106, i8 106, i8 106, i8 106, i8 106, i8 106, i8 106, i8 106, i8 106, i8 106, i8 106>
  %32 = bitcast i8* %29 to <16 x i8>*
  store <16 x i8> %31, <16 x i8>* %32, align 16, !tbaa !9
  %tail = getelementptr inbounds i8, i8* %call, i64 356
  %33 = bitcast i8* %tail to %struct.SHA256state_st*
  %call37 = call i32 @SHA256_Init(%struct.SHA256state_st* noundef nonnull %33) #8
  call fastcc void @sha256_update(%struct.SHA256state_st* noundef nonnull %33, i8* noundef nonnull %0, i64 noundef 64) #9
  call void @OPENSSL_cleanse(i8* noundef nonnull %0, i64 noundef 64) #8
  br label %cleanup

cleanup:                                          ; preds = %sw.bb, %vector.body
  %retval.0 = phi i32 [ 1, %vector.body ], [ -1, %sw.bb ]
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %0) #10
  br label %cleanup210

sw.bb42:                                          ; preds = %entry
  %cmp43.not = icmp eq i32 %arg, 13
  br i1 %cmp43.not, label %if.end46, label %cleanup210

if.end46:                                         ; preds = %sw.bb42
  %arrayidx48 = getelementptr inbounds i8, i8* %ptr, i64 11
  %34 = load i8, i8* %arrayidx48, align 1, !tbaa !9
  %conv49 = zext i8 %34 to i32
  %shl = shl nuw nsw i32 %conv49, 8
  %arrayidx52 = getelementptr inbounds i8, i8* %ptr, i64 12
  %35 = load i8, i8* %arrayidx52, align 1, !tbaa !9
  %conv53 = zext i8 %35 to i32
  %or = or i32 %shl, %conv53
  %call54 = tail call i32 @EVP_CIPHER_CTX_is_encrypting(%struct.evp_cipher_ctx_st* noundef %ctx) #8
  %tobool.not = icmp eq i32 %call54, 0
  br i1 %tobool.not, label %if.else89, label %if.then55

if.then55:                                        ; preds = %if.end46
  %conv56 = zext i32 %or to i64
  %payload_length = getelementptr inbounds i8, i8* %call, i64 584
  %36 = bitcast i8* %payload_length to i64*
  store i64 %conv56, i64* %36, align 8, !tbaa !10
  %arrayidx59 = getelementptr inbounds i8, i8* %ptr, i64 9
  %37 = load i8, i8* %arrayidx59, align 1, !tbaa !9
  %conv60 = zext i8 %37 to i32
  %shl61 = shl nuw nsw i32 %conv60, 8
  %arrayidx64 = getelementptr inbounds i8, i8* %ptr, i64 10
  %38 = load i8, i8* %arrayidx64, align 1, !tbaa !9
  %conv65 = zext i8 %38 to i32
  %or66 = or i32 %shl61, %conv65
  %aux = getelementptr inbounds i8, i8* %call, i64 592
  %tls_ver = bitcast i8* %aux to i32*
  store i32 %or66, i32* %tls_ver, align 8, !tbaa !9
  %cmp67 = icmp ugt i32 %or66, 769
  br i1 %cmp67, label %if.then69, label %if.end83

if.then69:                                        ; preds = %if.then55
  %cmp70 = icmp ult i32 %or, 16
  br i1 %cmp70, label %cleanup210, label %if.end73

if.end73:                                         ; preds = %if.then69
  %sub74 = add nsw i32 %or, -16
  %shr = lshr i32 %sub74, 8
  %conv75 = trunc i32 %shr to i8
  store i8 %conv75, i8* %arrayidx48, align 1, !tbaa !9
  %conv79 = trunc i32 %sub74 to i8
  store i8 %conv79, i8* %arrayidx52, align 1, !tbaa !9
  br label %if.end83

if.end83:                                         ; preds = %if.end73, %if.then55
  %len.0 = phi i32 [ %sub74, %if.end73 ], [ %or, %if.then55 ]
  %md = getelementptr inbounds i8, i8* %call, i64 468
  %39 = bitcast i8* %md to %struct.SHA256state_st*
  %head84 = getelementptr inbounds i8, i8* %call, i64 244
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 4 dereferenceable(112) %md, i8* noundef nonnull align 4 dereferenceable(112) %head84, i64 112, i1 false), !tbaa.struct !8
  tail call fastcc void @sha256_update(%struct.SHA256state_st* noundef nonnull %39, i8* noundef nonnull %ptr, i64 noundef 13) #9
  %add87 = add nsw i32 %len.0, 48
  %and = and i32 %add87, -16
  %sub88 = sub i32 %and, %len.0
  br label %cleanup210

if.else89:                                        ; preds = %if.end46
  %aux90 = getelementptr inbounds i8, i8* %call, i64 592
  %call93 = tail call i8* @memcpy(i8* noundef nonnull %aux90, i8* noundef nonnull %ptr, i64 noundef 13) #8
  %payload_length95 = getelementptr inbounds i8, i8* %call, i64 584
  %40 = bitcast i8* %payload_length95 to i64*
  store i64 13, i64* %40, align 8, !tbaa !10
  br label %cleanup210

sw.bb98:                                          ; preds = %entry
  %add100 = add nsw i32 %arg, 48
  %and101 = and i32 %add100, -16
  %add102 = add nsw i32 %and101, 21
  br label %cleanup210

sw.bb103:                                         ; preds = %entry
  %41 = icmp slt i32 %arg, 32
  br i1 %41, label %cleanup210, label %if.end112

if.end112:                                        ; preds = %sw.bb103
  %inp = getelementptr inbounds i8, i8* %ptr, i64 8
  %42 = bitcast i8* %inp to i8**
  %43 = load i8*, i8** %42, align 8, !tbaa !42
  %arrayidx113 = getelementptr inbounds i8, i8* %43, i64 11
  %44 = load i8, i8* %arrayidx113, align 1, !tbaa !9
  %conv114 = zext i8 %44 to i32
  %shl115 = shl nuw nsw i32 %conv114, 8
  %arrayidx117 = getelementptr inbounds i8, i8* %43, i64 12
  %45 = load i8, i8* %arrayidx117, align 1, !tbaa !9
  %conv118 = zext i8 %45 to i32
  %or119 = or i32 %shl115, %conv118
  %call120 = tail call i32 @EVP_CIPHER_CTX_is_encrypting(%struct.evp_cipher_ctx_st* noundef %ctx) #8
  %tobool121.not = icmp eq i32 %call120, 0
  br i1 %tobool121.not, label %cleanup210, label %if.then122

if.then122:                                       ; preds = %if.end112
  %46 = load i8*, i8** %42, align 8, !tbaa !42
  %arrayidx124 = getelementptr inbounds i8, i8* %46, i64 9
  %47 = load i8, i8* %arrayidx124, align 1, !tbaa !9
  %conv125 = zext i8 %47 to i32
  %shl126 = shl nuw nsw i32 %conv125, 8
  %arrayidx128 = getelementptr inbounds i8, i8* %46, i64 10
  %48 = load i8, i8* %arrayidx128, align 1, !tbaa !9
  %conv129 = zext i8 %48 to i32
  %or130 = or i32 %shl126, %conv129
  %cmp131 = icmp ult i32 %or130, 770
  br i1 %cmp131, label %cleanup210, label %if.end134

if.end134:                                        ; preds = %if.then122
  %tobool135.not = icmp eq i32 %or119, 0
  br i1 %tobool135.not, label %if.else147, label %if.then136

if.then136:                                       ; preds = %if.end134
  %cmp137 = icmp ult i32 %or119, 4096
  br i1 %cmp137, label %cleanup210, label %if.end140

if.end140:                                        ; preds = %if.then136
  %cmp141 = icmp ugt i32 %or119, 8191
  br i1 %cmp141, label %land.lhs.true, label %if.end157

land.lhs.true:                                    ; preds = %if.end140
  %49 = load i32, i32* getelementptr inbounds ([0 x i32], [0 x i32]* @OPENSSL_ia32cap_P, i64 0, i64 2), align 4, !tbaa !4
  %and143 = and i32 %49, 32
  %tobool144.not = icmp eq i32 %and143, 0
  %spec.select = select i1 %tobool144.not, i32 1, i32 2
  br label %if.end157

if.else147:                                       ; preds = %if.end134
  %interleave = getelementptr inbounds i8, i8* %ptr, i64 24
  %50 = bitcast i8* %interleave to i32*
  %51 = load i32, i32* %50, align 8, !tbaa !45
  %52 = add i32 %51, -4
  %53 = icmp ult i32 %52, 8
  br i1 %53, label %if.then152, label %cleanup210

if.then152:                                       ; preds = %if.else147
  %div = lshr i32 %51, 2
  %len153 = getelementptr inbounds i8, i8* %ptr, i64 16
  %54 = bitcast i8* %len153 to i64*
  %55 = load i64, i64* %54, align 8, !tbaa !46
  %conv154 = trunc i64 %55 to i32
  br label %if.end157

if.end157:                                        ; preds = %land.lhs.true, %if.end140, %if.then152
  %n4x.0 = phi i32 [ 1, %if.end140 ], [ %div, %if.then152 ], [ %spec.select, %land.lhs.true ]
  %inp_len.0 = phi i32 [ %or119, %if.end140 ], [ %conv154, %if.then152 ], [ %or119, %land.lhs.true ]
  %md158 = getelementptr inbounds i8, i8* %call, i64 468
  %56 = bitcast i8* %md158 to %struct.SHA256state_st*
  %head159 = getelementptr inbounds i8, i8* %call, i64 244
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 4 dereferenceable(112) %md158, i8* noundef nonnull align 4 dereferenceable(112) %head159, i64 112, i1 false), !tbaa.struct !8
  %57 = load i8*, i8** %42, align 8, !tbaa !42
  tail call fastcc void @sha256_update(%struct.SHA256state_st* noundef nonnull %56, i8* noundef %57, i64 noundef 13) #9
  %mul = shl nuw nsw i32 %n4x.0, 2
  %add162 = add nuw nsw i32 %n4x.0, 1
  %shr163 = lshr i32 %inp_len.0, %add162
  %add164 = add i32 %shr163, %inp_len.0
  %shl165 = shl i32 %shr163, %add162
  %sub166 = sub i32 %add164, %shl165
  %cmp167 = icmp ugt i32 %sub166, %shr163
  br i1 %cmp167, label %land.lhs.true169, label %if.end179

land.lhs.true169:                                 ; preds = %if.end157
  %add171 = add i32 %sub166, 22
  %rem = and i32 %add171, 63
  %sub172 = add nsw i32 %mul, -1
  %cmp173 = icmp ult i32 %rem, %sub172
  br i1 %cmp173, label %if.then175, label %if.end179

if.then175:                                       ; preds = %land.lhs.true169
  %inc176 = add nuw nsw i32 %shr163, 1
  %sub178 = sub i32 %sub166, %sub172
  br label %if.end179

if.end179:                                        ; preds = %if.then175, %land.lhs.true169, %if.end157
  %frag.0 = phi i32 [ %inc176, %if.then175 ], [ %shr163, %land.lhs.true169 ], [ %shr163, %if.end157 ]
  %last.0 = phi i32 [ %sub178, %if.then175 ], [ %sub166, %land.lhs.true169 ], [ %sub166, %if.end157 ]
  %add181 = add nuw nsw i32 %frag.0, 48
  %and182 = and i32 %add181, -16
  %add183 = add nuw nsw i32 %and182, 21
  %shl184 = shl i32 %add183, %add162
  %add187 = add i32 %last.0, 48
  %and188 = and i32 %add187, -16
  %58 = sub i32 %and188, %and182
  %add190 = add i32 %58, %shl184
  %interleave191 = getelementptr inbounds i8, i8* %ptr, i64 24
  %59 = bitcast i8* %interleave191 to i32*
  store i32 %mul, i32* %59, align 8, !tbaa !45
  br label %cleanup210

sw.bb200:                                         ; preds = %entry
  %60 = bitcast i8* %call to %struct.EVP_AES_HMAC_SHA256*
  %out = bitcast i8* %ptr to i8**
  %61 = load i8*, i8** %out, align 8, !tbaa !47
  %inp202 = getelementptr inbounds i8, i8* %ptr, i64 8
  %62 = bitcast i8* %inp202 to i8**
  %63 = load i8*, i8** %62, align 8, !tbaa !42
  %len203 = getelementptr inbounds i8, i8* %ptr, i64 16
  %64 = bitcast i8* %len203 to i64*
  %65 = load i64, i64* %64, align 8, !tbaa !46
  %interleave204 = getelementptr inbounds i8, i8* %ptr, i64 24
  %66 = bitcast i8* %interleave204 to i32*
  %67 = load i32, i32* %66, align 8, !tbaa !45
  %div205 = lshr i32 %67, 2
  %call206 = tail call fastcc i64 @tls1_1_multi_block_encrypt(%struct.EVP_AES_HMAC_SHA256* noundef %60, i8* noundef %61, i8* noundef %63, i64 noundef %65, i32 noundef %div205) #9
  %conv207 = trunc i64 %call206 to i32
  br label %cleanup210

cleanup210:                                       ; preds = %entry, %if.end179, %sw.bb103, %if.then122, %if.then136, %if.else147, %if.end112, %if.end83, %if.else89, %sw.bb42, %if.then69, %sw.bb200, %sw.bb98, %cleanup
  %retval.3 = phi i32 [ %conv207, %sw.bb200 ], [ %add102, %sw.bb98 ], [ %retval.0, %cleanup ], [ %sub88, %if.end83 ], [ 32, %if.else89 ], [ -1, %sw.bb42 ], [ 0, %if.then69 ], [ %add190, %if.end179 ], [ -1, %sw.bb103 ], [ -1, %if.then122 ], [ 0, %if.then136 ], [ -1, %if.else147 ], [ -1, %if.end112 ], [ -1, %entry ]
  ret i32 %retval.3
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

declare i8* @EVP_CIPHER_CTX_get_cipher_data(%struct.evp_cipher_ctx_st* noundef) local_unnamed_addr #1

declare i32 @aesni_set_encrypt_key(i8* noundef, i32 noundef, %struct.aes_key_st* noundef) local_unnamed_addr #1

declare i32 @EVP_CIPHER_CTX_get_key_length(%struct.evp_cipher_ctx_st* noundef) local_unnamed_addr #1

declare i32 @aesni_set_decrypt_key(i8* noundef, i32 noundef, %struct.aes_key_st* noundef) local_unnamed_addr #1

declare i32 @SHA256_Init(%struct.SHA256state_st* noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

declare i32 @EVP_CIPHER_CTX_is_encrypting(%struct.evp_cipher_ctx_st* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @sha256_update(%struct.SHA256state_st* noundef %c, i8* noundef %data, i64 noundef %len) unnamed_addr #0 {
entry:
  %num = getelementptr inbounds %struct.SHA256state_st, %struct.SHA256state_st* %c, i64 0, i32 4
  %0 = load i32, i32* %num, align 4, !tbaa !48
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %if.end4, label %if.then

if.then:                                          ; preds = %entry
  %conv = zext i32 %0 to i64
  %sub = sub nsw i64 64, %conv
  %cmp = icmp ugt i64 %sub, %len
  %spec.select = select i1 %cmp, i64 %len, i64 %sub
  %call = tail call i32 @SHA256_Update(%struct.SHA256state_st* noundef nonnull %c, i8* noundef %data, i64 noundef %spec.select) #8
  %add.ptr = getelementptr inbounds i8, i8* %data, i64 %spec.select
  %sub3 = sub i64 %len, %spec.select
  br label %if.end4

if.end4:                                          ; preds = %if.then, %entry
  %len.addr.0 = phi i64 [ %sub3, %if.then ], [ %len, %entry ]
  %ptr.0 = phi i8* [ %add.ptr, %if.then ], [ %data, %entry ]
  %rem = and i64 %len.addr.0, 63
  %sub5 = and i64 %len.addr.0, -64
  %tobool6.not = icmp eq i64 %sub5, 0
  br i1 %tobool6.not, label %if.end21, label %if.then7

if.then7:                                         ; preds = %if.end4
  %1 = bitcast %struct.SHA256state_st* %c to i8*
  %div = lshr i64 %len.addr.0, 6
  tail call void @sha256_block_data_order(i8* noundef %1, i8* noundef %ptr.0, i64 noundef %div) #8
  %add.ptr8 = getelementptr inbounds i8, i8* %ptr.0, i64 %sub5
  %shr = lshr i64 %len.addr.0, 29
  %Nh = getelementptr inbounds %struct.SHA256state_st, %struct.SHA256state_st* %c, i64 0, i32 2
  %2 = load i32, i32* %Nh, align 4, !tbaa !49
  %3 = trunc i64 %shr to i32
  %conv10 = add i32 %2, %3
  store i32 %conv10, i32* %Nh, align 4, !tbaa !49
  %Nl = getelementptr inbounds %struct.SHA256state_st, %struct.SHA256state_st* %c, i64 0, i32 1
  %4 = load i32, i32* %Nl, align 4, !tbaa !50
  %sub5.tr = trunc i64 %sub5 to i32
  %5 = shl i32 %sub5.tr, 3
  %conv13 = add i32 %4, %5
  store i32 %conv13, i32* %Nl, align 4, !tbaa !50
  %cmp16 = icmp ult i32 %conv13, %5
  br i1 %cmp16, label %if.then18, label %if.end21

if.then18:                                        ; preds = %if.then7
  %inc = add i32 %conv10, 1
  store i32 %inc, i32* %Nh, align 4, !tbaa !49
  br label %if.end21

if.end21:                                         ; preds = %if.then7, %if.then18, %if.end4
  %ptr.1 = phi i8* [ %add.ptr8, %if.then18 ], [ %add.ptr8, %if.then7 ], [ %ptr.0, %if.end4 ]
  %tobool22.not = icmp eq i64 %rem, 0
  br i1 %tobool22.not, label %if.end25, label %if.then23

if.then23:                                        ; preds = %if.end21
  %call24 = tail call i32 @SHA256_Update(%struct.SHA256state_st* noundef nonnull %c, i8* noundef %ptr.1, i64 noundef %rem) #8
  br label %if.end25

if.end25:                                         ; preds = %if.then23, %if.end21
  ret void
}

; Function Attrs: nounwind
declare i8* @memcpy(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #4

declare i32 @SHA256_Final(i8* noundef, %struct.SHA256state_st* noundef) local_unnamed_addr #1

declare void @aesni_cbc_encrypt(i8* noundef, i8* noundef, i64 noundef, %struct.aes_key_st* noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc i32 @constant_time_ge(i32 noundef %a, i32 noundef %b) unnamed_addr #5 {
entry:
  %call = tail call fastcc i32 @constant_time_lt(i32 noundef %a, i32 noundef %b) #9
  %neg = xor i32 %call, -1
  ret i32 %neg
}

; Function Attrs: nofree noinline nosync nounwind readnone uwtable
define internal fastcc i32 @constant_time_select(i32 noundef %mask, i32 noundef %a, i32 noundef %b) unnamed_addr #6 {
entry:
  %call = tail call fastcc i32 @value_barrier(i32 noundef %mask) #9
  %and = and i32 %call, %a
  %neg = xor i32 %mask, -1
  %call1 = tail call fastcc i32 @value_barrier(i32 noundef %neg) #9
  %and2 = and i32 %call1, %b
  %or = or i32 %and2, %and
  ret i32 %or
}

declare void @sha256_block_data_order(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare i8* @memset(i8* noundef, i32 noundef, i64 noundef) local_unnamed_addr #4

declare i32 @SHA256_Update(%struct.SHA256state_st* noundef, i8* noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc i32 @constant_time_lt(i32 noundef %a, i32 noundef %b) unnamed_addr #5 {
entry:
  %xor = xor i32 %b, %a
  %sub = sub i32 %a, %b
  %xor1 = xor i32 %sub, %b
  %or = or i32 %xor1, %xor
  %xor2 = xor i32 %or, %a
  %call = tail call fastcc i32 @constant_time_msb(i32 noundef %xor2) #9
  ret i32 %call
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc i32 @constant_time_msb(i32 noundef %a) unnamed_addr #5 {
entry:
  %shr.neg = ashr i32 %a, 31
  ret i32 %shr.neg
}

; Function Attrs: nofree noinline nosync nounwind readnone uwtable
define internal fastcc i32 @value_barrier(i32 noundef %a) unnamed_addr #6 {
entry:
  %0 = tail call i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %a) #11, !srcloc !51
  ret i32 %0
}

declare void @OPENSSL_cleanse(i8* noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal fastcc i64 @tls1_1_multi_block_encrypt(%struct.EVP_AES_HMAC_SHA256* noundef %key, i8* noundef %out, i8* noundef %inp, i64 noundef %inp_len, i32 noundef %n4x) unnamed_addr #0 {
entry:
  %hash_d = alloca [8 x %struct.HASH_DESC], align 16
  %edges = alloca [8 x %struct.HASH_DESC], align 16
  %ciph_d = alloca [8 x %struct.CIPH_DESC], align 16
  %storage = alloca [288 x i8], align 16
  %blocks = alloca [8 x %union.anon.3], align 16
  %0 = bitcast [8 x %struct.HASH_DESC]* %hash_d to i8*
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %0) #10
  %1 = bitcast [8 x %struct.HASH_DESC]* %edges to i8*
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %1) #10
  %2 = bitcast [8 x %struct.CIPH_DESC]* %ciph_d to i8*
  call void @llvm.lifetime.start.p0i8(i64 320, i8* nonnull %2) #10
  %3 = getelementptr inbounds [288 x i8], [288 x i8]* %storage, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 288, i8* nonnull %3) #10
  %4 = bitcast [8 x %union.anon.3]* %blocks to i8*
  call void @llvm.lifetime.start.p0i8(i64 1024, i8* nonnull %4) #10
  %mul = shl i32 %n4x, 2
  %mul1 = shl i32 %n4x, 6
  %call = call i32 @RAND_bytes(i8* noundef nonnull %4, i32 noundef %mul1) #8
  %cmp = icmp slt i32 %call, 1
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %add.ptr = getelementptr inbounds [288 x i8], [288 x i8]* %storage, i64 0, i64 32
  %5 = ptrtoint [288 x i8]* %storage to i64
  %rem = and i64 %5, 16
  %idx.neg = sub nsw i64 0, %rem
  %add.ptr4 = getelementptr inbounds i8, i8* %add.ptr, i64 %idx.neg
  %6 = bitcast i8* %add.ptr4 to %struct.SHA256_MB_CTX*
  %conv = trunc i64 %inp_len to i32
  %add = add nsw i32 %n4x, 1
  %shr = lshr i32 %conv, %add
  %add6 = add i32 %shr, %conv
  %shl = shl i32 %shr, %add
  %sub = sub i32 %add6, %shl
  %cmp8 = icmp ugt i32 %sub, %shr
  br i1 %cmp8, label %land.lhs.true, label %if.end19

land.lhs.true:                                    ; preds = %if.end
  %add11 = add i32 %sub, 22
  %rem12 = and i32 %add11, 63
  %sub13 = add i32 %mul, -1
  %cmp14 = icmp ult i32 %rem12, %sub13
  br i1 %cmp14, label %if.then16, label %if.end19

if.then16:                                        ; preds = %land.lhs.true
  %inc = add nuw i32 %shr, 1
  %sub18 = sub i32 %sub, %sub13
  br label %if.end19

if.end19:                                         ; preds = %if.then16, %land.lhs.true, %if.end
  %last.0 = phi i32 [ %sub18, %if.then16 ], [ %sub, %land.lhs.true ], [ %sub, %if.end ]
  %frag.0 = phi i32 [ %inc, %if.then16 ], [ %shr, %land.lhs.true ], [ %shr, %if.end ]
  %arrayidx23 = getelementptr inbounds [8 x %struct.HASH_DESC], [8 x %struct.HASH_DESC]* %hash_d, i64 0, i64 0
  %ptr = getelementptr inbounds [8 x %struct.HASH_DESC], [8 x %struct.HASH_DESC]* %hash_d, i64 0, i64 0, i32 0
  store i8* %inp, i8** %ptr, align 16, !tbaa !52
  %arrayidx24 = getelementptr inbounds [8 x %struct.CIPH_DESC], [8 x %struct.CIPH_DESC]* %ciph_d, i64 0, i64 0
  %inp25 = getelementptr inbounds [8 x %struct.CIPH_DESC], [8 x %struct.CIPH_DESC]* %ciph_d, i64 0, i64 0, i32 0
  store i8* %inp, i8** %inp25, align 16, !tbaa !54
  %add.ptr27 = getelementptr inbounds i8, i8* %out, i64 21
  %out29 = getelementptr inbounds [8 x %struct.CIPH_DESC], [8 x %struct.CIPH_DESC]* %ciph_d, i64 0, i64 0, i32 1
  store i8* %add.ptr27, i8** %out29, align 8, !tbaa !56
  %add.ptr32 = getelementptr inbounds i8, i8* %out, i64 5
  %call33 = call i8* @memcpy(i8* noundef nonnull %add.ptr32, i8* noundef nonnull %4, i64 noundef 16) #8
  %arraydecay35 = getelementptr inbounds [8 x %struct.CIPH_DESC], [8 x %struct.CIPH_DESC]* %ciph_d, i64 0, i64 0, i32 3, i64 0
  %7 = bitcast i64* %arraydecay35 to i8*
  %call36 = call i8* @memcpy(i8* noundef nonnull %7, i8* noundef nonnull %4, i64 noundef 16) #8
  %cmp38967.not = icmp eq i32 %n4x, 0
  br i1 %cmp38967.not, label %for.end, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %if.end19
  %add.ptr37 = getelementptr inbounds [8 x %union.anon.3], [8 x %union.anon.3]* %blocks, i64 0, i64 0, i32 0, i64 2
  %8 = bitcast i64* %add.ptr37 to i8*
  %add21 = add i32 %frag.0, 48
  %and = and i32 %add21, -16
  %add22 = add i32 %and, 21
  %idx.ext = zext i32 %frag.0 to i64
  %idx.ext54 = zext i32 %add22 to i64
  %umax = call i32 @llvm.umax.i32(i32 %mul, i32 2)
  %wide.trip.count = zext i32 %umax to i64
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %9 = phi i8* [ %inp, %for.body.lr.ph ], [ %add.ptr43, %for.body ]
  %indvars.iv = phi i64 [ 1, %for.body.lr.ph ], [ %indvars.iv.next, %for.body ]
  %IVs.0968 = phi i8* [ %8, %for.body.lr.ph ], [ %add.ptr69, %for.body ]
  %10 = add nsw i64 %indvars.iv, -1
  %add.ptr43 = getelementptr inbounds i8, i8* %9, i64 %idx.ext
  %ptr46 = getelementptr inbounds [8 x %struct.HASH_DESC], [8 x %struct.HASH_DESC]* %hash_d, i64 0, i64 %indvars.iv, i32 0
  store i8* %add.ptr43, i8** %ptr46, align 16, !tbaa !52
  %inp49 = getelementptr inbounds [8 x %struct.CIPH_DESC], [8 x %struct.CIPH_DESC]* %ciph_d, i64 0, i64 %indvars.iv, i32 0
  store i8* %add.ptr43, i8** %inp49, align 8, !tbaa !54
  %out53 = getelementptr inbounds [8 x %struct.CIPH_DESC], [8 x %struct.CIPH_DESC]* %ciph_d, i64 0, i64 %10, i32 1
  %11 = load i8*, i8** %out53, align 8, !tbaa !56
  %add.ptr55 = getelementptr inbounds i8, i8* %11, i64 %idx.ext54
  %out58 = getelementptr inbounds [8 x %struct.CIPH_DESC], [8 x %struct.CIPH_DESC]* %ciph_d, i64 0, i64 %indvars.iv, i32 1
  store i8* %add.ptr55, i8** %out58, align 8, !tbaa !56
  %add.ptr62 = getelementptr inbounds i8, i8* %add.ptr55, i64 -16
  %call63 = call i8* @memcpy(i8* noundef nonnull %add.ptr62, i8* noundef nonnull %IVs.0968, i64 noundef 16) #8
  %arraydecay67 = getelementptr inbounds [8 x %struct.CIPH_DESC], [8 x %struct.CIPH_DESC]* %ciph_d, i64 0, i64 %indvars.iv, i32 3, i64 0
  %12 = bitcast i64* %arraydecay67 to i8*
  %call68 = call i8* @memcpy(i8* noundef nonnull %12, i8* noundef nonnull %IVs.0968, i64 noundef 16) #8
  %add.ptr69 = getelementptr inbounds i8, i8* %IVs.0968, i64 16
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %for.end, label %for.body, !llvm.loop !57

for.end:                                          ; preds = %for.body, %if.end19
  %arraydecay74 = getelementptr inbounds %struct.EVP_AES_HMAC_SHA256, %struct.EVP_AES_HMAC_SHA256* %key, i64 0, i32 3, i32 3, i64 0
  %13 = bitcast i32* %arraydecay74 to i8*
  %call75 = call i8* @memcpy(i8* noundef nonnull %4, i8* noundef nonnull %13, i64 noundef 8) #8
  %arrayidx77 = getelementptr inbounds [8 x %union.anon.3], [8 x %union.anon.3]* %blocks, i64 0, i64 0, i32 0, i64 0
  %14 = load i64, i64* %arrayidx77, align 16, !tbaa !9
  %15 = call i64 asm "bswapq $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %14) #11, !srcloc !58
  br i1 %cmp38967.not, label %for.end196, label %for.body81.lr.ph

for.body81.lr.ph:                                 ; preds = %for.end
  %sub82 = add i32 %mul, -1
  %arrayidx86 = getelementptr inbounds %struct.EVP_AES_HMAC_SHA256, %struct.EVP_AES_HMAC_SHA256* %key, i64 0, i32 3, i32 0, i64 0
  %A = bitcast i8* %add.ptr4 to [8 x i32]*
  %arrayidx91 = getelementptr inbounds %struct.EVP_AES_HMAC_SHA256, %struct.EVP_AES_HMAC_SHA256* %key, i64 0, i32 3, i32 0, i64 1
  %B = getelementptr inbounds i8, i8* %add.ptr4, i64 32
  %16 = bitcast i8* %B to [8 x i32]*
  %arrayidx96 = getelementptr inbounds %struct.EVP_AES_HMAC_SHA256, %struct.EVP_AES_HMAC_SHA256* %key, i64 0, i32 3, i32 0, i64 2
  %C = getelementptr inbounds i8, i8* %add.ptr4, i64 64
  %17 = bitcast i8* %C to [8 x i32]*
  %arrayidx101 = getelementptr inbounds %struct.EVP_AES_HMAC_SHA256, %struct.EVP_AES_HMAC_SHA256* %key, i64 0, i32 3, i32 0, i64 3
  %D = getelementptr inbounds i8, i8* %add.ptr4, i64 96
  %18 = bitcast i8* %D to [8 x i32]*
  %arrayidx106 = getelementptr inbounds %struct.EVP_AES_HMAC_SHA256, %struct.EVP_AES_HMAC_SHA256* %key, i64 0, i32 3, i32 0, i64 4
  %E = getelementptr inbounds i8, i8* %add.ptr4, i64 128
  %19 = bitcast i8* %E to [8 x i32]*
  %arrayidx111 = getelementptr inbounds %struct.EVP_AES_HMAC_SHA256, %struct.EVP_AES_HMAC_SHA256* %key, i64 0, i32 3, i32 0, i64 5
  %F = getelementptr inbounds i8, i8* %add.ptr4, i64 160
  %20 = bitcast i8* %F to [8 x i32]*
  %arrayidx116 = getelementptr inbounds %struct.EVP_AES_HMAC_SHA256, %struct.EVP_AES_HMAC_SHA256* %key, i64 0, i32 3, i32 0, i64 6
  %G = getelementptr inbounds i8, i8* %add.ptr4, i64 192
  %21 = bitcast i8* %G to [8 x i32]*
  %arrayidx121 = getelementptr inbounds %struct.EVP_AES_HMAC_SHA256, %struct.EVP_AES_HMAC_SHA256* %key, i64 0, i32 3, i32 0, i64 7
  %H = getelementptr inbounds i8, i8* %add.ptr4, i64 224
  %22 = bitcast i8* %H to [8 x i32]*
  %arrayidx135966 = getelementptr inbounds %struct.EVP_AES_HMAC_SHA256, %struct.EVP_AES_HMAC_SHA256* %key, i64 0, i32 3, i32 3, i64 2
  %arrayidx135 = bitcast i32* %arrayidx135966 to i8*
  %arrayidx143 = getelementptr inbounds i8, i8* %13, i64 9
  %arrayidx151 = getelementptr inbounds i8, i8* %13, i64 10
  %23 = zext i32 %sub82 to i64
  %umax991 = call i32 @llvm.umax.i32(i32 %mul, i32 1)
  %wide.trip.count992 = zext i32 %umax991 to i64
  br label %for.body81

for.body81:                                       ; preds = %for.body81.lr.ph, %for.body81
  %indvars.iv988 = phi i64 [ 0, %for.body81.lr.ph ], [ %indvars.iv.next989, %for.body81 ]
  %cmp83 = icmp eq i64 %indvars.iv988, %23
  %cond = select i1 %cmp83, i32 %last.0, i32 %frag.0
  %24 = load i32, i32* %arrayidx86, align 4, !tbaa !4
  %arrayidx88 = getelementptr inbounds [8 x i32], [8 x i32]* %A, i64 0, i64 %indvars.iv988
  store i32 %24, i32* %arrayidx88, align 4, !tbaa !4
  %25 = load i32, i32* %arrayidx91, align 4, !tbaa !4
  %arrayidx93 = getelementptr inbounds [8 x i32], [8 x i32]* %16, i64 0, i64 %indvars.iv988
  store i32 %25, i32* %arrayidx93, align 4, !tbaa !4
  %26 = load i32, i32* %arrayidx96, align 4, !tbaa !4
  %arrayidx98 = getelementptr inbounds [8 x i32], [8 x i32]* %17, i64 0, i64 %indvars.iv988
  store i32 %26, i32* %arrayidx98, align 4, !tbaa !4
  %27 = load i32, i32* %arrayidx101, align 4, !tbaa !4
  %arrayidx103 = getelementptr inbounds [8 x i32], [8 x i32]* %18, i64 0, i64 %indvars.iv988
  store i32 %27, i32* %arrayidx103, align 4, !tbaa !4
  %28 = load i32, i32* %arrayidx106, align 4, !tbaa !4
  %arrayidx108 = getelementptr inbounds [8 x i32], [8 x i32]* %19, i64 0, i64 %indvars.iv988
  store i32 %28, i32* %arrayidx108, align 4, !tbaa !4
  %29 = load i32, i32* %arrayidx111, align 4, !tbaa !4
  %arrayidx113 = getelementptr inbounds [8 x i32], [8 x i32]* %20, i64 0, i64 %indvars.iv988
  store i32 %29, i32* %arrayidx113, align 4, !tbaa !4
  %30 = load i32, i32* %arrayidx116, align 4, !tbaa !4
  %arrayidx118 = getelementptr inbounds [8 x i32], [8 x i32]* %21, i64 0, i64 %indvars.iv988
  store i32 %30, i32* %arrayidx118, align 4, !tbaa !4
  %31 = load i32, i32* %arrayidx121, align 4, !tbaa !4
  %arrayidx123 = getelementptr inbounds [8 x i32], [8 x i32]* %22, i64 0, i64 %indvars.iv988
  store i32 %31, i32* %arrayidx123, align 4, !tbaa !4
  %add126 = add i64 %indvars.iv988, %15
  %32 = call i64 asm "bswapq $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %add126) #11, !srcloc !59
  %arrayidx129 = getelementptr inbounds [8 x %union.anon.3], [8 x %union.anon.3]* %blocks, i64 0, i64 %indvars.iv988
  %arrayidx131 = getelementptr inbounds %union.anon.3, %union.anon.3* %arrayidx129, i64 0, i32 0, i64 0
  store i64 %32, i64* %arrayidx131, align 16, !tbaa !9
  %33 = load i8, i8* %arrayidx135, align 4, !tbaa !9
  %c138 = bitcast %union.anon.3* %arrayidx129 to [128 x i8]*
  %arrayidx139 = getelementptr inbounds [8 x %union.anon.3], [8 x %union.anon.3]* %blocks, i64 0, i64 %indvars.iv988, i32 0, i64 1
  %34 = bitcast i64* %arrayidx139 to i8*
  store i8 %33, i8* %34, align 8, !tbaa !9
  %35 = load i8, i8* %arrayidx143, align 1, !tbaa !9
  %arrayidx147 = getelementptr inbounds [128 x i8], [128 x i8]* %c138, i64 0, i64 9
  store i8 %35, i8* %arrayidx147, align 1, !tbaa !9
  %36 = load i8, i8* %arrayidx151, align 2, !tbaa !9
  %arrayidx155 = getelementptr inbounds [128 x i8], [128 x i8]* %c138, i64 0, i64 10
  store i8 %36, i8* %arrayidx155, align 2, !tbaa !9
  %shr156 = lshr i32 %cond, 8
  %conv157 = trunc i32 %shr156 to i8
  %arrayidx161 = getelementptr inbounds [128 x i8], [128 x i8]* %c138, i64 0, i64 11
  store i8 %conv157, i8* %arrayidx161, align 1, !tbaa !9
  %conv162 = trunc i32 %cond to i8
  %arrayidx166 = getelementptr inbounds [128 x i8], [128 x i8]* %c138, i64 0, i64 12
  store i8 %conv162, i8* %arrayidx166, align 4, !tbaa !9
  %arraydecay170 = bitcast %union.anon.3* %arrayidx129 to i8*
  %add.ptr171 = getelementptr inbounds i8, i8* %arraydecay170, i64 13
  %ptr174 = getelementptr inbounds [8 x %struct.HASH_DESC], [8 x %struct.HASH_DESC]* %hash_d, i64 0, i64 %indvars.iv988, i32 0
  %37 = load i8*, i8** %ptr174, align 16, !tbaa !52
  %call175 = call i8* @memcpy(i8* noundef nonnull %add.ptr171, i8* noundef %37, i64 noundef 51) #8
  %add.ptr179 = getelementptr inbounds i8, i8* %37, i64 51
  store i8* %add.ptr179, i8** %ptr174, align 16, !tbaa !52
  %sub180 = add i32 %cond, -51
  %div = lshr i32 %sub180, 6
  %blocks183 = getelementptr inbounds [8 x %struct.HASH_DESC], [8 x %struct.HASH_DESC]* %hash_d, i64 0, i64 %indvars.iv988, i32 1
  store i32 %div, i32* %blocks183, align 8, !tbaa !60
  %arrayidx189 = getelementptr inbounds [8 x %struct.HASH_DESC], [8 x %struct.HASH_DESC]* %edges, i64 0, i64 %indvars.iv988
  %38 = bitcast %struct.HASH_DESC* %arrayidx189 to %union.anon.3**
  store %union.anon.3* %arrayidx129, %union.anon.3** %38, align 16, !tbaa !52
  %blocks193 = getelementptr inbounds [8 x %struct.HASH_DESC], [8 x %struct.HASH_DESC]* %edges, i64 0, i64 %indvars.iv988, i32 1
  store i32 1, i32* %blocks193, align 8, !tbaa !60
  %indvars.iv.next989 = add nuw nsw i64 %indvars.iv988, 1
  %exitcond993.not = icmp eq i64 %indvars.iv.next989, %wide.trip.count992
  br i1 %exitcond993.not, label %for.end196, label %for.body81, !llvm.loop !61

for.end196:                                       ; preds = %for.body81, %for.end
  %arraydecay197 = getelementptr inbounds [8 x %struct.HASH_DESC], [8 x %struct.HASH_DESC]* %edges, i64 0, i64 0
  call void @sha256_multi_block(%struct.SHA256_MB_CTX* noundef nonnull %6, %struct.HASH_DESC* noundef nonnull %arraydecay197, i32 noundef %n4x) #8
  %cmp198.not = icmp ugt i32 %frag.0, %last.0
  %cond203 = select i1 %cmp198.not, i32 %last.0, i32 %frag.0
  %sub204 = add i32 %cond203, -51
  %div205 = lshr i32 %sub204, 6
  %cmp206 = icmp ugt i32 %sub204, 2111
  br i1 %cmp206, label %for.cond209.preheader, label %if.end275

for.cond209.preheader:                            ; preds = %for.end196
  br i1 %cmp38967.not, label %do.body.preheader, label %for.body212.preheader

for.body212.preheader:                            ; preds = %for.cond209.preheader
  %umax997 = call i32 @llvm.umax.i32(i32 %mul, i32 1)
  %wide.trip.count998 = zext i32 %umax997 to i64
  %xtraiter = and i64 %wide.trip.count998, 1
  %39 = icmp eq i32 %mul, 0
  br i1 %39, label %do.body.preheader.loopexit.unr-lcssa, label %for.body212.preheader.new

for.body212.preheader.new:                        ; preds = %for.body212.preheader
  %unroll_iter = and i64 %wide.trip.count998, 4294967292
  br label %for.body212

do.body.preheader.loopexit.unr-lcssa:             ; preds = %for.body212, %for.body212.preheader
  %indvars.iv994.unr = phi i64 [ 0, %for.body212.preheader ], [ %indvars.iv.next995.1, %for.body212 ]
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %do.body.preheader.loopexit, label %for.body212.epil

for.body212.epil:                                 ; preds = %do.body.preheader.loopexit.unr-lcssa
  %ptr215.epil = getelementptr inbounds [8 x %struct.HASH_DESC], [8 x %struct.HASH_DESC]* %hash_d, i64 0, i64 %indvars.iv994.unr, i32 0
  %40 = load i8*, i8** %ptr215.epil, align 16, !tbaa !52
  %ptr218.epil = getelementptr inbounds [8 x %struct.HASH_DESC], [8 x %struct.HASH_DESC]* %edges, i64 0, i64 %indvars.iv994.unr, i32 0
  store i8* %40, i8** %ptr218.epil, align 16, !tbaa !52
  %blocks221.epil = getelementptr inbounds [8 x %struct.HASH_DESC], [8 x %struct.HASH_DESC]* %edges, i64 0, i64 %indvars.iv994.unr, i32 1
  store i32 32, i32* %blocks221.epil, align 8, !tbaa !60
  %blocks224.epil = getelementptr inbounds [8 x %struct.CIPH_DESC], [8 x %struct.CIPH_DESC]* %ciph_d, i64 0, i64 %indvars.iv994.unr, i32 2
  store i32 128, i32* %blocks224.epil, align 8, !tbaa !62
  br label %do.body.preheader.loopexit

do.body.preheader.loopexit:                       ; preds = %do.body.preheader.loopexit.unr-lcssa, %for.body212.epil
  %phi.cast = zext i32 %umax997 to i64
  br label %do.body.preheader

do.body.preheader:                                ; preds = %for.cond209.preheader, %do.body.preheader.loopexit
  %umax1003.pre-phi = phi i64 [ %phi.cast, %do.body.preheader.loopexit ], [ 1, %for.cond209.preheader ]
  %41 = bitcast %struct.EVP_AES_HMAC_SHA256* %key to i8*
  br label %do.body

for.body212:                                      ; preds = %for.body212, %for.body212.preheader.new
  %indvars.iv994 = phi i64 [ 0, %for.body212.preheader.new ], [ %indvars.iv.next995.1, %for.body212 ]
  %niter = phi i64 [ 0, %for.body212.preheader.new ], [ %niter.next.1, %for.body212 ]
  %ptr215 = getelementptr inbounds [8 x %struct.HASH_DESC], [8 x %struct.HASH_DESC]* %hash_d, i64 0, i64 %indvars.iv994, i32 0
  %42 = load i8*, i8** %ptr215, align 16, !tbaa !52
  %ptr218 = getelementptr inbounds [8 x %struct.HASH_DESC], [8 x %struct.HASH_DESC]* %edges, i64 0, i64 %indvars.iv994, i32 0
  store i8* %42, i8** %ptr218, align 16, !tbaa !52
  %blocks221 = getelementptr inbounds [8 x %struct.HASH_DESC], [8 x %struct.HASH_DESC]* %edges, i64 0, i64 %indvars.iv994, i32 1
  store i32 32, i32* %blocks221, align 8, !tbaa !60
  %blocks224 = getelementptr inbounds [8 x %struct.CIPH_DESC], [8 x %struct.CIPH_DESC]* %ciph_d, i64 0, i64 %indvars.iv994, i32 2
  store i32 128, i32* %blocks224, align 16, !tbaa !62
  %indvars.iv.next995 = or i64 %indvars.iv994, 1
  %ptr215.1 = getelementptr inbounds [8 x %struct.HASH_DESC], [8 x %struct.HASH_DESC]* %hash_d, i64 0, i64 %indvars.iv.next995, i32 0
  %43 = load i8*, i8** %ptr215.1, align 16, !tbaa !52
  %ptr218.1 = getelementptr inbounds [8 x %struct.HASH_DESC], [8 x %struct.HASH_DESC]* %edges, i64 0, i64 %indvars.iv.next995, i32 0
  store i8* %43, i8** %ptr218.1, align 16, !tbaa !52
  %blocks221.1 = getelementptr inbounds [8 x %struct.HASH_DESC], [8 x %struct.HASH_DESC]* %edges, i64 0, i64 %indvars.iv.next995, i32 1
  store i32 32, i32* %blocks221.1, align 8, !tbaa !60
  %blocks224.1 = getelementptr inbounds [8 x %struct.CIPH_DESC], [8 x %struct.CIPH_DESC]* %ciph_d, i64 0, i64 %indvars.iv.next995, i32 2
  store i32 128, i32* %blocks224.1, align 8, !tbaa !62
  %indvars.iv.next995.1 = add nuw nsw i64 %indvars.iv994, 2
  %niter.next.1 = add i64 %niter, 2
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %do.body.preheader.loopexit.unr-lcssa, label %for.body212, !llvm.loop !63

do.body:                                          ; preds = %do.body.preheader, %for.end270
  %processed.0 = phi i32 [ %add271, %for.end270 ], [ 0, %do.body.preheader ]
  %minblocks.0 = phi i32 [ %sub272, %for.end270 ], [ %div205, %do.body.preheader ]
  call void @sha256_multi_block(%struct.SHA256_MB_CTX* noundef nonnull %6, %struct.HASH_DESC* noundef nonnull %arraydecay197, i32 noundef %n4x) #8
  call void @aesni_multi_cbc_encrypt(%struct.CIPH_DESC* noundef nonnull %arrayidx24, i8* noundef %41, i32 noundef %n4x) #8
  br i1 %cmp38967.not, label %for.end270, label %for.body233

for.body233:                                      ; preds = %do.body, %for.body233
  %indvars.iv1000 = phi i64 [ %indvars.iv.next1001, %for.body233 ], [ 0, %do.body ]
  %ptr236 = getelementptr inbounds [8 x %struct.HASH_DESC], [8 x %struct.HASH_DESC]* %hash_d, i64 0, i64 %indvars.iv1000, i32 0
  %44 = load i8*, i8** %ptr236, align 16, !tbaa !52
  %add.ptr237 = getelementptr inbounds i8, i8* %44, i64 2048
  store i8* %add.ptr237, i8** %ptr236, align 16, !tbaa !52
  %ptr240 = getelementptr inbounds [8 x %struct.HASH_DESC], [8 x %struct.HASH_DESC]* %edges, i64 0, i64 %indvars.iv1000, i32 0
  store i8* %add.ptr237, i8** %ptr240, align 16, !tbaa !52
  %blocks243 = getelementptr inbounds [8 x %struct.HASH_DESC], [8 x %struct.HASH_DESC]* %hash_d, i64 0, i64 %indvars.iv1000, i32 1
  %45 = load i32, i32* %blocks243, align 8, !tbaa !60
  %sub244 = add nsw i32 %45, -32
  store i32 %sub244, i32* %blocks243, align 8, !tbaa !60
  %blocks247 = getelementptr inbounds [8 x %struct.HASH_DESC], [8 x %struct.HASH_DESC]* %edges, i64 0, i64 %indvars.iv1000, i32 1
  store i32 32, i32* %blocks247, align 8, !tbaa !60
  %inp250 = getelementptr inbounds [8 x %struct.CIPH_DESC], [8 x %struct.CIPH_DESC]* %ciph_d, i64 0, i64 %indvars.iv1000, i32 0
  %46 = bitcast i8** %inp250 to <2 x i8*>*
  %47 = load <2 x i8*>, <2 x i8*>* %46, align 8, !tbaa !64
  %48 = getelementptr i8, <2 x i8*> %47, <2 x i64> <i64 2048, i64 2048>
  %49 = bitcast i8** %inp250 to <2 x i8*>*
  store <2 x i8*> %48, <2 x i8*>* %49, align 8, !tbaa !64
  %blocks258 = getelementptr inbounds [8 x %struct.CIPH_DESC], [8 x %struct.CIPH_DESC]* %ciph_d, i64 0, i64 %indvars.iv1000, i32 2
  store i32 128, i32* %blocks258, align 8, !tbaa !62
  %arraydecay262 = getelementptr inbounds [8 x %struct.CIPH_DESC], [8 x %struct.CIPH_DESC]* %ciph_d, i64 0, i64 %indvars.iv1000, i32 3, i64 0
  %50 = bitcast i64* %arraydecay262 to i8*
  %51 = extractelement <2 x i8*> %47, i64 1
  %add.ptr266 = getelementptr inbounds i8, i8* %51, i64 2032
  %call267 = call i8* @memcpy(i8* noundef nonnull %50, i8* noundef nonnull %add.ptr266, i64 noundef 16) #8
  %indvars.iv.next1001 = add nuw nsw i64 %indvars.iv1000, 1
  %exitcond1005.not = icmp eq i64 %indvars.iv.next1001, %umax1003.pre-phi
  br i1 %exitcond1005.not, label %for.end270, label %for.body233, !llvm.loop !65

for.end270:                                       ; preds = %for.body233, %do.body
  %add271 = add i32 %processed.0, 2048
  %sub272 = add i32 %minblocks.0, -32
  %cmp273 = icmp ugt i32 %sub272, 32
  br i1 %cmp273, label %do.body, label %if.end275, !llvm.loop !66

if.end275:                                        ; preds = %for.end270, %for.end196
  %processed.1 = phi i32 [ 0, %for.end196 ], [ %add271, %for.end270 ]
  call void @sha256_multi_block(%struct.SHA256_MB_CTX* noundef nonnull %6, %struct.HASH_DESC* noundef nonnull %arrayidx23, i32 noundef %n4x) #8
  %call278 = call i8* @memset(i8* noundef nonnull %4, i32 noundef 0, i64 noundef 1024) #8
  br i1 %cmp38967.not, label %for.end496.thread, label %for.body282.lr.ph

for.body282.lr.ph:                                ; preds = %if.end275
  %sub284 = add i32 %mul, -1
  %52 = zext i32 %sub284 to i64
  %umax1009 = call i32 @llvm.umax.i32(i32 %mul, i32 1)
  %wide.trip.count1010 = zext i32 %umax1009 to i64
  br label %for.body282

for.body282:                                      ; preds = %for.body282.lr.ph, %for.body282
  %indvars.iv1006 = phi i64 [ 0, %for.body282.lr.ph ], [ %indvars.iv.next1007, %for.body282 ]
  %cmp285 = icmp eq i64 %indvars.iv1006, %52
  %cond290 = select i1 %cmp285, i32 %last.0, i32 %frag.0
  %blocks293 = getelementptr inbounds [8 x %struct.HASH_DESC], [8 x %struct.HASH_DESC]* %hash_d, i64 0, i64 %indvars.iv1006, i32 1
  %53 = load i32, i32* %blocks293, align 8, !tbaa !60
  %mul294 = shl nsw i32 %53, 6
  %ptr298 = getelementptr inbounds [8 x %struct.HASH_DESC], [8 x %struct.HASH_DESC]* %hash_d, i64 0, i64 %indvars.iv1006, i32 0
  %54 = load i8*, i8** %ptr298, align 16, !tbaa !52
  %idx.ext299 = zext i32 %mul294 to i64
  %add.ptr300 = getelementptr inbounds i8, i8* %54, i64 %idx.ext299
  %55 = add i32 %cond290, -51
  %56 = add i32 %processed.1, %mul294
  %sub303 = sub i32 %55, %56
  %arrayidx305 = getelementptr inbounds [8 x %union.anon.3], [8 x %union.anon.3]* %blocks, i64 0, i64 %indvars.iv1006
  %c306 = bitcast %union.anon.3* %arrayidx305 to [128 x i8]*
  %arraydecay307 = bitcast %union.anon.3* %arrayidx305 to i8*
  %conv308 = zext i32 %sub303 to i64
  %call309 = call i8* @memcpy(i8* noundef nonnull %arraydecay307, i8* noundef %add.ptr300, i64 noundef %conv308) #8
  %arrayidx314 = getelementptr inbounds [128 x i8], [128 x i8]* %c306, i64 0, i64 %conv308
  store i8 -128, i8* %arrayidx314, align 1, !tbaa !9
  %add315 = shl i32 %cond290, 3
  %mul316 = add i32 %add315, 616
  %cmp317 = icmp ult i32 %sub303, 56
  %57 = call i32 asm "bswapl $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %mul316) #11
  %d = bitcast %union.anon.3* %arrayidx305 to [32 x i32]*
  %. = select i1 %cmp317, i64 15, i64 31
  %.1026 = select i1 %cmp317, i32 1, i32 2
  %arrayidx333 = getelementptr inbounds [32 x i32], [32 x i32]* %d, i64 0, i64 %.
  store i32 %57, i32* %arrayidx333, align 4, !tbaa !9
  %58 = getelementptr inbounds [8 x %struct.HASH_DESC], [8 x %struct.HASH_DESC]* %edges, i64 0, i64 %indvars.iv1006, i32 1
  store i32 %.1026, i32* %58, align 8
  %ptr344 = getelementptr inbounds [8 x %struct.HASH_DESC], [8 x %struct.HASH_DESC]* %edges, i64 0, i64 %indvars.iv1006, i32 0
  %59 = bitcast i8** %ptr344 to %union.anon.3**
  store %union.anon.3* %arrayidx305, %union.anon.3** %59, align 16, !tbaa !52
  %indvars.iv.next1007 = add nuw nsw i64 %indvars.iv1006, 1
  %exitcond1011.not = icmp eq i64 %indvars.iv.next1007, %wide.trip.count1010
  br i1 %exitcond1011.not, label %for.body354.lr.ph, label %for.body282, !llvm.loop !67

for.end496.thread:                                ; preds = %if.end275
  call void @sha256_multi_block(%struct.SHA256_MB_CTX* noundef nonnull %6, %struct.HASH_DESC* noundef nonnull %arraydecay197, i32 noundef 0) #8
  %call350.c = call i8* @memset(i8* noundef nonnull %4, i32 noundef 0, i64 noundef 1024) #8
  call void @sha256_multi_block(%struct.SHA256_MB_CTX* noundef nonnull %6, %struct.HASH_DESC* noundef nonnull %arraydecay197, i32 noundef 0) #8
  br label %for.end623

for.body354.lr.ph:                                ; preds = %for.body282
  call void @sha256_multi_block(%struct.SHA256_MB_CTX* noundef nonnull %6, %struct.HASH_DESC* noundef nonnull %arraydecay197, i32 noundef %n4x) #8
  %call350 = call i8* @memset(i8* noundef nonnull %4, i32 noundef 0, i64 noundef 1024) #8
  %A356 = bitcast i8* %add.ptr4 to [8 x i32]*
  %arrayidx365 = getelementptr inbounds %struct.EVP_AES_HMAC_SHA256, %struct.EVP_AES_HMAC_SHA256* %key, i64 0, i32 2, i32 0, i64 0
  %B370 = getelementptr inbounds i8, i8* %add.ptr4, i64 32
  %60 = bitcast i8* %B370 to [8 x i32]*
  %arrayidx380 = getelementptr inbounds %struct.EVP_AES_HMAC_SHA256, %struct.EVP_AES_HMAC_SHA256* %key, i64 0, i32 2, i32 0, i64 1
  %C385 = getelementptr inbounds i8, i8* %add.ptr4, i64 64
  %61 = bitcast i8* %C385 to [8 x i32]*
  %arrayidx395 = getelementptr inbounds %struct.EVP_AES_HMAC_SHA256, %struct.EVP_AES_HMAC_SHA256* %key, i64 0, i32 2, i32 0, i64 2
  %D400 = getelementptr inbounds i8, i8* %add.ptr4, i64 96
  %62 = bitcast i8* %D400 to [8 x i32]*
  %arrayidx410 = getelementptr inbounds %struct.EVP_AES_HMAC_SHA256, %struct.EVP_AES_HMAC_SHA256* %key, i64 0, i32 2, i32 0, i64 3
  %E415 = getelementptr inbounds i8, i8* %add.ptr4, i64 128
  %63 = bitcast i8* %E415 to [8 x i32]*
  %arrayidx425 = getelementptr inbounds %struct.EVP_AES_HMAC_SHA256, %struct.EVP_AES_HMAC_SHA256* %key, i64 0, i32 2, i32 0, i64 4
  %F430 = getelementptr inbounds i8, i8* %add.ptr4, i64 160
  %64 = bitcast i8* %F430 to [8 x i32]*
  %arrayidx440 = getelementptr inbounds %struct.EVP_AES_HMAC_SHA256, %struct.EVP_AES_HMAC_SHA256* %key, i64 0, i32 2, i32 0, i64 5
  %G445 = getelementptr inbounds i8, i8* %add.ptr4, i64 192
  %65 = bitcast i8* %G445 to [8 x i32]*
  %arrayidx455 = getelementptr inbounds %struct.EVP_AES_HMAC_SHA256, %struct.EVP_AES_HMAC_SHA256* %key, i64 0, i32 2, i32 0, i64 6
  %H460 = getelementptr inbounds i8, i8* %add.ptr4, i64 224
  %66 = bitcast i8* %H460 to [8 x i32]*
  %arrayidx470 = getelementptr inbounds %struct.EVP_AES_HMAC_SHA256, %struct.EVP_AES_HMAC_SHA256* %key, i64 0, i32 2, i32 0, i64 7
  br label %for.body354

for.body354:                                      ; preds = %for.body354.lr.ph, %for.body354
  %indvars.iv1012 = phi i64 [ 0, %for.body354.lr.ph ], [ %indvars.iv.next1013, %for.body354 ]
  %arrayidx358 = getelementptr inbounds [8 x i32], [8 x i32]* %A356, i64 0, i64 %indvars.iv1012
  %67 = load i32, i32* %arrayidx358, align 4, !tbaa !4
  %68 = call i32 asm "bswapl $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %67) #11, !srcloc !68
  %arrayidx361 = getelementptr inbounds [8 x %union.anon.3], [8 x %union.anon.3]* %blocks, i64 0, i64 %indvars.iv1012
  %d362 = bitcast %union.anon.3* %arrayidx361 to [32 x i32]*
  %arrayidx363 = bitcast %union.anon.3* %arrayidx361 to i32*
  store i32 %68, i32* %arrayidx363, align 16, !tbaa !9
  %69 = load i32, i32* %arrayidx365, align 4, !tbaa !4
  store i32 %69, i32* %arrayidx358, align 4, !tbaa !4
  %arrayidx372 = getelementptr inbounds [8 x i32], [8 x i32]* %60, i64 0, i64 %indvars.iv1012
  %70 = load i32, i32* %arrayidx372, align 4, !tbaa !4
  %71 = call i32 asm "bswapl $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %70) #11, !srcloc !69
  %arrayidx377 = getelementptr inbounds [32 x i32], [32 x i32]* %d362, i64 0, i64 1
  store i32 %71, i32* %arrayidx377, align 4, !tbaa !9
  %72 = load i32, i32* %arrayidx380, align 4, !tbaa !4
  store i32 %72, i32* %arrayidx372, align 4, !tbaa !4
  %arrayidx387 = getelementptr inbounds [8 x i32], [8 x i32]* %61, i64 0, i64 %indvars.iv1012
  %73 = load i32, i32* %arrayidx387, align 4, !tbaa !4
  %74 = call i32 asm "bswapl $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %73) #11, !srcloc !70
  %arrayidx392 = getelementptr inbounds [8 x %union.anon.3], [8 x %union.anon.3]* %blocks, i64 0, i64 %indvars.iv1012, i32 0, i64 1
  %75 = bitcast i64* %arrayidx392 to i32*
  store i32 %74, i32* %75, align 8, !tbaa !9
  %76 = load i32, i32* %arrayidx395, align 4, !tbaa !4
  store i32 %76, i32* %arrayidx387, align 4, !tbaa !4
  %arrayidx402 = getelementptr inbounds [8 x i32], [8 x i32]* %62, i64 0, i64 %indvars.iv1012
  %77 = load i32, i32* %arrayidx402, align 4, !tbaa !4
  %78 = call i32 asm "bswapl $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %77) #11, !srcloc !71
  %arrayidx407 = getelementptr inbounds [32 x i32], [32 x i32]* %d362, i64 0, i64 3
  store i32 %78, i32* %arrayidx407, align 4, !tbaa !9
  %79 = load i32, i32* %arrayidx410, align 4, !tbaa !4
  store i32 %79, i32* %arrayidx402, align 4, !tbaa !4
  %arrayidx417 = getelementptr inbounds [8 x i32], [8 x i32]* %63, i64 0, i64 %indvars.iv1012
  %80 = load i32, i32* %arrayidx417, align 4, !tbaa !4
  %81 = call i32 asm "bswapl $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %80) #11, !srcloc !72
  %arrayidx422 = getelementptr inbounds [8 x %union.anon.3], [8 x %union.anon.3]* %blocks, i64 0, i64 %indvars.iv1012, i32 0, i64 2
  %82 = bitcast i64* %arrayidx422 to i32*
  store i32 %81, i32* %82, align 16, !tbaa !9
  %83 = load i32, i32* %arrayidx425, align 4, !tbaa !4
  store i32 %83, i32* %arrayidx417, align 4, !tbaa !4
  %arrayidx432 = getelementptr inbounds [8 x i32], [8 x i32]* %64, i64 0, i64 %indvars.iv1012
  %84 = load i32, i32* %arrayidx432, align 4, !tbaa !4
  %85 = call i32 asm "bswapl $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %84) #11, !srcloc !73
  %arrayidx437 = getelementptr inbounds [32 x i32], [32 x i32]* %d362, i64 0, i64 5
  store i32 %85, i32* %arrayidx437, align 4, !tbaa !9
  %86 = load i32, i32* %arrayidx440, align 4, !tbaa !4
  store i32 %86, i32* %arrayidx432, align 4, !tbaa !4
  %arrayidx447 = getelementptr inbounds [8 x i32], [8 x i32]* %65, i64 0, i64 %indvars.iv1012
  %87 = load i32, i32* %arrayidx447, align 4, !tbaa !4
  %88 = call i32 asm "bswapl $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %87) #11, !srcloc !74
  %arrayidx452 = getelementptr inbounds [8 x %union.anon.3], [8 x %union.anon.3]* %blocks, i64 0, i64 %indvars.iv1012, i32 0, i64 3
  %89 = bitcast i64* %arrayidx452 to i32*
  store i32 %88, i32* %89, align 8, !tbaa !9
  %90 = load i32, i32* %arrayidx455, align 4, !tbaa !4
  store i32 %90, i32* %arrayidx447, align 4, !tbaa !4
  %arrayidx462 = getelementptr inbounds [8 x i32], [8 x i32]* %66, i64 0, i64 %indvars.iv1012
  %91 = load i32, i32* %arrayidx462, align 4, !tbaa !4
  %92 = call i32 asm "bswapl $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %91) #11, !srcloc !75
  %arrayidx467 = getelementptr inbounds [32 x i32], [32 x i32]* %d362, i64 0, i64 7
  store i32 %92, i32* %arrayidx467, align 4, !tbaa !9
  %93 = load i32, i32* %arrayidx470, align 4, !tbaa !4
  store i32 %93, i32* %arrayidx462, align 4, !tbaa !4
  %arrayidx477 = getelementptr inbounds [8 x %union.anon.3], [8 x %union.anon.3]* %blocks, i64 0, i64 %indvars.iv1012, i32 0, i64 4
  %94 = bitcast i64* %arrayidx477 to i8*
  store i8 -128, i8* %94, align 16, !tbaa !9
  %95 = call i32 asm "bswapl $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 768) #11, !srcloc !76
  %arrayidx483 = getelementptr inbounds [32 x i32], [32 x i32]* %d362, i64 0, i64 15
  store i32 %95, i32* %arrayidx483, align 4, !tbaa !9
  %arrayidx489 = getelementptr inbounds [8 x %struct.HASH_DESC], [8 x %struct.HASH_DESC]* %edges, i64 0, i64 %indvars.iv1012
  %96 = bitcast %struct.HASH_DESC* %arrayidx489 to %union.anon.3**
  store %union.anon.3* %arrayidx361, %union.anon.3** %96, align 16, !tbaa !52
  %blocks493 = getelementptr inbounds [8 x %struct.HASH_DESC], [8 x %struct.HASH_DESC]* %edges, i64 0, i64 %indvars.iv1012, i32 1
  store i32 1, i32* %blocks493, align 8, !tbaa !60
  %indvars.iv.next1013 = add nuw nsw i64 %indvars.iv1012, 1
  %exitcond1017.not = icmp eq i64 %indvars.iv.next1013, %wide.trip.count1010
  br i1 %exitcond1017.not, label %for.body501.lr.ph, label %for.body354, !llvm.loop !77

for.body501.lr.ph:                                ; preds = %for.body354
  call void @sha256_multi_block(%struct.SHA256_MB_CTX* noundef nonnull %6, %struct.HASH_DESC* noundef nonnull %arraydecay197, i32 noundef %n4x) #8
  %arrayidx599965 = getelementptr inbounds %struct.EVP_AES_HMAC_SHA256, %struct.EVP_AES_HMAC_SHA256* %key, i64 0, i32 3, i32 3, i64 2
  %arrayidx599 = bitcast i32* %arrayidx599965 to i8*
  %arrayidx604 = getelementptr inbounds i8, i8* %13, i64 9
  %arrayidx609 = getelementptr inbounds i8, i8* %13, i64 10
  br label %for.body501

for.body501:                                      ; preds = %for.body501.lr.ph, %for.end587
  %indvars.iv1019 = phi i64 [ 0, %for.body501.lr.ph ], [ %indvars.iv.next1020, %for.end587 ]
  %out.addr.0985 = phi i8* [ %out, %for.body501.lr.ph ], [ %incdec.ptr.lcssa, %for.end587 ]
  %ret.0983 = phi i64 [ 0, %for.body501.lr.ph ], [ %add618, %for.end587 ]
  %cmp504 = icmp eq i64 %indvars.iv1019, %52
  %cond509 = select i1 %cmp504, i32 %last.0, i32 %frag.0
  %out512 = getelementptr inbounds [8 x %struct.CIPH_DESC], [8 x %struct.CIPH_DESC]* %ciph_d, i64 0, i64 %indvars.iv1019, i32 1
  %97 = load i8*, i8** %out512, align 8, !tbaa !56
  %inp515 = getelementptr inbounds [8 x %struct.CIPH_DESC], [8 x %struct.CIPH_DESC]* %ciph_d, i64 0, i64 %indvars.iv1019, i32 0
  %98 = load i8*, i8** %inp515, align 8, !tbaa !54
  %sub516 = sub i32 %cond509, %processed.1
  %conv517 = zext i32 %sub516 to i64
  %call518 = call i8* @memcpy(i8* noundef %97, i8* noundef %98, i64 noundef %conv517) #8
  %99 = load i8*, i8** %out512, align 8, !tbaa !56
  store i8* %99, i8** %inp515, align 8, !tbaa !54
  %add525 = add i32 %cond509, 21
  %idx.ext526 = zext i32 %add525 to i64
  %add.ptr527 = getelementptr inbounds i8, i8* %out.addr.0985, i64 %idx.ext526
  %arrayidx531 = getelementptr inbounds [8 x i32], [8 x i32]* %A356, i64 0, i64 %indvars.iv1019
  %100 = load i32, i32* %arrayidx531, align 4, !tbaa !4
  %101 = call i32 asm "bswapl $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %100) #11, !srcloc !78
  %102 = bitcast i8* %add.ptr527 to i32*
  store i32 %101, i32* %102, align 4, !tbaa !4
  %arrayidx537 = getelementptr inbounds [8 x i32], [8 x i32]* %60, i64 0, i64 %indvars.iv1019
  %103 = load i32, i32* %arrayidx537, align 4, !tbaa !4
  %104 = call i32 asm "bswapl $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %103) #11, !srcloc !79
  %add.ptr539 = getelementptr inbounds i8, i8* %add.ptr527, i64 4
  %105 = bitcast i8* %add.ptr539 to i32*
  store i32 %104, i32* %105, align 4, !tbaa !4
  %arrayidx543 = getelementptr inbounds [8 x i32], [8 x i32]* %61, i64 0, i64 %indvars.iv1019
  %106 = load i32, i32* %arrayidx543, align 4, !tbaa !4
  %107 = call i32 asm "bswapl $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %106) #11, !srcloc !80
  %add.ptr545 = getelementptr inbounds i8, i8* %add.ptr527, i64 8
  %108 = bitcast i8* %add.ptr545 to i32*
  store i32 %107, i32* %108, align 4, !tbaa !4
  %arrayidx549 = getelementptr inbounds [8 x i32], [8 x i32]* %62, i64 0, i64 %indvars.iv1019
  %109 = load i32, i32* %arrayidx549, align 4, !tbaa !4
  %110 = call i32 asm "bswapl $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %109) #11, !srcloc !81
  %add.ptr551 = getelementptr inbounds i8, i8* %add.ptr527, i64 12
  %111 = bitcast i8* %add.ptr551 to i32*
  store i32 %110, i32* %111, align 4, !tbaa !4
  %arrayidx555 = getelementptr inbounds [8 x i32], [8 x i32]* %63, i64 0, i64 %indvars.iv1019
  %112 = load i32, i32* %arrayidx555, align 4, !tbaa !4
  %113 = call i32 asm "bswapl $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %112) #11, !srcloc !82
  %add.ptr557 = getelementptr inbounds i8, i8* %add.ptr527, i64 16
  %114 = bitcast i8* %add.ptr557 to i32*
  store i32 %113, i32* %114, align 4, !tbaa !4
  %arrayidx561 = getelementptr inbounds [8 x i32], [8 x i32]* %64, i64 0, i64 %indvars.iv1019
  %115 = load i32, i32* %arrayidx561, align 4, !tbaa !4
  %116 = call i32 asm "bswapl $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %115) #11, !srcloc !83
  %add.ptr563 = getelementptr inbounds i8, i8* %add.ptr527, i64 20
  %117 = bitcast i8* %add.ptr563 to i32*
  store i32 %116, i32* %117, align 4, !tbaa !4
  %arrayidx567 = getelementptr inbounds [8 x i32], [8 x i32]* %65, i64 0, i64 %indvars.iv1019
  %118 = load i32, i32* %arrayidx567, align 4, !tbaa !4
  %119 = call i32 asm "bswapl $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %118) #11, !srcloc !84
  %add.ptr569 = getelementptr inbounds i8, i8* %add.ptr527, i64 24
  %120 = bitcast i8* %add.ptr569 to i32*
  store i32 %119, i32* %120, align 4, !tbaa !4
  %arrayidx573 = getelementptr inbounds [8 x i32], [8 x i32]* %66, i64 0, i64 %indvars.iv1019
  %121 = load i32, i32* %arrayidx573, align 4, !tbaa !4
  %122 = call i32 asm "bswapl $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %121) #11, !srcloc !85
  %add.ptr575 = getelementptr inbounds i8, i8* %add.ptr527, i64 28
  %123 = bitcast i8* %add.ptr575 to i32*
  store i32 %122, i32* %123, align 4, !tbaa !4
  %add.ptr576 = getelementptr inbounds i8, i8* %add.ptr527, i64 32
  %rem578 = and i32 %cond509, 15
  %124 = trunc i32 %rem578 to i8
  %conv584 = xor i8 %124, 15
  %125 = sub nuw nsw i32 16, %rem578
  %narrow = sub nuw nsw i32 16, %rem578
  %126 = zext i32 %narrow to i64
  %min.iters.check.not = icmp eq i32 %rem578, 0
  br i1 %min.iters.check.not, label %vector.ph, label %for.body583.preheader

vector.ph:                                        ; preds = %for.body501
  %n.vec = and i64 %126, 16
  %ind.end = getelementptr i8, i8* %add.ptr576, i64 %n.vec
  %broadcast.splatinsert = insertelement <16 x i8> poison, i8 %conv584, i64 0
  %broadcast.splat = shufflevector <16 x i8> %broadcast.splatinsert, <16 x i8> poison, <16 x i32> zeroinitializer
  %ind.end1028 = trunc i64 %n.vec to i32
  %127 = bitcast i8* %add.ptr576 to <16 x i8>*
  store <16 x i8> %broadcast.splat, <16 x i8>* %127, align 1, !tbaa !9
  %cmp.n = icmp eq i64 %n.vec, %126
  br i1 %cmp.n, label %for.end587, label %for.body583.preheader

for.body583.preheader:                            ; preds = %for.body501, %vector.ph
  %out.addr.1981.ph = phi i8* [ %add.ptr576, %for.body501 ], [ %ind.end, %vector.ph ]
  %j.0980.ph = phi i32 [ 0, %for.body501 ], [ %ind.end1028, %vector.ph ]
  br label %for.body583

for.body583:                                      ; preds = %for.body583.preheader, %for.body583
  %out.addr.1981 = phi i8* [ %incdec.ptr, %for.body583 ], [ %out.addr.1981.ph, %for.body583.preheader ]
  %j.0980 = phi i32 [ %inc586, %for.body583 ], [ %j.0980.ph, %for.body583.preheader ]
  %incdec.ptr = getelementptr inbounds i8, i8* %out.addr.1981, i64 1
  store i8 %conv584, i8* %out.addr.1981, align 1, !tbaa !9
  %inc586 = add nuw nsw i32 %j.0980, 1
  %exitcond1018 = icmp eq i32 %inc586, %125
  br i1 %exitcond1018, label %for.end587, label %for.body583, !llvm.loop !86

for.end587:                                       ; preds = %for.body583, %vector.ph
  %incdec.ptr.lcssa = phi i8* [ %ind.end, %vector.ph ], [ %incdec.ptr, %for.body583 ]
  %128 = add i32 %cond509, 48
  %add589 = and i32 %128, -16
  %sub590 = sub i32 %add589, %processed.1
  %div591 = lshr i32 %sub590, 4
  %blocks594 = getelementptr inbounds [8 x %struct.CIPH_DESC], [8 x %struct.CIPH_DESC]* %ciph_d, i64 0, i64 %indvars.iv1019, i32 2
  store i32 %div591, i32* %blocks594, align 8, !tbaa !62
  %add595 = add i32 %add589, 16
  %129 = load i8, i8* %arrayidx599, align 4, !tbaa !9
  store i8 %129, i8* %out.addr.0985, align 1, !tbaa !9
  %130 = load i8, i8* %arrayidx604, align 1, !tbaa !9
  %arrayidx605 = getelementptr inbounds i8, i8* %out.addr.0985, i64 1
  store i8 %130, i8* %arrayidx605, align 1, !tbaa !9
  %131 = load i8, i8* %arrayidx609, align 2, !tbaa !9
  %arrayidx610 = getelementptr inbounds i8, i8* %out.addr.0985, i64 2
  store i8 %131, i8* %arrayidx610, align 1, !tbaa !9
  %shr611 = lshr i32 %add595, 8
  %conv612 = trunc i32 %shr611 to i8
  %arrayidx613 = getelementptr inbounds i8, i8* %out.addr.0985, i64 3
  store i8 %conv612, i8* %arrayidx613, align 1, !tbaa !9
  %conv614 = trunc i32 %add595 to i8
  %arrayidx615 = getelementptr inbounds i8, i8* %out.addr.0985, i64 4
  store i8 %conv614, i8* %arrayidx615, align 1, !tbaa !9
  %add616 = add i32 %add589, 21
  %conv617 = zext i32 %add616 to i64
  %add618 = add i64 %ret.0983, %conv617
  %indvars.iv.next1020 = add nuw nsw i64 %indvars.iv1019, 1
  %exitcond1024.not = icmp eq i64 %indvars.iv.next1020, %wide.trip.count1010
  br i1 %exitcond1024.not, label %for.end623, label %for.body501, !llvm.loop !87

for.end623:                                       ; preds = %for.end587, %for.end496.thread
  %ret.0.lcssa = phi i64 [ 0, %for.end496.thread ], [ %add618, %for.end587 ]
  %132 = bitcast %struct.EVP_AES_HMAC_SHA256* %key to i8*
  call void @aesni_multi_cbc_encrypt(%struct.CIPH_DESC* noundef nonnull %arrayidx24, i8* noundef %132, i32 noundef %n4x) #8
  call void @OPENSSL_cleanse(i8* noundef nonnull %4, i64 noundef 1024) #8
  call void @OPENSSL_cleanse(i8* noundef nonnull %add.ptr4, i64 noundef 256) #8
  br label %cleanup

cleanup:                                          ; preds = %entry, %for.end623
  %retval.0 = phi i64 [ %ret.0.lcssa, %for.end623 ], [ 0, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 1024, i8* nonnull %4) #10
  call void @llvm.lifetime.end.p0i8(i64 288, i8* nonnull %3) #10
  call void @llvm.lifetime.end.p0i8(i64 320, i8* nonnull %2) #10
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %1) #10
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %0) #10
  ret i64 %retval.0
}

declare i32 @RAND_bytes(i8* noundef, i32 noundef) local_unnamed_addr #1

declare void @sha256_multi_block(%struct.SHA256_MB_CTX* noundef, %struct.HASH_DESC* noundef, i32 noundef) local_unnamed_addr #1

declare void @aesni_multi_cbc_encrypt(%struct.CIPH_DESC* noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #7

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #3 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #4 = { nounwind "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree noinline nosync nounwind readnone uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nobuiltin nounwind "no-builtins" }
attributes #9 = { nobuiltin "no-builtins" }
attributes #10 = { nounwind }
attributes #11 = { nounwind readnone }

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
!8 = !{i64 0, i64 32, !9, i64 32, i64 4, !4, i64 36, i64 4, !4, i64 40, i64 64, !9, i64 104, i64 4, !4, i64 108, i64 4, !4}
!9 = !{!6, !6, i64 0}
!10 = !{!11, !14, i64 584}
!11 = !{!"", !12, i64 0, !13, i64 244, !13, i64 356, !13, i64 468, !14, i64 584, !6, i64 592}
!12 = !{!"aes_key_st", !6, i64 0, !5, i64 240}
!13 = !{!"SHA256state_st", !6, i64 0, !5, i64 32, !5, i64 36, !6, i64 40, !5, i64 104, !5, i64 108}
!14 = !{!"long", !6, i64 0}
!15 = !{!11, !5, i64 572}
!16 = !{!11, !5, i64 504}
!17 = !{!11, !5, i64 500}
!18 = distinct !{!18, !19, !20}
!19 = !{!"llvm.loop.mustprogress"}
!20 = !{!"llvm.loop.isvectorized", i32 1}
!21 = distinct !{!21, !22}
!22 = !{!"llvm.loop.unroll.disable"}
!23 = distinct !{!23, !19, !20, !24}
!24 = !{!"llvm.loop.unroll.runtime.disable"}
!25 = distinct !{!25, !19, !24, !20}
!26 = !{i32 -1, i32 1}
!27 = !{i64 2149241609}
!28 = distinct !{!28, !19}
!29 = distinct !{!29, !19, !20}
!30 = distinct !{!30, !22}
!31 = distinct !{!31, !19, !20, !24}
!32 = distinct !{!32, !19, !24, !20}
!33 = !{i64 2149241851}
!34 = !{i64 2149242016}
!35 = !{i64 2149242181}
!36 = !{i64 2149242346}
!37 = !{i64 2149242511}
!38 = !{i64 2149242676}
!39 = !{i64 2149242841}
!40 = !{i64 2149243006}
!41 = distinct !{!41, !19}
!42 = !{!43, !44, i64 8}
!43 = !{!"", !44, i64 0, !44, i64 8, !14, i64 16, !5, i64 24}
!44 = !{!"any pointer", !6, i64 0}
!45 = !{!43, !5, i64 24}
!46 = !{!43, !14, i64 16}
!47 = !{!43, !44, i64 0}
!48 = !{!13, !5, i64 104}
!49 = !{!13, !5, i64 36}
!50 = !{!13, !5, i64 32}
!51 = !{i64 1625121}
!52 = !{!53, !44, i64 0}
!53 = !{!"", !44, i64 0, !5, i64 8}
!54 = !{!55, !44, i64 0}
!55 = !{!"", !44, i64 0, !44, i64 8, !5, i64 16, !6, i64 24}
!56 = !{!55, !44, i64 8}
!57 = distinct !{!57, !19}
!58 = !{i64 2149237379}
!59 = !{i64 2149237548}
!60 = !{!53, !5, i64 8}
!61 = distinct !{!61, !19}
!62 = !{!55, !5, i64 16}
!63 = distinct !{!63, !19}
!64 = !{!44, !44, i64 0}
!65 = distinct !{!65, !19}
!66 = distinct !{!66, !19}
!67 = distinct !{!67, !19}
!68 = !{i64 2149238099}
!69 = !{i64 2149238263}
!70 = !{i64 2149238427}
!71 = !{i64 2149238591}
!72 = !{i64 2149238755}
!73 = !{i64 2149238919}
!74 = !{i64 2149239083}
!75 = !{i64 2149239247}
!76 = !{i64 2149239411}
!77 = distinct !{!77, !19}
!78 = !{i64 2149239621}
!79 = !{i64 2149239827}
!80 = !{i64 2149240033}
!81 = !{i64 2149240240}
!82 = !{i64 2149240447}
!83 = !{i64 2149240654}
!84 = !{i64 2149240861}
!85 = !{i64 2149241068}
!86 = distinct !{!86, !19, !24, !20}
!87 = distinct !{!87, !19}
