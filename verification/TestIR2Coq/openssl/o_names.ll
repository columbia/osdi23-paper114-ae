; ModuleID = 'crypto/objects/o_names.c'
source_filename = "crypto/objects/o_names.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stack_st_NAME_FUNCS = type opaque
%struct.lhash_st_OBJ_NAME = type { %union.lh_OBJ_NAME_dummy }
%union.lh_OBJ_NAME_dummy = type { i8* }
%struct.name_funcs_st = type { i64 (i8*)*, i32 (i8*, i8*)*, void (i8*, i32, i8*)* }
%struct.stack_st = type opaque
%struct.obj_name_st = type { i32, i32, i8*, i8* }
%struct.lhash_st = type opaque
%struct.OBJ_DOALL = type { i32, void (%struct.obj_name_st*, i8*)*, i8* }
%struct.doall_sorted = type { i32, i32, %struct.obj_name_st** }

@init = internal global i32 0, align 4
@o_names_init_ossl_ret_ = internal unnamed_addr global i32 0, align 4
@obj_lock = internal unnamed_addr global i8* null, align 8
@name_funcs_stack = internal unnamed_addr global %struct.stack_st_NAME_FUNCS* null, align 8
@names_type_num = internal unnamed_addr global i32 7, align 4
@.str = private unnamed_addr constant [25 x i8] c"crypto/objects/o_names.c\00", align 1
@__func__.OBJ_NAME_new_index = private unnamed_addr constant [19 x i8] c"OBJ_NAME_new_index\00", align 1
@names_lh = internal unnamed_addr global %struct.lhash_st_OBJ_NAME* null, align 8
@free_type = internal unnamed_addr global i32 0, align 4

; Function Attrs: noinline nounwind uwtable
define i32 @OBJ_NAME_init() local_unnamed_addr #0 {
entry:
  %call = tail call i32 @CRYPTO_THREAD_run_once(i32* noundef nonnull @init, void ()* noundef nonnull @o_names_init_ossl_) #6
  %tobool.not = icmp eq i32 %call, 0
  %0 = load i32, i32* @o_names_init_ossl_ret_, align 4
  %cond = select i1 %tobool.not, i32 0, i32 %0
  ret i32 %cond
}

declare i32 @CRYPTO_THREAD_run_once(i32* noundef, void ()* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal void @o_names_init_ossl_() #0 {
entry:
  %call = tail call fastcc i32 @o_names_init() #7
  store i32 %call, i32* @o_names_init_ossl_ret_, align 4, !tbaa !4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define i32 @OBJ_NAME_new_index(i64 (i8*)* noundef %hash_func, i32 (i8*, i8*)* noundef %cmp_func, void (i8*, i32, i8*)* noundef %free_func) local_unnamed_addr #0 {
entry:
  %call = tail call i32 @OBJ_NAME_init() #7
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %0 = load i8*, i8** @obj_lock, align 8, !tbaa !8
  %call1 = tail call i32 @CRYPTO_THREAD_write_lock(i8* noundef %0) #6
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %cleanup, label %if.end4

if.end4:                                          ; preds = %if.end
  %1 = load %struct.stack_st_NAME_FUNCS*, %struct.stack_st_NAME_FUNCS** @name_funcs_stack, align 8, !tbaa !8
  %cmp = icmp eq %struct.stack_st_NAME_FUNCS* %1, null
  br i1 %cmp, label %if.end7, label %if.end10

if.end7:                                          ; preds = %if.end4
  %call6 = tail call fastcc %struct.stack_st_NAME_FUNCS* @sk_NAME_FUNCS_new_null() #7
  store %struct.stack_st_NAME_FUNCS* %call6, %struct.stack_st_NAME_FUNCS** @name_funcs_stack, align 8, !tbaa !8
  %cmp8 = icmp eq %struct.stack_st_NAME_FUNCS* %call6, null
  br i1 %cmp8, label %out, label %if.end10

if.end10:                                         ; preds = %if.end4, %if.end7
  %2 = phi %struct.stack_st_NAME_FUNCS* [ %call6, %if.end7 ], [ %1, %if.end4 ]
  %3 = load i32, i32* @names_type_num, align 4, !tbaa !4
  %inc = add nsw i32 %3, 1
  store i32 %inc, i32* @names_type_num, align 4, !tbaa !4
  %call11 = tail call fastcc i32 @sk_NAME_FUNCS_num(%struct.stack_st_NAME_FUNCS* noundef nonnull %2) #7
  %4 = load i32, i32* @names_type_num, align 4, !tbaa !4
  %cmp1259 = icmp slt i32 %call11, %4
  br i1 %cmp1259, label %for.body, label %for.end

for.cond:                                         ; preds = %if.end16
  %5 = load i32, i32* @names_type_num, align 4, !tbaa !4
  %cmp12 = icmp slt i32 %inc23, %5
  br i1 %cmp12, label %for.body, label %for.end, !llvm.loop !10

for.body:                                         ; preds = %if.end10, %for.cond
  %i.060 = phi i32 [ %inc23, %for.cond ], [ %call11, %if.end10 ]
  %call13 = tail call i8* @CRYPTO_zalloc(i64 noundef 24, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 101) #6
  %cmp14 = icmp eq i8* %call13, null
  br i1 %cmp14, label %if.then15, label %if.end16

if.then15:                                        ; preds = %for.body
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 103, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.OBJ_NAME_new_index, i64 0, i64 0)) #6
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 8, i32 noundef 786688, i8* noundef null) #6
  br label %out

if.end16:                                         ; preds = %for.body
  %6 = bitcast i8* %call13 to %struct.name_funcs_st*
  %hash_func17 = bitcast i8* %call13 to i64 (i8*)**
  store i64 (i8*)* @ossl_lh_strcasehash, i64 (i8*)** %hash_func17, align 8, !tbaa !12
  %cmp_func18 = getelementptr inbounds i8, i8* %call13, i64 8
  %7 = bitcast i8* %cmp_func18 to i32 (i8*, i8*)**
  store i32 (i8*, i8*)* @strcasecmp, i32 (i8*, i8*)** %7, align 8, !tbaa !14
  %8 = load %struct.stack_st_NAME_FUNCS*, %struct.stack_st_NAME_FUNCS** @name_funcs_stack, align 8, !tbaa !8
  %call19 = tail call fastcc i32 @sk_NAME_FUNCS_push(%struct.stack_st_NAME_FUNCS* noundef %8, %struct.name_funcs_st* noundef nonnull %6) #7
  %tobool20.not = icmp eq i32 %call19, 0
  %inc23 = add nsw i32 %i.060, 1
  br i1 %tobool20.not, label %if.then21, label %for.cond

if.then21:                                        ; preds = %if.end16
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 112, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.OBJ_NAME_new_index, i64 0, i64 0)) #6
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 8, i32 noundef 786688, i8* noundef null) #6
  tail call void @CRYPTO_free(i8* noundef nonnull %call13, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 113) #6
  br label %out

for.end:                                          ; preds = %for.cond, %if.end10
  %9 = load %struct.stack_st_NAME_FUNCS*, %struct.stack_st_NAME_FUNCS** @name_funcs_stack, align 8, !tbaa !8
  %call24 = tail call fastcc %struct.name_funcs_st* @sk_NAME_FUNCS_value(%struct.stack_st_NAME_FUNCS* noundef %9, i32 noundef %3) #7
  %cmp25.not = icmp eq i64 (i8*)* %hash_func, null
  br i1 %cmp25.not, label %if.end28, label %if.then26

if.then26:                                        ; preds = %for.end
  %hash_func27 = getelementptr inbounds %struct.name_funcs_st, %struct.name_funcs_st* %call24, i64 0, i32 0
  store i64 (i8*)* %hash_func, i64 (i8*)** %hash_func27, align 8, !tbaa !12
  br label %if.end28

if.end28:                                         ; preds = %if.then26, %for.end
  %cmp29.not = icmp eq i32 (i8*, i8*)* %cmp_func, null
  br i1 %cmp29.not, label %if.end32, label %if.then30

if.then30:                                        ; preds = %if.end28
  %cmp_func31 = getelementptr inbounds %struct.name_funcs_st, %struct.name_funcs_st* %call24, i64 0, i32 1
  store i32 (i8*, i8*)* %cmp_func, i32 (i8*, i8*)** %cmp_func31, align 8, !tbaa !14
  br label %if.end32

if.end32:                                         ; preds = %if.then30, %if.end28
  %cmp33.not = icmp eq void (i8*, i32, i8*)* %free_func, null
  br i1 %cmp33.not, label %out, label %if.then34

if.then34:                                        ; preds = %if.end32
  %free_func35 = getelementptr inbounds %struct.name_funcs_st, %struct.name_funcs_st* %call24, i64 0, i32 2
  store void (i8*, i32, i8*)* %free_func, void (i8*, i32, i8*)** %free_func35, align 8, !tbaa !15
  br label %out

out:                                              ; preds = %if.end32, %if.then34, %if.end7, %if.then21, %if.then15
  %ret.0 = phi i32 [ 0, %if.end7 ], [ 0, %if.then15 ], [ 0, %if.then21 ], [ %3, %if.then34 ], [ %3, %if.end32 ]
  %10 = load i8*, i8** @obj_lock, align 8, !tbaa !8
  %call37 = tail call i32 @CRYPTO_THREAD_unlock(i8* noundef %10) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry, %out
  %retval.0 = phi i32 [ %ret.0, %out ], [ 0, %entry ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

declare i32 @CRYPTO_THREAD_write_lock(i8* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.stack_st_NAME_FUNCS* @sk_NAME_FUNCS_new_null() unnamed_addr #0 {
entry:
  %call = tail call %struct.stack_st* @OPENSSL_sk_new_null() #6
  %0 = bitcast %struct.stack_st* %call to %struct.stack_st_NAME_FUNCS*
  ret %struct.stack_st_NAME_FUNCS* %0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @sk_NAME_FUNCS_num(%struct.stack_st_NAME_FUNCS* noundef %sk) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.stack_st_NAME_FUNCS* %sk to %struct.stack_st*
  %call = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %0) #6
  ret i32 %call
}

declare i8* @CRYPTO_zalloc(i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

declare void @ERR_new() local_unnamed_addr #1

declare void @ERR_set_debug(i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #1

declare void @ERR_set_error(i32 noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #1

declare i64 @ossl_lh_strcasehash(i8* noundef) #1

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare i32 @strcasecmp(i8* noundef, i8* noundef) #3

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @sk_NAME_FUNCS_push(%struct.stack_st_NAME_FUNCS* noundef %sk, %struct.name_funcs_st* noundef %ptr) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.stack_st_NAME_FUNCS* %sk to %struct.stack_st*
  %1 = bitcast %struct.name_funcs_st* %ptr to i8*
  %call = tail call i32 @OPENSSL_sk_push(%struct.stack_st* noundef %0, i8* noundef %1) #6
  ret i32 %call
}

declare void @CRYPTO_free(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.name_funcs_st* @sk_NAME_FUNCS_value(%struct.stack_st_NAME_FUNCS* noundef %sk, i32 noundef %idx) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.stack_st_NAME_FUNCS* %sk to %struct.stack_st*
  %call = tail call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %0, i32 noundef %idx) #6
  %1 = bitcast i8* %call to %struct.name_funcs_st*
  ret %struct.name_funcs_st* %1
}

declare i32 @CRYPTO_THREAD_unlock(i8* noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: noinline nounwind uwtable
define i8* @OBJ_NAME_get(i8* noundef %name, i32 noundef %type) local_unnamed_addr #0 {
entry:
  %on = alloca %struct.obj_name_st, align 8
  %0 = bitcast %struct.obj_name_st* %on to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %0) #8
  %cmp = icmp eq i8* %name, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call = tail call i32 @OBJ_NAME_init() #7
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %cleanup, label %if.end2

if.end2:                                          ; preds = %if.end
  %1 = load i8*, i8** @obj_lock, align 8, !tbaa !8
  %call3 = tail call i32 @CRYPTO_THREAD_read_lock(i8* noundef %1) #6
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %cleanup, label %if.end6

if.end6:                                          ; preds = %if.end2
  %and7 = and i32 %type, -32769
  %name8 = getelementptr inbounds %struct.obj_name_st, %struct.obj_name_st* %on, i64 0, i32 2
  store i8* %name, i8** %name8, align 8, !tbaa !16
  %type9 = getelementptr inbounds %struct.obj_name_st, %struct.obj_name_st* %on, i64 0, i32 0
  store i32 %and7, i32* %type9, align 8, !tbaa !18
  %2 = load %struct.lhash_st_OBJ_NAME*, %struct.lhash_st_OBJ_NAME** @names_lh, align 8, !tbaa !8
  %call1040 = call fastcc %struct.obj_name_st* @lh_OBJ_NAME_retrieve(%struct.lhash_st_OBJ_NAME* noundef %2, %struct.obj_name_st* noundef nonnull %on) #7
  %cmp1141 = icmp eq %struct.obj_name_st* %call1040, null
  br i1 %cmp1141, label %for.end, label %if.end13.lr.ph

if.end13.lr.ph:                                   ; preds = %if.end6
  %and = and i32 %type, 32768
  %tobool16 = icmp ne i32 %and, 0
  %alias14 = getelementptr inbounds %struct.obj_name_st, %struct.obj_name_st* %call1040, i64 0, i32 1
  %3 = load i32, i32* %alias14, align 4, !tbaa !19
  %tobool15 = icmp eq i32 %3, 0
  %or.cond = or i1 %tobool16, %tobool15
  br i1 %or.cond, label %if.else, label %if.then17

if.then17:                                        ; preds = %if.end13.lr.ph
  %data = getelementptr inbounds %struct.obj_name_st, %struct.obj_name_st* %call1040, i64 0, i32 3
  %4 = load i8*, i8** %data, align 8, !tbaa !20
  store i8* %4, i8** %name8, align 8, !tbaa !16
  %5 = load %struct.lhash_st_OBJ_NAME*, %struct.lhash_st_OBJ_NAME** @names_lh, align 8, !tbaa !8
  %call10 = call fastcc %struct.obj_name_st* @lh_OBJ_NAME_retrieve(%struct.lhash_st_OBJ_NAME* noundef %5, %struct.obj_name_st* noundef nonnull %on) #7
  %cmp11 = icmp eq %struct.obj_name_st* %call10, null
  br i1 %cmp11, label %for.end, label %if.end13.1

if.end13.1:                                       ; preds = %if.then17
  %alias14.1 = getelementptr inbounds %struct.obj_name_st, %struct.obj_name_st* %call10, i64 0, i32 1
  %6 = load i32, i32* %alias14.1, align 4, !tbaa !19
  %tobool15.1 = icmp eq i32 %6, 0
  br i1 %tobool15.1, label %if.else, label %if.then17.1

if.then17.1:                                      ; preds = %if.end13.1
  %data.1 = getelementptr inbounds %struct.obj_name_st, %struct.obj_name_st* %call10, i64 0, i32 3
  %7 = load i8*, i8** %data.1, align 8, !tbaa !20
  store i8* %7, i8** %name8, align 8, !tbaa !16
  %8 = load %struct.lhash_st_OBJ_NAME*, %struct.lhash_st_OBJ_NAME** @names_lh, align 8, !tbaa !8
  %call10.1 = call fastcc %struct.obj_name_st* @lh_OBJ_NAME_retrieve(%struct.lhash_st_OBJ_NAME* noundef %8, %struct.obj_name_st* noundef nonnull %on) #7
  %cmp11.1 = icmp eq %struct.obj_name_st* %call10.1, null
  br i1 %cmp11.1, label %for.end, label %if.end13.2

if.end13.2:                                       ; preds = %if.then17.1
  %alias14.2 = getelementptr inbounds %struct.obj_name_st, %struct.obj_name_st* %call10.1, i64 0, i32 1
  %9 = load i32, i32* %alias14.2, align 4, !tbaa !19
  %tobool15.2 = icmp eq i32 %9, 0
  br i1 %tobool15.2, label %if.else, label %if.then17.2

if.then17.2:                                      ; preds = %if.end13.2
  %data.2 = getelementptr inbounds %struct.obj_name_st, %struct.obj_name_st* %call10.1, i64 0, i32 3
  %10 = load i8*, i8** %data.2, align 8, !tbaa !20
  store i8* %10, i8** %name8, align 8, !tbaa !16
  %11 = load %struct.lhash_st_OBJ_NAME*, %struct.lhash_st_OBJ_NAME** @names_lh, align 8, !tbaa !8
  %call10.2 = call fastcc %struct.obj_name_st* @lh_OBJ_NAME_retrieve(%struct.lhash_st_OBJ_NAME* noundef %11, %struct.obj_name_st* noundef nonnull %on) #7
  %cmp11.2 = icmp eq %struct.obj_name_st* %call10.2, null
  br i1 %cmp11.2, label %for.end, label %if.end13.3

if.end13.3:                                       ; preds = %if.then17.2
  %alias14.3 = getelementptr inbounds %struct.obj_name_st, %struct.obj_name_st* %call10.2, i64 0, i32 1
  %12 = load i32, i32* %alias14.3, align 4, !tbaa !19
  %tobool15.3 = icmp eq i32 %12, 0
  br i1 %tobool15.3, label %if.else, label %if.then17.3

if.then17.3:                                      ; preds = %if.end13.3
  %data.3 = getelementptr inbounds %struct.obj_name_st, %struct.obj_name_st* %call10.2, i64 0, i32 3
  %13 = load i8*, i8** %data.3, align 8, !tbaa !20
  store i8* %13, i8** %name8, align 8, !tbaa !16
  %14 = load %struct.lhash_st_OBJ_NAME*, %struct.lhash_st_OBJ_NAME** @names_lh, align 8, !tbaa !8
  %call10.3 = call fastcc %struct.obj_name_st* @lh_OBJ_NAME_retrieve(%struct.lhash_st_OBJ_NAME* noundef %14, %struct.obj_name_st* noundef nonnull %on) #7
  %cmp11.3 = icmp eq %struct.obj_name_st* %call10.3, null
  br i1 %cmp11.3, label %for.end, label %if.end13.4

if.end13.4:                                       ; preds = %if.then17.3
  %alias14.4 = getelementptr inbounds %struct.obj_name_st, %struct.obj_name_st* %call10.3, i64 0, i32 1
  %15 = load i32, i32* %alias14.4, align 4, !tbaa !19
  %tobool15.4 = icmp eq i32 %15, 0
  br i1 %tobool15.4, label %if.else, label %if.then17.4

if.then17.4:                                      ; preds = %if.end13.4
  %data.4 = getelementptr inbounds %struct.obj_name_st, %struct.obj_name_st* %call10.3, i64 0, i32 3
  %16 = load i8*, i8** %data.4, align 8, !tbaa !20
  store i8* %16, i8** %name8, align 8, !tbaa !16
  %17 = load %struct.lhash_st_OBJ_NAME*, %struct.lhash_st_OBJ_NAME** @names_lh, align 8, !tbaa !8
  %call10.4 = call fastcc %struct.obj_name_st* @lh_OBJ_NAME_retrieve(%struct.lhash_st_OBJ_NAME* noundef %17, %struct.obj_name_st* noundef nonnull %on) #7
  %cmp11.4 = icmp eq %struct.obj_name_st* %call10.4, null
  br i1 %cmp11.4, label %for.end, label %if.end13.5

if.end13.5:                                       ; preds = %if.then17.4
  %alias14.5 = getelementptr inbounds %struct.obj_name_st, %struct.obj_name_st* %call10.4, i64 0, i32 1
  %18 = load i32, i32* %alias14.5, align 4, !tbaa !19
  %tobool15.5 = icmp eq i32 %18, 0
  br i1 %tobool15.5, label %if.else, label %if.then17.5

if.then17.5:                                      ; preds = %if.end13.5
  %data.5 = getelementptr inbounds %struct.obj_name_st, %struct.obj_name_st* %call10.4, i64 0, i32 3
  %19 = load i8*, i8** %data.5, align 8, !tbaa !20
  store i8* %19, i8** %name8, align 8, !tbaa !16
  %20 = load %struct.lhash_st_OBJ_NAME*, %struct.lhash_st_OBJ_NAME** @names_lh, align 8, !tbaa !8
  %call10.5 = call fastcc %struct.obj_name_st* @lh_OBJ_NAME_retrieve(%struct.lhash_st_OBJ_NAME* noundef %20, %struct.obj_name_st* noundef nonnull %on) #7
  %cmp11.5 = icmp eq %struct.obj_name_st* %call10.5, null
  br i1 %cmp11.5, label %for.end, label %if.end13.6

if.end13.6:                                       ; preds = %if.then17.5
  %alias14.6 = getelementptr inbounds %struct.obj_name_st, %struct.obj_name_st* %call10.5, i64 0, i32 1
  %21 = load i32, i32* %alias14.6, align 4, !tbaa !19
  %tobool15.6 = icmp eq i32 %21, 0
  br i1 %tobool15.6, label %if.else, label %if.then17.6

if.then17.6:                                      ; preds = %if.end13.6
  %data.6 = getelementptr inbounds %struct.obj_name_st, %struct.obj_name_st* %call10.5, i64 0, i32 3
  %22 = load i8*, i8** %data.6, align 8, !tbaa !20
  store i8* %22, i8** %name8, align 8, !tbaa !16
  %23 = load %struct.lhash_st_OBJ_NAME*, %struct.lhash_st_OBJ_NAME** @names_lh, align 8, !tbaa !8
  %call10.6 = call fastcc %struct.obj_name_st* @lh_OBJ_NAME_retrieve(%struct.lhash_st_OBJ_NAME* noundef %23, %struct.obj_name_st* noundef nonnull %on) #7
  %cmp11.6 = icmp eq %struct.obj_name_st* %call10.6, null
  br i1 %cmp11.6, label %for.end, label %if.end13.7

if.end13.7:                                       ; preds = %if.then17.6
  %alias14.7 = getelementptr inbounds %struct.obj_name_st, %struct.obj_name_st* %call10.6, i64 0, i32 1
  %24 = load i32, i32* %alias14.7, align 4, !tbaa !19
  %tobool15.7 = icmp eq i32 %24, 0
  br i1 %tobool15.7, label %if.else, label %if.then17.7

if.then17.7:                                      ; preds = %if.end13.7
  %data.7 = getelementptr inbounds %struct.obj_name_st, %struct.obj_name_st* %call10.6, i64 0, i32 3
  %25 = load i8*, i8** %data.7, align 8, !tbaa !20
  store i8* %25, i8** %name8, align 8, !tbaa !16
  %26 = load %struct.lhash_st_OBJ_NAME*, %struct.lhash_st_OBJ_NAME** @names_lh, align 8, !tbaa !8
  %call10.7 = call fastcc %struct.obj_name_st* @lh_OBJ_NAME_retrieve(%struct.lhash_st_OBJ_NAME* noundef %26, %struct.obj_name_st* noundef nonnull %on) #7
  %cmp11.7 = icmp eq %struct.obj_name_st* %call10.7, null
  br i1 %cmp11.7, label %for.end, label %if.end13.8

if.end13.8:                                       ; preds = %if.then17.7
  %alias14.8 = getelementptr inbounds %struct.obj_name_st, %struct.obj_name_st* %call10.7, i64 0, i32 1
  %27 = load i32, i32* %alias14.8, align 4, !tbaa !19
  %tobool15.8 = icmp eq i32 %27, 0
  br i1 %tobool15.8, label %if.else, label %if.then17.8

if.then17.8:                                      ; preds = %if.end13.8
  %data.8 = getelementptr inbounds %struct.obj_name_st, %struct.obj_name_st* %call10.7, i64 0, i32 3
  %28 = load i8*, i8** %data.8, align 8, !tbaa !20
  store i8* %28, i8** %name8, align 8, !tbaa !16
  %29 = load %struct.lhash_st_OBJ_NAME*, %struct.lhash_st_OBJ_NAME** @names_lh, align 8, !tbaa !8
  %call10.8 = call fastcc %struct.obj_name_st* @lh_OBJ_NAME_retrieve(%struct.lhash_st_OBJ_NAME* noundef %29, %struct.obj_name_st* noundef nonnull %on) #7
  %cmp11.8 = icmp eq %struct.obj_name_st* %call10.8, null
  br i1 %cmp11.8, label %for.end, label %if.end13.9

if.end13.9:                                       ; preds = %if.then17.8
  %alias14.9 = getelementptr inbounds %struct.obj_name_st, %struct.obj_name_st* %call10.8, i64 0, i32 1
  %30 = load i32, i32* %alias14.9, align 4, !tbaa !19
  %tobool15.9 = icmp eq i32 %30, 0
  br i1 %tobool15.9, label %if.else, label %if.then17.9

if.then17.9:                                      ; preds = %if.end13.9
  %data.9 = getelementptr inbounds %struct.obj_name_st, %struct.obj_name_st* %call10.8, i64 0, i32 3
  %31 = load i8*, i8** %data.9, align 8, !tbaa !20
  store i8* %31, i8** %name8, align 8, !tbaa !16
  %32 = load %struct.lhash_st_OBJ_NAME*, %struct.lhash_st_OBJ_NAME** @names_lh, align 8, !tbaa !8
  %call10.9 = call fastcc %struct.obj_name_st* @lh_OBJ_NAME_retrieve(%struct.lhash_st_OBJ_NAME* noundef %32, %struct.obj_name_st* noundef nonnull %on) #7
  %cmp11.9 = icmp eq %struct.obj_name_st* %call10.9, null
  br i1 %cmp11.9, label %for.end, label %if.end13.10

if.end13.10:                                      ; preds = %if.then17.9
  %alias14.10 = getelementptr inbounds %struct.obj_name_st, %struct.obj_name_st* %call10.9, i64 0, i32 1
  %33 = load i32, i32* %alias14.10, align 4, !tbaa !19
  %tobool15.10 = icmp eq i32 %33, 0
  br i1 %tobool15.10, label %if.else, label %for.end

if.else:                                          ; preds = %if.end13.10, %if.end13.9, %if.end13.8, %if.end13.7, %if.end13.6, %if.end13.5, %if.end13.4, %if.end13.3, %if.end13.2, %if.end13.1, %if.end13.lr.ph
  %call1043.lcssa = phi %struct.obj_name_st* [ %call1040, %if.end13.lr.ph ], [ %call10, %if.end13.1 ], [ %call10.1, %if.end13.2 ], [ %call10.2, %if.end13.3 ], [ %call10.3, %if.end13.4 ], [ %call10.4, %if.end13.5 ], [ %call10.5, %if.end13.6 ], [ %call10.6, %if.end13.7 ], [ %call10.7, %if.end13.8 ], [ %call10.8, %if.end13.9 ], [ %call10.9, %if.end13.10 ]
  %data22 = getelementptr inbounds %struct.obj_name_st, %struct.obj_name_st* %call1043.lcssa, i64 0, i32 3
  %34 = load i8*, i8** %data22, align 8, !tbaa !20
  br label %for.end

for.end:                                          ; preds = %if.then17, %if.then17.1, %if.then17.2, %if.then17.3, %if.then17.4, %if.then17.5, %if.then17.6, %if.then17.7, %if.then17.8, %if.then17.9, %if.end13.10, %if.end6, %if.else
  %value.0 = phi i8* [ %34, %if.else ], [ null, %if.end6 ], [ null, %if.end13.10 ], [ null, %if.then17.9 ], [ null, %if.then17.8 ], [ null, %if.then17.7 ], [ null, %if.then17.6 ], [ null, %if.then17.5 ], [ null, %if.then17.4 ], [ null, %if.then17.3 ], [ null, %if.then17.2 ], [ null, %if.then17.1 ], [ null, %if.then17 ]
  %35 = load i8*, i8** @obj_lock, align 8, !tbaa !8
  %call24 = call i32 @CRYPTO_THREAD_unlock(i8* noundef %35) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end2, %if.end, %entry, %for.end
  %retval.0 = phi i8* [ %value.0, %for.end ], [ null, %entry ], [ null, %if.end ], [ null, %if.end2 ]
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %0) #8
  ret i8* %retval.0
}

declare i32 @CRYPTO_THREAD_read_lock(i8* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.obj_name_st* @lh_OBJ_NAME_retrieve(%struct.lhash_st_OBJ_NAME* noundef %lh, %struct.obj_name_st* noundef %d) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.lhash_st_OBJ_NAME* %lh to %struct.lhash_st*
  %1 = bitcast %struct.obj_name_st* %d to i8*
  %call = tail call i8* @OPENSSL_LH_retrieve(%struct.lhash_st* noundef %0, i8* noundef %1) #6
  %2 = bitcast i8* %call to %struct.obj_name_st*
  ret %struct.obj_name_st* %2
}

; Function Attrs: noinline nounwind uwtable
define i32 @OBJ_NAME_add(i8* noundef %name, i32 noundef %type, i8* noundef %data) local_unnamed_addr #0 {
entry:
  %call = tail call i32 @OBJ_NAME_init() #7
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call2 = tail call i8* @CRYPTO_malloc(i64 noundef 24, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 211) #6
  %0 = bitcast i8* %call2 to %struct.obj_name_st*
  %cmp = icmp eq i8* %call2, null
  br i1 %cmp, label %cleanup, label %if.end4

if.end4:                                          ; preds = %if.end
  %and1 = and i32 %type, -32769
  %and = and i32 %type, 32768
  %name5 = getelementptr inbounds i8, i8* %call2, i64 8
  %1 = bitcast i8* %name5 to i8**
  store i8* %name, i8** %1, align 8, !tbaa !16
  %alias6 = getelementptr inbounds i8, i8* %call2, i64 4
  %2 = bitcast i8* %alias6 to i32*
  store i32 %and, i32* %2, align 4, !tbaa !19
  %type7 = bitcast i8* %call2 to i32*
  store i32 %and1, i32* %type7, align 8, !tbaa !18
  %data8 = getelementptr inbounds i8, i8* %call2, i64 16
  %3 = bitcast i8* %data8 to i8**
  store i8* %data, i8** %3, align 8, !tbaa !20
  %4 = load i8*, i8** @obj_lock, align 8, !tbaa !8
  %call9 = tail call i32 @CRYPTO_THREAD_write_lock(i8* noundef %4) #6
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.then11, label %if.end12

if.then11:                                        ; preds = %if.end4
  tail call void @CRYPTO_free(i8* noundef nonnull %call2, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 221) #6
  br label %cleanup

if.end12:                                         ; preds = %if.end4
  %5 = load %struct.lhash_st_OBJ_NAME*, %struct.lhash_st_OBJ_NAME** @names_lh, align 8, !tbaa !8
  %call13 = tail call fastcc %struct.obj_name_st* @lh_OBJ_NAME_insert(%struct.lhash_st_OBJ_NAME* noundef %5, %struct.obj_name_st* noundef nonnull %0) #7
  %cmp14.not = icmp eq %struct.obj_name_st* %call13, null
  br i1 %cmp14.not, label %if.else, label %if.then15

if.then15:                                        ; preds = %if.end12
  %6 = load %struct.stack_st_NAME_FUNCS*, %struct.stack_st_NAME_FUNCS** @name_funcs_stack, align 8, !tbaa !8
  %cmp16.not = icmp eq %struct.stack_st_NAME_FUNCS* %6, null
  br i1 %cmp16.not, label %if.end26, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.then15
  %call17 = tail call fastcc i32 @sk_NAME_FUNCS_num(%struct.stack_st_NAME_FUNCS* noundef nonnull %6) #7
  %type18 = getelementptr inbounds %struct.obj_name_st, %struct.obj_name_st* %call13, i64 0, i32 0
  %7 = load i32, i32* %type18, align 8, !tbaa !18
  %cmp19 = icmp sgt i32 %call17, %7
  br i1 %cmp19, label %if.then20, label %if.end26

if.then20:                                        ; preds = %land.lhs.true
  %8 = load %struct.stack_st_NAME_FUNCS*, %struct.stack_st_NAME_FUNCS** @name_funcs_stack, align 8, !tbaa !8
  %call22 = tail call fastcc %struct.name_funcs_st* @sk_NAME_FUNCS_value(%struct.stack_st_NAME_FUNCS* noundef %8, i32 noundef %7) #7
  %free_func = getelementptr inbounds %struct.name_funcs_st, %struct.name_funcs_st* %call22, i64 0, i32 2
  %9 = load void (i8*, i32, i8*)*, void (i8*, i32, i8*)** %free_func, align 8, !tbaa !15
  %name23 = getelementptr inbounds %struct.obj_name_st, %struct.obj_name_st* %call13, i64 0, i32 2
  %10 = load i8*, i8** %name23, align 8, !tbaa !16
  %11 = load i32, i32* %type18, align 8, !tbaa !18
  %data25 = getelementptr inbounds %struct.obj_name_st, %struct.obj_name_st* %call13, i64 0, i32 3
  %12 = load i8*, i8** %data25, align 8, !tbaa !20
  tail call void %9(i8* noundef %10, i32 noundef %11, i8* noundef %12) #6
  br label %if.end26

if.end26:                                         ; preds = %if.then20, %land.lhs.true, %if.then15
  %13 = bitcast %struct.obj_name_st* %call13 to i8*
  tail call void @CRYPTO_free(i8* noundef nonnull %13, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 238) #6
  br label %unlock

if.else:                                          ; preds = %if.end12
  %14 = load %struct.lhash_st_OBJ_NAME*, %struct.lhash_st_OBJ_NAME** @names_lh, align 8, !tbaa !8
  %call27 = tail call fastcc i32 @lh_OBJ_NAME_error(%struct.lhash_st_OBJ_NAME* noundef %14) #7
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %unlock, label %if.then29

if.then29:                                        ; preds = %if.else
  tail call void @CRYPTO_free(i8* noundef nonnull %call2, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 242) #6
  br label %unlock

unlock:                                           ; preds = %if.end26, %if.else, %if.then29
  %ok.0 = phi i32 [ 0, %if.then29 ], [ 1, %if.else ], [ 1, %if.end26 ]
  %15 = load i8*, i8** @obj_lock, align 8, !tbaa !8
  %call32 = tail call i32 @CRYPTO_THREAD_unlock(i8* noundef %15) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry, %unlock, %if.then11
  %retval.0 = phi i32 [ %ok.0, %unlock ], [ 0, %if.then11 ], [ 0, %entry ], [ 0, %if.end ]
  ret i32 %retval.0
}

declare i8* @CRYPTO_malloc(i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.obj_name_st* @lh_OBJ_NAME_insert(%struct.lhash_st_OBJ_NAME* noundef %lh, %struct.obj_name_st* noundef %d) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.lhash_st_OBJ_NAME* %lh to %struct.lhash_st*
  %1 = bitcast %struct.obj_name_st* %d to i8*
  %call = tail call i8* @OPENSSL_LH_insert(%struct.lhash_st* noundef %0, i8* noundef %1) #6
  %2 = bitcast i8* %call to %struct.obj_name_st*
  ret %struct.obj_name_st* %2
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @lh_OBJ_NAME_error(%struct.lhash_st_OBJ_NAME* noundef %lh) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.lhash_st_OBJ_NAME* %lh to %struct.lhash_st*
  %call = tail call i32 @OPENSSL_LH_error(%struct.lhash_st* noundef %0) #6
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define i32 @OBJ_NAME_remove(i8* noundef %name, i32 noundef %type) local_unnamed_addr #0 {
entry:
  %on = alloca %struct.obj_name_st, align 8
  %0 = bitcast %struct.obj_name_st* %on to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %0) #8
  %call = tail call i32 @OBJ_NAME_init() #7
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %1 = load i8*, i8** @obj_lock, align 8, !tbaa !8
  %call1 = tail call i32 @CRYPTO_THREAD_write_lock(i8* noundef %1) #6
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %cleanup, label %if.end4

if.end4:                                          ; preds = %if.end
  %and = and i32 %type, -32769
  %name5 = getelementptr inbounds %struct.obj_name_st, %struct.obj_name_st* %on, i64 0, i32 2
  store i8* %name, i8** %name5, align 8, !tbaa !16
  %type6 = getelementptr inbounds %struct.obj_name_st, %struct.obj_name_st* %on, i64 0, i32 0
  store i32 %and, i32* %type6, align 8, !tbaa !18
  %2 = load %struct.lhash_st_OBJ_NAME*, %struct.lhash_st_OBJ_NAME** @names_lh, align 8, !tbaa !8
  %call7 = call fastcc %struct.obj_name_st* @lh_OBJ_NAME_delete(%struct.lhash_st_OBJ_NAME* noundef %2, %struct.obj_name_st* noundef nonnull %on) #7
  %cmp.not = icmp eq %struct.obj_name_st* %call7, null
  br i1 %cmp.not, label %if.end19, label %if.then8

if.then8:                                         ; preds = %if.end4
  %3 = load %struct.stack_st_NAME_FUNCS*, %struct.stack_st_NAME_FUNCS** @name_funcs_stack, align 8, !tbaa !8
  %cmp9.not = icmp eq %struct.stack_st_NAME_FUNCS* %3, null
  br i1 %cmp9.not, label %if.end18, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.then8
  %call10 = call fastcc i32 @sk_NAME_FUNCS_num(%struct.stack_st_NAME_FUNCS* noundef nonnull %3) #7
  %type11 = getelementptr inbounds %struct.obj_name_st, %struct.obj_name_st* %call7, i64 0, i32 0
  %4 = load i32, i32* %type11, align 8, !tbaa !18
  %cmp12 = icmp sgt i32 %call10, %4
  br i1 %cmp12, label %if.then13, label %if.end18

if.then13:                                        ; preds = %land.lhs.true
  %5 = load %struct.stack_st_NAME_FUNCS*, %struct.stack_st_NAME_FUNCS** @name_funcs_stack, align 8, !tbaa !8
  %call15 = call fastcc %struct.name_funcs_st* @sk_NAME_FUNCS_value(%struct.stack_st_NAME_FUNCS* noundef %5, i32 noundef %4) #7
  %free_func = getelementptr inbounds %struct.name_funcs_st, %struct.name_funcs_st* %call15, i64 0, i32 2
  %6 = load void (i8*, i32, i8*)*, void (i8*, i32, i8*)** %free_func, align 8, !tbaa !15
  %name16 = getelementptr inbounds %struct.obj_name_st, %struct.obj_name_st* %call7, i64 0, i32 2
  %7 = load i8*, i8** %name16, align 8, !tbaa !16
  %8 = load i32, i32* %type11, align 8, !tbaa !18
  %data = getelementptr inbounds %struct.obj_name_st, %struct.obj_name_st* %call7, i64 0, i32 3
  %9 = load i8*, i8** %data, align 8, !tbaa !20
  call void %6(i8* noundef %7, i32 noundef %8, i8* noundef %9) #6
  br label %if.end18

if.end18:                                         ; preds = %if.then13, %land.lhs.true, %if.then8
  %10 = bitcast %struct.obj_name_st* %call7 to i8*
  call void @CRYPTO_free(i8* noundef nonnull %10, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 281) #6
  br label %if.end19

if.end19:                                         ; preds = %if.end18, %if.end4
  %ok.0 = phi i32 [ 1, %if.end18 ], [ 0, %if.end4 ]
  %11 = load i8*, i8** @obj_lock, align 8, !tbaa !8
  %call20 = call i32 @CRYPTO_THREAD_unlock(i8* noundef %11) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry, %if.end19
  %retval.0 = phi i32 [ %ok.0, %if.end19 ], [ 0, %entry ], [ 0, %if.end ]
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %0) #8
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.obj_name_st* @lh_OBJ_NAME_delete(%struct.lhash_st_OBJ_NAME* noundef %lh, %struct.obj_name_st* noundef %d) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.lhash_st_OBJ_NAME* %lh to %struct.lhash_st*
  %1 = bitcast %struct.obj_name_st* %d to i8*
  %call = tail call i8* @OPENSSL_LH_delete(%struct.lhash_st* noundef %0, i8* noundef %1) #6
  %2 = bitcast i8* %call to %struct.obj_name_st*
  ret %struct.obj_name_st* %2
}

; Function Attrs: noinline nounwind uwtable
define void @OBJ_NAME_do_all(i32 noundef %type, void (%struct.obj_name_st*, i8*)* noundef %fn, i8* noundef %arg) local_unnamed_addr #0 {
entry:
  %d = alloca %struct.OBJ_DOALL, align 8
  %0 = bitcast %struct.OBJ_DOALL* %d to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %0) #8
  %type1 = getelementptr inbounds %struct.OBJ_DOALL, %struct.OBJ_DOALL* %d, i64 0, i32 0
  store i32 %type, i32* %type1, align 8, !tbaa !21
  %fn2 = getelementptr inbounds %struct.OBJ_DOALL, %struct.OBJ_DOALL* %d, i64 0, i32 1
  store void (%struct.obj_name_st*, i8*)* %fn, void (%struct.obj_name_st*, i8*)** %fn2, align 8, !tbaa !23
  %arg3 = getelementptr inbounds %struct.OBJ_DOALL, %struct.OBJ_DOALL* %d, i64 0, i32 2
  store i8* %arg, i8** %arg3, align 8, !tbaa !24
  %1 = load %struct.lhash_st_OBJ_NAME*, %struct.lhash_st_OBJ_NAME** @names_lh, align 8, !tbaa !8
  call fastcc void @lh_OBJ_NAME_doall_OBJ_DOALL(%struct.lhash_st_OBJ_NAME* noundef %1, %struct.OBJ_DOALL* noundef nonnull %d) #7
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %0) #8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @lh_OBJ_NAME_doall_OBJ_DOALL(%struct.lhash_st_OBJ_NAME* noundef %lh, %struct.OBJ_DOALL* noundef %arg) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.lhash_st_OBJ_NAME* %lh to %struct.lhash_st*
  %1 = bitcast %struct.OBJ_DOALL* %arg to i8*
  tail call void @OPENSSL_LH_doall_arg(%struct.lhash_st* noundef %0, void (i8*, i8*)* noundef bitcast (void (%struct.obj_name_st*, %struct.OBJ_DOALL*)* @do_all_fn to void (i8*, i8*)*), i8* noundef %1) #6
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @do_all_fn(%struct.obj_name_st* noundef %name, %struct.OBJ_DOALL* nocapture noundef readonly %d) #0 {
entry:
  %type = getelementptr inbounds %struct.obj_name_st, %struct.obj_name_st* %name, i64 0, i32 0
  %0 = load i32, i32* %type, align 8, !tbaa !18
  %type1 = getelementptr inbounds %struct.OBJ_DOALL, %struct.OBJ_DOALL* %d, i64 0, i32 0
  %1 = load i32, i32* %type1, align 8, !tbaa !21
  %cmp = icmp eq i32 %0, %1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %fn = getelementptr inbounds %struct.OBJ_DOALL, %struct.OBJ_DOALL* %d, i64 0, i32 1
  %2 = load void (%struct.obj_name_st*, i8*)*, void (%struct.obj_name_st*, i8*)** %fn, align 8, !tbaa !23
  %arg = getelementptr inbounds %struct.OBJ_DOALL, %struct.OBJ_DOALL* %d, i64 0, i32 2
  %3 = load i8*, i8** %arg, align 8, !tbaa !24
  tail call void %2(%struct.obj_name_st* noundef nonnull %name, i8* noundef %3) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind uwtable
define void @OBJ_NAME_do_all_sorted(i32 noundef %type, void (%struct.obj_name_st*, i8*)* nocapture noundef readonly %fn, i8* noundef %arg) local_unnamed_addr #0 {
entry:
  %d = alloca %struct.doall_sorted, align 8
  %0 = bitcast %struct.doall_sorted* %d to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #8
  %type1 = getelementptr inbounds %struct.doall_sorted, %struct.doall_sorted* %d, i64 0, i32 0
  store i32 %type, i32* %type1, align 8, !tbaa !25
  %1 = load %struct.lhash_st_OBJ_NAME*, %struct.lhash_st_OBJ_NAME** @names_lh, align 8, !tbaa !8
  %call = tail call fastcc i64 @lh_OBJ_NAME_num_items(%struct.lhash_st_OBJ_NAME* noundef %1) #7
  %mul = shl i64 %call, 3
  %call2 = tail call i8* @CRYPTO_malloc(i64 noundef %mul, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 348) #6
  %names = getelementptr inbounds %struct.doall_sorted, %struct.doall_sorted* %d, i64 0, i32 2
  %2 = bitcast %struct.obj_name_st*** %names to i8**
  store i8* %call2, i8** %2, align 8, !tbaa !27
  %cmp.not = icmp eq i8* %call2, null
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %n4 = getelementptr inbounds %struct.doall_sorted, %struct.doall_sorted* %d, i64 0, i32 1
  store i32 0, i32* %n4, align 4, !tbaa !28
  call void @OBJ_NAME_do_all(i32 noundef %type, void (%struct.obj_name_st*, i8*)* noundef nonnull @do_all_sorted_fn, i8* noundef nonnull %0) #7
  %3 = load i8*, i8** %2, align 8, !tbaa !27
  %4 = load i32, i32* %n4, align 4, !tbaa !28
  %conv = sext i32 %4 to i64
  call void @qsort(i8* noundef %3, i64 noundef %conv, i64 noundef 8, i32 (i8*, i8*)* noundef nonnull @do_all_sorted_cmp) #6
  %5 = load i32, i32* %n4, align 4, !tbaa !28
  %cmp816 = icmp sgt i32 %5, 0
  br i1 %cmp816, label %for.body, label %for.end

for.body:                                         ; preds = %if.then, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %if.then ]
  %6 = load %struct.obj_name_st**, %struct.obj_name_st*** %names, align 8, !tbaa !27
  %arrayidx = getelementptr inbounds %struct.obj_name_st*, %struct.obj_name_st** %6, i64 %indvars.iv
  %7 = load %struct.obj_name_st*, %struct.obj_name_st** %arrayidx, align 8, !tbaa !8
  call void %fn(%struct.obj_name_st* noundef %7, i8* noundef %arg) #6
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %8 = load i32, i32* %n4, align 4, !tbaa !28
  %9 = sext i32 %8 to i64
  %cmp8 = icmp slt i64 %indvars.iv.next, %9
  br i1 %cmp8, label %for.body, label %for.end, !llvm.loop !29

for.end:                                          ; preds = %for.body, %if.then
  %10 = load i8*, i8** %2, align 8, !tbaa !27
  call void @CRYPTO_free(i8* noundef %10, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 359) #6
  br label %if.end

if.end:                                           ; preds = %for.end, %entry
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i64 @lh_OBJ_NAME_num_items(%struct.lhash_st_OBJ_NAME* noundef %lh) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.lhash_st_OBJ_NAME* %lh to %struct.lhash_st*
  %call = tail call i64 @OPENSSL_LH_num_items(%struct.lhash_st* noundef %0) #6
  ret i64 %call
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define internal void @do_all_sorted_fn(%struct.obj_name_st* noundef %name, i8* nocapture noundef %d_) #4 {
entry:
  %type = getelementptr inbounds %struct.obj_name_st, %struct.obj_name_st* %name, i64 0, i32 0
  %0 = load i32, i32* %type, align 8, !tbaa !18
  %type1 = bitcast i8* %d_ to i32*
  %1 = load i32, i32* %type1, align 8, !tbaa !25
  %cmp.not = icmp eq i32 %0, %1
  br i1 %cmp.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %names = getelementptr inbounds i8, i8* %d_, i64 8
  %2 = bitcast i8* %names to %struct.obj_name_st***
  %3 = load %struct.obj_name_st**, %struct.obj_name_st*** %2, align 8, !tbaa !27
  %n = getelementptr inbounds i8, i8* %d_, i64 4
  %4 = bitcast i8* %n to i32*
  %5 = load i32, i32* %4, align 4, !tbaa !28
  %inc = add nsw i32 %5, 1
  store i32 %inc, i32* %4, align 4, !tbaa !28
  %idxprom = sext i32 %5 to i64
  %arrayidx = getelementptr inbounds %struct.obj_name_st*, %struct.obj_name_st** %3, i64 %idxprom
  store %struct.obj_name_st* %name, %struct.obj_name_st** %arrayidx, align 8, !tbaa !8
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  ret void
}

declare void @qsort(i8* noundef, i64 noundef, i64 noundef, i32 (i8*, i8*)* noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline nounwind readonly uwtable willreturn
define internal i32 @do_all_sorted_cmp(i8* nocapture noundef readonly %n1_, i8* nocapture noundef readonly %n2_) #5 {
entry:
  %0 = bitcast i8* %n1_ to %struct.obj_name_st**
  %1 = bitcast i8* %n2_ to %struct.obj_name_st**
  %2 = load %struct.obj_name_st*, %struct.obj_name_st** %0, align 8, !tbaa !8
  %name = getelementptr inbounds %struct.obj_name_st, %struct.obj_name_st* %2, i64 0, i32 2
  %3 = load i8*, i8** %name, align 8, !tbaa !16
  %4 = load %struct.obj_name_st*, %struct.obj_name_st** %1, align 8, !tbaa !8
  %name1 = getelementptr inbounds %struct.obj_name_st, %struct.obj_name_st* %4, i64 0, i32 2
  %5 = load i8*, i8** %name1, align 8, !tbaa !16
  %call = tail call i32 @strcmp(i8* noundef %3, i8* noundef %5) #9
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define void @OBJ_NAME_cleanup(i32 noundef %type) local_unnamed_addr #0 {
entry:
  %0 = load %struct.lhash_st_OBJ_NAME*, %struct.lhash_st_OBJ_NAME** @names_lh, align 8, !tbaa !8
  %cmp = icmp eq %struct.lhash_st_OBJ_NAME* %0, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  store i32 %type, i32* @free_type, align 4, !tbaa !4
  %call = tail call fastcc i64 @lh_OBJ_NAME_get_down_load(%struct.lhash_st_OBJ_NAME* noundef nonnull %0) #7
  %1 = load %struct.lhash_st_OBJ_NAME*, %struct.lhash_st_OBJ_NAME** @names_lh, align 8, !tbaa !8
  tail call fastcc void @lh_OBJ_NAME_set_down_load(%struct.lhash_st_OBJ_NAME* noundef %1, i64 noundef 0) #7
  %2 = load %struct.lhash_st_OBJ_NAME*, %struct.lhash_st_OBJ_NAME** @names_lh, align 8, !tbaa !8
  tail call fastcc void @lh_OBJ_NAME_doall(%struct.lhash_st_OBJ_NAME* noundef %2) #7
  %cmp1 = icmp slt i32 %type, 0
  %3 = load %struct.lhash_st_OBJ_NAME*, %struct.lhash_st_OBJ_NAME** @names_lh, align 8, !tbaa !8
  br i1 %cmp1, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.end
  tail call fastcc void @lh_OBJ_NAME_free(%struct.lhash_st_OBJ_NAME* noundef %3) #7
  %4 = load %struct.stack_st_NAME_FUNCS*, %struct.stack_st_NAME_FUNCS** @name_funcs_stack, align 8, !tbaa !8
  tail call fastcc void @sk_NAME_FUNCS_pop_free(%struct.stack_st_NAME_FUNCS* noundef %4) #7
  %5 = load i8*, i8** @obj_lock, align 8, !tbaa !8
  tail call void @CRYPTO_THREAD_lock_free(i8* noundef %5) #6
  store %struct.lhash_st_OBJ_NAME* null, %struct.lhash_st_OBJ_NAME** @names_lh, align 8, !tbaa !8
  store %struct.stack_st_NAME_FUNCS* null, %struct.stack_st_NAME_FUNCS** @name_funcs_stack, align 8, !tbaa !8
  store i8* null, i8** @obj_lock, align 8, !tbaa !8
  br label %cleanup

if.else:                                          ; preds = %if.end
  tail call fastcc void @lh_OBJ_NAME_set_down_load(%struct.lhash_st_OBJ_NAME* noundef %3, i64 noundef %call) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then2, %if.else, %entry
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i64 @lh_OBJ_NAME_get_down_load(%struct.lhash_st_OBJ_NAME* noundef %lh) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.lhash_st_OBJ_NAME* %lh to %struct.lhash_st*
  %call = tail call i64 @OPENSSL_LH_get_down_load(%struct.lhash_st* noundef %0) #6
  ret i64 %call
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @lh_OBJ_NAME_set_down_load(%struct.lhash_st_OBJ_NAME* noundef %lh, i64 noundef %dl) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.lhash_st_OBJ_NAME* %lh to %struct.lhash_st*
  tail call void @OPENSSL_LH_set_down_load(%struct.lhash_st* noundef %0, i64 noundef %dl) #6
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @lh_OBJ_NAME_doall(%struct.lhash_st_OBJ_NAME* noundef %lh) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.lhash_st_OBJ_NAME* %lh to %struct.lhash_st*
  tail call void @OPENSSL_LH_doall(%struct.lhash_st* noundef %0, void (i8*)* noundef bitcast (void (%struct.obj_name_st*)* @names_lh_free_doall to void (i8*)*)) #6
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @names_lh_free_doall(%struct.obj_name_st* noundef readonly %onp) #0 {
entry:
  %cmp = icmp eq %struct.obj_name_st* %onp, null
  br i1 %cmp, label %if.end5, label %if.end

if.end:                                           ; preds = %entry
  %0 = load i32, i32* @free_type, align 4, !tbaa !4
  %cmp1 = icmp slt i32 %0, 0
  %type4.phi.trans.insert = getelementptr inbounds %struct.obj_name_st, %struct.obj_name_st* %onp, i64 0, i32 0
  %.pre = load i32, i32* %type4.phi.trans.insert, align 8, !tbaa !18
  br i1 %cmp1, label %if.then3, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %cmp2 = icmp eq i32 %0, %.pre
  br i1 %cmp2, label %if.then3, label %if.end5

if.then3:                                         ; preds = %if.end, %lor.lhs.false
  %1 = phi i32 [ %0, %lor.lhs.false ], [ %.pre, %if.end ]
  %name = getelementptr inbounds %struct.obj_name_st, %struct.obj_name_st* %onp, i64 0, i32 2
  %2 = load i8*, i8** %name, align 8, !tbaa !16
  %call = tail call i32 @OBJ_NAME_remove(i8* noundef %2, i32 noundef %1) #7
  br label %if.end5

if.end5:                                          ; preds = %entry, %if.then3, %lor.lhs.false
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @lh_OBJ_NAME_free(%struct.lhash_st_OBJ_NAME* noundef %lh) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.lhash_st_OBJ_NAME* %lh to %struct.lhash_st*
  tail call void @OPENSSL_LH_free(%struct.lhash_st* noundef %0) #6
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @sk_NAME_FUNCS_pop_free(%struct.stack_st_NAME_FUNCS* noundef %sk) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.stack_st_NAME_FUNCS* %sk to %struct.stack_st*
  tail call void @OPENSSL_sk_pop_free(%struct.stack_st* noundef %0, void (i8*)* noundef bitcast (void (%struct.name_funcs_st*)* @name_funcs_free to void (i8*)*)) #6
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @name_funcs_free(%struct.name_funcs_st* noundef %ptr) #0 {
entry:
  %0 = bitcast %struct.name_funcs_st* %ptr to i8*
  tail call void @CRYPTO_free(i8* noundef %0, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 376) #6
  ret void
}

declare void @CRYPTO_THREAD_lock_free(i8* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @o_names_init() unnamed_addr #0 {
entry:
  %call = tail call fastcc %struct.lhash_st_OBJ_NAME* @lh_OBJ_NAME_new() #7
  store %struct.lhash_st_OBJ_NAME* %call, %struct.lhash_st_OBJ_NAME** @names_lh, align 8, !tbaa !8
  %call1 = tail call i8* @CRYPTO_THREAD_lock_new() #6
  store i8* %call1, i8** @obj_lock, align 8, !tbaa !8
  %0 = load %struct.lhash_st_OBJ_NAME*, %struct.lhash_st_OBJ_NAME** @names_lh, align 8, !tbaa !8
  %cmp = icmp ne %struct.lhash_st_OBJ_NAME* %0, null
  %cmp2 = icmp ne i8* %call1, null
  %1 = select i1 %cmp, i1 %cmp2, i1 false
  %land.ext = zext i1 %1 to i32
  ret i32 %land.ext
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.lhash_st_OBJ_NAME* @lh_OBJ_NAME_new() unnamed_addr #0 {
entry:
  %call = tail call %struct.lhash_st* @OPENSSL_LH_new(i64 (i8*)* noundef bitcast (i64 (%struct.obj_name_st*)* @obj_name_hash to i64 (i8*)*), i32 (i8*, i8*)* noundef bitcast (i32 (%struct.obj_name_st*, %struct.obj_name_st*)* @obj_name_cmp to i32 (i8*, i8*)*)) #6
  %0 = bitcast %struct.lhash_st* %call to %struct.lhash_st_OBJ_NAME*
  ret %struct.lhash_st_OBJ_NAME* %0
}

; Function Attrs: noinline nounwind uwtable
define internal i64 @obj_name_hash(%struct.obj_name_st* nocapture noundef readonly %a) #0 {
entry:
  %0 = load %struct.stack_st_NAME_FUNCS*, %struct.stack_st_NAME_FUNCS** @name_funcs_stack, align 8, !tbaa !8
  %cmp.not = icmp eq %struct.stack_st_NAME_FUNCS* %0, null
  br i1 %cmp.not, label %if.else, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %call = tail call fastcc i32 @sk_NAME_FUNCS_num(%struct.stack_st_NAME_FUNCS* noundef nonnull %0) #7
  %type = getelementptr inbounds %struct.obj_name_st, %struct.obj_name_st* %a, i64 0, i32 0
  %1 = load i32, i32* %type, align 8, !tbaa !18
  %cmp1 = icmp sgt i32 %call, %1
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %2 = load %struct.stack_st_NAME_FUNCS*, %struct.stack_st_NAME_FUNCS** @name_funcs_stack, align 8, !tbaa !8
  %call3 = tail call fastcc %struct.name_funcs_st* @sk_NAME_FUNCS_value(%struct.stack_st_NAME_FUNCS* noundef %2, i32 noundef %1) #7
  %hash_func = getelementptr inbounds %struct.name_funcs_st, %struct.name_funcs_st* %call3, i64 0, i32 0
  %3 = load i64 (i8*)*, i64 (i8*)** %hash_func, align 8, !tbaa !12
  %name = getelementptr inbounds %struct.obj_name_st, %struct.obj_name_st* %a, i64 0, i32 2
  %4 = load i8*, i8** %name, align 8, !tbaa !16
  %call4 = tail call i64 %3(i8* noundef %4) #6
  br label %if.end

if.else:                                          ; preds = %land.lhs.true, %entry
  %name5 = getelementptr inbounds %struct.obj_name_st, %struct.obj_name_st* %a, i64 0, i32 2
  %5 = load i8*, i8** %name5, align 8, !tbaa !16
  %call6 = tail call i64 @ossl_lh_strcasehash(i8* noundef %5) #6
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %ret.0 = phi i64 [ %call4, %if.then ], [ %call6, %if.else ]
  %type7 = getelementptr inbounds %struct.obj_name_st, %struct.obj_name_st* %a, i64 0, i32 0
  %6 = load i32, i32* %type7, align 8, !tbaa !18
  %conv = sext i32 %6 to i64
  %xor = xor i64 %ret.0, %conv
  ret i64 %xor
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @obj_name_cmp(%struct.obj_name_st* nocapture noundef readonly %a, %struct.obj_name_st* nocapture noundef readonly %b) #0 {
entry:
  %type = getelementptr inbounds %struct.obj_name_st, %struct.obj_name_st* %a, i64 0, i32 0
  %0 = load i32, i32* %type, align 8, !tbaa !18
  %type1 = getelementptr inbounds %struct.obj_name_st, %struct.obj_name_st* %b, i64 0, i32 0
  %1 = load i32, i32* %type1, align 8, !tbaa !18
  %sub = sub nsw i32 %0, %1
  %cmp = icmp eq i32 %sub, 0
  br i1 %cmp, label %if.then, label %if.end13

if.then:                                          ; preds = %entry
  %2 = load %struct.stack_st_NAME_FUNCS*, %struct.stack_st_NAME_FUNCS** @name_funcs_stack, align 8, !tbaa !8
  %cmp2.not = icmp eq %struct.stack_st_NAME_FUNCS* %2, null
  br i1 %cmp2.not, label %if.else, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.then
  %call = tail call fastcc i32 @sk_NAME_FUNCS_num(%struct.stack_st_NAME_FUNCS* noundef nonnull %2) #7
  %3 = load i32, i32* %type, align 8, !tbaa !18
  %cmp4 = icmp sgt i32 %call, %3
  br i1 %cmp4, label %if.then5, label %if.else

if.then5:                                         ; preds = %land.lhs.true
  %4 = load %struct.stack_st_NAME_FUNCS*, %struct.stack_st_NAME_FUNCS** @name_funcs_stack, align 8, !tbaa !8
  %call7 = tail call fastcc %struct.name_funcs_st* @sk_NAME_FUNCS_value(%struct.stack_st_NAME_FUNCS* noundef %4, i32 noundef %3) #7
  %cmp_func = getelementptr inbounds %struct.name_funcs_st, %struct.name_funcs_st* %call7, i64 0, i32 1
  %5 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %cmp_func, align 8, !tbaa !14
  %name = getelementptr inbounds %struct.obj_name_st, %struct.obj_name_st* %a, i64 0, i32 2
  %6 = load i8*, i8** %name, align 8, !tbaa !16
  %name8 = getelementptr inbounds %struct.obj_name_st, %struct.obj_name_st* %b, i64 0, i32 2
  %7 = load i8*, i8** %name8, align 8, !tbaa !16
  %call9 = tail call i32 %5(i8* noundef %6, i8* noundef %7) #6
  br label %if.end13

if.else:                                          ; preds = %land.lhs.true, %if.then
  %name10 = getelementptr inbounds %struct.obj_name_st, %struct.obj_name_st* %a, i64 0, i32 2
  %8 = load i8*, i8** %name10, align 8, !tbaa !16
  %name11 = getelementptr inbounds %struct.obj_name_st, %struct.obj_name_st* %b, i64 0, i32 2
  %9 = load i8*, i8** %name11, align 8, !tbaa !16
  %call12 = tail call i32 @strcasecmp(i8* noundef %8, i8* noundef %9) #9
  br label %if.end13

if.end13:                                         ; preds = %if.then5, %if.else, %entry
  %ret.0 = phi i32 [ %call9, %if.then5 ], [ %call12, %if.else ], [ %sub, %entry ]
  ret i32 %ret.0
}

declare i8* @CRYPTO_THREAD_lock_new() local_unnamed_addr #1

declare %struct.lhash_st* @OPENSSL_LH_new(i64 (i8*)* noundef, i32 (i8*, i8*)* noundef) local_unnamed_addr #1

declare %struct.stack_st* @OPENSSL_sk_new_null() local_unnamed_addr #1

declare i32 @OPENSSL_sk_num(%struct.stack_st* noundef) local_unnamed_addr #1

declare i32 @OPENSSL_sk_push(%struct.stack_st* noundef, i8* noundef) local_unnamed_addr #1

declare i8* @OPENSSL_sk_value(%struct.stack_st* noundef, i32 noundef) local_unnamed_addr #1

declare i8* @OPENSSL_LH_retrieve(%struct.lhash_st* noundef, i8* noundef) local_unnamed_addr #1

declare i8* @OPENSSL_LH_insert(%struct.lhash_st* noundef, i8* noundef) local_unnamed_addr #1

declare i32 @OPENSSL_LH_error(%struct.lhash_st* noundef) local_unnamed_addr #1

declare i8* @OPENSSL_LH_delete(%struct.lhash_st* noundef, i8* noundef) local_unnamed_addr #1

declare void @OPENSSL_LH_doall_arg(%struct.lhash_st* noundef, void (i8*, i8*)* noundef, i8* noundef) local_unnamed_addr #1

declare i64 @OPENSSL_LH_num_items(%struct.lhash_st* noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare i32 @strcmp(i8* noundef, i8* noundef) local_unnamed_addr #3

declare i64 @OPENSSL_LH_get_down_load(%struct.lhash_st* noundef) local_unnamed_addr #1

declare void @OPENSSL_LH_set_down_load(%struct.lhash_st* noundef, i64 noundef) local_unnamed_addr #1

declare void @OPENSSL_LH_doall(%struct.lhash_st* noundef, void (i8*)* noundef) local_unnamed_addr #1

declare void @OPENSSL_LH_free(%struct.lhash_st* noundef) local_unnamed_addr #1

declare void @OPENSSL_sk_pop_free(%struct.stack_st* noundef, void (i8*)* noundef) local_unnamed_addr #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #3 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline nounwind readonly uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!4 = !{!5, !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !9, i64 0}
!9 = !{!"any pointer", !6, i64 0}
!10 = distinct !{!10, !11}
!11 = !{!"llvm.loop.mustprogress"}
!12 = !{!13, !9, i64 0}
!13 = !{!"name_funcs_st", !9, i64 0, !9, i64 8, !9, i64 16}
!14 = !{!13, !9, i64 8}
!15 = !{!13, !9, i64 16}
!16 = !{!17, !9, i64 8}
!17 = !{!"obj_name_st", !5, i64 0, !5, i64 4, !9, i64 8, !9, i64 16}
!18 = !{!17, !5, i64 0}
!19 = !{!17, !5, i64 4}
!20 = !{!17, !9, i64 16}
!21 = !{!22, !5, i64 0}
!22 = !{!"", !5, i64 0, !9, i64 8, !9, i64 16}
!23 = !{!22, !9, i64 8}
!24 = !{!22, !9, i64 16}
!25 = !{!26, !5, i64 0}
!26 = !{!"doall_sorted", !5, i64 0, !5, i64 4, !9, i64 8}
!27 = !{!26, !9, i64 8}
!28 = !{!26, !5, i64 4}
!29 = distinct !{!29, !11}
