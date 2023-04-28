; ModuleID = 'crypto/provider_conf.c'
source_filename = "crypto/provider_conf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ossl_lib_ctx_method = type { i32, i8* (%struct.ossl_lib_ctx_st*)*, void (i8*)* }
%struct.ossl_lib_ctx_st = type opaque
%struct.conf_imodule_st = type opaque
%struct.conf_st = type { %struct.conf_method_st*, i8*, %struct.lhash_st_CONF_VALUE*, i32, i32, i8*, %struct.ossl_lib_ctx_st* }
%struct.conf_method_st = type { i8*, %struct.conf_st* (%struct.conf_method_st*)*, i32 (%struct.conf_st*)*, i32 (%struct.conf_st*)*, i32 (%struct.conf_st*)*, i32 (%struct.conf_st*, %struct.bio_st*, i64*)*, i32 (%struct.conf_st*, %struct.bio_st*)*, i32 (%struct.conf_st*, i8)*, i32 (%struct.conf_st*, i8)*, i32 (%struct.conf_st*, i8*, i64*)* }
%struct.bio_st = type opaque
%struct.lhash_st_CONF_VALUE = type { %union.lh_CONF_VALUE_dummy }
%union.lh_CONF_VALUE_dummy = type { i8* }
%struct.stack_st_CONF_VALUE = type opaque
%struct.stack_st = type opaque
%struct.ossl_provider_st = type opaque
%struct.OSSL_PROVIDER_INFO = type { i8*, i8*, i32 (%struct.ossl_core_handle_st*, %struct.ossl_dispatch_st*, %struct.ossl_dispatch_st**, i8**)*, %struct.stack_st_INFOPAIR*, i8 }
%struct.ossl_core_handle_st = type opaque
%struct.ossl_dispatch_st = type { i32, void ()* }
%struct.stack_st_INFOPAIR = type opaque
%struct.stack_st_OSSL_PROVIDER = type opaque

@.str = private unnamed_addr constant [10 x i8] c"providers\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"crypto/provider_conf.c\00", align 1
@__func__.provider_conf_init = private unnamed_addr constant [19 x i8] c"provider_conf_init\00", align 1
@provider_conf_ossl_ctx_method = internal constant %struct.ossl_lib_ctx_method { i32 2, i8* (%struct.ossl_lib_ctx_st*)* @prov_conf_ossl_ctx_new, void (i8*)* @prov_conf_ossl_ctx_free }, align 8
@__func__.provider_conf_load = private unnamed_addr constant [19 x i8] c"provider_conf_load\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"section=%s not found\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"identity\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"soft_load\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"module\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"activate\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c".\00", align 1

; Function Attrs: noinline nounwind uwtable
define void @ossl_provider_add_conf_module() local_unnamed_addr #0 {
entry:
  %call = tail call i32 @CONF_module_add(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 (%struct.conf_imodule_st*, %struct.conf_st*)* noundef nonnull @provider_conf_init, void (%struct.conf_imodule_st*)* noundef null) #7
  ret void
}

declare i32 @CONF_module_add(i8* noundef, i32 (%struct.conf_imodule_st*, %struct.conf_st*)* noundef, void (%struct.conf_imodule_st*)* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @provider_conf_init(%struct.conf_imodule_st* noundef %md, %struct.conf_st* noundef %cnf) #0 {
entry:
  %call = tail call i8* @CONF_imodule_get_value(%struct.conf_imodule_st* noundef %md) #7
  %call1 = tail call %struct.stack_st_CONF_VALUE* @NCONF_get_section(%struct.conf_st* noundef %cnf, i8* noundef %call) #7
  %tobool.not = icmp eq %struct.stack_st_CONF_VALUE* %call1, null
  br i1 %tobool.not, label %if.then, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  %call2 = tail call fastcc %struct.stack_st* @ossl_check_const_CONF_VALUE_sk_type(%struct.stack_st_CONF_VALUE* noundef nonnull %call1) #8
  %call323 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call2) #7
  %cmp24 = icmp sgt i32 %call323, 0
  br i1 %cmp24, label %for.body, label %cleanup

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 noundef 286, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.provider_conf_init, i64 0, i64 0)) #7
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 15, i32 noundef 105, i8* noundef null) #7
  br label %cleanup

for.cond:                                         ; preds = %for.body
  %call3 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call2) #7
  %cmp = icmp slt i32 %inc, %call3
  br i1 %cmp, label %for.body, label %cleanup, !llvm.loop !4

for.body:                                         ; preds = %for.cond.preheader, %for.cond
  %i.025 = phi i32 [ %inc, %for.cond ], [ 0, %for.cond.preheader ]
  %call5 = tail call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call2, i32 noundef %i.025) #7
  %call6 = tail call %struct.ossl_lib_ctx_st* @NCONF_get0_libctx(%struct.conf_st* noundef %cnf) #7
  %name = getelementptr inbounds i8, i8* %call5, i64 8
  %0 = bitcast i8* %name to i8**
  %1 = load i8*, i8** %0, align 8, !tbaa !6
  %value = getelementptr inbounds i8, i8* %call5, i64 16
  %2 = bitcast i8* %value to i8**
  %3 = load i8*, i8** %2, align 8, !tbaa !11
  %call7 = tail call fastcc i32 @provider_conf_load(%struct.ossl_lib_ctx_st* noundef %call6, i8* noundef %1, i8* noundef %3, %struct.conf_st* noundef %cnf) #8
  %tobool8.not = icmp eq i32 %call7, 0
  %inc = add nuw nsw i32 %i.025, 1
  br i1 %tobool8.not, label %cleanup, label %for.cond

cleanup:                                          ; preds = %for.body, %for.cond, %for.cond.preheader, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 1, %for.cond.preheader ], [ 0, %for.body ], [ 1, %for.cond ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

declare %struct.stack_st_CONF_VALUE* @NCONF_get_section(%struct.conf_st* noundef, i8* noundef) local_unnamed_addr #1

declare i8* @CONF_imodule_get_value(%struct.conf_imodule_st* noundef) local_unnamed_addr #1

declare void @ERR_new() local_unnamed_addr #1

declare void @ERR_set_debug(i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #1

declare void @ERR_set_error(i32 noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #1

declare i32 @OPENSSL_sk_num(%struct.stack_st* noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_const_CONF_VALUE_sk_type(%struct.stack_st_CONF_VALUE* noundef readnone %sk) unnamed_addr #3 {
entry:
  %0 = bitcast %struct.stack_st_CONF_VALUE* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

declare i8* @OPENSSL_sk_value(%struct.stack_st* noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @provider_conf_load(%struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef %name, i8* noundef %value, %struct.conf_st* noundef %cnf) unnamed_addr #0 {
entry:
  %actual = alloca %struct.ossl_provider_st*, align 8
  %entry90 = alloca %struct.OSSL_PROVIDER_INFO, align 8
  %0 = bitcast %struct.ossl_provider_st** %actual to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #9
  store %struct.ossl_provider_st* null, %struct.ossl_provider_st** %actual, align 8, !tbaa !12
  %call = tail call i8* @ossl_lib_ctx_get_data(%struct.ossl_lib_ctx_st* noundef %libctx, i32 noundef 16, %struct.ossl_lib_ctx_method* noundef nonnull @provider_conf_ossl_ctx_method) #7
  %call1 = tail call fastcc i8* @skip_dot(i8* noundef %name) #8
  %call2 = tail call %struct.stack_st_CONF_VALUE* @NCONF_get_section(%struct.conf_st* noundef %cnf, i8* noundef %value) #7
  %tobool.not = icmp eq %struct.stack_st_CONF_VALUE* %call2, null
  br i1 %tobool.not, label %if.then, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  %call3 = tail call fastcc %struct.stack_st* @ossl_check_const_CONF_VALUE_sk_type(%struct.stack_st_CONF_VALUE* noundef nonnull %call2) #8
  %call4210 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call3) #7
  %cmp211 = icmp sgt i32 %call4210, 0
  br i1 %cmp211, label %for.body, label %if.else89

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 noundef 159, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.provider_conf_load, i64 0, i64 0)) #7
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 15, i32 noundef 105, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i8* noundef %value) #7
  br label %cleanup

for.body:                                         ; preds = %for.cond.preheader, %if.end27
  %name.addr.0216 = phi i8* [ %name.addr.1, %if.end27 ], [ %call1, %for.cond.preheader ]
  %i.0215 = phi i32 [ %inc, %if.end27 ], [ 0, %for.cond.preheader ]
  %soft.0214 = phi i32 [ %soft.1, %if.end27 ], [ 0, %for.cond.preheader ]
  %activate.0213 = phi i64 [ %activate.1, %if.end27 ], [ 0, %for.cond.preheader ]
  %path.0212 = phi i8* [ %path.1, %if.end27 ], [ null, %for.cond.preheader ]
  %call6 = tail call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call3, i32 noundef %i.0215) #7
  %name7 = getelementptr inbounds i8, i8* %call6, i64 8
  %1 = bitcast i8* %name7 to i8**
  %2 = load i8*, i8** %1, align 8, !tbaa !6
  %call8 = tail call fastcc i8* @skip_dot(i8* noundef %2) #8
  %value9 = getelementptr inbounds i8, i8* %call6, i64 16
  %3 = bitcast i8* %value9 to i8**
  %4 = load i8*, i8** %3, align 8, !tbaa !11
  %call10 = tail call i32 @strcmp(i8* noundef %call8, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0)) #10
  %cmp11 = icmp eq i32 %call10, 0
  br i1 %cmp11, label %if.end27, label %if.else

if.else:                                          ; preds = %for.body
  %call13 = tail call i32 @strcmp(i8* noundef %call8, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0)) #10
  %cmp14 = icmp eq i32 %call13, 0
  br i1 %cmp14, label %if.end27, label %if.else16

if.else16:                                        ; preds = %if.else
  %call17 = tail call i32 @strcmp(i8* noundef %call8, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0)) #10
  %cmp18 = icmp eq i32 %call17, 0
  br i1 %cmp18, label %if.end27, label %if.else20

if.else20:                                        ; preds = %if.else16
  %call21 = tail call i32 @strcmp(i8* noundef %call8, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0)) #10
  %cmp22 = icmp eq i32 %call21, 0
  %spec.select = select i1 %cmp22, i64 1, i64 %activate.0213
  br label %if.end27

if.end27:                                         ; preds = %if.else20, %if.else16, %if.else, %for.body
  %path.1 = phi i8* [ %path.0212, %for.body ], [ %path.0212, %if.else ], [ %4, %if.else16 ], [ %path.0212, %if.else20 ]
  %activate.1 = phi i64 [ %activate.0213, %for.body ], [ %activate.0213, %if.else ], [ %activate.0213, %if.else16 ], [ %spec.select, %if.else20 ]
  %soft.1 = phi i32 [ %soft.0214, %for.body ], [ 1, %if.else ], [ %soft.0214, %if.else16 ], [ %soft.0214, %if.else20 ]
  %name.addr.1 = phi i8* [ %4, %for.body ], [ %name.addr.0216, %if.else ], [ %name.addr.0216, %if.else16 ], [ %name.addr.0216, %if.else20 ]
  %inc = add nuw nsw i32 %i.0215, 1
  %call4 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call3) #7
  %cmp = icmp slt i32 %inc, %call4
  br i1 %cmp, label %for.body, label %for.end, !llvm.loop !13

for.end:                                          ; preds = %if.end27
  %tobool28.not = icmp eq i64 %activate.1, 0
  br i1 %tobool28.not, label %if.else89, label %if.then29

if.then29:                                        ; preds = %for.end
  %lock = bitcast i8* %call to i8**
  %5 = load i8*, i8** %lock, align 8, !tbaa !14
  %call30 = tail call i32 @CRYPTO_THREAD_write_lock(i8* noundef %5) #7
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %if.then32, label %if.end33

if.then32:                                        ; preds = %if.then29
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 noundef 189, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.provider_conf_load, i64 0, i64 0)) #7
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 15, i32 noundef 786691, i8* noundef null) #7
  br label %cleanup

if.end33:                                         ; preds = %if.then29
  %activated_providers = getelementptr inbounds i8, i8* %call, i64 8
  %6 = bitcast i8* %activated_providers to %struct.stack_st_OSSL_PROVIDER**
  %7 = load %struct.stack_st_OSSL_PROVIDER*, %struct.stack_st_OSSL_PROVIDER** %6, align 8, !tbaa !16
  %call34 = tail call fastcc i32 @prov_already_activated(i8* noundef %name.addr.1, %struct.stack_st_OSSL_PROVIDER* noundef %7) #8
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %if.then36, label %if.end86

if.then36:                                        ; preds = %if.end33
  %call37 = tail call i32 @ossl_provider_disable_fallback_loading(%struct.ossl_lib_ctx_st* noundef %libctx) #7
  %tobool38.not = icmp eq i32 %call37, 0
  br i1 %tobool38.not, label %if.then39, label %if.end42

if.then39:                                        ; preds = %if.then36
  %8 = load i8*, i8** %lock, align 8, !tbaa !14
  %call41 = tail call i32 @CRYPTO_THREAD_unlock(i8* noundef %8) #7
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 noundef 202, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.provider_conf_load, i64 0, i64 0)) #7
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 15, i32 noundef 786691, i8* noundef null) #7
  br label %cleanup

if.end42:                                         ; preds = %if.then36
  %call43 = tail call %struct.ossl_provider_st* @ossl_provider_find(%struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef %name.addr.1, i32 noundef 1) #7
  %cmp44 = icmp eq %struct.ossl_provider_st* %call43, null
  br i1 %cmp44, label %if.end47, label %if.end55

if.end47:                                         ; preds = %if.end42
  %call46 = tail call %struct.ossl_provider_st* @ossl_provider_new(%struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef %name.addr.1, i32 (%struct.ossl_core_handle_st*, %struct.ossl_dispatch_st*, %struct.ossl_dispatch_st**, i8**)* noundef null, i32 noundef 1) #7
  %cmp48 = icmp eq %struct.ossl_provider_st* %call46, null
  br i1 %cmp48, label %if.then49, label %if.end55

if.then49:                                        ; preds = %if.end47
  %9 = load i8*, i8** %lock, align 8, !tbaa !14
  %call51 = tail call i32 @CRYPTO_THREAD_unlock(i8* noundef %9) #7
  %tobool52.not = icmp eq i32 %soft.1, 0
  br i1 %tobool52.not, label %cleanup, label %if.then53

if.then53:                                        ; preds = %if.then49
  tail call void @ERR_clear_error() #7
  br label %cleanup

if.end55:                                         ; preds = %if.end42, %if.end47
  %prov.0203 = phi %struct.ossl_provider_st* [ %call46, %if.end47 ], [ %call43, %if.end42 ]
  %cmp56.not = icmp eq i8* %path.1, null
  br i1 %cmp56.not, label %if.end59, label %if.then57

if.then57:                                        ; preds = %if.end55
  %call58 = tail call i32 @ossl_provider_set_module_path(%struct.ossl_provider_st* noundef nonnull %prov.0203, i8* noundef nonnull %path.1) #7
  br label %if.end59

if.end59:                                         ; preds = %if.then57, %if.end55
  %call60 = tail call fastcc i32 @provider_conf_params(%struct.ossl_provider_st* noundef nonnull %prov.0203, %struct.OSSL_PROVIDER_INFO* noundef null, i8* noundef null, i8* noundef %value, %struct.conf_st* noundef %cnf) #8
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %if.then84, label %if.then62

if.then62:                                        ; preds = %if.end59
  %call63 = tail call i32 @ossl_provider_activate(%struct.ossl_provider_st* noundef nonnull %prov.0203, i32 noundef 1, i32 noundef 0) #7
  %tobool64.not = icmp eq i32 %call63, 0
  br i1 %tobool64.not, label %if.then84, label %if.else66

if.else66:                                        ; preds = %if.then62
  %call67 = call i32 @ossl_provider_add_to_store(%struct.ossl_provider_st* noundef nonnull %prov.0203, %struct.ossl_provider_st** noundef nonnull %actual, i32 noundef 0) #7
  %tobool68.not = icmp eq i32 %call67, 0
  br i1 %tobool68.not, label %if.then69, label %if.else71

if.then69:                                        ; preds = %if.else66
  %call70 = call i32 @ossl_provider_deactivate(%struct.ossl_provider_st* noundef nonnull %prov.0203) #7
  br label %if.then84

if.else71:                                        ; preds = %if.else66
  %10 = load %struct.stack_st_OSSL_PROVIDER*, %struct.stack_st_OSSL_PROVIDER** %6, align 8, !tbaa !16
  %cmp73 = icmp eq %struct.stack_st_OSSL_PROVIDER* %10, null
  br i1 %cmp73, label %if.then74, label %if.end77

if.then74:                                        ; preds = %if.else71
  %call75 = call fastcc %struct.stack_st_OSSL_PROVIDER* @sk_OSSL_PROVIDER_new_null() #8
  store %struct.stack_st_OSSL_PROVIDER* %call75, %struct.stack_st_OSSL_PROVIDER** %6, align 8, !tbaa !16
  br label %if.end77

if.end77:                                         ; preds = %if.then74, %if.else71
  %11 = phi %struct.stack_st_OSSL_PROVIDER* [ %call75, %if.then74 ], [ %10, %if.else71 ]
  %12 = load %struct.ossl_provider_st*, %struct.ossl_provider_st** %actual, align 8, !tbaa !12
  call fastcc void @sk_OSSL_PROVIDER_push(%struct.stack_st_OSSL_PROVIDER* noundef %11, %struct.ossl_provider_st* noundef %12) #8
  br label %if.end86

if.then84:                                        ; preds = %if.end59, %if.then69, %if.then62
  call void @ossl_provider_free(%struct.ossl_provider_st* noundef nonnull %prov.0203) #7
  br label %if.end86

if.end86:                                         ; preds = %if.end77, %if.then84, %if.end33
  %13 = load i8*, i8** %lock, align 8, !tbaa !14
  %call88 = call i32 @CRYPTO_THREAD_unlock(i8* noundef %13) #7
  br label %cleanup

if.else89:                                        ; preds = %for.cond.preheader, %for.end
  %name.addr.0.lcssa229 = phi i8* [ %name.addr.1, %for.end ], [ %call1, %for.cond.preheader ]
  %path.0.lcssa228 = phi i8* [ %path.1, %for.end ], [ null, %for.cond.preheader ]
  %14 = bitcast %struct.OSSL_PROVIDER_INFO* %entry90 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %14) #9
  %call91 = call i8* @memset(i8* noundef nonnull %14, i32 noundef 0, i64 noundef 40) #7
  %cmp92.not = icmp eq i8* %name.addr.0.lcssa229, null
  br i1 %cmp92.not, label %if.end100, label %if.then93

if.then93:                                        ; preds = %if.else89
  %call94 = call i8* @CRYPTO_strdup(i8* noundef nonnull %name.addr.0.lcssa229, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 noundef 243) #7
  %name95 = getelementptr inbounds %struct.OSSL_PROVIDER_INFO, %struct.OSSL_PROVIDER_INFO* %entry90, i64 0, i32 0
  store i8* %call94, i8** %name95, align 8, !tbaa !17
  %cmp97 = icmp eq i8* %call94, null
  br i1 %cmp97, label %if.then130.sink.split, label %if.end100

if.end100:                                        ; preds = %if.then93, %if.else89
  %cmp102.not = icmp eq i8* %path.0.lcssa228, null
  br i1 %cmp102.not, label %if.then112, label %if.then103

if.then103:                                       ; preds = %if.end100
  %call104 = call i8* @CRYPTO_strdup(i8* noundef nonnull %path.0.lcssa228, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 noundef 250) #7
  %path105 = getelementptr inbounds %struct.OSSL_PROVIDER_INFO, %struct.OSSL_PROVIDER_INFO* %entry90, i64 0, i32 1
  store i8* %call104, i8** %path105, align 8, !tbaa !20
  %cmp107 = icmp eq i8* %call104, null
  br i1 %cmp107, label %if.then130.sink.split, label %if.then112

if.then112:                                       ; preds = %if.end100, %if.then103
  %call113 = call fastcc i32 @provider_conf_params(%struct.ossl_provider_st* noundef null, %struct.OSSL_PROVIDER_INFO* noundef nonnull %entry90, i8* noundef null, i8* noundef %value, %struct.conf_st* noundef %cnf) #8
  %phi.cmp199 = icmp eq i32 %call113, 0
  br i1 %phi.cmp199, label %if.then130, label %land.lhs.true116

land.lhs.true116:                                 ; preds = %if.then112
  %path117 = getelementptr inbounds %struct.OSSL_PROVIDER_INFO, %struct.OSSL_PROVIDER_INFO* %entry90, i64 0, i32 1
  %15 = load i8*, i8** %path117, align 8, !tbaa !20
  %cmp118 = icmp ne i8* %15, null
  %parameters = getelementptr inbounds %struct.OSSL_PROVIDER_INFO, %struct.OSSL_PROVIDER_INFO* %entry90, i64 0, i32 3
  %16 = load %struct.stack_st_INFOPAIR*, %struct.stack_st_INFOPAIR** %parameters, align 8
  %cmp119 = icmp ne %struct.stack_st_INFOPAIR* %16, null
  %or.cond141 = select i1 %cmp118, i1 true, i1 %cmp119
  br i1 %or.cond141, label %if.then120, label %if.then130

if.then120:                                       ; preds = %land.lhs.true116
  %call121 = call i32 @ossl_provider_info_add_to_store(%struct.ossl_lib_ctx_st* noundef %libctx, %struct.OSSL_PROVIDER_INFO* noundef nonnull %entry90) #7
  %phi.cmp = icmp eq i32 %call121, 0
  br i1 %phi.cmp, label %if.then130, label %lor.lhs.false124

lor.lhs.false124:                                 ; preds = %if.then120
  %.pre = load i8*, i8** %path117, align 8, !tbaa !20
  %.pre220 = load %struct.stack_st_INFOPAIR*, %struct.stack_st_INFOPAIR** %parameters, align 8
  %phi.cmp221 = icmp eq i8* %.pre, null
  %phi.cmp222 = icmp eq %struct.stack_st_INFOPAIR* %.pre220, null
  %phi.sel = select i1 %phi.cmp221, i1 %phi.cmp222, i1 false
  br i1 %phi.sel, label %if.then130, label %if.end131

if.then130.sink.split:                            ; preds = %if.then103, %if.then93
  %.sink = phi i32 [ 245, %if.then93 ], [ 252, %if.then103 ]
  call void @ERR_new() #7
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 noundef %.sink, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.provider_conf_load, i64 0, i64 0)) #7
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 15, i32 noundef 786688, i8* noundef null) #7
  br label %if.then130

if.then130:                                       ; preds = %if.then130.sink.split, %land.lhs.true116, %if.then112, %lor.lhs.false124, %if.then120
  call void @ossl_provider_info_clear(%struct.OSSL_PROVIDER_INFO* noundef nonnull %entry90) #7
  br label %if.end131

if.end131:                                        ; preds = %if.then130, %lor.lhs.false124
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %14) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end86, %if.end131, %if.then49, %if.then53, %if.then39, %if.then32, %if.then
  %retval.0 = phi i32 [ 0, %if.then39 ], [ 0, %if.then32 ], [ 0, %if.then ], [ 0, %if.then53 ], [ 0, %if.then49 ], [ 1, %if.end131 ], [ 1, %if.end86 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #9
  ret i32 %retval.0
}

declare %struct.ossl_lib_ctx_st* @NCONF_get0_libctx(%struct.conf_st* noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

declare i8* @ossl_lib_ctx_get_data(%struct.ossl_lib_ctx_st* noundef, i32 noundef, %struct.ossl_lib_ctx_method* noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline nounwind readonly uwtable willreturn
define internal fastcc i8* @skip_dot(i8* noundef readonly %name) unnamed_addr #4 {
entry:
  %call = tail call i8* @strchr(i8* noundef %name, i32 noundef 46) #10
  %cmp.not = icmp eq i8* %call, null
  %add.ptr = getelementptr inbounds i8, i8* %call, i64 1
  %retval.0 = select i1 %cmp.not, i8* %name, i8* %add.ptr
  ret i8* %retval.0
}

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare i32 @strcmp(i8* noundef, i8* noundef) local_unnamed_addr #5

declare i32 @CRYPTO_THREAD_write_lock(i8* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @prov_already_activated(i8* noundef readonly %name, %struct.stack_st_OSSL_PROVIDER* noundef %activated) unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.stack_st_OSSL_PROVIDER* %activated, null
  br i1 %cmp, label %cleanup8, label %if.end

if.end:                                           ; preds = %entry
  %call = tail call fastcc i32 @sk_OSSL_PROVIDER_num(%struct.stack_st_OSSL_PROVIDER* noundef nonnull %activated) #8
  %cmp117 = icmp sgt i32 %call, 0
  br i1 %cmp117, label %for.body, label %cleanup8

for.cond:                                         ; preds = %for.body
  %exitcond.not = icmp eq i32 %inc, %call
  br i1 %exitcond.not, label %cleanup8, label %for.body, !llvm.loop !21

for.body:                                         ; preds = %if.end, %for.cond
  %i.018 = phi i32 [ %inc, %for.cond ], [ 0, %if.end ]
  %call2 = tail call fastcc %struct.ossl_provider_st* @sk_OSSL_PROVIDER_value(%struct.stack_st_OSSL_PROVIDER* noundef nonnull %activated, i32 noundef %i.018) #8
  %call3 = tail call i8* @OSSL_PROVIDER_get0_name(%struct.ossl_provider_st* noundef %call2) #7
  %call4 = tail call i32 @strcmp(i8* noundef %call3, i8* noundef %name) #10
  %cmp5 = icmp eq i32 %call4, 0
  %inc = add nuw nsw i32 %i.018, 1
  br i1 %cmp5, label %cleanup8, label %for.cond

cleanup8:                                         ; preds = %for.body, %for.cond, %if.end, %entry
  %retval.2 = phi i32 [ 0, %entry ], [ 0, %if.end ], [ 1, %for.body ], [ 0, %for.cond ]
  ret i32 %retval.2
}

declare i32 @ossl_provider_disable_fallback_loading(%struct.ossl_lib_ctx_st* noundef) local_unnamed_addr #1

declare i32 @CRYPTO_THREAD_unlock(i8* noundef) local_unnamed_addr #1

declare %struct.ossl_provider_st* @ossl_provider_find(%struct.ossl_lib_ctx_st* noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

declare %struct.ossl_provider_st* @ossl_provider_new(%struct.ossl_lib_ctx_st* noundef, i8* noundef, i32 (%struct.ossl_core_handle_st*, %struct.ossl_dispatch_st*, %struct.ossl_dispatch_st**, i8**)* noundef, i32 noundef) local_unnamed_addr #1

declare void @ERR_clear_error() local_unnamed_addr #1

declare i32 @ossl_provider_set_module_path(%struct.ossl_provider_st* noundef, i8* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @provider_conf_params(%struct.ossl_provider_st* noundef %prov, %struct.OSSL_PROVIDER_INFO* noundef %provinfo, i8* noundef %name, i8* noundef %value, %struct.conf_st* noundef %cnf) unnamed_addr #0 {
entry:
  %buffer = alloca [512 x i8], align 16
  %call = tail call %struct.stack_st_CONF_VALUE* @NCONF_get_section(%struct.conf_st* noundef %cnf, i8* noundef %value) #7
  %cmp.not = icmp eq %struct.stack_st_CONF_VALUE* %call, null
  br i1 %cmp.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %0 = getelementptr inbounds [512 x i8], [512 x i8]* %buffer, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 512, i8* nonnull %0) #9
  %cmp1.not = icmp eq i8* %name, null
  br i1 %cmp1.not, label %if.end, label %if.then2

if.then2:                                         ; preds = %if.then
  %call3 = call i64 @OPENSSL_strlcpy(i8* noundef nonnull %0, i8* noundef nonnull %name, i64 noundef 512) #7
  %call5 = call i64 @OPENSSL_strlcat(i8* noundef nonnull %0, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0), i64 noundef 512) #7
  %call7 = call i64 @strlen(i8* noundef nonnull %0) #10
  br label %if.end

if.end:                                           ; preds = %if.then2, %if.then
  %buffer_len.0 = phi i64 [ %call7, %if.then2 ], [ 0, %if.then ]
  %call8 = call fastcc %struct.stack_st* @ossl_check_const_CONF_VALUE_sk_type(%struct.stack_st_CONF_VALUE* noundef nonnull %call) #8
  %call963 = call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call8) #7
  %cmp1064 = icmp sgt i32 %call963, 0
  br i1 %cmp1064, label %for.body.lr.ph, label %if.end37.critedge

for.body.lr.ph:                                   ; preds = %if.end
  %arrayidx = getelementptr inbounds [512 x i8], [512 x i8]* %buffer, i64 0, i64 %buffer_len.0
  br label %for.body

for.cond:                                         ; preds = %if.end17
  %call9 = call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call8) #7
  %cmp10 = icmp slt i32 %inc, %call9
  br i1 %cmp10, label %for.body, label %if.end37.critedge, !llvm.loop !22

for.body:                                         ; preds = %for.body.lr.ph, %for.cond
  %i.065 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.cond ]
  %call12 = call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call8, i32 noundef %i.065) #7
  %name13 = getelementptr inbounds i8, i8* %call12, i64 8
  %1 = bitcast i8* %name13 to i8**
  %2 = load i8*, i8** %1, align 8, !tbaa !6
  %call14 = call i64 @strlen(i8* noundef %2) #10
  %add = add i64 %call14, %buffer_len.0
  %cmp15 = icmp ugt i64 %add, 511
  br i1 %cmp15, label %cleanup26, label %if.end17

if.end17:                                         ; preds = %for.body
  store i8 0, i8* %arrayidx, align 1, !tbaa !23
  %3 = load i8*, i8** %1, align 8, !tbaa !6
  %call20 = call i64 @OPENSSL_strlcat(i8* noundef nonnull %0, i8* noundef %3, i64 noundef 512) #7
  %value22 = getelementptr inbounds i8, i8* %call12, i64 16
  %4 = bitcast i8* %value22 to i8**
  %5 = load i8*, i8** %4, align 8, !tbaa !11
  %call23 = call fastcc i32 @provider_conf_params(%struct.ossl_provider_st* noundef %prov, %struct.OSSL_PROVIDER_INFO* noundef %provinfo, i8* noundef nonnull %0, i8* noundef %5, %struct.conf_st* noundef %cnf) #8
  %tobool.not.not = icmp eq i32 %call23, 0
  %inc = add nuw nsw i32 %i.065, 1
  br i1 %tobool.not.not, label %cleanup26, label %for.cond

cleanup26:                                        ; preds = %for.body, %if.end17
  call void @llvm.lifetime.end.p0i8(i64 512, i8* nonnull %0) #9
  br label %cleanup38

if.else:                                          ; preds = %entry
  %cmp31.not = icmp eq %struct.ossl_provider_st* %prov, null
  br i1 %cmp31.not, label %if.else34, label %if.then32

if.then32:                                        ; preds = %if.else
  %call33 = tail call i32 @ossl_provider_add_parameter(%struct.ossl_provider_st* noundef nonnull %prov, i8* noundef %name, i8* noundef %value) #7
  br label %cleanup38

if.else34:                                        ; preds = %if.else
  %call35 = tail call i32 @ossl_provider_info_add_parameter(%struct.OSSL_PROVIDER_INFO* noundef %provinfo, i8* noundef %name, i8* noundef %value) #7
  br label %cleanup38

if.end37.critedge:                                ; preds = %for.cond, %if.end
  call void @llvm.lifetime.end.p0i8(i64 512, i8* nonnull %0) #9
  br label %cleanup38

cleanup38:                                        ; preds = %if.else34, %if.then32, %if.end37.critedge, %cleanup26
  %retval.3 = phi i32 [ 0, %cleanup26 ], [ %call33, %if.then32 ], [ %call35, %if.else34 ], [ 1, %if.end37.critedge ]
  ret i32 %retval.3
}

declare i32 @ossl_provider_activate(%struct.ossl_provider_st* noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare i32 @ossl_provider_add_to_store(%struct.ossl_provider_st* noundef, %struct.ossl_provider_st** noundef, i32 noundef) local_unnamed_addr #1

declare i32 @ossl_provider_deactivate(%struct.ossl_provider_st* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.stack_st_OSSL_PROVIDER* @sk_OSSL_PROVIDER_new_null() unnamed_addr #0 {
entry:
  %call = tail call %struct.stack_st* @OPENSSL_sk_new_null() #7
  %0 = bitcast %struct.stack_st* %call to %struct.stack_st_OSSL_PROVIDER*
  ret %struct.stack_st_OSSL_PROVIDER* %0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @sk_OSSL_PROVIDER_push(%struct.stack_st_OSSL_PROVIDER* noundef %sk, %struct.ossl_provider_st* noundef %ptr) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.stack_st_OSSL_PROVIDER* %sk to %struct.stack_st*
  %1 = bitcast %struct.ossl_provider_st* %ptr to i8*
  %call = tail call i32 @OPENSSL_sk_push(%struct.stack_st* noundef %0, i8* noundef %1) #7
  ret void
}

declare void @ossl_provider_free(%struct.ossl_provider_st* noundef) #1

; Function Attrs: nounwind
declare i8* @memset(i8* noundef, i32 noundef, i64 noundef) local_unnamed_addr #6

declare i8* @CRYPTO_strdup(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

declare i32 @ossl_provider_info_add_to_store(%struct.ossl_lib_ctx_st* noundef, %struct.OSSL_PROVIDER_INFO* noundef) local_unnamed_addr #1

declare void @ossl_provider_info_clear(%struct.OSSL_PROVIDER_INFO* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal i8* @prov_conf_ossl_ctx_new(%struct.ossl_lib_ctx_st* nocapture noundef readnone %libctx) #0 {
entry:
  %call = tail call i8* @CRYPTO_zalloc(i64 noundef 16, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 noundef 31) #7
  %cmp = icmp eq i8* %call, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call1 = tail call i8* @CRYPTO_THREAD_lock_new() #7
  %lock = bitcast i8* %call to i8**
  store i8* %call1, i8** %lock, align 8, !tbaa !14
  %cmp3 = icmp eq i8* %call1, null
  br i1 %cmp3, label %if.then4, label %cleanup

if.then4:                                         ; preds = %if.end
  tail call void @CRYPTO_free(i8* noundef nonnull %call, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 noundef 38) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry, %if.then4
  %retval.0 = phi i8* [ null, %if.then4 ], [ null, %entry ], [ %call, %if.end ]
  ret i8* %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal void @prov_conf_ossl_ctx_free(i8* noundef %vpcgbl) #0 {
entry:
  %activated_providers = getelementptr inbounds i8, i8* %vpcgbl, i64 8
  %0 = bitcast i8* %activated_providers to %struct.stack_st_OSSL_PROVIDER**
  %1 = load %struct.stack_st_OSSL_PROVIDER*, %struct.stack_st_OSSL_PROVIDER** %0, align 8, !tbaa !16
  tail call fastcc void @sk_OSSL_PROVIDER_pop_free(%struct.stack_st_OSSL_PROVIDER* noundef %1) #8
  %lock = bitcast i8* %vpcgbl to i8**
  %2 = load i8*, i8** %lock, align 8, !tbaa !14
  tail call void @CRYPTO_THREAD_lock_free(i8* noundef %2) #7
  tail call void @CRYPTO_free(i8* noundef %vpcgbl, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 noundef 54) #7
  ret void
}

declare i8* @CRYPTO_zalloc(i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

declare i8* @CRYPTO_THREAD_lock_new() local_unnamed_addr #1

declare void @CRYPTO_free(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @sk_OSSL_PROVIDER_pop_free(%struct.stack_st_OSSL_PROVIDER* noundef %sk) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.stack_st_OSSL_PROVIDER* %sk to %struct.stack_st*
  tail call void @OPENSSL_sk_pop_free(%struct.stack_st* noundef %0, void (i8*)* noundef bitcast (void (%struct.ossl_provider_st*)* @ossl_provider_free to void (i8*)*)) #7
  ret void
}

declare void @CRYPTO_THREAD_lock_free(i8* noundef) local_unnamed_addr #1

declare void @OPENSSL_sk_pop_free(%struct.stack_st* noundef, void (i8*)* noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare i8* @strchr(i8* noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @sk_OSSL_PROVIDER_num(%struct.stack_st_OSSL_PROVIDER* noundef %sk) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.stack_st_OSSL_PROVIDER* %sk to %struct.stack_st*
  %call = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %0) #7
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.ossl_provider_st* @sk_OSSL_PROVIDER_value(%struct.stack_st_OSSL_PROVIDER* noundef %sk, i32 noundef %idx) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.stack_st_OSSL_PROVIDER* %sk to %struct.stack_st*
  %call = tail call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %0, i32 noundef %idx) #7
  %1 = bitcast i8* %call to %struct.ossl_provider_st*
  ret %struct.ossl_provider_st* %1
}

declare i8* @OSSL_PROVIDER_get0_name(%struct.ossl_provider_st* noundef) local_unnamed_addr #1

declare i64 @OPENSSL_strlcpy(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #1

declare i64 @OPENSSL_strlcat(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare i64 @strlen(i8* noundef) local_unnamed_addr #5

declare i32 @ossl_provider_add_parameter(%struct.ossl_provider_st* noundef, i8* noundef, i8* noundef) local_unnamed_addr #1

declare i32 @ossl_provider_info_add_parameter(%struct.OSSL_PROVIDER_INFO* noundef, i8* noundef, i8* noundef) local_unnamed_addr #1

declare %struct.stack_st* @OPENSSL_sk_new_null() local_unnamed_addr #1

declare i32 @OPENSSL_sk_push(%struct.stack_st* noundef, i8* noundef) local_unnamed_addr #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline nounwind readonly uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nobuiltin nounwind "no-builtins" }
attributes #8 = { nobuiltin "no-builtins" }
attributes #9 = { nounwind }
attributes #10 = { nobuiltin nounwind readonly willreturn "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{!"clang version 14.0.0"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = !{!7, !8, i64 8}
!7 = !{!"", !8, i64 0, !8, i64 8, !8, i64 16}
!8 = !{!"any pointer", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
!11 = !{!7, !8, i64 16}
!12 = !{!8, !8, i64 0}
!13 = distinct !{!13, !5}
!14 = !{!15, !8, i64 0}
!15 = !{!"", !8, i64 0, !8, i64 8}
!16 = !{!15, !8, i64 8}
!17 = !{!18, !8, i64 0}
!18 = !{!"", !8, i64 0, !8, i64 8, !8, i64 16, !8, i64 24, !19, i64 32}
!19 = !{!"int", !9, i64 0}
!20 = !{!18, !8, i64 8}
!21 = distinct !{!21, !5}
!22 = distinct !{!22, !5}
!23 = !{!9, !9, i64 0}
