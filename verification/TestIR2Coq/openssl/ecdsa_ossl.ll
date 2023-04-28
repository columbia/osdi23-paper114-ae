; ModuleID = 'crypto/ec/ecdsa_ossl.c'
source_filename = "crypto/ec/ecdsa_ossl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ec_key_st = type { %struct.ec_key_method_st*, %struct.engine_st*, i32, %struct.ec_group_st*, %struct.ec_point_st*, %struct.bignum_st*, i32, i32, i32, i32, %struct.crypto_ex_data_st, i8*, %struct.ossl_lib_ctx_st*, i8*, i64 }
%struct.ec_key_method_st = type { i8*, i32, i32 (%struct.ec_key_st*)*, void (%struct.ec_key_st*)*, i32 (%struct.ec_key_st*, %struct.ec_key_st*)*, i32 (%struct.ec_key_st*, %struct.ec_group_st*)*, i32 (%struct.ec_key_st*, %struct.bignum_st*)*, i32 (%struct.ec_key_st*, %struct.ec_point_st*)*, i32 (%struct.ec_key_st*)*, i32 (i8**, i64*, %struct.ec_point_st*, %struct.ec_key_st*)*, i32 (i32, i8*, i32, i8*, i32*, %struct.bignum_st*, %struct.bignum_st*, %struct.ec_key_st*)*, {}*, %struct.ECDSA_SIG_st* (i8*, i32, %struct.bignum_st*, %struct.bignum_st*, %struct.ec_key_st*)*, i32 (i32, i8*, i32, i8*, i32, %struct.ec_key_st*)*, i32 (i8*, i32, %struct.ECDSA_SIG_st*, %struct.ec_key_st*)* }
%struct.ECDSA_SIG_st = type { %struct.bignum_st*, %struct.bignum_st* }
%struct.engine_st = type opaque
%struct.ec_group_st = type { %struct.ec_method_st*, %struct.ec_point_st*, %struct.bignum_st*, %struct.bignum_st*, i32, i32, i32, i32, i8*, i64, %struct.bignum_st*, [6 x i32], %struct.bignum_st*, %struct.bignum_st*, i32, i8*, i8*, i32 (%struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)*, %struct.bn_mont_ctx_st*, i32, %union.anon, %struct.ossl_lib_ctx_st*, i8* }
%struct.ec_method_st = type { i32, i32, i32 (%struct.ec_group_st*)*, void (%struct.ec_group_st*)*, void (%struct.ec_group_st*)*, i32 (%struct.ec_group_st*, %struct.ec_group_st*)*, i32 (%struct.ec_group_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*)*, i32 (%struct.ec_group_st*)*, i32 (%struct.ec_group_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_point_st*)*, void (%struct.ec_point_st*)*, void (%struct.ec_point_st*)*, i32 (%struct.ec_point_st*, %struct.ec_point_st*)*, i32 (%struct.ec_group_st*, %struct.ec_point_st*)*, i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.bignum_st*, i32, %struct.bignum_ctx*)*, i64 (%struct.ec_group_st*, %struct.ec_point_st*, i32, i8*, i64, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.ec_point_st*, i8*, i64, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.ec_point_st*, %struct.ec_point_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.ec_point_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.ec_point_st*)*, i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.ec_point_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, i64, %struct.ec_point_st**, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.bignum_st*, i64, %struct.ec_point_st**, %struct.bignum_st**, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*)*, i32 (%struct.ec_group_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.bignum_st*, %struct.bignum_ctx*)*, i64 (%struct.ec_key_st*, i8*, i64)*, i32 (%struct.ec_key_st*, i8*, i64)*, i32 (%struct.ec_key_st*, %struct.bignum_st*)*, i32 (%struct.ec_key_st*)*, i32 (%struct.ec_key_st*)*, i32 (%struct.ec_key_st*)*, i32 (%struct.ec_key_st*, %struct.ec_key_st*)*, void (%struct.ec_key_st*)*, i32 (i8**, i64*, %struct.ec_point_st*, %struct.ec_key_st*)*, {}*, %struct.ECDSA_SIG_st* (i8*, i32, %struct.bignum_st*, %struct.bignum_st*, %struct.ec_key_st*)*, i32 (i8*, i32, %struct.ECDSA_SIG_st*, %struct.ec_key_st*)*, i32 (%struct.ec_group_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.ec_point_st*, %struct.ec_point_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.ec_point_st*, %struct.ec_point_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.ec_point_st*, %struct.ec_point_st*, %struct.bignum_ctx*)* }
%struct.bn_mont_ctx_st = type opaque
%union.anon = type { %struct.nistp224_pre_comp_st* }
%struct.nistp224_pre_comp_st = type opaque
%struct.ec_point_st = type { %struct.ec_method_st*, i32, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, i32 }
%struct.bignum_st = type opaque
%struct.crypto_ex_data_st = type { %struct.ossl_lib_ctx_st*, %struct.stack_st_void* }
%struct.stack_st_void = type opaque
%struct.ossl_lib_ctx_st = type opaque
%struct.bignum_ctx = type opaque

@.str = private unnamed_addr constant [23 x i8] c"crypto/ec/ecdsa_ossl.c\00", align 1
@__func__.ossl_ecdsa_sign_setup = private unnamed_addr constant [22 x i8] c"ossl_ecdsa_sign_setup\00", align 1
@__func__.ossl_ecdsa_sign_sig = private unnamed_addr constant [20 x i8] c"ossl_ecdsa_sign_sig\00", align 1
@__func__.ossl_ecdsa_verify_sig = private unnamed_addr constant [22 x i8] c"ossl_ecdsa_verify_sig\00", align 1
@__func__.ossl_ecdsa_simple_sign_sig = private unnamed_addr constant [27 x i8] c"ossl_ecdsa_simple_sign_sig\00", align 1
@__func__.ossl_ecdsa_simple_verify_sig = private unnamed_addr constant [29 x i8] c"ossl_ecdsa_simple_verify_sig\00", align 1
@__func__.ecdsa_sign_setup = private unnamed_addr constant [17 x i8] c"ecdsa_sign_setup\00", align 1

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_ecdsa_sign_setup(%struct.ec_key_st* noundef %eckey, %struct.bignum_ctx* noundef %ctx_in, %struct.bignum_st** noundef %kinvp, %struct.bignum_st** noundef %rp) local_unnamed_addr #0 {
entry:
  %group = getelementptr inbounds %struct.ec_key_st, %struct.ec_key_st* %eckey, i64 0, i32 3
  %0 = load %struct.ec_group_st*, %struct.ec_group_st** %group, align 8, !tbaa !4
  %meth = getelementptr inbounds %struct.ec_group_st, %struct.ec_group_st* %0, i64 0, i32 0
  %1 = load %struct.ec_method_st*, %struct.ec_method_st** %meth, align 8, !tbaa !12
  %ecdsa_sign_setup = getelementptr inbounds %struct.ec_method_st, %struct.ec_method_st* %1, i64 0, i32 48
  %ecdsa_sign_setup1 = bitcast {}** %ecdsa_sign_setup to i32 (%struct.ec_key_st*, %struct.bignum_ctx*, %struct.bignum_st**, %struct.bignum_st**)**
  %2 = load i32 (%struct.ec_key_st*, %struct.bignum_ctx*, %struct.bignum_st**, %struct.bignum_st**)*, i32 (%struct.ec_key_st*, %struct.bignum_ctx*, %struct.bignum_st**, %struct.bignum_st**)** %ecdsa_sign_setup1, align 8, !tbaa !14
  %cmp = icmp eq i32 (%struct.ec_key_st*, %struct.bignum_ctx*, %struct.bignum_st**, %struct.bignum_st**)* %2, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #4
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 27, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.ossl_ecdsa_sign_setup, i64 0, i64 0)) #4
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 16, i32 noundef 170, i8* noundef null) #4
  br label %return

if.end:                                           ; preds = %entry
  %call = tail call i32 %2(%struct.ec_key_st* noundef nonnull %eckey, %struct.bignum_ctx* noundef %ctx_in, %struct.bignum_st** noundef %kinvp, %struct.bignum_st** noundef %rp) #4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ %call, %if.end ]
  ret i32 %retval.0
}

declare void @ERR_new() local_unnamed_addr #1

declare void @ERR_set_debug(i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #1

declare void @ERR_set_error(i32 noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define %struct.ECDSA_SIG_st* @ossl_ecdsa_sign_sig(i8* noundef %dgst, i32 noundef %dgst_len, %struct.bignum_st* noundef %in_kinv, %struct.bignum_st* noundef %in_r, %struct.ec_key_st* noundef %eckey) local_unnamed_addr #0 {
entry:
  %group = getelementptr inbounds %struct.ec_key_st, %struct.ec_key_st* %eckey, i64 0, i32 3
  %0 = load %struct.ec_group_st*, %struct.ec_group_st** %group, align 8, !tbaa !4
  %meth = getelementptr inbounds %struct.ec_group_st, %struct.ec_group_st* %0, i64 0, i32 0
  %1 = load %struct.ec_method_st*, %struct.ec_method_st** %meth, align 8, !tbaa !12
  %ecdsa_sign_sig = getelementptr inbounds %struct.ec_method_st, %struct.ec_method_st* %1, i64 0, i32 49
  %2 = load %struct.ECDSA_SIG_st* (i8*, i32, %struct.bignum_st*, %struct.bignum_st*, %struct.ec_key_st*)*, %struct.ECDSA_SIG_st* (i8*, i32, %struct.bignum_st*, %struct.bignum_st*, %struct.ec_key_st*)** %ecdsa_sign_sig, align 8, !tbaa !16
  %cmp = icmp eq %struct.ECDSA_SIG_st* (i8*, i32, %struct.bignum_st*, %struct.bignum_st*, %struct.ec_key_st*)* %2, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #4
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 39, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.ossl_ecdsa_sign_sig, i64 0, i64 0)) #4
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 16, i32 noundef 170, i8* noundef null) #4
  br label %return

if.end:                                           ; preds = %entry
  %call = tail call %struct.ECDSA_SIG_st* %2(i8* noundef %dgst, i32 noundef %dgst_len, %struct.bignum_st* noundef %in_kinv, %struct.bignum_st* noundef %in_r, %struct.ec_key_st* noundef nonnull %eckey) #4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi %struct.ECDSA_SIG_st* [ null, %if.then ], [ %call, %if.end ]
  ret %struct.ECDSA_SIG_st* %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_ecdsa_verify_sig(i8* noundef %dgst, i32 noundef %dgst_len, %struct.ECDSA_SIG_st* noundef %sig, %struct.ec_key_st* noundef %eckey) local_unnamed_addr #0 {
entry:
  %group = getelementptr inbounds %struct.ec_key_st, %struct.ec_key_st* %eckey, i64 0, i32 3
  %0 = load %struct.ec_group_st*, %struct.ec_group_st** %group, align 8, !tbaa !4
  %meth = getelementptr inbounds %struct.ec_group_st, %struct.ec_group_st* %0, i64 0, i32 0
  %1 = load %struct.ec_method_st*, %struct.ec_method_st** %meth, align 8, !tbaa !12
  %ecdsa_verify_sig = getelementptr inbounds %struct.ec_method_st, %struct.ec_method_st* %1, i64 0, i32 50
  %2 = load i32 (i8*, i32, %struct.ECDSA_SIG_st*, %struct.ec_key_st*)*, i32 (i8*, i32, %struct.ECDSA_SIG_st*, %struct.ec_key_st*)** %ecdsa_verify_sig, align 8, !tbaa !17
  %cmp = icmp eq i32 (i8*, i32, %struct.ECDSA_SIG_st*, %struct.ec_key_st*)* %2, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #4
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 51, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.ossl_ecdsa_verify_sig, i64 0, i64 0)) #4
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 16, i32 noundef 170, i8* noundef null) #4
  br label %return

if.end:                                           ; preds = %entry
  %call = tail call i32 %2(i8* noundef %dgst, i32 noundef %dgst_len, %struct.ECDSA_SIG_st* noundef %sig, %struct.ec_key_st* noundef nonnull %eckey) #4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ %call, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_ecdsa_sign(i32 noundef %type, i8* noundef %dgst, i32 noundef %dlen, i8* noundef %sig, i32* nocapture noundef writeonly %siglen, %struct.bignum_st* noundef %kinv, %struct.bignum_st* noundef %r, %struct.ec_key_st* noundef %eckey) local_unnamed_addr #0 {
entry:
  %sig.addr = alloca i8*, align 8
  store i8* %sig, i8** %sig.addr, align 8, !tbaa !18
  %call = tail call %struct.ECDSA_SIG_st* @ECDSA_do_sign_ex(i8* noundef %dgst, i32 noundef %dlen, %struct.bignum_st* noundef %kinv, %struct.bignum_st* noundef %r, %struct.ec_key_st* noundef %eckey) #4
  %cmp = icmp eq %struct.ECDSA_SIG_st* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %siglen, align 4, !tbaa !19
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = call i32 @i2d_ECDSA_SIG(%struct.ECDSA_SIG_st* noundef nonnull %call, i8** noundef nonnull %sig.addr) #4
  store i32 %call1, i32* %siglen, align 4, !tbaa !19
  call void @ECDSA_SIG_free(%struct.ECDSA_SIG_st* noundef nonnull %call) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 1, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

declare %struct.ECDSA_SIG_st* @ECDSA_do_sign_ex(i8* noundef, i32 noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.ec_key_st* noundef) local_unnamed_addr #1

declare i32 @i2d_ECDSA_SIG(%struct.ECDSA_SIG_st* noundef, i8** noundef) local_unnamed_addr #1

declare void @ECDSA_SIG_free(%struct.ECDSA_SIG_st* noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_ecdsa_simple_sign_setup(%struct.ec_key_st* noundef %eckey, %struct.bignum_ctx* noundef %ctx_in, %struct.bignum_st** nocapture noundef %kinvp, %struct.bignum_st** nocapture noundef %rp) local_unnamed_addr #0 {
entry:
  %call = tail call fastcc i32 @ecdsa_sign_setup(%struct.ec_key_st* noundef %eckey, %struct.bignum_ctx* noundef %ctx_in, %struct.bignum_st** noundef %kinvp, %struct.bignum_st** noundef %rp, i8* noundef null, i32 noundef 0) #5
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @ecdsa_sign_setup(%struct.ec_key_st* noundef %eckey, %struct.bignum_ctx* noundef %ctx_in, %struct.bignum_st** nocapture noundef %kinvp, %struct.bignum_st** nocapture noundef %rp, i8* noundef %dgst, i32 noundef %dlen) unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.ec_key_st* %eckey, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %call = tail call %struct.ec_group_st* @EC_KEY_get0_group(%struct.ec_key_st* noundef nonnull %eckey) #4
  %cmp1 = icmp eq %struct.ec_group_st* %call, null
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  tail call void @ERR_new() #4
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 88, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.ecdsa_sign_setup, i64 0, i64 0)) #4
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 16, i32 noundef 786690, i8* noundef null) #4
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %call2 = tail call %struct.bignum_st* @EC_KEY_get0_private_key(%struct.ec_key_st* noundef nonnull %eckey) #4
  %cmp3 = icmp eq %struct.bignum_st* %call2, null
  br i1 %cmp3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  tail call void @ERR_new() #4
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 92, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.ecdsa_sign_setup, i64 0, i64 0)) #4
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 16, i32 noundef 125, i8* noundef null) #4
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %call6 = tail call i32 @EC_KEY_can_sign(%struct.ec_key_st* noundef nonnull %eckey) #4
  %tobool.not = icmp eq i32 %call6, 0
  br i1 %tobool.not, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.end5
  tail call void @ERR_new() #4
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 97, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.ecdsa_sign_setup, i64 0, i64 0)) #4
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 16, i32 noundef 159, i8* noundef null) #4
  br label %cleanup

if.end8:                                          ; preds = %if.end5
  %cmp9 = icmp eq %struct.bignum_ctx* %ctx_in, null
  br i1 %cmp9, label %if.then10, label %if.end15

if.then10:                                        ; preds = %if.end8
  %libctx = getelementptr inbounds %struct.ec_key_st, %struct.ec_key_st* %eckey, i64 0, i32 12
  %0 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** %libctx, align 8, !tbaa !20
  %call11 = tail call %struct.bignum_ctx* @BN_CTX_new_ex(%struct.ossl_lib_ctx_st* noundef %0) #4
  %cmp12 = icmp eq %struct.bignum_ctx* %call11, null
  br i1 %cmp12, label %if.then13, label %if.end15

if.then13:                                        ; preds = %if.then10
  tail call void @ERR_new() #4
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 103, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.ecdsa_sign_setup, i64 0, i64 0)) #4
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 16, i32 noundef 786688, i8* noundef null) #4
  br label %cleanup

if.end15:                                         ; preds = %if.then10, %if.end8
  %ctx.0 = phi %struct.bignum_ctx* [ %call11, %if.then10 ], [ %ctx_in, %if.end8 ]
  %call16 = tail call %struct.bignum_st* @BN_secure_new() #4
  %call17 = tail call %struct.bignum_st* @BN_new() #4
  %call18 = tail call %struct.bignum_st* @BN_new() #4
  %cmp19 = icmp eq %struct.bignum_st* %call16, null
  %cmp21 = icmp eq %struct.bignum_st* %call17, null
  %or.cond = select i1 %cmp19, i1 true, i1 %cmp21
  %cmp23 = icmp eq %struct.bignum_st* %call18, null
  %or.cond92 = select i1 %or.cond, i1 true, i1 %cmp23
  br i1 %or.cond92, label %if.then77.sink.split, label %if.end25

if.end25:                                         ; preds = %if.end15
  %call26 = tail call %struct.ec_point_st* @EC_POINT_new(%struct.ec_group_st* noundef nonnull %call) #4
  %cmp27 = icmp eq %struct.ec_point_st* %call26, null
  br i1 %cmp27, label %if.then77.sink.split, label %if.end29

if.end29:                                         ; preds = %if.end25
  %call30 = tail call %struct.bignum_st* @EC_GROUP_get0_order(%struct.ec_group_st* noundef nonnull %call) #4
  %call31 = tail call i32 @BN_num_bits(%struct.bignum_st* noundef %call30) #4
  %call32 = tail call i32 @BN_set_bit(%struct.bignum_st* noundef nonnull %call16, i32 noundef %call31) #4
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %if.then77, label %lor.lhs.false34

lor.lhs.false34:                                  ; preds = %if.end29
  %call35 = tail call i32 @BN_set_bit(%struct.bignum_st* noundef nonnull %call17, i32 noundef %call31) #4
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %if.then77, label %lor.lhs.false37

lor.lhs.false37:                                  ; preds = %lor.lhs.false34
  %call38 = tail call i32 @BN_set_bit(%struct.bignum_st* noundef nonnull %call18, i32 noundef %call31) #4
  %tobool39.not = icmp eq i32 %call38, 0
  br i1 %tobool39.not, label %if.then77, label %do.body.preheader

do.body.preheader:                                ; preds = %lor.lhs.false37
  %cmp43.not = icmp eq i8* %dgst, null
  %conv = sext i32 %dlen to i64
  br label %do.body42

do.body42:                                        ; preds = %do.body42.backedge, %do.body.preheader
  br i1 %cmp43.not, label %if.else, label %if.then44

if.then44:                                        ; preds = %do.body42
  %call45 = tail call i32 @BN_generate_dsa_nonce(%struct.bignum_st* noundef %call16, %struct.bignum_st* noundef %call30, %struct.bignum_st* noundef nonnull %call2, i8* noundef nonnull %dgst, i64 noundef %conv, %struct.bignum_ctx* noundef %ctx.0) #4
  %tobool46.not = icmp eq i32 %call45, 0
  br i1 %tobool46.not, label %if.then77.sink.split, label %do.cond

if.else:                                          ; preds = %do.body42
  %call49 = tail call i32 @BN_priv_rand_range_ex(%struct.bignum_st* noundef %call16, %struct.bignum_st* noundef %call30, i32 noundef 0, %struct.bignum_ctx* noundef %ctx.0) #4
  %tobool50.not = icmp eq i32 %call49, 0
  br i1 %tobool50.not, label %if.then77.sink.split, label %do.cond

do.cond:                                          ; preds = %if.then44, %if.else
  %call54 = tail call i32 @BN_is_zero(%struct.bignum_st* noundef %call16) #4
  %tobool55.not = icmp eq i32 %call54, 0
  br i1 %tobool55.not, label %do.end, label %do.body42.backedge

do.body42.backedge:                               ; preds = %do.cond, %do.cond68
  br label %do.body42, !llvm.loop !21

do.end:                                           ; preds = %do.cond
  %call56 = tail call i32 @EC_POINT_mul(%struct.ec_group_st* noundef nonnull %call, %struct.ec_point_st* noundef nonnull %call26, %struct.bignum_st* noundef %call16, %struct.ec_point_st* noundef null, %struct.bignum_st* noundef null, %struct.bignum_ctx* noundef %ctx.0) #4
  %tobool57.not = icmp eq i32 %call56, 0
  br i1 %tobool57.not, label %if.then77.sink.split, label %if.end59

if.end59:                                         ; preds = %do.end
  %call60 = tail call i32 @EC_POINT_get_affine_coordinates(%struct.ec_group_st* noundef nonnull %call, %struct.ec_point_st* noundef nonnull %call26, %struct.bignum_st* noundef %call18, %struct.bignum_st* noundef null, %struct.bignum_ctx* noundef %ctx.0) #4
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %if.then77.sink.split, label %if.end63

if.end63:                                         ; preds = %if.end59
  %call64 = tail call i32 @BN_nnmod(%struct.bignum_st* noundef %call17, %struct.bignum_st* noundef %call18, %struct.bignum_st* noundef %call30, %struct.bignum_ctx* noundef %ctx.0) #4
  %tobool65.not = icmp eq i32 %call64, 0
  br i1 %tobool65.not, label %if.then77.sink.split, label %do.cond68

do.cond68:                                        ; preds = %if.end63
  %call69 = tail call i32 @BN_is_zero(%struct.bignum_st* noundef %call17) #4
  %tobool70.not = icmp eq i32 %call69, 0
  br i1 %tobool70.not, label %do.end71, label %do.body42.backedge

do.end71:                                         ; preds = %do.cond68
  %call72 = tail call i32 @ossl_ec_group_do_inverse_ord(%struct.ec_group_st* noundef nonnull %call, %struct.bignum_st* noundef %call16, %struct.bignum_st* noundef %call16, %struct.bignum_ctx* noundef %ctx.0) #4
  %tobool73.not = icmp eq i32 %call72, 0
  br i1 %tobool73.not, label %if.then77.sink.split, label %err

err:                                              ; preds = %do.end71
  %1 = load %struct.bignum_st*, %struct.bignum_st** %rp, align 8, !tbaa !18
  tail call void @BN_clear_free(%struct.bignum_st* noundef %1) #4
  %2 = load %struct.bignum_st*, %struct.bignum_st** %kinvp, align 8, !tbaa !18
  tail call void @BN_clear_free(%struct.bignum_st* noundef %2) #4
  store %struct.bignum_st* %call17, %struct.bignum_st** %rp, align 8, !tbaa !18
  store %struct.bignum_st* %call16, %struct.bignum_st** %kinvp, align 8, !tbaa !18
  br label %if.end78

if.then77.sink.split:                             ; preds = %if.end63, %if.end59, %do.end, %if.else, %if.then44, %do.end71, %if.end25, %if.end15
  %.sink155 = phi i32 [ 112, %if.end15 ], [ 116, %if.end25 ], [ 164, %do.end71 ], [ 147, %do.end ], [ 152, %if.end59 ], [ 157, %if.end63 ], [ 134, %if.then44 ], [ 139, %if.else ]
  %.sink = phi i32 [ 786688, %if.end15 ], [ 524304, %if.end25 ], [ 524291, %do.end71 ], [ 524304, %do.end ], [ 524304, %if.end59 ], [ 524291, %if.end63 ], [ 158, %if.then44 ], [ 158, %if.else ]
  %tmp_point.0.ph.ph = phi %struct.ec_point_st* [ null, %if.end15 ], [ null, %if.end25 ], [ %call26, %do.end71 ], [ %call26, %if.then44 ], [ %call26, %if.else ], [ %call26, %do.end ], [ %call26, %if.end59 ], [ %call26, %if.end63 ]
  tail call void @ERR_new() #4
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef %.sink155, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.ecdsa_sign_setup, i64 0, i64 0)) #4
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 16, i32 noundef %.sink, i8* noundef null) #4
  br label %if.then77

if.then77:                                        ; preds = %if.then77.sink.split, %lor.lhs.false37, %lor.lhs.false34, %if.end29
  %tmp_point.0.ph = phi %struct.ec_point_st* [ %call26, %if.end29 ], [ %call26, %lor.lhs.false34 ], [ %call26, %lor.lhs.false37 ], [ %tmp_point.0.ph.ph, %if.then77.sink.split ]
  tail call void @BN_clear_free(%struct.bignum_st* noundef %call16) #4
  tail call void @BN_clear_free(%struct.bignum_st* noundef %call17) #4
  br label %if.end78

if.end78:                                         ; preds = %err, %if.then77
  %ret.0153 = phi i32 [ 0, %if.then77 ], [ 1, %err ]
  %tmp_point.0151 = phi %struct.ec_point_st* [ %tmp_point.0.ph, %if.then77 ], [ %call26, %err ]
  %cmp79.not = icmp eq %struct.bignum_ctx* %ctx.0, %ctx_in
  br i1 %cmp79.not, label %if.end82, label %if.then81

if.then81:                                        ; preds = %if.end78
  tail call void @BN_CTX_free(%struct.bignum_ctx* noundef %ctx.0) #4
  br label %if.end82

if.end82:                                         ; preds = %if.then81, %if.end78
  tail call void @EC_POINT_free(%struct.ec_point_st* noundef %tmp_point.0151) #4
  tail call void @BN_clear_free(%struct.bignum_st* noundef %call18) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end82, %if.then13, %if.then7, %if.then4, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 0, %if.then4 ], [ 0, %if.then13 ], [ %ret.0153, %if.end82 ], [ 0, %if.then7 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define %struct.ECDSA_SIG_st* @ossl_ecdsa_simple_sign_sig(i8* noundef %dgst, i32 noundef %dgst_len, %struct.bignum_st* noundef %in_kinv, %struct.bignum_st* noundef %in_r, %struct.ec_key_st* noundef %eckey) local_unnamed_addr #0 {
entry:
  %kinv = alloca %struct.bignum_st*, align 8
  %0 = bitcast %struct.bignum_st** %kinv to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #6
  store %struct.bignum_st* null, %struct.bignum_st** %kinv, align 8, !tbaa !18
  %call = tail call %struct.ec_group_st* @EC_KEY_get0_group(%struct.ec_key_st* noundef %eckey) #4
  %call1 = tail call %struct.bignum_st* @EC_KEY_get0_private_key(%struct.ec_key_st* noundef %eckey) #4
  %cmp = icmp eq %struct.ec_group_st* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #4
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 209, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.ossl_ecdsa_simple_sign_sig, i64 0, i64 0)) #4
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 16, i32 noundef 786690, i8* noundef null) #4
  br label %cleanup

if.end:                                           ; preds = %entry
  %cmp2 = icmp eq %struct.bignum_st* %call1, null
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  tail call void @ERR_new() #4
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 213, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.ossl_ecdsa_simple_sign_sig, i64 0, i64 0)) #4
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 16, i32 noundef 125, i8* noundef null) #4
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %call5 = tail call i32 @EC_KEY_can_sign(%struct.ec_key_st* noundef %eckey) #4
  %tobool.not = icmp eq i32 %call5, 0
  br i1 %tobool.not, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.end4
  tail call void @ERR_new() #4
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 218, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.ossl_ecdsa_simple_sign_sig, i64 0, i64 0)) #4
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 16, i32 noundef 159, i8* noundef null) #4
  br label %cleanup

if.end7:                                          ; preds = %if.end4
  %call8 = tail call %struct.ECDSA_SIG_st* @ECDSA_SIG_new() #4
  %cmp9 = icmp eq %struct.ECDSA_SIG_st* %call8, null
  br i1 %cmp9, label %if.then10, label %if.end11

if.then10:                                        ; preds = %if.end7
  tail call void @ERR_new() #4
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 224, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.ossl_ecdsa_simple_sign_sig, i64 0, i64 0)) #4
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 16, i32 noundef 786688, i8* noundef null) #4
  br label %cleanup

if.end11:                                         ; preds = %if.end7
  %call12 = tail call %struct.bignum_st* @BN_new() #4
  %r = getelementptr inbounds %struct.ECDSA_SIG_st, %struct.ECDSA_SIG_st* %call8, i64 0, i32 0
  store %struct.bignum_st* %call12, %struct.bignum_st** %r, align 8, !tbaa !23
  %call13 = tail call %struct.bignum_st* @BN_new() #4
  %s14 = getelementptr inbounds %struct.ECDSA_SIG_st, %struct.ECDSA_SIG_st* %call8, i64 0, i32 1
  store %struct.bignum_st* %call13, %struct.bignum_st** %s14, align 8, !tbaa !25
  %1 = load %struct.bignum_st*, %struct.bignum_st** %r, align 8, !tbaa !23
  %cmp16 = icmp eq %struct.bignum_st* %1, null
  %cmp18 = icmp eq %struct.bignum_st* %call13, null
  %or.cond165 = select i1 %cmp16, i1 true, i1 %cmp18
  br i1 %or.cond165, label %if.then19, label %if.end20

if.then19:                                        ; preds = %if.end11
  tail call void @ERR_new() #4
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 230, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.ossl_ecdsa_simple_sign_sig, i64 0, i64 0)) #4
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 16, i32 noundef 786688, i8* noundef null) #4
  br label %if.then92

if.end20:                                         ; preds = %if.end11
  %libctx = getelementptr inbounds %struct.ec_key_st, %struct.ec_key_st* %eckey, i64 0, i32 12
  %2 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** %libctx, align 8, !tbaa !20
  %call22 = tail call %struct.bignum_ctx* @BN_CTX_new_ex(%struct.ossl_lib_ctx_st* noundef %2) #4
  %cmp23 = icmp eq %struct.bignum_ctx* %call22, null
  br i1 %cmp23, label %if.then27, label %lor.lhs.false24

lor.lhs.false24:                                  ; preds = %if.end20
  %call25 = tail call %struct.bignum_st* @BN_new() #4
  %cmp26 = icmp eq %struct.bignum_st* %call25, null
  br i1 %cmp26, label %if.then27, label %if.end28

if.then27:                                        ; preds = %lor.lhs.false24, %if.end20
  tail call void @ERR_new() #4
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 237, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.ossl_ecdsa_simple_sign_sig, i64 0, i64 0)) #4
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 16, i32 noundef 786688, i8* noundef null) #4
  br label %if.then92

if.end28:                                         ; preds = %lor.lhs.false24
  %call29 = tail call %struct.bignum_st* @EC_GROUP_get0_order(%struct.ec_group_st* noundef nonnull %call) #4
  %call30 = tail call i32 @BN_num_bits(%struct.bignum_st* noundef %call29) #4
  %mul = shl nsw i32 %dgst_len, 3
  %cmp31 = icmp sgt i32 %mul, %call30
  br i1 %cmp31, label %if.then32, label %if.end33

if.then32:                                        ; preds = %if.end28
  %add = add nsw i32 %call30, 7
  %div = sdiv i32 %add, 8
  br label %if.end33

if.end33:                                         ; preds = %if.then32, %if.end28
  %dgst_len.addr.0 = phi i32 [ %div, %if.then32 ], [ %dgst_len, %if.end28 ]
  %call34 = tail call %struct.bignum_st* @BN_bin2bn(i8* noundef %dgst, i32 noundef %dgst_len.addr.0, %struct.bignum_st* noundef nonnull %call25) #4
  %tobool35.not = icmp eq %struct.bignum_st* %call34, null
  br i1 %tobool35.not, label %if.then36, label %if.end37

if.then36:                                        ; preds = %if.end33
  tail call void @ERR_new() #4
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 249, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.ossl_ecdsa_simple_sign_sig, i64 0, i64 0)) #4
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 16, i32 noundef 524291, i8* noundef null) #4
  br label %if.then92

if.end37:                                         ; preds = %if.end33
  %mul38 = shl nsw i32 %dgst_len.addr.0, 3
  %cmp39 = icmp sgt i32 %mul38, %call30
  br i1 %cmp39, label %land.lhs.true, label %if.end43

land.lhs.true:                                    ; preds = %if.end37
  %and = and i32 %call30, 7
  %sub = sub nuw nsw i32 8, %and
  %call40 = tail call i32 @BN_rshift(%struct.bignum_st* noundef nonnull %call25, %struct.bignum_st* noundef nonnull %call25, i32 noundef %sub) #4
  %tobool41.not = icmp eq i32 %call40, 0
  br i1 %tobool41.not, label %if.then42, label %if.end43

if.then42:                                        ; preds = %land.lhs.true
  tail call void @ERR_new() #4
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 254, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.ossl_ecdsa_simple_sign_sig, i64 0, i64 0)) #4
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 16, i32 noundef 524291, i8* noundef null) #4
  br label %if.then92

if.end43:                                         ; preds = %land.lhs.true, %if.end37
  %cmp44 = icmp eq %struct.bignum_st* %in_kinv, null
  %cmp46 = icmp eq %struct.bignum_st* %in_r, null
  %or.cond = or i1 %cmp44, %cmp46
  %mont_data = getelementptr inbounds %struct.ec_group_st, %struct.ec_group_st* %call, i64 0, i32 18
  %cmp84 = icmp ne %struct.bignum_st* %in_kinv, null
  %cmp86 = icmp ne %struct.bignum_st* %in_r, null
  %or.cond104 = and i1 %cmp84, %cmp86
  br label %do.body

do.body:                                          ; preds = %if.then83, %if.end43
  %3 = phi %struct.bignum_st* [ %6, %if.then83 ], [ null, %if.end43 ]
  br i1 %or.cond, label %if.then47, label %if.else

if.then47:                                        ; preds = %do.body
  %call49 = call fastcc i32 @ecdsa_sign_setup(%struct.ec_key_st* noundef %eckey, %struct.bignum_ctx* noundef nonnull %call22, %struct.bignum_st** noundef nonnull %kinv, %struct.bignum_st** noundef nonnull %r, i8* noundef %dgst, i32 noundef %dgst_len.addr.0) #5
  %tobool50.not = icmp eq i32 %call49, 0
  br i1 %tobool50.not, label %if.then51, label %if.end52

if.then51:                                        ; preds = %if.then47
  tail call void @ERR_new() #4
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 260, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.ossl_ecdsa_simple_sign_sig, i64 0, i64 0)) #4
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 16, i32 noundef 524330, i8* noundef null) #4
  %.pre.pre = load %struct.bignum_st*, %struct.bignum_st** %kinv, align 8, !tbaa !18
  br label %if.then92

if.end52:                                         ; preds = %if.then47
  %4 = load %struct.bignum_st*, %struct.bignum_st** %kinv, align 8, !tbaa !18
  br label %if.end58

if.else:                                          ; preds = %do.body
  %5 = load %struct.bignum_st*, %struct.bignum_st** %r, align 8, !tbaa !23
  %call54 = tail call %struct.bignum_st* @BN_copy(%struct.bignum_st* noundef %5, %struct.bignum_st* noundef nonnull %in_r) #4
  %cmp55 = icmp eq %struct.bignum_st* %call54, null
  br i1 %cmp55, label %if.then56, label %if.end58

if.then56:                                        ; preds = %if.else
  tail call void @ERR_new() #4
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 267, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.ossl_ecdsa_simple_sign_sig, i64 0, i64 0)) #4
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 16, i32 noundef 786688, i8* noundef null) #4
  br label %if.then92

if.end58:                                         ; preds = %if.else, %if.end52
  %6 = phi %struct.bignum_st* [ %4, %if.end52 ], [ %3, %if.else ]
  %ckinv.0 = phi %struct.bignum_st* [ %4, %if.end52 ], [ %in_kinv, %if.else ]
  %7 = load %struct.bignum_st*, %struct.bignum_st** %r, align 8, !tbaa !23
  %8 = load %struct.bn_mont_ctx_st*, %struct.bn_mont_ctx_st** %mont_data, align 8, !tbaa !26
  %call60 = tail call i32 @bn_to_mont_fixed_top(%struct.bignum_st* noundef nonnull %call13, %struct.bignum_st* noundef %7, %struct.bn_mont_ctx_st* noundef %8, %struct.bignum_ctx* noundef nonnull %call22) #4
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %if.then66, label %lor.lhs.false62

lor.lhs.false62:                                  ; preds = %if.end58
  %9 = load %struct.bn_mont_ctx_st*, %struct.bn_mont_ctx_st** %mont_data, align 8, !tbaa !26
  %call64 = tail call i32 @bn_mul_mont_fixed_top(%struct.bignum_st* noundef nonnull %call13, %struct.bignum_st* noundef nonnull %call13, %struct.bignum_st* noundef nonnull %call1, %struct.bn_mont_ctx_st* noundef %9, %struct.bignum_ctx* noundef nonnull %call22) #4
  %tobool65.not = icmp eq i32 %call64, 0
  br i1 %tobool65.not, label %if.then66, label %if.end67

if.then66:                                        ; preds = %lor.lhs.false62, %if.end58
  tail call void @ERR_new() #4
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 281, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.ossl_ecdsa_simple_sign_sig, i64 0, i64 0)) #4
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 16, i32 noundef 524291, i8* noundef null) #4
  br label %if.then92

if.end67:                                         ; preds = %lor.lhs.false62
  %call68 = tail call i32 @bn_mod_add_fixed_top(%struct.bignum_st* noundef nonnull %call13, %struct.bignum_st* noundef nonnull %call13, %struct.bignum_st* noundef nonnull %call25, %struct.bignum_st* noundef %call29) #4
  %tobool69.not = icmp eq i32 %call68, 0
  br i1 %tobool69.not, label %if.then70, label %if.end71

if.then70:                                        ; preds = %if.end67
  tail call void @ERR_new() #4
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 285, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.ossl_ecdsa_simple_sign_sig, i64 0, i64 0)) #4
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 16, i32 noundef 524291, i8* noundef null) #4
  br label %if.then92

if.end71:                                         ; preds = %if.end67
  %10 = load %struct.bn_mont_ctx_st*, %struct.bn_mont_ctx_st** %mont_data, align 8, !tbaa !26
  %call73 = tail call i32 @bn_to_mont_fixed_top(%struct.bignum_st* noundef nonnull %call13, %struct.bignum_st* noundef nonnull %call13, %struct.bn_mont_ctx_st* noundef %10, %struct.bignum_ctx* noundef nonnull %call22) #4
  %tobool74.not = icmp eq i32 %call73, 0
  br i1 %tobool74.not, label %if.then79, label %lor.lhs.false75

lor.lhs.false75:                                  ; preds = %if.end71
  %11 = load %struct.bn_mont_ctx_st*, %struct.bn_mont_ctx_st** %mont_data, align 8, !tbaa !26
  %call77 = tail call i32 @BN_mod_mul_montgomery(%struct.bignum_st* noundef nonnull %call13, %struct.bignum_st* noundef nonnull %call13, %struct.bignum_st* noundef %ckinv.0, %struct.bn_mont_ctx_st* noundef %11, %struct.bignum_ctx* noundef nonnull %call22) #4
  %tobool78.not = icmp eq i32 %call77, 0
  br i1 %tobool78.not, label %if.then79, label %if.end80

if.then79:                                        ; preds = %lor.lhs.false75, %if.end71
  tail call void @ERR_new() #4
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 294, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.ossl_ecdsa_simple_sign_sig, i64 0, i64 0)) #4
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 16, i32 noundef 524291, i8* noundef null) #4
  br label %if.then92

if.end80:                                         ; preds = %lor.lhs.false75
  %call81 = tail call i32 @BN_is_zero(%struct.bignum_st* noundef nonnull %call13) #4
  %tobool82.not = icmp eq i32 %call81, 0
  br i1 %tobool82.not, label %if.end93, label %if.then83

if.then83:                                        ; preds = %if.end80
  br i1 %or.cond104, label %if.then87, label %do.body

if.then87:                                        ; preds = %if.then83
  tail call void @ERR_new() #4
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 304, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.ossl_ecdsa_simple_sign_sig, i64 0, i64 0)) #4
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 16, i32 noundef 157, i8* noundef null) #4
  br label %if.then92

if.then92:                                        ; preds = %if.then19, %if.then27, %if.then87, %if.then79, %if.then70, %if.then66, %if.then51, %if.then56, %if.then42, %if.then36
  %.pre = phi %struct.bignum_st* [ null, %if.then36 ], [ null, %if.then42 ], [ %3, %if.then56 ], [ %.pre.pre, %if.then51 ], [ %6, %if.then66 ], [ %6, %if.then70 ], [ %6, %if.then79 ], [ %6, %if.then87 ], [ null, %if.then27 ], [ null, %if.then19 ]
  %m.1.ph = phi %struct.bignum_st* [ %call25, %if.then36 ], [ %call25, %if.then42 ], [ %call25, %if.then56 ], [ %call25, %if.then51 ], [ %call25, %if.then66 ], [ %call25, %if.then70 ], [ %call25, %if.then79 ], [ %call25, %if.then87 ], [ null, %if.then27 ], [ null, %if.then19 ]
  %ctx.0.ph = phi %struct.bignum_ctx* [ %call22, %if.then36 ], [ %call22, %if.then42 ], [ %call22, %if.then56 ], [ %call22, %if.then51 ], [ %call22, %if.then66 ], [ %call22, %if.then70 ], [ %call22, %if.then79 ], [ %call22, %if.then87 ], [ %call22, %if.then27 ], [ null, %if.then19 ]
  tail call void @ECDSA_SIG_free(%struct.ECDSA_SIG_st* noundef nonnull %call8) #4
  br label %if.end93

if.end93:                                         ; preds = %if.end80, %if.then92
  %12 = phi %struct.bignum_st* [ %.pre, %if.then92 ], [ %6, %if.end80 ]
  %ctx.0171 = phi %struct.bignum_ctx* [ %ctx.0.ph, %if.then92 ], [ %call22, %if.end80 ]
  %m.1169 = phi %struct.bignum_st* [ %m.1.ph, %if.then92 ], [ %call25, %if.end80 ]
  %ret.0 = phi %struct.ECDSA_SIG_st* [ null, %if.then92 ], [ %call8, %if.end80 ]
  tail call void @BN_CTX_free(%struct.bignum_ctx* noundef %ctx.0171) #4
  tail call void @BN_clear_free(%struct.bignum_st* noundef %m.1169) #4
  tail call void @BN_clear_free(%struct.bignum_st* noundef %12) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end93, %if.then10, %if.then6, %if.then3, %if.then
  %retval.0 = phi %struct.ECDSA_SIG_st* [ null, %if.then ], [ null, %if.then3 ], [ null, %if.then10 ], [ %ret.0, %if.end93 ], [ null, %if.then6 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #6
  ret %struct.ECDSA_SIG_st* %retval.0
}

declare %struct.ec_group_st* @EC_KEY_get0_group(%struct.ec_key_st* noundef) local_unnamed_addr #1

declare %struct.bignum_st* @EC_KEY_get0_private_key(%struct.ec_key_st* noundef) local_unnamed_addr #1

declare i32 @EC_KEY_can_sign(%struct.ec_key_st* noundef) local_unnamed_addr #1

declare %struct.ECDSA_SIG_st* @ECDSA_SIG_new() local_unnamed_addr #1

declare %struct.bignum_st* @BN_new() local_unnamed_addr #1

declare %struct.bignum_ctx* @BN_CTX_new_ex(%struct.ossl_lib_ctx_st* noundef) local_unnamed_addr #1

declare %struct.bignum_st* @EC_GROUP_get0_order(%struct.ec_group_st* noundef) local_unnamed_addr #1

declare i32 @BN_num_bits(%struct.bignum_st* noundef) local_unnamed_addr #1

declare %struct.bignum_st* @BN_bin2bn(i8* noundef, i32 noundef, %struct.bignum_st* noundef) local_unnamed_addr #1

declare i32 @BN_rshift(%struct.bignum_st* noundef, %struct.bignum_st* noundef, i32 noundef) local_unnamed_addr #1

declare %struct.bignum_st* @BN_copy(%struct.bignum_st* noundef, %struct.bignum_st* noundef) local_unnamed_addr #1

declare i32 @bn_to_mont_fixed_top(%struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bn_mont_ctx_st* noundef, %struct.bignum_ctx* noundef) local_unnamed_addr #1

declare i32 @bn_mul_mont_fixed_top(%struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bn_mont_ctx_st* noundef, %struct.bignum_ctx* noundef) local_unnamed_addr #1

declare i32 @bn_mod_add_fixed_top(%struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef) local_unnamed_addr #1

declare i32 @BN_mod_mul_montgomery(%struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bn_mont_ctx_st* noundef, %struct.bignum_ctx* noundef) local_unnamed_addr #1

declare i32 @BN_is_zero(%struct.bignum_st* noundef) local_unnamed_addr #1

declare void @BN_CTX_free(%struct.bignum_ctx* noundef) local_unnamed_addr #1

declare void @BN_clear_free(%struct.bignum_st* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_ecdsa_verify(i32 noundef %type, i8* noundef %dgst, i32 noundef %dgst_len, i8* noundef %sigbuf, i32 noundef %sig_len, %struct.ec_key_st* noundef %eckey) local_unnamed_addr #0 {
entry:
  %s = alloca %struct.ECDSA_SIG_st*, align 8
  %p = alloca i8*, align 8
  %der = alloca i8*, align 8
  %0 = bitcast %struct.ECDSA_SIG_st** %s to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #6
  %1 = bitcast i8** %p to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #6
  store i8* %sigbuf, i8** %p, align 8, !tbaa !18
  %2 = bitcast i8** %der to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #6
  store i8* null, i8** %der, align 8, !tbaa !18
  %call = tail call %struct.ECDSA_SIG_st* @ECDSA_SIG_new() #4
  store %struct.ECDSA_SIG_st* %call, %struct.ECDSA_SIG_st** %s, align 8, !tbaa !18
  %cmp = icmp eq %struct.ECDSA_SIG_st* %call, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %conv = sext i32 %sig_len to i64
  %call1 = call %struct.ECDSA_SIG_st* @d2i_ECDSA_SIG(%struct.ECDSA_SIG_st** noundef nonnull %s, i8** noundef nonnull %p, i64 noundef %conv) #4
  %cmp2 = icmp eq %struct.ECDSA_SIG_st* %call1, null
  br i1 %cmp2, label %err, label %if.end5

if.end5:                                          ; preds = %if.end
  %3 = load %struct.ECDSA_SIG_st*, %struct.ECDSA_SIG_st** %s, align 8, !tbaa !18
  %call6 = call i32 @i2d_ECDSA_SIG(%struct.ECDSA_SIG_st* noundef %3, i8** noundef nonnull %der) #4
  %cmp7.not = icmp eq i32 %call6, %sig_len
  br i1 %cmp7.not, label %lor.lhs.false, label %err

lor.lhs.false:                                    ; preds = %if.end5
  %4 = load i8*, i8** %der, align 8, !tbaa !18
  %call10 = call i32 @memcmp(i8* noundef %sigbuf, i8* noundef %4, i64 noundef %conv) #7
  %cmp11.not = icmp eq i32 %call10, 0
  br i1 %cmp11.not, label %if.end14, label %err

if.end14:                                         ; preds = %lor.lhs.false
  %5 = load %struct.ECDSA_SIG_st*, %struct.ECDSA_SIG_st** %s, align 8, !tbaa !18
  %call15 = call i32 @ECDSA_do_verify(i8* noundef %dgst, i32 noundef %dgst_len, %struct.ECDSA_SIG_st* noundef %5, %struct.ec_key_st* noundef %eckey) #4
  br label %err

err:                                              ; preds = %if.end5, %lor.lhs.false, %if.end, %if.end14
  %ret.0 = phi i32 [ -1, %if.end ], [ -1, %if.end5 ], [ -1, %lor.lhs.false ], [ %call15, %if.end14 ]
  %6 = load i8*, i8** %der, align 8, !tbaa !18
  call void @CRYPTO_free(i8* noundef %6, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 351) #4
  %7 = load %struct.ECDSA_SIG_st*, %struct.ECDSA_SIG_st** %s, align 8, !tbaa !18
  call void @ECDSA_SIG_free(%struct.ECDSA_SIG_st* noundef %7) #4
  br label %cleanup

cleanup:                                          ; preds = %entry, %err
  %retval.0 = phi i32 [ %ret.0, %err ], [ -1, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #6
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #6
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #6
  ret i32 %retval.0
}

declare %struct.ECDSA_SIG_st* @d2i_ECDSA_SIG(%struct.ECDSA_SIG_st** noundef, i8** noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare i32 @memcmp(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #3

declare i32 @ECDSA_do_verify(i8* noundef, i32 noundef, %struct.ECDSA_SIG_st* noundef, %struct.ec_key_st* noundef) local_unnamed_addr #1

declare void @CRYPTO_free(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_ecdsa_simple_verify_sig(i8* noundef %dgst, i32 noundef %dgst_len, %struct.ECDSA_SIG_st* noundef readonly %sig, %struct.ec_key_st* noundef %eckey) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.ec_key_st* %eckey, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %call = tail call %struct.ec_group_st* @EC_KEY_get0_group(%struct.ec_key_st* noundef nonnull %eckey) #4
  %cmp1 = icmp eq %struct.ec_group_st* %call, null
  br i1 %cmp1, label %if.then, label %lor.lhs.false2

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %call3 = tail call %struct.ec_point_st* @EC_KEY_get0_public_key(%struct.ec_key_st* noundef nonnull %eckey) #4
  %cmp4 = icmp eq %struct.ec_point_st* %call3, null
  %cmp6 = icmp eq %struct.ECDSA_SIG_st* %sig, null
  %or.cond = or i1 %cmp6, %cmp4
  br i1 %or.cond, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false2, %lor.lhs.false, %entry
  tail call void @ERR_new() #4
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 370, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.ossl_ecdsa_simple_verify_sig, i64 0, i64 0)) #4
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 16, i32 noundef 124, i8* noundef null) #4
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false2
  %call7 = tail call i32 @EC_KEY_can_sign(%struct.ec_key_st* noundef nonnull %eckey) #4
  %tobool.not = icmp eq i32 %call7, 0
  br i1 %tobool.not, label %if.then8, label %if.end9

if.then8:                                         ; preds = %if.end
  tail call void @ERR_new() #4
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 375, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.ossl_ecdsa_simple_verify_sig, i64 0, i64 0)) #4
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 16, i32 noundef 159, i8* noundef null) #4
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %libctx = getelementptr inbounds %struct.ec_key_st, %struct.ec_key_st* %eckey, i64 0, i32 12
  %0 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** %libctx, align 8, !tbaa !20
  %call10 = tail call %struct.bignum_ctx* @BN_CTX_new_ex(%struct.ossl_lib_ctx_st* noundef %0) #4
  %cmp11 = icmp eq %struct.bignum_ctx* %call10, null
  br i1 %cmp11, label %if.then12, label %if.end13

if.then12:                                        ; preds = %if.end9
  tail call void @ERR_new() #4
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 381, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.ossl_ecdsa_simple_verify_sig, i64 0, i64 0)) #4
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 16, i32 noundef 786688, i8* noundef null) #4
  br label %cleanup

if.end13:                                         ; preds = %if.end9
  tail call void @BN_CTX_start(%struct.bignum_ctx* noundef nonnull %call10) #4
  %call14 = tail call %struct.bignum_st* @BN_CTX_get(%struct.bignum_ctx* noundef nonnull %call10) #4
  %call15 = tail call %struct.bignum_st* @BN_CTX_get(%struct.bignum_ctx* noundef nonnull %call10) #4
  %call16 = tail call %struct.bignum_st* @BN_CTX_get(%struct.bignum_ctx* noundef nonnull %call10) #4
  %call17 = tail call %struct.bignum_st* @BN_CTX_get(%struct.bignum_ctx* noundef nonnull %call10) #4
  %cmp18 = icmp eq %struct.bignum_st* %call17, null
  br i1 %cmp18, label %if.then19, label %if.end20

if.then19:                                        ; preds = %if.end13
  tail call void @ERR_new() #4
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 390, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.ossl_ecdsa_simple_verify_sig, i64 0, i64 0)) #4
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 16, i32 noundef 524291, i8* noundef null) #4
  br label %err

if.end20:                                         ; preds = %if.end13
  %call21 = tail call %struct.bignum_st* @EC_GROUP_get0_order(%struct.ec_group_st* noundef nonnull %call) #4
  %cmp22 = icmp eq %struct.bignum_st* %call21, null
  br i1 %cmp22, label %if.then23, label %if.end24

if.then23:                                        ; preds = %if.end20
  tail call void @ERR_new() #4
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 396, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.ossl_ecdsa_simple_verify_sig, i64 0, i64 0)) #4
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 16, i32 noundef 524304, i8* noundef null) #4
  br label %err

if.end24:                                         ; preds = %if.end20
  %r = getelementptr inbounds %struct.ECDSA_SIG_st, %struct.ECDSA_SIG_st* %sig, i64 0, i32 0
  %1 = load %struct.bignum_st*, %struct.bignum_st** %r, align 8, !tbaa !23
  %call25 = tail call i32 @BN_is_zero(%struct.bignum_st* noundef %1) #4
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %lor.lhs.false27, label %if.then46

lor.lhs.false27:                                  ; preds = %if.end24
  %2 = load %struct.bignum_st*, %struct.bignum_st** %r, align 8, !tbaa !23
  %call29 = tail call i32 @BN_is_negative(%struct.bignum_st* noundef %2) #4
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %lor.lhs.false31, label %if.then46

lor.lhs.false31:                                  ; preds = %lor.lhs.false27
  %3 = load %struct.bignum_st*, %struct.bignum_st** %r, align 8, !tbaa !23
  %call33 = tail call i32 @BN_ucmp(%struct.bignum_st* noundef %3, %struct.bignum_st* noundef nonnull %call21) #4
  %cmp34 = icmp sgt i32 %call33, -1
  br i1 %cmp34, label %if.then46, label %lor.lhs.false35

lor.lhs.false35:                                  ; preds = %lor.lhs.false31
  %s = getelementptr inbounds %struct.ECDSA_SIG_st, %struct.ECDSA_SIG_st* %sig, i64 0, i32 1
  %4 = load %struct.bignum_st*, %struct.bignum_st** %s, align 8, !tbaa !25
  %call36 = tail call i32 @BN_is_zero(%struct.bignum_st* noundef %4) #4
  %tobool37.not = icmp eq i32 %call36, 0
  br i1 %tobool37.not, label %lor.lhs.false38, label %if.then46

lor.lhs.false38:                                  ; preds = %lor.lhs.false35
  %5 = load %struct.bignum_st*, %struct.bignum_st** %s, align 8, !tbaa !25
  %call40 = tail call i32 @BN_is_negative(%struct.bignum_st* noundef %5) #4
  %tobool41.not = icmp eq i32 %call40, 0
  br i1 %tobool41.not, label %lor.lhs.false42, label %if.then46

lor.lhs.false42:                                  ; preds = %lor.lhs.false38
  %6 = load %struct.bignum_st*, %struct.bignum_st** %s, align 8, !tbaa !25
  %call44 = tail call i32 @BN_ucmp(%struct.bignum_st* noundef %6, %struct.bignum_st* noundef nonnull %call21) #4
  %cmp45 = icmp sgt i32 %call44, -1
  br i1 %cmp45, label %if.then46, label %if.end47

if.then46:                                        ; preds = %lor.lhs.false42, %lor.lhs.false38, %lor.lhs.false35, %lor.lhs.false31, %lor.lhs.false27, %if.end24
  tail call void @ERR_new() #4
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 403, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.ossl_ecdsa_simple_verify_sig, i64 0, i64 0)) #4
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 16, i32 noundef 156, i8* noundef null) #4
  br label %err

if.end47:                                         ; preds = %lor.lhs.false42
  %7 = load %struct.bignum_st*, %struct.bignum_st** %s, align 8, !tbaa !25
  %call49 = tail call i32 @ossl_ec_group_do_inverse_ord(%struct.ec_group_st* noundef nonnull %call, %struct.bignum_st* noundef %call15, %struct.bignum_st* noundef %7, %struct.bignum_ctx* noundef nonnull %call10) #4
  %tobool50.not = icmp eq i32 %call49, 0
  br i1 %tobool50.not, label %if.then51, label %if.end52

if.then51:                                        ; preds = %if.end47
  tail call void @ERR_new() #4
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 409, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.ossl_ecdsa_simple_verify_sig, i64 0, i64 0)) #4
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 16, i32 noundef 524291, i8* noundef null) #4
  br label %err

if.end52:                                         ; preds = %if.end47
  %call53 = tail call i32 @BN_num_bits(%struct.bignum_st* noundef nonnull %call21) #4
  %mul = shl nsw i32 %dgst_len, 3
  %cmp54 = icmp sgt i32 %mul, %call53
  br i1 %cmp54, label %if.then55, label %if.end56

if.then55:                                        ; preds = %if.end52
  %add = add nsw i32 %call53, 7
  %div = sdiv i32 %add, 8
  br label %if.end56

if.end56:                                         ; preds = %if.then55, %if.end52
  %dgst_len.addr.0 = phi i32 [ %div, %if.then55 ], [ %dgst_len, %if.end52 ]
  %call57 = tail call %struct.bignum_st* @BN_bin2bn(i8* noundef %dgst, i32 noundef %dgst_len.addr.0, %struct.bignum_st* noundef %call16) #4
  %tobool58.not = icmp eq %struct.bignum_st* %call57, null
  br i1 %tobool58.not, label %if.then59, label %if.end60

if.then59:                                        ; preds = %if.end56
  tail call void @ERR_new() #4
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 420, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.ossl_ecdsa_simple_verify_sig, i64 0, i64 0)) #4
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 16, i32 noundef 524291, i8* noundef null) #4
  br label %err

if.end60:                                         ; preds = %if.end56
  %mul61 = shl nsw i32 %dgst_len.addr.0, 3
  %cmp62 = icmp sgt i32 %mul61, %call53
  br i1 %cmp62, label %land.lhs.true, label %if.end66

land.lhs.true:                                    ; preds = %if.end60
  %and = and i32 %call53, 7
  %sub = sub nuw nsw i32 8, %and
  %call63 = tail call i32 @BN_rshift(%struct.bignum_st* noundef %call16, %struct.bignum_st* noundef %call16, i32 noundef %sub) #4
  %tobool64.not = icmp eq i32 %call63, 0
  br i1 %tobool64.not, label %if.then65, label %if.end66

if.then65:                                        ; preds = %land.lhs.true
  tail call void @ERR_new() #4
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 425, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.ossl_ecdsa_simple_verify_sig, i64 0, i64 0)) #4
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 16, i32 noundef 524291, i8* noundef null) #4
  br label %err

if.end66:                                         ; preds = %land.lhs.true, %if.end60
  %call67 = tail call i32 @BN_mod_mul(%struct.bignum_st* noundef %call14, %struct.bignum_st* noundef %call16, %struct.bignum_st* noundef %call15, %struct.bignum_st* noundef nonnull %call21, %struct.bignum_ctx* noundef nonnull %call10) #4
  %tobool68.not = icmp eq i32 %call67, 0
  br i1 %tobool68.not, label %if.then69, label %if.end70

if.then69:                                        ; preds = %if.end66
  tail call void @ERR_new() #4
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 430, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.ossl_ecdsa_simple_verify_sig, i64 0, i64 0)) #4
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 16, i32 noundef 524291, i8* noundef null) #4
  br label %err

if.end70:                                         ; preds = %if.end66
  %8 = load %struct.bignum_st*, %struct.bignum_st** %r, align 8, !tbaa !23
  %call72 = tail call i32 @BN_mod_mul(%struct.bignum_st* noundef %call15, %struct.bignum_st* noundef %8, %struct.bignum_st* noundef %call15, %struct.bignum_st* noundef nonnull %call21, %struct.bignum_ctx* noundef nonnull %call10) #4
  %tobool73.not = icmp eq i32 %call72, 0
  br i1 %tobool73.not, label %if.then74, label %if.end75

if.then74:                                        ; preds = %if.end70
  tail call void @ERR_new() #4
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 435, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.ossl_ecdsa_simple_verify_sig, i64 0, i64 0)) #4
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 16, i32 noundef 524291, i8* noundef null) #4
  br label %err

if.end75:                                         ; preds = %if.end70
  %call76 = tail call %struct.ec_point_st* @EC_POINT_new(%struct.ec_group_st* noundef nonnull %call) #4
  %cmp77 = icmp eq %struct.ec_point_st* %call76, null
  br i1 %cmp77, label %if.then78, label %if.end79

if.then78:                                        ; preds = %if.end75
  tail call void @ERR_new() #4
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 440, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.ossl_ecdsa_simple_verify_sig, i64 0, i64 0)) #4
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 16, i32 noundef 786688, i8* noundef null) #4
  br label %err

if.end79:                                         ; preds = %if.end75
  %call80 = tail call i32 @EC_POINT_mul(%struct.ec_group_st* noundef nonnull %call, %struct.ec_point_st* noundef nonnull %call76, %struct.bignum_st* noundef %call14, %struct.ec_point_st* noundef nonnull %call3, %struct.bignum_st* noundef %call15, %struct.bignum_ctx* noundef nonnull %call10) #4
  %tobool81.not = icmp eq i32 %call80, 0
  br i1 %tobool81.not, label %if.then82, label %if.end83

if.then82:                                        ; preds = %if.end79
  tail call void @ERR_new() #4
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 444, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.ossl_ecdsa_simple_verify_sig, i64 0, i64 0)) #4
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 16, i32 noundef 524304, i8* noundef null) #4
  br label %err

if.end83:                                         ; preds = %if.end79
  %call84 = tail call i32 @EC_POINT_get_affine_coordinates(%struct.ec_group_st* noundef nonnull %call, %struct.ec_point_st* noundef nonnull %call76, %struct.bignum_st* noundef nonnull %call17, %struct.bignum_st* noundef null, %struct.bignum_ctx* noundef nonnull %call10) #4
  %tobool85.not = icmp eq i32 %call84, 0
  br i1 %tobool85.not, label %if.then86, label %if.end87

if.then86:                                        ; preds = %if.end83
  tail call void @ERR_new() #4
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 449, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.ossl_ecdsa_simple_verify_sig, i64 0, i64 0)) #4
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 16, i32 noundef 524304, i8* noundef null) #4
  br label %err

if.end87:                                         ; preds = %if.end83
  %call88 = tail call i32 @BN_nnmod(%struct.bignum_st* noundef %call14, %struct.bignum_st* noundef nonnull %call17, %struct.bignum_st* noundef nonnull %call21, %struct.bignum_ctx* noundef nonnull %call10) #4
  %tobool89.not = icmp eq i32 %call88, 0
  br i1 %tobool89.not, label %if.then90, label %if.end91

if.then90:                                        ; preds = %if.end87
  tail call void @ERR_new() #4
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 454, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.ossl_ecdsa_simple_verify_sig, i64 0, i64 0)) #4
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 16, i32 noundef 524291, i8* noundef null) #4
  br label %err

if.end91:                                         ; preds = %if.end87
  %9 = load %struct.bignum_st*, %struct.bignum_st** %r, align 8, !tbaa !23
  %call93 = tail call i32 @BN_ucmp(%struct.bignum_st* noundef %call14, %struct.bignum_st* noundef %9) #4
  %cmp94 = icmp eq i32 %call93, 0
  %conv = zext i1 %cmp94 to i32
  br label %err

err:                                              ; preds = %if.end91, %if.then90, %if.then86, %if.then82, %if.then78, %if.then74, %if.then69, %if.then65, %if.then59, %if.then51, %if.then46, %if.then23, %if.then19
  %ret.0 = phi i32 [ -1, %if.then19 ], [ -1, %if.then23 ], [ 0, %if.then46 ], [ -1, %if.then78 ], [ %conv, %if.end91 ], [ -1, %if.then90 ], [ -1, %if.then86 ], [ -1, %if.then82 ], [ -1, %if.then74 ], [ -1, %if.then69 ], [ -1, %if.then65 ], [ -1, %if.then59 ], [ -1, %if.then51 ]
  %point.0 = phi %struct.ec_point_st* [ null, %if.then19 ], [ null, %if.then23 ], [ null, %if.then46 ], [ null, %if.then78 ], [ %call76, %if.end91 ], [ %call76, %if.then90 ], [ %call76, %if.then86 ], [ %call76, %if.then82 ], [ null, %if.then74 ], [ null, %if.then69 ], [ null, %if.then65 ], [ null, %if.then59 ], [ null, %if.then51 ]
  tail call void @BN_CTX_end(%struct.bignum_ctx* noundef nonnull %call10) #4
  tail call void @BN_CTX_free(%struct.bignum_ctx* noundef nonnull %call10) #4
  tail call void @EC_POINT_free(%struct.ec_point_st* noundef %point.0) #4
  br label %cleanup

cleanup:                                          ; preds = %err, %if.then12, %if.then8, %if.then
  %retval.0 = phi i32 [ -1, %if.then ], [ -1, %if.then12 ], [ %ret.0, %err ], [ -1, %if.then8 ]
  ret i32 %retval.0
}

declare %struct.ec_point_st* @EC_KEY_get0_public_key(%struct.ec_key_st* noundef) local_unnamed_addr #1

declare void @BN_CTX_start(%struct.bignum_ctx* noundef) local_unnamed_addr #1

declare %struct.bignum_st* @BN_CTX_get(%struct.bignum_ctx* noundef) local_unnamed_addr #1

declare i32 @BN_is_negative(%struct.bignum_st* noundef) local_unnamed_addr #1

declare i32 @BN_ucmp(%struct.bignum_st* noundef, %struct.bignum_st* noundef) local_unnamed_addr #1

declare i32 @ossl_ec_group_do_inverse_ord(%struct.ec_group_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_ctx* noundef) local_unnamed_addr #1

declare i32 @BN_mod_mul(%struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_ctx* noundef) local_unnamed_addr #1

declare %struct.ec_point_st* @EC_POINT_new(%struct.ec_group_st* noundef) local_unnamed_addr #1

declare i32 @EC_POINT_mul(%struct.ec_group_st* noundef, %struct.ec_point_st* noundef, %struct.bignum_st* noundef, %struct.ec_point_st* noundef, %struct.bignum_st* noundef, %struct.bignum_ctx* noundef) local_unnamed_addr #1

declare i32 @EC_POINT_get_affine_coordinates(%struct.ec_group_st* noundef, %struct.ec_point_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_ctx* noundef) local_unnamed_addr #1

declare i32 @BN_nnmod(%struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_ctx* noundef) local_unnamed_addr #1

declare void @BN_CTX_end(%struct.bignum_ctx* noundef) local_unnamed_addr #1

declare void @EC_POINT_free(%struct.ec_point_st* noundef) local_unnamed_addr #1

declare %struct.bignum_st* @BN_secure_new() local_unnamed_addr #1

declare i32 @BN_set_bit(%struct.bignum_st* noundef, i32 noundef) local_unnamed_addr #1

declare i32 @BN_generate_dsa_nonce(%struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef, i8* noundef, i64 noundef, %struct.bignum_ctx* noundef) local_unnamed_addr #1

declare i32 @BN_priv_rand_range_ex(%struct.bignum_st* noundef, %struct.bignum_st* noundef, i32 noundef, %struct.bignum_ctx* noundef) local_unnamed_addr #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #3 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nobuiltin nounwind "no-builtins" }
attributes #5 = { nobuiltin "no-builtins" }
attributes #6 = { nounwind }
attributes #7 = { nobuiltin nounwind readonly willreturn "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{!"clang version 14.0.0"}
!4 = !{!5, !6, i64 24}
!5 = !{!"ec_key_st", !6, i64 0, !6, i64 8, !9, i64 16, !6, i64 24, !6, i64 32, !6, i64 40, !9, i64 48, !7, i64 52, !7, i64 56, !9, i64 60, !10, i64 64, !6, i64 80, !6, i64 88, !6, i64 96, !11, i64 104}
!6 = !{!"any pointer", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!"int", !7, i64 0}
!10 = !{!"crypto_ex_data_st", !6, i64 0, !6, i64 8}
!11 = !{!"long", !7, i64 0}
!12 = !{!13, !6, i64 0}
!13 = !{!"ec_group_st", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !9, i64 32, !9, i64 36, !9, i64 40, !7, i64 44, !6, i64 48, !11, i64 56, !6, i64 64, !7, i64 72, !6, i64 96, !6, i64 104, !9, i64 112, !6, i64 120, !6, i64 128, !6, i64 136, !6, i64 144, !7, i64 152, !7, i64 160, !6, i64 168, !6, i64 176}
!14 = !{!15, !6, i64 376}
!15 = !{!"ec_method_st", !9, i64 0, !9, i64 4, !6, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !6, i64 40, !6, i64 48, !6, i64 56, !6, i64 64, !6, i64 72, !6, i64 80, !6, i64 88, !6, i64 96, !6, i64 104, !6, i64 112, !6, i64 120, !6, i64 128, !6, i64 136, !6, i64 144, !6, i64 152, !6, i64 160, !6, i64 168, !6, i64 176, !6, i64 184, !6, i64 192, !6, i64 200, !6, i64 208, !6, i64 216, !6, i64 224, !6, i64 232, !6, i64 240, !6, i64 248, !6, i64 256, !6, i64 264, !6, i64 272, !6, i64 280, !6, i64 288, !6, i64 296, !6, i64 304, !6, i64 312, !6, i64 320, !6, i64 328, !6, i64 336, !6, i64 344, !6, i64 352, !6, i64 360, !6, i64 368, !6, i64 376, !6, i64 384, !6, i64 392, !6, i64 400, !6, i64 408, !6, i64 416, !6, i64 424, !6, i64 432}
!16 = !{!15, !6, i64 384}
!17 = !{!15, !6, i64 392}
!18 = !{!6, !6, i64 0}
!19 = !{!9, !9, i64 0}
!20 = !{!5, !6, i64 88}
!21 = distinct !{!21, !22}
!22 = !{!"llvm.loop.mustprogress"}
!23 = !{!24, !6, i64 0}
!24 = !{!"ECDSA_SIG_st", !6, i64 0, !6, i64 8}
!25 = !{!24, !6, i64 8}
!26 = !{!13, !6, i64 144}
