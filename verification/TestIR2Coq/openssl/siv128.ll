; ModuleID = 'crypto/modes/siv128.c'
source_filename = "crypto/modes/siv128.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.siv128_context = type { %union.siv_block_u, %union.siv_block_u, %struct.evp_cipher_ctx_st*, %struct.evp_mac_st*, %struct.evp_mac_ctx_st*, i32, i32 }
%union.siv_block_u = type { [2 x i64] }
%struct.evp_cipher_ctx_st = type opaque
%struct.evp_mac_st = type opaque
%struct.evp_mac_ctx_st = type opaque
%struct.evp_cipher_st = type opaque
%struct.ossl_lib_ctx_st = type opaque
%struct.ossl_param_st = type { i8*, i32, i8*, i64, i64 }
%struct.engine_st = type opaque

@.str = private unnamed_addr constant [22 x i8] c"crypto/modes/siv128.c\00", align 1
@ossl_siv128_init.zero = internal constant [16 x i8] zeroinitializer, align 16
@.str.1 = private unnamed_addr constant [7 x i8] c"cipher\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"key\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"CMAC\00", align 1

; Function Attrs: noinline nounwind uwtable
define %struct.siv128_context* @ossl_siv128_new(i8* noundef %key, i32 noundef %klen, %struct.evp_cipher_st* noundef %cbc, %struct.evp_cipher_st* noundef %ctr, %struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef %propq) local_unnamed_addr #0 {
entry:
  %call = tail call i8* @CRYPTO_malloc(i64 noundef 64, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 150) #13
  %0 = bitcast i8* %call to %struct.siv128_context*
  %cmp.not = icmp eq i8* %call, null
  br i1 %cmp.not, label %cleanup, label %if.then

if.then:                                          ; preds = %entry
  %call1 = tail call i32 @ossl_siv128_init(%struct.siv128_context* noundef nonnull %0, i8* noundef %key, i32 noundef %klen, %struct.evp_cipher_st* noundef %cbc, %struct.evp_cipher_st* noundef %ctr, %struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef %propq) #14
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %cleanup

if.end:                                           ; preds = %if.then
  tail call void @CRYPTO_free(i8* noundef nonnull %call, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 154) #13
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end, %if.then
  %retval.0 = phi %struct.siv128_context* [ %0, %if.then ], [ null, %if.end ], [ null, %entry ]
  ret %struct.siv128_context* %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

declare i8* @CRYPTO_malloc(i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_siv128_init(%struct.siv128_context* noundef %ctx, i8* noundef %key, i32 noundef %klen, %struct.evp_cipher_st* noundef %cbc, %struct.evp_cipher_st* noundef %ctr, %struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef %propq) local_unnamed_addr #0 {
entry:
  %out_len = alloca i64, align 8
  %params = alloca [3 x %struct.ossl_param_st], align 16
  %tmp12 = alloca %struct.ossl_param_st, align 8
  %tmp14 = alloca %struct.ossl_param_st, align 8
  %0 = bitcast i64* %out_len to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #15
  store i64 16, i64* %out_len, align 8, !tbaa !4
  %1 = bitcast [3 x %struct.ossl_param_st]* %params to i8*
  call void @llvm.lifetime.start.p0i8(i64 120, i8* nonnull %1) #15
  %cmp = icmp eq %struct.siv128_context* %ctx, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %2 = bitcast %struct.siv128_context* %ctx to i8*
  %call = tail call i8* @memset(i8* noundef nonnull %2, i32 noundef 0, i64 noundef 16) #13
  %cipher_ctx = getelementptr inbounds %struct.siv128_context, %struct.siv128_context* %ctx, i64 0, i32 2
  %3 = load %struct.evp_cipher_ctx_st*, %struct.evp_cipher_ctx_st** %cipher_ctx, align 8, !tbaa !8
  tail call void @EVP_CIPHER_CTX_free(%struct.evp_cipher_ctx_st* noundef %3) #13
  %mac_ctx_init = getelementptr inbounds %struct.siv128_context, %struct.siv128_context* %ctx, i64 0, i32 4
  %4 = load %struct.evp_mac_ctx_st*, %struct.evp_mac_ctx_st** %mac_ctx_init, align 8, !tbaa !12
  tail call void @EVP_MAC_CTX_free(%struct.evp_mac_ctx_st* noundef %4) #13
  %mac = getelementptr inbounds %struct.siv128_context, %struct.siv128_context* %ctx, i64 0, i32 3
  %5 = load %struct.evp_mac_st*, %struct.evp_mac_st** %mac, align 8, !tbaa !13
  tail call void @EVP_MAC_free(%struct.evp_mac_st* noundef %5) #13
  store %struct.evp_mac_st* null, %struct.evp_mac_st** %mac, align 8, !tbaa !13
  store %struct.evp_cipher_ctx_st* null, %struct.evp_cipher_ctx_st** %cipher_ctx, align 8, !tbaa !8
  store %struct.evp_mac_ctx_st* null, %struct.evp_mac_ctx_st** %mac_ctx_init, align 8, !tbaa !12
  %cmp4 = icmp eq i8* %key, null
  %cmp5 = icmp eq %struct.evp_cipher_st* %cbc, null
  %or.cond = or i1 %cmp4, %cmp5
  %cmp7 = icmp eq %struct.evp_cipher_st* %ctr, null
  %or.cond58 = or i1 %or.cond, %cmp7
  br i1 %or.cond58, label %cleanup, label %if.end9

if.end9:                                          ; preds = %if.end
  %call10 = tail call i8* @EVP_CIPHER_get0_name(%struct.evp_cipher_st* noundef nonnull %cbc) #13
  %arrayidx = getelementptr inbounds [3 x %struct.ossl_param_st], [3 x %struct.ossl_param_st]* %params, i64 0, i64 0
  %params89 = getelementptr inbounds [3 x %struct.ossl_param_st], [3 x %struct.ossl_param_st]* %params, i64 0, i64 0
  call void @OSSL_PARAM_construct_utf8_string(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %params89, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* noundef %call10, i64 noundef 0) #13
  %arrayidx11 = getelementptr inbounds [3 x %struct.ossl_param_st], [3 x %struct.ossl_param_st]* %params, i64 0, i64 1
  %6 = bitcast %struct.ossl_param_st* %tmp12 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %6) #15
  %conv = sext i32 %klen to i64
  call void @OSSL_PARAM_construct_octet_string(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %tmp12, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* noundef nonnull %key, i64 noundef %conv) #13
  %7 = bitcast %struct.ossl_param_st* %arrayidx11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(40) %7, i8* noundef nonnull align 8 dereferenceable(40) %6, i64 40, i1 false), !tbaa.struct !14
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %6) #15
  %arrayidx13 = getelementptr inbounds [3 x %struct.ossl_param_st], [3 x %struct.ossl_param_st]* %params, i64 0, i64 2
  %8 = bitcast %struct.ossl_param_st* %tmp14 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %8) #15
  call void @OSSL_PARAM_construct_end(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %tmp14) #13
  %9 = bitcast %struct.ossl_param_st* %arrayidx13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(40) %9, i8* noundef nonnull align 8 dereferenceable(40) %8, i64 40, i1 false), !tbaa.struct !14
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %8) #15
  %call15 = call %struct.evp_cipher_ctx_st* @EVP_CIPHER_CTX_new() #13
  store %struct.evp_cipher_ctx_st* %call15, %struct.evp_cipher_ctx_st** %cipher_ctx, align 8, !tbaa !8
  %cmp17 = icmp eq %struct.evp_cipher_ctx_st* %call15, null
  br i1 %cmp17, label %if.then50, label %lor.lhs.false19

lor.lhs.false19:                                  ; preds = %if.end9
  %call20 = call %struct.evp_mac_st* @EVP_MAC_fetch(%struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* noundef %propq) #13
  store %struct.evp_mac_st* %call20, %struct.evp_mac_st** %mac, align 8, !tbaa !13
  %cmp22 = icmp eq %struct.evp_mac_st* %call20, null
  br i1 %cmp22, label %if.then50, label %lor.lhs.false24

lor.lhs.false24:                                  ; preds = %lor.lhs.false19
  %call26 = call %struct.evp_mac_ctx_st* @EVP_MAC_CTX_new(%struct.evp_mac_st* noundef nonnull %call20) #13
  store %struct.evp_mac_ctx_st* %call26, %struct.evp_mac_ctx_st** %mac_ctx_init, align 8, !tbaa !12
  %cmp28 = icmp eq %struct.evp_mac_ctx_st* %call26, null
  br i1 %cmp28, label %if.then50, label %lor.lhs.false30

lor.lhs.false30:                                  ; preds = %lor.lhs.false24
  %call32 = call i32 @EVP_MAC_CTX_set_params(%struct.evp_mac_ctx_st* noundef nonnull %call26, %struct.ossl_param_st* noundef nonnull %arrayidx) #13
  %tobool.not = icmp eq i32 %call32, 0
  br i1 %tobool.not, label %if.then50, label %lor.lhs.false33

lor.lhs.false33:                                  ; preds = %lor.lhs.false30
  %10 = load %struct.evp_cipher_ctx_st*, %struct.evp_cipher_ctx_st** %cipher_ctx, align 8, !tbaa !8
  %add.ptr = getelementptr inbounds i8, i8* %key, i64 %conv
  %call35 = call i32 @EVP_EncryptInit_ex(%struct.evp_cipher_ctx_st* noundef %10, %struct.evp_cipher_st* noundef nonnull %ctr, %struct.engine_st* noundef null, i8* noundef %add.ptr, i8* noundef null) #13
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %if.then50, label %lor.lhs.false37

lor.lhs.false37:                                  ; preds = %lor.lhs.false33
  %11 = load %struct.evp_mac_ctx_st*, %struct.evp_mac_ctx_st** %mac_ctx_init, align 8, !tbaa !12
  %call39 = call %struct.evp_mac_ctx_st* @EVP_MAC_CTX_dup(%struct.evp_mac_ctx_st* noundef %11) #13
  %cmp40 = icmp eq %struct.evp_mac_ctx_st* %call39, null
  br i1 %cmp40, label %if.then50, label %lor.lhs.false42

lor.lhs.false42:                                  ; preds = %lor.lhs.false37
  %call43 = call i32 @EVP_MAC_update(%struct.evp_mac_ctx_st* noundef nonnull %call39, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @ossl_siv128_init.zero, i64 0, i64 0), i64 noundef 16) #13
  %tobool44.not = icmp eq i32 %call43, 0
  br i1 %tobool44.not, label %if.then50, label %lor.lhs.false45

lor.lhs.false45:                                  ; preds = %lor.lhs.false42
  %call48 = call i32 @EVP_MAC_final(%struct.evp_mac_ctx_st* noundef nonnull %call39, i8* noundef nonnull %2, i64* noundef nonnull %out_len, i64 noundef 16) #13
  %tobool49.not = icmp eq i32 %call48, 0
  br i1 %tobool49.not, label %if.then50, label %if.end54

if.then50:                                        ; preds = %lor.lhs.false45, %lor.lhs.false42, %lor.lhs.false37, %lor.lhs.false33, %lor.lhs.false30, %lor.lhs.false24, %lor.lhs.false19, %if.end9
  %mac_ctx.0 = phi %struct.evp_mac_ctx_st* [ null, %if.end9 ], [ null, %lor.lhs.false19 ], [ null, %lor.lhs.false24 ], [ null, %lor.lhs.false37 ], [ %call39, %lor.lhs.false45 ], [ %call39, %lor.lhs.false42 ], [ null, %lor.lhs.false33 ], [ null, %lor.lhs.false30 ]
  %12 = load %struct.evp_cipher_ctx_st*, %struct.evp_cipher_ctx_st** %cipher_ctx, align 8, !tbaa !8
  call void @EVP_CIPHER_CTX_free(%struct.evp_cipher_ctx_st* noundef %12) #13
  %13 = load %struct.evp_mac_ctx_st*, %struct.evp_mac_ctx_st** %mac_ctx_init, align 8, !tbaa !12
  call void @EVP_MAC_CTX_free(%struct.evp_mac_ctx_st* noundef %13) #13
  call void @EVP_MAC_CTX_free(%struct.evp_mac_ctx_st* noundef %mac_ctx.0) #13
  %14 = load %struct.evp_mac_st*, %struct.evp_mac_st** %mac, align 8, !tbaa !13
  call void @EVP_MAC_free(%struct.evp_mac_st* noundef %14) #13
  br label %cleanup

if.end54:                                         ; preds = %lor.lhs.false45
  call void @EVP_MAC_CTX_free(%struct.evp_mac_ctx_st* noundef nonnull %call39) #13
  %final_ret = getelementptr inbounds %struct.siv128_context, %struct.siv128_context* %ctx, i64 0, i32 5
  store i32 -1, i32* %final_ret, align 8, !tbaa !17
  %crypto_ok = getelementptr inbounds %struct.siv128_context, %struct.siv128_context* %ctx, i64 0, i32 6
  store i32 1, i32* %crypto_ok, align 4, !tbaa !18
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry, %if.end54, %if.then50
  %retval.0 = phi i32 [ 0, %if.then50 ], [ 1, %if.end54 ], [ 0, %entry ], [ 0, %if.end ]
  call void @llvm.lifetime.end.p0i8(i64 120, i8* nonnull %1) #15
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #15
  ret i32 %retval.0
}

declare void @CRYPTO_free(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: nounwind
declare i8* @memset(i8* noundef, i32 noundef, i64 noundef) local_unnamed_addr #3

declare void @EVP_CIPHER_CTX_free(%struct.evp_cipher_ctx_st* noundef) local_unnamed_addr #2

declare void @EVP_MAC_CTX_free(%struct.evp_mac_ctx_st* noundef) local_unnamed_addr #2

declare void @EVP_MAC_free(%struct.evp_mac_st* noundef) local_unnamed_addr #2

declare i8* @EVP_CIPHER_get0_name(%struct.evp_cipher_st* noundef) local_unnamed_addr #2

declare void @OSSL_PARAM_construct_utf8_string(%struct.ossl_param_st* sret(%struct.ossl_param_st) align 8, i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #4

declare void @OSSL_PARAM_construct_octet_string(%struct.ossl_param_st* sret(%struct.ossl_param_st) align 8, i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #2

declare void @OSSL_PARAM_construct_end(%struct.ossl_param_st* sret(%struct.ossl_param_st) align 8) local_unnamed_addr #2

declare %struct.evp_cipher_ctx_st* @EVP_CIPHER_CTX_new() local_unnamed_addr #2

declare %struct.evp_mac_st* @EVP_MAC_fetch(%struct.ossl_lib_ctx_st* noundef, i8* noundef, i8* noundef) local_unnamed_addr #2

declare %struct.evp_mac_ctx_st* @EVP_MAC_CTX_new(%struct.evp_mac_st* noundef) local_unnamed_addr #2

declare i32 @EVP_MAC_CTX_set_params(%struct.evp_mac_ctx_st* noundef, %struct.ossl_param_st* noundef) local_unnamed_addr #2

declare i32 @EVP_EncryptInit_ex(%struct.evp_cipher_ctx_st* noundef, %struct.evp_cipher_st* noundef, %struct.engine_st* noundef, i8* noundef, i8* noundef) local_unnamed_addr #2

declare %struct.evp_mac_ctx_st* @EVP_MAC_CTX_dup(%struct.evp_mac_ctx_st* noundef) local_unnamed_addr #2

declare i32 @EVP_MAC_update(%struct.evp_mac_ctx_st* noundef, i8* noundef, i64 noundef) local_unnamed_addr #2

declare i32 @EVP_MAC_final(%struct.evp_mac_ctx_st* noundef, i8* noundef, i64* noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_siv128_copy_ctx(%struct.siv128_context* noundef %dest, %struct.siv128_context* noundef %src) local_unnamed_addr #0 {
entry:
  %0 = bitcast %struct.siv128_context* %dest to i8*
  %1 = bitcast %struct.siv128_context* %src to i8*
  %call = tail call i8* @memcpy(i8* noundef %0, i8* noundef %1, i64 noundef 16) #13
  %cipher_ctx = getelementptr inbounds %struct.siv128_context, %struct.siv128_context* %dest, i64 0, i32 2
  %2 = load %struct.evp_cipher_ctx_st*, %struct.evp_cipher_ctx_st** %cipher_ctx, align 8, !tbaa !8
  %cmp = icmp eq %struct.evp_cipher_ctx_st* %2, null
  br i1 %cmp, label %if.then, label %if.end7

if.then:                                          ; preds = %entry
  %call2 = tail call %struct.evp_cipher_ctx_st* @EVP_CIPHER_CTX_new() #13
  store %struct.evp_cipher_ctx_st* %call2, %struct.evp_cipher_ctx_st** %cipher_ctx, align 8, !tbaa !8
  %cmp5 = icmp eq %struct.evp_cipher_ctx_st* %call2, null
  br i1 %cmp5, label %return, label %if.end7

if.end7:                                          ; preds = %if.then, %entry
  %3 = phi %struct.evp_cipher_ctx_st* [ %call2, %if.then ], [ %2, %entry ]
  %cipher_ctx9 = getelementptr inbounds %struct.siv128_context, %struct.siv128_context* %src, i64 0, i32 2
  %4 = load %struct.evp_cipher_ctx_st*, %struct.evp_cipher_ctx_st** %cipher_ctx9, align 8, !tbaa !8
  %call10 = tail call i32 @EVP_CIPHER_CTX_copy(%struct.evp_cipher_ctx_st* noundef nonnull %3, %struct.evp_cipher_ctx_st* noundef %4) #13
  %tobool.not = icmp eq i32 %call10, 0
  br i1 %tobool.not, label %return, label %if.end12

if.end12:                                         ; preds = %if.end7
  %mac_ctx_init = getelementptr inbounds %struct.siv128_context, %struct.siv128_context* %dest, i64 0, i32 4
  %5 = load %struct.evp_mac_ctx_st*, %struct.evp_mac_ctx_st** %mac_ctx_init, align 8, !tbaa !12
  tail call void @EVP_MAC_CTX_free(%struct.evp_mac_ctx_st* noundef %5) #13
  %mac_ctx_init13 = getelementptr inbounds %struct.siv128_context, %struct.siv128_context* %src, i64 0, i32 4
  %6 = load %struct.evp_mac_ctx_st*, %struct.evp_mac_ctx_st** %mac_ctx_init13, align 8, !tbaa !12
  %call14 = tail call %struct.evp_mac_ctx_st* @EVP_MAC_CTX_dup(%struct.evp_mac_ctx_st* noundef %6) #13
  store %struct.evp_mac_ctx_st* %call14, %struct.evp_mac_ctx_st** %mac_ctx_init, align 8, !tbaa !12
  %cmp17 = icmp eq %struct.evp_mac_ctx_st* %call14, null
  br i1 %cmp17, label %return, label %if.end19

if.end19:                                         ; preds = %if.end12
  %mac = getelementptr inbounds %struct.siv128_context, %struct.siv128_context* %src, i64 0, i32 3
  %7 = load %struct.evp_mac_st*, %struct.evp_mac_st** %mac, align 8, !tbaa !13
  %mac20 = getelementptr inbounds %struct.siv128_context, %struct.siv128_context* %dest, i64 0, i32 3
  store %struct.evp_mac_st* %7, %struct.evp_mac_st** %mac20, align 8, !tbaa !13
  %cmp22.not = icmp eq %struct.evp_mac_st* %7, null
  br i1 %cmp22.not, label %return, label %if.then23

if.then23:                                        ; preds = %if.end19
  %call25 = tail call i32 @EVP_MAC_up_ref(%struct.evp_mac_st* noundef nonnull %7) #13
  br label %return

return:                                           ; preds = %if.end19, %if.then23, %if.end12, %if.end7, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 0, %if.end7 ], [ 0, %if.end12 ], [ 1, %if.then23 ], [ 1, %if.end19 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind
declare i8* @memcpy(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #3

declare i32 @EVP_CIPHER_CTX_copy(%struct.evp_cipher_ctx_st* noundef, %struct.evp_cipher_ctx_st* noundef) local_unnamed_addr #2

declare i32 @EVP_MAC_up_ref(%struct.evp_mac_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_siv128_aad(%struct.siv128_context* nocapture noundef %ctx, i8* noundef %aad, i64 noundef %len) local_unnamed_addr #0 {
entry:
  %mac_out = alloca %union.siv_block_u, align 8
  %out_len = alloca i64, align 8
  %0 = bitcast %union.siv_block_u* %mac_out to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #15
  %1 = bitcast i64* %out_len to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #15
  store i64 16, i64* %out_len, align 8, !tbaa !4
  %d = getelementptr inbounds %struct.siv128_context, %struct.siv128_context* %ctx, i64 0, i32 0
  tail call fastcc void @siv128_dbl(%union.siv_block_u* noundef %d) #14
  %mac_ctx_init = getelementptr inbounds %struct.siv128_context, %struct.siv128_context* %ctx, i64 0, i32 4
  %2 = load %struct.evp_mac_ctx_st*, %struct.evp_mac_ctx_st** %mac_ctx_init, align 8, !tbaa !12
  %call = tail call %struct.evp_mac_ctx_st* @EVP_MAC_CTX_dup(%struct.evp_mac_ctx_st* noundef %2) #13
  %cmp = icmp eq %struct.evp_mac_ctx_st* %call, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %call1 = tail call i32 @EVP_MAC_update(%struct.evp_mac_ctx_st* noundef nonnull %call, i8* noundef %aad, i64 noundef %len) #13
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.then, label %lor.lhs.false2

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %call3 = call i32 @EVP_MAC_final(%struct.evp_mac_ctx_st* noundef nonnull %call, i8* noundef nonnull %0, i64* noundef nonnull %out_len, i64 noundef 16) #13
  %tobool4 = icmp eq i32 %call3, 0
  %3 = load i64, i64* %out_len, align 8
  %cmp6 = icmp ne i64 %3, 16
  %or.cond = select i1 %tobool4, i1 true, i1 %cmp6
  br i1 %or.cond, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false2, %lor.lhs.false, %entry
  call void @EVP_MAC_CTX_free(%struct.evp_mac_ctx_st* noundef %call) #13
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false2
  call void @EVP_MAC_CTX_free(%struct.evp_mac_ctx_st* noundef nonnull %call) #13
  call fastcc void @siv128_xorblock(%union.siv_block_u* noundef nonnull %d, %union.siv_block_u* noundef nonnull %mac_out) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 1, %if.end ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #15
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #15
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline nosync nounwind uwtable willreturn
define internal fastcc void @siv128_dbl(%union.siv_block_u* nocapture noundef %b) unnamed_addr #5 {
entry:
  %call = tail call fastcc i64 @siv128_getword(%union.siv_block_u* noundef %b, i64 noundef 0) #14
  %call1 = tail call fastcc i64 @siv128_getword(%union.siv_block_u* noundef %b, i64 noundef 1) #14
  %isneg = icmp slt i64 %call, 0
  %and3 = select i1 %isneg, i64 135, i64 0
  %or = tail call i64 @llvm.fshl.i64(i64 %call, i64 %call1, i64 1)
  %shl5 = shl i64 %call1, 1
  %xor = xor i64 %shl5, %and3
  tail call fastcc void @siv128_putword(%union.siv_block_u* noundef %b, i64 noundef 0, i64 noundef %or) #14
  tail call fastcc void @siv128_putword(%union.siv_block_u* noundef %b, i64 noundef 1, i64 noundef %xor) #14
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define internal fastcc void @siv128_xorblock(%union.siv_block_u* nocapture noundef %x, %union.siv_block_u* nocapture noundef readonly %y) unnamed_addr #6 {
entry:
  %arrayidx = getelementptr inbounds %union.siv_block_u, %union.siv_block_u* %y, i64 0, i32 0, i64 0
  %0 = load i64, i64* %arrayidx, align 8, !tbaa !19
  %arrayidx2 = getelementptr inbounds %union.siv_block_u, %union.siv_block_u* %x, i64 0, i32 0, i64 0
  %1 = load i64, i64* %arrayidx2, align 8, !tbaa !19
  %xor = xor i64 %1, %0
  store i64 %xor, i64* %arrayidx2, align 8, !tbaa !19
  %arrayidx4 = getelementptr inbounds %union.siv_block_u, %union.siv_block_u* %y, i64 0, i32 0, i64 1
  %2 = load i64, i64* %arrayidx4, align 8, !tbaa !19
  %arrayidx6 = getelementptr inbounds %union.siv_block_u, %union.siv_block_u* %x, i64 0, i32 0, i64 1
  %3 = load i64, i64* %arrayidx6, align 8, !tbaa !19
  %xor7 = xor i64 %3, %2
  store i64 %xor7, i64* %arrayidx6, align 8, !tbaa !19
  ret void
}

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_siv128_encrypt(%struct.siv128_context* noundef %ctx, i8* noundef %in, i8* noundef %out, i64 noundef %len) local_unnamed_addr #0 {
entry:
  %q = alloca %union.siv_block_u, align 8
  %0 = bitcast %union.siv_block_u* %q to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #15
  %crypto_ok = getelementptr inbounds %struct.siv128_context, %struct.siv128_context* %ctx, i64 0, i32 6
  %1 = load i32, i32* %crypto_ok, align 4, !tbaa !18
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %dec = add nsw i32 %1, -1
  store i32 %dec, i32* %crypto_ok, align 4, !tbaa !18
  %call = call fastcc i32 @siv128_do_s2v_p(%struct.siv128_context* noundef nonnull %ctx, %union.siv_block_u* noundef nonnull %q, i8* noundef %in, i64 noundef %len) #14
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %cleanup, label %if.end3

if.end3:                                          ; preds = %if.end
  %tag = getelementptr inbounds %struct.siv128_context, %struct.siv128_context* %ctx, i64 0, i32 1
  %arraydecay = bitcast %union.siv_block_u* %tag to i8*
  %call4 = call i8* @memcpy(i8* noundef nonnull %arraydecay, i8* noundef nonnull %0, i64 noundef 16) #13
  %byte5 = bitcast %union.siv_block_u* %q to [16 x i8]*
  %arrayidx = getelementptr inbounds %union.siv_block_u, %union.siv_block_u* %q, i64 0, i32 0, i64 1
  %2 = bitcast i64* %arrayidx to i8*
  %3 = load i8, i8* %2, align 8, !tbaa !19
  %4 = and i8 %3, 127
  store i8 %4, i8* %2, align 8, !tbaa !19
  %arrayidx8 = getelementptr inbounds [16 x i8], [16 x i8]* %byte5, i64 0, i64 12
  %5 = load i8, i8* %arrayidx8, align 4, !tbaa !19
  %6 = and i8 %5, 127
  store i8 %6, i8* %arrayidx8, align 4, !tbaa !19
  %cipher_ctx = getelementptr inbounds %struct.siv128_context, %struct.siv128_context* %ctx, i64 0, i32 2
  %7 = load %struct.evp_cipher_ctx_st*, %struct.evp_cipher_ctx_st** %cipher_ctx, align 8, !tbaa !8
  %call12 = call fastcc i32 @siv128_do_encrypt(%struct.evp_cipher_ctx_st* noundef %7, i8* noundef %out, i8* noundef %in, i64 noundef %len, %union.siv_block_u* noundef nonnull %q) #14
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %cleanup, label %if.end15

if.end15:                                         ; preds = %if.end3
  %final_ret = getelementptr inbounds %struct.siv128_context, %struct.siv128_context* %ctx, i64 0, i32 5
  store i32 0, i32* %final_ret, align 8, !tbaa !17
  %conv16 = trunc i64 %len to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.end, %entry, %if.end15
  %retval.0 = phi i32 [ %conv16, %if.end15 ], [ 0, %entry ], [ 0, %if.end ], [ 0, %if.end3 ]
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #15
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @siv128_do_s2v_p(%struct.siv128_context* nocapture noundef %ctx, %union.siv_block_u* noundef %out, i8* noundef %in, i64 noundef %len) unnamed_addr #0 {
entry:
  %t = alloca %union.siv_block_u, align 8
  %out_len = alloca i64, align 8
  %0 = bitcast %union.siv_block_u* %t to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #15
  %1 = bitcast i64* %out_len to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #15
  store i64 16, i64* %out_len, align 8, !tbaa !4
  %mac_ctx_init = getelementptr inbounds %struct.siv128_context, %struct.siv128_context* %ctx, i64 0, i32 4
  %2 = load %struct.evp_mac_ctx_st*, %struct.evp_mac_ctx_st** %mac_ctx_init, align 8, !tbaa !12
  %call = tail call %struct.evp_mac_ctx_st* @EVP_MAC_CTX_dup(%struct.evp_mac_ctx_st* noundef %2) #13
  %cmp = icmp eq %struct.evp_mac_ctx_st* %call, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %cmp1 = icmp ugt i64 %len, 15
  br i1 %cmp1, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.end
  %sub = add i64 %len, -16
  %call3 = tail call i32 @EVP_MAC_update(%struct.evp_mac_ctx_st* noundef nonnull %call, i8* noundef %in, i64 noundef %sub) #13
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %err, label %if.end5

if.end5:                                          ; preds = %if.then2
  %add.ptr = getelementptr inbounds i8, i8* %in, i64 %sub
  %call7 = call i8* @memcpy(i8* noundef nonnull %0, i8* noundef %add.ptr, i64 noundef 16) #13
  %d = getelementptr inbounds %struct.siv128_context, %struct.siv128_context* %ctx, i64 0, i32 0
  call fastcc void @siv128_xorblock(%union.siv_block_u* noundef nonnull %t, %union.siv_block_u* noundef %d) #14
  %call8 = call i32 @EVP_MAC_update(%struct.evp_mac_ctx_st* noundef nonnull %call, i8* noundef nonnull %0, i64 noundef 16) #13
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %err, label %if.end23

if.else:                                          ; preds = %if.end
  %call12 = call i8* @memset(i8* noundef nonnull %0, i32 noundef 0, i64 noundef 16) #13
  %call13 = call i8* @memcpy(i8* noundef nonnull %0, i8* noundef %in, i64 noundef %len) #13
  %byte14 = bitcast %union.siv_block_u* %t to [16 x i8]*
  %arrayidx = getelementptr inbounds [16 x i8], [16 x i8]* %byte14, i64 0, i64 %len
  store i8 -128, i8* %arrayidx, align 1, !tbaa !19
  %d15 = getelementptr inbounds %struct.siv128_context, %struct.siv128_context* %ctx, i64 0, i32 0
  call fastcc void @siv128_dbl(%union.siv_block_u* noundef %d15) #14
  call fastcc void @siv128_xorblock(%union.siv_block_u* noundef nonnull %t, %union.siv_block_u* noundef %d15) #14
  %call19 = call i32 @EVP_MAC_update(%struct.evp_mac_ctx_st* noundef nonnull %call, i8* noundef nonnull %0, i64 noundef 16) #13
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %err, label %if.end23

if.end23:                                         ; preds = %if.else, %if.end5
  %arraydecay25 = bitcast %union.siv_block_u* %out to i8*
  %call26 = call i32 @EVP_MAC_final(%struct.evp_mac_ctx_st* noundef nonnull %call, i8* noundef %arraydecay25, i64* noundef nonnull %out_len, i64 noundef 16) #13
  %tobool27 = icmp ne i32 %call26, 0
  %3 = load i64, i64* %out_len, align 8
  %cmp28 = icmp eq i64 %3, 16
  %or.cond = select i1 %tobool27, i1 %cmp28, i1 false
  %spec.select = zext i1 %or.cond to i32
  br label %err

err:                                              ; preds = %if.end23, %if.else, %if.end5, %if.then2
  %ret.0 = phi i32 [ 0, %if.end5 ], [ 0, %if.then2 ], [ 0, %if.else ], [ %spec.select, %if.end23 ]
  call void @EVP_MAC_CTX_free(%struct.evp_mac_ctx_st* noundef nonnull %call) #13
  br label %cleanup

cleanup:                                          ; preds = %entry, %err
  %retval.0 = phi i32 [ %ret.0, %err ], [ 0, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #15
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #15
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @siv128_do_encrypt(%struct.evp_cipher_ctx_st* noundef %ctx, i8* noundef %out, i8* noundef %in, i64 noundef %len, %union.siv_block_u* noundef %icv) unnamed_addr #0 {
entry:
  %out_len = alloca i32, align 4
  %0 = bitcast i32* %out_len to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #15
  %conv = trunc i64 %len to i32
  store i32 %conv, i32* %out_len, align 4, !tbaa !16
  %arraydecay = bitcast %union.siv_block_u* %icv to i8*
  %call = tail call i32 @EVP_CipherInit_ex(%struct.evp_cipher_ctx_st* noundef %ctx, %struct.evp_cipher_st* noundef null, %struct.engine_st* noundef null, i8* noundef null, i8* noundef %arraydecay, i32 noundef 1) #13
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call1 = call i32 @EVP_EncryptUpdate(%struct.evp_cipher_ctx_st* noundef %ctx, i8* noundef %out, i32* noundef nonnull %out_len, i8* noundef %in, i32 noundef %conv) #13
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %call1, %if.end ], [ 0, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #15
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_siv128_decrypt(%struct.siv128_context* noundef %ctx, i8* noundef %in, i8* noundef %out, i64 noundef %len) local_unnamed_addr #0 {
entry:
  %t = alloca <16 x i8>, align 16
  %tmpcast = bitcast <16 x i8>* %t to %union.siv_block_u*
  %q = alloca %union.siv_block_u, align 8
  %0 = getelementptr inbounds <16 x i8>, <16 x i8>* %t, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #15
  %1 = bitcast %union.siv_block_u* %q to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %1) #15
  %crypto_ok = getelementptr inbounds %struct.siv128_context, %struct.siv128_context* %ctx, i64 0, i32 6
  %2 = load i32, i32* %crypto_ok, align 4, !tbaa !18
  %cmp = icmp eq i32 %2, 0
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %dec = add nsw i32 %2, -1
  store i32 %dec, i32* %crypto_ok, align 4, !tbaa !18
  %tag = getelementptr inbounds %struct.siv128_context, %struct.siv128_context* %ctx, i64 0, i32 1
  %arraydecay = bitcast %union.siv_block_u* %tag to i8*
  %call = call i8* @memcpy(i8* noundef nonnull %1, i8* noundef nonnull %arraydecay, i64 noundef 16) #13
  %byte2 = bitcast %union.siv_block_u* %q to [16 x i8]*
  %arrayidx = getelementptr inbounds %union.siv_block_u, %union.siv_block_u* %q, i64 0, i32 0, i64 1
  %3 = bitcast i64* %arrayidx to i8*
  %4 = load i8, i8* %3, align 8, !tbaa !19
  %5 = and i8 %4, 127
  store i8 %5, i8* %3, align 8, !tbaa !19
  %arrayidx5 = getelementptr inbounds [16 x i8], [16 x i8]* %byte2, i64 0, i64 12
  %6 = load i8, i8* %arrayidx5, align 4, !tbaa !19
  %7 = and i8 %6, 127
  store i8 %7, i8* %arrayidx5, align 4, !tbaa !19
  %cipher_ctx = getelementptr inbounds %struct.siv128_context, %struct.siv128_context* %ctx, i64 0, i32 2
  %8 = load %struct.evp_cipher_ctx_st*, %struct.evp_cipher_ctx_st** %cipher_ctx, align 8, !tbaa !8
  %call9 = call fastcc i32 @siv128_do_encrypt(%struct.evp_cipher_ctx_st* noundef %8, i8* noundef %out, i8* noundef %in, i64 noundef %len, %union.siv_block_u* noundef nonnull %q) #14
  %tobool.not = icmp eq i32 %call9, 0
  br i1 %tobool.not, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %call10 = call fastcc i32 @siv128_do_s2v_p(%struct.siv128_context* noundef nonnull %ctx, %union.siv_block_u* noundef nonnull %tmpcast, i8* noundef %out, i64 noundef %len) #14
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %cleanup, label %for.cond.preheader

for.cond.preheader:                               ; preds = %lor.lhs.false
  %9 = bitcast %union.siv_block_u* %tag to <16 x i8>*
  %10 = load <16 x i8>, <16 x i8>* %9, align 1, !tbaa !19
  %11 = load <16 x i8>, <16 x i8>* %t, align 16, !tbaa !19
  %12 = xor <16 x i8> %11, %10
  store <16 x i8> %12, <16 x i8>* %t, align 16, !tbaa !19
  %arrayidx26 = bitcast <16 x i8>* %t to i64*
  %13 = load i64, i64* %arrayidx26, align 16, !tbaa !19
  %arrayidx28 = getelementptr inbounds <16 x i8>, <16 x i8>* %t, i64 0, i64 8
  %14 = bitcast i8* %arrayidx28 to i64*
  %15 = load i64, i64* %14, align 8, !tbaa !19
  %or = or i64 %15, %13
  %cmp29.not = icmp eq i64 %or, 0
  br i1 %cmp29.not, label %if.end32, label %if.then31

if.then31:                                        ; preds = %for.cond.preheader
  call void @OPENSSL_cleanse(i8* noundef %out, i64 noundef %len) #13
  br label %cleanup

if.end32:                                         ; preds = %for.cond.preheader
  %final_ret = getelementptr inbounds %struct.siv128_context, %struct.siv128_context* %ctx, i64 0, i32 5
  store i32 0, i32* %final_ret, align 8, !tbaa !17
  %conv33 = trunc i64 %len to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end, %lor.lhs.false, %entry, %if.end32, %if.then31
  %retval.0 = phi i32 [ 0, %if.then31 ], [ %conv33, %if.end32 ], [ 0, %entry ], [ 0, %lor.lhs.false ], [ 0, %if.end ]
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %1) #15
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #15
  ret i32 %retval.0
}

declare void @OPENSSL_cleanse(i8* noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define i32 @ossl_siv128_finish(%struct.siv128_context* nocapture noundef readonly %ctx) local_unnamed_addr #7 {
entry:
  %final_ret = getelementptr inbounds %struct.siv128_context, %struct.siv128_context* %ctx, i64 0, i32 5
  %0 = load i32, i32* %final_ret, align 8, !tbaa !17
  ret i32 %0
}

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_siv128_set_tag(%struct.siv128_context* noundef %ctx, i8* noundef %tag, i64 noundef %len) local_unnamed_addr #0 {
entry:
  %cmp.not = icmp eq i64 %len, 16
  br i1 %cmp.not, label %if.end, label %return

if.end:                                           ; preds = %entry
  %tag1 = getelementptr inbounds %struct.siv128_context, %struct.siv128_context* %ctx, i64 0, i32 1
  %arraydecay = bitcast %union.siv_block_u* %tag1 to i8*
  %call = tail call i8* @memcpy(i8* noundef nonnull %arraydecay, i8* noundef %tag, i64 noundef 16) #13
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_siv128_get_tag(%struct.siv128_context* noundef %ctx, i8* noundef %tag, i64 noundef %len) local_unnamed_addr #0 {
entry:
  %cmp.not = icmp eq i64 %len, 16
  br i1 %cmp.not, label %if.end, label %return

if.end:                                           ; preds = %entry
  %tag1 = getelementptr inbounds %struct.siv128_context, %struct.siv128_context* %ctx, i64 0, i32 1
  %arraydecay = bitcast %union.siv_block_u* %tag1 to i8*
  %call = tail call i8* @memcpy(i8* noundef %tag, i8* noundef nonnull %arraydecay, i64 noundef 16) #13
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_siv128_cleanup(%struct.siv128_context* noundef %ctx) local_unnamed_addr #0 {
entry:
  %cmp.not = icmp eq %struct.siv128_context* %ctx, null
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %cipher_ctx = getelementptr inbounds %struct.siv128_context, %struct.siv128_context* %ctx, i64 0, i32 2
  %0 = load %struct.evp_cipher_ctx_st*, %struct.evp_cipher_ctx_st** %cipher_ctx, align 8, !tbaa !8
  tail call void @EVP_CIPHER_CTX_free(%struct.evp_cipher_ctx_st* noundef %0) #13
  store %struct.evp_cipher_ctx_st* null, %struct.evp_cipher_ctx_st** %cipher_ctx, align 8, !tbaa !8
  %mac_ctx_init = getelementptr inbounds %struct.siv128_context, %struct.siv128_context* %ctx, i64 0, i32 4
  %1 = load %struct.evp_mac_ctx_st*, %struct.evp_mac_ctx_st** %mac_ctx_init, align 8, !tbaa !12
  tail call void @EVP_MAC_CTX_free(%struct.evp_mac_ctx_st* noundef %1) #13
  store %struct.evp_mac_ctx_st* null, %struct.evp_mac_ctx_st** %mac_ctx_init, align 8, !tbaa !12
  %mac = getelementptr inbounds %struct.siv128_context, %struct.siv128_context* %ctx, i64 0, i32 3
  %2 = load %struct.evp_mac_st*, %struct.evp_mac_st** %mac, align 8, !tbaa !13
  tail call void @EVP_MAC_free(%struct.evp_mac_st* noundef %2) #13
  store %struct.evp_mac_st* null, %struct.evp_mac_st** %mac, align 8, !tbaa !13
  %3 = bitcast %struct.siv128_context* %ctx to i8*
  tail call void @OPENSSL_cleanse(i8* noundef nonnull %3, i64 noundef 16) #13
  %tag = getelementptr inbounds %struct.siv128_context, %struct.siv128_context* %ctx, i64 0, i32 1
  %4 = bitcast %union.siv_block_u* %tag to i8*
  tail call void @OPENSSL_cleanse(i8* noundef nonnull %4, i64 noundef 16) #13
  %final_ret = getelementptr inbounds %struct.siv128_context, %struct.siv128_context* %ctx, i64 0, i32 5
  store i32 -1, i32* %final_ret, align 8, !tbaa !17
  %crypto_ok = getelementptr inbounds %struct.siv128_context, %struct.siv128_context* %ctx, i64 0, i32 6
  store i32 1, i32* %crypto_ok, align 4, !tbaa !18
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret i32 1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define i32 @ossl_siv128_speed(%struct.siv128_context* nocapture noundef writeonly %ctx, i32 noundef %arg) local_unnamed_addr #8 {
entry:
  %cmp = icmp eq i32 %arg, 1
  %cond = select i1 %cmp, i32 -1, i32 1
  %crypto_ok = getelementptr inbounds %struct.siv128_context, %struct.siv128_context* %ctx, i64 0, i32 6
  store i32 %cond, i32* %crypto_ok, align 4, !tbaa !18
  ret i32 1
}

; Function Attrs: mustprogress nofree noinline nosync nounwind readonly uwtable willreturn
define internal fastcc i64 @siv128_getword(%union.siv_block_u* nocapture noundef readonly %b, i64 noundef %i) unnamed_addr #9 {
entry:
  %arrayidx = getelementptr inbounds %union.siv_block_u, %union.siv_block_u* %b, i64 0, i32 0, i64 %i
  %0 = load i64, i64* %arrayidx, align 8, !tbaa !19
  %call = tail call fastcc i64 @byteswap8(i64 noundef %0) #14
  ret i64 %call
}

; Function Attrs: mustprogress nofree noinline nosync nounwind uwtable willreturn writeonly
define internal fastcc void @siv128_putword(%union.siv_block_u* nocapture noundef writeonly %b, i64 noundef %i, i64 noundef %x) unnamed_addr #10 {
entry:
  %call = tail call fastcc i64 @byteswap8(i64 noundef %x) #14
  %arrayidx = getelementptr inbounds %union.siv_block_u, %union.siv_block_u* %b, i64 0, i32 0, i64 %i
  store i64 %call, i64* %arrayidx, align 8, !tbaa !19
  ret void
}

; Function Attrs: mustprogress nofree noinline nosync nounwind readnone uwtable willreturn
define internal fastcc i64 @byteswap8(i64 noundef %x) unnamed_addr #11 {
entry:
  %shr = lshr i64 %x, 32
  %conv = trunc i64 %shr to i32
  %conv1 = trunc i64 %x to i32
  %call = tail call fastcc i32 @rotl8(i32 noundef %conv) #14
  %and = and i32 %call, 16711935
  %call2 = tail call fastcc i32 @rotr8(i32 noundef %conv) #14
  %and3 = and i32 %call2, -16711936
  %or = or i32 %and3, %and
  %call4 = tail call fastcc i32 @rotl8(i32 noundef %conv1) #14
  %and5 = and i32 %call4, 16711935
  %call6 = tail call fastcc i32 @rotr8(i32 noundef %conv1) #14
  %and7 = and i32 %call6, -16711936
  %or8 = or i32 %and7, %and5
  %conv9 = zext i32 %or8 to i64
  %shl = shl nuw i64 %conv9, 32
  %conv10 = zext i32 %or to i64
  %or11 = or i64 %shl, %conv10
  ret i64 %or11
}

; Function Attrs: mustprogress nofree noinline nosync nounwind readnone uwtable willreturn
define internal fastcc i32 @rotl8(i32 noundef %x) unnamed_addr #11 {
entry:
  %or = tail call i32 @llvm.fshl.i32(i32 %x, i32 %x, i32 8)
  ret i32 %or
}

; Function Attrs: mustprogress nofree noinline nosync nounwind readnone uwtable willreturn
define internal fastcc i32 @rotr8(i32 noundef %x) unnamed_addr #11 {
entry:
  %or = tail call i32 @llvm.fshl.i32(i32 %x, i32 %x, i32 24)
  ret i32 %or
}

declare i32 @EVP_CipherInit_ex(%struct.evp_cipher_ctx_st* noundef, %struct.evp_cipher_st* noundef, %struct.engine_st* noundef, i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare i32 @EVP_EncryptUpdate(%struct.evp_cipher_ctx_st* noundef, i8* noundef, i32* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.fshl.i64(i64, i64, i64) #12

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #12

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #5 = { mustprogress nofree noinline nosync nounwind uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree noinline nosync nounwind readonly uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree noinline nosync nounwind uwtable willreturn writeonly "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree noinline nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #13 = { nobuiltin nounwind "no-builtins" }
attributes #14 = { nobuiltin "no-builtins" }
attributes #15 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{!"clang version 14.0.0"}
!4 = !{!5, !5, i64 0}
!5 = !{!"long", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !10, i64 32}
!9 = !{!"siv128_context", !6, i64 0, !6, i64 16, !10, i64 32, !10, i64 40, !10, i64 48, !11, i64 56, !11, i64 60}
!10 = !{!"any pointer", !6, i64 0}
!11 = !{!"int", !6, i64 0}
!12 = !{!9, !10, i64 48}
!13 = !{!9, !10, i64 40}
!14 = !{i64 0, i64 8, !15, i64 8, i64 4, !16, i64 16, i64 8, !15, i64 24, i64 8, !4, i64 32, i64 8, !4}
!15 = !{!10, !10, i64 0}
!16 = !{!11, !11, i64 0}
!17 = !{!9, !11, i64 56}
!18 = !{!9, !11, i64 60}
!19 = !{!6, !6, i64 0}
