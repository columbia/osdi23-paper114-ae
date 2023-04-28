; ModuleID = 'crypto/bn/bn_rsa_fips186_4.c'
source_filename = "crypto/bn/bn_rsa_fips186_4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bignum_st = type { i64*, i32, i32, i32, i32 }
%struct.bignum_ctx = type opaque
%struct.bn_gencb_st = type { i32, i8*, %union.anon }
%union.anon = type { void (i32, i32, i8*)* }

@inv_sqrt_2_val = internal constant [4 x i64] [i64 -1362430672824461034, i64 2121020303797364812, i64 6448461645324402335, i64 -5402926248376769404], align 16
@ossl_bn_inv_sqrt_2 = constant %struct.bignum_st { i64* getelementptr inbounds ([4 x i64], [4 x i64]* @inv_sqrt_2_val, i32 0, i32 0), i32 4, i32 4, i32 0, i32 2 }, align 8

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_bn_rsa_fips186_4_gen_prob_primes(%struct.bignum_st* noundef %p, %struct.bignum_st* noundef %Xpout, %struct.bignum_st* noundef %p1, %struct.bignum_st* noundef %p2, %struct.bignum_st* noundef %Xp, %struct.bignum_st* noundef %Xp1, %struct.bignum_st* noundef %Xp2, i32 noundef %nlen, %struct.bignum_st* noundef %e, %struct.bignum_ctx* noundef %ctx, %struct.bn_gencb_st* noundef %cb) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.bignum_st* %p, null
  %cmp1 = icmp eq %struct.bignum_st* %Xpout, null
  %or.cond = or i1 %cmp, %cmp1
  br i1 %or.cond, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  tail call void @BN_CTX_start(%struct.bignum_ctx* noundef %ctx) #4
  %cmp2.not = icmp eq %struct.bignum_st* %p1, null
  br i1 %cmp2.not, label %cond.false, label %cond.end

cond.false:                                       ; preds = %if.end
  %call = tail call %struct.bignum_st* @BN_CTX_get(%struct.bignum_ctx* noundef %ctx) #4
  br label %cond.end

cond.end:                                         ; preds = %if.end, %cond.false
  %cond = phi %struct.bignum_st* [ %call, %cond.false ], [ %p1, %if.end ]
  %cmp3.not = icmp eq %struct.bignum_st* %p2, null
  br i1 %cmp3.not, label %cond.false5, label %cond.end7

cond.false5:                                      ; preds = %cond.end
  %call6 = tail call %struct.bignum_st* @BN_CTX_get(%struct.bignum_ctx* noundef %ctx) #4
  br label %cond.end7

cond.end7:                                        ; preds = %cond.end, %cond.false5
  %cond8 = phi %struct.bignum_st* [ %call6, %cond.false5 ], [ %p2, %cond.end ]
  %cmp9.not = icmp eq %struct.bignum_st* %Xp1, null
  br i1 %cmp9.not, label %cond.false11, label %cond.end13

cond.false11:                                     ; preds = %cond.end7
  %call12 = tail call %struct.bignum_st* @BN_CTX_get(%struct.bignum_ctx* noundef %ctx) #4
  br label %cond.end13

cond.end13:                                       ; preds = %cond.end7, %cond.false11
  %cond14 = phi %struct.bignum_st* [ %call12, %cond.false11 ], [ %Xp1, %cond.end7 ]
  %cmp15.not = icmp eq %struct.bignum_st* %Xp2, null
  br i1 %cmp15.not, label %cond.false17, label %cond.end19

cond.false17:                                     ; preds = %cond.end13
  %call18 = tail call %struct.bignum_st* @BN_CTX_get(%struct.bignum_ctx* noundef %ctx) #4
  br label %cond.end19

cond.end19:                                       ; preds = %cond.end13, %cond.false17
  %cond20 = phi %struct.bignum_st* [ %call18, %cond.false17 ], [ %Xp2, %cond.end13 ]
  %cmp21 = icmp eq %struct.bignum_st* %cond, null
  %cmp23 = icmp eq %struct.bignum_st* %cond8, null
  %or.cond81 = select i1 %cmp21, i1 true, i1 %cmp23
  %cmp25 = icmp eq %struct.bignum_st* %cond14, null
  %or.cond82 = select i1 %or.cond81, i1 true, i1 %cmp25
  %cmp27 = icmp eq %struct.bignum_st* %cond20, null
  %or.cond83 = select i1 %or.cond82, i1 true, i1 %cmp27
  br i1 %or.cond83, label %err, label %if.end29

if.end29:                                         ; preds = %cond.end19
  %call30 = tail call fastcc i32 @bn_rsa_fips186_5_aux_prime_min_size(i32 noundef %nlen) #5
  %cmp31 = icmp eq i32 %call30, 0
  br i1 %cmp31, label %err, label %if.end33

if.end33:                                         ; preds = %if.end29
  br i1 %cmp9.not, label %if.then35, label %if.end39

if.then35:                                        ; preds = %if.end33
  %call36 = tail call i32 @BN_priv_rand_ex(%struct.bignum_st* noundef nonnull %cond14, i32 noundef %call30, i32 noundef 0, i32 noundef 1, i32 noundef 0, %struct.bignum_ctx* noundef %ctx) #4
  %tobool.not = icmp eq i32 %call36, 0
  br i1 %tobool.not, label %err, label %if.end39

if.end39:                                         ; preds = %if.then35, %if.end33
  br i1 %cmp15.not, label %if.then41, label %if.end46

if.then41:                                        ; preds = %if.end39
  %call42 = tail call i32 @BN_priv_rand_ex(%struct.bignum_st* noundef nonnull %cond20, i32 noundef %call30, i32 noundef 0, i32 noundef 1, i32 noundef 0, %struct.bignum_ctx* noundef %ctx) #4
  %tobool43.not = icmp eq i32 %call42, 0
  br i1 %tobool43.not, label %err, label %if.end46

if.end46:                                         ; preds = %if.then41, %if.end39
  %call47 = tail call fastcc i32 @bn_rsa_fips186_4_find_aux_prob_prime(%struct.bignum_st* noundef nonnull %cond14, %struct.bignum_st* noundef nonnull %cond, %struct.bignum_ctx* noundef %ctx, %struct.bn_gencb_st* noundef %cb) #5
  %tobool48.not = icmp eq i32 %call47, 0
  br i1 %tobool48.not, label %err, label %lor.lhs.false49

lor.lhs.false49:                                  ; preds = %if.end46
  %call50 = tail call fastcc i32 @bn_rsa_fips186_4_find_aux_prob_prime(%struct.bignum_st* noundef nonnull %cond20, %struct.bignum_st* noundef nonnull %cond8, %struct.bignum_ctx* noundef %ctx, %struct.bn_gencb_st* noundef %cb) #5
  %tobool51.not = icmp eq i32 %call50, 0
  br i1 %tobool51.not, label %err, label %if.end53

if.end53:                                         ; preds = %lor.lhs.false49
  %call54 = tail call i32 @BN_num_bits(%struct.bignum_st* noundef nonnull %cond) #4
  %call55 = tail call i32 @BN_num_bits(%struct.bignum_st* noundef nonnull %cond8) #4
  %add = add nsw i32 %call55, %call54
  %call56 = tail call fastcc i32 @bn_rsa_fips186_5_aux_prime_max_sum_size_for_prob_primes(i32 noundef %nlen) #5
  %cmp57.not = icmp slt i32 %add, %call56
  br i1 %cmp57.not, label %if.end59, label %err

if.end59:                                         ; preds = %if.end53
  %call60 = tail call i32 @ossl_bn_rsa_fips186_4_derive_prime(%struct.bignum_st* noundef nonnull %p, %struct.bignum_st* noundef nonnull %Xpout, %struct.bignum_st* noundef %Xp, %struct.bignum_st* noundef nonnull %cond, %struct.bignum_st* noundef nonnull %cond8, i32 noundef %nlen, %struct.bignum_st* noundef %e, %struct.bignum_ctx* noundef %ctx, %struct.bn_gencb_st* noundef %cb) #5
  %tobool61.not = icmp ne i32 %call60, 0
  %spec.select = zext i1 %tobool61.not to i32
  br label %err

err:                                              ; preds = %if.end59, %if.end53, %if.end46, %lor.lhs.false49, %if.then41, %if.then35, %if.end29, %cond.end19
  %ret.0 = phi i32 [ 0, %cond.end19 ], [ 0, %if.end29 ], [ 0, %if.end53 ], [ 0, %lor.lhs.false49 ], [ 0, %if.end46 ], [ 0, %if.then41 ], [ 0, %if.then35 ], [ %spec.select, %if.end59 ]
  br i1 %cmp2.not, label %if.then65, label %if.end66

if.then65:                                        ; preds = %err
  tail call void @BN_clear(%struct.bignum_st* noundef %cond) #4
  br label %if.end66

if.end66:                                         ; preds = %if.then65, %err
  br i1 %cmp3.not, label %if.then68, label %if.end69

if.then68:                                        ; preds = %if.end66
  tail call void @BN_clear(%struct.bignum_st* noundef %cond8) #4
  br label %if.end69

if.end69:                                         ; preds = %if.then68, %if.end66
  br i1 %cmp9.not, label %if.then71, label %if.end72

if.then71:                                        ; preds = %if.end69
  tail call void @BN_clear(%struct.bignum_st* noundef %cond14) #4
  br label %if.end72

if.end72:                                         ; preds = %if.then71, %if.end69
  br i1 %cmp15.not, label %if.then74, label %if.end75

if.then74:                                        ; preds = %if.end72
  tail call void @BN_clear(%struct.bignum_st* noundef %cond20) #4
  br label %if.end75

if.end75:                                         ; preds = %if.then74, %if.end72
  tail call void @BN_CTX_end(%struct.bignum_ctx* noundef %ctx) #4
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end75
  %retval.0 = phi i32 [ %ret.0, %if.end75 ], [ 0, %entry ]
  ret i32 %retval.0
}

declare void @BN_CTX_start(%struct.bignum_ctx* noundef) local_unnamed_addr #1

declare %struct.bignum_st* @BN_CTX_get(%struct.bignum_ctx* noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc i32 @bn_rsa_fips186_5_aux_prime_min_size(i32 noundef %nbits) unnamed_addr #2 {
entry:
  %cmp = icmp sgt i32 %nbits, 4095
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %cmp1 = icmp sgt i32 %nbits, 3071
  br i1 %cmp1, label %return, label %if.end3

if.end3:                                          ; preds = %if.end
  %cmp4 = icmp sgt i32 %nbits, 2047
  %. = select i1 %cmp4, i32 141, i32 0
  br label %return

return:                                           ; preds = %if.end3, %if.end, %entry
  %retval.0 = phi i32 [ 201, %entry ], [ 171, %if.end ], [ %., %if.end3 ]
  ret i32 %retval.0
}

declare i32 @BN_priv_rand_ex(%struct.bignum_st* noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, %struct.bignum_ctx* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @bn_rsa_fips186_4_find_aux_prob_prime(%struct.bignum_st* noundef %Xp1, %struct.bignum_st* noundef %p1, %struct.bignum_ctx* noundef %ctx, %struct.bn_gencb_st* noundef %cb) unnamed_addr #0 {
entry:
  %call = tail call %struct.bignum_st* @BN_copy(%struct.bignum_st* noundef %p1, %struct.bignum_st* noundef %Xp1) #4
  %cmp = icmp eq %struct.bignum_st* %call, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  tail call void @BN_set_flags(%struct.bignum_st* noundef %p1, i32 noundef 4) #4
  br label %for.cond

for.cond:                                         ; preds = %if.end4, %if.end
  %i.0 = phi i32 [ 0, %if.end ], [ %inc, %if.end4 ]
  %inc = add nuw nsw i32 %i.0, 1
  %call1 = tail call i32 @BN_GENCB_call(%struct.bn_gencb_st* noundef %cb, i32 noundef 0, i32 noundef %inc) #4
  %call2 = tail call i32 @BN_check_prime(%struct.bignum_st* noundef %p1, %struct.bignum_ctx* noundef %ctx, %struct.bn_gencb_st* noundef %cb) #4
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end4, label %for.end

if.end4:                                          ; preds = %for.cond
  %call5 = tail call i32 @BN_add_word(%struct.bignum_st* noundef %p1, i64 noundef 2) #4
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %cleanup, label %for.cond

for.end:                                          ; preds = %for.cond
  %call9 = tail call i32 @BN_GENCB_call(%struct.bn_gencb_st* noundef %cb, i32 noundef 2, i32 noundef %inc) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %for.end, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ 1, %for.end ], [ 0, %if.end4 ]
  ret i32 %retval.0
}

declare i32 @BN_num_bits(%struct.bignum_st* noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc i32 @bn_rsa_fips186_5_aux_prime_max_sum_size_for_prob_primes(i32 noundef %nbits) unnamed_addr #2 {
entry:
  %cmp = icmp sgt i32 %nbits, 4095
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %cmp1 = icmp sgt i32 %nbits, 3071
  br i1 %cmp1, label %return, label %if.end3

if.end3:                                          ; preds = %if.end
  %cmp4 = icmp sgt i32 %nbits, 2047
  %. = select i1 %cmp4, i32 1007, i32 0
  br label %return

return:                                           ; preds = %if.end3, %if.end, %entry
  %retval.0 = phi i32 [ 2030, %entry ], [ 1518, %if.end ], [ %., %if.end3 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_bn_rsa_fips186_4_derive_prime(%struct.bignum_st* noundef %Y, %struct.bignum_st* noundef %X, %struct.bignum_st* noundef %Xin, %struct.bignum_st* noundef %r1, %struct.bignum_st* noundef %r2, i32 noundef %nlen, %struct.bignum_st* noundef %e, %struct.bignum_ctx* noundef %ctx, %struct.bn_gencb_st* noundef %cb) local_unnamed_addr #0 {
entry:
  %shr = ashr i32 %nlen, 1
  tail call void @BN_CTX_start(%struct.bignum_ctx* noundef %ctx) #4
  %call = tail call %struct.bignum_st* @BN_CTX_get(%struct.bignum_ctx* noundef %ctx) #4
  %call1 = tail call %struct.bignum_st* @BN_CTX_get(%struct.bignum_ctx* noundef %ctx) #4
  %call2 = tail call %struct.bignum_st* @BN_CTX_get(%struct.bignum_ctx* noundef %ctx) #4
  %call3 = tail call %struct.bignum_st* @BN_CTX_get(%struct.bignum_ctx* noundef %ctx) #4
  %call4 = tail call %struct.bignum_st* @BN_CTX_get(%struct.bignum_ctx* noundef %ctx) #4
  %call5 = tail call %struct.bignum_st* @BN_CTX_get(%struct.bignum_ctx* noundef %ctx) #4
  %call6 = tail call %struct.bignum_st* @BN_CTX_get(%struct.bignum_ctx* noundef %ctx) #4
  %cmp = icmp eq %struct.bignum_st* %call6, null
  br i1 %cmp, label %err, label %if.end

if.end:                                           ; preds = %entry
  %cmp7.not = icmp eq %struct.bignum_st* %Xin, null
  br i1 %cmp7.not, label %if.then13, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  %call8 = tail call %struct.bignum_st* @BN_copy(%struct.bignum_st* noundef %X, %struct.bignum_st* noundef nonnull %Xin) #4
  %cmp9 = icmp eq %struct.bignum_st* %call8, null
  br i1 %cmp9, label %err, label %if.end28

if.then13:                                        ; preds = %if.end
  %call14 = tail call i32 @BN_num_bits(%struct.bignum_st* noundef nonnull @ossl_bn_inv_sqrt_2) #4
  %cmp15 = icmp slt i32 %shr, %call14
  br i1 %cmp15, label %err, label %if.end17

if.end17:                                         ; preds = %if.then13
  %call18 = tail call i32 @BN_num_bits(%struct.bignum_st* noundef nonnull @ossl_bn_inv_sqrt_2) #4
  %sub = sub nsw i32 %shr, %call18
  %call19 = tail call i32 @BN_lshift(%struct.bignum_st* noundef %call, %struct.bignum_st* noundef nonnull @ossl_bn_inv_sqrt_2, i32 noundef %sub) #4
  %tobool.not = icmp eq i32 %call19, 0
  br i1 %tobool.not, label %err, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end17
  %call20 = tail call %struct.bignum_st* @BN_value_one() #4
  %call21 = tail call i32 @BN_lshift(%struct.bignum_st* noundef %call1, %struct.bignum_st* noundef %call20, i32 noundef %shr) #4
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %err, label %lor.lhs.false23

lor.lhs.false23:                                  ; preds = %lor.lhs.false
  %call24 = tail call i32 @BN_sub(%struct.bignum_st* noundef %call1, %struct.bignum_st* noundef %call1, %struct.bignum_st* noundef %call) #4
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %err, label %if.end28

if.end28:                                         ; preds = %land.lhs.true, %lor.lhs.false23
  %call29 = tail call i32 @BN_lshift1(%struct.bignum_st* noundef nonnull %call6, %struct.bignum_st* noundef %r1) #4
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %err, label %land.lhs.true31

land.lhs.true31:                                  ; preds = %if.end28
  %call32 = tail call i32 @BN_gcd(%struct.bignum_st* noundef %call3, %struct.bignum_st* noundef nonnull %call6, %struct.bignum_st* noundef %r2, %struct.bignum_ctx* noundef %ctx) #4
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %err, label %land.lhs.true34

land.lhs.true34:                                  ; preds = %land.lhs.true31
  %call35 = tail call i32 @BN_is_one(%struct.bignum_st* noundef %call3) #4
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %err, label %land.lhs.true37

land.lhs.true37:                                  ; preds = %land.lhs.true34
  %call38 = tail call %struct.bignum_st* @BN_mod_inverse(%struct.bignum_st* noundef %call2, %struct.bignum_st* noundef %r2, %struct.bignum_st* noundef nonnull %call6, %struct.bignum_ctx* noundef %ctx) #4
  %tobool39.not = icmp eq %struct.bignum_st* %call38, null
  br i1 %tobool39.not, label %err, label %land.lhs.true40

land.lhs.true40:                                  ; preds = %land.lhs.true37
  %call41 = tail call i32 @BN_mul(%struct.bignum_st* noundef %call2, %struct.bignum_st* noundef %call2, %struct.bignum_st* noundef %r2, %struct.bignum_ctx* noundef %ctx) #4
  %tobool42.not = icmp eq i32 %call41, 0
  br i1 %tobool42.not, label %err, label %land.lhs.true43

land.lhs.true43:                                  ; preds = %land.lhs.true40
  %call44 = tail call %struct.bignum_st* @BN_mod_inverse(%struct.bignum_st* noundef %call3, %struct.bignum_st* noundef nonnull %call6, %struct.bignum_st* noundef %r2, %struct.bignum_ctx* noundef %ctx) #4
  %tobool45.not = icmp eq %struct.bignum_st* %call44, null
  br i1 %tobool45.not, label %err, label %land.lhs.true46

land.lhs.true46:                                  ; preds = %land.lhs.true43
  %call47 = tail call i32 @BN_mul(%struct.bignum_st* noundef %call3, %struct.bignum_st* noundef %call3, %struct.bignum_st* noundef nonnull %call6, %struct.bignum_ctx* noundef %ctx) #4
  %tobool48.not = icmp eq i32 %call47, 0
  br i1 %tobool48.not, label %err, label %land.lhs.true49

land.lhs.true49:                                  ; preds = %land.lhs.true46
  %call50 = tail call i32 @BN_sub(%struct.bignum_st* noundef %call2, %struct.bignum_st* noundef %call2, %struct.bignum_st* noundef %call3) #4
  %tobool51.not = icmp eq i32 %call50, 0
  br i1 %tobool51.not, label %err, label %land.lhs.true52

land.lhs.true52:                                  ; preds = %land.lhs.true49
  %call53 = tail call i32 @BN_mul(%struct.bignum_st* noundef %call4, %struct.bignum_st* noundef nonnull %call6, %struct.bignum_st* noundef %r2, %struct.bignum_ctx* noundef %ctx) #4
  %tobool54.not = icmp eq i32 %call53, 0
  br i1 %tobool54.not, label %err, label %if.end56

if.end56:                                         ; preds = %land.lhs.true52
  %call57 = tail call i32 @BN_is_negative(%struct.bignum_st* noundef %call2) #4
  %tobool58.not = icmp eq i32 %call57, 0
  br i1 %tobool58.not, label %if.end63, label %land.lhs.true59

land.lhs.true59:                                  ; preds = %if.end56
  %call60 = tail call i32 @BN_add(%struct.bignum_st* noundef %call2, %struct.bignum_st* noundef %call2, %struct.bignum_st* noundef %call4) #4
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %err, label %if.end63

if.end63:                                         ; preds = %land.lhs.true59, %if.end56
  %mul = mul i32 %shr, 5
  br i1 %cmp7.not, label %if.then65, label %if.end73

if.then65:                                        ; preds = %if.then84, %if.end63
  %call66 = tail call i32 @BN_priv_rand_range_ex(%struct.bignum_st* noundef %X, %struct.bignum_st* noundef %call1, i32 noundef 0, %struct.bignum_ctx* noundef %ctx) #4
  %tobool67.not = icmp eq i32 %call66, 0
  br i1 %tobool67.not, label %end, label %lor.lhs.false68

lor.lhs.false68:                                  ; preds = %if.then65
  %call69 = tail call i32 @BN_add(%struct.bignum_st* noundef %X, %struct.bignum_st* noundef %X, %struct.bignum_st* noundef %call) #4
  %tobool70.not = icmp eq i32 %call69, 0
  br i1 %tobool70.not, label %end, label %if.end73

if.end73:                                         ; preds = %lor.lhs.false68, %if.end63
  %call74 = tail call i32 @BN_mod_sub(%struct.bignum_st* noundef %Y, %struct.bignum_st* noundef %call2, %struct.bignum_st* noundef %X, %struct.bignum_st* noundef %call4, %struct.bignum_ctx* noundef %ctx) #4
  %tobool75.not = icmp eq i32 %call74, 0
  br i1 %tobool75.not, label %err, label %lor.lhs.false76

lor.lhs.false76:                                  ; preds = %if.end73
  %call77 = tail call i32 @BN_add(%struct.bignum_st* noundef %Y, %struct.bignum_st* noundef %Y, %struct.bignum_st* noundef %X) #4
  %tobool78.not = icmp eq i32 %call77, 0
  br i1 %tobool78.not, label %err, label %for.cond81.preheader

for.cond81.preheader:                             ; preds = %lor.lhs.false76
  %smax = call i32 @llvm.smax.i32(i32 %mul, i32 1)
  %0 = add nsw i32 %smax, -1
  br label %for.cond81

for.cond81:                                       ; preds = %for.cond81.preheader, %lor.lhs.false107
  %i.0 = phi i32 [ %inc, %lor.lhs.false107 ], [ 0, %for.cond81.preheader ]
  %call82 = tail call i32 @BN_num_bits(%struct.bignum_st* noundef %Y) #4
  %cmp83 = icmp sgt i32 %call82, %shr
  br i1 %cmp83, label %if.then84, label %if.end87

if.then84:                                        ; preds = %for.cond81
  br i1 %cmp7.not, label %if.then65, label %err

if.end87:                                         ; preds = %for.cond81
  %call88 = tail call i32 @BN_GENCB_call(%struct.bn_gencb_st* noundef %cb, i32 noundef 0, i32 noundef 2) #4
  %call89 = tail call %struct.bignum_st* @BN_copy(%struct.bignum_st* noundef %call5, %struct.bignum_st* noundef %Y) #4
  %cmp90 = icmp eq %struct.bignum_st* %call89, null
  br i1 %cmp90, label %err, label %lor.lhs.false91

lor.lhs.false91:                                  ; preds = %if.end87
  %call92 = tail call i32 @BN_sub_word(%struct.bignum_st* noundef %call5, i64 noundef 1) #4
  %tobool93.not = icmp eq i32 %call92, 0
  br i1 %tobool93.not, label %err, label %lor.lhs.false94

lor.lhs.false94:                                  ; preds = %lor.lhs.false91
  %call95 = tail call i32 @BN_gcd(%struct.bignum_st* noundef %call3, %struct.bignum_st* noundef %call5, %struct.bignum_st* noundef %e, %struct.bignum_ctx* noundef %ctx) #4
  %tobool96.not = icmp eq i32 %call95, 0
  br i1 %tobool96.not, label %err, label %if.end98

if.end98:                                         ; preds = %lor.lhs.false94
  %call99 = tail call i32 @BN_is_one(%struct.bignum_st* noundef %call3) #4
  %tobool100.not = icmp eq i32 %call99, 0
  br i1 %tobool100.not, label %if.end105, label %land.lhs.true101

land.lhs.true101:                                 ; preds = %if.end98
  %call102 = tail call i32 @BN_check_prime(%struct.bignum_st* noundef %Y, %struct.bignum_ctx* noundef %ctx, %struct.bn_gencb_st* noundef %cb) #4
  %tobool103.not = icmp eq i32 %call102, 0
  br i1 %tobool103.not, label %if.end105, label %end

if.end105:                                        ; preds = %land.lhs.true101, %if.end98
  %exitcond.not = icmp eq i32 %i.0, %0
  br i1 %exitcond.not, label %err, label %lor.lhs.false107

lor.lhs.false107:                                 ; preds = %if.end105
  %inc = add nuw nsw i32 %i.0, 1
  %call108 = tail call i32 @BN_add(%struct.bignum_st* noundef %Y, %struct.bignum_st* noundef %Y, %struct.bignum_st* noundef %call4) #4
  %tobool109.not = icmp eq i32 %call108, 0
  br i1 %tobool109.not, label %err, label %for.cond81

end:                                              ; preds = %land.lhs.true101, %if.then65, %lor.lhs.false68
  %call112 = tail call i32 @BN_GENCB_call(%struct.bn_gencb_st* noundef %cb, i32 noundef 3, i32 noundef 0) #4
  br label %err

err:                                              ; preds = %if.end105, %lor.lhs.false107, %if.end87, %lor.lhs.false91, %lor.lhs.false94, %if.then84, %if.end73, %lor.lhs.false76, %land.lhs.true59, %if.end28, %land.lhs.true31, %land.lhs.true34, %land.lhs.true37, %land.lhs.true40, %land.lhs.true43, %land.lhs.true46, %land.lhs.true49, %land.lhs.true52, %if.end17, %lor.lhs.false, %lor.lhs.false23, %if.then13, %land.lhs.true, %entry, %end
  %ret.0 = phi i32 [ 0, %entry ], [ 0, %land.lhs.true ], [ 0, %if.then13 ], [ 0, %if.then84 ], [ 1, %end ], [ 0, %lor.lhs.false76 ], [ 0, %if.end73 ], [ 0, %land.lhs.true59 ], [ 0, %land.lhs.true52 ], [ 0, %land.lhs.true49 ], [ 0, %land.lhs.true46 ], [ 0, %land.lhs.true43 ], [ 0, %land.lhs.true40 ], [ 0, %land.lhs.true37 ], [ 0, %land.lhs.true34 ], [ 0, %land.lhs.true31 ], [ 0, %if.end28 ], [ 0, %lor.lhs.false23 ], [ 0, %lor.lhs.false ], [ 0, %if.end17 ], [ 0, %lor.lhs.false94 ], [ 0, %lor.lhs.false91 ], [ 0, %if.end87 ], [ 0, %lor.lhs.false107 ], [ 0, %if.end105 ]
  tail call void @BN_clear(%struct.bignum_st* noundef %call5) #4
  tail call void @BN_CTX_end(%struct.bignum_ctx* noundef %ctx) #4
  ret i32 %ret.0
}

declare void @BN_clear(%struct.bignum_st* noundef) local_unnamed_addr #1

declare void @BN_CTX_end(%struct.bignum_ctx* noundef) local_unnamed_addr #1

declare %struct.bignum_st* @BN_copy(%struct.bignum_st* noundef, %struct.bignum_st* noundef) local_unnamed_addr #1

declare i32 @BN_lshift(%struct.bignum_st* noundef, %struct.bignum_st* noundef, i32 noundef) local_unnamed_addr #1

declare %struct.bignum_st* @BN_value_one() local_unnamed_addr #1

declare i32 @BN_sub(%struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef) local_unnamed_addr #1

declare i32 @BN_lshift1(%struct.bignum_st* noundef, %struct.bignum_st* noundef) local_unnamed_addr #1

declare i32 @BN_gcd(%struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_ctx* noundef) local_unnamed_addr #1

declare i32 @BN_is_one(%struct.bignum_st* noundef) local_unnamed_addr #1

declare %struct.bignum_st* @BN_mod_inverse(%struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_ctx* noundef) local_unnamed_addr #1

declare i32 @BN_mul(%struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_ctx* noundef) local_unnamed_addr #1

declare i32 @BN_is_negative(%struct.bignum_st* noundef) local_unnamed_addr #1

declare i32 @BN_add(%struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef) local_unnamed_addr #1

declare i32 @BN_priv_rand_range_ex(%struct.bignum_st* noundef, %struct.bignum_st* noundef, i32 noundef, %struct.bignum_ctx* noundef) local_unnamed_addr #1

declare i32 @BN_mod_sub(%struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_ctx* noundef) local_unnamed_addr #1

declare i32 @BN_GENCB_call(%struct.bn_gencb_st* noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare i32 @BN_sub_word(%struct.bignum_st* noundef, i64 noundef) local_unnamed_addr #1

declare i32 @BN_check_prime(%struct.bignum_st* noundef, %struct.bignum_ctx* noundef, %struct.bn_gencb_st* noundef) local_unnamed_addr #1

declare void @BN_set_flags(%struct.bignum_st* noundef, i32 noundef) local_unnamed_addr #1

declare i32 @BN_add_word(%struct.bignum_st* noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #3

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nobuiltin nounwind "no-builtins" }
attributes #5 = { nobuiltin "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{!"clang version 14.0.0"}
