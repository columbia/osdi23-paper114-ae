; ModuleID = 'crypto/conf/conf_lib.c'
source_filename = "crypto/conf/conf_lib.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.conf_method_st = type { i8*, %struct.conf_st* (%struct.conf_method_st*)*, i32 (%struct.conf_st*)*, i32 (%struct.conf_st*)*, i32 (%struct.conf_st*)*, i32 (%struct.conf_st*, %struct.bio_st*, i64*)*, i32 (%struct.conf_st*, %struct.bio_st*)*, i32 (%struct.conf_st*, i8)*, i32 (%struct.conf_st*, i8)*, i32 (%struct.conf_st*, i8*, i64*)* }
%struct.conf_st = type { %struct.conf_method_st*, i8*, %struct.lhash_st_CONF_VALUE*, i32, i32, i8*, %struct.ossl_lib_ctx_st* }
%struct.lhash_st_CONF_VALUE = type { %union.lh_CONF_VALUE_dummy }
%union.lh_CONF_VALUE_dummy = type { i8* }
%struct.ossl_lib_ctx_st = type opaque
%struct.bio_st = type opaque
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.stack_st_CONF_VALUE = type opaque
%struct.stack_st_OPENSSL_CSTRING = type opaque
%struct.stack_st = type opaque
%struct.lhash_st = type opaque
%struct.CONF_VALUE = type { i8*, i8*, i8* }
%struct.ossl_init_settings_st = type { i8*, i8*, i64 }

@default_CONF_method = internal unnamed_addr global %struct.conf_method_st* null, align 8
@.str = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"crypto/conf/conf_lib.c\00", align 1
@__func__.CONF_load = private unnamed_addr constant [10 x i8] c"CONF_load\00", align 1
@__func__.CONF_load_fp = private unnamed_addr constant [13 x i8] c"CONF_load_fp\00", align 1
@__func__.CONF_dump_fp = private unnamed_addr constant [13 x i8] c"CONF_dump_fp\00", align 1
@__func__.NCONF_new_ex = private unnamed_addr constant [13 x i8] c"NCONF_new_ex\00", align 1
@__func__.NCONF_load = private unnamed_addr constant [11 x i8] c"NCONF_load\00", align 1
@__func__.NCONF_load_fp = private unnamed_addr constant [14 x i8] c"NCONF_load_fp\00", align 1
@__func__.NCONF_load_bio = private unnamed_addr constant [15 x i8] c"NCONF_load_bio\00", align 1
@__func__.NCONF_get_section = private unnamed_addr constant [18 x i8] c"NCONF_get_section\00", align 1
@__func__.NCONF_get_string = private unnamed_addr constant [17 x i8] c"NCONF_get_string\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"group=%s name=%s\00", align 1
@__func__.NCONF_get_number_e = private unnamed_addr constant [19 x i8] c"NCONF_get_number_e\00", align 1
@__func__.NCONF_dump_fp = private unnamed_addr constant [14 x i8] c"NCONF_dump_fp\00", align 1
@__func__.NCONF_dump_bio = private unnamed_addr constant [15 x i8] c"NCONF_dump_bio\00", align 1

; Function Attrs: noinline nounwind uwtable
define void @CONF_set_nconf(%struct.conf_st* noundef %conf, %struct.lhash_st_CONF_VALUE* noundef %hash) local_unnamed_addr #0 {
entry:
  %0 = load %struct.conf_method_st*, %struct.conf_method_st** @default_CONF_method, align 8, !tbaa !4
  %cmp = icmp eq %struct.conf_method_st* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = tail call %struct.conf_method_st* @NCONF_default() #9
  store %struct.conf_method_st* %call, %struct.conf_method_st** @default_CONF_method, align 8, !tbaa !4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = phi %struct.conf_method_st* [ %call, %if.then ], [ %0, %entry ]
  %init = getelementptr inbounds %struct.conf_method_st, %struct.conf_method_st* %1, i64 0, i32 2
  %2 = load i32 (%struct.conf_st*)*, i32 (%struct.conf_st*)** %init, align 8, !tbaa !8
  %call1 = tail call i32 %2(%struct.conf_st* noundef %conf) #9
  %data = getelementptr inbounds %struct.conf_st, %struct.conf_st* %conf, i64 0, i32 2
  store %struct.lhash_st_CONF_VALUE* %hash, %struct.lhash_st_CONF_VALUE** %data, align 8, !tbaa !10
  ret void
}

declare %struct.conf_method_st* @NCONF_default() local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define i32 @CONF_set_default_method(%struct.conf_method_st* noundef %meth) local_unnamed_addr #2 {
entry:
  store %struct.conf_method_st* %meth, %struct.conf_method_st** @default_CONF_method, align 8, !tbaa !4
  ret i32 1
}

; Function Attrs: noinline nounwind uwtable
define %struct.lhash_st_CONF_VALUE* @CONF_load(%struct.lhash_st_CONF_VALUE* noundef %conf, i8* noundef %file, i64* noundef %eline) local_unnamed_addr #0 {
entry:
  %call = tail call %struct.bio_st* @BIO_new_file(i8* noundef %file, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0)) #9
  %cmp = icmp eq %struct.bio_st* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #9
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 noundef 58, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.CONF_load, i64 0, i64 0)) #9
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 14, i32 noundef 524290, i8* noundef null) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call %struct.lhash_st_CONF_VALUE* @CONF_load_bio(%struct.lhash_st_CONF_VALUE* noundef %conf, %struct.bio_st* noundef nonnull %call, i64* noundef %eline) #10
  %call2 = tail call i32 @BIO_free(%struct.bio_st* noundef nonnull %call) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi %struct.lhash_st_CONF_VALUE* [ null, %if.then ], [ %call1, %if.end ]
  ret %struct.lhash_st_CONF_VALUE* %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #3

declare %struct.bio_st* @BIO_new_file(i8* noundef, i8* noundef) local_unnamed_addr #1

declare void @ERR_new() local_unnamed_addr #1

declare void @ERR_set_debug(i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #1

declare void @ERR_set_error(i32 noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define %struct.lhash_st_CONF_VALUE* @CONF_load_bio(%struct.lhash_st_CONF_VALUE* noundef %conf, %struct.bio_st* noundef %bp, i64* noundef %eline) local_unnamed_addr #0 {
entry:
  %ctmp = alloca %struct.conf_st, align 8
  %0 = bitcast %struct.conf_st* %ctmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 48, i8* nonnull %0) #11
  call void @CONF_set_nconf(%struct.conf_st* noundef nonnull %ctmp, %struct.lhash_st_CONF_VALUE* noundef %conf) #10
  %call = call i32 @NCONF_load_bio(%struct.conf_st* noundef nonnull %ctmp, %struct.bio_st* noundef %bp, i64* noundef %eline) #10
  %tobool.not = icmp eq i32 %call, 0
  %data = getelementptr inbounds %struct.conf_st, %struct.conf_st* %ctmp, i64 0, i32 2
  %1 = load %struct.lhash_st_CONF_VALUE*, %struct.lhash_st_CONF_VALUE** %data, align 8
  %retval.0 = select i1 %tobool.not, %struct.lhash_st_CONF_VALUE* null, %struct.lhash_st_CONF_VALUE* %1
  call void @llvm.lifetime.end.p0i8(i64 48, i8* nonnull %0) #11
  ret %struct.lhash_st_CONF_VALUE* %retval.0
}

declare i32 @BIO_free(%struct.bio_st* noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #3

; Function Attrs: noinline nounwind uwtable
define %struct.lhash_st_CONF_VALUE* @CONF_load_fp(%struct.lhash_st_CONF_VALUE* noundef %conf, %struct._IO_FILE* noundef %fp, i64* noundef %eline) local_unnamed_addr #0 {
entry:
  %call = tail call %struct.bio_st* @BIO_new_fp(%struct._IO_FILE* noundef %fp, i32 noundef 0) #9
  %cmp = icmp eq %struct.bio_st* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #9
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 noundef 75, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @__func__.CONF_load_fp, i64 0, i64 0)) #9
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 14, i32 noundef 524295, i8* noundef null) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call %struct.lhash_st_CONF_VALUE* @CONF_load_bio(%struct.lhash_st_CONF_VALUE* noundef %conf, %struct.bio_st* noundef nonnull %call, i64* noundef %eline) #10
  %call2 = tail call i32 @BIO_free(%struct.bio_st* noundef nonnull %call) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi %struct.lhash_st_CONF_VALUE* [ null, %if.then ], [ %call1, %if.end ]
  ret %struct.lhash_st_CONF_VALUE* %retval.0
}

declare %struct.bio_st* @BIO_new_fp(%struct._IO_FILE* noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define i32 @NCONF_load_bio(%struct.conf_st* noundef %conf, %struct.bio_st* noundef %bp, i64* noundef %eline) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.conf_st* %conf, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #9
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 noundef 278, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__func__.NCONF_load_bio, i64 0, i64 0)) #9
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 14, i32 noundef 105, i8* noundef null) #9
  br label %return

if.end:                                           ; preds = %entry
  %meth = getelementptr inbounds %struct.conf_st, %struct.conf_st* %conf, i64 0, i32 0
  %0 = load %struct.conf_method_st*, %struct.conf_method_st** %meth, align 8, !tbaa !13
  %load_bio = getelementptr inbounds %struct.conf_method_st, %struct.conf_method_st* %0, i64 0, i32 5
  %1 = load i32 (%struct.conf_st*, %struct.bio_st*, i64*)*, i32 (%struct.conf_st*, %struct.bio_st*, i64*)** %load_bio, align 8, !tbaa !14
  %call = tail call i32 %1(%struct.conf_st* noundef nonnull %conf, %struct.bio_st* noundef %bp, i64* noundef %eline) #9
  br label %return

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ %call, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define %struct.stack_st_CONF_VALUE* @CONF_get_section(%struct.lhash_st_CONF_VALUE* noundef %conf, i8* noundef %section) local_unnamed_addr #0 {
entry:
  %ctmp = alloca %struct.conf_st, align 8
  %cmp = icmp eq %struct.lhash_st_CONF_VALUE* %conf, null
  br i1 %cmp, label %return, label %if.else

if.else:                                          ; preds = %entry
  %0 = bitcast %struct.conf_st* %ctmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 48, i8* nonnull %0) #11
  call void @CONF_set_nconf(%struct.conf_st* noundef nonnull %ctmp, %struct.lhash_st_CONF_VALUE* noundef nonnull %conf) #10
  %call = call %struct.stack_st_CONF_VALUE* @NCONF_get_section(%struct.conf_st* noundef nonnull %ctmp, i8* noundef %section) #10
  call void @llvm.lifetime.end.p0i8(i64 48, i8* nonnull %0) #11
  br label %return

return:                                           ; preds = %entry, %if.else
  %retval.0 = phi %struct.stack_st_CONF_VALUE* [ %call, %if.else ], [ null, %entry ]
  ret %struct.stack_st_CONF_VALUE* %retval.0
}

; Function Attrs: noinline nounwind uwtable
define %struct.stack_st_CONF_VALUE* @NCONF_get_section(%struct.conf_st* noundef %conf, i8* noundef %section) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.conf_st* %conf, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #9
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 noundef 288, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.NCONF_get_section, i64 0, i64 0)) #9
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 14, i32 noundef 105, i8* noundef null) #9
  br label %return

if.end:                                           ; preds = %entry
  %cmp1 = icmp eq i8* %section, null
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  tail call void @ERR_new() #9
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 noundef 293, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.NCONF_get_section, i64 0, i64 0)) #9
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 14, i32 noundef 107, i8* noundef null) #9
  br label %return

if.end3:                                          ; preds = %if.end
  %call = tail call %struct.stack_st_CONF_VALUE* @_CONF_get_section_values(%struct.conf_st* noundef nonnull %conf, i8* noundef nonnull %section) #9
  br label %return

return:                                           ; preds = %if.end3, %if.then2, %if.then
  %retval.0 = phi %struct.stack_st_CONF_VALUE* [ null, %if.then ], [ null, %if.then2 ], [ %call, %if.end3 ]
  ret %struct.stack_st_CONF_VALUE* %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i8* @CONF_get_string(%struct.lhash_st_CONF_VALUE* noundef %conf, i8* noundef %group, i8* noundef %name) local_unnamed_addr #0 {
entry:
  %ctmp = alloca %struct.conf_st, align 8
  %cmp = icmp eq %struct.lhash_st_CONF_VALUE* %conf, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call = tail call i8* @NCONF_get_string(%struct.conf_st* noundef null, i8* noundef %group, i8* noundef %name) #10
  br label %return

if.else:                                          ; preds = %entry
  %0 = bitcast %struct.conf_st* %ctmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 48, i8* nonnull %0) #11
  call void @CONF_set_nconf(%struct.conf_st* noundef nonnull %ctmp, %struct.lhash_st_CONF_VALUE* noundef nonnull %conf) #10
  %call1 = call i8* @NCONF_get_string(%struct.conf_st* noundef nonnull %ctmp, i8* noundef %group, i8* noundef %name) #10
  call void @llvm.lifetime.end.p0i8(i64 48, i8* nonnull %0) #11
  br label %return

return:                                           ; preds = %if.else, %if.then
  %retval.0 = phi i8* [ %call, %if.then ], [ %call1, %if.else ]
  ret i8* %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i8* @NCONF_get_string(%struct.conf_st* noundef %conf, i8* noundef %group, i8* noundef %name) local_unnamed_addr #0 {
entry:
  %call = tail call i8* @_CONF_get_string(%struct.conf_st* noundef %conf, i8* noundef %group, i8* noundef %name) #9
  %tobool.not = icmp eq i8* %call, null
  br i1 %tobool.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %cmp = icmp eq %struct.conf_st* %conf, null
  tail call void @ERR_new() #9
  br i1 %cmp, label %if.then1, label %if.end2

if.then1:                                         ; preds = %if.end
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 noundef 312, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.NCONF_get_string, i64 0, i64 0)) #9
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 14, i32 noundef 106, i8* noundef null) #9
  br label %cleanup

if.end2:                                          ; preds = %if.end
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 noundef 315, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.NCONF_get_string, i64 0, i64 0)) #9
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 14, i32 noundef 108, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i8* noundef %group, i8* noundef %name) #9
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end2, %if.then1
  ret i8* %call
}

; Function Attrs: noinline nounwind uwtable
define i64 @CONF_get_number(%struct.lhash_st_CONF_VALUE* noundef %conf, i8* noundef %group, i8* noundef %name) local_unnamed_addr #0 {
entry:
  %result = alloca i64, align 8
  %ctmp = alloca %struct.conf_st, align 8
  %0 = bitcast i64* %result to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #11
  store i64 0, i64* %result, align 8, !tbaa !15
  %call = tail call i32 @ERR_set_mark() #9
  %cmp = icmp eq %struct.lhash_st_CONF_VALUE* %conf, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call1 = call i32 @NCONF_get_number_e(%struct.conf_st* noundef null, i8* noundef %group, i8* noundef %name, i64* noundef nonnull %result) #10
  br label %if.end

if.else:                                          ; preds = %entry
  %1 = bitcast %struct.conf_st* %ctmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 48, i8* nonnull %1) #11
  call void @CONF_set_nconf(%struct.conf_st* noundef nonnull %ctmp, %struct.lhash_st_CONF_VALUE* noundef nonnull %conf) #10
  %call2 = call i32 @NCONF_get_number_e(%struct.conf_st* noundef nonnull %ctmp, i8* noundef %group, i8* noundef %name, i64* noundef nonnull %result) #10
  call void @llvm.lifetime.end.p0i8(i64 48, i8* nonnull %1) #11
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %status.0 = phi i32 [ %call1, %if.then ], [ %call2, %if.else ]
  %call3 = call i32 @ERR_pop_to_mark() #9
  %cmp4 = icmp eq i32 %status.0, 0
  %2 = load i64, i64* %result, align 8
  %cond = select i1 %cmp4, i64 0, i64 %2
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #11
  ret i64 %cond
}

declare i32 @ERR_set_mark() local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define i32 @NCONF_get_number_e(%struct.conf_st* noundef %conf, i8* noundef %group, i8* noundef %name, i64* noundef writeonly %result) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq i64* %result, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #9
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 noundef 339, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.NCONF_get_number_e, i64 0, i64 0)) #9
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 14, i32 noundef 786690, i8* noundef null) #9
  br label %cleanup27

if.end:                                           ; preds = %entry
  %call = tail call i8* @NCONF_get_string(%struct.conf_st* noundef %conf, i8* noundef %group, i8* noundef %name) #10
  %cmp1 = icmp eq i8* %call, null
  br i1 %cmp1, label %cleanup27, label %if.end3

if.end3:                                          ; preds = %if.end
  %cmp4.not = icmp eq %struct.conf_st* %conf, null
  br i1 %cmp4.not, label %if.end19, label %if.then5

if.then5:                                         ; preds = %if.end3
  %meth = getelementptr inbounds %struct.conf_st, %struct.conf_st* %conf, i64 0, i32 0
  %0 = load %struct.conf_method_st*, %struct.conf_method_st** %meth, align 8, !tbaa !13
  %is_number6 = getelementptr inbounds %struct.conf_method_st, %struct.conf_method_st* %0, i64 0, i32 7
  %1 = load i32 (%struct.conf_st*, i8)*, i32 (%struct.conf_st*, i8)** %is_number6, align 8, !tbaa !17
  %cmp7.not = icmp eq i32 (%struct.conf_st*, i8)* %1, null
  %spec.select = select i1 %cmp7.not, i32 (%struct.conf_st*, i8)* @default_is_number, i32 (%struct.conf_st*, i8)* %1
  %to_int13 = getelementptr inbounds %struct.conf_method_st, %struct.conf_method_st* %0, i64 0, i32 8
  %2 = load i32 (%struct.conf_st*, i8)*, i32 (%struct.conf_st*, i8)** %to_int13, align 8, !tbaa !18
  %cmp14.not = icmp eq i32 (%struct.conf_st*, i8)* %2, null
  %spec.select51 = select i1 %cmp14.not, i32 (%struct.conf_st*, i8)* @default_to_int, i32 (%struct.conf_st*, i8)* %2
  br label %if.end19

if.end19:                                         ; preds = %if.then5, %if.end3
  %is_number.1 = phi i32 (%struct.conf_st*, i8)* [ @default_is_number, %if.end3 ], [ %spec.select, %if.then5 ]
  %to_int.0 = phi i32 (%struct.conf_st*, i8)* [ @default_to_int, %if.end3 ], [ %spec.select51, %if.then5 ]
  %3 = load i8, i8* %call, align 1, !tbaa !19
  %call2055 = tail call i32 %is_number.1(%struct.conf_st* noundef %conf, i8 noundef signext %3) #9
  %tobool.not56 = icmp eq i32 %call2055, 0
  br i1 %tobool.not56, label %for.end, label %for.body

for.body:                                         ; preds = %if.end19, %for.inc
  %res.058 = phi i64 [ %add, %for.inc ], [ 0, %if.end19 ]
  %str.057 = phi i8* [ %incdec.ptr, %for.inc ], [ %call, %if.end19 ]
  %4 = load i8, i8* %str.057, align 1, !tbaa !19
  %call21 = tail call i32 %to_int.0(%struct.conf_st* noundef %conf, i8 noundef signext %4) #9
  %conv = sext i32 %call21 to i64
  %sub = sub nsw i64 9223372036854775807, %conv
  %div53 = udiv i64 %sub, 10
  %cmp22 = icmp sgt i64 %res.058, %div53
  br i1 %cmp22, label %cleanup.thread, label %for.inc

cleanup.thread:                                   ; preds = %for.body
  tail call void @ERR_new() #9
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 noundef 358, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.NCONF_get_number_e, i64 0, i64 0)) #9
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 14, i32 noundef 121, i8* noundef null) #9
  br label %cleanup27

for.inc:                                          ; preds = %for.body
  %mul = mul nsw i64 %res.058, 10
  %add = add nsw i64 %mul, %conv
  %incdec.ptr = getelementptr inbounds i8, i8* %str.057, i64 1
  %5 = load i8, i8* %incdec.ptr, align 1, !tbaa !19
  %call20 = tail call i32 %is_number.1(%struct.conf_st* noundef %conf, i8 noundef signext %5) #9
  %tobool.not = icmp eq i32 %call20, 0
  br i1 %tobool.not, label %for.end, label %for.body, !llvm.loop !20

for.end:                                          ; preds = %for.inc, %if.end19
  %res.0.lcssa = phi i64 [ 0, %if.end19 ], [ %add, %for.inc ]
  store i64 %res.0.lcssa, i64* %result, align 8, !tbaa !15
  br label %cleanup27

cleanup27:                                        ; preds = %cleanup.thread, %if.end, %for.end, %if.then
  %retval.2 = phi i32 [ 0, %if.then ], [ 1, %for.end ], [ 0, %if.end ], [ 0, %cleanup.thread ]
  ret i32 %retval.2
}

declare i32 @ERR_pop_to_mark() local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define void @CONF_free(%struct.lhash_st_CONF_VALUE* noundef %conf) local_unnamed_addr #0 {
entry:
  %ctmp = alloca %struct.conf_st, align 8
  %0 = bitcast %struct.conf_st* %ctmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 48, i8* nonnull %0) #11
  call void @CONF_set_nconf(%struct.conf_st* noundef nonnull %ctmp, %struct.lhash_st_CONF_VALUE* noundef %conf) #10
  call void @NCONF_free_data(%struct.conf_st* noundef nonnull %ctmp) #10
  call void @llvm.lifetime.end.p0i8(i64 48, i8* nonnull %0) #11
  ret void
}

; Function Attrs: noinline nounwind uwtable
define void @NCONF_free_data(%struct.conf_st* noundef %conf) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.conf_st* %conf, null
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %meth = getelementptr inbounds %struct.conf_st, %struct.conf_st* %conf, i64 0, i32 0
  %0 = load %struct.conf_method_st*, %struct.conf_method_st** %meth, align 8, !tbaa !13
  %destroy_data = getelementptr inbounds %struct.conf_method_st, %struct.conf_method_st* %0, i64 0, i32 4
  %1 = load i32 (%struct.conf_st*)*, i32 (%struct.conf_st*)** %destroy_data, align 8, !tbaa !22
  %call = tail call i32 %1(%struct.conf_st* noundef nonnull %conf) #9
  br label %return

return:                                           ; preds = %entry, %if.end
  ret void
}

; Function Attrs: noinline nounwind uwtable
define i32 @CONF_dump_fp(%struct.lhash_st_CONF_VALUE* noundef %conf, %struct._IO_FILE* noundef %out) local_unnamed_addr #0 {
entry:
  %call = tail call %struct.bio_st* @BIO_new_fp(%struct._IO_FILE* noundef %out, i32 noundef 0) #9
  %cmp = icmp eq %struct.bio_st* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #9
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 noundef 157, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @__func__.CONF_dump_fp, i64 0, i64 0)) #9
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 14, i32 noundef 524295, i8* noundef null) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @CONF_dump_bio(%struct.lhash_st_CONF_VALUE* noundef %conf, %struct.bio_st* noundef nonnull %call) #10
  %call2 = tail call i32 @BIO_free(%struct.bio_st* noundef nonnull %call) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ %call1, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @CONF_dump_bio(%struct.lhash_st_CONF_VALUE* noundef %conf, %struct.bio_st* noundef %out) local_unnamed_addr #0 {
entry:
  %ctmp = alloca %struct.conf_st, align 8
  %0 = bitcast %struct.conf_st* %ctmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 48, i8* nonnull %0) #11
  call void @CONF_set_nconf(%struct.conf_st* noundef nonnull %ctmp, %struct.lhash_st_CONF_VALUE* noundef %conf) #10
  %call = call i32 @NCONF_dump_bio(%struct.conf_st* noundef nonnull %ctmp, %struct.bio_st* noundef %out) #10
  call void @llvm.lifetime.end.p0i8(i64 48, i8* nonnull %0) #11
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define i32 @NCONF_dump_bio(%struct.conf_st* noundef %conf, %struct.bio_st* noundef %out) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.conf_st* %conf, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #9
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 noundef 398, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__func__.NCONF_dump_bio, i64 0, i64 0)) #9
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 14, i32 noundef 105, i8* noundef null) #9
  br label %return

if.end:                                           ; preds = %entry
  %meth = getelementptr inbounds %struct.conf_st, %struct.conf_st* %conf, i64 0, i32 0
  %0 = load %struct.conf_method_st*, %struct.conf_method_st** %meth, align 8, !tbaa !13
  %dump = getelementptr inbounds %struct.conf_method_st, %struct.conf_method_st* %0, i64 0, i32 6
  %1 = load i32 (%struct.conf_st*, %struct.bio_st*)*, i32 (%struct.conf_st*, %struct.bio_st*)** %dump, align 8, !tbaa !23
  %call = tail call i32 %1(%struct.conf_st* noundef nonnull %conf, %struct.bio_st* noundef %out) #9
  br label %return

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ %call, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define %struct.conf_st* @NCONF_new_ex(%struct.ossl_lib_ctx_st* noundef %libctx, %struct.conf_method_st* noundef %meth) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.conf_method_st* %meth, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = tail call %struct.conf_method_st* @NCONF_default() #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %meth.addr.0 = phi %struct.conf_method_st* [ %call, %if.then ], [ %meth, %entry ]
  %create = getelementptr inbounds %struct.conf_method_st, %struct.conf_method_st* %meth.addr.0, i64 0, i32 1
  %0 = load %struct.conf_st* (%struct.conf_method_st*)*, %struct.conf_st* (%struct.conf_method_st*)** %create, align 8, !tbaa !24
  %call1 = tail call %struct.conf_st* %0(%struct.conf_method_st* noundef %meth.addr.0) #9
  %cmp2 = icmp eq %struct.conf_st* %call1, null
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  tail call void @ERR_new() #9
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 noundef 191, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @__func__.NCONF_new_ex, i64 0, i64 0)) #9
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 14, i32 noundef 786688, i8* noundef null) #9
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %libctx5 = getelementptr inbounds %struct.conf_st, %struct.conf_st* %call1, i64 0, i32 6
  store %struct.ossl_lib_ctx_st* %libctx, %struct.ossl_lib_ctx_st** %libctx5, align 8, !tbaa !25
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.then3
  ret %struct.conf_st* %call1
}

; Function Attrs: noinline nounwind uwtable
define %struct.conf_st* @NCONF_new(%struct.conf_method_st* noundef %meth) local_unnamed_addr #0 {
entry:
  %call = tail call %struct.conf_st* @NCONF_new_ex(%struct.ossl_lib_ctx_st* noundef null, %struct.conf_method_st* noundef %meth) #10
  ret %struct.conf_st* %call
}

; Function Attrs: noinline nounwind uwtable
define void @NCONF_free(%struct.conf_st* noundef %conf) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.conf_st* %conf, null
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %meth = getelementptr inbounds %struct.conf_st, %struct.conf_st* %conf, i64 0, i32 0
  %0 = load %struct.conf_method_st*, %struct.conf_method_st** %meth, align 8, !tbaa !13
  %destroy = getelementptr inbounds %struct.conf_method_st, %struct.conf_method_st* %0, i64 0, i32 3
  %1 = load i32 (%struct.conf_st*)*, i32 (%struct.conf_st*)** %destroy, align 8, !tbaa !26
  %call = tail call i32 %1(%struct.conf_st* noundef nonnull %conf) #9
  br label %return

return:                                           ; preds = %entry, %if.end
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define %struct.ossl_lib_ctx_st* @NCONF_get0_libctx(%struct.conf_st* nocapture noundef readonly %conf) local_unnamed_addr #4 {
entry:
  %libctx = getelementptr inbounds %struct.conf_st, %struct.conf_st* %conf, i64 0, i32 6
  %0 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** %libctx, align 8, !tbaa !25
  ret %struct.ossl_lib_ctx_st* %0
}

; Function Attrs: noinline nounwind uwtable
define %struct.stack_st_OPENSSL_CSTRING* @NCONF_get_section_names(%struct.conf_st* nocapture noundef readonly %cnf) local_unnamed_addr #0 {
entry:
  %call1 = tail call %struct.stack_st* @OPENSSL_sk_new(i32 (i8*, i8*)* noundef bitcast (i32 (i8**, i8**)* @section_name_cmp to i32 (i8*, i8*)*)) #9
  %0 = bitcast %struct.stack_st* %call1 to %struct.stack_st_OPENSSL_CSTRING*
  %cmp = icmp eq %struct.stack_st* %call1, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %data = getelementptr inbounds %struct.conf_st, %struct.conf_st* %cnf, i64 0, i32 2
  %1 = load %struct.lhash_st_CONF_VALUE*, %struct.lhash_st_CONF_VALUE** %data, align 8, !tbaa !10
  tail call fastcc void @lh_CONF_VALUE_doall_SECTION_NAMES(%struct.lhash_st_CONF_VALUE* noundef %1, %struct.stack_st_OPENSSL_CSTRING* noundef nonnull %0) #10
  %call2 = tail call fastcc %struct.stack_st* @ossl_check_OPENSSL_CSTRING_sk_type(%struct.stack_st_OPENSSL_CSTRING* noundef nonnull %0) #10
  tail call void @OPENSSL_sk_sort(%struct.stack_st* noundef %call2) #9
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi %struct.stack_st_OPENSSL_CSTRING* [ %0, %if.end ], [ null, %entry ]
  ret %struct.stack_st_OPENSSL_CSTRING* %retval.0
}

declare %struct.stack_st* @OPENSSL_sk_new(i32 (i8*, i8*)* noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline nounwind readonly uwtable willreturn
define internal i32 @section_name_cmp(i8** nocapture noundef readonly %a, i8** nocapture noundef readonly %b) #5 {
entry:
  %0 = load i8*, i8** %a, align 8, !tbaa !4
  %1 = load i8*, i8** %b, align 8, !tbaa !4
  %call = tail call i32 @strcmp(i8* noundef %0, i8* noundef %1) #12
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @lh_CONF_VALUE_doall_SECTION_NAMES(%struct.lhash_st_CONF_VALUE* noundef %lh, %struct.stack_st_OPENSSL_CSTRING* noundef %arg) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.lhash_st_CONF_VALUE* %lh to %struct.lhash_st*
  %1 = bitcast %struct.stack_st_OPENSSL_CSTRING* %arg to i8*
  tail call void @OPENSSL_LH_doall_arg(%struct.lhash_st* noundef %0, void (i8*, i8*)* noundef bitcast (void (%struct.CONF_VALUE*, %struct.stack_st_OPENSSL_CSTRING*)* @collect_section_name to void (i8*, i8*)*), i8* noundef %1) #9
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @collect_section_name(%struct.CONF_VALUE* nocapture noundef readonly %v, %struct.stack_st_OPENSSL_CSTRING* noundef %names) #0 {
entry:
  %name = getelementptr inbounds %struct.CONF_VALUE, %struct.CONF_VALUE* %v, i64 0, i32 1
  %0 = load i8*, i8** %name, align 8, !tbaa !27
  %cmp = icmp eq i8* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = tail call fastcc %struct.stack_st* @ossl_check_OPENSSL_CSTRING_sk_type(%struct.stack_st_OPENSSL_CSTRING* noundef %names) #10
  %section = getelementptr inbounds %struct.CONF_VALUE, %struct.CONF_VALUE* %v, i64 0, i32 0
  %1 = load i8*, i8** %section, align 8, !tbaa !29
  %call2 = tail call i32 @OPENSSL_sk_push(%struct.stack_st* noundef %call, i8* noundef %1) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare void @OPENSSL_sk_sort(%struct.stack_st* noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_OPENSSL_CSTRING_sk_type(%struct.stack_st_OPENSSL_CSTRING* noundef readnone %sk) unnamed_addr #6 {
entry:
  %0 = bitcast %struct.stack_st_OPENSSL_CSTRING* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

; Function Attrs: noinline nounwind uwtable
define i32 @NCONF_load(%struct.conf_st* noundef %conf, i8* noundef %file, i64* noundef %eline) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.conf_st* %conf, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #9
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 noundef 253, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @__func__.NCONF_load, i64 0, i64 0)) #9
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 14, i32 noundef 105, i8* noundef null) #9
  br label %return

if.end:                                           ; preds = %entry
  %meth = getelementptr inbounds %struct.conf_st, %struct.conf_st* %conf, i64 0, i32 0
  %0 = load %struct.conf_method_st*, %struct.conf_method_st** %meth, align 8, !tbaa !13
  %load = getelementptr inbounds %struct.conf_method_st, %struct.conf_method_st* %0, i64 0, i32 9
  %1 = load i32 (%struct.conf_st*, i8*, i64*)*, i32 (%struct.conf_st*, i8*, i64*)** %load, align 8, !tbaa !30
  %call = tail call i32 %1(%struct.conf_st* noundef nonnull %conf, i8* noundef %file, i64* noundef %eline) #9
  br label %return

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ %call, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @NCONF_load_fp(%struct.conf_st* noundef %conf, %struct._IO_FILE* noundef %fp, i64* noundef %eline) local_unnamed_addr #0 {
entry:
  %call = tail call %struct.bio_st* @BIO_new_fp(%struct._IO_FILE* noundef %fp, i32 noundef 0) #9
  %cmp = icmp eq %struct.bio_st* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #9
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 noundef 266, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.NCONF_load_fp, i64 0, i64 0)) #9
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 14, i32 noundef 524295, i8* noundef null) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @NCONF_load_bio(%struct.conf_st* noundef %conf, %struct.bio_st* noundef nonnull %call, i64* noundef %eline) #10
  %call2 = tail call i32 @BIO_free(%struct.bio_st* noundef nonnull %call) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ %call1, %if.end ]
  ret i32 %retval.0
}

declare %struct.stack_st_CONF_VALUE* @_CONF_get_section_values(%struct.conf_st* noundef, i8* noundef) local_unnamed_addr #1

declare i8* @_CONF_get_string(%struct.conf_st* noundef, i8* noundef, i8* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @default_is_number(%struct.conf_st* nocapture noundef readnone %conf, i8 noundef signext %c) unnamed_addr #0 {
entry:
  %conv = sext i8 %c to i32
  %call = tail call i32 @ossl_ctype_check(i32 noundef %conv, i32 noundef 4) #9
  ret i32 %call
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal i32 @default_to_int(%struct.conf_st* nocapture noundef readnone %conf, i8 noundef signext %c) unnamed_addr #6 {
entry:
  %conv = sext i8 %c to i32
  %sub = add nsw i32 %conv, -48
  ret i32 %sub
}

; Function Attrs: noinline nounwind uwtable
define i64 @_CONF_get_number(%struct.conf_st* noundef %conf, i8* noundef %section, i8* noundef %name) local_unnamed_addr #0 {
entry:
  %result = alloca i64, align 8
  %0 = bitcast i64* %result to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #11
  store i64 0, i64* %result, align 8, !tbaa !15
  %call = tail call i32 @ERR_set_mark() #9
  %call1 = call i32 @NCONF_get_number_e(%struct.conf_st* noundef %conf, i8* noundef %section, i8* noundef %name, i64* noundef nonnull %result) #10
  %call2 = call i32 @ERR_pop_to_mark() #9
  %cmp = icmp eq i32 %call1, 0
  %1 = load i64, i64* %result, align 8
  %cond = select i1 %cmp, i64 0, i64 %1
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #11
  ret i64 %cond
}

; Function Attrs: noinline nounwind uwtable
define i32 @NCONF_dump_fp(%struct.conf_st* noundef %conf, %struct._IO_FILE* noundef %out) local_unnamed_addr #0 {
entry:
  %call = tail call %struct.bio_st* @BIO_new_fp(%struct._IO_FILE* noundef %out, i32 noundef 0) #9
  %cmp = icmp eq %struct.bio_st* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #9
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 noundef 386, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.NCONF_dump_fp, i64 0, i64 0)) #9
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 14, i32 noundef 524295, i8* noundef null) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @NCONF_dump_bio(%struct.conf_st* noundef %conf, %struct.bio_st* noundef nonnull %call) #10
  %call2 = tail call i32 @BIO_free(%struct.bio_st* noundef nonnull %call) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ %call1, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define %struct.ossl_init_settings_st* @OPENSSL_INIT_new() local_unnamed_addr #0 {
entry:
  %call = tail call noalias i8* @malloc(i64 noundef 24) #9
  %cmp = icmp eq i8* %call, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %0 = bitcast i8* %call to %struct.ossl_init_settings_st*
  %call1 = tail call i8* @memset(i8* noundef nonnull %call, i32 noundef 0, i64 noundef 24) #9
  %flags = getelementptr inbounds i8, i8* %call, i64 16
  %1 = bitcast i8* %flags to i64*
  store i64 50, i64* %1, align 8, !tbaa !31
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi %struct.ossl_init_settings_st* [ %0, %if.end ], [ null, %entry ]
  ret %struct.ossl_init_settings_st* %retval.0
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) local_unnamed_addr #7

; Function Attrs: nounwind
declare i8* @memset(i8* noundef, i32 noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: noinline nounwind uwtable
define i32 @OPENSSL_INIT_set_config_filename(%struct.ossl_init_settings_st* nocapture noundef %settings, i8* noundef %filename) local_unnamed_addr #0 {
entry:
  %cmp.not = icmp eq i8* %filename, null
  br i1 %cmp.not, label %if.end3, label %if.then

if.then:                                          ; preds = %entry
  %call = tail call noalias i8* @strdup(i8* noundef nonnull %filename) #9
  %cmp1 = icmp eq i8* %call, null
  br i1 %cmp1, label %cleanup, label %if.end3

if.end3:                                          ; preds = %if.then, %entry
  %newfilename.0 = phi i8* [ %call, %if.then ], [ null, %entry ]
  %filename4 = getelementptr inbounds %struct.ossl_init_settings_st, %struct.ossl_init_settings_st* %settings, i64 0, i32 0
  %0 = load i8*, i8** %filename4, align 8, !tbaa !33
  tail call void @free(i8* noundef %0) #9
  store i8* %newfilename.0, i8** %filename4, align 8, !tbaa !33
  br label %cleanup

cleanup:                                          ; preds = %if.then, %if.end3
  %retval.0 = phi i32 [ 1, %if.end3 ], [ 0, %if.then ]
  ret i32 %retval.0
}

; Function Attrs: nounwind
declare noalias i8* @strdup(i8* noundef) local_unnamed_addr #7

; Function Attrs: nounwind
declare void @free(i8* noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define void @OPENSSL_INIT_set_config_file_flags(%struct.ossl_init_settings_st* nocapture noundef writeonly %settings, i64 noundef %flags) local_unnamed_addr #2 {
entry:
  %flags1 = getelementptr inbounds %struct.ossl_init_settings_st, %struct.ossl_init_settings_st* %settings, i64 0, i32 2
  store i64 %flags, i64* %flags1, align 8, !tbaa !31
  ret void
}

; Function Attrs: noinline nounwind uwtable
define i32 @OPENSSL_INIT_set_config_appname(%struct.ossl_init_settings_st* nocapture noundef %settings, i8* noundef %appname) local_unnamed_addr #0 {
entry:
  %cmp.not = icmp eq i8* %appname, null
  br i1 %cmp.not, label %if.end3, label %if.then

if.then:                                          ; preds = %entry
  %call = tail call noalias i8* @strdup(i8* noundef nonnull %appname) #9
  %cmp1 = icmp eq i8* %call, null
  br i1 %cmp1, label %cleanup, label %if.end3

if.end3:                                          ; preds = %if.then, %entry
  %newappname.0 = phi i8* [ %call, %if.then ], [ null, %entry ]
  %appname4 = getelementptr inbounds %struct.ossl_init_settings_st, %struct.ossl_init_settings_st* %settings, i64 0, i32 1
  %0 = load i8*, i8** %appname4, align 8, !tbaa !34
  tail call void @free(i8* noundef %0) #9
  store i8* %newappname.0, i8** %appname4, align 8, !tbaa !34
  br label %cleanup

cleanup:                                          ; preds = %if.then, %if.end3
  %retval.0 = phi i32 [ 1, %if.end3 ], [ 0, %if.then ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define void @OPENSSL_INIT_free(%struct.ossl_init_settings_st* noundef %settings) local_unnamed_addr #0 {
entry:
  %filename = getelementptr inbounds %struct.ossl_init_settings_st, %struct.ossl_init_settings_st* %settings, i64 0, i32 0
  %0 = load i8*, i8** %filename, align 8, !tbaa !33
  tail call void @free(i8* noundef %0) #9
  %appname = getelementptr inbounds %struct.ossl_init_settings_st, %struct.ossl_init_settings_st* %settings, i64 0, i32 1
  %1 = load i8*, i8** %appname, align 8, !tbaa !34
  tail call void @free(i8* noundef %1) #9
  %2 = bitcast %struct.ossl_init_settings_st* %settings to i8*
  tail call void @free(i8* noundef %2) #9
  ret void
}

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare i32 @strcmp(i8* noundef, i8* noundef) local_unnamed_addr #8

declare void @OPENSSL_LH_doall_arg(%struct.lhash_st* noundef, void (i8*, i8*)* noundef, i8* noundef) local_unnamed_addr #1

declare i32 @OPENSSL_sk_push(%struct.stack_st* noundef, i8* noundef) local_unnamed_addr #1

declare i32 @ossl_ctype_check(i32 noundef, i32 noundef) local_unnamed_addr #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline nounwind readonly uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nobuiltin nounwind "no-builtins" }
attributes #10 = { nobuiltin "no-builtins" }
attributes #11 = { nounwind }
attributes #12 = { nobuiltin nounwind readonly willreturn "no-builtins" }

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
!8 = !{!9, !5, i64 16}
!9 = !{!"conf_method_st", !5, i64 0, !5, i64 8, !5, i64 16, !5, i64 24, !5, i64 32, !5, i64 40, !5, i64 48, !5, i64 56, !5, i64 64, !5, i64 72}
!10 = !{!11, !5, i64 16}
!11 = !{!"conf_st", !5, i64 0, !5, i64 8, !5, i64 16, !12, i64 24, !12, i64 28, !5, i64 32, !5, i64 40}
!12 = !{!"int", !6, i64 0}
!13 = !{!11, !5, i64 0}
!14 = !{!9, !5, i64 40}
!15 = !{!16, !16, i64 0}
!16 = !{!"long", !6, i64 0}
!17 = !{!9, !5, i64 56}
!18 = !{!9, !5, i64 64}
!19 = !{!6, !6, i64 0}
!20 = distinct !{!20, !21}
!21 = !{!"llvm.loop.mustprogress"}
!22 = !{!9, !5, i64 32}
!23 = !{!9, !5, i64 48}
!24 = !{!9, !5, i64 8}
!25 = !{!11, !5, i64 40}
!26 = !{!9, !5, i64 24}
!27 = !{!28, !5, i64 8}
!28 = !{!"", !5, i64 0, !5, i64 8, !5, i64 16}
!29 = !{!28, !5, i64 0}
!30 = !{!9, !5, i64 72}
!31 = !{!32, !16, i64 16}
!32 = !{!"ossl_init_settings_st", !5, i64 0, !5, i64 8, !16, i64 16}
!33 = !{!32, !5, i64 0}
!34 = !{!32, !5, i64 8}
