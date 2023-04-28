; ModuleID = 'crypto/conf/conf_def.c'
source_filename = "crypto/conf/conf_def.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.conf_method_st = type { i8*, %struct.conf_st* (%struct.conf_method_st*)*, i32 (%struct.conf_st*)*, i32 (%struct.conf_st*)*, i32 (%struct.conf_st*)*, i32 (%struct.conf_st*, %struct.bio_st*, i64*)*, i32 (%struct.conf_st*, %struct.bio_st*)*, i32 (%struct.conf_st*, i8)*, i32 (%struct.conf_st*, i8)*, i32 (%struct.conf_st*, i8*, i64*)* }
%struct.conf_st = type { %struct.conf_method_st*, i8*, %struct.lhash_st_CONF_VALUE*, i32, i32, i8*, %struct.ossl_lib_ctx_st* }
%struct.lhash_st_CONF_VALUE = type { %union.lh_CONF_VALUE_dummy }
%union.lh_CONF_VALUE_dummy = type { i8* }
%struct.ossl_lib_ctx_st = type opaque
%struct.bio_st = type opaque
%struct.OPENSSL_dir_context_st = type opaque
%struct.buf_mem_st = type { i64, i8*, i64, i64 }
%struct.CONF_VALUE = type { i8*, i8*, i8* }
%struct.stack_st_BIO = type opaque
%struct.stack_st = type opaque
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.lhash_st = type opaque

@default_method = internal global %struct.conf_method_st { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i32 0, i32 0), %struct.conf_st* (%struct.conf_method_st*)* @def_create, i32 (%struct.conf_st*)* @def_init_default, i32 (%struct.conf_st*)* @def_destroy, i32 (%struct.conf_st*)* @def_destroy_data, i32 (%struct.conf_st*, %struct.bio_st*, i64*)* @def_load_bio, i32 (%struct.conf_st*, %struct.bio_st*)* @def_dump, i32 (%struct.conf_st*, i8)* @def_is_number, i32 (%struct.conf_st*, i8)* @def_to_int, i32 (%struct.conf_st*, i8*, i64*)* @def_load }, align 8
@WIN32_method = internal global %struct.conf_method_st { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.25, i32 0, i32 0), %struct.conf_st* (%struct.conf_method_st*)* @def_create, i32 (%struct.conf_st*)* @def_init_WIN32, i32 (%struct.conf_st*)* @def_destroy, i32 (%struct.conf_st*)* @def_destroy_data, i32 (%struct.conf_st*, %struct.bio_st*, i64*)* @def_load_bio, i32 (%struct.conf_st*, %struct.bio_st*)* @def_dump, i32 (%struct.conf_st*, i8)* @def_is_number, i32 (%struct.conf_st*, i8)* @def_to_int, i32 (%struct.conf_st*, i8*, i64*)* @def_load }, align 8
@.str = private unnamed_addr constant [16 x i8] c"OpenSSL default\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"crypto/conf/conf_def.c\00", align 1
@CONF_type_default = internal constant [128 x i16] [i16 8, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 16, i16 16, i16 0, i16 0, i16 16, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 16, i16 512, i16 64, i16 128, i16 4096, i16 512, i16 512, i16 64, i16 0, i16 0, i16 512, i16 512, i16 512, i16 512, i16 512, i16 512, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 0, i16 512, i16 0, i16 0, i16 0, i16 512, i16 512, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 0, i16 32, i16 0, i16 512, i16 256, i16 64, i16 4, i16 4, i16 4, i16 4, i16 4, i16 4, i16 4, i16 4, i16 4, i16 4, i16 4, i16 4, i16 4, i16 4, i16 4, i16 4, i16 4, i16 4, i16 4, i16 4, i16 4, i16 4, i16 4, i16 4, i16 4, i16 4, i16 0, i16 512, i16 0, i16 512, i16 0], align 16
@__func__.def_load_bio = private unnamed_addr constant [13 x i8] c"def_load_bio\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"default\00", align 1
@__const.def_load_bio.utf8_bom = private unnamed_addr constant [3 x i8] c"\EF\BB\BF", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c".pragma\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"dollarid\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"abspath\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"includedir\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c".include\00", align 1
@.str.8 = private unnamed_addr constant [21 x i8] c"OPENSSL_CONF_INCLUDE\00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"HERE-->%s\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"%ld\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"line \00", align 1
@.str.13 = private unnamed_addr constant [6 x i8] c".conf\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c".cnf\00", align 1
@__func__.get_next_file = private unnamed_addr constant [14 x i8] c"get_next_file\00", align 1
@.str.15 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@__func__.str_copy = private unnamed_addr constant [9 x i8] c"str_copy\00", align 1
@.str.16 = private unnamed_addr constant [3 x i8] c"on\00", align 1
@.str.17 = private unnamed_addr constant [5 x i8] c"true\00", align 1
@.str.18 = private unnamed_addr constant [4 x i8] c"off\00", align 1
@.str.19 = private unnamed_addr constant [6 x i8] c"false\00", align 1
@__func__.parsebool = private unnamed_addr constant [10 x i8] c"parsebool\00", align 1
@__func__.process_include = private unnamed_addr constant [16 x i8] c"process_include\00", align 1
@.str.20 = private unnamed_addr constant [17 x i8] c"calling stat(%s)\00", align 1
@.str.21 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.22 = private unnamed_addr constant [12 x i8] c"[%s] %s=%s\0A\00", align 1
@.str.23 = private unnamed_addr constant [8 x i8] c"[[%s]]\0A\00", align 1
@.str.24 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@__func__.def_load = private unnamed_addr constant [9 x i8] c"def_load\00", align 1
@.str.25 = private unnamed_addr constant [6 x i8] c"WIN32\00", align 1
@CONF_type_win32 = internal constant [128 x i16] [i16 8, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 16, i16 16, i16 0, i16 0, i16 16, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 16, i16 512, i16 1024, i16 0, i16 4096, i16 512, i16 512, i16 0, i16 0, i16 0, i16 512, i16 512, i16 512, i16 512, i16 512, i16 512, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 0, i16 2560, i16 0, i16 0, i16 0, i16 512, i16 512, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 0, i16 0, i16 0, i16 512, i16 256, i16 0, i16 4, i16 4, i16 4, i16 4, i16 4, i16 4, i16 4, i16 4, i16 4, i16 4, i16 4, i16 4, i16 4, i16 4, i16 4, i16 4, i16 4, i16 4, i16 4, i16 4, i16 4, i16 4, i16 4, i16 4, i16 4, i16 4, i16 0, i16 512, i16 0, i16 512, i16 0], align 16

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define nonnull %struct.conf_method_st* @NCONF_default() local_unnamed_addr #0 {
entry:
  ret %struct.conf_method_st* @default_method
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define nonnull %struct.conf_method_st* @NCONF_WIN32() local_unnamed_addr #0 {
entry:
  ret %struct.conf_method_st* @WIN32_method
}

; Function Attrs: noinline nounwind uwtable
define internal %struct.conf_st* @def_create(%struct.conf_method_st* nocapture noundef readonly %meth) #1 {
entry:
  %call = tail call i8* @CRYPTO_malloc(i64 noundef 48, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 noundef 115) #12
  %0 = bitcast i8* %call to %struct.conf_st*
  %cmp.not = icmp eq i8* %call, null
  br i1 %cmp.not, label %if.end4, label %if.then

if.then:                                          ; preds = %entry
  %init = getelementptr inbounds %struct.conf_method_st, %struct.conf_method_st* %meth, i64 0, i32 2
  %1 = load i32 (%struct.conf_st*)*, i32 (%struct.conf_st*)** %init, align 8, !tbaa !4
  %call1 = tail call i32 %1(%struct.conf_st* noundef nonnull %0) #12
  %cmp2 = icmp eq i32 %call1, 0
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.then
  tail call void @CRYPTO_free(i8* noundef nonnull %call, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 noundef 118) #12
  br label %if.end4

if.end4:                                          ; preds = %if.then, %if.then3, %entry
  %ret.0 = phi %struct.conf_st* [ null, %if.then3 ], [ %0, %if.then ], [ null, %entry ]
  ret %struct.conf_st* %ret.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @def_init_default(%struct.conf_st* noundef %conf) #1 {
entry:
  %cmp = icmp eq %struct.conf_st* %conf, null
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %0 = bitcast %struct.conf_st* %conf to i8*
  %call = tail call i8* @memset(i8* noundef nonnull %0, i32 noundef 0, i64 noundef 48) #12
  %meth = getelementptr inbounds %struct.conf_st, %struct.conf_st* %conf, i64 0, i32 0
  store %struct.conf_method_st* @default_method, %struct.conf_method_st** %meth, align 8, !tbaa !9
  %meth_data = getelementptr inbounds %struct.conf_st, %struct.conf_st* %conf, i64 0, i32 1
  store i8* bitcast ([128 x i16]* @CONF_type_default to i8*), i8** %meth_data, align 8, !tbaa !12
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @def_destroy(%struct.conf_st* noundef %conf) #1 {
entry:
  %call = tail call i32 @def_destroy_data(%struct.conf_st* noundef %conf) #13
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %return, label %if.then

if.then:                                          ; preds = %entry
  %0 = bitcast %struct.conf_st* %conf to i8*
  tail call void @CRYPTO_free(i8* noundef %0, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 noundef 153) #12
  br label %return

return:                                           ; preds = %entry, %if.then
  %retval.0 = phi i32 [ 1, %if.then ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @def_destroy_data(%struct.conf_st* noundef %conf) #1 {
entry:
  %cmp = icmp eq %struct.conf_st* %conf, null
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  tail call void @_CONF_free_data(%struct.conf_st* noundef nonnull %conf) #12
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @def_load_bio(%struct.conf_st* noundef %conf, %struct.bio_st* noundef %in, i64* noundef writeonly %line) #1 {
entry:
  %btmp = alloca [24 x i8], align 16
  %section = alloca i8*, align 8
  %dirpath = alloca i8*, align 8
  %dirctx = alloca %struct.OPENSSL_dir_context_st*, align 8
  %utf8_bom = alloca [3 x i8], align 1
  %include = alloca i8*, align 8
  %0 = getelementptr inbounds [24 x i8], [24 x i8]* %btmp, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %0) #14
  %1 = bitcast i8** %section to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #14
  %data = getelementptr inbounds %struct.conf_st, %struct.conf_st* %conf, i64 0, i32 2
  %2 = bitcast %struct.lhash_st_CONF_VALUE** %data to i8**
  %3 = load i8*, i8** %2, align 8, !tbaa !13
  %4 = bitcast i8** %dirpath to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #14
  store i8* null, i8** %dirpath, align 8, !tbaa !14
  %5 = bitcast %struct.OPENSSL_dir_context_st** %dirctx to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %5) #14
  store %struct.OPENSSL_dir_context_st* null, %struct.OPENSSL_dir_context_st** %dirctx, align 8, !tbaa !14
  %call = tail call %struct.buf_mem_st* @BUF_MEM_new() #12
  %cmp = icmp eq %struct.buf_mem_st* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #12
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 noundef 231, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @__func__.def_load_bio, i64 0, i64 0)) #12
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 14, i32 noundef 524295, i8* noundef null) #12
  br label %err

if.end:                                           ; preds = %entry
  %call1 = tail call i8* @CRYPTO_strdup(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 noundef 235) #12
  store i8* %call1, i8** %section, align 8, !tbaa !14
  %cmp2 = icmp eq i8* %call1, null
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  tail call void @ERR_new() #12
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 noundef 237, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @__func__.def_load_bio, i64 0, i64 0)) #12
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 14, i32 noundef 786688, i8* noundef null) #12
  br label %err

if.end4:                                          ; preds = %if.end
  %call5 = tail call i32 @_CONF_new_data(%struct.conf_st* noundef nonnull %conf) #12
  %cmp6 = icmp eq i32 %call5, 0
  br i1 %cmp6, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.end4
  tail call void @ERR_new() #12
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 noundef 242, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @__func__.def_load_bio, i64 0, i64 0)) #12
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 14, i32 noundef 786688, i8* noundef null) #12
  br label %err

if.end8:                                          ; preds = %if.end4
  %call9 = tail call %struct.CONF_VALUE* @_CONF_new_section(%struct.conf_st* noundef nonnull %conf, i8* noundef nonnull %call1) #12
  %cmp10 = icmp eq %struct.CONF_VALUE* %call9, null
  br i1 %cmp10, label %if.then11, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end8
  %call13870887904 = call i64 @BUF_MEM_grow(%struct.buf_mem_st* noundef nonnull %call, i64 noundef 512) #12
  %tobool.not871888905 = icmp eq i64 %call13870887904, 0
  br i1 %tobool.not871888905, label %if.then14, label %if.end15.lr.ph.lr.ph.lr.ph

if.end15.lr.ph.lr.ph.lr.ph:                       ; preds = %for.cond.preheader
  %data16 = getelementptr inbounds %struct.buf_mem_st, %struct.buf_mem_st* %call, i64 0, i32 1
  %6 = getelementptr inbounds [3 x i8], [3 x i8]* %utf8_bom, i64 0, i64 0
  %includedir = getelementptr inbounds %struct.conf_st, %struct.conf_st* %conf, i64 0, i32 5
  %flag_abspath = getelementptr inbounds %struct.conf_st, %struct.conf_st* %conf, i64 0, i32 4
  %flag_dollarid = getelementptr inbounds %struct.conf_st, %struct.conf_st* %conf, i64 0, i32 3
  %7 = bitcast i8** %include to i8*
  br label %if.end15.lr.ph.lr.ph

if.then11:                                        ; preds = %if.end8
  tail call void @ERR_new() #12
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 noundef 248, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @__func__.def_load_bio, i64 0, i64 0)) #12
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 14, i32 noundef 103, i8* noundef null) #12
  br label %err

if.then14:                                        ; preds = %cleanup160, %cleanup336, %for.cond.backedge, %for.cond.preheader
  %8 = phi i8* [ %call1, %for.cond.preheader ], [ %27, %for.cond.backedge ], [ %27, %cleanup336 ], [ %.pre1090, %cleanup160 ]
  %.lcssa837856.lcssa = phi i8* [ null, %for.cond.preheader ], [ %10, %for.cond.backedge ], [ %dirpath.promoted855, %cleanup336 ], [ %dirpath.promoted855886, %cleanup160 ]
  %biosk.0.ph689.lcssa829 = phi %struct.stack_st_BIO* [ null, %for.cond.preheader ], [ %biosk.0.ph689891, %for.cond.backedge ], [ %biosk.3, %cleanup336 ], [ %biosk.0.ph689891, %cleanup160 ]
  %eline.0.lcssa = phi i64 [ 0, %for.cond.preheader ], [ %eline.1, %for.cond.backedge ], [ %eline.1, %cleanup336 ], [ %eline.1, %cleanup160 ]
  %in.addr.0.lcssa = phi %struct.bio_st* [ %in, %for.cond.preheader ], [ %in.addr.1, %for.cond.backedge ], [ %in.addr.6, %cleanup336 ], [ %in.addr.1, %cleanup160 ]
  store i8* %.lcssa837856.lcssa, i8** %dirpath, align 8, !tbaa !14
  call void @ERR_new() #12
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 noundef 256, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @__func__.def_load_bio, i64 0, i64 0)) #12
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 14, i32 noundef 524295, i8* noundef null) #12
  br label %err

if.end15:                                         ; preds = %if.end15.lr.ph, %for.cond.backedge
  %in.addr.0877 = phi %struct.bio_st* [ %in.addr.0.ph690893, %if.end15.lr.ph ], [ %in.addr.1, %for.cond.backedge ]
  %bufnum.0876 = phi i32 [ 0, %if.end15.lr.ph ], [ %bufnum.0.be, %for.cond.backedge ]
  %eline.0875 = phi i64 [ %eline.0.ph688890, %if.end15.lr.ph ], [ %eline.1, %for.cond.backedge ]
  %first_call.0874 = phi i32 [ %first_call.0.ph687889, %if.end15.lr.ph ], [ 0, %for.cond.backedge ]
  %tobool48873 = phi i1 [ false, %if.end15.lr.ph ], [ %tobool48.be, %for.cond.backedge ]
  %.lcssa837856872 = phi i8* [ %dirpath.promoted855894, %if.end15.lr.ph ], [ %10, %for.cond.backedge ]
  %9 = load i8*, i8** %data16, align 8, !tbaa !15
  %idxprom = sext i32 %bufnum.0876 to i64
  %arrayidx = getelementptr inbounds i8, i8* %9, i64 %idxprom
  store i8 0, i8* %arrayidx, align 1, !tbaa !18
  %arrayidx24 = getelementptr inbounds i8, i8* %arrayidx, i64 511
  %add.ptr = getelementptr inbounds i8, i8* %arrayidx, i64 3
  br label %read_retry

read_retry:                                       ; preds = %cleanup65, %if.end15
  %10 = phi i8* [ %.lcssa837856872, %if.end15 ], [ %16, %cleanup65 ]
  %first_call.1 = phi i32 [ %first_call.0874, %if.end15 ], [ 0, %cleanup65 ]
  %in.addr.1 = phi %struct.bio_st* [ %in.addr.0877, %if.end15 ], [ %in.addr.4, %cleanup65 ]
  %cmp17.not = icmp eq %struct.bio_st* %in.addr.1, null
  br i1 %cmp17.not, label %if.end23, label %land.lhs.true

land.lhs.true:                                    ; preds = %read_retry
  %call19 = call i32 @BIO_gets(%struct.bio_st* noundef nonnull %in.addr.1, i8* noundef nonnull %arrayidx, i32 noundef 511) #12
  %cmp20 = icmp slt i32 %call19, 0
  br i1 %cmp20, label %err.loopexit, label %if.end23

if.end23:                                         ; preds = %land.lhs.true, %read_retry
  store i8 0, i8* %arrayidx24, align 1, !tbaa !18
  %call25 = call i64 @strlen(i8* noundef nonnull %arrayidx) #15
  %conv26 = trunc i64 %call25 to i32
  %tobool27.not = icmp eq i32 %first_call.1, 0
  br i1 %tobool27.not, label %if.end44, label %if.then28

if.then28:                                        ; preds = %if.end23
  call void @llvm.lifetime.start.p0i8(i64 3, i8* nonnull %6) #14
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(3) %6, i8* noundef nonnull align 1 dereferenceable(3) getelementptr inbounds ([3 x i8], [3 x i8]* @__const.def_load_bio.utf8_bom, i64 0, i64 0), i64 3, i1 false)
  %cmp29 = icmp sgt i32 %conv26, 2
  br i1 %cmp29, label %land.lhs.true31, label %if.end43

land.lhs.true31:                                  ; preds = %if.then28
  %call32 = call i32 @memcmp(i8* noundef nonnull %arrayidx, i8* noundef nonnull %6, i64 noundef 3) #15
  %cmp33 = icmp eq i32 %call32, 0
  br i1 %cmp33, label %if.then35, label %if.end43

if.then35:                                        ; preds = %land.lhs.true31
  %sub = add nsw i32 %conv26, -3
  %11 = zext i32 %sub to i64
  %call37 = call i8* @memmove(i8* noundef nonnull %arrayidx, i8* noundef nonnull %add.ptr, i64 noundef %11) #12
  %arrayidx40 = getelementptr inbounds i8, i8* %arrayidx, i64 %11
  store i8 0, i8* %arrayidx40, align 1, !tbaa !18
  br label %if.end43

if.end43:                                         ; preds = %if.then35, %land.lhs.true31, %if.then28
  %i.0 = phi i32 [ %sub, %if.then35 ], [ %conv26, %land.lhs.true31 ], [ %conv26, %if.then28 ]
  call void @llvm.lifetime.end.p0i8(i64 3, i8* nonnull %6) #14
  br label %if.end44

if.end44:                                         ; preds = %if.end43, %if.end23
  %i.1 = phi i32 [ %i.0, %if.end43 ], [ %conv26, %if.end23 ]
  %cmp45 = icmp ne i32 %i.1, 0
  %or.cond = or i1 %tobool48873, %cmp45
  br i1 %or.cond, label %while.cond.preheader, label %if.then49

while.cond.preheader:                             ; preds = %if.end44
  %cmp68839 = icmp sgt i32 %i.1, 0
  br i1 %cmp68839, label %while.body.preheader, label %while.end

while.body.preheader:                             ; preds = %while.cond.preheader
  %12 = zext i32 %i.1 to i64
  br label %while.body

if.then49:                                        ; preds = %if.end44
  %13 = load %struct.OPENSSL_dir_context_st*, %struct.OPENSSL_dir_context_st** %dirctx, align 8, !tbaa !14
  %cmp50.not = icmp eq %struct.OPENSSL_dir_context_st* %13, null
  br i1 %cmp50.not, label %if.end58, label %if.then52

if.then52:                                        ; preds = %if.then49
  %call53 = call fastcc %struct.bio_st* @get_next_file(i8* noundef %10, %struct.OPENSSL_dir_context_st** noundef nonnull %dirctx) #13
  %cmp54.not = icmp eq %struct.bio_st* %call53, null
  br i1 %cmp54.not, label %cleanup.thread, label %cleanup65

cleanup.thread:                                   ; preds = %if.then52
  call void @CRYPTO_free(i8* noundef %10, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 noundef 293) #12
  br label %if.end58

if.end58:                                         ; preds = %cleanup.thread, %if.then49
  %14 = phi i8* [ null, %cleanup.thread ], [ %10, %if.then49 ]
  %call59 = call fastcc %struct.stack_st* @ossl_check_BIO_sk_type(%struct.stack_st_BIO* noundef %biosk.0.ph689891) #13
  %call60 = call i8* @OPENSSL_sk_pop(%struct.stack_st* noundef %call59) #12
  %cmp61 = icmp eq i8* %call60, null
  br i1 %cmp61, label %for.end, label %if.else64

if.else64:                                        ; preds = %if.end58
  %15 = bitcast i8* %call60 to %struct.bio_st*
  br label %cleanup65

cleanup65:                                        ; preds = %if.then52, %if.else64
  %16 = phi i8* [ %14, %if.else64 ], [ %10, %if.then52 ]
  %in.addr.4 = phi %struct.bio_st* [ %15, %if.else64 ], [ %call53, %if.then52 ]
  call void @BIO_vfree(%struct.bio_st* noundef %in.addr.1) #12
  br label %read_retry

while.body:                                       ; preds = %while.body.preheader, %if.else84
  %indvars.iv = phi i64 [ %12, %while.body.preheader ], [ %indvars.iv.next, %if.else84 ]
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %17 = and i64 %indvars.iv.next, 4294967295
  %arrayidx72 = getelementptr inbounds i8, i8* %arrayidx, i64 %17
  %18 = load i8, i8* %arrayidx72, align 1, !tbaa !18
  switch i8 %18, label %while.end.loopexit.split.loop.exit [
    i8 13, label %if.else84
    i8 10, label %if.else84
  ]

if.else84:                                        ; preds = %while.body, %while.body
  %cmp68 = icmp ugt i64 %indvars.iv, 1
  br i1 %cmp68, label %while.body, label %while.end, !llvm.loop !19

while.end.loopexit.split.loop.exit:               ; preds = %while.body
  %19 = trunc i64 %indvars.iv to i32
  br label %while.end

while.end:                                        ; preds = %if.else84, %while.end.loopexit.split.loop.exit, %while.cond.preheader
  %i.2.lcssa = phi i32 [ %i.1, %while.cond.preheader ], [ %19, %while.end.loopexit.split.loop.exit ], [ 0, %if.else84 ]
  %cmp88 = icmp eq i32 %i.2.lcssa, %i.1
  %or.cond663 = select i1 %cmp45, i1 %cmp88, i1 false
  br i1 %or.cond663, label %if.end94, label %if.else91

if.else91:                                        ; preds = %while.end
  %idxprom92 = sext i32 %i.2.lcssa to i64
  %arrayidx93 = getelementptr inbounds i8, i8* %arrayidx, i64 %idxprom92
  store i8 0, i8* %arrayidx93, align 1, !tbaa !18
  %inc = add nsw i64 %eline.0875, 1
  br label %if.end94

if.end94:                                         ; preds = %while.end, %if.else91
  %eline.1 = phi i64 [ %inc, %if.else91 ], [ %eline.0875, %while.end ]
  %add95 = add nsw i32 %i.2.lcssa, %bufnum.0876
  %cmp96 = icmp sgt i32 %add95, 0
  br i1 %cmp96, label %if.then98, label %if.end115

if.then98:                                        ; preds = %if.end94
  %20 = load i8*, i8** %data16, align 8, !tbaa !15
  %sub100 = add nsw i32 %add95, -1
  %21 = zext i32 %sub100 to i64
  %arrayidx102 = getelementptr inbounds i8, i8* %20, i64 %21
  %22 = load i8, i8* %arrayidx102, align 1, !tbaa !18
  %call104 = call fastcc i32 @is_keytype(%struct.conf_st* noundef %conf, i8 noundef signext %22, i16 noundef zeroext 32) #13
  %tobool105.not = icmp eq i32 %call104, 0
  br i1 %tobool105.not, label %if.end115, label %land.lhs.true106

land.lhs.true106:                                 ; preds = %if.then98
  %cmp107 = icmp ult i32 %add95, 2
  br i1 %cmp107, label %for.cond.backedge, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true106
  %arrayidx109 = getelementptr inbounds i8, i8* %arrayidx102, i64 -1
  %23 = load i8, i8* %arrayidx109, align 1, !tbaa !18
  %call110 = call fastcc i32 @is_keytype(%struct.conf_st* noundef %conf, i8 noundef signext %23, i16 noundef zeroext 32) #13
  %tobool111.not = icmp eq i32 %call110, 0
  %brmerge = select i1 %tobool111.not, i1 true, i1 %or.cond663
  %sub100.mux = select i1 %tobool111.not, i32 %sub100, i32 %add95
  br i1 %brmerge, label %for.cond.backedge, label %if.end118

if.end115:                                        ; preds = %if.then98, %if.end94
  br i1 %or.cond663, label %for.cond.backedge, label %if.end118

for.cond.backedge:                                ; preds = %lor.lhs.false, %land.lhs.true106, %if.then225, %if.then234, %if.else230, %if.then216, %if.end115, %if.end118, %if.end382
  %tobool48.be = phi i1 [ false, %if.end118 ], [ true, %if.end115 ], [ false, %if.end382 ], [ false, %if.then216 ], [ false, %if.else230 ], [ false, %if.then234 ], [ false, %if.then225 ], [ true, %land.lhs.true106 ], [ true, %lor.lhs.false ]
  %bufnum.0.be = phi i32 [ 0, %if.end118 ], [ %add95, %if.end115 ], [ 0, %if.end382 ], [ 0, %if.then216 ], [ 0, %if.else230 ], [ 0, %if.then234 ], [ 0, %if.then225 ], [ 0, %land.lhs.true106 ], [ %sub100.mux, %lor.lhs.false ]
  %add = add nsw i32 %bufnum.0.be, 512
  %conv = sext i32 %add to i64
  %call13 = call i64 @BUF_MEM_grow(%struct.buf_mem_st* noundef nonnull %call, i64 noundef %conv) #12
  %tobool.not = icmp eq i64 %call13, 0
  br i1 %tobool.not, label %if.then14, label %if.end15

if.end118:                                        ; preds = %lor.lhs.false, %if.end115
  %24 = load i8*, i8** %data16, align 8, !tbaa !15
  call fastcc void @clear_comments(%struct.conf_st* noundef %conf, i8* noundef %24) #13
  %call120 = call fastcc i8* @eat_ws(%struct.conf_st* noundef %conf, i8* noundef %24) #13
  %25 = load i8, i8* %call120, align 1, !tbaa !18
  %call121 = call fastcc i32 @is_keytype(%struct.conf_st* noundef %conf, i8 noundef signext %25, i16 noundef zeroext 8) #13
  %tobool122.not = icmp eq i32 %call121, 0
  br i1 %tobool122.not, label %if.end124, label %for.cond.backedge

if.end124:                                        ; preds = %if.end118
  %cmp126 = icmp eq i8 %25, 91
  br i1 %cmp126, label %if.then128, label %if.else162

if.then128:                                       ; preds = %if.end124
  store i8* %10, i8** %dirpath, align 8, !tbaa !14
  %incdec.ptr = getelementptr inbounds i8, i8* %call120, i64 1
  %call129 = call fastcc i8* @eat_ws(%struct.conf_st* noundef %conf, i8* noundef nonnull %incdec.ptr) #13
  br label %again130

again130:                                         ; preds = %land.lhs.true140, %if.then128
  %ss.0 = phi i8* [ %call129, %if.then128 ], [ %call132, %land.lhs.true140 ]
  %call131 = call fastcc i8* @eat_alpha_numeric(%struct.conf_st* noundef %conf, i8* noundef %ss.0) #13
  %call132 = call fastcc i8* @eat_ws(%struct.conf_st* noundef %conf, i8* noundef %call131) #13
  %26 = load i8, i8* %call132, align 1, !tbaa !18
  switch i8 %26, label %land.lhs.true140 [
    i8 93, label %if.end145
    i8 0, label %if.end144
  ]

land.lhs.true140:                                 ; preds = %again130
  %cmp141.not = icmp eq i8* %ss.0, %call132
  br i1 %cmp141.not, label %if.end144, label %again130

if.end144:                                        ; preds = %again130, %land.lhs.true140
  call void @ERR_new() #12
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 noundef 366, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @__func__.def_load_bio, i64 0, i64 0)) #12
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 14, i32 noundef 100, i8* noundef null) #12
  br label %err

if.end145:                                        ; preds = %again130
  store i8 0, i8* %call131, align 1, !tbaa !18
  %call146 = call fastcc i32 @str_copy(%struct.conf_st* noundef %conf, i8* noundef null, i8** noundef nonnull %section, i8* noundef %call129) #13
  %tobool147.not = icmp eq i32 %call146, 0
  %.pre1090 = load i8*, i8** %section, align 8, !tbaa !14
  br i1 %tobool147.not, label %err, label %if.end149

if.end149:                                        ; preds = %if.end145
  %call150 = call %struct.CONF_VALUE* @_CONF_get_section(%struct.conf_st* noundef %conf, i8* noundef %.pre1090) #12
  %cmp151 = icmp eq %struct.CONF_VALUE* %call150, null
  br i1 %cmp151, label %if.end155, label %cleanup160

if.end155:                                        ; preds = %if.end149
  %call154 = call %struct.CONF_VALUE* @_CONF_new_section(%struct.conf_st* noundef %conf, i8* noundef %.pre1090) #12
  %cmp156 = icmp eq %struct.CONF_VALUE* %call154, null
  br i1 %cmp156, label %if.then158, label %cleanup160

if.then158:                                       ; preds = %if.end155
  call void @ERR_new() #12
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 noundef 375, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @__func__.def_load_bio, i64 0, i64 0)) #12
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 14, i32 noundef 103, i8* noundef null) #12
  br label %err

cleanup160:                                       ; preds = %if.end149, %if.end155
  %sv.2 = phi %struct.CONF_VALUE* [ %call154, %if.end155 ], [ %call150, %if.end149 ]
  %dirpath.promoted855886 = load i8*, i8** %dirpath, align 8, !tbaa !14
  %call13870887 = call i64 @BUF_MEM_grow(%struct.buf_mem_st* noundef nonnull %call, i64 noundef 512) #12
  %tobool.not871888 = icmp eq i64 %call13870887, 0
  br i1 %tobool.not871888, label %if.then14, label %if.end15.lr.ph.lr.ph

if.end15.lr.ph.lr.ph:                             ; preds = %if.end15.lr.ph.lr.ph.lr.ph, %cleanup160
  %27 = phi i8* [ %call1, %if.end15.lr.ph.lr.ph.lr.ph ], [ %.pre1090, %cleanup160 ]
  %dirpath.promoted855886911 = phi i8* [ null, %if.end15.lr.ph.lr.ph.lr.ph ], [ %dirpath.promoted855886, %cleanup160 ]
  %in.addr.0.ph910 = phi %struct.bio_st* [ %in, %if.end15.lr.ph.lr.ph.lr.ph ], [ %in.addr.1, %cleanup160 ]
  %biosk.0.ph909 = phi %struct.stack_st_BIO* [ null, %if.end15.lr.ph.lr.ph.lr.ph ], [ %biosk.0.ph689891, %cleanup160 ]
  %sv.0.ph908 = phi %struct.CONF_VALUE* [ %call9, %if.end15.lr.ph.lr.ph.lr.ph ], [ %sv.2, %cleanup160 ]
  %eline.0.ph907 = phi i64 [ 0, %if.end15.lr.ph.lr.ph.lr.ph ], [ %eline.1, %cleanup160 ]
  %first_call.0.ph906 = phi i32 [ 1, %if.end15.lr.ph.lr.ph.lr.ph ], [ 0, %cleanup160 ]
  br label %if.end15.lr.ph

if.else162:                                       ; preds = %if.end124
  %call163 = call fastcc i8* @eat_alpha_numeric(%struct.conf_st* noundef %conf, i8* noundef nonnull %call120) #13
  %28 = load i8, i8* %call163, align 1, !tbaa !18
  %cmp166 = icmp eq i8 %28, 58
  br i1 %cmp166, label %land.lhs.true168, label %if.end177

land.lhs.true168:                                 ; preds = %if.else162
  %arrayidx169 = getelementptr inbounds i8, i8* %call163, i64 1
  %29 = load i8, i8* %arrayidx169, align 1, !tbaa !18
  %cmp171 = icmp eq i8 %29, 58
  br i1 %cmp171, label %if.then173, label %if.end177

if.then173:                                       ; preds = %land.lhs.true168
  store i8 0, i8* %call163, align 1, !tbaa !18
  %add.ptr174 = getelementptr inbounds i8, i8* %call163, i64 2
  %call175 = call fastcc i8* @eat_alpha_numeric(%struct.conf_st* noundef %conf, i8* noundef nonnull %add.ptr174) #13
  br label %if.end177

if.end177:                                        ; preds = %if.else162, %land.lhs.true168, %if.then173
  %end.0 = phi i8* [ %call175, %if.then173 ], [ %call163, %land.lhs.true168 ], [ %call163, %if.else162 ]
  %psection.0 = phi i8* [ %call120, %if.then173 ], [ %27, %land.lhs.true168 ], [ %27, %if.else162 ]
  %pname.0 = phi i8* [ %add.ptr174, %if.then173 ], [ %call120, %land.lhs.true168 ], [ %call120, %if.else162 ]
  %call178 = call fastcc i8* @eat_ws(%struct.conf_st* noundef %conf, i8* noundef %end.0) #13
  %call179 = call i32 @strncmp(i8* noundef nonnull %pname.0, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i64 noundef 7) #15
  %cmp180 = icmp eq i32 %call179, 0
  br i1 %cmp180, label %land.lhs.true182, label %if.else245

land.lhs.true182:                                 ; preds = %if.end177
  %add.ptr183 = getelementptr inbounds i8, i8* %pname.0, i64 7
  %cmp184.not = icmp eq i8* %call178, %add.ptr183
  %30 = load i8, i8* %call178, align 1, !tbaa !18
  %cmp188 = icmp eq i8 %30, 61
  br i1 %cmp184.not, label %lor.lhs.false186, label %if.then190

lor.lhs.false186:                                 ; preds = %land.lhs.true182
  br i1 %cmp188, label %if.then194, label %if.else245

if.then190:                                       ; preds = %land.lhs.true182
  br i1 %cmp188, label %if.then194, label %if.end197

if.then194:                                       ; preds = %lor.lhs.false186, %if.then190
  %incdec.ptr195 = getelementptr inbounds i8, i8* %call178, i64 1
  %call196 = call fastcc i8* @eat_ws(%struct.conf_st* noundef %conf, i8* noundef nonnull %incdec.ptr195) #13
  br label %if.end197

if.end197:                                        ; preds = %if.then194, %if.then190
  %p.0 = phi i8* [ %call196, %if.then194 ], [ %call178, %if.then190 ]
  call fastcc void @trim_ws(%struct.conf_st* noundef %conf, i8* noundef %p.0) #13
  %call198 = call i8* @strchr(i8* noundef %p.0, i32 noundef 58) #15
  %cmp199 = icmp eq i8* %call198, null
  %cmp202 = icmp eq i8* %call198, %p.0
  %or.cond664 = or i1 %cmp199, %cmp202
  br i1 %or.cond664, label %if.then209, label %lor.lhs.false204

lor.lhs.false204:                                 ; preds = %if.end197
  %arrayidx205 = getelementptr inbounds i8, i8* %call198, i64 1
  %31 = load i8, i8* %arrayidx205, align 1, !tbaa !18
  %cmp207 = icmp eq i8 %31, 0
  br i1 %cmp207, label %if.then209, label %if.end210

if.then209:                                       ; preds = %lor.lhs.false204, %if.end197
  store i8* %10, i8** %dirpath, align 8, !tbaa !14
  call void @ERR_new() #12
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 noundef 405, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @__func__.def_load_bio, i64 0, i64 0)) #12
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 14, i32 noundef 122, i8* noundef null) #12
  br label %err

if.end210:                                        ; preds = %lor.lhs.false204
  store i8 0, i8* %call198, align 1, !tbaa !18
  call fastcc void @trim_ws(%struct.conf_st* noundef %conf, i8* noundef %p.0) #13
  %call212 = call fastcc i8* @eat_ws(%struct.conf_st* noundef %conf, i8* noundef nonnull %arrayidx205) #13
  %call213 = call i32 @strcmp(i8* noundef %p.0, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0)) #15
  %cmp214 = icmp eq i32 %call213, 0
  br i1 %cmp214, label %if.then216, label %if.else221

if.then216:                                       ; preds = %if.end210
  %call217 = call fastcc i32 @parsebool(i8* noundef %call212, i32* noundef nonnull %flag_dollarid) #13
  %tobool218.not = icmp eq i32 %call217, 0
  br i1 %tobool218.not, label %err.loopexit685.loopexit.split.loop.exit842, label %for.cond.backedge

if.else221:                                       ; preds = %if.end210
  %call222 = call i32 @strcmp(i8* noundef %p.0, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0)) #15
  %cmp223 = icmp eq i32 %call222, 0
  br i1 %cmp223, label %if.then225, label %if.else230

if.then225:                                       ; preds = %if.else221
  %call226 = call fastcc i32 @parsebool(i8* noundef %call212, i32* noundef nonnull %flag_abspath) #13
  %tobool227.not = icmp eq i32 %call226, 0
  br i1 %tobool227.not, label %err.loopexit685.loopexit.split.loop.exit, label %for.cond.backedge

if.else230:                                       ; preds = %if.else221
  %call231 = call i32 @strcmp(i8* noundef %p.0, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0)) #15
  %cmp232 = icmp eq i32 %call231, 0
  br i1 %cmp232, label %if.then234, label %for.cond.backedge

if.then234:                                       ; preds = %if.else230
  %call235 = call i8* @CRYPTO_strdup(i8* noundef %call212, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 noundef 427) #12
  store i8* %call235, i8** %includedir, align 8, !tbaa !21
  %cmp236 = icmp eq i8* %call235, null
  br i1 %cmp236, label %if.then238, label %for.cond.backedge

if.then238:                                       ; preds = %if.then234
  store i8* %10, i8** %dirpath, align 8, !tbaa !14
  call void @ERR_new() #12
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 noundef 428, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @__func__.def_load_bio, i64 0, i64 0)) #12
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 14, i32 noundef 786688, i8* noundef null) #12
  br label %err

if.else245:                                       ; preds = %lor.lhs.false186, %if.end177
  %call246 = call i32 @strncmp(i8* noundef nonnull %pname.0, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0), i64 noundef 8) #15
  %cmp247 = icmp eq i32 %call246, 0
  br i1 %cmp247, label %land.lhs.true249, label %if.else341

land.lhs.true249:                                 ; preds = %if.else245
  store i8* %10, i8** %dirpath, align 8, !tbaa !14
  %add.ptr250 = getelementptr inbounds i8, i8* %pname.0, i64 8
  %cmp251.not = icmp eq i8* %call178, %add.ptr250
  br i1 %cmp251.not, label %lor.lhs.false253, label %if.then257

lor.lhs.false253:                                 ; preds = %land.lhs.true249
  %32 = load i8, i8* %call178, align 1, !tbaa !18
  %cmp255 = icmp eq i8 %32, 61
  br i1 %cmp255, label %if.then257, label %if.then345

if.then257:                                       ; preds = %lor.lhs.false253, %land.lhs.true249
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %7) #14
  store i8* null, i8** %include, align 8, !tbaa !14
  %call259 = call i8* @ossl_safe_getenv(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.8, i64 0, i64 0)) #12
  %cmp260 = icmp eq i8* %call259, null
  br i1 %cmp260, label %if.then262, label %if.end264

if.then262:                                       ; preds = %if.then257
  %33 = load i8*, i8** %includedir, align 8, !tbaa !21
  br label %if.end264

if.end264:                                        ; preds = %if.then262, %if.then257
  %include_dir.0 = phi i8* [ %33, %if.then262 ], [ %call259, %if.then257 ]
  %34 = load i8, i8* %call178, align 1, !tbaa !18
  %cmp266 = icmp eq i8 %34, 61
  br i1 %cmp266, label %if.then268, label %if.end271

if.then268:                                       ; preds = %if.end264
  %incdec.ptr269 = getelementptr inbounds i8, i8* %call178, i64 1
  %call270 = call fastcc i8* @eat_ws(%struct.conf_st* noundef %conf, i8* noundef nonnull %incdec.ptr269) #13
  br label %if.end271

if.end271:                                        ; preds = %if.then268, %if.end264
  %p.1 = phi i8* [ %call270, %if.then268 ], [ %call178, %if.end264 ]
  call fastcc void @trim_ws(%struct.conf_st* noundef %conf, i8* noundef %p.1) #13
  %call272 = call fastcc i32 @str_copy(%struct.conf_st* noundef %conf, i8* noundef %psection.0, i8** noundef nonnull %include, i8* noundef %p.1) #13
  %tobool273.not = icmp eq i32 %call272, 0
  br i1 %tobool273.not, label %cleanup336.thread, label %if.end275

if.end275:                                        ; preds = %if.end271
  %cmp276.not = icmp eq i8* %include_dir.0, null
  %.pre = load i8*, i8** %include, align 8, !tbaa !14
  br i1 %cmp276.not, label %if.end302, label %land.lhs.true278

land.lhs.true278:                                 ; preds = %if.end275
  %call279 = call fastcc i32 @ossl_is_absolute_path(i8* noundef %.pre) #13
  %tobool280.not = icmp eq i32 %call279, 0
  br i1 %tobool280.not, label %if.then281, label %if.end302

if.then281:                                       ; preds = %land.lhs.true278
  %call282 = call i64 @strlen(i8* noundef nonnull %include_dir.0) #15
  %call283 = call i64 @strlen(i8* noundef %.pre) #15
  %add284 = add i64 %call282, 2
  %add285 = add i64 %add284, %call283
  %call286 = call i8* @CRYPTO_malloc(i64 noundef %add285, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 noundef 458) #12
  %cmp287 = icmp eq i8* %call286, null
  br i1 %cmp287, label %cleanup298.thread, label %if.end290

cleanup298.thread:                                ; preds = %if.then281
  call void @ERR_new() #12
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 noundef 460, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @__func__.def_load_bio, i64 0, i64 0)) #12
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 14, i32 noundef 786688, i8* noundef null) #12
  call void @CRYPTO_free(i8* noundef %.pre, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 noundef 461) #12
  br label %cleanup336.thread

if.end290:                                        ; preds = %if.then281
  %call291 = call i64 @OPENSSL_strlcpy(i8* noundef nonnull %call286, i8* noundef nonnull %include_dir.0, i64 noundef %add285) #12
  %call292 = call fastcc i32 @ossl_ends_with_dirsep(i8* noundef nonnull %call286) #13
  %tobool293.not = icmp eq i32 %call292, 0
  br i1 %tobool293.not, label %if.then294, label %cleanup298

if.then294:                                       ; preds = %if.end290
  %call295 = call i64 @OPENSSL_strlcat(i8* noundef nonnull %call286, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0), i64 noundef %add285) #12
  br label %cleanup298

cleanup298:                                       ; preds = %if.end290, %if.then294
  %call297 = call i64 @OPENSSL_strlcat(i8* noundef nonnull %call286, i8* noundef %.pre, i64 noundef %add285) #12
  call void @CRYPTO_free(i8* noundef %.pre, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 noundef 469) #12
  br label %if.end302

if.end302:                                        ; preds = %if.end275, %land.lhs.true278, %cleanup298
  %include_path.0 = phi i8* [ %call286, %cleanup298 ], [ %.pre, %land.lhs.true278 ], [ %.pre, %if.end275 ]
  %35 = load i32, i32* %flag_abspath, align 4, !tbaa !22
  %tobool304.not = icmp eq i32 %35, 0
  br i1 %tobool304.not, label %if.end309, label %land.lhs.true305

land.lhs.true305:                                 ; preds = %if.end302
  %call306 = call fastcc i32 @ossl_is_absolute_path(i8* noundef %include_path.0) #13
  %tobool307.not = icmp eq i32 %call306, 0
  br i1 %tobool307.not, label %if.then308, label %if.end309

if.then308:                                       ; preds = %land.lhs.true305
  call void @ERR_new() #12
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 noundef 476, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @__func__.def_load_bio, i64 0, i64 0)) #12
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 14, i32 noundef 125, i8* noundef null) #12
  br label %cleanup336.thread

if.end309:                                        ; preds = %land.lhs.true305, %if.end302
  %call310 = call fastcc %struct.bio_st* @process_include(i8* noundef %include_path.0, %struct.OPENSSL_dir_context_st** noundef nonnull %dirctx, i8** noundef nonnull %dirpath) #13
  %36 = load i8*, i8** %dirpath, align 8, !tbaa !14
  %cmp311.not = icmp eq i8* %include_path.0, %36
  br i1 %cmp311.not, label %if.end314, label %if.then313

if.then313:                                       ; preds = %if.end309
  call void @CRYPTO_free(i8* noundef nonnull %include_path.0, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 noundef 485) #12
  br label %if.end314

if.end314:                                        ; preds = %if.then313, %if.end309
  %cmp315.not = icmp eq %struct.bio_st* %call310, null
  br i1 %cmp315.not, label %cleanup336, label %if.then317

if.then317:                                       ; preds = %if.end314
  %cmp318 = icmp eq %struct.stack_st_BIO* %biosk.0.ph689891, null
  br i1 %cmp318, label %if.then320, label %if.end327

if.then320:                                       ; preds = %if.then317
  %call321 = call %struct.stack_st* @OPENSSL_sk_new_null() #12
  %37 = bitcast %struct.stack_st* %call321 to %struct.stack_st_BIO*
  %cmp322 = icmp eq %struct.stack_st* %call321, null
  br i1 %cmp322, label %if.then324, label %if.end327

if.then324:                                       ; preds = %if.then320
  call void @ERR_new() #12
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 noundef 496, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @__func__.def_load_bio, i64 0, i64 0)) #12
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 14, i32 noundef 786688, i8* noundef null) #12
  %call325 = call i32 @BIO_free(%struct.bio_st* noundef nonnull %call310) #12
  br label %cleanup336.thread

if.end327:                                        ; preds = %if.then320, %if.then317
  %biosk.1 = phi %struct.stack_st_BIO* [ %37, %if.then320 ], [ %biosk.0.ph689891, %if.then317 ]
  %call328 = call fastcc %struct.stack_st* @ossl_check_BIO_sk_type(%struct.stack_st_BIO* noundef %biosk.1) #13
  %38 = bitcast %struct.bio_st* %in.addr.1 to i8*
  %call330 = call i32 @OPENSSL_sk_push(%struct.stack_st* noundef %call328, i8* noundef %38) #12
  %tobool331.not = icmp eq i32 %call330, 0
  br i1 %tobool331.not, label %if.then332, label %cleanup336

if.then332:                                       ; preds = %if.end327
  call void @ERR_new() #12
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 noundef 502, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @__func__.def_load_bio, i64 0, i64 0)) #12
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 14, i32 noundef 786688, i8* noundef null) #12
  %call333 = call i32 @BIO_free(%struct.bio_st* noundef nonnull %call310) #12
  br label %cleanup336.thread

cleanup336.thread:                                ; preds = %if.end271, %if.then324, %if.then332, %if.then308, %cleanup298.thread
  %biosk.3.ph = phi %struct.stack_st_BIO* [ %biosk.0.ph689891, %cleanup298.thread ], [ %biosk.0.ph689891, %if.then308 ], [ %biosk.1, %if.then332 ], [ null, %if.then324 ], [ %biosk.0.ph689891, %if.end271 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %7) #14
  br label %err

cleanup336:                                       ; preds = %if.end314, %if.end327
  %biosk.3 = phi %struct.stack_st_BIO* [ %biosk.0.ph689891, %if.end314 ], [ %biosk.1, %if.end327 ]
  %in.addr.6 = phi %struct.bio_st* [ %in.addr.1, %if.end314 ], [ %call310, %if.end327 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %7) #14
  %dirpath.promoted855 = load i8*, i8** %dirpath, align 8, !tbaa !14
  %call13870 = call i64 @BUF_MEM_grow(%struct.buf_mem_st* noundef nonnull %call, i64 noundef 512) #12
  %tobool.not871 = icmp eq i64 %call13870, 0
  br i1 %tobool.not871, label %if.then14, label %if.end15.lr.ph

if.end15.lr.ph:                                   ; preds = %if.end15.lr.ph.lr.ph, %cleanup336
  %dirpath.promoted855894 = phi i8* [ %dirpath.promoted855886911, %if.end15.lr.ph.lr.ph ], [ %dirpath.promoted855, %cleanup336 ]
  %in.addr.0.ph690893 = phi %struct.bio_st* [ %in.addr.0.ph910, %if.end15.lr.ph.lr.ph ], [ %in.addr.6, %cleanup336 ]
  %biosk.0.ph689891 = phi %struct.stack_st_BIO* [ %biosk.0.ph909, %if.end15.lr.ph.lr.ph ], [ %biosk.3, %cleanup336 ]
  %eline.0.ph688890 = phi i64 [ %eline.0.ph907, %if.end15.lr.ph.lr.ph ], [ %eline.1, %cleanup336 ]
  %first_call.0.ph687889 = phi i32 [ %first_call.0.ph906, %if.end15.lr.ph.lr.ph ], [ 0, %cleanup336 ]
  br label %if.end15

if.else341:                                       ; preds = %if.else245
  %.pr681 = load i8, i8* %call178, align 1, !tbaa !18
  %cmp343.not = icmp eq i8 %.pr681, 61
  br i1 %cmp343.not, label %if.end348, label %if.then345.loopexit

if.then345.loopexit:                              ; preds = %if.else341
  store i8* %10, i8** %dirpath, align 8, !tbaa !14
  br label %if.then345

if.then345:                                       ; preds = %lor.lhs.false253, %if.then345.loopexit
  call void @ERR_new() #12
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 noundef 511, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @__func__.def_load_bio, i64 0, i64 0)) #12
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 14, i32 noundef 101, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i64 0, i64 0), i8* noundef nonnull %call178) #12
  br label %err

if.end348:                                        ; preds = %if.else341
  store i8 0, i8* %end.0, align 1, !tbaa !18
  %incdec.ptr349 = getelementptr inbounds i8, i8* %call178, i64 1
  %call350 = call fastcc i8* @eat_ws(%struct.conf_st* noundef %conf, i8* noundef nonnull %incdec.ptr349) #13
  call fastcc void @trim_ws(%struct.conf_st* noundef %conf, i8* noundef %call350) #13
  %call351 = call i8* @CRYPTO_malloc(i64 noundef 24, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 noundef 520) #12
  %39 = bitcast i8* %call351 to %struct.CONF_VALUE*
  %cmp352 = icmp eq i8* %call351, null
  br i1 %cmp352, label %if.then354, label %if.end355

if.then354:                                       ; preds = %if.end348
  store i8* %10, i8** %dirpath, align 8, !tbaa !14
  call void @ERR_new() #12
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 noundef 521, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @__func__.def_load_bio, i64 0, i64 0)) #12
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 14, i32 noundef 786688, i8* noundef null) #12
  br label %err

if.end355:                                        ; preds = %if.end348
  %call356 = call i8* @CRYPTO_strdup(i8* noundef nonnull %pname.0, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 noundef 524) #12
  %name = getelementptr inbounds i8, i8* %call351, i64 8
  %40 = bitcast i8* %name to i8**
  store i8* %call356, i8** %40, align 8, !tbaa !23
  %value = getelementptr inbounds i8, i8* %call351, i64 16
  %41 = bitcast i8* %value to i8**
  store i8* null, i8** %41, align 8, !tbaa !25
  %cmp358 = icmp eq i8* %call356, null
  br i1 %cmp358, label %if.then360, label %if.end361

if.then360:                                       ; preds = %if.end355
  %42 = bitcast i8* %call351 to %struct.CONF_VALUE*
  store i8* %10, i8** %dirpath, align 8, !tbaa !14
  call void @ERR_new() #12
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 noundef 527, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @__func__.def_load_bio, i64 0, i64 0)) #12
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 14, i32 noundef 786688, i8* noundef null) #12
  br label %err

if.end361:                                        ; preds = %if.end355
  %call363 = call fastcc i32 @str_copy(%struct.conf_st* noundef %conf, i8* noundef %psection.0, i8** noundef nonnull %41, i8* noundef %call350) #13
  %tobool364.not = icmp eq i32 %call363, 0
  br i1 %tobool364.not, label %err.loopexit685.loopexit.split.loop.exit847, label %if.end366

if.end366:                                        ; preds = %if.end361
  %call367 = call i32 @strcmp(i8* noundef %psection.0, i8* noundef %27) #15
  %cmp368.not = icmp eq i32 %call367, 0
  br i1 %cmp368.not, label %if.end382, label %if.then370

if.then370:                                       ; preds = %if.end366
  %call371 = call %struct.CONF_VALUE* @_CONF_get_section(%struct.conf_st* noundef %conf, i8* noundef %psection.0) #12
  %cmp372 = icmp eq %struct.CONF_VALUE* %call371, null
  br i1 %cmp372, label %if.end376, label %if.end382

if.end376:                                        ; preds = %if.then370
  %call375 = call %struct.CONF_VALUE* @_CONF_new_section(%struct.conf_st* noundef %conf, i8* noundef %psection.0) #12
  %cmp377 = icmp eq %struct.CONF_VALUE* %call375, null
  br i1 %cmp377, label %if.then379, label %if.end382

if.then379:                                       ; preds = %if.end376
  %43 = bitcast i8* %call351 to %struct.CONF_VALUE*
  store i8* %10, i8** %dirpath, align 8, !tbaa !14
  call void @ERR_new() #12
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 noundef 539, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @__func__.def_load_bio, i64 0, i64 0)) #12
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 14, i32 noundef 103, i8* noundef null) #12
  br label %err

if.end382:                                        ; preds = %if.then370, %if.end366, %if.end376
  %tv.1 = phi %struct.CONF_VALUE* [ %call375, %if.end376 ], [ %sv.0.ph908, %if.end366 ], [ %call371, %if.then370 ]
  %call383 = call i32 @_CONF_add_string(%struct.conf_st* noundef %conf, %struct.CONF_VALUE* noundef %tv.1, %struct.CONF_VALUE* noundef nonnull %39) #12
  %cmp384 = icmp eq i32 %call383, 0
  br i1 %cmp384, label %if.then386, label %for.cond.backedge

if.then386:                                       ; preds = %if.end382
  %44 = bitcast i8* %call351 to %struct.CONF_VALUE*
  store i8* %10, i8** %dirpath, align 8, !tbaa !14
  call void @ERR_new() #12
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 noundef 545, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @__func__.def_load_bio, i64 0, i64 0)) #12
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 14, i32 noundef 786688, i8* noundef null) #12
  br label %err

for.end:                                          ; preds = %if.end58
  store i8* %14, i8** %dirpath, align 8, !tbaa !14
  call void @BUF_MEM_free(%struct.buf_mem_st* noundef nonnull %call) #12
  call void @CRYPTO_free(i8* noundef %27, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 noundef 552) #12
  call void @OPENSSL_sk_free(%struct.stack_st* noundef %call59) #12
  br label %cleanup425

err.loopexit:                                     ; preds = %land.lhs.true
  store i8* %10, i8** %dirpath, align 8, !tbaa !14
  br label %err

err.loopexit685.loopexit.split.loop.exit:         ; preds = %if.then225
  store i8* %10, i8** %dirpath, align 8, !tbaa !14
  br label %err

err.loopexit685.loopexit.split.loop.exit842:      ; preds = %if.then216
  store i8* %10, i8** %dirpath, align 8, !tbaa !14
  br label %err

err.loopexit685.loopexit.split.loop.exit847:      ; preds = %if.end361
  %45 = bitcast i8* %call351 to %struct.CONF_VALUE*
  store i8* %10, i8** %dirpath, align 8, !tbaa !14
  br label %err

err:                                              ; preds = %if.end145, %err.loopexit685.loopexit.split.loop.exit847, %err.loopexit685.loopexit.split.loop.exit842, %err.loopexit685.loopexit.split.loop.exit, %err.loopexit, %if.then238, %if.then209, %if.then158, %if.end144, %cleanup336.thread, %if.then386, %if.then379, %if.then360, %if.then354, %if.then345, %if.then14, %if.then11, %if.then7, %if.then3, %if.then
  %46 = phi i8* [ null, %if.then ], [ null, %if.then3 ], [ %call1, %if.then7 ], [ %call1, %if.then11 ], [ %27, %if.then345 ], [ %27, %if.then354 ], [ %27, %if.then360 ], [ %27, %if.then379 ], [ %27, %if.then386 ], [ %8, %if.then14 ], [ %27, %cleanup336.thread ], [ %27, %if.end144 ], [ %.pre1090, %if.then158 ], [ %27, %if.then209 ], [ %27, %if.then238 ], [ %27, %err.loopexit ], [ %27, %err.loopexit685.loopexit.split.loop.exit ], [ %27, %err.loopexit685.loopexit.split.loop.exit842 ], [ %27, %err.loopexit685.loopexit.split.loop.exit847 ], [ %.pre1090, %if.end145 ]
  %eline.2 = phi i64 [ 0, %if.then ], [ 0, %if.then3 ], [ 0, %if.then7 ], [ 0, %if.then11 ], [ %eline.1, %if.then345 ], [ %eline.1, %if.then354 ], [ %eline.1, %if.then360 ], [ %eline.1, %if.then379 ], [ %eline.1, %if.then386 ], [ %eline.0.lcssa, %if.then14 ], [ %eline.1, %cleanup336.thread ], [ %eline.1, %if.end144 ], [ %eline.1, %if.then158 ], [ %eline.1, %if.then209 ], [ %eline.1, %if.then238 ], [ %eline.0875, %err.loopexit ], [ %eline.1, %err.loopexit685.loopexit.split.loop.exit ], [ %eline.1, %err.loopexit685.loopexit.split.loop.exit842 ], [ %eline.1, %err.loopexit685.loopexit.split.loop.exit847 ], [ %eline.1, %if.end145 ]
  %v.1 = phi %struct.CONF_VALUE* [ null, %if.then ], [ null, %if.then3 ], [ null, %if.then7 ], [ null, %if.then11 ], [ null, %if.then345 ], [ null, %if.then354 ], [ %42, %if.then360 ], [ %43, %if.then379 ], [ %44, %if.then386 ], [ null, %if.then14 ], [ null, %cleanup336.thread ], [ null, %if.end144 ], [ null, %if.then158 ], [ null, %if.then209 ], [ null, %if.then238 ], [ null, %err.loopexit ], [ null, %err.loopexit685.loopexit.split.loop.exit ], [ null, %err.loopexit685.loopexit.split.loop.exit842 ], [ %45, %err.loopexit685.loopexit.split.loop.exit847 ], [ null, %if.end145 ]
  %biosk.4 = phi %struct.stack_st_BIO* [ null, %if.then ], [ null, %if.then3 ], [ null, %if.then7 ], [ null, %if.then11 ], [ %biosk.0.ph689891, %if.then345 ], [ %biosk.0.ph689891, %if.then354 ], [ %biosk.0.ph689891, %if.then360 ], [ %biosk.0.ph689891, %if.then379 ], [ %biosk.0.ph689891, %if.then386 ], [ %biosk.0.ph689.lcssa829, %if.then14 ], [ %biosk.3.ph, %cleanup336.thread ], [ %biosk.0.ph689891, %if.end144 ], [ %biosk.0.ph689891, %if.then158 ], [ %biosk.0.ph689891, %if.then209 ], [ %biosk.0.ph689891, %if.then238 ], [ %biosk.0.ph689891, %err.loopexit ], [ %biosk.0.ph689891, %err.loopexit685.loopexit.split.loop.exit ], [ %biosk.0.ph689891, %err.loopexit685.loopexit.split.loop.exit842 ], [ %biosk.0.ph689891, %err.loopexit685.loopexit.split.loop.exit847 ], [ %biosk.0.ph689891, %if.end145 ]
  %in.addr.7 = phi %struct.bio_st* [ %in, %if.then ], [ %in, %if.then3 ], [ %in, %if.then7 ], [ %in, %if.then11 ], [ %in.addr.1, %if.then345 ], [ %in.addr.1, %if.then354 ], [ %in.addr.1, %if.then360 ], [ %in.addr.1, %if.then379 ], [ %in.addr.1, %if.then386 ], [ %in.addr.0.lcssa, %if.then14 ], [ %in.addr.1, %cleanup336.thread ], [ %in.addr.1, %if.end144 ], [ %in.addr.1, %if.then158 ], [ %in.addr.1, %if.then209 ], [ %in.addr.1, %if.then238 ], [ %in.addr.1, %err.loopexit ], [ %in.addr.1, %err.loopexit685.loopexit.split.loop.exit ], [ %in.addr.1, %err.loopexit685.loopexit.split.loop.exit842 ], [ %in.addr.1, %err.loopexit685.loopexit.split.loop.exit847 ], [ %in.addr.1, %if.end145 ]
  call void @BUF_MEM_free(%struct.buf_mem_st* noundef %call) #12
  call void @CRYPTO_free(i8* noundef %46, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 noundef 562) #12
  %call391 = call fastcc %struct.stack_st* @ossl_check_const_BIO_sk_type(%struct.stack_st_BIO* noundef %biosk.4) #13
  %call392916 = call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call391) #12
  %cmp393917 = icmp sgt i32 %call392916, 0
  %call396 = call fastcc %struct.stack_st* @ossl_check_BIO_sk_type(%struct.stack_st_BIO* noundef %biosk.4) #13
  br i1 %cmp393917, label %while.body395, label %while.end398

while.body395:                                    ; preds = %err, %while.body395
  %in.addr.8918 = phi %struct.bio_st* [ %47, %while.body395 ], [ %in.addr.7, %err ]
  %call397 = call i8* @OPENSSL_sk_pop(%struct.stack_st* noundef %call396) #12
  %47 = bitcast i8* %call397 to %struct.bio_st*
  call void @BIO_vfree(%struct.bio_st* noundef %in.addr.8918) #12
  %call392 = call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call391) #12
  %cmp393 = icmp sgt i32 %call392, 0
  br i1 %cmp393, label %while.body395, label %while.end398, !llvm.loop !26

while.end398:                                     ; preds = %while.body395, %err
  call void @OPENSSL_sk_free(%struct.stack_st* noundef %call396) #12
  %48 = load i8*, i8** %dirpath, align 8, !tbaa !14
  call void @CRYPTO_free(i8* noundef %48, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 noundef 575) #12
  %49 = load %struct.OPENSSL_dir_context_st*, %struct.OPENSSL_dir_context_st** %dirctx, align 8, !tbaa !14
  %cmp400.not = icmp eq %struct.OPENSSL_dir_context_st* %49, null
  br i1 %cmp400.not, label %if.end404, label %if.then402

if.then402:                                       ; preds = %while.end398
  %call403 = call i32 @OPENSSL_DIR_end(%struct.OPENSSL_dir_context_st** noundef nonnull %dirctx) #12
  br label %if.end404

if.end404:                                        ; preds = %if.then402, %while.end398
  %cmp405.not = icmp eq i64* %line, null
  br i1 %cmp405.not, label %if.end408, label %if.then407

if.then407:                                       ; preds = %if.end404
  store i64 %eline.2, i64* %line, align 8, !tbaa !27
  br label %if.end408

if.end408:                                        ; preds = %if.then407, %if.end404
  %call410 = call i32 (i8*, i64, i8*, ...) @BIO_snprintf(i8* noundef nonnull %0, i64 noundef 24, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), i64 noundef %eline.2) #12
  call void (i32, ...) @ERR_add_error_data(i32 noundef 2, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i64 0, i64 0), i8* noundef nonnull %0) #12
  %50 = load %struct.lhash_st_CONF_VALUE*, %struct.lhash_st_CONF_VALUE** %data, align 8, !tbaa !13
  %51 = bitcast %struct.lhash_st_CONF_VALUE* %50 to i8*
  %cmp413.not = icmp eq i8* %3, %51
  br i1 %cmp413.not, label %if.end418, label %if.then415

if.then415:                                       ; preds = %if.end408
  call void @CONF_free(%struct.lhash_st_CONF_VALUE* noundef %50) #12
  store %struct.lhash_st_CONF_VALUE* null, %struct.lhash_st_CONF_VALUE** %data, align 8, !tbaa !13
  br label %if.end418

if.end418:                                        ; preds = %if.then415, %if.end408
  %cmp419.not = icmp eq %struct.CONF_VALUE* %v.1, null
  br i1 %cmp419.not, label %cleanup425, label %if.then421

if.then421:                                       ; preds = %if.end418
  %name422 = getelementptr inbounds %struct.CONF_VALUE, %struct.CONF_VALUE* %v.1, i64 0, i32 1
  %52 = load i8*, i8** %name422, align 8, !tbaa !23
  call void @CRYPTO_free(i8* noundef %52, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 noundef 588) #12
  %value423 = getelementptr inbounds %struct.CONF_VALUE, %struct.CONF_VALUE* %v.1, i64 0, i32 2
  %53 = load i8*, i8** %value423, align 8, !tbaa !25
  call void @CRYPTO_free(i8* noundef %53, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 noundef 589) #12
  %54 = bitcast %struct.CONF_VALUE* %v.1 to i8*
  call void @CRYPTO_free(i8* noundef nonnull %54, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 noundef 590) #12
  br label %cleanup425

cleanup425:                                       ; preds = %if.end418, %if.then421, %for.end
  %retval.0 = phi i32 [ 1, %for.end ], [ 0, %if.then421 ], [ 0, %if.end418 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %5) #14
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #14
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #14
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %0) #14
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @def_dump(%struct.conf_st* nocapture noundef readonly %conf, %struct.bio_st* noundef %out) #1 {
entry:
  %data = getelementptr inbounds %struct.conf_st, %struct.conf_st* %conf, i64 0, i32 2
  %0 = load %struct.lhash_st_CONF_VALUE*, %struct.lhash_st_CONF_VALUE** %data, align 8, !tbaa !13
  tail call fastcc void @lh_CONF_VALUE_doall_BIO(%struct.lhash_st_CONF_VALUE* noundef %0, %struct.bio_st* noundef %out) #13
  ret i32 1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal i32 @def_is_number(%struct.conf_st* nocapture noundef readonly %conf, i8 noundef signext %c) #2 {
entry:
  %call = tail call fastcc i32 @is_keytype(%struct.conf_st* noundef %conf, i8 noundef signext %c, i16 noundef zeroext 1) #13
  ret i32 %call
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal i32 @def_to_int(%struct.conf_st* nocapture noundef readnone %conf, i8 noundef signext %c) #0 {
entry:
  %conv = sext i8 %c to i32
  %sub = add nsw i32 %conv, -48
  ret i32 %sub
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @def_load(%struct.conf_st* noundef %conf, i8* noundef %name, i64* noundef %line) #1 {
entry:
  %call = tail call %struct.bio_st* @BIO_new_file(i8* noundef %name, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.24, i64 0, i64 0)) #12
  %cmp = icmp eq %struct.bio_st* %call, null
  br i1 %cmp, label %if.then, label %if.end5

if.then:                                          ; preds = %entry
  %call1 = tail call i64 @ERR_peek_last_error() #12
  %call2 = tail call fastcc i32 @ERR_GET_REASON(i64 noundef %call1) #13
  %cmp3 = icmp eq i32 %call2, 128
  tail call void @ERR_new() #12
  br i1 %cmp3, label %if.then4, label %if.else

if.then4:                                         ; preds = %if.then
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 noundef 179, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @__func__.def_load, i64 0, i64 0)) #12
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 14, i32 noundef 114, i8* noundef null) #12
  br label %cleanup

if.else:                                          ; preds = %if.then
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 noundef 181, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @__func__.def_load, i64 0, i64 0)) #12
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 14, i32 noundef 524290, i8* noundef null) #12
  br label %cleanup

if.end5:                                          ; preds = %entry
  %call6 = tail call i32 @def_load_bio(%struct.conf_st* noundef %conf, %struct.bio_st* noundef nonnull %call, i64* noundef %line) #13
  %call7 = tail call i32 @BIO_free(%struct.bio_st* noundef nonnull %call) #12
  br label %cleanup

cleanup:                                          ; preds = %if.then4, %if.else, %if.end5
  %retval.0 = phi i32 [ %call6, %if.end5 ], [ 0, %if.else ], [ 0, %if.then4 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #3

declare i8* @CRYPTO_malloc(i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #4

declare void @CRYPTO_free(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #3

; Function Attrs: nounwind
declare i8* @memset(i8* noundef, i32 noundef, i64 noundef) local_unnamed_addr #5

declare void @_CONF_free_data(%struct.conf_st* noundef) local_unnamed_addr #4

declare %struct.buf_mem_st* @BUF_MEM_new() local_unnamed_addr #4

declare void @ERR_new() local_unnamed_addr #4

declare void @ERR_set_debug(i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #4

declare void @ERR_set_error(i32 noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #4

declare i8* @CRYPTO_strdup(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #4

declare i32 @_CONF_new_data(%struct.conf_st* noundef) local_unnamed_addr #4

declare %struct.CONF_VALUE* @_CONF_new_section(%struct.conf_st* noundef, i8* noundef) local_unnamed_addr #4

declare i64 @BUF_MEM_grow(%struct.buf_mem_st* noundef, i64 noundef) local_unnamed_addr #4

declare i32 @BIO_gets(%struct.bio_st* noundef, i8* noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare i64 @strlen(i8* noundef) local_unnamed_addr #6

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #7

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare i32 @memcmp(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: nounwind
declare i8* @memmove(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.bio_st* @get_next_file(i8* noundef %path, %struct.OPENSSL_dir_context_st** noundef %dirctx) unnamed_addr #1 {
entry:
  %call = tail call i64 @strlen(i8* noundef %path) #15
  %add = add i64 %call, 2
  %call177 = tail call i8* @OPENSSL_DIR_read(%struct.OPENSSL_dir_context_st** noundef %dirctx, i8* noundef %path) #12
  %cmp.not78 = icmp eq i8* %call177, null
  br i1 %cmp.not78, label %while.end, label %while.body

while.body:                                       ; preds = %entry, %cleanup32
  %call179 = phi i8* [ %call1, %cleanup32 ], [ %call177, %entry ]
  %call2 = tail call i64 @strlen(i8* noundef nonnull %call179) #15
  %cmp3 = icmp ugt i64 %call2, 5
  br i1 %cmp3, label %land.lhs.true, label %lor.lhs.false

land.lhs.true:                                    ; preds = %while.body
  %add.ptr = getelementptr inbounds i8, i8* %call179, i64 -5
  %add.ptr4 = getelementptr inbounds i8, i8* %add.ptr, i64 %call2
  %call5 = tail call i32 @strcasecmp(i8* noundef nonnull %add.ptr4, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i64 0, i64 0)) #15
  %cmp6 = icmp eq i32 %call5, 0
  br i1 %cmp6, label %if.then, label %land.lhs.true8

lor.lhs.false:                                    ; preds = %while.body
  %cmp7 = icmp eq i64 %call2, 5
  br i1 %cmp7, label %land.lhs.true8, label %cleanup32

land.lhs.true8:                                   ; preds = %land.lhs.true, %lor.lhs.false
  %add.ptr9 = getelementptr inbounds i8, i8* %call179, i64 -4
  %add.ptr10 = getelementptr inbounds i8, i8* %add.ptr9, i64 %call2
  %call11 = tail call i32 @strcasecmp(i8* noundef nonnull %add.ptr10, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0)) #15
  %cmp12 = icmp eq i32 %call11, 0
  br i1 %cmp12, label %if.then, label %cleanup32

if.then:                                          ; preds = %land.lhs.true8, %land.lhs.true
  %add13 = add i64 %add, %call2
  %call14 = tail call i8* @CRYPTO_zalloc(i64 noundef %add13, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 noundef 847) #12
  %cmp15 = icmp eq i8* %call14, null
  br i1 %cmp15, label %cleanup32.thread, label %if.end

cleanup32.thread:                                 ; preds = %if.then
  tail call void @ERR_new() #12
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 noundef 849, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.get_next_file, i64 0, i64 0)) #12
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 14, i32 noundef 786688, i8* noundef null) #12
  br label %while.end

if.end:                                           ; preds = %if.then
  %0 = load i8, i8* %call14, align 1, !tbaa !18
  %cmp17 = icmp eq i8 %0, 0
  br i1 %cmp17, label %if.then19, label %cleanup

if.then19:                                        ; preds = %if.end
  %call20 = tail call i64 @OPENSSL_strlcpy(i8* noundef nonnull %call14, i8* noundef %path, i64 noundef %add13) #12
  %call21 = tail call i64 @OPENSSL_strlcat(i8* noundef nonnull %call14, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0), i64 noundef %add13) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then19
  %call23 = tail call i64 @OPENSSL_strlcat(i8* noundef nonnull %call14, i8* noundef nonnull %call179, i64 noundef %add13) #12
  %call24 = tail call %struct.bio_st* @BIO_new_file(i8* noundef nonnull %call14, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.15, i64 0, i64 0)) #12
  tail call void @CRYPTO_free(i8* noundef nonnull %call14, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 noundef 871) #12
  %cmp25.not = icmp eq %struct.bio_st* %call24, null
  br i1 %cmp25.not, label %cleanup32, label %cleanup36

cleanup32:                                        ; preds = %lor.lhs.false, %land.lhs.true8, %cleanup
  %call1 = tail call i8* @OPENSSL_DIR_read(%struct.OPENSSL_dir_context_st** noundef %dirctx, i8* noundef %path) #12
  %cmp.not = icmp eq i8* %call1, null
  br i1 %cmp.not, label %while.end, label %while.body

while.end:                                        ; preds = %cleanup32, %entry, %cleanup32.thread
  %call35 = tail call i32 @OPENSSL_DIR_end(%struct.OPENSSL_dir_context_st** noundef %dirctx) #12
  store %struct.OPENSSL_dir_context_st* null, %struct.OPENSSL_dir_context_st** %dirctx, align 8, !tbaa !14
  br label %cleanup36

cleanup36:                                        ; preds = %cleanup, %while.end
  %retval.4 = phi %struct.bio_st* [ null, %while.end ], [ %call24, %cleanup ]
  ret %struct.bio_st* %retval.4
}

declare void @BIO_vfree(%struct.bio_st* noundef) local_unnamed_addr #4

declare i8* @OPENSSL_sk_pop(%struct.stack_st* noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_BIO_sk_type(%struct.stack_st_BIO* noundef readnone %sk) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.stack_st_BIO* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal fastcc i32 @is_keytype(%struct.conf_st* nocapture noundef readonly %conf, i8 noundef signext %c, i16 noundef zeroext %type) unnamed_addr #2 {
entry:
  %cmp = icmp slt i8 %c, 0
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %meth_data = getelementptr inbounds %struct.conf_st, %struct.conf_st* %conf, i64 0, i32 1
  %0 = bitcast i8** %meth_data to i16**
  %1 = load i16*, i16** %0, align 8, !tbaa !12
  %idxprom = zext i8 %c to i64
  %arrayidx = getelementptr inbounds i16, i16* %1, i64 %idxprom
  %2 = load i16, i16* %arrayidx, align 2, !tbaa !28
  %and7 = and i16 %2, %type
  %tobool.not = icmp ne i16 %and7, 0
  %cond = zext i1 %tobool.not to i32
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %cond, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define internal fastcc void @clear_comments(%struct.conf_st* nocapture noundef readonly %conf, i8* noundef %p) unnamed_addr #8 {
entry:
  %0 = load i8, i8* %p, align 1, !tbaa !18
  %call58 = tail call fastcc i32 @is_keytype(%struct.conf_st* noundef %conf, i8 noundef signext %0, i16 noundef zeroext 2048) #13
  %tobool.not59 = icmp eq i32 %call58, 0
  br i1 %tobool.not59, label %if.end, label %return.sink.split

if.end:                                           ; preds = %entry, %if.end4
  %1 = phi i8 [ %2, %if.end4 ], [ %0, %entry ]
  %p.addr.060 = phi i8* [ %incdec.ptr, %if.end4 ], [ %p, %entry ]
  %call1 = tail call fastcc i32 @is_keytype(%struct.conf_st* noundef %conf, i8 noundef signext %1, i16 noundef zeroext 16) #13
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %for.cond5.preheader, label %if.end4

for.cond5.preheader:                              ; preds = %if.end
  %call661 = tail call fastcc i32 @is_keytype(%struct.conf_st* noundef %conf, i8 noundef signext %1, i16 noundef zeroext 128) #13
  %tobool7.not62 = icmp eq i32 %call661, 0
  br i1 %tobool7.not62, label %if.end9, label %return.sink.split

if.end4:                                          ; preds = %if.end
  %incdec.ptr = getelementptr inbounds i8, i8* %p.addr.060, i64 1
  %2 = load i8, i8* %incdec.ptr, align 1, !tbaa !18
  %call = tail call fastcc i32 @is_keytype(%struct.conf_st* noundef %conf, i8 noundef signext %2, i16 noundef zeroext 2048) #13
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %return.sink.split

if.end9:                                          ; preds = %for.cond5.preheader, %for.cond5.backedge
  %3 = phi i8 [ %4, %for.cond5.backedge ], [ %1, %for.cond5.preheader ]
  %p.addr.163 = phi i8* [ %p.addr.1.be, %for.cond5.backedge ], [ %p.addr.060, %for.cond5.preheader ]
  %call10 = tail call fastcc i32 @is_keytype(%struct.conf_st* noundef %conf, i8 noundef signext %3, i16 noundef zeroext 1024) #13
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end14, label %if.then12

if.then12:                                        ; preds = %if.end9
  %call13 = tail call fastcc i8* @scan_dquote(%struct.conf_st* noundef %conf, i8* noundef nonnull %p.addr.163) #13
  br label %for.cond5.backedge

for.cond5.backedge:                               ; preds = %if.then12, %if.then17, %if.then22, %if.else
  %p.addr.1.be = phi i8* [ %call13, %if.then12 ], [ %call18, %if.then17 ], [ %cond, %if.then22 ], [ %incdec.ptr30, %if.else ]
  %4 = load i8, i8* %p.addr.1.be, align 1, !tbaa !18
  %call6 = tail call fastcc i32 @is_keytype(%struct.conf_st* noundef %conf, i8 noundef signext %4, i16 noundef zeroext 128) #13
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end9, label %return.sink.split

if.end14:                                         ; preds = %if.end9
  %call15 = tail call fastcc i32 @is_keytype(%struct.conf_st* noundef %conf, i8 noundef signext %3, i16 noundef zeroext 64) #13
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.end19, label %if.then17

if.then17:                                        ; preds = %if.end14
  %call18 = tail call fastcc i8* @scan_quote(%struct.conf_st* noundef %conf, i8* noundef nonnull %p.addr.163) #13
  br label %for.cond5.backedge

if.end19:                                         ; preds = %if.end14
  %call20 = tail call fastcc i32 @is_keytype(%struct.conf_st* noundef %conf, i8 noundef signext %3, i16 noundef zeroext 32) #13
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.end26, label %if.then22

if.then22:                                        ; preds = %if.end19
  %arrayidx = getelementptr inbounds i8, i8* %p.addr.163, i64 1
  %5 = load i8, i8* %arrayidx, align 1, !tbaa !18
  %call23 = tail call fastcc i32 @is_keytype(%struct.conf_st* noundef %conf, i8 noundef signext %5, i16 noundef zeroext 8) #13
  %tobool24.not = icmp eq i32 %call23, 0
  %add.ptr25 = getelementptr inbounds i8, i8* %p.addr.163, i64 2
  %cond = select i1 %tobool24.not, i8* %add.ptr25, i8* %arrayidx
  br label %for.cond5.backedge

if.end26:                                         ; preds = %if.end19
  %call27 = tail call fastcc i32 @is_keytype(%struct.conf_st* noundef %conf, i8 noundef signext %3, i16 noundef zeroext 8) #13
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %if.else, label %return

if.else:                                          ; preds = %if.end26
  %incdec.ptr30 = getelementptr inbounds i8, i8* %p.addr.163, i64 1
  br label %for.cond5.backedge

return.sink.split:                                ; preds = %if.end4, %for.cond5.backedge, %for.cond5.preheader, %entry
  %p.addr.1.lcssa.sink = phi i8* [ %p, %entry ], [ %p.addr.060, %for.cond5.preheader ], [ %p.addr.1.be, %for.cond5.backedge ], [ %incdec.ptr, %if.end4 ]
  store i8 0, i8* %p.addr.1.lcssa.sink, align 1, !tbaa !18
  br label %return

return:                                           ; preds = %if.end26, %return.sink.split
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind readonly uwtable
define internal fastcc i8* @eat_ws(%struct.conf_st* nocapture noundef readonly %conf, i8* noundef readonly %p) unnamed_addr #9 {
entry:
  %0 = load i8, i8* %p, align 1, !tbaa !18
  %call7 = tail call fastcc i32 @is_keytype(%struct.conf_st* noundef %conf, i8 noundef signext %0, i16 noundef zeroext 16) #13
  %tobool.not8 = icmp eq i32 %call7, 0
  br i1 %tobool.not8, label %while.end, label %land.rhs

land.rhs:                                         ; preds = %entry, %while.body
  %1 = phi i8 [ %2, %while.body ], [ %0, %entry ]
  %p.addr.09 = phi i8* [ %incdec.ptr, %while.body ], [ %p, %entry ]
  %call1 = tail call fastcc i32 @is_keytype(%struct.conf_st* noundef %conf, i8 noundef signext %1, i16 noundef zeroext 8) #13
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %while.body, label %while.end

while.body:                                       ; preds = %land.rhs
  %incdec.ptr = getelementptr inbounds i8, i8* %p.addr.09, i64 1
  %2 = load i8, i8* %incdec.ptr, align 1, !tbaa !18
  %call = tail call fastcc i32 @is_keytype(%struct.conf_st* noundef %conf, i8 noundef signext %2, i16 noundef zeroext 16) #13
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %while.end, label %land.rhs, !llvm.loop !30

while.end:                                        ; preds = %land.rhs, %while.body, %entry
  %p.addr.0.lcssa = phi i8* [ %p, %entry ], [ %incdec.ptr, %while.body ], [ %p.addr.09, %land.rhs ]
  ret i8* %p.addr.0.lcssa
}

; Function Attrs: nofree noinline norecurse nosync nounwind readonly uwtable
define internal fastcc i8* @eat_alpha_numeric(%struct.conf_st* nocapture noundef readonly %conf, i8* noundef readonly %p) unnamed_addr #9 {
entry:
  %flag_dollarid = getelementptr inbounds %struct.conf_st, %struct.conf_st* %conf, i64 0, i32 3
  br label %for.cond

for.cond:                                         ; preds = %for.cond.backedge, %entry
  %p.addr.0 = phi i8* [ %p, %entry ], [ %p.addr.0.be, %for.cond.backedge ]
  %0 = load i8, i8* %p.addr.0, align 1, !tbaa !18
  %call = tail call fastcc i32 @is_keytype(%struct.conf_st* noundef %conf, i8 noundef signext %0, i16 noundef zeroext 32) #13
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %for.cond
  %arrayidx = getelementptr inbounds i8, i8* %p.addr.0, i64 1
  %1 = load i8, i8* %arrayidx, align 1, !tbaa !18
  %call1 = tail call fastcc i32 @is_keytype(%struct.conf_st* noundef %conf, i8 noundef signext %1, i16 noundef zeroext 8) #13
  %tobool2.not = icmp eq i32 %call1, 0
  %add.ptr3 = getelementptr inbounds i8, i8* %p.addr.0, i64 2
  %cond = select i1 %tobool2.not, i8* %add.ptr3, i8* %arrayidx
  br label %for.cond.backedge

for.cond.backedge:                                ; preds = %if.then, %if.end10
  %p.addr.0.be = phi i8* [ %cond, %if.then ], [ %incdec.ptr, %if.end10 ]
  br label %for.cond

if.end:                                           ; preds = %for.cond
  %call4 = tail call fastcc i32 @is_keytype(%struct.conf_st* noundef %conf, i8 noundef signext %0, i16 noundef zeroext 775) #13
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %lor.lhs.false, label %if.end10

lor.lhs.false:                                    ; preds = %if.end
  %2 = load i32, i32* %flag_dollarid, align 8, !tbaa !31
  %tobool6.not = icmp eq i32 %2, 0
  br i1 %tobool6.not, label %if.then9, label %land.lhs.true

land.lhs.true:                                    ; preds = %lor.lhs.false
  %call7 = tail call fastcc i32 @is_keytype(%struct.conf_st* noundef nonnull %conf, i8 noundef signext %0, i16 noundef zeroext 4096) #13
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.then9, label %if.end10

if.then9:                                         ; preds = %land.lhs.true, %lor.lhs.false
  ret i8* %p.addr.0

if.end10:                                         ; preds = %land.lhs.true, %if.end
  %incdec.ptr = getelementptr inbounds i8, i8* %p.addr.0, i64 1
  br label %for.cond.backedge
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @str_copy(%struct.conf_st* noundef %conf, i8* noundef %section, i8** nocapture noundef %pto, i8* noundef %from) unnamed_addr #1 {
entry:
  %call = tail call %struct.buf_mem_st* @BUF_MEM_new() #12
  %cmp = icmp eq %struct.buf_mem_st* %call, null
  br i1 %cmp, label %cleanup238, label %if.end

if.end:                                           ; preds = %entry
  %call1 = tail call i64 @strlen(i8* noundef %from) #15
  %conv = shl i64 %call1, 32
  %sext = add i64 %conv, 4294967296
  %conv2 = ashr exact i64 %sext, 32
  %call3 = tail call i64 @BUF_MEM_grow(%struct.buf_mem_st* noundef nonnull %call, i64 noundef %conv2) #12
  %tobool.not = icmp eq i64 %call3, 0
  br i1 %tobool.not, label %err, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end
  %data = getelementptr inbounds %struct.buf_mem_st, %struct.buf_mem_st* %call, i64 0, i32 1
  %flag_dollarid = getelementptr inbounds %struct.conf_st, %struct.conf_st* %conf, i64 0, i32 3
  %length = getelementptr inbounds %struct.buf_mem_st, %struct.buf_mem_st* %call, i64 0, i32 0
  br label %for.cond.outer

for.cond.outer:                                   ; preds = %cleanup, %for.cond.preheader
  %rr.0.ph = phi i32 [ %rr.1, %cleanup ], [ 0, %for.cond.preheader ]
  %to.0.ph = phi i32 [ %to.3.lcssa, %cleanup ], [ 0, %for.cond.preheader ]
  %from.addr.0.ph = phi i8* [ %e.3, %cleanup ], [ %from, %for.cond.preheader ]
  br label %for.cond

for.cond:                                         ; preds = %for.cond.backedge, %for.cond.outer
  %to.0 = phi i32 [ %to.0.ph, %for.cond.outer ], [ %to.0.be, %for.cond.backedge ]
  %from.addr.0 = phi i8* [ %from.addr.0.ph, %for.cond.outer ], [ %from.addr.0.be, %for.cond.backedge ]
  %0 = load i8, i8* %from.addr.0, align 1, !tbaa !18
  %call6 = tail call fastcc i32 @is_keytype(%struct.conf_st* noundef %conf, i8 noundef signext %0, i16 noundef zeroext 64) #13
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.else, label %while.cond.preheader

while.cond.preheader:                             ; preds = %for.cond
  %from.addr.1395 = getelementptr inbounds i8, i8* %from.addr.0, i64 1
  %1 = load i8, i8* %from.addr.1395, align 1, !tbaa !18
  %call10396 = tail call fastcc i32 @is_keytype(%struct.conf_st* noundef %conf, i8 noundef signext %1, i16 noundef zeroext 8) #13
  %tobool11.not397 = icmp ne i32 %call10396, 0
  %cmp13.not398 = icmp eq i8 %1, %0
  %or.cond399 = or i1 %cmp13.not398, %tobool11.not397
  br i1 %or.cond399, label %while.end, label %while.body.preheader

while.body.preheader:                             ; preds = %while.cond.preheader
  %2 = sext i32 %to.0 to i64
  br label %while.body

while.body:                                       ; preds = %while.body.preheader, %if.end23
  %indvars.iv = phi i64 [ %2, %while.body.preheader ], [ %indvars.iv.next, %if.end23 ]
  %3 = phi i8 [ %1, %while.body.preheader ], [ %7, %if.end23 ]
  %from.addr.1403 = phi i8* [ %from.addr.1395, %while.body.preheader ], [ %from.addr.1, %if.end23 ]
  %from.addr.0.pn376402 = phi i8* [ %from.addr.0, %while.body.preheader ], [ %from.addr.2, %if.end23 ]
  %to.1400 = phi i32 [ %to.0, %while.body.preheader ], [ %inc, %if.end23 ]
  %call15 = tail call fastcc i32 @is_keytype(%struct.conf_st* noundef %conf, i8 noundef signext %3, i16 noundef zeroext 32) #13
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.end23, label %if.then17

if.then17:                                        ; preds = %while.body
  %incdec.ptr18 = getelementptr inbounds i8, i8* %from.addr.0.pn376402, i64 2
  %4 = load i8, i8* %incdec.ptr18, align 1, !tbaa !18
  %call19 = tail call fastcc i32 @is_keytype(%struct.conf_st* noundef %conf, i8 noundef signext %4, i16 noundef zeroext 8) #13
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.end23, label %while.end.loopexit.split.loop.exit441

if.end23:                                         ; preds = %if.then17, %while.body
  %5 = phi i8 [ %4, %if.then17 ], [ %3, %while.body ]
  %from.addr.2 = phi i8* [ %incdec.ptr18, %if.then17 ], [ %from.addr.1403, %while.body ]
  %6 = load i8*, i8** %data, align 8, !tbaa !15
  %indvars.iv.next = add i64 %indvars.iv, 1
  %inc = add nsw i32 %to.1400, 1
  %arrayidx = getelementptr inbounds i8, i8* %6, i64 %indvars.iv
  store i8 %5, i8* %arrayidx, align 1, !tbaa !18
  %from.addr.1 = getelementptr inbounds i8, i8* %from.addr.2, i64 1
  %7 = load i8, i8* %from.addr.1, align 1, !tbaa !18
  %call10 = tail call fastcc i32 @is_keytype(%struct.conf_st* noundef %conf, i8 noundef signext %7, i16 noundef zeroext 8) #13
  %tobool11.not = icmp ne i32 %call10, 0
  %cmp13.not = icmp eq i8 %7, %0
  %or.cond = or i1 %cmp13.not, %tobool11.not
  br i1 %or.cond, label %while.end, label %while.body, !llvm.loop !32

while.end.loopexit.split.loop.exit441:            ; preds = %if.then17
  %8 = trunc i64 %indvars.iv to i32
  br label %while.end

while.end:                                        ; preds = %if.end23, %while.end.loopexit.split.loop.exit441, %while.cond.preheader
  %9 = phi i8 [ %1, %while.cond.preheader ], [ %4, %while.end.loopexit.split.loop.exit441 ], [ %7, %if.end23 ]
  %to.1.lcssa = phi i32 [ %to.0, %while.cond.preheader ], [ %8, %while.end.loopexit.split.loop.exit441 ], [ %inc, %if.end23 ]
  %from.addr.3 = phi i8* [ %from.addr.1395, %while.cond.preheader ], [ %incdec.ptr18, %while.end.loopexit.split.loop.exit441 ], [ %from.addr.1, %if.end23 ]
  %cmp26 = icmp eq i8 %9, %0
  %spec.select.idx = zext i1 %cmp26 to i64
  %spec.select = getelementptr i8, i8* %from.addr.3, i64 %spec.select.idx
  br label %for.cond.backedge

if.else:                                          ; preds = %for.cond
  %call31 = tail call fastcc i32 @is_keytype(%struct.conf_st* noundef %conf, i8 noundef signext %0, i16 noundef zeroext 1024) #13
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %if.else64, label %while.cond36.preheader

while.cond36.preheader:                           ; preds = %if.else
  %from.addr.4407 = getelementptr inbounds i8, i8* %from.addr.0, i64 1
  %10 = load i8, i8* %from.addr.4407, align 1, !tbaa !18
  %call37408 = tail call fastcc i32 @is_keytype(%struct.conf_st* noundef %conf, i8 noundef signext %10, i16 noundef zeroext 8) #13
  %tobool38.not409 = icmp eq i32 %call37408, 0
  br i1 %tobool38.not409, label %while.body39.preheader, label %while.end57

while.body39.preheader:                           ; preds = %while.cond36.preheader
  %11 = sext i32 %to.0 to i64
  br label %while.body39

while.body39:                                     ; preds = %while.body39.preheader, %if.end51
  %indvars.iv431 = phi i64 [ %11, %while.body39.preheader ], [ %indvars.iv.next432, %if.end51 ]
  %12 = phi i8 [ %10, %while.body39.preheader ], [ %16, %if.end51 ]
  %from.addr.4413 = phi i8* [ %from.addr.4407, %while.body39.preheader ], [ %from.addr.4, %if.end51 ]
  %from.addr.0.pn412 = phi i8* [ %from.addr.0, %while.body39.preheader ], [ %from.addr.5, %if.end51 ]
  %to.2410 = phi i32 [ %to.0, %while.body39.preheader ], [ %inc54, %if.end51 ]
  %cmp41 = icmp eq i8 %12, %0
  br i1 %cmp41, label %if.then43, label %if.end51

if.then43:                                        ; preds = %while.body39
  %add.ptr = getelementptr inbounds i8, i8* %from.addr.0.pn412, i64 2
  %13 = load i8, i8* %add.ptr, align 1, !tbaa !18
  %cmp45 = icmp eq i8 %13, %0
  br i1 %cmp45, label %if.end51, label %while.end57.loopexit.split.loop.exit

if.end51:                                         ; preds = %if.then43, %while.body39
  %14 = phi i8 [ %12, %while.body39 ], [ %0, %if.then43 ]
  %from.addr.5 = phi i8* [ %from.addr.4413, %while.body39 ], [ %add.ptr, %if.then43 ]
  %15 = load i8*, i8** %data, align 8, !tbaa !15
  %indvars.iv.next432 = add i64 %indvars.iv431, 1
  %inc54 = add nsw i32 %to.2410, 1
  %arrayidx56 = getelementptr inbounds i8, i8* %15, i64 %indvars.iv431
  store i8 %14, i8* %arrayidx56, align 1, !tbaa !18
  %from.addr.4 = getelementptr inbounds i8, i8* %from.addr.5, i64 1
  %16 = load i8, i8* %from.addr.4, align 1, !tbaa !18
  %call37 = tail call fastcc i32 @is_keytype(%struct.conf_st* noundef %conf, i8 noundef signext %16, i16 noundef zeroext 8) #13
  %tobool38.not = icmp eq i32 %call37, 0
  br i1 %tobool38.not, label %while.body39, label %while.end57, !llvm.loop !33

while.end57.loopexit.split.loop.exit:             ; preds = %if.then43
  %17 = trunc i64 %indvars.iv431 to i32
  br label %while.end57

while.end57:                                      ; preds = %if.end51, %while.end57.loopexit.split.loop.exit, %while.cond36.preheader
  %to.2.lcssa = phi i32 [ %to.0, %while.cond36.preheader ], [ %17, %while.end57.loopexit.split.loop.exit ], [ %inc54, %if.end51 ]
  %from.addr.0.pn.lcssa = phi i8* [ %from.addr.0, %while.cond36.preheader ], [ %from.addr.0.pn412, %while.end57.loopexit.split.loop.exit ], [ %from.addr.5, %if.end51 ]
  %from.addr.4.lcssa = phi i8* [ %from.addr.4407, %while.cond36.preheader ], [ %from.addr.4413, %while.end57.loopexit.split.loop.exit ], [ %from.addr.4, %if.end51 ]
  %.lcssa = phi i8 [ %10, %while.cond36.preheader ], [ %0, %while.end57.loopexit.split.loop.exit ], [ %16, %if.end51 ]
  %cmp59 = icmp eq i8 %.lcssa, %0
  %incdec.ptr62 = getelementptr inbounds i8, i8* %from.addr.0.pn.lcssa, i64 2
  %spec.select377 = select i1 %cmp59, i8* %incdec.ptr62, i8* %from.addr.4.lcssa
  br label %for.cond.backedge

for.cond.backedge:                                ; preds = %while.end57, %while.end, %if.else223, %if.end97
  %to.0.be = phi i32 [ %inc99, %if.end97 ], [ %inc226, %if.else223 ], [ %to.1.lcssa, %while.end ], [ %to.2.lcssa, %while.end57 ]
  %from.addr.0.be = phi i8* [ %incdec.ptr69, %if.end97 ], [ %incdec.ptr224, %if.else223 ], [ %spec.select, %while.end ], [ %spec.select377, %while.end57 ]
  br label %for.cond

if.else64:                                        ; preds = %if.else
  %call65 = tail call fastcc i32 @is_keytype(%struct.conf_st* noundef %conf, i8 noundef signext %0, i16 noundef zeroext 32) #13
  %tobool66.not = icmp eq i32 %call65, 0
  br i1 %tobool66.not, label %if.else102, label %if.then67

if.then67:                                        ; preds = %if.else64
  %incdec.ptr68 = getelementptr inbounds i8, i8* %from.addr.0, i64 1
  %incdec.ptr69 = getelementptr inbounds i8, i8* %from.addr.0, i64 2
  %18 = load i8, i8* %incdec.ptr68, align 1, !tbaa !18
  %call70 = tail call fastcc i32 @is_keytype(%struct.conf_st* noundef %conf, i8 noundef signext %18, i16 noundef zeroext 8) #13
  %tobool71.not = icmp eq i32 %call70, 0
  br i1 %tobool71.not, label %if.else73, label %for.end

if.else73:                                        ; preds = %if.then67
  switch i8 %18, label %if.else88 [
    i8 114, label %if.end97
    i8 110, label %if.then82
    i8 98, label %if.then87
  ]

if.then82:                                        ; preds = %if.else73
  br label %if.end97

if.then87:                                        ; preds = %if.else73
  br label %if.end97

if.else88:                                        ; preds = %if.else73
  %cmp90 = icmp eq i8 %18, 116
  %spec.store.select = select i1 %cmp90, i8 9, i8 %18
  br label %if.end97

if.end97:                                         ; preds = %if.else73, %if.then87, %if.else88, %if.then82
  %v.0 = phi i8 [ 10, %if.then82 ], [ 8, %if.then87 ], [ %spec.store.select, %if.else88 ], [ 13, %if.else73 ]
  %19 = load i8*, i8** %data, align 8, !tbaa !15
  %inc99 = add nsw i32 %to.0, 1
  %idxprom100 = sext i32 %to.0 to i64
  %arrayidx101 = getelementptr inbounds i8, i8* %19, i64 %idxprom100
  store i8 %v.0, i8* %arrayidx101, align 1, !tbaa !18
  br label %for.cond.backedge

if.else102:                                       ; preds = %if.else64
  %call103 = tail call fastcc i32 @is_keytype(%struct.conf_st* noundef %conf, i8 noundef signext %0, i16 noundef zeroext 8) #13
  %tobool104.not = icmp eq i32 %call103, 0
  br i1 %tobool104.not, label %if.else106, label %for.end

if.else106:                                       ; preds = %if.else102
  %cmp108 = icmp eq i8 %0, 36
  br i1 %cmp108, label %land.lhs.true, label %if.else223

land.lhs.true:                                    ; preds = %if.else106
  %20 = load i32, i32* %flag_dollarid, align 8, !tbaa !31
  %tobool110.not = icmp eq i32 %20, 0
  %arrayidx121.phi.trans.insert = getelementptr inbounds i8, i8* %from.addr.0, i64 1
  %.pre = load i8, i8* %arrayidx121.phi.trans.insert, align 1, !tbaa !18
  br i1 %tobool110.not, label %if.then120, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  switch i8 %.pre, label %if.else223 [
    i8 123, label %if.then120
    i8 40, label %if.then120
  ]

if.then120:                                       ; preds = %land.lhs.true, %lor.lhs.false, %lor.lhs.false
  %arrayidx121 = getelementptr inbounds i8, i8* %from.addr.0, i64 1
  switch i8 %.pre, label %21 [
    i8 123, label %if.end133.thread
    i8 40, label %if.then130
  ]

if.then130:                                       ; preds = %if.then120
  br label %if.end133.thread

if.end133.thread:                                 ; preds = %if.then130, %if.then120
  %q.0.ph = phi i32 [ 125, %if.then120 ], [ 41, %if.then130 ]
  %incdec.ptr136382 = getelementptr inbounds i8, i8* %from.addr.0, i64 2
  br label %21

21:                                               ; preds = %if.then120, %if.end133.thread
  %q.0384 = phi i32 [ %q.0.ph, %if.end133.thread ], [ 0, %if.then120 ]
  %tobool134.not383 = phi i1 [ false, %if.end133.thread ], [ true, %if.then120 ]
  %22 = phi i8* [ %incdec.ptr136382, %if.end133.thread ], [ %arrayidx121, %if.then120 ]
  br label %while.cond138

while.cond138:                                    ; preds = %while.body147, %21
  %e.0 = phi i8* [ %22, %21 ], [ %incdec.ptr148, %while.body147 ]
  %23 = load i8, i8* %e.0, align 1, !tbaa !18
  %call139 = tail call fastcc i32 @is_keytype(%struct.conf_st* noundef %conf, i8 noundef signext %23, i16 noundef zeroext 263) #13
  %tobool140.not = icmp eq i32 %call139, 0
  br i1 %tobool140.not, label %lor.rhs, label %while.body147

lor.rhs:                                          ; preds = %while.cond138
  br i1 %tobool110.not, label %while.end149, label %land.rhs143

land.rhs143:                                      ; preds = %lor.rhs
  %call144 = tail call fastcc i32 @is_keytype(%struct.conf_st* noundef %conf, i8 noundef signext %23, i16 noundef zeroext 4096) #13
  %tobool145.not = icmp eq i32 %call144, 0
  br i1 %tobool145.not, label %while.end149, label %while.body147

while.body147:                                    ; preds = %while.cond138, %land.rhs143
  %incdec.ptr148 = getelementptr inbounds i8, i8* %e.0, i64 1
  br label %while.cond138, !llvm.loop !34

while.end149:                                     ; preds = %lor.rhs, %land.rhs143
  %cmp152 = icmp eq i8 %23, 58
  br i1 %cmp152, label %land.lhs.true154, label %if.end176

land.lhs.true154:                                 ; preds = %while.end149
  %arrayidx155 = getelementptr inbounds i8, i8* %e.0, i64 1
  %24 = load i8, i8* %arrayidx155, align 1, !tbaa !18
  %cmp157 = icmp eq i8 %24, 58
  br i1 %cmp157, label %if.then159, label %if.end176

if.then159:                                       ; preds = %land.lhs.true154
  store i8 0, i8* %e.0, align 1, !tbaa !18
  %add.ptr161 = getelementptr inbounds i8, i8* %e.0, i64 2
  br label %while.cond162

while.cond162:                                    ; preds = %while.body173, %if.then159
  %e.1 = phi i8* [ %add.ptr161, %if.then159 ], [ %incdec.ptr174, %while.body173 ]
  %25 = load i8, i8* %e.1, align 1, !tbaa !18
  %call163 = tail call fastcc i32 @is_keytype(%struct.conf_st* noundef %conf, i8 noundef signext %25, i16 noundef zeroext 263) #13
  %tobool164.not = icmp eq i32 %call163, 0
  br i1 %tobool164.not, label %lor.rhs165, label %while.body173

lor.rhs165:                                       ; preds = %while.cond162
  %26 = load i32, i32* %flag_dollarid, align 8, !tbaa !31
  %tobool167.not = icmp eq i32 %26, 0
  br i1 %tobool167.not, label %if.end176, label %land.rhs168

land.rhs168:                                      ; preds = %lor.rhs165
  %call169 = tail call fastcc i32 @is_keytype(%struct.conf_st* noundef nonnull %conf, i8 noundef signext %25, i16 noundef zeroext 4096) #13
  %tobool170.not = icmp eq i32 %call169, 0
  br i1 %tobool170.not, label %if.end176, label %while.body173

while.body173:                                    ; preds = %while.cond162, %land.rhs168
  %incdec.ptr174 = getelementptr inbounds i8, i8* %e.1, i64 1
  br label %while.cond162, !llvm.loop !35

if.end176:                                        ; preds = %land.rhs168, %lor.rhs165, %land.lhs.true154, %while.end149
  %27 = phi i8 [ 58, %land.lhs.true154 ], [ %23, %while.end149 ], [ %25, %lor.rhs165 ], [ %25, %land.rhs168 ]
  %rr.1 = phi i32 [ %rr.0.ph, %land.lhs.true154 ], [ %rr.0.ph, %while.end149 ], [ 58, %lor.rhs165 ], [ 58, %land.rhs168 ]
  %e.2 = phi i8* [ %e.0, %land.lhs.true154 ], [ %e.0, %while.end149 ], [ %e.1, %lor.rhs165 ], [ %e.1, %land.rhs168 ]
  %rrp.0 = phi i8* [ null, %land.lhs.true154 ], [ null, %while.end149 ], [ %e.0, %lor.rhs165 ], [ %e.0, %land.rhs168 ]
  %np.0 = phi i8* [ %22, %land.lhs.true154 ], [ %22, %while.end149 ], [ %add.ptr161, %lor.rhs165 ], [ %add.ptr161, %land.rhs168 ]
  %cp.0 = phi i8* [ %section, %land.lhs.true154 ], [ %section, %while.end149 ], [ %22, %lor.rhs165 ], [ %22, %land.rhs168 ]
  store i8 0, i8* %e.2, align 1, !tbaa !18
  br i1 %tobool134.not383, label %if.end185, label %if.then179

if.then179:                                       ; preds = %if.end176
  %conv177 = sext i8 %27 to i32
  %cmp180.not = icmp eq i32 %q.0384, %conv177
  br i1 %cmp180.not, label %if.end183, label %err.sink.split

if.end183:                                        ; preds = %if.then179
  %incdec.ptr184 = getelementptr inbounds i8, i8* %e.2, i64 1
  br label %if.end185

if.end185:                                        ; preds = %if.end183, %if.end176
  %e.3 = phi i8* [ %incdec.ptr184, %if.end183 ], [ %e.2, %if.end176 ]
  %call186 = tail call i8* @_CONF_get_string(%struct.conf_st* noundef %conf, i8* noundef %cp.0, i8* noundef %np.0) #12
  %cmp187.not = icmp eq i8* %rrp.0, null
  br i1 %cmp187.not, label %if.end191, label %if.then189

if.then189:                                       ; preds = %if.end185
  %conv190 = trunc i32 %rr.1 to i8
  store i8 %conv190, i8* %rrp.0, align 1, !tbaa !18
  br label %if.end191

if.end191:                                        ; preds = %if.then189, %if.end185
  store i8 %27, i8* %e.2, align 1, !tbaa !18
  %cmp193 = icmp eq i8* %call186, null
  br i1 %cmp193, label %err.sink.split, label %if.end196

if.end196:                                        ; preds = %if.end191
  %call197 = tail call i64 @strlen(i8* noundef nonnull %call186) #15
  %28 = load i64, i64* %length, align 8, !tbaa !36
  %sub.ptr.lhs.cast = ptrtoint i8* %e.3 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %from.addr.0 to i64
  %sub.ptr.sub.neg = sub i64 %sub.ptr.rhs.cast, %sub.ptr.lhs.cast
  %add198 = add i64 %sub.ptr.sub.neg, %call197
  %sub = add i64 %add198, %28
  %cmp199 = icmp ugt i64 %sub, 65536
  br i1 %cmp199, label %err.sink.split, label %if.end202

if.end202:                                        ; preds = %if.end196
  %call203 = tail call i64 @BUF_MEM_grow_clean(%struct.buf_mem_st* noundef nonnull %call, i64 noundef %sub) #12
  %tobool204.not = icmp eq i64 %call203, 0
  br i1 %tobool204.not, label %err.sink.split, label %while.cond207.preheader

while.cond207.preheader:                          ; preds = %if.end202
  %29 = load i8, i8* %call186, align 1, !tbaa !18
  %tobool208.not422 = icmp eq i8 %29, 0
  br i1 %tobool208.not422, label %cleanup, label %while.body209.preheader

while.body209.preheader:                          ; preds = %while.cond207.preheader
  %30 = sext i32 %to.0 to i64
  br label %while.body209

while.body209:                                    ; preds = %while.body209.preheader, %while.body209
  %indvars.iv433 = phi i64 [ %30, %while.body209.preheader ], [ %indvars.iv.next434, %while.body209 ]
  %31 = phi i8 [ %29, %while.body209.preheader ], [ %33, %while.body209 ]
  %p.0424 = phi i8* [ %call186, %while.body209.preheader ], [ %incdec.ptr210, %while.body209 ]
  %incdec.ptr210 = getelementptr inbounds i8, i8* %p.0424, i64 1
  %32 = load i8*, i8** %data, align 8, !tbaa !15
  %indvars.iv.next434 = add i64 %indvars.iv433, 1
  %arrayidx214 = getelementptr inbounds i8, i8* %32, i64 %indvars.iv433
  store i8 %31, i8* %arrayidx214, align 1, !tbaa !18
  %33 = load i8, i8* %incdec.ptr210, align 1, !tbaa !18
  %tobool208.not = icmp eq i8 %33, 0
  br i1 %tobool208.not, label %cleanup.loopexit, label %while.body209, !llvm.loop !37

cleanup.loopexit:                                 ; preds = %while.body209
  %34 = trunc i64 %indvars.iv.next434 to i32
  br label %cleanup

cleanup:                                          ; preds = %cleanup.loopexit, %while.cond207.preheader
  %to.3.lcssa = phi i32 [ %to.0, %while.cond207.preheader ], [ %34, %cleanup.loopexit ]
  store i8 %27, i8* %e.2, align 1, !tbaa !18
  br label %for.cond.outer

if.else223:                                       ; preds = %lor.lhs.false, %if.else106
  %incdec.ptr224 = getelementptr inbounds i8, i8* %from.addr.0, i64 1
  %35 = load i8*, i8** %data, align 8, !tbaa !15
  %inc226 = add nsw i32 %to.0, 1
  %idxprom227 = sext i32 %to.0 to i64
  %arrayidx228 = getelementptr inbounds i8, i8* %35, i64 %idxprom227
  store i8 %0, i8* %arrayidx228, align 1, !tbaa !18
  br label %for.cond.backedge

for.end:                                          ; preds = %if.else102, %if.then67
  %36 = load i8*, i8** %data, align 8, !tbaa !15
  %idxprom235 = sext i32 %to.0 to i64
  %arrayidx236 = getelementptr inbounds i8, i8* %36, i64 %idxprom235
  store i8 0, i8* %arrayidx236, align 1, !tbaa !18
  %37 = load i8*, i8** %pto, align 8, !tbaa !14
  tail call void @CRYPTO_free(i8* noundef %37, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 noundef 781) #12
  %38 = load i8*, i8** %data, align 8, !tbaa !15
  store i8* %38, i8** %pto, align 8, !tbaa !14
  %39 = bitcast %struct.buf_mem_st* %call to i8*
  tail call void @CRYPTO_free(i8* noundef nonnull %39, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 noundef 783) #12
  br label %cleanup238

err.sink.split:                                   ; preds = %if.end202, %if.end196, %if.end191, %if.then179
  %.sink450 = phi i32 [ 729, %if.then179 ], [ 749, %if.end191 ], [ 754, %if.end196 ], [ 758, %if.end202 ]
  %.sink = phi i32 [ 102, %if.then179 ], [ 104, %if.end191 ], [ 116, %if.end196 ], [ 786688, %if.end202 ]
  tail call void @ERR_new() #12
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 noundef %.sink450, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @__func__.str_copy, i64 0, i64 0)) #12
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 14, i32 noundef %.sink, i8* noundef null) #12
  br label %err

err:                                              ; preds = %err.sink.split, %if.end
  tail call void @BUF_MEM_free(%struct.buf_mem_st* noundef nonnull %call) #12
  br label %cleanup238

cleanup238:                                       ; preds = %entry, %err, %for.end
  %retval.0 = phi i32 [ 1, %for.end ], [ 0, %err ], [ 0, %entry ]
  ret i32 %retval.0
}

declare %struct.CONF_VALUE* @_CONF_get_section(%struct.conf_st* noundef, i8* noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare i32 @strncmp(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define internal fastcc void @trim_ws(%struct.conf_st* nocapture noundef readonly %conf, i8* noundef %start) unnamed_addr #8 {
entry:
  br label %while.cond

while.cond:                                       ; preds = %while.cond, %entry
  %p.0 = phi i8* [ %start, %entry ], [ %incdec.ptr, %while.cond ]
  %0 = load i8, i8* %p.0, align 1, !tbaa !18
  %call = tail call fastcc i32 @is_keytype(%struct.conf_st* noundef %conf, i8 noundef signext %0, i16 noundef zeroext 8) #13
  %tobool.not = icmp eq i32 %call, 0
  %incdec.ptr = getelementptr inbounds i8, i8* %p.0, i64 1
  br i1 %tobool.not, label %while.cond, label %while.cond2, !llvm.loop !38

while.cond2:                                      ; preds = %while.cond, %land.rhs
  %p.0.pn = phi i8* [ %p.1, %land.rhs ], [ %p.0, %while.cond ]
  %p.1 = getelementptr inbounds i8, i8* %p.0.pn, i64 -1
  %cmp.not = icmp ult i8* %p.1, %start
  br i1 %cmp.not, label %while.end7, label %land.rhs

land.rhs:                                         ; preds = %while.cond2
  %1 = load i8, i8* %p.1, align 1, !tbaa !18
  %call3 = tail call fastcc i32 @is_keytype(%struct.conf_st* noundef %conf, i8 noundef signext %1, i16 noundef zeroext 16) #13
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %while.end7, label %while.cond2, !llvm.loop !39

while.end7:                                       ; preds = %while.cond2, %land.rhs
  store i8 0, i8* %p.0.pn, align 1, !tbaa !18
  ret void
}

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare i8* @strchr(i8* noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare i32 @strcmp(i8* noundef, i8* noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @parsebool(i8* noundef readonly %pval, i32* nocapture noundef writeonly %flag) unnamed_addr #1 {
entry:
  %call = tail call i32 @strcasecmp(i8* noundef %pval, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.16, i64 0, i64 0)) #15
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.end10, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %call1 = tail call i32 @strcasecmp(i8* noundef %pval, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i64 0, i64 0)) #15
  %cmp2 = icmp eq i32 %call1, 0
  br i1 %cmp2, label %if.end10, label %if.else

if.else:                                          ; preds = %lor.lhs.false
  %call3 = tail call i32 @strcasecmp(i8* noundef %pval, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.18, i64 0, i64 0)) #15
  %cmp4 = icmp eq i32 %call3, 0
  br i1 %cmp4, label %if.end10, label %lor.lhs.false5

lor.lhs.false5:                                   ; preds = %if.else
  %call6 = tail call i32 @strcasecmp(i8* noundef %pval, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i64 0, i64 0)) #15
  %cmp7 = icmp eq i32 %call6, 0
  br i1 %cmp7, label %if.end10, label %if.else9

if.else9:                                         ; preds = %lor.lhs.false5
  tail call void @ERR_new() #12
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 noundef 202, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.parsebool, i64 0, i64 0)) #12
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 14, i32 noundef 122, i8* noundef null) #12
  br label %return

if.end10:                                         ; preds = %if.else, %lor.lhs.false5, %entry, %lor.lhs.false
  %storemerge = phi i32 [ 1, %lor.lhs.false ], [ 1, %entry ], [ 0, %lor.lhs.false5 ], [ 0, %if.else ]
  store i32 %storemerge, i32* %flag, align 4, !tbaa !40
  br label %return

return:                                           ; preds = %if.end10, %if.else9
  %retval.0 = phi i32 [ 1, %if.end10 ], [ 0, %if.else9 ]
  ret i32 %retval.0
}

declare i8* @ossl_safe_getenv(i8* noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal fastcc i32 @ossl_is_absolute_path(i8* nocapture noundef readonly %path) unnamed_addr #2 {
entry:
  %0 = load i8, i8* %path, align 1, !tbaa !18
  %cmp = icmp eq i8 %0, 47
  %conv1 = zext i1 %cmp to i32
  ret i32 %conv1
}

declare i64 @OPENSSL_strlcpy(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline nounwind readonly uwtable willreturn
define internal fastcc i32 @ossl_ends_with_dirsep(i8* noundef %path) unnamed_addr #10 {
entry:
  %0 = load i8, i8* %path, align 1, !tbaa !18
  %cmp.not = icmp eq i8 %0, 0
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = tail call i64 @strlen(i8* noundef nonnull %path) #15
  %sub = add i64 %call, -1
  %add.ptr = getelementptr inbounds i8, i8* %path, i64 %sub
  %.pre = load i8, i8* %add.ptr, align 1, !tbaa !18
  %phi.cmp = icmp eq i8 %.pre, 47
  %phi.cast = zext i1 %phi.cmp to i32
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = phi i32 [ %phi.cast, %if.then ], [ 0, %entry ]
  ret i32 %1
}

declare i64 @OPENSSL_strlcat(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.bio_st* @process_include(i8* noundef nonnull %include, %struct.OPENSSL_dir_context_st** noundef %dirctx, i8** nocapture noundef writeonly %dirpath) unnamed_addr #1 {
entry:
  %st = alloca %struct.stat, align 8
  %0 = bitcast %struct.stat* %st to i8*
  call void @llvm.lifetime.start.p0i8(i64 144, i8* nonnull %0) #14
  %call = call i32 @stat(i8* noundef %include, %struct.stat* noundef %st) #12
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @ERR_new() #12
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 noundef 803, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.process_include, i64 0, i64 0)) #12
  %call1 = tail call i32* @__errno_location() #16
  %1 = load i32, i32* %call1, align 4, !tbaa !40
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 2, i32 noundef %1, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.20, i64 0, i64 0), i8* noundef nonnull %include) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %st_mode = getelementptr inbounds %struct.stat, %struct.stat* %st, i64 0, i32 3
  %2 = load i32, i32* %st_mode, align 8, !tbaa !41
  %and = and i32 %2, 61440
  %cmp2 = icmp eq i32 %and, 16384
  br i1 %cmp2, label %if.then3, label %if.end11

if.then3:                                         ; preds = %if.end
  %3 = load %struct.OPENSSL_dir_context_st*, %struct.OPENSSL_dir_context_st** %dirctx, align 8, !tbaa !14
  %cmp4.not = icmp eq %struct.OPENSSL_dir_context_st* %3, null
  br i1 %cmp4.not, label %if.end6, label %if.then5

if.then5:                                         ; preds = %if.then3
  call void @ERR_new() #12
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 noundef 810, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.process_include, i64 0, i64 0)) #12
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 14, i32 noundef 111, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.21, i64 0, i64 0), i8* noundef nonnull %include) #12
  br label %cleanup

if.end6:                                          ; preds = %if.then3
  %call7 = call fastcc %struct.bio_st* @get_next_file(i8* noundef nonnull %include, %struct.OPENSSL_dir_context_st** noundef nonnull %dirctx) #13
  %cmp8.not = icmp eq %struct.bio_st* %call7, null
  br i1 %cmp8.not, label %cleanup, label %if.then9

if.then9:                                         ; preds = %if.end6
  store i8* %include, i8** %dirpath, align 8, !tbaa !14
  br label %cleanup

if.end11:                                         ; preds = %if.end
  %call12 = call %struct.bio_st* @BIO_new_file(i8* noundef nonnull %include, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.15, i64 0, i64 0)) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.then9, %if.end11, %if.then5, %if.then
  %retval.0 = phi %struct.bio_st* [ null, %if.then ], [ null, %if.then5 ], [ %call12, %if.end11 ], [ %call7, %if.then9 ], [ null, %if.end6 ]
  call void @llvm.lifetime.end.p0i8(i64 144, i8* nonnull %0) #14
  ret %struct.bio_st* %retval.0
}

declare %struct.stack_st* @OPENSSL_sk_new_null() local_unnamed_addr #4

declare i32 @BIO_free(%struct.bio_st* noundef) local_unnamed_addr #4

declare i32 @OPENSSL_sk_push(%struct.stack_st* noundef, i8* noundef) local_unnamed_addr #4

declare i32 @_CONF_add_string(%struct.conf_st* noundef, %struct.CONF_VALUE* noundef, %struct.CONF_VALUE* noundef) local_unnamed_addr #4

declare void @BUF_MEM_free(%struct.buf_mem_st* noundef) local_unnamed_addr #4

declare void @OPENSSL_sk_free(%struct.stack_st* noundef) local_unnamed_addr #4

declare i32 @OPENSSL_sk_num(%struct.stack_st* noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_const_BIO_sk_type(%struct.stack_st_BIO* noundef readnone %sk) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.stack_st_BIO* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

declare i32 @OPENSSL_DIR_end(%struct.OPENSSL_dir_context_st** noundef) local_unnamed_addr #4

declare i32 @BIO_snprintf(i8* noundef, i64 noundef, i8* noundef, ...) local_unnamed_addr #4

declare void @ERR_add_error_data(i32 noundef, ...) local_unnamed_addr #4

declare void @CONF_free(%struct.lhash_st_CONF_VALUE* noundef) local_unnamed_addr #4

declare i8* @OPENSSL_DIR_read(%struct.OPENSSL_dir_context_st** noundef, i8* noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare i32 @strcasecmp(i8* noundef, i8* noundef) local_unnamed_addr #6

declare i8* @CRYPTO_zalloc(i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #4

declare %struct.bio_st* @BIO_new_file(i8* noundef, i8* noundef) local_unnamed_addr #4

; Function Attrs: nofree noinline norecurse nosync nounwind readonly uwtable
define internal fastcc nonnull i8* @scan_dquote(%struct.conf_st* nocapture noundef readonly %conf, i8* noundef readonly %p) unnamed_addr #9 {
entry:
  %0 = load i8, i8* %p, align 1, !tbaa !18
  %p.addr.028 = getelementptr inbounds i8, i8* %p, i64 1
  %1 = load i8, i8* %p.addr.028, align 1, !tbaa !18
  %call29 = tail call fastcc i32 @is_keytype(%struct.conf_st* noundef %conf, i8 noundef signext %1, i16 noundef zeroext 8) #13
  %tobool.not30 = icmp eq i32 %call29, 0
  br i1 %tobool.not30, label %while.body, label %while.end

while.body:                                       ; preds = %entry, %if.end8
  %2 = phi i8 [ %4, %if.end8 ], [ %1, %entry ]
  %p.addr.032 = phi i8* [ %p.addr.0, %if.end8 ], [ %p.addr.028, %entry ]
  %p.pn31 = phi i8* [ %p.addr.1, %if.end8 ], [ %p, %entry ]
  %cmp = icmp eq i8 %2, %0
  br i1 %cmp, label %if.then, label %if.end8

if.then:                                          ; preds = %while.body
  %add.ptr = getelementptr inbounds i8, i8* %p.pn31, i64 2
  %3 = load i8, i8* %add.ptr, align 1, !tbaa !18
  %cmp4 = icmp eq i8 %3, %0
  br i1 %cmp4, label %if.end8, label %while.end

if.end8:                                          ; preds = %if.then, %while.body
  %p.addr.1 = phi i8* [ %p.addr.032, %while.body ], [ %add.ptr, %if.then ]
  %p.addr.0 = getelementptr inbounds i8, i8* %p.addr.1, i64 1
  %4 = load i8, i8* %p.addr.0, align 1, !tbaa !18
  %call = tail call fastcc i32 @is_keytype(%struct.conf_st* noundef %conf, i8 noundef signext %4, i16 noundef zeroext 8) #13
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %while.body, label %while.end, !llvm.loop !44

while.end:                                        ; preds = %if.end8, %if.then, %entry
  %p.pn.lcssa = phi i8* [ %p, %entry ], [ %p.pn31, %if.then ], [ %p.addr.1, %if.end8 ]
  %p.addr.0.lcssa = phi i8* [ %p.addr.028, %entry ], [ %p.addr.032, %if.then ], [ %p.addr.0, %if.end8 ]
  %.lcssa = phi i8 [ %1, %entry ], [ %0, %if.then ], [ %4, %if.end8 ]
  %cmp11 = icmp eq i8 %.lcssa, %0
  %incdec.ptr14 = getelementptr inbounds i8, i8* %p.pn.lcssa, i64 2
  %spec.select = select i1 %cmp11, i8* %incdec.ptr14, i8* %p.addr.0.lcssa
  ret i8* %spec.select
}

; Function Attrs: nofree noinline norecurse nosync nounwind readonly uwtable
define internal fastcc nonnull i8* @scan_quote(%struct.conf_st* nocapture noundef readonly %conf, i8* noundef readonly %p) unnamed_addr #9 {
entry:
  %0 = load i8, i8* %p, align 1, !tbaa !18
  %p.addr.035 = getelementptr inbounds i8, i8* %p, i64 1
  %1 = load i8, i8* %p.addr.035, align 1, !tbaa !18
  %call36 = tail call fastcc i32 @is_keytype(%struct.conf_st* noundef %conf, i8 noundef signext %1, i16 noundef zeroext 8) #13
  %tobool.not37 = icmp ne i32 %call36, 0
  %cmp.not38 = icmp eq i8 %1, %0
  %or.cond39 = select i1 %tobool.not37, i1 true, i1 %cmp.not38
  br i1 %or.cond39, label %while.end, label %while.body

while.body:                                       ; preds = %entry, %if.end9
  %2 = phi i8 [ %4, %if.end9 ], [ %1, %entry ]
  %p.addr.041 = phi i8* [ %p.addr.0, %if.end9 ], [ %p.addr.035, %entry ]
  %p.pn40 = phi i8* [ %p.addr.1, %if.end9 ], [ %p, %entry ]
  %call3 = tail call fastcc i32 @is_keytype(%struct.conf_st* noundef %conf, i8 noundef signext %2, i16 noundef zeroext 32) #13
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end9, label %if.then

if.then:                                          ; preds = %while.body
  %incdec.ptr5 = getelementptr inbounds i8, i8* %p.pn40, i64 2
  %3 = load i8, i8* %incdec.ptr5, align 1, !tbaa !18
  %call6 = tail call fastcc i32 @is_keytype(%struct.conf_st* noundef %conf, i8 noundef signext %3, i16 noundef zeroext 8) #13
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end9, label %cleanup

if.end9:                                          ; preds = %if.then, %while.body
  %p.addr.1 = phi i8* [ %incdec.ptr5, %if.then ], [ %p.addr.041, %while.body ]
  %p.addr.0 = getelementptr inbounds i8, i8* %p.addr.1, i64 1
  %4 = load i8, i8* %p.addr.0, align 1, !tbaa !18
  %call = tail call fastcc i32 @is_keytype(%struct.conf_st* noundef %conf, i8 noundef signext %4, i16 noundef zeroext 8) #13
  %tobool.not = icmp ne i32 %call, 0
  %cmp.not = icmp eq i8 %4, %0
  %or.cond = select i1 %tobool.not, i1 true, i1 %cmp.not
  br i1 %or.cond, label %while.end, label %while.body, !llvm.loop !45

while.end:                                        ; preds = %if.end9, %entry
  %p.pn.lcssa = phi i8* [ %p, %entry ], [ %p.addr.1, %if.end9 ]
  %p.addr.0.lcssa = phi i8* [ %p.addr.035, %entry ], [ %p.addr.0, %if.end9 ]
  %.lcssa = phi i8 [ %1, %entry ], [ %4, %if.end9 ]
  %cmp12 = icmp eq i8 %.lcssa, %0
  %incdec.ptr15 = getelementptr inbounds i8, i8* %p.pn.lcssa, i64 2
  %spec.select = select i1 %cmp12, i8* %incdec.ptr15, i8* %p.addr.0.lcssa
  br label %cleanup

cleanup:                                          ; preds = %if.then, %while.end
  %retval.0 = phi i8* [ %spec.select, %while.end ], [ %incdec.ptr5, %if.then ]
  ret i8* %retval.0
}

declare i8* @_CONF_get_string(%struct.conf_st* noundef, i8* noundef, i8* noundef) local_unnamed_addr #4

declare i64 @BUF_MEM_grow_clean(%struct.buf_mem_st* noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind uwtable
declare i32 @stat(i8* noundef nonnull, %struct.stat* noundef nonnull) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
declare i32* @__errno_location() local_unnamed_addr #11

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @lh_CONF_VALUE_doall_BIO(%struct.lhash_st_CONF_VALUE* noundef %lh, %struct.bio_st* noundef %arg) unnamed_addr #1 {
entry:
  %0 = bitcast %struct.lhash_st_CONF_VALUE* %lh to %struct.lhash_st*
  %1 = bitcast %struct.bio_st* %arg to i8*
  tail call void @OPENSSL_LH_doall_arg(%struct.lhash_st* noundef %0, void (i8*, i8*)* noundef bitcast (void (%struct.CONF_VALUE*, %struct.bio_st*)* @dump_value_doall_arg to void (i8*, i8*)*), i8* noundef %1) #12
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @dump_value_doall_arg(%struct.CONF_VALUE* nocapture noundef readonly %a, %struct.bio_st* noundef %out) #1 {
entry:
  %name = getelementptr inbounds %struct.CONF_VALUE, %struct.CONF_VALUE* %a, i64 0, i32 1
  %0 = load i8*, i8** %name, align 8, !tbaa !23
  %tobool.not = icmp eq i8* %0, null
  %section2 = getelementptr inbounds %struct.CONF_VALUE, %struct.CONF_VALUE* %a, i64 0, i32 0
  %1 = load i8*, i8** %section2, align 8, !tbaa !46
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %value = getelementptr inbounds %struct.CONF_VALUE, %struct.CONF_VALUE* %a, i64 0, i32 2
  %2 = load i8*, i8** %value, align 8, !tbaa !25
  %call = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %out, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.22, i64 0, i64 0), i8* noundef %1, i8* noundef nonnull %0, i8* noundef %2) #12
  br label %if.end

if.else:                                          ; preds = %entry
  %call3 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %out, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.23, i64 0, i64 0), i8* noundef %1) #12
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

declare void @OPENSSL_LH_doall_arg(%struct.lhash_st* noundef, void (i8*, i8*)* noundef, i8* noundef) local_unnamed_addr #4

declare i32 @BIO_printf(%struct.bio_st* noundef, i8* noundef, ...) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc i32 @ERR_GET_REASON(i64 noundef %errcode) unnamed_addr #0 {
entry:
  %and = and i64 %errcode, 2147483648
  %cmp.not = icmp eq i64 %and, 0
  %0 = trunc i64 %errcode to i32
  %retval.0.v = select i1 %cmp.not, i32 8388607, i32 2147483647
  %retval.0 = and i32 %retval.0.v, %0
  ret i32 %retval.0
}

declare i64 @ERR_peek_last_error() local_unnamed_addr #4

; Function Attrs: noinline nounwind uwtable
define internal i32 @def_init_WIN32(%struct.conf_st* noundef %conf) #1 {
entry:
  %cmp = icmp eq %struct.conf_st* %conf, null
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %0 = bitcast %struct.conf_st* %conf to i8*
  %call = tail call i8* @memset(i8* noundef nonnull %0, i32 noundef 0, i64 noundef 48) #12
  %meth = getelementptr inbounds %struct.conf_st, %struct.conf_st* %conf, i64 0, i32 0
  store %struct.conf_method_st* @WIN32_method, %struct.conf_method_st** %meth, align 8, !tbaa !9
  %meth_data = getelementptr inbounds %struct.conf_st, %struct.conf_st* %conf, i64 0, i32 1
  store i8* bitcast ([128 x i16]* @CONF_type_win32 to i8*), i8** %meth_data, align 8, !tbaa !12
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #4 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #8 = { nofree noinline norecurse nosync nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree noinline norecurse nosync nounwind readonly uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree noinline nounwind readonly uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree nosync nounwind readnone willreturn "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nobuiltin nounwind "no-builtins" }
attributes #13 = { nobuiltin "no-builtins" }
attributes #14 = { nounwind }
attributes #15 = { nobuiltin nounwind readonly willreturn "no-builtins" }
attributes #16 = { nobuiltin nounwind readnone willreturn "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{!"clang version 14.0.0"}
!4 = !{!5, !6, i64 16}
!5 = !{!"conf_method_st", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !6, i64 40, !6, i64 48, !6, i64 56, !6, i64 64, !6, i64 72}
!6 = !{!"any pointer", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !6, i64 0}
!10 = !{!"conf_st", !6, i64 0, !6, i64 8, !6, i64 16, !11, i64 24, !11, i64 28, !6, i64 32, !6, i64 40}
!11 = !{!"int", !7, i64 0}
!12 = !{!10, !6, i64 8}
!13 = !{!10, !6, i64 16}
!14 = !{!6, !6, i64 0}
!15 = !{!16, !6, i64 8}
!16 = !{!"buf_mem_st", !17, i64 0, !6, i64 8, !17, i64 16, !17, i64 24}
!17 = !{!"long", !7, i64 0}
!18 = !{!7, !7, i64 0}
!19 = distinct !{!19, !20}
!20 = !{!"llvm.loop.mustprogress"}
!21 = !{!10, !6, i64 32}
!22 = !{!10, !11, i64 28}
!23 = !{!24, !6, i64 8}
!24 = !{!"", !6, i64 0, !6, i64 8, !6, i64 16}
!25 = !{!24, !6, i64 16}
!26 = distinct !{!26, !20}
!27 = !{!17, !17, i64 0}
!28 = !{!29, !29, i64 0}
!29 = !{!"short", !7, i64 0}
!30 = distinct !{!30, !20}
!31 = !{!10, !11, i64 24}
!32 = distinct !{!32, !20}
!33 = distinct !{!33, !20}
!34 = distinct !{!34, !20}
!35 = distinct !{!35, !20}
!36 = !{!16, !17, i64 0}
!37 = distinct !{!37, !20}
!38 = distinct !{!38, !20}
!39 = distinct !{!39, !20}
!40 = !{!11, !11, i64 0}
!41 = !{!42, !11, i64 24}
!42 = !{!"stat", !17, i64 0, !17, i64 8, !17, i64 16, !11, i64 24, !11, i64 28, !11, i64 32, !11, i64 36, !17, i64 40, !17, i64 48, !17, i64 56, !17, i64 64, !43, i64 72, !43, i64 88, !43, i64 104, !7, i64 120}
!43 = !{!"timespec", !17, i64 0, !17, i64 8}
!44 = distinct !{!44, !20}
!45 = distinct !{!45, !20}
!46 = !{!24, !6, i64 0}
