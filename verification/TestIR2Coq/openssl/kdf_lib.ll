; ModuleID = 'crypto/evp/kdf_lib.c'
source_filename = "crypto/evp/kdf_lib.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evp_kdf_ctx_st = type { %struct.evp_kdf_st*, i8* }
%struct.evp_kdf_st = type { %struct.ossl_provider_st*, i32, i8*, i8*, i32, i8*, i8* (i8*)*, i8* (i8*)*, void (i8*)*, void (i8*)*, i32 (i8*, i8*, i64, %struct.ossl_param_st*)*, %struct.ossl_param_st* (i8*)*, %struct.ossl_param_st* (i8*, i8*)*, %struct.ossl_param_st* (i8*, i8*)*, i32 (%struct.ossl_param_st*)*, i32 (i8*, %struct.ossl_param_st*)*, i32 (i8*, %struct.ossl_param_st*)* }
%struct.ossl_provider_st = type opaque
%struct.ossl_param_st = type { i8*, i32, i8*, i64, i64 }

@.str = private unnamed_addr constant [21 x i8] c"crypto/evp/kdf_lib.c\00", align 1
@__func__.EVP_KDF_CTX_new = private unnamed_addr constant [16 x i8] c"EVP_KDF_CTX_new\00", align 1
@__func__.EVP_KDF_CTX_dup = private unnamed_addr constant [16 x i8] c"EVP_KDF_CTX_dup\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"size\00", align 1

; Function Attrs: noinline nounwind uwtable
define %struct.evp_kdf_ctx_st* @EVP_KDF_CTX_new(%struct.evp_kdf_st* noundef %kdf) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.evp_kdf_st* %kdf, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call = tail call i8* @CRYPTO_zalloc(i64 noundef 16, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 30) #6
  %0 = bitcast i8* %call to %struct.evp_kdf_ctx_st*
  %cmp1 = icmp eq i8* %call, null
  br i1 %cmp1, label %if.end11.critedge, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %newctx = getelementptr inbounds %struct.evp_kdf_st, %struct.evp_kdf_st* %kdf, i64 0, i32 6
  %1 = load i8* (i8*)*, i8* (i8*)** %newctx, align 8, !tbaa !4
  %prov = getelementptr inbounds %struct.evp_kdf_st, %struct.evp_kdf_st* %kdf, i64 0, i32 0
  %2 = load %struct.ossl_provider_st*, %struct.ossl_provider_st** %prov, align 8, !tbaa !10
  %call2 = tail call i8* @ossl_provider_ctx(%struct.ossl_provider_st* noundef %2) #6
  %call3 = tail call i8* %1(i8* noundef %call2) #6
  %algctx = getelementptr inbounds i8, i8* %call, i64 8
  %3 = bitcast i8* %algctx to i8**
  store i8* %call3, i8** %3, align 8, !tbaa !11
  %cmp4 = icmp eq i8* %call3, null
  br i1 %cmp4, label %if.then9, label %lor.lhs.false5

lor.lhs.false5:                                   ; preds = %lor.lhs.false
  %call6 = tail call i32 @EVP_KDF_up_ref(%struct.evp_kdf_st* noundef nonnull %kdf) #6
  %tobool.not = icmp eq i32 %call6, 0
  br i1 %tobool.not, label %if.then9, label %if.else

if.then9:                                         ; preds = %lor.lhs.false, %lor.lhs.false5
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 34, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.EVP_KDF_CTX_new, i64 0, i64 0)) #6
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 6, i32 noundef 786688, i8* noundef null) #6
  %freectx = getelementptr inbounds %struct.evp_kdf_st, %struct.evp_kdf_st* %kdf, i64 0, i32 8
  %4 = load void (i8*)*, void (i8*)** %freectx, align 8, !tbaa !13
  %5 = load i8*, i8** %3, align 8, !tbaa !11
  tail call void %4(i8* noundef %5) #6
  br label %if.end11

if.end11.critedge:                                ; preds = %if.end
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 34, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.EVP_KDF_CTX_new, i64 0, i64 0)) #6
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 6, i32 noundef 786688, i8* noundef null) #6
  br label %if.end11

if.end11:                                         ; preds = %if.end11.critedge, %if.then9
  tail call void @CRYPTO_free(i8* noundef %call, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 37) #6
  br label %cleanup

if.else:                                          ; preds = %lor.lhs.false5
  %meth = bitcast i8* %call to %struct.evp_kdf_st**
  store %struct.evp_kdf_st* %kdf, %struct.evp_kdf_st** %meth, align 8, !tbaa !14
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %if.else, %entry
  %retval.0 = phi %struct.evp_kdf_ctx_st* [ null, %entry ], [ null, %if.end11 ], [ %0, %if.else ]
  ret %struct.evp_kdf_ctx_st* %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

declare i8* @CRYPTO_zalloc(i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare i8* @ossl_provider_ctx(%struct.ossl_provider_st* noundef) local_unnamed_addr #2

declare i32 @EVP_KDF_up_ref(%struct.evp_kdf_st* noundef) local_unnamed_addr #2

declare void @ERR_new() local_unnamed_addr #2

declare void @ERR_set_debug(i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #2

declare void @ERR_set_error(i32 noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #2

declare void @CRYPTO_free(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: noinline nounwind uwtable
define void @EVP_KDF_CTX_free(%struct.evp_kdf_ctx_st* noundef %ctx) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.evp_kdf_ctx_st* %ctx, null
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %meth = getelementptr inbounds %struct.evp_kdf_ctx_st, %struct.evp_kdf_ctx_st* %ctx, i64 0, i32 0
  %0 = load %struct.evp_kdf_st*, %struct.evp_kdf_st** %meth, align 8, !tbaa !14
  %freectx = getelementptr inbounds %struct.evp_kdf_st, %struct.evp_kdf_st* %0, i64 0, i32 8
  %1 = load void (i8*)*, void (i8*)** %freectx, align 8, !tbaa !13
  %algctx = getelementptr inbounds %struct.evp_kdf_ctx_st, %struct.evp_kdf_ctx_st* %ctx, i64 0, i32 1
  %2 = load i8*, i8** %algctx, align 8, !tbaa !11
  tail call void %1(i8* noundef %2) #6
  store i8* null, i8** %algctx, align 8, !tbaa !11
  %3 = load %struct.evp_kdf_st*, %struct.evp_kdf_st** %meth, align 8, !tbaa !14
  tail call void @EVP_KDF_free(%struct.evp_kdf_st* noundef %3) #6
  %4 = bitcast %struct.evp_kdf_ctx_st* %ctx to i8*
  tail call void @CRYPTO_free(i8* noundef nonnull %4, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 52) #6
  br label %return

return:                                           ; preds = %entry, %if.end
  ret void
}

declare void @EVP_KDF_free(%struct.evp_kdf_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define %struct.evp_kdf_ctx_st* @EVP_KDF_CTX_dup(%struct.evp_kdf_ctx_st* noundef %src) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.evp_kdf_ctx_st* %src, null
  br i1 %cmp, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %algctx = getelementptr inbounds %struct.evp_kdf_ctx_st, %struct.evp_kdf_ctx_st* %src, i64 0, i32 1
  %0 = load i8*, i8** %algctx, align 8, !tbaa !11
  %cmp1 = icmp eq i8* %0, null
  br i1 %cmp1, label %cleanup, label %lor.lhs.false2

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %meth = getelementptr inbounds %struct.evp_kdf_ctx_st, %struct.evp_kdf_ctx_st* %src, i64 0, i32 0
  %1 = load %struct.evp_kdf_st*, %struct.evp_kdf_st** %meth, align 8, !tbaa !14
  %dupctx = getelementptr inbounds %struct.evp_kdf_st, %struct.evp_kdf_st* %1, i64 0, i32 7
  %2 = load i8* (i8*)*, i8* (i8*)** %dupctx, align 8, !tbaa !15
  %cmp3 = icmp eq i8* (i8*)* %2, null
  br i1 %cmp3, label %cleanup, label %if.end

if.end:                                           ; preds = %lor.lhs.false2
  %call = tail call i8* @CRYPTO_malloc(i64 noundef 16, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 62) #6
  %3 = bitcast i8* %call to %struct.evp_kdf_ctx_st*
  %cmp4 = icmp eq i8* %call, null
  br i1 %cmp4, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 64, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.EVP_KDF_CTX_dup, i64 0, i64 0)) #6
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 6, i32 noundef 786688, i8* noundef null) #6
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %4 = bitcast %struct.evp_kdf_ctx_st* %src to i8*
  %call7 = tail call i8* @memcpy(i8* noundef nonnull %call, i8* noundef nonnull %4, i64 noundef 16) #6
  %meth8 = bitcast i8* %call to %struct.evp_kdf_st**
  %5 = load %struct.evp_kdf_st*, %struct.evp_kdf_st** %meth8, align 8, !tbaa !14
  %call9 = tail call i32 @EVP_KDF_up_ref(%struct.evp_kdf_st* noundef %5) #6
  %tobool.not = icmp eq i32 %call9, 0
  br i1 %tobool.not, label %if.then10, label %if.end11

if.then10:                                        ; preds = %if.end6
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 70, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.EVP_KDF_CTX_dup, i64 0, i64 0)) #6
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 6, i32 noundef 786688, i8* noundef null) #6
  tail call void @CRYPTO_free(i8* noundef nonnull %call, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 71) #6
  br label %cleanup

if.end11:                                         ; preds = %if.end6
  %6 = load %struct.evp_kdf_st*, %struct.evp_kdf_st** %meth, align 8, !tbaa !14
  %dupctx13 = getelementptr inbounds %struct.evp_kdf_st, %struct.evp_kdf_st* %6, i64 0, i32 7
  %7 = load i8* (i8*)*, i8* (i8*)** %dupctx13, align 8, !tbaa !15
  %8 = load i8*, i8** %algctx, align 8, !tbaa !11
  %call15 = tail call i8* %7(i8* noundef %8) #6
  %algctx16 = getelementptr inbounds i8, i8* %call, i64 8
  %9 = bitcast i8* %algctx16 to i8**
  store i8* %call15, i8** %9, align 8, !tbaa !11
  %cmp18 = icmp eq i8* %call15, null
  br i1 %cmp18, label %if.then19, label %cleanup

if.then19:                                        ; preds = %if.end11
  tail call void @EVP_KDF_CTX_free(%struct.evp_kdf_ctx_st* noundef nonnull %3) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %entry, %lor.lhs.false, %lor.lhs.false2, %if.then19, %if.then10, %if.then5
  %retval.0 = phi %struct.evp_kdf_ctx_st* [ null, %if.then5 ], [ null, %if.then19 ], [ null, %if.then10 ], [ null, %lor.lhs.false2 ], [ null, %lor.lhs.false ], [ null, %entry ], [ %3, %if.end11 ]
  ret %struct.evp_kdf_ctx_st* %retval.0
}

declare i8* @CRYPTO_malloc(i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare i8* @memcpy(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define i32 @evp_kdf_get_number(%struct.evp_kdf_st* nocapture noundef readonly %kdf) local_unnamed_addr #4 {
entry:
  %name_id = getelementptr inbounds %struct.evp_kdf_st, %struct.evp_kdf_st* %kdf, i64 0, i32 1
  %0 = load i32, i32* %name_id, align 8, !tbaa !16
  ret i32 %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define i8* @EVP_KDF_get0_name(%struct.evp_kdf_st* nocapture noundef readonly %kdf) local_unnamed_addr #4 {
entry:
  %type_name = getelementptr inbounds %struct.evp_kdf_st, %struct.evp_kdf_st* %kdf, i64 0, i32 2
  %0 = load i8*, i8** %type_name, align 8, !tbaa !17
  ret i8* %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define i8* @EVP_KDF_get0_description(%struct.evp_kdf_st* nocapture noundef readonly %kdf) local_unnamed_addr #4 {
entry:
  %description = getelementptr inbounds %struct.evp_kdf_st, %struct.evp_kdf_st* %kdf, i64 0, i32 3
  %0 = load i8*, i8** %description, align 8, !tbaa !18
  ret i8* %0
}

; Function Attrs: noinline nounwind uwtable
define i32 @EVP_KDF_is_a(%struct.evp_kdf_st* nocapture noundef readonly %kdf, i8* noundef %name) local_unnamed_addr #0 {
entry:
  %prov = getelementptr inbounds %struct.evp_kdf_st, %struct.evp_kdf_st* %kdf, i64 0, i32 0
  %0 = load %struct.ossl_provider_st*, %struct.ossl_provider_st** %prov, align 8, !tbaa !10
  %name_id = getelementptr inbounds %struct.evp_kdf_st, %struct.evp_kdf_st* %kdf, i64 0, i32 1
  %1 = load i32, i32* %name_id, align 8, !tbaa !16
  %call = tail call i32 @evp_is_a(%struct.ossl_provider_st* noundef %0, i32 noundef %1, i8* noundef null, i8* noundef %name) #6
  ret i32 %call
}

declare i32 @evp_is_a(%struct.ossl_provider_st* noundef, i32 noundef, i8* noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define %struct.ossl_provider_st* @EVP_KDF_get0_provider(%struct.evp_kdf_st* nocapture noundef readonly %kdf) local_unnamed_addr #4 {
entry:
  %prov = getelementptr inbounds %struct.evp_kdf_st, %struct.evp_kdf_st* %kdf, i64 0, i32 0
  %0 = load %struct.ossl_provider_st*, %struct.ossl_provider_st** %prov, align 8, !tbaa !10
  ret %struct.ossl_provider_st* %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define %struct.evp_kdf_st* @EVP_KDF_CTX_kdf(%struct.evp_kdf_ctx_st* nocapture noundef readonly %ctx) local_unnamed_addr #4 {
entry:
  %meth = getelementptr inbounds %struct.evp_kdf_ctx_st, %struct.evp_kdf_ctx_st* %ctx, i64 0, i32 0
  %0 = load %struct.evp_kdf_st*, %struct.evp_kdf_st** %meth, align 8, !tbaa !14
  ret %struct.evp_kdf_st* %0
}

; Function Attrs: noinline nounwind uwtable
define void @EVP_KDF_CTX_reset(%struct.evp_kdf_ctx_st* noundef readonly %ctx) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.evp_kdf_ctx_st* %ctx, null
  br i1 %cmp, label %if.end5, label %if.end

if.end:                                           ; preds = %entry
  %meth = getelementptr inbounds %struct.evp_kdf_ctx_st, %struct.evp_kdf_ctx_st* %ctx, i64 0, i32 0
  %0 = load %struct.evp_kdf_st*, %struct.evp_kdf_st** %meth, align 8, !tbaa !14
  %reset = getelementptr inbounds %struct.evp_kdf_st, %struct.evp_kdf_st* %0, i64 0, i32 9
  %1 = load void (i8*)*, void (i8*)** %reset, align 8, !tbaa !19
  %cmp1.not = icmp eq void (i8*)* %1, null
  br i1 %cmp1.not, label %if.end5, label %if.then2

if.then2:                                         ; preds = %if.end
  %algctx = getelementptr inbounds %struct.evp_kdf_ctx_st, %struct.evp_kdf_ctx_st* %ctx, i64 0, i32 1
  %2 = load i8*, i8** %algctx, align 8, !tbaa !11
  tail call void %1(i8* noundef %2) #6
  br label %if.end5

if.end5:                                          ; preds = %entry, %if.then2, %if.end
  ret void
}

; Function Attrs: noinline nounwind uwtable
define i64 @EVP_KDF_CTX_get_kdf_size(%struct.evp_kdf_ctx_st* noundef readonly %ctx) local_unnamed_addr #0 {
entry:
  %params = alloca [2 x %struct.ossl_param_st], align 16
  %s = alloca i64, align 8
  %0 = bitcast [2 x %struct.ossl_param_st]* %params to i8*
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %0) #8
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(80) %0, i8 0, i64 80, i1 false)
  %1 = bitcast i64* %s to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #8
  store i64 0, i64* %s, align 8, !tbaa !20
  %cmp = icmp eq %struct.evp_kdf_ctx_st* %ctx, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %arraydecay = getelementptr inbounds [2 x %struct.ossl_param_st], [2 x %struct.ossl_param_st]* %params, i64 0, i64 0
  %params24 = getelementptr inbounds [2 x %struct.ossl_param_st], [2 x %struct.ossl_param_st]* %params, i64 0, i64 0
  call void @OSSL_PARAM_construct_size_t(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %params24, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i64* noundef nonnull %s) #6
  %meth = getelementptr inbounds %struct.evp_kdf_ctx_st, %struct.evp_kdf_ctx_st* %ctx, i64 0, i32 0
  %2 = load %struct.evp_kdf_st*, %struct.evp_kdf_st** %meth, align 8, !tbaa !14
  %get_ctx_params = getelementptr inbounds %struct.evp_kdf_st, %struct.evp_kdf_st* %2, i64 0, i32 15
  %3 = load i32 (i8*, %struct.ossl_param_st*)*, i32 (i8*, %struct.ossl_param_st*)** %get_ctx_params, align 8, !tbaa !22
  %cmp1.not = icmp eq i32 (i8*, %struct.ossl_param_st*)* %3, null
  br i1 %cmp1.not, label %if.end6, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  %algctx = getelementptr inbounds %struct.evp_kdf_ctx_st, %struct.evp_kdf_ctx_st* %ctx, i64 0, i32 1
  %4 = load i8*, i8** %algctx, align 8, !tbaa !11
  %call = call i32 %3(i8* noundef %4, %struct.ossl_param_st* noundef nonnull %arraydecay) #6
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true.if.end6_crit_edge, label %if.then5

land.lhs.true.if.end6_crit_edge:                  ; preds = %land.lhs.true
  %.pre = load %struct.evp_kdf_st*, %struct.evp_kdf_st** %meth, align 8, !tbaa !14
  br label %if.end6

if.then5:                                         ; preds = %land.lhs.true
  %5 = load i64, i64* %s, align 8, !tbaa !20
  br label %cleanup

if.end6:                                          ; preds = %land.lhs.true.if.end6_crit_edge, %if.end
  %6 = phi %struct.evp_kdf_st* [ %.pre, %land.lhs.true.if.end6_crit_edge ], [ %2, %if.end ]
  %get_params = getelementptr inbounds %struct.evp_kdf_st, %struct.evp_kdf_st* %6, i64 0, i32 14
  %7 = load i32 (%struct.ossl_param_st*)*, i32 (%struct.ossl_param_st*)** %get_params, align 8, !tbaa !23
  %cmp8.not = icmp eq i32 (%struct.ossl_param_st*)* %7, null
  br i1 %cmp8.not, label %cleanup, label %land.lhs.true9

land.lhs.true9:                                   ; preds = %if.end6
  %call13 = call i32 %7(%struct.ossl_param_st* noundef nonnull %arraydecay) #6
  %tobool14.not = icmp eq i32 %call13, 0
  %8 = load i64, i64* %s, align 8
  %spec.select = select i1 %tobool14.not, i64 0, i64 %8
  br label %cleanup

cleanup:                                          ; preds = %land.lhs.true9, %if.end6, %entry, %if.then5
  %retval.0 = phi i64 [ %5, %if.then5 ], [ 0, %entry ], [ 0, %if.end6 ], [ %spec.select, %land.lhs.true9 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #8
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %0) #8
  ret i64 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #5

declare void @OSSL_PARAM_construct_size_t(%struct.ossl_param_st* sret(%struct.ossl_param_st) align 8, i8* noundef, i64* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @EVP_KDF_derive(%struct.evp_kdf_ctx_st* noundef readonly %ctx, i8* noundef %key, i64 noundef %keylen, %struct.ossl_param_st* noundef %params) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.evp_kdf_ctx_st* %ctx, null
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %meth = getelementptr inbounds %struct.evp_kdf_ctx_st, %struct.evp_kdf_ctx_st* %ctx, i64 0, i32 0
  %0 = load %struct.evp_kdf_st*, %struct.evp_kdf_st** %meth, align 8, !tbaa !14
  %derive = getelementptr inbounds %struct.evp_kdf_st, %struct.evp_kdf_st* %0, i64 0, i32 10
  %1 = load i32 (i8*, i8*, i64, %struct.ossl_param_st*)*, i32 (i8*, i8*, i64, %struct.ossl_param_st*)** %derive, align 8, !tbaa !24
  %algctx = getelementptr inbounds %struct.evp_kdf_ctx_st, %struct.evp_kdf_ctx_st* %ctx, i64 0, i32 1
  %2 = load i8*, i8** %algctx, align 8, !tbaa !11
  %call = tail call i32 %1(i8* noundef %2, i8* noundef %key, i64 noundef %keylen, %struct.ossl_param_st* noundef %params) #6
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %call, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @EVP_KDF_get_params(%struct.evp_kdf_st* nocapture noundef readonly %kdf, %struct.ossl_param_st* noundef %params) local_unnamed_addr #0 {
entry:
  %get_params = getelementptr inbounds %struct.evp_kdf_st, %struct.evp_kdf_st* %kdf, i64 0, i32 14
  %0 = load i32 (%struct.ossl_param_st*)*, i32 (%struct.ossl_param_st*)** %get_params, align 8, !tbaa !23
  %cmp.not = icmp eq i32 (%struct.ossl_param_st*)* %0, null
  br i1 %cmp.not, label %return, label %if.then

if.then:                                          ; preds = %entry
  %call = tail call i32 %0(%struct.ossl_param_st* noundef %params) #6
  br label %return

return:                                           ; preds = %entry, %if.then
  %retval.0 = phi i32 [ %call, %if.then ], [ 1, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @EVP_KDF_CTX_get_params(%struct.evp_kdf_ctx_st* nocapture noundef readonly %ctx, %struct.ossl_param_st* noundef %params) local_unnamed_addr #0 {
entry:
  %meth = getelementptr inbounds %struct.evp_kdf_ctx_st, %struct.evp_kdf_ctx_st* %ctx, i64 0, i32 0
  %0 = load %struct.evp_kdf_st*, %struct.evp_kdf_st** %meth, align 8, !tbaa !14
  %get_ctx_params = getelementptr inbounds %struct.evp_kdf_st, %struct.evp_kdf_st* %0, i64 0, i32 15
  %1 = load i32 (i8*, %struct.ossl_param_st*)*, i32 (i8*, %struct.ossl_param_st*)** %get_ctx_params, align 8, !tbaa !22
  %cmp.not = icmp eq i32 (i8*, %struct.ossl_param_st*)* %1, null
  br i1 %cmp.not, label %return, label %if.then

if.then:                                          ; preds = %entry
  %algctx = getelementptr inbounds %struct.evp_kdf_ctx_st, %struct.evp_kdf_ctx_st* %ctx, i64 0, i32 1
  %2 = load i8*, i8** %algctx, align 8, !tbaa !11
  %call = tail call i32 %1(i8* noundef %2, %struct.ossl_param_st* noundef %params) #6
  br label %return

return:                                           ; preds = %entry, %if.then
  %retval.0 = phi i32 [ %call, %if.then ], [ 1, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @EVP_KDF_CTX_set_params(%struct.evp_kdf_ctx_st* nocapture noundef readonly %ctx, %struct.ossl_param_st* noundef %params) local_unnamed_addr #0 {
entry:
  %meth = getelementptr inbounds %struct.evp_kdf_ctx_st, %struct.evp_kdf_ctx_st* %ctx, i64 0, i32 0
  %0 = load %struct.evp_kdf_st*, %struct.evp_kdf_st** %meth, align 8, !tbaa !14
  %set_ctx_params = getelementptr inbounds %struct.evp_kdf_st, %struct.evp_kdf_st* %0, i64 0, i32 16
  %1 = load i32 (i8*, %struct.ossl_param_st*)*, i32 (i8*, %struct.ossl_param_st*)** %set_ctx_params, align 8, !tbaa !25
  %cmp.not = icmp eq i32 (i8*, %struct.ossl_param_st*)* %1, null
  br i1 %cmp.not, label %return, label %if.then

if.then:                                          ; preds = %entry
  %algctx = getelementptr inbounds %struct.evp_kdf_ctx_st, %struct.evp_kdf_ctx_st* %ctx, i64 0, i32 1
  %2 = load i8*, i8** %algctx, align 8, !tbaa !11
  %call = tail call i32 %1(i8* noundef %2, %struct.ossl_param_st* noundef %params) #6
  br label %return

return:                                           ; preds = %entry, %if.then
  %retval.0 = phi i32 [ %call, %if.then ], [ 1, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @EVP_KDF_names_do_all(%struct.evp_kdf_st* nocapture noundef readonly %kdf, void (i8*, i8*)* noundef %fn, i8* noundef %data) local_unnamed_addr #0 {
entry:
  %prov = getelementptr inbounds %struct.evp_kdf_st, %struct.evp_kdf_st* %kdf, i64 0, i32 0
  %0 = load %struct.ossl_provider_st*, %struct.ossl_provider_st** %prov, align 8, !tbaa !10
  %cmp.not = icmp eq %struct.ossl_provider_st* %0, null
  br i1 %cmp.not, label %return, label %if.then

if.then:                                          ; preds = %entry
  %name_id = getelementptr inbounds %struct.evp_kdf_st, %struct.evp_kdf_st* %kdf, i64 0, i32 1
  %1 = load i32, i32* %name_id, align 8, !tbaa !16
  %call = tail call i32 @evp_names_do_all(%struct.ossl_provider_st* noundef nonnull %0, i32 noundef %1, void (i8*, i8*)* noundef %fn, i8* noundef %data) #6
  br label %return

return:                                           ; preds = %entry, %if.then
  %retval.0 = phi i32 [ %call, %if.then ], [ 1, %entry ]
  ret i32 %retval.0
}

declare i32 @evp_names_do_all(%struct.ossl_provider_st* noundef, i32 noundef, void (i8*, i8*)* noundef, i8* noundef) local_unnamed_addr #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #6 = { nobuiltin nounwind "no-builtins" }
attributes #7 = { nobuiltin "no-builtins" }
attributes #8 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{!"clang version 14.0.0"}
!4 = !{!5, !6, i64 48}
!5 = !{!"evp_kdf_st", !6, i64 0, !9, i64 8, !6, i64 16, !6, i64 24, !7, i64 32, !6, i64 40, !6, i64 48, !6, i64 56, !6, i64 64, !6, i64 72, !6, i64 80, !6, i64 88, !6, i64 96, !6, i64 104, !6, i64 112, !6, i64 120, !6, i64 128}
!6 = !{!"any pointer", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!"int", !7, i64 0}
!10 = !{!5, !6, i64 0}
!11 = !{!12, !6, i64 8}
!12 = !{!"evp_kdf_ctx_st", !6, i64 0, !6, i64 8}
!13 = !{!5, !6, i64 64}
!14 = !{!12, !6, i64 0}
!15 = !{!5, !6, i64 56}
!16 = !{!5, !9, i64 8}
!17 = !{!5, !6, i64 16}
!18 = !{!5, !6, i64 24}
!19 = !{!5, !6, i64 72}
!20 = !{!21, !21, i64 0}
!21 = !{!"long", !7, i64 0}
!22 = !{!5, !6, i64 120}
!23 = !{!5, !6, i64 112}
!24 = !{!5, !6, i64 80}
!25 = !{!5, !6, i64 128}
