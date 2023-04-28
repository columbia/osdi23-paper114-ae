; ModuleID = 'crypto/ec/ec_kmeth.c'
source_filename = "crypto/ec/ec_kmeth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ec_key_method_st = type { i8*, i32, i32 (%struct.ec_key_st*)*, void (%struct.ec_key_st*)*, i32 (%struct.ec_key_st*, %struct.ec_key_st*)*, i32 (%struct.ec_key_st*, %struct.ec_group_st*)*, i32 (%struct.ec_key_st*, %struct.bignum_st*)*, i32 (%struct.ec_key_st*, %struct.ec_point_st*)*, i32 (%struct.ec_key_st*)*, i32 (i8**, i64*, %struct.ec_point_st*, %struct.ec_key_st*)*, i32 (i32, i8*, i32, i8*, i32*, %struct.bignum_st*, %struct.bignum_st*, %struct.ec_key_st*)*, i32 (%struct.ec_key_st*, %struct.bignum_ctx*, %struct.bignum_st**, %struct.bignum_st**)*, %struct.ECDSA_SIG_st* (i8*, i32, %struct.bignum_st*, %struct.bignum_st*, %struct.ec_key_st*)*, i32 (i32, i8*, i32, i8*, i32, %struct.ec_key_st*)*, i32 (i8*, i32, %struct.ECDSA_SIG_st*, %struct.ec_key_st*)* }
%struct.ec_key_st = type { %struct.ec_key_method_st*, %struct.engine_st*, i32, %struct.ec_group_st*, %struct.ec_point_st*, %struct.bignum_st*, i32, i32, i32, i32, %struct.crypto_ex_data_st, i8*, %struct.ossl_lib_ctx_st*, i8*, i64 }
%struct.engine_st = type opaque
%struct.ec_group_st = type { %struct.ec_method_st*, %struct.ec_point_st*, %struct.bignum_st*, %struct.bignum_st*, i32, i32, i32, i32, i8*, i64, %struct.bignum_st*, [6 x i32], %struct.bignum_st*, %struct.bignum_st*, i32, i8*, i8*, i32 (%struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)*, %struct.bn_mont_ctx_st*, i32, %union.anon, %struct.ossl_lib_ctx_st*, i8* }
%struct.ec_method_st = type { i32, i32, i32 (%struct.ec_group_st*)*, void (%struct.ec_group_st*)*, void (%struct.ec_group_st*)*, i32 (%struct.ec_group_st*, %struct.ec_group_st*)*, i32 (%struct.ec_group_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*)*, i32 (%struct.ec_group_st*)*, i32 (%struct.ec_group_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_point_st*)*, void (%struct.ec_point_st*)*, void (%struct.ec_point_st*)*, i32 (%struct.ec_point_st*, %struct.ec_point_st*)*, i32 (%struct.ec_group_st*, %struct.ec_point_st*)*, i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.bignum_st*, i32, %struct.bignum_ctx*)*, i64 (%struct.ec_group_st*, %struct.ec_point_st*, i32, i8*, i64, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.ec_point_st*, i8*, i64, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.ec_point_st*, %struct.ec_point_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.ec_point_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.ec_point_st*)*, i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.ec_point_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, i64, %struct.ec_point_st**, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.bignum_st*, i64, %struct.ec_point_st**, %struct.bignum_st**, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*)*, i32 (%struct.ec_group_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.bignum_st*, %struct.bignum_ctx*)*, i64 (%struct.ec_key_st*, i8*, i64)*, i32 (%struct.ec_key_st*, i8*, i64)*, i32 (%struct.ec_key_st*, %struct.bignum_st*)*, {}*, i32 (%struct.ec_key_st*)*, {}*, i32 (%struct.ec_key_st*, %struct.ec_key_st*)*, void (%struct.ec_key_st*)*, i32 (i8**, i64*, %struct.ec_point_st*, %struct.ec_key_st*)*, i32 (%struct.ec_key_st*, %struct.bignum_ctx*, %struct.bignum_st**, %struct.bignum_st**)*, %struct.ECDSA_SIG_st* (i8*, i32, %struct.bignum_st*, %struct.bignum_st*, %struct.ec_key_st*)*, i32 (i8*, i32, %struct.ECDSA_SIG_st*, %struct.ec_key_st*)*, i32 (%struct.ec_group_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.ec_point_st*, %struct.ec_point_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.ec_point_st*, %struct.ec_point_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.ec_point_st*, %struct.ec_point_st*, %struct.bignum_ctx*)* }
%struct.bignum_ctx = type opaque
%struct.bn_mont_ctx_st = type opaque
%union.anon = type { %struct.nistp224_pre_comp_st* }
%struct.nistp224_pre_comp_st = type opaque
%struct.ec_point_st = type { %struct.ec_method_st*, i32, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, i32 }
%struct.bignum_st = type opaque
%struct.crypto_ex_data_st = type { %struct.ossl_lib_ctx_st*, %struct.stack_st_void* }
%struct.stack_st_void = type opaque
%struct.ossl_lib_ctx_st = type opaque
%struct.ECDSA_SIG_st = type { %struct.bignum_st*, %struct.bignum_st* }

@openssl_ec_key_method = internal constant %struct.ec_key_method_st { i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i32 0, i32 0), i32 0, i32 (%struct.ec_key_st*)* null, void (%struct.ec_key_st*)* null, i32 (%struct.ec_key_st*, %struct.ec_key_st*)* null, i32 (%struct.ec_key_st*, %struct.ec_group_st*)* null, i32 (%struct.ec_key_st*, %struct.bignum_st*)* null, i32 (%struct.ec_key_st*, %struct.ec_point_st*)* null, i32 (%struct.ec_key_st*)* @ossl_ec_key_gen, i32 (i8**, i64*, %struct.ec_point_st*, %struct.ec_key_st*)* @ossl_ecdh_compute_key, i32 (i32, i8*, i32, i8*, i32*, %struct.bignum_st*, %struct.bignum_st*, %struct.ec_key_st*)* @ossl_ecdsa_sign, i32 (%struct.ec_key_st*, %struct.bignum_ctx*, %struct.bignum_st**, %struct.bignum_st**)* @ossl_ecdsa_sign_setup, %struct.ECDSA_SIG_st* (i8*, i32, %struct.bignum_st*, %struct.bignum_st*, %struct.ec_key_st*)* @ossl_ecdsa_sign_sig, i32 (i32, i8*, i32, i8*, i32, %struct.ec_key_st*)* @ossl_ecdsa_verify, i32 (i8*, i32, %struct.ECDSA_SIG_st*, %struct.ec_key_st*)* @ossl_ecdsa_verify_sig }, align 8
@default_ec_key_meth = internal unnamed_addr global %struct.ec_key_method_st* @openssl_ec_key_method, align 8
@.str = private unnamed_addr constant [21 x i8] c"crypto/ec/ec_kmeth.c\00", align 1
@__func__.ossl_ec_key_new_method_int = private unnamed_addr constant [27 x i8] c"ossl_ec_key_new_method_int\00", align 1
@__func__.ECDH_compute_key = private unnamed_addr constant [17 x i8] c"ECDH_compute_key\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"OpenSSL EC_KEY method\00", align 1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define nonnull %struct.ec_key_method_st* @EC_KEY_OpenSSL() local_unnamed_addr #0 {
entry:
  ret %struct.ec_key_method_st* @openssl_ec_key_method
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define %struct.ec_key_method_st* @EC_KEY_get_default_method() local_unnamed_addr #1 {
entry:
  %0 = load %struct.ec_key_method_st*, %struct.ec_key_method_st** @default_ec_key_meth, align 8, !tbaa !4
  ret %struct.ec_key_method_st* %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define void @EC_KEY_set_default_method(%struct.ec_key_method_st* noundef %meth) local_unnamed_addr #2 {
entry:
  %cmp = icmp eq %struct.ec_key_method_st* %meth, null
  %openssl_ec_key_method.meth = select i1 %cmp, %struct.ec_key_method_st* @openssl_ec_key_method, %struct.ec_key_method_st* %meth
  store %struct.ec_key_method_st* %openssl_ec_key_method.meth, %struct.ec_key_method_st** @default_ec_key_meth, align 8, !tbaa !4
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define %struct.ec_key_method_st* @EC_KEY_get_method(%struct.ec_key_st* nocapture noundef readonly %key) local_unnamed_addr #1 {
entry:
  %meth = getelementptr inbounds %struct.ec_key_st, %struct.ec_key_st* %key, i64 0, i32 0
  %0 = load %struct.ec_key_method_st*, %struct.ec_key_method_st** %meth, align 8, !tbaa !8
  ret %struct.ec_key_method_st* %0
}

; Function Attrs: noinline nounwind uwtable
define i32 @EC_KEY_set_method(%struct.ec_key_st* noundef %key, %struct.ec_key_method_st* noundef %meth) local_unnamed_addr #3 {
entry:
  %meth1 = getelementptr inbounds %struct.ec_key_st, %struct.ec_key_st* %key, i64 0, i32 0
  %0 = load %struct.ec_key_method_st*, %struct.ec_key_method_st** %meth1, align 8, !tbaa !8
  %finish2 = getelementptr inbounds %struct.ec_key_method_st, %struct.ec_key_method_st* %0, i64 0, i32 3
  %1 = load void (%struct.ec_key_st*)*, void (%struct.ec_key_st*)** %finish2, align 8, !tbaa !13
  %cmp.not = icmp eq void (%struct.ec_key_st*)* %1, null
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  tail call void %1(%struct.ec_key_st* noundef nonnull %key) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %engine = getelementptr inbounds %struct.ec_key_st, %struct.ec_key_st* %key, i64 0, i32 1
  %2 = load %struct.engine_st*, %struct.engine_st** %engine, align 8, !tbaa !15
  %call = tail call i32 @ENGINE_finish(%struct.engine_st* noundef %2) #9
  store %struct.engine_st* null, %struct.engine_st** %engine, align 8, !tbaa !15
  store %struct.ec_key_method_st* %meth, %struct.ec_key_method_st** %meth1, align 8, !tbaa !8
  %init = getelementptr inbounds %struct.ec_key_method_st, %struct.ec_key_method_st* %meth, i64 0, i32 2
  %3 = load i32 (%struct.ec_key_st*)*, i32 (%struct.ec_key_st*)** %init, align 8, !tbaa !16
  %cmp5.not = icmp eq i32 (%struct.ec_key_st*)* %3, null
  br i1 %cmp5.not, label %cleanup, label %if.then6

if.then6:                                         ; preds = %if.end
  %call8 = tail call i32 %3(%struct.ec_key_st* noundef nonnull %key) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then6
  %retval.0 = phi i32 [ %call8, %if.then6 ], [ 1, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #4

declare i32 @ENGINE_finish(%struct.engine_st* noundef) local_unnamed_addr #5

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #4

; Function Attrs: noinline nounwind uwtable
define %struct.ec_key_st* @ossl_ec_key_new_method_int(%struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef %propq, %struct.engine_st* noundef %engine) local_unnamed_addr #3 {
entry:
  %call = tail call i8* @CRYPTO_zalloc(i64 noundef 112, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 84) #9
  %0 = bitcast i8* %call to %struct.ec_key_st*
  %cmp = icmp eq i8* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #9
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 87, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.ossl_ec_key_new_method_int, i64 0, i64 0)) #9
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 16, i32 noundef 786688, i8* noundef null) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %libctx1 = getelementptr inbounds i8, i8* %call, i64 88
  %1 = bitcast i8* %libctx1 to %struct.ossl_lib_ctx_st**
  store %struct.ossl_lib_ctx_st* %libctx, %struct.ossl_lib_ctx_st** %1, align 8, !tbaa !17
  %cmp2.not = icmp eq i8* %propq, null
  br i1 %cmp2.not, label %if.end10, label %if.then3

if.then3:                                         ; preds = %if.end
  %call4 = tail call i8* @CRYPTO_strdup(i8* noundef nonnull %propq, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 93) #9
  %propq5 = getelementptr inbounds i8, i8* %call, i64 96
  %2 = bitcast i8* %propq5 to i8**
  store i8* %call4, i8** %2, align 8, !tbaa !18
  %cmp7 = icmp eq i8* %call4, null
  br i1 %cmp7, label %err.sink.split, label %if.end10

if.end10:                                         ; preds = %if.then3, %if.end
  %references = getelementptr inbounds i8, i8* %call, i64 56
  %3 = bitcast i8* %references to i32*
  store atomic i32 1, i32* %3 seq_cst, align 4, !tbaa !19
  %call11 = tail call i8* @CRYPTO_THREAD_lock_new() #9
  %lock = getelementptr inbounds i8, i8* %call, i64 80
  %4 = bitcast i8* %lock to i8**
  store i8* %call11, i8** %4, align 8, !tbaa !20
  %cmp13 = icmp eq i8* %call11, null
  br i1 %cmp13, label %err.sink.split, label %if.end15

if.end15:                                         ; preds = %if.end10
  %call16 = tail call %struct.ec_key_method_st* @EC_KEY_get_default_method() #10
  %meth = bitcast i8* %call to %struct.ec_key_method_st**
  store %struct.ec_key_method_st* %call16, %struct.ec_key_method_st** %meth, align 8, !tbaa !8
  %cmp17.not = icmp eq %struct.engine_st* %engine, null
  br i1 %cmp17.not, label %if.end25, label %if.then18

if.then18:                                        ; preds = %if.end15
  %call19 = tail call i32 @ENGINE_init(%struct.engine_st* noundef nonnull %engine) #9
  %tobool.not = icmp eq i32 %call19, 0
  br i1 %tobool.not, label %err.sink.split, label %if.end25.thread

if.end25.thread:                                  ; preds = %if.then18
  %engine22 = getelementptr inbounds i8, i8* %call, i64 8
  %5 = bitcast i8* %engine22 to %struct.engine_st**
  store %struct.engine_st* %engine, %struct.engine_st** %5, align 8, !tbaa !15
  br label %if.then28

if.end25:                                         ; preds = %if.end15
  %call23 = tail call %struct.engine_st* @ENGINE_get_default_EC() #9
  %engine24 = getelementptr inbounds i8, i8* %call, i64 8
  %6 = bitcast i8* %engine24 to %struct.engine_st**
  store %struct.engine_st* %call23, %struct.engine_st** %6, align 8, !tbaa !15
  %cmp27.not = icmp eq %struct.engine_st* %call23, null
  br i1 %cmp27.not, label %if.end36, label %if.then28

if.then28:                                        ; preds = %if.end25.thread, %if.end25
  %7 = phi %struct.engine_st* [ %engine, %if.end25.thread ], [ %call23, %if.end25 ]
  %call30 = tail call %struct.ec_key_method_st* @ENGINE_get_EC(%struct.engine_st* noundef nonnull %7) #9
  store %struct.ec_key_method_st* %call30, %struct.ec_key_method_st** %meth, align 8, !tbaa !8
  %cmp33 = icmp eq %struct.ec_key_method_st* %call30, null
  br i1 %cmp33, label %err.sink.split, label %if.end36

if.end36:                                         ; preds = %if.then28, %if.end25
  %version = getelementptr inbounds i8, i8* %call, i64 16
  %8 = bitcast i8* %version to i32*
  store i32 1, i32* %8, align 8, !tbaa !21
  %conv_form = getelementptr inbounds i8, i8* %call, i64 52
  %9 = bitcast i8* %conv_form to i32*
  store i32 4, i32* %9, align 4, !tbaa !22
  %ex_data = getelementptr inbounds i8, i8* %call, i64 64
  %10 = bitcast i8* %ex_data to %struct.crypto_ex_data_st*
  %call37 = tail call i32 @CRYPTO_new_ex_data(i32 noundef 8, i8* noundef nonnull %call, %struct.crypto_ex_data_st* noundef nonnull %10) #9
  %tobool38.not = icmp eq i32 %call37, 0
  br i1 %tobool38.not, label %err, label %if.end40

if.end40:                                         ; preds = %if.end36
  %11 = load %struct.ec_key_method_st*, %struct.ec_key_method_st** %meth, align 8, !tbaa !8
  %init = getelementptr inbounds %struct.ec_key_method_st, %struct.ec_key_method_st* %11, i64 0, i32 2
  %12 = load i32 (%struct.ec_key_st*)*, i32 (%struct.ec_key_st*)** %init, align 8, !tbaa !16
  %cmp42.not = icmp eq i32 (%struct.ec_key_st*)* %12, null
  br i1 %cmp42.not, label %cleanup, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end40
  %call45 = tail call i32 %12(%struct.ec_key_st* noundef nonnull %0) #9
  %cmp46 = icmp eq i32 %call45, 0
  br i1 %cmp46, label %err.sink.split, label %cleanup

err.sink.split:                                   ; preds = %land.lhs.true, %if.then28, %if.then18, %if.end10, %if.then3
  %.sink78 = phi i32 [ 95, %if.then3 ], [ 103, %if.end10 ], [ 111, %if.then18 ], [ 120, %if.then28 ], [ 137, %land.lhs.true ]
  %.sink = phi i32 [ 786688, %if.then3 ], [ 786688, %if.end10 ], [ 524326, %if.then18 ], [ 524326, %if.then28 ], [ 786693, %land.lhs.true ]
  tail call void @ERR_new() #9
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef %.sink78, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.ossl_ec_key_new_method_int, i64 0, i64 0)) #9
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 16, i32 noundef %.sink, i8* noundef null) #9
  br label %err

err:                                              ; preds = %err.sink.split, %if.end36
  tail call void @EC_KEY_free(%struct.ec_key_st* noundef nonnull %0) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end40, %land.lhs.true, %err, %if.then
  %retval.0 = phi %struct.ec_key_st* [ null, %if.then ], [ null, %err ], [ %0, %land.lhs.true ], [ %0, %if.end40 ]
  ret %struct.ec_key_st* %retval.0
}

declare i8* @CRYPTO_zalloc(i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #5

declare void @ERR_new() local_unnamed_addr #5

declare void @ERR_set_debug(i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #5

declare void @ERR_set_error(i32 noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #5

declare i8* @CRYPTO_strdup(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #5

declare i8* @CRYPTO_THREAD_lock_new() local_unnamed_addr #5

declare i32 @ENGINE_init(%struct.engine_st* noundef) local_unnamed_addr #5

declare %struct.engine_st* @ENGINE_get_default_EC() local_unnamed_addr #5

declare %struct.ec_key_method_st* @ENGINE_get_EC(%struct.engine_st* noundef) local_unnamed_addr #5

declare i32 @CRYPTO_new_ex_data(i32 noundef, i8* noundef, %struct.crypto_ex_data_st* noundef) local_unnamed_addr #5

declare void @EC_KEY_free(%struct.ec_key_st* noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind uwtable
define %struct.ec_key_st* @EC_KEY_new_method(%struct.engine_st* noundef %engine) local_unnamed_addr #3 {
entry:
  %call = tail call %struct.ec_key_st* @ossl_ec_key_new_method_int(%struct.ossl_lib_ctx_st* noundef null, i8* noundef null, %struct.engine_st* noundef %engine) #10
  ret %struct.ec_key_st* %call
}

; Function Attrs: noinline nounwind uwtable
define i32 @ECDH_compute_key(i8* noundef %out, i64 noundef %outlen, %struct.ec_point_st* noundef %pub_key, %struct.ec_key_st* noundef %eckey, i8* (i8*, i64, i8*, i64*)* noundef readonly %KDF) local_unnamed_addr #3 {
entry:
  %outlen.addr = alloca i64, align 8
  %sec = alloca i8*, align 8
  %seclen = alloca i64, align 8
  store i64 %outlen, i64* %outlen.addr, align 8, !tbaa !23
  %0 = bitcast i8** %sec to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #11
  store i8* null, i8** %sec, align 8, !tbaa !4
  %1 = bitcast i64* %seclen to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #11
  %meth = getelementptr inbounds %struct.ec_key_st, %struct.ec_key_st* %eckey, i64 0, i32 0
  %2 = load %struct.ec_key_method_st*, %struct.ec_key_method_st** %meth, align 8, !tbaa !8
  %compute_key = getelementptr inbounds %struct.ec_key_method_st, %struct.ec_key_method_st* %2, i64 0, i32 9
  %3 = load i32 (i8**, i64*, %struct.ec_point_st*, %struct.ec_key_st*)*, i32 (i8**, i64*, %struct.ec_point_st*, %struct.ec_key_st*)** %compute_key, align 8, !tbaa !24
  %cmp = icmp eq i32 (i8**, i64*, %struct.ec_point_st*, %struct.ec_key_st*)* %3, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #9
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 162, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.ECDH_compute_key, i64 0, i64 0)) #9
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 16, i32 noundef 152, i8* noundef null) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %cmp1 = icmp ugt i64 %outlen, 2147483647
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  tail call void @ERR_new() #9
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 166, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.ECDH_compute_key, i64 0, i64 0)) #9
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 16, i32 noundef 161, i8* noundef null) #9
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %call = call i32 %3(i8** noundef nonnull %sec, i64* noundef nonnull %seclen, %struct.ec_point_st* noundef %pub_key, %struct.ec_key_st* noundef nonnull %eckey) #9
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %cleanup, label %if.end7

if.end7:                                          ; preds = %if.end3
  %cmp8.not = icmp eq i8* (i8*, i64, i8*, i64*)* %KDF, null
  br i1 %cmp8.not, label %if.else, label %if.then9

if.then9:                                         ; preds = %if.end7
  %4 = load i8*, i8** %sec, align 8, !tbaa !4
  %5 = load i64, i64* %seclen, align 8, !tbaa !23
  %call10 = call i8* %KDF(i8* noundef %4, i64 noundef %5, i8* noundef %out, i64* noundef nonnull %outlen.addr) #9
  br label %if.end15

if.else:                                          ; preds = %if.end7
  %6 = load i64, i64* %seclen, align 8, !tbaa !23
  %cmp11 = icmp ult i64 %6, %outlen
  br i1 %cmp11, label %if.then12, label %if.end13

if.then12:                                        ; preds = %if.else
  store i64 %6, i64* %outlen.addr, align 8, !tbaa !23
  br label %if.end13

if.end13:                                         ; preds = %if.then12, %if.else
  %7 = phi i64 [ %6, %if.then12 ], [ %outlen, %if.else ]
  %8 = load i8*, i8** %sec, align 8, !tbaa !4
  %call14 = call i8* @memcpy(i8* noundef %out, i8* noundef %8, i64 noundef %7) #9
  br label %if.end15

if.end15:                                         ; preds = %if.end13, %if.then9
  %9 = load i8*, i8** %sec, align 8, !tbaa !4
  %10 = load i64, i64* %seclen, align 8, !tbaa !23
  call void @CRYPTO_clear_free(i8* noundef %9, i64 noundef %10, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 178) #9
  %11 = load i64, i64* %outlen.addr, align 8, !tbaa !23
  %conv = trunc i64 %11 to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.end15, %if.then2, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 0, %if.then2 ], [ %conv, %if.end15 ], [ 0, %if.end3 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #11
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind
declare i8* @memcpy(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #6

declare void @CRYPTO_clear_free(i8* noundef, i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind uwtable
define %struct.ec_key_method_st* @EC_KEY_METHOD_new(%struct.ec_key_method_st* noundef readonly %meth) local_unnamed_addr #3 {
entry:
  %call = tail call i8* @CRYPTO_zalloc(i64 noundef 120, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 184) #9
  %0 = bitcast i8* %call to %struct.ec_key_method_st*
  %cmp = icmp eq i8* %call, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %cmp1.not = icmp eq %struct.ec_key_method_st* %meth, null
  br i1 %cmp1.not, label %if.end3, label %if.then2

if.then2:                                         ; preds = %if.end
  %1 = bitcast %struct.ec_key_method_st* %meth to i8*
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(120) %call, i8* noundef nonnull align 8 dereferenceable(120) %1, i64 120, i1 false), !tbaa.struct !25
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.end
  %flags = getelementptr inbounds i8, i8* %call, i64 8
  %2 = bitcast i8* %flags to i32*
  %3 = load i32, i32* %2, align 8, !tbaa !27
  %or = or i32 %3, 1
  store i32 %or, i32* %2, align 8, !tbaa !27
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end3
  %retval.0 = phi %struct.ec_key_method_st* [ %0, %if.end3 ], [ null, %entry ]
  ret %struct.ec_key_method_st* %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #7

; Function Attrs: noinline nounwind uwtable
define void @EC_KEY_METHOD_free(%struct.ec_key_method_st* noundef %meth) local_unnamed_addr #3 {
entry:
  %flags = getelementptr inbounds %struct.ec_key_method_st, %struct.ec_key_method_st* %meth, i64 0, i32 1
  %0 = load i32, i32* %flags, align 8, !tbaa !27
  %and = and i32 %0, 1
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %1 = bitcast %struct.ec_key_method_st* %meth to i8*
  tail call void @CRYPTO_free(i8* noundef %1, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 197) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare void @CRYPTO_free(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define void @EC_KEY_METHOD_set_init(%struct.ec_key_method_st* nocapture noundef writeonly %meth, i32 (%struct.ec_key_st*)* noundef %init, void (%struct.ec_key_st*)* noundef %finish, i32 (%struct.ec_key_st*, %struct.ec_key_st*)* noundef %copy, i32 (%struct.ec_key_st*, %struct.ec_group_st*)* noundef %set_group, i32 (%struct.ec_key_st*, %struct.bignum_st*)* noundef %set_private, i32 (%struct.ec_key_st*, %struct.ec_point_st*)* noundef %set_public) local_unnamed_addr #2 {
entry:
  %init1 = getelementptr inbounds %struct.ec_key_method_st, %struct.ec_key_method_st* %meth, i64 0, i32 2
  store i32 (%struct.ec_key_st*)* %init, i32 (%struct.ec_key_st*)** %init1, align 8, !tbaa !16
  %finish2 = getelementptr inbounds %struct.ec_key_method_st, %struct.ec_key_method_st* %meth, i64 0, i32 3
  store void (%struct.ec_key_st*)* %finish, void (%struct.ec_key_st*)** %finish2, align 8, !tbaa !13
  %copy3 = getelementptr inbounds %struct.ec_key_method_st, %struct.ec_key_method_st* %meth, i64 0, i32 4
  store i32 (%struct.ec_key_st*, %struct.ec_key_st*)* %copy, i32 (%struct.ec_key_st*, %struct.ec_key_st*)** %copy3, align 8, !tbaa !28
  %set_group4 = getelementptr inbounds %struct.ec_key_method_st, %struct.ec_key_method_st* %meth, i64 0, i32 5
  store i32 (%struct.ec_key_st*, %struct.ec_group_st*)* %set_group, i32 (%struct.ec_key_st*, %struct.ec_group_st*)** %set_group4, align 8, !tbaa !29
  %set_private5 = getelementptr inbounds %struct.ec_key_method_st, %struct.ec_key_method_st* %meth, i64 0, i32 6
  store i32 (%struct.ec_key_st*, %struct.bignum_st*)* %set_private, i32 (%struct.ec_key_st*, %struct.bignum_st*)** %set_private5, align 8, !tbaa !30
  %set_public6 = getelementptr inbounds %struct.ec_key_method_st, %struct.ec_key_method_st* %meth, i64 0, i32 7
  store i32 (%struct.ec_key_st*, %struct.ec_point_st*)* %set_public, i32 (%struct.ec_key_st*, %struct.ec_point_st*)** %set_public6, align 8, !tbaa !31
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define void @EC_KEY_METHOD_set_keygen(%struct.ec_key_method_st* nocapture noundef writeonly %meth, i32 (%struct.ec_key_st*)* noundef %keygen) local_unnamed_addr #2 {
entry:
  %keygen1 = getelementptr inbounds %struct.ec_key_method_st, %struct.ec_key_method_st* %meth, i64 0, i32 8
  store i32 (%struct.ec_key_st*)* %keygen, i32 (%struct.ec_key_st*)** %keygen1, align 8, !tbaa !32
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define void @EC_KEY_METHOD_set_compute_key(%struct.ec_key_method_st* nocapture noundef writeonly %meth, i32 (i8**, i64*, %struct.ec_point_st*, %struct.ec_key_st*)* noundef %ckey) local_unnamed_addr #2 {
entry:
  %compute_key = getelementptr inbounds %struct.ec_key_method_st, %struct.ec_key_method_st* %meth, i64 0, i32 9
  store i32 (i8**, i64*, %struct.ec_point_st*, %struct.ec_key_st*)* %ckey, i32 (i8**, i64*, %struct.ec_point_st*, %struct.ec_key_st*)** %compute_key, align 8, !tbaa !24
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define void @EC_KEY_METHOD_set_sign(%struct.ec_key_method_st* nocapture noundef writeonly %meth, i32 (i32, i8*, i32, i8*, i32*, %struct.bignum_st*, %struct.bignum_st*, %struct.ec_key_st*)* noundef %sign, i32 (%struct.ec_key_st*, %struct.bignum_ctx*, %struct.bignum_st**, %struct.bignum_st**)* noundef %sign_setup, %struct.ECDSA_SIG_st* (i8*, i32, %struct.bignum_st*, %struct.bignum_st*, %struct.ec_key_st*)* noundef %sign_sig) local_unnamed_addr #2 {
entry:
  %sign1 = getelementptr inbounds %struct.ec_key_method_st, %struct.ec_key_method_st* %meth, i64 0, i32 10
  store i32 (i32, i8*, i32, i8*, i32*, %struct.bignum_st*, %struct.bignum_st*, %struct.ec_key_st*)* %sign, i32 (i32, i8*, i32, i8*, i32*, %struct.bignum_st*, %struct.bignum_st*, %struct.ec_key_st*)** %sign1, align 8, !tbaa !33
  %sign_setup2 = getelementptr inbounds %struct.ec_key_method_st, %struct.ec_key_method_st* %meth, i64 0, i32 11
  store i32 (%struct.ec_key_st*, %struct.bignum_ctx*, %struct.bignum_st**, %struct.bignum_st**)* %sign_setup, i32 (%struct.ec_key_st*, %struct.bignum_ctx*, %struct.bignum_st**, %struct.bignum_st**)** %sign_setup2, align 8, !tbaa !34
  %sign_sig3 = getelementptr inbounds %struct.ec_key_method_st, %struct.ec_key_method_st* %meth, i64 0, i32 12
  store %struct.ECDSA_SIG_st* (i8*, i32, %struct.bignum_st*, %struct.bignum_st*, %struct.ec_key_st*)* %sign_sig, %struct.ECDSA_SIG_st* (i8*, i32, %struct.bignum_st*, %struct.bignum_st*, %struct.ec_key_st*)** %sign_sig3, align 8, !tbaa !35
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define void @EC_KEY_METHOD_set_verify(%struct.ec_key_method_st* nocapture noundef writeonly %meth, i32 (i32, i8*, i32, i8*, i32, %struct.ec_key_st*)* noundef %verify, i32 (i8*, i32, %struct.ECDSA_SIG_st*, %struct.ec_key_st*)* noundef %verify_sig) local_unnamed_addr #2 {
entry:
  %verify1 = getelementptr inbounds %struct.ec_key_method_st, %struct.ec_key_method_st* %meth, i64 0, i32 13
  store i32 (i32, i8*, i32, i8*, i32, %struct.ec_key_st*)* %verify, i32 (i32, i8*, i32, i8*, i32, %struct.ec_key_st*)** %verify1, align 8, !tbaa !36
  %verify_sig2 = getelementptr inbounds %struct.ec_key_method_st, %struct.ec_key_method_st* %meth, i64 0, i32 14
  store i32 (i8*, i32, %struct.ECDSA_SIG_st*, %struct.ec_key_st*)* %verify_sig, i32 (i8*, i32, %struct.ECDSA_SIG_st*, %struct.ec_key_st*)** %verify_sig2, align 8, !tbaa !37
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define void @EC_KEY_METHOD_get_init(%struct.ec_key_method_st* nocapture noundef readonly %meth, i32 (%struct.ec_key_st*)** noundef writeonly %pinit, void (%struct.ec_key_st*)** noundef writeonly %pfinish, i32 (%struct.ec_key_st*, %struct.ec_key_st*)** noundef writeonly %pcopy, i32 (%struct.ec_key_st*, %struct.ec_group_st*)** noundef writeonly %pset_group, i32 (%struct.ec_key_st*, %struct.bignum_st*)** noundef writeonly %pset_private, i32 (%struct.ec_key_st*, %struct.ec_point_st*)** noundef writeonly %pset_public) local_unnamed_addr #8 {
entry:
  %cmp.not = icmp eq i32 (%struct.ec_key_st*)** %pinit, null
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %init = getelementptr inbounds %struct.ec_key_method_st, %struct.ec_key_method_st* %meth, i64 0, i32 2
  %0 = load i32 (%struct.ec_key_st*)*, i32 (%struct.ec_key_st*)** %init, align 8, !tbaa !16
  store i32 (%struct.ec_key_st*)* %0, i32 (%struct.ec_key_st*)** %pinit, align 8, !tbaa !4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %cmp1.not = icmp eq void (%struct.ec_key_st*)** %pfinish, null
  br i1 %cmp1.not, label %if.end3, label %if.then2

if.then2:                                         ; preds = %if.end
  %finish = getelementptr inbounds %struct.ec_key_method_st, %struct.ec_key_method_st* %meth, i64 0, i32 3
  %1 = load void (%struct.ec_key_st*)*, void (%struct.ec_key_st*)** %finish, align 8, !tbaa !13
  store void (%struct.ec_key_st*)* %1, void (%struct.ec_key_st*)** %pfinish, align 8, !tbaa !4
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.end
  %cmp4.not = icmp eq i32 (%struct.ec_key_st*, %struct.ec_key_st*)** %pcopy, null
  br i1 %cmp4.not, label %if.end6, label %if.then5

if.then5:                                         ; preds = %if.end3
  %copy = getelementptr inbounds %struct.ec_key_method_st, %struct.ec_key_method_st* %meth, i64 0, i32 4
  %2 = load i32 (%struct.ec_key_st*, %struct.ec_key_st*)*, i32 (%struct.ec_key_st*, %struct.ec_key_st*)** %copy, align 8, !tbaa !28
  store i32 (%struct.ec_key_st*, %struct.ec_key_st*)* %2, i32 (%struct.ec_key_st*, %struct.ec_key_st*)** %pcopy, align 8, !tbaa !4
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %if.end3
  %cmp7.not = icmp eq i32 (%struct.ec_key_st*, %struct.ec_group_st*)** %pset_group, null
  br i1 %cmp7.not, label %if.end9, label %if.then8

if.then8:                                         ; preds = %if.end6
  %set_group = getelementptr inbounds %struct.ec_key_method_st, %struct.ec_key_method_st* %meth, i64 0, i32 5
  %3 = load i32 (%struct.ec_key_st*, %struct.ec_group_st*)*, i32 (%struct.ec_key_st*, %struct.ec_group_st*)** %set_group, align 8, !tbaa !29
  store i32 (%struct.ec_key_st*, %struct.ec_group_st*)* %3, i32 (%struct.ec_key_st*, %struct.ec_group_st*)** %pset_group, align 8, !tbaa !4
  br label %if.end9

if.end9:                                          ; preds = %if.then8, %if.end6
  %cmp10.not = icmp eq i32 (%struct.ec_key_st*, %struct.bignum_st*)** %pset_private, null
  br i1 %cmp10.not, label %if.end12, label %if.then11

if.then11:                                        ; preds = %if.end9
  %set_private = getelementptr inbounds %struct.ec_key_method_st, %struct.ec_key_method_st* %meth, i64 0, i32 6
  %4 = load i32 (%struct.ec_key_st*, %struct.bignum_st*)*, i32 (%struct.ec_key_st*, %struct.bignum_st*)** %set_private, align 8, !tbaa !30
  store i32 (%struct.ec_key_st*, %struct.bignum_st*)* %4, i32 (%struct.ec_key_st*, %struct.bignum_st*)** %pset_private, align 8, !tbaa !4
  br label %if.end12

if.end12:                                         ; preds = %if.then11, %if.end9
  %cmp13.not = icmp eq i32 (%struct.ec_key_st*, %struct.ec_point_st*)** %pset_public, null
  br i1 %cmp13.not, label %if.end15, label %if.then14

if.then14:                                        ; preds = %if.end12
  %set_public = getelementptr inbounds %struct.ec_key_method_st, %struct.ec_key_method_st* %meth, i64 0, i32 7
  %5 = load i32 (%struct.ec_key_st*, %struct.ec_point_st*)*, i32 (%struct.ec_key_st*, %struct.ec_point_st*)** %set_public, align 8, !tbaa !31
  store i32 (%struct.ec_key_st*, %struct.ec_point_st*)* %5, i32 (%struct.ec_key_st*, %struct.ec_point_st*)** %pset_public, align 8, !tbaa !4
  br label %if.end15

if.end15:                                         ; preds = %if.then14, %if.end12
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define void @EC_KEY_METHOD_get_keygen(%struct.ec_key_method_st* nocapture noundef readonly %meth, i32 (%struct.ec_key_st*)** noundef writeonly %pkeygen) local_unnamed_addr #8 {
entry:
  %cmp.not = icmp eq i32 (%struct.ec_key_st*)** %pkeygen, null
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %keygen = getelementptr inbounds %struct.ec_key_method_st, %struct.ec_key_method_st* %meth, i64 0, i32 8
  %0 = load i32 (%struct.ec_key_st*)*, i32 (%struct.ec_key_st*)** %keygen, align 8, !tbaa !32
  store i32 (%struct.ec_key_st*)* %0, i32 (%struct.ec_key_st*)** %pkeygen, align 8, !tbaa !4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define void @EC_KEY_METHOD_get_compute_key(%struct.ec_key_method_st* nocapture noundef readonly %meth, i32 (i8**, i64*, %struct.ec_point_st*, %struct.ec_key_st*)** noundef writeonly %pck) local_unnamed_addr #8 {
entry:
  %cmp.not = icmp eq i32 (i8**, i64*, %struct.ec_point_st*, %struct.ec_key_st*)** %pck, null
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %compute_key = getelementptr inbounds %struct.ec_key_method_st, %struct.ec_key_method_st* %meth, i64 0, i32 9
  %0 = load i32 (i8**, i64*, %struct.ec_point_st*, %struct.ec_key_st*)*, i32 (i8**, i64*, %struct.ec_point_st*, %struct.ec_key_st*)** %compute_key, align 8, !tbaa !24
  store i32 (i8**, i64*, %struct.ec_point_st*, %struct.ec_key_st*)* %0, i32 (i8**, i64*, %struct.ec_point_st*, %struct.ec_key_st*)** %pck, align 8, !tbaa !4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define void @EC_KEY_METHOD_get_sign(%struct.ec_key_method_st* nocapture noundef readonly %meth, i32 (i32, i8*, i32, i8*, i32*, %struct.bignum_st*, %struct.bignum_st*, %struct.ec_key_st*)** noundef writeonly %psign, i32 (%struct.ec_key_st*, %struct.bignum_ctx*, %struct.bignum_st**, %struct.bignum_st**)** noundef writeonly %psign_setup, %struct.ECDSA_SIG_st* (i8*, i32, %struct.bignum_st*, %struct.bignum_st*, %struct.ec_key_st*)** noundef writeonly %psign_sig) local_unnamed_addr #8 {
entry:
  %cmp.not = icmp eq i32 (i32, i8*, i32, i8*, i32*, %struct.bignum_st*, %struct.bignum_st*, %struct.ec_key_st*)** %psign, null
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %sign = getelementptr inbounds %struct.ec_key_method_st, %struct.ec_key_method_st* %meth, i64 0, i32 10
  %0 = load i32 (i32, i8*, i32, i8*, i32*, %struct.bignum_st*, %struct.bignum_st*, %struct.ec_key_st*)*, i32 (i32, i8*, i32, i8*, i32*, %struct.bignum_st*, %struct.bignum_st*, %struct.ec_key_st*)** %sign, align 8, !tbaa !33
  store i32 (i32, i8*, i32, i8*, i32*, %struct.bignum_st*, %struct.bignum_st*, %struct.ec_key_st*)* %0, i32 (i32, i8*, i32, i8*, i32*, %struct.bignum_st*, %struct.bignum_st*, %struct.ec_key_st*)** %psign, align 8, !tbaa !4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %cmp1.not = icmp eq i32 (%struct.ec_key_st*, %struct.bignum_ctx*, %struct.bignum_st**, %struct.bignum_st**)** %psign_setup, null
  br i1 %cmp1.not, label %if.end3, label %if.then2

if.then2:                                         ; preds = %if.end
  %sign_setup = getelementptr inbounds %struct.ec_key_method_st, %struct.ec_key_method_st* %meth, i64 0, i32 11
  %1 = load i32 (%struct.ec_key_st*, %struct.bignum_ctx*, %struct.bignum_st**, %struct.bignum_st**)*, i32 (%struct.ec_key_st*, %struct.bignum_ctx*, %struct.bignum_st**, %struct.bignum_st**)** %sign_setup, align 8, !tbaa !34
  store i32 (%struct.ec_key_st*, %struct.bignum_ctx*, %struct.bignum_st**, %struct.bignum_st**)* %1, i32 (%struct.ec_key_st*, %struct.bignum_ctx*, %struct.bignum_st**, %struct.bignum_st**)** %psign_setup, align 8, !tbaa !4
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.end
  %cmp4.not = icmp eq %struct.ECDSA_SIG_st* (i8*, i32, %struct.bignum_st*, %struct.bignum_st*, %struct.ec_key_st*)** %psign_sig, null
  br i1 %cmp4.not, label %if.end6, label %if.then5

if.then5:                                         ; preds = %if.end3
  %sign_sig = getelementptr inbounds %struct.ec_key_method_st, %struct.ec_key_method_st* %meth, i64 0, i32 12
  %2 = load %struct.ECDSA_SIG_st* (i8*, i32, %struct.bignum_st*, %struct.bignum_st*, %struct.ec_key_st*)*, %struct.ECDSA_SIG_st* (i8*, i32, %struct.bignum_st*, %struct.bignum_st*, %struct.ec_key_st*)** %sign_sig, align 8, !tbaa !35
  store %struct.ECDSA_SIG_st* (i8*, i32, %struct.bignum_st*, %struct.bignum_st*, %struct.ec_key_st*)* %2, %struct.ECDSA_SIG_st* (i8*, i32, %struct.bignum_st*, %struct.bignum_st*, %struct.ec_key_st*)** %psign_sig, align 8, !tbaa !4
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %if.end3
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define void @EC_KEY_METHOD_get_verify(%struct.ec_key_method_st* nocapture noundef readonly %meth, i32 (i32, i8*, i32, i8*, i32, %struct.ec_key_st*)** noundef writeonly %pverify, i32 (i8*, i32, %struct.ECDSA_SIG_st*, %struct.ec_key_st*)** noundef writeonly %pverify_sig) local_unnamed_addr #8 {
entry:
  %cmp.not = icmp eq i32 (i32, i8*, i32, i8*, i32, %struct.ec_key_st*)** %pverify, null
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %verify = getelementptr inbounds %struct.ec_key_method_st, %struct.ec_key_method_st* %meth, i64 0, i32 13
  %0 = load i32 (i32, i8*, i32, i8*, i32, %struct.ec_key_st*)*, i32 (i32, i8*, i32, i8*, i32, %struct.ec_key_st*)** %verify, align 8, !tbaa !36
  store i32 (i32, i8*, i32, i8*, i32, %struct.ec_key_st*)* %0, i32 (i32, i8*, i32, i8*, i32, %struct.ec_key_st*)** %pverify, align 8, !tbaa !4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %cmp1.not = icmp eq i32 (i8*, i32, %struct.ECDSA_SIG_st*, %struct.ec_key_st*)** %pverify_sig, null
  br i1 %cmp1.not, label %if.end3, label %if.then2

if.then2:                                         ; preds = %if.end
  %verify_sig = getelementptr inbounds %struct.ec_key_method_st, %struct.ec_key_method_st* %meth, i64 0, i32 14
  %1 = load i32 (i8*, i32, %struct.ECDSA_SIG_st*, %struct.ec_key_st*)*, i32 (i8*, i32, %struct.ECDSA_SIG_st*, %struct.ec_key_st*)** %verify_sig, align 8, !tbaa !37
  store i32 (i8*, i32, %struct.ECDSA_SIG_st*, %struct.ec_key_st*)* %1, i32 (i8*, i32, %struct.ECDSA_SIG_st*, %struct.ec_key_st*)** %pverify_sig, align 8, !tbaa !4
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.end
  ret void
}

declare i32 @ossl_ec_key_gen(%struct.ec_key_st* noundef) #5

declare i32 @ossl_ecdh_compute_key(i8** noundef, i64* noundef, %struct.ec_point_st* noundef, %struct.ec_key_st* noundef) #5

declare i32 @ossl_ecdsa_sign(i32 noundef, i8* noundef, i32 noundef, i8* noundef, i32* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.ec_key_st* noundef) #5

declare i32 @ossl_ecdsa_sign_setup(%struct.ec_key_st* noundef, %struct.bignum_ctx* noundef, %struct.bignum_st** noundef, %struct.bignum_st** noundef) #5

declare %struct.ECDSA_SIG_st* @ossl_ecdsa_sign_sig(i8* noundef, i32 noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.ec_key_st* noundef) #5

declare i32 @ossl_ecdsa_verify(i32 noundef, i8* noundef, i32 noundef, i8* noundef, i32 noundef, %struct.ec_key_st* noundef) #5

declare i32 @ossl_ecdsa_verify_sig(i8* noundef, i32 noundef, %struct.ECDSA_SIG_st* noundef, %struct.ec_key_st* noundef) #5

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #5 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nobuiltin nounwind "no-builtins" }
attributes #10 = { nobuiltin "no-builtins" }
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
!8 = !{!9, !5, i64 0}
!9 = !{!"ec_key_st", !5, i64 0, !5, i64 8, !10, i64 16, !5, i64 24, !5, i64 32, !5, i64 40, !10, i64 48, !6, i64 52, !6, i64 56, !10, i64 60, !11, i64 64, !5, i64 80, !5, i64 88, !5, i64 96, !12, i64 104}
!10 = !{!"int", !6, i64 0}
!11 = !{!"crypto_ex_data_st", !5, i64 0, !5, i64 8}
!12 = !{!"long", !6, i64 0}
!13 = !{!14, !5, i64 24}
!14 = !{!"ec_key_method_st", !5, i64 0, !10, i64 8, !5, i64 16, !5, i64 24, !5, i64 32, !5, i64 40, !5, i64 48, !5, i64 56, !5, i64 64, !5, i64 72, !5, i64 80, !5, i64 88, !5, i64 96, !5, i64 104, !5, i64 112}
!15 = !{!9, !5, i64 8}
!16 = !{!14, !5, i64 16}
!17 = !{!9, !5, i64 88}
!18 = !{!9, !5, i64 96}
!19 = !{!9, !6, i64 56}
!20 = !{!9, !5, i64 80}
!21 = !{!9, !10, i64 16}
!22 = !{!9, !6, i64 52}
!23 = !{!12, !12, i64 0}
!24 = !{!14, !5, i64 72}
!25 = !{i64 0, i64 8, !4, i64 8, i64 4, !26, i64 16, i64 8, !4, i64 24, i64 8, !4, i64 32, i64 8, !4, i64 40, i64 8, !4, i64 48, i64 8, !4, i64 56, i64 8, !4, i64 64, i64 8, !4, i64 72, i64 8, !4, i64 80, i64 8, !4, i64 88, i64 8, !4, i64 96, i64 8, !4, i64 104, i64 8, !4, i64 112, i64 8, !4}
!26 = !{!10, !10, i64 0}
!27 = !{!14, !10, i64 8}
!28 = !{!14, !5, i64 32}
!29 = !{!14, !5, i64 40}
!30 = !{!14, !5, i64 48}
!31 = !{!14, !5, i64 56}
!32 = !{!14, !5, i64 64}
!33 = !{!14, !5, i64 80}
!34 = !{!14, !5, i64 88}
!35 = !{!14, !5, i64 96}
!36 = !{!14, !5, i64 104}
!37 = !{!14, !5, i64 112}
