; ModuleID = 'crypto/cmac/cmac.c'
source_filename = "crypto/cmac/cmac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.CMAC_CTX_st = type { %struct.evp_cipher_ctx_st*, [32 x i8], [32 x i8], [32 x i8], [32 x i8], i32 }
%struct.evp_cipher_ctx_st = type opaque
%struct.evp_cipher_st = type opaque
%struct.engine_st = type opaque

@.str = private unnamed_addr constant [19 x i8] c"crypto/cmac/cmac.c\00", align 1
@__func__.CMAC_CTX_new = private unnamed_addr constant [13 x i8] c"CMAC_CTX_new\00", align 1
@CMAC_Init.zero_iv = internal constant [32 x i8] zeroinitializer, align 16

; Function Attrs: noinline nounwind uwtable
define %struct.CMAC_CTX_st* @CMAC_CTX_new() local_unnamed_addr #0 {
entry:
  %call = tail call i8* @CRYPTO_malloc(i64 noundef 144, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 56) #6
  %0 = bitcast i8* %call to %struct.CMAC_CTX_st*
  %cmp = icmp eq i8* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 57, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @__func__.CMAC_CTX_new, i64 0, i64 0)) #6
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 15, i32 noundef 786688, i8* noundef null) #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call %struct.evp_cipher_ctx_st* @EVP_CIPHER_CTX_new() #6
  %cctx = bitcast i8* %call to %struct.evp_cipher_ctx_st**
  store %struct.evp_cipher_ctx_st* %call1, %struct.evp_cipher_ctx_st** %cctx, align 8, !tbaa !4
  %cmp3 = icmp eq %struct.evp_cipher_ctx_st* %call1, null
  br i1 %cmp3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  tail call void @CRYPTO_free(i8* noundef nonnull %call, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 62) #6
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %nlast_block = getelementptr inbounds i8, i8* %call, i64 136
  %1 = bitcast i8* %nlast_block to i32*
  store i32 -1, i32* %1, align 8, !tbaa !10
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.then4, %if.then
  %retval.0 = phi %struct.CMAC_CTX_st* [ null, %if.then ], [ null, %if.then4 ], [ %0, %if.end5 ]
  ret %struct.CMAC_CTX_st* %retval.0
}

declare i8* @CRYPTO_malloc(i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

declare void @ERR_new() local_unnamed_addr #1

declare void @ERR_set_debug(i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #1

declare void @ERR_set_error(i32 noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #1

declare %struct.evp_cipher_ctx_st* @EVP_CIPHER_CTX_new() local_unnamed_addr #1

declare void @CRYPTO_free(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define void @CMAC_CTX_cleanup(%struct.CMAC_CTX_st* noundef %ctx) local_unnamed_addr #0 {
entry:
  %cctx = getelementptr inbounds %struct.CMAC_CTX_st, %struct.CMAC_CTX_st* %ctx, i64 0, i32 0
  %0 = load %struct.evp_cipher_ctx_st*, %struct.evp_cipher_ctx_st** %cctx, align 8, !tbaa !4
  %call = tail call i32 @EVP_CIPHER_CTX_reset(%struct.evp_cipher_ctx_st* noundef %0) #6
  %arraydecay = getelementptr inbounds %struct.CMAC_CTX_st, %struct.CMAC_CTX_st* %ctx, i64 0, i32 3, i64 0
  tail call void @OPENSSL_cleanse(i8* noundef nonnull %arraydecay, i64 noundef 32) #6
  %arraydecay1 = getelementptr inbounds %struct.CMAC_CTX_st, %struct.CMAC_CTX_st* %ctx, i64 0, i32 1, i64 0
  tail call void @OPENSSL_cleanse(i8* noundef nonnull %arraydecay1, i64 noundef 32) #6
  %arraydecay2 = getelementptr inbounds %struct.CMAC_CTX_st, %struct.CMAC_CTX_st* %ctx, i64 0, i32 2, i64 0
  tail call void @OPENSSL_cleanse(i8* noundef nonnull %arraydecay2, i64 noundef 32) #6
  %arraydecay3 = getelementptr inbounds %struct.CMAC_CTX_st, %struct.CMAC_CTX_st* %ctx, i64 0, i32 4, i64 0
  tail call void @OPENSSL_cleanse(i8* noundef nonnull %arraydecay3, i64 noundef 32) #6
  %nlast_block = getelementptr inbounds %struct.CMAC_CTX_st, %struct.CMAC_CTX_st* %ctx, i64 0, i32 5
  store i32 -1, i32* %nlast_block, align 8, !tbaa !10
  ret void
}

declare i32 @EVP_CIPHER_CTX_reset(%struct.evp_cipher_ctx_st* noundef) local_unnamed_addr #1

declare void @OPENSSL_cleanse(i8* noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define %struct.evp_cipher_ctx_st* @CMAC_CTX_get0_cipher_ctx(%struct.CMAC_CTX_st* nocapture noundef readonly %ctx) local_unnamed_addr #2 {
entry:
  %cctx = getelementptr inbounds %struct.CMAC_CTX_st, %struct.CMAC_CTX_st* %ctx, i64 0, i32 0
  %0 = load %struct.evp_cipher_ctx_st*, %struct.evp_cipher_ctx_st** %cctx, align 8, !tbaa !4
  ret %struct.evp_cipher_ctx_st* %0
}

; Function Attrs: noinline nounwind uwtable
define void @CMAC_CTX_free(%struct.CMAC_CTX_st* noundef %ctx) local_unnamed_addr #0 {
entry:
  %tobool.not = icmp eq %struct.CMAC_CTX_st* %ctx, null
  br i1 %tobool.not, label %return, label %if.end

if.end:                                           ; preds = %entry
  tail call void @CMAC_CTX_cleanup(%struct.CMAC_CTX_st* noundef nonnull %ctx) #7
  %cctx = getelementptr inbounds %struct.CMAC_CTX_st, %struct.CMAC_CTX_st* %ctx, i64 0, i32 0
  %0 = load %struct.evp_cipher_ctx_st*, %struct.evp_cipher_ctx_st** %cctx, align 8, !tbaa !4
  tail call void @EVP_CIPHER_CTX_free(%struct.evp_cipher_ctx_st* noundef %0) #6
  %1 = bitcast %struct.CMAC_CTX_st* %ctx to i8*
  tail call void @CRYPTO_free(i8* noundef nonnull %1, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 90) #6
  br label %return

return:                                           ; preds = %entry, %if.end
  ret void
}

declare void @EVP_CIPHER_CTX_free(%struct.evp_cipher_ctx_st* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define i32 @CMAC_CTX_copy(%struct.CMAC_CTX_st* noundef %out, %struct.CMAC_CTX_st* noundef %in) local_unnamed_addr #0 {
entry:
  %nlast_block = getelementptr inbounds %struct.CMAC_CTX_st, %struct.CMAC_CTX_st* %in, i64 0, i32 5
  %0 = load i32, i32* %nlast_block, align 8, !tbaa !10
  %cmp = icmp eq i32 %0, -1
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %cctx = getelementptr inbounds %struct.CMAC_CTX_st, %struct.CMAC_CTX_st* %in, i64 0, i32 0
  %1 = load %struct.evp_cipher_ctx_st*, %struct.evp_cipher_ctx_st** %cctx, align 8, !tbaa !4
  %call = tail call i32 @EVP_CIPHER_CTX_get_block_size(%struct.evp_cipher_ctx_st* noundef %1) #6
  %cmp1 = icmp slt i32 %call, 0
  br i1 %cmp1, label %cleanup, label %if.end3

if.end3:                                          ; preds = %if.end
  %cctx4 = getelementptr inbounds %struct.CMAC_CTX_st, %struct.CMAC_CTX_st* %out, i64 0, i32 0
  %2 = load %struct.evp_cipher_ctx_st*, %struct.evp_cipher_ctx_st** %cctx4, align 8, !tbaa !4
  %3 = load %struct.evp_cipher_ctx_st*, %struct.evp_cipher_ctx_st** %cctx, align 8, !tbaa !4
  %call6 = tail call i32 @EVP_CIPHER_CTX_copy(%struct.evp_cipher_ctx_st* noundef %2, %struct.evp_cipher_ctx_st* noundef %3) #6
  %tobool.not = icmp eq i32 %call6, 0
  br i1 %tobool.not, label %cleanup, label %if.end8

if.end8:                                          ; preds = %if.end3
  %arraydecay = getelementptr inbounds %struct.CMAC_CTX_st, %struct.CMAC_CTX_st* %out, i64 0, i32 1, i64 0
  %arraydecay10 = getelementptr inbounds %struct.CMAC_CTX_st, %struct.CMAC_CTX_st* %in, i64 0, i32 1, i64 0
  %conv45 = zext i32 %call to i64
  %call11 = tail call i8* @memcpy(i8* noundef nonnull %arraydecay, i8* noundef nonnull %arraydecay10, i64 noundef %conv45) #6
  %arraydecay12 = getelementptr inbounds %struct.CMAC_CTX_st, %struct.CMAC_CTX_st* %out, i64 0, i32 2, i64 0
  %arraydecay14 = getelementptr inbounds %struct.CMAC_CTX_st, %struct.CMAC_CTX_st* %in, i64 0, i32 2, i64 0
  %call16 = tail call i8* @memcpy(i8* noundef nonnull %arraydecay12, i8* noundef nonnull %arraydecay14, i64 noundef %conv45) #6
  %arraydecay17 = getelementptr inbounds %struct.CMAC_CTX_st, %struct.CMAC_CTX_st* %out, i64 0, i32 3, i64 0
  %arraydecay19 = getelementptr inbounds %struct.CMAC_CTX_st, %struct.CMAC_CTX_st* %in, i64 0, i32 3, i64 0
  %call21 = tail call i8* @memcpy(i8* noundef nonnull %arraydecay17, i8* noundef nonnull %arraydecay19, i64 noundef %conv45) #6
  %arraydecay22 = getelementptr inbounds %struct.CMAC_CTX_st, %struct.CMAC_CTX_st* %out, i64 0, i32 4, i64 0
  %arraydecay24 = getelementptr inbounds %struct.CMAC_CTX_st, %struct.CMAC_CTX_st* %in, i64 0, i32 4, i64 0
  %call26 = tail call i8* @memcpy(i8* noundef nonnull %arraydecay22, i8* noundef nonnull %arraydecay24, i64 noundef %conv45) #6
  %4 = load i32, i32* %nlast_block, align 8, !tbaa !10
  %nlast_block28 = getelementptr inbounds %struct.CMAC_CTX_st, %struct.CMAC_CTX_st* %out, i64 0, i32 5
  store i32 %4, i32* %nlast_block28, align 8, !tbaa !10
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.end, %entry, %if.end8
  %retval.0 = phi i32 [ 1, %if.end8 ], [ 0, %entry ], [ 0, %if.end ], [ 0, %if.end3 ]
  ret i32 %retval.0
}

declare i32 @EVP_CIPHER_CTX_get_block_size(%struct.evp_cipher_ctx_st* noundef) local_unnamed_addr #1

declare i32 @EVP_CIPHER_CTX_copy(%struct.evp_cipher_ctx_st* noundef, %struct.evp_cipher_ctx_st* noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare i8* @memcpy(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define i32 @CMAC_Init(%struct.CMAC_CTX_st* noundef %ctx, i8* noundef %key, i64 noundef %keylen, %struct.evp_cipher_st* noundef %cipher, %struct.engine_st* noundef %impl) local_unnamed_addr #0 {
entry:
  %tobool = icmp ne i8* %key, null
  %tobool1 = icmp ne %struct.evp_cipher_st* %cipher, null
  %or.cond = or i1 %tobool, %tobool1
  %tobool3 = icmp ne %struct.engine_st* %impl, null
  %or.cond79 = or i1 %or.cond, %tobool3
  %cmp = icmp ne i64 %keylen, 0
  %0 = or i1 %cmp, %or.cond79
  br i1 %0, label %if.end14, label %if.then

if.then:                                          ; preds = %entry
  %nlast_block = getelementptr inbounds %struct.CMAC_CTX_st, %struct.CMAC_CTX_st* %ctx, i64 0, i32 5
  %1 = load i32, i32* %nlast_block, align 8, !tbaa !10
  %cmp5 = icmp eq i32 %1, -1
  br i1 %cmp5, label %return, label %if.end

if.end:                                           ; preds = %if.then
  %cctx = getelementptr inbounds %struct.CMAC_CTX_st, %struct.CMAC_CTX_st* %ctx, i64 0, i32 0
  %2 = load %struct.evp_cipher_ctx_st*, %struct.evp_cipher_ctx_st** %cctx, align 8, !tbaa !4
  %call = tail call i32 @EVP_EncryptInit_ex(%struct.evp_cipher_ctx_st* noundef %2, %struct.evp_cipher_st* noundef null, %struct.engine_st* noundef null, i8* noundef null, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @CMAC_Init.zero_iv, i64 0, i64 0)) #6
  %tobool7.not = icmp eq i32 %call, 0
  br i1 %tobool7.not, label %return, label %if.end9

if.end9:                                          ; preds = %if.end
  %arraydecay = getelementptr inbounds %struct.CMAC_CTX_st, %struct.CMAC_CTX_st* %ctx, i64 0, i32 3, i64 0
  %3 = load %struct.evp_cipher_ctx_st*, %struct.evp_cipher_ctx_st** %cctx, align 8, !tbaa !4
  %call11 = tail call i32 @EVP_CIPHER_CTX_get_block_size(%struct.evp_cipher_ctx_st* noundef %3) #6
  %conv = sext i32 %call11 to i64
  %call12 = tail call i8* @memset(i8* noundef nonnull %arraydecay, i32 noundef 0, i64 noundef %conv) #6
  br label %return.sink.split

if.end14:                                         ; preds = %entry
  br i1 %tobool1, label %if.then17, label %if.end24

if.then17:                                        ; preds = %if.end14
  %nlast_block18 = getelementptr inbounds %struct.CMAC_CTX_st, %struct.CMAC_CTX_st* %ctx, i64 0, i32 5
  store i32 -1, i32* %nlast_block18, align 8, !tbaa !10
  %cctx19 = getelementptr inbounds %struct.CMAC_CTX_st, %struct.CMAC_CTX_st* %ctx, i64 0, i32 0
  %4 = load %struct.evp_cipher_ctx_st*, %struct.evp_cipher_ctx_st** %cctx19, align 8, !tbaa !4
  %call20 = tail call i32 @EVP_EncryptInit_ex(%struct.evp_cipher_ctx_st* noundef %4, %struct.evp_cipher_st* noundef nonnull %cipher, %struct.engine_st* noundef %impl, i8* noundef null, i8* noundef null) #6
  %tobool21.not = icmp eq i32 %call20, 0
  %tobool.not = xor i1 %tobool, true
  %brmerge = or i1 %tobool21.not, %tobool.not
  %not.tobool21.not = xor i1 %tobool21.not, true
  %.mux = zext i1 %not.tobool21.not to i32
  br i1 %brmerge, label %return, label %if.then27

if.end24:                                         ; preds = %if.end14
  br i1 %tobool, label %if.then27, label %return

if.then27:                                        ; preds = %if.then17, %if.end24
  %nlast_block28 = getelementptr inbounds %struct.CMAC_CTX_st, %struct.CMAC_CTX_st* %ctx, i64 0, i32 5
  store i32 -1, i32* %nlast_block28, align 8, !tbaa !10
  %cctx29 = getelementptr inbounds %struct.CMAC_CTX_st, %struct.CMAC_CTX_st* %ctx, i64 0, i32 0
  %5 = load %struct.evp_cipher_ctx_st*, %struct.evp_cipher_ctx_st** %cctx29, align 8, !tbaa !4
  %call30 = tail call %struct.evp_cipher_st* @EVP_CIPHER_CTX_get0_cipher(%struct.evp_cipher_ctx_st* noundef %5) #6
  %tobool31.not = icmp eq %struct.evp_cipher_st* %call30, null
  br i1 %tobool31.not, label %return, label %if.end33

if.end33:                                         ; preds = %if.then27
  %6 = load %struct.evp_cipher_ctx_st*, %struct.evp_cipher_ctx_st** %cctx29, align 8, !tbaa !4
  %conv35 = trunc i64 %keylen to i32
  %call36 = tail call i32 @EVP_CIPHER_CTX_set_key_length(%struct.evp_cipher_ctx_st* noundef %6, i32 noundef %conv35) #6
  %tobool37.not = icmp eq i32 %call36, 0
  br i1 %tobool37.not, label %return, label %if.end39

if.end39:                                         ; preds = %if.end33
  %7 = load %struct.evp_cipher_ctx_st*, %struct.evp_cipher_ctx_st** %cctx29, align 8, !tbaa !4
  %call41 = tail call i32 @EVP_EncryptInit_ex(%struct.evp_cipher_ctx_st* noundef %7, %struct.evp_cipher_st* noundef null, %struct.engine_st* noundef null, i8* noundef nonnull %key, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @CMAC_Init.zero_iv, i64 0, i64 0)) #6
  %tobool42.not = icmp eq i32 %call41, 0
  br i1 %tobool42.not, label %return, label %if.end44

if.end44:                                         ; preds = %if.end39
  %8 = load %struct.evp_cipher_ctx_st*, %struct.evp_cipher_ctx_st** %cctx29, align 8, !tbaa !4
  %call46 = tail call i32 @EVP_CIPHER_CTX_get_block_size(%struct.evp_cipher_ctx_st* noundef %8) #6
  %cmp47 = icmp slt i32 %call46, 0
  br i1 %cmp47, label %return, label %if.end50

if.end50:                                         ; preds = %if.end44
  %9 = load %struct.evp_cipher_ctx_st*, %struct.evp_cipher_ctx_st** %cctx29, align 8, !tbaa !4
  %arraydecay53 = getelementptr inbounds %struct.CMAC_CTX_st, %struct.CMAC_CTX_st* %ctx, i64 0, i32 3, i64 0
  %call54 = tail call i32 @EVP_Cipher(%struct.evp_cipher_ctx_st* noundef %9, i8* noundef nonnull %arraydecay53, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @CMAC_Init.zero_iv, i64 0, i64 0), i32 noundef %call46) #6
  %cmp55 = icmp slt i32 %call54, 1
  br i1 %cmp55, label %return, label %if.end58

if.end58:                                         ; preds = %if.end50
  %arraydecay59 = getelementptr inbounds %struct.CMAC_CTX_st, %struct.CMAC_CTX_st* %ctx, i64 0, i32 1, i64 0
  tail call fastcc void @make_kn(i8* noundef nonnull %arraydecay59, i8* noundef nonnull %arraydecay53, i32 noundef %call46) #7
  %arraydecay62 = getelementptr inbounds %struct.CMAC_CTX_st, %struct.CMAC_CTX_st* %ctx, i64 0, i32 2, i64 0
  tail call fastcc void @make_kn(i8* noundef nonnull %arraydecay62, i8* noundef nonnull %arraydecay59, i32 noundef %call46) #7
  %conv67115 = zext i32 %call46 to i64
  tail call void @OPENSSL_cleanse(i8* noundef nonnull %arraydecay53, i64 noundef %conv67115) #6
  %10 = load %struct.evp_cipher_ctx_st*, %struct.evp_cipher_ctx_st** %cctx29, align 8, !tbaa !4
  %call69 = tail call i32 @EVP_EncryptInit_ex(%struct.evp_cipher_ctx_st* noundef %10, %struct.evp_cipher_st* noundef null, %struct.engine_st* noundef null, i8* noundef null, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @CMAC_Init.zero_iv, i64 0, i64 0)) #6
  %tobool70.not = icmp eq i32 %call69, 0
  br i1 %tobool70.not, label %return, label %cleanup

cleanup:                                          ; preds = %if.end58
  %call76 = tail call i8* @memset(i8* noundef nonnull %arraydecay53, i32 noundef 0, i64 noundef %conv67115) #6
  br label %return.sink.split

return.sink.split:                                ; preds = %if.end9, %cleanup
  %nlast_block28.sink = phi i32* [ %nlast_block28, %cleanup ], [ %nlast_block, %if.end9 ]
  store i32 0, i32* %nlast_block28.sink, align 8, !tbaa !10
  br label %return

return:                                           ; preds = %return.sink.split, %if.then17, %if.end58, %if.end50, %if.end44, %if.end39, %if.end33, %if.then27, %if.end24, %if.end, %if.then
  %retval.1 = phi i32 [ 0, %if.then ], [ 0, %if.end ], [ %.mux, %if.then17 ], [ 1, %if.end24 ], [ 0, %if.then27 ], [ 0, %if.end33 ], [ 0, %if.end39 ], [ 0, %if.end44 ], [ 0, %if.end50 ], [ 0, %if.end58 ], [ 1, %return.sink.split ]
  ret i32 %retval.1
}

declare i32 @EVP_EncryptInit_ex(%struct.evp_cipher_ctx_st* noundef, %struct.evp_cipher_st* noundef, %struct.engine_st* noundef, i8* noundef, i8* noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare i8* @memset(i8* noundef, i32 noundef, i64 noundef) local_unnamed_addr #3

declare %struct.evp_cipher_st* @EVP_CIPHER_CTX_get0_cipher(%struct.evp_cipher_ctx_st* noundef) local_unnamed_addr #1

declare i32 @EVP_CIPHER_CTX_set_key_length(%struct.evp_cipher_ctx_st* noundef, i32 noundef) local_unnamed_addr #1

declare i32 @EVP_Cipher(%struct.evp_cipher_ctx_st* noundef, i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree noinline nosync nounwind uwtable
define internal fastcc void @make_kn(i8* nocapture noundef writeonly %k1, i8* nocapture noundef readonly %l, i32 noundef %bl) unnamed_addr #4 {
entry:
  %0 = load i8, i8* %l, align 1, !tbaa !11
  %sub = add i32 %bl, -1
  %cmp29 = icmp sgt i32 %bl, 1
  br i1 %cmp29, label %for.body.preheader, label %for.end

for.body.preheader:                               ; preds = %entry
  %wide.trip.count = zext i32 %sub to i64
  %min.iters.check = icmp ult i32 %sub, 32
  br i1 %min.iters.check, label %for.body.preheader36, label %vector.memcheck

vector.memcheck:                                  ; preds = %for.body.preheader
  %scevgep = getelementptr i8, i8* %k1, i64 %wide.trip.count
  %scevgep33 = getelementptr i8, i8* %l, i64 1
  %1 = add nuw nsw i64 %wide.trip.count, 1
  %scevgep34 = getelementptr i8, i8* %l, i64 %1
  %bound0 = icmp ugt i8* %scevgep34, %k1
  %bound1 = icmp ult i8* %scevgep33, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %for.body.preheader36, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count, 4294967264
  %vector.recur.init = insertelement <16 x i8> poison, i8 %0, i64 15
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vector.recur = phi <16 x i8> [ %vector.recur.init, %vector.ph ], [ %wide.load35, %vector.body ]
  %2 = or i64 %index, 1
  %3 = getelementptr inbounds i8, i8* %l, i64 %2
  %4 = bitcast i8* %3 to <16 x i8>*
  %wide.load = load <16 x i8>, <16 x i8>* %4, align 1, !tbaa !11, !alias.scope !12
  %5 = getelementptr inbounds i8, i8* %3, i64 16
  %6 = bitcast i8* %5 to <16 x i8>*
  %wide.load35 = load <16 x i8>, <16 x i8>* %6, align 1, !tbaa !11, !alias.scope !12
  %7 = shufflevector <16 x i8> %vector.recur, <16 x i8> %wide.load, <16 x i32> <i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30>
  %8 = shufflevector <16 x i8> %wide.load, <16 x i8> %wide.load35, <16 x i32> <i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30>
  %9 = call <16 x i8> @llvm.fshl.v16i8(<16 x i8> %7, <16 x i8> %wide.load, <16 x i8> <i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1>)
  %10 = call <16 x i8> @llvm.fshl.v16i8(<16 x i8> %8, <16 x i8> %wide.load35, <16 x i8> <i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1>)
  %11 = getelementptr inbounds i8, i8* %k1, i64 %index
  %12 = bitcast i8* %11 to <16 x i8>*
  store <16 x i8> %9, <16 x i8>* %12, align 1, !tbaa !11, !alias.scope !15, !noalias !12
  %13 = getelementptr inbounds i8, i8* %11, i64 16
  %14 = bitcast i8* %13 to <16 x i8>*
  store <16 x i8> %10, <16 x i8>* %14, align 1, !tbaa !11, !alias.scope !15, !noalias !12
  %index.next = add nuw i64 %index, 32
  %15 = icmp eq i64 %index.next, %n.vec
  br i1 %15, label %middle.block, label %vector.body, !llvm.loop !17

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  %vector.recur.extract = extractelement <16 x i8> %wide.load35, i64 15
  %16 = extractelement <16 x i8> %wide.load35, i64 15
  br i1 %cmp.n, label %for.end.loopexit, label %for.body.preheader36

for.body.preheader36:                             ; preds = %vector.memcheck, %for.body.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %for.body.preheader ], [ 0, %vector.memcheck ]
  %scalar.recur.ph = phi i8 [ %vector.recur.extract, %middle.block ], [ %0, %for.body.preheader ], [ %0, %vector.memcheck ]
  %17 = xor i64 %indvars.iv.ph, -1
  %xtraiter = and i64 %wide.trip.count, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %for.body.prol.loopexit, label %for.body.prol

for.body.prol:                                    ; preds = %for.body.preheader36
  %indvars.iv.next.prol = or i64 %indvars.iv.ph, 1
  %arrayidx4.prol = getelementptr inbounds i8, i8* %l, i64 %indvars.iv.next.prol
  %18 = load i8, i8* %arrayidx4.prol, align 1, !tbaa !11
  %or.prol = tail call i8 @llvm.fshl.i8(i8 %scalar.recur.ph, i8 %18, i8 1)
  %arrayidx9.prol = getelementptr inbounds i8, i8* %k1, i64 %indvars.iv.ph
  store i8 %or.prol, i8* %arrayidx9.prol, align 1, !tbaa !11
  br label %for.body.prol.loopexit

for.body.prol.loopexit:                           ; preds = %for.body.prol, %for.body.preheader36
  %.lcssa37.unr = phi i8 [ undef, %for.body.preheader36 ], [ %18, %for.body.prol ]
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %for.body.preheader36 ], [ %indvars.iv.next.prol, %for.body.prol ]
  %scalar.recur.unr = phi i8 [ %scalar.recur.ph, %for.body.preheader36 ], [ %18, %for.body.prol ]
  %19 = sub nsw i64 0, %wide.trip.count
  %20 = icmp eq i64 %17, %19
  br i1 %20, label %for.end.loopexit, label %for.body

for.body:                                         ; preds = %for.body.prol.loopexit, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %for.body ], [ %indvars.iv.unr, %for.body.prol.loopexit ]
  %scalar.recur = phi i8 [ %22, %for.body ], [ %scalar.recur.unr, %for.body.prol.loopexit ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %arrayidx4 = getelementptr inbounds i8, i8* %l, i64 %indvars.iv.next
  %21 = load i8, i8* %arrayidx4, align 1, !tbaa !11
  %or = tail call i8 @llvm.fshl.i8(i8 %scalar.recur, i8 %21, i8 1)
  %arrayidx9 = getelementptr inbounds i8, i8* %k1, i64 %indvars.iv
  store i8 %or, i8* %arrayidx9, align 1, !tbaa !11
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2
  %arrayidx4.1 = getelementptr inbounds i8, i8* %l, i64 %indvars.iv.next.1
  %22 = load i8, i8* %arrayidx4.1, align 1, !tbaa !11
  %or.1 = tail call i8 @llvm.fshl.i8(i8 %21, i8 %22, i8 1)
  %arrayidx9.1 = getelementptr inbounds i8, i8* %k1, i64 %indvars.iv.next
  store i8 %or.1, i8* %arrayidx9.1, align 1, !tbaa !11
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %wide.trip.count
  br i1 %exitcond.not.1, label %for.end.loopexit, label %for.body, !llvm.loop !20

for.end.loopexit:                                 ; preds = %for.body.prol.loopexit, %for.body, %middle.block
  %.lcssa = phi i8 [ %16, %middle.block ], [ %.lcssa37.unr, %for.body.prol.loopexit ], [ %22, %for.body ]
  %phi.cast = zext i32 %sub to i64
  br label %for.end

for.end:                                          ; preds = %entry, %for.end.loopexit
  %c.0.lcssa = phi i8 [ %.lcssa, %for.end.loopexit ], [ %0, %entry ]
  %i.0.lcssa = phi i64 [ %phi.cast, %for.end.loopexit ], [ 0, %entry ]
  %shl11 = shl i8 %c.0.lcssa, 1
  %cmp14 = icmp eq i32 %bl, 16
  %cond = select i1 %cmp14, i8 -121, i8 27
  %isneg = icmp slt i8 %0, 0
  %and = select i1 %isneg, i8 %cond, i8 0
  %xor = xor i8 %shl11, %and
  %arrayidx18 = getelementptr inbounds i8, i8* %k1, i64 %i.0.lcssa
  store i8 %xor, i8* %arrayidx18, align 1, !tbaa !11
  ret void
}

; Function Attrs: noinline nounwind uwtable
define i32 @CMAC_Update(%struct.CMAC_CTX_st* noundef %ctx, i8* noundef %in, i64 noundef %dlen) local_unnamed_addr #0 {
entry:
  %nlast_block = getelementptr inbounds %struct.CMAC_CTX_st, %struct.CMAC_CTX_st* %ctx, i64 0, i32 5
  %0 = load i32, i32* %nlast_block, align 8, !tbaa !10
  %cmp = icmp eq i32 %0, -1
  br i1 %cmp, label %cleanup56, label %if.end

if.end:                                           ; preds = %entry
  %cmp1 = icmp eq i64 %dlen, 0
  br i1 %cmp1, label %cleanup56, label %if.end3

if.end3:                                          ; preds = %if.end
  %cctx = getelementptr inbounds %struct.CMAC_CTX_st, %struct.CMAC_CTX_st* %ctx, i64 0, i32 0
  %1 = load %struct.evp_cipher_ctx_st*, %struct.evp_cipher_ctx_st** %cctx, align 8, !tbaa !4
  %call = tail call i32 @EVP_CIPHER_CTX_get_block_size(%struct.evp_cipher_ctx_st* noundef %1) #6
  %cmp4 = icmp slt i32 %call, 0
  br i1 %cmp4, label %cleanup56, label %if.end6

if.end6:                                          ; preds = %if.end3
  %2 = load i32, i32* %nlast_block, align 8, !tbaa !10
  %cmp8 = icmp sgt i32 %2, 0
  br i1 %cmp8, label %if.then9, label %if.end35

if.then9:                                         ; preds = %if.end6
  %sub = sub nsw i32 %call, %2
  %conv = sext i32 %sub to i64
  %cmp11 = icmp ugt i64 %conv, %dlen
  %spec.select = select i1 %cmp11, i64 %dlen, i64 %conv
  %idx.ext100 = zext i32 %2 to i64
  %add.ptr = getelementptr inbounds %struct.CMAC_CTX_st, %struct.CMAC_CTX_st* %ctx, i64 0, i32 4, i64 %idx.ext100
  %call16 = tail call i8* @memcpy(i8* noundef nonnull %add.ptr, i8* noundef %in, i64 noundef %spec.select) #6
  %sub17 = sub i64 %dlen, %spec.select
  %3 = load i32, i32* %nlast_block, align 8, !tbaa !10
  %4 = trunc i64 %spec.select to i32
  %conv20 = add i32 %3, %4
  store i32 %conv20, i32* %nlast_block, align 8, !tbaa !10
  %cmp21 = icmp eq i64 %sub17, 0
  br i1 %cmp21, label %cleanup56, label %cleanup

cleanup:                                          ; preds = %if.then9
  %arraydecay = getelementptr inbounds %struct.CMAC_CTX_st, %struct.CMAC_CTX_st* %ctx, i64 0, i32 4, i64 0
  %add.ptr25 = getelementptr inbounds i8, i8* %in, i64 %spec.select
  %5 = load %struct.evp_cipher_ctx_st*, %struct.evp_cipher_ctx_st** %cctx, align 8, !tbaa !4
  %arraydecay27 = getelementptr inbounds %struct.CMAC_CTX_st, %struct.CMAC_CTX_st* %ctx, i64 0, i32 3, i64 0
  %call30 = tail call i32 @EVP_Cipher(%struct.evp_cipher_ctx_st* noundef %5, i8* noundef nonnull %arraydecay27, i8* noundef nonnull %arraydecay, i32 noundef %call) #6
  %cmp31 = icmp sgt i32 %call30, 0
  br i1 %cmp31, label %if.end35, label %cleanup56

if.end35:                                         ; preds = %cleanup, %if.end6
  %dlen.addr.0 = phi i64 [ %sub17, %cleanup ], [ %dlen, %if.end6 ]
  %data.1 = phi i8* [ %add.ptr25, %cleanup ], [ %in, %if.end6 ]
  %conv36107 = zext i32 %call to i64
  %cmp37103 = icmp ugt i64 %dlen.addr.0, %conv36107
  br i1 %cmp37103, label %while.body.lr.ph, label %while.end

while.body.lr.ph:                                 ; preds = %if.end35
  %arraydecay41 = getelementptr inbounds %struct.CMAC_CTX_st, %struct.CMAC_CTX_st* %ctx, i64 0, i32 3, i64 0
  br label %while.body

while.body:                                       ; preds = %while.body.lr.ph, %if.end46
  %data.2105 = phi i8* [ %data.1, %while.body.lr.ph ], [ %add.ptr50, %if.end46 ]
  %dlen.addr.1104 = phi i64 [ %dlen.addr.0, %while.body.lr.ph ], [ %sub48, %if.end46 ]
  %6 = load %struct.evp_cipher_ctx_st*, %struct.evp_cipher_ctx_st** %cctx, align 8, !tbaa !4
  %call42 = tail call i32 @EVP_Cipher(%struct.evp_cipher_ctx_st* noundef %6, i8* noundef nonnull %arraydecay41, i8* noundef %data.2105, i32 noundef %call) #6
  %cmp43 = icmp slt i32 %call42, 1
  br i1 %cmp43, label %cleanup56, label %if.end46

if.end46:                                         ; preds = %while.body
  %sub48 = sub i64 %dlen.addr.1104, %conv36107
  %add.ptr50 = getelementptr inbounds i8, i8* %data.2105, i64 %conv36107
  %cmp37 = icmp ugt i64 %sub48, %conv36107
  br i1 %cmp37, label %while.body, label %while.end, !llvm.loop !21

while.end:                                        ; preds = %if.end46, %if.end35
  %dlen.addr.1.lcssa = phi i64 [ %dlen.addr.0, %if.end35 ], [ %sub48, %if.end46 ]
  %data.2.lcssa = phi i8* [ %data.1, %if.end35 ], [ %add.ptr50, %if.end46 ]
  %arraydecay52 = getelementptr inbounds %struct.CMAC_CTX_st, %struct.CMAC_CTX_st* %ctx, i64 0, i32 4, i64 0
  %call53 = tail call i8* @memcpy(i8* noundef nonnull %arraydecay52, i8* noundef %data.2.lcssa, i64 noundef %dlen.addr.1.lcssa) #6
  %conv54 = trunc i64 %dlen.addr.1.lcssa to i32
  store i32 %conv54, i32* %nlast_block, align 8, !tbaa !10
  br label %cleanup56

cleanup56:                                        ; preds = %while.body, %if.then9, %if.end3, %if.end, %entry, %cleanup, %while.end
  %retval.1 = phi i32 [ 1, %while.end ], [ 0, %cleanup ], [ 0, %entry ], [ 1, %if.end ], [ 0, %if.end3 ], [ 1, %if.then9 ], [ 0, %while.body ]
  ret i32 %retval.1
}

; Function Attrs: noinline nounwind uwtable
define i32 @CMAC_Final(%struct.CMAC_CTX_st* noundef %ctx, i8* noundef %out, i64* noundef writeonly %poutlen) local_unnamed_addr #0 {
entry:
  %ctx118 = bitcast %struct.CMAC_CTX_st* %ctx to i8*
  %nlast_block = getelementptr inbounds %struct.CMAC_CTX_st, %struct.CMAC_CTX_st* %ctx, i64 0, i32 5
  %0 = load i32, i32* %nlast_block, align 8, !tbaa !10
  %cmp = icmp eq i32 %0, -1
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %cctx = getelementptr inbounds %struct.CMAC_CTX_st, %struct.CMAC_CTX_st* %ctx, i64 0, i32 0
  %1 = load %struct.evp_cipher_ctx_st*, %struct.evp_cipher_ctx_st** %cctx, align 8, !tbaa !4
  %call = tail call i32 @EVP_CIPHER_CTX_get_block_size(%struct.evp_cipher_ctx_st* noundef %1) #6
  %cmp1 = icmp slt i32 %call, 0
  br i1 %cmp1, label %cleanup, label %if.end3

if.end3:                                          ; preds = %if.end
  %cmp4.not = icmp eq i64* %poutlen, null
  br i1 %cmp4.not, label %if.end6, label %if.then5

if.then5:                                         ; preds = %if.end3
  %conv102 = zext i32 %call to i64
  store i64 %conv102, i64* %poutlen, align 8, !tbaa !22
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %if.end3
  %tobool.not = icmp eq i8* %out, null
  br i1 %tobool.not, label %cleanup, label %if.end8

if.end8:                                          ; preds = %if.end6
  %2 = load i32, i32* %nlast_block, align 8, !tbaa !10
  %cmp10 = icmp eq i32 %call, %2
  br i1 %cmp10, label %for.cond.preheader, label %if.else

for.cond.preheader:                               ; preds = %if.end8
  %cmp13106.not = icmp eq i32 %call, 0
  br i1 %cmp13106.not, label %if.end53, label %iter.check141

iter.check141:                                    ; preds = %for.cond.preheader
  %wide.trip.count113 = zext i32 %call to i64
  %min.iters.check139 = icmp ult i32 %call, 8
  br i1 %min.iters.check139, label %for.body.preheader, label %vector.memcheck130

vector.memcheck130:                               ; preds = %iter.check141
  %scevgep131 = getelementptr i8, i8* %out, i64 %wide.trip.count113
  %scevgep132 = getelementptr %struct.CMAC_CTX_st, %struct.CMAC_CTX_st* %ctx, i64 0, i32 1, i64 0
  %3 = add nuw nsw i64 %wide.trip.count113, 104
  %uglygep133 = getelementptr i8, i8* %ctx118, i64 %3
  %bound0134 = icmp ugt i8* %uglygep133, %out
  %bound1135 = icmp ult i8* %scevgep132, %scevgep131
  %found.conflict136 = and i1 %bound0134, %bound1135
  br i1 %found.conflict136, label %for.body.preheader, label %vector.main.loop.iter.check143

vector.main.loop.iter.check143:                   ; preds = %vector.memcheck130
  %min.iters.check142 = icmp ult i32 %call, 32
  br i1 %min.iters.check142, label %vec.epilog.ph158, label %vector.ph144

vector.ph144:                                     ; preds = %vector.main.loop.iter.check143
  %n.vec146 = and i64 %wide.trip.count113, 4294967264
  %4 = add nsw i64 %n.vec146, -32
  %5 = lshr exact i64 %4, 5
  %6 = add nuw nsw i64 %5, 1
  %xtraiter173 = and i64 %6, 1
  %7 = icmp eq i64 %4, 0
  br i1 %7, label %middle.block137.unr-lcssa, label %vector.ph144.new

vector.ph144.new:                                 ; preds = %vector.ph144
  %unroll_iter175 = and i64 %6, 1152921504606846974
  br label %vector.body138

vector.body138:                                   ; preds = %vector.body138, %vector.ph144.new
  %index148 = phi i64 [ 0, %vector.ph144.new ], [ %index.next153.1, %vector.body138 ]
  %niter176 = phi i64 [ 0, %vector.ph144.new ], [ %niter176.next.1, %vector.body138 ]
  %8 = getelementptr inbounds %struct.CMAC_CTX_st, %struct.CMAC_CTX_st* %ctx, i64 0, i32 4, i64 %index148
  %9 = bitcast i8* %8 to <16 x i8>*
  %wide.load149 = load <16 x i8>, <16 x i8>* %9, align 1, !tbaa !11, !alias.scope !24
  %10 = getelementptr inbounds i8, i8* %8, i64 16
  %11 = bitcast i8* %10 to <16 x i8>*
  %wide.load150 = load <16 x i8>, <16 x i8>* %11, align 1, !tbaa !11, !alias.scope !24
  %12 = getelementptr inbounds %struct.CMAC_CTX_st, %struct.CMAC_CTX_st* %ctx, i64 0, i32 1, i64 %index148
  %13 = bitcast i8* %12 to <16 x i8>*
  %wide.load151 = load <16 x i8>, <16 x i8>* %13, align 1, !tbaa !11, !alias.scope !24
  %14 = getelementptr inbounds i8, i8* %12, i64 16
  %15 = bitcast i8* %14 to <16 x i8>*
  %wide.load152 = load <16 x i8>, <16 x i8>* %15, align 1, !tbaa !11, !alias.scope !24
  %16 = xor <16 x i8> %wide.load151, %wide.load149
  %17 = xor <16 x i8> %wide.load152, %wide.load150
  %18 = getelementptr inbounds i8, i8* %out, i64 %index148
  %19 = bitcast i8* %18 to <16 x i8>*
  store <16 x i8> %16, <16 x i8>* %19, align 1, !tbaa !11, !alias.scope !27, !noalias !24
  %20 = getelementptr inbounds i8, i8* %18, i64 16
  %21 = bitcast i8* %20 to <16 x i8>*
  store <16 x i8> %17, <16 x i8>* %21, align 1, !tbaa !11, !alias.scope !27, !noalias !24
  %index.next153 = or i64 %index148, 32
  %22 = getelementptr inbounds %struct.CMAC_CTX_st, %struct.CMAC_CTX_st* %ctx, i64 0, i32 4, i64 %index.next153
  %23 = bitcast i8* %22 to <16 x i8>*
  %wide.load149.1 = load <16 x i8>, <16 x i8>* %23, align 1, !tbaa !11, !alias.scope !24
  %24 = getelementptr inbounds i8, i8* %22, i64 16
  %25 = bitcast i8* %24 to <16 x i8>*
  %wide.load150.1 = load <16 x i8>, <16 x i8>* %25, align 1, !tbaa !11, !alias.scope !24
  %26 = getelementptr inbounds %struct.CMAC_CTX_st, %struct.CMAC_CTX_st* %ctx, i64 0, i32 1, i64 %index.next153
  %27 = bitcast i8* %26 to <16 x i8>*
  %wide.load151.1 = load <16 x i8>, <16 x i8>* %27, align 1, !tbaa !11, !alias.scope !24
  %28 = getelementptr inbounds i8, i8* %26, i64 16
  %29 = bitcast i8* %28 to <16 x i8>*
  %wide.load152.1 = load <16 x i8>, <16 x i8>* %29, align 1, !tbaa !11, !alias.scope !24
  %30 = xor <16 x i8> %wide.load151.1, %wide.load149.1
  %31 = xor <16 x i8> %wide.load152.1, %wide.load150.1
  %32 = getelementptr inbounds i8, i8* %out, i64 %index.next153
  %33 = bitcast i8* %32 to <16 x i8>*
  store <16 x i8> %30, <16 x i8>* %33, align 1, !tbaa !11, !alias.scope !27, !noalias !24
  %34 = getelementptr inbounds i8, i8* %32, i64 16
  %35 = bitcast i8* %34 to <16 x i8>*
  store <16 x i8> %31, <16 x i8>* %35, align 1, !tbaa !11, !alias.scope !27, !noalias !24
  %index.next153.1 = add nuw i64 %index148, 64
  %niter176.next.1 = add i64 %niter176, 2
  %niter176.ncmp.1 = icmp eq i64 %niter176.next.1, %unroll_iter175
  br i1 %niter176.ncmp.1, label %middle.block137.unr-lcssa, label %vector.body138, !llvm.loop !29

middle.block137.unr-lcssa:                        ; preds = %vector.body138, %vector.ph144
  %index148.unr = phi i64 [ 0, %vector.ph144 ], [ %index.next153.1, %vector.body138 ]
  %lcmp.mod174.not = icmp eq i64 %xtraiter173, 0
  br i1 %lcmp.mod174.not, label %middle.block137, label %vector.body138.epil

vector.body138.epil:                              ; preds = %middle.block137.unr-lcssa
  %36 = getelementptr inbounds %struct.CMAC_CTX_st, %struct.CMAC_CTX_st* %ctx, i64 0, i32 4, i64 %index148.unr
  %37 = bitcast i8* %36 to <16 x i8>*
  %wide.load149.epil = load <16 x i8>, <16 x i8>* %37, align 1, !tbaa !11, !alias.scope !24
  %38 = getelementptr inbounds i8, i8* %36, i64 16
  %39 = bitcast i8* %38 to <16 x i8>*
  %wide.load150.epil = load <16 x i8>, <16 x i8>* %39, align 1, !tbaa !11, !alias.scope !24
  %40 = getelementptr inbounds %struct.CMAC_CTX_st, %struct.CMAC_CTX_st* %ctx, i64 0, i32 1, i64 %index148.unr
  %41 = bitcast i8* %40 to <16 x i8>*
  %wide.load151.epil = load <16 x i8>, <16 x i8>* %41, align 1, !tbaa !11, !alias.scope !24
  %42 = getelementptr inbounds i8, i8* %40, i64 16
  %43 = bitcast i8* %42 to <16 x i8>*
  %wide.load152.epil = load <16 x i8>, <16 x i8>* %43, align 1, !tbaa !11, !alias.scope !24
  %44 = xor <16 x i8> %wide.load151.epil, %wide.load149.epil
  %45 = xor <16 x i8> %wide.load152.epil, %wide.load150.epil
  %46 = getelementptr inbounds i8, i8* %out, i64 %index148.unr
  %47 = bitcast i8* %46 to <16 x i8>*
  store <16 x i8> %44, <16 x i8>* %47, align 1, !tbaa !11, !alias.scope !27, !noalias !24
  %48 = getelementptr inbounds i8, i8* %46, i64 16
  %49 = bitcast i8* %48 to <16 x i8>*
  store <16 x i8> %45, <16 x i8>* %49, align 1, !tbaa !11, !alias.scope !27, !noalias !24
  br label %middle.block137

middle.block137:                                  ; preds = %middle.block137.unr-lcssa, %vector.body138.epil
  %cmp.n147 = icmp eq i64 %n.vec146, %wide.trip.count113
  br i1 %cmp.n147, label %if.end53, label %vec.epilog.iter.check157

vec.epilog.iter.check157:                         ; preds = %middle.block137
  %n.vec.remaining159 = and i64 %wide.trip.count113, 24
  %min.epilog.iters.check160 = icmp eq i64 %n.vec.remaining159, 0
  br i1 %min.epilog.iters.check160, label %for.body.preheader, label %vec.epilog.ph158

vec.epilog.ph158:                                 ; preds = %vector.main.loop.iter.check143, %vec.epilog.iter.check157
  %vec.epilog.resume.val161 = phi i64 [ %n.vec146, %vec.epilog.iter.check157 ], [ 0, %vector.main.loop.iter.check143 ]
  %n.vec163 = and i64 %wide.trip.count113, 4294967288
  br label %vec.epilog.vector.body156

vec.epilog.vector.body156:                        ; preds = %vec.epilog.vector.body156, %vec.epilog.ph158
  %index166 = phi i64 [ %vec.epilog.resume.val161, %vec.epilog.ph158 ], [ %index.next169, %vec.epilog.vector.body156 ]
  %50 = getelementptr inbounds %struct.CMAC_CTX_st, %struct.CMAC_CTX_st* %ctx, i64 0, i32 4, i64 %index166
  %51 = bitcast i8* %50 to <8 x i8>*
  %wide.load167 = load <8 x i8>, <8 x i8>* %51, align 1, !tbaa !11
  %52 = getelementptr inbounds %struct.CMAC_CTX_st, %struct.CMAC_CTX_st* %ctx, i64 0, i32 1, i64 %index166
  %53 = bitcast i8* %52 to <8 x i8>*
  %wide.load168 = load <8 x i8>, <8 x i8>* %53, align 1, !tbaa !11
  %54 = xor <8 x i8> %wide.load168, %wide.load167
  %55 = getelementptr inbounds i8, i8* %out, i64 %index166
  %56 = bitcast i8* %55 to <8 x i8>*
  store <8 x i8> %54, <8 x i8>* %56, align 1, !tbaa !11
  %index.next169 = add nuw i64 %index166, 8
  %57 = icmp eq i64 %index.next169, %n.vec163
  br i1 %57, label %vec.epilog.middle.block154, label %vec.epilog.vector.body156, !llvm.loop !30

vec.epilog.middle.block154:                       ; preds = %vec.epilog.vector.body156
  %cmp.n165 = icmp eq i64 %n.vec163, %wide.trip.count113
  br i1 %cmp.n165, label %if.end53, label %for.body.preheader

for.body.preheader:                               ; preds = %vector.memcheck130, %iter.check141, %vec.epilog.iter.check157, %vec.epilog.middle.block154
  %indvars.iv110.ph = phi i64 [ 0, %iter.check141 ], [ 0, %vector.memcheck130 ], [ %n.vec146, %vec.epilog.iter.check157 ], [ %n.vec163, %vec.epilog.middle.block154 ]
  %58 = xor i64 %indvars.iv110.ph, -1
  %59 = add nsw i64 %58, %wide.trip.count113
  %xtraiter177 = and i64 %wide.trip.count113, 3
  %lcmp.mod178.not = icmp eq i64 %xtraiter177, 0
  br i1 %lcmp.mod178.not, label %for.body.prol.loopexit, label %for.body.prol

for.body.prol:                                    ; preds = %for.body.preheader, %for.body.prol
  %indvars.iv110.prol = phi i64 [ %indvars.iv.next111.prol, %for.body.prol ], [ %indvars.iv110.ph, %for.body.preheader ]
  %prol.iter179 = phi i64 [ %prol.iter179.next, %for.body.prol ], [ 0, %for.body.preheader ]
  %arrayidx.prol = getelementptr inbounds %struct.CMAC_CTX_st, %struct.CMAC_CTX_st* %ctx, i64 0, i32 4, i64 %indvars.iv110.prol
  %60 = load i8, i8* %arrayidx.prol, align 1, !tbaa !11
  %arrayidx17.prol = getelementptr inbounds %struct.CMAC_CTX_st, %struct.CMAC_CTX_st* %ctx, i64 0, i32 1, i64 %indvars.iv110.prol
  %61 = load i8, i8* %arrayidx17.prol, align 1, !tbaa !11
  %xor101.prol = xor i8 %61, %60
  %arrayidx21.prol = getelementptr inbounds i8, i8* %out, i64 %indvars.iv110.prol
  store i8 %xor101.prol, i8* %arrayidx21.prol, align 1, !tbaa !11
  %indvars.iv.next111.prol = add nuw nsw i64 %indvars.iv110.prol, 1
  %prol.iter179.next = add i64 %prol.iter179, 1
  %prol.iter179.cmp.not = icmp eq i64 %prol.iter179.next, %xtraiter177
  br i1 %prol.iter179.cmp.not, label %for.body.prol.loopexit, label %for.body.prol, !llvm.loop !32

for.body.prol.loopexit:                           ; preds = %for.body.prol, %for.body.preheader
  %indvars.iv110.unr = phi i64 [ %indvars.iv110.ph, %for.body.preheader ], [ %indvars.iv.next111.prol, %for.body.prol ]
  %62 = icmp ult i64 %59, 3
  br i1 %62, label %if.end53, label %for.body

for.body:                                         ; preds = %for.body.prol.loopexit, %for.body
  %indvars.iv110 = phi i64 [ %indvars.iv.next111.3, %for.body ], [ %indvars.iv110.unr, %for.body.prol.loopexit ]
  %arrayidx = getelementptr inbounds %struct.CMAC_CTX_st, %struct.CMAC_CTX_st* %ctx, i64 0, i32 4, i64 %indvars.iv110
  %63 = load i8, i8* %arrayidx, align 1, !tbaa !11
  %arrayidx17 = getelementptr inbounds %struct.CMAC_CTX_st, %struct.CMAC_CTX_st* %ctx, i64 0, i32 1, i64 %indvars.iv110
  %64 = load i8, i8* %arrayidx17, align 1, !tbaa !11
  %xor101 = xor i8 %64, %63
  %arrayidx21 = getelementptr inbounds i8, i8* %out, i64 %indvars.iv110
  store i8 %xor101, i8* %arrayidx21, align 1, !tbaa !11
  %indvars.iv.next111 = add nuw nsw i64 %indvars.iv110, 1
  %arrayidx.1 = getelementptr inbounds %struct.CMAC_CTX_st, %struct.CMAC_CTX_st* %ctx, i64 0, i32 4, i64 %indvars.iv.next111
  %65 = load i8, i8* %arrayidx.1, align 1, !tbaa !11
  %arrayidx17.1 = getelementptr inbounds %struct.CMAC_CTX_st, %struct.CMAC_CTX_st* %ctx, i64 0, i32 1, i64 %indvars.iv.next111
  %66 = load i8, i8* %arrayidx17.1, align 1, !tbaa !11
  %xor101.1 = xor i8 %66, %65
  %arrayidx21.1 = getelementptr inbounds i8, i8* %out, i64 %indvars.iv.next111
  store i8 %xor101.1, i8* %arrayidx21.1, align 1, !tbaa !11
  %indvars.iv.next111.1 = add nuw nsw i64 %indvars.iv110, 2
  %arrayidx.2 = getelementptr inbounds %struct.CMAC_CTX_st, %struct.CMAC_CTX_st* %ctx, i64 0, i32 4, i64 %indvars.iv.next111.1
  %67 = load i8, i8* %arrayidx.2, align 1, !tbaa !11
  %arrayidx17.2 = getelementptr inbounds %struct.CMAC_CTX_st, %struct.CMAC_CTX_st* %ctx, i64 0, i32 1, i64 %indvars.iv.next111.1
  %68 = load i8, i8* %arrayidx17.2, align 1, !tbaa !11
  %xor101.2 = xor i8 %68, %67
  %arrayidx21.2 = getelementptr inbounds i8, i8* %out, i64 %indvars.iv.next111.1
  store i8 %xor101.2, i8* %arrayidx21.2, align 1, !tbaa !11
  %indvars.iv.next111.2 = add nuw nsw i64 %indvars.iv110, 3
  %arrayidx.3 = getelementptr inbounds %struct.CMAC_CTX_st, %struct.CMAC_CTX_st* %ctx, i64 0, i32 4, i64 %indvars.iv.next111.2
  %69 = load i8, i8* %arrayidx.3, align 1, !tbaa !11
  %arrayidx17.3 = getelementptr inbounds %struct.CMAC_CTX_st, %struct.CMAC_CTX_st* %ctx, i64 0, i32 1, i64 %indvars.iv.next111.2
  %70 = load i8, i8* %arrayidx17.3, align 1, !tbaa !11
  %xor101.3 = xor i8 %70, %69
  %arrayidx21.3 = getelementptr inbounds i8, i8* %out, i64 %indvars.iv.next111.2
  store i8 %xor101.3, i8* %arrayidx21.3, align 1, !tbaa !11
  %indvars.iv.next111.3 = add nuw nsw i64 %indvars.iv110, 4
  %exitcond114.not.3 = icmp eq i64 %indvars.iv.next111.3, %wide.trip.count113
  br i1 %exitcond114.not.3, label %if.end53, label %for.body, !llvm.loop !34

if.else:                                          ; preds = %if.end8
  %idxprom23 = sext i32 %2 to i64
  %arrayidx24 = getelementptr inbounds %struct.CMAC_CTX_st, %struct.CMAC_CTX_st* %ctx, i64 0, i32 4, i64 %idxprom23
  store i8 -128, i8* %arrayidx24, align 1, !tbaa !11
  %sub = sub nsw i32 %call, %2
  %cmp25 = icmp sgt i32 %sub, 1
  br i1 %cmp25, label %if.then27, label %if.end34

if.then27:                                        ; preds = %if.else
  %add.ptr29 = getelementptr inbounds i8, i8* %arrayidx24, i64 1
  %sub31 = add nsw i32 %sub, -1
  %71 = zext i32 %sub31 to i64
  %call33 = tail call i8* @memset(i8* noundef nonnull %add.ptr29, i32 noundef 0, i64 noundef %71) #6
  br label %if.end34

if.end34:                                         ; preds = %if.then27, %if.else
  %cmp36104.not = icmp eq i32 %call, 0
  br i1 %cmp36104.not, label %if.end53, label %iter.check

iter.check:                                       ; preds = %if.end34
  %wide.trip.count = zext i32 %call to i64
  %min.iters.check = icmp ult i32 %call, 8
  br i1 %min.iters.check, label %for.body38.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %scevgep = getelementptr i8, i8* %out, i64 %wide.trip.count
  %scevgep117 = getelementptr %struct.CMAC_CTX_st, %struct.CMAC_CTX_st* %ctx, i64 0, i32 2, i64 0
  %72 = add nuw nsw i64 %wide.trip.count, 104
  %uglygep = getelementptr i8, i8* %ctx118, i64 %72
  %bound0 = icmp ugt i8* %uglygep, %out
  %bound1 = icmp ult i8* %scevgep117, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %for.body38.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check119 = icmp ult i32 %call, 32
  br i1 %min.iters.check119, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.vec = and i64 %wide.trip.count, 4294967264
  %73 = add nsw i64 %n.vec, -32
  %74 = lshr exact i64 %73, 5
  %75 = add nuw nsw i64 %74, 1
  %xtraiter = and i64 %75, 1
  %76 = icmp eq i64 %73, 0
  br i1 %76, label %middle.block.unr-lcssa, label %vector.ph.new

vector.ph.new:                                    ; preds = %vector.ph
  %unroll_iter = and i64 %75, 1152921504606846974
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph.new
  %index = phi i64 [ 0, %vector.ph.new ], [ %index.next.1, %vector.body ]
  %niter = phi i64 [ 0, %vector.ph.new ], [ %niter.next.1, %vector.body ]
  %77 = getelementptr inbounds %struct.CMAC_CTX_st, %struct.CMAC_CTX_st* %ctx, i64 0, i32 4, i64 %index
  %78 = bitcast i8* %77 to <16 x i8>*
  %wide.load = load <16 x i8>, <16 x i8>* %78, align 1, !tbaa !11, !alias.scope !35
  %79 = getelementptr inbounds i8, i8* %77, i64 16
  %80 = bitcast i8* %79 to <16 x i8>*
  %wide.load120 = load <16 x i8>, <16 x i8>* %80, align 1, !tbaa !11, !alias.scope !35
  %81 = getelementptr inbounds %struct.CMAC_CTX_st, %struct.CMAC_CTX_st* %ctx, i64 0, i32 2, i64 %index
  %82 = bitcast i8* %81 to <16 x i8>*
  %wide.load121 = load <16 x i8>, <16 x i8>* %82, align 1, !tbaa !11, !alias.scope !35
  %83 = getelementptr inbounds i8, i8* %81, i64 16
  %84 = bitcast i8* %83 to <16 x i8>*
  %wide.load122 = load <16 x i8>, <16 x i8>* %84, align 1, !tbaa !11, !alias.scope !35
  %85 = xor <16 x i8> %wide.load121, %wide.load
  %86 = xor <16 x i8> %wide.load122, %wide.load120
  %87 = getelementptr inbounds i8, i8* %out, i64 %index
  %88 = bitcast i8* %87 to <16 x i8>*
  store <16 x i8> %85, <16 x i8>* %88, align 1, !tbaa !11, !alias.scope !38, !noalias !35
  %89 = getelementptr inbounds i8, i8* %87, i64 16
  %90 = bitcast i8* %89 to <16 x i8>*
  store <16 x i8> %86, <16 x i8>* %90, align 1, !tbaa !11, !alias.scope !38, !noalias !35
  %index.next = or i64 %index, 32
  %91 = getelementptr inbounds %struct.CMAC_CTX_st, %struct.CMAC_CTX_st* %ctx, i64 0, i32 4, i64 %index.next
  %92 = bitcast i8* %91 to <16 x i8>*
  %wide.load.1 = load <16 x i8>, <16 x i8>* %92, align 1, !tbaa !11, !alias.scope !35
  %93 = getelementptr inbounds i8, i8* %91, i64 16
  %94 = bitcast i8* %93 to <16 x i8>*
  %wide.load120.1 = load <16 x i8>, <16 x i8>* %94, align 1, !tbaa !11, !alias.scope !35
  %95 = getelementptr inbounds %struct.CMAC_CTX_st, %struct.CMAC_CTX_st* %ctx, i64 0, i32 2, i64 %index.next
  %96 = bitcast i8* %95 to <16 x i8>*
  %wide.load121.1 = load <16 x i8>, <16 x i8>* %96, align 1, !tbaa !11, !alias.scope !35
  %97 = getelementptr inbounds i8, i8* %95, i64 16
  %98 = bitcast i8* %97 to <16 x i8>*
  %wide.load122.1 = load <16 x i8>, <16 x i8>* %98, align 1, !tbaa !11, !alias.scope !35
  %99 = xor <16 x i8> %wide.load121.1, %wide.load.1
  %100 = xor <16 x i8> %wide.load122.1, %wide.load120.1
  %101 = getelementptr inbounds i8, i8* %out, i64 %index.next
  %102 = bitcast i8* %101 to <16 x i8>*
  store <16 x i8> %99, <16 x i8>* %102, align 1, !tbaa !11, !alias.scope !38, !noalias !35
  %103 = getelementptr inbounds i8, i8* %101, i64 16
  %104 = bitcast i8* %103 to <16 x i8>*
  store <16 x i8> %100, <16 x i8>* %104, align 1, !tbaa !11, !alias.scope !38, !noalias !35
  %index.next.1 = add nuw i64 %index, 64
  %niter.next.1 = add i64 %niter, 2
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %middle.block.unr-lcssa, label %vector.body, !llvm.loop !40

middle.block.unr-lcssa:                           ; preds = %vector.body, %vector.ph
  %index.unr = phi i64 [ 0, %vector.ph ], [ %index.next.1, %vector.body ]
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %middle.block, label %vector.body.epil

vector.body.epil:                                 ; preds = %middle.block.unr-lcssa
  %105 = getelementptr inbounds %struct.CMAC_CTX_st, %struct.CMAC_CTX_st* %ctx, i64 0, i32 4, i64 %index.unr
  %106 = bitcast i8* %105 to <16 x i8>*
  %wide.load.epil = load <16 x i8>, <16 x i8>* %106, align 1, !tbaa !11, !alias.scope !35
  %107 = getelementptr inbounds i8, i8* %105, i64 16
  %108 = bitcast i8* %107 to <16 x i8>*
  %wide.load120.epil = load <16 x i8>, <16 x i8>* %108, align 1, !tbaa !11, !alias.scope !35
  %109 = getelementptr inbounds %struct.CMAC_CTX_st, %struct.CMAC_CTX_st* %ctx, i64 0, i32 2, i64 %index.unr
  %110 = bitcast i8* %109 to <16 x i8>*
  %wide.load121.epil = load <16 x i8>, <16 x i8>* %110, align 1, !tbaa !11, !alias.scope !35
  %111 = getelementptr inbounds i8, i8* %109, i64 16
  %112 = bitcast i8* %111 to <16 x i8>*
  %wide.load122.epil = load <16 x i8>, <16 x i8>* %112, align 1, !tbaa !11, !alias.scope !35
  %113 = xor <16 x i8> %wide.load121.epil, %wide.load.epil
  %114 = xor <16 x i8> %wide.load122.epil, %wide.load120.epil
  %115 = getelementptr inbounds i8, i8* %out, i64 %index.unr
  %116 = bitcast i8* %115 to <16 x i8>*
  store <16 x i8> %113, <16 x i8>* %116, align 1, !tbaa !11, !alias.scope !38, !noalias !35
  %117 = getelementptr inbounds i8, i8* %115, i64 16
  %118 = bitcast i8* %117 to <16 x i8>*
  store <16 x i8> %114, <16 x i8>* %118, align 1, !tbaa !11, !alias.scope !38, !noalias !35
  br label %middle.block

middle.block:                                     ; preds = %middle.block.unr-lcssa, %vector.body.epil
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %if.end53, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %n.vec.remaining = and i64 %wide.trip.count, 24
  %min.epilog.iters.check = icmp eq i64 %n.vec.remaining, 0
  br i1 %min.epilog.iters.check, label %for.body38.preheader, label %vec.epilog.ph

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec124 = and i64 %wide.trip.count, 4294967288
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index126 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next129, %vec.epilog.vector.body ]
  %119 = getelementptr inbounds %struct.CMAC_CTX_st, %struct.CMAC_CTX_st* %ctx, i64 0, i32 4, i64 %index126
  %120 = bitcast i8* %119 to <8 x i8>*
  %wide.load127 = load <8 x i8>, <8 x i8>* %120, align 1, !tbaa !11
  %121 = getelementptr inbounds %struct.CMAC_CTX_st, %struct.CMAC_CTX_st* %ctx, i64 0, i32 2, i64 %index126
  %122 = bitcast i8* %121 to <8 x i8>*
  %wide.load128 = load <8 x i8>, <8 x i8>* %122, align 1, !tbaa !11
  %123 = xor <8 x i8> %wide.load128, %wide.load127
  %124 = getelementptr inbounds i8, i8* %out, i64 %index126
  %125 = bitcast i8* %124 to <8 x i8>*
  store <8 x i8> %123, <8 x i8>* %125, align 1, !tbaa !11
  %index.next129 = add nuw i64 %index126, 8
  %126 = icmp eq i64 %index.next129, %n.vec124
  br i1 %126, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !41

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n125 = icmp eq i64 %n.vec124, %wide.trip.count
  br i1 %cmp.n125, label %if.end53, label %for.body38.preheader

for.body38.preheader:                             ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec124, %vec.epilog.middle.block ]
  %127 = xor i64 %indvars.iv.ph, -1
  %128 = add nsw i64 %127, %wide.trip.count
  %xtraiter171 = and i64 %wide.trip.count, 3
  %lcmp.mod172.not = icmp eq i64 %xtraiter171, 0
  br i1 %lcmp.mod172.not, label %for.body38.prol.loopexit, label %for.body38.prol

for.body38.prol:                                  ; preds = %for.body38.preheader, %for.body38.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %for.body38.prol ], [ %indvars.iv.ph, %for.body38.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %for.body38.prol ], [ 0, %for.body38.preheader ]
  %arrayidx41.prol = getelementptr inbounds %struct.CMAC_CTX_st, %struct.CMAC_CTX_st* %ctx, i64 0, i32 4, i64 %indvars.iv.prol
  %129 = load i8, i8* %arrayidx41.prol, align 1, !tbaa !11
  %arrayidx44.prol = getelementptr inbounds %struct.CMAC_CTX_st, %struct.CMAC_CTX_st* %ctx, i64 0, i32 2, i64 %indvars.iv.prol
  %130 = load i8, i8* %arrayidx44.prol, align 1, !tbaa !11
  %xor46100.prol = xor i8 %130, %129
  %arrayidx49.prol = getelementptr inbounds i8, i8* %out, i64 %indvars.iv.prol
  store i8 %xor46100.prol, i8* %arrayidx49.prol, align 1, !tbaa !11
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1
  %prol.iter.next = add i64 %prol.iter, 1
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter171
  br i1 %prol.iter.cmp.not, label %for.body38.prol.loopexit, label %for.body38.prol, !llvm.loop !42

for.body38.prol.loopexit:                         ; preds = %for.body38.prol, %for.body38.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %for.body38.preheader ], [ %indvars.iv.next.prol, %for.body38.prol ]
  %131 = icmp ult i64 %128, 3
  br i1 %131, label %if.end53, label %for.body38

for.body38:                                       ; preds = %for.body38.prol.loopexit, %for.body38
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %for.body38 ], [ %indvars.iv.unr, %for.body38.prol.loopexit ]
  %arrayidx41 = getelementptr inbounds %struct.CMAC_CTX_st, %struct.CMAC_CTX_st* %ctx, i64 0, i32 4, i64 %indvars.iv
  %132 = load i8, i8* %arrayidx41, align 1, !tbaa !11
  %arrayidx44 = getelementptr inbounds %struct.CMAC_CTX_st, %struct.CMAC_CTX_st* %ctx, i64 0, i32 2, i64 %indvars.iv
  %133 = load i8, i8* %arrayidx44, align 1, !tbaa !11
  %xor46100 = xor i8 %133, %132
  %arrayidx49 = getelementptr inbounds i8, i8* %out, i64 %indvars.iv
  store i8 %xor46100, i8* %arrayidx49, align 1, !tbaa !11
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %arrayidx41.1 = getelementptr inbounds %struct.CMAC_CTX_st, %struct.CMAC_CTX_st* %ctx, i64 0, i32 4, i64 %indvars.iv.next
  %134 = load i8, i8* %arrayidx41.1, align 1, !tbaa !11
  %arrayidx44.1 = getelementptr inbounds %struct.CMAC_CTX_st, %struct.CMAC_CTX_st* %ctx, i64 0, i32 2, i64 %indvars.iv.next
  %135 = load i8, i8* %arrayidx44.1, align 1, !tbaa !11
  %xor46100.1 = xor i8 %135, %134
  %arrayidx49.1 = getelementptr inbounds i8, i8* %out, i64 %indvars.iv.next
  store i8 %xor46100.1, i8* %arrayidx49.1, align 1, !tbaa !11
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2
  %arrayidx41.2 = getelementptr inbounds %struct.CMAC_CTX_st, %struct.CMAC_CTX_st* %ctx, i64 0, i32 4, i64 %indvars.iv.next.1
  %136 = load i8, i8* %arrayidx41.2, align 1, !tbaa !11
  %arrayidx44.2 = getelementptr inbounds %struct.CMAC_CTX_st, %struct.CMAC_CTX_st* %ctx, i64 0, i32 2, i64 %indvars.iv.next.1
  %137 = load i8, i8* %arrayidx44.2, align 1, !tbaa !11
  %xor46100.2 = xor i8 %137, %136
  %arrayidx49.2 = getelementptr inbounds i8, i8* %out, i64 %indvars.iv.next.1
  store i8 %xor46100.2, i8* %arrayidx49.2, align 1, !tbaa !11
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3
  %arrayidx41.3 = getelementptr inbounds %struct.CMAC_CTX_st, %struct.CMAC_CTX_st* %ctx, i64 0, i32 4, i64 %indvars.iv.next.2
  %138 = load i8, i8* %arrayidx41.3, align 1, !tbaa !11
  %arrayidx44.3 = getelementptr inbounds %struct.CMAC_CTX_st, %struct.CMAC_CTX_st* %ctx, i64 0, i32 2, i64 %indvars.iv.next.2
  %139 = load i8, i8* %arrayidx44.3, align 1, !tbaa !11
  %xor46100.3 = xor i8 %139, %138
  %arrayidx49.3 = getelementptr inbounds i8, i8* %out, i64 %indvars.iv.next.2
  store i8 %xor46100.3, i8* %arrayidx49.3, align 1, !tbaa !11
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond.not.3, label %if.end53, label %for.body38, !llvm.loop !43

if.end53:                                         ; preds = %for.body38.prol.loopexit, %for.body38, %for.body.prol.loopexit, %for.body, %middle.block, %vec.epilog.middle.block, %middle.block137, %vec.epilog.middle.block154, %if.end34, %for.cond.preheader
  %140 = load %struct.evp_cipher_ctx_st*, %struct.evp_cipher_ctx_st** %cctx, align 8, !tbaa !4
  %call55 = tail call i32 @EVP_Cipher(%struct.evp_cipher_ctx_st* noundef %140, i8* noundef nonnull %out, i8* noundef nonnull %out, i32 noundef %call) #6
  %tobool56.not = icmp eq i32 %call55, 0
  br i1 %tobool56.not, label %if.then57, label %cleanup

if.then57:                                        ; preds = %if.end53
  %conv58 = sext i32 %call to i64
  tail call void @OPENSSL_cleanse(i8* noundef nonnull %out, i64 noundef %conv58) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end53, %if.end6, %if.end, %entry, %if.then57
  %retval.0 = phi i32 [ 0, %if.then57 ], [ 0, %entry ], [ 0, %if.end ], [ 1, %if.end6 ], [ 1, %if.end53 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @CMAC_resume(%struct.CMAC_CTX_st* noundef %ctx) local_unnamed_addr #0 {
entry:
  %nlast_block = getelementptr inbounds %struct.CMAC_CTX_st, %struct.CMAC_CTX_st* %ctx, i64 0, i32 5
  %0 = load i32, i32* %nlast_block, align 8, !tbaa !10
  %cmp = icmp eq i32 %0, -1
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %cctx = getelementptr inbounds %struct.CMAC_CTX_st, %struct.CMAC_CTX_st* %ctx, i64 0, i32 0
  %1 = load %struct.evp_cipher_ctx_st*, %struct.evp_cipher_ctx_st** %cctx, align 8, !tbaa !4
  %arraydecay = getelementptr inbounds %struct.CMAC_CTX_st, %struct.CMAC_CTX_st* %ctx, i64 0, i32 3, i64 0
  %call = tail call i32 @EVP_EncryptInit_ex(%struct.evp_cipher_ctx_st* noundef %1, %struct.evp_cipher_st* noundef null, %struct.engine_st* noundef null, i8* noundef null, i8* noundef nonnull %arraydecay) #6
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %call, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.fshl.i8(i8, i8, i8) #5

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare <16 x i8> @llvm.fshl.v16i8(<16 x i8>, <16 x i8>, <16 x i8>) #5

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree noinline nosync nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nobuiltin nounwind "no-builtins" }
attributes #7 = { nobuiltin "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{!"clang version 14.0.0"}
!4 = !{!5, !6, i64 0}
!5 = !{!"CMAC_CTX_st", !6, i64 0, !7, i64 8, !7, i64 40, !7, i64 72, !7, i64 104, !9, i64 136}
!6 = !{!"any pointer", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!"int", !7, i64 0}
!10 = !{!5, !9, i64 136}
!11 = !{!7, !7, i64 0}
!12 = !{!13}
!13 = distinct !{!13, !14}
!14 = distinct !{!14, !"LVerDomain"}
!15 = !{!16}
!16 = distinct !{!16, !14}
!17 = distinct !{!17, !18, !19}
!18 = !{!"llvm.loop.mustprogress"}
!19 = !{!"llvm.loop.isvectorized", i32 1}
!20 = distinct !{!20, !18, !19}
!21 = distinct !{!21, !18}
!22 = !{!23, !23, i64 0}
!23 = !{!"long", !7, i64 0}
!24 = !{!25}
!25 = distinct !{!25, !26}
!26 = distinct !{!26, !"LVerDomain"}
!27 = !{!28}
!28 = distinct !{!28, !26}
!29 = distinct !{!29, !18, !19}
!30 = distinct !{!30, !18, !19, !31}
!31 = !{!"llvm.loop.unroll.runtime.disable"}
!32 = distinct !{!32, !33}
!33 = !{!"llvm.loop.unroll.disable"}
!34 = distinct !{!34, !18, !19}
!35 = !{!36}
!36 = distinct !{!36, !37}
!37 = distinct !{!37, !"LVerDomain"}
!38 = !{!39}
!39 = distinct !{!39, !37}
!40 = distinct !{!40, !18, !19}
!41 = distinct !{!41, !18, !19, !31}
!42 = distinct !{!42, !33}
!43 = distinct !{!43, !18, !19}
