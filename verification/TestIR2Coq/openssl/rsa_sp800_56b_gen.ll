; ModuleID = 'crypto/rsa/rsa_sp800_56b_gen.c'
source_filename = "crypto/rsa/rsa_sp800_56b_gen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rsa_st = type { i32, %struct.ossl_lib_ctx_st*, i32, %struct.rsa_meth_st*, %struct.engine_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.rsa_pss_params_30_st, %struct.rsa_pss_params_st*, %struct.stack_st_RSA_PRIME_INFO*, %struct.crypto_ex_data_st, i32, i32, %struct.bn_mont_ctx_st*, %struct.bn_mont_ctx_st*, %struct.bn_mont_ctx_st*, %struct.bn_blinding_st*, %struct.bn_blinding_st*, i8*, i32 }
%struct.ossl_lib_ctx_st = type opaque
%struct.rsa_meth_st = type { i8*, i32 (i32, i8*, i8*, %struct.rsa_st*, i32)*, i32 (i32, i8*, i8*, %struct.rsa_st*, i32)*, i32 (i32, i8*, i8*, %struct.rsa_st*, i32)*, i32 (i32, i8*, i8*, %struct.rsa_st*, i32)*, i32 (%struct.bignum_st*, %struct.bignum_st*, %struct.rsa_st*, %struct.bignum_ctx*)*, i32 (%struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*, %struct.bn_mont_ctx_st*)*, i32 (%struct.rsa_st*)*, i32 (%struct.rsa_st*)*, i32, i8*, i32 (i32, i8*, i32, i8*, i32*, %struct.rsa_st*)*, i32 (i32, i8*, i32, i8*, i32, %struct.rsa_st*)*, i32 (%struct.rsa_st*, i32, %struct.bignum_st*, %struct.bn_gencb_st*)*, i32 (%struct.rsa_st*, i32, i32, %struct.bignum_st*, %struct.bn_gencb_st*)* }
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
%struct.bignum_st = type opaque
%struct.bignum_ctx = type opaque
%struct.bn_gencb_st = type opaque
%struct.evp_rand_ctx_st = type opaque

@.str = private unnamed_addr constant [31 x i8] c"crypto/rsa/rsa_sp800_56b_gen.c\00", align 1
@__func__.ossl_rsa_fips186_4_gen_prob_primes = private unnamed_addr constant [35 x i8] c"ossl_rsa_fips186_4_gen_prob_primes\00", align 1
@__func__.ossl_rsa_sp800_56b_validate_strength = private unnamed_addr constant [37 x i8] c"ossl_rsa_sp800_56b_validate_strength\00", align 1
@__func__.ossl_rsa_sp800_56b_pairwise_test = private unnamed_addr constant [33 x i8] c"ossl_rsa_sp800_56b_pairwise_test\00", align 1

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_rsa_fips186_4_gen_prob_primes(%struct.rsa_st* nocapture noundef %rsa, i8* nocapture readnone %test, i32 noundef %nbits, %struct.bignum_st* noundef %e, %struct.bignum_ctx* noundef %ctx, %struct.bn_gencb_st* noundef %cb) local_unnamed_addr #0 {
entry:
  %cmp = icmp slt i32 %nbits, 2048
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #3
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 noundef 92, i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @__func__.ossl_rsa_fips186_4_gen_prob_primes, i64 0, i64 0)) #3
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 4, i32 noundef 120, i8* noundef null) #3
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call i32 @ossl_rsa_check_public_exponent(%struct.bignum_st* noundef %e) #3
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then1, label %if.end2

if.then1:                                         ; preds = %if.end
  tail call void @ERR_new() #3
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 noundef 97, i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @__func__.ossl_rsa_fips186_4_gen_prob_primes, i64 0, i64 0)) #3
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 4, i32 noundef 178, i8* noundef null) #3
  br label %cleanup

if.end2:                                          ; preds = %if.end
  tail call void @BN_CTX_start(%struct.bignum_ctx* noundef %ctx) #3
  %call3 = tail call %struct.bignum_st* @BN_CTX_get(%struct.bignum_ctx* noundef %ctx) #3
  %call5 = tail call %struct.bignum_st* @BN_CTX_get(%struct.bignum_ctx* noundef %ctx) #3
  %call9 = tail call %struct.bignum_st* @BN_CTX_get(%struct.bignum_ctx* noundef %ctx) #3
  %cmp12 = icmp eq %struct.bignum_st* %call3, null
  %cmp13 = icmp eq %struct.bignum_st* %call5, null
  %or.cond = select i1 %cmp12, i1 true, i1 %cmp13
  %cmp15 = icmp eq %struct.bignum_st* %call9, null
  %or.cond85 = select i1 %or.cond, i1 true, i1 %cmp15
  br i1 %or.cond85, label %err, label %if.end17

if.end17:                                         ; preds = %if.end2
  tail call void @BN_set_flags(%struct.bignum_st* noundef nonnull %call5, i32 noundef 4) #3
  tail call void @BN_set_flags(%struct.bignum_st* noundef nonnull %call9, i32 noundef 4) #3
  %p = getelementptr inbounds %struct.rsa_st, %struct.rsa_st* %rsa, i64 0, i32 8
  %0 = load %struct.bignum_st*, %struct.bignum_st** %p, align 8, !tbaa !4
  %cmp18 = icmp eq %struct.bignum_st* %0, null
  br i1 %cmp18, label %if.then19, label %if.end22

if.then19:                                        ; preds = %if.end17
  %call20 = tail call %struct.bignum_st* @BN_secure_new() #3
  store %struct.bignum_st* %call20, %struct.bignum_st** %p, align 8, !tbaa !4
  br label %if.end22

if.end22:                                         ; preds = %if.then19, %if.end17
  %1 = phi %struct.bignum_st* [ %call20, %if.then19 ], [ %0, %if.end17 ]
  %q = getelementptr inbounds %struct.rsa_st, %struct.rsa_st* %rsa, i64 0, i32 9
  %2 = load %struct.bignum_st*, %struct.bignum_st** %q, align 8, !tbaa !13
  %cmp23 = icmp eq %struct.bignum_st* %2, null
  br i1 %cmp23, label %if.then24, label %if.end27

if.then24:                                        ; preds = %if.end22
  %call25 = tail call %struct.bignum_st* @BN_secure_new() #3
  store %struct.bignum_st* %call25, %struct.bignum_st** %q, align 8, !tbaa !13
  %.pre = load %struct.bignum_st*, %struct.bignum_st** %p, align 8, !tbaa !4
  br label %if.end27

if.end27:                                         ; preds = %if.then24, %if.end22
  %3 = phi %struct.bignum_st* [ %call25, %if.then24 ], [ %2, %if.end22 ]
  %4 = phi %struct.bignum_st* [ %.pre, %if.then24 ], [ %1, %if.end22 ]
  %cmp29 = icmp eq %struct.bignum_st* %4, null
  %cmp32 = icmp eq %struct.bignum_st* %3, null
  %or.cond150 = select i1 %cmp29, i1 true, i1 %cmp32
  br i1 %or.cond150, label %err, label %if.end34

if.end34:                                         ; preds = %if.end27
  tail call void @BN_set_flags(%struct.bignum_st* noundef nonnull %4, i32 noundef 4) #3
  %5 = load %struct.bignum_st*, %struct.bignum_st** %q, align 8, !tbaa !13
  tail call void @BN_set_flags(%struct.bignum_st* noundef %5, i32 noundef 4) #3
  %6 = load %struct.bignum_st*, %struct.bignum_st** %p, align 8, !tbaa !4
  %call38 = tail call i32 @ossl_bn_rsa_fips186_4_gen_prob_primes(%struct.bignum_st* noundef %6, %struct.bignum_st* noundef nonnull %call5, %struct.bignum_st* noundef null, %struct.bignum_st* noundef null, %struct.bignum_st* noundef null, %struct.bignum_st* noundef null, %struct.bignum_st* noundef null, i32 noundef %nbits, %struct.bignum_st* noundef %e, %struct.bignum_ctx* noundef %ctx, %struct.bn_gencb_st* noundef %cb) #3
  %tobool39.not = icmp eq i32 %call38, 0
  br i1 %tobool39.not, label %err, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end34
  %7 = load %struct.bignum_st*, %struct.bignum_st** %q, align 8, !tbaa !13
  %call43148 = tail call i32 @ossl_bn_rsa_fips186_4_gen_prob_primes(%struct.bignum_st* noundef %7, %struct.bignum_st* noundef nonnull %call9, %struct.bignum_st* noundef null, %struct.bignum_st* noundef null, %struct.bignum_st* noundef null, %struct.bignum_st* noundef null, %struct.bignum_st* noundef null, i32 noundef %nbits, %struct.bignum_st* noundef %e, %struct.bignum_ctx* noundef %ctx, %struct.bn_gencb_st* noundef %cb) #3
  %tobool44.not149 = icmp eq i32 %call43148, 0
  br i1 %tobool44.not149, label %err, label %if.end46

if.end46:                                         ; preds = %for.cond.preheader, %for.cond.backedge
  %call47 = tail call i32 @ossl_rsa_check_pminusq_diff(%struct.bignum_st* noundef %call3, %struct.bignum_st* noundef %call5, %struct.bignum_st* noundef %call9, i32 noundef %nbits) #3
  %cmp48 = icmp slt i32 %call47, 0
  br i1 %cmp48, label %err, label %if.end50

if.end50:                                         ; preds = %if.end46
  %cmp51 = icmp eq i32 %call47, 0
  br i1 %cmp51, label %for.cond.backedge, label %if.end53

for.cond.backedge:                                ; preds = %if.end50, %if.end59
  %8 = load %struct.bignum_st*, %struct.bignum_st** %q, align 8, !tbaa !13
  %call43 = tail call i32 @ossl_bn_rsa_fips186_4_gen_prob_primes(%struct.bignum_st* noundef %8, %struct.bignum_st* noundef %call9, %struct.bignum_st* noundef null, %struct.bignum_st* noundef null, %struct.bignum_st* noundef null, %struct.bignum_st* noundef null, %struct.bignum_st* noundef null, i32 noundef %nbits, %struct.bignum_st* noundef %e, %struct.bignum_ctx* noundef %ctx, %struct.bn_gencb_st* noundef %cb) #3
  %tobool44.not = icmp eq i32 %call43, 0
  br i1 %tobool44.not, label %err, label %if.end46

if.end53:                                         ; preds = %if.end50
  %9 = load %struct.bignum_st*, %struct.bignum_st** %p, align 8, !tbaa !4
  %10 = load %struct.bignum_st*, %struct.bignum_st** %q, align 8, !tbaa !13
  %call56 = tail call i32 @ossl_rsa_check_pminusq_diff(%struct.bignum_st* noundef %call3, %struct.bignum_st* noundef %9, %struct.bignum_st* noundef %10, i32 noundef %nbits) #3
  %cmp57 = icmp slt i32 %call56, 0
  br i1 %cmp57, label %err, label %if.end59

if.end59:                                         ; preds = %if.end53
  %cmp60 = icmp eq i32 %call56, 0
  br i1 %cmp60, label %for.cond.backedge, label %for.end

for.end:                                          ; preds = %if.end59
  %dirty_cnt = getelementptr inbounds %struct.rsa_st, %struct.rsa_st* %rsa, i64 0, i32 25
  %11 = load i32, i32* %dirty_cnt, align 8, !tbaa !14
  %inc = add nsw i32 %11, 1
  store i32 %inc, i32* %dirty_cnt, align 8, !tbaa !14
  br label %err

err:                                              ; preds = %for.cond.backedge, %if.end46, %if.end53, %for.cond.preheader, %if.end34, %if.end27, %if.end2, %for.end
  %ret.0 = phi i32 [ 0, %if.end2 ], [ 0, %if.end27 ], [ 1, %for.end ], [ 0, %if.end34 ], [ 0, %for.cond.preheader ], [ 0, %if.end53 ], [ 0, %if.end46 ], [ 0, %for.cond.backedge ]
  br i1 %cmp13, label %if.end65, label %if.then64

if.then64:                                        ; preds = %err
  tail call void @BN_clear(%struct.bignum_st* noundef nonnull %call5) #3
  br label %if.end65

if.end65:                                         ; preds = %if.then64, %err
  br i1 %cmp15, label %if.end68, label %if.then67

if.then67:                                        ; preds = %if.end65
  tail call void @BN_clear(%struct.bignum_st* noundef nonnull %call9) #3
  br label %if.end68

if.end68:                                         ; preds = %if.then67, %if.end65
  tail call void @BN_clear(%struct.bignum_st* noundef %call3) #3
  tail call void @BN_CTX_end(%struct.bignum_ctx* noundef %ctx) #3
  br label %cleanup

cleanup:                                          ; preds = %if.end68, %if.then1, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ %ret.0, %if.end68 ], [ 0, %if.then1 ]
  ret i32 %retval.0
}

declare void @ERR_new() local_unnamed_addr #1

declare void @ERR_set_debug(i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #1

declare void @ERR_set_error(i32 noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #1

declare i32 @ossl_rsa_check_public_exponent(%struct.bignum_st* noundef) local_unnamed_addr #1

declare void @BN_CTX_start(%struct.bignum_ctx* noundef) local_unnamed_addr #1

declare %struct.bignum_st* @BN_CTX_get(%struct.bignum_ctx* noundef) local_unnamed_addr #1

declare void @BN_set_flags(%struct.bignum_st* noundef, i32 noundef) local_unnamed_addr #1

declare %struct.bignum_st* @BN_secure_new() local_unnamed_addr #1

declare i32 @ossl_bn_rsa_fips186_4_gen_prob_primes(%struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef, i32 noundef, %struct.bignum_st* noundef, %struct.bignum_ctx* noundef, %struct.bn_gencb_st* noundef) local_unnamed_addr #1

declare i32 @ossl_rsa_check_pminusq_diff(%struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef, i32 noundef) local_unnamed_addr #1

declare void @BN_clear(%struct.bignum_st* noundef) local_unnamed_addr #1

declare void @BN_CTX_end(%struct.bignum_ctx* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_rsa_sp800_56b_validate_strength(i32 noundef %nbits, i32 noundef %strength) local_unnamed_addr #0 {
entry:
  %call = tail call zeroext i16 @ossl_ifc_ffc_compute_security_bits(i32 noundef %nbits) #3
  %cmp.not = icmp eq i32 %strength, -1
  %conv = zext i16 %call to i32
  %cmp2.not = icmp eq i32 %conv, %strength
  %or.cond = select i1 %cmp.not, i1 true, i1 %cmp2.not
  br i1 %or.cond, label %cleanup, label %if.then

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #3
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 noundef 184, i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @__func__.ossl_rsa_sp800_56b_validate_strength, i64 0, i64 0)) #3
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 4, i32 noundef 176, i8* noundef null) #3
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 1, %entry ]
  ret i32 %retval.0
}

declare zeroext i16 @ossl_ifc_ffc_compute_security_bits(i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_rsa_sp800_56b_derive_params_from_pq(%struct.rsa_st* nocapture noundef %rsa, i32 noundef %nbits, %struct.bignum_st* noundef %e, %struct.bignum_ctx* noundef %ctx) local_unnamed_addr #0 {
entry:
  tail call void @BN_CTX_start(%struct.bignum_ctx* noundef %ctx) #3
  %call = tail call %struct.bignum_st* @BN_CTX_get(%struct.bignum_ctx* noundef %ctx) #3
  %call1 = tail call %struct.bignum_st* @BN_CTX_get(%struct.bignum_ctx* noundef %ctx) #3
  %call2 = tail call %struct.bignum_st* @BN_CTX_get(%struct.bignum_ctx* noundef %ctx) #3
  %call3 = tail call %struct.bignum_st* @BN_CTX_get(%struct.bignum_ctx* noundef %ctx) #3
  %call4 = tail call %struct.bignum_st* @BN_CTX_get(%struct.bignum_ctx* noundef %ctx) #3
  %cmp = icmp eq %struct.bignum_st* %call4, null
  br i1 %cmp, label %if.then93, label %if.end

if.end:                                           ; preds = %entry
  tail call void @BN_set_flags(%struct.bignum_st* noundef %call, i32 noundef 4) #3
  tail call void @BN_set_flags(%struct.bignum_st* noundef %call1, i32 noundef 4) #3
  tail call void @BN_set_flags(%struct.bignum_st* noundef %call2, i32 noundef 4) #3
  tail call void @BN_set_flags(%struct.bignum_st* noundef %call3, i32 noundef 4) #3
  tail call void @BN_set_flags(%struct.bignum_st* noundef nonnull %call4, i32 noundef 4) #3
  %p = getelementptr inbounds %struct.rsa_st, %struct.rsa_st* %rsa, i64 0, i32 8
  %0 = load %struct.bignum_st*, %struct.bignum_st** %p, align 8, !tbaa !4
  %q = getelementptr inbounds %struct.rsa_st, %struct.rsa_st* %rsa, i64 0, i32 9
  %1 = load %struct.bignum_st*, %struct.bignum_st** %q, align 8, !tbaa !13
  %call5 = tail call i32 @ossl_rsa_get_lcm(%struct.bignum_ctx* noundef %ctx, %struct.bignum_st* noundef %0, %struct.bignum_st* noundef %1, %struct.bignum_st* noundef %call2, %struct.bignum_st* noundef nonnull %call4, %struct.bignum_st* noundef %call, %struct.bignum_st* noundef %call1, %struct.bignum_st* noundef %call3) #3
  %cmp6.not = icmp eq i32 %call5, 1
  br i1 %cmp6.not, label %if.end8, label %if.then93

if.end8:                                          ; preds = %if.end
  %e9 = getelementptr inbounds %struct.rsa_st, %struct.rsa_st* %rsa, i64 0, i32 6
  %2 = load %struct.bignum_st*, %struct.bignum_st** %e9, align 8, !tbaa !15
  tail call void @BN_free(%struct.bignum_st* noundef %2) #3
  %call10 = tail call %struct.bignum_st* @BN_dup(%struct.bignum_st* noundef %e) #3
  store %struct.bignum_st* %call10, %struct.bignum_st** %e9, align 8, !tbaa !15
  %cmp13 = icmp eq %struct.bignum_st* %call10, null
  br i1 %cmp13, label %if.then93, label %if.end15

if.end15:                                         ; preds = %if.end8
  %d = getelementptr inbounds %struct.rsa_st, %struct.rsa_st* %rsa, i64 0, i32 7
  %3 = load %struct.bignum_st*, %struct.bignum_st** %d, align 8, !tbaa !16
  tail call void @BN_clear_free(%struct.bignum_st* noundef %3) #3
  %call16 = tail call %struct.bignum_st* @BN_secure_new() #3
  store %struct.bignum_st* %call16, %struct.bignum_st** %d, align 8, !tbaa !16
  %cmp19 = icmp eq %struct.bignum_st* %call16, null
  br i1 %cmp19, label %if.then93, label %if.end21

if.end21:                                         ; preds = %if.end15
  tail call void @BN_set_flags(%struct.bignum_st* noundef nonnull %call16, i32 noundef 4) #3
  %4 = load %struct.bignum_st*, %struct.bignum_st** %d, align 8, !tbaa !16
  %call24 = tail call %struct.bignum_st* @BN_mod_inverse(%struct.bignum_st* noundef %4, %struct.bignum_st* noundef %e, %struct.bignum_st* noundef %call2, %struct.bignum_ctx* noundef %ctx) #3
  %cmp25 = icmp eq %struct.bignum_st* %call24, null
  br i1 %cmp25, label %if.then93, label %if.end27

if.end27:                                         ; preds = %if.end21
  %5 = load %struct.bignum_st*, %struct.bignum_st** %d, align 8, !tbaa !16
  %call29 = tail call i32 @BN_num_bits(%struct.bignum_st* noundef %5) #3
  %shr = ashr i32 %nbits, 1
  %cmp30.not = icmp sgt i32 %call29, %shr
  br i1 %cmp30.not, label %if.end32, label %if.then93

if.end32:                                         ; preds = %if.end27
  %n = getelementptr inbounds %struct.rsa_st, %struct.rsa_st* %rsa, i64 0, i32 5
  %6 = load %struct.bignum_st*, %struct.bignum_st** %n, align 8, !tbaa !17
  %cmp33 = icmp eq %struct.bignum_st* %6, null
  br i1 %cmp33, label %if.end37, label %lor.lhs.false

if.end37:                                         ; preds = %if.end32
  %call35 = tail call %struct.bignum_st* @BN_new() #3
  store %struct.bignum_st* %call35, %struct.bignum_st** %n, align 8, !tbaa !17
  %cmp39 = icmp eq %struct.bignum_st* %call35, null
  br i1 %cmp39, label %if.then93, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end32, %if.end37
  %7 = phi %struct.bignum_st* [ %call35, %if.end37 ], [ %6, %if.end32 ]
  %8 = load %struct.bignum_st*, %struct.bignum_st** %p, align 8, !tbaa !4
  %9 = load %struct.bignum_st*, %struct.bignum_st** %q, align 8, !tbaa !13
  %call43 = tail call i32 @BN_mul(%struct.bignum_st* noundef nonnull %7, %struct.bignum_st* noundef %8, %struct.bignum_st* noundef %9, %struct.bignum_ctx* noundef %ctx) #3
  %tobool.not = icmp eq i32 %call43, 0
  br i1 %tobool.not, label %if.then93, label %if.end45

if.end45:                                         ; preds = %lor.lhs.false
  %dmp1 = getelementptr inbounds %struct.rsa_st, %struct.rsa_st* %rsa, i64 0, i32 10
  %10 = load %struct.bignum_st*, %struct.bignum_st** %dmp1, align 8, !tbaa !18
  %cmp46 = icmp eq %struct.bignum_st* %10, null
  br i1 %cmp46, label %if.end50, label %if.end54

if.end50:                                         ; preds = %if.end45
  %call48 = tail call %struct.bignum_st* @BN_secure_new() #3
  store %struct.bignum_st* %call48, %struct.bignum_st** %dmp1, align 8, !tbaa !18
  %cmp52 = icmp eq %struct.bignum_st* %call48, null
  br i1 %cmp52, label %if.then93, label %if.end54

if.end54:                                         ; preds = %if.end45, %if.end50
  %11 = phi %struct.bignum_st* [ %call48, %if.end50 ], [ %10, %if.end45 ]
  tail call void @BN_set_flags(%struct.bignum_st* noundef nonnull %11, i32 noundef 4) #3
  %12 = load %struct.bignum_st*, %struct.bignum_st** %dmp1, align 8, !tbaa !18
  %13 = load %struct.bignum_st*, %struct.bignum_st** %d, align 8, !tbaa !16
  %call58 = tail call i32 @BN_div(%struct.bignum_st* noundef null, %struct.bignum_st* noundef %12, %struct.bignum_st* noundef %13, %struct.bignum_st* noundef %call, %struct.bignum_ctx* noundef %ctx) #3
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %if.then93, label %if.end61

if.end61:                                         ; preds = %if.end54
  %dmq1 = getelementptr inbounds %struct.rsa_st, %struct.rsa_st* %rsa, i64 0, i32 11
  %14 = load %struct.bignum_st*, %struct.bignum_st** %dmq1, align 8, !tbaa !19
  %cmp62 = icmp eq %struct.bignum_st* %14, null
  br i1 %cmp62, label %if.end66, label %if.end70

if.end66:                                         ; preds = %if.end61
  %call64 = tail call %struct.bignum_st* @BN_secure_new() #3
  store %struct.bignum_st* %call64, %struct.bignum_st** %dmq1, align 8, !tbaa !19
  %cmp68 = icmp eq %struct.bignum_st* %call64, null
  br i1 %cmp68, label %if.then93, label %if.end70

if.end70:                                         ; preds = %if.end61, %if.end66
  %15 = phi %struct.bignum_st* [ %call64, %if.end66 ], [ %14, %if.end61 ]
  tail call void @BN_set_flags(%struct.bignum_st* noundef nonnull %15, i32 noundef 4) #3
  %16 = load %struct.bignum_st*, %struct.bignum_st** %dmq1, align 8, !tbaa !19
  %17 = load %struct.bignum_st*, %struct.bignum_st** %d, align 8, !tbaa !16
  %call74 = tail call i32 @BN_div(%struct.bignum_st* noundef null, %struct.bignum_st* noundef %16, %struct.bignum_st* noundef %17, %struct.bignum_st* noundef %call1, %struct.bignum_ctx* noundef %ctx) #3
  %tobool75.not = icmp eq i32 %call74, 0
  br i1 %tobool75.not, label %if.then93, label %if.end77

if.end77:                                         ; preds = %if.end70
  %iqmp = getelementptr inbounds %struct.rsa_st, %struct.rsa_st* %rsa, i64 0, i32 12
  %18 = load %struct.bignum_st*, %struct.bignum_st** %iqmp, align 8, !tbaa !20
  tail call void @BN_free(%struct.bignum_st* noundef %18) #3
  %call78 = tail call %struct.bignum_st* @BN_secure_new() #3
  store %struct.bignum_st* %call78, %struct.bignum_st** %iqmp, align 8, !tbaa !20
  %cmp81 = icmp eq %struct.bignum_st* %call78, null
  br i1 %cmp81, label %if.then93, label %if.end83

if.end83:                                         ; preds = %if.end77
  tail call void @BN_set_flags(%struct.bignum_st* noundef nonnull %call78, i32 noundef 4) #3
  %19 = load %struct.bignum_st*, %struct.bignum_st** %iqmp, align 8, !tbaa !20
  %20 = load %struct.bignum_st*, %struct.bignum_st** %q, align 8, !tbaa !13
  %21 = load %struct.bignum_st*, %struct.bignum_st** %p, align 8, !tbaa !4
  %call88 = tail call %struct.bignum_st* @BN_mod_inverse(%struct.bignum_st* noundef %19, %struct.bignum_st* noundef %20, %struct.bignum_st* noundef %21, %struct.bignum_ctx* noundef %ctx) #3
  %cmp89 = icmp eq %struct.bignum_st* %call88, null
  br i1 %cmp89, label %if.then93, label %err

err:                                              ; preds = %if.end83
  %dirty_cnt = getelementptr inbounds %struct.rsa_st, %struct.rsa_st* %rsa, i64 0, i32 25
  %22 = load i32, i32* %dirty_cnt, align 8, !tbaa !14
  %inc = add nsw i32 %22, 1
  store i32 %inc, i32* %dirty_cnt, align 8, !tbaa !14
  br label %if.end106

if.then93:                                        ; preds = %if.end83, %if.end77, %if.end70, %if.end66, %if.end54, %if.end50, %if.end37, %lor.lhs.false, %if.end21, %if.end15, %if.end8, %if.end, %entry, %if.end27
  %ret.0.ph = phi i32 [ 0, %if.end27 ], [ -1, %entry ], [ -1, %if.end ], [ -1, %if.end8 ], [ -1, %if.end15 ], [ -1, %if.end21 ], [ -1, %lor.lhs.false ], [ -1, %if.end37 ], [ -1, %if.end50 ], [ -1, %if.end54 ], [ -1, %if.end66 ], [ -1, %if.end70 ], [ -1, %if.end77 ], [ -1, %if.end83 ]
  %e94 = getelementptr inbounds %struct.rsa_st, %struct.rsa_st* %rsa, i64 0, i32 6
  %23 = load %struct.bignum_st*, %struct.bignum_st** %e94, align 8, !tbaa !15
  tail call void @BN_free(%struct.bignum_st* noundef %23) #3
  store %struct.bignum_st* null, %struct.bignum_st** %e94, align 8, !tbaa !15
  %d96 = getelementptr inbounds %struct.rsa_st, %struct.rsa_st* %rsa, i64 0, i32 7
  %24 = load %struct.bignum_st*, %struct.bignum_st** %d96, align 8, !tbaa !16
  tail call void @BN_free(%struct.bignum_st* noundef %24) #3
  store %struct.bignum_st* null, %struct.bignum_st** %d96, align 8, !tbaa !16
  %n98 = getelementptr inbounds %struct.rsa_st, %struct.rsa_st* %rsa, i64 0, i32 5
  %25 = load %struct.bignum_st*, %struct.bignum_st** %n98, align 8, !tbaa !17
  tail call void @BN_free(%struct.bignum_st* noundef %25) #3
  store %struct.bignum_st* null, %struct.bignum_st** %n98, align 8, !tbaa !17
  %iqmp100 = getelementptr inbounds %struct.rsa_st, %struct.rsa_st* %rsa, i64 0, i32 12
  %26 = load %struct.bignum_st*, %struct.bignum_st** %iqmp100, align 8, !tbaa !20
  tail call void @BN_free(%struct.bignum_st* noundef %26) #3
  store %struct.bignum_st* null, %struct.bignum_st** %iqmp100, align 8, !tbaa !20
  %dmq1102 = getelementptr inbounds %struct.rsa_st, %struct.rsa_st* %rsa, i64 0, i32 11
  %27 = load %struct.bignum_st*, %struct.bignum_st** %dmq1102, align 8, !tbaa !19
  tail call void @BN_free(%struct.bignum_st* noundef %27) #3
  store %struct.bignum_st* null, %struct.bignum_st** %dmq1102, align 8, !tbaa !19
  %dmp1104 = getelementptr inbounds %struct.rsa_st, %struct.rsa_st* %rsa, i64 0, i32 10
  %28 = load %struct.bignum_st*, %struct.bignum_st** %dmp1104, align 8, !tbaa !18
  tail call void @BN_free(%struct.bignum_st* noundef %28) #3
  store %struct.bignum_st* null, %struct.bignum_st** %dmp1104, align 8, !tbaa !18
  br label %if.end106

if.end106:                                        ; preds = %err, %if.then93
  %ret.0197 = phi i32 [ %ret.0.ph, %if.then93 ], [ 1, %err ]
  tail call void @BN_clear(%struct.bignum_st* noundef %call) #3
  tail call void @BN_clear(%struct.bignum_st* noundef %call1) #3
  tail call void @BN_clear(%struct.bignum_st* noundef %call2) #3
  tail call void @BN_clear(%struct.bignum_st* noundef %call3) #3
  tail call void @BN_clear(%struct.bignum_st* noundef %call4) #3
  tail call void @BN_CTX_end(%struct.bignum_ctx* noundef %ctx) #3
  ret i32 %ret.0197
}

declare i32 @ossl_rsa_get_lcm(%struct.bignum_ctx* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef) local_unnamed_addr #1

declare void @BN_free(%struct.bignum_st* noundef) local_unnamed_addr #1

declare %struct.bignum_st* @BN_dup(%struct.bignum_st* noundef) local_unnamed_addr #1

declare void @BN_clear_free(%struct.bignum_st* noundef) local_unnamed_addr #1

declare %struct.bignum_st* @BN_mod_inverse(%struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_ctx* noundef) local_unnamed_addr #1

declare i32 @BN_num_bits(%struct.bignum_st* noundef) local_unnamed_addr #1

declare %struct.bignum_st* @BN_new() local_unnamed_addr #1

declare i32 @BN_mul(%struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_ctx* noundef) local_unnamed_addr #1

declare i32 @BN_div(%struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_ctx* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_rsa_sp800_56b_generate_key(%struct.rsa_st* nocapture noundef %rsa, i32 noundef %nbits, %struct.bignum_st* noundef %efixed, %struct.bn_gencb_st* noundef %cb) local_unnamed_addr #0 {
entry:
  %call = tail call i32 @ossl_rsa_sp800_56b_validate_strength(i32 noundef %nbits, i32 noundef -1) #4
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %libctx = getelementptr inbounds %struct.rsa_st, %struct.rsa_st* %rsa, i64 0, i32 1
  %0 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** %libctx, align 8, !tbaa !21
  %call1 = tail call %struct.evp_rand_ctx_st* @RAND_get0_private(%struct.ossl_lib_ctx_st* noundef %0) #3
  %call2 = tail call fastcc i32 @rsa_validate_rng_strength(%struct.evp_rand_ctx_st* noundef %call1) #4
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %cleanup, label %if.end5

if.end5:                                          ; preds = %if.end
  %1 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** %libctx, align 8, !tbaa !21
  %call7 = tail call %struct.bignum_ctx* @BN_CTX_new_ex(%struct.ossl_lib_ctx_st* noundef %1) #3
  %cmp = icmp eq %struct.bignum_ctx* %call7, null
  br i1 %cmp, label %cleanup, label %if.end9

if.end9:                                          ; preds = %if.end5
  %cmp10 = icmp eq %struct.bignum_st* %efixed, null
  br i1 %cmp10, label %if.then11, label %if.end18

if.then11:                                        ; preds = %if.end9
  %call12 = tail call %struct.bignum_st* @BN_new() #3
  %cmp13 = icmp eq %struct.bignum_st* %call12, null
  br i1 %cmp13, label %if.then32, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then11
  %call14 = tail call i32 @BN_set_word(%struct.bignum_st* noundef nonnull %call12, i64 noundef 65537) #3
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.then32, label %if.end18

if.end18:                                         ; preds = %if.end9, %lor.lhs.false
  %e.0 = phi %struct.bignum_st* [ %call12, %lor.lhs.false ], [ %efixed, %if.end9 ]
  br label %for.cond

for.cond:                                         ; preds = %if.end26, %if.end18
  %call19 = tail call i32 @ossl_rsa_fips186_4_gen_prob_primes(%struct.rsa_st* noundef %rsa, i8* undef, i32 noundef %nbits, %struct.bignum_st* noundef nonnull %e.0, %struct.bignum_ctx* noundef nonnull %call7, %struct.bn_gencb_st* noundef %cb) #4
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %err, label %if.end22

if.end22:                                         ; preds = %for.cond
  %call23 = tail call i32 @ossl_rsa_sp800_56b_derive_params_from_pq(%struct.rsa_st* noundef %rsa, i32 noundef %nbits, %struct.bignum_st* noundef nonnull %e.0, %struct.bignum_ctx* noundef nonnull %call7) #4
  %cmp24 = icmp slt i32 %call23, 0
  br i1 %cmp24, label %err, label %if.end26

if.end26:                                         ; preds = %if.end22
  %cmp27.not = icmp eq i32 %call23, 0
  br i1 %cmp27.not, label %for.cond, label %for.end

for.end:                                          ; preds = %if.end26
  %call30 = tail call i32 @ossl_rsa_sp800_56b_pairwise_test(%struct.rsa_st* noundef %rsa, %struct.bignum_ctx* noundef nonnull %call7) #4
  br label %err

err:                                              ; preds = %if.end22, %for.cond, %for.end
  %ret.0 = phi i32 [ %call30, %for.end ], [ 0, %for.cond ], [ 0, %if.end22 ]
  br i1 %cmp10, label %if.then32, label %if.end33

if.then32:                                        ; preds = %lor.lhs.false, %if.then11, %err
  %e.165 = phi %struct.bignum_st* [ %e.0, %err ], [ %call12, %lor.lhs.false ], [ null, %if.then11 ]
  %ret.064 = phi i32 [ %ret.0, %err ], [ 0, %lor.lhs.false ], [ 0, %if.then11 ]
  tail call void @BN_free(%struct.bignum_st* noundef %e.165) #3
  br label %if.end33

if.end33:                                         ; preds = %if.then32, %err
  %ret.063 = phi i32 [ %ret.064, %if.then32 ], [ %ret.0, %err ]
  tail call void @BN_CTX_free(%struct.bignum_ctx* noundef nonnull %call7) #3
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end, %entry, %if.end33
  %retval.0 = phi i32 [ %ret.063, %if.end33 ], [ 0, %entry ], [ 0, %if.end ], [ 0, %if.end5 ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc i32 @rsa_validate_rng_strength(%struct.evp_rand_ctx_st* noundef readnone %rng) unnamed_addr #2 {
entry:
  %cmp = icmp ne %struct.evp_rand_ctx_st* %rng, null
  %. = zext i1 %cmp to i32
  ret i32 %.
}

declare %struct.evp_rand_ctx_st* @RAND_get0_private(%struct.ossl_lib_ctx_st* noundef) local_unnamed_addr #1

declare %struct.bignum_ctx* @BN_CTX_new_ex(%struct.ossl_lib_ctx_st* noundef) local_unnamed_addr #1

declare i32 @BN_set_word(%struct.bignum_st* noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_rsa_sp800_56b_pairwise_test(%struct.rsa_st* nocapture noundef readonly %rsa, %struct.bignum_ctx* noundef %ctx) local_unnamed_addr #0 {
entry:
  tail call void @BN_CTX_start(%struct.bignum_ctx* noundef %ctx) #3
  %call = tail call %struct.bignum_st* @BN_CTX_get(%struct.bignum_ctx* noundef %ctx) #3
  %call1 = tail call %struct.bignum_st* @BN_CTX_get(%struct.bignum_ctx* noundef %ctx) #3
  %cmp = icmp eq %struct.bignum_st* %call1, null
  br i1 %cmp, label %err, label %if.end

if.end:                                           ; preds = %entry
  tail call void @BN_set_flags(%struct.bignum_st* noundef nonnull %call1, i32 noundef 4) #3
  %call2 = tail call i32 @BN_set_word(%struct.bignum_st* noundef nonnull %call1, i64 noundef 2) #3
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.then12, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  %e = getelementptr inbounds %struct.rsa_st, %struct.rsa_st* %rsa, i64 0, i32 6
  %0 = load %struct.bignum_st*, %struct.bignum_st** %e, align 8, !tbaa !15
  %n = getelementptr inbounds %struct.rsa_st, %struct.rsa_st* %rsa, i64 0, i32 5
  %1 = load %struct.bignum_st*, %struct.bignum_st** %n, align 8, !tbaa !17
  %call3 = tail call i32 @BN_mod_exp(%struct.bignum_st* noundef %call, %struct.bignum_st* noundef nonnull %call1, %struct.bignum_st* noundef %0, %struct.bignum_st* noundef %1, %struct.bignum_ctx* noundef %ctx) #3
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.then12, label %land.lhs.true5

land.lhs.true5:                                   ; preds = %land.lhs.true
  %d = getelementptr inbounds %struct.rsa_st, %struct.rsa_st* %rsa, i64 0, i32 7
  %2 = load %struct.bignum_st*, %struct.bignum_st** %d, align 8, !tbaa !16
  %3 = load %struct.bignum_st*, %struct.bignum_st** %n, align 8, !tbaa !17
  %call7 = tail call i32 @BN_mod_exp(%struct.bignum_st* noundef %call, %struct.bignum_st* noundef %call, %struct.bignum_st* noundef %2, %struct.bignum_st* noundef %3, %struct.bignum_ctx* noundef %ctx) #3
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.then12, label %land.rhs

land.rhs:                                         ; preds = %land.lhs.true5
  %call9 = tail call i32 @BN_cmp(%struct.bignum_st* noundef nonnull %call1, %struct.bignum_st* noundef %call) #3
  %cmp10.not = icmp eq i32 %call9, 0
  br i1 %cmp10.not, label %err, label %if.then12

if.then12:                                        ; preds = %if.end, %land.lhs.true, %land.lhs.true5, %land.rhs
  tail call void @ERR_new() #3
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 noundef 436, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @__func__.ossl_rsa_sp800_56b_pairwise_test, i64 0, i64 0)) #3
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 4, i32 noundef 177, i8* noundef null) #3
  br label %err

err:                                              ; preds = %land.rhs, %if.then12, %entry
  %ret.0 = phi i32 [ 0, %entry ], [ 0, %if.then12 ], [ 1, %land.rhs ]
  tail call void @BN_CTX_end(%struct.bignum_ctx* noundef %ctx) #3
  ret i32 %ret.0
}

declare void @BN_CTX_free(%struct.bignum_ctx* noundef) local_unnamed_addr #1

declare i32 @BN_mod_exp(%struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_ctx* noundef) local_unnamed_addr #1

declare i32 @BN_cmp(%struct.bignum_st* noundef, %struct.bignum_st* noundef) local_unnamed_addr #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nobuiltin nounwind "no-builtins" }
attributes #4 = { nobuiltin "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{!"clang version 14.0.0"}
!4 = !{!5, !9, i64 64}
!5 = !{!"rsa_st", !6, i64 0, !9, i64 8, !6, i64 16, !9, i64 24, !9, i64 32, !9, i64 40, !9, i64 48, !9, i64 56, !9, i64 64, !9, i64 72, !9, i64 80, !9, i64 88, !9, i64 96, !10, i64 104, !9, i64 128, !9, i64 136, !12, i64 144, !7, i64 160, !6, i64 164, !9, i64 168, !9, i64 176, !9, i64 184, !9, i64 192, !9, i64 200, !9, i64 208, !6, i64 216}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!"any pointer", !7, i64 0}
!10 = !{!"rsa_pss_params_30_st", !6, i64 0, !11, i64 4, !6, i64 12, !6, i64 16}
!11 = !{!"", !6, i64 0, !6, i64 4}
!12 = !{!"crypto_ex_data_st", !9, i64 0, !9, i64 8}
!13 = !{!5, !9, i64 72}
!14 = !{!5, !6, i64 216}
!15 = !{!5, !9, i64 48}
!16 = !{!5, !9, i64 56}
!17 = !{!5, !9, i64 40}
!18 = !{!5, !9, i64 80}
!19 = !{!5, !9, i64 88}
!20 = !{!5, !9, i64 96}
!21 = !{!5, !9, i64 8}
