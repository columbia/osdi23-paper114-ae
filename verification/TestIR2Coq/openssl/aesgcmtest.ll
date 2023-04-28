; ModuleID = 'test/aesgcmtest.c'
source_filename = "test/aesgcmtest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evp_cipher_st = type opaque
%struct.evp_cipher_ctx_st = type opaque
%struct.engine_st = type opaque

@.str = private unnamed_addr constant [9 x i8] c"kat_test\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"badkeylen_test\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"test/aesgcmtest.c\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"gcm_ct\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"ct\00", align 1
@gcm_ct = internal constant [16 x i8] c"\F7&D\13\A8L\0E|\D56\86~\B9\F2\176", align 16
@.str.5 = private unnamed_addr constant [8 x i8] c"gcm_tag\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"tag\00", align 1
@gcm_tag = internal constant [16 x i8] c"g\BA\05\10&*\E4\87\D77\EEb\98\F7~\0C", align 16
@gcm_iv = internal constant [12 x i8] c"\99\AA>h\ED\81s\A0\EE\D0f\84", align 1
@.str.7 = private unnamed_addr constant [27 x i8] c"ctx = EVP_CIPHER_CTX_new()\00", align 1
@.str.8 = private unnamed_addr constant [65 x i8] c"EVP_EncryptInit_ex(ctx, EVP_aes_256_gcm(), NULL, NULL, NULL) > 0\00", align 1
@.str.9 = private unnamed_addr constant [81 x i8] c"EVP_EncryptInit_ex(ctx, NULL, NULL, gcm_key, iv_gen != NULL ? NULL : gcm_iv) > 0\00", align 1
@gcm_key = internal constant [32 x i8] c"\EE\BC\1FWH\7FQ\92\1C\04ef_\8A\E6\D1e\8B\B2m\E6\F8\A0i\A3R\02\93\A5r\07\8F", align 16
@.str.10 = private unnamed_addr constant [68 x i8] c"EVP_EncryptUpdate(ctx, NULL, &outlen, gcm_aad, sizeof(gcm_aad)) > 0\00", align 1
@gcm_aad = internal constant [16 x i8] c"M#\C3\CE\C34\B4\9B\DB7\0CC\7F\ECx\DE", align 16
@.str.11 = private unnamed_addr constant [63 x i8] c"EVP_EncryptUpdate(ctx, ct, ct_len, gcm_pt, sizeof(gcm_pt)) > 0\00", align 1
@gcm_pt = internal constant [16 x i8] c"\F5n\87\05[\C3-\0E\EB1\B2\EA\CC+\F2\A5", align 16
@.str.12 = private unnamed_addr constant [46 x i8] c"EVP_EncryptFinal_ex(ctx, outbuf, &outlen) > 0\00", align 1
@.str.13 = private unnamed_addr constant [35 x i8] c"EVP_CIPHER_CTX_get_tag_length(ctx)\00", align 1
@.str.14 = private unnamed_addr constant [3 x i8] c"16\00", align 1
@.str.15 = private unnamed_addr constant [61 x i8] c"EVP_CIPHER_CTX_ctrl(ctx, EVP_CTRL_AEAD_GET_TAG, 16, tag) > 0\00", align 1
@.str.16 = private unnamed_addr constant [66 x i8] c"iv_gen == NULL || EVP_CIPHER_CTX_get_original_iv(ctx, iv_gen, 12)\00", align 1
@.str.17 = private unnamed_addr constant [65 x i8] c"EVP_DecryptInit_ex(ctx, EVP_aes_256_gcm(), NULL, NULL, NULL) > 0\00", align 1
@.str.18 = private unnamed_addr constant [53 x i8] c"EVP_DecryptInit_ex(ctx, NULL, NULL, gcm_key, iv) > 0\00", align 1
@.str.19 = private unnamed_addr constant [68 x i8] c"EVP_DecryptUpdate(ctx, NULL, &outlen, gcm_aad, sizeof(gcm_aad)) > 0\00", align 1
@.str.20 = private unnamed_addr constant [51 x i8] c"EVP_DecryptUpdate(ctx, pt, &ptlen, ct, ct_len) > 0\00", align 1
@.str.21 = private unnamed_addr constant [74 x i8] c"EVP_CIPHER_CTX_ctrl(ctx, EVP_CTRL_AEAD_SET_TAG, tag_len, (void *)tag) > 0\00", align 1
@.str.22 = private unnamed_addr constant [46 x i8] c"EVP_DecryptFinal_ex(ctx, outbuf, &outlen) > 0\00", align 1
@.str.23 = private unnamed_addr constant [7 x i8] c"gcm_pt\00", align 1
@.str.24 = private unnamed_addr constant [3 x i8] c"pt\00", align 1
@.str.25 = private unnamed_addr constant [27 x i8] c"cipher = EVP_aes_192_gcm()\00", align 1
@.str.26 = private unnamed_addr constant [50 x i8] c"EVP_EncryptInit_ex(ctx, cipher, NULL, NULL, NULL)\00", align 1
@.str.27 = private unnamed_addr constant [38 x i8] c"EVP_CIPHER_CTX_set_key_length(ctx, 2)\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @setup_tests() local_unnamed_addr #0 {
entry:
  tail call void @add_test(i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 ()* noundef nonnull @kat_test) #3
  tail call void @add_test(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 ()* noundef nonnull @badkeylen_test) #3
  ret i32 1
}

declare dso_local void @add_test(i8* noundef, i32 ()* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @kat_test() #0 {
entry:
  %tag = alloca [32 x i8], align 16
  %ct = alloca [32 x i8], align 16
  %ctlen = alloca i32, align 4
  %taglen = alloca i32, align 4
  %0 = getelementptr inbounds [32 x i8], [32 x i8]* %tag, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %0) #4
  %1 = getelementptr inbounds [32 x i8], [32 x i8]* %ct, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %1) #4
  %2 = bitcast i32* %ctlen to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %2) #4
  store i32 0, i32* %ctlen, align 4, !tbaa !3
  %3 = bitcast i32* %taglen to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %3) #4
  store i32 0, i32* %taglen, align 4, !tbaa !3
  %call = call fastcc i32 @do_encrypt(i8* noundef nonnull %1, i32* noundef nonnull %ctlen, i8* noundef nonnull %0, i32* noundef nonnull %taglen) #5
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %4 = load i32, i32* %ctlen, align 4, !tbaa !3
  %conv = sext i32 %4 to i64
  %call3 = call i32 @test_mem_eq(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 noundef 100, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @gcm_ct, i64 0, i64 0), i64 noundef 16, i8* noundef nonnull %1, i64 noundef %conv) #3
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %land.end, label %land.lhs.true5

land.lhs.true5:                                   ; preds = %land.lhs.true
  %5 = load i32, i32* %taglen, align 4, !tbaa !3
  %conv7 = sext i32 %5 to i64
  %call8 = call i32 @test_mem_eq(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 noundef 101, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @gcm_tag, i64 0, i64 0), i64 noundef 16, i8* noundef nonnull %0, i64 noundef %conv7) #3
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %land.lhs.true5
  %6 = load i32, i32* %ctlen, align 4, !tbaa !3
  %call12 = call fastcc i32 @do_decrypt(i8* noundef nonnull %1, i32 noundef %6, i8* noundef nonnull %0, i32 noundef %5) #5
  %tobool13 = icmp ne i32 %call12, 0
  %phi.cast = zext i1 %tobool13 to i32
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true5, %land.lhs.true, %entry
  %7 = phi i32 [ 0, %land.lhs.true5 ], [ 0, %land.lhs.true ], [ 0, %entry ], [ %phi.cast, %land.rhs ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %3) #4
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2) #4
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %1) #4
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #4
  ret i32 %7
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @badkeylen_test() #0 {
entry:
  %call = tail call %struct.evp_cipher_st* @EVP_aes_192_gcm() #3
  %0 = bitcast %struct.evp_cipher_st* %call to i8*
  %call1 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 noundef 111, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.25, i64 0, i64 0), i8* noundef %0) #3
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %land.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %call2 = tail call %struct.evp_cipher_ctx_st* @EVP_CIPHER_CTX_new() #3
  %1 = bitcast %struct.evp_cipher_ctx_st* %call2 to i8*
  %call3 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 noundef 112, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.7, i64 0, i64 0), i8* noundef %1) #3
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %land.end, label %land.lhs.true5

land.lhs.true5:                                   ; preds = %land.lhs.true
  %call6 = tail call i32 @EVP_EncryptInit_ex(%struct.evp_cipher_ctx_st* noundef %call2, %struct.evp_cipher_st* noundef %call, %struct.engine_st* noundef null, i8* noundef null, i8* noundef null) #3
  %cmp = icmp ne i32 %call6, 0
  %conv = zext i1 %cmp to i32
  %call7 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 noundef 113, i8* noundef getelementptr inbounds ([50 x i8], [50 x i8]* @.str.26, i64 0, i64 0), i32 noundef %conv) #3
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %land.lhs.true5
  %call9 = tail call i32 @EVP_CIPHER_CTX_set_key_length(%struct.evp_cipher_ctx_st* noundef %call2, i32 noundef 2) #3
  %cmp10 = icmp ne i32 %call9, 0
  %conv11 = zext i1 %cmp10 to i32
  %call12 = tail call i32 @test_false(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 noundef 114, i8* noundef getelementptr inbounds ([38 x i8], [38 x i8]* @.str.27, i64 0, i64 0), i32 noundef %conv11) #3
  %tobool13 = icmp ne i32 %call12, 0
  %phi.cast = zext i1 %tobool13 to i32
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true5, %land.lhs.true, %entry
  %ctx.0 = phi %struct.evp_cipher_ctx_st* [ %call2, %land.rhs ], [ %call2, %land.lhs.true5 ], [ %call2, %land.lhs.true ], [ null, %entry ]
  %2 = phi i32 [ %phi.cast, %land.rhs ], [ 0, %land.lhs.true5 ], [ 0, %land.lhs.true ], [ 0, %entry ]
  tail call void @EVP_CIPHER_CTX_free(%struct.evp_cipher_ctx_st* noundef %ctx.0) #3
  ret i32 %2
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @do_encrypt(i8* noundef %ct, i32* noundef %ct_len, i8* noundef %tag, i32* nocapture noundef writeonly %tag_len) unnamed_addr #0 {
entry:
  %outlen = alloca i32, align 4
  %outbuf = alloca [64 x i8], align 16
  %0 = bitcast i32* %outlen to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #4
  %1 = getelementptr inbounds [64 x i8], [64 x i8]* %outbuf, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %1) #4
  store i32 16, i32* %tag_len, align 4, !tbaa !3
  %call = tail call %struct.evp_cipher_ctx_st* @EVP_CIPHER_CTX_new() #3
  %2 = bitcast %struct.evp_cipher_ctx_st* %call to i8*
  %call1 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 noundef 47, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.7, i64 0, i64 0), i8* noundef %2) #3
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %land.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %call2 = tail call %struct.evp_cipher_st* @EVP_aes_256_gcm() #3
  %call3 = tail call i32 @EVP_EncryptInit_ex(%struct.evp_cipher_ctx_st* noundef %call, %struct.evp_cipher_st* noundef %call2, %struct.engine_st* noundef null, i8* noundef null, i8* noundef null) #3
  %cmp = icmp sgt i32 %call3, 0
  %conv = zext i1 %cmp to i32
  %call6 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 noundef 49, i8* noundef getelementptr inbounds ([65 x i8], [65 x i8]* @.str.8, i64 0, i64 0), i32 noundef %conv) #3
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %land.end, label %land.lhs.true8

land.lhs.true8:                                   ; preds = %land.lhs.true
  %call11 = tail call i32 @EVP_EncryptInit_ex(%struct.evp_cipher_ctx_st* noundef %call, %struct.evp_cipher_st* noundef null, %struct.engine_st* noundef null, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @gcm_key, i64 0, i64 0), i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @gcm_iv, i64 0, i64 0)) #3
  %cmp12 = icmp sgt i32 %call11, 0
  %conv13 = zext i1 %cmp12 to i32
  %call16 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 noundef 51, i8* noundef getelementptr inbounds ([81 x i8], [81 x i8]* @.str.9, i64 0, i64 0), i32 noundef %conv13) #3
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %land.end, label %land.lhs.true18

land.lhs.true18:                                  ; preds = %land.lhs.true8
  %call19 = call i32 @EVP_EncryptUpdate(%struct.evp_cipher_ctx_st* noundef %call, i8* noundef null, i32* noundef nonnull %outlen, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @gcm_aad, i64 0, i64 0), i32 noundef 16) #3
  %cmp20 = icmp sgt i32 %call19, 0
  %conv21 = zext i1 %cmp20 to i32
  %call24 = call i32 @test_true(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 noundef 53, i8* noundef getelementptr inbounds ([68 x i8], [68 x i8]* @.str.10, i64 0, i64 0), i32 noundef %conv21) #3
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %land.end, label %land.lhs.true26

land.lhs.true26:                                  ; preds = %land.lhs.true18
  %call27 = call i32 @EVP_EncryptUpdate(%struct.evp_cipher_ctx_st* noundef %call, i8* noundef %ct, i32* noundef %ct_len, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @gcm_pt, i64 0, i64 0), i32 noundef 16) #3
  %cmp28 = icmp sgt i32 %call27, 0
  %conv29 = zext i1 %cmp28 to i32
  %call32 = call i32 @test_true(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 noundef 55, i8* noundef getelementptr inbounds ([63 x i8], [63 x i8]* @.str.11, i64 0, i64 0), i32 noundef %conv29) #3
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %land.end, label %land.lhs.true34

land.lhs.true34:                                  ; preds = %land.lhs.true26
  %call35 = call i32 @EVP_EncryptFinal_ex(%struct.evp_cipher_ctx_st* noundef %call, i8* noundef nonnull %1, i32* noundef nonnull %outlen) #3
  %cmp36 = icmp sgt i32 %call35, 0
  %conv37 = zext i1 %cmp36 to i32
  %call40 = call i32 @test_true(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 noundef 56, i8* noundef getelementptr inbounds ([46 x i8], [46 x i8]* @.str.12, i64 0, i64 0), i32 noundef %conv37) #3
  %tobool41.not = icmp eq i32 %call40, 0
  br i1 %tobool41.not, label %land.end, label %land.lhs.true42

land.lhs.true42:                                  ; preds = %land.lhs.true34
  %call43 = call i32 @EVP_CIPHER_CTX_get_tag_length(%struct.evp_cipher_ctx_st* noundef %call) #3
  %call44 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 noundef 57, i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.13, i64 0, i64 0), i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.14, i64 0, i64 0), i32 noundef %call43, i32 noundef 16) #3
  %tobool45.not = icmp eq i32 %call44, 0
  br i1 %tobool45.not, label %land.end, label %land.lhs.true46

land.lhs.true46:                                  ; preds = %land.lhs.true42
  %call47 = call i32 @EVP_CIPHER_CTX_ctrl(%struct.evp_cipher_ctx_st* noundef %call, i32 noundef 16, i32 noundef 16, i8* noundef %tag) #3
  %cmp48 = icmp sgt i32 %call47, 0
  %conv49 = zext i1 %cmp48 to i32
  %call52 = call i32 @test_true(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 noundef 59, i8* noundef getelementptr inbounds ([61 x i8], [61 x i8]* @.str.15, i64 0, i64 0), i32 noundef %conv49) #3
  %tobool53.not = icmp eq i32 %call52, 0
  br i1 %tobool53.not, label %land.end, label %lor.end

lor.end:                                          ; preds = %land.lhs.true46
  %call60 = call i32 @test_true(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 noundef 61, i8* noundef getelementptr inbounds ([66 x i8], [66 x i8]* @.str.16, i64 0, i64 0), i32 noundef 1) #3
  %tobool61 = icmp ne i32 %call60, 0
  %phi.cast = zext i1 %tobool61 to i32
  br label %land.end

land.end:                                         ; preds = %lor.end, %land.lhs.true46, %land.lhs.true42, %land.lhs.true34, %land.lhs.true26, %land.lhs.true18, %land.lhs.true8, %land.lhs.true, %entry
  %3 = phi i32 [ 0, %land.lhs.true46 ], [ 0, %land.lhs.true42 ], [ 0, %land.lhs.true34 ], [ 0, %land.lhs.true26 ], [ 0, %land.lhs.true18 ], [ 0, %land.lhs.true8 ], [ 0, %land.lhs.true ], [ 0, %entry ], [ %phi.cast, %lor.end ]
  call void @EVP_CIPHER_CTX_free(%struct.evp_cipher_ctx_st* noundef %call) #3
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %1) #4
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #4
  ret i32 %3
}

declare dso_local i32 @test_mem_eq(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i8* noundef, i64 noundef, i8* noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @do_decrypt(i8* noundef %ct, i32 noundef %ct_len, i8* noundef %tag, i32 noundef %tag_len) unnamed_addr #0 {
entry:
  %outlen = alloca i32, align 4
  %ptlen = alloca i32, align 4
  %pt = alloca [32 x i8], align 16
  %outbuf = alloca [32 x i8], align 16
  %0 = bitcast i32* %outlen to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #4
  %1 = bitcast i32* %ptlen to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %1) #4
  %2 = getelementptr inbounds [32 x i8], [32 x i8]* %pt, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %2) #4
  %3 = getelementptr inbounds [32 x i8], [32 x i8]* %outbuf, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %3) #4
  %call = tail call %struct.evp_cipher_ctx_st* @EVP_CIPHER_CTX_new() #3
  %4 = bitcast %struct.evp_cipher_ctx_st* %call to i8*
  %call1 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 noundef 75, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.7, i64 0, i64 0), i8* noundef %4) #3
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %land.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %call2 = tail call %struct.evp_cipher_st* @EVP_aes_256_gcm() #3
  %call3 = tail call i32 @EVP_DecryptInit_ex(%struct.evp_cipher_ctx_st* noundef %call, %struct.evp_cipher_st* noundef %call2, %struct.engine_st* noundef null, i8* noundef null, i8* noundef null) #3
  %cmp = icmp sgt i32 %call3, 0
  %conv = zext i1 %cmp to i32
  %call6 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 noundef 77, i8* noundef getelementptr inbounds ([65 x i8], [65 x i8]* @.str.17, i64 0, i64 0), i32 noundef %conv) #3
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %land.end, label %land.lhs.true8

land.lhs.true8:                                   ; preds = %land.lhs.true
  %call9 = tail call i32 @EVP_DecryptInit_ex(%struct.evp_cipher_ctx_st* noundef %call, %struct.evp_cipher_st* noundef null, %struct.engine_st* noundef null, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @gcm_key, i64 0, i64 0), i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @gcm_iv, i64 0, i64 0)) #3
  %cmp10 = icmp sgt i32 %call9, 0
  %conv11 = zext i1 %cmp10 to i32
  %call14 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 noundef 78, i8* noundef getelementptr inbounds ([53 x i8], [53 x i8]* @.str.18, i64 0, i64 0), i32 noundef %conv11) #3
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %land.end, label %land.lhs.true16

land.lhs.true16:                                  ; preds = %land.lhs.true8
  %call17 = tail call i32 @EVP_CIPHER_CTX_get_tag_length(%struct.evp_cipher_ctx_st* noundef %call) #3
  %call18 = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 noundef 79, i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.13, i64 0, i64 0), i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.14, i64 0, i64 0), i32 noundef %call17, i32 noundef 16) #3
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %land.end, label %land.lhs.true20

land.lhs.true20:                                  ; preds = %land.lhs.true16
  %call21 = call i32 @EVP_DecryptUpdate(%struct.evp_cipher_ctx_st* noundef %call, i8* noundef null, i32* noundef nonnull %outlen, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @gcm_aad, i64 0, i64 0), i32 noundef 16) #3
  %cmp22 = icmp sgt i32 %call21, 0
  %conv23 = zext i1 %cmp22 to i32
  %call26 = call i32 @test_true(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 noundef 81, i8* noundef getelementptr inbounds ([68 x i8], [68 x i8]* @.str.19, i64 0, i64 0), i32 noundef %conv23) #3
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %land.end, label %land.lhs.true28

land.lhs.true28:                                  ; preds = %land.lhs.true20
  %call29 = call i32 @EVP_DecryptUpdate(%struct.evp_cipher_ctx_st* noundef %call, i8* noundef nonnull %2, i32* noundef nonnull %ptlen, i8* noundef %ct, i32 noundef %ct_len) #3
  %cmp30 = icmp sgt i32 %call29, 0
  %conv31 = zext i1 %cmp30 to i32
  %call34 = call i32 @test_true(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 noundef 83, i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str.20, i64 0, i64 0), i32 noundef %conv31) #3
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %land.end, label %land.lhs.true36

land.lhs.true36:                                  ; preds = %land.lhs.true28
  %call37 = call i32 @EVP_CIPHER_CTX_ctrl(%struct.evp_cipher_ctx_st* noundef %call, i32 noundef 17, i32 noundef %tag_len, i8* noundef %tag) #3
  %cmp38 = icmp sgt i32 %call37, 0
  %conv39 = zext i1 %cmp38 to i32
  %call42 = call i32 @test_true(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 noundef 85, i8* noundef getelementptr inbounds ([74 x i8], [74 x i8]* @.str.21, i64 0, i64 0), i32 noundef %conv39) #3
  %tobool43.not = icmp eq i32 %call42, 0
  br i1 %tobool43.not, label %land.end, label %land.lhs.true44

land.lhs.true44:                                  ; preds = %land.lhs.true36
  %call46 = call i32 @EVP_DecryptFinal_ex(%struct.evp_cipher_ctx_st* noundef %call, i8* noundef nonnull %3, i32* noundef nonnull %outlen) #3
  %cmp47 = icmp sgt i32 %call46, 0
  %conv48 = zext i1 %cmp47 to i32
  %call51 = call i32 @test_true(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 noundef 86, i8* noundef getelementptr inbounds ([46 x i8], [46 x i8]* @.str.22, i64 0, i64 0), i32 noundef %conv48) #3
  %tobool52.not = icmp eq i32 %call51, 0
  br i1 %tobool52.not, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %land.lhs.true44
  %5 = load i32, i32* %ptlen, align 4, !tbaa !3
  %conv54 = sext i32 %5 to i64
  %call55 = call i32 @test_mem_eq(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 noundef 87, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.23, i64 0, i64 0), i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.24, i64 0, i64 0), i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @gcm_pt, i64 0, i64 0), i64 noundef 16, i8* noundef nonnull %2, i64 noundef %conv54) #3
  %tobool56 = icmp ne i32 %call55, 0
  %phi.cast = zext i1 %tobool56 to i32
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true44, %land.lhs.true36, %land.lhs.true28, %land.lhs.true20, %land.lhs.true16, %land.lhs.true8, %land.lhs.true, %entry
  %6 = phi i32 [ 0, %land.lhs.true44 ], [ 0, %land.lhs.true36 ], [ 0, %land.lhs.true28 ], [ 0, %land.lhs.true20 ], [ 0, %land.lhs.true16 ], [ 0, %land.lhs.true8 ], [ 0, %land.lhs.true ], [ 0, %entry ], [ %phi.cast, %land.rhs ]
  call void @EVP_CIPHER_CTX_free(%struct.evp_cipher_ctx_st* noundef %call) #3
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %3) #4
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %2) #4
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %1) #4
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #4
  ret i32 %6
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

declare dso_local i32 @test_ptr(i8* noundef, i32 noundef, i8* noundef, i8* noundef) local_unnamed_addr #1

declare dso_local %struct.evp_cipher_ctx_st* @EVP_CIPHER_CTX_new() local_unnamed_addr #1

declare dso_local i32 @test_true(i8* noundef, i32 noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

declare dso_local i32 @EVP_EncryptInit_ex(%struct.evp_cipher_ctx_st* noundef, %struct.evp_cipher_st* noundef, %struct.engine_st* noundef, i8* noundef, i8* noundef) local_unnamed_addr #1

declare dso_local %struct.evp_cipher_st* @EVP_aes_256_gcm() local_unnamed_addr #1

declare dso_local i32 @EVP_EncryptUpdate(%struct.evp_cipher_ctx_st* noundef, i8* noundef, i32* noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

declare dso_local i32 @EVP_EncryptFinal_ex(%struct.evp_cipher_ctx_st* noundef, i8* noundef, i32* noundef) local_unnamed_addr #1

declare dso_local i32 @test_int_eq(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare dso_local i32 @EVP_CIPHER_CTX_get_tag_length(%struct.evp_cipher_ctx_st* noundef) local_unnamed_addr #1

declare dso_local i32 @EVP_CIPHER_CTX_ctrl(%struct.evp_cipher_ctx_st* noundef, i32 noundef, i32 noundef, i8* noundef) local_unnamed_addr #1

declare dso_local void @EVP_CIPHER_CTX_free(%struct.evp_cipher_ctx_st* noundef) local_unnamed_addr #1

declare dso_local i32 @EVP_DecryptInit_ex(%struct.evp_cipher_ctx_st* noundef, %struct.evp_cipher_st* noundef, %struct.engine_st* noundef, i8* noundef, i8* noundef) local_unnamed_addr #1

declare dso_local i32 @EVP_DecryptUpdate(%struct.evp_cipher_ctx_st* noundef, i8* noundef, i32* noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

declare dso_local i32 @EVP_DecryptFinal_ex(%struct.evp_cipher_ctx_st* noundef, i8* noundef, i32* noundef) local_unnamed_addr #1

declare dso_local %struct.evp_cipher_st* @EVP_aes_192_gcm() local_unnamed_addr #1

declare dso_local i32 @test_false(i8* noundef, i32 noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

declare dso_local i32 @EVP_CIPHER_CTX_set_key_length(%struct.evp_cipher_ctx_st* noundef, i32 noundef) local_unnamed_addr #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #3 = { nobuiltin nounwind "no-builtins" }
attributes #4 = { nounwind }
attributes #5 = { nobuiltin "no-builtins" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{!"clang version 14.0.0"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
