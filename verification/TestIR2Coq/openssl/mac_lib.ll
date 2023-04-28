; ModuleID = 'crypto/evp/mac_lib.c'
source_filename = "crypto/evp/mac_lib.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evp_mac_ctx_st = type { %struct.evp_mac_st*, i8* }
%struct.evp_mac_st = type { %struct.ossl_provider_st*, i32, i8*, i8*, i32, i8*, i8* (i8*)*, i8* (i8*)*, void (i8*)*, i32 (i8*, i8*, i64, %struct.ossl_param_st*)*, i32 (i8*, i8*, i64)*, i32 (i8*, i8*, i64*, i64)*, %struct.ossl_param_st* (i8*)*, %struct.ossl_param_st* (i8*, i8*)*, %struct.ossl_param_st* (i8*, i8*)*, i32 (%struct.ossl_param_st*)*, i32 (i8*, %struct.ossl_param_st*)*, i32 (i8*, %struct.ossl_param_st*)* }
%struct.ossl_provider_st = type opaque
%struct.ossl_param_st = type { i8*, i32, i8*, i64, i64 }
%struct.ossl_lib_ctx_st = type opaque

@.str = private unnamed_addr constant [21 x i8] c"crypto/evp/mac_lib.c\00", align 1
@__func__.EVP_MAC_CTX_new = private unnamed_addr constant [16 x i8] c"EVP_MAC_CTX_new\00", align 1
@__func__.EVP_MAC_CTX_dup = private unnamed_addr constant [16 x i8] c"EVP_MAC_CTX_dup\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"size\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"block-size\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"digest\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"cipher\00", align 1
@__func__.EVP_Q_mac = private unnamed_addr constant [10 x i8] c"EVP_Q_mac\00", align 1
@__func__.evp_mac_final = private unnamed_addr constant [14 x i8] c"evp_mac_final\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"xof\00", align 1

; Function Attrs: noinline nounwind uwtable
define %struct.evp_mac_ctx_st* @EVP_MAC_CTX_new(%struct.evp_mac_st* noundef %mac) local_unnamed_addr #0 {
entry:
  %call = tail call i8* @CRYPTO_zalloc(i64 noundef 16, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 24) #6
  %0 = bitcast i8* %call to %struct.evp_mac_ctx_st*
  %cmp = icmp eq i8* %call, null
  br i1 %cmp, label %if.end.critedge, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %newctx = getelementptr inbounds %struct.evp_mac_st, %struct.evp_mac_st* %mac, i64 0, i32 6
  %1 = load i8* (i8*)*, i8* (i8*)** %newctx, align 8, !tbaa !4
  %prov = getelementptr inbounds %struct.evp_mac_st, %struct.evp_mac_st* %mac, i64 0, i32 0
  %2 = load %struct.ossl_provider_st*, %struct.ossl_provider_st** %prov, align 8, !tbaa !10
  %call1 = tail call i8* @ossl_provider_ctx(%struct.ossl_provider_st* noundef %2) #6
  %call2 = tail call i8* %1(i8* noundef %call1) #6
  %algctx = getelementptr inbounds i8, i8* %call, i64 8
  %3 = bitcast i8* %algctx to i8**
  store i8* %call2, i8** %3, align 8, !tbaa !11
  %cmp3 = icmp eq i8* %call2, null
  br i1 %cmp3, label %if.then7, label %lor.lhs.false4

lor.lhs.false4:                                   ; preds = %lor.lhs.false
  %call5 = tail call i32 @EVP_MAC_up_ref(%struct.evp_mac_st* noundef nonnull %mac) #6
  %tobool.not = icmp eq i32 %call5, 0
  br i1 %tobool.not, label %if.then7, label %if.else

if.then7:                                         ; preds = %lor.lhs.false, %lor.lhs.false4
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 29, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.EVP_MAC_CTX_new, i64 0, i64 0)) #6
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 6, i32 noundef 786688, i8* noundef null) #6
  %freectx = getelementptr inbounds %struct.evp_mac_st, %struct.evp_mac_st* %mac, i64 0, i32 8
  %4 = load void (i8*)*, void (i8*)** %freectx, align 8, !tbaa !13
  %5 = load i8*, i8** %3, align 8, !tbaa !11
  tail call void %4(i8* noundef %5) #6
  br label %if.end

if.end.critedge:                                  ; preds = %entry
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 29, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.EVP_MAC_CTX_new, i64 0, i64 0)) #6
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 6, i32 noundef 786688, i8* noundef null) #6
  br label %if.end

if.end:                                           ; preds = %if.end.critedge, %if.then7
  tail call void @CRYPTO_free(i8* noundef %call, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 32) #6
  br label %if.end9

if.else:                                          ; preds = %lor.lhs.false4
  %meth = bitcast i8* %call to %struct.evp_mac_st**
  store %struct.evp_mac_st* %mac, %struct.evp_mac_st** %meth, align 8, !tbaa !14
  br label %if.end9

if.end9:                                          ; preds = %if.else, %if.end
  %ctx.0 = phi %struct.evp_mac_ctx_st* [ null, %if.end ], [ %0, %if.else ]
  ret %struct.evp_mac_ctx_st* %ctx.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

declare i8* @CRYPTO_zalloc(i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare i8* @ossl_provider_ctx(%struct.ossl_provider_st* noundef) local_unnamed_addr #2

declare i32 @EVP_MAC_up_ref(%struct.evp_mac_st* noundef) local_unnamed_addr #2

declare void @ERR_new() local_unnamed_addr #2

declare void @ERR_set_debug(i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #2

declare void @ERR_set_error(i32 noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #2

declare void @CRYPTO_free(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: noinline nounwind uwtable
define void @EVP_MAC_CTX_free(%struct.evp_mac_ctx_st* noundef %ctx) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.evp_mac_ctx_st* %ctx, null
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %meth = getelementptr inbounds %struct.evp_mac_ctx_st, %struct.evp_mac_ctx_st* %ctx, i64 0, i32 0
  %0 = load %struct.evp_mac_st*, %struct.evp_mac_st** %meth, align 8, !tbaa !14
  %freectx = getelementptr inbounds %struct.evp_mac_st, %struct.evp_mac_st* %0, i64 0, i32 8
  %1 = load void (i8*)*, void (i8*)** %freectx, align 8, !tbaa !13
  %algctx = getelementptr inbounds %struct.evp_mac_ctx_st, %struct.evp_mac_ctx_st* %ctx, i64 0, i32 1
  %2 = load i8*, i8** %algctx, align 8, !tbaa !11
  tail call void %1(i8* noundef %2) #6
  store i8* null, i8** %algctx, align 8, !tbaa !11
  %3 = load %struct.evp_mac_st*, %struct.evp_mac_st** %meth, align 8, !tbaa !14
  tail call void @EVP_MAC_free(%struct.evp_mac_st* noundef %3) #6
  %4 = bitcast %struct.evp_mac_ctx_st* %ctx to i8*
  tail call void @CRYPTO_free(i8* noundef nonnull %4, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 48) #6
  br label %return

return:                                           ; preds = %entry, %if.end
  ret void
}

declare void @EVP_MAC_free(%struct.evp_mac_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define %struct.evp_mac_ctx_st* @EVP_MAC_CTX_dup(%struct.evp_mac_ctx_st* nocapture noundef readonly %src) local_unnamed_addr #0 {
entry:
  %algctx = getelementptr inbounds %struct.evp_mac_ctx_st, %struct.evp_mac_ctx_st* %src, i64 0, i32 1
  %0 = load i8*, i8** %algctx, align 8, !tbaa !11
  %cmp = icmp eq i8* %0, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call = tail call i8* @CRYPTO_malloc(i64 noundef 16, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 58) #6
  %1 = bitcast i8* %call to %struct.evp_mac_ctx_st*
  %cmp1 = icmp eq i8* %call, null
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 60, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.EVP_MAC_CTX_dup, i64 0, i64 0)) #6
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 6, i32 noundef 786688, i8* noundef null) #6
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %2 = bitcast %struct.evp_mac_ctx_st* %src to i8*
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %call, i8* noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !15
  %meth = bitcast i8* %call to %struct.evp_mac_st**
  %3 = load %struct.evp_mac_st*, %struct.evp_mac_st** %meth, align 8, !tbaa !14
  %call4 = tail call i32 @EVP_MAC_up_ref(%struct.evp_mac_st* noundef %3) #6
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end3
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 66, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.EVP_MAC_CTX_dup, i64 0, i64 0)) #6
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 6, i32 noundef 786688, i8* noundef null) #6
  tail call void @CRYPTO_free(i8* noundef nonnull %call, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 67) #6
  br label %cleanup

if.end6:                                          ; preds = %if.end3
  %meth7 = getelementptr inbounds %struct.evp_mac_ctx_st, %struct.evp_mac_ctx_st* %src, i64 0, i32 0
  %4 = load %struct.evp_mac_st*, %struct.evp_mac_st** %meth7, align 8, !tbaa !14
  %dupctx = getelementptr inbounds %struct.evp_mac_st, %struct.evp_mac_st* %4, i64 0, i32 7
  %5 = load i8* (i8*)*, i8* (i8*)** %dupctx, align 8, !tbaa !17
  %6 = load i8*, i8** %algctx, align 8, !tbaa !11
  %call9 = tail call i8* %5(i8* noundef %6) #6
  %algctx10 = getelementptr inbounds i8, i8* %call, i64 8
  %7 = bitcast i8* %algctx10 to i8**
  store i8* %call9, i8** %7, align 8, !tbaa !11
  %cmp12 = icmp eq i8* %call9, null
  br i1 %cmp12, label %if.then13, label %cleanup

if.then13:                                        ; preds = %if.end6
  tail call void @EVP_MAC_CTX_free(%struct.evp_mac_ctx_st* noundef nonnull %1) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %entry, %if.then13, %if.then5, %if.then2
  %retval.0 = phi %struct.evp_mac_ctx_st* [ null, %if.then2 ], [ null, %if.then13 ], [ null, %if.then5 ], [ null, %entry ], [ %1, %if.end6 ]
  ret %struct.evp_mac_ctx_st* %retval.0
}

declare i8* @CRYPTO_malloc(i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define %struct.evp_mac_st* @EVP_MAC_CTX_get0_mac(%struct.evp_mac_ctx_st* nocapture noundef readonly %ctx) local_unnamed_addr #4 {
entry:
  %meth = getelementptr inbounds %struct.evp_mac_ctx_st, %struct.evp_mac_ctx_st* %ctx, i64 0, i32 0
  %0 = load %struct.evp_mac_st*, %struct.evp_mac_st** %meth, align 8, !tbaa !14
  ret %struct.evp_mac_st* %0
}

; Function Attrs: noinline nounwind uwtable
define i64 @EVP_MAC_CTX_get_mac_size(%struct.evp_mac_ctx_st* nocapture noundef readonly %ctx) local_unnamed_addr #0 {
entry:
  %call = tail call fastcc i64 @get_size_t_ctx_param(%struct.evp_mac_ctx_st* noundef %ctx, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0)) #7
  ret i64 %call
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i64 @get_size_t_ctx_param(%struct.evp_mac_ctx_st* nocapture noundef readonly %ctx, i8* noundef %name) unnamed_addr #0 {
entry:
  %sz = alloca i64, align 8
  %params = alloca [2 x %struct.ossl_param_st], align 16
  %0 = bitcast i64* %sz to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #8
  store i64 0, i64* %sz, align 8, !tbaa !18
  %algctx = getelementptr inbounds %struct.evp_mac_ctx_st, %struct.evp_mac_ctx_st* %ctx, i64 0, i32 1
  %1 = load i8*, i8** %algctx, align 8, !tbaa !11
  %cmp.not = icmp eq i8* %1, null
  br i1 %cmp.not, label %if.end19, label %if.then

if.then:                                          ; preds = %entry
  %2 = bitcast [2 x %struct.ossl_param_st]* %params to i8*
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %2) #8
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(80) %2, i8 0, i64 80, i1 false)
  %arrayidx = getelementptr inbounds [2 x %struct.ossl_param_st], [2 x %struct.ossl_param_st]* %params, i64 0, i64 0
  %params32 = getelementptr inbounds [2 x %struct.ossl_param_st], [2 x %struct.ossl_param_st]* %params, i64 0, i64 0
  call void @OSSL_PARAM_construct_size_t(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %params32, i8* noundef %name, i64* noundef nonnull %sz) #6
  %meth = getelementptr inbounds %struct.evp_mac_ctx_st, %struct.evp_mac_ctx_st* %ctx, i64 0, i32 0
  %3 = load %struct.evp_mac_st*, %struct.evp_mac_st** %meth, align 8, !tbaa !14
  %get_ctx_params = getelementptr inbounds %struct.evp_mac_st, %struct.evp_mac_st* %3, i64 0, i32 16
  %4 = load i32 (i8*, %struct.ossl_param_st*)*, i32 (i8*, %struct.ossl_param_st*)** %get_ctx_params, align 8, !tbaa !20
  %cmp1.not = icmp eq i32 (i8*, %struct.ossl_param_st*)* %4, null
  br i1 %cmp1.not, label %if.else, label %if.then2

if.then2:                                         ; preds = %if.then
  %5 = load i8*, i8** %algctx, align 8, !tbaa !11
  %call = call i32 %4(i8* noundef %5, %struct.ossl_param_st* noundef nonnull %arrayidx) #6
  %tobool.not = icmp eq i32 %call, 0
  %6 = load i64, i64* %sz, align 8
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %2) #8
  br i1 %tobool.not, label %if.end19, label %cleanup20

if.else:                                          ; preds = %if.then
  %get_params = getelementptr inbounds %struct.evp_mac_st, %struct.evp_mac_st* %3, i64 0, i32 15
  %7 = load i32 (%struct.ossl_param_st*)*, i32 (%struct.ossl_param_st*)** %get_params, align 8, !tbaa !21
  %cmp8.not = icmp eq i32 (%struct.ossl_param_st*)* %7, null
  br i1 %cmp8.not, label %cleanup.thread, label %cleanup

cleanup.thread:                                   ; preds = %if.else
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %2) #8
  br label %if.end19

cleanup:                                          ; preds = %if.else
  %call13 = call i32 %7(%struct.ossl_param_st* noundef nonnull %arrayidx) #6
  %tobool14.not = icmp eq i32 %call13, 0
  %8 = load i64, i64* %sz, align 8
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %2) #8
  br i1 %tobool14.not, label %if.end19, label %cleanup20

if.end19:                                         ; preds = %if.then2, %cleanup.thread, %cleanup, %entry
  br label %cleanup20

cleanup20:                                        ; preds = %if.then2, %cleanup, %if.end19
  %retval.1 = phi i64 [ 0, %if.end19 ], [ %8, %cleanup ], [ %6, %if.then2 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #8
  ret i64 %retval.1
}

; Function Attrs: noinline nounwind uwtable
define i64 @EVP_MAC_CTX_get_block_size(%struct.evp_mac_ctx_st* nocapture noundef readonly %ctx) local_unnamed_addr #0 {
entry:
  %call = tail call fastcc i64 @get_size_t_ctx_param(%struct.evp_mac_ctx_st* noundef %ctx, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0)) #7
  ret i64 %call
}

; Function Attrs: noinline nounwind uwtable
define i32 @EVP_MAC_init(%struct.evp_mac_ctx_st* nocapture noundef readonly %ctx, i8* noundef %key, i64 noundef %keylen, %struct.ossl_param_st* noundef %params) local_unnamed_addr #0 {
entry:
  %meth = getelementptr inbounds %struct.evp_mac_ctx_st, %struct.evp_mac_ctx_st* %ctx, i64 0, i32 0
  %0 = load %struct.evp_mac_st*, %struct.evp_mac_st** %meth, align 8, !tbaa !14
  %init = getelementptr inbounds %struct.evp_mac_st, %struct.evp_mac_st* %0, i64 0, i32 9
  %1 = load i32 (i8*, i8*, i64, %struct.ossl_param_st*)*, i32 (i8*, i8*, i64, %struct.ossl_param_st*)** %init, align 8, !tbaa !22
  %algctx = getelementptr inbounds %struct.evp_mac_ctx_st, %struct.evp_mac_ctx_st* %ctx, i64 0, i32 1
  %2 = load i8*, i8** %algctx, align 8, !tbaa !11
  %call = tail call i32 %1(i8* noundef %2, i8* noundef %key, i64 noundef %keylen, %struct.ossl_param_st* noundef %params) #6
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define i32 @EVP_MAC_update(%struct.evp_mac_ctx_st* nocapture noundef readonly %ctx, i8* noundef %data, i64 noundef %datalen) local_unnamed_addr #0 {
entry:
  %meth = getelementptr inbounds %struct.evp_mac_ctx_st, %struct.evp_mac_ctx_st* %ctx, i64 0, i32 0
  %0 = load %struct.evp_mac_st*, %struct.evp_mac_st** %meth, align 8, !tbaa !14
  %update = getelementptr inbounds %struct.evp_mac_st, %struct.evp_mac_st* %0, i64 0, i32 10
  %1 = load i32 (i8*, i8*, i64)*, i32 (i8*, i8*, i64)** %update, align 8, !tbaa !23
  %algctx = getelementptr inbounds %struct.evp_mac_ctx_st, %struct.evp_mac_ctx_st* %ctx, i64 0, i32 1
  %2 = load i8*, i8** %algctx, align 8, !tbaa !11
  %call = tail call i32 %1(i8* noundef %2, i8* noundef %data, i64 noundef %datalen) #6
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define i32 @EVP_MAC_final(%struct.evp_mac_ctx_st* noundef %ctx, i8* noundef %out, i64* noundef %outl, i64 noundef %outsize) local_unnamed_addr #0 {
entry:
  %call = tail call fastcc i32 @evp_mac_final(%struct.evp_mac_ctx_st* noundef %ctx, i32 noundef 0, i8* noundef %out, i64* noundef %outl, i64 noundef %outsize) #7
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @evp_mac_final(%struct.evp_mac_ctx_st* noundef readonly %ctx, i32 noundef %xof, i8* noundef %out, i64* noundef writeonly %outl, i64 noundef %outsize) unnamed_addr #0 {
entry:
  %xof.addr = alloca i32, align 4
  %l = alloca i64, align 8
  %params = alloca [2 x %struct.ossl_param_st], align 16
  %tmp14 = alloca %struct.ossl_param_st, align 8
  store i32 %xof, i32* %xof.addr, align 4, !tbaa !24
  %0 = bitcast i64* %l to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #8
  %1 = bitcast [2 x %struct.ossl_param_st]* %params to i8*
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %1) #8
  %cmp = icmp eq %struct.evp_mac_ctx_st* %ctx, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %meth = getelementptr inbounds %struct.evp_mac_ctx_st, %struct.evp_mac_ctx_st* %ctx, i64 0, i32 0
  %2 = load %struct.evp_mac_st*, %struct.evp_mac_st** %meth, align 8, !tbaa !14
  %cmp1 = icmp eq %struct.evp_mac_st* %2, null
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 137, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.evp_mac_final, i64 0, i64 0)) #6
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 6, i32 noundef 218, i8* noundef null) #6
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %final = getelementptr inbounds %struct.evp_mac_st, %struct.evp_mac_st* %2, i64 0, i32 11
  %3 = load i32 (i8*, i8*, i64*, i64)*, i32 (i8*, i8*, i64*, i64)** %final, align 8, !tbaa !25
  %cmp3 = icmp eq i32 (i8*, i8*, i64*, i64)* %3, null
  br i1 %cmp3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 141, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.evp_mac_final, i64 0, i64 0)) #6
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 6, i32 noundef 188, i8* noundef null) #6
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %cmp6 = icmp eq i8* %out, null
  br i1 %cmp6, label %if.then7, label %if.end11

if.then7:                                         ; preds = %if.end5
  %cmp8 = icmp eq i64* %outl, null
  br i1 %cmp8, label %if.then9, label %if.end10

if.then9:                                         ; preds = %if.then7
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 147, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.evp_mac_final, i64 0, i64 0)) #6
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 6, i32 noundef 786690, i8* noundef null) #6
  br label %cleanup

if.end10:                                         ; preds = %if.then7
  %call = tail call i64 @EVP_MAC_CTX_get_mac_size(%struct.evp_mac_ctx_st* noundef nonnull %ctx) #7
  store i64 %call, i64* %outl, align 8, !tbaa !18
  br label %cleanup

if.end11:                                         ; preds = %if.end5
  %tobool.not = icmp eq i32 %xof, 0
  br i1 %tobool.not, label %if.end19, label %if.then12

if.then12:                                        ; preds = %if.end11
  %arrayidx = getelementptr inbounds [2 x %struct.ossl_param_st], [2 x %struct.ossl_param_st]* %params, i64 0, i64 0
  %params40 = getelementptr inbounds [2 x %struct.ossl_param_st], [2 x %struct.ossl_param_st]* %params, i64 0, i64 0
  call void @OSSL_PARAM_construct_int(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %params40, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i32* noundef nonnull %xof.addr) #6
  %arrayidx13 = getelementptr inbounds [2 x %struct.ossl_param_st], [2 x %struct.ossl_param_st]* %params, i64 0, i64 1
  %4 = bitcast %struct.ossl_param_st* %tmp14 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %4) #8
  call void @OSSL_PARAM_construct_end(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %tmp14) #6
  %5 = bitcast %struct.ossl_param_st* %arrayidx13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(40) %5, i8* noundef nonnull align 8 dereferenceable(40) %4, i64 40, i1 false), !tbaa.struct !26
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %4) #8
  %call15 = call i32 @EVP_MAC_CTX_set_params(%struct.evp_mac_ctx_st* noundef nonnull %ctx, %struct.ossl_param_st* noundef nonnull %arrayidx) #7
  %cmp16 = icmp slt i32 %call15, 1
  br i1 %cmp16, label %if.then17, label %if.then12.if.end19_crit_edge

if.then12.if.end19_crit_edge:                     ; preds = %if.then12
  %.pre = load %struct.evp_mac_st*, %struct.evp_mac_st** %meth, align 8, !tbaa !14
  %final21.phi.trans.insert = getelementptr inbounds %struct.evp_mac_st, %struct.evp_mac_st* %.pre, i64 0, i32 11
  %.pre39 = load i32 (i8*, i8*, i64*, i64)*, i32 (i8*, i8*, i64*, i64)** %final21.phi.trans.insert, align 8, !tbaa !25
  br label %if.end19

if.then17:                                        ; preds = %if.then12
  call void @ERR_new() #6
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 158, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.evp_mac_final, i64 0, i64 0)) #6
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 6, i32 noundef 227, i8* noundef null) #6
  br label %cleanup

if.end19:                                         ; preds = %if.then12.if.end19_crit_edge, %if.end11
  %6 = phi i32 (i8*, i8*, i64*, i64)* [ %.pre39, %if.then12.if.end19_crit_edge ], [ %3, %if.end11 ]
  %algctx = getelementptr inbounds %struct.evp_mac_ctx_st, %struct.evp_mac_ctx_st* %ctx, i64 0, i32 1
  %7 = load i8*, i8** %algctx, align 8, !tbaa !11
  %call22 = call i32 %6(i8* noundef %7, i8* noundef nonnull %out, i64* noundef nonnull %l, i64 noundef %outsize) #6
  %cmp23.not = icmp eq i64* %outl, null
  br i1 %cmp23.not, label %cleanup, label %if.then24

if.then24:                                        ; preds = %if.end19
  %8 = load i64, i64* %l, align 8, !tbaa !18
  store i64 %8, i64* %outl, align 8, !tbaa !18
  br label %cleanup

cleanup:                                          ; preds = %if.end19, %if.then24, %if.then17, %if.end10, %if.then9, %if.then4, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 0, %if.then4 ], [ 0, %if.then9 ], [ 1, %if.end10 ], [ 0, %if.then17 ], [ %call22, %if.then24 ], [ %call22, %if.end19 ]
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %1) #8
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #8
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @EVP_MAC_finalXOF(%struct.evp_mac_ctx_st* noundef %ctx, i8* noundef %out, i64 noundef %outsize) local_unnamed_addr #0 {
entry:
  %call = tail call fastcc i32 @evp_mac_final(%struct.evp_mac_ctx_st* noundef %ctx, i32 noundef 1, i8* noundef %out, i64* noundef null, i64 noundef %outsize) #7
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define i32 @EVP_MAC_get_params(%struct.evp_mac_st* nocapture noundef readonly %mac, %struct.ossl_param_st* noundef %params) local_unnamed_addr #0 {
entry:
  %get_params = getelementptr inbounds %struct.evp_mac_st, %struct.evp_mac_st* %mac, i64 0, i32 15
  %0 = load i32 (%struct.ossl_param_st*)*, i32 (%struct.ossl_param_st*)** %get_params, align 8, !tbaa !21
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
define i32 @EVP_MAC_CTX_get_params(%struct.evp_mac_ctx_st* nocapture noundef readonly %ctx, %struct.ossl_param_st* noundef %params) local_unnamed_addr #0 {
entry:
  %meth = getelementptr inbounds %struct.evp_mac_ctx_st, %struct.evp_mac_ctx_st* %ctx, i64 0, i32 0
  %0 = load %struct.evp_mac_st*, %struct.evp_mac_st** %meth, align 8, !tbaa !14
  %get_ctx_params = getelementptr inbounds %struct.evp_mac_st, %struct.evp_mac_st* %0, i64 0, i32 16
  %1 = load i32 (i8*, %struct.ossl_param_st*)*, i32 (i8*, %struct.ossl_param_st*)** %get_ctx_params, align 8, !tbaa !20
  %cmp.not = icmp eq i32 (i8*, %struct.ossl_param_st*)* %1, null
  br i1 %cmp.not, label %return, label %if.then

if.then:                                          ; preds = %entry
  %algctx = getelementptr inbounds %struct.evp_mac_ctx_st, %struct.evp_mac_ctx_st* %ctx, i64 0, i32 1
  %2 = load i8*, i8** %algctx, align 8, !tbaa !11
  %call = tail call i32 %1(i8* noundef %2, %struct.ossl_param_st* noundef %params) #6
  br label %return

return:                                           ; preds = %entry, %if.then
  %retval.0 = phi i32 [ %call, %if.then ], [ 1, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @EVP_MAC_CTX_set_params(%struct.evp_mac_ctx_st* nocapture noundef readonly %ctx, %struct.ossl_param_st* noundef %params) local_unnamed_addr #0 {
entry:
  %meth = getelementptr inbounds %struct.evp_mac_ctx_st, %struct.evp_mac_ctx_st* %ctx, i64 0, i32 0
  %0 = load %struct.evp_mac_st*, %struct.evp_mac_st** %meth, align 8, !tbaa !14
  %set_ctx_params = getelementptr inbounds %struct.evp_mac_st, %struct.evp_mac_st* %0, i64 0, i32 17
  %1 = load i32 (i8*, %struct.ossl_param_st*)*, i32 (i8*, %struct.ossl_param_st*)** %set_ctx_params, align 8, !tbaa !27
  %cmp.not = icmp eq i32 (i8*, %struct.ossl_param_st*)* %1, null
  br i1 %cmp.not, label %return, label %if.then

if.then:                                          ; preds = %entry
  %algctx = getelementptr inbounds %struct.evp_mac_ctx_st, %struct.evp_mac_ctx_st* %ctx, i64 0, i32 1
  %2 = load i8*, i8** %algctx, align 8, !tbaa !11
  %call = tail call i32 %1(i8* noundef %2, %struct.ossl_param_st* noundef %params) #6
  br label %return

return:                                           ; preds = %entry, %if.then
  %retval.0 = phi i32 [ %call, %if.then ], [ 1, %entry ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define i32 @evp_mac_get_number(%struct.evp_mac_st* nocapture noundef readonly %mac) local_unnamed_addr #4 {
entry:
  %name_id = getelementptr inbounds %struct.evp_mac_st, %struct.evp_mac_st* %mac, i64 0, i32 1
  %0 = load i32, i32* %name_id, align 8, !tbaa !28
  ret i32 %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define i8* @EVP_MAC_get0_name(%struct.evp_mac_st* nocapture noundef readonly %mac) local_unnamed_addr #4 {
entry:
  %type_name = getelementptr inbounds %struct.evp_mac_st, %struct.evp_mac_st* %mac, i64 0, i32 2
  %0 = load i8*, i8** %type_name, align 8, !tbaa !29
  ret i8* %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define i8* @EVP_MAC_get0_description(%struct.evp_mac_st* nocapture noundef readonly %mac) local_unnamed_addr #4 {
entry:
  %description = getelementptr inbounds %struct.evp_mac_st, %struct.evp_mac_st* %mac, i64 0, i32 3
  %0 = load i8*, i8** %description, align 8, !tbaa !30
  ret i8* %0
}

; Function Attrs: noinline nounwind uwtable
define i32 @EVP_MAC_is_a(%struct.evp_mac_st* nocapture noundef readonly %mac, i8* noundef %name) local_unnamed_addr #0 {
entry:
  %prov = getelementptr inbounds %struct.evp_mac_st, %struct.evp_mac_st* %mac, i64 0, i32 0
  %0 = load %struct.ossl_provider_st*, %struct.ossl_provider_st** %prov, align 8, !tbaa !10
  %name_id = getelementptr inbounds %struct.evp_mac_st, %struct.evp_mac_st* %mac, i64 0, i32 1
  %1 = load i32, i32* %name_id, align 8, !tbaa !28
  %call = tail call i32 @evp_is_a(%struct.ossl_provider_st* noundef %0, i32 noundef %1, i8* noundef null, i8* noundef %name) #6
  ret i32 %call
}

declare i32 @evp_is_a(%struct.ossl_provider_st* noundef, i32 noundef, i8* noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @EVP_MAC_names_do_all(%struct.evp_mac_st* nocapture noundef readonly %mac, void (i8*, i8*)* noundef %fn, i8* noundef %data) local_unnamed_addr #0 {
entry:
  %prov = getelementptr inbounds %struct.evp_mac_st, %struct.evp_mac_st* %mac, i64 0, i32 0
  %0 = load %struct.ossl_provider_st*, %struct.ossl_provider_st** %prov, align 8, !tbaa !10
  %cmp.not = icmp eq %struct.ossl_provider_st* %0, null
  br i1 %cmp.not, label %return, label %if.then

if.then:                                          ; preds = %entry
  %name_id = getelementptr inbounds %struct.evp_mac_st, %struct.evp_mac_st* %mac, i64 0, i32 1
  %1 = load i32, i32* %name_id, align 8, !tbaa !28
  %call = tail call i32 @evp_names_do_all(%struct.ossl_provider_st* noundef nonnull %0, i32 noundef %1, void (i8*, i8*)* noundef %fn, i8* noundef %data) #6
  br label %return

return:                                           ; preds = %entry, %if.then
  %retval.0 = phi i32 [ %call, %if.then ], [ 1, %entry ]
  ret i32 %retval.0
}

declare i32 @evp_names_do_all(%struct.ossl_provider_st* noundef, i32 noundef, void (i8*, i8*)* noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i8* @EVP_Q_mac(%struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef %name, i8* noundef %propq, i8* noundef %subalg, %struct.ossl_param_st* noundef %params, i8* noundef %key, i64 noundef %keylen, i8* noundef %data, i64 noundef %datalen, i8* noundef %out, i64 noundef %outsize, i64* noundef writeonly %outlen) local_unnamed_addr #0 {
entry:
  %subalg_param = alloca [2 x %struct.ossl_param_st], align 16
  %len = alloca i64, align 8
  %call = tail call %struct.evp_mac_st* @EVP_MAC_fetch(%struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef %name, i8* noundef %propq) #6
  %0 = bitcast [2 x %struct.ossl_param_st]* %subalg_param to i8*
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %0) #8
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(80) %0, i8 0, i64 80, i1 false)
  %1 = bitcast i64* %len to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #8
  store i64 0, i64* %len, align 8, !tbaa !18
  %cmp.not = icmp eq i64* %outlen, null
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i64 0, i64* %outlen, align 8, !tbaa !18
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %cmp1 = icmp eq %struct.evp_mac_st* %call, null
  br i1 %cmp1, label %cleanup54, label %if.end3

if.end3:                                          ; preds = %if.end
  %cmp4.not = icmp eq i8* %subalg, null
  br i1 %cmp4.not, label %if.end16, label %if.then5

if.then5:                                         ; preds = %if.end3
  %call6 = tail call %struct.ossl_param_st* @EVP_MAC_settable_ctx_params(%struct.evp_mac_st* noundef nonnull %call) #6
  %call7 = tail call %struct.ossl_param_st* @OSSL_PARAM_locate_const(%struct.ossl_param_st* noundef %call6, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0)) #6
  %cmp8 = icmp eq %struct.ossl_param_st* %call7, null
  br i1 %cmp8, label %if.then9, label %cleanup.thread

if.then9:                                         ; preds = %if.then5
  %call10 = tail call %struct.ossl_param_st* @OSSL_PARAM_locate_const(%struct.ossl_param_st* noundef %call6, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0)) #6
  %cmp11 = icmp eq %struct.ossl_param_st* %call10, null
  br i1 %cmp11, label %cleanup, label %cleanup.thread

cleanup.thread:                                   ; preds = %if.then5, %if.then9
  %param_name.0 = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), %if.then9 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), %if.then5 ]
  %subalg_param97 = getelementptr inbounds [2 x %struct.ossl_param_st], [2 x %struct.ossl_param_st]* %subalg_param, i64 0, i64 0
  call void @OSSL_PARAM_construct_utf8_string(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %subalg_param97, i8* noundef nonnull %param_name.0, i8* noundef nonnull %subalg, i64 noundef 0) #6
  br label %if.end16

cleanup:                                          ; preds = %if.then9
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 265, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.EVP_Q_mac, i64 0, i64 0)) #6
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 6, i32 noundef 524550, i8* noundef null) #6
  br label %err

if.end16:                                         ; preds = %cleanup.thread, %if.end3
  %cmp17 = icmp eq i8* %key, null
  %cmp18 = icmp eq i64 %keylen, 0
  %or.cond = and i1 %cmp17, %cmp18
  %spec.select = select i1 %or.cond, i8* %data, i8* %key
  %call21 = call %struct.evp_mac_ctx_st* @EVP_MAC_CTX_new(%struct.evp_mac_st* noundef nonnull %call) #7
  %cmp22.not = icmp eq %struct.evp_mac_ctx_st* %call21, null
  br i1 %cmp22.not, label %err, label %land.lhs.true23

land.lhs.true23:                                  ; preds = %if.end16
  %arraydecay = getelementptr inbounds [2 x %struct.ossl_param_st], [2 x %struct.ossl_param_st]* %subalg_param, i64 0, i64 0
  %call24 = call i32 @EVP_MAC_CTX_set_params(%struct.evp_mac_ctx_st* noundef nonnull %call21, %struct.ossl_param_st* noundef nonnull %arraydecay) #7
  %tobool.not = icmp eq i32 %call24, 0
  br i1 %tobool.not, label %err, label %land.lhs.true25

land.lhs.true25:                                  ; preds = %land.lhs.true23
  %call26 = call i32 @EVP_MAC_CTX_set_params(%struct.evp_mac_ctx_st* noundef nonnull %call21, %struct.ossl_param_st* noundef %params) #7
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %err, label %land.lhs.true28

land.lhs.true28:                                  ; preds = %land.lhs.true25
  %call29 = call i32 @EVP_MAC_init(%struct.evp_mac_ctx_st* noundef nonnull %call21, i8* noundef %spec.select, i64 noundef %keylen, %struct.ossl_param_st* noundef %params) #7
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %err, label %land.lhs.true31

land.lhs.true31:                                  ; preds = %land.lhs.true28
  %call32 = call i32 @EVP_MAC_update(%struct.evp_mac_ctx_st* noundef nonnull %call21, i8* noundef %data, i64 noundef %datalen) #7
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %err, label %land.lhs.true34

land.lhs.true34:                                  ; preds = %land.lhs.true31
  %call35 = call i32 @EVP_MAC_final(%struct.evp_mac_ctx_st* noundef nonnull %call21, i8* noundef %out, i64* noundef nonnull %len, i64 noundef %outsize) #7
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %err, label %if.then37

if.then37:                                        ; preds = %land.lhs.true34
  %cmp38 = icmp eq i8* %out, null
  br i1 %cmp38, label %if.then39, label %if.end47

if.then39:                                        ; preds = %if.then37
  %2 = load i64, i64* %len, align 8, !tbaa !18
  %call40 = call i8* @CRYPTO_malloc(i64 noundef %2, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 282) #6
  %cmp41.not = icmp eq i8* %call40, null
  br i1 %cmp41.not, label %err, label %land.lhs.true42

land.lhs.true42:                                  ; preds = %if.then39
  %3 = load i64, i64* %len, align 8, !tbaa !18
  %call43 = call i32 @EVP_MAC_final(%struct.evp_mac_ctx_st* noundef nonnull %call21, i8* noundef nonnull %call40, i64* noundef null, i64 noundef %3) #7
  %tobool44.not = icmp eq i32 %call43, 0
  br i1 %tobool44.not, label %if.then45, label %if.end47

if.then45:                                        ; preds = %land.lhs.true42
  call void @CRYPTO_free(i8* noundef nonnull %call40, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 284) #6
  br label %err

if.end47:                                         ; preds = %land.lhs.true42, %if.then37
  %out.addr.0 = phi i8* [ %call40, %land.lhs.true42 ], [ %out, %if.then37 ]
  br i1 %cmp.not, label %err, label %if.then51

if.then51:                                        ; preds = %if.end47
  %4 = load i64, i64* %len, align 8, !tbaa !18
  store i64 %4, i64* %outlen, align 8, !tbaa !18
  br label %err

err:                                              ; preds = %if.then39, %if.then45, %cleanup, %if.end16, %land.lhs.true23, %land.lhs.true25, %land.lhs.true28, %land.lhs.true31, %land.lhs.true34, %if.then51, %if.end47
  %ctx.0 = phi %struct.evp_mac_ctx_st* [ null, %cleanup ], [ %call21, %if.then51 ], [ %call21, %if.end47 ], [ %call21, %land.lhs.true34 ], [ %call21, %land.lhs.true31 ], [ %call21, %land.lhs.true28 ], [ %call21, %land.lhs.true25 ], [ %call21, %land.lhs.true23 ], [ null, %if.end16 ], [ %call21, %if.then45 ], [ %call21, %if.then39 ]
  %res.0 = phi i8* [ null, %cleanup ], [ %out.addr.0, %if.then51 ], [ %out.addr.0, %if.end47 ], [ null, %land.lhs.true34 ], [ null, %land.lhs.true31 ], [ null, %land.lhs.true28 ], [ null, %land.lhs.true25 ], [ null, %land.lhs.true23 ], [ null, %if.end16 ], [ null, %if.then45 ], [ null, %if.then39 ]
  call void @EVP_MAC_CTX_free(%struct.evp_mac_ctx_st* noundef %ctx.0) #7
  call void @EVP_MAC_free(%struct.evp_mac_st* noundef nonnull %call) #6
  br label %cleanup54

cleanup54:                                        ; preds = %if.end, %err
  %retval.0 = phi i8* [ %res.0, %err ], [ null, %if.end ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #8
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %0) #8
  ret i8* %retval.0
}

declare %struct.evp_mac_st* @EVP_MAC_fetch(%struct.ossl_lib_ctx_st* noundef, i8* noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #5

declare %struct.ossl_param_st* @EVP_MAC_settable_ctx_params(%struct.evp_mac_st* noundef) local_unnamed_addr #2

declare %struct.ossl_param_st* @OSSL_PARAM_locate_const(%struct.ossl_param_st* noundef, i8* noundef) local_unnamed_addr #2

declare void @OSSL_PARAM_construct_utf8_string(%struct.ossl_param_st* sret(%struct.ossl_param_st) align 8, i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #2

declare void @OSSL_PARAM_construct_size_t(%struct.ossl_param_st* sret(%struct.ossl_param_st) align 8, i8* noundef, i64* noundef) local_unnamed_addr #2

declare void @OSSL_PARAM_construct_int(%struct.ossl_param_st* sret(%struct.ossl_param_st) align 8, i8* noundef, i32* noundef) local_unnamed_addr #2

declare void @OSSL_PARAM_construct_end(%struct.ossl_param_st* sret(%struct.ossl_param_st) align 8) local_unnamed_addr #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly mustprogress nofree nounwind willreturn }
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
!5 = !{!"evp_mac_st", !6, i64 0, !9, i64 8, !6, i64 16, !6, i64 24, !7, i64 32, !6, i64 40, !6, i64 48, !6, i64 56, !6, i64 64, !6, i64 72, !6, i64 80, !6, i64 88, !6, i64 96, !6, i64 104, !6, i64 112, !6, i64 120, !6, i64 128, !6, i64 136}
!6 = !{!"any pointer", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!"int", !7, i64 0}
!10 = !{!5, !6, i64 0}
!11 = !{!12, !6, i64 8}
!12 = !{!"evp_mac_ctx_st", !6, i64 0, !6, i64 8}
!13 = !{!5, !6, i64 64}
!14 = !{!12, !6, i64 0}
!15 = !{i64 0, i64 8, !16, i64 8, i64 8, !16}
!16 = !{!6, !6, i64 0}
!17 = !{!5, !6, i64 56}
!18 = !{!19, !19, i64 0}
!19 = !{!"long", !7, i64 0}
!20 = !{!5, !6, i64 128}
!21 = !{!5, !6, i64 120}
!22 = !{!5, !6, i64 72}
!23 = !{!5, !6, i64 80}
!24 = !{!9, !9, i64 0}
!25 = !{!5, !6, i64 88}
!26 = !{i64 0, i64 8, !16, i64 8, i64 4, !24, i64 16, i64 8, !16, i64 24, i64 8, !18, i64 32, i64 8, !18}
!27 = !{!5, !6, i64 136}
!28 = !{!5, !9, i64 8}
!29 = !{!5, !6, i64 16}
!30 = !{!5, !6, i64 24}
