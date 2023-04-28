; ModuleID = 'crypto/engine/eng_dyn.c'
source_filename = "crypto/engine/eng_dyn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ENGINE_CMD_DEFN_st = type { i32, i8*, i8*, i32 }
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
%struct.crypto_ex_data_st = type { %struct.ossl_lib_ctx_st*, %struct.stack_st_void* }
%struct.ossl_lib_ctx_st = type opaque
%struct.stack_st_void = type opaque
%struct.st_dynamic_data_ctx = type { %struct.dso_st*, i64 (i64)*, i32 (%struct.engine_st*, i8*, %struct.st_dynamic_fns*)*, i8*, i32, i8*, i32, i8*, i8*, i32, %struct.stack_st_OPENSSL_STRING* }
%struct.dso_st = type opaque
%struct.st_dynamic_fns = type { i8*, %struct.st_dynamic_MEM_fns }
%struct.st_dynamic_MEM_fns = type { i8* (i64, i8*, i32)*, i8* (i8*, i64, i8*, i32)*, void (i8*, i8*, i32)* }
%struct.stack_st_OPENSSL_STRING = type opaque
%struct.stack_st = type opaque
%struct.dso_meth_st = type opaque

@dynamic_cmd_defns = internal constant [8 x %struct.ENGINE_CMD_DEFN_st] [%struct.ENGINE_CMD_DEFN_st { i32 200, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.6, i32 0, i32 0), i32 2 }, %struct.ENGINE_CMD_DEFN_st { i32 201, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.8, i32 0, i32 0), i32 1 }, %struct.ENGINE_CMD_DEFN_st { i32 202, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.10, i32 0, i32 0), i32 2 }, %struct.ENGINE_CMD_DEFN_st { i32 203, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.12, i32 0, i32 0), i32 1 }, %struct.ENGINE_CMD_DEFN_st { i32 204, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.14, i32 0, i32 0), i32 1 }, %struct.ENGINE_CMD_DEFN_st { i32 205, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.16, i32 0, i32 0), i32 2 }, %struct.ENGINE_CMD_DEFN_st { i32 206, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.18, i32 0, i32 0), i32 4 }, %struct.ENGINE_CMD_DEFN_st zeroinitializer], align 16
@.str = private unnamed_addr constant [8 x i8] c"dynamic\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"Dynamic engine loading support\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"crypto/engine/eng_dyn.c\00", align 1
@__func__.dynamic_ctrl = private unnamed_addr constant [13 x i8] c"dynamic_ctrl\00", align 1
@dynamic_ex_data_idx = internal unnamed_addr global i32 -1, align 4
@__func__.dynamic_get_data_ctx = private unnamed_addr constant [21 x i8] c"dynamic_get_data_ctx\00", align 1
@global_engine_lock = external local_unnamed_addr global i8*, align 8
@__func__.dynamic_set_data_ctx = private unnamed_addr constant [21 x i8] c"dynamic_set_data_ctx\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"v_check\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"bind_engine\00", align 1
@__func__.dynamic_load = private unnamed_addr constant [13 x i8] c"dynamic_load\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"SO_PATH\00", align 1
@.str.6 = private unnamed_addr constant [52 x i8] c"Specifies the path to the new ENGINE shared library\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"NO_VCHECK\00", align 1
@.str.8 = private unnamed_addr constant [63 x i8] c"Specifies to continue even if version checking fails (boolean)\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"ID\00", align 1
@.str.10 = private unnamed_addr constant [40 x i8] c"Specifies an ENGINE id name for loading\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"LIST_ADD\00", align 1
@.str.12 = private unnamed_addr constant [77 x i8] c"Whether to add a loaded ENGINE to the internal list (0=no,1=yes,2=mandatory)\00", align 1
@.str.13 = private unnamed_addr constant [9 x i8] c"DIR_LOAD\00", align 1
@.str.14 = private unnamed_addr constant [78 x i8] c"Specifies whether to load from 'DIR_ADD' directories (0=no,1=yes,2=mandatory)\00", align 1
@.str.15 = private unnamed_addr constant [8 x i8] c"DIR_ADD\00", align 1
@.str.16 = private unnamed_addr constant [50 x i8] c"Adds a directory from which ENGINEs can be loaded\00", align 1
@.str.17 = private unnamed_addr constant [5 x i8] c"LOAD\00", align 1
@.str.18 = private unnamed_addr constant [47 x i8] c"Load up the ENGINE specified by other settings\00", align 1

; Function Attrs: noinline nounwind uwtable
define void @engine_load_dynamic_int() local_unnamed_addr #0 {
entry:
  %call = tail call fastcc %struct.engine_st* @engine_dynamic() #6
  %tobool.not = icmp eq %struct.engine_st* %call, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @ERR_set_mark() #7
  %call2 = tail call i32 @ENGINE_add(%struct.engine_st* noundef nonnull %call) #7
  %call3 = tail call i32 @ENGINE_free(%struct.engine_st* noundef nonnull %call) #7
  %call4 = tail call i32 @ERR_pop_to_mark() #7
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.engine_st* @engine_dynamic() unnamed_addr #0 {
entry:
  %call = tail call %struct.engine_st* @ENGINE_new() #7
  %cmp = icmp eq %struct.engine_st* %call, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @ENGINE_set_id(%struct.engine_st* noundef nonnull %call, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0)) #7
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.then19, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %call2 = tail call i32 @ENGINE_set_name(%struct.engine_st* noundef nonnull %call, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0)) #7
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.then19, label %lor.lhs.false4

lor.lhs.false4:                                   ; preds = %lor.lhs.false
  %call5 = tail call i32 @ENGINE_set_init_function(%struct.engine_st* noundef nonnull %call, i32 (%struct.engine_st*)* noundef nonnull @dynamic_init) #7
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.then19, label %lor.lhs.false7

lor.lhs.false7:                                   ; preds = %lor.lhs.false4
  %call8 = tail call i32 @ENGINE_set_finish_function(%struct.engine_st* noundef nonnull %call, i32 (%struct.engine_st*)* noundef nonnull @dynamic_finish) #7
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.then19, label %lor.lhs.false10

lor.lhs.false10:                                  ; preds = %lor.lhs.false7
  %call11 = tail call i32 @ENGINE_set_ctrl_function(%struct.engine_st* noundef nonnull %call, i32 (%struct.engine_st*, i32, i64, i8*, void ()*)* noundef nonnull @dynamic_ctrl) #7
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.then19, label %lor.lhs.false13

lor.lhs.false13:                                  ; preds = %lor.lhs.false10
  %call14 = tail call i32 @ENGINE_set_flags(%struct.engine_st* noundef nonnull %call, i32 noundef 4) #7
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.then19, label %lor.lhs.false16

lor.lhs.false16:                                  ; preds = %lor.lhs.false13
  %call17 = tail call i32 @ENGINE_set_cmd_defns(%struct.engine_st* noundef nonnull %call, %struct.ENGINE_CMD_DEFN_st* noundef getelementptr inbounds ([8 x %struct.ENGINE_CMD_DEFN_st], [8 x %struct.ENGINE_CMD_DEFN_st]* @dynamic_cmd_defns, i64 0, i64 0)) #7
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.then19, label %cleanup

if.then19:                                        ; preds = %lor.lhs.false16, %lor.lhs.false13, %lor.lhs.false10, %lor.lhs.false7, %lor.lhs.false4, %lor.lhs.false, %if.end
  %call20 = tail call i32 @ENGINE_free(%struct.engine_st* noundef nonnull %call) #7
  br label %cleanup

cleanup:                                          ; preds = %lor.lhs.false16, %entry, %if.then19
  %retval.0 = phi %struct.engine_st* [ null, %if.then19 ], [ null, %entry ], [ %call, %lor.lhs.false16 ]
  ret %struct.engine_st* %retval.0
}

declare i32 @ERR_set_mark() local_unnamed_addr #2

declare i32 @ENGINE_add(%struct.engine_st* noundef) local_unnamed_addr #2

declare i32 @ENGINE_free(%struct.engine_st* noundef) local_unnamed_addr #2

declare i32 @ERR_pop_to_mark() local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

declare %struct.engine_st* @ENGINE_new() local_unnamed_addr #2

declare i32 @ENGINE_set_id(%struct.engine_st* noundef, i8* noundef) local_unnamed_addr #2

declare i32 @ENGINE_set_name(%struct.engine_st* noundef, i8* noundef) local_unnamed_addr #2

declare i32 @ENGINE_set_init_function(%struct.engine_st* noundef, i32 (%struct.engine_st*)* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal i32 @dynamic_init(%struct.engine_st* nocapture noundef readnone %e) #3 {
entry:
  ret i32 0
}

declare i32 @ENGINE_set_finish_function(%struct.engine_st* noundef, i32 (%struct.engine_st*)* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal i32 @dynamic_finish(%struct.engine_st* nocapture noundef readnone %e) #3 {
entry:
  ret i32 0
}

declare i32 @ENGINE_set_ctrl_function(%struct.engine_st* noundef, i32 (%struct.engine_st*, i32, i64, i8*, void ()*)* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal i32 @dynamic_ctrl(%struct.engine_st* noundef %e, i32 noundef %cmd, i64 noundef %i, i8* noundef %p, void ()* nocapture noundef readnone %f) #0 {
entry:
  %call = tail call fastcc %struct.st_dynamic_data_ctx* @dynamic_get_data_ctx(%struct.engine_st* noundef %e) #6
  %tobool.not = icmp eq %struct.st_dynamic_data_ctx* %call, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32 noundef 303, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @__func__.dynamic_ctrl, i64 0, i64 0)) #7
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 38, i32 noundef 112, i8* noundef null) #7
  br label %cleanup74

if.end:                                           ; preds = %entry
  %dynamic_dso = getelementptr inbounds %struct.st_dynamic_data_ctx, %struct.st_dynamic_data_ctx* %call, i64 0, i32 0
  %0 = load %struct.dso_st*, %struct.dso_st** %dynamic_dso, align 8, !tbaa !4
  %cmp.not = icmp eq %struct.dso_st* %0, null
  br i1 %cmp.not, label %if.end3, label %if.then2

if.then2:                                         ; preds = %if.end
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32 noundef 309, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @__func__.dynamic_ctrl, i64 0, i64 0)) #7
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 38, i32 noundef 100, i8* noundef null) #7
  br label %cleanup74

if.end3:                                          ; preds = %if.end
  switch i32 %cmd, label %sw.epilog [
    i32 200, label %sw.bb
    i32 201, label %sw.bb18
    i32 202, label %sw.bb21
    i32 203, label %sw.bb38
    i32 206, label %sw.bb43
    i32 204, label %sw.bb45
    i32 205, label %sw.bb54
  ]

sw.bb:                                            ; preds = %if.end3
  %tobool4.not = icmp eq i8* %p, null
  br i1 %tobool4.not, label %if.end8.thread, label %land.lhs.true

land.lhs.true:                                    ; preds = %sw.bb
  %call5 = tail call i64 @strlen(i8* noundef nonnull %p) #8
  %cmp6 = icmp eq i64 %call5, 0
  br i1 %cmp6, label %if.end8.thread, label %if.then10

if.end8.thread:                                   ; preds = %sw.bb, %land.lhs.true
  %DYNAMIC_LIBNAME117 = getelementptr inbounds %struct.st_dynamic_data_ctx, %struct.st_dynamic_data_ctx* %call, i64 0, i32 3
  %1 = load i8*, i8** %DYNAMIC_LIBNAME117, align 8, !tbaa !10
  tail call void @CRYPTO_free(i8* noundef %1, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32 noundef 317) #7
  br label %if.end14

if.then10:                                        ; preds = %land.lhs.true
  %DYNAMIC_LIBNAME = getelementptr inbounds %struct.st_dynamic_data_ctx, %struct.st_dynamic_data_ctx* %call, i64 0, i32 3
  %2 = load i8*, i8** %DYNAMIC_LIBNAME, align 8, !tbaa !10
  tail call void @CRYPTO_free(i8* noundef %2, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32 noundef 317) #7
  %call11 = tail call i8* @CRYPTO_strdup(i8* noundef nonnull %p, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32 noundef 319) #7
  br label %if.end14

if.end14:                                         ; preds = %if.end8.thread, %if.then10
  %DYNAMIC_LIBNAME119 = phi i8** [ %DYNAMIC_LIBNAME, %if.then10 ], [ %DYNAMIC_LIBNAME117, %if.end8.thread ]
  %storemerge115 = phi i8* [ %call11, %if.then10 ], [ null, %if.end8.thread ]
  store i8* %storemerge115, i8** %DYNAMIC_LIBNAME119, align 8, !tbaa !10
  %tobool16.not = icmp ne i8* %storemerge115, null
  %cond17 = zext i1 %tobool16.not to i32
  br label %cleanup74

sw.bb18:                                          ; preds = %if.end3
  %cmp19 = icmp ne i64 %i, 0
  %cond20 = zext i1 %cmp19 to i32
  %no_vcheck = getelementptr inbounds %struct.st_dynamic_data_ctx, %struct.st_dynamic_data_ctx* %call, i64 0, i32 4
  store i32 %cond20, i32* %no_vcheck, align 8, !tbaa !11
  br label %cleanup74

sw.bb21:                                          ; preds = %if.end3
  %tobool22.not = icmp eq i8* %p, null
  br i1 %tobool22.not, label %if.end27.thread, label %land.lhs.true23

land.lhs.true23:                                  ; preds = %sw.bb21
  %call24 = tail call i64 @strlen(i8* noundef nonnull %p) #8
  %cmp25 = icmp eq i64 %call24, 0
  br i1 %cmp25, label %if.end27.thread, label %if.then29

if.end27.thread:                                  ; preds = %sw.bb21, %land.lhs.true23
  %engine_id122 = getelementptr inbounds %struct.st_dynamic_data_ctx, %struct.st_dynamic_data_ctx* %call, i64 0, i32 5
  %3 = load i8*, i8** %engine_id122, align 8, !tbaa !12
  tail call void @CRYPTO_free(i8* noundef %3, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32 noundef 330) #7
  br label %if.end34

if.then29:                                        ; preds = %land.lhs.true23
  %engine_id = getelementptr inbounds %struct.st_dynamic_data_ctx, %struct.st_dynamic_data_ctx* %call, i64 0, i32 5
  %4 = load i8*, i8** %engine_id, align 8, !tbaa !12
  tail call void @CRYPTO_free(i8* noundef %4, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32 noundef 330) #7
  %call30 = tail call i8* @CRYPTO_strdup(i8* noundef nonnull %p, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32 noundef 332) #7
  br label %if.end34

if.end34:                                         ; preds = %if.end27.thread, %if.then29
  %engine_id124 = phi i8** [ %engine_id, %if.then29 ], [ %engine_id122, %if.end27.thread ]
  %storemerge = phi i8* [ %call30, %if.then29 ], [ null, %if.end27.thread ]
  store i8* %storemerge, i8** %engine_id124, align 8, !tbaa !12
  %tobool36.not = icmp ne i8* %storemerge, null
  %cond37 = zext i1 %tobool36.not to i32
  br label %cleanup74

sw.bb38:                                          ; preds = %if.end3
  %5 = icmp ugt i64 %i, 2
  br i1 %5, label %if.then41, label %if.end42

if.then41:                                        ; preds = %sw.bb38
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32 noundef 338, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @__func__.dynamic_ctrl, i64 0, i64 0)) #7
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 38, i32 noundef 143, i8* noundef null) #7
  br label %cleanup74

if.end42:                                         ; preds = %sw.bb38
  %conv = trunc i64 %i to i32
  %list_add_value = getelementptr inbounds %struct.st_dynamic_data_ctx, %struct.st_dynamic_data_ctx* %call, i64 0, i32 6
  store i32 %conv, i32* %list_add_value, align 8, !tbaa !13
  br label %cleanup74

sw.bb43:                                          ; preds = %if.end3
  %call44 = tail call fastcc i32 @dynamic_load(%struct.engine_st* noundef %e, %struct.st_dynamic_data_ctx* noundef nonnull %call) #6
  br label %cleanup74

sw.bb45:                                          ; preds = %if.end3
  %6 = icmp ugt i64 %i, 2
  br i1 %6, label %if.then51, label %if.end52

if.then51:                                        ; preds = %sw.bb45
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32 noundef 347, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @__func__.dynamic_ctrl, i64 0, i64 0)) #7
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 38, i32 noundef 143, i8* noundef null) #7
  br label %cleanup74

if.end52:                                         ; preds = %sw.bb45
  %conv53 = trunc i64 %i to i32
  %dir_load = getelementptr inbounds %struct.st_dynamic_data_ctx, %struct.st_dynamic_data_ctx* %call, i64 0, i32 9
  store i32 %conv53, i32* %dir_load, align 8, !tbaa !14
  br label %cleanup74

sw.bb54:                                          ; preds = %if.end3
  %cmp55 = icmp eq i8* %p, null
  br i1 %cmp55, label %if.then61, label %lor.lhs.false57

lor.lhs.false57:                                  ; preds = %sw.bb54
  %call58 = tail call i64 @strlen(i8* noundef nonnull %p) #8
  %cmp59 = icmp eq i64 %call58, 0
  br i1 %cmp59, label %if.then61, label %if.end62

if.then61:                                        ; preds = %lor.lhs.false57, %sw.bb54
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32 noundef 355, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @__func__.dynamic_ctrl, i64 0, i64 0)) #7
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 38, i32 noundef 143, i8* noundef null) #7
  br label %cleanup74

if.end62:                                         ; preds = %lor.lhs.false57
  %call63 = tail call i8* @CRYPTO_strdup(i8* noundef nonnull %p, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32 noundef 359) #7
  %cmp64 = icmp eq i8* %call63, null
  br i1 %cmp64, label %if.then66, label %if.end67

if.then66:                                        ; preds = %if.end62
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32 noundef 361, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @__func__.dynamic_ctrl, i64 0, i64 0)) #7
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 38, i32 noundef 786688, i8* noundef null) #7
  br label %cleanup74

if.end67:                                         ; preds = %if.end62
  %dirs = getelementptr inbounds %struct.st_dynamic_data_ctx, %struct.st_dynamic_data_ctx* %call, i64 0, i32 10
  %7 = load %struct.stack_st_OPENSSL_STRING*, %struct.stack_st_OPENSSL_STRING** %dirs, align 8, !tbaa !15
  %call68 = tail call fastcc %struct.stack_st* @ossl_check_OPENSSL_STRING_sk_type(%struct.stack_st_OPENSSL_STRING* noundef %7) #6
  %call70 = tail call i32 @OPENSSL_sk_push(%struct.stack_st* noundef %call68, i8* noundef nonnull %call63) #7
  %tobool71.not = icmp eq i32 %call70, 0
  br i1 %tobool71.not, label %if.then72, label %cleanup74

if.then72:                                        ; preds = %if.end67
  tail call void @CRYPTO_free(i8* noundef nonnull %call63, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32 noundef 365) #7
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32 noundef 366, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @__func__.dynamic_ctrl, i64 0, i64 0)) #7
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 38, i32 noundef 786688, i8* noundef null) #7
  br label %cleanup74

sw.epilog:                                        ; preds = %if.end3
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32 noundef 374, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @__func__.dynamic_ctrl, i64 0, i64 0)) #7
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 38, i32 noundef 119, i8* noundef null) #7
  br label %cleanup74

cleanup74:                                        ; preds = %if.then66, %if.then72, %if.end67, %sw.epilog, %if.then61, %if.end52, %if.then51, %sw.bb43, %if.end42, %if.then41, %if.end34, %sw.bb18, %if.end14, %if.then2, %if.then
  %retval.1 = phi i32 [ 0, %if.then2 ], [ 0, %sw.epilog ], [ 0, %if.then61 ], [ 0, %if.then51 ], [ 1, %if.end52 ], [ %call44, %sw.bb43 ], [ 0, %if.then41 ], [ 1, %if.end42 ], [ %cond37, %if.end34 ], [ 1, %sw.bb18 ], [ %cond17, %if.end14 ], [ 0, %if.then ], [ 1, %if.end67 ], [ 0, %if.then72 ], [ 0, %if.then66 ]
  ret i32 %retval.1
}

declare i32 @ENGINE_set_flags(%struct.engine_st* noundef, i32 noundef) local_unnamed_addr #2

declare i32 @ENGINE_set_cmd_defns(%struct.engine_st* noundef, %struct.ENGINE_CMD_DEFN_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.st_dynamic_data_ctx* @dynamic_get_data_ctx(%struct.engine_st* noundef %e) unnamed_addr #0 {
entry:
  %ctx = alloca %struct.st_dynamic_data_ctx*, align 8
  %0 = bitcast %struct.st_dynamic_data_ctx** %ctx to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #9
  %1 = load i32, i32* @dynamic_ex_data_idx, align 4, !tbaa !16
  %cmp = icmp slt i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end10

if.then:                                          ; preds = %entry
  %call = tail call i32 @CRYPTO_get_ex_new_index(i32 noundef 10, i64 noundef 0, i8* noundef null, void (i8*, i8*, %struct.crypto_ex_data_st*, i32, i64, i8*)* noundef null, i32 (%struct.crypto_ex_data_st*, %struct.crypto_ex_data_st*, i8**, i32, i64, i8*)* noundef null, void (i8*, i8*, %struct.crypto_ex_data_st*, i32, i64, i8*)* noundef nonnull @dynamic_data_ctx_free_func) #7
  %cmp1 = icmp eq i32 %call, -1
  br i1 %cmp1, label %if.then2, label %if.end

if.then2:                                         ; preds = %if.then
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32 noundef 215, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.dynamic_get_data_ctx, i64 0, i64 0)) #7
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 38, i32 noundef 144, i8* noundef null) #7
  br label %cleanup17

if.end:                                           ; preds = %if.then
  %2 = load i8*, i8** @global_engine_lock, align 8, !tbaa !17
  %call3 = tail call i32 @CRYPTO_THREAD_write_lock(i8* noundef %2) #7
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %cleanup17, label %if.end5

if.end5:                                          ; preds = %if.end
  %3 = load i32, i32* @dynamic_ex_data_idx, align 4, !tbaa !16
  %cmp6 = icmp slt i32 %3, 0
  br i1 %cmp6, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.end5
  store i32 %call, i32* @dynamic_ex_data_idx, align 4, !tbaa !16
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %if.end5
  %4 = load i8*, i8** @global_engine_lock, align 8, !tbaa !17
  %call9 = tail call i32 @CRYPTO_THREAD_unlock(i8* noundef %4) #7
  %.pre = load i32, i32* @dynamic_ex_data_idx, align 4, !tbaa !16
  br label %if.end10

if.end10:                                         ; preds = %if.end8, %entry
  %5 = phi i32 [ %.pre, %if.end8 ], [ %1, %entry ]
  %call11 = tail call i8* @ENGINE_get_ex_data(%struct.engine_st* noundef %e, i32 noundef %5) #7
  %6 = bitcast %struct.st_dynamic_data_ctx** %ctx to i8**
  store i8* %call11, i8** %6, align 8, !tbaa !17
  %cmp12 = icmp eq i8* %call11, null
  %7 = bitcast i8* %call11 to %struct.st_dynamic_data_ctx*
  br i1 %cmp12, label %land.lhs.true, label %cleanup17

land.lhs.true:                                    ; preds = %if.end10
  %call13 = call fastcc i32 @dynamic_set_data_ctx(%struct.engine_st* noundef %e, %struct.st_dynamic_data_ctx** noundef nonnull %ctx) #6
  %tobool14.not = icmp eq i32 %call13, 0
  %.pre21 = load %struct.st_dynamic_data_ctx*, %struct.st_dynamic_data_ctx** %ctx, align 8
  %spec.select = select i1 %tobool14.not, %struct.st_dynamic_data_ctx* null, %struct.st_dynamic_data_ctx* %.pre21
  br label %cleanup17

cleanup17:                                        ; preds = %land.lhs.true, %if.end10, %if.then2, %if.end
  %retval.1 = phi %struct.st_dynamic_data_ctx* [ null, %if.end ], [ null, %if.then2 ], [ %7, %if.end10 ], [ %spec.select, %land.lhs.true ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #9
  ret %struct.st_dynamic_data_ctx* %retval.1
}

declare void @ERR_new() local_unnamed_addr #2

declare void @ERR_set_debug(i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #2

declare void @ERR_set_error(i32 noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare i64 @strlen(i8* noundef) local_unnamed_addr #4

declare void @CRYPTO_free(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare i8* @CRYPTO_strdup(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @dynamic_load(%struct.engine_st* noundef %e, %struct.st_dynamic_data_ctx* nocapture noundef %ctx) unnamed_addr #0 {
entry:
  %cpy = alloca %struct.engine_st, align 8
  %fns = alloca %struct.st_dynamic_fns, align 8
  %0 = bitcast %struct.engine_st* %cpy to i8*
  call void @llvm.lifetime.start.p0i8(i64 200, i8* nonnull %0) #9
  %1 = bitcast %struct.st_dynamic_fns* %fns to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %1) #9
  %dynamic_dso = getelementptr inbounds %struct.st_dynamic_data_ctx, %struct.st_dynamic_data_ctx* %ctx, i64 0, i32 0
  %2 = load %struct.dso_st*, %struct.dso_st** %dynamic_dso, align 8, !tbaa !4
  %cmp = icmp eq %struct.dso_st* %2, null
  br i1 %cmp, label %if.end, label %if.end5

if.end:                                           ; preds = %entry
  %call = tail call %struct.dso_st* @DSO_new() #7
  store %struct.dso_st* %call, %struct.dso_st** %dynamic_dso, align 8, !tbaa !4
  %cmp3 = icmp eq %struct.dso_st* %call, null
  br i1 %cmp3, label %cleanup79, label %if.end5

if.end5:                                          ; preds = %entry, %if.end
  %3 = phi %struct.dso_st* [ %call, %if.end ], [ %2, %entry ]
  %DYNAMIC_LIBNAME = getelementptr inbounds %struct.st_dynamic_data_ctx, %struct.st_dynamic_data_ctx* %ctx, i64 0, i32 3
  %4 = load i8*, i8** %DYNAMIC_LIBNAME, align 8, !tbaa !10
  %tobool.not = icmp eq i8* %4, null
  br i1 %tobool.not, label %if.then6, label %if.end16

if.then6:                                         ; preds = %if.end5
  %engine_id = getelementptr inbounds %struct.st_dynamic_data_ctx, %struct.st_dynamic_data_ctx* %ctx, i64 0, i32 5
  %5 = load i8*, i8** %engine_id, align 8, !tbaa !12
  %tobool7.not = icmp eq i8* %5, null
  br i1 %tobool7.not, label %cleanup79, label %if.end9

if.end9:                                          ; preds = %if.then6
  %call11 = tail call i64 @DSO_ctrl(%struct.dso_st* noundef nonnull %3, i32 noundef 2, i64 noundef 2, i8* noundef null) #7
  %6 = load %struct.dso_st*, %struct.dso_st** %dynamic_dso, align 8, !tbaa !4
  %7 = load i8*, i8** %engine_id, align 8, !tbaa !12
  %call14 = tail call i8* @DSO_convert_filename(%struct.dso_st* noundef %6, i8* noundef %7) #7
  store i8* %call14, i8** %DYNAMIC_LIBNAME, align 8, !tbaa !10
  br label %if.end16

if.end16:                                         ; preds = %if.end9, %if.end5
  %call17 = tail call fastcc i32 @int_load(%struct.st_dynamic_data_ctx* noundef nonnull %ctx) #6
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.then19, label %if.end23

if.then19:                                        ; preds = %if.end16
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32 noundef 422, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @__func__.dynamic_load, i64 0, i64 0)) #7
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 38, i32 noundef 132, i8* noundef null) #7
  %8 = load %struct.dso_st*, %struct.dso_st** %dynamic_dso, align 8, !tbaa !4
  %call21 = tail call i32 @DSO_free(%struct.dso_st* noundef %8) #7
  store %struct.dso_st* null, %struct.dso_st** %dynamic_dso, align 8, !tbaa !4
  br label %cleanup79

if.end23:                                         ; preds = %if.end16
  %9 = load %struct.dso_st*, %struct.dso_st** %dynamic_dso, align 8, !tbaa !4
  %DYNAMIC_F2 = getelementptr inbounds %struct.st_dynamic_data_ctx, %struct.st_dynamic_data_ctx* %ctx, i64 0, i32 8
  %10 = load i8*, i8** %DYNAMIC_F2, align 8, !tbaa !18
  %call25 = tail call void ()* @DSO_bind_func(%struct.dso_st* noundef %9, i8* noundef %10) #7
  %bind_engine = getelementptr inbounds %struct.st_dynamic_data_ctx, %struct.st_dynamic_data_ctx* %ctx, i64 0, i32 2
  %11 = bitcast i32 (%struct.engine_st*, i8*, %struct.st_dynamic_fns*)** %bind_engine to void ()**
  store void ()* %call25, void ()** %11, align 8, !tbaa !19
  %tobool26.not = icmp eq void ()* %call25, null
  br i1 %tobool26.not, label %if.then27, label %if.end32

if.then27:                                        ; preds = %if.end23
  store i32 (%struct.engine_st*, i8*, %struct.st_dynamic_fns*)* null, i32 (%struct.engine_st*, i8*, %struct.st_dynamic_fns*)** %bind_engine, align 8, !tbaa !19
  %12 = load %struct.dso_st*, %struct.dso_st** %dynamic_dso, align 8, !tbaa !4
  %call30 = tail call i32 @DSO_free(%struct.dso_st* noundef %12) #7
  store %struct.dso_st* null, %struct.dso_st** %dynamic_dso, align 8, !tbaa !4
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32 noundef 435, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @__func__.dynamic_load, i64 0, i64 0)) #7
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 38, i32 noundef 104, i8* noundef null) #7
  br label %cleanup79

if.end32:                                         ; preds = %if.end23
  %no_vcheck = getelementptr inbounds %struct.st_dynamic_data_ctx, %struct.st_dynamic_data_ctx* %ctx, i64 0, i32 4
  %13 = load i32, i32* %no_vcheck, align 8, !tbaa !11
  %tobool33.not = icmp eq i32 %13, 0
  br i1 %tobool33.not, label %if.then34, label %if.end51

if.then34:                                        ; preds = %if.end32
  %14 = load %struct.dso_st*, %struct.dso_st** %dynamic_dso, align 8, !tbaa !4
  %DYNAMIC_F1 = getelementptr inbounds %struct.st_dynamic_data_ctx, %struct.st_dynamic_data_ctx* %ctx, i64 0, i32 7
  %15 = load i8*, i8** %DYNAMIC_F1, align 8, !tbaa !20
  %call36 = tail call void ()* @DSO_bind_func(%struct.dso_st* noundef %14, i8* noundef %15) #7
  %v_check = getelementptr inbounds %struct.st_dynamic_data_ctx, %struct.st_dynamic_data_ctx* %ctx, i64 0, i32 1
  %16 = bitcast i64 (i64)** %v_check to void ()**
  store void ()* %call36, void ()** %16, align 8, !tbaa !21
  %tobool38.not = icmp eq void ()* %call36, null
  br i1 %tobool38.not, label %if.then44, label %if.then39

if.then39:                                        ; preds = %if.then34
  %17 = bitcast void ()* %call36 to i64 (i64)*
  %call41 = tail call i64 %17(i64 noundef 196608) #7
  %phi.cmp = icmp ult i64 %call41, 196608
  br i1 %phi.cmp, label %if.then44, label %if.end51

if.then44:                                        ; preds = %if.then34, %if.then39
  store i32 (%struct.engine_st*, i8*, %struct.st_dynamic_fns*)* null, i32 (%struct.engine_st*, i8*, %struct.st_dynamic_fns*)** %bind_engine, align 8, !tbaa !19
  store i64 (i64)* null, i64 (i64)** %v_check, align 8, !tbaa !21
  %18 = load %struct.dso_st*, %struct.dso_st** %dynamic_dso, align 8, !tbaa !4
  %call48 = tail call i32 @DSO_free(%struct.dso_st* noundef %18) #7
  store %struct.dso_st* null, %struct.dso_st** %dynamic_dso, align 8, !tbaa !4
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32 noundef 461, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @__func__.dynamic_load, i64 0, i64 0)) #7
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 38, i32 noundef 145, i8* noundef null) #7
  br label %cleanup79

if.end51:                                         ; preds = %if.then39, %if.end32
  %19 = bitcast %struct.engine_st* %e to i8*
  %call52 = call i8* @memcpy(i8* noundef nonnull %0, i8* noundef %19, i64 noundef 200) #7
  %call53 = call i8* @ENGINE_get_static_state() #7
  %static_state = getelementptr inbounds %struct.st_dynamic_fns, %struct.st_dynamic_fns* %fns, i64 0, i32 0
  store i8* %call53, i8** %static_state, align 8, !tbaa !22
  %malloc_fn = getelementptr inbounds %struct.st_dynamic_fns, %struct.st_dynamic_fns* %fns, i64 0, i32 1, i32 0
  %realloc_fn = getelementptr inbounds %struct.st_dynamic_fns, %struct.st_dynamic_fns* %fns, i64 0, i32 1, i32 1
  %free_fn = getelementptr inbounds %struct.st_dynamic_fns, %struct.st_dynamic_fns* %fns, i64 0, i32 1, i32 2
  call void @CRYPTO_get_mem_functions(i8* (i64, i8*, i32)** noundef nonnull %malloc_fn, i8* (i8*, i64, i8*, i32)** noundef nonnull %realloc_fn, void (i8*, i8*, i32)** noundef nonnull %free_fn) #7
  call void @engine_set_all_null(%struct.engine_st* noundef %e) #7
  %20 = load i32 (%struct.engine_st*, i8*, %struct.st_dynamic_fns*)*, i32 (%struct.engine_st*, i8*, %struct.st_dynamic_fns*)** %bind_engine, align 8, !tbaa !19
  %engine_id57 = getelementptr inbounds %struct.st_dynamic_data_ctx, %struct.st_dynamic_data_ctx* %ctx, i64 0, i32 5
  %21 = load i8*, i8** %engine_id57, align 8, !tbaa !12
  %call58 = call i32 %20(%struct.engine_st* noundef %e, i8* noundef %21, %struct.st_dynamic_fns* noundef nonnull %fns) #7
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %if.then60, label %if.end67

if.then60:                                        ; preds = %if.end51
  store i32 (%struct.engine_st*, i8*, %struct.st_dynamic_fns*)* null, i32 (%struct.engine_st*, i8*, %struct.st_dynamic_fns*)** %bind_engine, align 8, !tbaa !19
  %v_check62 = getelementptr inbounds %struct.st_dynamic_data_ctx, %struct.st_dynamic_data_ctx* %ctx, i64 0, i32 1
  store i64 (i64)* null, i64 (i64)** %v_check62, align 8, !tbaa !21
  %22 = load %struct.dso_st*, %struct.dso_st** %dynamic_dso, align 8, !tbaa !4
  %call64 = call i32 @DSO_free(%struct.dso_st* noundef %22) #7
  store %struct.dso_st* null, %struct.dso_st** %dynamic_dso, align 8, !tbaa !4
  call void @ERR_new() #7
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32 noundef 492, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @__func__.dynamic_load, i64 0, i64 0)) #7
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 38, i32 noundef 109, i8* noundef null) #7
  %call66 = call i8* @memcpy(i8* noundef %19, i8* noundef nonnull %0, i64 noundef 200) #7
  br label %cleanup79

if.end67:                                         ; preds = %if.end51
  %list_add_value = getelementptr inbounds %struct.st_dynamic_data_ctx, %struct.st_dynamic_data_ctx* %ctx, i64 0, i32 6
  %23 = load i32, i32* %list_add_value, align 8, !tbaa !13
  %cmp68 = icmp sgt i32 %23, 0
  br i1 %cmp68, label %if.then69, label %cleanup79

if.then69:                                        ; preds = %if.end67
  %call70 = call i32 @ENGINE_add(%struct.engine_st* noundef %e) #7
  %tobool71.not = icmp eq i32 %call70, 0
  br i1 %tobool71.not, label %if.then72, label %cleanup79

if.then72:                                        ; preds = %if.then69
  %24 = load i32, i32* %list_add_value, align 8, !tbaa !13
  %cmp74 = icmp sgt i32 %24, 1
  br i1 %cmp74, label %if.then75, label %if.end76

if.then75:                                        ; preds = %if.then72
  call void @ERR_new() #7
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32 noundef 508, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @__func__.dynamic_load, i64 0, i64 0)) #7
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 38, i32 noundef 103, i8* noundef null) #7
  br label %cleanup79

if.end76:                                         ; preds = %if.then72
  call void @ERR_clear_error() #7
  br label %cleanup79

cleanup79:                                        ; preds = %if.then44, %if.end67, %if.end76, %if.then69, %if.then6, %if.end, %if.then75, %if.then60, %if.then27, %if.then19
  %retval.1 = phi i32 [ 0, %if.then75 ], [ 0, %if.then60 ], [ 0, %if.then44 ], [ 0, %if.then27 ], [ 0, %if.then19 ], [ 0, %if.end ], [ 0, %if.then6 ], [ 1, %if.then69 ], [ 1, %if.end76 ], [ 1, %if.end67 ]
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %1) #9
  call void @llvm.lifetime.end.p0i8(i64 200, i8* nonnull %0) #9
  ret i32 %retval.1
}

declare i32 @OPENSSL_sk_push(%struct.stack_st* noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_OPENSSL_STRING_sk_type(%struct.stack_st_OPENSSL_STRING* noundef readnone %sk) unnamed_addr #3 {
entry:
  %0 = bitcast %struct.stack_st_OPENSSL_STRING* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

declare i32 @CRYPTO_get_ex_new_index(i32 noundef, i64 noundef, i8* noundef, void (i8*, i8*, %struct.crypto_ex_data_st*, i32, i64, i8*)* noundef, i32 (%struct.crypto_ex_data_st*, %struct.crypto_ex_data_st*, i8**, i32, i64, i8*)* noundef, void (i8*, i8*, %struct.crypto_ex_data_st*, i32, i64, i8*)* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal void @dynamic_data_ctx_free_func(i8* nocapture noundef readnone %parent, i8* noundef %ptr, %struct.crypto_ex_data_st* nocapture noundef readnone %ad, i32 noundef %idx, i64 noundef %argl, i8* nocapture noundef readnone %argp) #0 {
entry:
  %tobool.not = icmp eq i8* %ptr, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %dynamic_dso = bitcast i8* %ptr to %struct.dso_st**
  %0 = load %struct.dso_st*, %struct.dso_st** %dynamic_dso, align 8, !tbaa !4
  %call = tail call i32 @DSO_free(%struct.dso_st* noundef %0) #7
  %DYNAMIC_LIBNAME = getelementptr inbounds i8, i8* %ptr, i64 24
  %1 = bitcast i8* %DYNAMIC_LIBNAME to i8**
  %2 = load i8*, i8** %1, align 8, !tbaa !10
  tail call void @CRYPTO_free(i8* noundef %2, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32 noundef 144) #7
  %engine_id = getelementptr inbounds i8, i8* %ptr, i64 40
  %3 = bitcast i8* %engine_id to i8**
  %4 = load i8*, i8** %3, align 8, !tbaa !12
  tail call void @CRYPTO_free(i8* noundef %4, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32 noundef 145) #7
  %dirs = getelementptr inbounds i8, i8* %ptr, i64 80
  %5 = bitcast i8* %dirs to %struct.stack_st_OPENSSL_STRING**
  %6 = load %struct.stack_st_OPENSSL_STRING*, %struct.stack_st_OPENSSL_STRING** %5, align 8, !tbaa !15
  %call1 = tail call fastcc %struct.stack_st* @ossl_check_OPENSSL_STRING_sk_type(%struct.stack_st_OPENSSL_STRING* noundef %6) #6
  tail call void @OPENSSL_sk_pop_free(%struct.stack_st* noundef %call1, void (i8*)* noundef nonnull @int_free_str) #7
  tail call void @CRYPTO_free(i8* noundef nonnull %ptr, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32 noundef 147) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare i32 @CRYPTO_THREAD_write_lock(i8* noundef) local_unnamed_addr #2

declare i32 @CRYPTO_THREAD_unlock(i8* noundef) local_unnamed_addr #2

declare i8* @ENGINE_get_ex_data(%struct.engine_st* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @dynamic_set_data_ctx(%struct.engine_st* noundef %e, %struct.st_dynamic_data_ctx** nocapture noundef writeonly %ctx) unnamed_addr #0 {
entry:
  %call = tail call i8* @CRYPTO_zalloc(i64 noundef 88, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32 noundef 159) #7
  %cmp = icmp eq i8* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32 noundef 163, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.dynamic_set_data_ctx, i64 0, i64 0)) #7
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 38, i32 noundef 786688, i8* noundef null) #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call %struct.stack_st* @OPENSSL_sk_new_null() #7
  %dirs = getelementptr inbounds i8, i8* %call, i64 80
  %0 = bitcast i8* %dirs to %struct.stack_st**
  store %struct.stack_st* %call1, %struct.stack_st** %0, align 8, !tbaa !15
  %cmp3 = icmp eq %struct.stack_st* %call1, null
  br i1 %cmp3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32 noundef 168, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.dynamic_set_data_ctx, i64 0, i64 0)) #7
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 38, i32 noundef 786688, i8* noundef null) #7
  br label %if.then19

if.end5:                                          ; preds = %if.end
  %DYNAMIC_F1 = getelementptr inbounds i8, i8* %call, i64 56
  %1 = bitcast i8* %DYNAMIC_F1 to i8**
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i8** %1, align 8, !tbaa !20
  %DYNAMIC_F2 = getelementptr inbounds i8, i8* %call, i64 64
  %2 = bitcast i8* %DYNAMIC_F2 to i8**
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i8** %2, align 8, !tbaa !18
  %dir_load = getelementptr inbounds i8, i8* %call, i64 72
  %3 = bitcast i8* %dir_load to i32*
  store i32 1, i32* %3, align 8, !tbaa !14
  %4 = load i8*, i8** @global_engine_lock, align 8, !tbaa !17
  %call6 = tail call i32 @CRYPTO_THREAD_write_lock(i8* noundef %4) #7
  %tobool.not = icmp eq i32 %call6, 0
  br i1 %tobool.not, label %if.then19, label %if.end8

if.end8:                                          ; preds = %if.end5
  %5 = load i32, i32* @dynamic_ex_data_idx, align 4, !tbaa !16
  %call9 = tail call i8* @ENGINE_get_ex_data(%struct.engine_st* noundef %e, i32 noundef %5) #7
  %6 = bitcast %struct.st_dynamic_data_ctx** %ctx to i8**
  store i8* %call9, i8** %6, align 8, !tbaa !17
  %cmp10 = icmp eq i8* %call9, null
  br i1 %cmp10, label %if.then11, label %end.thread47

if.then11:                                        ; preds = %if.end8
  %7 = load i32, i32* @dynamic_ex_data_idx, align 4, !tbaa !16
  %call12 = tail call i32 @ENGINE_set_ex_data(%struct.engine_st* noundef %e, i32 noundef %7, i8* noundef nonnull %call) #7
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %end.thread47, label %end

end.thread47:                                     ; preds = %if.then11, %if.end8
  %8 = load i8*, i8** @global_engine_lock, align 8, !tbaa !17
  %call1749 = tail call i32 @CRYPTO_THREAD_unlock(i8* noundef %8) #7
  br label %if.then19

end:                                              ; preds = %if.then11
  store i8* %call, i8** %6, align 8, !tbaa !17
  %9 = load i8*, i8** @global_engine_lock, align 8, !tbaa !17
  %call17 = tail call i32 @CRYPTO_THREAD_unlock(i8* noundef %9) #7
  br label %if.end22

if.then19:                                        ; preds = %if.end5, %if.then4, %end.thread47
  %ret.044 = phi i32 [ 1, %end.thread47 ], [ 0, %if.then4 ], [ 0, %if.end5 ]
  %10 = bitcast i8* %dirs to %struct.stack_st_OPENSSL_STRING**
  %11 = load %struct.stack_st_OPENSSL_STRING*, %struct.stack_st_OPENSSL_STRING** %10, align 8, !tbaa !15
  %call21 = tail call fastcc %struct.stack_st* @ossl_check_OPENSSL_STRING_sk_type(%struct.stack_st_OPENSSL_STRING* noundef %11) #6
  tail call void @OPENSSL_sk_free(%struct.stack_st* noundef %call21) #7
  br label %if.end22

if.end22:                                         ; preds = %end, %if.then19
  %ret.045 = phi i32 [ %ret.044, %if.then19 ], [ 1, %end ]
  %12 = phi i8* [ %call, %if.then19 ], [ null, %end ]
  tail call void @CRYPTO_free(i8* noundef %12, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32 noundef 195) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end22, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ %ret.045, %if.end22 ]
  ret i32 %retval.0
}

declare i32 @DSO_free(%struct.dso_st* noundef) local_unnamed_addr #2

declare void @OPENSSL_sk_pop_free(%struct.stack_st* noundef, void (i8*)* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal void @int_free_str(i8* noundef %s) #0 {
entry:
  tail call void @CRYPTO_free(i8* noundef %s, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32 noundef 125) #7
  ret void
}

declare i8* @CRYPTO_zalloc(i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare %struct.stack_st* @OPENSSL_sk_new_null() local_unnamed_addr #2

declare i32 @ENGINE_set_ex_data(%struct.engine_st* noundef, i32 noundef, i8* noundef) local_unnamed_addr #2

declare void @OPENSSL_sk_free(%struct.stack_st* noundef) local_unnamed_addr #2

declare %struct.dso_st* @DSO_new() local_unnamed_addr #2

declare i64 @DSO_ctrl(%struct.dso_st* noundef, i32 noundef, i64 noundef, i8* noundef) local_unnamed_addr #2

declare i8* @DSO_convert_filename(%struct.dso_st* noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @int_load(%struct.st_dynamic_data_ctx* nocapture noundef readonly %ctx) unnamed_addr #0 {
entry:
  %dir_load = getelementptr inbounds %struct.st_dynamic_data_ctx, %struct.st_dynamic_data_ctx* %ctx, i64 0, i32 9
  %0 = load i32, i32* %dir_load, align 8, !tbaa !14
  %cmp.not = icmp eq i32 %0, 2
  br i1 %cmp.not, label %lor.lhs.false, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %dynamic_dso = getelementptr inbounds %struct.st_dynamic_data_ctx, %struct.st_dynamic_data_ctx* %ctx, i64 0, i32 0
  %1 = load %struct.dso_st*, %struct.dso_st** %dynamic_dso, align 8, !tbaa !4
  %DYNAMIC_LIBNAME = getelementptr inbounds %struct.st_dynamic_data_ctx, %struct.st_dynamic_data_ctx* %ctx, i64 0, i32 3
  %2 = load i8*, i8** %DYNAMIC_LIBNAME, align 8, !tbaa !10
  %call = tail call %struct.dso_st* @DSO_load(%struct.dso_st* noundef %1, i8* noundef %2, %struct.dso_meth_st* noundef null, i32 noundef 0) #7
  %cmp1.not = icmp eq %struct.dso_st* %call, null
  br i1 %cmp1.not, label %if.end, label %cleanup24

if.end:                                           ; preds = %land.lhs.true
  %.pr = load i32, i32* %dir_load, align 8, !tbaa !14
  %tobool.not = icmp eq i32 %.pr, 0
  br i1 %tobool.not, label %cleanup24, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry, %if.end
  %dirs = getelementptr inbounds %struct.st_dynamic_data_ctx, %struct.st_dynamic_data_ctx* %ctx, i64 0, i32 10
  %3 = load %struct.stack_st_OPENSSL_STRING*, %struct.stack_st_OPENSSL_STRING** %dirs, align 8, !tbaa !15
  %call3 = tail call fastcc %struct.stack_st* @ossl_check_const_OPENSSL_STRING_sk_type(%struct.stack_st_OPENSSL_STRING* noundef %3) #6
  %call4 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call3) #7
  %cmp5 = icmp sgt i32 %call4, 0
  br i1 %cmp5, label %for.body.lr.ph, label %cleanup24

for.body.lr.ph:                                   ; preds = %lor.lhs.false
  %dynamic_dso12 = getelementptr inbounds %struct.st_dynamic_data_ctx, %struct.st_dynamic_data_ctx* %ctx, i64 0, i32 0
  %DYNAMIC_LIBNAME13 = getelementptr inbounds %struct.st_dynamic_data_ctx, %struct.st_dynamic_data_ctx* %ctx, i64 0, i32 3
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %loop.047 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc ]
  %4 = load %struct.stack_st_OPENSSL_STRING*, %struct.stack_st_OPENSSL_STRING** %dirs, align 8, !tbaa !15
  %call10 = tail call fastcc %struct.stack_st* @ossl_check_const_OPENSSL_STRING_sk_type(%struct.stack_st_OPENSSL_STRING* noundef %4) #6
  %call11 = tail call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call10, i32 noundef %loop.047) #7
  %5 = load %struct.dso_st*, %struct.dso_st** %dynamic_dso12, align 8, !tbaa !4
  %6 = load i8*, i8** %DYNAMIC_LIBNAME13, align 8, !tbaa !10
  %call14 = tail call i8* @DSO_merge(%struct.dso_st* noundef %5, i8* noundef %6, i8* noundef %call11) #7
  %tobool15.not = icmp eq i8* %call14, null
  br i1 %tobool15.not, label %cleanup24, label %if.end17

if.end17:                                         ; preds = %for.body
  %7 = load %struct.dso_st*, %struct.dso_st** %dynamic_dso12, align 8, !tbaa !4
  %call19 = tail call %struct.dso_st* @DSO_load(%struct.dso_st* noundef %7, i8* noundef nonnull %call14, %struct.dso_meth_st* noundef null, i32 noundef 0) #7
  %tobool20.not = icmp eq %struct.dso_st* %call19, null
  br i1 %tobool20.not, label %for.inc, label %if.then21

if.then21:                                        ; preds = %if.end17
  tail call void @CRYPTO_free(i8* noundef nonnull %call14, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32 noundef 396) #7
  br label %cleanup24

for.inc:                                          ; preds = %if.end17
  tail call void @CRYPTO_free(i8* noundef nonnull %call14, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32 noundef 399) #7
  %inc = add nuw nsw i32 %loop.047, 1
  %exitcond.not = icmp eq i32 %inc, %call4
  br i1 %exitcond.not, label %cleanup24, label %for.body, !llvm.loop !25

cleanup24:                                        ; preds = %for.inc, %for.body, %if.then21, %if.end, %lor.lhs.false, %land.lhs.true
  %retval.2 = phi i32 [ 1, %land.lhs.true ], [ 0, %lor.lhs.false ], [ 0, %if.end ], [ 1, %if.then21 ], [ 0, %for.body ], [ 0, %for.inc ]
  ret i32 %retval.2
}

declare void ()* @DSO_bind_func(%struct.dso_st* noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare i8* @memcpy(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #5

declare i8* @ENGINE_get_static_state() local_unnamed_addr #2

declare void @CRYPTO_get_mem_functions(i8* (i64, i8*, i32)** noundef, i8* (i8*, i64, i8*, i32)** noundef, void (i8*, i8*, i32)** noundef) local_unnamed_addr #2

declare void @engine_set_all_null(%struct.engine_st* noundef) local_unnamed_addr #2

declare void @ERR_clear_error() local_unnamed_addr #2

declare %struct.dso_st* @DSO_load(%struct.dso_st* noundef, i8* noundef, %struct.dso_meth_st* noundef, i32 noundef) local_unnamed_addr #2

declare i32 @OPENSSL_sk_num(%struct.stack_st* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_const_OPENSSL_STRING_sk_type(%struct.stack_st_OPENSSL_STRING* noundef readnone %sk) unnamed_addr #3 {
entry:
  %0 = bitcast %struct.stack_st_OPENSSL_STRING* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

declare i8* @OPENSSL_sk_value(%struct.stack_st* noundef, i32 noundef) local_unnamed_addr #2

declare i8* @DSO_merge(%struct.dso_st* noundef, i8* noundef, i8* noundef) local_unnamed_addr #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nobuiltin "no-builtins" }
attributes #7 = { nobuiltin nounwind "no-builtins" }
attributes #8 = { nobuiltin nounwind readonly willreturn "no-builtins" }
attributes #9 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{!"clang version 14.0.0"}
!4 = !{!5, !6, i64 0}
!5 = !{!"st_dynamic_data_ctx", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !9, i64 32, !6, i64 40, !9, i64 48, !6, i64 56, !6, i64 64, !9, i64 72, !6, i64 80}
!6 = !{!"any pointer", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!"int", !7, i64 0}
!10 = !{!5, !6, i64 24}
!11 = !{!5, !9, i64 32}
!12 = !{!5, !6, i64 40}
!13 = !{!5, !9, i64 48}
!14 = !{!5, !9, i64 72}
!15 = !{!5, !6, i64 80}
!16 = !{!9, !9, i64 0}
!17 = !{!6, !6, i64 0}
!18 = !{!5, !6, i64 64}
!19 = !{!5, !6, i64 16}
!20 = !{!5, !6, i64 56}
!21 = !{!5, !6, i64 8}
!22 = !{!23, !6, i64 0}
!23 = !{!"st_dynamic_fns", !6, i64 0, !24, i64 8}
!24 = !{!"st_dynamic_MEM_fns", !6, i64 0, !6, i64 8, !6, i64 16}
!25 = distinct !{!25, !26}
!26 = !{!"llvm.loop.mustprogress"}
