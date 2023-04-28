; ModuleID = 'crypto/rsa/rsa_sp800_56b_check.c'
source_filename = "crypto/rsa/rsa_sp800_56b_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bignum_st = type opaque
%struct.rsa_st = type { i32, %struct.ossl_lib_ctx_st*, i32, %struct.rsa_meth_st*, %struct.engine_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.rsa_pss_params_30_st, %struct.rsa_pss_params_st*, %struct.stack_st_RSA_PRIME_INFO*, %struct.crypto_ex_data_st, i32, i32, %struct.bn_mont_ctx_st*, %struct.bn_mont_ctx_st*, %struct.bn_mont_ctx_st*, %struct.bn_blinding_st*, %struct.bn_blinding_st*, i8*, i32 }
%struct.ossl_lib_ctx_st = type opaque
%struct.rsa_meth_st = type { i8*, i32 (i32, i8*, i8*, %struct.rsa_st*, i32)*, i32 (i32, i8*, i8*, %struct.rsa_st*, i32)*, i32 (i32, i8*, i8*, %struct.rsa_st*, i32)*, i32 (i32, i8*, i8*, %struct.rsa_st*, i32)*, i32 (%struct.bignum_st*, %struct.bignum_st*, %struct.rsa_st*, %struct.bignum_ctx*)*, i32 (%struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*, %struct.bn_mont_ctx_st*)*, i32 (%struct.rsa_st*)*, i32 (%struct.rsa_st*)*, i32, i8*, i32 (i32, i8*, i32, i8*, i32*, %struct.rsa_st*)*, i32 (i32, i8*, i32, i8*, i32, %struct.rsa_st*)*, i32 (%struct.rsa_st*, i32, %struct.bignum_st*, %struct.bn_gencb_st*)*, i32 (%struct.rsa_st*, i32, i32, %struct.bignum_st*, %struct.bn_gencb_st*)* }
%struct.bn_gencb_st = type opaque
%struct.engine_st = type opaque
%struct.rsa_pss_params_30_st = type { i32, %struct.anon, i32, i32 }
%struct.anon = type { i32, i32 }
%struct.rsa_pss_params_st = type { %struct.X509_algor_st*, %struct.X509_algor_st*, %struct.asn1_string_st*, %struct.asn1_string_st*, %struct.X509_algor_st* }
%struct.asn1_string_st = type { i32, i32, i8*, i64 }
%struct.X509_algor_st = type opaque
%struct.stack_st_RSA_PRIME_INFO = type opaque
%struct.crypto_ex_data_st = type { %struct.ossl_lib_ctx_st*, %struct.stack_st_void* }
%struct.stack_st_void = type opaque
%struct.bn_mont_ctx_st = type opaque
%struct.bn_blinding_st = type opaque
%struct.bignum_ctx = type opaque

@ossl_bn_inv_sqrt_2 = external constant %struct.bignum_st, align 1
@.str = private unnamed_addr constant [33 x i8] c"crypto/rsa/rsa_sp800_56b_check.c\00", align 1
@__func__.ossl_rsa_sp800_56b_check_public = private unnamed_addr constant [32 x i8] c"ossl_rsa_sp800_56b_check_public\00", align 1
@__func__.ossl_rsa_sp800_56b_check_keypair = private unnamed_addr constant [33 x i8] c"ossl_rsa_sp800_56b_check_keypair\00", align 1

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_rsa_check_crt_components(%struct.rsa_st* nocapture noundef readonly %rsa, %struct.bignum_ctx* noundef %ctx) local_unnamed_addr #0 {
entry:
  %dmp1 = getelementptr inbounds %struct.rsa_st, %struct.rsa_st* %rsa, i64 0, i32 10
  %0 = load %struct.bignum_st*, %struct.bignum_st** %dmp1, align 8, !tbaa !4
  %cmp = icmp eq %struct.bignum_st* %0, null
  %dmq17 = getelementptr inbounds %struct.rsa_st, %struct.rsa_st* %rsa, i64 0, i32 11
  %1 = load %struct.bignum_st*, %struct.bignum_st** %dmq17, align 8, !tbaa !13
  %cmp8.not = icmp eq %struct.bignum_st* %1, null
  br i1 %cmp, label %lor.lhs.false6, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  br i1 %cmp8.not, label %cleanup, label %lor.lhs.false2

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %iqmp = getelementptr inbounds %struct.rsa_st, %struct.rsa_st* %rsa, i64 0, i32 12
  %2 = load %struct.bignum_st*, %struct.bignum_st** %iqmp, align 8, !tbaa !14
  %cmp3 = icmp eq %struct.bignum_st* %2, null
  br i1 %cmp3, label %cleanup, label %if.end13

lor.lhs.false6:                                   ; preds = %entry
  br i1 %cmp8.not, label %lor.lhs.false9, label %cleanup

lor.lhs.false9:                                   ; preds = %lor.lhs.false6
  %iqmp10 = getelementptr inbounds %struct.rsa_st, %struct.rsa_st* %rsa, i64 0, i32 12
  %3 = load %struct.bignum_st*, %struct.bignum_st** %iqmp10, align 8, !tbaa !14
  %cmp11.not = icmp eq %struct.bignum_st* %3, null
  %spec.select = zext i1 %cmp11.not to i32
  br label %cleanup

if.end13:                                         ; preds = %lor.lhs.false2
  tail call void @BN_CTX_start(%struct.bignum_ctx* noundef %ctx) #3
  %call = tail call %struct.bignum_st* @BN_CTX_get(%struct.bignum_ctx* noundef %ctx) #3
  %call14 = tail call %struct.bignum_st* @BN_CTX_get(%struct.bignum_ctx* noundef %ctx) #3
  %call15 = tail call %struct.bignum_st* @BN_CTX_get(%struct.bignum_ctx* noundef %ctx) #3
  %cmp16.not = icmp eq %struct.bignum_st* %call15, null
  br i1 %cmp16.not, label %land.end, label %if.then17

if.then17:                                        ; preds = %if.end13
  tail call void @BN_set_flags(%struct.bignum_st* noundef %call, i32 noundef 4) #3
  tail call void @BN_set_flags(%struct.bignum_st* noundef %call14, i32 noundef 4) #3
  tail call void @BN_set_flags(%struct.bignum_st* noundef nonnull %call15, i32 noundef 4) #3
  %p = getelementptr inbounds %struct.rsa_st, %struct.rsa_st* %rsa, i64 0, i32 8
  %4 = load %struct.bignum_st*, %struct.bignum_st** %p, align 8, !tbaa !15
  %call19 = tail call %struct.bignum_st* @BN_copy(%struct.bignum_st* noundef %call14, %struct.bignum_st* noundef %4) #3
  %cmp20.not = icmp eq %struct.bignum_st* %call19, null
  br i1 %cmp20.not, label %land.end, label %land.lhs.true21

land.lhs.true21:                                  ; preds = %if.then17
  %call22 = tail call i32 @BN_sub_word(%struct.bignum_st* noundef %call14, i64 noundef 1) #3
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %land.end, label %land.lhs.true24

land.lhs.true24:                                  ; preds = %land.lhs.true21
  %q = getelementptr inbounds %struct.rsa_st, %struct.rsa_st* %rsa, i64 0, i32 9
  %5 = load %struct.bignum_st*, %struct.bignum_st** %q, align 8, !tbaa !16
  %call25 = tail call %struct.bignum_st* @BN_copy(%struct.bignum_st* noundef nonnull %call15, %struct.bignum_st* noundef %5) #3
  %cmp26.not = icmp eq %struct.bignum_st* %call25, null
  br i1 %cmp26.not, label %land.end, label %land.lhs.true27

land.lhs.true27:                                  ; preds = %land.lhs.true24
  %call28 = tail call i32 @BN_sub_word(%struct.bignum_st* noundef nonnull %call15, i64 noundef 1) #3
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %land.end, label %land.lhs.true30

land.lhs.true30:                                  ; preds = %land.lhs.true27
  %6 = load %struct.bignum_st*, %struct.bignum_st** %dmp1, align 8, !tbaa !4
  %call32 = tail call %struct.bignum_st* @BN_value_one() #3
  %call33 = tail call i32 @BN_cmp(%struct.bignum_st* noundef %6, %struct.bignum_st* noundef %call32) #3
  %cmp34 = icmp sgt i32 %call33, 0
  br i1 %cmp34, label %land.lhs.true35, label %land.end

land.lhs.true35:                                  ; preds = %land.lhs.true30
  %7 = load %struct.bignum_st*, %struct.bignum_st** %dmp1, align 8, !tbaa !4
  %call37 = tail call i32 @BN_cmp(%struct.bignum_st* noundef %7, %struct.bignum_st* noundef %call14) #3
  %cmp38 = icmp slt i32 %call37, 0
  br i1 %cmp38, label %land.lhs.true39, label %land.end

land.lhs.true39:                                  ; preds = %land.lhs.true35
  %8 = load %struct.bignum_st*, %struct.bignum_st** %dmq17, align 8, !tbaa !13
  %call41 = tail call %struct.bignum_st* @BN_value_one() #3
  %call42 = tail call i32 @BN_cmp(%struct.bignum_st* noundef %8, %struct.bignum_st* noundef %call41) #3
  %cmp43 = icmp sgt i32 %call42, 0
  br i1 %cmp43, label %land.lhs.true44, label %land.end

land.lhs.true44:                                  ; preds = %land.lhs.true39
  %9 = load %struct.bignum_st*, %struct.bignum_st** %dmq17, align 8, !tbaa !13
  %call46 = tail call i32 @BN_cmp(%struct.bignum_st* noundef %9, %struct.bignum_st* noundef nonnull %call15) #3
  %cmp47 = icmp slt i32 %call46, 0
  br i1 %cmp47, label %land.lhs.true48, label %land.end

land.lhs.true48:                                  ; preds = %land.lhs.true44
  %10 = load %struct.bignum_st*, %struct.bignum_st** %iqmp, align 8, !tbaa !14
  %call50 = tail call %struct.bignum_st* @BN_value_one() #3
  %call51 = tail call i32 @BN_cmp(%struct.bignum_st* noundef %10, %struct.bignum_st* noundef %call50) #3
  %cmp52 = icmp sgt i32 %call51, 0
  br i1 %cmp52, label %land.lhs.true53, label %land.end

land.lhs.true53:                                  ; preds = %land.lhs.true48
  %11 = load %struct.bignum_st*, %struct.bignum_st** %iqmp, align 8, !tbaa !14
  %12 = load %struct.bignum_st*, %struct.bignum_st** %p, align 8, !tbaa !15
  %call56 = tail call i32 @BN_cmp(%struct.bignum_st* noundef %11, %struct.bignum_st* noundef %12) #3
  %cmp57 = icmp slt i32 %call56, 0
  br i1 %cmp57, label %land.lhs.true58, label %land.end

land.lhs.true58:                                  ; preds = %land.lhs.true53
  %13 = load %struct.bignum_st*, %struct.bignum_st** %dmp1, align 8, !tbaa !4
  %e = getelementptr inbounds %struct.rsa_st, %struct.rsa_st* %rsa, i64 0, i32 6
  %14 = load %struct.bignum_st*, %struct.bignum_st** %e, align 8, !tbaa !17
  %call60 = tail call i32 @BN_mod_mul(%struct.bignum_st* noundef %call, %struct.bignum_st* noundef %13, %struct.bignum_st* noundef %14, %struct.bignum_st* noundef %call14, %struct.bignum_ctx* noundef %ctx) #3
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.end, label %land.lhs.true62

land.lhs.true62:                                  ; preds = %land.lhs.true58
  %call63 = tail call i32 @BN_is_one(%struct.bignum_st* noundef %call) #3
  %tobool64.not = icmp eq i32 %call63, 0
  br i1 %tobool64.not, label %land.end, label %land.lhs.true65

land.lhs.true65:                                  ; preds = %land.lhs.true62
  %15 = load %struct.bignum_st*, %struct.bignum_st** %dmq17, align 8, !tbaa !13
  %16 = load %struct.bignum_st*, %struct.bignum_st** %e, align 8, !tbaa !17
  %call68 = tail call i32 @BN_mod_mul(%struct.bignum_st* noundef %call, %struct.bignum_st* noundef %15, %struct.bignum_st* noundef %16, %struct.bignum_st* noundef nonnull %call15, %struct.bignum_ctx* noundef %ctx) #3
  %tobool69.not = icmp eq i32 %call68, 0
  br i1 %tobool69.not, label %land.end, label %land.lhs.true70

land.lhs.true70:                                  ; preds = %land.lhs.true65
  %call71 = tail call i32 @BN_is_one(%struct.bignum_st* noundef %call) #3
  %tobool72.not = icmp eq i32 %call71, 0
  br i1 %tobool72.not, label %land.end, label %land.lhs.true73

land.lhs.true73:                                  ; preds = %land.lhs.true70
  %17 = load %struct.bignum_st*, %struct.bignum_st** %iqmp, align 8, !tbaa !14
  %18 = load %struct.bignum_st*, %struct.bignum_st** %q, align 8, !tbaa !16
  %19 = load %struct.bignum_st*, %struct.bignum_st** %p, align 8, !tbaa !15
  %call77 = tail call i32 @BN_mod_mul(%struct.bignum_st* noundef %call, %struct.bignum_st* noundef %17, %struct.bignum_st* noundef %18, %struct.bignum_st* noundef %19, %struct.bignum_ctx* noundef %ctx) #3
  %tobool78.not = icmp eq i32 %call77, 0
  br i1 %tobool78.not, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %land.lhs.true73
  %call79 = tail call i32 @BN_is_one(%struct.bignum_st* noundef %call) #3
  %tobool80 = icmp ne i32 %call79, 0
  %phi.cast = zext i1 %tobool80 to i32
  br label %land.end

land.end:                                         ; preds = %if.end13, %land.rhs, %land.lhs.true73, %land.lhs.true70, %land.lhs.true65, %land.lhs.true62, %land.lhs.true58, %land.lhs.true53, %land.lhs.true48, %land.lhs.true44, %land.lhs.true39, %land.lhs.true35, %land.lhs.true30, %land.lhs.true27, %land.lhs.true24, %land.lhs.true21, %if.then17
  %20 = phi i32 [ 0, %land.lhs.true73 ], [ 0, %land.lhs.true70 ], [ 0, %land.lhs.true65 ], [ 0, %land.lhs.true62 ], [ 0, %land.lhs.true58 ], [ 0, %land.lhs.true53 ], [ 0, %land.lhs.true48 ], [ 0, %land.lhs.true44 ], [ 0, %land.lhs.true39 ], [ 0, %land.lhs.true35 ], [ 0, %land.lhs.true30 ], [ 0, %land.lhs.true27 ], [ 0, %land.lhs.true24 ], [ 0, %land.lhs.true21 ], [ 0, %if.then17 ], [ %phi.cast, %land.rhs ], [ 0, %if.end13 ]
  tail call void @BN_clear(%struct.bignum_st* noundef %call) #3
  tail call void @BN_clear(%struct.bignum_st* noundef %call14) #3
  tail call void @BN_clear(%struct.bignum_st* noundef %call15) #3
  tail call void @BN_CTX_end(%struct.bignum_ctx* noundef %ctx) #3
  br label %cleanup

cleanup:                                          ; preds = %lor.lhs.false, %lor.lhs.false2, %lor.lhs.false9, %lor.lhs.false6, %land.end
  %retval.0 = phi i32 [ %20, %land.end ], [ 0, %lor.lhs.false6 ], [ %spec.select, %lor.lhs.false9 ], [ 0, %lor.lhs.false2 ], [ 0, %lor.lhs.false ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

declare void @BN_CTX_start(%struct.bignum_ctx* noundef) local_unnamed_addr #2

declare %struct.bignum_st* @BN_CTX_get(%struct.bignum_ctx* noundef) local_unnamed_addr #2

declare void @BN_set_flags(%struct.bignum_st* noundef, i32 noundef) local_unnamed_addr #2

declare %struct.bignum_st* @BN_copy(%struct.bignum_st* noundef, %struct.bignum_st* noundef) local_unnamed_addr #2

declare i32 @BN_sub_word(%struct.bignum_st* noundef, i64 noundef) local_unnamed_addr #2

declare i32 @BN_cmp(%struct.bignum_st* noundef, %struct.bignum_st* noundef) local_unnamed_addr #2

declare %struct.bignum_st* @BN_value_one() local_unnamed_addr #2

declare i32 @BN_mod_mul(%struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_ctx* noundef) local_unnamed_addr #2

declare i32 @BN_is_one(%struct.bignum_st* noundef) local_unnamed_addr #2

declare void @BN_clear(%struct.bignum_st* noundef) local_unnamed_addr #2

declare void @BN_CTX_end(%struct.bignum_ctx* noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_rsa_check_prime_factor_range(%struct.bignum_st* noundef %p, i32 noundef %nbits, %struct.bignum_ctx* noundef %ctx) local_unnamed_addr #0 {
entry:
  %shr = ashr i32 %nbits, 1
  %call = tail call i32 @BN_num_bits(%struct.bignum_st* noundef nonnull @ossl_bn_inv_sqrt_2) #3
  %sub = sub nsw i32 %shr, %call
  %call1 = tail call i32 @BN_num_bits(%struct.bignum_st* noundef %p) #3
  %cmp.not = icmp eq i32 %call1, %shr
  br i1 %cmp.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  tail call void @BN_CTX_start(%struct.bignum_ctx* noundef %ctx) #3
  %call2 = tail call %struct.bignum_st* @BN_CTX_get(%struct.bignum_ctx* noundef %ctx) #3
  %cmp3 = icmp eq %struct.bignum_st* %call2, null
  br i1 %cmp3, label %err, label %if.end5

if.end5:                                          ; preds = %if.end
  %call6 = tail call %struct.bignum_st* @BN_copy(%struct.bignum_st* noundef nonnull %call2, %struct.bignum_st* noundef nonnull @ossl_bn_inv_sqrt_2) #3
  %tobool.not = icmp eq %struct.bignum_st* %call6, null
  br i1 %tobool.not, label %err, label %if.end8

if.end8:                                          ; preds = %if.end5
  %cmp9 = icmp sgt i32 %sub, -1
  br i1 %cmp9, label %if.then10, label %if.else

if.then10:                                        ; preds = %if.end8
  %call11 = tail call i32 @BN_lshift(%struct.bignum_st* noundef nonnull %call2, %struct.bignum_st* noundef nonnull %call2, i32 noundef %sub) #3
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %err, label %if.end20

if.else:                                          ; preds = %if.end8
  %sub15 = sub nsw i32 0, %sub
  %call16 = tail call i32 @BN_rshift(%struct.bignum_st* noundef nonnull %call2, %struct.bignum_st* noundef nonnull %call2, i32 noundef %sub15) #3
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %err, label %if.end20

if.end20:                                         ; preds = %if.else, %if.then10
  %call21 = tail call i32 @BN_cmp(%struct.bignum_st* noundef %p, %struct.bignum_st* noundef nonnull %call2) #3
  %cmp22 = icmp sgt i32 %call21, 0
  %spec.select = zext i1 %cmp22 to i32
  br label %err

err:                                              ; preds = %if.end20, %if.else, %if.then10, %if.end5, %if.end
  %ret.0 = phi i32 [ 0, %if.end ], [ 0, %if.then10 ], [ 0, %if.else ], [ 0, %if.end5 ], [ %spec.select, %if.end20 ]
  tail call void @BN_CTX_end(%struct.bignum_ctx* noundef %ctx) #3
  br label %cleanup

cleanup:                                          ; preds = %entry, %err
  %retval.0 = phi i32 [ %ret.0, %err ], [ 0, %entry ]
  ret i32 %retval.0
}

declare i32 @BN_num_bits(%struct.bignum_st* noundef) local_unnamed_addr #2

declare i32 @BN_lshift(%struct.bignum_st* noundef, %struct.bignum_st* noundef, i32 noundef) local_unnamed_addr #2

declare i32 @BN_rshift(%struct.bignum_st* noundef, %struct.bignum_st* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_rsa_check_prime_factor(%struct.bignum_st* noundef %p, %struct.bignum_st* noundef %e, i32 noundef %nbits, %struct.bignum_ctx* noundef %ctx) local_unnamed_addr #0 {
entry:
  %call = tail call i32 @BN_check_prime(%struct.bignum_st* noundef %p, %struct.bignum_ctx* noundef %ctx, %struct.bn_gencb_st* noundef null) #3
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %lor.lhs.false, label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %call1 = tail call i32 @ossl_rsa_check_prime_factor_range(%struct.bignum_st* noundef %p, i32 noundef %nbits, %struct.bignum_ctx* noundef %ctx) #4
  %cmp2.not = icmp eq i32 %call1, 1
  br i1 %cmp2.not, label %if.end, label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  tail call void @BN_CTX_start(%struct.bignum_ctx* noundef %ctx) #3
  %call3 = tail call %struct.bignum_st* @BN_CTX_get(%struct.bignum_ctx* noundef %ctx) #3
  %call4 = tail call %struct.bignum_st* @BN_CTX_get(%struct.bignum_ctx* noundef %ctx) #3
  %cmp5.not = icmp eq %struct.bignum_st* %call4, null
  br i1 %cmp5.not, label %land.end, label %if.then6

if.then6:                                         ; preds = %if.end
  tail call void @BN_set_flags(%struct.bignum_st* noundef %call3, i32 noundef 4) #3
  tail call void @BN_set_flags(%struct.bignum_st* noundef nonnull %call4, i32 noundef 4) #3
  %call8 = tail call %struct.bignum_st* @BN_copy(%struct.bignum_st* noundef %call3, %struct.bignum_st* noundef %p) #3
  %cmp9.not = icmp eq %struct.bignum_st* %call8, null
  br i1 %cmp9.not, label %land.end, label %land.lhs.true10

land.lhs.true10:                                  ; preds = %if.then6
  %call11 = tail call i32 @BN_sub_word(%struct.bignum_st* noundef %call3, i64 noundef 1) #3
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %land.end, label %land.lhs.true13

land.lhs.true13:                                  ; preds = %land.lhs.true10
  %call14 = tail call i32 @BN_gcd(%struct.bignum_st* noundef nonnull %call4, %struct.bignum_st* noundef %call3, %struct.bignum_st* noundef %e, %struct.bignum_ctx* noundef %ctx) #3
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %land.lhs.true13
  %call16 = tail call i32 @BN_is_one(%struct.bignum_st* noundef nonnull %call4) #3
  %tobool17 = icmp ne i32 %call16, 0
  %phi.cast = zext i1 %tobool17 to i32
  br label %land.end

land.end:                                         ; preds = %if.end, %land.rhs, %land.lhs.true13, %land.lhs.true10, %if.then6
  %0 = phi i32 [ 0, %land.lhs.true13 ], [ 0, %land.lhs.true10 ], [ 0, %if.then6 ], [ %phi.cast, %land.rhs ], [ 0, %if.end ]
  tail call void @BN_clear(%struct.bignum_st* noundef %call3) #3
  tail call void @BN_CTX_end(%struct.bignum_ctx* noundef %ctx) #3
  br label %cleanup

cleanup:                                          ; preds = %entry, %lor.lhs.false, %land.end
  %retval.0 = phi i32 [ %0, %land.end ], [ 0, %lor.lhs.false ], [ 0, %entry ]
  ret i32 %retval.0
}

declare i32 @BN_check_prime(%struct.bignum_st* noundef, %struct.bignum_ctx* noundef, %struct.bn_gencb_st* noundef) local_unnamed_addr #2

declare i32 @BN_gcd(%struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_ctx* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_rsa_check_private_exponent(%struct.rsa_st* nocapture noundef readonly %rsa, i32 noundef %nbits, %struct.bignum_ctx* noundef %ctx) local_unnamed_addr #0 {
entry:
  %d = getelementptr inbounds %struct.rsa_st, %struct.rsa_st* %rsa, i64 0, i32 7
  %0 = load %struct.bignum_st*, %struct.bignum_st** %d, align 8, !tbaa !18
  %call = tail call i32 @BN_num_bits(%struct.bignum_st* noundef %0) #3
  %shr = ashr i32 %nbits, 1
  %cmp.not = icmp sgt i32 %call, %shr
  br i1 %cmp.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  tail call void @BN_CTX_start(%struct.bignum_ctx* noundef %ctx) #3
  %call1 = tail call %struct.bignum_st* @BN_CTX_get(%struct.bignum_ctx* noundef %ctx) #3
  %call2 = tail call %struct.bignum_st* @BN_CTX_get(%struct.bignum_ctx* noundef %ctx) #3
  %call3 = tail call %struct.bignum_st* @BN_CTX_get(%struct.bignum_ctx* noundef %ctx) #3
  %call4 = tail call %struct.bignum_st* @BN_CTX_get(%struct.bignum_ctx* noundef %ctx) #3
  %call5 = tail call %struct.bignum_st* @BN_CTX_get(%struct.bignum_ctx* noundef %ctx) #3
  %call6 = tail call %struct.bignum_st* @BN_CTX_get(%struct.bignum_ctx* noundef %ctx) #3
  %cmp7.not = icmp eq %struct.bignum_st* %call6, null
  br i1 %cmp7.not, label %land.end, label %if.then8

if.then8:                                         ; preds = %if.end
  tail call void @BN_set_flags(%struct.bignum_st* noundef %call1, i32 noundef 4) #3
  tail call void @BN_set_flags(%struct.bignum_st* noundef %call2, i32 noundef 4) #3
  tail call void @BN_set_flags(%struct.bignum_st* noundef %call3, i32 noundef 4) #3
  tail call void @BN_set_flags(%struct.bignum_st* noundef %call4, i32 noundef 4) #3
  tail call void @BN_set_flags(%struct.bignum_st* noundef %call5, i32 noundef 4) #3
  tail call void @BN_set_flags(%struct.bignum_st* noundef nonnull %call6, i32 noundef 4) #3
  %p = getelementptr inbounds %struct.rsa_st, %struct.rsa_st* %rsa, i64 0, i32 8
  %1 = load %struct.bignum_st*, %struct.bignum_st** %p, align 8, !tbaa !15
  %q = getelementptr inbounds %struct.rsa_st, %struct.rsa_st* %rsa, i64 0, i32 9
  %2 = load %struct.bignum_st*, %struct.bignum_st** %q, align 8, !tbaa !16
  %call10 = tail call i32 @ossl_rsa_get_lcm(%struct.bignum_ctx* noundef %ctx, %struct.bignum_st* noundef %1, %struct.bignum_st* noundef %2, %struct.bignum_st* noundef %call4, %struct.bignum_st* noundef nonnull %call6, %struct.bignum_st* noundef %call2, %struct.bignum_st* noundef %call3, %struct.bignum_st* noundef %call5) #4
  %cmp11 = icmp eq i32 %call10, 1
  br i1 %cmp11, label %land.lhs.true12, label %land.end

land.lhs.true12:                                  ; preds = %if.then8
  %3 = load %struct.bignum_st*, %struct.bignum_st** %d, align 8, !tbaa !18
  %call14 = tail call i32 @BN_cmp(%struct.bignum_st* noundef %3, %struct.bignum_st* noundef %call4) #3
  %cmp15 = icmp slt i32 %call14, 0
  br i1 %cmp15, label %land.lhs.true16, label %land.end

land.lhs.true16:                                  ; preds = %land.lhs.true12
  %e = getelementptr inbounds %struct.rsa_st, %struct.rsa_st* %rsa, i64 0, i32 6
  %4 = load %struct.bignum_st*, %struct.bignum_st** %e, align 8, !tbaa !17
  %5 = load %struct.bignum_st*, %struct.bignum_st** %d, align 8, !tbaa !18
  %call18 = tail call i32 @BN_mod_mul(%struct.bignum_st* noundef %call1, %struct.bignum_st* noundef %4, %struct.bignum_st* noundef %5, %struct.bignum_st* noundef %call4, %struct.bignum_ctx* noundef %ctx) #3
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %land.lhs.true16
  %call20 = tail call i32 @BN_is_one(%struct.bignum_st* noundef %call1) #3
  %tobool21 = icmp ne i32 %call20, 0
  %phi.cast = zext i1 %tobool21 to i32
  br label %land.end

land.end:                                         ; preds = %if.end, %land.rhs, %land.lhs.true16, %land.lhs.true12, %if.then8
  %6 = phi i32 [ 0, %land.lhs.true16 ], [ 0, %land.lhs.true12 ], [ 0, %if.then8 ], [ %phi.cast, %land.rhs ], [ 0, %if.end ]
  tail call void @BN_clear(%struct.bignum_st* noundef %call1) #3
  tail call void @BN_clear(%struct.bignum_st* noundef %call2) #3
  tail call void @BN_clear(%struct.bignum_st* noundef %call3) #3
  tail call void @BN_clear(%struct.bignum_st* noundef %call4) #3
  tail call void @BN_clear(%struct.bignum_st* noundef %call6) #3
  tail call void @BN_CTX_end(%struct.bignum_ctx* noundef %ctx) #3
  br label %cleanup

cleanup:                                          ; preds = %entry, %land.end
  %retval.0 = phi i32 [ %6, %land.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_rsa_get_lcm(%struct.bignum_ctx* noundef %ctx, %struct.bignum_st* noundef %p, %struct.bignum_st* noundef %q, %struct.bignum_st* noundef %lcm, %struct.bignum_st* noundef %gcd, %struct.bignum_st* noundef %p1, %struct.bignum_st* noundef %q1, %struct.bignum_st* noundef %p1q1) local_unnamed_addr #0 {
entry:
  %call = tail call %struct.bignum_st* @BN_value_one() #3
  %call1 = tail call i32 @BN_sub(%struct.bignum_st* noundef %p1, %struct.bignum_st* noundef %p, %struct.bignum_st* noundef %call) #3
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %land.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %call2 = tail call %struct.bignum_st* @BN_value_one() #3
  %call3 = tail call i32 @BN_sub(%struct.bignum_st* noundef %q1, %struct.bignum_st* noundef %q, %struct.bignum_st* noundef %call2) #3
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %land.end, label %land.lhs.true5

land.lhs.true5:                                   ; preds = %land.lhs.true
  %call6 = tail call i32 @BN_mul(%struct.bignum_st* noundef %p1q1, %struct.bignum_st* noundef %p1, %struct.bignum_st* noundef %q1, %struct.bignum_ctx* noundef %ctx) #3
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %land.end, label %land.lhs.true8

land.lhs.true8:                                   ; preds = %land.lhs.true5
  %call9 = tail call i32 @BN_gcd(%struct.bignum_st* noundef %gcd, %struct.bignum_st* noundef %p1, %struct.bignum_st* noundef %q1, %struct.bignum_ctx* noundef %ctx) #3
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %land.lhs.true8
  %call11 = tail call i32 @BN_div(%struct.bignum_st* noundef %lcm, %struct.bignum_st* noundef null, %struct.bignum_st* noundef %p1q1, %struct.bignum_st* noundef %gcd, %struct.bignum_ctx* noundef %ctx) #3
  %tobool12 = icmp ne i32 %call11, 0
  %phi.cast = zext i1 %tobool12 to i32
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true8, %land.lhs.true5, %land.lhs.true, %entry
  %0 = phi i32 [ 0, %land.lhs.true8 ], [ 0, %land.lhs.true5 ], [ 0, %land.lhs.true ], [ 0, %entry ], [ %phi.cast, %land.rhs ]
  ret i32 %0
}

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_rsa_check_public_exponent(%struct.bignum_st* noundef %e) local_unnamed_addr #0 {
entry:
  %call = tail call i32 @BN_is_odd(%struct.bignum_st* noundef %e) #3
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %call1 = tail call %struct.bignum_st* @BN_value_one() #3
  %call2 = tail call i32 @BN_cmp(%struct.bignum_st* noundef %e, %struct.bignum_st* noundef %call1) #3
  %cmp = icmp sgt i32 %call2, 0
  %phi.cast = zext i1 %cmp to i32
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %0 = phi i32 [ 0, %entry ], [ %phi.cast, %land.rhs ]
  ret i32 %0
}

declare i32 @BN_is_odd(%struct.bignum_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_rsa_check_pminusq_diff(%struct.bignum_st* noundef %diff, %struct.bignum_st* noundef %p, %struct.bignum_st* noundef %q, i32 noundef %nbits) local_unnamed_addr #0 {
entry:
  %shr = ashr i32 %nbits, 1
  %sub = add nsw i32 %shr, -100
  %call = tail call i32 @BN_sub(%struct.bignum_st* noundef %diff, %struct.bignum_st* noundef %p, %struct.bignum_st* noundef %q) #3
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  tail call void @BN_set_negative(%struct.bignum_st* noundef %diff, i32 noundef 0) #3
  %call1 = tail call i32 @BN_is_zero(%struct.bignum_st* noundef %diff) #3
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %cleanup

if.end4:                                          ; preds = %if.end
  %call5 = tail call i32 @BN_sub_word(%struct.bignum_st* noundef %diff, i64 noundef 1) #3
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %cleanup, label %if.end8

if.end8:                                          ; preds = %if.end4
  %call9 = tail call i32 @BN_num_bits(%struct.bignum_st* noundef %diff) #3
  %cmp = icmp sgt i32 %call9, %sub
  %conv = zext i1 %cmp to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.end, %entry, %if.end8
  %retval.0 = phi i32 [ %conv, %if.end8 ], [ -1, %entry ], [ 0, %if.end ], [ -1, %if.end4 ]
  ret i32 %retval.0
}

declare i32 @BN_sub(%struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef) local_unnamed_addr #2

declare void @BN_set_negative(%struct.bignum_st* noundef, i32 noundef) local_unnamed_addr #2

declare i32 @BN_is_zero(%struct.bignum_st* noundef) local_unnamed_addr #2

declare i32 @BN_mul(%struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_ctx* noundef) local_unnamed_addr #2

declare i32 @BN_div(%struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_ctx* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_rsa_sp800_56b_check_public(%struct.rsa_st* nocapture noundef readonly %rsa) local_unnamed_addr #0 {
entry:
  %status = alloca i32, align 4
  %0 = bitcast i32* %status to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #5
  %n = getelementptr inbounds %struct.rsa_st, %struct.rsa_st* %rsa, i64 0, i32 5
  %1 = load %struct.bignum_st*, %struct.bignum_st** %n, align 8, !tbaa !19
  %cmp = icmp eq %struct.bignum_st* %1, null
  br i1 %cmp, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %e = getelementptr inbounds %struct.rsa_st, %struct.rsa_st* %rsa, i64 0, i32 6
  %2 = load %struct.bignum_st*, %struct.bignum_st** %e, align 8, !tbaa !17
  %cmp1 = icmp eq %struct.bignum_st* %2, null
  br i1 %cmp1, label %cleanup, label %if.end

if.end:                                           ; preds = %lor.lhs.false
  %call = tail call i32 @BN_num_bits(%struct.bignum_st* noundef nonnull %1) #3
  %3 = load %struct.bignum_st*, %struct.bignum_st** %n, align 8, !tbaa !19
  %call4 = tail call i32 @BN_is_odd(%struct.bignum_st* noundef %3) #3
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end
  tail call void @ERR_new() #3
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 noundef 303, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @__func__.ossl_rsa_sp800_56b_check_public, i64 0, i64 0)) #3
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 4, i32 noundef 174, i8* noundef null) #3
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %4 = load %struct.bignum_st*, %struct.bignum_st** %e, align 8, !tbaa !17
  %call8 = tail call i32 @ossl_rsa_check_public_exponent(%struct.bignum_st* noundef %4) #4
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.then10, label %if.end11

if.then10:                                        ; preds = %if.end6
  tail call void @ERR_new() #3
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 noundef 308, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @__func__.ossl_rsa_sp800_56b_check_public, i64 0, i64 0)) #3
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 4, i32 noundef 178, i8* noundef null) #3
  br label %cleanup

if.end11:                                         ; preds = %if.end6
  %libctx = getelementptr inbounds %struct.rsa_st, %struct.rsa_st* %rsa, i64 0, i32 1
  %5 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** %libctx, align 8, !tbaa !20
  %call12 = tail call %struct.bignum_ctx* @BN_CTX_new_ex(%struct.ossl_lib_ctx_st* noundef %5) #3
  %call13 = tail call %struct.bignum_st* @BN_new() #3
  %cmp14 = icmp eq %struct.bignum_ctx* %call12, null
  %cmp16 = icmp eq %struct.bignum_st* %call13, null
  %or.cond = select i1 %cmp14, i1 true, i1 %cmp16
  br i1 %or.cond, label %err, label %if.end18

if.end18:                                         ; preds = %if.end11
  %6 = load %struct.bignum_st*, %struct.bignum_st** %n, align 8, !tbaa !19
  %call20 = tail call %struct.bignum_st* @ossl_bn_get0_small_factors() #3
  %call21 = tail call i32 @BN_gcd(%struct.bignum_st* noundef nonnull %call13, %struct.bignum_st* noundef %6, %struct.bignum_st* noundef %call20, %struct.bignum_ctx* noundef nonnull %call12) #3
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %if.then26, label %lor.lhs.false23

lor.lhs.false23:                                  ; preds = %if.end18
  %call24 = tail call i32 @BN_is_one(%struct.bignum_st* noundef nonnull %call13) #3
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %if.then26, label %if.end27

if.then26:                                        ; preds = %lor.lhs.false23, %if.end18
  tail call void @ERR_new() #3
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 noundef 323, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @__func__.ossl_rsa_sp800_56b_check_public, i64 0, i64 0)) #3
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 4, i32 noundef 174, i8* noundef null) #3
  br label %err

if.end27:                                         ; preds = %lor.lhs.false23
  %7 = load %struct.bignum_st*, %struct.bignum_st** %n, align 8, !tbaa !19
  %call29 = call i32 @ossl_bn_miller_rabin_is_prime(%struct.bignum_st* noundef %7, i32 noundef 0, %struct.bignum_ctx* noundef nonnull %call12, %struct.bn_gencb_st* noundef null, i32 noundef 1, i32* noundef nonnull %status) #3
  %cmp30.not = icmp eq i32 %call29, 1
  br i1 %cmp30.not, label %lor.lhs.false31, label %if.then36

lor.lhs.false31:                                  ; preds = %if.end27
  %8 = load i32, i32* %status, align 4, !tbaa !21
  %cmp32.not = icmp eq i32 %8, 2
  br i1 %cmp32.not, label %err, label %land.lhs.true

land.lhs.true:                                    ; preds = %lor.lhs.false31
  %cmp33 = icmp sgt i32 %call, 511
  %cmp35 = icmp ne i32 %8, 1
  %or.cond42 = select i1 %cmp33, i1 true, i1 %cmp35
  br i1 %or.cond42, label %if.then36, label %err

if.then36:                                        ; preds = %land.lhs.true, %if.end27
  call void @ERR_new() #3
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 noundef 335, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @__func__.ossl_rsa_sp800_56b_check_public, i64 0, i64 0)) #3
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 4, i32 noundef 174, i8* noundef null) #3
  br label %err

err:                                              ; preds = %lor.lhs.false31, %land.lhs.true, %if.end11, %if.then36, %if.then26
  %ret.0 = phi i32 [ 0, %if.end11 ], [ 0, %if.then36 ], [ 0, %if.then26 ], [ 1, %land.lhs.true ], [ 1, %lor.lhs.false31 ]
  call void @BN_free(%struct.bignum_st* noundef %call13) #3
  call void @BN_CTX_free(%struct.bignum_ctx* noundef %call12) #3
  br label %cleanup

cleanup:                                          ; preds = %entry, %lor.lhs.false, %err, %if.then10, %if.then5
  %retval.0 = phi i32 [ %ret.0, %err ], [ 0, %if.then10 ], [ 0, %if.then5 ], [ 0, %lor.lhs.false ], [ 0, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #5
  ret i32 %retval.0
}

declare void @ERR_new() local_unnamed_addr #2

declare void @ERR_set_debug(i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #2

declare void @ERR_set_error(i32 noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #2

declare %struct.bignum_ctx* @BN_CTX_new_ex(%struct.ossl_lib_ctx_st* noundef) local_unnamed_addr #2

declare %struct.bignum_st* @BN_new() local_unnamed_addr #2

declare %struct.bignum_st* @ossl_bn_get0_small_factors() local_unnamed_addr #2

declare i32 @ossl_bn_miller_rabin_is_prime(%struct.bignum_st* noundef, i32 noundef, %struct.bignum_ctx* noundef, %struct.bn_gencb_st* noundef, i32 noundef, i32* noundef) local_unnamed_addr #2

declare void @BN_free(%struct.bignum_st* noundef) local_unnamed_addr #2

declare void @BN_CTX_free(%struct.bignum_ctx* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_rsa_sp800_56b_check_private(%struct.rsa_st* nocapture noundef readonly %rsa) local_unnamed_addr #0 {
entry:
  %d = getelementptr inbounds %struct.rsa_st, %struct.rsa_st* %rsa, i64 0, i32 7
  %0 = load %struct.bignum_st*, %struct.bignum_st** %d, align 8, !tbaa !18
  %cmp = icmp eq %struct.bignum_st* %0, null
  br i1 %cmp, label %return, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %n = getelementptr inbounds %struct.rsa_st, %struct.rsa_st* %rsa, i64 0, i32 5
  %1 = load %struct.bignum_st*, %struct.bignum_st** %n, align 8, !tbaa !19
  %cmp1 = icmp eq %struct.bignum_st* %1, null
  br i1 %cmp1, label %return, label %if.end

if.end:                                           ; preds = %lor.lhs.false
  %call = tail call %struct.bignum_st* @BN_value_one() #3
  %call3 = tail call i32 @BN_cmp(%struct.bignum_st* noundef nonnull %0, %struct.bignum_st* noundef %call) #3
  %cmp4 = icmp sgt i32 %call3, -1
  br i1 %cmp4, label %land.rhs, label %return

land.rhs:                                         ; preds = %if.end
  %2 = load %struct.bignum_st*, %struct.bignum_st** %d, align 8, !tbaa !18
  %3 = load %struct.bignum_st*, %struct.bignum_st** %n, align 8, !tbaa !19
  %call7 = tail call i32 @BN_cmp(%struct.bignum_st* noundef %2, %struct.bignum_st* noundef %3) #3
  %call7.lobit = lshr i32 %call7, 31
  br label %return

return:                                           ; preds = %if.end, %land.rhs, %entry, %lor.lhs.false
  %retval.0 = phi i32 [ 0, %lor.lhs.false ], [ 0, %entry ], [ 0, %if.end ], [ %call7.lobit, %land.rhs ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_rsa_sp800_56b_check_keypair(%struct.rsa_st* nocapture noundef readonly %rsa, %struct.bignum_st* noundef %efixed, i32 noundef %strength, i32 noundef %nbits) local_unnamed_addr #0 {
entry:
  %p = getelementptr inbounds %struct.rsa_st, %struct.rsa_st* %rsa, i64 0, i32 8
  %0 = load %struct.bignum_st*, %struct.bignum_st** %p, align 8, !tbaa !15
  %cmp = icmp eq %struct.bignum_st* %0, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %q = getelementptr inbounds %struct.rsa_st, %struct.rsa_st* %rsa, i64 0, i32 9
  %1 = load %struct.bignum_st*, %struct.bignum_st** %q, align 8, !tbaa !16
  %cmp1 = icmp eq %struct.bignum_st* %1, null
  br i1 %cmp1, label %if.then, label %lor.lhs.false2

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %e = getelementptr inbounds %struct.rsa_st, %struct.rsa_st* %rsa, i64 0, i32 6
  %2 = load %struct.bignum_st*, %struct.bignum_st** %e, align 8, !tbaa !17
  %cmp3 = icmp eq %struct.bignum_st* %2, null
  br i1 %cmp3, label %if.then, label %lor.lhs.false4

lor.lhs.false4:                                   ; preds = %lor.lhs.false2
  %d = getelementptr inbounds %struct.rsa_st, %struct.rsa_st* %rsa, i64 0, i32 7
  %3 = load %struct.bignum_st*, %struct.bignum_st** %d, align 8, !tbaa !18
  %cmp5 = icmp eq %struct.bignum_st* %3, null
  br i1 %cmp5, label %if.then, label %lor.lhs.false6

lor.lhs.false6:                                   ; preds = %lor.lhs.false4
  %n = getelementptr inbounds %struct.rsa_st, %struct.rsa_st* %rsa, i64 0, i32 5
  %4 = load %struct.bignum_st*, %struct.bignum_st** %n, align 8, !tbaa !19
  %cmp7 = icmp eq %struct.bignum_st* %4, null
  br i1 %cmp7, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false6, %lor.lhs.false4, %lor.lhs.false2, %lor.lhs.false, %entry
  tail call void @ERR_new() #3
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 noundef 380, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @__func__.ossl_rsa_sp800_56b_check_keypair, i64 0, i64 0)) #3
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 4, i32 noundef 175, i8* noundef null) #3
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false6
  %call = tail call i32 @ossl_rsa_sp800_56b_validate_strength(i32 noundef %nbits, i32 noundef %strength) #3
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %cleanup, label %if.end9

if.end9:                                          ; preds = %if.end
  %cmp10.not = icmp eq %struct.bignum_st* %efixed, null
  br i1 %cmp10.not, label %if.end17, label %if.then11

if.then11:                                        ; preds = %if.end9
  %5 = load %struct.bignum_st*, %struct.bignum_st** %e, align 8, !tbaa !17
  %call13 = tail call i32 @BN_cmp(%struct.bignum_st* noundef nonnull %efixed, %struct.bignum_st* noundef %5) #3
  %cmp14.not = icmp eq i32 %call13, 0
  br i1 %cmp14.not, label %if.end17, label %if.then15

if.then15:                                        ; preds = %if.then11
  tail call void @ERR_new() #3
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 noundef 391, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @__func__.ossl_rsa_sp800_56b_check_keypair, i64 0, i64 0)) #3
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 4, i32 noundef 175, i8* noundef null) #3
  br label %cleanup

if.end17:                                         ; preds = %if.then11, %if.end9
  %6 = load %struct.bignum_st*, %struct.bignum_st** %e, align 8, !tbaa !17
  %call19 = tail call i32 @ossl_rsa_check_public_exponent(%struct.bignum_st* noundef %6) #4
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.then21, label %if.end22

if.then21:                                        ; preds = %if.end17
  tail call void @ERR_new() #3
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 noundef 398, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @__func__.ossl_rsa_sp800_56b_check_keypair, i64 0, i64 0)) #3
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 4, i32 noundef 178, i8* noundef null) #3
  br label %cleanup

if.end22:                                         ; preds = %if.end17
  %7 = load %struct.bignum_st*, %struct.bignum_st** %n, align 8, !tbaa !19
  %call24 = tail call i32 @BN_num_bits(%struct.bignum_st* noundef %7) #3
  %cmp25.not = icmp eq i32 %call24, %nbits
  br i1 %cmp25.not, label %if.end27, label %if.then26

if.then26:                                        ; preds = %if.end22
  tail call void @ERR_new() #3
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 noundef 403, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @__func__.ossl_rsa_sp800_56b_check_keypair, i64 0, i64 0)) #3
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 4, i32 noundef 171, i8* noundef null) #3
  br label %cleanup

if.end27:                                         ; preds = %if.end22
  %libctx = getelementptr inbounds %struct.rsa_st, %struct.rsa_st* %rsa, i64 0, i32 1
  %8 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** %libctx, align 8, !tbaa !20
  %call28 = tail call %struct.bignum_ctx* @BN_CTX_new_ex(%struct.ossl_lib_ctx_st* noundef %8) #3
  %cmp29 = icmp eq %struct.bignum_ctx* %call28, null
  br i1 %cmp29, label %cleanup, label %if.end31

if.end31:                                         ; preds = %if.end27
  tail call void @BN_CTX_start(%struct.bignum_ctx* noundef nonnull %call28) #3
  %call32 = tail call %struct.bignum_st* @BN_CTX_get(%struct.bignum_ctx* noundef nonnull %call28) #3
  %cmp33 = icmp eq %struct.bignum_st* %call32, null
  br i1 %cmp33, label %err, label %lor.lhs.false34

lor.lhs.false34:                                  ; preds = %if.end31
  %9 = load %struct.bignum_st*, %struct.bignum_st** %p, align 8, !tbaa !15
  %10 = load %struct.bignum_st*, %struct.bignum_st** %q, align 8, !tbaa !16
  %call37 = tail call i32 @BN_mul(%struct.bignum_st* noundef nonnull %call32, %struct.bignum_st* noundef %9, %struct.bignum_st* noundef %10, %struct.bignum_ctx* noundef nonnull %call28) #3
  %tobool38.not = icmp eq i32 %call37, 0
  br i1 %tobool38.not, label %err, label %if.end40

if.end40:                                         ; preds = %lor.lhs.false34
  %11 = load %struct.bignum_st*, %struct.bignum_st** %n, align 8, !tbaa !19
  %call42 = tail call i32 @BN_cmp(%struct.bignum_st* noundef %11, %struct.bignum_st* noundef nonnull %call32) #3
  %cmp43.not = icmp eq i32 %call42, 0
  br i1 %cmp43.not, label %if.end45, label %err.sink.split

if.end45:                                         ; preds = %if.end40
  %12 = load %struct.bignum_st*, %struct.bignum_st** %p, align 8, !tbaa !15
  %13 = load %struct.bignum_st*, %struct.bignum_st** %e, align 8, !tbaa !17
  %call48 = tail call i32 @ossl_rsa_check_prime_factor(%struct.bignum_st* noundef %12, %struct.bignum_st* noundef %13, i32 noundef %nbits, %struct.bignum_ctx* noundef nonnull %call28) #4
  %tobool49.not = icmp eq i32 %call48, 0
  br i1 %tobool49.not, label %err.sink.split, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end45
  %14 = load %struct.bignum_st*, %struct.bignum_st** %q, align 8, !tbaa !16
  %15 = load %struct.bignum_st*, %struct.bignum_st** %e, align 8, !tbaa !17
  %call52 = tail call i32 @ossl_rsa_check_prime_factor(%struct.bignum_st* noundef %14, %struct.bignum_st* noundef %15, i32 noundef %nbits, %struct.bignum_ctx* noundef nonnull %call28) #4
  %tobool53.not = icmp eq i32 %call52, 0
  br i1 %tobool53.not, label %err.sink.split, label %land.lhs.true54

land.lhs.true54:                                  ; preds = %land.lhs.true
  %16 = load %struct.bignum_st*, %struct.bignum_st** %p, align 8, !tbaa !15
  %17 = load %struct.bignum_st*, %struct.bignum_st** %q, align 8, !tbaa !16
  %call57 = tail call i32 @ossl_rsa_check_pminusq_diff(%struct.bignum_st* noundef nonnull %call32, %struct.bignum_st* noundef %16, %struct.bignum_st* noundef %17, i32 noundef %nbits) #4
  %cmp58 = icmp sgt i32 %call57, 0
  br i1 %cmp58, label %land.lhs.true59, label %err.sink.split

land.lhs.true59:                                  ; preds = %land.lhs.true54
  %call60 = tail call i32 @ossl_rsa_check_private_exponent(%struct.rsa_st* noundef nonnull %rsa, i32 noundef %nbits, %struct.bignum_ctx* noundef nonnull %call28) #4
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %err.sink.split, label %land.rhs

land.rhs:                                         ; preds = %land.lhs.true59
  %call62 = tail call i32 @ossl_rsa_check_crt_components(%struct.rsa_st* noundef nonnull %rsa, %struct.bignum_ctx* noundef nonnull %call28) #4
  %tobool63.not = icmp eq i32 %call62, 0
  br i1 %tobool63.not, label %err.sink.split, label %err

err.sink.split:                                   ; preds = %land.rhs, %land.lhs.true59, %land.lhs.true54, %land.lhs.true, %if.end45, %if.end40
  %.sink114 = phi i32 [ 417, %if.end40 ], [ 430, %if.end45 ], [ 430, %land.lhs.true ], [ 430, %land.lhs.true54 ], [ 430, %land.lhs.true59 ], [ 430, %land.rhs ]
  %.sink = phi i32 [ 175, %if.end40 ], [ 171, %if.end45 ], [ 171, %land.lhs.true ], [ 171, %land.lhs.true54 ], [ 171, %land.lhs.true59 ], [ 171, %land.rhs ]
  tail call void @ERR_new() #3
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 noundef %.sink114, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @__func__.ossl_rsa_sp800_56b_check_keypair, i64 0, i64 0)) #3
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 4, i32 noundef %.sink, i8* noundef null) #3
  br label %err

err:                                              ; preds = %err.sink.split, %land.rhs, %if.end31, %lor.lhs.false34
  %ret.0 = phi i32 [ 0, %if.end31 ], [ 1, %land.rhs ], [ 0, %lor.lhs.false34 ], [ 0, %err.sink.split ]
  tail call void @BN_clear(%struct.bignum_st* noundef %call32) #3
  tail call void @BN_CTX_end(%struct.bignum_ctx* noundef nonnull %call28) #3
  tail call void @BN_CTX_free(%struct.bignum_ctx* noundef nonnull %call28) #3
  br label %cleanup

cleanup:                                          ; preds = %if.end27, %if.end, %err, %if.then26, %if.then21, %if.then15, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 0, %if.then15 ], [ 0, %if.then26 ], [ %ret.0, %err ], [ 0, %if.then21 ], [ 0, %if.end ], [ 0, %if.end27 ]
  ret i32 %retval.0
}

declare i32 @ossl_rsa_sp800_56b_validate_strength(i32 noundef, i32 noundef) local_unnamed_addr #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nobuiltin nounwind "no-builtins" }
attributes #4 = { nobuiltin "no-builtins" }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{!"clang version 14.0.0"}
!4 = !{!5, !9, i64 80}
!5 = !{!"rsa_st", !6, i64 0, !9, i64 8, !6, i64 16, !9, i64 24, !9, i64 32, !9, i64 40, !9, i64 48, !9, i64 56, !9, i64 64, !9, i64 72, !9, i64 80, !9, i64 88, !9, i64 96, !10, i64 104, !9, i64 128, !9, i64 136, !12, i64 144, !7, i64 160, !6, i64 164, !9, i64 168, !9, i64 176, !9, i64 184, !9, i64 192, !9, i64 200, !9, i64 208, !6, i64 216}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!"any pointer", !7, i64 0}
!10 = !{!"rsa_pss_params_30_st", !6, i64 0, !11, i64 4, !6, i64 12, !6, i64 16}
!11 = !{!"", !6, i64 0, !6, i64 4}
!12 = !{!"crypto_ex_data_st", !9, i64 0, !9, i64 8}
!13 = !{!5, !9, i64 88}
!14 = !{!5, !9, i64 96}
!15 = !{!5, !9, i64 64}
!16 = !{!5, !9, i64 72}
!17 = !{!5, !9, i64 48}
!18 = !{!5, !9, i64 56}
!19 = !{!5, !9, i64 40}
!20 = !{!5, !9, i64 8}
!21 = !{!6, !6, i64 0}
