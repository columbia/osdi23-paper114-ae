; ModuleID = 'crypto/dh/dh_lib.c'
source_filename = "crypto/dh/dh_lib.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dh_st = type { i32, i32, %struct.ffc_params_st, i32, %struct.bignum_st*, %struct.bignum_st*, i32, %struct.bn_mont_ctx_st*, i32, %struct.crypto_ex_data_st, %struct.engine_st*, %struct.ossl_lib_ctx_st*, %struct.dh_method*, i8*, i64 }
%struct.ffc_params_st = type { %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, i8*, i64, i32, i32, i32, i32, i32, i8*, i8* }
%struct.bignum_st = type opaque
%struct.bn_mont_ctx_st = type opaque
%struct.crypto_ex_data_st = type { %struct.ossl_lib_ctx_st*, %struct.stack_st_void* }
%struct.stack_st_void = type opaque
%struct.engine_st = type opaque
%struct.ossl_lib_ctx_st = type opaque
%struct.dh_method = type { i8*, i32 (%struct.dh_st*)*, i32 (i8*, %struct.bignum_st*, %struct.dh_st*)*, i32 (%struct.dh_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*, %struct.bn_mont_ctx_st*)*, i32 (%struct.dh_st*)*, i32 (%struct.dh_st*)*, i32, i8*, i32 (%struct.dh_st*, i32, i32, %struct.bn_gencb_st*)* }
%struct.bignum_ctx = type opaque
%struct.bn_gencb_st = type opaque

@.str = private unnamed_addr constant [19 x i8] c"crypto/dh/dh_lib.c\00", align 1
@__func__.dh_new_intern = private unnamed_addr constant [14 x i8] c"dh_new_intern\00", align 1

; Function Attrs: noinline nounwind uwtable
define i32 @DH_set_method(%struct.dh_st* noundef %dh, %struct.dh_method* noundef %meth) local_unnamed_addr #0 {
entry:
  %meth1 = getelementptr inbounds %struct.dh_st, %struct.dh_st* %dh, i64 0, i32 12
  %0 = load %struct.dh_method*, %struct.dh_method** %meth1, align 8, !tbaa !4
  %finish = getelementptr inbounds %struct.dh_method, %struct.dh_method* %0, i64 0, i32 5
  %1 = load i32 (%struct.dh_st*)*, i32 (%struct.dh_st*)** %finish, align 8, !tbaa !13
  %tobool.not = icmp eq i32 (%struct.dh_st*)* %1, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = tail call i32 %1(%struct.dh_st* noundef nonnull %dh) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %engine = getelementptr inbounds %struct.dh_st, %struct.dh_st* %dh, i64 0, i32 10
  %2 = load %struct.engine_st*, %struct.engine_st** %engine, align 8, !tbaa !15
  %call3 = tail call i32 @ENGINE_finish(%struct.engine_st* noundef %2) #9
  store %struct.engine_st* null, %struct.engine_st** %engine, align 8, !tbaa !15
  store %struct.dh_method* %meth, %struct.dh_method** %meth1, align 8, !tbaa !4
  %init = getelementptr inbounds %struct.dh_method, %struct.dh_method* %meth, i64 0, i32 4
  %3 = load i32 (%struct.dh_st*)*, i32 (%struct.dh_st*)** %init, align 8, !tbaa !16
  %tobool6.not = icmp eq i32 (%struct.dh_st*)* %3, null
  br i1 %tobool6.not, label %if.end10, label %if.then7

if.then7:                                         ; preds = %if.end
  %call9 = tail call i32 %3(%struct.dh_st* noundef nonnull %dh) #9
  br label %if.end10

if.end10:                                         ; preds = %if.then7, %if.end
  ret i32 1
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

declare i32 @ENGINE_finish(%struct.engine_st* noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define %struct.dh_method* @ossl_dh_get_method(%struct.dh_st* nocapture noundef readonly %dh) local_unnamed_addr #3 {
entry:
  %meth = getelementptr inbounds %struct.dh_st, %struct.dh_st* %dh, i64 0, i32 12
  %0 = load %struct.dh_method*, %struct.dh_method** %meth, align 8, !tbaa !4
  ret %struct.dh_method* %0
}

; Function Attrs: noinline nounwind uwtable
define %struct.dh_st* @DH_new() local_unnamed_addr #0 {
entry:
  %call = tail call fastcc %struct.dh_st* @dh_new_intern(%struct.engine_st* noundef null, %struct.ossl_lib_ctx_st* noundef null) #10
  ret %struct.dh_st* %call
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.dh_st* @dh_new_intern(%struct.engine_st* noundef %engine, %struct.ossl_lib_ctx_st* noundef %libctx) unnamed_addr #0 {
entry:
  %call = tail call i8* @CRYPTO_zalloc(i64 noundef 200, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 76) #9
  %0 = bitcast i8* %call to %struct.dh_st*
  %cmp = icmp eq i8* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #9
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 79, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.dh_new_intern, i64 0, i64 0)) #9
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 5, i32 noundef 786688, i8* noundef null) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %references = getelementptr inbounds i8, i8* %call, i64 136
  %1 = bitcast i8* %references to i32*
  store atomic i32 1, i32* %1 seq_cst, align 4, !tbaa !17
  %call1 = tail call i8* @CRYPTO_THREAD_lock_new() #9
  %lock = getelementptr inbounds i8, i8* %call, i64 184
  %2 = bitcast i8* %lock to i8**
  store i8* %call1, i8** %2, align 8, !tbaa !18
  %cmp3 = icmp eq i8* %call1, null
  br i1 %cmp3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  tail call void @ERR_new() #9
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 86, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.dh_new_intern, i64 0, i64 0)) #9
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 5, i32 noundef 786688, i8* noundef null) #9
  tail call void @CRYPTO_free(i8* noundef nonnull %call, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 87) #9
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %libctx6 = getelementptr inbounds i8, i8* %call, i64 168
  %3 = bitcast i8* %libctx6 to %struct.ossl_lib_ctx_st**
  store %struct.ossl_lib_ctx_st* %libctx, %struct.ossl_lib_ctx_st** %3, align 8, !tbaa !19
  %call7 = tail call %struct.dh_method* @DH_get_default_method() #9
  %meth = getelementptr inbounds i8, i8* %call, i64 176
  %4 = bitcast i8* %meth to %struct.dh_method**
  store %struct.dh_method* %call7, %struct.dh_method** %4, align 8, !tbaa !4
  %flags = getelementptr inbounds %struct.dh_method, %struct.dh_method* %call7, i64 0, i32 6
  %5 = load i32, i32* %flags, align 8, !tbaa !20
  %flags9 = getelementptr inbounds i8, i8* %call, i64 120
  %6 = bitcast i8* %flags9 to i32*
  store i32 %5, i32* %6, align 8, !tbaa !21
  %tobool.not = icmp eq %struct.engine_st* %engine, null
  br i1 %tobool.not, label %if.end18, label %if.then10

if.then10:                                        ; preds = %if.end5
  %call11 = tail call i32 @ENGINE_init(%struct.engine_st* noundef nonnull %engine) #9
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %err.sink.split, label %if.end18.thread

if.end18.thread:                                  ; preds = %if.then10
  %engine15 = getelementptr inbounds i8, i8* %call, i64 160
  %7 = bitcast i8* %engine15 to %struct.engine_st**
  store %struct.engine_st* %engine, %struct.engine_st** %7, align 8, !tbaa !15
  br label %if.then21

if.end18:                                         ; preds = %if.end5
  %call16 = tail call %struct.engine_st* @ENGINE_get_default_DH() #9
  %engine17 = getelementptr inbounds i8, i8* %call, i64 160
  %8 = bitcast i8* %engine17 to %struct.engine_st**
  store %struct.engine_st* %call16, %struct.engine_st** %8, align 8, !tbaa !15
  %tobool20.not = icmp eq %struct.engine_st* %call16, null
  br i1 %tobool20.not, label %if.end18.if.end29_crit_edge, label %if.then21

if.end18.if.end29_crit_edge:                      ; preds = %if.end18
  %.pre = load %struct.dh_method*, %struct.dh_method** %4, align 8, !tbaa !4
  br label %if.end29

if.then21:                                        ; preds = %if.end18.thread, %if.end18
  %9 = phi %struct.engine_st* [ %engine, %if.end18.thread ], [ %call16, %if.end18 ]
  %call23 = tail call %struct.dh_method* @ENGINE_get_DH(%struct.engine_st* noundef nonnull %9) #9
  store %struct.dh_method* %call23, %struct.dh_method** %4, align 8, !tbaa !4
  %cmp26 = icmp eq %struct.dh_method* %call23, null
  br i1 %cmp26, label %err.sink.split, label %if.end29

if.end29:                                         ; preds = %if.end18.if.end29_crit_edge, %if.then21
  %10 = phi %struct.dh_method* [ %.pre, %if.end18.if.end29_crit_edge ], [ %call23, %if.then21 ]
  %flags31 = getelementptr inbounds %struct.dh_method, %struct.dh_method* %10, i64 0, i32 6
  %11 = load i32, i32* %flags31, align 8, !tbaa !20
  store i32 %11, i32* %6, align 8, !tbaa !21
  %ex_data = getelementptr inbounds i8, i8* %call, i64 144
  %12 = bitcast i8* %ex_data to %struct.crypto_ex_data_st*
  %call33 = tail call i32 @CRYPTO_new_ex_data(i32 noundef 6, i8* noundef nonnull %call, %struct.crypto_ex_data_st* noundef nonnull %12) #9
  %tobool34.not = icmp eq i32 %call33, 0
  br i1 %tobool34.not, label %err, label %if.end36

if.end36:                                         ; preds = %if.end29
  %13 = load %struct.dh_method*, %struct.dh_method** %4, align 8, !tbaa !4
  %init = getelementptr inbounds %struct.dh_method, %struct.dh_method* %13, i64 0, i32 4
  %14 = load i32 (%struct.dh_st*)*, i32 (%struct.dh_st*)** %init, align 8, !tbaa !16
  %cmp38.not = icmp eq i32 (%struct.dh_st*)* %14, null
  br i1 %cmp38.not, label %cleanup, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end36
  %call41 = tail call i32 %14(%struct.dh_st* noundef nonnull %0) #9
  %tobool42.not = icmp eq i32 %call41, 0
  br i1 %tobool42.not, label %err.sink.split, label %cleanup

err.sink.split:                                   ; preds = %land.lhs.true, %if.then21, %if.then10
  %.sink74 = phi i32 [ 97, %if.then10 ], [ 106, %if.then21 ], [ 120, %land.lhs.true ]
  %.sink = phi i32 [ 524326, %if.then10 ], [ 524326, %if.then21 ], [ 786693, %land.lhs.true ]
  tail call void @ERR_new() #9
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef %.sink74, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.dh_new_intern, i64 0, i64 0)) #9
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 5, i32 noundef %.sink, i8* noundef null) #9
  br label %err

err:                                              ; preds = %err.sink.split, %if.end29
  tail call void @DH_free(%struct.dh_st* noundef nonnull %0) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end36, %land.lhs.true, %err, %if.then4, %if.then
  %retval.0 = phi %struct.dh_st* [ null, %if.then ], [ null, %if.then4 ], [ null, %err ], [ %0, %land.lhs.true ], [ %0, %if.end36 ]
  ret %struct.dh_st* %retval.0
}

; Function Attrs: noinline nounwind uwtable
define %struct.dh_st* @DH_new_method(%struct.engine_st* noundef %engine) local_unnamed_addr #0 {
entry:
  %call = tail call fastcc %struct.dh_st* @dh_new_intern(%struct.engine_st* noundef %engine, %struct.ossl_lib_ctx_st* noundef null) #10
  ret %struct.dh_st* %call
}

; Function Attrs: noinline nounwind uwtable
define %struct.dh_st* @ossl_dh_new_ex(%struct.ossl_lib_ctx_st* noundef %libctx) local_unnamed_addr #0 {
entry:
  %call = tail call fastcc %struct.dh_st* @dh_new_intern(%struct.engine_st* noundef null, %struct.ossl_lib_ctx_st* noundef %libctx) #10
  ret %struct.dh_st* %call
}

; Function Attrs: noinline nounwind uwtable
define void @DH_free(%struct.dh_st* noundef %r) local_unnamed_addr #0 {
entry:
  %i = alloca i32, align 4
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #11
  %cmp = icmp eq %struct.dh_st* %r, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %references = getelementptr inbounds %struct.dh_st, %struct.dh_st* %r, i64 0, i32 8
  %lock = getelementptr inbounds %struct.dh_st, %struct.dh_st* %r, i64 0, i32 13
  call fastcc void @CRYPTO_DOWN_REF(i32* noundef nonnull %references, i32* noundef nonnull %i) #10
  %1 = load i32, i32* %i, align 4, !tbaa !22
  %cmp1 = icmp sgt i32 %1, 0
  br i1 %cmp1, label %cleanup, label %if.end3

if.end3:                                          ; preds = %if.end
  %meth = getelementptr inbounds %struct.dh_st, %struct.dh_st* %r, i64 0, i32 12
  %2 = load %struct.dh_method*, %struct.dh_method** %meth, align 8, !tbaa !4
  %cmp4.not = icmp eq %struct.dh_method* %2, null
  br i1 %cmp4.not, label %if.end11, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end3
  %finish = getelementptr inbounds %struct.dh_method, %struct.dh_method* %2, i64 0, i32 5
  %3 = load i32 (%struct.dh_st*)*, i32 (%struct.dh_st*)** %finish, align 8, !tbaa !13
  %cmp6.not = icmp eq i32 (%struct.dh_st*)* %3, null
  br i1 %cmp6.not, label %if.end11, label %if.then7

if.then7:                                         ; preds = %land.lhs.true
  %call10 = tail call i32 %3(%struct.dh_st* noundef nonnull %r) #9
  br label %if.end11

if.end11:                                         ; preds = %if.then7, %land.lhs.true, %if.end3
  %engine = getelementptr inbounds %struct.dh_st, %struct.dh_st* %r, i64 0, i32 10
  %4 = load %struct.engine_st*, %struct.engine_st** %engine, align 8, !tbaa !15
  %call12 = tail call i32 @ENGINE_finish(%struct.engine_st* noundef %4) #9
  %5 = bitcast %struct.dh_st* %r to i8*
  %ex_data = getelementptr inbounds %struct.dh_st, %struct.dh_st* %r, i64 0, i32 9
  tail call void @CRYPTO_free_ex_data(i32 noundef 6, i8* noundef nonnull %5, %struct.crypto_ex_data_st* noundef nonnull %ex_data) #9
  %6 = load i8*, i8** %lock, align 8, !tbaa !18
  tail call void @CRYPTO_THREAD_lock_free(i8* noundef %6) #9
  %params = getelementptr inbounds %struct.dh_st, %struct.dh_st* %r, i64 0, i32 2
  tail call void @ossl_ffc_params_cleanup(%struct.ffc_params_st* noundef nonnull %params) #9
  %pub_key = getelementptr inbounds %struct.dh_st, %struct.dh_st* %r, i64 0, i32 4
  %7 = load %struct.bignum_st*, %struct.bignum_st** %pub_key, align 8, !tbaa !23
  tail call void @BN_clear_free(%struct.bignum_st* noundef %7) #9
  %priv_key = getelementptr inbounds %struct.dh_st, %struct.dh_st* %r, i64 0, i32 5
  %8 = load %struct.bignum_st*, %struct.bignum_st** %priv_key, align 8, !tbaa !24
  tail call void @BN_clear_free(%struct.bignum_st* noundef %8) #9
  tail call void @CRYPTO_free(i8* noundef nonnull %5, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 158) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry, %if.end11
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #11
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind uwtable willreturn
define internal fastcc void @CRYPTO_DOWN_REF(i32* nocapture noundef %val, i32* nocapture noundef writeonly %ret) unnamed_addr #4 {
entry:
  %0 = atomicrmw sub i32* %val, i32 1 monotonic, align 4
  %sub = add nsw i32 %0, -1
  store i32 %sub, i32* %ret, align 4, !tbaa !22
  %cmp = icmp eq i32 %sub, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  fence acquire
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare void @CRYPTO_free_ex_data(i32 noundef, i8* noundef, %struct.crypto_ex_data_st* noundef) local_unnamed_addr #2

declare void @CRYPTO_THREAD_lock_free(i8* noundef) local_unnamed_addr #2

declare void @ossl_ffc_params_cleanup(%struct.ffc_params_st* noundef) local_unnamed_addr #2

declare void @BN_clear_free(%struct.bignum_st* noundef) local_unnamed_addr #2

declare void @CRYPTO_free(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline nounwind uwtable willreturn
define i32 @DH_up_ref(%struct.dh_st* nocapture noundef %r) local_unnamed_addr #5 {
entry:
  %i = alloca i32, align 4
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #11
  %references = getelementptr inbounds %struct.dh_st, %struct.dh_st* %r, i64 0, i32 8
  call fastcc void @CRYPTO_UP_REF(i32* noundef nonnull %references, i32* noundef nonnull %i) #10
  %1 = load i32, i32* %i, align 4, !tbaa !22
  %cmp1 = icmp sgt i32 %1, 1
  %cond = zext i1 %cmp1 to i32
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #11
  ret i32 %cond
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind uwtable willreturn
define internal fastcc void @CRYPTO_UP_REF(i32* nocapture noundef %val, i32* nocapture noundef writeonly %ret) unnamed_addr #4 {
entry:
  %0 = atomicrmw add i32* %val, i32 1 monotonic, align 4
  %add = add nsw i32 %0, 1
  store i32 %add, i32* %ret, align 4, !tbaa !22
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define void @ossl_dh_set0_libctx(%struct.dh_st* nocapture noundef writeonly %d, %struct.ossl_lib_ctx_st* noundef %libctx) local_unnamed_addr #6 {
entry:
  %libctx1 = getelementptr inbounds %struct.dh_st, %struct.dh_st* %d, i64 0, i32 11
  store %struct.ossl_lib_ctx_st* %libctx, %struct.ossl_lib_ctx_st** %libctx1, align 8, !tbaa !19
  ret void
}

; Function Attrs: noinline nounwind uwtable
define i32 @DH_set_ex_data(%struct.dh_st* noundef %d, i32 noundef %idx, i8* noundef %arg) local_unnamed_addr #0 {
entry:
  %ex_data = getelementptr inbounds %struct.dh_st, %struct.dh_st* %d, i64 0, i32 9
  %call = tail call i32 @CRYPTO_set_ex_data(%struct.crypto_ex_data_st* noundef nonnull %ex_data, i32 noundef %idx, i8* noundef %arg) #9
  ret i32 %call
}

declare i32 @CRYPTO_set_ex_data(%struct.crypto_ex_data_st* noundef, i32 noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i8* @DH_get_ex_data(%struct.dh_st* noundef %d, i32 noundef %idx) local_unnamed_addr #0 {
entry:
  %ex_data = getelementptr inbounds %struct.dh_st, %struct.dh_st* %d, i64 0, i32 9
  %call = tail call i8* @CRYPTO_get_ex_data(%struct.crypto_ex_data_st* noundef nonnull %ex_data, i32 noundef %idx) #9
  ret i8* %call
}

declare i8* @CRYPTO_get_ex_data(%struct.crypto_ex_data_st* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @DH_bits(%struct.dh_st* nocapture noundef readonly %dh) local_unnamed_addr #0 {
entry:
  %p = getelementptr inbounds %struct.dh_st, %struct.dh_st* %dh, i64 0, i32 2, i32 0
  %0 = load %struct.bignum_st*, %struct.bignum_st** %p, align 8, !tbaa !25
  %cmp.not = icmp eq %struct.bignum_st* %0, null
  br i1 %cmp.not, label %return, label %if.then

if.then:                                          ; preds = %entry
  %call = tail call i32 @BN_num_bits(%struct.bignum_st* noundef nonnull %0) #9
  br label %return

return:                                           ; preds = %entry, %if.then
  %retval.0 = phi i32 [ %call, %if.then ], [ -1, %entry ]
  ret i32 %retval.0
}

declare i32 @BN_num_bits(%struct.bignum_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @DH_size(%struct.dh_st* nocapture noundef readonly %dh) local_unnamed_addr #0 {
entry:
  %p = getelementptr inbounds %struct.dh_st, %struct.dh_st* %dh, i64 0, i32 2, i32 0
  %0 = load %struct.bignum_st*, %struct.bignum_st** %p, align 8, !tbaa !25
  %cmp.not = icmp eq %struct.bignum_st* %0, null
  br i1 %cmp.not, label %return, label %if.then

if.then:                                          ; preds = %entry
  %call = tail call i32 @BN_num_bits(%struct.bignum_st* noundef nonnull %0) #9
  %add = add nsw i32 %call, 7
  %div = sdiv i32 %add, 8
  br label %return

return:                                           ; preds = %entry, %if.then
  %retval.0 = phi i32 [ %div, %if.then ], [ -1, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @DH_security_bits(%struct.dh_st* nocapture noundef readonly %dh) local_unnamed_addr #0 {
entry:
  %q = getelementptr inbounds %struct.dh_st, %struct.dh_st* %dh, i64 0, i32 2, i32 1
  %0 = load %struct.bignum_st*, %struct.bignum_st** %q, align 8, !tbaa !26
  %cmp.not = icmp eq %struct.bignum_st* %0, null
  br i1 %cmp.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %call = tail call i32 @BN_num_bits(%struct.bignum_st* noundef nonnull %0) #9
  br label %if.end6

if.else:                                          ; preds = %entry
  %length = getelementptr inbounds %struct.dh_st, %struct.dh_st* %dh, i64 0, i32 3
  %1 = load i32, i32* %length, align 8, !tbaa !27
  %tobool.not = icmp eq i32 %1, 0
  %. = select i1 %tobool.not, i32 -1, i32 %1
  br label %if.end6

if.end6:                                          ; preds = %if.else, %if.then
  %N.0 = phi i32 [ %call, %if.then ], [ %., %if.else ]
  %p = getelementptr inbounds %struct.dh_st, %struct.dh_st* %dh, i64 0, i32 2, i32 0
  %2 = load %struct.bignum_st*, %struct.bignum_st** %p, align 8, !tbaa !25
  %cmp8.not = icmp eq %struct.bignum_st* %2, null
  br i1 %cmp8.not, label %cleanup, label %if.then9

if.then9:                                         ; preds = %if.end6
  %call12 = tail call i32 @BN_num_bits(%struct.bignum_st* noundef nonnull %2) #9
  %call13 = tail call i32 @BN_security_bits(i32 noundef %call12, i32 noundef %N.0) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.then9
  %retval.0 = phi i32 [ %call13, %if.then9 ], [ -1, %if.end6 ]
  ret i32 %retval.0
}

declare i32 @BN_security_bits(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define void @DH_get0_pqg(%struct.dh_st* noundef %dh, %struct.bignum_st** noundef %p, %struct.bignum_st** noundef %q, %struct.bignum_st** noundef %g) local_unnamed_addr #0 {
entry:
  %params = getelementptr inbounds %struct.dh_st, %struct.dh_st* %dh, i64 0, i32 2
  tail call void @ossl_ffc_params_get0_pqg(%struct.ffc_params_st* noundef nonnull %params, %struct.bignum_st** noundef %p, %struct.bignum_st** noundef %q, %struct.bignum_st** noundef %g) #9
  ret void
}

declare void @ossl_ffc_params_get0_pqg(%struct.ffc_params_st* noundef, %struct.bignum_st** noundef, %struct.bignum_st** noundef, %struct.bignum_st** noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @DH_set0_pqg(%struct.dh_st* noundef %dh, %struct.bignum_st* noundef %p, %struct.bignum_st* noundef %q, %struct.bignum_st* noundef %g) local_unnamed_addr #0 {
entry:
  %params = getelementptr inbounds %struct.dh_st, %struct.dh_st* %dh, i64 0, i32 2
  %p1 = getelementptr inbounds %struct.ffc_params_st, %struct.ffc_params_st* %params, i64 0, i32 0
  %0 = load %struct.bignum_st*, %struct.bignum_st** %p1, align 8, !tbaa !25
  %cmp = icmp eq %struct.bignum_st* %0, null
  %cmp2 = icmp eq %struct.bignum_st* %p, null
  %or.cond = and i1 %cmp2, %cmp
  br i1 %or.cond, label %return, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %g4 = getelementptr inbounds %struct.dh_st, %struct.dh_st* %dh, i64 0, i32 2, i32 2
  %1 = load %struct.bignum_st*, %struct.bignum_st** %g4, align 8, !tbaa !28
  %cmp5 = icmp eq %struct.bignum_st* %1, null
  %cmp7 = icmp eq %struct.bignum_st* %g, null
  %or.cond9 = and i1 %cmp7, %cmp5
  br i1 %or.cond9, label %return, label %if.end

if.end:                                           ; preds = %lor.lhs.false
  tail call void @ossl_ffc_params_set0_pqg(%struct.ffc_params_st* noundef nonnull %params, %struct.bignum_st* noundef %p, %struct.bignum_st* noundef %q, %struct.bignum_st* noundef %g) #9
  tail call void @ossl_dh_cache_named_group(%struct.dh_st* noundef nonnull %dh) #9
  %dirty_cnt = getelementptr inbounds %struct.dh_st, %struct.dh_st* %dh, i64 0, i32 14
  %2 = load i64, i64* %dirty_cnt, align 8, !tbaa !29
  %inc = add i64 %2, 1
  store i64 %inc, i64* %dirty_cnt, align 8, !tbaa !29
  br label %return

return:                                           ; preds = %entry, %lor.lhs.false, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %lor.lhs.false ], [ 0, %entry ]
  ret i32 %retval.0
}

declare void @ossl_ffc_params_set0_pqg(%struct.ffc_params_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef) local_unnamed_addr #2

declare void @ossl_dh_cache_named_group(%struct.dh_st* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define i64 @DH_get_length(%struct.dh_st* nocapture noundef readonly %dh) local_unnamed_addr #3 {
entry:
  %length = getelementptr inbounds %struct.dh_st, %struct.dh_st* %dh, i64 0, i32 3
  %0 = load i32, i32* %length, align 8, !tbaa !27
  %conv = sext i32 %0 to i64
  ret i64 %conv
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define i32 @DH_set_length(%struct.dh_st* nocapture noundef %dh, i64 noundef %length) local_unnamed_addr #7 {
entry:
  %conv = trunc i64 %length to i32
  %length1 = getelementptr inbounds %struct.dh_st, %struct.dh_st* %dh, i64 0, i32 3
  store i32 %conv, i32* %length1, align 8, !tbaa !27
  %dirty_cnt = getelementptr inbounds %struct.dh_st, %struct.dh_st* %dh, i64 0, i32 14
  %0 = load i64, i64* %dirty_cnt, align 8, !tbaa !29
  %inc = add i64 %0, 1
  store i64 %inc, i64* %dirty_cnt, align 8, !tbaa !29
  ret i32 1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define void @DH_get0_key(%struct.dh_st* nocapture noundef readonly %dh, %struct.bignum_st** noundef writeonly %pub_key, %struct.bignum_st** noundef writeonly %priv_key) local_unnamed_addr #7 {
entry:
  %cmp.not = icmp eq %struct.bignum_st** %pub_key, null
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %pub_key1 = getelementptr inbounds %struct.dh_st, %struct.dh_st* %dh, i64 0, i32 4
  %0 = load %struct.bignum_st*, %struct.bignum_st** %pub_key1, align 8, !tbaa !23
  store %struct.bignum_st* %0, %struct.bignum_st** %pub_key, align 8, !tbaa !30
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %cmp2.not = icmp eq %struct.bignum_st** %priv_key, null
  br i1 %cmp2.not, label %if.end5, label %if.then3

if.then3:                                         ; preds = %if.end
  %priv_key4 = getelementptr inbounds %struct.dh_st, %struct.dh_st* %dh, i64 0, i32 5
  %1 = load %struct.bignum_st*, %struct.bignum_st** %priv_key4, align 8, !tbaa !24
  store %struct.bignum_st* %1, %struct.bignum_st** %priv_key, align 8, !tbaa !30
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %if.end
  ret void
}

; Function Attrs: noinline nounwind uwtable
define i32 @DH_set0_key(%struct.dh_st* nocapture noundef %dh, %struct.bignum_st* noundef %pub_key, %struct.bignum_st* noundef %priv_key) local_unnamed_addr #0 {
entry:
  %cmp.not = icmp eq %struct.bignum_st* %pub_key, null
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %pub_key1 = getelementptr inbounds %struct.dh_st, %struct.dh_st* %dh, i64 0, i32 4
  %0 = load %struct.bignum_st*, %struct.bignum_st** %pub_key1, align 8, !tbaa !23
  tail call void @BN_clear_free(%struct.bignum_st* noundef %0) #9
  store %struct.bignum_st* %pub_key, %struct.bignum_st** %pub_key1, align 8, !tbaa !23
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %cmp3.not = icmp eq %struct.bignum_st* %priv_key, null
  br i1 %cmp3.not, label %if.end7, label %if.then4

if.then4:                                         ; preds = %if.end
  %priv_key5 = getelementptr inbounds %struct.dh_st, %struct.dh_st* %dh, i64 0, i32 5
  %1 = load %struct.bignum_st*, %struct.bignum_st** %priv_key5, align 8, !tbaa !24
  tail call void @BN_clear_free(%struct.bignum_st* noundef %1) #9
  store %struct.bignum_st* %priv_key, %struct.bignum_st** %priv_key5, align 8, !tbaa !24
  br label %if.end7

if.end7:                                          ; preds = %if.then4, %if.end
  %dirty_cnt = getelementptr inbounds %struct.dh_st, %struct.dh_st* %dh, i64 0, i32 14
  %2 = load i64, i64* %dirty_cnt, align 8, !tbaa !29
  %inc = add i64 %2, 1
  store i64 %inc, i64* %dirty_cnt, align 8, !tbaa !29
  ret i32 1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define %struct.bignum_st* @DH_get0_p(%struct.dh_st* nocapture noundef readonly %dh) local_unnamed_addr #3 {
entry:
  %p = getelementptr inbounds %struct.dh_st, %struct.dh_st* %dh, i64 0, i32 2, i32 0
  %0 = load %struct.bignum_st*, %struct.bignum_st** %p, align 8, !tbaa !25
  ret %struct.bignum_st* %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define %struct.bignum_st* @DH_get0_q(%struct.dh_st* nocapture noundef readonly %dh) local_unnamed_addr #3 {
entry:
  %q = getelementptr inbounds %struct.dh_st, %struct.dh_st* %dh, i64 0, i32 2, i32 1
  %0 = load %struct.bignum_st*, %struct.bignum_st** %q, align 8, !tbaa !26
  ret %struct.bignum_st* %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define %struct.bignum_st* @DH_get0_g(%struct.dh_st* nocapture noundef readonly %dh) local_unnamed_addr #3 {
entry:
  %g = getelementptr inbounds %struct.dh_st, %struct.dh_st* %dh, i64 0, i32 2, i32 2
  %0 = load %struct.bignum_st*, %struct.bignum_st** %g, align 8, !tbaa !28
  ret %struct.bignum_st* %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define %struct.bignum_st* @DH_get0_priv_key(%struct.dh_st* nocapture noundef readonly %dh) local_unnamed_addr #3 {
entry:
  %priv_key = getelementptr inbounds %struct.dh_st, %struct.dh_st* %dh, i64 0, i32 5
  %0 = load %struct.bignum_st*, %struct.bignum_st** %priv_key, align 8, !tbaa !24
  ret %struct.bignum_st* %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define %struct.bignum_st* @DH_get0_pub_key(%struct.dh_st* nocapture noundef readonly %dh) local_unnamed_addr #3 {
entry:
  %pub_key = getelementptr inbounds %struct.dh_st, %struct.dh_st* %dh, i64 0, i32 4
  %0 = load %struct.bignum_st*, %struct.bignum_st** %pub_key, align 8, !tbaa !23
  ret %struct.bignum_st* %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define void @DH_clear_flags(%struct.dh_st* nocapture noundef %dh, i32 noundef %flags) local_unnamed_addr #7 {
entry:
  %neg = xor i32 %flags, -1
  %flags1 = getelementptr inbounds %struct.dh_st, %struct.dh_st* %dh, i64 0, i32 6
  %0 = load i32, i32* %flags1, align 8, !tbaa !21
  %and = and i32 %0, %neg
  store i32 %and, i32* %flags1, align 8, !tbaa !21
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define i32 @DH_test_flags(%struct.dh_st* nocapture noundef readonly %dh, i32 noundef %flags) local_unnamed_addr #3 {
entry:
  %flags1 = getelementptr inbounds %struct.dh_st, %struct.dh_st* %dh, i64 0, i32 6
  %0 = load i32, i32* %flags1, align 8, !tbaa !21
  %and = and i32 %0, %flags
  ret i32 %and
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define void @DH_set_flags(%struct.dh_st* nocapture noundef %dh, i32 noundef %flags) local_unnamed_addr #7 {
entry:
  %flags1 = getelementptr inbounds %struct.dh_st, %struct.dh_st* %dh, i64 0, i32 6
  %0 = load i32, i32* %flags1, align 8, !tbaa !21
  %or = or i32 %0, %flags
  store i32 %or, i32* %flags1, align 8, !tbaa !21
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define %struct.engine_st* @DH_get0_engine(%struct.dh_st* nocapture noundef readonly %dh) local_unnamed_addr #3 {
entry:
  %engine = getelementptr inbounds %struct.dh_st, %struct.dh_st* %dh, i64 0, i32 10
  %0 = load %struct.engine_st*, %struct.engine_st** %engine, align 8, !tbaa !15
  ret %struct.engine_st* %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define nonnull %struct.ffc_params_st* @ossl_dh_get0_params(%struct.dh_st* noundef readnone %dh) local_unnamed_addr #8 {
entry:
  %params = getelementptr inbounds %struct.dh_st, %struct.dh_st* %dh, i64 0, i32 2
  ret %struct.ffc_params_st* %params
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define i32 @ossl_dh_get0_nid(%struct.dh_st* nocapture noundef readonly %dh) local_unnamed_addr #3 {
entry:
  %nid = getelementptr inbounds %struct.dh_st, %struct.dh_st* %dh, i64 0, i32 2, i32 7
  %0 = load i32, i32* %nid, align 4, !tbaa !31
  ret i32 %0
}

declare i8* @CRYPTO_zalloc(i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare void @ERR_new() local_unnamed_addr #2

declare void @ERR_set_debug(i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #2

declare void @ERR_set_error(i32 noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #2

declare i8* @CRYPTO_THREAD_lock_new() local_unnamed_addr #2

declare %struct.dh_method* @DH_get_default_method() local_unnamed_addr #2

declare i32 @ENGINE_init(%struct.engine_st* noundef) local_unnamed_addr #2

declare %struct.engine_st* @ENGINE_get_default_DH() local_unnamed_addr #2

declare %struct.dh_method* @ENGINE_get_DH(%struct.engine_st* noundef) local_unnamed_addr #2

declare i32 @CRYPTO_new_ex_data(i32 noundef, i8* noundef, %struct.crypto_ex_data_st* noundef) local_unnamed_addr #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nounwind uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline nounwind uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nobuiltin nounwind "no-builtins" }
attributes #10 = { nobuiltin "no-builtins" }
attributes #11 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{!"clang version 14.0.0"}
!4 = !{!5, !10, i64 176}
!5 = !{!"dh_st", !6, i64 0, !6, i64 4, !9, i64 8, !6, i64 96, !10, i64 104, !10, i64 112, !6, i64 120, !10, i64 128, !7, i64 136, !12, i64 144, !10, i64 160, !10, i64 168, !10, i64 176, !10, i64 184, !11, i64 192}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!"ffc_params_st", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !11, i64 40, !6, i64 48, !6, i64 52, !6, i64 56, !6, i64 60, !6, i64 64, !10, i64 72, !10, i64 80}
!10 = !{!"any pointer", !7, i64 0}
!11 = !{!"long", !7, i64 0}
!12 = !{!"crypto_ex_data_st", !10, i64 0, !10, i64 8}
!13 = !{!14, !10, i64 40}
!14 = !{!"dh_method", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !10, i64 40, !6, i64 48, !10, i64 56, !10, i64 64}
!15 = !{!5, !10, i64 160}
!16 = !{!14, !10, i64 32}
!17 = !{!5, !7, i64 136}
!18 = !{!5, !10, i64 184}
!19 = !{!5, !10, i64 168}
!20 = !{!14, !6, i64 48}
!21 = !{!5, !6, i64 120}
!22 = !{!6, !6, i64 0}
!23 = !{!5, !10, i64 104}
!24 = !{!5, !10, i64 112}
!25 = !{!5, !10, i64 8}
!26 = !{!5, !10, i64 16}
!27 = !{!5, !6, i64 96}
!28 = !{!5, !10, i64 24}
!29 = !{!5, !11, i64 192}
!30 = !{!10, !10, i64 0}
!31 = !{!5, !6, i64 60}
