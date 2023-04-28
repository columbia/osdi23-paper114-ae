; ModuleID = 'crypto/dso/dso_dlfcn.c'
source_filename = "crypto/dso/dso_dlfcn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dso_meth_st = type { i8*, i32 (%struct.dso_st*)*, i32 (%struct.dso_st*)*, void ()* (%struct.dso_st*, i8*)*, i64 (%struct.dso_st*, i32, i64, i8*)*, i8* (%struct.dso_st*, i8*)*, i8* (%struct.dso_st*, i8*, i8*)*, i32 (%struct.dso_st*)*, i32 (%struct.dso_st*)*, i32 (i8*, i8*, i32)*, i8* (i8*)* }
%struct.dso_st = type { %struct.dso_meth_st*, %struct.stack_st_void*, i32, i32, %struct.crypto_ex_data_st, i8* (%struct.dso_st*, i8*)*, i8* (%struct.dso_st*, i8*, i8*)*, i8*, i8*, i8* }
%struct.stack_st_void = type opaque
%struct.crypto_ex_data_st = type { %struct.ossl_lib_ctx_st*, %struct.stack_st_void* }
%struct.ossl_lib_ctx_st = type opaque
%struct.stack_st = type opaque
%struct.Dl_info = type { i8*, i8*, i8*, i8* }

@dso_meth_dlfcn = internal global %struct.dso_meth_st { i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i32 0, i32 0), i32 (%struct.dso_st*)* @dlfcn_load, i32 (%struct.dso_st*)* @dlfcn_unload, void ()* (%struct.dso_st*, i8*)* @dlfcn_bind_func, i64 (%struct.dso_st*, i32, i64, i8*)* null, i8* (%struct.dso_st*, i8*)* @dlfcn_name_converter, i8* (%struct.dso_st*, i8*, i8*)* @dlfcn_merger, i32 (%struct.dso_st*)* null, i32 (%struct.dso_st*)* null, i32 (i8*, i8*, i32)* @dlfcn_pathbyaddr, i8* (i8*)* @dlfcn_globallookup }, align 8
@.str = private unnamed_addr constant [38 x i8] c"OpenSSL 'dlfcn' shared library method\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"crypto/dso/dso_dlfcn.c\00", align 1
@__func__.dlfcn_load = private unnamed_addr constant [11 x i8] c"dlfcn_load\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"filename(%s): %s\00", align 1
@__func__.dlfcn_unload = private unnamed_addr constant [13 x i8] c"dlfcn_unload\00", align 1
@__func__.dlfcn_bind_func = private unnamed_addr constant [16 x i8] c"dlfcn_bind_func\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"symname(%s): %s\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c".so\00", align 1
@__func__.dlfcn_name_converter = private unnamed_addr constant [21 x i8] c"dlfcn_name_converter\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"lib%s.so\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"%s.so\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@__func__.dlfcn_merger = private unnamed_addr constant [13 x i8] c"dlfcn_merger\00", align 1
@.str.9 = private unnamed_addr constant [21 x i8] c"dlfcn_pathbyaddr(): \00", align 1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define nonnull %struct.dso_meth_st* @DSO_METHOD_openssl() local_unnamed_addr #0 {
entry:
  ret %struct.dso_meth_st* @dso_meth_dlfcn
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @dlfcn_load(%struct.dso_st* noundef %dso) #1 {
entry:
  %call = tail call i8* @DSO_convert_filename(%struct.dso_st* noundef %dso, i8* noundef null) #7
  %call1 = tail call i32* @__errno_location() #8
  %0 = load i32, i32* %call1, align 4, !tbaa !4
  %cmp = icmp eq i8* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 noundef 105, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @__func__.dlfcn_load, i64 0, i64 0)) #7
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 37, i32 noundef 111, i8* noundef null) #7
  br label %err.thread

if.end:                                           ; preds = %entry
  %flags2 = getelementptr inbounds %struct.dso_st, %struct.dso_st* %dso, i64 0, i32 3
  %1 = load i32, i32* %flags2, align 4, !tbaa !8
  %and = and i32 %1, 32
  %tobool.not = icmp eq i32 %and, 0
  %spec.select = select i1 %tobool.not, i32 2, i32 258
  %call5 = tail call i8* @dlopen(i8* noundef nonnull %call, i32 noundef %spec.select) #7
  %cmp6 = icmp eq i8* %call5, null
  br i1 %cmp6, label %if.then7, label %if.end9

if.then7:                                         ; preds = %if.end
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 noundef 118, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @__func__.dlfcn_load, i64 0, i64 0)) #7
  %call8 = tail call i8* @dlerror() #7
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 37, i32 noundef 103, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i8* noundef nonnull %call, i8* noundef %call8) #7
  br label %err.thread

if.end9:                                          ; preds = %if.end
  store i32 %0, i32* %call1, align 4, !tbaa !4
  %meth_data = getelementptr inbounds %struct.dso_st, %struct.dso_st* %dso, i64 0, i32 1
  %2 = load %struct.stack_st_void*, %struct.stack_st_void** %meth_data, align 8, !tbaa !12
  %call11 = tail call fastcc %struct.stack_st* @ossl_check_void_sk_type(%struct.stack_st_void* noundef %2) #9
  %call13 = tail call i32 @OPENSSL_sk_push(%struct.stack_st* noundef %call11, i8* noundef nonnull %call5) #7
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.then18, label %if.end16

if.end16:                                         ; preds = %if.end9
  %loaded_filename = getelementptr inbounds %struct.dso_st, %struct.dso_st* %dso, i64 0, i32 8
  store i8* %call, i8** %loaded_filename, align 8, !tbaa !13
  br label %cleanup

err.thread:                                       ; preds = %if.then, %if.then7
  tail call void @CRYPTO_free(i8* noundef %call, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 noundef 136) #7
  br label %cleanup

if.then18:                                        ; preds = %if.end9
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 noundef 128, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @__func__.dlfcn_load, i64 0, i64 0)) #7
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 37, i32 noundef 105, i8* noundef null) #7
  tail call void @CRYPTO_free(i8* noundef nonnull %call, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 noundef 136) #7
  %call19 = tail call i32 @dlclose(i8* noundef nonnull %call5) #7
  br label %cleanup

cleanup:                                          ; preds = %err.thread, %if.then18, %if.end16
  %retval.0 = phi i32 [ 1, %if.end16 ], [ 0, %if.then18 ], [ 0, %err.thread ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @dlfcn_unload(%struct.dso_st* noundef readonly %dso) #1 {
entry:
  %cmp = icmp eq %struct.dso_st* %dso, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 noundef 146, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @__func__.dlfcn_unload, i64 0, i64 0)) #7
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 37, i32 noundef 786690, i8* noundef null) #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %meth_data = getelementptr inbounds %struct.dso_st, %struct.dso_st* %dso, i64 0, i32 1
  %0 = load %struct.stack_st_void*, %struct.stack_st_void** %meth_data, align 8, !tbaa !12
  %call = tail call fastcc %struct.stack_st* @ossl_check_const_void_sk_type(%struct.stack_st_void* noundef %0) #9
  %call1 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call) #7
  %cmp2 = icmp slt i32 %call1, 1
  br i1 %cmp2, label %cleanup, label %if.end4

if.end4:                                          ; preds = %if.end
  %1 = load %struct.stack_st_void*, %struct.stack_st_void** %meth_data, align 8, !tbaa !12
  %call6 = tail call fastcc %struct.stack_st* @ossl_check_void_sk_type(%struct.stack_st_void* noundef %1) #9
  %call7 = tail call i8* @OPENSSL_sk_pop(%struct.stack_st* noundef %call6) #7
  %cmp8 = icmp eq i8* %call7, null
  br i1 %cmp8, label %if.then9, label %if.end14

if.then9:                                         ; preds = %if.end4
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 noundef 153, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @__func__.dlfcn_unload, i64 0, i64 0)) #7
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 37, i32 noundef 104, i8* noundef null) #7
  %2 = load %struct.stack_st_void*, %struct.stack_st_void** %meth_data, align 8, !tbaa !12
  %call11 = tail call fastcc %struct.stack_st* @ossl_check_void_sk_type(%struct.stack_st_void* noundef %2) #9
  %call13 = tail call i32 @OPENSSL_sk_push(%struct.stack_st* noundef %call11, i8* noundef null) #7
  br label %cleanup

if.end14:                                         ; preds = %if.end4
  %call15 = tail call i32 @dlclose(i8* noundef nonnull %call7) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.end14, %if.then9, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 0, %if.then9 ], [ 1, %if.end14 ], [ 1, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal void ()* @dlfcn_bind_func(%struct.dso_st* noundef readonly %dso, i8* noundef %symname) #1 {
entry:
  %cmp = icmp eq %struct.dso_st* %dso, null
  %cmp1 = icmp eq i8* %symname, null
  %or.cond = or i1 %cmp, %cmp1
  br i1 %or.cond, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 noundef 174, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.dlfcn_bind_func, i64 0, i64 0)) #7
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 37, i32 noundef 786690, i8* noundef null) #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %meth_data = getelementptr inbounds %struct.dso_st, %struct.dso_st* %dso, i64 0, i32 1
  %0 = load %struct.stack_st_void*, %struct.stack_st_void** %meth_data, align 8, !tbaa !12
  %call = tail call fastcc %struct.stack_st* @ossl_check_const_void_sk_type(%struct.stack_st_void* noundef %0) #9
  %call2 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call) #7
  %cmp3 = icmp slt i32 %call2, 1
  br i1 %cmp3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 noundef 178, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.dlfcn_bind_func, i64 0, i64 0)) #7
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 37, i32 noundef 105, i8* noundef null) #7
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %1 = load %struct.stack_st_void*, %struct.stack_st_void** %meth_data, align 8, !tbaa !12
  %call7 = tail call fastcc %struct.stack_st* @ossl_check_const_void_sk_type(%struct.stack_st_void* noundef %1) #9
  %call10 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call7) #7
  %sub = add nsw i32 %call10, -1
  %call11 = tail call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call7, i32 noundef %sub) #7
  %cmp12 = icmp eq i8* %call11, null
  br i1 %cmp12, label %if.then13, label %if.end14

if.then13:                                        ; preds = %if.end5
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 noundef 183, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.dlfcn_bind_func, i64 0, i64 0)) #7
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 37, i32 noundef 104, i8* noundef null) #7
  br label %cleanup

if.end14:                                         ; preds = %if.end5
  %call15 = tail call i8* @dlsym(i8* noundef nonnull %call11, i8* noundef nonnull %symname) #7
  %cmp17 = icmp eq i8* %call15, null
  br i1 %cmp17, label %if.then18, label %if.end20

if.then18:                                        ; preds = %if.end14
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 noundef 188, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.dlfcn_bind_func, i64 0, i64 0)) #7
  %call19 = tail call i8* @dlerror() #7
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 37, i32 noundef 106, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i8* noundef nonnull %symname, i8* noundef %call19) #7
  br label %cleanup

if.end20:                                         ; preds = %if.end14
  %2 = bitcast i8* %call15 to void ()*
  br label %cleanup

cleanup:                                          ; preds = %if.end20, %if.then18, %if.then13, %if.then4, %if.then
  %retval.0 = phi void ()* [ null, %if.then ], [ null, %if.then4 ], [ null, %if.then13 ], [ null, %if.then18 ], [ %2, %if.end20 ]
  ret void ()* %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i8* @dlfcn_name_converter(%struct.dso_st* noundef %dso, i8* noundef %filename) #1 {
entry:
  %call = tail call i64 @strlen(i8* noundef %filename) #10
  %conv = trunc i64 %call to i32
  %add = add nsw i32 %conv, 1
  %call1 = tail call i8* @strstr(i8* noundef %filename, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0)) #10
  %cmp = icmp eq i8* %call1, null
  br i1 %cmp, label %if.end12, label %if.end12.thread

if.end12:                                         ; preds = %entry
  %call3 = tail call i64 @strlen(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0)) #10
  %0 = trunc i64 %call3 to i32
  %conv6 = add i32 %add, %0
  %call7 = tail call i32 @DSO_flags(%struct.dso_st* noundef %dso) #7
  %and = and i32 %call7, 2
  %cmp8 = icmp eq i32 %and, 0
  %add11 = add nsw i32 %conv6, 3
  %spec.select = select i1 %cmp8, i32 %add11, i32 %conv6
  %conv13 = sext i32 %spec.select to i64
  %call14 = tail call i8* @CRYPTO_malloc(i64 noundef %conv13, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 noundef 267) #7
  %cmp15 = icmp eq i8* %call14, null
  br i1 %cmp15, label %if.then17, label %if.then20

if.end12.thread:                                  ; preds = %entry
  %conv1353 = sext i32 %add to i64
  %call1454 = tail call i8* @CRYPTO_malloc(i64 noundef %conv1353, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 noundef 267) #7
  %cmp1555 = icmp eq i8* %call1454, null
  br i1 %cmp1555, label %if.then17, label %if.else29

if.then17:                                        ; preds = %if.end12.thread, %if.end12
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 noundef 269, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.dlfcn_name_converter, i64 0, i64 0)) #7
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 37, i32 noundef 109, i8* noundef null) #7
  br label %cleanup

if.then20:                                        ; preds = %if.end12
  %call21 = tail call i32 @DSO_flags(%struct.dso_st* noundef %dso) #7
  %and22 = and i32 %call21, 2
  %cmp23 = icmp eq i32 %and22, 0
  br i1 %cmp23, label %if.then25, label %if.else

if.then25:                                        ; preds = %if.then20
  %call26 = tail call i32 (i8*, i8*, ...) @sprintf(i8* noundef nonnull %call14, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), i8* noundef %filename) #7
  br label %cleanup

if.else:                                          ; preds = %if.then20
  %call27 = tail call i32 (i8*, i8*, ...) @sprintf(i8* noundef nonnull %call14, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i8* noundef %filename) #7
  br label %cleanup

if.else29:                                        ; preds = %if.end12.thread
  %call30 = tail call i32 (i8*, i8*, ...) @sprintf(i8* noundef nonnull %call1454, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0), i8* noundef %filename) #7
  br label %cleanup

cleanup:                                          ; preds = %if.else29, %if.else, %if.then25, %if.then17
  %retval.0 = phi i8* [ null, %if.then17 ], [ %call14, %if.then25 ], [ %call14, %if.else ], [ %call1454, %if.else29 ]
  ret i8* %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i8* @dlfcn_merger(%struct.dso_st* nocapture noundef readnone %dso, i8* noundef %filespec1, i8* noundef %filespec2) #1 {
entry:
  %tobool = icmp ne i8* %filespec1, null
  %tobool1 = icmp ne i8* %filespec2, null
  %or.cond = or i1 %tobool, %tobool1
  br i1 %or.cond, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 noundef 201, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @__func__.dlfcn_merger, i64 0, i64 0)) #7
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 37, i32 noundef 786690, i8* noundef null) #7
  br label %cleanup50

if.end:                                           ; preds = %entry
  br i1 %tobool1, label %lor.lhs.false, label %if.then6

lor.lhs.false:                                    ; preds = %if.end
  br i1 %tobool, label %land.lhs.true3, label %if.then12

land.lhs.true3:                                   ; preds = %lor.lhs.false
  %0 = load i8, i8* %filespec1, align 1, !tbaa !14
  %cmp4 = icmp eq i8 %0, 47
  br i1 %cmp4, label %if.then6, label %if.else18

if.then6:                                         ; preds = %land.lhs.true3, %if.end
  %call = tail call i8* @CRYPTO_strdup(i8* noundef %filespec1, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 noundef 209) #7
  %cmp7 = icmp eq i8* %call, null
  br i1 %cmp7, label %if.then9, label %cleanup50

if.then9:                                         ; preds = %if.then6
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 noundef 211, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @__func__.dlfcn_merger, i64 0, i64 0)) #7
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 37, i32 noundef 786688, i8* noundef null) #7
  br label %cleanup50

if.then12:                                        ; preds = %lor.lhs.false
  %call13 = tail call i8* @CRYPTO_strdup(i8* noundef nonnull %filespec2, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 noundef 219) #7
  %cmp14 = icmp eq i8* %call13, null
  br i1 %cmp14, label %if.then16, label %cleanup50

if.then16:                                        ; preds = %if.then12
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 noundef 221, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @__func__.dlfcn_merger, i64 0, i64 0)) #7
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 37, i32 noundef 786688, i8* noundef null) #7
  br label %cleanup50

if.else18:                                        ; preds = %land.lhs.true3
  %call19 = tail call i64 @strlen(i8* noundef nonnull %filespec2) #10
  %conv20 = trunc i64 %call19 to i32
  %call22 = tail call i64 @strlen(i8* noundef nonnull %filespec1) #10
  %add = add i64 %call22, %call19
  %tobool24.not = icmp eq i32 %conv20, 0
  br i1 %tobool24.not, label %if.end32, label %land.lhs.true25

land.lhs.true25:                                  ; preds = %if.else18
  %sub = shl i64 %call19, 32
  %sext77 = add i64 %sub, -4294967296
  %idxprom = ashr exact i64 %sext77, 32
  %arrayidx26 = getelementptr inbounds i8, i8* %filespec2, i64 %idxprom
  %1 = load i8, i8* %arrayidx26, align 1, !tbaa !14
  %cmp28 = icmp eq i8 %1, 47
  br i1 %cmp28, label %if.then30, label %if.end32

if.then30:                                        ; preds = %land.lhs.true25
  %dec = add nsw i32 %conv20, -1
  %dec31 = add i64 %add, -1
  br label %if.end32

if.end32:                                         ; preds = %if.then30, %land.lhs.true25, %if.else18
  %spec2len.0 = phi i32 [ %dec, %if.then30 ], [ %conv20, %land.lhs.true25 ], [ 0, %if.else18 ]
  %len.0 = phi i64 [ %dec31, %if.then30 ], [ %add, %land.lhs.true25 ], [ %add, %if.else18 ]
  %add33 = shl i64 %len.0, 32
  %sext = add i64 %add33, 8589934592
  %conv34 = ashr exact i64 %sext, 32
  %call35 = tail call i8* @CRYPTO_malloc(i64 noundef %conv34, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 noundef 241) #7
  %cmp36 = icmp eq i8* %call35, null
  br i1 %cmp36, label %cleanup.thread, label %cleanup

cleanup.thread:                                   ; preds = %if.end32
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 noundef 243, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @__func__.dlfcn_merger, i64 0, i64 0)) #7
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 37, i32 noundef 786688, i8* noundef null) #7
  br label %cleanup50

cleanup:                                          ; preds = %if.end32
  %call40 = tail call i8* @strcpy(i8* noundef nonnull %call35, i8* noundef nonnull %filespec2) #7
  %idxprom41 = sext i32 %spec2len.0 to i64
  %arrayidx42 = getelementptr inbounds i8, i8* %call35, i64 %idxprom41
  store i8 47, i8* %arrayidx42, align 1, !tbaa !14
  %add43 = add nsw i32 %spec2len.0, 1
  %idxprom44 = sext i32 %add43 to i64
  %arrayidx45 = getelementptr inbounds i8, i8* %call35, i64 %idxprom44
  %call46 = tail call i8* @strcpy(i8* noundef nonnull %arrayidx45, i8* noundef nonnull %filespec1) #7
  br label %cleanup50

cleanup50:                                        ; preds = %if.then6, %if.then12, %cleanup, %cleanup.thread, %if.then16, %if.then9, %if.then
  %retval.1 = phi i8* [ null, %if.then9 ], [ null, %if.then16 ], [ null, %if.then ], [ null, %cleanup.thread ], [ %call, %if.then6 ], [ %call35, %cleanup ], [ %call13, %if.then12 ]
  ret i8* %retval.1
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @dlfcn_pathbyaddr(i8* noundef %addr, i8* noundef %path, i32 noundef %sz) #1 {
entry:
  %dli = alloca %struct.Dl_info, align 8
  %0 = bitcast %struct.Dl_info* %dli to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %0) #11
  %cmp = icmp eq i8* %addr, null
  %spec.select = select i1 %cmp, i8* bitcast (i32 (i8*, i8*, i32)* @dlfcn_pathbyaddr to i8*), i8* %addr
  %call = call i32 @dladdr(i8* noundef %spec.select, %struct.Dl_info* noundef nonnull %dli) #7
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end14, label %if.then1

if.then1:                                         ; preds = %entry
  %dli_fname = getelementptr inbounds %struct.Dl_info, %struct.Dl_info* %dli, i64 0, i32 0
  %1 = load i8*, i8** %dli_fname, align 8, !tbaa !15
  %call2 = call i64 @strlen(i8* noundef %1) #10
  %conv = trunc i64 %call2 to i32
  %cmp3 = icmp slt i32 %sz, 1
  br i1 %cmp3, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.then1
  %add = add nsw i32 %conv, 1
  br label %cleanup

if.end6:                                          ; preds = %if.then1
  %cmp7.not = icmp slt i32 %conv, %sz
  %sub = add nsw i32 %sz, -1
  %spec.select27 = select i1 %cmp7.not, i32 %conv, i32 %sub
  %conv12 = sext i32 %spec.select27 to i64
  %call13 = call i8* @memcpy(i8* noundef %path, i8* noundef %1, i64 noundef %conv12) #7
  %inc = add nsw i32 %spec.select27, 1
  %arrayidx = getelementptr inbounds i8, i8* %path, i64 %conv12
  store i8 0, i8* %arrayidx, align 1, !tbaa !14
  br label %cleanup

if.end14:                                         ; preds = %entry
  %call15 = call i8* @dlerror() #7
  call void (i32, ...) @ERR_add_error_data(i32 noundef 2, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.9, i64 0, i64 0), i8* noundef %call15) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %if.end6, %if.then5
  %retval.0 = phi i32 [ %add, %if.then5 ], [ %inc, %if.end6 ], [ -1, %if.end14 ]
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #11
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i8* @dlfcn_globallookup(i8* noundef %name) #1 {
entry:
  %call = tail call i8* @dlopen(i8* noundef null, i32 noundef 1) #7
  %tobool.not = icmp eq i8* %call, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call1 = tail call i8* @dlsym(i8* noundef nonnull %call, i8* noundef %name) #7
  %call2 = tail call i32 @dlclose(i8* noundef nonnull %call) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %ret.0 = phi i8* [ %call1, %if.then ], [ null, %entry ]
  ret i8* %ret.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

declare i8* @DSO_convert_filename(%struct.dso_st* noundef, i8* noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
declare i32* @__errno_location() local_unnamed_addr #4

declare void @ERR_new() local_unnamed_addr #3

declare void @ERR_set_debug(i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #3

declare void @ERR_set_error(i32 noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind
declare i8* @dlopen(i8* noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind
declare i8* @dlerror() local_unnamed_addr #5

declare i32 @OPENSSL_sk_push(%struct.stack_st* noundef, i8* noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_void_sk_type(%struct.stack_st_void* noundef readnone %sk) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.stack_st_void* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

declare void @CRYPTO_free(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare i32 @dlclose(i8* noundef) local_unnamed_addr #5

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

declare i32 @OPENSSL_sk_num(%struct.stack_st* noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_const_void_sk_type(%struct.stack_st_void* noundef readnone %sk) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.stack_st_void* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

declare i8* @OPENSSL_sk_pop(%struct.stack_st* noundef) local_unnamed_addr #3

declare i8* @OPENSSL_sk_value(%struct.stack_st* noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare i8* @dlsym(i8* noundef, i8* noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare i64 @strlen(i8* noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare i8* @strstr(i8* noundef, i8* noundef) local_unnamed_addr #6

declare i32 @DSO_flags(%struct.dso_st* noundef) local_unnamed_addr #3

declare i8* @CRYPTO_malloc(i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare i32 @sprintf(i8* noundef, i8* noundef, ...) local_unnamed_addr #5

declare i8* @CRYPTO_strdup(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare i8* @strcpy(i8* noundef, i8* noundef) local_unnamed_addr #5

; Function Attrs: nounwind
declare i32 @dladdr(i8* noundef, %struct.Dl_info* noundef) local_unnamed_addr #5

; Function Attrs: nounwind
declare i8* @memcpy(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #5

declare void @ERR_add_error_data(i32 noundef, ...) local_unnamed_addr #3

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #3 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nosync nounwind readnone willreturn "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nobuiltin nounwind "no-builtins" }
attributes #8 = { nobuiltin nounwind readnone willreturn "no-builtins" }
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
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !5, i64 20}
!9 = !{!"dso_st", !10, i64 0, !10, i64 8, !6, i64 16, !5, i64 20, !11, i64 24, !10, i64 40, !10, i64 48, !10, i64 56, !10, i64 64, !10, i64 72}
!10 = !{!"any pointer", !6, i64 0}
!11 = !{!"crypto_ex_data_st", !10, i64 0, !10, i64 8}
!12 = !{!9, !10, i64 8}
!13 = !{!9, !10, i64 64}
!14 = !{!6, !6, i64 0}
!15 = !{!16, !10, i64 0}
!16 = !{!"", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24}
