; ModuleID = 'crypto/provider_child.c'
source_filename = "crypto/provider_child.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ossl_lib_ctx_method = type { i32, i8* (%struct.ossl_lib_ctx_st*)*, void (i8*)* }
%struct.ossl_lib_ctx_st = type opaque
%struct.ossl_core_handle_st = type opaque
%struct.ossl_dispatch_st = type { i32, void ()* }
%struct.openssl_core_ctx_st = type opaque
%struct.ossl_provider_st = type opaque

@child_prov_ossl_ctx_method = internal constant %struct.ossl_lib_ctx_method { i32 -1, i8* (%struct.ossl_lib_ctx_st*)* @child_prov_ossl_ctx_new, void (i8*)* @child_prov_ossl_ctx_free }, align 8
@.str = private unnamed_addr constant [24 x i8] c"crypto/provider_child.c\00", align 1

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_provider_init_as_child(%struct.ossl_lib_ctx_st* noundef %ctx, %struct.ossl_core_handle_st* noundef %handle, %struct.ossl_dispatch_st* nocapture noundef readonly %in) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.ossl_lib_ctx_st* %ctx, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call = tail call i8* @ossl_lib_ctx_get_data(%struct.ossl_lib_ctx_st* noundef nonnull %ctx, i32 noundef 18, %struct.ossl_lib_ctx_method* noundef nonnull @child_prov_ossl_ctx_method) #3
  %cmp1 = icmp eq i8* %call, null
  br i1 %cmp1, label %cleanup, label %if.end3

if.end3:                                          ; preds = %if.end
  %handle4 = bitcast i8* %call to %struct.ossl_core_handle_st**
  store %struct.ossl_core_handle_st* %handle, %struct.ossl_core_handle_st** %handle4, align 8, !tbaa !4
  %c_prov_free = getelementptr inbounds i8, i8* %call, i64 88
  %0 = bitcast i8* %c_prov_free to i32 (%struct.ossl_core_handle_st*, i32)**
  %c_prov_up_ref = getelementptr inbounds i8, i8* %call, i64 80
  %1 = bitcast i8* %c_prov_up_ref to i32 (%struct.ossl_core_handle_st*, i32)**
  %c_prov_get0_dispatch = getelementptr inbounds i8, i8* %call, i64 72
  %2 = bitcast i8* %c_prov_get0_dispatch to %struct.ossl_dispatch_st* (%struct.ossl_core_handle_st*)**
  %c_prov_get0_provider_ctx = getelementptr inbounds i8, i8* %call, i64 64
  %3 = bitcast i8* %c_prov_get0_provider_ctx to i8* (%struct.ossl_core_handle_st*)**
  %c_prov_name = getelementptr inbounds i8, i8* %call, i64 56
  %4 = bitcast i8* %c_prov_name to i8* (%struct.ossl_core_handle_st*)**
  %c_provider_deregister_child_cb = getelementptr inbounds i8, i8* %call, i64 48
  %5 = bitcast i8* %c_provider_deregister_child_cb to void (%struct.ossl_core_handle_st*)**
  %c_provider_register_child_cb = getelementptr inbounds i8, i8* %call, i64 40
  %6 = bitcast i8* %c_provider_register_child_cb to i32 (%struct.ossl_core_handle_st*, i32 (%struct.ossl_core_handle_st*, i8*)*, i32 (%struct.ossl_core_handle_st*, i8*)*, i32 (i8*, i8*)*, i8*)**
  %c_get_libctx = getelementptr inbounds i8, i8* %call, i64 32
  %7 = bitcast i8* %c_get_libctx to %struct.openssl_core_ctx_st* (%struct.ossl_core_handle_st*)**
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end3
  %in.addr.0 = phi %struct.ossl_dispatch_st* [ %in, %if.end3 ], [ %incdec.ptr, %for.inc ]
  %function_id = getelementptr inbounds %struct.ossl_dispatch_st, %struct.ossl_dispatch_st* %in.addr.0, i64 0, i32 0
  %8 = load i32, i32* %function_id, align 8, !tbaa !10
  switch i32 %8, label %for.inc [
    i32 0, label %for.end
    i32 4, label %sw.bb
    i32 105, label %sw.bb8
    i32 106, label %sw.bb10
    i32 107, label %sw.bb12
    i32 108, label %sw.bb14
    i32 109, label %sw.bb16
    i32 110, label %sw.bb18
    i32 111, label %sw.bb20
  ]

sw.bb:                                            ; preds = %for.cond
  %call7 = tail call fastcc %struct.openssl_core_ctx_st* (%struct.ossl_core_handle_st*)* @OSSL_FUNC_core_get_libctx(%struct.ossl_dispatch_st* noundef nonnull %in.addr.0) #4
  store %struct.openssl_core_ctx_st* (%struct.ossl_core_handle_st*)* %call7, %struct.openssl_core_ctx_st* (%struct.ossl_core_handle_st*)** %7, align 8, !tbaa !12
  br label %for.inc

sw.bb8:                                           ; preds = %for.cond
  %call9 = tail call fastcc i32 (%struct.ossl_core_handle_st*, i32 (%struct.ossl_core_handle_st*, i8*)*, i32 (%struct.ossl_core_handle_st*, i8*)*, i32 (i8*, i8*)*, i8*)* @OSSL_FUNC_provider_register_child_cb(%struct.ossl_dispatch_st* noundef nonnull %in.addr.0) #4
  store i32 (%struct.ossl_core_handle_st*, i32 (%struct.ossl_core_handle_st*, i8*)*, i32 (%struct.ossl_core_handle_st*, i8*)*, i32 (i8*, i8*)*, i8*)* %call9, i32 (%struct.ossl_core_handle_st*, i32 (%struct.ossl_core_handle_st*, i8*)*, i32 (%struct.ossl_core_handle_st*, i8*)*, i32 (i8*, i8*)*, i8*)** %6, align 8, !tbaa !13
  br label %for.inc

sw.bb10:                                          ; preds = %for.cond
  %call11 = tail call fastcc void (%struct.ossl_core_handle_st*)* @OSSL_FUNC_provider_deregister_child_cb(%struct.ossl_dispatch_st* noundef nonnull %in.addr.0) #4
  store void (%struct.ossl_core_handle_st*)* %call11, void (%struct.ossl_core_handle_st*)** %5, align 8, !tbaa !14
  br label %for.inc

sw.bb12:                                          ; preds = %for.cond
  %call13 = tail call fastcc i8* (%struct.ossl_core_handle_st*)* @OSSL_FUNC_provider_name(%struct.ossl_dispatch_st* noundef nonnull %in.addr.0) #4
  store i8* (%struct.ossl_core_handle_st*)* %call13, i8* (%struct.ossl_core_handle_st*)** %4, align 8, !tbaa !15
  br label %for.inc

sw.bb14:                                          ; preds = %for.cond
  %call15 = tail call fastcc i8* (%struct.ossl_core_handle_st*)* @OSSL_FUNC_provider_get0_provider_ctx(%struct.ossl_dispatch_st* noundef nonnull %in.addr.0) #4
  store i8* (%struct.ossl_core_handle_st*)* %call15, i8* (%struct.ossl_core_handle_st*)** %3, align 8, !tbaa !16
  br label %for.inc

sw.bb16:                                          ; preds = %for.cond
  %call17 = tail call fastcc %struct.ossl_dispatch_st* (%struct.ossl_core_handle_st*)* @OSSL_FUNC_provider_get0_dispatch(%struct.ossl_dispatch_st* noundef nonnull %in.addr.0) #4
  store %struct.ossl_dispatch_st* (%struct.ossl_core_handle_st*)* %call17, %struct.ossl_dispatch_st* (%struct.ossl_core_handle_st*)** %2, align 8, !tbaa !17
  br label %for.inc

sw.bb18:                                          ; preds = %for.cond
  %call19 = tail call fastcc i32 (%struct.ossl_core_handle_st*, i32)* @OSSL_FUNC_provider_up_ref(%struct.ossl_dispatch_st* noundef nonnull %in.addr.0) #4
  store i32 (%struct.ossl_core_handle_st*, i32)* %call19, i32 (%struct.ossl_core_handle_st*, i32)** %1, align 8, !tbaa !18
  br label %for.inc

sw.bb20:                                          ; preds = %for.cond
  %call21 = tail call fastcc i32 (%struct.ossl_core_handle_st*, i32)* @OSSL_FUNC_provider_free(%struct.ossl_dispatch_st* noundef nonnull %in.addr.0) #4
  store i32 (%struct.ossl_core_handle_st*, i32)* %call21, i32 (%struct.ossl_core_handle_st*, i32)** %0, align 8, !tbaa !19
  br label %for.inc

for.inc:                                          ; preds = %for.cond, %sw.bb, %sw.bb8, %sw.bb10, %sw.bb12, %sw.bb14, %sw.bb16, %sw.bb18, %sw.bb20
  %incdec.ptr = getelementptr inbounds %struct.ossl_dispatch_st, %struct.ossl_dispatch_st* %in.addr.0, i64 1
  br label %for.cond, !llvm.loop !20

for.end:                                          ; preds = %for.cond
  %9 = load %struct.openssl_core_ctx_st* (%struct.ossl_core_handle_st*)*, %struct.openssl_core_ctx_st* (%struct.ossl_core_handle_st*)** %7, align 8, !tbaa !12
  %cmp23 = icmp eq %struct.openssl_core_ctx_st* (%struct.ossl_core_handle_st*)* %9, null
  br i1 %cmp23, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.end
  %10 = load i32 (%struct.ossl_core_handle_st*, i32 (%struct.ossl_core_handle_st*, i8*)*, i32 (%struct.ossl_core_handle_st*, i8*)*, i32 (i8*, i8*)*, i8*)*, i32 (%struct.ossl_core_handle_st*, i32 (%struct.ossl_core_handle_st*, i8*)*, i32 (%struct.ossl_core_handle_st*, i8*)*, i32 (i8*, i8*)*, i8*)** %6, align 8, !tbaa !13
  %cmp25 = icmp eq i32 (%struct.ossl_core_handle_st*, i32 (%struct.ossl_core_handle_st*, i8*)*, i32 (%struct.ossl_core_handle_st*, i8*)*, i32 (i8*, i8*)*, i8*)* %10, null
  br i1 %cmp25, label %cleanup, label %lor.lhs.false26

lor.lhs.false26:                                  ; preds = %lor.lhs.false
  %11 = load i8* (%struct.ossl_core_handle_st*)*, i8* (%struct.ossl_core_handle_st*)** %4, align 8, !tbaa !15
  %cmp28 = icmp eq i8* (%struct.ossl_core_handle_st*)* %11, null
  br i1 %cmp28, label %cleanup, label %lor.lhs.false29

lor.lhs.false29:                                  ; preds = %lor.lhs.false26
  %12 = load i8* (%struct.ossl_core_handle_st*)*, i8* (%struct.ossl_core_handle_st*)** %3, align 8, !tbaa !16
  %cmp31 = icmp eq i8* (%struct.ossl_core_handle_st*)* %12, null
  br i1 %cmp31, label %cleanup, label %lor.lhs.false32

lor.lhs.false32:                                  ; preds = %lor.lhs.false29
  %13 = load %struct.ossl_dispatch_st* (%struct.ossl_core_handle_st*)*, %struct.ossl_dispatch_st* (%struct.ossl_core_handle_st*)** %2, align 8, !tbaa !17
  %cmp34 = icmp eq %struct.ossl_dispatch_st* (%struct.ossl_core_handle_st*)* %13, null
  br i1 %cmp34, label %cleanup, label %lor.lhs.false35

lor.lhs.false35:                                  ; preds = %lor.lhs.false32
  %14 = load i32 (%struct.ossl_core_handle_st*, i32)*, i32 (%struct.ossl_core_handle_st*, i32)** %1, align 8, !tbaa !18
  %cmp37 = icmp eq i32 (%struct.ossl_core_handle_st*, i32)* %14, null
  br i1 %cmp37, label %cleanup, label %lor.lhs.false38

lor.lhs.false38:                                  ; preds = %lor.lhs.false35
  %15 = load i32 (%struct.ossl_core_handle_st*, i32)*, i32 (%struct.ossl_core_handle_st*, i32)** %0, align 8, !tbaa !19
  %cmp40 = icmp eq i32 (%struct.ossl_core_handle_st*, i32)* %15, null
  br i1 %cmp40, label %cleanup, label %if.end42

if.end42:                                         ; preds = %lor.lhs.false38
  %call43 = tail call i8* @CRYPTO_THREAD_lock_new() #3
  %lock = getelementptr inbounds i8, i8* %call, i64 24
  %16 = bitcast i8* %lock to i8**
  store i8* %call43, i8** %16, align 8, !tbaa !22
  %cmp45 = icmp eq i8* %call43, null
  br i1 %cmp45, label %cleanup, label %if.end47

if.end47:                                         ; preds = %if.end42
  %17 = load i32 (%struct.ossl_core_handle_st*, i32 (%struct.ossl_core_handle_st*, i8*)*, i32 (%struct.ossl_core_handle_st*, i8*)*, i32 (i8*, i8*)*, i8*)*, i32 (%struct.ossl_core_handle_st*, i32 (%struct.ossl_core_handle_st*, i8*)*, i32 (%struct.ossl_core_handle_st*, i8*)*, i32 (i8*, i8*)*, i8*)** %6, align 8, !tbaa !13
  %18 = load %struct.ossl_core_handle_st*, %struct.ossl_core_handle_st** %handle4, align 8, !tbaa !4
  %19 = bitcast %struct.ossl_lib_ctx_st* %ctx to i8*
  %call50 = tail call i32 %17(%struct.ossl_core_handle_st* noundef %18, i32 (%struct.ossl_core_handle_st*, i8*)* noundef nonnull @provider_create_child_cb, i32 (%struct.ossl_core_handle_st*, i8*)* noundef nonnull @provider_remove_child_cb, i32 (i8*, i8*)* noundef nonnull @provider_global_props_cb, i8* noundef nonnull %19) #3
  %tobool.not = icmp eq i32 %call50, 0
  br i1 %tobool.not, label %cleanup, label %if.end52

if.end52:                                         ; preds = %if.end47
  %20 = getelementptr inbounds i8, i8* %call, i64 16
  %bf.load = load i8, i8* %20, align 8
  %bf.set = or i8 %bf.load, 1
  store i8 %bf.set, i8* %20, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end47, %if.end42, %for.end, %lor.lhs.false, %lor.lhs.false26, %lor.lhs.false29, %lor.lhs.false32, %lor.lhs.false35, %lor.lhs.false38, %if.end, %entry, %if.end52
  %retval.0 = phi i32 [ 1, %if.end52 ], [ 0, %entry ], [ 0, %if.end ], [ 0, %lor.lhs.false38 ], [ 0, %lor.lhs.false35 ], [ 0, %lor.lhs.false32 ], [ 0, %lor.lhs.false29 ], [ 0, %lor.lhs.false26 ], [ 0, %lor.lhs.false ], [ 0, %for.end ], [ 0, %if.end42 ], [ 0, %if.end47 ]
  ret i32 %retval.0
}

declare i8* @ossl_lib_ctx_get_data(%struct.ossl_lib_ctx_st* noundef, i32 noundef, %struct.ossl_lib_ctx_method* noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal fastcc %struct.openssl_core_ctx_st* (%struct.ossl_core_handle_st*)* @OSSL_FUNC_core_get_libctx(%struct.ossl_dispatch_st* nocapture noundef readonly %opf) unnamed_addr #2 {
entry:
  %function = getelementptr inbounds %struct.ossl_dispatch_st, %struct.ossl_dispatch_st* %opf, i64 0, i32 1
  %0 = bitcast void ()** %function to %struct.openssl_core_ctx_st* (%struct.ossl_core_handle_st*)**
  %1 = load %struct.openssl_core_ctx_st* (%struct.ossl_core_handle_st*)*, %struct.openssl_core_ctx_st* (%struct.ossl_core_handle_st*)** %0, align 8, !tbaa !23
  ret %struct.openssl_core_ctx_st* (%struct.ossl_core_handle_st*)* %1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal fastcc i32 (%struct.ossl_core_handle_st*, i32 (%struct.ossl_core_handle_st*, i8*)*, i32 (%struct.ossl_core_handle_st*, i8*)*, i32 (i8*, i8*)*, i8*)* @OSSL_FUNC_provider_register_child_cb(%struct.ossl_dispatch_st* nocapture noundef readonly %opf) unnamed_addr #2 {
entry:
  %function = getelementptr inbounds %struct.ossl_dispatch_st, %struct.ossl_dispatch_st* %opf, i64 0, i32 1
  %0 = bitcast void ()** %function to i32 (%struct.ossl_core_handle_st*, i32 (%struct.ossl_core_handle_st*, i8*)*, i32 (%struct.ossl_core_handle_st*, i8*)*, i32 (i8*, i8*)*, i8*)**
  %1 = load i32 (%struct.ossl_core_handle_st*, i32 (%struct.ossl_core_handle_st*, i8*)*, i32 (%struct.ossl_core_handle_st*, i8*)*, i32 (i8*, i8*)*, i8*)*, i32 (%struct.ossl_core_handle_st*, i32 (%struct.ossl_core_handle_st*, i8*)*, i32 (%struct.ossl_core_handle_st*, i8*)*, i32 (i8*, i8*)*, i8*)** %0, align 8, !tbaa !23
  ret i32 (%struct.ossl_core_handle_st*, i32 (%struct.ossl_core_handle_st*, i8*)*, i32 (%struct.ossl_core_handle_st*, i8*)*, i32 (i8*, i8*)*, i8*)* %1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal fastcc void (%struct.ossl_core_handle_st*)* @OSSL_FUNC_provider_deregister_child_cb(%struct.ossl_dispatch_st* nocapture noundef readonly %opf) unnamed_addr #2 {
entry:
  %function = getelementptr inbounds %struct.ossl_dispatch_st, %struct.ossl_dispatch_st* %opf, i64 0, i32 1
  %0 = bitcast void ()** %function to void (%struct.ossl_core_handle_st*)**
  %1 = load void (%struct.ossl_core_handle_st*)*, void (%struct.ossl_core_handle_st*)** %0, align 8, !tbaa !23
  ret void (%struct.ossl_core_handle_st*)* %1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal fastcc i8* (%struct.ossl_core_handle_st*)* @OSSL_FUNC_provider_name(%struct.ossl_dispatch_st* nocapture noundef readonly %opf) unnamed_addr #2 {
entry:
  %function = getelementptr inbounds %struct.ossl_dispatch_st, %struct.ossl_dispatch_st* %opf, i64 0, i32 1
  %0 = bitcast void ()** %function to i8* (%struct.ossl_core_handle_st*)**
  %1 = load i8* (%struct.ossl_core_handle_st*)*, i8* (%struct.ossl_core_handle_st*)** %0, align 8, !tbaa !23
  ret i8* (%struct.ossl_core_handle_st*)* %1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal fastcc i8* (%struct.ossl_core_handle_st*)* @OSSL_FUNC_provider_get0_provider_ctx(%struct.ossl_dispatch_st* nocapture noundef readonly %opf) unnamed_addr #2 {
entry:
  %function = getelementptr inbounds %struct.ossl_dispatch_st, %struct.ossl_dispatch_st* %opf, i64 0, i32 1
  %0 = bitcast void ()** %function to i8* (%struct.ossl_core_handle_st*)**
  %1 = load i8* (%struct.ossl_core_handle_st*)*, i8* (%struct.ossl_core_handle_st*)** %0, align 8, !tbaa !23
  ret i8* (%struct.ossl_core_handle_st*)* %1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal fastcc %struct.ossl_dispatch_st* (%struct.ossl_core_handle_st*)* @OSSL_FUNC_provider_get0_dispatch(%struct.ossl_dispatch_st* nocapture noundef readonly %opf) unnamed_addr #2 {
entry:
  %function = getelementptr inbounds %struct.ossl_dispatch_st, %struct.ossl_dispatch_st* %opf, i64 0, i32 1
  %0 = bitcast void ()** %function to %struct.ossl_dispatch_st* (%struct.ossl_core_handle_st*)**
  %1 = load %struct.ossl_dispatch_st* (%struct.ossl_core_handle_st*)*, %struct.ossl_dispatch_st* (%struct.ossl_core_handle_st*)** %0, align 8, !tbaa !23
  ret %struct.ossl_dispatch_st* (%struct.ossl_core_handle_st*)* %1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal fastcc i32 (%struct.ossl_core_handle_st*, i32)* @OSSL_FUNC_provider_up_ref(%struct.ossl_dispatch_st* nocapture noundef readonly %opf) unnamed_addr #2 {
entry:
  %function = getelementptr inbounds %struct.ossl_dispatch_st, %struct.ossl_dispatch_st* %opf, i64 0, i32 1
  %0 = bitcast void ()** %function to i32 (%struct.ossl_core_handle_st*, i32)**
  %1 = load i32 (%struct.ossl_core_handle_st*, i32)*, i32 (%struct.ossl_core_handle_st*, i32)** %0, align 8, !tbaa !23
  ret i32 (%struct.ossl_core_handle_st*, i32)* %1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal fastcc i32 (%struct.ossl_core_handle_st*, i32)* @OSSL_FUNC_provider_free(%struct.ossl_dispatch_st* nocapture noundef readonly %opf) unnamed_addr #2 {
entry:
  %function = getelementptr inbounds %struct.ossl_dispatch_st, %struct.ossl_dispatch_st* %opf, i64 0, i32 1
  %0 = bitcast void ()** %function to i32 (%struct.ossl_core_handle_st*, i32)**
  %1 = load i32 (%struct.ossl_core_handle_st*, i32)*, i32 (%struct.ossl_core_handle_st*, i32)** %0, align 8, !tbaa !23
  ret i32 (%struct.ossl_core_handle_st*, i32)* %1
}

declare i8* @CRYPTO_THREAD_lock_new() local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @provider_create_child_cb(%struct.ossl_core_handle_st* noundef %prov, i8* noundef %cbdata) #0 {
entry:
  %0 = bitcast i8* %cbdata to %struct.ossl_lib_ctx_st*
  %call = tail call i8* @ossl_lib_ctx_get_data(%struct.ossl_lib_ctx_st* noundef %0, i32 noundef 18, %struct.ossl_lib_ctx_method* noundef nonnull @child_prov_ossl_ctx_method) #3
  %cmp = icmp eq i8* %call, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %1 = getelementptr inbounds i8, i8* %call, i64 16
  %bf.load = load i8, i8* %1, align 8
  %bf.clear = and i8 %bf.load, 1
  %tobool.not = icmp eq i8 %bf.clear, 0
  br i1 %tobool.not, label %if.end4, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  %lock = getelementptr inbounds i8, i8* %call, i64 24
  %2 = bitcast i8* %lock to i8**
  %3 = load i8*, i8** %2, align 8, !tbaa !22
  %call1 = tail call i32 @CRYPTO_THREAD_write_lock(i8* noundef %3) #3
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %cleanup, label %if.end4

if.end4:                                          ; preds = %land.lhs.true, %if.end
  %c_prov_name = getelementptr inbounds i8, i8* %call, i64 56
  %4 = bitcast i8* %c_prov_name to i8* (%struct.ossl_core_handle_st*)**
  %5 = load i8* (%struct.ossl_core_handle_st*)*, i8* (%struct.ossl_core_handle_st*)** %4, align 8, !tbaa !15
  %call5 = tail call i8* %5(%struct.ossl_core_handle_st* noundef %prov) #3
  %curr_prov = getelementptr inbounds i8, i8* %call, i64 8
  %6 = bitcast i8* %curr_prov to %struct.ossl_core_handle_st**
  store %struct.ossl_core_handle_st* %prov, %struct.ossl_core_handle_st** %6, align 8, !tbaa !24
  %call6 = tail call %struct.ossl_provider_st* @ossl_provider_find(%struct.ossl_lib_ctx_st* noundef %0, i8* noundef %call5, i32 noundef 1) #3
  %cmp7.not = icmp eq %struct.ossl_provider_st* %call6, null
  br i1 %cmp7.not, label %if.else, label %if.then8

if.then8:                                         ; preds = %if.end4
  tail call void @ossl_provider_free(%struct.ossl_provider_st* noundef nonnull %call6) #3
  %call9 = tail call i32 @ossl_provider_activate(%struct.ossl_provider_st* noundef nonnull %call6, i32 noundef 0, i32 noundef 1) #3
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %err, label %if.end28

if.else:                                          ; preds = %if.end4
  %call13 = tail call %struct.ossl_provider_st* @ossl_provider_new(%struct.ossl_lib_ctx_st* noundef %0, i8* noundef %call5, i32 (%struct.ossl_core_handle_st*, %struct.ossl_dispatch_st*, %struct.ossl_dispatch_st**, i8**)* noundef nonnull @ossl_child_provider_init, i32 noundef 1) #3
  %cmp14 = icmp eq %struct.ossl_provider_st* %call13, null
  br i1 %cmp14, label %err, label %if.end16

if.end16:                                         ; preds = %if.else
  %call17 = tail call i32 @ossl_provider_activate(%struct.ossl_provider_st* noundef nonnull %call13, i32 noundef 0, i32 noundef 0) #3
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %err, label %if.end20

if.end20:                                         ; preds = %if.end16
  %call21 = tail call i32 @ossl_provider_set_child(%struct.ossl_provider_st* noundef nonnull %call13, %struct.ossl_core_handle_st* noundef %prov) #3
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %if.then25, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end20
  %call23 = tail call i32 @ossl_provider_add_to_store(%struct.ossl_provider_st* noundef nonnull %call13, %struct.ossl_provider_st** noundef null, i32 noundef 0) #3
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %if.then25, label %if.end28

if.then25:                                        ; preds = %lor.lhs.false, %if.end20
  %call26 = tail call i32 @ossl_provider_deactivate(%struct.ossl_provider_st* noundef nonnull %call13) #3
  tail call void @ossl_provider_free(%struct.ossl_provider_st* noundef nonnull %call13) #3
  br label %err

if.end28:                                         ; preds = %lor.lhs.false, %if.then8
  br label %err

err:                                              ; preds = %if.end16, %if.else, %if.then8, %if.end28, %if.then25
  %ret.0 = phi i32 [ 1, %if.end28 ], [ 0, %if.then8 ], [ 0, %if.else ], [ 0, %if.then25 ], [ 0, %if.end16 ]
  %bf.load30 = load i8, i8* %1, align 8
  %bf.clear31 = and i8 %bf.load30, 1
  %tobool33.not = icmp eq i8 %bf.clear31, 0
  br i1 %tobool33.not, label %cleanup, label %if.then34

if.then34:                                        ; preds = %err
  %lock35 = getelementptr inbounds i8, i8* %call, i64 24
  %7 = bitcast i8* %lock35 to i8**
  %8 = load i8*, i8** %7, align 8, !tbaa !22
  %call36 = tail call i32 @CRYPTO_THREAD_unlock(i8* noundef %8) #3
  br label %cleanup

cleanup:                                          ; preds = %err, %if.then34, %land.lhs.true, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ 0, %land.lhs.true ], [ %ret.0, %if.then34 ], [ %ret.0, %err ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @provider_remove_child_cb(%struct.ossl_core_handle_st* noundef %prov, i8* noundef %cbdata) #0 {
entry:
  %0 = bitcast i8* %cbdata to %struct.ossl_lib_ctx_st*
  %call = tail call i8* @ossl_lib_ctx_get_data(%struct.ossl_lib_ctx_st* noundef %0, i32 noundef 18, %struct.ossl_lib_ctx_method* noundef nonnull @child_prov_ossl_ctx_method) #3
  %cmp = icmp eq i8* %call, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %c_prov_name = getelementptr inbounds i8, i8* %call, i64 56
  %1 = bitcast i8* %c_prov_name to i8* (%struct.ossl_core_handle_st*)**
  %2 = load i8* (%struct.ossl_core_handle_st*)*, i8* (%struct.ossl_core_handle_st*)** %1, align 8, !tbaa !15
  %call1 = tail call i8* %2(%struct.ossl_core_handle_st* noundef %prov) #3
  %call2 = tail call %struct.ossl_provider_st* @ossl_provider_find(%struct.ossl_lib_ctx_st* noundef %0, i8* noundef %call1, i32 noundef 1) #3
  %cmp3 = icmp eq %struct.ossl_provider_st* %call2, null
  br i1 %cmp3, label %cleanup, label %if.end5

if.end5:                                          ; preds = %if.end
  tail call void @ossl_provider_free(%struct.ossl_provider_st* noundef nonnull %call2) #3
  %call6 = tail call i32 @ossl_provider_is_child(%struct.ossl_provider_st* noundef nonnull %call2) #3
  %tobool.not = icmp eq i32 %call6, 0
  br i1 %tobool.not, label %if.end10, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end5
  %call7 = tail call i32 @ossl_provider_deactivate(%struct.ossl_provider_st* noundef nonnull %call2) #3
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %cleanup, label %if.end10

if.end10:                                         ; preds = %land.lhs.true, %if.end5
  br label %cleanup

cleanup:                                          ; preds = %land.lhs.true, %if.end, %entry, %if.end10
  %retval.0 = phi i32 [ 1, %if.end10 ], [ 0, %entry ], [ 0, %if.end ], [ 0, %land.lhs.true ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @provider_global_props_cb(i8* noundef %props, i8* noundef %cbdata) #0 {
entry:
  %0 = bitcast i8* %cbdata to %struct.ossl_lib_ctx_st*
  %call = tail call i32 @evp_set_default_properties_int(%struct.ossl_lib_ctx_st* noundef %0, i8* noundef %props, i32 noundef 0, i32 noundef 1) #3
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_provider_up_ref_parent(%struct.ossl_provider_st* noundef %prov, i32 noundef %activate) local_unnamed_addr #0 {
entry:
  %call = tail call %struct.ossl_lib_ctx_st* @ossl_provider_libctx(%struct.ossl_provider_st* noundef %prov) #3
  %call1 = tail call i8* @ossl_lib_ctx_get_data(%struct.ossl_lib_ctx_st* noundef %call, i32 noundef 18, %struct.ossl_lib_ctx_method* noundef nonnull @child_prov_ossl_ctx_method) #3
  %cmp = icmp eq i8* %call1, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %c_prov_up_ref = getelementptr inbounds i8, i8* %call1, i64 80
  %0 = bitcast i8* %c_prov_up_ref to i32 (%struct.ossl_core_handle_st*, i32)**
  %1 = load i32 (%struct.ossl_core_handle_st*, i32)*, i32 (%struct.ossl_core_handle_st*, i32)** %0, align 8, !tbaa !18
  %call2 = tail call %struct.ossl_core_handle_st* @ossl_provider_get_parent(%struct.ossl_provider_st* noundef %prov) #3
  %call3 = tail call i32 %1(%struct.ossl_core_handle_st* noundef %call2, i32 noundef %activate) #3
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %call3, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

declare %struct.ossl_lib_ctx_st* @ossl_provider_libctx(%struct.ossl_provider_st* noundef) local_unnamed_addr #1

declare %struct.ossl_core_handle_st* @ossl_provider_get_parent(%struct.ossl_provider_st* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_provider_free_parent(%struct.ossl_provider_st* noundef %prov, i32 noundef %deactivate) local_unnamed_addr #0 {
entry:
  %call = tail call %struct.ossl_lib_ctx_st* @ossl_provider_libctx(%struct.ossl_provider_st* noundef %prov) #3
  %call1 = tail call i8* @ossl_lib_ctx_get_data(%struct.ossl_lib_ctx_st* noundef %call, i32 noundef 18, %struct.ossl_lib_ctx_method* noundef nonnull @child_prov_ossl_ctx_method) #3
  %cmp = icmp eq i8* %call1, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %c_prov_free = getelementptr inbounds i8, i8* %call1, i64 88
  %0 = bitcast i8* %c_prov_free to i32 (%struct.ossl_core_handle_st*, i32)**
  %1 = load i32 (%struct.ossl_core_handle_st*, i32)*, i32 (%struct.ossl_core_handle_st*, i32)** %0, align 8, !tbaa !19
  %call2 = tail call %struct.ossl_core_handle_st* @ossl_provider_get_parent(%struct.ossl_provider_st* noundef %prov) #3
  %call3 = tail call i32 %1(%struct.ossl_core_handle_st* noundef %call2, i32 noundef %deactivate) #3
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %call3, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i8* @child_prov_ossl_ctx_new(%struct.ossl_lib_ctx_st* nocapture noundef readnone %libctx) #0 {
entry:
  %call = tail call i8* @CRYPTO_zalloc(i64 noundef 96, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 39) #3
  ret i8* %call
}

; Function Attrs: noinline nounwind uwtable
define internal void @child_prov_ossl_ctx_free(i8* noundef %vgbl) #0 {
entry:
  %c_provider_deregister_child_cb = getelementptr inbounds i8, i8* %vgbl, i64 48
  %0 = bitcast i8* %c_provider_deregister_child_cb to void (%struct.ossl_core_handle_st*)**
  %1 = load void (%struct.ossl_core_handle_st*)*, void (%struct.ossl_core_handle_st*)** %0, align 8, !tbaa !14
  %handle = bitcast i8* %vgbl to %struct.ossl_core_handle_st**
  %2 = load %struct.ossl_core_handle_st*, %struct.ossl_core_handle_st** %handle, align 8, !tbaa !4
  tail call void %1(%struct.ossl_core_handle_st* noundef %2) #3
  %lock = getelementptr inbounds i8, i8* %vgbl, i64 24
  %3 = bitcast i8* %lock to i8**
  %4 = load i8*, i8** %3, align 8, !tbaa !22
  tail call void @CRYPTO_THREAD_lock_free(i8* noundef %4) #3
  tail call void @CRYPTO_free(i8* noundef %vgbl, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 48) #3
  ret void
}

declare i8* @CRYPTO_zalloc(i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

declare void @CRYPTO_THREAD_lock_free(i8* noundef) local_unnamed_addr #1

declare void @CRYPTO_free(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

declare i32 @CRYPTO_THREAD_write_lock(i8* noundef) local_unnamed_addr #1

declare %struct.ossl_provider_st* @ossl_provider_find(%struct.ossl_lib_ctx_st* noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

declare void @ossl_provider_free(%struct.ossl_provider_st* noundef) local_unnamed_addr #1

declare i32 @ossl_provider_activate(%struct.ossl_provider_st* noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare %struct.ossl_provider_st* @ossl_provider_new(%struct.ossl_lib_ctx_st* noundef, i8* noundef, i32 (%struct.ossl_core_handle_st*, %struct.ossl_dispatch_st*, %struct.ossl_dispatch_st**, i8**)* noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @ossl_child_provider_init(%struct.ossl_core_handle_st* noundef %handle, %struct.ossl_dispatch_st* nocapture noundef readonly %in, %struct.ossl_dispatch_st** nocapture noundef writeonly %out, i8** nocapture noundef writeonly %provctx) #0 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %c_get_libctx.0 = phi %struct.openssl_core_ctx_st* (%struct.ossl_core_handle_st*)* [ null, %entry ], [ %c_get_libctx.1, %for.inc ]
  %in.addr.0 = phi %struct.ossl_dispatch_st* [ %in, %entry ], [ %incdec.ptr, %for.inc ]
  %function_id = getelementptr inbounds %struct.ossl_dispatch_st, %struct.ossl_dispatch_st* %in.addr.0, i64 0, i32 0
  %0 = load i32, i32* %function_id, align 8, !tbaa !10
  switch i32 %0, label %for.inc [
    i32 0, label %for.end
    i32 4, label %sw.bb
  ]

sw.bb:                                            ; preds = %for.cond
  %call = tail call fastcc %struct.openssl_core_ctx_st* (%struct.ossl_core_handle_st*)* @OSSL_FUNC_core_get_libctx(%struct.ossl_dispatch_st* noundef nonnull %in.addr.0) #4
  br label %for.inc

for.inc:                                          ; preds = %for.cond, %sw.bb
  %c_get_libctx.1 = phi %struct.openssl_core_ctx_st* (%struct.ossl_core_handle_st*)* [ %call, %sw.bb ], [ %c_get_libctx.0, %for.cond ]
  %incdec.ptr = getelementptr inbounds %struct.ossl_dispatch_st, %struct.ossl_dispatch_st* %in.addr.0, i64 1
  br label %for.cond, !llvm.loop !25

for.end:                                          ; preds = %for.cond
  %cmp2 = icmp eq %struct.openssl_core_ctx_st* (%struct.ossl_core_handle_st*)* %c_get_libctx.0, null
  br i1 %cmp2, label %cleanup, label %if.end

if.end:                                           ; preds = %for.end
  %call3 = tail call %struct.openssl_core_ctx_st* %c_get_libctx.0(%struct.ossl_core_handle_st* noundef %handle) #3
  %1 = bitcast %struct.openssl_core_ctx_st* %call3 to %struct.ossl_lib_ctx_st*
  %call4 = tail call i8* @ossl_lib_ctx_get_data(%struct.ossl_lib_ctx_st* noundef %1, i32 noundef 18, %struct.ossl_lib_ctx_method* noundef nonnull @child_prov_ossl_ctx_method) #3
  %cmp5 = icmp eq i8* %call4, null
  br i1 %cmp5, label %cleanup, label %if.end7

if.end7:                                          ; preds = %if.end
  %c_prov_get0_provider_ctx = getelementptr inbounds i8, i8* %call4, i64 64
  %2 = bitcast i8* %c_prov_get0_provider_ctx to i8* (%struct.ossl_core_handle_st*)**
  %3 = load i8* (%struct.ossl_core_handle_st*)*, i8* (%struct.ossl_core_handle_st*)** %2, align 8, !tbaa !16
  %curr_prov = getelementptr inbounds i8, i8* %call4, i64 8
  %4 = bitcast i8* %curr_prov to %struct.ossl_core_handle_st**
  %5 = load %struct.ossl_core_handle_st*, %struct.ossl_core_handle_st** %4, align 8, !tbaa !24
  %call8 = tail call i8* %3(%struct.ossl_core_handle_st* noundef %5) #3
  store i8* %call8, i8** %provctx, align 8, !tbaa !26
  %c_prov_get0_dispatch = getelementptr inbounds i8, i8* %call4, i64 72
  %6 = bitcast i8* %c_prov_get0_dispatch to %struct.ossl_dispatch_st* (%struct.ossl_core_handle_st*)**
  %7 = load %struct.ossl_dispatch_st* (%struct.ossl_core_handle_st*)*, %struct.ossl_dispatch_st* (%struct.ossl_core_handle_st*)** %6, align 8, !tbaa !17
  %8 = load %struct.ossl_core_handle_st*, %struct.ossl_core_handle_st** %4, align 8, !tbaa !24
  %call10 = tail call %struct.ossl_dispatch_st* %7(%struct.ossl_core_handle_st* noundef %8) #3
  store %struct.ossl_dispatch_st* %call10, %struct.ossl_dispatch_st** %out, align 8, !tbaa !26
  br label %cleanup

cleanup:                                          ; preds = %if.end, %for.end, %if.end7
  %retval.0 = phi i32 [ 1, %if.end7 ], [ 0, %for.end ], [ 0, %if.end ]
  ret i32 %retval.0
}

declare i32 @ossl_provider_set_child(%struct.ossl_provider_st* noundef, %struct.ossl_core_handle_st* noundef) local_unnamed_addr #1

declare i32 @ossl_provider_add_to_store(%struct.ossl_provider_st* noundef, %struct.ossl_provider_st** noundef, i32 noundef) local_unnamed_addr #1

declare i32 @ossl_provider_deactivate(%struct.ossl_provider_st* noundef) local_unnamed_addr #1

declare i32 @CRYPTO_THREAD_unlock(i8* noundef) local_unnamed_addr #1

declare i32 @ossl_provider_is_child(%struct.ossl_provider_st* noundef) local_unnamed_addr #1

declare i32 @evp_set_default_properties_int(%struct.ossl_lib_ctx_st* noundef, i8* noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nobuiltin nounwind "no-builtins" }
attributes #4 = { nobuiltin "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{!"clang version 14.0.0"}
!4 = !{!5, !6, i64 0}
!5 = !{!"child_prov_globals", !6, i64 0, !6, i64 8, !9, i64 16, !6, i64 24, !6, i64 32, !6, i64 40, !6, i64 48, !6, i64 56, !6, i64 64, !6, i64 72, !6, i64 80, !6, i64 88}
!6 = !{!"any pointer", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!"int", !7, i64 0}
!10 = !{!11, !9, i64 0}
!11 = !{!"ossl_dispatch_st", !9, i64 0, !6, i64 8}
!12 = !{!5, !6, i64 32}
!13 = !{!5, !6, i64 40}
!14 = !{!5, !6, i64 48}
!15 = !{!5, !6, i64 56}
!16 = !{!5, !6, i64 64}
!17 = !{!5, !6, i64 72}
!18 = !{!5, !6, i64 80}
!19 = !{!5, !6, i64 88}
!20 = distinct !{!20, !21}
!21 = !{!"llvm.loop.mustprogress"}
!22 = !{!5, !6, i64 24}
!23 = !{!11, !6, i64 8}
!24 = !{!5, !6, i64 8}
!25 = distinct !{!25, !21}
!26 = !{!6, !6, i64 0}
