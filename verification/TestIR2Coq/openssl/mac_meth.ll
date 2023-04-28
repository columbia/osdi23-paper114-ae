; ModuleID = 'crypto/evp/mac_meth.c'
source_filename = "crypto/evp/mac_meth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evp_mac_st = type { %struct.ossl_provider_st*, i32, i8*, i8*, i32, i8*, i8* (i8*)*, i8* (i8*)*, void (i8*)*, i32 (i8*, i8*, i64, %struct.ossl_param_st*)*, i32 (i8*, i8*, i64)*, i32 (i8*, i8*, i64*, i64)*, %struct.ossl_param_st* (i8*)*, %struct.ossl_param_st* (i8*, i8*)*, %struct.ossl_param_st* (i8*, i8*)*, i32 (%struct.ossl_param_st*)*, i32 (i8*, %struct.ossl_param_st*)*, i32 (i8*, %struct.ossl_param_st*)* }
%struct.ossl_provider_st = type opaque
%struct.ossl_param_st = type { i8*, i32, i8*, i64, i64 }
%struct.ossl_lib_ctx_st = type opaque
%struct.ossl_algorithm_st = type { i8*, i8*, %struct.ossl_dispatch_st*, i8* }
%struct.ossl_dispatch_st = type { i32, void ()* }
%struct.evp_mac_ctx_st = type { %struct.evp_mac_st*, i8* }

@.str = private unnamed_addr constant [22 x i8] c"crypto/evp/mac_meth.c\00", align 1
@__func__.evp_mac_from_algorithm = private unnamed_addr constant [23 x i8] c"evp_mac_from_algorithm\00", align 1

; Function Attrs: noinline nounwind uwtable
define %struct.evp_mac_st* @EVP_MAC_fetch(%struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef %algorithm, i8* noundef %properties) local_unnamed_addr #0 {
entry:
  %call = tail call i8* @evp_generic_fetch(%struct.ossl_lib_ctx_st* noundef %libctx, i32 noundef 3, i8* noundef %algorithm, i8* noundef %properties, i8* (i32, %struct.ossl_algorithm_st*, %struct.ossl_provider_st*)* noundef nonnull @evp_mac_from_algorithm, i32 (i8*)* noundef nonnull @evp_mac_up_ref, void (i8*)* noundef nonnull @evp_mac_free) #6
  %0 = bitcast i8* %call to %struct.evp_mac_st*
  ret %struct.evp_mac_st* %0
}

declare i8* @evp_generic_fetch(%struct.ossl_lib_ctx_st* noundef, i32 noundef, i8* noundef, i8* noundef, i8* (i32, %struct.ossl_algorithm_st*, %struct.ossl_provider_st*)* noundef, i32 (i8*)* noundef, void (i8*)* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal i8* @evp_mac_from_algorithm(i32 noundef %name_id, %struct.ossl_algorithm_st* noundef %algodef, %struct.ossl_provider_st* noundef %prov) #0 {
entry:
  %implementation = getelementptr inbounds %struct.ossl_algorithm_st, %struct.ossl_algorithm_st* %algodef, i64 0, i32 2
  %0 = load %struct.ossl_dispatch_st*, %struct.ossl_dispatch_st** %implementation, align 8, !tbaa !4
  %call = tail call fastcc i8* @evp_mac_new() #7
  %cmp = icmp eq i8* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 60, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.evp_mac_from_algorithm, i64 0, i64 0)) #6
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
  tail call void @evp_mac_free(i8* noundef nonnull %call) #7
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %algorithm_description = getelementptr inbounds %struct.ossl_algorithm_st, %struct.ossl_algorithm_st* %algodef, i64 0, i32 3
  %3 = load i8*, i8** %algorithm_description, align 8, !tbaa !13
  %description = getelementptr inbounds i8, i8* %call, i64 24
  %4 = bitcast i8* %description to i8**
  store i8* %3, i8** %4, align 8, !tbaa !14
  %set_ctx_params = getelementptr inbounds i8, i8* %call, i64 136
  %5 = bitcast i8* %set_ctx_params to i32 (i8*, %struct.ossl_param_st*)**
  %get_ctx_params = getelementptr inbounds i8, i8* %call, i64 128
  %6 = bitcast i8* %get_ctx_params to i32 (i8*, %struct.ossl_param_st*)**
  %get_params = getelementptr inbounds i8, i8* %call, i64 120
  %7 = bitcast i8* %get_params to i32 (%struct.ossl_param_st*)**
  %settable_ctx_params = getelementptr inbounds i8, i8* %call, i64 112
  %8 = bitcast i8* %settable_ctx_params to %struct.ossl_param_st* (i8*, i8*)**
  %gettable_ctx_params = getelementptr inbounds i8, i8* %call, i64 104
  %9 = bitcast i8* %gettable_ctx_params to %struct.ossl_param_st* (i8*, i8*)**
  %gettable_params = getelementptr inbounds i8, i8* %call, i64 96
  %10 = bitcast i8* %gettable_params to %struct.ossl_param_st* (i8*)**
  %final = getelementptr inbounds i8, i8* %call, i64 88
  %11 = bitcast i8* %final to i32 (i8*, i8*, i64*, i64)**
  %update = getelementptr inbounds i8, i8* %call, i64 80
  %12 = bitcast i8* %update to i32 (i8*, i8*, i64)**
  %init = getelementptr inbounds i8, i8* %call, i64 72
  %13 = bitcast i8* %init to i32 (i8*, i8*, i64, %struct.ossl_param_st*)**
  %freectx = getelementptr inbounds i8, i8* %call, i64 64
  %14 = bitcast i8* %freectx to void (i8*)**
  %dupctx = getelementptr inbounds i8, i8* %call, i64 56
  %15 = bitcast i8* %dupctx to i8* (i8*)**
  %newctx = getelementptr inbounds i8, i8* %call, i64 48
  %16 = bitcast i8* %newctx to i8* (i8*)**
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end5
  %fns.0 = phi %struct.ossl_dispatch_st* [ %0, %if.end5 ], [ %incdec.ptr, %for.inc ]
  %fnmaccnt.0 = phi i32 [ 0, %if.end5 ], [ %fnmaccnt.1, %for.inc ]
  %fnctxcnt.0 = phi i32 [ 0, %if.end5 ], [ %fnctxcnt.1, %for.inc ]
  %function_id = getelementptr inbounds %struct.ossl_dispatch_st, %struct.ossl_dispatch_st* %fns.0, i64 0, i32 0
  %17 = load i32, i32* %function_id, align 8, !tbaa !15
  switch i32 %17, label %for.inc [
    i32 0, label %for.end
    i32 1, label %sw.bb
    i32 2, label %sw.bb13
    i32 3, label %sw.bb19
    i32 4, label %sw.bb26
    i32 5, label %sw.bb33
    i32 6, label %sw.bb40
    i32 10, label %sw.bb47
    i32 11, label %sw.bb53
    i32 12, label %sw.bb59
    i32 7, label %sw.bb65
    i32 8, label %sw.bb71
    i32 9, label %sw.bb77
  ]

sw.bb:                                            ; preds = %for.cond
  %18 = load i8* (i8*)*, i8* (i8*)** %16, align 8, !tbaa !17
  %cmp8.not = icmp eq i8* (i8*)* %18, null
  br i1 %cmp8.not, label %if.end10, label %for.inc

if.end10:                                         ; preds = %sw.bb
  %call11 = tail call fastcc i8* (i8*)* @OSSL_FUNC_mac_newctx(%struct.ossl_dispatch_st* noundef nonnull %fns.0) #7
  store i8* (i8*)* %call11, i8* (i8*)** %16, align 8, !tbaa !17
  %inc = add nsw i32 %fnctxcnt.0, 1
  br label %for.inc

sw.bb13:                                          ; preds = %for.cond
  %19 = load i8* (i8*)*, i8* (i8*)** %15, align 8, !tbaa !18
  %cmp14.not = icmp eq i8* (i8*)* %19, null
  br i1 %cmp14.not, label %if.end16, label %for.inc

if.end16:                                         ; preds = %sw.bb13
  %call17 = tail call fastcc i8* (i8*)* @OSSL_FUNC_mac_dupctx(%struct.ossl_dispatch_st* noundef nonnull %fns.0) #7
  store i8* (i8*)* %call17, i8* (i8*)** %15, align 8, !tbaa !18
  br label %for.inc

sw.bb19:                                          ; preds = %for.cond
  %20 = load void (i8*)*, void (i8*)** %14, align 8, !tbaa !19
  %cmp20.not = icmp eq void (i8*)* %20, null
  br i1 %cmp20.not, label %if.end22, label %for.inc

if.end22:                                         ; preds = %sw.bb19
  %call23 = tail call fastcc void (i8*)* @OSSL_FUNC_mac_freectx(%struct.ossl_dispatch_st* noundef nonnull %fns.0) #7
  store void (i8*)* %call23, void (i8*)** %14, align 8, !tbaa !19
  %inc25 = add nsw i32 %fnctxcnt.0, 1
  br label %for.inc

sw.bb26:                                          ; preds = %for.cond
  %21 = load i32 (i8*, i8*, i64, %struct.ossl_param_st*)*, i32 (i8*, i8*, i64, %struct.ossl_param_st*)** %13, align 8, !tbaa !20
  %cmp27.not = icmp eq i32 (i8*, i8*, i64, %struct.ossl_param_st*)* %21, null
  br i1 %cmp27.not, label %if.end29, label %for.inc

if.end29:                                         ; preds = %sw.bb26
  %call30 = tail call fastcc i32 (i8*, i8*, i64, %struct.ossl_param_st*)* @OSSL_FUNC_mac_init(%struct.ossl_dispatch_st* noundef nonnull %fns.0) #7
  store i32 (i8*, i8*, i64, %struct.ossl_param_st*)* %call30, i32 (i8*, i8*, i64, %struct.ossl_param_st*)** %13, align 8, !tbaa !20
  %inc32 = add nsw i32 %fnmaccnt.0, 1
  br label %for.inc

sw.bb33:                                          ; preds = %for.cond
  %22 = load i32 (i8*, i8*, i64)*, i32 (i8*, i8*, i64)** %12, align 8, !tbaa !21
  %cmp34.not = icmp eq i32 (i8*, i8*, i64)* %22, null
  br i1 %cmp34.not, label %if.end36, label %for.inc

if.end36:                                         ; preds = %sw.bb33
  %call37 = tail call fastcc i32 (i8*, i8*, i64)* @OSSL_FUNC_mac_update(%struct.ossl_dispatch_st* noundef nonnull %fns.0) #7
  store i32 (i8*, i8*, i64)* %call37, i32 (i8*, i8*, i64)** %12, align 8, !tbaa !21
  %inc39 = add nsw i32 %fnmaccnt.0, 1
  br label %for.inc

sw.bb40:                                          ; preds = %for.cond
  %23 = load i32 (i8*, i8*, i64*, i64)*, i32 (i8*, i8*, i64*, i64)** %11, align 8, !tbaa !22
  %cmp41.not = icmp eq i32 (i8*, i8*, i64*, i64)* %23, null
  br i1 %cmp41.not, label %if.end43, label %for.inc

if.end43:                                         ; preds = %sw.bb40
  %call44 = tail call fastcc i32 (i8*, i8*, i64*, i64)* @OSSL_FUNC_mac_final(%struct.ossl_dispatch_st* noundef nonnull %fns.0) #7
  store i32 (i8*, i8*, i64*, i64)* %call44, i32 (i8*, i8*, i64*, i64)** %11, align 8, !tbaa !22
  %inc46 = add nsw i32 %fnmaccnt.0, 1
  br label %for.inc

sw.bb47:                                          ; preds = %for.cond
  %24 = load %struct.ossl_param_st* (i8*)*, %struct.ossl_param_st* (i8*)** %10, align 8, !tbaa !23
  %cmp48.not = icmp eq %struct.ossl_param_st* (i8*)* %24, null
  br i1 %cmp48.not, label %if.end50, label %for.inc

if.end50:                                         ; preds = %sw.bb47
  %call51 = tail call fastcc %struct.ossl_param_st* (i8*)* @OSSL_FUNC_mac_gettable_params(%struct.ossl_dispatch_st* noundef nonnull %fns.0) #7
  store %struct.ossl_param_st* (i8*)* %call51, %struct.ossl_param_st* (i8*)** %10, align 8, !tbaa !23
  br label %for.inc

sw.bb53:                                          ; preds = %for.cond
  %25 = load %struct.ossl_param_st* (i8*, i8*)*, %struct.ossl_param_st* (i8*, i8*)** %9, align 8, !tbaa !24
  %cmp54.not = icmp eq %struct.ossl_param_st* (i8*, i8*)* %25, null
  br i1 %cmp54.not, label %if.end56, label %for.inc

if.end56:                                         ; preds = %sw.bb53
  %call57 = tail call fastcc %struct.ossl_param_st* (i8*, i8*)* @OSSL_FUNC_mac_gettable_ctx_params(%struct.ossl_dispatch_st* noundef nonnull %fns.0) #7
  store %struct.ossl_param_st* (i8*, i8*)* %call57, %struct.ossl_param_st* (i8*, i8*)** %9, align 8, !tbaa !24
  br label %for.inc

sw.bb59:                                          ; preds = %for.cond
  %26 = load %struct.ossl_param_st* (i8*, i8*)*, %struct.ossl_param_st* (i8*, i8*)** %8, align 8, !tbaa !25
  %cmp60.not = icmp eq %struct.ossl_param_st* (i8*, i8*)* %26, null
  br i1 %cmp60.not, label %if.end62, label %for.inc

if.end62:                                         ; preds = %sw.bb59
  %call63 = tail call fastcc %struct.ossl_param_st* (i8*, i8*)* @OSSL_FUNC_mac_settable_ctx_params(%struct.ossl_dispatch_st* noundef nonnull %fns.0) #7
  store %struct.ossl_param_st* (i8*, i8*)* %call63, %struct.ossl_param_st* (i8*, i8*)** %8, align 8, !tbaa !25
  br label %for.inc

sw.bb65:                                          ; preds = %for.cond
  %27 = load i32 (%struct.ossl_param_st*)*, i32 (%struct.ossl_param_st*)** %7, align 8, !tbaa !26
  %cmp66.not = icmp eq i32 (%struct.ossl_param_st*)* %27, null
  br i1 %cmp66.not, label %if.end68, label %for.inc

if.end68:                                         ; preds = %sw.bb65
  %call69 = tail call fastcc i32 (%struct.ossl_param_st*)* @OSSL_FUNC_mac_get_params(%struct.ossl_dispatch_st* noundef nonnull %fns.0) #7
  store i32 (%struct.ossl_param_st*)* %call69, i32 (%struct.ossl_param_st*)** %7, align 8, !tbaa !26
  br label %for.inc

sw.bb71:                                          ; preds = %for.cond
  %28 = load i32 (i8*, %struct.ossl_param_st*)*, i32 (i8*, %struct.ossl_param_st*)** %6, align 8, !tbaa !27
  %cmp72.not = icmp eq i32 (i8*, %struct.ossl_param_st*)* %28, null
  br i1 %cmp72.not, label %if.end74, label %for.inc

if.end74:                                         ; preds = %sw.bb71
  %call75 = tail call fastcc i32 (i8*, %struct.ossl_param_st*)* @OSSL_FUNC_mac_get_ctx_params(%struct.ossl_dispatch_st* noundef nonnull %fns.0) #7
  store i32 (i8*, %struct.ossl_param_st*)* %call75, i32 (i8*, %struct.ossl_param_st*)** %6, align 8, !tbaa !27
  br label %for.inc

sw.bb77:                                          ; preds = %for.cond
  %29 = load i32 (i8*, %struct.ossl_param_st*)*, i32 (i8*, %struct.ossl_param_st*)** %5, align 8, !tbaa !28
  %cmp78.not = icmp eq i32 (i8*, %struct.ossl_param_st*)* %29, null
  br i1 %cmp78.not, label %if.end80, label %for.inc

if.end80:                                         ; preds = %sw.bb77
  %call81 = tail call fastcc i32 (i8*, %struct.ossl_param_st*)* @OSSL_FUNC_mac_set_ctx_params(%struct.ossl_dispatch_st* noundef nonnull %fns.0) #7
  store i32 (i8*, %struct.ossl_param_st*)* %call81, i32 (i8*, %struct.ossl_param_st*)** %5, align 8, !tbaa !28
  br label %for.inc

for.inc:                                          ; preds = %for.cond, %if.end10, %if.end16, %if.end22, %if.end29, %if.end36, %if.end43, %if.end50, %if.end56, %if.end62, %if.end68, %if.end74, %if.end80, %sw.bb, %sw.bb13, %sw.bb19, %sw.bb26, %sw.bb33, %sw.bb40, %sw.bb47, %sw.bb53, %sw.bb59, %sw.bb65, %sw.bb71, %sw.bb77
  %fnmaccnt.1 = phi i32 [ %fnmaccnt.0, %sw.bb77 ], [ %fnmaccnt.0, %if.end80 ], [ %fnmaccnt.0, %sw.bb71 ], [ %fnmaccnt.0, %if.end74 ], [ %fnmaccnt.0, %sw.bb65 ], [ %fnmaccnt.0, %if.end68 ], [ %fnmaccnt.0, %sw.bb59 ], [ %fnmaccnt.0, %if.end62 ], [ %fnmaccnt.0, %sw.bb53 ], [ %fnmaccnt.0, %if.end56 ], [ %fnmaccnt.0, %sw.bb47 ], [ %fnmaccnt.0, %if.end50 ], [ %fnmaccnt.0, %sw.bb40 ], [ %inc46, %if.end43 ], [ %fnmaccnt.0, %sw.bb33 ], [ %inc39, %if.end36 ], [ %fnmaccnt.0, %sw.bb26 ], [ %inc32, %if.end29 ], [ %fnmaccnt.0, %sw.bb19 ], [ %fnmaccnt.0, %if.end22 ], [ %fnmaccnt.0, %sw.bb13 ], [ %fnmaccnt.0, %if.end16 ], [ %fnmaccnt.0, %sw.bb ], [ %fnmaccnt.0, %if.end10 ], [ %fnmaccnt.0, %for.cond ]
  %fnctxcnt.1 = phi i32 [ %fnctxcnt.0, %sw.bb77 ], [ %fnctxcnt.0, %if.end80 ], [ %fnctxcnt.0, %sw.bb71 ], [ %fnctxcnt.0, %if.end74 ], [ %fnctxcnt.0, %sw.bb65 ], [ %fnctxcnt.0, %if.end68 ], [ %fnctxcnt.0, %sw.bb59 ], [ %fnctxcnt.0, %if.end62 ], [ %fnctxcnt.0, %sw.bb53 ], [ %fnctxcnt.0, %if.end56 ], [ %fnctxcnt.0, %sw.bb47 ], [ %fnctxcnt.0, %if.end50 ], [ %fnctxcnt.0, %sw.bb40 ], [ %fnctxcnt.0, %if.end43 ], [ %fnctxcnt.0, %sw.bb33 ], [ %fnctxcnt.0, %if.end36 ], [ %fnctxcnt.0, %sw.bb26 ], [ %fnctxcnt.0, %if.end29 ], [ %fnctxcnt.0, %sw.bb19 ], [ %inc25, %if.end22 ], [ %fnctxcnt.0, %sw.bb13 ], [ %fnctxcnt.0, %if.end16 ], [ %fnctxcnt.0, %sw.bb ], [ %inc, %if.end10 ], [ %fnctxcnt.0, %for.cond ]
  %incdec.ptr = getelementptr inbounds %struct.ossl_dispatch_st, %struct.ossl_dispatch_st* %fns.0, i64 1
  br label %for.cond, !llvm.loop !29

for.end:                                          ; preds = %for.cond
  %cmp83 = icmp ne i32 %fnmaccnt.0, 3
  %cmp84 = icmp ne i32 %fnctxcnt.0, 2
  %or.cond = select i1 %cmp83, i1 true, i1 %cmp84
  br i1 %or.cond, label %if.then85, label %if.end86

if.then85:                                        ; preds = %for.end
  tail call void @evp_mac_free(i8* noundef nonnull %call) #7
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 150, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.evp_mac_from_algorithm, i64 0, i64 0)) #6
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 6, i32 noundef 193, i8* noundef null) #6
  br label %cleanup

if.end86:                                         ; preds = %for.end
  %prov87 = bitcast i8* %call to %struct.ossl_provider_st**
  store %struct.ossl_provider_st* %prov, %struct.ossl_provider_st** %prov87, align 8, !tbaa !31
  %cmp88.not = icmp eq %struct.ossl_provider_st* %prov, null
  br i1 %cmp88.not, label %cleanup, label %if.then89

if.then89:                                        ; preds = %if.end86
  %call90 = tail call i32 @ossl_provider_up_ref(%struct.ossl_provider_st* noundef nonnull %prov) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end86, %if.then89, %if.then85, %if.then4, %if.then
  %retval.0 = phi i8* [ null, %if.then ], [ null, %if.then4 ], [ null, %if.then85 ], [ %call, %if.then89 ], [ %call, %if.end86 ]
  ret i8* %retval.0
}

; Function Attrs: mustprogress nofree noinline nounwind uwtable willreturn
define internal i32 @evp_mac_up_ref(i8* nocapture noundef %vmac) #2 {
entry:
  %ref = alloca i32, align 4
  %0 = bitcast i32* %ref to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #8
  %refcnt = getelementptr inbounds i8, i8* %vmac, i64 32
  %1 = bitcast i8* %refcnt to i32*
  call fastcc void @CRYPTO_UP_REF(i32* noundef nonnull %1, i32* noundef nonnull %ref) #7
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #8
  ret i32 1
}

; Function Attrs: noinline nounwind uwtable
define internal void @evp_mac_free(i8* noundef %vmac) #0 {
entry:
  %ref = alloca i32, align 4
  %0 = bitcast i32* %ref to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #8
  store i32 0, i32* %ref, align 4, !tbaa !32
  %cmp = icmp eq i8* %vmac, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %refcnt = getelementptr inbounds i8, i8* %vmac, i64 32
  %1 = bitcast i8* %refcnt to i32*
  call fastcc void @CRYPTO_DOWN_REF(i32* noundef nonnull %1, i32* noundef nonnull %ref) #7
  %2 = load i32, i32* %ref, align 4, !tbaa !32
  %cmp1 = icmp sgt i32 %2, 0
  br i1 %cmp1, label %cleanup, label %if.end3

if.end3:                                          ; preds = %if.end
  %lock = getelementptr inbounds i8, i8* %vmac, i64 40
  %3 = bitcast i8* %lock to i8**
  %type_name = getelementptr inbounds i8, i8* %vmac, i64 16
  %4 = bitcast i8* %type_name to i8**
  %5 = load i8*, i8** %4, align 8, !tbaa !12
  tail call void @CRYPTO_free(i8* noundef %5, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 30) #6
  %prov = bitcast i8* %vmac to %struct.ossl_provider_st**
  %6 = load %struct.ossl_provider_st*, %struct.ossl_provider_st** %prov, align 8, !tbaa !31
  tail call void @ossl_provider_free(%struct.ossl_provider_st* noundef %6) #6
  %7 = load i8*, i8** %3, align 8, !tbaa !33
  tail call void @CRYPTO_THREAD_lock_free(i8* noundef %7) #6
  tail call void @CRYPTO_free(i8* noundef nonnull %vmac, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 33) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry, %if.end3
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #8
  ret void
}

; Function Attrs: mustprogress nofree noinline nounwind uwtable willreturn
define i32 @EVP_MAC_up_ref(%struct.evp_mac_st* nocapture noundef %mac) local_unnamed_addr #2 {
entry:
  %0 = bitcast %struct.evp_mac_st* %mac to i8*
  %call = tail call i32 @evp_mac_up_ref(i8* noundef %0) #7
  ret i32 1
}

; Function Attrs: noinline nounwind uwtable
define void @EVP_MAC_free(%struct.evp_mac_st* noundef %mac) local_unnamed_addr #0 {
entry:
  %0 = bitcast %struct.evp_mac_st* %mac to i8*
  tail call void @evp_mac_free(i8* noundef %0) #7
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define %struct.ossl_provider_st* @EVP_MAC_get0_provider(%struct.evp_mac_st* nocapture noundef readonly %mac) local_unnamed_addr #3 {
entry:
  %prov = getelementptr inbounds %struct.evp_mac_st, %struct.evp_mac_st* %mac, i64 0, i32 0
  %0 = load %struct.ossl_provider_st*, %struct.ossl_provider_st** %prov, align 8, !tbaa !31
  ret %struct.ossl_provider_st* %0
}

; Function Attrs: noinline nounwind uwtable
define %struct.ossl_param_st* @EVP_MAC_gettable_params(%struct.evp_mac_st* nocapture noundef readonly %mac) local_unnamed_addr #0 {
entry:
  %gettable_params = getelementptr inbounds %struct.evp_mac_st, %struct.evp_mac_st* %mac, i64 0, i32 12
  %0 = load %struct.ossl_param_st* (i8*)*, %struct.ossl_param_st* (i8*)** %gettable_params, align 8, !tbaa !23
  %cmp = icmp eq %struct.ossl_param_st* (i8*)* %0, null
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %call = tail call %struct.ossl_provider_st* @EVP_MAC_get0_provider(%struct.evp_mac_st* noundef nonnull %mac) #7
  %call2 = tail call i8* @ossl_provider_ctx(%struct.ossl_provider_st* noundef %call) #6
  %call3 = tail call %struct.ossl_param_st* %0(i8* noundef %call2) #6
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi %struct.ossl_param_st* [ %call3, %if.end ], [ null, %entry ]
  ret %struct.ossl_param_st* %retval.0
}

declare i8* @ossl_provider_ctx(%struct.ossl_provider_st* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define %struct.ossl_param_st* @EVP_MAC_gettable_ctx_params(%struct.evp_mac_st* nocapture noundef readonly %mac) local_unnamed_addr #0 {
entry:
  %gettable_ctx_params = getelementptr inbounds %struct.evp_mac_st, %struct.evp_mac_st* %mac, i64 0, i32 13
  %0 = load %struct.ossl_param_st* (i8*, i8*)*, %struct.ossl_param_st* (i8*, i8*)** %gettable_ctx_params, align 8, !tbaa !24
  %cmp = icmp eq %struct.ossl_param_st* (i8*, i8*)* %0, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call = tail call %struct.ossl_provider_st* @EVP_MAC_get0_provider(%struct.evp_mac_st* noundef nonnull %mac) #7
  %call1 = tail call i8* @ossl_provider_ctx(%struct.ossl_provider_st* noundef %call) #6
  %1 = load %struct.ossl_param_st* (i8*, i8*)*, %struct.ossl_param_st* (i8*, i8*)** %gettable_ctx_params, align 8, !tbaa !24
  %call3 = tail call %struct.ossl_param_st* %1(i8* noundef null, i8* noundef %call1) #6
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi %struct.ossl_param_st* [ %call3, %if.end ], [ null, %entry ]
  ret %struct.ossl_param_st* %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #4

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #4

; Function Attrs: noinline nounwind uwtable
define %struct.ossl_param_st* @EVP_MAC_settable_ctx_params(%struct.evp_mac_st* nocapture noundef readonly %mac) local_unnamed_addr #0 {
entry:
  %settable_ctx_params = getelementptr inbounds %struct.evp_mac_st, %struct.evp_mac_st* %mac, i64 0, i32 14
  %0 = load %struct.ossl_param_st* (i8*, i8*)*, %struct.ossl_param_st* (i8*, i8*)** %settable_ctx_params, align 8, !tbaa !25
  %cmp = icmp eq %struct.ossl_param_st* (i8*, i8*)* %0, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call = tail call %struct.ossl_provider_st* @EVP_MAC_get0_provider(%struct.evp_mac_st* noundef nonnull %mac) #7
  %call1 = tail call i8* @ossl_provider_ctx(%struct.ossl_provider_st* noundef %call) #6
  %1 = load %struct.ossl_param_st* (i8*, i8*)*, %struct.ossl_param_st* (i8*, i8*)** %settable_ctx_params, align 8, !tbaa !25
  %call3 = tail call %struct.ossl_param_st* %1(i8* noundef null, i8* noundef %call1) #6
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi %struct.ossl_param_st* [ %call3, %if.end ], [ null, %entry ]
  ret %struct.ossl_param_st* %retval.0
}

; Function Attrs: noinline nounwind uwtable
define %struct.ossl_param_st* @EVP_MAC_CTX_gettable_params(%struct.evp_mac_ctx_st* nocapture noundef readonly %ctx) local_unnamed_addr #0 {
entry:
  %meth = getelementptr inbounds %struct.evp_mac_ctx_st, %struct.evp_mac_ctx_st* %ctx, i64 0, i32 0
  %0 = load %struct.evp_mac_st*, %struct.evp_mac_st** %meth, align 8, !tbaa !34
  %gettable_ctx_params = getelementptr inbounds %struct.evp_mac_st, %struct.evp_mac_st* %0, i64 0, i32 13
  %1 = load %struct.ossl_param_st* (i8*, i8*)*, %struct.ossl_param_st* (i8*, i8*)** %gettable_ctx_params, align 8, !tbaa !24
  %cmp = icmp eq %struct.ossl_param_st* (i8*, i8*)* %1, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call = tail call %struct.ossl_provider_st* @EVP_MAC_get0_provider(%struct.evp_mac_st* noundef nonnull %0) #7
  %call2 = tail call i8* @ossl_provider_ctx(%struct.ossl_provider_st* noundef %call) #6
  %2 = load %struct.evp_mac_st*, %struct.evp_mac_st** %meth, align 8, !tbaa !34
  %gettable_ctx_params4 = getelementptr inbounds %struct.evp_mac_st, %struct.evp_mac_st* %2, i64 0, i32 13
  %3 = load %struct.ossl_param_st* (i8*, i8*)*, %struct.ossl_param_st* (i8*, i8*)** %gettable_ctx_params4, align 8, !tbaa !24
  %algctx = getelementptr inbounds %struct.evp_mac_ctx_st, %struct.evp_mac_ctx_st* %ctx, i64 0, i32 1
  %4 = load i8*, i8** %algctx, align 8, !tbaa !36
  %call5 = tail call %struct.ossl_param_st* %3(i8* noundef %4, i8* noundef %call2) #6
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi %struct.ossl_param_st* [ %call5, %if.end ], [ null, %entry ]
  ret %struct.ossl_param_st* %retval.0
}

; Function Attrs: noinline nounwind uwtable
define %struct.ossl_param_st* @EVP_MAC_CTX_settable_params(%struct.evp_mac_ctx_st* nocapture noundef readonly %ctx) local_unnamed_addr #0 {
entry:
  %meth = getelementptr inbounds %struct.evp_mac_ctx_st, %struct.evp_mac_ctx_st* %ctx, i64 0, i32 0
  %0 = load %struct.evp_mac_st*, %struct.evp_mac_st** %meth, align 8, !tbaa !34
  %settable_ctx_params = getelementptr inbounds %struct.evp_mac_st, %struct.evp_mac_st* %0, i64 0, i32 14
  %1 = load %struct.ossl_param_st* (i8*, i8*)*, %struct.ossl_param_st* (i8*, i8*)** %settable_ctx_params, align 8, !tbaa !25
  %cmp = icmp eq %struct.ossl_param_st* (i8*, i8*)* %1, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call = tail call %struct.ossl_provider_st* @EVP_MAC_get0_provider(%struct.evp_mac_st* noundef nonnull %0) #7
  %call2 = tail call i8* @ossl_provider_ctx(%struct.ossl_provider_st* noundef %call) #6
  %2 = load %struct.evp_mac_st*, %struct.evp_mac_st** %meth, align 8, !tbaa !34
  %settable_ctx_params4 = getelementptr inbounds %struct.evp_mac_st, %struct.evp_mac_st* %2, i64 0, i32 14
  %3 = load %struct.ossl_param_st* (i8*, i8*)*, %struct.ossl_param_st* (i8*, i8*)** %settable_ctx_params4, align 8, !tbaa !25
  %algctx = getelementptr inbounds %struct.evp_mac_ctx_st, %struct.evp_mac_ctx_st* %ctx, i64 0, i32 1
  %4 = load i8*, i8** %algctx, align 8, !tbaa !36
  %call5 = tail call %struct.ossl_param_st* %3(i8* noundef %4, i8* noundef %call2) #6
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi %struct.ossl_param_st* [ %call5, %if.end ], [ null, %entry ]
  ret %struct.ossl_param_st* %retval.0
}

; Function Attrs: noinline nounwind uwtable
define void @EVP_MAC_do_all_provided(%struct.ossl_lib_ctx_st* noundef %libctx, void (%struct.evp_mac_st*, i8*)* noundef %fn, i8* noundef %arg) local_unnamed_addr #0 {
entry:
  %0 = bitcast void (%struct.evp_mac_st*, i8*)* %fn to void (i8*, i8*)*
  tail call void @evp_generic_do_all(%struct.ossl_lib_ctx_st* noundef %libctx, i32 noundef 3, void (i8*, i8*)* noundef %0, i8* noundef %arg, i8* (i32, %struct.ossl_algorithm_st*, %struct.ossl_provider_st*)* noundef nonnull @evp_mac_from_algorithm, i32 (i8*)* noundef nonnull @evp_mac_up_ref, void (i8*)* noundef nonnull @evp_mac_free) #6
  ret void
}

declare void @evp_generic_do_all(%struct.ossl_lib_ctx_st* noundef, i32 noundef, void (i8*, i8*)* noundef, i8* noundef, i8* (i32, %struct.ossl_algorithm_st*, %struct.ossl_provider_st*)* noundef, i32 (i8*)* noundef, void (i8*)* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal fastcc i8* @evp_mac_new() unnamed_addr #0 {
entry:
  %call = tail call i8* @CRYPTO_zalloc(i64 noundef 144, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 40) #6
  %cmp = icmp eq i8* %call, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %call1 = tail call i8* @CRYPTO_THREAD_lock_new() #6
  %lock = getelementptr inbounds i8, i8* %call, i64 40
  %0 = bitcast i8* %lock to i8**
  store i8* %call1, i8** %0, align 8, !tbaa !33
  %cmp2 = icmp eq i8* %call1, null
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  tail call void @evp_mac_free(i8* noundef %call) #7
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %refcnt = getelementptr inbounds i8, i8* %call, i64 32
  %1 = bitcast i8* %refcnt to i32*
  store atomic i32 1, i32* %1 seq_cst, align 4, !tbaa !37
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
define internal fastcc i8* (i8*)* @OSSL_FUNC_mac_newctx(%struct.ossl_dispatch_st* nocapture noundef readonly %opf) unnamed_addr #3 {
entry:
  %function = getelementptr inbounds %struct.ossl_dispatch_st, %struct.ossl_dispatch_st* %opf, i64 0, i32 1
  %0 = bitcast void ()** %function to i8* (i8*)**
  %1 = load i8* (i8*)*, i8* (i8*)** %0, align 8, !tbaa !38
  ret i8* (i8*)* %1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal fastcc i8* (i8*)* @OSSL_FUNC_mac_dupctx(%struct.ossl_dispatch_st* nocapture noundef readonly %opf) unnamed_addr #3 {
entry:
  %function = getelementptr inbounds %struct.ossl_dispatch_st, %struct.ossl_dispatch_st* %opf, i64 0, i32 1
  %0 = bitcast void ()** %function to i8* (i8*)**
  %1 = load i8* (i8*)*, i8* (i8*)** %0, align 8, !tbaa !38
  ret i8* (i8*)* %1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal fastcc void (i8*)* @OSSL_FUNC_mac_freectx(%struct.ossl_dispatch_st* nocapture noundef readonly %opf) unnamed_addr #3 {
entry:
  %function = getelementptr inbounds %struct.ossl_dispatch_st, %struct.ossl_dispatch_st* %opf, i64 0, i32 1
  %0 = bitcast void ()** %function to void (i8*)**
  %1 = load void (i8*)*, void (i8*)** %0, align 8, !tbaa !38
  ret void (i8*)* %1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal fastcc i32 (i8*, i8*, i64, %struct.ossl_param_st*)* @OSSL_FUNC_mac_init(%struct.ossl_dispatch_st* nocapture noundef readonly %opf) unnamed_addr #3 {
entry:
  %function = getelementptr inbounds %struct.ossl_dispatch_st, %struct.ossl_dispatch_st* %opf, i64 0, i32 1
  %0 = bitcast void ()** %function to i32 (i8*, i8*, i64, %struct.ossl_param_st*)**
  %1 = load i32 (i8*, i8*, i64, %struct.ossl_param_st*)*, i32 (i8*, i8*, i64, %struct.ossl_param_st*)** %0, align 8, !tbaa !38
  ret i32 (i8*, i8*, i64, %struct.ossl_param_st*)* %1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal fastcc i32 (i8*, i8*, i64)* @OSSL_FUNC_mac_update(%struct.ossl_dispatch_st* nocapture noundef readonly %opf) unnamed_addr #3 {
entry:
  %function = getelementptr inbounds %struct.ossl_dispatch_st, %struct.ossl_dispatch_st* %opf, i64 0, i32 1
  %0 = bitcast void ()** %function to i32 (i8*, i8*, i64)**
  %1 = load i32 (i8*, i8*, i64)*, i32 (i8*, i8*, i64)** %0, align 8, !tbaa !38
  ret i32 (i8*, i8*, i64)* %1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal fastcc i32 (i8*, i8*, i64*, i64)* @OSSL_FUNC_mac_final(%struct.ossl_dispatch_st* nocapture noundef readonly %opf) unnamed_addr #3 {
entry:
  %function = getelementptr inbounds %struct.ossl_dispatch_st, %struct.ossl_dispatch_st* %opf, i64 0, i32 1
  %0 = bitcast void ()** %function to i32 (i8*, i8*, i64*, i64)**
  %1 = load i32 (i8*, i8*, i64*, i64)*, i32 (i8*, i8*, i64*, i64)** %0, align 8, !tbaa !38
  ret i32 (i8*, i8*, i64*, i64)* %1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal fastcc %struct.ossl_param_st* (i8*)* @OSSL_FUNC_mac_gettable_params(%struct.ossl_dispatch_st* nocapture noundef readonly %opf) unnamed_addr #3 {
entry:
  %function = getelementptr inbounds %struct.ossl_dispatch_st, %struct.ossl_dispatch_st* %opf, i64 0, i32 1
  %0 = bitcast void ()** %function to %struct.ossl_param_st* (i8*)**
  %1 = load %struct.ossl_param_st* (i8*)*, %struct.ossl_param_st* (i8*)** %0, align 8, !tbaa !38
  ret %struct.ossl_param_st* (i8*)* %1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal fastcc %struct.ossl_param_st* (i8*, i8*)* @OSSL_FUNC_mac_gettable_ctx_params(%struct.ossl_dispatch_st* nocapture noundef readonly %opf) unnamed_addr #3 {
entry:
  %function = getelementptr inbounds %struct.ossl_dispatch_st, %struct.ossl_dispatch_st* %opf, i64 0, i32 1
  %0 = bitcast void ()** %function to %struct.ossl_param_st* (i8*, i8*)**
  %1 = load %struct.ossl_param_st* (i8*, i8*)*, %struct.ossl_param_st* (i8*, i8*)** %0, align 8, !tbaa !38
  ret %struct.ossl_param_st* (i8*, i8*)* %1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal fastcc %struct.ossl_param_st* (i8*, i8*)* @OSSL_FUNC_mac_settable_ctx_params(%struct.ossl_dispatch_st* nocapture noundef readonly %opf) unnamed_addr #3 {
entry:
  %function = getelementptr inbounds %struct.ossl_dispatch_st, %struct.ossl_dispatch_st* %opf, i64 0, i32 1
  %0 = bitcast void ()** %function to %struct.ossl_param_st* (i8*, i8*)**
  %1 = load %struct.ossl_param_st* (i8*, i8*)*, %struct.ossl_param_st* (i8*, i8*)** %0, align 8, !tbaa !38
  ret %struct.ossl_param_st* (i8*, i8*)* %1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal fastcc i32 (%struct.ossl_param_st*)* @OSSL_FUNC_mac_get_params(%struct.ossl_dispatch_st* nocapture noundef readonly %opf) unnamed_addr #3 {
entry:
  %function = getelementptr inbounds %struct.ossl_dispatch_st, %struct.ossl_dispatch_st* %opf, i64 0, i32 1
  %0 = bitcast void ()** %function to i32 (%struct.ossl_param_st*)**
  %1 = load i32 (%struct.ossl_param_st*)*, i32 (%struct.ossl_param_st*)** %0, align 8, !tbaa !38
  ret i32 (%struct.ossl_param_st*)* %1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal fastcc i32 (i8*, %struct.ossl_param_st*)* @OSSL_FUNC_mac_get_ctx_params(%struct.ossl_dispatch_st* nocapture noundef readonly %opf) unnamed_addr #3 {
entry:
  %function = getelementptr inbounds %struct.ossl_dispatch_st, %struct.ossl_dispatch_st* %opf, i64 0, i32 1
  %0 = bitcast void ()** %function to i32 (i8*, %struct.ossl_param_st*)**
  %1 = load i32 (i8*, %struct.ossl_param_st*)*, i32 (i8*, %struct.ossl_param_st*)** %0, align 8, !tbaa !38
  ret i32 (i8*, %struct.ossl_param_st*)* %1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal fastcc i32 (i8*, %struct.ossl_param_st*)* @OSSL_FUNC_mac_set_ctx_params(%struct.ossl_dispatch_st* nocapture noundef readonly %opf) unnamed_addr #3 {
entry:
  %function = getelementptr inbounds %struct.ossl_dispatch_st, %struct.ossl_dispatch_st* %opf, i64 0, i32 1
  %0 = bitcast void ()** %function to i32 (i8*, %struct.ossl_param_st*)**
  %1 = load i32 (i8*, %struct.ossl_param_st*)*, i32 (i8*, %struct.ossl_param_st*)** %0, align 8, !tbaa !38
  ret i32 (i8*, %struct.ossl_param_st*)* %1
}

declare i32 @ossl_provider_up_ref(%struct.ossl_provider_st* noundef) local_unnamed_addr #1

declare i8* @CRYPTO_zalloc(i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

declare i8* @CRYPTO_THREAD_lock_new() local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nounwind uwtable willreturn
define internal fastcc void @CRYPTO_UP_REF(i32* nocapture noundef %val, i32* nocapture noundef writeonly %ret) unnamed_addr #5 {
entry:
  %0 = atomicrmw add i32* %val, i32 1 monotonic, align 4
  %add = add nsw i32 %0, 1
  store i32 %add, i32* %ret, align 4, !tbaa !32
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind uwtable willreturn
define internal fastcc void @CRYPTO_DOWN_REF(i32* nocapture noundef %val, i32* nocapture noundef writeonly %ret) unnamed_addr #5 {
entry:
  %0 = atomicrmw sub i32* %val, i32 1 monotonic, align 4
  %sub = add nsw i32 %0, -1
  store i32 %sub, i32* %ret, align 4, !tbaa !32
  %cmp = icmp eq i32 %sub, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  fence acquire
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare void @CRYPTO_free(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

declare void @ossl_provider_free(%struct.ossl_provider_st* noundef) local_unnamed_addr #1

declare void @CRYPTO_THREAD_lock_free(i8* noundef) local_unnamed_addr #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree noinline nounwind uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly mustprogress nofree nosync nounwind willreturn }
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
!10 = !{!"evp_mac_st", !6, i64 0, !11, i64 8, !6, i64 16, !6, i64 24, !7, i64 32, !6, i64 40, !6, i64 48, !6, i64 56, !6, i64 64, !6, i64 72, !6, i64 80, !6, i64 88, !6, i64 96, !6, i64 104, !6, i64 112, !6, i64 120, !6, i64 128, !6, i64 136}
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
!28 = !{!10, !6, i64 136}
!29 = distinct !{!29, !30}
!30 = !{!"llvm.loop.mustprogress"}
!31 = !{!10, !6, i64 0}
!32 = !{!11, !11, i64 0}
!33 = !{!10, !6, i64 40}
!34 = !{!35, !6, i64 0}
!35 = !{!"evp_mac_ctx_st", !6, i64 0, !6, i64 8}
!36 = !{!35, !6, i64 8}
!37 = !{!10, !7, i64 32}
!38 = !{!16, !6, i64 8}
