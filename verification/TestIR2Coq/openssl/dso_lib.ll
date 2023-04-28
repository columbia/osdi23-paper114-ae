; ModuleID = 'crypto/dso/dso_lib.c'
source_filename = "crypto/dso/dso_lib.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dso_meth_st = type { i8*, i32 (%struct.dso_st*)*, i32 (%struct.dso_st*)*, void ()* (%struct.dso_st*, i8*)*, i64 (%struct.dso_st*, i32, i64, i8*)*, i8* (%struct.dso_st*, i8*)*, i8* (%struct.dso_st*, i8*, i8*)*, i32 (%struct.dso_st*)*, i32 (%struct.dso_st*)*, i32 (i8*, i8*, i32)*, i8* (i8*)* }
%struct.dso_st = type { %struct.dso_meth_st*, %struct.stack_st_void*, i32, i32, %struct.crypto_ex_data_st, i8* (%struct.dso_st*, i8*)*, i8* (%struct.dso_st*, i8*, i8*)*, i8*, i8*, i8* }
%struct.stack_st_void = type opaque
%struct.crypto_ex_data_st = type { %struct.ossl_lib_ctx_st*, %struct.stack_st_void* }
%struct.ossl_lib_ctx_st = type opaque
%struct.stack_st = type opaque

@.str = private unnamed_addr constant [21 x i8] c"crypto/dso/dso_lib.c\00", align 1
@__func__.DSO_free = private unnamed_addr constant [9 x i8] c"DSO_free\00", align 1
@__func__.DSO_up_ref = private unnamed_addr constant [11 x i8] c"DSO_up_ref\00", align 1
@__func__.DSO_load = private unnamed_addr constant [9 x i8] c"DSO_load\00", align 1
@__func__.DSO_bind_func = private unnamed_addr constant [14 x i8] c"DSO_bind_func\00", align 1
@__func__.DSO_ctrl = private unnamed_addr constant [9 x i8] c"DSO_ctrl\00", align 1
@__func__.DSO_get_filename = private unnamed_addr constant [17 x i8] c"DSO_get_filename\00", align 1
@__func__.DSO_set_filename = private unnamed_addr constant [17 x i8] c"DSO_set_filename\00", align 1
@__func__.DSO_merge = private unnamed_addr constant [10 x i8] c"DSO_merge\00", align 1
@__func__.DSO_convert_filename = private unnamed_addr constant [21 x i8] c"DSO_convert_filename\00", align 1
@default_DSO_meth = internal unnamed_addr global %struct.dso_meth_st* null, align 8
@__func__.DSO_pathbyaddr = private unnamed_addr constant [15 x i8] c"DSO_pathbyaddr\00", align 1
@__func__.DSO_global_lookup = private unnamed_addr constant [18 x i8] c"DSO_global_lookup\00", align 1
@__func__.DSO_new_method = private unnamed_addr constant [15 x i8] c"DSO_new_method\00", align 1

; Function Attrs: noinline nounwind uwtable
define %struct.dso_st* @DSO_new() local_unnamed_addr #0 {
entry:
  %call = tail call fastcc %struct.dso_st* @DSO_new_method() #6
  ret %struct.dso_st* %call
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.dso_st* @DSO_new_method() unnamed_addr #0 {
entry:
  %0 = load %struct.dso_meth_st*, %struct.dso_meth_st** @default_DSO_meth, align 8, !tbaa !4
  %cmp = icmp eq %struct.dso_meth_st* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = tail call %struct.dso_meth_st* @DSO_METHOD_openssl() #7
  store %struct.dso_meth_st* %call, %struct.dso_meth_st** @default_DSO_meth, align 8, !tbaa !4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %call1 = tail call i8* @CRYPTO_zalloc(i64 noundef 80, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 27) #7
  %1 = bitcast i8* %call1 to %struct.dso_st*
  %cmp2 = icmp eq i8* %call1, null
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 29, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__func__.DSO_new_method, i64 0, i64 0)) #7
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 37, i32 noundef 786688, i8* noundef null) #7
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %call5 = tail call %struct.stack_st* @OPENSSL_sk_new_null() #7
  %meth_data = getelementptr inbounds i8, i8* %call1, i64 8
  %2 = bitcast i8* %meth_data to %struct.stack_st_void**
  %3 = bitcast i8* %meth_data to %struct.stack_st**
  store %struct.stack_st* %call5, %struct.stack_st** %3, align 8, !tbaa !8
  %cmp7 = icmp eq %struct.stack_st* %call5, null
  br i1 %cmp7, label %if.then8, label %if.end9

if.then8:                                         ; preds = %if.end4
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 35, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__func__.DSO_new_method, i64 0, i64 0)) #7
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 37, i32 noundef 786688, i8* noundef null) #7
  tail call void @CRYPTO_free(i8* noundef nonnull %call1, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 36) #7
  br label %cleanup

if.end9:                                          ; preds = %if.end4
  %4 = load %struct.dso_meth_st*, %struct.dso_meth_st** @default_DSO_meth, align 8, !tbaa !4
  %meth10 = bitcast i8* %call1 to %struct.dso_meth_st**
  store %struct.dso_meth_st* %4, %struct.dso_meth_st** %meth10, align 8, !tbaa !12
  %references = getelementptr inbounds i8, i8* %call1, i64 16
  %5 = bitcast i8* %references to i32*
  store atomic i32 1, i32* %5 seq_cst, align 4, !tbaa !13
  %call11 = tail call i8* @CRYPTO_THREAD_lock_new() #7
  %lock = getelementptr inbounds i8, i8* %call1, i64 72
  %6 = bitcast i8* %lock to i8**
  store i8* %call11, i8** %6, align 8, !tbaa !14
  %cmp13 = icmp eq i8* %call11, null
  br i1 %cmp13, label %if.then14, label %if.end17

if.then14:                                        ; preds = %if.end9
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 43, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__func__.DSO_new_method, i64 0, i64 0)) #7
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 37, i32 noundef 786688, i8* noundef null) #7
  %7 = load %struct.stack_st_void*, %struct.stack_st_void** %2, align 8, !tbaa !8
  %call16 = tail call fastcc %struct.stack_st* @ossl_check_void_sk_type(%struct.stack_st_void* noundef %7) #6
  tail call void @OPENSSL_sk_free(%struct.stack_st* noundef %call16) #7
  tail call void @CRYPTO_free(i8* noundef nonnull %call1, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 45) #7
  br label %cleanup

if.end17:                                         ; preds = %if.end9
  %8 = load %struct.dso_meth_st*, %struct.dso_meth_st** %meth10, align 8, !tbaa !12
  %init = getelementptr inbounds %struct.dso_meth_st, %struct.dso_meth_st* %8, i64 0, i32 7
  %9 = load i32 (%struct.dso_st*)*, i32 (%struct.dso_st*)** %init, align 8, !tbaa !15
  %cmp19.not = icmp eq i32 (%struct.dso_st*)* %9, null
  br i1 %cmp19.not, label %cleanup, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end17
  %call22 = tail call i32 %9(%struct.dso_st* noundef nonnull %1) #7
  %tobool.not = icmp eq i32 %call22, 0
  br i1 %tobool.not, label %if.then23, label %cleanup

if.then23:                                        ; preds = %land.lhs.true
  %call24 = tail call i32 @DSO_free(%struct.dso_st* noundef nonnull %1) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end17, %land.lhs.true, %if.then23, %if.then14, %if.then8, %if.then3
  %retval.0 = phi %struct.dso_st* [ null, %if.then3 ], [ null, %if.then8 ], [ null, %if.then14 ], [ %1, %land.lhs.true ], [ null, %if.then23 ], [ %1, %if.end17 ]
  ret %struct.dso_st* %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @DSO_free(%struct.dso_st* noundef %dso) local_unnamed_addr #0 {
entry:
  %i = alloca i32, align 4
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #8
  %cmp = icmp eq %struct.dso_st* %dso, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %references = getelementptr inbounds %struct.dso_st, %struct.dso_st* %dso, i64 0, i32 2
  %lock = getelementptr inbounds %struct.dso_st, %struct.dso_st* %dso, i64 0, i32 9
  call fastcc void @CRYPTO_DOWN_REF(i32* noundef nonnull %references, i32* noundef nonnull %i) #6
  %1 = load i32, i32* %i, align 4, !tbaa !17
  %cmp4 = icmp sgt i32 %1, 0
  br i1 %cmp4, label %cleanup, label %if.end6

if.end6:                                          ; preds = %if.end
  %flags = getelementptr inbounds %struct.dso_st, %struct.dso_st* %dso, i64 0, i32 3
  %2 = load i32, i32* %flags, align 4, !tbaa !18
  %and = and i32 %2, 4
  %cmp7 = icmp eq i32 %and, 0
  br i1 %cmp7, label %if.then8, label %if.end15

if.then8:                                         ; preds = %if.end6
  %meth = getelementptr inbounds %struct.dso_st, %struct.dso_st* %dso, i64 0, i32 0
  %3 = load %struct.dso_meth_st*, %struct.dso_meth_st** %meth, align 8, !tbaa !12
  %dso_unload = getelementptr inbounds %struct.dso_meth_st, %struct.dso_meth_st* %3, i64 0, i32 2
  %4 = load i32 (%struct.dso_st*)*, i32 (%struct.dso_st*)** %dso_unload, align 8, !tbaa !19
  %cmp9.not = icmp eq i32 (%struct.dso_st*)* %4, null
  br i1 %cmp9.not, label %if.end15, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.then8
  %call12 = tail call i32 %4(%struct.dso_st* noundef nonnull %dso) #7
  %tobool.not = icmp eq i32 %call12, 0
  br i1 %tobool.not, label %if.then13, label %if.end15

if.then13:                                        ; preds = %land.lhs.true
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 79, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @__func__.DSO_free, i64 0, i64 0)) #7
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 37, i32 noundef 107, i8* noundef null) #7
  br label %cleanup

if.end15:                                         ; preds = %if.then8, %land.lhs.true, %if.end6
  %meth16 = getelementptr inbounds %struct.dso_st, %struct.dso_st* %dso, i64 0, i32 0
  %5 = load %struct.dso_meth_st*, %struct.dso_meth_st** %meth16, align 8, !tbaa !12
  %finish = getelementptr inbounds %struct.dso_meth_st, %struct.dso_meth_st* %5, i64 0, i32 8
  %6 = load i32 (%struct.dso_st*)*, i32 (%struct.dso_st*)** %finish, align 8, !tbaa !20
  %cmp17.not = icmp eq i32 (%struct.dso_st*)* %6, null
  br i1 %cmp17.not, label %if.end24, label %land.lhs.true18

land.lhs.true18:                                  ; preds = %if.end15
  %call21 = tail call i32 %6(%struct.dso_st* noundef nonnull %dso) #7
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %if.then23, label %if.end24

if.then23:                                        ; preds = %land.lhs.true18
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 85, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @__func__.DSO_free, i64 0, i64 0)) #7
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 37, i32 noundef 102, i8* noundef null) #7
  br label %cleanup

if.end24:                                         ; preds = %land.lhs.true18, %if.end15
  %meth_data = getelementptr inbounds %struct.dso_st, %struct.dso_st* %dso, i64 0, i32 1
  %7 = load %struct.stack_st_void*, %struct.stack_st_void** %meth_data, align 8, !tbaa !8
  %call25 = tail call fastcc %struct.stack_st* @ossl_check_void_sk_type(%struct.stack_st_void* noundef %7) #6
  tail call void @OPENSSL_sk_free(%struct.stack_st* noundef %call25) #7
  %filename = getelementptr inbounds %struct.dso_st, %struct.dso_st* %dso, i64 0, i32 7
  %8 = load i8*, i8** %filename, align 8, !tbaa !21
  tail call void @CRYPTO_free(i8* noundef %8, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 90) #7
  %loaded_filename = getelementptr inbounds %struct.dso_st, %struct.dso_st* %dso, i64 0, i32 8
  %9 = load i8*, i8** %loaded_filename, align 8, !tbaa !22
  tail call void @CRYPTO_free(i8* noundef %9, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 91) #7
  %10 = load i8*, i8** %lock, align 8, !tbaa !14
  tail call void @CRYPTO_THREAD_lock_free(i8* noundef %10) #7
  %11 = bitcast %struct.dso_st* %dso to i8*
  tail call void @CRYPTO_free(i8* noundef nonnull %11, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 93) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry, %if.end24, %if.then23, %if.then13
  %retval.0 = phi i32 [ 1, %if.end24 ], [ 0, %if.then23 ], [ 0, %if.then13 ], [ 1, %entry ], [ 1, %if.end ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #8
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: mustprogress nofree noinline norecurse nounwind uwtable willreturn
define internal fastcc void @CRYPTO_DOWN_REF(i32* nocapture noundef %val, i32* nocapture noundef writeonly %ret) unnamed_addr #2 {
entry:
  %0 = atomicrmw sub i32* %val, i32 1 monotonic, align 4
  %sub = add nsw i32 %0, -1
  store i32 %sub, i32* %ret, align 4, !tbaa !17
  %cmp = icmp eq i32 %sub, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  fence acquire
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare void @ERR_new() local_unnamed_addr #3

declare void @ERR_set_debug(i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #3

declare void @ERR_set_error(i32 noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #3

declare void @OPENSSL_sk_free(%struct.stack_st* noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_void_sk_type(%struct.stack_st_void* noundef readnone %sk) unnamed_addr #4 {
entry:
  %0 = bitcast %struct.stack_st_void* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

declare void @CRYPTO_free(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #3

declare void @CRYPTO_THREAD_lock_free(i8* noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define i32 @DSO_flags(%struct.dso_st* noundef readonly %dso) local_unnamed_addr #5 {
entry:
  %cmp = icmp eq %struct.dso_st* %dso, null
  br i1 %cmp, label %cond.end, label %cond.false

cond.false:                                       ; preds = %entry
  %flags = getelementptr inbounds %struct.dso_st, %struct.dso_st* %dso, i64 0, i32 3
  %0 = load i32, i32* %flags, align 4, !tbaa !18
  br label %cond.end

cond.end:                                         ; preds = %entry, %cond.false
  %cond = phi i32 [ %0, %cond.false ], [ 0, %entry ]
  ret i32 %cond
}

; Function Attrs: noinline nounwind uwtable
define i32 @DSO_up_ref(%struct.dso_st* noundef %dso) local_unnamed_addr #0 {
entry:
  %i = alloca i32, align 4
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #8
  %cmp = icmp eq %struct.dso_st* %dso, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 107, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @__func__.DSO_up_ref, i64 0, i64 0)) #7
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 37, i32 noundef 786690, i8* noundef null) #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %references = getelementptr inbounds %struct.dso_st, %struct.dso_st* %dso, i64 0, i32 2
  call fastcc void @CRYPTO_UP_REF(i32* noundef nonnull %references, i32* noundef nonnull %i) #6
  %1 = load i32, i32* %i, align 4, !tbaa !17
  %cmp4 = icmp sgt i32 %1, 1
  %cond = zext i1 %cmp4 to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ %cond, %if.end ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #8
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind uwtable willreturn
define internal fastcc void @CRYPTO_UP_REF(i32* nocapture noundef %val, i32* nocapture noundef writeonly %ret) unnamed_addr #2 {
entry:
  %0 = atomicrmw add i32* %val, i32 1 monotonic, align 4
  %add = add nsw i32 %0, 1
  store i32 %add, i32* %ret, align 4, !tbaa !17
  ret void
}

; Function Attrs: noinline nounwind uwtable
define %struct.dso_st* @DSO_load(%struct.dso_st* noundef %dso, i8* noundef %filename, %struct.dso_meth_st* nocapture readnone %meth, i32 noundef %flags) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.dso_st* %dso, null
  br i1 %cmp, label %if.then, label %if.end8

if.then:                                          ; preds = %entry
  %call = tail call fastcc %struct.dso_st* @DSO_new_method() #6
  %cmp1 = icmp eq %struct.dso_st* %call, null
  br i1 %cmp1, label %err.thread, label %if.end

err.thread:                                       ; preds = %if.then
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 127, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @__func__.DSO_load, i64 0, i64 0)) #7
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 37, i32 noundef 786688, i8* noundef null) #7
  br label %cleanup

if.end:                                           ; preds = %if.then
  %conv = sext i32 %flags to i64
  %call3 = tail call i64 @DSO_ctrl(%struct.dso_st* noundef nonnull %call, i32 noundef 2, i64 noundef %conv, i8* noundef null) #6
  %cmp4 = icmp slt i64 %call3, 0
  br i1 %cmp4, label %err.thread60, label %if.end8

err.thread60:                                     ; preds = %if.end
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 133, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @__func__.DSO_load, i64 0, i64 0)) #7
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 37, i32 noundef 100, i8* noundef null) #7
  br label %if.then38

if.end8:                                          ; preds = %entry, %if.end
  %ret.0 = phi %struct.dso_st* [ %call, %if.end ], [ %dso, %entry ]
  %filename9 = getelementptr inbounds %struct.dso_st, %struct.dso_st* %ret.0, i64 0, i32 7
  %0 = load i8*, i8** %filename9, align 8, !tbaa !21
  %cmp10.not = icmp eq i8* %0, null
  br i1 %cmp10.not, label %if.end13, label %err

if.end13:                                         ; preds = %if.end8
  %cmp14.not = icmp eq i8* %filename, null
  br i1 %cmp14.not, label %err, label %if.then16

if.then16:                                        ; preds = %if.end13
  %call17 = tail call i32 @DSO_set_filename(%struct.dso_st* noundef nonnull %ret.0, i8* noundef nonnull %filename) #6
  %tobool.not = icmp eq i32 %call17, 0
  br i1 %tobool.not, label %err, label %if.end20

if.end20:                                         ; preds = %if.then16
  %.pr = load i8*, i8** %filename9, align 8, !tbaa !21
  %cmp22 = icmp eq i8* %.pr, null
  br i1 %cmp22, label %err, label %if.end25

if.end25:                                         ; preds = %if.end20
  %meth26 = getelementptr inbounds %struct.dso_st, %struct.dso_st* %ret.0, i64 0, i32 0
  %1 = load %struct.dso_meth_st*, %struct.dso_meth_st** %meth26, align 8, !tbaa !12
  %dso_load = getelementptr inbounds %struct.dso_meth_st, %struct.dso_meth_st* %1, i64 0, i32 1
  %2 = load i32 (%struct.dso_st*)*, i32 (%struct.dso_st*)** %dso_load, align 8, !tbaa !23
  %cmp27 = icmp eq i32 (%struct.dso_st*)* %2, null
  br i1 %cmp27, label %err, label %if.end30

if.end30:                                         ; preds = %if.end25
  %call33 = tail call i32 %2(%struct.dso_st* noundef nonnull %ret.0) #7
  %tobool34.not = icmp eq i32 %call33, 0
  br i1 %tobool34.not, label %err, label %cleanup

err:                                              ; preds = %if.end30, %if.end25, %if.end20, %if.end13, %if.then16, %if.end8
  %.sink65 = phi i32 [ 140, %if.end8 ], [ 149, %if.then16 ], [ 154, %if.end13 ], [ 154, %if.end20 ], [ 158, %if.end25 ], [ 162, %if.end30 ]
  %.sink = phi i32 [ 110, %if.end8 ], [ 112, %if.then16 ], [ 111, %if.end13 ], [ 111, %if.end20 ], [ 108, %if.end25 ], [ 103, %if.end30 ]
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef %.sink65, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @__func__.DSO_load, i64 0, i64 0)) #7
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 37, i32 noundef %.sink, i8* noundef null) #7
  br i1 %cmp, label %if.then38, label %cleanup

if.then38:                                        ; preds = %err.thread60, %err
  %ret.164 = phi %struct.dso_st* [ %call, %err.thread60 ], [ %ret.0, %err ]
  %call39 = tail call i32 @DSO_free(%struct.dso_st* noundef nonnull %ret.164) #6
  br label %cleanup

cleanup:                                          ; preds = %err.thread, %err, %if.then38, %if.end30
  %retval.0 = phi %struct.dso_st* [ %ret.0, %if.end30 ], [ null, %if.then38 ], [ null, %err ], [ null, %err.thread ]
  ret %struct.dso_st* %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i64 @DSO_ctrl(%struct.dso_st* noundef %dso, i32 noundef %cmd, i64 noundef %larg, i8* noundef %parg) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.dso_st* %dso, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 205, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @__func__.DSO_ctrl, i64 0, i64 0)) #7
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 37, i32 noundef 786690, i8* noundef null) #7
  br label %return

if.end:                                           ; preds = %entry
  switch i32 %cmd, label %sw.epilog [
    i32 1, label %sw.bb
    i32 2, label %sw.bb1
    i32 3, label %sw.bb4
  ]

sw.bb:                                            ; preds = %if.end
  %flags = getelementptr inbounds %struct.dso_st, %struct.dso_st* %dso, i64 0, i32 3
  %0 = load i32, i32* %flags, align 4, !tbaa !18
  %conv = sext i32 %0 to i64
  br label %return

sw.bb1:                                           ; preds = %if.end
  %conv2 = trunc i64 %larg to i32
  %flags3 = getelementptr inbounds %struct.dso_st, %struct.dso_st* %dso, i64 0, i32 3
  store i32 %conv2, i32* %flags3, align 4, !tbaa !18
  br label %return

sw.bb4:                                           ; preds = %if.end
  %conv5 = trunc i64 %larg to i32
  %flags6 = getelementptr inbounds %struct.dso_st, %struct.dso_st* %dso, i64 0, i32 3
  %1 = load i32, i32* %flags6, align 4, !tbaa !18
  %or = or i32 %1, %conv5
  store i32 %or, i32* %flags6, align 4, !tbaa !18
  br label %return

sw.epilog:                                        ; preds = %if.end
  %meth = getelementptr inbounds %struct.dso_st, %struct.dso_st* %dso, i64 0, i32 0
  %2 = load %struct.dso_meth_st*, %struct.dso_meth_st** %meth, align 8, !tbaa !12
  %cmp7 = icmp eq %struct.dso_meth_st* %2, null
  br i1 %cmp7, label %if.then12, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %sw.epilog
  %dso_ctrl = getelementptr inbounds %struct.dso_meth_st, %struct.dso_meth_st* %2, i64 0, i32 4
  %3 = load i64 (%struct.dso_st*, i32, i64, i8*)*, i64 (%struct.dso_st*, i32, i64, i8*)** %dso_ctrl, align 8, !tbaa !24
  %cmp10 = icmp eq i64 (%struct.dso_st*, i32, i64, i8*)* %3, null
  br i1 %cmp10, label %if.then12, label %if.end13

if.then12:                                        ; preds = %lor.lhs.false, %sw.epilog
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 225, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @__func__.DSO_ctrl, i64 0, i64 0)) #7
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 37, i32 noundef 108, i8* noundef null) #7
  br label %return

if.end13:                                         ; preds = %lor.lhs.false
  %call = tail call i64 %3(%struct.dso_st* noundef nonnull %dso, i32 noundef %cmd, i64 noundef %larg, i8* noundef %parg) #7
  br label %return

return:                                           ; preds = %if.end13, %if.then12, %sw.bb4, %sw.bb1, %sw.bb, %if.then
  %retval.0 = phi i64 [ -1, %if.then ], [ -1, %if.then12 ], [ %call, %if.end13 ], [ 0, %sw.bb4 ], [ 0, %sw.bb1 ], [ %conv, %sw.bb ]
  ret i64 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @DSO_set_filename(%struct.dso_st* noundef %dso, i8* noundef %filename) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.dso_st* %dso, null
  %cmp1 = icmp eq i8* %filename, null
  %or.cond = or i1 %cmp, %cmp1
  br i1 %or.cond, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 245, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.DSO_set_filename, i64 0, i64 0)) #7
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 37, i32 noundef 786690, i8* noundef null) #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %loaded_filename = getelementptr inbounds %struct.dso_st, %struct.dso_st* %dso, i64 0, i32 8
  %0 = load i8*, i8** %loaded_filename, align 8, !tbaa !22
  %tobool.not = icmp eq i8* %0, null
  br i1 %tobool.not, label %if.end3, label %if.then2

if.then2:                                         ; preds = %if.end
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 249, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.DSO_set_filename, i64 0, i64 0)) #7
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 37, i32 noundef 110, i8* noundef null) #7
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %call = tail call i8* @CRYPTO_strdup(i8* noundef nonnull %filename, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 253) #7
  %cmp4 = icmp eq i8* %call, null
  br i1 %cmp4, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end3
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 255, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.DSO_set_filename, i64 0, i64 0)) #7
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 37, i32 noundef 786688, i8* noundef null) #7
  br label %cleanup

if.end6:                                          ; preds = %if.end3
  %filename7 = getelementptr inbounds %struct.dso_st, %struct.dso_st* %dso, i64 0, i32 7
  %1 = load i8*, i8** %filename7, align 8, !tbaa !21
  tail call void @CRYPTO_free(i8* noundef %1, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 258) #7
  store i8* %call, i8** %filename7, align 8, !tbaa !21
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.then5, %if.then2, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 0, %if.then2 ], [ 0, %if.then5 ], [ 1, %if.end6 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define void ()* @DSO_bind_func(%struct.dso_st* noundef %dso, i8* noundef %symname) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.dso_st* %dso, null
  %cmp1 = icmp eq i8* %symname, null
  %or.cond = or i1 %cmp, %cmp1
  br i1 %or.cond, label %cleanup.sink.split, label %if.end

if.end:                                           ; preds = %entry
  %meth = getelementptr inbounds %struct.dso_st, %struct.dso_st* %dso, i64 0, i32 0
  %0 = load %struct.dso_meth_st*, %struct.dso_meth_st** %meth, align 8, !tbaa !12
  %dso_bind_func = getelementptr inbounds %struct.dso_meth_st, %struct.dso_meth_st* %0, i64 0, i32 3
  %1 = load void ()* (%struct.dso_st*, i8*)*, void ()* (%struct.dso_st*, i8*)** %dso_bind_func, align 8, !tbaa !25
  %cmp2 = icmp eq void ()* (%struct.dso_st*, i8*)* %1, null
  br i1 %cmp2, label %cleanup.sink.split, label %if.end4

if.end4:                                          ; preds = %if.end
  %call = tail call void ()* %1(%struct.dso_st* noundef nonnull %dso, i8* noundef nonnull %symname) #7
  %cmp7 = icmp eq void ()* %call, null
  br i1 %cmp7, label %cleanup.sink.split, label %cleanup

cleanup.sink.split:                               ; preds = %if.end4, %if.end, %entry
  %.sink15 = phi i32 [ 178, %entry ], [ 182, %if.end ], [ 186, %if.end4 ]
  %.sink = phi i32 [ 786690, %entry ], [ 108, %if.end ], [ 106, %if.end4 ]
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef %.sink15, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.DSO_bind_func, i64 0, i64 0)) #7
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 37, i32 noundef %.sink, i8* noundef null) #7
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end4
  %retval.0 = phi void ()* [ %call, %if.end4 ], [ null, %cleanup.sink.split ]
  ret void ()* %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i8* @DSO_get_filename(%struct.dso_st* noundef readonly %dso) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.dso_st* %dso, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 234, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.DSO_get_filename, i64 0, i64 0)) #7
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 37, i32 noundef 786690, i8* noundef null) #7
  br label %return

if.end:                                           ; preds = %entry
  %filename = getelementptr inbounds %struct.dso_st, %struct.dso_st* %dso, i64 0, i32 7
  %0 = load i8*, i8** %filename, align 8, !tbaa !21
  br label %return

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi i8* [ null, %if.then ], [ %0, %if.end ]
  ret i8* %retval.0
}

declare i8* @CRYPTO_strdup(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define i8* @DSO_merge(%struct.dso_st* noundef %dso, i8* noundef %filespec1, i8* noundef %filespec2) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.dso_st* %dso, null
  %cmp1 = icmp eq i8* %filespec1, null
  %or.cond = or i1 %cmp, %cmp1
  br i1 %or.cond, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 268, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.DSO_merge, i64 0, i64 0)) #7
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 37, i32 noundef 786690, i8* noundef null) #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %flags = getelementptr inbounds %struct.dso_st, %struct.dso_st* %dso, i64 0, i32 3
  %0 = load i32, i32* %flags, align 4, !tbaa !18
  %and = and i32 %0, 1
  %cmp2 = icmp eq i32 %and, 0
  br i1 %cmp2, label %if.then3, label %cleanup

if.then3:                                         ; preds = %if.end
  %merger = getelementptr inbounds %struct.dso_st, %struct.dso_st* %dso, i64 0, i32 6
  %1 = load i8* (%struct.dso_st*, i8*, i8*)*, i8* (%struct.dso_st*, i8*, i8*)** %merger, align 8, !tbaa !26
  %cmp4.not = icmp eq i8* (%struct.dso_st*, i8*, i8*)* %1, null
  br i1 %cmp4.not, label %if.else, label %if.then5

if.then5:                                         ; preds = %if.then3
  %call = tail call i8* %1(%struct.dso_st* noundef nonnull %dso, i8* noundef nonnull %filespec1, i8* noundef %filespec2) #7
  br label %cleanup

if.else:                                          ; preds = %if.then3
  %meth = getelementptr inbounds %struct.dso_st, %struct.dso_st* %dso, i64 0, i32 0
  %2 = load %struct.dso_meth_st*, %struct.dso_meth_st** %meth, align 8, !tbaa !12
  %dso_merger = getelementptr inbounds %struct.dso_meth_st, %struct.dso_meth_st* %2, i64 0, i32 6
  %3 = load i8* (%struct.dso_st*, i8*, i8*)*, i8* (%struct.dso_st*, i8*, i8*)** %dso_merger, align 8, !tbaa !27
  %cmp7.not = icmp eq i8* (%struct.dso_st*, i8*, i8*)* %3, null
  br i1 %cmp7.not, label %cleanup, label %if.then8

if.then8:                                         ; preds = %if.else
  %call11 = tail call i8* %3(%struct.dso_st* noundef nonnull %dso, i8* noundef nonnull %filespec1, i8* noundef %filespec2) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.else, %if.then8, %if.then5, %if.then
  %retval.0 = phi i8* [ null, %if.then ], [ %call, %if.then5 ], [ %call11, %if.then8 ], [ null, %if.else ], [ null, %if.end ]
  ret i8* %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i8* @DSO_convert_filename(%struct.dso_st* noundef %dso, i8* noundef %filename) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.dso_st* %dso, null
  br i1 %cmp, label %cleanup.sink.split, label %if.end

if.end:                                           ; preds = %entry
  %cmp1 = icmp eq i8* %filename, null
  br i1 %cmp1, label %if.end4, label %if.end7

if.end4:                                          ; preds = %if.end
  %filename3 = getelementptr inbounds %struct.dso_st, %struct.dso_st* %dso, i64 0, i32 7
  %0 = load i8*, i8** %filename3, align 8, !tbaa !21
  %cmp5 = icmp eq i8* %0, null
  br i1 %cmp5, label %cleanup.sink.split, label %if.end7

if.end7:                                          ; preds = %if.end, %if.end4
  %filename.addr.046 = phi i8* [ %0, %if.end4 ], [ %filename, %if.end ]
  %flags = getelementptr inbounds %struct.dso_st, %struct.dso_st* %dso, i64 0, i32 3
  %1 = load i32, i32* %flags, align 4, !tbaa !18
  %and = and i32 %1, 1
  %cmp8 = icmp eq i32 %and, 0
  br i1 %cmp8, label %if.then9, label %if.then22

if.then9:                                         ; preds = %if.end7
  %name_converter = getelementptr inbounds %struct.dso_st, %struct.dso_st* %dso, i64 0, i32 5
  %2 = load i8* (%struct.dso_st*, i8*)*, i8* (%struct.dso_st*, i8*)** %name_converter, align 8, !tbaa !28
  %cmp10.not = icmp eq i8* (%struct.dso_st*, i8*)* %2, null
  br i1 %cmp10.not, label %if.else, label %if.end20

if.else:                                          ; preds = %if.then9
  %meth = getelementptr inbounds %struct.dso_st, %struct.dso_st* %dso, i64 0, i32 0
  %3 = load %struct.dso_meth_st*, %struct.dso_meth_st** %meth, align 8, !tbaa !12
  %dso_name_converter = getelementptr inbounds %struct.dso_meth_st, %struct.dso_meth_st* %3, i64 0, i32 5
  %4 = load i8* (%struct.dso_st*, i8*)*, i8* (%struct.dso_st*, i8*)** %dso_name_converter, align 8, !tbaa !29
  %cmp13.not = icmp eq i8* (%struct.dso_st*, i8*)* %4, null
  br i1 %cmp13.not, label %if.then22, label %if.end20

if.end20:                                         ; preds = %if.else, %if.then9
  %.sink = phi i8* (%struct.dso_st*, i8*)* [ %2, %if.then9 ], [ %4, %if.else ]
  %call = tail call i8* %.sink(%struct.dso_st* noundef nonnull %dso, i8* noundef nonnull %filename.addr.046) #7
  %cmp21 = icmp eq i8* %call, null
  br i1 %cmp21, label %if.then22, label %cleanup

if.then22:                                        ; preds = %if.end7, %if.else, %if.end20
  %call23 = tail call i8* @CRYPTO_strdup(i8* noundef nonnull %filename.addr.046, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 301) #7
  %cmp24 = icmp eq i8* %call23, null
  br i1 %cmp24, label %cleanup.sink.split, label %cleanup

cleanup.sink.split:                               ; preds = %if.then22, %if.end4, %entry
  %.sink50 = phi i32 [ 285, %entry ], [ 291, %if.end4 ], [ 303, %if.then22 ]
  %.sink49 = phi i32 [ 786690, %entry ], [ 111, %if.end4 ], [ 786688, %if.then22 ]
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef %.sink50, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.DSO_convert_filename, i64 0, i64 0)) #7
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 37, i32 noundef %.sink49, i8* noundef null) #7
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end20, %if.then22
  %retval.0 = phi i8* [ %call23, %if.then22 ], [ %call, %if.end20 ], [ null, %cleanup.sink.split ]
  ret i8* %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @DSO_pathbyaddr(i8* noundef %addr, i8* noundef %path, i32 noundef %sz) local_unnamed_addr #0 {
entry:
  %0 = load %struct.dso_meth_st*, %struct.dso_meth_st** @default_DSO_meth, align 8, !tbaa !4
  %cmp = icmp eq %struct.dso_meth_st* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = tail call %struct.dso_meth_st* @DSO_METHOD_openssl() #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %meth.0 = phi %struct.dso_meth_st* [ %call, %if.then ], [ %0, %entry ]
  %pathbyaddr = getelementptr inbounds %struct.dso_meth_st, %struct.dso_meth_st* %meth.0, i64 0, i32 9
  %1 = load i32 (i8*, i8*, i32)*, i32 (i8*, i8*, i32)** %pathbyaddr, align 8, !tbaa !30
  %cmp1 = icmp eq i32 (i8*, i8*, i32)* %1, null
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 316, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__func__.DSO_pathbyaddr, i64 0, i64 0)) #7
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 37, i32 noundef 108, i8* noundef null) #7
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %call5 = tail call i32 %1(i8* noundef %addr, i8* noundef %path, i32 noundef %sz) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.then2
  %retval.0 = phi i32 [ -1, %if.then2 ], [ %call5, %if.end3 ]
  ret i32 %retval.0
}

declare %struct.dso_meth_st* @DSO_METHOD_openssl() local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define %struct.dso_st* @DSO_dsobyaddr(i8* noundef %addr, i32 noundef %flags) local_unnamed_addr #0 {
entry:
  %call = tail call i32 @DSO_pathbyaddr(i8* noundef %addr, i8* noundef null, i32 noundef 0) #6
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %conv22 = zext i32 %call to i64
  %call1 = tail call i8* @CRYPTO_malloc(i64 noundef %conv22, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 331) #7
  %cmp2.not = icmp eq i8* %call1, null
  br i1 %cmp2.not, label %if.end9, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  %call4 = tail call i32 @DSO_pathbyaddr(i8* noundef %addr, i8* noundef nonnull %call1, i32 noundef %call) #6
  %cmp5 = icmp eq i32 %call4, %call
  br i1 %cmp5, label %if.then7, label %if.end9

if.then7:                                         ; preds = %land.lhs.true
  %call8 = tail call %struct.dso_st* @DSO_load(%struct.dso_st* noundef null, i8* noundef nonnull %call1, %struct.dso_meth_st* undef, i32 noundef %flags) #6
  br label %if.end9

if.end9:                                          ; preds = %if.then7, %land.lhs.true, %if.end
  %ret.0 = phi %struct.dso_st* [ %call8, %if.then7 ], [ null, %land.lhs.true ], [ null, %if.end ]
  tail call void @CRYPTO_free(i8* noundef %call1, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 336) #7
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end9
  %retval.0 = phi %struct.dso_st* [ %ret.0, %if.end9 ], [ null, %entry ]
  ret %struct.dso_st* %retval.0
}

declare i8* @CRYPTO_malloc(i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define i8* @DSO_global_lookup(i8* noundef %name) local_unnamed_addr #0 {
entry:
  %0 = load %struct.dso_meth_st*, %struct.dso_meth_st** @default_DSO_meth, align 8, !tbaa !4
  %cmp = icmp eq %struct.dso_meth_st* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = tail call %struct.dso_meth_st* @DSO_METHOD_openssl() #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %meth.0 = phi %struct.dso_meth_st* [ %call, %if.then ], [ %0, %entry ]
  %globallookup = getelementptr inbounds %struct.dso_meth_st, %struct.dso_meth_st* %meth.0, i64 0, i32 10
  %1 = load i8* (i8*)*, i8* (i8*)** %globallookup, align 8, !tbaa !31
  %cmp1 = icmp eq i8* (i8*)* %1, null
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 346, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.DSO_global_lookup, i64 0, i64 0)) #7
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 37, i32 noundef 108, i8* noundef null) #7
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %call5 = tail call i8* %1(i8* noundef %name) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.then2
  %retval.0 = phi i8* [ null, %if.then2 ], [ %call5, %if.end3 ]
  ret i8* %retval.0
}

declare i8* @CRYPTO_zalloc(i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #3

declare %struct.stack_st* @OPENSSL_sk_new_null() local_unnamed_addr #3

declare i8* @CRYPTO_THREAD_lock_new() local_unnamed_addr #3

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { mustprogress nofree noinline norecurse nounwind uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nobuiltin "no-builtins" }
attributes #7 = { nobuiltin nounwind "no-builtins" }
attributes #8 = { nounwind }

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
!8 = !{!9, !5, i64 8}
!9 = !{!"dso_st", !5, i64 0, !5, i64 8, !6, i64 16, !10, i64 20, !11, i64 24, !5, i64 40, !5, i64 48, !5, i64 56, !5, i64 64, !5, i64 72}
!10 = !{!"int", !6, i64 0}
!11 = !{!"crypto_ex_data_st", !5, i64 0, !5, i64 8}
!12 = !{!9, !5, i64 0}
!13 = !{!9, !6, i64 16}
!14 = !{!9, !5, i64 72}
!15 = !{!16, !5, i64 56}
!16 = !{!"dso_meth_st", !5, i64 0, !5, i64 8, !5, i64 16, !5, i64 24, !5, i64 32, !5, i64 40, !5, i64 48, !5, i64 56, !5, i64 64, !5, i64 72, !5, i64 80}
!17 = !{!10, !10, i64 0}
!18 = !{!9, !10, i64 20}
!19 = !{!16, !5, i64 16}
!20 = !{!16, !5, i64 64}
!21 = !{!9, !5, i64 56}
!22 = !{!9, !5, i64 64}
!23 = !{!16, !5, i64 8}
!24 = !{!16, !5, i64 32}
!25 = !{!16, !5, i64 24}
!26 = !{!9, !5, i64 48}
!27 = !{!16, !5, i64 48}
!28 = !{!9, !5, i64 40}
!29 = !{!16, !5, i64 40}
!30 = !{!16, !5, i64 72}
!31 = !{!16, !5, i64 80}
