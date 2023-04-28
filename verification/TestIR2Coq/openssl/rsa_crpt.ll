; ModuleID = 'crypto/rsa/rsa_crpt.c'
source_filename = "crypto/rsa/rsa_crpt.c"
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

@.str = private unnamed_addr constant [22 x i8] c"crypto/rsa/rsa_crpt.c\00", align 1
@__func__.RSA_setup_blinding = private unnamed_addr constant [19 x i8] c"RSA_setup_blinding\00", align 1

; Function Attrs: noinline nounwind uwtable
define i32 @RSA_bits(%struct.rsa_st* nocapture noundef readonly %r) local_unnamed_addr #0 {
entry:
  %n = getelementptr inbounds %struct.rsa_st, %struct.rsa_st* %r, i64 0, i32 5
  %0 = load %struct.bignum_st*, %struct.bignum_st** %n, align 8, !tbaa !4
  %call = tail call i32 @BN_num_bits(%struct.bignum_st* noundef %0) #3
  ret i32 %call
}

declare i32 @BN_num_bits(%struct.bignum_st* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define i32 @RSA_size(%struct.rsa_st* nocapture noundef readonly %r) local_unnamed_addr #0 {
entry:
  %n = getelementptr inbounds %struct.rsa_st, %struct.rsa_st* %r, i64 0, i32 5
  %0 = load %struct.bignum_st*, %struct.bignum_st** %n, align 8, !tbaa !4
  %call = tail call i32 @BN_num_bits(%struct.bignum_st* noundef %0) #3
  %add = add nsw i32 %call, 7
  %div = sdiv i32 %add, 8
  ret i32 %div
}

; Function Attrs: noinline nounwind uwtable
define i32 @RSA_public_encrypt(i32 noundef %flen, i8* noundef %from, i8* noundef %to, %struct.rsa_st* noundef %rsa, i32 noundef %padding) local_unnamed_addr #0 {
entry:
  %meth = getelementptr inbounds %struct.rsa_st, %struct.rsa_st* %rsa, i64 0, i32 3
  %0 = load %struct.rsa_meth_st*, %struct.rsa_meth_st** %meth, align 8, !tbaa !13
  %rsa_pub_enc = getelementptr inbounds %struct.rsa_meth_st, %struct.rsa_meth_st* %0, i64 0, i32 1
  %1 = load i32 (i32, i8*, i8*, %struct.rsa_st*, i32)*, i32 (i32, i8*, i8*, %struct.rsa_st*, i32)** %rsa_pub_enc, align 8, !tbaa !14
  %call = tail call i32 %1(i32 noundef %flen, i8* noundef %from, i8* noundef %to, %struct.rsa_st* noundef %rsa, i32 noundef %padding) #3
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define i32 @RSA_private_encrypt(i32 noundef %flen, i8* noundef %from, i8* noundef %to, %struct.rsa_st* noundef %rsa, i32 noundef %padding) local_unnamed_addr #0 {
entry:
  %meth = getelementptr inbounds %struct.rsa_st, %struct.rsa_st* %rsa, i64 0, i32 3
  %0 = load %struct.rsa_meth_st*, %struct.rsa_meth_st** %meth, align 8, !tbaa !13
  %rsa_priv_enc = getelementptr inbounds %struct.rsa_meth_st, %struct.rsa_meth_st* %0, i64 0, i32 3
  %1 = load i32 (i32, i8*, i8*, %struct.rsa_st*, i32)*, i32 (i32, i8*, i8*, %struct.rsa_st*, i32)** %rsa_priv_enc, align 8, !tbaa !16
  %call = tail call i32 %1(i32 noundef %flen, i8* noundef %from, i8* noundef %to, %struct.rsa_st* noundef %rsa, i32 noundef %padding) #3
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define i32 @RSA_private_decrypt(i32 noundef %flen, i8* noundef %from, i8* noundef %to, %struct.rsa_st* noundef %rsa, i32 noundef %padding) local_unnamed_addr #0 {
entry:
  %meth = getelementptr inbounds %struct.rsa_st, %struct.rsa_st* %rsa, i64 0, i32 3
  %0 = load %struct.rsa_meth_st*, %struct.rsa_meth_st** %meth, align 8, !tbaa !13
  %rsa_priv_dec = getelementptr inbounds %struct.rsa_meth_st, %struct.rsa_meth_st* %0, i64 0, i32 4
  %1 = load i32 (i32, i8*, i8*, %struct.rsa_st*, i32)*, i32 (i32, i8*, i8*, %struct.rsa_st*, i32)** %rsa_priv_dec, align 8, !tbaa !17
  %call = tail call i32 %1(i32 noundef %flen, i8* noundef %from, i8* noundef %to, %struct.rsa_st* noundef %rsa, i32 noundef %padding) #3
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define i32 @RSA_public_decrypt(i32 noundef %flen, i8* noundef %from, i8* noundef %to, %struct.rsa_st* noundef %rsa, i32 noundef %padding) local_unnamed_addr #0 {
entry:
  %meth = getelementptr inbounds %struct.rsa_st, %struct.rsa_st* %rsa, i64 0, i32 3
  %0 = load %struct.rsa_meth_st*, %struct.rsa_meth_st** %meth, align 8, !tbaa !13
  %rsa_pub_dec = getelementptr inbounds %struct.rsa_meth_st, %struct.rsa_meth_st* %0, i64 0, i32 2
  %1 = load i32 (i32, i8*, i8*, %struct.rsa_st*, i32)*, i32 (i32, i8*, i8*, %struct.rsa_st*, i32)** %rsa_pub_dec, align 8, !tbaa !18
  %call = tail call i32 %1(i32 noundef %flen, i8* noundef %from, i8* noundef %to, %struct.rsa_st* noundef %rsa, i32 noundef %padding) #3
  ret i32 %call
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define i32 @RSA_flags(%struct.rsa_st* noundef readonly %r) local_unnamed_addr #2 {
entry:
  %cmp = icmp eq %struct.rsa_st* %r, null
  br i1 %cmp, label %cond.end, label %cond.false

cond.false:                                       ; preds = %entry
  %meth = getelementptr inbounds %struct.rsa_st, %struct.rsa_st* %r, i64 0, i32 3
  %0 = load %struct.rsa_meth_st*, %struct.rsa_meth_st** %meth, align 8, !tbaa !13
  %flags = getelementptr inbounds %struct.rsa_meth_st, %struct.rsa_meth_st* %0, i64 0, i32 9
  %1 = load i32, i32* %flags, align 8, !tbaa !19
  br label %cond.end

cond.end:                                         ; preds = %entry, %cond.false
  %cond = phi i32 [ %1, %cond.false ], [ 0, %entry ]
  ret i32 %cond
}

; Function Attrs: noinline nounwind uwtable
define void @RSA_blinding_off(%struct.rsa_st* nocapture noundef %rsa) local_unnamed_addr #0 {
entry:
  %blinding = getelementptr inbounds %struct.rsa_st, %struct.rsa_st* %rsa, i64 0, i32 22
  %0 = load %struct.bn_blinding_st*, %struct.bn_blinding_st** %blinding, align 8, !tbaa !20
  tail call void @BN_BLINDING_free(%struct.bn_blinding_st* noundef %0) #3
  store %struct.bn_blinding_st* null, %struct.bn_blinding_st** %blinding, align 8, !tbaa !20
  %flags = getelementptr inbounds %struct.rsa_st, %struct.rsa_st* %rsa, i64 0, i32 18
  %1 = load i32, i32* %flags, align 4, !tbaa !21
  %and = and i32 %1, -137
  %or = or i32 %and, 128
  store i32 %or, i32* %flags, align 4, !tbaa !21
  ret void
}

declare void @BN_BLINDING_free(%struct.bn_blinding_st* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define i32 @RSA_blinding_on(%struct.rsa_st* nocapture noundef %rsa, %struct.bignum_ctx* noundef %ctx) local_unnamed_addr #0 {
entry:
  %blinding = getelementptr inbounds %struct.rsa_st, %struct.rsa_st* %rsa, i64 0, i32 22
  %0 = load %struct.bn_blinding_st*, %struct.bn_blinding_st** %blinding, align 8, !tbaa !20
  %cmp.not = icmp eq %struct.bn_blinding_st* %0, null
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  tail call void @RSA_blinding_off(%struct.rsa_st* noundef nonnull %rsa) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %call = tail call %struct.bn_blinding_st* @RSA_setup_blinding(%struct.rsa_st* noundef nonnull %rsa, %struct.bignum_ctx* noundef %ctx) #4
  store %struct.bn_blinding_st* %call, %struct.bn_blinding_st** %blinding, align 8, !tbaa !20
  %cmp3 = icmp eq %struct.bn_blinding_st* %call, null
  br i1 %cmp3, label %err, label %if.end5

if.end5:                                          ; preds = %if.end
  %flags = getelementptr inbounds %struct.rsa_st, %struct.rsa_st* %rsa, i64 0, i32 18
  %1 = load i32, i32* %flags, align 4, !tbaa !21
  %or = and i32 %1, -137
  %and = or i32 %or, 8
  store i32 %and, i32* %flags, align 4, !tbaa !21
  br label %err

err:                                              ; preds = %if.end, %if.end5
  %ret.0 = phi i32 [ 0, %if.end ], [ 1, %if.end5 ]
  ret i32 %ret.0
}

; Function Attrs: noinline nounwind uwtable
define %struct.bn_blinding_st* @RSA_setup_blinding(%struct.rsa_st* nocapture noundef readonly %rsa, %struct.bignum_ctx* noundef %in_ctx) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.bignum_ctx* %in_ctx, null
  br i1 %cmp, label %if.then, label %if.end3

if.then:                                          ; preds = %entry
  %libctx = getelementptr inbounds %struct.rsa_st, %struct.rsa_st* %rsa, i64 0, i32 1
  %0 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** %libctx, align 8, !tbaa !22
  %call = tail call %struct.bignum_ctx* @BN_CTX_new_ex(%struct.ossl_lib_ctx_st* noundef %0) #3
  %cmp1 = icmp eq %struct.bignum_ctx* %call, null
  br i1 %cmp1, label %cleanup34, label %if.end3

if.end3:                                          ; preds = %entry, %if.then
  %ctx.0 = phi %struct.bignum_ctx* [ %call, %if.then ], [ %in_ctx, %entry ]
  tail call void @BN_CTX_start(%struct.bignum_ctx* noundef nonnull %ctx.0) #3
  %call4 = tail call %struct.bignum_st* @BN_CTX_get(%struct.bignum_ctx* noundef nonnull %ctx.0) #3
  %cmp5 = icmp eq %struct.bignum_st* %call4, null
  br i1 %cmp5, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.end3
  tail call void @ERR_new() #3
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 132, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.RSA_setup_blinding, i64 0, i64 0)) #3
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 4, i32 noundef 786688, i8* noundef null) #3
  br label %err

if.end7:                                          ; preds = %if.end3
  %e8 = getelementptr inbounds %struct.rsa_st, %struct.rsa_st* %rsa, i64 0, i32 6
  %1 = load %struct.bignum_st*, %struct.bignum_st** %e8, align 8, !tbaa !23
  %cmp9 = icmp eq %struct.bignum_st* %1, null
  br i1 %cmp9, label %if.then10, label %if.end17

if.then10:                                        ; preds = %if.end7
  %d = getelementptr inbounds %struct.rsa_st, %struct.rsa_st* %rsa, i64 0, i32 7
  %2 = load %struct.bignum_st*, %struct.bignum_st** %d, align 8, !tbaa !24
  %p = getelementptr inbounds %struct.rsa_st, %struct.rsa_st* %rsa, i64 0, i32 8
  %3 = load %struct.bignum_st*, %struct.bignum_st** %p, align 8, !tbaa !25
  %q = getelementptr inbounds %struct.rsa_st, %struct.rsa_st* %rsa, i64 0, i32 9
  %4 = load %struct.bignum_st*, %struct.bignum_st** %q, align 8, !tbaa !26
  %call11 = tail call fastcc %struct.bignum_st* @rsa_get_public_exp(%struct.bignum_st* noundef %2, %struct.bignum_st* noundef %3, %struct.bignum_st* noundef %4, %struct.bignum_ctx* noundef nonnull %ctx.0) #4
  %cmp12 = icmp eq %struct.bignum_st* %call11, null
  br i1 %cmp12, label %if.then13, label %if.end17

if.then13:                                        ; preds = %if.then10
  tail call void @ERR_new() #3
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 139, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.RSA_setup_blinding, i64 0, i64 0)) #3
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 4, i32 noundef 140, i8* noundef null) #3
  br label %err

if.end17:                                         ; preds = %if.end7, %if.then10
  %e.0 = phi %struct.bignum_st* [ %call11, %if.then10 ], [ %1, %if.end7 ]
  %call18 = tail call %struct.bignum_st* @BN_new() #3
  %cmp19 = icmp eq %struct.bignum_st* %call18, null
  br i1 %cmp19, label %cleanup, label %cleanup.cont

cleanup:                                          ; preds = %if.end17
  tail call void @ERR_new() #3
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 150, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.RSA_setup_blinding, i64 0, i64 0)) #3
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 4, i32 noundef 786688, i8* noundef null) #3
  br label %err

cleanup.cont:                                     ; preds = %if.end17
  %n22 = getelementptr inbounds %struct.rsa_st, %struct.rsa_st* %rsa, i64 0, i32 5
  %5 = load %struct.bignum_st*, %struct.bignum_st** %n22, align 8, !tbaa !4
  tail call void @BN_with_flags(%struct.bignum_st* noundef nonnull %call18, %struct.bignum_st* noundef %5, i32 noundef 4) #3
  %meth = getelementptr inbounds %struct.rsa_st, %struct.rsa_st* %rsa, i64 0, i32 3
  %6 = load %struct.rsa_meth_st*, %struct.rsa_meth_st** %meth, align 8, !tbaa !13
  %bn_mod_exp = getelementptr inbounds %struct.rsa_meth_st, %struct.rsa_meth_st* %6, i64 0, i32 6
  %7 = load i32 (%struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*, %struct.bn_mont_ctx_st*)*, i32 (%struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*, %struct.bn_mont_ctx_st*)** %bn_mod_exp, align 8, !tbaa !27
  %_method_mod_n = getelementptr inbounds %struct.rsa_st, %struct.rsa_st* %rsa, i64 0, i32 19
  %8 = load %struct.bn_mont_ctx_st*, %struct.bn_mont_ctx_st** %_method_mod_n, align 8, !tbaa !28
  %call23 = tail call %struct.bn_blinding_st* @BN_BLINDING_create_param(%struct.bn_blinding_st* noundef null, %struct.bignum_st* noundef nonnull %e.0, %struct.bignum_st* noundef nonnull %call18, %struct.bignum_ctx* noundef nonnull %ctx.0, i32 (%struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*, %struct.bn_mont_ctx_st*)* noundef %7, %struct.bn_mont_ctx_st* noundef %8) #3
  tail call void @BN_free(%struct.bignum_st* noundef nonnull %call18) #3
  %cmp24 = icmp eq %struct.bn_blinding_st* %call23, null
  br i1 %cmp24, label %if.then25, label %if.end26

if.then25:                                        ; preds = %cleanup.cont
  tail call void @ERR_new() #3
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 161, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.RSA_setup_blinding, i64 0, i64 0)) #3
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 4, i32 noundef 524291, i8* noundef null) #3
  br label %err

if.end26:                                         ; preds = %cleanup.cont
  tail call void @BN_BLINDING_set_current_thread(%struct.bn_blinding_st* noundef nonnull %call23) #3
  br label %err

err:                                              ; preds = %cleanup, %if.end26, %if.then25, %if.then13, %if.then6
  %e.1 = phi %struct.bignum_st* [ null, %if.then6 ], [ null, %if.then13 ], [ %e.0, %cleanup ], [ %e.0, %if.then25 ], [ %e.0, %if.end26 ]
  %ret.1 = phi %struct.bn_blinding_st* [ null, %if.then6 ], [ null, %if.then13 ], [ null, %cleanup ], [ null, %if.then25 ], [ %call23, %if.end26 ]
  tail call void @BN_CTX_end(%struct.bignum_ctx* noundef nonnull %ctx.0) #3
  %cmp27.not = icmp eq %struct.bignum_ctx* %ctx.0, %in_ctx
  br i1 %cmp27.not, label %if.end29, label %if.then28

if.then28:                                        ; preds = %err
  tail call void @BN_CTX_free(%struct.bignum_ctx* noundef nonnull %ctx.0) #3
  br label %if.end29

if.end29:                                         ; preds = %if.then28, %err
  %e30 = getelementptr inbounds %struct.rsa_st, %struct.rsa_st* %rsa, i64 0, i32 6
  %9 = load %struct.bignum_st*, %struct.bignum_st** %e30, align 8, !tbaa !23
  %cmp31.not = icmp eq %struct.bignum_st* %e.1, %9
  br i1 %cmp31.not, label %cleanup34, label %if.then32

if.then32:                                        ; preds = %if.end29
  tail call void @BN_free(%struct.bignum_st* noundef %e.1) #3
  br label %cleanup34

cleanup34:                                        ; preds = %if.end29, %if.then32, %if.then
  %retval.0 = phi %struct.bn_blinding_st* [ null, %if.then ], [ %ret.1, %if.then32 ], [ %ret.1, %if.end29 ]
  ret %struct.bn_blinding_st* %retval.0
}

declare %struct.bignum_ctx* @BN_CTX_new_ex(%struct.ossl_lib_ctx_st* noundef) local_unnamed_addr #1

declare void @BN_CTX_start(%struct.bignum_ctx* noundef) local_unnamed_addr #1

declare %struct.bignum_st* @BN_CTX_get(%struct.bignum_ctx* noundef) local_unnamed_addr #1

declare void @ERR_new() local_unnamed_addr #1

declare void @ERR_set_debug(i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #1

declare void @ERR_set_error(i32 noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.bignum_st* @rsa_get_public_exp(%struct.bignum_st* noundef %d, %struct.bignum_st* noundef %p, %struct.bignum_st* noundef %q, %struct.bignum_ctx* noundef %ctx) unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.bignum_st* %d, null
  %cmp1 = icmp eq %struct.bignum_st* %p, null
  %or.cond = or i1 %cmp, %cmp1
  %cmp3 = icmp eq %struct.bignum_st* %q, null
  %or.cond26 = or i1 %or.cond, %cmp3
  br i1 %or.cond26, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  tail call void @BN_CTX_start(%struct.bignum_ctx* noundef %ctx) #3
  %call = tail call %struct.bignum_st* @BN_CTX_get(%struct.bignum_ctx* noundef %ctx) #3
  %call4 = tail call %struct.bignum_st* @BN_CTX_get(%struct.bignum_ctx* noundef %ctx) #3
  %call5 = tail call %struct.bignum_st* @BN_CTX_get(%struct.bignum_ctx* noundef %ctx) #3
  %cmp6 = icmp eq %struct.bignum_st* %call5, null
  br i1 %cmp6, label %err, label %if.end8

if.end8:                                          ; preds = %if.end
  %call9 = tail call %struct.bignum_st* @BN_value_one() #3
  %call10 = tail call i32 @BN_sub(%struct.bignum_st* noundef %call4, %struct.bignum_st* noundef nonnull %p, %struct.bignum_st* noundef %call9) #3
  %tobool.not = icmp eq i32 %call10, 0
  br i1 %tobool.not, label %err, label %if.end12

if.end12:                                         ; preds = %if.end8
  %call13 = tail call %struct.bignum_st* @BN_value_one() #3
  %call14 = tail call i32 @BN_sub(%struct.bignum_st* noundef nonnull %call5, %struct.bignum_st* noundef nonnull %q, %struct.bignum_st* noundef %call13) #3
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %err, label %if.end17

if.end17:                                         ; preds = %if.end12
  %call18 = tail call i32 @BN_mul(%struct.bignum_st* noundef %call, %struct.bignum_st* noundef %call4, %struct.bignum_st* noundef nonnull %call5, %struct.bignum_ctx* noundef %ctx) #3
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %err, label %if.end21

if.end21:                                         ; preds = %if.end17
  %call22 = tail call %struct.bignum_st* @BN_mod_inverse(%struct.bignum_st* noundef null, %struct.bignum_st* noundef nonnull %d, %struct.bignum_st* noundef %call, %struct.bignum_ctx* noundef %ctx) #3
  br label %err

err:                                              ; preds = %if.end17, %if.end12, %if.end8, %if.end, %if.end21
  %ret.0 = phi %struct.bignum_st* [ null, %if.end ], [ %call22, %if.end21 ], [ null, %if.end17 ], [ null, %if.end12 ], [ null, %if.end8 ]
  tail call void @BN_CTX_end(%struct.bignum_ctx* noundef %ctx) #3
  br label %cleanup

cleanup:                                          ; preds = %entry, %err
  %retval.0 = phi %struct.bignum_st* [ %ret.0, %err ], [ null, %entry ]
  ret %struct.bignum_st* %retval.0
}

declare %struct.bignum_st* @BN_new() local_unnamed_addr #1

declare void @BN_with_flags(%struct.bignum_st* noundef, %struct.bignum_st* noundef, i32 noundef) local_unnamed_addr #1

declare %struct.bn_blinding_st* @BN_BLINDING_create_param(%struct.bn_blinding_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_ctx* noundef, i32 (%struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*, %struct.bn_mont_ctx_st*)* noundef, %struct.bn_mont_ctx_st* noundef) local_unnamed_addr #1

declare void @BN_free(%struct.bignum_st* noundef) local_unnamed_addr #1

declare void @BN_BLINDING_set_current_thread(%struct.bn_blinding_st* noundef) local_unnamed_addr #1

declare void @BN_CTX_end(%struct.bignum_ctx* noundef) local_unnamed_addr #1

declare void @BN_CTX_free(%struct.bignum_ctx* noundef) local_unnamed_addr #1

declare i32 @BN_sub(%struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef) local_unnamed_addr #1

declare %struct.bignum_st* @BN_value_one() local_unnamed_addr #1

declare i32 @BN_mul(%struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_ctx* noundef) local_unnamed_addr #1

declare %struct.bignum_st* @BN_mod_inverse(%struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_ctx* noundef) local_unnamed_addr #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nobuiltin nounwind "no-builtins" }
attributes #4 = { nobuiltin "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{!"clang version 14.0.0"}
!4 = !{!5, !9, i64 40}
!5 = !{!"rsa_st", !6, i64 0, !9, i64 8, !6, i64 16, !9, i64 24, !9, i64 32, !9, i64 40, !9, i64 48, !9, i64 56, !9, i64 64, !9, i64 72, !9, i64 80, !9, i64 88, !9, i64 96, !10, i64 104, !9, i64 128, !9, i64 136, !12, i64 144, !7, i64 160, !6, i64 164, !9, i64 168, !9, i64 176, !9, i64 184, !9, i64 192, !9, i64 200, !9, i64 208, !6, i64 216}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!"any pointer", !7, i64 0}
!10 = !{!"rsa_pss_params_30_st", !6, i64 0, !11, i64 4, !6, i64 12, !6, i64 16}
!11 = !{!"", !6, i64 0, !6, i64 4}
!12 = !{!"crypto_ex_data_st", !9, i64 0, !9, i64 8}
!13 = !{!5, !9, i64 24}
!14 = !{!15, !9, i64 8}
!15 = !{!"rsa_meth_st", !9, i64 0, !9, i64 8, !9, i64 16, !9, i64 24, !9, i64 32, !9, i64 40, !9, i64 48, !9, i64 56, !9, i64 64, !6, i64 72, !9, i64 80, !9, i64 88, !9, i64 96, !9, i64 104, !9, i64 112}
!16 = !{!15, !9, i64 24}
!17 = !{!15, !9, i64 32}
!18 = !{!15, !9, i64 16}
!19 = !{!15, !6, i64 72}
!20 = !{!5, !9, i64 192}
!21 = !{!5, !6, i64 164}
!22 = !{!5, !9, i64 8}
!23 = !{!5, !9, i64 48}
!24 = !{!5, !9, i64 56}
!25 = !{!5, !9, i64 64}
!26 = !{!5, !9, i64 72}
!27 = !{!15, !9, i64 48}
!28 = !{!5, !9, i64 168}
