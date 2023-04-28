; ModuleID = 'crypto/conf/conf_mod.c'
source_filename = "crypto/conf/conf_mod.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stack_st_CONF_MODULE = type opaque
%struct.stack_st_CONF_IMODULE = type opaque
%struct.conf_st = type { %struct.conf_method_st*, i8*, %struct.lhash_st_CONF_VALUE*, i32, i32, i8*, %struct.ossl_lib_ctx_st* }
%struct.conf_method_st = type { i8*, %struct.conf_st* (%struct.conf_method_st*)*, i32 (%struct.conf_st*)*, i32 (%struct.conf_st*)*, i32 (%struct.conf_st*)*, i32 (%struct.conf_st*, %struct.bio_st*, i64*)*, i32 (%struct.conf_st*, %struct.bio_st*)*, i32 (%struct.conf_st*, i8)*, i32 (%struct.conf_st*, i8)*, i32 (%struct.conf_st*, i8*, i64*)* }
%struct.bio_st = type opaque
%struct.lhash_st_CONF_VALUE = type { %union.lh_CONF_VALUE_dummy }
%union.lh_CONF_VALUE_dummy = type { i8* }
%struct.ossl_lib_ctx_st = type opaque
%struct.stack_st_CONF_VALUE = type opaque
%struct.stack_st = type opaque
%struct.conf_module_st = type { %struct.dso_st*, i8*, i32 (%struct.conf_imodule_st*, %struct.conf_st*)*, void (%struct.conf_imodule_st*)*, i32, i8* }
%struct.dso_st = type opaque
%struct.conf_imodule_st = type { %struct.conf_module_st*, i8*, i8*, i64, i8* }
%struct.dso_meth_st = type opaque

@.str = private unnamed_addr constant [13 x i8] c"openssl_conf\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"crypto/conf/conf_mod.c\00", align 1
@__func__.CONF_modules_load = private unnamed_addr constant [18 x i8] c"CONF_modules_load\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"openssl_conf=%s\00", align 1
@supported_modules = internal unnamed_addr global %struct.stack_st_CONF_MODULE* null, align 8
@initialized_modules = internal unnamed_addr global %struct.stack_st_CONF_IMODULE* null, align 8
@.str.4 = private unnamed_addr constant [13 x i8] c"OPENSSL_CONF\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"openssl.cnf\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"%s%s%s\00", align 1
@__func__.CONF_parse_list = private unnamed_addr constant [16 x i8] c"CONF_parse_list\00", align 1
@.str.8 = private unnamed_addr constant [19 x i8] c"config_diagnostics\00", align 1
@load_builtin_modules = internal global i32 0, align 4
@do_load_builtin_modules_ossl_ret_ = internal unnamed_addr global i1 false, align 4
@__func__.module_run = private unnamed_addr constant [11 x i8] c"module_run\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"module=%s\00", align 1
@.str.10 = private unnamed_addr constant [33 x i8] c"module=%s, value=%s retcode=%-8d\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"path\00", align 1
@.str.12 = private unnamed_addr constant [13 x i8] c"OPENSSL_init\00", align 1
@.str.13 = private unnamed_addr constant [15 x i8] c"OPENSSL_finish\00", align 1
@__func__.module_load_dso = private unnamed_addr constant [16 x i8] c"module_load_dso\00", align 1
@.str.14 = private unnamed_addr constant [19 x i8] c"module=%s, path=%s\00", align 1
@__func__.module_init = private unnamed_addr constant [12 x i8] c"module_init\00", align 1
@__func__.module_add = private unnamed_addr constant [11 x i8] c"module_add\00", align 1

; Function Attrs: noinline nounwind uwtable
define i32 @CONF_modules_load(%struct.conf_st* noundef %cnf, i8* noundef %appname, i64 noundef %flags) local_unnamed_addr #0 {
entry:
  %tobool.not = icmp eq %struct.conf_st* %cnf, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call = tail call fastcc i32 @conf_diagnostics(%struct.conf_st* noundef nonnull %cnf) #7
  %tobool1.not = icmp eq i32 %call, 0
  %and = and i64 %flags, -24
  %spec.select = select i1 %tobool1.not, i64 %flags, i64 %and
  %call4 = tail call i32 @ERR_set_mark() #8
  %tobool5.not = icmp eq i8* %appname, null
  br i1 %tobool5.not, label %if.end15, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %call7 = tail call i8* @NCONF_get_string(%struct.conf_st* noundef nonnull %cnf, i8* noundef null, i8* noundef nonnull %appname) #8
  %tobool10.not = icmp eq i8* %call7, null
  br i1 %tobool10.not, label %land.lhs.true, label %if.end19

land.lhs.true:                                    ; preds = %lor.lhs.false
  %and11 = and i64 %spec.select, 32
  %tobool12.not = icmp eq i64 %and11, 0
  br i1 %tobool12.not, label %if.then17, label %if.end15

if.end15:                                         ; preds = %if.end, %land.lhs.true
  %call14 = tail call i8* @NCONF_get_string(%struct.conf_st* noundef nonnull %cnf, i8* noundef null, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0)) #8
  %tobool16.not = icmp eq i8* %call14, null
  br i1 %tobool16.not, label %if.then17, label %if.end19

if.then17:                                        ; preds = %land.lhs.true, %if.end15
  %call18 = tail call i32 @ERR_pop_to_mark() #8
  br label %cleanup

if.end19:                                         ; preds = %lor.lhs.false, %if.end15
  %vsection.181 = phi i8* [ %call14, %if.end15 ], [ %call7, %lor.lhs.false ]
  %call20 = tail call %struct.stack_st_CONF_VALUE* @NCONF_get_section(%struct.conf_st* noundef nonnull %cnf, i8* noundef nonnull %vsection.181) #8
  %cmp = icmp eq %struct.stack_st_CONF_VALUE* %call20, null
  br i1 %cmp, label %if.then21, label %if.end28

if.then21:                                        ; preds = %if.end19
  %and22 = and i64 %spec.select, 4
  %tobool23.not = icmp eq i64 %and22, 0
  br i1 %tobool23.not, label %if.then24, label %if.else

if.then24:                                        ; preds = %if.then21
  %call25 = tail call i32 @ERR_clear_last_mark() #8
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 noundef 125, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.CONF_modules_load, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 14, i32 noundef 124, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i8* noundef nonnull %vsection.181) #8
  br label %cleanup

if.else:                                          ; preds = %if.then21
  %call26 = tail call i32 @ERR_pop_to_mark() #8
  br label %cleanup

if.end28:                                         ; preds = %if.end19
  %call29 = tail call i32 @ERR_pop_to_mark() #8
  %call30 = tail call fastcc %struct.stack_st* @ossl_check_const_CONF_VALUE_sk_type(%struct.stack_st_CONF_VALUE* noundef nonnull %call20) #7
  %call3182 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call30) #8
  %cmp3283 = icmp sgt i32 %call3182, 0
  br i1 %cmp3283, label %for.body.lr.ph, label %cleanup

for.body.lr.ph:                                   ; preds = %if.end28
  %and39 = and i64 %spec.select, 1
  %tobool40.not = icmp eq i64 %and39, 0
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %if.end44
  %i.084 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end44 ]
  %call34 = tail call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call30, i32 noundef %i.084) #8
  %call35 = tail call i32 @ERR_set_mark() #8
  %name = getelementptr inbounds i8, i8* %call34, i64 8
  %0 = bitcast i8* %name to i8**
  %1 = load i8*, i8** %0, align 8, !tbaa !4
  %value = getelementptr inbounds i8, i8* %call34, i64 16
  %2 = bitcast i8* %value to i8**
  %3 = load i8*, i8** %2, align 8, !tbaa !9
  %call36 = tail call fastcc i32 @module_run(%struct.conf_st* noundef nonnull %cnf, i8* noundef %1, i8* noundef %3, i64 noundef %spec.select) #7
  %cmp37 = icmp slt i32 %call36, 1
  %or.cond = select i1 %cmp37, i1 %tobool40.not, i1 false
  br i1 %or.cond, label %if.then41, label %if.end44

if.then41:                                        ; preds = %for.body
  %call42 = tail call i32 @ERR_clear_last_mark() #8
  br label %cleanup

if.end44:                                         ; preds = %for.body
  %call45 = tail call i32 @ERR_pop_to_mark() #8
  %inc = add nuw nsw i32 %i.084, 1
  %call31 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call30) #8
  %cmp32 = icmp slt i32 %inc, %call31
  br i1 %cmp32, label %for.body, label %cleanup, !llvm.loop !10

cleanup:                                          ; preds = %if.end44, %if.end28, %if.then24, %if.else, %entry, %if.then41, %if.then17
  %retval.0 = phi i32 [ %call36, %if.then41 ], [ 1, %if.then17 ], [ 1, %entry ], [ 0, %if.else ], [ 0, %if.then24 ], [ 1, %if.end28 ], [ 1, %if.end44 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @conf_diagnostics(%struct.conf_st* noundef %cnf) unnamed_addr #0 {
entry:
  %call = tail call i64 @_CONF_get_number(%struct.conf_st* noundef %cnf, i8* noundef null, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.8, i64 0, i64 0)) #8
  %cmp = icmp ne i64 %call, 0
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

declare i32 @ERR_set_mark() local_unnamed_addr #1

declare i8* @NCONF_get_string(%struct.conf_st* noundef, i8* noundef, i8* noundef) local_unnamed_addr #1

declare i32 @ERR_pop_to_mark() local_unnamed_addr #1

declare %struct.stack_st_CONF_VALUE* @NCONF_get_section(%struct.conf_st* noundef, i8* noundef) local_unnamed_addr #1

declare i32 @ERR_clear_last_mark() local_unnamed_addr #1

declare void @ERR_new() local_unnamed_addr #1

declare void @ERR_set_debug(i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #1

declare void @ERR_set_error(i32 noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #1

declare i32 @OPENSSL_sk_num(%struct.stack_st* noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_const_CONF_VALUE_sk_type(%struct.stack_st_CONF_VALUE* noundef readnone %sk) unnamed_addr #2 {
entry:
  %0 = bitcast %struct.stack_st_CONF_VALUE* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

declare i8* @OPENSSL_sk_value(%struct.stack_st* noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @module_run(%struct.conf_st* noundef %cnf, i8* noundef %name, i8* noundef %value, i64 noundef %flags) unnamed_addr #0 {
entry:
  %call = tail call i32 @CRYPTO_THREAD_run_once(i32* noundef nonnull @load_builtin_modules, void ()* noundef nonnull @do_load_builtin_modules_ossl_) #8
  %tobool = icmp ne i32 %call, 0
  %.b = load i1, i1* @do_load_builtin_modules_ossl_ret_, align 4
  %or.cond = select i1 %tobool, i1 %.b, i1 false
  br i1 %or.cond, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call fastcc %struct.conf_module_st* @module_find(i8* noundef %name) #7
  %tobool3.not = icmp eq %struct.conf_module_st* %call2, null
  br i1 %tobool3.not, label %land.lhs.true, label %if.end14

land.lhs.true:                                    ; preds = %if.end
  %and = and i64 %flags, 8
  %tobool4.not = icmp eq i64 %and, 0
  br i1 %tobool4.not, label %if.end7, label %if.then9

if.end7:                                          ; preds = %land.lhs.true
  %call6 = tail call fastcc %struct.conf_module_st* @module_load_dso(%struct.conf_st* noundef %cnf, i8* noundef %name, i8* noundef %value) #7
  %tobool8.not = icmp eq %struct.conf_module_st* %call6, null
  br i1 %tobool8.not, label %if.then9, label %if.end14

if.then9:                                         ; preds = %land.lhs.true, %if.end7
  %and10 = and i64 %flags, 4
  %tobool11.not = icmp eq i64 %and10, 0
  br i1 %tobool11.not, label %if.then12, label %cleanup

if.then12:                                        ; preds = %if.then9
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 noundef 233, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @__func__.module_run, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 14, i32 noundef 113, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0), i8* noundef %name) #8
  br label %cleanup

if.end14:                                         ; preds = %if.end, %if.end7
  %md.044 = phi %struct.conf_module_st* [ %call6, %if.end7 ], [ %call2, %if.end ]
  %call15 = tail call fastcc i32 @module_init(%struct.conf_module_st* noundef nonnull %md.044, i8* noundef %name, i8* noundef %value, %struct.conf_st* noundef %cnf) #7
  %cmp = icmp slt i32 %call15, 1
  %and17 = and i64 %flags, 4
  %tobool18.not = icmp eq i64 %and17, 0
  %or.cond38 = and i1 %tobool18.not, %cmp
  br i1 %or.cond38, label %if.then19, label %cleanup

if.then19:                                        ; preds = %if.end14
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 noundef 243, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @__func__.module_run, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 14, i32 noundef 109, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.10, i64 0, i64 0), i8* noundef %name, i8* noundef %value, i32 noundef %call15) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %if.then19, %if.then9, %if.then12, %entry
  %retval.0 = phi i32 [ -1, %entry ], [ -1, %if.then12 ], [ -1, %if.then9 ], [ %call15, %if.then19 ], [ %call15, %if.end14 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @CONF_modules_load_file_ex(%struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef %filename, i8* noundef %appname, i64 noundef %flags) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq i8* %filename, null
  br i1 %cmp, label %if.then, label %if.end3

if.then:                                          ; preds = %entry
  %call = tail call i8* @CONF_get1_default_config_file() #7
  %cmp1 = icmp eq i8* %call, null
  br i1 %cmp1, label %if.then21, label %if.end3

if.end3:                                          ; preds = %entry, %if.then
  %file.0 = phi i8* [ %call, %if.then ], [ %filename, %entry ]
  %call4 = tail call i32 @ERR_set_mark() #8
  %call5 = tail call %struct.conf_st* @NCONF_new_ex(%struct.ossl_lib_ctx_st* noundef %libctx, %struct.conf_method_st* noundef null) #8
  %cmp6 = icmp eq %struct.conf_st* %call5, null
  br i1 %cmp6, label %err, label %if.end8

if.end8:                                          ; preds = %if.end3
  %call9 = tail call i32 @NCONF_load(%struct.conf_st* noundef nonnull %call5, i8* noundef nonnull %file.0, i64* noundef null) #8
  %cmp10 = icmp slt i32 %call9, 1
  br i1 %cmp10, label %if.then11, label %if.end17

if.then11:                                        ; preds = %if.end8
  %and = and i64 %flags, 16
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %err, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.then11
  %call12 = tail call i64 @ERR_peek_last_error() #8
  %call13 = tail call fastcc i32 @ERR_GET_REASON(i64 noundef %call12) #7
  %cmp14 = icmp eq i32 %call13, 114
  %spec.select = zext i1 %cmp14 to i32
  br label %err

if.end17:                                         ; preds = %if.end8
  %call18 = tail call i32 @CONF_modules_load(%struct.conf_st* noundef nonnull %call5, i8* noundef %appname, i64 noundef %flags) #7
  %call19 = tail call fastcc i32 @conf_diagnostics(%struct.conf_st* noundef nonnull %call5) #7
  br label %err

err:                                              ; preds = %land.lhs.true, %if.then11, %if.end3, %if.end17
  %ret.0 = phi i32 [ 0, %if.end3 ], [ 0, %if.then11 ], [ %call18, %if.end17 ], [ %spec.select, %land.lhs.true ]
  %diagnostics.0 = phi i32 [ 0, %if.end3 ], [ 0, %if.then11 ], [ %call19, %if.end17 ], [ 0, %land.lhs.true ]
  br i1 %cmp, label %if.then21, label %if.end22

if.then21:                                        ; preds = %if.then, %err
  %diagnostics.061 = phi i32 [ %diagnostics.0, %err ], [ 0, %if.then ]
  %ret.059 = phi i32 [ %ret.0, %err ], [ 0, %if.then ]
  %conf.057 = phi %struct.conf_st* [ %call5, %err ], [ null, %if.then ]
  %file.155 = phi i8* [ %file.0, %err ], [ null, %if.then ]
  tail call void @CRYPTO_free(i8* noundef %file.155, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 noundef 186) #8
  br label %if.end22

if.end22:                                         ; preds = %if.then21, %err
  %diagnostics.060 = phi i32 [ %diagnostics.061, %if.then21 ], [ %diagnostics.0, %err ]
  %ret.058 = phi i32 [ %ret.059, %if.then21 ], [ %ret.0, %err ]
  %conf.056 = phi %struct.conf_st* [ %conf.057, %if.then21 ], [ %call5, %err ]
  tail call void @NCONF_free(%struct.conf_st* noundef %conf.056) #8
  %and23 = and i64 %flags, 2
  %cmp24 = icmp eq i64 %and23, 0
  %tobool26 = icmp ne i32 %diagnostics.060, 0
  %or.cond = select i1 %cmp24, i1 true, i1 %tobool26
  %spec.select50 = select i1 %or.cond, i32 %ret.058, i32 1
  %cmp29 = icmp sgt i32 %spec.select50, 0
  br i1 %cmp29, label %if.then30, label %if.else32

if.then30:                                        ; preds = %if.end22
  %call31 = tail call i32 @ERR_pop_to_mark() #8
  br label %if.end34

if.else32:                                        ; preds = %if.end22
  %call33 = tail call i32 @ERR_clear_last_mark() #8
  br label %if.end34

if.end34:                                         ; preds = %if.else32, %if.then30
  ret i32 %spec.select50
}

; Function Attrs: noinline nounwind uwtable
define i8* @CONF_get1_default_config_file() local_unnamed_addr #0 {
entry:
  %call = tail call i8* @ossl_safe_getenv(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0)) #8
  %cmp.not = icmp eq i8* %call, null
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call1 = tail call i8* @CRYPTO_strdup(i8* noundef nonnull %call, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 noundef 550) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call i8* @X509_get_default_cert_area() #8
  %call3 = tail call i64 @strlen(i8* noundef %call2) #9
  %call4 = tail call i64 @strlen(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0)) #9
  %call5 = tail call i64 @strlen(i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0)) #9
  %add = add i64 %call3, 1
  %add6 = add i64 %add, %call4
  %add7 = add i64 %add6, %call5
  %call8 = tail call i8* @CRYPTO_malloc(i64 noundef %add7, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 noundef 557) #8
  %cmp9 = icmp eq i8* %call8, null
  br i1 %cmp9, label %cleanup, label %if.end11

if.end11:                                         ; preds = %if.end
  %call12 = tail call i32 (i8*, i64, i8*, ...) @BIO_snprintf(i8* noundef nonnull %call8, i64 noundef %add7, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), i8* noundef %call2, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0), i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0)) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.end11, %if.then
  %retval.0 = phi i8* [ %call1, %if.then ], [ %call8, %if.end11 ], [ null, %if.end ]
  ret i8* %retval.0
}

declare %struct.conf_st* @NCONF_new_ex(%struct.ossl_lib_ctx_st* noundef, %struct.conf_method_st* noundef) local_unnamed_addr #1

declare i32 @NCONF_load(%struct.conf_st* noundef, i8* noundef, i64* noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc i32 @ERR_GET_REASON(i64 noundef %errcode) unnamed_addr #2 {
entry:
  %and = and i64 %errcode, 2147483648
  %cmp.not = icmp eq i64 %and, 0
  %0 = trunc i64 %errcode to i32
  %retval.0.v = select i1 %cmp.not, i32 8388607, i32 2147483647
  %retval.0 = and i32 %retval.0.v, %0
  ret i32 %retval.0
}

declare i64 @ERR_peek_last_error() local_unnamed_addr #1

declare void @CRYPTO_free(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

declare void @NCONF_free(%struct.conf_st* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define i32 @CONF_modules_load_file(i8* noundef %filename, i8* noundef %appname, i64 noundef %flags) local_unnamed_addr #0 {
entry:
  %call = tail call i32 @CONF_modules_load_file_ex(%struct.ossl_lib_ctx_st* noundef null, i8* noundef %filename, i8* noundef %appname, i64 noundef %flags) #7
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define void @CONF_modules_unload(i32 noundef %all) local_unnamed_addr #0 {
entry:
  tail call void @CONF_modules_finish() #7
  %0 = load %struct.stack_st_CONF_MODULE*, %struct.stack_st_CONF_MODULE** @supported_modules, align 8, !tbaa !12
  %call = tail call fastcc i32 @sk_CONF_MODULE_num(%struct.stack_st_CONF_MODULE* noundef %0) #7
  %cmp18 = icmp sgt i32 %call, 0
  br i1 %cmp18, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %tobool3 = icmp ne i32 %all, 0
  %tobool3.old.not = icmp eq i32 %all, 0
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %i.019.in = phi i32 [ %call, %for.body.lr.ph ], [ %i.019, %for.inc ]
  %i.019 = add nsw i32 %i.019.in, -1
  %1 = load %struct.stack_st_CONF_MODULE*, %struct.stack_st_CONF_MODULE** @supported_modules, align 8, !tbaa !12
  %call1 = tail call fastcc %struct.conf_module_st* @sk_CONF_MODULE_value(%struct.stack_st_CONF_MODULE* noundef %1, i32 noundef %i.019) #7
  %links = getelementptr inbounds %struct.conf_module_st, %struct.conf_module_st* %call1, i64 0, i32 4
  %2 = load i32, i32* %links, align 8, !tbaa !13
  %cmp2 = icmp sgt i32 %2, 0
  br i1 %cmp2, label %land.lhs.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %dso = getelementptr inbounds %struct.conf_module_st, %struct.conf_module_st* %call1, i64 0, i32 0
  %3 = load %struct.dso_st*, %struct.dso_st** %dso, align 8, !tbaa !16
  %tobool = icmp ne %struct.dso_st* %3, null
  %or.cond = or i1 %tobool3, %tobool
  br i1 %or.cond, label %if.end, label %for.inc

land.lhs.true:                                    ; preds = %for.body
  br i1 %tobool3.old.not, label %for.inc, label %if.end

if.end:                                           ; preds = %land.lhs.true, %lor.lhs.false
  %4 = load %struct.stack_st_CONF_MODULE*, %struct.stack_st_CONF_MODULE** @supported_modules, align 8, !tbaa !12
  tail call fastcc void @sk_CONF_MODULE_delete(%struct.stack_st_CONF_MODULE* noundef %4, i32 noundef %i.019) #7
  tail call fastcc void @module_free(%struct.conf_module_st* noundef nonnull %call1) #7
  br label %for.inc

for.inc:                                          ; preds = %land.lhs.true, %lor.lhs.false, %if.end
  %cmp = icmp ugt i32 %i.019.in, 1
  br i1 %cmp, label %for.body, label %for.end, !llvm.loop !17

for.end:                                          ; preds = %for.inc, %entry
  %5 = load %struct.stack_st_CONF_MODULE*, %struct.stack_st_CONF_MODULE** @supported_modules, align 8, !tbaa !12
  %call5 = tail call fastcc i32 @sk_CONF_MODULE_num(%struct.stack_st_CONF_MODULE* noundef %5) #7
  %cmp6 = icmp eq i32 %call5, 0
  br i1 %cmp6, label %if.then7, label %if.end8

if.then7:                                         ; preds = %for.end
  %6 = load %struct.stack_st_CONF_MODULE*, %struct.stack_st_CONF_MODULE** @supported_modules, align 8, !tbaa !12
  tail call fastcc void @sk_CONF_MODULE_free(%struct.stack_st_CONF_MODULE* noundef %6) #7
  store %struct.stack_st_CONF_MODULE* null, %struct.stack_st_CONF_MODULE** @supported_modules, align 8, !tbaa !12
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %for.end
  ret void
}

; Function Attrs: noinline nounwind uwtable
define void @CONF_modules_finish() local_unnamed_addr #0 {
entry:
  %0 = load %struct.stack_st_CONF_IMODULE*, %struct.stack_st_CONF_IMODULE** @initialized_modules, align 8, !tbaa !12
  %call3 = tail call fastcc i32 @sk_CONF_IMODULE_num(%struct.stack_st_CONF_IMODULE* noundef %0) #7
  %cmp4 = icmp sgt i32 %call3, 0
  br i1 %cmp4, label %while.body, label %while.end

while.body:                                       ; preds = %entry, %while.body
  %1 = load %struct.stack_st_CONF_IMODULE*, %struct.stack_st_CONF_IMODULE** @initialized_modules, align 8, !tbaa !12
  %call1 = tail call fastcc %struct.conf_imodule_st* @sk_CONF_IMODULE_pop(%struct.stack_st_CONF_IMODULE* noundef %1) #7
  tail call fastcc void @module_finish(%struct.conf_imodule_st* noundef %call1) #7
  %2 = load %struct.stack_st_CONF_IMODULE*, %struct.stack_st_CONF_IMODULE** @initialized_modules, align 8, !tbaa !12
  %call = tail call fastcc i32 @sk_CONF_IMODULE_num(%struct.stack_st_CONF_IMODULE* noundef %2) #7
  %cmp = icmp sgt i32 %call, 0
  br i1 %cmp, label %while.body, label %while.end, !llvm.loop !18

while.end:                                        ; preds = %while.body, %entry
  %3 = load %struct.stack_st_CONF_IMODULE*, %struct.stack_st_CONF_IMODULE** @initialized_modules, align 8, !tbaa !12
  tail call fastcc void @sk_CONF_IMODULE_free(%struct.stack_st_CONF_IMODULE* noundef %3) #7
  store %struct.stack_st_CONF_IMODULE* null, %struct.stack_st_CONF_IMODULE** @initialized_modules, align 8, !tbaa !12
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @sk_CONF_MODULE_num(%struct.stack_st_CONF_MODULE* noundef %sk) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.stack_st_CONF_MODULE* %sk to %struct.stack_st*
  %call = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %0) #8
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.conf_module_st* @sk_CONF_MODULE_value(%struct.stack_st_CONF_MODULE* noundef %sk, i32 noundef %idx) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.stack_st_CONF_MODULE* %sk to %struct.stack_st*
  %call = tail call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %0, i32 noundef %idx) #8
  %1 = bitcast i8* %call to %struct.conf_module_st*
  ret %struct.conf_module_st* %1
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @sk_CONF_MODULE_delete(%struct.stack_st_CONF_MODULE* noundef %sk, i32 noundef %i) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.stack_st_CONF_MODULE* %sk to %struct.stack_st*
  %call = tail call i8* @OPENSSL_sk_delete(%struct.stack_st* noundef %0, i32 noundef %i) #8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @module_free(%struct.conf_module_st* noundef %md) unnamed_addr #0 {
entry:
  %dso = getelementptr inbounds %struct.conf_module_st, %struct.conf_module_st* %md, i64 0, i32 0
  %0 = load %struct.dso_st*, %struct.dso_st** %dso, align 8, !tbaa !16
  %call = tail call i32 @DSO_free(%struct.dso_st* noundef %0) #8
  %name = getelementptr inbounds %struct.conf_module_st, %struct.conf_module_st* %md, i64 0, i32 1
  %1 = load i8*, i8** %name, align 8, !tbaa !19
  tail call void @CRYPTO_free(i8* noundef %1, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 noundef 447) #8
  %2 = bitcast %struct.conf_module_st* %md to i8*
  tail call void @CRYPTO_free(i8* noundef %2, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 noundef 448) #8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @sk_CONF_MODULE_free(%struct.stack_st_CONF_MODULE* noundef %sk) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.stack_st_CONF_MODULE* %sk to %struct.stack_st*
  tail call void @OPENSSL_sk_free(%struct.stack_st* noundef %0) #8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @sk_CONF_IMODULE_num(%struct.stack_st_CONF_IMODULE* noundef %sk) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.stack_st_CONF_IMODULE* %sk to %struct.stack_st*
  %call = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %0) #8
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.conf_imodule_st* @sk_CONF_IMODULE_pop(%struct.stack_st_CONF_IMODULE* noundef %sk) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.stack_st_CONF_IMODULE* %sk to %struct.stack_st*
  %call = tail call i8* @OPENSSL_sk_pop(%struct.stack_st* noundef %0) #8
  %1 = bitcast i8* %call to %struct.conf_imodule_st*
  ret %struct.conf_imodule_st* %1
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @module_finish(%struct.conf_imodule_st* noundef %imod) unnamed_addr #0 {
entry:
  %tobool.not = icmp eq %struct.conf_imodule_st* %imod, null
  br i1 %tobool.not, label %return, label %if.end

if.end:                                           ; preds = %entry
  %pmod = getelementptr inbounds %struct.conf_imodule_st, %struct.conf_imodule_st* %imod, i64 0, i32 0
  %0 = load %struct.conf_module_st*, %struct.conf_module_st** %pmod, align 8, !tbaa !20
  %finish = getelementptr inbounds %struct.conf_module_st, %struct.conf_module_st* %0, i64 0, i32 3
  %1 = load void (%struct.conf_imodule_st*)*, void (%struct.conf_imodule_st*)** %finish, align 8, !tbaa !23
  %tobool1.not = icmp eq void (%struct.conf_imodule_st*)* %1, null
  br i1 %tobool1.not, label %if.end5, label %if.then2

if.then2:                                         ; preds = %if.end
  tail call void %1(%struct.conf_imodule_st* noundef nonnull %imod) #8
  %.pre = load %struct.conf_module_st*, %struct.conf_module_st** %pmod, align 8, !tbaa !20
  br label %if.end5

if.end5:                                          ; preds = %if.then2, %if.end
  %2 = phi %struct.conf_module_st* [ %.pre, %if.then2 ], [ %0, %if.end ]
  %links = getelementptr inbounds %struct.conf_module_st, %struct.conf_module_st* %2, i64 0, i32 4
  %3 = load i32, i32* %links, align 8, !tbaa !13
  %dec = add nsw i32 %3, -1
  store i32 %dec, i32* %links, align 8, !tbaa !13
  %name = getelementptr inbounds %struct.conf_imodule_st, %struct.conf_imodule_st* %imod, i64 0, i32 1
  %4 = load i8*, i8** %name, align 8, !tbaa !24
  tail call void @CRYPTO_free(i8* noundef %4, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 noundef 473) #8
  %value = getelementptr inbounds %struct.conf_imodule_st, %struct.conf_imodule_st* %imod, i64 0, i32 2
  %5 = load i8*, i8** %value, align 8, !tbaa !25
  tail call void @CRYPTO_free(i8* noundef %5, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 noundef 474) #8
  %6 = bitcast %struct.conf_imodule_st* %imod to i8*
  tail call void @CRYPTO_free(i8* noundef nonnull %6, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 noundef 475) #8
  br label %return

return:                                           ; preds = %entry, %if.end5
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @sk_CONF_IMODULE_free(%struct.stack_st_CONF_IMODULE* noundef %sk) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.stack_st_CONF_IMODULE* %sk to %struct.stack_st*
  tail call void @OPENSSL_sk_free(%struct.stack_st* noundef %0) #8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define i32 @CONF_module_add(i8* noundef %name, i32 (%struct.conf_imodule_st*, %struct.conf_st*)* noundef %ifunc, void (%struct.conf_imodule_st*)* noundef %ffunc) local_unnamed_addr #0 {
entry:
  %call = tail call fastcc %struct.conf_module_st* @module_add(%struct.dso_st* noundef null, i8* noundef %name, i32 (%struct.conf_imodule_st*, %struct.conf_st*)* noundef %ifunc, void (%struct.conf_imodule_st*)* noundef %ffunc) #7
  %tobool.not = icmp ne %struct.conf_module_st* %call, null
  %. = zext i1 %tobool.not to i32
  ret i32 %.
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.conf_module_st* @module_add(%struct.dso_st* noundef %dso, i8* noundef %name, i32 (%struct.conf_imodule_st*, %struct.conf_st*)* noundef %ifunc, void (%struct.conf_imodule_st*)* noundef %ffunc) unnamed_addr #0 {
entry:
  %0 = load %struct.stack_st_CONF_MODULE*, %struct.stack_st_CONF_MODULE** @supported_modules, align 8, !tbaa !12
  %cmp = icmp eq %struct.stack_st_CONF_MODULE* %0, null
  br i1 %cmp, label %if.end, label %if.end3

if.end:                                           ; preds = %entry
  %call = tail call fastcc %struct.stack_st_CONF_MODULE* @sk_CONF_MODULE_new_null() #7
  store %struct.stack_st_CONF_MODULE* %call, %struct.stack_st_CONF_MODULE** @supported_modules, align 8, !tbaa !12
  %cmp1 = icmp eq %struct.stack_st_CONF_MODULE* %call, null
  br i1 %cmp1, label %cleanup, label %if.end3

if.end3:                                          ; preds = %entry, %if.end
  %call4 = tail call i8* @CRYPTO_zalloc(i64 noundef 48, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 noundef 301) #8
  %1 = bitcast i8* %call4 to %struct.conf_module_st*
  %cmp5 = icmp eq i8* %call4, null
  br i1 %cmp5, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.end3
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 noundef 302, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @__func__.module_add, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 14, i32 noundef 786688, i8* noundef null) #8
  br label %cleanup

if.end7:                                          ; preds = %if.end3
  %dso8 = bitcast i8* %call4 to %struct.dso_st**
  store %struct.dso_st* %dso, %struct.dso_st** %dso8, align 8, !tbaa !16
  %call9 = tail call i8* @CRYPTO_strdup(i8* noundef %name, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 noundef 307) #8
  %name10 = getelementptr inbounds i8, i8* %call4, i64 8
  %2 = bitcast i8* %name10 to i8**
  store i8* %call9, i8** %2, align 8, !tbaa !19
  %init = getelementptr inbounds i8, i8* %call4, i64 16
  %3 = bitcast i8* %init to i32 (%struct.conf_imodule_st*, %struct.conf_st*)**
  store i32 (%struct.conf_imodule_st*, %struct.conf_st*)* %ifunc, i32 (%struct.conf_imodule_st*, %struct.conf_st*)** %3, align 8, !tbaa !26
  %finish = getelementptr inbounds i8, i8* %call4, i64 24
  %4 = bitcast i8* %finish to void (%struct.conf_imodule_st*)**
  store void (%struct.conf_imodule_st*)* %ffunc, void (%struct.conf_imodule_st*)** %4, align 8, !tbaa !23
  %cmp12 = icmp eq i8* %call9, null
  br i1 %cmp12, label %if.then13, label %if.end14

if.then13:                                        ; preds = %if.end7
  tail call void @CRYPTO_free(i8* noundef nonnull %call4, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 noundef 311) #8
  br label %cleanup

if.end14:                                         ; preds = %if.end7
  %5 = load %struct.stack_st_CONF_MODULE*, %struct.stack_st_CONF_MODULE** @supported_modules, align 8, !tbaa !12
  %call15 = tail call fastcc i32 @sk_CONF_MODULE_push(%struct.stack_st_CONF_MODULE* noundef %5, %struct.conf_module_st* noundef nonnull %1) #7
  %tobool.not = icmp eq i32 %call15, 0
  br i1 %tobool.not, label %if.then16, label %cleanup

if.then16:                                        ; preds = %if.end14
  %6 = load i8*, i8** %2, align 8, !tbaa !19
  tail call void @CRYPTO_free(i8* noundef %6, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 noundef 316) #8
  tail call void @CRYPTO_free(i8* noundef nonnull %call4, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 noundef 317) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %if.end, %if.then16, %if.then13, %if.then6
  %retval.0 = phi %struct.conf_module_st* [ null, %if.then6 ], [ null, %if.then13 ], [ null, %if.then16 ], [ null, %if.end ], [ %1, %if.end14 ]
  ret %struct.conf_module_st* %retval.0
}

; Function Attrs: noinline nounwind uwtable
define void @ossl_config_modules_free() local_unnamed_addr #0 {
entry:
  tail call void @CONF_modules_finish() #7
  tail call void @CONF_modules_unload(i32 noundef 1) #7
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define i8* @CONF_imodule_get_name(%struct.conf_imodule_st* nocapture noundef readonly %md) local_unnamed_addr #3 {
entry:
  %name = getelementptr inbounds %struct.conf_imodule_st, %struct.conf_imodule_st* %md, i64 0, i32 1
  %0 = load i8*, i8** %name, align 8, !tbaa !24
  ret i8* %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define i8* @CONF_imodule_get_value(%struct.conf_imodule_st* nocapture noundef readonly %md) local_unnamed_addr #3 {
entry:
  %value = getelementptr inbounds %struct.conf_imodule_st, %struct.conf_imodule_st* %md, i64 0, i32 2
  %0 = load i8*, i8** %value, align 8, !tbaa !25
  ret i8* %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define i8* @CONF_imodule_get_usr_data(%struct.conf_imodule_st* nocapture noundef readonly %md) local_unnamed_addr #3 {
entry:
  %usr_data = getelementptr inbounds %struct.conf_imodule_st, %struct.conf_imodule_st* %md, i64 0, i32 4
  %0 = load i8*, i8** %usr_data, align 8, !tbaa !27
  ret i8* %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define void @CONF_imodule_set_usr_data(%struct.conf_imodule_st* nocapture noundef writeonly %md, i8* noundef %usr_data) local_unnamed_addr #4 {
entry:
  %usr_data1 = getelementptr inbounds %struct.conf_imodule_st, %struct.conf_imodule_st* %md, i64 0, i32 4
  store i8* %usr_data, i8** %usr_data1, align 8, !tbaa !27
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define %struct.conf_module_st* @CONF_imodule_get_module(%struct.conf_imodule_st* nocapture noundef readonly %md) local_unnamed_addr #3 {
entry:
  %pmod = getelementptr inbounds %struct.conf_imodule_st, %struct.conf_imodule_st* %md, i64 0, i32 0
  %0 = load %struct.conf_module_st*, %struct.conf_module_st** %pmod, align 8, !tbaa !20
  ret %struct.conf_module_st* %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define i64 @CONF_imodule_get_flags(%struct.conf_imodule_st* nocapture noundef readonly %md) local_unnamed_addr #3 {
entry:
  %flags = getelementptr inbounds %struct.conf_imodule_st, %struct.conf_imodule_st* %md, i64 0, i32 3
  %0 = load i64, i64* %flags, align 8, !tbaa !28
  ret i64 %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define void @CONF_imodule_set_flags(%struct.conf_imodule_st* nocapture noundef writeonly %md, i64 noundef %flags) local_unnamed_addr #4 {
entry:
  %flags1 = getelementptr inbounds %struct.conf_imodule_st, %struct.conf_imodule_st* %md, i64 0, i32 3
  store i64 %flags, i64* %flags1, align 8, !tbaa !28
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define i8* @CONF_module_get_usr_data(%struct.conf_module_st* nocapture noundef readonly %pmod) local_unnamed_addr #3 {
entry:
  %usr_data = getelementptr inbounds %struct.conf_module_st, %struct.conf_module_st* %pmod, i64 0, i32 5
  %0 = load i8*, i8** %usr_data, align 8, !tbaa !29
  ret i8* %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define void @CONF_module_set_usr_data(%struct.conf_module_st* nocapture noundef writeonly %pmod, i8* noundef %usr_data) local_unnamed_addr #4 {
entry:
  %usr_data1 = getelementptr inbounds %struct.conf_module_st, %struct.conf_module_st* %pmod, i64 0, i32 5
  store i8* %usr_data, i8** %usr_data1, align 8, !tbaa !29
  ret void
}

declare i8* @ossl_safe_getenv(i8* noundef) local_unnamed_addr #1

declare i8* @CRYPTO_strdup(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

declare i8* @X509_get_default_cert_area() local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare i64 @strlen(i8* noundef) local_unnamed_addr #5

declare i8* @CRYPTO_malloc(i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

declare i32 @BIO_snprintf(i8* noundef, i64 noundef, i8* noundef, ...) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define i32 @CONF_parse_list(i8* noundef %list_, i32 noundef %sep, i32 noundef %nospc, i32 (i8*, i32, i8*)* nocapture noundef readonly %list_cb, i8* noundef %arg) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq i8* %list_, null
  br i1 %cmp, label %if.then, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  %tobool.not = icmp eq i32 %nospc, 0
  br label %for.cond

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 noundef 581, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.CONF_parse_list, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 14, i32 noundef 115, i8* noundef null) #8
  br label %cleanup

for.cond:                                         ; preds = %if.end42, %for.cond.preheader
  %lstart.0 = phi i8* [ %add.ptr47, %if.end42 ], [ %list_, %for.cond.preheader ]
  br i1 %tobool.not, label %if.end6, label %while.cond.preheader

while.cond.preheader:                             ; preds = %for.cond
  %0 = load i8, i8* %lstart.0, align 1, !tbaa !30
  %tobool2.not75 = icmp eq i8 %0, 0
  br i1 %tobool2.not75, label %if.end6, label %land.rhs.lr.ph

land.rhs.lr.ph:                                   ; preds = %while.cond.preheader
  %call = tail call i16** @__ctype_b_loc() #10
  %1 = load i16*, i16** %call, align 8, !tbaa !12
  br label %land.rhs

land.rhs:                                         ; preds = %land.rhs.lr.ph, %while.body
  %2 = phi i8 [ %0, %land.rhs.lr.ph ], [ %6, %while.body ]
  %lstart.176 = phi i8* [ %lstart.0, %land.rhs.lr.ph ], [ %incdec.ptr, %while.body ]
  %3 = zext i8 %2 to i64
  %arrayidx = getelementptr inbounds i16, i16* %1, i64 %3
  %4 = load i16, i16* %arrayidx, align 2, !tbaa !31
  %5 = and i16 %4, 8192
  %tobool5.not = icmp eq i16 %5, 0
  br i1 %tobool5.not, label %if.end6, label %while.body

while.body:                                       ; preds = %land.rhs
  %incdec.ptr = getelementptr inbounds i8, i8* %lstart.176, i64 1
  %6 = load i8, i8* %incdec.ptr, align 1, !tbaa !30
  %tobool2.not = icmp eq i8 %6, 0
  br i1 %tobool2.not, label %if.end6, label %land.rhs, !llvm.loop !33

if.end6:                                          ; preds = %while.body, %land.rhs, %while.cond.preheader, %for.cond
  %lstart.2 = phi i8* [ %lstart.0, %for.cond ], [ %lstart.0, %while.cond.preheader ], [ %incdec.ptr, %while.body ], [ %lstart.176, %land.rhs ]
  %call7 = tail call i8* @strchr(i8* noundef nonnull %lstart.2, i32 noundef %sep) #9
  %cmp8 = icmp eq i8* %call7, %lstart.2
  br i1 %cmp8, label %if.then13, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end6
  %7 = load i8, i8* %lstart.2, align 1, !tbaa !30
  %cmp11 = icmp eq i8 %7, 0
  br i1 %cmp11, label %if.then13, label %if.else

if.then13:                                        ; preds = %lor.lhs.false, %if.end6
  %call14 = tail call i32 %list_cb(i8* noundef null, i32 noundef 0, i8* noundef %arg) #8
  br label %if.end38

if.else:                                          ; preds = %lor.lhs.false
  %tobool15.not = icmp eq i8* %call7, null
  br i1 %tobool15.not, label %if.else17, label %if.end21

if.else17:                                        ; preds = %if.else
  %call18 = tail call i64 @strlen(i8* noundef nonnull %lstart.2) #9
  %add.ptr19 = getelementptr inbounds i8, i8* %lstart.2, i64 %call18
  br label %if.end21

if.end21:                                         ; preds = %if.else, %if.else17
  %call7.pn = phi i8* [ %add.ptr19, %if.else17 ], [ %call7, %if.else ]
  %tmpend.0 = getelementptr inbounds i8, i8* %call7.pn, i64 -1
  br i1 %tobool.not, label %if.end35, label %while.cond24.preheader

while.cond24.preheader:                           ; preds = %if.end21
  %call25 = tail call i16** @__ctype_b_loc() #10
  %8 = load i16*, i16** %call25, align 8, !tbaa !12
  br label %while.cond24

while.cond24:                                     ; preds = %while.cond24, %while.cond24.preheader
  %tmpend.1 = phi i8* [ %incdec.ptr33, %while.cond24 ], [ %tmpend.0, %while.cond24.preheader ]
  %9 = load i8, i8* %tmpend.1, align 1, !tbaa !30
  %10 = zext i8 %9 to i64
  %arrayidx28 = getelementptr inbounds i16, i16* %8, i64 %10
  %11 = load i16, i16* %arrayidx28, align 2, !tbaa !31
  %12 = and i16 %11, 8192
  %tobool31.not = icmp eq i16 %12, 0
  %incdec.ptr33 = getelementptr inbounds i8, i8* %tmpend.1, i64 -1
  br i1 %tobool31.not, label %if.end35, label %while.cond24, !llvm.loop !34

if.end35:                                         ; preds = %while.cond24, %if.end21
  %tmpend.2 = phi i8* [ %tmpend.0, %if.end21 ], [ %tmpend.1, %while.cond24 ]
  %sub.ptr.lhs.cast = ptrtoint i8* %tmpend.2 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %lstart.2 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %13 = trunc i64 %sub.ptr.sub to i32
  %conv36 = add i32 %13, 1
  %call37 = tail call i32 %list_cb(i8* noundef nonnull %lstart.2, i32 noundef %conv36, i8* noundef %arg) #8
  br label %if.end38

if.end38:                                         ; preds = %if.end35, %if.then13
  %ret.0 = phi i32 [ %call14, %if.then13 ], [ %call37, %if.end35 ]
  %cmp39 = icmp slt i32 %ret.0, 1
  br i1 %cmp39, label %cleanup, label %if.end42

if.end42:                                         ; preds = %if.end38
  %cmp43 = icmp eq i8* %call7, null
  %add.ptr47 = getelementptr inbounds i8, i8* %call7, i64 1
  br i1 %cmp43, label %cleanup, label %for.cond

cleanup:                                          ; preds = %if.end42, %if.end38, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 1, %if.end42 ], [ %ret.0, %if.end38 ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
declare i16** @__ctype_b_loc() local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare i8* @strchr(i8* noundef, i32 noundef) local_unnamed_addr #5

declare i64 @_CONF_get_number(%struct.conf_st* noundef, i8* noundef, i8* noundef) local_unnamed_addr #1

declare i32 @CRYPTO_THREAD_run_once(i32* noundef, void ()* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal void @do_load_builtin_modules_ossl_() #0 {
entry:
  tail call fastcc void @do_load_builtin_modules() #7
  store i1 true, i1* @do_load_builtin_modules_ossl_ret_, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.conf_module_st* @module_find(i8* noundef %name) unnamed_addr #0 {
entry:
  %call = tail call i8* @strrchr(i8* noundef %name, i32 noundef 46) #9
  %tobool.not = icmp eq i8* %call, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %sub.ptr.lhs.cast = ptrtoint i8* %call to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %name to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  br label %if.end

if.else:                                          ; preds = %entry
  %call1 = tail call i64 @strlen(i8* noundef %name) #9
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %nchar.0.in = phi i64 [ %sub.ptr.sub, %if.then ], [ %call1, %if.else ]
  %0 = load %struct.stack_st_CONF_MODULE*, %struct.stack_st_CONF_MODULE** @supported_modules, align 8, !tbaa !12
  %call327 = tail call fastcc i32 @sk_CONF_MODULE_num(%struct.stack_st_CONF_MODULE* noundef %0) #7
  %cmp28 = icmp sgt i32 %call327, 0
  br i1 %cmp28, label %for.body.lr.ph, label %cleanup

for.body.lr.ph:                                   ; preds = %if.end
  %sext = shl i64 %nchar.0.in, 32
  %conv7 = ashr exact i64 %sext, 32
  br label %for.body

for.cond:                                         ; preds = %for.body
  %1 = load %struct.stack_st_CONF_MODULE*, %struct.stack_st_CONF_MODULE** @supported_modules, align 8, !tbaa !12
  %call3 = tail call fastcc i32 @sk_CONF_MODULE_num(%struct.stack_st_CONF_MODULE* noundef %1) #7
  %cmp = icmp slt i32 %inc, %call3
  br i1 %cmp, label %for.body, label %cleanup, !llvm.loop !35

for.body:                                         ; preds = %for.body.lr.ph, %for.cond
  %i.029 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.cond ]
  %2 = load %struct.stack_st_CONF_MODULE*, %struct.stack_st_CONF_MODULE** @supported_modules, align 8, !tbaa !12
  %call5 = tail call fastcc %struct.conf_module_st* @sk_CONF_MODULE_value(%struct.stack_st_CONF_MODULE* noundef %2, i32 noundef %i.029) #7
  %name6 = getelementptr inbounds %struct.conf_module_st, %struct.conf_module_st* %call5, i64 0, i32 1
  %3 = load i8*, i8** %name6, align 8, !tbaa !19
  %call8 = tail call i32 @strncmp(i8* noundef %3, i8* noundef %name, i64 noundef %conv7) #9
  %cmp9 = icmp eq i32 %call8, 0
  %inc = add nuw nsw i32 %i.029, 1
  br i1 %cmp9, label %cleanup, label %for.cond

cleanup:                                          ; preds = %for.body, %for.cond, %if.end
  %retval.0 = phi %struct.conf_module_st* [ null, %if.end ], [ null, %for.cond ], [ %call5, %for.body ]
  ret %struct.conf_module_st* %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.conf_module_st* @module_load_dso(%struct.conf_st* noundef %cnf, i8* noundef %name, i8* noundef %value) unnamed_addr #0 {
entry:
  %call = tail call i8* @_CONF_get_string(%struct.conf_st* noundef %cnf, i8* noundef %value, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0)) #8
  %cmp = icmp eq i8* %call, null
  %spec.select = select i1 %cmp, i8* %name, i8* %call
  %call1 = tail call %struct.dso_st* @DSO_load(%struct.dso_st* noundef null, i8* noundef %spec.select, %struct.dso_meth_st* noundef null, i32 noundef 0) #8
  %cmp2 = icmp eq %struct.dso_st* %call1, null
  br i1 %cmp2, label %err, label %if.end4

if.end4:                                          ; preds = %entry
  %call5 = tail call void ()* @DSO_bind_func(%struct.dso_st* noundef nonnull %call1, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.12, i64 0, i64 0)) #8
  %cmp6 = icmp eq void ()* %call5, null
  br i1 %cmp6, label %err, label %if.end8

if.end8:                                          ; preds = %if.end4
  %0 = bitcast void ()* %call5 to i32 (%struct.conf_imodule_st*, %struct.conf_st*)*
  %call9 = tail call void ()* @DSO_bind_func(%struct.dso_st* noundef nonnull %call1, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.13, i64 0, i64 0)) #8
  %1 = bitcast void ()* %call9 to void (%struct.conf_imodule_st*)*
  %call10 = tail call fastcc %struct.conf_module_st* @module_add(%struct.dso_st* noundef nonnull %call1, i8* noundef %name, i32 (%struct.conf_imodule_st*, %struct.conf_st*)* noundef nonnull %0, void (%struct.conf_imodule_st*)* noundef %1) #7
  %cmp11 = icmp eq %struct.conf_module_st* %call10, null
  br i1 %cmp11, label %err, label %cleanup

err:                                              ; preds = %if.end4, %entry, %if.end8
  %errcode.0 = phi i32 [ 0, %if.end8 ], [ 110, %entry ], [ 112, %if.end4 ]
  %call14 = tail call i32 @DSO_free(%struct.dso_st* noundef %call1) #8
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 noundef 288, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.module_load_dso, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 14, i32 noundef %errcode.0, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.14, i64 0, i64 0), i8* noundef %name, i8* noundef %spec.select) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %err
  %retval.0 = phi %struct.conf_module_st* [ null, %err ], [ %call10, %if.end8 ]
  ret %struct.conf_module_st* %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @module_init(%struct.conf_module_st* noundef %pmod, i8* noundef %name, i8* noundef %value, %struct.conf_st* noundef %cnf) unnamed_addr #0 {
entry:
  %call = tail call i8* @CRYPTO_malloc(i64 noundef 40, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 noundef 361) #8
  %0 = bitcast i8* %call to %struct.conf_imodule_st*
  %cmp = icmp eq i8* %call, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %pmod1 = bitcast i8* %call to %struct.conf_module_st**
  store %struct.conf_module_st* %pmod, %struct.conf_module_st** %pmod1, align 8, !tbaa !20
  %call2 = tail call i8* @CRYPTO_strdup(i8* noundef %name, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 noundef 366) #8
  %name3 = getelementptr inbounds i8, i8* %call, i64 8
  %1 = bitcast i8* %name3 to i8**
  store i8* %call2, i8** %1, align 8, !tbaa !24
  %call4 = tail call i8* @CRYPTO_strdup(i8* noundef %value, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 noundef 367) #8
  %value5 = getelementptr inbounds i8, i8* %call, i64 16
  %2 = bitcast i8* %value5 to i8**
  store i8* %call4, i8** %2, align 8, !tbaa !25
  %usr_data = getelementptr inbounds i8, i8* %call, i64 32
  %3 = bitcast i8* %usr_data to i8**
  store i8* null, i8** %3, align 8, !tbaa !27
  %4 = load i8*, i8** %1, align 8, !tbaa !24
  %tobool.not = icmp eq i8* %4, null
  %tobool8.not = icmp eq i8* %call4, null
  %or.cond71 = select i1 %tobool.not, i1 true, i1 %tobool8.not
  br i1 %or.cond71, label %if.then36, label %if.end10

if.end10:                                         ; preds = %if.end
  %init = getelementptr inbounds %struct.conf_module_st, %struct.conf_module_st* %pmod, i64 0, i32 2
  %5 = load i32 (%struct.conf_imodule_st*, %struct.conf_st*)*, i32 (%struct.conf_imodule_st*, %struct.conf_st*)** %init, align 8, !tbaa !26
  %tobool11.not = icmp eq i32 (%struct.conf_imodule_st*, %struct.conf_st*)* %5, null
  br i1 %tobool11.not, label %if.end18, label %if.then12

if.then12:                                        ; preds = %if.end10
  %call14 = tail call i32 %5(%struct.conf_imodule_st* noundef nonnull %0, %struct.conf_st* noundef %cnf) #8
  %cmp15 = icmp slt i32 %call14, 1
  br i1 %cmp15, label %err, label %if.end18

if.end18:                                         ; preds = %if.then12, %if.end10
  %ret.0 = phi i32 [ %call14, %if.then12 ], [ 1, %if.end10 ]
  %init_called.0 = phi i32 [ 1, %if.then12 ], [ 0, %if.end10 ]
  %6 = load %struct.stack_st_CONF_IMODULE*, %struct.stack_st_CONF_IMODULE** @initialized_modules, align 8, !tbaa !12
  %cmp19 = icmp eq %struct.stack_st_CONF_IMODULE* %6, null
  br i1 %cmp19, label %if.then20, label %if.end25

if.then20:                                        ; preds = %if.end18
  %call21 = tail call fastcc %struct.stack_st_CONF_IMODULE* @sk_CONF_IMODULE_new_null() #7
  store %struct.stack_st_CONF_IMODULE* %call21, %struct.stack_st_CONF_IMODULE** @initialized_modules, align 8, !tbaa !12
  %tobool22.not = icmp eq %struct.stack_st_CONF_IMODULE* %call21, null
  br i1 %tobool22.not, label %err.sink.split, label %if.end25

if.end25:                                         ; preds = %if.then20, %if.end18
  %7 = phi %struct.stack_st_CONF_IMODULE* [ %call21, %if.then20 ], [ %6, %if.end18 ]
  %call26 = tail call fastcc i32 @sk_CONF_IMODULE_push(%struct.stack_st_CONF_IMODULE* noundef nonnull %7, %struct.conf_imodule_st* noundef nonnull %0) #7
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %err.sink.split, label %if.end29

if.end29:                                         ; preds = %if.end25
  %links = getelementptr inbounds %struct.conf_module_st, %struct.conf_module_st* %pmod, i64 0, i32 4
  %8 = load i32, i32* %links, align 8, !tbaa !13
  %inc = add nsw i32 %8, 1
  store i32 %inc, i32* %links, align 8, !tbaa !13
  br label %cleanup

err.sink.split:                                   ; preds = %if.end25, %if.then20
  %.sink = phi i32 [ 385, %if.then20 ], [ 391, %if.end25 ]
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 noundef %.sink, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @__func__.module_init, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 14, i32 noundef 786688, i8* noundef null) #8
  br label %err

err:                                              ; preds = %err.sink.split, %if.then12
  %init_called.1 = phi i32 [ 1, %if.then12 ], [ %init_called.0, %err.sink.split ]
  %finish = getelementptr inbounds %struct.conf_module_st, %struct.conf_module_st* %pmod, i64 0, i32 3
  %9 = load void (%struct.conf_imodule_st*)*, void (%struct.conf_imodule_st*)** %finish, align 8, !tbaa !23
  %tobool30 = icmp ne void (%struct.conf_imodule_st*)* %9, null
  %tobool31 = icmp ne i32 %init_called.1, 0
  %or.cond = and i1 %tobool31, %tobool30
  br i1 %or.cond, label %if.then32, label %if.then36

if.then32:                                        ; preds = %err
  tail call void %9(%struct.conf_imodule_st* noundef nonnull %0) #8
  br label %if.then36

if.then36:                                        ; preds = %err, %if.then32, %if.end
  %10 = load i8*, i8** %1, align 8, !tbaa !24
  tail call void @CRYPTO_free(i8* noundef %10, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 noundef 407) #8
  %11 = load i8*, i8** %2, align 8, !tbaa !25
  tail call void @CRYPTO_free(i8* noundef %11, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 noundef 408) #8
  tail call void @CRYPTO_free(i8* noundef nonnull %call, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 noundef 409) #8
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.then36, %if.end29
  %retval.0 = phi i32 [ %ret.0, %if.end29 ], [ -1, %if.then36 ], [ -1, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @do_load_builtin_modules() unnamed_addr #0 {
entry:
  tail call void @OPENSSL_load_builtin_modules() #8
  tail call void @ENGINE_load_builtin_engines() #8
  ret void
}

declare void @OPENSSL_load_builtin_modules() local_unnamed_addr #1

declare void @ENGINE_load_builtin_engines() local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare i8* @strrchr(i8* noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare i32 @strncmp(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #5

declare i8* @_CONF_get_string(%struct.conf_st* noundef, i8* noundef, i8* noundef) local_unnamed_addr #1

declare %struct.dso_st* @DSO_load(%struct.dso_st* noundef, i8* noundef, %struct.dso_meth_st* noundef, i32 noundef) local_unnamed_addr #1

declare void ()* @DSO_bind_func(%struct.dso_st* noundef, i8* noundef) local_unnamed_addr #1

declare i32 @DSO_free(%struct.dso_st* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.stack_st_CONF_IMODULE* @sk_CONF_IMODULE_new_null() unnamed_addr #0 {
entry:
  %call = tail call %struct.stack_st* @OPENSSL_sk_new_null() #8
  %0 = bitcast %struct.stack_st* %call to %struct.stack_st_CONF_IMODULE*
  ret %struct.stack_st_CONF_IMODULE* %0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @sk_CONF_IMODULE_push(%struct.stack_st_CONF_IMODULE* noundef %sk, %struct.conf_imodule_st* noundef %ptr) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.stack_st_CONF_IMODULE* %sk to %struct.stack_st*
  %1 = bitcast %struct.conf_imodule_st* %ptr to i8*
  %call = tail call i32 @OPENSSL_sk_push(%struct.stack_st* noundef %0, i8* noundef %1) #8
  ret i32 %call
}

declare %struct.stack_st* @OPENSSL_sk_new_null() local_unnamed_addr #1

declare i32 @OPENSSL_sk_push(%struct.stack_st* noundef, i8* noundef) local_unnamed_addr #1

declare i8* @OPENSSL_sk_delete(%struct.stack_st* noundef, i32 noundef) local_unnamed_addr #1

declare void @OPENSSL_sk_free(%struct.stack_st* noundef) local_unnamed_addr #1

declare i8* @OPENSSL_sk_pop(%struct.stack_st* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.stack_st_CONF_MODULE* @sk_CONF_MODULE_new_null() unnamed_addr #0 {
entry:
  %call = tail call %struct.stack_st* @OPENSSL_sk_new_null() #8
  %0 = bitcast %struct.stack_st* %call to %struct.stack_st_CONF_MODULE*
  ret %struct.stack_st_CONF_MODULE* %0
}

declare i8* @CRYPTO_zalloc(i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @sk_CONF_MODULE_push(%struct.stack_st_CONF_MODULE* noundef %sk, %struct.conf_module_st* noundef %ptr) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.stack_st_CONF_MODULE* %sk to %struct.stack_st*
  %1 = bitcast %struct.conf_module_st* %ptr to i8*
  %call = tail call i32 @OPENSSL_sk_push(%struct.stack_st* noundef %0, i8* noundef %1) #8
  ret i32 %call
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nosync nounwind readnone willreturn "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nobuiltin "no-builtins" }
attributes #8 = { nobuiltin nounwind "no-builtins" }
attributes #9 = { nobuiltin nounwind readonly willreturn "no-builtins" }
attributes #10 = { nobuiltin nounwind readnone willreturn "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{!"clang version 14.0.0"}
!4 = !{!5, !6, i64 8}
!5 = !{!"", !6, i64 0, !6, i64 8, !6, i64 16}
!6 = !{!"any pointer", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!5, !6, i64 16}
!10 = distinct !{!10, !11}
!11 = !{!"llvm.loop.mustprogress"}
!12 = !{!6, !6, i64 0}
!13 = !{!14, !15, i64 32}
!14 = !{!"conf_module_st", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !15, i64 32, !6, i64 40}
!15 = !{!"int", !7, i64 0}
!16 = !{!14, !6, i64 0}
!17 = distinct !{!17, !11}
!18 = distinct !{!18, !11}
!19 = !{!14, !6, i64 8}
!20 = !{!21, !6, i64 0}
!21 = !{!"conf_imodule_st", !6, i64 0, !6, i64 8, !6, i64 16, !22, i64 24, !6, i64 32}
!22 = !{!"long", !7, i64 0}
!23 = !{!14, !6, i64 24}
!24 = !{!21, !6, i64 8}
!25 = !{!21, !6, i64 16}
!26 = !{!14, !6, i64 16}
!27 = !{!21, !6, i64 32}
!28 = !{!21, !22, i64 24}
!29 = !{!14, !6, i64 40}
!30 = !{!7, !7, i64 0}
!31 = !{!32, !32, i64 0}
!32 = !{!"short", !7, i64 0}
!33 = distinct !{!33, !11}
!34 = distinct !{!34, !11}
!35 = distinct !{!35, !11}
