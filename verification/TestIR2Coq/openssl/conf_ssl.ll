; ModuleID = 'crypto/conf/conf_ssl.c'
source_filename = "crypto/conf/conf_ssl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ssl_conf_name_st = type { i8*, %struct.ssl_conf_cmd_st*, i64 }
%struct.ssl_conf_cmd_st = type { i8*, i8* }
%struct.conf_imodule_st = type opaque
%struct.conf_st = type { %struct.conf_method_st*, i8*, %struct.lhash_st_CONF_VALUE*, i32, i32, i8*, %struct.ossl_lib_ctx_st* }
%struct.conf_method_st = type { i8*, %struct.conf_st* (%struct.conf_method_st*)*, i32 (%struct.conf_st*)*, i32 (%struct.conf_st*)*, i32 (%struct.conf_st*)*, i32 (%struct.conf_st*, %struct.bio_st*, i64*)*, i32 (%struct.conf_st*, %struct.bio_st*)*, i32 (%struct.conf_st*, i8)*, i32 (%struct.conf_st*, i8)*, i32 (%struct.conf_st*, i8*, i64*)* }
%struct.bio_st = type opaque
%struct.lhash_st_CONF_VALUE = type { %union.lh_CONF_VALUE_dummy }
%union.lh_CONF_VALUE_dummy = type { i8* }
%struct.ossl_lib_ctx_st = type opaque
%struct.stack_st_CONF_VALUE = type opaque
%struct.stack_st = type opaque

@ssl_names = internal unnamed_addr global %struct.ssl_conf_name_st* null, align 8
@ssl_names_count = internal unnamed_addr global i64 0, align 8
@.str = private unnamed_addr constant [9 x i8] c"ssl_conf\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"crypto/conf/conf_ssl.c\00", align 1
@__func__.ssl_module_init = private unnamed_addr constant [16 x i8] c"ssl_module_init\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"section=%s\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"name=%s, value=%s\00", align 1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define %struct.ssl_conf_cmd_st* @conf_ssl_get(i64 noundef %idx, i8** nocapture noundef writeonly %name, i64* nocapture noundef writeonly %cnt) local_unnamed_addr #0 {
entry:
  %0 = load %struct.ssl_conf_name_st*, %struct.ssl_conf_name_st** @ssl_names, align 8, !tbaa !4
  %name1 = getelementptr inbounds %struct.ssl_conf_name_st, %struct.ssl_conf_name_st* %0, i64 %idx, i32 0
  %1 = load i8*, i8** %name1, align 8, !tbaa !8
  store i8* %1, i8** %name, align 8, !tbaa !4
  %cmd_count = getelementptr inbounds %struct.ssl_conf_name_st, %struct.ssl_conf_name_st* %0, i64 %idx, i32 2
  %2 = load i64, i64* %cmd_count, align 8, !tbaa !11
  store i64 %2, i64* %cnt, align 8, !tbaa !12
  %cmds = getelementptr inbounds %struct.ssl_conf_name_st, %struct.ssl_conf_name_st* %0, i64 %idx, i32 1
  %3 = load %struct.ssl_conf_cmd_st*, %struct.ssl_conf_cmd_st** %cmds, align 8, !tbaa !13
  ret %struct.ssl_conf_cmd_st* %3
}

; Function Attrs: nofree noinline nounwind uwtable
define i32 @conf_ssl_name_find(i8* noundef readonly %name, i64* nocapture noundef writeonly %idx) local_unnamed_addr #1 {
entry:
  %cmp = icmp eq i8* %name, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %0 = load i64, i64* @ssl_names_count, align 8, !tbaa !12
  %cmp114.not = icmp eq i64 %0, 0
  br i1 %cmp114.not, label %cleanup, label %for.body.preheader

for.body.preheader:                               ; preds = %if.end
  %1 = load %struct.ssl_conf_name_st*, %struct.ssl_conf_name_st** @ssl_names, align 8, !tbaa !4
  br label %for.body

for.body:                                         ; preds = %for.body.preheader, %for.inc
  %nm.016 = phi %struct.ssl_conf_name_st* [ %incdec.ptr, %for.inc ], [ %1, %for.body.preheader ]
  %i.015 = phi i64 [ %inc, %for.inc ], [ 0, %for.body.preheader ]
  %name2 = getelementptr inbounds %struct.ssl_conf_name_st, %struct.ssl_conf_name_st* %nm.016, i64 0, i32 0
  %2 = load i8*, i8** %name2, align 8, !tbaa !8
  %call = tail call i32 @strcmp(i8* noundef %2, i8* noundef nonnull %name) #7
  %cmp3 = icmp eq i32 %call, 0
  br i1 %cmp3, label %if.then4, label %for.inc

if.then4:                                         ; preds = %for.body
  store i64 %i.015, i64* %idx, align 8, !tbaa !12
  br label %cleanup

for.inc:                                          ; preds = %for.body
  %inc = add nuw i64 %i.015, 1
  %incdec.ptr = getelementptr inbounds %struct.ssl_conf_name_st, %struct.ssl_conf_name_st* %nm.016, i64 1
  %exitcond.not = icmp eq i64 %inc, %0
  br i1 %exitcond.not, label %cleanup, label %for.body, !llvm.loop !14

cleanup:                                          ; preds = %for.inc, %if.end, %entry, %if.then4
  %retval.0 = phi i32 [ 1, %if.then4 ], [ 0, %entry ], [ 0, %if.end ], [ 0, %for.inc ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare i32 @strcmp(i8* noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define void @conf_ssl_get_cmd(%struct.ssl_conf_cmd_st* nocapture noundef readonly %cmd, i64 noundef %idx, i8** nocapture noundef writeonly %cmdstr, i8** nocapture noundef writeonly %arg) local_unnamed_addr #0 {
entry:
  %cmd1 = getelementptr inbounds %struct.ssl_conf_cmd_st, %struct.ssl_conf_cmd_st* %cmd, i64 %idx, i32 0
  %0 = load i8*, i8** %cmd1, align 8, !tbaa !16
  store i8* %0, i8** %cmdstr, align 8, !tbaa !4
  %arg3 = getelementptr inbounds %struct.ssl_conf_cmd_st, %struct.ssl_conf_cmd_st* %cmd, i64 %idx, i32 1
  %1 = load i8*, i8** %arg3, align 8, !tbaa !18
  store i8* %1, i8** %arg, align 8, !tbaa !4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define void @ossl_config_add_ssl_module() local_unnamed_addr #3 {
entry:
  %call = tail call i32 @CONF_module_add(i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 (%struct.conf_imodule_st*, %struct.conf_st*)* noundef nonnull @ssl_module_init, void (%struct.conf_imodule_st*)* noundef nonnull @ssl_module_free) #8
  ret void
}

declare i32 @CONF_module_add(i8* noundef, i32 (%struct.conf_imodule_st*, %struct.conf_st*)* noundef, void (%struct.conf_imodule_st*)* noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind uwtable
define internal i32 @ssl_module_init(%struct.conf_imodule_st* noundef %md, %struct.conf_st* noundef %cnf) #3 {
entry:
  %call = tail call i8* @CONF_imodule_get_value(%struct.conf_imodule_st* noundef %md) #8
  %call1 = tail call %struct.stack_st_CONF_VALUE* @NCONF_get_section(%struct.conf_st* noundef %cnf, i8* noundef %call) #8
  %call2 = tail call fastcc %struct.stack_st* @ossl_check_const_CONF_VALUE_sk_type(%struct.stack_st_CONF_VALUE* noundef %call1) #9
  %call3 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call2) #8
  %cmp = icmp slt i32 %call3, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %cmp4 = icmp eq %struct.stack_st_CONF_VALUE* %call1, null
  %cond = select i1 %cmp4, i32 120, i32 119
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 noundef 76, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.ssl_module_init, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 14, i32 noundef %cond, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i8* noundef %call) #8
  br label %if.then90

if.end:                                           ; preds = %entry
  %call6 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call2) #8
  %conv = sext i32 %call6 to i64
  tail call void @ssl_module_free(%struct.conf_imodule_st* noundef %md) #9
  %mul = mul nsw i64 %conv, 24
  %call7 = tail call i8* @CRYPTO_zalloc(i64 noundef %mul, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 noundef 81) #8
  store i8* %call7, i8** bitcast (%struct.ssl_conf_name_st** @ssl_names to i8**), align 8, !tbaa !4
  %cmp8 = icmp eq i8* %call7, null
  br i1 %cmp8, label %if.then90, label %if.end11

if.end11:                                         ; preds = %if.end
  store i64 %conv, i64* @ssl_names_count, align 8, !tbaa !12
  %cmp12172.not = icmp eq i32 %call6, 0
  br i1 %cmp12172.not, label %cleanup92, label %for.body.preheader

for.body.preheader:                               ; preds = %if.end11
  %call16204 = tail call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call2, i32 noundef 0) #8
  %value205 = getelementptr inbounds i8, i8* %call16204, i64 16
  %0 = bitcast i8* %value205 to i8**
  %1 = load i8*, i8** %0, align 8, !tbaa !19
  %call17206 = tail call %struct.stack_st_CONF_VALUE* @NCONF_get_section(%struct.conf_st* noundef %cnf, i8* noundef %1) #8
  %call18207 = tail call fastcc %struct.stack_st* @ossl_check_const_CONF_VALUE_sk_type(%struct.stack_st_CONF_VALUE* noundef %call17206) #9
  %call19208 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call18207) #8
  %cmp20209 = icmp slt i32 %call19208, 1
  br i1 %cmp20209, label %if.then22, label %if.end28.preheader

if.end28.preheader:                               ; preds = %for.body.preheader
  %2 = bitcast i8* %call7 to %struct.ssl_conf_name_st*
  br label %if.end28

if.then22:                                        ; preds = %for.inc84.for.body_crit_edge, %for.body.preheader
  %call16.lcssa = phi i8* [ %call16204, %for.body.preheader ], [ %call16, %for.inc84.for.body_crit_edge ]
  %value.lcssa = phi i8* [ %value205, %for.body.preheader ], [ %value, %for.inc84.for.body_crit_edge ]
  %call17.lcssa = phi %struct.stack_st_CONF_VALUE* [ %call17206, %for.body.preheader ], [ %call17, %for.inc84.for.body_crit_edge ]
  %3 = bitcast i8* %value.lcssa to i8**
  %cmp24 = icmp eq %struct.stack_st_CONF_VALUE* %call17.lcssa, null
  %cond26 = select i1 %cmp24, i32 118, i32 117
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 noundef 96, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.ssl_module_init, i64 0, i64 0)) #8
  %name = getelementptr inbounds i8, i8* %call16.lcssa, i64 8
  %4 = bitcast i8* %name to i8**
  %5 = load i8*, i8** %4, align 8, !tbaa !21
  %6 = load i8*, i8** %3, align 8, !tbaa !19
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 14, i32 noundef %cond26, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i8* noundef %5, i8* noundef %6) #8
  br label %if.then90

if.end28:                                         ; preds = %if.end28.preheader, %for.inc84.for.body_crit_edge
  %call18212 = phi %struct.stack_st* [ %call18, %for.inc84.for.body_crit_edge ], [ %call18207, %if.end28.preheader ]
  %call16211 = phi i8* [ %call16, %for.inc84.for.body_crit_edge ], [ %call16204, %if.end28.preheader ]
  %i.0173210 = phi i64 [ %inc85, %for.inc84.for.body_crit_edge ], [ 0, %if.end28.preheader ]
  %7 = phi %struct.ssl_conf_name_st* [ %.pre, %for.inc84.for.body_crit_edge ], [ %2, %if.end28.preheader ]
  %name29 = getelementptr inbounds i8, i8* %call16211, i64 8
  %8 = bitcast i8* %name29 to i8**
  %9 = load i8*, i8** %8, align 8, !tbaa !21
  %call30 = tail call i8* @CRYPTO_strdup(i8* noundef %9, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 noundef 100) #8
  %name31 = getelementptr inbounds %struct.ssl_conf_name_st, %struct.ssl_conf_name_st* %7, i64 %i.0173210, i32 0
  store i8* %call30, i8** %name31, align 8, !tbaa !8
  %cmp33 = icmp eq i8* %call30, null
  br i1 %cmp33, label %if.then90, label %if.end36

if.end36:                                         ; preds = %if.end28
  %call38 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call18212) #8
  %conv39 = sext i32 %call38 to i64
  %mul40 = shl nsw i64 %conv39, 4
  %call41 = tail call i8* @CRYPTO_zalloc(i64 noundef %mul40, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 noundef 104) #8
  %cmds42 = getelementptr inbounds %struct.ssl_conf_name_st, %struct.ssl_conf_name_st* %7, i64 %i.0173210, i32 1
  %10 = bitcast %struct.ssl_conf_cmd_st** %cmds42 to i8**
  store i8* %call41, i8** %10, align 8, !tbaa !13
  %cmp44 = icmp eq i8* %call41, null
  br i1 %cmp44, label %if.then90, label %if.end47

if.end47:                                         ; preds = %if.end36
  %cmd_count = getelementptr inbounds %struct.ssl_conf_name_st, %struct.ssl_conf_name_st* %7, i64 %i.0173210, i32 2
  store i64 %conv39, i64* %cmd_count, align 8, !tbaa !11
  %cmp49170.not = icmp eq i32 %call38, 0
  br i1 %cmp49170.not, label %for.inc84, label %for.body51.preheader

for.body51.preheader:                             ; preds = %if.end47
  %umax = call i64 @llvm.umax.i64(i64 %conv39, i64 1)
  br label %for.body51

for.cond48:                                       ; preds = %for.body51
  %exitcond.not = icmp eq i64 %inc, %umax
  br i1 %exitcond.not, label %for.inc84, label %for.body51, !llvm.loop !22

for.body51:                                       ; preds = %for.body51.preheader, %for.cond48
  %j.0171 = phi i64 [ %inc, %for.cond48 ], [ 0, %for.body51.preheader ]
  %conv54 = trunc i64 %j.0171 to i32
  %call55 = tail call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call18212, i32 noundef %conv54) #8
  %11 = load %struct.ssl_conf_cmd_st*, %struct.ssl_conf_cmd_st** %cmds42, align 8, !tbaa !13
  %name58 = getelementptr inbounds i8, i8* %call55, i64 8
  %12 = bitcast i8* %name58 to i8**
  %13 = load i8*, i8** %12, align 8, !tbaa !21
  %call59 = tail call i8* @strchr(i8* noundef %13, i32 noundef 46) #7
  %cmp60.not = icmp eq i8* %call59, null
  %incdec.ptr = getelementptr inbounds i8, i8* %call59, i64 1
  %name52.0 = select i1 %cmp60.not, i8* %13, i8* %incdec.ptr
  %call65 = tail call i8* @CRYPTO_strdup(i8* noundef %name52.0, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 noundef 119) #8
  %cmd66 = getelementptr inbounds %struct.ssl_conf_cmd_st, %struct.ssl_conf_cmd_st* %11, i64 %j.0171, i32 0
  store i8* %call65, i8** %cmd66, align 8, !tbaa !16
  %value67 = getelementptr inbounds i8, i8* %call55, i64 16
  %14 = bitcast i8* %value67 to i8**
  %15 = load i8*, i8** %14, align 8, !tbaa !19
  %call68 = tail call i8* @CRYPTO_strdup(i8* noundef %15, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 noundef 120) #8
  %arg = getelementptr inbounds %struct.ssl_conf_cmd_st, %struct.ssl_conf_cmd_st* %11, i64 %j.0171, i32 1
  store i8* %call68, i8** %arg, align 8, !tbaa !18
  %16 = load i8*, i8** %cmd66, align 8, !tbaa !16
  %cmp70 = icmp eq i8* %16, null
  %cmp73 = icmp eq i8* %call68, null
  %or.cond = select i1 %cmp70, i1 true, i1 %cmp73
  %inc = add nuw i64 %j.0171, 1
  br i1 %or.cond, label %if.then90, label %for.cond48

for.inc84:                                        ; preds = %for.cond48, %if.end47
  %inc85 = add nuw i64 %i.0173210, 1
  %17 = load i64, i64* @ssl_names_count, align 8, !tbaa !12
  %cmp12 = icmp ult i64 %inc85, %17
  br i1 %cmp12, label %for.inc84.for.body_crit_edge, label %cleanup92, !llvm.loop !23

for.inc84.for.body_crit_edge:                     ; preds = %for.inc84
  %.pre = load %struct.ssl_conf_name_st*, %struct.ssl_conf_name_st** @ssl_names, align 8, !tbaa !4
  %conv15 = trunc i64 %inc85 to i32
  %call16 = tail call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call2, i32 noundef %conv15) #8
  %value = getelementptr inbounds i8, i8* %call16, i64 16
  %18 = bitcast i8* %value to i8**
  %19 = load i8*, i8** %18, align 8, !tbaa !19
  %call17 = tail call %struct.stack_st_CONF_VALUE* @NCONF_get_section(%struct.conf_st* noundef %cnf, i8* noundef %19) #8
  %call18 = tail call fastcc %struct.stack_st* @ossl_check_const_CONF_VALUE_sk_type(%struct.stack_st_CONF_VALUE* noundef %call17) #9
  %call19 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call18) #8
  %cmp20 = icmp slt i32 %call19, 1
  br i1 %cmp20, label %if.then22, label %if.end28

if.then90:                                        ; preds = %if.end36, %if.end28, %for.body51, %if.then22, %if.then, %if.end
  tail call void @ssl_module_free(%struct.conf_imodule_st* noundef %md) #9
  br label %cleanup92

cleanup92:                                        ; preds = %for.inc84, %if.end11, %if.then90
  %rv.0161 = phi i32 [ 0, %if.then90 ], [ 1, %if.end11 ], [ 1, %for.inc84 ]
  ret i32 %rv.0161
}

; Function Attrs: noinline nounwind uwtable
define internal void @ssl_module_free(%struct.conf_imodule_st* nocapture noundef readnone %md) #3 {
entry:
  %0 = load %struct.ssl_conf_name_st*, %struct.ssl_conf_name_st** @ssl_names, align 8, !tbaa !4
  %cmp = icmp eq %struct.ssl_conf_name_st* %0, null
  br i1 %cmp, label %cleanup, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  %1 = bitcast %struct.ssl_conf_name_st* %0 to i8*
  %2 = load i64, i64* @ssl_names_count, align 8, !tbaa !12
  %cmp126.not = icmp eq i64 %2, 0
  br i1 %cmp126.not, label %for.end10, label %for.body

for.body:                                         ; preds = %for.cond.preheader, %for.end.for.body_crit_edge
  %3 = phi %struct.ssl_conf_name_st* [ %.pre, %for.end.for.body_crit_edge ], [ %0, %for.cond.preheader ]
  %i.027 = phi i64 [ %inc9, %for.end.for.body_crit_edge ], [ 0, %for.cond.preheader ]
  %name = getelementptr inbounds %struct.ssl_conf_name_st, %struct.ssl_conf_name_st* %3, i64 %i.027, i32 0
  %4 = load i8*, i8** %name, align 8, !tbaa !8
  tail call void @CRYPTO_free(i8* noundef %4, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 noundef 49) #8
  %cmd_count = getelementptr inbounds %struct.ssl_conf_name_st, %struct.ssl_conf_name_st* %3, i64 %i.027, i32 2
  %5 = load i64, i64* %cmd_count, align 8, !tbaa !11
  %cmp324.not = icmp eq i64 %5, 0
  br i1 %cmp324.not, label %for.end, label %for.body4.lr.ph

for.body4.lr.ph:                                  ; preds = %for.body
  %cmds = getelementptr inbounds %struct.ssl_conf_name_st, %struct.ssl_conf_name_st* %3, i64 %i.027, i32 1
  br label %for.body4

for.body4:                                        ; preds = %for.body4.lr.ph, %for.body4
  %j.025 = phi i64 [ 0, %for.body4.lr.ph ], [ %inc, %for.body4 ]
  %6 = load %struct.ssl_conf_cmd_st*, %struct.ssl_conf_cmd_st** %cmds, align 8, !tbaa !13
  %cmd = getelementptr inbounds %struct.ssl_conf_cmd_st, %struct.ssl_conf_cmd_st* %6, i64 %j.025, i32 0
  %7 = load i8*, i8** %cmd, align 8, !tbaa !16
  tail call void @CRYPTO_free(i8* noundef %7, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 noundef 51) #8
  %8 = load %struct.ssl_conf_cmd_st*, %struct.ssl_conf_cmd_st** %cmds, align 8, !tbaa !13
  %arg = getelementptr inbounds %struct.ssl_conf_cmd_st, %struct.ssl_conf_cmd_st* %8, i64 %j.025, i32 1
  %9 = load i8*, i8** %arg, align 8, !tbaa !18
  tail call void @CRYPTO_free(i8* noundef %9, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 noundef 52) #8
  %inc = add nuw i64 %j.025, 1
  %10 = load i64, i64* %cmd_count, align 8, !tbaa !11
  %cmp3 = icmp ult i64 %inc, %10
  br i1 %cmp3, label %for.body4, label %for.end, !llvm.loop !24

for.end:                                          ; preds = %for.body4, %for.body
  %cmds7 = getelementptr inbounds %struct.ssl_conf_name_st, %struct.ssl_conf_name_st* %3, i64 %i.027, i32 1
  %11 = bitcast %struct.ssl_conf_cmd_st** %cmds7 to i8**
  %12 = load i8*, i8** %11, align 8, !tbaa !13
  tail call void @CRYPTO_free(i8* noundef %12, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 noundef 54) #8
  %inc9 = add nuw i64 %i.027, 1
  %13 = load i64, i64* @ssl_names_count, align 8, !tbaa !12
  %cmp1 = icmp ult i64 %inc9, %13
  br i1 %cmp1, label %for.end.for.body_crit_edge, label %for.end10.loopexit, !llvm.loop !25

for.end.for.body_crit_edge:                       ; preds = %for.end
  %.pre = load %struct.ssl_conf_name_st*, %struct.ssl_conf_name_st** @ssl_names, align 8, !tbaa !4
  br label %for.body

for.end10.loopexit:                               ; preds = %for.end
  %.pre29 = load i8*, i8** bitcast (%struct.ssl_conf_name_st** @ssl_names to i8**), align 8, !tbaa !4
  br label %for.end10

for.end10:                                        ; preds = %for.end10.loopexit, %for.cond.preheader
  %14 = phi i8* [ %.pre29, %for.end10.loopexit ], [ %1, %for.cond.preheader ]
  tail call void @CRYPTO_free(i8* noundef %14, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 noundef 56) #8
  store %struct.ssl_conf_name_st* null, %struct.ssl_conf_name_st** @ssl_names, align 8, !tbaa !4
  store i64 0, i64* @ssl_names_count, align 8, !tbaa !12
  br label %cleanup

cleanup:                                          ; preds = %entry, %for.end10
  ret void
}

declare i8* @CONF_imodule_get_value(%struct.conf_imodule_st* noundef) local_unnamed_addr #4

declare %struct.stack_st_CONF_VALUE* @NCONF_get_section(%struct.conf_st* noundef, i8* noundef) local_unnamed_addr #4

declare i32 @OPENSSL_sk_num(%struct.stack_st* noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_const_CONF_VALUE_sk_type(%struct.stack_st_CONF_VALUE* noundef readnone %sk) unnamed_addr #5 {
entry:
  %0 = bitcast %struct.stack_st_CONF_VALUE* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

declare void @ERR_new() local_unnamed_addr #4

declare void @ERR_set_debug(i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #4

declare void @ERR_set_error(i32 noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #4

declare i8* @CRYPTO_zalloc(i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #4

declare i8* @OPENSSL_sk_value(%struct.stack_st* noundef, i32 noundef) local_unnamed_addr #4

declare i8* @CRYPTO_strdup(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare i8* @strchr(i8* noundef, i32 noundef) local_unnamed_addr #2

declare void @CRYPTO_free(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umax.i64(i64, i64) #6

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nobuiltin nounwind readonly willreturn "no-builtins" }
attributes #8 = { nobuiltin nounwind "no-builtins" }
attributes #9 = { nobuiltin "no-builtins" }

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
!8 = !{!9, !5, i64 0}
!9 = !{!"ssl_conf_name_st", !5, i64 0, !5, i64 8, !10, i64 16}
!10 = !{!"long", !6, i64 0}
!11 = !{!9, !10, i64 16}
!12 = !{!10, !10, i64 0}
!13 = !{!9, !5, i64 8}
!14 = distinct !{!14, !15}
!15 = !{!"llvm.loop.mustprogress"}
!16 = !{!17, !5, i64 0}
!17 = !{!"ssl_conf_cmd_st", !5, i64 0, !5, i64 8}
!18 = !{!17, !5, i64 8}
!19 = !{!20, !5, i64 16}
!20 = !{!"", !5, i64 0, !5, i64 8, !5, i64 16}
!21 = !{!20, !5, i64 8}
!22 = distinct !{!22, !15}
!23 = distinct !{!23, !15}
!24 = distinct !{!24, !15}
!25 = distinct !{!25, !15}
