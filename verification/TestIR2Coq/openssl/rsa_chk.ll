; ModuleID = 'crypto/rsa/rsa_chk.c'
source_filename = "crypto/rsa/rsa_chk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rsa_st = type { i32, %struct.ossl_lib_ctx_st*, i32, %struct.rsa_meth_st*, %struct.engine_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.rsa_pss_params_30_st, %struct.rsa_pss_params_st*, %struct.stack_st_RSA_PRIME_INFO*, %struct.crypto_ex_data_st, i32, i32, %struct.bn_mont_ctx_st*, %struct.bn_mont_ctx_st*, %struct.bn_mont_ctx_st*, %struct.bn_blinding_st*, %struct.bn_blinding_st*, i8*, i32 }
%struct.ossl_lib_ctx_st = type opaque
%struct.rsa_meth_st = type { i8*, i32 (i32, i8*, i8*, %struct.rsa_st*, i32)*, i32 (i32, i8*, i8*, %struct.rsa_st*, i32)*, i32 (i32, i8*, i8*, %struct.rsa_st*, i32)*, i32 (i32, i8*, i8*, %struct.rsa_st*, i32)*, i32 (%struct.bignum_st*, %struct.bignum_st*, %struct.rsa_st*, %struct.bignum_ctx*)*, i32 (%struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*, %struct.bn_mont_ctx_st*)*, i32 (%struct.rsa_st*)*, i32 (%struct.rsa_st*)*, i32, i8*, i32 (i32, i8*, i32, i8*, i32*, %struct.rsa_st*)*, i32 (i32, i8*, i32, i8*, i32, %struct.rsa_st*)*, i32 (%struct.rsa_st*, i32, %struct.bignum_st*, %struct.bn_gencb_st*)*, i32 (%struct.rsa_st*, i32, i32, %struct.bignum_st*, %struct.bn_gencb_st*)* }
%struct.bignum_ctx = type opaque
%struct.bn_gencb_st = type opaque
%struct.engine_st = type opaque
%struct.bignum_st = type opaque
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
%struct.rsa_prime_info_st = type { %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bn_mont_ctx_st* }
%struct.stack_st = type opaque

@.str = private unnamed_addr constant [21 x i8] c"crypto/rsa/rsa_chk.c\00", align 1
@__func__.rsa_validate_keypair_multiprime = private unnamed_addr constant [32 x i8] c"rsa_validate_keypair_multiprime\00", align 1

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_rsa_validate_public(%struct.rsa_st* noundef %key) local_unnamed_addr #0 {
entry:
  %call = tail call i32 @ossl_rsa_sp800_56b_check_public(%struct.rsa_st* noundef %key) #2
  ret i32 %call
}

declare i32 @ossl_rsa_sp800_56b_check_public(%struct.rsa_st* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_rsa_validate_private(%struct.rsa_st* noundef %key) local_unnamed_addr #0 {
entry:
  %call = tail call i32 @ossl_rsa_sp800_56b_check_private(%struct.rsa_st* noundef %key) #2
  ret i32 %call
}

declare i32 @ossl_rsa_sp800_56b_check_private(%struct.rsa_st* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_rsa_validate_pairwise(%struct.rsa_st* nocapture noundef readonly %key) local_unnamed_addr #0 {
entry:
  %call = tail call fastcc i32 @rsa_validate_keypair_multiprime(%struct.rsa_st* noundef %key, %struct.bn_gencb_st* noundef null) #3
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @rsa_validate_keypair_multiprime(%struct.rsa_st* nocapture noundef readonly %key, %struct.bn_gencb_st* noundef %cb) unnamed_addr #0 {
entry:
  %p = getelementptr inbounds %struct.rsa_st, %struct.rsa_st* %key, i64 0, i32 8
  %0 = load %struct.bignum_st*, %struct.bignum_st** %p, align 8, !tbaa !4
  %cmp = icmp eq %struct.bignum_st* %0, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %q = getelementptr inbounds %struct.rsa_st, %struct.rsa_st* %key, i64 0, i32 9
  %1 = load %struct.bignum_st*, %struct.bignum_st** %q, align 8, !tbaa !13
  %cmp1 = icmp eq %struct.bignum_st* %1, null
  br i1 %cmp1, label %if.then, label %lor.lhs.false2

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %n = getelementptr inbounds %struct.rsa_st, %struct.rsa_st* %key, i64 0, i32 5
  %2 = load %struct.bignum_st*, %struct.bignum_st** %n, align 8, !tbaa !14
  %cmp3 = icmp eq %struct.bignum_st* %2, null
  br i1 %cmp3, label %if.then, label %lor.lhs.false4

lor.lhs.false4:                                   ; preds = %lor.lhs.false2
  %e = getelementptr inbounds %struct.rsa_st, %struct.rsa_st* %key, i64 0, i32 6
  %3 = load %struct.bignum_st*, %struct.bignum_st** %e, align 8, !tbaa !15
  %cmp5 = icmp eq %struct.bignum_st* %3, null
  br i1 %cmp5, label %if.then, label %lor.lhs.false6

lor.lhs.false6:                                   ; preds = %lor.lhs.false4
  %d = getelementptr inbounds %struct.rsa_st, %struct.rsa_st* %key, i64 0, i32 7
  %4 = load %struct.bignum_st*, %struct.bignum_st** %d, align 8, !tbaa !16
  %cmp7 = icmp eq %struct.bignum_st* %4, null
  br i1 %cmp7, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false6, %lor.lhs.false4, %lor.lhs.false2, %lor.lhs.false, %entry
  tail call void @ERR_new() #2
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 31, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @__func__.rsa_validate_keypair_multiprime, i64 0, i64 0)) #2
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 4, i32 noundef 147, i8* noundef null) #2
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false6
  %version = getelementptr inbounds %struct.rsa_st, %struct.rsa_st* %key, i64 0, i32 2
  %5 = load i32, i32* %version, align 8, !tbaa !17
  %cmp8 = icmp eq i32 %5, 1
  br i1 %cmp8, label %if.then9, label %if.end18

if.then9:                                         ; preds = %if.end
  %prime_infos = getelementptr inbounds %struct.rsa_st, %struct.rsa_st* %key, i64 0, i32 15
  %6 = load %struct.stack_st_RSA_PRIME_INFO*, %struct.stack_st_RSA_PRIME_INFO** %prime_infos, align 8, !tbaa !18
  %call = tail call fastcc i32 @sk_RSA_PRIME_INFO_num(%struct.stack_st_RSA_PRIME_INFO* noundef %6) #3
  %cmp10 = icmp slt i32 %call, 1
  br i1 %cmp10, label %if.then16, label %lor.lhs.false11

lor.lhs.false11:                                  ; preds = %if.then9
  %add = add nuw nsw i32 %call, 2
  %7 = load %struct.bignum_st*, %struct.bignum_st** %n, align 8, !tbaa !14
  %call13 = tail call i32 @BN_num_bits(%struct.bignum_st* noundef %7) #2
  %call14 = tail call i32 @ossl_rsa_multip_cap(i32 noundef %call13) #2
  %cmp15 = icmp sgt i32 %add, %call14
  br i1 %cmp15, label %if.then16, label %if.end18

if.then16:                                        ; preds = %lor.lhs.false11, %if.then9
  tail call void @ERR_new() #2
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 40, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @__func__.rsa_validate_keypair_multiprime, i64 0, i64 0)) #2
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 4, i32 noundef 167, i8* noundef null) #2
  br label %cleanup

if.end18:                                         ; preds = %lor.lhs.false11, %if.end
  %ex_primes.0 = phi i32 [ %call, %lor.lhs.false11 ], [ 0, %if.end ]
  %call19 = tail call %struct.bignum_st* @BN_new() #2
  %call20 = tail call %struct.bignum_st* @BN_new() #2
  %call21 = tail call %struct.bignum_st* @BN_new() #2
  %call22 = tail call %struct.bignum_st* @BN_new() #2
  %call23 = tail call %struct.bignum_st* @BN_new() #2
  %libctx = getelementptr inbounds %struct.rsa_st, %struct.rsa_st* %key, i64 0, i32 1
  %8 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** %libctx, align 8, !tbaa !19
  %call24 = tail call %struct.bignum_ctx* @BN_CTX_new_ex(%struct.ossl_lib_ctx_st* noundef %8) #2
  %cmp25 = icmp eq %struct.bignum_st* %call19, null
  %cmp27 = icmp eq %struct.bignum_st* %call20, null
  %or.cond = select i1 %cmp25, i1 true, i1 %cmp27
  %cmp29 = icmp eq %struct.bignum_st* %call21, null
  %or.cond238 = select i1 %or.cond, i1 true, i1 %cmp29
  %cmp31 = icmp eq %struct.bignum_st* %call22, null
  %or.cond239 = select i1 %or.cond238, i1 true, i1 %cmp31
  %cmp33 = icmp eq %struct.bignum_st* %call23, null
  %or.cond240 = select i1 %or.cond239, i1 true, i1 %cmp33
  %cmp35 = icmp eq %struct.bignum_ctx* %call24, null
  %or.cond241 = select i1 %or.cond240, i1 true, i1 %cmp35
  br i1 %or.cond241, label %if.then36, label %if.end37

if.then36:                                        ; preds = %if.end18
  tail call void @ERR_new() #2
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 54, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @__func__.rsa_validate_keypair_multiprime, i64 0, i64 0)) #2
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 4, i32 noundef 786688, i8* noundef null) #2
  br label %err

if.end37:                                         ; preds = %if.end18
  %9 = load %struct.bignum_st*, %struct.bignum_st** %e, align 8, !tbaa !15
  %call39 = tail call i32 @BN_is_one(%struct.bignum_st* noundef %9) #2
  %tobool.not = icmp eq i32 %call39, 0
  br i1 %tobool.not, label %if.end41, label %if.then40

if.then40:                                        ; preds = %if.end37
  tail call void @ERR_new() #2
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 60, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @__func__.rsa_validate_keypair_multiprime, i64 0, i64 0)) #2
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 4, i32 noundef 101, i8* noundef null) #2
  br label %if.end41

if.end41:                                         ; preds = %if.then40, %if.end37
  %ret.0 = phi i32 [ 0, %if.then40 ], [ 1, %if.end37 ]
  %10 = load %struct.bignum_st*, %struct.bignum_st** %e, align 8, !tbaa !15
  %call43 = tail call i32 @BN_is_odd(%struct.bignum_st* noundef %10) #2
  %tobool44.not = icmp eq i32 %call43, 0
  br i1 %tobool44.not, label %if.then45, label %if.end46

if.then45:                                        ; preds = %if.end41
  tail call void @ERR_new() #2
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 64, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @__func__.rsa_validate_keypair_multiprime, i64 0, i64 0)) #2
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 4, i32 noundef 101, i8* noundef null) #2
  br label %if.end46

if.end46:                                         ; preds = %if.then45, %if.end41
  %ret.1 = phi i32 [ %ret.0, %if.end41 ], [ 0, %if.then45 ]
  %11 = load %struct.bignum_st*, %struct.bignum_st** %p, align 8, !tbaa !4
  %call48 = tail call i32 @BN_check_prime(%struct.bignum_st* noundef %11, %struct.bignum_ctx* noundef nonnull %call24, %struct.bn_gencb_st* noundef %cb) #2
  %cmp49.not = icmp eq i32 %call48, 1
  br i1 %cmp49.not, label %if.end51, label %if.then50

if.then50:                                        ; preds = %if.end46
  tail call void @ERR_new() #2
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 70, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @__func__.rsa_validate_keypair_multiprime, i64 0, i64 0)) #2
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 4, i32 noundef 128, i8* noundef null) #2
  br label %if.end51

if.end51:                                         ; preds = %if.then50, %if.end46
  %ret.2 = phi i32 [ 0, %if.then50 ], [ %ret.1, %if.end46 ]
  %12 = load %struct.bignum_st*, %struct.bignum_st** %q, align 8, !tbaa !13
  %call53 = tail call i32 @BN_check_prime(%struct.bignum_st* noundef %12, %struct.bignum_ctx* noundef nonnull %call24, %struct.bn_gencb_st* noundef %cb) #2
  %cmp54.not = icmp eq i32 %call53, 1
  br i1 %cmp54.not, label %if.end56, label %if.then55

if.then55:                                        ; preds = %if.end51
  tail call void @ERR_new() #2
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 76, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @__func__.rsa_validate_keypair_multiprime, i64 0, i64 0)) #2
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 4, i32 noundef 129, i8* noundef null) #2
  br label %if.end56

if.end56:                                         ; preds = %if.then55, %if.end51
  %ret.3 = phi i32 [ 0, %if.then55 ], [ %ret.2, %if.end51 ]
  %cmp57379.not = icmp eq i32 %ex_primes.0, 0
  br i1 %cmp57379.not, label %for.end, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %if.end56
  %prime_infos58 = getelementptr inbounds %struct.rsa_st, %struct.rsa_st* %key, i64 0, i32 15
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %idx.0381 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc ]
  %ret.4380 = phi i32 [ %ret.3, %for.body.lr.ph ], [ %ret.5, %for.inc ]
  %13 = load %struct.stack_st_RSA_PRIME_INFO*, %struct.stack_st_RSA_PRIME_INFO** %prime_infos58, align 8, !tbaa !18
  %call59 = tail call fastcc %struct.rsa_prime_info_st* @sk_RSA_PRIME_INFO_value(%struct.stack_st_RSA_PRIME_INFO* noundef %13, i32 noundef %idx.0381) #3
  %r = getelementptr inbounds %struct.rsa_prime_info_st, %struct.rsa_prime_info_st* %call59, i64 0, i32 0
  %14 = load %struct.bignum_st*, %struct.bignum_st** %r, align 8, !tbaa !20
  %call60 = tail call i32 @BN_check_prime(%struct.bignum_st* noundef %14, %struct.bignum_ctx* noundef %call24, %struct.bn_gencb_st* noundef %cb) #2
  %cmp61.not = icmp eq i32 %call60, 1
  br i1 %cmp61.not, label %for.inc, label %if.then62

if.then62:                                        ; preds = %for.body
  tail call void @ERR_new() #2
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 84, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @__func__.rsa_validate_keypair_multiprime, i64 0, i64 0)) #2
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 4, i32 noundef 170, i8* noundef null) #2
  br label %for.inc

for.inc:                                          ; preds = %for.body, %if.then62
  %ret.5 = phi i32 [ 0, %if.then62 ], [ %ret.4380, %for.body ]
  %inc = add nuw nsw i32 %idx.0381, 1
  %exitcond.not = icmp eq i32 %inc, %ex_primes.0
  br i1 %exitcond.not, label %for.end, label %for.body, !llvm.loop !22

for.end:                                          ; preds = %for.inc, %if.end56
  %ret.4.lcssa = phi i32 [ %ret.3, %if.end56 ], [ %ret.5, %for.inc ]
  %15 = load %struct.bignum_st*, %struct.bignum_st** %p, align 8, !tbaa !4
  %16 = load %struct.bignum_st*, %struct.bignum_st** %q, align 8, !tbaa !13
  %call66 = tail call i32 @BN_mul(%struct.bignum_st* noundef %call19, %struct.bignum_st* noundef %15, %struct.bignum_st* noundef %16, %struct.bignum_ctx* noundef %call24) #2
  %tobool67.not = icmp eq i32 %call66, 0
  br i1 %tobool67.not, label %err, label %for.cond70.preheader

for.cond70.preheader:                             ; preds = %for.end
  br i1 %cmp57379.not, label %for.end82, label %for.body72.lr.ph

for.body72.lr.ph:                                 ; preds = %for.cond70.preheader
  %prime_infos73 = getelementptr inbounds %struct.rsa_st, %struct.rsa_st* %key, i64 0, i32 15
  br label %for.body72

for.cond70:                                       ; preds = %for.body72
  %exitcond395.not = icmp eq i32 %inc81, %ex_primes.0
  br i1 %exitcond395.not, label %for.end82, label %for.body72, !llvm.loop !24

for.body72:                                       ; preds = %for.body72.lr.ph, %for.cond70
  %idx.1383 = phi i32 [ 0, %for.body72.lr.ph ], [ %inc81, %for.cond70 ]
  %17 = load %struct.stack_st_RSA_PRIME_INFO*, %struct.stack_st_RSA_PRIME_INFO** %prime_infos73, align 8, !tbaa !18
  %call74 = tail call fastcc %struct.rsa_prime_info_st* @sk_RSA_PRIME_INFO_value(%struct.stack_st_RSA_PRIME_INFO* noundef %17, i32 noundef %idx.1383) #3
  %r75 = getelementptr inbounds %struct.rsa_prime_info_st, %struct.rsa_prime_info_st* %call74, i64 0, i32 0
  %18 = load %struct.bignum_st*, %struct.bignum_st** %r75, align 8, !tbaa !20
  %call76 = tail call i32 @BN_mul(%struct.bignum_st* noundef %call19, %struct.bignum_st* noundef %call19, %struct.bignum_st* noundef %18, %struct.bignum_ctx* noundef %call24) #2
  %tobool77.not = icmp eq i32 %call76, 0
  %inc81 = add nuw nsw i32 %idx.1383, 1
  br i1 %tobool77.not, label %err, label %for.cond70

for.end82:                                        ; preds = %for.cond70, %for.cond70.preheader
  %19 = load %struct.bignum_st*, %struct.bignum_st** %n, align 8, !tbaa !14
  %call84 = tail call i32 @BN_cmp(%struct.bignum_st* noundef %call19, %struct.bignum_st* noundef %19) #2
  %cmp85.not = icmp eq i32 %call84, 0
  br i1 %cmp85.not, label %if.end90, label %if.then86

if.then86:                                        ; preds = %for.end82
  %tobool87.not = icmp eq i32 %ex_primes.0, 0
  tail call void @ERR_new() #2
  %. = select i1 %tobool87.not, i32 105, i32 103
  %.401 = select i1 %tobool87.not, i32 127, i32 172
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef %., i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @__func__.rsa_validate_keypair_multiprime, i64 0, i64 0)) #2
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 4, i32 noundef %.401, i8* noundef null) #2
  br label %if.end90

if.end90:                                         ; preds = %if.then86, %for.end82
  %ret.6 = phi i32 [ %ret.4.lcssa, %for.end82 ], [ 0, %if.then86 ]
  %20 = load %struct.bignum_st*, %struct.bignum_st** %p, align 8, !tbaa !4
  %call92 = tail call %struct.bignum_st* @BN_value_one() #2
  %call93 = tail call i32 @BN_sub(%struct.bignum_st* noundef %call19, %struct.bignum_st* noundef %20, %struct.bignum_st* noundef %call92) #2
  %tobool94.not = icmp eq i32 %call93, 0
  br i1 %tobool94.not, label %err, label %if.end96

if.end96:                                         ; preds = %if.end90
  %21 = load %struct.bignum_st*, %struct.bignum_st** %q, align 8, !tbaa !13
  %call98 = tail call %struct.bignum_st* @BN_value_one() #2
  %call99 = tail call i32 @BN_sub(%struct.bignum_st* noundef %call20, %struct.bignum_st* noundef %21, %struct.bignum_st* noundef %call98) #2
  %tobool100.not = icmp eq i32 %call99, 0
  br i1 %tobool100.not, label %err, label %if.end102

if.end102:                                        ; preds = %if.end96
  %call103 = tail call i32 @BN_mul(%struct.bignum_st* noundef %call22, %struct.bignum_st* noundef %call19, %struct.bignum_st* noundef %call20, %struct.bignum_ctx* noundef %call24) #2
  %tobool104.not = icmp eq i32 %call103, 0
  br i1 %tobool104.not, label %err, label %if.end106

if.end106:                                        ; preds = %if.end102
  %call107 = tail call i32 @BN_gcd(%struct.bignum_st* noundef %call23, %struct.bignum_st* noundef %call19, %struct.bignum_st* noundef %call20, %struct.bignum_ctx* noundef %call24) #2
  %tobool108.not = icmp eq i32 %call107, 0
  br i1 %tobool108.not, label %err, label %for.cond111.preheader

for.cond111.preheader:                            ; preds = %if.end106
  br i1 %cmp57379.not, label %for.end132, label %for.body113.lr.ph

for.body113.lr.ph:                                ; preds = %for.cond111.preheader
  %prime_infos114 = getelementptr inbounds %struct.rsa_st, %struct.rsa_st* %key, i64 0, i32 15
  br label %for.body113

for.cond111:                                      ; preds = %if.end125
  %exitcond396.not = icmp eq i32 %inc131, %ex_primes.0
  br i1 %exitcond396.not, label %for.end132, label %for.body113, !llvm.loop !25

for.body113:                                      ; preds = %for.body113.lr.ph, %for.cond111
  %idx.2385 = phi i32 [ 0, %for.body113.lr.ph ], [ %inc131, %for.cond111 ]
  %22 = load %struct.stack_st_RSA_PRIME_INFO*, %struct.stack_st_RSA_PRIME_INFO** %prime_infos114, align 8, !tbaa !18
  %call115 = tail call fastcc %struct.rsa_prime_info_st* @sk_RSA_PRIME_INFO_value(%struct.stack_st_RSA_PRIME_INFO* noundef %22, i32 noundef %idx.2385) #3
  %r116 = getelementptr inbounds %struct.rsa_prime_info_st, %struct.rsa_prime_info_st* %call115, i64 0, i32 0
  %23 = load %struct.bignum_st*, %struct.bignum_st** %r116, align 8, !tbaa !20
  %call117 = tail call %struct.bignum_st* @BN_value_one() #2
  %call118 = tail call i32 @BN_sub(%struct.bignum_st* noundef %call21, %struct.bignum_st* noundef %23, %struct.bignum_st* noundef %call117) #2
  %tobool119.not = icmp eq i32 %call118, 0
  br i1 %tobool119.not, label %err, label %if.end121

if.end121:                                        ; preds = %for.body113
  %call122 = tail call i32 @BN_mul(%struct.bignum_st* noundef %call22, %struct.bignum_st* noundef %call22, %struct.bignum_st* noundef %call21, %struct.bignum_ctx* noundef %call24) #2
  %tobool123.not = icmp eq i32 %call122, 0
  br i1 %tobool123.not, label %err, label %if.end125

if.end125:                                        ; preds = %if.end121
  %call126 = tail call i32 @BN_gcd(%struct.bignum_st* noundef %call23, %struct.bignum_st* noundef %call23, %struct.bignum_st* noundef %call21, %struct.bignum_ctx* noundef %call24) #2
  %tobool127.not = icmp eq i32 %call126, 0
  %inc131 = add nuw nsw i32 %idx.2385, 1
  br i1 %tobool127.not, label %err, label %for.cond111

for.end132:                                       ; preds = %for.cond111, %for.cond111.preheader
  %call133 = tail call i32 @BN_div(%struct.bignum_st* noundef %call21, %struct.bignum_st* noundef null, %struct.bignum_st* noundef %call22, %struct.bignum_st* noundef %call23, %struct.bignum_ctx* noundef %call24) #2
  %tobool134.not = icmp eq i32 %call133, 0
  br i1 %tobool134.not, label %err, label %if.end136

if.end136:                                        ; preds = %for.end132
  %24 = load %struct.bignum_st*, %struct.bignum_st** %d, align 8, !tbaa !16
  %25 = load %struct.bignum_st*, %struct.bignum_st** %e, align 8, !tbaa !15
  %call139 = tail call i32 @BN_mod_mul(%struct.bignum_st* noundef %call19, %struct.bignum_st* noundef %24, %struct.bignum_st* noundef %25, %struct.bignum_st* noundef %call21, %struct.bignum_ctx* noundef %call24) #2
  %tobool140.not = icmp eq i32 %call139, 0
  br i1 %tobool140.not, label %err, label %if.end142

if.end142:                                        ; preds = %if.end136
  %call143 = tail call i32 @BN_is_one(%struct.bignum_st* noundef %call19) #2
  %tobool144.not = icmp eq i32 %call143, 0
  br i1 %tobool144.not, label %if.then145, label %if.end146

if.then145:                                       ; preds = %if.end142
  tail call void @ERR_new() #2
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 153, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @__func__.rsa_validate_keypair_multiprime, i64 0, i64 0)) #2
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 4, i32 noundef 123, i8* noundef null) #2
  br label %if.end146

if.end146:                                        ; preds = %if.then145, %if.end142
  %ret.7 = phi i32 [ %ret.6, %if.end142 ], [ 0, %if.then145 ]
  %dmp1 = getelementptr inbounds %struct.rsa_st, %struct.rsa_st* %key, i64 0, i32 10
  %26 = load %struct.bignum_st*, %struct.bignum_st** %dmp1, align 8, !tbaa !26
  %cmp147.not = icmp eq %struct.bignum_st* %26, null
  br i1 %cmp147.not, label %if.end195, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end146
  %dmq1 = getelementptr inbounds %struct.rsa_st, %struct.rsa_st* %key, i64 0, i32 11
  %27 = load %struct.bignum_st*, %struct.bignum_st** %dmq1, align 8, !tbaa !27
  %cmp148.not = icmp eq %struct.bignum_st* %27, null
  br i1 %cmp148.not, label %if.end195, label %land.lhs.true149

land.lhs.true149:                                 ; preds = %land.lhs.true
  %iqmp = getelementptr inbounds %struct.rsa_st, %struct.rsa_st* %key, i64 0, i32 12
  %28 = load %struct.bignum_st*, %struct.bignum_st** %iqmp, align 8, !tbaa !28
  %cmp150.not = icmp eq %struct.bignum_st* %28, null
  br i1 %cmp150.not, label %if.end195, label %if.then151

if.then151:                                       ; preds = %land.lhs.true149
  %29 = load %struct.bignum_st*, %struct.bignum_st** %p, align 8, !tbaa !4
  %call153 = tail call %struct.bignum_st* @BN_value_one() #2
  %call154 = tail call i32 @BN_sub(%struct.bignum_st* noundef %call19, %struct.bignum_st* noundef %29, %struct.bignum_st* noundef %call153) #2
  %tobool155.not = icmp eq i32 %call154, 0
  br i1 %tobool155.not, label %err, label %if.end157

if.end157:                                        ; preds = %if.then151
  %30 = load %struct.bignum_st*, %struct.bignum_st** %d, align 8, !tbaa !16
  %call159 = tail call i32 @BN_div(%struct.bignum_st* noundef null, %struct.bignum_st* noundef %call20, %struct.bignum_st* noundef %30, %struct.bignum_st* noundef %call19, %struct.bignum_ctx* noundef %call24) #2
  %tobool160.not = icmp eq i32 %call159, 0
  br i1 %tobool160.not, label %err, label %if.end162

if.end162:                                        ; preds = %if.end157
  %31 = load %struct.bignum_st*, %struct.bignum_st** %dmp1, align 8, !tbaa !26
  %call164 = tail call i32 @BN_cmp(%struct.bignum_st* noundef %call20, %struct.bignum_st* noundef %31) #2
  %cmp165.not = icmp eq i32 %call164, 0
  br i1 %cmp165.not, label %if.end167, label %if.then166

if.then166:                                       ; preds = %if.end162
  tail call void @ERR_new() #2
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 168, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @__func__.rsa_validate_keypair_multiprime, i64 0, i64 0)) #2
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 4, i32 noundef 124, i8* noundef null) #2
  br label %if.end167

if.end167:                                        ; preds = %if.then166, %if.end162
  %ret.8 = phi i32 [ 0, %if.then166 ], [ %ret.7, %if.end162 ]
  %32 = load %struct.bignum_st*, %struct.bignum_st** %q, align 8, !tbaa !13
  %call169 = tail call %struct.bignum_st* @BN_value_one() #2
  %call170 = tail call i32 @BN_sub(%struct.bignum_st* noundef %call19, %struct.bignum_st* noundef %32, %struct.bignum_st* noundef %call169) #2
  %tobool171.not = icmp eq i32 %call170, 0
  br i1 %tobool171.not, label %err, label %if.end173

if.end173:                                        ; preds = %if.end167
  %33 = load %struct.bignum_st*, %struct.bignum_st** %d, align 8, !tbaa !16
  %call175 = tail call i32 @BN_div(%struct.bignum_st* noundef null, %struct.bignum_st* noundef %call20, %struct.bignum_st* noundef %33, %struct.bignum_st* noundef %call19, %struct.bignum_ctx* noundef %call24) #2
  %tobool176.not = icmp eq i32 %call175, 0
  br i1 %tobool176.not, label %err, label %if.end178

if.end178:                                        ; preds = %if.end173
  %34 = load %struct.bignum_st*, %struct.bignum_st** %dmq1, align 8, !tbaa !27
  %call180 = tail call i32 @BN_cmp(%struct.bignum_st* noundef %call20, %struct.bignum_st* noundef %34) #2
  %cmp181.not = icmp eq i32 %call180, 0
  br i1 %cmp181.not, label %if.end183, label %if.then182

if.then182:                                       ; preds = %if.end178
  tail call void @ERR_new() #2
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 182, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @__func__.rsa_validate_keypair_multiprime, i64 0, i64 0)) #2
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 4, i32 noundef 125, i8* noundef null) #2
  br label %if.end183

if.end183:                                        ; preds = %if.then182, %if.end178
  %ret.9 = phi i32 [ 0, %if.then182 ], [ %ret.8, %if.end178 ]
  %35 = load %struct.bignum_st*, %struct.bignum_st** %q, align 8, !tbaa !13
  %36 = load %struct.bignum_st*, %struct.bignum_st** %p, align 8, !tbaa !4
  %call186 = tail call %struct.bignum_st* @BN_mod_inverse(%struct.bignum_st* noundef %call19, %struct.bignum_st* noundef %35, %struct.bignum_st* noundef %36, %struct.bignum_ctx* noundef %call24) #2
  %tobool187.not = icmp eq %struct.bignum_st* %call186, null
  br i1 %tobool187.not, label %err, label %if.end189

if.end189:                                        ; preds = %if.end183
  %37 = load %struct.bignum_st*, %struct.bignum_st** %iqmp, align 8, !tbaa !28
  %call191 = tail call i32 @BN_cmp(%struct.bignum_st* noundef %call19, %struct.bignum_st* noundef %37) #2
  %cmp192.not = icmp eq i32 %call191, 0
  br i1 %cmp192.not, label %if.end195, label %if.then193

if.then193:                                       ; preds = %if.end189
  tail call void @ERR_new() #2
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 192, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @__func__.rsa_validate_keypair_multiprime, i64 0, i64 0)) #2
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 4, i32 noundef 126, i8* noundef null) #2
  br label %if.end195

if.end195:                                        ; preds = %if.end189, %if.then193, %land.lhs.true149, %land.lhs.true, %if.end146
  %ret.10 = phi i32 [ 0, %if.then193 ], [ %ret.9, %if.end189 ], [ %ret.7, %land.lhs.true149 ], [ %ret.7, %land.lhs.true ], [ %ret.7, %if.end146 ]
  %prime_infos199 = getelementptr inbounds %struct.rsa_st, %struct.rsa_st* %key, i64 0, i32 15
  br i1 %cmp57379.not, label %err, label %for.body198

for.body198:                                      ; preds = %if.end195, %for.inc226
  %idx.3388 = phi i32 [ %inc227, %for.inc226 ], [ 0, %if.end195 ]
  %ret.11387 = phi i32 [ %ret.13, %for.inc226 ], [ %ret.10, %if.end195 ]
  %38 = load %struct.stack_st_RSA_PRIME_INFO*, %struct.stack_st_RSA_PRIME_INFO** %prime_infos199, align 8, !tbaa !18
  %call200 = tail call fastcc %struct.rsa_prime_info_st* @sk_RSA_PRIME_INFO_value(%struct.stack_st_RSA_PRIME_INFO* noundef %38, i32 noundef %idx.3388) #3
  %r201 = getelementptr inbounds %struct.rsa_prime_info_st, %struct.rsa_prime_info_st* %call200, i64 0, i32 0
  %39 = load %struct.bignum_st*, %struct.bignum_st** %r201, align 8, !tbaa !20
  %call202 = tail call %struct.bignum_st* @BN_value_one() #2
  %call203 = tail call i32 @BN_sub(%struct.bignum_st* noundef %call19, %struct.bignum_st* noundef %39, %struct.bignum_st* noundef %call202) #2
  %tobool204.not = icmp eq i32 %call203, 0
  br i1 %tobool204.not, label %err, label %if.end206

if.end206:                                        ; preds = %for.body198
  %40 = load %struct.bignum_st*, %struct.bignum_st** %d, align 8, !tbaa !16
  %call208 = tail call i32 @BN_div(%struct.bignum_st* noundef null, %struct.bignum_st* noundef %call20, %struct.bignum_st* noundef %40, %struct.bignum_st* noundef %call19, %struct.bignum_ctx* noundef %call24) #2
  %tobool209.not = icmp eq i32 %call208, 0
  br i1 %tobool209.not, label %err, label %if.end211

if.end211:                                        ; preds = %if.end206
  %d212 = getelementptr inbounds %struct.rsa_prime_info_st, %struct.rsa_prime_info_st* %call200, i64 0, i32 1
  %41 = load %struct.bignum_st*, %struct.bignum_st** %d212, align 8, !tbaa !29
  %call213 = tail call i32 @BN_cmp(%struct.bignum_st* noundef %call20, %struct.bignum_st* noundef %41) #2
  %cmp214.not = icmp eq i32 %call213, 0
  br i1 %cmp214.not, label %if.end216, label %if.then215

if.then215:                                       ; preds = %if.end211
  tail call void @ERR_new() #2
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 209, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @__func__.rsa_validate_keypair_multiprime, i64 0, i64 0)) #2
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 4, i32 noundef 169, i8* noundef null) #2
  br label %if.end216

if.end216:                                        ; preds = %if.then215, %if.end211
  %ret.12 = phi i32 [ 0, %if.then215 ], [ %ret.11387, %if.end211 ]
  %pp = getelementptr inbounds %struct.rsa_prime_info_st, %struct.rsa_prime_info_st* %call200, i64 0, i32 3
  %42 = load %struct.bignum_st*, %struct.bignum_st** %pp, align 8, !tbaa !30
  %43 = load %struct.bignum_st*, %struct.bignum_st** %r201, align 8, !tbaa !20
  %call218 = tail call %struct.bignum_st* @BN_mod_inverse(%struct.bignum_st* noundef %call19, %struct.bignum_st* noundef %42, %struct.bignum_st* noundef %43, %struct.bignum_ctx* noundef %call24) #2
  %tobool219.not = icmp eq %struct.bignum_st* %call218, null
  br i1 %tobool219.not, label %err, label %if.end221

if.end221:                                        ; preds = %if.end216
  %t = getelementptr inbounds %struct.rsa_prime_info_st, %struct.rsa_prime_info_st* %call200, i64 0, i32 2
  %44 = load %struct.bignum_st*, %struct.bignum_st** %t, align 8, !tbaa !31
  %call222 = tail call i32 @BN_cmp(%struct.bignum_st* noundef %call19, %struct.bignum_st* noundef %44) #2
  %cmp223.not = icmp eq i32 %call222, 0
  br i1 %cmp223.not, label %for.inc226, label %if.then224

if.then224:                                       ; preds = %if.end221
  tail call void @ERR_new() #2
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 218, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @__func__.rsa_validate_keypair_multiprime, i64 0, i64 0)) #2
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 4, i32 noundef 168, i8* noundef null) #2
  br label %for.inc226

for.inc226:                                       ; preds = %if.end221, %if.then224
  %ret.13 = phi i32 [ 0, %if.then224 ], [ %ret.12, %if.end221 ]
  %inc227 = add nuw nsw i32 %idx.3388, 1
  %exitcond397.not = icmp eq i32 %inc227, %ex_primes.0
  br i1 %exitcond397.not, label %err, label %for.body198, !llvm.loop !32

err:                                              ; preds = %for.body72, %if.end125, %if.end121, %for.body113, %for.inc226, %for.body198, %if.end206, %if.end216, %if.end195, %if.end183, %if.end173, %if.end167, %if.end157, %if.then151, %if.end136, %for.end132, %if.end106, %if.end102, %if.end96, %if.end90, %for.end, %if.then36
  %ret.14 = phi i32 [ -1, %if.then36 ], [ -1, %for.end ], [ -1, %if.end90 ], [ -1, %if.end96 ], [ -1, %if.end102 ], [ -1, %if.end106 ], [ -1, %for.end132 ], [ -1, %if.end136 ], [ -1, %if.then151 ], [ -1, %if.end157 ], [ -1, %if.end167 ], [ -1, %if.end173 ], [ -1, %if.end183 ], [ %ret.10, %if.end195 ], [ %ret.13, %for.inc226 ], [ -1, %for.body198 ], [ -1, %if.end206 ], [ -1, %if.end216 ], [ -1, %for.body113 ], [ -1, %if.end121 ], [ -1, %if.end125 ], [ -1, %for.body72 ]
  tail call void @BN_free(%struct.bignum_st* noundef %call19) #2
  tail call void @BN_free(%struct.bignum_st* noundef %call20) #2
  tail call void @BN_free(%struct.bignum_st* noundef %call21) #2
  tail call void @BN_free(%struct.bignum_st* noundef %call22) #2
  tail call void @BN_free(%struct.bignum_st* noundef %call23) #2
  tail call void @BN_CTX_free(%struct.bignum_ctx* noundef %call24) #2
  br label %cleanup

cleanup:                                          ; preds = %err, %if.then16, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 0, %if.then16 ], [ %ret.14, %err ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @RSA_check_key(%struct.rsa_st* nocapture noundef readonly %key) local_unnamed_addr #0 {
entry:
  %call = tail call i32 @RSA_check_key_ex(%struct.rsa_st* noundef %key, %struct.bn_gencb_st* noundef null) #3
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define i32 @RSA_check_key_ex(%struct.rsa_st* nocapture noundef readonly %key, %struct.bn_gencb_st* noundef %cb) local_unnamed_addr #0 {
entry:
  %call = tail call fastcc i32 @rsa_validate_keypair_multiprime(%struct.rsa_st* noundef %key, %struct.bn_gencb_st* noundef %cb) #3
  ret i32 %call
}

declare void @ERR_new() local_unnamed_addr #1

declare void @ERR_set_debug(i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #1

declare void @ERR_set_error(i32 noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @sk_RSA_PRIME_INFO_num(%struct.stack_st_RSA_PRIME_INFO* noundef %sk) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.stack_st_RSA_PRIME_INFO* %sk to %struct.stack_st*
  %call = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %0) #2
  ret i32 %call
}

declare i32 @ossl_rsa_multip_cap(i32 noundef) local_unnamed_addr #1

declare i32 @BN_num_bits(%struct.bignum_st* noundef) local_unnamed_addr #1

declare %struct.bignum_st* @BN_new() local_unnamed_addr #1

declare %struct.bignum_ctx* @BN_CTX_new_ex(%struct.ossl_lib_ctx_st* noundef) local_unnamed_addr #1

declare i32 @BN_is_one(%struct.bignum_st* noundef) local_unnamed_addr #1

declare i32 @BN_is_odd(%struct.bignum_st* noundef) local_unnamed_addr #1

declare i32 @BN_check_prime(%struct.bignum_st* noundef, %struct.bignum_ctx* noundef, %struct.bn_gencb_st* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.rsa_prime_info_st* @sk_RSA_PRIME_INFO_value(%struct.stack_st_RSA_PRIME_INFO* noundef %sk, i32 noundef %idx) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.stack_st_RSA_PRIME_INFO* %sk to %struct.stack_st*
  %call = tail call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %0, i32 noundef %idx) #2
  %1 = bitcast i8* %call to %struct.rsa_prime_info_st*
  ret %struct.rsa_prime_info_st* %1
}

declare i32 @BN_mul(%struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_ctx* noundef) local_unnamed_addr #1

declare i32 @BN_cmp(%struct.bignum_st* noundef, %struct.bignum_st* noundef) local_unnamed_addr #1

declare i32 @BN_sub(%struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef) local_unnamed_addr #1

declare %struct.bignum_st* @BN_value_one() local_unnamed_addr #1

declare i32 @BN_gcd(%struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_ctx* noundef) local_unnamed_addr #1

declare i32 @BN_div(%struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_ctx* noundef) local_unnamed_addr #1

declare i32 @BN_mod_mul(%struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_ctx* noundef) local_unnamed_addr #1

declare %struct.bignum_st* @BN_mod_inverse(%struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_ctx* noundef) local_unnamed_addr #1

declare void @BN_free(%struct.bignum_st* noundef) local_unnamed_addr #1

declare void @BN_CTX_free(%struct.bignum_ctx* noundef) local_unnamed_addr #1

declare i32 @OPENSSL_sk_num(%struct.stack_st* noundef) local_unnamed_addr #1

declare i8* @OPENSSL_sk_value(%struct.stack_st* noundef, i32 noundef) local_unnamed_addr #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nobuiltin nounwind "no-builtins" }
attributes #3 = { nobuiltin "no-builtins" }

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
!14 = !{!5, !9, i64 40}
!15 = !{!5, !9, i64 48}
!16 = !{!5, !9, i64 56}
!17 = !{!5, !6, i64 16}
!18 = !{!5, !9, i64 136}
!19 = !{!5, !9, i64 8}
!20 = !{!21, !9, i64 0}
!21 = !{!"rsa_prime_info_st", !9, i64 0, !9, i64 8, !9, i64 16, !9, i64 24, !9, i64 32}
!22 = distinct !{!22, !23}
!23 = !{!"llvm.loop.mustprogress"}
!24 = distinct !{!24, !23}
!25 = distinct !{!25, !23}
!26 = !{!5, !9, i64 80}
!27 = !{!5, !9, i64 88}
!28 = !{!5, !9, i64 96}
!29 = !{!21, !9, i64 8}
!30 = !{!21, !9, i64 24}
!31 = !{!21, !9, i64 16}
!32 = distinct !{!32, !23}
