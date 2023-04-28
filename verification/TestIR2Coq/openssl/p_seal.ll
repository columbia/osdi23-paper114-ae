; ModuleID = 'crypto/evp/p_seal.c'
source_filename = "crypto/evp/p_seal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evp_cipher_ctx_st = type opaque
%struct.evp_cipher_st = type opaque
%struct.evp_pkey_st = type opaque
%struct.engine_st = type opaque
%struct.ossl_provider_st = type opaque
%struct.ossl_lib_ctx_st = type opaque
%struct.evp_pkey_ctx_st = type opaque

@.str = private unnamed_addr constant [20 x i8] c"crypto/evp/p_seal.c\00", align 1
@__func__.EVP_SealInit = private unnamed_addr constant [13 x i8] c"EVP_SealInit\00", align 1

; Function Attrs: noinline nounwind uwtable
define i32 @EVP_SealInit(%struct.evp_cipher_ctx_st* noundef %ctx, %struct.evp_cipher_st* noundef %type, i8** nocapture noundef readonly %ek, i32* nocapture noundef writeonly %ekl, i8* noundef %iv, %struct.evp_pkey_st** noundef readonly %pubk, i32 noundef %npubk) local_unnamed_addr #0 {
entry:
  %key = alloca [64 x i8], align 16
  %keylen = alloca i64, align 8
  %0 = getelementptr inbounds [64 x i8], [64 x i8]* %key, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %0) #3
  %cmp.not = icmp eq %struct.evp_cipher_st* %type, null
  br i1 %cmp.not, label %if.end3, label %if.then

if.then:                                          ; preds = %entry
  %call = tail call i32 @EVP_CIPHER_CTX_reset(%struct.evp_cipher_ctx_st* noundef %ctx) #4
  %call1 = tail call i32 @EVP_EncryptInit_ex(%struct.evp_cipher_ctx_st* noundef %ctx, %struct.evp_cipher_st* noundef nonnull %type, %struct.engine_st* noundef null, i8* noundef null, i8* noundef null) #4
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %cleanup61, label %if.end3

if.end3:                                          ; preds = %if.then, %entry
  %call4 = tail call %struct.evp_cipher_st* @EVP_CIPHER_CTX_get0_cipher(%struct.evp_cipher_ctx_st* noundef %ctx) #4
  %cmp5.not = icmp eq %struct.evp_cipher_st* %call4, null
  br i1 %cmp5.not, label %if.end10, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end3
  %call6 = tail call %struct.ossl_provider_st* @EVP_CIPHER_get0_provider(%struct.evp_cipher_st* noundef nonnull %call4) #4
  %cmp7.not = icmp eq %struct.ossl_provider_st* %call6, null
  br i1 %cmp7.not, label %if.end10, label %if.then8

if.then8:                                         ; preds = %land.lhs.true
  %call9 = tail call %struct.ossl_lib_ctx_st* @ossl_provider_libctx(%struct.ossl_provider_st* noundef nonnull %call6) #4
  br label %if.end10

if.end10:                                         ; preds = %if.then8, %land.lhs.true, %if.end3
  %libctx.0 = phi %struct.ossl_lib_ctx_st* [ %call9, %if.then8 ], [ null, %land.lhs.true ], [ null, %if.end3 ]
  %cmp11 = icmp sgt i32 %npubk, 0
  %tobool12 = icmp ne %struct.evp_pkey_st** %pubk, null
  %or.cond = and i1 %tobool12, %cmp11
  br i1 %or.cond, label %if.end14, label %cleanup61

if.end14:                                         ; preds = %if.end10
  %call15 = call i32 @EVP_CIPHER_CTX_rand_key(%struct.evp_cipher_ctx_st* noundef %ctx, i8* noundef nonnull %0) #4
  %cmp16 = icmp slt i32 %call15, 1
  br i1 %cmp16, label %cleanup61, label %if.end18

if.end18:                                         ; preds = %if.end14
  %call19 = call i32 @EVP_CIPHER_CTX_get_iv_length(%struct.evp_cipher_ctx_st* noundef %ctx) #4
  %cmp20 = icmp slt i32 %call19, 0
  br i1 %cmp20, label %err, label %lor.lhs.false21

lor.lhs.false21:                                  ; preds = %if.end18
  %conv102 = zext i32 %call19 to i64
  %call22 = call i32 @RAND_priv_bytes_ex(%struct.ossl_lib_ctx_st* noundef %libctx.0, i8* noundef %iv, i64 noundef %conv102, i32 noundef 0) #4
  %cmp23 = icmp slt i32 %call22, 1
  br i1 %cmp23, label %err, label %if.end26

if.end26:                                         ; preds = %lor.lhs.false21
  %call27 = call i32 @EVP_CIPHER_CTX_get_key_length(%struct.evp_cipher_ctx_st* noundef %ctx) #4
  %cmp28 = icmp slt i32 %call27, 0
  br i1 %cmp28, label %err, label %if.end31

if.end31:                                         ; preds = %if.end26
  %call33 = call i32 @EVP_EncryptInit_ex(%struct.evp_cipher_ctx_st* noundef %ctx, %struct.evp_cipher_st* noundef null, %struct.engine_st* noundef null, i8* noundef nonnull %0, i8* noundef %iv) #4
  %tobool34.not = icmp eq i32 %call33, 0
  br i1 %tobool34.not, label %err, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %if.end31
  %1 = bitcast i64* %keylen to i8*
  %conv39112 = zext i32 %call27 to i64
  %wide.trip.count = zext i32 %npubk to i64
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.inc ]
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #3
  store i64 %conv39112, i64* %keylen, align 8, !tbaa !4
  %arrayidx = getelementptr inbounds %struct.evp_pkey_st*, %struct.evp_pkey_st** %pubk, i64 %indvars.iv
  %2 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %arrayidx, align 8, !tbaa !8
  %call40 = call %struct.evp_pkey_ctx_st* @EVP_PKEY_CTX_new_from_pkey(%struct.ossl_lib_ctx_st* noundef %libctx.0, %struct.evp_pkey_st* noundef %2, i8* noundef null) #4
  %cmp41 = icmp eq %struct.evp_pkey_ctx_st* %call40, null
  br i1 %cmp41, label %if.then43, label %if.end44

if.then43:                                        ; preds = %for.body
  call void @ERR_new() #4
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 62, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @__func__.EVP_SealInit, i64 0, i64 0)) #4
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 6, i32 noundef 786688, i8* noundef null) #4
  br label %cleanup.thread

if.end44:                                         ; preds = %for.body
  %call45 = call i32 @EVP_PKEY_encrypt_init(%struct.evp_pkey_ctx_st* noundef nonnull %call40) #4
  %cmp46 = icmp slt i32 %call45, 1
  br i1 %cmp46, label %cleanup.thread, label %lor.lhs.false48

lor.lhs.false48:                                  ; preds = %if.end44
  %arrayidx50 = getelementptr inbounds i8*, i8** %ek, i64 %indvars.iv
  %3 = load i8*, i8** %arrayidx50, align 8, !tbaa !8
  %4 = load i64, i64* %keylen, align 8, !tbaa !4
  %call52 = call i32 @EVP_PKEY_encrypt(%struct.evp_pkey_ctx_st* noundef nonnull %call40, i8* noundef %3, i64* noundef nonnull %keylen, i8* noundef nonnull %0, i64 noundef %4) #4
  %cmp53 = icmp slt i32 %call52, 1
  br i1 %cmp53, label %cleanup.thread, label %for.inc

cleanup.thread:                                   ; preds = %lor.lhs.false48, %if.end44, %if.then43
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #3
  br label %err

for.inc:                                          ; preds = %lor.lhs.false48
  %5 = load i64, i64* %keylen, align 8, !tbaa !4
  %conv57 = trunc i64 %5 to i32
  %arrayidx59 = getelementptr inbounds i32, i32* %ekl, i64 %indvars.iv
  store i32 %conv57, i32* %arrayidx59, align 4, !tbaa !10
  call void @EVP_PKEY_CTX_free(%struct.evp_pkey_ctx_st* noundef nonnull %call40) #4
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #3
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %err, label %for.body, !llvm.loop !12

err:                                              ; preds = %for.inc, %cleanup.thread, %if.end31, %if.end26, %if.end18, %lor.lhs.false21
  %pctx.0 = phi %struct.evp_pkey_ctx_st* [ null, %if.end18 ], [ null, %lor.lhs.false21 ], [ null, %if.end26 ], [ null, %if.end31 ], [ %call40, %cleanup.thread ], [ null, %for.inc ]
  %rv.0 = phi i32 [ 0, %if.end18 ], [ 0, %lor.lhs.false21 ], [ 0, %if.end26 ], [ 0, %if.end31 ], [ 0, %cleanup.thread ], [ %npubk, %for.inc ]
  call void @EVP_PKEY_CTX_free(%struct.evp_pkey_ctx_st* noundef %pctx.0) #4
  call void @OPENSSL_cleanse(i8* noundef nonnull %0, i64 noundef 64) #4
  br label %cleanup61

cleanup61:                                        ; preds = %if.end14, %if.end10, %if.then, %err
  %retval.0 = phi i32 [ %rv.0, %err ], [ 0, %if.then ], [ 1, %if.end10 ], [ 0, %if.end14 ]
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %0) #3
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

declare i32 @EVP_CIPHER_CTX_reset(%struct.evp_cipher_ctx_st* noundef) local_unnamed_addr #2

declare i32 @EVP_EncryptInit_ex(%struct.evp_cipher_ctx_st* noundef, %struct.evp_cipher_st* noundef, %struct.engine_st* noundef, i8* noundef, i8* noundef) local_unnamed_addr #2

declare %struct.evp_cipher_st* @EVP_CIPHER_CTX_get0_cipher(%struct.evp_cipher_ctx_st* noundef) local_unnamed_addr #2

declare %struct.ossl_provider_st* @EVP_CIPHER_get0_provider(%struct.evp_cipher_st* noundef) local_unnamed_addr #2

declare %struct.ossl_lib_ctx_st* @ossl_provider_libctx(%struct.ossl_provider_st* noundef) local_unnamed_addr #2

declare i32 @EVP_CIPHER_CTX_rand_key(%struct.evp_cipher_ctx_st* noundef, i8* noundef) local_unnamed_addr #2

declare i32 @EVP_CIPHER_CTX_get_iv_length(%struct.evp_cipher_ctx_st* noundef) local_unnamed_addr #2

declare i32 @RAND_priv_bytes_ex(%struct.ossl_lib_ctx_st* noundef, i8* noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

declare i32 @EVP_CIPHER_CTX_get_key_length(%struct.evp_cipher_ctx_st* noundef) local_unnamed_addr #2

declare %struct.evp_pkey_ctx_st* @EVP_PKEY_CTX_new_from_pkey(%struct.ossl_lib_ctx_st* noundef, %struct.evp_pkey_st* noundef, i8* noundef) local_unnamed_addr #2

declare void @ERR_new() local_unnamed_addr #2

declare void @ERR_set_debug(i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #2

declare void @ERR_set_error(i32 noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #2

declare i32 @EVP_PKEY_encrypt_init(%struct.evp_pkey_ctx_st* noundef) local_unnamed_addr #2

declare i32 @EVP_PKEY_encrypt(%struct.evp_pkey_ctx_st* noundef, i8* noundef, i64* noundef, i8* noundef, i64 noundef) local_unnamed_addr #2

declare void @EVP_PKEY_CTX_free(%struct.evp_pkey_ctx_st* noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

declare void @OPENSSL_cleanse(i8* noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @EVP_SealFinal(%struct.evp_cipher_ctx_st* noundef %ctx, i8* noundef %out, i32* noundef %outl) local_unnamed_addr #0 {
entry:
  %call = tail call i32 @EVP_EncryptFinal_ex(%struct.evp_cipher_ctx_st* noundef %ctx, i8* noundef %out, i32* noundef %outl) #4
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call1 = tail call i32 @EVP_EncryptInit_ex(%struct.evp_cipher_ctx_st* noundef %ctx, %struct.evp_cipher_st* noundef null, %struct.engine_st* noundef null, i8* noundef null, i8* noundef null) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %i.0 = phi i32 [ %call1, %if.then ], [ 0, %entry ]
  ret i32 %i.0
}

declare i32 @EVP_EncryptFinal_ex(%struct.evp_cipher_ctx_st* noundef, i8* noundef, i32* noundef) local_unnamed_addr #2

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
!8 = !{!9, !9, i64 0}
!9 = !{!"any pointer", !6, i64 0}
!10 = !{!11, !11, i64 0}
!11 = !{!"int", !6, i64 0}
!12 = distinct !{!12, !13}
!13 = !{!"llvm.loop.mustprogress"}
