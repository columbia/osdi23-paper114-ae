; ModuleID = 'crypto/evp/evp_rand.c'
source_filename = "crypto/evp/evp_rand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evp_rand_ctx_st = type { %struct.evp_rand_st*, i8*, %struct.evp_rand_ctx_st*, i32, i8* }
%struct.evp_rand_st = type { %struct.ossl_provider_st*, i32, i8*, i8*, i32, i8*, %struct.ossl_dispatch_st*, i8* (i8*, i8*, %struct.ossl_dispatch_st*)*, void (i8*)*, i32 (i8*, i32, i32, i8*, i64, %struct.ossl_param_st*)*, i32 (i8*)*, i32 (i8*, i8*, i64, i32, i32, i8*, i64)*, i32 (i8*, i32, i8*, i64, i8*, i64)*, i64 (i8*, i8*, i32, i64, i64)*, i32 (i8*)*, i32 (i8*)*, void (i8*)*, %struct.ossl_param_st* (i8*)*, %struct.ossl_param_st* (i8*, i8*)*, %struct.ossl_param_st* (i8*, i8*)*, i32 (%struct.ossl_param_st*)*, i32 (i8*, %struct.ossl_param_st*)*, i32 (i8*, %struct.ossl_param_st*)*, i32 (i8*)* }
%struct.ossl_provider_st = type opaque
%struct.ossl_dispatch_st = type { i32, void ()* }
%struct.ossl_param_st = type { i8*, i32, i8*, i64, i64 }
%struct.ossl_lib_ctx_st = type opaque
%struct.ossl_algorithm_st = type { i8*, i8*, %struct.ossl_dispatch_st*, i8* }

@.str = private unnamed_addr constant [22 x i8] c"crypto/evp/evp_rand.c\00", align 1
@__func__.EVP_RAND_enable_locking = private unnamed_addr constant [24 x i8] c"EVP_RAND_enable_locking\00", align 1
@__func__.EVP_RAND_CTX_new = private unnamed_addr constant [17 x i8] c"EVP_RAND_CTX_new\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"state\00", align 1
@__func__.evp_rand_from_algorithm = private unnamed_addr constant [24 x i8] c"evp_rand_from_algorithm\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"max_request\00", align 1
@__func__.evp_rand_generate_locked = private unnamed_addr constant [25 x i8] c"evp_rand_generate_locked\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"strength\00", align 1

; Function Attrs: noinline nounwind uwtable
define i32 @EVP_RAND_enable_locking(%struct.evp_rand_ctx_st* nocapture noundef readonly %rand) local_unnamed_addr #0 {
entry:
  %meth = getelementptr inbounds %struct.evp_rand_ctx_st, %struct.evp_rand_ctx_st* %rand, i64 0, i32 0
  %0 = load %struct.evp_rand_st*, %struct.evp_rand_st** %meth, align 8, !tbaa !4
  %enable_locking = getelementptr inbounds %struct.evp_rand_st, %struct.evp_rand_st* %0, i64 0, i32 14
  %1 = load i32 (i8*)*, i32 (i8*)** %enable_locking, align 8, !tbaa !9
  %cmp.not = icmp eq i32 (i8*)* %1, null
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %algctx = getelementptr inbounds %struct.evp_rand_ctx_st, %struct.evp_rand_ctx_st* %rand, i64 0, i32 1
  %2 = load i8*, i8** %algctx, align 8, !tbaa !12
  %call = tail call i32 %1(i8* noundef %2) #7
  br label %return

if.end:                                           ; preds = %entry
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 96, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.EVP_RAND_enable_locking, i64 0, i64 0)) #7
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 6, i32 noundef 213, i8* noundef null) #7
  br label %return

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %call, %if.then ], [ 0, %if.end ]
  ret i32 %retval.0
}

declare void @ERR_new() local_unnamed_addr #1

declare void @ERR_set_debug(i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #1

declare void @ERR_set_error(i32 noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define %struct.evp_rand_st* @EVP_RAND_fetch(%struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef %algorithm, i8* noundef %properties) local_unnamed_addr #0 {
entry:
  %call = tail call i8* @evp_generic_fetch(%struct.ossl_lib_ctx_st* noundef %libctx, i32 noundef 5, i8* noundef %algorithm, i8* noundef %properties, i8* (i32, %struct.ossl_algorithm_st*, %struct.ossl_provider_st*)* noundef nonnull @evp_rand_from_algorithm, i32 (i8*)* noundef nonnull @evp_rand_up_ref, void (i8*)* noundef nonnull @evp_rand_free) #7
  %0 = bitcast i8* %call to %struct.evp_rand_st*
  ret %struct.evp_rand_st* %0
}

declare i8* @evp_generic_fetch(%struct.ossl_lib_ctx_st* noundef, i32 noundef, i8* noundef, i8* noundef, i8* (i32, %struct.ossl_algorithm_st*, %struct.ossl_provider_st*)* noundef, i32 (i8*)* noundef, void (i8*)* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal i8* @evp_rand_from_algorithm(i32 noundef %name_id, %struct.ossl_algorithm_st* noundef %algodef, %struct.ossl_provider_st* noundef %prov) #0 {
entry:
  %implementation = getelementptr inbounds %struct.ossl_algorithm_st, %struct.ossl_algorithm_st* %algodef, i64 0, i32 2
  %0 = load %struct.ossl_dispatch_st*, %struct.ossl_dispatch_st** %implementation, align 8, !tbaa !13
  %call = tail call fastcc i8* @evp_rand_new() #8
  %cmp = icmp eq i8* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 127, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.evp_rand_from_algorithm, i64 0, i64 0)) #7
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 6, i32 noundef 786688, i8* noundef null) #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %name_id1 = getelementptr inbounds i8, i8* %call, i64 8
  %1 = bitcast i8* %name_id1 to i32*
  store i32 %name_id, i32* %1, align 8, !tbaa !15
  %call2 = tail call i8* @ossl_algorithm_get1_first_name(%struct.ossl_algorithm_st* noundef nonnull %algodef) #7
  %type_name = getelementptr inbounds i8, i8* %call, i64 16
  %2 = bitcast i8* %type_name to i8**
  store i8* %call2, i8** %2, align 8, !tbaa !16
  %cmp3 = icmp eq i8* %call2, null
  br i1 %cmp3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  tail call void @evp_rand_free(i8* noundef nonnull %call) #8
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %algorithm_description = getelementptr inbounds %struct.ossl_algorithm_st, %struct.ossl_algorithm_st* %algodef, i64 0, i32 3
  %3 = load i8*, i8** %algorithm_description, align 8, !tbaa !17
  %description = getelementptr inbounds i8, i8* %call, i64 24
  %4 = bitcast i8* %description to i8**
  store i8* %3, i8** %4, align 8, !tbaa !18
  %dispatch = getelementptr inbounds i8, i8* %call, i64 48
  %5 = bitcast i8* %dispatch to %struct.ossl_dispatch_st**
  store %struct.ossl_dispatch_st* %0, %struct.ossl_dispatch_st** %5, align 8, !tbaa !19
  %verify_zeroization = getelementptr inbounds i8, i8* %call, i64 184
  %6 = bitcast i8* %verify_zeroization to i32 (i8*)**
  %set_ctx_params = getelementptr inbounds i8, i8* %call, i64 176
  %7 = bitcast i8* %set_ctx_params to i32 (i8*, %struct.ossl_param_st*)**
  %get_ctx_params = getelementptr inbounds i8, i8* %call, i64 168
  %8 = bitcast i8* %get_ctx_params to i32 (i8*, %struct.ossl_param_st*)**
  %get_params = getelementptr inbounds i8, i8* %call, i64 160
  %9 = bitcast i8* %get_params to i32 (%struct.ossl_param_st*)**
  %settable_ctx_params = getelementptr inbounds i8, i8* %call, i64 152
  %10 = bitcast i8* %settable_ctx_params to %struct.ossl_param_st* (i8*, i8*)**
  %gettable_ctx_params = getelementptr inbounds i8, i8* %call, i64 144
  %11 = bitcast i8* %gettable_ctx_params to %struct.ossl_param_st* (i8*, i8*)**
  %gettable_params = getelementptr inbounds i8, i8* %call, i64 136
  %12 = bitcast i8* %gettable_params to %struct.ossl_param_st* (i8*)**
  %unlock = getelementptr inbounds i8, i8* %call, i64 128
  %13 = bitcast i8* %unlock to void (i8*)**
  %lock = getelementptr inbounds i8, i8* %call, i64 120
  %14 = bitcast i8* %lock to i32 (i8*)**
  %enable_locking = getelementptr inbounds i8, i8* %call, i64 112
  %15 = bitcast i8* %enable_locking to i32 (i8*)**
  %nonce = getelementptr inbounds i8, i8* %call, i64 104
  %16 = bitcast i8* %nonce to i64 (i8*, i8*, i32, i64, i64)**
  %reseed = getelementptr inbounds i8, i8* %call, i64 96
  %17 = bitcast i8* %reseed to i32 (i8*, i32, i8*, i64, i8*, i64)**
  %generate = getelementptr inbounds i8, i8* %call, i64 88
  %18 = bitcast i8* %generate to i32 (i8*, i8*, i64, i32, i32, i8*, i64)**
  %uninstantiate = getelementptr inbounds i8, i8* %call, i64 80
  %19 = bitcast i8* %uninstantiate to i32 (i8*)**
  %instantiate = getelementptr inbounds i8, i8* %call, i64 72
  %20 = bitcast i8* %instantiate to i32 (i8*, i32, i32, i8*, i64, %struct.ossl_param_st*)**
  %freectx = getelementptr inbounds i8, i8* %call, i64 64
  %21 = bitcast i8* %freectx to void (i8*)**
  %newctx = getelementptr inbounds i8, i8* %call, i64 56
  %22 = bitcast i8* %newctx to i8* (i8*, i8*, %struct.ossl_dispatch_st*)**
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end5
  %fns.0 = phi %struct.ossl_dispatch_st* [ %0, %if.end5 ], [ %incdec.ptr, %for.inc ]
  %fnrandcnt.0 = phi i32 [ 0, %if.end5 ], [ %fnrandcnt.1, %for.inc ]
  %fnctxcnt.0 = phi i32 [ 0, %if.end5 ], [ %fnctxcnt.1, %for.inc ]
  %fnlockcnt.0 = phi i32 [ 0, %if.end5 ], [ %fnlockcnt.1, %for.inc ]
  %fnenablelockcnt.0 = phi i32 [ 0, %if.end5 ], [ %fnenablelockcnt.1, %for.inc ]
  %function_id = getelementptr inbounds %struct.ossl_dispatch_st, %struct.ossl_dispatch_st* %fns.0, i64 0, i32 0
  %23 = load i32, i32* %function_id, align 8, !tbaa !20
  switch i32 %23, label %for.inc [
    i32 0, label %for.end
    i32 1, label %sw.bb
    i32 2, label %sw.bb13
    i32 3, label %sw.bb20
    i32 4, label %sw.bb27
    i32 5, label %sw.bb34
    i32 6, label %sw.bb41
    i32 7, label %sw.bb47
    i32 8, label %sw.bb53
    i32 9, label %sw.bb60
    i32 10, label %sw.bb67
    i32 11, label %sw.bb74
    i32 12, label %sw.bb80
    i32 13, label %sw.bb86
    i32 14, label %sw.bb92
    i32 15, label %sw.bb98
    i32 16, label %sw.bb105
    i32 17, label %sw.bb111
  ]

sw.bb:                                            ; preds = %for.cond
  %24 = load i8* (i8*, i8*, %struct.ossl_dispatch_st*)*, i8* (i8*, i8*, %struct.ossl_dispatch_st*)** %22, align 8, !tbaa !22
  %cmp8.not = icmp eq i8* (i8*, i8*, %struct.ossl_dispatch_st*)* %24, null
  br i1 %cmp8.not, label %if.end10, label %for.inc

if.end10:                                         ; preds = %sw.bb
  %call11 = tail call fastcc i8* (i8*, i8*, %struct.ossl_dispatch_st*)* @OSSL_FUNC_rand_newctx(%struct.ossl_dispatch_st* noundef nonnull %fns.0) #8
  store i8* (i8*, i8*, %struct.ossl_dispatch_st*)* %call11, i8* (i8*, i8*, %struct.ossl_dispatch_st*)** %22, align 8, !tbaa !22
  %inc = add nsw i32 %fnctxcnt.0, 1
  br label %for.inc

sw.bb13:                                          ; preds = %for.cond
  %25 = load void (i8*)*, void (i8*)** %21, align 8, !tbaa !23
  %cmp14.not = icmp eq void (i8*)* %25, null
  br i1 %cmp14.not, label %if.end16, label %for.inc

if.end16:                                         ; preds = %sw.bb13
  %call17 = tail call fastcc void (i8*)* @OSSL_FUNC_rand_freectx(%struct.ossl_dispatch_st* noundef nonnull %fns.0) #8
  store void (i8*)* %call17, void (i8*)** %21, align 8, !tbaa !23
  %inc19 = add nsw i32 %fnctxcnt.0, 1
  br label %for.inc

sw.bb20:                                          ; preds = %for.cond
  %26 = load i32 (i8*, i32, i32, i8*, i64, %struct.ossl_param_st*)*, i32 (i8*, i32, i32, i8*, i64, %struct.ossl_param_st*)** %20, align 8, !tbaa !24
  %cmp21.not = icmp eq i32 (i8*, i32, i32, i8*, i64, %struct.ossl_param_st*)* %26, null
  br i1 %cmp21.not, label %if.end23, label %for.inc

if.end23:                                         ; preds = %sw.bb20
  %call24 = tail call fastcc i32 (i8*, i32, i32, i8*, i64, %struct.ossl_param_st*)* @OSSL_FUNC_rand_instantiate(%struct.ossl_dispatch_st* noundef nonnull %fns.0) #8
  store i32 (i8*, i32, i32, i8*, i64, %struct.ossl_param_st*)* %call24, i32 (i8*, i32, i32, i8*, i64, %struct.ossl_param_st*)** %20, align 8, !tbaa !24
  %inc26 = add nsw i32 %fnrandcnt.0, 1
  br label %for.inc

sw.bb27:                                          ; preds = %for.cond
  %27 = load i32 (i8*)*, i32 (i8*)** %19, align 8, !tbaa !25
  %cmp28.not = icmp eq i32 (i8*)* %27, null
  br i1 %cmp28.not, label %if.end30, label %for.inc

if.end30:                                         ; preds = %sw.bb27
  %call31 = tail call fastcc i32 (i8*)* @OSSL_FUNC_rand_uninstantiate(%struct.ossl_dispatch_st* noundef nonnull %fns.0) #8
  store i32 (i8*)* %call31, i32 (i8*)** %19, align 8, !tbaa !25
  %inc33 = add nsw i32 %fnrandcnt.0, 1
  br label %for.inc

sw.bb34:                                          ; preds = %for.cond
  %28 = load i32 (i8*, i8*, i64, i32, i32, i8*, i64)*, i32 (i8*, i8*, i64, i32, i32, i8*, i64)** %18, align 8, !tbaa !26
  %cmp35.not = icmp eq i32 (i8*, i8*, i64, i32, i32, i8*, i64)* %28, null
  br i1 %cmp35.not, label %if.end37, label %for.inc

if.end37:                                         ; preds = %sw.bb34
  %call38 = tail call fastcc i32 (i8*, i8*, i64, i32, i32, i8*, i64)* @OSSL_FUNC_rand_generate(%struct.ossl_dispatch_st* noundef nonnull %fns.0) #8
  store i32 (i8*, i8*, i64, i32, i32, i8*, i64)* %call38, i32 (i8*, i8*, i64, i32, i32, i8*, i64)** %18, align 8, !tbaa !26
  %inc40 = add nsw i32 %fnrandcnt.0, 1
  br label %for.inc

sw.bb41:                                          ; preds = %for.cond
  %29 = load i32 (i8*, i32, i8*, i64, i8*, i64)*, i32 (i8*, i32, i8*, i64, i8*, i64)** %17, align 8, !tbaa !27
  %cmp42.not = icmp eq i32 (i8*, i32, i8*, i64, i8*, i64)* %29, null
  br i1 %cmp42.not, label %if.end44, label %for.inc

if.end44:                                         ; preds = %sw.bb41
  %call45 = tail call fastcc i32 (i8*, i32, i8*, i64, i8*, i64)* @OSSL_FUNC_rand_reseed(%struct.ossl_dispatch_st* noundef nonnull %fns.0) #8
  store i32 (i8*, i32, i8*, i64, i8*, i64)* %call45, i32 (i8*, i32, i8*, i64, i8*, i64)** %17, align 8, !tbaa !27
  br label %for.inc

sw.bb47:                                          ; preds = %for.cond
  %30 = load i64 (i8*, i8*, i32, i64, i64)*, i64 (i8*, i8*, i32, i64, i64)** %16, align 8, !tbaa !28
  %cmp48.not = icmp eq i64 (i8*, i8*, i32, i64, i64)* %30, null
  br i1 %cmp48.not, label %if.end50, label %for.inc

if.end50:                                         ; preds = %sw.bb47
  %call51 = tail call fastcc i64 (i8*, i8*, i32, i64, i64)* @OSSL_FUNC_rand_nonce(%struct.ossl_dispatch_st* noundef nonnull %fns.0) #8
  store i64 (i8*, i8*, i32, i64, i64)* %call51, i64 (i8*, i8*, i32, i64, i64)** %16, align 8, !tbaa !28
  br label %for.inc

sw.bb53:                                          ; preds = %for.cond
  %31 = load i32 (i8*)*, i32 (i8*)** %15, align 8, !tbaa !9
  %cmp54.not = icmp eq i32 (i8*)* %31, null
  br i1 %cmp54.not, label %if.end56, label %for.inc

if.end56:                                         ; preds = %sw.bb53
  %call57 = tail call fastcc i32 (i8*)* @OSSL_FUNC_rand_enable_locking(%struct.ossl_dispatch_st* noundef nonnull %fns.0) #8
  store i32 (i8*)* %call57, i32 (i8*)** %15, align 8, !tbaa !9
  %inc59 = add nsw i32 %fnenablelockcnt.0, 1
  br label %for.inc

sw.bb60:                                          ; preds = %for.cond
  %32 = load i32 (i8*)*, i32 (i8*)** %14, align 8, !tbaa !29
  %cmp61.not = icmp eq i32 (i8*)* %32, null
  br i1 %cmp61.not, label %if.end63, label %for.inc

if.end63:                                         ; preds = %sw.bb60
  %call64 = tail call fastcc i32 (i8*)* @OSSL_FUNC_rand_lock(%struct.ossl_dispatch_st* noundef nonnull %fns.0) #8
  store i32 (i8*)* %call64, i32 (i8*)** %14, align 8, !tbaa !29
  %inc66 = add nsw i32 %fnlockcnt.0, 1
  br label %for.inc

sw.bb67:                                          ; preds = %for.cond
  %33 = load void (i8*)*, void (i8*)** %13, align 8, !tbaa !30
  %cmp68.not = icmp eq void (i8*)* %33, null
  br i1 %cmp68.not, label %if.end70, label %for.inc

if.end70:                                         ; preds = %sw.bb67
  %call71 = tail call fastcc void (i8*)* @OSSL_FUNC_rand_unlock(%struct.ossl_dispatch_st* noundef nonnull %fns.0) #8
  store void (i8*)* %call71, void (i8*)** %13, align 8, !tbaa !30
  %inc73 = add nsw i32 %fnlockcnt.0, 1
  br label %for.inc

sw.bb74:                                          ; preds = %for.cond
  %34 = load %struct.ossl_param_st* (i8*)*, %struct.ossl_param_st* (i8*)** %12, align 8, !tbaa !31
  %cmp75.not = icmp eq %struct.ossl_param_st* (i8*)* %34, null
  br i1 %cmp75.not, label %if.end77, label %for.inc

if.end77:                                         ; preds = %sw.bb74
  %call78 = tail call fastcc %struct.ossl_param_st* (i8*)* @OSSL_FUNC_rand_gettable_params(%struct.ossl_dispatch_st* noundef nonnull %fns.0) #8
  store %struct.ossl_param_st* (i8*)* %call78, %struct.ossl_param_st* (i8*)** %12, align 8, !tbaa !31
  br label %for.inc

sw.bb80:                                          ; preds = %for.cond
  %35 = load %struct.ossl_param_st* (i8*, i8*)*, %struct.ossl_param_st* (i8*, i8*)** %11, align 8, !tbaa !32
  %cmp81.not = icmp eq %struct.ossl_param_st* (i8*, i8*)* %35, null
  br i1 %cmp81.not, label %if.end83, label %for.inc

if.end83:                                         ; preds = %sw.bb80
  %call84 = tail call fastcc %struct.ossl_param_st* (i8*, i8*)* @OSSL_FUNC_rand_gettable_ctx_params(%struct.ossl_dispatch_st* noundef nonnull %fns.0) #8
  store %struct.ossl_param_st* (i8*, i8*)* %call84, %struct.ossl_param_st* (i8*, i8*)** %11, align 8, !tbaa !32
  br label %for.inc

sw.bb86:                                          ; preds = %for.cond
  %36 = load %struct.ossl_param_st* (i8*, i8*)*, %struct.ossl_param_st* (i8*, i8*)** %10, align 8, !tbaa !33
  %cmp87.not = icmp eq %struct.ossl_param_st* (i8*, i8*)* %36, null
  br i1 %cmp87.not, label %if.end89, label %for.inc

if.end89:                                         ; preds = %sw.bb86
  %call90 = tail call fastcc %struct.ossl_param_st* (i8*, i8*)* @OSSL_FUNC_rand_settable_ctx_params(%struct.ossl_dispatch_st* noundef nonnull %fns.0) #8
  store %struct.ossl_param_st* (i8*, i8*)* %call90, %struct.ossl_param_st* (i8*, i8*)** %10, align 8, !tbaa !33
  br label %for.inc

sw.bb92:                                          ; preds = %for.cond
  %37 = load i32 (%struct.ossl_param_st*)*, i32 (%struct.ossl_param_st*)** %9, align 8, !tbaa !34
  %cmp93.not = icmp eq i32 (%struct.ossl_param_st*)* %37, null
  br i1 %cmp93.not, label %if.end95, label %for.inc

if.end95:                                         ; preds = %sw.bb92
  %call96 = tail call fastcc i32 (%struct.ossl_param_st*)* @OSSL_FUNC_rand_get_params(%struct.ossl_dispatch_st* noundef nonnull %fns.0) #8
  store i32 (%struct.ossl_param_st*)* %call96, i32 (%struct.ossl_param_st*)** %9, align 8, !tbaa !34
  br label %for.inc

sw.bb98:                                          ; preds = %for.cond
  %38 = load i32 (i8*, %struct.ossl_param_st*)*, i32 (i8*, %struct.ossl_param_st*)** %8, align 8, !tbaa !35
  %cmp99.not = icmp eq i32 (i8*, %struct.ossl_param_st*)* %38, null
  br i1 %cmp99.not, label %if.end101, label %for.inc

if.end101:                                        ; preds = %sw.bb98
  %call102 = tail call fastcc i32 (i8*, %struct.ossl_param_st*)* @OSSL_FUNC_rand_get_ctx_params(%struct.ossl_dispatch_st* noundef nonnull %fns.0) #8
  store i32 (i8*, %struct.ossl_param_st*)* %call102, i32 (i8*, %struct.ossl_param_st*)** %8, align 8, !tbaa !35
  %inc104 = add nsw i32 %fnctxcnt.0, 1
  br label %for.inc

sw.bb105:                                         ; preds = %for.cond
  %39 = load i32 (i8*, %struct.ossl_param_st*)*, i32 (i8*, %struct.ossl_param_st*)** %7, align 8, !tbaa !36
  %cmp106.not = icmp eq i32 (i8*, %struct.ossl_param_st*)* %39, null
  br i1 %cmp106.not, label %if.end108, label %for.inc

if.end108:                                        ; preds = %sw.bb105
  %call109 = tail call fastcc i32 (i8*, %struct.ossl_param_st*)* @OSSL_FUNC_rand_set_ctx_params(%struct.ossl_dispatch_st* noundef nonnull %fns.0) #8
  store i32 (i8*, %struct.ossl_param_st*)* %call109, i32 (i8*, %struct.ossl_param_st*)** %7, align 8, !tbaa !36
  br label %for.inc

sw.bb111:                                         ; preds = %for.cond
  %40 = load i32 (i8*)*, i32 (i8*)** %6, align 8, !tbaa !37
  %cmp112.not = icmp eq i32 (i8*)* %40, null
  br i1 %cmp112.not, label %if.end114, label %for.inc

if.end114:                                        ; preds = %sw.bb111
  %call115 = tail call fastcc i32 (i8*)* @OSSL_FUNC_rand_verify_zeroization(%struct.ossl_dispatch_st* noundef nonnull %fns.0) #8
  store i32 (i8*)* %call115, i32 (i8*)** %6, align 8, !tbaa !37
  br label %for.inc

for.inc:                                          ; preds = %for.cond, %if.end10, %if.end16, %if.end23, %if.end30, %if.end37, %if.end44, %if.end50, %if.end56, %if.end63, %if.end70, %if.end77, %if.end83, %if.end89, %if.end95, %if.end101, %if.end108, %if.end114, %sw.bb, %sw.bb13, %sw.bb20, %sw.bb27, %sw.bb34, %sw.bb41, %sw.bb47, %sw.bb53, %sw.bb60, %sw.bb67, %sw.bb74, %sw.bb80, %sw.bb86, %sw.bb92, %sw.bb98, %sw.bb105, %sw.bb111
  %fnrandcnt.1 = phi i32 [ %fnrandcnt.0, %sw.bb111 ], [ %fnrandcnt.0, %if.end114 ], [ %fnrandcnt.0, %sw.bb105 ], [ %fnrandcnt.0, %if.end108 ], [ %fnrandcnt.0, %sw.bb98 ], [ %fnrandcnt.0, %if.end101 ], [ %fnrandcnt.0, %sw.bb92 ], [ %fnrandcnt.0, %if.end95 ], [ %fnrandcnt.0, %sw.bb86 ], [ %fnrandcnt.0, %if.end89 ], [ %fnrandcnt.0, %sw.bb80 ], [ %fnrandcnt.0, %if.end83 ], [ %fnrandcnt.0, %sw.bb74 ], [ %fnrandcnt.0, %if.end77 ], [ %fnrandcnt.0, %sw.bb67 ], [ %fnrandcnt.0, %if.end70 ], [ %fnrandcnt.0, %sw.bb60 ], [ %fnrandcnt.0, %if.end63 ], [ %fnrandcnt.0, %sw.bb53 ], [ %fnrandcnt.0, %if.end56 ], [ %fnrandcnt.0, %sw.bb47 ], [ %fnrandcnt.0, %if.end50 ], [ %fnrandcnt.0, %sw.bb41 ], [ %fnrandcnt.0, %if.end44 ], [ %fnrandcnt.0, %sw.bb34 ], [ %inc40, %if.end37 ], [ %fnrandcnt.0, %sw.bb27 ], [ %inc33, %if.end30 ], [ %fnrandcnt.0, %sw.bb20 ], [ %inc26, %if.end23 ], [ %fnrandcnt.0, %sw.bb13 ], [ %fnrandcnt.0, %if.end16 ], [ %fnrandcnt.0, %sw.bb ], [ %fnrandcnt.0, %if.end10 ], [ %fnrandcnt.0, %for.cond ]
  %fnctxcnt.1 = phi i32 [ %fnctxcnt.0, %sw.bb111 ], [ %fnctxcnt.0, %if.end114 ], [ %fnctxcnt.0, %sw.bb105 ], [ %fnctxcnt.0, %if.end108 ], [ %fnctxcnt.0, %sw.bb98 ], [ %inc104, %if.end101 ], [ %fnctxcnt.0, %sw.bb92 ], [ %fnctxcnt.0, %if.end95 ], [ %fnctxcnt.0, %sw.bb86 ], [ %fnctxcnt.0, %if.end89 ], [ %fnctxcnt.0, %sw.bb80 ], [ %fnctxcnt.0, %if.end83 ], [ %fnctxcnt.0, %sw.bb74 ], [ %fnctxcnt.0, %if.end77 ], [ %fnctxcnt.0, %sw.bb67 ], [ %fnctxcnt.0, %if.end70 ], [ %fnctxcnt.0, %sw.bb60 ], [ %fnctxcnt.0, %if.end63 ], [ %fnctxcnt.0, %sw.bb53 ], [ %fnctxcnt.0, %if.end56 ], [ %fnctxcnt.0, %sw.bb47 ], [ %fnctxcnt.0, %if.end50 ], [ %fnctxcnt.0, %sw.bb41 ], [ %fnctxcnt.0, %if.end44 ], [ %fnctxcnt.0, %sw.bb34 ], [ %fnctxcnt.0, %if.end37 ], [ %fnctxcnt.0, %sw.bb27 ], [ %fnctxcnt.0, %if.end30 ], [ %fnctxcnt.0, %sw.bb20 ], [ %fnctxcnt.0, %if.end23 ], [ %fnctxcnt.0, %sw.bb13 ], [ %inc19, %if.end16 ], [ %fnctxcnt.0, %sw.bb ], [ %inc, %if.end10 ], [ %fnctxcnt.0, %for.cond ]
  %fnlockcnt.1 = phi i32 [ %fnlockcnt.0, %sw.bb111 ], [ %fnlockcnt.0, %if.end114 ], [ %fnlockcnt.0, %sw.bb105 ], [ %fnlockcnt.0, %if.end108 ], [ %fnlockcnt.0, %sw.bb98 ], [ %fnlockcnt.0, %if.end101 ], [ %fnlockcnt.0, %sw.bb92 ], [ %fnlockcnt.0, %if.end95 ], [ %fnlockcnt.0, %sw.bb86 ], [ %fnlockcnt.0, %if.end89 ], [ %fnlockcnt.0, %sw.bb80 ], [ %fnlockcnt.0, %if.end83 ], [ %fnlockcnt.0, %sw.bb74 ], [ %fnlockcnt.0, %if.end77 ], [ %fnlockcnt.0, %sw.bb67 ], [ %inc73, %if.end70 ], [ %fnlockcnt.0, %sw.bb60 ], [ %inc66, %if.end63 ], [ %fnlockcnt.0, %sw.bb53 ], [ %fnlockcnt.0, %if.end56 ], [ %fnlockcnt.0, %sw.bb47 ], [ %fnlockcnt.0, %if.end50 ], [ %fnlockcnt.0, %sw.bb41 ], [ %fnlockcnt.0, %if.end44 ], [ %fnlockcnt.0, %sw.bb34 ], [ %fnlockcnt.0, %if.end37 ], [ %fnlockcnt.0, %sw.bb27 ], [ %fnlockcnt.0, %if.end30 ], [ %fnlockcnt.0, %sw.bb20 ], [ %fnlockcnt.0, %if.end23 ], [ %fnlockcnt.0, %sw.bb13 ], [ %fnlockcnt.0, %if.end16 ], [ %fnlockcnt.0, %sw.bb ], [ %fnlockcnt.0, %if.end10 ], [ %fnlockcnt.0, %for.cond ]
  %fnenablelockcnt.1 = phi i32 [ %fnenablelockcnt.0, %sw.bb111 ], [ %fnenablelockcnt.0, %if.end114 ], [ %fnenablelockcnt.0, %sw.bb105 ], [ %fnenablelockcnt.0, %if.end108 ], [ %fnenablelockcnt.0, %sw.bb98 ], [ %fnenablelockcnt.0, %if.end101 ], [ %fnenablelockcnt.0, %sw.bb92 ], [ %fnenablelockcnt.0, %if.end95 ], [ %fnenablelockcnt.0, %sw.bb86 ], [ %fnenablelockcnt.0, %if.end89 ], [ %fnenablelockcnt.0, %sw.bb80 ], [ %fnenablelockcnt.0, %if.end83 ], [ %fnenablelockcnt.0, %sw.bb74 ], [ %fnenablelockcnt.0, %if.end77 ], [ %fnenablelockcnt.0, %sw.bb67 ], [ %fnenablelockcnt.0, %if.end70 ], [ %fnenablelockcnt.0, %sw.bb60 ], [ %fnenablelockcnt.0, %if.end63 ], [ %fnenablelockcnt.0, %sw.bb53 ], [ %inc59, %if.end56 ], [ %fnenablelockcnt.0, %sw.bb47 ], [ %fnenablelockcnt.0, %if.end50 ], [ %fnenablelockcnt.0, %sw.bb41 ], [ %fnenablelockcnt.0, %if.end44 ], [ %fnenablelockcnt.0, %sw.bb34 ], [ %fnenablelockcnt.0, %if.end37 ], [ %fnenablelockcnt.0, %sw.bb27 ], [ %fnenablelockcnt.0, %if.end30 ], [ %fnenablelockcnt.0, %sw.bb20 ], [ %fnenablelockcnt.0, %if.end23 ], [ %fnenablelockcnt.0, %sw.bb13 ], [ %fnenablelockcnt.0, %if.end16 ], [ %fnenablelockcnt.0, %sw.bb ], [ %fnenablelockcnt.0, %if.end10 ], [ %fnenablelockcnt.0, %for.cond ]
  %incdec.ptr = getelementptr inbounds %struct.ossl_dispatch_st, %struct.ossl_dispatch_st* %fns.0, i64 1
  br label %for.cond, !llvm.loop !38

for.end:                                          ; preds = %for.cond
  %cmp117 = icmp eq i32 %fnrandcnt.0, 3
  %cmp118 = icmp eq i32 %fnctxcnt.0, 3
  %or.cond = select i1 %cmp117, i1 %cmp118, i1 false
  %.not = icmp ult i32 %fnenablelockcnt.0, 2
  %or.cond226 = select i1 %or.cond, i1 %.not, i1 false
  %41 = and i32 %fnlockcnt.0, -3
  %.not225 = icmp eq i32 %41, 0
  %or.cond227 = select i1 %or.cond226, i1 %.not225, i1 false
  br i1 %or.cond227, label %if.end127, label %if.then126

if.then126:                                       ; preds = %for.end
  tail call void @evp_rand_free(i8* noundef nonnull %call) #8
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 259, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.evp_rand_from_algorithm, i64 0, i64 0)) #7
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 6, i32 noundef 193, i8* noundef null) #7
  br label %cleanup

if.end127:                                        ; preds = %for.end
  %cmp128.not = icmp eq %struct.ossl_provider_st* %prov, null
  br i1 %cmp128.not, label %if.end132, label %land.lhs.true129

land.lhs.true129:                                 ; preds = %if.end127
  %call130 = tail call i32 @ossl_provider_up_ref(%struct.ossl_provider_st* noundef nonnull %prov) #7
  %tobool.not = icmp eq i32 %call130, 0
  br i1 %tobool.not, label %if.then131, label %if.end132

if.then131:                                       ; preds = %land.lhs.true129
  tail call void @evp_rand_free(i8* noundef nonnull %call) #8
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 265, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.evp_rand_from_algorithm, i64 0, i64 0)) #7
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 6, i32 noundef 786691, i8* noundef null) #7
  br label %cleanup

if.end132:                                        ; preds = %land.lhs.true129, %if.end127
  %prov133 = bitcast i8* %call to %struct.ossl_provider_st**
  store %struct.ossl_provider_st* %prov, %struct.ossl_provider_st** %prov133, align 8, !tbaa !40
  br label %cleanup

cleanup:                                          ; preds = %if.end132, %if.then131, %if.then126, %if.then4, %if.then
  %retval.0 = phi i8* [ null, %if.then ], [ null, %if.then4 ], [ null, %if.then126 ], [ %call, %if.end132 ], [ null, %if.then131 ]
  ret i8* %retval.0
}

; Function Attrs: mustprogress nofree noinline nounwind uwtable willreturn
define internal i32 @evp_rand_up_ref(i8* noundef %vrand) #2 {
entry:
  %ref = alloca i32, align 4
  %0 = bitcast i32* %ref to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #9
  %cmp.not = icmp eq i8* %vrand, null
  br i1 %cmp.not, label %cleanup, label %if.then

if.then:                                          ; preds = %entry
  %refcnt = getelementptr inbounds i8, i8* %vrand, i64 32
  %1 = bitcast i8* %refcnt to i32*
  call fastcc void @CRYPTO_UP_REF(i32* noundef nonnull %1, i32* noundef nonnull %ref) #8
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.then
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #9
  ret i32 1
}

; Function Attrs: noinline nounwind uwtable
define internal void @evp_rand_free(i8* noundef %vrand) #0 {
entry:
  %ref = alloca i32, align 4
  %0 = bitcast i32* %ref to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #9
  store i32 0, i32* %ref, align 4, !tbaa !41
  %cmp = icmp eq i8* %vrand, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %refcnt = getelementptr inbounds i8, i8* %vrand, i64 32
  %1 = bitcast i8* %refcnt to i32*
  call fastcc void @CRYPTO_DOWN_REF(i32* noundef nonnull %1, i32* noundef nonnull %ref) #8
  %2 = load i32, i32* %ref, align 4, !tbaa !41
  %cmp1 = icmp sgt i32 %2, 0
  br i1 %cmp1, label %cleanup, label %if.end3

if.end3:                                          ; preds = %if.end
  %refcnt_lock = getelementptr inbounds i8, i8* %vrand, i64 40
  %3 = bitcast i8* %refcnt_lock to i8**
  %type_name = getelementptr inbounds i8, i8* %vrand, i64 16
  %4 = bitcast i8* %type_name to i8**
  %5 = load i8*, i8** %4, align 8, !tbaa !16
  tail call void @CRYPTO_free(i8* noundef %5, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 72) #7
  %prov = bitcast i8* %vrand to %struct.ossl_provider_st**
  %6 = load %struct.ossl_provider_st*, %struct.ossl_provider_st** %prov, align 8, !tbaa !40
  tail call void @ossl_provider_free(%struct.ossl_provider_st* noundef %6) #7
  %7 = load i8*, i8** %3, align 8, !tbaa !42
  tail call void @CRYPTO_THREAD_lock_free(i8* noundef %7) #7
  tail call void @CRYPTO_free(i8* noundef nonnull %vrand, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 75) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry, %if.end3
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #9
  ret void
}

; Function Attrs: mustprogress nofree noinline nounwind uwtable willreturn
define i32 @EVP_RAND_up_ref(%struct.evp_rand_st* noundef %rand) local_unnamed_addr #2 {
entry:
  %0 = bitcast %struct.evp_rand_st* %rand to i8*
  %call = tail call i32 @evp_rand_up_ref(i8* noundef %0) #8
  ret i32 1
}

; Function Attrs: noinline nounwind uwtable
define void @EVP_RAND_free(%struct.evp_rand_st* noundef %rand) local_unnamed_addr #0 {
entry:
  %0 = bitcast %struct.evp_rand_st* %rand to i8*
  tail call void @evp_rand_free(i8* noundef %0) #8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define i32 @evp_rand_get_number(%struct.evp_rand_st* nocapture noundef readonly %rand) local_unnamed_addr #3 {
entry:
  %name_id = getelementptr inbounds %struct.evp_rand_st, %struct.evp_rand_st* %rand, i64 0, i32 1
  %0 = load i32, i32* %name_id, align 8, !tbaa !15
  ret i32 %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define i8* @EVP_RAND_get0_name(%struct.evp_rand_st* nocapture noundef readonly %rand) local_unnamed_addr #3 {
entry:
  %type_name = getelementptr inbounds %struct.evp_rand_st, %struct.evp_rand_st* %rand, i64 0, i32 2
  %0 = load i8*, i8** %type_name, align 8, !tbaa !16
  ret i8* %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define i8* @EVP_RAND_get0_description(%struct.evp_rand_st* nocapture noundef readonly %rand) local_unnamed_addr #3 {
entry:
  %description = getelementptr inbounds %struct.evp_rand_st, %struct.evp_rand_st* %rand, i64 0, i32 3
  %0 = load i8*, i8** %description, align 8, !tbaa !18
  ret i8* %0
}

; Function Attrs: noinline nounwind uwtable
define i32 @EVP_RAND_is_a(%struct.evp_rand_st* nocapture noundef readonly %rand, i8* noundef %name) local_unnamed_addr #0 {
entry:
  %prov = getelementptr inbounds %struct.evp_rand_st, %struct.evp_rand_st* %rand, i64 0, i32 0
  %0 = load %struct.ossl_provider_st*, %struct.ossl_provider_st** %prov, align 8, !tbaa !40
  %name_id = getelementptr inbounds %struct.evp_rand_st, %struct.evp_rand_st* %rand, i64 0, i32 1
  %1 = load i32, i32* %name_id, align 8, !tbaa !15
  %call = tail call i32 @evp_is_a(%struct.ossl_provider_st* noundef %0, i32 noundef %1, i8* noundef null, i8* noundef %name) #7
  ret i32 %call
}

declare i32 @evp_is_a(%struct.ossl_provider_st* noundef, i32 noundef, i8* noundef, i8* noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define %struct.ossl_provider_st* @EVP_RAND_get0_provider(%struct.evp_rand_st* nocapture noundef readonly %rand) local_unnamed_addr #3 {
entry:
  %prov = getelementptr inbounds %struct.evp_rand_st, %struct.evp_rand_st* %rand, i64 0, i32 0
  %0 = load %struct.ossl_provider_st*, %struct.ossl_provider_st** %prov, align 8, !tbaa !40
  ret %struct.ossl_provider_st* %0
}

; Function Attrs: noinline nounwind uwtable
define i32 @EVP_RAND_get_params(%struct.evp_rand_st* nocapture noundef readonly %rand, %struct.ossl_param_st* noundef %params) local_unnamed_addr #0 {
entry:
  %get_params = getelementptr inbounds %struct.evp_rand_st, %struct.evp_rand_st* %rand, i64 0, i32 20
  %0 = load i32 (%struct.ossl_param_st*)*, i32 (%struct.ossl_param_st*)** %get_params, align 8, !tbaa !34
  %cmp.not = icmp eq i32 (%struct.ossl_param_st*)* %0, null
  br i1 %cmp.not, label %return, label %if.then

if.then:                                          ; preds = %entry
  %call = tail call i32 %0(%struct.ossl_param_st* noundef %params) #7
  br label %return

return:                                           ; preds = %entry, %if.then
  %retval.0 = phi i32 [ %call, %if.then ], [ 1, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define %struct.evp_rand_ctx_st* @EVP_RAND_CTX_new(%struct.evp_rand_st* noundef %rand, %struct.evp_rand_ctx_st* noundef %parent) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.evp_rand_st* %rand, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 337, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.EVP_RAND_CTX_new, i64 0, i64 0)) #7
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 6, i32 noundef 218, i8* noundef null) #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call i8* @CRYPTO_zalloc(i64 noundef 40, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 341) #7
  %0 = bitcast i8* %call to %struct.evp_rand_ctx_st*
  %cmp1 = icmp eq i8* %call, null
  br i1 %cmp1, label %if.then4, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %call2 = tail call i8* @CRYPTO_THREAD_lock_new() #7
  %refcnt_lock = getelementptr inbounds i8, i8* %call, i64 32
  %1 = bitcast i8* %refcnt_lock to i8**
  store i8* %call2, i8** %1, align 8, !tbaa !43
  %cmp3 = icmp eq i8* %call2, null
  br i1 %cmp3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %lor.lhs.false, %if.end
  tail call void @CRYPTO_free(i8* noundef %call, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 343) #7
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 344, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.EVP_RAND_CTX_new, i64 0, i64 0)) #7
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 6, i32 noundef 786688, i8* noundef null) #7
  br label %cleanup

if.end5:                                          ; preds = %lor.lhs.false
  %cmp6.not = icmp eq %struct.evp_rand_ctx_st* %parent, null
  br i1 %cmp6.not, label %if.end12, label %if.then7

if.then7:                                         ; preds = %if.end5
  tail call fastcc void @evp_rand_ctx_up_ref(%struct.evp_rand_ctx_st* noundef nonnull %parent) #8
  %algctx = getelementptr inbounds %struct.evp_rand_ctx_st, %struct.evp_rand_ctx_st* %parent, i64 0, i32 1
  %2 = load i8*, i8** %algctx, align 8, !tbaa !12
  %meth = getelementptr inbounds %struct.evp_rand_ctx_st, %struct.evp_rand_ctx_st* %parent, i64 0, i32 0
  %3 = load %struct.evp_rand_st*, %struct.evp_rand_st** %meth, align 8, !tbaa !4
  %dispatch = getelementptr inbounds %struct.evp_rand_st, %struct.evp_rand_st* %3, i64 0, i32 6
  %4 = load %struct.ossl_dispatch_st*, %struct.ossl_dispatch_st** %dispatch, align 8, !tbaa !19
  br label %if.end12

if.end12:                                         ; preds = %if.then7, %if.end5
  %parent_ctx.0 = phi i8* [ %2, %if.then7 ], [ null, %if.end5 ]
  %parent_dispatch.0 = phi %struct.ossl_dispatch_st* [ %4, %if.then7 ], [ null, %if.end5 ]
  %newctx = getelementptr inbounds %struct.evp_rand_st, %struct.evp_rand_st* %rand, i64 0, i32 7
  %5 = load i8* (i8*, i8*, %struct.ossl_dispatch_st*)*, i8* (i8*, i8*, %struct.ossl_dispatch_st*)** %newctx, align 8, !tbaa !22
  %prov = getelementptr inbounds %struct.evp_rand_st, %struct.evp_rand_st* %rand, i64 0, i32 0
  %6 = load %struct.ossl_provider_st*, %struct.ossl_provider_st** %prov, align 8, !tbaa !40
  %call13 = tail call i8* @ossl_provider_ctx(%struct.ossl_provider_st* noundef %6) #7
  %call14 = tail call i8* %5(i8* noundef %call13, i8* noundef %parent_ctx.0, %struct.ossl_dispatch_st* noundef %parent_dispatch.0) #7
  %algctx15 = getelementptr inbounds i8, i8* %call, i64 8
  %7 = bitcast i8* %algctx15 to i8**
  store i8* %call14, i8** %7, align 8, !tbaa !12
  %cmp16 = icmp eq i8* %call14, null
  br i1 %cmp16, label %if.then20, label %lor.lhs.false17

lor.lhs.false17:                                  ; preds = %if.end12
  %call18 = tail call i32 @EVP_RAND_up_ref(%struct.evp_rand_st* noundef nonnull %rand) #8
  %meth24 = bitcast i8* %call to %struct.evp_rand_st**
  store %struct.evp_rand_st* %rand, %struct.evp_rand_st** %meth24, align 8, !tbaa !4
  %parent25 = getelementptr inbounds i8, i8* %call, i64 16
  %8 = bitcast i8* %parent25 to %struct.evp_rand_ctx_st**
  store %struct.evp_rand_ctx_st* %parent, %struct.evp_rand_ctx_st** %8, align 8, !tbaa !44
  %refcnt = getelementptr inbounds i8, i8* %call, i64 24
  %9 = bitcast i8* %refcnt to i32*
  store atomic i32 1, i32* %9 seq_cst, align 4, !tbaa !45
  br label %cleanup

if.then20:                                        ; preds = %if.end12
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 360, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.EVP_RAND_CTX_new, i64 0, i64 0)) #7
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 6, i32 noundef 786688, i8* noundef null) #7
  %freectx = getelementptr inbounds %struct.evp_rand_st, %struct.evp_rand_st* %rand, i64 0, i32 8
  %10 = load void (i8*)*, void (i8*)** %freectx, align 8, !tbaa !23
  %11 = load i8*, i8** %7, align 8, !tbaa !12
  tail call void %10(i8* noundef %11) #7
  %12 = load i8*, i8** %1, align 8, !tbaa !43
  tail call void @CRYPTO_THREAD_lock_free(i8* noundef %12) #7
  tail call void @CRYPTO_free(i8* noundef nonnull %call, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 363) #7
  tail call void @EVP_RAND_CTX_free(%struct.evp_rand_ctx_st* noundef %parent) #8
  br label %cleanup

cleanup:                                          ; preds = %lor.lhs.false17, %if.then20, %if.then4, %if.then
  %retval.0 = phi %struct.evp_rand_ctx_st* [ null, %if.then ], [ null, %if.then4 ], [ null, %if.then20 ], [ %0, %lor.lhs.false17 ]
  ret %struct.evp_rand_ctx_st* %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #4

declare i8* @CRYPTO_zalloc(i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

declare i8* @CRYPTO_THREAD_lock_new() local_unnamed_addr #1

declare void @CRYPTO_free(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline nounwind uwtable willreturn
define internal fastcc void @evp_rand_ctx_up_ref(%struct.evp_rand_ctx_st* nocapture noundef %ctx) unnamed_addr #2 {
entry:
  %ref = alloca i32, align 4
  %0 = bitcast i32* %ref to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #9
  %refcnt = getelementptr inbounds %struct.evp_rand_ctx_st, %struct.evp_rand_ctx_st* %ctx, i64 0, i32 3
  call fastcc void @CRYPTO_UP_REF(i32* noundef nonnull %refcnt, i32* noundef nonnull %ref) #8
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #9
  ret void
}

declare void @CRYPTO_THREAD_lock_free(i8* noundef) local_unnamed_addr #1

declare i8* @ossl_provider_ctx(%struct.ossl_provider_st* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define void @EVP_RAND_CTX_free(%struct.evp_rand_ctx_st* noundef %ctx) local_unnamed_addr #0 {
entry:
  %ref = alloca i32, align 4
  %0 = bitcast i32* %ref to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #9
  store i32 0, i32* %ref, align 4, !tbaa !41
  %cmp = icmp eq %struct.evp_rand_ctx_st* %ctx, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %refcnt = getelementptr inbounds %struct.evp_rand_ctx_st, %struct.evp_rand_ctx_st* %ctx, i64 0, i32 3
  call fastcc void @CRYPTO_DOWN_REF(i32* noundef nonnull %refcnt, i32* noundef nonnull %ref) #8
  %1 = load i32, i32* %ref, align 4, !tbaa !41
  %cmp1 = icmp sgt i32 %1, 0
  br i1 %cmp1, label %cleanup, label %if.end3

if.end3:                                          ; preds = %if.end
  %refcnt_lock = getelementptr inbounds %struct.evp_rand_ctx_st, %struct.evp_rand_ctx_st* %ctx, i64 0, i32 4
  %parent4 = getelementptr inbounds %struct.evp_rand_ctx_st, %struct.evp_rand_ctx_st* %ctx, i64 0, i32 2
  %2 = load %struct.evp_rand_ctx_st*, %struct.evp_rand_ctx_st** %parent4, align 8, !tbaa !44
  %meth = getelementptr inbounds %struct.evp_rand_ctx_st, %struct.evp_rand_ctx_st* %ctx, i64 0, i32 0
  %3 = load %struct.evp_rand_st*, %struct.evp_rand_st** %meth, align 8, !tbaa !4
  %freectx = getelementptr inbounds %struct.evp_rand_st, %struct.evp_rand_st* %3, i64 0, i32 8
  %4 = load void (i8*)*, void (i8*)** %freectx, align 8, !tbaa !23
  %algctx = getelementptr inbounds %struct.evp_rand_ctx_st, %struct.evp_rand_ctx_st* %ctx, i64 0, i32 1
  %5 = load i8*, i8** %algctx, align 8, !tbaa !12
  tail call void %4(i8* noundef %5) #7
  store i8* null, i8** %algctx, align 8, !tbaa !12
  %6 = load %struct.evp_rand_st*, %struct.evp_rand_st** %meth, align 8, !tbaa !4
  tail call void @EVP_RAND_free(%struct.evp_rand_st* noundef %6) #8
  %7 = load i8*, i8** %refcnt_lock, align 8, !tbaa !43
  tail call void @CRYPTO_THREAD_lock_free(i8* noundef %7) #7
  %8 = bitcast %struct.evp_rand_ctx_st* %ctx to i8*
  tail call void @CRYPTO_free(i8* noundef nonnull %8, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 389) #7
  tail call void @EVP_RAND_CTX_free(%struct.evp_rand_ctx_st* noundef %2) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry, %if.end3
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #9
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #4

; Function Attrs: mustprogress nofree noinline norecurse nounwind uwtable willreturn
define internal fastcc void @CRYPTO_DOWN_REF(i32* nocapture noundef %val, i32* nocapture noundef writeonly %ret) unnamed_addr #5 {
entry:
  %0 = atomicrmw sub i32* %val, i32 1 monotonic, align 4
  %sub = add nsw i32 %0, -1
  store i32 %sub, i32* %ret, align 4, !tbaa !41
  %cmp = icmp eq i32 %sub, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  fence acquire
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define %struct.evp_rand_st* @EVP_RAND_CTX_get0_rand(%struct.evp_rand_ctx_st* nocapture noundef readonly %ctx) local_unnamed_addr #3 {
entry:
  %meth = getelementptr inbounds %struct.evp_rand_ctx_st, %struct.evp_rand_ctx_st* %ctx, i64 0, i32 0
  %0 = load %struct.evp_rand_st*, %struct.evp_rand_st** %meth, align 8, !tbaa !4
  ret %struct.evp_rand_st* %0
}

; Function Attrs: noinline nounwind uwtable
define i32 @EVP_RAND_CTX_get_params(%struct.evp_rand_ctx_st* nocapture noundef readonly %ctx, %struct.ossl_param_st* noundef %params) local_unnamed_addr #0 {
entry:
  %call = tail call fastcc i32 @evp_rand_lock(%struct.evp_rand_ctx_st* noundef %ctx) #8
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call1 = tail call fastcc i32 @evp_rand_get_ctx_params_locked(%struct.evp_rand_ctx_st* noundef %ctx, %struct.ossl_param_st* noundef %params) #8
  tail call fastcc void @evp_rand_unlock(%struct.evp_rand_ctx_st* noundef %ctx) #8
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %call1, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @evp_rand_lock(%struct.evp_rand_ctx_st* nocapture noundef readonly %rand) unnamed_addr #0 {
entry:
  %meth = getelementptr inbounds %struct.evp_rand_ctx_st, %struct.evp_rand_ctx_st* %rand, i64 0, i32 0
  %0 = load %struct.evp_rand_st*, %struct.evp_rand_st** %meth, align 8, !tbaa !4
  %lock = getelementptr inbounds %struct.evp_rand_st, %struct.evp_rand_st* %0, i64 0, i32 15
  %1 = load i32 (i8*)*, i32 (i8*)** %lock, align 8, !tbaa !29
  %cmp.not = icmp eq i32 (i8*)* %1, null
  br i1 %cmp.not, label %return, label %if.then

if.then:                                          ; preds = %entry
  %algctx = getelementptr inbounds %struct.evp_rand_ctx_st, %struct.evp_rand_ctx_st* %rand, i64 0, i32 1
  %2 = load i8*, i8** %algctx, align 8, !tbaa !12
  %call = tail call i32 %1(i8* noundef %2) #7
  br label %return

return:                                           ; preds = %entry, %if.then
  %retval.0 = phi i32 [ %call, %if.then ], [ 1, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @evp_rand_get_ctx_params_locked(%struct.evp_rand_ctx_st* nocapture noundef readonly %ctx, %struct.ossl_param_st* noundef %params) unnamed_addr #0 {
entry:
  %meth = getelementptr inbounds %struct.evp_rand_ctx_st, %struct.evp_rand_ctx_st* %ctx, i64 0, i32 0
  %0 = load %struct.evp_rand_st*, %struct.evp_rand_st** %meth, align 8, !tbaa !4
  %get_ctx_params = getelementptr inbounds %struct.evp_rand_st, %struct.evp_rand_st* %0, i64 0, i32 21
  %1 = load i32 (i8*, %struct.ossl_param_st*)*, i32 (i8*, %struct.ossl_param_st*)** %get_ctx_params, align 8, !tbaa !35
  %algctx = getelementptr inbounds %struct.evp_rand_ctx_st, %struct.evp_rand_ctx_st* %ctx, i64 0, i32 1
  %2 = load i8*, i8** %algctx, align 8, !tbaa !12
  %call = tail call i32 %1(i8* noundef %2, %struct.ossl_param_st* noundef %params) #7
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @evp_rand_unlock(%struct.evp_rand_ctx_st* nocapture noundef readonly %rand) unnamed_addr #0 {
entry:
  %meth = getelementptr inbounds %struct.evp_rand_ctx_st, %struct.evp_rand_ctx_st* %rand, i64 0, i32 0
  %0 = load %struct.evp_rand_st*, %struct.evp_rand_st** %meth, align 8, !tbaa !4
  %unlock = getelementptr inbounds %struct.evp_rand_st, %struct.evp_rand_st* %0, i64 0, i32 16
  %1 = load void (i8*)*, void (i8*)** %unlock, align 8, !tbaa !30
  %cmp.not = icmp eq void (i8*)* %1, null
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %algctx = getelementptr inbounds %struct.evp_rand_ctx_st, %struct.evp_rand_ctx_st* %rand, i64 0, i32 1
  %2 = load i8*, i8** %algctx, align 8, !tbaa !12
  tail call void %1(i8* noundef %2) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind uwtable
define i32 @EVP_RAND_CTX_set_params(%struct.evp_rand_ctx_st* nocapture noundef readonly %ctx, %struct.ossl_param_st* noundef %params) local_unnamed_addr #0 {
entry:
  %call = tail call fastcc i32 @evp_rand_lock(%struct.evp_rand_ctx_st* noundef %ctx) #8
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call1 = tail call fastcc i32 @evp_rand_set_ctx_params_locked(%struct.evp_rand_ctx_st* noundef %ctx, %struct.ossl_param_st* noundef %params) #8
  tail call fastcc void @evp_rand_unlock(%struct.evp_rand_ctx_st* noundef %ctx) #8
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %call1, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @evp_rand_set_ctx_params_locked(%struct.evp_rand_ctx_st* nocapture noundef readonly %ctx, %struct.ossl_param_st* noundef %params) unnamed_addr #0 {
entry:
  %meth = getelementptr inbounds %struct.evp_rand_ctx_st, %struct.evp_rand_ctx_st* %ctx, i64 0, i32 0
  %0 = load %struct.evp_rand_st*, %struct.evp_rand_st** %meth, align 8, !tbaa !4
  %set_ctx_params = getelementptr inbounds %struct.evp_rand_st, %struct.evp_rand_st* %0, i64 0, i32 22
  %1 = load i32 (i8*, %struct.ossl_param_st*)*, i32 (i8*, %struct.ossl_param_st*)** %set_ctx_params, align 8, !tbaa !36
  %cmp.not = icmp eq i32 (i8*, %struct.ossl_param_st*)* %1, null
  br i1 %cmp.not, label %return, label %if.then

if.then:                                          ; preds = %entry
  %algctx = getelementptr inbounds %struct.evp_rand_ctx_st, %struct.evp_rand_ctx_st* %ctx, i64 0, i32 1
  %2 = load i8*, i8** %algctx, align 8, !tbaa !12
  %call = tail call i32 %1(i8* noundef %2, %struct.ossl_param_st* noundef %params) #7
  br label %return

return:                                           ; preds = %entry, %if.then
  %retval.0 = phi i32 [ %call, %if.then ], [ 1, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define %struct.ossl_param_st* @EVP_RAND_gettable_params(%struct.evp_rand_st* nocapture noundef readonly %rand) local_unnamed_addr #0 {
entry:
  %gettable_params = getelementptr inbounds %struct.evp_rand_st, %struct.evp_rand_st* %rand, i64 0, i32 17
  %0 = load %struct.ossl_param_st* (i8*)*, %struct.ossl_param_st* (i8*)** %gettable_params, align 8, !tbaa !31
  %cmp = icmp eq %struct.ossl_param_st* (i8*)* %0, null
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %call = tail call %struct.ossl_provider_st* @EVP_RAND_get0_provider(%struct.evp_rand_st* noundef nonnull %rand) #8
  %call2 = tail call i8* @ossl_provider_ctx(%struct.ossl_provider_st* noundef %call) #7
  %call3 = tail call %struct.ossl_param_st* %0(i8* noundef %call2) #7
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi %struct.ossl_param_st* [ %call3, %if.end ], [ null, %entry ]
  ret %struct.ossl_param_st* %retval.0
}

; Function Attrs: noinline nounwind uwtable
define %struct.ossl_param_st* @EVP_RAND_gettable_ctx_params(%struct.evp_rand_st* nocapture noundef readonly %rand) local_unnamed_addr #0 {
entry:
  %gettable_ctx_params = getelementptr inbounds %struct.evp_rand_st, %struct.evp_rand_st* %rand, i64 0, i32 18
  %0 = load %struct.ossl_param_st* (i8*, i8*)*, %struct.ossl_param_st* (i8*, i8*)** %gettable_ctx_params, align 8, !tbaa !32
  %cmp = icmp eq %struct.ossl_param_st* (i8*, i8*)* %0, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call = tail call %struct.ossl_provider_st* @EVP_RAND_get0_provider(%struct.evp_rand_st* noundef nonnull %rand) #8
  %call1 = tail call i8* @ossl_provider_ctx(%struct.ossl_provider_st* noundef %call) #7
  %1 = load %struct.ossl_param_st* (i8*, i8*)*, %struct.ossl_param_st* (i8*, i8*)** %gettable_ctx_params, align 8, !tbaa !32
  %call3 = tail call %struct.ossl_param_st* %1(i8* noundef null, i8* noundef %call1) #7
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi %struct.ossl_param_st* [ %call3, %if.end ], [ null, %entry ]
  ret %struct.ossl_param_st* %retval.0
}

; Function Attrs: noinline nounwind uwtable
define %struct.ossl_param_st* @EVP_RAND_settable_ctx_params(%struct.evp_rand_st* nocapture noundef readonly %rand) local_unnamed_addr #0 {
entry:
  %settable_ctx_params = getelementptr inbounds %struct.evp_rand_st, %struct.evp_rand_st* %rand, i64 0, i32 19
  %0 = load %struct.ossl_param_st* (i8*, i8*)*, %struct.ossl_param_st* (i8*, i8*)** %settable_ctx_params, align 8, !tbaa !33
  %cmp = icmp eq %struct.ossl_param_st* (i8*, i8*)* %0, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call = tail call %struct.ossl_provider_st* @EVP_RAND_get0_provider(%struct.evp_rand_st* noundef nonnull %rand) #8
  %call1 = tail call i8* @ossl_provider_ctx(%struct.ossl_provider_st* noundef %call) #7
  %1 = load %struct.ossl_param_st* (i8*, i8*)*, %struct.ossl_param_st* (i8*, i8*)** %settable_ctx_params, align 8, !tbaa !33
  %call3 = tail call %struct.ossl_param_st* %1(i8* noundef null, i8* noundef %call1) #7
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi %struct.ossl_param_st* [ %call3, %if.end ], [ null, %entry ]
  ret %struct.ossl_param_st* %retval.0
}

; Function Attrs: noinline nounwind uwtable
define %struct.ossl_param_st* @EVP_RAND_CTX_gettable_params(%struct.evp_rand_ctx_st* nocapture noundef readonly %ctx) local_unnamed_addr #0 {
entry:
  %meth = getelementptr inbounds %struct.evp_rand_ctx_st, %struct.evp_rand_ctx_st* %ctx, i64 0, i32 0
  %0 = load %struct.evp_rand_st*, %struct.evp_rand_st** %meth, align 8, !tbaa !4
  %gettable_ctx_params = getelementptr inbounds %struct.evp_rand_st, %struct.evp_rand_st* %0, i64 0, i32 18
  %1 = load %struct.ossl_param_st* (i8*, i8*)*, %struct.ossl_param_st* (i8*, i8*)** %gettable_ctx_params, align 8, !tbaa !32
  %cmp = icmp eq %struct.ossl_param_st* (i8*, i8*)* %1, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call = tail call %struct.ossl_provider_st* @EVP_RAND_get0_provider(%struct.evp_rand_st* noundef nonnull %0) #8
  %call2 = tail call i8* @ossl_provider_ctx(%struct.ossl_provider_st* noundef %call) #7
  %2 = load %struct.evp_rand_st*, %struct.evp_rand_st** %meth, align 8, !tbaa !4
  %gettable_ctx_params4 = getelementptr inbounds %struct.evp_rand_st, %struct.evp_rand_st* %2, i64 0, i32 18
  %3 = load %struct.ossl_param_st* (i8*, i8*)*, %struct.ossl_param_st* (i8*, i8*)** %gettable_ctx_params4, align 8, !tbaa !32
  %algctx = getelementptr inbounds %struct.evp_rand_ctx_st, %struct.evp_rand_ctx_st* %ctx, i64 0, i32 1
  %4 = load i8*, i8** %algctx, align 8, !tbaa !12
  %call5 = tail call %struct.ossl_param_st* %3(i8* noundef %4, i8* noundef %call2) #7
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi %struct.ossl_param_st* [ %call5, %if.end ], [ null, %entry ]
  ret %struct.ossl_param_st* %retval.0
}

; Function Attrs: noinline nounwind uwtable
define %struct.ossl_param_st* @EVP_RAND_CTX_settable_params(%struct.evp_rand_ctx_st* nocapture noundef readonly %ctx) local_unnamed_addr #0 {
entry:
  %meth = getelementptr inbounds %struct.evp_rand_ctx_st, %struct.evp_rand_ctx_st* %ctx, i64 0, i32 0
  %0 = load %struct.evp_rand_st*, %struct.evp_rand_st** %meth, align 8, !tbaa !4
  %settable_ctx_params = getelementptr inbounds %struct.evp_rand_st, %struct.evp_rand_st* %0, i64 0, i32 19
  %1 = load %struct.ossl_param_st* (i8*, i8*)*, %struct.ossl_param_st* (i8*, i8*)** %settable_ctx_params, align 8, !tbaa !33
  %cmp = icmp eq %struct.ossl_param_st* (i8*, i8*)* %1, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call = tail call %struct.ossl_provider_st* @EVP_RAND_get0_provider(%struct.evp_rand_st* noundef nonnull %0) #8
  %call2 = tail call i8* @ossl_provider_ctx(%struct.ossl_provider_st* noundef %call) #7
  %2 = load %struct.evp_rand_st*, %struct.evp_rand_st** %meth, align 8, !tbaa !4
  %settable_ctx_params4 = getelementptr inbounds %struct.evp_rand_st, %struct.evp_rand_st* %2, i64 0, i32 19
  %3 = load %struct.ossl_param_st* (i8*, i8*)*, %struct.ossl_param_st* (i8*, i8*)** %settable_ctx_params4, align 8, !tbaa !33
  %algctx = getelementptr inbounds %struct.evp_rand_ctx_st, %struct.evp_rand_ctx_st* %ctx, i64 0, i32 1
  %4 = load i8*, i8** %algctx, align 8, !tbaa !12
  %call5 = tail call %struct.ossl_param_st* %3(i8* noundef %4, i8* noundef %call2) #7
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi %struct.ossl_param_st* [ %call5, %if.end ], [ null, %entry ]
  ret %struct.ossl_param_st* %retval.0
}

; Function Attrs: noinline nounwind uwtable
define void @EVP_RAND_do_all_provided(%struct.ossl_lib_ctx_st* noundef %libctx, void (%struct.evp_rand_st*, i8*)* noundef %fn, i8* noundef %arg) local_unnamed_addr #0 {
entry:
  %0 = bitcast void (%struct.evp_rand_st*, i8*)* %fn to void (i8*, i8*)*
  tail call void @evp_generic_do_all(%struct.ossl_lib_ctx_st* noundef %libctx, i32 noundef 5, void (i8*, i8*)* noundef %0, i8* noundef %arg, i8* (i32, %struct.ossl_algorithm_st*, %struct.ossl_provider_st*)* noundef nonnull @evp_rand_from_algorithm, i32 (i8*)* noundef nonnull @evp_rand_up_ref, void (i8*)* noundef nonnull @evp_rand_free) #7
  ret void
}

declare void @evp_generic_do_all(%struct.ossl_lib_ctx_st* noundef, i32 noundef, void (i8*, i8*)* noundef, i8* noundef, i8* (i32, %struct.ossl_algorithm_st*, %struct.ossl_provider_st*)* noundef, i32 (i8*)* noundef, void (i8*)* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define i32 @EVP_RAND_names_do_all(%struct.evp_rand_st* nocapture noundef readonly %rand, void (i8*, i8*)* noundef %fn, i8* noundef %data) local_unnamed_addr #0 {
entry:
  %prov = getelementptr inbounds %struct.evp_rand_st, %struct.evp_rand_st* %rand, i64 0, i32 0
  %0 = load %struct.ossl_provider_st*, %struct.ossl_provider_st** %prov, align 8, !tbaa !40
  %cmp.not = icmp eq %struct.ossl_provider_st* %0, null
  br i1 %cmp.not, label %return, label %if.then

if.then:                                          ; preds = %entry
  %name_id = getelementptr inbounds %struct.evp_rand_st, %struct.evp_rand_st* %rand, i64 0, i32 1
  %1 = load i32, i32* %name_id, align 8, !tbaa !15
  %call = tail call i32 @evp_names_do_all(%struct.ossl_provider_st* noundef nonnull %0, i32 noundef %1, void (i8*, i8*)* noundef %fn, i8* noundef %data) #7
  br label %return

return:                                           ; preds = %entry, %if.then
  %retval.0 = phi i32 [ %call, %if.then ], [ 1, %entry ]
  ret i32 %retval.0
}

declare i32 @evp_names_do_all(%struct.ossl_provider_st* noundef, i32 noundef, void (i8*, i8*)* noundef, i8* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define i32 @EVP_RAND_instantiate(%struct.evp_rand_ctx_st* nocapture noundef readonly %ctx, i32 noundef %strength, i32 noundef %prediction_resistance, i8* noundef %pstr, i64 noundef %pstr_len, %struct.ossl_param_st* noundef %params) local_unnamed_addr #0 {
entry:
  %call = tail call fastcc i32 @evp_rand_lock(%struct.evp_rand_ctx_st* noundef %ctx) #8
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call1 = tail call fastcc i32 @evp_rand_instantiate_locked(%struct.evp_rand_ctx_st* noundef %ctx, i32 noundef %strength, i32 noundef %prediction_resistance, i8* noundef %pstr, i64 noundef %pstr_len, %struct.ossl_param_st* noundef %params) #8
  tail call fastcc void @evp_rand_unlock(%struct.evp_rand_ctx_st* noundef %ctx) #8
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %call1, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @evp_rand_instantiate_locked(%struct.evp_rand_ctx_st* nocapture noundef readonly %ctx, i32 noundef %strength, i32 noundef %prediction_resistance, i8* noundef %pstr, i64 noundef %pstr_len, %struct.ossl_param_st* noundef %params) unnamed_addr #0 {
entry:
  %meth = getelementptr inbounds %struct.evp_rand_ctx_st, %struct.evp_rand_ctx_st* %ctx, i64 0, i32 0
  %0 = load %struct.evp_rand_st*, %struct.evp_rand_st** %meth, align 8, !tbaa !4
  %instantiate = getelementptr inbounds %struct.evp_rand_st, %struct.evp_rand_st* %0, i64 0, i32 9
  %1 = load i32 (i8*, i32, i32, i8*, i64, %struct.ossl_param_st*)*, i32 (i8*, i32, i32, i8*, i64, %struct.ossl_param_st*)** %instantiate, align 8, !tbaa !24
  %algctx = getelementptr inbounds %struct.evp_rand_ctx_st, %struct.evp_rand_ctx_st* %ctx, i64 0, i32 1
  %2 = load i8*, i8** %algctx, align 8, !tbaa !12
  %call = tail call i32 %1(i8* noundef %2, i32 noundef %strength, i32 noundef %prediction_resistance, i8* noundef %pstr, i64 noundef %pstr_len, %struct.ossl_param_st* noundef %params) #7
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define i32 @EVP_RAND_uninstantiate(%struct.evp_rand_ctx_st* nocapture noundef readonly %ctx) local_unnamed_addr #0 {
entry:
  %call = tail call fastcc i32 @evp_rand_lock(%struct.evp_rand_ctx_st* noundef %ctx) #8
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call1 = tail call fastcc i32 @evp_rand_uninstantiate_locked(%struct.evp_rand_ctx_st* noundef %ctx) #8
  tail call fastcc void @evp_rand_unlock(%struct.evp_rand_ctx_st* noundef %ctx) #8
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %call1, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @evp_rand_uninstantiate_locked(%struct.evp_rand_ctx_st* nocapture noundef readonly %ctx) unnamed_addr #0 {
entry:
  %meth = getelementptr inbounds %struct.evp_rand_ctx_st, %struct.evp_rand_ctx_st* %ctx, i64 0, i32 0
  %0 = load %struct.evp_rand_st*, %struct.evp_rand_st** %meth, align 8, !tbaa !4
  %uninstantiate = getelementptr inbounds %struct.evp_rand_st, %struct.evp_rand_st* %0, i64 0, i32 10
  %1 = load i32 (i8*)*, i32 (i8*)** %uninstantiate, align 8, !tbaa !25
  %algctx = getelementptr inbounds %struct.evp_rand_ctx_st, %struct.evp_rand_ctx_st* %ctx, i64 0, i32 1
  %2 = load i8*, i8** %algctx, align 8, !tbaa !12
  %call = tail call i32 %1(i8* noundef %2) #7
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define i32 @EVP_RAND_generate(%struct.evp_rand_ctx_st* nocapture noundef readonly %ctx, i8* noundef %out, i64 noundef %outlen, i32 noundef %strength, i32 noundef %prediction_resistance, i8* noundef %addin, i64 noundef %addin_len) local_unnamed_addr #0 {
entry:
  %call = tail call fastcc i32 @evp_rand_lock(%struct.evp_rand_ctx_st* noundef %ctx) #8
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call1 = tail call fastcc i32 @evp_rand_generate_locked(%struct.evp_rand_ctx_st* noundef %ctx, i8* noundef %out, i64 noundef %outlen, i32 noundef %strength, i32 noundef %prediction_resistance, i8* noundef %addin, i64 noundef %addin_len) #8
  tail call fastcc void @evp_rand_unlock(%struct.evp_rand_ctx_st* noundef %ctx) #8
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %call1, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @evp_rand_generate_locked(%struct.evp_rand_ctx_st* nocapture noundef readonly %ctx, i8* noundef %out, i64 noundef %outlen, i32 noundef %strength, i32 noundef %prediction_resistance, i8* noundef %addin, i64 noundef %addin_len) unnamed_addr #0 {
entry:
  %max_request = alloca i64, align 8
  %params = alloca [2 x %struct.ossl_param_st], align 16
  %0 = bitcast i64* %max_request to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #9
  store i64 0, i64* %max_request, align 8, !tbaa !46
  %1 = bitcast [2 x %struct.ossl_param_st]* %params to i8*
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %1) #9
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(80) %1, i8 0, i64 80, i1 false)
  %arrayidx = getelementptr inbounds [2 x %struct.ossl_param_st], [2 x %struct.ossl_param_st]* %params, i64 0, i64 0
  %params22 = getelementptr inbounds [2 x %struct.ossl_param_st], [2 x %struct.ossl_param_st]* %params, i64 0, i64 0
  call void @OSSL_PARAM_construct_size_t(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %params22, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i64* noundef nonnull %max_request) #7
  %call = call fastcc i32 @evp_rand_get_ctx_params_locked(%struct.evp_rand_ctx_st* noundef %ctx, %struct.ossl_param_st* noundef nonnull %arrayidx) #8
  %tobool = icmp eq i32 %call, 0
  %2 = load i64, i64* %max_request, align 8
  %cmp = icmp eq i64 %2, 0
  %or.cond = select i1 %tobool, i1 true, i1 %cmp
  br i1 %or.cond, label %cleanup.sink.split, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  %cmp1.not18 = icmp eq i64 %outlen, 0
  br i1 %cmp1.not18, label %cleanup, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %meth = getelementptr inbounds %struct.evp_rand_ctx_st, %struct.evp_rand_ctx_st* %ctx, i64 0, i32 0
  %algctx = getelementptr inbounds %struct.evp_rand_ctx_st, %struct.evp_rand_ctx_st* %ctx, i64 0, i32 1
  %cmp224 = icmp ult i64 %2, %outlen
  %cond25 = select i1 %cmp224, i64 %2, i64 %outlen
  %3 = load %struct.evp_rand_st*, %struct.evp_rand_st** %meth, align 8, !tbaa !4
  %generate26 = getelementptr inbounds %struct.evp_rand_st, %struct.evp_rand_st* %3, i64 0, i32 11
  %4 = load i32 (i8*, i8*, i64, i32, i32, i8*, i64)*, i32 (i8*, i8*, i64, i32, i32, i8*, i64)** %generate26, align 8, !tbaa !26
  %5 = load i8*, i8** %algctx, align 8, !tbaa !12
  %call327 = call i32 %4(i8* noundef %5, i8* noundef %out, i64 noundef %cond25, i32 noundef %strength, i32 noundef %prediction_resistance, i8* noundef %addin, i64 noundef %addin_len) #7
  %tobool4.not28 = icmp eq i32 %call327, 0
  br i1 %tobool4.not28, label %cleanup.sink.split, label %if.end6

if.end6:                                          ; preds = %for.body.lr.ph, %if.end6.for.body_crit_edge
  %cond31 = phi i64 [ %cond, %if.end6.for.body_crit_edge ], [ %cond25, %for.body.lr.ph ]
  %outlen.addr.02030 = phi i64 [ %sub, %if.end6.for.body_crit_edge ], [ %outlen, %for.body.lr.ph ]
  %out.addr.02129 = phi i8* [ %add.ptr, %if.end6.for.body_crit_edge ], [ %out, %for.body.lr.ph ]
  %sub = sub i64 %outlen.addr.02030, %cond31
  %cmp1.not = icmp eq i64 %sub, 0
  br i1 %cmp1.not, label %cleanup, label %if.end6.for.body_crit_edge, !llvm.loop !48

if.end6.for.body_crit_edge:                       ; preds = %if.end6
  %add.ptr = getelementptr inbounds i8, i8* %out.addr.02129, i64 %cond31
  %.pre = load i64, i64* %max_request, align 8, !tbaa !46
  %cmp2 = icmp ugt i64 %sub, %.pre
  %cond = select i1 %cmp2, i64 %.pre, i64 %sub
  %6 = load %struct.evp_rand_st*, %struct.evp_rand_st** %meth, align 8, !tbaa !4
  %generate = getelementptr inbounds %struct.evp_rand_st, %struct.evp_rand_st* %6, i64 0, i32 11
  %7 = load i32 (i8*, i8*, i64, i32, i32, i8*, i64)*, i32 (i8*, i8*, i64, i32, i32, i8*, i64)** %generate, align 8, !tbaa !26
  %8 = load i8*, i8** %algctx, align 8, !tbaa !12
  %call3 = call i32 %7(i8* noundef %8, i8* noundef %add.ptr, i64 noundef %cond, i32 noundef %strength, i32 noundef 0, i8* noundef %addin, i64 noundef %addin_len) #7
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %cleanup.sink.split, label %if.end6

cleanup.sink.split:                               ; preds = %if.end6.for.body_crit_edge, %for.body.lr.ph, %entry
  %.sink23 = phi i32 [ 553, %entry ], [ 560, %for.body.lr.ph ], [ 560, %if.end6.for.body_crit_edge ]
  %.sink = phi i32 [ 215, %entry ], [ 214, %for.body.lr.ph ], [ 214, %if.end6.for.body_crit_edge ]
  call void @ERR_new() #7
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef %.sink23, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.evp_rand_generate_locked, i64 0, i64 0)) #7
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 6, i32 noundef %.sink, i8* noundef null) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %cleanup.sink.split, %for.cond.preheader
  %retval.0 = phi i32 [ 1, %for.cond.preheader ], [ 0, %cleanup.sink.split ], [ 1, %if.end6 ]
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %1) #9
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #9
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @EVP_RAND_reseed(%struct.evp_rand_ctx_st* nocapture noundef readonly %ctx, i32 noundef %prediction_resistance, i8* noundef %ent, i64 noundef %ent_len, i8* noundef %addin, i64 noundef %addin_len) local_unnamed_addr #0 {
entry:
  %call = tail call fastcc i32 @evp_rand_lock(%struct.evp_rand_ctx_st* noundef %ctx) #8
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call1 = tail call fastcc i32 @evp_rand_reseed_locked(%struct.evp_rand_ctx_st* noundef %ctx, i32 noundef %prediction_resistance, i8* noundef %ent, i64 noundef %ent_len, i8* noundef %addin, i64 noundef %addin_len) #8
  tail call fastcc void @evp_rand_unlock(%struct.evp_rand_ctx_st* noundef %ctx) #8
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %call1, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @evp_rand_reseed_locked(%struct.evp_rand_ctx_st* nocapture noundef readonly %ctx, i32 noundef %prediction_resistance, i8* noundef %ent, i64 noundef %ent_len, i8* noundef %addin, i64 noundef %addin_len) unnamed_addr #0 {
entry:
  %meth = getelementptr inbounds %struct.evp_rand_ctx_st, %struct.evp_rand_ctx_st* %ctx, i64 0, i32 0
  %0 = load %struct.evp_rand_st*, %struct.evp_rand_st** %meth, align 8, !tbaa !4
  %reseed = getelementptr inbounds %struct.evp_rand_st, %struct.evp_rand_st* %0, i64 0, i32 12
  %1 = load i32 (i8*, i32, i8*, i64, i8*, i64)*, i32 (i8*, i32, i8*, i64, i8*, i64)** %reseed, align 8, !tbaa !27
  %cmp.not = icmp eq i32 (i8*, i32, i8*, i64, i8*, i64)* %1, null
  br i1 %cmp.not, label %return, label %if.then

if.then:                                          ; preds = %entry
  %algctx = getelementptr inbounds %struct.evp_rand_ctx_st, %struct.evp_rand_ctx_st* %ctx, i64 0, i32 1
  %2 = load i8*, i8** %algctx, align 8, !tbaa !12
  %call = tail call i32 %1(i8* noundef %2, i32 noundef %prediction_resistance, i8* noundef %ent, i64 noundef %ent_len, i8* noundef %addin, i64 noundef %addin_len) #7
  br label %return

return:                                           ; preds = %entry, %if.then
  %retval.0 = phi i32 [ %call, %if.then ], [ 1, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @EVP_RAND_get_strength(%struct.evp_rand_ctx_st* nocapture noundef readonly %ctx) local_unnamed_addr #0 {
entry:
  %call = tail call fastcc i32 @evp_rand_lock(%struct.evp_rand_ctx_st* noundef %ctx) #8
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call1 = tail call fastcc i32 @evp_rand_strength_locked(%struct.evp_rand_ctx_st* noundef %ctx) #8
  tail call fastcc void @evp_rand_unlock(%struct.evp_rand_ctx_st* noundef %ctx) #8
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %call1, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @evp_rand_strength_locked(%struct.evp_rand_ctx_st* nocapture noundef readonly %ctx) unnamed_addr #0 {
entry:
  %params = alloca [2 x %struct.ossl_param_st], align 16
  %strength = alloca i32, align 4
  %0 = bitcast [2 x %struct.ossl_param_st]* %params to i8*
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %0) #9
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(80) %0, i8 0, i64 80, i1 false)
  %1 = bitcast i32* %strength to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %1) #9
  store i32 0, i32* %strength, align 4, !tbaa !41
  %arrayidx = getelementptr inbounds [2 x %struct.ossl_param_st], [2 x %struct.ossl_param_st]* %params, i64 0, i64 0
  %params2 = getelementptr inbounds [2 x %struct.ossl_param_st], [2 x %struct.ossl_param_st]* %params, i64 0, i64 0
  call void @OSSL_PARAM_construct_uint(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %params2, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i32* noundef nonnull %strength) #7
  %call = call fastcc i32 @evp_rand_get_ctx_params_locked(%struct.evp_rand_ctx_st* noundef %ctx, %struct.ossl_param_st* noundef nonnull %arrayidx) #8
  %tobool.not = icmp eq i32 %call, 0
  %2 = load i32, i32* %strength, align 4
  %retval.0 = select i1 %tobool.not, i32 0, i32 %2
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %1) #9
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %0) #9
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @EVP_RAND_nonce(%struct.evp_rand_ctx_st* nocapture noundef readonly %ctx, i8* noundef %out, i64 noundef %outlen) local_unnamed_addr #0 {
entry:
  %call = tail call fastcc i32 @evp_rand_lock(%struct.evp_rand_ctx_st* noundef %ctx) #8
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call1 = tail call fastcc i32 @evp_rand_nonce_locked(%struct.evp_rand_ctx_st* noundef %ctx, i8* noundef %out, i64 noundef %outlen) #8
  tail call fastcc void @evp_rand_unlock(%struct.evp_rand_ctx_st* noundef %ctx) #8
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %call1, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @evp_rand_nonce_locked(%struct.evp_rand_ctx_st* nocapture noundef readonly %ctx, i8* noundef %out, i64 noundef %outlen) unnamed_addr #0 {
entry:
  %call = tail call fastcc i32 @evp_rand_strength_locked(%struct.evp_rand_ctx_st* noundef %ctx) #8
  %meth = getelementptr inbounds %struct.evp_rand_ctx_st, %struct.evp_rand_ctx_st* %ctx, i64 0, i32 0
  %0 = load %struct.evp_rand_st*, %struct.evp_rand_st** %meth, align 8, !tbaa !4
  %nonce = getelementptr inbounds %struct.evp_rand_st, %struct.evp_rand_st* %0, i64 0, i32 13
  %1 = load i64 (i8*, i8*, i32, i64, i64)*, i64 (i8*, i8*, i32, i64, i64)** %nonce, align 8, !tbaa !28
  %cmp = icmp eq i64 (i8*, i8*, i32, i64, i64)* %1, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %algctx = getelementptr inbounds %struct.evp_rand_ctx_st, %struct.evp_rand_ctx_st* %ctx, i64 0, i32 1
  %2 = load i8*, i8** %algctx, align 8, !tbaa !12
  %call3 = tail call i64 %1(i8* noundef %2, i8* noundef %out, i32 noundef %call, i64 noundef %outlen, i64 noundef %outlen) #7
  %tobool.not = icmp eq i64 %call3, 0
  br i1 %tobool.not, label %if.end5, label %cleanup

if.end5:                                          ; preds = %if.end
  %call6 = tail call fastcc i32 @evp_rand_generate_locked(%struct.evp_rand_ctx_st* noundef nonnull %ctx, i8* noundef %out, i64 noundef %outlen, i32 noundef %call, i32 noundef 0, i8* noundef null, i64 noundef 0) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry, %if.end5
  %retval.0 = phi i32 [ %call6, %if.end5 ], [ 0, %entry ], [ 1, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @EVP_RAND_get_state(%struct.evp_rand_ctx_st* nocapture noundef readonly %ctx) local_unnamed_addr #0 {
entry:
  %params = alloca [2 x %struct.ossl_param_st], align 16
  %state = alloca i32, align 4
  %0 = bitcast [2 x %struct.ossl_param_st]* %params to i8*
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %0) #9
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(80) %0, i8 0, i64 80, i1 false)
  %1 = bitcast i32* %state to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %1) #9
  %arrayidx = getelementptr inbounds [2 x %struct.ossl_param_st], [2 x %struct.ossl_param_st]* %params, i64 0, i64 0
  %params1 = getelementptr inbounds [2 x %struct.ossl_param_st], [2 x %struct.ossl_param_st]* %params, i64 0, i64 0
  call void @OSSL_PARAM_construct_int(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %params1, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32* noundef nonnull %state) #7
  %call = call i32 @EVP_RAND_CTX_get_params(%struct.evp_rand_ctx_st* noundef %ctx, %struct.ossl_param_st* noundef nonnull %arrayidx) #8
  %tobool.not = icmp eq i32 %call, 0
  %.pre = load i32, i32* %state, align 4
  %2 = select i1 %tobool.not, i32 2, i32 %.pre
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %1) #9
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %0) #9
  ret i32 %2
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #6

declare void @OSSL_PARAM_construct_int(%struct.ossl_param_st* sret(%struct.ossl_param_st) align 8, i8* noundef, i32* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define i32 @EVP_RAND_verify_zeroization(%struct.evp_rand_ctx_st* nocapture noundef readonly %ctx) local_unnamed_addr #0 {
entry:
  %call = tail call fastcc i32 @evp_rand_lock(%struct.evp_rand_ctx_st* noundef %ctx) #8
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call1 = tail call fastcc i32 @evp_rand_verify_zeroization_locked(%struct.evp_rand_ctx_st* noundef %ctx) #8
  tail call fastcc void @evp_rand_unlock(%struct.evp_rand_ctx_st* noundef %ctx) #8
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %call1, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @evp_rand_verify_zeroization_locked(%struct.evp_rand_ctx_st* nocapture noundef readonly %ctx) unnamed_addr #0 {
entry:
  %meth = getelementptr inbounds %struct.evp_rand_ctx_st, %struct.evp_rand_ctx_st* %ctx, i64 0, i32 0
  %0 = load %struct.evp_rand_st*, %struct.evp_rand_st** %meth, align 8, !tbaa !4
  %verify_zeroization = getelementptr inbounds %struct.evp_rand_st, %struct.evp_rand_st* %0, i64 0, i32 23
  %1 = load i32 (i8*)*, i32 (i8*)** %verify_zeroization, align 8, !tbaa !37
  %cmp.not = icmp eq i32 (i8*)* %1, null
  br i1 %cmp.not, label %return, label %if.then

if.then:                                          ; preds = %entry
  %algctx = getelementptr inbounds %struct.evp_rand_ctx_st, %struct.evp_rand_ctx_st* %ctx, i64 0, i32 1
  %2 = load i8*, i8** %algctx, align 8, !tbaa !12
  %call = tail call i32 %1(i8* noundef %2) #7
  br label %return

return:                                           ; preds = %entry, %if.then
  %retval.0 = phi i32 [ %call, %if.then ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i8* @evp_rand_new() unnamed_addr #0 {
entry:
  %call = tail call i8* @CRYPTO_zalloc(i64 noundef 192, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 80) #7
  %cmp = icmp eq i8* %call, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %call1 = tail call i8* @CRYPTO_THREAD_lock_new() #7
  %refcnt_lock = getelementptr inbounds i8, i8* %call, i64 40
  %0 = bitcast i8* %refcnt_lock to i8**
  store i8* %call1, i8** %0, align 8, !tbaa !42
  %cmp2 = icmp eq i8* %call1, null
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  tail call void @CRYPTO_free(i8* noundef %call, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 84) #7
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %refcnt = getelementptr inbounds i8, i8* %call, i64 32
  %1 = bitcast i8* %refcnt to i32*
  store atomic i32 1, i32* %1 seq_cst, align 4, !tbaa !49
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i8* [ null, %if.then ], [ %call, %if.end ]
  ret i8* %retval.0
}

declare i8* @ossl_algorithm_get1_first_name(%struct.ossl_algorithm_st* noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal fastcc i8* (i8*, i8*, %struct.ossl_dispatch_st*)* @OSSL_FUNC_rand_newctx(%struct.ossl_dispatch_st* nocapture noundef readonly %opf) unnamed_addr #3 {
entry:
  %function = getelementptr inbounds %struct.ossl_dispatch_st, %struct.ossl_dispatch_st* %opf, i64 0, i32 1
  %0 = bitcast void ()** %function to i8* (i8*, i8*, %struct.ossl_dispatch_st*)**
  %1 = load i8* (i8*, i8*, %struct.ossl_dispatch_st*)*, i8* (i8*, i8*, %struct.ossl_dispatch_st*)** %0, align 8, !tbaa !50
  ret i8* (i8*, i8*, %struct.ossl_dispatch_st*)* %1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal fastcc void (i8*)* @OSSL_FUNC_rand_freectx(%struct.ossl_dispatch_st* nocapture noundef readonly %opf) unnamed_addr #3 {
entry:
  %function = getelementptr inbounds %struct.ossl_dispatch_st, %struct.ossl_dispatch_st* %opf, i64 0, i32 1
  %0 = bitcast void ()** %function to void (i8*)**
  %1 = load void (i8*)*, void (i8*)** %0, align 8, !tbaa !50
  ret void (i8*)* %1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal fastcc i32 (i8*, i32, i32, i8*, i64, %struct.ossl_param_st*)* @OSSL_FUNC_rand_instantiate(%struct.ossl_dispatch_st* nocapture noundef readonly %opf) unnamed_addr #3 {
entry:
  %function = getelementptr inbounds %struct.ossl_dispatch_st, %struct.ossl_dispatch_st* %opf, i64 0, i32 1
  %0 = bitcast void ()** %function to i32 (i8*, i32, i32, i8*, i64, %struct.ossl_param_st*)**
  %1 = load i32 (i8*, i32, i32, i8*, i64, %struct.ossl_param_st*)*, i32 (i8*, i32, i32, i8*, i64, %struct.ossl_param_st*)** %0, align 8, !tbaa !50
  ret i32 (i8*, i32, i32, i8*, i64, %struct.ossl_param_st*)* %1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal fastcc i32 (i8*)* @OSSL_FUNC_rand_uninstantiate(%struct.ossl_dispatch_st* nocapture noundef readonly %opf) unnamed_addr #3 {
entry:
  %function = getelementptr inbounds %struct.ossl_dispatch_st, %struct.ossl_dispatch_st* %opf, i64 0, i32 1
  %0 = bitcast void ()** %function to i32 (i8*)**
  %1 = load i32 (i8*)*, i32 (i8*)** %0, align 8, !tbaa !50
  ret i32 (i8*)* %1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal fastcc i32 (i8*, i8*, i64, i32, i32, i8*, i64)* @OSSL_FUNC_rand_generate(%struct.ossl_dispatch_st* nocapture noundef readonly %opf) unnamed_addr #3 {
entry:
  %function = getelementptr inbounds %struct.ossl_dispatch_st, %struct.ossl_dispatch_st* %opf, i64 0, i32 1
  %0 = bitcast void ()** %function to i32 (i8*, i8*, i64, i32, i32, i8*, i64)**
  %1 = load i32 (i8*, i8*, i64, i32, i32, i8*, i64)*, i32 (i8*, i8*, i64, i32, i32, i8*, i64)** %0, align 8, !tbaa !50
  ret i32 (i8*, i8*, i64, i32, i32, i8*, i64)* %1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal fastcc i32 (i8*, i32, i8*, i64, i8*, i64)* @OSSL_FUNC_rand_reseed(%struct.ossl_dispatch_st* nocapture noundef readonly %opf) unnamed_addr #3 {
entry:
  %function = getelementptr inbounds %struct.ossl_dispatch_st, %struct.ossl_dispatch_st* %opf, i64 0, i32 1
  %0 = bitcast void ()** %function to i32 (i8*, i32, i8*, i64, i8*, i64)**
  %1 = load i32 (i8*, i32, i8*, i64, i8*, i64)*, i32 (i8*, i32, i8*, i64, i8*, i64)** %0, align 8, !tbaa !50
  ret i32 (i8*, i32, i8*, i64, i8*, i64)* %1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal fastcc i64 (i8*, i8*, i32, i64, i64)* @OSSL_FUNC_rand_nonce(%struct.ossl_dispatch_st* nocapture noundef readonly %opf) unnamed_addr #3 {
entry:
  %function = getelementptr inbounds %struct.ossl_dispatch_st, %struct.ossl_dispatch_st* %opf, i64 0, i32 1
  %0 = bitcast void ()** %function to i64 (i8*, i8*, i32, i64, i64)**
  %1 = load i64 (i8*, i8*, i32, i64, i64)*, i64 (i8*, i8*, i32, i64, i64)** %0, align 8, !tbaa !50
  ret i64 (i8*, i8*, i32, i64, i64)* %1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal fastcc i32 (i8*)* @OSSL_FUNC_rand_enable_locking(%struct.ossl_dispatch_st* nocapture noundef readonly %opf) unnamed_addr #3 {
entry:
  %function = getelementptr inbounds %struct.ossl_dispatch_st, %struct.ossl_dispatch_st* %opf, i64 0, i32 1
  %0 = bitcast void ()** %function to i32 (i8*)**
  %1 = load i32 (i8*)*, i32 (i8*)** %0, align 8, !tbaa !50
  ret i32 (i8*)* %1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal fastcc i32 (i8*)* @OSSL_FUNC_rand_lock(%struct.ossl_dispatch_st* nocapture noundef readonly %opf) unnamed_addr #3 {
entry:
  %function = getelementptr inbounds %struct.ossl_dispatch_st, %struct.ossl_dispatch_st* %opf, i64 0, i32 1
  %0 = bitcast void ()** %function to i32 (i8*)**
  %1 = load i32 (i8*)*, i32 (i8*)** %0, align 8, !tbaa !50
  ret i32 (i8*)* %1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal fastcc void (i8*)* @OSSL_FUNC_rand_unlock(%struct.ossl_dispatch_st* nocapture noundef readonly %opf) unnamed_addr #3 {
entry:
  %function = getelementptr inbounds %struct.ossl_dispatch_st, %struct.ossl_dispatch_st* %opf, i64 0, i32 1
  %0 = bitcast void ()** %function to void (i8*)**
  %1 = load void (i8*)*, void (i8*)** %0, align 8, !tbaa !50
  ret void (i8*)* %1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal fastcc %struct.ossl_param_st* (i8*)* @OSSL_FUNC_rand_gettable_params(%struct.ossl_dispatch_st* nocapture noundef readonly %opf) unnamed_addr #3 {
entry:
  %function = getelementptr inbounds %struct.ossl_dispatch_st, %struct.ossl_dispatch_st* %opf, i64 0, i32 1
  %0 = bitcast void ()** %function to %struct.ossl_param_st* (i8*)**
  %1 = load %struct.ossl_param_st* (i8*)*, %struct.ossl_param_st* (i8*)** %0, align 8, !tbaa !50
  ret %struct.ossl_param_st* (i8*)* %1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal fastcc %struct.ossl_param_st* (i8*, i8*)* @OSSL_FUNC_rand_gettable_ctx_params(%struct.ossl_dispatch_st* nocapture noundef readonly %opf) unnamed_addr #3 {
entry:
  %function = getelementptr inbounds %struct.ossl_dispatch_st, %struct.ossl_dispatch_st* %opf, i64 0, i32 1
  %0 = bitcast void ()** %function to %struct.ossl_param_st* (i8*, i8*)**
  %1 = load %struct.ossl_param_st* (i8*, i8*)*, %struct.ossl_param_st* (i8*, i8*)** %0, align 8, !tbaa !50
  ret %struct.ossl_param_st* (i8*, i8*)* %1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal fastcc %struct.ossl_param_st* (i8*, i8*)* @OSSL_FUNC_rand_settable_ctx_params(%struct.ossl_dispatch_st* nocapture noundef readonly %opf) unnamed_addr #3 {
entry:
  %function = getelementptr inbounds %struct.ossl_dispatch_st, %struct.ossl_dispatch_st* %opf, i64 0, i32 1
  %0 = bitcast void ()** %function to %struct.ossl_param_st* (i8*, i8*)**
  %1 = load %struct.ossl_param_st* (i8*, i8*)*, %struct.ossl_param_st* (i8*, i8*)** %0, align 8, !tbaa !50
  ret %struct.ossl_param_st* (i8*, i8*)* %1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal fastcc i32 (%struct.ossl_param_st*)* @OSSL_FUNC_rand_get_params(%struct.ossl_dispatch_st* nocapture noundef readonly %opf) unnamed_addr #3 {
entry:
  %function = getelementptr inbounds %struct.ossl_dispatch_st, %struct.ossl_dispatch_st* %opf, i64 0, i32 1
  %0 = bitcast void ()** %function to i32 (%struct.ossl_param_st*)**
  %1 = load i32 (%struct.ossl_param_st*)*, i32 (%struct.ossl_param_st*)** %0, align 8, !tbaa !50
  ret i32 (%struct.ossl_param_st*)* %1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal fastcc i32 (i8*, %struct.ossl_param_st*)* @OSSL_FUNC_rand_get_ctx_params(%struct.ossl_dispatch_st* nocapture noundef readonly %opf) unnamed_addr #3 {
entry:
  %function = getelementptr inbounds %struct.ossl_dispatch_st, %struct.ossl_dispatch_st* %opf, i64 0, i32 1
  %0 = bitcast void ()** %function to i32 (i8*, %struct.ossl_param_st*)**
  %1 = load i32 (i8*, %struct.ossl_param_st*)*, i32 (i8*, %struct.ossl_param_st*)** %0, align 8, !tbaa !50
  ret i32 (i8*, %struct.ossl_param_st*)* %1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal fastcc i32 (i8*, %struct.ossl_param_st*)* @OSSL_FUNC_rand_set_ctx_params(%struct.ossl_dispatch_st* nocapture noundef readonly %opf) unnamed_addr #3 {
entry:
  %function = getelementptr inbounds %struct.ossl_dispatch_st, %struct.ossl_dispatch_st* %opf, i64 0, i32 1
  %0 = bitcast void ()** %function to i32 (i8*, %struct.ossl_param_st*)**
  %1 = load i32 (i8*, %struct.ossl_param_st*)*, i32 (i8*, %struct.ossl_param_st*)** %0, align 8, !tbaa !50
  ret i32 (i8*, %struct.ossl_param_st*)* %1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal fastcc i32 (i8*)* @OSSL_FUNC_rand_verify_zeroization(%struct.ossl_dispatch_st* nocapture noundef readonly %opf) unnamed_addr #3 {
entry:
  %function = getelementptr inbounds %struct.ossl_dispatch_st, %struct.ossl_dispatch_st* %opf, i64 0, i32 1
  %0 = bitcast void ()** %function to i32 (i8*)**
  %1 = load i32 (i8*)*, i32 (i8*)** %0, align 8, !tbaa !50
  ret i32 (i8*)* %1
}

declare i32 @ossl_provider_up_ref(%struct.ossl_provider_st* noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nounwind uwtable willreturn
define internal fastcc void @CRYPTO_UP_REF(i32* nocapture noundef %val, i32* nocapture noundef writeonly %ret) unnamed_addr #5 {
entry:
  %0 = atomicrmw add i32* %val, i32 1 monotonic, align 4
  %add = add nsw i32 %0, 1
  store i32 %add, i32* %ret, align 4, !tbaa !41
  ret void
}

declare void @ossl_provider_free(%struct.ossl_provider_st* noundef) local_unnamed_addr #1

declare void @OSSL_PARAM_construct_size_t(%struct.ossl_param_st* sret(%struct.ossl_param_st) align 8, i8* noundef, i64* noundef) local_unnamed_addr #1

declare void @OSSL_PARAM_construct_uint(%struct.ossl_param_st* sret(%struct.ossl_param_st) align 8, i8* noundef, i32* noundef) local_unnamed_addr #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree noinline nounwind uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #5 = { mustprogress nofree noinline norecurse nounwind uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #7 = { nobuiltin nounwind "no-builtins" }
attributes #8 = { nobuiltin "no-builtins" }
attributes #9 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{!"clang version 14.0.0"}
!4 = !{!5, !6, i64 0}
!5 = !{!"evp_rand_ctx_st", !6, i64 0, !6, i64 8, !6, i64 16, !7, i64 24, !6, i64 32}
!6 = !{!"any pointer", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !6, i64 112}
!10 = !{!"evp_rand_st", !6, i64 0, !11, i64 8, !6, i64 16, !6, i64 24, !7, i64 32, !6, i64 40, !6, i64 48, !6, i64 56, !6, i64 64, !6, i64 72, !6, i64 80, !6, i64 88, !6, i64 96, !6, i64 104, !6, i64 112, !6, i64 120, !6, i64 128, !6, i64 136, !6, i64 144, !6, i64 152, !6, i64 160, !6, i64 168, !6, i64 176, !6, i64 184}
!11 = !{!"int", !7, i64 0}
!12 = !{!5, !6, i64 8}
!13 = !{!14, !6, i64 16}
!14 = !{!"ossl_algorithm_st", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24}
!15 = !{!10, !11, i64 8}
!16 = !{!10, !6, i64 16}
!17 = !{!14, !6, i64 24}
!18 = !{!10, !6, i64 24}
!19 = !{!10, !6, i64 48}
!20 = !{!21, !11, i64 0}
!21 = !{!"ossl_dispatch_st", !11, i64 0, !6, i64 8}
!22 = !{!10, !6, i64 56}
!23 = !{!10, !6, i64 64}
!24 = !{!10, !6, i64 72}
!25 = !{!10, !6, i64 80}
!26 = !{!10, !6, i64 88}
!27 = !{!10, !6, i64 96}
!28 = !{!10, !6, i64 104}
!29 = !{!10, !6, i64 120}
!30 = !{!10, !6, i64 128}
!31 = !{!10, !6, i64 136}
!32 = !{!10, !6, i64 144}
!33 = !{!10, !6, i64 152}
!34 = !{!10, !6, i64 160}
!35 = !{!10, !6, i64 168}
!36 = !{!10, !6, i64 176}
!37 = !{!10, !6, i64 184}
!38 = distinct !{!38, !39}
!39 = !{!"llvm.loop.mustprogress"}
!40 = !{!10, !6, i64 0}
!41 = !{!11, !11, i64 0}
!42 = !{!10, !6, i64 40}
!43 = !{!5, !6, i64 32}
!44 = !{!5, !6, i64 16}
!45 = !{!5, !7, i64 24}
!46 = !{!47, !47, i64 0}
!47 = !{!"long", !7, i64 0}
!48 = distinct !{!48, !39}
!49 = !{!10, !7, i64 32}
!50 = !{!21, !6, i64 8}
