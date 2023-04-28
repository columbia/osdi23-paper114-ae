; ModuleID = 'crypto/ec/curve448/eddsa.c'
source_filename = "crypto/ec/curve448/eddsa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.curve448_precomputed_s = type { [80 x [1 x %struct.niels_s]] }
%struct.niels_s = type { [1 x %struct.gf_s], [1 x %struct.gf_s], [1 x %struct.gf_s] }
%struct.gf_s = type { [8 x i64] }
%struct.curve448_scalar_s = type { [7 x i64] }
%struct.ossl_lib_ctx_st = type opaque
%struct.evp_md_ctx_st = type opaque
%struct.evp_md_st = type opaque
%struct.engine_st = type opaque
%struct.curve448_point_s = type { [1 x %struct.gf_s], [1 x %struct.gf_s], [1 x %struct.gf_s], [1 x %struct.gf_s] }

@ossl_curve448_precomputed_base = external local_unnamed_addr global %struct.curve448_precomputed_s*, align 8
@ossl_c448_ed448_verify.order = internal unnamed_addr constant [57 x i8] c"\F3DX\AB\92\C2x#U\8F\C5\8Dr\C2l!\906\D6\AEI\DBN\C4\E9#\CA|\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF?\00", align 16
@ossl_curve448_scalar_zero = external constant [1 x %struct.curve448_scalar_s], align 16
@.str = private unnamed_addr constant [9 x i8] c"SHAKE256\00", align 1
@__const.hash_init_with_dom.dom_s = private unnamed_addr constant [9 x i8] c"SigEd448\00", align 1

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_c448_ed448_convert_private_key_to_x448(%struct.ossl_lib_ctx_st* noundef %ctx, i8* noundef %x, i8* noundef %ed, i8* noundef %propq) local_unnamed_addr #0 {
entry:
  %call = tail call fastcc i32 @oneshot_hash(%struct.ossl_lib_ctx_st* noundef %ctx, i8* noundef %x, i64 noundef 56, i8* noundef %ed, i8* noundef %propq) #9
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @oneshot_hash(%struct.ossl_lib_ctx_st* noundef %ctx, i8* noundef %out, i64 noundef %outlen, i8* noundef %in, i8* noundef %propq) unnamed_addr #0 {
entry:
  %call = tail call %struct.evp_md_ctx_st* @EVP_MD_CTX_new() #10
  %cmp = icmp eq %struct.evp_md_ctx_st* %call, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call1 = tail call %struct.evp_md_st* @EVP_MD_fetch(%struct.ossl_lib_ctx_st* noundef %ctx, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* noundef %propq) #10
  %cmp2 = icmp eq %struct.evp_md_st* %call1, null
  br i1 %cmp2, label %err, label %if.end4

if.end4:                                          ; preds = %if.end
  %call5 = tail call i32 @EVP_DigestInit_ex(%struct.evp_md_ctx_st* noundef nonnull %call, %struct.evp_md_st* noundef nonnull %call1, %struct.engine_st* noundef null) #10
  %tobool.not = icmp eq i32 %call5, 0
  br i1 %tobool.not, label %err, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end4
  %call6 = tail call i32 @EVP_DigestUpdate(%struct.evp_md_ctx_st* noundef nonnull %call, i8* noundef %in, i64 noundef 57) #10
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %err, label %lor.lhs.false8

lor.lhs.false8:                                   ; preds = %lor.lhs.false
  %call9 = tail call i32 @EVP_DigestFinalXOF(%struct.evp_md_ctx_st* noundef nonnull %call, i8* noundef %out, i64 noundef %outlen) #10
  %tobool10.not = icmp ne i32 %call9, 0
  %spec.select = sext i1 %tobool10.not to i32
  br label %err

err:                                              ; preds = %lor.lhs.false8, %if.end4, %lor.lhs.false, %if.end
  %ret.0 = phi i32 [ 0, %if.end ], [ 0, %lor.lhs.false ], [ 0, %if.end4 ], [ %spec.select, %lor.lhs.false8 ]
  tail call void @EVP_MD_CTX_free(%struct.evp_md_ctx_st* noundef nonnull %call) #10
  tail call void @EVP_MD_free(%struct.evp_md_st* noundef %call1) #10
  br label %cleanup

cleanup:                                          ; preds = %entry, %err
  %retval.0 = phi i32 [ %ret.0, %err ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_c448_ed448_derive_public_key(%struct.ossl_lib_ctx_st* noundef %ctx, i8* noundef %pubkey, i8* noundef %privkey, i8* noundef %propq) local_unnamed_addr #0 {
entry:
  %secret_scalar_ser = alloca [57 x i8], align 16
  %secret_scalar = alloca [1 x %struct.curve448_scalar_s], align 16
  %p = alloca [1 x %struct.curve448_point_s], align 16
  %0 = getelementptr inbounds [57 x i8], [57 x i8]* %secret_scalar_ser, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 57, i8* nonnull %0) #11
  %1 = bitcast [1 x %struct.curve448_scalar_s]* %secret_scalar to i8*
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %1) #11
  %2 = bitcast [1 x %struct.curve448_point_s]* %p to i8*
  call void @llvm.lifetime.start.p0i8(i64 256, i8* nonnull %2) #11
  %call = call fastcc i32 @oneshot_hash(%struct.ossl_lib_ctx_st* noundef %ctx, i8* noundef nonnull %0, i64 noundef 57, i8* noundef %privkey, i8* noundef %propq) #9
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  call fastcc void @clamp(i8* noundef nonnull %0) #9
  %arraydecay2 = getelementptr inbounds [1 x %struct.curve448_scalar_s], [1 x %struct.curve448_scalar_s]* %secret_scalar, i64 0, i64 0
  call void @ossl_curve448_scalar_decode_long(%struct.curve448_scalar_s* noundef nonnull %arraydecay2, i8* noundef nonnull %0, i64 noundef 57) #10
  call void @ossl_curve448_scalar_halve(%struct.curve448_scalar_s* noundef nonnull %arraydecay2, %struct.curve448_scalar_s* noundef nonnull %arraydecay2) #10
  call void @ossl_curve448_scalar_halve(%struct.curve448_scalar_s* noundef nonnull %arraydecay2, %struct.curve448_scalar_s* noundef nonnull %arraydecay2) #10
  %arraydecay6 = getelementptr inbounds [1 x %struct.curve448_point_s], [1 x %struct.curve448_point_s]* %p, i64 0, i64 0
  %3 = load %struct.curve448_precomputed_s*, %struct.curve448_precomputed_s** @ossl_curve448_precomputed_base, align 8, !tbaa !4
  call void @ossl_curve448_precomputed_scalarmul(%struct.curve448_point_s* noundef nonnull %arraydecay6, %struct.curve448_precomputed_s* noundef %3, %struct.curve448_scalar_s* noundef nonnull %arraydecay2) #10
  call void @ossl_curve448_point_mul_by_ratio_and_encode_like_eddsa(i8* noundef %pubkey, %struct.curve448_point_s* noundef nonnull %arraydecay6) #10
  call void @ossl_curve448_scalar_destroy(%struct.curve448_scalar_s* noundef nonnull %arraydecay2) #10
  call void @ossl_curve448_point_destroy(%struct.curve448_point_s* noundef nonnull %arraydecay6) #10
  call void @OPENSSL_cleanse(i8* noundef nonnull %0, i64 noundef 57) #10
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i32 [ -1, %if.end ], [ 0, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 256, i8* nonnull %2) #11
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %1) #11
  call void @llvm.lifetime.end.p0i8(i64 57, i8* nonnull %0) #11
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define internal fastcc void @clamp(i8* nocapture noundef %secret_scalar_ser) unnamed_addr #2 {
entry:
  %0 = load i8, i8* %secret_scalar_ser, align 1, !tbaa !8
  %1 = and i8 %0, -4
  store i8 %1, i8* %secret_scalar_ser, align 1, !tbaa !8
  %arrayidx2 = getelementptr inbounds i8, i8* %secret_scalar_ser, i64 56
  store i8 0, i8* %arrayidx2, align 1, !tbaa !8
  %arrayidx3 = getelementptr inbounds i8, i8* %secret_scalar_ser, i64 55
  %2 = load i8, i8* %arrayidx3, align 1, !tbaa !8
  %3 = or i8 %2, -128
  store i8 %3, i8* %arrayidx3, align 1, !tbaa !8
  ret void
}

declare void @ossl_curve448_scalar_decode_long(%struct.curve448_scalar_s* noundef, i8* noundef, i64 noundef) local_unnamed_addr #3

declare void @ossl_curve448_scalar_halve(%struct.curve448_scalar_s* noundef, %struct.curve448_scalar_s* noundef) local_unnamed_addr #3

declare void @ossl_curve448_precomputed_scalarmul(%struct.curve448_point_s* noundef, %struct.curve448_precomputed_s* noundef, %struct.curve448_scalar_s* noundef) local_unnamed_addr #3

declare void @ossl_curve448_point_mul_by_ratio_and_encode_like_eddsa(i8* noundef, %struct.curve448_point_s* noundef) local_unnamed_addr #3

declare void @ossl_curve448_scalar_destroy(%struct.curve448_scalar_s* noundef) local_unnamed_addr #3

declare void @ossl_curve448_point_destroy(%struct.curve448_point_s* noundef) local_unnamed_addr #3

declare void @OPENSSL_cleanse(i8* noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_c448_ed448_sign(%struct.ossl_lib_ctx_st* noundef %ctx, i8* noundef %signature, i8* noundef %privkey, i8* noundef %pubkey, i8* noundef %message, i64 noundef %message_len, i8 noundef zeroext %prehashed, i8* noundef %context, i64 noundef %context_len, i8* noundef %propq) local_unnamed_addr #0 {
entry:
  %secret_scalar = alloca [1 x %struct.curve448_scalar_s], align 16
  %nonce_scalar = alloca [1 x %struct.curve448_scalar_s], align 16
  %nonce_point = alloca [57 x i8], align 16
  %challenge_scalar = alloca [1 x %struct.curve448_scalar_s], align 16
  %expanded = alloca [114 x i8], align 16
  %nonce = alloca [114 x i8], align 16
  %nonce_scalar_2 = alloca [1 x %struct.curve448_scalar_s], align 16
  %p = alloca [1 x %struct.curve448_point_s], align 16
  %challenge = alloca [114 x i8], align 16
  %0 = bitcast [1 x %struct.curve448_scalar_s]* %secret_scalar to i8*
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %0) #11
  %call = tail call %struct.evp_md_ctx_st* @EVP_MD_CTX_new() #10
  %1 = bitcast [1 x %struct.curve448_scalar_s]* %nonce_scalar to i8*
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %1) #11
  %2 = getelementptr inbounds [57 x i8], [57 x i8]* %nonce_point, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 57, i8* nonnull %2) #11
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(57) %2, i8 0, i64 57, i1 false)
  %3 = bitcast [1 x %struct.curve448_scalar_s]* %challenge_scalar to i8*
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %3) #11
  %cmp = icmp eq %struct.evp_md_ctx_st* %call, null
  br i1 %cmp, label %cleanup77, label %if.end

if.end:                                           ; preds = %entry
  %4 = getelementptr inbounds [114 x i8], [114 x i8]* %expanded, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 114, i8* nonnull %4) #11
  %call1 = call fastcc i32 @oneshot_hash(%struct.ossl_lib_ctx_st* noundef %ctx, i8* noundef nonnull %4, i64 noundef 114, i8* noundef %privkey, i8* noundef %propq) #9
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %cleanup.thread, label %if.end3

if.end3:                                          ; preds = %if.end
  call fastcc void @clamp(i8* noundef nonnull %4) #9
  %arraydecay5 = getelementptr inbounds [1 x %struct.curve448_scalar_s], [1 x %struct.curve448_scalar_s]* %secret_scalar, i64 0, i64 0
  call void @ossl_curve448_scalar_decode_long(%struct.curve448_scalar_s* noundef nonnull %arraydecay5, i8* noundef nonnull %4, i64 noundef 57) #10
  %call7 = call fastcc i32 @hash_init_with_dom(%struct.ossl_lib_ctx_st* noundef %ctx, %struct.evp_md_ctx_st* noundef nonnull %call, i8 noundef zeroext %prehashed, i8* noundef %context, i64 noundef %context_len, i8* noundef %propq) #9
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.then15, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end3
  %add.ptr = getelementptr inbounds [114 x i8], [114 x i8]* %expanded, i64 0, i64 57
  %call10 = call i32 @EVP_DigestUpdate(%struct.evp_md_ctx_st* noundef nonnull %call, i8* noundef nonnull %add.ptr, i64 noundef 57) #10
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.then15, label %lor.lhs.false12

lor.lhs.false12:                                  ; preds = %lor.lhs.false
  %call13 = call i32 @EVP_DigestUpdate(%struct.evp_md_ctx_st* noundef nonnull %call, i8* noundef %message, i64 noundef %message_len) #10
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.then15, label %cleanup.cont

if.then15:                                        ; preds = %lor.lhs.false12, %lor.lhs.false, %if.end3
  call void @OPENSSL_cleanse(i8* noundef nonnull %4, i64 noundef 114) #10
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %if.then15, %if.end
  call void @llvm.lifetime.end.p0i8(i64 114, i8* nonnull %4) #11
  br label %err

cleanup.cont:                                     ; preds = %lor.lhs.false12
  call void @OPENSSL_cleanse(i8* noundef nonnull %4, i64 noundef 114) #10
  call void @llvm.lifetime.end.p0i8(i64 114, i8* nonnull %4) #11
  %5 = getelementptr inbounds [114 x i8], [114 x i8]* %nonce, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 114, i8* nonnull %5) #11
  %call20 = call i32 @EVP_DigestFinalXOF(%struct.evp_md_ctx_st* noundef nonnull %call, i8* noundef nonnull %5, i64 noundef 114) #10
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %cleanup27, label %cleanup.cont29

cleanup27:                                        ; preds = %cleanup.cont
  call void @llvm.lifetime.end.p0i8(i64 114, i8* nonnull %5) #11
  br label %err

cleanup.cont29:                                   ; preds = %cleanup.cont
  %arraydecay24 = getelementptr inbounds [1 x %struct.curve448_scalar_s], [1 x %struct.curve448_scalar_s]* %nonce_scalar, i64 0, i64 0
  call void @ossl_curve448_scalar_decode_long(%struct.curve448_scalar_s* noundef nonnull %arraydecay24, i8* noundef nonnull %5, i64 noundef 114) #10
  call void @OPENSSL_cleanse(i8* noundef nonnull %5, i64 noundef 114) #10
  call void @llvm.lifetime.end.p0i8(i64 114, i8* nonnull %5) #11
  %6 = bitcast [1 x %struct.curve448_scalar_s]* %nonce_scalar_2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #11
  %7 = bitcast [1 x %struct.curve448_point_s]* %p to i8*
  call void @llvm.lifetime.start.p0i8(i64 256, i8* nonnull %7) #11
  %arraydecay30 = getelementptr inbounds [1 x %struct.curve448_scalar_s], [1 x %struct.curve448_scalar_s]* %nonce_scalar_2, i64 0, i64 0
  call void @ossl_curve448_scalar_halve(%struct.curve448_scalar_s* noundef nonnull %arraydecay30, %struct.curve448_scalar_s* noundef nonnull %arraydecay24) #10
  call void @ossl_curve448_scalar_halve(%struct.curve448_scalar_s* noundef nonnull %arraydecay30, %struct.curve448_scalar_s* noundef nonnull %arraydecay30) #10
  %arraydecay35 = getelementptr inbounds [1 x %struct.curve448_point_s], [1 x %struct.curve448_point_s]* %p, i64 0, i64 0
  %8 = load %struct.curve448_precomputed_s*, %struct.curve448_precomputed_s** @ossl_curve448_precomputed_base, align 8, !tbaa !4
  call void @ossl_curve448_precomputed_scalarmul(%struct.curve448_point_s* noundef nonnull %arraydecay35, %struct.curve448_precomputed_s* noundef %8, %struct.curve448_scalar_s* noundef nonnull %arraydecay30) #10
  call void @ossl_curve448_point_mul_by_ratio_and_encode_like_eddsa(i8* noundef nonnull %2, %struct.curve448_point_s* noundef nonnull %arraydecay35) #10
  call void @ossl_curve448_point_destroy(%struct.curve448_point_s* noundef nonnull %arraydecay35) #10
  call void @ossl_curve448_scalar_destroy(%struct.curve448_scalar_s* noundef nonnull %arraydecay30) #10
  call void @llvm.lifetime.end.p0i8(i64 256, i8* nonnull %7) #11
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #11
  %9 = getelementptr inbounds [114 x i8], [114 x i8]* %challenge, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 114, i8* nonnull %9) #11
  %call41 = call fastcc i32 @hash_init_with_dom(%struct.ossl_lib_ctx_st* noundef %ctx, %struct.evp_md_ctx_st* noundef nonnull %call, i8 noundef zeroext %prehashed, i8* noundef %context, i64 noundef %context_len, i8* noundef %propq) #9
  %tobool42.not = icmp eq i32 %call41, 0
  br i1 %tobool42.not, label %cleanup62.thread, label %lor.lhs.false43

lor.lhs.false43:                                  ; preds = %cleanup.cont29
  %call45 = call i32 @EVP_DigestUpdate(%struct.evp_md_ctx_st* noundef nonnull %call, i8* noundef nonnull %2, i64 noundef 57) #10
  %tobool46.not = icmp eq i32 %call45, 0
  br i1 %tobool46.not, label %cleanup62.thread, label %lor.lhs.false47

lor.lhs.false47:                                  ; preds = %lor.lhs.false43
  %call48 = call i32 @EVP_DigestUpdate(%struct.evp_md_ctx_st* noundef nonnull %call, i8* noundef %pubkey, i64 noundef 57) #10
  %tobool49.not = icmp eq i32 %call48, 0
  br i1 %tobool49.not, label %cleanup62.thread, label %lor.lhs.false50

lor.lhs.false50:                                  ; preds = %lor.lhs.false47
  %call51 = call i32 @EVP_DigestUpdate(%struct.evp_md_ctx_st* noundef nonnull %call, i8* noundef %message, i64 noundef %message_len) #10
  %tobool52.not = icmp eq i32 %call51, 0
  br i1 %tobool52.not, label %cleanup62.thread, label %lor.lhs.false53

lor.lhs.false53:                                  ; preds = %lor.lhs.false50
  %call55 = call i32 @EVP_DigestFinalXOF(%struct.evp_md_ctx_st* noundef nonnull %call, i8* noundef nonnull %9, i64 noundef 114) #10
  %tobool56.not = icmp eq i32 %call55, 0
  br i1 %tobool56.not, label %cleanup62.thread, label %cleanup.cont64

cleanup62.thread:                                 ; preds = %lor.lhs.false53, %lor.lhs.false50, %lor.lhs.false47, %lor.lhs.false43, %cleanup.cont29
  call void @llvm.lifetime.end.p0i8(i64 114, i8* nonnull %9) #11
  br label %err

cleanup.cont64:                                   ; preds = %lor.lhs.false53
  %arraydecay59 = getelementptr inbounds [1 x %struct.curve448_scalar_s], [1 x %struct.curve448_scalar_s]* %challenge_scalar, i64 0, i64 0
  call void @ossl_curve448_scalar_decode_long(%struct.curve448_scalar_s* noundef nonnull %arraydecay59, i8* noundef nonnull %9, i64 noundef 114) #10
  call void @OPENSSL_cleanse(i8* noundef nonnull %9, i64 noundef 114) #10
  call void @llvm.lifetime.end.p0i8(i64 114, i8* nonnull %9) #11
  call void @ossl_curve448_scalar_mul(%struct.curve448_scalar_s* noundef nonnull %arraydecay59, %struct.curve448_scalar_s* noundef nonnull %arraydecay59, %struct.curve448_scalar_s* noundef nonnull %arraydecay5) #10
  call void @ossl_curve448_scalar_add(%struct.curve448_scalar_s* noundef nonnull %arraydecay59, %struct.curve448_scalar_s* noundef nonnull %arraydecay59, %struct.curve448_scalar_s* noundef nonnull %arraydecay24) #10
  call void @OPENSSL_cleanse(i8* noundef %signature, i64 noundef 114) #10
  %call72 = call i8* @memcpy(i8* noundef %signature, i8* noundef nonnull %2, i64 noundef 57) #10
  %arrayidx = getelementptr inbounds i8, i8* %signature, i64 57
  call void @ossl_curve448_scalar_encode(i8* noundef nonnull %arrayidx, %struct.curve448_scalar_s* noundef nonnull %arraydecay59) #10
  call void @ossl_curve448_scalar_destroy(%struct.curve448_scalar_s* noundef nonnull %arraydecay5) #10
  call void @ossl_curve448_scalar_destroy(%struct.curve448_scalar_s* noundef nonnull %arraydecay24) #10
  call void @ossl_curve448_scalar_destroy(%struct.curve448_scalar_s* noundef nonnull %arraydecay59) #10
  br label %err

err:                                              ; preds = %cleanup62.thread, %cleanup27, %cleanup.thread, %cleanup.cont64
  %ret.0 = phi i32 [ 0, %cleanup27 ], [ -1, %cleanup.cont64 ], [ 0, %cleanup.thread ], [ 0, %cleanup62.thread ]
  call void @EVP_MD_CTX_free(%struct.evp_md_ctx_st* noundef nonnull %call) #10
  br label %cleanup77

cleanup77:                                        ; preds = %entry, %err
  %retval.0 = phi i32 [ %ret.0, %err ], [ 0, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %3) #11
  call void @llvm.lifetime.end.p0i8(i64 57, i8* nonnull %2) #11
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %1) #11
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %0) #11
  ret i32 %retval.0
}

declare %struct.evp_md_ctx_st* @EVP_MD_CTX_new() local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @hash_init_with_dom(%struct.ossl_lib_ctx_st* noundef %ctx, %struct.evp_md_ctx_st* noundef %hashctx, i8 noundef zeroext %prehashed, i8* noundef %context, i64 noundef %context_len, i8* noundef %propq) unnamed_addr #0 {
entry:
  %dom_s = alloca [9 x i8], align 1
  %dom = alloca [2 x i8], align 1
  %0 = getelementptr inbounds [9 x i8], [9 x i8]* %dom_s, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 9, i8* nonnull %0) #11
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(9) %0, i8* noundef nonnull align 1 dereferenceable(9) getelementptr inbounds ([9 x i8], [9 x i8]* @__const.hash_init_with_dom.dom_s, i64 0, i64 0), i64 9, i1 false)
  %1 = getelementptr inbounds [2 x i8], [2 x i8]* %dom, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 2, i8* nonnull %1) #11
  %cmp = icmp ugt i64 %context_len, 255
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %cmp1 = icmp ne i8 %prehashed, 0
  %conv8 = zext i1 %cmp1 to i8
  store i8 %conv8, i8* %1, align 1, !tbaa !8
  %conv9 = trunc i64 %context_len to i8
  %arrayidx10 = getelementptr inbounds [2 x i8], [2 x i8]* %dom, i64 0, i64 1
  store i8 %conv9, i8* %arrayidx10, align 1, !tbaa !8
  %call = tail call %struct.evp_md_st* @EVP_MD_fetch(%struct.ossl_lib_ctx_st* noundef %ctx, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* noundef %propq) #10
  %cmp11 = icmp eq %struct.evp_md_st* %call, null
  br i1 %cmp11, label %cleanup, label %if.end14

if.end14:                                         ; preds = %if.end
  %call15 = tail call i32 @EVP_DigestInit_ex(%struct.evp_md_ctx_st* noundef %hashctx, %struct.evp_md_st* noundef nonnull %call, %struct.engine_st* noundef null) #10
  %tobool.not = icmp eq i32 %call15, 0
  br i1 %tobool.not, label %cleanup.sink.split, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end14
  %call17 = call i64 @strlen(i8* noundef nonnull %0) #12
  %call18 = call i32 @EVP_DigestUpdate(%struct.evp_md_ctx_st* noundef %hashctx, i8* noundef nonnull %0, i64 noundef %call17) #10
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %cleanup.sink.split, label %lor.lhs.false20

lor.lhs.false20:                                  ; preds = %lor.lhs.false
  %call22 = call i32 @EVP_DigestUpdate(%struct.evp_md_ctx_st* noundef %hashctx, i8* noundef nonnull %1, i64 noundef 2) #10
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %cleanup.sink.split, label %lor.lhs.false24

lor.lhs.false24:                                  ; preds = %lor.lhs.false20
  %call25 = call i32 @EVP_DigestUpdate(%struct.evp_md_ctx_st* noundef %hashctx, i8* noundef %context, i64 noundef %context_len) #10
  %tobool26.not = icmp ne i32 %call25, 0
  %spec.select = sext i1 %tobool26.not to i32
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %lor.lhs.false24, %if.end14, %lor.lhs.false, %lor.lhs.false20
  %retval.0.ph = phi i32 [ 0, %lor.lhs.false20 ], [ 0, %lor.lhs.false ], [ 0, %if.end14 ], [ %spec.select, %lor.lhs.false24 ]
  call void @EVP_MD_free(%struct.evp_md_st* noundef nonnull %call) #10
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ 0, %if.end ], [ %retval.0.ph, %cleanup.sink.split ]
  call void @llvm.lifetime.end.p0i8(i64 2, i8* nonnull %1) #11
  call void @llvm.lifetime.end.p0i8(i64 9, i8* nonnull %0) #11
  ret i32 %retval.0
}

declare i32 @EVP_DigestUpdate(%struct.evp_md_ctx_st* noundef, i8* noundef, i64 noundef) local_unnamed_addr #3

declare i32 @EVP_DigestFinalXOF(%struct.evp_md_ctx_st* noundef, i8* noundef, i64 noundef) local_unnamed_addr #3

declare void @ossl_curve448_scalar_mul(%struct.curve448_scalar_s* noundef, %struct.curve448_scalar_s* noundef, %struct.curve448_scalar_s* noundef) local_unnamed_addr #3

declare void @ossl_curve448_scalar_add(%struct.curve448_scalar_s* noundef, %struct.curve448_scalar_s* noundef, %struct.curve448_scalar_s* noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare i8* @memcpy(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #5

declare void @ossl_curve448_scalar_encode(i8* noundef, %struct.curve448_scalar_s* noundef) local_unnamed_addr #3

declare void @EVP_MD_CTX_free(%struct.evp_md_ctx_st* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_c448_ed448_sign_prehash(%struct.ossl_lib_ctx_st* noundef %ctx, i8* noundef %signature, i8* noundef %privkey, i8* noundef %pubkey, i8* noundef %hash, i8* noundef %context, i64 noundef %context_len, i8* noundef %propq) local_unnamed_addr #0 {
entry:
  %call = tail call i32 @ossl_c448_ed448_sign(%struct.ossl_lib_ctx_st* noundef %ctx, i8* noundef %signature, i8* noundef %privkey, i8* noundef %pubkey, i8* noundef %hash, i64 noundef 64, i8 noundef zeroext 1, i8* noundef %context, i64 noundef %context_len, i8* noundef %propq) #9
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_c448_ed448_verify(%struct.ossl_lib_ctx_st* noundef %ctx, i8* noundef %signature, i8* noundef %pubkey, i8* noundef %message, i64 noundef %message_len, i8 noundef zeroext %prehashed, i8* noundef %context, i8 noundef zeroext %context_len, i8* noundef %propq) local_unnamed_addr #0 {
entry:
  %pk_point = alloca [1 x %struct.curve448_point_s], align 16
  %r_point = alloca [1 x %struct.curve448_point_s], align 16
  %challenge_scalar = alloca [1 x %struct.curve448_scalar_s], align 16
  %response_scalar = alloca [1 x %struct.curve448_scalar_s], align 16
  %challenge = alloca [114 x i8], align 16
  %0 = bitcast [1 x %struct.curve448_point_s]* %pk_point to i8*
  call void @llvm.lifetime.start.p0i8(i64 256, i8* nonnull %0) #11
  %1 = bitcast [1 x %struct.curve448_point_s]* %r_point to i8*
  call void @llvm.lifetime.start.p0i8(i64 256, i8* nonnull %1) #11
  %2 = bitcast [1 x %struct.curve448_scalar_s]* %challenge_scalar to i8*
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %2) #11
  %3 = bitcast [1 x %struct.curve448_scalar_s]* %response_scalar to i8*
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %3) #11
  br label %for.body

for.cond:                                         ; preds = %if.end
  %dec = add nsw i32 %i.0100, -1
  %add.1 = add nsw i32 %i.0100, 56
  %idxprom98.1 = zext i32 %add.1 to i64
  %arrayidx.1 = getelementptr inbounds i8, i8* %signature, i64 %idxprom98.1
  %4 = load i8, i8* %arrayidx.1, align 1, !tbaa !8
  %idxprom199.1 = zext i32 %dec to i64
  %arrayidx2.1 = getelementptr inbounds [57 x i8], [57 x i8]* @ossl_c448_ed448_verify.order, i64 0, i64 %idxprom199.1
  %5 = load i8, i8* %arrayidx2.1, align 1, !tbaa !8
  %cmp4.1 = icmp ugt i8 %4, %5
  br i1 %cmp4.1, label %cleanup67, label %if.end.1

if.end.1:                                         ; preds = %for.cond
  %cmp13.1 = icmp ult i8 %4, %5
  br i1 %cmp13.1, label %if.end20, label %for.cond.1

for.cond.1:                                       ; preds = %if.end.1
  %dec.1 = add nsw i32 %i.0100, -2
  %add.2 = add nsw i32 %i.0100, 55
  %idxprom98.2 = zext i32 %add.2 to i64
  %arrayidx.2 = getelementptr inbounds i8, i8* %signature, i64 %idxprom98.2
  %6 = load i8, i8* %arrayidx.2, align 1, !tbaa !8
  %idxprom199.2 = zext i32 %dec.1 to i64
  %arrayidx2.2 = getelementptr inbounds [57 x i8], [57 x i8]* @ossl_c448_ed448_verify.order, i64 0, i64 %idxprom199.2
  %7 = load i8, i8* %arrayidx2.2, align 1, !tbaa !8
  %cmp4.2 = icmp ugt i8 %6, %7
  br i1 %cmp4.2, label %cleanup67, label %if.end.2

if.end.2:                                         ; preds = %for.cond.1
  %cmp13.2 = icmp ult i8 %6, %7
  br i1 %cmp13.2, label %if.end20, label %for.cond.2

for.cond.2:                                       ; preds = %if.end.2
  %dec.2 = add nsw i32 %i.0100, -3
  %cmp.not.2 = icmp eq i32 %dec.1, 0
  br i1 %cmp.not.2, label %cleanup67, label %for.body, !llvm.loop !9

for.body:                                         ; preds = %for.cond.2, %entry
  %i.0100 = phi i32 [ 56, %entry ], [ %dec.2, %for.cond.2 ]
  %add = add nuw nsw i32 %i.0100, 57
  %idxprom98 = zext i32 %add to i64
  %arrayidx = getelementptr inbounds i8, i8* %signature, i64 %idxprom98
  %8 = load i8, i8* %arrayidx, align 1, !tbaa !8
  %idxprom199 = zext i32 %i.0100 to i64
  %arrayidx2 = getelementptr inbounds [57 x i8], [57 x i8]* @ossl_c448_ed448_verify.order, i64 0, i64 %idxprom199
  %9 = load i8, i8* %arrayidx2, align 1, !tbaa !8
  %cmp4 = icmp ugt i8 %8, %9
  br i1 %cmp4, label %cleanup67, label %if.end

if.end:                                           ; preds = %for.body
  %cmp13 = icmp ult i8 %8, %9
  br i1 %cmp13, label %if.end20, label %for.cond

if.end20:                                         ; preds = %if.end.2, %if.end.1, %if.end
  %arraydecay = getelementptr inbounds [1 x %struct.curve448_point_s], [1 x %struct.curve448_point_s]* %pk_point, i64 0, i64 0
  %call = call i32 @ossl_curve448_point_decode_like_eddsa_and_mul_by_ratio(%struct.curve448_point_s* noundef nonnull %arraydecay, i8* noundef %pubkey) #10
  %cmp21.not = icmp eq i32 %call, -1
  br i1 %cmp21.not, label %if.end24, label %cleanup67

if.end24:                                         ; preds = %if.end20
  %arraydecay25 = getelementptr inbounds [1 x %struct.curve448_point_s], [1 x %struct.curve448_point_s]* %r_point, i64 0, i64 0
  %call26 = call i32 @ossl_curve448_point_decode_like_eddsa_and_mul_by_ratio(%struct.curve448_point_s* noundef nonnull %arraydecay25, i8* noundef nonnull %signature) #10
  %cmp27.not = icmp eq i32 %call26, -1
  br i1 %cmp27.not, label %if.end30, label %cleanup67

if.end30:                                         ; preds = %if.end24
  %call31 = call %struct.evp_md_ctx_st* @EVP_MD_CTX_new() #10
  %10 = getelementptr inbounds [114 x i8], [114 x i8]* %challenge, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 114, i8* nonnull %10) #11
  %cmp32 = icmp eq %struct.evp_md_ctx_st* %call31, null
  br i1 %cmp32, label %if.then49, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end30
  %conv34 = zext i8 %context_len to i64
  %call35 = call fastcc i32 @hash_init_with_dom(%struct.ossl_lib_ctx_st* noundef %ctx, %struct.evp_md_ctx_st* noundef nonnull %call31, i8 noundef zeroext %prehashed, i8* noundef %context, i64 noundef %conv34, i8* noundef %propq) #9
  %tobool.not = icmp eq i32 %call35, 0
  br i1 %tobool.not, label %if.then49, label %lor.lhs.false36

lor.lhs.false36:                                  ; preds = %lor.lhs.false
  %call37 = call i32 @EVP_DigestUpdate(%struct.evp_md_ctx_st* noundef nonnull %call31, i8* noundef nonnull %signature, i64 noundef 57) #10
  %tobool38.not = icmp eq i32 %call37, 0
  br i1 %tobool38.not, label %if.then49, label %lor.lhs.false39

lor.lhs.false39:                                  ; preds = %lor.lhs.false36
  %call40 = call i32 @EVP_DigestUpdate(%struct.evp_md_ctx_st* noundef nonnull %call31, i8* noundef %pubkey, i64 noundef 57) #10
  %tobool41.not = icmp eq i32 %call40, 0
  br i1 %tobool41.not, label %if.then49, label %lor.lhs.false42

lor.lhs.false42:                                  ; preds = %lor.lhs.false39
  %call43 = call i32 @EVP_DigestUpdate(%struct.evp_md_ctx_st* noundef nonnull %call31, i8* noundef %message, i64 noundef %message_len) #10
  %tobool44.not = icmp eq i32 %call43, 0
  br i1 %tobool44.not, label %if.then49, label %lor.lhs.false45

lor.lhs.false45:                                  ; preds = %lor.lhs.false42
  %call47 = call i32 @EVP_DigestFinalXOF(%struct.evp_md_ctx_st* noundef nonnull %call31, i8* noundef nonnull %10, i64 noundef 114) #10
  %tobool48.not = icmp eq i32 %call47, 0
  br i1 %tobool48.not, label %if.then49, label %if.end50

if.then49:                                        ; preds = %lor.lhs.false45, %lor.lhs.false42, %lor.lhs.false39, %lor.lhs.false36, %lor.lhs.false, %if.end30
  call void @EVP_MD_CTX_free(%struct.evp_md_ctx_st* noundef %call31) #10
  call void @llvm.lifetime.end.p0i8(i64 114, i8* nonnull %10) #11
  br label %cleanup67

if.end50:                                         ; preds = %lor.lhs.false45
  call void @EVP_MD_CTX_free(%struct.evp_md_ctx_st* noundef nonnull %call31) #10
  %arraydecay51 = getelementptr inbounds [1 x %struct.curve448_scalar_s], [1 x %struct.curve448_scalar_s]* %challenge_scalar, i64 0, i64 0
  call void @ossl_curve448_scalar_decode_long(%struct.curve448_scalar_s* noundef nonnull %arraydecay51, i8* noundef nonnull %10, i64 noundef 114) #10
  call void @OPENSSL_cleanse(i8* noundef nonnull %10, i64 noundef 114) #10
  call void @llvm.lifetime.end.p0i8(i64 114, i8* nonnull %10) #11
  call void @ossl_curve448_scalar_sub(%struct.curve448_scalar_s* noundef nonnull %arraydecay51, %struct.curve448_scalar_s* noundef getelementptr inbounds ([1 x %struct.curve448_scalar_s], [1 x %struct.curve448_scalar_s]* @ossl_curve448_scalar_zero, i64 0, i64 0), %struct.curve448_scalar_s* noundef nonnull %arraydecay51) #10
  %arraydecay57 = getelementptr inbounds [1 x %struct.curve448_scalar_s], [1 x %struct.curve448_scalar_s]* %response_scalar, i64 0, i64 0
  %arrayidx58 = getelementptr inbounds i8, i8* %signature, i64 57
  call void @ossl_curve448_scalar_decode_long(%struct.curve448_scalar_s* noundef nonnull %arraydecay57, i8* noundef nonnull %arrayidx58, i64 noundef 57) #10
  call void @ossl_curve448_base_double_scalarmul_non_secret(%struct.curve448_point_s* noundef nonnull %arraydecay, %struct.curve448_scalar_s* noundef nonnull %arraydecay57, %struct.curve448_point_s* noundef nonnull %arraydecay, %struct.curve448_scalar_s* noundef nonnull %arraydecay51) #10
  %call65 = call i64 @ossl_curve448_point_eq(%struct.curve448_point_s* noundef nonnull %arraydecay, %struct.curve448_point_s* noundef nonnull %arraydecay25) #10
  %call66 = call fastcc i32 @c448_succeed_if(i64 noundef %call65) #9
  br label %cleanup67

cleanup67:                                        ; preds = %for.body, %for.cond, %for.cond.1, %for.cond.2, %if.then49, %if.end24, %if.end20, %if.end50
  %retval.1 = phi i32 [ %call66, %if.end50 ], [ 0, %if.then49 ], [ %call, %if.end20 ], [ %call26, %if.end24 ], [ 0, %for.cond.2 ], [ 0, %for.cond.1 ], [ 0, %for.cond ], [ 0, %for.body ]
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %3) #11
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %2) #11
  call void @llvm.lifetime.end.p0i8(i64 256, i8* nonnull %1) #11
  call void @llvm.lifetime.end.p0i8(i64 256, i8* nonnull %0) #11
  ret i32 %retval.1
}

declare i32 @ossl_curve448_point_decode_like_eddsa_and_mul_by_ratio(%struct.curve448_point_s* noundef, i8* noundef) local_unnamed_addr #3

declare void @ossl_curve448_scalar_sub(%struct.curve448_scalar_s* noundef, %struct.curve448_scalar_s* noundef, %struct.curve448_scalar_s* noundef) local_unnamed_addr #3

declare void @ossl_curve448_base_double_scalarmul_non_secret(%struct.curve448_point_s* noundef, %struct.curve448_scalar_s* noundef, %struct.curve448_point_s* noundef, %struct.curve448_scalar_s* noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc i32 @c448_succeed_if(i64 noundef %x) unnamed_addr #6 {
entry:
  %conv = trunc i64 %x to i32
  ret i32 %conv
}

declare i64 @ossl_curve448_point_eq(%struct.curve448_point_s* noundef, %struct.curve448_point_s* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_c448_ed448_verify_prehash(%struct.ossl_lib_ctx_st* noundef %ctx, i8* noundef %signature, i8* noundef %pubkey, i8* noundef %hash, i8* noundef %context, i8 noundef zeroext %context_len, i8* noundef %propq) local_unnamed_addr #0 {
entry:
  %call = tail call i32 @ossl_c448_ed448_verify(%struct.ossl_lib_ctx_st* noundef %ctx, i8* noundef %signature, i8* noundef %pubkey, i8* noundef %hash, i64 noundef 64, i8 noundef zeroext 1, i8* noundef %context, i8 noundef zeroext %context_len, i8* noundef %propq) #9
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_ed448_sign(%struct.ossl_lib_ctx_st* noundef %ctx, i8* noundef %out_sig, i8* noundef %message, i64 noundef %message_len, i8* noundef %public_key, i8* noundef %private_key, i8* noundef %context, i64 noundef %context_len, i8* noundef %propq) local_unnamed_addr #0 {
entry:
  %call = tail call i32 @ossl_c448_ed448_sign(%struct.ossl_lib_ctx_st* noundef %ctx, i8* noundef %out_sig, i8* noundef %private_key, i8* noundef %public_key, i8* noundef %message, i64 noundef %message_len, i8 noundef zeroext 0, i8* noundef %context, i64 noundef %context_len, i8* noundef %propq) #9
  %cmp = icmp eq i32 %call, -1
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_ed448_verify(%struct.ossl_lib_ctx_st* noundef %ctx, i8* noundef %message, i64 noundef %message_len, i8* noundef %signature, i8* noundef %public_key, i8* noundef %context, i64 noundef %context_len, i8* noundef %propq) local_unnamed_addr #0 {
entry:
  %conv = trunc i64 %context_len to i8
  %call = tail call i32 @ossl_c448_ed448_verify(%struct.ossl_lib_ctx_st* noundef %ctx, i8* noundef %signature, i8* noundef %public_key, i8* noundef %message, i64 noundef %message_len, i8 noundef zeroext 0, i8* noundef %context, i8 noundef zeroext %conv, i8* noundef %propq) #9
  %cmp = icmp eq i32 %call, -1
  %conv1 = zext i1 %cmp to i32
  ret i32 %conv1
}

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_ed448ph_sign(%struct.ossl_lib_ctx_st* noundef %ctx, i8* noundef %out_sig, i8* noundef %hash, i8* noundef %public_key, i8* noundef %private_key, i8* noundef %context, i64 noundef %context_len, i8* noundef %propq) local_unnamed_addr #0 {
entry:
  %call = tail call i32 @ossl_c448_ed448_sign_prehash(%struct.ossl_lib_ctx_st* noundef %ctx, i8* noundef %out_sig, i8* noundef %private_key, i8* noundef %public_key, i8* noundef %hash, i8* noundef %context, i64 noundef %context_len, i8* noundef %propq) #9
  %cmp = icmp eq i32 %call, -1
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_ed448ph_verify(%struct.ossl_lib_ctx_st* noundef %ctx, i8* noundef %hash, i8* noundef %signature, i8* noundef %public_key, i8* noundef %context, i64 noundef %context_len, i8* noundef %propq) local_unnamed_addr #0 {
entry:
  %conv = trunc i64 %context_len to i8
  %call = tail call i32 @ossl_c448_ed448_verify_prehash(%struct.ossl_lib_ctx_st* noundef %ctx, i8* noundef %signature, i8* noundef %public_key, i8* noundef %hash, i8* noundef %context, i8 noundef zeroext %conv, i8* noundef %propq) #9
  %cmp = icmp eq i32 %call, -1
  %conv1 = zext i1 %cmp to i32
  ret i32 %conv1
}

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_ed448_public_from_private(%struct.ossl_lib_ctx_st* noundef %ctx, i8* noundef %out_public_key, i8* noundef %private_key, i8* noundef %propq) local_unnamed_addr #0 {
entry:
  %call = tail call i32 @ossl_c448_ed448_derive_public_key(%struct.ossl_lib_ctx_st* noundef %ctx, i8* noundef %out_public_key, i8* noundef %private_key, i8* noundef %propq) #9
  %cmp = icmp eq i32 %call, -1
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

declare %struct.evp_md_st* @EVP_MD_fetch(%struct.ossl_lib_ctx_st* noundef, i8* noundef, i8* noundef) local_unnamed_addr #3

declare i32 @EVP_DigestInit_ex(%struct.evp_md_ctx_st* noundef, %struct.evp_md_st* noundef, %struct.engine_st* noundef) local_unnamed_addr #3

declare void @EVP_MD_free(%struct.evp_md_st* noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #7

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare i64 @strlen(i8* noundef) local_unnamed_addr #8

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #5 = { nounwind "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #8 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nobuiltin "no-builtins" }
attributes #10 = { nobuiltin nounwind "no-builtins" }
attributes #11 = { nounwind }
attributes #12 = { nobuiltin nounwind readonly willreturn "no-builtins" }

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
!8 = !{!6, !6, i64 0}
!9 = distinct !{!9, !10}
!10 = !{!"llvm.loop.mustprogress"}
