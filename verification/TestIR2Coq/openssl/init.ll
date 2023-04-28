; ModuleID = 'crypto/init.c'
source_filename = "crypto/init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ossl_init_stop_st = type { void ()*, %struct.ossl_init_stop_st* }
%struct.ossl_init_settings_st = type { i8*, i8*, i64 }

@base_inited = internal unnamed_addr global i1 false, align 4
@stopped = internal unnamed_addr global i1 false, align 4
@stop_handlers = internal unnamed_addr global %struct.ossl_init_stop_st* null, align 8
@.str = private unnamed_addr constant [14 x i8] c"crypto/init.c\00", align 1
@init_lock = internal unnamed_addr global i8* null, align 8
@in_init_config_local = internal global i32 0, align 4
@async_inited = internal unnamed_addr global i1 false, align 4
@load_crypto_strings_inited = internal unnamed_addr global i1 false, align 4
@__func__.OPENSSL_init_crypto = private unnamed_addr constant [20 x i8] c"OPENSSL_init_crypto\00", align 1
@optsdone = internal global i64 0, align 8
@base = internal global i32 0, align 4
@ossl_init_base_ossl_ret_ = internal unnamed_addr global i32 0, align 4
@register_atexit = internal global i32 0, align 4
@ossl_init_register_atexit_ossl_ret_ = internal unnamed_addr global i32 0, align 4
@load_crypto_nodelete = internal global i32 0, align 4
@ossl_init_load_crypto_nodelete_ossl_ret_ = internal unnamed_addr global i1 false, align 4
@load_crypto_strings = internal global i32 0, align 4
@ossl_init_load_crypto_strings_ossl_ret_ = internal unnamed_addr global i32 0, align 4
@add_all_ciphers = internal global i32 0, align 4
@ossl_init_add_all_ciphers_ossl_ret_ = internal unnamed_addr global i1 false, align 4
@add_all_digests = internal global i32 0, align 4
@ossl_init_add_all_digests_ossl_ret_ = internal unnamed_addr global i1 false, align 4
@config = internal global i32 0, align 4
@ossl_init_config_ossl_ret_ = internal unnamed_addr global i32 0, align 4
@conf_settings = internal unnamed_addr global %struct.ossl_init_settings_st* null, align 8
@async = internal global i32 0, align 4
@ossl_init_async_ossl_ret_ = internal unnamed_addr global i32 0, align 4
@engine_openssl = internal global i32 0, align 4
@ossl_init_engine_openssl_ossl_ret_ = internal unnamed_addr global i1 false, align 4
@engine_rdrand = internal global i32 0, align 4
@ossl_init_engine_rdrand_ossl_ret_ = internal unnamed_addr global i1 false, align 4
@engine_dynamic = internal global i32 0, align 4
@ossl_init_engine_dynamic_ossl_ret_ = internal unnamed_addr global i1 false, align 4
@__func__.OPENSSL_atexit = private unnamed_addr constant [15 x i8] c"OPENSSL_atexit\00", align 1

; Function Attrs: noinline nounwind uwtable
define void @OPENSSL_cleanup() #0 {
entry:
  %.b = load i1, i1* @base_inited, align 4
  br i1 %.b, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %.b17 = load i1, i1* @stopped, align 4
  br i1 %.b17, label %cleanup, label %if.end3

if.end3:                                          ; preds = %if.end
  store i1 true, i1* @stopped, align 4
  tail call void @OPENSSL_thread_stop() #5
  %0 = load %struct.ossl_init_stop_st*, %struct.ossl_init_stop_st** @stop_handlers, align 8, !tbaa !4
  %cmp.not20 = icmp eq %struct.ossl_init_stop_st* %0, null
  br i1 %cmp.not20, label %while.end, label %while.body

while.body:                                       ; preds = %if.end3, %while.body
  %currhandler.021 = phi %struct.ossl_init_stop_st* [ %2, %while.body ], [ %0, %if.end3 ]
  %handler = getelementptr inbounds %struct.ossl_init_stop_st, %struct.ossl_init_stop_st* %currhandler.021, i64 0, i32 0
  %1 = load void ()*, void ()** %handler, align 8, !tbaa !8
  tail call void %1() #5
  %next = getelementptr inbounds %struct.ossl_init_stop_st, %struct.ossl_init_stop_st* %currhandler.021, i64 0, i32 1
  %2 = load %struct.ossl_init_stop_st*, %struct.ossl_init_stop_st** %next, align 8, !tbaa !10
  %3 = bitcast %struct.ossl_init_stop_st* %currhandler.021 to i8*
  tail call void @CRYPTO_free(i8* noundef nonnull %3, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 366) #5
  %cmp.not = icmp eq %struct.ossl_init_stop_st* %2, null
  br i1 %cmp.not, label %while.end, label %while.body, !llvm.loop !11

while.end:                                        ; preds = %while.body, %if.end3
  store %struct.ossl_init_stop_st* null, %struct.ossl_init_stop_st** @stop_handlers, align 8, !tbaa !4
  %4 = load i8*, i8** @init_lock, align 8, !tbaa !4
  tail call void @CRYPTO_THREAD_lock_free(i8* noundef %4) #5
  store i8* null, i8** @init_lock, align 8, !tbaa !4
  %call = tail call i32 @CRYPTO_THREAD_cleanup_local(i32* noundef nonnull @in_init_config_local) #5
  tail call void @ossl_comp_zlib_cleanup() #5
  %.b18 = load i1, i1* @async_inited, align 4
  br i1 %.b18, label %if.then5, label %if.end6

if.then5:                                         ; preds = %while.end
  tail call void @async_deinit() #5
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %while.end
  %.b19 = load i1, i1* @load_crypto_strings_inited, align 4
  br i1 %.b19, label %if.then8, label %if.end9

if.then8:                                         ; preds = %if.end6
  tail call void @err_free_strings_int() #5
  br label %if.end9

if.end9:                                          ; preds = %if.then8, %if.end6
  tail call void @ossl_rand_cleanup_int() #5
  tail call void @ossl_config_modules_free() #5
  tail call void @engine_cleanup_int() #5
  tail call void @ossl_store_cleanup_int() #5
  tail call void @ossl_lib_ctx_default_deinit() #5
  tail call void @ossl_cleanup_thread() #5
  tail call void @bio_cleanup() #5
  tail call void @evp_cleanup_int() #5
  tail call void @ossl_obj_cleanup_int() #5
  tail call void @err_cleanup() #5
  %call10 = tail call i32 @CRYPTO_secure_malloc_done() #5
  tail call void @OSSL_CMP_log_close() #5
  tail call void @ossl_trace_cleanup() #5
  store i1 false, i1* @base_inited, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry, %if.end9
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

declare void @OPENSSL_thread_stop() local_unnamed_addr #2

declare void @CRYPTO_free(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare void @CRYPTO_THREAD_lock_free(i8* noundef) local_unnamed_addr #2

declare i32 @CRYPTO_THREAD_cleanup_local(i32* noundef) local_unnamed_addr #2

declare void @ossl_comp_zlib_cleanup() local_unnamed_addr #2

declare void @async_deinit() local_unnamed_addr #2

declare void @err_free_strings_int() local_unnamed_addr #2

declare void @ossl_rand_cleanup_int() local_unnamed_addr #2

declare void @ossl_config_modules_free() local_unnamed_addr #2

declare void @engine_cleanup_int() local_unnamed_addr #2

declare void @ossl_store_cleanup_int() local_unnamed_addr #2

declare void @ossl_lib_ctx_default_deinit() local_unnamed_addr #2

declare void @ossl_cleanup_thread() local_unnamed_addr #2

declare void @bio_cleanup() local_unnamed_addr #2

declare void @evp_cleanup_int() local_unnamed_addr #2

declare void @ossl_obj_cleanup_int() local_unnamed_addr #2

declare void @err_cleanup() local_unnamed_addr #2

declare i32 @CRYPTO_secure_malloc_done() local_unnamed_addr #2

declare void @OSSL_CMP_log_close() local_unnamed_addr #2

declare void @ossl_trace_cleanup() local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: noinline nounwind uwtable
define i32 @OPENSSL_init_crypto(i64 noundef %opts, %struct.ossl_init_settings_st* noundef %settings) local_unnamed_addr #0 {
entry:
  %tmp = alloca i64, align 8
  %0 = bitcast i64* %tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #6
  %.b = load i1, i1* @stopped, align 4
  br i1 %.b, label %if.then, label %if.end3

if.then:                                          ; preds = %entry
  %and = and i64 %opts, 262144
  %tobool1.not = icmp eq i64 %and, 0
  br i1 %tobool1.not, label %if.then2, label %cleanup220

if.then2:                                         ; preds = %if.then
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 466, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.OPENSSL_init_crypto, i64 0, i64 0)) #5
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 15, i32 noundef 786693, i8* noundef null) #5
  br label %cleanup220

if.end3:                                          ; preds = %entry
  %call = call i32 @CRYPTO_atomic_load(i64* noundef nonnull @optsdone, i64* noundef nonnull %tmp, i8* noundef null) #5
  %tobool4.not = icmp eq i32 %call, 0
  br i1 %tobool4.not, label %if.end9, label %if.then5

if.then5:                                         ; preds = %if.end3
  %1 = load i64, i64* %tmp, align 8, !tbaa !13
  %and6 = and i64 %1, %opts
  %cmp = icmp eq i64 %and6, %opts
  br i1 %cmp, label %cleanup220, label %if.end9

if.end9:                                          ; preds = %if.then5, %if.end3
  %call10 = call i32 @CRYPTO_THREAD_run_once(i32* noundef nonnull @base, void ()* noundef nonnull @ossl_init_base_ossl_) #5
  %tobool11 = icmp ne i32 %call10, 0
  %2 = load i32, i32* @ossl_init_base_ossl_ret_, align 4
  %tobool12 = icmp ne i32 %2, 0
  %or.cond = select i1 %tobool11, i1 %tobool12, i1 false
  br i1 %or.cond, label %if.end14, label %cleanup220

if.end14:                                         ; preds = %if.end9
  %and15 = and i64 %opts, 262144
  %tobool16.not = icmp eq i64 %and15, 0
  br i1 %tobool16.not, label %if.end18, label %cleanup220

if.end18:                                         ; preds = %if.end14
  br i1 %tobool4.not, label %if.then20, label %if.end29

if.then20:                                        ; preds = %if.end18
  %3 = load i8*, i8** @init_lock, align 8, !tbaa !4
  %call21 = call i32 @CRYPTO_atomic_load(i64* noundef nonnull @optsdone, i64* noundef nonnull %tmp, i8* noundef %3) #5
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %cleanup220, label %if.end24

if.end24:                                         ; preds = %if.then20
  %4 = load i64, i64* %tmp, align 8, !tbaa !13
  %and25 = and i64 %4, %opts
  %cmp26 = icmp eq i64 %and25, %opts
  br i1 %cmp26, label %cleanup220, label %if.end29

if.end29:                                         ; preds = %if.end24, %if.end18
  %and30 = and i64 %opts, 524288
  %cmp31.not = icmp eq i64 %and30, 0
  br i1 %cmp31.not, label %if.else, label %if.then32

if.then32:                                        ; preds = %if.end29
  %call33 = call i32 @CRYPTO_THREAD_run_once(i32* noundef nonnull @register_atexit, void ()* noundef nonnull @ossl_init_no_register_atexit_ossl_) #5
  %tobool34 = icmp ne i32 %call33, 0
  %5 = load i32, i32* @ossl_init_register_atexit_ossl_ret_, align 4
  %tobool36 = icmp ne i32 %5, 0
  %or.cond224 = select i1 %tobool34, i1 %tobool36, i1 false
  br i1 %or.cond224, label %if.end47, label %cleanup220

if.else:                                          ; preds = %if.end29
  %call40 = call i32 @CRYPTO_THREAD_run_once(i32* noundef nonnull @register_atexit, void ()* noundef nonnull @ossl_init_register_atexit_ossl_) #5
  %tobool41 = icmp ne i32 %call40, 0
  %6 = load i32, i32* @ossl_init_register_atexit_ossl_ret_, align 4
  %tobool43 = icmp ne i32 %6, 0
  %or.cond225 = select i1 %tobool41, i1 %tobool43, i1 false
  br i1 %or.cond225, label %if.end47, label %cleanup220

if.end47:                                         ; preds = %if.else, %if.then32
  %call48 = call i32 @CRYPTO_THREAD_run_once(i32* noundef nonnull @load_crypto_nodelete, void ()* noundef nonnull @ossl_init_load_crypto_nodelete_ossl_) #5
  %tobool49 = icmp ne i32 %call48, 0
  %.b264 = load i1, i1* @ossl_init_load_crypto_nodelete_ossl_ret_, align 4
  %or.cond226 = select i1 %tobool49, i1 %.b264, i1 false
  br i1 %or.cond226, label %if.end54, label %cleanup220

if.end54:                                         ; preds = %if.end47
  %and55 = and i64 %opts, 1
  %tobool56.not = icmp eq i64 %and55, 0
  br i1 %tobool56.not, label %if.end63, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end54
  %call57 = call i32 @CRYPTO_THREAD_run_once(i32* noundef nonnull @load_crypto_strings, void ()* noundef nonnull @ossl_init_no_load_crypto_strings_ossl_) #5
  %tobool58 = icmp ne i32 %call57, 0
  %7 = load i32, i32* @ossl_init_load_crypto_strings_ossl_ret_, align 4
  %tobool60 = icmp ne i32 %7, 0
  %or.cond227 = select i1 %tobool58, i1 %tobool60, i1 false
  br i1 %or.cond227, label %if.end63, label %cleanup220

if.end63:                                         ; preds = %land.lhs.true, %if.end54
  %and64 = and i64 %opts, 2
  %tobool65.not = icmp eq i64 %and64, 0
  br i1 %tobool65.not, label %if.end73, label %land.lhs.true66

land.lhs.true66:                                  ; preds = %if.end63
  %call67 = call i32 @CRYPTO_THREAD_run_once(i32* noundef nonnull @load_crypto_strings, void ()* noundef nonnull @ossl_init_load_crypto_strings_ossl_) #5
  %tobool68 = icmp ne i32 %call67, 0
  %8 = load i32, i32* @ossl_init_load_crypto_strings_ossl_ret_, align 4
  %tobool70 = icmp ne i32 %8, 0
  %or.cond228 = select i1 %tobool68, i1 %tobool70, i1 false
  br i1 %or.cond228, label %if.end73, label %cleanup220

if.end73:                                         ; preds = %land.lhs.true66, %if.end63
  %and74 = and i64 %opts, 16
  %tobool75.not = icmp eq i64 %and74, 0
  br i1 %tobool75.not, label %if.end83, label %land.lhs.true76

land.lhs.true76:                                  ; preds = %if.end73
  %call77 = call i32 @CRYPTO_THREAD_run_once(i32* noundef nonnull @add_all_ciphers, void ()* noundef nonnull @ossl_init_no_add_all_ciphers_ossl_) #5
  %tobool78 = icmp ne i32 %call77, 0
  %.b266 = load i1, i1* @ossl_init_add_all_ciphers_ossl_ret_, align 4
  %or.cond229 = select i1 %tobool78, i1 %.b266, i1 false
  br i1 %or.cond229, label %if.end83, label %cleanup220

if.end83:                                         ; preds = %land.lhs.true76, %if.end73
  %and84 = and i64 %opts, 4
  %tobool85.not = icmp eq i64 %and84, 0
  br i1 %tobool85.not, label %if.end93, label %land.lhs.true86

land.lhs.true86:                                  ; preds = %if.end83
  %call87 = call i32 @CRYPTO_THREAD_run_once(i32* noundef nonnull @add_all_ciphers, void ()* noundef nonnull @ossl_init_add_all_ciphers_ossl_) #5
  %tobool88 = icmp ne i32 %call87, 0
  %.b265 = load i1, i1* @ossl_init_add_all_ciphers_ossl_ret_, align 4
  %or.cond230 = select i1 %tobool88, i1 %.b265, i1 false
  br i1 %or.cond230, label %if.end93, label %cleanup220

if.end93:                                         ; preds = %land.lhs.true86, %if.end83
  %and94 = and i64 %opts, 32
  %tobool95.not = icmp eq i64 %and94, 0
  br i1 %tobool95.not, label %if.end103, label %land.lhs.true96

land.lhs.true96:                                  ; preds = %if.end93
  %call97 = call i32 @CRYPTO_THREAD_run_once(i32* noundef nonnull @add_all_digests, void ()* noundef nonnull @ossl_init_no_add_all_digests_ossl_) #5
  %tobool98 = icmp ne i32 %call97, 0
  %.b268 = load i1, i1* @ossl_init_add_all_digests_ossl_ret_, align 4
  %or.cond231 = select i1 %tobool98, i1 %.b268, i1 false
  br i1 %or.cond231, label %if.end103, label %cleanup220

if.end103:                                        ; preds = %land.lhs.true96, %if.end93
  %and104 = and i64 %opts, 8
  %tobool105.not = icmp eq i64 %and104, 0
  br i1 %tobool105.not, label %if.end113, label %land.lhs.true106

land.lhs.true106:                                 ; preds = %if.end103
  %call107 = call i32 @CRYPTO_THREAD_run_once(i32* noundef nonnull @add_all_digests, void ()* noundef nonnull @ossl_init_add_all_digests_ossl_) #5
  %tobool108 = icmp ne i32 %call107, 0
  %.b267 = load i1, i1* @ossl_init_add_all_digests_ossl_ret_, align 4
  %or.cond232 = select i1 %tobool108, i1 %.b267, i1 false
  br i1 %or.cond232, label %if.end113, label %cleanup220

if.end113:                                        ; preds = %land.lhs.true106, %if.end103
  %and114 = and i64 %opts, 131072
  %tobool115.not = icmp eq i64 %and114, 0
  br i1 %tobool115.not, label %if.end120, label %land.lhs.true116

land.lhs.true116:                                 ; preds = %if.end113
  %call117 = call i32 @openssl_init_fork_handlers() #5
  %tobool118.not = icmp eq i32 %call117, 0
  br i1 %tobool118.not, label %cleanup220, label %if.end120

if.end120:                                        ; preds = %land.lhs.true116, %if.end113
  %and121 = and i64 %opts, 128
  %tobool122.not = icmp eq i64 %and121, 0
  br i1 %tobool122.not, label %if.end130, label %land.lhs.true123

land.lhs.true123:                                 ; preds = %if.end120
  %call124 = call i32 @CRYPTO_THREAD_run_once(i32* noundef nonnull @config, void ()* noundef nonnull @ossl_init_no_config_ossl_) #5
  %tobool125 = icmp ne i32 %call124, 0
  %9 = load i32, i32* @ossl_init_config_ossl_ret_, align 4
  %tobool127 = icmp ne i32 %9, 0
  %or.cond233 = select i1 %tobool125, i1 %tobool127, i1 false
  br i1 %or.cond233, label %if.end130, label %cleanup220

if.end130:                                        ; preds = %land.lhs.true123, %if.end120
  %and131 = and i64 %opts, 64
  %tobool132.not = icmp eq i64 %and131, 0
  br i1 %tobool132.not, label %if.end170, label %if.then133

if.then133:                                       ; preds = %if.end130
  %call134 = call i8* @CRYPTO_THREAD_get_local(i32* noundef nonnull @in_init_config_local) #5
  %cmp135.not = icmp eq i8* %call134, null
  br i1 %cmp135.not, label %if.then137, label %if.end170

if.then137:                                       ; preds = %if.then133
  %call138 = call i32 @CRYPTO_THREAD_set_local(i32* noundef nonnull @in_init_config_local, i8* noundef nonnull inttoptr (i64 -1 to i8*)) #5
  %tobool139.not = icmp eq i32 %call138, 0
  br i1 %tobool139.not, label %cleanup220, label %if.end141

if.end141:                                        ; preds = %if.then137
  %cmp142 = icmp eq %struct.ossl_init_settings_st* %settings, null
  br i1 %cmp142, label %if.then144, label %if.else149

if.then144:                                       ; preds = %if.end141
  %call145 = call i32 @CRYPTO_THREAD_run_once(i32* noundef nonnull @config, void ()* noundef nonnull @ossl_init_config_ossl_) #5
  %tobool146.not = icmp eq i32 %call145, 0
  %10 = load i32, i32* @ossl_init_config_ossl_ret_, align 4
  br i1 %tobool146.not, label %cleanup220, label %if.end161

if.else149:                                       ; preds = %if.end141
  %11 = load i8*, i8** @init_lock, align 8, !tbaa !4
  %call150 = call i32 @CRYPTO_THREAD_write_lock(i8* noundef %11) #5
  %tobool151.not = icmp eq i32 %call150, 0
  br i1 %tobool151.not, label %cleanup220, label %if.end153

if.end153:                                        ; preds = %if.else149
  store %struct.ossl_init_settings_st* %settings, %struct.ossl_init_settings_st** @conf_settings, align 8, !tbaa !4
  %call154 = call i32 @CRYPTO_THREAD_run_once(i32* noundef nonnull @config, void ()* noundef nonnull @ossl_init_config_settings_ossl_) #5
  %tobool155.not = icmp eq i32 %call154, 0
  %12 = load i32, i32* @ossl_init_config_ossl_ret_, align 4
  store %struct.ossl_init_settings_st* null, %struct.ossl_init_settings_st** @conf_settings, align 8, !tbaa !4
  %13 = load i8*, i8** @init_lock, align 8, !tbaa !4
  %call160 = call i32 @CRYPTO_THREAD_unlock(i8* noundef %13) #5
  br i1 %tobool155.not, label %cleanup220, label %if.end161

if.end161:                                        ; preds = %if.end153, %if.then144
  %ret.0 = phi i32 [ %10, %if.then144 ], [ %12, %if.end153 ]
  %cmp162 = icmp sgt i32 %ret.0, 0
  br i1 %cmp162, label %if.end170, label %cleanup220

if.end170:                                        ; preds = %if.end161, %if.then133, %if.end130
  %and171 = and i64 %opts, 256
  %tobool172.not = icmp eq i64 %and171, 0
  br i1 %tobool172.not, label %if.end180, label %land.lhs.true173

land.lhs.true173:                                 ; preds = %if.end170
  %call174 = call i32 @CRYPTO_THREAD_run_once(i32* noundef nonnull @async, void ()* noundef nonnull @ossl_init_async_ossl_) #5
  %tobool175 = icmp ne i32 %call174, 0
  %14 = load i32, i32* @ossl_init_async_ossl_ret_, align 4
  %tobool177 = icmp ne i32 %14, 0
  %or.cond234 = select i1 %tobool175, i1 %tobool177, i1 false
  br i1 %or.cond234, label %if.end180, label %cleanup220

if.end180:                                        ; preds = %land.lhs.true173, %if.end170
  %and181 = and i64 %opts, 2048
  %tobool182.not = icmp eq i64 %and181, 0
  br i1 %tobool182.not, label %if.end190, label %land.lhs.true183

land.lhs.true183:                                 ; preds = %if.end180
  %call184 = call i32 @CRYPTO_THREAD_run_once(i32* noundef nonnull @engine_openssl, void ()* noundef nonnull @ossl_init_engine_openssl_ossl_) #5
  %tobool185 = icmp ne i32 %call184, 0
  %.b269 = load i1, i1* @ossl_init_engine_openssl_ossl_ret_, align 4
  %or.cond235 = select i1 %tobool185, i1 %.b269, i1 false
  br i1 %or.cond235, label %if.end190, label %cleanup220

if.end190:                                        ; preds = %land.lhs.true183, %if.end180
  %and191 = and i64 %opts, 512
  %tobool192.not = icmp eq i64 %and191, 0
  br i1 %tobool192.not, label %if.end200, label %land.lhs.true193

land.lhs.true193:                                 ; preds = %if.end190
  %call194 = call i32 @CRYPTO_THREAD_run_once(i32* noundef nonnull @engine_rdrand, void ()* noundef nonnull @ossl_init_engine_rdrand_ossl_) #5
  %tobool195 = icmp ne i32 %call194, 0
  %.b270 = load i1, i1* @ossl_init_engine_rdrand_ossl_ret_, align 4
  %or.cond236 = select i1 %tobool195, i1 %.b270, i1 false
  br i1 %or.cond236, label %if.end200, label %cleanup220

if.end200:                                        ; preds = %land.lhs.true193, %if.end190
  %and201 = and i64 %opts, 1024
  %tobool202.not = icmp eq i64 %and201, 0
  br i1 %tobool202.not, label %if.end210, label %land.lhs.true203

land.lhs.true203:                                 ; preds = %if.end200
  %call204 = call i32 @CRYPTO_THREAD_run_once(i32* noundef nonnull @engine_dynamic, void ()* noundef nonnull @ossl_init_engine_dynamic_ossl_) #5
  %tobool205 = icmp ne i32 %call204, 0
  %.b271 = load i1, i1* @ossl_init_engine_dynamic_ossl_ret_, align 4
  %or.cond237 = select i1 %tobool205, i1 %.b271, i1 false
  br i1 %or.cond237, label %if.end210, label %cleanup220

if.end210:                                        ; preds = %land.lhs.true203, %if.end200
  %and211 = and i64 %opts, 65024
  %tobool212.not = icmp eq i64 %and211, 0
  br i1 %tobool212.not, label %if.end215, label %if.then213

if.then213:                                       ; preds = %if.end210
  %call214 = call i32 @ENGINE_register_all_complete() #5
  br label %if.end215

if.end215:                                        ; preds = %if.then213, %if.end210
  %15 = load i8*, i8** @init_lock, align 8, !tbaa !4
  %call216 = call i32 @CRYPTO_atomic_or(i64* noundef nonnull @optsdone, i64 noundef %opts, i64* noundef nonnull %tmp, i8* noundef %15) #5
  %tobool217.not = icmp ne i32 %call216, 0
  %.273 = zext i1 %tobool217.not to i32
  br label %cleanup220

cleanup220:                                       ; preds = %if.end153, %if.then144, %if.end161, %if.end215, %land.lhs.true203, %land.lhs.true193, %land.lhs.true183, %land.lhs.true173, %if.then137, %if.else149, %land.lhs.true123, %land.lhs.true116, %land.lhs.true106, %land.lhs.true96, %land.lhs.true86, %land.lhs.true76, %land.lhs.true66, %land.lhs.true, %if.end47, %if.else, %if.then32, %if.end24, %if.then20, %if.end14, %if.end9, %if.then5, %if.then, %if.then2
  %retval.3 = phi i32 [ 0, %if.then2 ], [ 0, %if.then ], [ 1, %if.then5 ], [ 0, %if.end9 ], [ 1, %if.end14 ], [ 0, %if.then20 ], [ 1, %if.end24 ], [ 0, %if.then32 ], [ 0, %if.else ], [ 0, %if.end47 ], [ 0, %land.lhs.true ], [ 0, %land.lhs.true66 ], [ 0, %land.lhs.true76 ], [ 0, %land.lhs.true86 ], [ 0, %land.lhs.true96 ], [ 0, %land.lhs.true106 ], [ 0, %land.lhs.true116 ], [ 0, %land.lhs.true123 ], [ 0, %if.else149 ], [ 0, %if.then137 ], [ 0, %land.lhs.true173 ], [ 0, %land.lhs.true183 ], [ 0, %land.lhs.true193 ], [ 0, %land.lhs.true203 ], [ %.273, %if.end215 ], [ 0, %if.end161 ], [ 0, %if.then144 ], [ 0, %if.end153 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #6
  ret i32 %retval.3
}

declare void @ERR_new() local_unnamed_addr #2

declare void @ERR_set_debug(i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #2

declare void @ERR_set_error(i32 noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #2

declare i32 @CRYPTO_atomic_load(i64* noundef, i64* noundef, i8* noundef) local_unnamed_addr #2

declare i32 @CRYPTO_THREAD_run_once(i32* noundef, void ()* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal void @ossl_init_base_ossl_() #0 {
entry:
  %call = tail call fastcc i32 @ossl_init_base() #7
  store i32 %call, i32* @ossl_init_base_ossl_ret_, align 4, !tbaa !15
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define internal void @ossl_init_no_register_atexit_ossl_() #3 {
entry:
  store i32 1, i32* @ossl_init_register_atexit_ossl_ret_, align 4, !tbaa !15
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @ossl_init_register_atexit_ossl_() #0 {
entry:
  %call = tail call fastcc i32 @ossl_init_register_atexit() #7
  store i32 %call, i32* @ossl_init_register_atexit_ossl_ret_, align 4, !tbaa !15
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define internal void @ossl_init_load_crypto_nodelete_ossl_() #3 {
entry:
  store i1 true, i1* @ossl_init_load_crypto_nodelete_ossl_ret_, align 4
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define internal void @ossl_init_no_load_crypto_strings_ossl_() #3 {
entry:
  store i32 1, i32* @ossl_init_load_crypto_strings_ossl_ret_, align 4, !tbaa !15
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @ossl_init_load_crypto_strings_ossl_() #0 {
entry:
  %call = tail call fastcc i32 @ossl_init_load_crypto_strings() #7
  store i32 %call, i32* @ossl_init_load_crypto_strings_ossl_ret_, align 4, !tbaa !15
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define internal void @ossl_init_no_add_all_ciphers_ossl_() #3 {
entry:
  store i1 true, i1* @ossl_init_add_all_ciphers_ossl_ret_, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @ossl_init_add_all_ciphers_ossl_() #0 {
entry:
  tail call fastcc void @ossl_init_add_all_ciphers() #7
  store i1 true, i1* @ossl_init_add_all_ciphers_ossl_ret_, align 4
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define internal void @ossl_init_no_add_all_digests_ossl_() #3 {
entry:
  store i1 true, i1* @ossl_init_add_all_digests_ossl_ret_, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @ossl_init_add_all_digests_ossl_() #0 {
entry:
  tail call fastcc void @ossl_init_add_all_digests() #7
  store i1 true, i1* @ossl_init_add_all_digests_ossl_ret_, align 4
  ret void
}

declare i32 @openssl_init_fork_handlers() local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal void @ossl_init_no_config_ossl_() #0 {
entry:
  tail call fastcc void @ossl_init_no_config() #7
  store i32 1, i32* @ossl_init_config_ossl_ret_, align 4, !tbaa !15
  ret void
}

declare i8* @CRYPTO_THREAD_get_local(i32* noundef) local_unnamed_addr #2

declare i32 @CRYPTO_THREAD_set_local(i32* noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal void @ossl_init_config_ossl_() #0 {
entry:
  %call = tail call fastcc i32 @ossl_init_config() #7
  store i32 %call, i32* @ossl_init_config_ossl_ret_, align 4, !tbaa !15
  ret void
}

declare i32 @CRYPTO_THREAD_write_lock(i8* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal void @ossl_init_config_settings_ossl_() #0 {
entry:
  %call = tail call fastcc i32 @ossl_init_config_settings() #7
  store i32 %call, i32* @ossl_init_config_ossl_ret_, align 4, !tbaa !15
  ret void
}

declare i32 @CRYPTO_THREAD_unlock(i8* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal void @ossl_init_async_ossl_() #0 {
entry:
  %call = tail call fastcc i32 @ossl_init_async() #7
  store i32 %call, i32* @ossl_init_async_ossl_ret_, align 4, !tbaa !15
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @ossl_init_engine_openssl_ossl_() #0 {
entry:
  tail call fastcc void @ossl_init_engine_openssl() #7
  store i1 true, i1* @ossl_init_engine_openssl_ossl_ret_, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @ossl_init_engine_rdrand_ossl_() #0 {
entry:
  tail call fastcc void @ossl_init_engine_rdrand() #7
  store i1 true, i1* @ossl_init_engine_rdrand_ossl_ret_, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @ossl_init_engine_dynamic_ossl_() #0 {
entry:
  tail call fastcc void @ossl_init_engine_dynamic() #7
  store i1 true, i1* @ossl_init_engine_dynamic_ossl_ret_, align 4
  ret void
}

declare i32 @ENGINE_register_all_complete() local_unnamed_addr #2

declare i32 @CRYPTO_atomic_or(i64* noundef, i64 noundef, i64* noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @OPENSSL_atexit(void ()* noundef %handler) local_unnamed_addr #0 {
entry:
  %call = tail call i8* @CRYPTO_malloc(i64 noundef 16, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 703) #5
  %cmp = icmp eq i8* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 704, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__func__.OPENSSL_atexit, i64 0, i64 0)) #5
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 15, i32 noundef 786688, i8* noundef null) #5
  br label %cleanup

if.end:                                           ; preds = %entry
  %handler1 = bitcast i8* %call to void ()**
  store void ()* %handler, void ()** %handler1, align 8, !tbaa !8
  %0 = load %struct.ossl_init_stop_st*, %struct.ossl_init_stop_st** @stop_handlers, align 8, !tbaa !4
  %next = getelementptr inbounds i8, i8* %call, i64 8
  %1 = bitcast i8* %next to %struct.ossl_init_stop_st**
  store %struct.ossl_init_stop_st* %0, %struct.ossl_init_stop_st** %1, align 8, !tbaa !10
  store i8* %call, i8** bitcast (%struct.ossl_init_stop_st** @stop_handlers to i8**), align 8, !tbaa !4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 1, %if.end ]
  ret i32 %retval.0
}

declare i8* @CRYPTO_malloc(i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @ossl_init_base() unnamed_addr #0 {
entry:
  %call = tail call i8* @CRYPTO_THREAD_lock_new() #5
  store i8* %call, i8** @init_lock, align 8, !tbaa !4
  %cmp = icmp eq i8* %call, null
  br i1 %cmp, label %err, label %if.end

if.end:                                           ; preds = %entry
  tail call void @OPENSSL_cpuid_setup() #5
  %call1 = tail call i32 @ossl_init_thread() #5
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %err, label %if.end3

if.end3:                                          ; preds = %if.end
  %call4 = tail call i32 @CRYPTO_THREAD_init_local(i32* noundef nonnull @in_init_config_local, void (i8*)* noundef null) #5
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %err, label %if.end7

if.end7:                                          ; preds = %if.end3
  store i1 true, i1* @base_inited, align 4
  br label %return

err:                                              ; preds = %if.end3, %if.end, %entry
  %0 = load i8*, i8** @init_lock, align 8, !tbaa !4
  tail call void @CRYPTO_THREAD_lock_free(i8* noundef %0) #5
  store i8* null, i8** @init_lock, align 8, !tbaa !4
  br label %return

return:                                           ; preds = %err, %if.end7
  %retval.0 = phi i32 [ 0, %err ], [ 1, %if.end7 ]
  ret i32 %retval.0
}

declare i8* @CRYPTO_THREAD_lock_new() local_unnamed_addr #2

declare void @OPENSSL_cpuid_setup() local_unnamed_addr #2

declare i32 @ossl_init_thread() local_unnamed_addr #2

declare i32 @CRYPTO_THREAD_init_local(i32* noundef, void (i8*)* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @ossl_init_register_atexit() unnamed_addr #0 {
entry:
  %call = tail call i32 @atexit(void ()* noundef nonnull @OPENSSL_cleanup) #5
  %cmp.not = icmp eq i32 %call, 0
  %. = zext i1 %cmp.not to i32
  ret i32 %.
}

; Function Attrs: nounwind
declare i32 @atexit(void ()* noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @ossl_init_load_crypto_strings() unnamed_addr #0 {
entry:
  %call = tail call i32 @ossl_err_load_crypto_strings() #5
  store i1 true, i1* @load_crypto_strings_inited, align 4
  ret i32 %call
}

declare i32 @ossl_err_load_crypto_strings() local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @ossl_init_add_all_ciphers() unnamed_addr #0 {
entry:
  tail call void @openssl_add_all_ciphers_int() #5
  ret void
}

declare void @openssl_add_all_ciphers_int() local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @ossl_init_add_all_digests() unnamed_addr #0 {
entry:
  tail call void @openssl_add_all_digests_int() #5
  ret void
}

declare void @openssl_add_all_digests_int() local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @ossl_init_no_config() unnamed_addr #0 {
entry:
  tail call void @ossl_no_config_int() #5
  ret void
}

declare void @ossl_no_config_int() local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @ossl_init_config() unnamed_addr #0 {
entry:
  %call = tail call i32 @ossl_config_int(%struct.ossl_init_settings_st* noundef null) #5
  ret i32 %call
}

declare i32 @ossl_config_int(%struct.ossl_init_settings_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @ossl_init_config_settings() unnamed_addr #0 {
entry:
  %0 = load %struct.ossl_init_settings_st*, %struct.ossl_init_settings_st** @conf_settings, align 8, !tbaa !4
  %call = tail call i32 @ossl_config_int(%struct.ossl_init_settings_st* noundef %0) #5
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @ossl_init_async() unnamed_addr #0 {
entry:
  %call = tail call i32 @async_init() #5
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %return, label %if.end

if.end:                                           ; preds = %entry
  store i1 true, i1* @async_inited, align 4
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

declare i32 @async_init() local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @ossl_init_engine_openssl() unnamed_addr #0 {
entry:
  tail call void @engine_load_openssl_int() #5
  ret void
}

declare void @engine_load_openssl_int() local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @ossl_init_engine_rdrand() unnamed_addr #0 {
entry:
  tail call void @engine_load_rdrand_int() #5
  ret void
}

declare void @engine_load_rdrand_int() local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @ossl_init_engine_dynamic() unnamed_addr #0 {
entry:
  tail call void @engine_load_dynamic_int() #5
  ret void
}

declare void @engine_load_dynamic_int() local_unnamed_addr #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nobuiltin nounwind "no-builtins" }
attributes #6 = { nounwind }
attributes #7 = { nobuiltin "no-builtins" }

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
!9 = !{!"ossl_init_stop_st", !5, i64 0, !5, i64 8}
!10 = !{!9, !5, i64 8}
!11 = distinct !{!11, !12}
!12 = !{!"llvm.loop.mustprogress"}
!13 = !{!14, !14, i64 0}
!14 = !{!"long", !6, i64 0}
!15 = !{!16, !16, i64 0}
!16 = !{!"int", !6, i64 0}
