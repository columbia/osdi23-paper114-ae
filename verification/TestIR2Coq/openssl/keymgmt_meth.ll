; ModuleID = 'crypto/evp/keymgmt_meth.c'
source_filename = "crypto/evp/keymgmt_meth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evp_keymgmt_st = type { i32, i32, i8*, i8*, %struct.ossl_provider_st*, i32, i8*, i8* (i8*)*, void (i8*)*, i32 (i8*, %struct.ossl_param_st*)*, %struct.ossl_param_st* (i8*)*, i32 (i8*, %struct.ossl_param_st*)*, %struct.ossl_param_st* (i8*)*, i8* (i8*, i32, %struct.ossl_param_st*)*, i32 (i8*, i8*)*, i32 (i8*, %struct.ossl_param_st*)*, %struct.ossl_param_st* (i8*, i8*)*, i8* (i8*, i32 (%struct.ossl_param_st*, i8*)*, i8*)*, void (i8*)*, i8* (i8*, i64)*, i8* (i32)*, i32 (i8*, i32)*, i32 (i8*, i32, i32)*, i32 (i8*, i8*, i32)*, i32 (i8*, i32, %struct.ossl_param_st*)*, %struct.ossl_param_st* (i32)*, i32 (i8*, i32, i32 (%struct.ossl_param_st*, i8*)*, i8*)*, %struct.ossl_param_st* (i32)*, i8* (i8*, i32)* }
%struct.ossl_provider_st = type opaque
%struct.ossl_param_st = type { i8*, i32, i8*, i64, i64 }
%struct.ossl_lib_ctx_st = type opaque
%struct.ossl_algorithm_st = type { i8*, i8*, %struct.ossl_dispatch_st*, i8* }
%struct.ossl_dispatch_st = type { i32, void ()* }

@.str = private unnamed_addr constant [26 x i8] c"crypto/evp/keymgmt_meth.c\00", align 1
@__func__.keymgmt_from_algorithm = private unnamed_addr constant [23 x i8] c"keymgmt_from_algorithm\00", align 1
@__func__.keymgmt_new = private unnamed_addr constant [12 x i8] c"keymgmt_new\00", align 1

; Function Attrs: noinline nounwind uwtable
define %struct.evp_keymgmt_st* @evp_keymgmt_fetch_by_number(%struct.ossl_lib_ctx_st* noundef %ctx, i32 noundef %name_id, i8* noundef %properties) local_unnamed_addr #0 {
entry:
  %call = tail call i8* @evp_generic_fetch_by_number(%struct.ossl_lib_ctx_st* noundef %ctx, i32 noundef 10, i32 noundef %name_id, i8* noundef %properties, i8* (i32, %struct.ossl_algorithm_st*, %struct.ossl_provider_st*)* noundef nonnull @keymgmt_from_algorithm, i32 (i8*)* noundef bitcast (i32 (%struct.evp_keymgmt_st*)* @EVP_KEYMGMT_up_ref to i32 (i8*)*), void (i8*)* noundef bitcast (void (%struct.evp_keymgmt_st*)* @EVP_KEYMGMT_free to void (i8*)*)) #6
  %0 = bitcast i8* %call to %struct.evp_keymgmt_st*
  ret %struct.evp_keymgmt_st* %0
}

declare i8* @evp_generic_fetch_by_number(%struct.ossl_lib_ctx_st* noundef, i32 noundef, i32 noundef, i8* noundef, i8* (i32, %struct.ossl_algorithm_st*, %struct.ossl_provider_st*)* noundef, i32 (i8*)* noundef, void (i8*)* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal i8* @keymgmt_from_algorithm(i32 noundef %name_id, %struct.ossl_algorithm_st* noundef %algodef, %struct.ossl_provider_st* noundef %prov) #0 {
entry:
  %implementation = getelementptr inbounds %struct.ossl_algorithm_st, %struct.ossl_algorithm_st* %algodef, i64 0, i32 2
  %0 = load %struct.ossl_dispatch_st*, %struct.ossl_dispatch_st** %implementation, align 8, !tbaa !4
  %call = tail call fastcc i8* @keymgmt_new() #7
  %1 = bitcast i8* %call to %struct.evp_keymgmt_st*
  %cmp = icmp eq i8* %call, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %name_id1 = getelementptr inbounds i8, i8* %call, i64 4
  %2 = bitcast i8* %name_id1 to i32*
  store i32 %name_id, i32* %2, align 4, !tbaa !9
  %call2 = tail call i8* @ossl_algorithm_get1_first_name(%struct.ossl_algorithm_st* noundef nonnull %algodef) #6
  %type_name = getelementptr inbounds i8, i8* %call, i64 8
  %3 = bitcast i8* %type_name to i8**
  store i8* %call2, i8** %3, align 8, !tbaa !12
  %cmp3 = icmp eq i8* %call2, null
  br i1 %cmp3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  tail call void @EVP_KEYMGMT_free(%struct.evp_keymgmt_st* noundef nonnull %1) #7
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %algorithm_description = getelementptr inbounds %struct.ossl_algorithm_st, %struct.ossl_algorithm_st* %algodef, i64 0, i32 3
  %4 = load i8*, i8** %algorithm_description, align 8, !tbaa !13
  %description = getelementptr inbounds i8, i8* %call, i64 16
  %5 = bitcast i8* %description to i8**
  store i8* %4, i8** %5, align 8, !tbaa !14
  %export_types = getelementptr inbounds i8, i8* %call, i64 208
  %6 = bitcast i8* %export_types to %struct.ossl_param_st* (i32)**
  %export = getelementptr inbounds i8, i8* %call, i64 200
  %7 = bitcast i8* %export to i32 (i8*, i32, i32 (%struct.ossl_param_st*, i8*)*, i8*)**
  %import_types = getelementptr inbounds i8, i8* %call, i64 192
  %8 = bitcast i8* %import_types to %struct.ossl_param_st* (i32)**
  %import = getelementptr inbounds i8, i8* %call, i64 184
  %9 = bitcast i8* %import to i32 (i8*, i32, %struct.ossl_param_st*)**
  %match = getelementptr inbounds i8, i8* %call, i64 176
  %10 = bitcast i8* %match to i32 (i8*, i8*, i32)**
  %validate = getelementptr inbounds i8, i8* %call, i64 168
  %11 = bitcast i8* %validate to i32 (i8*, i32, i32)**
  %dup = getelementptr inbounds i8, i8* %call, i64 216
  %12 = bitcast i8* %dup to i8* (i8*, i32)**
  %has = getelementptr inbounds i8, i8* %call, i64 160
  %13 = bitcast i8* %has to i32 (i8*, i32)**
  %query_operation_name = getelementptr inbounds i8, i8* %call, i64 152
  %14 = bitcast i8* %query_operation_name to i8* (i32)**
  %settable_params = getelementptr inbounds i8, i8* %call, i64 88
  %15 = bitcast i8* %settable_params to %struct.ossl_param_st* (i8*)**
  %set_params = getelementptr inbounds i8, i8* %call, i64 80
  %16 = bitcast i8* %set_params to i32 (i8*, %struct.ossl_param_st*)**
  %gettable_params = getelementptr inbounds i8, i8* %call, i64 72
  %17 = bitcast i8* %gettable_params to %struct.ossl_param_st* (i8*)**
  %get_params = getelementptr inbounds i8, i8* %call, i64 64
  %18 = bitcast i8* %get_params to i32 (i8*, %struct.ossl_param_st*)**
  %load = getelementptr inbounds i8, i8* %call, i64 144
  %19 = bitcast i8* %load to i8* (i8*, i64)**
  %free = getelementptr inbounds i8, i8* %call, i64 56
  %20 = bitcast i8* %free to void (i8*)**
  %gen_cleanup = getelementptr inbounds i8, i8* %call, i64 136
  %21 = bitcast i8* %gen_cleanup to void (i8*)**
  %gen = getelementptr inbounds i8, i8* %call, i64 128
  %22 = bitcast i8* %gen to i8* (i8*, i32 (%struct.ossl_param_st*, i8*)*, i8*)**
  %gen_settable_params = getelementptr inbounds i8, i8* %call, i64 120
  %23 = bitcast i8* %gen_settable_params to %struct.ossl_param_st* (i8*, i8*)**
  %gen_set_params = getelementptr inbounds i8, i8* %call, i64 112
  %24 = bitcast i8* %gen_set_params to i32 (i8*, %struct.ossl_param_st*)**
  %gen_set_template = getelementptr inbounds i8, i8* %call, i64 104
  %25 = bitcast i8* %gen_set_template to i32 (i8*, i8*)**
  %gen_init = getelementptr inbounds i8, i8* %call, i64 96
  %26 = bitcast i8* %gen_init to i8* (i8*, i32, %struct.ossl_param_st*)**
  %new = getelementptr inbounds i8, i8* %call, i64 48
  %27 = bitcast i8* %new to i8* (i8*)**
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end5
  %fns.0 = phi %struct.ossl_dispatch_st* [ %0, %if.end5 ], [ %incdec.ptr, %for.inc ]
  %setparamfncnt.0 = phi i32 [ 0, %if.end5 ], [ %setparamfncnt.1, %for.inc ]
  %getparamfncnt.0 = phi i32 [ 0, %if.end5 ], [ %getparamfncnt.1, %for.inc ]
  %setgenparamfncnt.0 = phi i32 [ 0, %if.end5 ], [ %setgenparamfncnt.1, %for.inc ]
  %importfncnt.0 = phi i32 [ 0, %if.end5 ], [ %importfncnt.1, %for.inc ]
  %exportfncnt.0 = phi i32 [ 0, %if.end5 ], [ %exportfncnt.1, %for.inc ]
  %function_id = getelementptr inbounds %struct.ossl_dispatch_st, %struct.ossl_dispatch_st* %fns.0, i64 0, i32 0
  %28 = load i32, i32* %function_id, align 8, !tbaa !15
  switch i32 %28, label %for.inc [
    i32 0, label %for.end
    i32 1, label %sw.bb
    i32 2, label %sw.bb13
    i32 3, label %sw.bb19
    i32 4, label %sw.bb25
    i32 5, label %sw.bb31
    i32 6, label %sw.bb38
    i32 7, label %sw.bb44
    i32 10, label %sw.bb50
    i32 8, label %sw.bb56
    i32 11, label %sw.bb62
    i32 12, label %sw.bb69
    i32 13, label %sw.bb76
    i32 14, label %sw.bb83
    i32 20, label %sw.bb90
    i32 21, label %sw.bb96
    i32 44, label %sw.bb102
    i32 22, label %sw.bb108
    i32 23, label %sw.bb114
    i32 40, label %sw.bb120
    i32 41, label %sw.bb127
    i32 42, label %sw.bb134
    i32 43, label %sw.bb141
  ]

sw.bb:                                            ; preds = %for.cond
  %29 = load i8* (i8*)*, i8* (i8*)** %27, align 8, !tbaa !17
  %cmp8 = icmp eq i8* (i8*)* %29, null
  br i1 %cmp8, label %if.then9, label %for.inc

if.then9:                                         ; preds = %sw.bb
  %call10 = tail call fastcc i8* (i8*)* @OSSL_FUNC_keymgmt_new(%struct.ossl_dispatch_st* noundef nonnull %fns.0) #7
  store i8* (i8*)* %call10, i8* (i8*)** %27, align 8, !tbaa !17
  br label %for.inc

sw.bb13:                                          ; preds = %for.cond
  %30 = load i8* (i8*, i32, %struct.ossl_param_st*)*, i8* (i8*, i32, %struct.ossl_param_st*)** %26, align 8, !tbaa !18
  %cmp14 = icmp eq i8* (i8*, i32, %struct.ossl_param_st*)* %30, null
  br i1 %cmp14, label %if.then15, label %for.inc

if.then15:                                        ; preds = %sw.bb13
  %call16 = tail call fastcc i8* (i8*, i32, %struct.ossl_param_st*)* @OSSL_FUNC_keymgmt_gen_init(%struct.ossl_dispatch_st* noundef nonnull %fns.0) #7
  store i8* (i8*, i32, %struct.ossl_param_st*)* %call16, i8* (i8*, i32, %struct.ossl_param_st*)** %26, align 8, !tbaa !18
  br label %for.inc

sw.bb19:                                          ; preds = %for.cond
  %31 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %25, align 8, !tbaa !19
  %cmp20 = icmp eq i32 (i8*, i8*)* %31, null
  br i1 %cmp20, label %if.then21, label %for.inc

if.then21:                                        ; preds = %sw.bb19
  %call22 = tail call fastcc i32 (i8*, i8*)* @OSSL_FUNC_keymgmt_gen_set_template(%struct.ossl_dispatch_st* noundef nonnull %fns.0) #7
  store i32 (i8*, i8*)* %call22, i32 (i8*, i8*)** %25, align 8, !tbaa !19
  br label %for.inc

sw.bb25:                                          ; preds = %for.cond
  %32 = load i32 (i8*, %struct.ossl_param_st*)*, i32 (i8*, %struct.ossl_param_st*)** %24, align 8, !tbaa !20
  %cmp26 = icmp eq i32 (i8*, %struct.ossl_param_st*)* %32, null
  br i1 %cmp26, label %if.then27, label %for.inc

if.then27:                                        ; preds = %sw.bb25
  %inc = add nsw i32 %setgenparamfncnt.0, 1
  %call28 = tail call fastcc i32 (i8*, %struct.ossl_param_st*)* @OSSL_FUNC_keymgmt_gen_set_params(%struct.ossl_dispatch_st* noundef nonnull %fns.0) #7
  store i32 (i8*, %struct.ossl_param_st*)* %call28, i32 (i8*, %struct.ossl_param_st*)** %24, align 8, !tbaa !20
  br label %for.inc

sw.bb31:                                          ; preds = %for.cond
  %33 = load %struct.ossl_param_st* (i8*, i8*)*, %struct.ossl_param_st* (i8*, i8*)** %23, align 8, !tbaa !21
  %cmp32 = icmp eq %struct.ossl_param_st* (i8*, i8*)* %33, null
  br i1 %cmp32, label %if.then33, label %for.inc

if.then33:                                        ; preds = %sw.bb31
  %inc34 = add nsw i32 %setgenparamfncnt.0, 1
  %call35 = tail call fastcc %struct.ossl_param_st* (i8*, i8*)* @OSSL_FUNC_keymgmt_gen_settable_params(%struct.ossl_dispatch_st* noundef nonnull %fns.0) #7
  store %struct.ossl_param_st* (i8*, i8*)* %call35, %struct.ossl_param_st* (i8*, i8*)** %23, align 8, !tbaa !21
  br label %for.inc

sw.bb38:                                          ; preds = %for.cond
  %34 = load i8* (i8*, i32 (%struct.ossl_param_st*, i8*)*, i8*)*, i8* (i8*, i32 (%struct.ossl_param_st*, i8*)*, i8*)** %22, align 8, !tbaa !22
  %cmp39 = icmp eq i8* (i8*, i32 (%struct.ossl_param_st*, i8*)*, i8*)* %34, null
  br i1 %cmp39, label %if.then40, label %for.inc

if.then40:                                        ; preds = %sw.bb38
  %call41 = tail call fastcc i8* (i8*, i32 (%struct.ossl_param_st*, i8*)*, i8*)* @OSSL_FUNC_keymgmt_gen(%struct.ossl_dispatch_st* noundef nonnull %fns.0) #7
  store i8* (i8*, i32 (%struct.ossl_param_st*, i8*)*, i8*)* %call41, i8* (i8*, i32 (%struct.ossl_param_st*, i8*)*, i8*)** %22, align 8, !tbaa !22
  br label %for.inc

sw.bb44:                                          ; preds = %for.cond
  %35 = load void (i8*)*, void (i8*)** %21, align 8, !tbaa !23
  %cmp45 = icmp eq void (i8*)* %35, null
  br i1 %cmp45, label %if.then46, label %for.inc

if.then46:                                        ; preds = %sw.bb44
  %call47 = tail call fastcc void (i8*)* @OSSL_FUNC_keymgmt_gen_cleanup(%struct.ossl_dispatch_st* noundef nonnull %fns.0) #7
  store void (i8*)* %call47, void (i8*)** %21, align 8, !tbaa !23
  br label %for.inc

sw.bb50:                                          ; preds = %for.cond
  %36 = load void (i8*)*, void (i8*)** %20, align 8, !tbaa !24
  %cmp51 = icmp eq void (i8*)* %36, null
  br i1 %cmp51, label %if.then52, label %for.inc

if.then52:                                        ; preds = %sw.bb50
  %call53 = tail call fastcc void (i8*)* @OSSL_FUNC_keymgmt_free(%struct.ossl_dispatch_st* noundef nonnull %fns.0) #7
  store void (i8*)* %call53, void (i8*)** %20, align 8, !tbaa !24
  br label %for.inc

sw.bb56:                                          ; preds = %for.cond
  %37 = load i8* (i8*, i64)*, i8* (i8*, i64)** %19, align 8, !tbaa !25
  %cmp57 = icmp eq i8* (i8*, i64)* %37, null
  br i1 %cmp57, label %if.then58, label %for.inc

if.then58:                                        ; preds = %sw.bb56
  %call59 = tail call fastcc i8* (i8*, i64)* @OSSL_FUNC_keymgmt_load(%struct.ossl_dispatch_st* noundef nonnull %fns.0) #7
  store i8* (i8*, i64)* %call59, i8* (i8*, i64)** %19, align 8, !tbaa !25
  br label %for.inc

sw.bb62:                                          ; preds = %for.cond
  %38 = load i32 (i8*, %struct.ossl_param_st*)*, i32 (i8*, %struct.ossl_param_st*)** %18, align 8, !tbaa !26
  %cmp63 = icmp eq i32 (i8*, %struct.ossl_param_st*)* %38, null
  br i1 %cmp63, label %if.then64, label %for.inc

if.then64:                                        ; preds = %sw.bb62
  %inc65 = add nsw i32 %getparamfncnt.0, 1
  %call66 = tail call fastcc i32 (i8*, %struct.ossl_param_st*)* @OSSL_FUNC_keymgmt_get_params(%struct.ossl_dispatch_st* noundef nonnull %fns.0) #7
  store i32 (i8*, %struct.ossl_param_st*)* %call66, i32 (i8*, %struct.ossl_param_st*)** %18, align 8, !tbaa !26
  br label %for.inc

sw.bb69:                                          ; preds = %for.cond
  %39 = load %struct.ossl_param_st* (i8*)*, %struct.ossl_param_st* (i8*)** %17, align 8, !tbaa !27
  %cmp70 = icmp eq %struct.ossl_param_st* (i8*)* %39, null
  br i1 %cmp70, label %if.then71, label %for.inc

if.then71:                                        ; preds = %sw.bb69
  %inc72 = add nsw i32 %getparamfncnt.0, 1
  %call73 = tail call fastcc %struct.ossl_param_st* (i8*)* @OSSL_FUNC_keymgmt_gettable_params(%struct.ossl_dispatch_st* noundef nonnull %fns.0) #7
  store %struct.ossl_param_st* (i8*)* %call73, %struct.ossl_param_st* (i8*)** %17, align 8, !tbaa !27
  br label %for.inc

sw.bb76:                                          ; preds = %for.cond
  %40 = load i32 (i8*, %struct.ossl_param_st*)*, i32 (i8*, %struct.ossl_param_st*)** %16, align 8, !tbaa !28
  %cmp77 = icmp eq i32 (i8*, %struct.ossl_param_st*)* %40, null
  br i1 %cmp77, label %if.then78, label %for.inc

if.then78:                                        ; preds = %sw.bb76
  %inc79 = add nsw i32 %setparamfncnt.0, 1
  %call80 = tail call fastcc i32 (i8*, %struct.ossl_param_st*)* @OSSL_FUNC_keymgmt_set_params(%struct.ossl_dispatch_st* noundef nonnull %fns.0) #7
  store i32 (i8*, %struct.ossl_param_st*)* %call80, i32 (i8*, %struct.ossl_param_st*)** %16, align 8, !tbaa !28
  br label %for.inc

sw.bb83:                                          ; preds = %for.cond
  %41 = load %struct.ossl_param_st* (i8*)*, %struct.ossl_param_st* (i8*)** %15, align 8, !tbaa !29
  %cmp84 = icmp eq %struct.ossl_param_st* (i8*)* %41, null
  br i1 %cmp84, label %if.then85, label %for.inc

if.then85:                                        ; preds = %sw.bb83
  %inc86 = add nsw i32 %setparamfncnt.0, 1
  %call87 = tail call fastcc %struct.ossl_param_st* (i8*)* @OSSL_FUNC_keymgmt_settable_params(%struct.ossl_dispatch_st* noundef nonnull %fns.0) #7
  store %struct.ossl_param_st* (i8*)* %call87, %struct.ossl_param_st* (i8*)** %15, align 8, !tbaa !29
  br label %for.inc

sw.bb90:                                          ; preds = %for.cond
  %42 = load i8* (i32)*, i8* (i32)** %14, align 8, !tbaa !30
  %cmp91 = icmp eq i8* (i32)* %42, null
  br i1 %cmp91, label %if.then92, label %for.inc

if.then92:                                        ; preds = %sw.bb90
  %call93 = tail call fastcc i8* (i32)* @OSSL_FUNC_keymgmt_query_operation_name(%struct.ossl_dispatch_st* noundef nonnull %fns.0) #7
  store i8* (i32)* %call93, i8* (i32)** %14, align 8, !tbaa !30
  br label %for.inc

sw.bb96:                                          ; preds = %for.cond
  %43 = load i32 (i8*, i32)*, i32 (i8*, i32)** %13, align 8, !tbaa !31
  %cmp97 = icmp eq i32 (i8*, i32)* %43, null
  br i1 %cmp97, label %if.then98, label %for.inc

if.then98:                                        ; preds = %sw.bb96
  %call99 = tail call fastcc i32 (i8*, i32)* @OSSL_FUNC_keymgmt_has(%struct.ossl_dispatch_st* noundef nonnull %fns.0) #7
  store i32 (i8*, i32)* %call99, i32 (i8*, i32)** %13, align 8, !tbaa !31
  br label %for.inc

sw.bb102:                                         ; preds = %for.cond
  %44 = load i8* (i8*, i32)*, i8* (i8*, i32)** %12, align 8, !tbaa !32
  %cmp103 = icmp eq i8* (i8*, i32)* %44, null
  br i1 %cmp103, label %if.then104, label %for.inc

if.then104:                                       ; preds = %sw.bb102
  %call105 = tail call fastcc i8* (i8*, i32)* @OSSL_FUNC_keymgmt_dup(%struct.ossl_dispatch_st* noundef nonnull %fns.0) #7
  store i8* (i8*, i32)* %call105, i8* (i8*, i32)** %12, align 8, !tbaa !32
  br label %for.inc

sw.bb108:                                         ; preds = %for.cond
  %45 = load i32 (i8*, i32, i32)*, i32 (i8*, i32, i32)** %11, align 8, !tbaa !33
  %cmp109 = icmp eq i32 (i8*, i32, i32)* %45, null
  br i1 %cmp109, label %if.then110, label %for.inc

if.then110:                                       ; preds = %sw.bb108
  %call111 = tail call fastcc i32 (i8*, i32, i32)* @OSSL_FUNC_keymgmt_validate(%struct.ossl_dispatch_st* noundef nonnull %fns.0) #7
  store i32 (i8*, i32, i32)* %call111, i32 (i8*, i32, i32)** %11, align 8, !tbaa !33
  br label %for.inc

sw.bb114:                                         ; preds = %for.cond
  %46 = load i32 (i8*, i8*, i32)*, i32 (i8*, i8*, i32)** %10, align 8, !tbaa !34
  %cmp115 = icmp eq i32 (i8*, i8*, i32)* %46, null
  br i1 %cmp115, label %if.then116, label %for.inc

if.then116:                                       ; preds = %sw.bb114
  %call117 = tail call fastcc i32 (i8*, i8*, i32)* @OSSL_FUNC_keymgmt_match(%struct.ossl_dispatch_st* noundef nonnull %fns.0) #7
  store i32 (i8*, i8*, i32)* %call117, i32 (i8*, i8*, i32)** %10, align 8, !tbaa !34
  br label %for.inc

sw.bb120:                                         ; preds = %for.cond
  %47 = load i32 (i8*, i32, %struct.ossl_param_st*)*, i32 (i8*, i32, %struct.ossl_param_st*)** %9, align 8, !tbaa !35
  %cmp121 = icmp eq i32 (i8*, i32, %struct.ossl_param_st*)* %47, null
  br i1 %cmp121, label %if.then122, label %for.inc

if.then122:                                       ; preds = %sw.bb120
  %inc123 = add nsw i32 %importfncnt.0, 1
  %call124 = tail call fastcc i32 (i8*, i32, %struct.ossl_param_st*)* @OSSL_FUNC_keymgmt_import(%struct.ossl_dispatch_st* noundef nonnull %fns.0) #7
  store i32 (i8*, i32, %struct.ossl_param_st*)* %call124, i32 (i8*, i32, %struct.ossl_param_st*)** %9, align 8, !tbaa !35
  br label %for.inc

sw.bb127:                                         ; preds = %for.cond
  %48 = load %struct.ossl_param_st* (i32)*, %struct.ossl_param_st* (i32)** %8, align 8, !tbaa !36
  %cmp128 = icmp eq %struct.ossl_param_st* (i32)* %48, null
  br i1 %cmp128, label %if.then129, label %for.inc

if.then129:                                       ; preds = %sw.bb127
  %inc130 = add nsw i32 %importfncnt.0, 1
  %call131 = tail call fastcc %struct.ossl_param_st* (i32)* @OSSL_FUNC_keymgmt_import_types(%struct.ossl_dispatch_st* noundef nonnull %fns.0) #7
  store %struct.ossl_param_st* (i32)* %call131, %struct.ossl_param_st* (i32)** %8, align 8, !tbaa !36
  br label %for.inc

sw.bb134:                                         ; preds = %for.cond
  %49 = load i32 (i8*, i32, i32 (%struct.ossl_param_st*, i8*)*, i8*)*, i32 (i8*, i32, i32 (%struct.ossl_param_st*, i8*)*, i8*)** %7, align 8, !tbaa !37
  %cmp135 = icmp eq i32 (i8*, i32, i32 (%struct.ossl_param_st*, i8*)*, i8*)* %49, null
  br i1 %cmp135, label %if.then136, label %for.inc

if.then136:                                       ; preds = %sw.bb134
  %inc137 = add nsw i32 %exportfncnt.0, 1
  %call138 = tail call fastcc i32 (i8*, i32, i32 (%struct.ossl_param_st*, i8*)*, i8*)* @OSSL_FUNC_keymgmt_export(%struct.ossl_dispatch_st* noundef nonnull %fns.0) #7
  store i32 (i8*, i32, i32 (%struct.ossl_param_st*, i8*)*, i8*)* %call138, i32 (i8*, i32, i32 (%struct.ossl_param_st*, i8*)*, i8*)** %7, align 8, !tbaa !37
  br label %for.inc

sw.bb141:                                         ; preds = %for.cond
  %50 = load %struct.ossl_param_st* (i32)*, %struct.ossl_param_st* (i32)** %6, align 8, !tbaa !38
  %cmp142 = icmp eq %struct.ossl_param_st* (i32)* %50, null
  br i1 %cmp142, label %if.then143, label %for.inc

if.then143:                                       ; preds = %sw.bb141
  %inc144 = add nsw i32 %exportfncnt.0, 1
  %call145 = tail call fastcc %struct.ossl_param_st* (i32)* @OSSL_FUNC_keymgmt_export_types(%struct.ossl_dispatch_st* noundef nonnull %fns.0) #7
  store %struct.ossl_param_st* (i32)* %call145, %struct.ossl_param_st* (i32)** %6, align 8, !tbaa !38
  br label %for.inc

for.inc:                                          ; preds = %for.cond, %if.then9, %sw.bb, %if.then15, %sw.bb13, %if.then21, %sw.bb19, %if.then27, %sw.bb25, %if.then33, %sw.bb31, %if.then40, %sw.bb38, %if.then46, %sw.bb44, %if.then52, %sw.bb50, %if.then58, %sw.bb56, %if.then64, %sw.bb62, %if.then71, %sw.bb69, %if.then78, %sw.bb76, %if.then85, %sw.bb83, %if.then92, %sw.bb90, %if.then98, %sw.bb96, %if.then104, %sw.bb102, %if.then110, %sw.bb108, %if.then116, %sw.bb114, %if.then122, %sw.bb120, %if.then129, %sw.bb127, %if.then136, %sw.bb134, %if.then143, %sw.bb141
  %setparamfncnt.1 = phi i32 [ %setparamfncnt.0, %if.then143 ], [ %setparamfncnt.0, %sw.bb141 ], [ %setparamfncnt.0, %if.then136 ], [ %setparamfncnt.0, %sw.bb134 ], [ %setparamfncnt.0, %if.then129 ], [ %setparamfncnt.0, %sw.bb127 ], [ %setparamfncnt.0, %if.then122 ], [ %setparamfncnt.0, %sw.bb120 ], [ %setparamfncnt.0, %if.then116 ], [ %setparamfncnt.0, %sw.bb114 ], [ %setparamfncnt.0, %if.then110 ], [ %setparamfncnt.0, %sw.bb108 ], [ %setparamfncnt.0, %if.then104 ], [ %setparamfncnt.0, %sw.bb102 ], [ %setparamfncnt.0, %if.then98 ], [ %setparamfncnt.0, %sw.bb96 ], [ %setparamfncnt.0, %if.then92 ], [ %setparamfncnt.0, %sw.bb90 ], [ %inc86, %if.then85 ], [ %setparamfncnt.0, %sw.bb83 ], [ %inc79, %if.then78 ], [ %setparamfncnt.0, %sw.bb76 ], [ %setparamfncnt.0, %if.then71 ], [ %setparamfncnt.0, %sw.bb69 ], [ %setparamfncnt.0, %if.then64 ], [ %setparamfncnt.0, %sw.bb62 ], [ %setparamfncnt.0, %if.then58 ], [ %setparamfncnt.0, %sw.bb56 ], [ %setparamfncnt.0, %if.then52 ], [ %setparamfncnt.0, %sw.bb50 ], [ %setparamfncnt.0, %if.then46 ], [ %setparamfncnt.0, %sw.bb44 ], [ %setparamfncnt.0, %if.then40 ], [ %setparamfncnt.0, %sw.bb38 ], [ %setparamfncnt.0, %if.then33 ], [ %setparamfncnt.0, %sw.bb31 ], [ %setparamfncnt.0, %if.then27 ], [ %setparamfncnt.0, %sw.bb25 ], [ %setparamfncnt.0, %if.then21 ], [ %setparamfncnt.0, %sw.bb19 ], [ %setparamfncnt.0, %if.then15 ], [ %setparamfncnt.0, %sw.bb13 ], [ %setparamfncnt.0, %if.then9 ], [ %setparamfncnt.0, %sw.bb ], [ %setparamfncnt.0, %for.cond ]
  %getparamfncnt.1 = phi i32 [ %getparamfncnt.0, %if.then143 ], [ %getparamfncnt.0, %sw.bb141 ], [ %getparamfncnt.0, %if.then136 ], [ %getparamfncnt.0, %sw.bb134 ], [ %getparamfncnt.0, %if.then129 ], [ %getparamfncnt.0, %sw.bb127 ], [ %getparamfncnt.0, %if.then122 ], [ %getparamfncnt.0, %sw.bb120 ], [ %getparamfncnt.0, %if.then116 ], [ %getparamfncnt.0, %sw.bb114 ], [ %getparamfncnt.0, %if.then110 ], [ %getparamfncnt.0, %sw.bb108 ], [ %getparamfncnt.0, %if.then104 ], [ %getparamfncnt.0, %sw.bb102 ], [ %getparamfncnt.0, %if.then98 ], [ %getparamfncnt.0, %sw.bb96 ], [ %getparamfncnt.0, %if.then92 ], [ %getparamfncnt.0, %sw.bb90 ], [ %getparamfncnt.0, %if.then85 ], [ %getparamfncnt.0, %sw.bb83 ], [ %getparamfncnt.0, %if.then78 ], [ %getparamfncnt.0, %sw.bb76 ], [ %inc72, %if.then71 ], [ %getparamfncnt.0, %sw.bb69 ], [ %inc65, %if.then64 ], [ %getparamfncnt.0, %sw.bb62 ], [ %getparamfncnt.0, %if.then58 ], [ %getparamfncnt.0, %sw.bb56 ], [ %getparamfncnt.0, %if.then52 ], [ %getparamfncnt.0, %sw.bb50 ], [ %getparamfncnt.0, %if.then46 ], [ %getparamfncnt.0, %sw.bb44 ], [ %getparamfncnt.0, %if.then40 ], [ %getparamfncnt.0, %sw.bb38 ], [ %getparamfncnt.0, %if.then33 ], [ %getparamfncnt.0, %sw.bb31 ], [ %getparamfncnt.0, %if.then27 ], [ %getparamfncnt.0, %sw.bb25 ], [ %getparamfncnt.0, %if.then21 ], [ %getparamfncnt.0, %sw.bb19 ], [ %getparamfncnt.0, %if.then15 ], [ %getparamfncnt.0, %sw.bb13 ], [ %getparamfncnt.0, %if.then9 ], [ %getparamfncnt.0, %sw.bb ], [ %getparamfncnt.0, %for.cond ]
  %setgenparamfncnt.1 = phi i32 [ %setgenparamfncnt.0, %if.then143 ], [ %setgenparamfncnt.0, %sw.bb141 ], [ %setgenparamfncnt.0, %if.then136 ], [ %setgenparamfncnt.0, %sw.bb134 ], [ %setgenparamfncnt.0, %if.then129 ], [ %setgenparamfncnt.0, %sw.bb127 ], [ %setgenparamfncnt.0, %if.then122 ], [ %setgenparamfncnt.0, %sw.bb120 ], [ %setgenparamfncnt.0, %if.then116 ], [ %setgenparamfncnt.0, %sw.bb114 ], [ %setgenparamfncnt.0, %if.then110 ], [ %setgenparamfncnt.0, %sw.bb108 ], [ %setgenparamfncnt.0, %if.then104 ], [ %setgenparamfncnt.0, %sw.bb102 ], [ %setgenparamfncnt.0, %if.then98 ], [ %setgenparamfncnt.0, %sw.bb96 ], [ %setgenparamfncnt.0, %if.then92 ], [ %setgenparamfncnt.0, %sw.bb90 ], [ %setgenparamfncnt.0, %if.then85 ], [ %setgenparamfncnt.0, %sw.bb83 ], [ %setgenparamfncnt.0, %if.then78 ], [ %setgenparamfncnt.0, %sw.bb76 ], [ %setgenparamfncnt.0, %if.then71 ], [ %setgenparamfncnt.0, %sw.bb69 ], [ %setgenparamfncnt.0, %if.then64 ], [ %setgenparamfncnt.0, %sw.bb62 ], [ %setgenparamfncnt.0, %if.then58 ], [ %setgenparamfncnt.0, %sw.bb56 ], [ %setgenparamfncnt.0, %if.then52 ], [ %setgenparamfncnt.0, %sw.bb50 ], [ %setgenparamfncnt.0, %if.then46 ], [ %setgenparamfncnt.0, %sw.bb44 ], [ %setgenparamfncnt.0, %if.then40 ], [ %setgenparamfncnt.0, %sw.bb38 ], [ %inc34, %if.then33 ], [ %setgenparamfncnt.0, %sw.bb31 ], [ %inc, %if.then27 ], [ %setgenparamfncnt.0, %sw.bb25 ], [ %setgenparamfncnt.0, %if.then21 ], [ %setgenparamfncnt.0, %sw.bb19 ], [ %setgenparamfncnt.0, %if.then15 ], [ %setgenparamfncnt.0, %sw.bb13 ], [ %setgenparamfncnt.0, %if.then9 ], [ %setgenparamfncnt.0, %sw.bb ], [ %setgenparamfncnt.0, %for.cond ]
  %importfncnt.1 = phi i32 [ %importfncnt.0, %if.then143 ], [ %importfncnt.0, %sw.bb141 ], [ %importfncnt.0, %if.then136 ], [ %importfncnt.0, %sw.bb134 ], [ %inc130, %if.then129 ], [ %importfncnt.0, %sw.bb127 ], [ %inc123, %if.then122 ], [ %importfncnt.0, %sw.bb120 ], [ %importfncnt.0, %if.then116 ], [ %importfncnt.0, %sw.bb114 ], [ %importfncnt.0, %if.then110 ], [ %importfncnt.0, %sw.bb108 ], [ %importfncnt.0, %if.then104 ], [ %importfncnt.0, %sw.bb102 ], [ %importfncnt.0, %if.then98 ], [ %importfncnt.0, %sw.bb96 ], [ %importfncnt.0, %if.then92 ], [ %importfncnt.0, %sw.bb90 ], [ %importfncnt.0, %if.then85 ], [ %importfncnt.0, %sw.bb83 ], [ %importfncnt.0, %if.then78 ], [ %importfncnt.0, %sw.bb76 ], [ %importfncnt.0, %if.then71 ], [ %importfncnt.0, %sw.bb69 ], [ %importfncnt.0, %if.then64 ], [ %importfncnt.0, %sw.bb62 ], [ %importfncnt.0, %if.then58 ], [ %importfncnt.0, %sw.bb56 ], [ %importfncnt.0, %if.then52 ], [ %importfncnt.0, %sw.bb50 ], [ %importfncnt.0, %if.then46 ], [ %importfncnt.0, %sw.bb44 ], [ %importfncnt.0, %if.then40 ], [ %importfncnt.0, %sw.bb38 ], [ %importfncnt.0, %if.then33 ], [ %importfncnt.0, %sw.bb31 ], [ %importfncnt.0, %if.then27 ], [ %importfncnt.0, %sw.bb25 ], [ %importfncnt.0, %if.then21 ], [ %importfncnt.0, %sw.bb19 ], [ %importfncnt.0, %if.then15 ], [ %importfncnt.0, %sw.bb13 ], [ %importfncnt.0, %if.then9 ], [ %importfncnt.0, %sw.bb ], [ %importfncnt.0, %for.cond ]
  %exportfncnt.1 = phi i32 [ %inc144, %if.then143 ], [ %exportfncnt.0, %sw.bb141 ], [ %inc137, %if.then136 ], [ %exportfncnt.0, %sw.bb134 ], [ %exportfncnt.0, %if.then129 ], [ %exportfncnt.0, %sw.bb127 ], [ %exportfncnt.0, %if.then122 ], [ %exportfncnt.0, %sw.bb120 ], [ %exportfncnt.0, %if.then116 ], [ %exportfncnt.0, %sw.bb114 ], [ %exportfncnt.0, %if.then110 ], [ %exportfncnt.0, %sw.bb108 ], [ %exportfncnt.0, %if.then104 ], [ %exportfncnt.0, %sw.bb102 ], [ %exportfncnt.0, %if.then98 ], [ %exportfncnt.0, %sw.bb96 ], [ %exportfncnt.0, %if.then92 ], [ %exportfncnt.0, %sw.bb90 ], [ %exportfncnt.0, %if.then85 ], [ %exportfncnt.0, %sw.bb83 ], [ %exportfncnt.0, %if.then78 ], [ %exportfncnt.0, %sw.bb76 ], [ %exportfncnt.0, %if.then71 ], [ %exportfncnt.0, %sw.bb69 ], [ %exportfncnt.0, %if.then64 ], [ %exportfncnt.0, %sw.bb62 ], [ %exportfncnt.0, %if.then58 ], [ %exportfncnt.0, %sw.bb56 ], [ %exportfncnt.0, %if.then52 ], [ %exportfncnt.0, %sw.bb50 ], [ %exportfncnt.0, %if.then46 ], [ %exportfncnt.0, %sw.bb44 ], [ %exportfncnt.0, %if.then40 ], [ %exportfncnt.0, %sw.bb38 ], [ %exportfncnt.0, %if.then33 ], [ %exportfncnt.0, %sw.bb31 ], [ %exportfncnt.0, %if.then27 ], [ %exportfncnt.0, %sw.bb25 ], [ %exportfncnt.0, %if.then21 ], [ %exportfncnt.0, %sw.bb19 ], [ %exportfncnt.0, %if.then15 ], [ %exportfncnt.0, %sw.bb13 ], [ %exportfncnt.0, %if.then9 ], [ %exportfncnt.0, %sw.bb ], [ %exportfncnt.0, %for.cond ]
  %incdec.ptr = getelementptr inbounds %struct.ossl_dispatch_st, %struct.ossl_dispatch_st* %fns.0, i64 1
  br label %for.cond, !llvm.loop !39

for.end:                                          ; preds = %for.cond
  %51 = load void (i8*)*, void (i8*)** %20, align 8, !tbaa !24
  %cmp149 = icmp eq void (i8*)* %51, null
  br i1 %cmp149, label %if.then189, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.end
  %52 = load i8* (i8*)*, i8* (i8*)** %27, align 8, !tbaa !17
  %cmp151 = icmp eq i8* (i8*)* %52, null
  br i1 %cmp151, label %land.lhs.true, label %lor.lhs.false157

land.lhs.true:                                    ; preds = %lor.lhs.false
  %53 = load i8* (i8*, i32 (%struct.ossl_param_st*, i8*)*, i8*)*, i8* (i8*, i32 (%struct.ossl_param_st*, i8*)*, i8*)** %22, align 8, !tbaa !22
  %cmp153 = icmp eq i8* (i8*, i32 (%struct.ossl_param_st*, i8*)*, i8*)* %53, null
  br i1 %cmp153, label %land.lhs.true154, label %lor.lhs.false157

land.lhs.true154:                                 ; preds = %land.lhs.true
  %54 = load i8* (i8*, i64)*, i8* (i8*, i64)** %19, align 8, !tbaa !25
  %cmp156 = icmp eq i8* (i8*, i64)* %54, null
  br i1 %cmp156, label %if.then189, label %lor.lhs.false157

lor.lhs.false157:                                 ; preds = %land.lhs.true154, %land.lhs.true, %lor.lhs.false
  %55 = load i32 (i8*, i32)*, i32 (i8*, i32)** %13, align 8, !tbaa !31
  %cmp159 = icmp ne i32 (i8*, i32)* %55, null
  %56 = and i32 %getparamfncnt.0, -3
  %.not = icmp eq i32 %56, 0
  %or.cond = select i1 %cmp159, i1 %.not, i1 false
  %57 = and i32 %setparamfncnt.0, -3
  %.not315 = icmp eq i32 %57, 0
  %or.cond319 = select i1 %or.cond, i1 %.not315, i1 false
  %58 = and i32 %setgenparamfncnt.0, -3
  %.not316 = icmp eq i32 %58, 0
  %or.cond320 = select i1 %or.cond319, i1 %.not316, i1 false
  %59 = and i32 %importfncnt.0, -3
  %.not317 = icmp eq i32 %59, 0
  %or.cond321 = select i1 %or.cond320, i1 %.not317, i1 false
  %60 = and i32 %exportfncnt.0, -3
  %.not318 = icmp eq i32 %60, 0
  %or.cond322 = select i1 %or.cond321, i1 %.not318, i1 false
  br i1 %or.cond322, label %lor.lhs.false180, label %if.then189

lor.lhs.false180:                                 ; preds = %lor.lhs.false157
  %61 = load i8* (i8*, i32 (%struct.ossl_param_st*, i8*)*, i8*)*, i8* (i8*, i32 (%struct.ossl_param_st*, i8*)*, i8*)** %22, align 8, !tbaa !22
  %cmp182.not = icmp eq i8* (i8*, i32 (%struct.ossl_param_st*, i8*)*, i8*)* %61, null
  br i1 %cmp182.not, label %if.end190, label %land.lhs.true183

land.lhs.true183:                                 ; preds = %lor.lhs.false180
  %62 = load i8* (i8*, i32, %struct.ossl_param_st*)*, i8* (i8*, i32, %struct.ossl_param_st*)** %26, align 8, !tbaa !18
  %cmp185 = icmp eq i8* (i8*, i32, %struct.ossl_param_st*)* %62, null
  br i1 %cmp185, label %if.then189, label %lor.lhs.false186

lor.lhs.false186:                                 ; preds = %land.lhs.true183
  %63 = load void (i8*)*, void (i8*)** %21, align 8, !tbaa !23
  %cmp188 = icmp eq void (i8*)* %63, null
  br i1 %cmp188, label %if.then189, label %if.end190

if.then189:                                       ; preds = %lor.lhs.false186, %land.lhs.true183, %lor.lhs.false157, %land.lhs.true154, %for.end
  tail call void @EVP_KEYMGMT_free(%struct.evp_keymgmt_st* noundef nonnull %1) #7
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 noundef 196, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.keymgmt_from_algorithm, i64 0, i64 0)) #6
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 6, i32 noundef 193, i8* noundef null) #6
  br label %cleanup

if.end190:                                        ; preds = %lor.lhs.false186, %lor.lhs.false180
  %prov191 = getelementptr inbounds i8, i8* %call, i64 24
  %64 = bitcast i8* %prov191 to %struct.ossl_provider_st**
  store %struct.ossl_provider_st* %prov, %struct.ossl_provider_st** %64, align 8, !tbaa !41
  %cmp192.not = icmp eq %struct.ossl_provider_st* %prov, null
  br i1 %cmp192.not, label %cleanup, label %if.then193

if.then193:                                       ; preds = %if.end190
  %call194 = tail call i32 @ossl_provider_up_ref(%struct.ossl_provider_st* noundef nonnull %prov) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end190, %if.then193, %entry, %if.then189, %if.then4
  %retval.0 = phi i8* [ null, %if.then4 ], [ null, %if.then189 ], [ null, %entry ], [ %call, %if.then193 ], [ %call, %if.end190 ]
  ret i8* %retval.0
}

; Function Attrs: mustprogress nofree noinline nounwind uwtable willreturn
define i32 @EVP_KEYMGMT_up_ref(%struct.evp_keymgmt_st* nocapture noundef %keymgmt) #2 {
entry:
  %ref = alloca i32, align 4
  %0 = bitcast i32* %ref to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #8
  %refcnt = getelementptr inbounds %struct.evp_keymgmt_st, %struct.evp_keymgmt_st* %keymgmt, i64 0, i32 5
  call fastcc void @CRYPTO_UP_REF(i32* noundef nonnull %refcnt, i32* noundef nonnull %ref) #7
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #8
  ret i32 1
}

; Function Attrs: noinline nounwind uwtable
define void @EVP_KEYMGMT_free(%struct.evp_keymgmt_st* noundef %keymgmt) #0 {
entry:
  %ref = alloca i32, align 4
  %0 = bitcast i32* %ref to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #8
  store i32 0, i32* %ref, align 4, !tbaa !42
  %cmp = icmp eq %struct.evp_keymgmt_st* %keymgmt, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %refcnt = getelementptr inbounds %struct.evp_keymgmt_st, %struct.evp_keymgmt_st* %keymgmt, i64 0, i32 5
  call fastcc void @CRYPTO_DOWN_REF(i32* noundef nonnull %refcnt, i32* noundef nonnull %ref) #7
  %1 = load i32, i32* %ref, align 4, !tbaa !42
  %cmp1 = icmp sgt i32 %1, 0
  br i1 %cmp1, label %cleanup, label %if.end3

if.end3:                                          ; preds = %if.end
  %lock = getelementptr inbounds %struct.evp_keymgmt_st, %struct.evp_keymgmt_st* %keymgmt, i64 0, i32 6
  %type_name = getelementptr inbounds %struct.evp_keymgmt_st, %struct.evp_keymgmt_st* %keymgmt, i64 0, i32 2
  %2 = load i8*, i8** %type_name, align 8, !tbaa !12
  tail call void @CRYPTO_free(i8* noundef %2, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 noundef 243) #6
  %prov = getelementptr inbounds %struct.evp_keymgmt_st, %struct.evp_keymgmt_st* %keymgmt, i64 0, i32 4
  %3 = load %struct.ossl_provider_st*, %struct.ossl_provider_st** %prov, align 8, !tbaa !41
  tail call void @ossl_provider_free(%struct.ossl_provider_st* noundef %3) #6
  %4 = load i8*, i8** %lock, align 8, !tbaa !43
  tail call void @CRYPTO_THREAD_lock_free(i8* noundef %4) #6
  %5 = bitcast %struct.evp_keymgmt_st* %keymgmt to i8*
  tail call void @CRYPTO_free(i8* noundef nonnull %5, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 noundef 246) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry, %if.end3
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define %struct.evp_keymgmt_st* @EVP_KEYMGMT_fetch(%struct.ossl_lib_ctx_st* noundef %ctx, i8* noundef %algorithm, i8* noundef %properties) local_unnamed_addr #0 {
entry:
  %call = tail call i8* @evp_generic_fetch(%struct.ossl_lib_ctx_st* noundef %ctx, i32 noundef 10, i8* noundef %algorithm, i8* noundef %properties, i8* (i32, %struct.ossl_algorithm_st*, %struct.ossl_provider_st*)* noundef nonnull @keymgmt_from_algorithm, i32 (i8*)* noundef bitcast (i32 (%struct.evp_keymgmt_st*)* @EVP_KEYMGMT_up_ref to i32 (i8*)*), void (i8*)* noundef bitcast (void (%struct.evp_keymgmt_st*)* @EVP_KEYMGMT_free to void (i8*)*)) #6
  %0 = bitcast i8* %call to %struct.evp_keymgmt_st*
  ret %struct.evp_keymgmt_st* %0
}

declare i8* @evp_generic_fetch(%struct.ossl_lib_ctx_st* noundef, i32 noundef, i8* noundef, i8* noundef, i8* (i32, %struct.ossl_algorithm_st*, %struct.ossl_provider_st*)* noundef, i32 (i8*)* noundef, void (i8*)* noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #3

; Function Attrs: mustprogress nofree noinline norecurse nounwind uwtable willreturn
define internal fastcc void @CRYPTO_UP_REF(i32* nocapture noundef %val, i32* nocapture noundef writeonly %ret) unnamed_addr #4 {
entry:
  %0 = atomicrmw add i32* %val, i32 1 monotonic, align 4
  %add = add nsw i32 %0, 1
  store i32 %add, i32* %ret, align 4, !tbaa !42
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #3

; Function Attrs: mustprogress nofree noinline norecurse nounwind uwtable willreturn
define internal fastcc void @CRYPTO_DOWN_REF(i32* nocapture noundef %val, i32* nocapture noundef writeonly %ret) unnamed_addr #4 {
entry:
  %0 = atomicrmw sub i32* %val, i32 1 monotonic, align 4
  %sub = add nsw i32 %0, -1
  store i32 %sub, i32* %ret, align 4, !tbaa !42
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

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define %struct.ossl_provider_st* @EVP_KEYMGMT_get0_provider(%struct.evp_keymgmt_st* nocapture noundef readonly %keymgmt) local_unnamed_addr #5 {
entry:
  %prov = getelementptr inbounds %struct.evp_keymgmt_st, %struct.evp_keymgmt_st* %keymgmt, i64 0, i32 4
  %0 = load %struct.ossl_provider_st*, %struct.ossl_provider_st** %prov, align 8, !tbaa !41
  ret %struct.ossl_provider_st* %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define i32 @evp_keymgmt_get_number(%struct.evp_keymgmt_st* nocapture noundef readonly %keymgmt) local_unnamed_addr #5 {
entry:
  %name_id = getelementptr inbounds %struct.evp_keymgmt_st, %struct.evp_keymgmt_st* %keymgmt, i64 0, i32 1
  %0 = load i32, i32* %name_id, align 4, !tbaa !9
  ret i32 %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define i8* @EVP_KEYMGMT_get0_description(%struct.evp_keymgmt_st* nocapture noundef readonly %keymgmt) local_unnamed_addr #5 {
entry:
  %description = getelementptr inbounds %struct.evp_keymgmt_st, %struct.evp_keymgmt_st* %keymgmt, i64 0, i32 3
  %0 = load i8*, i8** %description, align 8, !tbaa !14
  ret i8* %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define i8* @EVP_KEYMGMT_get0_name(%struct.evp_keymgmt_st* nocapture noundef readonly %keymgmt) local_unnamed_addr #5 {
entry:
  %type_name = getelementptr inbounds %struct.evp_keymgmt_st, %struct.evp_keymgmt_st* %keymgmt, i64 0, i32 2
  %0 = load i8*, i8** %type_name, align 8, !tbaa !12
  ret i8* %0
}

; Function Attrs: noinline nounwind uwtable
define i32 @EVP_KEYMGMT_is_a(%struct.evp_keymgmt_st* nocapture noundef readonly %keymgmt, i8* noundef %name) local_unnamed_addr #0 {
entry:
  %prov = getelementptr inbounds %struct.evp_keymgmt_st, %struct.evp_keymgmt_st* %keymgmt, i64 0, i32 4
  %0 = load %struct.ossl_provider_st*, %struct.ossl_provider_st** %prov, align 8, !tbaa !41
  %name_id = getelementptr inbounds %struct.evp_keymgmt_st, %struct.evp_keymgmt_st* %keymgmt, i64 0, i32 1
  %1 = load i32, i32* %name_id, align 4, !tbaa !9
  %call = tail call i32 @evp_is_a(%struct.ossl_provider_st* noundef %0, i32 noundef %1, i8* noundef null, i8* noundef %name) #6
  ret i32 %call
}

declare i32 @evp_is_a(%struct.ossl_provider_st* noundef, i32 noundef, i8* noundef, i8* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define void @EVP_KEYMGMT_do_all_provided(%struct.ossl_lib_ctx_st* noundef %libctx, void (%struct.evp_keymgmt_st*, i8*)* noundef %fn, i8* noundef %arg) local_unnamed_addr #0 {
entry:
  %0 = bitcast void (%struct.evp_keymgmt_st*, i8*)* %fn to void (i8*, i8*)*
  tail call void @evp_generic_do_all(%struct.ossl_lib_ctx_st* noundef %libctx, i32 noundef 10, void (i8*, i8*)* noundef %0, i8* noundef %arg, i8* (i32, %struct.ossl_algorithm_st*, %struct.ossl_provider_st*)* noundef nonnull @keymgmt_from_algorithm, i32 (i8*)* noundef bitcast (i32 (%struct.evp_keymgmt_st*)* @EVP_KEYMGMT_up_ref to i32 (i8*)*), void (i8*)* noundef bitcast (void (%struct.evp_keymgmt_st*)* @EVP_KEYMGMT_free to void (i8*)*)) #6
  ret void
}

declare void @evp_generic_do_all(%struct.ossl_lib_ctx_st* noundef, i32 noundef, void (i8*, i8*)* noundef, i8* noundef, i8* (i32, %struct.ossl_algorithm_st*, %struct.ossl_provider_st*)* noundef, i32 (i8*)* noundef, void (i8*)* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define i32 @EVP_KEYMGMT_names_do_all(%struct.evp_keymgmt_st* nocapture noundef readonly %keymgmt, void (i8*, i8*)* noundef %fn, i8* noundef %data) local_unnamed_addr #0 {
entry:
  %prov = getelementptr inbounds %struct.evp_keymgmt_st, %struct.evp_keymgmt_st* %keymgmt, i64 0, i32 4
  %0 = load %struct.ossl_provider_st*, %struct.ossl_provider_st** %prov, align 8, !tbaa !41
  %cmp.not = icmp eq %struct.ossl_provider_st* %0, null
  br i1 %cmp.not, label %return, label %if.then

if.then:                                          ; preds = %entry
  %name_id = getelementptr inbounds %struct.evp_keymgmt_st, %struct.evp_keymgmt_st* %keymgmt, i64 0, i32 1
  %1 = load i32, i32* %name_id, align 4, !tbaa !9
  %call = tail call i32 @evp_names_do_all(%struct.ossl_provider_st* noundef nonnull %0, i32 noundef %1, void (i8*, i8*)* noundef %fn, i8* noundef %data) #6
  br label %return

return:                                           ; preds = %entry, %if.then
  %retval.0 = phi i32 [ %call, %if.then ], [ 1, %entry ]
  ret i32 %retval.0
}

declare i32 @evp_names_do_all(%struct.ossl_provider_st* noundef, i32 noundef, void (i8*, i8*)* noundef, i8* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define i8* @evp_keymgmt_newdata(%struct.evp_keymgmt_st* nocapture noundef readonly %keymgmt) local_unnamed_addr #0 {
entry:
  %call = tail call %struct.ossl_provider_st* @EVP_KEYMGMT_get0_provider(%struct.evp_keymgmt_st* noundef %keymgmt) #7
  %call1 = tail call i8* @ossl_provider_ctx(%struct.ossl_provider_st* noundef %call) #6
  %new = getelementptr inbounds %struct.evp_keymgmt_st, %struct.evp_keymgmt_st* %keymgmt, i64 0, i32 7
  %0 = load i8* (i8*)*, i8* (i8*)** %new, align 8, !tbaa !17
  %cmp = icmp eq i8* (i8*)* %0, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call3 = tail call i8* %0(i8* noundef %call1) #6
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i8* [ %call3, %if.end ], [ null, %entry ]
  ret i8* %retval.0
}

declare i8* @ossl_provider_ctx(%struct.ossl_provider_st* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define void @evp_keymgmt_freedata(%struct.evp_keymgmt_st* nocapture noundef readonly %keymgmt, i8* noundef %keydata) local_unnamed_addr #0 {
entry:
  %free = getelementptr inbounds %struct.evp_keymgmt_st, %struct.evp_keymgmt_st* %keymgmt, i64 0, i32 8
  %0 = load void (i8*)*, void (i8*)** %free, align 8, !tbaa !24
  tail call void %0(i8* noundef %keydata) #6
  ret void
}

; Function Attrs: noinline nounwind uwtable
define i8* @evp_keymgmt_gen_init(%struct.evp_keymgmt_st* nocapture noundef readonly %keymgmt, i32 noundef %selection, %struct.ossl_param_st* noundef %params) local_unnamed_addr #0 {
entry:
  %call = tail call %struct.ossl_provider_st* @EVP_KEYMGMT_get0_provider(%struct.evp_keymgmt_st* noundef %keymgmt) #7
  %call1 = tail call i8* @ossl_provider_ctx(%struct.ossl_provider_st* noundef %call) #6
  %gen_init = getelementptr inbounds %struct.evp_keymgmt_st, %struct.evp_keymgmt_st* %keymgmt, i64 0, i32 13
  %0 = load i8* (i8*, i32, %struct.ossl_param_st*)*, i8* (i8*, i32, %struct.ossl_param_st*)** %gen_init, align 8, !tbaa !18
  %cmp = icmp eq i8* (i8*, i32, %struct.ossl_param_st*)* %0, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call3 = tail call i8* %0(i8* noundef %call1, i32 noundef %selection, %struct.ossl_param_st* noundef %params) #6
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i8* [ %call3, %if.end ], [ null, %entry ]
  ret i8* %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @evp_keymgmt_gen_set_template(%struct.evp_keymgmt_st* nocapture noundef readonly %keymgmt, i8* noundef %genctx, i8* noundef %template) local_unnamed_addr #0 {
entry:
  %gen_set_template = getelementptr inbounds %struct.evp_keymgmt_st, %struct.evp_keymgmt_st* %keymgmt, i64 0, i32 14
  %0 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %gen_set_template, align 8, !tbaa !19
  %cmp = icmp eq i32 (i8*, i8*)* %0, null
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %call = tail call i32 %0(i8* noundef %genctx, i8* noundef %template) #6
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %call, %if.end ], [ 1, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @evp_keymgmt_gen_set_params(%struct.evp_keymgmt_st* nocapture noundef readonly %keymgmt, i8* noundef %genctx, %struct.ossl_param_st* noundef %params) local_unnamed_addr #0 {
entry:
  %gen_set_params = getelementptr inbounds %struct.evp_keymgmt_st, %struct.evp_keymgmt_st* %keymgmt, i64 0, i32 15
  %0 = load i32 (i8*, %struct.ossl_param_st*)*, i32 (i8*, %struct.ossl_param_st*)** %gen_set_params, align 8, !tbaa !20
  %cmp = icmp eq i32 (i8*, %struct.ossl_param_st*)* %0, null
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %call = tail call i32 %0(i8* noundef %genctx, %struct.ossl_param_st* noundef %params) #6
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %call, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define %struct.ossl_param_st* @EVP_KEYMGMT_gen_settable_params(%struct.evp_keymgmt_st* nocapture noundef readonly %keymgmt) local_unnamed_addr #0 {
entry:
  %call = tail call %struct.ossl_provider_st* @EVP_KEYMGMT_get0_provider(%struct.evp_keymgmt_st* noundef %keymgmt) #7
  %call1 = tail call i8* @ossl_provider_ctx(%struct.ossl_provider_st* noundef %call) #6
  %gen_settable_params = getelementptr inbounds %struct.evp_keymgmt_st, %struct.evp_keymgmt_st* %keymgmt, i64 0, i32 16
  %0 = load %struct.ossl_param_st* (i8*, i8*)*, %struct.ossl_param_st* (i8*, i8*)** %gen_settable_params, align 8, !tbaa !21
  %cmp = icmp eq %struct.ossl_param_st* (i8*, i8*)* %0, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call3 = tail call %struct.ossl_param_st* %0(i8* noundef null, i8* noundef %call1) #6
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi %struct.ossl_param_st* [ %call3, %if.end ], [ null, %entry ]
  ret %struct.ossl_param_st* %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i8* @evp_keymgmt_gen(%struct.evp_keymgmt_st* nocapture noundef readonly %keymgmt, i8* noundef %genctx, i32 (%struct.ossl_param_st*, i8*)* noundef %cb, i8* noundef %cbarg) local_unnamed_addr #0 {
entry:
  %gen = getelementptr inbounds %struct.evp_keymgmt_st, %struct.evp_keymgmt_st* %keymgmt, i64 0, i32 17
  %0 = load i8* (i8*, i32 (%struct.ossl_param_st*, i8*)*, i8*)*, i8* (i8*, i32 (%struct.ossl_param_st*, i8*)*, i8*)** %gen, align 8, !tbaa !22
  %cmp = icmp eq i8* (i8*, i32 (%struct.ossl_param_st*, i8*)*, i8*)* %0, null
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %call = tail call i8* %0(i8* noundef %genctx, i32 (%struct.ossl_param_st*, i8*)* noundef %cb, i8* noundef %cbarg) #6
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i8* [ %call, %if.end ], [ null, %entry ]
  ret i8* %retval.0
}

; Function Attrs: noinline nounwind uwtable
define void @evp_keymgmt_gen_cleanup(%struct.evp_keymgmt_st* nocapture noundef readonly %keymgmt, i8* noundef %genctx) local_unnamed_addr #0 {
entry:
  %gen = getelementptr inbounds %struct.evp_keymgmt_st, %struct.evp_keymgmt_st* %keymgmt, i64 0, i32 17
  %0 = load i8* (i8*, i32 (%struct.ossl_param_st*, i8*)*, i8*)*, i8* (i8*, i32 (%struct.ossl_param_st*, i8*)*, i8*)** %gen, align 8, !tbaa !22
  %cmp.not = icmp eq i8* (i8*, i32 (%struct.ossl_param_st*, i8*)*, i8*)* %0, null
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %gen_cleanup = getelementptr inbounds %struct.evp_keymgmt_st, %struct.evp_keymgmt_st* %keymgmt, i64 0, i32 18
  %1 = load void (i8*)*, void (i8*)** %gen_cleanup, align 8, !tbaa !23
  tail call void %1(i8* noundef %genctx) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define i32 @evp_keymgmt_has_load(%struct.evp_keymgmt_st* noundef readonly %keymgmt) local_unnamed_addr #5 {
entry:
  %cmp.not = icmp eq %struct.evp_keymgmt_st* %keymgmt, null
  br i1 %cmp.not, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %load = getelementptr inbounds %struct.evp_keymgmt_st, %struct.evp_keymgmt_st* %keymgmt, i64 0, i32 19
  %0 = load i8* (i8*, i64)*, i8* (i8*, i64)** %load, align 8, !tbaa !25
  %cmp1 = icmp ne i8* (i8*, i64)* %0, null
  %phi.cast = zext i1 %cmp1 to i32
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %1 = phi i32 [ 0, %entry ], [ %phi.cast, %land.rhs ]
  ret i32 %1
}

; Function Attrs: noinline nounwind uwtable
define i8* @evp_keymgmt_load(%struct.evp_keymgmt_st* noundef readonly %keymgmt, i8* noundef %objref, i64 noundef %objref_sz) local_unnamed_addr #0 {
entry:
  %call = tail call i32 @evp_keymgmt_has_load(%struct.evp_keymgmt_st* noundef %keymgmt) #7
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %return, label %if.then

if.then:                                          ; preds = %entry
  %load = getelementptr inbounds %struct.evp_keymgmt_st, %struct.evp_keymgmt_st* %keymgmt, i64 0, i32 19
  %0 = load i8* (i8*, i64)*, i8* (i8*, i64)** %load, align 8, !tbaa !25
  %call1 = tail call i8* %0(i8* noundef %objref, i64 noundef %objref_sz) #6
  br label %return

return:                                           ; preds = %entry, %if.then
  %retval.0 = phi i8* [ %call1, %if.then ], [ null, %entry ]
  ret i8* %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @evp_keymgmt_get_params(%struct.evp_keymgmt_st* nocapture noundef readonly %keymgmt, i8* noundef %keydata, %struct.ossl_param_st* noundef %params) local_unnamed_addr #0 {
entry:
  %get_params = getelementptr inbounds %struct.evp_keymgmt_st, %struct.evp_keymgmt_st* %keymgmt, i64 0, i32 9
  %0 = load i32 (i8*, %struct.ossl_param_st*)*, i32 (i8*, %struct.ossl_param_st*)** %get_params, align 8, !tbaa !26
  %cmp = icmp eq i32 (i8*, %struct.ossl_param_st*)* %0, null
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %call = tail call i32 %0(i8* noundef %keydata, %struct.ossl_param_st* noundef %params) #6
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %call, %if.end ], [ 1, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define %struct.ossl_param_st* @EVP_KEYMGMT_gettable_params(%struct.evp_keymgmt_st* nocapture noundef readonly %keymgmt) local_unnamed_addr #0 {
entry:
  %call = tail call %struct.ossl_provider_st* @EVP_KEYMGMT_get0_provider(%struct.evp_keymgmt_st* noundef %keymgmt) #7
  %call1 = tail call i8* @ossl_provider_ctx(%struct.ossl_provider_st* noundef %call) #6
  %gettable_params = getelementptr inbounds %struct.evp_keymgmt_st, %struct.evp_keymgmt_st* %keymgmt, i64 0, i32 10
  %0 = load %struct.ossl_param_st* (i8*)*, %struct.ossl_param_st* (i8*)** %gettable_params, align 8, !tbaa !27
  %cmp = icmp eq %struct.ossl_param_st* (i8*)* %0, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call3 = tail call %struct.ossl_param_st* %0(i8* noundef %call1) #6
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi %struct.ossl_param_st* [ %call3, %if.end ], [ null, %entry ]
  ret %struct.ossl_param_st* %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @evp_keymgmt_set_params(%struct.evp_keymgmt_st* nocapture noundef readonly %keymgmt, i8* noundef %keydata, %struct.ossl_param_st* noundef %params) local_unnamed_addr #0 {
entry:
  %set_params = getelementptr inbounds %struct.evp_keymgmt_st, %struct.evp_keymgmt_st* %keymgmt, i64 0, i32 11
  %0 = load i32 (i8*, %struct.ossl_param_st*)*, i32 (i8*, %struct.ossl_param_st*)** %set_params, align 8, !tbaa !28
  %cmp = icmp eq i32 (i8*, %struct.ossl_param_st*)* %0, null
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %call = tail call i32 %0(i8* noundef %keydata, %struct.ossl_param_st* noundef %params) #6
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %call, %if.end ], [ 1, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define %struct.ossl_param_st* @EVP_KEYMGMT_settable_params(%struct.evp_keymgmt_st* nocapture noundef readonly %keymgmt) local_unnamed_addr #0 {
entry:
  %call = tail call %struct.ossl_provider_st* @EVP_KEYMGMT_get0_provider(%struct.evp_keymgmt_st* noundef %keymgmt) #7
  %call1 = tail call i8* @ossl_provider_ctx(%struct.ossl_provider_st* noundef %call) #6
  %settable_params = getelementptr inbounds %struct.evp_keymgmt_st, %struct.evp_keymgmt_st* %keymgmt, i64 0, i32 12
  %0 = load %struct.ossl_param_st* (i8*)*, %struct.ossl_param_st* (i8*)** %settable_params, align 8, !tbaa !29
  %cmp = icmp eq %struct.ossl_param_st* (i8*)* %0, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call3 = tail call %struct.ossl_param_st* %0(i8* noundef %call1) #6
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi %struct.ossl_param_st* [ %call3, %if.end ], [ null, %entry ]
  ret %struct.ossl_param_st* %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @evp_keymgmt_has(%struct.evp_keymgmt_st* nocapture noundef readonly %keymgmt, i8* noundef %keydata, i32 noundef %selection) local_unnamed_addr #0 {
entry:
  %has = getelementptr inbounds %struct.evp_keymgmt_st, %struct.evp_keymgmt_st* %keymgmt, i64 0, i32 21
  %0 = load i32 (i8*, i32)*, i32 (i8*, i32)** %has, align 8, !tbaa !31
  %call = tail call i32 %0(i8* noundef %keydata, i32 noundef %selection) #6
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define i32 @evp_keymgmt_validate(%struct.evp_keymgmt_st* nocapture noundef readonly %keymgmt, i8* noundef %keydata, i32 noundef %selection, i32 noundef %checktype) local_unnamed_addr #0 {
entry:
  %validate = getelementptr inbounds %struct.evp_keymgmt_st, %struct.evp_keymgmt_st* %keymgmt, i64 0, i32 22
  %0 = load i32 (i8*, i32, i32)*, i32 (i8*, i32, i32)** %validate, align 8, !tbaa !33
  %cmp = icmp eq i32 (i8*, i32, i32)* %0, null
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %call = tail call i32 %0(i8* noundef %keydata, i32 noundef %selection, i32 noundef %checktype) #6
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %call, %if.end ], [ 1, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @evp_keymgmt_match(%struct.evp_keymgmt_st* nocapture noundef readonly %keymgmt, i8* noundef %keydata1, i8* noundef %keydata2, i32 noundef %selection) local_unnamed_addr #0 {
entry:
  %match = getelementptr inbounds %struct.evp_keymgmt_st, %struct.evp_keymgmt_st* %keymgmt, i64 0, i32 23
  %0 = load i32 (i8*, i8*, i32)*, i32 (i8*, i8*, i32)** %match, align 8, !tbaa !34
  %cmp = icmp eq i32 (i8*, i8*, i32)* %0, null
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %call = tail call i32 %0(i8* noundef %keydata1, i8* noundef %keydata2, i32 noundef %selection) #6
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %call, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @evp_keymgmt_import(%struct.evp_keymgmt_st* nocapture noundef readonly %keymgmt, i8* noundef %keydata, i32 noundef %selection, %struct.ossl_param_st* noundef %params) local_unnamed_addr #0 {
entry:
  %import = getelementptr inbounds %struct.evp_keymgmt_st, %struct.evp_keymgmt_st* %keymgmt, i64 0, i32 24
  %0 = load i32 (i8*, i32, %struct.ossl_param_st*)*, i32 (i8*, i32, %struct.ossl_param_st*)** %import, align 8, !tbaa !35
  %cmp = icmp eq i32 (i8*, i32, %struct.ossl_param_st*)* %0, null
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %call = tail call i32 %0(i8* noundef %keydata, i32 noundef %selection, %struct.ossl_param_st* noundef %params) #6
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %call, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define %struct.ossl_param_st* @evp_keymgmt_import_types(%struct.evp_keymgmt_st* nocapture noundef readonly %keymgmt, i32 noundef %selection) local_unnamed_addr #0 {
entry:
  %import_types = getelementptr inbounds %struct.evp_keymgmt_st, %struct.evp_keymgmt_st* %keymgmt, i64 0, i32 25
  %0 = load %struct.ossl_param_st* (i32)*, %struct.ossl_param_st* (i32)** %import_types, align 8, !tbaa !36
  %cmp = icmp eq %struct.ossl_param_st* (i32)* %0, null
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %call = tail call %struct.ossl_param_st* %0(i32 noundef %selection) #6
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi %struct.ossl_param_st* [ %call, %if.end ], [ null, %entry ]
  ret %struct.ossl_param_st* %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @evp_keymgmt_export(%struct.evp_keymgmt_st* nocapture noundef readonly %keymgmt, i8* noundef %keydata, i32 noundef %selection, i32 (%struct.ossl_param_st*, i8*)* noundef %param_cb, i8* noundef %cbarg) local_unnamed_addr #0 {
entry:
  %export = getelementptr inbounds %struct.evp_keymgmt_st, %struct.evp_keymgmt_st* %keymgmt, i64 0, i32 26
  %0 = load i32 (i8*, i32, i32 (%struct.ossl_param_st*, i8*)*, i8*)*, i32 (i8*, i32, i32 (%struct.ossl_param_st*, i8*)*, i8*)** %export, align 8, !tbaa !37
  %cmp = icmp eq i32 (i8*, i32, i32 (%struct.ossl_param_st*, i8*)*, i8*)* %0, null
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %call = tail call i32 %0(i8* noundef %keydata, i32 noundef %selection, i32 (%struct.ossl_param_st*, i8*)* noundef %param_cb, i8* noundef %cbarg) #6
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %call, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define %struct.ossl_param_st* @evp_keymgmt_export_types(%struct.evp_keymgmt_st* nocapture noundef readonly %keymgmt, i32 noundef %selection) local_unnamed_addr #0 {
entry:
  %export_types = getelementptr inbounds %struct.evp_keymgmt_st, %struct.evp_keymgmt_st* %keymgmt, i64 0, i32 27
  %0 = load %struct.ossl_param_st* (i32)*, %struct.ossl_param_st* (i32)** %export_types, align 8, !tbaa !38
  %cmp = icmp eq %struct.ossl_param_st* (i32)* %0, null
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %call = tail call %struct.ossl_param_st* %0(i32 noundef %selection) #6
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi %struct.ossl_param_st* [ %call, %if.end ], [ null, %entry ]
  ret %struct.ossl_param_st* %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i8* @evp_keymgmt_dup(%struct.evp_keymgmt_st* nocapture noundef readonly %keymgmt, i8* noundef %keydata_from, i32 noundef %selection) local_unnamed_addr #0 {
entry:
  %dup = getelementptr inbounds %struct.evp_keymgmt_st, %struct.evp_keymgmt_st* %keymgmt, i64 0, i32 28
  %0 = load i8* (i8*, i32)*, i8* (i8*, i32)** %dup, align 8, !tbaa !32
  %cmp = icmp eq i8* (i8*, i32)* %0, null
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %call = tail call i8* %0(i8* noundef %keydata_from, i32 noundef %selection) #6
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i8* [ %call, %if.end ], [ null, %entry ]
  ret i8* %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i8* @keymgmt_new() unnamed_addr #0 {
entry:
  %call = tail call i8* @CRYPTO_zalloc(i64 noundef 224, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 noundef 24) #6
  %0 = bitcast i8* %call to %struct.evp_keymgmt_st*
  %cmp = icmp eq i8* %call, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %call1 = tail call i8* @CRYPTO_THREAD_lock_new() #6
  %lock = getelementptr inbounds i8, i8* %call, i64 40
  %1 = bitcast i8* %lock to i8**
  store i8* %call1, i8** %1, align 8, !tbaa !43
  %cmp2 = icmp eq i8* %call1, null
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  tail call void @EVP_KEYMGMT_free(%struct.evp_keymgmt_st* noundef %0) #7
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 noundef 27, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @__func__.keymgmt_new, i64 0, i64 0)) #6
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 6, i32 noundef 786688, i8* noundef null) #6
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %refcnt = getelementptr inbounds i8, i8* %call, i64 32
  %2 = bitcast i8* %refcnt to i32*
  store atomic i32 1, i32* %2 seq_cst, align 4, !tbaa !44
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i8* [ null, %if.then ], [ %call, %if.end ]
  ret i8* %retval.0
}

declare i8* @ossl_algorithm_get1_first_name(%struct.ossl_algorithm_st* noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal fastcc i8* (i8*)* @OSSL_FUNC_keymgmt_new(%struct.ossl_dispatch_st* nocapture noundef readonly %opf) unnamed_addr #5 {
entry:
  %function = getelementptr inbounds %struct.ossl_dispatch_st, %struct.ossl_dispatch_st* %opf, i64 0, i32 1
  %0 = bitcast void ()** %function to i8* (i8*)**
  %1 = load i8* (i8*)*, i8* (i8*)** %0, align 8, !tbaa !45
  ret i8* (i8*)* %1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal fastcc i8* (i8*, i32, %struct.ossl_param_st*)* @OSSL_FUNC_keymgmt_gen_init(%struct.ossl_dispatch_st* nocapture noundef readonly %opf) unnamed_addr #5 {
entry:
  %function = getelementptr inbounds %struct.ossl_dispatch_st, %struct.ossl_dispatch_st* %opf, i64 0, i32 1
  %0 = bitcast void ()** %function to i8* (i8*, i32, %struct.ossl_param_st*)**
  %1 = load i8* (i8*, i32, %struct.ossl_param_st*)*, i8* (i8*, i32, %struct.ossl_param_st*)** %0, align 8, !tbaa !45
  ret i8* (i8*, i32, %struct.ossl_param_st*)* %1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal fastcc i32 (i8*, i8*)* @OSSL_FUNC_keymgmt_gen_set_template(%struct.ossl_dispatch_st* nocapture noundef readonly %opf) unnamed_addr #5 {
entry:
  %function = getelementptr inbounds %struct.ossl_dispatch_st, %struct.ossl_dispatch_st* %opf, i64 0, i32 1
  %0 = bitcast void ()** %function to i32 (i8*, i8*)**
  %1 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %0, align 8, !tbaa !45
  ret i32 (i8*, i8*)* %1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal fastcc i32 (i8*, %struct.ossl_param_st*)* @OSSL_FUNC_keymgmt_gen_set_params(%struct.ossl_dispatch_st* nocapture noundef readonly %opf) unnamed_addr #5 {
entry:
  %function = getelementptr inbounds %struct.ossl_dispatch_st, %struct.ossl_dispatch_st* %opf, i64 0, i32 1
  %0 = bitcast void ()** %function to i32 (i8*, %struct.ossl_param_st*)**
  %1 = load i32 (i8*, %struct.ossl_param_st*)*, i32 (i8*, %struct.ossl_param_st*)** %0, align 8, !tbaa !45
  ret i32 (i8*, %struct.ossl_param_st*)* %1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal fastcc %struct.ossl_param_st* (i8*, i8*)* @OSSL_FUNC_keymgmt_gen_settable_params(%struct.ossl_dispatch_st* nocapture noundef readonly %opf) unnamed_addr #5 {
entry:
  %function = getelementptr inbounds %struct.ossl_dispatch_st, %struct.ossl_dispatch_st* %opf, i64 0, i32 1
  %0 = bitcast void ()** %function to %struct.ossl_param_st* (i8*, i8*)**
  %1 = load %struct.ossl_param_st* (i8*, i8*)*, %struct.ossl_param_st* (i8*, i8*)** %0, align 8, !tbaa !45
  ret %struct.ossl_param_st* (i8*, i8*)* %1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal fastcc i8* (i8*, i32 (%struct.ossl_param_st*, i8*)*, i8*)* @OSSL_FUNC_keymgmt_gen(%struct.ossl_dispatch_st* nocapture noundef readonly %opf) unnamed_addr #5 {
entry:
  %function = getelementptr inbounds %struct.ossl_dispatch_st, %struct.ossl_dispatch_st* %opf, i64 0, i32 1
  %0 = bitcast void ()** %function to i8* (i8*, i32 (%struct.ossl_param_st*, i8*)*, i8*)**
  %1 = load i8* (i8*, i32 (%struct.ossl_param_st*, i8*)*, i8*)*, i8* (i8*, i32 (%struct.ossl_param_st*, i8*)*, i8*)** %0, align 8, !tbaa !45
  ret i8* (i8*, i32 (%struct.ossl_param_st*, i8*)*, i8*)* %1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal fastcc void (i8*)* @OSSL_FUNC_keymgmt_gen_cleanup(%struct.ossl_dispatch_st* nocapture noundef readonly %opf) unnamed_addr #5 {
entry:
  %function = getelementptr inbounds %struct.ossl_dispatch_st, %struct.ossl_dispatch_st* %opf, i64 0, i32 1
  %0 = bitcast void ()** %function to void (i8*)**
  %1 = load void (i8*)*, void (i8*)** %0, align 8, !tbaa !45
  ret void (i8*)* %1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal fastcc void (i8*)* @OSSL_FUNC_keymgmt_free(%struct.ossl_dispatch_st* nocapture noundef readonly %opf) unnamed_addr #5 {
entry:
  %function = getelementptr inbounds %struct.ossl_dispatch_st, %struct.ossl_dispatch_st* %opf, i64 0, i32 1
  %0 = bitcast void ()** %function to void (i8*)**
  %1 = load void (i8*)*, void (i8*)** %0, align 8, !tbaa !45
  ret void (i8*)* %1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal fastcc i8* (i8*, i64)* @OSSL_FUNC_keymgmt_load(%struct.ossl_dispatch_st* nocapture noundef readonly %opf) unnamed_addr #5 {
entry:
  %function = getelementptr inbounds %struct.ossl_dispatch_st, %struct.ossl_dispatch_st* %opf, i64 0, i32 1
  %0 = bitcast void ()** %function to i8* (i8*, i64)**
  %1 = load i8* (i8*, i64)*, i8* (i8*, i64)** %0, align 8, !tbaa !45
  ret i8* (i8*, i64)* %1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal fastcc i32 (i8*, %struct.ossl_param_st*)* @OSSL_FUNC_keymgmt_get_params(%struct.ossl_dispatch_st* nocapture noundef readonly %opf) unnamed_addr #5 {
entry:
  %function = getelementptr inbounds %struct.ossl_dispatch_st, %struct.ossl_dispatch_st* %opf, i64 0, i32 1
  %0 = bitcast void ()** %function to i32 (i8*, %struct.ossl_param_st*)**
  %1 = load i32 (i8*, %struct.ossl_param_st*)*, i32 (i8*, %struct.ossl_param_st*)** %0, align 8, !tbaa !45
  ret i32 (i8*, %struct.ossl_param_st*)* %1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal fastcc %struct.ossl_param_st* (i8*)* @OSSL_FUNC_keymgmt_gettable_params(%struct.ossl_dispatch_st* nocapture noundef readonly %opf) unnamed_addr #5 {
entry:
  %function = getelementptr inbounds %struct.ossl_dispatch_st, %struct.ossl_dispatch_st* %opf, i64 0, i32 1
  %0 = bitcast void ()** %function to %struct.ossl_param_st* (i8*)**
  %1 = load %struct.ossl_param_st* (i8*)*, %struct.ossl_param_st* (i8*)** %0, align 8, !tbaa !45
  ret %struct.ossl_param_st* (i8*)* %1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal fastcc i32 (i8*, %struct.ossl_param_st*)* @OSSL_FUNC_keymgmt_set_params(%struct.ossl_dispatch_st* nocapture noundef readonly %opf) unnamed_addr #5 {
entry:
  %function = getelementptr inbounds %struct.ossl_dispatch_st, %struct.ossl_dispatch_st* %opf, i64 0, i32 1
  %0 = bitcast void ()** %function to i32 (i8*, %struct.ossl_param_st*)**
  %1 = load i32 (i8*, %struct.ossl_param_st*)*, i32 (i8*, %struct.ossl_param_st*)** %0, align 8, !tbaa !45
  ret i32 (i8*, %struct.ossl_param_st*)* %1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal fastcc %struct.ossl_param_st* (i8*)* @OSSL_FUNC_keymgmt_settable_params(%struct.ossl_dispatch_st* nocapture noundef readonly %opf) unnamed_addr #5 {
entry:
  %function = getelementptr inbounds %struct.ossl_dispatch_st, %struct.ossl_dispatch_st* %opf, i64 0, i32 1
  %0 = bitcast void ()** %function to %struct.ossl_param_st* (i8*)**
  %1 = load %struct.ossl_param_st* (i8*)*, %struct.ossl_param_st* (i8*)** %0, align 8, !tbaa !45
  ret %struct.ossl_param_st* (i8*)* %1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal fastcc i8* (i32)* @OSSL_FUNC_keymgmt_query_operation_name(%struct.ossl_dispatch_st* nocapture noundef readonly %opf) unnamed_addr #5 {
entry:
  %function = getelementptr inbounds %struct.ossl_dispatch_st, %struct.ossl_dispatch_st* %opf, i64 0, i32 1
  %0 = bitcast void ()** %function to i8* (i32)**
  %1 = load i8* (i32)*, i8* (i32)** %0, align 8, !tbaa !45
  ret i8* (i32)* %1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal fastcc i32 (i8*, i32)* @OSSL_FUNC_keymgmt_has(%struct.ossl_dispatch_st* nocapture noundef readonly %opf) unnamed_addr #5 {
entry:
  %function = getelementptr inbounds %struct.ossl_dispatch_st, %struct.ossl_dispatch_st* %opf, i64 0, i32 1
  %0 = bitcast void ()** %function to i32 (i8*, i32)**
  %1 = load i32 (i8*, i32)*, i32 (i8*, i32)** %0, align 8, !tbaa !45
  ret i32 (i8*, i32)* %1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal fastcc i8* (i8*, i32)* @OSSL_FUNC_keymgmt_dup(%struct.ossl_dispatch_st* nocapture noundef readonly %opf) unnamed_addr #5 {
entry:
  %function = getelementptr inbounds %struct.ossl_dispatch_st, %struct.ossl_dispatch_st* %opf, i64 0, i32 1
  %0 = bitcast void ()** %function to i8* (i8*, i32)**
  %1 = load i8* (i8*, i32)*, i8* (i8*, i32)** %0, align 8, !tbaa !45
  ret i8* (i8*, i32)* %1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal fastcc i32 (i8*, i32, i32)* @OSSL_FUNC_keymgmt_validate(%struct.ossl_dispatch_st* nocapture noundef readonly %opf) unnamed_addr #5 {
entry:
  %function = getelementptr inbounds %struct.ossl_dispatch_st, %struct.ossl_dispatch_st* %opf, i64 0, i32 1
  %0 = bitcast void ()** %function to i32 (i8*, i32, i32)**
  %1 = load i32 (i8*, i32, i32)*, i32 (i8*, i32, i32)** %0, align 8, !tbaa !45
  ret i32 (i8*, i32, i32)* %1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal fastcc i32 (i8*, i8*, i32)* @OSSL_FUNC_keymgmt_match(%struct.ossl_dispatch_st* nocapture noundef readonly %opf) unnamed_addr #5 {
entry:
  %function = getelementptr inbounds %struct.ossl_dispatch_st, %struct.ossl_dispatch_st* %opf, i64 0, i32 1
  %0 = bitcast void ()** %function to i32 (i8*, i8*, i32)**
  %1 = load i32 (i8*, i8*, i32)*, i32 (i8*, i8*, i32)** %0, align 8, !tbaa !45
  ret i32 (i8*, i8*, i32)* %1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal fastcc i32 (i8*, i32, %struct.ossl_param_st*)* @OSSL_FUNC_keymgmt_import(%struct.ossl_dispatch_st* nocapture noundef readonly %opf) unnamed_addr #5 {
entry:
  %function = getelementptr inbounds %struct.ossl_dispatch_st, %struct.ossl_dispatch_st* %opf, i64 0, i32 1
  %0 = bitcast void ()** %function to i32 (i8*, i32, %struct.ossl_param_st*)**
  %1 = load i32 (i8*, i32, %struct.ossl_param_st*)*, i32 (i8*, i32, %struct.ossl_param_st*)** %0, align 8, !tbaa !45
  ret i32 (i8*, i32, %struct.ossl_param_st*)* %1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal fastcc %struct.ossl_param_st* (i32)* @OSSL_FUNC_keymgmt_import_types(%struct.ossl_dispatch_st* nocapture noundef readonly %opf) unnamed_addr #5 {
entry:
  %function = getelementptr inbounds %struct.ossl_dispatch_st, %struct.ossl_dispatch_st* %opf, i64 0, i32 1
  %0 = bitcast void ()** %function to %struct.ossl_param_st* (i32)**
  %1 = load %struct.ossl_param_st* (i32)*, %struct.ossl_param_st* (i32)** %0, align 8, !tbaa !45
  ret %struct.ossl_param_st* (i32)* %1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal fastcc i32 (i8*, i32, i32 (%struct.ossl_param_st*, i8*)*, i8*)* @OSSL_FUNC_keymgmt_export(%struct.ossl_dispatch_st* nocapture noundef readonly %opf) unnamed_addr #5 {
entry:
  %function = getelementptr inbounds %struct.ossl_dispatch_st, %struct.ossl_dispatch_st* %opf, i64 0, i32 1
  %0 = bitcast void ()** %function to i32 (i8*, i32, i32 (%struct.ossl_param_st*, i8*)*, i8*)**
  %1 = load i32 (i8*, i32, i32 (%struct.ossl_param_st*, i8*)*, i8*)*, i32 (i8*, i32, i32 (%struct.ossl_param_st*, i8*)*, i8*)** %0, align 8, !tbaa !45
  ret i32 (i8*, i32, i32 (%struct.ossl_param_st*, i8*)*, i8*)* %1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal fastcc %struct.ossl_param_st* (i32)* @OSSL_FUNC_keymgmt_export_types(%struct.ossl_dispatch_st* nocapture noundef readonly %opf) unnamed_addr #5 {
entry:
  %function = getelementptr inbounds %struct.ossl_dispatch_st, %struct.ossl_dispatch_st* %opf, i64 0, i32 1
  %0 = bitcast void ()** %function to %struct.ossl_param_st* (i32)**
  %1 = load %struct.ossl_param_st* (i32)*, %struct.ossl_param_st* (i32)** %0, align 8, !tbaa !45
  ret %struct.ossl_param_st* (i32)* %1
}

declare void @ERR_new() local_unnamed_addr #1

declare void @ERR_set_debug(i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #1

declare void @ERR_set_error(i32 noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #1

declare i32 @ossl_provider_up_ref(%struct.ossl_provider_st* noundef) local_unnamed_addr #1

declare i8* @CRYPTO_zalloc(i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

declare i8* @CRYPTO_THREAD_lock_new() local_unnamed_addr #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree noinline nounwind uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #4 = { mustprogress nofree noinline norecurse nounwind uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!9 = !{!10, !11, i64 4}
!10 = !{!"evp_keymgmt_st", !11, i64 0, !11, i64 4, !6, i64 8, !6, i64 16, !6, i64 24, !7, i64 32, !6, i64 40, !6, i64 48, !6, i64 56, !6, i64 64, !6, i64 72, !6, i64 80, !6, i64 88, !6, i64 96, !6, i64 104, !6, i64 112, !6, i64 120, !6, i64 128, !6, i64 136, !6, i64 144, !6, i64 152, !6, i64 160, !6, i64 168, !6, i64 176, !6, i64 184, !6, i64 192, !6, i64 200, !6, i64 208, !6, i64 216}
!11 = !{!"int", !7, i64 0}
!12 = !{!10, !6, i64 8}
!13 = !{!5, !6, i64 24}
!14 = !{!10, !6, i64 16}
!15 = !{!16, !11, i64 0}
!16 = !{!"ossl_dispatch_st", !11, i64 0, !6, i64 8}
!17 = !{!10, !6, i64 48}
!18 = !{!10, !6, i64 96}
!19 = !{!10, !6, i64 104}
!20 = !{!10, !6, i64 112}
!21 = !{!10, !6, i64 120}
!22 = !{!10, !6, i64 128}
!23 = !{!10, !6, i64 136}
!24 = !{!10, !6, i64 56}
!25 = !{!10, !6, i64 144}
!26 = !{!10, !6, i64 64}
!27 = !{!10, !6, i64 72}
!28 = !{!10, !6, i64 80}
!29 = !{!10, !6, i64 88}
!30 = !{!10, !6, i64 152}
!31 = !{!10, !6, i64 160}
!32 = !{!10, !6, i64 216}
!33 = !{!10, !6, i64 168}
!34 = !{!10, !6, i64 176}
!35 = !{!10, !6, i64 184}
!36 = !{!10, !6, i64 192}
!37 = !{!10, !6, i64 200}
!38 = !{!10, !6, i64 208}
!39 = distinct !{!39, !40}
!40 = !{!"llvm.loop.mustprogress"}
!41 = !{!10, !6, i64 24}
!42 = !{!11, !11, i64 0}
!43 = !{!10, !6, i64 40}
!44 = !{!10, !7, i64 32}
!45 = !{!16, !6, i64 8}
