; ModuleID = 'crypto/rsa/rsa_gen.c'
source_filename = "crypto/rsa/rsa_gen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rsa_st = type { i32, %struct.ossl_lib_ctx_st*, i32, %struct.rsa_meth_st*, %struct.engine_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.rsa_pss_params_30_st, %struct.rsa_pss_params_st*, %struct.stack_st_RSA_PRIME_INFO*, %struct.crypto_ex_data_st, i32, i32, %struct.bn_mont_ctx_st*, %struct.bn_mont_ctx_st*, %struct.bn_mont_ctx_st*, %struct.bn_blinding_st*, %struct.bn_blinding_st*, i8*, i32 }
%struct.ossl_lib_ctx_st = type opaque
%struct.rsa_meth_st = type { i8*, i32 (i32, i8*, i8*, %struct.rsa_st*, i32)*, i32 (i32, i8*, i8*, %struct.rsa_st*, i32)*, i32 (i32, i8*, i8*, %struct.rsa_st*, i32)*, i32 (i32, i8*, i8*, %struct.rsa_st*, i32)*, i32 (%struct.bignum_st*, %struct.bignum_st*, %struct.rsa_st*, %struct.bignum_ctx*)*, i32 (%struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*, %struct.bn_mont_ctx_st*)*, i32 (%struct.rsa_st*)*, i32 (%struct.rsa_st*)*, i32, i8*, i32 (i32, i8*, i32, i8*, i32*, %struct.rsa_st*)*, i32 (i32, i8*, i32, i8*, i32, %struct.rsa_st*)*, {}*, i32 (%struct.rsa_st*, i32, i32, %struct.bignum_st*, %struct.bn_gencb_st*)* }
%struct.bignum_ctx = type opaque
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
%struct.bn_gencb_st = type opaque
%struct.rsa_prime_info_st = type { %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bn_mont_ctx_st* }
%struct.stack_st = type opaque

@.str.1 = private unnamed_addr constant [21 x i8] c"crypto/rsa/rsa_gen.c\00", align 1
@__func__.rsa_multiprime_keygen = private unnamed_addr constant [22 x i8] c"rsa_multiprime_keygen\00", align 1

; Function Attrs: noinline nounwind uwtable
define i32 @RSA_generate_key_ex(%struct.rsa_st* noundef %rsa, i32 noundef %bits, %struct.bignum_st* noundef %e_value, %struct.bn_gencb_st* noundef %cb) local_unnamed_addr #0 {
entry:
  %meth = getelementptr inbounds %struct.rsa_st, %struct.rsa_st* %rsa, i64 0, i32 3
  %0 = load %struct.rsa_meth_st*, %struct.rsa_meth_st** %meth, align 8, !tbaa !4
  %rsa_keygen = getelementptr inbounds %struct.rsa_meth_st, %struct.rsa_meth_st* %0, i64 0, i32 13
  %rsa_keygen1 = bitcast {}** %rsa_keygen to i32 (%struct.rsa_st*, i32, %struct.bignum_st*, %struct.bn_gencb_st*)**
  %1 = load i32 (%struct.rsa_st*, i32, %struct.bignum_st*, %struct.bn_gencb_st*)*, i32 (%struct.rsa_st*, i32, %struct.bignum_st*, %struct.bn_gencb_st*)** %rsa_keygen1, align 8, !tbaa !13
  %cmp.not = icmp eq i32 (%struct.rsa_st*, i32, %struct.bignum_st*, %struct.bn_gencb_st*)* %1, null
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = tail call i32 %1(%struct.rsa_st* noundef nonnull %rsa, i32 noundef %bits, %struct.bignum_st* noundef %e_value, %struct.bn_gencb_st* noundef %cb) #4
  br label %return

if.end:                                           ; preds = %entry
  %call5 = tail call i32 @RSA_generate_multi_prime_key(%struct.rsa_st* noundef nonnull %rsa, i32 noundef %bits, i32 noundef 2, %struct.bignum_st* noundef %e_value, %struct.bn_gencb_st* noundef %cb) #5
  br label %return

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %call, %if.then ], [ %call5, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @RSA_generate_multi_prime_key(%struct.rsa_st* noundef %rsa, i32 noundef %bits, i32 noundef %primes, %struct.bignum_st* noundef %e_value, %struct.bn_gencb_st* noundef %cb) local_unnamed_addr #0 {
entry:
  %meth = getelementptr inbounds %struct.rsa_st, %struct.rsa_st* %rsa, i64 0, i32 3
  %0 = load %struct.rsa_meth_st*, %struct.rsa_meth_st** %meth, align 8, !tbaa !4
  %rsa_multi_prime_keygen = getelementptr inbounds %struct.rsa_meth_st, %struct.rsa_meth_st* %0, i64 0, i32 14
  %1 = load i32 (%struct.rsa_st*, i32, i32, %struct.bignum_st*, %struct.bn_gencb_st*)*, i32 (%struct.rsa_st*, i32, i32, %struct.bignum_st*, %struct.bn_gencb_st*)** %rsa_multi_prime_keygen, align 8, !tbaa !15
  %cmp.not = icmp eq i32 (%struct.rsa_st*, i32, i32, %struct.bignum_st*, %struct.bn_gencb_st*)* %1, null
  br i1 %cmp.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %call = tail call i32 %1(%struct.rsa_st* noundef nonnull %rsa, i32 noundef %bits, i32 noundef %primes, %struct.bignum_st* noundef %e_value, %struct.bn_gencb_st* noundef %cb) #4
  br label %return

if.else:                                          ; preds = %entry
  %rsa_keygen = getelementptr inbounds %struct.rsa_meth_st, %struct.rsa_meth_st* %0, i64 0, i32 13
  %rsa_keygen4 = bitcast {}** %rsa_keygen to i32 (%struct.rsa_st*, i32, %struct.bignum_st*, %struct.bn_gencb_st*)**
  %2 = load i32 (%struct.rsa_st*, i32, %struct.bignum_st*, %struct.bn_gencb_st*)*, i32 (%struct.rsa_st*, i32, %struct.bignum_st*, %struct.bn_gencb_st*)** %rsa_keygen4, align 8, !tbaa !13
  %cmp5.not = icmp eq i32 (%struct.rsa_st*, i32, %struct.bignum_st*, %struct.bn_gencb_st*)* %2, null
  br i1 %cmp5.not, label %if.end14, label %if.then6

if.then6:                                         ; preds = %if.else
  %cmp7 = icmp eq i32 %primes, 2
  br i1 %cmp7, label %if.then8, label %return

if.then8:                                         ; preds = %if.then6
  %call12 = tail call i32 %2(%struct.rsa_st* noundef nonnull %rsa, i32 noundef %bits, %struct.bignum_st* noundef %e_value, %struct.bn_gencb_st* noundef %cb) #4
  br label %return

if.end14:                                         ; preds = %if.else
  %call15 = tail call fastcc i32 @rsa_keygen(%struct.rsa_st* noundef nonnull %rsa, i32 noundef %bits, i32 noundef %primes, %struct.bignum_st* noundef %e_value, %struct.bn_gencb_st* noundef %cb) #5
  br label %return

return:                                           ; preds = %if.then6, %if.end14, %if.then8, %if.then
  %retval.0 = phi i32 [ %call, %if.then ], [ %call12, %if.then8 ], [ %call15, %if.end14 ], [ 0, %if.then6 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @rsa_keygen(%struct.rsa_st* noundef %rsa, i32 noundef %bits, i32 noundef %primes, %struct.bignum_st* noundef %e_value, %struct.bn_gencb_st* noundef %cb) unnamed_addr #0 {
entry:
  %cmp = icmp eq i32 %primes, 2
  %cmp1 = icmp sgt i32 %bits, 2047
  %or.cond = and i1 %cmp1, %cmp
  br i1 %or.cond, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call = tail call i32 @ossl_rsa_sp800_56b_generate_key(%struct.rsa_st* noundef %rsa, i32 noundef %bits, %struct.bignum_st* noundef %e_value, %struct.bn_gencb_st* noundef %cb) #4
  br label %if.end16

if.else:                                          ; preds = %entry
  %call2 = tail call fastcc i32 @rsa_multiprime_keygen(%struct.rsa_st* noundef %rsa, i32 noundef %bits, i32 noundef %primes, %struct.bignum_st* noundef %e_value, %struct.bn_gencb_st* noundef %cb) #5
  br label %if.end16

if.end16:                                         ; preds = %if.then, %if.else
  %ok.0 = phi i32 [ %call, %if.then ], [ %call2, %if.else ]
  ret i32 %ok.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

declare i32 @ossl_rsa_sp800_56b_generate_key(%struct.rsa_st* noundef, i32 noundef, %struct.bignum_st* noundef, %struct.bn_gencb_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @rsa_multiprime_keygen(%struct.rsa_st* nocapture noundef %rsa, i32 noundef %bits, i32 noundef %primes, %struct.bignum_st* noundef %e_value, %struct.bn_gencb_st* noundef %cb) unnamed_addr #0 {
entry:
  %bitsr = alloca [5 x i32], align 16
  %0 = bitcast [5 x i32]* %bitsr to i8*
  call void @llvm.lifetime.start.p0i8(i64 20, i8* nonnull %0) #6
  %cmp = icmp slt i32 %bits, 512
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #4
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 noundef 90, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.rsa_multiprime_keygen, i64 0, i64 0)) #4
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 4, i32 noundef 120, i8* noundef null) #4
  br label %if.end388

if.end:                                           ; preds = %entry
  %cmp1.not = icmp eq %struct.bignum_st* %e_value, null
  br i1 %cmp1.not, label %if.end3, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  %call = tail call i32 @ossl_rsa_check_public_exponent(%struct.bignum_st* noundef nonnull %e_value) #4
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then2, label %if.end3

if.then2:                                         ; preds = %land.lhs.true
  tail call void @ERR_new() #4
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 noundef 96, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.rsa_multiprime_keygen, i64 0, i64 0)) #4
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 4, i32 noundef 178, i8* noundef null) #4
  br label %cleanup389

if.end3:                                          ; preds = %land.lhs.true, %if.end
  %cmp4 = icmp slt i32 %primes, 2
  br i1 %cmp4, label %if.then7, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end3
  %call5 = tail call i32 @ossl_rsa_multip_cap(i32 noundef %bits) #4
  %cmp6 = icmp slt i32 %call5, %primes
  br i1 %cmp6, label %if.then7, label %if.end8

if.then7:                                         ; preds = %lor.lhs.false, %if.end3
  tail call void @ERR_new() #4
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 noundef 102, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.rsa_multiprime_keygen, i64 0, i64 0)) #4
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 4, i32 noundef 165, i8* noundef null) #4
  br label %if.end388

if.end8:                                          ; preds = %lor.lhs.false
  %libctx = getelementptr inbounds %struct.rsa_st, %struct.rsa_st* %rsa, i64 0, i32 1
  %1 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** %libctx, align 8, !tbaa !16
  %call9 = tail call %struct.bignum_ctx* @BN_CTX_new_ex(%struct.ossl_lib_ctx_st* noundef %1) #4
  %cmp10 = icmp eq %struct.bignum_ctx* %call9, null
  br i1 %cmp10, label %if.then387, label %if.end12

if.end12:                                         ; preds = %if.end8
  tail call void @BN_CTX_start(%struct.bignum_ctx* noundef nonnull %call9) #4
  %call13 = tail call %struct.bignum_st* @BN_CTX_get(%struct.bignum_ctx* noundef nonnull %call9) #4
  %call14 = tail call %struct.bignum_st* @BN_CTX_get(%struct.bignum_ctx* noundef nonnull %call9) #4
  %call15 = tail call %struct.bignum_st* @BN_CTX_get(%struct.bignum_ctx* noundef nonnull %call9) #4
  %cmp16 = icmp eq %struct.bignum_st* %call15, null
  br i1 %cmp16, label %if.then387, label %for.body.preheader

for.body.preheader:                               ; preds = %if.end12
  %div659 = udiv i32 %bits, %primes
  %rem660 = urem i32 %bits, %primes
  %2 = zext i32 %rem660 to i64
  %wide.trip.count = zext i32 %primes to i64
  %3 = add nsw i64 %wide.trip.count, -1
  %xtraiter = and i64 %wide.trip.count, 3
  %4 = icmp ult i64 %3, 3
  br i1 %4, label %for.end.unr-lcssa, label %for.body.preheader.new

for.body.preheader.new:                           ; preds = %for.body.preheader
  %unroll_iter = and i64 %wide.trip.count, 4294967292
  br label %for.body

for.body:                                         ; preds = %for.body, %for.body.preheader.new
  %indvars.iv = phi i64 [ 0, %for.body.preheader.new ], [ %indvars.iv.next.3, %for.body ]
  %niter = phi i64 [ 0, %for.body.preheader.new ], [ %niter.next.3, %for.body ]
  %cmp20 = icmp ult i64 %indvars.iv, %2
  %add = zext i1 %cmp20 to i32
  %cond = add nsw i32 %div659, %add
  %arrayidx = getelementptr inbounds [5 x i32], [5 x i32]* %bitsr, i64 0, i64 %indvars.iv
  store i32 %cond, i32* %arrayidx, align 16, !tbaa !17
  %indvars.iv.next = or i64 %indvars.iv, 1
  %cmp20.1 = icmp ult i64 %indvars.iv.next, %2
  %add.1 = zext i1 %cmp20.1 to i32
  %cond.1 = add nsw i32 %div659, %add.1
  %arrayidx.1 = getelementptr inbounds [5 x i32], [5 x i32]* %bitsr, i64 0, i64 %indvars.iv.next
  store i32 %cond.1, i32* %arrayidx.1, align 4, !tbaa !17
  %indvars.iv.next.1 = or i64 %indvars.iv, 2
  %cmp20.2 = icmp ult i64 %indvars.iv.next.1, %2
  %add.2 = zext i1 %cmp20.2 to i32
  %cond.2 = add nsw i32 %div659, %add.2
  %arrayidx.2 = getelementptr inbounds [5 x i32], [5 x i32]* %bitsr, i64 0, i64 %indvars.iv.next.1
  store i32 %cond.2, i32* %arrayidx.2, align 8, !tbaa !17
  %indvars.iv.next.2 = or i64 %indvars.iv, 3
  %cmp20.3 = icmp ult i64 %indvars.iv.next.2, %2
  %add.3 = zext i1 %cmp20.3 to i32
  %cond.3 = add nsw i32 %div659, %add.3
  %arrayidx.3 = getelementptr inbounds [5 x i32], [5 x i32]* %bitsr, i64 0, i64 %indvars.iv.next.2
  store i32 %cond.3, i32* %arrayidx.3, align 4, !tbaa !17
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4
  %niter.next.3 = add i64 %niter, 4
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %for.end.unr-lcssa, label %for.body, !llvm.loop !18

for.end.unr-lcssa:                                ; preds = %for.body, %for.body.preheader
  %indvars.iv.unr = phi i64 [ 0, %for.body.preheader ], [ %indvars.iv.next.3, %for.body ]
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %for.end, label %for.body.epil

for.body.epil:                                    ; preds = %for.end.unr-lcssa, %for.body.epil
  %indvars.iv.epil = phi i64 [ %indvars.iv.next.epil, %for.body.epil ], [ %indvars.iv.unr, %for.end.unr-lcssa ]
  %epil.iter = phi i64 [ %epil.iter.next, %for.body.epil ], [ 0, %for.end.unr-lcssa ]
  %cmp20.epil = icmp ult i64 %indvars.iv.epil, %2
  %add.epil = zext i1 %cmp20.epil to i32
  %cond.epil = add nsw i32 %div659, %add.epil
  %arrayidx.epil = getelementptr inbounds [5 x i32], [5 x i32]* %bitsr, i64 0, i64 %indvars.iv.epil
  store i32 %cond.epil, i32* %arrayidx.epil, align 4, !tbaa !17
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %for.end, label %for.body.epil, !llvm.loop !20

for.end:                                          ; preds = %for.body.epil, %for.end.unr-lcssa
  %dirty_cnt = getelementptr inbounds %struct.rsa_st, %struct.rsa_st* %rsa, i64 0, i32 25
  %5 = load i32, i32* %dirty_cnt, align 8, !tbaa !22
  %inc21 = add nsw i32 %5, 1
  store i32 %inc21, i32* %dirty_cnt, align 8, !tbaa !22
  %n22 = getelementptr inbounds %struct.rsa_st, %struct.rsa_st* %rsa, i64 0, i32 5
  %6 = load %struct.bignum_st*, %struct.bignum_st** %n22, align 8, !tbaa !23
  %tobool23.not = icmp eq %struct.bignum_st* %6, null
  br i1 %tobool23.not, label %land.lhs.true24, label %if.end29

land.lhs.true24:                                  ; preds = %for.end
  %call25 = tail call %struct.bignum_st* @BN_new() #4
  store %struct.bignum_st* %call25, %struct.bignum_st** %n22, align 8, !tbaa !23
  %cmp27 = icmp eq %struct.bignum_st* %call25, null
  br i1 %cmp27, label %if.then387, label %if.end29

if.end29:                                         ; preds = %land.lhs.true24, %for.end
  %d = getelementptr inbounds %struct.rsa_st, %struct.rsa_st* %rsa, i64 0, i32 7
  %7 = load %struct.bignum_st*, %struct.bignum_st** %d, align 8, !tbaa !24
  %tobool30.not = icmp eq %struct.bignum_st* %7, null
  br i1 %tobool30.not, label %land.lhs.true31, label %if.end36

land.lhs.true31:                                  ; preds = %if.end29
  %call32 = tail call %struct.bignum_st* @BN_secure_new() #4
  store %struct.bignum_st* %call32, %struct.bignum_st** %d, align 8, !tbaa !24
  %cmp34 = icmp eq %struct.bignum_st* %call32, null
  br i1 %cmp34, label %if.then387, label %if.end36

if.end36:                                         ; preds = %land.lhs.true31, %if.end29
  %8 = phi %struct.bignum_st* [ %call32, %land.lhs.true31 ], [ %7, %if.end29 ]
  tail call void @BN_set_flags(%struct.bignum_st* noundef nonnull %8, i32 noundef 4) #4
  %e = getelementptr inbounds %struct.rsa_st, %struct.rsa_st* %rsa, i64 0, i32 6
  %9 = load %struct.bignum_st*, %struct.bignum_st** %e, align 8, !tbaa !25
  %tobool38.not = icmp eq %struct.bignum_st* %9, null
  br i1 %tobool38.not, label %land.lhs.true39, label %if.end44

land.lhs.true39:                                  ; preds = %if.end36
  %call40 = tail call %struct.bignum_st* @BN_new() #4
  store %struct.bignum_st* %call40, %struct.bignum_st** %e, align 8, !tbaa !25
  %cmp42 = icmp eq %struct.bignum_st* %call40, null
  br i1 %cmp42, label %if.then387, label %if.end44

if.end44:                                         ; preds = %land.lhs.true39, %if.end36
  %p = getelementptr inbounds %struct.rsa_st, %struct.rsa_st* %rsa, i64 0, i32 8
  %10 = load %struct.bignum_st*, %struct.bignum_st** %p, align 8, !tbaa !26
  %tobool45.not = icmp eq %struct.bignum_st* %10, null
  br i1 %tobool45.not, label %land.lhs.true46, label %if.end51

land.lhs.true46:                                  ; preds = %if.end44
  %call47 = tail call %struct.bignum_st* @BN_secure_new() #4
  store %struct.bignum_st* %call47, %struct.bignum_st** %p, align 8, !tbaa !26
  %cmp49 = icmp eq %struct.bignum_st* %call47, null
  br i1 %cmp49, label %if.then387, label %if.end51

if.end51:                                         ; preds = %land.lhs.true46, %if.end44
  %11 = phi %struct.bignum_st* [ %call47, %land.lhs.true46 ], [ %10, %if.end44 ]
  tail call void @BN_set_flags(%struct.bignum_st* noundef nonnull %11, i32 noundef 4) #4
  %q = getelementptr inbounds %struct.rsa_st, %struct.rsa_st* %rsa, i64 0, i32 9
  %12 = load %struct.bignum_st*, %struct.bignum_st** %q, align 8, !tbaa !27
  %tobool53.not = icmp eq %struct.bignum_st* %12, null
  br i1 %tobool53.not, label %land.lhs.true54, label %if.end59

land.lhs.true54:                                  ; preds = %if.end51
  %call55 = tail call %struct.bignum_st* @BN_secure_new() #4
  store %struct.bignum_st* %call55, %struct.bignum_st** %q, align 8, !tbaa !27
  %cmp57 = icmp eq %struct.bignum_st* %call55, null
  br i1 %cmp57, label %if.then387, label %if.end59

if.end59:                                         ; preds = %land.lhs.true54, %if.end51
  %13 = phi %struct.bignum_st* [ %call55, %land.lhs.true54 ], [ %12, %if.end51 ]
  tail call void @BN_set_flags(%struct.bignum_st* noundef nonnull %13, i32 noundef 4) #4
  %dmp1 = getelementptr inbounds %struct.rsa_st, %struct.rsa_st* %rsa, i64 0, i32 10
  %14 = load %struct.bignum_st*, %struct.bignum_st** %dmp1, align 8, !tbaa !28
  %tobool61.not = icmp eq %struct.bignum_st* %14, null
  br i1 %tobool61.not, label %land.lhs.true62, label %if.end67

land.lhs.true62:                                  ; preds = %if.end59
  %call63 = tail call %struct.bignum_st* @BN_secure_new() #4
  store %struct.bignum_st* %call63, %struct.bignum_st** %dmp1, align 8, !tbaa !28
  %cmp65 = icmp eq %struct.bignum_st* %call63, null
  br i1 %cmp65, label %if.then387, label %if.end67

if.end67:                                         ; preds = %land.lhs.true62, %if.end59
  %15 = phi %struct.bignum_st* [ %call63, %land.lhs.true62 ], [ %14, %if.end59 ]
  tail call void @BN_set_flags(%struct.bignum_st* noundef nonnull %15, i32 noundef 4) #4
  %dmq1 = getelementptr inbounds %struct.rsa_st, %struct.rsa_st* %rsa, i64 0, i32 11
  %16 = load %struct.bignum_st*, %struct.bignum_st** %dmq1, align 8, !tbaa !29
  %tobool69.not = icmp eq %struct.bignum_st* %16, null
  br i1 %tobool69.not, label %land.lhs.true70, label %if.end75

land.lhs.true70:                                  ; preds = %if.end67
  %call71 = tail call %struct.bignum_st* @BN_secure_new() #4
  store %struct.bignum_st* %call71, %struct.bignum_st** %dmq1, align 8, !tbaa !29
  %cmp73 = icmp eq %struct.bignum_st* %call71, null
  br i1 %cmp73, label %if.then387, label %if.end75

if.end75:                                         ; preds = %land.lhs.true70, %if.end67
  %17 = phi %struct.bignum_st* [ %call71, %land.lhs.true70 ], [ %16, %if.end67 ]
  tail call void @BN_set_flags(%struct.bignum_st* noundef nonnull %17, i32 noundef 4) #4
  %iqmp = getelementptr inbounds %struct.rsa_st, %struct.rsa_st* %rsa, i64 0, i32 12
  %18 = load %struct.bignum_st*, %struct.bignum_st** %iqmp, align 8, !tbaa !30
  %tobool77.not = icmp eq %struct.bignum_st* %18, null
  br i1 %tobool77.not, label %land.lhs.true78, label %if.end83

land.lhs.true78:                                  ; preds = %if.end75
  %call79 = tail call %struct.bignum_st* @BN_secure_new() #4
  store %struct.bignum_st* %call79, %struct.bignum_st** %iqmp, align 8, !tbaa !30
  %cmp81 = icmp eq %struct.bignum_st* %call79, null
  br i1 %cmp81, label %if.then387, label %if.end83

if.end83:                                         ; preds = %land.lhs.true78, %if.end75
  %19 = phi %struct.bignum_st* [ %call79, %land.lhs.true78 ], [ %18, %if.end75 ]
  tail call void @BN_set_flags(%struct.bignum_st* noundef nonnull %19, i32 noundef 4) #4
  %cmp85 = icmp sgt i32 %primes, 2
  br i1 %cmp85, label %if.then86, label %if.end108

if.then86:                                        ; preds = %if.end83
  %version = getelementptr inbounds %struct.rsa_st, %struct.rsa_st* %rsa, i64 0, i32 2
  store i32 1, i32* %version, align 8, !tbaa !31
  %sub = add nsw i32 %primes, -2
  %call87 = tail call fastcc %struct.stack_st_RSA_PRIME_INFO* @sk_RSA_PRIME_INFO_new_reserve(i32 noundef %sub) #5
  %cmp88 = icmp eq %struct.stack_st_RSA_PRIME_INFO* %call87, null
  br i1 %cmp88, label %if.then387, label %if.end90

if.end90:                                         ; preds = %if.then86
  %prime_infos91 = getelementptr inbounds %struct.rsa_st, %struct.rsa_st* %rsa, i64 0, i32 15
  %20 = load %struct.stack_st_RSA_PRIME_INFO*, %struct.stack_st_RSA_PRIME_INFO** %prime_infos91, align 8, !tbaa !32
  %cmp92.not = icmp eq %struct.stack_st_RSA_PRIME_INFO* %20, null
  br i1 %cmp92.not, label %for.body99.preheader, label %if.then93

if.then93:                                        ; preds = %if.end90
  tail call fastcc void @sk_RSA_PRIME_INFO_pop_free(%struct.stack_st_RSA_PRIME_INFO* noundef nonnull %20) #5
  br label %for.body99.preheader

for.body99.preheader:                             ; preds = %if.end90, %if.then93
  store %struct.stack_st_RSA_PRIME_INFO* %call87, %struct.stack_st_RSA_PRIME_INFO** %prime_infos91, align 8, !tbaa !32
  br label %for.body99

for.body99:                                       ; preds = %for.body99.preheader, %if.end103
  %i.1688 = phi i32 [ %inc106, %if.end103 ], [ 2, %for.body99.preheader ]
  %call100 = tail call %struct.rsa_prime_info_st* @ossl_rsa_multip_info_new() #4
  %cmp101 = icmp eq %struct.rsa_prime_info_st* %call100, null
  br i1 %cmp101, label %if.then387, label %if.end103

if.end103:                                        ; preds = %for.body99
  tail call fastcc void @sk_RSA_PRIME_INFO_push(%struct.stack_st_RSA_PRIME_INFO* noundef nonnull %call87, %struct.rsa_prime_info_st* noundef nonnull %call100) #5
  %inc106 = add nuw nsw i32 %i.1688, 1
  %exitcond736.not = icmp eq i32 %inc106, %primes
  br i1 %exitcond736.not, label %if.end108, label %for.body99, !llvm.loop !33

if.end108:                                        ; preds = %if.end103, %if.end83
  %pinfo.1 = phi %struct.rsa_prime_info_st* [ null, %if.end83 ], [ %call100, %if.end103 ]
  %prime_infos.0 = phi %struct.stack_st_RSA_PRIME_INFO* [ null, %if.end83 ], [ %call87, %if.end103 ]
  %21 = load %struct.bignum_st*, %struct.bignum_st** %e, align 8, !tbaa !25
  %call110 = tail call %struct.bignum_st* @BN_copy(%struct.bignum_st* noundef %21, %struct.bignum_st* noundef %e_value) #4
  %cmp111 = icmp eq %struct.bignum_st* %call110, null
  br i1 %cmp111, label %if.then387, label %for.body116.lr.ph

for.body116.lr.ph:                                ; preds = %if.end108
  %cmp233 = icmp sgt i32 %primes, 4
  br label %for.body116

for.body116:                                      ; preds = %for.body116.lr.ph, %for.inc263
  %pinfo.2707 = phi %struct.rsa_prime_info_st* [ %pinfo.1, %for.body116.lr.ph ], [ %pinfo.3, %for.inc263 ]
  %i.2706 = phi i32 [ 0, %for.body116.lr.ph ], [ %inc264, %for.inc263 ]
  %bitse.0705 = phi i32 [ 0, %for.body116.lr.ph ], [ %bitse.3, %for.inc263 ]
  %n.0704 = phi i32 [ 0, %for.body116.lr.ph ], [ %n.3, %for.inc263 ]
  switch i32 %i.2706, label %if.else123 [
    i32 0, label %if.end127
    i32 1, label %if.then121
  ]

if.then121:                                       ; preds = %for.body116
  br label %if.end127

if.else123:                                       ; preds = %for.body116
  %sub124 = add nsw i32 %i.2706, -2
  %call125 = tail call fastcc %struct.rsa_prime_info_st* @sk_RSA_PRIME_INFO_value(%struct.stack_st_RSA_PRIME_INFO* noundef %prime_infos.0, i32 noundef %sub124) #5
  %r = getelementptr inbounds %struct.rsa_prime_info_st, %struct.rsa_prime_info_st* %call125, i64 0, i32 0
  br label %if.end127

if.end127:                                        ; preds = %for.body116, %if.then121, %if.else123
  %prime.0.in = phi %struct.bignum_st** [ %q, %if.then121 ], [ %r, %if.else123 ], [ %p, %for.body116 ]
  %pinfo.3 = phi %struct.rsa_prime_info_st* [ %pinfo.2707, %if.then121 ], [ %call125, %if.else123 ], [ %pinfo.2707, %for.body116 ]
  %prime.0 = load %struct.bignum_st*, %struct.bignum_st** %prime.0.in, align 8, !tbaa !34
  tail call void @BN_set_flags(%struct.bignum_st* noundef %prime.0, i32 noundef 4) #4
  %idxprom129 = sext i32 %i.2706 to i64
  %arrayidx130 = getelementptr inbounds [5 x i32], [5 x i32]* %bitsr, i64 0, i64 %idxprom129
  %22 = load i32, i32* %arrayidx130, align 4, !tbaa !17
  %cmp137689 = icmp sgt i32 %i.2706, 0
  %add191 = add nsw i32 %22, %bitse.0705
  %sub215 = add nsw i32 %add191, -4
  br label %for.cond128

for.cond128:                                      ; preds = %if.then179, %if.end127
  %n.1 = phi i32 [ %n.0704, %if.end127 ], [ %inc183, %if.then179 ]
  %adj.0 = phi i32 [ 0, %if.end127 ], [ %adj.1.ph700, %if.then179 ]
  %retries.0 = phi i32 [ 0, %if.end127 ], [ %retries.1.ph701, %if.then179 ]
  %add131696 = add nsw i32 %22, %adj.0
  %call132694697 = tail call i32 @BN_generate_prime_ex2(%struct.bignum_st* noundef %prime.0, i32 noundef %add131696, i32 noundef 0, %struct.bignum_st* noundef null, %struct.bignum_st* noundef null, %struct.bn_gencb_st* noundef %cb, %struct.bignum_ctx* noundef nonnull %call9) #4
  %tobool133.not695698 = icmp eq i32 %call132694697, 0
  br i1 %tobool133.not695698, label %if.then387, label %for.cond136.preheader.lr.ph

for.cond136.preheader.lr.ph:                      ; preds = %for.cond128, %if.end244
  %add131702 = phi i32 [ %add131, %if.end244 ], [ %add131696, %for.cond128 ]
  %retries.1.ph701 = phi i32 [ %inc245, %if.end244 ], [ %retries.0, %for.cond128 ]
  %adj.1.ph700 = phi i32 [ %adj.2, %if.end244 ], [ %adj.0, %for.cond128 ]
  %n.2.ph699 = phi i32 [ %inc228, %if.end244 ], [ %n.1, %for.cond128 ]
  br i1 %cmp137689, label %for.body138, label %cleanup.cont161

redo.loopexit:                                    ; preds = %if.end151
  %call132 = tail call i32 @BN_generate_prime_ex2(%struct.bignum_st* noundef %prime.0, i32 noundef %add131702, i32 noundef 0, %struct.bignum_st* noundef null, %struct.bignum_st* noundef null, %struct.bn_gencb_st* noundef %cb, %struct.bignum_ctx* noundef nonnull %call9) #4
  %tobool133.not = icmp eq i32 %call132, 0
  br i1 %tobool133.not, label %if.then387, label %for.body138.backedge

for.cond136:                                      ; preds = %if.end151
  %exitcond737.not = icmp eq i32 %inc157, %i.2706
  br i1 %exitcond737.not, label %cleanup.cont161, label %for.body138.backedge

for.body138.backedge:                             ; preds = %for.cond136, %redo.loopexit
  %j.0690.be = phi i32 [ %inc157, %for.cond136 ], [ 0, %redo.loopexit ]
  br label %for.body138, !llvm.loop !35

for.body138:                                      ; preds = %for.cond136.preheader.lr.ph, %for.body138.backedge
  %j.0690 = phi i32 [ %j.0690.be, %for.body138.backedge ], [ 0, %for.cond136.preheader.lr.ph ]
  switch i32 %j.0690, label %if.else146 [
    i32 0, label %if.end151
    i32 1, label %if.then144
  ]

if.then144:                                       ; preds = %for.body138
  br label %if.end151

if.else146:                                       ; preds = %for.body138
  %sub147 = add nsw i32 %j.0690, -2
  %call148 = tail call fastcc %struct.rsa_prime_info_st* @sk_RSA_PRIME_INFO_value(%struct.stack_st_RSA_PRIME_INFO* noundef %prime_infos.0, i32 noundef %sub147) #5
  %r149 = getelementptr inbounds %struct.rsa_prime_info_st, %struct.rsa_prime_info_st* %call148, i64 0, i32 0
  br label %if.end151

if.end151:                                        ; preds = %for.body138, %if.then144, %if.else146
  %prev_prime.0.in = phi %struct.bignum_st** [ %q, %if.then144 ], [ %r149, %if.else146 ], [ %p, %for.body138 ]
  %prev_prime.0 = load %struct.bignum_st*, %struct.bignum_st** %prev_prime.0.in, align 8, !tbaa !34
  %call152 = tail call i32 @BN_cmp(%struct.bignum_st* noundef %prime.0, %struct.bignum_st* noundef %prev_prime.0) #4
  %tobool153.not = icmp eq i32 %call152, 0
  %inc157 = add nuw nsw i32 %j.0690, 1
  br i1 %tobool153.not, label %redo.loopexit, label %for.cond136

cleanup.cont161:                                  ; preds = %for.cond136, %for.cond136.preheader.lr.ph
  %call162 = tail call %struct.bignum_st* @BN_value_one() #4
  %call163 = tail call i32 @BN_sub(%struct.bignum_st* noundef nonnull %call15, %struct.bignum_st* noundef %prime.0, %struct.bignum_st* noundef %call162) #4
  %tobool164.not = icmp eq i32 %call163, 0
  br i1 %tobool164.not, label %if.then387, label %if.end166

if.end166:                                        ; preds = %cleanup.cont161
  %call167 = tail call i32 @ERR_set_mark() #4
  tail call void @BN_set_flags(%struct.bignum_st* noundef nonnull %call15, i32 noundef 4) #4
  %23 = load %struct.bignum_st*, %struct.bignum_st** %e, align 8, !tbaa !25
  %call169 = tail call %struct.bignum_st* @BN_mod_inverse(%struct.bignum_st* noundef %call14, %struct.bignum_st* noundef nonnull %call15, %struct.bignum_st* noundef %23, %struct.bignum_ctx* noundef nonnull %call9) #4
  %cmp170.not = icmp eq %struct.bignum_st* %call169, null
  br i1 %cmp170.not, label %if.end172, label %for.end188

if.end172:                                        ; preds = %if.end166
  %call173 = tail call i64 @ERR_peek_last_error() #4
  %call174 = tail call fastcc i32 @ERR_GET_LIB(i64 noundef %call173) #5
  %cmp175 = icmp eq i32 %call174, 3
  br i1 %cmp175, label %land.lhs.true176, label %if.then387

land.lhs.true176:                                 ; preds = %if.end172
  %call177 = tail call fastcc i32 @ERR_GET_REASON(i64 noundef %call173) #5
  %cmp178 = icmp eq i32 %call177, 108
  br i1 %cmp178, label %if.then179, label %if.then387

if.then179:                                       ; preds = %land.lhs.true176
  %call180 = tail call i32 @ERR_pop_to_mark() #4
  %inc183 = add nsw i32 %n.2.ph699, 1
  %call184 = tail call i32 @BN_GENCB_call(%struct.bn_gencb_st* noundef %cb, i32 noundef 2, i32 noundef %n.2.ph699) #4
  %tobool185.not = icmp eq i32 %call184, 0
  br i1 %tobool185.not, label %if.then387, label %for.cond128

for.end188:                                       ; preds = %if.end166
  switch i32 %i.2706, label %if.then202 [
    i32 1, label %if.then193
    i32 0, label %if.else208
  ]

if.then193:                                       ; preds = %for.end188
  %24 = load %struct.bignum_st*, %struct.bignum_st** %p, align 8, !tbaa !26
  %25 = load %struct.bignum_st*, %struct.bignum_st** %q, align 8, !tbaa !27
  %call196 = tail call i32 @BN_mul(%struct.bignum_st* noundef %call14, %struct.bignum_st* noundef %24, %struct.bignum_st* noundef %25, %struct.bignum_ctx* noundef nonnull %call9) #4
  %tobool197.not = icmp eq i32 %call196, 0
  br i1 %tobool197.not, label %if.then387, label %if.end214

if.then202:                                       ; preds = %for.end188
  %26 = load %struct.bignum_st*, %struct.bignum_st** %n22, align 8, !tbaa !23
  %call204 = tail call i32 @BN_mul(%struct.bignum_st* noundef %call14, %struct.bignum_st* noundef %26, %struct.bignum_st* noundef %prime.0, %struct.bignum_ctx* noundef nonnull %call9) #4
  %tobool205.not = icmp eq i32 %call204, 0
  br i1 %tobool205.not, label %if.then387, label %if.end214

if.else208:                                       ; preds = %for.end188
  %call209 = tail call i32 @BN_GENCB_call(%struct.bn_gencb_st* noundef %cb, i32 noundef 3, i32 noundef 0) #4
  %tobool210.not = icmp eq i32 %call209, 0
  br i1 %tobool210.not, label %if.then387, label %for.inc263

if.end214:                                        ; preds = %if.then202, %if.then193
  %call216 = tail call i32 @BN_rshift(%struct.bignum_st* noundef nonnull %call15, %struct.bignum_st* noundef %call14, i32 noundef %sub215) #4
  %tobool217.not = icmp eq i32 %call216, 0
  br i1 %tobool217.not, label %if.then387, label %if.end219

if.end219:                                        ; preds = %if.end214
  %call220 = tail call i64 @BN_get_word(%struct.bignum_st* noundef nonnull %call15) #4
  %cmp221 = icmp ult i64 %call220, 9
  %27 = add i64 %call220, -16
  %28 = icmp ult i64 %27, -7
  br i1 %28, label %if.then224, label %if.end246

if.then224:                                       ; preds = %if.end219
  %inc228 = add nsw i32 %n.2.ph699, 1
  %call229 = tail call i32 @BN_GENCB_call(%struct.bn_gencb_st* noundef %cb, i32 noundef 2, i32 noundef %n.2.ph699) #4
  %tobool230.not = icmp eq i32 %call229, 0
  br i1 %tobool230.not, label %if.then387, label %if.end232

if.end232:                                        ; preds = %if.then224
  br i1 %cmp233, label %if.then234, label %if.else240

if.then234:                                       ; preds = %if.end232
  br i1 %cmp221, label %if.then236, label %if.else238

if.then236:                                       ; preds = %if.then234
  %inc237 = add nsw i32 %adj.1.ph700, 1
  br label %if.end244

if.else238:                                       ; preds = %if.then234
  %dec = add nsw i32 %adj.1.ph700, -1
  br label %if.end244

if.else240:                                       ; preds = %if.end232
  %cmp241 = icmp eq i32 %retries.1.ph701, 4
  br i1 %cmp241, label %for.inc263, label %if.end244

if.end244:                                        ; preds = %if.else240, %if.then236, %if.else238
  %adj.2 = phi i32 [ %inc237, %if.then236 ], [ %dec, %if.else238 ], [ %adj.1.ph700, %if.else240 ]
  %inc245 = add nsw i32 %retries.1.ph701, 1
  %add131 = add nsw i32 %22, %adj.2
  %call132694 = tail call i32 @BN_generate_prime_ex2(%struct.bignum_st* noundef %prime.0, i32 noundef %add131, i32 noundef 0, %struct.bignum_st* noundef null, %struct.bignum_st* noundef null, %struct.bn_gencb_st* noundef %cb, %struct.bignum_ctx* noundef nonnull %call9) #4
  %tobool133.not695 = icmp eq i32 %call132694, 0
  br i1 %tobool133.not695, label %if.then387, label %for.cond136.preheader.lr.ph

if.end246:                                        ; preds = %if.end219
  %cmp247 = icmp sgt i32 %i.2706, 1
  br i1 %cmp247, label %land.lhs.true248, label %if.end253

land.lhs.true248:                                 ; preds = %if.end246
  %pp = getelementptr inbounds %struct.rsa_prime_info_st, %struct.rsa_prime_info_st* %pinfo.3, i64 0, i32 3
  %29 = load %struct.bignum_st*, %struct.bignum_st** %pp, align 8, !tbaa !36
  %30 = load %struct.bignum_st*, %struct.bignum_st** %n22, align 8, !tbaa !23
  %call250 = tail call %struct.bignum_st* @BN_copy(%struct.bignum_st* noundef %29, %struct.bignum_st* noundef %30) #4
  %cmp251 = icmp eq %struct.bignum_st* %call250, null
  br i1 %cmp251, label %if.then387, label %if.end253

if.end253:                                        ; preds = %land.lhs.true248, %if.end246
  %31 = load %struct.bignum_st*, %struct.bignum_st** %n22, align 8, !tbaa !23
  %call255 = tail call %struct.bignum_st* @BN_copy(%struct.bignum_st* noundef %31, %struct.bignum_st* noundef %call14) #4
  %cmp256 = icmp eq %struct.bignum_st* %call255, null
  br i1 %cmp256, label %if.then387, label %if.end258

if.end258:                                        ; preds = %if.end253
  %call259 = tail call i32 @BN_GENCB_call(%struct.bn_gencb_st* noundef %cb, i32 noundef 3, i32 noundef %i.2706) #4
  %tobool260.not = icmp eq i32 %call259, 0
  br i1 %tobool260.not, label %if.then387, label %for.inc263

for.inc263:                                       ; preds = %if.else240, %if.end258, %if.else208
  %n.3 = phi i32 [ %n.2.ph699, %if.end258 ], [ %n.1, %if.else208 ], [ %inc228, %if.else240 ]
  %bitse.3 = phi i32 [ %add191, %if.end258 ], [ %add191, %if.else208 ], [ 0, %if.else240 ]
  %i.3 = phi i32 [ %i.2706, %if.end258 ], [ 0, %if.else208 ], [ -1, %if.else240 ]
  %inc264 = add nsw i32 %i.3, 1
  %cmp115 = icmp slt i32 %inc264, %primes
  br i1 %cmp115, label %for.body116, label %for.end265, !llvm.loop !38

for.end265:                                       ; preds = %for.inc263
  %32 = load %struct.bignum_st*, %struct.bignum_st** %p, align 8, !tbaa !26
  %33 = load %struct.bignum_st*, %struct.bignum_st** %q, align 8, !tbaa !27
  %call268 = tail call i32 @BN_cmp(%struct.bignum_st* noundef %32, %struct.bignum_st* noundef %33) #4
  %cmp269 = icmp slt i32 %call268, 0
  %34 = load %struct.bignum_st*, %struct.bignum_st** %p, align 8, !tbaa !26
  br i1 %cmp269, label %if.then270, label %if.end275

if.then270:                                       ; preds = %for.end265
  %35 = load %struct.bignum_st*, %struct.bignum_st** %q, align 8, !tbaa !27
  store %struct.bignum_st* %35, %struct.bignum_st** %p, align 8, !tbaa !26
  store %struct.bignum_st* %34, %struct.bignum_st** %q, align 8, !tbaa !27
  br label %if.end275

if.end275:                                        ; preds = %for.end265, %if.then270
  %36 = phi %struct.bignum_st* [ %35, %if.then270 ], [ %34, %for.end265 ]
  %call277 = tail call %struct.bignum_st* @BN_value_one() #4
  %call278 = tail call i32 @BN_sub(%struct.bignum_st* noundef %call14, %struct.bignum_st* noundef %36, %struct.bignum_st* noundef %call277) #4
  %tobool279.not = icmp eq i32 %call278, 0
  br i1 %tobool279.not, label %if.then387, label %if.end281

if.end281:                                        ; preds = %if.end275
  %37 = load %struct.bignum_st*, %struct.bignum_st** %q, align 8, !tbaa !27
  %call283 = tail call %struct.bignum_st* @BN_value_one() #4
  %call284 = tail call i32 @BN_sub(%struct.bignum_st* noundef nonnull %call15, %struct.bignum_st* noundef %37, %struct.bignum_st* noundef %call283) #4
  %tobool285.not = icmp eq i32 %call284, 0
  br i1 %tobool285.not, label %if.then387, label %if.end287

if.end287:                                        ; preds = %if.end281
  %call288 = tail call i32 @BN_mul(%struct.bignum_st* noundef %call13, %struct.bignum_st* noundef %call14, %struct.bignum_st* noundef nonnull %call15, %struct.bignum_ctx* noundef nonnull %call9) #4
  %tobool289.not = icmp eq i32 %call288, 0
  br i1 %tobool289.not, label %if.then387, label %for.cond292.preheader

for.cond292.preheader:                            ; preds = %if.end287
  br i1 %cmp85, label %for.body294, label %for.end311

for.cond292:                                      ; preds = %if.end303
  %exitcond738.not = icmp eq i32 %inc310, %primes
  br i1 %exitcond738.not, label %for.end311, label %for.body294, !llvm.loop !39

for.body294:                                      ; preds = %for.cond292.preheader, %for.cond292
  %i.4709 = phi i32 [ %inc310, %for.cond292 ], [ 2, %for.cond292.preheader ]
  %sub295 = add nsw i32 %i.4709, -2
  %call296 = tail call fastcc %struct.rsa_prime_info_st* @sk_RSA_PRIME_INFO_value(%struct.stack_st_RSA_PRIME_INFO* noundef %prime_infos.0, i32 noundef %sub295) #5
  %d297 = getelementptr inbounds %struct.rsa_prime_info_st, %struct.rsa_prime_info_st* %call296, i64 0, i32 1
  %38 = load %struct.bignum_st*, %struct.bignum_st** %d297, align 8, !tbaa !40
  %r298 = getelementptr inbounds %struct.rsa_prime_info_st, %struct.rsa_prime_info_st* %call296, i64 0, i32 0
  %39 = load %struct.bignum_st*, %struct.bignum_st** %r298, align 8, !tbaa !41
  %call299 = tail call %struct.bignum_st* @BN_value_one() #4
  %call300 = tail call i32 @BN_sub(%struct.bignum_st* noundef %38, %struct.bignum_st* noundef %39, %struct.bignum_st* noundef %call299) #4
  %tobool301.not = icmp eq i32 %call300, 0
  br i1 %tobool301.not, label %if.then387, label %if.end303

if.end303:                                        ; preds = %for.body294
  %40 = load %struct.bignum_st*, %struct.bignum_st** %d297, align 8, !tbaa !40
  %call305 = tail call i32 @BN_mul(%struct.bignum_st* noundef %call13, %struct.bignum_st* noundef %call13, %struct.bignum_st* noundef %40, %struct.bignum_ctx* noundef nonnull %call9) #4
  %tobool306.not = icmp eq i32 %call305, 0
  %inc310 = add nuw nsw i32 %i.4709, 1
  br i1 %tobool306.not, label %if.then387, label %for.cond292

for.end311:                                       ; preds = %for.cond292, %for.cond292.preheader
  %call312 = tail call %struct.bignum_st* @BN_new() #4
  %cmp313 = icmp eq %struct.bignum_st* %call312, null
  br i1 %cmp313, label %if.then387, label %if.end315

if.end315:                                        ; preds = %for.end311
  tail call void @BN_with_flags(%struct.bignum_st* noundef nonnull %call312, %struct.bignum_st* noundef %call13, i32 noundef 4) #4
  %41 = load %struct.bignum_st*, %struct.bignum_st** %d, align 8, !tbaa !24
  %42 = load %struct.bignum_st*, %struct.bignum_st** %e, align 8, !tbaa !25
  %call318 = tail call %struct.bignum_st* @BN_mod_inverse(%struct.bignum_st* noundef %41, %struct.bignum_st* noundef %42, %struct.bignum_st* noundef nonnull %call312, %struct.bignum_ctx* noundef nonnull %call9) #4
  %tobool319.not = icmp eq %struct.bignum_st* %call318, null
  tail call void @BN_free(%struct.bignum_st* noundef nonnull %call312) #4
  br i1 %tobool319.not, label %if.then387, label %cleanup.cont324

cleanup.cont324:                                  ; preds = %if.end315
  %call326 = tail call %struct.bignum_st* @BN_new() #4
  %cmp327 = icmp eq %struct.bignum_st* %call326, null
  br i1 %cmp327, label %if.then387, label %if.end329

if.end329:                                        ; preds = %cleanup.cont324
  %43 = load %struct.bignum_st*, %struct.bignum_st** %d, align 8, !tbaa !24
  tail call void @BN_with_flags(%struct.bignum_st* noundef nonnull %call326, %struct.bignum_st* noundef %43, i32 noundef 4) #4
  %44 = load %struct.bignum_st*, %struct.bignum_st** %dmp1, align 8, !tbaa !28
  %call332 = tail call i32 @BN_div(%struct.bignum_st* noundef null, %struct.bignum_st* noundef %44, %struct.bignum_st* noundef nonnull %call326, %struct.bignum_st* noundef %call14, %struct.bignum_ctx* noundef nonnull %call9) #4
  %tobool333.not = icmp eq i32 %call332, 0
  br i1 %tobool333.not, label %if.then387.sink.split, label %lor.lhs.false334

lor.lhs.false334:                                 ; preds = %if.end329
  %45 = load %struct.bignum_st*, %struct.bignum_st** %dmq1, align 8, !tbaa !29
  %call336 = tail call i32 @BN_div(%struct.bignum_st* noundef null, %struct.bignum_st* noundef %45, %struct.bignum_st* noundef nonnull %call326, %struct.bignum_st* noundef nonnull %call15, %struct.bignum_ctx* noundef nonnull %call9) #4
  %tobool337.not = icmp eq i32 %call336, 0
  br i1 %tobool337.not, label %if.then387.sink.split, label %for.cond340.preheader

for.cond340.preheader:                            ; preds = %lor.lhs.false334
  br i1 %cmp85, label %for.body342, label %cleanup.cont356

for.cond340:                                      ; preds = %for.body342
  %exitcond739.not = icmp eq i32 %inc352, %primes
  br i1 %exitcond739.not, label %cleanup.cont356, label %for.body342, !llvm.loop !42

for.body342:                                      ; preds = %for.cond340.preheader, %for.cond340
  %i.5711 = phi i32 [ %inc352, %for.cond340 ], [ 2, %for.cond340.preheader ]
  %sub343 = add nsw i32 %i.5711, -2
  %call344 = tail call fastcc %struct.rsa_prime_info_st* @sk_RSA_PRIME_INFO_value(%struct.stack_st_RSA_PRIME_INFO* noundef %prime_infos.0, i32 noundef %sub343) #5
  %d345 = getelementptr inbounds %struct.rsa_prime_info_st, %struct.rsa_prime_info_st* %call344, i64 0, i32 1
  %46 = load %struct.bignum_st*, %struct.bignum_st** %d345, align 8, !tbaa !40
  %call347 = tail call i32 @BN_div(%struct.bignum_st* noundef null, %struct.bignum_st* noundef %46, %struct.bignum_st* noundef nonnull %call326, %struct.bignum_st* noundef %46, %struct.bignum_ctx* noundef nonnull %call9) #4
  %tobool348.not = icmp eq i32 %call347, 0
  %inc352 = add nuw nsw i32 %i.5711, 1
  br i1 %tobool348.not, label %if.then387.sink.split, label %for.cond340

cleanup.cont356:                                  ; preds = %for.cond340, %for.cond340.preheader
  tail call void @BN_free(%struct.bignum_st* noundef nonnull %call326) #4
  %call358 = tail call %struct.bignum_st* @BN_new() #4
  %cmp359 = icmp eq %struct.bignum_st* %call358, null
  br i1 %cmp359, label %if.then387, label %if.end361

if.end361:                                        ; preds = %cleanup.cont356
  %47 = load %struct.bignum_st*, %struct.bignum_st** %p, align 8, !tbaa !26
  tail call void @BN_with_flags(%struct.bignum_st* noundef nonnull %call358, %struct.bignum_st* noundef %47, i32 noundef 4) #4
  %48 = load %struct.bignum_st*, %struct.bignum_st** %iqmp, align 8, !tbaa !30
  %49 = load %struct.bignum_st*, %struct.bignum_st** %q, align 8, !tbaa !27
  %call365 = tail call %struct.bignum_st* @BN_mod_inverse(%struct.bignum_st* noundef %48, %struct.bignum_st* noundef %49, %struct.bignum_st* noundef nonnull %call358, %struct.bignum_ctx* noundef nonnull %call9) #4
  %tobool366.not = icmp eq %struct.bignum_st* %call365, null
  br i1 %tobool366.not, label %if.then387.sink.split, label %for.cond369.preheader

for.cond369.preheader:                            ; preds = %if.end361
  br i1 %cmp85, label %for.body371, label %err

for.cond369:                                      ; preds = %for.body371
  %exitcond740.not = icmp eq i32 %inc381, %primes
  br i1 %exitcond740.not, label %err, label %for.body371, !llvm.loop !43

for.body371:                                      ; preds = %for.cond369.preheader, %for.cond369
  %i.6713 = phi i32 [ %inc381, %for.cond369 ], [ 2, %for.cond369.preheader ]
  %sub372 = add nsw i32 %i.6713, -2
  %call373 = tail call fastcc %struct.rsa_prime_info_st* @sk_RSA_PRIME_INFO_value(%struct.stack_st_RSA_PRIME_INFO* noundef %prime_infos.0, i32 noundef %sub372) #5
  %r374 = getelementptr inbounds %struct.rsa_prime_info_st, %struct.rsa_prime_info_st* %call373, i64 0, i32 0
  %50 = load %struct.bignum_st*, %struct.bignum_st** %r374, align 8, !tbaa !41
  tail call void @BN_with_flags(%struct.bignum_st* noundef nonnull %call358, %struct.bignum_st* noundef %50, i32 noundef 4) #4
  %t = getelementptr inbounds %struct.rsa_prime_info_st, %struct.rsa_prime_info_st* %call373, i64 0, i32 2
  %51 = load %struct.bignum_st*, %struct.bignum_st** %t, align 8, !tbaa !44
  %pp375 = getelementptr inbounds %struct.rsa_prime_info_st, %struct.rsa_prime_info_st* %call373, i64 0, i32 3
  %52 = load %struct.bignum_st*, %struct.bignum_st** %pp375, align 8, !tbaa !36
  %call376 = tail call %struct.bignum_st* @BN_mod_inverse(%struct.bignum_st* noundef %51, %struct.bignum_st* noundef %52, %struct.bignum_st* noundef nonnull %call358, %struct.bignum_ctx* noundef nonnull %call9) #4
  %tobool377.not = icmp eq %struct.bignum_st* %call376, null
  %inc381 = add nuw nsw i32 %i.6713, 1
  br i1 %tobool377.not, label %if.then387.sink.split, label %for.cond369

err:                                              ; preds = %for.cond369, %for.cond369.preheader
  tail call void @BN_free(%struct.bignum_st* noundef nonnull %call358) #4
  br label %if.end388

if.then387.sink.split:                            ; preds = %for.body342, %for.body371, %if.end361, %if.end329, %lor.lhs.false334
  %call358.sink = phi %struct.bignum_st* [ %call326, %lor.lhs.false334 ], [ %call326, %if.end329 ], [ %call358, %if.end361 ], [ %call358, %for.body371 ], [ %call326, %for.body342 ]
  tail call void @BN_free(%struct.bignum_st* noundef nonnull %call358.sink) #4
  br label %if.then387

if.then387:                                       ; preds = %for.body99, %if.else208, %if.end258, %if.end253, %land.lhs.true248, %if.end172, %land.lhs.true176, %if.then179, %for.cond128, %if.end244, %cleanup.cont161, %if.then202, %if.then193, %if.end214, %if.then224, %redo.loopexit, %for.body294, %if.end303, %if.then387.sink.split, %if.end315, %cleanup.cont356, %cleanup.cont324, %for.end311, %land.lhs.true24, %land.lhs.true31, %land.lhs.true39, %land.lhs.true46, %land.lhs.true54, %land.lhs.true62, %land.lhs.true70, %land.lhs.true78, %if.end275, %if.end281, %if.end287, %if.end108, %if.then86, %if.end12, %if.end8
  tail call void @ERR_new() #4
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 noundef 415, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.rsa_multiprime_keygen, i64 0, i64 0)) #4
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 4, i32 noundef 524291, i8* noundef null) #4
  br label %if.end388

if.end388:                                        ; preds = %if.then7, %if.then, %err, %if.then387
  %ctx.0646 = phi %struct.bignum_ctx* [ %call9, %if.then387 ], [ %call9, %err ], [ null, %if.then ], [ null, %if.then7 ]
  %ok.1 = phi i32 [ 0, %if.then387 ], [ 1, %err ], [ 0, %if.then ], [ 0, %if.then7 ]
  tail call void @BN_CTX_end(%struct.bignum_ctx* noundef %ctx.0646) #4
  tail call void @BN_CTX_free(%struct.bignum_ctx* noundef %ctx.0646) #4
  br label %cleanup389

cleanup389:                                       ; preds = %if.end388, %if.then2
  %retval.0 = phi i32 [ %ok.1, %if.end388 ], [ 0, %if.then2 ]
  call void @llvm.lifetime.end.p0i8(i64 20, i8* nonnull %0) #6
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

declare void @ERR_new() local_unnamed_addr #2

declare void @ERR_set_debug(i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #2

declare void @ERR_set_error(i32 noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #2

declare i32 @ossl_rsa_check_public_exponent(%struct.bignum_st* noundef) local_unnamed_addr #2

declare i32 @ossl_rsa_multip_cap(i32 noundef) local_unnamed_addr #2

declare %struct.bignum_ctx* @BN_CTX_new_ex(%struct.ossl_lib_ctx_st* noundef) local_unnamed_addr #2

declare void @BN_CTX_start(%struct.bignum_ctx* noundef) local_unnamed_addr #2

declare %struct.bignum_st* @BN_CTX_get(%struct.bignum_ctx* noundef) local_unnamed_addr #2

declare %struct.bignum_st* @BN_new() local_unnamed_addr #2

declare %struct.bignum_st* @BN_secure_new() local_unnamed_addr #2

declare void @BN_set_flags(%struct.bignum_st* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.stack_st_RSA_PRIME_INFO* @sk_RSA_PRIME_INFO_new_reserve(i32 noundef %n) unnamed_addr #0 {
entry:
  %call = tail call %struct.stack_st* @OPENSSL_sk_new_reserve(i32 (i8*, i8*)* noundef null, i32 noundef %n) #4
  %0 = bitcast %struct.stack_st* %call to %struct.stack_st_RSA_PRIME_INFO*
  ret %struct.stack_st_RSA_PRIME_INFO* %0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @sk_RSA_PRIME_INFO_pop_free(%struct.stack_st_RSA_PRIME_INFO* noundef %sk) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.stack_st_RSA_PRIME_INFO* %sk to %struct.stack_st*
  tail call void @OPENSSL_sk_pop_free(%struct.stack_st* noundef %0, void (i8*)* noundef bitcast (void (%struct.rsa_prime_info_st*)* @ossl_rsa_multip_info_free to void (i8*)*)) #4
  ret void
}

declare void @ossl_rsa_multip_info_free(%struct.rsa_prime_info_st* noundef) #2

declare %struct.rsa_prime_info_st* @ossl_rsa_multip_info_new() local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @sk_RSA_PRIME_INFO_push(%struct.stack_st_RSA_PRIME_INFO* noundef %sk, %struct.rsa_prime_info_st* noundef %ptr) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.stack_st_RSA_PRIME_INFO* %sk to %struct.stack_st*
  %1 = bitcast %struct.rsa_prime_info_st* %ptr to i8*
  %call = tail call i32 @OPENSSL_sk_push(%struct.stack_st* noundef %0, i8* noundef %1) #4
  ret void
}

declare %struct.bignum_st* @BN_copy(%struct.bignum_st* noundef, %struct.bignum_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.rsa_prime_info_st* @sk_RSA_PRIME_INFO_value(%struct.stack_st_RSA_PRIME_INFO* noundef %sk, i32 noundef %idx) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.stack_st_RSA_PRIME_INFO* %sk to %struct.stack_st*
  %call = tail call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %0, i32 noundef %idx) #4
  %1 = bitcast i8* %call to %struct.rsa_prime_info_st*
  ret %struct.rsa_prime_info_st* %1
}

declare i32 @BN_generate_prime_ex2(%struct.bignum_st* noundef, i32 noundef, i32 noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bn_gencb_st* noundef, %struct.bignum_ctx* noundef) local_unnamed_addr #2

declare i32 @BN_cmp(%struct.bignum_st* noundef, %struct.bignum_st* noundef) local_unnamed_addr #2

declare i32 @BN_sub(%struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef) local_unnamed_addr #2

declare %struct.bignum_st* @BN_value_one() local_unnamed_addr #2

declare i32 @ERR_set_mark() local_unnamed_addr #2

declare %struct.bignum_st* @BN_mod_inverse(%struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_ctx* noundef) local_unnamed_addr #2

declare i64 @ERR_peek_last_error() local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc i32 @ERR_GET_LIB(i64 noundef %errcode) unnamed_addr #3 {
entry:
  %and = and i64 %errcode, 2147483648
  %cmp.not = icmp eq i64 %and, 0
  %0 = trunc i64 %errcode to i32
  %1 = lshr i32 %0, 23
  %conv = and i32 %1, 255
  %retval.0 = select i1 %cmp.not, i32 %conv, i32 2
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc i32 @ERR_GET_REASON(i64 noundef %errcode) unnamed_addr #3 {
entry:
  %and = and i64 %errcode, 2147483648
  %cmp.not = icmp eq i64 %and, 0
  %0 = trunc i64 %errcode to i32
  %retval.0.v = select i1 %cmp.not, i32 8388607, i32 2147483647
  %retval.0 = and i32 %retval.0.v, %0
  ret i32 %retval.0
}

declare i32 @ERR_pop_to_mark() local_unnamed_addr #2

declare i32 @BN_GENCB_call(%struct.bn_gencb_st* noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare i32 @BN_mul(%struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_ctx* noundef) local_unnamed_addr #2

declare i32 @BN_rshift(%struct.bignum_st* noundef, %struct.bignum_st* noundef, i32 noundef) local_unnamed_addr #2

declare i64 @BN_get_word(%struct.bignum_st* noundef) local_unnamed_addr #2

declare void @BN_with_flags(%struct.bignum_st* noundef, %struct.bignum_st* noundef, i32 noundef) local_unnamed_addr #2

declare void @BN_free(%struct.bignum_st* noundef) local_unnamed_addr #2

declare i32 @BN_div(%struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_ctx* noundef) local_unnamed_addr #2

declare void @BN_CTX_end(%struct.bignum_ctx* noundef) local_unnamed_addr #2

declare void @BN_CTX_free(%struct.bignum_ctx* noundef) local_unnamed_addr #2

declare %struct.stack_st* @OPENSSL_sk_new_reserve(i32 (i8*, i8*)* noundef, i32 noundef) local_unnamed_addr #2

declare void @OPENSSL_sk_pop_free(%struct.stack_st* noundef, void (i8*)* noundef) local_unnamed_addr #2

declare i32 @OPENSSL_sk_push(%struct.stack_st* noundef, i8* noundef) local_unnamed_addr #2

declare i8* @OPENSSL_sk_value(%struct.stack_st* noundef, i32 noundef) local_unnamed_addr #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nobuiltin nounwind "no-builtins" }
attributes #5 = { nobuiltin "no-builtins" }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{!"clang version 14.0.0"}
!4 = !{!5, !9, i64 24}
!5 = !{!"rsa_st", !6, i64 0, !9, i64 8, !6, i64 16, !9, i64 24, !9, i64 32, !9, i64 40, !9, i64 48, !9, i64 56, !9, i64 64, !9, i64 72, !9, i64 80, !9, i64 88, !9, i64 96, !10, i64 104, !9, i64 128, !9, i64 136, !12, i64 144, !7, i64 160, !6, i64 164, !9, i64 168, !9, i64 176, !9, i64 184, !9, i64 192, !9, i64 200, !9, i64 208, !6, i64 216}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!"any pointer", !7, i64 0}
!10 = !{!"rsa_pss_params_30_st", !6, i64 0, !11, i64 4, !6, i64 12, !6, i64 16}
!11 = !{!"", !6, i64 0, !6, i64 4}
!12 = !{!"crypto_ex_data_st", !9, i64 0, !9, i64 8}
!13 = !{!14, !9, i64 104}
!14 = !{!"rsa_meth_st", !9, i64 0, !9, i64 8, !9, i64 16, !9, i64 24, !9, i64 32, !9, i64 40, !9, i64 48, !9, i64 56, !9, i64 64, !6, i64 72, !9, i64 80, !9, i64 88, !9, i64 96, !9, i64 104, !9, i64 112}
!15 = !{!14, !9, i64 112}
!16 = !{!5, !9, i64 8}
!17 = !{!6, !6, i64 0}
!18 = distinct !{!18, !19}
!19 = !{!"llvm.loop.mustprogress"}
!20 = distinct !{!20, !21}
!21 = !{!"llvm.loop.unroll.disable"}
!22 = !{!5, !6, i64 216}
!23 = !{!5, !9, i64 40}
!24 = !{!5, !9, i64 56}
!25 = !{!5, !9, i64 48}
!26 = !{!5, !9, i64 64}
!27 = !{!5, !9, i64 72}
!28 = !{!5, !9, i64 80}
!29 = !{!5, !9, i64 88}
!30 = !{!5, !9, i64 96}
!31 = !{!5, !6, i64 16}
!32 = !{!5, !9, i64 136}
!33 = distinct !{!33, !19}
!34 = !{!9, !9, i64 0}
!35 = distinct !{!35, !19}
!36 = !{!37, !9, i64 24}
!37 = !{!"rsa_prime_info_st", !9, i64 0, !9, i64 8, !9, i64 16, !9, i64 24, !9, i64 32}
!38 = distinct !{!38, !19}
!39 = distinct !{!39, !19}
!40 = !{!37, !9, i64 8}
!41 = !{!37, !9, i64 0}
!42 = distinct !{!42, !19}
!43 = distinct !{!43, !19}
!44 = !{!37, !9, i64 16}
