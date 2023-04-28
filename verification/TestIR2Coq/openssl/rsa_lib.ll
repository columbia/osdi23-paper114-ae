; ModuleID = 'crypto/rsa/rsa_lib.c'
source_filename = "crypto/rsa/rsa_lib.c"
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
%struct.X509_algor_st = type { %struct.asn1_object_st*, %struct.asn1_type_st* }
%struct.asn1_object_st = type opaque
%struct.asn1_type_st = type { i32, %union.anon }
%union.anon = type { i8* }
%struct.stack_st_RSA_PRIME_INFO = type opaque
%struct.crypto_ex_data_st = type { %struct.ossl_lib_ctx_st*, %struct.stack_st_void* }
%struct.stack_st_void = type opaque
%struct.bn_mont_ctx_st = type opaque
%struct.bn_blinding_st = type opaque
%struct.rsa_prime_info_st = type { %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bn_mont_ctx_st* }
%struct.stack_st = type opaque
%struct.evp_pkey_ctx_st = type { i32, %struct.ossl_lib_ctx_st*, i8*, i8*, %struct.evp_keymgmt_st*, %union.anon.0, %struct.anon.6, i8*, i32 (%struct.evp_pkey_ctx_st*)*, i32*, i32, i32, %struct.evp_pkey_method_st*, %struct.engine_st*, %struct.evp_pkey_st*, %struct.evp_pkey_st*, i8*, i8, %struct.bignum_st* }
%struct.evp_keymgmt_st = type opaque
%union.anon.0 = type { %struct.anon.2 }
%struct.anon.2 = type { %struct.evp_keyexch_st*, i8* }
%struct.evp_keyexch_st = type opaque
%struct.anon.6 = type { i8*, i8*, i64, i8 }
%struct.evp_pkey_method_st = type { i32, i32, i32 (%struct.evp_pkey_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*, %struct.evp_pkey_ctx_st*)*, void (%struct.evp_pkey_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*, %struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*, %struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*, i8*, i64*, i8*, i64)*, i32 (%struct.evp_pkey_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*, i8*, i64, i8*, i64)*, i32 (%struct.evp_pkey_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*, i8*, i64*, i8*, i64)*, i32 (%struct.evp_pkey_ctx_st*, %struct.evp_md_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*, i8*, i64*, %struct.evp_md_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*, %struct.evp_md_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*, i8*, i32, %struct.evp_md_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*, i8*, i64*, i8*, i64)*, i32 (%struct.evp_pkey_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*, i8*, i64*, i8*, i64)*, i32 (%struct.evp_pkey_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*, i8*, i64*)*, i32 (%struct.evp_pkey_ctx_st*, i32, i32, i8*)*, i32 (%struct.evp_pkey_ctx_st*, i8*, i8*)*, i32 (%struct.evp_md_ctx_st*, i8*, i64*, i8*, i64)*, i32 (%struct.evp_md_ctx_st*, i8*, i64, i8*, i64)*, i32 (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_ctx_st*, %struct.evp_md_ctx_st*)* }
%struct.evp_md_ctx_st = type opaque
%struct.evp_pkey_st = type { i32, i32, %struct.evp_pkey_asn1_method_st*, %struct.engine_st*, %struct.engine_st*, %union.legacy_pkey_st, %union.legacy_pkey_st, i32, i8*, %struct.stack_st_X509_ATTRIBUTE*, i32, i8, %struct.crypto_ex_data_st, %struct.evp_keymgmt_st*, i8*, i64, %struct.stack_st_OP_CACHE_ELEM*, i64, %struct.anon.7 }
%struct.evp_pkey_asn1_method_st = type opaque
%union.legacy_pkey_st = type { i8* }
%struct.stack_st_X509_ATTRIBUTE = type opaque
%struct.stack_st_OP_CACHE_ELEM = type opaque
%struct.anon.7 = type { i32, i32, i32 }
%struct.stack_st_BIGNUM = type opaque
%struct.stack_st_BIGNUM_const = type opaque
%struct.evp_md_st = type { i32, i32, i32, i64, i32, i32 (%struct.evp_md_ctx_st*)*, i32 (%struct.evp_md_ctx_st*, i8*, i64)*, i32 (%struct.evp_md_ctx_st*, i8*)*, i32 (%struct.evp_md_ctx_st*, %struct.evp_md_ctx_st*)*, i32 (%struct.evp_md_ctx_st*)*, i32, i32, i32 (%struct.evp_md_ctx_st*, i32, i32, i8*)*, i32, i8*, i8*, %struct.ossl_provider_st*, i32, i8*, i8* (i8*)*, i32 (i8*, %struct.ossl_param_st*)*, i32 (i8*, i8*, i64)*, i32 (i8*, i8*, i64*, i64)*, i32 (i8*, i8*, i64, i8*, i64*, i64)*, void (i8*)*, i8* (i8*)*, i32 (%struct.ossl_param_st*)*, i32 (i8*, %struct.ossl_param_st*)*, i32 (i8*, %struct.ossl_param_st*)*, %struct.ossl_param_st* (i8*)*, %struct.ossl_param_st* (i8*, i8*)*, %struct.ossl_param_st* (i8*, i8*)* }
%struct.ossl_provider_st = type opaque
%struct.ossl_param_st = type { i8*, i32, i8*, i64, i64 }

@.str = private unnamed_addr constant [21 x i8] c"crypto/rsa/rsa_lib.c\00", align 1
@__func__.ossl_rsa_set0_all_params = private unnamed_addr constant [25 x i8] c"ossl_rsa_set0_all_params\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"digest\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"properties\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"digest-props\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"mgf1-digest\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"mgf1-properties\00", align 1
@__func__.EVP_PKEY_CTX_set0_rsa_oaep_label = private unnamed_addr constant [33 x i8] c"EVP_PKEY_CTX_set0_rsa_oaep_label\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"RSA\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"oaep-label\00", align 1
@__func__.EVP_PKEY_CTX_get0_rsa_oaep_label = private unnamed_addr constant [33 x i8] c"EVP_PKEY_CTX_get0_rsa_oaep_label\00", align 1
@__func__.EVP_PKEY_CTX_set_rsa_pss_keygen_saltlen = private unnamed_addr constant [40 x i8] c"EVP_PKEY_CTX_set_rsa_pss_keygen_saltlen\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"RSA-PSS\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"saltlen\00", align 1
@__func__.EVP_PKEY_CTX_set_rsa_keygen_bits = private unnamed_addr constant [33 x i8] c"EVP_PKEY_CTX_set_rsa_keygen_bits\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"bits\00", align 1
@__func__.EVP_PKEY_CTX_set_rsa_keygen_primes = private unnamed_addr constant [35 x i8] c"EVP_PKEY_CTX_set_rsa_keygen_primes\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"primes\00", align 1
@__func__.rsa_new_intern = private unnamed_addr constant [15 x i8] c"rsa_new_intern\00", align 1
@__func__.int_set_rsa_md_name = private unnamed_addr constant [20 x i8] c"int_set_rsa_md_name\00", align 1
@__func__.int_get_rsa_md_name = private unnamed_addr constant [20 x i8] c"int_get_rsa_md_name\00", align 1

; Function Attrs: noinline nounwind uwtable
define %struct.rsa_st* @RSA_new() local_unnamed_addr #0 {
entry:
  %call = tail call fastcc %struct.rsa_st* @rsa_new_intern(%struct.engine_st* noundef null, %struct.ossl_lib_ctx_st* noundef null) #11
  ret %struct.rsa_st* %call
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.rsa_st* @rsa_new_intern(%struct.engine_st* noundef %engine, %struct.ossl_lib_ctx_st* noundef %libctx) unnamed_addr #0 {
entry:
  %call = tail call i8* @CRYPTO_zalloc(i64 noundef 224, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 77) #12
  %0 = bitcast i8* %call to %struct.rsa_st*
  %cmp = icmp eq i8* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #12
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 80, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__func__.rsa_new_intern, i64 0, i64 0)) #12
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 4, i32 noundef 786688, i8* noundef null) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %references = getelementptr inbounds i8, i8* %call, i64 160
  %1 = bitcast i8* %references to i32*
  store atomic i32 1, i32* %1 seq_cst, align 4, !tbaa !4
  %call1 = tail call i8* @CRYPTO_THREAD_lock_new() #12
  %lock = getelementptr inbounds i8, i8* %call, i64 208
  %2 = bitcast i8* %lock to i8**
  store i8* %call1, i8** %2, align 8, !tbaa !13
  %cmp3 = icmp eq i8* %call1, null
  br i1 %cmp3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  tail call void @ERR_new() #12
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 87, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__func__.rsa_new_intern, i64 0, i64 0)) #12
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 4, i32 noundef 786688, i8* noundef null) #12
  tail call void @CRYPTO_free(i8* noundef nonnull %call, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 88) #12
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %libctx6 = getelementptr inbounds i8, i8* %call, i64 8
  %3 = bitcast i8* %libctx6 to %struct.ossl_lib_ctx_st**
  store %struct.ossl_lib_ctx_st* %libctx, %struct.ossl_lib_ctx_st** %3, align 8, !tbaa !14
  %call7 = tail call %struct.rsa_meth_st* @RSA_get_default_method() #12
  %meth = getelementptr inbounds i8, i8* %call, i64 24
  %4 = bitcast i8* %meth to %struct.rsa_meth_st**
  store %struct.rsa_meth_st* %call7, %struct.rsa_meth_st** %4, align 8, !tbaa !15
  %flags = getelementptr inbounds %struct.rsa_meth_st, %struct.rsa_meth_st* %call7, i64 0, i32 9
  %5 = load i32, i32* %flags, align 8, !tbaa !16
  %and = and i32 %5, -1025
  %flags9 = getelementptr inbounds i8, i8* %call, i64 164
  %6 = bitcast i8* %flags9 to i32*
  store i32 %and, i32* %6, align 4, !tbaa !18
  %tobool.not = icmp eq %struct.engine_st* %engine, null
  br i1 %tobool.not, label %if.end18, label %if.then10

if.then10:                                        ; preds = %if.end5
  %call11 = tail call i32 @ENGINE_init(%struct.engine_st* noundef nonnull %engine) #12
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %err.sink.split, label %if.end18.thread

if.end18.thread:                                  ; preds = %if.then10
  %engine15 = getelementptr inbounds i8, i8* %call, i64 32
  %7 = bitcast i8* %engine15 to %struct.engine_st**
  store %struct.engine_st* %engine, %struct.engine_st** %7, align 8, !tbaa !19
  br label %if.then21

if.end18:                                         ; preds = %if.end5
  %call16 = tail call %struct.engine_st* @ENGINE_get_default_RSA() #12
  %engine17 = getelementptr inbounds i8, i8* %call, i64 32
  %8 = bitcast i8* %engine17 to %struct.engine_st**
  store %struct.engine_st* %call16, %struct.engine_st** %8, align 8, !tbaa !19
  %tobool20.not = icmp eq %struct.engine_st* %call16, null
  br i1 %tobool20.not, label %if.end18.if.end29_crit_edge, label %if.then21

if.end18.if.end29_crit_edge:                      ; preds = %if.end18
  %.pre = load %struct.rsa_meth_st*, %struct.rsa_meth_st** %4, align 8, !tbaa !15
  br label %if.end29

if.then21:                                        ; preds = %if.end18.thread, %if.end18
  %9 = phi %struct.engine_st* [ %engine, %if.end18.thread ], [ %call16, %if.end18 ]
  %call23 = tail call %struct.rsa_meth_st* @ENGINE_get_RSA(%struct.engine_st* noundef nonnull %9) #12
  store %struct.rsa_meth_st* %call23, %struct.rsa_meth_st** %4, align 8, !tbaa !15
  %cmp26 = icmp eq %struct.rsa_meth_st* %call23, null
  br i1 %cmp26, label %err.sink.split, label %if.end29

if.end29:                                         ; preds = %if.end18.if.end29_crit_edge, %if.then21
  %10 = phi %struct.rsa_meth_st* [ %.pre, %if.end18.if.end29_crit_edge ], [ %call23, %if.then21 ]
  %flags31 = getelementptr inbounds %struct.rsa_meth_st, %struct.rsa_meth_st* %10, i64 0, i32 9
  %11 = load i32, i32* %flags31, align 8, !tbaa !16
  %and32 = and i32 %11, -1025
  store i32 %and32, i32* %6, align 4, !tbaa !18
  %ex_data = getelementptr inbounds i8, i8* %call, i64 144
  %12 = bitcast i8* %ex_data to %struct.crypto_ex_data_st*
  %call34 = tail call i32 @CRYPTO_new_ex_data(i32 noundef 9, i8* noundef nonnull %call, %struct.crypto_ex_data_st* noundef nonnull %12) #12
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %err, label %if.end37

if.end37:                                         ; preds = %if.end29
  %13 = load %struct.rsa_meth_st*, %struct.rsa_meth_st** %4, align 8, !tbaa !15
  %init = getelementptr inbounds %struct.rsa_meth_st, %struct.rsa_meth_st* %13, i64 0, i32 7
  %14 = load i32 (%struct.rsa_st*)*, i32 (%struct.rsa_st*)** %init, align 8, !tbaa !20
  %cmp39.not = icmp eq i32 (%struct.rsa_st*)* %14, null
  br i1 %cmp39.not, label %cleanup, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end37
  %call42 = tail call i32 %14(%struct.rsa_st* noundef nonnull %0) #12
  %tobool43.not = icmp eq i32 %call42, 0
  br i1 %tobool43.not, label %err.sink.split, label %cleanup

err.sink.split:                                   ; preds = %land.lhs.true, %if.then21, %if.then10
  %.sink75 = phi i32 [ 98, %if.then10 ], [ 108, %if.then21 ], [ 122, %land.lhs.true ]
  %.sink = phi i32 [ 524326, %if.then10 ], [ 524326, %if.then21 ], [ 786693, %land.lhs.true ]
  tail call void @ERR_new() #12
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef %.sink75, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__func__.rsa_new_intern, i64 0, i64 0)) #12
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 4, i32 noundef %.sink, i8* noundef null) #12
  br label %err

err:                                              ; preds = %err.sink.split, %if.end29
  tail call void @RSA_free(%struct.rsa_st* noundef nonnull %0) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end37, %land.lhs.true, %err, %if.then4, %if.then
  %retval.0 = phi %struct.rsa_st* [ null, %if.then ], [ null, %if.then4 ], [ null, %err ], [ %0, %land.lhs.true ], [ %0, %if.end37 ]
  ret %struct.rsa_st* %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define %struct.rsa_meth_st* @RSA_get_method(%struct.rsa_st* nocapture noundef readonly %rsa) local_unnamed_addr #1 {
entry:
  %meth = getelementptr inbounds %struct.rsa_st, %struct.rsa_st* %rsa, i64 0, i32 3
  %0 = load %struct.rsa_meth_st*, %struct.rsa_meth_st** %meth, align 8, !tbaa !15
  ret %struct.rsa_meth_st* %0
}

; Function Attrs: noinline nounwind uwtable
define i32 @RSA_set_method(%struct.rsa_st* noundef %rsa, %struct.rsa_meth_st* noundef %meth) local_unnamed_addr #0 {
entry:
  %meth1 = getelementptr inbounds %struct.rsa_st, %struct.rsa_st* %rsa, i64 0, i32 3
  %0 = load %struct.rsa_meth_st*, %struct.rsa_meth_st** %meth1, align 8, !tbaa !15
  %finish = getelementptr inbounds %struct.rsa_meth_st, %struct.rsa_meth_st* %0, i64 0, i32 8
  %1 = load i32 (%struct.rsa_st*)*, i32 (%struct.rsa_st*)** %finish, align 8, !tbaa !21
  %tobool.not = icmp eq i32 (%struct.rsa_st*)* %1, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = tail call i32 %1(%struct.rsa_st* noundef nonnull %rsa) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %engine = getelementptr inbounds %struct.rsa_st, %struct.rsa_st* %rsa, i64 0, i32 4
  %2 = load %struct.engine_st*, %struct.engine_st** %engine, align 8, !tbaa !19
  %call3 = tail call i32 @ENGINE_finish(%struct.engine_st* noundef %2) #12
  store %struct.engine_st* null, %struct.engine_st** %engine, align 8, !tbaa !19
  store %struct.rsa_meth_st* %meth, %struct.rsa_meth_st** %meth1, align 8, !tbaa !15
  %init = getelementptr inbounds %struct.rsa_meth_st, %struct.rsa_meth_st* %meth, i64 0, i32 7
  %3 = load i32 (%struct.rsa_st*)*, i32 (%struct.rsa_st*)** %init, align 8, !tbaa !20
  %tobool6.not = icmp eq i32 (%struct.rsa_st*)* %3, null
  br i1 %tobool6.not, label %if.end10, label %if.then7

if.then7:                                         ; preds = %if.end
  %call9 = tail call i32 %3(%struct.rsa_st* noundef nonnull %rsa) #12
  br label %if.end10

if.end10:                                         ; preds = %if.then7, %if.end
  ret i32 1
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

declare i32 @ENGINE_finish(%struct.engine_st* noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: noinline nounwind uwtable
define %struct.rsa_st* @RSA_new_method(%struct.engine_st* noundef %engine) local_unnamed_addr #0 {
entry:
  %call = tail call fastcc %struct.rsa_st* @rsa_new_intern(%struct.engine_st* noundef %engine, %struct.ossl_lib_ctx_st* noundef null) #11
  ret %struct.rsa_st* %call
}

; Function Attrs: noinline nounwind uwtable
define %struct.rsa_st* @ossl_rsa_new_with_ctx(%struct.ossl_lib_ctx_st* noundef %libctx) local_unnamed_addr #0 {
entry:
  %call = tail call fastcc %struct.rsa_st* @rsa_new_intern(%struct.engine_st* noundef null, %struct.ossl_lib_ctx_st* noundef %libctx) #11
  ret %struct.rsa_st* %call
}

; Function Attrs: noinline nounwind uwtable
define void @RSA_free(%struct.rsa_st* noundef %r) local_unnamed_addr #0 {
entry:
  %i = alloca i32, align 4
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #13
  %cmp = icmp eq %struct.rsa_st* %r, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %references = getelementptr inbounds %struct.rsa_st, %struct.rsa_st* %r, i64 0, i32 17
  %lock = getelementptr inbounds %struct.rsa_st, %struct.rsa_st* %r, i64 0, i32 24
  call fastcc void @CRYPTO_DOWN_REF(i32* noundef nonnull %references, i32* noundef nonnull %i) #11
  %1 = load i32, i32* %i, align 4, !tbaa !22
  %cmp1 = icmp sgt i32 %1, 0
  br i1 %cmp1, label %cleanup, label %if.end3

if.end3:                                          ; preds = %if.end
  %meth = getelementptr inbounds %struct.rsa_st, %struct.rsa_st* %r, i64 0, i32 3
  %2 = load %struct.rsa_meth_st*, %struct.rsa_meth_st** %meth, align 8, !tbaa !15
  %cmp4.not = icmp eq %struct.rsa_meth_st* %2, null
  br i1 %cmp4.not, label %if.end11, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end3
  %finish = getelementptr inbounds %struct.rsa_meth_st, %struct.rsa_meth_st* %2, i64 0, i32 8
  %3 = load i32 (%struct.rsa_st*)*, i32 (%struct.rsa_st*)** %finish, align 8, !tbaa !21
  %cmp6.not = icmp eq i32 (%struct.rsa_st*)* %3, null
  br i1 %cmp6.not, label %if.end11, label %if.then7

if.then7:                                         ; preds = %land.lhs.true
  %call10 = tail call i32 %3(%struct.rsa_st* noundef nonnull %r) #12
  br label %if.end11

if.end11:                                         ; preds = %if.then7, %land.lhs.true, %if.end3
  %engine = getelementptr inbounds %struct.rsa_st, %struct.rsa_st* %r, i64 0, i32 4
  %4 = load %struct.engine_st*, %struct.engine_st** %engine, align 8, !tbaa !19
  %call12 = tail call i32 @ENGINE_finish(%struct.engine_st* noundef %4) #12
  %5 = bitcast %struct.rsa_st* %r to i8*
  %ex_data = getelementptr inbounds %struct.rsa_st, %struct.rsa_st* %r, i64 0, i32 16
  tail call void @CRYPTO_free_ex_data(i32 noundef 9, i8* noundef nonnull %5, %struct.crypto_ex_data_st* noundef nonnull %ex_data) #12
  %6 = load i8*, i8** %lock, align 8, !tbaa !13
  tail call void @CRYPTO_THREAD_lock_free(i8* noundef %6) #12
  %n = getelementptr inbounds %struct.rsa_st, %struct.rsa_st* %r, i64 0, i32 5
  %7 = load %struct.bignum_st*, %struct.bignum_st** %n, align 8, !tbaa !23
  tail call void @BN_free(%struct.bignum_st* noundef %7) #12
  %e = getelementptr inbounds %struct.rsa_st, %struct.rsa_st* %r, i64 0, i32 6
  %8 = load %struct.bignum_st*, %struct.bignum_st** %e, align 8, !tbaa !24
  tail call void @BN_free(%struct.bignum_st* noundef %8) #12
  %d = getelementptr inbounds %struct.rsa_st, %struct.rsa_st* %r, i64 0, i32 7
  %9 = load %struct.bignum_st*, %struct.bignum_st** %d, align 8, !tbaa !25
  tail call void @BN_clear_free(%struct.bignum_st* noundef %9) #12
  %p = getelementptr inbounds %struct.rsa_st, %struct.rsa_st* %r, i64 0, i32 8
  %10 = load %struct.bignum_st*, %struct.bignum_st** %p, align 8, !tbaa !26
  tail call void @BN_clear_free(%struct.bignum_st* noundef %10) #12
  %q = getelementptr inbounds %struct.rsa_st, %struct.rsa_st* %r, i64 0, i32 9
  %11 = load %struct.bignum_st*, %struct.bignum_st** %q, align 8, !tbaa !27
  tail call void @BN_clear_free(%struct.bignum_st* noundef %11) #12
  %dmp1 = getelementptr inbounds %struct.rsa_st, %struct.rsa_st* %r, i64 0, i32 10
  %12 = load %struct.bignum_st*, %struct.bignum_st** %dmp1, align 8, !tbaa !28
  tail call void @BN_clear_free(%struct.bignum_st* noundef %12) #12
  %dmq1 = getelementptr inbounds %struct.rsa_st, %struct.rsa_st* %r, i64 0, i32 11
  %13 = load %struct.bignum_st*, %struct.bignum_st** %dmq1, align 8, !tbaa !29
  tail call void @BN_clear_free(%struct.bignum_st* noundef %13) #12
  %iqmp = getelementptr inbounds %struct.rsa_st, %struct.rsa_st* %r, i64 0, i32 12
  %14 = load %struct.bignum_st*, %struct.bignum_st** %iqmp, align 8, !tbaa !30
  tail call void @BN_clear_free(%struct.bignum_st* noundef %14) #12
  %pss = getelementptr inbounds %struct.rsa_st, %struct.rsa_st* %r, i64 0, i32 14
  %15 = load %struct.rsa_pss_params_st*, %struct.rsa_pss_params_st** %pss, align 8, !tbaa !31
  tail call void @RSA_PSS_PARAMS_free(%struct.rsa_pss_params_st* noundef %15) #12
  %prime_infos = getelementptr inbounds %struct.rsa_st, %struct.rsa_st* %r, i64 0, i32 15
  %16 = load %struct.stack_st_RSA_PRIME_INFO*, %struct.stack_st_RSA_PRIME_INFO** %prime_infos, align 8, !tbaa !32
  tail call fastcc void @sk_RSA_PRIME_INFO_pop_free(%struct.stack_st_RSA_PRIME_INFO* noundef %16, void (%struct.rsa_prime_info_st*)* noundef nonnull @ossl_rsa_multip_info_free) #11
  %blinding = getelementptr inbounds %struct.rsa_st, %struct.rsa_st* %r, i64 0, i32 22
  %17 = load %struct.bn_blinding_st*, %struct.bn_blinding_st** %blinding, align 8, !tbaa !33
  tail call void @BN_BLINDING_free(%struct.bn_blinding_st* noundef %17) #12
  %mt_blinding = getelementptr inbounds %struct.rsa_st, %struct.rsa_st* %r, i64 0, i32 23
  %18 = load %struct.bn_blinding_st*, %struct.bn_blinding_st** %mt_blinding, align 8, !tbaa !34
  tail call void @BN_BLINDING_free(%struct.bn_blinding_st* noundef %18) #12
  tail call void @CRYPTO_free(i8* noundef nonnull %5, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 177) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry, %if.end11
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #13
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind uwtable willreturn
define internal fastcc void @CRYPTO_DOWN_REF(i32* nocapture noundef %val, i32* nocapture noundef writeonly %ret) unnamed_addr #4 {
entry:
  %0 = atomicrmw sub i32* %val, i32 1 monotonic, align 4
  %sub = add nsw i32 %0, -1
  store i32 %sub, i32* %ret, align 4, !tbaa !22
  %cmp = icmp eq i32 %sub, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  fence acquire
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare void @CRYPTO_free_ex_data(i32 noundef, i8* noundef, %struct.crypto_ex_data_st* noundef) local_unnamed_addr #3

declare void @CRYPTO_THREAD_lock_free(i8* noundef) local_unnamed_addr #3

declare void @BN_free(%struct.bignum_st* noundef) local_unnamed_addr #3

declare void @BN_clear_free(%struct.bignum_st* noundef) local_unnamed_addr #3

declare void @RSA_PSS_PARAMS_free(%struct.rsa_pss_params_st* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @sk_RSA_PRIME_INFO_pop_free(%struct.stack_st_RSA_PRIME_INFO* noundef %sk, void (%struct.rsa_prime_info_st*)* noundef %freefunc) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.stack_st_RSA_PRIME_INFO* %sk to %struct.stack_st*
  %1 = bitcast void (%struct.rsa_prime_info_st*)* %freefunc to void (i8*)*
  tail call void @OPENSSL_sk_pop_free(%struct.stack_st* noundef %0, void (i8*)* noundef %1) #12
  ret void
}

declare void @ossl_rsa_multip_info_free(%struct.rsa_prime_info_st* noundef) #3

declare void @BN_BLINDING_free(%struct.bn_blinding_st* noundef) local_unnamed_addr #3

declare void @CRYPTO_free(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline nounwind uwtable willreturn
define i32 @RSA_up_ref(%struct.rsa_st* nocapture noundef %r) local_unnamed_addr #5 {
entry:
  %i = alloca i32, align 4
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #13
  %references = getelementptr inbounds %struct.rsa_st, %struct.rsa_st* %r, i64 0, i32 17
  call fastcc void @CRYPTO_UP_REF(i32* noundef nonnull %references, i32* noundef nonnull %i) #11
  %1 = load i32, i32* %i, align 4, !tbaa !22
  %cmp1 = icmp sgt i32 %1, 1
  %cond = zext i1 %cmp1 to i32
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #13
  ret i32 %cond
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind uwtable willreturn
define internal fastcc void @CRYPTO_UP_REF(i32* nocapture noundef %val, i32* nocapture noundef writeonly %ret) unnamed_addr #4 {
entry:
  %0 = atomicrmw add i32* %val, i32 1 monotonic, align 4
  %add = add nsw i32 %0, 1
  store i32 %add, i32* %ret, align 4, !tbaa !22
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define %struct.ossl_lib_ctx_st* @ossl_rsa_get0_libctx(%struct.rsa_st* nocapture noundef readonly %r) local_unnamed_addr #1 {
entry:
  %libctx = getelementptr inbounds %struct.rsa_st, %struct.rsa_st* %r, i64 0, i32 1
  %0 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** %libctx, align 8, !tbaa !14
  ret %struct.ossl_lib_ctx_st* %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define void @ossl_rsa_set0_libctx(%struct.rsa_st* nocapture noundef writeonly %r, %struct.ossl_lib_ctx_st* noundef %libctx) local_unnamed_addr #6 {
entry:
  %libctx1 = getelementptr inbounds %struct.rsa_st, %struct.rsa_st* %r, i64 0, i32 1
  store %struct.ossl_lib_ctx_st* %libctx, %struct.ossl_lib_ctx_st** %libctx1, align 8, !tbaa !14
  ret void
}

; Function Attrs: noinline nounwind uwtable
define i32 @RSA_set_ex_data(%struct.rsa_st* noundef %r, i32 noundef %idx, i8* noundef %arg) local_unnamed_addr #0 {
entry:
  %ex_data = getelementptr inbounds %struct.rsa_st, %struct.rsa_st* %r, i64 0, i32 16
  %call = tail call i32 @CRYPTO_set_ex_data(%struct.crypto_ex_data_st* noundef nonnull %ex_data, i32 noundef %idx, i8* noundef %arg) #12
  ret i32 %call
}

declare i32 @CRYPTO_set_ex_data(%struct.crypto_ex_data_st* noundef, i32 noundef, i8* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define i8* @RSA_get_ex_data(%struct.rsa_st* noundef %r, i32 noundef %idx) local_unnamed_addr #0 {
entry:
  %ex_data = getelementptr inbounds %struct.rsa_st, %struct.rsa_st* %r, i64 0, i32 16
  %call = tail call i8* @CRYPTO_get_ex_data(%struct.crypto_ex_data_st* noundef nonnull %ex_data, i32 noundef %idx) #12
  ret i8* %call
}

declare i8* @CRYPTO_get_ex_data(%struct.crypto_ex_data_st* noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree noinline norecurse nosync nounwind readnone uwtable
define zeroext i16 @ossl_ifc_ffc_compute_security_bits(i32 noundef %n) local_unnamed_addr #7 {
entry:
  switch i32 %n, label %sw.epilog [
    i32 2048, label %cleanup
    i32 3072, label %sw.bb1
    i32 4096, label %sw.bb2
    i32 6144, label %sw.bb3
    i32 7680, label %sw.bb4
    i32 8192, label %sw.bb5
    i32 15360, label %sw.bb6
  ]

sw.bb1:                                           ; preds = %entry
  br label %cleanup

sw.bb2:                                           ; preds = %entry
  br label %cleanup

sw.bb3:                                           ; preds = %entry
  br label %cleanup

sw.bb4:                                           ; preds = %entry
  br label %cleanup

sw.bb5:                                           ; preds = %entry
  br label %cleanup

sw.bb6:                                           ; preds = %entry
  br label %cleanup

sw.epilog:                                        ; preds = %entry
  %cmp = icmp sgt i32 %n, 687736
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %sw.epilog
  %cmp7 = icmp slt i32 %n, 8
  br i1 %cmp7, label %cleanup, label %if.end9

if.end9:                                          ; preds = %if.end
  %cmp10 = icmp ult i32 %n, 7681
  %cmp12 = icmp ult i32 %n, 15361
  %. = select i1 %cmp12, i16 256, i16 1200
  %cap.0 = select i1 %cmp10, i16 192, i16 %.
  %conv49 = zext i32 %n to i64
  %mul = mul nuw nsw i64 %conv49, 181704
  %call = tail call fastcc i32 @ilog_e(i64 noundef %mul) #11
  %conv17 = zext i32 %call to i64
  %call18 = tail call fastcc i64 @mul2(i64 noundef %mul, i64 noundef %conv17) #11, !range !35
  %call20 = tail call fastcc i64 @mul2(i64 noundef %call18, i64 noundef %conv17) #11, !range !35
  %call21 = tail call fastcc i64 @icbrt64(i64 noundef %call20) #11
  %call22 = tail call fastcc i64 @mul2(i64 noundef 504102, i64 noundef %call21) #11
  %sub = add i64 %call22, -1229455
  %div = udiv i64 %sub, 181704
  %conv23 = trunc i64 %div to i16
  %add = add i16 %conv23, 4
  %and = and i16 %add, -8
  %cmp28 = icmp ugt i16 %and, %cap.0
  %y.0 = select i1 %cmp28, i16 %cap.0, i16 %and
  br label %cleanup

cleanup:                                          ; preds = %if.end, %sw.epilog, %entry, %if.end9, %sw.bb6, %sw.bb5, %sw.bb4, %sw.bb3, %sw.bb2, %sw.bb1
  %retval.0 = phi i16 [ %y.0, %if.end9 ], [ 256, %sw.bb6 ], [ 200, %sw.bb5 ], [ 192, %sw.bb4 ], [ 176, %sw.bb3 ], [ 152, %sw.bb2 ], [ 128, %sw.bb1 ], [ 112, %entry ], [ 1200, %sw.epilog ], [ 0, %if.end ]
  ret i16 %retval.0
}

; Function Attrs: nofree noinline norecurse nosync nounwind readnone uwtable
define internal fastcc i32 @ilog_e(i64 noundef %v) unnamed_addr #7 {
entry:
  %cmp19 = icmp ugt i64 %v, 524287
  br i1 %cmp19, label %while.body, label %for.body.preheader

while.body:                                       ; preds = %entry, %while.body
  %r.021 = phi i32 [ %add, %while.body ], [ 0, %entry ]
  %v.addr.020 = phi i64 [ %shr, %while.body ], [ %v, %entry ]
  %shr = lshr i64 %v.addr.020, 1
  %add = add nuw nsw i32 %r.021, 262144
  %cmp = icmp ugt i64 %v.addr.020, 1048575
  br i1 %cmp, label %while.body, label %for.body.preheader, !llvm.loop !36

for.body.preheader:                               ; preds = %while.body, %entry
  %r.125.ph = phi i32 [ 0, %entry ], [ %add, %while.body ]
  %v.addr.123.ph = phi i64 [ %v, %entry ], [ %shr, %while.body ]
  br label %for.body

for.body:                                         ; preds = %for.body.preheader, %for.body
  %r.125 = phi i32 [ %r.2, %for.body ], [ %r.125.ph, %for.body.preheader ]
  %i.024 = phi i32 [ %div, %for.body ], [ 131072, %for.body.preheader ]
  %v.addr.123 = phi i64 [ %v.addr.2, %for.body ], [ %v.addr.123.ph, %for.body.preheader ]
  %call = tail call fastcc i64 @mul2(i64 noundef %v.addr.123, i64 noundef %v.addr.123) #11
  %cmp2 = icmp ugt i64 %call, 524287
  %shr3 = zext i1 %cmp2 to i64
  %v.addr.2 = lshr i64 %call, %shr3
  %add4 = select i1 %cmp2, i32 %i.024, i32 0
  %r.2 = add i32 %add4, %r.125
  %div = lshr i32 %i.024, 1
  %cmp1.not = icmp ult i32 %i.024, 2
  br i1 %cmp1.not, label %for.end, label %for.body, !llvm.loop !38

for.end:                                          ; preds = %for.body
  %conv = zext i32 %r.2 to i64
  %mul = shl nuw nsw i64 %conv, 18
  %div5 = udiv i64 %mul, 378193
  %conv6 = trunc i64 %div5 to i32
  ret i32 %conv6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc i64 @mul2(i64 noundef %a, i64 noundef %b) unnamed_addr #8 {
entry:
  %mul = mul i64 %b, %a
  %div = lshr i64 %mul, 18
  ret i64 %div
}

; Function Attrs: nofree noinline norecurse nosync nounwind readnone uwtable
define internal fastcc i64 @icbrt64(i64 noundef %x) unnamed_addr #7 {
entry:
  br label %for.body

for.body:                                         ; preds = %for.body, %entry
  %indvars.iv = phi i64 [ 63, %entry ], [ %indvars.iv.next.1, %for.body ]
  %x.addr.021 = phi i64 [ %x, %entry ], [ %x.addr.1.1, %for.body ]
  %r.020 = phi i64 [ 0, %entry ], [ %r.1.1, %for.body ]
  %shl = shl i64 %r.020, 1
  %mul = mul i64 %r.020, 6
  %add = or i64 %shl, 1
  %mul1 = mul i64 %mul, %add
  %add2 = or i64 %mul1, 1
  %shr = lshr i64 %x.addr.021, %indvars.iv
  %cmp3.not = icmp ult i64 %shr, %add2
  %shl5 = shl i64 %add2, %indvars.iv
  %r.1 = select i1 %cmp3.not, i64 %shl, i64 %add
  %sub = select i1 %cmp3.not, i64 0, i64 %shl5
  %x.addr.1 = sub i64 %x.addr.021, %sub
  %indvars.iv.next = add nsw i64 %indvars.iv, -3
  %shl.1 = shl i64 %r.1, 1
  %mul.1 = mul i64 %r.1, 6
  %add.1 = or i64 %shl.1, 1
  %mul1.1 = mul i64 %mul.1, %add.1
  %add2.1 = or i64 %mul1.1, 1
  %shr.1 = lshr i64 %x.addr.1, %indvars.iv.next
  %cmp3.not.1 = icmp ult i64 %shr.1, %add2.1
  %shl5.1 = shl i64 %add2.1, %indvars.iv.next
  %r.1.1 = select i1 %cmp3.not.1, i64 %shl.1, i64 %add.1
  %sub.1 = select i1 %cmp3.not.1, i64 0, i64 %shl5.1
  %x.addr.1.1 = sub i64 %x.addr.1, %sub.1
  %indvars.iv.next.1 = add nsw i64 %indvars.iv, -6
  %cmp.1 = icmp ugt i64 %indvars.iv.next, 2
  br i1 %cmp.1, label %for.body, label %for.end, !llvm.loop !39

for.end:                                          ; preds = %for.body
  %mul7 = shl i64 %r.1.1, 12
  ret i64 %mul7
}

; Function Attrs: noinline nounwind uwtable
define i32 @RSA_security_bits(%struct.rsa_st* nocapture noundef readonly %rsa) local_unnamed_addr #0 {
entry:
  %n = getelementptr inbounds %struct.rsa_st, %struct.rsa_st* %rsa, i64 0, i32 5
  %0 = load %struct.bignum_st*, %struct.bignum_st** %n, align 8, !tbaa !23
  %call = tail call i32 @BN_num_bits(%struct.bignum_st* noundef %0) #12
  %version = getelementptr inbounds %struct.rsa_st, %struct.rsa_st* %rsa, i64 0, i32 2
  %1 = load i32, i32* %version, align 8, !tbaa !40
  %cmp = icmp eq i32 %1, 1
  br i1 %cmp, label %if.then, label %if.end6

if.then:                                          ; preds = %entry
  %prime_infos = getelementptr inbounds %struct.rsa_st, %struct.rsa_st* %rsa, i64 0, i32 15
  %2 = load %struct.stack_st_RSA_PRIME_INFO*, %struct.stack_st_RSA_PRIME_INFO** %prime_infos, align 8, !tbaa !32
  %call1 = tail call fastcc i32 @sk_RSA_PRIME_INFO_num(%struct.stack_st_RSA_PRIME_INFO* noundef %2) #11
  %cmp2 = icmp slt i32 %call1, 1
  br i1 %cmp2, label %cleanup8, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then
  %add = add nuw nsw i32 %call1, 2
  %call3 = tail call i32 @ossl_rsa_multip_cap(i32 noundef %call) #12
  %cmp4 = icmp sgt i32 %add, %call3
  br i1 %cmp4, label %cleanup8, label %if.end6

if.end6:                                          ; preds = %lor.lhs.false, %entry
  %call7 = tail call zeroext i16 @ossl_ifc_ffc_compute_security_bits(i32 noundef %call) #11
  %conv = zext i16 %call7 to i32
  br label %cleanup8

cleanup8:                                         ; preds = %lor.lhs.false, %if.then, %if.end6
  %retval.1 = phi i32 [ %conv, %if.end6 ], [ 0, %if.then ], [ 0, %lor.lhs.false ]
  ret i32 %retval.1
}

declare i32 @BN_num_bits(%struct.bignum_st* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @sk_RSA_PRIME_INFO_num(%struct.stack_st_RSA_PRIME_INFO* noundef %sk) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.stack_st_RSA_PRIME_INFO* %sk to %struct.stack_st*
  %call = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %0) #12
  ret i32 %call
}

declare i32 @ossl_rsa_multip_cap(i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define i32 @RSA_set0_key(%struct.rsa_st* nocapture noundef %r, %struct.bignum_st* noundef %n, %struct.bignum_st* noundef %e, %struct.bignum_st* noundef %d) local_unnamed_addr #0 {
entry:
  %n1 = getelementptr inbounds %struct.rsa_st, %struct.rsa_st* %r, i64 0, i32 5
  %0 = load %struct.bignum_st*, %struct.bignum_st** %n1, align 8, !tbaa !23
  %cmp = icmp eq %struct.bignum_st* %0, null
  %cmp2 = icmp eq %struct.bignum_st* %n, null
  %or.cond = and i1 %cmp2, %cmp
  br i1 %or.cond, label %return, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %e3 = getelementptr inbounds %struct.rsa_st, %struct.rsa_st* %r, i64 0, i32 6
  %1 = load %struct.bignum_st*, %struct.bignum_st** %e3, align 8, !tbaa !24
  %cmp4 = icmp eq %struct.bignum_st* %1, null
  %cmp6 = icmp eq %struct.bignum_st* %e, null
  %or.cond23 = and i1 %cmp6, %cmp4
  br i1 %or.cond23, label %return, label %if.end

if.end:                                           ; preds = %lor.lhs.false
  br i1 %cmp2, label %if.end11, label %if.then8

if.then8:                                         ; preds = %if.end
  tail call void @BN_free(%struct.bignum_st* noundef %0) #12
  store %struct.bignum_st* %n, %struct.bignum_st** %n1, align 8, !tbaa !23
  br label %if.end11

if.end11:                                         ; preds = %if.then8, %if.end
  br i1 %cmp6, label %if.end16, label %if.then13

if.then13:                                        ; preds = %if.end11
  %2 = load %struct.bignum_st*, %struct.bignum_st** %e3, align 8, !tbaa !24
  tail call void @BN_free(%struct.bignum_st* noundef %2) #12
  store %struct.bignum_st* %e, %struct.bignum_st** %e3, align 8, !tbaa !24
  br label %if.end16

if.end16:                                         ; preds = %if.then13, %if.end11
  %cmp17.not = icmp eq %struct.bignum_st* %d, null
  br i1 %cmp17.not, label %if.end22, label %if.then18

if.then18:                                        ; preds = %if.end16
  %d19 = getelementptr inbounds %struct.rsa_st, %struct.rsa_st* %r, i64 0, i32 7
  %3 = load %struct.bignum_st*, %struct.bignum_st** %d19, align 8, !tbaa !25
  tail call void @BN_clear_free(%struct.bignum_st* noundef %3) #12
  store %struct.bignum_st* %d, %struct.bignum_st** %d19, align 8, !tbaa !25
  tail call void @BN_set_flags(%struct.bignum_st* noundef nonnull %d, i32 noundef 4) #12
  br label %if.end22

if.end22:                                         ; preds = %if.then18, %if.end16
  %dirty_cnt = getelementptr inbounds %struct.rsa_st, %struct.rsa_st* %r, i64 0, i32 25
  %4 = load i32, i32* %dirty_cnt, align 8, !tbaa !41
  %inc = add nsw i32 %4, 1
  store i32 %inc, i32* %dirty_cnt, align 8, !tbaa !41
  br label %return

return:                                           ; preds = %entry, %lor.lhs.false, %if.end22
  %retval.0 = phi i32 [ 1, %if.end22 ], [ 0, %lor.lhs.false ], [ 0, %entry ]
  ret i32 %retval.0
}

declare void @BN_set_flags(%struct.bignum_st* noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define i32 @RSA_set0_factors(%struct.rsa_st* nocapture noundef %r, %struct.bignum_st* noundef %p, %struct.bignum_st* noundef %q) local_unnamed_addr #0 {
entry:
  %p1 = getelementptr inbounds %struct.rsa_st, %struct.rsa_st* %r, i64 0, i32 8
  %0 = load %struct.bignum_st*, %struct.bignum_st** %p1, align 8, !tbaa !26
  %cmp = icmp eq %struct.bignum_st* %0, null
  %cmp2 = icmp eq %struct.bignum_st* %p, null
  %or.cond = and i1 %cmp2, %cmp
  br i1 %or.cond, label %return, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %q3 = getelementptr inbounds %struct.rsa_st, %struct.rsa_st* %r, i64 0, i32 9
  %1 = load %struct.bignum_st*, %struct.bignum_st** %q3, align 8, !tbaa !27
  %cmp4 = icmp eq %struct.bignum_st* %1, null
  %cmp6 = icmp eq %struct.bignum_st* %q, null
  %or.cond19 = and i1 %cmp6, %cmp4
  br i1 %or.cond19, label %return, label %if.end

if.end:                                           ; preds = %lor.lhs.false
  br i1 %cmp2, label %if.end12, label %if.then8

if.then8:                                         ; preds = %if.end
  tail call void @BN_clear_free(%struct.bignum_st* noundef %0) #12
  store %struct.bignum_st* %p, %struct.bignum_st** %p1, align 8, !tbaa !26
  tail call void @BN_set_flags(%struct.bignum_st* noundef nonnull %p, i32 noundef 4) #12
  br label %if.end12

if.end12:                                         ; preds = %if.then8, %if.end
  br i1 %cmp6, label %if.end18, label %if.then14

if.then14:                                        ; preds = %if.end12
  %2 = load %struct.bignum_st*, %struct.bignum_st** %q3, align 8, !tbaa !27
  tail call void @BN_clear_free(%struct.bignum_st* noundef %2) #12
  store %struct.bignum_st* %q, %struct.bignum_st** %q3, align 8, !tbaa !27
  tail call void @BN_set_flags(%struct.bignum_st* noundef nonnull %q, i32 noundef 4) #12
  br label %if.end18

if.end18:                                         ; preds = %if.then14, %if.end12
  %dirty_cnt = getelementptr inbounds %struct.rsa_st, %struct.rsa_st* %r, i64 0, i32 25
  %3 = load i32, i32* %dirty_cnt, align 8, !tbaa !41
  %inc = add nsw i32 %3, 1
  store i32 %inc, i32* %dirty_cnt, align 8, !tbaa !41
  br label %return

return:                                           ; preds = %entry, %lor.lhs.false, %if.end18
  %retval.0 = phi i32 [ 1, %if.end18 ], [ 0, %lor.lhs.false ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @RSA_set0_crt_params(%struct.rsa_st* nocapture noundef %r, %struct.bignum_st* noundef %dmp1, %struct.bignum_st* noundef %dmq1, %struct.bignum_st* noundef %iqmp) local_unnamed_addr #0 {
entry:
  %dmp11 = getelementptr inbounds %struct.rsa_st, %struct.rsa_st* %r, i64 0, i32 10
  %0 = load %struct.bignum_st*, %struct.bignum_st** %dmp11, align 8, !tbaa !28
  %cmp = icmp eq %struct.bignum_st* %0, null
  %cmp2 = icmp eq %struct.bignum_st* %dmp1, null
  %or.cond = and i1 %cmp2, %cmp
  br i1 %or.cond, label %return, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %dmq13 = getelementptr inbounds %struct.rsa_st, %struct.rsa_st* %r, i64 0, i32 11
  %1 = load %struct.bignum_st*, %struct.bignum_st** %dmq13, align 8, !tbaa !29
  %cmp4 = icmp eq %struct.bignum_st* %1, null
  %cmp6 = icmp eq %struct.bignum_st* %dmq1, null
  %or.cond30 = and i1 %cmp6, %cmp4
  br i1 %or.cond30, label %return, label %lor.lhs.false7

lor.lhs.false7:                                   ; preds = %lor.lhs.false
  %iqmp8 = getelementptr inbounds %struct.rsa_st, %struct.rsa_st* %r, i64 0, i32 12
  %2 = load %struct.bignum_st*, %struct.bignum_st** %iqmp8, align 8, !tbaa !30
  %cmp9 = icmp eq %struct.bignum_st* %2, null
  %cmp11 = icmp eq %struct.bignum_st* %iqmp, null
  %or.cond31 = and i1 %cmp11, %cmp9
  br i1 %or.cond31, label %return, label %if.end

if.end:                                           ; preds = %lor.lhs.false7
  br i1 %cmp2, label %if.end17, label %if.then13

if.then13:                                        ; preds = %if.end
  tail call void @BN_clear_free(%struct.bignum_st* noundef %0) #12
  store %struct.bignum_st* %dmp1, %struct.bignum_st** %dmp11, align 8, !tbaa !28
  tail call void @BN_set_flags(%struct.bignum_st* noundef nonnull %dmp1, i32 noundef 4) #12
  br label %if.end17

if.end17:                                         ; preds = %if.then13, %if.end
  br i1 %cmp6, label %if.end23, label %if.then19

if.then19:                                        ; preds = %if.end17
  %3 = load %struct.bignum_st*, %struct.bignum_st** %dmq13, align 8, !tbaa !29
  tail call void @BN_clear_free(%struct.bignum_st* noundef %3) #12
  store %struct.bignum_st* %dmq1, %struct.bignum_st** %dmq13, align 8, !tbaa !29
  tail call void @BN_set_flags(%struct.bignum_st* noundef nonnull %dmq1, i32 noundef 4) #12
  br label %if.end23

if.end23:                                         ; preds = %if.then19, %if.end17
  br i1 %cmp11, label %if.end29, label %if.then25

if.then25:                                        ; preds = %if.end23
  %4 = load %struct.bignum_st*, %struct.bignum_st** %iqmp8, align 8, !tbaa !30
  tail call void @BN_clear_free(%struct.bignum_st* noundef %4) #12
  store %struct.bignum_st* %iqmp, %struct.bignum_st** %iqmp8, align 8, !tbaa !30
  tail call void @BN_set_flags(%struct.bignum_st* noundef nonnull %iqmp, i32 noundef 4) #12
  br label %if.end29

if.end29:                                         ; preds = %if.then25, %if.end23
  %dirty_cnt = getelementptr inbounds %struct.rsa_st, %struct.rsa_st* %r, i64 0, i32 25
  %5 = load i32, i32* %dirty_cnt, align 8, !tbaa !41
  %inc = add nsw i32 %5, 1
  store i32 %inc, i32* %dirty_cnt, align 8, !tbaa !41
  br label %return

return:                                           ; preds = %entry, %lor.lhs.false, %lor.lhs.false7, %if.end29
  %retval.0 = phi i32 [ 1, %if.end29 ], [ 0, %lor.lhs.false7 ], [ 0, %lor.lhs.false ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @RSA_set0_multi_prime_params(%struct.rsa_st* noundef %r, %struct.bignum_st** noundef readonly %primes, %struct.bignum_st** noundef readonly %exps, %struct.bignum_st** noundef readonly %coeffs, i32 noundef %pnum) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.bignum_st** %primes, null
  %cmp1 = icmp eq %struct.bignum_st** %exps, null
  %or.cond = or i1 %cmp, %cmp1
  %cmp3 = icmp eq %struct.bignum_st** %coeffs, null
  %or.cond55 = or i1 %or.cond, %cmp3
  %cmp5 = icmp eq i32 %pnum, 0
  %or.cond56 = or i1 %or.cond55, %cmp5
  br i1 %or.cond56, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call = tail call fastcc %struct.stack_st_RSA_PRIME_INFO* @sk_RSA_PRIME_INFO_new_reserve(i32 noundef %pnum) #11
  %cmp6 = icmp eq %struct.stack_st_RSA_PRIME_INFO* %call, null
  br i1 %cmp6, label %cleanup, label %if.end8

if.end8:                                          ; preds = %if.end
  %prime_infos9 = getelementptr inbounds %struct.rsa_st, %struct.rsa_st* %r, i64 0, i32 15
  %0 = load %struct.stack_st_RSA_PRIME_INFO*, %struct.stack_st_RSA_PRIME_INFO** %prime_infos9, align 8, !tbaa !32
  %cmp10.not = icmp eq %struct.stack_st_RSA_PRIME_INFO* %0, null
  %cmp1499 = icmp sgt i32 %pnum, 0
  br i1 %cmp1499, label %for.body.preheader, label %for.end

for.body.preheader:                               ; preds = %if.end8
  %wide.trip.count = zext i32 %pnum to i64
  br label %for.body

for.body:                                         ; preds = %for.body.preheader, %if.then27
  %indvars.iv = phi i64 [ 0, %for.body.preheader ], [ %indvars.iv.next, %if.then27 ]
  %call15 = tail call %struct.rsa_prime_info_st* @ossl_rsa_multip_info_new() #12
  %cmp16 = icmp eq %struct.rsa_prime_info_st* %call15, null
  br i1 %cmp16, label %err, label %if.end18

if.end18:                                         ; preds = %for.body
  %arrayidx = getelementptr inbounds %struct.bignum_st*, %struct.bignum_st** %primes, i64 %indvars.iv
  %1 = load %struct.bignum_st*, %struct.bignum_st** %arrayidx, align 8, !tbaa !42
  %cmp19.not = icmp eq %struct.bignum_st* %1, null
  br i1 %cmp19.not, label %if.else, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end18
  %arrayidx21 = getelementptr inbounds %struct.bignum_st*, %struct.bignum_st** %exps, i64 %indvars.iv
  %2 = load %struct.bignum_st*, %struct.bignum_st** %arrayidx21, align 8, !tbaa !42
  %cmp22.not = icmp eq %struct.bignum_st* %2, null
  br i1 %cmp22.not, label %if.else, label %land.lhs.true23

land.lhs.true23:                                  ; preds = %land.lhs.true
  %arrayidx25 = getelementptr inbounds %struct.bignum_st*, %struct.bignum_st** %coeffs, i64 %indvars.iv
  %3 = load %struct.bignum_st*, %struct.bignum_st** %arrayidx25, align 8, !tbaa !42
  %cmp26.not = icmp eq %struct.bignum_st* %3, null
  br i1 %cmp26.not, label %if.else, label %if.then27

if.then27:                                        ; preds = %land.lhs.true23
  %r28 = getelementptr inbounds %struct.rsa_prime_info_st, %struct.rsa_prime_info_st* %call15, i64 0, i32 0
  %4 = load %struct.bignum_st*, %struct.bignum_st** %r28, align 8, !tbaa !43
  tail call void @BN_clear_free(%struct.bignum_st* noundef %4) #12
  %d = getelementptr inbounds %struct.rsa_prime_info_st, %struct.rsa_prime_info_st* %call15, i64 0, i32 1
  %5 = load %struct.bignum_st*, %struct.bignum_st** %d, align 8, !tbaa !45
  tail call void @BN_clear_free(%struct.bignum_st* noundef %5) #12
  %t = getelementptr inbounds %struct.rsa_prime_info_st, %struct.rsa_prime_info_st* %call15, i64 0, i32 2
  %6 = load %struct.bignum_st*, %struct.bignum_st** %t, align 8, !tbaa !46
  tail call void @BN_clear_free(%struct.bignum_st* noundef %6) #12
  %7 = load %struct.bignum_st*, %struct.bignum_st** %arrayidx, align 8, !tbaa !42
  store %struct.bignum_st* %7, %struct.bignum_st** %r28, align 8, !tbaa !43
  %8 = load %struct.bignum_st*, %struct.bignum_st** %arrayidx21, align 8, !tbaa !42
  store %struct.bignum_st* %8, %struct.bignum_st** %d, align 8, !tbaa !45
  %9 = load %struct.bignum_st*, %struct.bignum_st** %arrayidx25, align 8, !tbaa !42
  store %struct.bignum_st* %9, %struct.bignum_st** %t, align 8, !tbaa !46
  tail call void @BN_set_flags(%struct.bignum_st* noundef %7, i32 noundef 4) #12
  %10 = load %struct.bignum_st*, %struct.bignum_st** %d, align 8, !tbaa !45
  tail call void @BN_set_flags(%struct.bignum_st* noundef %10, i32 noundef 4) #12
  %11 = load %struct.bignum_st*, %struct.bignum_st** %t, align 8, !tbaa !46
  tail call void @BN_set_flags(%struct.bignum_st* noundef %11, i32 noundef 4) #12
  tail call fastcc void @sk_RSA_PRIME_INFO_push(%struct.stack_st_RSA_PRIME_INFO* noundef nonnull %call, %struct.rsa_prime_info_st* noundef nonnull %call15) #11
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %for.end, label %for.body, !llvm.loop !47

if.else:                                          ; preds = %land.lhs.true23, %land.lhs.true, %if.end18
  tail call void @ossl_rsa_multip_info_free(%struct.rsa_prime_info_st* noundef nonnull %call15) #12
  br label %err

for.end:                                          ; preds = %if.then27, %if.end8
  store %struct.stack_st_RSA_PRIME_INFO* %call, %struct.stack_st_RSA_PRIME_INFO** %prime_infos9, align 8, !tbaa !32
  %call44 = tail call i32 @ossl_rsa_multip_calc_product(%struct.rsa_st* noundef %r) #12
  %tobool.not = icmp eq i32 %call44, 0
  br i1 %tobool.not, label %if.then45, label %if.end47

if.then45:                                        ; preds = %for.end
  store %struct.stack_st_RSA_PRIME_INFO* %0, %struct.stack_st_RSA_PRIME_INFO** %prime_infos9, align 8, !tbaa !32
  br label %err

if.end47:                                         ; preds = %for.end
  br i1 %cmp10.not, label %if.end50, label %if.then49

if.then49:                                        ; preds = %if.end47
  tail call fastcc void @sk_RSA_PRIME_INFO_pop_free(%struct.stack_st_RSA_PRIME_INFO* noundef nonnull %0, void (%struct.rsa_prime_info_st*)* noundef nonnull @ossl_rsa_multip_info_free) #11
  br label %if.end50

if.end50:                                         ; preds = %if.then49, %if.end47
  %version = getelementptr inbounds %struct.rsa_st, %struct.rsa_st* %r, i64 0, i32 2
  store i32 1, i32* %version, align 8, !tbaa !40
  %dirty_cnt = getelementptr inbounds %struct.rsa_st, %struct.rsa_st* %r, i64 0, i32 25
  %12 = load i32, i32* %dirty_cnt, align 8, !tbaa !41
  %inc51 = add nsw i32 %12, 1
  store i32 %inc51, i32* %dirty_cnt, align 8, !tbaa !41
  br label %cleanup

err:                                              ; preds = %for.body, %if.then45, %if.else
  tail call fastcc void @sk_RSA_PRIME_INFO_pop_free(%struct.stack_st_RSA_PRIME_INFO* noundef nonnull %call, void (%struct.rsa_prime_info_st*)* noundef nonnull @ossl_rsa_multip_info_free_ex) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry, %err, %if.end50
  %retval.0 = phi i32 [ 0, %err ], [ 1, %if.end50 ], [ 0, %entry ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.stack_st_RSA_PRIME_INFO* @sk_RSA_PRIME_INFO_new_reserve(i32 noundef %n) unnamed_addr #0 {
entry:
  %call = tail call %struct.stack_st* @OPENSSL_sk_new_reserve(i32 (i8*, i8*)* noundef null, i32 noundef %n) #12
  %0 = bitcast %struct.stack_st* %call to %struct.stack_st_RSA_PRIME_INFO*
  ret %struct.stack_st_RSA_PRIME_INFO* %0
}

declare %struct.rsa_prime_info_st* @ossl_rsa_multip_info_new() local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @sk_RSA_PRIME_INFO_push(%struct.stack_st_RSA_PRIME_INFO* noundef %sk, %struct.rsa_prime_info_st* noundef %ptr) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.stack_st_RSA_PRIME_INFO* %sk to %struct.stack_st*
  %1 = bitcast %struct.rsa_prime_info_st* %ptr to i8*
  %call = tail call i32 @OPENSSL_sk_push(%struct.stack_st* noundef %0, i8* noundef %1) #12
  ret void
}

declare i32 @ossl_rsa_multip_calc_product(%struct.rsa_st* noundef) local_unnamed_addr #3

declare void @ossl_rsa_multip_info_free_ex(%struct.rsa_prime_info_st* noundef) #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define void @RSA_get0_key(%struct.rsa_st* nocapture noundef readonly %r, %struct.bignum_st** noundef writeonly %n, %struct.bignum_st** noundef writeonly %e, %struct.bignum_st** noundef writeonly %d) local_unnamed_addr #9 {
entry:
  %cmp.not = icmp eq %struct.bignum_st** %n, null
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %n1 = getelementptr inbounds %struct.rsa_st, %struct.rsa_st* %r, i64 0, i32 5
  %0 = load %struct.bignum_st*, %struct.bignum_st** %n1, align 8, !tbaa !23
  store %struct.bignum_st* %0, %struct.bignum_st** %n, align 8, !tbaa !42
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %cmp2.not = icmp eq %struct.bignum_st** %e, null
  br i1 %cmp2.not, label %if.end5, label %if.then3

if.then3:                                         ; preds = %if.end
  %e4 = getelementptr inbounds %struct.rsa_st, %struct.rsa_st* %r, i64 0, i32 6
  %1 = load %struct.bignum_st*, %struct.bignum_st** %e4, align 8, !tbaa !24
  store %struct.bignum_st* %1, %struct.bignum_st** %e, align 8, !tbaa !42
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %if.end
  %cmp6.not = icmp eq %struct.bignum_st** %d, null
  br i1 %cmp6.not, label %if.end9, label %if.then7

if.then7:                                         ; preds = %if.end5
  %d8 = getelementptr inbounds %struct.rsa_st, %struct.rsa_st* %r, i64 0, i32 7
  %2 = load %struct.bignum_st*, %struct.bignum_st** %d8, align 8, !tbaa !25
  store %struct.bignum_st* %2, %struct.bignum_st** %d, align 8, !tbaa !42
  br label %if.end9

if.end9:                                          ; preds = %if.then7, %if.end5
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define void @RSA_get0_factors(%struct.rsa_st* nocapture noundef readonly %r, %struct.bignum_st** noundef writeonly %p, %struct.bignum_st** noundef writeonly %q) local_unnamed_addr #9 {
entry:
  %cmp.not = icmp eq %struct.bignum_st** %p, null
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %p1 = getelementptr inbounds %struct.rsa_st, %struct.rsa_st* %r, i64 0, i32 8
  %0 = load %struct.bignum_st*, %struct.bignum_st** %p1, align 8, !tbaa !26
  store %struct.bignum_st* %0, %struct.bignum_st** %p, align 8, !tbaa !42
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %cmp2.not = icmp eq %struct.bignum_st** %q, null
  br i1 %cmp2.not, label %if.end5, label %if.then3

if.then3:                                         ; preds = %if.end
  %q4 = getelementptr inbounds %struct.rsa_st, %struct.rsa_st* %r, i64 0, i32 9
  %1 = load %struct.bignum_st*, %struct.bignum_st** %q4, align 8, !tbaa !27
  store %struct.bignum_st* %1, %struct.bignum_st** %q, align 8, !tbaa !42
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %if.end
  ret void
}

; Function Attrs: noinline nounwind uwtable
define i32 @RSA_get_multi_prime_extra_count(%struct.rsa_st* nocapture noundef readonly %r) local_unnamed_addr #0 {
entry:
  %prime_infos = getelementptr inbounds %struct.rsa_st, %struct.rsa_st* %r, i64 0, i32 15
  %0 = load %struct.stack_st_RSA_PRIME_INFO*, %struct.stack_st_RSA_PRIME_INFO** %prime_infos, align 8, !tbaa !32
  %call = tail call fastcc i32 @sk_RSA_PRIME_INFO_num(%struct.stack_st_RSA_PRIME_INFO* noundef %0) #11
  %cmp.inv = icmp sgt i32 %call, 0
  %spec.store.select = select i1 %cmp.inv, i32 %call, i32 0
  ret i32 %spec.store.select
}

; Function Attrs: noinline nounwind uwtable
define i32 @RSA_get0_multi_prime_factors(%struct.rsa_st* nocapture noundef readonly %r, %struct.bignum_st** nocapture noundef writeonly %primes) local_unnamed_addr #0 {
entry:
  %call = tail call i32 @RSA_get_multi_prime_extra_count(%struct.rsa_st* noundef %r) #11
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %cleanup, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  %cmp113 = icmp sgt i32 %call, 0
  br i1 %cmp113, label %for.body.lr.ph, label %cleanup

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %prime_infos = getelementptr inbounds %struct.rsa_st, %struct.rsa_st* %r, i64 0, i32 15
  %wide.trip.count = zext i32 %call to i64
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.body ]
  %0 = load %struct.stack_st_RSA_PRIME_INFO*, %struct.stack_st_RSA_PRIME_INFO** %prime_infos, align 8, !tbaa !32
  %1 = trunc i64 %indvars.iv to i32
  %call2 = tail call fastcc %struct.rsa_prime_info_st* @sk_RSA_PRIME_INFO_value(%struct.stack_st_RSA_PRIME_INFO* noundef %0, i32 noundef %1) #11
  %r3 = getelementptr inbounds %struct.rsa_prime_info_st, %struct.rsa_prime_info_st* %call2, i64 0, i32 0
  %2 = load %struct.bignum_st*, %struct.bignum_st** %r3, align 8, !tbaa !43
  %arrayidx = getelementptr inbounds %struct.bignum_st*, %struct.bignum_st** %primes, i64 %indvars.iv
  store %struct.bignum_st* %2, %struct.bignum_st** %arrayidx, align 8, !tbaa !42
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %cleanup, label %for.body, !llvm.loop !48

cleanup:                                          ; preds = %for.body, %for.cond.preheader, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ 1, %for.cond.preheader ], [ 1, %for.body ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.rsa_prime_info_st* @sk_RSA_PRIME_INFO_value(%struct.stack_st_RSA_PRIME_INFO* noundef %sk, i32 noundef %idx) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.stack_st_RSA_PRIME_INFO* %sk to %struct.stack_st*
  %call = tail call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %0, i32 noundef %idx) #12
  %1 = bitcast i8* %call to %struct.rsa_prime_info_st*
  ret %struct.rsa_prime_info_st* %1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define void @RSA_get0_crt_params(%struct.rsa_st* nocapture noundef readonly %r, %struct.bignum_st** noundef writeonly %dmp1, %struct.bignum_st** noundef writeonly %dmq1, %struct.bignum_st** noundef writeonly %iqmp) local_unnamed_addr #9 {
entry:
  %cmp.not = icmp eq %struct.bignum_st** %dmp1, null
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %dmp11 = getelementptr inbounds %struct.rsa_st, %struct.rsa_st* %r, i64 0, i32 10
  %0 = load %struct.bignum_st*, %struct.bignum_st** %dmp11, align 8, !tbaa !28
  store %struct.bignum_st* %0, %struct.bignum_st** %dmp1, align 8, !tbaa !42
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %cmp2.not = icmp eq %struct.bignum_st** %dmq1, null
  br i1 %cmp2.not, label %if.end5, label %if.then3

if.then3:                                         ; preds = %if.end
  %dmq14 = getelementptr inbounds %struct.rsa_st, %struct.rsa_st* %r, i64 0, i32 11
  %1 = load %struct.bignum_st*, %struct.bignum_st** %dmq14, align 8, !tbaa !29
  store %struct.bignum_st* %1, %struct.bignum_st** %dmq1, align 8, !tbaa !42
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %if.end
  %cmp6.not = icmp eq %struct.bignum_st** %iqmp, null
  br i1 %cmp6.not, label %if.end9, label %if.then7

if.then7:                                         ; preds = %if.end5
  %iqmp8 = getelementptr inbounds %struct.rsa_st, %struct.rsa_st* %r, i64 0, i32 12
  %2 = load %struct.bignum_st*, %struct.bignum_st** %iqmp8, align 8, !tbaa !30
  store %struct.bignum_st* %2, %struct.bignum_st** %iqmp, align 8, !tbaa !42
  br label %if.end9

if.end9:                                          ; preds = %if.then7, %if.end5
  ret void
}

; Function Attrs: noinline nounwind uwtable
define i32 @RSA_get0_multi_prime_crt_params(%struct.rsa_st* nocapture noundef readonly %r, %struct.bignum_st** noundef writeonly %exps, %struct.bignum_st** noundef writeonly %coeffs) local_unnamed_addr #0 {
entry:
  %call = tail call i32 @RSA_get_multi_prime_extra_count(%struct.rsa_st* noundef %r) #11
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %cmp1 = icmp ne %struct.bignum_st** %exps, null
  %cmp2 = icmp ne %struct.bignum_st** %coeffs, null
  %or.cond = or i1 %cmp1, %cmp2
  %cmp428 = icmp sgt i32 %call, 0
  %or.cond32 = select i1 %or.cond, i1 %cmp428, i1 false
  br i1 %or.cond32, label %for.body.lr.ph, label %cleanup

for.body.lr.ph:                                   ; preds = %if.end
  %prime_infos = getelementptr inbounds %struct.rsa_st, %struct.rsa_st* %r, i64 0, i32 15
  %wide.trip.count = zext i32 %call to i64
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.inc ]
  %0 = load %struct.stack_st_RSA_PRIME_INFO*, %struct.stack_st_RSA_PRIME_INFO** %prime_infos, align 8, !tbaa !32
  %1 = trunc i64 %indvars.iv to i32
  %call5 = tail call fastcc %struct.rsa_prime_info_st* @sk_RSA_PRIME_INFO_value(%struct.stack_st_RSA_PRIME_INFO* noundef %0, i32 noundef %1) #11
  br i1 %cmp1, label %if.then7, label %if.end8

if.then7:                                         ; preds = %for.body
  %d = getelementptr inbounds %struct.rsa_prime_info_st, %struct.rsa_prime_info_st* %call5, i64 0, i32 1
  %2 = load %struct.bignum_st*, %struct.bignum_st** %d, align 8, !tbaa !45
  %arrayidx = getelementptr inbounds %struct.bignum_st*, %struct.bignum_st** %exps, i64 %indvars.iv
  store %struct.bignum_st* %2, %struct.bignum_st** %arrayidx, align 8, !tbaa !42
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %for.body
  br i1 %cmp2, label %if.then10, label %for.inc

if.then10:                                        ; preds = %if.end8
  %t = getelementptr inbounds %struct.rsa_prime_info_st, %struct.rsa_prime_info_st* %call5, i64 0, i32 2
  %3 = load %struct.bignum_st*, %struct.bignum_st** %t, align 8, !tbaa !46
  %arrayidx12 = getelementptr inbounds %struct.bignum_st*, %struct.bignum_st** %coeffs, i64 %indvars.iv
  store %struct.bignum_st* %3, %struct.bignum_st** %arrayidx12, align 8, !tbaa !42
  br label %for.inc

for.inc:                                          ; preds = %if.end8, %if.then10
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %cleanup, label %for.body, !llvm.loop !49

cleanup:                                          ; preds = %for.inc, %if.end, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ 1, %if.end ], [ 1, %for.inc ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define %struct.bignum_st* @RSA_get0_n(%struct.rsa_st* nocapture noundef readonly %r) local_unnamed_addr #1 {
entry:
  %n = getelementptr inbounds %struct.rsa_st, %struct.rsa_st* %r, i64 0, i32 5
  %0 = load %struct.bignum_st*, %struct.bignum_st** %n, align 8, !tbaa !23
  ret %struct.bignum_st* %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define %struct.bignum_st* @RSA_get0_e(%struct.rsa_st* nocapture noundef readonly %r) local_unnamed_addr #1 {
entry:
  %e = getelementptr inbounds %struct.rsa_st, %struct.rsa_st* %r, i64 0, i32 6
  %0 = load %struct.bignum_st*, %struct.bignum_st** %e, align 8, !tbaa !24
  ret %struct.bignum_st* %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define %struct.bignum_st* @RSA_get0_d(%struct.rsa_st* nocapture noundef readonly %r) local_unnamed_addr #1 {
entry:
  %d = getelementptr inbounds %struct.rsa_st, %struct.rsa_st* %r, i64 0, i32 7
  %0 = load %struct.bignum_st*, %struct.bignum_st** %d, align 8, !tbaa !25
  ret %struct.bignum_st* %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define %struct.bignum_st* @RSA_get0_p(%struct.rsa_st* nocapture noundef readonly %r) local_unnamed_addr #1 {
entry:
  %p = getelementptr inbounds %struct.rsa_st, %struct.rsa_st* %r, i64 0, i32 8
  %0 = load %struct.bignum_st*, %struct.bignum_st** %p, align 8, !tbaa !26
  ret %struct.bignum_st* %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define %struct.bignum_st* @RSA_get0_q(%struct.rsa_st* nocapture noundef readonly %r) local_unnamed_addr #1 {
entry:
  %q = getelementptr inbounds %struct.rsa_st, %struct.rsa_st* %r, i64 0, i32 9
  %0 = load %struct.bignum_st*, %struct.bignum_st** %q, align 8, !tbaa !27
  ret %struct.bignum_st* %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define %struct.bignum_st* @RSA_get0_dmp1(%struct.rsa_st* nocapture noundef readonly %r) local_unnamed_addr #1 {
entry:
  %dmp1 = getelementptr inbounds %struct.rsa_st, %struct.rsa_st* %r, i64 0, i32 10
  %0 = load %struct.bignum_st*, %struct.bignum_st** %dmp1, align 8, !tbaa !28
  ret %struct.bignum_st* %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define %struct.bignum_st* @RSA_get0_dmq1(%struct.rsa_st* nocapture noundef readonly %r) local_unnamed_addr #1 {
entry:
  %dmq1 = getelementptr inbounds %struct.rsa_st, %struct.rsa_st* %r, i64 0, i32 11
  %0 = load %struct.bignum_st*, %struct.bignum_st** %dmq1, align 8, !tbaa !29
  ret %struct.bignum_st* %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define %struct.bignum_st* @RSA_get0_iqmp(%struct.rsa_st* nocapture noundef readonly %r) local_unnamed_addr #1 {
entry:
  %iqmp = getelementptr inbounds %struct.rsa_st, %struct.rsa_st* %r, i64 0, i32 12
  %0 = load %struct.bignum_st*, %struct.bignum_st** %iqmp, align 8, !tbaa !30
  ret %struct.bignum_st* %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define %struct.rsa_pss_params_st* @RSA_get0_pss_params(%struct.rsa_st* nocapture noundef readonly %r) local_unnamed_addr #1 {
entry:
  %pss = getelementptr inbounds %struct.rsa_st, %struct.rsa_st* %r, i64 0, i32 14
  %0 = load %struct.rsa_pss_params_st*, %struct.rsa_pss_params_st** %pss, align 8, !tbaa !31
  ret %struct.rsa_pss_params_st* %0
}

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_rsa_set0_pss_params(%struct.rsa_st* nocapture noundef %r, %struct.rsa_pss_params_st* noundef %pss) local_unnamed_addr #0 {
entry:
  %pss1 = getelementptr inbounds %struct.rsa_st, %struct.rsa_st* %r, i64 0, i32 14
  %0 = load %struct.rsa_pss_params_st*, %struct.rsa_pss_params_st** %pss1, align 8, !tbaa !31
  tail call void @RSA_PSS_PARAMS_free(%struct.rsa_pss_params_st* noundef %0) #12
  store %struct.rsa_pss_params_st* %pss, %struct.rsa_pss_params_st** %pss1, align 8, !tbaa !31
  ret i32 1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define nonnull %struct.rsa_pss_params_30_st* @ossl_rsa_get0_pss_params_30(%struct.rsa_st* noundef readnone %r) local_unnamed_addr #8 {
entry:
  %pss_params = getelementptr inbounds %struct.rsa_st, %struct.rsa_st* %r, i64 0, i32 13
  ret %struct.rsa_pss_params_30_st* %pss_params
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define void @RSA_clear_flags(%struct.rsa_st* nocapture noundef %r, i32 noundef %flags) local_unnamed_addr #9 {
entry:
  %neg = xor i32 %flags, -1
  %flags1 = getelementptr inbounds %struct.rsa_st, %struct.rsa_st* %r, i64 0, i32 18
  %0 = load i32, i32* %flags1, align 4, !tbaa !18
  %and = and i32 %0, %neg
  store i32 %and, i32* %flags1, align 4, !tbaa !18
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define i32 @RSA_test_flags(%struct.rsa_st* nocapture noundef readonly %r, i32 noundef %flags) local_unnamed_addr #1 {
entry:
  %flags1 = getelementptr inbounds %struct.rsa_st, %struct.rsa_st* %r, i64 0, i32 18
  %0 = load i32, i32* %flags1, align 4, !tbaa !18
  %and = and i32 %0, %flags
  ret i32 %and
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define void @RSA_set_flags(%struct.rsa_st* nocapture noundef %r, i32 noundef %flags) local_unnamed_addr #9 {
entry:
  %flags1 = getelementptr inbounds %struct.rsa_st, %struct.rsa_st* %r, i64 0, i32 18
  %0 = load i32, i32* %flags1, align 4, !tbaa !18
  %or = or i32 %0, %flags
  store i32 %or, i32* %flags1, align 4, !tbaa !18
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define i32 @RSA_get_version(%struct.rsa_st* nocapture noundef readonly %r) local_unnamed_addr #1 {
entry:
  %version = getelementptr inbounds %struct.rsa_st, %struct.rsa_st* %r, i64 0, i32 2
  %0 = load i32, i32* %version, align 8, !tbaa !40
  ret i32 %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define %struct.engine_st* @RSA_get0_engine(%struct.rsa_st* nocapture noundef readonly %r) local_unnamed_addr #1 {
entry:
  %engine = getelementptr inbounds %struct.rsa_st, %struct.rsa_st* %r, i64 0, i32 4
  %0 = load %struct.engine_st*, %struct.engine_st** %engine, align 8, !tbaa !19
  ret %struct.engine_st* %0
}

; Function Attrs: noinline nounwind uwtable
define i32 @RSA_pkey_ctx_ctrl(%struct.evp_pkey_ctx_st* noundef %ctx, i32 noundef %optype, i32 noundef %cmd, i32 noundef %p1, i8* noundef %p2) local_unnamed_addr #0 {
entry:
  %cmp.not = icmp eq %struct.evp_pkey_ctx_st* %ctx, null
  br i1 %cmp.not, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %pmeth = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %ctx, i64 0, i32 12
  %0 = load %struct.evp_pkey_method_st*, %struct.evp_pkey_method_st** %pmeth, align 8, !tbaa !50
  %cmp1.not = icmp eq %struct.evp_pkey_method_st* %0, null
  br i1 %cmp1.not, label %if.end, label %land.lhs.true2

land.lhs.true2:                                   ; preds = %land.lhs.true
  %pkey_id = getelementptr inbounds %struct.evp_pkey_method_st, %struct.evp_pkey_method_st* %0, i64 0, i32 0
  %1 = load i32, i32* %pkey_id, align 8, !tbaa !54
  switch i32 %1, label %return [
    i32 6, label %if.end
    i32 912, label %if.end
  ]

if.end:                                           ; preds = %land.lhs.true2, %land.lhs.true2, %land.lhs.true, %entry
  %call = tail call i32 @EVP_PKEY_CTX_ctrl(%struct.evp_pkey_ctx_st* noundef %ctx, i32 noundef -1, i32 noundef %optype, i32 noundef %cmd, i32 noundef %p1, i8* noundef %p2) #12
  br label %return

return:                                           ; preds = %land.lhs.true2, %if.end
  %retval.0 = phi i32 [ %call, %if.end ], [ -1, %land.lhs.true2 ]
  ret i32 %retval.0
}

declare i32 @EVP_PKEY_CTX_ctrl(%struct.evp_pkey_ctx_st* noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i8* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_rsa_set0_all_params(%struct.rsa_st* noundef %r, %struct.stack_st_BIGNUM* noundef %primes, %struct.stack_st_BIGNUM* noundef %exps, %struct.stack_st_BIGNUM* noundef %coeffs) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.stack_st_BIGNUM* %primes, null
  %cmp1 = icmp eq %struct.stack_st_BIGNUM* %exps, null
  %or.cond = or i1 %cmp, %cmp1
  %cmp3 = icmp eq %struct.stack_st_BIGNUM* %coeffs, null
  %or.cond72 = or i1 %or.cond, %cmp3
  br i1 %or.cond72, label %cleanup68, label %if.end

if.end:                                           ; preds = %entry
  %call = tail call fastcc i32 @sk_BIGNUM_num(%struct.stack_st_BIGNUM* noundef nonnull %primes) #11
  %cmp4 = icmp slt i32 %call, 2
  br i1 %cmp4, label %cleanup68, label %lor.lhs.false5

lor.lhs.false5:                                   ; preds = %if.end
  %call6 = tail call fastcc i32 @sk_BIGNUM_num(%struct.stack_st_BIGNUM* noundef nonnull %exps) #11
  %cmp7.not = icmp eq i32 %call, %call6
  br i1 %cmp7.not, label %lor.lhs.false8, label %cleanup68

lor.lhs.false8:                                   ; preds = %lor.lhs.false5
  %call9 = tail call fastcc i32 @sk_BIGNUM_num(%struct.stack_st_BIGNUM* noundef nonnull %coeffs) #11
  %add = add nsw i32 %call9, 1
  %cmp10.not = icmp eq i32 %call, %add
  br i1 %cmp10.not, label %if.end12, label %cleanup68

if.end12:                                         ; preds = %lor.lhs.false8
  %call13 = tail call fastcc %struct.bignum_st* @sk_BIGNUM_value(%struct.stack_st_BIGNUM* noundef nonnull %primes, i32 noundef 0) #11
  %call14 = tail call fastcc %struct.bignum_st* @sk_BIGNUM_value(%struct.stack_st_BIGNUM* noundef nonnull %primes, i32 noundef 1) #11
  %call15 = tail call i32 @RSA_set0_factors(%struct.rsa_st* noundef %r, %struct.bignum_st* noundef %call13, %struct.bignum_st* noundef %call14) #11
  %tobool.not = icmp eq i32 %call15, 0
  br i1 %tobool.not, label %cleanup68, label %lor.lhs.false16

lor.lhs.false16:                                  ; preds = %if.end12
  %call17 = tail call fastcc %struct.bignum_st* @sk_BIGNUM_value(%struct.stack_st_BIGNUM* noundef nonnull %exps, i32 noundef 0) #11
  %call18 = tail call fastcc %struct.bignum_st* @sk_BIGNUM_value(%struct.stack_st_BIGNUM* noundef nonnull %exps, i32 noundef 1) #11
  %call19 = tail call fastcc %struct.bignum_st* @sk_BIGNUM_value(%struct.stack_st_BIGNUM* noundef nonnull %coeffs, i32 noundef 0) #11
  %call20 = tail call i32 @RSA_set0_crt_params(%struct.rsa_st* noundef %r, %struct.bignum_st* noundef %call17, %struct.bignum_st* noundef %call18, %struct.bignum_st* noundef %call19) #11
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %cleanup68, label %if.end23

if.end23:                                         ; preds = %lor.lhs.false16
  %prime_infos24 = getelementptr inbounds %struct.rsa_st, %struct.rsa_st* %r, i64 0, i32 15
  %0 = load %struct.stack_st_RSA_PRIME_INFO*, %struct.stack_st_RSA_PRIME_INFO** %prime_infos24, align 8, !tbaa !32
  %cmp25 = icmp ugt i32 %call, 2
  br i1 %cmp25, label %if.then26, label %if.end62

if.then26:                                        ; preds = %if.end23
  %call27 = tail call fastcc %struct.stack_st_RSA_PRIME_INFO* @sk_RSA_PRIME_INFO_new_reserve(i32 noundef %call) #11
  %cmp28 = icmp eq %struct.stack_st_RSA_PRIME_INFO* %call27, null
  br i1 %cmp28, label %cleanup68, label %for.body

for.body:                                         ; preds = %if.then26, %for.inc
  %i.0132 = phi i32 [ %inc, %for.inc ], [ 2, %if.then26 ]
  %call32 = tail call fastcc %struct.bignum_st* @sk_BIGNUM_value(%struct.stack_st_BIGNUM* noundef %primes, i32 noundef %i.0132) #11
  %call33 = tail call fastcc %struct.bignum_st* @sk_BIGNUM_value(%struct.stack_st_BIGNUM* noundef %exps, i32 noundef %i.0132) #11
  %sub = add nsw i32 %i.0132, -1
  %call34 = tail call fastcc %struct.bignum_st* @sk_BIGNUM_value(%struct.stack_st_BIGNUM* noundef %coeffs, i32 noundef %sub) #11
  %cmp35 = icmp ne %struct.bignum_st* %call32, null
  %cmp36 = icmp ne %struct.bignum_st* %call33, null
  %or.cond73 = select i1 %cmp35, i1 %cmp36, i1 false
  %cmp37 = icmp ne %struct.bignum_st* %call34, null
  %spec.select = select i1 %or.cond73, i1 %cmp37, i1 false
  br i1 %spec.select, label %if.end40, label %err

if.end40:                                         ; preds = %for.body
  %call41 = tail call i8* @CRYPTO_zalloc(i64 noundef 40, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 790) #12
  %cmp42 = icmp eq i8* %call41, null
  br i1 %cmp42, label %if.then43, label %for.inc

if.then43:                                        ; preds = %if.end40
  tail call void @ERR_new() #12
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 791, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.ossl_rsa_set0_all_params, i64 0, i64 0)) #12
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 4, i32 noundef 786688, i8* noundef null) #12
  br label %err

for.inc:                                          ; preds = %if.end40
  %1 = bitcast i8* %call41 to %struct.rsa_prime_info_st*
  %r45 = bitcast i8* %call41 to %struct.bignum_st**
  store %struct.bignum_st* %call32, %struct.bignum_st** %r45, align 8, !tbaa !43
  %d = getelementptr inbounds i8, i8* %call41, i64 8
  %2 = bitcast i8* %d to %struct.bignum_st**
  store %struct.bignum_st* %call33, %struct.bignum_st** %2, align 8, !tbaa !45
  %t = getelementptr inbounds i8, i8* %call41, i64 16
  %3 = bitcast i8* %t to %struct.bignum_st**
  store %struct.bignum_st* %call34, %struct.bignum_st** %3, align 8, !tbaa !46
  tail call void @BN_set_flags(%struct.bignum_st* noundef nonnull %call32, i32 noundef 4) #12
  %4 = load %struct.bignum_st*, %struct.bignum_st** %2, align 8, !tbaa !45
  tail call void @BN_set_flags(%struct.bignum_st* noundef %4, i32 noundef 4) #12
  %5 = load %struct.bignum_st*, %struct.bignum_st** %3, align 8, !tbaa !46
  tail call void @BN_set_flags(%struct.bignum_st* noundef %5, i32 noundef 4) #12
  tail call fastcc void @sk_RSA_PRIME_INFO_push(%struct.stack_st_RSA_PRIME_INFO* noundef nonnull %call27, %struct.rsa_prime_info_st* noundef nonnull %1) #11
  %inc = add nuw nsw i32 %i.0132, 1
  %exitcond.not = icmp eq i32 %inc, %call
  br i1 %exitcond.not, label %for.end, label %for.body, !llvm.loop !56

for.end:                                          ; preds = %for.inc
  store %struct.stack_st_RSA_PRIME_INFO* %call27, %struct.stack_st_RSA_PRIME_INFO** %prime_infos24, align 8, !tbaa !32
  %call54 = tail call i32 @ossl_rsa_multip_calc_product(%struct.rsa_st* noundef %r) #12
  %tobool55.not = icmp eq i32 %call54, 0
  br i1 %tobool55.not, label %if.then56, label %if.end62

if.then56:                                        ; preds = %for.end
  store %struct.stack_st_RSA_PRIME_INFO* %0, %struct.stack_st_RSA_PRIME_INFO** %prime_infos24, align 8, !tbaa !32
  br label %err

if.end62:                                         ; preds = %for.end, %if.end23
  %cmp63.not = icmp eq %struct.stack_st_RSA_PRIME_INFO* %0, null
  br i1 %cmp63.not, label %if.end65, label %if.then64

if.then64:                                        ; preds = %if.end62
  tail call fastcc void @sk_RSA_PRIME_INFO_pop_free(%struct.stack_st_RSA_PRIME_INFO* noundef nonnull %0, void (%struct.rsa_prime_info_st*)* noundef nonnull @ossl_rsa_multip_info_free) #11
  br label %if.end65

if.end65:                                         ; preds = %if.then64, %if.end62
  %cond = zext i1 %cmp25 to i32
  %version = getelementptr inbounds %struct.rsa_st, %struct.rsa_st* %r, i64 0, i32 2
  store i32 %cond, i32* %version, align 8, !tbaa !40
  %dirty_cnt = getelementptr inbounds %struct.rsa_st, %struct.rsa_st* %r, i64 0, i32 25
  %6 = load i32, i32* %dirty_cnt, align 8, !tbaa !41
  %inc67 = add nsw i32 %6, 1
  store i32 %inc67, i32* %dirty_cnt, align 8, !tbaa !41
  br label %cleanup68

err:                                              ; preds = %for.body, %if.then43, %if.then56
  tail call fastcc void @sk_RSA_PRIME_INFO_pop_free(%struct.stack_st_RSA_PRIME_INFO* noundef nonnull %call27, void (%struct.rsa_prime_info_st*)* noundef nonnull @ossl_rsa_multip_info_free_ex) #11
  br label %cleanup68

cleanup68:                                        ; preds = %if.then26, %if.end12, %lor.lhs.false16, %if.end, %lor.lhs.false5, %lor.lhs.false8, %entry, %err, %if.end65
  %retval.1 = phi i32 [ 0, %err ], [ 1, %if.end65 ], [ 0, %entry ], [ 0, %lor.lhs.false8 ], [ 0, %lor.lhs.false5 ], [ 0, %if.end ], [ 0, %lor.lhs.false16 ], [ 0, %if.end12 ], [ 0, %if.then26 ]
  ret i32 %retval.1
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @sk_BIGNUM_num(%struct.stack_st_BIGNUM* noundef %sk) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.stack_st_BIGNUM* %sk to %struct.stack_st*
  %call = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %0) #12
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.bignum_st* @sk_BIGNUM_value(%struct.stack_st_BIGNUM* noundef %sk, i32 noundef %idx) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.stack_st_BIGNUM* %sk to %struct.stack_st*
  %call = tail call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %0, i32 noundef %idx) #12
  %1 = bitcast i8* %call to %struct.bignum_st*
  ret %struct.bignum_st* %1
}

declare i8* @CRYPTO_zalloc(i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #3

declare void @ERR_new() local_unnamed_addr #3

declare void @ERR_set_debug(i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #3

declare void @ERR_set_error(i32 noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_rsa_get0_all_params(%struct.rsa_st* noundef readonly %r, %struct.stack_st_BIGNUM_const* noundef %primes, %struct.stack_st_BIGNUM_const* noundef %exps, %struct.stack_st_BIGNUM_const* noundef %coeffs) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.rsa_st* %r, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call = tail call %struct.bignum_st* @RSA_get0_p(%struct.rsa_st* noundef nonnull %r) #11
  %cmp1 = icmp eq %struct.bignum_st* %call, null
  br i1 %cmp1, label %cleanup, label %if.end3

if.end3:                                          ; preds = %if.end
  tail call fastcc void @sk_BIGNUM_const_push(%struct.stack_st_BIGNUM_const* noundef %primes, %struct.bignum_st* noundef nonnull %call) #11
  %call6 = tail call %struct.bignum_st* @RSA_get0_q(%struct.rsa_st* noundef nonnull %r) #11
  tail call fastcc void @sk_BIGNUM_const_push(%struct.stack_st_BIGNUM_const* noundef %primes, %struct.bignum_st* noundef %call6) #11
  %call8 = tail call %struct.bignum_st* @RSA_get0_dmp1(%struct.rsa_st* noundef nonnull %r) #11
  tail call fastcc void @sk_BIGNUM_const_push(%struct.stack_st_BIGNUM_const* noundef %exps, %struct.bignum_st* noundef %call8) #11
  %call10 = tail call %struct.bignum_st* @RSA_get0_dmq1(%struct.rsa_st* noundef nonnull %r) #11
  tail call fastcc void @sk_BIGNUM_const_push(%struct.stack_st_BIGNUM_const* noundef %exps, %struct.bignum_st* noundef %call10) #11
  %call12 = tail call %struct.bignum_st* @RSA_get0_iqmp(%struct.rsa_st* noundef nonnull %r) #11
  tail call fastcc void @sk_BIGNUM_const_push(%struct.stack_st_BIGNUM_const* noundef %coeffs, %struct.bignum_st* noundef %call12) #11
  %call14 = tail call i32 @RSA_get_multi_prime_extra_count(%struct.rsa_st* noundef nonnull %r) #11
  %cmp1543 = icmp sgt i32 %call14, 0
  br i1 %cmp1543, label %for.body.lr.ph, label %cleanup

for.body.lr.ph:                                   ; preds = %if.end3
  %prime_infos = getelementptr inbounds %struct.rsa_st, %struct.rsa_st* %r, i64 0, i32 15
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %i.044 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body ]
  %0 = load %struct.stack_st_RSA_PRIME_INFO*, %struct.stack_st_RSA_PRIME_INFO** %prime_infos, align 8, !tbaa !32
  %call16 = tail call fastcc %struct.rsa_prime_info_st* @sk_RSA_PRIME_INFO_value(%struct.stack_st_RSA_PRIME_INFO* noundef %0, i32 noundef %i.044) #11
  %r17 = getelementptr inbounds %struct.rsa_prime_info_st, %struct.rsa_prime_info_st* %call16, i64 0, i32 0
  %1 = load %struct.bignum_st*, %struct.bignum_st** %r17, align 8, !tbaa !43
  tail call fastcc void @sk_BIGNUM_const_push(%struct.stack_st_BIGNUM_const* noundef %primes, %struct.bignum_st* noundef %1) #11
  %d = getelementptr inbounds %struct.rsa_prime_info_st, %struct.rsa_prime_info_st* %call16, i64 0, i32 1
  %2 = load %struct.bignum_st*, %struct.bignum_st** %d, align 8, !tbaa !45
  tail call fastcc void @sk_BIGNUM_const_push(%struct.stack_st_BIGNUM_const* noundef %exps, %struct.bignum_st* noundef %2) #11
  %t = getelementptr inbounds %struct.rsa_prime_info_st, %struct.rsa_prime_info_st* %call16, i64 0, i32 2
  %3 = load %struct.bignum_st*, %struct.bignum_st** %t, align 8, !tbaa !46
  tail call fastcc void @sk_BIGNUM_const_push(%struct.stack_st_BIGNUM_const* noundef %coeffs, %struct.bignum_st* noundef %3) #11
  %inc = add nuw nsw i32 %i.044, 1
  %exitcond.not = icmp eq i32 %inc, %call14
  br i1 %exitcond.not, label %cleanup, label %for.body, !llvm.loop !57

cleanup:                                          ; preds = %for.body, %if.end3, %if.end, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ 1, %if.end ], [ 1, %if.end3 ], [ 1, %for.body ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @sk_BIGNUM_const_push(%struct.stack_st_BIGNUM_const* noundef %sk, %struct.bignum_st* noundef %ptr) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.stack_st_BIGNUM_const* %sk to %struct.stack_st*
  %1 = bitcast %struct.bignum_st* %ptr to i8*
  %call = tail call i32 @OPENSSL_sk_push(%struct.stack_st* noundef %0, i8* noundef %1) #12
  ret void
}

; Function Attrs: noinline nounwind uwtable
define i32 @EVP_PKEY_CTX_set_rsa_padding(%struct.evp_pkey_ctx_st* noundef %ctx, i32 noundef %pad_mode) local_unnamed_addr #0 {
entry:
  %call = tail call i32 @RSA_pkey_ctx_ctrl(%struct.evp_pkey_ctx_st* noundef %ctx, i32 noundef -1, i32 noundef 4097, i32 noundef %pad_mode, i8* noundef null) #11
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define i32 @EVP_PKEY_CTX_get_rsa_padding(%struct.evp_pkey_ctx_st* noundef %ctx, i32* noundef %pad_mode) local_unnamed_addr #0 {
entry:
  %0 = bitcast i32* %pad_mode to i8*
  %call = tail call i32 @RSA_pkey_ctx_ctrl(%struct.evp_pkey_ctx_st* noundef %ctx, i32 noundef -1, i32 noundef 4102, i32 noundef 0, i8* noundef %0) #11
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define i32 @EVP_PKEY_CTX_set_rsa_pss_keygen_md(%struct.evp_pkey_ctx_st* noundef %ctx, %struct.evp_md_st* noundef %md) local_unnamed_addr #0 {
entry:
  %0 = bitcast %struct.evp_md_st* %md to i8*
  %call = tail call i32 @EVP_PKEY_CTX_ctrl(%struct.evp_pkey_ctx_st* noundef %ctx, i32 noundef 912, i32 noundef 4, i32 noundef 1, i32 noundef 0, i8* noundef %0) #12
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define i32 @EVP_PKEY_CTX_set_rsa_pss_keygen_md_name(%struct.evp_pkey_ctx_st* noundef %ctx, i8* noundef %mdname, i8* noundef %mdprops) local_unnamed_addr #0 {
entry:
  %call = tail call fastcc i32 @int_set_rsa_md_name(%struct.evp_pkey_ctx_st* noundef %ctx, i32 noundef 912, i32 noundef 4, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* noundef %mdname, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i8* noundef %mdprops) #11
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @int_set_rsa_md_name(%struct.evp_pkey_ctx_st* noundef %ctx, i32 noundef %keytype, i32 noundef %optype, i8* noundef %mdkey, i8* noundef %mdname, i8* noundef %propkey, i8* noundef %mdprops) unnamed_addr #0 {
entry:
  %params = alloca [3 x %struct.ossl_param_st], align 16
  %tmp18 = alloca %struct.ossl_param_st, align 8
  %tmp21 = alloca %struct.ossl_param_st, align 8
  %0 = bitcast [3 x %struct.ossl_param_st]* %params to i8*
  call void @llvm.lifetime.start.p0i8(i64 120, i8* nonnull %0) #13
  %arraydecay = getelementptr inbounds [3 x %struct.ossl_param_st], [3 x %struct.ossl_param_st]* %params, i64 0, i64 0
  %cmp = icmp eq %struct.evp_pkey_ctx_st* %ctx, null
  %cmp1 = icmp eq i8* %mdname, null
  %or.cond = or i1 %cmp, %cmp1
  br i1 %or.cond, label %if.then, label %lor.lhs.false2

lor.lhs.false2:                                   ; preds = %entry
  %operation = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %ctx, i64 0, i32 0
  %1 = load i32, i32* %operation, align 8, !tbaa !58
  %and = and i32 %1, %optype
  %cmp3 = icmp eq i32 %and, 0
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false2, %entry
  tail call void @ERR_new() #12
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 888, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.int_set_rsa_md_name, i64 0, i64 0)) #12
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 6, i32 noundef 147, i8* noundef null) #12
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false2
  %cond = icmp eq i32 %keytype, -1
  br i1 %cond, label %sw.bb, label %sw.default

sw.bb:                                            ; preds = %if.end
  %call = tail call i32 @EVP_PKEY_CTX_is_a(%struct.evp_pkey_ctx_st* noundef nonnull %ctx, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0)) #12
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %sw.epilog

land.lhs.true:                                    ; preds = %sw.bb
  %call4 = tail call i32 @EVP_PKEY_CTX_is_a(%struct.evp_pkey_ctx_st* noundef nonnull %ctx, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0)) #12
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %cleanup, label %sw.epilog

sw.default:                                       ; preds = %if.end
  %call8 = tail call i8* @evp_pkey_type2name(i32 noundef %keytype) #12
  %call9 = tail call i32 @EVP_PKEY_CTX_is_a(%struct.evp_pkey_ctx_st* noundef nonnull %ctx, i8* noundef %call8) #12
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %cleanup, label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb, %land.lhs.true
  %incdec.ptr = getelementptr inbounds [3 x %struct.ossl_param_st], [3 x %struct.ossl_param_st]* %params, i64 0, i64 1
  %params38 = getelementptr inbounds [3 x %struct.ossl_param_st], [3 x %struct.ossl_param_st]* %params, i64 0, i64 0
  call void @OSSL_PARAM_construct_utf8_string(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %params38, i8* noundef %mdkey, i8* noundef nonnull %mdname, i64 noundef 0) #12
  %keymgmt = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %ctx, i64 0, i32 4
  %2 = load %struct.evp_keymgmt_st*, %struct.evp_keymgmt_st** %keymgmt, align 8, !tbaa !59
  %cmp13 = icmp ne %struct.evp_keymgmt_st* %2, null
  %cmp15 = icmp ne i8* %mdprops, null
  %or.cond25 = and i1 %cmp15, %cmp13
  br i1 %or.cond25, label %if.then16, label %if.end19

if.then16:                                        ; preds = %sw.epilog
  %incdec.ptr17 = getelementptr inbounds [3 x %struct.ossl_param_st], [3 x %struct.ossl_param_st]* %params, i64 0, i64 2
  %3 = bitcast %struct.ossl_param_st* %tmp18 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %3) #13
  call void @OSSL_PARAM_construct_utf8_string(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %tmp18, i8* noundef %propkey, i8* noundef nonnull %mdprops, i64 noundef 0) #12
  %4 = bitcast %struct.ossl_param_st* %incdec.ptr to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(40) %4, i8* noundef nonnull align 8 dereferenceable(40) %3, i64 40, i1 false), !tbaa.struct !60
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %3) #13
  br label %if.end19

if.end19:                                         ; preds = %if.then16, %sw.epilog
  %p.0 = phi %struct.ossl_param_st* [ %incdec.ptr17, %if.then16 ], [ %incdec.ptr, %sw.epilog ]
  %5 = bitcast %struct.ossl_param_st* %tmp21 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %5) #13
  call void @OSSL_PARAM_construct_end(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %tmp21) #12
  %6 = bitcast %struct.ossl_param_st* %p.0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(40) %6, i8* noundef nonnull align 8 dereferenceable(40) %5, i64 40, i1 false), !tbaa.struct !60
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %5) #13
  %call23 = call i32 @evp_pkey_ctx_set_params_strict(%struct.evp_pkey_ctx_st* noundef nonnull %ctx, %struct.ossl_param_st* noundef nonnull %arraydecay) #12
  br label %cleanup

cleanup:                                          ; preds = %sw.default, %land.lhs.true, %if.end19, %if.then
  %retval.0 = phi i32 [ -2, %if.then ], [ %call23, %if.end19 ], [ -1, %land.lhs.true ], [ -1, %sw.default ]
  call void @llvm.lifetime.end.p0i8(i64 120, i8* nonnull %0) #13
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @EVP_PKEY_CTX_set_rsa_oaep_md(%struct.evp_pkey_ctx_st* noundef %ctx, %struct.evp_md_st* noundef %md) local_unnamed_addr #0 {
entry:
  %0 = bitcast %struct.evp_md_st* %md to i8*
  %call = tail call i32 @EVP_PKEY_CTX_ctrl(%struct.evp_pkey_ctx_st* noundef %ctx, i32 noundef 6, i32 noundef 1536, i32 noundef 4105, i32 noundef 0, i8* noundef %0) #12
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define i32 @EVP_PKEY_CTX_set_rsa_oaep_md_name(%struct.evp_pkey_ctx_st* noundef %ctx, i8* noundef %mdname, i8* noundef %mdprops) local_unnamed_addr #0 {
entry:
  %call = tail call fastcc i32 @int_set_rsa_md_name(%struct.evp_pkey_ctx_st* noundef %ctx, i32 noundef 6, i32 noundef 1536, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* noundef %mdname, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i8* noundef %mdprops) #11
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define i32 @EVP_PKEY_CTX_get_rsa_oaep_md_name(%struct.evp_pkey_ctx_st* noundef %ctx, i8* noundef %name, i64 noundef %namesize) local_unnamed_addr #0 {
entry:
  %call = tail call fastcc i32 @int_get_rsa_md_name(%struct.evp_pkey_ctx_st* noundef %ctx, i32 noundef 6, i32 noundef 1536, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* noundef %name, i64 noundef %namesize) #11
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @int_get_rsa_md_name(%struct.evp_pkey_ctx_st* noundef %ctx, i32 noundef %keytype, i32 noundef %optype, i8* noundef %mdkey, i8* noundef %mdname, i64 noundef %mdnamesize) unnamed_addr #0 {
entry:
  %params = alloca [2 x %struct.ossl_param_st], align 16
  %tmp14 = alloca %struct.ossl_param_st, align 8
  %0 = bitcast [2 x %struct.ossl_param_st]* %params to i8*
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %0) #13
  %arraydecay = getelementptr inbounds [2 x %struct.ossl_param_st], [2 x %struct.ossl_param_st]* %params, i64 0, i64 0
  %cmp = icmp eq %struct.evp_pkey_ctx_st* %ctx, null
  %cmp1 = icmp eq i8* %mdname, null
  %or.cond = or i1 %cmp, %cmp1
  br i1 %or.cond, label %if.then, label %lor.lhs.false2

lor.lhs.false2:                                   ; preds = %entry
  %operation = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %ctx, i64 0, i32 0
  %1 = load i32, i32* %operation, align 8, !tbaa !58
  %and = and i32 %1, %optype
  %cmp3 = icmp eq i32 %and, 0
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false2, %entry
  tail call void @ERR_new() #12
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 928, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.int_get_rsa_md_name, i64 0, i64 0)) #12
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 6, i32 noundef 147, i8* noundef null) #12
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false2
  %cond = icmp eq i32 %keytype, -1
  br i1 %cond, label %sw.bb, label %sw.default

sw.bb:                                            ; preds = %if.end
  %call = tail call i32 @EVP_PKEY_CTX_is_a(%struct.evp_pkey_ctx_st* noundef nonnull %ctx, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0)) #12
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %sw.epilog

land.lhs.true:                                    ; preds = %sw.bb
  %call4 = tail call i32 @EVP_PKEY_CTX_is_a(%struct.evp_pkey_ctx_st* noundef nonnull %ctx, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0)) #12
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %cleanup, label %sw.epilog

sw.default:                                       ; preds = %if.end
  %call8 = tail call i8* @evp_pkey_type2name(i32 noundef %keytype) #12
  %call9 = tail call i32 @EVP_PKEY_CTX_is_a(%struct.evp_pkey_ctx_st* noundef nonnull %ctx, i8* noundef %call8) #12
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %cleanup, label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb, %land.lhs.true
  %incdec.ptr = getelementptr inbounds [2 x %struct.ossl_param_st], [2 x %struct.ossl_param_st]* %params, i64 0, i64 1
  %params27 = getelementptr inbounds [2 x %struct.ossl_param_st], [2 x %struct.ossl_param_st]* %params, i64 0, i64 0
  call void @OSSL_PARAM_construct_utf8_string(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %params27, i8* noundef %mdkey, i8* noundef nonnull %mdname, i64 noundef %mdnamesize) #12
  %2 = bitcast %struct.ossl_param_st* %tmp14 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %2) #13
  call void @OSSL_PARAM_construct_end(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %tmp14) #12
  %3 = bitcast %struct.ossl_param_st* %incdec.ptr to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(40) %3, i8* noundef nonnull align 8 dereferenceable(40) %2, i64 40, i1 false), !tbaa.struct !60
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %2) #13
  %call16 = call i32 @evp_pkey_ctx_get_params_strict(%struct.evp_pkey_ctx_st* noundef nonnull %ctx, %struct.ossl_param_st* noundef nonnull %arraydecay) #12
  br label %cleanup

cleanup:                                          ; preds = %sw.default, %land.lhs.true, %sw.epilog, %if.then
  %retval.0 = phi i32 [ -2, %if.then ], [ %call16, %sw.epilog ], [ -1, %land.lhs.true ], [ -1, %sw.default ]
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %0) #13
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @EVP_PKEY_CTX_get_rsa_oaep_md(%struct.evp_pkey_ctx_st* noundef %ctx, %struct.evp_md_st** noundef %md) local_unnamed_addr #0 {
entry:
  %0 = bitcast %struct.evp_md_st** %md to i8*
  %call = tail call i32 @EVP_PKEY_CTX_ctrl(%struct.evp_pkey_ctx_st* noundef %ctx, i32 noundef 6, i32 noundef 1536, i32 noundef 4107, i32 noundef 0, i8* noundef %0) #12
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define i32 @EVP_PKEY_CTX_set_rsa_mgf1_md(%struct.evp_pkey_ctx_st* noundef %ctx, %struct.evp_md_st* noundef %md) local_unnamed_addr #0 {
entry:
  %0 = bitcast %struct.evp_md_st* %md to i8*
  %call = tail call i32 @RSA_pkey_ctx_ctrl(%struct.evp_pkey_ctx_st* noundef %ctx, i32 noundef 2032, i32 noundef 4101, i32 noundef 0, i8* noundef %0) #11
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define i32 @EVP_PKEY_CTX_set_rsa_mgf1_md_name(%struct.evp_pkey_ctx_st* noundef %ctx, i8* noundef %mdname, i8* noundef %mdprops) local_unnamed_addr #0 {
entry:
  %call = tail call fastcc i32 @int_set_rsa_md_name(%struct.evp_pkey_ctx_st* noundef %ctx, i32 noundef -1, i32 noundef 2032, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i8* noundef %mdname, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i8* noundef %mdprops) #11
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define i32 @EVP_PKEY_CTX_get_rsa_mgf1_md_name(%struct.evp_pkey_ctx_st* noundef %ctx, i8* noundef %name, i64 noundef %namesize) local_unnamed_addr #0 {
entry:
  %call = tail call fastcc i32 @int_get_rsa_md_name(%struct.evp_pkey_ctx_st* noundef %ctx, i32 noundef -1, i32 noundef 2032, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i8* noundef %name, i64 noundef %namesize) #11
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define i32 @EVP_PKEY_CTX_set_rsa_pss_keygen_mgf1_md(%struct.evp_pkey_ctx_st* noundef %ctx, %struct.evp_md_st* noundef %md) local_unnamed_addr #0 {
entry:
  %0 = bitcast %struct.evp_md_st* %md to i8*
  %call = tail call i32 @EVP_PKEY_CTX_ctrl(%struct.evp_pkey_ctx_st* noundef %ctx, i32 noundef 912, i32 noundef 4, i32 noundef 4101, i32 noundef 0, i8* noundef %0) #12
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define i32 @EVP_PKEY_CTX_set_rsa_pss_keygen_mgf1_md_name(%struct.evp_pkey_ctx_st* noundef %ctx, i8* noundef %mdname) local_unnamed_addr #0 {
entry:
  %call = tail call fastcc i32 @int_set_rsa_md_name(%struct.evp_pkey_ctx_st* noundef %ctx, i32 noundef 912, i32 noundef 4, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i8* noundef %mdname, i8* noundef null, i8* noundef null) #11
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define i32 @EVP_PKEY_CTX_get_rsa_mgf1_md(%struct.evp_pkey_ctx_st* noundef %ctx, %struct.evp_md_st** noundef %md) local_unnamed_addr #0 {
entry:
  %0 = bitcast %struct.evp_md_st** %md to i8*
  %call = tail call i32 @RSA_pkey_ctx_ctrl(%struct.evp_pkey_ctx_st* noundef %ctx, i32 noundef 2032, i32 noundef 4104, i32 noundef 0, i8* noundef %0) #11
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define i32 @EVP_PKEY_CTX_set0_rsa_oaep_label(%struct.evp_pkey_ctx_st* noundef %ctx, i8* noundef %label, i32 noundef %llen) local_unnamed_addr #0 {
entry:
  %rsa_params = alloca [2 x %struct.ossl_param_st], align 16
  %tmp8 = alloca %struct.ossl_param_st, align 8
  %0 = bitcast [2 x %struct.ossl_param_st]* %rsa_params to i8*
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %0) #13
  %arraydecay = getelementptr inbounds [2 x %struct.ossl_param_st], [2 x %struct.ossl_param_st]* %rsa_params, i64 0, i64 0
  %cmp = icmp eq %struct.evp_pkey_ctx_st* %ctx, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %operation = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %ctx, i64 0, i32 0
  %1 = load i32, i32* %operation, align 8, !tbaa !58
  switch i32 %1, label %if.then [
    i32 512, label %if.end
    i32 1024, label %if.end
  ]

if.then:                                          ; preds = %lor.lhs.false, %entry
  tail call void @ERR_new() #12
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 1089, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @__func__.EVP_PKEY_CTX_set0_rsa_oaep_label, i64 0, i64 0)) #12
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 6, i32 noundef 147, i8* noundef null) #12
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false, %lor.lhs.false
  %call = tail call i32 @EVP_PKEY_CTX_is_a(%struct.evp_pkey_ctx_st* noundef nonnull %ctx, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0)) #12
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %cleanup, label %if.end6

if.end6:                                          ; preds = %if.end
  %incdec.ptr = getelementptr inbounds [2 x %struct.ossl_param_st], [2 x %struct.ossl_param_st]* %rsa_params, i64 0, i64 1
  %conv = sext i32 %llen to i64
  %rsa_params22 = getelementptr inbounds [2 x %struct.ossl_param_st], [2 x %struct.ossl_param_st]* %rsa_params, i64 0, i64 0
  call void @OSSL_PARAM_construct_octet_string(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %rsa_params22, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0), i8* noundef %label, i64 noundef %conv) #12
  %2 = bitcast %struct.ossl_param_st* %tmp8 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %2) #13
  call void @OSSL_PARAM_construct_end(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %tmp8) #12
  %3 = bitcast %struct.ossl_param_st* %incdec.ptr to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(40) %3, i8* noundef nonnull align 8 dereferenceable(40) %2, i64 40, i1 false), !tbaa.struct !60
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %2) #13
  %call10 = call i32 @evp_pkey_ctx_set_params_strict(%struct.evp_pkey_ctx_st* noundef nonnull %ctx, %struct.ossl_param_st* noundef nonnull %arraydecay) #12
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %cleanup, label %if.end13

if.end13:                                         ; preds = %if.end6
  call void @CRYPTO_free(i8* noundef %label, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 1107) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.end, %if.end13, %if.then
  %retval.0 = phi i32 [ -2, %if.then ], [ 1, %if.end13 ], [ -1, %if.end ], [ 0, %if.end6 ]
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %0) #13
  ret i32 %retval.0
}

declare i32 @EVP_PKEY_CTX_is_a(%struct.evp_pkey_ctx_st* noundef, i8* noundef) local_unnamed_addr #3

declare void @OSSL_PARAM_construct_octet_string(%struct.ossl_param_st* sret(%struct.ossl_param_st) align 8, i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #10

declare void @OSSL_PARAM_construct_end(%struct.ossl_param_st* sret(%struct.ossl_param_st) align 8) local_unnamed_addr #3

declare i32 @evp_pkey_ctx_set_params_strict(%struct.evp_pkey_ctx_st* noundef, %struct.ossl_param_st* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define i32 @EVP_PKEY_CTX_get0_rsa_oaep_label(%struct.evp_pkey_ctx_st* noundef %ctx, i8** noundef %label) local_unnamed_addr #0 {
entry:
  %rsa_params = alloca [2 x %struct.ossl_param_st], align 16
  %tmp8 = alloca %struct.ossl_param_st, align 8
  %0 = bitcast [2 x %struct.ossl_param_st]* %rsa_params to i8*
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %0) #13
  %arraydecay = getelementptr inbounds [2 x %struct.ossl_param_st], [2 x %struct.ossl_param_st]* %rsa_params, i64 0, i64 0
  %cmp = icmp eq %struct.evp_pkey_ctx_st* %ctx, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %operation = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %ctx, i64 0, i32 0
  %1 = load i32, i32* %operation, align 8, !tbaa !58
  switch i32 %1, label %if.then [
    i32 512, label %if.end
    i32 1024, label %if.end
  ]

if.then:                                          ; preds = %lor.lhs.false, %entry
  tail call void @ERR_new() #12
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 1117, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @__func__.EVP_PKEY_CTX_get0_rsa_oaep_label, i64 0, i64 0)) #12
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 6, i32 noundef 147, i8* noundef null) #12
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false, %lor.lhs.false
  %call = tail call i32 @EVP_PKEY_CTX_is_a(%struct.evp_pkey_ctx_st* noundef nonnull %ctx, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0)) #12
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %cleanup, label %if.end6

if.end6:                                          ; preds = %if.end
  %incdec.ptr = getelementptr inbounds [2 x %struct.ossl_param_st], [2 x %struct.ossl_param_st]* %rsa_params, i64 0, i64 1
  %rsa_params28 = getelementptr inbounds [2 x %struct.ossl_param_st], [2 x %struct.ossl_param_st]* %rsa_params, i64 0, i64 0
  call void @OSSL_PARAM_construct_octet_ptr(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %rsa_params28, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0), i8** noundef %label, i64 noundef 0) #12
  %2 = bitcast %struct.ossl_param_st* %tmp8 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %2) #13
  call void @OSSL_PARAM_construct_end(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %tmp8) #12
  %3 = bitcast %struct.ossl_param_st* %incdec.ptr to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(40) %3, i8* noundef nonnull align 8 dereferenceable(40) %2, i64 40, i1 false), !tbaa.struct !60
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %2) #13
  %call10 = call i32 @EVP_PKEY_CTX_get_params(%struct.evp_pkey_ctx_st* noundef nonnull %ctx, %struct.ossl_param_st* noundef nonnull %arraydecay) #12
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %cleanup, label %if.end13

if.end13:                                         ; preds = %if.end6
  %return_size = getelementptr inbounds [2 x %struct.ossl_param_st], [2 x %struct.ossl_param_st]* %rsa_params, i64 0, i64 0, i32 4
  %4 = load i64, i64* %return_size, align 16, !tbaa !62
  %cmp14 = icmp ugt i64 %4, 2147483647
  %conv = trunc i64 %4 to i32
  %spec.select = select i1 %cmp14, i32 -1, i32 %conv
  br label %cleanup

cleanup:                                          ; preds = %if.end13, %if.end6, %if.end, %if.then
  %retval.0 = phi i32 [ -2, %if.then ], [ -1, %if.end ], [ -1, %if.end6 ], [ %spec.select, %if.end13 ]
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %0) #13
  ret i32 %retval.0
}

declare void @OSSL_PARAM_construct_octet_ptr(%struct.ossl_param_st* sret(%struct.ossl_param_st) align 8, i8* noundef, i8** noundef, i64 noundef) local_unnamed_addr #3

declare i32 @EVP_PKEY_CTX_get_params(%struct.evp_pkey_ctx_st* noundef, %struct.ossl_param_st* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define i32 @EVP_PKEY_CTX_set_rsa_pss_saltlen(%struct.evp_pkey_ctx_st* noundef %ctx, i32 noundef %saltlen) local_unnamed_addr #0 {
entry:
  %call = tail call i32 @RSA_pkey_ctx_ctrl(%struct.evp_pkey_ctx_st* noundef %ctx, i32 noundef 496, i32 noundef 4098, i32 noundef %saltlen, i8* noundef null) #11
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define i32 @EVP_PKEY_CTX_get_rsa_pss_saltlen(%struct.evp_pkey_ctx_st* noundef %ctx, i32* noundef %saltlen) local_unnamed_addr #0 {
entry:
  %0 = bitcast i32* %saltlen to i8*
  %call = tail call i32 @RSA_pkey_ctx_ctrl(%struct.evp_pkey_ctx_st* noundef %ctx, i32 noundef 496, i32 noundef 4103, i32 noundef 0, i8* noundef %0) #11
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define i32 @EVP_PKEY_CTX_set_rsa_pss_keygen_saltlen(%struct.evp_pkey_ctx_st* noundef %ctx, i32 noundef %saltlen) local_unnamed_addr #0 {
entry:
  %saltlen.addr = alloca i32, align 4
  %pad_params = alloca [2 x %struct.ossl_param_st], align 16
  %tmp8 = alloca %struct.ossl_param_st, align 8
  store i32 %saltlen, i32* %saltlen.addr, align 4, !tbaa !22
  %0 = bitcast [2 x %struct.ossl_param_st]* %pad_params to i8*
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %0) #13
  %arraydecay = getelementptr inbounds [2 x %struct.ossl_param_st], [2 x %struct.ossl_param_st]* %pad_params, i64 0, i64 0
  %cmp = icmp eq %struct.evp_pkey_ctx_st* %ctx, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %operation = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %ctx, i64 0, i32 0
  %1 = load i32, i32* %operation, align 8, !tbaa !58
  switch i32 %1, label %if.then [
    i32 2, label %if.end
    i32 4, label %if.end
  ]

if.then:                                          ; preds = %lor.lhs.false, %entry
  tail call void @ERR_new() #12
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 1184, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @__func__.EVP_PKEY_CTX_set_rsa_pss_keygen_saltlen, i64 0, i64 0)) #12
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 6, i32 noundef 147, i8* noundef null) #12
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false, %lor.lhs.false
  %call = tail call i32 @EVP_PKEY_CTX_is_a(%struct.evp_pkey_ctx_st* noundef nonnull %ctx, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0)) #12
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %cleanup, label %if.end6

if.end6:                                          ; preds = %if.end
  %incdec.ptr = getelementptr inbounds [2 x %struct.ossl_param_st], [2 x %struct.ossl_param_st]* %pad_params, i64 0, i64 1
  %pad_params18 = getelementptr inbounds [2 x %struct.ossl_param_st], [2 x %struct.ossl_param_st]* %pad_params, i64 0, i64 0
  call void @OSSL_PARAM_construct_int(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %pad_params18, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0), i32* noundef nonnull %saltlen.addr) #12
  %2 = bitcast %struct.ossl_param_st* %tmp8 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %2) #13
  call void @OSSL_PARAM_construct_end(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %tmp8) #12
  %3 = bitcast %struct.ossl_param_st* %incdec.ptr to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(40) %3, i8* noundef nonnull align 8 dereferenceable(40) %2, i64 40, i1 false), !tbaa.struct !60
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %2) #13
  %call10 = call i32 @evp_pkey_ctx_set_params_strict(%struct.evp_pkey_ctx_st* noundef nonnull %ctx, %struct.ossl_param_st* noundef nonnull %arraydecay) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.end6, %if.then
  %retval.0 = phi i32 [ -2, %if.then ], [ %call10, %if.end6 ], [ -1, %if.end ]
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %0) #13
  ret i32 %retval.0
}

declare void @OSSL_PARAM_construct_int(%struct.ossl_param_st* sret(%struct.ossl_param_st) align 8, i8* noundef, i32* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define i32 @EVP_PKEY_CTX_set_rsa_keygen_bits(%struct.evp_pkey_ctx_st* noundef %ctx, i32 noundef %bits) local_unnamed_addr #0 {
entry:
  %params = alloca [2 x %struct.ossl_param_st], align 16
  %bits2 = alloca i64, align 8
  %tmp13 = alloca %struct.ossl_param_st, align 8
  %0 = bitcast [2 x %struct.ossl_param_st]* %params to i8*
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %0) #13
  %arraydecay = getelementptr inbounds [2 x %struct.ossl_param_st], [2 x %struct.ossl_param_st]* %params, i64 0, i64 0
  %1 = bitcast i64* %bits2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #13
  %conv = sext i32 %bits to i64
  store i64 %conv, i64* %bits2, align 8, !tbaa !61
  %cmp = icmp eq %struct.evp_pkey_ctx_st* %ctx, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %operation = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %ctx, i64 0, i32 0
  %2 = load i32, i32* %operation, align 8, !tbaa !58
  switch i32 %2, label %if.then [
    i32 2, label %if.end
    i32 4, label %if.end
  ]

if.then:                                          ; preds = %lor.lhs.false, %entry
  tail call void @ERR_new() #12
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 1205, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @__func__.EVP_PKEY_CTX_set_rsa_keygen_bits, i64 0, i64 0)) #12
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 6, i32 noundef 147, i8* noundef null) #12
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false, %lor.lhs.false
  %call = tail call i32 @EVP_PKEY_CTX_is_a(%struct.evp_pkey_ctx_st* noundef nonnull %ctx, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0)) #12
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %if.end11

land.lhs.true:                                    ; preds = %if.end
  %call8 = tail call i32 @EVP_PKEY_CTX_is_a(%struct.evp_pkey_ctx_st* noundef nonnull %ctx, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0)) #12
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %cleanup, label %if.end11

if.end11:                                         ; preds = %land.lhs.true, %if.end
  %incdec.ptr = getelementptr inbounds [2 x %struct.ossl_param_st], [2 x %struct.ossl_param_st]* %params, i64 0, i64 1
  %params25 = getelementptr inbounds [2 x %struct.ossl_param_st], [2 x %struct.ossl_param_st]* %params, i64 0, i64 0
  call void @OSSL_PARAM_construct_size_t(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %params25, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i64* noundef nonnull %bits2) #12
  %3 = bitcast %struct.ossl_param_st* %tmp13 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %3) #13
  call void @OSSL_PARAM_construct_end(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %tmp13) #12
  %4 = bitcast %struct.ossl_param_st* %incdec.ptr to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(40) %4, i8* noundef nonnull align 8 dereferenceable(40) %3, i64 40, i1 false), !tbaa.struct !60
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %3) #13
  %call15 = call i32 @evp_pkey_ctx_set_params_strict(%struct.evp_pkey_ctx_st* noundef nonnull %ctx, %struct.ossl_param_st* noundef nonnull %arraydecay) #12
  br label %cleanup

cleanup:                                          ; preds = %land.lhs.true, %if.end11, %if.then
  %retval.0 = phi i32 [ -2, %if.then ], [ %call15, %if.end11 ], [ -1, %land.lhs.true ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #13
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %0) #13
  ret i32 %retval.0
}

declare void @OSSL_PARAM_construct_size_t(%struct.ossl_param_st* sret(%struct.ossl_param_st) align 8, i8* noundef, i64* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define i32 @EVP_PKEY_CTX_set_rsa_keygen_pubexp(%struct.evp_pkey_ctx_st* noundef %ctx, %struct.bignum_st* noundef %pubexp) local_unnamed_addr #0 {
entry:
  %0 = bitcast %struct.bignum_st* %pubexp to i8*
  %call = tail call i32 @RSA_pkey_ctx_ctrl(%struct.evp_pkey_ctx_st* noundef %ctx, i32 noundef 4, i32 noundef 4100, i32 noundef 0, i8* noundef %0) #11
  %cmp = icmp sgt i32 %call, 0
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %keymgmt = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %ctx, i64 0, i32 4
  %1 = load %struct.evp_keymgmt_st*, %struct.evp_keymgmt_st** %keymgmt, align 8, !tbaa !59
  %cmp1 = icmp eq %struct.evp_keymgmt_st* %1, null
  br i1 %cmp1, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %rsa_pubexp = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %ctx, i64 0, i32 18
  %2 = load %struct.bignum_st*, %struct.bignum_st** %rsa_pubexp, align 8, !tbaa !64
  tail call void @BN_free(%struct.bignum_st* noundef %2) #12
  store %struct.bignum_st* %pubexp, %struct.bignum_st** %rsa_pubexp, align 8, !tbaa !64
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define i32 @EVP_PKEY_CTX_set1_rsa_keygen_pubexp(%struct.evp_pkey_ctx_st* noundef %ctx, %struct.bignum_st* noundef %pubexp) local_unnamed_addr #0 {
entry:
  %keymgmt = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %ctx, i64 0, i32 4
  %0 = load %struct.evp_keymgmt_st*, %struct.evp_keymgmt_st** %keymgmt, align 8, !tbaa !59
  %cmp = icmp eq %struct.evp_keymgmt_st* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = tail call %struct.bignum_st* @BN_dup(%struct.bignum_st* noundef %pubexp) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %pubexp.addr.0 = phi %struct.bignum_st* [ %call, %if.then ], [ %pubexp, %entry ]
  %1 = bitcast %struct.bignum_st* %pubexp.addr.0 to i8*
  %call1 = tail call i32 @EVP_PKEY_CTX_ctrl(%struct.evp_pkey_ctx_st* noundef nonnull %ctx, i32 noundef 6, i32 noundef 4, i32 noundef 4100, i32 noundef 0, i8* noundef %1) #12
  %2 = load %struct.evp_keymgmt_st*, %struct.evp_keymgmt_st** %keymgmt, align 8, !tbaa !59
  %cmp3 = icmp eq %struct.evp_keymgmt_st* %2, null
  %cmp4 = icmp slt i32 %call1, 1
  %or.cond = select i1 %cmp3, i1 %cmp4, i1 false
  br i1 %or.cond, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end
  tail call void @BN_free(%struct.bignum_st* noundef %pubexp.addr.0) #12
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %if.end
  ret i32 %call1
}

declare %struct.bignum_st* @BN_dup(%struct.bignum_st* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define i32 @EVP_PKEY_CTX_set_rsa_keygen_primes(%struct.evp_pkey_ctx_st* noundef %ctx, i32 noundef %primes) local_unnamed_addr #0 {
entry:
  %params = alloca [2 x %struct.ossl_param_st], align 16
  %primes2 = alloca i64, align 8
  %tmp13 = alloca %struct.ossl_param_st, align 8
  %0 = bitcast [2 x %struct.ossl_param_st]* %params to i8*
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %0) #13
  %arraydecay = getelementptr inbounds [2 x %struct.ossl_param_st], [2 x %struct.ossl_param_st]* %params, i64 0, i64 0
  %1 = bitcast i64* %primes2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #13
  %conv = sext i32 %primes to i64
  store i64 %conv, i64* %primes2, align 8, !tbaa !61
  %cmp = icmp eq %struct.evp_pkey_ctx_st* %ctx, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %operation = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %ctx, i64 0, i32 0
  %2 = load i32, i32* %operation, align 8, !tbaa !58
  switch i32 %2, label %if.then [
    i32 2, label %if.end
    i32 4, label %if.end
  ]

if.then:                                          ; preds = %lor.lhs.false, %entry
  tail call void @ERR_new() #12
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 1262, i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @__func__.EVP_PKEY_CTX_set_rsa_keygen_primes, i64 0, i64 0)) #12
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 6, i32 noundef 147, i8* noundef null) #12
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false, %lor.lhs.false
  %call = tail call i32 @EVP_PKEY_CTX_is_a(%struct.evp_pkey_ctx_st* noundef nonnull %ctx, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0)) #12
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %if.end11

land.lhs.true:                                    ; preds = %if.end
  %call8 = tail call i32 @EVP_PKEY_CTX_is_a(%struct.evp_pkey_ctx_st* noundef nonnull %ctx, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0)) #12
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %cleanup, label %if.end11

if.end11:                                         ; preds = %land.lhs.true, %if.end
  %incdec.ptr = getelementptr inbounds [2 x %struct.ossl_param_st], [2 x %struct.ossl_param_st]* %params, i64 0, i64 1
  %params25 = getelementptr inbounds [2 x %struct.ossl_param_st], [2 x %struct.ossl_param_st]* %params, i64 0, i64 0
  call void @OSSL_PARAM_construct_size_t(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %params25, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i64 0, i64 0), i64* noundef nonnull %primes2) #12
  %3 = bitcast %struct.ossl_param_st* %tmp13 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %3) #13
  call void @OSSL_PARAM_construct_end(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %tmp13) #12
  %4 = bitcast %struct.ossl_param_st* %incdec.ptr to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(40) %4, i8* noundef nonnull align 8 dereferenceable(40) %3, i64 40, i1 false), !tbaa.struct !60
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %3) #13
  %call15 = call i32 @evp_pkey_ctx_set_params_strict(%struct.evp_pkey_ctx_st* noundef nonnull %ctx, %struct.ossl_param_st* noundef nonnull %arraydecay) #12
  br label %cleanup

cleanup:                                          ; preds = %land.lhs.true, %if.end11, %if.then
  %retval.0 = phi i32 [ -2, %if.then ], [ %call15, %if.end11 ], [ -1, %land.lhs.true ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #13
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %0) #13
  ret i32 %retval.0
}

declare i8* @CRYPTO_THREAD_lock_new() local_unnamed_addr #3

declare %struct.rsa_meth_st* @RSA_get_default_method() local_unnamed_addr #3

declare i32 @ENGINE_init(%struct.engine_st* noundef) local_unnamed_addr #3

declare %struct.engine_st* @ENGINE_get_default_RSA() local_unnamed_addr #3

declare %struct.rsa_meth_st* @ENGINE_get_RSA(%struct.engine_st* noundef) local_unnamed_addr #3

declare i32 @CRYPTO_new_ex_data(i32 noundef, i8* noundef, %struct.crypto_ex_data_st* noundef) local_unnamed_addr #3

declare void @OPENSSL_sk_pop_free(%struct.stack_st* noundef, void (i8*)* noundef) local_unnamed_addr #3

declare i32 @OPENSSL_sk_num(%struct.stack_st* noundef) local_unnamed_addr #3

declare %struct.stack_st* @OPENSSL_sk_new_reserve(i32 (i8*, i8*)* noundef, i32 noundef) local_unnamed_addr #3

declare i32 @OPENSSL_sk_push(%struct.stack_st* noundef, i8* noundef) local_unnamed_addr #3

declare i8* @OPENSSL_sk_value(%struct.stack_st* noundef, i32 noundef) local_unnamed_addr #3

declare i8* @evp_pkey_type2name(i32 noundef) local_unnamed_addr #3

declare void @OSSL_PARAM_construct_utf8_string(%struct.ossl_param_st* sret(%struct.ossl_param_st) align 8, i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #3

declare i32 @evp_pkey_ctx_get_params_strict(%struct.evp_pkey_ctx_st* noundef, %struct.ossl_param_st* noundef) local_unnamed_addr #3

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #3 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nounwind uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline nounwind uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree noinline norecurse nosync nounwind readnone uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #11 = { nobuiltin "no-builtins" }
attributes #12 = { nobuiltin nounwind "no-builtins" }
attributes #13 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{!"clang version 14.0.0"}
!4 = !{!5, !7, i64 160}
!5 = !{!"rsa_st", !6, i64 0, !9, i64 8, !6, i64 16, !9, i64 24, !9, i64 32, !9, i64 40, !9, i64 48, !9, i64 56, !9, i64 64, !9, i64 72, !9, i64 80, !9, i64 88, !9, i64 96, !10, i64 104, !9, i64 128, !9, i64 136, !12, i64 144, !7, i64 160, !6, i64 164, !9, i64 168, !9, i64 176, !9, i64 184, !9, i64 192, !9, i64 200, !9, i64 208, !6, i64 216}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!"any pointer", !7, i64 0}
!10 = !{!"rsa_pss_params_30_st", !6, i64 0, !11, i64 4, !6, i64 12, !6, i64 16}
!11 = !{!"", !6, i64 0, !6, i64 4}
!12 = !{!"crypto_ex_data_st", !9, i64 0, !9, i64 8}
!13 = !{!5, !9, i64 208}
!14 = !{!5, !9, i64 8}
!15 = !{!5, !9, i64 24}
!16 = !{!17, !6, i64 72}
!17 = !{!"rsa_meth_st", !9, i64 0, !9, i64 8, !9, i64 16, !9, i64 24, !9, i64 32, !9, i64 40, !9, i64 48, !9, i64 56, !9, i64 64, !6, i64 72, !9, i64 80, !9, i64 88, !9, i64 96, !9, i64 104, !9, i64 112}
!18 = !{!5, !6, i64 164}
!19 = !{!5, !9, i64 32}
!20 = !{!17, !9, i64 56}
!21 = !{!17, !9, i64 64}
!22 = !{!6, !6, i64 0}
!23 = !{!5, !9, i64 40}
!24 = !{!5, !9, i64 48}
!25 = !{!5, !9, i64 56}
!26 = !{!5, !9, i64 64}
!27 = !{!5, !9, i64 72}
!28 = !{!5, !9, i64 80}
!29 = !{!5, !9, i64 88}
!30 = !{!5, !9, i64 96}
!31 = !{!5, !9, i64 128}
!32 = !{!5, !9, i64 136}
!33 = !{!5, !9, i64 192}
!34 = !{!5, !9, i64 200}
!35 = !{i64 0, i64 70368744177664}
!36 = distinct !{!36, !37}
!37 = !{!"llvm.loop.mustprogress"}
!38 = distinct !{!38, !37}
!39 = distinct !{!39, !37}
!40 = !{!5, !6, i64 16}
!41 = !{!5, !6, i64 216}
!42 = !{!9, !9, i64 0}
!43 = !{!44, !9, i64 0}
!44 = !{!"rsa_prime_info_st", !9, i64 0, !9, i64 8, !9, i64 16, !9, i64 24, !9, i64 32}
!45 = !{!44, !9, i64 8}
!46 = !{!44, !9, i64 16}
!47 = distinct !{!47, !37}
!48 = distinct !{!48, !37}
!49 = distinct !{!49, !37}
!50 = !{!51, !9, i64 120}
!51 = !{!"evp_pkey_ctx_st", !6, i64 0, !9, i64 8, !9, i64 16, !9, i64 24, !9, i64 32, !7, i64 40, !52, i64 56, !9, i64 88, !9, i64 96, !9, i64 104, !6, i64 112, !6, i64 116, !9, i64 120, !9, i64 128, !9, i64 136, !9, i64 144, !9, i64 152, !6, i64 160, !9, i64 168}
!52 = !{!"", !9, i64 0, !9, i64 8, !53, i64 16, !6, i64 24}
!53 = !{!"long", !7, i64 0}
!54 = !{!55, !6, i64 0}
!55 = !{!"evp_pkey_method_st", !6, i64 0, !6, i64 4, !9, i64 8, !9, i64 16, !9, i64 24, !9, i64 32, !9, i64 40, !9, i64 48, !9, i64 56, !9, i64 64, !9, i64 72, !9, i64 80, !9, i64 88, !9, i64 96, !9, i64 104, !9, i64 112, !9, i64 120, !9, i64 128, !9, i64 136, !9, i64 144, !9, i64 152, !9, i64 160, !9, i64 168, !9, i64 176, !9, i64 184, !9, i64 192, !9, i64 200, !9, i64 208, !9, i64 216, !9, i64 224, !9, i64 232, !9, i64 240, !9, i64 248}
!56 = distinct !{!56, !37}
!57 = distinct !{!57, !37}
!58 = !{!51, !6, i64 0}
!59 = !{!51, !9, i64 32}
!60 = !{i64 0, i64 8, !42, i64 8, i64 4, !22, i64 16, i64 8, !42, i64 24, i64 8, !61, i64 32, i64 8, !61}
!61 = !{!53, !53, i64 0}
!62 = !{!63, !53, i64 32}
!63 = !{!"ossl_param_st", !9, i64 0, !6, i64 8, !9, i64 16, !53, i64 24, !53, i64 32}
!64 = !{!51, !9, i64 168}
