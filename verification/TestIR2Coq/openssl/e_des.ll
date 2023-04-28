; ModuleID = 'crypto/evp/e_des.c'
source_filename = "crypto/evp/e_des.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evp_cipher_st = type { i32, i32, i32, i32, i64, i32, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i32)*, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i64)*, i32 (%struct.evp_cipher_ctx_st*)*, i32, i32 (%struct.evp_cipher_ctx_st*, %struct.asn1_type_st*)*, i32 (%struct.evp_cipher_ctx_st*, %struct.asn1_type_st*)*, i32 (%struct.evp_cipher_ctx_st*, i32, i32, i8*)*, i8*, i32, i8*, i8*, %struct.ossl_provider_st*, i32, i8*, i8* (i8*)*, i32 (i8*, i8*, i64, i8*, i64, %struct.ossl_param_st*)*, i32 (i8*, i8*, i64, i8*, i64, %struct.ossl_param_st*)*, i32 (i8*, i8*, i64*, i64, i8*, i64)*, i32 (i8*, i8*, i64*, i64)*, i32 (i8*, i8*, i64*, i64, i8*, i64)*, void (i8*)*, i8* (i8*)*, i32 (%struct.ossl_param_st*)*, i32 (i8*, %struct.ossl_param_st*)*, i32 (i8*, %struct.ossl_param_st*)*, %struct.ossl_param_st* (i8*)*, %struct.ossl_param_st* (i8*, i8*)*, %struct.ossl_param_st* (i8*, i8*)* }
%struct.evp_cipher_ctx_st = type { %struct.evp_cipher_st*, %struct.engine_st*, i32, i32, [16 x i8], [16 x i8], [32 x i8], i32, i8*, i32, i64, i8*, i32, i32, [32 x i8], i8*, %struct.evp_cipher_st* }
%struct.engine_st = type opaque
%struct.asn1_type_st = type { i32, %union.anon }
%union.anon = type { i8* }
%struct.ossl_provider_st = type opaque
%struct.ossl_param_st = type { i8*, i32, i8*, i64, i64 }
%struct.DES_ks = type { [16 x %union.anon.1] }
%union.anon.1 = type { [2 x i32] }

@des_cbc = internal constant %struct.evp_cipher_st { i32 31, i32 8, i32 8, i32 8, i64 514, i32 1, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i32)* @des_init_key, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i64)* @des_cbc_cipher, i32 (%struct.evp_cipher_ctx_st*)* null, i32 136, i32 (%struct.evp_cipher_ctx_st*, %struct.asn1_type_st*)* @EVP_CIPHER_set_asn1_iv, i32 (%struct.evp_cipher_ctx_st*, %struct.asn1_type_st*)* @EVP_CIPHER_get_asn1_iv, i32 (%struct.evp_cipher_ctx_st*, i32, i32, i8*)* @des_ctrl, i8* null, i32 0, i8* null, i8* null, %struct.ossl_provider_st* null, i32 0, i8* null, i8* (i8*)* null, i32 (i8*, i8*, i64, i8*, i64, %struct.ossl_param_st*)* null, i32 (i8*, i8*, i64, i8*, i64, %struct.ossl_param_st*)* null, i32 (i8*, i8*, i64*, i64, i8*, i64)* null, i32 (i8*, i8*, i64*, i64)* null, i32 (i8*, i8*, i64*, i64, i8*, i64)* null, void (i8*)* null, i8* (i8*)* null, i32 (%struct.ossl_param_st*)* null, i32 (i8*, %struct.ossl_param_st*)* null, i32 (i8*, %struct.ossl_param_st*)* null, %struct.ossl_param_st* (i8*)* null, %struct.ossl_param_st* (i8*, i8*)* null, %struct.ossl_param_st* (i8*, i8*)* null }, align 8
@des_cfb64 = internal constant %struct.evp_cipher_st { i32 30, i32 1, i32 8, i32 8, i64 515, i32 1, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i32)* @des_init_key, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i64)* @des_cfb64_cipher, i32 (%struct.evp_cipher_ctx_st*)* null, i32 136, i32 (%struct.evp_cipher_ctx_st*, %struct.asn1_type_st*)* @EVP_CIPHER_set_asn1_iv, i32 (%struct.evp_cipher_ctx_st*, %struct.asn1_type_st*)* @EVP_CIPHER_get_asn1_iv, i32 (%struct.evp_cipher_ctx_st*, i32, i32, i8*)* @des_ctrl, i8* null, i32 0, i8* null, i8* null, %struct.ossl_provider_st* null, i32 0, i8* null, i8* (i8*)* null, i32 (i8*, i8*, i64, i8*, i64, %struct.ossl_param_st*)* null, i32 (i8*, i8*, i64, i8*, i64, %struct.ossl_param_st*)* null, i32 (i8*, i8*, i64*, i64, i8*, i64)* null, i32 (i8*, i8*, i64*, i64)* null, i32 (i8*, i8*, i64*, i64, i8*, i64)* null, void (i8*)* null, i8* (i8*)* null, i32 (%struct.ossl_param_st*)* null, i32 (i8*, %struct.ossl_param_st*)* null, i32 (i8*, %struct.ossl_param_st*)* null, %struct.ossl_param_st* (i8*)* null, %struct.ossl_param_st* (i8*, i8*)* null, %struct.ossl_param_st* (i8*, i8*)* null }, align 8
@des_ofb = internal constant %struct.evp_cipher_st { i32 45, i32 1, i32 8, i32 8, i64 516, i32 1, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i32)* @des_init_key, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i64)* @des_ofb_cipher, i32 (%struct.evp_cipher_ctx_st*)* null, i32 136, i32 (%struct.evp_cipher_ctx_st*, %struct.asn1_type_st*)* @EVP_CIPHER_set_asn1_iv, i32 (%struct.evp_cipher_ctx_st*, %struct.asn1_type_st*)* @EVP_CIPHER_get_asn1_iv, i32 (%struct.evp_cipher_ctx_st*, i32, i32, i8*)* @des_ctrl, i8* null, i32 0, i8* null, i8* null, %struct.ossl_provider_st* null, i32 0, i8* null, i8* (i8*)* null, i32 (i8*, i8*, i64, i8*, i64, %struct.ossl_param_st*)* null, i32 (i8*, i8*, i64, i8*, i64, %struct.ossl_param_st*)* null, i32 (i8*, i8*, i64*, i64, i8*, i64)* null, i32 (i8*, i8*, i64*, i64)* null, i32 (i8*, i8*, i64*, i64, i8*, i64)* null, void (i8*)* null, i8* (i8*)* null, i32 (%struct.ossl_param_st*)* null, i32 (i8*, %struct.ossl_param_st*)* null, i32 (i8*, %struct.ossl_param_st*)* null, %struct.ossl_param_st* (i8*)* null, %struct.ossl_param_st* (i8*, i8*)* null, %struct.ossl_param_st* (i8*, i8*)* null }, align 8
@des_ecb = internal constant %struct.evp_cipher_st { i32 29, i32 8, i32 8, i32 0, i64 513, i32 1, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i32)* @des_init_key, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i64)* @des_ecb_cipher, i32 (%struct.evp_cipher_ctx_st*)* null, i32 136, i32 (%struct.evp_cipher_ctx_st*, %struct.asn1_type_st*)* @EVP_CIPHER_set_asn1_iv, i32 (%struct.evp_cipher_ctx_st*, %struct.asn1_type_st*)* @EVP_CIPHER_get_asn1_iv, i32 (%struct.evp_cipher_ctx_st*, i32, i32, i8*)* @des_ctrl, i8* null, i32 0, i8* null, i8* null, %struct.ossl_provider_st* null, i32 0, i8* null, i8* (i8*)* null, i32 (i8*, i8*, i64, i8*, i64, %struct.ossl_param_st*)* null, i32 (i8*, i8*, i64, i8*, i64, %struct.ossl_param_st*)* null, i32 (i8*, i8*, i64*, i64, i8*, i64)* null, i32 (i8*, i8*, i64*, i64)* null, i32 (i8*, i8*, i64*, i64, i8*, i64)* null, void (i8*)* null, i8* (i8*)* null, i32 (%struct.ossl_param_st*)* null, i32 (i8*, %struct.ossl_param_st*)* null, i32 (i8*, %struct.ossl_param_st*)* null, %struct.ossl_param_st* (i8*)* null, %struct.ossl_param_st* (i8*, i8*)* null, %struct.ossl_param_st* (i8*, i8*)* null }, align 8
@des_cfb1 = internal constant %struct.evp_cipher_st { i32 656, i32 1, i32 8, i32 8, i64 515, i32 1, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i32)* @des_init_key, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i64)* @des_cfb1_cipher, i32 (%struct.evp_cipher_ctx_st*)* null, i32 136, i32 (%struct.evp_cipher_ctx_st*, %struct.asn1_type_st*)* @EVP_CIPHER_set_asn1_iv, i32 (%struct.evp_cipher_ctx_st*, %struct.asn1_type_st*)* @EVP_CIPHER_get_asn1_iv, i32 (%struct.evp_cipher_ctx_st*, i32, i32, i8*)* @des_ctrl, i8* null, i32 0, i8* null, i8* null, %struct.ossl_provider_st* null, i32 0, i8* null, i8* (i8*)* null, i32 (i8*, i8*, i64, i8*, i64, %struct.ossl_param_st*)* null, i32 (i8*, i8*, i64, i8*, i64, %struct.ossl_param_st*)* null, i32 (i8*, i8*, i64*, i64, i8*, i64)* null, i32 (i8*, i8*, i64*, i64)* null, i32 (i8*, i8*, i64*, i64, i8*, i64)* null, void (i8*)* null, i8* (i8*)* null, i32 (%struct.ossl_param_st*)* null, i32 (i8*, %struct.ossl_param_st*)* null, i32 (i8*, %struct.ossl_param_st*)* null, %struct.ossl_param_st* (i8*)* null, %struct.ossl_param_st* (i8*, i8*)* null, %struct.ossl_param_st* (i8*, i8*)* null }, align 8
@des_cfb8 = internal constant %struct.evp_cipher_st { i32 657, i32 1, i32 8, i32 8, i64 515, i32 1, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i32)* @des_init_key, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i64)* @des_cfb8_cipher, i32 (%struct.evp_cipher_ctx_st*)* null, i32 136, i32 (%struct.evp_cipher_ctx_st*, %struct.asn1_type_st*)* @EVP_CIPHER_set_asn1_iv, i32 (%struct.evp_cipher_ctx_st*, %struct.asn1_type_st*)* @EVP_CIPHER_get_asn1_iv, i32 (%struct.evp_cipher_ctx_st*, i32, i32, i8*)* @des_ctrl, i8* null, i32 0, i8* null, i8* null, %struct.ossl_provider_st* null, i32 0, i8* null, i8* (i8*)* null, i32 (i8*, i8*, i64, i8*, i64, %struct.ossl_param_st*)* null, i32 (i8*, i8*, i64, i8*, i64, %struct.ossl_param_st*)* null, i32 (i8*, i8*, i64*, i64, i8*, i64)* null, i32 (i8*, i8*, i64*, i64)* null, i32 (i8*, i8*, i64*, i64, i8*, i64)* null, void (i8*)* null, i8* (i8*)* null, i32 (%struct.ossl_param_st*)* null, i32 (i8*, %struct.ossl_param_st*)* null, i32 (i8*, %struct.ossl_param_st*)* null, %struct.ossl_param_st* (i8*)* null, %struct.ossl_param_st* (i8*, i8*)* null, %struct.ossl_param_st* (i8*, i8*)* null }, align 8

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define nonnull %struct.evp_cipher_st* @EVP_des_cbc() local_unnamed_addr #0 {
entry:
  ret %struct.evp_cipher_st* @des_cbc
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define nonnull %struct.evp_cipher_st* @EVP_des_cfb64() local_unnamed_addr #0 {
entry:
  ret %struct.evp_cipher_st* @des_cfb64
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define nonnull %struct.evp_cipher_st* @EVP_des_ofb() local_unnamed_addr #0 {
entry:
  ret %struct.evp_cipher_st* @des_ofb
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define nonnull %struct.evp_cipher_st* @EVP_des_ecb() local_unnamed_addr #0 {
entry:
  ret %struct.evp_cipher_st* @des_ecb
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define nonnull %struct.evp_cipher_st* @EVP_des_cfb1() local_unnamed_addr #0 {
entry:
  ret %struct.evp_cipher_st* @des_cfb1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define nonnull %struct.evp_cipher_st* @EVP_des_cfb8() local_unnamed_addr #0 {
entry:
  ret %struct.evp_cipher_st* @des_cfb8
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @des_init_key(%struct.evp_cipher_ctx_st* noundef %ctx, i8* noundef %key, i8* nocapture noundef readnone %iv, i32 noundef %enc) #1 {
entry:
  %0 = bitcast i8* %key to [8 x i8]*
  %call = tail call i8* @EVP_CIPHER_CTX_get_cipher_data(%struct.evp_cipher_ctx_st* noundef %ctx) #4
  %stream = getelementptr inbounds i8, i8* %call, i64 128
  %cbc = bitcast i8* %stream to void (i8*, i8*, i64, %struct.DES_ks*, i8*)**
  store void (i8*, i8*, i64, %struct.DES_ks*, i8*)* null, void (i8*, i8*, i64, %struct.DES_ks*, i8*)** %cbc, align 8, !tbaa !4
  %call1 = tail call i8* @EVP_CIPHER_CTX_get_cipher_data(%struct.evp_cipher_ctx_st* noundef %ctx) #4
  %1 = bitcast i8* %call1 to %struct.DES_ks*
  tail call void @DES_set_key_unchecked([8 x i8]* noundef %0, %struct.DES_ks* noundef %1) #4
  ret i32 1
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @des_cbc_cipher(%struct.evp_cipher_ctx_st* noundef %ctx, i8* noundef %out, i8* noundef %in, i64 noundef %inl) #1 {
entry:
  %call = tail call i8* @EVP_CIPHER_CTX_get_cipher_data(%struct.evp_cipher_ctx_st* noundef %ctx) #4
  %stream = getelementptr inbounds i8, i8* %call, i64 128
  %cbc = bitcast i8* %stream to void (i8*, i8*, i64, %struct.DES_ks*, i8*)**
  %0 = load void (i8*, i8*, i64, %struct.DES_ks*, i8*)*, void (i8*, i8*, i64, %struct.DES_ks*, i8*)** %cbc, align 8, !tbaa !4
  %cmp.not = icmp eq void (i8*, i8*, i64, %struct.DES_ks*, i8*)* %0, null
  br i1 %cmp.not, label %while.cond.preheader, label %if.then

while.cond.preheader:                             ; preds = %entry
  %cmp436 = icmp ugt i64 %inl, 4611686018427387903
  br i1 %cmp436, label %while.body.lr.ph, label %while.end

while.body.lr.ph:                                 ; preds = %while.cond.preheader
  %arraydecay7 = getelementptr inbounds %struct.evp_cipher_ctx_st, %struct.evp_cipher_ctx_st* %ctx, i64 0, i32 5, i64 0
  %1 = bitcast i8* %arraydecay7 to [8 x i8]*
  br label %while.body

if.then:                                          ; preds = %entry
  %ks3 = bitcast i8* %call to %struct.DES_ks*
  %arraydecay = getelementptr inbounds %struct.evp_cipher_ctx_st, %struct.evp_cipher_ctx_st* %ctx, i64 0, i32 5, i64 0
  tail call void %0(i8* noundef %in, i8* noundef %out, i64 noundef %inl, %struct.DES_ks* noundef %ks3, i8* noundef nonnull %arraydecay) #4
  br label %cleanup

while.body:                                       ; preds = %while.body.lr.ph, %while.body
  %inl.addr.039 = phi i64 [ %inl, %while.body.lr.ph ], [ %sub, %while.body ]
  %in.addr.038 = phi i8* [ %in, %while.body.lr.ph ], [ %add.ptr, %while.body ]
  %out.addr.037 = phi i8* [ %out, %while.body.lr.ph ], [ %add.ptr9, %while.body ]
  %call5 = tail call i8* @EVP_CIPHER_CTX_get_cipher_data(%struct.evp_cipher_ctx_st* noundef %ctx) #4
  %2 = bitcast i8* %call5 to %struct.DES_ks*
  %call8 = tail call i32 @EVP_CIPHER_CTX_is_encrypting(%struct.evp_cipher_ctx_st* noundef %ctx) #4
  tail call void @DES_ncbc_encrypt(i8* noundef %in.addr.038, i8* noundef %out.addr.037, i64 noundef 4611686018427387904, %struct.DES_ks* noundef %2, [8 x i8]* noundef nonnull %1, i32 noundef %call8) #4
  %sub = add i64 %inl.addr.039, -4611686018427387904
  %add.ptr = getelementptr inbounds i8, i8* %in.addr.038, i64 4611686018427387904
  %add.ptr9 = getelementptr inbounds i8, i8* %out.addr.037, i64 4611686018427387904
  %cmp4 = icmp slt i64 %inl.addr.039, 4611686018427387904
  br i1 %cmp4, label %while.body, label %while.end, !llvm.loop !7

while.end:                                        ; preds = %while.body, %while.cond.preheader
  %out.addr.0.lcssa = phi i8* [ %out, %while.cond.preheader ], [ %add.ptr9, %while.body ]
  %in.addr.0.lcssa = phi i8* [ %in, %while.cond.preheader ], [ %add.ptr, %while.body ]
  %inl.addr.0.lcssa = phi i64 [ %inl, %while.cond.preheader ], [ %sub, %while.body ]
  %tobool.not = icmp eq i64 %inl.addr.0.lcssa, 0
  br i1 %tobool.not, label %cleanup, label %if.then10

if.then10:                                        ; preds = %while.end
  %call11 = tail call i8* @EVP_CIPHER_CTX_get_cipher_data(%struct.evp_cipher_ctx_st* noundef %ctx) #4
  %3 = bitcast i8* %call11 to %struct.DES_ks*
  %arraydecay13 = getelementptr inbounds %struct.evp_cipher_ctx_st, %struct.evp_cipher_ctx_st* %ctx, i64 0, i32 5, i64 0
  %4 = bitcast i8* %arraydecay13 to [8 x i8]*
  %call14 = tail call i32 @EVP_CIPHER_CTX_is_encrypting(%struct.evp_cipher_ctx_st* noundef %ctx) #4
  tail call void @DES_ncbc_encrypt(i8* noundef %in.addr.0.lcssa, i8* noundef %out.addr.0.lcssa, i64 noundef %inl.addr.0.lcssa, %struct.DES_ks* noundef %3, [8 x i8]* noundef nonnull %4, i32 noundef %call14) #4
  br label %cleanup

cleanup:                                          ; preds = %while.end, %if.then10, %if.then
  ret i32 1
}

declare i32 @EVP_CIPHER_set_asn1_iv(%struct.evp_cipher_ctx_st* noundef, %struct.asn1_type_st* noundef) #2

declare i32 @EVP_CIPHER_get_asn1_iv(%struct.evp_cipher_ctx_st* noundef, %struct.asn1_type_st* noundef) #2

; Function Attrs: noinline nounwind uwtable
define internal i32 @des_ctrl(%struct.evp_cipher_ctx_st* nocapture noundef readnone %c, i32 noundef %type, i32 noundef %arg, i8* noundef %ptr) #1 {
entry:
  %cond = icmp eq i32 %type, 6
  br i1 %cond, label %sw.bb, label %return

sw.bb:                                            ; preds = %entry
  %call = tail call i32 @RAND_priv_bytes(i8* noundef %ptr, i32 noundef 8) #4
  %cmp = icmp slt i32 %call, 1
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %sw.bb
  %0 = bitcast i8* %ptr to [8 x i8]*
  tail call void @DES_set_odd_parity([8 x i8]* noundef %0) #4
  br label %return

return:                                           ; preds = %entry, %sw.bb, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %sw.bb ], [ -1, %entry ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #3

declare i8* @EVP_CIPHER_CTX_get_cipher_data(%struct.evp_cipher_ctx_st* noundef) local_unnamed_addr #2

declare void @DES_set_key_unchecked([8 x i8]* noundef, %struct.DES_ks* noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #3

declare void @DES_ncbc_encrypt(i8* noundef, i8* noundef, i64 noundef, %struct.DES_ks* noundef, [8 x i8]* noundef, i32 noundef) local_unnamed_addr #2

declare i32 @EVP_CIPHER_CTX_is_encrypting(%struct.evp_cipher_ctx_st* noundef) local_unnamed_addr #2

declare i32 @RAND_priv_bytes(i8* noundef, i32 noundef) local_unnamed_addr #2

declare void @DES_set_odd_parity([8 x i8]* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal i32 @des_cfb64_cipher(%struct.evp_cipher_ctx_st* noundef %ctx, i8* noundef %out, i8* noundef %in, i64 noundef %inl) #1 {
entry:
  %num = alloca i32, align 4
  %num5 = alloca i32, align 4
  %cmp28 = icmp ugt i64 %inl, 4611686018427387903
  br i1 %cmp28, label %while.body.lr.ph, label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %0 = bitcast i32* %num to i8*
  %arraydecay = getelementptr inbounds %struct.evp_cipher_ctx_st, %struct.evp_cipher_ctx_st* %ctx, i64 0, i32 5, i64 0
  %1 = bitcast i8* %arraydecay to [8 x i8]*
  br label %while.body

while.body:                                       ; preds = %while.body.lr.ph, %while.body
  %inl.addr.031 = phi i64 [ %inl, %while.body.lr.ph ], [ %sub, %while.body ]
  %in.addr.030 = phi i8* [ %in, %while.body.lr.ph ], [ %add.ptr, %while.body ]
  %out.addr.029 = phi i8* [ %out, %while.body.lr.ph ], [ %add.ptr4, %while.body ]
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #5
  %call = call i32 @EVP_CIPHER_CTX_get_num(%struct.evp_cipher_ctx_st* noundef %ctx) #4
  store i32 %call, i32* %num, align 4, !tbaa !9
  %call1 = call i8* @EVP_CIPHER_CTX_get_cipher_data(%struct.evp_cipher_ctx_st* noundef %ctx) #4
  %2 = bitcast i8* %call1 to %struct.DES_ks*
  %call2 = call i32 @EVP_CIPHER_CTX_is_encrypting(%struct.evp_cipher_ctx_st* noundef %ctx) #4
  call void @DES_cfb64_encrypt(i8* noundef %in.addr.030, i8* noundef %out.addr.029, i64 noundef 4611686018427387904, %struct.DES_ks* noundef %2, [8 x i8]* noundef nonnull %1, i32* noundef nonnull %num, i32 noundef %call2) #4
  %3 = load i32, i32* %num, align 4, !tbaa !9
  %call3 = call i32 @EVP_CIPHER_CTX_set_num(%struct.evp_cipher_ctx_st* noundef %ctx, i32 noundef %3) #4
  %sub = add i64 %inl.addr.031, -4611686018427387904
  %add.ptr = getelementptr inbounds i8, i8* %in.addr.030, i64 4611686018427387904
  %add.ptr4 = getelementptr inbounds i8, i8* %out.addr.029, i64 4611686018427387904
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #5
  %cmp = icmp slt i64 %inl.addr.031, 4611686018427387904
  br i1 %cmp, label %while.body, label %while.end, !llvm.loop !11

while.end:                                        ; preds = %while.body, %entry
  %out.addr.0.lcssa = phi i8* [ %out, %entry ], [ %add.ptr4, %while.body ]
  %in.addr.0.lcssa = phi i8* [ %in, %entry ], [ %add.ptr, %while.body ]
  %inl.addr.0.lcssa = phi i64 [ %inl, %entry ], [ %sub, %while.body ]
  %tobool.not = icmp eq i64 %inl.addr.0.lcssa, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %while.end
  %4 = bitcast i32* %num5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %4) #5
  %call6 = call i32 @EVP_CIPHER_CTX_get_num(%struct.evp_cipher_ctx_st* noundef %ctx) #4
  store i32 %call6, i32* %num5, align 4, !tbaa !9
  %call7 = call i8* @EVP_CIPHER_CTX_get_cipher_data(%struct.evp_cipher_ctx_st* noundef %ctx) #4
  %5 = bitcast i8* %call7 to %struct.DES_ks*
  %arraydecay9 = getelementptr inbounds %struct.evp_cipher_ctx_st, %struct.evp_cipher_ctx_st* %ctx, i64 0, i32 5, i64 0
  %6 = bitcast i8* %arraydecay9 to [8 x i8]*
  %call10 = call i32 @EVP_CIPHER_CTX_is_encrypting(%struct.evp_cipher_ctx_st* noundef %ctx) #4
  call void @DES_cfb64_encrypt(i8* noundef %in.addr.0.lcssa, i8* noundef %out.addr.0.lcssa, i64 noundef %inl.addr.0.lcssa, %struct.DES_ks* noundef %5, [8 x i8]* noundef nonnull %6, i32* noundef nonnull %num5, i32 noundef %call10) #4
  %7 = load i32, i32* %num5, align 4, !tbaa !9
  %call11 = call i32 @EVP_CIPHER_CTX_set_num(%struct.evp_cipher_ctx_st* noundef %ctx, i32 noundef %7) #4
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %4) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %while.end
  ret i32 1
}

declare i32 @EVP_CIPHER_CTX_get_num(%struct.evp_cipher_ctx_st* noundef) local_unnamed_addr #2

declare void @DES_cfb64_encrypt(i8* noundef, i8* noundef, i64 noundef, %struct.DES_ks* noundef, [8 x i8]* noundef, i32* noundef, i32 noundef) local_unnamed_addr #2

declare i32 @EVP_CIPHER_CTX_set_num(%struct.evp_cipher_ctx_st* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal i32 @des_ofb_cipher(%struct.evp_cipher_ctx_st* noundef %ctx, i8* noundef %out, i8* noundef %in, i64 noundef %inl) #1 {
entry:
  %num = alloca i32, align 4
  %num4 = alloca i32, align 4
  %cmp24 = icmp ugt i64 %inl, 4611686018427387903
  br i1 %cmp24, label %while.body.lr.ph, label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %0 = bitcast i32* %num to i8*
  %arraydecay = getelementptr inbounds %struct.evp_cipher_ctx_st, %struct.evp_cipher_ctx_st* %ctx, i64 0, i32 5, i64 0
  %1 = bitcast i8* %arraydecay to [8 x i8]*
  br label %while.body

while.body:                                       ; preds = %while.body.lr.ph, %while.body
  %inl.addr.027 = phi i64 [ %inl, %while.body.lr.ph ], [ %sub, %while.body ]
  %in.addr.026 = phi i8* [ %in, %while.body.lr.ph ], [ %add.ptr, %while.body ]
  %out.addr.025 = phi i8* [ %out, %while.body.lr.ph ], [ %add.ptr3, %while.body ]
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #5
  %call = call i32 @EVP_CIPHER_CTX_get_num(%struct.evp_cipher_ctx_st* noundef %ctx) #4
  store i32 %call, i32* %num, align 4, !tbaa !9
  %call1 = call i8* @EVP_CIPHER_CTX_get_cipher_data(%struct.evp_cipher_ctx_st* noundef %ctx) #4
  %2 = bitcast i8* %call1 to %struct.DES_ks*
  call void @DES_ofb64_encrypt(i8* noundef %in.addr.026, i8* noundef %out.addr.025, i64 noundef 4611686018427387904, %struct.DES_ks* noundef %2, [8 x i8]* noundef nonnull %1, i32* noundef nonnull %num) #4
  %3 = load i32, i32* %num, align 4, !tbaa !9
  %call2 = call i32 @EVP_CIPHER_CTX_set_num(%struct.evp_cipher_ctx_st* noundef %ctx, i32 noundef %3) #4
  %sub = add i64 %inl.addr.027, -4611686018427387904
  %add.ptr = getelementptr inbounds i8, i8* %in.addr.026, i64 4611686018427387904
  %add.ptr3 = getelementptr inbounds i8, i8* %out.addr.025, i64 4611686018427387904
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #5
  %cmp = icmp slt i64 %inl.addr.027, 4611686018427387904
  br i1 %cmp, label %while.body, label %while.end, !llvm.loop !12

while.end:                                        ; preds = %while.body, %entry
  %out.addr.0.lcssa = phi i8* [ %out, %entry ], [ %add.ptr3, %while.body ]
  %in.addr.0.lcssa = phi i8* [ %in, %entry ], [ %add.ptr, %while.body ]
  %inl.addr.0.lcssa = phi i64 [ %inl, %entry ], [ %sub, %while.body ]
  %tobool.not = icmp eq i64 %inl.addr.0.lcssa, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %while.end
  %4 = bitcast i32* %num4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %4) #5
  %call5 = call i32 @EVP_CIPHER_CTX_get_num(%struct.evp_cipher_ctx_st* noundef %ctx) #4
  store i32 %call5, i32* %num4, align 4, !tbaa !9
  %call6 = call i8* @EVP_CIPHER_CTX_get_cipher_data(%struct.evp_cipher_ctx_st* noundef %ctx) #4
  %5 = bitcast i8* %call6 to %struct.DES_ks*
  %arraydecay8 = getelementptr inbounds %struct.evp_cipher_ctx_st, %struct.evp_cipher_ctx_st* %ctx, i64 0, i32 5, i64 0
  %6 = bitcast i8* %arraydecay8 to [8 x i8]*
  call void @DES_ofb64_encrypt(i8* noundef %in.addr.0.lcssa, i8* noundef %out.addr.0.lcssa, i64 noundef %inl.addr.0.lcssa, %struct.DES_ks* noundef %5, [8 x i8]* noundef nonnull %6, i32* noundef nonnull %num4) #4
  %7 = load i32, i32* %num4, align 4, !tbaa !9
  %call9 = call i32 @EVP_CIPHER_CTX_set_num(%struct.evp_cipher_ctx_st* noundef %ctx, i32 noundef %7) #4
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %4) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %while.end
  ret i32 1
}

declare void @DES_ofb64_encrypt(i8* noundef, i8* noundef, i64 noundef, %struct.DES_ks* noundef, [8 x i8]* noundef, i32* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal i32 @des_ecb_cipher(%struct.evp_cipher_ctx_st* noundef %ctx, i8* noundef %out, i8* noundef %in, i64 noundef %inl) #1 {
entry:
  %call = tail call %struct.evp_cipher_st* @EVP_CIPHER_CTX_get0_cipher(%struct.evp_cipher_ctx_st* noundef %ctx) #4
  %block_size = getelementptr inbounds %struct.evp_cipher_st, %struct.evp_cipher_st* %call, i64 0, i32 1
  %0 = load i32, i32* %block_size, align 4, !tbaa !13
  %conv = sext i32 %0 to i64
  %cmp = icmp ugt i64 %conv, %inl
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %sub = sub i64 %inl, %conv
  br label %for.body

for.body:                                         ; preds = %if.end, %for.body
  %i.019 = phi i64 [ 0, %if.end ], [ %add, %for.body ]
  %add.ptr = getelementptr inbounds i8, i8* %in, i64 %i.019
  %1 = bitcast i8* %add.ptr to [8 x i8]*
  %add.ptr4 = getelementptr inbounds i8, i8* %out, i64 %i.019
  %2 = bitcast i8* %add.ptr4 to [8 x i8]*
  %call5 = tail call i8* @EVP_CIPHER_CTX_get_cipher_data(%struct.evp_cipher_ctx_st* noundef %ctx) #4
  %3 = bitcast i8* %call5 to %struct.DES_ks*
  %call6 = tail call i32 @EVP_CIPHER_CTX_is_encrypting(%struct.evp_cipher_ctx_st* noundef %ctx) #4
  tail call void @DES_ecb_encrypt([8 x i8]* noundef %1, [8 x i8]* noundef %2, %struct.DES_ks* noundef %3, i32 noundef %call6) #4
  %add = add i64 %i.019, %conv
  %cmp2.not = icmp ugt i64 %add, %sub
  br i1 %cmp2.not, label %cleanup, label %for.body, !llvm.loop !17

cleanup:                                          ; preds = %for.body, %entry
  ret i32 1
}

declare %struct.evp_cipher_st* @EVP_CIPHER_CTX_get0_cipher(%struct.evp_cipher_ctx_st* noundef) local_unnamed_addr #2

declare void @DES_ecb_encrypt([8 x i8]* noundef, [8 x i8]* noundef, %struct.DES_ks* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal i32 @des_cfb1_cipher(%struct.evp_cipher_ctx_st* noundef %ctx, i8* nocapture noundef %out, i8* nocapture noundef readonly %in, i64 noundef %inl) #1 {
entry:
  %c = alloca [1 x i8], align 1
  %d = alloca [1 x i8], align 1
  %0 = getelementptr inbounds [1 x i8], [1 x i8]* %c, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %0) #5
  %1 = getelementptr inbounds [1 x i8], [1 x i8]* %d, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %1) #5
  %tobool59.not = icmp eq i64 %inl, 0
  br i1 %tobool59.not, label %while.end, label %for.cond.preheader.lr.ph

for.cond.preheader.lr.ph:                         ; preds = %entry
  %cmp = icmp ult i64 %inl, 576460752303423488
  %spec.select = select i1 %cmp, i64 %inl, i64 576460752303423488
  %arraydecay7 = getelementptr inbounds %struct.evp_cipher_ctx_st, %struct.evp_cipher_ctx_st* %ctx, i64 0, i32 5, i64 0
  %2 = bitcast i8* %arraydecay7 to [8 x i8]*
  br label %for.cond.preheader

for.cond.preheader:                               ; preds = %for.cond.preheader.lr.ph, %for.end
  %chunk.163 = phi i64 [ %spec.select, %for.cond.preheader.lr.ph ], [ %spec.select56, %for.end ]
  %inl.addr.062 = phi i64 [ %inl, %for.cond.preheader.lr.ph ], [ %sub24, %for.end ]
  %in.addr.061 = phi i8* [ %in, %for.cond.preheader.lr.ph ], [ %add.ptr, %for.end ]
  %out.addr.060 = phi i8* [ %out, %for.cond.preheader.lr.ph ], [ %add.ptr25, %for.end ]
  %mul = shl i64 %chunk.163, 3
  %cmp257.not = icmp eq i64 %mul, 0
  br i1 %cmp257.not, label %for.end, label %for.body

for.body:                                         ; preds = %for.cond.preheader, %for.body
  %n.058 = phi i64 [ %inc, %for.body ], [ 0, %for.cond.preheader ]
  %div = lshr i64 %n.058, 3
  %arrayidx = getelementptr inbounds i8, i8* %in.addr.061, i64 %div
  %3 = load i8, i8* %arrayidx, align 1, !tbaa !4
  %conv = zext i8 %3 to i32
  %4 = trunc i64 %n.058 to i32
  %5 = and i32 %4, 7
  %sh_prom = xor i32 %5, 7
  %shl = shl nuw i32 1, %sh_prom
  %and = and i32 %shl, %conv
  %tobool3.not = icmp eq i32 %and, 0
  %conv4 = select i1 %tobool3.not, i8 0, i8 -128
  store i8 %conv4, i8* %0, align 1, !tbaa !4
  %call = call i8* @EVP_CIPHER_CTX_get_cipher_data(%struct.evp_cipher_ctx_st* noundef %ctx) #4
  %6 = bitcast i8* %call to %struct.DES_ks*
  %call8 = call i32 @EVP_CIPHER_CTX_is_encrypting(%struct.evp_cipher_ctx_st* noundef %ctx) #4
  call void @DES_cfb_encrypt(i8* noundef nonnull %0, i8* noundef nonnull %1, i32 noundef 1, i64 noundef 1, %struct.DES_ks* noundef %6, [8 x i8]* noundef nonnull %2, i32 noundef %call8) #4
  %arrayidx10 = getelementptr inbounds i8, i8* %out.addr.060, i64 %div
  %7 = load i8, i8* %arrayidx10, align 1, !tbaa !4
  %conv11 = zext i8 %7 to i32
  %neg = ashr i32 -129, %5
  %and14 = and i32 %neg, %conv11
  %8 = load i8, i8* %1, align 1, !tbaa !4
  %9 = and i8 %8, -128
  %and17 = zext i8 %9 to i32
  %shr20 = lshr i32 %and17, %5
  %or = or i32 %shr20, %and14
  %conv21 = trunc i32 %or to i8
  store i8 %conv21, i8* %arrayidx10, align 1, !tbaa !4
  %inc = add nuw i64 %n.058, 1
  %exitcond.not = icmp eq i64 %inc, %mul
  br i1 %exitcond.not, label %for.end, label %for.body, !llvm.loop !18

for.end:                                          ; preds = %for.body, %for.cond.preheader
  %sub24 = sub i64 %inl.addr.062, %chunk.163
  %add.ptr = getelementptr inbounds i8, i8* %in.addr.061, i64 %chunk.163
  %add.ptr25 = getelementptr inbounds i8, i8* %out.addr.060, i64 %chunk.163
  %cmp26 = icmp ult i64 %sub24, %chunk.163
  %spec.select56 = select i1 %cmp26, i64 %sub24, i64 %chunk.163
  %tobool.not = icmp eq i64 %sub24, 0
  br i1 %tobool.not, label %while.end, label %for.cond.preheader, !llvm.loop !19

while.end:                                        ; preds = %for.end, %entry
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %1) #5
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %0) #5
  ret i32 1
}

declare void @DES_cfb_encrypt(i8* noundef, i8* noundef, i32 noundef, i64 noundef, %struct.DES_ks* noundef, [8 x i8]* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal i32 @des_cfb8_cipher(%struct.evp_cipher_ctx_st* noundef %ctx, i8* noundef %out, i8* noundef %in, i64 noundef %inl) #1 {
entry:
  %cmp19 = icmp ugt i64 %inl, 4611686018427387903
  br i1 %cmp19, label %while.body.lr.ph, label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %arraydecay = getelementptr inbounds %struct.evp_cipher_ctx_st, %struct.evp_cipher_ctx_st* %ctx, i64 0, i32 5, i64 0
  %0 = bitcast i8* %arraydecay to [8 x i8]*
  br label %while.body

while.body:                                       ; preds = %while.body.lr.ph, %while.body
  %inl.addr.022 = phi i64 [ %inl, %while.body.lr.ph ], [ %sub, %while.body ]
  %in.addr.021 = phi i8* [ %in, %while.body.lr.ph ], [ %add.ptr, %while.body ]
  %out.addr.020 = phi i8* [ %out, %while.body.lr.ph ], [ %add.ptr2, %while.body ]
  %call = tail call i8* @EVP_CIPHER_CTX_get_cipher_data(%struct.evp_cipher_ctx_st* noundef %ctx) #4
  %1 = bitcast i8* %call to %struct.DES_ks*
  %call1 = tail call i32 @EVP_CIPHER_CTX_is_encrypting(%struct.evp_cipher_ctx_st* noundef %ctx) #4
  tail call void @DES_cfb_encrypt(i8* noundef %in.addr.021, i8* noundef %out.addr.020, i32 noundef 8, i64 noundef 4611686018427387904, %struct.DES_ks* noundef %1, [8 x i8]* noundef nonnull %0, i32 noundef %call1) #4
  %sub = add i64 %inl.addr.022, -4611686018427387904
  %add.ptr = getelementptr inbounds i8, i8* %in.addr.021, i64 4611686018427387904
  %add.ptr2 = getelementptr inbounds i8, i8* %out.addr.020, i64 4611686018427387904
  %cmp = icmp slt i64 %inl.addr.022, 4611686018427387904
  br i1 %cmp, label %while.body, label %while.end, !llvm.loop !20

while.end:                                        ; preds = %while.body, %entry
  %out.addr.0.lcssa = phi i8* [ %out, %entry ], [ %add.ptr2, %while.body ]
  %in.addr.0.lcssa = phi i8* [ %in, %entry ], [ %add.ptr, %while.body ]
  %inl.addr.0.lcssa = phi i64 [ %inl, %entry ], [ %sub, %while.body ]
  %tobool.not = icmp eq i64 %inl.addr.0.lcssa, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %while.end
  %call3 = tail call i8* @EVP_CIPHER_CTX_get_cipher_data(%struct.evp_cipher_ctx_st* noundef %ctx) #4
  %2 = bitcast i8* %call3 to %struct.DES_ks*
  %arraydecay5 = getelementptr inbounds %struct.evp_cipher_ctx_st, %struct.evp_cipher_ctx_st* %ctx, i64 0, i32 5, i64 0
  %3 = bitcast i8* %arraydecay5 to [8 x i8]*
  %call6 = tail call i32 @EVP_CIPHER_CTX_is_encrypting(%struct.evp_cipher_ctx_st* noundef %ctx) #4
  tail call void @DES_cfb_encrypt(i8* noundef %in.addr.0.lcssa, i8* noundef %out.addr.0.lcssa, i32 noundef 8, i64 noundef %inl.addr.0.lcssa, %struct.DES_ks* noundef %2, [8 x i8]* noundef nonnull %3, i32 noundef %call6) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %while.end
  ret i32 1
}

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #4 = { nobuiltin nounwind "no-builtins" }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{!"clang version 14.0.0"}
!4 = !{!5, !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = distinct !{!7, !8}
!8 = !{!"llvm.loop.mustprogress"}
!9 = !{!10, !10, i64 0}
!10 = !{!"int", !5, i64 0}
!11 = distinct !{!11, !8}
!12 = distinct !{!12, !8}
!13 = !{!14, !10, i64 4}
!14 = !{!"evp_cipher_st", !10, i64 0, !10, i64 4, !10, i64 8, !10, i64 12, !15, i64 16, !10, i64 24, !16, i64 32, !16, i64 40, !16, i64 48, !10, i64 56, !16, i64 64, !16, i64 72, !16, i64 80, !16, i64 88, !10, i64 96, !16, i64 104, !16, i64 112, !16, i64 120, !5, i64 128, !16, i64 136, !16, i64 144, !16, i64 152, !16, i64 160, !16, i64 168, !16, i64 176, !16, i64 184, !16, i64 192, !16, i64 200, !16, i64 208, !16, i64 216, !16, i64 224, !16, i64 232, !16, i64 240, !16, i64 248}
!15 = !{!"long", !5, i64 0}
!16 = !{!"any pointer", !5, i64 0}
!17 = distinct !{!17, !8}
!18 = distinct !{!18, !8}
!19 = distinct !{!19, !8}
!20 = distinct !{!20, !8}
