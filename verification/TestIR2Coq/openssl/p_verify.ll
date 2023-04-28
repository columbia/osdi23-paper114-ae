; ModuleID = 'crypto/evp/p_verify.c'
source_filename = "crypto/evp/p_verify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evp_md_ctx_st = type opaque
%struct.evp_pkey_st = type { i32, i32, %struct.evp_pkey_asn1_method_st*, %struct.engine_st*, %struct.engine_st*, %union.legacy_pkey_st, %union.legacy_pkey_st, i32, i8*, %struct.stack_st_X509_ATTRIBUTE*, i32, i8, %struct.crypto_ex_data_st, %struct.evp_keymgmt_st*, i8*, i64, %struct.stack_st_OP_CACHE_ELEM*, i64, %struct.anon }
%struct.evp_pkey_asn1_method_st = type opaque
%struct.engine_st = type opaque
%union.legacy_pkey_st = type { i8* }
%struct.stack_st_X509_ATTRIBUTE = type opaque
%struct.crypto_ex_data_st = type { %struct.ossl_lib_ctx_st*, %struct.stack_st_void* }
%struct.stack_st_void = type opaque
%struct.evp_keymgmt_st = type opaque
%struct.stack_st_OP_CACHE_ELEM = type opaque
%struct.anon = type { i32, i32, i32 }
%struct.ossl_lib_ctx_st = type opaque
%struct.evp_pkey_ctx_st = type { i32, %struct.ossl_lib_ctx_st*, i8*, i8*, %struct.evp_keymgmt_st*, %union.anon, %struct.anon.5, i8*, i32 (%struct.evp_pkey_ctx_st*)*, i32*, i32, i32, %struct.evp_pkey_method_st*, %struct.engine_st*, %struct.evp_pkey_st*, %struct.evp_pkey_st*, i8*, i8, %struct.bignum_st* }
%union.anon = type { %struct.anon.1 }
%struct.anon.1 = type { %struct.evp_keyexch_st*, i8* }
%struct.evp_keyexch_st = type opaque
%struct.anon.5 = type { i8*, i8*, i64, i8 }
%struct.evp_pkey_method_st = type { i32, i32, i32 (%struct.evp_pkey_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*, %struct.evp_pkey_ctx_st*)*, void (%struct.evp_pkey_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*, %struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*, %struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*, i8*, i64*, i8*, i64)*, i32 (%struct.evp_pkey_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*, i8*, i64, i8*, i64)*, i32 (%struct.evp_pkey_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*, i8*, i64*, i8*, i64)*, i32 (%struct.evp_pkey_ctx_st*, %struct.evp_md_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*, i8*, i64*, %struct.evp_md_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*, %struct.evp_md_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*, i8*, i32, %struct.evp_md_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*, i8*, i64*, i8*, i64)*, i32 (%struct.evp_pkey_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*, i8*, i64*, i8*, i64)*, i32 (%struct.evp_pkey_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*, i8*, i64*)*, i32 (%struct.evp_pkey_ctx_st*, i32, i32, i8*)*, i32 (%struct.evp_pkey_ctx_st*, i8*, i8*)*, i32 (%struct.evp_md_ctx_st*, i8*, i64*, i8*, i64)*, i32 (%struct.evp_md_ctx_st*, i8*, i64, i8*, i64)*, i32 (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_ctx_st*, %struct.evp_md_ctx_st*)* }
%struct.bignum_st = type opaque
%struct.evp_md_st = type { i32, i32, i32, i64, i32, i32 (%struct.evp_md_ctx_st*)*, i32 (%struct.evp_md_ctx_st*, i8*, i64)*, i32 (%struct.evp_md_ctx_st*, i8*)*, i32 (%struct.evp_md_ctx_st*, %struct.evp_md_ctx_st*)*, i32 (%struct.evp_md_ctx_st*)*, i32, i32, i32 (%struct.evp_md_ctx_st*, i32, i32, i8*)*, i32, i8*, i8*, %struct.ossl_provider_st*, i32, i8*, i8* (i8*)*, i32 (i8*, %struct.ossl_param_st*)*, i32 (i8*, i8*, i64)*, i32 (i8*, i8*, i64*, i64)*, i32 (i8*, i8*, i64, i8*, i64*, i64)*, void (i8*)*, i8* (i8*)*, i32 (%struct.ossl_param_st*)*, i32 (i8*, %struct.ossl_param_st*)*, i32 (i8*, %struct.ossl_param_st*)*, %struct.ossl_param_st* (i8*)*, %struct.ossl_param_st* (i8*, i8*)*, %struct.ossl_param_st* (i8*, i8*)* }
%struct.ossl_provider_st = type opaque
%struct.ossl_param_st = type { i8*, i32, i8*, i64, i64 }

@.str = private unnamed_addr constant [22 x i8] c"crypto/evp/p_verify.c\00", align 1
@__func__.EVP_VerifyFinal_ex = private unnamed_addr constant [19 x i8] c"EVP_VerifyFinal_ex\00", align 1

; Function Attrs: noinline nounwind uwtable
define i32 @EVP_VerifyFinal_ex(%struct.evp_md_ctx_st* noundef %ctx, i8* noundef %sigbuf, i32 noundef %siglen, %struct.evp_pkey_st* noundef %pkey, %struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef %propq) local_unnamed_addr #0 {
entry:
  %m = alloca [64 x i8], align 16
  %m_len = alloca i32, align 4
  %0 = getelementptr inbounds [64 x i8], [64 x i8]* %m, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %0) #3
  %1 = bitcast i32* %m_len to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %1) #3
  store i32 0, i32* %m_len, align 4, !tbaa !4
  %call = tail call i32 @EVP_MD_CTX_test_flags(%struct.evp_md_ctx_st* noundef %ctx, i32 noundef 512) #4
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %call1 = call i32 @EVP_DigestFinal_ex(%struct.evp_md_ctx_st* noundef %ctx, i8* noundef nonnull %0, i32* noundef nonnull %m_len) #4
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %err, label %if.end17

if.else:                                          ; preds = %entry
  %call4 = tail call %struct.evp_md_ctx_st* @EVP_MD_CTX_new() #4
  %cmp = icmp eq %struct.evp_md_ctx_st* %call4, null
  br i1 %cmp, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.else
  tail call void @ERR_new() #4
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 34, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.EVP_VerifyFinal_ex, i64 0, i64 0)) #4
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 6, i32 noundef 786688, i8* noundef null) #4
  br label %cleanup34

if.end6:                                          ; preds = %if.else
  %call7 = tail call i32 @EVP_MD_CTX_copy_ex(%struct.evp_md_ctx_st* noundef nonnull %call4, %struct.evp_md_ctx_st* noundef %ctx) #4
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end12.thread, label %if.end12

if.end12.thread:                                  ; preds = %if.end6
  tail call void @EVP_MD_CTX_free(%struct.evp_md_ctx_st* noundef nonnull %call4) #4
  br label %cleanup34

if.end12:                                         ; preds = %if.end6
  %call11 = call i32 @EVP_DigestFinal_ex(%struct.evp_md_ctx_st* noundef nonnull %call4, i8* noundef nonnull %0, i32* noundef nonnull %m_len) #4
  %phi.cmp = icmp eq i32 %call11, 0
  call void @EVP_MD_CTX_free(%struct.evp_md_ctx_st* noundef nonnull %call4) #4
  br i1 %phi.cmp, label %cleanup34, label %if.end17

if.end17:                                         ; preds = %if.end12, %if.then
  %call18 = call %struct.evp_pkey_ctx_st* @EVP_PKEY_CTX_new_from_pkey(%struct.ossl_lib_ctx_st* noundef %libctx, %struct.evp_pkey_st* noundef %pkey, i8* noundef %propq) #4
  %cmp19 = icmp eq %struct.evp_pkey_ctx_st* %call18, null
  br i1 %cmp19, label %err, label %if.end21

if.end21:                                         ; preds = %if.end17
  %call22 = call i32 @EVP_PKEY_verify_init(%struct.evp_pkey_ctx_st* noundef nonnull %call18) #4
  %cmp23 = icmp slt i32 %call22, 1
  br i1 %cmp23, label %err, label %if.end25

if.end25:                                         ; preds = %if.end21
  %call26 = call %struct.evp_md_st* @EVP_MD_CTX_get0_md(%struct.evp_md_ctx_st* noundef %ctx) #4
  %call27 = call i32 @EVP_PKEY_CTX_set_signature_md(%struct.evp_pkey_ctx_st* noundef nonnull %call18, %struct.evp_md_st* noundef %call26) #4
  %cmp28 = icmp slt i32 %call27, 1
  br i1 %cmp28, label %err, label %if.end30

if.end30:                                         ; preds = %if.end25
  %conv = zext i32 %siglen to i64
  %2 = load i32, i32* %m_len, align 4, !tbaa !4
  %conv32 = zext i32 %2 to i64
  %call33 = call i32 @EVP_PKEY_verify(%struct.evp_pkey_ctx_st* noundef nonnull %call18, i8* noundef %sigbuf, i64 noundef %conv, i8* noundef nonnull %0, i64 noundef %conv32) #4
  br label %err

err:                                              ; preds = %if.end25, %if.end21, %if.end17, %if.then, %if.end30
  %i.0 = phi i32 [ -1, %if.end17 ], [ -1, %if.end21 ], [ -1, %if.end25 ], [ %call33, %if.end30 ], [ 0, %if.then ]
  %pkctx.0 = phi %struct.evp_pkey_ctx_st* [ null, %if.end17 ], [ %call18, %if.end21 ], [ %call18, %if.end25 ], [ %call18, %if.end30 ], [ null, %if.then ]
  call void @EVP_PKEY_CTX_free(%struct.evp_pkey_ctx_st* noundef %pkctx.0) #4
  br label %cleanup34

cleanup34:                                        ; preds = %if.end12.thread, %if.end12, %if.then5, %err
  %retval.1 = phi i32 [ %i.0, %err ], [ 0, %if.then5 ], [ 0, %if.end12 ], [ 0, %if.end12.thread ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %1) #3
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %0) #3
  ret i32 %retval.1
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

declare i32 @EVP_MD_CTX_test_flags(%struct.evp_md_ctx_st* noundef, i32 noundef) local_unnamed_addr #2

declare i32 @EVP_DigestFinal_ex(%struct.evp_md_ctx_st* noundef, i8* noundef, i32* noundef) local_unnamed_addr #2

declare %struct.evp_md_ctx_st* @EVP_MD_CTX_new() local_unnamed_addr #2

declare void @ERR_new() local_unnamed_addr #2

declare void @ERR_set_debug(i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #2

declare void @ERR_set_error(i32 noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #2

declare i32 @EVP_MD_CTX_copy_ex(%struct.evp_md_ctx_st* noundef, %struct.evp_md_ctx_st* noundef) local_unnamed_addr #2

declare void @EVP_MD_CTX_free(%struct.evp_md_ctx_st* noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

declare %struct.evp_pkey_ctx_st* @EVP_PKEY_CTX_new_from_pkey(%struct.ossl_lib_ctx_st* noundef, %struct.evp_pkey_st* noundef, i8* noundef) local_unnamed_addr #2

declare i32 @EVP_PKEY_verify_init(%struct.evp_pkey_ctx_st* noundef) local_unnamed_addr #2

declare i32 @EVP_PKEY_CTX_set_signature_md(%struct.evp_pkey_ctx_st* noundef, %struct.evp_md_st* noundef) local_unnamed_addr #2

declare %struct.evp_md_st* @EVP_MD_CTX_get0_md(%struct.evp_md_ctx_st* noundef) local_unnamed_addr #2

declare i32 @EVP_PKEY_verify(%struct.evp_pkey_ctx_st* noundef, i8* noundef, i64 noundef, i8* noundef, i64 noundef) local_unnamed_addr #2

declare void @EVP_PKEY_CTX_free(%struct.evp_pkey_ctx_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @EVP_VerifyFinal(%struct.evp_md_ctx_st* noundef %ctx, i8* noundef %sigbuf, i32 noundef %siglen, %struct.evp_pkey_st* noundef %pkey) local_unnamed_addr #0 {
entry:
  %call = tail call i32 @EVP_VerifyFinal_ex(%struct.evp_md_ctx_st* noundef %ctx, i8* noundef %sigbuf, i32 noundef %siglen, %struct.evp_pkey_st* noundef %pkey, %struct.ossl_lib_ctx_st* noundef null, i8* noundef null) #5
  ret i32 %call
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }
attributes #4 = { nobuiltin nounwind "no-builtins" }
attributes #5 = { nobuiltin "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{!"clang version 14.0.0"}
!4 = !{!5, !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
