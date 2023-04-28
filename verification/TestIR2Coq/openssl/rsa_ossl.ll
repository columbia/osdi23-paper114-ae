; ModuleID = 'crypto/rsa/rsa_ossl.c'
source_filename = "crypto/rsa/rsa_ossl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rsa_meth_st = type { i8*, i32 (i32, i8*, i8*, %struct.rsa_st*, i32)*, i32 (i32, i8*, i8*, %struct.rsa_st*, i32)*, i32 (i32, i8*, i8*, %struct.rsa_st*, i32)*, i32 (i32, i8*, i8*, %struct.rsa_st*, i32)*, i32 (%struct.bignum_st*, %struct.bignum_st*, %struct.rsa_st*, %struct.bignum_ctx*)*, i32 (%struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*, %struct.bn_mont_ctx_st*)*, i32 (%struct.rsa_st*)*, i32 (%struct.rsa_st*)*, i32, i8*, i32 (i32, i8*, i32, i8*, i32*, %struct.rsa_st*)*, i32 (i32, i8*, i32, i8*, i32, %struct.rsa_st*)*, i32 (%struct.rsa_st*, i32, %struct.bignum_st*, %struct.bn_gencb_st*)*, i32 (%struct.rsa_st*, i32, i32, %struct.bignum_st*, %struct.bn_gencb_st*)* }
%struct.rsa_st = type { i32, %struct.ossl_lib_ctx_st*, i32, %struct.rsa_meth_st*, %struct.engine_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.rsa_pss_params_30_st, %struct.rsa_pss_params_st*, %struct.stack_st_RSA_PRIME_INFO*, %struct.crypto_ex_data_st, i32, i32, %struct.bn_mont_ctx_st*, %struct.bn_mont_ctx_st*, %struct.bn_mont_ctx_st*, %struct.bn_blinding_st*, %struct.bn_blinding_st*, i8*, i32 }
%struct.ossl_lib_ctx_st = type opaque
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
%struct.bignum_ctx = type opaque
%struct.bn_gencb_st = type opaque
%struct.evp_md_st = type opaque
%struct.rsa_prime_info_st = type { %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bn_mont_ctx_st* }
%struct.stack_st = type opaque

@default_RSA_meth = internal unnamed_addr global %struct.rsa_meth_st* @rsa_pkcs1_ossl_meth, align 8
@rsa_pkcs1_ossl_meth = internal global %struct.rsa_meth_st { i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i32 0, i32 0), i32 (i32, i8*, i8*, %struct.rsa_st*, i32)* @rsa_ossl_public_encrypt, i32 (i32, i8*, i8*, %struct.rsa_st*, i32)* @rsa_ossl_public_decrypt, i32 (i32, i8*, i8*, %struct.rsa_st*, i32)* @rsa_ossl_private_encrypt, i32 (i32, i8*, i8*, %struct.rsa_st*, i32)* @rsa_ossl_private_decrypt, i32 (%struct.bignum_st*, %struct.bignum_st*, %struct.rsa_st*, %struct.bignum_ctx*)* @rsa_ossl_mod_exp, i32 (%struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*, %struct.bn_mont_ctx_st*)* @BN_mod_exp_mont, i32 (%struct.rsa_st*)* @rsa_ossl_init, i32 (%struct.rsa_st*)* @rsa_ossl_finish, i32 1024, i8* null, i32 (i32, i8*, i32, i8*, i32*, %struct.rsa_st*)* null, i32 (i32, i8*, i32, i8*, i32, %struct.rsa_st*)* null, i32 (%struct.rsa_st*, i32, %struct.bignum_st*, %struct.bn_gencb_st*)* null, i32 (%struct.rsa_st*, i32, i32, %struct.bignum_st*, %struct.bn_gencb_st*)* null }, align 8
@.str = private unnamed_addr constant [19 x i8] c"OpenSSL PKCS#1 RSA\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"crypto/rsa/rsa_ossl.c\00", align 1
@__func__.rsa_ossl_public_encrypt = private unnamed_addr constant [24 x i8] c"rsa_ossl_public_encrypt\00", align 1
@__func__.rsa_ossl_public_decrypt = private unnamed_addr constant [24 x i8] c"rsa_ossl_public_decrypt\00", align 1
@__func__.rsa_ossl_private_encrypt = private unnamed_addr constant [25 x i8] c"rsa_ossl_private_encrypt\00", align 1
@__func__.rsa_ossl_private_decrypt = private unnamed_addr constant [25 x i8] c"rsa_ossl_private_decrypt\00", align 1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define void @RSA_set_default_method(%struct.rsa_meth_st* noundef %meth) local_unnamed_addr #0 {
entry:
  store %struct.rsa_meth_st* %meth, %struct.rsa_meth_st** @default_RSA_meth, align 8, !tbaa !4
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define %struct.rsa_meth_st* @RSA_get_default_method() local_unnamed_addr #1 {
entry:
  %0 = load %struct.rsa_meth_st*, %struct.rsa_meth_st** @default_RSA_meth, align 8, !tbaa !4
  ret %struct.rsa_meth_st* %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define nonnull %struct.rsa_meth_st* @RSA_PKCS1_OpenSSL() local_unnamed_addr #2 {
entry:
  ret %struct.rsa_meth_st* @rsa_pkcs1_ossl_meth
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define noalias %struct.rsa_meth_st* @RSA_null_method() local_unnamed_addr #2 {
entry:
  ret %struct.rsa_meth_st* null
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @rsa_ossl_public_encrypt(i32 noundef %flen, i8* noundef %from, i8* noundef %to, %struct.rsa_st* noundef %rsa, i32 noundef %padding) #3 {
entry:
  %n = getelementptr inbounds %struct.rsa_st, %struct.rsa_st* %rsa, i64 0, i32 5
  %0 = load %struct.bignum_st*, %struct.bignum_st** %n, align 8, !tbaa !8
  %call = tail call i32 @BN_num_bits(%struct.bignum_st* noundef %0) #8
  %cmp = icmp sgt i32 %call, 16384
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 noundef 83, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.rsa_ossl_public_encrypt, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 4, i32 noundef 105, i8* noundef null) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = load %struct.bignum_st*, %struct.bignum_st** %n, align 8, !tbaa !8
  %e = getelementptr inbounds %struct.rsa_st, %struct.rsa_st* %rsa, i64 0, i32 6
  %2 = load %struct.bignum_st*, %struct.bignum_st** %e, align 8, !tbaa !14
  %call2 = tail call i32 @BN_ucmp(%struct.bignum_st* noundef %1, %struct.bignum_st* noundef %2) #8
  %cmp3 = icmp slt i32 %call2, 1
  br i1 %cmp3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 noundef 88, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.rsa_ossl_public_encrypt, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 4, i32 noundef 101, i8* noundef null) #8
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %3 = load %struct.bignum_st*, %struct.bignum_st** %n, align 8, !tbaa !8
  %call7 = tail call i32 @BN_num_bits(%struct.bignum_st* noundef %3) #8
  %cmp8 = icmp sgt i32 %call7, 3072
  br i1 %cmp8, label %if.then9, label %if.end15

if.then9:                                         ; preds = %if.end5
  %4 = load %struct.bignum_st*, %struct.bignum_st** %e, align 8, !tbaa !14
  %call11 = tail call i32 @BN_num_bits(%struct.bignum_st* noundef %4) #8
  %cmp12 = icmp sgt i32 %call11, 64
  br i1 %cmp12, label %if.then13, label %if.end15

if.then13:                                        ; preds = %if.then9
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 noundef 95, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.rsa_ossl_public_encrypt, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 4, i32 noundef 101, i8* noundef null) #8
  br label %cleanup

if.end15:                                         ; preds = %if.then9, %if.end5
  %libctx = getelementptr inbounds %struct.rsa_st, %struct.rsa_st* %rsa, i64 0, i32 1
  %5 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** %libctx, align 8, !tbaa !15
  %call16 = tail call %struct.bignum_ctx* @BN_CTX_new_ex(%struct.ossl_lib_ctx_st* noundef %5) #8
  %cmp17 = icmp eq %struct.bignum_ctx* %call16, null
  br i1 %cmp17, label %err, label %if.end19

if.end19:                                         ; preds = %if.end15
  tail call void @BN_CTX_start(%struct.bignum_ctx* noundef nonnull %call16) #8
  %call20 = tail call %struct.bignum_st* @BN_CTX_get(%struct.bignum_ctx* noundef nonnull %call16) #8
  %call21 = tail call %struct.bignum_st* @BN_CTX_get(%struct.bignum_ctx* noundef nonnull %call16) #8
  %6 = load %struct.bignum_st*, %struct.bignum_st** %n, align 8, !tbaa !8
  %call23 = tail call i32 @BN_num_bits(%struct.bignum_st* noundef %6) #8
  %add = add nsw i32 %call23, 7
  %div = sdiv i32 %add, 8
  %conv = sext i32 %div to i64
  %call24 = tail call i8* @CRYPTO_malloc(i64 noundef %conv, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 noundef 106) #8
  %cmp25 = icmp eq %struct.bignum_st* %call21, null
  %cmp27 = icmp eq i8* %call24, null
  %or.cond = select i1 %cmp25, i1 true, i1 %cmp27
  br i1 %or.cond, label %if.then29, label %if.end30

if.then29:                                        ; preds = %if.end19
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 noundef 108, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.rsa_ossl_public_encrypt, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 4, i32 noundef 786688, i8* noundef null) #8
  br label %err

if.end30:                                         ; preds = %if.end19
  switch i32 %padding, label %sw.default [
    i32 1, label %sw.bb
    i32 4, label %sw.bb33
    i32 3, label %sw.bb36
  ]

sw.bb:                                            ; preds = %if.end30
  %7 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** %libctx, align 8, !tbaa !15
  %call32 = tail call i32 @ossl_rsa_padding_add_PKCS1_type_2_ex(%struct.ossl_lib_ctx_st* noundef %7, i8* noundef nonnull %call24, i32 noundef %div, i8* noundef %from, i32 noundef %flen) #8
  br label %sw.epilog

sw.bb33:                                          ; preds = %if.end30
  %8 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** %libctx, align 8, !tbaa !15
  %call35 = tail call i32 @ossl_rsa_padding_add_PKCS1_OAEP_mgf1_ex(%struct.ossl_lib_ctx_st* noundef %8, i8* noundef nonnull %call24, i32 noundef %div, i8* noundef %from, i32 noundef %flen, i8* noundef null, i32 noundef 0, %struct.evp_md_st* noundef null, %struct.evp_md_st* noundef null) #8
  br label %sw.epilog

sw.bb36:                                          ; preds = %if.end30
  %call37 = tail call i32 @RSA_padding_add_none(i8* noundef nonnull %call24, i32 noundef %div, i8* noundef %from, i32 noundef %flen) #8
  br label %sw.epilog

sw.default:                                       ; preds = %if.end30
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 noundef 126, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.rsa_ossl_public_encrypt, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 4, i32 noundef 118, i8* noundef null) #8
  br label %err

sw.epilog:                                        ; preds = %sw.bb36, %sw.bb33, %sw.bb
  %i.0 = phi i32 [ %call37, %sw.bb36 ], [ %call35, %sw.bb33 ], [ %call32, %sw.bb ]
  %cmp38 = icmp slt i32 %i.0, 1
  br i1 %cmp38, label %err, label %if.end41

if.end41:                                         ; preds = %sw.epilog
  %call42 = tail call %struct.bignum_st* @BN_bin2bn(i8* noundef nonnull %call24, i32 noundef %div, %struct.bignum_st* noundef %call20) #8
  %cmp43 = icmp eq %struct.bignum_st* %call42, null
  br i1 %cmp43, label %err, label %if.end46

if.end46:                                         ; preds = %if.end41
  %9 = load %struct.bignum_st*, %struct.bignum_st** %n, align 8, !tbaa !8
  %call48 = tail call i32 @BN_ucmp(%struct.bignum_st* noundef %call20, %struct.bignum_st* noundef %9) #8
  %cmp49 = icmp sgt i32 %call48, -1
  br i1 %cmp49, label %if.then51, label %if.end52

if.then51:                                        ; preds = %if.end46
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 noundef 137, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.rsa_ossl_public_encrypt, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 4, i32 noundef 132, i8* noundef null) #8
  br label %err

if.end52:                                         ; preds = %if.end46
  %flags = getelementptr inbounds %struct.rsa_st, %struct.rsa_st* %rsa, i64 0, i32 18
  %10 = load i32, i32* %flags, align 4, !tbaa !16
  %and = and i32 %10, 2
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end59, label %if.then53

if.then53:                                        ; preds = %if.end52
  %_method_mod_n = getelementptr inbounds %struct.rsa_st, %struct.rsa_st* %rsa, i64 0, i32 19
  %lock = getelementptr inbounds %struct.rsa_st, %struct.rsa_st* %rsa, i64 0, i32 24
  %11 = load i8*, i8** %lock, align 8, !tbaa !17
  %12 = load %struct.bignum_st*, %struct.bignum_st** %n, align 8, !tbaa !8
  %call55 = tail call %struct.bn_mont_ctx_st* @BN_MONT_CTX_set_locked(%struct.bn_mont_ctx_st** noundef nonnull %_method_mod_n, i8* noundef %11, %struct.bignum_st* noundef %12, %struct.bignum_ctx* noundef nonnull %call16) #8
  %tobool56.not = icmp eq %struct.bn_mont_ctx_st* %call55, null
  br i1 %tobool56.not, label %err, label %if.end59

if.end59:                                         ; preds = %if.then53, %if.end52
  %meth = getelementptr inbounds %struct.rsa_st, %struct.rsa_st* %rsa, i64 0, i32 3
  %13 = load %struct.rsa_meth_st*, %struct.rsa_meth_st** %meth, align 8, !tbaa !18
  %bn_mod_exp = getelementptr inbounds %struct.rsa_meth_st, %struct.rsa_meth_st* %13, i64 0, i32 6
  %14 = load i32 (%struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*, %struct.bn_mont_ctx_st*)*, i32 (%struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*, %struct.bn_mont_ctx_st*)** %bn_mod_exp, align 8, !tbaa !19
  %15 = load %struct.bignum_st*, %struct.bignum_st** %e, align 8, !tbaa !14
  %16 = load %struct.bignum_st*, %struct.bignum_st** %n, align 8, !tbaa !8
  %_method_mod_n62 = getelementptr inbounds %struct.rsa_st, %struct.rsa_st* %rsa, i64 0, i32 19
  %17 = load %struct.bn_mont_ctx_st*, %struct.bn_mont_ctx_st** %_method_mod_n62, align 8, !tbaa !21
  %call63 = tail call i32 %14(%struct.bignum_st* noundef nonnull %call21, %struct.bignum_st* noundef %call20, %struct.bignum_st* noundef %15, %struct.bignum_st* noundef %16, %struct.bignum_ctx* noundef nonnull %call16, %struct.bn_mont_ctx_st* noundef %17) #8
  %tobool64.not = icmp eq i32 %call63, 0
  br i1 %tobool64.not, label %err, label %if.end66

if.end66:                                         ; preds = %if.end59
  %call67 = tail call i32 @BN_bn2binpad(%struct.bignum_st* noundef nonnull %call21, i8* noundef %to, i32 noundef %div) #8
  br label %err

err:                                              ; preds = %if.end15, %if.end59, %if.then53, %if.end41, %sw.epilog, %if.end66, %if.then51, %sw.default, %if.then29
  %num.0 = phi i32 [ %div, %if.then29 ], [ %div, %sw.default ], [ %div, %sw.epilog ], [ %div, %if.end41 ], [ %div, %if.then51 ], [ %div, %if.end66 ], [ %div, %if.end59 ], [ %div, %if.then53 ], [ 0, %if.end15 ]
  %r.0 = phi i32 [ -1, %if.then29 ], [ -1, %sw.default ], [ -1, %sw.epilog ], [ -1, %if.end41 ], [ -1, %if.then51 ], [ %call67, %if.end66 ], [ -1, %if.end59 ], [ -1, %if.then53 ], [ -1, %if.end15 ]
  %buf.0 = phi i8* [ %call24, %if.then29 ], [ %call24, %sw.default ], [ %call24, %sw.epilog ], [ %call24, %if.end41 ], [ %call24, %if.then51 ], [ %call24, %if.end66 ], [ %call24, %if.end59 ], [ %call24, %if.then53 ], [ null, %if.end15 ]
  tail call void @BN_CTX_end(%struct.bignum_ctx* noundef %call16) #8
  tail call void @BN_CTX_free(%struct.bignum_ctx* noundef %call16) #8
  %conv68 = sext i32 %num.0 to i64
  tail call void @CRYPTO_clear_free(i8* noundef %buf.0, i64 noundef %conv68, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 noundef 158) #8
  br label %cleanup

cleanup:                                          ; preds = %err, %if.then13, %if.then4, %if.then
  %retval.0 = phi i32 [ -1, %if.then ], [ -1, %if.then4 ], [ -1, %if.then13 ], [ %r.0, %err ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @rsa_ossl_public_decrypt(i32 noundef %flen, i8* noundef %from, i8* noundef %to, %struct.rsa_st* noundef %rsa, i32 noundef %padding) #3 {
entry:
  %n = getelementptr inbounds %struct.rsa_st, %struct.rsa_st* %rsa, i64 0, i32 5
  %0 = load %struct.bignum_st*, %struct.bignum_st** %n, align 8, !tbaa !8
  %call = tail call i32 @BN_num_bits(%struct.bignum_st* noundef %0) #8
  %cmp = icmp sgt i32 %call, 16384
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 noundef 519, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.rsa_ossl_public_decrypt, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 4, i32 noundef 105, i8* noundef null) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = load %struct.bignum_st*, %struct.bignum_st** %n, align 8, !tbaa !8
  %e = getelementptr inbounds %struct.rsa_st, %struct.rsa_st* %rsa, i64 0, i32 6
  %2 = load %struct.bignum_st*, %struct.bignum_st** %e, align 8, !tbaa !14
  %call2 = tail call i32 @BN_ucmp(%struct.bignum_st* noundef %1, %struct.bignum_st* noundef %2) #8
  %cmp3 = icmp slt i32 %call2, 1
  br i1 %cmp3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 noundef 524, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.rsa_ossl_public_decrypt, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 4, i32 noundef 101, i8* noundef null) #8
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %3 = load %struct.bignum_st*, %struct.bignum_st** %n, align 8, !tbaa !8
  %call7 = tail call i32 @BN_num_bits(%struct.bignum_st* noundef %3) #8
  %cmp8 = icmp sgt i32 %call7, 3072
  br i1 %cmp8, label %if.then9, label %if.end15

if.then9:                                         ; preds = %if.end5
  %4 = load %struct.bignum_st*, %struct.bignum_st** %e, align 8, !tbaa !14
  %call11 = tail call i32 @BN_num_bits(%struct.bignum_st* noundef %4) #8
  %cmp12 = icmp sgt i32 %call11, 64
  br i1 %cmp12, label %if.then13, label %if.end15

if.then13:                                        ; preds = %if.then9
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 noundef 531, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.rsa_ossl_public_decrypt, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 4, i32 noundef 101, i8* noundef null) #8
  br label %cleanup

if.end15:                                         ; preds = %if.then9, %if.end5
  %libctx = getelementptr inbounds %struct.rsa_st, %struct.rsa_st* %rsa, i64 0, i32 1
  %5 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** %libctx, align 8, !tbaa !15
  %call16 = tail call %struct.bignum_ctx* @BN_CTX_new_ex(%struct.ossl_lib_ctx_st* noundef %5) #8
  %cmp17 = icmp eq %struct.bignum_ctx* %call16, null
  br i1 %cmp17, label %err, label %if.end19

if.end19:                                         ; preds = %if.end15
  tail call void @BN_CTX_start(%struct.bignum_ctx* noundef nonnull %call16) #8
  %call20 = tail call %struct.bignum_st* @BN_CTX_get(%struct.bignum_ctx* noundef nonnull %call16) #8
  %call21 = tail call %struct.bignum_st* @BN_CTX_get(%struct.bignum_ctx* noundef nonnull %call16) #8
  %6 = load %struct.bignum_st*, %struct.bignum_st** %n, align 8, !tbaa !8
  %call23 = tail call i32 @BN_num_bits(%struct.bignum_st* noundef %6) #8
  %add = add nsw i32 %call23, 7
  %div = sdiv i32 %add, 8
  %conv = sext i32 %div to i64
  %call24 = tail call i8* @CRYPTO_malloc(i64 noundef %conv, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 noundef 542) #8
  %cmp25 = icmp eq %struct.bignum_st* %call21, null
  %cmp27 = icmp eq i8* %call24, null
  %or.cond = select i1 %cmp25, i1 true, i1 %cmp27
  br i1 %or.cond, label %if.then29, label %if.end30

if.then29:                                        ; preds = %if.end19
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 noundef 544, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.rsa_ossl_public_decrypt, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 4, i32 noundef 786688, i8* noundef null) #8
  br label %err

if.end30:                                         ; preds = %if.end19
  %cmp31 = icmp slt i32 %div, %flen
  br i1 %cmp31, label %if.then33, label %if.end34

if.then33:                                        ; preds = %if.end30
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 noundef 553, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.rsa_ossl_public_decrypt, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 4, i32 noundef 108, i8* noundef null) #8
  br label %err

if.end34:                                         ; preds = %if.end30
  %call35 = tail call %struct.bignum_st* @BN_bin2bn(i8* noundef %from, i32 noundef %flen, %struct.bignum_st* noundef %call20) #8
  %cmp36 = icmp eq %struct.bignum_st* %call35, null
  br i1 %cmp36, label %err, label %if.end39

if.end39:                                         ; preds = %if.end34
  %7 = load %struct.bignum_st*, %struct.bignum_st** %n, align 8, !tbaa !8
  %call41 = tail call i32 @BN_ucmp(%struct.bignum_st* noundef %call20, %struct.bignum_st* noundef %7) #8
  %cmp42 = icmp sgt i32 %call41, -1
  br i1 %cmp42, label %if.then44, label %if.end45

if.then44:                                        ; preds = %if.end39
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 noundef 561, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.rsa_ossl_public_decrypt, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 4, i32 noundef 132, i8* noundef null) #8
  br label %err

if.end45:                                         ; preds = %if.end39
  %flags = getelementptr inbounds %struct.rsa_st, %struct.rsa_st* %rsa, i64 0, i32 18
  %8 = load i32, i32* %flags, align 4, !tbaa !16
  %and = and i32 %8, 2
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end52, label %if.then46

if.then46:                                        ; preds = %if.end45
  %_method_mod_n = getelementptr inbounds %struct.rsa_st, %struct.rsa_st* %rsa, i64 0, i32 19
  %lock = getelementptr inbounds %struct.rsa_st, %struct.rsa_st* %rsa, i64 0, i32 24
  %9 = load i8*, i8** %lock, align 8, !tbaa !17
  %10 = load %struct.bignum_st*, %struct.bignum_st** %n, align 8, !tbaa !8
  %call48 = tail call %struct.bn_mont_ctx_st* @BN_MONT_CTX_set_locked(%struct.bn_mont_ctx_st** noundef nonnull %_method_mod_n, i8* noundef %9, %struct.bignum_st* noundef %10, %struct.bignum_ctx* noundef nonnull %call16) #8
  %tobool49.not = icmp eq %struct.bn_mont_ctx_st* %call48, null
  br i1 %tobool49.not, label %err, label %if.end52

if.end52:                                         ; preds = %if.then46, %if.end45
  %meth = getelementptr inbounds %struct.rsa_st, %struct.rsa_st* %rsa, i64 0, i32 3
  %11 = load %struct.rsa_meth_st*, %struct.rsa_meth_st** %meth, align 8, !tbaa !18
  %bn_mod_exp = getelementptr inbounds %struct.rsa_meth_st, %struct.rsa_meth_st* %11, i64 0, i32 6
  %12 = load i32 (%struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*, %struct.bn_mont_ctx_st*)*, i32 (%struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*, %struct.bn_mont_ctx_st*)** %bn_mod_exp, align 8, !tbaa !19
  %13 = load %struct.bignum_st*, %struct.bignum_st** %e, align 8, !tbaa !14
  %14 = load %struct.bignum_st*, %struct.bignum_st** %n, align 8, !tbaa !8
  %_method_mod_n55 = getelementptr inbounds %struct.rsa_st, %struct.rsa_st* %rsa, i64 0, i32 19
  %15 = load %struct.bn_mont_ctx_st*, %struct.bn_mont_ctx_st** %_method_mod_n55, align 8, !tbaa !21
  %call56 = tail call i32 %12(%struct.bignum_st* noundef nonnull %call21, %struct.bignum_st* noundef %call20, %struct.bignum_st* noundef %13, %struct.bignum_st* noundef %14, %struct.bignum_ctx* noundef nonnull %call16, %struct.bn_mont_ctx_st* noundef %15) #8
  %tobool57.not = icmp eq i32 %call56, 0
  br i1 %tobool57.not, label %err, label %if.end59

if.end59:                                         ; preds = %if.end52
  %cmp60 = icmp eq i32 %padding, 5
  br i1 %cmp60, label %land.lhs.true, label %if.end72

land.lhs.true:                                    ; preds = %if.end59
  %call62 = tail call i64* @bn_get_words(%struct.bignum_st* noundef nonnull %call21) #8
  %16 = load i64, i64* %call62, align 8, !tbaa !22
  %and63 = and i64 %16, 15
  %cmp64.not = icmp eq i64 %and63, 12
  br i1 %cmp64.not, label %if.end72, label %if.then66

if.then66:                                        ; preds = %land.lhs.true
  %17 = load %struct.bignum_st*, %struct.bignum_st** %n, align 8, !tbaa !8
  %call68 = tail call i32 @BN_sub(%struct.bignum_st* noundef nonnull %call21, %struct.bignum_st* noundef %17, %struct.bignum_st* noundef nonnull %call21) #8
  %tobool69.not = icmp eq i32 %call68, 0
  br i1 %tobool69.not, label %err, label %if.end72

if.end72:                                         ; preds = %if.then66, %land.lhs.true, %if.end59
  %call73 = tail call i32 @BN_bn2binpad(%struct.bignum_st* noundef nonnull %call21, i8* noundef nonnull %call24, i32 noundef %div) #8
  %cmp74 = icmp slt i32 %call73, 0
  br i1 %cmp74, label %err, label %if.end77

if.end77:                                         ; preds = %if.end72
  switch i32 %padding, label %sw.default [
    i32 1, label %sw.bb
    i32 5, label %sw.bb79
    i32 3, label %sw.epilog.thread
  ]

sw.bb:                                            ; preds = %if.end77
  %call78 = tail call i32 @RSA_padding_check_PKCS1_type_1(i8* noundef %to, i32 noundef %div, i8* noundef nonnull %call24, i32 noundef %call73, i32 noundef %div) #8
  br label %sw.epilog

sw.bb79:                                          ; preds = %if.end77
  %call80 = tail call i32 @RSA_padding_check_X931(i8* noundef %to, i32 noundef %div, i8* noundef nonnull %call24, i32 noundef %call73, i32 noundef %div) #8
  br label %sw.epilog

sw.epilog.thread:                                 ; preds = %if.end77
  %conv82153 = zext i32 %call73 to i64
  %call83 = tail call i8* @memcpy(i8* noundef %to, i8* noundef nonnull %call24, i64 noundef %conv82153) #8
  br label %err

sw.default:                                       ; preds = %if.end77
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 noundef 593, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.rsa_ossl_public_decrypt, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 4, i32 noundef 118, i8* noundef null) #8
  br label %err

sw.epilog:                                        ; preds = %sw.bb79, %sw.bb
  %r.0 = phi i32 [ %call80, %sw.bb79 ], [ %call78, %sw.bb ]
  %cmp84 = icmp slt i32 %r.0, 0
  br i1 %cmp84, label %if.then86, label %err

if.then86:                                        ; preds = %sw.epilog
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 noundef 597, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.rsa_ossl_public_decrypt, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 4, i32 noundef 114, i8* noundef null) #8
  br label %err

err:                                              ; preds = %if.end15, %sw.epilog.thread, %sw.epilog, %if.then86, %if.end72, %if.then66, %if.end52, %if.then46, %if.end34, %sw.default, %if.then44, %if.then33, %if.then29
  %num.0 = phi i32 [ %div, %if.then29 ], [ %div, %if.then33 ], [ %div, %if.end34 ], [ %div, %if.then44 ], [ %div, %if.end72 ], [ %div, %sw.default ], [ %div, %if.then86 ], [ %div, %sw.epilog ], [ %div, %if.then66 ], [ %div, %if.end52 ], [ %div, %if.then46 ], [ %div, %sw.epilog.thread ], [ 0, %if.end15 ]
  %r.1 = phi i32 [ -1, %if.then29 ], [ -1, %if.then33 ], [ -1, %if.end34 ], [ -1, %if.then44 ], [ -1, %if.end72 ], [ -1, %sw.default ], [ %r.0, %if.then86 ], [ %r.0, %sw.epilog ], [ -1, %if.then66 ], [ -1, %if.end52 ], [ -1, %if.then46 ], [ %call73, %sw.epilog.thread ], [ -1, %if.end15 ]
  %buf.0 = phi i8* [ %call24, %if.then29 ], [ %call24, %if.then33 ], [ %call24, %if.end34 ], [ %call24, %if.then44 ], [ %call24, %if.end72 ], [ %call24, %sw.default ], [ %call24, %if.then86 ], [ %call24, %sw.epilog ], [ %call24, %if.then66 ], [ %call24, %if.end52 ], [ %call24, %if.then46 ], [ %call24, %sw.epilog.thread ], [ null, %if.end15 ]
  tail call void @BN_CTX_end(%struct.bignum_ctx* noundef %call16) #8
  tail call void @BN_CTX_free(%struct.bignum_ctx* noundef %call16) #8
  %conv88 = sext i32 %num.0 to i64
  tail call void @CRYPTO_clear_free(i8* noundef %buf.0, i64 noundef %conv88, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 noundef 602) #8
  br label %cleanup

cleanup:                                          ; preds = %err, %if.then13, %if.then4, %if.then
  %retval.0 = phi i32 [ -1, %if.then ], [ -1, %if.then4 ], [ -1, %if.then13 ], [ %r.1, %err ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @rsa_ossl_private_encrypt(i32 noundef %flen, i8* noundef %from, i8* noundef %to, %struct.rsa_st* noundef %rsa, i32 noundef %padding) #3 {
entry:
  %local_blinding = alloca i32, align 4
  %0 = bitcast i32* %local_blinding to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #9
  store i32 0, i32* %local_blinding, align 4, !tbaa !24
  %libctx = getelementptr inbounds %struct.rsa_st, %struct.rsa_st* %rsa, i64 0, i32 1
  %1 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** %libctx, align 8, !tbaa !15
  %call = tail call %struct.bignum_ctx* @BN_CTX_new_ex(%struct.ossl_lib_ctx_st* noundef %1) #8
  %cmp = icmp eq %struct.bignum_ctx* %call, null
  br i1 %cmp, label %err, label %if.end

if.end:                                           ; preds = %entry
  tail call void @BN_CTX_start(%struct.bignum_ctx* noundef nonnull %call) #8
  %call1 = tail call %struct.bignum_st* @BN_CTX_get(%struct.bignum_ctx* noundef nonnull %call) #8
  %call2 = tail call %struct.bignum_st* @BN_CTX_get(%struct.bignum_ctx* noundef nonnull %call) #8
  %n = getelementptr inbounds %struct.rsa_st, %struct.rsa_st* %rsa, i64 0, i32 5
  %2 = load %struct.bignum_st*, %struct.bignum_st** %n, align 8, !tbaa !8
  %call3 = tail call i32 @BN_num_bits(%struct.bignum_st* noundef %2) #8
  %add = add nsw i32 %call3, 7
  %div = sdiv i32 %add, 8
  %conv = sext i32 %div to i64
  %call4 = tail call i8* @CRYPTO_malloc(i64 noundef %conv, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 noundef 261) #8
  %cmp5 = icmp eq %struct.bignum_st* %call2, null
  %cmp7 = icmp eq i8* %call4, null
  %or.cond = select i1 %cmp5, i1 true, i1 %cmp7
  br i1 %or.cond, label %if.then9, label %if.end10

if.then9:                                         ; preds = %if.end
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 noundef 263, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.rsa_ossl_private_encrypt, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 4, i32 noundef 786688, i8* noundef null) #8
  br label %err

if.end10:                                         ; preds = %if.end
  switch i32 %padding, label %sw.default [
    i32 1, label %sw.bb
    i32 5, label %sw.bb12
    i32 3, label %sw.bb14
  ]

sw.bb:                                            ; preds = %if.end10
  %call11 = tail call i32 @RSA_padding_add_PKCS1_type_1(i8* noundef nonnull %call4, i32 noundef %div, i8* noundef %from, i32 noundef %flen) #8
  br label %sw.epilog

sw.bb12:                                          ; preds = %if.end10
  %call13 = tail call i32 @RSA_padding_add_X931(i8* noundef nonnull %call4, i32 noundef %div, i8* noundef %from, i32 noundef %flen) #8
  br label %sw.epilog

sw.bb14:                                          ; preds = %if.end10
  %call15 = tail call i32 @RSA_padding_add_none(i8* noundef nonnull %call4, i32 noundef %div, i8* noundef %from, i32 noundef %flen) #8
  br label %sw.epilog

sw.default:                                       ; preds = %if.end10
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 noundef 278, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.rsa_ossl_private_encrypt, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 4, i32 noundef 118, i8* noundef null) #8
  br label %err

sw.epilog:                                        ; preds = %sw.bb14, %sw.bb12, %sw.bb
  %i.0 = phi i32 [ %call15, %sw.bb14 ], [ %call13, %sw.bb12 ], [ %call11, %sw.bb ]
  %cmp16 = icmp slt i32 %i.0, 1
  br i1 %cmp16, label %err, label %if.end19

if.end19:                                         ; preds = %sw.epilog
  %call20 = tail call %struct.bignum_st* @BN_bin2bn(i8* noundef nonnull %call4, i32 noundef %div, %struct.bignum_st* noundef %call1) #8
  %cmp21 = icmp eq %struct.bignum_st* %call20, null
  br i1 %cmp21, label %err, label %if.end24

if.end24:                                         ; preds = %if.end19
  %3 = load %struct.bignum_st*, %struct.bignum_st** %n, align 8, !tbaa !8
  %call26 = tail call i32 @BN_ucmp(%struct.bignum_st* noundef %call1, %struct.bignum_st* noundef %3) #8
  %cmp27 = icmp sgt i32 %call26, -1
  br i1 %cmp27, label %if.then29, label %if.end30

if.then29:                                        ; preds = %if.end24
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 noundef 289, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.rsa_ossl_private_encrypt, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 4, i32 noundef 132, i8* noundef null) #8
  br label %err

if.end30:                                         ; preds = %if.end24
  %flags = getelementptr inbounds %struct.rsa_st, %struct.rsa_st* %rsa, i64 0, i32 18
  %4 = load i32, i32* %flags, align 4, !tbaa !16
  %and = and i32 %4, 2
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end37, label %if.then31

if.then31:                                        ; preds = %if.end30
  %_method_mod_n = getelementptr inbounds %struct.rsa_st, %struct.rsa_st* %rsa, i64 0, i32 19
  %lock = getelementptr inbounds %struct.rsa_st, %struct.rsa_st* %rsa, i64 0, i32 24
  %5 = load i8*, i8** %lock, align 8, !tbaa !17
  %6 = load %struct.bignum_st*, %struct.bignum_st** %n, align 8, !tbaa !8
  %call33 = tail call %struct.bn_mont_ctx_st* @BN_MONT_CTX_set_locked(%struct.bn_mont_ctx_st** noundef nonnull %_method_mod_n, i8* noundef %5, %struct.bignum_st* noundef %6, %struct.bignum_ctx* noundef nonnull %call) #8
  %tobool34.not = icmp eq %struct.bn_mont_ctx_st* %call33, null
  br i1 %tobool34.not, label %err, label %if.then31.if.end37_crit_edge

if.then31.if.end37_crit_edge:                     ; preds = %if.then31
  %.pre = load i32, i32* %flags, align 4, !tbaa !16
  br label %if.end37

if.end37:                                         ; preds = %if.then31.if.end37_crit_edge, %if.end30
  %7 = phi i32 [ %.pre, %if.then31.if.end37_crit_edge ], [ %4, %if.end30 ]
  %and39 = and i32 %7, 128
  %tobool40.not = icmp eq i32 %and39, 0
  br i1 %tobool40.not, label %if.then41, label %if.end61

if.then41:                                        ; preds = %if.end37
  %call42 = call fastcc %struct.bn_blinding_st* @rsa_get_blinding(%struct.rsa_st* noundef nonnull %rsa, i32* noundef nonnull %local_blinding, %struct.bignum_ctx* noundef nonnull %call) #10
  %cmp43 = icmp eq %struct.bn_blinding_st* %call42, null
  br i1 %cmp43, label %if.then45, label %if.then50

if.then45:                                        ; preds = %if.then41
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 noundef 301, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.rsa_ossl_private_encrypt, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 4, i32 noundef 786691, i8* noundef null) #8
  br label %err

if.then50:                                        ; preds = %if.then41
  %8 = load i32, i32* %local_blinding, align 4, !tbaa !24
  %tobool51.not = icmp eq i32 %8, 0
  br i1 %tobool51.not, label %land.lhs.true, label %if.end56

land.lhs.true:                                    ; preds = %if.then50
  %call52 = tail call %struct.bignum_st* @BN_CTX_get(%struct.bignum_ctx* noundef nonnull %call) #8
  %cmp53 = icmp eq %struct.bignum_st* %call52, null
  br i1 %cmp53, label %if.then55, label %if.end56

if.then55:                                        ; preds = %land.lhs.true
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 noundef 308, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.rsa_ossl_private_encrypt, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 4, i32 noundef 786688, i8* noundef null) #8
  br label %err

if.end56:                                         ; preds = %land.lhs.true, %if.then50
  %unblind.0 = phi %struct.bignum_st* [ null, %if.then50 ], [ %call52, %land.lhs.true ]
  %call57 = tail call fastcc i32 @rsa_blinding_convert(%struct.bn_blinding_st* noundef nonnull %call42, %struct.bignum_st* noundef %call1, %struct.bignum_st* noundef %unblind.0, %struct.bignum_ctx* noundef nonnull %call) #10
  %tobool58.not = icmp eq i32 %call57, 0
  br i1 %tobool58.not, label %err, label %if.end56.if.end61_crit_edge

if.end56.if.end61_crit_edge:                      ; preds = %if.end56
  %.pre235 = load i32, i32* %flags, align 4, !tbaa !16
  br label %if.end61

if.end61:                                         ; preds = %if.end56.if.end61_crit_edge, %if.end37
  %9 = phi i32 [ %.pre235, %if.end56.if.end61_crit_edge ], [ %7, %if.end37 ]
  %blinding.0231 = phi %struct.bn_blinding_st* [ %call42, %if.end56.if.end61_crit_edge ], [ null, %if.end37 ]
  %unblind.1 = phi %struct.bignum_st* [ %unblind.0, %if.end56.if.end61_crit_edge ], [ null, %if.end37 ]
  %and63 = and i32 %9, 32
  %tobool64.not = icmp eq i32 %and63, 0
  br i1 %tobool64.not, label %lor.lhs.false65, label %if.then83

lor.lhs.false65:                                  ; preds = %if.end61
  %version = getelementptr inbounds %struct.rsa_st, %struct.rsa_st* %rsa, i64 0, i32 2
  %10 = load i32, i32* %version, align 8, !tbaa !25
  %cmp66 = icmp eq i32 %10, 1
  br i1 %cmp66, label %if.then83, label %lor.lhs.false68

lor.lhs.false68:                                  ; preds = %lor.lhs.false65
  %p = getelementptr inbounds %struct.rsa_st, %struct.rsa_st* %rsa, i64 0, i32 8
  %11 = load %struct.bignum_st*, %struct.bignum_st** %p, align 8, !tbaa !26
  %cmp69.not = icmp eq %struct.bignum_st* %11, null
  br i1 %cmp69.not, label %if.else, label %land.lhs.true71

land.lhs.true71:                                  ; preds = %lor.lhs.false68
  %q = getelementptr inbounds %struct.rsa_st, %struct.rsa_st* %rsa, i64 0, i32 9
  %12 = load %struct.bignum_st*, %struct.bignum_st** %q, align 8, !tbaa !27
  %cmp72.not = icmp eq %struct.bignum_st* %12, null
  br i1 %cmp72.not, label %if.else, label %land.lhs.true74

land.lhs.true74:                                  ; preds = %land.lhs.true71
  %dmp1 = getelementptr inbounds %struct.rsa_st, %struct.rsa_st* %rsa, i64 0, i32 10
  %13 = load %struct.bignum_st*, %struct.bignum_st** %dmp1, align 8, !tbaa !28
  %cmp75.not = icmp eq %struct.bignum_st* %13, null
  br i1 %cmp75.not, label %if.else, label %land.lhs.true77

land.lhs.true77:                                  ; preds = %land.lhs.true74
  %dmq1 = getelementptr inbounds %struct.rsa_st, %struct.rsa_st* %rsa, i64 0, i32 11
  %14 = load %struct.bignum_st*, %struct.bignum_st** %dmq1, align 8, !tbaa !29
  %cmp78.not = icmp eq %struct.bignum_st* %14, null
  br i1 %cmp78.not, label %if.else, label %land.lhs.true80

land.lhs.true80:                                  ; preds = %land.lhs.true77
  %iqmp = getelementptr inbounds %struct.rsa_st, %struct.rsa_st* %rsa, i64 0, i32 12
  %15 = load %struct.bignum_st*, %struct.bignum_st** %iqmp, align 8, !tbaa !30
  %cmp81.not = icmp eq %struct.bignum_st* %15, null
  br i1 %cmp81.not, label %if.else, label %if.then83

if.then83:                                        ; preds = %land.lhs.true80, %lor.lhs.false65, %if.end61
  %meth = getelementptr inbounds %struct.rsa_st, %struct.rsa_st* %rsa, i64 0, i32 3
  %16 = load %struct.rsa_meth_st*, %struct.rsa_meth_st** %meth, align 8, !tbaa !18
  %rsa_mod_exp = getelementptr inbounds %struct.rsa_meth_st, %struct.rsa_meth_st* %16, i64 0, i32 5
  %17 = load i32 (%struct.bignum_st*, %struct.bignum_st*, %struct.rsa_st*, %struct.bignum_ctx*)*, i32 (%struct.bignum_st*, %struct.bignum_st*, %struct.rsa_st*, %struct.bignum_ctx*)** %rsa_mod_exp, align 8, !tbaa !31
  %call84 = tail call i32 %17(%struct.bignum_st* noundef nonnull %call2, %struct.bignum_st* noundef %call1, %struct.rsa_st* noundef nonnull %rsa, %struct.bignum_ctx* noundef nonnull %call) #8
  %tobool85.not = icmp eq i32 %call84, 0
  br i1 %tobool85.not, label %err, label %if.end106

if.else:                                          ; preds = %land.lhs.true80, %land.lhs.true77, %land.lhs.true74, %land.lhs.true71, %lor.lhs.false68
  %call88 = tail call %struct.bignum_st* @BN_new() #8
  %cmp89 = icmp eq %struct.bignum_st* %call88, null
  br i1 %cmp89, label %if.then91, label %if.end92

if.then91:                                        ; preds = %if.else
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 noundef 325, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.rsa_ossl_private_encrypt, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 4, i32 noundef 786688, i8* noundef null) #8
  br label %err

if.end92:                                         ; preds = %if.else
  %d93 = getelementptr inbounds %struct.rsa_st, %struct.rsa_st* %rsa, i64 0, i32 7
  %18 = load %struct.bignum_st*, %struct.bignum_st** %d93, align 8, !tbaa !32
  %cmp94 = icmp eq %struct.bignum_st* %18, null
  br i1 %cmp94, label %if.then96, label %if.end97

if.then96:                                        ; preds = %if.end92
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 noundef 329, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.rsa_ossl_private_encrypt, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 4, i32 noundef 179, i8* noundef null) #8
  tail call void @BN_free(%struct.bignum_st* noundef nonnull %call88) #8
  br label %err

if.end97:                                         ; preds = %if.end92
  tail call void @BN_with_flags(%struct.bignum_st* noundef nonnull %call88, %struct.bignum_st* noundef nonnull %18, i32 noundef 4) #8
  %meth99 = getelementptr inbounds %struct.rsa_st, %struct.rsa_st* %rsa, i64 0, i32 3
  %19 = load %struct.rsa_meth_st*, %struct.rsa_meth_st** %meth99, align 8, !tbaa !18
  %bn_mod_exp = getelementptr inbounds %struct.rsa_meth_st, %struct.rsa_meth_st* %19, i64 0, i32 6
  %20 = load i32 (%struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*, %struct.bn_mont_ctx_st*)*, i32 (%struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*, %struct.bn_mont_ctx_st*)** %bn_mod_exp, align 8, !tbaa !19
  %21 = load %struct.bignum_st*, %struct.bignum_st** %n, align 8, !tbaa !8
  %_method_mod_n101 = getelementptr inbounds %struct.rsa_st, %struct.rsa_st* %rsa, i64 0, i32 19
  %22 = load %struct.bn_mont_ctx_st*, %struct.bn_mont_ctx_st** %_method_mod_n101, align 8, !tbaa !21
  %call102 = tail call i32 %20(%struct.bignum_st* noundef nonnull %call2, %struct.bignum_st* noundef %call1, %struct.bignum_st* noundef nonnull %call88, %struct.bignum_st* noundef %21, %struct.bignum_ctx* noundef nonnull %call, %struct.bn_mont_ctx_st* noundef %22) #8
  %tobool103.not = icmp eq i32 %call102, 0
  tail call void @BN_free(%struct.bignum_st* noundef nonnull %call88) #8
  br i1 %tobool103.not, label %err, label %if.end106

if.end106:                                        ; preds = %if.end97, %if.then83
  br i1 %tobool40.not, label %if.then108, label %if.end113

if.then108:                                       ; preds = %if.end106
  %call109 = tail call fastcc i32 @rsa_blinding_invert(%struct.bn_blinding_st* noundef nonnull %blinding.0231, %struct.bignum_st* noundef nonnull %call2, %struct.bignum_st* noundef %unblind.1, %struct.bignum_ctx* noundef nonnull %call) #10
  %tobool110.not = icmp eq i32 %call109, 0
  br i1 %tobool110.not, label %err, label %if.end113

if.end113:                                        ; preds = %if.then108, %if.end106
  %cmp114 = icmp eq i32 %padding, 5
  br i1 %cmp114, label %if.then116, label %if.end129

if.then116:                                       ; preds = %if.end113
  %23 = load %struct.bignum_st*, %struct.bignum_st** %n, align 8, !tbaa !8
  %call118 = tail call i32 @BN_sub(%struct.bignum_st* noundef %call1, %struct.bignum_st* noundef %23, %struct.bignum_st* noundef nonnull %call2) #8
  %tobool119.not = icmp eq i32 %call118, 0
  br i1 %tobool119.not, label %err, label %if.end121

if.end121:                                        ; preds = %if.then116
  %call122 = tail call i32 @BN_cmp(%struct.bignum_st* noundef nonnull %call2, %struct.bignum_st* noundef %call1) #8
  %cmp123 = icmp sgt i32 %call122, 0
  %call1.call2 = select i1 %cmp123, %struct.bignum_st* %call1, %struct.bignum_st* %call2
  br label %if.end129

if.end129:                                        ; preds = %if.end113, %if.end121
  %res.0 = phi %struct.bignum_st* [ %call1.call2, %if.end121 ], [ %call2, %if.end113 ]
  %call130 = tail call i32 @BN_bn2binpad(%struct.bignum_st* noundef %res.0, i8* noundef %to, i32 noundef %div) #8
  br label %err

err:                                              ; preds = %if.end97, %entry, %if.then96, %if.then91, %if.then116, %if.then108, %if.then83, %if.end56, %if.then31, %if.end19, %sw.epilog, %if.end129, %if.then55, %if.then45, %if.then29, %sw.default, %if.then9
  %num.0 = phi i32 [ %div, %if.then9 ], [ %div, %sw.default ], [ %div, %sw.epilog ], [ %div, %if.end19 ], [ %div, %if.then29 ], [ %div, %if.end129 ], [ %div, %if.then116 ], [ %div, %if.then108 ], [ %div, %if.then83 ], [ %div, %if.end56 ], [ %div, %if.then55 ], [ %div, %if.then45 ], [ %div, %if.then31 ], [ %div, %if.then91 ], [ %div, %if.then96 ], [ 0, %entry ], [ %div, %if.end97 ]
  %r.0 = phi i32 [ -1, %if.then9 ], [ -1, %sw.default ], [ -1, %sw.epilog ], [ -1, %if.end19 ], [ -1, %if.then29 ], [ %call130, %if.end129 ], [ -1, %if.then116 ], [ -1, %if.then108 ], [ -1, %if.then83 ], [ -1, %if.end56 ], [ -1, %if.then55 ], [ -1, %if.then45 ], [ -1, %if.then31 ], [ -1, %if.then91 ], [ -1, %if.then96 ], [ -1, %entry ], [ -1, %if.end97 ]
  %buf.0 = phi i8* [ %call4, %if.then9 ], [ %call4, %sw.default ], [ %call4, %sw.epilog ], [ %call4, %if.end19 ], [ %call4, %if.then29 ], [ %call4, %if.end129 ], [ %call4, %if.then116 ], [ %call4, %if.then108 ], [ %call4, %if.then83 ], [ %call4, %if.end56 ], [ %call4, %if.then55 ], [ %call4, %if.then45 ], [ %call4, %if.then31 ], [ %call4, %if.then91 ], [ %call4, %if.then96 ], [ null, %entry ], [ %call4, %if.end97 ]
  tail call void @BN_CTX_end(%struct.bignum_ctx* noundef %call) #8
  tail call void @BN_CTX_free(%struct.bignum_ctx* noundef %call) #8
  %conv131 = sext i32 %num.0 to i64
  tail call void @CRYPTO_clear_free(i8* noundef %buf.0, i64 noundef %conv131, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 noundef 367) #8
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #9
  ret i32 %r.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @rsa_ossl_private_decrypt(i32 noundef %flen, i8* noundef %from, i8* noundef %to, %struct.rsa_st* noundef %rsa, i32 noundef %padding) #3 {
entry:
  %local_blinding = alloca i32, align 4
  %0 = bitcast i32* %local_blinding to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #9
  store i32 0, i32* %local_blinding, align 4, !tbaa !24
  %libctx = getelementptr inbounds %struct.rsa_st, %struct.rsa_st* %rsa, i64 0, i32 1
  %1 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** %libctx, align 8, !tbaa !15
  %call = tail call %struct.bignum_ctx* @BN_CTX_new_ex(%struct.ossl_lib_ctx_st* noundef %1) #8
  %cmp = icmp eq %struct.bignum_ctx* %call, null
  br i1 %cmp, label %err, label %if.end

if.end:                                           ; preds = %entry
  tail call void @BN_CTX_start(%struct.bignum_ctx* noundef nonnull %call) #8
  %call1 = tail call %struct.bignum_st* @BN_CTX_get(%struct.bignum_ctx* noundef nonnull %call) #8
  %call2 = tail call %struct.bignum_st* @BN_CTX_get(%struct.bignum_ctx* noundef nonnull %call) #8
  %n = getelementptr inbounds %struct.rsa_st, %struct.rsa_st* %rsa, i64 0, i32 5
  %2 = load %struct.bignum_st*, %struct.bignum_st** %n, align 8, !tbaa !8
  %call3 = tail call i32 @BN_num_bits(%struct.bignum_st* noundef %2) #8
  %add = add nsw i32 %call3, 7
  %div = sdiv i32 %add, 8
  %conv = sext i32 %div to i64
  %call4 = tail call i8* @CRYPTO_malloc(i64 noundef %conv, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 noundef 393) #8
  %cmp5 = icmp eq %struct.bignum_st* %call2, null
  %cmp7 = icmp eq i8* %call4, null
  %or.cond = select i1 %cmp5, i1 true, i1 %cmp7
  br i1 %or.cond, label %if.then9, label %if.end10

if.then9:                                         ; preds = %if.end
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 noundef 395, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.rsa_ossl_private_decrypt, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 4, i32 noundef 786688, i8* noundef null) #8
  br label %err

if.end10:                                         ; preds = %if.end
  %cmp11 = icmp slt i32 %div, %flen
  br i1 %cmp11, label %if.then13, label %if.end14

if.then13:                                        ; preds = %if.end10
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 noundef 404, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.rsa_ossl_private_decrypt, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 4, i32 noundef 108, i8* noundef null) #8
  br label %err

if.end14:                                         ; preds = %if.end10
  %call15 = tail call %struct.bignum_st* @BN_bin2bn(i8* noundef %from, i32 noundef %flen, %struct.bignum_st* noundef %call1) #8
  %cmp16 = icmp eq %struct.bignum_st* %call15, null
  br i1 %cmp16, label %err, label %if.end19

if.end19:                                         ; preds = %if.end14
  %3 = load %struct.bignum_st*, %struct.bignum_st** %n, align 8, !tbaa !8
  %call21 = tail call i32 @BN_ucmp(%struct.bignum_st* noundef %call1, %struct.bignum_st* noundef %3) #8
  %cmp22 = icmp sgt i32 %call21, -1
  br i1 %cmp22, label %if.then24, label %if.end25

if.then24:                                        ; preds = %if.end19
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 noundef 413, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.rsa_ossl_private_decrypt, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 4, i32 noundef 132, i8* noundef null) #8
  br label %err

if.end25:                                         ; preds = %if.end19
  %flags = getelementptr inbounds %struct.rsa_st, %struct.rsa_st* %rsa, i64 0, i32 18
  %4 = load i32, i32* %flags, align 4, !tbaa !16
  %and = and i32 %4, 128
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then26, label %if.end46

if.then26:                                        ; preds = %if.end25
  %call27 = call fastcc %struct.bn_blinding_st* @rsa_get_blinding(%struct.rsa_st* noundef nonnull %rsa, i32* noundef nonnull %local_blinding, %struct.bignum_ctx* noundef nonnull %call) #10
  %cmp28 = icmp eq %struct.bn_blinding_st* %call27, null
  br i1 %cmp28, label %if.then30, label %if.then35

if.then30:                                        ; preds = %if.then26
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 noundef 420, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.rsa_ossl_private_decrypt, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 4, i32 noundef 786691, i8* noundef null) #8
  br label %err

if.then35:                                        ; preds = %if.then26
  %5 = load i32, i32* %local_blinding, align 4, !tbaa !24
  %tobool36.not = icmp eq i32 %5, 0
  br i1 %tobool36.not, label %land.lhs.true, label %if.end41

land.lhs.true:                                    ; preds = %if.then35
  %call37 = tail call %struct.bignum_st* @BN_CTX_get(%struct.bignum_ctx* noundef nonnull %call) #8
  %cmp38 = icmp eq %struct.bignum_st* %call37, null
  br i1 %cmp38, label %if.then40, label %if.end41

if.then40:                                        ; preds = %land.lhs.true
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 noundef 427, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.rsa_ossl_private_decrypt, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 4, i32 noundef 786688, i8* noundef null) #8
  br label %err

if.end41:                                         ; preds = %land.lhs.true, %if.then35
  %unblind.0 = phi %struct.bignum_st* [ null, %if.then35 ], [ %call37, %land.lhs.true ]
  %call42 = tail call fastcc i32 @rsa_blinding_convert(%struct.bn_blinding_st* noundef nonnull %call27, %struct.bignum_st* noundef %call1, %struct.bignum_st* noundef %unblind.0, %struct.bignum_ctx* noundef nonnull %call) #10
  %tobool43.not = icmp eq i32 %call42, 0
  br i1 %tobool43.not, label %err, label %if.end41.if.end46_crit_edge

if.end41.if.end46_crit_edge:                      ; preds = %if.end41
  %.pre = load i32, i32* %flags, align 4, !tbaa !16
  br label %if.end46

if.end46:                                         ; preds = %if.end41.if.end46_crit_edge, %if.end25
  %6 = phi i32 [ %.pre, %if.end41.if.end46_crit_edge ], [ %4, %if.end25 ]
  %blinding.0217 = phi %struct.bn_blinding_st* [ %call27, %if.end41.if.end46_crit_edge ], [ null, %if.end25 ]
  %unblind.1 = phi %struct.bignum_st* [ %unblind.0, %if.end41.if.end46_crit_edge ], [ null, %if.end25 ]
  %and48 = and i32 %6, 32
  %tobool49.not = icmp eq i32 %and48, 0
  br i1 %tobool49.not, label %lor.lhs.false50, label %if.then68

lor.lhs.false50:                                  ; preds = %if.end46
  %version = getelementptr inbounds %struct.rsa_st, %struct.rsa_st* %rsa, i64 0, i32 2
  %7 = load i32, i32* %version, align 8, !tbaa !25
  %cmp51 = icmp eq i32 %7, 1
  br i1 %cmp51, label %if.then68, label %lor.lhs.false53

lor.lhs.false53:                                  ; preds = %lor.lhs.false50
  %p = getelementptr inbounds %struct.rsa_st, %struct.rsa_st* %rsa, i64 0, i32 8
  %8 = load %struct.bignum_st*, %struct.bignum_st** %p, align 8, !tbaa !26
  %cmp54.not = icmp eq %struct.bignum_st* %8, null
  br i1 %cmp54.not, label %if.else, label %land.lhs.true56

land.lhs.true56:                                  ; preds = %lor.lhs.false53
  %q = getelementptr inbounds %struct.rsa_st, %struct.rsa_st* %rsa, i64 0, i32 9
  %9 = load %struct.bignum_st*, %struct.bignum_st** %q, align 8, !tbaa !27
  %cmp57.not = icmp eq %struct.bignum_st* %9, null
  br i1 %cmp57.not, label %if.else, label %land.lhs.true59

land.lhs.true59:                                  ; preds = %land.lhs.true56
  %dmp1 = getelementptr inbounds %struct.rsa_st, %struct.rsa_st* %rsa, i64 0, i32 10
  %10 = load %struct.bignum_st*, %struct.bignum_st** %dmp1, align 8, !tbaa !28
  %cmp60.not = icmp eq %struct.bignum_st* %10, null
  br i1 %cmp60.not, label %if.else, label %land.lhs.true62

land.lhs.true62:                                  ; preds = %land.lhs.true59
  %dmq1 = getelementptr inbounds %struct.rsa_st, %struct.rsa_st* %rsa, i64 0, i32 11
  %11 = load %struct.bignum_st*, %struct.bignum_st** %dmq1, align 8, !tbaa !29
  %cmp63.not = icmp eq %struct.bignum_st* %11, null
  br i1 %cmp63.not, label %if.else, label %land.lhs.true65

land.lhs.true65:                                  ; preds = %land.lhs.true62
  %iqmp = getelementptr inbounds %struct.rsa_st, %struct.rsa_st* %rsa, i64 0, i32 12
  %12 = load %struct.bignum_st*, %struct.bignum_st** %iqmp, align 8, !tbaa !30
  %cmp66.not = icmp eq %struct.bignum_st* %12, null
  br i1 %cmp66.not, label %if.else, label %if.then68

if.then68:                                        ; preds = %land.lhs.true65, %lor.lhs.false50, %if.end46
  %meth = getelementptr inbounds %struct.rsa_st, %struct.rsa_st* %rsa, i64 0, i32 3
  %13 = load %struct.rsa_meth_st*, %struct.rsa_meth_st** %meth, align 8, !tbaa !18
  %rsa_mod_exp = getelementptr inbounds %struct.rsa_meth_st, %struct.rsa_meth_st* %13, i64 0, i32 5
  %14 = load i32 (%struct.bignum_st*, %struct.bignum_st*, %struct.rsa_st*, %struct.bignum_ctx*)*, i32 (%struct.bignum_st*, %struct.bignum_st*, %struct.rsa_st*, %struct.bignum_ctx*)** %rsa_mod_exp, align 8, !tbaa !31
  %call69 = tail call i32 %14(%struct.bignum_st* noundef nonnull %call2, %struct.bignum_st* noundef %call1, %struct.rsa_st* noundef nonnull %rsa, %struct.bignum_ctx* noundef nonnull %call) #8
  %tobool70.not = icmp eq i32 %call69, 0
  br i1 %tobool70.not, label %err, label %if.end101

if.else:                                          ; preds = %land.lhs.true65, %land.lhs.true62, %land.lhs.true59, %land.lhs.true56, %lor.lhs.false53
  %call73 = tail call %struct.bignum_st* @BN_new() #8
  %cmp74 = icmp eq %struct.bignum_st* %call73, null
  br i1 %cmp74, label %if.then76, label %if.end77

if.then76:                                        ; preds = %if.else
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 noundef 445, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.rsa_ossl_private_decrypt, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 4, i32 noundef 786688, i8* noundef null) #8
  br label %err

if.end77:                                         ; preds = %if.else
  %d78 = getelementptr inbounds %struct.rsa_st, %struct.rsa_st* %rsa, i64 0, i32 7
  %15 = load %struct.bignum_st*, %struct.bignum_st** %d78, align 8, !tbaa !32
  %cmp79 = icmp eq %struct.bignum_st* %15, null
  br i1 %cmp79, label %if.then81, label %if.end82

if.then81:                                        ; preds = %if.end77
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 noundef 449, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.rsa_ossl_private_decrypt, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 4, i32 noundef 179, i8* noundef null) #8
  tail call void @BN_free(%struct.bignum_st* noundef nonnull %call73) #8
  br label %err

if.end82:                                         ; preds = %if.end77
  tail call void @BN_with_flags(%struct.bignum_st* noundef nonnull %call73, %struct.bignum_st* noundef nonnull %15, i32 noundef 4) #8
  %16 = load i32, i32* %flags, align 4, !tbaa !16
  %and85 = and i32 %16, 2
  %tobool86.not = icmp eq i32 %and85, 0
  br i1 %tobool86.not, label %if.end93, label %if.then87

if.then87:                                        ; preds = %if.end82
  %_method_mod_n = getelementptr inbounds %struct.rsa_st, %struct.rsa_st* %rsa, i64 0, i32 19
  %lock = getelementptr inbounds %struct.rsa_st, %struct.rsa_st* %rsa, i64 0, i32 24
  %17 = load i8*, i8** %lock, align 8, !tbaa !17
  %18 = load %struct.bignum_st*, %struct.bignum_st** %n, align 8, !tbaa !8
  %call89 = tail call %struct.bn_mont_ctx_st* @BN_MONT_CTX_set_locked(%struct.bn_mont_ctx_st** noundef nonnull %_method_mod_n, i8* noundef %17, %struct.bignum_st* noundef %18, %struct.bignum_ctx* noundef nonnull %call) #8
  %tobool90.not = icmp eq %struct.bn_mont_ctx_st* %call89, null
  br i1 %tobool90.not, label %if.then91, label %if.end93

if.then91:                                        ; preds = %if.then87
  tail call void @BN_free(%struct.bignum_st* noundef nonnull %call73) #8
  br label %err

if.end93:                                         ; preds = %if.then87, %if.end82
  %meth94 = getelementptr inbounds %struct.rsa_st, %struct.rsa_st* %rsa, i64 0, i32 3
  %19 = load %struct.rsa_meth_st*, %struct.rsa_meth_st** %meth94, align 8, !tbaa !18
  %bn_mod_exp = getelementptr inbounds %struct.rsa_meth_st, %struct.rsa_meth_st* %19, i64 0, i32 6
  %20 = load i32 (%struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*, %struct.bn_mont_ctx_st*)*, i32 (%struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*, %struct.bn_mont_ctx_st*)** %bn_mod_exp, align 8, !tbaa !19
  %21 = load %struct.bignum_st*, %struct.bignum_st** %n, align 8, !tbaa !8
  %_method_mod_n96 = getelementptr inbounds %struct.rsa_st, %struct.rsa_st* %rsa, i64 0, i32 19
  %22 = load %struct.bn_mont_ctx_st*, %struct.bn_mont_ctx_st** %_method_mod_n96, align 8, !tbaa !21
  %call97 = tail call i32 %20(%struct.bignum_st* noundef nonnull %call2, %struct.bignum_st* noundef %call1, %struct.bignum_st* noundef nonnull %call73, %struct.bignum_st* noundef %21, %struct.bignum_ctx* noundef nonnull %call, %struct.bn_mont_ctx_st* noundef %22) #8
  %tobool98.not = icmp eq i32 %call97, 0
  tail call void @BN_free(%struct.bignum_st* noundef nonnull %call73) #8
  br i1 %tobool98.not, label %err, label %if.end101

if.end101:                                        ; preds = %if.end93, %if.then68
  br i1 %tobool.not, label %if.then103, label %if.end108

if.then103:                                       ; preds = %if.end101
  %call104 = tail call fastcc i32 @rsa_blinding_invert(%struct.bn_blinding_st* noundef nonnull %blinding.0217, %struct.bignum_st* noundef nonnull %call2, %struct.bignum_st* noundef %unblind.1, %struct.bignum_ctx* noundef nonnull %call) #10
  %tobool105.not = icmp eq i32 %call104, 0
  br i1 %tobool105.not, label %err, label %if.end108

if.end108:                                        ; preds = %if.then103, %if.end101
  %call109 = tail call i32 @BN_bn2binpad(%struct.bignum_st* noundef nonnull %call2, i8* noundef nonnull %call4, i32 noundef %div) #8
  %cmp110 = icmp slt i32 %call109, 0
  br i1 %cmp110, label %err, label %if.end113

if.end113:                                        ; preds = %if.end108
  switch i32 %padding, label %sw.default [
    i32 1, label %sw.bb
    i32 4, label %sw.bb115
    i32 3, label %sw.bb117
  ]

sw.bb:                                            ; preds = %if.end113
  %call114 = tail call i32 @RSA_padding_check_PKCS1_type_2(i8* noundef %to, i32 noundef %div, i8* noundef nonnull %call4, i32 noundef %call109, i32 noundef %div) #8
  br label %sw.epilog

sw.bb115:                                         ; preds = %if.end113
  %call116 = tail call i32 @RSA_padding_check_PKCS1_OAEP(i8* noundef %to, i32 noundef %div, i8* noundef nonnull %call4, i32 noundef %call109, i32 noundef %div, i8* noundef null, i32 noundef 0) #8
  br label %sw.epilog

sw.bb117:                                         ; preds = %if.end113
  %conv118221 = zext i32 %call109 to i64
  %call119 = tail call i8* @memcpy(i8* noundef %to, i8* noundef nonnull %call4, i64 noundef %conv118221) #8
  br label %sw.epilog

sw.default:                                       ; preds = %if.end113
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 noundef 489, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.rsa_ossl_private_decrypt, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 4, i32 noundef 118, i8* noundef null) #8
  br label %err

sw.epilog:                                        ; preds = %sw.bb117, %sw.bb115, %sw.bb
  %r.0 = phi i32 [ %call109, %sw.bb117 ], [ %call116, %sw.bb115 ], [ %call114, %sw.bb ]
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 noundef 498, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.rsa_ossl_private_decrypt, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 4, i32 noundef 114, i8* noundef null) #8
  %call120 = tail call fastcc i32 @constant_time_msb(i32 noundef %r.0) #10
  %neg = and i32 %call120, 1
  %and121 = xor i32 %neg, 1
  tail call void @err_clear_last_constant_time(i32 noundef %and121) #8
  br label %err

err:                                              ; preds = %if.end93, %entry, %if.then91, %if.then81, %if.then76, %if.end108, %if.then103, %if.then68, %if.end41, %if.end14, %sw.epilog, %sw.default, %if.then40, %if.then30, %if.then24, %if.then13, %if.then9
  %num.0 = phi i32 [ %div, %if.then9 ], [ %div, %if.then13 ], [ %div, %if.end14 ], [ %div, %if.then24 ], [ %div, %if.end108 ], [ %div, %sw.default ], [ %div, %sw.epilog ], [ %div, %if.then103 ], [ %div, %if.then68 ], [ %div, %if.end41 ], [ %div, %if.then40 ], [ %div, %if.then30 ], [ %div, %if.then76 ], [ %div, %if.then81 ], [ %div, %if.then91 ], [ 0, %entry ], [ %div, %if.end93 ]
  %r.1 = phi i32 [ -1, %if.then9 ], [ -1, %if.then13 ], [ -1, %if.end14 ], [ -1, %if.then24 ], [ -1, %if.end108 ], [ -1, %sw.default ], [ %r.0, %sw.epilog ], [ -1, %if.then103 ], [ -1, %if.then68 ], [ -1, %if.end41 ], [ -1, %if.then40 ], [ -1, %if.then30 ], [ -1, %if.then76 ], [ -1, %if.then81 ], [ -1, %if.then91 ], [ -1, %entry ], [ -1, %if.end93 ]
  %buf.0 = phi i8* [ %call4, %if.then9 ], [ %call4, %if.then13 ], [ %call4, %if.end14 ], [ %call4, %if.then24 ], [ %call4, %if.end108 ], [ %call4, %sw.default ], [ %call4, %sw.epilog ], [ %call4, %if.then103 ], [ %call4, %if.then68 ], [ %call4, %if.end41 ], [ %call4, %if.then40 ], [ %call4, %if.then30 ], [ %call4, %if.then76 ], [ %call4, %if.then81 ], [ %call4, %if.then91 ], [ null, %entry ], [ %call4, %if.end93 ]
  tail call void @BN_CTX_end(%struct.bignum_ctx* noundef %call) #8
  tail call void @BN_CTX_free(%struct.bignum_ctx* noundef %call) #8
  %conv122 = sext i32 %num.0 to i64
  tail call void @CRYPTO_clear_free(i8* noundef %buf.0, i64 noundef %conv122, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 noundef 505) #8
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #9
  ret i32 %r.1
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @rsa_ossl_mod_exp(%struct.bignum_st* noundef %r0, %struct.bignum_st* noundef %I, %struct.rsa_st* noundef %rsa, %struct.bignum_ctx* noundef %ctx) #3 {
entry:
  %m = alloca [3 x %struct.bignum_st*], align 16
  %0 = bitcast [3 x %struct.bignum_st*]* %m to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %0) #9
  tail call void @BN_CTX_start(%struct.bignum_ctx* noundef %ctx) #8
  %call = tail call %struct.bignum_st* @BN_CTX_get(%struct.bignum_ctx* noundef %ctx) #8
  %call1 = tail call %struct.bignum_st* @BN_CTX_get(%struct.bignum_ctx* noundef %ctx) #8
  %call2 = tail call %struct.bignum_st* @BN_CTX_get(%struct.bignum_ctx* noundef %ctx) #8
  %call3 = tail call %struct.bignum_st* @BN_CTX_get(%struct.bignum_ctx* noundef %ctx) #8
  %cmp = icmp eq %struct.bignum_st* %call3, null
  br i1 %cmp, label %cleanup358, label %if.end

if.end:                                           ; preds = %entry
  %version = getelementptr inbounds %struct.rsa_st, %struct.rsa_st* %rsa, i64 0, i32 2
  %1 = load i32, i32* %version, align 8, !tbaa !25
  %cmp4 = icmp eq i32 %1, 1
  br i1 %cmp4, label %land.lhs.true, label %if.end9

land.lhs.true:                                    ; preds = %if.end
  %prime_infos = getelementptr inbounds %struct.rsa_st, %struct.rsa_st* %rsa, i64 0, i32 15
  %2 = load %struct.stack_st_RSA_PRIME_INFO*, %struct.stack_st_RSA_PRIME_INFO** %prime_infos, align 8, !tbaa !33
  %call5 = tail call fastcc i32 @sk_RSA_PRIME_INFO_num(%struct.stack_st_RSA_PRIME_INFO* noundef %2) #10
  %3 = add i32 %call5, -4
  %4 = icmp ult i32 %3, -3
  br i1 %4, label %cleanup358, label %if.end9

if.end9:                                          ; preds = %land.lhs.true, %if.end
  %ex_primes.0 = phi i32 [ %call5, %land.lhs.true ], [ 0, %if.end ]
  %flags = getelementptr inbounds %struct.rsa_st, %struct.rsa_st* %rsa, i64 0, i32 18
  %5 = load i32, i32* %flags, align 4, !tbaa !16
  %and = and i32 %5, 4
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end40, label %if.then10

if.then10:                                        ; preds = %if.end9
  %call11 = tail call %struct.bignum_st* @BN_new() #8
  %cmp12 = icmp eq %struct.bignum_st* %call11, null
  br i1 %cmp12, label %cleanup358, label %if.end14

if.end14:                                         ; preds = %if.then10
  %p = getelementptr inbounds %struct.rsa_st, %struct.rsa_st* %rsa, i64 0, i32 8
  %6 = load %struct.bignum_st*, %struct.bignum_st** %p, align 8, !tbaa !26
  tail call void @BN_with_flags(%struct.bignum_st* noundef nonnull %call11, %struct.bignum_st* noundef %6, i32 noundef 4) #8
  %_method_mod_p = getelementptr inbounds %struct.rsa_st, %struct.rsa_st* %rsa, i64 0, i32 20
  %lock = getelementptr inbounds %struct.rsa_st, %struct.rsa_st* %rsa, i64 0, i32 24
  %7 = load i8*, i8** %lock, align 8, !tbaa !17
  %call15 = tail call %struct.bn_mont_ctx_st* @BN_MONT_CTX_set_locked(%struct.bn_mont_ctx_st** noundef nonnull %_method_mod_p, i8* noundef %7, %struct.bignum_st* noundef nonnull %call11, %struct.bignum_ctx* noundef %ctx) #8
  %tobool16.not = icmp eq %struct.bn_mont_ctx_st* %call15, null
  br i1 %tobool16.not, label %if.then21, label %lor.lhs.false17

lor.lhs.false17:                                  ; preds = %if.end14
  %q = getelementptr inbounds %struct.rsa_st, %struct.rsa_st* %rsa, i64 0, i32 9
  %8 = load %struct.bignum_st*, %struct.bignum_st** %q, align 8, !tbaa !27
  tail call void @BN_with_flags(%struct.bignum_st* noundef nonnull %call11, %struct.bignum_st* noundef %8, i32 noundef 4) #8
  %_method_mod_q = getelementptr inbounds %struct.rsa_st, %struct.rsa_st* %rsa, i64 0, i32 21
  %9 = load i8*, i8** %lock, align 8, !tbaa !17
  %call19 = tail call %struct.bn_mont_ctx_st* @BN_MONT_CTX_set_locked(%struct.bn_mont_ctx_st** noundef nonnull %_method_mod_q, i8* noundef %9, %struct.bignum_st* noundef nonnull %call11, %struct.bignum_ctx* noundef %ctx) #8
  %tobool20.not = icmp eq %struct.bn_mont_ctx_st* %call19, null
  br i1 %tobool20.not, label %if.then21, label %for.cond.preheader

for.cond.preheader:                               ; preds = %lor.lhs.false17
  %cmp23686.not = icmp eq i32 %ex_primes.0, 0
  br i1 %cmp23686.not, label %for.end, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %prime_infos24 = getelementptr inbounds %struct.rsa_st, %struct.rsa_st* %rsa, i64 0, i32 15
  br label %for.body

if.then21:                                        ; preds = %lor.lhs.false17, %if.end14
  tail call void @BN_free(%struct.bignum_st* noundef nonnull %call11) #8
  br label %cleanup358

for.cond:                                         ; preds = %for.body
  %exitcond.not = icmp eq i32 %inc, %ex_primes.0
  br i1 %exitcond.not, label %for.end, label %for.body, !llvm.loop !34

for.body:                                         ; preds = %for.body.lr.ph, %for.cond
  %i.0687 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.cond ]
  %10 = load %struct.stack_st_RSA_PRIME_INFO*, %struct.stack_st_RSA_PRIME_INFO** %prime_infos24, align 8, !tbaa !33
  %call25 = tail call fastcc %struct.rsa_prime_info_st* @sk_RSA_PRIME_INFO_value(%struct.stack_st_RSA_PRIME_INFO* noundef %10, i32 noundef %i.0687) #10
  %r = getelementptr inbounds %struct.rsa_prime_info_st, %struct.rsa_prime_info_st* %call25, i64 0, i32 0
  %11 = load %struct.bignum_st*, %struct.bignum_st** %r, align 8, !tbaa !36
  tail call void @BN_with_flags(%struct.bignum_st* noundef nonnull %call11, %struct.bignum_st* noundef %11, i32 noundef 4) #8
  %m26 = getelementptr inbounds %struct.rsa_prime_info_st, %struct.rsa_prime_info_st* %call25, i64 0, i32 4
  %12 = load i8*, i8** %lock, align 8, !tbaa !17
  %call28 = tail call %struct.bn_mont_ctx_st* @BN_MONT_CTX_set_locked(%struct.bn_mont_ctx_st** noundef nonnull %m26, i8* noundef %12, %struct.bignum_st* noundef nonnull %call11, %struct.bignum_ctx* noundef %ctx) #8
  %tobool29.not = icmp eq %struct.bn_mont_ctx_st* %call28, null
  %inc = add nuw nsw i32 %i.0687, 1
  br i1 %tobool29.not, label %if.then30, label %for.cond

if.then30:                                        ; preds = %for.body
  tail call void @BN_free(%struct.bignum_st* noundef nonnull %call11) #8
  br label %cleanup358

for.end:                                          ; preds = %for.cond, %for.cond.preheader
  tail call void @BN_free(%struct.bignum_st* noundef nonnull %call11) #8
  %meth = getelementptr inbounds %struct.rsa_st, %struct.rsa_st* %rsa, i64 0, i32 3
  %13 = load %struct.rsa_meth_st*, %struct.rsa_meth_st** %meth, align 8, !tbaa !18
  %bn_mod_exp = getelementptr inbounds %struct.rsa_meth_st, %struct.rsa_meth_st* %13, i64 0, i32 6
  %14 = load i32 (%struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*, %struct.bn_mont_ctx_st*)*, i32 (%struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*, %struct.bn_mont_ctx_st*)** %bn_mod_exp, align 8, !tbaa !19
  %cmp32 = icmp eq i32 (%struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*, %struct.bn_mont_ctx_st*)* %14, @BN_mod_exp_mont
  %cmp34 = icmp eq i32 %ex_primes.0, 0
  %or.cond368 = select i1 %cmp32, i1 %cmp34, i1 false
  br i1 %or.cond368, label %land.rhs, label %cleanup

land.rhs:                                         ; preds = %for.end
  %15 = load %struct.bignum_st*, %struct.bignum_st** %q, align 8, !tbaa !27
  %call36 = tail call i32 @BN_num_bits(%struct.bignum_st* noundef %15) #8
  %16 = load %struct.bignum_st*, %struct.bignum_st** %p, align 8, !tbaa !26
  %call38 = tail call i32 @BN_num_bits(%struct.bignum_st* noundef %16) #8
  %cmp39 = icmp eq i32 %call36, %call38
  br label %cleanup

cleanup:                                          ; preds = %for.end, %land.rhs
  %17 = phi i1 [ false, %for.end ], [ %cmp39, %land.rhs ]
  %land.ext = zext i1 %17 to i32
  %.pre = load i32, i32* %flags, align 4, !tbaa !16
  br label %if.end40

if.end40:                                         ; preds = %cleanup, %if.end9
  %18 = phi i32 [ %.pre, %cleanup ], [ %5, %if.end9 ]
  %smooth.1 = phi i32 [ %land.ext, %cleanup ], [ 0, %if.end9 ]
  %and42 = and i32 %18, 2
  %tobool43.not = icmp eq i32 %and42, 0
  br i1 %tobool43.not, label %if.end50, label %if.then44

if.then44:                                        ; preds = %if.end40
  %_method_mod_n = getelementptr inbounds %struct.rsa_st, %struct.rsa_st* %rsa, i64 0, i32 19
  %lock45 = getelementptr inbounds %struct.rsa_st, %struct.rsa_st* %rsa, i64 0, i32 24
  %19 = load i8*, i8** %lock45, align 8, !tbaa !17
  %n = getelementptr inbounds %struct.rsa_st, %struct.rsa_st* %rsa, i64 0, i32 5
  %20 = load %struct.bignum_st*, %struct.bignum_st** %n, align 8, !tbaa !8
  %call46 = tail call %struct.bn_mont_ctx_st* @BN_MONT_CTX_set_locked(%struct.bn_mont_ctx_st** noundef nonnull %_method_mod_n, i8* noundef %19, %struct.bignum_st* noundef %20, %struct.bignum_ctx* noundef %ctx) #8
  %tobool47.not = icmp eq %struct.bn_mont_ctx_st* %call46, null
  br i1 %tobool47.not, label %cleanup358, label %if.end50

if.end50:                                         ; preds = %if.then44, %if.end40
  %tobool51.not = icmp eq i32 %smooth.1, 0
  br i1 %tobool51.not, label %if.end97, label %if.then52

if.then52:                                        ; preds = %if.end50
  %_method_mod_q53 = getelementptr inbounds %struct.rsa_st, %struct.rsa_st* %rsa, i64 0, i32 21
  %21 = load %struct.bn_mont_ctx_st*, %struct.bn_mont_ctx_st** %_method_mod_q53, align 8, !tbaa !38
  %call54 = tail call i32 @bn_from_mont_fixed_top(%struct.bignum_st* noundef %call2, %struct.bignum_st* noundef %I, %struct.bn_mont_ctx_st* noundef %21, %struct.bignum_ctx* noundef %ctx) #8
  %tobool55.not = icmp eq i32 %call54, 0
  br i1 %tobool55.not, label %cleanup358, label %lor.lhs.false56

lor.lhs.false56:                                  ; preds = %if.then52
  %22 = load %struct.bn_mont_ctx_st*, %struct.bn_mont_ctx_st** %_method_mod_q53, align 8, !tbaa !38
  %call58 = tail call i32 @bn_to_mont_fixed_top(%struct.bignum_st* noundef %call2, %struct.bignum_st* noundef %call2, %struct.bn_mont_ctx_st* noundef %22, %struct.bignum_ctx* noundef %ctx) #8
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %cleanup358, label %lor.lhs.false60

lor.lhs.false60:                                  ; preds = %lor.lhs.false56
  %_method_mod_p61 = getelementptr inbounds %struct.rsa_st, %struct.rsa_st* %rsa, i64 0, i32 20
  %23 = load %struct.bn_mont_ctx_st*, %struct.bn_mont_ctx_st** %_method_mod_p61, align 8, !tbaa !39
  %call62 = tail call i32 @bn_from_mont_fixed_top(%struct.bignum_st* noundef %call, %struct.bignum_st* noundef %I, %struct.bn_mont_ctx_st* noundef %23, %struct.bignum_ctx* noundef %ctx) #8
  %tobool63.not = icmp eq i32 %call62, 0
  br i1 %tobool63.not, label %cleanup358, label %lor.lhs.false64

lor.lhs.false64:                                  ; preds = %lor.lhs.false60
  %24 = load %struct.bn_mont_ctx_st*, %struct.bn_mont_ctx_st** %_method_mod_p61, align 8, !tbaa !39
  %call66 = tail call i32 @bn_to_mont_fixed_top(%struct.bignum_st* noundef %call, %struct.bignum_st* noundef %call, %struct.bn_mont_ctx_st* noundef %24, %struct.bignum_ctx* noundef %ctx) #8
  %tobool67.not = icmp eq i32 %call66, 0
  br i1 %tobool67.not, label %cleanup358, label %lor.lhs.false68

lor.lhs.false68:                                  ; preds = %lor.lhs.false64
  %dmq1 = getelementptr inbounds %struct.rsa_st, %struct.rsa_st* %rsa, i64 0, i32 11
  %25 = load %struct.bignum_st*, %struct.bignum_st** %dmq1, align 8, !tbaa !29
  %q69 = getelementptr inbounds %struct.rsa_st, %struct.rsa_st* %rsa, i64 0, i32 9
  %26 = load %struct.bignum_st*, %struct.bignum_st** %q69, align 8, !tbaa !27
  %27 = load %struct.bn_mont_ctx_st*, %struct.bn_mont_ctx_st** %_method_mod_q53, align 8, !tbaa !38
  %dmp1 = getelementptr inbounds %struct.rsa_st, %struct.rsa_st* %rsa, i64 0, i32 10
  %28 = load %struct.bignum_st*, %struct.bignum_st** %dmp1, align 8, !tbaa !28
  %p71 = getelementptr inbounds %struct.rsa_st, %struct.rsa_st* %rsa, i64 0, i32 8
  %29 = load %struct.bignum_st*, %struct.bignum_st** %p71, align 8, !tbaa !26
  %30 = load %struct.bn_mont_ctx_st*, %struct.bn_mont_ctx_st** %_method_mod_p61, align 8, !tbaa !39
  %call73 = tail call i32 @BN_mod_exp_mont_consttime_x2(%struct.bignum_st* noundef %call2, %struct.bignum_st* noundef %call2, %struct.bignum_st* noundef %25, %struct.bignum_st* noundef %26, %struct.bn_mont_ctx_st* noundef %27, %struct.bignum_st* noundef %call, %struct.bignum_st* noundef %call, %struct.bignum_st* noundef %28, %struct.bignum_st* noundef %29, %struct.bn_mont_ctx_st* noundef %30, %struct.bignum_ctx* noundef %ctx) #8
  %tobool74.not = icmp eq i32 %call73, 0
  br i1 %tobool74.not, label %cleanup358, label %lor.lhs.false75

lor.lhs.false75:                                  ; preds = %lor.lhs.false68
  %31 = load %struct.bignum_st*, %struct.bignum_st** %p71, align 8, !tbaa !26
  %call77 = tail call i32 @bn_mod_sub_fixed_top(%struct.bignum_st* noundef %call, %struct.bignum_st* noundef %call, %struct.bignum_st* noundef %call2, %struct.bignum_st* noundef %31) #8
  %tobool78.not = icmp eq i32 %call77, 0
  br i1 %tobool78.not, label %cleanup358, label %lor.lhs.false79

lor.lhs.false79:                                  ; preds = %lor.lhs.false75
  %32 = load %struct.bn_mont_ctx_st*, %struct.bn_mont_ctx_st** %_method_mod_p61, align 8, !tbaa !39
  %call81 = tail call i32 @bn_to_mont_fixed_top(%struct.bignum_st* noundef %call, %struct.bignum_st* noundef %call, %struct.bn_mont_ctx_st* noundef %32, %struct.bignum_ctx* noundef %ctx) #8
  %tobool82.not = icmp eq i32 %call81, 0
  br i1 %tobool82.not, label %cleanup358, label %lor.lhs.false83

lor.lhs.false83:                                  ; preds = %lor.lhs.false79
  %iqmp = getelementptr inbounds %struct.rsa_st, %struct.rsa_st* %rsa, i64 0, i32 12
  %33 = load %struct.bignum_st*, %struct.bignum_st** %iqmp, align 8, !tbaa !30
  %34 = load %struct.bn_mont_ctx_st*, %struct.bn_mont_ctx_st** %_method_mod_p61, align 8, !tbaa !39
  %call85 = tail call i32 @bn_mul_mont_fixed_top(%struct.bignum_st* noundef %call, %struct.bignum_st* noundef %call, %struct.bignum_st* noundef %33, %struct.bn_mont_ctx_st* noundef %34, %struct.bignum_ctx* noundef %ctx) #8
  %tobool86.not = icmp eq i32 %call85, 0
  br i1 %tobool86.not, label %cleanup358, label %lor.lhs.false87

lor.lhs.false87:                                  ; preds = %lor.lhs.false83
  %35 = load %struct.bignum_st*, %struct.bignum_st** %q69, align 8, !tbaa !27
  %call89 = tail call i32 @bn_mul_fixed_top(%struct.bignum_st* noundef %r0, %struct.bignum_st* noundef %call, %struct.bignum_st* noundef %35, %struct.bignum_ctx* noundef %ctx) #8
  %tobool90.not = icmp eq i32 %call89, 0
  br i1 %tobool90.not, label %cleanup358, label %lor.lhs.false91

lor.lhs.false91:                                  ; preds = %lor.lhs.false87
  %n92 = getelementptr inbounds %struct.rsa_st, %struct.rsa_st* %rsa, i64 0, i32 5
  %36 = load %struct.bignum_st*, %struct.bignum_st** %n92, align 8, !tbaa !8
  %call93 = tail call i32 @bn_mod_add_fixed_top(%struct.bignum_st* noundef %r0, %struct.bignum_st* noundef %r0, %struct.bignum_st* noundef %call2, %struct.bignum_st* noundef %36) #8
  %tobool94.not = icmp eq i32 %call93, 0
  br i1 %tobool94.not, label %cleanup358, label %tail

if.end97:                                         ; preds = %if.end50
  %call98 = tail call %struct.bignum_st* @BN_new() #8
  %cmp99 = icmp eq %struct.bignum_st* %call98, null
  br i1 %cmp99, label %cleanup358, label %if.end101

if.end101:                                        ; preds = %if.end97
  tail call void @BN_with_flags(%struct.bignum_st* noundef nonnull %call98, %struct.bignum_st* noundef %I, i32 noundef 4) #8
  %q102 = getelementptr inbounds %struct.rsa_st, %struct.rsa_st* %rsa, i64 0, i32 9
  %37 = load %struct.bignum_st*, %struct.bignum_st** %q102, align 8, !tbaa !27
  %call103 = tail call i32 @BN_div(%struct.bignum_st* noundef null, %struct.bignum_st* noundef %call, %struct.bignum_st* noundef nonnull %call98, %struct.bignum_st* noundef %37, %struct.bignum_ctx* noundef %ctx) #8
  %tobool104.not = icmp eq i32 %call103, 0
  br i1 %tobool104.not, label %if.then105, label %if.end106

if.then105:                                       ; preds = %if.end101
  tail call void @BN_free(%struct.bignum_st* noundef nonnull %call98) #8
  br label %cleanup358

if.end106:                                        ; preds = %if.end101
  %call108 = tail call %struct.bignum_st* @BN_new() #8
  %cmp109 = icmp eq %struct.bignum_st* %call108, null
  br i1 %cmp109, label %if.then110, label %if.end111

if.then110:                                       ; preds = %if.end106
  tail call void @BN_free(%struct.bignum_st* noundef nonnull %call98) #8
  br label %cleanup358

if.end111:                                        ; preds = %if.end106
  %dmq1112 = getelementptr inbounds %struct.rsa_st, %struct.rsa_st* %rsa, i64 0, i32 11
  %38 = load %struct.bignum_st*, %struct.bignum_st** %dmq1112, align 8, !tbaa !29
  tail call void @BN_with_flags(%struct.bignum_st* noundef nonnull %call108, %struct.bignum_st* noundef %38, i32 noundef 4) #8
  %meth113 = getelementptr inbounds %struct.rsa_st, %struct.rsa_st* %rsa, i64 0, i32 3
  %39 = load %struct.rsa_meth_st*, %struct.rsa_meth_st** %meth113, align 8, !tbaa !18
  %bn_mod_exp114 = getelementptr inbounds %struct.rsa_meth_st, %struct.rsa_meth_st* %39, i64 0, i32 6
  %40 = load i32 (%struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*, %struct.bn_mont_ctx_st*)*, i32 (%struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*, %struct.bn_mont_ctx_st*)** %bn_mod_exp114, align 8, !tbaa !19
  %41 = load %struct.bignum_st*, %struct.bignum_st** %q102, align 8, !tbaa !27
  %_method_mod_q116 = getelementptr inbounds %struct.rsa_st, %struct.rsa_st* %rsa, i64 0, i32 21
  %42 = load %struct.bn_mont_ctx_st*, %struct.bn_mont_ctx_st** %_method_mod_q116, align 8, !tbaa !38
  %call117 = tail call i32 %40(%struct.bignum_st* noundef %call2, %struct.bignum_st* noundef %call, %struct.bignum_st* noundef nonnull %call108, %struct.bignum_st* noundef %41, %struct.bignum_ctx* noundef %ctx, %struct.bn_mont_ctx_st* noundef %42) #8
  %tobool118.not = icmp eq i32 %call117, 0
  br i1 %tobool118.not, label %if.then119, label %cleanup.cont123

if.then119:                                       ; preds = %if.end111
  tail call void @BN_free(%struct.bignum_st* noundef nonnull %call98) #8
  tail call void @BN_free(%struct.bignum_st* noundef nonnull %call108) #8
  br label %cleanup358

cleanup.cont123:                                  ; preds = %if.end111
  tail call void @BN_free(%struct.bignum_st* noundef nonnull %call108) #8
  %p124 = getelementptr inbounds %struct.rsa_st, %struct.rsa_st* %rsa, i64 0, i32 8
  %43 = load %struct.bignum_st*, %struct.bignum_st** %p124, align 8, !tbaa !26
  %call125 = tail call i32 @BN_div(%struct.bignum_st* noundef null, %struct.bignum_st* noundef %call, %struct.bignum_st* noundef nonnull %call98, %struct.bignum_st* noundef %43, %struct.bignum_ctx* noundef %ctx) #8
  %tobool126.not = icmp eq i32 %call125, 0
  tail call void @BN_free(%struct.bignum_st* noundef nonnull %call98) #8
  br i1 %tobool126.not, label %cleanup358, label %cleanup.cont131

cleanup.cont131:                                  ; preds = %cleanup.cont123
  %call133 = tail call %struct.bignum_st* @BN_new() #8
  %cmp134 = icmp eq %struct.bignum_st* %call133, null
  br i1 %cmp134, label %cleanup358, label %if.end136

if.end136:                                        ; preds = %cleanup.cont131
  %dmp1137 = getelementptr inbounds %struct.rsa_st, %struct.rsa_st* %rsa, i64 0, i32 10
  %44 = load %struct.bignum_st*, %struct.bignum_st** %dmp1137, align 8, !tbaa !28
  tail call void @BN_with_flags(%struct.bignum_st* noundef nonnull %call133, %struct.bignum_st* noundef %44, i32 noundef 4) #8
  %45 = load %struct.rsa_meth_st*, %struct.rsa_meth_st** %meth113, align 8, !tbaa !18
  %bn_mod_exp139 = getelementptr inbounds %struct.rsa_meth_st, %struct.rsa_meth_st* %45, i64 0, i32 6
  %46 = load i32 (%struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*, %struct.bn_mont_ctx_st*)*, i32 (%struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*, %struct.bn_mont_ctx_st*)** %bn_mod_exp139, align 8, !tbaa !19
  %47 = load %struct.bignum_st*, %struct.bignum_st** %p124, align 8, !tbaa !26
  %_method_mod_p141 = getelementptr inbounds %struct.rsa_st, %struct.rsa_st* %rsa, i64 0, i32 20
  %48 = load %struct.bn_mont_ctx_st*, %struct.bn_mont_ctx_st** %_method_mod_p141, align 8, !tbaa !39
  %call142 = tail call i32 %46(%struct.bignum_st* noundef %r0, %struct.bignum_st* noundef %call, %struct.bignum_st* noundef nonnull %call133, %struct.bignum_st* noundef %47, %struct.bignum_ctx* noundef %ctx, %struct.bn_mont_ctx_st* noundef %48) #8
  %tobool143.not = icmp eq i32 %call142, 0
  tail call void @BN_free(%struct.bignum_st* noundef nonnull %call133) #8
  br i1 %tobool143.not, label %cleanup358, label %cleanup.cont148

cleanup.cont148:                                  ; preds = %if.end136
  %cmp149 = icmp sgt i32 %ex_primes.0, 0
  br i1 %cmp149, label %if.then150, label %if.end189

if.then150:                                       ; preds = %cleanup.cont148
  %call151 = tail call %struct.bignum_st* @BN_new() #8
  %call152 = tail call %struct.bignum_st* @BN_new() #8
  %cmp153 = icmp eq %struct.bignum_st* %call152, null
  %cmp155 = icmp eq %struct.bignum_st* %call151, null
  %or.cond369 = select i1 %cmp153, i1 true, i1 %cmp155
  br i1 %or.cond369, label %if.then156, label %for.body160.lr.ph

for.body160.lr.ph:                                ; preds = %if.then150
  %prime_infos165 = getelementptr inbounds %struct.rsa_st, %struct.rsa_st* %rsa, i64 0, i32 15
  %wide.trip.count = zext i32 %ex_primes.0 to i64
  br label %for.body160

if.then156:                                       ; preds = %if.then150
  tail call void @BN_free(%struct.bignum_st* noundef %call152) #8
  tail call void @BN_free(%struct.bignum_st* noundef %call151) #8
  br label %cleanup358

for.cond158:                                      ; preds = %if.end171
  %exitcond693.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond693.not, label %cleanup185, label %for.body160, !llvm.loop !40

for.body160:                                      ; preds = %for.body160.lr.ph, %for.cond158
  %indvars.iv = phi i64 [ 0, %for.body160.lr.ph ], [ %indvars.iv.next, %for.cond158 ]
  %call161 = tail call %struct.bignum_st* @BN_CTX_get(%struct.bignum_ctx* noundef %ctx) #8
  %arrayidx = getelementptr inbounds [3 x %struct.bignum_st*], [3 x %struct.bignum_st*]* %m, i64 0, i64 %indvars.iv
  store %struct.bignum_st* %call161, %struct.bignum_st** %arrayidx, align 8, !tbaa !4
  %cmp162 = icmp eq %struct.bignum_st* %call161, null
  br i1 %cmp162, label %if.then163, label %if.end164

if.then163:                                       ; preds = %for.body160
  tail call void @BN_free(%struct.bignum_st* noundef %call152) #8
  tail call void @BN_free(%struct.bignum_st* noundef %call151) #8
  br label %cleanup358

if.end164:                                        ; preds = %for.body160
  %49 = load %struct.stack_st_RSA_PRIME_INFO*, %struct.stack_st_RSA_PRIME_INFO** %prime_infos165, align 8, !tbaa !33
  %50 = trunc i64 %indvars.iv to i32
  %call166 = tail call fastcc %struct.rsa_prime_info_st* @sk_RSA_PRIME_INFO_value(%struct.stack_st_RSA_PRIME_INFO* noundef %49, i32 noundef %50) #10
  tail call void @BN_with_flags(%struct.bignum_st* noundef %call152, %struct.bignum_st* noundef %I, i32 noundef 4) #8
  %d = getelementptr inbounds %struct.rsa_prime_info_st, %struct.rsa_prime_info_st* %call166, i64 0, i32 1
  %51 = load %struct.bignum_st*, %struct.bignum_st** %d, align 8, !tbaa !41
  tail call void @BN_with_flags(%struct.bignum_st* noundef %call151, %struct.bignum_st* noundef %51, i32 noundef 4) #8
  %r167 = getelementptr inbounds %struct.rsa_prime_info_st, %struct.rsa_prime_info_st* %call166, i64 0, i32 0
  %52 = load %struct.bignum_st*, %struct.bignum_st** %r167, align 8, !tbaa !36
  %call168 = tail call i32 @BN_div(%struct.bignum_st* noundef null, %struct.bignum_st* noundef %call, %struct.bignum_st* noundef %call152, %struct.bignum_st* noundef %52, %struct.bignum_ctx* noundef %ctx) #8
  %tobool169.not = icmp eq i32 %call168, 0
  br i1 %tobool169.not, label %if.then170, label %if.end171

if.then170:                                       ; preds = %if.end164
  tail call void @BN_free(%struct.bignum_st* noundef %call152) #8
  tail call void @BN_free(%struct.bignum_st* noundef %call151) #8
  br label %cleanup358

if.end171:                                        ; preds = %if.end164
  %53 = load %struct.rsa_meth_st*, %struct.rsa_meth_st** %meth113, align 8, !tbaa !18
  %bn_mod_exp173 = getelementptr inbounds %struct.rsa_meth_st, %struct.rsa_meth_st* %53, i64 0, i32 6
  %54 = load i32 (%struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*, %struct.bn_mont_ctx_st*)*, i32 (%struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*, %struct.bn_mont_ctx_st*)** %bn_mod_exp173, align 8, !tbaa !19
  %55 = load %struct.bignum_st*, %struct.bignum_st** %r167, align 8, !tbaa !36
  %m177 = getelementptr inbounds %struct.rsa_prime_info_st, %struct.rsa_prime_info_st* %call166, i64 0, i32 4
  %56 = load %struct.bn_mont_ctx_st*, %struct.bn_mont_ctx_st** %m177, align 8, !tbaa !42
  %call178 = tail call i32 %54(%struct.bignum_st* noundef nonnull %call161, %struct.bignum_st* noundef %call, %struct.bignum_st* noundef %call151, %struct.bignum_st* noundef %55, %struct.bignum_ctx* noundef %ctx, %struct.bn_mont_ctx_st* noundef %56) #8
  %tobool179.not = icmp eq i32 %call178, 0
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br i1 %tobool179.not, label %if.then180, label %for.cond158

if.then180:                                       ; preds = %if.end171
  tail call void @BN_free(%struct.bignum_st* noundef %call152) #8
  tail call void @BN_free(%struct.bignum_st* noundef %call151) #8
  br label %cleanup358

cleanup185:                                       ; preds = %for.cond158
  tail call void @BN_free(%struct.bignum_st* noundef %call152) #8
  tail call void @BN_free(%struct.bignum_st* noundef %call151) #8
  br label %if.end189

if.end189:                                        ; preds = %cleanup185, %cleanup.cont148
  %call190 = tail call i32 @BN_sub(%struct.bignum_st* noundef %r0, %struct.bignum_st* noundef %r0, %struct.bignum_st* noundef %call2) #8
  %tobool191.not = icmp eq i32 %call190, 0
  br i1 %tobool191.not, label %cleanup358, label %if.end193

if.end193:                                        ; preds = %if.end189
  %call194 = tail call i32 @BN_is_negative(%struct.bignum_st* noundef %r0) #8
  %tobool195.not = icmp eq i32 %call194, 0
  br i1 %tobool195.not, label %if.end202, label %if.then196

if.then196:                                       ; preds = %if.end193
  %57 = load %struct.bignum_st*, %struct.bignum_st** %p124, align 8, !tbaa !26
  %call198 = tail call i32 @BN_add(%struct.bignum_st* noundef %r0, %struct.bignum_st* noundef %r0, %struct.bignum_st* noundef %57) #8
  %tobool199.not = icmp eq i32 %call198, 0
  br i1 %tobool199.not, label %cleanup358, label %if.end202

if.end202:                                        ; preds = %if.then196, %if.end193
  %iqmp203 = getelementptr inbounds %struct.rsa_st, %struct.rsa_st* %rsa, i64 0, i32 12
  %58 = load %struct.bignum_st*, %struct.bignum_st** %iqmp203, align 8, !tbaa !30
  %call204 = tail call i32 @BN_mul(%struct.bignum_st* noundef %call, %struct.bignum_st* noundef %r0, %struct.bignum_st* noundef %58, %struct.bignum_ctx* noundef %ctx) #8
  %tobool205.not = icmp eq i32 %call204, 0
  br i1 %tobool205.not, label %cleanup358, label %if.end207

if.end207:                                        ; preds = %if.end202
  %call208 = tail call %struct.bignum_st* @BN_new() #8
  %cmp209 = icmp eq %struct.bignum_st* %call208, null
  br i1 %cmp209, label %cleanup358, label %if.end211

if.end211:                                        ; preds = %if.end207
  tail call void @BN_with_flags(%struct.bignum_st* noundef nonnull %call208, %struct.bignum_st* noundef %call, i32 noundef 4) #8
  %59 = load %struct.bignum_st*, %struct.bignum_st** %p124, align 8, !tbaa !26
  %call213 = tail call i32 @BN_div(%struct.bignum_st* noundef null, %struct.bignum_st* noundef %r0, %struct.bignum_st* noundef nonnull %call208, %struct.bignum_st* noundef %59, %struct.bignum_ctx* noundef %ctx) #8
  %tobool214.not = icmp eq i32 %call213, 0
  tail call void @BN_free(%struct.bignum_st* noundef nonnull %call208) #8
  br i1 %tobool214.not, label %cleanup358, label %cleanup.cont219

cleanup.cont219:                                  ; preds = %if.end211
  %call220 = tail call i32 @BN_is_negative(%struct.bignum_st* noundef %r0) #8
  %tobool221.not = icmp eq i32 %call220, 0
  br i1 %tobool221.not, label %if.end228, label %if.then222

if.then222:                                       ; preds = %cleanup.cont219
  %60 = load %struct.bignum_st*, %struct.bignum_st** %p124, align 8, !tbaa !26
  %call224 = tail call i32 @BN_add(%struct.bignum_st* noundef %r0, %struct.bignum_st* noundef %r0, %struct.bignum_st* noundef %60) #8
  %tobool225.not = icmp eq i32 %call224, 0
  br i1 %tobool225.not, label %cleanup358, label %if.end228

if.end228:                                        ; preds = %if.then222, %cleanup.cont219
  %61 = load %struct.bignum_st*, %struct.bignum_st** %q102, align 8, !tbaa !27
  %call230 = tail call i32 @BN_mul(%struct.bignum_st* noundef %call, %struct.bignum_st* noundef %r0, %struct.bignum_st* noundef %61, %struct.bignum_ctx* noundef %ctx) #8
  %tobool231.not = icmp eq i32 %call230, 0
  br i1 %tobool231.not, label %cleanup358, label %if.end233

if.end233:                                        ; preds = %if.end228
  %call234 = tail call i32 @BN_add(%struct.bignum_st* noundef %r0, %struct.bignum_st* noundef %call, %struct.bignum_st* noundef %call2) #8
  %tobool235.not = icmp eq i32 %call234, 0
  br i1 %tobool235.not, label %cleanup358, label %if.end237

if.end237:                                        ; preds = %if.end233
  br i1 %cmp149, label %if.then239, label %tail

if.then239:                                       ; preds = %if.end237
  %call240 = tail call %struct.bignum_st* @BN_new() #8
  %cmp241 = icmp eq %struct.bignum_st* %call240, null
  br i1 %cmp241, label %cleanup358, label %for.body246.lr.ph

for.body246.lr.ph:                                ; preds = %if.then239
  %prime_infos247 = getelementptr inbounds %struct.rsa_st, %struct.rsa_st* %rsa, i64 0, i32 15
  %wide.trip.count697 = zext i32 %ex_primes.0 to i64
  br label %for.body246

for.cond244:                                      ; preds = %if.end276
  %exitcond698.not = icmp eq i64 %indvars.iv.next695, %wide.trip.count697
  br i1 %exitcond698.not, label %cleanup284, label %for.body246, !llvm.loop !43

for.body246:                                      ; preds = %for.body246.lr.ph, %for.cond244
  %indvars.iv694 = phi i64 [ 0, %for.body246.lr.ph ], [ %indvars.iv.next695, %for.cond244 ]
  %62 = load %struct.stack_st_RSA_PRIME_INFO*, %struct.stack_st_RSA_PRIME_INFO** %prime_infos247, align 8, !tbaa !33
  %63 = trunc i64 %indvars.iv694 to i32
  %call248 = tail call fastcc %struct.rsa_prime_info_st* @sk_RSA_PRIME_INFO_value(%struct.stack_st_RSA_PRIME_INFO* noundef %62, i32 noundef %63) #10
  %arrayidx250 = getelementptr inbounds [3 x %struct.bignum_st*], [3 x %struct.bignum_st*]* %m, i64 0, i64 %indvars.iv694
  %64 = load %struct.bignum_st*, %struct.bignum_st** %arrayidx250, align 8, !tbaa !4
  %call251 = tail call i32 @BN_sub(%struct.bignum_st* noundef %call, %struct.bignum_st* noundef %64, %struct.bignum_st* noundef %r0) #8
  %tobool252.not = icmp eq i32 %call251, 0
  br i1 %tobool252.not, label %if.then253, label %if.end254

if.then253:                                       ; preds = %for.body246
  tail call void @BN_free(%struct.bignum_st* noundef nonnull %call240) #8
  br label %cleanup358

if.end254:                                        ; preds = %for.body246
  %t = getelementptr inbounds %struct.rsa_prime_info_st, %struct.rsa_prime_info_st* %call248, i64 0, i32 2
  %65 = load %struct.bignum_st*, %struct.bignum_st** %t, align 8, !tbaa !44
  %call255 = tail call i32 @BN_mul(%struct.bignum_st* noundef %call1, %struct.bignum_st* noundef %call, %struct.bignum_st* noundef %65, %struct.bignum_ctx* noundef %ctx) #8
  %tobool256.not = icmp eq i32 %call255, 0
  br i1 %tobool256.not, label %if.then257, label %if.end258

if.then257:                                       ; preds = %if.end254
  tail call void @BN_free(%struct.bignum_st* noundef nonnull %call240) #8
  br label %cleanup358

if.end258:                                        ; preds = %if.end254
  tail call void @BN_with_flags(%struct.bignum_st* noundef nonnull %call240, %struct.bignum_st* noundef %call1, i32 noundef 4) #8
  %r259 = getelementptr inbounds %struct.rsa_prime_info_st, %struct.rsa_prime_info_st* %call248, i64 0, i32 0
  %66 = load %struct.bignum_st*, %struct.bignum_st** %r259, align 8, !tbaa !36
  %call260 = tail call i32 @BN_div(%struct.bignum_st* noundef null, %struct.bignum_st* noundef %call, %struct.bignum_st* noundef nonnull %call240, %struct.bignum_st* noundef %66, %struct.bignum_ctx* noundef %ctx) #8
  %tobool261.not = icmp eq i32 %call260, 0
  br i1 %tobool261.not, label %if.then262, label %if.end263

if.then262:                                       ; preds = %if.end258
  tail call void @BN_free(%struct.bignum_st* noundef nonnull %call240) #8
  br label %cleanup358

if.end263:                                        ; preds = %if.end258
  %call264 = tail call i32 @BN_is_negative(%struct.bignum_st* noundef %call) #8
  %tobool265.not = icmp eq i32 %call264, 0
  br i1 %tobool265.not, label %if.end272, label %if.then266

if.then266:                                       ; preds = %if.end263
  %67 = load %struct.bignum_st*, %struct.bignum_st** %r259, align 8, !tbaa !36
  %call268 = tail call i32 @BN_add(%struct.bignum_st* noundef %call, %struct.bignum_st* noundef %call, %struct.bignum_st* noundef %67) #8
  %tobool269.not = icmp eq i32 %call268, 0
  br i1 %tobool269.not, label %if.then270, label %if.end272

if.then270:                                       ; preds = %if.then266
  tail call void @BN_free(%struct.bignum_st* noundef nonnull %call240) #8
  br label %cleanup358

if.end272:                                        ; preds = %if.then266, %if.end263
  %pp = getelementptr inbounds %struct.rsa_prime_info_st, %struct.rsa_prime_info_st* %call248, i64 0, i32 3
  %68 = load %struct.bignum_st*, %struct.bignum_st** %pp, align 8, !tbaa !45
  %call273 = tail call i32 @BN_mul(%struct.bignum_st* noundef %call, %struct.bignum_st* noundef %call, %struct.bignum_st* noundef %68, %struct.bignum_ctx* noundef %ctx) #8
  %tobool274.not = icmp eq i32 %call273, 0
  br i1 %tobool274.not, label %if.then275, label %if.end276

if.then275:                                       ; preds = %if.end272
  tail call void @BN_free(%struct.bignum_st* noundef nonnull %call240) #8
  br label %cleanup358

if.end276:                                        ; preds = %if.end272
  %call277 = tail call i32 @BN_add(%struct.bignum_st* noundef %r0, %struct.bignum_st* noundef %r0, %struct.bignum_st* noundef %call) #8
  %tobool278.not = icmp eq i32 %call277, 0
  %indvars.iv.next695 = add nuw nsw i64 %indvars.iv694, 1
  br i1 %tobool278.not, label %if.then279, label %for.cond244

if.then279:                                       ; preds = %if.end276
  tail call void @BN_free(%struct.bignum_st* noundef nonnull %call240) #8
  br label %cleanup358

cleanup284:                                       ; preds = %for.cond244
  tail call void @BN_free(%struct.bignum_st* noundef nonnull %call240) #8
  br label %tail

tail:                                             ; preds = %cleanup284, %if.end237, %lor.lhs.false91
  %e = getelementptr inbounds %struct.rsa_st, %struct.rsa_st* %rsa, i64 0, i32 6
  %69 = load %struct.bignum_st*, %struct.bignum_st** %e, align 8, !tbaa !14
  %tobool288.not = icmp eq %struct.bignum_st* %69, null
  br i1 %tobool288.not, label %if.end357, label %land.lhs.true289

land.lhs.true289:                                 ; preds = %tail
  %n290 = getelementptr inbounds %struct.rsa_st, %struct.rsa_st* %rsa, i64 0, i32 5
  %70 = load %struct.bignum_st*, %struct.bignum_st** %n290, align 8, !tbaa !8
  %tobool291.not = icmp eq %struct.bignum_st* %70, null
  br i1 %tobool291.not, label %if.end357, label %if.then292

if.then292:                                       ; preds = %land.lhs.true289
  %meth293 = getelementptr inbounds %struct.rsa_st, %struct.rsa_st* %rsa, i64 0, i32 3
  %71 = load %struct.rsa_meth_st*, %struct.rsa_meth_st** %meth293, align 8, !tbaa !18
  %bn_mod_exp294 = getelementptr inbounds %struct.rsa_meth_st, %struct.rsa_meth_st* %71, i64 0, i32 6
  %72 = load i32 (%struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*, %struct.bn_mont_ctx_st*)*, i32 (%struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*, %struct.bn_mont_ctx_st*)** %bn_mod_exp294, align 8, !tbaa !19
  %cmp295 = icmp eq i32 (%struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*, %struct.bn_mont_ctx_st*)* %72, @BN_mod_exp_mont
  br i1 %cmp295, label %if.then296, label %if.else

if.then296:                                       ; preds = %if.then292
  %_method_mod_n299 = getelementptr inbounds %struct.rsa_st, %struct.rsa_st* %rsa, i64 0, i32 19
  %73 = load %struct.bn_mont_ctx_st*, %struct.bn_mont_ctx_st** %_method_mod_n299, align 8, !tbaa !21
  %call300 = tail call i32 @BN_mod_exp_mont(%struct.bignum_st* noundef nonnull %call3, %struct.bignum_st* noundef %r0, %struct.bignum_st* noundef nonnull %69, %struct.bignum_st* noundef nonnull %70, %struct.bignum_ctx* noundef %ctx, %struct.bn_mont_ctx_st* noundef %73) #8
  %tobool301.not = icmp eq i32 %call300, 0
  br i1 %tobool301.not, label %cleanup358, label %if.end313

if.else:                                          ; preds = %if.then292
  tail call void @bn_correct_top(%struct.bignum_st* noundef %r0) #8
  %74 = load %struct.rsa_meth_st*, %struct.rsa_meth_st** %meth293, align 8, !tbaa !18
  %bn_mod_exp305 = getelementptr inbounds %struct.rsa_meth_st, %struct.rsa_meth_st* %74, i64 0, i32 6
  %75 = load i32 (%struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*, %struct.bn_mont_ctx_st*)*, i32 (%struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*, %struct.bn_mont_ctx_st*)** %bn_mod_exp305, align 8, !tbaa !19
  %76 = load %struct.bignum_st*, %struct.bignum_st** %e, align 8, !tbaa !14
  %77 = load %struct.bignum_st*, %struct.bignum_st** %n290, align 8, !tbaa !8
  %_method_mod_n308 = getelementptr inbounds %struct.rsa_st, %struct.rsa_st* %rsa, i64 0, i32 19
  %78 = load %struct.bn_mont_ctx_st*, %struct.bn_mont_ctx_st** %_method_mod_n308, align 8, !tbaa !21
  %call309 = tail call i32 %75(%struct.bignum_st* noundef nonnull %call3, %struct.bignum_st* noundef %r0, %struct.bignum_st* noundef %76, %struct.bignum_st* noundef %77, %struct.bignum_ctx* noundef %ctx, %struct.bn_mont_ctx_st* noundef %78) #8
  %tobool310.not = icmp eq i32 %call309, 0
  br i1 %tobool310.not, label %cleanup358, label %if.end313

if.end313:                                        ; preds = %if.else, %if.then296
  %call314 = tail call i32 @BN_sub(%struct.bignum_st* noundef nonnull %call3, %struct.bignum_st* noundef nonnull %call3, %struct.bignum_st* noundef %I) #8
  %tobool315.not = icmp eq i32 %call314, 0
  br i1 %tobool315.not, label %cleanup358, label %if.end317

if.end317:                                        ; preds = %if.end313
  %call318 = tail call i32 @BN_is_zero(%struct.bignum_st* noundef nonnull %call3) #8
  %tobool319.not = icmp eq i32 %call318, 0
  br i1 %tobool319.not, label %if.end321, label %if.then320

if.then320:                                       ; preds = %if.end317
  tail call void @bn_correct_top(%struct.bignum_st* noundef %r0) #8
  br label %cleanup358

if.end321:                                        ; preds = %if.end317
  %79 = load %struct.bignum_st*, %struct.bignum_st** %n290, align 8, !tbaa !8
  %call323 = tail call i32 @BN_div(%struct.bignum_st* noundef null, %struct.bignum_st* noundef nonnull %call3, %struct.bignum_st* noundef nonnull %call3, %struct.bignum_st* noundef %79, %struct.bignum_ctx* noundef %ctx) #8
  %tobool324.not = icmp eq i32 %call323, 0
  br i1 %tobool324.not, label %cleanup358, label %if.end326

if.end326:                                        ; preds = %if.end321
  %call327 = tail call i32 @BN_is_negative(%struct.bignum_st* noundef nonnull %call3) #8
  %tobool328.not = icmp eq i32 %call327, 0
  br i1 %tobool328.not, label %if.end335, label %if.then329

if.then329:                                       ; preds = %if.end326
  %80 = load %struct.bignum_st*, %struct.bignum_st** %n290, align 8, !tbaa !8
  %call331 = tail call i32 @BN_add(%struct.bignum_st* noundef nonnull %call3, %struct.bignum_st* noundef nonnull %call3, %struct.bignum_st* noundef %80) #8
  %tobool332.not = icmp eq i32 %call331, 0
  br i1 %tobool332.not, label %cleanup358, label %if.end335

if.end335:                                        ; preds = %if.then329, %if.end326
  %call336 = tail call i32 @BN_is_zero(%struct.bignum_st* noundef nonnull %call3) #8
  %tobool337.not = icmp eq i32 %call336, 0
  br i1 %tobool337.not, label %if.then338, label %if.end357

if.then338:                                       ; preds = %if.end335
  %call340 = tail call %struct.bignum_st* @BN_new() #8
  %cmp341 = icmp eq %struct.bignum_st* %call340, null
  br i1 %cmp341, label %cleanup358, label %if.end343

if.end343:                                        ; preds = %if.then338
  %d344 = getelementptr inbounds %struct.rsa_st, %struct.rsa_st* %rsa, i64 0, i32 7
  %81 = load %struct.bignum_st*, %struct.bignum_st** %d344, align 8, !tbaa !32
  tail call void @BN_with_flags(%struct.bignum_st* noundef nonnull %call340, %struct.bignum_st* noundef %81, i32 noundef 4) #8
  %82 = load %struct.rsa_meth_st*, %struct.rsa_meth_st** %meth293, align 8, !tbaa !18
  %bn_mod_exp346 = getelementptr inbounds %struct.rsa_meth_st, %struct.rsa_meth_st* %82, i64 0, i32 6
  %83 = load i32 (%struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*, %struct.bn_mont_ctx_st*)*, i32 (%struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*, %struct.bn_mont_ctx_st*)** %bn_mod_exp346, align 8, !tbaa !19
  %84 = load %struct.bignum_st*, %struct.bignum_st** %n290, align 8, !tbaa !8
  %_method_mod_n348 = getelementptr inbounds %struct.rsa_st, %struct.rsa_st* %rsa, i64 0, i32 19
  %85 = load %struct.bn_mont_ctx_st*, %struct.bn_mont_ctx_st** %_method_mod_n348, align 8, !tbaa !21
  %call349 = tail call i32 %83(%struct.bignum_st* noundef %r0, %struct.bignum_st* noundef %I, %struct.bignum_st* noundef nonnull %call340, %struct.bignum_st* noundef %84, %struct.bignum_ctx* noundef %ctx, %struct.bn_mont_ctx_st* noundef %85) #8
  %tobool350.not = icmp eq i32 %call349, 0
  tail call void @BN_free(%struct.bignum_st* noundef nonnull %call340) #8
  br i1 %tobool350.not, label %cleanup358, label %if.end357

if.end357:                                        ; preds = %if.end343, %if.end335, %land.lhs.true289, %tail
  tail call void @bn_correct_top(%struct.bignum_st* noundef %r0) #8
  br label %cleanup358

cleanup358:                                       ; preds = %if.end343, %if.end211, %if.end136, %cleanup.cont123, %if.then338, %if.then239, %if.then253, %if.then257, %if.then262, %if.then270, %if.then275, %if.then279, %if.end207, %if.then170, %if.then180, %if.then163, %if.then156, %cleanup.cont131, %if.then110, %if.then119, %if.end97, %if.then105, %if.then10, %if.then21, %if.then30, %if.then320, %if.end357, %entry, %land.lhs.true, %if.then44, %lor.lhs.false91, %lor.lhs.false87, %lor.lhs.false83, %lor.lhs.false79, %lor.lhs.false75, %lor.lhs.false68, %lor.lhs.false64, %lor.lhs.false60, %lor.lhs.false56, %if.then52, %if.end189, %if.then196, %if.end202, %if.then222, %if.end228, %if.end233, %if.then296, %if.else, %if.end313, %if.end321, %if.then329
  %ret.0 = phi i32 [ 0, %entry ], [ 0, %land.lhs.true ], [ 1, %if.then320 ], [ 1, %if.end357 ], [ 0, %if.then329 ], [ 0, %if.end321 ], [ 0, %if.end313 ], [ 0, %if.then296 ], [ 0, %if.else ], [ 0, %lor.lhs.false91 ], [ 0, %lor.lhs.false87 ], [ 0, %lor.lhs.false83 ], [ 0, %lor.lhs.false79 ], [ 0, %lor.lhs.false75 ], [ 0, %lor.lhs.false68 ], [ 0, %lor.lhs.false64 ], [ 0, %lor.lhs.false60 ], [ 0, %lor.lhs.false56 ], [ 0, %if.then52 ], [ 0, %if.end233 ], [ 0, %if.end228 ], [ 0, %if.then222 ], [ 0, %if.end202 ], [ 0, %if.then196 ], [ 0, %if.end189 ], [ 0, %if.then44 ], [ 0, %if.then30 ], [ 0, %if.then21 ], [ 0, %if.then10 ], [ 0, %if.then105 ], [ 0, %if.end97 ], [ 0, %if.then119 ], [ 0, %if.then110 ], [ 0, %cleanup.cont131 ], [ 0, %if.then156 ], [ 0, %if.then163 ], [ 0, %if.then180 ], [ 0, %if.then170 ], [ 0, %if.end207 ], [ 0, %if.then279 ], [ 0, %if.then275 ], [ 0, %if.then270 ], [ 0, %if.then262 ], [ 0, %if.then257 ], [ 0, %if.then253 ], [ 0, %if.then239 ], [ 0, %if.then338 ], [ 0, %cleanup.cont123 ], [ 0, %if.end136 ], [ 0, %if.end211 ], [ 0, %if.end343 ]
  tail call void @BN_CTX_end(%struct.bignum_ctx* noundef %ctx) #8
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %0) #9
  ret i32 %ret.0
}

declare i32 @BN_mod_exp_mont(%struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_ctx* noundef, %struct.bn_mont_ctx_st* noundef) #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define internal i32 @rsa_ossl_init(%struct.rsa_st* nocapture noundef %rsa) #5 {
entry:
  %flags = getelementptr inbounds %struct.rsa_st, %struct.rsa_st* %rsa, i64 0, i32 18
  %0 = load i32, i32* %flags, align 4, !tbaa !16
  %or = or i32 %0, 6
  store i32 %or, i32* %flags, align 4, !tbaa !16
  ret i32 1
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @rsa_ossl_finish(%struct.rsa_st* nocapture noundef readonly %rsa) #3 {
entry:
  %prime_infos = getelementptr inbounds %struct.rsa_st, %struct.rsa_st* %rsa, i64 0, i32 15
  %0 = load %struct.stack_st_RSA_PRIME_INFO*, %struct.stack_st_RSA_PRIME_INFO** %prime_infos, align 8, !tbaa !33
  %call11 = tail call fastcc i32 @sk_RSA_PRIME_INFO_num(%struct.stack_st_RSA_PRIME_INFO* noundef %0) #10
  %cmp12 = icmp sgt i32 %call11, 0
  br i1 %cmp12, label %for.body, label %for.end

for.body:                                         ; preds = %entry, %for.body
  %i.013 = phi i32 [ %inc, %for.body ], [ 0, %entry ]
  %1 = load %struct.stack_st_RSA_PRIME_INFO*, %struct.stack_st_RSA_PRIME_INFO** %prime_infos, align 8, !tbaa !33
  %call2 = tail call fastcc %struct.rsa_prime_info_st* @sk_RSA_PRIME_INFO_value(%struct.stack_st_RSA_PRIME_INFO* noundef %1, i32 noundef %i.013) #10
  %m = getelementptr inbounds %struct.rsa_prime_info_st, %struct.rsa_prime_info_st* %call2, i64 0, i32 4
  %2 = load %struct.bn_mont_ctx_st*, %struct.bn_mont_ctx_st** %m, align 8, !tbaa !42
  tail call void @BN_MONT_CTX_free(%struct.bn_mont_ctx_st* noundef %2) #8
  %inc = add nuw nsw i32 %i.013, 1
  %3 = load %struct.stack_st_RSA_PRIME_INFO*, %struct.stack_st_RSA_PRIME_INFO** %prime_infos, align 8, !tbaa !33
  %call = tail call fastcc i32 @sk_RSA_PRIME_INFO_num(%struct.stack_st_RSA_PRIME_INFO* noundef %3) #10
  %cmp = icmp slt i32 %inc, %call
  br i1 %cmp, label %for.body, label %for.end, !llvm.loop !46

for.end:                                          ; preds = %for.body, %entry
  %_method_mod_n = getelementptr inbounds %struct.rsa_st, %struct.rsa_st* %rsa, i64 0, i32 19
  %4 = load %struct.bn_mont_ctx_st*, %struct.bn_mont_ctx_st** %_method_mod_n, align 8, !tbaa !21
  tail call void @BN_MONT_CTX_free(%struct.bn_mont_ctx_st* noundef %4) #8
  %_method_mod_p = getelementptr inbounds %struct.rsa_st, %struct.rsa_st* %rsa, i64 0, i32 20
  %5 = load %struct.bn_mont_ctx_st*, %struct.bn_mont_ctx_st** %_method_mod_p, align 8, !tbaa !39
  tail call void @BN_MONT_CTX_free(%struct.bn_mont_ctx_st* noundef %5) #8
  %_method_mod_q = getelementptr inbounds %struct.rsa_st, %struct.rsa_st* %rsa, i64 0, i32 21
  %6 = load %struct.bn_mont_ctx_st*, %struct.bn_mont_ctx_st** %_method_mod_q, align 8, !tbaa !38
  tail call void @BN_MONT_CTX_free(%struct.bn_mont_ctx_st* noundef %6) #8
  ret i32 1
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #6

declare i32 @BN_num_bits(%struct.bignum_st* noundef) local_unnamed_addr #4

declare void @ERR_new() local_unnamed_addr #4

declare void @ERR_set_debug(i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #4

declare void @ERR_set_error(i32 noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #4

declare i32 @BN_ucmp(%struct.bignum_st* noundef, %struct.bignum_st* noundef) local_unnamed_addr #4

declare %struct.bignum_ctx* @BN_CTX_new_ex(%struct.ossl_lib_ctx_st* noundef) local_unnamed_addr #4

declare void @BN_CTX_start(%struct.bignum_ctx* noundef) local_unnamed_addr #4

declare %struct.bignum_st* @BN_CTX_get(%struct.bignum_ctx* noundef) local_unnamed_addr #4

declare i8* @CRYPTO_malloc(i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #4

declare i32 @ossl_rsa_padding_add_PKCS1_type_2_ex(%struct.ossl_lib_ctx_st* noundef, i8* noundef, i32 noundef, i8* noundef, i32 noundef) local_unnamed_addr #4

declare i32 @ossl_rsa_padding_add_PKCS1_OAEP_mgf1_ex(%struct.ossl_lib_ctx_st* noundef, i8* noundef, i32 noundef, i8* noundef, i32 noundef, i8* noundef, i32 noundef, %struct.evp_md_st* noundef, %struct.evp_md_st* noundef) local_unnamed_addr #4

declare i32 @RSA_padding_add_none(i8* noundef, i32 noundef, i8* noundef, i32 noundef) local_unnamed_addr #4

declare %struct.bignum_st* @BN_bin2bn(i8* noundef, i32 noundef, %struct.bignum_st* noundef) local_unnamed_addr #4

declare %struct.bn_mont_ctx_st* @BN_MONT_CTX_set_locked(%struct.bn_mont_ctx_st** noundef, i8* noundef, %struct.bignum_st* noundef, %struct.bignum_ctx* noundef) local_unnamed_addr #4

declare i32 @BN_bn2binpad(%struct.bignum_st* noundef, i8* noundef, i32 noundef) local_unnamed_addr #4

declare void @BN_CTX_end(%struct.bignum_ctx* noundef) local_unnamed_addr #4

declare void @BN_CTX_free(%struct.bignum_ctx* noundef) local_unnamed_addr #4

declare void @CRYPTO_clear_free(i8* noundef, i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #6

declare i64* @bn_get_words(%struct.bignum_st* noundef) local_unnamed_addr #4

declare i32 @BN_sub(%struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef) local_unnamed_addr #4

declare i32 @RSA_padding_check_PKCS1_type_1(i8* noundef, i32 noundef, i8* noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

declare i32 @RSA_padding_check_X931(i8* noundef, i32 noundef, i8* noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare i8* @memcpy(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #7

declare i32 @RSA_padding_add_PKCS1_type_1(i8* noundef, i32 noundef, i8* noundef, i32 noundef) local_unnamed_addr #4

declare i32 @RSA_padding_add_X931(i8* noundef, i32 noundef, i8* noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.bn_blinding_st* @rsa_get_blinding(%struct.rsa_st* noundef %rsa, i32* nocapture noundef writeonly %local, %struct.bignum_ctx* noundef %ctx) unnamed_addr #3 {
entry:
  %lock = getelementptr inbounds %struct.rsa_st, %struct.rsa_st* %rsa, i64 0, i32 24
  %0 = load i8*, i8** %lock, align 8, !tbaa !17
  %call = tail call i32 @CRYPTO_THREAD_write_lock(i8* noundef %0) #8
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %blinding = getelementptr inbounds %struct.rsa_st, %struct.rsa_st* %rsa, i64 0, i32 22
  %1 = load %struct.bn_blinding_st*, %struct.bn_blinding_st** %blinding, align 8, !tbaa !47
  %cmp = icmp eq %struct.bn_blinding_st* %1, null
  br i1 %cmp, label %if.end4, label %if.end8

if.end4:                                          ; preds = %if.end
  %call2 = tail call %struct.bn_blinding_st* @RSA_setup_blinding(%struct.rsa_st* noundef nonnull %rsa, %struct.bignum_ctx* noundef %ctx) #8
  store %struct.bn_blinding_st* %call2, %struct.bn_blinding_st** %blinding, align 8, !tbaa !47
  %cmp6 = icmp eq %struct.bn_blinding_st* %call2, null
  br i1 %cmp6, label %err, label %if.end8

if.end8:                                          ; preds = %if.end, %if.end4
  %2 = phi %struct.bn_blinding_st* [ %call2, %if.end4 ], [ %1, %if.end ]
  %call9 = tail call i32 @BN_BLINDING_is_current_thread(%struct.bn_blinding_st* noundef nonnull %2) #8
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.else, label %if.then11

if.then11:                                        ; preds = %if.end8
  store i32 1, i32* %local, align 4, !tbaa !24
  br label %err

if.else:                                          ; preds = %if.end8
  store i32 0, i32* %local, align 4, !tbaa !24
  %mt_blinding = getelementptr inbounds %struct.rsa_st, %struct.rsa_st* %rsa, i64 0, i32 23
  %3 = load %struct.bn_blinding_st*, %struct.bn_blinding_st** %mt_blinding, align 8, !tbaa !48
  %cmp12 = icmp eq %struct.bn_blinding_st* %3, null
  br i1 %cmp12, label %if.then13, label %err

if.then13:                                        ; preds = %if.else
  %call14 = tail call %struct.bn_blinding_st* @RSA_setup_blinding(%struct.rsa_st* noundef nonnull %rsa, %struct.bignum_ctx* noundef %ctx) #8
  store %struct.bn_blinding_st* %call14, %struct.bn_blinding_st** %mt_blinding, align 8, !tbaa !48
  br label %err

err:                                              ; preds = %if.else, %if.then13, %if.then11, %if.end4
  %ret.0 = phi %struct.bn_blinding_st* [ null, %if.end4 ], [ %2, %if.then11 ], [ %call14, %if.then13 ], [ %3, %if.else ]
  %4 = load i8*, i8** %lock, align 8, !tbaa !17
  %call20 = tail call i32 @CRYPTO_THREAD_unlock(i8* noundef %4) #8
  br label %cleanup

cleanup:                                          ; preds = %entry, %err
  %retval.0 = phi %struct.bn_blinding_st* [ %ret.0, %err ], [ null, %entry ]
  ret %struct.bn_blinding_st* %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @rsa_blinding_convert(%struct.bn_blinding_st* noundef %b, %struct.bignum_st* noundef %f, %struct.bignum_st* noundef %unblind, %struct.bignum_ctx* noundef %ctx) unnamed_addr #3 {
entry:
  %cmp = icmp eq %struct.bignum_st* %unblind, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call = tail call i32 @BN_BLINDING_convert_ex(%struct.bignum_st* noundef %f, %struct.bignum_st* noundef null, %struct.bn_blinding_st* noundef %b, %struct.bignum_ctx* noundef %ctx) #8
  br label %return

if.else:                                          ; preds = %entry
  %call1 = tail call i32 @BN_BLINDING_lock(%struct.bn_blinding_st* noundef %b) #8
  %call2 = tail call i32 @BN_BLINDING_convert_ex(%struct.bignum_st* noundef %f, %struct.bignum_st* noundef nonnull %unblind, %struct.bn_blinding_st* noundef %b, %struct.bignum_ctx* noundef %ctx) #8
  %call3 = tail call i32 @BN_BLINDING_unlock(%struct.bn_blinding_st* noundef %b) #8
  br label %return

return:                                           ; preds = %if.else, %if.then
  %retval.0 = phi i32 [ %call, %if.then ], [ %call2, %if.else ]
  ret i32 %retval.0
}

declare %struct.bignum_st* @BN_new() local_unnamed_addr #4

declare void @BN_free(%struct.bignum_st* noundef) local_unnamed_addr #4

declare void @BN_with_flags(%struct.bignum_st* noundef, %struct.bignum_st* noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @rsa_blinding_invert(%struct.bn_blinding_st* noundef %b, %struct.bignum_st* noundef %f, %struct.bignum_st* noundef %unblind, %struct.bignum_ctx* noundef %ctx) unnamed_addr #3 {
entry:
  %call = tail call i32 @BN_BLINDING_invert_ex(%struct.bignum_st* noundef %f, %struct.bignum_st* noundef %unblind, %struct.bn_blinding_st* noundef %b, %struct.bignum_ctx* noundef %ctx) #8
  ret i32 %call
}

declare i32 @BN_cmp(%struct.bignum_st* noundef, %struct.bignum_st* noundef) local_unnamed_addr #4

declare i32 @CRYPTO_THREAD_write_lock(i8* noundef) local_unnamed_addr #4

declare %struct.bn_blinding_st* @RSA_setup_blinding(%struct.rsa_st* noundef, %struct.bignum_ctx* noundef) local_unnamed_addr #4

declare i32 @BN_BLINDING_is_current_thread(%struct.bn_blinding_st* noundef) local_unnamed_addr #4

declare i32 @CRYPTO_THREAD_unlock(i8* noundef) local_unnamed_addr #4

declare i32 @BN_BLINDING_convert_ex(%struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bn_blinding_st* noundef, %struct.bignum_ctx* noundef) local_unnamed_addr #4

declare i32 @BN_BLINDING_lock(%struct.bn_blinding_st* noundef) local_unnamed_addr #4

declare i32 @BN_BLINDING_unlock(%struct.bn_blinding_st* noundef) local_unnamed_addr #4

declare i32 @BN_BLINDING_invert_ex(%struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bn_blinding_st* noundef, %struct.bignum_ctx* noundef) local_unnamed_addr #4

declare i32 @RSA_padding_check_PKCS1_type_2(i8* noundef, i32 noundef, i8* noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

declare i32 @RSA_padding_check_PKCS1_OAEP(i8* noundef, i32 noundef, i8* noundef, i32 noundef, i32 noundef, i8* noundef, i32 noundef) local_unnamed_addr #4

declare void @err_clear_last_constant_time(i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc i32 @constant_time_msb(i32 noundef %a) unnamed_addr #2 {
entry:
  %shr.neg = ashr i32 %a, 31
  ret i32 %shr.neg
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @sk_RSA_PRIME_INFO_num(%struct.stack_st_RSA_PRIME_INFO* noundef %sk) unnamed_addr #3 {
entry:
  %0 = bitcast %struct.stack_st_RSA_PRIME_INFO* %sk to %struct.stack_st*
  %call = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %0) #8
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.rsa_prime_info_st* @sk_RSA_PRIME_INFO_value(%struct.stack_st_RSA_PRIME_INFO* noundef %sk, i32 noundef %idx) unnamed_addr #3 {
entry:
  %0 = bitcast %struct.stack_st_RSA_PRIME_INFO* %sk to %struct.stack_st*
  %call = tail call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %0, i32 noundef %idx) #8
  %1 = bitcast i8* %call to %struct.rsa_prime_info_st*
  ret %struct.rsa_prime_info_st* %1
}

declare i32 @bn_from_mont_fixed_top(%struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bn_mont_ctx_st* noundef, %struct.bignum_ctx* noundef) local_unnamed_addr #4

declare i32 @bn_to_mont_fixed_top(%struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bn_mont_ctx_st* noundef, %struct.bignum_ctx* noundef) local_unnamed_addr #4

declare i32 @BN_mod_exp_mont_consttime_x2(%struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bn_mont_ctx_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bn_mont_ctx_st* noundef, %struct.bignum_ctx* noundef) local_unnamed_addr #4

declare i32 @bn_mod_sub_fixed_top(%struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef) local_unnamed_addr #4

declare i32 @bn_mul_mont_fixed_top(%struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bn_mont_ctx_st* noundef, %struct.bignum_ctx* noundef) local_unnamed_addr #4

declare i32 @bn_mul_fixed_top(%struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_ctx* noundef) local_unnamed_addr #4

declare i32 @bn_mod_add_fixed_top(%struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef) local_unnamed_addr #4

declare i32 @BN_div(%struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_ctx* noundef) local_unnamed_addr #4

declare i32 @BN_is_negative(%struct.bignum_st* noundef) local_unnamed_addr #4

declare i32 @BN_add(%struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef) local_unnamed_addr #4

declare i32 @BN_mul(%struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_ctx* noundef) local_unnamed_addr #4

declare void @bn_correct_top(%struct.bignum_st* noundef) local_unnamed_addr #4

declare i32 @BN_is_zero(%struct.bignum_st* noundef) local_unnamed_addr #4

declare i32 @OPENSSL_sk_num(%struct.stack_st* noundef) local_unnamed_addr #4

declare i8* @OPENSSL_sk_value(%struct.stack_st* noundef, i32 noundef) local_unnamed_addr #4

declare void @BN_MONT_CTX_free(%struct.bn_mont_ctx_st* noundef) local_unnamed_addr #4

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #7 = { nounwind "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nobuiltin nounwind "no-builtins" }
attributes #9 = { nounwind }
attributes #10 = { nobuiltin "no-builtins" }

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
!8 = !{!9, !5, i64 40}
!9 = !{!"rsa_st", !10, i64 0, !5, i64 8, !10, i64 16, !5, i64 24, !5, i64 32, !5, i64 40, !5, i64 48, !5, i64 56, !5, i64 64, !5, i64 72, !5, i64 80, !5, i64 88, !5, i64 96, !11, i64 104, !5, i64 128, !5, i64 136, !13, i64 144, !6, i64 160, !10, i64 164, !5, i64 168, !5, i64 176, !5, i64 184, !5, i64 192, !5, i64 200, !5, i64 208, !10, i64 216}
!10 = !{!"int", !6, i64 0}
!11 = !{!"rsa_pss_params_30_st", !10, i64 0, !12, i64 4, !10, i64 12, !10, i64 16}
!12 = !{!"", !10, i64 0, !10, i64 4}
!13 = !{!"crypto_ex_data_st", !5, i64 0, !5, i64 8}
!14 = !{!9, !5, i64 48}
!15 = !{!9, !5, i64 8}
!16 = !{!9, !10, i64 164}
!17 = !{!9, !5, i64 208}
!18 = !{!9, !5, i64 24}
!19 = !{!20, !5, i64 48}
!20 = !{!"rsa_meth_st", !5, i64 0, !5, i64 8, !5, i64 16, !5, i64 24, !5, i64 32, !5, i64 40, !5, i64 48, !5, i64 56, !5, i64 64, !10, i64 72, !5, i64 80, !5, i64 88, !5, i64 96, !5, i64 104, !5, i64 112}
!21 = !{!9, !5, i64 168}
!22 = !{!23, !23, i64 0}
!23 = !{!"long", !6, i64 0}
!24 = !{!10, !10, i64 0}
!25 = !{!9, !10, i64 16}
!26 = !{!9, !5, i64 64}
!27 = !{!9, !5, i64 72}
!28 = !{!9, !5, i64 80}
!29 = !{!9, !5, i64 88}
!30 = !{!9, !5, i64 96}
!31 = !{!20, !5, i64 40}
!32 = !{!9, !5, i64 56}
!33 = !{!9, !5, i64 136}
!34 = distinct !{!34, !35}
!35 = !{!"llvm.loop.mustprogress"}
!36 = !{!37, !5, i64 0}
!37 = !{!"rsa_prime_info_st", !5, i64 0, !5, i64 8, !5, i64 16, !5, i64 24, !5, i64 32}
!38 = !{!9, !5, i64 184}
!39 = !{!9, !5, i64 176}
!40 = distinct !{!40, !35}
!41 = !{!37, !5, i64 8}
!42 = !{!37, !5, i64 32}
!43 = distinct !{!43, !35}
!44 = !{!37, !5, i64 16}
!45 = !{!37, !5, i64 24}
!46 = distinct !{!46, !35}
!47 = !{!9, !5, i64 192}
!48 = !{!9, !5, i64 200}
