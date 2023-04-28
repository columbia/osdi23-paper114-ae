; ModuleID = 'crypto/sm2/sm2_sign.c'
source_filename = "crypto/sm2/sm2_sign.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evp_md_st = type opaque
%struct.ec_key_st = type opaque
%struct.ec_group_st = type opaque
%struct.evp_md_ctx_st = type opaque
%struct.ossl_lib_ctx_st = type opaque
%struct.bignum_ctx = type opaque
%struct.bignum_st = type opaque
%struct.ec_point_st = type opaque
%struct.ECDSA_SIG_st = type opaque

@.str = private unnamed_addr constant [22 x i8] c"crypto/sm2/sm2_sign.c\00", align 1
@__func__.ossl_sm2_compute_z_digest = private unnamed_addr constant [26 x i8] c"ossl_sm2_compute_z_digest\00", align 1
@__func__.ossl_sm2_internal_sign = private unnamed_addr constant [23 x i8] c"ossl_sm2_internal_sign\00", align 1
@__func__.ossl_sm2_internal_verify = private unnamed_addr constant [25 x i8] c"ossl_sm2_internal_verify\00", align 1
@__func__.sm2_compute_msg_hash = private unnamed_addr constant [21 x i8] c"sm2_compute_msg_hash\00", align 1
@__func__.sm2_sig_gen = private unnamed_addr constant [12 x i8] c"sm2_sig_gen\00", align 1
@__func__.sm2_sig_verify = private unnamed_addr constant [15 x i8] c"sm2_sig_verify\00", align 1

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_sm2_compute_z_digest(i8* noundef %out, %struct.evp_md_st* noundef %digest, i8* noundef %id, i64 noundef %id_len, %struct.ec_key_st* noundef %key) local_unnamed_addr #0 {
entry:
  %e_byte = alloca i8, align 1
  %call = tail call %struct.ec_group_st* @EC_KEY_get0_group(%struct.ec_key_st* noundef %key) #4
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %e_byte) #5
  store i8 0, i8* %e_byte, align 1, !tbaa !4
  %call1 = tail call %struct.evp_md_ctx_st* @EVP_MD_CTX_new() #4
  %call2 = tail call %struct.ossl_lib_ctx_st* @ossl_ec_key_get_libctx(%struct.ec_key_st* noundef %key) #4
  %call3 = tail call %struct.bignum_ctx* @BN_CTX_new_ex(%struct.ossl_lib_ctx_st* noundef %call2) #4
  %cmp = icmp eq %struct.evp_md_ctx_st* %call1, null
  %cmp4 = icmp eq %struct.bignum_ctx* %call3, null
  %or.cond = select i1 %cmp, i1 true, i1 %cmp4
  br i1 %or.cond, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #4
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 49, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.ossl_sm2_compute_z_digest, i64 0, i64 0)) #4
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 53, i32 noundef 786688, i8* noundef null) #4
  br label %done

if.end:                                           ; preds = %entry
  %call5 = tail call %struct.bignum_st* @BN_CTX_get(%struct.bignum_ctx* noundef nonnull %call3) #4
  %call6 = tail call %struct.bignum_st* @BN_CTX_get(%struct.bignum_ctx* noundef nonnull %call3) #4
  %call7 = tail call %struct.bignum_st* @BN_CTX_get(%struct.bignum_ctx* noundef nonnull %call3) #4
  %call8 = tail call %struct.bignum_st* @BN_CTX_get(%struct.bignum_ctx* noundef nonnull %call3) #4
  %call9 = tail call %struct.bignum_st* @BN_CTX_get(%struct.bignum_ctx* noundef nonnull %call3) #4
  %call10 = tail call %struct.bignum_st* @BN_CTX_get(%struct.bignum_ctx* noundef nonnull %call3) #4
  %call11 = tail call %struct.bignum_st* @BN_CTX_get(%struct.bignum_ctx* noundef nonnull %call3) #4
  %cmp12 = icmp eq %struct.bignum_st* %call11, null
  br i1 %cmp12, label %if.then13, label %if.end14

if.then13:                                        ; preds = %if.end
  tail call void @ERR_new() #4
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 62, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.ossl_sm2_compute_z_digest, i64 0, i64 0)) #4
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 53, i32 noundef 786688, i8* noundef null) #4
  br label %done

if.end14:                                         ; preds = %if.end
  %call15 = tail call i32 @EVP_DigestInit(%struct.evp_md_ctx_st* noundef nonnull %call1, %struct.evp_md_st* noundef %digest) #4
  %tobool.not = icmp eq i32 %call15, 0
  br i1 %tobool.not, label %if.then16, label %if.end17

if.then16:                                        ; preds = %if.end14
  tail call void @ERR_new() #4
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 67, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.ossl_sm2_compute_z_digest, i64 0, i64 0)) #4
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 53, i32 noundef 524294, i8* noundef null) #4
  br label %done

if.end17:                                         ; preds = %if.end14
  %cmp18 = icmp ugt i64 %id_len, 8190
  br i1 %cmp18, label %if.then19, label %if.end20

if.then19:                                        ; preds = %if.end17
  tail call void @ERR_new() #4
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 75, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.ossl_sm2_compute_z_digest, i64 0, i64 0)) #4
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 53, i32 noundef 111, i8* noundef null) #4
  br label %done

if.end20:                                         ; preds = %if.end17
  %0 = lshr i64 %id_len, 5
  %conv22 = trunc i64 %0 to i8
  store i8 %conv22, i8* %e_byte, align 1, !tbaa !4
  %call23 = call i32 @EVP_DigestUpdate(%struct.evp_md_ctx_st* noundef nonnull %call1, i8* noundef nonnull %e_byte, i64 noundef 1) #4
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %if.then25, label %if.end26

if.then25:                                        ; preds = %if.end20
  call void @ERR_new() #4
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 83, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.ossl_sm2_compute_z_digest, i64 0, i64 0)) #4
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 53, i32 noundef 524294, i8* noundef null) #4
  br label %done

if.end26:                                         ; preds = %if.end20
  %id_len.tr = trunc i64 %id_len to i8
  %conv = shl i8 %id_len.tr, 3
  store i8 %conv, i8* %e_byte, align 1, !tbaa !4
  %call29 = call i32 @EVP_DigestUpdate(%struct.evp_md_ctx_st* noundef nonnull %call1, i8* noundef nonnull %e_byte, i64 noundef 1) #4
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %if.then31, label %if.end32

if.then31:                                        ; preds = %if.end26
  call void @ERR_new() #4
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 88, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.ossl_sm2_compute_z_digest, i64 0, i64 0)) #4
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 53, i32 noundef 524294, i8* noundef null) #4
  br label %done

if.end32:                                         ; preds = %if.end26
  %cmp33.not = icmp eq i64 %id_len, 0
  br i1 %cmp33.not, label %if.end38, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end32
  %call35 = call i32 @EVP_DigestUpdate(%struct.evp_md_ctx_st* noundef nonnull %call1, i8* noundef %id, i64 noundef %id_len) #4
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %if.then37, label %if.end38

if.then37:                                        ; preds = %land.lhs.true
  call void @ERR_new() #4
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 93, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.ossl_sm2_compute_z_digest, i64 0, i64 0)) #4
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 53, i32 noundef 524294, i8* noundef null) #4
  br label %done

if.end38:                                         ; preds = %land.lhs.true, %if.end32
  %call39 = call i32 @EC_GROUP_get_curve(%struct.ec_group_st* noundef %call, %struct.bignum_st* noundef %call5, %struct.bignum_st* noundef %call6, %struct.bignum_st* noundef %call7, %struct.bignum_ctx* noundef nonnull %call3) #4
  %tobool40.not = icmp eq i32 %call39, 0
  br i1 %tobool40.not, label %if.then41, label %if.end42

if.then41:                                        ; preds = %if.end38
  call void @ERR_new() #4
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 98, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.ossl_sm2_compute_z_digest, i64 0, i64 0)) #4
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 53, i32 noundef 524304, i8* noundef null) #4
  br label %done

if.end42:                                         ; preds = %if.end38
  %call43 = call i32 @BN_num_bits(%struct.bignum_st* noundef %call5) #4
  %add = add nsw i32 %call43, 7
  %div = sdiv i32 %add, 8
  %conv44 = sext i32 %div to i64
  %call45 = call i8* @CRYPTO_zalloc(i64 noundef %conv44, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 103) #4
  %cmp46 = icmp eq i8* %call45, null
  br i1 %cmp46, label %if.then48, label %if.end49

if.then48:                                        ; preds = %if.end42
  call void @ERR_new() #4
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 105, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.ossl_sm2_compute_z_digest, i64 0, i64 0)) #4
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 53, i32 noundef 786688, i8* noundef null) #4
  br label %done

if.end49:                                         ; preds = %if.end42
  %call50 = call i32 @BN_bn2binpad(%struct.bignum_st* noundef %call6, i8* noundef nonnull %call45, i32 noundef %div) #4
  %cmp51 = icmp slt i32 %call50, 0
  br i1 %cmp51, label %if.then108, label %lor.lhs.false53

lor.lhs.false53:                                  ; preds = %if.end49
  %call55 = call i32 @EVP_DigestUpdate(%struct.evp_md_ctx_st* noundef nonnull %call1, i8* noundef nonnull %call45, i64 noundef %conv44) #4
  %tobool56.not = icmp eq i32 %call55, 0
  br i1 %tobool56.not, label %if.then108, label %lor.lhs.false57

lor.lhs.false57:                                  ; preds = %lor.lhs.false53
  %call58 = call i32 @BN_bn2binpad(%struct.bignum_st* noundef %call7, i8* noundef nonnull %call45, i32 noundef %div) #4
  %cmp59 = icmp slt i32 %call58, 0
  br i1 %cmp59, label %if.then108, label %lor.lhs.false61

lor.lhs.false61:                                  ; preds = %lor.lhs.false57
  %call63 = call i32 @EVP_DigestUpdate(%struct.evp_md_ctx_st* noundef nonnull %call1, i8* noundef nonnull %call45, i64 noundef %conv44) #4
  %tobool64.not = icmp eq i32 %call63, 0
  br i1 %tobool64.not, label %if.then108, label %lor.lhs.false65

lor.lhs.false65:                                  ; preds = %lor.lhs.false61
  %call66 = call %struct.ec_point_st* @EC_GROUP_get0_generator(%struct.ec_group_st* noundef %call) #4
  %call67 = call i32 @EC_POINT_get_affine_coordinates(%struct.ec_group_st* noundef %call, %struct.ec_point_st* noundef %call66, %struct.bignum_st* noundef %call8, %struct.bignum_st* noundef %call9, %struct.bignum_ctx* noundef nonnull %call3) #4
  %tobool68.not = icmp eq i32 %call67, 0
  br i1 %tobool68.not, label %if.then108, label %lor.lhs.false69

lor.lhs.false69:                                  ; preds = %lor.lhs.false65
  %call70 = call i32 @BN_bn2binpad(%struct.bignum_st* noundef %call8, i8* noundef nonnull %call45, i32 noundef %div) #4
  %cmp71 = icmp slt i32 %call70, 0
  br i1 %cmp71, label %if.then108, label %lor.lhs.false73

lor.lhs.false73:                                  ; preds = %lor.lhs.false69
  %call75 = call i32 @EVP_DigestUpdate(%struct.evp_md_ctx_st* noundef nonnull %call1, i8* noundef nonnull %call45, i64 noundef %conv44) #4
  %tobool76.not = icmp eq i32 %call75, 0
  br i1 %tobool76.not, label %if.then108, label %lor.lhs.false77

lor.lhs.false77:                                  ; preds = %lor.lhs.false73
  %call78 = call i32 @BN_bn2binpad(%struct.bignum_st* noundef %call9, i8* noundef nonnull %call45, i32 noundef %div) #4
  %cmp79 = icmp slt i32 %call78, 0
  br i1 %cmp79, label %if.then108, label %lor.lhs.false81

lor.lhs.false81:                                  ; preds = %lor.lhs.false77
  %call83 = call i32 @EVP_DigestUpdate(%struct.evp_md_ctx_st* noundef nonnull %call1, i8* noundef nonnull %call45, i64 noundef %conv44) #4
  %tobool84.not = icmp eq i32 %call83, 0
  br i1 %tobool84.not, label %if.then108, label %lor.lhs.false85

lor.lhs.false85:                                  ; preds = %lor.lhs.false81
  %call86 = call %struct.ec_point_st* @EC_KEY_get0_public_key(%struct.ec_key_st* noundef %key) #4
  %call87 = call i32 @EC_POINT_get_affine_coordinates(%struct.ec_group_st* noundef %call, %struct.ec_point_st* noundef %call86, %struct.bignum_st* noundef %call10, %struct.bignum_st* noundef nonnull %call11, %struct.bignum_ctx* noundef nonnull %call3) #4
  %tobool88.not = icmp eq i32 %call87, 0
  br i1 %tobool88.not, label %if.then108, label %lor.lhs.false89

lor.lhs.false89:                                  ; preds = %lor.lhs.false85
  %call90 = call i32 @BN_bn2binpad(%struct.bignum_st* noundef %call10, i8* noundef nonnull %call45, i32 noundef %div) #4
  %cmp91 = icmp slt i32 %call90, 0
  br i1 %cmp91, label %if.then108, label %lor.lhs.false93

lor.lhs.false93:                                  ; preds = %lor.lhs.false89
  %call95 = call i32 @EVP_DigestUpdate(%struct.evp_md_ctx_st* noundef nonnull %call1, i8* noundef nonnull %call45, i64 noundef %conv44) #4
  %tobool96.not = icmp eq i32 %call95, 0
  br i1 %tobool96.not, label %if.then108, label %lor.lhs.false97

lor.lhs.false97:                                  ; preds = %lor.lhs.false93
  %call98 = call i32 @BN_bn2binpad(%struct.bignum_st* noundef nonnull %call11, i8* noundef nonnull %call45, i32 noundef %div) #4
  %cmp99 = icmp slt i32 %call98, 0
  br i1 %cmp99, label %if.then108, label %lor.lhs.false101

lor.lhs.false101:                                 ; preds = %lor.lhs.false97
  %call103 = call i32 @EVP_DigestUpdate(%struct.evp_md_ctx_st* noundef nonnull %call1, i8* noundef nonnull %call45, i64 noundef %conv44) #4
  %tobool104.not = icmp eq i32 %call103, 0
  br i1 %tobool104.not, label %if.then108, label %lor.lhs.false105

lor.lhs.false105:                                 ; preds = %lor.lhs.false101
  %call106 = call i32 @EVP_DigestFinal(%struct.evp_md_ctx_st* noundef nonnull %call1, i8* noundef %out, i32* noundef null) #4
  %tobool107.not = icmp eq i32 %call106, 0
  br i1 %tobool107.not, label %if.then108, label %done

if.then108:                                       ; preds = %lor.lhs.false105, %lor.lhs.false101, %lor.lhs.false97, %lor.lhs.false93, %lor.lhs.false89, %lor.lhs.false85, %lor.lhs.false81, %lor.lhs.false77, %lor.lhs.false73, %lor.lhs.false69, %lor.lhs.false65, %lor.lhs.false61, %lor.lhs.false57, %lor.lhs.false53, %if.end49
  call void @ERR_new() #4
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 128, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.ossl_sm2_compute_z_digest, i64 0, i64 0)) #4
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 53, i32 noundef 786691, i8* noundef null) #4
  br label %done

done:                                             ; preds = %lor.lhs.false105, %if.then108, %if.then48, %if.then41, %if.then37, %if.then31, %if.then25, %if.then19, %if.then16, %if.then13, %if.then
  %rc.0 = phi i32 [ 0, %if.then ], [ 0, %if.then13 ], [ 0, %if.then19 ], [ 0, %if.then48 ], [ 0, %if.then108 ], [ 0, %if.then41 ], [ 0, %if.then37 ], [ 0, %if.then31 ], [ 0, %if.then25 ], [ 0, %if.then16 ], [ 1, %lor.lhs.false105 ]
  %buf.0 = phi i8* [ null, %if.then ], [ null, %if.then13 ], [ null, %if.then19 ], [ null, %if.then48 ], [ %call45, %if.then108 ], [ null, %if.then41 ], [ null, %if.then37 ], [ null, %if.then31 ], [ null, %if.then25 ], [ null, %if.then16 ], [ %call45, %lor.lhs.false105 ]
  call void @CRYPTO_free(i8* noundef %buf.0, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 135) #4
  call void @BN_CTX_free(%struct.bignum_ctx* noundef %call3) #4
  call void @EVP_MD_CTX_free(%struct.evp_md_ctx_st* noundef %call1) #4
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %e_byte) #5
  ret i32 %rc.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

declare %struct.ec_group_st* @EC_KEY_get0_group(%struct.ec_key_st* noundef) local_unnamed_addr #2

declare %struct.evp_md_ctx_st* @EVP_MD_CTX_new() local_unnamed_addr #2

declare %struct.bignum_ctx* @BN_CTX_new_ex(%struct.ossl_lib_ctx_st* noundef) local_unnamed_addr #2

declare %struct.ossl_lib_ctx_st* @ossl_ec_key_get_libctx(%struct.ec_key_st* noundef) local_unnamed_addr #2

declare void @ERR_new() local_unnamed_addr #2

declare void @ERR_set_debug(i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #2

declare void @ERR_set_error(i32 noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #2

declare %struct.bignum_st* @BN_CTX_get(%struct.bignum_ctx* noundef) local_unnamed_addr #2

declare i32 @EVP_DigestInit(%struct.evp_md_ctx_st* noundef, %struct.evp_md_st* noundef) local_unnamed_addr #2

declare i32 @EVP_DigestUpdate(%struct.evp_md_ctx_st* noundef, i8* noundef, i64 noundef) local_unnamed_addr #2

declare i32 @EC_GROUP_get_curve(%struct.ec_group_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_ctx* noundef) local_unnamed_addr #2

declare i32 @BN_num_bits(%struct.bignum_st* noundef) local_unnamed_addr #2

declare i8* @CRYPTO_zalloc(i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare i32 @BN_bn2binpad(%struct.bignum_st* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare i32 @EC_POINT_get_affine_coordinates(%struct.ec_group_st* noundef, %struct.ec_point_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_ctx* noundef) local_unnamed_addr #2

declare %struct.ec_point_st* @EC_GROUP_get0_generator(%struct.ec_group_st* noundef) local_unnamed_addr #2

declare %struct.ec_point_st* @EC_KEY_get0_public_key(%struct.ec_key_st* noundef) local_unnamed_addr #2

declare i32 @EVP_DigestFinal(%struct.evp_md_ctx_st* noundef, i8* noundef, i32* noundef) local_unnamed_addr #2

declare void @CRYPTO_free(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare void @BN_CTX_free(%struct.bignum_ctx* noundef) local_unnamed_addr #2

declare void @EVP_MD_CTX_free(%struct.evp_md_ctx_st* noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: noinline nounwind uwtable
define %struct.ECDSA_SIG_st* @ossl_sm2_do_sign(%struct.ec_key_st* noundef %key, %struct.evp_md_st* noundef %digest, i8* noundef %id, i64 noundef %id_len, i8* noundef %msg, i64 noundef %msg_len) local_unnamed_addr #0 {
entry:
  %call = tail call fastcc %struct.bignum_st* @sm2_compute_msg_hash(%struct.evp_md_st* noundef %digest, %struct.ec_key_st* noundef %key, i8* noundef %id, i64 noundef %id_len, i8* noundef %msg, i64 noundef %msg_len) #6
  %cmp = icmp eq %struct.bignum_st* %call, null
  br i1 %cmp, label %done, label %if.end

if.end:                                           ; preds = %entry
  %call1 = tail call fastcc %struct.ECDSA_SIG_st* @sm2_sig_gen(%struct.ec_key_st* noundef %key, %struct.bignum_st* noundef nonnull %call) #6
  br label %done

done:                                             ; preds = %entry, %if.end
  %sig.0 = phi %struct.ECDSA_SIG_st* [ null, %entry ], [ %call1, %if.end ]
  tail call void @BN_free(%struct.bignum_st* noundef %call) #4
  ret %struct.ECDSA_SIG_st* %sig.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.bignum_st* @sm2_compute_msg_hash(%struct.evp_md_st* noundef %digest, %struct.ec_key_st* noundef %key, i8* noundef %id, i64 noundef %id_len, i8* noundef %msg, i64 noundef %msg_len) unnamed_addr #0 {
entry:
  %call = tail call %struct.evp_md_ctx_st* @EVP_MD_CTX_new() #4
  %call1 = tail call i32 @EVP_MD_get_size(%struct.evp_md_st* noundef %digest) #4
  %call2 = tail call %struct.ossl_lib_ctx_st* @ossl_ec_key_get_libctx(%struct.ec_key_st* noundef %key) #4
  %call3 = tail call i8* @ossl_ec_key_get0_propq(%struct.ec_key_st* noundef %key) #4
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %done.sink.split, label %if.end

if.end:                                           ; preds = %entry
  %conv66 = zext i32 %call1 to i64
  %call4 = tail call i8* @CRYPTO_zalloc(i64 noundef %conv66, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 160) #4
  %cmp5 = icmp eq %struct.evp_md_ctx_st* %call, null
  %cmp7 = icmp eq i8* %call4, null
  %or.cond = select i1 %cmp5, i1 true, i1 %cmp7
  br i1 %or.cond, label %done.sink.split, label %if.end10

if.end10:                                         ; preds = %if.end
  %call11 = tail call i8* @EVP_MD_get0_name(%struct.evp_md_st* noundef %digest) #4
  %call12 = tail call %struct.evp_md_st* @EVP_MD_fetch(%struct.ossl_lib_ctx_st* noundef %call2, i8* noundef %call11, i8* noundef %call3) #4
  %cmp13 = icmp eq %struct.evp_md_st* %call12, null
  br i1 %cmp13, label %done.sink.split, label %if.end16

if.end16:                                         ; preds = %if.end10
  %call17 = tail call i32 @ossl_sm2_compute_z_digest(i8* noundef nonnull %call4, %struct.evp_md_st* noundef nonnull %call12, i8* noundef %id, i64 noundef %id_len, %struct.ec_key_st* noundef %key) #6
  %tobool.not = icmp eq i32 %call17, 0
  br i1 %tobool.not, label %done, label %if.end19

if.end19:                                         ; preds = %if.end16
  %call20 = tail call i32 @EVP_DigestInit(%struct.evp_md_ctx_st* noundef nonnull %call, %struct.evp_md_st* noundef nonnull %call12) #4
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %done.sink.split, label %lor.lhs.false22

lor.lhs.false22:                                  ; preds = %if.end19
  %call24 = tail call i32 @EVP_DigestUpdate(%struct.evp_md_ctx_st* noundef nonnull %call, i8* noundef nonnull %call4, i64 noundef %conv66) #4
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %done.sink.split, label %lor.lhs.false26

lor.lhs.false26:                                  ; preds = %lor.lhs.false22
  %call27 = tail call i32 @EVP_DigestUpdate(%struct.evp_md_ctx_st* noundef nonnull %call, i8* noundef %msg, i64 noundef %msg_len) #4
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %done.sink.split, label %lor.lhs.false29

lor.lhs.false29:                                  ; preds = %lor.lhs.false26
  %call30 = tail call i32 @EVP_DigestFinal(%struct.evp_md_ctx_st* noundef nonnull %call, i8* noundef nonnull %call4, i32* noundef null) #4
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %done.sink.split, label %if.end33

if.end33:                                         ; preds = %lor.lhs.false29
  %call34 = tail call %struct.bignum_st* @BN_bin2bn(i8* noundef nonnull %call4, i32 noundef %call1, %struct.bignum_st* noundef null) #4
  %cmp35 = icmp eq %struct.bignum_st* %call34, null
  br i1 %cmp35, label %done.sink.split, label %done

done.sink.split:                                  ; preds = %if.end33, %if.end19, %lor.lhs.false22, %lor.lhs.false26, %lor.lhs.false29, %if.end10, %if.end, %entry
  %.sink67 = phi i32 [ 156, %entry ], [ 162, %if.end ], [ 168, %if.end10 ], [ 182, %lor.lhs.false29 ], [ 182, %lor.lhs.false26 ], [ 182, %lor.lhs.false22 ], [ 182, %if.end19 ], [ 188, %if.end33 ]
  %.sink = phi i32 [ 102, %entry ], [ 786688, %if.end ], [ 786691, %if.end10 ], [ 524294, %lor.lhs.false29 ], [ 524294, %lor.lhs.false26 ], [ 524294, %lor.lhs.false22 ], [ 524294, %if.end19 ], [ 786691, %if.end33 ]
  %fetched_digest.0.ph = phi %struct.evp_md_st* [ null, %entry ], [ null, %if.end ], [ null, %if.end10 ], [ %call12, %lor.lhs.false29 ], [ %call12, %lor.lhs.false26 ], [ %call12, %lor.lhs.false22 ], [ %call12, %if.end19 ], [ %call12, %if.end33 ]
  %z.0.ph = phi i8* [ null, %entry ], [ %call4, %if.end ], [ %call4, %if.end10 ], [ %call4, %lor.lhs.false29 ], [ %call4, %lor.lhs.false26 ], [ %call4, %lor.lhs.false22 ], [ %call4, %if.end19 ], [ %call4, %if.end33 ]
  tail call void @ERR_new() #4
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef %.sink67, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.sm2_compute_msg_hash, i64 0, i64 0)) #4
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 53, i32 noundef %.sink, i8* noundef null) #4
  br label %done

done:                                             ; preds = %done.sink.split, %if.end33, %if.end16
  %fetched_digest.0 = phi %struct.evp_md_st* [ %call12, %if.end33 ], [ %call12, %if.end16 ], [ %fetched_digest.0.ph, %done.sink.split ]
  %e.0 = phi %struct.bignum_st* [ %call34, %if.end33 ], [ null, %if.end16 ], [ null, %done.sink.split ]
  %z.0 = phi i8* [ %call4, %if.end33 ], [ %call4, %if.end16 ], [ %z.0.ph, %done.sink.split ]
  tail call void @EVP_MD_free(%struct.evp_md_st* noundef %fetched_digest.0) #4
  tail call void @CRYPTO_free(i8* noundef %z.0, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 192) #4
  tail call void @EVP_MD_CTX_free(%struct.evp_md_ctx_st* noundef %call) #4
  ret %struct.bignum_st* %e.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.ECDSA_SIG_st* @sm2_sig_gen(%struct.ec_key_st* noundef %key, %struct.bignum_st* noundef %e) unnamed_addr #0 {
entry:
  %call = tail call %struct.bignum_st* @EC_KEY_get0_private_key(%struct.ec_key_st* noundef %key) #4
  %call1 = tail call %struct.ec_group_st* @EC_KEY_get0_group(%struct.ec_key_st* noundef %key) #4
  %call2 = tail call %struct.bignum_st* @EC_GROUP_get0_order(%struct.ec_group_st* noundef %call1) #4
  %call3 = tail call %struct.ossl_lib_ctx_st* @ossl_ec_key_get_libctx(%struct.ec_key_st* noundef %key) #4
  %call4 = tail call %struct.ec_point_st* @EC_POINT_new(%struct.ec_group_st* noundef %call1) #4
  %call5 = tail call %struct.bignum_ctx* @BN_CTX_new_ex(%struct.ossl_lib_ctx_st* noundef %call3) #4
  %cmp = icmp eq %struct.ec_point_st* %call4, null
  %cmp6 = icmp eq %struct.bignum_ctx* %call5, null
  %or.cond = select i1 %cmp, i1 true, i1 %cmp6
  br i1 %or.cond, label %if.then69, label %if.end

if.end:                                           ; preds = %entry
  tail call void @BN_CTX_start(%struct.bignum_ctx* noundef nonnull %call5) #4
  %call7 = tail call %struct.bignum_st* @BN_CTX_get(%struct.bignum_ctx* noundef nonnull %call5) #4
  %call8 = tail call %struct.bignum_st* @BN_CTX_get(%struct.bignum_ctx* noundef nonnull %call5) #4
  %call9 = tail call %struct.bignum_st* @BN_CTX_get(%struct.bignum_ctx* noundef nonnull %call5) #4
  %call10 = tail call %struct.bignum_st* @BN_CTX_get(%struct.bignum_ctx* noundef nonnull %call5) #4
  %cmp11 = icmp eq %struct.bignum_st* %call10, null
  br i1 %cmp11, label %if.then69, label %if.end13

if.end13:                                         ; preds = %if.end
  %call14 = tail call %struct.bignum_st* @BN_new() #4
  %call15 = tail call %struct.bignum_st* @BN_new() #4
  %cmp16 = icmp eq %struct.bignum_st* %call14, null
  %cmp18 = icmp eq %struct.bignum_st* %call15, null
  %or.cond71 = select i1 %cmp16, i1 true, i1 %cmp18
  br i1 %or.cond71, label %if.then69, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end13
  %call21145 = tail call i32 @BN_priv_rand_range_ex(%struct.bignum_st* noundef %call7, %struct.bignum_st* noundef %call2, i32 noundef 0, %struct.bignum_ctx* noundef nonnull %call5) #4
  %tobool.not146 = icmp eq i32 %call21145, 0
  br i1 %tobool.not146, label %if.then69, label %if.end23

if.end23:                                         ; preds = %for.cond.preheader, %for.cond.backedge
  %call24 = tail call i32 @EC_POINT_mul(%struct.ec_group_st* noundef %call1, %struct.ec_point_st* noundef %call4, %struct.bignum_st* noundef %call7, %struct.ec_point_st* noundef null, %struct.bignum_st* noundef null, %struct.bignum_ctx* noundef %call5) #4
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %if.then69, label %lor.lhs.false26

lor.lhs.false26:                                  ; preds = %if.end23
  %call27 = tail call i32 @EC_POINT_get_affine_coordinates(%struct.ec_group_st* noundef %call1, %struct.ec_point_st* noundef %call4, %struct.bignum_st* noundef %call9, %struct.bignum_st* noundef null, %struct.bignum_ctx* noundef %call5) #4
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %if.then69, label %lor.lhs.false29

lor.lhs.false29:                                  ; preds = %lor.lhs.false26
  %call30 = tail call i32 @BN_mod_add(%struct.bignum_st* noundef %call14, %struct.bignum_st* noundef %e, %struct.bignum_st* noundef %call9, %struct.bignum_st* noundef %call2, %struct.bignum_ctx* noundef %call5) #4
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %if.then69, label %if.end33

if.end33:                                         ; preds = %lor.lhs.false29
  %call34 = tail call i32 @BN_is_zero(%struct.bignum_st* noundef %call14) #4
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %if.end37, label %for.cond.backedge

for.cond.backedge:                                ; preds = %if.end33, %if.end41
  %call21 = tail call i32 @BN_priv_rand_range_ex(%struct.bignum_st* noundef %call7, %struct.bignum_st* noundef %call2, i32 noundef 0, %struct.bignum_ctx* noundef %call5) #4
  %tobool.not = icmp eq i32 %call21, 0
  br i1 %tobool.not, label %if.then69, label %if.end23

if.end37:                                         ; preds = %if.end33
  %call38 = tail call i32 @BN_add(%struct.bignum_st* noundef %call8, %struct.bignum_st* noundef %call14, %struct.bignum_st* noundef %call7) #4
  %tobool39.not = icmp eq i32 %call38, 0
  br i1 %tobool39.not, label %if.then69, label %if.end41

if.end41:                                         ; preds = %if.end37
  %call42 = tail call i32 @BN_cmp(%struct.bignum_st* noundef %call8, %struct.bignum_st* noundef %call2) #4
  %cmp43 = icmp eq i32 %call42, 0
  br i1 %cmp43, label %for.cond.backedge, label %if.end45

if.end45:                                         ; preds = %if.end41
  %call46 = tail call %struct.bignum_st* @BN_value_one() #4
  %call47 = tail call i32 @BN_add(%struct.bignum_st* noundef %call15, %struct.bignum_st* noundef %call, %struct.bignum_st* noundef %call46) #4
  %tobool48.not = icmp eq i32 %call47, 0
  br i1 %tobool48.not, label %if.then69, label %lor.lhs.false49

lor.lhs.false49:                                  ; preds = %if.end45
  %call50 = tail call i32 @ossl_ec_group_do_inverse_ord(%struct.ec_group_st* noundef %call1, %struct.bignum_st* noundef %call15, %struct.bignum_st* noundef %call15, %struct.bignum_ctx* noundef %call5) #4
  %tobool51.not = icmp eq i32 %call50, 0
  br i1 %tobool51.not, label %if.then69, label %lor.lhs.false52

lor.lhs.false52:                                  ; preds = %lor.lhs.false49
  %call53 = tail call i32 @BN_mod_mul(%struct.bignum_st* noundef nonnull %call10, %struct.bignum_st* noundef %call, %struct.bignum_st* noundef %call14, %struct.bignum_st* noundef %call2, %struct.bignum_ctx* noundef %call5) #4
  %tobool54.not = icmp eq i32 %call53, 0
  br i1 %tobool54.not, label %if.then69, label %lor.lhs.false55

lor.lhs.false55:                                  ; preds = %lor.lhs.false52
  %call56 = tail call i32 @BN_sub(%struct.bignum_st* noundef nonnull %call10, %struct.bignum_st* noundef %call7, %struct.bignum_st* noundef nonnull %call10) #4
  %tobool57.not = icmp eq i32 %call56, 0
  br i1 %tobool57.not, label %if.then69, label %lor.lhs.false58

lor.lhs.false58:                                  ; preds = %lor.lhs.false55
  %call59 = tail call i32 @BN_mod_mul(%struct.bignum_st* noundef %call15, %struct.bignum_st* noundef %call15, %struct.bignum_st* noundef nonnull %call10, %struct.bignum_st* noundef %call2, %struct.bignum_ctx* noundef %call5) #4
  %tobool60.not = icmp eq i32 %call59, 0
  br i1 %tobool60.not, label %if.then69, label %if.end62

if.end62:                                         ; preds = %lor.lhs.false58
  %call63 = tail call %struct.ECDSA_SIG_st* @ECDSA_SIG_new() #4
  %cmp64 = icmp eq %struct.ECDSA_SIG_st* %call63, null
  br i1 %cmp64, label %if.then69, label %done

done:                                             ; preds = %if.end62
  %call67 = tail call i32 @ECDSA_SIG_set0(%struct.ECDSA_SIG_st* noundef nonnull %call63, %struct.bignum_st* noundef %call14, %struct.bignum_st* noundef %call15) #4
  br label %if.end70

if.then69:                                        ; preds = %if.end37, %if.end23, %lor.lhs.false26, %lor.lhs.false29, %for.cond.backedge, %if.end62, %if.end45, %lor.lhs.false49, %lor.lhs.false52, %lor.lhs.false55, %lor.lhs.false58, %for.cond.preheader, %if.end13, %if.end, %entry
  %.sink147 = phi i32 [ 216, %entry ], [ 226, %if.end ], [ 238, %if.end13 ], [ 244, %for.cond.preheader ], [ 273, %lor.lhs.false58 ], [ 273, %lor.lhs.false55 ], [ 273, %lor.lhs.false52 ], [ 273, %lor.lhs.false49 ], [ 273, %if.end45 ], [ 279, %if.end62 ], [ 244, %for.cond.backedge ], [ 252, %lor.lhs.false29 ], [ 252, %lor.lhs.false26 ], [ 252, %if.end23 ], [ 261, %if.end37 ]
  %.sink = phi i32 [ 786688, %entry ], [ 786688, %if.end ], [ 786688, %if.end13 ], [ 786691, %for.cond.preheader ], [ 524291, %lor.lhs.false58 ], [ 524291, %lor.lhs.false55 ], [ 524291, %lor.lhs.false52 ], [ 524291, %lor.lhs.false49 ], [ 524291, %if.end45 ], [ 786688, %if.end62 ], [ 786691, %for.cond.backedge ], [ 786691, %lor.lhs.false29 ], [ 786691, %lor.lhs.false26 ], [ 786691, %if.end23 ], [ 786691, %if.end37 ]
  %r.0.ph = phi %struct.bignum_st* [ null, %entry ], [ null, %if.end ], [ %call14, %if.end13 ], [ %call14, %for.cond.preheader ], [ %call14, %lor.lhs.false58 ], [ %call14, %lor.lhs.false55 ], [ %call14, %lor.lhs.false52 ], [ %call14, %lor.lhs.false49 ], [ %call14, %if.end45 ], [ %call14, %if.end62 ], [ %call14, %for.cond.backedge ], [ %call14, %lor.lhs.false29 ], [ %call14, %lor.lhs.false26 ], [ %call14, %if.end23 ], [ %call14, %if.end37 ]
  %s.0.ph = phi %struct.bignum_st* [ null, %entry ], [ null, %if.end ], [ %call15, %if.end13 ], [ %call15, %for.cond.preheader ], [ %call15, %lor.lhs.false58 ], [ %call15, %lor.lhs.false55 ], [ %call15, %lor.lhs.false52 ], [ %call15, %lor.lhs.false49 ], [ %call15, %if.end45 ], [ %call15, %if.end62 ], [ %call15, %for.cond.backedge ], [ %call15, %lor.lhs.false29 ], [ %call15, %lor.lhs.false26 ], [ %call15, %if.end23 ], [ %call15, %if.end37 ]
  tail call void @ERR_new() #4
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef %.sink147, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @__func__.sm2_sig_gen, i64 0, i64 0)) #4
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 53, i32 noundef %.sink, i8* noundef null) #4
  tail call void @BN_free(%struct.bignum_st* noundef %r.0.ph) #4
  tail call void @BN_free(%struct.bignum_st* noundef %s.0.ph) #4
  br label %if.end70

if.end70:                                         ; preds = %done, %if.then69
  %sig.0143 = phi %struct.ECDSA_SIG_st* [ null, %if.then69 ], [ %call63, %done ]
  tail call void @BN_CTX_free(%struct.bignum_ctx* noundef %call5) #4
  tail call void @EC_POINT_free(%struct.ec_point_st* noundef %call4) #4
  ret %struct.ECDSA_SIG_st* %sig.0143
}

declare void @BN_free(%struct.bignum_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_sm2_do_verify(%struct.ec_key_st* noundef %key, %struct.evp_md_st* noundef %digest, %struct.ECDSA_SIG_st* noundef %sig, i8* noundef %id, i64 noundef %id_len, i8* noundef %msg, i64 noundef %msg_len) local_unnamed_addr #0 {
entry:
  %call = tail call fastcc %struct.bignum_st* @sm2_compute_msg_hash(%struct.evp_md_st* noundef %digest, %struct.ec_key_st* noundef %key, i8* noundef %id, i64 noundef %id_len, i8* noundef %msg, i64 noundef %msg_len) #6
  %cmp = icmp eq %struct.bignum_st* %call, null
  br i1 %cmp, label %done, label %if.end

if.end:                                           ; preds = %entry
  %call1 = tail call fastcc i32 @sm2_sig_verify(%struct.ec_key_st* noundef %key, %struct.ECDSA_SIG_st* noundef %sig, %struct.bignum_st* noundef nonnull %call) #6
  br label %done

done:                                             ; preds = %entry, %if.end
  %ret.0 = phi i32 [ 0, %entry ], [ %call1, %if.end ]
  tail call void @BN_free(%struct.bignum_st* noundef %call) #4
  ret i32 %ret.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @sm2_sig_verify(%struct.ec_key_st* noundef %key, %struct.ECDSA_SIG_st* noundef %sig, %struct.bignum_st* noundef %e) unnamed_addr #0 {
entry:
  %r = alloca %struct.bignum_st*, align 8
  %s = alloca %struct.bignum_st*, align 8
  %call = tail call %struct.ec_group_st* @EC_KEY_get0_group(%struct.ec_key_st* noundef %key) #4
  %call1 = tail call %struct.bignum_st* @EC_GROUP_get0_order(%struct.ec_group_st* noundef %call) #4
  %0 = bitcast %struct.bignum_st** %r to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #5
  store %struct.bignum_st* null, %struct.bignum_st** %r, align 8, !tbaa !7
  %1 = bitcast %struct.bignum_st** %s to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #5
  store %struct.bignum_st* null, %struct.bignum_st** %s, align 8, !tbaa !7
  %call2 = tail call %struct.ossl_lib_ctx_st* @ossl_ec_key_get_libctx(%struct.ec_key_st* noundef %key) #4
  %call3 = tail call %struct.bignum_ctx* @BN_CTX_new_ex(%struct.ossl_lib_ctx_st* noundef %call2) #4
  %call4 = tail call %struct.ec_point_st* @EC_POINT_new(%struct.ec_group_st* noundef %call) #4
  %cmp = icmp eq %struct.bignum_ctx* %call3, null
  %cmp5 = icmp eq %struct.ec_point_st* %call4, null
  %or.cond = select i1 %cmp, i1 true, i1 %cmp5
  br i1 %or.cond, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #4
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 316, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__func__.sm2_sig_verify, i64 0, i64 0)) #4
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 53, i32 noundef 786688, i8* noundef null) #4
  br label %done

if.end:                                           ; preds = %entry
  tail call void @BN_CTX_start(%struct.bignum_ctx* noundef nonnull %call3) #4
  %call6 = tail call %struct.bignum_st* @BN_CTX_get(%struct.bignum_ctx* noundef nonnull %call3) #4
  %call7 = tail call %struct.bignum_st* @BN_CTX_get(%struct.bignum_ctx* noundef nonnull %call3) #4
  %cmp8 = icmp eq %struct.bignum_st* %call7, null
  br i1 %cmp8, label %if.then9, label %if.end10

if.then9:                                         ; preds = %if.end
  tail call void @ERR_new() #4
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 324, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__func__.sm2_sig_verify, i64 0, i64 0)) #4
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 53, i32 noundef 786688, i8* noundef null) #4
  br label %done

if.end10:                                         ; preds = %if.end
  call void @ECDSA_SIG_get0(%struct.ECDSA_SIG_st* noundef %sig, %struct.bignum_st** noundef nonnull %r, %struct.bignum_st** noundef nonnull %s) #4
  %2 = load %struct.bignum_st*, %struct.bignum_st** %r, align 8, !tbaa !7
  %call11 = call %struct.bignum_st* @BN_value_one() #4
  %call12 = call i32 @BN_cmp(%struct.bignum_st* noundef %2, %struct.bignum_st* noundef %call11) #4
  %cmp13 = icmp slt i32 %call12, 0
  br i1 %cmp13, label %if.then24, label %lor.lhs.false14

lor.lhs.false14:                                  ; preds = %if.end10
  %3 = load %struct.bignum_st*, %struct.bignum_st** %s, align 8, !tbaa !7
  %call15 = call %struct.bignum_st* @BN_value_one() #4
  %call16 = call i32 @BN_cmp(%struct.bignum_st* noundef %3, %struct.bignum_st* noundef %call15) #4
  %cmp17 = icmp slt i32 %call16, 0
  br i1 %cmp17, label %if.then24, label %lor.lhs.false18

lor.lhs.false18:                                  ; preds = %lor.lhs.false14
  %4 = load %struct.bignum_st*, %struct.bignum_st** %r, align 8, !tbaa !7
  %call19 = call i32 @BN_cmp(%struct.bignum_st* noundef %call1, %struct.bignum_st* noundef %4) #4
  %cmp20 = icmp slt i32 %call19, 1
  br i1 %cmp20, label %if.then24, label %lor.lhs.false21

lor.lhs.false21:                                  ; preds = %lor.lhs.false18
  %5 = load %struct.bignum_st*, %struct.bignum_st** %s, align 8, !tbaa !7
  %call22 = call i32 @BN_cmp(%struct.bignum_st* noundef %call1, %struct.bignum_st* noundef %5) #4
  %cmp23 = icmp slt i32 %call22, 1
  br i1 %cmp23, label %if.then24, label %if.end25

if.then24:                                        ; preds = %lor.lhs.false21, %lor.lhs.false18, %lor.lhs.false14, %if.end10
  call void @ERR_new() #4
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 344, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__func__.sm2_sig_verify, i64 0, i64 0)) #4
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 53, i32 noundef 101, i8* noundef null) #4
  br label %done

if.end25:                                         ; preds = %lor.lhs.false21
  %6 = load %struct.bignum_st*, %struct.bignum_st** %r, align 8, !tbaa !7
  %7 = load %struct.bignum_st*, %struct.bignum_st** %s, align 8, !tbaa !7
  %call26 = call i32 @BN_mod_add(%struct.bignum_st* noundef %call6, %struct.bignum_st* noundef %6, %struct.bignum_st* noundef %7, %struct.bignum_st* noundef %call1, %struct.bignum_ctx* noundef nonnull %call3) #4
  %tobool.not = icmp eq i32 %call26, 0
  br i1 %tobool.not, label %if.then27, label %if.end28

if.then27:                                        ; preds = %if.end25
  call void @ERR_new() #4
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 349, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__func__.sm2_sig_verify, i64 0, i64 0)) #4
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 53, i32 noundef 524291, i8* noundef null) #4
  br label %done

if.end28:                                         ; preds = %if.end25
  %call29 = call i32 @BN_is_zero(%struct.bignum_st* noundef %call6) #4
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %if.end32, label %if.then31

if.then31:                                        ; preds = %if.end28
  call void @ERR_new() #4
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 354, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__func__.sm2_sig_verify, i64 0, i64 0)) #4
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 53, i32 noundef 101, i8* noundef null) #4
  br label %done

if.end32:                                         ; preds = %if.end28
  %8 = load %struct.bignum_st*, %struct.bignum_st** %s, align 8, !tbaa !7
  %call33 = call %struct.ec_point_st* @EC_KEY_get0_public_key(%struct.ec_key_st* noundef %key) #4
  %call34 = call i32 @EC_POINT_mul(%struct.ec_group_st* noundef %call, %struct.ec_point_st* noundef nonnull %call4, %struct.bignum_st* noundef %8, %struct.ec_point_st* noundef %call33, %struct.bignum_st* noundef %call6, %struct.bignum_ctx* noundef nonnull %call3) #4
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %if.then39, label %lor.lhs.false36

lor.lhs.false36:                                  ; preds = %if.end32
  %call37 = call i32 @EC_POINT_get_affine_coordinates(%struct.ec_group_st* noundef %call, %struct.ec_point_st* noundef nonnull %call4, %struct.bignum_st* noundef nonnull %call7, %struct.bignum_st* noundef null, %struct.bignum_ctx* noundef nonnull %call3) #4
  %tobool38.not = icmp eq i32 %call37, 0
  br i1 %tobool38.not, label %if.then39, label %if.end40

if.then39:                                        ; preds = %lor.lhs.false36, %if.end32
  call void @ERR_new() #4
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 360, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__func__.sm2_sig_verify, i64 0, i64 0)) #4
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 53, i32 noundef 524304, i8* noundef null) #4
  br label %done

if.end40:                                         ; preds = %lor.lhs.false36
  %call41 = call i32 @BN_mod_add(%struct.bignum_st* noundef %call6, %struct.bignum_st* noundef %e, %struct.bignum_st* noundef nonnull %call7, %struct.bignum_st* noundef %call1, %struct.bignum_ctx* noundef nonnull %call3) #4
  %tobool42.not = icmp eq i32 %call41, 0
  br i1 %tobool42.not, label %if.then43, label %if.end44

if.then43:                                        ; preds = %if.end40
  call void @ERR_new() #4
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 365, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__func__.sm2_sig_verify, i64 0, i64 0)) #4
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 53, i32 noundef 524291, i8* noundef null) #4
  br label %done

if.end44:                                         ; preds = %if.end40
  %9 = load %struct.bignum_st*, %struct.bignum_st** %r, align 8, !tbaa !7
  %call45 = call i32 @BN_cmp(%struct.bignum_st* noundef %9, %struct.bignum_st* noundef %call6) #4
  %cmp46 = icmp eq i32 %call45, 0
  %spec.select = zext i1 %cmp46 to i32
  br label %done

done:                                             ; preds = %if.end44, %if.then43, %if.then39, %if.then31, %if.then27, %if.then24, %if.then9, %if.then
  %ret.0 = phi i32 [ 0, %if.then ], [ 0, %if.then9 ], [ 0, %if.then24 ], [ 0, %if.then31 ], [ 0, %if.then43 ], [ 0, %if.then39 ], [ 0, %if.then27 ], [ %spec.select, %if.end44 ]
  call void @EC_POINT_free(%struct.ec_point_st* noundef %call4) #4
  call void @BN_CTX_free(%struct.bignum_ctx* noundef %call3) #4
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #5
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #5
  ret i32 %ret.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_sm2_internal_sign(i8* noundef %dgst, i32 noundef %dgstlen, i8* noundef %sig, i32* nocapture noundef writeonly %siglen, %struct.ec_key_st* noundef %eckey) local_unnamed_addr #0 {
entry:
  %sig.addr = alloca i8*, align 8
  store i8* %sig, i8** %sig.addr, align 8, !tbaa !7
  %call = tail call %struct.bignum_st* @BN_bin2bn(i8* noundef %dgst, i32 noundef %dgstlen, %struct.bignum_st* noundef null) #4
  %cmp = icmp eq %struct.bignum_st* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #4
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 434, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.ossl_sm2_internal_sign, i64 0, i64 0)) #4
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 53, i32 noundef 524291, i8* noundef null) #4
  br label %done

if.end:                                           ; preds = %entry
  %call1 = tail call fastcc %struct.ECDSA_SIG_st* @sm2_sig_gen(%struct.ec_key_st* noundef %eckey, %struct.bignum_st* noundef nonnull %call) #6
  %cmp2 = icmp eq %struct.ECDSA_SIG_st* %call1, null
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  tail call void @ERR_new() #4
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 440, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.ossl_sm2_internal_sign, i64 0, i64 0)) #4
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 53, i32 noundef 786691, i8* noundef null) #4
  br label %done

if.end4:                                          ; preds = %if.end
  %call5 = call i32 @i2d_ECDSA_SIG(%struct.ECDSA_SIG_st* noundef nonnull %call1, i8** noundef nonnull %sig.addr) #4
  %cmp6 = icmp slt i32 %call5, 0
  br i1 %cmp6, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.end4
  call void @ERR_new() #4
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 446, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.ossl_sm2_internal_sign, i64 0, i64 0)) #4
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 53, i32 noundef 786691, i8* noundef null) #4
  br label %done

if.end8:                                          ; preds = %if.end4
  store i32 %call5, i32* %siglen, align 4, !tbaa !9
  br label %done

done:                                             ; preds = %if.end8, %if.then7, %if.then3, %if.then
  %s.0 = phi %struct.ECDSA_SIG_st* [ null, %if.then ], [ null, %if.then3 ], [ %call1, %if.then7 ], [ %call1, %if.end8 ]
  %ret.0 = phi i32 [ -1, %if.then ], [ -1, %if.then3 ], [ -1, %if.then7 ], [ 1, %if.end8 ]
  call void @ECDSA_SIG_free(%struct.ECDSA_SIG_st* noundef %s.0) #4
  call void @BN_free(%struct.bignum_st* noundef %call) #4
  ret i32 %ret.0
}

declare %struct.bignum_st* @BN_bin2bn(i8* noundef, i32 noundef, %struct.bignum_st* noundef) local_unnamed_addr #2

declare i32 @i2d_ECDSA_SIG(%struct.ECDSA_SIG_st* noundef, i8** noundef) local_unnamed_addr #2

declare void @ECDSA_SIG_free(%struct.ECDSA_SIG_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_sm2_internal_verify(i8* noundef %dgst, i32 noundef %dgstlen, i8* noundef %sig, i32 noundef %sig_len, %struct.ec_key_st* noundef %eckey) local_unnamed_addr #0 {
entry:
  %s = alloca %struct.ECDSA_SIG_st*, align 8
  %p = alloca i8*, align 8
  %der = alloca i8*, align 8
  %0 = bitcast %struct.ECDSA_SIG_st** %s to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #5
  %1 = bitcast i8** %p to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #5
  store i8* %sig, i8** %p, align 8, !tbaa !7
  %2 = bitcast i8** %der to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #5
  store i8* null, i8** %der, align 8, !tbaa !7
  %call = tail call %struct.ECDSA_SIG_st* @ECDSA_SIG_new() #4
  store %struct.ECDSA_SIG_st* %call, %struct.ECDSA_SIG_st** %s, align 8, !tbaa !7
  %cmp = icmp eq %struct.ECDSA_SIG_st* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #4
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 472, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.ossl_sm2_internal_verify, i64 0, i64 0)) #4
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 53, i32 noundef 786688, i8* noundef null) #4
  br label %done

if.end:                                           ; preds = %entry
  %conv = sext i32 %sig_len to i64
  %call1 = call %struct.ECDSA_SIG_st* @d2i_ECDSA_SIG(%struct.ECDSA_SIG_st** noundef nonnull %s, i8** noundef nonnull %p, i64 noundef %conv) #4
  %cmp2 = icmp eq %struct.ECDSA_SIG_st* %call1, null
  br i1 %cmp2, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  call void @ERR_new() #4
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 476, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.ossl_sm2_internal_verify, i64 0, i64 0)) #4
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 53, i32 noundef 104, i8* noundef null) #4
  br label %done

if.end5:                                          ; preds = %if.end
  %3 = load %struct.ECDSA_SIG_st*, %struct.ECDSA_SIG_st** %s, align 8, !tbaa !7
  %call6 = call i32 @i2d_ECDSA_SIG(%struct.ECDSA_SIG_st* noundef %3, i8** noundef nonnull %der) #4
  %cmp7.not = icmp eq i32 %call6, %sig_len
  br i1 %cmp7.not, label %lor.lhs.false, label %if.then13

lor.lhs.false:                                    ; preds = %if.end5
  %4 = load i8*, i8** %der, align 8, !tbaa !7
  %call10 = call i32 @memcmp(i8* noundef %sig, i8* noundef %4, i64 noundef %conv) #7
  %cmp11.not = icmp eq i32 %call10, 0
  br i1 %cmp11.not, label %if.end14, label %if.then13

if.then13:                                        ; preds = %lor.lhs.false, %if.end5
  call void @ERR_new() #4
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 482, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.ossl_sm2_internal_verify, i64 0, i64 0)) #4
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 53, i32 noundef 104, i8* noundef null) #4
  br label %done

if.end14:                                         ; preds = %lor.lhs.false
  %call15 = call %struct.bignum_st* @BN_bin2bn(i8* noundef %dgst, i32 noundef %dgstlen, %struct.bignum_st* noundef null) #4
  %cmp16 = icmp eq %struct.bignum_st* %call15, null
  br i1 %cmp16, label %if.then18, label %if.end19

if.then18:                                        ; preds = %if.end14
  call void @ERR_new() #4
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 488, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.ossl_sm2_internal_verify, i64 0, i64 0)) #4
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 53, i32 noundef 524291, i8* noundef null) #4
  br label %done

if.end19:                                         ; preds = %if.end14
  %5 = load %struct.ECDSA_SIG_st*, %struct.ECDSA_SIG_st** %s, align 8, !tbaa !7
  %call20 = call fastcc i32 @sm2_sig_verify(%struct.ec_key_st* noundef %eckey, %struct.ECDSA_SIG_st* noundef %5, %struct.bignum_st* noundef nonnull %call15) #6
  br label %done

done:                                             ; preds = %if.end19, %if.then18, %if.then13, %if.then4, %if.then
  %e.0 = phi %struct.bignum_st* [ null, %if.then ], [ null, %if.then4 ], [ null, %if.then13 ], [ null, %if.then18 ], [ %call15, %if.end19 ]
  %ret.0 = phi i32 [ -1, %if.then ], [ -1, %if.then4 ], [ -1, %if.then13 ], [ -1, %if.then18 ], [ %call20, %if.end19 ]
  %6 = load i8*, i8** %der, align 8, !tbaa !7
  call void @CRYPTO_free(i8* noundef %6, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 495) #4
  call void @BN_free(%struct.bignum_st* noundef %e.0) #4
  %7 = load %struct.ECDSA_SIG_st*, %struct.ECDSA_SIG_st** %s, align 8, !tbaa !7
  call void @ECDSA_SIG_free(%struct.ECDSA_SIG_st* noundef %7) #4
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #5
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #5
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #5
  ret i32 %ret.0
}

declare %struct.ECDSA_SIG_st* @ECDSA_SIG_new() local_unnamed_addr #2

declare %struct.ECDSA_SIG_st* @d2i_ECDSA_SIG(%struct.ECDSA_SIG_st** noundef, i8** noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare i32 @memcmp(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #3

declare i32 @EVP_MD_get_size(%struct.evp_md_st* noundef) local_unnamed_addr #2

declare i8* @ossl_ec_key_get0_propq(%struct.ec_key_st* noundef) local_unnamed_addr #2

declare %struct.evp_md_st* @EVP_MD_fetch(%struct.ossl_lib_ctx_st* noundef, i8* noundef, i8* noundef) local_unnamed_addr #2

declare i8* @EVP_MD_get0_name(%struct.evp_md_st* noundef) local_unnamed_addr #2

declare void @EVP_MD_free(%struct.evp_md_st* noundef) local_unnamed_addr #2

declare %struct.bignum_st* @EC_KEY_get0_private_key(%struct.ec_key_st* noundef) local_unnamed_addr #2

declare %struct.bignum_st* @EC_GROUP_get0_order(%struct.ec_group_st* noundef) local_unnamed_addr #2

declare %struct.ec_point_st* @EC_POINT_new(%struct.ec_group_st* noundef) local_unnamed_addr #2

declare void @BN_CTX_start(%struct.bignum_ctx* noundef) local_unnamed_addr #2

declare %struct.bignum_st* @BN_new() local_unnamed_addr #2

declare i32 @BN_priv_rand_range_ex(%struct.bignum_st* noundef, %struct.bignum_st* noundef, i32 noundef, %struct.bignum_ctx* noundef) local_unnamed_addr #2

declare i32 @EC_POINT_mul(%struct.ec_group_st* noundef, %struct.ec_point_st* noundef, %struct.bignum_st* noundef, %struct.ec_point_st* noundef, %struct.bignum_st* noundef, %struct.bignum_ctx* noundef) local_unnamed_addr #2

declare i32 @BN_mod_add(%struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_ctx* noundef) local_unnamed_addr #2

declare i32 @BN_is_zero(%struct.bignum_st* noundef) local_unnamed_addr #2

declare i32 @BN_add(%struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef) local_unnamed_addr #2

declare i32 @BN_cmp(%struct.bignum_st* noundef, %struct.bignum_st* noundef) local_unnamed_addr #2

declare %struct.bignum_st* @BN_value_one() local_unnamed_addr #2

declare i32 @ossl_ec_group_do_inverse_ord(%struct.ec_group_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_ctx* noundef) local_unnamed_addr #2

declare i32 @BN_mod_mul(%struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_ctx* noundef) local_unnamed_addr #2

declare i32 @BN_sub(%struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef) local_unnamed_addr #2

declare i32 @ECDSA_SIG_set0(%struct.ECDSA_SIG_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef) local_unnamed_addr #2

declare void @EC_POINT_free(%struct.ec_point_st* noundef) local_unnamed_addr #2

declare void @ECDSA_SIG_get0(%struct.ECDSA_SIG_st* noundef, %struct.bignum_st** noundef, %struct.bignum_st** noundef) local_unnamed_addr #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nobuiltin nounwind "no-builtins" }
attributes #5 = { nounwind }
attributes #6 = { nobuiltin "no-builtins" }
attributes #7 = { nobuiltin nounwind readonly willreturn "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{!"clang version 14.0.0"}
!4 = !{!5, !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!8, !8, i64 0}
!8 = !{!"any pointer", !5, i64 0}
!9 = !{!10, !10, i64 0}
!10 = !{!"int", !5, i64 0}
