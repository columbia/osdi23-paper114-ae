; ModuleID = 'crypto/engine/eng_ctrl.c'
source_filename = "crypto/engine/eng_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.engine_st = type { i8*, i8*, %struct.rsa_meth_st*, %struct.dsa_method*, %struct.dh_method*, %struct.ec_key_method_st*, %struct.rand_meth_st*, i32 (%struct.engine_st*, %struct.evp_cipher_st**, i32**, i32)*, i32 (%struct.engine_st*, %struct.evp_md_st**, i32**, i32)*, i32 (%struct.engine_st*, %struct.evp_pkey_method_st**, i32**, i32)*, i32 (%struct.engine_st*, %struct.evp_pkey_asn1_method_st**, i32**, i32)*, i32 (%struct.engine_st*)*, i32 (%struct.engine_st*)*, i32 (%struct.engine_st*)*, {}*, %struct.evp_pkey_st* (%struct.engine_st*, i8*, %struct.ui_method_st*, i8*)*, %struct.evp_pkey_st* (%struct.engine_st*, i8*, %struct.ui_method_st*, i8*)*, i32 (%struct.engine_st*, %struct.ssl_st*, %struct.stack_st_X509_NAME*, %struct.x509_st**, %struct.evp_pkey_st**, %struct.stack_st_X509**, %struct.ui_method_st*, i8*)*, %struct.ENGINE_CMD_DEFN_st*, i32, i32, i32, %struct.crypto_ex_data_st, %struct.engine_st*, %struct.engine_st* }
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
%struct.ossl_lib_ctx_st = type opaque
%struct.stack_st_void = type opaque

@.str = private unnamed_addr constant [25 x i8] c"crypto/engine/eng_ctrl.c\00", align 1
@__func__.ENGINE_ctrl = private unnamed_addr constant [12 x i8] c"ENGINE_ctrl\00", align 1
@global_engine_lock = external local_unnamed_addr global i8*, align 8
@__func__.ENGINE_cmd_is_executable = private unnamed_addr constant [25 x i8] c"ENGINE_cmd_is_executable\00", align 1
@__func__.ENGINE_ctrl_cmd = private unnamed_addr constant [16 x i8] c"ENGINE_ctrl_cmd\00", align 1
@__func__.ENGINE_ctrl_cmd_string = private unnamed_addr constant [23 x i8] c"ENGINE_ctrl_cmd_string\00", align 1
@__func__.int_ctrl_helper = private unnamed_addr constant [16 x i8] c"int_ctrl_helper\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

; Function Attrs: noinline nounwind uwtable
define i32 @ENGINE_ctrl(%struct.engine_st* noundef %e, i32 noundef %cmd, i64 noundef %i, i8* noundef %p, void ()* noundef %f) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.engine_st* %e, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 132, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @__func__.ENGINE_ctrl, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 38, i32 noundef 786690, i8* noundef null) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = load i8*, i8** @global_engine_lock, align 8, !tbaa !4
  %call = tail call i32 @CRYPTO_THREAD_write_lock(i8* noundef %0) #8
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %cleanup, label %if.end2

if.end2:                                          ; preds = %if.end
  %struct_ref = getelementptr inbounds %struct.engine_st, %struct.engine_st* %e, i64 0, i32 20
  %atomic-load = load atomic i32, i32* %struct_ref seq_cst, align 4, !tbaa !8
  %cmp3 = icmp sgt i32 %atomic-load, 0
  %1 = load i8*, i8** @global_engine_lock, align 8, !tbaa !4
  %call4 = tail call i32 @CRYPTO_THREAD_unlock(i8* noundef %1) #8
  %ctrl = getelementptr inbounds %struct.engine_st, %struct.engine_st* %e, i64 0, i32 14
  %ctrl5 = bitcast {}** %ctrl to i32 (%struct.engine_st*, i32, i64, i8*, void ()*)**
  %2 = load i32 (%struct.engine_st*, i32, i64, i8*, void ()*)*, i32 (%struct.engine_st*, i32, i64, i8*, void ()*)** %ctrl5, align 8, !tbaa !12
  %cmp6 = icmp ne i32 (%struct.engine_st*, i32, i64, i8*, void ()*)* %2, null
  br i1 %cmp3, label %if.end10, label %if.then9

if.then9:                                         ; preds = %if.end2
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 141, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @__func__.ENGINE_ctrl, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 38, i32 noundef 130, i8* noundef null) #8
  br label %cleanup

if.end10:                                         ; preds = %if.end2
  %cond7 = zext i1 %cmp6 to i32
  switch i32 %cmd, label %sw.epilog [
    i32 10, label %cleanup
    i32 11, label %sw.bb11
    i32 12, label %sw.bb11
    i32 13, label %sw.bb11
    i32 14, label %sw.bb11
    i32 15, label %sw.bb11
    i32 16, label %sw.bb11
    i32 17, label %sw.bb11
    i32 18, label %sw.bb11
  ]

sw.bb11:                                          ; preds = %if.end10, %if.end10, %if.end10, %if.end10, %if.end10, %if.end10, %if.end10, %if.end10
  br i1 %cmp6, label %land.lhs.true, label %if.then18

land.lhs.true:                                    ; preds = %sw.bb11
  %flags = getelementptr inbounds %struct.engine_st, %struct.engine_st* %e, i64 0, i32 19
  %3 = load i32, i32* %flags, align 8, !tbaa !13
  %and = and i32 %3, 2
  %tobool13.not = icmp eq i32 %and, 0
  br i1 %tobool13.not, label %if.then14, label %if.end22

if.then14:                                        ; preds = %land.lhs.true
  %call15 = tail call fastcc i32 @int_ctrl_helper(%struct.engine_st* noundef nonnull %e, i32 noundef %cmd, i64 noundef %i, i8* noundef %p) #9
  br label %cleanup

if.then18:                                        ; preds = %sw.bb11
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 162, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @__func__.ENGINE_ctrl, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 38, i32 noundef 120, i8* noundef null) #8
  br label %cleanup

sw.epilog:                                        ; preds = %if.end10
  br i1 %cmp6, label %if.end22, label %if.then21

if.then21:                                        ; preds = %sw.epilog
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 175, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @__func__.ENGINE_ctrl, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 38, i32 noundef 120, i8* noundef null) #8
  br label %cleanup

if.end22:                                         ; preds = %land.lhs.true, %sw.epilog
  %call25 = tail call i32 %2(%struct.engine_st* noundef nonnull %e, i32 noundef %cmd, i64 noundef %i, i8* noundef %p, void ()* noundef %f) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %if.end, %if.end22, %if.then21, %if.then18, %if.then14, %if.then9, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ %call25, %if.end22 ], [ 0, %if.then21 ], [ -1, %if.then18 ], [ %call15, %if.then14 ], [ 0, %if.then9 ], [ 0, %if.end ], [ %cond7, %if.end10 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

declare void @ERR_new() local_unnamed_addr #2

declare void @ERR_set_debug(i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #2

declare void @ERR_set_error(i32 noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #2

declare i32 @CRYPTO_THREAD_write_lock(i8* noundef) local_unnamed_addr #2

declare i32 @CRYPTO_THREAD_unlock(i8* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @int_ctrl_helper(%struct.engine_st* nocapture noundef readonly %e, i32 noundef %cmd, i64 noundef %i, i8* noundef %p) unnamed_addr #0 {
entry:
  %cmp = icmp eq i32 %cmd, 11
  br i1 %cmp, label %if.then, label %if.end5

if.then:                                          ; preds = %entry
  %cmd_defns = getelementptr inbounds %struct.engine_st, %struct.engine_st* %e, i64 0, i32 18
  %0 = load %struct.ENGINE_CMD_DEFN_st*, %struct.ENGINE_CMD_DEFN_st** %cmd_defns, align 8, !tbaa !14
  %cmp1 = icmp eq %struct.ENGINE_CMD_DEFN_st* %0, null
  br i1 %cmp1, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then
  %call = tail call fastcc i32 @int_ctrl_cmd_is_null(%struct.ENGINE_CMD_DEFN_st* noundef nonnull %0) #9
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %cmd_num = getelementptr inbounds %struct.ENGINE_CMD_DEFN_st, %struct.ENGINE_CMD_DEFN_st* %0, i64 0, i32 0
  %1 = load i32, i32* %cmd_num, align 8, !tbaa !15
  br label %cleanup

if.end5:                                          ; preds = %entry
  %2 = and i32 %cmd, -3
  %3 = icmp eq i32 %2, 13
  %cmp10 = icmp eq i32 %cmd, 17
  %or.cond77 = or i1 %cmp10, %3
  %cmp12 = icmp eq i8* %p, null
  %or.cond78 = and i1 %or.cond77, %cmp12
  br i1 %or.cond78, label %if.then13, label %if.end15

if.then13:                                        ; preds = %if.end5
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 82, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.int_ctrl_helper, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 38, i32 noundef 786690, i8* noundef null) #8
  br label %cleanup

if.end15:                                         ; preds = %if.end5
  %cmp6 = icmp eq i32 %cmd, 13
  %cmd_defns18 = getelementptr inbounds %struct.engine_st, %struct.engine_st* %e, i64 0, i32 18
  %4 = load %struct.ENGINE_CMD_DEFN_st*, %struct.ENGINE_CMD_DEFN_st** %cmd_defns18, align 8, !tbaa !14
  %cmp19 = icmp eq %struct.ENGINE_CMD_DEFN_st* %4, null
  br i1 %cmp6, label %if.then17, label %if.end28

if.then17:                                        ; preds = %if.end15
  br i1 %cmp19, label %if.then24, label %lor.lhs.false20

lor.lhs.false20:                                  ; preds = %if.then17
  %call22 = tail call fastcc i32 @int_ctrl_cmd_by_name(%struct.ENGINE_CMD_DEFN_st* noundef nonnull %4, i8* noundef %p) #9
  %cmp23 = icmp slt i32 %call22, 0
  br i1 %cmp23, label %if.then24, label %if.end25

if.then24:                                        ; preds = %lor.lhs.false20, %if.then17
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 90, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.int_ctrl_helper, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 38, i32 noundef 137, i8* noundef null) #8
  br label %cleanup

if.end25:                                         ; preds = %lor.lhs.false20
  %idxprom2 = zext i32 %call22 to i64
  %cmd_num27 = getelementptr inbounds %struct.ENGINE_CMD_DEFN_st, %struct.ENGINE_CMD_DEFN_st* %4, i64 %idxprom2, i32 0
  %5 = load i32, i32* %cmd_num27, align 8, !tbaa !15
  br label %cleanup

if.end28:                                         ; preds = %if.end15
  br i1 %cmp19, label %if.then36, label %lor.lhs.false31

lor.lhs.false31:                                  ; preds = %if.end28
  %conv = trunc i64 %i to i32
  %call33 = tail call fastcc i32 @int_ctrl_cmd_by_num(%struct.ENGINE_CMD_DEFN_st* noundef nonnull %4, i32 noundef %conv) #9
  %cmp34 = icmp slt i32 %call33, 0
  br i1 %cmp34, label %if.then36, label %if.end37

if.then36:                                        ; preds = %lor.lhs.false31, %if.end28
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 101, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.int_ctrl_helper, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 38, i32 noundef 138, i8* noundef null) #8
  br label %cleanup

if.end37:                                         ; preds = %lor.lhs.false31
  %idxprom393 = zext i32 %call33 to i64
  switch i32 %cmd, label %sw.epilog [
    i32 12, label %sw.bb
    i32 14, label %sw.bb44
    i32 15, label %sw.bb47
    i32 16, label %sw.bb52
    i32 17, label %sw.bb62
    i32 18, label %sw.bb74
  ]

sw.bb:                                            ; preds = %if.end37
  %arrayidx40 = getelementptr inbounds %struct.ENGINE_CMD_DEFN_st, %struct.ENGINE_CMD_DEFN_st* %4, i64 %idxprom393
  %incdec.ptr = getelementptr inbounds %struct.ENGINE_CMD_DEFN_st, %struct.ENGINE_CMD_DEFN_st* %arrayidx40, i64 1
  %call41 = tail call fastcc i32 @int_ctrl_cmd_is_null(%struct.ENGINE_CMD_DEFN_st* noundef nonnull %incdec.ptr) #9
  %tobool42.not = icmp eq i32 %call41, 0
  br i1 %tobool42.not, label %cond.false, label %cleanup

cond.false:                                       ; preds = %sw.bb
  %cmd_num43 = getelementptr inbounds %struct.ENGINE_CMD_DEFN_st, %struct.ENGINE_CMD_DEFN_st* %incdec.ptr, i64 0, i32 0
  %6 = load i32, i32* %cmd_num43, align 8, !tbaa !15
  br label %cleanup

sw.bb44:                                          ; preds = %if.end37
  %cmd_name = getelementptr inbounds %struct.ENGINE_CMD_DEFN_st, %struct.ENGINE_CMD_DEFN_st* %4, i64 %idxprom393, i32 1
  %7 = load i8*, i8** %cmd_name, align 8, !tbaa !17
  %call45 = tail call i64 @strlen(i8* noundef %7) #10
  %conv46 = trunc i64 %call45 to i32
  br label %cleanup

sw.bb47:                                          ; preds = %if.end37
  %cmd_name48 = getelementptr inbounds %struct.ENGINE_CMD_DEFN_st, %struct.ENGINE_CMD_DEFN_st* %4, i64 %idxprom393, i32 1
  %8 = load i8*, i8** %cmd_name48, align 8, !tbaa !17
  %call49 = tail call i8* @strcpy(i8* noundef %p, i8* noundef %8) #8
  %call50 = tail call i64 @strlen(i8* noundef %call49) #10
  %conv51 = trunc i64 %call50 to i32
  br label %cleanup

sw.bb52:                                          ; preds = %if.end37
  %cmd_desc = getelementptr inbounds %struct.ENGINE_CMD_DEFN_st, %struct.ENGINE_CMD_DEFN_st* %4, i64 %idxprom393, i32 2
  %9 = load i8*, i8** %cmd_desc, align 8, !tbaa !18
  %cmp53 = icmp eq i8* %9, null
  %. = select i1 %cmp53, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8* %9
  %call60 = tail call i64 @strlen(i8* noundef %.) #10
  %conv61 = trunc i64 %call60 to i32
  br label %cleanup

sw.bb62:                                          ; preds = %if.end37
  %cmd_desc63 = getelementptr inbounds %struct.ENGINE_CMD_DEFN_st, %struct.ENGINE_CMD_DEFN_st* %4, i64 %idxprom393, i32 2
  %10 = load i8*, i8** %cmd_desc63, align 8, !tbaa !18
  %cmp64 = icmp eq i8* %10, null
  %.1 = select i1 %cmp64, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8* %10
  %call71 = tail call i8* @strcpy(i8* noundef %p, i8* noundef %.1) #8
  %call72 = tail call i64 @strlen(i8* noundef %call71) #10
  %conv73 = trunc i64 %call72 to i32
  br label %cleanup

sw.bb74:                                          ; preds = %if.end37
  %cmd_flags = getelementptr inbounds %struct.ENGINE_CMD_DEFN_st, %struct.ENGINE_CMD_DEFN_st* %4, i64 %idxprom393, i32 3
  %11 = load i32, i32* %cmd_flags, align 8, !tbaa !19
  br label %cleanup

sw.epilog:                                        ; preds = %if.end37
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 124, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.int_ctrl_helper, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 38, i32 noundef 110, i8* noundef null) #8
  br label %cleanup

cleanup:                                          ; preds = %cond.false, %sw.bb, %if.then, %lor.lhs.false, %sw.epilog, %sw.bb74, %sw.bb62, %sw.bb52, %sw.bb47, %sw.bb44, %if.then36, %if.end25, %if.then24, %if.then13, %if.end
  %retval.0 = phi i32 [ %1, %if.end ], [ -1, %if.then13 ], [ -1, %if.then24 ], [ %5, %if.end25 ], [ -1, %if.then36 ], [ -1, %sw.epilog ], [ %11, %sw.bb74 ], [ %conv73, %sw.bb62 ], [ %conv61, %sw.bb52 ], [ %conv51, %sw.bb47 ], [ %conv46, %sw.bb44 ], [ 0, %lor.lhs.false ], [ 0, %if.then ], [ %6, %cond.false ], [ 0, %sw.bb ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: noinline nounwind uwtable
define i32 @ENGINE_cmd_is_executable(%struct.engine_st* noundef %e, i32 noundef %cmd) local_unnamed_addr #0 {
entry:
  %conv = sext i32 %cmd to i64
  %call = tail call i32 @ENGINE_ctrl(%struct.engine_st* noundef %e, i32 noundef 18, i64 noundef %conv, i8* noundef null, void ()* noundef null) #9
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 186, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.ENGINE_cmd_is_executable, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 38, i32 noundef 138, i8* noundef null) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = and i32 %call, 7
  %1 = icmp ne i32 %0, 0
  %spec.select = zext i1 %1 to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ %spec.select, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @ENGINE_ctrl_cmd(%struct.engine_st* noundef %e, i8* noundef %cmd_name, i64 noundef %i, i8* noundef %p, void ()* noundef %f, i32 noundef %cmd_optional) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.engine_st* %e, null
  %cmp1 = icmp eq i8* %cmd_name, null
  %or.cond = or i1 %cmp, %cmp1
  br i1 %or.cond, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 202, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.ENGINE_ctrl_cmd, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 38, i32 noundef 786690, i8* noundef null) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %ctrl = getelementptr inbounds %struct.engine_st, %struct.engine_st* %e, i64 0, i32 14
  %ctrl2 = bitcast {}** %ctrl to i32 (%struct.engine_st*, i32, i64, i8*, void ()*)**
  %0 = load i32 (%struct.engine_st*, i32, i64, i8*, void ()*)*, i32 (%struct.engine_st*, i32, i64, i8*, void ()*)** %ctrl2, align 8, !tbaa !12
  %cmp3 = icmp eq i32 (%struct.engine_st*, i32, i64, i8*, void ()*)* %0, null
  br i1 %cmp3, label %if.then6, label %lor.lhs.false4

lor.lhs.false4:                                   ; preds = %if.end
  %call = tail call i32 @ENGINE_ctrl(%struct.engine_st* noundef nonnull %e, i32 noundef 13, i64 noundef 0, i8* noundef nonnull %cmd_name, void ()* noundef null) #9
  %cmp5 = icmp slt i32 %call, 1
  br i1 %cmp5, label %if.then6, label %if.end9

if.then6:                                         ; preds = %lor.lhs.false4, %if.end
  %tobool.not = icmp eq i32 %cmd_optional, 0
  br i1 %tobool.not, label %if.end8, label %if.then7

if.then7:                                         ; preds = %if.then6
  tail call void @ERR_clear_error() #8
  br label %cleanup

if.end8:                                          ; preds = %if.then6
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 220, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.ENGINE_ctrl_cmd, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 38, i32 noundef 137, i8* noundef null) #8
  br label %cleanup

if.end9:                                          ; preds = %lor.lhs.false4
  %call10 = tail call i32 @ENGINE_ctrl(%struct.engine_st* noundef nonnull %e, i32 noundef %call, i64 noundef %i, i8* noundef %p, void ()* noundef %f) #9
  %cmp11 = icmp sgt i32 %call10, 0
  %. = zext i1 %cmp11 to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %if.end8, %if.then7, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 1, %if.then7 ], [ 0, %if.end8 ], [ %., %if.end9 ]
  ret i32 %retval.0
}

declare void @ERR_clear_error() local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @ENGINE_ctrl_cmd_string(%struct.engine_st* noundef %e, i8* noundef %cmd_name, i8* noundef %arg, i32 noundef %cmd_optional) local_unnamed_addr #0 {
entry:
  %ptr = alloca i8*, align 8
  %0 = bitcast i8** %ptr to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #11
  %cmp = icmp eq %struct.engine_st* %e, null
  %cmp1 = icmp eq i8* %cmd_name, null
  %or.cond = or i1 %cmp, %cmp1
  br i1 %or.cond, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 240, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.ENGINE_ctrl_cmd_string, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 38, i32 noundef 786690, i8* noundef null) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %ctrl = getelementptr inbounds %struct.engine_st, %struct.engine_st* %e, i64 0, i32 14
  %ctrl2 = bitcast {}** %ctrl to i32 (%struct.engine_st*, i32, i64, i8*, void ()*)**
  %1 = load i32 (%struct.engine_st*, i32, i64, i8*, void ()*)*, i32 (%struct.engine_st*, i32, i64, i8*, void ()*)** %ctrl2, align 8, !tbaa !12
  %cmp3 = icmp eq i32 (%struct.engine_st*, i32, i64, i8*, void ()*)* %1, null
  br i1 %cmp3, label %if.then6, label %lor.lhs.false4

lor.lhs.false4:                                   ; preds = %if.end
  %call = tail call i32 @ENGINE_ctrl(%struct.engine_st* noundef nonnull %e, i32 noundef 13, i64 noundef 0, i8* noundef nonnull %cmd_name, void ()* noundef null) #9
  %cmp5 = icmp slt i32 %call, 1
  br i1 %cmp5, label %if.then6, label %if.end9

if.then6:                                         ; preds = %lor.lhs.false4, %if.end
  %tobool.not = icmp eq i32 %cmd_optional, 0
  br i1 %tobool.not, label %if.end8, label %if.then7

if.then7:                                         ; preds = %if.then6
  tail call void @ERR_clear_error() #8
  br label %cleanup

if.end8:                                          ; preds = %if.then6
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 258, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.ENGINE_ctrl_cmd_string, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 38, i32 noundef 137, i8* noundef null) #8
  br label %cleanup

if.end9:                                          ; preds = %lor.lhs.false4
  %call10 = tail call i32 @ENGINE_cmd_is_executable(%struct.engine_st* noundef nonnull %e, i32 noundef %call) #9
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.then12, label %if.end13

if.then12:                                        ; preds = %if.end9
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 262, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.ENGINE_ctrl_cmd_string, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 38, i32 noundef 134, i8* noundef null) #8
  br label %cleanup

if.end13:                                         ; preds = %if.end9
  %conv90 = zext i32 %call to i64
  %call14 = tail call i32 @ENGINE_ctrl(%struct.engine_st* noundef nonnull %e, i32 noundef 18, i64 noundef %conv90, i8* noundef null, void ()* noundef null) #9
  %cmp15 = icmp slt i32 %call14, 0
  br i1 %cmp15, label %if.then17, label %if.end18

if.then17:                                        ; preds = %if.end13
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 272, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.ENGINE_ctrl_cmd_string, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 38, i32 noundef 110, i8* noundef null) #8
  br label %cleanup

if.end18:                                         ; preds = %if.end13
  %and = and i32 %call14, 4
  %tobool19.not = icmp eq i32 %and, 0
  %cmp31 = icmp eq i8* %arg, null
  br i1 %tobool19.not, label %if.end30, label %if.then20

if.then20:                                        ; preds = %if.end18
  br i1 %cmp31, label %if.end24, label %if.then23

if.then23:                                        ; preds = %if.then20
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 280, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.ENGINE_ctrl_cmd_string, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 38, i32 noundef 136, i8* noundef null) #8
  br label %cleanup

if.end24:                                         ; preds = %if.then20
  %call25 = tail call i32 @ENGINE_ctrl(%struct.engine_st* noundef nonnull %e, i32 noundef %call, i64 noundef 0, i8* noundef null, void ()* noundef null) #9
  %cmp26 = icmp sgt i32 %call25, 0
  br label %cleanup

if.end30:                                         ; preds = %if.end18
  br i1 %cmp31, label %if.then33, label %if.end34

if.then33:                                        ; preds = %if.end30
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 295, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.ENGINE_ctrl_cmd_string, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 38, i32 noundef 135, i8* noundef null) #8
  br label %cleanup

if.end34:                                         ; preds = %if.end30
  %and35 = and i32 %call14, 2
  %tobool36.not = icmp eq i32 %and35, 0
  br i1 %tobool36.not, label %if.end43, label %if.then37

if.then37:                                        ; preds = %if.end34
  %call38 = tail call i32 @ENGINE_ctrl(%struct.engine_st* noundef nonnull %e, i32 noundef %call, i64 noundef 0, i8* noundef nonnull %arg, void ()* noundef null) #9
  %cmp39 = icmp sgt i32 %call38, 0
  br label %cleanup

if.end43:                                         ; preds = %if.end34
  %and44 = and i32 %call14, 1
  %tobool45.not = icmp eq i32 %and44, 0
  br i1 %tobool45.not, label %if.then46, label %if.end47

if.then46:                                        ; preds = %if.end43
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 312, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.ENGINE_ctrl_cmd_string, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 38, i32 noundef 110, i8* noundef null) #8
  br label %cleanup

if.end47:                                         ; preds = %if.end43
  %call48 = call i64 @strtol(i8* noundef nonnull %arg, i8** noundef nonnull %ptr, i32 noundef 10) #8
  %2 = load i8*, i8** %ptr, align 8, !tbaa !4
  %cmp49 = icmp eq i8* %2, %arg
  br i1 %cmp49, label %if.then55, label %lor.lhs.false51

lor.lhs.false51:                                  ; preds = %if.end47
  %3 = load i8, i8* %2, align 1, !tbaa !20
  %cmp53.not = icmp eq i8 %3, 0
  br i1 %cmp53.not, label %if.end56, label %if.then55

if.then55:                                        ; preds = %lor.lhs.false51, %if.end47
  call void @ERR_new() #8
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 317, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.ENGINE_ctrl_cmd_string, i64 0, i64 0)) #8
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 38, i32 noundef 133, i8* noundef null) #8
  br label %cleanup

if.end56:                                         ; preds = %lor.lhs.false51
  %call57 = call i32 @ENGINE_ctrl(%struct.engine_st* noundef nonnull %e, i32 noundef %call, i64 noundef %call48, i8* noundef null, void ()* noundef null) #9
  %cmp58 = icmp sgt i32 %call57, 0
  br label %cleanup

cleanup:                                          ; preds = %if.end56, %if.then37, %if.end24, %if.then55, %if.then46, %if.then33, %if.then23, %if.then17, %if.then12, %if.end8, %if.then7, %if.then
  %retval.0.shrunk = phi i1 [ false, %if.then ], [ true, %if.then7 ], [ false, %if.end8 ], [ false, %if.then17 ], [ false, %if.then23 ], [ false, %if.then33 ], [ false, %if.then55 ], [ false, %if.then46 ], [ false, %if.then12 ], [ %cmp26, %if.end24 ], [ %cmp39, %if.then37 ], [ %cmp58, %if.end56 ]
  %retval.0 = zext i1 %retval.0.shrunk to i32
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind
declare i64 @strtol(i8* noundef, i8** noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal fastcc i32 @int_ctrl_cmd_is_null(%struct.ENGINE_CMD_DEFN_st* nocapture noundef readonly %defn) unnamed_addr #4 {
entry:
  %cmd_num = getelementptr inbounds %struct.ENGINE_CMD_DEFN_st, %struct.ENGINE_CMD_DEFN_st* %defn, i64 0, i32 0
  %0 = load i32, i32* %cmd_num, align 8, !tbaa !15
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %return, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %cmd_name = getelementptr inbounds %struct.ENGINE_CMD_DEFN_st, %struct.ENGINE_CMD_DEFN_st* %defn, i64 0, i32 1
  %1 = load i8*, i8** %cmd_name, align 8, !tbaa !17
  %cmp1 = icmp eq i8* %1, null
  %spec.select = zext i1 %cmp1 to i32
  br label %return

return:                                           ; preds = %lor.lhs.false, %entry
  %retval.0 = phi i32 [ 1, %entry ], [ %spec.select, %lor.lhs.false ]
  ret i32 %retval.0
}

; Function Attrs: nofree noinline nounwind readonly uwtable
define internal fastcc i32 @int_ctrl_cmd_by_name(%struct.ENGINE_CMD_DEFN_st* nocapture noundef readonly %defn, i8* noundef readonly %s) unnamed_addr #5 {
entry:
  %call9 = tail call fastcc i32 @int_ctrl_cmd_is_null(%struct.ENGINE_CMD_DEFN_st* noundef %defn) #9
  %tobool.not10 = icmp eq i32 %call9, 0
  br i1 %tobool.not10, label %land.rhs, label %while.end

land.rhs:                                         ; preds = %entry, %while.body
  %idx.012 = phi i32 [ %inc, %while.body ], [ 0, %entry ]
  %defn.addr.011 = phi %struct.ENGINE_CMD_DEFN_st* [ %incdec.ptr, %while.body ], [ %defn, %entry ]
  %cmd_name = getelementptr inbounds %struct.ENGINE_CMD_DEFN_st, %struct.ENGINE_CMD_DEFN_st* %defn.addr.011, i64 0, i32 1
  %0 = load i8*, i8** %cmd_name, align 8, !tbaa !17
  %call1 = tail call i32 @strcmp(i8* noundef %0, i8* noundef %s) #10
  %cmp.not = icmp eq i32 %call1, 0
  br i1 %cmp.not, label %while.end, label %while.body

while.body:                                       ; preds = %land.rhs
  %inc = add nuw nsw i32 %idx.012, 1
  %incdec.ptr = getelementptr inbounds %struct.ENGINE_CMD_DEFN_st, %struct.ENGINE_CMD_DEFN_st* %defn.addr.011, i64 1
  %call = tail call fastcc i32 @int_ctrl_cmd_is_null(%struct.ENGINE_CMD_DEFN_st* noundef nonnull %incdec.ptr) #9
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.rhs, label %while.end, !llvm.loop !21

while.end:                                        ; preds = %land.rhs, %while.body, %entry
  %idx.0. = phi i32 [ -1, %entry ], [ -1, %while.body ], [ %idx.012, %land.rhs ]
  ret i32 %idx.0.
}

; Function Attrs: nofree noinline norecurse nosync nounwind readonly uwtable
define internal fastcc i32 @int_ctrl_cmd_by_num(%struct.ENGINE_CMD_DEFN_st* nocapture noundef readonly %defn, i32 noundef %num) unnamed_addr #6 {
entry:
  %call9 = tail call fastcc i32 @int_ctrl_cmd_is_null(%struct.ENGINE_CMD_DEFN_st* noundef %defn) #9
  %tobool.not10 = icmp eq i32 %call9, 0
  br i1 %tobool.not10, label %land.rhs, label %while.end

land.rhs:                                         ; preds = %entry, %while.body
  %idx.012 = phi i32 [ %inc, %while.body ], [ 0, %entry ]
  %defn.addr.011 = phi %struct.ENGINE_CMD_DEFN_st* [ %incdec.ptr, %while.body ], [ %defn, %entry ]
  %cmd_num = getelementptr inbounds %struct.ENGINE_CMD_DEFN_st, %struct.ENGINE_CMD_DEFN_st* %defn.addr.011, i64 0, i32 0
  %0 = load i32, i32* %cmd_num, align 8, !tbaa !15
  %cmp = icmp ult i32 %0, %num
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %land.rhs
  %inc = add nuw nsw i32 %idx.012, 1
  %incdec.ptr = getelementptr inbounds %struct.ENGINE_CMD_DEFN_st, %struct.ENGINE_CMD_DEFN_st* %defn.addr.011, i64 1
  %call = tail call fastcc i32 @int_ctrl_cmd_is_null(%struct.ENGINE_CMD_DEFN_st* noundef nonnull %incdec.ptr) #9
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.rhs, label %while.end, !llvm.loop !23

while.end:                                        ; preds = %land.rhs, %while.body, %entry
  %defn.addr.0.lcssa = phi %struct.ENGINE_CMD_DEFN_st* [ %defn, %entry ], [ %incdec.ptr, %while.body ], [ %defn.addr.011, %land.rhs ]
  %idx.0.lcssa = phi i32 [ 0, %entry ], [ %inc, %while.body ], [ %idx.012, %land.rhs ]
  %cmd_num1 = getelementptr inbounds %struct.ENGINE_CMD_DEFN_st, %struct.ENGINE_CMD_DEFN_st* %defn.addr.0.lcssa, i64 0, i32 0
  %1 = load i32, i32* %cmd_num1, align 8, !tbaa !15
  %cmp2 = icmp eq i32 %1, %num
  %idx.0. = select i1 %cmp2, i32 %idx.0.lcssa, i32 -1
  ret i32 %idx.0.
}

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare i64 @strlen(i8* noundef) local_unnamed_addr #7

; Function Attrs: nounwind
declare i8* @strcpy(i8* noundef, i8* noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare i32 @strcmp(i8* noundef, i8* noundef) local_unnamed_addr #7

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree noinline nounwind readonly uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree noinline norecurse nosync nounwind readonly uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nobuiltin nounwind "no-builtins" }
attributes #9 = { nobuiltin "no-builtins" }
attributes #10 = { nobuiltin nounwind readonly willreturn "no-builtins" }
attributes #11 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{!"clang version 14.0.0"}
!4 = !{!5, !5, i64 0}
!5 = !{!"any pointer", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !6, i64 156}
!9 = !{!"engine_st", !5, i64 0, !5, i64 8, !5, i64 16, !5, i64 24, !5, i64 32, !5, i64 40, !5, i64 48, !5, i64 56, !5, i64 64, !5, i64 72, !5, i64 80, !5, i64 88, !5, i64 96, !5, i64 104, !5, i64 112, !5, i64 120, !5, i64 128, !5, i64 136, !5, i64 144, !10, i64 152, !6, i64 156, !10, i64 160, !11, i64 168, !5, i64 184, !5, i64 192}
!10 = !{!"int", !6, i64 0}
!11 = !{!"crypto_ex_data_st", !5, i64 0, !5, i64 8}
!12 = !{!9, !5, i64 112}
!13 = !{!9, !10, i64 152}
!14 = !{!9, !5, i64 144}
!15 = !{!16, !10, i64 0}
!16 = !{!"ENGINE_CMD_DEFN_st", !10, i64 0, !5, i64 8, !5, i64 16, !10, i64 24}
!17 = !{!16, !5, i64 8}
!18 = !{!16, !5, i64 16}
!19 = !{!16, !10, i64 24}
!20 = !{!6, !6, i64 0}
!21 = distinct !{!21, !22}
!22 = !{!"llvm.loop.mustprogress"}
!23 = distinct !{!23, !22}
