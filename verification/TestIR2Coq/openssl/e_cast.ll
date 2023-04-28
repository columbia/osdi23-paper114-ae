; ModuleID = 'crypto/evp/e_cast.c'
source_filename = "crypto/evp/e_cast.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evp_cipher_st = type { i32, i32, i32, i32, i64, i32, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i32)*, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i64)*, i32 (%struct.evp_cipher_ctx_st*)*, i32, i32 (%struct.evp_cipher_ctx_st*, %struct.asn1_type_st*)*, i32 (%struct.evp_cipher_ctx_st*, %struct.asn1_type_st*)*, i32 (%struct.evp_cipher_ctx_st*, i32, i32, i8*)*, i8*, i32, i8*, i8*, %struct.ossl_provider_st*, i32, i8*, i8* (i8*)*, i32 (i8*, i8*, i64, i8*, i64, %struct.ossl_param_st*)*, i32 (i8*, i8*, i64, i8*, i64, %struct.ossl_param_st*)*, i32 (i8*, i8*, i64*, i64, i8*, i64)*, i32 (i8*, i8*, i64*, i64)*, i32 (i8*, i8*, i64*, i64, i8*, i64)*, void (i8*)*, i8* (i8*)*, i32 (%struct.ossl_param_st*)*, i32 (i8*, %struct.ossl_param_st*)*, i32 (i8*, %struct.ossl_param_st*)*, %struct.ossl_param_st* (i8*)*, %struct.ossl_param_st* (i8*, i8*)*, %struct.ossl_param_st* (i8*, i8*)* }
%struct.evp_cipher_ctx_st = type { %struct.evp_cipher_st*, %struct.engine_st*, i32, i32, [16 x i8], [16 x i8], [32 x i8], i32, i8*, i32, i64, i8*, i32, i32, [32 x i8], i8*, %struct.evp_cipher_st* }
%struct.engine_st = type opaque
%struct.asn1_type_st = type { i32, %union.anon }
%union.anon = type { i8* }
%struct.ossl_provider_st = type opaque
%struct.ossl_param_st = type { i8*, i32, i8*, i64, i64 }
%struct.cast_key_st = type { [32 x i32], i32 }

@cast5_cbc = internal constant %struct.evp_cipher_st { i32 108, i32 8, i32 16, i32 8, i64 10, i32 1, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i32)* @cast_init_key, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i64)* @cast5_cbc_cipher, i32 (%struct.evp_cipher_ctx_st*)* null, i32 132, i32 (%struct.evp_cipher_ctx_st*, %struct.asn1_type_st*)* @EVP_CIPHER_set_asn1_iv, i32 (%struct.evp_cipher_ctx_st*, %struct.asn1_type_st*)* @EVP_CIPHER_get_asn1_iv, i32 (%struct.evp_cipher_ctx_st*, i32, i32, i8*)* null, i8* null, i32 0, i8* null, i8* null, %struct.ossl_provider_st* null, i32 0, i8* null, i8* (i8*)* null, i32 (i8*, i8*, i64, i8*, i64, %struct.ossl_param_st*)* null, i32 (i8*, i8*, i64, i8*, i64, %struct.ossl_param_st*)* null, i32 (i8*, i8*, i64*, i64, i8*, i64)* null, i32 (i8*, i8*, i64*, i64)* null, i32 (i8*, i8*, i64*, i64, i8*, i64)* null, void (i8*)* null, i8* (i8*)* null, i32 (%struct.ossl_param_st*)* null, i32 (i8*, %struct.ossl_param_st*)* null, i32 (i8*, %struct.ossl_param_st*)* null, %struct.ossl_param_st* (i8*)* null, %struct.ossl_param_st* (i8*, i8*)* null, %struct.ossl_param_st* (i8*, i8*)* null }, align 8
@cast5_cfb64 = internal constant %struct.evp_cipher_st { i32 110, i32 1, i32 16, i32 8, i64 11, i32 1, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i32)* @cast_init_key, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i64)* @cast5_cfb64_cipher, i32 (%struct.evp_cipher_ctx_st*)* null, i32 132, i32 (%struct.evp_cipher_ctx_st*, %struct.asn1_type_st*)* @EVP_CIPHER_set_asn1_iv, i32 (%struct.evp_cipher_ctx_st*, %struct.asn1_type_st*)* @EVP_CIPHER_get_asn1_iv, i32 (%struct.evp_cipher_ctx_st*, i32, i32, i8*)* null, i8* null, i32 0, i8* null, i8* null, %struct.ossl_provider_st* null, i32 0, i8* null, i8* (i8*)* null, i32 (i8*, i8*, i64, i8*, i64, %struct.ossl_param_st*)* null, i32 (i8*, i8*, i64, i8*, i64, %struct.ossl_param_st*)* null, i32 (i8*, i8*, i64*, i64, i8*, i64)* null, i32 (i8*, i8*, i64*, i64)* null, i32 (i8*, i8*, i64*, i64, i8*, i64)* null, void (i8*)* null, i8* (i8*)* null, i32 (%struct.ossl_param_st*)* null, i32 (i8*, %struct.ossl_param_st*)* null, i32 (i8*, %struct.ossl_param_st*)* null, %struct.ossl_param_st* (i8*)* null, %struct.ossl_param_st* (i8*, i8*)* null, %struct.ossl_param_st* (i8*, i8*)* null }, align 8
@cast5_ofb = internal constant %struct.evp_cipher_st { i32 111, i32 1, i32 16, i32 8, i64 12, i32 1, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i32)* @cast_init_key, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i64)* @cast5_ofb_cipher, i32 (%struct.evp_cipher_ctx_st*)* null, i32 132, i32 (%struct.evp_cipher_ctx_st*, %struct.asn1_type_st*)* @EVP_CIPHER_set_asn1_iv, i32 (%struct.evp_cipher_ctx_st*, %struct.asn1_type_st*)* @EVP_CIPHER_get_asn1_iv, i32 (%struct.evp_cipher_ctx_st*, i32, i32, i8*)* null, i8* null, i32 0, i8* null, i8* null, %struct.ossl_provider_st* null, i32 0, i8* null, i8* (i8*)* null, i32 (i8*, i8*, i64, i8*, i64, %struct.ossl_param_st*)* null, i32 (i8*, i8*, i64, i8*, i64, %struct.ossl_param_st*)* null, i32 (i8*, i8*, i64*, i64, i8*, i64)* null, i32 (i8*, i8*, i64*, i64)* null, i32 (i8*, i8*, i64*, i64, i8*, i64)* null, void (i8*)* null, i8* (i8*)* null, i32 (%struct.ossl_param_st*)* null, i32 (i8*, %struct.ossl_param_st*)* null, i32 (i8*, %struct.ossl_param_st*)* null, %struct.ossl_param_st* (i8*)* null, %struct.ossl_param_st* (i8*, i8*)* null, %struct.ossl_param_st* (i8*, i8*)* null }, align 8
@cast5_ecb = internal constant %struct.evp_cipher_st { i32 109, i32 8, i32 16, i32 0, i64 9, i32 1, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i32)* @cast_init_key, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i64)* @cast5_ecb_cipher, i32 (%struct.evp_cipher_ctx_st*)* null, i32 132, i32 (%struct.evp_cipher_ctx_st*, %struct.asn1_type_st*)* @EVP_CIPHER_set_asn1_iv, i32 (%struct.evp_cipher_ctx_st*, %struct.asn1_type_st*)* @EVP_CIPHER_get_asn1_iv, i32 (%struct.evp_cipher_ctx_st*, i32, i32, i8*)* null, i8* null, i32 0, i8* null, i8* null, %struct.ossl_provider_st* null, i32 0, i8* null, i8* (i8*)* null, i32 (i8*, i8*, i64, i8*, i64, %struct.ossl_param_st*)* null, i32 (i8*, i8*, i64, i8*, i64, %struct.ossl_param_st*)* null, i32 (i8*, i8*, i64*, i64, i8*, i64)* null, i32 (i8*, i8*, i64*, i64)* null, i32 (i8*, i8*, i64*, i64, i8*, i64)* null, void (i8*)* null, i8* (i8*)* null, i32 (%struct.ossl_param_st*)* null, i32 (i8*, %struct.ossl_param_st*)* null, i32 (i8*, %struct.ossl_param_st*)* null, %struct.ossl_param_st* (i8*)* null, %struct.ossl_param_st* (i8*, i8*)* null, %struct.ossl_param_st* (i8*, i8*)* null }, align 8

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define nonnull %struct.evp_cipher_st* @EVP_cast5_cbc() local_unnamed_addr #0 {
entry:
  ret %struct.evp_cipher_st* @cast5_cbc
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define nonnull %struct.evp_cipher_st* @EVP_cast5_cfb64() local_unnamed_addr #0 {
entry:
  ret %struct.evp_cipher_st* @cast5_cfb64
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define nonnull %struct.evp_cipher_st* @EVP_cast5_ofb() local_unnamed_addr #0 {
entry:
  ret %struct.evp_cipher_st* @cast5_ofb
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define nonnull %struct.evp_cipher_st* @EVP_cast5_ecb() local_unnamed_addr #0 {
entry:
  ret %struct.evp_cipher_st* @cast5_ecb
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @cast_init_key(%struct.evp_cipher_ctx_st* noundef %ctx, i8* noundef %key, i8* nocapture noundef readnone %iv, i32 noundef %enc) #1 {
entry:
  %call = tail call i32 @EVP_CIPHER_CTX_get_key_length(%struct.evp_cipher_ctx_st* noundef %ctx) #4
  %cmp = icmp slt i32 %call, 1
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call1 = tail call i8* @EVP_CIPHER_CTX_get_cipher_data(%struct.evp_cipher_ctx_st* noundef %ctx) #4
  %ks = bitcast i8* %call1 to %struct.cast_key_st*
  tail call void @CAST_set_key(%struct.cast_key_st* noundef %ks, i32 noundef %call, i8* noundef %key) #4
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @cast5_cbc_cipher(%struct.evp_cipher_ctx_st* noundef %ctx, i8* noundef %out, i8* noundef %in, i64 noundef %inl) #1 {
entry:
  %cmp20 = icmp ugt i64 %inl, 4611686018427387903
  br i1 %cmp20, label %while.body.lr.ph, label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %arraydecay = getelementptr inbounds %struct.evp_cipher_ctx_st, %struct.evp_cipher_ctx_st* %ctx, i64 0, i32 5, i64 0
  br label %while.body

while.body:                                       ; preds = %while.body.lr.ph, %while.body
  %inl.addr.023 = phi i64 [ %inl, %while.body.lr.ph ], [ %sub, %while.body ]
  %in.addr.022 = phi i8* [ %in, %while.body.lr.ph ], [ %add.ptr, %while.body ]
  %out.addr.021 = phi i8* [ %out, %while.body.lr.ph ], [ %add.ptr2, %while.body ]
  %call = tail call i8* @EVP_CIPHER_CTX_get_cipher_data(%struct.evp_cipher_ctx_st* noundef %ctx) #4
  %ks = bitcast i8* %call to %struct.cast_key_st*
  %call1 = tail call i32 @EVP_CIPHER_CTX_is_encrypting(%struct.evp_cipher_ctx_st* noundef %ctx) #4
  tail call void @CAST_cbc_encrypt(i8* noundef %in.addr.022, i8* noundef %out.addr.021, i64 noundef 4611686018427387904, %struct.cast_key_st* noundef %ks, i8* noundef nonnull %arraydecay, i32 noundef %call1) #4
  %sub = add i64 %inl.addr.023, -4611686018427387904
  %add.ptr = getelementptr inbounds i8, i8* %in.addr.022, i64 4611686018427387904
  %add.ptr2 = getelementptr inbounds i8, i8* %out.addr.021, i64 4611686018427387904
  %cmp = icmp slt i64 %inl.addr.023, 4611686018427387904
  br i1 %cmp, label %while.body, label %while.end, !llvm.loop !4

while.end:                                        ; preds = %while.body, %entry
  %out.addr.0.lcssa = phi i8* [ %out, %entry ], [ %add.ptr2, %while.body ]
  %in.addr.0.lcssa = phi i8* [ %in, %entry ], [ %add.ptr, %while.body ]
  %inl.addr.0.lcssa = phi i64 [ %inl, %entry ], [ %sub, %while.body ]
  %tobool.not = icmp eq i64 %inl.addr.0.lcssa, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %while.end
  %call3 = tail call i8* @EVP_CIPHER_CTX_get_cipher_data(%struct.evp_cipher_ctx_st* noundef %ctx) #4
  %ks4 = bitcast i8* %call3 to %struct.cast_key_st*
  %arraydecay6 = getelementptr inbounds %struct.evp_cipher_ctx_st, %struct.evp_cipher_ctx_st* %ctx, i64 0, i32 5, i64 0
  %call7 = tail call i32 @EVP_CIPHER_CTX_is_encrypting(%struct.evp_cipher_ctx_st* noundef %ctx) #4
  tail call void @CAST_cbc_encrypt(i8* noundef %in.addr.0.lcssa, i8* noundef %out.addr.0.lcssa, i64 noundef %inl.addr.0.lcssa, %struct.cast_key_st* noundef %ks4, i8* noundef nonnull %arraydecay6, i32 noundef %call7) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %while.end
  ret i32 1
}

declare i32 @EVP_CIPHER_set_asn1_iv(%struct.evp_cipher_ctx_st* noundef, %struct.asn1_type_st* noundef) #2

declare i32 @EVP_CIPHER_get_asn1_iv(%struct.evp_cipher_ctx_st* noundef, %struct.asn1_type_st* noundef) #2

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #3

declare i32 @EVP_CIPHER_CTX_get_key_length(%struct.evp_cipher_ctx_st* noundef) local_unnamed_addr #2

declare void @CAST_set_key(%struct.cast_key_st* noundef, i32 noundef, i8* noundef) local_unnamed_addr #2

declare i8* @EVP_CIPHER_CTX_get_cipher_data(%struct.evp_cipher_ctx_st* noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #3

declare void @CAST_cbc_encrypt(i8* noundef, i8* noundef, i64 noundef, %struct.cast_key_st* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare i32 @EVP_CIPHER_CTX_is_encrypting(%struct.evp_cipher_ctx_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal i32 @cast5_cfb64_cipher(%struct.evp_cipher_ctx_st* noundef %ctx, i8* noundef %out, i8* noundef %in, i64 noundef %inl) #1 {
entry:
  %num = alloca i32, align 4
  %tobool29.not = icmp eq i64 %inl, 0
  br i1 %tobool29.not, label %while.end, label %while.body.lr.ph

while.body.lr.ph:                                 ; preds = %entry
  %cmp = icmp ult i64 %inl, 4611686018427387904
  %spec.select = select i1 %cmp, i64 %inl, i64 4611686018427387904
  %0 = bitcast i32* %num to i8*
  %arraydecay = getelementptr inbounds %struct.evp_cipher_ctx_st, %struct.evp_cipher_ctx_st* %ctx, i64 0, i32 5, i64 0
  br label %while.body

while.body:                                       ; preds = %while.body.lr.ph, %while.body
  %chunk.133 = phi i64 [ %spec.select, %while.body.lr.ph ], [ %spec.select28, %while.body ]
  %inl.addr.032 = phi i64 [ %inl, %while.body.lr.ph ], [ %sub, %while.body ]
  %in.addr.031 = phi i8* [ %in, %while.body.lr.ph ], [ %add.ptr, %while.body ]
  %out.addr.030 = phi i8* [ %out, %while.body.lr.ph ], [ %add.ptr5, %while.body ]
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #5
  %call = call i32 @EVP_CIPHER_CTX_get_num(%struct.evp_cipher_ctx_st* noundef %ctx) #4
  store i32 %call, i32* %num, align 4, !tbaa !6
  %call2 = call i8* @EVP_CIPHER_CTX_get_cipher_data(%struct.evp_cipher_ctx_st* noundef %ctx) #4
  %ks = bitcast i8* %call2 to %struct.cast_key_st*
  %call3 = call i32 @EVP_CIPHER_CTX_is_encrypting(%struct.evp_cipher_ctx_st* noundef %ctx) #4
  call void @CAST_cfb64_encrypt(i8* noundef %in.addr.031, i8* noundef %out.addr.030, i64 noundef %chunk.133, %struct.cast_key_st* noundef %ks, i8* noundef nonnull %arraydecay, i32* noundef nonnull %num, i32 noundef %call3) #4
  %1 = load i32, i32* %num, align 4, !tbaa !6
  %call4 = call i32 @EVP_CIPHER_CTX_set_num(%struct.evp_cipher_ctx_st* noundef %ctx, i32 noundef %1) #4
  %sub = sub i64 %inl.addr.032, %chunk.133
  %add.ptr = getelementptr inbounds i8, i8* %in.addr.031, i64 %chunk.133
  %add.ptr5 = getelementptr inbounds i8, i8* %out.addr.030, i64 %chunk.133
  %cmp6 = icmp ult i64 %sub, %chunk.133
  %spec.select28 = select i1 %cmp6, i64 %sub, i64 %chunk.133
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #5
  %tobool.not = icmp eq i64 %sub, 0
  br i1 %tobool.not, label %while.end, label %while.body, !llvm.loop !10

while.end:                                        ; preds = %while.body, %entry
  ret i32 1
}

declare i32 @EVP_CIPHER_CTX_get_num(%struct.evp_cipher_ctx_st* noundef) local_unnamed_addr #2

declare void @CAST_cfb64_encrypt(i8* noundef, i8* noundef, i64 noundef, %struct.cast_key_st* noundef, i8* noundef, i32* noundef, i32 noundef) local_unnamed_addr #2

declare i32 @EVP_CIPHER_CTX_set_num(%struct.evp_cipher_ctx_st* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal i32 @cast5_ofb_cipher(%struct.evp_cipher_ctx_st* noundef %ctx, i8* noundef %out, i8* noundef %in, i64 noundef %inl) #1 {
entry:
  %num = alloca i32, align 4
  %num4 = alloca i32, align 4
  %cmp25 = icmp ugt i64 %inl, 4611686018427387903
  br i1 %cmp25, label %while.body.lr.ph, label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %0 = bitcast i32* %num to i8*
  %arraydecay = getelementptr inbounds %struct.evp_cipher_ctx_st, %struct.evp_cipher_ctx_st* %ctx, i64 0, i32 5, i64 0
  br label %while.body

while.body:                                       ; preds = %while.body.lr.ph, %while.body
  %inl.addr.028 = phi i64 [ %inl, %while.body.lr.ph ], [ %sub, %while.body ]
  %in.addr.027 = phi i8* [ %in, %while.body.lr.ph ], [ %add.ptr, %while.body ]
  %out.addr.026 = phi i8* [ %out, %while.body.lr.ph ], [ %add.ptr3, %while.body ]
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #5
  %call = call i32 @EVP_CIPHER_CTX_get_num(%struct.evp_cipher_ctx_st* noundef %ctx) #4
  store i32 %call, i32* %num, align 4, !tbaa !6
  %call1 = call i8* @EVP_CIPHER_CTX_get_cipher_data(%struct.evp_cipher_ctx_st* noundef %ctx) #4
  %ks = bitcast i8* %call1 to %struct.cast_key_st*
  call void @CAST_ofb64_encrypt(i8* noundef %in.addr.027, i8* noundef %out.addr.026, i64 noundef 4611686018427387904, %struct.cast_key_st* noundef %ks, i8* noundef nonnull %arraydecay, i32* noundef nonnull %num) #4
  %1 = load i32, i32* %num, align 4, !tbaa !6
  %call2 = call i32 @EVP_CIPHER_CTX_set_num(%struct.evp_cipher_ctx_st* noundef %ctx, i32 noundef %1) #4
  %sub = add i64 %inl.addr.028, -4611686018427387904
  %add.ptr = getelementptr inbounds i8, i8* %in.addr.027, i64 4611686018427387904
  %add.ptr3 = getelementptr inbounds i8, i8* %out.addr.026, i64 4611686018427387904
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #5
  %cmp = icmp slt i64 %inl.addr.028, 4611686018427387904
  br i1 %cmp, label %while.body, label %while.end, !llvm.loop !11

while.end:                                        ; preds = %while.body, %entry
  %out.addr.0.lcssa = phi i8* [ %out, %entry ], [ %add.ptr3, %while.body ]
  %in.addr.0.lcssa = phi i8* [ %in, %entry ], [ %add.ptr, %while.body ]
  %inl.addr.0.lcssa = phi i64 [ %inl, %entry ], [ %sub, %while.body ]
  %tobool.not = icmp eq i64 %inl.addr.0.lcssa, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %while.end
  %2 = bitcast i32* %num4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %2) #5
  %call5 = call i32 @EVP_CIPHER_CTX_get_num(%struct.evp_cipher_ctx_st* noundef %ctx) #4
  store i32 %call5, i32* %num4, align 4, !tbaa !6
  %call6 = call i8* @EVP_CIPHER_CTX_get_cipher_data(%struct.evp_cipher_ctx_st* noundef %ctx) #4
  %ks7 = bitcast i8* %call6 to %struct.cast_key_st*
  %arraydecay9 = getelementptr inbounds %struct.evp_cipher_ctx_st, %struct.evp_cipher_ctx_st* %ctx, i64 0, i32 5, i64 0
  call void @CAST_ofb64_encrypt(i8* noundef %in.addr.0.lcssa, i8* noundef %out.addr.0.lcssa, i64 noundef %inl.addr.0.lcssa, %struct.cast_key_st* noundef %ks7, i8* noundef nonnull %arraydecay9, i32* noundef nonnull %num4) #4
  %3 = load i32, i32* %num4, align 4, !tbaa !6
  %call10 = call i32 @EVP_CIPHER_CTX_set_num(%struct.evp_cipher_ctx_st* noundef %ctx, i32 noundef %3) #4
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %while.end
  ret i32 1
}

declare void @CAST_ofb64_encrypt(i8* noundef, i8* noundef, i64 noundef, %struct.cast_key_st* noundef, i8* noundef, i32* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal i32 @cast5_ecb_cipher(%struct.evp_cipher_ctx_st* noundef %ctx, i8* noundef %out, i8* noundef %in, i64 noundef %inl) #1 {
entry:
  %call = tail call %struct.evp_cipher_st* @EVP_CIPHER_CTX_get0_cipher(%struct.evp_cipher_ctx_st* noundef %ctx) #4
  %block_size = getelementptr inbounds %struct.evp_cipher_st, %struct.evp_cipher_st* %call, i64 0, i32 1
  %0 = load i32, i32* %block_size, align 4, !tbaa !12
  %conv = sext i32 %0 to i64
  %cmp = icmp ugt i64 %conv, %inl
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %sub = sub i64 %inl, %conv
  br label %for.body

for.body:                                         ; preds = %if.end, %for.body
  %i.019 = phi i64 [ 0, %if.end ], [ %add, %for.body ]
  %add.ptr = getelementptr inbounds i8, i8* %in, i64 %i.019
  %add.ptr4 = getelementptr inbounds i8, i8* %out, i64 %i.019
  %call5 = tail call i8* @EVP_CIPHER_CTX_get_cipher_data(%struct.evp_cipher_ctx_st* noundef %ctx) #4
  %ks = bitcast i8* %call5 to %struct.cast_key_st*
  %call6 = tail call i32 @EVP_CIPHER_CTX_is_encrypting(%struct.evp_cipher_ctx_st* noundef %ctx) #4
  tail call void @CAST_ecb_encrypt(i8* noundef %add.ptr, i8* noundef %add.ptr4, %struct.cast_key_st* noundef %ks, i32 noundef %call6) #4
  %add = add i64 %i.019, %conv
  %cmp2.not = icmp ugt i64 %add, %sub
  br i1 %cmp2.not, label %cleanup, label %for.body, !llvm.loop !16

cleanup:                                          ; preds = %for.body, %entry
  ret i32 1
}

declare %struct.evp_cipher_st* @EVP_CIPHER_CTX_get0_cipher(%struct.evp_cipher_ctx_st* noundef) local_unnamed_addr #2

declare void @CAST_ecb_encrypt(i8* noundef, i8* noundef, %struct.cast_key_st* noundef, i32 noundef) local_unnamed_addr #2

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
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = !{!7, !7, i64 0}
!7 = !{!"int", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = distinct !{!10, !5}
!11 = distinct !{!11, !5}
!12 = !{!13, !7, i64 4}
!13 = !{!"evp_cipher_st", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !14, i64 16, !7, i64 24, !15, i64 32, !15, i64 40, !15, i64 48, !7, i64 56, !15, i64 64, !15, i64 72, !15, i64 80, !15, i64 88, !7, i64 96, !15, i64 104, !15, i64 112, !15, i64 120, !8, i64 128, !15, i64 136, !15, i64 144, !15, i64 152, !15, i64 160, !15, i64 168, !15, i64 176, !15, i64 184, !15, i64 192, !15, i64 200, !15, i64 208, !15, i64 216, !15, i64 224, !15, i64 232, !15, i64 240, !15, i64 248}
!14 = !{!"long", !8, i64 0}
!15 = !{!"any pointer", !8, i64 0}
!16 = distinct !{!16, !5}
