; ModuleID = 'crypto/evp/digest.c'
source_filename = "crypto/evp/digest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evp_md_ctx_st = type { %struct.evp_md_st*, %struct.evp_md_st*, %struct.engine_st*, i64, i8*, %struct.evp_pkey_ctx_st*, i32 (%struct.evp_md_ctx_st*, i8*, i64)*, i8*, %struct.evp_md_st* }
%struct.engine_st = type opaque
%struct.evp_pkey_ctx_st = type { i32, %struct.ossl_lib_ctx_st*, i8*, i8*, %struct.evp_keymgmt_st*, %union.anon, %struct.anon.4, i8*, i32 (%struct.evp_pkey_ctx_st*)*, i32*, i32, i32, %struct.evp_pkey_method_st*, %struct.engine_st*, %struct.evp_pkey_st*, %struct.evp_pkey_st*, i8*, i8, %struct.bignum_st* }
%struct.ossl_lib_ctx_st = type opaque
%struct.evp_keymgmt_st = type { i32, i32, i8*, i8*, %struct.ossl_provider_st*, i32, i8*, i8* (i8*)*, void (i8*)*, i32 (i8*, %struct.ossl_param_st*)*, %struct.ossl_param_st* (i8*)*, i32 (i8*, %struct.ossl_param_st*)*, %struct.ossl_param_st* (i8*)*, i8* (i8*, i32, %struct.ossl_param_st*)*, i32 (i8*, i8*)*, i32 (i8*, %struct.ossl_param_st*)*, %struct.ossl_param_st* (i8*, i8*)*, i8* (i8*, i32 (%struct.ossl_param_st*, i8*)*, i8*)*, void (i8*)*, i8* (i8*, i64)*, i8* (i32)*, i32 (i8*, i32)*, i32 (i8*, i32, i32)*, i32 (i8*, i8*, i32)*, i32 (i8*, i32, %struct.ossl_param_st*)*, %struct.ossl_param_st* (i32)*, i32 (i8*, i32, i32 (%struct.ossl_param_st*, i8*)*, i8*)*, %struct.ossl_param_st* (i32)*, i8* (i8*, i32)* }
%struct.ossl_provider_st = type opaque
%struct.ossl_param_st = type { i8*, i32, i8*, i64, i64 }
%union.anon = type { %struct.anon.0 }
%struct.anon.0 = type { %struct.evp_keyexch_st*, i8* }
%struct.evp_keyexch_st = type { i32, i8*, i8*, %struct.ossl_provider_st*, i32, i8*, i8* (i8*)*, i32 (i8*, i8*, %struct.ossl_param_st*)*, i32 (i8*, i8*)*, i32 (i8*, i8*, i64*, i64)*, void (i8*)*, i8* (i8*)*, i32 (i8*, %struct.ossl_param_st*)*, %struct.ossl_param_st* (i8*, i8*)*, i32 (i8*, %struct.ossl_param_st*)*, %struct.ossl_param_st* (i8*, i8*)* }
%struct.anon.4 = type { i8*, i8*, i64, i8 }
%struct.evp_pkey_method_st = type { i32, i32, i32 (%struct.evp_pkey_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*, %struct.evp_pkey_ctx_st*)*, void (%struct.evp_pkey_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*, %struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*, %struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*, i8*, i64*, i8*, i64)*, i32 (%struct.evp_pkey_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*, i8*, i64, i8*, i64)*, i32 (%struct.evp_pkey_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*, i8*, i64*, i8*, i64)*, i32 (%struct.evp_pkey_ctx_st*, %struct.evp_md_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*, i8*, i64*, %struct.evp_md_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*, %struct.evp_md_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*, i8*, i32, %struct.evp_md_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*, i8*, i64*, i8*, i64)*, i32 (%struct.evp_pkey_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*, i8*, i64*, i8*, i64)*, i32 (%struct.evp_pkey_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*, i8*, i64*)*, i32 (%struct.evp_pkey_ctx_st*, i32, i32, i8*)*, i32 (%struct.evp_pkey_ctx_st*, i8*, i8*)*, i32 (%struct.evp_md_ctx_st*, i8*, i64*, i8*, i64)*, i32 (%struct.evp_md_ctx_st*, i8*, i64, i8*, i64)*, i32 (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_ctx_st*, %struct.evp_md_ctx_st*)* }
%struct.evp_pkey_st = type { i32, i32, %struct.evp_pkey_asn1_method_st*, %struct.engine_st*, %struct.engine_st*, %union.legacy_pkey_st, %union.legacy_pkey_st, i32, i8*, %struct.stack_st_X509_ATTRIBUTE*, i32, i8, %struct.crypto_ex_data_st, %struct.evp_keymgmt_st*, i8*, i64, %struct.stack_st_OP_CACHE_ELEM*, i64, %struct.anon.5 }
%struct.evp_pkey_asn1_method_st = type opaque
%union.legacy_pkey_st = type { i8* }
%struct.stack_st_X509_ATTRIBUTE = type opaque
%struct.crypto_ex_data_st = type { %struct.ossl_lib_ctx_st*, %struct.stack_st_void* }
%struct.stack_st_void = type opaque
%struct.stack_st_OP_CACHE_ELEM = type opaque
%struct.anon.5 = type { i32, i32, i32 }
%struct.bignum_st = type opaque
%struct.evp_md_st = type { i32, i32, i32, i64, i32, i32 (%struct.evp_md_ctx_st*)*, i32 (%struct.evp_md_ctx_st*, i8*, i64)*, i32 (%struct.evp_md_ctx_st*, i8*)*, i32 (%struct.evp_md_ctx_st*, %struct.evp_md_ctx_st*)*, i32 (%struct.evp_md_ctx_st*)*, i32, i32, i32 (%struct.evp_md_ctx_st*, i32, i32, i8*)*, i32, i8*, i8*, %struct.ossl_provider_st*, i32, i8*, i8* (i8*)*, i32 (i8*, %struct.ossl_param_st*)*, i32 (i8*, i8*, i64)*, i32 (i8*, i8*, i64*, i64)*, i32 (i8*, i8*, i64, i8*, i64*, i64)*, void (i8*)*, i8* (i8*)*, i32 (%struct.ossl_param_st*)*, i32 (i8*, %struct.ossl_param_st*)*, i32 (i8*, %struct.ossl_param_st*)*, %struct.ossl_param_st* (i8*)*, %struct.ossl_param_st* (i8*, i8*)*, %struct.ossl_param_st* (i8*, i8*)* }
%struct.asn1_string_st = type { i32, i32, i8*, i64 }
%struct.evp_signature_st = type { i32, i8*, i8*, %struct.ossl_provider_st*, i32, i8*, i8* (i8*, i8*)*, i32 (i8*, i8*, %struct.ossl_param_st*)*, i32 (i8*, i8*, i64*, i64, i8*, i64)*, i32 (i8*, i8*, %struct.ossl_param_st*)*, i32 (i8*, i8*, i64, i8*, i64)*, i32 (i8*, i8*, %struct.ossl_param_st*)*, i32 (i8*, i8*, i64*, i64, i8*, i64)*, i32 (i8*, i8*, i8*, %struct.ossl_param_st*)*, i32 (i8*, i8*, i64)*, i32 (i8*, i8*, i64*, i64)*, i32 (i8*, i8*, i64*, i64, i8*, i64)*, i32 (i8*, i8*, i8*, %struct.ossl_param_st*)*, i32 (i8*, i8*, i64)*, i32 (i8*, i8*, i64)*, i32 (i8*, i8*, i64, i8*, i64)*, void (i8*)*, i8* (i8*)*, i32 (i8*, %struct.ossl_param_st*)*, %struct.ossl_param_st* (i8*, i8*)*, i32 (i8*, %struct.ossl_param_st*)*, %struct.ossl_param_st* (i8*, i8*)*, i32 (i8*, %struct.ossl_param_st*)*, %struct.ossl_param_st* (i8*)*, i32 (i8*, %struct.ossl_param_st*)*, %struct.ossl_param_st* (i8*)* }
%struct.ossl_algorithm_st = type { i8*, i8*, %struct.ossl_dispatch_st*, i8* }
%struct.ossl_dispatch_st = type { i32, void ()* }

@.str = private unnamed_addr constant [20 x i8] c"crypto/evp/digest.c\00", align 1
@__func__.evp_md_ctx_new_ex = private unnamed_addr constant [18 x i8] c"evp_md_ctx_new_ex\00", align 1
@__func__.EVP_DigestUpdate = private unnamed_addr constant [17 x i8] c"EVP_DigestUpdate\00", align 1
@__func__.EVP_DigestFinal_ex = private unnamed_addr constant [19 x i8] c"EVP_DigestFinal_ex\00", align 1
@.str.1 = private unnamed_addr constant [44 x i8] c"assertion failed: mdsize <= EVP_MAX_MD_SIZE\00", align 1
@__func__.EVP_DigestFinalXOF = private unnamed_addr constant [19 x i8] c"EVP_DigestFinalXOF\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"xoflen\00", align 1
@__func__.EVP_MD_CTX_copy_ex = private unnamed_addr constant [19 x i8] c"EVP_MD_CTX_copy_ex\00", align 1
@__func__.EVP_MD_CTX_ctrl = private unnamed_addr constant [16 x i8] c"EVP_MD_CTX_ctrl\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"micalg\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"ssl3-ms\00", align 1
@__func__.evp_md_init_internal = private unnamed_addr constant [21 x i8] c"evp_md_init_internal\00", align 1
@.str.5 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@__func__.evp_md_from_algorithm = private unnamed_addr constant [22 x i8] c"evp_md_from_algorithm\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"blocksize\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"size\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"xof\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"algid-absent\00", align 1

; Function Attrs: noinline nounwind uwtable
define void @evp_md_ctx_clear_digest(%struct.evp_md_ctx_st* noundef %ctx, i32 noundef %force) local_unnamed_addr #0 {
entry:
  %algctx = getelementptr inbounds %struct.evp_md_ctx_st, %struct.evp_md_ctx_st* %ctx, i64 0, i32 7
  %0 = load i8*, i8** %algctx, align 8, !tbaa !4
  %cmp.not = icmp eq i8* %0, null
  br i1 %cmp.not, label %if.end9, label %if.then

if.then:                                          ; preds = %entry
  %digest = getelementptr inbounds %struct.evp_md_ctx_st, %struct.evp_md_ctx_st* %ctx, i64 0, i32 1
  %1 = load %struct.evp_md_st*, %struct.evp_md_st** %digest, align 8, !tbaa !10
  %cmp1.not = icmp eq %struct.evp_md_st* %1, null
  br i1 %cmp1.not, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.then
  %freectx = getelementptr inbounds %struct.evp_md_st, %struct.evp_md_st* %1, i64 0, i32 24
  %2 = load void (i8*)*, void (i8*)** %freectx, align 8, !tbaa !11
  %cmp3.not = icmp eq void (i8*)* %2, null
  br i1 %cmp3.not, label %if.end, label %if.then4

if.then4:                                         ; preds = %land.lhs.true
  tail call void %2(i8* noundef nonnull %0) #10
  br label %if.end

if.end:                                           ; preds = %if.then4, %land.lhs.true, %if.then
  store i8* null, i8** %algctx, align 8, !tbaa !4
  tail call void @EVP_MD_CTX_set_flags(%struct.evp_md_ctx_st* noundef nonnull %ctx, i32 noundef 2) #10
  br label %if.end9

if.end9:                                          ; preds = %if.end, %entry
  %digest10 = getelementptr inbounds %struct.evp_md_ctx_st, %struct.evp_md_ctx_st* %ctx, i64 0, i32 1
  %3 = load %struct.evp_md_st*, %struct.evp_md_st** %digest10, align 8, !tbaa !10
  %tobool.not = icmp eq %struct.evp_md_st* %3, null
  br i1 %tobool.not, label %if.end36, label %land.lhs.true11

land.lhs.true11:                                  ; preds = %if.end9
  %cleanup = getelementptr inbounds %struct.evp_md_st, %struct.evp_md_st* %3, i64 0, i32 9
  %4 = load i32 (%struct.evp_md_ctx_st*)*, i32 (%struct.evp_md_ctx_st*)** %cleanup, align 8, !tbaa !14
  %tobool13.not = icmp eq i32 (%struct.evp_md_ctx_st*)* %4, null
  br i1 %tobool13.not, label %if.end20, label %land.lhs.true14

land.lhs.true14:                                  ; preds = %land.lhs.true11
  %call = tail call i32 @EVP_MD_CTX_test_flags(%struct.evp_md_ctx_st* noundef nonnull %ctx, i32 noundef 2) #10
  %tobool15.not = icmp eq i32 %call, 0
  br i1 %tobool15.not, label %if.then16, label %if.end20

if.then16:                                        ; preds = %land.lhs.true14
  %5 = load %struct.evp_md_st*, %struct.evp_md_st** %digest10, align 8, !tbaa !10
  %cleanup18 = getelementptr inbounds %struct.evp_md_st, %struct.evp_md_st* %5, i64 0, i32 9
  %6 = load i32 (%struct.evp_md_ctx_st*)*, i32 (%struct.evp_md_ctx_st*)** %cleanup18, align 8, !tbaa !14
  %call19 = tail call i32 %6(%struct.evp_md_ctx_st* noundef nonnull %ctx) #10
  br label %if.end20

if.end20:                                         ; preds = %if.then16, %land.lhs.true14, %land.lhs.true11
  %.pr = load %struct.evp_md_st*, %struct.evp_md_st** %digest10, align 8, !tbaa !10
  %tobool22.not = icmp eq %struct.evp_md_st* %.pr, null
  br i1 %tobool22.not, label %if.end36, label %land.lhs.true23

land.lhs.true23:                                  ; preds = %if.end20
  %ctx_size = getelementptr inbounds %struct.evp_md_st, %struct.evp_md_st* %.pr, i64 0, i32 11
  %7 = load i32, i32* %ctx_size, align 4, !tbaa !15
  %tobool25.not = icmp eq i32 %7, 0
  br i1 %tobool25.not, label %if.end36, label %land.lhs.true26

land.lhs.true26:                                  ; preds = %land.lhs.true23
  %md_data = getelementptr inbounds %struct.evp_md_ctx_st, %struct.evp_md_ctx_st* %ctx, i64 0, i32 4
  %8 = load i8*, i8** %md_data, align 8, !tbaa !16
  %tobool27.not = icmp eq i8* %8, null
  br i1 %tobool27.not, label %if.end36, label %land.lhs.true28

land.lhs.true28:                                  ; preds = %land.lhs.true26
  %call29 = tail call i32 @EVP_MD_CTX_test_flags(%struct.evp_md_ctx_st* noundef nonnull %ctx, i32 noundef 4) #10
  %tobool30 = icmp eq i32 %call29, 0
  %tobool31 = icmp ne i32 %force, 0
  %or.cond = or i1 %tobool31, %tobool30
  br i1 %or.cond, label %if.then32, label %if.end40

if.then32:                                        ; preds = %land.lhs.true28
  %9 = load i8*, i8** %md_data, align 8, !tbaa !16
  %10 = load %struct.evp_md_st*, %struct.evp_md_st** %digest10, align 8, !tbaa !10
  %ctx_size35 = getelementptr inbounds %struct.evp_md_st, %struct.evp_md_st* %10, i64 0, i32 11
  %11 = load i32, i32* %ctx_size35, align 4, !tbaa !15
  %conv = sext i32 %11 to i64
  tail call void @CRYPTO_clear_free(i8* noundef %9, i64 noundef %conv, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 49) #10
  br label %if.end36

if.end36:                                         ; preds = %if.end9, %if.then32, %land.lhs.true26, %land.lhs.true23, %if.end20
  %tobool37.not = icmp eq i32 %force, 0
  br i1 %tobool37.not, label %if.end40, label %if.then38

if.then38:                                        ; preds = %if.end36
  store %struct.evp_md_st* null, %struct.evp_md_st** %digest10, align 8, !tbaa !10
  br label %if.end40

if.end40:                                         ; preds = %land.lhs.true28, %if.then38, %if.end36
  %engine = getelementptr inbounds %struct.evp_md_ctx_st, %struct.evp_md_ctx_st* %ctx, i64 0, i32 2
  %12 = load %struct.engine_st*, %struct.engine_st** %engine, align 8, !tbaa !17
  %call41 = tail call i32 @ENGINE_finish(%struct.engine_st* noundef %12) #10
  store %struct.engine_st* null, %struct.engine_st** %engine, align 8, !tbaa !17
  %fetched_digest = getelementptr inbounds %struct.evp_md_ctx_st, %struct.evp_md_ctx_st* %ctx, i64 0, i32 8
  %13 = load %struct.evp_md_st*, %struct.evp_md_st** %fetched_digest, align 8, !tbaa !18
  tail call void @EVP_MD_free(%struct.evp_md_st* noundef %13) #11
  store %struct.evp_md_st* null, %struct.evp_md_st** %fetched_digest, align 8, !tbaa !18
  %reqdigest = getelementptr inbounds %struct.evp_md_ctx_st, %struct.evp_md_ctx_st* %ctx, i64 0, i32 0
  store %struct.evp_md_st* null, %struct.evp_md_st** %reqdigest, align 8, !tbaa !19
  ret void
}

declare void @EVP_MD_CTX_set_flags(%struct.evp_md_ctx_st* noundef, i32 noundef) local_unnamed_addr #1

declare i32 @EVP_MD_CTX_test_flags(%struct.evp_md_ctx_st* noundef, i32 noundef) local_unnamed_addr #1

declare void @CRYPTO_clear_free(i8* noundef, i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

declare i32 @ENGINE_finish(%struct.engine_st* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define void @EVP_MD_free(%struct.evp_md_st* noundef %md) local_unnamed_addr #0 {
entry:
  %i = alloca i32, align 4
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #12
  %cmp = icmp eq %struct.evp_md_st* %md, null
  br i1 %cmp, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %origin = getelementptr inbounds %struct.evp_md_st, %struct.evp_md_st* %md, i64 0, i32 4
  %1 = load i32, i32* %origin, align 8, !tbaa !20
  %cmp1.not = icmp eq i32 %1, 0
  br i1 %cmp1.not, label %if.end, label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %refcnt = getelementptr inbounds %struct.evp_md_st, %struct.evp_md_st* %md, i64 0, i32 17
  call fastcc void @CRYPTO_DOWN_REF(i32* noundef nonnull %refcnt, i32* noundef nonnull %i) #11
  %2 = load i32, i32* %i, align 4, !tbaa !21
  %cmp2 = icmp sgt i32 %2, 0
  br i1 %cmp2, label %cleanup, label %if.end4

if.end4:                                          ; preds = %if.end
  tail call void @evp_md_free_int(%struct.evp_md_st* noundef nonnull %md) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry, %lor.lhs.false, %if.end4
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #12
  ret void
}

; Function Attrs: noinline nounwind uwtable
define i32 @EVP_MD_CTX_reset(%struct.evp_md_ctx_st* noundef %ctx) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.evp_md_ctx_st* %ctx, null
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %call = tail call i32 @EVP_MD_CTX_test_flags(%struct.evp_md_ctx_st* noundef nonnull %ctx, i32 noundef 1024) #10
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then1, label %if.end3

if.then1:                                         ; preds = %if.end
  %pctx = getelementptr inbounds %struct.evp_md_ctx_st, %struct.evp_md_ctx_st* %ctx, i64 0, i32 5
  %0 = load %struct.evp_pkey_ctx_st*, %struct.evp_pkey_ctx_st** %pctx, align 8, !tbaa !22
  tail call void @EVP_PKEY_CTX_free(%struct.evp_pkey_ctx_st* noundef %0) #10
  store %struct.evp_pkey_ctx_st* null, %struct.evp_pkey_ctx_st** %pctx, align 8, !tbaa !22
  br label %if.end3

if.end3:                                          ; preds = %if.then1, %if.end
  tail call void @evp_md_ctx_clear_digest(%struct.evp_md_ctx_st* noundef nonnull %ctx, i32 noundef 0) #11
  %1 = bitcast %struct.evp_md_ctx_st* %ctx to i8*
  tail call void @OPENSSL_cleanse(i8* noundef nonnull %1, i64 noundef 72) #10
  br label %return

return:                                           ; preds = %entry, %if.end3
  ret i32 1
}

declare void @EVP_PKEY_CTX_free(%struct.evp_pkey_ctx_st* noundef) local_unnamed_addr #1

declare void @OPENSSL_cleanse(i8* noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define %struct.evp_md_ctx_st* @evp_md_ctx_new_ex(%struct.evp_pkey_st* noundef %pkey, %struct.asn1_string_st* noundef readonly %id, %struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef %propq) local_unnamed_addr #0 {
entry:
  %call = tail call %struct.evp_md_ctx_st* @EVP_MD_CTX_new() #11
  %cmp = icmp eq %struct.evp_md_ctx_st* %call, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %call1 = tail call %struct.evp_pkey_ctx_st* @EVP_PKEY_CTX_new_from_pkey(%struct.ossl_lib_ctx_st* noundef %libctx, %struct.evp_pkey_st* noundef %pkey, i8* noundef %propq) #10
  %cmp2 = icmp eq %struct.evp_pkey_ctx_st* %call1, null
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  tail call void @ERR_new() #10
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 96, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.evp_md_ctx_new_ex, i64 0, i64 0)) #10
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 13, i32 noundef 786688, i8* noundef null) #10
  br label %err

if.end:                                           ; preds = %lor.lhs.false
  %cmp3.not = icmp eq %struct.asn1_string_st* %id, null
  br i1 %cmp3.not, label %if.end7, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  %data = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %id, i64 0, i32 2
  %0 = load i8*, i8** %data, align 8, !tbaa !23
  %length = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %id, i64 0, i32 0
  %1 = load i32, i32* %length, align 8, !tbaa !25
  %call4 = tail call i32 @EVP_PKEY_CTX_set1_id(%struct.evp_pkey_ctx_st* noundef nonnull %call1, i8* noundef %0, i32 noundef %1) #10
  %cmp5 = icmp slt i32 %call4, 1
  br i1 %cmp5, label %err, label %if.end7

if.end7:                                          ; preds = %land.lhs.true, %if.end
  tail call void @EVP_MD_CTX_set_pkey_ctx(%struct.evp_md_ctx_st* noundef nonnull %call, %struct.evp_pkey_ctx_st* noundef nonnull %call1) #10
  br label %cleanup

err:                                              ; preds = %land.lhs.true, %if.then
  %pctx.1 = phi %struct.evp_pkey_ctx_st* [ null, %if.then ], [ %call1, %land.lhs.true ]
  tail call void @EVP_PKEY_CTX_free(%struct.evp_pkey_ctx_st* noundef %pctx.1) #10
  tail call void @EVP_MD_CTX_free(%struct.evp_md_ctx_st* noundef %call) #11
  br label %cleanup

cleanup:                                          ; preds = %err, %if.end7
  %retval.0 = phi %struct.evp_md_ctx_st* [ null, %err ], [ %call, %if.end7 ]
  ret %struct.evp_md_ctx_st* %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: noinline nounwind uwtable
define %struct.evp_md_ctx_st* @EVP_MD_CTX_new() local_unnamed_addr #0 {
entry:
  %call = tail call i8* @CRYPTO_zalloc(i64 noundef 72, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 115) #10
  %0 = bitcast i8* %call to %struct.evp_md_ctx_st*
  ret %struct.evp_md_ctx_st* %0
}

declare %struct.evp_pkey_ctx_st* @EVP_PKEY_CTX_new_from_pkey(%struct.ossl_lib_ctx_st* noundef, %struct.evp_pkey_st* noundef, i8* noundef) local_unnamed_addr #1

declare void @ERR_new() local_unnamed_addr #1

declare void @ERR_set_debug(i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #1

declare void @ERR_set_error(i32 noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #1

declare i32 @EVP_PKEY_CTX_set1_id(%struct.evp_pkey_ctx_st* noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

declare void @EVP_MD_CTX_set_pkey_ctx(%struct.evp_md_ctx_st* noundef, %struct.evp_pkey_ctx_st* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define void @EVP_MD_CTX_free(%struct.evp_md_ctx_st* noundef %ctx) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.evp_md_ctx_st* %ctx, null
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %call = tail call i32 @EVP_MD_CTX_reset(%struct.evp_md_ctx_st* noundef nonnull %ctx) #11
  %0 = bitcast %struct.evp_md_ctx_st* %ctx to i8*
  tail call void @CRYPTO_free(i8* noundef nonnull %0, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 124) #10
  br label %return

return:                                           ; preds = %entry, %if.end
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

declare i8* @CRYPTO_zalloc(i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

declare void @CRYPTO_free(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define i32 @EVP_DigestInit_ex2(%struct.evp_md_ctx_st* noundef %ctx, %struct.evp_md_st* noundef %type, %struct.ossl_param_st* noundef %params) local_unnamed_addr #0 {
entry:
  %call = tail call fastcc i32 @evp_md_init_internal(%struct.evp_md_ctx_st* noundef %ctx, %struct.evp_md_st* noundef %type, %struct.ossl_param_st* noundef %params, %struct.engine_st* noundef null) #11
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @evp_md_init_internal(%struct.evp_md_ctx_st* noundef %ctx, %struct.evp_md_st* noundef %type, %struct.ossl_param_st* noundef %params, %struct.engine_st* noundef %impl) unnamed_addr #0 {
entry:
  %pctx = getelementptr inbounds %struct.evp_md_ctx_st, %struct.evp_md_ctx_st* %ctx, i64 0, i32 5
  %0 = load %struct.evp_pkey_ctx_st*, %struct.evp_pkey_ctx_st** %pctx, align 8, !tbaa !22
  %cmp.not = icmp eq %struct.evp_pkey_ctx_st* %0, null
  br i1 %cmp.not, label %if.end31, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %operation = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %0, i64 0, i32 0
  %1 = load i32, i32* %operation, align 8, !tbaa !26
  switch i32 %1, label %if.end31 [
    i32 16, label %land.lhs.true18
    i32 128, label %land.lhs.true18
    i32 32, label %land.lhs.true18
    i32 256, label %land.lhs.true18
    i32 64, label %land.lhs.true18
  ]

land.lhs.true18:                                  ; preds = %land.lhs.true, %land.lhs.true, %land.lhs.true, %land.lhs.true, %land.lhs.true
  %2 = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %0, i64 0, i32 5, i32 0, i32 1
  %3 = load i8*, i8** %2, align 8, !tbaa !29
  %cmp20.not = icmp eq i8* %3, null
  br i1 %cmp20.not, label %if.end31, label %if.then

if.then:                                          ; preds = %land.lhs.true18
  switch i32 %1, label %if.end30 [
    i32 128, label %if.then24
    i32 256, label %if.then28
  ]

if.then24:                                        ; preds = %if.then
  %call = tail call i32 @EVP_DigestSignInit(%struct.evp_md_ctx_st* noundef nonnull %ctx, %struct.evp_pkey_ctx_st** noundef null, %struct.evp_md_st* noundef %type, %struct.engine_st* noundef %impl, %struct.evp_pkey_st* noundef null) #10
  br label %cleanup322

if.then28:                                        ; preds = %if.then
  %call29 = tail call i32 @EVP_DigestVerifyInit(%struct.evp_md_ctx_st* noundef nonnull %ctx, %struct.evp_pkey_ctx_st** noundef null, %struct.evp_md_st* noundef %type, %struct.engine_st* noundef %impl, %struct.evp_pkey_st* noundef null) #10
  br label %cleanup322

if.end30:                                         ; preds = %if.then
  tail call void @ERR_new() #10
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 148, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.evp_md_init_internal, i64 0, i64 0)) #10
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 6, i32 noundef 189, i8* noundef null) #10
  br label %cleanup322

if.end31:                                         ; preds = %land.lhs.true, %land.lhs.true18, %entry
  tail call void @EVP_MD_CTX_clear_flags(%struct.evp_md_ctx_st* noundef nonnull %ctx, i32 noundef 2) #10
  %algctx32 = getelementptr inbounds %struct.evp_md_ctx_st, %struct.evp_md_ctx_st* %ctx, i64 0, i32 7
  %4 = load i8*, i8** %algctx32, align 8, !tbaa !4
  %cmp33.not = icmp eq i8* %4, null
  br i1 %cmp33.not, label %if.end49, label %if.then34

if.then34:                                        ; preds = %if.end31
  %digest = getelementptr inbounds %struct.evp_md_ctx_st, %struct.evp_md_ctx_st* %ctx, i64 0, i32 1
  %5 = load %struct.evp_md_st*, %struct.evp_md_st** %digest, align 8, !tbaa !10
  %cmp35.not = icmp eq %struct.evp_md_st* %5, null
  br i1 %cmp35.not, label %if.then38, label %if.end39

if.then38:                                        ; preds = %if.then34
  tail call void @ERR_new() #10
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 157, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.evp_md_init_internal, i64 0, i64 0)) #10
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 6, i32 noundef 134, i8* noundef null) #10
  br label %cleanup322

if.end39:                                         ; preds = %if.then34
  %freectx = getelementptr inbounds %struct.evp_md_st, %struct.evp_md_st* %5, i64 0, i32 24
  %6 = load void (i8*)*, void (i8*)** %freectx, align 8, !tbaa !11
  %cmp41.not = icmp eq void (i8*)* %6, null
  br i1 %cmp41.not, label %if.end47, label %if.then43

if.then43:                                        ; preds = %if.end39
  tail call void %6(i8* noundef nonnull %4) #10
  br label %if.end47

if.end47:                                         ; preds = %if.then43, %if.end39
  store i8* null, i8** %algctx32, align 8, !tbaa !4
  br label %if.end49

if.end49:                                         ; preds = %if.end47, %if.end31
  %cmp50.not = icmp eq %struct.evp_md_st* %type, null
  br i1 %cmp50.not, label %if.else, label %if.then52

if.then52:                                        ; preds = %if.end49
  %reqdigest = getelementptr inbounds %struct.evp_md_ctx_st, %struct.evp_md_ctx_st* %ctx, i64 0, i32 0
  store %struct.evp_md_st* %type, %struct.evp_md_st** %reqdigest, align 8, !tbaa !19
  br label %if.end59

if.else:                                          ; preds = %if.end49
  %digest53 = getelementptr inbounds %struct.evp_md_ctx_st, %struct.evp_md_ctx_st* %ctx, i64 0, i32 1
  %7 = load %struct.evp_md_st*, %struct.evp_md_st** %digest53, align 8, !tbaa !10
  %cmp54 = icmp eq %struct.evp_md_st* %7, null
  br i1 %cmp54, label %if.then56, label %if.end59

if.then56:                                        ; preds = %if.else
  tail call void @ERR_new() #10
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 169, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.evp_md_init_internal, i64 0, i64 0)) #10
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 6, i32 noundef 139, i8* noundef null) #10
  br label %cleanup322

if.end59:                                         ; preds = %if.else, %if.then52
  %type.addr.0 = phi %struct.evp_md_st* [ %type, %if.then52 ], [ %7, %if.else ]
  %engine = getelementptr inbounds %struct.evp_md_ctx_st, %struct.evp_md_ctx_st* %ctx, i64 0, i32 2
  %8 = load %struct.engine_st*, %struct.engine_st** %engine, align 8, !tbaa !17
  %tobool.not = icmp eq %struct.engine_st* %8, null
  br i1 %tobool.not, label %if.then76, label %land.lhs.true60

land.lhs.true60:                                  ; preds = %if.end59
  %digest61 = getelementptr inbounds %struct.evp_md_ctx_st, %struct.evp_md_ctx_st* %ctx, i64 0, i32 1
  %9 = load %struct.evp_md_st*, %struct.evp_md_st** %digest61, align 8, !tbaa !10
  %tobool62.not = icmp eq %struct.evp_md_st* %9, null
  br i1 %tobool62.not, label %if.then76, label %lor.lhs.false66

lor.lhs.false66:                                  ; preds = %land.lhs.true60
  %type67 = getelementptr inbounds %struct.evp_md_st, %struct.evp_md_st* %type.addr.0, i64 0, i32 0
  %10 = load i32, i32* %type67, align 8, !tbaa !30
  %type69 = getelementptr inbounds %struct.evp_md_st, %struct.evp_md_st* %9, i64 0, i32 0
  %11 = load i32, i32* %type69, align 8, !tbaa !30
  %cmp70 = icmp eq i32 %10, %11
  br i1 %cmp70, label %skip_to_init, label %if.then76

if.then76:                                        ; preds = %if.end59, %land.lhs.true60, %lor.lhs.false66
  %call78 = tail call i32 @ENGINE_finish(%struct.engine_st* noundef %8) #10
  store %struct.engine_st* null, %struct.engine_st** %engine, align 8, !tbaa !17
  %cmp84 = icmp eq %struct.engine_st* %impl, null
  br i1 %cmp84, label %if.end89, label %if.then102

if.end89:                                         ; preds = %if.then76
  %type87 = getelementptr inbounds %struct.evp_md_st, %struct.evp_md_st* %type.addr.0, i64 0, i32 0
  %12 = load i32, i32* %type87, align 8, !tbaa !30
  %call88 = tail call %struct.engine_st* @ENGINE_get_digest_engine(i32 noundef %12) #10
  %13 = load %struct.engine_st*, %struct.engine_st** %engine, align 8, !tbaa !17
  %cmp91 = icmp ne %struct.engine_st* %13, null
  %cmp97 = icmp ne %struct.engine_st* %call88, null
  %or.cond326 = select i1 %cmp91, i1 true, i1 %cmp97
  br i1 %or.cond326, label %if.then102, label %lor.lhs.false99

lor.lhs.false99:                                  ; preds = %if.end89
  %flags = getelementptr inbounds %struct.evp_md_ctx_st, %struct.evp_md_ctx_st* %ctx, i64 0, i32 3
  %14 = load i64, i64* %flags, align 8, !tbaa !31
  %and = and i64 %14, 256
  %cmp100.not = icmp eq i64 %and, 0
  br i1 %cmp100.not, label %if.end111, label %if.then102

if.then102:                                       ; preds = %if.then76, %lor.lhs.false99, %if.end89
  %cmp94478 = phi i1 [ false, %lor.lhs.false99 ], [ false, %if.end89 ], [ true, %if.then76 ]
  %tmpimpl.0477 = phi %struct.engine_st* [ null, %lor.lhs.false99 ], [ %call88, %if.end89 ], [ null, %if.then76 ]
  %digest103 = getelementptr inbounds %struct.evp_md_ctx_st, %struct.evp_md_ctx_st* %ctx, i64 0, i32 1
  %15 = load %struct.evp_md_st*, %struct.evp_md_st** %digest103, align 8, !tbaa !10
  %fetched_digest = getelementptr inbounds %struct.evp_md_ctx_st, %struct.evp_md_ctx_st* %ctx, i64 0, i32 8
  %16 = load %struct.evp_md_st*, %struct.evp_md_st** %fetched_digest, align 8, !tbaa !18
  %cmp104 = icmp eq %struct.evp_md_st* %15, %16
  br i1 %cmp104, label %if.then106, label %if.end108

if.then106:                                       ; preds = %if.then102
  store %struct.evp_md_st* null, %struct.evp_md_st** %digest103, align 8, !tbaa !10
  br label %if.end108

if.end108:                                        ; preds = %if.then106, %if.then102
  tail call void @EVP_MD_free(%struct.evp_md_st* noundef %16) #11
  store %struct.evp_md_st* null, %struct.evp_md_st** %fetched_digest, align 8, !tbaa !18
  br i1 %cmp94478, label %if.then205, label %if.end211

if.end111:                                        ; preds = %lor.lhs.false99
  %digest112 = getelementptr inbounds %struct.evp_md_ctx_st, %struct.evp_md_ctx_st* %ctx, i64 0, i32 1
  %17 = load %struct.evp_md_st*, %struct.evp_md_st** %digest112, align 8, !tbaa !10
  %cmp113.not = icmp eq %struct.evp_md_st* %17, null
  br i1 %cmp113.not, label %if.end124, label %land.lhs.true115

land.lhs.true115:                                 ; preds = %if.end111
  %ctx_size = getelementptr inbounds %struct.evp_md_st, %struct.evp_md_st* %17, i64 0, i32 11
  %18 = load i32, i32* %ctx_size, align 4, !tbaa !15
  %cmp117 = icmp sgt i32 %18, 0
  br i1 %cmp117, label %if.then119, label %if.end124

if.then119:                                       ; preds = %land.lhs.true115
  %md_data = getelementptr inbounds %struct.evp_md_ctx_st, %struct.evp_md_ctx_st* %ctx, i64 0, i32 4
  %19 = load i8*, i8** %md_data, align 8, !tbaa !16
  %conv122481 = zext i32 %18 to i64
  tail call void @CRYPTO_clear_free(i8* noundef %19, i64 noundef %conv122481, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 219) #10
  store i8* null, i8** %md_data, align 8, !tbaa !16
  br label %if.end124

if.end124:                                        ; preds = %if.then119, %land.lhs.true115, %if.end111
  %prov = getelementptr inbounds %struct.evp_md_st, %struct.evp_md_st* %type.addr.0, i64 0, i32 16
  %20 = load %struct.ossl_provider_st*, %struct.ossl_provider_st** %prov, align 8, !tbaa !32
  %cmp125 = icmp eq %struct.ossl_provider_st* %20, null
  br i1 %cmp125, label %if.then127, label %if.end137

if.then127:                                       ; preds = %if.end124
  %21 = load i32, i32* %type87, align 8, !tbaa !30
  %call129 = tail call i8* @OBJ_nid2sn(i32 noundef %21) #10
  %call130 = tail call %struct.evp_md_st* @EVP_MD_fetch(%struct.ossl_lib_ctx_st* noundef null, i8* noundef %call129, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0)) #11
  %cmp131 = icmp eq %struct.evp_md_st* %call130, null
  br i1 %cmp131, label %cleanup.thread, label %cleanup

cleanup.thread:                                   ; preds = %if.then127
  tail call void @ERR_new() #10
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 234, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.evp_md_init_internal, i64 0, i64 0)) #10
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 6, i32 noundef 134, i8* noundef null) #10
  br label %cleanup322

cleanup:                                          ; preds = %if.then127
  %fetched_digest135 = getelementptr inbounds %struct.evp_md_ctx_st, %struct.evp_md_ctx_st* %ctx, i64 0, i32 8
  %22 = load %struct.evp_md_st*, %struct.evp_md_st** %fetched_digest135, align 8, !tbaa !18
  tail call void @EVP_MD_free(%struct.evp_md_st* noundef %22) #11
  store %struct.evp_md_st* %call130, %struct.evp_md_st** %fetched_digest135, align 8, !tbaa !18
  br label %if.end137

if.end137:                                        ; preds = %cleanup, %if.end124
  %type.addr.2 = phi %struct.evp_md_st* [ %call130, %cleanup ], [ %type.addr.0, %if.end124 ]
  %23 = load i8*, i8** %algctx32, align 8, !tbaa !4
  %cmp139.not = icmp eq i8* %23, null
  br i1 %cmp139.not, label %if.end160, label %land.lhs.true141

land.lhs.true141:                                 ; preds = %if.end137
  %24 = load %struct.evp_md_st*, %struct.evp_md_st** %digest112, align 8, !tbaa !10
  %cmp143.not = icmp eq %struct.evp_md_st* %24, null
  %cmp147.not = icmp eq %struct.evp_md_st* %24, %type.addr.2
  %or.cond = select i1 %cmp143.not, i1 true, i1 %cmp147.not
  br i1 %or.cond, label %if.end160, label %if.then149

if.then149:                                       ; preds = %land.lhs.true141
  %freectx151 = getelementptr inbounds %struct.evp_md_st, %struct.evp_md_st* %24, i64 0, i32 24
  %25 = load void (i8*)*, void (i8*)** %freectx151, align 8, !tbaa !11
  %cmp152.not = icmp eq void (i8*)* %25, null
  br i1 %cmp152.not, label %if.end158, label %if.then154

if.then154:                                       ; preds = %if.then149
  tail call void %25(i8* noundef nonnull %23) #10
  br label %if.end158

if.end158:                                        ; preds = %if.then154, %if.then149
  store i8* null, i8** %algctx32, align 8, !tbaa !4
  br label %if.end160

if.end160:                                        ; preds = %if.end158, %land.lhs.true141, %if.end137
  %26 = phi i8* [ null, %if.end158 ], [ %23, %land.lhs.true141 ], [ null, %if.end137 ]
  %prov161 = getelementptr inbounds %struct.evp_md_st, %struct.evp_md_st* %type.addr.2, i64 0, i32 16
  %27 = load %struct.ossl_provider_st*, %struct.ossl_provider_st** %prov161, align 8, !tbaa !32
  %cmp162.not = icmp eq %struct.ossl_provider_st* %27, null
  br i1 %cmp162.not, label %if.end175, label %land.lhs.true164

land.lhs.true164:                                 ; preds = %if.end160
  %fetched_digest165 = getelementptr inbounds %struct.evp_md_ctx_st, %struct.evp_md_ctx_st* %ctx, i64 0, i32 8
  %28 = load %struct.evp_md_st*, %struct.evp_md_st** %fetched_digest165, align 8, !tbaa !18
  %cmp166.not = icmp eq %struct.evp_md_st* %28, %type.addr.2
  br i1 %cmp166.not, label %if.end175, label %if.then168

if.then168:                                       ; preds = %land.lhs.true164
  %call169 = tail call i32 @EVP_MD_up_ref(%struct.evp_md_st* noundef nonnull %type.addr.2) #11
  %29 = load %struct.evp_md_st*, %struct.evp_md_st** %fetched_digest165, align 8, !tbaa !18
  tail call void @EVP_MD_free(%struct.evp_md_st* noundef %29) #11
  store %struct.evp_md_st* %type.addr.2, %struct.evp_md_st** %fetched_digest165, align 8, !tbaa !18
  %.pre = load i8*, i8** %algctx32, align 8, !tbaa !4
  br label %if.end175

if.end175:                                        ; preds = %if.then168, %land.lhs.true164, %if.end160
  %30 = phi i8* [ %.pre, %if.then168 ], [ %26, %land.lhs.true164 ], [ %26, %if.end160 ]
  store %struct.evp_md_st* %type.addr.2, %struct.evp_md_st** %digest112, align 8, !tbaa !10
  %cmp178 = icmp eq i8* %30, null
  br i1 %cmp178, label %if.then180, label %if.end191

if.then180:                                       ; preds = %if.end175
  %newctx = getelementptr inbounds %struct.evp_md_st, %struct.evp_md_st* %type.addr.2, i64 0, i32 19
  %31 = load i8* (i8*)*, i8* (i8*)** %newctx, align 8, !tbaa !33
  %32 = load %struct.ossl_provider_st*, %struct.ossl_provider_st** %prov161, align 8, !tbaa !32
  %call183 = tail call i8* @ossl_provider_ctx(%struct.ossl_provider_st* noundef %32) #10
  %call184 = tail call i8* %31(i8* noundef %call183) #10
  store i8* %call184, i8** %algctx32, align 8, !tbaa !4
  %cmp187 = icmp eq i8* %call184, null
  br i1 %cmp187, label %if.then189, label %if.then180.if.end191_crit_edge

if.then180.if.end191_crit_edge:                   ; preds = %if.then180
  %.pre482 = load %struct.evp_md_st*, %struct.evp_md_st** %digest112, align 8, !tbaa !10
  br label %if.end191

if.then189:                                       ; preds = %if.then180
  tail call void @ERR_new() #10
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 260, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.evp_md_init_internal, i64 0, i64 0)) #10
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 6, i32 noundef 134, i8* noundef null) #10
  br label %cleanup322

if.end191:                                        ; preds = %if.then180.if.end191_crit_edge, %if.end175
  %33 = phi i8* [ %call184, %if.then180.if.end191_crit_edge ], [ %30, %if.end175 ]
  %34 = phi %struct.evp_md_st* [ %.pre482, %if.then180.if.end191_crit_edge ], [ %type.addr.2, %if.end175 ]
  %dinit = getelementptr inbounds %struct.evp_md_st, %struct.evp_md_st* %34, i64 0, i32 20
  %35 = load i32 (i8*, %struct.ossl_param_st*)*, i32 (i8*, %struct.ossl_param_st*)** %dinit, align 8, !tbaa !34
  %cmp193 = icmp eq i32 (i8*, %struct.ossl_param_st*)* %35, null
  br i1 %cmp193, label %if.then195, label %if.end196

if.then195:                                       ; preds = %if.end191
  tail call void @ERR_new() #10
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 266, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.evp_md_init_internal, i64 0, i64 0)) #10
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 6, i32 noundef 134, i8* noundef null) #10
  br label %cleanup322

if.end196:                                        ; preds = %if.end191
  %call200 = tail call i32 %35(i8* noundef nonnull %33, %struct.ossl_param_st* noundef %params) #10
  br label %cleanup322

if.then205:                                       ; preds = %if.end108
  %call206 = tail call i32 @ENGINE_init(%struct.engine_st* noundef nonnull %impl) #10
  %tobool207.not = icmp eq i32 %call206, 0
  br i1 %tobool207.not, label %if.then208, label %if.end211

if.then208:                                       ; preds = %if.then205
  tail call void @ERR_new() #10
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 279, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.evp_md_init_internal, i64 0, i64 0)) #10
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 6, i32 noundef 134, i8* noundef null) #10
  br label %cleanup322

if.end211:                                        ; preds = %if.end108, %if.then205
  %impl.addr.0 = phi %struct.engine_st* [ %impl, %if.then205 ], [ %tmpimpl.0477, %if.end108 ]
  %cmp212.not = icmp eq %struct.engine_st* %impl.addr.0, null
  br i1 %cmp212.not, label %if.end229, label %if.then214

if.then214:                                       ; preds = %if.end211
  %type215 = getelementptr inbounds %struct.evp_md_st, %struct.evp_md_st* %type.addr.0, i64 0, i32 0
  %36 = load i32, i32* %type215, align 8, !tbaa !30
  %call216 = tail call %struct.evp_md_st* @ENGINE_get_digest(%struct.engine_st* noundef nonnull %impl.addr.0, i32 noundef %36) #10
  %cmp217 = icmp eq %struct.evp_md_st* %call216, null
  br i1 %cmp217, label %cleanup223.thread, label %if.end229

cleanup223.thread:                                ; preds = %if.then214
  tail call void @ERR_new() #10
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 291, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.evp_md_init_internal, i64 0, i64 0)) #10
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 6, i32 noundef 134, i8* noundef null) #10
  %call220 = tail call i32 @ENGINE_finish(%struct.engine_st* noundef nonnull %impl.addr.0) #10
  br label %cleanup322

if.end229:                                        ; preds = %if.end211, %if.then214
  %type.addr.4 = phi %struct.evp_md_st* [ %call216, %if.then214 ], [ %type.addr.0, %if.end211 ]
  store %struct.engine_st* %impl.addr.0, %struct.engine_st** %engine, align 8, !tbaa !17
  %37 = load %struct.evp_md_st*, %struct.evp_md_st** %digest103, align 8, !tbaa !10
  %cmp231.not = icmp eq %struct.evp_md_st* %37, %type.addr.4
  br i1 %cmp231.not, label %skip_to_init, label %if.then233

if.then233:                                       ; preds = %if.end229
  %tobool235.not = icmp eq %struct.evp_md_st* %37, null
  br i1 %tobool235.not, label %if.end246, label %land.lhs.true236

land.lhs.true236:                                 ; preds = %if.then233
  %ctx_size238 = getelementptr inbounds %struct.evp_md_st, %struct.evp_md_st* %37, i64 0, i32 11
  %38 = load i32, i32* %ctx_size238, align 4, !tbaa !15
  %tobool239.not = icmp eq i32 %38, 0
  br i1 %tobool239.not, label %if.end246, label %if.then240

if.then240:                                       ; preds = %land.lhs.true236
  %md_data241 = getelementptr inbounds %struct.evp_md_ctx_st, %struct.evp_md_ctx_st* %ctx, i64 0, i32 4
  %39 = load i8*, i8** %md_data241, align 8, !tbaa !16
  %conv244 = sext i32 %38 to i64
  tail call void @CRYPTO_clear_free(i8* noundef %39, i64 noundef %conv244, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 308) #10
  store i8* null, i8** %md_data241, align 8, !tbaa !16
  br label %if.end246

if.end246:                                        ; preds = %if.then240, %land.lhs.true236, %if.then233
  store %struct.evp_md_st* %type.addr.4, %struct.evp_md_st** %digest103, align 8, !tbaa !10
  %flags248 = getelementptr inbounds %struct.evp_md_ctx_st, %struct.evp_md_ctx_st* %ctx, i64 0, i32 3
  %40 = load i64, i64* %flags248, align 8, !tbaa !31
  %and249 = and i64 %40, 256
  %tobool250.not = icmp eq i64 %and249, 0
  br i1 %tobool250.not, label %land.lhs.true251, label %skip_to_init

land.lhs.true251:                                 ; preds = %if.end246
  %ctx_size252 = getelementptr inbounds %struct.evp_md_st, %struct.evp_md_st* %type.addr.4, i64 0, i32 11
  %41 = load i32, i32* %ctx_size252, align 4, !tbaa !15
  %tobool253.not = icmp eq i32 %41, 0
  br i1 %tobool253.not, label %skip_to_init, label %if.then254

if.then254:                                       ; preds = %land.lhs.true251
  %update = getelementptr inbounds %struct.evp_md_st, %struct.evp_md_st* %type.addr.4, i64 0, i32 6
  %42 = load i32 (%struct.evp_md_ctx_st*, i8*, i64)*, i32 (%struct.evp_md_ctx_st*, i8*, i64)** %update, align 8, !tbaa !35
  %update255 = getelementptr inbounds %struct.evp_md_ctx_st, %struct.evp_md_ctx_st* %ctx, i64 0, i32 6
  store i32 (%struct.evp_md_ctx_st*, i8*, i64)* %42, i32 (%struct.evp_md_ctx_st*, i8*, i64)** %update255, align 8, !tbaa !36
  %conv257 = sext i32 %41 to i64
  %call258 = tail call i8* @CRYPTO_zalloc(i64 noundef %conv257, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 314) #10
  %md_data259 = getelementptr inbounds %struct.evp_md_ctx_st, %struct.evp_md_ctx_st* %ctx, i64 0, i32 4
  store i8* %call258, i8** %md_data259, align 8, !tbaa !16
  %cmp261 = icmp eq i8* %call258, null
  br i1 %cmp261, label %if.then263, label %skip_to_init

if.then263:                                       ; preds = %if.then254
  tail call void @ERR_new() #10
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 316, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.evp_md_init_internal, i64 0, i64 0)) #10
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 6, i32 noundef 786688, i8* noundef null) #10
  br label %cleanup322

skip_to_init:                                     ; preds = %if.end229, %if.then254, %land.lhs.true251, %if.end246, %lor.lhs.false66
  %43 = load %struct.evp_pkey_ctx_st*, %struct.evp_pkey_ctx_st** %pctx, align 8, !tbaa !22
  %cmp268.not = icmp eq %struct.evp_pkey_ctx_st* %43, null
  br i1 %cmp268.not, label %if.end314, label %land.lhs.true270

land.lhs.true270:                                 ; preds = %skip_to_init
  %operation272 = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %43, i64 0, i32 0
  %44 = load i32, i32* %operation272, align 8, !tbaa !26
  switch i32 %44, label %if.then301 [
    i32 16, label %lor.lhs.false295
    i32 128, label %lor.lhs.false295
    i32 32, label %lor.lhs.false295
    i32 256, label %lor.lhs.false295
    i32 64, label %lor.lhs.false295
  ]

lor.lhs.false295:                                 ; preds = %land.lhs.true270, %land.lhs.true270, %land.lhs.true270, %land.lhs.true270, %land.lhs.true270
  %op297 = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %43, i64 0, i32 5
  %signature = bitcast %union.anon* %op297 to %struct.evp_signature_st**
  %45 = load %struct.evp_signature_st*, %struct.evp_signature_st** %signature, align 8, !tbaa !29
  %cmp299 = icmp eq %struct.evp_signature_st* %45, null
  br i1 %cmp299, label %if.then301, label %if.end314

if.then301:                                       ; preds = %land.lhs.true270, %lor.lhs.false295
  %46 = bitcast %struct.evp_md_ctx_st* %ctx to i8*
  %call303 = tail call i32 @EVP_PKEY_CTX_ctrl(%struct.evp_pkey_ctx_st* noundef nonnull %43, i32 noundef -1, i32 noundef 496, i32 noundef 7, i32 noundef 0, i8* noundef %46) #10
  %cmp304 = icmp slt i32 %call303, 1
  %cmp307 = icmp ne i32 %call303, -2
  %.demorgan = and i1 %cmp304, %cmp307
  br i1 %.demorgan, label %cleanup322, label %if.end314

if.end314:                                        ; preds = %if.then301, %lor.lhs.false295, %skip_to_init
  %flags315 = getelementptr inbounds %struct.evp_md_ctx_st, %struct.evp_md_ctx_st* %ctx, i64 0, i32 3
  %47 = load i64, i64* %flags315, align 8, !tbaa !31
  %and316 = and i64 %47, 256
  %tobool317.not = icmp eq i64 %and316, 0
  br i1 %tobool317.not, label %if.end319, label %cleanup322

if.end319:                                        ; preds = %if.end314
  %digest320 = getelementptr inbounds %struct.evp_md_ctx_st, %struct.evp_md_ctx_st* %ctx, i64 0, i32 1
  %48 = load %struct.evp_md_st*, %struct.evp_md_st** %digest320, align 8, !tbaa !10
  %init = getelementptr inbounds %struct.evp_md_st, %struct.evp_md_st* %48, i64 0, i32 5
  %49 = load i32 (%struct.evp_md_ctx_st*)*, i32 (%struct.evp_md_ctx_st*)** %init, align 8, !tbaa !37
  %call321 = tail call i32 %49(%struct.evp_md_ctx_st* noundef nonnull %ctx) #10
  br label %cleanup322

cleanup322:                                       ; preds = %cleanup223.thread, %cleanup.thread, %if.end314, %if.then301, %if.end319, %if.then263, %if.then208, %if.end196, %if.then195, %if.then189, %if.then56, %if.then38, %if.end30, %if.then28, %if.then24
  %retval.5 = phi i32 [ %call, %if.then24 ], [ %call29, %if.then28 ], [ 0, %if.end30 ], [ %call321, %if.end319 ], [ 0, %if.then301 ], [ 0, %if.then263 ], [ 0, %if.then208 ], [ 0, %if.then189 ], [ 0, %if.then195 ], [ %call200, %if.end196 ], [ 0, %if.then56 ], [ 0, %if.then38 ], [ 1, %if.end314 ], [ 0, %cleanup.thread ], [ 0, %cleanup223.thread ]
  ret i32 %retval.5
}

; Function Attrs: noinline nounwind uwtable
define i32 @EVP_DigestInit(%struct.evp_md_ctx_st* noundef %ctx, %struct.evp_md_st* noundef %type) local_unnamed_addr #0 {
entry:
  %call = tail call i32 @EVP_MD_CTX_reset(%struct.evp_md_ctx_st* noundef %ctx) #11
  %call1 = tail call fastcc i32 @evp_md_init_internal(%struct.evp_md_ctx_st* noundef %ctx, %struct.evp_md_st* noundef %type, %struct.ossl_param_st* noundef null, %struct.engine_st* noundef null) #11
  ret i32 %call1
}

; Function Attrs: noinline nounwind uwtable
define i32 @EVP_DigestInit_ex(%struct.evp_md_ctx_st* noundef %ctx, %struct.evp_md_st* noundef %type, %struct.engine_st* noundef %impl) local_unnamed_addr #0 {
entry:
  %call = tail call fastcc i32 @evp_md_init_internal(%struct.evp_md_ctx_st* noundef %ctx, %struct.evp_md_st* noundef %type, %struct.ossl_param_st* noundef null, %struct.engine_st* noundef %impl) #11
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define i32 @EVP_DigestUpdate(%struct.evp_md_ctx_st* noundef %ctx, i8* noundef %data, i64 noundef %count) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq i64 %count, 0
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %pctx = getelementptr inbounds %struct.evp_md_ctx_st, %struct.evp_md_ctx_st* %ctx, i64 0, i32 5
  %0 = load %struct.evp_pkey_ctx_st*, %struct.evp_pkey_ctx_st** %pctx, align 8, !tbaa !22
  %cmp1.not = icmp eq %struct.evp_pkey_ctx_st* %0, null
  br i1 %cmp1.not, label %if.end34, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  %operation = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %0, i64 0, i32 0
  %1 = load i32, i32* %operation, align 8, !tbaa !26
  switch i32 %1, label %if.end34 [
    i32 16, label %land.lhs.true19
    i32 128, label %land.lhs.true19
    i32 32, label %land.lhs.true19
    i32 256, label %land.lhs.true19
    i32 64, label %land.lhs.true19
  ]

land.lhs.true19:                                  ; preds = %land.lhs.true, %land.lhs.true, %land.lhs.true, %land.lhs.true, %land.lhs.true
  %2 = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %0, i64 0, i32 5, i32 0, i32 1
  %3 = load i8*, i8** %2, align 8, !tbaa !29
  %cmp21.not = icmp eq i8* %3, null
  br i1 %cmp21.not, label %if.end34, label %if.then22

if.then22:                                        ; preds = %land.lhs.true19
  switch i32 %1, label %if.end33 [
    i32 128, label %if.then26
    i32 256, label %if.then31
  ]

if.then26:                                        ; preds = %if.then22
  %call = tail call i32 @EVP_DigestSignUpdate(%struct.evp_md_ctx_st* noundef nonnull %ctx, i8* noundef %data, i64 noundef %count) #10
  br label %return

if.then31:                                        ; preds = %if.then22
  %call32 = tail call i32 @EVP_DigestVerifyUpdate(%struct.evp_md_ctx_st* noundef nonnull %ctx, i8* noundef %data, i64 noundef %count) #10
  br label %return

if.end33:                                         ; preds = %if.then22
  tail call void @ERR_new() #10
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 377, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.EVP_DigestUpdate, i64 0, i64 0)) #10
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 6, i32 noundef 189, i8* noundef null) #10
  br label %return

if.end34:                                         ; preds = %land.lhs.true, %land.lhs.true19, %if.end
  %digest = getelementptr inbounds %struct.evp_md_ctx_st, %struct.evp_md_ctx_st* %ctx, i64 0, i32 1
  %4 = load %struct.evp_md_st*, %struct.evp_md_st** %digest, align 8, !tbaa !10
  %cmp35 = icmp eq %struct.evp_md_st* %4, null
  br i1 %cmp35, label %legacy, label %lor.lhs.false36

lor.lhs.false36:                                  ; preds = %if.end34
  %prov = getelementptr inbounds %struct.evp_md_st, %struct.evp_md_st* %4, i64 0, i32 16
  %5 = load %struct.ossl_provider_st*, %struct.ossl_provider_st** %prov, align 8, !tbaa !32
  %cmp38 = icmp eq %struct.ossl_provider_st* %5, null
  br i1 %cmp38, label %legacy, label %lor.lhs.false39

lor.lhs.false39:                                  ; preds = %lor.lhs.false36
  %flags = getelementptr inbounds %struct.evp_md_ctx_st, %struct.evp_md_ctx_st* %ctx, i64 0, i32 3
  %6 = load i64, i64* %flags, align 8, !tbaa !31
  %and = and i64 %6, 256
  %cmp40.not = icmp eq i64 %and, 0
  br i1 %cmp40.not, label %if.end42, label %legacy

if.end42:                                         ; preds = %lor.lhs.false39
  %dupdate = getelementptr inbounds %struct.evp_md_st, %struct.evp_md_st* %4, i64 0, i32 21
  %7 = load i32 (i8*, i8*, i64)*, i32 (i8*, i8*, i64)** %dupdate, align 8, !tbaa !38
  %cmp44 = icmp eq i32 (i8*, i8*, i64)* %7, null
  br i1 %cmp44, label %if.then45, label %if.end46

if.then45:                                        ; preds = %if.end42
  tail call void @ERR_new() #10
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 387, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.EVP_DigestUpdate, i64 0, i64 0)) #10
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 6, i32 noundef 189, i8* noundef null) #10
  br label %return

if.end46:                                         ; preds = %if.end42
  %algctx49 = getelementptr inbounds %struct.evp_md_ctx_st, %struct.evp_md_ctx_st* %ctx, i64 0, i32 7
  %8 = load i8*, i8** %algctx49, align 8, !tbaa !4
  %call50 = tail call i32 %7(i8* noundef %8, i8* noundef %data, i64 noundef %count) #10
  br label %return

legacy:                                           ; preds = %if.end34, %lor.lhs.false36, %lor.lhs.false39
  %update = getelementptr inbounds %struct.evp_md_ctx_st, %struct.evp_md_ctx_st* %ctx, i64 0, i32 6
  %9 = load i32 (%struct.evp_md_ctx_st*, i8*, i64)*, i32 (%struct.evp_md_ctx_st*, i8*, i64)** %update, align 8, !tbaa !36
  %call51 = tail call i32 %9(%struct.evp_md_ctx_st* noundef nonnull %ctx, i8* noundef %data, i64 noundef %count) #10
  br label %return

return:                                           ; preds = %entry, %legacy, %if.end46, %if.then45, %if.end33, %if.then31, %if.then26
  %retval.0 = phi i32 [ %call, %if.then26 ], [ %call32, %if.then31 ], [ 0, %if.end33 ], [ %call51, %legacy ], [ 0, %if.then45 ], [ %call50, %if.end46 ], [ 1, %entry ]
  ret i32 %retval.0
}

declare i32 @EVP_DigestSignUpdate(%struct.evp_md_ctx_st* noundef, i8* noundef, i64 noundef) local_unnamed_addr #1

declare i32 @EVP_DigestVerifyUpdate(%struct.evp_md_ctx_st* noundef, i8* noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define i32 @EVP_DigestFinal(%struct.evp_md_ctx_st* noundef %ctx, i8* noundef %md, i32* noundef %size) local_unnamed_addr #0 {
entry:
  %call = tail call i32 @EVP_DigestFinal_ex(%struct.evp_md_ctx_st* noundef %ctx, i8* noundef %md, i32* noundef %size) #11
  %call1 = tail call i32 @EVP_MD_CTX_reset(%struct.evp_md_ctx_st* noundef %ctx) #11
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define i32 @EVP_DigestFinal_ex(%struct.evp_md_ctx_st* noundef %ctx, i8* noundef %md, i32* noundef writeonly %isize) local_unnamed_addr #0 {
entry:
  %size = alloca i64, align 8
  %0 = bitcast i64* %size to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #12
  store i64 0, i64* %size, align 8, !tbaa !39
  %digest = getelementptr inbounds %struct.evp_md_ctx_st, %struct.evp_md_ctx_st* %ctx, i64 0, i32 1
  %1 = load %struct.evp_md_st*, %struct.evp_md_st** %digest, align 8, !tbaa !10
  %cmp = icmp eq %struct.evp_md_st* %1, null
  br i1 %cmp, label %cleanup44, label %if.end

if.end:                                           ; preds = %entry
  %call = tail call i32 @EVP_MD_get_size(%struct.evp_md_st* noundef nonnull %1) #10
  %cmp2 = icmp slt i32 %call, 0
  br i1 %cmp2, label %cleanup44, label %if.end4

if.end4:                                          ; preds = %if.end
  %conv75 = zext i32 %call to i64
  %2 = load %struct.evp_md_st*, %struct.evp_md_st** %digest, align 8, !tbaa !10
  %prov = getelementptr inbounds %struct.evp_md_st, %struct.evp_md_st* %2, i64 0, i32 16
  %3 = load %struct.ossl_provider_st*, %struct.ossl_provider_st** %prov, align 8, !tbaa !32
  %cmp6 = icmp eq %struct.ossl_provider_st* %3, null
  br i1 %cmp6, label %legacy, label %if.end9

if.end9:                                          ; preds = %if.end4
  %dfinal = getelementptr inbounds %struct.evp_md_st, %struct.evp_md_st* %2, i64 0, i32 22
  %4 = load i32 (i8*, i8*, i64*, i64)*, i32 (i8*, i8*, i64*, i64)** %dfinal, align 8, !tbaa !40
  %cmp11 = icmp eq i32 (i8*, i8*, i64*, i64)* %4, null
  br i1 %cmp11, label %if.then13, label %if.end14

if.then13:                                        ; preds = %if.end9
  tail call void @ERR_new() #10
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 424, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.EVP_DigestFinal_ex, i64 0, i64 0)) #10
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 6, i32 noundef 188, i8* noundef null) #10
  br label %cleanup44

if.end14:                                         ; preds = %if.end9
  %algctx = getelementptr inbounds %struct.evp_md_ctx_st, %struct.evp_md_ctx_st* %ctx, i64 0, i32 7
  %5 = load i8*, i8** %algctx, align 8, !tbaa !4
  %call17 = call i32 %4(i8* noundef %5, i8* noundef %md, i64* noundef nonnull %size, i64 noundef %conv75) #10
  %cmp18.not = icmp eq i32* %isize, null
  br i1 %cmp18.not, label %cleanup44, label %if.then20

if.then20:                                        ; preds = %if.end14
  %6 = load i64, i64* %size, align 8, !tbaa !39
  %cmp21 = icmp ult i64 %6, 4294967296
  br i1 %cmp21, label %if.then23, label %if.else

if.then23:                                        ; preds = %if.then20
  %conv24 = trunc i64 %6 to i32
  store i32 %conv24, i32* %isize, align 4, !tbaa !21
  br label %cleanup44

if.else:                                          ; preds = %if.then20
  call void @ERR_new() #10
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 434, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.EVP_DigestFinal_ex, i64 0, i64 0)) #10
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 6, i32 noundef 188, i8* noundef null) #10
  br label %cleanup44

legacy:                                           ; preds = %if.end4
  %cmp27 = icmp ult i32 %call, 65
  br i1 %cmp27, label %cond.end, label %cond.false

cond.false:                                       ; preds = %legacy
  tail call void @OPENSSL_die(i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 443) #13
  unreachable

cond.end:                                         ; preds = %legacy
  %final = getelementptr inbounds %struct.evp_md_st, %struct.evp_md_st* %2, i64 0, i32 7
  %7 = load i32 (%struct.evp_md_ctx_st*, i8*)*, i32 (%struct.evp_md_ctx_st*, i8*)** %final, align 8, !tbaa !41
  %call30 = tail call i32 %7(%struct.evp_md_ctx_st* noundef nonnull %ctx, i8* noundef %md) #10
  %cmp31.not = icmp eq i32* %isize, null
  br i1 %cmp31.not, label %if.end35, label %if.then33

if.then33:                                        ; preds = %cond.end
  store i32 %call, i32* %isize, align 4, !tbaa !21
  br label %if.end35

if.end35:                                         ; preds = %if.then33, %cond.end
  %8 = load %struct.evp_md_st*, %struct.evp_md_st** %digest, align 8, !tbaa !10
  %cleanup = getelementptr inbounds %struct.evp_md_st, %struct.evp_md_st* %8, i64 0, i32 9
  %9 = load i32 (%struct.evp_md_ctx_st*)*, i32 (%struct.evp_md_ctx_st*)** %cleanup, align 8, !tbaa !14
  %tobool.not = icmp eq i32 (%struct.evp_md_ctx_st*)* %9, null
  br i1 %tobool.not, label %if.end41, label %if.then37

if.then37:                                        ; preds = %if.end35
  %call40 = tail call i32 %9(%struct.evp_md_ctx_st* noundef nonnull %ctx) #10
  tail call void @EVP_MD_CTX_set_flags(%struct.evp_md_ctx_st* noundef nonnull %ctx, i32 noundef 2) #10
  %.pre = load %struct.evp_md_st*, %struct.evp_md_st** %digest, align 8, !tbaa !10
  br label %if.end41

if.end41:                                         ; preds = %if.then37, %if.end35
  %10 = phi %struct.evp_md_st* [ %.pre, %if.then37 ], [ %8, %if.end35 ]
  %md_data = getelementptr inbounds %struct.evp_md_ctx_st, %struct.evp_md_ctx_st* %ctx, i64 0, i32 4
  %11 = load i8*, i8** %md_data, align 8, !tbaa !16
  %ctx_size = getelementptr inbounds %struct.evp_md_st, %struct.evp_md_st* %10, i64 0, i32 11
  %12 = load i32, i32* %ctx_size, align 4, !tbaa !15
  %conv43 = sext i32 %12 to i64
  tail call void @OPENSSL_cleanse(i8* noundef %11, i64 noundef %conv43) #10
  br label %cleanup44

cleanup44:                                        ; preds = %if.end14, %if.else, %if.then23, %if.end, %entry, %if.end41, %if.then13
  %retval.0 = phi i32 [ %call30, %if.end41 ], [ 0, %if.then13 ], [ 0, %entry ], [ 0, %if.end ], [ %call17, %if.then23 ], [ 0, %if.else ], [ %call17, %if.end14 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #12
  ret i32 %retval.0
}

declare i32 @EVP_MD_get_size(%struct.evp_md_st* noundef) local_unnamed_addr #1

; Function Attrs: noreturn
declare void @OPENSSL_die(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define i32 @EVP_DigestFinalXOF(%struct.evp_md_ctx_st* noundef %ctx, i8* noundef %md, i64 noundef %size) local_unnamed_addr #0 {
entry:
  %size.addr = alloca i64, align 8
  %params = alloca [2 x %struct.ossl_param_st], align 16
  %tmp11 = alloca %struct.ossl_param_st, align 8
  store i64 %size, i64* %size.addr, align 8, !tbaa !39
  %0 = bitcast [2 x %struct.ossl_param_st]* %params to i8*
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %0) #12
  %digest = getelementptr inbounds %struct.evp_md_ctx_st, %struct.evp_md_ctx_st* %ctx, i64 0, i32 1
  %1 = load %struct.evp_md_st*, %struct.evp_md_st** %digest, align 8, !tbaa !10
  %cmp = icmp eq %struct.evp_md_st* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #10
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 462, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.EVP_DigestFinalXOF, i64 0, i64 0)) #10
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 6, i32 noundef 218, i8* noundef null) #10
  br label %cleanup38

if.end:                                           ; preds = %entry
  %prov = getelementptr inbounds %struct.evp_md_st, %struct.evp_md_st* %1, i64 0, i32 16
  %2 = load %struct.ossl_provider_st*, %struct.ossl_provider_st** %prov, align 8, !tbaa !32
  %cmp2 = icmp eq %struct.ossl_provider_st* %2, null
  br i1 %cmp2, label %legacy, label %if.end4

if.end4:                                          ; preds = %if.end
  %dfinal = getelementptr inbounds %struct.evp_md_st, %struct.evp_md_st* %1, i64 0, i32 22
  %3 = load i32 (i8*, i8*, i64*, i64)*, i32 (i8*, i8*, i64*, i64)** %dfinal, align 8, !tbaa !40
  %cmp6 = icmp eq i32 (i8*, i8*, i64*, i64)* %3, null
  br i1 %cmp6, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.end4
  tail call void @ERR_new() #10
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 470, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.EVP_DigestFinalXOF, i64 0, i64 0)) #10
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 6, i32 noundef 188, i8* noundef null) #10
  br label %cleanup38

if.end8:                                          ; preds = %if.end4
  %arrayidx = getelementptr inbounds [2 x %struct.ossl_param_st], [2 x %struct.ossl_param_st]* %params, i64 0, i64 0
  %params64 = getelementptr inbounds [2 x %struct.ossl_param_st], [2 x %struct.ossl_param_st]* %params, i64 0, i64 0
  call void @OSSL_PARAM_construct_size_t(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %params64, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i64* noundef nonnull %size.addr) #10
  %arrayidx10 = getelementptr inbounds [2 x %struct.ossl_param_st], [2 x %struct.ossl_param_st]* %params, i64 0, i64 1
  %4 = bitcast %struct.ossl_param_st* %tmp11 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %4) #12
  call void @OSSL_PARAM_construct_end(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %tmp11) #10
  %5 = bitcast %struct.ossl_param_st* %arrayidx10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(40) %5, i8* noundef nonnull align 8 dereferenceable(40) %4, i64 40, i1 false), !tbaa.struct !42
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %4) #12
  %call = call i32 @EVP_MD_CTX_set_params(%struct.evp_md_ctx_st* noundef nonnull %ctx, %struct.ossl_param_st* noundef nonnull %arrayidx) #11
  %cmp12 = icmp sgt i32 %call, 0
  br i1 %cmp12, label %if.then13, label %cleanup38

if.then13:                                        ; preds = %if.end8
  %6 = load %struct.evp_md_st*, %struct.evp_md_st** %digest, align 8, !tbaa !10
  %dfinal15 = getelementptr inbounds %struct.evp_md_st, %struct.evp_md_st* %6, i64 0, i32 22
  %7 = load i32 (i8*, i8*, i64*, i64)*, i32 (i8*, i8*, i64*, i64)** %dfinal15, align 8, !tbaa !40
  %algctx = getelementptr inbounds %struct.evp_md_ctx_st, %struct.evp_md_ctx_st* %ctx, i64 0, i32 7
  %8 = load i8*, i8** %algctx, align 8, !tbaa !4
  %9 = load i64, i64* %size.addr, align 8, !tbaa !39
  %call16 = call i32 %7(i8* noundef %8, i8* noundef %md, i64* noundef nonnull %size.addr, i64 noundef %9) #10
  br label %cleanup38

legacy:                                           ; preds = %if.end
  %flags = getelementptr inbounds %struct.evp_md_st, %struct.evp_md_st* %1, i64 0, i32 3
  %10 = load i64, i64* %flags, align 8, !tbaa !44
  %and = and i64 %10, 2
  %tobool = icmp ne i64 %and, 0
  %cmp19 = icmp ult i64 %size, 2147483648
  %or.cond = and i1 %cmp19, %tobool
  br i1 %or.cond, label %land.lhs.true20, label %if.else

land.lhs.true20:                                  ; preds = %legacy
  %md_ctrl = getelementptr inbounds %struct.evp_md_st, %struct.evp_md_st* %1, i64 0, i32 12
  %11 = load i32 (%struct.evp_md_ctx_st*, i32, i32, i8*)*, i32 (%struct.evp_md_ctx_st*, i32, i32, i8*)** %md_ctrl, align 8, !tbaa !45
  %conv = trunc i64 %size to i32
  %call22 = tail call i32 %11(%struct.evp_md_ctx_st* noundef nonnull %ctx, i32 noundef 3, i32 noundef %conv, i8* noundef null) #10
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.else, label %if.then24

if.then24:                                        ; preds = %land.lhs.true20
  %12 = load %struct.evp_md_st*, %struct.evp_md_st** %digest, align 8, !tbaa !10
  %final = getelementptr inbounds %struct.evp_md_st, %struct.evp_md_st* %12, i64 0, i32 7
  %13 = load i32 (%struct.evp_md_ctx_st*, i8*)*, i32 (%struct.evp_md_ctx_st*, i8*)** %final, align 8, !tbaa !41
  %call26 = tail call i32 %13(%struct.evp_md_ctx_st* noundef nonnull %ctx, i8* noundef %md) #10
  %14 = load %struct.evp_md_st*, %struct.evp_md_st** %digest, align 8, !tbaa !10
  %cleanup = getelementptr inbounds %struct.evp_md_st, %struct.evp_md_st* %14, i64 0, i32 9
  %15 = load i32 (%struct.evp_md_ctx_st*)*, i32 (%struct.evp_md_ctx_st*)** %cleanup, align 8, !tbaa !14
  %cmp28.not = icmp eq i32 (%struct.evp_md_ctx_st*)* %15, null
  br i1 %cmp28.not, label %if.end34, label %if.then30

if.then30:                                        ; preds = %if.then24
  %call33 = tail call i32 %15(%struct.evp_md_ctx_st* noundef nonnull %ctx) #10
  tail call void @EVP_MD_CTX_set_flags(%struct.evp_md_ctx_st* noundef nonnull %ctx, i32 noundef 2) #10
  %.pre = load %struct.evp_md_st*, %struct.evp_md_st** %digest, align 8, !tbaa !10
  br label %if.end34

if.end34:                                         ; preds = %if.then30, %if.then24
  %16 = phi %struct.evp_md_st* [ %.pre, %if.then30 ], [ %14, %if.then24 ]
  %md_data = getelementptr inbounds %struct.evp_md_ctx_st, %struct.evp_md_ctx_st* %ctx, i64 0, i32 4
  %17 = load i8*, i8** %md_data, align 8, !tbaa !16
  %ctx_size = getelementptr inbounds %struct.evp_md_st, %struct.evp_md_st* %16, i64 0, i32 11
  %18 = load i32, i32* %ctx_size, align 4, !tbaa !15
  %conv36 = sext i32 %18 to i64
  tail call void @OPENSSL_cleanse(i8* noundef %17, i64 noundef %conv36) #10
  br label %cleanup38

if.else:                                          ; preds = %land.lhs.true20, %legacy
  tail call void @ERR_new() #10
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 493, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.EVP_DigestFinalXOF, i64 0, i64 0)) #10
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 6, i32 noundef 178, i8* noundef null) #10
  br label %cleanup38

cleanup38:                                        ; preds = %if.end34, %if.else, %if.end8, %if.then13, %if.then7, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 0, %if.then7 ], [ %call16, %if.then13 ], [ 0, %if.end8 ], [ %call26, %if.end34 ], [ 0, %if.else ]
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %0) #12
  ret i32 %retval.0
}

declare void @OSSL_PARAM_construct_size_t(%struct.ossl_param_st* sret(%struct.ossl_param_st) align 8, i8* noundef, i64* noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #4

declare void @OSSL_PARAM_construct_end(%struct.ossl_param_st* sret(%struct.ossl_param_st) align 8) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define i32 @EVP_MD_CTX_set_params(%struct.evp_md_ctx_st* nocapture noundef readonly %ctx, %struct.ossl_param_st* noundef %params) local_unnamed_addr #0 {
entry:
  %pctx1 = getelementptr inbounds %struct.evp_md_ctx_st, %struct.evp_md_ctx_st* %ctx, i64 0, i32 5
  %0 = load %struct.evp_pkey_ctx_st*, %struct.evp_pkey_ctx_st** %pctx1, align 8, !tbaa !22
  %cmp.not = icmp eq %struct.evp_pkey_ctx_st* %0, null
  br i1 %cmp.not, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %operation = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %0, i64 0, i32 0
  %1 = load i32, i32* %operation, align 8, !tbaa !26
  switch i32 %1, label %if.end [
    i32 256, label %land.lhs.true5
    i32 128, label %land.lhs.true5
  ]

land.lhs.true5:                                   ; preds = %land.lhs.true, %land.lhs.true
  %2 = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %0, i64 0, i32 5, i32 0, i32 1
  %3 = load i8*, i8** %2, align 8, !tbaa !29
  %cmp6.not = icmp eq i8* %3, null
  br i1 %cmp6.not, label %if.end, label %land.lhs.true7

land.lhs.true7:                                   ; preds = %land.lhs.true5
  %op = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %0, i64 0, i32 5
  %signature = bitcast %union.anon* %op to %struct.evp_signature_st**
  %4 = load %struct.evp_signature_st*, %struct.evp_signature_st** %signature, align 8, !tbaa !29
  %set_ctx_md_params = getelementptr inbounds %struct.evp_signature_st, %struct.evp_signature_st* %4, i64 0, i32 29
  %5 = load i32 (i8*, %struct.ossl_param_st*)*, i32 (i8*, %struct.ossl_param_st*)** %set_ctx_md_params, align 8, !tbaa !46
  %cmp10.not = icmp eq i32 (i8*, %struct.ossl_param_st*)* %5, null
  br i1 %cmp10.not, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true7
  %call = tail call i32 %5(i8* noundef nonnull %3, %struct.ossl_param_st* noundef %params) #10
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true, %land.lhs.true7, %land.lhs.true5, %entry
  %digest = getelementptr inbounds %struct.evp_md_ctx_st, %struct.evp_md_ctx_st* %ctx, i64 0, i32 1
  %6 = load %struct.evp_md_st*, %struct.evp_md_st** %digest, align 8, !tbaa !10
  %cmp18.not = icmp eq %struct.evp_md_st* %6, null
  br i1 %cmp18.not, label %cleanup, label %land.lhs.true19

land.lhs.true19:                                  ; preds = %if.end
  %set_ctx_params = getelementptr inbounds %struct.evp_md_st, %struct.evp_md_st* %6, i64 0, i32 27
  %7 = load i32 (i8*, %struct.ossl_param_st*)*, i32 (i8*, %struct.ossl_param_st*)** %set_ctx_params, align 8, !tbaa !48
  %cmp21.not = icmp eq i32 (i8*, %struct.ossl_param_st*)* %7, null
  br i1 %cmp21.not, label %cleanup, label %if.then22

if.then22:                                        ; preds = %land.lhs.true19
  %algctx25 = getelementptr inbounds %struct.evp_md_ctx_st, %struct.evp_md_ctx_st* %ctx, i64 0, i32 7
  %8 = load i8*, i8** %algctx25, align 8, !tbaa !4
  %call26 = tail call i32 %7(i8* noundef %8, %struct.ossl_param_st* noundef %params) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %land.lhs.true19, %if.then22, %if.then
  %retval.0 = phi i32 [ %call, %if.then ], [ %call26, %if.then22 ], [ 0, %land.lhs.true19 ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @EVP_MD_CTX_copy(%struct.evp_md_ctx_st* noundef %out, %struct.evp_md_ctx_st* noundef %in) local_unnamed_addr #0 {
entry:
  %call = tail call i32 @EVP_MD_CTX_reset(%struct.evp_md_ctx_st* noundef %out) #11
  %call1 = tail call i32 @EVP_MD_CTX_copy_ex(%struct.evp_md_ctx_st* noundef %out, %struct.evp_md_ctx_st* noundef %in) #11
  ret i32 %call1
}

; Function Attrs: noinline nounwind uwtable
define i32 @EVP_MD_CTX_copy_ex(%struct.evp_md_ctx_st* noundef %out, %struct.evp_md_ctx_st* noundef %in) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.evp_md_ctx_st* %in, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %digest = getelementptr inbounds %struct.evp_md_ctx_st, %struct.evp_md_ctx_st* %in, i64 0, i32 1
  %0 = load %struct.evp_md_st*, %struct.evp_md_st** %digest, align 8, !tbaa !10
  %cmp1 = icmp eq %struct.evp_md_st* %0, null
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  tail call void @ERR_new() #10
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 510, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.EVP_MD_CTX_copy_ex, i64 0, i64 0)) #10
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 6, i32 noundef 111, i8* noundef null) #10
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %prov = getelementptr inbounds %struct.evp_md_st, %struct.evp_md_st* %0, i64 0, i32 16
  %1 = load %struct.ossl_provider_st*, %struct.ossl_provider_st** %prov, align 8, !tbaa !32
  %cmp3 = icmp eq %struct.ossl_provider_st* %1, null
  br i1 %cmp3, label %legacy, label %lor.lhs.false4

lor.lhs.false4:                                   ; preds = %if.end
  %flags = getelementptr inbounds %struct.evp_md_ctx_st, %struct.evp_md_ctx_st* %in, i64 0, i32 3
  %2 = load i64, i64* %flags, align 8, !tbaa !31
  %and = and i64 %2, 256
  %cmp5.not = icmp eq i64 %and, 0
  br i1 %cmp5.not, label %if.end7, label %legacy

if.end7:                                          ; preds = %lor.lhs.false4
  %dupctx = getelementptr inbounds %struct.evp_md_st, %struct.evp_md_st* %0, i64 0, i32 25
  %3 = load i8* (i8*)*, i8* (i8*)** %dupctx, align 8, !tbaa !49
  %cmp9 = icmp eq i8* (i8*)* %3, null
  br i1 %cmp9, label %if.then10, label %if.end11

if.then10:                                        ; preds = %if.end7
  tail call void @ERR_new() #10
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 519, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.EVP_MD_CTX_copy_ex, i64 0, i64 0)) #10
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 6, i32 noundef 190, i8* noundef null) #10
  br label %cleanup

if.end11:                                         ; preds = %if.end7
  %call = tail call i32 @EVP_MD_CTX_reset(%struct.evp_md_ctx_st* noundef %out) #11
  %fetched_digest = getelementptr inbounds %struct.evp_md_ctx_st, %struct.evp_md_ctx_st* %out, i64 0, i32 8
  %4 = load %struct.evp_md_st*, %struct.evp_md_st** %fetched_digest, align 8, !tbaa !18
  %cmp12.not = icmp eq %struct.evp_md_st* %4, null
  br i1 %cmp12.not, label %if.end15, label %if.then13

if.then13:                                        ; preds = %if.end11
  tail call void @EVP_MD_free(%struct.evp_md_st* noundef nonnull %4) #11
  br label %if.end15

if.end15:                                         ; preds = %if.then13, %if.end11
  %5 = bitcast %struct.evp_md_ctx_st* %out to i8*
  %6 = bitcast %struct.evp_md_ctx_st* %in to i8*
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(72) %5, i8* noundef nonnull align 8 dereferenceable(72) %6, i64 72, i1 false), !tbaa.struct !50
  %pctx = getelementptr inbounds %struct.evp_md_ctx_st, %struct.evp_md_ctx_st* %out, i64 0, i32 5
  store %struct.evp_pkey_ctx_st* null, %struct.evp_pkey_ctx_st** %pctx, align 8, !tbaa !22
  %algctx = getelementptr inbounds %struct.evp_md_ctx_st, %struct.evp_md_ctx_st* %out, i64 0, i32 7
  store i8* null, i8** %algctx, align 8, !tbaa !4
  %fetched_digest16 = getelementptr inbounds %struct.evp_md_ctx_st, %struct.evp_md_ctx_st* %in, i64 0, i32 8
  %7 = load %struct.evp_md_st*, %struct.evp_md_st** %fetched_digest16, align 8, !tbaa !18
  %cmp17.not = icmp eq %struct.evp_md_st* %7, null
  br i1 %cmp17.not, label %if.end21, label %if.then18

if.then18:                                        ; preds = %if.end15
  %call20 = tail call i32 @EVP_MD_up_ref(%struct.evp_md_st* noundef nonnull %7) #11
  br label %if.end21

if.end21:                                         ; preds = %if.then18, %if.end15
  %algctx22 = getelementptr inbounds %struct.evp_md_ctx_st, %struct.evp_md_ctx_st* %in, i64 0, i32 7
  %8 = load i8*, i8** %algctx22, align 8, !tbaa !4
  %cmp23.not = icmp eq i8* %8, null
  br i1 %cmp23.not, label %if.end34, label %if.then24

if.then24:                                        ; preds = %if.end21
  %9 = load %struct.evp_md_st*, %struct.evp_md_st** %digest, align 8, !tbaa !10
  %dupctx26 = getelementptr inbounds %struct.evp_md_st, %struct.evp_md_st* %9, i64 0, i32 25
  %10 = load i8* (i8*)*, i8* (i8*)** %dupctx26, align 8, !tbaa !49
  %call28 = tail call i8* %10(i8* noundef nonnull %8) #10
  store i8* %call28, i8** %algctx, align 8, !tbaa !4
  %cmp31 = icmp eq i8* %call28, null
  br i1 %cmp31, label %if.then32, label %if.end34

if.then32:                                        ; preds = %if.then24
  tail call void @ERR_new() #10
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 537, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.EVP_MD_CTX_copy_ex, i64 0, i64 0)) #10
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 6, i32 noundef 190, i8* noundef null) #10
  br label %cleanup

if.end34:                                         ; preds = %if.then24, %if.end21
  tail call void @EVP_MD_CTX_clear_flags(%struct.evp_md_ctx_st* noundef nonnull %out, i32 noundef 1024) #10
  %pctx35 = getelementptr inbounds %struct.evp_md_ctx_st, %struct.evp_md_ctx_st* %in, i64 0, i32 5
  %11 = load %struct.evp_pkey_ctx_st*, %struct.evp_pkey_ctx_st** %pctx35, align 8, !tbaa !22
  %cmp36.not = icmp eq %struct.evp_pkey_ctx_st* %11, null
  br i1 %cmp36.not, label %cleanup, label %if.then37

if.then37:                                        ; preds = %if.end34
  %call39 = tail call %struct.evp_pkey_ctx_st* @EVP_PKEY_CTX_dup(%struct.evp_pkey_ctx_st* noundef nonnull %11) #10
  store %struct.evp_pkey_ctx_st* %call39, %struct.evp_pkey_ctx_st** %pctx, align 8, !tbaa !22
  %cmp42 = icmp eq %struct.evp_pkey_ctx_st* %call39, null
  br i1 %cmp42, label %if.then43, label %cleanup

if.then43:                                        ; preds = %if.then37
  tail call void @ERR_new() #10
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 548, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.EVP_MD_CTX_copy_ex, i64 0, i64 0)) #10
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 6, i32 noundef 190, i8* noundef null) #10
  %call44 = tail call i32 @EVP_MD_CTX_reset(%struct.evp_md_ctx_st* noundef nonnull %out) #11
  br label %cleanup

legacy:                                           ; preds = %if.end, %lor.lhs.false4
  %engine = getelementptr inbounds %struct.evp_md_ctx_st, %struct.evp_md_ctx_st* %in, i64 0, i32 2
  %12 = load %struct.engine_st*, %struct.engine_st** %engine, align 8, !tbaa !17
  %tobool.not = icmp eq %struct.engine_st* %12, null
  br i1 %tobool.not, label %if.end51, label %land.lhs.true

land.lhs.true:                                    ; preds = %legacy
  %call48 = tail call i32 @ENGINE_init(%struct.engine_st* noundef nonnull %12) #10
  %tobool49.not = icmp eq i32 %call48, 0
  br i1 %tobool49.not, label %if.then50, label %land.lhs.true.if.end51_crit_edge

land.lhs.true.if.end51_crit_edge:                 ; preds = %land.lhs.true
  %.pre = load %struct.evp_md_st*, %struct.evp_md_st** %digest, align 8, !tbaa !10
  br label %if.end51

if.then50:                                        ; preds = %land.lhs.true
  tail call void @ERR_new() #10
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 562, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.EVP_MD_CTX_copy_ex, i64 0, i64 0)) #10
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 6, i32 noundef 524326, i8* noundef null) #10
  br label %cleanup

if.end51:                                         ; preds = %land.lhs.true.if.end51_crit_edge, %legacy
  %13 = phi %struct.evp_md_st* [ %.pre, %land.lhs.true.if.end51_crit_edge ], [ %0, %legacy ]
  %digest52 = getelementptr inbounds %struct.evp_md_ctx_st, %struct.evp_md_ctx_st* %out, i64 0, i32 1
  %14 = load %struct.evp_md_st*, %struct.evp_md_st** %digest52, align 8, !tbaa !10
  %cmp54 = icmp eq %struct.evp_md_st* %14, %13
  br i1 %cmp54, label %if.then55, label %if.end56

if.then55:                                        ; preds = %if.end51
  %md_data = getelementptr inbounds %struct.evp_md_ctx_st, %struct.evp_md_ctx_st* %out, i64 0, i32 4
  %15 = load i8*, i8** %md_data, align 8, !tbaa !16
  tail call void @EVP_MD_CTX_set_flags(%struct.evp_md_ctx_st* noundef nonnull %out, i32 noundef 4) #10
  br label %if.end56

if.end56:                                         ; preds = %if.end51, %if.then55
  %tmp_buf.0 = phi i8* [ %15, %if.then55 ], [ null, %if.end51 ]
  %call57 = tail call i32 @EVP_MD_CTX_reset(%struct.evp_md_ctx_st* noundef nonnull %out) #11
  %16 = bitcast %struct.evp_md_ctx_st* %out to i8*
  %17 = bitcast %struct.evp_md_ctx_st* %in to i8*
  %call58 = tail call i8* @memcpy(i8* noundef %16, i8* noundef nonnull %17, i64 noundef 72) #10
  tail call void @EVP_MD_CTX_clear_flags(%struct.evp_md_ctx_st* noundef nonnull %out, i32 noundef 1024) #10
  %md_data59 = getelementptr inbounds %struct.evp_md_ctx_st, %struct.evp_md_ctx_st* %out, i64 0, i32 4
  store i8* null, i8** %md_data59, align 8, !tbaa !16
  %pctx60 = getelementptr inbounds %struct.evp_md_ctx_st, %struct.evp_md_ctx_st* %out, i64 0, i32 5
  store %struct.evp_pkey_ctx_st* null, %struct.evp_pkey_ctx_st** %pctx60, align 8, !tbaa !22
  %md_data61 = getelementptr inbounds %struct.evp_md_ctx_st, %struct.evp_md_ctx_st* %in, i64 0, i32 4
  %18 = load i8*, i8** %md_data61, align 8, !tbaa !16
  %tobool62.not = icmp eq i8* %18, null
  br i1 %tobool62.not, label %if.end87, label %land.lhs.true63

land.lhs.true63:                                  ; preds = %if.end56
  %19 = load %struct.evp_md_st*, %struct.evp_md_st** %digest52, align 8, !tbaa !10
  %ctx_size = getelementptr inbounds %struct.evp_md_st, %struct.evp_md_st* %19, i64 0, i32 11
  %20 = load i32, i32* %ctx_size, align 4, !tbaa !15
  %tobool65.not = icmp eq i32 %20, 0
  br i1 %tobool65.not, label %if.end87, label %if.then66

if.then66:                                        ; preds = %land.lhs.true63
  %tobool67.not = icmp eq i8* %tmp_buf.0, null
  br i1 %tobool67.not, label %if.else70, label %if.then68

if.then68:                                        ; preds = %if.then66
  store i8* %tmp_buf.0, i8** %md_data59, align 8, !tbaa !16
  br label %if.end80

if.else70:                                        ; preds = %if.then66
  %conv = sext i32 %20 to i64
  %call73 = tail call i8* @CRYPTO_malloc(i64 noundef %conv, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 589) #10
  store i8* %call73, i8** %md_data59, align 8, !tbaa !16
  %cmp76 = icmp eq i8* %call73, null
  br i1 %cmp76, label %if.then78, label %if.else70.if.end80_crit_edge

if.else70.if.end80_crit_edge:                     ; preds = %if.else70
  %.pre173 = load %struct.evp_md_st*, %struct.evp_md_st** %digest52, align 8, !tbaa !10
  %ctx_size84.phi.trans.insert = getelementptr inbounds %struct.evp_md_st, %struct.evp_md_st* %.pre173, i64 0, i32 11
  %.pre174 = load i32, i32* %ctx_size84.phi.trans.insert, align 4, !tbaa !15
  br label %if.end80

if.then78:                                        ; preds = %if.else70
  tail call void @ERR_new() #10
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 591, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.EVP_MD_CTX_copy_ex, i64 0, i64 0)) #10
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 6, i32 noundef 786688, i8* noundef null) #10
  br label %cleanup

if.end80:                                         ; preds = %if.else70.if.end80_crit_edge, %if.then68
  %21 = phi i32 [ %.pre174, %if.else70.if.end80_crit_edge ], [ %20, %if.then68 ]
  %22 = phi i8* [ %call73, %if.else70.if.end80_crit_edge ], [ %tmp_buf.0, %if.then68 ]
  %23 = load i8*, i8** %md_data61, align 8, !tbaa !16
  %conv85 = sext i32 %21 to i64
  %call86 = tail call i8* @memcpy(i8* noundef nonnull %22, i8* noundef %23, i64 noundef %conv85) #10
  br label %if.end87

if.end87:                                         ; preds = %if.end80, %land.lhs.true63, %if.end56
  %update = getelementptr inbounds %struct.evp_md_ctx_st, %struct.evp_md_ctx_st* %in, i64 0, i32 6
  %24 = load i32 (%struct.evp_md_ctx_st*, i8*, i64)*, i32 (%struct.evp_md_ctx_st*, i8*, i64)** %update, align 8, !tbaa !36
  %update88 = getelementptr inbounds %struct.evp_md_ctx_st, %struct.evp_md_ctx_st* %out, i64 0, i32 6
  store i32 (%struct.evp_md_ctx_st*, i8*, i64)* %24, i32 (%struct.evp_md_ctx_st*, i8*, i64)** %update88, align 8, !tbaa !36
  %pctx89 = getelementptr inbounds %struct.evp_md_ctx_st, %struct.evp_md_ctx_st* %in, i64 0, i32 5
  %25 = load %struct.evp_pkey_ctx_st*, %struct.evp_pkey_ctx_st** %pctx89, align 8, !tbaa !22
  %tobool90.not = icmp eq %struct.evp_pkey_ctx_st* %25, null
  br i1 %tobool90.not, label %if.end100, label %if.then91

if.then91:                                        ; preds = %if.end87
  %call93 = tail call %struct.evp_pkey_ctx_st* @EVP_PKEY_CTX_dup(%struct.evp_pkey_ctx_st* noundef nonnull %25) #10
  store %struct.evp_pkey_ctx_st* %call93, %struct.evp_pkey_ctx_st** %pctx60, align 8, !tbaa !22
  %tobool96.not = icmp eq %struct.evp_pkey_ctx_st* %call93, null
  br i1 %tobool96.not, label %if.then97, label %if.end100

if.then97:                                        ; preds = %if.then91
  %call98 = tail call i32 @EVP_MD_CTX_reset(%struct.evp_md_ctx_st* noundef nonnull %out) #11
  br label %cleanup

if.end100:                                        ; preds = %if.then91, %if.end87
  %26 = load %struct.evp_md_st*, %struct.evp_md_st** %digest52, align 8, !tbaa !10
  %copy = getelementptr inbounds %struct.evp_md_st, %struct.evp_md_st* %26, i64 0, i32 8
  %27 = load i32 (%struct.evp_md_ctx_st*, %struct.evp_md_ctx_st*)*, i32 (%struct.evp_md_ctx_st*, %struct.evp_md_ctx_st*)** %copy, align 8, !tbaa !51
  %tobool102.not = icmp eq i32 (%struct.evp_md_ctx_st*, %struct.evp_md_ctx_st*)* %27, null
  br i1 %tobool102.not, label %cleanup, label %if.then103

if.then103:                                       ; preds = %if.end100
  %call106 = tail call i32 %27(%struct.evp_md_ctx_st* noundef nonnull %out, %struct.evp_md_ctx_st* noundef nonnull %in) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end100, %if.end34, %if.then37, %if.then103, %if.then97, %if.then78, %if.then50, %if.then43, %if.then32, %if.then10, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ %call106, %if.then103 ], [ 0, %if.then97 ], [ 0, %if.then78 ], [ 0, %if.then50 ], [ 0, %if.then10 ], [ 0, %if.then32 ], [ 0, %if.then43 ], [ 1, %if.then37 ], [ 1, %if.end34 ], [ 1, %if.end100 ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline nounwind uwtable willreturn
define i32 @EVP_MD_up_ref(%struct.evp_md_st* nocapture noundef %md) local_unnamed_addr #5 {
entry:
  %ref = alloca i32, align 4
  %0 = bitcast i32* %ref to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #12
  %origin = getelementptr inbounds %struct.evp_md_st, %struct.evp_md_st* %md, i64 0, i32 4
  %1 = load i32, i32* %origin, align 8, !tbaa !20
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %refcnt = getelementptr inbounds %struct.evp_md_st, %struct.evp_md_st* %md, i64 0, i32 17
  call fastcc void @CRYPTO_UP_REF(i32* noundef nonnull %refcnt, i32* noundef nonnull %ref) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #12
  ret i32 1
}

declare void @EVP_MD_CTX_clear_flags(%struct.evp_md_ctx_st* noundef, i32 noundef) local_unnamed_addr #1

declare %struct.evp_pkey_ctx_st* @EVP_PKEY_CTX_dup(%struct.evp_pkey_ctx_st* noundef) local_unnamed_addr #1

declare i32 @ENGINE_init(%struct.engine_st* noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare i8* @memcpy(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #6

declare i8* @CRYPTO_malloc(i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define i32 @EVP_Digest(i8* noundef %data, i64 noundef %count, i8* noundef %md, i32* noundef %size, %struct.evp_md_st* noundef %type, %struct.engine_st* noundef %impl) local_unnamed_addr #0 {
entry:
  %call = tail call %struct.evp_md_ctx_st* @EVP_MD_CTX_new() #11
  %cmp = icmp eq %struct.evp_md_ctx_st* %call, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  tail call void @EVP_MD_CTX_set_flags(%struct.evp_md_ctx_st* noundef nonnull %call, i32 noundef 1) #10
  %call1 = tail call i32 @EVP_DigestInit_ex(%struct.evp_md_ctx_st* noundef nonnull %call, %struct.evp_md_st* noundef %type, %struct.engine_st* noundef %impl) #11
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %land.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  %call2 = tail call i32 @EVP_DigestUpdate(%struct.evp_md_ctx_st* noundef nonnull %call, i8* noundef %data, i64 noundef %count) #11
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %land.lhs.true
  %call4 = tail call i32 @EVP_DigestFinal_ex(%struct.evp_md_ctx_st* noundef nonnull %call, i8* noundef %md, i32* noundef %size) #11
  %tobool5 = icmp ne i32 %call4, 0
  %phi.cast = zext i1 %tobool5 to i32
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %if.end
  %0 = phi i32 [ 0, %land.lhs.true ], [ 0, %if.end ], [ %phi.cast, %land.rhs ]
  tail call void @EVP_MD_CTX_free(%struct.evp_md_ctx_st* noundef nonnull %call) #11
  br label %cleanup

cleanup:                                          ; preds = %entry, %land.end
  %retval.0 = phi i32 [ %0, %land.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @EVP_Q_digest(%struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef %name, i8* noundef %propq, i8* noundef %data, i64 noundef %datalen, i8* noundef %md, i64* noundef writeonly %mdlen) local_unnamed_addr #0 {
entry:
  %temp = alloca i32, align 4
  %call = tail call %struct.evp_md_st* @EVP_MD_fetch(%struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef %name, i8* noundef %propq) #11
  %0 = bitcast i32* %temp to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #12
  store i32 0, i32* %temp, align 4, !tbaa !21
  %cmp.not = icmp eq %struct.evp_md_st* %call, null
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call1 = call i32 @EVP_Digest(i8* noundef %data, i64 noundef %datalen, i8* noundef %md, i32* noundef nonnull %temp, %struct.evp_md_st* noundef nonnull %call, %struct.engine_st* noundef null) #11
  call void @EVP_MD_free(%struct.evp_md_st* noundef nonnull %call) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %ret.0 = phi i32 [ %call1, %if.then ], [ 0, %entry ]
  %cmp2.not = icmp eq i64* %mdlen, null
  br i1 %cmp2.not, label %if.end4, label %if.then3

if.then3:                                         ; preds = %if.end
  %1 = load i32, i32* %temp, align 4, !tbaa !21
  %conv = zext i32 %1 to i64
  store i64 %conv, i64* %mdlen, align 8, !tbaa !39
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %if.end
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #12
  ret i32 %ret.0
}

; Function Attrs: noinline nounwind uwtable
define %struct.evp_md_st* @EVP_MD_fetch(%struct.ossl_lib_ctx_st* noundef %ctx, i8* noundef %algorithm, i8* noundef %properties) local_unnamed_addr #0 {
entry:
  %call = tail call i8* @evp_generic_fetch(%struct.ossl_lib_ctx_st* noundef %ctx, i32 noundef 1, i8* noundef %algorithm, i8* noundef %properties, i8* (i32, %struct.ossl_algorithm_st*, %struct.ossl_provider_st*)* noundef nonnull @evp_md_from_algorithm, i32 (i8*)* noundef nonnull @evp_md_up_ref, void (i8*)* noundef nonnull @evp_md_free) #10
  %0 = bitcast i8* %call to %struct.evp_md_st*
  ret %struct.evp_md_st* %0
}

; Function Attrs: noinline nounwind uwtable
define i32 @EVP_MD_get_params(%struct.evp_md_st* noundef readonly %digest, %struct.ossl_param_st* noundef %params) local_unnamed_addr #0 {
entry:
  %cmp.not = icmp eq %struct.evp_md_st* %digest, null
  br i1 %cmp.not, label %return, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %get_params = getelementptr inbounds %struct.evp_md_st, %struct.evp_md_st* %digest, i64 0, i32 26
  %0 = load i32 (%struct.ossl_param_st*)*, i32 (%struct.ossl_param_st*)** %get_params, align 8, !tbaa !52
  %cmp1.not = icmp eq i32 (%struct.ossl_param_st*)* %0, null
  br i1 %cmp1.not, label %return, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %call = tail call i32 %0(%struct.ossl_param_st* noundef %params) #10
  br label %return

return:                                           ; preds = %entry, %land.lhs.true, %if.then
  %retval.0 = phi i32 [ %call, %if.then ], [ 0, %land.lhs.true ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define %struct.ossl_param_st* @EVP_MD_gettable_params(%struct.evp_md_st* noundef %digest) local_unnamed_addr #0 {
entry:
  %cmp.not = icmp eq %struct.evp_md_st* %digest, null
  br i1 %cmp.not, label %return, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %gettable_params = getelementptr inbounds %struct.evp_md_st, %struct.evp_md_st* %digest, i64 0, i32 29
  %0 = load %struct.ossl_param_st* (i8*)*, %struct.ossl_param_st* (i8*)** %gettable_params, align 8, !tbaa !53
  %cmp1.not = icmp eq %struct.ossl_param_st* (i8*)* %0, null
  br i1 %cmp1.not, label %return, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %call = tail call %struct.ossl_provider_st* @EVP_MD_get0_provider(%struct.evp_md_st* noundef nonnull %digest) #10
  %call3 = tail call i8* @ossl_provider_ctx(%struct.ossl_provider_st* noundef %call) #10
  %call4 = tail call %struct.ossl_param_st* %0(i8* noundef %call3) #10
  br label %return

return:                                           ; preds = %entry, %land.lhs.true, %if.then
  %retval.0 = phi %struct.ossl_param_st* [ %call4, %if.then ], [ null, %land.lhs.true ], [ null, %entry ]
  ret %struct.ossl_param_st* %retval.0
}

declare i8* @ossl_provider_ctx(%struct.ossl_provider_st* noundef) local_unnamed_addr #1

declare %struct.ossl_provider_st* @EVP_MD_get0_provider(%struct.evp_md_st* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define %struct.ossl_param_st* @EVP_MD_settable_ctx_params(%struct.evp_md_st* noundef %md) local_unnamed_addr #0 {
entry:
  %cmp.not = icmp eq %struct.evp_md_st* %md, null
  br i1 %cmp.not, label %cleanup, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %settable_ctx_params = getelementptr inbounds %struct.evp_md_st, %struct.evp_md_st* %md, i64 0, i32 30
  %0 = load %struct.ossl_param_st* (i8*, i8*)*, %struct.ossl_param_st* (i8*, i8*)** %settable_ctx_params, align 8, !tbaa !54
  %cmp1.not = icmp eq %struct.ossl_param_st* (i8*, i8*)* %0, null
  br i1 %cmp1.not, label %cleanup, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %call = tail call %struct.ossl_provider_st* @EVP_MD_get0_provider(%struct.evp_md_st* noundef nonnull %md) #10
  %call2 = tail call i8* @ossl_provider_ctx(%struct.ossl_provider_st* noundef %call) #10
  %1 = load %struct.ossl_param_st* (i8*, i8*)*, %struct.ossl_param_st* (i8*, i8*)** %settable_ctx_params, align 8, !tbaa !54
  %call4 = tail call %struct.ossl_param_st* %1(i8* noundef null, i8* noundef %call2) #10
  br label %cleanup

cleanup:                                          ; preds = %entry, %land.lhs.true, %if.then
  %retval.0 = phi %struct.ossl_param_st* [ %call4, %if.then ], [ null, %land.lhs.true ], [ null, %entry ]
  ret %struct.ossl_param_st* %retval.0
}

; Function Attrs: noinline nounwind uwtable
define %struct.ossl_param_st* @EVP_MD_CTX_settable_params(%struct.evp_md_ctx_st* noundef readonly %ctx) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.evp_md_ctx_st* %ctx, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %pctx1 = getelementptr inbounds %struct.evp_md_ctx_st, %struct.evp_md_ctx_st* %ctx, i64 0, i32 5
  %0 = load %struct.evp_pkey_ctx_st*, %struct.evp_pkey_ctx_st** %pctx1, align 8, !tbaa !22
  %cmp2.not = icmp eq %struct.evp_pkey_ctx_st* %0, null
  br i1 %cmp2.not, label %if.end20, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  %operation = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %0, i64 0, i32 0
  %1 = load i32, i32* %operation, align 8, !tbaa !26
  switch i32 %1, label %if.end20 [
    i32 256, label %land.lhs.true6
    i32 128, label %land.lhs.true6
  ]

land.lhs.true6:                                   ; preds = %land.lhs.true, %land.lhs.true
  %2 = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %0, i64 0, i32 5, i32 0, i32 1
  %3 = load i8*, i8** %2, align 8, !tbaa !29
  %cmp7.not = icmp eq i8* %3, null
  br i1 %cmp7.not, label %if.end20, label %land.lhs.true8

land.lhs.true8:                                   ; preds = %land.lhs.true6
  %op = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %0, i64 0, i32 5
  %signature = bitcast %union.anon* %op to %struct.evp_signature_st**
  %4 = load %struct.evp_signature_st*, %struct.evp_signature_st** %signature, align 8, !tbaa !29
  %settable_ctx_md_params = getelementptr inbounds %struct.evp_signature_st, %struct.evp_signature_st* %4, i64 0, i32 30
  %5 = load %struct.ossl_param_st* (i8*)*, %struct.ossl_param_st* (i8*)** %settable_ctx_md_params, align 8, !tbaa !55
  %cmp11.not = icmp eq %struct.ossl_param_st* (i8*)* %5, null
  br i1 %cmp11.not, label %if.end20, label %if.then12

if.then12:                                        ; preds = %land.lhs.true8
  %call = tail call %struct.ossl_param_st* %5(i8* noundef nonnull %3) #10
  br label %cleanup

if.end20:                                         ; preds = %land.lhs.true, %land.lhs.true8, %land.lhs.true6, %if.end
  %digest = getelementptr inbounds %struct.evp_md_ctx_st, %struct.evp_md_ctx_st* %ctx, i64 0, i32 1
  %6 = load %struct.evp_md_st*, %struct.evp_md_st** %digest, align 8, !tbaa !10
  %cmp21.not = icmp eq %struct.evp_md_st* %6, null
  br i1 %cmp21.not, label %cleanup, label %land.lhs.true22

land.lhs.true22:                                  ; preds = %if.end20
  %settable_ctx_params = getelementptr inbounds %struct.evp_md_st, %struct.evp_md_st* %6, i64 0, i32 30
  %7 = load %struct.ossl_param_st* (i8*, i8*)*, %struct.ossl_param_st* (i8*, i8*)** %settable_ctx_params, align 8, !tbaa !54
  %cmp24.not = icmp eq %struct.ossl_param_st* (i8*, i8*)* %7, null
  br i1 %cmp24.not, label %cleanup, label %if.then25

if.then25:                                        ; preds = %land.lhs.true22
  %call27 = tail call %struct.ossl_provider_st* @EVP_MD_get0_provider(%struct.evp_md_st* noundef nonnull %6) #10
  %call28 = tail call i8* @ossl_provider_ctx(%struct.ossl_provider_st* noundef %call27) #10
  %8 = load %struct.evp_md_st*, %struct.evp_md_st** %digest, align 8, !tbaa !10
  %settable_ctx_params30 = getelementptr inbounds %struct.evp_md_st, %struct.evp_md_st* %8, i64 0, i32 30
  %9 = load %struct.ossl_param_st* (i8*, i8*)*, %struct.ossl_param_st* (i8*, i8*)** %settable_ctx_params30, align 8, !tbaa !54
  %algctx31 = getelementptr inbounds %struct.evp_md_ctx_st, %struct.evp_md_ctx_st* %ctx, i64 0, i32 7
  %10 = load i8*, i8** %algctx31, align 8, !tbaa !4
  %call32 = tail call %struct.ossl_param_st* %9(i8* noundef %10, i8* noundef %call28) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end20, %land.lhs.true22, %entry, %if.then25, %if.then12
  %retval.0 = phi %struct.ossl_param_st* [ %call, %if.then12 ], [ %call32, %if.then25 ], [ null, %entry ], [ null, %land.lhs.true22 ], [ null, %if.end20 ]
  ret %struct.ossl_param_st* %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @EVP_MD_CTX_get_params(%struct.evp_md_ctx_st* nocapture noundef readonly %ctx, %struct.ossl_param_st* noundef %params) local_unnamed_addr #0 {
entry:
  %pctx1 = getelementptr inbounds %struct.evp_md_ctx_st, %struct.evp_md_ctx_st* %ctx, i64 0, i32 5
  %0 = load %struct.evp_pkey_ctx_st*, %struct.evp_pkey_ctx_st** %pctx1, align 8, !tbaa !22
  %cmp.not = icmp eq %struct.evp_pkey_ctx_st* %0, null
  br i1 %cmp.not, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %operation = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %0, i64 0, i32 0
  %1 = load i32, i32* %operation, align 8, !tbaa !26
  switch i32 %1, label %if.end [
    i32 256, label %land.lhs.true5
    i32 128, label %land.lhs.true5
  ]

land.lhs.true5:                                   ; preds = %land.lhs.true, %land.lhs.true
  %2 = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %0, i64 0, i32 5, i32 0, i32 1
  %3 = load i8*, i8** %2, align 8, !tbaa !29
  %cmp6.not = icmp eq i8* %3, null
  br i1 %cmp6.not, label %if.end, label %land.lhs.true7

land.lhs.true7:                                   ; preds = %land.lhs.true5
  %op = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %0, i64 0, i32 5
  %signature = bitcast %union.anon* %op to %struct.evp_signature_st**
  %4 = load %struct.evp_signature_st*, %struct.evp_signature_st** %signature, align 8, !tbaa !29
  %get_ctx_md_params = getelementptr inbounds %struct.evp_signature_st, %struct.evp_signature_st* %4, i64 0, i32 27
  %5 = load i32 (i8*, %struct.ossl_param_st*)*, i32 (i8*, %struct.ossl_param_st*)** %get_ctx_md_params, align 8, !tbaa !56
  %cmp10.not = icmp eq i32 (i8*, %struct.ossl_param_st*)* %5, null
  br i1 %cmp10.not, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true7
  %call = tail call i32 %5(i8* noundef nonnull %3, %struct.ossl_param_st* noundef %params) #10
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true, %land.lhs.true7, %land.lhs.true5, %entry
  %digest = getelementptr inbounds %struct.evp_md_ctx_st, %struct.evp_md_ctx_st* %ctx, i64 0, i32 1
  %6 = load %struct.evp_md_st*, %struct.evp_md_st** %digest, align 8, !tbaa !10
  %cmp18.not = icmp eq %struct.evp_md_st* %6, null
  br i1 %cmp18.not, label %cleanup, label %land.lhs.true19

land.lhs.true19:                                  ; preds = %if.end
  %get_params = getelementptr inbounds %struct.evp_md_st, %struct.evp_md_st* %6, i64 0, i32 26
  %7 = load i32 (%struct.ossl_param_st*)*, i32 (%struct.ossl_param_st*)** %get_params, align 8, !tbaa !52
  %cmp21.not = icmp eq i32 (%struct.ossl_param_st*)* %7, null
  br i1 %cmp21.not, label %cleanup, label %if.then22

if.then22:                                        ; preds = %land.lhs.true19
  %get_ctx_params = getelementptr inbounds %struct.evp_md_st, %struct.evp_md_st* %6, i64 0, i32 28
  %8 = load i32 (i8*, %struct.ossl_param_st*)*, i32 (i8*, %struct.ossl_param_st*)** %get_ctx_params, align 8, !tbaa !57
  %algctx24 = getelementptr inbounds %struct.evp_md_ctx_st, %struct.evp_md_ctx_st* %ctx, i64 0, i32 7
  %9 = load i8*, i8** %algctx24, align 8, !tbaa !4
  %call25 = tail call i32 %8(i8* noundef %9, %struct.ossl_param_st* noundef %params) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %land.lhs.true19, %if.then22, %if.then
  %retval.0 = phi i32 [ %call, %if.then ], [ %call25, %if.then22 ], [ 0, %land.lhs.true19 ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define %struct.ossl_param_st* @EVP_MD_gettable_ctx_params(%struct.evp_md_st* noundef %md) local_unnamed_addr #0 {
entry:
  %cmp.not = icmp eq %struct.evp_md_st* %md, null
  br i1 %cmp.not, label %cleanup, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %gettable_ctx_params = getelementptr inbounds %struct.evp_md_st, %struct.evp_md_st* %md, i64 0, i32 31
  %0 = load %struct.ossl_param_st* (i8*, i8*)*, %struct.ossl_param_st* (i8*, i8*)** %gettable_ctx_params, align 8, !tbaa !58
  %cmp1.not = icmp eq %struct.ossl_param_st* (i8*, i8*)* %0, null
  br i1 %cmp1.not, label %cleanup, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %call = tail call %struct.ossl_provider_st* @EVP_MD_get0_provider(%struct.evp_md_st* noundef nonnull %md) #10
  %call2 = tail call i8* @ossl_provider_ctx(%struct.ossl_provider_st* noundef %call) #10
  %1 = load %struct.ossl_param_st* (i8*, i8*)*, %struct.ossl_param_st* (i8*, i8*)** %gettable_ctx_params, align 8, !tbaa !58
  %call4 = tail call %struct.ossl_param_st* %1(i8* noundef null, i8* noundef %call2) #10
  br label %cleanup

cleanup:                                          ; preds = %entry, %land.lhs.true, %if.then
  %retval.0 = phi %struct.ossl_param_st* [ %call4, %if.then ], [ null, %land.lhs.true ], [ null, %entry ]
  ret %struct.ossl_param_st* %retval.0
}

; Function Attrs: noinline nounwind uwtable
define %struct.ossl_param_st* @EVP_MD_CTX_gettable_params(%struct.evp_md_ctx_st* noundef readonly %ctx) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.evp_md_ctx_st* %ctx, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %pctx1 = getelementptr inbounds %struct.evp_md_ctx_st, %struct.evp_md_ctx_st* %ctx, i64 0, i32 5
  %0 = load %struct.evp_pkey_ctx_st*, %struct.evp_pkey_ctx_st** %pctx1, align 8, !tbaa !22
  %cmp2.not = icmp eq %struct.evp_pkey_ctx_st* %0, null
  br i1 %cmp2.not, label %if.end20, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  %operation = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %0, i64 0, i32 0
  %1 = load i32, i32* %operation, align 8, !tbaa !26
  switch i32 %1, label %if.end20 [
    i32 256, label %land.lhs.true6
    i32 128, label %land.lhs.true6
  ]

land.lhs.true6:                                   ; preds = %land.lhs.true, %land.lhs.true
  %2 = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %0, i64 0, i32 5, i32 0, i32 1
  %3 = load i8*, i8** %2, align 8, !tbaa !29
  %cmp7.not = icmp eq i8* %3, null
  br i1 %cmp7.not, label %if.end20, label %land.lhs.true8

land.lhs.true8:                                   ; preds = %land.lhs.true6
  %op = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %0, i64 0, i32 5
  %signature = bitcast %union.anon* %op to %struct.evp_signature_st**
  %4 = load %struct.evp_signature_st*, %struct.evp_signature_st** %signature, align 8, !tbaa !29
  %gettable_ctx_md_params = getelementptr inbounds %struct.evp_signature_st, %struct.evp_signature_st* %4, i64 0, i32 28
  %5 = load %struct.ossl_param_st* (i8*)*, %struct.ossl_param_st* (i8*)** %gettable_ctx_md_params, align 8, !tbaa !59
  %cmp11.not = icmp eq %struct.ossl_param_st* (i8*)* %5, null
  br i1 %cmp11.not, label %if.end20, label %if.then12

if.then12:                                        ; preds = %land.lhs.true8
  %call = tail call %struct.ossl_param_st* %5(i8* noundef nonnull %3) #10
  br label %cleanup

if.end20:                                         ; preds = %land.lhs.true, %land.lhs.true8, %land.lhs.true6, %if.end
  %digest = getelementptr inbounds %struct.evp_md_ctx_st, %struct.evp_md_ctx_st* %ctx, i64 0, i32 1
  %6 = load %struct.evp_md_st*, %struct.evp_md_st** %digest, align 8, !tbaa !10
  %cmp21.not = icmp eq %struct.evp_md_st* %6, null
  br i1 %cmp21.not, label %cleanup, label %land.lhs.true22

land.lhs.true22:                                  ; preds = %if.end20
  %gettable_ctx_params = getelementptr inbounds %struct.evp_md_st, %struct.evp_md_st* %6, i64 0, i32 31
  %7 = load %struct.ossl_param_st* (i8*, i8*)*, %struct.ossl_param_st* (i8*, i8*)** %gettable_ctx_params, align 8, !tbaa !58
  %cmp24.not = icmp eq %struct.ossl_param_st* (i8*, i8*)* %7, null
  br i1 %cmp24.not, label %cleanup, label %if.then25

if.then25:                                        ; preds = %land.lhs.true22
  %call27 = tail call %struct.ossl_provider_st* @EVP_MD_get0_provider(%struct.evp_md_st* noundef nonnull %6) #10
  %call28 = tail call i8* @ossl_provider_ctx(%struct.ossl_provider_st* noundef %call27) #10
  %8 = load %struct.evp_md_st*, %struct.evp_md_st** %digest, align 8, !tbaa !10
  %gettable_ctx_params30 = getelementptr inbounds %struct.evp_md_st, %struct.evp_md_st* %8, i64 0, i32 31
  %9 = load %struct.ossl_param_st* (i8*, i8*)*, %struct.ossl_param_st* (i8*, i8*)** %gettable_ctx_params30, align 8, !tbaa !58
  %algctx31 = getelementptr inbounds %struct.evp_md_ctx_st, %struct.evp_md_ctx_st* %ctx, i64 0, i32 7
  %10 = load i8*, i8** %algctx31, align 8, !tbaa !4
  %call32 = tail call %struct.ossl_param_st* %9(i8* noundef %10, i8* noundef %call28) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end20, %land.lhs.true22, %entry, %if.then25, %if.then12
  %retval.0 = phi %struct.ossl_param_st* [ %call, %if.then12 ], [ %call32, %if.then25 ], [ null, %entry ], [ null, %land.lhs.true22 ], [ null, %if.end20 ]
  ret %struct.ossl_param_st* %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @EVP_MD_CTX_ctrl(%struct.evp_md_ctx_st* noundef %ctx, i32 noundef %cmd, i32 noundef %p1, i8* noundef %p2) local_unnamed_addr #0 {
entry:
  %sz = alloca i64, align 8
  %params = alloca [2 x %struct.ossl_param_st], align 16
  %0 = bitcast i64* %sz to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #12
  %1 = bitcast [2 x %struct.ossl_param_st]* %params to i8*
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %1) #12
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(80) %1, i8 0, i64 80, i1 false)
  %cmp = icmp eq %struct.evp_md_ctx_st* %ctx, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #10
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 785, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.EVP_MD_CTX_ctrl, i64 0, i64 0)) #10
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 6, i32 noundef 786690, i8* noundef null) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %digest = getelementptr inbounds %struct.evp_md_ctx_st, %struct.evp_md_ctx_st* %ctx, i64 0, i32 1
  %2 = load %struct.evp_md_st*, %struct.evp_md_st** %digest, align 8, !tbaa !10
  %cmp1.not = icmp eq %struct.evp_md_st* %2, null
  br i1 %cmp1.not, label %if.end5, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  %prov = getelementptr inbounds %struct.evp_md_st, %struct.evp_md_st* %2, i64 0, i32 16
  %3 = load %struct.ossl_provider_st*, %struct.ossl_provider_st** %prov, align 8, !tbaa !32
  %cmp3 = icmp eq %struct.ossl_provider_st* %3, null
  br i1 %cmp3, label %legacy, label %if.end5

if.end5:                                          ; preds = %land.lhs.true, %if.end
  switch i32 %cmd, label %conclude.thread [
    i32 3, label %sw.bb
    i32 2, label %sw.bb6
    i32 29, label %sw.bb10
  ]

sw.bb:                                            ; preds = %if.end5
  %conv = sext i32 %p1 to i64
  store i64 %conv, i64* %sz, align 8, !tbaa !39
  %params54 = getelementptr inbounds [2 x %struct.ossl_param_st], [2 x %struct.ossl_param_st]* %params, i64 0, i64 0
  call void @OSSL_PARAM_construct_size_t(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %params54, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i64* noundef nonnull %sz) #10
  br label %if.then15

sw.bb6:                                           ; preds = %if.end5
  %tobool.not = icmp eq i32 %p1, 0
  %cond = select i1 %tobool.not, i32 9999, i32 %p1
  %conv9 = sext i32 %cond to i64
  %params55 = getelementptr inbounds [2 x %struct.ossl_param_st], [2 x %struct.ossl_param_st]* %params, i64 0, i64 0
  call void @OSSL_PARAM_construct_utf8_string(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %params55, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8* noundef %p2, i64 noundef %conv9) #10
  %arraydecay16 = getelementptr inbounds [2 x %struct.ossl_param_st], [2 x %struct.ossl_param_st]* %params, i64 0, i64 0
  %call17 = call i32 @EVP_MD_CTX_get_params(%struct.evp_md_ctx_st* noundef nonnull %ctx, %struct.ossl_param_st* noundef nonnull %arraydecay16) #11
  br label %conclude

sw.bb10:                                          ; preds = %if.end5
  %conv13 = sext i32 %p1 to i64
  %params56 = getelementptr inbounds [2 x %struct.ossl_param_st], [2 x %struct.ossl_param_st]* %params, i64 0, i64 0
  call void @OSSL_PARAM_construct_octet_string(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %params56, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i8* noundef %p2, i64 noundef %conv13) #10
  br label %if.then15

if.then15:                                        ; preds = %sw.bb, %sw.bb10
  %arraydecay = getelementptr inbounds [2 x %struct.ossl_param_st], [2 x %struct.ossl_param_st]* %params, i64 0, i64 0
  %call = call i32 @EVP_MD_CTX_set_params(%struct.evp_md_ctx_st* noundef nonnull %ctx, %struct.ossl_param_st* noundef nonnull %arraydecay) #11
  br label %conclude

legacy:                                           ; preds = %land.lhs.true
  %md_ctrl = getelementptr inbounds %struct.evp_md_st, %struct.evp_md_st* %2, i64 0, i32 12
  %4 = load i32 (%struct.evp_md_ctx_st*, i32, i32, i8*)*, i32 (%struct.evp_md_ctx_st*, i32, i32, i8*)** %md_ctrl, align 8, !tbaa !45
  %cmp20 = icmp eq i32 (%struct.evp_md_ctx_st*, i32, i32, i8*)* %4, null
  br i1 %cmp20, label %if.then22, label %if.end23

if.then22:                                        ; preds = %legacy
  tail call void @ERR_new() #10
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 820, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.EVP_MD_CTX_ctrl, i64 0, i64 0)) #10
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 6, i32 noundef 132, i8* noundef null) #10
  br label %cleanup

if.end23:                                         ; preds = %legacy
  %call26 = tail call i32 %4(%struct.evp_md_ctx_st* noundef nonnull %ctx, i32 noundef %cmd, i32 noundef %p1, i8* noundef %p2) #10
  br label %conclude

conclude:                                         ; preds = %if.then15, %sw.bb6, %if.end23
  %ret.0 = phi i32 [ %call26, %if.end23 ], [ %call, %if.then15 ], [ %call17, %sw.bb6 ]
  %cmp27 = icmp slt i32 %ret.0, 1
  br i1 %cmp27, label %conclude.thread, label %cleanup

conclude.thread:                                  ; preds = %if.end5, %conclude
  br label %cleanup

cleanup:                                          ; preds = %conclude.thread, %conclude, %if.then22, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 0, %if.then22 ], [ 0, %conclude.thread ], [ %ret.0, %conclude ]
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %1) #12
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #12
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #7

declare void @OSSL_PARAM_construct_utf8_string(%struct.ossl_param_st* sret(%struct.ossl_param_st) align 8, i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #1

declare void @OSSL_PARAM_construct_octet_string(%struct.ossl_param_st* sret(%struct.ossl_param_st) align 8, i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define %struct.evp_md_st* @evp_md_new() local_unnamed_addr #0 {
entry:
  %call = tail call i8* @CRYPTO_zalloc(i64 noundef 240, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 833) #10
  %0 = bitcast i8* %call to %struct.evp_md_st*
  %cmp.not = icmp eq i8* %call, null
  br i1 %cmp.not, label %cleanup, label %if.then

if.then:                                          ; preds = %entry
  %call1 = tail call i8* @CRYPTO_THREAD_lock_new() #10
  %lock = getelementptr inbounds i8, i8* %call, i64 128
  %1 = bitcast i8* %lock to i8**
  store i8* %call1, i8** %1, align 8, !tbaa !60
  %cmp3 = icmp eq i8* %call1, null
  br i1 %cmp3, label %if.then4, label %if.end

if.then4:                                         ; preds = %if.then
  tail call void @CRYPTO_free(i8* noundef nonnull %call, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 838) #10
  br label %cleanup

if.end:                                           ; preds = %if.then
  %refcnt = getelementptr inbounds i8, i8* %call, i64 120
  %2 = bitcast i8* %refcnt to i32*
  store atomic i32 1, i32* %2 seq_cst, align 4, !tbaa !61
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end, %if.then4
  %retval.0 = phi %struct.evp_md_st* [ null, %if.then4 ], [ %0, %if.end ], [ %0, %entry ]
  ret %struct.evp_md_st* %retval.0
}

declare i8* @CRYPTO_THREAD_lock_new() local_unnamed_addr #1

declare i8* @evp_generic_fetch(%struct.ossl_lib_ctx_st* noundef, i32 noundef, i8* noundef, i8* noundef, i8* (i32, %struct.ossl_algorithm_st*, %struct.ossl_provider_st*)* noundef, i32 (i8*)* noundef, void (i8*)* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal i8* @evp_md_from_algorithm(i32 noundef %name_id, %struct.ossl_algorithm_st* noundef %algodef, %struct.ossl_provider_st* noundef %prov) #0 {
entry:
  %implementation = getelementptr inbounds %struct.ossl_algorithm_st, %struct.ossl_algorithm_st* %algodef, i64 0, i32 2
  %0 = load %struct.ossl_dispatch_st*, %struct.ossl_dispatch_st** %implementation, align 8, !tbaa !62
  %call = tail call %struct.evp_md_st* @evp_md_new() #11
  %cmp = icmp eq %struct.evp_md_st* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #10
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 914, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.evp_md_from_algorithm, i64 0, i64 0)) #10
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 6, i32 noundef 786688, i8* noundef null) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %type = getelementptr inbounds %struct.evp_md_st, %struct.evp_md_st* %call, i64 0, i32 0
  store i32 0, i32* %type, align 8, !tbaa !30
  %1 = bitcast %struct.evp_md_st* %call to i8*
  %call2 = tail call i32 @evp_names_do_all(%struct.ossl_provider_st* noundef %prov, i32 noundef %name_id, void (i8*, i8*)* noundef nonnull @set_legacy_nid, i8* noundef %1) #10
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.then5, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %2 = load i32, i32* %type, align 8, !tbaa !30
  %cmp4 = icmp eq i32 %2, -1
  br i1 %cmp4, label %if.then5, label %if.end6

if.then5:                                         ; preds = %lor.lhs.false, %if.end
  tail call void @ERR_new() #10
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 922, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.evp_md_from_algorithm, i64 0, i64 0)) #10
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 6, i32 noundef 786691, i8* noundef null) #10
  tail call void @EVP_MD_free(%struct.evp_md_st* noundef nonnull %call) #11
  br label %cleanup

if.end6:                                          ; preds = %lor.lhs.false
  %name_id7 = getelementptr inbounds %struct.evp_md_st, %struct.evp_md_st* %call, i64 0, i32 13
  store i32 %name_id, i32* %name_id7, align 8, !tbaa !64
  %call8 = tail call i8* @ossl_algorithm_get1_first_name(%struct.ossl_algorithm_st* noundef nonnull %algodef) #10
  %type_name = getelementptr inbounds %struct.evp_md_st, %struct.evp_md_st* %call, i64 0, i32 14
  store i8* %call8, i8** %type_name, align 8, !tbaa !65
  %cmp9 = icmp eq i8* %call8, null
  br i1 %cmp9, label %if.then10, label %if.end11

if.then10:                                        ; preds = %if.end6
  tail call void @EVP_MD_free(%struct.evp_md_st* noundef nonnull %call) #11
  br label %cleanup

if.end11:                                         ; preds = %if.end6
  %algorithm_description = getelementptr inbounds %struct.ossl_algorithm_st, %struct.ossl_algorithm_st* %algodef, i64 0, i32 3
  %3 = load i8*, i8** %algorithm_description, align 8, !tbaa !66
  %description = getelementptr inbounds %struct.evp_md_st, %struct.evp_md_st* %call, i64 0, i32 15
  store i8* %3, i8** %description, align 8, !tbaa !67
  %gettable_ctx_params = getelementptr inbounds %struct.evp_md_st, %struct.evp_md_st* %call, i64 0, i32 31
  %settable_ctx_params = getelementptr inbounds %struct.evp_md_st, %struct.evp_md_st* %call, i64 0, i32 30
  %gettable_params = getelementptr inbounds %struct.evp_md_st, %struct.evp_md_st* %call, i64 0, i32 29
  %get_ctx_params = getelementptr inbounds %struct.evp_md_st, %struct.evp_md_st* %call, i64 0, i32 28
  %set_ctx_params = getelementptr inbounds %struct.evp_md_st, %struct.evp_md_st* %call, i64 0, i32 27
  %get_params = getelementptr inbounds %struct.evp_md_st, %struct.evp_md_st* %call, i64 0, i32 26
  %dupctx = getelementptr inbounds %struct.evp_md_st, %struct.evp_md_st* %call, i64 0, i32 25
  %freectx = getelementptr inbounds %struct.evp_md_st, %struct.evp_md_st* %call, i64 0, i32 24
  %digest = getelementptr inbounds %struct.evp_md_st, %struct.evp_md_st* %call, i64 0, i32 23
  %dfinal = getelementptr inbounds %struct.evp_md_st, %struct.evp_md_st* %call, i64 0, i32 22
  %dupdate = getelementptr inbounds %struct.evp_md_st, %struct.evp_md_st* %call, i64 0, i32 21
  %dinit = getelementptr inbounds %struct.evp_md_st, %struct.evp_md_st* %call, i64 0, i32 20
  %newctx = getelementptr inbounds %struct.evp_md_st, %struct.evp_md_st* %call, i64 0, i32 19
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end11
  %fns.0 = phi %struct.ossl_dispatch_st* [ %0, %if.end11 ], [ %incdec.ptr, %for.inc ]
  %fncnt.0 = phi i32 [ 0, %if.end11 ], [ %fncnt.1, %for.inc ]
  %function_id = getelementptr inbounds %struct.ossl_dispatch_st, %struct.ossl_dispatch_st* %fns.0, i64 0, i32 0
  %4 = load i32, i32* %function_id, align 8, !tbaa !68
  switch i32 %4, label %for.inc [
    i32 0, label %for.end
    i32 1, label %sw.bb
    i32 2, label %sw.bb19
    i32 3, label %sw.bb26
    i32 4, label %sw.bb33
    i32 5, label %sw.bb40
    i32 6, label %sw.bb46
    i32 7, label %sw.bb53
    i32 8, label %sw.bb59
    i32 9, label %sw.bb65
    i32 10, label %sw.bb71
    i32 11, label %sw.bb77
    i32 12, label %sw.bb83
    i32 13, label %sw.bb89
  ]

sw.bb:                                            ; preds = %for.cond
  %5 = load i8* (i8*)*, i8* (i8*)** %newctx, align 8, !tbaa !33
  %cmp14 = icmp eq i8* (i8*)* %5, null
  br i1 %cmp14, label %if.then15, label %for.inc

if.then15:                                        ; preds = %sw.bb
  %call16 = tail call fastcc i8* (i8*)* @OSSL_FUNC_digest_newctx(%struct.ossl_dispatch_st* noundef nonnull %fns.0) #11
  store i8* (i8*)* %call16, i8* (i8*)** %newctx, align 8, !tbaa !33
  %inc = add nsw i32 %fncnt.0, 1
  br label %for.inc

sw.bb19:                                          ; preds = %for.cond
  %6 = load i32 (i8*, %struct.ossl_param_st*)*, i32 (i8*, %struct.ossl_param_st*)** %dinit, align 8, !tbaa !34
  %cmp20 = icmp eq i32 (i8*, %struct.ossl_param_st*)* %6, null
  br i1 %cmp20, label %if.then21, label %for.inc

if.then21:                                        ; preds = %sw.bb19
  %call22 = tail call fastcc i32 (i8*, %struct.ossl_param_st*)* @OSSL_FUNC_digest_init(%struct.ossl_dispatch_st* noundef nonnull %fns.0) #11
  store i32 (i8*, %struct.ossl_param_st*)* %call22, i32 (i8*, %struct.ossl_param_st*)** %dinit, align 8, !tbaa !34
  %inc24 = add nsw i32 %fncnt.0, 1
  br label %for.inc

sw.bb26:                                          ; preds = %for.cond
  %7 = load i32 (i8*, i8*, i64)*, i32 (i8*, i8*, i64)** %dupdate, align 8, !tbaa !38
  %cmp27 = icmp eq i32 (i8*, i8*, i64)* %7, null
  br i1 %cmp27, label %if.then28, label %for.inc

if.then28:                                        ; preds = %sw.bb26
  %call29 = tail call fastcc i32 (i8*, i8*, i64)* @OSSL_FUNC_digest_update(%struct.ossl_dispatch_st* noundef nonnull %fns.0) #11
  store i32 (i8*, i8*, i64)* %call29, i32 (i8*, i8*, i64)** %dupdate, align 8, !tbaa !38
  %inc31 = add nsw i32 %fncnt.0, 1
  br label %for.inc

sw.bb33:                                          ; preds = %for.cond
  %8 = load i32 (i8*, i8*, i64*, i64)*, i32 (i8*, i8*, i64*, i64)** %dfinal, align 8, !tbaa !40
  %cmp34 = icmp eq i32 (i8*, i8*, i64*, i64)* %8, null
  br i1 %cmp34, label %if.then35, label %for.inc

if.then35:                                        ; preds = %sw.bb33
  %call36 = tail call fastcc i32 (i8*, i8*, i64*, i64)* @OSSL_FUNC_digest_final(%struct.ossl_dispatch_st* noundef nonnull %fns.0) #11
  store i32 (i8*, i8*, i64*, i64)* %call36, i32 (i8*, i8*, i64*, i64)** %dfinal, align 8, !tbaa !40
  %inc38 = add nsw i32 %fncnt.0, 1
  br label %for.inc

sw.bb40:                                          ; preds = %for.cond
  %9 = load i32 (i8*, i8*, i64, i8*, i64*, i64)*, i32 (i8*, i8*, i64, i8*, i64*, i64)** %digest, align 8, !tbaa !70
  %cmp41 = icmp eq i32 (i8*, i8*, i64, i8*, i64*, i64)* %9, null
  br i1 %cmp41, label %if.then42, label %for.inc

if.then42:                                        ; preds = %sw.bb40
  %call43 = tail call fastcc i32 (i8*, i8*, i64, i8*, i64*, i64)* @OSSL_FUNC_digest_digest(%struct.ossl_dispatch_st* noundef nonnull %fns.0) #11
  store i32 (i8*, i8*, i64, i8*, i64*, i64)* %call43, i32 (i8*, i8*, i64, i8*, i64*, i64)** %digest, align 8, !tbaa !70
  br label %for.inc

sw.bb46:                                          ; preds = %for.cond
  %10 = load void (i8*)*, void (i8*)** %freectx, align 8, !tbaa !11
  %cmp47 = icmp eq void (i8*)* %10, null
  br i1 %cmp47, label %if.then48, label %for.inc

if.then48:                                        ; preds = %sw.bb46
  %call49 = tail call fastcc void (i8*)* @OSSL_FUNC_digest_freectx(%struct.ossl_dispatch_st* noundef nonnull %fns.0) #11
  store void (i8*)* %call49, void (i8*)** %freectx, align 8, !tbaa !11
  %inc51 = add nsw i32 %fncnt.0, 1
  br label %for.inc

sw.bb53:                                          ; preds = %for.cond
  %11 = load i8* (i8*)*, i8* (i8*)** %dupctx, align 8, !tbaa !49
  %cmp54 = icmp eq i8* (i8*)* %11, null
  br i1 %cmp54, label %if.then55, label %for.inc

if.then55:                                        ; preds = %sw.bb53
  %call56 = tail call fastcc i8* (i8*)* @OSSL_FUNC_digest_dupctx(%struct.ossl_dispatch_st* noundef nonnull %fns.0) #11
  store i8* (i8*)* %call56, i8* (i8*)** %dupctx, align 8, !tbaa !49
  br label %for.inc

sw.bb59:                                          ; preds = %for.cond
  %12 = load i32 (%struct.ossl_param_st*)*, i32 (%struct.ossl_param_st*)** %get_params, align 8, !tbaa !52
  %cmp60 = icmp eq i32 (%struct.ossl_param_st*)* %12, null
  br i1 %cmp60, label %if.then61, label %for.inc

if.then61:                                        ; preds = %sw.bb59
  %call62 = tail call fastcc i32 (%struct.ossl_param_st*)* @OSSL_FUNC_digest_get_params(%struct.ossl_dispatch_st* noundef nonnull %fns.0) #11
  store i32 (%struct.ossl_param_st*)* %call62, i32 (%struct.ossl_param_st*)** %get_params, align 8, !tbaa !52
  br label %for.inc

sw.bb65:                                          ; preds = %for.cond
  %13 = load i32 (i8*, %struct.ossl_param_st*)*, i32 (i8*, %struct.ossl_param_st*)** %set_ctx_params, align 8, !tbaa !48
  %cmp66 = icmp eq i32 (i8*, %struct.ossl_param_st*)* %13, null
  br i1 %cmp66, label %if.then67, label %for.inc

if.then67:                                        ; preds = %sw.bb65
  %call68 = tail call fastcc i32 (i8*, %struct.ossl_param_st*)* @OSSL_FUNC_digest_set_ctx_params(%struct.ossl_dispatch_st* noundef nonnull %fns.0) #11
  store i32 (i8*, %struct.ossl_param_st*)* %call68, i32 (i8*, %struct.ossl_param_st*)** %set_ctx_params, align 8, !tbaa !48
  br label %for.inc

sw.bb71:                                          ; preds = %for.cond
  %14 = load i32 (i8*, %struct.ossl_param_st*)*, i32 (i8*, %struct.ossl_param_st*)** %get_ctx_params, align 8, !tbaa !57
  %cmp72 = icmp eq i32 (i8*, %struct.ossl_param_st*)* %14, null
  br i1 %cmp72, label %if.then73, label %for.inc

if.then73:                                        ; preds = %sw.bb71
  %call74 = tail call fastcc i32 (i8*, %struct.ossl_param_st*)* @OSSL_FUNC_digest_get_ctx_params(%struct.ossl_dispatch_st* noundef nonnull %fns.0) #11
  store i32 (i8*, %struct.ossl_param_st*)* %call74, i32 (i8*, %struct.ossl_param_st*)** %get_ctx_params, align 8, !tbaa !57
  br label %for.inc

sw.bb77:                                          ; preds = %for.cond
  %15 = load %struct.ossl_param_st* (i8*)*, %struct.ossl_param_st* (i8*)** %gettable_params, align 8, !tbaa !53
  %cmp78 = icmp eq %struct.ossl_param_st* (i8*)* %15, null
  br i1 %cmp78, label %if.then79, label %for.inc

if.then79:                                        ; preds = %sw.bb77
  %call80 = tail call fastcc %struct.ossl_param_st* (i8*)* @OSSL_FUNC_digest_gettable_params(%struct.ossl_dispatch_st* noundef nonnull %fns.0) #11
  store %struct.ossl_param_st* (i8*)* %call80, %struct.ossl_param_st* (i8*)** %gettable_params, align 8, !tbaa !53
  br label %for.inc

sw.bb83:                                          ; preds = %for.cond
  %16 = load %struct.ossl_param_st* (i8*, i8*)*, %struct.ossl_param_st* (i8*, i8*)** %settable_ctx_params, align 8, !tbaa !54
  %cmp84 = icmp eq %struct.ossl_param_st* (i8*, i8*)* %16, null
  br i1 %cmp84, label %if.then85, label %for.inc

if.then85:                                        ; preds = %sw.bb83
  %call86 = tail call fastcc %struct.ossl_param_st* (i8*, i8*)* @OSSL_FUNC_digest_settable_ctx_params(%struct.ossl_dispatch_st* noundef nonnull %fns.0) #11
  store %struct.ossl_param_st* (i8*, i8*)* %call86, %struct.ossl_param_st* (i8*, i8*)** %settable_ctx_params, align 8, !tbaa !54
  br label %for.inc

sw.bb89:                                          ; preds = %for.cond
  %17 = load %struct.ossl_param_st* (i8*, i8*)*, %struct.ossl_param_st* (i8*, i8*)** %gettable_ctx_params, align 8, !tbaa !58
  %cmp90 = icmp eq %struct.ossl_param_st* (i8*, i8*)* %17, null
  br i1 %cmp90, label %if.then91, label %for.inc

if.then91:                                        ; preds = %sw.bb89
  %call92 = tail call fastcc %struct.ossl_param_st* (i8*, i8*)* @OSSL_FUNC_digest_gettable_ctx_params(%struct.ossl_dispatch_st* noundef nonnull %fns.0) #11
  store %struct.ossl_param_st* (i8*, i8*)* %call92, %struct.ossl_param_st* (i8*, i8*)** %gettable_ctx_params, align 8, !tbaa !58
  br label %for.inc

for.inc:                                          ; preds = %for.cond, %if.then15, %sw.bb, %if.then21, %sw.bb19, %if.then28, %sw.bb26, %if.then35, %sw.bb33, %if.then42, %sw.bb40, %if.then48, %sw.bb46, %if.then55, %sw.bb53, %if.then61, %sw.bb59, %if.then67, %sw.bb65, %if.then73, %sw.bb71, %if.then79, %sw.bb77, %if.then85, %sw.bb83, %if.then91, %sw.bb89
  %fncnt.1 = phi i32 [ %fncnt.0, %if.then91 ], [ %fncnt.0, %sw.bb89 ], [ %fncnt.0, %if.then85 ], [ %fncnt.0, %sw.bb83 ], [ %fncnt.0, %if.then79 ], [ %fncnt.0, %sw.bb77 ], [ %fncnt.0, %if.then73 ], [ %fncnt.0, %sw.bb71 ], [ %fncnt.0, %if.then67 ], [ %fncnt.0, %sw.bb65 ], [ %fncnt.0, %if.then61 ], [ %fncnt.0, %sw.bb59 ], [ %fncnt.0, %if.then55 ], [ %fncnt.0, %sw.bb53 ], [ %inc51, %if.then48 ], [ %fncnt.0, %sw.bb46 ], [ %fncnt.0, %if.then42 ], [ %fncnt.0, %sw.bb40 ], [ %inc38, %if.then35 ], [ %fncnt.0, %sw.bb33 ], [ %inc31, %if.then28 ], [ %fncnt.0, %sw.bb26 ], [ %inc24, %if.then21 ], [ %fncnt.0, %sw.bb19 ], [ %inc, %if.then15 ], [ %fncnt.0, %sw.bb ], [ %fncnt.0, %for.cond ]
  %incdec.ptr = getelementptr inbounds %struct.ossl_dispatch_st, %struct.ossl_dispatch_st* %fns.0, i64 1
  br label %for.cond, !llvm.loop !71

for.end:                                          ; preds = %for.cond
  switch i32 %fncnt.0, label %if.then102 [
    i32 0, label %land.lhs.true99
    i32 5, label %if.end103
  ]

land.lhs.true99:                                  ; preds = %for.end
  %18 = load i32 (i8*, i8*, i64, i8*, i64*, i64)*, i32 (i8*, i8*, i64, i8*, i64*, i64)** %digest, align 8, !tbaa !70
  %cmp101 = icmp eq i32 (i8*, i8*, i64, i8*, i64*, i64)* %18, null
  br i1 %cmp101, label %if.then102, label %if.end103

if.then102:                                       ; preds = %for.end, %land.lhs.true99
  tail call void @EVP_MD_free(%struct.evp_md_st* noundef %call) #11
  tail call void @ERR_new() #10
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 1013, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.evp_md_from_algorithm, i64 0, i64 0)) #10
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 6, i32 noundef 193, i8* noundef null) #10
  br label %cleanup

if.end103:                                        ; preds = %for.end, %land.lhs.true99
  %prov104 = getelementptr inbounds %struct.evp_md_st, %struct.evp_md_st* %call, i64 0, i32 16
  store %struct.ossl_provider_st* %prov, %struct.ossl_provider_st** %prov104, align 8, !tbaa !32
  %cmp105.not = icmp eq %struct.ossl_provider_st* %prov, null
  br i1 %cmp105.not, label %if.end108, label %if.then106

if.then106:                                       ; preds = %if.end103
  %call107 = tail call i32 @ossl_provider_up_ref(%struct.ossl_provider_st* noundef nonnull %prov) #10
  br label %if.end108

if.end108:                                        ; preds = %if.then106, %if.end103
  %call109 = tail call fastcc i32 @evp_md_cache_constants(%struct.evp_md_st* noundef nonnull %call) #11
  %tobool110.not = icmp eq i32 %call109, 0
  br i1 %tobool110.not, label %if.then111, label %if.end112

if.then111:                                       ; preds = %if.end108
  tail call void @EVP_MD_free(%struct.evp_md_st* noundef nonnull %call) #11
  tail call void @ERR_new() #10
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 1022, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.evp_md_from_algorithm, i64 0, i64 0)) #10
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 6, i32 noundef 225, i8* noundef null) #10
  br label %if.end112

if.end112:                                        ; preds = %if.then111, %if.end108
  %md.0 = phi %struct.evp_md_st* [ %call, %if.end108 ], [ null, %if.then111 ]
  %19 = bitcast %struct.evp_md_st* %md.0 to i8*
  br label %cleanup

cleanup:                                          ; preds = %if.end112, %if.then102, %if.then10, %if.then5, %if.then
  %retval.0 = phi i8* [ null, %if.then ], [ null, %if.then5 ], [ null, %if.then10 ], [ null, %if.then102 ], [ %19, %if.end112 ]
  ret i8* %retval.0
}

; Function Attrs: mustprogress nofree noinline nounwind uwtable willreturn
define internal i32 @evp_md_up_ref(i8* nocapture noundef %md) #5 {
entry:
  %0 = bitcast i8* %md to %struct.evp_md_st*
  %call = tail call i32 @EVP_MD_up_ref(%struct.evp_md_st* noundef %0) #11
  ret i32 1
}

; Function Attrs: noinline nounwind uwtable
define internal void @evp_md_free(i8* noundef %md) #0 {
entry:
  %0 = bitcast i8* %md to %struct.evp_md_st*
  tail call void @EVP_MD_free(%struct.evp_md_st* noundef %0) #11
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind uwtable willreturn
define internal fastcc void @CRYPTO_UP_REF(i32* nocapture noundef %val, i32* nocapture noundef writeonly %ret) unnamed_addr #8 {
entry:
  %0 = atomicrmw add i32* %val, i32 1 monotonic, align 4
  %add = add nsw i32 %0, 1
  store i32 %add, i32* %ret, align 4, !tbaa !21
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind uwtable willreturn
define internal fastcc void @CRYPTO_DOWN_REF(i32* nocapture noundef %val, i32* nocapture noundef writeonly %ret) unnamed_addr #8 {
entry:
  %0 = atomicrmw sub i32* %val, i32 1 monotonic, align 4
  %sub = add nsw i32 %0, -1
  store i32 %sub, i32* %ret, align 4, !tbaa !21
  %cmp = icmp eq i32 %sub, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  fence acquire
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare void @evp_md_free_int(%struct.evp_md_st* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define void @EVP_MD_do_all_provided(%struct.ossl_lib_ctx_st* noundef %libctx, void (%struct.evp_md_st*, i8*)* noundef %fn, i8* noundef %arg) local_unnamed_addr #0 {
entry:
  %0 = bitcast void (%struct.evp_md_st*, i8*)* %fn to void (i8*, i8*)*
  tail call void @evp_generic_do_all(%struct.ossl_lib_ctx_st* noundef %libctx, i32 noundef 1, void (i8*, i8*)* noundef %0, i8* noundef %arg, i8* (i32, %struct.ossl_algorithm_st*, %struct.ossl_provider_st*)* noundef nonnull @evp_md_from_algorithm, i32 (i8*)* noundef nonnull @evp_md_up_ref, void (i8*)* noundef nonnull @evp_md_free) #10
  ret void
}

declare void @evp_generic_do_all(%struct.ossl_lib_ctx_st* noundef, i32 noundef, void (i8*, i8*)* noundef, i8* noundef, i8* (i32, %struct.ossl_algorithm_st*, %struct.ossl_provider_st*)* noundef, i32 (i8*)* noundef, void (i8*)* noundef) local_unnamed_addr #1

declare i32 @EVP_DigestSignInit(%struct.evp_md_ctx_st* noundef, %struct.evp_pkey_ctx_st** noundef, %struct.evp_md_st* noundef, %struct.engine_st* noundef, %struct.evp_pkey_st* noundef) local_unnamed_addr #1

declare i32 @EVP_DigestVerifyInit(%struct.evp_md_ctx_st* noundef, %struct.evp_pkey_ctx_st** noundef, %struct.evp_md_st* noundef, %struct.engine_st* noundef, %struct.evp_pkey_st* noundef) local_unnamed_addr #1

declare %struct.engine_st* @ENGINE_get_digest_engine(i32 noundef) local_unnamed_addr #1

declare i8* @OBJ_nid2sn(i32 noundef) local_unnamed_addr #1

declare %struct.evp_md_st* @ENGINE_get_digest(%struct.engine_st* noundef, i32 noundef) local_unnamed_addr #1

declare i32 @EVP_PKEY_CTX_ctrl(%struct.evp_pkey_ctx_st* noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i8* noundef) local_unnamed_addr #1

declare i32 @evp_names_do_all(%struct.ossl_provider_st* noundef, i32 noundef, void (i8*, i8*)* noundef, i8* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal void @set_legacy_nid(i8* noundef %name, i8* nocapture noundef %vlegacy_nid) #0 {
entry:
  %0 = bitcast i8* %vlegacy_nid to i32*
  %call = tail call i8* @OBJ_NAME_get(i8* noundef %name, i32 noundef 1) #10
  %1 = load i32, i32* %0, align 4, !tbaa !21
  %cmp = icmp eq i32 %1, -1
  %cmp1 = icmp eq i8* %call, null
  %or.cond20 = select i1 %cmp, i1 true, i1 %cmp1
  br i1 %or.cond20, label %cleanup, label %if.end3

if.end3:                                          ; preds = %entry
  %2 = bitcast i8* %call to %struct.evp_md_st*
  %call4 = tail call i32 @EVP_MD_get_type(%struct.evp_md_st* noundef nonnull %2) #10
  %3 = load i32, i32* %0, align 4, !tbaa !21
  %cmp5.not = icmp eq i32 %3, 0
  %cmp6.not = icmp eq i32 %3, %call4
  %or.cond = select i1 %cmp5.not, i1 true, i1 %cmp6.not
  %call4. = select i1 %or.cond, i32 %call4, i32 -1
  store i32 %call4., i32* %0, align 4, !tbaa !21
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %entry
  ret void
}

declare i8* @ossl_algorithm_get1_first_name(%struct.ossl_algorithm_st* noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal fastcc i8* (i8*)* @OSSL_FUNC_digest_newctx(%struct.ossl_dispatch_st* nocapture noundef readonly %opf) unnamed_addr #9 {
entry:
  %function = getelementptr inbounds %struct.ossl_dispatch_st, %struct.ossl_dispatch_st* %opf, i64 0, i32 1
  %0 = bitcast void ()** %function to i8* (i8*)**
  %1 = load i8* (i8*)*, i8* (i8*)** %0, align 8, !tbaa !73
  ret i8* (i8*)* %1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal fastcc i32 (i8*, %struct.ossl_param_st*)* @OSSL_FUNC_digest_init(%struct.ossl_dispatch_st* nocapture noundef readonly %opf) unnamed_addr #9 {
entry:
  %function = getelementptr inbounds %struct.ossl_dispatch_st, %struct.ossl_dispatch_st* %opf, i64 0, i32 1
  %0 = bitcast void ()** %function to i32 (i8*, %struct.ossl_param_st*)**
  %1 = load i32 (i8*, %struct.ossl_param_st*)*, i32 (i8*, %struct.ossl_param_st*)** %0, align 8, !tbaa !73
  ret i32 (i8*, %struct.ossl_param_st*)* %1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal fastcc i32 (i8*, i8*, i64)* @OSSL_FUNC_digest_update(%struct.ossl_dispatch_st* nocapture noundef readonly %opf) unnamed_addr #9 {
entry:
  %function = getelementptr inbounds %struct.ossl_dispatch_st, %struct.ossl_dispatch_st* %opf, i64 0, i32 1
  %0 = bitcast void ()** %function to i32 (i8*, i8*, i64)**
  %1 = load i32 (i8*, i8*, i64)*, i32 (i8*, i8*, i64)** %0, align 8, !tbaa !73
  ret i32 (i8*, i8*, i64)* %1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal fastcc i32 (i8*, i8*, i64*, i64)* @OSSL_FUNC_digest_final(%struct.ossl_dispatch_st* nocapture noundef readonly %opf) unnamed_addr #9 {
entry:
  %function = getelementptr inbounds %struct.ossl_dispatch_st, %struct.ossl_dispatch_st* %opf, i64 0, i32 1
  %0 = bitcast void ()** %function to i32 (i8*, i8*, i64*, i64)**
  %1 = load i32 (i8*, i8*, i64*, i64)*, i32 (i8*, i8*, i64*, i64)** %0, align 8, !tbaa !73
  ret i32 (i8*, i8*, i64*, i64)* %1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal fastcc i32 (i8*, i8*, i64, i8*, i64*, i64)* @OSSL_FUNC_digest_digest(%struct.ossl_dispatch_st* nocapture noundef readonly %opf) unnamed_addr #9 {
entry:
  %function = getelementptr inbounds %struct.ossl_dispatch_st, %struct.ossl_dispatch_st* %opf, i64 0, i32 1
  %0 = bitcast void ()** %function to i32 (i8*, i8*, i64, i8*, i64*, i64)**
  %1 = load i32 (i8*, i8*, i64, i8*, i64*, i64)*, i32 (i8*, i8*, i64, i8*, i64*, i64)** %0, align 8, !tbaa !73
  ret i32 (i8*, i8*, i64, i8*, i64*, i64)* %1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal fastcc void (i8*)* @OSSL_FUNC_digest_freectx(%struct.ossl_dispatch_st* nocapture noundef readonly %opf) unnamed_addr #9 {
entry:
  %function = getelementptr inbounds %struct.ossl_dispatch_st, %struct.ossl_dispatch_st* %opf, i64 0, i32 1
  %0 = bitcast void ()** %function to void (i8*)**
  %1 = load void (i8*)*, void (i8*)** %0, align 8, !tbaa !73
  ret void (i8*)* %1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal fastcc i8* (i8*)* @OSSL_FUNC_digest_dupctx(%struct.ossl_dispatch_st* nocapture noundef readonly %opf) unnamed_addr #9 {
entry:
  %function = getelementptr inbounds %struct.ossl_dispatch_st, %struct.ossl_dispatch_st* %opf, i64 0, i32 1
  %0 = bitcast void ()** %function to i8* (i8*)**
  %1 = load i8* (i8*)*, i8* (i8*)** %0, align 8, !tbaa !73
  ret i8* (i8*)* %1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal fastcc i32 (%struct.ossl_param_st*)* @OSSL_FUNC_digest_get_params(%struct.ossl_dispatch_st* nocapture noundef readonly %opf) unnamed_addr #9 {
entry:
  %function = getelementptr inbounds %struct.ossl_dispatch_st, %struct.ossl_dispatch_st* %opf, i64 0, i32 1
  %0 = bitcast void ()** %function to i32 (%struct.ossl_param_st*)**
  %1 = load i32 (%struct.ossl_param_st*)*, i32 (%struct.ossl_param_st*)** %0, align 8, !tbaa !73
  ret i32 (%struct.ossl_param_st*)* %1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal fastcc i32 (i8*, %struct.ossl_param_st*)* @OSSL_FUNC_digest_set_ctx_params(%struct.ossl_dispatch_st* nocapture noundef readonly %opf) unnamed_addr #9 {
entry:
  %function = getelementptr inbounds %struct.ossl_dispatch_st, %struct.ossl_dispatch_st* %opf, i64 0, i32 1
  %0 = bitcast void ()** %function to i32 (i8*, %struct.ossl_param_st*)**
  %1 = load i32 (i8*, %struct.ossl_param_st*)*, i32 (i8*, %struct.ossl_param_st*)** %0, align 8, !tbaa !73
  ret i32 (i8*, %struct.ossl_param_st*)* %1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal fastcc i32 (i8*, %struct.ossl_param_st*)* @OSSL_FUNC_digest_get_ctx_params(%struct.ossl_dispatch_st* nocapture noundef readonly %opf) unnamed_addr #9 {
entry:
  %function = getelementptr inbounds %struct.ossl_dispatch_st, %struct.ossl_dispatch_st* %opf, i64 0, i32 1
  %0 = bitcast void ()** %function to i32 (i8*, %struct.ossl_param_st*)**
  %1 = load i32 (i8*, %struct.ossl_param_st*)*, i32 (i8*, %struct.ossl_param_st*)** %0, align 8, !tbaa !73
  ret i32 (i8*, %struct.ossl_param_st*)* %1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal fastcc %struct.ossl_param_st* (i8*)* @OSSL_FUNC_digest_gettable_params(%struct.ossl_dispatch_st* nocapture noundef readonly %opf) unnamed_addr #9 {
entry:
  %function = getelementptr inbounds %struct.ossl_dispatch_st, %struct.ossl_dispatch_st* %opf, i64 0, i32 1
  %0 = bitcast void ()** %function to %struct.ossl_param_st* (i8*)**
  %1 = load %struct.ossl_param_st* (i8*)*, %struct.ossl_param_st* (i8*)** %0, align 8, !tbaa !73
  ret %struct.ossl_param_st* (i8*)* %1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal fastcc %struct.ossl_param_st* (i8*, i8*)* @OSSL_FUNC_digest_settable_ctx_params(%struct.ossl_dispatch_st* nocapture noundef readonly %opf) unnamed_addr #9 {
entry:
  %function = getelementptr inbounds %struct.ossl_dispatch_st, %struct.ossl_dispatch_st* %opf, i64 0, i32 1
  %0 = bitcast void ()** %function to %struct.ossl_param_st* (i8*, i8*)**
  %1 = load %struct.ossl_param_st* (i8*, i8*)*, %struct.ossl_param_st* (i8*, i8*)** %0, align 8, !tbaa !73
  ret %struct.ossl_param_st* (i8*, i8*)* %1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal fastcc %struct.ossl_param_st* (i8*, i8*)* @OSSL_FUNC_digest_gettable_ctx_params(%struct.ossl_dispatch_st* nocapture noundef readonly %opf) unnamed_addr #9 {
entry:
  %function = getelementptr inbounds %struct.ossl_dispatch_st, %struct.ossl_dispatch_st* %opf, i64 0, i32 1
  %0 = bitcast void ()** %function to %struct.ossl_param_st* (i8*, i8*)**
  %1 = load %struct.ossl_param_st* (i8*, i8*)*, %struct.ossl_param_st* (i8*, i8*)** %0, align 8, !tbaa !73
  ret %struct.ossl_param_st* (i8*, i8*)* %1
}

declare i32 @ossl_provider_up_ref(%struct.ossl_provider_st* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @evp_md_cache_constants(%struct.evp_md_st* noundef %md) unnamed_addr #0 {
entry:
  %xof = alloca i32, align 4
  %algid_absent = alloca i32, align 4
  %blksz = alloca i64, align 8
  %mdsize = alloca i64, align 8
  %params = alloca [5 x %struct.ossl_param_st], align 16
  %tmp2 = alloca %struct.ossl_param_st, align 8
  %tmp4 = alloca %struct.ossl_param_st, align 8
  %tmp6 = alloca %struct.ossl_param_st, align 8
  %tmp8 = alloca %struct.ossl_param_st, align 8
  %0 = bitcast i32* %xof to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #12
  store i32 0, i32* %xof, align 4, !tbaa !21
  %1 = bitcast i32* %algid_absent to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %1) #12
  store i32 0, i32* %algid_absent, align 4, !tbaa !21
  %2 = bitcast i64* %blksz to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #12
  store i64 0, i64* %blksz, align 8, !tbaa !39
  %3 = bitcast i64* %mdsize to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %3) #12
  store i64 0, i64* %mdsize, align 8, !tbaa !39
  %4 = bitcast [5 x %struct.ossl_param_st]* %params to i8*
  call void @llvm.lifetime.start.p0i8(i64 200, i8* nonnull %4) #12
  %arrayidx = getelementptr inbounds [5 x %struct.ossl_param_st], [5 x %struct.ossl_param_st]* %params, i64 0, i64 0
  %params31 = getelementptr inbounds [5 x %struct.ossl_param_st], [5 x %struct.ossl_param_st]* %params, i64 0, i64 0
  call void @OSSL_PARAM_construct_size_t(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %params31, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0), i64* noundef nonnull %blksz) #10
  %arrayidx1 = getelementptr inbounds [5 x %struct.ossl_param_st], [5 x %struct.ossl_param_st]* %params, i64 0, i64 1
  %5 = bitcast %struct.ossl_param_st* %tmp2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %5) #12
  call void @OSSL_PARAM_construct_size_t(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %tmp2, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64* noundef nonnull %mdsize) #10
  %6 = bitcast %struct.ossl_param_st* %arrayidx1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(40) %6, i8* noundef nonnull align 8 dereferenceable(40) %5, i64 40, i1 false), !tbaa.struct !42
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %5) #12
  %arrayidx3 = getelementptr inbounds [5 x %struct.ossl_param_st], [5 x %struct.ossl_param_st]* %params, i64 0, i64 2
  %7 = bitcast %struct.ossl_param_st* %tmp4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %7) #12
  call void @OSSL_PARAM_construct_int(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %tmp4, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), i32* noundef nonnull %xof) #10
  %8 = bitcast %struct.ossl_param_st* %arrayidx3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(40) %8, i8* noundef nonnull align 8 dereferenceable(40) %7, i64 40, i1 false), !tbaa.struct !42
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %7) #12
  %arrayidx5 = getelementptr inbounds [5 x %struct.ossl_param_st], [5 x %struct.ossl_param_st]* %params, i64 0, i64 3
  %9 = bitcast %struct.ossl_param_st* %tmp6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %9) #12
  call void @OSSL_PARAM_construct_int(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %tmp6, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i64 0, i64 0), i32* noundef nonnull %algid_absent) #10
  %10 = bitcast %struct.ossl_param_st* %arrayidx5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(40) %10, i8* noundef nonnull align 8 dereferenceable(40) %9, i64 40, i1 false), !tbaa.struct !42
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %9) #12
  %arrayidx7 = getelementptr inbounds [5 x %struct.ossl_param_st], [5 x %struct.ossl_param_st]* %params, i64 0, i64 4
  %11 = bitcast %struct.ossl_param_st* %tmp8 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %11) #12
  call void @OSSL_PARAM_construct_end(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %tmp8) #10
  %12 = bitcast %struct.ossl_param_st* %arrayidx7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(40) %12, i8* noundef nonnull align 8 dereferenceable(40) %11, i64 40, i1 false), !tbaa.struct !42
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %11) #12
  %call = call i32 @evp_do_md_getparams(%struct.evp_md_st* noundef %md, %struct.ossl_param_st* noundef nonnull %arrayidx) #10
  %cmp = icmp sgt i32 %call, 0
  %13 = load i64, i64* %mdsize, align 8, !tbaa !39
  %cmp9 = icmp ult i64 %13, 2147483648
  %14 = load i64, i64* %blksz, align 8
  %cmp11 = icmp ult i64 %14, 2147483648
  %or.cond = select i1 %cmp9, i1 %cmp11, i1 false
  %narrow = select i1 %or.cond, i1 %cmp, i1 false
  br i1 %narrow, label %if.then13, label %if.end24

if.then13:                                        ; preds = %entry
  %conv14 = trunc i64 %14 to i32
  %block_size = getelementptr inbounds %struct.evp_md_st, %struct.evp_md_st* %md, i64 0, i32 10
  store i32 %conv14, i32* %block_size, align 8, !tbaa !74
  %conv15 = trunc i64 %13 to i32
  %md_size = getelementptr inbounds %struct.evp_md_st, %struct.evp_md_st* %md, i64 0, i32 2
  store i32 %conv15, i32* %md_size, align 8, !tbaa !75
  %15 = load i32, i32* %xof, align 4, !tbaa !21
  %tobool16.not = icmp eq i32 %15, 0
  br i1 %tobool16.not, label %if.end18, label %if.then17

if.then17:                                        ; preds = %if.then13
  %flags = getelementptr inbounds %struct.evp_md_st, %struct.evp_md_st* %md, i64 0, i32 3
  %16 = load i64, i64* %flags, align 8, !tbaa !44
  %or = or i64 %16, 2
  store i64 %or, i64* %flags, align 8, !tbaa !44
  br label %if.end18

if.end18:                                         ; preds = %if.then17, %if.then13
  %17 = load i32, i32* %algid_absent, align 4, !tbaa !21
  %tobool19.not = icmp eq i32 %17, 0
  br i1 %tobool19.not, label %if.end24, label %if.then20

if.then20:                                        ; preds = %if.end18
  %flags21 = getelementptr inbounds %struct.evp_md_st, %struct.evp_md_st* %md, i64 0, i32 3
  %18 = load i64, i64* %flags21, align 8, !tbaa !44
  %or22 = or i64 %18, 8
  store i64 %or22, i64* %flags21, align 8, !tbaa !44
  br label %if.end24

if.end24:                                         ; preds = %if.end18, %if.then20, %entry
  %spec.store.select = zext i1 %narrow to i32
  call void @llvm.lifetime.end.p0i8(i64 200, i8* nonnull %4) #12
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3) #12
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #12
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %1) #12
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #12
  ret i32 %spec.store.select
}

declare i8* @OBJ_NAME_get(i8* noundef, i32 noundef) local_unnamed_addr #1

declare i32 @EVP_MD_get_type(%struct.evp_md_st* noundef) local_unnamed_addr #1

declare void @OSSL_PARAM_construct_int(%struct.ossl_param_st* sret(%struct.ossl_param_st) align 8, i8* noundef, i32* noundef) local_unnamed_addr #1

declare i32 @evp_do_md_getparams(%struct.evp_md_st* noundef, %struct.ossl_param_st* noundef) local_unnamed_addr #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #3 = { noreturn "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #5 = { mustprogress nofree noinline nounwind uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #8 = { mustprogress nofree noinline norecurse nounwind uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nobuiltin nounwind "no-builtins" }
attributes #11 = { nobuiltin "no-builtins" }
attributes #12 = { nounwind }
attributes #13 = { nobuiltin noreturn nounwind "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{!"clang version 14.0.0"}
!4 = !{!5, !6, i64 56}
!5 = !{!"evp_md_ctx_st", !6, i64 0, !6, i64 8, !6, i64 16, !9, i64 24, !6, i64 32, !6, i64 40, !6, i64 48, !6, i64 56, !6, i64 64}
!6 = !{!"any pointer", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!"long", !7, i64 0}
!10 = !{!5, !6, i64 8}
!11 = !{!12, !6, i64 176}
!12 = !{!"evp_md_st", !13, i64 0, !13, i64 4, !13, i64 8, !9, i64 16, !13, i64 24, !6, i64 32, !6, i64 40, !6, i64 48, !6, i64 56, !6, i64 64, !13, i64 72, !13, i64 76, !6, i64 80, !13, i64 88, !6, i64 96, !6, i64 104, !6, i64 112, !7, i64 120, !6, i64 128, !6, i64 136, !6, i64 144, !6, i64 152, !6, i64 160, !6, i64 168, !6, i64 176, !6, i64 184, !6, i64 192, !6, i64 200, !6, i64 208, !6, i64 216, !6, i64 224, !6, i64 232}
!13 = !{!"int", !7, i64 0}
!14 = !{!12, !6, i64 64}
!15 = !{!12, !13, i64 76}
!16 = !{!5, !6, i64 32}
!17 = !{!5, !6, i64 16}
!18 = !{!5, !6, i64 64}
!19 = !{!5, !6, i64 0}
!20 = !{!12, !13, i64 24}
!21 = !{!13, !13, i64 0}
!22 = !{!5, !6, i64 40}
!23 = !{!24, !6, i64 8}
!24 = !{!"asn1_string_st", !13, i64 0, !13, i64 4, !6, i64 8, !9, i64 16}
!25 = !{!24, !13, i64 0}
!26 = !{!27, !13, i64 0}
!27 = !{!"evp_pkey_ctx_st", !13, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !7, i64 40, !28, i64 56, !6, i64 88, !6, i64 96, !6, i64 104, !13, i64 112, !13, i64 116, !6, i64 120, !6, i64 128, !6, i64 136, !6, i64 144, !6, i64 152, !13, i64 160, !6, i64 168}
!28 = !{!"", !6, i64 0, !6, i64 8, !9, i64 16, !13, i64 24}
!29 = !{!7, !7, i64 0}
!30 = !{!12, !13, i64 0}
!31 = !{!5, !9, i64 24}
!32 = !{!12, !6, i64 112}
!33 = !{!12, !6, i64 136}
!34 = !{!12, !6, i64 144}
!35 = !{!12, !6, i64 40}
!36 = !{!5, !6, i64 48}
!37 = !{!12, !6, i64 32}
!38 = !{!12, !6, i64 152}
!39 = !{!9, !9, i64 0}
!40 = !{!12, !6, i64 160}
!41 = !{!12, !6, i64 48}
!42 = !{i64 0, i64 8, !43, i64 8, i64 4, !21, i64 16, i64 8, !43, i64 24, i64 8, !39, i64 32, i64 8, !39}
!43 = !{!6, !6, i64 0}
!44 = !{!12, !9, i64 16}
!45 = !{!12, !6, i64 80}
!46 = !{!47, !6, i64 232}
!47 = !{!"evp_signature_st", !13, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !7, i64 32, !6, i64 40, !6, i64 48, !6, i64 56, !6, i64 64, !6, i64 72, !6, i64 80, !6, i64 88, !6, i64 96, !6, i64 104, !6, i64 112, !6, i64 120, !6, i64 128, !6, i64 136, !6, i64 144, !6, i64 152, !6, i64 160, !6, i64 168, !6, i64 176, !6, i64 184, !6, i64 192, !6, i64 200, !6, i64 208, !6, i64 216, !6, i64 224, !6, i64 232, !6, i64 240}
!48 = !{!12, !6, i64 200}
!49 = !{!12, !6, i64 184}
!50 = !{i64 0, i64 8, !43, i64 8, i64 8, !43, i64 16, i64 8, !43, i64 24, i64 8, !39, i64 32, i64 8, !43, i64 40, i64 8, !43, i64 48, i64 8, !43, i64 56, i64 8, !43, i64 64, i64 8, !43}
!51 = !{!12, !6, i64 56}
!52 = !{!12, !6, i64 192}
!53 = !{!12, !6, i64 216}
!54 = !{!12, !6, i64 224}
!55 = !{!47, !6, i64 240}
!56 = !{!47, !6, i64 216}
!57 = !{!12, !6, i64 208}
!58 = !{!12, !6, i64 232}
!59 = !{!47, !6, i64 224}
!60 = !{!12, !6, i64 128}
!61 = !{!12, !7, i64 120}
!62 = !{!63, !6, i64 16}
!63 = !{!"ossl_algorithm_st", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24}
!64 = !{!12, !13, i64 88}
!65 = !{!12, !6, i64 96}
!66 = !{!63, !6, i64 24}
!67 = !{!12, !6, i64 104}
!68 = !{!69, !13, i64 0}
!69 = !{!"ossl_dispatch_st", !13, i64 0, !6, i64 8}
!70 = !{!12, !6, i64 168}
!71 = distinct !{!71, !72}
!72 = !{!"llvm.loop.mustprogress"}
!73 = !{!69, !6, i64 8}
!74 = !{!12, !13, i64 72}
!75 = !{!12, !13, i64 8}
