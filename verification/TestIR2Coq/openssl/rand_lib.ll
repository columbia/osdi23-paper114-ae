; ModuleID = 'crypto/rand/rand_lib.c'
source_filename = "crypto/rand/rand_lib.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rand_meth_st = type { i32 (i8*, i32)*, i32 (i8*, i32)*, void ()*, i32 (i8*, i32, double)*, i32 (i8*, i32)*, i32 ()* }
%struct.engine_st = type opaque
%struct.ossl_lib_ctx_method = type { i32, i8* (%struct.ossl_lib_ctx_st*)*, void (i8*)* }
%struct.ossl_lib_ctx_st = type opaque
%struct.rand_pool_st = type { i8*, i64, i32, i32, i64, i64, i64, i64, i64 }
%struct.evp_rand_ctx_st = type opaque
%struct.rand_global_st = type { i8*, %struct.evp_rand_ctx_st*, %struct.evp_rand_ctx_st*, i32, i32, i8*, i8*, i8*, i8*, i8*, i8* }
%struct.evp_rand_st = type opaque
%struct.ossl_param_st = type { i8*, i32, i8*, i64, i64 }
%struct.conf_imodule_st = type opaque
%struct.conf_st = type { %struct.conf_method_st*, i8*, %struct.lhash_st_CONF_VALUE*, i32, i32, i8*, %struct.ossl_lib_ctx_st* }
%struct.conf_method_st = type { i8*, %struct.conf_st* (%struct.conf_method_st*)*, i32 (%struct.conf_st*)*, i32 (%struct.conf_st*)*, i32 (%struct.conf_st*)*, i32 (%struct.conf_st*, %struct.bio_st*, i64*)*, i32 (%struct.conf_st*, %struct.bio_st*)*, i32 (%struct.conf_st*, i8)*, i32 (%struct.conf_st*, i8)*, i32 (%struct.conf_st*, i8*, i64*)* }
%struct.bio_st = type opaque
%struct.lhash_st_CONF_VALUE = type { %union.lh_CONF_VALUE_dummy }
%union.lh_CONF_VALUE_dummy = type { i8* }
%struct.stack_st_CONF_VALUE = type opaque
%struct.stack_st = type opaque
%struct.ossl_init_settings_st = type opaque

@default_RAND_meth = internal unnamed_addr global %struct.rand_meth_st* null, align 8
@rand_inited = internal unnamed_addr global i1 false, align 4
@rand_engine_lock = internal unnamed_addr global i8* null, align 8
@rand_meth_lock = internal unnamed_addr global i8* null, align 8
@rand_init = internal global i32 0, align 4
@do_rand_init_ossl_ret_ = internal unnamed_addr global i32 0, align 4
@funct_ref = internal unnamed_addr global %struct.engine_st* null, align 8
@ossl_rand_meth = external global %struct.rand_meth_st, align 8
@.str = private unnamed_addr constant [23 x i8] c"crypto/rand/rand_lib.c\00", align 1
@__func__.RAND_pseudo_bytes = private unnamed_addr constant [18 x i8] c"RAND_pseudo_bytes\00", align 1
@__func__.RAND_priv_bytes_ex = private unnamed_addr constant [19 x i8] c"RAND_priv_bytes_ex\00", align 1
@__func__.RAND_bytes_ex = private unnamed_addr constant [14 x i8] c"RAND_bytes_ex\00", align 1
@__func__.RAND_get0_primary = private unnamed_addr constant [18 x i8] c"RAND_get0_primary\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"random\00", align 1
@__func__.RAND_set_DRBG_type = private unnamed_addr constant [19 x i8] c"RAND_set_DRBG_type\00", align 1
@__func__.RAND_set_seed_source_type = private unnamed_addr constant [26 x i8] c"RAND_set_seed_source_type\00", align 1
@rand_drbg_ossl_ctx_method = internal constant %struct.ossl_lib_ctx_method { i32 2, i8* (%struct.ossl_lib_ctx_st*)* @rand_ossl_ctx_new, void (i8*)* @rand_ossl_ctx_free }, align 8
@.str.2 = private unnamed_addr constant [9 x i8] c"SEED-SRC\00", align 1
@__func__.rand_new_seed = private unnamed_addr constant [14 x i8] c"rand_new_seed\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"CTR-DRBG\00", align 1
@__func__.rand_new_drbg = private unnamed_addr constant [14 x i8] c"rand_new_drbg\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"AES-256-CTR\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"cipher\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"digest\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"properties\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"mac\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"HMAC\00", align 1
@.str.10 = private unnamed_addr constant [16 x i8] c"reseed_requests\00", align 1
@.str.11 = private unnamed_addr constant [21 x i8] c"reseed_time_interval\00", align 1
@__func__.random_conf_init = private unnamed_addr constant [17 x i8] c"random_conf_init\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"seed\00", align 1
@.str.13 = private unnamed_addr constant [16 x i8] c"seed_properties\00", align 1
@.str.14 = private unnamed_addr constant [18 x i8] c"name=%s, value=%s\00", align 1
@__func__.random_set_string = private unnamed_addr constant [18 x i8] c"random_set_string\00", align 1

; Function Attrs: noinline nounwind uwtable
define void @ossl_rand_cleanup_int() local_unnamed_addr #0 {
entry:
  %0 = load %struct.rand_meth_st*, %struct.rand_meth_st** @default_RAND_meth, align 8, !tbaa !4
  %.b = load i1, i1* @rand_inited, align 4
  br i1 %.b, label %if.end, label %cleanup5

if.end:                                           ; preds = %entry
  %cmp.not = icmp eq %struct.rand_meth_st* %0, null
  br i1 %cmp.not, label %if.end4, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  %cleanup = getelementptr inbounds %struct.rand_meth_st, %struct.rand_meth_st* %0, i64 0, i32 2
  %1 = load void ()*, void ()** %cleanup, align 8, !tbaa !8
  %cmp1.not = icmp eq void ()* %1, null
  br i1 %cmp1.not, label %if.end4, label %if.then2

if.then2:                                         ; preds = %land.lhs.true
  tail call void %1() #6
  br label %if.end4

if.end4:                                          ; preds = %if.then2, %land.lhs.true, %if.end
  %call = tail call i32 @RAND_set_rand_method(%struct.rand_meth_st* noundef null) #7
  tail call void @ossl_rand_pool_cleanup() #6
  %2 = load i8*, i8** @rand_engine_lock, align 8, !tbaa !4
  tail call void @CRYPTO_THREAD_lock_free(i8* noundef %2) #6
  store i8* null, i8** @rand_engine_lock, align 8, !tbaa !4
  %3 = load i8*, i8** @rand_meth_lock, align 8, !tbaa !4
  tail call void @CRYPTO_THREAD_lock_free(i8* noundef %3) #6
  store i8* null, i8** @rand_meth_lock, align 8, !tbaa !4
  store i1 false, i1* @rand_inited, align 4
  br label %cleanup5

cleanup5:                                         ; preds = %entry, %if.end4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: noinline nounwind uwtable
define i32 @RAND_set_rand_method(%struct.rand_meth_st* noundef %meth) local_unnamed_addr #0 {
entry:
  %call = tail call fastcc i32 @rand_set_rand_method_internal(%struct.rand_meth_st* noundef %meth, %struct.engine_st* noundef null) #7
  ret i32 %call
}

declare void @ossl_rand_pool_cleanup() local_unnamed_addr #2

declare void @CRYPTO_THREAD_lock_free(i8* noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: noinline nounwind uwtable
define void @RAND_keep_random_devices_open(i32 noundef %keep) local_unnamed_addr #0 {
entry:
  %call = tail call i32 @CRYPTO_THREAD_run_once(i32* noundef nonnull @rand_init, void ()* noundef nonnull @do_rand_init_ossl_) #6
  %tobool = icmp ne i32 %call, 0
  %0 = load i32, i32* @do_rand_init_ossl_ret_, align 4
  %tobool1 = icmp ne i32 %0, 0
  %or.cond = select i1 %tobool, i1 %tobool1, i1 false
  br i1 %or.cond, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ossl_rand_pool_keep_random_devices_open(i32 noundef %keep) #6
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  ret void
}

declare i32 @CRYPTO_THREAD_run_once(i32* noundef, void ()* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal void @do_rand_init_ossl_() #0 {
entry:
  %call = tail call fastcc i32 @do_rand_init() #7
  store i32 %call, i32* @do_rand_init_ossl_ret_, align 4, !tbaa !10
  ret void
}

declare void @ossl_rand_pool_keep_random_devices_open(i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @RAND_poll() local_unnamed_addr #0 {
entry:
  %call = tail call %struct.rand_meth_st* @RAND_get_rand_method() #7
  %call1 = tail call %struct.rand_meth_st* @RAND_OpenSSL() #6
  %cmp = icmp eq %struct.rand_meth_st* %call, %call1
  %cmp2 = icmp eq %struct.rand_meth_st* %call, null
  %brmerge = select i1 %cmp2, i1 true, i1 %cmp
  %not.cmp2 = xor i1 %cmp2, true
  %.mux = zext i1 %not.cmp2 to i32
  br i1 %brmerge, label %cleanup29, label %if.then4

if.then4:                                         ; preds = %entry
  %call5 = tail call %struct.rand_pool_st* @ossl_rand_pool_new(i32 noundef 256, i32 noundef 1, i64 noundef 32, i64 noundef 12288) #6
  %cmp6 = icmp eq %struct.rand_pool_st* %call5, null
  br i1 %cmp6, label %cleanup29, label %if.end9

if.end9:                                          ; preds = %if.then4
  %call10 = tail call i64 @ossl_pool_acquire_entropy(%struct.rand_pool_st* noundef nonnull %call5) #6
  %cmp11 = icmp eq i64 %call10, 0
  br i1 %cmp11, label %cleanup, label %if.end14

if.end14:                                         ; preds = %if.end9
  %add = getelementptr inbounds %struct.rand_meth_st, %struct.rand_meth_st* %call, i64 0, i32 3
  %0 = load i32 (i8*, i32, double)*, i32 (i8*, i32, double)** %add, align 8, !tbaa !12
  %cmp15 = icmp eq i32 (i8*, i32, double)* %0, null
  br i1 %cmp15, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end14
  %call18 = tail call i8* @ossl_rand_pool_buffer(%struct.rand_pool_st* noundef nonnull %call5) #6
  %call19 = tail call i64 @ossl_rand_pool_length(%struct.rand_pool_st* noundef nonnull %call5) #6
  %conv20 = trunc i64 %call19 to i32
  %call21 = tail call i64 @ossl_rand_pool_entropy(%struct.rand_pool_st* noundef nonnull %call5) #6
  %conv22 = uitofp i64 %call21 to double
  %div = fmul double %conv22, 1.250000e-01
  %call23 = tail call i32 %0(i8* noundef %call18, i32 noundef %conv20, double noundef %div) #6
  %cmp24 = icmp ne i32 %call23, 0
  %spec.select = zext i1 %cmp24 to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %if.end14, %lor.lhs.false
  %ret.0 = phi i32 [ 0, %if.end9 ], [ 0, %if.end14 ], [ %spec.select, %lor.lhs.false ]
  tail call void @ossl_rand_pool_free(%struct.rand_pool_st* noundef nonnull %call5) #6
  br label %cleanup29

cleanup29:                                        ; preds = %entry, %if.then4, %cleanup
  %retval.1 = phi i32 [ %.mux, %entry ], [ %ret.0, %cleanup ], [ 0, %if.then4 ]
  ret i32 %retval.1
}

; Function Attrs: noinline nounwind uwtable
define %struct.rand_meth_st* @RAND_get_rand_method() local_unnamed_addr #0 {
entry:
  %call = tail call i32 @CRYPTO_THREAD_run_once(i32* noundef nonnull @rand_init, void ()* noundef nonnull @do_rand_init_ossl_) #6
  %tobool = icmp ne i32 %call, 0
  %0 = load i32, i32* @do_rand_init_ossl_ret_, align 4
  %tobool1 = icmp ne i32 %0, 0
  %or.cond = select i1 %tobool, i1 %tobool1, i1 false
  br i1 %or.cond, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %1 = load i8*, i8** @rand_meth_lock, align 8, !tbaa !4
  %call2 = tail call i32 @CRYPTO_THREAD_write_lock(i8* noundef %1) #6
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %cleanup, label %if.end5

if.end5:                                          ; preds = %if.end
  %2 = load %struct.rand_meth_st*, %struct.rand_meth_st** @default_RAND_meth, align 8, !tbaa !4
  %cmp = icmp eq %struct.rand_meth_st* %2, null
  br i1 %cmp, label %if.then6, label %if.end14

if.then6:                                         ; preds = %if.end5
  %call7 = tail call %struct.engine_st* @ENGINE_get_default_RAND() #6
  %cmp8.not = icmp eq %struct.engine_st* %call7, null
  br i1 %cmp8.not, label %if.else, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.then6
  %call9 = tail call %struct.rand_meth_st* @ENGINE_get_RAND(%struct.engine_st* noundef nonnull %call7) #6
  %cmp10.not = icmp eq %struct.rand_meth_st* %call9, null
  br i1 %cmp10.not, label %if.else, label %if.then11

if.then11:                                        ; preds = %land.lhs.true
  store %struct.engine_st* %call7, %struct.engine_st** @funct_ref, align 8, !tbaa !4
  br label %if.end13

if.else:                                          ; preds = %land.lhs.true, %if.then6
  %call12 = tail call i32 @ENGINE_finish(%struct.engine_st* noundef %call7) #6
  br label %if.end13

if.end13:                                         ; preds = %if.else, %if.then11
  %storemerge = phi %struct.rand_meth_st* [ @ossl_rand_meth, %if.else ], [ %call9, %if.then11 ]
  store %struct.rand_meth_st* %storemerge, %struct.rand_meth_st** @default_RAND_meth, align 8, !tbaa !4
  br label %if.end14

if.end14:                                         ; preds = %if.end13, %if.end5
  %3 = phi %struct.rand_meth_st* [ %storemerge, %if.end13 ], [ %2, %if.end5 ]
  %4 = load i8*, i8** @rand_meth_lock, align 8, !tbaa !4
  %call15 = tail call i32 @CRYPTO_THREAD_unlock(i8* noundef %4) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry, %if.end14
  %retval.0 = phi %struct.rand_meth_st* [ %3, %if.end14 ], [ null, %entry ], [ null, %if.end ]
  ret %struct.rand_meth_st* %retval.0
}

declare %struct.rand_meth_st* @RAND_OpenSSL() local_unnamed_addr #2

declare %struct.rand_pool_st* @ossl_rand_pool_new(i32 noundef, i32 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

declare i64 @ossl_pool_acquire_entropy(%struct.rand_pool_st* noundef) local_unnamed_addr #2

declare i8* @ossl_rand_pool_buffer(%struct.rand_pool_st* noundef) local_unnamed_addr #2

declare i64 @ossl_rand_pool_length(%struct.rand_pool_st* noundef) local_unnamed_addr #2

declare i64 @ossl_rand_pool_entropy(%struct.rand_pool_st* noundef) local_unnamed_addr #2

declare void @ossl_rand_pool_free(%struct.rand_pool_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @rand_set_rand_method_internal(%struct.rand_meth_st* noundef %meth, %struct.engine_st* noundef %e) unnamed_addr #0 {
entry:
  %call = tail call i32 @CRYPTO_THREAD_run_once(i32* noundef nonnull @rand_init, void ()* noundef nonnull @do_rand_init_ossl_) #6
  %tobool = icmp ne i32 %call, 0
  %0 = load i32, i32* @do_rand_init_ossl_ret_, align 4
  %tobool1 = icmp ne i32 %0, 0
  %or.cond = select i1 %tobool, i1 %tobool1, i1 false
  br i1 %or.cond, label %if.end, label %return

if.end:                                           ; preds = %entry
  %1 = load i8*, i8** @rand_meth_lock, align 8, !tbaa !4
  %call2 = tail call i32 @CRYPTO_THREAD_write_lock(i8* noundef %1) #6
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %return, label %if.end5

if.end5:                                          ; preds = %if.end
  %2 = load %struct.engine_st*, %struct.engine_st** @funct_ref, align 8, !tbaa !4
  %call6 = tail call i32 @ENGINE_finish(%struct.engine_st* noundef %2) #6
  store %struct.engine_st* %e, %struct.engine_st** @funct_ref, align 8, !tbaa !4
  store %struct.rand_meth_st* %meth, %struct.rand_meth_st** @default_RAND_meth, align 8, !tbaa !4
  %3 = load i8*, i8** @rand_meth_lock, align 8, !tbaa !4
  %call7 = tail call i32 @CRYPTO_THREAD_unlock(i8* noundef %3) #6
  br label %return

return:                                           ; preds = %if.end, %entry, %if.end5
  %retval.0 = phi i32 [ 1, %if.end5 ], [ 0, %entry ], [ 0, %if.end ]
  ret i32 %retval.0
}

declare i32 @CRYPTO_THREAD_write_lock(i8* noundef) local_unnamed_addr #2

declare %struct.engine_st* @ENGINE_get_default_RAND() local_unnamed_addr #2

declare %struct.rand_meth_st* @ENGINE_get_RAND(%struct.engine_st* noundef) local_unnamed_addr #2

declare i32 @ENGINE_finish(%struct.engine_st* noundef) local_unnamed_addr #2

declare i32 @CRYPTO_THREAD_unlock(i8* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @RAND_set_rand_engine(%struct.engine_st* noundef %engine) local_unnamed_addr #0 {
entry:
  %call = tail call i32 @CRYPTO_THREAD_run_once(i32* noundef nonnull @rand_init, void ()* noundef nonnull @do_rand_init_ossl_) #6
  %tobool = icmp ne i32 %call, 0
  %0 = load i32, i32* @do_rand_init_ossl_ret_, align 4
  %tobool1 = icmp ne i32 %0, 0
  %or.cond = select i1 %tobool, i1 %tobool1, i1 false
  br i1 %or.cond, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %cmp.not = icmp eq %struct.engine_st* %engine, null
  br i1 %cmp.not, label %if.end12, label %if.then2

if.then2:                                         ; preds = %if.end
  %call3 = tail call i32 @ENGINE_init(%struct.engine_st* noundef nonnull %engine) #6
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %cleanup, label %if.end6

if.end6:                                          ; preds = %if.then2
  %call7 = tail call %struct.rand_meth_st* @ENGINE_get_RAND(%struct.engine_st* noundef nonnull %engine) #6
  %cmp8 = icmp eq %struct.rand_meth_st* %call7, null
  br i1 %cmp8, label %if.then9, label %if.end12

if.then9:                                         ; preds = %if.end6
  %call10 = tail call i32 @ENGINE_finish(%struct.engine_st* noundef nonnull %engine) #6
  br label %cleanup

if.end12:                                         ; preds = %if.end6, %if.end
  %tmp_meth.0 = phi %struct.rand_meth_st* [ %call7, %if.end6 ], [ null, %if.end ]
  %1 = load i8*, i8** @rand_engine_lock, align 8, !tbaa !4
  %call13 = tail call i32 @CRYPTO_THREAD_write_lock(i8* noundef %1) #6
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.then15, label %if.end17

if.then15:                                        ; preds = %if.end12
  %call16 = tail call i32 @ENGINE_finish(%struct.engine_st* noundef %engine) #6
  br label %cleanup

if.end17:                                         ; preds = %if.end12
  %call18 = tail call fastcc i32 @rand_set_rand_method_internal(%struct.rand_meth_st* noundef %tmp_meth.0, %struct.engine_st* noundef %engine) #7
  %2 = load i8*, i8** @rand_engine_lock, align 8, !tbaa !4
  %call19 = tail call i32 @CRYPTO_THREAD_unlock(i8* noundef %2) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then2, %entry, %if.end17, %if.then15, %if.then9
  %retval.0 = phi i32 [ 0, %if.then9 ], [ 1, %if.end17 ], [ 0, %if.then15 ], [ 0, %entry ], [ 0, %if.then2 ]
  ret i32 %retval.0
}

declare i32 @ENGINE_init(%struct.engine_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define void @RAND_seed(i8* noundef %buf, i32 noundef %num) local_unnamed_addr #0 {
entry:
  %call = tail call %struct.rand_meth_st* @RAND_get_rand_method() #7
  %cmp.not = icmp eq %struct.rand_meth_st* %call, null
  br i1 %cmp.not, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %seed = getelementptr inbounds %struct.rand_meth_st, %struct.rand_meth_st* %call, i64 0, i32 0
  %0 = load i32 (i8*, i32)*, i32 (i8*, i32)** %seed, align 8, !tbaa !13
  %cmp1.not = icmp eq i32 (i8*, i32)* %0, null
  br i1 %cmp1.not, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %call3 = tail call i32 %0(i8* noundef %buf, i32 noundef %num) #6
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true, %entry
  %call4 = tail call %struct.evp_rand_ctx_st* @RAND_get0_primary(%struct.ossl_lib_ctx_st* noundef null) #7
  %cmp5 = icmp ne %struct.evp_rand_ctx_st* %call4, null
  %cmp7 = icmp sgt i32 %num, 0
  %or.cond = and i1 %cmp7, %cmp5
  br i1 %or.cond, label %if.then8, label %cleanup

if.then8:                                         ; preds = %if.end
  %conv20 = zext i32 %num to i64
  %call9 = tail call i32 @EVP_RAND_reseed(%struct.evp_rand_ctx_st* noundef nonnull %call4, i32 noundef 0, i8* noundef null, i64 noundef 0, i8* noundef %buf, i64 noundef %conv20) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then8, %if.then
  ret void
}

; Function Attrs: noinline nounwind uwtable
define %struct.evp_rand_ctx_st* @RAND_get0_primary(%struct.ossl_lib_ctx_st* noundef %ctx) local_unnamed_addr #0 {
entry:
  %call = tail call fastcc %struct.rand_global_st* @rand_get_global(%struct.ossl_lib_ctx_st* noundef %ctx) #7
  %cmp = icmp eq %struct.rand_global_st* %call, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %lock = getelementptr inbounds %struct.rand_global_st, %struct.rand_global_st* %call, i64 0, i32 0
  %0 = load i8*, i8** %lock, align 8, !tbaa !14
  %call1 = tail call i32 @CRYPTO_THREAD_read_lock(i8* noundef %0) #6
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %cleanup, label %if.end3

if.end3:                                          ; preds = %if.end
  %primary = getelementptr inbounds %struct.rand_global_st, %struct.rand_global_st* %call, i64 0, i32 2
  %1 = load %struct.evp_rand_ctx_st*, %struct.evp_rand_ctx_st** %primary, align 8, !tbaa !16
  %2 = load i8*, i8** %lock, align 8, !tbaa !14
  %call5 = tail call i32 @CRYPTO_THREAD_unlock(i8* noundef %2) #6
  %cmp6.not = icmp eq %struct.evp_rand_ctx_st* %1, null
  br i1 %cmp6.not, label %if.end8, label %cleanup

if.end8:                                          ; preds = %if.end3
  %3 = load i8*, i8** %lock, align 8, !tbaa !14
  %call10 = tail call i32 @CRYPTO_THREAD_write_lock(i8* noundef %3) #6
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %cleanup, label %if.end13

if.end13:                                         ; preds = %if.end8
  %4 = load %struct.evp_rand_ctx_st*, %struct.evp_rand_ctx_st** %primary, align 8, !tbaa !16
  %cmp15.not = icmp eq %struct.evp_rand_ctx_st* %4, null
  br i1 %cmp15.not, label %if.end19, label %cleanup.sink.split

if.end19:                                         ; preds = %if.end13
  %seed = getelementptr inbounds %struct.rand_global_st, %struct.rand_global_st* %call, i64 0, i32 1
  %5 = load %struct.evp_rand_ctx_st*, %struct.evp_rand_ctx_st** %seed, align 8, !tbaa !17
  %cmp20 = icmp eq %struct.evp_rand_ctx_st* %5, null
  br i1 %cmp20, label %if.then21, label %if.end26

if.then21:                                        ; preds = %if.end19
  %call22 = tail call i32 @ERR_set_mark() #6
  %call23 = tail call fastcc %struct.evp_rand_ctx_st* @rand_new_seed(%struct.ossl_lib_ctx_st* noundef %ctx) #7
  store %struct.evp_rand_ctx_st* %call23, %struct.evp_rand_ctx_st** %seed, align 8, !tbaa !17
  %call25 = tail call i32 @ERR_pop_to_mark() #6
  %.pre = load %struct.evp_rand_ctx_st*, %struct.evp_rand_ctx_st** %seed, align 8, !tbaa !17
  br label %if.end26

if.end26:                                         ; preds = %if.then21, %if.end19
  %6 = phi %struct.evp_rand_ctx_st* [ %.pre, %if.then21 ], [ %5, %if.end19 ]
  %call28 = tail call fastcc %struct.evp_rand_ctx_st* @rand_new_drbg(%struct.ossl_lib_ctx_st* noundef %ctx, %struct.evp_rand_ctx_st* noundef %6, i32 noundef 256, i64 noundef 3600) #7
  store %struct.evp_rand_ctx_st* %call28, %struct.evp_rand_ctx_st** %primary, align 8, !tbaa !16
  %cmp30.not = icmp eq %struct.evp_rand_ctx_st* %call28, null
  br i1 %cmp30.not, label %cleanup.sink.split, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end26
  %call31 = tail call i32 @EVP_RAND_enable_locking(%struct.evp_rand_ctx_st* noundef nonnull %call28) #6
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %if.then33, label %cleanup.sink.split

if.then33:                                        ; preds = %land.lhs.true
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 650, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.RAND_get0_primary, i64 0, i64 0)) #6
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 6, i32 noundef 212, i8* noundef null) #6
  tail call void @EVP_RAND_CTX_free(%struct.evp_rand_ctx_st* noundef nonnull %call28) #6
  store %struct.evp_rand_ctx_st* null, %struct.evp_rand_ctx_st** %primary, align 8, !tbaa !16
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end26, %land.lhs.true, %if.then33, %if.end13
  %retval.0.ph = phi %struct.evp_rand_ctx_st* [ %4, %if.end13 ], [ %call28, %land.lhs.true ], [ null, %if.then33 ], [ null, %if.end26 ]
  %7 = load i8*, i8** %lock, align 8, !tbaa !14
  %call37 = tail call i32 @CRYPTO_THREAD_unlock(i8* noundef %7) #6
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end8, %if.end3, %if.end, %entry
  %retval.0 = phi %struct.evp_rand_ctx_st* [ null, %entry ], [ null, %if.end ], [ %1, %if.end3 ], [ null, %if.end8 ], [ %retval.0.ph, %cleanup.sink.split ]
  ret %struct.evp_rand_ctx_st* %retval.0
}

declare i32 @EVP_RAND_reseed(%struct.evp_rand_ctx_st* noundef, i32 noundef, i8* noundef, i64 noundef, i8* noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define void @RAND_add(i8* noundef %buf, i32 noundef %num, double noundef %randomness) local_unnamed_addr #0 {
entry:
  %call = tail call %struct.rand_meth_st* @RAND_get_rand_method() #7
  %cmp.not = icmp eq %struct.rand_meth_st* %call, null
  br i1 %cmp.not, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %add = getelementptr inbounds %struct.rand_meth_st, %struct.rand_meth_st* %call, i64 0, i32 3
  %0 = load i32 (i8*, i32, double)*, i32 (i8*, i32, double)** %add, align 8, !tbaa !12
  %cmp1.not = icmp eq i32 (i8*, i32, double)* %0, null
  br i1 %cmp1.not, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %call3 = tail call i32 %0(i8* noundef %buf, i32 noundef %num, double noundef %randomness) #6
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true, %entry
  %call4 = tail call %struct.evp_rand_ctx_st* @RAND_get0_primary(%struct.ossl_lib_ctx_st* noundef null) #7
  %cmp5 = icmp ne %struct.evp_rand_ctx_st* %call4, null
  %cmp7 = icmp sgt i32 %num, 0
  %or.cond = and i1 %cmp7, %cmp5
  br i1 %or.cond, label %if.then8, label %cleanup

if.then8:                                         ; preds = %if.end
  %conv20 = zext i32 %num to i64
  %call9 = tail call i32 @EVP_RAND_reseed(%struct.evp_rand_ctx_st* noundef nonnull %call4, i32 noundef 0, i8* noundef null, i64 noundef 0, i8* noundef %buf, i64 noundef %conv20) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then8, %if.then
  ret void
}

; Function Attrs: noinline nounwind uwtable
define i32 @RAND_pseudo_bytes(i8* noundef %buf, i32 noundef %num) local_unnamed_addr #0 {
entry:
  %call = tail call %struct.rand_meth_st* @RAND_get_rand_method() #7
  %cmp.not = icmp eq %struct.rand_meth_st* %call, null
  br i1 %cmp.not, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %pseudorand = getelementptr inbounds %struct.rand_meth_st, %struct.rand_meth_st* %call, i64 0, i32 4
  %0 = load i32 (i8*, i32)*, i32 (i8*, i32)** %pseudorand, align 8, !tbaa !18
  %cmp1.not = icmp eq i32 (i8*, i32)* %0, null
  br i1 %cmp1.not, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %call3 = tail call i32 %0(i8* noundef %buf, i32 noundef %num) #6
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true, %entry
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 284, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.RAND_pseudo_bytes, i64 0, i64 0)) #6
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 36, i32 noundef 101, i8* noundef null) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %call3, %if.then ], [ -1, %if.end ]
  ret i32 %retval.0
}

declare void @ERR_new() local_unnamed_addr #2

declare void @ERR_set_debug(i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #2

declare void @ERR_set_error(i32 noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @RAND_status() local_unnamed_addr #0 {
entry:
  %call = tail call %struct.rand_meth_st* @RAND_get_rand_method() #7
  %cmp.not = icmp eq %struct.rand_meth_st* %call, null
  br i1 %cmp.not, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %call1 = tail call %struct.rand_meth_st* @RAND_OpenSSL() #6
  %cmp2.not = icmp eq %struct.rand_meth_st* %call, %call1
  br i1 %cmp2.not, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %status = getelementptr inbounds %struct.rand_meth_st, %struct.rand_meth_st* %call, i64 0, i32 5
  %0 = load i32 ()*, i32 ()** %status, align 8, !tbaa !19
  %cmp3.not = icmp eq i32 ()* %0, null
  br i1 %cmp3.not, label %cleanup, label %cond.true

cond.true:                                        ; preds = %if.then
  %call5 = tail call i32 %0() #6
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true, %entry
  %call6 = tail call %struct.evp_rand_ctx_st* @RAND_get0_primary(%struct.ossl_lib_ctx_st* noundef null) #7
  %cmp7 = icmp eq %struct.evp_rand_ctx_st* %call6, null
  br i1 %cmp7, label %cleanup, label %if.end9

if.end9:                                          ; preds = %if.end
  %call10 = tail call i32 @EVP_RAND_get_state(%struct.evp_rand_ctx_st* noundef nonnull %call6) #6
  %cmp11 = icmp eq i32 %call10, 1
  %conv = zext i1 %cmp11 to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end, %cond.true, %if.then, %if.end9
  %retval.0 = phi i32 [ %conv, %if.end9 ], [ %call5, %cond.true ], [ 0, %if.then ], [ 0, %if.end ]
  ret i32 %retval.0
}

declare i32 @EVP_RAND_get_state(%struct.evp_rand_ctx_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @RAND_priv_bytes_ex(%struct.ossl_lib_ctx_st* noundef %ctx, i8* noundef %buf, i64 noundef %num, i32 noundef %strength) local_unnamed_addr #0 {
entry:
  %call = tail call %struct.rand_meth_st* @RAND_get_rand_method() #7
  %cmp.not = icmp eq %struct.rand_meth_st* %call, null
  br i1 %cmp.not, label %if.end7, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %call1 = tail call %struct.rand_meth_st* @RAND_OpenSSL() #6
  %cmp2.not = icmp eq %struct.rand_meth_st* %call, %call1
  br i1 %cmp2.not, label %if.end7, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %bytes = getelementptr inbounds %struct.rand_meth_st, %struct.rand_meth_st* %call, i64 0, i32 1
  %0 = load i32 (i8*, i32)*, i32 (i8*, i32)** %bytes, align 8, !tbaa !20
  %cmp3.not = icmp eq i32 (i8*, i32)* %0, null
  br i1 %cmp3.not, label %if.end, label %if.then4

if.then4:                                         ; preds = %if.then
  %conv = trunc i64 %num to i32
  %call6 = tail call i32 %0(i8* noundef %buf, i32 noundef %conv) #6
  br label %cleanup

if.end:                                           ; preds = %if.then
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 328, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.RAND_priv_bytes_ex, i64 0, i64 0)) #6
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 36, i32 noundef 101, i8* noundef null) #6
  br label %cleanup

if.end7:                                          ; preds = %land.lhs.true, %entry
  %call8 = tail call %struct.evp_rand_ctx_st* @RAND_get0_private(%struct.ossl_lib_ctx_st* noundef %ctx) #7
  %cmp9.not = icmp eq %struct.evp_rand_ctx_st* %call8, null
  br i1 %cmp9.not, label %cleanup, label %if.then11

if.then11:                                        ; preds = %if.end7
  %call12 = tail call i32 @EVP_RAND_generate(%struct.evp_rand_ctx_st* noundef nonnull %call8, i8* noundef %buf, i64 noundef %num, i32 noundef %strength, i32 noundef 0, i8* noundef null, i64 noundef 0) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %if.then11, %if.end, %if.then4
  %retval.0 = phi i32 [ %call6, %if.then4 ], [ -1, %if.end ], [ %call12, %if.then11 ], [ 0, %if.end7 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define %struct.evp_rand_ctx_st* @RAND_get0_private(%struct.ossl_lib_ctx_st* noundef %ctx) local_unnamed_addr #0 {
entry:
  %call = tail call fastcc %struct.rand_global_st* @rand_get_global(%struct.ossl_lib_ctx_st* noundef %ctx) #7
  %cmp = icmp eq %struct.rand_global_st* %call, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %private = getelementptr inbounds %struct.rand_global_st, %struct.rand_global_st* %call, i64 0, i32 4
  %call1 = tail call i8* @CRYPTO_THREAD_get_local(i32* noundef nonnull %private) #6
  %0 = bitcast i8* %call1 to %struct.evp_rand_ctx_st*
  %cmp2 = icmp eq i8* %call1, null
  br i1 %cmp2, label %if.then3, label %cleanup

if.then3:                                         ; preds = %if.end
  %call4 = tail call %struct.evp_rand_ctx_st* @RAND_get0_primary(%struct.ossl_lib_ctx_st* noundef %ctx) #7
  %cmp5 = icmp eq %struct.evp_rand_ctx_st* %call4, null
  br i1 %cmp5, label %cleanup, label %if.end7

if.end7:                                          ; preds = %if.then3
  %call8 = tail call %struct.ossl_lib_ctx_st* @ossl_lib_ctx_get_concrete(%struct.ossl_lib_ctx_st* noundef %ctx) #6
  %public = getelementptr inbounds %struct.rand_global_st, %struct.rand_global_st* %call, i64 0, i32 3
  %call9 = tail call i8* @CRYPTO_THREAD_get_local(i32* noundef nonnull %public) #6
  %cmp10 = icmp eq i8* %call9, null
  br i1 %cmp10, label %land.lhs.true, label %if.end13

land.lhs.true:                                    ; preds = %if.end7
  %1 = bitcast %struct.ossl_lib_ctx_st* %call8 to i8*
  %call11 = tail call i32 @ossl_init_thread_start(i8* noundef null, i8* noundef %1, void (i8*)* noundef nonnull @rand_delete_thread_state) #6
  %tobool.not = icmp eq i32 %call11, 0
  br i1 %tobool.not, label %cleanup, label %if.end13

if.end13:                                         ; preds = %land.lhs.true, %if.end7
  %call14 = tail call fastcc %struct.evp_rand_ctx_st* @rand_new_drbg(%struct.ossl_lib_ctx_st* noundef %call8, %struct.evp_rand_ctx_st* noundef nonnull %call4, i32 noundef 65536, i64 noundef 420) #7
  %2 = bitcast %struct.evp_rand_ctx_st* %call14 to i8*
  %call16 = tail call i32 @CRYPTO_THREAD_set_local(i32* noundef nonnull %private, i8* noundef %2) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.end13, %land.lhs.true, %if.then3, %entry
  %retval.0 = phi %struct.evp_rand_ctx_st* [ null, %entry ], [ null, %if.then3 ], [ null, %land.lhs.true ], [ %call14, %if.end13 ], [ %0, %if.end ]
  ret %struct.evp_rand_ctx_st* %retval.0
}

declare i32 @EVP_RAND_generate(%struct.evp_rand_ctx_st* noundef, i8* noundef, i64 noundef, i32 noundef, i32 noundef, i8* noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @RAND_priv_bytes(i8* noundef %buf, i32 noundef %num) local_unnamed_addr #0 {
entry:
  %cmp = icmp slt i32 %num, 0
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %conv2 = zext i32 %num to i64
  %call = tail call i32 @RAND_priv_bytes_ex(%struct.ossl_lib_ctx_st* noundef null, i8* noundef %buf, i64 noundef %conv2, i32 noundef 0) #7
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %call, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @RAND_bytes_ex(%struct.ossl_lib_ctx_st* noundef %ctx, i8* noundef %buf, i64 noundef %num, i32 noundef %strength) local_unnamed_addr #0 {
entry:
  %call = tail call %struct.rand_meth_st* @RAND_get_rand_method() #7
  %cmp.not = icmp eq %struct.rand_meth_st* %call, null
  br i1 %cmp.not, label %if.end7, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %call1 = tail call %struct.rand_meth_st* @RAND_OpenSSL() #6
  %cmp2.not = icmp eq %struct.rand_meth_st* %call, %call1
  br i1 %cmp2.not, label %if.end7, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %bytes = getelementptr inbounds %struct.rand_meth_st, %struct.rand_meth_st* %call, i64 0, i32 1
  %0 = load i32 (i8*, i32)*, i32 (i8*, i32)** %bytes, align 8, !tbaa !20
  %cmp3.not = icmp eq i32 (i8*, i32)* %0, null
  br i1 %cmp3.not, label %if.end, label %if.then4

if.then4:                                         ; preds = %if.then
  %conv = trunc i64 %num to i32
  %call6 = tail call i32 %0(i8* noundef %buf, i32 noundef %conv) #6
  br label %cleanup

if.end:                                           ; preds = %if.then
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 357, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.RAND_bytes_ex, i64 0, i64 0)) #6
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 36, i32 noundef 101, i8* noundef null) #6
  br label %cleanup

if.end7:                                          ; preds = %land.lhs.true, %entry
  %call8 = tail call %struct.evp_rand_ctx_st* @RAND_get0_public(%struct.ossl_lib_ctx_st* noundef %ctx) #7
  %cmp9.not = icmp eq %struct.evp_rand_ctx_st* %call8, null
  br i1 %cmp9.not, label %cleanup, label %if.then11

if.then11:                                        ; preds = %if.end7
  %call12 = tail call i32 @EVP_RAND_generate(%struct.evp_rand_ctx_st* noundef nonnull %call8, i8* noundef %buf, i64 noundef %num, i32 noundef %strength, i32 noundef 0, i8* noundef null, i64 noundef 0) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %if.then11, %if.end, %if.then4
  %retval.0 = phi i32 [ %call6, %if.then4 ], [ -1, %if.end ], [ %call12, %if.then11 ], [ 0, %if.end7 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define %struct.evp_rand_ctx_st* @RAND_get0_public(%struct.ossl_lib_ctx_st* noundef %ctx) local_unnamed_addr #0 {
entry:
  %call = tail call fastcc %struct.rand_global_st* @rand_get_global(%struct.ossl_lib_ctx_st* noundef %ctx) #7
  %cmp = icmp eq %struct.rand_global_st* %call, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %public = getelementptr inbounds %struct.rand_global_st, %struct.rand_global_st* %call, i64 0, i32 3
  %call1 = tail call i8* @CRYPTO_THREAD_get_local(i32* noundef nonnull %public) #6
  %0 = bitcast i8* %call1 to %struct.evp_rand_ctx_st*
  %cmp2 = icmp eq i8* %call1, null
  br i1 %cmp2, label %if.then3, label %cleanup

if.then3:                                         ; preds = %if.end
  %call4 = tail call %struct.evp_rand_ctx_st* @RAND_get0_primary(%struct.ossl_lib_ctx_st* noundef %ctx) #7
  %cmp5 = icmp eq %struct.evp_rand_ctx_st* %call4, null
  br i1 %cmp5, label %cleanup, label %if.end7

if.end7:                                          ; preds = %if.then3
  %call8 = tail call %struct.ossl_lib_ctx_st* @ossl_lib_ctx_get_concrete(%struct.ossl_lib_ctx_st* noundef %ctx) #6
  %private = getelementptr inbounds %struct.rand_global_st, %struct.rand_global_st* %call, i64 0, i32 4
  %call9 = tail call i8* @CRYPTO_THREAD_get_local(i32* noundef nonnull %private) #6
  %cmp10 = icmp eq i8* %call9, null
  br i1 %cmp10, label %land.lhs.true, label %if.end13

land.lhs.true:                                    ; preds = %if.end7
  %1 = bitcast %struct.ossl_lib_ctx_st* %call8 to i8*
  %call11 = tail call i32 @ossl_init_thread_start(i8* noundef null, i8* noundef %1, void (i8*)* noundef nonnull @rand_delete_thread_state) #6
  %tobool.not = icmp eq i32 %call11, 0
  br i1 %tobool.not, label %cleanup, label %if.end13

if.end13:                                         ; preds = %land.lhs.true, %if.end7
  %call14 = tail call fastcc %struct.evp_rand_ctx_st* @rand_new_drbg(%struct.ossl_lib_ctx_st* noundef %call8, %struct.evp_rand_ctx_st* noundef nonnull %call4, i32 noundef 65536, i64 noundef 420) #7
  %2 = bitcast %struct.evp_rand_ctx_st* %call14 to i8*
  %call16 = tail call i32 @CRYPTO_THREAD_set_local(i32* noundef nonnull %public, i8* noundef %2) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.end13, %land.lhs.true, %if.then3, %entry
  %retval.0 = phi %struct.evp_rand_ctx_st* [ null, %entry ], [ null, %if.then3 ], [ null, %land.lhs.true ], [ %call14, %if.end13 ], [ %0, %if.end ]
  ret %struct.evp_rand_ctx_st* %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @RAND_bytes(i8* noundef %buf, i32 noundef %num) local_unnamed_addr #0 {
entry:
  %cmp = icmp slt i32 %num, 0
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %conv2 = zext i32 %num to i64
  %call = tail call i32 @RAND_bytes_ex(%struct.ossl_lib_ctx_st* noundef null, i8* noundef %buf, i64 noundef %conv2, i32 noundef 0) #7
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %call, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.rand_global_st* @rand_get_global(%struct.ossl_lib_ctx_st* noundef %libctx) unnamed_addr #0 {
entry:
  %call = tail call i8* @ossl_lib_ctx_get_data(%struct.ossl_lib_ctx_st* noundef %libctx, i32 noundef 5, %struct.ossl_lib_ctx_method* noundef nonnull @rand_drbg_ossl_ctx_method) #6
  %0 = bitcast i8* %call to %struct.rand_global_st*
  ret %struct.rand_global_st* %0
}

declare i32 @CRYPTO_THREAD_read_lock(i8* noundef) local_unnamed_addr #2

declare i32 @ERR_set_mark() local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.evp_rand_ctx_st* @rand_new_seed(%struct.ossl_lib_ctx_st* noundef %libctx) unnamed_addr #0 {
entry:
  %call = tail call fastcc %struct.rand_global_st* @rand_get_global(%struct.ossl_lib_ctx_st* noundef %libctx) #7
  %seed_name = getelementptr inbounds %struct.rand_global_st, %struct.rand_global_st* %call, i64 0, i32 9
  %0 = load i8*, i8** %seed_name, align 8, !tbaa !21
  %cmp.not = icmp eq i8* %0, null
  %spec.select = select i1 %cmp.not, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8* %0
  %seed_propq = getelementptr inbounds %struct.rand_global_st, %struct.rand_global_st* %call, i64 0, i32 10
  %1 = load i8*, i8** %seed_propq, align 8, !tbaa !22
  %call2 = tail call %struct.evp_rand_st* @EVP_RAND_fetch(%struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef %spec.select, i8* noundef %1) #6
  %cmp3 = icmp eq %struct.evp_rand_st* %call2, null
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 535, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.rand_new_seed, i64 0, i64 0)) #6
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 36, i32 noundef 144, i8* noundef null) #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %call4 = tail call %struct.evp_rand_ctx_st* @EVP_RAND_CTX_new(%struct.evp_rand_st* noundef nonnull %call2, %struct.evp_rand_ctx_st* noundef null) #6
  tail call void @EVP_RAND_free(%struct.evp_rand_st* noundef nonnull %call2) #6
  %cmp5 = icmp eq %struct.evp_rand_ctx_st* %call4, null
  br i1 %cmp5, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.end
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 541, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.rand_new_seed, i64 0, i64 0)) #6
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 36, i32 noundef 143, i8* noundef null) #6
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %call8 = tail call i32 @EVP_RAND_instantiate(%struct.evp_rand_ctx_st* noundef nonnull %call4, i32 noundef 0, i32 noundef 0, i8* noundef null, i64 noundef 0, %struct.ossl_param_st* noundef null) #6
  %tobool.not = icmp eq i32 %call8, 0
  br i1 %tobool.not, label %if.then9, label %cleanup

if.then9:                                         ; preds = %if.end7
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 545, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.rand_new_seed, i64 0, i64 0)) #6
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 36, i32 noundef 108, i8* noundef null) #6
  tail call void @EVP_RAND_CTX_free(%struct.evp_rand_ctx_st* noundef nonnull %call4) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %if.then9, %if.then6, %if.then
  %retval.0 = phi %struct.evp_rand_ctx_st* [ null, %if.then ], [ null, %if.then6 ], [ null, %if.then9 ], [ %call4, %if.end7 ]
  ret %struct.evp_rand_ctx_st* %retval.0
}

declare i32 @ERR_pop_to_mark() local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.evp_rand_ctx_st* @rand_new_drbg(%struct.ossl_lib_ctx_st* noundef %libctx, %struct.evp_rand_ctx_st* noundef %parent, i32 noundef %reseed_interval, i64 noundef %reseed_time_interval) unnamed_addr #0 {
entry:
  %reseed_interval.addr = alloca i32, align 4
  %reseed_time_interval.addr = alloca i64, align 8
  %params = alloca [7 x %struct.ossl_param_st], align 16
  %tmp17 = alloca %struct.ossl_param_st, align 8
  %tmp24 = alloca %struct.ossl_param_st, align 8
  %tmp28 = alloca %struct.ossl_param_st, align 8
  %tmp30 = alloca %struct.ossl_param_st, align 8
  %tmp32 = alloca %struct.ossl_param_st, align 8
  %tmp33 = alloca %struct.ossl_param_st, align 8
  store i32 %reseed_interval, i32* %reseed_interval.addr, align 4, !tbaa !10
  store i64 %reseed_time_interval, i64* %reseed_time_interval.addr, align 8, !tbaa !23
  %call = tail call fastcc %struct.rand_global_st* @rand_get_global(%struct.ossl_lib_ctx_st* noundef %libctx) #7
  %0 = bitcast [7 x %struct.ossl_param_st]* %params to i8*
  call void @llvm.lifetime.start.p0i8(i64 280, i8* nonnull %0) #8
  %arraydecay = getelementptr inbounds [7 x %struct.ossl_param_st], [7 x %struct.ossl_param_st]* %params, i64 0, i64 0
  %rng_name = getelementptr inbounds %struct.rand_global_st, %struct.rand_global_st* %call, i64 0, i32 5
  %1 = load i8*, i8** %rng_name, align 8, !tbaa !25
  %cmp.not = icmp eq i8* %1, null
  %spec.select = select i1 %cmp.not, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i8* %1
  %rng_propq = getelementptr inbounds %struct.rand_global_st, %struct.rand_global_st* %call, i64 0, i32 8
  %2 = load i8*, i8** %rng_propq, align 8, !tbaa !26
  %call2 = tail call %struct.evp_rand_st* @EVP_RAND_fetch(%struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef %spec.select, i8* noundef %2) #6
  %cmp3 = icmp eq %struct.evp_rand_st* %call2, null
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 566, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.rand_new_drbg, i64 0, i64 0)) #6
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 36, i32 noundef 144, i8* noundef null) #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %call4 = tail call %struct.evp_rand_ctx_st* @EVP_RAND_CTX_new(%struct.evp_rand_st* noundef nonnull %call2, %struct.evp_rand_ctx_st* noundef %parent) #6
  tail call void @EVP_RAND_free(%struct.evp_rand_st* noundef nonnull %call2) #6
  %cmp5 = icmp eq %struct.evp_rand_ctx_st* %call4, null
  br i1 %cmp5, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.end
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 572, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.rand_new_drbg, i64 0, i64 0)) #6
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 36, i32 noundef 143, i8* noundef null) #6
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %rng_cipher = getelementptr inbounds %struct.rand_global_st, %struct.rand_global_st* %call, i64 0, i32 6
  %3 = load i8*, i8** %rng_cipher, align 8, !tbaa !27
  %cmp8.not = icmp eq i8* %3, null
  %spec.select71 = select i1 %cmp8.not, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i8* %3
  %incdec.ptr = getelementptr inbounds [7 x %struct.ossl_param_st], [7 x %struct.ossl_param_st]* %params, i64 0, i64 1
  %params72 = getelementptr inbounds [7 x %struct.ossl_param_st], [7 x %struct.ossl_param_st]* %params, i64 0, i64 0
  call void @OSSL_PARAM_construct_utf8_string(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %params72, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i8* noundef %spec.select71, i64 noundef 0) #6
  %rng_digest = getelementptr inbounds %struct.rand_global_st, %struct.rand_global_st* %call, i64 0, i32 7
  %4 = load i8*, i8** %rng_digest, align 8, !tbaa !28
  %cmp14.not = icmp eq i8* %4, null
  br i1 %cmp14.not, label %if.end19, label %if.then15

if.then15:                                        ; preds = %if.end7
  %incdec.ptr16 = getelementptr inbounds [7 x %struct.ossl_param_st], [7 x %struct.ossl_param_st]* %params, i64 0, i64 2
  %5 = bitcast %struct.ossl_param_st* %tmp17 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %5) #8
  call void @OSSL_PARAM_construct_utf8_string(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %tmp17, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i8* noundef nonnull %4, i64 noundef 0) #6
  %6 = bitcast %struct.ossl_param_st* %incdec.ptr to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(40) %6, i8* noundef nonnull align 8 dereferenceable(40) %5, i64 40, i1 false), !tbaa.struct !29
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %5) #8
  br label %if.end19

if.end19:                                         ; preds = %if.then15, %if.end7
  %p.0 = phi %struct.ossl_param_st* [ %incdec.ptr16, %if.then15 ], [ %incdec.ptr, %if.end7 ]
  %7 = load i8*, i8** %rng_propq, align 8, !tbaa !26
  %cmp21.not = icmp eq i8* %7, null
  br i1 %cmp21.not, label %if.end26, label %if.then22

if.then22:                                        ; preds = %if.end19
  %incdec.ptr23 = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %p.0, i64 1
  %8 = bitcast %struct.ossl_param_st* %tmp24 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %8) #8
  call void @OSSL_PARAM_construct_utf8_string(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %tmp24, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0), i8* noundef nonnull %7, i64 noundef 0) #6
  %9 = bitcast %struct.ossl_param_st* %p.0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(40) %9, i8* noundef nonnull align 8 dereferenceable(40) %8, i64 40, i1 false), !tbaa.struct !29
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %8) #8
  br label %if.end26

if.end26:                                         ; preds = %if.then22, %if.end19
  %p.1 = phi %struct.ossl_param_st* [ %incdec.ptr23, %if.then22 ], [ %p.0, %if.end19 ]
  %incdec.ptr27 = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %p.1, i64 1
  %10 = bitcast %struct.ossl_param_st* %tmp28 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %10) #8
  call void @OSSL_PARAM_construct_utf8_string(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %tmp28, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0), i64 noundef 0) #6
  %11 = bitcast %struct.ossl_param_st* %p.1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(40) %11, i8* noundef nonnull align 8 dereferenceable(40) %10, i64 40, i1 false), !tbaa.struct !29
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %10) #8
  %incdec.ptr29 = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %p.1, i64 2
  %12 = bitcast %struct.ossl_param_st* %tmp30 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %12) #8
  call void @OSSL_PARAM_construct_uint(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %tmp30, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.10, i64 0, i64 0), i32* noundef nonnull %reseed_interval.addr) #6
  %13 = bitcast %struct.ossl_param_st* %incdec.ptr27 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(40) %13, i8* noundef nonnull align 8 dereferenceable(40) %12, i64 40, i1 false), !tbaa.struct !29
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %12) #8
  %incdec.ptr31 = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %p.1, i64 3
  %14 = bitcast %struct.ossl_param_st* %tmp32 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %14) #8
  call void @OSSL_PARAM_construct_time_t(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %tmp32, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.11, i64 0, i64 0), i64* noundef nonnull %reseed_time_interval.addr) #6
  %15 = bitcast %struct.ossl_param_st* %incdec.ptr29 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(40) %15, i8* noundef nonnull align 8 dereferenceable(40) %14, i64 40, i1 false), !tbaa.struct !29
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %14) #8
  %16 = bitcast %struct.ossl_param_st* %tmp33 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %16) #8
  call void @OSSL_PARAM_construct_end(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %tmp33) #6
  %17 = bitcast %struct.ossl_param_st* %incdec.ptr31 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(40) %17, i8* noundef nonnull align 8 dereferenceable(40) %16, i64 40, i1 false), !tbaa.struct !29
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %16) #8
  %call35 = call i32 @EVP_RAND_instantiate(%struct.evp_rand_ctx_st* noundef nonnull %call4, i32 noundef 0, i32 noundef 0, i8* noundef null, i64 noundef 0, %struct.ossl_param_st* noundef nonnull %arraydecay) #6
  %tobool.not = icmp eq i32 %call35, 0
  br i1 %tobool.not, label %if.then36, label %cleanup

if.then36:                                        ; preds = %if.end26
  call void @ERR_new() #6
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 596, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.rand_new_drbg, i64 0, i64 0)) #6
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 36, i32 noundef 108, i8* noundef null) #6
  call void @EVP_RAND_CTX_free(%struct.evp_rand_ctx_st* noundef nonnull %call4) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end26, %if.then36, %if.then6, %if.then
  %retval.0 = phi %struct.evp_rand_ctx_st* [ null, %if.then ], [ null, %if.then6 ], [ null, %if.then36 ], [ %call4, %if.end26 ]
  call void @llvm.lifetime.end.p0i8(i64 280, i8* nonnull %0) #8
  ret %struct.evp_rand_ctx_st* %retval.0
}

declare i32 @EVP_RAND_enable_locking(%struct.evp_rand_ctx_st* noundef) local_unnamed_addr #2

declare void @EVP_RAND_CTX_free(%struct.evp_rand_ctx_st* noundef) local_unnamed_addr #2

declare i8* @CRYPTO_THREAD_get_local(i32* noundef) local_unnamed_addr #2

declare %struct.ossl_lib_ctx_st* @ossl_lib_ctx_get_concrete(%struct.ossl_lib_ctx_st* noundef) local_unnamed_addr #2

declare i32 @ossl_init_thread_start(i8* noundef, i8* noundef, void (i8*)* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal void @rand_delete_thread_state(i8* noundef %arg) #0 {
entry:
  %0 = bitcast i8* %arg to %struct.ossl_lib_ctx_st*
  %call = tail call fastcc %struct.rand_global_st* @rand_get_global(%struct.ossl_lib_ctx_st* noundef %0) #7
  %cmp = icmp eq %struct.rand_global_st* %call, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %public = getelementptr inbounds %struct.rand_global_st, %struct.rand_global_st* %call, i64 0, i32 3
  %call1 = tail call i8* @CRYPTO_THREAD_get_local(i32* noundef nonnull %public) #6
  %1 = bitcast i8* %call1 to %struct.evp_rand_ctx_st*
  %call3 = tail call i32 @CRYPTO_THREAD_set_local(i32* noundef nonnull %public, i8* noundef null) #6
  tail call void @EVP_RAND_CTX_free(%struct.evp_rand_ctx_st* noundef %1) #6
  %private = getelementptr inbounds %struct.rand_global_st, %struct.rand_global_st* %call, i64 0, i32 4
  %call4 = tail call i8* @CRYPTO_THREAD_get_local(i32* noundef nonnull %private) #6
  %2 = bitcast i8* %call4 to %struct.evp_rand_ctx_st*
  %call6 = tail call i32 @CRYPTO_THREAD_set_local(i32* noundef nonnull %private, i8* noundef null) #6
  tail call void @EVP_RAND_CTX_free(%struct.evp_rand_ctx_st* noundef %2) #6
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  ret void
}

declare i32 @CRYPTO_THREAD_set_local(i32* noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define void @ossl_random_add_conf_module() local_unnamed_addr #0 {
entry:
  %call = tail call i32 @CONF_module_add(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 (%struct.conf_imodule_st*, %struct.conf_st*)* noundef nonnull @random_conf_init, void (%struct.conf_imodule_st*)* noundef nonnull @random_conf_deinit) #6
  ret void
}

declare i32 @CONF_module_add(i8* noundef, i32 (%struct.conf_imodule_st*, %struct.conf_st*)* noundef, void (%struct.conf_imodule_st*)* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal i32 @random_conf_init(%struct.conf_imodule_st* noundef %md, %struct.conf_st* noundef %cnf) #0 {
entry:
  %call = tail call %struct.ossl_lib_ctx_st* @NCONF_get0_libctx(%struct.conf_st* noundef %cnf) #6
  %call1 = tail call fastcc %struct.rand_global_st* @rand_get_global(%struct.ossl_lib_ctx_st* noundef %call) #7
  %call2 = tail call i8* @CONF_imodule_get_value(%struct.conf_imodule_st* noundef %md) #6
  %call3 = tail call %struct.stack_st_CONF_VALUE* @NCONF_get_section(%struct.conf_st* noundef %cnf, i8* noundef %call2) #6
  %cmp = icmp eq %struct.stack_st_CONF_VALUE* %call3, null
  br i1 %cmp, label %if.then, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  %seed_propq = getelementptr inbounds %struct.rand_global_st, %struct.rand_global_st* %call1, i64 0, i32 10
  %seed_name = getelementptr inbounds %struct.rand_global_st, %struct.rand_global_st* %call1, i64 0, i32 9
  %rng_propq = getelementptr inbounds %struct.rand_global_st, %struct.rand_global_st* %call1, i64 0, i32 8
  %rng_digest = getelementptr inbounds %struct.rand_global_st, %struct.rand_global_st* %call1, i64 0, i32 7
  %rng_cipher = getelementptr inbounds %struct.rand_global_st, %struct.rand_global_st* %call1, i64 0, i32 6
  %rng_name = getelementptr inbounds %struct.rand_global_st, %struct.rand_global_st* %call1, i64 0, i32 5
  %call4 = tail call fastcc %struct.stack_st* @ossl_check_const_CONF_VALUE_sk_type(%struct.stack_st_CONF_VALUE* noundef nonnull %call3) #7
  %call5105 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call4) #6
  %cmp6106 = icmp sgt i32 %call5105, 0
  br i1 %cmp6106, label %for.body, label %cleanup

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 758, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.random_conf_init, i64 0, i64 0)) #6
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 15, i32 noundef 119, i8* noundef null) #6
  br label %cleanup

for.body:                                         ; preds = %for.cond.preheader, %for.inc
  %r.0108 = phi i32 [ %r.1, %for.inc ], [ 1, %for.cond.preheader ]
  %i.0107 = phi i32 [ %inc, %for.inc ], [ 0, %for.cond.preheader ]
  %call8 = tail call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call4, i32 noundef %i.0107) #6
  %name = getelementptr inbounds i8, i8* %call8, i64 8
  %0 = bitcast i8* %name to i8**
  %1 = load i8*, i8** %0, align 8, !tbaa !30
  %call9 = tail call i32 @strcasecmp(i8* noundef %1, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0)) #9
  %cmp10 = icmp eq i32 %call9, 0
  br i1 %cmp10, label %if.then11, label %if.else

if.then11:                                        ; preds = %for.body
  %value = getelementptr inbounds i8, i8* %call8, i64 16
  %2 = bitcast i8* %value to i8**
  %3 = load i8*, i8** %2, align 8, !tbaa !32
  %call12 = tail call fastcc i32 @random_set_string(i8** noundef nonnull %rng_name, i8* noundef %3) #7
  %tobool.not = icmp eq i32 %call12, 0
  br i1 %tobool.not, label %cleanup, label %for.inc

if.else:                                          ; preds = %for.body
  %call16 = tail call i32 @strcasecmp(i8* noundef %1, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0)) #9
  %cmp17 = icmp eq i32 %call16, 0
  br i1 %cmp17, label %if.then18, label %if.else24

if.then18:                                        ; preds = %if.else
  %value19 = getelementptr inbounds i8, i8* %call8, i64 16
  %4 = bitcast i8* %value19 to i8**
  %5 = load i8*, i8** %4, align 8, !tbaa !32
  %call20 = tail call fastcc i32 @random_set_string(i8** noundef nonnull %rng_cipher, i8* noundef %5) #7
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %cleanup, label %for.inc

if.else24:                                        ; preds = %if.else
  %call26 = tail call i32 @strcasecmp(i8* noundef %1, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0)) #9
  %cmp27 = icmp eq i32 %call26, 0
  br i1 %cmp27, label %if.then28, label %if.else34

if.then28:                                        ; preds = %if.else24
  %value29 = getelementptr inbounds i8, i8* %call8, i64 16
  %6 = bitcast i8* %value29 to i8**
  %7 = load i8*, i8** %6, align 8, !tbaa !32
  %call30 = tail call fastcc i32 @random_set_string(i8** noundef nonnull %rng_digest, i8* noundef %7) #7
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %cleanup, label %for.inc

if.else34:                                        ; preds = %if.else24
  %call36 = tail call i32 @strcasecmp(i8* noundef %1, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0)) #9
  %cmp37 = icmp eq i32 %call36, 0
  br i1 %cmp37, label %if.then38, label %if.else44

if.then38:                                        ; preds = %if.else34
  %value39 = getelementptr inbounds i8, i8* %call8, i64 16
  %8 = bitcast i8* %value39 to i8**
  %9 = load i8*, i8** %8, align 8, !tbaa !32
  %call40 = tail call fastcc i32 @random_set_string(i8** noundef nonnull %rng_propq, i8* noundef %9) #7
  %tobool41.not = icmp eq i32 %call40, 0
  br i1 %tobool41.not, label %cleanup, label %for.inc

if.else44:                                        ; preds = %if.else34
  %call46 = tail call i32 @strcasecmp(i8* noundef %1, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0)) #9
  %cmp47 = icmp eq i32 %call46, 0
  br i1 %cmp47, label %if.then48, label %if.else54

if.then48:                                        ; preds = %if.else44
  %value49 = getelementptr inbounds i8, i8* %call8, i64 16
  %10 = bitcast i8* %value49 to i8**
  %11 = load i8*, i8** %10, align 8, !tbaa !32
  %call50 = tail call fastcc i32 @random_set_string(i8** noundef nonnull %seed_name, i8* noundef %11) #7
  %tobool51.not = icmp eq i32 %call50, 0
  br i1 %tobool51.not, label %cleanup, label %for.inc

if.else54:                                        ; preds = %if.else44
  %call56 = tail call i32 @strcasecmp(i8* noundef %1, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.13, i64 0, i64 0)) #9
  %cmp57 = icmp eq i32 %call56, 0
  br i1 %cmp57, label %if.then58, label %if.else64

if.then58:                                        ; preds = %if.else54
  %value59 = getelementptr inbounds i8, i8* %call8, i64 16
  %12 = bitcast i8* %value59 to i8**
  %13 = load i8*, i8** %12, align 8, !tbaa !32
  %call60 = tail call fastcc i32 @random_set_string(i8** noundef nonnull %seed_propq, i8* noundef %13) #7
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %cleanup, label %for.inc

if.else64:                                        ; preds = %if.else54
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 783, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.random_conf_init, i64 0, i64 0)) #6
  %14 = load i8*, i8** %0, align 8, !tbaa !30
  %value66 = getelementptr inbounds i8, i8* %call8, i64 16
  %15 = bitcast i8* %value66 to i8**
  %16 = load i8*, i8** %15, align 8, !tbaa !32
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 15, i32 noundef 120, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.14, i64 0, i64 0), i8* noundef %14, i8* noundef %16) #6
  br label %for.inc

for.inc:                                          ; preds = %if.then11, %if.then28, %if.then48, %if.then58, %if.else64, %if.then38, %if.then18
  %r.1 = phi i32 [ %r.0108, %if.then11 ], [ %r.0108, %if.then18 ], [ %r.0108, %if.then28 ], [ %r.0108, %if.then38 ], [ %r.0108, %if.then48 ], [ %r.0108, %if.then58 ], [ 0, %if.else64 ]
  %inc = add nuw nsw i32 %i.0107, 1
  %call5 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call4) #6
  %cmp6 = icmp slt i32 %inc, %call5
  br i1 %cmp6, label %for.body, label %cleanup, !llvm.loop !33

cleanup:                                          ; preds = %if.then11, %if.then18, %if.then28, %if.then38, %if.then48, %if.then58, %for.inc, %for.cond.preheader, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 1, %for.cond.preheader ], [ 0, %if.then11 ], [ 0, %if.then18 ], [ 0, %if.then28 ], [ 0, %if.then38 ], [ 0, %if.then48 ], [ 0, %if.then58 ], [ %r.1, %for.inc ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal void @random_conf_deinit(%struct.conf_imodule_st* nocapture noundef %md) #3 {
entry:
  ret void
}

; Function Attrs: noinline nounwind uwtable
define i32 @RAND_set_DRBG_type(%struct.ossl_lib_ctx_st* noundef %ctx, i8* noundef %drbg, i8* noundef %propq, i8* noundef %cipher, i8* noundef %digest) local_unnamed_addr #0 {
entry:
  %call = tail call fastcc %struct.rand_global_st* @rand_get_global(%struct.ossl_lib_ctx_st* noundef %ctx) #7
  %cmp = icmp eq %struct.rand_global_st* %call, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %primary = getelementptr inbounds %struct.rand_global_st, %struct.rand_global_st* %call, i64 0, i32 2
  %0 = load %struct.evp_rand_ctx_st*, %struct.evp_rand_ctx_st** %primary, align 8, !tbaa !16
  %cmp1.not = icmp eq %struct.evp_rand_ctx_st* %0, null
  br i1 %cmp1.not, label %if.end3, label %if.then2

if.then2:                                         ; preds = %if.end
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 812, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.RAND_set_DRBG_type, i64 0, i64 0)) #6
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 15, i32 noundef 103, i8* noundef null) #6
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %rng_name = getelementptr inbounds %struct.rand_global_st, %struct.rand_global_st* %call, i64 0, i32 5
  %call4 = tail call fastcc i32 @random_set_string(i8** noundef nonnull %rng_name, i8* noundef %drbg) #7
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %cleanup, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end3
  %rng_propq = getelementptr inbounds %struct.rand_global_st, %struct.rand_global_st* %call, i64 0, i32 8
  %call5 = tail call fastcc i32 @random_set_string(i8** noundef nonnull %rng_propq, i8* noundef %propq) #7
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %cleanup, label %land.lhs.true7

land.lhs.true7:                                   ; preds = %land.lhs.true
  %rng_cipher = getelementptr inbounds %struct.rand_global_st, %struct.rand_global_st* %call, i64 0, i32 6
  %call8 = tail call fastcc i32 @random_set_string(i8** noundef nonnull %rng_cipher, i8* noundef %cipher) #7
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %cleanup, label %land.rhs

land.rhs:                                         ; preds = %land.lhs.true7
  %rng_digest = getelementptr inbounds %struct.rand_global_st, %struct.rand_global_st* %call, i64 0, i32 7
  %call10 = tail call fastcc i32 @random_set_string(i8** noundef nonnull %rng_digest, i8* noundef %digest) #7
  %tobool11 = icmp ne i32 %call10, 0
  %phi.cast = zext i1 %tobool11 to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %land.lhs.true, %land.lhs.true7, %land.rhs, %entry, %if.then2
  %retval.0 = phi i32 [ 0, %if.then2 ], [ 0, %entry ], [ 0, %land.lhs.true7 ], [ 0, %land.lhs.true ], [ 0, %if.end3 ], [ %phi.cast, %land.rhs ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @random_set_string(i8** nocapture noundef %p, i8* noundef %s) unnamed_addr #0 {
entry:
  %cmp.not = icmp eq i8* %s, null
  br i1 %cmp.not, label %if.end3, label %if.then

if.then:                                          ; preds = %entry
  %call = tail call i8* @CRYPTO_strdup(i8* noundef nonnull %s, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 731) #6
  %cmp1 = icmp eq i8* %call, null
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.then
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 733, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.random_set_string, i64 0, i64 0)) #6
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 15, i32 noundef 786688, i8* noundef null) #6
  br label %cleanup

if.end3:                                          ; preds = %if.then, %entry
  %d.0 = phi i8* [ %call, %if.then ], [ null, %entry ]
  %0 = load i8*, i8** %p, align 8, !tbaa !4
  tail call void @CRYPTO_free(i8* noundef %0, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 737) #6
  store i8* %d.0, i8** %p, align 8, !tbaa !4
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.then2
  %retval.0 = phi i32 [ 0, %if.then2 ], [ 1, %if.end3 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @RAND_set_seed_source_type(%struct.ossl_lib_ctx_st* noundef %ctx, i8* noundef %seed, i8* noundef %propq) local_unnamed_addr #0 {
entry:
  %call = tail call fastcc %struct.rand_global_st* @rand_get_global(%struct.ossl_lib_ctx_st* noundef %ctx) #7
  %cmp = icmp eq %struct.rand_global_st* %call, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %primary = getelementptr inbounds %struct.rand_global_st, %struct.rand_global_st* %call, i64 0, i32 2
  %0 = load %struct.evp_rand_ctx_st*, %struct.evp_rand_ctx_st** %primary, align 8, !tbaa !16
  %cmp1.not = icmp eq %struct.evp_rand_ctx_st* %0, null
  br i1 %cmp1.not, label %if.end3, label %if.then2

if.then2:                                         ; preds = %if.end
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 829, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.RAND_set_seed_source_type, i64 0, i64 0)) #6
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 15, i32 noundef 103, i8* noundef null) #6
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %seed_name = getelementptr inbounds %struct.rand_global_st, %struct.rand_global_st* %call, i64 0, i32 9
  %call4 = tail call fastcc i32 @random_set_string(i8** noundef nonnull %seed_name, i8* noundef %seed) #7
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %cleanup, label %land.rhs

land.rhs:                                         ; preds = %if.end3
  %seed_propq = getelementptr inbounds %struct.rand_global_st, %struct.rand_global_st* %call, i64 0, i32 10
  %call5 = tail call fastcc i32 @random_set_string(i8** noundef nonnull %seed_propq, i8* noundef %propq) #7
  %tobool6 = icmp ne i32 %call5, 0
  %phi.cast = zext i1 %tobool6 to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %land.rhs, %entry, %if.then2
  %retval.0 = phi i32 [ 0, %if.then2 ], [ 0, %entry ], [ 0, %if.end3 ], [ %phi.cast, %land.rhs ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @do_rand_init() unnamed_addr #0 {
entry:
  %call = tail call i8* @CRYPTO_THREAD_lock_new() #6
  store i8* %call, i8** @rand_engine_lock, align 8, !tbaa !4
  %cmp = icmp eq i8* %call, null
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %call1 = tail call i8* @CRYPTO_THREAD_lock_new() #6
  store i8* %call1, i8** @rand_meth_lock, align 8, !tbaa !4
  %cmp2 = icmp eq i8* %call1, null
  br i1 %cmp2, label %err, label %if.end4

if.end4:                                          ; preds = %if.end
  %call5 = tail call i32 @ossl_rand_pool_init() #6
  %tobool.not = icmp eq i32 %call5, 0
  br i1 %tobool.not, label %if.end4.err_crit_edge, label %if.end7

if.end4.err_crit_edge:                            ; preds = %if.end4
  %.pre = load i8*, i8** @rand_meth_lock, align 8, !tbaa !4
  br label %err

if.end7:                                          ; preds = %if.end4
  store i1 true, i1* @rand_inited, align 4
  br label %return

err:                                              ; preds = %if.end4.err_crit_edge, %if.end
  %0 = phi i8* [ %.pre, %if.end4.err_crit_edge ], [ null, %if.end ]
  tail call void @CRYPTO_THREAD_lock_free(i8* noundef %0) #6
  store i8* null, i8** @rand_meth_lock, align 8, !tbaa !4
  %1 = load i8*, i8** @rand_engine_lock, align 8, !tbaa !4
  tail call void @CRYPTO_THREAD_lock_free(i8* noundef %1) #6
  store i8* null, i8** @rand_engine_lock, align 8, !tbaa !4
  br label %return

return:                                           ; preds = %entry, %err, %if.end7
  %retval.0 = phi i32 [ 0, %err ], [ 1, %if.end7 ], [ 0, %entry ]
  ret i32 %retval.0
}

declare i8* @CRYPTO_THREAD_lock_new() local_unnamed_addr #2

declare i32 @ossl_rand_pool_init() local_unnamed_addr #2

declare i8* @ossl_lib_ctx_get_data(%struct.ossl_lib_ctx_st* noundef, i32 noundef, %struct.ossl_lib_ctx_method* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal i8* @rand_ossl_ctx_new(%struct.ossl_lib_ctx_st* nocapture noundef readnone %libctx) #0 {
entry:
  %call = tail call i8* @CRYPTO_zalloc(i64 noundef 80, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 439) #6
  %cmp = icmp eq i8* %call, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @OPENSSL_init_crypto(i64 noundef 262144, %struct.ossl_init_settings_st* noundef null) #6
  %call2 = tail call i8* @CRYPTO_THREAD_lock_new() #6
  %lock = bitcast i8* %call to i8**
  store i8* %call2, i8** %lock, align 8, !tbaa !14
  %cmp4 = icmp eq i8* %call2, null
  br i1 %cmp4, label %err1, label %if.end6

if.end6:                                          ; preds = %if.end
  %private = getelementptr inbounds i8, i8* %call, i64 28
  %0 = bitcast i8* %private to i32*
  %call7 = tail call i32 @CRYPTO_THREAD_init_local(i32* noundef nonnull %0, void (i8*)* noundef null) #6
  %tobool.not = icmp eq i32 %call7, 0
  br i1 %tobool.not, label %err1, label %if.end9

if.end9:                                          ; preds = %if.end6
  %public = getelementptr inbounds i8, i8* %call, i64 24
  %1 = bitcast i8* %public to i32*
  %call10 = tail call i32 @CRYPTO_THREAD_init_local(i32* noundef nonnull %1, void (i8*)* noundef null) #6
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %err2, label %cleanup

err2:                                             ; preds = %if.end9
  %call15 = tail call i32 @CRYPTO_THREAD_cleanup_local(i32* noundef nonnull %0) #6
  br label %err1

err1:                                             ; preds = %if.end6, %if.end, %err2
  %2 = load i8*, i8** %lock, align 8, !tbaa !14
  tail call void @CRYPTO_THREAD_lock_free(i8* noundef %2) #6
  tail call void @CRYPTO_free(i8* noundef nonnull %call, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 468) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %entry, %err1
  %retval.0 = phi i8* [ null, %err1 ], [ null, %entry ], [ %call, %if.end9 ]
  ret i8* %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal void @rand_ossl_ctx_free(i8* noundef %vdgbl) #0 {
entry:
  %cmp = icmp eq i8* %vdgbl, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %lock = bitcast i8* %vdgbl to i8**
  %0 = load i8*, i8** %lock, align 8, !tbaa !14
  tail call void @CRYPTO_THREAD_lock_free(i8* noundef %0) #6
  %private = getelementptr inbounds i8, i8* %vdgbl, i64 28
  %1 = bitcast i8* %private to i32*
  %call = tail call i32 @CRYPTO_THREAD_cleanup_local(i32* noundef nonnull %1) #6
  %public = getelementptr inbounds i8, i8* %vdgbl, i64 24
  %2 = bitcast i8* %public to i32*
  %call1 = tail call i32 @CRYPTO_THREAD_cleanup_local(i32* noundef nonnull %2) #6
  %primary = getelementptr inbounds i8, i8* %vdgbl, i64 16
  %3 = bitcast i8* %primary to %struct.evp_rand_ctx_st**
  %4 = load %struct.evp_rand_ctx_st*, %struct.evp_rand_ctx_st** %3, align 8, !tbaa !16
  tail call void @EVP_RAND_CTX_free(%struct.evp_rand_ctx_st* noundef %4) #6
  %seed = getelementptr inbounds i8, i8* %vdgbl, i64 8
  %5 = bitcast i8* %seed to %struct.evp_rand_ctx_st**
  %6 = load %struct.evp_rand_ctx_st*, %struct.evp_rand_ctx_st** %5, align 8, !tbaa !17
  tail call void @EVP_RAND_CTX_free(%struct.evp_rand_ctx_st* noundef %6) #6
  %rng_name = getelementptr inbounds i8, i8* %vdgbl, i64 32
  %7 = bitcast i8* %rng_name to i8**
  %8 = load i8*, i8** %7, align 8, !tbaa !25
  tail call void @CRYPTO_free(i8* noundef %8, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 484) #6
  %rng_cipher = getelementptr inbounds i8, i8* %vdgbl, i64 40
  %9 = bitcast i8* %rng_cipher to i8**
  %10 = load i8*, i8** %9, align 8, !tbaa !27
  tail call void @CRYPTO_free(i8* noundef %10, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 485) #6
  %rng_digest = getelementptr inbounds i8, i8* %vdgbl, i64 48
  %11 = bitcast i8* %rng_digest to i8**
  %12 = load i8*, i8** %11, align 8, !tbaa !28
  tail call void @CRYPTO_free(i8* noundef %12, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 486) #6
  %rng_propq = getelementptr inbounds i8, i8* %vdgbl, i64 56
  %13 = bitcast i8* %rng_propq to i8**
  %14 = load i8*, i8** %13, align 8, !tbaa !26
  tail call void @CRYPTO_free(i8* noundef %14, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 487) #6
  %seed_name = getelementptr inbounds i8, i8* %vdgbl, i64 64
  %15 = bitcast i8* %seed_name to i8**
  %16 = load i8*, i8** %15, align 8, !tbaa !21
  tail call void @CRYPTO_free(i8* noundef %16, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 488) #6
  %seed_propq = getelementptr inbounds i8, i8* %vdgbl, i64 72
  %17 = bitcast i8* %seed_propq to i8**
  %18 = load i8*, i8** %17, align 8, !tbaa !22
  tail call void @CRYPTO_free(i8* noundef %18, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 489) #6
  tail call void @CRYPTO_free(i8* noundef nonnull %vdgbl, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 491) #6
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  ret void
}

declare i8* @CRYPTO_zalloc(i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare i32 @OPENSSL_init_crypto(i64 noundef, %struct.ossl_init_settings_st* noundef) local_unnamed_addr #2

declare i32 @CRYPTO_THREAD_init_local(i32* noundef, void (i8*)* noundef) local_unnamed_addr #2

declare i32 @CRYPTO_THREAD_cleanup_local(i32* noundef) local_unnamed_addr #2

declare void @CRYPTO_free(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare %struct.evp_rand_st* @EVP_RAND_fetch(%struct.ossl_lib_ctx_st* noundef, i8* noundef, i8* noundef) local_unnamed_addr #2

declare %struct.evp_rand_ctx_st* @EVP_RAND_CTX_new(%struct.evp_rand_st* noundef, %struct.evp_rand_ctx_st* noundef) local_unnamed_addr #2

declare void @EVP_RAND_free(%struct.evp_rand_st* noundef) local_unnamed_addr #2

declare i32 @EVP_RAND_instantiate(%struct.evp_rand_ctx_st* noundef, i32 noundef, i32 noundef, i8* noundef, i64 noundef, %struct.ossl_param_st* noundef) local_unnamed_addr #2

declare void @OSSL_PARAM_construct_utf8_string(%struct.ossl_param_st* sret(%struct.ossl_param_st) align 8, i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #4

declare void @OSSL_PARAM_construct_uint(%struct.ossl_param_st* sret(%struct.ossl_param_st) align 8, i8* noundef, i32* noundef) local_unnamed_addr #2

declare void @OSSL_PARAM_construct_time_t(%struct.ossl_param_st* sret(%struct.ossl_param_st) align 8, i8* noundef, i64* noundef) local_unnamed_addr #2

declare void @OSSL_PARAM_construct_end(%struct.ossl_param_st* sret(%struct.ossl_param_st) align 8) local_unnamed_addr #2

declare %struct.ossl_lib_ctx_st* @NCONF_get0_libctx(%struct.conf_st* noundef) local_unnamed_addr #2

declare %struct.stack_st_CONF_VALUE* @NCONF_get_section(%struct.conf_st* noundef, i8* noundef) local_unnamed_addr #2

declare i8* @CONF_imodule_get_value(%struct.conf_imodule_st* noundef) local_unnamed_addr #2

declare i32 @OPENSSL_sk_num(%struct.stack_st* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_const_CONF_VALUE_sk_type(%struct.stack_st_CONF_VALUE* noundef readnone %sk) unnamed_addr #3 {
entry:
  %0 = bitcast %struct.stack_st_CONF_VALUE* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

declare i8* @OPENSSL_sk_value(%struct.stack_st* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare i32 @strcasecmp(i8* noundef, i8* noundef) local_unnamed_addr #5

declare i8* @CRYPTO_strdup(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #5 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!5 = !{!"any pointer", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !5, i64 16}
!9 = !{!"rand_meth_st", !5, i64 0, !5, i64 8, !5, i64 16, !5, i64 24, !5, i64 32, !5, i64 40}
!10 = !{!11, !11, i64 0}
!11 = !{!"int", !6, i64 0}
!12 = !{!9, !5, i64 24}
!13 = !{!9, !5, i64 0}
!14 = !{!15, !5, i64 0}
!15 = !{!"rand_global_st", !5, i64 0, !5, i64 8, !5, i64 16, !11, i64 24, !11, i64 28, !5, i64 32, !5, i64 40, !5, i64 48, !5, i64 56, !5, i64 64, !5, i64 72}
!16 = !{!15, !5, i64 16}
!17 = !{!15, !5, i64 8}
!18 = !{!9, !5, i64 32}
!19 = !{!9, !5, i64 40}
!20 = !{!9, !5, i64 8}
!21 = !{!15, !5, i64 64}
!22 = !{!15, !5, i64 72}
!23 = !{!24, !24, i64 0}
!24 = !{!"long", !6, i64 0}
!25 = !{!15, !5, i64 32}
!26 = !{!15, !5, i64 56}
!27 = !{!15, !5, i64 40}
!28 = !{!15, !5, i64 48}
!29 = !{i64 0, i64 8, !4, i64 8, i64 4, !10, i64 16, i64 8, !4, i64 24, i64 8, !23, i64 32, i64 8, !23}
!30 = !{!31, !5, i64 8}
!31 = !{!"", !5, i64 0, !5, i64 8, !5, i64 16}
!32 = !{!31, !5, i64 16}
!33 = distinct !{!33, !34}
!34 = !{!"llvm.loop.mustprogress"}
