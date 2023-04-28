; ModuleID = 'crypto/evp/kdf_meth.c'
source_filename = "crypto/evp/kdf_meth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evp_kdf_st = type { %struct.ossl_provider_st*, i32, i8*, i8*, i32, i8*, i8* (i8*)*, i8* (i8*)*, void (i8*)*, void (i8*)*, i32 (i8*, i8*, i64, %struct.ossl_param_st*)*, %struct.ossl_param_st* (i8*)*, %struct.ossl_param_st* (i8*, i8*)*, %struct.ossl_param_st* (i8*, i8*)*, i32 (%struct.ossl_param_st*)*, i32 (i8*, %struct.ossl_param_st*)*, i32 (i8*, %struct.ossl_param_st*)* }
%struct.ossl_provider_st = type opaque
%struct.ossl_param_st = type { i8*, i32, i8*, i64, i64 }
%struct.ossl_lib_ctx_st = type opaque
%struct.ossl_algorithm_st = type { i8*, i8*, %struct.ossl_dispatch_st*, i8* }
%struct.ossl_dispatch_st = type { i32, void ()* }
%struct.evp_kdf_ctx_st = type { %struct.evp_kdf_st*, i8* }

@.str = private unnamed_addr constant [22 x i8] c"crypto/evp/kdf_meth.c\00", align 1
@__func__.evp_kdf_from_algorithm = private unnamed_addr constant [23 x i8] c"evp_kdf_from_algorithm\00", align 1

; Function Attrs: noinline nounwind uwtable
define %struct.evp_kdf_st* @EVP_KDF_fetch(%struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef %algorithm, i8* noundef %properties) local_unnamed_addr #0 {
entry:
  %call = tail call i8* @evp_generic_fetch(%struct.ossl_lib_ctx_st* noundef %libctx, i32 noundef 4, i8* noundef %algorithm, i8* noundef %properties, i8* (i32, %struct.ossl_algorithm_st*, %struct.ossl_provider_st*)* noundef nonnull @evp_kdf_from_algorithm, i32 (i8*)* noundef nonnull @evp_kdf_up_ref, void (i8*)* noundef nonnull @evp_kdf_free) #6
  %0 = bitcast i8* %call to %struct.evp_kdf_st*
  ret %struct.evp_kdf_st* %0
}

declare i8* @evp_generic_fetch(%struct.ossl_lib_ctx_st* noundef, i32 noundef, i8* noundef, i8* noundef, i8* (i32, %struct.ossl_algorithm_st*, %struct.ossl_provider_st*)* noundef, i32 (i8*)* noundef, void (i8*)* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal i8* @evp_kdf_from_algorithm(i32 noundef %name_id, %struct.ossl_algorithm_st* noundef %algodef, %struct.ossl_provider_st* noundef %prov) #0 {
entry:
  %implementation = getelementptr inbounds %struct.ossl_algorithm_st, %struct.ossl_algorithm_st* %algodef, i64 0, i32 2
  %0 = load %struct.ossl_dispatch_st*, %struct.ossl_dispatch_st** %implementation, align 8, !tbaa !4
  %call = tail call fastcc i8* @evp_kdf_new() #7
  %cmp = icmp eq i8* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 68, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.evp_kdf_from_algorithm, i64 0, i64 0)) #6
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 6, i32 noundef 786688, i8* noundef null) #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %name_id1 = getelementptr inbounds i8, i8* %call, i64 8
  %1 = bitcast i8* %name_id1 to i32*
  store i32 %name_id, i32* %1, align 8, !tbaa !9
  %call2 = tail call i8* @ossl_algorithm_get1_first_name(%struct.ossl_algorithm_st* noundef nonnull %algodef) #6
  %type_name = getelementptr inbounds i8, i8* %call, i64 16
  %2 = bitcast i8* %type_name to i8**
  store i8* %call2, i8** %2, align 8, !tbaa !12
  %cmp3 = icmp eq i8* %call2, null
  br i1 %cmp3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  tail call void @evp_kdf_free(i8* noundef nonnull %call) #7
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %algorithm_description = getelementptr inbounds %struct.ossl_algorithm_st, %struct.ossl_algorithm_st* %algodef, i64 0, i32 3
  %3 = load i8*, i8** %algorithm_description, align 8, !tbaa !13
  %description = getelementptr inbounds i8, i8* %call, i64 24
  %4 = bitcast i8* %description to i8**
  store i8* %3, i8** %4, align 8, !tbaa !14
  %set_ctx_params = getelementptr inbounds i8, i8* %call, i64 128
  %5 = bitcast i8* %set_ctx_params to i32 (i8*, %struct.ossl_param_st*)**
  %get_ctx_params = getelementptr inbounds i8, i8* %call, i64 120
  %6 = bitcast i8* %get_ctx_params to i32 (i8*, %struct.ossl_param_st*)**
  %get_params = getelementptr inbounds i8, i8* %call, i64 112
  %7 = bitcast i8* %get_params to i32 (%struct.ossl_param_st*)**
  %settable_ctx_params = getelementptr inbounds i8, i8* %call, i64 104
  %8 = bitcast i8* %settable_ctx_params to %struct.ossl_param_st* (i8*, i8*)**
  %gettable_ctx_params = getelementptr inbounds i8, i8* %call, i64 96
  %9 = bitcast i8* %gettable_ctx_params to %struct.ossl_param_st* (i8*, i8*)**
  %gettable_params = getelementptr inbounds i8, i8* %call, i64 88
  %10 = bitcast i8* %gettable_params to %struct.ossl_param_st* (i8*)**
  %derive = getelementptr inbounds i8, i8* %call, i64 80
  %11 = bitcast i8* %derive to i32 (i8*, i8*, i64, %struct.ossl_param_st*)**
  %reset = getelementptr inbounds i8, i8* %call, i64 72
  %12 = bitcast i8* %reset to void (i8*)**
  %freectx = getelementptr inbounds i8, i8* %call, i64 64
  %13 = bitcast i8* %freectx to void (i8*)**
  %dupctx = getelementptr inbounds i8, i8* %call, i64 56
  %14 = bitcast i8* %dupctx to i8* (i8*)**
  %newctx = getelementptr inbounds i8, i8* %call, i64 48
  %15 = bitcast i8* %newctx to i8* (i8*)**
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end5
  %fns.0 = phi %struct.ossl_dispatch_st* [ %0, %if.end5 ], [ %incdec.ptr, %for.inc ]
  %fnkdfcnt.0 = phi i32 [ 0, %if.end5 ], [ %fnkdfcnt.1, %for.inc ]
  %fnctxcnt.0 = phi i32 [ 0, %if.end5 ], [ %fnctxcnt.1, %for.inc ]
  %function_id = getelementptr inbounds %struct.ossl_dispatch_st, %struct.ossl_dispatch_st* %fns.0, i64 0, i32 0
  %16 = load i32, i32* %function_id, align 8, !tbaa !15
  switch i32 %16, label %for.inc [
    i32 0, label %for.end
    i32 1, label %sw.bb
    i32 2, label %sw.bb13
    i32 3, label %sw.bb19
    i32 4, label %sw.bb26
    i32 5, label %sw.bb32
    i32 6, label %sw.bb39
    i32 7, label %sw.bb45
    i32 8, label %sw.bb51
    i32 9, label %sw.bb57
    i32 10, label %sw.bb63
    i32 11, label %sw.bb69
  ]

sw.bb:                                            ; preds = %for.cond
  %17 = load i8* (i8*)*, i8* (i8*)** %15, align 8, !tbaa !17
  %cmp8.not = icmp eq i8* (i8*)* %17, null
  br i1 %cmp8.not, label %if.end10, label %for.inc

if.end10:                                         ; preds = %sw.bb
  %call11 = tail call fastcc i8* (i8*)* @OSSL_FUNC_kdf_newctx(%struct.ossl_dispatch_st* noundef nonnull %fns.0) #7
  store i8* (i8*)* %call11, i8* (i8*)** %15, align 8, !tbaa !17
  %inc = add nsw i32 %fnctxcnt.0, 1
  br label %for.inc

sw.bb13:                                          ; preds = %for.cond
  %18 = load i8* (i8*)*, i8* (i8*)** %14, align 8, !tbaa !18
  %cmp14.not = icmp eq i8* (i8*)* %18, null
  br i1 %cmp14.not, label %if.end16, label %for.inc

if.end16:                                         ; preds = %sw.bb13
  %call17 = tail call fastcc i8* (i8*)* @OSSL_FUNC_kdf_dupctx(%struct.ossl_dispatch_st* noundef nonnull %fns.0) #7
  store i8* (i8*)* %call17, i8* (i8*)** %14, align 8, !tbaa !18
  br label %for.inc

sw.bb19:                                          ; preds = %for.cond
  %19 = load void (i8*)*, void (i8*)** %13, align 8, !tbaa !19
  %cmp20.not = icmp eq void (i8*)* %19, null
  br i1 %cmp20.not, label %if.end22, label %for.inc

if.end22:                                         ; preds = %sw.bb19
  %call23 = tail call fastcc void (i8*)* @OSSL_FUNC_kdf_freectx(%struct.ossl_dispatch_st* noundef nonnull %fns.0) #7
  store void (i8*)* %call23, void (i8*)** %13, align 8, !tbaa !19
  %inc25 = add nsw i32 %fnctxcnt.0, 1
  br label %for.inc

sw.bb26:                                          ; preds = %for.cond
  %20 = load void (i8*)*, void (i8*)** %12, align 8, !tbaa !20
  %cmp27.not = icmp eq void (i8*)* %20, null
  br i1 %cmp27.not, label %if.end29, label %for.inc

if.end29:                                         ; preds = %sw.bb26
  %call30 = tail call fastcc void (i8*)* @OSSL_FUNC_kdf_reset(%struct.ossl_dispatch_st* noundef nonnull %fns.0) #7
  store void (i8*)* %call30, void (i8*)** %12, align 8, !tbaa !20
  br label %for.inc

sw.bb32:                                          ; preds = %for.cond
  %21 = load i32 (i8*, i8*, i64, %struct.ossl_param_st*)*, i32 (i8*, i8*, i64, %struct.ossl_param_st*)** %11, align 8, !tbaa !21
  %cmp33.not = icmp eq i32 (i8*, i8*, i64, %struct.ossl_param_st*)* %21, null
  br i1 %cmp33.not, label %if.end35, label %for.inc

if.end35:                                         ; preds = %sw.bb32
  %call36 = tail call fastcc i32 (i8*, i8*, i64, %struct.ossl_param_st*)* @OSSL_FUNC_kdf_derive(%struct.ossl_dispatch_st* noundef nonnull %fns.0) #7
  store i32 (i8*, i8*, i64, %struct.ossl_param_st*)* %call36, i32 (i8*, i8*, i64, %struct.ossl_param_st*)** %11, align 8, !tbaa !21
  %inc38 = add nsw i32 %fnkdfcnt.0, 1
  br label %for.inc

sw.bb39:                                          ; preds = %for.cond
  %22 = load %struct.ossl_param_st* (i8*)*, %struct.ossl_param_st* (i8*)** %10, align 8, !tbaa !22
  %cmp40.not = icmp eq %struct.ossl_param_st* (i8*)* %22, null
  br i1 %cmp40.not, label %if.end42, label %for.inc

if.end42:                                         ; preds = %sw.bb39
  %call43 = tail call fastcc %struct.ossl_param_st* (i8*)* @OSSL_FUNC_kdf_gettable_params(%struct.ossl_dispatch_st* noundef nonnull %fns.0) #7
  store %struct.ossl_param_st* (i8*)* %call43, %struct.ossl_param_st* (i8*)** %10, align 8, !tbaa !22
  br label %for.inc

sw.bb45:                                          ; preds = %for.cond
  %23 = load %struct.ossl_param_st* (i8*, i8*)*, %struct.ossl_param_st* (i8*, i8*)** %9, align 8, !tbaa !23
  %cmp46.not = icmp eq %struct.ossl_param_st* (i8*, i8*)* %23, null
  br i1 %cmp46.not, label %if.end48, label %for.inc

if.end48:                                         ; preds = %sw.bb45
  %call49 = tail call fastcc %struct.ossl_param_st* (i8*, i8*)* @OSSL_FUNC_kdf_gettable_ctx_params(%struct.ossl_dispatch_st* noundef nonnull %fns.0) #7
  store %struct.ossl_param_st* (i8*, i8*)* %call49, %struct.ossl_param_st* (i8*, i8*)** %9, align 8, !tbaa !23
  br label %for.inc

sw.bb51:                                          ; preds = %for.cond
  %24 = load %struct.ossl_param_st* (i8*, i8*)*, %struct.ossl_param_st* (i8*, i8*)** %8, align 8, !tbaa !24
  %cmp52.not = icmp eq %struct.ossl_param_st* (i8*, i8*)* %24, null
  br i1 %cmp52.not, label %if.end54, label %for.inc

if.end54:                                         ; preds = %sw.bb51
  %call55 = tail call fastcc %struct.ossl_param_st* (i8*, i8*)* @OSSL_FUNC_kdf_settable_ctx_params(%struct.ossl_dispatch_st* noundef nonnull %fns.0) #7
  store %struct.ossl_param_st* (i8*, i8*)* %call55, %struct.ossl_param_st* (i8*, i8*)** %8, align 8, !tbaa !24
  br label %for.inc

sw.bb57:                                          ; preds = %for.cond
  %25 = load i32 (%struct.ossl_param_st*)*, i32 (%struct.ossl_param_st*)** %7, align 8, !tbaa !25
  %cmp58.not = icmp eq i32 (%struct.ossl_param_st*)* %25, null
  br i1 %cmp58.not, label %if.end60, label %for.inc

if.end60:                                         ; preds = %sw.bb57
  %call61 = tail call fastcc i32 (%struct.ossl_param_st*)* @OSSL_FUNC_kdf_get_params(%struct.ossl_dispatch_st* noundef nonnull %fns.0) #7
  store i32 (%struct.ossl_param_st*)* %call61, i32 (%struct.ossl_param_st*)** %7, align 8, !tbaa !25
  br label %for.inc

sw.bb63:                                          ; preds = %for.cond
  %26 = load i32 (i8*, %struct.ossl_param_st*)*, i32 (i8*, %struct.ossl_param_st*)** %6, align 8, !tbaa !26
  %cmp64.not = icmp eq i32 (i8*, %struct.ossl_param_st*)* %26, null
  br i1 %cmp64.not, label %if.end66, label %for.inc

if.end66:                                         ; preds = %sw.bb63
  %call67 = tail call fastcc i32 (i8*, %struct.ossl_param_st*)* @OSSL_FUNC_kdf_get_ctx_params(%struct.ossl_dispatch_st* noundef nonnull %fns.0) #7
  store i32 (i8*, %struct.ossl_param_st*)* %call67, i32 (i8*, %struct.ossl_param_st*)** %6, align 8, !tbaa !26
  br label %for.inc

sw.bb69:                                          ; preds = %for.cond
  %27 = load i32 (i8*, %struct.ossl_param_st*)*, i32 (i8*, %struct.ossl_param_st*)** %5, align 8, !tbaa !27
  %cmp70.not = icmp eq i32 (i8*, %struct.ossl_param_st*)* %27, null
  br i1 %cmp70.not, label %if.end72, label %for.inc

if.end72:                                         ; preds = %sw.bb69
  %call73 = tail call fastcc i32 (i8*, %struct.ossl_param_st*)* @OSSL_FUNC_kdf_set_ctx_params(%struct.ossl_dispatch_st* noundef nonnull %fns.0) #7
  store i32 (i8*, %struct.ossl_param_st*)* %call73, i32 (i8*, %struct.ossl_param_st*)** %5, align 8, !tbaa !27
  br label %for.inc

for.inc:                                          ; preds = %for.cond, %if.end10, %if.end16, %if.end22, %if.end29, %if.end35, %if.end42, %if.end48, %if.end54, %if.end60, %if.end66, %if.end72, %sw.bb, %sw.bb13, %sw.bb19, %sw.bb26, %sw.bb32, %sw.bb39, %sw.bb45, %sw.bb51, %sw.bb57, %sw.bb63, %sw.bb69
  %fnkdfcnt.1 = phi i32 [ %fnkdfcnt.0, %sw.bb69 ], [ %fnkdfcnt.0, %if.end72 ], [ %fnkdfcnt.0, %sw.bb63 ], [ %fnkdfcnt.0, %if.end66 ], [ %fnkdfcnt.0, %sw.bb57 ], [ %fnkdfcnt.0, %if.end60 ], [ %fnkdfcnt.0, %sw.bb51 ], [ %fnkdfcnt.0, %if.end54 ], [ %fnkdfcnt.0, %sw.bb45 ], [ %fnkdfcnt.0, %if.end48 ], [ %fnkdfcnt.0, %sw.bb39 ], [ %fnkdfcnt.0, %if.end42 ], [ %fnkdfcnt.0, %sw.bb32 ], [ %inc38, %if.end35 ], [ %fnkdfcnt.0, %sw.bb26 ], [ %fnkdfcnt.0, %if.end29 ], [ %fnkdfcnt.0, %sw.bb19 ], [ %fnkdfcnt.0, %if.end22 ], [ %fnkdfcnt.0, %sw.bb13 ], [ %fnkdfcnt.0, %if.end16 ], [ %fnkdfcnt.0, %sw.bb ], [ %fnkdfcnt.0, %if.end10 ], [ %fnkdfcnt.0, %for.cond ]
  %fnctxcnt.1 = phi i32 [ %fnctxcnt.0, %sw.bb69 ], [ %fnctxcnt.0, %if.end72 ], [ %fnctxcnt.0, %sw.bb63 ], [ %fnctxcnt.0, %if.end66 ], [ %fnctxcnt.0, %sw.bb57 ], [ %fnctxcnt.0, %if.end60 ], [ %fnctxcnt.0, %sw.bb51 ], [ %fnctxcnt.0, %if.end54 ], [ %fnctxcnt.0, %sw.bb45 ], [ %fnctxcnt.0, %if.end48 ], [ %fnctxcnt.0, %sw.bb39 ], [ %fnctxcnt.0, %if.end42 ], [ %fnctxcnt.0, %sw.bb32 ], [ %fnctxcnt.0, %if.end35 ], [ %fnctxcnt.0, %sw.bb26 ], [ %fnctxcnt.0, %if.end29 ], [ %fnctxcnt.0, %sw.bb19 ], [ %inc25, %if.end22 ], [ %fnctxcnt.0, %sw.bb13 ], [ %fnctxcnt.0, %if.end16 ], [ %fnctxcnt.0, %sw.bb ], [ %inc, %if.end10 ], [ %fnctxcnt.0, %for.cond ]
  %incdec.ptr = getelementptr inbounds %struct.ossl_dispatch_st, %struct.ossl_dispatch_st* %fns.0, i64 1
  br label %for.cond, !llvm.loop !28

for.end:                                          ; preds = %for.cond
  %cmp75 = icmp ne i32 %fnkdfcnt.0, 1
  %cmp76 = icmp ne i32 %fnctxcnt.0, 2
  %or.cond = select i1 %cmp75, i1 true, i1 %cmp76
  br i1 %or.cond, label %if.then77, label %if.end78

if.then77:                                        ; preds = %for.end
  tail call void @evp_kdf_free(i8* noundef nonnull %call) #7
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 150, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.evp_kdf_from_algorithm, i64 0, i64 0)) #6
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 6, i32 noundef 193, i8* noundef null) #6
  br label %cleanup

if.end78:                                         ; preds = %for.end
  %prov79 = bitcast i8* %call to %struct.ossl_provider_st**
  store %struct.ossl_provider_st* %prov, %struct.ossl_provider_st** %prov79, align 8, !tbaa !30
  %cmp80.not = icmp eq %struct.ossl_provider_st* %prov, null
  br i1 %cmp80.not, label %cleanup, label %if.then81

if.then81:                                        ; preds = %if.end78
  %call82 = tail call i32 @ossl_provider_up_ref(%struct.ossl_provider_st* noundef nonnull %prov) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end78, %if.then81, %if.then77, %if.then4, %if.then
  %retval.0 = phi i8* [ null, %if.then ], [ null, %if.then4 ], [ null, %if.then77 ], [ %call, %if.then81 ], [ %call, %if.end78 ]
  ret i8* %retval.0
}

; Function Attrs: mustprogress nofree noinline nounwind uwtable willreturn
define internal i32 @evp_kdf_up_ref(i8* nocapture noundef %vkdf) #2 {
entry:
  %ref = alloca i32, align 4
  %0 = bitcast i32* %ref to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #8
  %refcnt = getelementptr inbounds i8, i8* %vkdf, i64 32
  %1 = bitcast i8* %refcnt to i32*
  call fastcc void @CRYPTO_UP_REF(i32* noundef nonnull %1, i32* noundef nonnull %ref) #7
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #8
  ret i32 1
}

; Function Attrs: noinline nounwind uwtable
define internal void @evp_kdf_free(i8* noundef %vkdf) #0 {
entry:
  %ref = alloca i32, align 4
  %0 = bitcast i32* %ref to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #8
  store i32 0, i32* %ref, align 4, !tbaa !31
  %cmp = icmp eq i8* %vkdf, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %refcnt = getelementptr inbounds i8, i8* %vkdf, i64 32
  %1 = bitcast i8* %refcnt to i32*
  call fastcc void @CRYPTO_DOWN_REF(i32* noundef nonnull %1, i32* noundef nonnull %ref) #7
  %2 = load i32, i32* %ref, align 4, !tbaa !31
  %cmp1 = icmp sgt i32 %2, 0
  br i1 %cmp1, label %cleanup, label %if.end3

if.end3:                                          ; preds = %if.end
  %lock = getelementptr inbounds i8, i8* %vkdf, i64 40
  %3 = bitcast i8* %lock to i8**
  %type_name = getelementptr inbounds i8, i8* %vkdf, i64 16
  %4 = bitcast i8* %type_name to i8**
  %5 = load i8*, i8** %4, align 8, !tbaa !12
  tail call void @CRYPTO_free(i8* noundef %5, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 40) #6
  %prov = bitcast i8* %vkdf to %struct.ossl_provider_st**
  %6 = load %struct.ossl_provider_st*, %struct.ossl_provider_st** %prov, align 8, !tbaa !30
  tail call void @ossl_provider_free(%struct.ossl_provider_st* noundef %6) #6
  %7 = load i8*, i8** %3, align 8, !tbaa !32
  tail call void @CRYPTO_THREAD_lock_free(i8* noundef %7) #6
  tail call void @CRYPTO_free(i8* noundef nonnull %vkdf, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 43) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry, %if.end3
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #8
  ret void
}

; Function Attrs: mustprogress nofree noinline nounwind uwtable willreturn
define i32 @EVP_KDF_up_ref(%struct.evp_kdf_st* nocapture noundef %kdf) local_unnamed_addr #2 {
entry:
  %0 = bitcast %struct.evp_kdf_st* %kdf to i8*
  %call = tail call i32 @evp_kdf_up_ref(i8* noundef %0) #7
  ret i32 1
}

; Function Attrs: noinline nounwind uwtable
define void @EVP_KDF_free(%struct.evp_kdf_st* noundef %kdf) local_unnamed_addr #0 {
entry:
  %0 = bitcast %struct.evp_kdf_st* %kdf to i8*
  tail call void @evp_kdf_free(i8* noundef %0) #7
  ret void
}

; Function Attrs: noinline nounwind uwtable
define %struct.ossl_param_st* @EVP_KDF_gettable_params(%struct.evp_kdf_st* noundef %kdf) local_unnamed_addr #0 {
entry:
  %gettable_params = getelementptr inbounds %struct.evp_kdf_st, %struct.evp_kdf_st* %kdf, i64 0, i32 11
  %0 = load %struct.ossl_param_st* (i8*)*, %struct.ossl_param_st* (i8*)** %gettable_params, align 8, !tbaa !22
  %cmp = icmp eq %struct.ossl_param_st* (i8*)* %0, null
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %call = tail call %struct.ossl_provider_st* @EVP_KDF_get0_provider(%struct.evp_kdf_st* noundef nonnull %kdf) #6
  %call2 = tail call i8* @ossl_provider_ctx(%struct.ossl_provider_st* noundef %call) #6
  %call3 = tail call %struct.ossl_param_st* %0(i8* noundef %call2) #6
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi %struct.ossl_param_st* [ %call3, %if.end ], [ null, %entry ]
  ret %struct.ossl_param_st* %retval.0
}

declare i8* @ossl_provider_ctx(%struct.ossl_provider_st* noundef) local_unnamed_addr #1

declare %struct.ossl_provider_st* @EVP_KDF_get0_provider(%struct.evp_kdf_st* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define %struct.ossl_param_st* @EVP_KDF_gettable_ctx_params(%struct.evp_kdf_st* noundef %kdf) local_unnamed_addr #0 {
entry:
  %gettable_ctx_params = getelementptr inbounds %struct.evp_kdf_st, %struct.evp_kdf_st* %kdf, i64 0, i32 12
  %0 = load %struct.ossl_param_st* (i8*, i8*)*, %struct.ossl_param_st* (i8*, i8*)** %gettable_ctx_params, align 8, !tbaa !23
  %cmp = icmp eq %struct.ossl_param_st* (i8*, i8*)* %0, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call = tail call %struct.ossl_provider_st* @EVP_KDF_get0_provider(%struct.evp_kdf_st* noundef nonnull %kdf) #6
  %call1 = tail call i8* @ossl_provider_ctx(%struct.ossl_provider_st* noundef %call) #6
  %1 = load %struct.ossl_param_st* (i8*, i8*)*, %struct.ossl_param_st* (i8*, i8*)** %gettable_ctx_params, align 8, !tbaa !23
  %call3 = tail call %struct.ossl_param_st* %1(i8* noundef null, i8* noundef %call1) #6
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi %struct.ossl_param_st* [ %call3, %if.end ], [ null, %entry ]
  ret %struct.ossl_param_st* %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #3

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #3

; Function Attrs: noinline nounwind uwtable
define %struct.ossl_param_st* @EVP_KDF_settable_ctx_params(%struct.evp_kdf_st* noundef %kdf) local_unnamed_addr #0 {
entry:
  %settable_ctx_params = getelementptr inbounds %struct.evp_kdf_st, %struct.evp_kdf_st* %kdf, i64 0, i32 13
  %0 = load %struct.ossl_param_st* (i8*, i8*)*, %struct.ossl_param_st* (i8*, i8*)** %settable_ctx_params, align 8, !tbaa !24
  %cmp = icmp eq %struct.ossl_param_st* (i8*, i8*)* %0, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call = tail call %struct.ossl_provider_st* @EVP_KDF_get0_provider(%struct.evp_kdf_st* noundef nonnull %kdf) #6
  %call1 = tail call i8* @ossl_provider_ctx(%struct.ossl_provider_st* noundef %call) #6
  %1 = load %struct.ossl_param_st* (i8*, i8*)*, %struct.ossl_param_st* (i8*, i8*)** %settable_ctx_params, align 8, !tbaa !24
  %call3 = tail call %struct.ossl_param_st* %1(i8* noundef null, i8* noundef %call1) #6
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi %struct.ossl_param_st* [ %call3, %if.end ], [ null, %entry ]
  ret %struct.ossl_param_st* %retval.0
}

; Function Attrs: noinline nounwind uwtable
define %struct.ossl_param_st* @EVP_KDF_CTX_gettable_params(%struct.evp_kdf_ctx_st* nocapture noundef readonly %ctx) local_unnamed_addr #0 {
entry:
  %meth = getelementptr inbounds %struct.evp_kdf_ctx_st, %struct.evp_kdf_ctx_st* %ctx, i64 0, i32 0
  %0 = load %struct.evp_kdf_st*, %struct.evp_kdf_st** %meth, align 8, !tbaa !33
  %gettable_ctx_params = getelementptr inbounds %struct.evp_kdf_st, %struct.evp_kdf_st* %0, i64 0, i32 12
  %1 = load %struct.ossl_param_st* (i8*, i8*)*, %struct.ossl_param_st* (i8*, i8*)** %gettable_ctx_params, align 8, !tbaa !23
  %cmp = icmp eq %struct.ossl_param_st* (i8*, i8*)* %1, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call = tail call %struct.ossl_provider_st* @EVP_KDF_get0_provider(%struct.evp_kdf_st* noundef nonnull %0) #6
  %call2 = tail call i8* @ossl_provider_ctx(%struct.ossl_provider_st* noundef %call) #6
  %2 = load %struct.evp_kdf_st*, %struct.evp_kdf_st** %meth, align 8, !tbaa !33
  %gettable_ctx_params4 = getelementptr inbounds %struct.evp_kdf_st, %struct.evp_kdf_st* %2, i64 0, i32 12
  %3 = load %struct.ossl_param_st* (i8*, i8*)*, %struct.ossl_param_st* (i8*, i8*)** %gettable_ctx_params4, align 8, !tbaa !23
  %algctx = getelementptr inbounds %struct.evp_kdf_ctx_st, %struct.evp_kdf_ctx_st* %ctx, i64 0, i32 1
  %4 = load i8*, i8** %algctx, align 8, !tbaa !35
  %call5 = tail call %struct.ossl_param_st* %3(i8* noundef %4, i8* noundef %call2) #6
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi %struct.ossl_param_st* [ %call5, %if.end ], [ null, %entry ]
  ret %struct.ossl_param_st* %retval.0
}

; Function Attrs: noinline nounwind uwtable
define %struct.ossl_param_st* @EVP_KDF_CTX_settable_params(%struct.evp_kdf_ctx_st* nocapture noundef readonly %ctx) local_unnamed_addr #0 {
entry:
  %meth = getelementptr inbounds %struct.evp_kdf_ctx_st, %struct.evp_kdf_ctx_st* %ctx, i64 0, i32 0
  %0 = load %struct.evp_kdf_st*, %struct.evp_kdf_st** %meth, align 8, !tbaa !33
  %settable_ctx_params = getelementptr inbounds %struct.evp_kdf_st, %struct.evp_kdf_st* %0, i64 0, i32 13
  %1 = load %struct.ossl_param_st* (i8*, i8*)*, %struct.ossl_param_st* (i8*, i8*)** %settable_ctx_params, align 8, !tbaa !24
  %cmp = icmp eq %struct.ossl_param_st* (i8*, i8*)* %1, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call = tail call %struct.ossl_provider_st* @EVP_KDF_get0_provider(%struct.evp_kdf_st* noundef nonnull %0) #6
  %call2 = tail call i8* @ossl_provider_ctx(%struct.ossl_provider_st* noundef %call) #6
  %2 = load %struct.evp_kdf_st*, %struct.evp_kdf_st** %meth, align 8, !tbaa !33
  %settable_ctx_params4 = getelementptr inbounds %struct.evp_kdf_st, %struct.evp_kdf_st* %2, i64 0, i32 13
  %3 = load %struct.ossl_param_st* (i8*, i8*)*, %struct.ossl_param_st* (i8*, i8*)** %settable_ctx_params4, align 8, !tbaa !24
  %algctx = getelementptr inbounds %struct.evp_kdf_ctx_st, %struct.evp_kdf_ctx_st* %ctx, i64 0, i32 1
  %4 = load i8*, i8** %algctx, align 8, !tbaa !35
  %call5 = tail call %struct.ossl_param_st* %3(i8* noundef %4, i8* noundef %call2) #6
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi %struct.ossl_param_st* [ %call5, %if.end ], [ null, %entry ]
  ret %struct.ossl_param_st* %retval.0
}

; Function Attrs: noinline nounwind uwtable
define void @EVP_KDF_do_all_provided(%struct.ossl_lib_ctx_st* noundef %libctx, void (%struct.evp_kdf_st*, i8*)* noundef %fn, i8* noundef %arg) local_unnamed_addr #0 {
entry:
  %0 = bitcast void (%struct.evp_kdf_st*, i8*)* %fn to void (i8*, i8*)*
  tail call void @evp_generic_do_all(%struct.ossl_lib_ctx_st* noundef %libctx, i32 noundef 4, void (i8*, i8*)* noundef %0, i8* noundef %arg, i8* (i32, %struct.ossl_algorithm_st*, %struct.ossl_provider_st*)* noundef nonnull @evp_kdf_from_algorithm, i32 (i8*)* noundef nonnull @evp_kdf_up_ref, void (i8*)* noundef nonnull @evp_kdf_free) #6
  ret void
}

declare void @evp_generic_do_all(%struct.ossl_lib_ctx_st* noundef, i32 noundef, void (i8*, i8*)* noundef, i8* noundef, i8* (i32, %struct.ossl_algorithm_st*, %struct.ossl_provider_st*)* noundef, i32 (i8*)* noundef, void (i8*)* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal fastcc i8* @evp_kdf_new() unnamed_addr #0 {
entry:
  %call = tail call i8* @CRYPTO_zalloc(i64 noundef 136, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 50) #6
  %cmp = icmp eq i8* %call, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %call1 = tail call i8* @CRYPTO_THREAD_lock_new() #6
  %lock = getelementptr inbounds i8, i8* %call, i64 40
  %0 = bitcast i8* %lock to i8**
  store i8* %call1, i8** %0, align 8, !tbaa !32
  %cmp2 = icmp eq i8* %call1, null
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  tail call void @CRYPTO_free(i8* noundef %call, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 52) #6
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %refcnt = getelementptr inbounds i8, i8* %call, i64 32
  %1 = bitcast i8* %refcnt to i32*
  store atomic i32 1, i32* %1 seq_cst, align 4, !tbaa !36
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i8* [ null, %if.then ], [ %call, %if.end ]
  ret i8* %retval.0
}

declare void @ERR_new() local_unnamed_addr #1

declare void @ERR_set_debug(i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #1

declare void @ERR_set_error(i32 noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #1

declare i8* @ossl_algorithm_get1_first_name(%struct.ossl_algorithm_st* noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal fastcc i8* (i8*)* @OSSL_FUNC_kdf_newctx(%struct.ossl_dispatch_st* nocapture noundef readonly %opf) unnamed_addr #4 {
entry:
  %function = getelementptr inbounds %struct.ossl_dispatch_st, %struct.ossl_dispatch_st* %opf, i64 0, i32 1
  %0 = bitcast void ()** %function to i8* (i8*)**
  %1 = load i8* (i8*)*, i8* (i8*)** %0, align 8, !tbaa !37
  ret i8* (i8*)* %1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal fastcc i8* (i8*)* @OSSL_FUNC_kdf_dupctx(%struct.ossl_dispatch_st* nocapture noundef readonly %opf) unnamed_addr #4 {
entry:
  %function = getelementptr inbounds %struct.ossl_dispatch_st, %struct.ossl_dispatch_st* %opf, i64 0, i32 1
  %0 = bitcast void ()** %function to i8* (i8*)**
  %1 = load i8* (i8*)*, i8* (i8*)** %0, align 8, !tbaa !37
  ret i8* (i8*)* %1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal fastcc void (i8*)* @OSSL_FUNC_kdf_freectx(%struct.ossl_dispatch_st* nocapture noundef readonly %opf) unnamed_addr #4 {
entry:
  %function = getelementptr inbounds %struct.ossl_dispatch_st, %struct.ossl_dispatch_st* %opf, i64 0, i32 1
  %0 = bitcast void ()** %function to void (i8*)**
  %1 = load void (i8*)*, void (i8*)** %0, align 8, !tbaa !37
  ret void (i8*)* %1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal fastcc void (i8*)* @OSSL_FUNC_kdf_reset(%struct.ossl_dispatch_st* nocapture noundef readonly %opf) unnamed_addr #4 {
entry:
  %function = getelementptr inbounds %struct.ossl_dispatch_st, %struct.ossl_dispatch_st* %opf, i64 0, i32 1
  %0 = bitcast void ()** %function to void (i8*)**
  %1 = load void (i8*)*, void (i8*)** %0, align 8, !tbaa !37
  ret void (i8*)* %1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal fastcc i32 (i8*, i8*, i64, %struct.ossl_param_st*)* @OSSL_FUNC_kdf_derive(%struct.ossl_dispatch_st* nocapture noundef readonly %opf) unnamed_addr #4 {
entry:
  %function = getelementptr inbounds %struct.ossl_dispatch_st, %struct.ossl_dispatch_st* %opf, i64 0, i32 1
  %0 = bitcast void ()** %function to i32 (i8*, i8*, i64, %struct.ossl_param_st*)**
  %1 = load i32 (i8*, i8*, i64, %struct.ossl_param_st*)*, i32 (i8*, i8*, i64, %struct.ossl_param_st*)** %0, align 8, !tbaa !37
  ret i32 (i8*, i8*, i64, %struct.ossl_param_st*)* %1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal fastcc %struct.ossl_param_st* (i8*)* @OSSL_FUNC_kdf_gettable_params(%struct.ossl_dispatch_st* nocapture noundef readonly %opf) unnamed_addr #4 {
entry:
  %function = getelementptr inbounds %struct.ossl_dispatch_st, %struct.ossl_dispatch_st* %opf, i64 0, i32 1
  %0 = bitcast void ()** %function to %struct.ossl_param_st* (i8*)**
  %1 = load %struct.ossl_param_st* (i8*)*, %struct.ossl_param_st* (i8*)** %0, align 8, !tbaa !37
  ret %struct.ossl_param_st* (i8*)* %1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal fastcc %struct.ossl_param_st* (i8*, i8*)* @OSSL_FUNC_kdf_gettable_ctx_params(%struct.ossl_dispatch_st* nocapture noundef readonly %opf) unnamed_addr #4 {
entry:
  %function = getelementptr inbounds %struct.ossl_dispatch_st, %struct.ossl_dispatch_st* %opf, i64 0, i32 1
  %0 = bitcast void ()** %function to %struct.ossl_param_st* (i8*, i8*)**
  %1 = load %struct.ossl_param_st* (i8*, i8*)*, %struct.ossl_param_st* (i8*, i8*)** %0, align 8, !tbaa !37
  ret %struct.ossl_param_st* (i8*, i8*)* %1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal fastcc %struct.ossl_param_st* (i8*, i8*)* @OSSL_FUNC_kdf_settable_ctx_params(%struct.ossl_dispatch_st* nocapture noundef readonly %opf) unnamed_addr #4 {
entry:
  %function = getelementptr inbounds %struct.ossl_dispatch_st, %struct.ossl_dispatch_st* %opf, i64 0, i32 1
  %0 = bitcast void ()** %function to %struct.ossl_param_st* (i8*, i8*)**
  %1 = load %struct.ossl_param_st* (i8*, i8*)*, %struct.ossl_param_st* (i8*, i8*)** %0, align 8, !tbaa !37
  ret %struct.ossl_param_st* (i8*, i8*)* %1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal fastcc i32 (%struct.ossl_param_st*)* @OSSL_FUNC_kdf_get_params(%struct.ossl_dispatch_st* nocapture noundef readonly %opf) unnamed_addr #4 {
entry:
  %function = getelementptr inbounds %struct.ossl_dispatch_st, %struct.ossl_dispatch_st* %opf, i64 0, i32 1
  %0 = bitcast void ()** %function to i32 (%struct.ossl_param_st*)**
  %1 = load i32 (%struct.ossl_param_st*)*, i32 (%struct.ossl_param_st*)** %0, align 8, !tbaa !37
  ret i32 (%struct.ossl_param_st*)* %1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal fastcc i32 (i8*, %struct.ossl_param_st*)* @OSSL_FUNC_kdf_get_ctx_params(%struct.ossl_dispatch_st* nocapture noundef readonly %opf) unnamed_addr #4 {
entry:
  %function = getelementptr inbounds %struct.ossl_dispatch_st, %struct.ossl_dispatch_st* %opf, i64 0, i32 1
  %0 = bitcast void ()** %function to i32 (i8*, %struct.ossl_param_st*)**
  %1 = load i32 (i8*, %struct.ossl_param_st*)*, i32 (i8*, %struct.ossl_param_st*)** %0, align 8, !tbaa !37
  ret i32 (i8*, %struct.ossl_param_st*)* %1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal fastcc i32 (i8*, %struct.ossl_param_st*)* @OSSL_FUNC_kdf_set_ctx_params(%struct.ossl_dispatch_st* nocapture noundef readonly %opf) unnamed_addr #4 {
entry:
  %function = getelementptr inbounds %struct.ossl_dispatch_st, %struct.ossl_dispatch_st* %opf, i64 0, i32 1
  %0 = bitcast void ()** %function to i32 (i8*, %struct.ossl_param_st*)**
  %1 = load i32 (i8*, %struct.ossl_param_st*)*, i32 (i8*, %struct.ossl_param_st*)** %0, align 8, !tbaa !37
  ret i32 (i8*, %struct.ossl_param_st*)* %1
}

declare i32 @ossl_provider_up_ref(%struct.ossl_provider_st* noundef) local_unnamed_addr #1

declare i8* @CRYPTO_zalloc(i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

declare i8* @CRYPTO_THREAD_lock_new() local_unnamed_addr #1

declare void @CRYPTO_free(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nounwind uwtable willreturn
define internal fastcc void @CRYPTO_UP_REF(i32* nocapture noundef %val, i32* nocapture noundef writeonly %ret) unnamed_addr #5 {
entry:
  %0 = atomicrmw add i32* %val, i32 1 monotonic, align 4
  %add = add nsw i32 %0, 1
  store i32 %add, i32* %ret, align 4, !tbaa !31
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind uwtable willreturn
define internal fastcc void @CRYPTO_DOWN_REF(i32* nocapture noundef %val, i32* nocapture noundef writeonly %ret) unnamed_addr #5 {
entry:
  %0 = atomicrmw sub i32* %val, i32 1 monotonic, align 4
  %sub = add nsw i32 %0, -1
  store i32 %sub, i32* %ret, align 4, !tbaa !31
  %cmp = icmp eq i32 %sub, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  fence acquire
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare void @ossl_provider_free(%struct.ossl_provider_st* noundef) local_unnamed_addr #1

declare void @CRYPTO_THREAD_lock_free(i8* noundef) local_unnamed_addr #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree noinline nounwind uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nounwind uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nobuiltin nounwind "no-builtins" }
attributes #7 = { nobuiltin "no-builtins" }
attributes #8 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{!"clang version 14.0.0"}
!4 = !{!5, !6, i64 16}
!5 = !{!"ossl_algorithm_st", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24}
!6 = !{!"any pointer", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !11, i64 8}
!10 = !{!"evp_kdf_st", !6, i64 0, !11, i64 8, !6, i64 16, !6, i64 24, !7, i64 32, !6, i64 40, !6, i64 48, !6, i64 56, !6, i64 64, !6, i64 72, !6, i64 80, !6, i64 88, !6, i64 96, !6, i64 104, !6, i64 112, !6, i64 120, !6, i64 128}
!11 = !{!"int", !7, i64 0}
!12 = !{!10, !6, i64 16}
!13 = !{!5, !6, i64 24}
!14 = !{!10, !6, i64 24}
!15 = !{!16, !11, i64 0}
!16 = !{!"ossl_dispatch_st", !11, i64 0, !6, i64 8}
!17 = !{!10, !6, i64 48}
!18 = !{!10, !6, i64 56}
!19 = !{!10, !6, i64 64}
!20 = !{!10, !6, i64 72}
!21 = !{!10, !6, i64 80}
!22 = !{!10, !6, i64 88}
!23 = !{!10, !6, i64 96}
!24 = !{!10, !6, i64 104}
!25 = !{!10, !6, i64 112}
!26 = !{!10, !6, i64 120}
!27 = !{!10, !6, i64 128}
!28 = distinct !{!28, !29}
!29 = !{!"llvm.loop.mustprogress"}
!30 = !{!10, !6, i64 0}
!31 = !{!11, !11, i64 0}
!32 = !{!10, !6, i64 40}
!33 = !{!34, !6, i64 0}
!34 = !{!"evp_kdf_ctx_st", !6, i64 0, !6, i64 8}
!35 = !{!34, !6, i64 8}
!36 = !{!10, !7, i64 32}
!37 = !{!16, !6, i64 8}
