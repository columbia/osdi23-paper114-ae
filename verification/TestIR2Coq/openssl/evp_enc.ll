; ModuleID = 'crypto/evp/evp_enc.c'
source_filename = "crypto/evp/evp_enc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evp_cipher_ctx_st = type { %struct.evp_cipher_st*, %struct.engine_st*, i32, i32, [16 x i8], [16 x i8], [32 x i8], i32, i8*, i32, i64, i8*, i32, i32, [32 x i8], i8*, %struct.evp_cipher_st* }
%struct.engine_st = type opaque
%struct.evp_cipher_st = type { i32, i32, i32, i32, i64, i32, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i32)*, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i64)*, {}*, i32, i32 (%struct.evp_cipher_ctx_st*, %struct.asn1_type_st*)*, i32 (%struct.evp_cipher_ctx_st*, %struct.asn1_type_st*)*, i32 (%struct.evp_cipher_ctx_st*, i32, i32, i8*)*, i8*, i32, i8*, i8*, %struct.ossl_provider_st*, i32, i8*, i8* (i8*)*, i32 (i8*, i8*, i64, i8*, i64, %struct.ossl_param_st*)*, i32 (i8*, i8*, i64, i8*, i64, %struct.ossl_param_st*)*, i32 (i8*, i8*, i64*, i64, i8*, i64)*, i32 (i8*, i8*, i64*, i64)*, i32 (i8*, i8*, i64*, i64, i8*, i64)*, void (i8*)*, i8* (i8*)*, i32 (%struct.ossl_param_st*)*, i32 (i8*, %struct.ossl_param_st*)*, i32 (i8*, %struct.ossl_param_st*)*, %struct.ossl_param_st* (i8*)*, %struct.ossl_param_st* (i8*, i8*)*, %struct.ossl_param_st* (i8*, i8*)* }
%struct.asn1_type_st = type { i32, %union.anon }
%union.anon = type { i8* }
%struct.ossl_provider_st = type opaque
%struct.ossl_param_st = type { i8*, i32, i8*, i64, i64 }
%struct.ossl_lib_ctx_st = type opaque
%struct.ossl_algorithm_st = type { i8*, i8*, %struct.ossl_dispatch_st*, i8* }
%struct.ossl_dispatch_st = type { i32, void ()* }

@.str = private unnamed_addr constant [21 x i8] c"crypto/evp/evp_enc.c\00", align 1
@__func__.EVP_EncryptUpdate = private unnamed_addr constant [18 x i8] c"EVP_EncryptUpdate\00", align 1
@__func__.EVP_EncryptFinal_ex = private unnamed_addr constant [20 x i8] c"EVP_EncryptFinal_ex\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"assertion failed: b <= sizeof(ctx->buf)\00", align 1
@__func__.EVP_DecryptUpdate = private unnamed_addr constant [18 x i8] c"EVP_DecryptUpdate\00", align 1
@.str.2 = private unnamed_addr constant [42 x i8] c"assertion failed: b <= sizeof(ctx->final)\00", align 1
@__func__.EVP_DecryptFinal_ex = private unnamed_addr constant [20 x i8] c"EVP_DecryptFinal_ex\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"keylen\00", align 1
@__func__.EVP_CIPHER_CTX_set_key_length = private unnamed_addr constant [30 x i8] c"EVP_CIPHER_CTX_set_key_length\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"padding\00", align 1
@__func__.EVP_CIPHER_CTX_ctrl = private unnamed_addr constant [20 x i8] c"EVP_CIPHER_CTX_ctrl\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"randkey\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"ivlen\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"tlsivfixed\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"tlsivgen\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"tlsivinv\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"rounds\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"speed\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"tag\00", align 1
@.str.13 = private unnamed_addr constant [7 x i8] c"tlsaad\00", align 1
@.str.14 = private unnamed_addr constant [10 x i8] c"tlsaadpad\00", align 1
@.str.15 = private unnamed_addr constant [8 x i8] c"keybits\00", align 1
@.str.16 = private unnamed_addr constant [21 x i8] c"tls1multi_maxsndfrag\00", align 1
@.str.17 = private unnamed_addr constant [19 x i8] c"tls1multi_maxbufsz\00", align 1
@.str.18 = private unnamed_addr constant [14 x i8] c"tls1multi_aad\00", align 1
@.str.19 = private unnamed_addr constant [21 x i8] c"tls1multi_interleave\00", align 1
@.str.20 = private unnamed_addr constant [21 x i8] c"tls1multi_aadpacklen\00", align 1
@.str.21 = private unnamed_addr constant [14 x i8] c"tls1multi_enc\00", align 1
@.str.22 = private unnamed_addr constant [16 x i8] c"tls1multi_encin\00", align 1
@.str.23 = private unnamed_addr constant [17 x i8] c"tls1multi_enclen\00", align 1
@.str.24 = private unnamed_addr constant [7 x i8] c"mackey\00", align 1
@__func__.EVP_CIPHER_CTX_copy = private unnamed_addr constant [20 x i8] c"EVP_CIPHER_CTX_copy\00", align 1
@__func__.evp_cipher_init_internal = private unnamed_addr constant [25 x i8] c"evp_cipher_init_internal\00", align 1
@.str.25 = private unnamed_addr constant [5 x i8] c"NULL\00", align 1
@.str.26 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.27 = private unnamed_addr constant [112 x i8] c"assertion failed: ctx->cipher->block_size == 1 || ctx->cipher->block_size == 8 || ctx->cipher->block_size == 16\00", align 1
@__func__.evp_EncryptDecryptUpdate = private unnamed_addr constant [25 x i8] c"evp_EncryptDecryptUpdate\00", align 1
@.str.28 = private unnamed_addr constant [46 x i8] c"assertion failed: bl <= (int)sizeof(ctx->buf)\00", align 1
@__func__.evp_cipher_from_algorithm = private unnamed_addr constant [26 x i8] c"evp_cipher_from_algorithm\00", align 1

; Function Attrs: noinline nounwind uwtable
define i32 @EVP_CIPHER_CTX_reset(%struct.evp_cipher_ctx_st* noundef %ctx) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.evp_cipher_ctx_st* %ctx, null
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %cipher = getelementptr inbounds %struct.evp_cipher_ctx_st, %struct.evp_cipher_ctx_st* %ctx, i64 0, i32 0
  %0 = load %struct.evp_cipher_st*, %struct.evp_cipher_st** %cipher, align 8, !tbaa !4
  %cmp1 = icmp eq %struct.evp_cipher_st* %0, null
  br i1 %cmp1, label %if.end42, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %prov = getelementptr inbounds %struct.evp_cipher_st, %struct.evp_cipher_st* %0, i64 0, i32 17
  %1 = load %struct.ossl_provider_st*, %struct.ossl_provider_st** %prov, align 8, !tbaa !11
  %cmp3 = icmp eq %struct.ossl_provider_st* %1, null
  br i1 %cmp3, label %if.then23, label %if.end5

if.end5:                                          ; preds = %lor.lhs.false
  %algctx = getelementptr inbounds %struct.evp_cipher_ctx_st, %struct.evp_cipher_ctx_st* %ctx, i64 0, i32 15
  %2 = load i8*, i8** %algctx, align 8, !tbaa !13
  %cmp6.not = icmp eq i8* %2, null
  br i1 %cmp6.not, label %if.end16, label %if.then7

if.then7:                                         ; preds = %if.end5
  %freectx = getelementptr inbounds %struct.evp_cipher_st, %struct.evp_cipher_st* %0, i64 0, i32 26
  %3 = load void (i8*)*, void (i8*)** %freectx, align 8, !tbaa !14
  %cmp9.not = icmp eq void (i8*)* %3, null
  br i1 %cmp9.not, label %if.end14, label %if.then10

if.then10:                                        ; preds = %if.then7
  tail call void %3(i8* noundef nonnull %2) #11
  br label %if.end14

if.end14:                                         ; preds = %if.then10, %if.then7
  store i8* null, i8** %algctx, align 8, !tbaa !13
  br label %if.end16

if.end16:                                         ; preds = %if.end14, %if.end5
  %fetched_cipher = getelementptr inbounds %struct.evp_cipher_ctx_st, %struct.evp_cipher_ctx_st* %ctx, i64 0, i32 16
  %4 = load %struct.evp_cipher_st*, %struct.evp_cipher_st** %fetched_cipher, align 8, !tbaa !15
  %cmp17.not = icmp eq %struct.evp_cipher_st* %4, null
  br i1 %cmp17.not, label %return.sink.split, label %if.then18

if.then18:                                        ; preds = %if.end16
  tail call void @EVP_CIPHER_free(%struct.evp_cipher_st* noundef nonnull %4) #12
  br label %return.sink.split

if.then23:                                        ; preds = %lor.lhs.false
  %cleanup = getelementptr inbounds %struct.evp_cipher_st, %struct.evp_cipher_st* %0, i64 0, i32 8
  %cleanup25 = bitcast {}** %cleanup to i32 (%struct.evp_cipher_ctx_st*)**
  %5 = load i32 (%struct.evp_cipher_ctx_st*)*, i32 (%struct.evp_cipher_ctx_st*)** %cleanup25, align 8, !tbaa !16
  %tobool.not = icmp eq i32 (%struct.evp_cipher_ctx_st*)* %5, null
  br i1 %tobool.not, label %if.end32, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.then23
  %call29 = tail call i32 %5(%struct.evp_cipher_ctx_st* noundef nonnull %ctx) #11
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %return, label %if.end32

if.end32:                                         ; preds = %land.lhs.true, %if.then23
  %cipher_data = getelementptr inbounds %struct.evp_cipher_ctx_st, %struct.evp_cipher_ctx_st* %ctx, i64 0, i32 11
  %6 = load i8*, i8** %cipher_data, align 8, !tbaa !17
  %tobool33.not = icmp eq i8* %6, null
  br i1 %tobool33.not, label %if.end42, label %land.lhs.true34

land.lhs.true34:                                  ; preds = %if.end32
  %7 = load %struct.evp_cipher_st*, %struct.evp_cipher_st** %cipher, align 8, !tbaa !4
  %ctx_size = getelementptr inbounds %struct.evp_cipher_st, %struct.evp_cipher_st* %7, i64 0, i32 9
  %8 = load i32, i32* %ctx_size, align 8, !tbaa !18
  %tobool36.not = icmp eq i32 %8, 0
  br i1 %tobool36.not, label %if.end42, label %if.then37

if.then37:                                        ; preds = %land.lhs.true34
  %conv = sext i32 %8 to i64
  tail call void @OPENSSL_cleanse(i8* noundef nonnull %6, i64 noundef %conv) #11
  br label %if.end42

if.end42:                                         ; preds = %if.end, %if.end32, %land.lhs.true34, %if.then37
  %cipher_data43 = getelementptr inbounds %struct.evp_cipher_ctx_st, %struct.evp_cipher_ctx_st* %ctx, i64 0, i32 11
  %9 = load i8*, i8** %cipher_data43, align 8, !tbaa !17
  tail call void @CRYPTO_free(i8* noundef %9, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 59) #11
  %engine = getelementptr inbounds %struct.evp_cipher_ctx_st, %struct.evp_cipher_ctx_st* %ctx, i64 0, i32 1
  %10 = load %struct.engine_st*, %struct.engine_st** %engine, align 8, !tbaa !19
  %call44 = tail call i32 @ENGINE_finish(%struct.engine_st* noundef %10) #11
  br label %return.sink.split

return.sink.split:                                ; preds = %if.end16, %if.then18, %if.end42
  %11 = bitcast %struct.evp_cipher_ctx_st* %ctx to i8*
  %call45 = tail call i8* @memset(i8* noundef nonnull %11, i32 noundef 0, i64 noundef 184) #11
  br label %return

return:                                           ; preds = %return.sink.split, %land.lhs.true, %entry
  %retval.0 = phi i32 [ 1, %entry ], [ 0, %land.lhs.true ], [ 1, %return.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define void @EVP_CIPHER_free(%struct.evp_cipher_st* noundef %cipher) local_unnamed_addr #0 {
entry:
  %i = alloca i32, align 4
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #13
  %cmp = icmp eq %struct.evp_cipher_st* %cipher, null
  br i1 %cmp, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %origin = getelementptr inbounds %struct.evp_cipher_st, %struct.evp_cipher_st* %cipher, i64 0, i32 5
  %1 = load i32, i32* %origin, align 8, !tbaa !20
  %cmp1.not = icmp eq i32 %1, 0
  br i1 %cmp1.not, label %if.end, label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %refcnt = getelementptr inbounds %struct.evp_cipher_st, %struct.evp_cipher_st* %cipher, i64 0, i32 18
  call fastcc void @CRYPTO_DOWN_REF(i32* noundef nonnull %refcnt, i32* noundef nonnull %i) #12
  %2 = load i32, i32* %i, align 4, !tbaa !21
  %cmp2 = icmp sgt i32 %2, 0
  br i1 %cmp2, label %cleanup, label %if.end4

if.end4:                                          ; preds = %if.end
  tail call void @evp_cipher_free_int(%struct.evp_cipher_st* noundef nonnull %cipher) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry, %lor.lhs.false, %if.end4
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #13
  ret void
}

; Function Attrs: nounwind
declare i8* @memset(i8* noundef, i32 noundef, i64 noundef) local_unnamed_addr #1

declare void @OPENSSL_cleanse(i8* noundef, i64 noundef) local_unnamed_addr #2

declare void @CRYPTO_free(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare i32 @ENGINE_finish(%struct.engine_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define %struct.evp_cipher_ctx_st* @EVP_CIPHER_CTX_new() local_unnamed_addr #0 {
entry:
  %call = tail call i8* @CRYPTO_zalloc(i64 noundef 184, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 69) #11
  %0 = bitcast i8* %call to %struct.evp_cipher_ctx_st*
  ret %struct.evp_cipher_ctx_st* %0
}

declare i8* @CRYPTO_zalloc(i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define void @EVP_CIPHER_CTX_free(%struct.evp_cipher_ctx_st* noundef %ctx) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.evp_cipher_ctx_st* %ctx, null
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %call = tail call i32 @EVP_CIPHER_CTX_reset(%struct.evp_cipher_ctx_st* noundef nonnull %ctx) #12
  %0 = bitcast %struct.evp_cipher_ctx_st* %ctx to i8*
  tail call void @CRYPTO_free(i8* noundef nonnull %0, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 77) #11
  br label %return

return:                                           ; preds = %entry, %if.end
  ret void
}

; Function Attrs: noinline nounwind uwtable
define i32 @EVP_CipherInit_ex2(%struct.evp_cipher_ctx_st* noundef %ctx, %struct.evp_cipher_st* noundef %cipher, i8* noundef %key, i8* noundef %iv, i32 noundef %enc, %struct.ossl_param_st* noundef %params) local_unnamed_addr #0 {
entry:
  %call = tail call fastcc i32 @evp_cipher_init_internal(%struct.evp_cipher_ctx_st* noundef %ctx, %struct.evp_cipher_st* noundef %cipher, %struct.engine_st* noundef null, i8* noundef %key, i8* noundef %iv, i32 noundef %enc, %struct.ossl_param_st* noundef %params) #12
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @evp_cipher_init_internal(%struct.evp_cipher_ctx_st* noundef %ctx, %struct.evp_cipher_st* noundef %cipher, %struct.engine_st* noundef %impl, i8* noundef %key, i8* noundef %iv, i32 noundef %enc, %struct.ossl_param_st* noundef %params) unnamed_addr #0 {
entry:
  %cmp = icmp eq i32 %enc, -1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %encrypt = getelementptr inbounds %struct.evp_cipher_ctx_st, %struct.evp_cipher_ctx_st* %ctx, i64 0, i32 2
  %0 = load i32, i32* %encrypt, align 8, !tbaa !22
  br label %if.end3

if.else:                                          ; preds = %entry
  %tobool.not = icmp ne i32 %enc, 0
  %spec.store.select = zext i1 %tobool.not to i32
  %encrypt2 = getelementptr inbounds %struct.evp_cipher_ctx_st, %struct.evp_cipher_ctx_st* %ctx, i64 0, i32 2
  store i32 %spec.store.select, i32* %encrypt2, align 8, !tbaa !22
  br label %if.end3

if.end3:                                          ; preds = %if.else, %if.then
  %enc.addr.0 = phi i32 [ %0, %if.then ], [ %spec.store.select, %if.else ]
  %cmp4 = icmp eq %struct.evp_cipher_st* %cipher, null
  br i1 %cmp4, label %land.lhs.true, label %if.end8

land.lhs.true:                                    ; preds = %if.end3
  %cipher5 = getelementptr inbounds %struct.evp_cipher_ctx_st, %struct.evp_cipher_ctx_st* %ctx, i64 0, i32 0
  %1 = load %struct.evp_cipher_st*, %struct.evp_cipher_st** %cipher5, align 8, !tbaa !4
  %cmp6 = icmp eq %struct.evp_cipher_st* %1, null
  br i1 %cmp6, label %if.then7, label %if.end8

if.then7:                                         ; preds = %land.lhs.true
  tail call void @ERR_new() #11
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 104, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.evp_cipher_init_internal, i64 0, i64 0)) #11
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 6, i32 noundef 131, i8* noundef null) #11
  br label %cleanup336

if.end8:                                          ; preds = %land.lhs.true, %if.end3
  %engine = getelementptr inbounds %struct.evp_cipher_ctx_st, %struct.evp_cipher_ctx_st* %ctx, i64 0, i32 1
  %2 = load %struct.engine_st*, %struct.engine_st** %engine, align 8, !tbaa !19
  %tobool9.not = icmp eq %struct.engine_st* %2, null
  br i1 %tobool9.not, label %if.end19, label %land.lhs.true10

land.lhs.true10:                                  ; preds = %if.end8
  %cipher11 = getelementptr inbounds %struct.evp_cipher_ctx_st, %struct.evp_cipher_ctx_st* %ctx, i64 0, i32 0
  %3 = load %struct.evp_cipher_st*, %struct.evp_cipher_st** %cipher11, align 8, !tbaa !4
  %tobool12.not = icmp eq %struct.evp_cipher_st* %3, null
  br i1 %tobool12.not, label %if.end19, label %land.lhs.true13

land.lhs.true13:                                  ; preds = %land.lhs.true10
  br i1 %cmp4, label %skip_to_init, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true13
  %nid = getelementptr inbounds %struct.evp_cipher_st, %struct.evp_cipher_st* %cipher, i64 0, i32 0
  %4 = load i32, i32* %nid, align 8, !tbaa !23
  %nid16 = getelementptr inbounds %struct.evp_cipher_st, %struct.evp_cipher_st* %3, i64 0, i32 0
  %5 = load i32, i32* %nid16, align 8, !tbaa !23
  %cmp17 = icmp eq i32 %4, %5
  br i1 %cmp17, label %skip_to_init, label %if.end19

if.end19:                                         ; preds = %lor.lhs.false, %land.lhs.true10, %if.end8
  %cmp20 = icmp ne %struct.evp_cipher_st* %cipher, null
  %cmp22 = icmp eq %struct.engine_st* %impl, null
  %or.cond = and i1 %cmp20, %cmp22
  br i1 %or.cond, label %if.then23, label %if.end25

if.then23:                                        ; preds = %if.end19
  %nid24 = getelementptr inbounds %struct.evp_cipher_st, %struct.evp_cipher_st* %cipher, i64 0, i32 0
  %6 = load i32, i32* %nid24, align 8, !tbaa !23
  %call = tail call %struct.engine_st* @ENGINE_get_cipher_engine(i32 noundef %6) #11
  %.pre = load %struct.engine_st*, %struct.engine_st** %engine, align 8, !tbaa !19
  br label %if.end25

if.end25:                                         ; preds = %if.then23, %if.end19
  %7 = phi %struct.engine_st* [ %.pre, %if.then23 ], [ %2, %if.end19 ]
  %tmpimpl.0 = phi %struct.engine_st* [ %call, %if.then23 ], [ null, %if.end19 ]
  %cmp27 = icmp ne %struct.engine_st* %7, null
  %cmp29 = icmp ne %struct.engine_st* %tmpimpl.0, null
  %or.cond340 = select i1 %cmp27, i1 true, i1 %cmp29
  %cmp31 = icmp ne %struct.engine_st* %impl, null
  %or.cond341 = or i1 %cmp31, %or.cond340
  br i1 %or.cond341, label %if.then32, label %if.end40

if.then32:                                        ; preds = %if.end25
  %cipher33 = getelementptr inbounds %struct.evp_cipher_ctx_st, %struct.evp_cipher_ctx_st* %ctx, i64 0, i32 0
  %8 = load %struct.evp_cipher_st*, %struct.evp_cipher_st** %cipher33, align 8, !tbaa !4
  %fetched_cipher = getelementptr inbounds %struct.evp_cipher_ctx_st, %struct.evp_cipher_ctx_st* %ctx, i64 0, i32 16
  %9 = load %struct.evp_cipher_st*, %struct.evp_cipher_st** %fetched_cipher, align 8, !tbaa !15
  %cmp34 = icmp eq %struct.evp_cipher_st* %8, %9
  br i1 %cmp34, label %if.then35, label %if.end37

if.then35:                                        ; preds = %if.then32
  store %struct.evp_cipher_st* null, %struct.evp_cipher_st** %cipher33, align 8, !tbaa !4
  br label %if.end37

if.end37:                                         ; preds = %if.then35, %if.then32
  tail call void @EVP_CIPHER_free(%struct.evp_cipher_st* noundef %9) #12
  store %struct.evp_cipher_st* null, %struct.evp_cipher_st** %fetched_cipher, align 8, !tbaa !15
  br i1 %cmp20, label %if.then172, label %skip_to_init

if.end40:                                         ; preds = %if.end25
  br i1 %cmp20, label %land.lhs.true42, label %if.end60

land.lhs.true42:                                  ; preds = %if.end40
  %cipher43 = getelementptr inbounds %struct.evp_cipher_ctx_st, %struct.evp_cipher_ctx_st* %ctx, i64 0, i32 0
  %10 = load %struct.evp_cipher_st*, %struct.evp_cipher_st** %cipher43, align 8, !tbaa !4
  %cmp44.not = icmp eq %struct.evp_cipher_st* %10, null
  br i1 %cmp44.not, label %if.end60, label %land.lhs.true51

land.lhs.true51:                                  ; preds = %land.lhs.true42
  %cipher_data = getelementptr inbounds %struct.evp_cipher_ctx_st, %struct.evp_cipher_ctx_st* %ctx, i64 0, i32 11
  %11 = load i8*, i8** %cipher_data, align 8, !tbaa !17
  %ctx_size = getelementptr inbounds %struct.evp_cipher_st, %struct.evp_cipher_st* %10, i64 0, i32 9
  %12 = load i32, i32* %ctx_size, align 8, !tbaa !18
  %conv = sext i32 %12 to i64
  tail call void @CRYPTO_clear_free(i8* noundef %11, i64 noundef %conv, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 146) #11
  store i8* null, i8** %cipher_data, align 8, !tbaa !17
  %.pr = load %struct.evp_cipher_st*, %struct.evp_cipher_st** %cipher43, align 8, !tbaa !4
  %cmp53.not = icmp eq %struct.evp_cipher_st* %.pr, null
  br i1 %cmp53.not, label %if.end60, label %if.then55

if.then55:                                        ; preds = %land.lhs.true51
  %flags56 = getelementptr inbounds %struct.evp_cipher_ctx_st, %struct.evp_cipher_ctx_st* %ctx, i64 0, i32 10
  %13 = load i64, i64* %flags56, align 8, !tbaa !24
  %call57 = tail call i32 @EVP_CIPHER_CTX_reset(%struct.evp_cipher_ctx_st* noundef nonnull %ctx) #12
  %encrypt58 = getelementptr inbounds %struct.evp_cipher_ctx_st, %struct.evp_cipher_ctx_st* %ctx, i64 0, i32 2
  store i32 %enc.addr.0, i32* %encrypt58, align 8, !tbaa !22
  store i64 %13, i64* %flags56, align 8, !tbaa !24
  br label %if.end60

if.end60:                                         ; preds = %land.lhs.true42, %if.end40, %if.then55, %land.lhs.true51
  br i1 %cmp4, label %if.then63, label %if.end65

if.then63:                                        ; preds = %if.end60
  %cipher64 = getelementptr inbounds %struct.evp_cipher_ctx_st, %struct.evp_cipher_ctx_st* %ctx, i64 0, i32 0
  %14 = load %struct.evp_cipher_st*, %struct.evp_cipher_st** %cipher64, align 8, !tbaa !4
  br label %if.end65

if.end65:                                         ; preds = %if.then63, %if.end60
  %cipher.addr.0 = phi %struct.evp_cipher_st* [ %14, %if.then63 ], [ %cipher, %if.end60 ]
  %prov = getelementptr inbounds %struct.evp_cipher_st, %struct.evp_cipher_st* %cipher.addr.0, i64 0, i32 17
  %15 = load %struct.ossl_provider_st*, %struct.ossl_provider_st** %prov, align 8, !tbaa !11
  %cmp66 = icmp eq %struct.ossl_provider_st* %15, null
  br i1 %cmp66, label %if.then68, label %if.end81.thread

if.end81.thread:                                  ; preds = %if.end65
  %prov82511 = getelementptr inbounds %struct.evp_cipher_st, %struct.evp_cipher_st* %cipher.addr.0, i64 0, i32 17
  br label %if.then85

if.then68:                                        ; preds = %if.end65
  %nid69 = getelementptr inbounds %struct.evp_cipher_st, %struct.evp_cipher_st* %cipher.addr.0, i64 0, i32 0
  %16 = load i32, i32* %nid69, align 8, !tbaa !23
  %cmp70 = icmp eq i32 %16, 0
  br i1 %cmp70, label %cond.end, label %cond.false

cond.false:                                       ; preds = %if.then68
  %call73 = tail call i8* @OBJ_nid2sn(i32 noundef %16) #11
  br label %cond.end

cond.end:                                         ; preds = %if.then68, %cond.false
  %cond = phi i8* [ %call73, %cond.false ], [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.25, i64 0, i64 0), %if.then68 ]
  %call74 = tail call %struct.evp_cipher_st* @EVP_CIPHER_fetch(%struct.ossl_lib_ctx_st* noundef null, i8* noundef %cond, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.26, i64 0, i64 0)) #12
  %cmp75 = icmp eq %struct.evp_cipher_st* %call74, null
  br i1 %cmp75, label %cleanup336, label %if.end81

if.end81:                                         ; preds = %cond.end
  %fetched_cipher79 = getelementptr inbounds %struct.evp_cipher_ctx_st, %struct.evp_cipher_ctx_st* %ctx, i64 0, i32 16
  %17 = load %struct.evp_cipher_st*, %struct.evp_cipher_st** %fetched_cipher79, align 8, !tbaa !15
  tail call void @EVP_CIPHER_free(%struct.evp_cipher_st* noundef %17) #12
  store %struct.evp_cipher_st* %call74, %struct.evp_cipher_st** %fetched_cipher79, align 8, !tbaa !15
  %prov82.phi.trans.insert = getelementptr inbounds %struct.evp_cipher_st, %struct.evp_cipher_st* %call74, i64 0, i32 17
  %.pre505 = load %struct.ossl_provider_st*, %struct.ossl_provider_st** %prov82.phi.trans.insert, align 8, !tbaa !11
  %prov82 = getelementptr inbounds %struct.evp_cipher_st, %struct.evp_cipher_st* %call74, i64 0, i32 17
  %cmp83.not = icmp eq %struct.ossl_provider_st* %.pre505, null
  br i1 %cmp83.not, label %if.end92, label %if.then85

if.then85:                                        ; preds = %if.end81.thread, %if.end81
  %prov82515 = phi %struct.ossl_provider_st** [ %prov82511, %if.end81.thread ], [ %prov82, %if.end81 ]
  %cipher.addr.2513 = phi %struct.evp_cipher_st* [ %cipher.addr.0, %if.end81.thread ], [ %call74, %if.end81 ]
  %call86 = tail call i32 @EVP_CIPHER_up_ref(%struct.evp_cipher_st* noundef nonnull %cipher.addr.2513) #12
  %fetched_cipher90 = getelementptr inbounds %struct.evp_cipher_ctx_st, %struct.evp_cipher_ctx_st* %ctx, i64 0, i32 16
  %18 = load %struct.evp_cipher_st*, %struct.evp_cipher_st** %fetched_cipher90, align 8, !tbaa !15
  tail call void @EVP_CIPHER_free(%struct.evp_cipher_st* noundef %18) #12
  store %struct.evp_cipher_st* %cipher.addr.2513, %struct.evp_cipher_st** %fetched_cipher90, align 8, !tbaa !15
  br label %if.end92

if.end92:                                         ; preds = %if.then85, %if.end81
  %prov82516 = phi %struct.ossl_provider_st** [ %prov82515, %if.then85 ], [ %prov82, %if.end81 ]
  %cipher.addr.2514 = phi %struct.evp_cipher_st* [ %cipher.addr.2513, %if.then85 ], [ %call74, %if.end81 ]
  %cipher93 = getelementptr inbounds %struct.evp_cipher_ctx_st, %struct.evp_cipher_ctx_st* %ctx, i64 0, i32 0
  store %struct.evp_cipher_st* %cipher.addr.2514, %struct.evp_cipher_st** %cipher93, align 8, !tbaa !4
  %algctx = getelementptr inbounds %struct.evp_cipher_ctx_st, %struct.evp_cipher_ctx_st* %ctx, i64 0, i32 15
  %19 = load i8*, i8** %algctx, align 8, !tbaa !13
  %cmp94 = icmp eq i8* %19, null
  br i1 %cmp94, label %if.then96, label %if.end107

if.then96:                                        ; preds = %if.end92
  %newctx = getelementptr inbounds %struct.evp_cipher_st, %struct.evp_cipher_st* %cipher.addr.2514, i64 0, i32 20
  %20 = load i8* (i8*)*, i8* (i8*)** %newctx, align 8, !tbaa !25
  %21 = load %struct.ossl_provider_st*, %struct.ossl_provider_st** %prov82516, align 8, !tbaa !11
  %call99 = tail call i8* @ossl_provider_ctx(%struct.ossl_provider_st* noundef %21) #11
  %call100 = tail call i8* %20(i8* noundef %call99) #11
  store i8* %call100, i8** %algctx, align 8, !tbaa !13
  %cmp103 = icmp eq i8* %call100, null
  br i1 %cmp103, label %if.then105, label %if.end107

if.then105:                                       ; preds = %if.then96
  tail call void @ERR_new() #11
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 198, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.evp_cipher_init_internal, i64 0, i64 0)) #11
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 6, i32 noundef 134, i8* noundef null) #11
  br label %cleanup336

if.end107:                                        ; preds = %if.then96, %if.end92
  %flags108 = getelementptr inbounds %struct.evp_cipher_ctx_st, %struct.evp_cipher_ctx_st* %ctx, i64 0, i32 10
  %22 = load i64, i64* %flags108, align 8, !tbaa !24
  %and = and i64 %22, 256
  %cmp109.not = icmp eq i64 %and, 0
  br i1 %cmp109.not, label %if.end116, label %if.then111

if.then111:                                       ; preds = %if.end107
  %call112 = tail call i32 @EVP_CIPHER_CTX_set_padding(%struct.evp_cipher_ctx_st* noundef nonnull %ctx, i32 noundef 0) #12
  %tobool113.not = icmp eq i32 %call112, 0
  br i1 %tobool113.not, label %cleanup336, label %if.end116

if.end116:                                        ; preds = %if.then111, %if.end107
  %tobool117.not = icmp eq i32 %enc.addr.0, 0
  %23 = load %struct.evp_cipher_st*, %struct.evp_cipher_st** %cipher93, align 8, !tbaa !4
  br i1 %tobool117.not, label %if.end144, label %if.then118

if.then118:                                       ; preds = %if.end116
  %einit = getelementptr inbounds %struct.evp_cipher_st, %struct.evp_cipher_st* %23, i64 0, i32 21
  %24 = load i32 (i8*, i8*, i64, i8*, i64, %struct.ossl_param_st*)*, i32 (i8*, i8*, i64, i8*, i64, %struct.ossl_param_st*)** %einit, align 8, !tbaa !26
  %cmp120 = icmp eq i32 (i8*, i8*, i64, i8*, i64, %struct.ossl_param_st*)* %24, null
  br i1 %cmp120, label %if.then122, label %if.end123

if.then122:                                       ; preds = %if.then118
  tail call void @ERR_new() #11
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 214, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.evp_cipher_init_internal, i64 0, i64 0)) #11
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 6, i32 noundef 134, i8* noundef null) #11
  br label %cleanup336

if.end123:                                        ; preds = %if.then118
  %25 = load i8*, i8** %algctx, align 8, !tbaa !13
  %cmp127 = icmp eq i8* %key, null
  br i1 %cmp127, label %cond.end132, label %cond.false130

cond.false130:                                    ; preds = %if.end123
  %call131 = tail call i32 @EVP_CIPHER_CTX_get_key_length(%struct.evp_cipher_ctx_st* noundef nonnull %ctx) #11
  %phi.cast494 = sext i32 %call131 to i64
  br label %cond.end132

cond.end132:                                      ; preds = %if.end123, %cond.false130
  %cond133 = phi i64 [ %phi.cast494, %cond.false130 ], [ 0, %if.end123 ]
  %cmp135 = icmp eq i8* %iv, null
  br i1 %cmp135, label %cond.end140, label %cond.false138

cond.false138:                                    ; preds = %cond.end132
  %call139 = tail call i32 @EVP_CIPHER_CTX_get_iv_length(%struct.evp_cipher_ctx_st* noundef nonnull %ctx) #11
  %phi.cast495 = sext i32 %call139 to i64
  br label %cond.end140

cond.end140:                                      ; preds = %cond.end132, %cond.false138
  %cond141 = phi i64 [ %phi.cast495, %cond.false138 ], [ 0, %cond.end132 ]
  %call143 = tail call i32 %24(i8* noundef %25, i8* noundef %key, i64 noundef %cond133, i8* noundef %iv, i64 noundef %cond141, %struct.ossl_param_st* noundef %params) #11
  br label %cleanup336

if.end144:                                        ; preds = %if.end116
  %dinit = getelementptr inbounds %struct.evp_cipher_st, %struct.evp_cipher_st* %23, i64 0, i32 22
  %26 = load i32 (i8*, i8*, i64, i8*, i64, %struct.ossl_param_st*)*, i32 (i8*, i8*, i64, i8*, i64, %struct.ossl_param_st*)** %dinit, align 8, !tbaa !27
  %cmp146 = icmp eq i32 (i8*, i8*, i64, i8*, i64, %struct.ossl_param_st*)* %26, null
  br i1 %cmp146, label %if.then148, label %if.end149

if.then148:                                       ; preds = %if.end144
  tail call void @ERR_new() #11
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 229, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.evp_cipher_init_internal, i64 0, i64 0)) #11
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 6, i32 noundef 134, i8* noundef null) #11
  br label %cleanup336

if.end149:                                        ; preds = %if.end144
  %27 = load i8*, i8** %algctx, align 8, !tbaa !13
  %cmp153 = icmp eq i8* %key, null
  br i1 %cmp153, label %cond.end158, label %cond.false156

cond.false156:                                    ; preds = %if.end149
  %call157 = tail call i32 @EVP_CIPHER_CTX_get_key_length(%struct.evp_cipher_ctx_st* noundef nonnull %ctx) #11
  %phi.cast = sext i32 %call157 to i64
  br label %cond.end158

cond.end158:                                      ; preds = %if.end149, %cond.false156
  %cond159 = phi i64 [ %phi.cast, %cond.false156 ], [ 0, %if.end149 ]
  %cmp161 = icmp eq i8* %iv, null
  br i1 %cmp161, label %cond.end166, label %cond.false164

cond.false164:                                    ; preds = %cond.end158
  %call165 = tail call i32 @EVP_CIPHER_CTX_get_iv_length(%struct.evp_cipher_ctx_st* noundef nonnull %ctx) #11
  %phi.cast493 = sext i32 %call165 to i64
  br label %cond.end166

cond.end166:                                      ; preds = %cond.end158, %cond.false164
  %cond167 = phi i64 [ %phi.cast493, %cond.false164 ], [ 0, %cond.end158 ]
  %call169 = tail call i32 %26(i8* noundef %27, i8* noundef %key, i64 noundef %cond159, i8* noundef %iv, i64 noundef %cond167, %struct.ossl_param_st* noundef %params) #11
  br label %cleanup336

if.then172:                                       ; preds = %if.end37
  %28 = load %struct.evp_cipher_st*, %struct.evp_cipher_st** %cipher33, align 8, !tbaa !4
  %tobool174.not = icmp eq %struct.evp_cipher_st* %28, null
  br i1 %tobool174.not, label %if.end181, label %if.then175

if.then175:                                       ; preds = %if.then172
  %flags177 = getelementptr inbounds %struct.evp_cipher_ctx_st, %struct.evp_cipher_ctx_st* %ctx, i64 0, i32 10
  %29 = load i64, i64* %flags177, align 8, !tbaa !24
  %call178 = tail call i32 @EVP_CIPHER_CTX_reset(%struct.evp_cipher_ctx_st* noundef nonnull %ctx) #12
  %encrypt179 = getelementptr inbounds %struct.evp_cipher_ctx_st, %struct.evp_cipher_ctx_st* %ctx, i64 0, i32 2
  store i32 %enc.addr.0, i32* %encrypt179, align 8, !tbaa !22
  store i64 %29, i64* %flags177, align 8, !tbaa !24
  br label %if.end181

if.end181:                                        ; preds = %if.then175, %if.then172
  br i1 %cmp31, label %if.then184, label %if.end190

if.then184:                                       ; preds = %if.end181
  %call185 = tail call i32 @ENGINE_init(%struct.engine_st* noundef nonnull %impl) #11
  %tobool186.not = icmp eq i32 %call185, 0
  br i1 %tobool186.not, label %if.then187, label %if.then193

if.then187:                                       ; preds = %if.then184
  tail call void @ERR_new() #11
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 261, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.evp_cipher_init_internal, i64 0, i64 0)) #11
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 6, i32 noundef 134, i8* noundef null) #11
  br label %cleanup336

if.end190:                                        ; preds = %if.end181
  %cmp191.not = icmp eq %struct.engine_st* %tmpimpl.0, null
  br i1 %cmp191.not, label %if.end206, label %if.then193

if.then193:                                       ; preds = %if.then184, %if.end190
  %impl.addr.0500 = phi %struct.engine_st* [ %tmpimpl.0, %if.end190 ], [ %impl, %if.then184 ]
  %nid194 = getelementptr inbounds %struct.evp_cipher_st, %struct.evp_cipher_st* %cipher, i64 0, i32 0
  %30 = load i32, i32* %nid194, align 8, !tbaa !23
  %call195 = tail call %struct.evp_cipher_st* @ENGINE_get_cipher(%struct.engine_st* noundef nonnull %impl.addr.0500, i32 noundef %30) #11
  %cmp196 = icmp eq %struct.evp_cipher_st* %call195, null
  br i1 %cmp196, label %cleanup201.thread, label %if.end206

cleanup201.thread:                                ; preds = %if.then193
  tail call void @ERR_new() #11
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 277, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.evp_cipher_init_internal, i64 0, i64 0)) #11
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 6, i32 noundef 134, i8* noundef null) #11
  br label %cleanup336

if.end206:                                        ; preds = %if.end190, %if.then193
  %storemerge = phi %struct.engine_st* [ %impl.addr.0500, %if.then193 ], [ null, %if.end190 ]
  %cipher.addr.4 = phi %struct.evp_cipher_st* [ %call195, %if.then193 ], [ %cipher, %if.end190 ]
  store %struct.engine_st* %storemerge, %struct.engine_st** %engine, align 8, !tbaa !19
  store %struct.evp_cipher_st* %cipher.addr.4, %struct.evp_cipher_st** %cipher33, align 8, !tbaa !4
  %ctx_size209 = getelementptr inbounds %struct.evp_cipher_st, %struct.evp_cipher_st* %cipher.addr.4, i64 0, i32 9
  %31 = load i32, i32* %ctx_size209, align 8, !tbaa !18
  %tobool210.not = icmp eq i32 %31, 0
  br i1 %tobool210.not, label %if.else223, label %if.then211

if.then211:                                       ; preds = %if.end206
  %conv214 = sext i32 %31 to i64
  %call215 = tail call i8* @CRYPTO_zalloc(i64 noundef %conv214, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 294) #11
  %cipher_data216 = getelementptr inbounds %struct.evp_cipher_ctx_st, %struct.evp_cipher_ctx_st* %ctx, i64 0, i32 11
  store i8* %call215, i8** %cipher_data216, align 8, !tbaa !17
  %cmp218 = icmp eq i8* %call215, null
  br i1 %cmp218, label %if.then220, label %if.then211.if.end225_crit_edge

if.then211.if.end225_crit_edge:                   ; preds = %if.then211
  %.pre506 = load %struct.evp_cipher_st*, %struct.evp_cipher_st** %cipher33, align 8, !tbaa !4
  br label %if.end225

if.then220:                                       ; preds = %if.then211
  store %struct.evp_cipher_st* null, %struct.evp_cipher_st** %cipher33, align 8, !tbaa !4
  tail call void @ERR_new() #11
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 297, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.evp_cipher_init_internal, i64 0, i64 0)) #11
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 6, i32 noundef 786688, i8* noundef null) #11
  br label %cleanup336

if.else223:                                       ; preds = %if.end206
  %cipher_data224 = getelementptr inbounds %struct.evp_cipher_ctx_st, %struct.evp_cipher_ctx_st* %ctx, i64 0, i32 11
  store i8* null, i8** %cipher_data224, align 8, !tbaa !17
  br label %if.end225

if.end225:                                        ; preds = %if.then211.if.end225_crit_edge, %if.else223
  %32 = phi %struct.evp_cipher_st* [ %.pre506, %if.then211.if.end225_crit_edge ], [ %cipher.addr.4, %if.else223 ]
  %key_len = getelementptr inbounds %struct.evp_cipher_st, %struct.evp_cipher_st* %cipher.addr.4, i64 0, i32 2
  %33 = load i32, i32* %key_len, align 8, !tbaa !28
  %key_len226 = getelementptr inbounds %struct.evp_cipher_ctx_st, %struct.evp_cipher_ctx_st* %ctx, i64 0, i32 9
  store i32 %33, i32* %key_len226, align 8, !tbaa !29
  %flags227 = getelementptr inbounds %struct.evp_cipher_ctx_st, %struct.evp_cipher_ctx_st* %ctx, i64 0, i32 10
  %34 = load i64, i64* %flags227, align 8, !tbaa !24
  %and228 = and i64 %34, 1
  store i64 %and228, i64* %flags227, align 8, !tbaa !24
  %flags230 = getelementptr inbounds %struct.evp_cipher_st, %struct.evp_cipher_st* %32, i64 0, i32 4
  %35 = load i64, i64* %flags230, align 8, !tbaa !30
  %and231 = and i64 %35, 64
  %tobool232.not = icmp eq i64 %and231, 0
  br i1 %tobool232.not, label %skip_to_init, label %if.then233

if.then233:                                       ; preds = %if.end225
  %call234 = tail call i32 @EVP_CIPHER_CTX_ctrl(%struct.evp_cipher_ctx_st* noundef nonnull %ctx, i32 noundef 0, i32 noundef 0, i8* noundef null) #12
  %tobool235.not = icmp eq i32 %call234, 0
  br i1 %tobool235.not, label %if.then236, label %skip_to_init

if.then236:                                       ; preds = %if.then233
  store %struct.evp_cipher_st* null, %struct.evp_cipher_st** %cipher33, align 8, !tbaa !4
  tail call void @ERR_new() #11
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 309, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.evp_cipher_init_internal, i64 0, i64 0)) #11
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 6, i32 noundef 134, i8* noundef null) #11
  br label %cleanup336

skip_to_init:                                     ; preds = %if.end37, %if.then233, %if.end225, %land.lhs.true13, %lor.lhs.false
  %cipher241 = getelementptr inbounds %struct.evp_cipher_ctx_st, %struct.evp_cipher_ctx_st* %ctx, i64 0, i32 0
  %36 = load %struct.evp_cipher_st*, %struct.evp_cipher_st** %cipher241, align 8, !tbaa !4
  %cmp242 = icmp eq %struct.evp_cipher_st* %36, null
  br i1 %cmp242, label %cleanup336, label %if.end245

if.end245:                                        ; preds = %skip_to_init
  %block_size = getelementptr inbounds %struct.evp_cipher_st, %struct.evp_cipher_st* %36, i64 0, i32 1
  %37 = load i32, i32* %block_size, align 4, !tbaa !31
  switch i32 %37, label %cond.false260 [
    i32 1, label %cond.end261
    i32 8, label %cond.end261
    i32 16, label %cond.end261
  ]

cond.false260:                                    ; preds = %if.end245
  tail call void @OPENSSL_die(i8* noundef getelementptr inbounds ([112 x i8], [112 x i8]* @.str.27, i64 0, i64 0), i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 323) #14
  unreachable

cond.end261:                                      ; preds = %if.end245, %if.end245, %if.end245
  %flags263 = getelementptr inbounds %struct.evp_cipher_ctx_st, %struct.evp_cipher_ctx_st* %ctx, i64 0, i32 10
  %38 = load i64, i64* %flags263, align 8, !tbaa !24
  %and264 = and i64 %38, 1
  %tobool265.not = icmp eq i64 %and264, 0
  br i1 %tobool265.not, label %land.lhs.true266, label %if.end272

land.lhs.true266:                                 ; preds = %cond.end261
  %call267 = tail call %struct.evp_cipher_st* @EVP_CIPHER_CTX_get0_cipher(%struct.evp_cipher_ctx_st* noundef nonnull %ctx) #11
  %call268 = tail call i32 @EVP_CIPHER_get_mode(%struct.evp_cipher_st* noundef %call267) #11
  %cmp269 = icmp eq i32 %call268, 65538
  br i1 %cmp269, label %if.then271, label %if.end272

if.then271:                                       ; preds = %land.lhs.true266
  tail call void @ERR_new() #11
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 327, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.evp_cipher_init_internal, i64 0, i64 0)) #11
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 6, i32 noundef 170, i8* noundef null) #11
  br label %cleanup336

if.end272:                                        ; preds = %land.lhs.true266, %cond.end261
  %call273 = tail call %struct.evp_cipher_st* @EVP_CIPHER_CTX_get0_cipher(%struct.evp_cipher_ctx_st* noundef nonnull %ctx) #11
  %call274 = tail call i64 @EVP_CIPHER_get_flags(%struct.evp_cipher_st* noundef %call273) #11
  %and275 = and i64 %call274, 16
  %cmp276 = icmp eq i64 %and275, 0
  br i1 %cmp276, label %if.then278, label %if.end319

if.then278:                                       ; preds = %if.end272
  %call279 = tail call %struct.evp_cipher_st* @EVP_CIPHER_CTX_get0_cipher(%struct.evp_cipher_ctx_st* noundef nonnull %ctx) #11
  %call280 = tail call i32 @EVP_CIPHER_get_mode(%struct.evp_cipher_st* noundef %call279) #11
  switch i32 %call280, label %cleanup336 [
    i32 0, label %if.end319
    i32 1, label %if.end319
    i32 3, label %sw.bb281
    i32 4, label %sw.bb281
    i32 2, label %sw.bb282
    i32 5, label %sw.bb304
  ]

sw.bb281:                                         ; preds = %if.then278, %if.then278
  %num = getelementptr inbounds %struct.evp_cipher_ctx_st, %struct.evp_cipher_ctx_st* %ctx, i64 0, i32 7
  store i32 0, i32* %num, align 8, !tbaa !32
  br label %sw.bb282

sw.bb282:                                         ; preds = %if.then278, %sw.bb281
  %call283 = tail call i32 @EVP_CIPHER_CTX_get_iv_length(%struct.evp_cipher_ctx_st* noundef nonnull %ctx) #11
  %39 = icmp ult i32 %call283, 17
  br i1 %39, label %if.end291, label %cleanup336

if.end291:                                        ; preds = %sw.bb282
  %cmp292.not = icmp eq i8* %iv, null
  br i1 %cmp292.not, label %if.end291.if.end297_crit_edge, label %if.then294

if.end291.if.end297_crit_edge:                    ; preds = %if.end291
  %.pre509 = zext i32 %call283 to i64
  br label %if.end297

if.then294:                                       ; preds = %if.end291
  %arraydecay = getelementptr inbounds %struct.evp_cipher_ctx_st, %struct.evp_cipher_ctx_st* %ctx, i64 0, i32 4, i64 0
  %conv295503 = zext i32 %call283 to i64
  %call296 = tail call i8* @memcpy(i8* noundef nonnull %arraydecay, i8* noundef nonnull %iv, i64 noundef %conv295503) #11
  br label %if.end297

if.end297:                                        ; preds = %if.end291.if.end297_crit_edge, %if.then294
  %conv302502.pre-phi = phi i64 [ %.pre509, %if.end291.if.end297_crit_edge ], [ %conv295503, %if.then294 ]
  %arraydecay299 = getelementptr inbounds %struct.evp_cipher_ctx_st, %struct.evp_cipher_ctx_st* %ctx, i64 0, i32 5, i64 0
  %arraydecay301 = getelementptr inbounds %struct.evp_cipher_ctx_st, %struct.evp_cipher_ctx_st* %ctx, i64 0, i32 4, i64 0
  %call303 = tail call i8* @memcpy(i8* noundef nonnull %arraydecay299, i8* noundef nonnull %arraydecay301, i64 noundef %conv302502.pre-phi) #11
  br label %if.end319

sw.bb304:                                         ; preds = %if.then278
  %num305 = getelementptr inbounds %struct.evp_cipher_ctx_st, %struct.evp_cipher_ctx_st* %ctx, i64 0, i32 7
  store i32 0, i32* %num305, align 8, !tbaa !32
  %cmp306.not = icmp eq i8* %iv, null
  br i1 %cmp306.not, label %if.end319, label %if.then308

if.then308:                                       ; preds = %sw.bb304
  %call309 = tail call i32 @EVP_CIPHER_CTX_get_iv_length(%struct.evp_cipher_ctx_st* noundef nonnull %ctx) #11
  %cmp310 = icmp slt i32 %call309, 1
  br i1 %cmp310, label %cleanup336, label %if.end313

if.end313:                                        ; preds = %if.then308
  %arraydecay315 = getelementptr inbounds %struct.evp_cipher_ctx_st, %struct.evp_cipher_ctx_st* %ctx, i64 0, i32 5, i64 0
  %conv316504 = zext i32 %call309 to i64
  %call317 = tail call i8* @memcpy(i8* noundef nonnull %arraydecay315, i8* noundef nonnull %iv, i64 noundef %conv316504) #11
  br label %if.end319

if.end319:                                        ; preds = %if.end297, %if.then278, %if.then278, %if.end313, %sw.bb304, %if.end272
  %cmp320.not = icmp eq i8* %key, null
  %40 = load %struct.evp_cipher_st*, %struct.evp_cipher_st** %cipher241, align 8, !tbaa !4
  br i1 %cmp320.not, label %lor.lhs.false322, label %if.then327

lor.lhs.false322:                                 ; preds = %if.end319
  %flags324 = getelementptr inbounds %struct.evp_cipher_st, %struct.evp_cipher_st* %40, i64 0, i32 4
  %41 = load i64, i64* %flags324, align 8, !tbaa !30
  %and325 = and i64 %41, 32
  %tobool326.not = icmp eq i64 %and325, 0
  br i1 %tobool326.not, label %if.end333, label %if.then327

if.then327:                                       ; preds = %if.end319, %lor.lhs.false322
  %init = getelementptr inbounds %struct.evp_cipher_st, %struct.evp_cipher_st* %40, i64 0, i32 6
  %42 = load i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i32)*, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i32)** %init, align 8, !tbaa !33
  %call329 = tail call i32 %42(%struct.evp_cipher_ctx_st* noundef nonnull %ctx, i8* noundef %key, i8* noundef %iv, i32 noundef %enc.addr.0) #11
  %tobool330.not = icmp eq i32 %call329, 0
  br i1 %tobool330.not, label %cleanup336, label %if.then327.if.end333_crit_edge

if.then327.if.end333_crit_edge:                   ; preds = %if.then327
  %.pre508 = load %struct.evp_cipher_st*, %struct.evp_cipher_st** %cipher241, align 8, !tbaa !4
  br label %if.end333

if.end333:                                        ; preds = %if.then327.if.end333_crit_edge, %lor.lhs.false322
  %43 = phi %struct.evp_cipher_st* [ %.pre508, %if.then327.if.end333_crit_edge ], [ %40, %lor.lhs.false322 ]
  %buf_len = getelementptr inbounds %struct.evp_cipher_ctx_st, %struct.evp_cipher_ctx_st* %ctx, i64 0, i32 3
  store i32 0, i32* %buf_len, align 4, !tbaa !34
  %final_used = getelementptr inbounds %struct.evp_cipher_ctx_st, %struct.evp_cipher_ctx_st* %ctx, i64 0, i32 12
  store i32 0, i32* %final_used, align 8, !tbaa !35
  %block_size335 = getelementptr inbounds %struct.evp_cipher_st, %struct.evp_cipher_st* %43, i64 0, i32 1
  %44 = load i32, i32* %block_size335, align 4, !tbaa !31
  %sub = add nsw i32 %44, -1
  %block_mask = getelementptr inbounds %struct.evp_cipher_ctx_st, %struct.evp_cipher_ctx_st* %ctx, i64 0, i32 13
  store i32 %sub, i32* %block_mask, align 4, !tbaa !36
  br label %cleanup336

cleanup336:                                       ; preds = %cond.end, %cleanup201.thread, %if.then327, %if.then278, %if.then308, %sw.bb282, %skip_to_init, %if.then111, %if.end333, %if.then271, %if.then236, %if.then220, %if.then187, %cond.end166, %if.then148, %cond.end140, %if.then122, %if.then105, %if.then7
  %retval.2 = phi i32 [ 0, %if.then7 ], [ 1, %if.end333 ], [ 0, %if.then271 ], [ 0, %if.then220 ], [ 0, %if.then236 ], [ 0, %if.then187 ], [ 0, %if.then105 ], [ 0, %if.then122 ], [ %call143, %cond.end140 ], [ 0, %if.then148 ], [ %call169, %cond.end166 ], [ 0, %if.then111 ], [ 0, %skip_to_init ], [ 0, %sw.bb282 ], [ 0, %if.then308 ], [ 0, %if.then278 ], [ 0, %if.then327 ], [ 0, %cleanup201.thread ], [ 0, %cond.end ]
  ret i32 %retval.2
}

; Function Attrs: noinline nounwind uwtable
define i32 @EVP_CipherInit(%struct.evp_cipher_ctx_st* noundef %ctx, %struct.evp_cipher_st* noundef %cipher, i8* noundef %key, i8* noundef %iv, i32 noundef %enc) local_unnamed_addr #0 {
entry:
  %cmp.not = icmp eq %struct.evp_cipher_st* %cipher, null
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = tail call i32 @EVP_CIPHER_CTX_reset(%struct.evp_cipher_ctx_st* noundef %ctx) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %call1 = tail call fastcc i32 @evp_cipher_init_internal(%struct.evp_cipher_ctx_st* noundef %ctx, %struct.evp_cipher_st* noundef %cipher, %struct.engine_st* noundef null, i8* noundef %key, i8* noundef %iv, i32 noundef %enc, %struct.ossl_param_st* noundef null) #12
  ret i32 %call1
}

; Function Attrs: noinline nounwind uwtable
define i32 @EVP_CipherInit_ex(%struct.evp_cipher_ctx_st* noundef %ctx, %struct.evp_cipher_st* noundef %cipher, %struct.engine_st* noundef %impl, i8* noundef %key, i8* noundef %iv, i32 noundef %enc) local_unnamed_addr #0 {
entry:
  %call = tail call fastcc i32 @evp_cipher_init_internal(%struct.evp_cipher_ctx_st* noundef %ctx, %struct.evp_cipher_st* noundef %cipher, %struct.engine_st* noundef %impl, i8* noundef %key, i8* noundef %iv, i32 noundef %enc, %struct.ossl_param_st* noundef null) #12
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define i32 @EVP_CipherUpdate(%struct.evp_cipher_ctx_st* noundef %ctx, i8* noundef %out, i32* noundef %outl, i8* noundef %in, i32 noundef %inl) local_unnamed_addr #0 {
entry:
  %encrypt = getelementptr inbounds %struct.evp_cipher_ctx_st, %struct.evp_cipher_ctx_st* %ctx, i64 0, i32 2
  %0 = load i32, i32* %encrypt, align 8, !tbaa !22
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %call = tail call i32 @EVP_EncryptUpdate(%struct.evp_cipher_ctx_st* noundef nonnull %ctx, i8* noundef %out, i32* noundef %outl, i8* noundef %in, i32 noundef %inl) #12
  br label %return

if.else:                                          ; preds = %entry
  %call1 = tail call i32 @EVP_DecryptUpdate(%struct.evp_cipher_ctx_st* noundef nonnull %ctx, i8* noundef %out, i32* noundef %outl, i8* noundef %in, i32 noundef %inl) #12
  br label %return

return:                                           ; preds = %if.else, %if.then
  %retval.0 = phi i32 [ %call, %if.then ], [ %call1, %if.else ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @EVP_EncryptUpdate(%struct.evp_cipher_ctx_st* noundef %ctx, i8* noundef %out, i32* noundef %outl, i8* noundef %in, i32 noundef %inl) local_unnamed_addr #0 {
entry:
  %soutl = alloca i64, align 8
  %0 = bitcast i64* %soutl to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #13
  %cmp.not = icmp eq i32* %outl, null
  br i1 %cmp.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, i32* %outl, align 4, !tbaa !21
  %encrypt = getelementptr inbounds %struct.evp_cipher_ctx_st, %struct.evp_cipher_ctx_st* %ctx, i64 0, i32 2
  %1 = load i32, i32* %encrypt, align 8, !tbaa !22
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.then1, label %if.end2

if.else:                                          ; preds = %entry
  tail call void @ERR_new() #11
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 604, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.EVP_EncryptUpdate, i64 0, i64 0)) #11
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 6, i32 noundef 786690, i8* noundef null) #11
  br label %cleanup

if.then1:                                         ; preds = %if.then
  tail call void @ERR_new() #11
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 610, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.EVP_EncryptUpdate, i64 0, i64 0)) #11
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 6, i32 noundef 148, i8* noundef null) #11
  br label %cleanup

if.end2:                                          ; preds = %if.then
  %cipher = getelementptr inbounds %struct.evp_cipher_ctx_st, %struct.evp_cipher_ctx_st* %ctx, i64 0, i32 0
  %2 = load %struct.evp_cipher_st*, %struct.evp_cipher_st** %cipher, align 8, !tbaa !4
  %cmp3 = icmp eq %struct.evp_cipher_st* %2, null
  br i1 %cmp3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end2
  tail call void @ERR_new() #11
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 615, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.EVP_EncryptUpdate, i64 0, i64 0)) #11
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 6, i32 noundef 131, i8* noundef null) #11
  br label %cleanup

if.end5:                                          ; preds = %if.end2
  %prov = getelementptr inbounds %struct.evp_cipher_st, %struct.evp_cipher_st* %2, i64 0, i32 17
  %3 = load %struct.ossl_provider_st*, %struct.ossl_provider_st** %prov, align 8, !tbaa !11
  %cmp7 = icmp eq %struct.ossl_provider_st* %3, null
  br i1 %cmp7, label %legacy, label %if.end9

if.end9:                                          ; preds = %if.end5
  %block_size = getelementptr inbounds %struct.evp_cipher_st, %struct.evp_cipher_st* %2, i64 0, i32 1
  %4 = load i32, i32* %block_size, align 4, !tbaa !31
  %cupdate = getelementptr inbounds %struct.evp_cipher_st, %struct.evp_cipher_st* %2, i64 0, i32 23
  %5 = load i32 (i8*, i8*, i64*, i64, i8*, i64)*, i32 (i8*, i8*, i64*, i64, i8*, i64)** %cupdate, align 8, !tbaa !37
  %cmp12 = icmp eq i32 (i8*, i8*, i64*, i64, i8*, i64)* %5, null
  %cmp13 = icmp slt i32 %4, 1
  %or.cond = select i1 %cmp12, i1 true, i1 %cmp13
  br i1 %or.cond, label %if.then14, label %if.end15

if.then14:                                        ; preds = %if.end9
  tail call void @ERR_new() #11
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 625, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.EVP_EncryptUpdate, i64 0, i64 0)) #11
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 6, i32 noundef 189, i8* noundef null) #11
  br label %cleanup

if.end15:                                         ; preds = %if.end9
  %algctx = getelementptr inbounds %struct.evp_cipher_ctx_st, %struct.evp_cipher_ctx_st* %ctx, i64 0, i32 15
  %6 = load i8*, i8** %algctx, align 8, !tbaa !13
  %cmp18 = icmp eq i32 %4, 1
  %cond = select i1 %cmp18, i32 0, i32 %4
  %add = add nsw i32 %cond, %inl
  %conv = sext i32 %add to i64
  %conv19 = sext i32 %inl to i64
  %call = call i32 %5(i8* noundef %6, i8* noundef %out, i64* noundef nonnull %soutl, i64 noundef %conv, i8* noundef %in, i64 noundef %conv19) #11
  %tobool20.not = icmp eq i32 %call, 0
  br i1 %tobool20.not, label %cleanup, label %if.then21

if.then21:                                        ; preds = %if.end15
  %7 = load i64, i64* %soutl, align 8, !tbaa !38
  %cmp22 = icmp ugt i64 %7, 2147483647
  br i1 %cmp22, label %if.then24, label %if.end25

if.then24:                                        ; preds = %if.then21
  call void @ERR_new() #11
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 634, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.EVP_EncryptUpdate, i64 0, i64 0)) #11
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 6, i32 noundef 189, i8* noundef null) #11
  br label %cleanup

if.end25:                                         ; preds = %if.then21
  %conv26 = trunc i64 %7 to i32
  store i32 %conv26, i32* %outl, align 4, !tbaa !21
  br label %cleanup

legacy:                                           ; preds = %if.end5
  %call28 = tail call fastcc i32 @evp_EncryptDecryptUpdate(%struct.evp_cipher_ctx_st* noundef nonnull %ctx, i8* noundef %out, i32* noundef nonnull %outl, i8* noundef %in, i32 noundef %inl) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end15, %if.end25, %legacy, %if.then24, %if.then14, %if.then4, %if.then1, %if.else
  %retval.0 = phi i32 [ 0, %if.then4 ], [ %call28, %legacy ], [ 0, %if.then14 ], [ 0, %if.then24 ], [ 0, %if.then1 ], [ 0, %if.else ], [ %call, %if.end25 ], [ 0, %if.end15 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #13
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @EVP_DecryptUpdate(%struct.evp_cipher_ctx_st* noundef %ctx, i8* noundef %out, i32* noundef %outl, i8* noundef %in, i32 noundef %inl) local_unnamed_addr #0 {
entry:
  %soutl = alloca i64, align 8
  %0 = bitcast i64* %soutl to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #13
  %cmp.not = icmp eq i32* %outl, null
  br i1 %cmp.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, i32* %outl, align 4, !tbaa !21
  %encrypt = getelementptr inbounds %struct.evp_cipher_ctx_st, %struct.evp_cipher_ctx_st* %ctx, i64 0, i32 2
  %1 = load i32, i32* %encrypt, align 8, !tbaa !22
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.end2, label %if.then1

if.else:                                          ; preds = %entry
  tail call void @ERR_new() #11
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 752, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.EVP_DecryptUpdate, i64 0, i64 0)) #11
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 6, i32 noundef 786690, i8* noundef null) #11
  br label %cleanup

if.then1:                                         ; preds = %if.then
  tail call void @ERR_new() #11
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 758, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.EVP_DecryptUpdate, i64 0, i64 0)) #11
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 6, i32 noundef 148, i8* noundef null) #11
  br label %cleanup

if.end2:                                          ; preds = %if.then
  %cipher = getelementptr inbounds %struct.evp_cipher_ctx_st, %struct.evp_cipher_ctx_st* %ctx, i64 0, i32 0
  %2 = load %struct.evp_cipher_st*, %struct.evp_cipher_st** %cipher, align 8, !tbaa !4
  %cmp3 = icmp eq %struct.evp_cipher_st* %2, null
  br i1 %cmp3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end2
  tail call void @ERR_new() #11
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 763, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.EVP_DecryptUpdate, i64 0, i64 0)) #11
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 6, i32 noundef 131, i8* noundef null) #11
  br label %cleanup

if.end5:                                          ; preds = %if.end2
  %prov = getelementptr inbounds %struct.evp_cipher_st, %struct.evp_cipher_st* %2, i64 0, i32 17
  %3 = load %struct.ossl_provider_st*, %struct.ossl_provider_st** %prov, align 8, !tbaa !11
  %cmp7 = icmp eq %struct.ossl_provider_st* %3, null
  br i1 %cmp7, label %legacy, label %if.end9

if.end9:                                          ; preds = %if.end5
  %call = tail call i32 @EVP_CIPHER_CTX_get_block_size(%struct.evp_cipher_ctx_st* noundef nonnull %ctx) #11
  %4 = load %struct.evp_cipher_st*, %struct.evp_cipher_st** %cipher, align 8, !tbaa !4
  %cupdate = getelementptr inbounds %struct.evp_cipher_st, %struct.evp_cipher_st* %4, i64 0, i32 23
  %5 = load i32 (i8*, i8*, i64*, i64, i8*, i64)*, i32 (i8*, i8*, i64*, i64, i8*, i64)** %cupdate, align 8, !tbaa !37
  %cmp11 = icmp eq i32 (i8*, i8*, i64*, i64, i8*, i64)* %5, null
  %cmp12 = icmp slt i32 %call, 1
  %or.cond = select i1 %cmp11, i1 true, i1 %cmp12
  br i1 %or.cond, label %if.then13, label %if.end14

if.then13:                                        ; preds = %if.end9
  tail call void @ERR_new() #11
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 772, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.EVP_DecryptUpdate, i64 0, i64 0)) #11
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 6, i32 noundef 189, i8* noundef null) #11
  br label %cleanup

if.end14:                                         ; preds = %if.end9
  %algctx = getelementptr inbounds %struct.evp_cipher_ctx_st, %struct.evp_cipher_ctx_st* %ctx, i64 0, i32 15
  %6 = load i8*, i8** %algctx, align 8, !tbaa !13
  %cmp17 = icmp eq i32 %call, 1
  %cond = select i1 %cmp17, i32 0, i32 %call
  %add = add nsw i32 %cond, %inl
  %conv = sext i32 %add to i64
  %conv18 = sext i32 %inl to i64
  %call19 = call i32 %5(i8* noundef %6, i8* noundef %out, i64* noundef nonnull %soutl, i64 noundef %conv, i8* noundef %in, i64 noundef %conv18) #11
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %cleanup, label %if.then21

if.then21:                                        ; preds = %if.end14
  %7 = load i64, i64* %soutl, align 8, !tbaa !38
  %cmp22 = icmp ugt i64 %7, 2147483647
  br i1 %cmp22, label %if.then24, label %if.end25

if.then24:                                        ; preds = %if.then21
  call void @ERR_new() #11
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 781, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.EVP_DecryptUpdate, i64 0, i64 0)) #11
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 6, i32 noundef 189, i8* noundef null) #11
  br label %cleanup

if.end25:                                         ; preds = %if.then21
  %conv26 = trunc i64 %7 to i32
  store i32 %conv26, i32* %outl, align 4, !tbaa !21
  br label %cleanup

legacy:                                           ; preds = %if.end5
  %block_size = getelementptr inbounds %struct.evp_cipher_st, %struct.evp_cipher_st* %2, i64 0, i32 1
  %8 = load i32, i32* %block_size, align 4, !tbaa !31
  %call29 = tail call i32 @EVP_CIPHER_CTX_test_flags(%struct.evp_cipher_ctx_st* noundef nonnull %ctx, i32 noundef 8192) #11
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %if.end33, label %if.then31

if.then31:                                        ; preds = %legacy
  %add32 = add nsw i32 %inl, 7
  %div = sdiv i32 %add32, 8
  br label %if.end33

if.end33:                                         ; preds = %if.then31, %legacy
  %cmpl.0 = phi i32 [ %div, %if.then31 ], [ %inl, %legacy ]
  %9 = load %struct.evp_cipher_st*, %struct.evp_cipher_st** %cipher, align 8, !tbaa !4
  %flags = getelementptr inbounds %struct.evp_cipher_st, %struct.evp_cipher_st* %9, i64 0, i32 4
  %10 = load i64, i64* %flags, align 8, !tbaa !30
  %and = and i64 %10, 1048576
  %tobool35.not = icmp eq i64 %and, 0
  br i1 %tobool35.not, label %if.end51, label %if.then36

if.then36:                                        ; preds = %if.end33
  %cmp37 = icmp eq i32 %8, 1
  br i1 %cmp37, label %land.lhs.true, label %if.end42

land.lhs.true:                                    ; preds = %if.then36
  %call39 = tail call i32 @ossl_is_partially_overlapping(i8* noundef %out, i8* noundef %in, i32 noundef %cmpl.0) #12
  %tobool40.not = icmp eq i32 %call39, 0
  br i1 %tobool40.not, label %if.end42, label %if.then41

if.then41:                                        ; preds = %land.lhs.true
  tail call void @ERR_new() #11
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 799, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.EVP_DecryptUpdate, i64 0, i64 0)) #11
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 6, i32 noundef 162, i8* noundef null) #11
  br label %cleanup

if.end42:                                         ; preds = %land.lhs.true, %if.then36
  %do_cipher = getelementptr inbounds %struct.evp_cipher_st, %struct.evp_cipher_st* %9, i64 0, i32 7
  %11 = load i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i64)*, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i64)** %do_cipher, align 8, !tbaa !39
  %conv44 = sext i32 %inl to i64
  %call45 = tail call i32 %11(%struct.evp_cipher_ctx_st* noundef nonnull %ctx, i8* noundef %out, i8* noundef %in, i64 noundef %conv44) #11
  %cmp46 = icmp slt i32 %call45, 0
  br i1 %cmp46, label %if.then48, label %if.else49

if.then48:                                        ; preds = %if.end42
  store i32 0, i32* %outl, align 4, !tbaa !21
  br label %cleanup

if.else49:                                        ; preds = %if.end42
  store i32 %call45, i32* %outl, align 4, !tbaa !21
  br label %cleanup

if.end51:                                         ; preds = %if.end33
  %cmp52 = icmp slt i32 %inl, 1
  br i1 %cmp52, label %if.then54, label %if.end57

if.then54:                                        ; preds = %if.end51
  store i32 0, i32* %outl, align 4, !tbaa !21
  %cmp55 = icmp eq i32 %inl, 0
  %conv56 = zext i1 %cmp55 to i32
  br label %cleanup

if.end57:                                         ; preds = %if.end51
  %flags58 = getelementptr inbounds %struct.evp_cipher_ctx_st, %struct.evp_cipher_ctx_st* %ctx, i64 0, i32 10
  %12 = load i64, i64* %flags58, align 8, !tbaa !24
  %and59 = and i64 %12, 256
  %tobool60.not = icmp eq i64 %and59, 0
  br i1 %tobool60.not, label %if.end63, label %if.then61

if.then61:                                        ; preds = %if.end57
  %call62 = tail call fastcc i32 @evp_EncryptDecryptUpdate(%struct.evp_cipher_ctx_st* noundef nonnull %ctx, i8* noundef %out, i32* noundef nonnull %outl, i8* noundef %in, i32 noundef %inl) #12
  br label %cleanup

if.end63:                                         ; preds = %if.end57
  %conv64 = zext i32 %8 to i64
  %cmp65 = icmp ult i32 %8, 33
  br i1 %cmp65, label %cond.end69, label %cond.false68

cond.false68:                                     ; preds = %if.end63
  tail call void @OPENSSL_die(i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0), i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 820) #14
  unreachable

cond.end69:                                       ; preds = %if.end63
  %final_used = getelementptr inbounds %struct.evp_cipher_ctx_st, %struct.evp_cipher_ctx_st* %ctx, i64 0, i32 12
  %13 = load i32, i32* %final_used, align 8, !tbaa !35
  %tobool71.not = icmp eq i32 %13, 0
  br i1 %tobool71.not, label %if.end89, label %if.then72

if.then72:                                        ; preds = %cond.end69
  %cmp73 = icmp eq i8* %out, %in
  br i1 %cmp73, label %if.then78, label %lor.lhs.false75

lor.lhs.false75:                                  ; preds = %if.then72
  %call76 = tail call i32 @ossl_is_partially_overlapping(i8* noundef %out, i8* noundef %in, i32 noundef %8) #12
  %tobool77.not = icmp eq i32 %call76, 0
  br i1 %tobool77.not, label %if.end79, label %if.then78

if.then78:                                        ; preds = %lor.lhs.false75, %if.then72
  tail call void @ERR_new() #11
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 826, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.EVP_DecryptUpdate, i64 0, i64 0)) #11
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 6, i32 noundef 162, i8* noundef null) #11
  br label %cleanup

if.end79:                                         ; preds = %lor.lhs.false75
  %neg = sub nsw i32 0, %8
  %and80 = and i32 %neg, %inl
  %sub81 = sub nuw nsw i32 2147483647, %8
  %cmp82 = icmp ugt i32 %and80, %sub81
  br i1 %cmp82, label %if.then84, label %if.end85

if.then84:                                        ; preds = %if.end79
  tail call void @ERR_new() #11
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 839, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.EVP_DecryptUpdate, i64 0, i64 0)) #11
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 6, i32 noundef 202, i8* noundef null) #11
  br label %cleanup

if.end85:                                         ; preds = %if.end79
  %arraydecay = getelementptr inbounds %struct.evp_cipher_ctx_st, %struct.evp_cipher_ctx_st* %ctx, i64 0, i32 14, i64 0
  %call87 = tail call i8* @memcpy(i8* noundef %out, i8* noundef nonnull %arraydecay, i64 noundef %conv64) #11
  %add.ptr = getelementptr inbounds i8, i8* %out, i64 %conv64
  br label %if.end89

if.end89:                                         ; preds = %cond.end69, %if.end85
  %out.addr.0 = phi i8* [ %add.ptr, %if.end85 ], [ %out, %cond.end69 ]
  %call90 = tail call fastcc i32 @evp_EncryptDecryptUpdate(%struct.evp_cipher_ctx_st* noundef nonnull %ctx, i8* noundef %out.addr.0, i32* noundef nonnull %outl, i8* noundef %in, i32 noundef %inl) #12
  %tobool91.not = icmp eq i32 %call90, 0
  br i1 %tobool91.not, label %cleanup, label %if.end93

if.end93:                                         ; preds = %if.end89
  %cmp94 = icmp ugt i32 %8, 1
  br i1 %cmp94, label %land.lhs.true96, label %if.else105

land.lhs.true96:                                  ; preds = %if.end93
  %buf_len = getelementptr inbounds %struct.evp_cipher_ctx_st, %struct.evp_cipher_ctx_st* %ctx, i64 0, i32 3
  %14 = load i32, i32* %buf_len, align 4, !tbaa !34
  %tobool97.not = icmp eq i32 %14, 0
  br i1 %tobool97.not, label %if.then98, label %if.else105

if.then98:                                        ; preds = %land.lhs.true96
  %15 = load i32, i32* %outl, align 4, !tbaa !21
  %sub99 = sub i32 %15, %8
  store i32 %sub99, i32* %outl, align 4, !tbaa !21
  store i32 1, i32* %final_used, align 8, !tbaa !35
  %arraydecay102 = getelementptr inbounds %struct.evp_cipher_ctx_st, %struct.evp_cipher_ctx_st* %ctx, i64 0, i32 14, i64 0
  %16 = load i32, i32* %outl, align 4, !tbaa !21
  %idxprom = sext i32 %16 to i64
  %arrayidx = getelementptr inbounds i8, i8* %out.addr.0, i64 %idxprom
  %call104 = tail call i8* @memcpy(i8* noundef nonnull %arraydecay102, i8* noundef %arrayidx, i64 noundef %conv64) #11
  br label %if.end107

if.else105:                                       ; preds = %land.lhs.true96, %if.end93
  store i32 0, i32* %final_used, align 8, !tbaa !35
  br label %if.end107

if.end107:                                        ; preds = %if.else105, %if.then98
  br i1 %tobool71.not, label %cleanup, label %if.then109

if.then109:                                       ; preds = %if.end107
  %17 = load i32, i32* %outl, align 4, !tbaa !21
  %add110 = add i32 %17, %8
  store i32 %add110, i32* %outl, align 4, !tbaa !21
  br label %cleanup

cleanup:                                          ; preds = %if.end107, %if.then109, %if.end89, %if.end14, %if.end25, %if.then84, %if.then78, %if.then61, %if.then54, %if.else49, %if.then48, %if.then41, %if.then24, %if.then13, %if.then4, %if.then1, %if.else
  %retval.0 = phi i32 [ 0, %if.then1 ], [ 0, %if.then4 ], [ 0, %if.then41 ], [ 0, %if.then48 ], [ 1, %if.else49 ], [ %conv56, %if.then54 ], [ %call62, %if.then61 ], [ 0, %if.then78 ], [ 0, %if.then84 ], [ 0, %if.then13 ], [ 0, %if.then24 ], [ 0, %if.else ], [ %call19, %if.end25 ], [ 0, %if.end14 ], [ 0, %if.end89 ], [ 1, %if.then109 ], [ 1, %if.end107 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #13
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @EVP_CipherFinal_ex(%struct.evp_cipher_ctx_st* noundef %ctx, i8* noundef %out, i32* noundef %outl) local_unnamed_addr #0 {
entry:
  %encrypt = getelementptr inbounds %struct.evp_cipher_ctx_st, %struct.evp_cipher_ctx_st* %ctx, i64 0, i32 2
  %0 = load i32, i32* %encrypt, align 8, !tbaa !22
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %call = tail call i32 @EVP_EncryptFinal_ex(%struct.evp_cipher_ctx_st* noundef nonnull %ctx, i8* noundef %out, i32* noundef %outl) #12
  br label %return

if.else:                                          ; preds = %entry
  %call1 = tail call i32 @EVP_DecryptFinal_ex(%struct.evp_cipher_ctx_st* noundef nonnull %ctx, i8* noundef %out, i32* noundef %outl) #12
  br label %return

return:                                           ; preds = %if.else, %if.then
  %retval.0 = phi i32 [ %call, %if.then ], [ %call1, %if.else ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @EVP_EncryptFinal_ex(%struct.evp_cipher_ctx_st* noundef %ctx, i8* noundef %out, i32* noundef writeonly %outl) local_unnamed_addr #0 {
entry:
  %soutl = alloca i64, align 8
  %0 = bitcast i64* %soutl to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #13
  %cmp.not = icmp eq i32* %outl, null
  br i1 %cmp.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, i32* %outl, align 4, !tbaa !21
  %encrypt = getelementptr inbounds %struct.evp_cipher_ctx_st, %struct.evp_cipher_ctx_st* %ctx, i64 0, i32 2
  %1 = load i32, i32* %encrypt, align 8, !tbaa !22
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.then1, label %if.end2

if.else:                                          ; preds = %entry
  tail call void @ERR_new() #11
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 665, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.EVP_EncryptFinal_ex, i64 0, i64 0)) #11
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 6, i32 noundef 786690, i8* noundef null) #11
  br label %cleanup

if.then1:                                         ; preds = %if.then
  tail call void @ERR_new() #11
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 671, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.EVP_EncryptFinal_ex, i64 0, i64 0)) #11
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 6, i32 noundef 148, i8* noundef null) #11
  br label %cleanup

if.end2:                                          ; preds = %if.then
  %cipher = getelementptr inbounds %struct.evp_cipher_ctx_st, %struct.evp_cipher_ctx_st* %ctx, i64 0, i32 0
  %2 = load %struct.evp_cipher_st*, %struct.evp_cipher_st** %cipher, align 8, !tbaa !4
  %cmp3 = icmp eq %struct.evp_cipher_st* %2, null
  br i1 %cmp3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end2
  tail call void @ERR_new() #11
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 676, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.EVP_EncryptFinal_ex, i64 0, i64 0)) #11
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 6, i32 noundef 131, i8* noundef null) #11
  br label %cleanup

if.end5:                                          ; preds = %if.end2
  %prov = getelementptr inbounds %struct.evp_cipher_st, %struct.evp_cipher_st* %2, i64 0, i32 17
  %3 = load %struct.ossl_provider_st*, %struct.ossl_provider_st** %prov, align 8, !tbaa !11
  %cmp7 = icmp eq %struct.ossl_provider_st* %3, null
  br i1 %cmp7, label %legacy, label %if.end9

if.end9:                                          ; preds = %if.end5
  %call = tail call i32 @EVP_CIPHER_CTX_get_block_size(%struct.evp_cipher_ctx_st* noundef nonnull %ctx) #11
  %cmp10 = icmp slt i32 %call, 1
  br i1 %cmp10, label %if.then13, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end9
  %4 = load %struct.evp_cipher_st*, %struct.evp_cipher_st** %cipher, align 8, !tbaa !4
  %cfinal = getelementptr inbounds %struct.evp_cipher_st, %struct.evp_cipher_st* %4, i64 0, i32 24
  %5 = load i32 (i8*, i8*, i64*, i64)*, i32 (i8*, i8*, i64*, i64)** %cfinal, align 8, !tbaa !40
  %cmp12 = icmp eq i32 (i8*, i8*, i64*, i64)* %5, null
  br i1 %cmp12, label %if.then13, label %if.end14

if.then13:                                        ; preds = %lor.lhs.false, %if.end9
  tail call void @ERR_new() #11
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 685, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.EVP_EncryptFinal_ex, i64 0, i64 0)) #11
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 6, i32 noundef 188, i8* noundef null) #11
  br label %cleanup

if.end14:                                         ; preds = %lor.lhs.false
  %algctx = getelementptr inbounds %struct.evp_cipher_ctx_st, %struct.evp_cipher_ctx_st* %ctx, i64 0, i32 15
  %6 = load i8*, i8** %algctx, align 8, !tbaa !13
  %cmp17 = icmp eq i32 %call, 1
  %cond = select i1 %cmp17, i32 0, i32 %call
  %conv124 = zext i32 %cond to i64
  %call18 = call i32 %5(i8* noundef %6, i8* noundef %out, i64* noundef nonnull %soutl, i64 noundef %conv124) #11
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %cleanup, label %if.then20

if.then20:                                        ; preds = %if.end14
  %7 = load i64, i64* %soutl, align 8, !tbaa !38
  %cmp21 = icmp ugt i64 %7, 2147483647
  br i1 %cmp21, label %if.then23, label %if.end24

if.then23:                                        ; preds = %if.then20
  call void @ERR_new() #11
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 694, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.EVP_EncryptFinal_ex, i64 0, i64 0)) #11
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 6, i32 noundef 188, i8* noundef null) #11
  br label %cleanup

if.end24:                                         ; preds = %if.then20
  %conv25 = trunc i64 %7 to i32
  store i32 %conv25, i32* %outl, align 4, !tbaa !21
  br label %cleanup

legacy:                                           ; preds = %if.end5
  %flags = getelementptr inbounds %struct.evp_cipher_st, %struct.evp_cipher_st* %2, i64 0, i32 4
  %8 = load i64, i64* %flags, align 8, !tbaa !30
  %and = and i64 %8, 1048576
  %tobool28.not = icmp eq i64 %and, 0
  br i1 %tobool28.not, label %if.end37, label %if.then29

if.then29:                                        ; preds = %legacy
  %do_cipher = getelementptr inbounds %struct.evp_cipher_st, %struct.evp_cipher_st* %2, i64 0, i32 7
  %9 = load i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i64)*, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i64)** %do_cipher, align 8, !tbaa !39
  %call31 = tail call i32 %9(%struct.evp_cipher_ctx_st* noundef nonnull %ctx, i8* noundef %out, i8* noundef null, i64 noundef 0) #11
  %cmp32 = icmp slt i32 %call31, 0
  br i1 %cmp32, label %cleanup, label %if.else35

if.else35:                                        ; preds = %if.then29
  store i32 %call31, i32* %outl, align 4, !tbaa !21
  br label %cleanup

if.end37:                                         ; preds = %legacy
  %block_size = getelementptr inbounds %struct.evp_cipher_st, %struct.evp_cipher_st* %2, i64 0, i32 1
  %10 = load i32, i32* %block_size, align 4, !tbaa !31
  %conv39 = zext i32 %10 to i64
  %cmp40 = icmp ult i32 %10, 33
  br i1 %cmp40, label %cond.end44, label %cond.false43

cond.false43:                                     ; preds = %if.end37
  tail call void @OPENSSL_die(i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 715) #14
  unreachable

cond.end44:                                       ; preds = %if.end37
  %cmp46 = icmp eq i32 %10, 1
  br i1 %cmp46, label %cleanup, label %if.end49

if.end49:                                         ; preds = %cond.end44
  %buf_len = getelementptr inbounds %struct.evp_cipher_ctx_st, %struct.evp_cipher_ctx_st* %ctx, i64 0, i32 3
  %11 = load i32, i32* %buf_len, align 4, !tbaa !34
  %flags50 = getelementptr inbounds %struct.evp_cipher_ctx_st, %struct.evp_cipher_ctx_st* %ctx, i64 0, i32 10
  %12 = load i64, i64* %flags50, align 8, !tbaa !24
  %and51 = and i64 %12, 256
  %tobool52.not = icmp eq i64 %and51, 0
  br i1 %tobool52.not, label %if.end57, label %if.then53

if.then53:                                        ; preds = %if.end49
  %tobool54.not = icmp eq i32 %11, 0
  br i1 %tobool54.not, label %cleanup, label %if.then55

if.then55:                                        ; preds = %if.then53
  tail call void @ERR_new() #11
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 723, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.EVP_EncryptFinal_ex, i64 0, i64 0)) #11
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 6, i32 noundef 138, i8* noundef null) #11
  br label %cleanup

if.end57:                                         ; preds = %if.end49
  %cmp58125 = icmp ugt i32 %10, %11
  br i1 %cmp58125, label %iter.check, label %for.end

iter.check:                                       ; preds = %if.end57
  %sub = sub i32 %10, %11
  %conv60 = trunc i32 %sub to i8
  %13 = zext i32 %11 to i64
  %14 = sub nsw i64 %conv39, %13
  %min.iters.check = icmp ult i64 %14, 8
  br i1 %min.iters.check, label %for.body.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check128 = icmp ult i64 %14, 32
  br i1 %min.iters.check128, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.vec = and i64 %14, -32
  %broadcast.splatinsert = insertelement <16 x i8> poison, i8 %conv60, i64 0
  %broadcast.splat = shufflevector <16 x i8> %broadcast.splatinsert, <16 x i8> poison, <16 x i32> zeroinitializer
  %broadcast.splatinsert129 = insertelement <16 x i8> poison, i8 %conv60, i64 0
  %broadcast.splat130 = shufflevector <16 x i8> %broadcast.splatinsert129, <16 x i8> poison, <16 x i32> zeroinitializer
  %15 = add nsw i64 %n.vec, -32
  %16 = lshr exact i64 %15, 5
  %17 = add nuw nsw i64 %16, 1
  %xtraiter = and i64 %17, 3
  %18 = icmp ult i64 %15, 96
  br i1 %18, label %middle.block.unr-lcssa, label %vector.ph.new

vector.ph.new:                                    ; preds = %vector.ph
  %unroll_iter = and i64 %17, 1152921504606846972
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph.new
  %index = phi i64 [ 0, %vector.ph.new ], [ %index.next.3, %vector.body ]
  %niter = phi i64 [ 0, %vector.ph.new ], [ %niter.next.3, %vector.body ]
  %offset.idx = add i64 %index, %13
  %19 = getelementptr inbounds %struct.evp_cipher_ctx_st, %struct.evp_cipher_ctx_st* %ctx, i64 0, i32 6, i64 %offset.idx
  %20 = bitcast i8* %19 to <16 x i8>*
  store <16 x i8> %broadcast.splat, <16 x i8>* %20, align 1, !tbaa !41
  %21 = getelementptr inbounds i8, i8* %19, i64 16
  %22 = bitcast i8* %21 to <16 x i8>*
  store <16 x i8> %broadcast.splat130, <16 x i8>* %22, align 1, !tbaa !41
  %index.next = or i64 %index, 32
  %offset.idx.1 = add i64 %index.next, %13
  %23 = getelementptr inbounds %struct.evp_cipher_ctx_st, %struct.evp_cipher_ctx_st* %ctx, i64 0, i32 6, i64 %offset.idx.1
  %24 = bitcast i8* %23 to <16 x i8>*
  store <16 x i8> %broadcast.splat, <16 x i8>* %24, align 1, !tbaa !41
  %25 = getelementptr inbounds i8, i8* %23, i64 16
  %26 = bitcast i8* %25 to <16 x i8>*
  store <16 x i8> %broadcast.splat130, <16 x i8>* %26, align 1, !tbaa !41
  %index.next.1 = or i64 %index, 64
  %offset.idx.2 = add i64 %index.next.1, %13
  %27 = getelementptr inbounds %struct.evp_cipher_ctx_st, %struct.evp_cipher_ctx_st* %ctx, i64 0, i32 6, i64 %offset.idx.2
  %28 = bitcast i8* %27 to <16 x i8>*
  store <16 x i8> %broadcast.splat, <16 x i8>* %28, align 1, !tbaa !41
  %29 = getelementptr inbounds i8, i8* %27, i64 16
  %30 = bitcast i8* %29 to <16 x i8>*
  store <16 x i8> %broadcast.splat130, <16 x i8>* %30, align 1, !tbaa !41
  %index.next.2 = or i64 %index, 96
  %offset.idx.3 = add i64 %index.next.2, %13
  %31 = getelementptr inbounds %struct.evp_cipher_ctx_st, %struct.evp_cipher_ctx_st* %ctx, i64 0, i32 6, i64 %offset.idx.3
  %32 = bitcast i8* %31 to <16 x i8>*
  store <16 x i8> %broadcast.splat, <16 x i8>* %32, align 1, !tbaa !41
  %33 = getelementptr inbounds i8, i8* %31, i64 16
  %34 = bitcast i8* %33 to <16 x i8>*
  store <16 x i8> %broadcast.splat130, <16 x i8>* %34, align 1, !tbaa !41
  %index.next.3 = add nuw i64 %index, 128
  %niter.next.3 = add i64 %niter, 4
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %middle.block.unr-lcssa, label %vector.body, !llvm.loop !42

middle.block.unr-lcssa:                           ; preds = %vector.body, %vector.ph
  %index.unr = phi i64 [ 0, %vector.ph ], [ %index.next.3, %vector.body ]
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %middle.block, label %vector.body.epil

vector.body.epil:                                 ; preds = %middle.block.unr-lcssa, %vector.body.epil
  %index.epil = phi i64 [ %index.next.epil, %vector.body.epil ], [ %index.unr, %middle.block.unr-lcssa ]
  %epil.iter = phi i64 [ %epil.iter.next, %vector.body.epil ], [ 0, %middle.block.unr-lcssa ]
  %offset.idx.epil = add i64 %index.epil, %13
  %35 = getelementptr inbounds %struct.evp_cipher_ctx_st, %struct.evp_cipher_ctx_st* %ctx, i64 0, i32 6, i64 %offset.idx.epil
  %36 = bitcast i8* %35 to <16 x i8>*
  store <16 x i8> %broadcast.splat, <16 x i8>* %36, align 1, !tbaa !41
  %37 = getelementptr inbounds i8, i8* %35, i64 16
  %38 = bitcast i8* %37 to <16 x i8>*
  store <16 x i8> %broadcast.splat130, <16 x i8>* %38, align 1, !tbaa !41
  %index.next.epil = add nuw i64 %index.epil, 32
  %epil.iter.next = add i64 %epil.iter, 1
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %middle.block, label %vector.body.epil, !llvm.loop !45

middle.block:                                     ; preds = %vector.body.epil, %middle.block.unr-lcssa
  %cmp.n = icmp eq i64 %14, %n.vec
  br i1 %cmp.n, label %for.end, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %ind.end133 = add nsw i64 %n.vec, %13
  %n.vec.remaining = and i64 %14, 24
  %min.epilog.iters.check = icmp eq i64 %n.vec.remaining, 0
  br i1 %min.epilog.iters.check, label %for.body.preheader, label %vec.epilog.ph

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %39 = sub nsw i64 %conv39, %13
  %n.vec132 = and i64 %39, -8
  %ind.end = add nsw i64 %n.vec132, %13
  %broadcast.splatinsert137 = insertelement <8 x i8> poison, i8 %conv60, i64 0
  %broadcast.splat138 = shufflevector <8 x i8> %broadcast.splatinsert137, <8 x i8> poison, <8 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index135 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next139, %vec.epilog.vector.body ]
  %offset.idx136 = add i64 %index135, %13
  %40 = getelementptr inbounds %struct.evp_cipher_ctx_st, %struct.evp_cipher_ctx_st* %ctx, i64 0, i32 6, i64 %offset.idx136
  %41 = bitcast i8* %40 to <8 x i8>*
  store <8 x i8> %broadcast.splat138, <8 x i8>* %41, align 1, !tbaa !41
  %index.next139 = add nuw i64 %index135, 8
  %42 = icmp eq i64 %index.next139, %n.vec132
  br i1 %42, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !47

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n134 = icmp eq i64 %39, %n.vec132
  br i1 %cmp.n134, label %for.end, label %for.body.preheader

for.body.preheader:                               ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ %13, %iter.check ], [ %ind.end133, %vec.epilog.iter.check ], [ %ind.end, %vec.epilog.middle.block ]
  br label %for.body

for.body:                                         ; preds = %for.body.preheader, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ %indvars.iv.ph, %for.body.preheader ]
  %arrayidx = getelementptr inbounds %struct.evp_cipher_ctx_st, %struct.evp_cipher_ctx_st* %ctx, i64 0, i32 6, i64 %indvars.iv
  store i8 %conv60, i8* %arrayidx, align 1, !tbaa !41
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %conv39
  br i1 %exitcond.not, label %for.end, label %for.body, !llvm.loop !49

for.end:                                          ; preds = %for.body, %middle.block, %vec.epilog.middle.block, %if.end57
  %do_cipher62 = getelementptr inbounds %struct.evp_cipher_st, %struct.evp_cipher_st* %2, i64 0, i32 7
  %43 = load i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i64)*, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i64)** %do_cipher62, align 8, !tbaa !39
  %arraydecay = getelementptr inbounds %struct.evp_cipher_ctx_st, %struct.evp_cipher_ctx_st* %ctx, i64 0, i32 6, i64 0
  %call65 = tail call i32 %43(%struct.evp_cipher_ctx_st* noundef nonnull %ctx, i8* noundef %out, i8* noundef nonnull %arraydecay, i64 noundef %conv39) #11
  %tobool66.not = icmp eq i32 %call65, 0
  br i1 %tobool66.not, label %cleanup, label %if.then67

if.then67:                                        ; preds = %for.end
  store i32 %10, i32* %outl, align 4, !tbaa !21
  br label %cleanup

cleanup:                                          ; preds = %if.then53, %cond.end44, %for.end, %if.then67, %if.then29, %if.end14, %if.end24, %if.then55, %if.else35, %if.then23, %if.then13, %if.then4, %if.then1, %if.else
  %retval.0 = phi i32 [ 0, %if.then4 ], [ 1, %if.else35 ], [ 0, %if.then55 ], [ 0, %if.then13 ], [ 0, %if.then23 ], [ 0, %if.then1 ], [ 0, %if.else ], [ %call18, %if.end24 ], [ 0, %if.end14 ], [ 0, %if.then29 ], [ %call65, %if.then67 ], [ 0, %for.end ], [ 1, %cond.end44 ], [ 1, %if.then53 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #13
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @EVP_DecryptFinal_ex(%struct.evp_cipher_ctx_st* noundef %ctx, i8* noundef %out, i32* noundef writeonly %outl) local_unnamed_addr #0 {
entry:
  %ctx167 = bitcast %struct.evp_cipher_ctx_st* %ctx to i8*
  %soutl = alloca i64, align 8
  %0 = bitcast i64* %soutl to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #13
  %cmp.not = icmp eq i32* %outl, null
  br i1 %cmp.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, i32* %outl, align 4, !tbaa !21
  %encrypt = getelementptr inbounds %struct.evp_cipher_ctx_st, %struct.evp_cipher_ctx_st* %ctx, i64 0, i32 2
  %1 = load i32, i32* %encrypt, align 8, !tbaa !22
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.end2, label %if.then1

if.else:                                          ; preds = %entry
  tail call void @ERR_new() #11
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 886, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.EVP_DecryptFinal_ex, i64 0, i64 0)) #11
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 6, i32 noundef 786690, i8* noundef null) #11
  br label %cleanup

if.then1:                                         ; preds = %if.then
  tail call void @ERR_new() #11
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 892, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.EVP_DecryptFinal_ex, i64 0, i64 0)) #11
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 6, i32 noundef 148, i8* noundef null) #11
  br label %cleanup

if.end2:                                          ; preds = %if.then
  %cipher = getelementptr inbounds %struct.evp_cipher_ctx_st, %struct.evp_cipher_ctx_st* %ctx, i64 0, i32 0
  %2 = load %struct.evp_cipher_st*, %struct.evp_cipher_st** %cipher, align 8, !tbaa !4
  %cmp3 = icmp eq %struct.evp_cipher_st* %2, null
  br i1 %cmp3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end2
  tail call void @ERR_new() #11
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 897, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.EVP_DecryptFinal_ex, i64 0, i64 0)) #11
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 6, i32 noundef 131, i8* noundef null) #11
  br label %cleanup

if.end5:                                          ; preds = %if.end2
  %prov = getelementptr inbounds %struct.evp_cipher_st, %struct.evp_cipher_st* %2, i64 0, i32 17
  %3 = load %struct.ossl_provider_st*, %struct.ossl_provider_st** %prov, align 8, !tbaa !11
  %cmp7 = icmp eq %struct.ossl_provider_st* %3, null
  br i1 %cmp7, label %legacy, label %if.end9

if.end9:                                          ; preds = %if.end5
  %call = tail call i32 @EVP_CIPHER_CTX_get_block_size(%struct.evp_cipher_ctx_st* noundef nonnull %ctx) #11
  %cmp10 = icmp slt i32 %call, 1
  br i1 %cmp10, label %if.then13, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end9
  %4 = load %struct.evp_cipher_st*, %struct.evp_cipher_st** %cipher, align 8, !tbaa !4
  %cfinal = getelementptr inbounds %struct.evp_cipher_st, %struct.evp_cipher_st* %4, i64 0, i32 24
  %5 = load i32 (i8*, i8*, i64*, i64)*, i32 (i8*, i8*, i64*, i64)** %cfinal, align 8, !tbaa !40
  %cmp12 = icmp eq i32 (i8*, i8*, i64*, i64)* %5, null
  br i1 %cmp12, label %if.then13, label %if.end14

if.then13:                                        ; preds = %lor.lhs.false, %if.end9
  tail call void @ERR_new() #11
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 907, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.EVP_DecryptFinal_ex, i64 0, i64 0)) #11
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 6, i32 noundef 188, i8* noundef null) #11
  br label %cleanup

if.end14:                                         ; preds = %lor.lhs.false
  %algctx = getelementptr inbounds %struct.evp_cipher_ctx_st, %struct.evp_cipher_ctx_st* %ctx, i64 0, i32 15
  %6 = load i8*, i8** %algctx, align 8, !tbaa !13
  %cmp17 = icmp eq i32 %call, 1
  %cond = select i1 %cmp17, i32 0, i32 %call
  %conv158 = zext i32 %cond to i64
  %call18 = call i32 %5(i8* noundef %6, i8* noundef %out, i64* noundef nonnull %soutl, i64 noundef %conv158) #11
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %cleanup, label %if.then20

if.then20:                                        ; preds = %if.end14
  %7 = load i64, i64* %soutl, align 8, !tbaa !38
  %cmp21 = icmp ugt i64 %7, 2147483647
  br i1 %cmp21, label %if.then23, label %if.end24

if.then23:                                        ; preds = %if.then20
  call void @ERR_new() #11
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 916, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.EVP_DecryptFinal_ex, i64 0, i64 0)) #11
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 6, i32 noundef 188, i8* noundef null) #11
  br label %cleanup

if.end24:                                         ; preds = %if.then20
  %conv25 = trunc i64 %7 to i32
  store i32 %conv25, i32* %outl, align 4, !tbaa !21
  br label %cleanup

legacy:                                           ; preds = %if.end5
  %flags = getelementptr inbounds %struct.evp_cipher_st, %struct.evp_cipher_st* %2, i64 0, i32 4
  %8 = load i64, i64* %flags, align 8, !tbaa !30
  %and = and i64 %8, 1048576
  %tobool28.not = icmp eq i64 %and, 0
  br i1 %tobool28.not, label %if.end37, label %if.then29

if.then29:                                        ; preds = %legacy
  %do_cipher = getelementptr inbounds %struct.evp_cipher_st, %struct.evp_cipher_st* %2, i64 0, i32 7
  %9 = load i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i64)*, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i64)** %do_cipher, align 8, !tbaa !39
  %call31 = tail call i32 %9(%struct.evp_cipher_ctx_st* noundef nonnull %ctx, i8* noundef %out, i8* noundef null, i64 noundef 0) #11
  %cmp32 = icmp slt i32 %call31, 0
  br i1 %cmp32, label %cleanup, label %if.else35

if.else35:                                        ; preds = %if.then29
  store i32 %call31, i32* %outl, align 4, !tbaa !21
  br label %cleanup

if.end37:                                         ; preds = %legacy
  %block_size = getelementptr inbounds %struct.evp_cipher_st, %struct.evp_cipher_st* %2, i64 0, i32 1
  %10 = load i32, i32* %block_size, align 4, !tbaa !31
  %flags39 = getelementptr inbounds %struct.evp_cipher_ctx_st, %struct.evp_cipher_ctx_st* %ctx, i64 0, i32 10
  %11 = load i64, i64* %flags39, align 8, !tbaa !24
  %and40 = and i64 %11, 256
  %tobool41.not = icmp eq i64 %and40, 0
  br i1 %tobool41.not, label %if.end46, label %if.then42

if.then42:                                        ; preds = %if.end37
  %buf_len = getelementptr inbounds %struct.evp_cipher_ctx_st, %struct.evp_cipher_ctx_st* %ctx, i64 0, i32 3
  %12 = load i32, i32* %buf_len, align 4, !tbaa !34
  %tobool43.not = icmp eq i32 %12, 0
  br i1 %tobool43.not, label %cleanup, label %if.then44

if.then44:                                        ; preds = %if.then42
  tail call void @ERR_new() #11
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 940, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.EVP_DecryptFinal_ex, i64 0, i64 0)) #11
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 6, i32 noundef 138, i8* noundef null) #11
  br label %cleanup

if.end46:                                         ; preds = %if.end37
  %cmp47 = icmp ugt i32 %10, 1
  br i1 %cmp47, label %if.then49, label %if.end97

if.then49:                                        ; preds = %if.end46
  %buf_len50 = getelementptr inbounds %struct.evp_cipher_ctx_st, %struct.evp_cipher_ctx_st* %ctx, i64 0, i32 3
  %13 = load i32, i32* %buf_len50, align 4, !tbaa !34
  %tobool51.not = icmp eq i32 %13, 0
  br i1 %tobool51.not, label %lor.lhs.false52, label %if.then54

lor.lhs.false52:                                  ; preds = %if.then49
  %final_used = getelementptr inbounds %struct.evp_cipher_ctx_st, %struct.evp_cipher_ctx_st* %ctx, i64 0, i32 12
  %14 = load i32, i32* %final_used, align 8, !tbaa !35
  %tobool53.not = icmp eq i32 %14, 0
  br i1 %tobool53.not, label %if.then54, label %if.end55

if.then54:                                        ; preds = %lor.lhs.false52, %if.then49
  tail call void @ERR_new() #11
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 948, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.EVP_DecryptFinal_ex, i64 0, i64 0)) #11
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 6, i32 noundef 109, i8* noundef null) #11
  br label %cleanup

if.end55:                                         ; preds = %lor.lhs.false52
  %cmp57 = icmp ult i32 %10, 33
  br i1 %cmp57, label %cond.end61, label %cond.false60

cond.false60:                                     ; preds = %if.end55
  tail call void @OPENSSL_die(i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0), i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 951) #14
  unreachable

cond.end61:                                       ; preds = %if.end55
  %sub = add nsw i32 %10, -1
  %idxprom = zext i32 %sub to i64
  %arrayidx = getelementptr inbounds %struct.evp_cipher_ctx_st, %struct.evp_cipher_ctx_st* %ctx, i64 0, i32 14, i64 %idxprom
  %15 = load i8, i8* %arrayidx, align 1, !tbaa !41
  %conv63 = zext i8 %15 to i32
  %cmp64 = icmp eq i8 %15, 0
  %cmp67 = icmp ult i32 %10, %conv63
  %or.cond = select i1 %cmp64, i1 true, i1 %cmp67
  br i1 %or.cond, label %if.then69, label %for.body

if.then69:                                        ; preds = %cond.end61
  tail call void @ERR_new() #11
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 959, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.EVP_DecryptFinal_ex, i64 0, i64 0)) #11
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 6, i32 noundef 100, i8* noundef null) #11
  br label %cleanup

for.cond:                                         ; preds = %for.body
  %exitcond.not = icmp eq i32 %inc, %conv63
  br i1 %exitcond.not, label %for.end, label %for.body, !llvm.loop !50

for.body:                                         ; preds = %cond.end61, %for.cond
  %i.0161 = phi i32 [ %inc, %for.cond ], [ 0, %cond.end61 ]
  %b.0160 = phi i32 [ %dec, %for.cond ], [ %10, %cond.end61 ]
  %dec = add i32 %b.0160, -1
  %idxprom74 = zext i32 %dec to i64
  %arrayidx75 = getelementptr inbounds %struct.evp_cipher_ctx_st, %struct.evp_cipher_ctx_st* %ctx, i64 0, i32 14, i64 %idxprom74
  %16 = load i8, i8* %arrayidx75, align 1, !tbaa !41
  %cmp77.not = icmp eq i8 %16, %15
  %inc = add nuw nsw i32 %i.0161, 1
  br i1 %cmp77.not, label %for.cond, label %if.then79

if.then79:                                        ; preds = %for.body
  tail call void @ERR_new() #11
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 964, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.EVP_DecryptFinal_ex, i64 0, i64 0)) #11
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 6, i32 noundef 100, i8* noundef null) #11
  br label %cleanup

for.end:                                          ; preds = %for.cond
  %sub83 = sub i32 %10, %conv63
  %cmp85162 = icmp sgt i32 %sub83, 0
  br i1 %cmp85162, label %iter.check, label %if.end97

iter.check:                                       ; preds = %for.end
  %wide.trip.count = zext i32 %sub83 to i64
  %min.iters.check = icmp ult i32 %sub83, 8
  br i1 %min.iters.check, label %for.body87.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %scevgep = getelementptr i8, i8* %out, i64 %wide.trip.count
  %scevgep166 = getelementptr %struct.evp_cipher_ctx_st, %struct.evp_cipher_ctx_st* %ctx, i64 0, i32 14, i64 0
  %17 = add nuw nsw i64 %wide.trip.count, 136
  %uglygep = getelementptr i8, i8* %ctx167, i64 %17
  %bound0 = icmp ugt i8* %uglygep, %out
  %bound1 = icmp ult i8* %scevgep166, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %for.body87.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check168 = icmp ult i32 %sub83, 32
  br i1 %min.iters.check168, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.vec = and i64 %wide.trip.count, 4294967264
  %18 = add nsw i64 %n.vec, -32
  %19 = lshr exact i64 %18, 5
  %20 = add nuw nsw i64 %19, 1
  %xtraiter = and i64 %20, 3
  %21 = icmp ult i64 %18, 96
  br i1 %21, label %middle.block.unr-lcssa, label %vector.ph.new

vector.ph.new:                                    ; preds = %vector.ph
  %unroll_iter = and i64 %20, 1152921504606846972
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph.new
  %index = phi i64 [ 0, %vector.ph.new ], [ %index.next.3, %vector.body ]
  %niter = phi i64 [ 0, %vector.ph.new ], [ %niter.next.3, %vector.body ]
  %22 = getelementptr inbounds %struct.evp_cipher_ctx_st, %struct.evp_cipher_ctx_st* %ctx, i64 0, i32 14, i64 %index
  %23 = bitcast i8* %22 to <16 x i8>*
  %wide.load = load <16 x i8>, <16 x i8>* %23, align 1, !tbaa !41, !alias.scope !51
  %24 = getelementptr inbounds i8, i8* %22, i64 16
  %25 = bitcast i8* %24 to <16 x i8>*
  %wide.load169 = load <16 x i8>, <16 x i8>* %25, align 1, !tbaa !41, !alias.scope !51
  %26 = getelementptr inbounds i8, i8* %out, i64 %index
  %27 = bitcast i8* %26 to <16 x i8>*
  store <16 x i8> %wide.load, <16 x i8>* %27, align 1, !tbaa !41, !alias.scope !54, !noalias !51
  %28 = getelementptr inbounds i8, i8* %26, i64 16
  %29 = bitcast i8* %28 to <16 x i8>*
  store <16 x i8> %wide.load169, <16 x i8>* %29, align 1, !tbaa !41, !alias.scope !54, !noalias !51
  %index.next = or i64 %index, 32
  %30 = getelementptr inbounds %struct.evp_cipher_ctx_st, %struct.evp_cipher_ctx_st* %ctx, i64 0, i32 14, i64 %index.next
  %31 = bitcast i8* %30 to <16 x i8>*
  %wide.load.1 = load <16 x i8>, <16 x i8>* %31, align 1, !tbaa !41, !alias.scope !51
  %32 = getelementptr inbounds i8, i8* %30, i64 16
  %33 = bitcast i8* %32 to <16 x i8>*
  %wide.load169.1 = load <16 x i8>, <16 x i8>* %33, align 1, !tbaa !41, !alias.scope !51
  %34 = getelementptr inbounds i8, i8* %out, i64 %index.next
  %35 = bitcast i8* %34 to <16 x i8>*
  store <16 x i8> %wide.load.1, <16 x i8>* %35, align 1, !tbaa !41, !alias.scope !54, !noalias !51
  %36 = getelementptr inbounds i8, i8* %34, i64 16
  %37 = bitcast i8* %36 to <16 x i8>*
  store <16 x i8> %wide.load169.1, <16 x i8>* %37, align 1, !tbaa !41, !alias.scope !54, !noalias !51
  %index.next.1 = or i64 %index, 64
  %38 = getelementptr inbounds %struct.evp_cipher_ctx_st, %struct.evp_cipher_ctx_st* %ctx, i64 0, i32 14, i64 %index.next.1
  %39 = bitcast i8* %38 to <16 x i8>*
  %wide.load.2 = load <16 x i8>, <16 x i8>* %39, align 1, !tbaa !41, !alias.scope !51
  %40 = getelementptr inbounds i8, i8* %38, i64 16
  %41 = bitcast i8* %40 to <16 x i8>*
  %wide.load169.2 = load <16 x i8>, <16 x i8>* %41, align 1, !tbaa !41, !alias.scope !51
  %42 = getelementptr inbounds i8, i8* %out, i64 %index.next.1
  %43 = bitcast i8* %42 to <16 x i8>*
  store <16 x i8> %wide.load.2, <16 x i8>* %43, align 1, !tbaa !41, !alias.scope !54, !noalias !51
  %44 = getelementptr inbounds i8, i8* %42, i64 16
  %45 = bitcast i8* %44 to <16 x i8>*
  store <16 x i8> %wide.load169.2, <16 x i8>* %45, align 1, !tbaa !41, !alias.scope !54, !noalias !51
  %index.next.2 = or i64 %index, 96
  %46 = getelementptr inbounds %struct.evp_cipher_ctx_st, %struct.evp_cipher_ctx_st* %ctx, i64 0, i32 14, i64 %index.next.2
  %47 = bitcast i8* %46 to <16 x i8>*
  %wide.load.3 = load <16 x i8>, <16 x i8>* %47, align 1, !tbaa !41, !alias.scope !51
  %48 = getelementptr inbounds i8, i8* %46, i64 16
  %49 = bitcast i8* %48 to <16 x i8>*
  %wide.load169.3 = load <16 x i8>, <16 x i8>* %49, align 1, !tbaa !41, !alias.scope !51
  %50 = getelementptr inbounds i8, i8* %out, i64 %index.next.2
  %51 = bitcast i8* %50 to <16 x i8>*
  store <16 x i8> %wide.load.3, <16 x i8>* %51, align 1, !tbaa !41, !alias.scope !54, !noalias !51
  %52 = getelementptr inbounds i8, i8* %50, i64 16
  %53 = bitcast i8* %52 to <16 x i8>*
  store <16 x i8> %wide.load169.3, <16 x i8>* %53, align 1, !tbaa !41, !alias.scope !54, !noalias !51
  %index.next.3 = add nuw i64 %index, 128
  %niter.next.3 = add i64 %niter, 4
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %middle.block.unr-lcssa, label %vector.body, !llvm.loop !56

middle.block.unr-lcssa:                           ; preds = %vector.body, %vector.ph
  %index.unr = phi i64 [ 0, %vector.ph ], [ %index.next.3, %vector.body ]
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %middle.block, label %vector.body.epil

vector.body.epil:                                 ; preds = %middle.block.unr-lcssa, %vector.body.epil
  %index.epil = phi i64 [ %index.next.epil, %vector.body.epil ], [ %index.unr, %middle.block.unr-lcssa ]
  %epil.iter = phi i64 [ %epil.iter.next, %vector.body.epil ], [ 0, %middle.block.unr-lcssa ]
  %54 = getelementptr inbounds %struct.evp_cipher_ctx_st, %struct.evp_cipher_ctx_st* %ctx, i64 0, i32 14, i64 %index.epil
  %55 = bitcast i8* %54 to <16 x i8>*
  %wide.load.epil = load <16 x i8>, <16 x i8>* %55, align 1, !tbaa !41, !alias.scope !51
  %56 = getelementptr inbounds i8, i8* %54, i64 16
  %57 = bitcast i8* %56 to <16 x i8>*
  %wide.load169.epil = load <16 x i8>, <16 x i8>* %57, align 1, !tbaa !41, !alias.scope !51
  %58 = getelementptr inbounds i8, i8* %out, i64 %index.epil
  %59 = bitcast i8* %58 to <16 x i8>*
  store <16 x i8> %wide.load.epil, <16 x i8>* %59, align 1, !tbaa !41, !alias.scope !54, !noalias !51
  %60 = getelementptr inbounds i8, i8* %58, i64 16
  %61 = bitcast i8* %60 to <16 x i8>*
  store <16 x i8> %wide.load169.epil, <16 x i8>* %61, align 1, !tbaa !41, !alias.scope !54, !noalias !51
  %index.next.epil = add nuw i64 %index.epil, 32
  %epil.iter.next = add i64 %epil.iter, 1
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %middle.block, label %vector.body.epil, !llvm.loop !57

middle.block:                                     ; preds = %vector.body.epil, %middle.block.unr-lcssa
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %if.end97, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %n.vec.remaining = and i64 %wide.trip.count, 24
  %min.epilog.iters.check = icmp eq i64 %n.vec.remaining, 0
  br i1 %min.epilog.iters.check, label %for.body87.preheader, label %vec.epilog.ph

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec171 = and i64 %wide.trip.count, 4294967288
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index173 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next175, %vec.epilog.vector.body ]
  %62 = getelementptr inbounds %struct.evp_cipher_ctx_st, %struct.evp_cipher_ctx_st* %ctx, i64 0, i32 14, i64 %index173
  %63 = bitcast i8* %62 to <8 x i8>*
  %wide.load174 = load <8 x i8>, <8 x i8>* %63, align 1, !tbaa !41
  %64 = getelementptr inbounds i8, i8* %out, i64 %index173
  %65 = bitcast i8* %64 to <8 x i8>*
  store <8 x i8> %wide.load174, <8 x i8>* %65, align 1, !tbaa !41
  %index.next175 = add nuw i64 %index173, 8
  %66 = icmp eq i64 %index.next175, %n.vec171
  br i1 %66, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !58

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n172 = icmp eq i64 %n.vec171, %wide.trip.count
  br i1 %cmp.n172, label %if.end97, label %for.body87.preheader

for.body87.preheader:                             ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec171, %vec.epilog.middle.block ]
  %67 = xor i64 %indvars.iv.ph, -1
  %68 = add nsw i64 %67, %wide.trip.count
  %xtraiter176 = and i64 %wide.trip.count, 3
  %lcmp.mod177.not = icmp eq i64 %xtraiter176, 0
  br i1 %lcmp.mod177.not, label %for.body87.prol.loopexit, label %for.body87.prol

for.body87.prol:                                  ; preds = %for.body87.preheader, %for.body87.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %for.body87.prol ], [ %indvars.iv.ph, %for.body87.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %for.body87.prol ], [ 0, %for.body87.preheader ]
  %arrayidx90.prol = getelementptr inbounds %struct.evp_cipher_ctx_st, %struct.evp_cipher_ctx_st* %ctx, i64 0, i32 14, i64 %indvars.iv.prol
  %69 = load i8, i8* %arrayidx90.prol, align 1, !tbaa !41
  %arrayidx92.prol = getelementptr inbounds i8, i8* %out, i64 %indvars.iv.prol
  store i8 %69, i8* %arrayidx92.prol, align 1, !tbaa !41
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1
  %prol.iter.next = add i64 %prol.iter, 1
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter176
  br i1 %prol.iter.cmp.not, label %for.body87.prol.loopexit, label %for.body87.prol, !llvm.loop !59

for.body87.prol.loopexit:                         ; preds = %for.body87.prol, %for.body87.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %for.body87.preheader ], [ %indvars.iv.next.prol, %for.body87.prol ]
  %70 = icmp ult i64 %68, 3
  br i1 %70, label %if.end97, label %for.body87

for.body87:                                       ; preds = %for.body87.prol.loopexit, %for.body87
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %for.body87 ], [ %indvars.iv.unr, %for.body87.prol.loopexit ]
  %arrayidx90 = getelementptr inbounds %struct.evp_cipher_ctx_st, %struct.evp_cipher_ctx_st* %ctx, i64 0, i32 14, i64 %indvars.iv
  %71 = load i8, i8* %arrayidx90, align 1, !tbaa !41
  %arrayidx92 = getelementptr inbounds i8, i8* %out, i64 %indvars.iv
  store i8 %71, i8* %arrayidx92, align 1, !tbaa !41
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %arrayidx90.1 = getelementptr inbounds %struct.evp_cipher_ctx_st, %struct.evp_cipher_ctx_st* %ctx, i64 0, i32 14, i64 %indvars.iv.next
  %72 = load i8, i8* %arrayidx90.1, align 1, !tbaa !41
  %arrayidx92.1 = getelementptr inbounds i8, i8* %out, i64 %indvars.iv.next
  store i8 %72, i8* %arrayidx92.1, align 1, !tbaa !41
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2
  %arrayidx90.2 = getelementptr inbounds %struct.evp_cipher_ctx_st, %struct.evp_cipher_ctx_st* %ctx, i64 0, i32 14, i64 %indvars.iv.next.1
  %73 = load i8, i8* %arrayidx90.2, align 1, !tbaa !41
  %arrayidx92.2 = getelementptr inbounds i8, i8* %out, i64 %indvars.iv.next.1
  store i8 %73, i8* %arrayidx92.2, align 1, !tbaa !41
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3
  %arrayidx90.3 = getelementptr inbounds %struct.evp_cipher_ctx_st, %struct.evp_cipher_ctx_st* %ctx, i64 0, i32 14, i64 %indvars.iv.next.2
  %74 = load i8, i8* %arrayidx90.3, align 1, !tbaa !41
  %arrayidx92.3 = getelementptr inbounds i8, i8* %out, i64 %indvars.iv.next.2
  store i8 %74, i8* %arrayidx92.3, align 1, !tbaa !41
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4
  %exitcond165.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond165.not.3, label %if.end97, label %for.body87, !llvm.loop !60

if.end97:                                         ; preds = %for.body87.prol.loopexit, %for.body87, %middle.block, %vec.epilog.middle.block, %for.end, %if.end46
  %storemerge = phi i32 [ 0, %if.end46 ], [ %sub83, %for.end ], [ %sub83, %vec.epilog.middle.block ], [ %sub83, %middle.block ], [ %sub83, %for.body87 ], [ %sub83, %for.body87.prol.loopexit ]
  store i32 %storemerge, i32* %outl, align 4, !tbaa !21
  br label %cleanup

cleanup:                                          ; preds = %if.then42, %if.then29, %if.end14, %if.end24, %if.end97, %if.then79, %if.then69, %if.then54, %if.then44, %if.else35, %if.then23, %if.then13, %if.then4, %if.then1, %if.else
  %retval.0 = phi i32 [ 0, %if.then1 ], [ 0, %if.then4 ], [ 1, %if.else35 ], [ 0, %if.then44 ], [ 0, %if.then54 ], [ 0, %if.then69 ], [ 0, %if.then79 ], [ 1, %if.end97 ], [ 0, %if.then13 ], [ 0, %if.then23 ], [ 0, %if.else ], [ %call18, %if.end24 ], [ 0, %if.end14 ], [ 0, %if.then29 ], [ 1, %if.then42 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #13
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @EVP_CipherFinal(%struct.evp_cipher_ctx_st* noundef %ctx, i8* noundef %out, i32* noundef %outl) local_unnamed_addr #0 {
entry:
  %encrypt = getelementptr inbounds %struct.evp_cipher_ctx_st, %struct.evp_cipher_ctx_st* %ctx, i64 0, i32 2
  %0 = load i32, i32* %encrypt, align 8, !tbaa !22
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %call = tail call i32 @EVP_EncryptFinal(%struct.evp_cipher_ctx_st* noundef nonnull %ctx, i8* noundef %out, i32* noundef %outl) #12
  br label %return

if.else:                                          ; preds = %entry
  %call1 = tail call i32 @EVP_DecryptFinal(%struct.evp_cipher_ctx_st* noundef nonnull %ctx, i8* noundef %out, i32* noundef %outl) #12
  br label %return

return:                                           ; preds = %if.else, %if.then
  %retval.0 = phi i32 [ %call, %if.then ], [ %call1, %if.else ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @EVP_EncryptFinal(%struct.evp_cipher_ctx_st* noundef %ctx, i8* noundef %out, i32* noundef %outl) local_unnamed_addr #0 {
entry:
  %call = tail call i32 @EVP_EncryptFinal_ex(%struct.evp_cipher_ctx_st* noundef %ctx, i8* noundef %out, i32* noundef %outl) #12
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define i32 @EVP_DecryptFinal(%struct.evp_cipher_ctx_st* noundef %ctx, i8* noundef %out, i32* noundef %outl) local_unnamed_addr #0 {
entry:
  %call = tail call i32 @EVP_DecryptFinal_ex(%struct.evp_cipher_ctx_st* noundef %ctx, i8* noundef %out, i32* noundef %outl) #12
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define i32 @EVP_EncryptInit(%struct.evp_cipher_ctx_st* noundef %ctx, %struct.evp_cipher_st* noundef %cipher, i8* noundef %key, i8* noundef %iv) local_unnamed_addr #0 {
entry:
  %call = tail call i32 @EVP_CipherInit(%struct.evp_cipher_ctx_st* noundef %ctx, %struct.evp_cipher_st* noundef %cipher, i8* noundef %key, i8* noundef %iv, i32 noundef 1) #12
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define i32 @EVP_EncryptInit_ex(%struct.evp_cipher_ctx_st* noundef %ctx, %struct.evp_cipher_st* noundef %cipher, %struct.engine_st* noundef %impl, i8* noundef %key, i8* noundef %iv) local_unnamed_addr #0 {
entry:
  %call = tail call i32 @EVP_CipherInit_ex(%struct.evp_cipher_ctx_st* noundef %ctx, %struct.evp_cipher_st* noundef %cipher, %struct.engine_st* noundef %impl, i8* noundef %key, i8* noundef %iv, i32 noundef 1) #12
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define i32 @EVP_EncryptInit_ex2(%struct.evp_cipher_ctx_st* noundef %ctx, %struct.evp_cipher_st* noundef %cipher, i8* noundef %key, i8* noundef %iv, %struct.ossl_param_st* noundef %params) local_unnamed_addr #0 {
entry:
  %call = tail call i32 @EVP_CipherInit_ex2(%struct.evp_cipher_ctx_st* noundef %ctx, %struct.evp_cipher_st* noundef %cipher, i8* noundef %key, i8* noundef %iv, i32 noundef 1, %struct.ossl_param_st* noundef %params) #12
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define i32 @EVP_DecryptInit(%struct.evp_cipher_ctx_st* noundef %ctx, %struct.evp_cipher_st* noundef %cipher, i8* noundef %key, i8* noundef %iv) local_unnamed_addr #0 {
entry:
  %call = tail call i32 @EVP_CipherInit(%struct.evp_cipher_ctx_st* noundef %ctx, %struct.evp_cipher_st* noundef %cipher, i8* noundef %key, i8* noundef %iv, i32 noundef 0) #12
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define i32 @EVP_DecryptInit_ex(%struct.evp_cipher_ctx_st* noundef %ctx, %struct.evp_cipher_st* noundef %cipher, %struct.engine_st* noundef %impl, i8* noundef %key, i8* noundef %iv) local_unnamed_addr #0 {
entry:
  %call = tail call i32 @EVP_CipherInit_ex(%struct.evp_cipher_ctx_st* noundef %ctx, %struct.evp_cipher_st* noundef %cipher, %struct.engine_st* noundef %impl, i8* noundef %key, i8* noundef %iv, i32 noundef 0) #12
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define i32 @EVP_DecryptInit_ex2(%struct.evp_cipher_ctx_st* noundef %ctx, %struct.evp_cipher_st* noundef %cipher, i8* noundef %key, i8* noundef %iv, %struct.ossl_param_st* noundef %params) local_unnamed_addr #0 {
entry:
  %call = tail call i32 @EVP_CipherInit_ex2(%struct.evp_cipher_ctx_st* noundef %ctx, %struct.evp_cipher_st* noundef %cipher, i8* noundef %key, i8* noundef %iv, i32 noundef 0, %struct.ossl_param_st* noundef %params) #12
  ret i32 %call
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define i32 @ossl_is_partially_overlapping(i8* noundef %ptr1, i8* noundef %ptr2, i32 noundef %len) local_unnamed_addr #3 {
entry:
  %0 = ptrtoint i8* %ptr1 to i64
  %1 = ptrtoint i8* %ptr2 to i64
  %sub = sub i64 %0, %1
  %cmp = icmp sgt i32 %len, 0
  %cmp1 = icmp ne i64 %sub, 0
  %and17 = and i1 %cmp, %cmp1
  %conv3 = sext i32 %len to i64
  %cmp4 = icmp ult i64 %sub, %conv3
  %sub7 = sub nsw i64 0, %conv3
  %cmp8 = icmp ugt i64 %sub, %sub7
  %or18 = or i1 %cmp4, %cmp8
  %and1019 = and i1 %and17, %or18
  %and10 = zext i1 %and1019 to i32
  ret i32 %and10
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #4

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #4

declare void @ERR_new() local_unnamed_addr #2

declare void @ERR_set_debug(i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #2

declare void @ERR_set_error(i32 noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @evp_EncryptDecryptUpdate(%struct.evp_cipher_ctx_st* noundef %ctx, i8* noundef %out, i32* nocapture noundef %outl, i8* noundef %in, i32 noundef %inl) unnamed_addr #0 {
entry:
  %call = tail call i32 @EVP_CIPHER_CTX_test_flags(%struct.evp_cipher_ctx_st* noundef %ctx, i32 noundef 8192) #11
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %add = add nsw i32 %inl, 7
  %div = sdiv i32 %add, 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %cmpl.0 = phi i32 [ %div, %if.then ], [ %inl, %entry ]
  %cipher = getelementptr inbounds %struct.evp_cipher_ctx_st, %struct.evp_cipher_ctx_st* %ctx, i64 0, i32 0
  %0 = load %struct.evp_cipher_st*, %struct.evp_cipher_st** %cipher, align 8, !tbaa !4
  %block_size = getelementptr inbounds %struct.evp_cipher_st, %struct.evp_cipher_st* %0, i64 0, i32 1
  %1 = load i32, i32* %block_size, align 4, !tbaa !31
  %flags = getelementptr inbounds %struct.evp_cipher_st, %struct.evp_cipher_st* %0, i64 0, i32 4
  %2 = load i64, i64* %flags, align 8, !tbaa !30
  %and = and i64 %2, 1048576
  %tobool2.not = icmp eq i64 %and, 0
  br i1 %tobool2.not, label %if.end14, label %if.then3

if.then3:                                         ; preds = %if.end
  %cmp = icmp eq i32 %1, 1
  br i1 %cmp, label %land.lhs.true, label %if.end7

land.lhs.true:                                    ; preds = %if.then3
  %call4 = tail call i32 @ossl_is_partially_overlapping(i8* noundef %out, i8* noundef %in, i32 noundef %cmpl.0) #12
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end7, label %if.then6

if.then6:                                         ; preds = %land.lhs.true
  tail call void @ERR_new() #11
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 517, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.evp_EncryptDecryptUpdate, i64 0, i64 0)) #11
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 6, i32 noundef 162, i8* noundef null) #11
  br label %cleanup

if.end7:                                          ; preds = %land.lhs.true, %if.then3
  %do_cipher = getelementptr inbounds %struct.evp_cipher_st, %struct.evp_cipher_st* %0, i64 0, i32 7
  %3 = load i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i64)*, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i64)** %do_cipher, align 8, !tbaa !39
  %conv = sext i32 %inl to i64
  %call9 = tail call i32 %3(%struct.evp_cipher_ctx_st* noundef nonnull %ctx, i8* noundef %out, i8* noundef %in, i64 noundef %conv) #11
  %cmp10 = icmp slt i32 %call9, 0
  br i1 %cmp10, label %cleanup, label %if.else

if.else:                                          ; preds = %if.end7
  store i32 %call9, i32* %outl, align 4, !tbaa !21
  br label %cleanup

if.end14:                                         ; preds = %if.end
  %cmp15 = icmp slt i32 %inl, 1
  br i1 %cmp15, label %if.then17, label %if.end20

if.then17:                                        ; preds = %if.end14
  store i32 0, i32* %outl, align 4, !tbaa !21
  %cmp18 = icmp eq i32 %inl, 0
  %conv19 = zext i1 %cmp18 to i32
  br label %cleanup

if.end20:                                         ; preds = %if.end14
  %buf_len = getelementptr inbounds %struct.evp_cipher_ctx_st, %struct.evp_cipher_ctx_st* %ctx, i64 0, i32 3
  %4 = load i32, i32* %buf_len, align 4, !tbaa !34
  %idx.ext = sext i32 %4 to i64
  %add.ptr = getelementptr inbounds i8, i8* %out, i64 %idx.ext
  %call21 = tail call i32 @ossl_is_partially_overlapping(i8* noundef %add.ptr, i8* noundef %in, i32 noundef %cmpl.0) #12
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %if.end24, label %if.then23

if.then23:                                        ; preds = %if.end20
  tail call void @ERR_new() #11
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 534, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.evp_EncryptDecryptUpdate, i64 0, i64 0)) #11
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 6, i32 noundef 162, i8* noundef null) #11
  br label %cleanup

if.end24:                                         ; preds = %if.end20
  %cmp26 = icmp eq i32 %4, 0
  br i1 %cmp26, label %land.lhs.true28, label %if.end40.thread

land.lhs.true28:                                  ; preds = %if.end24
  %block_mask = getelementptr inbounds %struct.evp_cipher_ctx_st, %struct.evp_cipher_ctx_st* %ctx, i64 0, i32 13
  %5 = load i32, i32* %block_mask, align 4, !tbaa !36
  %and29 = and i32 %5, %inl
  %cmp30 = icmp eq i32 %and29, 0
  br i1 %cmp30, label %if.then32, label %if.end40

if.then32:                                        ; preds = %land.lhs.true28
  %do_cipher34 = getelementptr inbounds %struct.evp_cipher_st, %struct.evp_cipher_st* %0, i64 0, i32 7
  %6 = load i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i64)*, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i64)** %do_cipher34, align 8, !tbaa !39
  %conv35202 = zext i32 %inl to i64
  %call36 = tail call i32 %6(%struct.evp_cipher_ctx_st* noundef nonnull %ctx, i8* noundef %out, i8* noundef %in, i64 noundef %conv35202) #11
  %tobool37.not = icmp eq i32 %call36, 0
  br i1 %tobool37.not, label %if.else39, label %if.then38

if.then38:                                        ; preds = %if.then32
  store i32 %inl, i32* %outl, align 4, !tbaa !21
  br label %cleanup

if.else39:                                        ; preds = %if.then32
  store i32 0, i32* %outl, align 4, !tbaa !21
  br label %cleanup

if.end40:                                         ; preds = %land.lhs.true28
  %cmp42 = icmp slt i32 %1, 33
  br i1 %cmp42, label %if.end84, label %cond.false

if.end40.thread:                                  ; preds = %if.end24
  %cmp42201 = icmp slt i32 %1, 33
  br i1 %cmp42201, label %if.then46, label %cond.false

cond.false:                                       ; preds = %if.end40.thread, %if.end40
  tail call void @OPENSSL_die(i8* noundef getelementptr inbounds ([46 x i8], [46 x i8]* @.str.28, i64 0, i64 0), i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 548) #14
  unreachable

if.then46:                                        ; preds = %if.end40.thread
  %sub = sub nsw i32 %1, %4
  %cmp47 = icmp sgt i32 %sub, %inl
  br i1 %cmp47, label %if.then49, label %if.else54

if.then49:                                        ; preds = %if.then46
  %arrayidx = getelementptr inbounds %struct.evp_cipher_ctx_st, %struct.evp_cipher_ctx_st* %ctx, i64 0, i32 6, i64 %idx.ext
  %conv50204 = zext i32 %inl to i64
  %call51 = tail call i8* @memcpy(i8* noundef nonnull %arrayidx, i8* noundef %in, i64 noundef %conv50204) #11
  %7 = load i32, i32* %buf_len, align 4, !tbaa !34
  %add53 = add nsw i32 %7, %inl
  store i32 %add53, i32* %buf_len, align 4, !tbaa !34
  store i32 0, i32* %outl, align 4, !tbaa !21
  br label %cleanup

if.else54:                                        ; preds = %if.then46
  %sub56 = sub nsw i32 %inl, %sub
  %neg = sub i32 0, %1
  %and58 = and i32 %sub56, %neg
  %sub59 = sub nsw i32 2147483647, %1
  %cmp60 = icmp sgt i32 %and58, %sub59
  br i1 %cmp60, label %if.then62, label %if.end63

if.then62:                                        ; preds = %if.else54
  tail call void @ERR_new() #11
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 566, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.evp_EncryptDecryptUpdate, i64 0, i64 0)) #11
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 6, i32 noundef 202, i8* noundef null) #11
  br label %cleanup

if.end63:                                         ; preds = %if.else54
  %arrayidx66 = getelementptr inbounds %struct.evp_cipher_ctx_st, %struct.evp_cipher_ctx_st* %ctx, i64 0, i32 6, i64 %idx.ext
  %conv67 = sext i32 %sub to i64
  %call68 = tail call i8* @memcpy(i8* noundef nonnull %arrayidx66, i8* noundef %in, i64 noundef %conv67) #11
  %8 = load %struct.evp_cipher_st*, %struct.evp_cipher_st** %cipher, align 8, !tbaa !4
  %do_cipher73 = getelementptr inbounds %struct.evp_cipher_st, %struct.evp_cipher_st* %8, i64 0, i32 7
  %9 = load i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i64)*, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i64)** %do_cipher73, align 8, !tbaa !39
  %arraydecay = getelementptr inbounds %struct.evp_cipher_ctx_st, %struct.evp_cipher_ctx_st* %ctx, i64 0, i32 6, i64 0
  %conv75 = sext i32 %1 to i64
  %call76 = tail call i32 %9(%struct.evp_cipher_ctx_st* noundef nonnull %ctx, i8* noundef %out, i8* noundef nonnull %arraydecay, i64 noundef %conv75) #11
  %tobool77.not = icmp eq i32 %call76, 0
  br i1 %tobool77.not, label %cleanup, label %if.end79

if.end79:                                         ; preds = %if.end63
  %add.ptr71 = getelementptr inbounds i8, i8* %in, i64 %conv67
  %add.ptr81 = getelementptr inbounds i8, i8* %out, i64 %conv75
  br label %if.end84

if.end84:                                         ; preds = %if.end40, %if.end79
  %storemerge = phi i32 [ %1, %if.end79 ], [ 0, %if.end40 ]
  %in.addr.0 = phi i8* [ %add.ptr71, %if.end79 ], [ %in, %if.end40 ]
  %inl.addr.0 = phi i32 [ %sub56, %if.end79 ], [ %inl, %if.end40 ]
  %out.addr.0 = phi i8* [ %add.ptr81, %if.end79 ], [ %out, %if.end40 ]
  store i32 %storemerge, i32* %outl, align 4, !tbaa !21
  %sub85 = add nsw i32 %1, -1
  %and86 = and i32 %inl.addr.0, %sub85
  %sub87 = sub nsw i32 %inl.addr.0, %and86
  %cmp88 = icmp sgt i32 %sub87, 0
  br i1 %cmp88, label %if.then90, label %if.end99

if.then90:                                        ; preds = %if.end84
  %10 = load %struct.evp_cipher_st*, %struct.evp_cipher_st** %cipher, align 8, !tbaa !4
  %do_cipher92 = getelementptr inbounds %struct.evp_cipher_st, %struct.evp_cipher_st* %10, i64 0, i32 7
  %11 = load i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i64)*, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i64)** %do_cipher92, align 8, !tbaa !39
  %conv93203 = zext i32 %sub87 to i64
  %call94 = tail call i32 %11(%struct.evp_cipher_ctx_st* noundef nonnull %ctx, i8* noundef %out.addr.0, i8* noundef %in.addr.0, i64 noundef %conv93203) #11
  %tobool95.not = icmp eq i32 %call94, 0
  br i1 %tobool95.not, label %cleanup, label %if.end97

if.end97:                                         ; preds = %if.then90
  %12 = load i32, i32* %outl, align 4, !tbaa !21
  %add98 = add nsw i32 %12, %sub87
  store i32 %add98, i32* %outl, align 4, !tbaa !21
  br label %if.end99

if.end99:                                         ; preds = %if.end97, %if.end84
  %cmp100.not = icmp eq i32 %and86, 0
  br i1 %cmp100.not, label %if.end109, label %if.then102

if.then102:                                       ; preds = %if.end99
  %arraydecay104 = getelementptr inbounds %struct.evp_cipher_ctx_st, %struct.evp_cipher_ctx_st* %ctx, i64 0, i32 6, i64 0
  %idxprom105 = sext i32 %sub87 to i64
  %arrayidx106 = getelementptr inbounds i8, i8* %in.addr.0, i64 %idxprom105
  %conv107 = sext i32 %and86 to i64
  %call108 = tail call i8* @memcpy(i8* noundef nonnull %arraydecay104, i8* noundef %arrayidx106, i64 noundef %conv107) #11
  br label %if.end109

if.end109:                                        ; preds = %if.then102, %if.end99
  store i32 %and86, i32* %buf_len, align 4, !tbaa !34
  br label %cleanup

cleanup:                                          ; preds = %if.then90, %if.end63, %if.end7, %if.end109, %if.then62, %if.then49, %if.else39, %if.then38, %if.then23, %if.then17, %if.else, %if.then6
  %retval.0 = phi i32 [ 0, %if.then6 ], [ 1, %if.else ], [ %conv19, %if.then17 ], [ 0, %if.then23 ], [ 1, %if.then38 ], [ 0, %if.else39 ], [ 1, %if.then49 ], [ 0, %if.then62 ], [ 1, %if.end109 ], [ 0, %if.end7 ], [ 0, %if.end63 ], [ 0, %if.then90 ]
  ret i32 %retval.0
}

declare i32 @EVP_CIPHER_CTX_get_block_size(%struct.evp_cipher_ctx_st* noundef) local_unnamed_addr #2

; Function Attrs: noreturn
declare void @OPENSSL_die(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #5

declare i32 @EVP_CIPHER_CTX_test_flags(%struct.evp_cipher_ctx_st* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare i8* @memcpy(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define i32 @EVP_CIPHER_CTX_set_key_length(%struct.evp_cipher_ctx_st* noundef %c, i32 noundef %keylen) local_unnamed_addr #0 {
entry:
  %params = alloca [2 x %struct.ossl_param_st], align 16
  %len = alloca i64, align 8
  %cipher = getelementptr inbounds %struct.evp_cipher_ctx_st, %struct.evp_cipher_ctx_st* %c, i64 0, i32 0
  %0 = load %struct.evp_cipher_st*, %struct.evp_cipher_st** %cipher, align 8, !tbaa !4
  %prov = getelementptr inbounds %struct.evp_cipher_st, %struct.evp_cipher_st* %0, i64 0, i32 17
  %1 = load %struct.ossl_provider_st*, %struct.ossl_provider_st** %prov, align 8, !tbaa !11
  %cmp.not = icmp eq %struct.ossl_provider_st* %1, null
  br i1 %cmp.not, label %if.end17, label %if.then

if.then:                                          ; preds = %entry
  %2 = bitcast [2 x %struct.ossl_param_st]* %params to i8*
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %2) #13
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(80) %2, i8 0, i64 80, i1 false)
  %3 = bitcast i64* %len to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %3) #13
  %conv = sext i32 %keylen to i64
  store i64 %conv, i64* %len, align 8, !tbaa !38
  %call = tail call i32 @EVP_CIPHER_CTX_get_key_length(%struct.evp_cipher_ctx_st* noundef nonnull %c) #11
  %cmp1 = icmp eq i32 %call, %keylen
  br i1 %cmp1, label %cleanup, label %if.end

if.end:                                           ; preds = %if.then
  %4 = load %struct.evp_cipher_st*, %struct.evp_cipher_st** %cipher, align 8, !tbaa !4
  %call5 = tail call %struct.ossl_param_st* @EVP_CIPHER_settable_ctx_params(%struct.evp_cipher_st* noundef %4) #12
  %call6 = tail call %struct.ossl_param_st* @OSSL_PARAM_locate_const(%struct.ossl_param_st* noundef %call5, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0)) #11
  %cmp7 = icmp eq %struct.ossl_param_st* %call6, null
  br i1 %cmp7, label %if.then9, label %if.end10

if.then9:                                         ; preds = %if.end
  tail call void @ERR_new() #11
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 990, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.EVP_CIPHER_CTX_set_key_length, i64 0, i64 0)) #11
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 6, i32 noundef 130, i8* noundef null) #11
  br label %cleanup

if.end10:                                         ; preds = %if.end
  %arrayidx = getelementptr inbounds [2 x %struct.ossl_param_st], [2 x %struct.ossl_param_st]* %params, i64 0, i64 0
  %params50 = getelementptr inbounds [2 x %struct.ossl_param_st], [2 x %struct.ossl_param_st]* %params, i64 0, i64 0
  call void @OSSL_PARAM_construct_size_t(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %params50, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i64* noundef nonnull %len) #11
  %5 = load %struct.evp_cipher_st*, %struct.evp_cipher_st** %cipher, align 8, !tbaa !4
  %algctx = getelementptr inbounds %struct.evp_cipher_ctx_st, %struct.evp_cipher_ctx_st* %c, i64 0, i32 15
  %6 = load i8*, i8** %algctx, align 8, !tbaa !13
  %call12 = call i32 @evp_do_ciph_ctx_setparams(%struct.evp_cipher_st* noundef %5, i8* noundef %6, %struct.ossl_param_st* noundef nonnull %arrayidx) #11
  %cmp13 = icmp sgt i32 %call12, 0
  %cond = zext i1 %cmp13 to i32
  br label %cleanup

cleanup:                                          ; preds = %if.then, %if.end10, %if.then9
  %retval.0 = phi i32 [ 0, %if.then9 ], [ %cond, %if.end10 ], [ 1, %if.then ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3) #13
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %2) #13
  br label %return

if.end17:                                         ; preds = %entry
  %flags = getelementptr inbounds %struct.evp_cipher_st, %struct.evp_cipher_st* %0, i64 0, i32 4
  %7 = load i64, i64* %flags, align 8, !tbaa !30
  %and = and i64 %7, 128
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %if.end21, label %if.then19

if.then19:                                        ; preds = %if.end17
  %call20 = tail call i32 @EVP_CIPHER_CTX_ctrl(%struct.evp_cipher_ctx_st* noundef nonnull %c, i32 noundef 1, i32 noundef %keylen, i8* noundef null) #12
  br label %return

if.end21:                                         ; preds = %if.end17
  %call22 = tail call i32 @EVP_CIPHER_CTX_get_key_length(%struct.evp_cipher_ctx_st* noundef nonnull %c) #11
  %cmp23 = icmp eq i32 %call22, %keylen
  br i1 %cmp23, label %return, label %if.end26

if.end26:                                         ; preds = %if.end21
  %cmp27 = icmp sgt i32 %keylen, 0
  br i1 %cmp27, label %land.lhs.true, label %if.end34

land.lhs.true:                                    ; preds = %if.end26
  %8 = load %struct.evp_cipher_st*, %struct.evp_cipher_st** %cipher, align 8, !tbaa !4
  %flags30 = getelementptr inbounds %struct.evp_cipher_st, %struct.evp_cipher_st* %8, i64 0, i32 4
  %9 = load i64, i64* %flags30, align 8, !tbaa !30
  %and31 = and i64 %9, 8
  %tobool32.not = icmp eq i64 %and31, 0
  br i1 %tobool32.not, label %if.end34, label %if.then33

if.then33:                                        ; preds = %land.lhs.true
  %key_len = getelementptr inbounds %struct.evp_cipher_ctx_st, %struct.evp_cipher_ctx_st* %c, i64 0, i32 9
  store i32 %keylen, i32* %key_len, align 8, !tbaa !29
  br label %return

if.end34:                                         ; preds = %land.lhs.true, %if.end26
  tail call void @ERR_new() #11
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 1014, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.EVP_CIPHER_CTX_set_key_length, i64 0, i64 0)) #11
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 6, i32 noundef 130, i8* noundef null) #11
  br label %return

return:                                           ; preds = %if.end21, %if.end34, %if.then33, %if.then19, %cleanup
  %retval.1 = phi i32 [ %retval.0, %cleanup ], [ %call20, %if.then19 ], [ 1, %if.then33 ], [ 0, %if.end34 ], [ 1, %if.end21 ]
  ret i32 %retval.1
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #6

declare i32 @EVP_CIPHER_CTX_get_key_length(%struct.evp_cipher_ctx_st* noundef) local_unnamed_addr #2

declare %struct.ossl_param_st* @OSSL_PARAM_locate_const(%struct.ossl_param_st* noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define %struct.ossl_param_st* @EVP_CIPHER_settable_ctx_params(%struct.evp_cipher_st* noundef %cipher) local_unnamed_addr #0 {
entry:
  %cmp.not = icmp eq %struct.evp_cipher_st* %cipher, null
  br i1 %cmp.not, label %cleanup, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %settable_ctx_params = getelementptr inbounds %struct.evp_cipher_st, %struct.evp_cipher_st* %cipher, i64 0, i32 33
  %0 = load %struct.ossl_param_st* (i8*, i8*)*, %struct.ossl_param_st* (i8*, i8*)** %settable_ctx_params, align 8, !tbaa !61
  %cmp1.not = icmp eq %struct.ossl_param_st* (i8*, i8*)* %0, null
  br i1 %cmp1.not, label %cleanup, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %call = tail call %struct.ossl_provider_st* @EVP_CIPHER_get0_provider(%struct.evp_cipher_st* noundef nonnull %cipher) #11
  %call2 = tail call i8* @ossl_provider_ctx(%struct.ossl_provider_st* noundef %call) #11
  %1 = load %struct.ossl_param_st* (i8*, i8*)*, %struct.ossl_param_st* (i8*, i8*)** %settable_ctx_params, align 8, !tbaa !61
  %call4 = tail call %struct.ossl_param_st* %1(i8* noundef null, i8* noundef %call2) #11
  br label %cleanup

cleanup:                                          ; preds = %entry, %land.lhs.true, %if.then
  %retval.0 = phi %struct.ossl_param_st* [ %call4, %if.then ], [ null, %land.lhs.true ], [ null, %entry ]
  ret %struct.ossl_param_st* %retval.0
}

declare void @OSSL_PARAM_construct_size_t(%struct.ossl_param_st* sret(%struct.ossl_param_st) align 8, i8* noundef, i64* noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #7

declare i32 @evp_do_ciph_ctx_setparams(%struct.evp_cipher_st* noundef, i8* noundef, %struct.ossl_param_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @EVP_CIPHER_CTX_ctrl(%struct.evp_cipher_ctx_st* noundef %ctx, i32 noundef %type, i32 noundef %arg, i8* noundef %ptr) local_unnamed_addr #0 {
entry:
  %sz = alloca i64, align 8
  %i = alloca i32, align 4
  %params = alloca [4 x %struct.ossl_param_st], align 16
  %tmp = alloca %struct.ossl_param_st, align 8
  %tmp11 = alloca %struct.ossl_param_st, align 8
  %tmp20 = alloca %struct.ossl_param_st, align 8
  %tmp31 = alloca %struct.ossl_param_st, align 8
  %tmp34 = alloca %struct.ossl_param_st, align 8
  %tmp41 = alloca %struct.ossl_param_st, align 8
  %tmp48 = alloca %struct.ossl_param_st, align 8
  %tmp56 = alloca %struct.ossl_param_st, align 8
  %tmp63 = alloca %struct.ossl_param_st, align 8
  %tmp67 = alloca %struct.ossl_param_st, align 8
  %tmp70 = alloca %struct.ossl_param_st, align 8
  %tmp77 = alloca %struct.ossl_param_st, align 8
  %tmp90 = alloca %struct.ossl_param_st, align 8
  %tmp93 = alloca %struct.ossl_param_st, align 8
  %tmp103 = alloca %struct.ossl_param_st, align 8
  %tmp105 = alloca %struct.ossl_param_st, align 8
  %tmp121 = alloca %struct.ossl_param_st, align 8
  %tmp123 = alloca %struct.ossl_param_st, align 8
  %tmp133 = alloca %struct.ossl_param_st, align 8
  %tmp135 = alloca %struct.ossl_param_st, align 8
  %tmp138 = alloca %struct.ossl_param_st, align 8
  %tmp151 = alloca %struct.ossl_param_st, align 8
  %tmp154 = alloca %struct.ossl_param_st, align 8
  %tmp158 = alloca %struct.ossl_param_st, align 8
  %tmp169 = alloca %struct.ossl_param_st, align 8
  %tmp171 = alloca %struct.ossl_param_st, align 8
  %tmp188 = alloca %struct.ossl_param_st, align 8
  %0 = bitcast i64* %sz to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #13
  %conv = sext i32 %arg to i64
  store i64 %conv, i64* %sz, align 8, !tbaa !38
  %1 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %1) #13
  %2 = bitcast [4 x %struct.ossl_param_st]* %params to i8*
  call void @llvm.lifetime.start.p0i8(i64 160, i8* nonnull %2) #13
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(160) %2, i8 0, i64 160, i1 false)
  %cmp = icmp eq %struct.evp_cipher_ctx_st* %ctx, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %cipher = getelementptr inbounds %struct.evp_cipher_ctx_st, %struct.evp_cipher_ctx_st* %ctx, i64 0, i32 0
  %3 = load %struct.evp_cipher_st*, %struct.evp_cipher_st** %cipher, align 8, !tbaa !4
  %cmp2 = icmp eq %struct.evp_cipher_st* %3, null
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  tail call void @ERR_new() #11
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 1048, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.EVP_CIPHER_CTX_ctrl, i64 0, i64 0)) #11
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 6, i32 noundef 131, i8* noundef null) #11
  br label %cleanup211

if.end:                                           ; preds = %lor.lhs.false
  %prov = getelementptr inbounds %struct.evp_cipher_st, %struct.evp_cipher_st* %3, i64 0, i32 17
  %4 = load %struct.ossl_provider_st*, %struct.ossl_provider_st** %prov, align 8, !tbaa !11
  %cmp5 = icmp eq %struct.ossl_provider_st* %4, null
  br i1 %cmp5, label %legacy, label %if.end8

if.end8:                                          ; preds = %if.end
  switch i32 %type, label %if.then209 [
    i32 1, label %sw.bb
    i32 6, label %sw.bb9
    i32 0, label %cleanup211
    i32 23, label %sw.bb182
    i32 9, label %sw.bb14
    i32 20, label %sw.bb21
    i32 18, label %sw.bb32
    i32 19, label %sw.bb35
    i32 24, label %sw.bb42
    i32 4, label %sw.bb49
    i32 5, label %sw.bb50
    i32 39, label %sw.bb57
    i32 16, label %sw.bb64
    i32 17, label %sw.bb65
    i32 22, label %sw.bb68
    i32 2, label %sw.bb87
    i32 3, label %sw.bb88
    i32 28, label %sw.bb91
    i32 25, label %sw.bb115
    i32 26, label %sw.bb148
  ]

sw.bb:                                            ; preds = %if.end8
  %5 = bitcast %struct.ossl_param_st* %tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %5) #13
  call void @OSSL_PARAM_construct_size_t(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %tmp, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i64* noundef nonnull %sz) #11
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(40) %2, i8* noundef nonnull align 8 dereferenceable(40) %5, i64 40, i1 false), !tbaa.struct !62
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %5) #13
  br label %if.then189

sw.bb9:                                           ; preds = %if.end8
  %6 = bitcast %struct.ossl_param_st* %tmp11 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %6) #13
  call void @OSSL_PARAM_construct_octet_string(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %tmp11, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i8* noundef %ptr, i64 noundef %conv) #11
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(40) %2, i8* noundef nonnull align 8 dereferenceable(40) %6, i64 40, i1 false), !tbaa.struct !62
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %6) #13
  br label %if.else

sw.bb14:                                          ; preds = %if.end8
  %cmp15 = icmp slt i32 %arg, 0
  br i1 %cmp15, label %cleanup211, label %if.end18

if.end18:                                         ; preds = %sw.bb14
  %7 = bitcast %struct.ossl_param_st* %tmp20 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %7) #13
  call void @OSSL_PARAM_construct_size_t(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %tmp20, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i64* noundef nonnull %sz) #11
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(40) %2, i8* noundef nonnull align 8 dereferenceable(40) %7, i64 40, i1 false), !tbaa.struct !62
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %7) #13
  br label %if.then189

sw.bb21:                                          ; preds = %if.end8
  %8 = add i32 %arg, -9
  %9 = icmp ult i32 %8, -7
  br i1 %9, label %cleanup211, label %if.end28

if.end28:                                         ; preds = %sw.bb21
  %sub = sub nuw nsw i32 15, %arg
  %10 = zext i32 %sub to i64
  store i64 %10, i64* %sz, align 8, !tbaa !38
  %11 = bitcast %struct.ossl_param_st* %tmp31 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %11) #13
  call void @OSSL_PARAM_construct_size_t(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %tmp31, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i64* noundef nonnull %sz) #11
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(40) %2, i8* noundef nonnull align 8 dereferenceable(40) %11, i64 40, i1 false), !tbaa.struct !62
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %11) #13
  br label %if.then189

sw.bb32:                                          ; preds = %if.end8
  %12 = bitcast %struct.ossl_param_st* %tmp34 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %12) #13
  call void @OSSL_PARAM_construct_octet_string(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %tmp34, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0), i8* noundef %ptr, i64 noundef %conv) #11
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(40) %2, i8* noundef nonnull align 8 dereferenceable(40) %12, i64 40, i1 false), !tbaa.struct !62
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %12) #13
  br label %if.then189

sw.bb35:                                          ; preds = %if.end8
  %cmp36 = icmp slt i32 %arg, 0
  br i1 %cmp36, label %if.then38, label %if.end39

if.then38:                                        ; preds = %sw.bb35
  store i64 0, i64* %sz, align 8, !tbaa !38
  br label %if.end39

if.end39:                                         ; preds = %if.then38, %sw.bb35
  %13 = phi i64 [ 0, %if.then38 ], [ %conv, %sw.bb35 ]
  %14 = bitcast %struct.ossl_param_st* %tmp41 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %14) #13
  call void @OSSL_PARAM_construct_octet_string(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %tmp41, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0), i8* noundef %ptr, i64 noundef %13) #11
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(40) %2, i8* noundef nonnull align 8 dereferenceable(40) %14, i64 40, i1 false), !tbaa.struct !62
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %14) #13
  br label %if.else

sw.bb42:                                          ; preds = %if.end8
  %cmp43 = icmp slt i32 %arg, 0
  br i1 %cmp43, label %cleanup211, label %if.end46

if.end46:                                         ; preds = %sw.bb42
  %15 = bitcast %struct.ossl_param_st* %tmp48 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %15) #13
  call void @OSSL_PARAM_construct_octet_string(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %tmp48, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0), i8* noundef %ptr, i64 noundef %conv) #11
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(40) %2, i8* noundef nonnull align 8 dereferenceable(40) %15, i64 40, i1 false), !tbaa.struct !62
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %15) #13
  br label %if.then189

sw.bb49:                                          ; preds = %if.end8
  br label %sw.bb50

sw.bb50:                                          ; preds = %if.end8, %sw.bb49
  %set_params.0 = phi i32 [ 1, %if.end8 ], [ 0, %sw.bb49 ]
  %cmp51 = icmp slt i32 %arg, 0
  br i1 %cmp51, label %cleanup211, label %if.end54

if.end54:                                         ; preds = %sw.bb50
  store i32 %arg, i32* %i, align 4, !tbaa !21
  %16 = bitcast %struct.ossl_param_st* %tmp56 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %16) #13
  call void @OSSL_PARAM_construct_uint(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %tmp56, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0), i32* noundef nonnull %i) #11
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(40) %2, i8* noundef nonnull align 8 dereferenceable(40) %16, i64 40, i1 false), !tbaa.struct !62
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %16) #13
  br label %sw.epilog

sw.bb57:                                          ; preds = %if.end8
  %cmp58 = icmp slt i32 %arg, 0
  br i1 %cmp58, label %cleanup211, label %if.end61

if.end61:                                         ; preds = %sw.bb57
  store i32 %arg, i32* %i, align 4, !tbaa !21
  %17 = bitcast %struct.ossl_param_st* %tmp63 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %17) #13
  call void @OSSL_PARAM_construct_uint(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %tmp63, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i64 0, i64 0), i32* noundef nonnull %i) #11
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(40) %2, i8* noundef nonnull align 8 dereferenceable(40) %17, i64 40, i1 false), !tbaa.struct !62
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %17) #13
  br label %if.then189

sw.bb64:                                          ; preds = %if.end8
  br label %sw.bb65

sw.bb65:                                          ; preds = %if.end8, %sw.bb64
  %set_params.1 = phi i32 [ 1, %if.end8 ], [ 0, %sw.bb64 ]
  %18 = bitcast %struct.ossl_param_st* %tmp67 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %18) #13
  call void @OSSL_PARAM_construct_octet_string(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %tmp67, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), i8* noundef %ptr, i64 noundef %conv) #11
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(40) %2, i8* noundef nonnull align 8 dereferenceable(40) %18, i64 40, i1 false), !tbaa.struct !62
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %18) #13
  br label %sw.epilog

sw.bb68:                                          ; preds = %if.end8
  %arrayidx69 = getelementptr inbounds [4 x %struct.ossl_param_st], [4 x %struct.ossl_param_st]* %params, i64 0, i64 0
  %19 = bitcast %struct.ossl_param_st* %tmp70 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %19) #13
  call void @OSSL_PARAM_construct_octet_string(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %tmp70, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i64 0, i64 0), i8* noundef %ptr, i64 noundef %conv) #11
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(40) %2, i8* noundef nonnull align 8 dereferenceable(40) %19, i64 40, i1 false), !tbaa.struct !62
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %19) #13
  %20 = load %struct.evp_cipher_st*, %struct.evp_cipher_st** %cipher, align 8, !tbaa !4
  %algctx = getelementptr inbounds %struct.evp_cipher_ctx_st, %struct.evp_cipher_ctx_st* %ctx, i64 0, i32 15
  %21 = load i8*, i8** %algctx, align 8, !tbaa !13
  %call = call i32 @evp_do_ciph_ctx_setparams(%struct.evp_cipher_st* noundef %20, i8* noundef %21, %struct.ossl_param_st* noundef nonnull %arrayidx69) #11
  %cmp72 = icmp slt i32 %call, 1
  br i1 %cmp72, label %end, label %if.end75

if.end75:                                         ; preds = %sw.bb68
  %22 = bitcast %struct.ossl_param_st* %tmp77 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %22) #13
  call void @OSSL_PARAM_construct_size_t(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %tmp77, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.14, i64 0, i64 0), i64* noundef nonnull %sz) #11
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(40) %2, i8* noundef nonnull align 8 dereferenceable(40) %22, i64 40, i1 false), !tbaa.struct !62
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %22) #13
  %23 = load %struct.evp_cipher_st*, %struct.evp_cipher_st** %cipher, align 8, !tbaa !4
  %24 = load i8*, i8** %algctx, align 8, !tbaa !13
  %call81 = call i32 @evp_do_ciph_ctx_getparams(%struct.evp_cipher_st* noundef %23, i8* noundef %24, %struct.ossl_param_st* noundef nonnull %arrayidx69) #11
  %cmp82 = icmp slt i32 %call81, 1
  br i1 %cmp82, label %end, label %if.end85

if.end85:                                         ; preds = %if.end75
  %25 = load i64, i64* %sz, align 8, !tbaa !38
  %conv86 = trunc i64 %25 to i32
  br label %cleanup211

sw.bb87:                                          ; preds = %if.end8
  br label %sw.bb88

sw.bb88:                                          ; preds = %if.end8, %sw.bb87
  %set_params.2 = phi i32 [ 1, %if.end8 ], [ 0, %sw.bb87 ]
  %26 = bitcast %struct.ossl_param_st* %tmp90 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %26) #13
  call void @OSSL_PARAM_construct_size_t(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %tmp90, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.15, i64 0, i64 0), i64* noundef nonnull %sz) #11
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(40) %2, i8* noundef nonnull align 8 dereferenceable(40) %26, i64 40, i1 false), !tbaa.struct !62
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %26) #13
  br label %sw.epilog

sw.bb91:                                          ; preds = %if.end8
  %arrayidx92 = getelementptr inbounds [4 x %struct.ossl_param_st], [4 x %struct.ossl_param_st]* %params, i64 0, i64 0
  %27 = bitcast %struct.ossl_param_st* %tmp93 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %27) #13
  call void @OSSL_PARAM_construct_size_t(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %tmp93, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.16, i64 0, i64 0), i64* noundef nonnull %sz) #11
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(40) %2, i8* noundef nonnull align 8 dereferenceable(40) %27, i64 40, i1 false), !tbaa.struct !62
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %27) #13
  %28 = load %struct.evp_cipher_st*, %struct.evp_cipher_st** %cipher, align 8, !tbaa !4
  %algctx95 = getelementptr inbounds %struct.evp_cipher_ctx_st, %struct.evp_cipher_ctx_st* %ctx, i64 0, i32 15
  %29 = load i8*, i8** %algctx95, align 8, !tbaa !13
  %call97 = call i32 @evp_do_ciph_ctx_setparams(%struct.evp_cipher_st* noundef %28, i8* noundef %29, %struct.ossl_param_st* noundef nonnull %arrayidx92) #11
  %cmp98 = icmp slt i32 %call97, 1
  br i1 %cmp98, label %cleanup211, label %if.end101

if.end101:                                        ; preds = %sw.bb91
  %30 = bitcast %struct.ossl_param_st* %tmp103 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %30) #13
  call void @OSSL_PARAM_construct_size_t(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %tmp103, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.17, i64 0, i64 0), i64* noundef nonnull %sz) #11
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(40) %2, i8* noundef nonnull align 8 dereferenceable(40) %30, i64 40, i1 false), !tbaa.struct !62
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %30) #13
  %arrayidx104 = getelementptr inbounds [4 x %struct.ossl_param_st], [4 x %struct.ossl_param_st]* %params, i64 0, i64 1
  %31 = bitcast %struct.ossl_param_st* %tmp105 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %31) #13
  call void @OSSL_PARAM_construct_end(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %tmp105) #11
  %32 = bitcast %struct.ossl_param_st* %arrayidx104 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(40) %32, i8* noundef nonnull align 8 dereferenceable(40) %31, i64 40, i1 false), !tbaa.struct !62
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %31) #13
  %33 = load %struct.evp_cipher_st*, %struct.evp_cipher_st** %cipher, align 8, !tbaa !4
  %34 = load i8*, i8** %algctx95, align 8, !tbaa !13
  %call109 = call i32 @evp_do_ciph_ctx_getparams(%struct.evp_cipher_st* noundef %33, i8* noundef %34, %struct.ossl_param_st* noundef nonnull %arrayidx92) #11
  %cmp110 = icmp slt i32 %call109, 1
  br i1 %cmp110, label %cleanup211, label %if.end113

if.end113:                                        ; preds = %if.end101
  %35 = load i64, i64* %sz, align 8, !tbaa !38
  %conv114 = trunc i64 %35 to i32
  br label %cleanup211

sw.bb115:                                         ; preds = %if.end8
  %cmp116 = icmp slt i32 %arg, 32
  br i1 %cmp116, label %cleanup211, label %if.end119

if.end119:                                        ; preds = %sw.bb115
  %arrayidx120 = getelementptr inbounds [4 x %struct.ossl_param_st], [4 x %struct.ossl_param_st]* %params, i64 0, i64 0
  %36 = bitcast %struct.ossl_param_st* %tmp121 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %36) #13
  %inp = getelementptr inbounds i8, i8* %ptr, i64 8
  %37 = bitcast i8* %inp to i8**
  %38 = load i8*, i8** %37, align 8, !tbaa !64
  %len = getelementptr inbounds i8, i8* %ptr, i64 16
  %39 = bitcast i8* %len to i64*
  %40 = load i64, i64* %39, align 8, !tbaa !66
  call void @OSSL_PARAM_construct_octet_string(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %tmp121, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.18, i64 0, i64 0), i8* noundef %38, i64 noundef %40) #11
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(40) %2, i8* noundef nonnull align 8 dereferenceable(40) %36, i64 40, i1 false), !tbaa.struct !62
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %36) #13
  %arrayidx122 = getelementptr inbounds [4 x %struct.ossl_param_st], [4 x %struct.ossl_param_st]* %params, i64 0, i64 1
  %41 = bitcast %struct.ossl_param_st* %tmp123 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %41) #13
  %interleave = getelementptr inbounds i8, i8* %ptr, i64 24
  %42 = bitcast i8* %interleave to i32*
  call void @OSSL_PARAM_construct_uint(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %tmp123, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.19, i64 0, i64 0), i32* noundef nonnull %42) #11
  %43 = bitcast %struct.ossl_param_st* %arrayidx122 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(40) %43, i8* noundef nonnull align 8 dereferenceable(40) %41, i64 40, i1 false), !tbaa.struct !62
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %41) #13
  %44 = load %struct.evp_cipher_st*, %struct.evp_cipher_st** %cipher, align 8, !tbaa !4
  %algctx125 = getelementptr inbounds %struct.evp_cipher_ctx_st, %struct.evp_cipher_ctx_st* %ctx, i64 0, i32 15
  %45 = load i8*, i8** %algctx125, align 8, !tbaa !13
  %call127 = call i32 @evp_do_ciph_ctx_setparams(%struct.evp_cipher_st* noundef %44, i8* noundef %45, %struct.ossl_param_st* noundef nonnull %arrayidx120) #11
  %cmp128 = icmp slt i32 %call127, 1
  br i1 %cmp128, label %cleanup211, label %if.end131

if.end131:                                        ; preds = %if.end119
  %46 = bitcast %struct.ossl_param_st* %tmp133 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %46) #13
  call void @OSSL_PARAM_construct_size_t(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %tmp133, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.20, i64 0, i64 0), i64* noundef nonnull %sz) #11
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(40) %2, i8* noundef nonnull align 8 dereferenceable(40) %46, i64 40, i1 false), !tbaa.struct !62
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %46) #13
  %47 = bitcast %struct.ossl_param_st* %tmp135 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %47) #13
  call void @OSSL_PARAM_construct_uint(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %tmp135, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.19, i64 0, i64 0), i32* noundef nonnull %42) #11
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(40) %43, i8* noundef nonnull align 8 dereferenceable(40) %47, i64 40, i1 false), !tbaa.struct !62
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %47) #13
  %arrayidx137 = getelementptr inbounds [4 x %struct.ossl_param_st], [4 x %struct.ossl_param_st]* %params, i64 0, i64 2
  %48 = bitcast %struct.ossl_param_st* %tmp138 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %48) #13
  call void @OSSL_PARAM_construct_end(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %tmp138) #11
  %49 = bitcast %struct.ossl_param_st* %arrayidx137 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(40) %49, i8* noundef nonnull align 8 dereferenceable(40) %48, i64 40, i1 false), !tbaa.struct !62
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %48) #13
  %50 = load %struct.evp_cipher_st*, %struct.evp_cipher_st** %cipher, align 8, !tbaa !4
  %51 = load i8*, i8** %algctx125, align 8, !tbaa !13
  %call142 = call i32 @evp_do_ciph_ctx_getparams(%struct.evp_cipher_st* noundef %50, i8* noundef %51, %struct.ossl_param_st* noundef nonnull %arrayidx120) #11
  %cmp143 = icmp slt i32 %call142, 1
  br i1 %cmp143, label %cleanup211, label %if.end146

if.end146:                                        ; preds = %if.end131
  %52 = load i64, i64* %sz, align 8, !tbaa !38
  %conv147 = trunc i64 %52 to i32
  br label %cleanup211

sw.bb148:                                         ; preds = %if.end8
  %arrayidx150 = getelementptr inbounds [4 x %struct.ossl_param_st], [4 x %struct.ossl_param_st]* %params, i64 0, i64 0
  %53 = bitcast %struct.ossl_param_st* %tmp151 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %53) #13
  %out = bitcast i8* %ptr to i8**
  %54 = load i8*, i8** %out, align 8, !tbaa !67
  %len152 = getelementptr inbounds i8, i8* %ptr, i64 16
  %55 = bitcast i8* %len152 to i64*
  %56 = load i64, i64* %55, align 8, !tbaa !66
  call void @OSSL_PARAM_construct_octet_string(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %tmp151, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.21, i64 0, i64 0), i8* noundef %54, i64 noundef %56) #11
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(40) %2, i8* noundef nonnull align 8 dereferenceable(40) %53, i64 40, i1 false), !tbaa.struct !62
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %53) #13
  %arrayidx153 = getelementptr inbounds [4 x %struct.ossl_param_st], [4 x %struct.ossl_param_st]* %params, i64 0, i64 1
  %57 = bitcast %struct.ossl_param_st* %tmp154 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %57) #13
  %inp155 = getelementptr inbounds i8, i8* %ptr, i64 8
  %58 = bitcast i8* %inp155 to i8**
  %59 = load i8*, i8** %58, align 8, !tbaa !64
  %60 = load i64, i64* %55, align 8, !tbaa !66
  call void @OSSL_PARAM_construct_octet_string(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %tmp154, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.22, i64 0, i64 0), i8* noundef %59, i64 noundef %60) #11
  %61 = bitcast %struct.ossl_param_st* %arrayidx153 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(40) %61, i8* noundef nonnull align 8 dereferenceable(40) %57, i64 40, i1 false), !tbaa.struct !62
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %57) #13
  %arrayidx157 = getelementptr inbounds [4 x %struct.ossl_param_st], [4 x %struct.ossl_param_st]* %params, i64 0, i64 2
  %62 = bitcast %struct.ossl_param_st* %tmp158 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %62) #13
  %interleave159 = getelementptr inbounds i8, i8* %ptr, i64 24
  %63 = bitcast i8* %interleave159 to i32*
  call void @OSSL_PARAM_construct_uint(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %tmp158, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.19, i64 0, i64 0), i32* noundef nonnull %63) #11
  %64 = bitcast %struct.ossl_param_st* %arrayidx157 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(40) %64, i8* noundef nonnull align 8 dereferenceable(40) %62, i64 40, i1 false), !tbaa.struct !62
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %62) #13
  %65 = load %struct.evp_cipher_st*, %struct.evp_cipher_st** %cipher, align 8, !tbaa !4
  %algctx161 = getelementptr inbounds %struct.evp_cipher_ctx_st, %struct.evp_cipher_ctx_st* %ctx, i64 0, i32 15
  %66 = load i8*, i8** %algctx161, align 8, !tbaa !13
  %call163 = call i32 @evp_do_ciph_ctx_setparams(%struct.evp_cipher_st* noundef %65, i8* noundef %66, %struct.ossl_param_st* noundef nonnull %arrayidx150) #11
  %cmp164 = icmp slt i32 %call163, 1
  br i1 %cmp164, label %cleanup211, label %if.end167

if.end167:                                        ; preds = %sw.bb148
  %67 = bitcast %struct.ossl_param_st* %tmp169 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %67) #13
  call void @OSSL_PARAM_construct_size_t(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %tmp169, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.23, i64 0, i64 0), i64* noundef nonnull %sz) #11
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(40) %2, i8* noundef nonnull align 8 dereferenceable(40) %67, i64 40, i1 false), !tbaa.struct !62
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %67) #13
  %68 = bitcast %struct.ossl_param_st* %tmp171 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %68) #13
  call void @OSSL_PARAM_construct_end(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %tmp171) #11
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(40) %61, i8* noundef nonnull align 8 dereferenceable(40) %68, i64 40, i1 false), !tbaa.struct !62
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %68) #13
  %69 = load %struct.evp_cipher_st*, %struct.evp_cipher_st** %cipher, align 8, !tbaa !4
  %70 = load i8*, i8** %algctx161, align 8, !tbaa !13
  %call175 = call i32 @evp_do_ciph_ctx_getparams(%struct.evp_cipher_st* noundef %69, i8* noundef %70, %struct.ossl_param_st* noundef nonnull %arrayidx150) #11
  %cmp176 = icmp slt i32 %call175, 1
  br i1 %cmp176, label %cleanup211, label %if.end179

if.end179:                                        ; preds = %if.end167
  %71 = load i64, i64* %sz, align 8, !tbaa !38
  %conv180 = trunc i64 %71 to i32
  br label %cleanup211

sw.bb182:                                         ; preds = %if.end8
  %cmp183 = icmp slt i32 %arg, 0
  br i1 %cmp183, label %cleanup211, label %if.end186

if.end186:                                        ; preds = %sw.bb182
  %72 = bitcast %struct.ossl_param_st* %tmp188 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %72) #13
  call void @OSSL_PARAM_construct_octet_string(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %tmp188, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.24, i64 0, i64 0), i8* noundef %ptr, i64 noundef %conv) #11
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(40) %2, i8* noundef nonnull align 8 dereferenceable(40) %72, i64 40, i1 false), !tbaa.struct !62
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %72) #13
  br label %if.then189

sw.epilog:                                        ; preds = %sw.bb88, %sw.bb65, %if.end54
  %set_params.3 = phi i32 [ %set_params.2, %sw.bb88 ], [ %set_params.1, %sw.bb65 ], [ %set_params.0, %if.end54 ]
  %tobool.not = icmp eq i32 %set_params.3, 0
  br i1 %tobool.not, label %if.else, label %if.then189

if.then189:                                       ; preds = %sw.bb, %if.end186, %if.end18, %if.end28, %sw.bb32, %if.end46, %if.end61, %sw.epilog
  %73 = load %struct.evp_cipher_st*, %struct.evp_cipher_st** %cipher, align 8, !tbaa !4
  %algctx191 = getelementptr inbounds %struct.evp_cipher_ctx_st, %struct.evp_cipher_ctx_st* %ctx, i64 0, i32 15
  %74 = load i8*, i8** %algctx191, align 8, !tbaa !13
  %arraydecay192 = getelementptr inbounds [4 x %struct.ossl_param_st], [4 x %struct.ossl_param_st]* %params, i64 0, i64 0
  %call193 = call i32 @evp_do_ciph_ctx_setparams(%struct.evp_cipher_st* noundef %73, i8* noundef %74, %struct.ossl_param_st* noundef nonnull %arraydecay192) #11
  br label %end

if.else:                                          ; preds = %sw.bb9, %if.end39, %sw.epilog
  %75 = load %struct.evp_cipher_st*, %struct.evp_cipher_st** %cipher, align 8, !tbaa !4
  %algctx195 = getelementptr inbounds %struct.evp_cipher_ctx_st, %struct.evp_cipher_ctx_st* %ctx, i64 0, i32 15
  %76 = load i8*, i8** %algctx195, align 8, !tbaa !13
  %arraydecay196 = getelementptr inbounds [4 x %struct.ossl_param_st], [4 x %struct.ossl_param_st]* %params, i64 0, i64 0
  %call197 = call i32 @evp_do_ciph_ctx_getparams(%struct.evp_cipher_st* noundef %75, i8* noundef %76, %struct.ossl_param_st* noundef nonnull %arraydecay196) #11
  br label %end

legacy:                                           ; preds = %if.end
  %ctrl = getelementptr inbounds %struct.evp_cipher_st, %struct.evp_cipher_st* %3, i64 0, i32 12
  %77 = load i32 (%struct.evp_cipher_ctx_st*, i32, i32, i8*)*, i32 (%struct.evp_cipher_ctx_st*, i32, i32, i8*)** %ctrl, align 8, !tbaa !68
  %cmp200 = icmp eq i32 (%struct.evp_cipher_ctx_st*, i32, i32, i8*)* %77, null
  br i1 %cmp200, label %if.then202, label %if.end203

if.then202:                                       ; preds = %legacy
  tail call void @ERR_new() #11
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 1228, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.EVP_CIPHER_CTX_ctrl, i64 0, i64 0)) #11
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 6, i32 noundef 132, i8* noundef null) #11
  br label %cleanup211

if.end203:                                        ; preds = %legacy
  %call206 = tail call i32 %77(%struct.evp_cipher_ctx_st* noundef nonnull %ctx, i32 noundef %type, i32 noundef %arg, i8* noundef %ptr) #11
  br label %end

end:                                              ; preds = %if.then189, %if.else, %if.end75, %sw.bb68, %if.end203
  %ret.0 = phi i32 [ %call206, %if.end203 ], [ %call193, %if.then189 ], [ %call197, %if.else ], [ %call, %sw.bb68 ], [ %call81, %if.end75 ]
  %cmp207 = icmp eq i32 %ret.0, -1
  br i1 %cmp207, label %if.then209, label %cleanup211

if.then209:                                       ; preds = %if.end8, %end
  call void @ERR_new() #11
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 1236, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.EVP_CIPHER_CTX_ctrl, i64 0, i64 0)) #11
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 6, i32 noundef 133, i8* noundef null) #11
  br label %cleanup211

cleanup211:                                       ; preds = %end, %sw.bb182, %if.end179, %sw.bb148, %if.end167, %if.end146, %sw.bb115, %if.end119, %if.end131, %if.end101, %sw.bb91, %sw.bb57, %sw.bb50, %sw.bb42, %sw.bb21, %sw.bb14, %if.end8, %if.then209, %if.then202, %if.end113, %if.end85, %if.then
  %retval.2 = phi i32 [ 0, %if.then ], [ 0, %if.then202 ], [ 0, %if.then209 ], [ %conv114, %if.end113 ], [ %conv86, %if.end85 ], [ 1, %if.end8 ], [ 0, %sw.bb14 ], [ 0, %sw.bb21 ], [ 0, %sw.bb42 ], [ 0, %sw.bb50 ], [ 0, %sw.bb57 ], [ 0, %sw.bb91 ], [ 0, %if.end101 ], [ %conv147, %if.end146 ], [ 0, %sw.bb115 ], [ %call127, %if.end119 ], [ 0, %if.end131 ], [ %conv180, %if.end179 ], [ %call163, %sw.bb148 ], [ 0, %if.end167 ], [ -1, %sw.bb182 ], [ %ret.0, %end ]
  call void @llvm.lifetime.end.p0i8(i64 160, i8* nonnull %2) #13
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %1) #13
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #13
  ret i32 %retval.2
}

; Function Attrs: noinline nounwind uwtable
define i32 @EVP_CIPHER_CTX_set_padding(%struct.evp_cipher_ctx_st* nocapture noundef %ctx, i32 noundef %pad) local_unnamed_addr #0 {
entry:
  %params = alloca [2 x %struct.ossl_param_st], align 16
  %pd = alloca i32, align 4
  %0 = bitcast [2 x %struct.ossl_param_st]* %params to i8*
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %0) #13
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(80) %0, i8 0, i64 80, i1 false)
  %1 = bitcast i32* %pd to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %1) #13
  store i32 %pad, i32* %pd, align 4, !tbaa !21
  %tobool.not = icmp eq i32 %pad, 0
  %flags1 = getelementptr inbounds %struct.evp_cipher_ctx_st, %struct.evp_cipher_ctx_st* %ctx, i64 0, i32 10
  %2 = load i64, i64* %flags1, align 8, !tbaa !24
  %and = and i64 %2, -257
  %masksel = select i1 %tobool.not, i64 256, i64 0
  %or.sink = or i64 %and, %masksel
  store i64 %or.sink, i64* %flags1, align 8, !tbaa !24
  %cipher = getelementptr inbounds %struct.evp_cipher_ctx_st, %struct.evp_cipher_ctx_st* %ctx, i64 0, i32 0
  %3 = load %struct.evp_cipher_st*, %struct.evp_cipher_st** %cipher, align 8, !tbaa !4
  %cmp.not = icmp eq %struct.evp_cipher_st* %3, null
  br i1 %cmp.not, label %if.end5, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %prov = getelementptr inbounds %struct.evp_cipher_st, %struct.evp_cipher_st* %3, i64 0, i32 17
  %4 = load %struct.ossl_provider_st*, %struct.ossl_provider_st** %prov, align 8, !tbaa !11
  %cmp3 = icmp eq %struct.ossl_provider_st* %4, null
  br i1 %cmp3, label %cleanup, label %if.end5

if.end5:                                          ; preds = %land.lhs.true, %entry
  %arrayidx = getelementptr inbounds [2 x %struct.ossl_param_st], [2 x %struct.ossl_param_st]* %params, i64 0, i64 0
  %params17 = getelementptr inbounds [2 x %struct.ossl_param_st], [2 x %struct.ossl_param_st]* %params, i64 0, i64 0
  call void @OSSL_PARAM_construct_uint(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %params17, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i32* noundef nonnull %pd) #11
  %5 = load %struct.evp_cipher_st*, %struct.evp_cipher_st** %cipher, align 8, !tbaa !4
  %algctx = getelementptr inbounds %struct.evp_cipher_ctx_st, %struct.evp_cipher_ctx_st* %ctx, i64 0, i32 15
  %6 = load i8*, i8** %algctx, align 8, !tbaa !13
  %call = call i32 @evp_do_ciph_ctx_setparams(%struct.evp_cipher_st* noundef %5, i8* noundef %6, %struct.ossl_param_st* noundef nonnull %arrayidx) #11
  %cmp7 = icmp ne i32 %call, 0
  %conv = zext i1 %cmp7 to i32
  br label %cleanup

cleanup:                                          ; preds = %land.lhs.true, %if.end5
  %retval.0 = phi i32 [ %conv, %if.end5 ], [ 1, %land.lhs.true ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %1) #13
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %0) #13
  ret i32 %retval.0
}

declare void @OSSL_PARAM_construct_uint(%struct.ossl_param_st* sret(%struct.ossl_param_st) align 8, i8* noundef, i32* noundef) local_unnamed_addr #2

declare void @OSSL_PARAM_construct_octet_string(%struct.ossl_param_st* sret(%struct.ossl_param_st) align 8, i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #2

declare i32 @evp_do_ciph_ctx_getparams(%struct.evp_cipher_st* noundef, i8* noundef, %struct.ossl_param_st* noundef) local_unnamed_addr #2

declare void @OSSL_PARAM_construct_end(%struct.ossl_param_st* sret(%struct.ossl_param_st) align 8) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @EVP_CIPHER_get_params(%struct.evp_cipher_st* noundef readonly %cipher, %struct.ossl_param_st* noundef %params) local_unnamed_addr #0 {
entry:
  %cmp.not = icmp eq %struct.evp_cipher_st* %cipher, null
  br i1 %cmp.not, label %return, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %get_params = getelementptr inbounds %struct.evp_cipher_st, %struct.evp_cipher_st* %cipher, i64 0, i32 28
  %0 = load i32 (%struct.ossl_param_st*)*, i32 (%struct.ossl_param_st*)** %get_params, align 8, !tbaa !69
  %cmp1.not = icmp eq i32 (%struct.ossl_param_st*)* %0, null
  br i1 %cmp1.not, label %return, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %call = tail call i32 %0(%struct.ossl_param_st* noundef %params) #11
  br label %return

return:                                           ; preds = %entry, %land.lhs.true, %if.then
  %retval.0 = phi i32 [ %call, %if.then ], [ 0, %land.lhs.true ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @EVP_CIPHER_CTX_set_params(%struct.evp_cipher_ctx_st* nocapture noundef readonly %ctx, %struct.ossl_param_st* noundef %params) local_unnamed_addr #0 {
entry:
  %cipher = getelementptr inbounds %struct.evp_cipher_ctx_st, %struct.evp_cipher_ctx_st* %ctx, i64 0, i32 0
  %0 = load %struct.evp_cipher_st*, %struct.evp_cipher_st** %cipher, align 8, !tbaa !4
  %cmp.not = icmp eq %struct.evp_cipher_st* %0, null
  br i1 %cmp.not, label %return, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %set_ctx_params = getelementptr inbounds %struct.evp_cipher_st, %struct.evp_cipher_st* %0, i64 0, i32 30
  %1 = load i32 (i8*, %struct.ossl_param_st*)*, i32 (i8*, %struct.ossl_param_st*)** %set_ctx_params, align 8, !tbaa !70
  %cmp2.not = icmp eq i32 (i8*, %struct.ossl_param_st*)* %1, null
  br i1 %cmp2.not, label %return, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %algctx = getelementptr inbounds %struct.evp_cipher_ctx_st, %struct.evp_cipher_ctx_st* %ctx, i64 0, i32 15
  %2 = load i8*, i8** %algctx, align 8, !tbaa !13
  %call = tail call i32 %1(i8* noundef %2, %struct.ossl_param_st* noundef %params) #11
  br label %return

return:                                           ; preds = %entry, %land.lhs.true, %if.then
  %retval.0 = phi i32 [ %call, %if.then ], [ 0, %land.lhs.true ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @EVP_CIPHER_CTX_get_params(%struct.evp_cipher_ctx_st* nocapture noundef readonly %ctx, %struct.ossl_param_st* noundef %params) local_unnamed_addr #0 {
entry:
  %cipher = getelementptr inbounds %struct.evp_cipher_ctx_st, %struct.evp_cipher_ctx_st* %ctx, i64 0, i32 0
  %0 = load %struct.evp_cipher_st*, %struct.evp_cipher_st** %cipher, align 8, !tbaa !4
  %cmp.not = icmp eq %struct.evp_cipher_st* %0, null
  br i1 %cmp.not, label %return, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %get_ctx_params = getelementptr inbounds %struct.evp_cipher_st, %struct.evp_cipher_st* %0, i64 0, i32 29
  %1 = load i32 (i8*, %struct.ossl_param_st*)*, i32 (i8*, %struct.ossl_param_st*)** %get_ctx_params, align 8, !tbaa !71
  %cmp2.not = icmp eq i32 (i8*, %struct.ossl_param_st*)* %1, null
  br i1 %cmp2.not, label %return, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %algctx = getelementptr inbounds %struct.evp_cipher_ctx_st, %struct.evp_cipher_ctx_st* %ctx, i64 0, i32 15
  %2 = load i8*, i8** %algctx, align 8, !tbaa !13
  %call = tail call i32 %1(i8* noundef %2, %struct.ossl_param_st* noundef %params) #11
  br label %return

return:                                           ; preds = %entry, %land.lhs.true, %if.then
  %retval.0 = phi i32 [ %call, %if.then ], [ 0, %land.lhs.true ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define %struct.ossl_param_st* @EVP_CIPHER_gettable_params(%struct.evp_cipher_st* noundef %cipher) local_unnamed_addr #0 {
entry:
  %cmp.not = icmp eq %struct.evp_cipher_st* %cipher, null
  br i1 %cmp.not, label %return, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %gettable_params = getelementptr inbounds %struct.evp_cipher_st, %struct.evp_cipher_st* %cipher, i64 0, i32 31
  %0 = load %struct.ossl_param_st* (i8*)*, %struct.ossl_param_st* (i8*)** %gettable_params, align 8, !tbaa !72
  %cmp1.not = icmp eq %struct.ossl_param_st* (i8*)* %0, null
  br i1 %cmp1.not, label %return, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %call = tail call %struct.ossl_provider_st* @EVP_CIPHER_get0_provider(%struct.evp_cipher_st* noundef nonnull %cipher) #11
  %call3 = tail call i8* @ossl_provider_ctx(%struct.ossl_provider_st* noundef %call) #11
  %call4 = tail call %struct.ossl_param_st* %0(i8* noundef %call3) #11
  br label %return

return:                                           ; preds = %entry, %land.lhs.true, %if.then
  %retval.0 = phi %struct.ossl_param_st* [ %call4, %if.then ], [ null, %land.lhs.true ], [ null, %entry ]
  ret %struct.ossl_param_st* %retval.0
}

declare i8* @ossl_provider_ctx(%struct.ossl_provider_st* noundef) local_unnamed_addr #2

declare %struct.ossl_provider_st* @EVP_CIPHER_get0_provider(%struct.evp_cipher_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define %struct.ossl_param_st* @EVP_CIPHER_gettable_ctx_params(%struct.evp_cipher_st* noundef %cipher) local_unnamed_addr #0 {
entry:
  %cmp.not = icmp eq %struct.evp_cipher_st* %cipher, null
  br i1 %cmp.not, label %cleanup, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %gettable_ctx_params = getelementptr inbounds %struct.evp_cipher_st, %struct.evp_cipher_st* %cipher, i64 0, i32 32
  %0 = load %struct.ossl_param_st* (i8*, i8*)*, %struct.ossl_param_st* (i8*, i8*)** %gettable_ctx_params, align 8, !tbaa !73
  %cmp1.not = icmp eq %struct.ossl_param_st* (i8*, i8*)* %0, null
  br i1 %cmp1.not, label %cleanup, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %call = tail call %struct.ossl_provider_st* @EVP_CIPHER_get0_provider(%struct.evp_cipher_st* noundef nonnull %cipher) #11
  %call2 = tail call i8* @ossl_provider_ctx(%struct.ossl_provider_st* noundef %call) #11
  %1 = load %struct.ossl_param_st* (i8*, i8*)*, %struct.ossl_param_st* (i8*, i8*)** %gettable_ctx_params, align 8, !tbaa !73
  %call4 = tail call %struct.ossl_param_st* %1(i8* noundef null, i8* noundef %call2) #11
  br label %cleanup

cleanup:                                          ; preds = %entry, %land.lhs.true, %if.then
  %retval.0 = phi %struct.ossl_param_st* [ %call4, %if.then ], [ null, %land.lhs.true ], [ null, %entry ]
  ret %struct.ossl_param_st* %retval.0
}

; Function Attrs: noinline nounwind uwtable
define %struct.ossl_param_st* @EVP_CIPHER_CTX_settable_params(%struct.evp_cipher_ctx_st* noundef readonly %cctx) local_unnamed_addr #0 {
entry:
  %cmp.not = icmp eq %struct.evp_cipher_ctx_st* %cctx, null
  br i1 %cmp.not, label %cleanup, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %cipher = getelementptr inbounds %struct.evp_cipher_ctx_st, %struct.evp_cipher_ctx_st* %cctx, i64 0, i32 0
  %0 = load %struct.evp_cipher_st*, %struct.evp_cipher_st** %cipher, align 8, !tbaa !4
  %settable_ctx_params = getelementptr inbounds %struct.evp_cipher_st, %struct.evp_cipher_st* %0, i64 0, i32 33
  %1 = load %struct.ossl_param_st* (i8*, i8*)*, %struct.ossl_param_st* (i8*, i8*)** %settable_ctx_params, align 8, !tbaa !61
  %cmp1.not = icmp eq %struct.ossl_param_st* (i8*, i8*)* %1, null
  br i1 %cmp1.not, label %cleanup, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %call = tail call %struct.ossl_provider_st* @EVP_CIPHER_get0_provider(%struct.evp_cipher_st* noundef nonnull %0) #11
  %call3 = tail call i8* @ossl_provider_ctx(%struct.ossl_provider_st* noundef %call) #11
  %2 = load %struct.evp_cipher_st*, %struct.evp_cipher_st** %cipher, align 8, !tbaa !4
  %settable_ctx_params5 = getelementptr inbounds %struct.evp_cipher_st, %struct.evp_cipher_st* %2, i64 0, i32 33
  %3 = load %struct.ossl_param_st* (i8*, i8*)*, %struct.ossl_param_st* (i8*, i8*)** %settable_ctx_params5, align 8, !tbaa !61
  %algctx = getelementptr inbounds %struct.evp_cipher_ctx_st, %struct.evp_cipher_ctx_st* %cctx, i64 0, i32 15
  %4 = load i8*, i8** %algctx, align 8, !tbaa !13
  %call6 = tail call %struct.ossl_param_st* %3(i8* noundef %4, i8* noundef %call3) #11
  br label %cleanup

cleanup:                                          ; preds = %entry, %land.lhs.true, %if.then
  %retval.0 = phi %struct.ossl_param_st* [ %call6, %if.then ], [ null, %land.lhs.true ], [ null, %entry ]
  ret %struct.ossl_param_st* %retval.0
}

; Function Attrs: noinline nounwind uwtable
define %struct.ossl_param_st* @EVP_CIPHER_CTX_gettable_params(%struct.evp_cipher_ctx_st* noundef readonly %cctx) local_unnamed_addr #0 {
entry:
  %cmp.not = icmp eq %struct.evp_cipher_ctx_st* %cctx, null
  br i1 %cmp.not, label %cleanup, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %cipher = getelementptr inbounds %struct.evp_cipher_ctx_st, %struct.evp_cipher_ctx_st* %cctx, i64 0, i32 0
  %0 = load %struct.evp_cipher_st*, %struct.evp_cipher_st** %cipher, align 8, !tbaa !4
  %gettable_ctx_params = getelementptr inbounds %struct.evp_cipher_st, %struct.evp_cipher_st* %0, i64 0, i32 32
  %1 = load %struct.ossl_param_st* (i8*, i8*)*, %struct.ossl_param_st* (i8*, i8*)** %gettable_ctx_params, align 8, !tbaa !73
  %cmp1.not = icmp eq %struct.ossl_param_st* (i8*, i8*)* %1, null
  br i1 %cmp1.not, label %cleanup, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %call = tail call %struct.ossl_provider_st* @EVP_CIPHER_get0_provider(%struct.evp_cipher_st* noundef nonnull %0) #11
  %call3 = tail call i8* @ossl_provider_ctx(%struct.ossl_provider_st* noundef %call) #11
  %2 = load %struct.evp_cipher_st*, %struct.evp_cipher_st** %cipher, align 8, !tbaa !4
  %gettable_ctx_params5 = getelementptr inbounds %struct.evp_cipher_st, %struct.evp_cipher_st* %2, i64 0, i32 32
  %3 = load %struct.ossl_param_st* (i8*, i8*)*, %struct.ossl_param_st* (i8*, i8*)** %gettable_ctx_params5, align 8, !tbaa !73
  %algctx = getelementptr inbounds %struct.evp_cipher_ctx_st, %struct.evp_cipher_ctx_st* %cctx, i64 0, i32 15
  %4 = load i8*, i8** %algctx, align 8, !tbaa !13
  %call6 = tail call %struct.ossl_param_st* %3(i8* noundef %4, i8* noundef %call3) #11
  br label %cleanup

cleanup:                                          ; preds = %entry, %land.lhs.true, %if.then
  %retval.0 = phi %struct.ossl_param_st* [ %call6, %if.then ], [ null, %land.lhs.true ], [ null, %entry ]
  ret %struct.ossl_param_st* %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @EVP_CIPHER_CTX_rand_key(%struct.evp_cipher_ctx_st* noundef %ctx, i8* noundef %key) local_unnamed_addr #0 {
entry:
  %cipher = getelementptr inbounds %struct.evp_cipher_ctx_st, %struct.evp_cipher_ctx_st* %ctx, i64 0, i32 0
  %0 = load %struct.evp_cipher_st*, %struct.evp_cipher_st** %cipher, align 8, !tbaa !4
  %flags = getelementptr inbounds %struct.evp_cipher_st, %struct.evp_cipher_st* %0, i64 0, i32 4
  %1 = load i64, i64* %flags, align 8, !tbaa !30
  %and = and i64 %1, 512
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = tail call i32 @EVP_CIPHER_CTX_ctrl(%struct.evp_cipher_ctx_st* noundef nonnull %ctx, i32 noundef 6, i32 noundef 0, i8* noundef %key) #12
  br label %return

if.end:                                           ; preds = %entry
  %call1 = tail call fastcc %struct.ossl_lib_ctx_st* @EVP_CIPHER_CTX_get_libctx(%struct.evp_cipher_ctx_st* noundef nonnull %ctx) #12
  %call2 = tail call i32 @EVP_CIPHER_CTX_get_key_length(%struct.evp_cipher_ctx_st* noundef nonnull %ctx) #11
  %cmp = icmp slt i32 %call2, 1
  br i1 %cmp, label %return, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %conv16 = zext i32 %call2 to i64
  %call3 = tail call i32 @RAND_priv_bytes_ex(%struct.ossl_lib_ctx_st* noundef %call1, i8* noundef %key, i64 noundef %conv16, i32 noundef 0) #11
  %cmp4 = icmp sgt i32 %call3, 0
  %spec.select = zext i1 %cmp4 to i32
  br label %return

return:                                           ; preds = %lor.lhs.false, %if.end, %if.then
  %retval.1 = phi i32 [ %call, %if.then ], [ 0, %if.end ], [ %spec.select, %lor.lhs.false ]
  ret i32 %retval.1
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.ossl_lib_ctx_st* @EVP_CIPHER_CTX_get_libctx(%struct.evp_cipher_ctx_st* nocapture noundef readonly %ctx) unnamed_addr #0 {
entry:
  %cipher1 = getelementptr inbounds %struct.evp_cipher_ctx_st, %struct.evp_cipher_ctx_st* %ctx, i64 0, i32 0
  %0 = load %struct.evp_cipher_st*, %struct.evp_cipher_st** %cipher1, align 8, !tbaa !4
  %cmp = icmp eq %struct.evp_cipher_st* %0, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call = tail call %struct.ossl_provider_st* @EVP_CIPHER_get0_provider(%struct.evp_cipher_st* noundef nonnull %0) #11
  %call2 = tail call %struct.ossl_lib_ctx_st* @ossl_provider_libctx(%struct.ossl_provider_st* noundef %call) #11
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi %struct.ossl_lib_ctx_st* [ %call2, %if.end ], [ null, %entry ]
  ret %struct.ossl_lib_ctx_st* %retval.0
}

declare i32 @RAND_priv_bytes_ex(%struct.ossl_lib_ctx_st* noundef, i8* noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @EVP_CIPHER_CTX_copy(%struct.evp_cipher_ctx_st* noundef %out, %struct.evp_cipher_ctx_st* noundef %in) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.evp_cipher_ctx_st* %in, null
  br i1 %cmp, label %return.sink.split, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %cipher = getelementptr inbounds %struct.evp_cipher_ctx_st, %struct.evp_cipher_ctx_st* %in, i64 0, i32 0
  %0 = load %struct.evp_cipher_st*, %struct.evp_cipher_st** %cipher, align 8, !tbaa !4
  %cmp1 = icmp eq %struct.evp_cipher_st* %0, null
  br i1 %cmp1, label %return.sink.split, label %if.end

if.end:                                           ; preds = %lor.lhs.false
  %prov = getelementptr inbounds %struct.evp_cipher_st, %struct.evp_cipher_st* %0, i64 0, i32 17
  %1 = load %struct.ossl_provider_st*, %struct.ossl_provider_st** %prov, align 8, !tbaa !11
  %cmp3 = icmp eq %struct.ossl_provider_st* %1, null
  br i1 %cmp3, label %legacy, label %if.end5

if.end5:                                          ; preds = %if.end
  %dupctx = getelementptr inbounds %struct.evp_cipher_st, %struct.evp_cipher_st* %0, i64 0, i32 27
  %2 = load i8* (i8*)*, i8* (i8*)** %dupctx, align 8, !tbaa !74
  %cmp7 = icmp eq i8* (i8*)* %2, null
  br i1 %cmp7, label %return.sink.split, label %if.end9

if.end9:                                          ; preds = %if.end5
  %call = tail call i32 @EVP_CIPHER_CTX_reset(%struct.evp_cipher_ctx_st* noundef %out) #12
  %3 = bitcast %struct.evp_cipher_ctx_st* %out to i8*
  %4 = bitcast %struct.evp_cipher_ctx_st* %in to i8*
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(184) %3, i8* noundef nonnull align 8 dereferenceable(184) %4, i64 184, i1 false), !tbaa.struct !75
  %algctx = getelementptr inbounds %struct.evp_cipher_ctx_st, %struct.evp_cipher_ctx_st* %out, i64 0, i32 15
  store i8* null, i8** %algctx, align 8, !tbaa !13
  %fetched_cipher = getelementptr inbounds %struct.evp_cipher_ctx_st, %struct.evp_cipher_ctx_st* %in, i64 0, i32 16
  %5 = load %struct.evp_cipher_st*, %struct.evp_cipher_st** %fetched_cipher, align 8, !tbaa !15
  %cmp10.not = icmp eq %struct.evp_cipher_st* %5, null
  br i1 %cmp10.not, label %if.end15, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end9
  %call12 = tail call i32 @EVP_CIPHER_up_ref(%struct.evp_cipher_st* noundef nonnull %5) #12
  br label %if.end15

if.end15:                                         ; preds = %land.lhs.true, %if.end9
  %6 = load %struct.evp_cipher_st*, %struct.evp_cipher_st** %cipher, align 8, !tbaa !4
  %dupctx17 = getelementptr inbounds %struct.evp_cipher_st, %struct.evp_cipher_st* %6, i64 0, i32 27
  %7 = load i8* (i8*)*, i8* (i8*)** %dupctx17, align 8, !tbaa !74
  %algctx18 = getelementptr inbounds %struct.evp_cipher_ctx_st, %struct.evp_cipher_ctx_st* %in, i64 0, i32 15
  %8 = load i8*, i8** %algctx18, align 8, !tbaa !13
  %call19 = tail call i8* %7(i8* noundef %8) #11
  store i8* %call19, i8** %algctx, align 8, !tbaa !13
  %cmp22 = icmp eq i8* %call19, null
  br i1 %cmp22, label %return.sink.split, label %return

legacy:                                           ; preds = %if.end
  %engine = getelementptr inbounds %struct.evp_cipher_ctx_st, %struct.evp_cipher_ctx_st* %in, i64 0, i32 1
  %9 = load %struct.engine_st*, %struct.engine_st** %engine, align 8, !tbaa !19
  %tobool25.not = icmp eq %struct.engine_st* %9, null
  br i1 %tobool25.not, label %if.end31, label %land.lhs.true26

land.lhs.true26:                                  ; preds = %legacy
  %call28 = tail call i32 @ENGINE_init(%struct.engine_st* noundef nonnull %9) #11
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %return.sink.split, label %if.end31

if.end31:                                         ; preds = %land.lhs.true26, %legacy
  %call32 = tail call i32 @EVP_CIPHER_CTX_reset(%struct.evp_cipher_ctx_st* noundef %out) #12
  %10 = bitcast %struct.evp_cipher_ctx_st* %out to i8*
  %11 = bitcast %struct.evp_cipher_ctx_st* %in to i8*
  %call33 = tail call i8* @memcpy(i8* noundef %10, i8* noundef nonnull %11, i64 noundef 184) #11
  %cipher_data = getelementptr inbounds %struct.evp_cipher_ctx_st, %struct.evp_cipher_ctx_st* %in, i64 0, i32 11
  %12 = load i8*, i8** %cipher_data, align 8, !tbaa !17
  %tobool34.not = icmp eq i8* %12, null
  br i1 %tobool34.not, label %if.end55, label %land.lhs.true35

land.lhs.true35:                                  ; preds = %if.end31
  %13 = load %struct.evp_cipher_st*, %struct.evp_cipher_st** %cipher, align 8, !tbaa !4
  %ctx_size = getelementptr inbounds %struct.evp_cipher_st, %struct.evp_cipher_st* %13, i64 0, i32 9
  %14 = load i32, i32* %ctx_size, align 8, !tbaa !18
  %tobool37.not = icmp eq i32 %14, 0
  br i1 %tobool37.not, label %if.end55, label %if.then38

if.then38:                                        ; preds = %land.lhs.true35
  %conv = sext i32 %14 to i64
  %call41 = tail call i8* @CRYPTO_malloc(i64 noundef %conv, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 1397) #11
  %cipher_data42 = getelementptr inbounds %struct.evp_cipher_ctx_st, %struct.evp_cipher_ctx_st* %out, i64 0, i32 11
  store i8* %call41, i8** %cipher_data42, align 8, !tbaa !17
  %cmp44 = icmp eq i8* %call41, null
  br i1 %cmp44, label %return.sink.split.sink.split, label %if.end48

if.end48:                                         ; preds = %if.then38
  %15 = load i8*, i8** %cipher_data, align 8, !tbaa !17
  %16 = load %struct.evp_cipher_st*, %struct.evp_cipher_st** %cipher, align 8, !tbaa !4
  %ctx_size52 = getelementptr inbounds %struct.evp_cipher_st, %struct.evp_cipher_st* %16, i64 0, i32 9
  %17 = load i32, i32* %ctx_size52, align 8, !tbaa !18
  %conv53 = sext i32 %17 to i64
  %call54 = tail call i8* @memcpy(i8* noundef nonnull %call41, i8* noundef %15, i64 noundef %conv53) #11
  br label %if.end55

if.end55:                                         ; preds = %if.end48, %land.lhs.true35, %if.end31
  %18 = load %struct.evp_cipher_st*, %struct.evp_cipher_st** %cipher, align 8, !tbaa !4
  %flags = getelementptr inbounds %struct.evp_cipher_st, %struct.evp_cipher_st* %18, i64 0, i32 4
  %19 = load i64, i64* %flags, align 8, !tbaa !30
  %and = and i64 %19, 1024
  %tobool57.not = icmp eq i64 %and, 0
  br i1 %tobool57.not, label %return, label %if.then58

if.then58:                                        ; preds = %if.end55
  %ctrl = getelementptr inbounds %struct.evp_cipher_st, %struct.evp_cipher_st* %18, i64 0, i32 12
  %20 = load i32 (%struct.evp_cipher_ctx_st*, i32, i32, i8*)*, i32 (%struct.evp_cipher_ctx_st*, i32, i32, i8*)** %ctrl, align 8, !tbaa !68
  %call60 = tail call i32 %20(%struct.evp_cipher_ctx_st* noundef nonnull %in, i32 noundef 8, i32 noundef 0, i8* noundef %10) #11
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %return.sink.split.sink.split, label %return

return.sink.split.sink.split:                     ; preds = %if.then58, %if.then38
  %.sink101.ph = phi i32 [ 1400, %if.then38 ], [ 1409, %if.then58 ]
  %.sink.ph = phi i32 [ 786688, %if.then38 ], [ 134, %if.then58 ]
  %cipher47 = getelementptr inbounds %struct.evp_cipher_ctx_st, %struct.evp_cipher_ctx_st* %out, i64 0, i32 0
  store %struct.evp_cipher_st* null, %struct.evp_cipher_st** %cipher47, align 8, !tbaa !4
  br label %return.sink.split

return.sink.split:                                ; preds = %return.sink.split.sink.split, %land.lhs.true26, %if.end15, %if.end5, %entry, %lor.lhs.false
  %.sink101 = phi i32 [ 1352, %lor.lhs.false ], [ 1352, %entry ], [ 1360, %if.end5 ], [ 1376, %if.end15 ], [ 1388, %land.lhs.true26 ], [ %.sink101.ph, %return.sink.split.sink.split ]
  %.sink = phi i32 [ 111, %lor.lhs.false ], [ 111, %entry ], [ 190, %if.end5 ], [ 190, %if.end15 ], [ 524326, %land.lhs.true26 ], [ %.sink.ph, %return.sink.split.sink.split ]
  tail call void @ERR_new() #11
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef %.sink101, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.EVP_CIPHER_CTX_copy, i64 0, i64 0)) #11
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 6, i32 noundef %.sink, i8* noundef null) #11
  br label %return

return:                                           ; preds = %return.sink.split, %if.end55, %if.then58, %if.end15
  %retval.0 = phi i32 [ 1, %if.end15 ], [ 1, %if.then58 ], [ 1, %if.end55 ], [ 0, %return.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline nounwind uwtable willreturn
define i32 @EVP_CIPHER_up_ref(%struct.evp_cipher_st* nocapture noundef %cipher) local_unnamed_addr #8 {
entry:
  %ref = alloca i32, align 4
  %0 = bitcast i32* %ref to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #13
  %origin = getelementptr inbounds %struct.evp_cipher_st, %struct.evp_cipher_st* %cipher, i64 0, i32 5
  %1 = load i32, i32* %origin, align 8, !tbaa !20
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %refcnt = getelementptr inbounds %struct.evp_cipher_st, %struct.evp_cipher_st* %cipher, i64 0, i32 18
  call fastcc void @CRYPTO_UP_REF(i32* noundef nonnull %refcnt, i32* noundef nonnull %ref) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #13
  ret i32 1
}

declare i32 @ENGINE_init(%struct.engine_st* noundef) local_unnamed_addr #2

declare i8* @CRYPTO_malloc(i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define %struct.evp_cipher_st* @evp_cipher_new() local_unnamed_addr #0 {
entry:
  %call = tail call i8* @CRYPTO_zalloc(i64 noundef 256, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 1417) #11
  %0 = bitcast i8* %call to %struct.evp_cipher_st*
  %cmp.not = icmp eq i8* %call, null
  br i1 %cmp.not, label %cleanup, label %if.then

if.then:                                          ; preds = %entry
  %call1 = tail call i8* @CRYPTO_THREAD_lock_new() #11
  %lock = getelementptr inbounds i8, i8* %call, i64 136
  %1 = bitcast i8* %lock to i8**
  store i8* %call1, i8** %1, align 8, !tbaa !76
  %cmp3 = icmp eq i8* %call1, null
  br i1 %cmp3, label %if.then4, label %if.end

if.then4:                                         ; preds = %if.then
  tail call void @CRYPTO_free(i8* noundef nonnull %call, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 1422) #11
  br label %cleanup

if.end:                                           ; preds = %if.then
  %refcnt = getelementptr inbounds i8, i8* %call, i64 128
  %2 = bitcast i8* %refcnt to i32*
  store atomic i32 1, i32* %2 seq_cst, align 4, !tbaa !77
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end, %if.then4
  %retval.0 = phi %struct.evp_cipher_st* [ null, %if.then4 ], [ %0, %if.end ], [ %0, %entry ]
  ret %struct.evp_cipher_st* %retval.0
}

declare i8* @CRYPTO_THREAD_lock_new() local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define %struct.evp_cipher_st* @EVP_CIPHER_fetch(%struct.ossl_lib_ctx_st* noundef %ctx, i8* noundef %algorithm, i8* noundef %properties) local_unnamed_addr #0 {
entry:
  %call = tail call i8* @evp_generic_fetch(%struct.ossl_lib_ctx_st* noundef %ctx, i32 noundef 2, i8* noundef %algorithm, i8* noundef %properties, i8* (i32, %struct.ossl_algorithm_st*, %struct.ossl_provider_st*)* noundef nonnull @evp_cipher_from_algorithm, i32 (i8*)* noundef nonnull @evp_cipher_up_ref, void (i8*)* noundef nonnull @evp_cipher_free) #11
  %0 = bitcast i8* %call to %struct.evp_cipher_st*
  ret %struct.evp_cipher_st* %0
}

declare i8* @evp_generic_fetch(%struct.ossl_lib_ctx_st* noundef, i32 noundef, i8* noundef, i8* noundef, i8* (i32, %struct.ossl_algorithm_st*, %struct.ossl_provider_st*)* noundef, i32 (i8*)* noundef, void (i8*)* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal i8* @evp_cipher_from_algorithm(i32 noundef %name_id, %struct.ossl_algorithm_st* noundef %algodef, %struct.ossl_provider_st* noundef %prov) #0 {
entry:
  %implementation = getelementptr inbounds %struct.ossl_algorithm_st, %struct.ossl_algorithm_st* %algodef, i64 0, i32 2
  %0 = load %struct.ossl_dispatch_st*, %struct.ossl_dispatch_st** %implementation, align 8, !tbaa !78
  %call = tail call %struct.evp_cipher_st* @evp_cipher_new() #12
  %cmp = icmp eq %struct.evp_cipher_st* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #11
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 1470, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.evp_cipher_from_algorithm, i64 0, i64 0)) #11
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 6, i32 noundef 786688, i8* noundef null) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %nid = getelementptr inbounds %struct.evp_cipher_st, %struct.evp_cipher_st* %call, i64 0, i32 0
  store i32 0, i32* %nid, align 8, !tbaa !23
  %1 = bitcast %struct.evp_cipher_st* %call to i8*
  %call2 = tail call i32 @evp_names_do_all(%struct.ossl_provider_st* noundef %prov, i32 noundef %name_id, void (i8*, i8*)* noundef nonnull @set_legacy_nid, i8* noundef %1) #11
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.then5, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %2 = load i32, i32* %nid, align 8, !tbaa !23
  %cmp4 = icmp eq i32 %2, -1
  br i1 %cmp4, label %if.then5, label %if.end6

if.then5:                                         ; preds = %lor.lhs.false, %if.end
  tail call void @ERR_new() #11
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 1478, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.evp_cipher_from_algorithm, i64 0, i64 0)) #11
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 6, i32 noundef 786691, i8* noundef null) #11
  tail call void @EVP_CIPHER_free(%struct.evp_cipher_st* noundef nonnull %call) #12
  br label %cleanup

if.end6:                                          ; preds = %lor.lhs.false
  %name_id7 = getelementptr inbounds %struct.evp_cipher_st, %struct.evp_cipher_st* %call, i64 0, i32 14
  store i32 %name_id, i32* %name_id7, align 8, !tbaa !80
  %call8 = tail call i8* @ossl_algorithm_get1_first_name(%struct.ossl_algorithm_st* noundef nonnull %algodef) #11
  %type_name = getelementptr inbounds %struct.evp_cipher_st, %struct.evp_cipher_st* %call, i64 0, i32 15
  store i8* %call8, i8** %type_name, align 8, !tbaa !81
  %cmp9 = icmp eq i8* %call8, null
  br i1 %cmp9, label %if.then10, label %if.end11

if.then10:                                        ; preds = %if.end6
  tail call void @EVP_CIPHER_free(%struct.evp_cipher_st* noundef nonnull %call) #12
  br label %cleanup

if.end11:                                         ; preds = %if.end6
  %algorithm_description = getelementptr inbounds %struct.ossl_algorithm_st, %struct.ossl_algorithm_st* %algodef, i64 0, i32 3
  %3 = load i8*, i8** %algorithm_description, align 8, !tbaa !82
  %description = getelementptr inbounds %struct.evp_cipher_st, %struct.evp_cipher_st* %call, i64 0, i32 16
  store i8* %3, i8** %description, align 8, !tbaa !83
  %settable_ctx_params = getelementptr inbounds %struct.evp_cipher_st, %struct.evp_cipher_st* %call, i64 0, i32 33
  %gettable_ctx_params = getelementptr inbounds %struct.evp_cipher_st, %struct.evp_cipher_st* %call, i64 0, i32 32
  %gettable_params = getelementptr inbounds %struct.evp_cipher_st, %struct.evp_cipher_st* %call, i64 0, i32 31
  %set_ctx_params = getelementptr inbounds %struct.evp_cipher_st, %struct.evp_cipher_st* %call, i64 0, i32 30
  %get_ctx_params = getelementptr inbounds %struct.evp_cipher_st, %struct.evp_cipher_st* %call, i64 0, i32 29
  %get_params = getelementptr inbounds %struct.evp_cipher_st, %struct.evp_cipher_st* %call, i64 0, i32 28
  %dupctx = getelementptr inbounds %struct.evp_cipher_st, %struct.evp_cipher_st* %call, i64 0, i32 27
  %freectx = getelementptr inbounds %struct.evp_cipher_st, %struct.evp_cipher_st* %call, i64 0, i32 26
  %ccipher = getelementptr inbounds %struct.evp_cipher_st, %struct.evp_cipher_st* %call, i64 0, i32 25
  %cfinal = getelementptr inbounds %struct.evp_cipher_st, %struct.evp_cipher_st* %call, i64 0, i32 24
  %cupdate = getelementptr inbounds %struct.evp_cipher_st, %struct.evp_cipher_st* %call, i64 0, i32 23
  %dinit = getelementptr inbounds %struct.evp_cipher_st, %struct.evp_cipher_st* %call, i64 0, i32 22
  %einit = getelementptr inbounds %struct.evp_cipher_st, %struct.evp_cipher_st* %call, i64 0, i32 21
  %newctx = getelementptr inbounds %struct.evp_cipher_st, %struct.evp_cipher_st* %call, i64 0, i32 20
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end11
  %fns.0 = phi %struct.ossl_dispatch_st* [ %0, %if.end11 ], [ %incdec.ptr, %for.inc ]
  %fnciphcnt.0 = phi i32 [ 0, %if.end11 ], [ %fnciphcnt.1, %for.inc ]
  %fnctxcnt.0 = phi i32 [ 0, %if.end11 ], [ %fnctxcnt.1, %for.inc ]
  %function_id = getelementptr inbounds %struct.ossl_dispatch_st, %struct.ossl_dispatch_st* %fns.0, i64 0, i32 0
  %4 = load i32, i32* %function_id, align 8, !tbaa !84
  switch i32 %4, label %for.inc [
    i32 0, label %for.end
    i32 1, label %sw.bb
    i32 2, label %sw.bb19
    i32 3, label %sw.bb26
    i32 4, label %sw.bb33
    i32 5, label %sw.bb40
    i32 6, label %sw.bb47
    i32 7, label %sw.bb53
    i32 8, label %sw.bb60
    i32 9, label %sw.bb66
    i32 10, label %sw.bb72
    i32 11, label %sw.bb78
    i32 12, label %sw.bb84
    i32 13, label %sw.bb90
    i32 14, label %sw.bb96
  ]

sw.bb:                                            ; preds = %for.cond
  %5 = load i8* (i8*)*, i8* (i8*)** %newctx, align 8, !tbaa !25
  %cmp14.not = icmp eq i8* (i8*)* %5, null
  br i1 %cmp14.not, label %if.end16, label %for.inc

if.end16:                                         ; preds = %sw.bb
  %call17 = tail call fastcc i8* (i8*)* @OSSL_FUNC_cipher_newctx(%struct.ossl_dispatch_st* noundef nonnull %fns.0) #12
  store i8* (i8*)* %call17, i8* (i8*)** %newctx, align 8, !tbaa !25
  %inc = add nsw i32 %fnctxcnt.0, 1
  br label %for.inc

sw.bb19:                                          ; preds = %for.cond
  %6 = load i32 (i8*, i8*, i64, i8*, i64, %struct.ossl_param_st*)*, i32 (i8*, i8*, i64, i8*, i64, %struct.ossl_param_st*)** %einit, align 8, !tbaa !26
  %cmp20.not = icmp eq i32 (i8*, i8*, i64, i8*, i64, %struct.ossl_param_st*)* %6, null
  br i1 %cmp20.not, label %if.end22, label %for.inc

if.end22:                                         ; preds = %sw.bb19
  %call23 = tail call fastcc i32 (i8*, i8*, i64, i8*, i64, %struct.ossl_param_st*)* @OSSL_FUNC_cipher_encrypt_init(%struct.ossl_dispatch_st* noundef nonnull %fns.0) #12
  store i32 (i8*, i8*, i64, i8*, i64, %struct.ossl_param_st*)* %call23, i32 (i8*, i8*, i64, i8*, i64, %struct.ossl_param_st*)** %einit, align 8, !tbaa !26
  %inc25 = add nsw i32 %fnciphcnt.0, 1
  br label %for.inc

sw.bb26:                                          ; preds = %for.cond
  %7 = load i32 (i8*, i8*, i64, i8*, i64, %struct.ossl_param_st*)*, i32 (i8*, i8*, i64, i8*, i64, %struct.ossl_param_st*)** %dinit, align 8, !tbaa !27
  %cmp27.not = icmp eq i32 (i8*, i8*, i64, i8*, i64, %struct.ossl_param_st*)* %7, null
  br i1 %cmp27.not, label %if.end29, label %for.inc

if.end29:                                         ; preds = %sw.bb26
  %call30 = tail call fastcc i32 (i8*, i8*, i64, i8*, i64, %struct.ossl_param_st*)* @OSSL_FUNC_cipher_decrypt_init(%struct.ossl_dispatch_st* noundef nonnull %fns.0) #12
  store i32 (i8*, i8*, i64, i8*, i64, %struct.ossl_param_st*)* %call30, i32 (i8*, i8*, i64, i8*, i64, %struct.ossl_param_st*)** %dinit, align 8, !tbaa !27
  %inc32 = add nsw i32 %fnciphcnt.0, 1
  br label %for.inc

sw.bb33:                                          ; preds = %for.cond
  %8 = load i32 (i8*, i8*, i64*, i64, i8*, i64)*, i32 (i8*, i8*, i64*, i64, i8*, i64)** %cupdate, align 8, !tbaa !37
  %cmp34.not = icmp eq i32 (i8*, i8*, i64*, i64, i8*, i64)* %8, null
  br i1 %cmp34.not, label %if.end36, label %for.inc

if.end36:                                         ; preds = %sw.bb33
  %call37 = tail call fastcc i32 (i8*, i8*, i64*, i64, i8*, i64)* @OSSL_FUNC_cipher_update(%struct.ossl_dispatch_st* noundef nonnull %fns.0) #12
  store i32 (i8*, i8*, i64*, i64, i8*, i64)* %call37, i32 (i8*, i8*, i64*, i64, i8*, i64)** %cupdate, align 8, !tbaa !37
  %inc39 = add nsw i32 %fnciphcnt.0, 1
  br label %for.inc

sw.bb40:                                          ; preds = %for.cond
  %9 = load i32 (i8*, i8*, i64*, i64)*, i32 (i8*, i8*, i64*, i64)** %cfinal, align 8, !tbaa !40
  %cmp41.not = icmp eq i32 (i8*, i8*, i64*, i64)* %9, null
  br i1 %cmp41.not, label %if.end43, label %for.inc

if.end43:                                         ; preds = %sw.bb40
  %call44 = tail call fastcc i32 (i8*, i8*, i64*, i64)* @OSSL_FUNC_cipher_final(%struct.ossl_dispatch_st* noundef nonnull %fns.0) #12
  store i32 (i8*, i8*, i64*, i64)* %call44, i32 (i8*, i8*, i64*, i64)** %cfinal, align 8, !tbaa !40
  %inc46 = add nsw i32 %fnciphcnt.0, 1
  br label %for.inc

sw.bb47:                                          ; preds = %for.cond
  %10 = load i32 (i8*, i8*, i64*, i64, i8*, i64)*, i32 (i8*, i8*, i64*, i64, i8*, i64)** %ccipher, align 8, !tbaa !86
  %cmp48.not = icmp eq i32 (i8*, i8*, i64*, i64, i8*, i64)* %10, null
  br i1 %cmp48.not, label %if.end50, label %for.inc

if.end50:                                         ; preds = %sw.bb47
  %call51 = tail call fastcc i32 (i8*, i8*, i64*, i64, i8*, i64)* @OSSL_FUNC_cipher_cipher(%struct.ossl_dispatch_st* noundef nonnull %fns.0) #12
  store i32 (i8*, i8*, i64*, i64, i8*, i64)* %call51, i32 (i8*, i8*, i64*, i64, i8*, i64)** %ccipher, align 8, !tbaa !86
  br label %for.inc

sw.bb53:                                          ; preds = %for.cond
  %11 = load void (i8*)*, void (i8*)** %freectx, align 8, !tbaa !14
  %cmp54.not = icmp eq void (i8*)* %11, null
  br i1 %cmp54.not, label %if.end56, label %for.inc

if.end56:                                         ; preds = %sw.bb53
  %call57 = tail call fastcc void (i8*)* @OSSL_FUNC_cipher_freectx(%struct.ossl_dispatch_st* noundef nonnull %fns.0) #12
  store void (i8*)* %call57, void (i8*)** %freectx, align 8, !tbaa !14
  %inc59 = add nsw i32 %fnctxcnt.0, 1
  br label %for.inc

sw.bb60:                                          ; preds = %for.cond
  %12 = load i8* (i8*)*, i8* (i8*)** %dupctx, align 8, !tbaa !74
  %cmp61.not = icmp eq i8* (i8*)* %12, null
  br i1 %cmp61.not, label %if.end63, label %for.inc

if.end63:                                         ; preds = %sw.bb60
  %call64 = tail call fastcc i8* (i8*)* @OSSL_FUNC_cipher_dupctx(%struct.ossl_dispatch_st* noundef nonnull %fns.0) #12
  store i8* (i8*)* %call64, i8* (i8*)** %dupctx, align 8, !tbaa !74
  br label %for.inc

sw.bb66:                                          ; preds = %for.cond
  %13 = load i32 (%struct.ossl_param_st*)*, i32 (%struct.ossl_param_st*)** %get_params, align 8, !tbaa !69
  %cmp67.not = icmp eq i32 (%struct.ossl_param_st*)* %13, null
  br i1 %cmp67.not, label %if.end69, label %for.inc

if.end69:                                         ; preds = %sw.bb66
  %call70 = tail call fastcc i32 (%struct.ossl_param_st*)* @OSSL_FUNC_cipher_get_params(%struct.ossl_dispatch_st* noundef nonnull %fns.0) #12
  store i32 (%struct.ossl_param_st*)* %call70, i32 (%struct.ossl_param_st*)** %get_params, align 8, !tbaa !69
  br label %for.inc

sw.bb72:                                          ; preds = %for.cond
  %14 = load i32 (i8*, %struct.ossl_param_st*)*, i32 (i8*, %struct.ossl_param_st*)** %get_ctx_params, align 8, !tbaa !71
  %cmp73.not = icmp eq i32 (i8*, %struct.ossl_param_st*)* %14, null
  br i1 %cmp73.not, label %if.end75, label %for.inc

if.end75:                                         ; preds = %sw.bb72
  %call76 = tail call fastcc i32 (i8*, %struct.ossl_param_st*)* @OSSL_FUNC_cipher_get_ctx_params(%struct.ossl_dispatch_st* noundef nonnull %fns.0) #12
  store i32 (i8*, %struct.ossl_param_st*)* %call76, i32 (i8*, %struct.ossl_param_st*)** %get_ctx_params, align 8, !tbaa !71
  br label %for.inc

sw.bb78:                                          ; preds = %for.cond
  %15 = load i32 (i8*, %struct.ossl_param_st*)*, i32 (i8*, %struct.ossl_param_st*)** %set_ctx_params, align 8, !tbaa !70
  %cmp79.not = icmp eq i32 (i8*, %struct.ossl_param_st*)* %15, null
  br i1 %cmp79.not, label %if.end81, label %for.inc

if.end81:                                         ; preds = %sw.bb78
  %call82 = tail call fastcc i32 (i8*, %struct.ossl_param_st*)* @OSSL_FUNC_cipher_set_ctx_params(%struct.ossl_dispatch_st* noundef nonnull %fns.0) #12
  store i32 (i8*, %struct.ossl_param_st*)* %call82, i32 (i8*, %struct.ossl_param_st*)** %set_ctx_params, align 8, !tbaa !70
  br label %for.inc

sw.bb84:                                          ; preds = %for.cond
  %16 = load %struct.ossl_param_st* (i8*)*, %struct.ossl_param_st* (i8*)** %gettable_params, align 8, !tbaa !72
  %cmp85.not = icmp eq %struct.ossl_param_st* (i8*)* %16, null
  br i1 %cmp85.not, label %if.end87, label %for.inc

if.end87:                                         ; preds = %sw.bb84
  %call88 = tail call fastcc %struct.ossl_param_st* (i8*)* @OSSL_FUNC_cipher_gettable_params(%struct.ossl_dispatch_st* noundef nonnull %fns.0) #12
  store %struct.ossl_param_st* (i8*)* %call88, %struct.ossl_param_st* (i8*)** %gettable_params, align 8, !tbaa !72
  br label %for.inc

sw.bb90:                                          ; preds = %for.cond
  %17 = load %struct.ossl_param_st* (i8*, i8*)*, %struct.ossl_param_st* (i8*, i8*)** %gettable_ctx_params, align 8, !tbaa !73
  %cmp91.not = icmp eq %struct.ossl_param_st* (i8*, i8*)* %17, null
  br i1 %cmp91.not, label %if.end93, label %for.inc

if.end93:                                         ; preds = %sw.bb90
  %call94 = tail call fastcc %struct.ossl_param_st* (i8*, i8*)* @OSSL_FUNC_cipher_gettable_ctx_params(%struct.ossl_dispatch_st* noundef nonnull %fns.0) #12
  store %struct.ossl_param_st* (i8*, i8*)* %call94, %struct.ossl_param_st* (i8*, i8*)** %gettable_ctx_params, align 8, !tbaa !73
  br label %for.inc

sw.bb96:                                          ; preds = %for.cond
  %18 = load %struct.ossl_param_st* (i8*, i8*)*, %struct.ossl_param_st* (i8*, i8*)** %settable_ctx_params, align 8, !tbaa !61
  %cmp97.not = icmp eq %struct.ossl_param_st* (i8*, i8*)* %18, null
  br i1 %cmp97.not, label %if.end99, label %for.inc

if.end99:                                         ; preds = %sw.bb96
  %call100 = tail call fastcc %struct.ossl_param_st* (i8*, i8*)* @OSSL_FUNC_cipher_settable_ctx_params(%struct.ossl_dispatch_st* noundef nonnull %fns.0) #12
  store %struct.ossl_param_st* (i8*, i8*)* %call100, %struct.ossl_param_st* (i8*, i8*)** %settable_ctx_params, align 8, !tbaa !61
  br label %for.inc

for.inc:                                          ; preds = %for.cond, %if.end16, %if.end22, %if.end29, %if.end36, %if.end43, %if.end50, %if.end56, %if.end63, %if.end69, %if.end75, %if.end81, %if.end87, %if.end93, %if.end99, %sw.bb, %sw.bb19, %sw.bb26, %sw.bb33, %sw.bb40, %sw.bb47, %sw.bb53, %sw.bb60, %sw.bb66, %sw.bb72, %sw.bb78, %sw.bb84, %sw.bb90, %sw.bb96
  %fnciphcnt.1 = phi i32 [ %fnciphcnt.0, %sw.bb96 ], [ %fnciphcnt.0, %if.end99 ], [ %fnciphcnt.0, %sw.bb90 ], [ %fnciphcnt.0, %if.end93 ], [ %fnciphcnt.0, %sw.bb84 ], [ %fnciphcnt.0, %if.end87 ], [ %fnciphcnt.0, %sw.bb78 ], [ %fnciphcnt.0, %if.end81 ], [ %fnciphcnt.0, %sw.bb72 ], [ %fnciphcnt.0, %if.end75 ], [ %fnciphcnt.0, %sw.bb66 ], [ %fnciphcnt.0, %if.end69 ], [ %fnciphcnt.0, %sw.bb60 ], [ %fnciphcnt.0, %if.end63 ], [ %fnciphcnt.0, %sw.bb53 ], [ %fnciphcnt.0, %if.end56 ], [ %fnciphcnt.0, %sw.bb47 ], [ %fnciphcnt.0, %if.end50 ], [ %fnciphcnt.0, %sw.bb40 ], [ %inc46, %if.end43 ], [ %fnciphcnt.0, %sw.bb33 ], [ %inc39, %if.end36 ], [ %fnciphcnt.0, %sw.bb26 ], [ %inc32, %if.end29 ], [ %fnciphcnt.0, %sw.bb19 ], [ %inc25, %if.end22 ], [ %fnciphcnt.0, %sw.bb ], [ %fnciphcnt.0, %if.end16 ], [ %fnciphcnt.0, %for.cond ]
  %fnctxcnt.1 = phi i32 [ %fnctxcnt.0, %sw.bb96 ], [ %fnctxcnt.0, %if.end99 ], [ %fnctxcnt.0, %sw.bb90 ], [ %fnctxcnt.0, %if.end93 ], [ %fnctxcnt.0, %sw.bb84 ], [ %fnctxcnt.0, %if.end87 ], [ %fnctxcnt.0, %sw.bb78 ], [ %fnctxcnt.0, %if.end81 ], [ %fnctxcnt.0, %sw.bb72 ], [ %fnctxcnt.0, %if.end75 ], [ %fnctxcnt.0, %sw.bb66 ], [ %fnctxcnt.0, %if.end69 ], [ %fnctxcnt.0, %sw.bb60 ], [ %fnctxcnt.0, %if.end63 ], [ %fnctxcnt.0, %sw.bb53 ], [ %inc59, %if.end56 ], [ %fnctxcnt.0, %sw.bb47 ], [ %fnctxcnt.0, %if.end50 ], [ %fnctxcnt.0, %sw.bb40 ], [ %fnctxcnt.0, %if.end43 ], [ %fnctxcnt.0, %sw.bb33 ], [ %fnctxcnt.0, %if.end36 ], [ %fnctxcnt.0, %sw.bb26 ], [ %fnctxcnt.0, %if.end29 ], [ %fnctxcnt.0, %sw.bb19 ], [ %fnctxcnt.0, %if.end22 ], [ %fnctxcnt.0, %sw.bb ], [ %inc, %if.end16 ], [ %fnctxcnt.0, %for.cond ]
  %incdec.ptr = getelementptr inbounds %struct.ossl_dispatch_st, %struct.ossl_dispatch_st* %fns.0, i64 1
  br label %for.cond, !llvm.loop !87

for.end:                                          ; preds = %for.cond
  switch i32 %fnciphcnt.0, label %if.then113 [
    i32 0, label %land.lhs.true108
    i32 3, label %lor.lhs.false111
    i32 4, label %lor.lhs.false111
  ]

land.lhs.true108:                                 ; preds = %for.end
  %19 = load i32 (i8*, i8*, i64*, i64, i8*, i64)*, i32 (i8*, i8*, i64*, i64, i8*, i64)** %ccipher, align 8, !tbaa !86
  %cmp110 = icmp eq i32 (i8*, i8*, i64*, i64, i8*, i64)* %19, null
  %cmp112 = icmp ne i32 %fnctxcnt.0, 2
  %or.cond128 = select i1 %cmp110, i1 true, i1 %cmp112
  br i1 %or.cond128, label %if.then113, label %if.end114

lor.lhs.false111:                                 ; preds = %for.end, %for.end
  %cmp112.old.not = icmp eq i32 %fnctxcnt.0, 2
  br i1 %cmp112.old.not, label %if.end114, label %if.then113

if.then113:                                       ; preds = %for.end, %lor.lhs.false111, %land.lhs.true108
  tail call void @EVP_CIPHER_free(%struct.evp_cipher_st* noundef %call) #12
  tail call void @ERR_new() #11
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 1583, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.evp_cipher_from_algorithm, i64 0, i64 0)) #11
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 6, i32 noundef 193, i8* noundef null) #11
  br label %cleanup

if.end114:                                        ; preds = %land.lhs.true108, %lor.lhs.false111
  %prov115 = getelementptr inbounds %struct.evp_cipher_st, %struct.evp_cipher_st* %call, i64 0, i32 17
  store %struct.ossl_provider_st* %prov, %struct.ossl_provider_st** %prov115, align 8, !tbaa !11
  %cmp116.not = icmp eq %struct.ossl_provider_st* %prov, null
  br i1 %cmp116.not, label %if.end119, label %if.then117

if.then117:                                       ; preds = %if.end114
  %call118 = tail call i32 @ossl_provider_up_ref(%struct.ossl_provider_st* noundef nonnull %prov) #11
  br label %if.end119

if.end119:                                        ; preds = %if.then117, %if.end114
  %call120 = tail call i32 @evp_cipher_cache_constants(%struct.evp_cipher_st* noundef nonnull %call) #11
  %tobool121.not = icmp eq i32 %call120, 0
  br i1 %tobool121.not, label %if.then122, label %if.end123

if.then122:                                       ; preds = %if.end119
  tail call void @EVP_CIPHER_free(%struct.evp_cipher_st* noundef nonnull %call) #12
  tail call void @ERR_new() #11
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 1592, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.evp_cipher_from_algorithm, i64 0, i64 0)) #11
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 6, i32 noundef 225, i8* noundef null) #11
  br label %if.end123

if.end123:                                        ; preds = %if.then122, %if.end119
  %cipher.0 = phi %struct.evp_cipher_st* [ %call, %if.end119 ], [ null, %if.then122 ]
  %20 = bitcast %struct.evp_cipher_st* %cipher.0 to i8*
  br label %cleanup

cleanup:                                          ; preds = %if.end123, %if.then113, %if.then10, %if.then5, %if.then
  %retval.0 = phi i8* [ null, %if.then ], [ null, %if.then5 ], [ null, %if.then10 ], [ null, %if.then113 ], [ %20, %if.end123 ]
  ret i8* %retval.0
}

; Function Attrs: mustprogress nofree noinline nounwind uwtable willreturn
define internal i32 @evp_cipher_up_ref(i8* nocapture noundef %cipher) #8 {
entry:
  %0 = bitcast i8* %cipher to %struct.evp_cipher_st*
  %call = tail call i32 @EVP_CIPHER_up_ref(%struct.evp_cipher_st* noundef %0) #12
  ret i32 1
}

; Function Attrs: noinline nounwind uwtable
define internal void @evp_cipher_free(i8* noundef %cipher) #0 {
entry:
  %0 = bitcast i8* %cipher to %struct.evp_cipher_st*
  tail call void @EVP_CIPHER_free(%struct.evp_cipher_st* noundef %0) #12
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind uwtable willreturn
define internal fastcc void @CRYPTO_UP_REF(i32* nocapture noundef %val, i32* nocapture noundef writeonly %ret) unnamed_addr #9 {
entry:
  %0 = atomicrmw add i32* %val, i32 1 monotonic, align 4
  %add = add nsw i32 %0, 1
  store i32 %add, i32* %ret, align 4, !tbaa !21
  ret void
}

; Function Attrs: noinline nounwind uwtable
define void @evp_cipher_free_int(%struct.evp_cipher_st* noundef %cipher) local_unnamed_addr #0 {
entry:
  %type_name = getelementptr inbounds %struct.evp_cipher_st, %struct.evp_cipher_st* %cipher, i64 0, i32 15
  %0 = load i8*, i8** %type_name, align 8, !tbaa !81
  tail call void @CRYPTO_free(i8* noundef %0, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 1631) #11
  %prov = getelementptr inbounds %struct.evp_cipher_st, %struct.evp_cipher_st* %cipher, i64 0, i32 17
  %1 = load %struct.ossl_provider_st*, %struct.ossl_provider_st** %prov, align 8, !tbaa !11
  tail call void @ossl_provider_free(%struct.ossl_provider_st* noundef %1) #11
  %lock = getelementptr inbounds %struct.evp_cipher_st, %struct.evp_cipher_st* %cipher, i64 0, i32 19
  %2 = load i8*, i8** %lock, align 8, !tbaa !76
  tail call void @CRYPTO_THREAD_lock_free(i8* noundef %2) #11
  %3 = bitcast %struct.evp_cipher_st* %cipher to i8*
  tail call void @CRYPTO_free(i8* noundef %3, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 1634) #11
  ret void
}

declare void @ossl_provider_free(%struct.ossl_provider_st* noundef) local_unnamed_addr #2

declare void @CRYPTO_THREAD_lock_free(i8* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nounwind uwtable willreturn
define internal fastcc void @CRYPTO_DOWN_REF(i32* nocapture noundef %val, i32* nocapture noundef writeonly %ret) unnamed_addr #9 {
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

; Function Attrs: noinline nounwind uwtable
define void @EVP_CIPHER_do_all_provided(%struct.ossl_lib_ctx_st* noundef %libctx, void (%struct.evp_cipher_st*, i8*)* noundef %fn, i8* noundef %arg) local_unnamed_addr #0 {
entry:
  %0 = bitcast void (%struct.evp_cipher_st*, i8*)* %fn to void (i8*, i8*)*
  tail call void @evp_generic_do_all(%struct.ossl_lib_ctx_st* noundef %libctx, i32 noundef 2, void (i8*, i8*)* noundef %0, i8* noundef %arg, i8* (i32, %struct.ossl_algorithm_st*, %struct.ossl_provider_st*)* noundef nonnull @evp_cipher_from_algorithm, i32 (i8*)* noundef nonnull @evp_cipher_up_ref, void (i8*)* noundef nonnull @evp_cipher_free) #11
  ret void
}

declare void @evp_generic_do_all(%struct.ossl_lib_ctx_st* noundef, i32 noundef, void (i8*, i8*)* noundef, i8* noundef, i8* (i32, %struct.ossl_algorithm_st*, %struct.ossl_provider_st*)* noundef, i32 (i8*)* noundef, void (i8*)* noundef) local_unnamed_addr #2

declare %struct.engine_st* @ENGINE_get_cipher_engine(i32 noundef) local_unnamed_addr #2

declare void @CRYPTO_clear_free(i8* noundef, i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare i8* @OBJ_nid2sn(i32 noundef) local_unnamed_addr #2

declare i32 @EVP_CIPHER_CTX_get_iv_length(%struct.evp_cipher_ctx_st* noundef) local_unnamed_addr #2

declare %struct.evp_cipher_st* @ENGINE_get_cipher(%struct.engine_st* noundef, i32 noundef) local_unnamed_addr #2

declare i32 @EVP_CIPHER_get_mode(%struct.evp_cipher_st* noundef) local_unnamed_addr #2

declare %struct.evp_cipher_st* @EVP_CIPHER_CTX_get0_cipher(%struct.evp_cipher_ctx_st* noundef) local_unnamed_addr #2

declare i64 @EVP_CIPHER_get_flags(%struct.evp_cipher_st* noundef) local_unnamed_addr #2

declare %struct.ossl_lib_ctx_st* @ossl_provider_libctx(%struct.ossl_provider_st* noundef) local_unnamed_addr #2

declare i32 @evp_names_do_all(%struct.ossl_provider_st* noundef, i32 noundef, void (i8*, i8*)* noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal void @set_legacy_nid(i8* noundef %name, i8* nocapture noundef %vlegacy_nid) #0 {
entry:
  %0 = bitcast i8* %vlegacy_nid to i32*
  %call = tail call i8* @OBJ_NAME_get(i8* noundef %name, i32 noundef 2) #11
  %1 = load i32, i32* %0, align 4, !tbaa !21
  %cmp = icmp eq i32 %1, -1
  %cmp1 = icmp eq i8* %call, null
  %or.cond20 = select i1 %cmp, i1 true, i1 %cmp1
  br i1 %or.cond20, label %cleanup, label %if.end3

if.end3:                                          ; preds = %entry
  %2 = bitcast i8* %call to %struct.evp_cipher_st*
  %call4 = tail call i32 @EVP_CIPHER_get_nid(%struct.evp_cipher_st* noundef nonnull %2) #11
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

declare i8* @ossl_algorithm_get1_first_name(%struct.ossl_algorithm_st* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal fastcc i8* (i8*)* @OSSL_FUNC_cipher_newctx(%struct.ossl_dispatch_st* nocapture noundef readonly %opf) unnamed_addr #10 {
entry:
  %function = getelementptr inbounds %struct.ossl_dispatch_st, %struct.ossl_dispatch_st* %opf, i64 0, i32 1
  %0 = bitcast void ()** %function to i8* (i8*)**
  %1 = load i8* (i8*)*, i8* (i8*)** %0, align 8, !tbaa !88
  ret i8* (i8*)* %1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal fastcc i32 (i8*, i8*, i64, i8*, i64, %struct.ossl_param_st*)* @OSSL_FUNC_cipher_encrypt_init(%struct.ossl_dispatch_st* nocapture noundef readonly %opf) unnamed_addr #10 {
entry:
  %function = getelementptr inbounds %struct.ossl_dispatch_st, %struct.ossl_dispatch_st* %opf, i64 0, i32 1
  %0 = bitcast void ()** %function to i32 (i8*, i8*, i64, i8*, i64, %struct.ossl_param_st*)**
  %1 = load i32 (i8*, i8*, i64, i8*, i64, %struct.ossl_param_st*)*, i32 (i8*, i8*, i64, i8*, i64, %struct.ossl_param_st*)** %0, align 8, !tbaa !88
  ret i32 (i8*, i8*, i64, i8*, i64, %struct.ossl_param_st*)* %1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal fastcc i32 (i8*, i8*, i64, i8*, i64, %struct.ossl_param_st*)* @OSSL_FUNC_cipher_decrypt_init(%struct.ossl_dispatch_st* nocapture noundef readonly %opf) unnamed_addr #10 {
entry:
  %function = getelementptr inbounds %struct.ossl_dispatch_st, %struct.ossl_dispatch_st* %opf, i64 0, i32 1
  %0 = bitcast void ()** %function to i32 (i8*, i8*, i64, i8*, i64, %struct.ossl_param_st*)**
  %1 = load i32 (i8*, i8*, i64, i8*, i64, %struct.ossl_param_st*)*, i32 (i8*, i8*, i64, i8*, i64, %struct.ossl_param_st*)** %0, align 8, !tbaa !88
  ret i32 (i8*, i8*, i64, i8*, i64, %struct.ossl_param_st*)* %1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal fastcc i32 (i8*, i8*, i64*, i64, i8*, i64)* @OSSL_FUNC_cipher_update(%struct.ossl_dispatch_st* nocapture noundef readonly %opf) unnamed_addr #10 {
entry:
  %function = getelementptr inbounds %struct.ossl_dispatch_st, %struct.ossl_dispatch_st* %opf, i64 0, i32 1
  %0 = bitcast void ()** %function to i32 (i8*, i8*, i64*, i64, i8*, i64)**
  %1 = load i32 (i8*, i8*, i64*, i64, i8*, i64)*, i32 (i8*, i8*, i64*, i64, i8*, i64)** %0, align 8, !tbaa !88
  ret i32 (i8*, i8*, i64*, i64, i8*, i64)* %1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal fastcc i32 (i8*, i8*, i64*, i64)* @OSSL_FUNC_cipher_final(%struct.ossl_dispatch_st* nocapture noundef readonly %opf) unnamed_addr #10 {
entry:
  %function = getelementptr inbounds %struct.ossl_dispatch_st, %struct.ossl_dispatch_st* %opf, i64 0, i32 1
  %0 = bitcast void ()** %function to i32 (i8*, i8*, i64*, i64)**
  %1 = load i32 (i8*, i8*, i64*, i64)*, i32 (i8*, i8*, i64*, i64)** %0, align 8, !tbaa !88
  ret i32 (i8*, i8*, i64*, i64)* %1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal fastcc i32 (i8*, i8*, i64*, i64, i8*, i64)* @OSSL_FUNC_cipher_cipher(%struct.ossl_dispatch_st* nocapture noundef readonly %opf) unnamed_addr #10 {
entry:
  %function = getelementptr inbounds %struct.ossl_dispatch_st, %struct.ossl_dispatch_st* %opf, i64 0, i32 1
  %0 = bitcast void ()** %function to i32 (i8*, i8*, i64*, i64, i8*, i64)**
  %1 = load i32 (i8*, i8*, i64*, i64, i8*, i64)*, i32 (i8*, i8*, i64*, i64, i8*, i64)** %0, align 8, !tbaa !88
  ret i32 (i8*, i8*, i64*, i64, i8*, i64)* %1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal fastcc void (i8*)* @OSSL_FUNC_cipher_freectx(%struct.ossl_dispatch_st* nocapture noundef readonly %opf) unnamed_addr #10 {
entry:
  %function = getelementptr inbounds %struct.ossl_dispatch_st, %struct.ossl_dispatch_st* %opf, i64 0, i32 1
  %0 = bitcast void ()** %function to void (i8*)**
  %1 = load void (i8*)*, void (i8*)** %0, align 8, !tbaa !88
  ret void (i8*)* %1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal fastcc i8* (i8*)* @OSSL_FUNC_cipher_dupctx(%struct.ossl_dispatch_st* nocapture noundef readonly %opf) unnamed_addr #10 {
entry:
  %function = getelementptr inbounds %struct.ossl_dispatch_st, %struct.ossl_dispatch_st* %opf, i64 0, i32 1
  %0 = bitcast void ()** %function to i8* (i8*)**
  %1 = load i8* (i8*)*, i8* (i8*)** %0, align 8, !tbaa !88
  ret i8* (i8*)* %1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal fastcc i32 (%struct.ossl_param_st*)* @OSSL_FUNC_cipher_get_params(%struct.ossl_dispatch_st* nocapture noundef readonly %opf) unnamed_addr #10 {
entry:
  %function = getelementptr inbounds %struct.ossl_dispatch_st, %struct.ossl_dispatch_st* %opf, i64 0, i32 1
  %0 = bitcast void ()** %function to i32 (%struct.ossl_param_st*)**
  %1 = load i32 (%struct.ossl_param_st*)*, i32 (%struct.ossl_param_st*)** %0, align 8, !tbaa !88
  ret i32 (%struct.ossl_param_st*)* %1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal fastcc i32 (i8*, %struct.ossl_param_st*)* @OSSL_FUNC_cipher_get_ctx_params(%struct.ossl_dispatch_st* nocapture noundef readonly %opf) unnamed_addr #10 {
entry:
  %function = getelementptr inbounds %struct.ossl_dispatch_st, %struct.ossl_dispatch_st* %opf, i64 0, i32 1
  %0 = bitcast void ()** %function to i32 (i8*, %struct.ossl_param_st*)**
  %1 = load i32 (i8*, %struct.ossl_param_st*)*, i32 (i8*, %struct.ossl_param_st*)** %0, align 8, !tbaa !88
  ret i32 (i8*, %struct.ossl_param_st*)* %1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal fastcc i32 (i8*, %struct.ossl_param_st*)* @OSSL_FUNC_cipher_set_ctx_params(%struct.ossl_dispatch_st* nocapture noundef readonly %opf) unnamed_addr #10 {
entry:
  %function = getelementptr inbounds %struct.ossl_dispatch_st, %struct.ossl_dispatch_st* %opf, i64 0, i32 1
  %0 = bitcast void ()** %function to i32 (i8*, %struct.ossl_param_st*)**
  %1 = load i32 (i8*, %struct.ossl_param_st*)*, i32 (i8*, %struct.ossl_param_st*)** %0, align 8, !tbaa !88
  ret i32 (i8*, %struct.ossl_param_st*)* %1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal fastcc %struct.ossl_param_st* (i8*)* @OSSL_FUNC_cipher_gettable_params(%struct.ossl_dispatch_st* nocapture noundef readonly %opf) unnamed_addr #10 {
entry:
  %function = getelementptr inbounds %struct.ossl_dispatch_st, %struct.ossl_dispatch_st* %opf, i64 0, i32 1
  %0 = bitcast void ()** %function to %struct.ossl_param_st* (i8*)**
  %1 = load %struct.ossl_param_st* (i8*)*, %struct.ossl_param_st* (i8*)** %0, align 8, !tbaa !88
  ret %struct.ossl_param_st* (i8*)* %1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal fastcc %struct.ossl_param_st* (i8*, i8*)* @OSSL_FUNC_cipher_gettable_ctx_params(%struct.ossl_dispatch_st* nocapture noundef readonly %opf) unnamed_addr #10 {
entry:
  %function = getelementptr inbounds %struct.ossl_dispatch_st, %struct.ossl_dispatch_st* %opf, i64 0, i32 1
  %0 = bitcast void ()** %function to %struct.ossl_param_st* (i8*, i8*)**
  %1 = load %struct.ossl_param_st* (i8*, i8*)*, %struct.ossl_param_st* (i8*, i8*)** %0, align 8, !tbaa !88
  ret %struct.ossl_param_st* (i8*, i8*)* %1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal fastcc %struct.ossl_param_st* (i8*, i8*)* @OSSL_FUNC_cipher_settable_ctx_params(%struct.ossl_dispatch_st* nocapture noundef readonly %opf) unnamed_addr #10 {
entry:
  %function = getelementptr inbounds %struct.ossl_dispatch_st, %struct.ossl_dispatch_st* %opf, i64 0, i32 1
  %0 = bitcast void ()** %function to %struct.ossl_param_st* (i8*, i8*)**
  %1 = load %struct.ossl_param_st* (i8*, i8*)*, %struct.ossl_param_st* (i8*, i8*)** %0, align 8, !tbaa !88
  ret %struct.ossl_param_st* (i8*, i8*)* %1
}

declare i32 @ossl_provider_up_ref(%struct.ossl_provider_st* noundef) local_unnamed_addr #2

declare i32 @evp_cipher_cache_constants(%struct.evp_cipher_st* noundef) local_unnamed_addr #2

declare i8* @OBJ_NAME_get(i8* noundef, i32 noundef) local_unnamed_addr #2

declare i32 @EVP_CIPHER_get_nid(%struct.evp_cipher_st* noundef) local_unnamed_addr #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #5 = { noreturn "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #7 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #8 = { mustprogress nofree noinline nounwind uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree noinline norecurse nounwind uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nobuiltin nounwind "no-builtins" }
attributes #12 = { nobuiltin "no-builtins" }
attributes #13 = { nounwind }
attributes #14 = { nobuiltin noreturn nounwind "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{!"clang version 14.0.0"}
!4 = !{!5, !6, i64 0}
!5 = !{!"evp_cipher_ctx_st", !6, i64 0, !6, i64 8, !9, i64 16, !9, i64 20, !7, i64 24, !7, i64 40, !7, i64 56, !9, i64 88, !6, i64 96, !9, i64 104, !10, i64 112, !6, i64 120, !9, i64 128, !9, i64 132, !7, i64 136, !6, i64 168, !6, i64 176}
!6 = !{!"any pointer", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!"int", !7, i64 0}
!10 = !{!"long", !7, i64 0}
!11 = !{!12, !6, i64 120}
!12 = !{!"evp_cipher_st", !9, i64 0, !9, i64 4, !9, i64 8, !9, i64 12, !10, i64 16, !9, i64 24, !6, i64 32, !6, i64 40, !6, i64 48, !9, i64 56, !6, i64 64, !6, i64 72, !6, i64 80, !6, i64 88, !9, i64 96, !6, i64 104, !6, i64 112, !6, i64 120, !7, i64 128, !6, i64 136, !6, i64 144, !6, i64 152, !6, i64 160, !6, i64 168, !6, i64 176, !6, i64 184, !6, i64 192, !6, i64 200, !6, i64 208, !6, i64 216, !6, i64 224, !6, i64 232, !6, i64 240, !6, i64 248}
!13 = !{!5, !6, i64 168}
!14 = !{!12, !6, i64 192}
!15 = !{!5, !6, i64 176}
!16 = !{!12, !6, i64 48}
!17 = !{!5, !6, i64 120}
!18 = !{!12, !9, i64 56}
!19 = !{!5, !6, i64 8}
!20 = !{!12, !9, i64 24}
!21 = !{!9, !9, i64 0}
!22 = !{!5, !9, i64 16}
!23 = !{!12, !9, i64 0}
!24 = !{!5, !10, i64 112}
!25 = !{!12, !6, i64 144}
!26 = !{!12, !6, i64 152}
!27 = !{!12, !6, i64 160}
!28 = !{!12, !9, i64 8}
!29 = !{!5, !9, i64 104}
!30 = !{!12, !10, i64 16}
!31 = !{!12, !9, i64 4}
!32 = !{!5, !9, i64 88}
!33 = !{!12, !6, i64 32}
!34 = !{!5, !9, i64 20}
!35 = !{!5, !9, i64 128}
!36 = !{!5, !9, i64 132}
!37 = !{!12, !6, i64 168}
!38 = !{!10, !10, i64 0}
!39 = !{!12, !6, i64 40}
!40 = !{!12, !6, i64 176}
!41 = !{!7, !7, i64 0}
!42 = distinct !{!42, !43, !44}
!43 = !{!"llvm.loop.mustprogress"}
!44 = !{!"llvm.loop.isvectorized", i32 1}
!45 = distinct !{!45, !46}
!46 = !{!"llvm.loop.unroll.disable"}
!47 = distinct !{!47, !43, !44, !48}
!48 = !{!"llvm.loop.unroll.runtime.disable"}
!49 = distinct !{!49, !43, !48, !44}
!50 = distinct !{!50, !43}
!51 = !{!52}
!52 = distinct !{!52, !53}
!53 = distinct !{!53, !"LVerDomain"}
!54 = !{!55}
!55 = distinct !{!55, !53}
!56 = distinct !{!56, !43, !44}
!57 = distinct !{!57, !46}
!58 = distinct !{!58, !43, !44, !48}
!59 = distinct !{!59, !46}
!60 = distinct !{!60, !43, !44}
!61 = !{!12, !6, i64 248}
!62 = !{i64 0, i64 8, !63, i64 8, i64 4, !21, i64 16, i64 8, !63, i64 24, i64 8, !38, i64 32, i64 8, !38}
!63 = !{!6, !6, i64 0}
!64 = !{!65, !6, i64 8}
!65 = !{!"", !6, i64 0, !6, i64 8, !10, i64 16, !9, i64 24}
!66 = !{!65, !10, i64 16}
!67 = !{!65, !6, i64 0}
!68 = !{!12, !6, i64 80}
!69 = !{!12, !6, i64 208}
!70 = !{!12, !6, i64 224}
!71 = !{!12, !6, i64 216}
!72 = !{!12, !6, i64 232}
!73 = !{!12, !6, i64 240}
!74 = !{!12, !6, i64 200}
!75 = !{i64 0, i64 8, !63, i64 8, i64 8, !63, i64 16, i64 4, !21, i64 20, i64 4, !21, i64 24, i64 16, !41, i64 40, i64 16, !41, i64 56, i64 32, !41, i64 88, i64 4, !21, i64 96, i64 8, !63, i64 104, i64 4, !21, i64 112, i64 8, !38, i64 120, i64 8, !63, i64 128, i64 4, !21, i64 132, i64 4, !21, i64 136, i64 32, !41, i64 168, i64 8, !63, i64 176, i64 8, !63}
!76 = !{!12, !6, i64 136}
!77 = !{!12, !7, i64 128}
!78 = !{!79, !6, i64 16}
!79 = !{!"ossl_algorithm_st", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24}
!80 = !{!12, !9, i64 96}
!81 = !{!12, !6, i64 104}
!82 = !{!79, !6, i64 24}
!83 = !{!12, !6, i64 112}
!84 = !{!85, !9, i64 0}
!85 = !{!"ossl_dispatch_st", !9, i64 0, !6, i64 8}
!86 = !{!12, !6, i64 184}
!87 = distinct !{!87, !43}
!88 = !{!85, !6, i64 8}
