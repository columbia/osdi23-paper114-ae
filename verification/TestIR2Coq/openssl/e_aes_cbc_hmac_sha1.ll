; ModuleID = 'crypto/evp/e_aes_cbc_hmac_sha1.c'
source_filename = "crypto/evp/e_aes_cbc_hmac_sha1.c"
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
%struct.SHAstate_st = type { i32, i32, i32, i32, i32, i32, i32, [16 x i32], i32 }
%union.anon.1 = type { [5 x i32], [32 x i8] }
%struct.EVP_AES_HMAC_SHA1 = type { %struct.aes_key_st, %struct.SHAstate_st, %struct.SHAstate_st, %struct.SHAstate_st, i64, %union.anon.0 }
%union.anon.0 = type { i32, [12 x i8] }
%struct.HASH_DESC = type { i8*, i32 }
%struct.CIPH_DESC = type { i8*, i8*, i32, [2 x i64] }
%union.anon.3 = type { [16 x i64] }
%struct.SHA1_MB_CTX = type { [8 x i32], [8 x i32], [8 x i32], [8 x i32], [8 x i32] }

@OPENSSL_ia32cap_P = external local_unnamed_addr global [0 x i32], align 4
@aesni_128_cbc_hmac_sha1_cipher = internal global %struct.evp_cipher_st { i32 916, i32 16, i32 16, i32 16, i64 6291458, i32 1, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i32)* @aesni_cbc_hmac_sha1_init_key, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i64)* @aesni_cbc_hmac_sha1_cipher, i32 (%struct.evp_cipher_ctx_st*)* null, i32 560, i32 (%struct.evp_cipher_ctx_st*, %struct.asn1_type_st*)* @EVP_CIPHER_set_asn1_iv, i32 (%struct.evp_cipher_ctx_st*, %struct.asn1_type_st*)* @EVP_CIPHER_get_asn1_iv, i32 (%struct.evp_cipher_ctx_st*, i32, i32, i8*)* @aesni_cbc_hmac_sha1_ctrl, i8* null, i32 0, i8* null, i8* null, %struct.ossl_provider_st* null, i32 0, i8* null, i8* (i8*)* null, i32 (i8*, i8*, i64, i8*, i64, %struct.ossl_param_st*)* null, i32 (i8*, i8*, i64, i8*, i64, %struct.ossl_param_st*)* null, i32 (i8*, i8*, i64*, i64, i8*, i64)* null, i32 (i8*, i8*, i64*, i64)* null, i32 (i8*, i8*, i64*, i64, i8*, i64)* null, void (i8*)* null, i8* (i8*)* null, i32 (%struct.ossl_param_st*)* null, i32 (i8*, %struct.ossl_param_st*)* null, i32 (i8*, %struct.ossl_param_st*)* null, %struct.ossl_param_st* (i8*)* null, %struct.ossl_param_st* (i8*, i8*)* null, %struct.ossl_param_st* (i8*, i8*)* null }, align 8
@aesni_256_cbc_hmac_sha1_cipher = internal global %struct.evp_cipher_st { i32 918, i32 16, i32 32, i32 16, i64 6291458, i32 1, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i32)* @aesni_cbc_hmac_sha1_init_key, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i64)* @aesni_cbc_hmac_sha1_cipher, i32 (%struct.evp_cipher_ctx_st*)* null, i32 560, i32 (%struct.evp_cipher_ctx_st*, %struct.asn1_type_st*)* @EVP_CIPHER_set_asn1_iv, i32 (%struct.evp_cipher_ctx_st*, %struct.asn1_type_st*)* @EVP_CIPHER_get_asn1_iv, i32 (%struct.evp_cipher_ctx_st*, i32, i32, i8*)* @aesni_cbc_hmac_sha1_ctrl, i8* null, i32 0, i8* null, i8* null, %struct.ossl_provider_st* null, i32 0, i8* null, i8* (i8*)* null, i32 (i8*, i8*, i64, i8*, i64, %struct.ossl_param_st*)* null, i32 (i8*, i8*, i64, i8*, i64, %struct.ossl_param_st*)* null, i32 (i8*, i8*, i64*, i64, i8*, i64)* null, i32 (i8*, i8*, i64*, i64)* null, i32 (i8*, i8*, i64*, i64, i8*, i64)* null, void (i8*)* null, i8* (i8*)* null, i32 (%struct.ossl_param_st*)* null, i32 (i8*, %struct.ossl_param_st*)* null, i32 (i8*, %struct.ossl_param_st*)* null, %struct.ossl_param_st* (i8*)* null, %struct.ossl_param_st* (i8*, i8*)* null, %struct.ossl_param_st* (i8*, i8*)* null }, align 8

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define %struct.evp_cipher_st* @EVP_aes_128_cbc_hmac_sha1() local_unnamed_addr #0 {
entry:
  %0 = load i32, i32* getelementptr inbounds ([0 x i32], [0 x i32]* @OPENSSL_ia32cap_P, i64 0, i64 1), align 4, !tbaa !4
  %and = and i32 %0, 33554432
  %tobool.not = icmp eq i32 %and, 0
  %cond = select i1 %tobool.not, %struct.evp_cipher_st* null, %struct.evp_cipher_st* @aesni_128_cbc_hmac_sha1_cipher
  ret %struct.evp_cipher_st* %cond
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define %struct.evp_cipher_st* @EVP_aes_256_cbc_hmac_sha1() local_unnamed_addr #0 {
entry:
  %0 = load i32, i32* getelementptr inbounds ([0 x i32], [0 x i32]* @OPENSSL_ia32cap_P, i64 0, i64 1), align 4, !tbaa !4
  %and = and i32 %0, 33554432
  %tobool.not = icmp eq i32 %and, 0
  %cond = select i1 %tobool.not, %struct.evp_cipher_st* null, %struct.evp_cipher_st* @aesni_256_cbc_hmac_sha1_cipher
  ret %struct.evp_cipher_st* %cond
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @aesni_cbc_hmac_sha1_init_key(%struct.evp_cipher_ctx_st* noundef %ctx, i8* noundef %inkey, i8* nocapture noundef readnone %iv, i32 noundef %enc) #1 {
entry:
  %call = tail call i8* @EVP_CIPHER_CTX_get_cipher_data(%struct.evp_cipher_ctx_st* noundef %ctx) #9
  %tobool.not = icmp eq i32 %enc, 0
  %call3 = tail call i32 @EVP_CIPHER_CTX_get_key_length(%struct.evp_cipher_ctx_st* noundef %ctx) #9
  %mul4 = shl nsw i32 %call3, 3
  %ks5 = bitcast i8* %call to %struct.aes_key_st*
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %call2 = tail call i32 @aesni_set_encrypt_key(i8* noundef %inkey, i32 noundef %mul4, %struct.aes_key_st* noundef %ks5) #9
  br label %if.end

if.else:                                          ; preds = %entry
  %call6 = tail call i32 @aesni_set_decrypt_key(i8* noundef %inkey, i32 noundef %mul4, %struct.aes_key_st* noundef %ks5) #9
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %ret.0 = phi i32 [ %call2, %if.then ], [ %call6, %if.else ]
  %head = getelementptr inbounds i8, i8* %call, i64 244
  %0 = bitcast i8* %head to %struct.SHAstate_st*
  %call7 = tail call i32 @SHA1_Init(%struct.SHAstate_st* noundef nonnull %0) #9
  %tail = getelementptr inbounds i8, i8* %call, i64 340
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 4 dereferenceable(96) %tail, i8* noundef nonnull align 4 dereferenceable(96) %head, i64 96, i1 false), !tbaa.struct !8
  %md = getelementptr inbounds i8, i8* %call, i64 436
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 4 dereferenceable(96) %md, i8* noundef nonnull align 4 dereferenceable(96) %head, i64 96, i1 false), !tbaa.struct !8
  %payload_length = getelementptr inbounds i8, i8* %call, i64 536
  %1 = bitcast i8* %payload_length to i64*
  store i64 -1, i64* %1, align 8, !tbaa !10
  %2 = xor i32 %ret.0, -1
  %ret.0.lobit.not = lshr i32 %2, 31
  ret i32 %ret.0.lobit.not
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @aesni_cbc_hmac_sha1_cipher(%struct.evp_cipher_ctx_st* noundef %ctx, i8* noundef %out, i8* noundef %in, i64 noundef %len) #1 {
entry:
  %mac = alloca %union.anon.1, align 4
  %call = tail call i8* @EVP_CIPHER_CTX_get_cipher_data(%struct.evp_cipher_ctx_st* noundef %ctx) #9
  %payload_length = getelementptr inbounds i8, i8* %call, i64 536
  %0 = bitcast i8* %payload_length to i64*
  %1 = load i64, i64* %0, align 8, !tbaa !10
  %md = getelementptr inbounds i8, i8* %call, i64 436
  %2 = bitcast i8* %md to %struct.SHAstate_st*
  %num = getelementptr inbounds i8, i8* %call, i64 528
  %3 = bitcast i8* %num to i32*
  %4 = load i32, i32* %3, align 4, !tbaa !15
  %sub = sub i32 64, %4
  %conv = zext i32 %sub to i64
  store i64 -1, i64* %0, align 8, !tbaa !10
  %rem = and i64 %len, 15
  %tobool.not = icmp eq i64 %rem, 0
  br i1 %tobool.not, label %if.end, label %cleanup528

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @EVP_CIPHER_CTX_is_encrypting(%struct.evp_cipher_ctx_st* noundef %ctx) #9
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.else97, label %if.then4

if.then4:                                         ; preds = %if.end
  %cmp = icmp eq i64 %1, -1
  br i1 %cmp, label %if.end17, label %if.else

if.else:                                          ; preds = %if.then4
  %add7 = add i64 %1, 36
  %and = and i64 %add7, -16
  %cmp8.not = icmp eq i64 %and, %len
  br i1 %cmp8.not, label %if.else11, label %cleanup528

if.else11:                                        ; preds = %if.else
  %aux = getelementptr inbounds i8, i8* %call, i64 544
  %tls_ver = bitcast i8* %aux to i32*
  %5 = load i32, i32* %tls_ver, align 8, !tbaa !9
  %cmp12 = icmp ugt i32 %5, 769
  %spec.select = select i1 %cmp12, i64 16, i64 0
  br label %if.end17

if.end17:                                         ; preds = %if.else11, %if.then4
  %iv.0 = phi i64 [ 0, %if.then4 ], [ %spec.select, %if.else11 ]
  %plen.0 = phi i64 [ %len, %if.then4 ], [ %1, %if.else11 ]
  %add18 = add nuw nsw i64 %iv.0, %conv
  %cmp19 = icmp ugt i64 %plen.0, %add18
  br i1 %cmp19, label %land.lhs.true, label %if.end50

land.lhs.true:                                    ; preds = %if.end17
  %sub22 = sub i64 %plen.0, %add18
  %tobool23.not = icmp ult i64 %sub22, 64
  br i1 %tobool23.not, label %if.end50, label %if.then24

if.then24:                                        ; preds = %land.lhs.true
  %div = lshr i64 %sub22, 6
  %add.ptr = getelementptr inbounds i8, i8* %in, i64 %iv.0
  tail call fastcc void @sha1_update(%struct.SHAstate_st* noundef nonnull %2, i8* noundef %add.ptr, i64 noundef %conv) #10
  %ks = bitcast i8* %call to %struct.aes_key_st*
  %arraydecay = getelementptr inbounds %struct.evp_cipher_ctx_st, %struct.evp_cipher_ctx_st* %ctx, i64 0, i32 5, i64 0
  %add.ptr29 = getelementptr inbounds i8, i8* %add.ptr, i64 %conv
  tail call void @aesni_cbc_sha1_enc(i8* noundef %in, i8* noundef %out, i64 noundef %div, %struct.aes_key_st* noundef %ks, i8* noundef nonnull %arraydecay, %struct.SHAstate_st* noundef nonnull %2, i8* noundef %add.ptr29) #9
  %mul = and i64 %sub22, -64
  %add31 = add i64 %mul, %conv
  %shr = lshr i64 %sub22, 29
  %Nh = getelementptr inbounds i8, i8* %call, i64 460
  %6 = bitcast i8* %Nh to i32*
  %7 = load i32, i32* %6, align 4, !tbaa !16
  %8 = trunc i64 %shr to i32
  %conv35 = add i32 %7, %8
  store i32 %conv35, i32* %6, align 4, !tbaa !16
  %Nl = getelementptr inbounds i8, i8* %call, i64 456
  %9 = bitcast i8* %Nl to i32*
  %10 = load i32, i32* %9, align 4, !tbaa !17
  %mul.tr = trunc i64 %mul to i32
  %11 = shl i32 %mul.tr, 3
  %conv39 = add i32 %10, %11
  store i32 %conv39, i32* %9, align 4, !tbaa !17
  %cmp43 = icmp ult i32 %conv39, %11
  br i1 %cmp43, label %if.then45, label %if.end50

if.then45:                                        ; preds = %if.then24
  %inc = add i32 %conv35, 1
  store i32 %inc, i32* %6, align 4, !tbaa !16
  br label %if.end50

if.end50:                                         ; preds = %if.end17, %land.lhs.true, %if.then24, %if.then45
  %aes_off.0 = phi i64 [ %mul, %if.then45 ], [ %mul, %if.then24 ], [ 0, %land.lhs.true ], [ 0, %if.end17 ]
  %sha_off.0 = phi i64 [ %add31, %if.then45 ], [ %add31, %if.then24 ], [ 0, %land.lhs.true ], [ 0, %if.end17 ]
  %add51 = add i64 %sha_off.0, %iv.0
  %add.ptr53 = getelementptr inbounds i8, i8* %in, i64 %add51
  %sub54 = sub i64 %plen.0, %add51
  tail call fastcc void @sha1_update(%struct.SHAstate_st* noundef nonnull %2, i8* noundef %add.ptr53, i64 noundef %sub54) #10
  %cmp55.not = icmp eq i64 %plen.0, %len
  br i1 %cmp55.not, label %if.else89, label %if.then57

if.then57:                                        ; preds = %if.end50
  %cmp58.not = icmp eq i8* %in, %out
  br i1 %cmp58.not, label %if.end65, label %if.then60

if.then60:                                        ; preds = %if.then57
  %add.ptr61 = getelementptr inbounds i8, i8* %out, i64 %aes_off.0
  %add.ptr62 = getelementptr inbounds i8, i8* %in, i64 %aes_off.0
  %sub63 = sub i64 %plen.0, %aes_off.0
  %call64 = tail call i8* @memcpy(i8* noundef %add.ptr61, i8* noundef %add.ptr62, i64 noundef %sub63) #9
  br label %if.end65

if.end65:                                         ; preds = %if.then60, %if.then57
  %add.ptr66 = getelementptr inbounds i8, i8* %out, i64 %plen.0
  %call68 = tail call i32 @SHA1_Final(i8* noundef %add.ptr66, %struct.SHAstate_st* noundef nonnull %2) #9
  %tail = getelementptr inbounds i8, i8* %call, i64 340
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 4 dereferenceable(96) %md, i8* noundef nonnull align 4 dereferenceable(96) %tail, i64 96, i1 false), !tbaa.struct !8
  tail call fastcc void @sha1_update(%struct.SHAstate_st* noundef nonnull %2, i8* noundef %add.ptr66, i64 noundef 20) #10
  %call74 = tail call i32 @SHA1_Final(i8* noundef %add.ptr66, %struct.SHAstate_st* noundef nonnull %2) #9
  %add75 = add i64 %plen.0, 20
  %cmp79868 = icmp ult i64 %add75, %len
  br i1 %cmp79868, label %iter.check, label %for.end

iter.check:                                       ; preds = %if.end65
  %12 = add i64 %len, 235
  %sub77 = sub i64 %12, %plen.0
  %conv81 = trunc i64 %sub77 to i8
  %13 = add i64 %len, -20
  %14 = sub i64 %13, %plen.0
  %min.iters.check = icmp ult i64 %14, 8
  br i1 %min.iters.check, label %for.body.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check889 = icmp ult i64 %14, 32
  br i1 %min.iters.check889, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.vec = and i64 %14, -32
  %broadcast.splatinsert = insertelement <16 x i8> poison, i8 %conv81, i64 0
  %broadcast.splat = shufflevector <16 x i8> %broadcast.splatinsert, <16 x i8> poison, <16 x i32> zeroinitializer
  %broadcast.splatinsert890 = insertelement <16 x i8> poison, i8 %conv81, i64 0
  %broadcast.splat891 = shufflevector <16 x i8> %broadcast.splatinsert890, <16 x i8> poison, <16 x i32> zeroinitializer
  %15 = add i64 %n.vec, -32
  %16 = lshr exact i64 %15, 5
  %17 = add nuw nsw i64 %16, 1
  %xtraiter = and i64 %17, 3
  %18 = icmp ult i64 %15, 96
  br i1 %18, label %middle.block.unr-lcssa, label %vector.ph.new

vector.ph.new:                                    ; preds = %vector.ph
  %unroll_iter = and i64 %17, 1152921504606846972
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph.new
  %index = phi i64 [ 0, %vector.ph.new ], [ %index.next.3, %vector.body ]
  %niter = phi i64 [ 0, %vector.ph.new ], [ %niter.next.3, %vector.body ]
  %offset.idx = add i64 %add75, %index
  %19 = getelementptr inbounds i8, i8* %out, i64 %offset.idx
  %20 = bitcast i8* %19 to <16 x i8>*
  store <16 x i8> %broadcast.splat, <16 x i8>* %20, align 1, !tbaa !9
  %21 = getelementptr inbounds i8, i8* %19, i64 16
  %22 = bitcast i8* %21 to <16 x i8>*
  store <16 x i8> %broadcast.splat891, <16 x i8>* %22, align 1, !tbaa !9
  %index.next = or i64 %index, 32
  %offset.idx.1 = add i64 %add75, %index.next
  %23 = getelementptr inbounds i8, i8* %out, i64 %offset.idx.1
  %24 = bitcast i8* %23 to <16 x i8>*
  store <16 x i8> %broadcast.splat, <16 x i8>* %24, align 1, !tbaa !9
  %25 = getelementptr inbounds i8, i8* %23, i64 16
  %26 = bitcast i8* %25 to <16 x i8>*
  store <16 x i8> %broadcast.splat891, <16 x i8>* %26, align 1, !tbaa !9
  %index.next.1 = or i64 %index, 64
  %offset.idx.2 = add i64 %add75, %index.next.1
  %27 = getelementptr inbounds i8, i8* %out, i64 %offset.idx.2
  %28 = bitcast i8* %27 to <16 x i8>*
  store <16 x i8> %broadcast.splat, <16 x i8>* %28, align 1, !tbaa !9
  %29 = getelementptr inbounds i8, i8* %27, i64 16
  %30 = bitcast i8* %29 to <16 x i8>*
  store <16 x i8> %broadcast.splat891, <16 x i8>* %30, align 1, !tbaa !9
  %index.next.2 = or i64 %index, 96
  %offset.idx.3 = add i64 %add75, %index.next.2
  %31 = getelementptr inbounds i8, i8* %out, i64 %offset.idx.3
  %32 = bitcast i8* %31 to <16 x i8>*
  store <16 x i8> %broadcast.splat, <16 x i8>* %32, align 1, !tbaa !9
  %33 = getelementptr inbounds i8, i8* %31, i64 16
  %34 = bitcast i8* %33 to <16 x i8>*
  store <16 x i8> %broadcast.splat891, <16 x i8>* %34, align 1, !tbaa !9
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
  %offset.idx.epil = add i64 %add75, %index.epil
  %35 = getelementptr inbounds i8, i8* %out, i64 %offset.idx.epil
  %36 = bitcast i8* %35 to <16 x i8>*
  store <16 x i8> %broadcast.splat, <16 x i8>* %36, align 1, !tbaa !9
  %37 = getelementptr inbounds i8, i8* %35, i64 16
  %38 = bitcast i8* %37 to <16 x i8>*
  store <16 x i8> %broadcast.splat891, <16 x i8>* %38, align 1, !tbaa !9
  %index.next.epil = add nuw i64 %index.epil, 32
  %epil.iter.next = add i64 %epil.iter, 1
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %middle.block, label %vector.body.epil, !llvm.loop !21

middle.block:                                     ; preds = %vector.body.epil, %middle.block.unr-lcssa
  %cmp.n = icmp eq i64 %14, %n.vec
  br i1 %cmp.n, label %for.end, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %ind.end894 = add i64 %add75, %n.vec
  %n.vec.remaining = and i64 %14, 24
  %min.epilog.iters.check = icmp eq i64 %n.vec.remaining, 0
  br i1 %min.epilog.iters.check, label %for.body.preheader, label %vec.epilog.ph

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %39 = add i64 %len, -20
  %40 = sub i64 %39, %plen.0
  %n.vec893 = and i64 %40, -8
  %ind.end = add i64 %add75, %n.vec893
  %broadcast.splatinsert898 = insertelement <8 x i8> poison, i8 %conv81, i64 0
  %broadcast.splat899 = shufflevector <8 x i8> %broadcast.splatinsert898, <8 x i8> poison, <8 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index896 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next900, %vec.epilog.vector.body ]
  %offset.idx897 = add i64 %add75, %index896
  %41 = getelementptr inbounds i8, i8* %out, i64 %offset.idx897
  %42 = bitcast i8* %41 to <8 x i8>*
  store <8 x i8> %broadcast.splat899, <8 x i8>* %42, align 1, !tbaa !9
  %index.next900 = add nuw i64 %index896, 8
  %43 = icmp eq i64 %index.next900, %n.vec893
  br i1 %43, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !23

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n895 = icmp eq i64 %40, %n.vec893
  br i1 %cmp.n895, label %for.end, label %for.body.preheader

for.body.preheader:                               ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %plen.1869.ph = phi i64 [ %add75, %iter.check ], [ %ind.end894, %vec.epilog.iter.check ], [ %ind.end, %vec.epilog.middle.block ]
  br label %for.body

for.body:                                         ; preds = %for.body.preheader, %for.body
  %plen.1869 = phi i64 [ %inc82, %for.body ], [ %plen.1869.ph, %for.body.preheader ]
  %arrayidx = getelementptr inbounds i8, i8* %out, i64 %plen.1869
  store i8 %conv81, i8* %arrayidx, align 1, !tbaa !9
  %inc82 = add nuw i64 %plen.1869, 1
  %exitcond.not = icmp eq i64 %inc82, %len
  br i1 %exitcond.not, label %for.end, label %for.body, !llvm.loop !25

for.end:                                          ; preds = %for.body, %middle.block, %vec.epilog.middle.block, %if.end65
  %add.ptr83 = getelementptr inbounds i8, i8* %out, i64 %aes_off.0
  %sub85 = sub i64 %len, %aes_off.0
  %ks86 = bitcast i8* %call to %struct.aes_key_st*
  %arraydecay88 = getelementptr inbounds %struct.evp_cipher_ctx_st, %struct.evp_cipher_ctx_st* %ctx, i64 0, i32 5, i64 0
  tail call void @aesni_cbc_encrypt(i8* noundef %add.ptr83, i8* noundef %add.ptr83, i64 noundef %sub85, %struct.aes_key_st* noundef %ks86, i8* noundef nonnull %arraydecay88, i32 noundef 1) #9
  br label %cleanup528

if.else89:                                        ; preds = %if.end50
  %add.ptr90 = getelementptr inbounds i8, i8* %in, i64 %aes_off.0
  %add.ptr91 = getelementptr inbounds i8, i8* %out, i64 %aes_off.0
  %sub92 = sub i64 %len, %aes_off.0
  %ks93 = bitcast i8* %call to %struct.aes_key_st*
  %arraydecay95 = getelementptr inbounds %struct.evp_cipher_ctx_st, %struct.evp_cipher_ctx_st* %ctx, i64 0, i32 5, i64 0
  tail call void @aesni_cbc_encrypt(i8* noundef %add.ptr90, i8* noundef %add.ptr91, i64 noundef %sub92, %struct.aes_key_st* noundef %ks93, i8* noundef nonnull %arraydecay95, i32 noundef 1) #9
  br label %cleanup528

if.else97:                                        ; preds = %if.end
  %44 = bitcast %union.anon.1* %mac to i8*
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %44) #11
  %45 = ptrtoint %union.anon.1* %mac to i64
  %add99 = add i64 %45, 31
  %and100 = and i64 %add99, -32
  %46 = inttoptr i64 %and100 to %union.anon.1*
  %cmp101.not = icmp eq i64 %1, -1
  br i1 %cmp101.not, label %cleanup523.thread866, label %if.then103

if.then103:                                       ; preds = %if.else97
  %data105 = getelementptr inbounds i8, i8* %call, i64 464
  %aux107 = getelementptr inbounds i8, i8* %call, i64 544
  %sub108 = add i64 %1, -4
  %arrayidx109 = getelementptr inbounds i8, i8* %aux107, i64 %sub108
  %47 = load i8, i8* %arrayidx109, align 1, !tbaa !9
  %conv110 = zext i8 %47 to i32
  %shl111 = shl nuw nsw i32 %conv110, 8
  %sub114 = add i64 %1, -3
  %arrayidx115 = getelementptr inbounds i8, i8* %aux107, i64 %sub114
  %48 = load i8, i8* %arrayidx115, align 1, !tbaa !9
  %conv116 = zext i8 %48 to i32
  %or = or i32 %shl111, %conv116
  %cmp117 = icmp ugt i32 %or, 769
  br i1 %cmp117, label %if.then119, label %if.else130

if.then119:                                       ; preds = %if.then103
  %cmp120 = icmp ult i64 %len, 37
  br i1 %cmp120, label %cleanup523.thread, label %if.end123

if.end123:                                        ; preds = %if.then119
  %arraydecay125 = getelementptr inbounds %struct.evp_cipher_ctx_st, %struct.evp_cipher_ctx_st* %ctx, i64 0, i32 5, i64 0
  %call126 = call i8* @memcpy(i8* noundef nonnull %arraydecay125, i8* noundef %in, i64 noundef 16) #9
  %add.ptr127 = getelementptr inbounds i8, i8* %in, i64 16
  %add.ptr128 = getelementptr inbounds i8, i8* %out, i64 16
  %sub129 = add i64 %len, -16
  br label %if.end135

if.else130:                                       ; preds = %if.then103
  %cmp131 = icmp ult i64 %len, 21
  br i1 %cmp131, label %cleanup523.thread, label %if.end135

if.end135:                                        ; preds = %if.else130, %if.end123
  %len.addr.0 = phi i64 [ %sub129, %if.end123 ], [ %len, %if.else130 ]
  %in.addr.0 = phi i8* [ %add.ptr127, %if.end123 ], [ %in, %if.else130 ]
  %out.addr.0 = phi i8* [ %add.ptr128, %if.end123 ], [ %out, %if.else130 ]
  %ks136 = bitcast i8* %call to %struct.aes_key_st*
  %arraydecay138 = getelementptr inbounds %struct.evp_cipher_ctx_st, %struct.evp_cipher_ctx_st* %ctx, i64 0, i32 5, i64 0
  call void @aesni_cbc_encrypt(i8* noundef %in.addr.0, i8* noundef %out.addr.0, i64 noundef %len.addr.0, %struct.aes_key_st* noundef %ks136, i8* noundef nonnull %arraydecay138, i32 noundef 0) #9
  %sub139 = add i64 %len.addr.0, -1
  %arrayidx140 = getelementptr inbounds i8, i8* %out.addr.0, i64 %sub139
  %49 = load i8, i8* %arrayidx140, align 1, !tbaa !9
  %conv141 = zext i8 %49 to i32
  %50 = trunc i64 %len.addr.0 to i32
  %conv143 = add i32 %50, 235
  %sub144 = sub i32 276, %50
  %shr145 = lshr i32 %sub144, 24
  %conv143.masked = and i32 %conv143, 255
  %and147 = or i32 %conv143.masked, %shr145
  %call148 = call fastcc i32 @constant_time_ge(i32 noundef %and147, i32 noundef %conv141) #10, !range !26
  %51 = and i32 %call148, 1
  %call154 = call fastcc i32 @constant_time_select(i32 noundef %call148, i32 noundef %conv141, i32 noundef %and147) #10
  %add156 = add i32 %call154, 21
  %conv157 = zext i32 %add156 to i64
  %sub158 = sub i64 %len.addr.0, %conv157
  %shr159 = lshr i64 %sub158, 8
  %conv160 = trunc i64 %shr159 to i8
  %sub163 = add i64 %1, -2
  %arrayidx164 = getelementptr inbounds i8, i8* %aux107, i64 %sub163
  store i8 %conv160, i8* %arrayidx164, align 1, !tbaa !9
  %conv165 = trunc i64 %sub158 to i8
  %sub168 = add i64 %1, -1
  %arrayidx169 = getelementptr inbounds i8, i8* %aux107, i64 %sub168
  store i8 %conv165, i8* %arrayidx169, align 1, !tbaa !9
  %head = getelementptr inbounds i8, i8* %call, i64 244
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 4 dereferenceable(96) %md, i8* noundef nonnull align 4 dereferenceable(96) %head, i64 96, i1 false), !tbaa.struct !8
  call fastcc void @sha1_update(%struct.SHAstate_st* noundef nonnull %2, i8* noundef nonnull %aux107, i64 noundef %1) #10
  %sub175 = add i64 %len.addr.0, -20
  %cmp176 = icmp ugt i64 %sub175, 319
  br i1 %cmp176, label %if.then178, label %if.end190

if.then178:                                       ; preds = %if.end135
  %sub179 = add i64 %len.addr.0, -340
  %and180 = and i64 %sub179, -64
  %52 = load i32, i32* %3, align 4, !tbaa !15
  %sub183 = sub i32 64, %52
  %conv184 = zext i32 %sub183 to i64
  %add185 = add i64 %and180, %conv184
  call fastcc void @sha1_update(%struct.SHAstate_st* noundef nonnull %2, i8* noundef nonnull %out.addr.0, i64 noundef %add185) #10
  %add.ptr187 = getelementptr inbounds i8, i8* %out.addr.0, i64 %add185
  %sub188 = sub i64 %sub175, %add185
  %sub189 = sub i64 %sub158, %add185
  br label %if.end190

if.end190:                                        ; preds = %if.then178, %if.end135
  %inp_len.0 = phi i64 [ %sub189, %if.then178 ], [ %sub158, %if.end135 ]
  %len.addr.1 = phi i64 [ %sub188, %if.then178 ], [ %sub175, %if.end135 ]
  %out.addr.1 = phi i8* [ %add.ptr187, %if.then178 ], [ %out.addr.0, %if.end135 ]
  %Nl192 = getelementptr inbounds i8, i8* %call, i64 456
  %53 = bitcast i8* %Nl192 to i32*
  %54 = load i32, i32* %53, align 4, !tbaa !17
  %inp_len.0.tr = trunc i64 %inp_len.0 to i32
  %55 = shl i32 %inp_len.0.tr, 3
  %conv196 = add i32 %54, %55
  %56 = call i32 asm "bswapl $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %conv196) #12, !srcloc !27
  %arrayidx197 = getelementptr inbounds %union.anon.1, %union.anon.1* %46, i64 0, i32 0, i64 0
  %arrayidx199 = getelementptr inbounds %union.anon.1, %union.anon.1* %46, i64 0, i32 0, i64 1
  %arrayidx201 = getelementptr inbounds %union.anon.1, %union.anon.1* %46, i64 0, i32 0, i64 2
  %arrayidx203 = getelementptr inbounds %union.anon.1, %union.anon.1* %46, i64 0, i32 0, i64 3
  %57 = inttoptr i64 %and100 to <4 x i32>*
  store <4 x i32> zeroinitializer, <4 x i32>* %57, align 32, !tbaa !9
  %arrayidx205 = getelementptr inbounds %union.anon.1, %union.anon.1* %46, i64 0, i32 0, i64 4
  store i32 0, i32* %arrayidx205, align 16, !tbaa !9
  %58 = load i32, i32* %3, align 4, !tbaa !15
  %cmp209870.not = icmp eq i64 %len.addr.1, 0
  br i1 %cmp209870.not, label %for.end291, label %for.body211.lr.ph

for.body211.lr.ph:                                ; preds = %if.end190
  %add232 = add i64 %inp_len.0, 7
  %arrayidx239 = getelementptr inbounds i8, i8* %call, i64 524
  %59 = bitcast i8* %arrayidx239 to i32*
  %h0 = bitcast i8* %md to i32*
  %h1 = getelementptr inbounds i8, i8* %call, i64 440
  %60 = bitcast i8* %h1 to i32*
  %h2 = getelementptr inbounds i8, i8* %call, i64 444
  %61 = bitcast i8* %h2 to i32*
  %h3 = getelementptr inbounds i8, i8* %call, i64 448
  %62 = bitcast i8* %h3 to i32*
  %h4 = getelementptr inbounds i8, i8* %call, i64 452
  %63 = bitcast i8* %h4 to i32*
  br label %for.body211

for.body211:                                      ; preds = %for.body211.lr.ph, %cleanup
  %j.0872 = phi i64 [ 0, %for.body211.lr.ph ], [ %inc290, %cleanup ]
  %res.0871 = phi i32 [ %58, %for.body211.lr.ph ], [ %res.1, %cleanup ]
  %arrayidx213 = getelementptr inbounds i8, i8* %out.addr.1, i64 %j.0872
  %64 = load i8, i8* %arrayidx213, align 1, !tbaa !9
  %conv214 = zext i8 %64 to i64
  %sub215 = sub i64 %j.0872, %inp_len.0
  %shr216 = lshr i64 %sub215, 56
  %and217 = and i64 %shr216, %conv214
  %neg = and i64 %shr216, 128
  %and218 = xor i64 %neg, 128
  %sub219 = sub i64 %inp_len.0, %j.0872
  %shr220 = lshr i64 %sub219, 56
  %neg221 = xor i64 %shr220, -1
  %and222 = and i64 %and218, %neg221
  %or223 = or i64 %and217, %and222
  %conv224 = trunc i64 %or223 to i8
  %inc226 = add i32 %res.0871, 1
  %idxprom = zext i32 %res.0871 to i64
  %arrayidx227 = getelementptr inbounds i8, i8* %data105, i64 %idxprom
  store i8 %conv224, i8* %arrayidx227, align 1, !tbaa !9
  %cmp228.not = icmp eq i32 %inc226, 64
  br i1 %cmp228.not, label %if.end231, label %cleanup

if.end231:                                        ; preds = %for.body211
  %sub233 = sub i64 %add232, %j.0872
  %shr234.neg = ashr i64 %sub233, 63
  %65 = load i32, i32* %59, align 4, !tbaa !9
  %66 = trunc i64 %shr234.neg to i32
  %67 = and i32 %56, %66
  %conv242 = or i32 %65, %67
  store i32 %conv242, i32* %59, align 4, !tbaa !9
  call void @sha1_block_data_order(i8* noundef nonnull %md, i8* noundef nonnull %data105, i64 noundef 1) #9
  %sub245 = add i64 %sub215, -72
  %isneg864 = icmp slt i64 %sub245, 0
  %68 = load i32, i32* %h0, align 4, !tbaa !28
  %69 = load i32, i32* %arrayidx197, align 32, !tbaa !9
  %70 = select i1 %isneg864, i32 %66, i32 0
  %71 = and i32 %68, %70
  %conv256 = or i32 %71, %69
  store i32 %conv256, i32* %arrayidx197, align 32, !tbaa !9
  %72 = load i32, i32* %60, align 4, !tbaa !29
  %73 = load i32, i32* %arrayidx199, align 4, !tbaa !9
  %74 = and i32 %72, %70
  %conv264 = or i32 %74, %73
  store i32 %conv264, i32* %arrayidx199, align 4, !tbaa !9
  %75 = load i32, i32* %61, align 4, !tbaa !30
  %76 = load i32, i32* %arrayidx201, align 8, !tbaa !9
  %77 = and i32 %75, %70
  %conv272 = or i32 %77, %76
  store i32 %conv272, i32* %arrayidx201, align 8, !tbaa !9
  %78 = load i32, i32* %62, align 4, !tbaa !31
  %79 = load i32, i32* %arrayidx203, align 4, !tbaa !9
  %80 = and i32 %78, %70
  %conv280 = or i32 %80, %79
  store i32 %conv280, i32* %arrayidx203, align 4, !tbaa !9
  %81 = load i32, i32* %63, align 4, !tbaa !32
  %82 = load i32, i32* %arrayidx205, align 16, !tbaa !9
  %83 = and i32 %81, %70
  %conv288 = or i32 %83, %82
  store i32 %conv288, i32* %arrayidx205, align 16, !tbaa !9
  br label %cleanup

cleanup:                                          ; preds = %for.body211, %if.end231
  %res.1 = phi i32 [ 0, %if.end231 ], [ %inc226, %for.body211 ]
  %inc290 = add nuw i64 %j.0872, 1
  %exitcond882.not = icmp eq i64 %inc290, %len.addr.1
  br i1 %exitcond882.not, label %for.end291, label %for.body211, !llvm.loop !33

for.end291:                                       ; preds = %cleanup, %if.end190
  %res.0.lcssa = phi i32 [ %58, %if.end190 ], [ %res.1, %cleanup ]
  %conv292 = zext i32 %res.0.lcssa to i64
  %cmp294875 = icmp ult i32 %res.0.lcssa, 64
  br i1 %cmp294875, label %iter.check905, label %if.then305

iter.check905:                                    ; preds = %for.end291
  %84 = add i64 %len.addr.1, 64
  %85 = sub nsw i64 64, %conv292
  %min.iters.check903 = icmp ult i64 %85, 8
  br i1 %min.iters.check903, label %for.body296.preheader, label %vector.main.loop.iter.check907

vector.main.loop.iter.check907:                   ; preds = %iter.check905
  %min.iters.check906 = icmp ult i64 %85, 16
  br i1 %min.iters.check906, label %vec.epilog.ph919, label %vector.ph908

vector.ph908:                                     ; preds = %vector.main.loop.iter.check907
  %n.vec910 = and i64 %85, -16
  %86 = add nsw i64 %n.vec910, -16
  %87 = lshr exact i64 %86, 4
  %88 = add nuw nsw i64 %87, 1
  %xtraiter932 = and i64 %88, 7
  %89 = icmp ult i64 %86, 112
  br i1 %89, label %middle.block901.unr-lcssa, label %vector.ph908.new

vector.ph908.new:                                 ; preds = %vector.ph908
  %unroll_iter935 = and i64 %88, 2305843009213693944
  br label %vector.body902

vector.body902:                                   ; preds = %vector.body902, %vector.ph908.new
  %index912 = phi i64 [ 0, %vector.ph908.new ], [ %index.next914.7, %vector.body902 ]
  %niter936 = phi i64 [ 0, %vector.ph908.new ], [ %niter936.next.7, %vector.body902 ]
  %offset.idx913 = add i64 %index912, %conv292
  %90 = getelementptr inbounds i8, i8* %data105, i64 %offset.idx913
  %91 = bitcast i8* %90 to <16 x i8>*
  store <16 x i8> zeroinitializer, <16 x i8>* %91, align 1, !tbaa !9
  %index.next914 = or i64 %index912, 16
  %offset.idx913.1 = add i64 %index.next914, %conv292
  %92 = getelementptr inbounds i8, i8* %data105, i64 %offset.idx913.1
  %93 = bitcast i8* %92 to <16 x i8>*
  store <16 x i8> zeroinitializer, <16 x i8>* %93, align 1, !tbaa !9
  %index.next914.1 = or i64 %index912, 32
  %offset.idx913.2 = add i64 %index.next914.1, %conv292
  %94 = getelementptr inbounds i8, i8* %data105, i64 %offset.idx913.2
  %95 = bitcast i8* %94 to <16 x i8>*
  store <16 x i8> zeroinitializer, <16 x i8>* %95, align 1, !tbaa !9
  %index.next914.2 = or i64 %index912, 48
  %offset.idx913.3 = add i64 %index.next914.2, %conv292
  %96 = getelementptr inbounds i8, i8* %data105, i64 %offset.idx913.3
  %97 = bitcast i8* %96 to <16 x i8>*
  store <16 x i8> zeroinitializer, <16 x i8>* %97, align 1, !tbaa !9
  %index.next914.3 = or i64 %index912, 64
  %offset.idx913.4 = add i64 %index.next914.3, %conv292
  %98 = getelementptr inbounds i8, i8* %data105, i64 %offset.idx913.4
  %99 = bitcast i8* %98 to <16 x i8>*
  store <16 x i8> zeroinitializer, <16 x i8>* %99, align 1, !tbaa !9
  %index.next914.4 = or i64 %index912, 80
  %offset.idx913.5 = add i64 %index.next914.4, %conv292
  %100 = getelementptr inbounds i8, i8* %data105, i64 %offset.idx913.5
  %101 = bitcast i8* %100 to <16 x i8>*
  store <16 x i8> zeroinitializer, <16 x i8>* %101, align 1, !tbaa !9
  %index.next914.5 = or i64 %index912, 96
  %offset.idx913.6 = add i64 %index.next914.5, %conv292
  %102 = getelementptr inbounds i8, i8* %data105, i64 %offset.idx913.6
  %103 = bitcast i8* %102 to <16 x i8>*
  store <16 x i8> zeroinitializer, <16 x i8>* %103, align 1, !tbaa !9
  %index.next914.6 = or i64 %index912, 112
  %offset.idx913.7 = add i64 %index.next914.6, %conv292
  %104 = getelementptr inbounds i8, i8* %data105, i64 %offset.idx913.7
  %105 = bitcast i8* %104 to <16 x i8>*
  store <16 x i8> zeroinitializer, <16 x i8>* %105, align 1, !tbaa !9
  %index.next914.7 = add nuw i64 %index912, 128
  %niter936.next.7 = add i64 %niter936, 8
  %niter936.ncmp.7 = icmp eq i64 %niter936.next.7, %unroll_iter935
  br i1 %niter936.ncmp.7, label %middle.block901.unr-lcssa, label %vector.body902, !llvm.loop !34

middle.block901.unr-lcssa:                        ; preds = %vector.body902, %vector.ph908
  %index912.unr = phi i64 [ 0, %vector.ph908 ], [ %index.next914.7, %vector.body902 ]
  %lcmp.mod934.not = icmp eq i64 %xtraiter932, 0
  br i1 %lcmp.mod934.not, label %middle.block901, label %vector.body902.epil

vector.body902.epil:                              ; preds = %middle.block901.unr-lcssa, %vector.body902.epil
  %index912.epil = phi i64 [ %index.next914.epil, %vector.body902.epil ], [ %index912.unr, %middle.block901.unr-lcssa ]
  %epil.iter933 = phi i64 [ %epil.iter933.next, %vector.body902.epil ], [ 0, %middle.block901.unr-lcssa ]
  %offset.idx913.epil = add i64 %index912.epil, %conv292
  %106 = getelementptr inbounds i8, i8* %data105, i64 %offset.idx913.epil
  %107 = bitcast i8* %106 to <16 x i8>*
  store <16 x i8> zeroinitializer, <16 x i8>* %107, align 1, !tbaa !9
  %index.next914.epil = add nuw i64 %index912.epil, 16
  %epil.iter933.next = add i64 %epil.iter933, 1
  %epil.iter933.cmp.not = icmp eq i64 %epil.iter933.next, %xtraiter932
  br i1 %epil.iter933.cmp.not, label %middle.block901, label %vector.body902.epil, !llvm.loop !35

middle.block901:                                  ; preds = %vector.body902.epil, %middle.block901.unr-lcssa
  %cmp.n911 = icmp eq i64 %85, %n.vec910
  br i1 %cmp.n911, label %for.end302, label %vec.epilog.iter.check918

vec.epilog.iter.check918:                         ; preds = %middle.block901
  %ind.end927 = add nsw i64 %n.vec910, %conv292
  %n.vec.remaining920 = and i64 %85, 8
  %min.epilog.iters.check921.not.not = icmp eq i64 %n.vec.remaining920, 0
  br i1 %min.epilog.iters.check921.not.not, label %for.body296.preheader, label %vec.epilog.ph919

vec.epilog.ph919:                                 ; preds = %vector.main.loop.iter.check907, %vec.epilog.iter.check918
  %vec.epilog.resume.val922 = phi i64 [ %n.vec910, %vec.epilog.iter.check918 ], [ 0, %vector.main.loop.iter.check907 ]
  %108 = sub nsw i64 64, %conv292
  %n.vec924 = and i64 %108, -8
  %ind.end926 = add nsw i64 %n.vec924, %conv292
  br label %vec.epilog.vector.body917

vec.epilog.vector.body917:                        ; preds = %vec.epilog.vector.body917, %vec.epilog.ph919
  %index929 = phi i64 [ %vec.epilog.resume.val922, %vec.epilog.ph919 ], [ %index.next931, %vec.epilog.vector.body917 ]
  %offset.idx930 = add i64 %index929, %conv292
  %109 = getelementptr inbounds i8, i8* %data105, i64 %offset.idx930
  %110 = bitcast i8* %109 to <8 x i8>*
  store <8 x i8> zeroinitializer, <8 x i8>* %110, align 1, !tbaa !9
  %index.next931 = add nuw i64 %index929, 8
  %111 = icmp eq i64 %index.next931, %n.vec924
  br i1 %111, label %vec.epilog.middle.block915, label %vec.epilog.vector.body917, !llvm.loop !36

vec.epilog.middle.block915:                       ; preds = %vec.epilog.vector.body917
  %cmp.n928 = icmp eq i64 %108, %n.vec924
  br i1 %cmp.n928, label %for.end302, label %for.body296.preheader

for.body296.preheader:                            ; preds = %iter.check905, %vec.epilog.iter.check918, %vec.epilog.middle.block915
  %i.0876.ph = phi i64 [ %conv292, %iter.check905 ], [ %ind.end927, %vec.epilog.iter.check918 ], [ %ind.end926, %vec.epilog.middle.block915 ]
  br label %for.body296

for.body296:                                      ; preds = %for.body296.preheader, %for.body296
  %i.0876 = phi i64 [ %inc300, %for.body296 ], [ %i.0876.ph, %for.body296.preheader ]
  %arrayidx298 = getelementptr inbounds i8, i8* %data105, i64 %i.0876
  store i8 0, i8* %arrayidx298, align 1, !tbaa !9
  %inc300 = add nuw nsw i64 %i.0876, 1
  %exitcond883.not = icmp eq i64 %inc300, 64
  br i1 %exitcond883.not, label %for.end302, label %for.body296, !llvm.loop !37

for.end302:                                       ; preds = %for.body296, %vec.epilog.middle.block915, %middle.block901
  %112 = sub i64 %84, %conv292
  %cmp303 = icmp ugt i32 %res.0.lcssa, 56
  br i1 %cmp303, label %if.then305, label %for.end302.if.end370_crit_edge

for.end302.if.end370_crit_edge:                   ; preds = %for.end302
  %.pre = sub i64 -73, %inp_len.0
  br label %if.end370

if.then305:                                       ; preds = %for.end291, %for.end302
  %j.1.lcssa888 = phi i64 [ %112, %for.end302 ], [ %len.addr.1, %for.end291 ]
  %add306 = add i64 %inp_len.0, 8
  %sub307 = sub i64 %add306, %j.1.lcssa888
  %shr308.neg = ashr i64 %sub307, 63
  %arrayidx313 = getelementptr inbounds i8, i8* %call, i64 524
  %113 = bitcast i8* %arrayidx313 to i32*
  %114 = load i32, i32* %113, align 4, !tbaa !9
  %115 = trunc i64 %shr308.neg to i32
  %116 = and i32 %56, %115
  %conv316 = or i32 %114, %116
  store i32 %conv316, i32* %113, align 4, !tbaa !9
  call void @sha1_block_data_order(i8* noundef nonnull %md, i8* noundef nonnull %data105, i64 noundef 1) #9
  %sub318 = sub i64 -73, %inp_len.0
  %sub319 = add i64 %sub318, %j.1.lcssa888
  %isneg863 = icmp slt i64 %sub319, 0
  %h0324 = bitcast i8* %md to i32*
  %117 = load i32, i32* %h0324, align 4, !tbaa !28
  %118 = load i32, i32* %arrayidx197, align 32, !tbaa !9
  %119 = select i1 %isneg863, i32 %115, i32 0
  %120 = and i32 %117, %119
  %conv331 = or i32 %120, %118
  store i32 %conv331, i32* %arrayidx197, align 32, !tbaa !9
  %h1333 = getelementptr inbounds i8, i8* %call, i64 440
  %121 = bitcast i8* %h1333 to i32*
  %122 = load i32, i32* %121, align 4, !tbaa !29
  %123 = load i32, i32* %arrayidx199, align 4, !tbaa !9
  %124 = and i32 %122, %119
  %conv340 = or i32 %124, %123
  store i32 %conv340, i32* %arrayidx199, align 4, !tbaa !9
  %h2342 = getelementptr inbounds i8, i8* %call, i64 444
  %125 = bitcast i8* %h2342 to i32*
  %126 = load i32, i32* %125, align 4, !tbaa !30
  %127 = load i32, i32* %arrayidx201, align 8, !tbaa !9
  %128 = and i32 %126, %119
  %conv349 = or i32 %128, %127
  store i32 %conv349, i32* %arrayidx201, align 8, !tbaa !9
  %h3351 = getelementptr inbounds i8, i8* %call, i64 448
  %129 = bitcast i8* %h3351 to i32*
  %130 = load i32, i32* %129, align 4, !tbaa !31
  %131 = load i32, i32* %arrayidx203, align 4, !tbaa !9
  %132 = and i32 %130, %119
  %conv358 = or i32 %132, %131
  store i32 %conv358, i32* %arrayidx203, align 4, !tbaa !9
  %h4360 = getelementptr inbounds i8, i8* %call, i64 452
  %133 = bitcast i8* %h4360 to i32*
  %134 = load i32, i32* %133, align 4, !tbaa !32
  %135 = load i32, i32* %arrayidx205, align 16, !tbaa !9
  %136 = and i32 %134, %119
  %conv367 = or i32 %136, %135
  store i32 %conv367, i32* %arrayidx205, align 16, !tbaa !9
  %call368 = call i8* @memset(i8* noundef nonnull %data105, i32 noundef 0, i64 noundef 64) #9
  %add369 = add i64 %j.1.lcssa888, 64
  br label %if.end370

if.end370:                                        ; preds = %for.end302.if.end370_crit_edge, %if.then305
  %sub374.pre-phi = phi i64 [ %.pre, %for.end302.if.end370_crit_edge ], [ %sub318, %if.then305 ]
  %j.2 = phi i64 [ %112, %for.end302.if.end370_crit_edge ], [ %add369, %if.then305 ]
  %h0379.pre-phi = bitcast i8* %md to i32*
  %arrayidx372 = getelementptr inbounds i8, i8* %call, i64 524
  %137 = bitcast i8* %arrayidx372 to i32*
  store i32 %56, i32* %137, align 4, !tbaa !9
  call void @sha1_block_data_order(i8* noundef nonnull %md, i8* noundef nonnull %data105, i64 noundef 1) #9
  %sub375 = add i64 %sub374.pre-phi, %j.2
  %shr376.neg = ashr i64 %sub375, 63
  %138 = load i32, i32* %h0379.pre-phi, align 4, !tbaa !28
  %139 = load i32, i32* %arrayidx197, align 32, !tbaa !9
  %140 = trunc i64 %shr376.neg to i32
  %141 = and i32 %138, %140
  %conv386 = or i32 %141, %139
  store i32 %conv386, i32* %arrayidx197, align 32, !tbaa !9
  %h1388 = getelementptr inbounds i8, i8* %call, i64 440
  %142 = bitcast i8* %h1388 to i32*
  %143 = load i32, i32* %142, align 4, !tbaa !29
  %144 = load i32, i32* %arrayidx199, align 4, !tbaa !9
  %145 = and i32 %143, %140
  %conv395 = or i32 %145, %144
  store i32 %conv395, i32* %arrayidx199, align 4, !tbaa !9
  %h2397 = getelementptr inbounds i8, i8* %call, i64 444
  %146 = bitcast i8* %h2397 to i32*
  %147 = load i32, i32* %146, align 4, !tbaa !30
  %148 = load i32, i32* %arrayidx201, align 8, !tbaa !9
  %149 = and i32 %147, %140
  %conv404 = or i32 %149, %148
  store i32 %conv404, i32* %arrayidx201, align 8, !tbaa !9
  %h3406 = getelementptr inbounds i8, i8* %call, i64 448
  %150 = bitcast i8* %h3406 to i32*
  %151 = load i32, i32* %150, align 4, !tbaa !31
  %152 = load i32, i32* %arrayidx203, align 4, !tbaa !9
  %153 = and i32 %151, %140
  %conv413 = or i32 %153, %152
  store i32 %conv413, i32* %arrayidx203, align 4, !tbaa !9
  %h4415 = getelementptr inbounds i8, i8* %call, i64 452
  %154 = bitcast i8* %h4415 to i32*
  %155 = load i32, i32* %154, align 4, !tbaa !32
  %156 = load i32, i32* %arrayidx205, align 16, !tbaa !9
  %157 = and i32 %155, %140
  %conv422 = or i32 %157, %156
  %158 = call i32 asm "bswapl $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %conv386) #12, !srcloc !38
  store i32 %158, i32* %arrayidx197, align 32, !tbaa !9
  %159 = call i32 asm "bswapl $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %conv395) #12, !srcloc !39
  store i32 %159, i32* %arrayidx199, align 4, !tbaa !9
  %160 = call i32 asm "bswapl $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %conv404) #12, !srcloc !40
  store i32 %160, i32* %arrayidx201, align 8, !tbaa !9
  %161 = call i32 asm "bswapl $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %conv413) #12, !srcloc !41
  store i32 %161, i32* %arrayidx203, align 4, !tbaa !9
  %162 = call i32 asm "bswapl $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %conv422) #12, !srcloc !42
  store i32 %162, i32* %arrayidx205, align 16, !tbaa !9
  %add453 = add i64 %len.addr.1, 20
  %tail455 = getelementptr inbounds i8, i8* %call, i64 340
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 4 dereferenceable(96) %md, i8* noundef nonnull align 4 dereferenceable(96) %tail455, i64 96, i1 false), !tbaa.struct !8
  %c457 = inttoptr i64 %and100 to [52 x i8]*
  %arraydecay458 = getelementptr inbounds [52 x i8], [52 x i8]* %c457, i64 0, i64 0
  call fastcc void @sha1_update(%struct.SHAstate_st* noundef nonnull %2, i8* noundef %arraydecay458, i64 noundef 20) #10
  %call462 = call i32 @SHA1_Final(i8* noundef %arraydecay458, %struct.SHAstate_st* noundef nonnull %2) #9
  %add.ptr463 = getelementptr inbounds i8, i8* %out.addr.1, i64 %inp_len.0
  %add.ptr465 = getelementptr inbounds i8, i8* %out.addr.1, i64 %add453
  %add.ptr466 = getelementptr inbounds i8, i8* %add.ptr465, i64 -1
  %idx.ext = zext i32 %and147 to i64
  %idx.neg = sub nsw i64 0, %idx.ext
  %add.ptr467 = getelementptr inbounds i8, i8* %add.ptr466, i64 %idx.neg
  %add.ptr468 = getelementptr inbounds i8, i8* %add.ptr467, i64 -20
  %sub.ptr.lhs.cast = ptrtoint i8* %add.ptr463 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %add.ptr468 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %add471 = add nuw nsw i32 %and147, 20
  %conv472 = zext i32 %add471 to i64
  br label %for.body475

for.body475:                                      ; preds = %if.end370, %for.body475
  %j.3881 = phi i64 [ 0, %if.end370 ], [ %inc500, %for.body475 ]
  %i.1880 = phi i64 [ 0, %if.end370 ], [ %add498, %for.body475 ]
  %res.2879 = phi i32 [ 0, %if.end370 ], [ %or495, %for.body475 ]
  %arrayidx476 = getelementptr inbounds i8, i8* %add.ptr468, i64 %j.3881
  %163 = load i8, i8* %arrayidx476, align 1, !tbaa !9
  %conv477 = zext i8 %163 to i32
  %sub478 = sub i64 %j.3881, %sub.ptr.sub
  %164 = trunc i64 %sub478 to i32
  %conv480 = add i32 %164, -20
  %xor = xor i32 %call154, %conv477
  %isneg = icmp slt i32 %conv480, 0
  %and483 = select i1 %isneg, i32 0, i32 %xor
  %or484 = or i32 %and483, %res.2879
  %165 = xor i64 %j.3881, -1
  %sub486 = add i64 %sub.ptr.sub, %165
  %conv487 = trunc i64 %sub486 to i32
  %shr481861 = and i32 %conv480, %conv487
  %and489 = ashr i32 %shr481861, 31
  %arrayidx491 = getelementptr inbounds [52 x i8], [52 x i8]* %c457, i64 0, i64 %i.1880
  %166 = load i8, i8* %arrayidx491, align 1, !tbaa !9
  %xor493862 = xor i8 %166, %163
  %xor493 = zext i8 %xor493862 to i32
  %and494 = and i32 %and489, %xor493
  %or495 = or i32 %or484, %and494
  %and496 = and i32 %and489, 1
  %conv497 = zext i32 %and496 to i64
  %add498 = add i64 %i.1880, %conv497
  %inc500 = add nuw nsw i64 %j.3881, 1
  %exitcond884.not = icmp eq i64 %inc500, %conv472
  br i1 %exitcond884.not, label %cleanup523, label %for.body475, !llvm.loop !43

cleanup523.thread866:                             ; preds = %if.else97
  %ks518 = bitcast i8* %call to %struct.aes_key_st*
  %arraydecay520 = getelementptr inbounds %struct.evp_cipher_ctx_st, %struct.evp_cipher_ctx_st* %ctx, i64 0, i32 5, i64 0
  call void @aesni_cbc_encrypt(i8* noundef %in, i8* noundef %out, i64 noundef %len, %struct.aes_key_st* noundef %ks518, i8* noundef nonnull %arraydecay520, i32 noundef 0) #9
  call fastcc void @sha1_update(%struct.SHAstate_st* noundef nonnull %2, i8* noundef %out, i64 noundef %len) #10
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %44) #11
  br label %cleanup528

cleanup523.thread:                                ; preds = %if.then119, %if.else130
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %44) #11
  br label %cleanup528

cleanup523:                                       ; preds = %for.body475
  %notsub = add i32 %or495, -1
  %isneg.inv = icmp slt i32 %notsub, 0
  %and506 = select i1 %isneg.inv, i32 %51, i32 0
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %44) #11
  br label %cleanup528

cleanup528:                                       ; preds = %if.else89, %for.end, %cleanup523.thread866, %cleanup523, %cleanup523.thread, %if.else, %entry
  %retval.2 = phi i32 [ %and506, %cleanup523 ], [ 0, %entry ], [ 0, %if.else ], [ 0, %cleanup523.thread ], [ 1, %cleanup523.thread866 ], [ 1, %for.end ], [ 1, %if.else89 ]
  ret i32 %retval.2
}

declare i32 @EVP_CIPHER_set_asn1_iv(%struct.evp_cipher_ctx_st* noundef, %struct.asn1_type_st* noundef) #2

declare i32 @EVP_CIPHER_get_asn1_iv(%struct.evp_cipher_ctx_st* noundef, %struct.asn1_type_st* noundef) #2

; Function Attrs: noinline nounwind uwtable
define internal i32 @aesni_cbc_hmac_sha1_ctrl(%struct.evp_cipher_ctx_st* noundef %ctx, i32 noundef %type, i32 noundef %arg, i8* noundef %ptr) #1 {
entry:
  %hmac_key = alloca [64 x i8], align 16
  %call = tail call i8* @EVP_CIPHER_CTX_get_cipher_data(%struct.evp_cipher_ctx_st* noundef %ctx) #9
  switch i32 %type, label %cleanup198 [
    i32 23, label %sw.bb
    i32 22, label %sw.bb36
    i32 28, label %sw.bb91
    i32 25, label %sw.bb96
    i32 26, label %sw.bb188
  ]

sw.bb:                                            ; preds = %entry
  %0 = getelementptr inbounds [64 x i8], [64 x i8]* %hmac_key, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %0) #11
  %call1 = call i8* @memset(i8* noundef nonnull %0, i32 noundef 0, i64 noundef 64) #9
  %cmp = icmp sgt i32 %arg, 64
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %sw.bb
  %head = getelementptr inbounds i8, i8* %call, i64 244
  %1 = bitcast i8* %head to %struct.SHAstate_st*
  %call2 = call i32 @SHA1_Init(%struct.SHAstate_st* noundef nonnull %1) #9
  %conv297 = zext i32 %arg to i64
  call fastcc void @sha1_update(%struct.SHAstate_st* noundef nonnull %1, i8* noundef %ptr, i64 noundef %conv297) #10
  %call6 = call i32 @SHA1_Final(i8* noundef nonnull %0, %struct.SHAstate_st* noundef nonnull %1) #9
  br label %vector.body

if.else:                                          ; preds = %sw.bb
  %conv8 = sext i32 %arg to i64
  %call9 = call i8* @memcpy(i8* noundef nonnull %0, i8* noundef %ptr, i64 noundef %conv8) #9
  br label %vector.body

vector.body:                                      ; preds = %if.then, %if.else
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
  %head15 = getelementptr inbounds i8, i8* %call, i64 244
  %17 = bitcast i8* %head15 to %struct.SHAstate_st*
  %call16 = call i32 @SHA1_Init(%struct.SHAstate_st* noundef nonnull %17) #9
  call fastcc void @sha1_update(%struct.SHAstate_st* noundef nonnull %17, i8* noundef nonnull %0, i64 noundef 64) #10
  %18 = bitcast [64 x i8]* %hmac_key to <16 x i8>*
  %wide.load317 = load <16 x i8>, <16 x i8>* %18, align 16, !tbaa !9
  %19 = xor <16 x i8> %wide.load317, <i8 106, i8 106, i8 106, i8 106, i8 106, i8 106, i8 106, i8 106, i8 106, i8 106, i8 106, i8 106, i8 106, i8 106, i8 106, i8 106>
  %20 = bitcast [64 x i8]* %hmac_key to <16 x i8>*
  store <16 x i8> %19, <16 x i8>* %20, align 16, !tbaa !9
  %21 = getelementptr inbounds [64 x i8], [64 x i8]* %hmac_key, i64 0, i64 16
  %22 = bitcast i8* %21 to <16 x i8>*
  %wide.load317.1 = load <16 x i8>, <16 x i8>* %22, align 16, !tbaa !9
  %23 = xor <16 x i8> %wide.load317.1, <i8 106, i8 106, i8 106, i8 106, i8 106, i8 106, i8 106, i8 106, i8 106, i8 106, i8 106, i8 106, i8 106, i8 106, i8 106, i8 106>
  %24 = bitcast i8* %21 to <16 x i8>*
  store <16 x i8> %23, <16 x i8>* %24, align 16, !tbaa !9
  %25 = getelementptr inbounds [64 x i8], [64 x i8]* %hmac_key, i64 0, i64 32
  %26 = bitcast i8* %25 to <16 x i8>*
  %wide.load317.2 = load <16 x i8>, <16 x i8>* %26, align 16, !tbaa !9
  %27 = xor <16 x i8> %wide.load317.2, <i8 106, i8 106, i8 106, i8 106, i8 106, i8 106, i8 106, i8 106, i8 106, i8 106, i8 106, i8 106, i8 106, i8 106, i8 106, i8 106>
  %28 = bitcast i8* %25 to <16 x i8>*
  store <16 x i8> %27, <16 x i8>* %28, align 16, !tbaa !9
  %29 = getelementptr inbounds [64 x i8], [64 x i8]* %hmac_key, i64 0, i64 48
  %30 = bitcast i8* %29 to <16 x i8>*
  %wide.load317.3 = load <16 x i8>, <16 x i8>* %30, align 16, !tbaa !9
  %31 = xor <16 x i8> %wide.load317.3, <i8 106, i8 106, i8 106, i8 106, i8 106, i8 106, i8 106, i8 106, i8 106, i8 106, i8 106, i8 106, i8 106, i8 106, i8 106, i8 106>
  %32 = bitcast i8* %29 to <16 x i8>*
  store <16 x i8> %31, <16 x i8>* %32, align 16, !tbaa !9
  %tail = getelementptr inbounds i8, i8* %call, i64 340
  %33 = bitcast i8* %tail to %struct.SHAstate_st*
  %call32 = call i32 @SHA1_Init(%struct.SHAstate_st* noundef nonnull %33) #9
  call fastcc void @sha1_update(%struct.SHAstate_st* noundef nonnull %33, i8* noundef nonnull %0, i64 noundef 64) #10
  call void @OPENSSL_cleanse(i8* noundef nonnull %0, i64 noundef 64) #9
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %0) #11
  br label %cleanup198

sw.bb36:                                          ; preds = %entry
  %cmp37.not = icmp eq i32 %arg, 13
  br i1 %cmp37.not, label %if.end40, label %cleanup198

if.end40:                                         ; preds = %sw.bb36
  %arrayidx42 = getelementptr inbounds i8, i8* %ptr, i64 11
  %34 = load i8, i8* %arrayidx42, align 1, !tbaa !9
  %conv43 = zext i8 %34 to i32
  %shl = shl nuw nsw i32 %conv43, 8
  %arrayidx46 = getelementptr inbounds i8, i8* %ptr, i64 12
  %35 = load i8, i8* %arrayidx46, align 1, !tbaa !9
  %conv47 = zext i8 %35 to i32
  %or = or i32 %shl, %conv47
  %call48 = tail call i32 @EVP_CIPHER_CTX_is_encrypting(%struct.evp_cipher_ctx_st* noundef %ctx) #9
  %tobool.not = icmp eq i32 %call48, 0
  br i1 %tobool.not, label %if.else83, label %if.then49

if.then49:                                        ; preds = %if.end40
  %conv50 = zext i32 %or to i64
  %payload_length = getelementptr inbounds i8, i8* %call, i64 536
  %36 = bitcast i8* %payload_length to i64*
  store i64 %conv50, i64* %36, align 8, !tbaa !10
  %arrayidx53 = getelementptr inbounds i8, i8* %ptr, i64 9
  %37 = load i8, i8* %arrayidx53, align 1, !tbaa !9
  %conv54 = zext i8 %37 to i32
  %shl55 = shl nuw nsw i32 %conv54, 8
  %arrayidx58 = getelementptr inbounds i8, i8* %ptr, i64 10
  %38 = load i8, i8* %arrayidx58, align 1, !tbaa !9
  %conv59 = zext i8 %38 to i32
  %or60 = or i32 %shl55, %conv59
  %aux = getelementptr inbounds i8, i8* %call, i64 544
  %tls_ver = bitcast i8* %aux to i32*
  store i32 %or60, i32* %tls_ver, align 8, !tbaa !9
  %cmp61 = icmp ugt i32 %or60, 769
  br i1 %cmp61, label %if.then63, label %if.end77

if.then63:                                        ; preds = %if.then49
  %cmp64 = icmp ult i32 %or, 16
  br i1 %cmp64, label %cleanup198, label %if.end67

if.end67:                                         ; preds = %if.then63
  %sub68 = add nsw i32 %or, -16
  %shr = lshr i32 %sub68, 8
  %conv69 = trunc i32 %shr to i8
  store i8 %conv69, i8* %arrayidx42, align 1, !tbaa !9
  %conv73 = trunc i32 %sub68 to i8
  store i8 %conv73, i8* %arrayidx46, align 1, !tbaa !9
  br label %if.end77

if.end77:                                         ; preds = %if.end67, %if.then49
  %len.0 = phi i32 [ %sub68, %if.end67 ], [ %or, %if.then49 ]
  %md = getelementptr inbounds i8, i8* %call, i64 436
  %39 = bitcast i8* %md to %struct.SHAstate_st*
  %head78 = getelementptr inbounds i8, i8* %call, i64 244
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 4 dereferenceable(96) %md, i8* noundef nonnull align 4 dereferenceable(96) %head78, i64 96, i1 false), !tbaa.struct !8
  tail call fastcc void @sha1_update(%struct.SHAstate_st* noundef nonnull %39, i8* noundef nonnull %ptr, i64 noundef 13) #10
  %add81 = add nsw i32 %len.0, 36
  %and = and i32 %add81, -16
  %sub82 = sub i32 %and, %len.0
  br label %cleanup198

if.else83:                                        ; preds = %if.end40
  %aux84 = getelementptr inbounds i8, i8* %call, i64 544
  %call87 = tail call i8* @memcpy(i8* noundef nonnull %aux84, i8* noundef nonnull %ptr, i64 noundef 13) #9
  %payload_length89 = getelementptr inbounds i8, i8* %call, i64 536
  %40 = bitcast i8* %payload_length89 to i64*
  store i64 13, i64* %40, align 8, !tbaa !10
  br label %cleanup198

sw.bb91:                                          ; preds = %entry
  %add93 = add nsw i32 %arg, 36
  %and94 = and i32 %add93, -16
  %add95 = add nsw i32 %and94, 21
  br label %cleanup198

sw.bb96:                                          ; preds = %entry
  %cmp97 = icmp slt i32 %arg, 32
  br i1 %cmp97, label %cleanup198, label %if.end100

if.end100:                                        ; preds = %sw.bb96
  %inp = getelementptr inbounds i8, i8* %ptr, i64 8
  %41 = bitcast i8* %inp to i8**
  %42 = load i8*, i8** %41, align 8, !tbaa !44
  %arrayidx101 = getelementptr inbounds i8, i8* %42, i64 11
  %43 = load i8, i8* %arrayidx101, align 1, !tbaa !9
  %conv102 = zext i8 %43 to i32
  %shl103 = shl nuw nsw i32 %conv102, 8
  %arrayidx105 = getelementptr inbounds i8, i8* %42, i64 12
  %44 = load i8, i8* %arrayidx105, align 1, !tbaa !9
  %conv106 = zext i8 %44 to i32
  %or107 = or i32 %shl103, %conv106
  %call108 = tail call i32 @EVP_CIPHER_CTX_is_encrypting(%struct.evp_cipher_ctx_st* noundef %ctx) #9
  %tobool109.not = icmp eq i32 %call108, 0
  br i1 %tobool109.not, label %cleanup198, label %if.then110

if.then110:                                       ; preds = %if.end100
  %45 = load i8*, i8** %41, align 8, !tbaa !44
  %arrayidx112 = getelementptr inbounds i8, i8* %45, i64 9
  %46 = load i8, i8* %arrayidx112, align 1, !tbaa !9
  %conv113 = zext i8 %46 to i32
  %shl114 = shl nuw nsw i32 %conv113, 8
  %arrayidx116 = getelementptr inbounds i8, i8* %45, i64 10
  %47 = load i8, i8* %arrayidx116, align 1, !tbaa !9
  %conv117 = zext i8 %47 to i32
  %or118 = or i32 %shl114, %conv117
  %cmp119 = icmp ult i32 %or118, 770
  br i1 %cmp119, label %cleanup198, label %if.end122

if.end122:                                        ; preds = %if.then110
  %tobool123.not = icmp eq i32 %or107, 0
  br i1 %tobool123.not, label %if.else135, label %if.then124

if.then124:                                       ; preds = %if.end122
  %cmp125 = icmp ult i32 %or107, 4096
  br i1 %cmp125, label %cleanup198, label %if.end128

if.end128:                                        ; preds = %if.then124
  %cmp129 = icmp ugt i32 %or107, 8191
  br i1 %cmp129, label %land.lhs.true, label %if.end145

land.lhs.true:                                    ; preds = %if.end128
  %48 = load i32, i32* getelementptr inbounds ([0 x i32], [0 x i32]* @OPENSSL_ia32cap_P, i64 0, i64 2), align 4, !tbaa !4
  %and131 = and i32 %48, 32
  %tobool132.not = icmp eq i32 %and131, 0
  %spec.select = select i1 %tobool132.not, i32 1, i32 2
  br label %if.end145

if.else135:                                       ; preds = %if.end122
  %interleave = getelementptr inbounds i8, i8* %ptr, i64 24
  %49 = bitcast i8* %interleave to i32*
  %50 = load i32, i32* %49, align 8, !tbaa !47
  %51 = add i32 %50, -4
  %52 = icmp ult i32 %51, 8
  br i1 %52, label %if.then140, label %cleanup198

if.then140:                                       ; preds = %if.else135
  %div = lshr i32 %50, 2
  %len141 = getelementptr inbounds i8, i8* %ptr, i64 16
  %53 = bitcast i8* %len141 to i64*
  %54 = load i64, i64* %53, align 8, !tbaa !48
  %conv142 = trunc i64 %54 to i32
  br label %if.end145

if.end145:                                        ; preds = %land.lhs.true, %if.end128, %if.then140
  %n4x.0 = phi i32 [ 1, %if.end128 ], [ %div, %if.then140 ], [ %spec.select, %land.lhs.true ]
  %inp_len.0 = phi i32 [ %or107, %if.end128 ], [ %conv142, %if.then140 ], [ %or107, %land.lhs.true ]
  %md146 = getelementptr inbounds i8, i8* %call, i64 436
  %55 = bitcast i8* %md146 to %struct.SHAstate_st*
  %head147 = getelementptr inbounds i8, i8* %call, i64 244
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 4 dereferenceable(96) %md146, i8* noundef nonnull align 4 dereferenceable(96) %head147, i64 96, i1 false), !tbaa.struct !8
  %56 = load i8*, i8** %41, align 8, !tbaa !44
  tail call fastcc void @sha1_update(%struct.SHAstate_st* noundef nonnull %55, i8* noundef %56, i64 noundef 13) #10
  %mul = shl nuw nsw i32 %n4x.0, 2
  %add150 = add nuw nsw i32 %n4x.0, 1
  %shr151 = lshr i32 %inp_len.0, %add150
  %add152 = add i32 %shr151, %inp_len.0
  %shl153 = shl i32 %shr151, %add150
  %sub154 = sub i32 %add152, %shl153
  %cmp155 = icmp ugt i32 %sub154, %shr151
  br i1 %cmp155, label %land.lhs.true157, label %if.end167

land.lhs.true157:                                 ; preds = %if.end145
  %add159 = add i32 %sub154, 22
  %rem = and i32 %add159, 63
  %sub160 = add nsw i32 %mul, -1
  %cmp161 = icmp ult i32 %rem, %sub160
  br i1 %cmp161, label %if.then163, label %if.end167

if.then163:                                       ; preds = %land.lhs.true157
  %inc164 = add nuw nsw i32 %shr151, 1
  %sub166 = sub i32 %sub154, %sub160
  br label %if.end167

if.end167:                                        ; preds = %if.then163, %land.lhs.true157, %if.end145
  %frag.0 = phi i32 [ %inc164, %if.then163 ], [ %shr151, %land.lhs.true157 ], [ %shr151, %if.end145 ]
  %last.0 = phi i32 [ %sub166, %if.then163 ], [ %sub154, %land.lhs.true157 ], [ %sub154, %if.end145 ]
  %add169 = add nuw nsw i32 %frag.0, 36
  %and170 = and i32 %add169, -16
  %add171 = add nuw nsw i32 %and170, 21
  %shl172 = shl i32 %add171, %add150
  %add175 = add i32 %last.0, 36
  %and176 = and i32 %add175, -16
  %57 = sub i32 %and176, %and170
  %add178 = add i32 %57, %shl172
  %interleave179 = getelementptr inbounds i8, i8* %ptr, i64 24
  %58 = bitcast i8* %interleave179 to i32*
  store i32 %mul, i32* %58, align 8, !tbaa !47
  br label %cleanup198

sw.bb188:                                         ; preds = %entry
  %59 = bitcast i8* %call to %struct.EVP_AES_HMAC_SHA1*
  %out = bitcast i8* %ptr to i8**
  %60 = load i8*, i8** %out, align 8, !tbaa !49
  %inp190 = getelementptr inbounds i8, i8* %ptr, i64 8
  %61 = bitcast i8* %inp190 to i8**
  %62 = load i8*, i8** %61, align 8, !tbaa !44
  %len191 = getelementptr inbounds i8, i8* %ptr, i64 16
  %63 = bitcast i8* %len191 to i64*
  %64 = load i64, i64* %63, align 8, !tbaa !48
  %interleave192 = getelementptr inbounds i8, i8* %ptr, i64 24
  %65 = bitcast i8* %interleave192 to i32*
  %66 = load i32, i32* %65, align 8, !tbaa !47
  %div193 = lshr i32 %66, 2
  %call194 = tail call fastcc i64 @tls1_1_multi_block_encrypt(%struct.EVP_AES_HMAC_SHA1* noundef %59, i8* noundef %60, i8* noundef %62, i64 noundef %64, i32 noundef %div193) #10
  %conv195 = trunc i64 %call194 to i32
  br label %cleanup198

cleanup198:                                       ; preds = %entry, %if.end167, %sw.bb96, %if.then110, %if.then124, %if.else135, %if.end100, %if.end77, %if.else83, %sw.bb36, %if.then63, %sw.bb188, %sw.bb91, %vector.body
  %retval.2 = phi i32 [ %conv195, %sw.bb188 ], [ %add95, %sw.bb91 ], [ 1, %vector.body ], [ %sub82, %if.end77 ], [ 20, %if.else83 ], [ -1, %sw.bb36 ], [ 0, %if.then63 ], [ %add178, %if.end167 ], [ -1, %sw.bb96 ], [ -1, %if.then110 ], [ 0, %if.then124 ], [ -1, %if.else135 ], [ -1, %if.end100 ], [ -1, %entry ]
  ret i32 %retval.2
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #3

declare i8* @EVP_CIPHER_CTX_get_cipher_data(%struct.evp_cipher_ctx_st* noundef) local_unnamed_addr #2

declare i32 @aesni_set_encrypt_key(i8* noundef, i32 noundef, %struct.aes_key_st* noundef) local_unnamed_addr #2

declare i32 @EVP_CIPHER_CTX_get_key_length(%struct.evp_cipher_ctx_st* noundef) local_unnamed_addr #2

declare i32 @aesni_set_decrypt_key(i8* noundef, i32 noundef, %struct.aes_key_st* noundef) local_unnamed_addr #2

declare i32 @SHA1_Init(%struct.SHAstate_st* noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #3

declare i32 @EVP_CIPHER_CTX_is_encrypting(%struct.evp_cipher_ctx_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @sha1_update(%struct.SHAstate_st* noundef %c, i8* noundef %data, i64 noundef %len) unnamed_addr #1 {
entry:
  %num = getelementptr inbounds %struct.SHAstate_st, %struct.SHAstate_st* %c, i64 0, i32 8
  %0 = load i32, i32* %num, align 4, !tbaa !50
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %if.end4, label %if.then

if.then:                                          ; preds = %entry
  %conv = zext i32 %0 to i64
  %sub = sub nsw i64 64, %conv
  %cmp = icmp ugt i64 %sub, %len
  %spec.select = select i1 %cmp, i64 %len, i64 %sub
  %call = tail call i32 @SHA1_Update(%struct.SHAstate_st* noundef nonnull %c, i8* noundef %data, i64 noundef %spec.select) #9
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
  %1 = bitcast %struct.SHAstate_st* %c to i8*
  %div = lshr i64 %len.addr.0, 6
  tail call void @sha1_block_data_order(i8* noundef %1, i8* noundef %ptr.0, i64 noundef %div) #9
  %add.ptr8 = getelementptr inbounds i8, i8* %ptr.0, i64 %sub5
  %shr = lshr i64 %len.addr.0, 29
  %Nh = getelementptr inbounds %struct.SHAstate_st, %struct.SHAstate_st* %c, i64 0, i32 6
  %2 = load i32, i32* %Nh, align 4, !tbaa !51
  %3 = trunc i64 %shr to i32
  %conv10 = add i32 %2, %3
  store i32 %conv10, i32* %Nh, align 4, !tbaa !51
  %Nl = getelementptr inbounds %struct.SHAstate_st, %struct.SHAstate_st* %c, i64 0, i32 5
  %4 = load i32, i32* %Nl, align 4, !tbaa !52
  %sub5.tr = trunc i64 %sub5 to i32
  %5 = shl i32 %sub5.tr, 3
  %conv13 = add i32 %4, %5
  store i32 %conv13, i32* %Nl, align 4, !tbaa !52
  %cmp16 = icmp ult i32 %conv13, %5
  br i1 %cmp16, label %if.then18, label %if.end21

if.then18:                                        ; preds = %if.then7
  %inc = add i32 %conv10, 1
  store i32 %inc, i32* %Nh, align 4, !tbaa !51
  br label %if.end21

if.end21:                                         ; preds = %if.then7, %if.then18, %if.end4
  %ptr.1 = phi i8* [ %add.ptr8, %if.then18 ], [ %add.ptr8, %if.then7 ], [ %ptr.0, %if.end4 ]
  %tobool22.not = icmp eq i64 %rem, 0
  br i1 %tobool22.not, label %if.end25, label %if.then23

if.then23:                                        ; preds = %if.end21
  %call24 = tail call i32 @SHA1_Update(%struct.SHAstate_st* noundef nonnull %c, i8* noundef %ptr.1, i64 noundef %rem) #9
  br label %if.end25

if.end25:                                         ; preds = %if.then23, %if.end21
  ret void
}

declare void @aesni_cbc_sha1_enc(i8* noundef, i8* noundef, i64 noundef, %struct.aes_key_st* noundef, i8* noundef, %struct.SHAstate_st* noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare i8* @memcpy(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #5

declare i32 @SHA1_Final(i8* noundef, %struct.SHAstate_st* noundef) local_unnamed_addr #2

declare void @aesni_cbc_encrypt(i8* noundef, i8* noundef, i64 noundef, %struct.aes_key_st* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc i32 @constant_time_ge(i32 noundef %a, i32 noundef %b) unnamed_addr #6 {
entry:
  %call = tail call fastcc i32 @constant_time_lt(i32 noundef %a, i32 noundef %b) #10
  %neg = xor i32 %call, -1
  ret i32 %neg
}

; Function Attrs: nofree noinline nosync nounwind readnone uwtable
define internal fastcc i32 @constant_time_select(i32 noundef %mask, i32 noundef %a, i32 noundef %b) unnamed_addr #7 {
entry:
  %call = tail call fastcc i32 @value_barrier(i32 noundef %mask) #10
  %and = and i32 %call, %a
  %neg = xor i32 %mask, -1
  %call1 = tail call fastcc i32 @value_barrier(i32 noundef %neg) #10
  %and2 = and i32 %call1, %b
  %or = or i32 %and2, %and
  ret i32 %or
}

declare void @sha1_block_data_order(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare i8* @memset(i8* noundef, i32 noundef, i64 noundef) local_unnamed_addr #5

declare i32 @SHA1_Update(%struct.SHAstate_st* noundef, i8* noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc i32 @constant_time_lt(i32 noundef %a, i32 noundef %b) unnamed_addr #6 {
entry:
  %xor = xor i32 %b, %a
  %sub = sub i32 %a, %b
  %xor1 = xor i32 %sub, %b
  %or = or i32 %xor1, %xor
  %xor2 = xor i32 %or, %a
  %call = tail call fastcc i32 @constant_time_msb(i32 noundef %xor2) #10
  ret i32 %call
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc i32 @constant_time_msb(i32 noundef %a) unnamed_addr #6 {
entry:
  %shr.neg = ashr i32 %a, 31
  ret i32 %shr.neg
}

; Function Attrs: nofree noinline nosync nounwind readnone uwtable
define internal fastcc i32 @value_barrier(i32 noundef %a) unnamed_addr #7 {
entry:
  %0 = tail call i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %a) #12, !srcloc !53
  ret i32 %0
}

declare void @OPENSSL_cleanse(i8* noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc i64 @tls1_1_multi_block_encrypt(%struct.EVP_AES_HMAC_SHA1* noundef %key, i8* noundef %out, i8* noundef %inp, i64 noundef %inp_len, i32 noundef %n4x) unnamed_addr #1 {
entry:
  %hash_d = alloca [8 x %struct.HASH_DESC], align 16
  %edges = alloca [8 x %struct.HASH_DESC], align 16
  %ciph_d = alloca [8 x %struct.CIPH_DESC], align 16
  %storage = alloca [192 x i8], align 16
  %blocks = alloca [8 x %union.anon.3], align 16
  %0 = bitcast [8 x %struct.HASH_DESC]* %hash_d to i8*
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %0) #11
  %1 = bitcast [8 x %struct.HASH_DESC]* %edges to i8*
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %1) #11
  %2 = bitcast [8 x %struct.CIPH_DESC]* %ciph_d to i8*
  call void @llvm.lifetime.start.p0i8(i64 320, i8* nonnull %2) #11
  %3 = getelementptr inbounds [192 x i8], [192 x i8]* %storage, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %3) #11
  %4 = bitcast [8 x %union.anon.3]* %blocks to i8*
  call void @llvm.lifetime.start.p0i8(i64 1024, i8* nonnull %4) #11
  %mul = shl i32 %n4x, 2
  %mul1 = shl i32 %n4x, 6
  %call = call i32 @RAND_bytes(i8* noundef nonnull %4, i32 noundef %mul1) #9
  %cmp = icmp slt i32 %call, 1
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %add.ptr = getelementptr inbounds [192 x i8], [192 x i8]* %storage, i64 0, i64 32
  %5 = ptrtoint [192 x i8]* %storage to i64
  %rem = and i64 %5, 16
  %idx.neg = sub nsw i64 0, %rem
  %add.ptr4 = getelementptr inbounds i8, i8* %add.ptr, i64 %idx.neg
  %6 = bitcast i8* %add.ptr4 to %struct.SHA1_MB_CTX*
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
  store i8* %inp, i8** %ptr, align 16, !tbaa !54
  %arrayidx24 = getelementptr inbounds [8 x %struct.CIPH_DESC], [8 x %struct.CIPH_DESC]* %ciph_d, i64 0, i64 0
  %inp25 = getelementptr inbounds [8 x %struct.CIPH_DESC], [8 x %struct.CIPH_DESC]* %ciph_d, i64 0, i64 0, i32 0
  store i8* %inp, i8** %inp25, align 16, !tbaa !56
  %add.ptr27 = getelementptr inbounds i8, i8* %out, i64 21
  %out29 = getelementptr inbounds [8 x %struct.CIPH_DESC], [8 x %struct.CIPH_DESC]* %ciph_d, i64 0, i64 0, i32 1
  store i8* %add.ptr27, i8** %out29, align 8, !tbaa !58
  %add.ptr32 = getelementptr inbounds i8, i8* %out, i64 5
  %call33 = call i8* @memcpy(i8* noundef nonnull %add.ptr32, i8* noundef nonnull %4, i64 noundef 16) #9
  %arraydecay35 = getelementptr inbounds [8 x %struct.CIPH_DESC], [8 x %struct.CIPH_DESC]* %ciph_d, i64 0, i64 0, i32 3, i64 0
  %7 = bitcast i64* %arraydecay35 to i8*
  %call36 = call i8* @memcpy(i8* noundef nonnull %7, i8* noundef nonnull %4, i64 noundef 16) #9
  %cmp38827.not = icmp eq i32 %n4x, 0
  br i1 %cmp38827.not, label %for.end, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %if.end19
  %add.ptr37 = getelementptr inbounds [8 x %union.anon.3], [8 x %union.anon.3]* %blocks, i64 0, i64 0, i32 0, i64 2
  %8 = bitcast i64* %add.ptr37 to i8*
  %add21 = add i32 %frag.0, 36
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
  %IVs.0828 = phi i8* [ %8, %for.body.lr.ph ], [ %add.ptr69, %for.body ]
  %10 = add nsw i64 %indvars.iv, -1
  %add.ptr43 = getelementptr inbounds i8, i8* %9, i64 %idx.ext
  %ptr46 = getelementptr inbounds [8 x %struct.HASH_DESC], [8 x %struct.HASH_DESC]* %hash_d, i64 0, i64 %indvars.iv, i32 0
  store i8* %add.ptr43, i8** %ptr46, align 16, !tbaa !54
  %inp49 = getelementptr inbounds [8 x %struct.CIPH_DESC], [8 x %struct.CIPH_DESC]* %ciph_d, i64 0, i64 %indvars.iv, i32 0
  store i8* %add.ptr43, i8** %inp49, align 8, !tbaa !56
  %out53 = getelementptr inbounds [8 x %struct.CIPH_DESC], [8 x %struct.CIPH_DESC]* %ciph_d, i64 0, i64 %10, i32 1
  %11 = load i8*, i8** %out53, align 8, !tbaa !58
  %add.ptr55 = getelementptr inbounds i8, i8* %11, i64 %idx.ext54
  %out58 = getelementptr inbounds [8 x %struct.CIPH_DESC], [8 x %struct.CIPH_DESC]* %ciph_d, i64 0, i64 %indvars.iv, i32 1
  store i8* %add.ptr55, i8** %out58, align 8, !tbaa !58
  %add.ptr62 = getelementptr inbounds i8, i8* %add.ptr55, i64 -16
  %call63 = call i8* @memcpy(i8* noundef nonnull %add.ptr62, i8* noundef nonnull %IVs.0828, i64 noundef 16) #9
  %arraydecay67 = getelementptr inbounds [8 x %struct.CIPH_DESC], [8 x %struct.CIPH_DESC]* %ciph_d, i64 0, i64 %indvars.iv, i32 3, i64 0
  %12 = bitcast i64* %arraydecay67 to i8*
  %call68 = call i8* @memcpy(i8* noundef nonnull %12, i8* noundef nonnull %IVs.0828, i64 noundef 16) #9
  %add.ptr69 = getelementptr inbounds i8, i8* %IVs.0828, i64 16
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %for.end, label %for.body, !llvm.loop !59

for.end:                                          ; preds = %for.body, %if.end19
  %arraydecay74 = getelementptr inbounds %struct.EVP_AES_HMAC_SHA1, %struct.EVP_AES_HMAC_SHA1* %key, i64 0, i32 3, i32 7, i64 0
  %13 = bitcast i32* %arraydecay74 to i8*
  %call75 = call i8* @memcpy(i8* noundef nonnull %4, i8* noundef nonnull %13, i64 noundef 8) #9
  %arrayidx77 = getelementptr inbounds [8 x %union.anon.3], [8 x %union.anon.3]* %blocks, i64 0, i64 0, i32 0, i64 0
  %14 = load i64, i64* %arrayidx77, align 16, !tbaa !9
  %15 = call i64 asm "bswapq $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %14) #12, !srcloc !60
  br i1 %cmp38827.not, label %for.end172, label %for.body81.lr.ph

for.body81.lr.ph:                                 ; preds = %for.end
  %sub82 = add i32 %mul, -1
  %h0 = getelementptr inbounds %struct.EVP_AES_HMAC_SHA1, %struct.EVP_AES_HMAC_SHA1* %key, i64 0, i32 3, i32 0
  %A = bitcast i8* %add.ptr4 to [8 x i32]*
  %h1 = getelementptr inbounds %struct.EVP_AES_HMAC_SHA1, %struct.EVP_AES_HMAC_SHA1* %key, i64 0, i32 3, i32 1
  %B = getelementptr inbounds i8, i8* %add.ptr4, i64 32
  %16 = bitcast i8* %B to [8 x i32]*
  %h2 = getelementptr inbounds %struct.EVP_AES_HMAC_SHA1, %struct.EVP_AES_HMAC_SHA1* %key, i64 0, i32 3, i32 2
  %C = getelementptr inbounds i8, i8* %add.ptr4, i64 64
  %17 = bitcast i8* %C to [8 x i32]*
  %h3 = getelementptr inbounds %struct.EVP_AES_HMAC_SHA1, %struct.EVP_AES_HMAC_SHA1* %key, i64 0, i32 3, i32 3
  %D = getelementptr inbounds i8, i8* %add.ptr4, i64 96
  %18 = bitcast i8* %D to [8 x i32]*
  %h4 = getelementptr inbounds %struct.EVP_AES_HMAC_SHA1, %struct.EVP_AES_HMAC_SHA1* %key, i64 0, i32 3, i32 4
  %E = getelementptr inbounds i8, i8* %add.ptr4, i64 128
  %19 = bitcast i8* %E to [8 x i32]*
  %arrayidx111826 = getelementptr inbounds %struct.EVP_AES_HMAC_SHA1, %struct.EVP_AES_HMAC_SHA1* %key, i64 0, i32 3, i32 7, i64 2
  %arrayidx111 = bitcast i32* %arrayidx111826 to i8*
  %arrayidx119 = getelementptr inbounds i8, i8* %13, i64 9
  %arrayidx127 = getelementptr inbounds i8, i8* %13, i64 10
  %20 = zext i32 %sub82 to i64
  %umax851 = call i32 @llvm.umax.i32(i32 %mul, i32 1)
  %wide.trip.count852 = zext i32 %umax851 to i64
  br label %for.body81

for.body81:                                       ; preds = %for.body81.lr.ph, %for.body81
  %indvars.iv848 = phi i64 [ 0, %for.body81.lr.ph ], [ %indvars.iv.next849, %for.body81 ]
  %cmp83 = icmp eq i64 %indvars.iv848, %20
  %cond = select i1 %cmp83, i32 %last.0, i32 %frag.0
  %21 = load i32, i32* %h0, align 4, !tbaa !28
  %arrayidx87 = getelementptr inbounds [8 x i32], [8 x i32]* %A, i64 0, i64 %indvars.iv848
  store i32 %21, i32* %arrayidx87, align 4, !tbaa !4
  %22 = load i32, i32* %h1, align 4, !tbaa !29
  %arrayidx90 = getelementptr inbounds [8 x i32], [8 x i32]* %16, i64 0, i64 %indvars.iv848
  store i32 %22, i32* %arrayidx90, align 4, !tbaa !4
  %23 = load i32, i32* %h2, align 4, !tbaa !30
  %arrayidx93 = getelementptr inbounds [8 x i32], [8 x i32]* %17, i64 0, i64 %indvars.iv848
  store i32 %23, i32* %arrayidx93, align 4, !tbaa !4
  %24 = load i32, i32* %h3, align 4, !tbaa !31
  %arrayidx96 = getelementptr inbounds [8 x i32], [8 x i32]* %18, i64 0, i64 %indvars.iv848
  store i32 %24, i32* %arrayidx96, align 4, !tbaa !4
  %25 = load i32, i32* %h4, align 4, !tbaa !32
  %arrayidx99 = getelementptr inbounds [8 x i32], [8 x i32]* %19, i64 0, i64 %indvars.iv848
  store i32 %25, i32* %arrayidx99, align 4, !tbaa !4
  %add102 = add i64 %indvars.iv848, %15
  %26 = call i64 asm "bswapq $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %add102) #12, !srcloc !61
  %arrayidx105 = getelementptr inbounds [8 x %union.anon.3], [8 x %union.anon.3]* %blocks, i64 0, i64 %indvars.iv848
  %arrayidx107 = getelementptr inbounds %union.anon.3, %union.anon.3* %arrayidx105, i64 0, i32 0, i64 0
  store i64 %26, i64* %arrayidx107, align 16, !tbaa !9
  %27 = load i8, i8* %arrayidx111, align 4, !tbaa !9
  %c114 = bitcast %union.anon.3* %arrayidx105 to [128 x i8]*
  %arrayidx115 = getelementptr inbounds [8 x %union.anon.3], [8 x %union.anon.3]* %blocks, i64 0, i64 %indvars.iv848, i32 0, i64 1
  %28 = bitcast i64* %arrayidx115 to i8*
  store i8 %27, i8* %28, align 8, !tbaa !9
  %29 = load i8, i8* %arrayidx119, align 1, !tbaa !9
  %arrayidx123 = getelementptr inbounds [128 x i8], [128 x i8]* %c114, i64 0, i64 9
  store i8 %29, i8* %arrayidx123, align 1, !tbaa !9
  %30 = load i8, i8* %arrayidx127, align 2, !tbaa !9
  %arrayidx131 = getelementptr inbounds [128 x i8], [128 x i8]* %c114, i64 0, i64 10
  store i8 %30, i8* %arrayidx131, align 2, !tbaa !9
  %shr132 = lshr i32 %cond, 8
  %conv133 = trunc i32 %shr132 to i8
  %arrayidx137 = getelementptr inbounds [128 x i8], [128 x i8]* %c114, i64 0, i64 11
  store i8 %conv133, i8* %arrayidx137, align 1, !tbaa !9
  %conv138 = trunc i32 %cond to i8
  %arrayidx142 = getelementptr inbounds [128 x i8], [128 x i8]* %c114, i64 0, i64 12
  store i8 %conv138, i8* %arrayidx142, align 4, !tbaa !9
  %arraydecay146 = bitcast %union.anon.3* %arrayidx105 to i8*
  %add.ptr147 = getelementptr inbounds i8, i8* %arraydecay146, i64 13
  %ptr150 = getelementptr inbounds [8 x %struct.HASH_DESC], [8 x %struct.HASH_DESC]* %hash_d, i64 0, i64 %indvars.iv848, i32 0
  %31 = load i8*, i8** %ptr150, align 16, !tbaa !54
  %call151 = call i8* @memcpy(i8* noundef nonnull %add.ptr147, i8* noundef %31, i64 noundef 51) #9
  %add.ptr155 = getelementptr inbounds i8, i8* %31, i64 51
  store i8* %add.ptr155, i8** %ptr150, align 16, !tbaa !54
  %sub156 = add i32 %cond, -51
  %div = lshr i32 %sub156, 6
  %blocks159 = getelementptr inbounds [8 x %struct.HASH_DESC], [8 x %struct.HASH_DESC]* %hash_d, i64 0, i64 %indvars.iv848, i32 1
  store i32 %div, i32* %blocks159, align 8, !tbaa !62
  %arrayidx165 = getelementptr inbounds [8 x %struct.HASH_DESC], [8 x %struct.HASH_DESC]* %edges, i64 0, i64 %indvars.iv848
  %32 = bitcast %struct.HASH_DESC* %arrayidx165 to %union.anon.3**
  store %union.anon.3* %arrayidx105, %union.anon.3** %32, align 16, !tbaa !54
  %blocks169 = getelementptr inbounds [8 x %struct.HASH_DESC], [8 x %struct.HASH_DESC]* %edges, i64 0, i64 %indvars.iv848, i32 1
  store i32 1, i32* %blocks169, align 8, !tbaa !62
  %indvars.iv.next849 = add nuw nsw i64 %indvars.iv848, 1
  %exitcond853.not = icmp eq i64 %indvars.iv.next849, %wide.trip.count852
  br i1 %exitcond853.not, label %for.end172, label %for.body81, !llvm.loop !63

for.end172:                                       ; preds = %for.body81, %for.end
  %arraydecay173 = getelementptr inbounds [8 x %struct.HASH_DESC], [8 x %struct.HASH_DESC]* %edges, i64 0, i64 0
  call void @sha1_multi_block(%struct.SHA1_MB_CTX* noundef nonnull %6, %struct.HASH_DESC* noundef nonnull %arraydecay173, i32 noundef %n4x) #9
  %cmp174.not = icmp ugt i32 %frag.0, %last.0
  %cond179 = select i1 %cmp174.not, i32 %last.0, i32 %frag.0
  %sub180 = add i32 %cond179, -51
  %div181 = lshr i32 %sub180, 6
  %cmp182 = icmp ugt i32 %sub180, 2111
  br i1 %cmp182, label %for.cond185.preheader, label %if.end251

for.cond185.preheader:                            ; preds = %for.end172
  br i1 %cmp38827.not, label %do.body.preheader, label %for.body188.preheader

for.body188.preheader:                            ; preds = %for.cond185.preheader
  %umax857 = call i32 @llvm.umax.i32(i32 %mul, i32 1)
  %wide.trip.count858 = zext i32 %umax857 to i64
  %xtraiter = and i64 %wide.trip.count858, 1
  %33 = icmp eq i32 %mul, 0
  br i1 %33, label %do.body.preheader.loopexit.unr-lcssa, label %for.body188.preheader.new

for.body188.preheader.new:                        ; preds = %for.body188.preheader
  %unroll_iter = and i64 %wide.trip.count858, 4294967292
  br label %for.body188

do.body.preheader.loopexit.unr-lcssa:             ; preds = %for.body188, %for.body188.preheader
  %indvars.iv854.unr = phi i64 [ 0, %for.body188.preheader ], [ %indvars.iv.next855.1, %for.body188 ]
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %do.body.preheader.loopexit, label %for.body188.epil

for.body188.epil:                                 ; preds = %do.body.preheader.loopexit.unr-lcssa
  %ptr191.epil = getelementptr inbounds [8 x %struct.HASH_DESC], [8 x %struct.HASH_DESC]* %hash_d, i64 0, i64 %indvars.iv854.unr, i32 0
  %34 = load i8*, i8** %ptr191.epil, align 16, !tbaa !54
  %ptr194.epil = getelementptr inbounds [8 x %struct.HASH_DESC], [8 x %struct.HASH_DESC]* %edges, i64 0, i64 %indvars.iv854.unr, i32 0
  store i8* %34, i8** %ptr194.epil, align 16, !tbaa !54
  %blocks197.epil = getelementptr inbounds [8 x %struct.HASH_DESC], [8 x %struct.HASH_DESC]* %edges, i64 0, i64 %indvars.iv854.unr, i32 1
  store i32 32, i32* %blocks197.epil, align 8, !tbaa !62
  %blocks200.epil = getelementptr inbounds [8 x %struct.CIPH_DESC], [8 x %struct.CIPH_DESC]* %ciph_d, i64 0, i64 %indvars.iv854.unr, i32 2
  store i32 128, i32* %blocks200.epil, align 8, !tbaa !64
  br label %do.body.preheader.loopexit

do.body.preheader.loopexit:                       ; preds = %do.body.preheader.loopexit.unr-lcssa, %for.body188.epil
  %phi.cast = zext i32 %umax857 to i64
  br label %do.body.preheader

do.body.preheader:                                ; preds = %for.cond185.preheader, %do.body.preheader.loopexit
  %umax863.pre-phi = phi i64 [ %phi.cast, %do.body.preheader.loopexit ], [ 1, %for.cond185.preheader ]
  %35 = bitcast %struct.EVP_AES_HMAC_SHA1* %key to i8*
  br label %do.body

for.body188:                                      ; preds = %for.body188, %for.body188.preheader.new
  %indvars.iv854 = phi i64 [ 0, %for.body188.preheader.new ], [ %indvars.iv.next855.1, %for.body188 ]
  %niter = phi i64 [ 0, %for.body188.preheader.new ], [ %niter.next.1, %for.body188 ]
  %ptr191 = getelementptr inbounds [8 x %struct.HASH_DESC], [8 x %struct.HASH_DESC]* %hash_d, i64 0, i64 %indvars.iv854, i32 0
  %36 = load i8*, i8** %ptr191, align 16, !tbaa !54
  %ptr194 = getelementptr inbounds [8 x %struct.HASH_DESC], [8 x %struct.HASH_DESC]* %edges, i64 0, i64 %indvars.iv854, i32 0
  store i8* %36, i8** %ptr194, align 16, !tbaa !54
  %blocks197 = getelementptr inbounds [8 x %struct.HASH_DESC], [8 x %struct.HASH_DESC]* %edges, i64 0, i64 %indvars.iv854, i32 1
  store i32 32, i32* %blocks197, align 8, !tbaa !62
  %blocks200 = getelementptr inbounds [8 x %struct.CIPH_DESC], [8 x %struct.CIPH_DESC]* %ciph_d, i64 0, i64 %indvars.iv854, i32 2
  store i32 128, i32* %blocks200, align 16, !tbaa !64
  %indvars.iv.next855 = or i64 %indvars.iv854, 1
  %ptr191.1 = getelementptr inbounds [8 x %struct.HASH_DESC], [8 x %struct.HASH_DESC]* %hash_d, i64 0, i64 %indvars.iv.next855, i32 0
  %37 = load i8*, i8** %ptr191.1, align 16, !tbaa !54
  %ptr194.1 = getelementptr inbounds [8 x %struct.HASH_DESC], [8 x %struct.HASH_DESC]* %edges, i64 0, i64 %indvars.iv.next855, i32 0
  store i8* %37, i8** %ptr194.1, align 16, !tbaa !54
  %blocks197.1 = getelementptr inbounds [8 x %struct.HASH_DESC], [8 x %struct.HASH_DESC]* %edges, i64 0, i64 %indvars.iv.next855, i32 1
  store i32 32, i32* %blocks197.1, align 8, !tbaa !62
  %blocks200.1 = getelementptr inbounds [8 x %struct.CIPH_DESC], [8 x %struct.CIPH_DESC]* %ciph_d, i64 0, i64 %indvars.iv.next855, i32 2
  store i32 128, i32* %blocks200.1, align 8, !tbaa !64
  %indvars.iv.next855.1 = add nuw nsw i64 %indvars.iv854, 2
  %niter.next.1 = add i64 %niter, 2
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %do.body.preheader.loopexit.unr-lcssa, label %for.body188, !llvm.loop !65

do.body:                                          ; preds = %do.body.preheader, %for.end246
  %processed.0 = phi i32 [ %add247, %for.end246 ], [ 0, %do.body.preheader ]
  %minblocks.0 = phi i32 [ %sub248, %for.end246 ], [ %div181, %do.body.preheader ]
  call void @sha1_multi_block(%struct.SHA1_MB_CTX* noundef nonnull %6, %struct.HASH_DESC* noundef nonnull %arraydecay173, i32 noundef %n4x) #9
  call void @aesni_multi_cbc_encrypt(%struct.CIPH_DESC* noundef nonnull %arrayidx24, i8* noundef %35, i32 noundef %n4x) #9
  br i1 %cmp38827.not, label %for.end246, label %for.body209

for.body209:                                      ; preds = %do.body, %for.body209
  %indvars.iv860 = phi i64 [ %indvars.iv.next861, %for.body209 ], [ 0, %do.body ]
  %ptr212 = getelementptr inbounds [8 x %struct.HASH_DESC], [8 x %struct.HASH_DESC]* %hash_d, i64 0, i64 %indvars.iv860, i32 0
  %38 = load i8*, i8** %ptr212, align 16, !tbaa !54
  %add.ptr213 = getelementptr inbounds i8, i8* %38, i64 2048
  store i8* %add.ptr213, i8** %ptr212, align 16, !tbaa !54
  %ptr216 = getelementptr inbounds [8 x %struct.HASH_DESC], [8 x %struct.HASH_DESC]* %edges, i64 0, i64 %indvars.iv860, i32 0
  store i8* %add.ptr213, i8** %ptr216, align 16, !tbaa !54
  %blocks219 = getelementptr inbounds [8 x %struct.HASH_DESC], [8 x %struct.HASH_DESC]* %hash_d, i64 0, i64 %indvars.iv860, i32 1
  %39 = load i32, i32* %blocks219, align 8, !tbaa !62
  %sub220 = add nsw i32 %39, -32
  store i32 %sub220, i32* %blocks219, align 8, !tbaa !62
  %blocks223 = getelementptr inbounds [8 x %struct.HASH_DESC], [8 x %struct.HASH_DESC]* %edges, i64 0, i64 %indvars.iv860, i32 1
  store i32 32, i32* %blocks223, align 8, !tbaa !62
  %inp226 = getelementptr inbounds [8 x %struct.CIPH_DESC], [8 x %struct.CIPH_DESC]* %ciph_d, i64 0, i64 %indvars.iv860, i32 0
  %40 = bitcast i8** %inp226 to <2 x i8*>*
  %41 = load <2 x i8*>, <2 x i8*>* %40, align 8, !tbaa !66
  %42 = getelementptr i8, <2 x i8*> %41, <2 x i64> <i64 2048, i64 2048>
  %43 = bitcast i8** %inp226 to <2 x i8*>*
  store <2 x i8*> %42, <2 x i8*>* %43, align 8, !tbaa !66
  %blocks234 = getelementptr inbounds [8 x %struct.CIPH_DESC], [8 x %struct.CIPH_DESC]* %ciph_d, i64 0, i64 %indvars.iv860, i32 2
  store i32 128, i32* %blocks234, align 8, !tbaa !64
  %arraydecay238 = getelementptr inbounds [8 x %struct.CIPH_DESC], [8 x %struct.CIPH_DESC]* %ciph_d, i64 0, i64 %indvars.iv860, i32 3, i64 0
  %44 = bitcast i64* %arraydecay238 to i8*
  %45 = extractelement <2 x i8*> %41, i64 1
  %add.ptr242 = getelementptr inbounds i8, i8* %45, i64 2032
  %call243 = call i8* @memcpy(i8* noundef nonnull %44, i8* noundef nonnull %add.ptr242, i64 noundef 16) #9
  %indvars.iv.next861 = add nuw nsw i64 %indvars.iv860, 1
  %exitcond865.not = icmp eq i64 %indvars.iv.next861, %umax863.pre-phi
  br i1 %exitcond865.not, label %for.end246, label %for.body209, !llvm.loop !67

for.end246:                                       ; preds = %for.body209, %do.body
  %add247 = add i32 %processed.0, 2048
  %sub248 = add i32 %minblocks.0, -32
  %cmp249 = icmp ugt i32 %sub248, 32
  br i1 %cmp249, label %do.body, label %if.end251, !llvm.loop !68

if.end251:                                        ; preds = %for.end246, %for.end172
  %processed.1 = phi i32 [ 0, %for.end172 ], [ %add247, %for.end246 ]
  call void @sha1_multi_block(%struct.SHA1_MB_CTX* noundef nonnull %6, %struct.HASH_DESC* noundef nonnull %arrayidx23, i32 noundef %n4x) #9
  %call254 = call i8* @memset(i8* noundef nonnull %4, i32 noundef 0, i64 noundef 1024) #9
  br i1 %cmp38827.not, label %for.end422.thread, label %for.body258.lr.ph

for.body258.lr.ph:                                ; preds = %if.end251
  %sub260 = add i32 %mul, -1
  %46 = zext i32 %sub260 to i64
  %umax869 = call i32 @llvm.umax.i32(i32 %mul, i32 1)
  %wide.trip.count870 = zext i32 %umax869 to i64
  br label %for.body258

for.body258:                                      ; preds = %for.body258.lr.ph, %for.body258
  %indvars.iv866 = phi i64 [ 0, %for.body258.lr.ph ], [ %indvars.iv.next867, %for.body258 ]
  %cmp261 = icmp eq i64 %indvars.iv866, %46
  %cond266 = select i1 %cmp261, i32 %last.0, i32 %frag.0
  %blocks269 = getelementptr inbounds [8 x %struct.HASH_DESC], [8 x %struct.HASH_DESC]* %hash_d, i64 0, i64 %indvars.iv866, i32 1
  %47 = load i32, i32* %blocks269, align 8, !tbaa !62
  %mul270 = shl nsw i32 %47, 6
  %ptr274 = getelementptr inbounds [8 x %struct.HASH_DESC], [8 x %struct.HASH_DESC]* %hash_d, i64 0, i64 %indvars.iv866, i32 0
  %48 = load i8*, i8** %ptr274, align 16, !tbaa !54
  %idx.ext275 = zext i32 %mul270 to i64
  %add.ptr276 = getelementptr inbounds i8, i8* %48, i64 %idx.ext275
  %49 = add i32 %cond266, -51
  %50 = add i32 %processed.1, %mul270
  %sub279 = sub i32 %49, %50
  %arrayidx281 = getelementptr inbounds [8 x %union.anon.3], [8 x %union.anon.3]* %blocks, i64 0, i64 %indvars.iv866
  %c282 = bitcast %union.anon.3* %arrayidx281 to [128 x i8]*
  %arraydecay283 = bitcast %union.anon.3* %arrayidx281 to i8*
  %conv284 = zext i32 %sub279 to i64
  %call285 = call i8* @memcpy(i8* noundef nonnull %arraydecay283, i8* noundef %add.ptr276, i64 noundef %conv284) #9
  %arrayidx290 = getelementptr inbounds [128 x i8], [128 x i8]* %c282, i64 0, i64 %conv284
  store i8 -128, i8* %arrayidx290, align 1, !tbaa !9
  %add291 = shl i32 %cond266, 3
  %mul292 = add i32 %add291, 616
  %cmp293 = icmp ult i32 %sub279, 56
  %51 = call i32 asm "bswapl $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %mul292) #12
  %d = bitcast %union.anon.3* %arrayidx281 to [32 x i32]*
  %. = select i1 %cmp293, i64 15, i64 31
  %.886 = select i1 %cmp293, i32 1, i32 2
  %arrayidx309 = getelementptr inbounds [32 x i32], [32 x i32]* %d, i64 0, i64 %.
  store i32 %51, i32* %arrayidx309, align 4, !tbaa !9
  %52 = getelementptr inbounds [8 x %struct.HASH_DESC], [8 x %struct.HASH_DESC]* %edges, i64 0, i64 %indvars.iv866, i32 1
  store i32 %.886, i32* %52, align 8
  %ptr320 = getelementptr inbounds [8 x %struct.HASH_DESC], [8 x %struct.HASH_DESC]* %edges, i64 0, i64 %indvars.iv866, i32 0
  %53 = bitcast i8** %ptr320 to %union.anon.3**
  store %union.anon.3* %arrayidx281, %union.anon.3** %53, align 16, !tbaa !54
  %indvars.iv.next867 = add nuw nsw i64 %indvars.iv866, 1
  %exitcond871.not = icmp eq i64 %indvars.iv.next867, %wide.trip.count870
  br i1 %exitcond871.not, label %for.body330.lr.ph, label %for.body258, !llvm.loop !69

for.end422.thread:                                ; preds = %if.end251
  call void @sha1_multi_block(%struct.SHA1_MB_CTX* noundef nonnull %6, %struct.HASH_DESC* noundef nonnull %arraydecay173, i32 noundef 0) #9
  %call326.c = call i8* @memset(i8* noundef nonnull %4, i32 noundef 0, i64 noundef 1024) #9
  call void @sha1_multi_block(%struct.SHA1_MB_CTX* noundef nonnull %6, %struct.HASH_DESC* noundef nonnull %arraydecay173, i32 noundef 0) #9
  br label %for.end531

for.body330.lr.ph:                                ; preds = %for.body258
  call void @sha1_multi_block(%struct.SHA1_MB_CTX* noundef nonnull %6, %struct.HASH_DESC* noundef nonnull %arraydecay173, i32 noundef %n4x) #9
  %call326 = call i8* @memset(i8* noundef nonnull %4, i32 noundef 0, i64 noundef 1024) #9
  %A332 = bitcast i8* %add.ptr4 to [8 x i32]*
  %h0340 = getelementptr inbounds %struct.EVP_AES_HMAC_SHA1, %struct.EVP_AES_HMAC_SHA1* %key, i64 0, i32 2, i32 0
  %B345 = getelementptr inbounds i8, i8* %add.ptr4, i64 32
  %54 = bitcast i8* %B345 to [8 x i32]*
  %h1354 = getelementptr inbounds %struct.EVP_AES_HMAC_SHA1, %struct.EVP_AES_HMAC_SHA1* %key, i64 0, i32 2, i32 1
  %C359 = getelementptr inbounds i8, i8* %add.ptr4, i64 64
  %55 = bitcast i8* %C359 to [8 x i32]*
  %h2368 = getelementptr inbounds %struct.EVP_AES_HMAC_SHA1, %struct.EVP_AES_HMAC_SHA1* %key, i64 0, i32 2, i32 2
  %D373 = getelementptr inbounds i8, i8* %add.ptr4, i64 96
  %56 = bitcast i8* %D373 to [8 x i32]*
  %h3382 = getelementptr inbounds %struct.EVP_AES_HMAC_SHA1, %struct.EVP_AES_HMAC_SHA1* %key, i64 0, i32 2, i32 3
  %E387 = getelementptr inbounds i8, i8* %add.ptr4, i64 128
  %57 = bitcast i8* %E387 to [8 x i32]*
  %h4396 = getelementptr inbounds %struct.EVP_AES_HMAC_SHA1, %struct.EVP_AES_HMAC_SHA1* %key, i64 0, i32 2, i32 4
  br label %for.body330

for.body330:                                      ; preds = %for.body330.lr.ph, %for.body330
  %indvars.iv872 = phi i64 [ 0, %for.body330.lr.ph ], [ %indvars.iv.next873, %for.body330 ]
  %arrayidx334 = getelementptr inbounds [8 x i32], [8 x i32]* %A332, i64 0, i64 %indvars.iv872
  %58 = load i32, i32* %arrayidx334, align 4, !tbaa !4
  %59 = call i32 asm "bswapl $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %58) #12, !srcloc !70
  %arrayidx337 = getelementptr inbounds [8 x %union.anon.3], [8 x %union.anon.3]* %blocks, i64 0, i64 %indvars.iv872
  %d338 = bitcast %union.anon.3* %arrayidx337 to [32 x i32]*
  %arrayidx339 = bitcast %union.anon.3* %arrayidx337 to i32*
  store i32 %59, i32* %arrayidx339, align 16, !tbaa !9
  %60 = load i32, i32* %h0340, align 4, !tbaa !71
  store i32 %60, i32* %arrayidx334, align 4, !tbaa !4
  %arrayidx347 = getelementptr inbounds [8 x i32], [8 x i32]* %54, i64 0, i64 %indvars.iv872
  %61 = load i32, i32* %arrayidx347, align 4, !tbaa !4
  %62 = call i32 asm "bswapl $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %61) #12, !srcloc !72
  %arrayidx352 = getelementptr inbounds [32 x i32], [32 x i32]* %d338, i64 0, i64 1
  store i32 %62, i32* %arrayidx352, align 4, !tbaa !9
  %63 = load i32, i32* %h1354, align 4, !tbaa !73
  store i32 %63, i32* %arrayidx347, align 4, !tbaa !4
  %arrayidx361 = getelementptr inbounds [8 x i32], [8 x i32]* %55, i64 0, i64 %indvars.iv872
  %64 = load i32, i32* %arrayidx361, align 4, !tbaa !4
  %65 = call i32 asm "bswapl $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %64) #12, !srcloc !74
  %arrayidx366 = getelementptr inbounds [8 x %union.anon.3], [8 x %union.anon.3]* %blocks, i64 0, i64 %indvars.iv872, i32 0, i64 1
  %66 = bitcast i64* %arrayidx366 to i32*
  store i32 %65, i32* %66, align 8, !tbaa !9
  %67 = load i32, i32* %h2368, align 4, !tbaa !75
  store i32 %67, i32* %arrayidx361, align 4, !tbaa !4
  %arrayidx375 = getelementptr inbounds [8 x i32], [8 x i32]* %56, i64 0, i64 %indvars.iv872
  %68 = load i32, i32* %arrayidx375, align 4, !tbaa !4
  %69 = call i32 asm "bswapl $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %68) #12, !srcloc !76
  %arrayidx380 = getelementptr inbounds [32 x i32], [32 x i32]* %d338, i64 0, i64 3
  store i32 %69, i32* %arrayidx380, align 4, !tbaa !9
  %70 = load i32, i32* %h3382, align 4, !tbaa !77
  store i32 %70, i32* %arrayidx375, align 4, !tbaa !4
  %arrayidx389 = getelementptr inbounds [8 x i32], [8 x i32]* %57, i64 0, i64 %indvars.iv872
  %71 = load i32, i32* %arrayidx389, align 4, !tbaa !4
  %72 = call i32 asm "bswapl $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %71) #12, !srcloc !78
  %arrayidx394 = getelementptr inbounds [8 x %union.anon.3], [8 x %union.anon.3]* %blocks, i64 0, i64 %indvars.iv872, i32 0, i64 2
  %73 = bitcast i64* %arrayidx394 to i32*
  store i32 %72, i32* %73, align 16, !tbaa !9
  %74 = load i32, i32* %h4396, align 4, !tbaa !79
  store i32 %74, i32* %arrayidx389, align 4, !tbaa !4
  %c402 = bitcast %union.anon.3* %arrayidx337 to [128 x i8]*
  %arrayidx403 = getelementptr inbounds [128 x i8], [128 x i8]* %c402, i64 0, i64 20
  store i8 -128, i8* %arrayidx403, align 4, !tbaa !9
  %75 = call i32 asm "bswapl $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 672) #12, !srcloc !80
  %arrayidx409 = getelementptr inbounds [32 x i32], [32 x i32]* %d338, i64 0, i64 15
  store i32 %75, i32* %arrayidx409, align 4, !tbaa !9
  %arrayidx415 = getelementptr inbounds [8 x %struct.HASH_DESC], [8 x %struct.HASH_DESC]* %edges, i64 0, i64 %indvars.iv872
  %76 = bitcast %struct.HASH_DESC* %arrayidx415 to %union.anon.3**
  store %union.anon.3* %arrayidx337, %union.anon.3** %76, align 16, !tbaa !54
  %blocks419 = getelementptr inbounds [8 x %struct.HASH_DESC], [8 x %struct.HASH_DESC]* %edges, i64 0, i64 %indvars.iv872, i32 1
  store i32 1, i32* %blocks419, align 8, !tbaa !62
  %indvars.iv.next873 = add nuw nsw i64 %indvars.iv872, 1
  %exitcond877.not = icmp eq i64 %indvars.iv.next873, %wide.trip.count870
  br i1 %exitcond877.not, label %for.body427.lr.ph, label %for.body330, !llvm.loop !81

for.body427.lr.ph:                                ; preds = %for.body330
  call void @sha1_multi_block(%struct.SHA1_MB_CTX* noundef nonnull %6, %struct.HASH_DESC* noundef nonnull %arraydecay173, i32 noundef %n4x) #9
  %add497 = sub i32 36, %processed.1
  %arrayidx507825 = getelementptr inbounds %struct.EVP_AES_HMAC_SHA1, %struct.EVP_AES_HMAC_SHA1* %key, i64 0, i32 3, i32 7, i64 2
  %arrayidx507 = bitcast i32* %arrayidx507825 to i8*
  %arrayidx512 = getelementptr inbounds i8, i8* %13, i64 9
  %arrayidx517 = getelementptr inbounds i8, i8* %13, i64 10
  br label %for.body427

for.body427:                                      ; preds = %for.body427.lr.ph, %for.end495
  %indvars.iv879 = phi i64 [ 0, %for.body427.lr.ph ], [ %indvars.iv.next880, %for.end495 ]
  %out.addr.0845 = phi i8* [ %out, %for.body427.lr.ph ], [ %incdec.ptr.lcssa, %for.end495 ]
  %ret.0843 = phi i64 [ 0, %for.body427.lr.ph ], [ %add526, %for.end495 ]
  %cmp430 = icmp eq i64 %indvars.iv879, %46
  %cond435 = select i1 %cmp430, i32 %last.0, i32 %frag.0
  %out438 = getelementptr inbounds [8 x %struct.CIPH_DESC], [8 x %struct.CIPH_DESC]* %ciph_d, i64 0, i64 %indvars.iv879, i32 1
  %77 = load i8*, i8** %out438, align 8, !tbaa !58
  %inp441 = getelementptr inbounds [8 x %struct.CIPH_DESC], [8 x %struct.CIPH_DESC]* %ciph_d, i64 0, i64 %indvars.iv879, i32 0
  %78 = load i8*, i8** %inp441, align 8, !tbaa !56
  %sub442 = sub i32 %cond435, %processed.1
  %conv443 = zext i32 %sub442 to i64
  %call444 = call i8* @memcpy(i8* noundef %77, i8* noundef %78, i64 noundef %conv443) #9
  %79 = load i8*, i8** %out438, align 8, !tbaa !58
  store i8* %79, i8** %inp441, align 8, !tbaa !56
  %add451 = add i32 %cond435, 21
  %idx.ext452 = zext i32 %add451 to i64
  %add.ptr453 = getelementptr inbounds i8, i8* %out.addr.0845, i64 %idx.ext452
  %arrayidx457 = getelementptr inbounds [8 x i32], [8 x i32]* %A332, i64 0, i64 %indvars.iv879
  %80 = load i32, i32* %arrayidx457, align 4, !tbaa !4
  %81 = call i32 asm "bswapl $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %80) #12, !srcloc !82
  %82 = bitcast i8* %add.ptr453 to i32*
  store i32 %81, i32* %82, align 4, !tbaa !4
  %arrayidx463 = getelementptr inbounds [8 x i32], [8 x i32]* %54, i64 0, i64 %indvars.iv879
  %83 = load i32, i32* %arrayidx463, align 4, !tbaa !4
  %84 = call i32 asm "bswapl $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %83) #12, !srcloc !83
  %add.ptr465 = getelementptr inbounds i8, i8* %add.ptr453, i64 4
  %85 = bitcast i8* %add.ptr465 to i32*
  store i32 %84, i32* %85, align 4, !tbaa !4
  %arrayidx469 = getelementptr inbounds [8 x i32], [8 x i32]* %55, i64 0, i64 %indvars.iv879
  %86 = load i32, i32* %arrayidx469, align 4, !tbaa !4
  %87 = call i32 asm "bswapl $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %86) #12, !srcloc !84
  %add.ptr471 = getelementptr inbounds i8, i8* %add.ptr453, i64 8
  %88 = bitcast i8* %add.ptr471 to i32*
  store i32 %87, i32* %88, align 4, !tbaa !4
  %arrayidx475 = getelementptr inbounds [8 x i32], [8 x i32]* %56, i64 0, i64 %indvars.iv879
  %89 = load i32, i32* %arrayidx475, align 4, !tbaa !4
  %90 = call i32 asm "bswapl $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %89) #12, !srcloc !85
  %add.ptr477 = getelementptr inbounds i8, i8* %add.ptr453, i64 12
  %91 = bitcast i8* %add.ptr477 to i32*
  store i32 %90, i32* %91, align 4, !tbaa !4
  %arrayidx481 = getelementptr inbounds [8 x i32], [8 x i32]* %57, i64 0, i64 %indvars.iv879
  %92 = load i32, i32* %arrayidx481, align 4, !tbaa !4
  %93 = call i32 asm "bswapl $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %92) #12, !srcloc !86
  %add.ptr483 = getelementptr inbounds i8, i8* %add.ptr453, i64 16
  %94 = bitcast i8* %add.ptr483 to i32*
  store i32 %93, i32* %94, align 4, !tbaa !4
  %add.ptr484 = getelementptr inbounds i8, i8* %add.ptr453, i64 20
  %add485 = add i32 %cond435, 4
  %rem486 = and i32 %add485, 15
  %95 = trunc i32 %rem486 to i8
  %conv492 = xor i8 %95, 15
  %96 = sub nuw nsw i32 16, %rem486
  %narrow = sub nuw nsw i32 16, %rem486
  %97 = zext i32 %narrow to i64
  %min.iters.check.not = icmp eq i32 %rem486, 0
  br i1 %min.iters.check.not, label %vector.ph, label %for.body491.preheader

vector.ph:                                        ; preds = %for.body427
  %n.vec = and i64 %97, 16
  %ind.end = getelementptr i8, i8* %add.ptr484, i64 %n.vec
  %broadcast.splatinsert = insertelement <16 x i8> poison, i8 %conv492, i64 0
  %broadcast.splat = shufflevector <16 x i8> %broadcast.splatinsert, <16 x i8> poison, <16 x i32> zeroinitializer
  %ind.end888 = trunc i64 %n.vec to i32
  %98 = bitcast i8* %add.ptr484 to <16 x i8>*
  store <16 x i8> %broadcast.splat, <16 x i8>* %98, align 1, !tbaa !9
  %cmp.n = icmp eq i64 %n.vec, %97
  br i1 %cmp.n, label %for.end495, label %for.body491.preheader

for.body491.preheader:                            ; preds = %for.body427, %vector.ph
  %out.addr.1841.ph = phi i8* [ %add.ptr484, %for.body427 ], [ %ind.end, %vector.ph ]
  %j.0840.ph = phi i32 [ 0, %for.body427 ], [ %ind.end888, %vector.ph ]
  br label %for.body491

for.body491:                                      ; preds = %for.body491.preheader, %for.body491
  %out.addr.1841 = phi i8* [ %incdec.ptr, %for.body491 ], [ %out.addr.1841.ph, %for.body491.preheader ]
  %j.0840 = phi i32 [ %inc494, %for.body491 ], [ %j.0840.ph, %for.body491.preheader ]
  %incdec.ptr = getelementptr inbounds i8, i8* %out.addr.1841, i64 1
  store i8 %conv492, i8* %out.addr.1841, align 1, !tbaa !9
  %inc494 = add nuw nsw i32 %j.0840, 1
  %exitcond878 = icmp eq i32 %inc494, %96
  br i1 %exitcond878, label %for.end495, label %for.body491, !llvm.loop !87

for.end495:                                       ; preds = %for.body491, %vector.ph
  %incdec.ptr.lcssa = phi i8* [ %ind.end, %vector.ph ], [ %incdec.ptr, %for.body491 ]
  %99 = sub i32 %cond435, %rem486
  %sub498 = add i32 %add497, %99
  %div499 = lshr i32 %sub498, 4
  %blocks502 = getelementptr inbounds [8 x %struct.CIPH_DESC], [8 x %struct.CIPH_DESC]* %ciph_d, i64 0, i64 %indvars.iv879, i32 2
  store i32 %div499, i32* %blocks502, align 8, !tbaa !64
  %add503 = add i32 %99, 52
  %100 = load i8, i8* %arrayidx507, align 4, !tbaa !9
  store i8 %100, i8* %out.addr.0845, align 1, !tbaa !9
  %101 = load i8, i8* %arrayidx512, align 1, !tbaa !9
  %arrayidx513 = getelementptr inbounds i8, i8* %out.addr.0845, i64 1
  store i8 %101, i8* %arrayidx513, align 1, !tbaa !9
  %102 = load i8, i8* %arrayidx517, align 2, !tbaa !9
  %arrayidx518 = getelementptr inbounds i8, i8* %out.addr.0845, i64 2
  store i8 %102, i8* %arrayidx518, align 1, !tbaa !9
  %shr519 = lshr i32 %add503, 8
  %conv520 = trunc i32 %shr519 to i8
  %arrayidx521 = getelementptr inbounds i8, i8* %out.addr.0845, i64 3
  store i8 %conv520, i8* %arrayidx521, align 1, !tbaa !9
  %conv522 = trunc i32 %add503 to i8
  %arrayidx523 = getelementptr inbounds i8, i8* %out.addr.0845, i64 4
  store i8 %conv522, i8* %arrayidx523, align 1, !tbaa !9
  %add524 = add i32 %99, 57
  %conv525 = zext i32 %add524 to i64
  %add526 = add i64 %ret.0843, %conv525
  %indvars.iv.next880 = add nuw nsw i64 %indvars.iv879, 1
  %exitcond884.not = icmp eq i64 %indvars.iv.next880, %wide.trip.count870
  br i1 %exitcond884.not, label %for.end531, label %for.body427, !llvm.loop !88

for.end531:                                       ; preds = %for.end495, %for.end422.thread
  %ret.0.lcssa = phi i64 [ 0, %for.end422.thread ], [ %add526, %for.end495 ]
  %103 = bitcast %struct.EVP_AES_HMAC_SHA1* %key to i8*
  call void @aesni_multi_cbc_encrypt(%struct.CIPH_DESC* noundef nonnull %arrayidx24, i8* noundef %103, i32 noundef %n4x) #9
  call void @OPENSSL_cleanse(i8* noundef nonnull %4, i64 noundef 1024) #9
  call void @OPENSSL_cleanse(i8* noundef nonnull %add.ptr4, i64 noundef 160) #9
  br label %cleanup

cleanup:                                          ; preds = %entry, %for.end531
  %retval.0 = phi i64 [ %ret.0.lcssa, %for.end531 ], [ 0, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 1024, i8* nonnull %4) #11
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %3) #11
  call void @llvm.lifetime.end.p0i8(i64 320, i8* nonnull %2) #11
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %1) #11
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %0) #11
  ret i64 %retval.0
}

declare i32 @RAND_bytes(i8* noundef, i32 noundef) local_unnamed_addr #2

declare void @sha1_multi_block(%struct.SHA1_MB_CTX* noundef, %struct.HASH_DESC* noundef, i32 noundef) local_unnamed_addr #2

declare void @aesni_multi_cbc_encrypt(%struct.CIPH_DESC* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #8

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #4 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #5 = { nounwind "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree noinline nosync nounwind readnone uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nobuiltin nounwind "no-builtins" }
attributes #10 = { nobuiltin "no-builtins" }
attributes #11 = { nounwind }
attributes #12 = { nounwind readnone }

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
!8 = !{i64 0, i64 4, !4, i64 4, i64 4, !4, i64 8, i64 4, !4, i64 12, i64 4, !4, i64 16, i64 4, !4, i64 20, i64 4, !4, i64 24, i64 4, !4, i64 28, i64 64, !9, i64 92, i64 4, !4}
!9 = !{!6, !6, i64 0}
!10 = !{!11, !14, i64 536}
!11 = !{!"", !12, i64 0, !13, i64 244, !13, i64 340, !13, i64 436, !14, i64 536, !6, i64 544}
!12 = !{!"aes_key_st", !6, i64 0, !5, i64 240}
!13 = !{!"SHAstate_st", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !5, i64 16, !5, i64 20, !5, i64 24, !6, i64 28, !5, i64 92}
!14 = !{!"long", !6, i64 0}
!15 = !{!11, !5, i64 528}
!16 = !{!11, !5, i64 460}
!17 = !{!11, !5, i64 456}
!18 = distinct !{!18, !19, !20}
!19 = !{!"llvm.loop.mustprogress"}
!20 = !{!"llvm.loop.isvectorized", i32 1}
!21 = distinct !{!21, !22}
!22 = !{!"llvm.loop.unroll.disable"}
!23 = distinct !{!23, !19, !20, !24}
!24 = !{!"llvm.loop.unroll.runtime.disable"}
!25 = distinct !{!25, !19, !24, !20}
!26 = !{i32 -1, i32 1}
!27 = !{i64 2149240639}
!28 = !{!11, !5, i64 436}
!29 = !{!11, !5, i64 440}
!30 = !{!11, !5, i64 444}
!31 = !{!11, !5, i64 448}
!32 = !{!11, !5, i64 452}
!33 = distinct !{!33, !19}
!34 = distinct !{!34, !19, !20}
!35 = distinct !{!35, !22}
!36 = distinct !{!36, !19, !20, !24}
!37 = distinct !{!37, !19, !24, !20}
!38 = !{i64 2149240881}
!39 = !{i64 2149241046}
!40 = !{i64 2149241211}
!41 = !{i64 2149241376}
!42 = !{i64 2149241541}
!43 = distinct !{!43, !19}
!44 = !{!45, !46, i64 8}
!45 = !{!"", !46, i64 0, !46, i64 8, !14, i64 16, !5, i64 24}
!46 = !{!"any pointer", !6, i64 0}
!47 = !{!45, !5, i64 24}
!48 = !{!45, !14, i64 16}
!49 = !{!45, !46, i64 0}
!50 = !{!13, !5, i64 92}
!51 = !{!13, !5, i64 24}
!52 = !{!13, !5, i64 20}
!53 = !{i64 1723813}
!54 = !{!55, !46, i64 0}
!55 = !{!"", !46, i64 0, !5, i64 8}
!56 = !{!57, !46, i64 0}
!57 = !{!"", !46, i64 0, !46, i64 8, !5, i64 16, !6, i64 24}
!58 = !{!57, !46, i64 8}
!59 = distinct !{!59, !19}
!60 = !{i64 2149237519}
!61 = !{i64 2149237688}
!62 = !{!55, !5, i64 8}
!63 = distinct !{!63, !19}
!64 = !{!57, !5, i64 16}
!65 = distinct !{!65, !19}
!66 = !{!46, !46, i64 0}
!67 = distinct !{!67, !19}
!68 = distinct !{!68, !19}
!69 = distinct !{!69, !19}
!70 = !{i64 2149238239}
!71 = !{!11, !5, i64 340}
!72 = !{i64 2149238403}
!73 = !{!11, !5, i64 344}
!74 = !{i64 2149238567}
!75 = !{!11, !5, i64 348}
!76 = !{i64 2149238731}
!77 = !{!11, !5, i64 352}
!78 = !{i64 2149238895}
!79 = !{!11, !5, i64 356}
!80 = !{i64 2149239059}
!81 = distinct !{!81, !19}
!82 = !{i64 2149239269}
!83 = !{i64 2149239475}
!84 = !{i64 2149239681}
!85 = !{i64 2149239888}
!86 = !{i64 2149240095}
!87 = distinct !{!87, !19, !24, !20}
!88 = distinct !{!88, !19}
