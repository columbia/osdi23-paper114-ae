; ModuleID = 'crypto/engine/eng_cnf.c'
source_filename = "crypto/engine/eng_cnf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stack_st_ENGINE = type opaque
%struct.conf_imodule_st = type opaque
%struct.conf_st = type { %struct.conf_method_st*, i8*, %struct.lhash_st_CONF_VALUE*, i32, i32, i8*, %struct.ossl_lib_ctx_st* }
%struct.conf_method_st = type { i8*, %struct.conf_st* (%struct.conf_method_st*)*, i32 (%struct.conf_st*)*, i32 (%struct.conf_st*)*, i32 (%struct.conf_st*)*, i32 (%struct.conf_st*, %struct.bio_st*, i64*)*, i32 (%struct.conf_st*, %struct.bio_st*)*, i32 (%struct.conf_st*, i8)*, i32 (%struct.conf_st*, i8)*, i32 (%struct.conf_st*, i8*, i64*)* }
%struct.bio_st = type opaque
%struct.lhash_st_CONF_VALUE = type { %union.lh_CONF_VALUE_dummy }
%union.lh_CONF_VALUE_dummy = type { i8* }
%struct.ossl_lib_ctx_st = type opaque
%struct.stack_st_CONF_VALUE = type opaque
%struct.stack_st = type opaque
%struct.engine_st = type { i8*, i8*, %struct.rsa_meth_st*, %struct.dsa_method*, %struct.dh_method*, %struct.ec_key_method_st*, %struct.rand_meth_st*, i32 (%struct.engine_st*, %struct.evp_cipher_st**, i32**, i32)*, i32 (%struct.engine_st*, %struct.evp_md_st**, i32**, i32)*, i32 (%struct.engine_st*, %struct.evp_pkey_method_st**, i32**, i32)*, i32 (%struct.engine_st*, %struct.evp_pkey_asn1_method_st**, i32**, i32)*, i32 (%struct.engine_st*)*, i32 (%struct.engine_st*)*, i32 (%struct.engine_st*)*, i32 (%struct.engine_st*, i32, i64, i8*, void ()*)*, %struct.evp_pkey_st* (%struct.engine_st*, i8*, %struct.ui_method_st*, i8*)*, %struct.evp_pkey_st* (%struct.engine_st*, i8*, %struct.ui_method_st*, i8*)*, i32 (%struct.engine_st*, %struct.ssl_st*, %struct.stack_st_X509_NAME*, %struct.x509_st**, %struct.evp_pkey_st**, %struct.stack_st_X509**, %struct.ui_method_st*, i8*)*, %struct.ENGINE_CMD_DEFN_st*, i32, i32, i32, %struct.crypto_ex_data_st, %struct.engine_st*, %struct.engine_st* }
%struct.rsa_meth_st = type opaque
%struct.dsa_method = type opaque
%struct.dh_method = type opaque
%struct.ec_key_method_st = type opaque
%struct.rand_meth_st = type { i32 (i8*, i32)*, i32 (i8*, i32)*, void ()*, i32 (i8*, i32, double)*, i32 (i8*, i32)*, i32 ()* }
%struct.evp_cipher_st = type opaque
%struct.evp_md_st = type opaque
%struct.evp_pkey_method_st = type opaque
%struct.evp_pkey_asn1_method_st = type opaque
%struct.evp_pkey_st = type opaque
%struct.ui_method_st = type opaque
%struct.ssl_st = type opaque
%struct.stack_st_X509_NAME = type opaque
%struct.x509_st = type opaque
%struct.stack_st_X509 = type opaque
%struct.ENGINE_CMD_DEFN_st = type { i32, i8*, i8*, i32 }
%struct.crypto_ex_data_st = type { %struct.ossl_lib_ctx_st*, %struct.stack_st_void* }
%struct.stack_st_void = type opaque

@.str = private unnamed_addr constant [8 x i8] c"engines\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"crypto/engine/eng_cnf.c\00", align 1
@__func__.int_engine_module_init = private unnamed_addr constant [23 x i8] c"int_engine_module_init\00", align 1
@__func__.int_engine_configure = private unnamed_addr constant [21 x i8] c"int_engine_configure\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"engine_id\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"soft_load\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"dynamic_path\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"dynamic\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"SO_PATH\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"LIST_ADD\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"2\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"LOAD\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"EMPTY\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"init\00", align 1
@.str.12 = private unnamed_addr constant [19 x i8] c"default_algorithms\00", align 1
@.str.13 = private unnamed_addr constant [30 x i8] c"section=%s, name=%s, value=%s\00", align 1
@initialized_engines = internal unnamed_addr global %struct.stack_st_ENGINE* null, align 8

; Function Attrs: noinline nounwind uwtable
define void @ENGINE_add_conf_module() local_unnamed_addr #0 {
entry:
  %call = tail call i32 @CONF_module_add(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 (%struct.conf_imodule_st*, %struct.conf_st*)* noundef nonnull @int_engine_module_init, void (%struct.conf_imodule_st*)* noundef nonnull @int_engine_module_finish) #6
  ret void
}

declare i32 @CONF_module_add(i8* noundef, i32 (%struct.conf_imodule_st*, %struct.conf_st*)* noundef, void (%struct.conf_imodule_st*)* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @int_engine_module_init(%struct.conf_imodule_st* noundef %md, %struct.conf_st* noundef %cnf) #0 {
entry:
  %call = tail call i8* @CONF_imodule_get_value(%struct.conf_imodule_st* noundef %md) #6
  %call1 = tail call %struct.stack_st_CONF_VALUE* @NCONF_get_section(%struct.conf_st* noundef %cnf, i8* noundef %call) #6
  %tobool.not = icmp eq %struct.stack_st_CONF_VALUE* %call1, null
  br i1 %tobool.not, label %if.then, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  %call2 = tail call fastcc %struct.stack_st* @ossl_check_const_CONF_VALUE_sk_type(%struct.stack_st_CONF_VALUE* noundef nonnull %call1) #7
  %call321 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call2) #6
  %cmp22 = icmp sgt i32 %call321, 0
  br i1 %cmp22, label %for.body, label %cleanup

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 noundef 158, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.int_engine_module_init, i64 0, i64 0)) #6
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 38, i32 noundef 148, i8* noundef null) #6
  br label %cleanup

for.cond:                                         ; preds = %for.body
  %call3 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call2) #6
  %cmp = icmp slt i32 %inc, %call3
  br i1 %cmp, label %for.body, label %cleanup, !llvm.loop !4

for.body:                                         ; preds = %for.cond.preheader, %for.cond
  %i.023 = phi i32 [ %inc, %for.cond ], [ 0, %for.cond.preheader ]
  %call5 = tail call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call2, i32 noundef %i.023) #6
  %name = getelementptr inbounds i8, i8* %call5, i64 8
  %0 = bitcast i8* %name to i8**
  %1 = load i8*, i8** %0, align 8, !tbaa !6
  %value = getelementptr inbounds i8, i8* %call5, i64 16
  %2 = bitcast i8* %value to i8**
  %3 = load i8*, i8** %2, align 8, !tbaa !11
  %call6 = tail call fastcc i32 @int_engine_configure(i8* noundef %1, i8* noundef %3, %struct.conf_st* noundef %cnf) #7
  %tobool7.not = icmp eq i32 %call6, 0
  %inc = add nuw nsw i32 %i.023, 1
  br i1 %tobool7.not, label %cleanup, label %for.cond

cleanup:                                          ; preds = %for.body, %for.cond, %for.cond.preheader, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 1, %for.cond.preheader ], [ 0, %for.body ], [ 1, %for.cond ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal void @int_engine_module_finish(%struct.conf_imodule_st* nocapture noundef readnone %md) #0 {
entry:
  %0 = load %struct.stack_st_ENGINE*, %struct.stack_st_ENGINE** @initialized_engines, align 8, !tbaa !12
  %call3 = tail call fastcc %struct.engine_st* @sk_ENGINE_pop(%struct.stack_st_ENGINE* noundef %0) #7
  %tobool.not4 = icmp eq %struct.engine_st* %call3, null
  br i1 %tobool.not4, label %while.end, label %while.body

while.body:                                       ; preds = %entry, %while.body
  %call5 = phi %struct.engine_st* [ %call, %while.body ], [ %call3, %entry ]
  %call1 = tail call i32 @ENGINE_finish(%struct.engine_st* noundef nonnull %call5) #6
  %1 = load %struct.stack_st_ENGINE*, %struct.stack_st_ENGINE** @initialized_engines, align 8, !tbaa !12
  %call = tail call fastcc %struct.engine_st* @sk_ENGINE_pop(%struct.stack_st_ENGINE* noundef %1) #7
  %tobool.not = icmp eq %struct.engine_st* %call, null
  br i1 %tobool.not, label %while.end, label %while.body, !llvm.loop !13

while.end:                                        ; preds = %while.body, %entry
  %2 = load %struct.stack_st_ENGINE*, %struct.stack_st_ENGINE** @initialized_engines, align 8, !tbaa !12
  tail call fastcc void @sk_ENGINE_free(%struct.stack_st_ENGINE* noundef %2) #7
  store %struct.stack_st_ENGINE* null, %struct.stack_st_ENGINE** @initialized_engines, align 8, !tbaa !12
  ret void
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
define internal fastcc i32 @int_engine_configure(i8* noundef %name, i8* noundef %value, %struct.conf_st* noundef %cnf) unnamed_addr #0 {
entry:
  %do_init = alloca i64, align 8
  %0 = bitcast i64* %do_init to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #8
  store i64 -1, i64* %do_init, align 8, !tbaa !14
  %call = tail call fastcc i8* @skip_dot(i8* noundef %name) #7
  %call1 = tail call %struct.stack_st_CONF_VALUE* @NCONF_get_section(%struct.conf_st* noundef %cnf, i8* noundef %value) #6
  %tobool.not = icmp eq %struct.stack_st_CONF_VALUE* %call1, null
  br i1 %tobool.not, label %if.then, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  %call2 = call fastcc %struct.stack_st* @ossl_check_const_CONF_VALUE_sk_type(%struct.stack_st_CONF_VALUE* noundef nonnull %call1) #7
  %call3176 = call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call2) #6
  %cmp177 = icmp sgt i32 %call3176, 0
  br i1 %cmp177, label %for.body, label %if.end103

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 noundef 60, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.int_engine_configure, i64 0, i64 0)) #6
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 38, i32 noundef 149, i8* noundef null) #6
  br label %cleanup

for.body:                                         ; preds = %for.cond.preheader, %for.inc
  %soft.0181 = phi i32 [ %soft.1, %for.inc ], [ 0, %for.cond.preheader ]
  %e.0180 = phi %struct.engine_st* [ %e.2, %for.inc ], [ null, %for.cond.preheader ]
  %name.addr.0179 = phi i8* [ %name.addr.1, %for.inc ], [ %call, %for.cond.preheader ]
  %i.0178 = phi i32 [ %inc, %for.inc ], [ 0, %for.cond.preheader ]
  %call5 = call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call2, i32 noundef %i.0178) #6
  %name6 = getelementptr inbounds i8, i8* %call5, i64 8
  %1 = bitcast i8* %name6 to i8**
  %2 = load i8*, i8** %1, align 8, !tbaa !6
  %call7 = call fastcc i8* @skip_dot(i8* noundef %2) #7
  %value8 = getelementptr inbounds i8, i8* %call5, i64 16
  %3 = bitcast i8* %value8 to i8**
  %4 = load i8*, i8** %3, align 8, !tbaa !11
  %call9 = call i32 @strcmp(i8* noundef %call7, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0)) #9
  %cmp10 = icmp eq i32 %call9, 0
  br i1 %cmp10, label %for.inc, label %if.else

if.else:                                          ; preds = %for.body
  %call12 = call i32 @strcmp(i8* noundef %call7, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0)) #9
  %cmp13 = icmp eq i32 %call12, 0
  br i1 %cmp13, label %for.inc, label %if.else15

if.else15:                                        ; preds = %if.else
  %call16 = call i32 @strcmp(i8* noundef %call7, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0)) #9
  %cmp17 = icmp eq i32 %call16, 0
  br i1 %cmp17, label %if.then18, label %if.else35

if.then18:                                        ; preds = %if.else15
  %call19 = call %struct.engine_st* @ENGINE_by_id(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0)) #6
  %tobool20.not = icmp eq %struct.engine_st* %call19, null
  br i1 %tobool20.not, label %if.else99, label %if.end22

if.end22:                                         ; preds = %if.then18
  %call23 = call i32 @ENGINE_ctrl_cmd_string(%struct.engine_st* noundef nonnull %call19, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i8* noundef %4, i32 noundef 0) #6
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %if.else99, label %if.end26

if.end26:                                         ; preds = %if.end22
  %call27 = call i32 @ENGINE_ctrl_cmd_string(%struct.engine_st* noundef nonnull %call19, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0), i32 noundef 0) #6
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %if.else99, label %if.end30

if.end30:                                         ; preds = %if.end26
  %call31 = call i32 @ENGINE_ctrl_cmd_string(%struct.engine_st* noundef nonnull %call19, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0), i8* noundef null, i32 noundef 0) #6
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %if.else99, label %for.inc

if.else35:                                        ; preds = %if.else15
  %tobool36.not = icmp eq %struct.engine_st* %e.0180, null
  br i1 %tobool36.not, label %if.then37, label %if.end46

if.then37:                                        ; preds = %if.else35
  %call38 = call %struct.engine_st* @ENGINE_by_id(i8* noundef %name.addr.0179) #6
  %tobool39 = icmp eq %struct.engine_st* %call38, null
  %tobool40 = icmp ne i32 %soft.0181, 0
  %or.cond = select i1 %tobool39, i1 %tobool40, i1 false
  br i1 %or.cond, label %if.then41, label %if.end42

if.then41:                                        ; preds = %if.then37
  call void @ERR_clear_error() #6
  br label %cleanup

if.end42:                                         ; preds = %if.then37
  br i1 %tobool39, label %if.else99, label %if.end46

if.end46:                                         ; preds = %if.end42, %if.else35
  %e.1 = phi %struct.engine_st* [ %e.0180, %if.else35 ], [ %call38, %if.end42 ]
  %call47 = call i32 @strcmp(i8* noundef %4, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0)) #9
  %cmp48 = icmp eq i32 %call47, 0
  %spec.store.select = select i1 %cmp48, i8* null, i8* %4
  %call51 = call i32 @strcmp(i8* noundef %call7, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0)) #9
  %cmp52 = icmp eq i32 %call51, 0
  br i1 %cmp52, label %if.then53, label %if.else69

if.then53:                                        ; preds = %if.end46
  %call54 = call i32 @NCONF_get_number_e(%struct.conf_st* noundef %cnf, i8* noundef %value, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0), i64* noundef nonnull %do_init) #6
  %tobool55.not = icmp eq i32 %call54, 0
  br i1 %tobool55.not, label %if.else99, label %if.end57

if.end57:                                         ; preds = %if.then53
  %5 = load i64, i64* %do_init, align 8, !tbaa !14
  switch i64 %5, label %if.then66 [
    i64 1, label %if.then59
    i64 0, label %for.inc
  ]

if.then59:                                        ; preds = %if.end57
  %call60 = call fastcc i32 @int_engine_init(%struct.engine_st* noundef nonnull %e.1) #7
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %if.else99, label %for.inc

if.then66:                                        ; preds = %if.end57
  call void @ERR_new() #6
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 noundef 118, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.int_engine_configure, i64 0, i64 0)) #6
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 38, i32 noundef 151, i8* noundef null) #6
  br label %if.else99

if.else69:                                        ; preds = %if.end46
  %call70 = call i32 @strcmp(i8* noundef %call7, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.12, i64 0, i64 0)) #9
  %cmp71 = icmp eq i32 %call70, 0
  br i1 %cmp71, label %if.then72, label %if.else77

if.then72:                                        ; preds = %if.else69
  %call73 = call i32 @ENGINE_set_default_string(%struct.engine_st* noundef nonnull %e.1, i8* noundef %spec.store.select) #6
  %tobool74.not = icmp eq i32 %call73, 0
  br i1 %tobool74.not, label %if.else99, label %for.inc

if.else77:                                        ; preds = %if.else69
  %call78 = call i32 @ENGINE_ctrl_cmd_string(%struct.engine_st* noundef nonnull %e.1, i8* noundef %call7, i8* noundef %spec.store.select, i32 noundef 0) #6
  %tobool79.not = icmp eq i32 %call78, 0
  br i1 %tobool79.not, label %if.else99, label %for.inc

for.inc:                                          ; preds = %if.end57, %if.else, %for.body, %if.end30, %if.then72, %if.else77, %if.then59
  %name.addr.1 = phi i8* [ %name.addr.0179, %if.end30 ], [ %name.addr.0179, %if.then59 ], [ %name.addr.0179, %if.then72 ], [ %name.addr.0179, %if.else77 ], [ %4, %for.body ], [ %name.addr.0179, %if.else ], [ %name.addr.0179, %if.end57 ]
  %e.2 = phi %struct.engine_st* [ %call19, %if.end30 ], [ %e.1, %if.then59 ], [ %e.1, %if.then72 ], [ %e.1, %if.else77 ], [ %e.0180, %for.body ], [ %e.0180, %if.else ], [ %e.1, %if.end57 ]
  %soft.1 = phi i32 [ %soft.0181, %if.end30 ], [ %soft.0181, %if.then59 ], [ %soft.0181, %if.then72 ], [ %soft.0181, %if.else77 ], [ %soft.0181, %for.body ], [ 1, %if.else ], [ %soft.0181, %if.end57 ]
  %inc = add nuw nsw i32 %i.0178, 1
  %call3 = call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call2) #6
  %cmp = icmp slt i32 %inc, %call3
  br i1 %cmp, label %for.body, label %for.end, !llvm.loop !16

for.end:                                          ; preds = %for.inc
  %.pre = load i64, i64* %do_init, align 8
  %phi.cmp = icmp eq i64 %.pre, -1
  %tobool87 = icmp ne %struct.engine_st* %e.2, null
  %or.cond113 = select i1 %tobool87, i1 %phi.cmp, i1 false
  br i1 %or.cond113, label %land.lhs.true90, label %if.end103

land.lhs.true90:                                  ; preds = %for.end
  %call91 = call fastcc i32 @int_engine_init(%struct.engine_st* noundef nonnull %e.2) #7
  %tobool92.not = icmp eq i32 %call91, 0
  br i1 %tobool92.not, label %if.then98, label %if.end103

if.then98:                                        ; preds = %land.lhs.true90
  call void @ERR_new() #6
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 noundef 137, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.int_engine_configure, i64 0, i64 0)) #6
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 38, i32 noundef 102, i8* noundef null) #6
  br label %if.end103

if.else99:                                        ; preds = %if.then18, %if.end22, %if.end26, %if.end30, %if.end42, %if.then53, %if.then59, %if.then72, %if.else77, %if.then66
  %e.3.ph.ph = phi %struct.engine_st* [ %e.1, %if.then66 ], [ %e.1, %if.else77 ], [ %e.1, %if.then72 ], [ %e.1, %if.then59 ], [ %e.1, %if.then53 ], [ null, %if.end42 ], [ %call19, %if.end30 ], [ %call19, %if.end26 ], [ %call19, %if.end22 ], [ null, %if.then18 ]
  %6 = bitcast i8* %value8 to i8**
  %7 = bitcast i8* %name6 to i8**
  call void @ERR_new() #6
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 noundef 139, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.int_engine_configure, i64 0, i64 0)) #6
  %section = bitcast i8* %call5 to i8**
  %8 = load i8*, i8** %section, align 8, !tbaa !17
  %9 = load i8*, i8** %7, align 8, !tbaa !6
  %10 = load i8*, i8** %6, align 8, !tbaa !11
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 38, i32 noundef 102, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.13, i64 0, i64 0), i8* noundef %8, i8* noundef %9, i8* noundef %10) #6
  br label %if.end103

if.end103:                                        ; preds = %for.cond.preheader, %land.lhs.true90, %for.end, %if.then98, %if.else99
  %e.3164 = phi %struct.engine_st* [ %e.2, %if.then98 ], [ %e.3.ph.ph, %if.else99 ], [ %e.2, %for.end ], [ %e.2, %land.lhs.true90 ], [ null, %for.cond.preheader ]
  %ret.0161 = phi i32 [ 0, %if.then98 ], [ 0, %if.else99 ], [ 1, %for.end ], [ 1, %land.lhs.true90 ], [ 1, %for.cond.preheader ]
  %call104 = call i32 @ENGINE_free(%struct.engine_st* noundef %e.3164) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end103, %if.then41, %if.then
  %retval.0 = phi i32 [ %ret.0161, %if.end103 ], [ 1, %if.then41 ], [ 0, %if.then ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #8
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: mustprogress nofree noinline nounwind readonly uwtable willreturn
define internal fastcc i8* @skip_dot(i8* noundef readonly %name) unnamed_addr #4 {
entry:
  %call = tail call i8* @strchr(i8* noundef %name, i32 noundef 46) #9
  %cmp.not = icmp eq i8* %call, null
  %add.ptr = getelementptr inbounds i8, i8* %call, i64 1
  %retval.0 = select i1 %cmp.not, i8* %name, i8* %add.ptr
  ret i8* %retval.0
}

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare i32 @strcmp(i8* noundef, i8* noundef) local_unnamed_addr #5

declare %struct.engine_st* @ENGINE_by_id(i8* noundef) local_unnamed_addr #1

declare i32 @ENGINE_ctrl_cmd_string(%struct.engine_st* noundef, i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

declare void @ERR_clear_error() local_unnamed_addr #1

declare i32 @NCONF_get_number_e(%struct.conf_st* noundef, i8* noundef, i8* noundef, i64* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @int_engine_init(%struct.engine_st* noundef %e) unnamed_addr #0 {
entry:
  %call = tail call i32 @ENGINE_init(%struct.engine_st* noundef %e) #6
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %return, label %if.end

if.end:                                           ; preds = %entry
  %0 = load %struct.stack_st_ENGINE*, %struct.stack_st_ENGINE** @initialized_engines, align 8, !tbaa !12
  %tobool1.not = icmp eq %struct.stack_st_ENGINE* %0, null
  br i1 %tobool1.not, label %if.end4, label %lor.lhs.false

if.end4:                                          ; preds = %if.end
  %call3 = tail call fastcc %struct.stack_st_ENGINE* @sk_ENGINE_new_null() #7
  store %struct.stack_st_ENGINE* %call3, %struct.stack_st_ENGINE** @initialized_engines, align 8, !tbaa !12
  %tobool5.not = icmp eq %struct.stack_st_ENGINE* %call3, null
  br i1 %tobool5.not, label %if.then8, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end, %if.end4
  %1 = phi %struct.stack_st_ENGINE* [ %call3, %if.end4 ], [ %0, %if.end ]
  %call6 = tail call fastcc i32 @sk_ENGINE_push(%struct.stack_st_ENGINE* noundef nonnull %1, %struct.engine_st* noundef %e) #7
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.then8, label %return

if.then8:                                         ; preds = %lor.lhs.false, %if.end4
  %call9 = tail call i32 @ENGINE_finish(%struct.engine_st* noundef %e) #6
  br label %return

return:                                           ; preds = %lor.lhs.false, %entry, %if.then8
  %retval.0 = phi i32 [ 0, %if.then8 ], [ 0, %entry ], [ 1, %lor.lhs.false ]
  ret i32 %retval.0
}

declare i32 @ENGINE_set_default_string(%struct.engine_st* noundef, i8* noundef) local_unnamed_addr #1

declare i32 @ENGINE_free(%struct.engine_st* noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare i8* @strchr(i8* noundef, i32 noundef) local_unnamed_addr #5

declare i32 @ENGINE_init(%struct.engine_st* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.stack_st_ENGINE* @sk_ENGINE_new_null() unnamed_addr #0 {
entry:
  %call = tail call %struct.stack_st* @OPENSSL_sk_new_null() #6
  %0 = bitcast %struct.stack_st* %call to %struct.stack_st_ENGINE*
  ret %struct.stack_st_ENGINE* %0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @sk_ENGINE_push(%struct.stack_st_ENGINE* noundef %sk, %struct.engine_st* noundef %ptr) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.stack_st_ENGINE* %sk to %struct.stack_st*
  %1 = bitcast %struct.engine_st* %ptr to i8*
  %call = tail call i32 @OPENSSL_sk_push(%struct.stack_st* noundef %0, i8* noundef %1) #6
  ret i32 %call
}

declare i32 @ENGINE_finish(%struct.engine_st* noundef) local_unnamed_addr #1

declare %struct.stack_st* @OPENSSL_sk_new_null() local_unnamed_addr #1

declare i32 @OPENSSL_sk_push(%struct.stack_st* noundef, i8* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.engine_st* @sk_ENGINE_pop(%struct.stack_st_ENGINE* noundef %sk) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.stack_st_ENGINE* %sk to %struct.stack_st*
  %call = tail call i8* @OPENSSL_sk_pop(%struct.stack_st* noundef %0) #6
  %1 = bitcast i8* %call to %struct.engine_st*
  ret %struct.engine_st* %1
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @sk_ENGINE_free(%struct.stack_st_ENGINE* noundef %sk) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.stack_st_ENGINE* %sk to %struct.stack_st*
  tail call void @OPENSSL_sk_free(%struct.stack_st* noundef %0) #6
  ret void
}

declare i8* @OPENSSL_sk_pop(%struct.stack_st* noundef) local_unnamed_addr #1

declare void @OPENSSL_sk_free(%struct.stack_st* noundef) local_unnamed_addr #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline nounwind readonly uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nobuiltin nounwind "no-builtins" }
attributes #7 = { nobuiltin "no-builtins" }
attributes #8 = { nounwind }
attributes #9 = { nobuiltin nounwind readonly willreturn "no-builtins" }

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
!14 = !{!15, !15, i64 0}
!15 = !{!"long", !9, i64 0}
!16 = distinct !{!16, !5}
!17 = !{!7, !8, i64 0}
