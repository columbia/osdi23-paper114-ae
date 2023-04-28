; ModuleID = 'crypto/evp/p_open.c'
source_filename = "crypto/evp/p_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evp_cipher_ctx_st = type opaque
%struct.evp_cipher_st = type opaque
%struct.evp_pkey_st = type opaque
%struct.engine_st = type opaque
%struct.evp_pkey_ctx_st = type opaque

@.str = private unnamed_addr constant [20 x i8] c"crypto/evp/p_open.c\00", align 1
@__func__.EVP_OpenInit = private unnamed_addr constant [13 x i8] c"EVP_OpenInit\00", align 1

; Function Attrs: noinline nounwind uwtable
define i32 @EVP_OpenInit(%struct.evp_cipher_ctx_st* noundef %ctx, %struct.evp_cipher_st* noundef %type, i8* noundef %ek, i32 noundef %ekl, i8* noundef %iv, %struct.evp_pkey_st* noundef %priv) local_unnamed_addr #0 {
entry:
  %keylen = alloca i64, align 8
  %0 = bitcast i64* %keylen to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #3
  store i64 0, i64* %keylen, align 8, !tbaa !4
  %tobool.not = icmp eq %struct.evp_cipher_st* %type, null
  br i1 %tobool.not, label %if.end4, label %if.then

if.then:                                          ; preds = %entry
  %call = tail call i32 @EVP_CIPHER_CTX_reset(%struct.evp_cipher_ctx_st* noundef %ctx) #4
  %call1 = tail call i32 @EVP_DecryptInit_ex(%struct.evp_cipher_ctx_st* noundef %ctx, %struct.evp_cipher_st* noundef nonnull %type, %struct.engine_st* noundef null, i8* noundef null, i8* noundef null) #4
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %err, label %if.end4

if.end4:                                          ; preds = %if.then, %entry
  %cmp = icmp eq %struct.evp_pkey_st* %priv, null
  br i1 %cmp, label %cleanup, label %if.end6

if.end6:                                          ; preds = %if.end4
  %call7 = tail call %struct.evp_pkey_ctx_st* @EVP_PKEY_CTX_new(%struct.evp_pkey_st* noundef nonnull %priv, %struct.engine_st* noundef null) #4
  %cmp8 = icmp eq %struct.evp_pkey_ctx_st* %call7, null
  br i1 %cmp8, label %if.then9, label %if.end10

if.then9:                                         ; preds = %if.end6
  tail call void @ERR_new() #4
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 37, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @__func__.EVP_OpenInit, i64 0, i64 0)) #4
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 6, i32 noundef 786688, i8* noundef null) #4
  br label %err

if.end10:                                         ; preds = %if.end6
  %call11 = tail call i32 @EVP_PKEY_decrypt_init(%struct.evp_pkey_ctx_st* noundef nonnull %call7) #4
  %cmp12 = icmp slt i32 %call11, 1
  br i1 %cmp12, label %err, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end10
  %conv = sext i32 %ekl to i64
  %call13 = call i32 @EVP_PKEY_decrypt(%struct.evp_pkey_ctx_st* noundef nonnull %call7, i8* noundef null, i64* noundef nonnull %keylen, i8* noundef %ek, i64 noundef %conv) #4
  %cmp14 = icmp slt i32 %call13, 1
  br i1 %cmp14, label %err, label %if.end17

if.end17:                                         ; preds = %lor.lhs.false
  %1 = load i64, i64* %keylen, align 8, !tbaa !4
  %call18 = call i8* @CRYPTO_malloc(i64 noundef %1, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 45) #4
  %cmp19 = icmp eq i8* %call18, null
  br i1 %cmp19, label %if.then21, label %if.end22

if.then21:                                        ; preds = %if.end17
  call void @ERR_new() #4
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 46, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @__func__.EVP_OpenInit, i64 0, i64 0)) #4
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 6, i32 noundef 786688, i8* noundef null) #4
  br label %err

if.end22:                                         ; preds = %if.end17
  %call24 = call i32 @EVP_PKEY_decrypt(%struct.evp_pkey_ctx_st* noundef nonnull %call7, i8* noundef nonnull %call18, i64* noundef nonnull %keylen, i8* noundef %ek, i64 noundef %conv) #4
  %cmp25 = icmp slt i32 %call24, 1
  br i1 %cmp25, label %err, label %if.end28

if.end28:                                         ; preds = %if.end22
  %2 = load i64, i64* %keylen, align 8, !tbaa !4
  %conv29 = trunc i64 %2 to i32
  %call30 = call i32 @EVP_CIPHER_CTX_set_key_length(%struct.evp_cipher_ctx_st* noundef %ctx, i32 noundef %conv29) #4
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %err, label %lor.lhs.false32

lor.lhs.false32:                                  ; preds = %if.end28
  %call33 = call i32 @EVP_DecryptInit_ex(%struct.evp_cipher_ctx_st* noundef %ctx, %struct.evp_cipher_st* noundef null, %struct.engine_st* noundef null, i8* noundef nonnull %call18, i8* noundef %iv) #4
  %tobool34.not = icmp ne i32 %call33, 0
  %spec.select = zext i1 %tobool34.not to i32
  br label %err

err:                                              ; preds = %lor.lhs.false32, %if.end28, %if.end22, %if.end10, %lor.lhs.false, %if.then, %if.then21, %if.then9
  %key.0 = phi i8* [ null, %if.then9 ], [ null, %if.end10 ], [ null, %lor.lhs.false ], [ null, %if.then21 ], [ %call18, %if.end22 ], [ %call18, %if.end28 ], [ null, %if.then ], [ %call18, %lor.lhs.false32 ]
  %ret.0 = phi i32 [ 0, %if.then9 ], [ 0, %if.end10 ], [ 0, %lor.lhs.false ], [ 0, %if.then21 ], [ 0, %if.end22 ], [ 0, %if.end28 ], [ 0, %if.then ], [ %spec.select, %lor.lhs.false32 ]
  %pctx.0 = phi %struct.evp_pkey_ctx_st* [ null, %if.then9 ], [ %call7, %if.end10 ], [ %call7, %lor.lhs.false ], [ %call7, %if.then21 ], [ %call7, %if.end22 ], [ %call7, %if.end28 ], [ null, %if.then ], [ %call7, %lor.lhs.false32 ]
  call void @EVP_PKEY_CTX_free(%struct.evp_pkey_ctx_st* noundef %pctx.0) #4
  %3 = load i64, i64* %keylen, align 8, !tbaa !4
  call void @CRYPTO_clear_free(i8* noundef %key.0, i64 noundef %3, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 60) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %err
  %retval.0 = phi i32 [ %ret.0, %err ], [ 1, %if.end4 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #3
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

declare i32 @EVP_CIPHER_CTX_reset(%struct.evp_cipher_ctx_st* noundef) local_unnamed_addr #2

declare i32 @EVP_DecryptInit_ex(%struct.evp_cipher_ctx_st* noundef, %struct.evp_cipher_st* noundef, %struct.engine_st* noundef, i8* noundef, i8* noundef) local_unnamed_addr #2

declare %struct.evp_pkey_ctx_st* @EVP_PKEY_CTX_new(%struct.evp_pkey_st* noundef, %struct.engine_st* noundef) local_unnamed_addr #2

declare void @ERR_new() local_unnamed_addr #2

declare void @ERR_set_debug(i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #2

declare void @ERR_set_error(i32 noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #2

declare i32 @EVP_PKEY_decrypt_init(%struct.evp_pkey_ctx_st* noundef) local_unnamed_addr #2

declare i32 @EVP_PKEY_decrypt(%struct.evp_pkey_ctx_st* noundef, i8* noundef, i64* noundef, i8* noundef, i64 noundef) local_unnamed_addr #2

declare i8* @CRYPTO_malloc(i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare i32 @EVP_CIPHER_CTX_set_key_length(%struct.evp_cipher_ctx_st* noundef, i32 noundef) local_unnamed_addr #2

declare void @EVP_PKEY_CTX_free(%struct.evp_pkey_ctx_st* noundef) local_unnamed_addr #2

declare void @CRYPTO_clear_free(i8* noundef, i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: noinline nounwind uwtable
define i32 @EVP_OpenFinal(%struct.evp_cipher_ctx_st* noundef %ctx, i8* noundef %out, i32* noundef %outl) local_unnamed_addr #0 {
entry:
  %call = tail call i32 @EVP_DecryptFinal_ex(%struct.evp_cipher_ctx_st* noundef %ctx, i8* noundef %out, i32* noundef %outl) #4
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call1 = tail call i32 @EVP_DecryptInit_ex(%struct.evp_cipher_ctx_st* noundef %ctx, %struct.evp_cipher_st* noundef null, %struct.engine_st* noundef null, i8* noundef null, i8* noundef null) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %i.0 = phi i32 [ %call1, %if.then ], [ 0, %entry ]
  ret i32 %i.0
}

declare i32 @EVP_DecryptFinal_ex(%struct.evp_cipher_ctx_st* noundef, i8* noundef, i32* noundef) local_unnamed_addr #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }
attributes #4 = { nobuiltin nounwind "no-builtins" }

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
