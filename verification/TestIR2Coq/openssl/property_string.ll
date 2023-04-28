; ModuleID = 'crypto/property/property_string.c'
source_filename = "crypto/property/property_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ossl_lib_ctx_method = type { i32, i8* (%struct.ossl_lib_ctx_st*)*, void (i8*)* }
%struct.ossl_lib_ctx_st = type opaque
%struct.lhash_st_PROPERTY_STRING = type { %union.lh_PROPERTY_STRING_dummy }
%union.lh_PROPERTY_STRING_dummy = type { i8* }
%struct.PROPERTY_STRING = type { i8*, i32, [1 x i8] }
%struct.find_str_st = type { i8*, i32 }
%struct.lhash_st = type opaque

@property_string_data_method = internal constant %struct.ossl_lib_ctx_method { i32 0, i8* (%struct.ossl_lib_ctx_st*)* @property_string_data_new, void (i8*)* @property_string_data_free }, align 8
@.str = private unnamed_addr constant [34 x i8] c"crypto/property/property_string.c\00", align 1
@__func__.ossl_property_string = private unnamed_addr constant [21 x i8] c"ossl_property_string\00", align 1
@__func__.ossl_property_str = private unnamed_addr constant [18 x i8] c"ossl_property_str\00", align 1

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_property_name(%struct.ossl_lib_ctx_st* noundef %ctx, i8* noundef %s, i32 noundef %create) local_unnamed_addr #0 {
entry:
  %call = tail call i8* @ossl_lib_ctx_get_data(%struct.ossl_lib_ctx_st* noundef %ctx, i32 noundef 3, %struct.ossl_lib_ctx_method* noundef nonnull @property_string_data_method) #7
  %cmp = icmp eq i8* %call, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %lock = bitcast i8* %call to i8**
  %0 = load i8*, i8** %lock, align 8, !tbaa !4
  %prop_names = getelementptr inbounds i8, i8* %call, i64 8
  %1 = bitcast i8* %prop_names to %struct.lhash_st_PROPERTY_STRING**
  %2 = load %struct.lhash_st_PROPERTY_STRING*, %struct.lhash_st_PROPERTY_STRING** %1, align 8, !tbaa !10
  %tobool.not = icmp eq i32 %create, 0
  %prop_name_idx = getelementptr inbounds i8, i8* %call, i64 24
  %3 = bitcast i8* %prop_name_idx to i32*
  %cond = select i1 %tobool.not, i32* null, i32* %3
  %call1 = tail call fastcc i32 @ossl_property_string(i8* noundef %0, %struct.lhash_st_PROPERTY_STRING* noundef %2, i32* noundef %cond, i8* noundef %s) #8
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %call1, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

declare i8* @ossl_lib_ctx_get_data(%struct.ossl_lib_ctx_st* noundef, i32 noundef, %struct.ossl_lib_ctx_method* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @ossl_property_string(i8* noundef %lock, %struct.lhash_st_PROPERTY_STRING* noundef %t, i32* noundef %pidx, i8* noundef %s) unnamed_addr #0 {
entry:
  %p = alloca %struct.PROPERTY_STRING, align 8
  %0 = bitcast %struct.PROPERTY_STRING* %p to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #9
  %s1 = getelementptr inbounds %struct.PROPERTY_STRING, %struct.PROPERTY_STRING* %p, i64 0, i32 0
  store i8* %s, i8** %s1, align 8, !tbaa !11
  %call = tail call i32 @CRYPTO_THREAD_read_lock(i8* noundef %lock) #7
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 noundef 146, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.ossl_property_string, i64 0, i64 0)) #7
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 15, i32 noundef 786703, i8* noundef null) #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = call fastcc %struct.PROPERTY_STRING* @lh_PROPERTY_STRING_retrieve(%struct.lhash_st_PROPERTY_STRING* noundef %t, %struct.PROPERTY_STRING* noundef nonnull %p) #8
  %cmp = icmp eq %struct.PROPERTY_STRING* %call2, null
  %cmp3 = icmp ne i32* %pidx, null
  %or.cond = and i1 %cmp3, %cmp
  %call5 = call i32 @CRYPTO_THREAD_unlock(i8* noundef %lock) #7
  br i1 %or.cond, label %if.then4, label %if.end23

if.then4:                                         ; preds = %if.end
  %call6 = call i32 @CRYPTO_THREAD_write_lock(i8* noundef %lock) #7
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.then8, label %if.end9

if.then8:                                         ; preds = %if.then4
  call void @ERR_new() #7
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 noundef 153, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.ossl_property_string, i64 0, i64 0)) #7
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 15, i32 noundef 786704, i8* noundef null) #7
  br label %cleanup

if.end9:                                          ; preds = %if.then4
  %call10 = call fastcc %struct.PROPERTY_STRING* @lh_PROPERTY_STRING_retrieve(%struct.lhash_st_PROPERTY_STRING* noundef %t, %struct.PROPERTY_STRING* noundef nonnull %p) #8
  %cmp11 = icmp eq %struct.PROPERTY_STRING* %call10, null
  br i1 %cmp11, label %land.lhs.true12, label %if.end23.thread

land.lhs.true12:                                  ; preds = %if.end9
  %call13 = call fastcc %struct.PROPERTY_STRING* @new_property_string(i8* noundef %s, i32* noundef nonnull %pidx) #8
  %cmp14.not = icmp eq %struct.PROPERTY_STRING* %call13, null
  br i1 %cmp14.not, label %if.end23.thread48, label %if.then15

if.end23.thread48:                                ; preds = %land.lhs.true12
  %call2450 = call i32 @CRYPTO_THREAD_unlock(i8* noundef %lock) #7
  br label %cleanup

if.then15:                                        ; preds = %land.lhs.true12
  call fastcc void @lh_PROPERTY_STRING_insert(%struct.lhash_st_PROPERTY_STRING* noundef %t, %struct.PROPERTY_STRING* noundef nonnull %call13) #8
  %call17 = call fastcc i32 @lh_PROPERTY_STRING_error(%struct.lhash_st_PROPERTY_STRING* noundef %t) #8
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.end23.thread, label %if.then19

if.then19:                                        ; preds = %if.then15
  call void @property_free(%struct.PROPERTY_STRING* noundef nonnull %call13) #8
  %call20 = call i32 @CRYPTO_THREAD_unlock(i8* noundef %lock) #7
  br label %cleanup

if.end23.thread:                                  ; preds = %if.end9, %if.then15
  %ps.0.ph = phi %struct.PROPERTY_STRING* [ %call13, %if.then15 ], [ %call10, %if.end9 ]
  %call2445 = call i32 @CRYPTO_THREAD_unlock(i8* noundef %lock) #7
  br label %cond.true

if.end23:                                         ; preds = %if.end
  br i1 %cmp, label %cleanup, label %cond.true

cond.true:                                        ; preds = %if.end23.thread, %if.end23
  %ps.047 = phi %struct.PROPERTY_STRING* [ %ps.0.ph, %if.end23.thread ], [ %call2, %if.end23 ]
  %idx = getelementptr inbounds %struct.PROPERTY_STRING, %struct.PROPERTY_STRING* %ps.047, i64 0, i32 1
  %1 = load i32, i32* %idx, align 8, !tbaa !13
  br label %cleanup

cleanup:                                          ; preds = %if.end23.thread48, %cond.true, %if.end23, %if.then19, %if.then8, %if.then
  %retval.0 = phi i32 [ 0, %if.then19 ], [ 0, %if.then8 ], [ 0, %if.then ], [ %1, %cond.true ], [ 0, %if.end23 ], [ 0, %if.end23.thread48 ]
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #9
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: noinline nounwind uwtable
define i8* @ossl_property_name_str(%struct.ossl_lib_ctx_st* noundef %ctx, i32 noundef %idx) local_unnamed_addr #0 {
entry:
  %call = tail call fastcc i8* @ossl_property_str(i32 noundef 1, %struct.ossl_lib_ctx_st* noundef %ctx, i32 noundef %idx) #8
  ret i8* %call
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i8* @ossl_property_str(i32 noundef %name, %struct.ossl_lib_ctx_st* noundef %ctx, i32 noundef %idx) unnamed_addr #0 {
entry:
  %findstr = alloca %struct.find_str_st, align 8
  %0 = bitcast %struct.find_str_st* %findstr to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #9
  %call = tail call i8* @ossl_lib_ctx_get_data(%struct.ossl_lib_ctx_st* noundef %ctx, i32 noundef 3, %struct.ossl_lib_ctx_method* noundef nonnull @property_string_data_method) #7
  %cmp = icmp eq i8* %call, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %str = getelementptr inbounds %struct.find_str_st, %struct.find_str_st* %findstr, i64 0, i32 0
  store i8* null, i8** %str, align 8, !tbaa !14
  %idx1 = getelementptr inbounds %struct.find_str_st, %struct.find_str_st* %findstr, i64 0, i32 1
  store i32 %idx, i32* %idx1, align 8, !tbaa !16
  %lock = bitcast i8* %call to i8**
  %1 = load i8*, i8** %lock, align 8, !tbaa !4
  %call2 = tail call i32 @CRYPTO_THREAD_read_lock(i8* noundef %1) #7
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 noundef 199, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.ossl_property_str, i64 0, i64 0)) #7
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 15, i32 noundef 786703, i8* noundef null) #7
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %tobool5.not = icmp eq i32 %name, 0
  %cond.in.in.v = select i1 %tobool5.not, i64 16, i64 8
  %cond.in.in = getelementptr inbounds i8, i8* %call, i64 %cond.in.in.v
  %cond.in = bitcast i8* %cond.in.in to %struct.lhash_st_PROPERTY_STRING**
  %cond = load %struct.lhash_st_PROPERTY_STRING*, %struct.lhash_st_PROPERTY_STRING** %cond.in, align 8, !tbaa !17
  call fastcc void @lh_PROPERTY_STRING_doall_arg(%struct.lhash_st_PROPERTY_STRING* noundef %cond, i8* noundef nonnull %0) #8
  %2 = load i8*, i8** %lock, align 8, !tbaa !4
  %call7 = call i32 @CRYPTO_THREAD_unlock(i8* noundef %2) #7
  %3 = load i8*, i8** %str, align 8, !tbaa !14
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end4, %if.then3
  %retval.0 = phi i8* [ %3, %if.end4 ], [ null, %if.then3 ], [ null, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #9
  ret i8* %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_property_value(%struct.ossl_lib_ctx_st* noundef %ctx, i8* noundef %s, i32 noundef %create) local_unnamed_addr #0 {
entry:
  %call = tail call i8* @ossl_lib_ctx_get_data(%struct.ossl_lib_ctx_st* noundef %ctx, i32 noundef 3, %struct.ossl_lib_ctx_method* noundef nonnull @property_string_data_method) #7
  %cmp = icmp eq i8* %call, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %lock = bitcast i8* %call to i8**
  %0 = load i8*, i8** %lock, align 8, !tbaa !4
  %prop_values = getelementptr inbounds i8, i8* %call, i64 16
  %1 = bitcast i8* %prop_values to %struct.lhash_st_PROPERTY_STRING**
  %2 = load %struct.lhash_st_PROPERTY_STRING*, %struct.lhash_st_PROPERTY_STRING** %1, align 8, !tbaa !18
  %tobool.not = icmp eq i32 %create, 0
  %prop_value_idx = getelementptr inbounds i8, i8* %call, i64 28
  %3 = bitcast i8* %prop_value_idx to i32*
  %cond = select i1 %tobool.not, i32* null, i32* %3
  %call1 = tail call fastcc i32 @ossl_property_string(i8* noundef %0, %struct.lhash_st_PROPERTY_STRING* noundef %2, i32* noundef %cond, i8* noundef %s) #8
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %call1, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i8* @ossl_property_value_str(%struct.ossl_lib_ctx_st* noundef %ctx, i32 noundef %idx) local_unnamed_addr #0 {
entry:
  %call = tail call fastcc i8* @ossl_property_str(i32 noundef 0, %struct.ossl_lib_ctx_st* noundef %ctx, i32 noundef %idx) #8
  ret i8* %call
}

; Function Attrs: noinline nounwind uwtable
define internal i8* @property_string_data_new(%struct.ossl_lib_ctx_st* nocapture noundef readnone %ctx) #0 {
entry:
  %call = tail call i8* @CRYPTO_zalloc(i64 noundef 32, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 noundef 87) #7
  %cmp = icmp eq i8* %call, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call1 = tail call i8* @CRYPTO_THREAD_lock_new() #7
  %lock = bitcast i8* %call to i8**
  store i8* %call1, i8** %lock, align 8, !tbaa !4
  %cmp3 = icmp eq i8* %call1, null
  br i1 %cmp3, label %err, label %if.end5

if.end5:                                          ; preds = %if.end
  %call6 = tail call fastcc %struct.lhash_st_PROPERTY_STRING* @lh_PROPERTY_STRING_new() #8
  %prop_names = getelementptr inbounds i8, i8* %call, i64 8
  %0 = bitcast i8* %prop_names to %struct.lhash_st_PROPERTY_STRING**
  store %struct.lhash_st_PROPERTY_STRING* %call6, %struct.lhash_st_PROPERTY_STRING** %0, align 8, !tbaa !10
  %cmp8 = icmp eq %struct.lhash_st_PROPERTY_STRING* %call6, null
  br i1 %cmp8, label %err, label %if.end10

if.end10:                                         ; preds = %if.end5
  %call11 = tail call fastcc %struct.lhash_st_PROPERTY_STRING* @lh_PROPERTY_STRING_new() #8
  %prop_values = getelementptr inbounds i8, i8* %call, i64 16
  %1 = bitcast i8* %prop_values to %struct.lhash_st_PROPERTY_STRING**
  store %struct.lhash_st_PROPERTY_STRING* %call11, %struct.lhash_st_PROPERTY_STRING** %1, align 8, !tbaa !18
  %cmp13 = icmp eq %struct.lhash_st_PROPERTY_STRING* %call11, null
  br i1 %cmp13, label %err, label %cleanup

err:                                              ; preds = %if.end10, %if.end5, %if.end
  tail call void @property_string_data_free(i8* noundef nonnull %call) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %entry, %err
  %retval.0 = phi i8* [ null, %err ], [ null, %entry ], [ %call, %if.end10 ]
  ret i8* %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal void @property_string_data_free(i8* noundef %vpropdata) #0 {
entry:
  %cmp = icmp eq i8* %vpropdata, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %lock = bitcast i8* %vpropdata to i8**
  %0 = load i8*, i8** %lock, align 8, !tbaa !4
  tail call void @CRYPTO_THREAD_lock_free(i8* noundef %0) #7
  %prop_names = getelementptr inbounds i8, i8* %vpropdata, i64 8
  %1 = bitcast i8* %prop_names to %struct.lhash_st_PROPERTY_STRING**
  tail call fastcc void @property_table_free(%struct.lhash_st_PROPERTY_STRING** noundef nonnull %1) #8
  %prop_values = getelementptr inbounds i8, i8* %vpropdata, i64 16
  %2 = bitcast i8* %prop_values to %struct.lhash_st_PROPERTY_STRING**
  tail call fastcc void @property_table_free(%struct.lhash_st_PROPERTY_STRING** noundef nonnull %2) #8
  %prop_value_idx = getelementptr inbounds i8, i8* %vpropdata, i64 28
  %3 = bitcast i8* %prop_value_idx to i32*
  store i32 0, i32* %3, align 4, !tbaa !19
  %prop_name_idx = getelementptr inbounds i8, i8* %vpropdata, i64 24
  %4 = bitcast i8* %prop_name_idx to i32*
  store i32 0, i32* %4, align 8, !tbaa !20
  tail call void @CRYPTO_free(i8* noundef nonnull %vpropdata, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 noundef 83) #7
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  ret void
}

declare i8* @CRYPTO_zalloc(i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare i8* @CRYPTO_THREAD_lock_new() local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.lhash_st_PROPERTY_STRING* @lh_PROPERTY_STRING_new() unnamed_addr #0 {
entry:
  %call = tail call %struct.lhash_st* @OPENSSL_LH_new(i64 (i8*)* noundef bitcast (i64 (%struct.PROPERTY_STRING*)* @property_hash to i64 (i8*)*), i32 (i8*, i8*)* noundef bitcast (i32 (%struct.PROPERTY_STRING*, %struct.PROPERTY_STRING*)* @property_cmp to i32 (i8*, i8*)*)) #7
  %0 = bitcast %struct.lhash_st* %call to %struct.lhash_st_PROPERTY_STRING*
  ret %struct.lhash_st_PROPERTY_STRING* %0
}

; Function Attrs: noinline nounwind uwtable
define internal i64 @property_hash(%struct.PROPERTY_STRING* nocapture noundef readonly %a) #0 {
entry:
  %s = getelementptr inbounds %struct.PROPERTY_STRING, %struct.PROPERTY_STRING* %a, i64 0, i32 0
  %0 = load i8*, i8** %s, align 8, !tbaa !11
  %call = tail call i64 @OPENSSL_LH_strhash(i8* noundef %0) #7
  ret i64 %call
}

; Function Attrs: mustprogress nofree noinline nounwind readonly uwtable willreturn
define internal i32 @property_cmp(%struct.PROPERTY_STRING* nocapture noundef readonly %a, %struct.PROPERTY_STRING* nocapture noundef readonly %b) #3 {
entry:
  %s = getelementptr inbounds %struct.PROPERTY_STRING, %struct.PROPERTY_STRING* %a, i64 0, i32 0
  %0 = load i8*, i8** %s, align 8, !tbaa !11
  %s1 = getelementptr inbounds %struct.PROPERTY_STRING, %struct.PROPERTY_STRING* %b, i64 0, i32 0
  %1 = load i8*, i8** %s1, align 8, !tbaa !11
  %call = tail call i32 @strcmp(i8* noundef %0, i8* noundef %1) #10
  ret i32 %call
}

declare %struct.lhash_st* @OPENSSL_LH_new(i64 (i8*)* noundef, i32 (i8*, i8*)* noundef) local_unnamed_addr #2

declare i64 @OPENSSL_LH_strhash(i8* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare i32 @strcmp(i8* noundef, i8* noundef) local_unnamed_addr #4

declare void @CRYPTO_THREAD_lock_free(i8* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @property_table_free(%struct.lhash_st_PROPERTY_STRING** nocapture noundef %pt) unnamed_addr #0 {
entry:
  %0 = load %struct.lhash_st_PROPERTY_STRING*, %struct.lhash_st_PROPERTY_STRING** %pt, align 8, !tbaa !17
  %cmp.not = icmp eq %struct.lhash_st_PROPERTY_STRING* %0, null
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  tail call fastcc void @lh_PROPERTY_STRING_doall(%struct.lhash_st_PROPERTY_STRING* noundef nonnull %0) #8
  tail call fastcc void @lh_PROPERTY_STRING_free(%struct.lhash_st_PROPERTY_STRING* noundef nonnull %0) #8
  store %struct.lhash_st_PROPERTY_STRING* null, %struct.lhash_st_PROPERTY_STRING** %pt, align 8, !tbaa !17
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare void @CRYPTO_free(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @lh_PROPERTY_STRING_doall(%struct.lhash_st_PROPERTY_STRING* noundef %lh) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.lhash_st_PROPERTY_STRING* %lh to %struct.lhash_st*
  tail call void @OPENSSL_LH_doall(%struct.lhash_st* noundef %0, void (i8*)* noundef bitcast (void (%struct.PROPERTY_STRING*)* @property_free to void (i8*)*)) #7
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @property_free(%struct.PROPERTY_STRING* noundef %ps) #0 {
entry:
  %0 = bitcast %struct.PROPERTY_STRING* %ps to i8*
  tail call void @CRYPTO_free(i8* noundef %0, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 noundef 57) #7
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @lh_PROPERTY_STRING_free(%struct.lhash_st_PROPERTY_STRING* noundef %lh) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.lhash_st_PROPERTY_STRING* %lh to %struct.lhash_st*
  tail call void @OPENSSL_LH_free(%struct.lhash_st* noundef %0) #7
  ret void
}

declare void @OPENSSL_LH_doall(%struct.lhash_st* noundef, void (i8*)* noundef) local_unnamed_addr #2

declare void @OPENSSL_LH_free(%struct.lhash_st* noundef) local_unnamed_addr #2

declare i32 @CRYPTO_THREAD_read_lock(i8* noundef) local_unnamed_addr #2

declare void @ERR_new() local_unnamed_addr #2

declare void @ERR_set_debug(i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #2

declare void @ERR_set_error(i32 noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.PROPERTY_STRING* @lh_PROPERTY_STRING_retrieve(%struct.lhash_st_PROPERTY_STRING* noundef %lh, %struct.PROPERTY_STRING* noundef %d) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.lhash_st_PROPERTY_STRING* %lh to %struct.lhash_st*
  %1 = bitcast %struct.PROPERTY_STRING* %d to i8*
  %call = tail call i8* @OPENSSL_LH_retrieve(%struct.lhash_st* noundef %0, i8* noundef %1) #7
  %2 = bitcast i8* %call to %struct.PROPERTY_STRING*
  ret %struct.PROPERTY_STRING* %2
}

declare i32 @CRYPTO_THREAD_unlock(i8* noundef) local_unnamed_addr #2

declare i32 @CRYPTO_THREAD_write_lock(i8* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.PROPERTY_STRING* @new_property_string(i8* noundef %s, i32* nocapture noundef %pidx) unnamed_addr #0 {
entry:
  %call = tail call i64 @strlen(i8* noundef %s) #10
  %add = add i64 %call, 16
  %call1 = tail call i8* @CRYPTO_malloc(i64 noundef %add, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 noundef 123) #7
  %0 = bitcast i8* %call1 to %struct.PROPERTY_STRING*
  %cmp.not = icmp eq i8* %call1, null
  br i1 %cmp.not, label %cleanup, label %if.then

if.then:                                          ; preds = %entry
  %body = getelementptr inbounds i8, i8* %call1, i64 12
  %add2 = add i64 %call, 1
  %call3 = tail call i8* @memcpy(i8* noundef nonnull %body, i8* noundef %s, i64 noundef %add2) #7
  %s6 = bitcast i8* %call1 to i8**
  store i8* %body, i8** %s6, align 8, !tbaa !11
  %1 = load i32, i32* %pidx, align 4, !tbaa !21
  %inc = add nsw i32 %1, 1
  store i32 %inc, i32* %pidx, align 4, !tbaa !21
  %idx = getelementptr inbounds i8, i8* %call1, i64 8
  %2 = bitcast i8* %idx to i32*
  store i32 %inc, i32* %2, align 8, !tbaa !13
  %cmp8 = icmp eq i32 %inc, 0
  br i1 %cmp8, label %if.then9, label %cleanup

if.then9:                                         ; preds = %if.then
  tail call void @CRYPTO_free(i8* noundef nonnull %call1, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 noundef 130) #7
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.then, %if.then9
  %retval.0 = phi %struct.PROPERTY_STRING* [ null, %if.then9 ], [ %0, %if.then ], [ %0, %entry ]
  ret %struct.PROPERTY_STRING* %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @lh_PROPERTY_STRING_insert(%struct.lhash_st_PROPERTY_STRING* noundef %lh, %struct.PROPERTY_STRING* noundef %d) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.lhash_st_PROPERTY_STRING* %lh to %struct.lhash_st*
  %1 = bitcast %struct.PROPERTY_STRING* %d to i8*
  %call = tail call i8* @OPENSSL_LH_insert(%struct.lhash_st* noundef %0, i8* noundef %1) #7
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @lh_PROPERTY_STRING_error(%struct.lhash_st_PROPERTY_STRING* noundef %lh) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.lhash_st_PROPERTY_STRING* %lh to %struct.lhash_st*
  %call = tail call i32 @OPENSSL_LH_error(%struct.lhash_st* noundef %0) #7
  ret i32 %call
}

declare i8* @OPENSSL_LH_retrieve(%struct.lhash_st* noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare i64 @strlen(i8* noundef) local_unnamed_addr #4

declare i8* @CRYPTO_malloc(i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare i8* @memcpy(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #5

declare i8* @OPENSSL_LH_insert(%struct.lhash_st* noundef, i8* noundef) local_unnamed_addr #2

declare i32 @OPENSSL_LH_error(%struct.lhash_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @lh_PROPERTY_STRING_doall_arg(%struct.lhash_st_PROPERTY_STRING* noundef %lh, i8* noundef %arg) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.lhash_st_PROPERTY_STRING* %lh to %struct.lhash_st*
  tail call void @OPENSSL_LH_doall_arg(%struct.lhash_st* noundef %0, void (i8*, i8*)* noundef bitcast (void (%struct.PROPERTY_STRING*, i8*)* @find_str_fn to void (i8*, i8*)*), i8* noundef %arg) #7
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define internal void @find_str_fn(%struct.PROPERTY_STRING* nocapture noundef readonly %prop, i8* nocapture noundef %vfindstr) #6 {
entry:
  %idx = getelementptr inbounds %struct.PROPERTY_STRING, %struct.PROPERTY_STRING* %prop, i64 0, i32 1
  %0 = load i32, i32* %idx, align 8, !tbaa !13
  %idx1 = getelementptr inbounds i8, i8* %vfindstr, i64 8
  %1 = bitcast i8* %idx1 to i32*
  %2 = load i32, i32* %1, align 8, !tbaa !16
  %cmp = icmp eq i32 %0, %2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %s = getelementptr inbounds %struct.PROPERTY_STRING, %struct.PROPERTY_STRING* %prop, i64 0, i32 0
  %3 = load i8*, i8** %s, align 8, !tbaa !11
  %str = bitcast i8* %vfindstr to i8**
  store i8* %3, i8** %str, align 8, !tbaa !14
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare void @OPENSSL_LH_doall_arg(%struct.lhash_st* noundef, void (i8*, i8*)* noundef, i8* noundef) local_unnamed_addr #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline nounwind readonly uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nobuiltin nounwind "no-builtins" }
attributes #8 = { nobuiltin "no-builtins" }
attributes #9 = { nounwind }
attributes #10 = { nobuiltin nounwind readonly willreturn "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{!"clang version 14.0.0"}
!4 = !{!5, !6, i64 0}
!5 = !{!"", !6, i64 0, !6, i64 8, !6, i64 16, !9, i64 24, !9, i64 28}
!6 = !{!"any pointer", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!"int", !7, i64 0}
!10 = !{!5, !6, i64 8}
!11 = !{!12, !6, i64 0}
!12 = !{!"", !6, i64 0, !9, i64 8, !7, i64 12}
!13 = !{!12, !9, i64 8}
!14 = !{!15, !6, i64 0}
!15 = !{!"find_str_st", !6, i64 0, !9, i64 8}
!16 = !{!15, !9, i64 8}
!17 = !{!6, !6, i64 0}
!18 = !{!5, !6, i64 16}
!19 = !{!5, !9, i64 28}
!20 = !{!5, !9, i64 24}
!21 = !{!9, !9, i64 0}
