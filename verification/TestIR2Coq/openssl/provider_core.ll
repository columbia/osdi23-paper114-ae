; ModuleID = 'crypto/provider_core.c'
source_filename = "crypto/provider_core.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.OSSL_PROVIDER_INFO = type { i8*, i8*, i32 (%struct.ossl_core_handle_st*, %struct.ossl_dispatch_st*, %struct.ossl_dispatch_st**, i8**)*, %struct.stack_st_INFOPAIR*, i8 }
%struct.ossl_core_handle_st = type opaque
%struct.ossl_dispatch_st = type { i32, void ()* }
%struct.stack_st_INFOPAIR = type opaque
%struct.ossl_lib_ctx_method = type { i32, i8* (%struct.ossl_lib_ctx_st*)*, void (i8*)* }
%struct.ossl_lib_ctx_st = type opaque
%struct.ossl_param_st = type { i8*, i32, i8*, i64, i64 }
%struct.stack_st = type opaque
%struct.INFOPAIR = type { i8*, i8* }
%struct.provider_store_st = type { %struct.ossl_lib_ctx_st*, %struct.stack_st_OSSL_PROVIDER*, %struct.stack_st_OSSL_PROVIDER_CHILD_CB*, i8*, i8*, i8*, %struct.OSSL_PROVIDER_INFO*, i64, i64, i8 }
%struct.stack_st_OSSL_PROVIDER = type opaque
%struct.stack_st_OSSL_PROVIDER_CHILD_CB = type opaque
%struct.ossl_provider_st = type { i8, i8*, i32, i8*, i32, i8*, i8*, %struct.dso_st*, i32 (%struct.ossl_core_handle_st*, %struct.ossl_dispatch_st*, %struct.ossl_dispatch_st**, i8**)*, %struct.stack_st_INFOPAIR*, %struct.ossl_lib_ctx_st*, %struct.provider_store_st*, i32, %struct.ERR_string_data_st*, void (i8*)*, %struct.ossl_param_st* (i8*)*, i32 (i8*, %struct.ossl_param_st*)*, i32 (i8*, i8*, i32 (%struct.ossl_param_st*, i8*)*, i8*)*, i32 (i8*)*, %struct.ossl_algorithm_st* (i8*, i32, i32*)*, void (i8*, i32, %struct.ossl_algorithm_st*)*, i8*, i64, i8*, %struct.ossl_core_handle_st*, i8, i8*, %struct.ossl_dispatch_st* }
%struct.dso_st = type opaque
%struct.ERR_string_data_st = type { i64, i8* }
%struct.ossl_algorithm_st = type { i8*, i8*, %struct.ossl_dispatch_st*, i8* }
%struct.ossl_init_settings_st = type opaque
%struct.OSSL_PROVIDER_CHILD_CB = type { %struct.ossl_provider_st*, i32 (%struct.ossl_core_handle_st*, i8*)*, i32 (%struct.ossl_core_handle_st*, i8*)*, i32 (i8*, i8*)*, i8* }
%struct.dso_meth_st = type opaque
%struct.ossl_item_st = type { i32, i8* }
%struct.openssl_core_ctx_st = type opaque
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct.ossl_core_bio_st = type opaque

@.str = private unnamed_addr constant [23 x i8] c"crypto/provider_core.c\00", align 1
@__func__.ossl_provider_info_add_to_store = private unnamed_addr constant [32 x i8] c"ossl_provider_info_add_to_store\00", align 1
@__func__.ossl_provider_new = private unnamed_addr constant [18 x i8] c"ossl_provider_new\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"name=%s\00", align 1
@ossl_predefined_providers = external local_unnamed_addr constant [0 x %struct.OSSL_PROVIDER_INFO], align 8
@__func__.ossl_provider_add_to_store = private unnamed_addr constant [27 x i8] c"ossl_provider_add_to_store\00", align 1
@__func__.ossl_provider_set_module_path = private unnamed_addr constant [30 x i8] c"ossl_provider_set_module_path\00", align 1
@__func__.OSSL_PROVIDER_set_default_search_path = private unnamed_addr constant [38 x i8] c"OSSL_PROVIDER_set_default_search_path\00", align 1
@__func__.ossl_provider_set_operation_bit = private unnamed_addr constant [32 x i8] c"ossl_provider_set_operation_bit\00", align 1
@__func__.ossl_provider_test_operation_bit = private unnamed_addr constant [33 x i8] c"ossl_provider_test_operation_bit\00", align 1
@provider_store_method = internal constant %struct.ossl_lib_ctx_method { i32 1, i8* (%struct.ossl_lib_ctx_st*)* @provider_store_new, void (i8*)* @provider_store_free }, align 8
@__func__.get_provider_store = private unnamed_addr constant [19 x i8] c"get_provider_store\00", align 1
@__func__.provider_new = private unnamed_addr constant [13 x i8] c"provider_new\00", align 1
@__func__.infopair_add = private unnamed_addr constant [13 x i8] c"infopair_add\00", align 1
@__func__.provider_init = private unnamed_addr constant [14 x i8] c"provider_init\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"OPENSSL_MODULES\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"/usr/local/lib64/ossl-modules\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"OSSL_provider_init\00", align 1
@core_dispatch_ = internal constant [48 x %struct.ossl_dispatch_st] [%struct.ossl_dispatch_st { i32 1, void ()* bitcast (%struct.ossl_param_st* (%struct.ossl_core_handle_st*)* @core_gettable_params to void ()*) }, %struct.ossl_dispatch_st { i32 2, void ()* bitcast (i32 (%struct.ossl_core_handle_st*, %struct.ossl_param_st*)* @core_get_params to void ()*) }, %struct.ossl_dispatch_st { i32 4, void ()* bitcast (%struct.openssl_core_ctx_st* (%struct.ossl_core_handle_st*)* @core_get_libctx to void ()*) }, %struct.ossl_dispatch_st { i32 3, void ()* bitcast (i32 (%struct.ossl_core_handle_st*, void (i8*)*, i8*)* @core_thread_start to void ()*) }, %struct.ossl_dispatch_st { i32 5, void ()* bitcast (void (%struct.ossl_core_handle_st*)* @core_new_error to void ()*) }, %struct.ossl_dispatch_st { i32 6, void ()* bitcast (void (%struct.ossl_core_handle_st*, i8*, i32, i8*)* @core_set_error_debug to void ()*) }, %struct.ossl_dispatch_st { i32 7, void ()* bitcast (void (%struct.ossl_core_handle_st*, i32, i8*, %struct.__va_list_tag*)* @core_vset_error to void ()*) }, %struct.ossl_dispatch_st { i32 8, void ()* bitcast (i32 (%struct.ossl_core_handle_st*)* @core_set_error_mark to void ()*) }, %struct.ossl_dispatch_st { i32 9, void ()* bitcast (i32 (%struct.ossl_core_handle_st*)* @core_clear_last_error_mark to void ()*) }, %struct.ossl_dispatch_st { i32 10, void ()* bitcast (i32 (%struct.ossl_core_handle_st*)* @core_pop_error_to_mark to void ()*) }, %struct.ossl_dispatch_st { i32 40, void ()* bitcast (%struct.ossl_core_bio_st* (i8*, i8*)* @ossl_core_bio_new_file to void ()*) }, %struct.ossl_dispatch_st { i32 41, void ()* bitcast (%struct.ossl_core_bio_st* (i8*, i32)* @ossl_core_bio_new_mem_buf to void ()*) }, %struct.ossl_dispatch_st { i32 42, void ()* bitcast (i32 (%struct.ossl_core_bio_st*, i8*, i64, i64*)* @ossl_core_bio_read_ex to void ()*) }, %struct.ossl_dispatch_st { i32 43, void ()* bitcast (i32 (%struct.ossl_core_bio_st*, i8*, i64, i64*)* @ossl_core_bio_write_ex to void ()*) }, %struct.ossl_dispatch_st { i32 49, void ()* bitcast (i32 (%struct.ossl_core_bio_st*, i8*, i32)* @ossl_core_bio_gets to void ()*) }, %struct.ossl_dispatch_st { i32 48, void ()* bitcast (i32 (%struct.ossl_core_bio_st*, i8*)* @ossl_core_bio_puts to void ()*) }, %struct.ossl_dispatch_st { i32 50, void ()* bitcast (i64 (%struct.ossl_core_bio_st*, i32, i64, i8*)* @ossl_core_bio_ctrl to void ()*) }, %struct.ossl_dispatch_st { i32 44, void ()* bitcast (i32 (%struct.ossl_core_bio_st*)* @ossl_core_bio_up_ref to void ()*) }, %struct.ossl_dispatch_st { i32 45, void ()* bitcast (i32 (%struct.ossl_core_bio_st*)* @ossl_core_bio_free to void ()*) }, %struct.ossl_dispatch_st { i32 46, void ()* bitcast (i32 (%struct.ossl_core_bio_st*, i8*, %struct.__va_list_tag*)* @ossl_core_bio_vprintf to void ()*) }, %struct.ossl_dispatch_st { i32 47, void ()* bitcast (i32 (i8*, i64, i8*, %struct.__va_list_tag*)* @BIO_vsnprintf to void ()*) }, %struct.ossl_dispatch_st { i32 100, void ()* bitcast (void (%struct.ossl_lib_ctx_st*, i32 (%struct.ossl_param_st*, i8*)**, i8**)* @OSSL_SELF_TEST_get_callback to void ()*) }, %struct.ossl_dispatch_st { i32 101, void ()* bitcast (i64 (%struct.ossl_core_handle_st*, i8**, i32, i64, i64)* @ossl_rand_get_entropy to void ()*) }, %struct.ossl_dispatch_st { i32 102, void ()* bitcast (void (%struct.ossl_core_handle_st*, i8*, i64)* @ossl_rand_cleanup_entropy to void ()*) }, %struct.ossl_dispatch_st { i32 103, void ()* bitcast (i64 (%struct.ossl_core_handle_st*, i8**, i64, i64, i8*, i64)* @ossl_rand_get_nonce to void ()*) }, %struct.ossl_dispatch_st { i32 104, void ()* bitcast (void (%struct.ossl_core_handle_st*, i8*, i64)* @ossl_rand_cleanup_nonce to void ()*) }, %struct.ossl_dispatch_st { i32 20, void ()* bitcast (i8* (i64, i8*, i32)* @CRYPTO_malloc to void ()*) }, %struct.ossl_dispatch_st { i32 21, void ()* bitcast (i8* (i64, i8*, i32)* @CRYPTO_zalloc to void ()*) }, %struct.ossl_dispatch_st { i32 22, void ()* bitcast (void (i8*, i8*, i32)* @CRYPTO_free to void ()*) }, %struct.ossl_dispatch_st { i32 23, void ()* bitcast (void (i8*, i64, i8*, i32)* @CRYPTO_clear_free to void ()*) }, %struct.ossl_dispatch_st { i32 24, void ()* bitcast (i8* (i8*, i64, i8*, i32)* @CRYPTO_realloc to void ()*) }, %struct.ossl_dispatch_st { i32 25, void ()* bitcast (i8* (i8*, i64, i64, i8*, i32)* @CRYPTO_clear_realloc to void ()*) }, %struct.ossl_dispatch_st { i32 26, void ()* bitcast (i8* (i64, i8*, i32)* @CRYPTO_secure_malloc to void ()*) }, %struct.ossl_dispatch_st { i32 27, void ()* bitcast (i8* (i64, i8*, i32)* @CRYPTO_secure_zalloc to void ()*) }, %struct.ossl_dispatch_st { i32 28, void ()* bitcast (void (i8*, i8*, i32)* @CRYPTO_secure_free to void ()*) }, %struct.ossl_dispatch_st { i32 29, void ()* bitcast (void (i8*, i64, i8*, i32)* @CRYPTO_secure_clear_free to void ()*) }, %struct.ossl_dispatch_st { i32 30, void ()* bitcast (i32 (i8*)* @CRYPTO_secure_allocated to void ()*) }, %struct.ossl_dispatch_st { i32 31, void ()* bitcast (void (i8*, i64)* @OPENSSL_cleanse to void ()*) }, %struct.ossl_dispatch_st { i32 105, void ()* bitcast (i32 (%struct.ossl_core_handle_st*, i32 (%struct.ossl_core_handle_st*, i8*)*, i32 (%struct.ossl_core_handle_st*, i8*)*, i32 (i8*, i8*)*, i8*)* @ossl_provider_register_child_cb to void ()*) }, %struct.ossl_dispatch_st { i32 106, void ()* bitcast (void (%struct.ossl_core_handle_st*)* @ossl_provider_deregister_child_cb to void ()*) }, %struct.ossl_dispatch_st { i32 107, void ()* bitcast (i8* (%struct.ossl_provider_st*)* @OSSL_PROVIDER_get0_name to void ()*) }, %struct.ossl_dispatch_st { i32 108, void ()* bitcast (i8* (%struct.ossl_provider_st*)* @OSSL_PROVIDER_get0_provider_ctx to void ()*) }, %struct.ossl_dispatch_st { i32 109, void ()* bitcast (%struct.ossl_dispatch_st* (%struct.ossl_provider_st*)* @OSSL_PROVIDER_get0_dispatch to void ()*) }, %struct.ossl_dispatch_st { i32 110, void ()* bitcast (i32 (%struct.ossl_provider_st*, i32)* @provider_up_ref_intern to void ()*) }, %struct.ossl_dispatch_st { i32 111, void ()* bitcast (i32 (%struct.ossl_provider_st*, i32)* @provider_free_intern to void ()*) }, %struct.ossl_dispatch_st { i32 11, void ()* bitcast (i32 (%struct.ossl_core_handle_st*, i8*, i8*, i8*)* @core_obj_add_sigid to void ()*) }, %struct.ossl_dispatch_st { i32 12, void ()* bitcast (i32 (%struct.ossl_core_handle_st*, i8*, i8*, i8*)* @core_obj_create to void ()*) }, %struct.ossl_dispatch_st zeroinitializer], align 16
@param_types = internal constant [4 x %struct.ossl_param_st] [%struct.ossl_param_st { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i32 0, i32 0), i32 6, i8* null, i64 0, i64 -1 }, %struct.ossl_param_st { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i32 0, i32 0), i32 6, i8* null, i64 0, i64 -1 }, %struct.ossl_param_st { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i32 0, i32 0), i32 6, i8* null, i64 0, i64 -1 }, %struct.ossl_param_st zeroinitializer], align 16
@.str.5 = private unnamed_addr constant [16 x i8] c"openssl-version\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"provider-name\00", align 1
@.str.7 = private unnamed_addr constant [16 x i8] c"module-filename\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"3.0.0\00", align 1

; Function Attrs: noinline nounwind uwtable
define void @ossl_provider_info_clear(%struct.OSSL_PROVIDER_INFO* nocapture noundef readonly %info) local_unnamed_addr #0 {
entry:
  %name = getelementptr inbounds %struct.OSSL_PROVIDER_INFO, %struct.OSSL_PROVIDER_INFO* %info, i64 0, i32 0
  %0 = load i8*, i8** %name, align 8, !tbaa !4
  tail call void @CRYPTO_free(i8* noundef %0, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 276) #13
  %path = getelementptr inbounds %struct.OSSL_PROVIDER_INFO, %struct.OSSL_PROVIDER_INFO* %info, i64 0, i32 1
  %1 = load i8*, i8** %path, align 8, !tbaa !10
  tail call void @CRYPTO_free(i8* noundef %1, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 277) #13
  %parameters = getelementptr inbounds %struct.OSSL_PROVIDER_INFO, %struct.OSSL_PROVIDER_INFO* %info, i64 0, i32 3
  %2 = load %struct.stack_st_INFOPAIR*, %struct.stack_st_INFOPAIR** %parameters, align 8, !tbaa !11
  tail call fastcc void @sk_INFOPAIR_pop_free(%struct.stack_st_INFOPAIR* noundef %2) #14
  ret void
}

declare void @CRYPTO_free(i8* noundef, i8* noundef, i32 noundef) #1

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @sk_INFOPAIR_pop_free(%struct.stack_st_INFOPAIR* noundef %sk) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.stack_st_INFOPAIR* %sk to %struct.stack_st*
  tail call void @OPENSSL_sk_pop_free(%struct.stack_st* noundef %0, void (i8*)* noundef bitcast (void (%struct.INFOPAIR*)* @infopair_free to void (i8*)*)) #13
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @infopair_free(%struct.INFOPAIR* noundef %pair) #0 {
entry:
  %name = getelementptr inbounds %struct.INFOPAIR, %struct.INFOPAIR* %pair, i64 0, i32 0
  %0 = load i8*, i8** %name, align 8, !tbaa !12
  tail call void @CRYPTO_free(i8* noundef %0, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 246) #13
  %value = getelementptr inbounds %struct.INFOPAIR, %struct.INFOPAIR* %pair, i64 0, i32 1
  %1 = load i8*, i8** %value, align 8, !tbaa !14
  tail call void @CRYPTO_free(i8* noundef %1, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 247) #13
  %2 = bitcast %struct.INFOPAIR* %pair to i8*
  tail call void @CRYPTO_free(i8* noundef %2, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 248) #13
  ret void
}

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_provider_disable_fallback_loading(%struct.ossl_lib_ctx_st* noundef %libctx) local_unnamed_addr #0 {
entry:
  %call = tail call fastcc %struct.provider_store_st* @get_provider_store(%struct.ossl_lib_ctx_st* noundef %libctx) #14
  %cmp.not = icmp eq %struct.provider_store_st* %call, null
  br i1 %cmp.not, label %cleanup, label %if.then

if.then:                                          ; preds = %entry
  %lock = getelementptr inbounds %struct.provider_store_st, %struct.provider_store_st* %call, i64 0, i32 4
  %0 = load i8*, i8** %lock, align 8, !tbaa !15
  %call1 = tail call i32 @CRYPTO_THREAD_write_lock(i8* noundef %0) #13
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %if.then
  %use_fallbacks = getelementptr inbounds %struct.provider_store_st, %struct.provider_store_st* %call, i64 0, i32 9
  %bf.load = load i8, i8* %use_fallbacks, align 8
  %bf.clear = and i8 %bf.load, -2
  store i8 %bf.clear, i8* %use_fallbacks, align 8
  %1 = load i8*, i8** %lock, align 8, !tbaa !15
  %call4 = tail call i32 @CRYPTO_THREAD_unlock(i8* noundef %1) #13
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.then, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %if.then ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.provider_store_st* @get_provider_store(%struct.ossl_lib_ctx_st* noundef %libctx) unnamed_addr #0 {
entry:
  %call = tail call i8* @ossl_lib_ctx_get_data(%struct.ossl_lib_ctx_st* noundef %libctx, i32 noundef 1, %struct.ossl_lib_ctx_method* noundef nonnull @provider_store_method) #13
  %cmp = icmp eq i8* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #13
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 337, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.get_provider_store, i64 0, i64 0)) #13
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 15, i32 noundef 786691, i8* noundef null) #13
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %0 = bitcast i8* %call to %struct.provider_store_st*
  ret %struct.provider_store_st* %0
}

declare i32 @CRYPTO_THREAD_write_lock(i8* noundef) local_unnamed_addr #1

declare i32 @CRYPTO_THREAD_unlock(i8* noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_provider_info_add_to_store(%struct.ossl_lib_ctx_st* noundef %libctx, %struct.OSSL_PROVIDER_INFO* nocapture noundef readonly %entry1) local_unnamed_addr #0 {
entry:
  %call = tail call fastcc %struct.provider_store_st* @get_provider_store(%struct.ossl_lib_ctx_st* noundef %libctx) #14
  %name = getelementptr inbounds %struct.OSSL_PROVIDER_INFO, %struct.OSSL_PROVIDER_INFO* %entry1, i64 0, i32 0
  %0 = load i8*, i8** %name, align 8, !tbaa !4
  %cmp = icmp eq i8* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #13
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 364, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @__func__.ossl_provider_info_add_to_store, i64 0, i64 0)) #13
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 15, i32 noundef 786690, i8* noundef null) #13
  br label %cleanup35

if.end:                                           ; preds = %entry
  %cmp2 = icmp eq %struct.provider_store_st* %call, null
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  tail call void @ERR_new() #13
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 369, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @__func__.ossl_provider_info_add_to_store, i64 0, i64 0)) #13
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 15, i32 noundef 786691, i8* noundef null) #13
  br label %cleanup35

if.end4:                                          ; preds = %if.end
  %lock = getelementptr inbounds %struct.provider_store_st, %struct.provider_store_st* %call, i64 0, i32 4
  %1 = load i8*, i8** %lock, align 8, !tbaa !15
  %call5 = tail call i32 @CRYPTO_THREAD_write_lock(i8* noundef %1) #13
  %tobool.not = icmp eq i32 %call5, 0
  br i1 %tobool.not, label %cleanup35, label %if.end7

if.end7:                                          ; preds = %if.end4
  %provinfosz = getelementptr inbounds %struct.provider_store_st, %struct.provider_store_st* %call, i64 0, i32 8
  %2 = load i64, i64* %provinfosz, align 8, !tbaa !18
  %cmp8 = icmp eq i64 %2, 0
  br i1 %cmp8, label %if.then9, label %if.else

if.then9:                                         ; preds = %if.end7
  %call10 = tail call i8* @CRYPTO_zalloc(i64 noundef 400, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 377) #13
  %provinfo = getelementptr inbounds %struct.provider_store_st, %struct.provider_store_st* %call, i64 0, i32 6
  %3 = bitcast %struct.OSSL_PROVIDER_INFO** %provinfo to i8**
  store i8* %call10, i8** %3, align 8, !tbaa !19
  %cmp12 = icmp eq i8* %call10, null
  br i1 %cmp12, label %if.then13, label %if.end14

if.then13:                                        ; preds = %if.then9
  tail call void @ERR_new() #13
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 379, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @__func__.ossl_provider_info_add_to_store, i64 0, i64 0)) #13
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 15, i32 noundef 786688, i8* noundef null) #13
  br label %err

if.end14:                                         ; preds = %if.then9
  %4 = bitcast i8* %call10 to %struct.OSSL_PROVIDER_INFO*
  store i64 10, i64* %provinfosz, align 8, !tbaa !18
  br label %if.end29

if.else:                                          ; preds = %if.end7
  %numprovinfo = getelementptr inbounds %struct.provider_store_st, %struct.provider_store_st* %call, i64 0, i32 7
  %5 = load i64, i64* %numprovinfo, align 8, !tbaa !20
  %cmp17 = icmp eq i64 %5, %2
  br i1 %cmp17, label %if.then18, label %if.else.if.end29_crit_edge

if.else.if.end29_crit_edge:                       ; preds = %if.else
  %provinfo30.phi.trans.insert = getelementptr inbounds %struct.provider_store_st, %struct.provider_store_st* %call, i64 0, i32 6
  %.pre = load %struct.OSSL_PROVIDER_INFO*, %struct.OSSL_PROVIDER_INFO** %provinfo30.phi.trans.insert, align 8, !tbaa !19
  br label %if.end29

if.then18:                                        ; preds = %if.else
  %add = add i64 %2, 10
  %provinfo20 = getelementptr inbounds %struct.provider_store_st, %struct.provider_store_st* %call, i64 0, i32 6
  %6 = bitcast %struct.OSSL_PROVIDER_INFO** %provinfo20 to i8**
  %7 = load i8*, i8** %6, align 8, !tbaa !19
  %mul = mul i64 %add, 40
  %call21 = tail call i8* @CRYPTO_realloc(i8* noundef %7, i64 noundef %mul, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 388) #13
  %cmp22 = icmp eq i8* %call21, null
  br i1 %cmp22, label %cleanup, label %cleanup.thread

cleanup.thread:                                   ; preds = %if.then18
  store i8* %call21, i8** %6, align 8, !tbaa !19
  store i64 %add, i64* %provinfosz, align 8, !tbaa !18
  %8 = bitcast i8* %call21 to %struct.OSSL_PROVIDER_INFO*
  br label %if.end29

cleanup:                                          ; preds = %if.then18
  tail call void @ERR_new() #13
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 390, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @__func__.ossl_provider_info_add_to_store, i64 0, i64 0)) #13
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 15, i32 noundef 786688, i8* noundef null) #13
  br label %err

if.end29:                                         ; preds = %if.else.if.end29_crit_edge, %cleanup.thread, %if.end14
  %9 = phi %struct.OSSL_PROVIDER_INFO* [ %.pre, %if.else.if.end29_crit_edge ], [ %8, %cleanup.thread ], [ %4, %if.end14 ]
  %numprovinfo31 = getelementptr inbounds %struct.provider_store_st, %struct.provider_store_st* %call, i64 0, i32 7
  %10 = load i64, i64* %numprovinfo31, align 8, !tbaa !20
  %arrayidx = getelementptr inbounds %struct.OSSL_PROVIDER_INFO, %struct.OSSL_PROVIDER_INFO* %9, i64 %10
  %11 = bitcast %struct.OSSL_PROVIDER_INFO* %arrayidx to i8*
  %12 = bitcast %struct.OSSL_PROVIDER_INFO* %entry1 to i8*
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(40) %11, i8* noundef nonnull align 8 dereferenceable(40) %12, i64 40, i1 false), !tbaa.struct !21
  %13 = load i64, i64* %numprovinfo31, align 8, !tbaa !20
  %inc = add i64 %13, 1
  store i64 %inc, i64* %numprovinfo31, align 8, !tbaa !20
  br label %err

err:                                              ; preds = %cleanup, %if.end29, %if.then13
  %ret.0 = phi i32 [ 0, %if.then13 ], [ 1, %if.end29 ], [ 0, %cleanup ]
  %14 = load i8*, i8** %lock, align 8, !tbaa !15
  %call34 = tail call i32 @CRYPTO_THREAD_unlock(i8* noundef %14) #13
  br label %cleanup35

cleanup35:                                        ; preds = %if.end4, %err, %if.then3, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 0, %if.then3 ], [ %ret.0, %err ], [ 0, %if.end4 ]
  ret i32 %retval.0
}

declare void @ERR_new() local_unnamed_addr #1

declare void @ERR_set_debug(i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #1

declare void @ERR_set_error(i32 noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #1

declare i8* @CRYPTO_zalloc(i64 noundef, i8* noundef, i32 noundef) #1

declare i8* @CRYPTO_realloc(i8* noundef, i64 noundef, i8* noundef, i32 noundef) #1

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: noinline nounwind uwtable
define %struct.ossl_provider_st* @ossl_provider_find(%struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef %name, i32 noundef %noconfig) local_unnamed_addr #0 {
entry:
  %tmpl = alloca %struct.ossl_provider_st, align 8
  %call = tail call fastcc %struct.provider_store_st* @get_provider_store(%struct.ossl_lib_ctx_st* noundef %libctx) #14
  %cmp.not = icmp eq %struct.provider_store_st* %call, null
  br i1 %cmp.not, label %cleanup27, label %if.then

if.then:                                          ; preds = %entry
  %0 = getelementptr inbounds %struct.ossl_provider_st, %struct.ossl_provider_st* %tmpl, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 224, i8* nonnull %0) #15
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(224) %0, i8 0, i64 224, i1 false)
  %tobool.not = icmp eq i32 %noconfig, 0
  br i1 %tobool.not, label %if.then1, label %if.end6

if.then1:                                         ; preds = %if.then
  %call2 = tail call i32 @ossl_lib_ctx_is_default(%struct.ossl_lib_ctx_st* noundef %libctx) #13
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end6, label %if.then4

if.then4:                                         ; preds = %if.then1
  %call5 = tail call i32 @OPENSSL_init_crypto(i64 noundef 64, %struct.ossl_init_settings_st* noundef null) #13
  br label %if.end6

if.end6:                                          ; preds = %if.then1, %if.then4, %if.then
  %name7 = getelementptr inbounds %struct.ossl_provider_st, %struct.ossl_provider_st* %tmpl, i64 0, i32 5
  store i8* %name, i8** %name7, align 8, !tbaa !24
  %lock = getelementptr inbounds %struct.provider_store_st, %struct.provider_store_st* %call, i64 0, i32 4
  %1 = load i8*, i8** %lock, align 8, !tbaa !15
  %call8 = tail call i32 @CRYPTO_THREAD_read_lock(i8* noundef %1) #13
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %cleanup, label %if.end11

if.end11:                                         ; preds = %if.end6
  %providers = getelementptr inbounds %struct.provider_store_st, %struct.provider_store_st* %call, i64 0, i32 1
  %2 = load %struct.stack_st_OSSL_PROVIDER*, %struct.stack_st_OSSL_PROVIDER** %providers, align 8, !tbaa !26
  %call12 = call fastcc i32 @sk_OSSL_PROVIDER_find(%struct.stack_st_OSSL_PROVIDER* noundef %2, %struct.ossl_provider_st* noundef nonnull %tmpl) #14
  %cmp13.not = icmp eq i32 %call12, -1
  br i1 %cmp13.not, label %if.end17.thread, label %if.end17

if.end17.thread:                                  ; preds = %if.end11
  %3 = load i8*, i8** %lock, align 8, !tbaa !15
  %call1939 = call i32 @CRYPTO_THREAD_unlock(i8* noundef %3) #13
  br label %cleanup.thread

if.end17:                                         ; preds = %if.end11
  %4 = load %struct.stack_st_OSSL_PROVIDER*, %struct.stack_st_OSSL_PROVIDER** %providers, align 8, !tbaa !26
  %call16 = call fastcc %struct.ossl_provider_st* @sk_OSSL_PROVIDER_value(%struct.stack_st_OSSL_PROVIDER* noundef %4, i32 noundef %call12) #14
  %5 = load i8*, i8** %lock, align 8, !tbaa !15
  %call19 = call i32 @CRYPTO_THREAD_unlock(i8* noundef %5) #13
  %cmp20.not = icmp eq %struct.ossl_provider_st* %call16, null
  br i1 %cmp20.not, label %cleanup.thread, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end17
  %call21 = call i32 @ossl_provider_up_ref(%struct.ossl_provider_st* noundef nonnull %call16) #14
  %tobool22.not = icmp eq i32 %call21, 0
  %spec.select = select i1 %tobool22.not, %struct.ossl_provider_st* null, %struct.ossl_provider_st* %call16
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %if.end17.thread, %land.lhs.true, %if.end17
  %prov.2.ph = phi %struct.ossl_provider_st* [ null, %if.end17.thread ], [ %spec.select, %land.lhs.true ], [ null, %if.end17 ]
  call void @llvm.lifetime.end.p0i8(i64 224, i8* nonnull %0) #15
  br label %cleanup27

cleanup:                                          ; preds = %if.end6
  call void @llvm.lifetime.end.p0i8(i64 224, i8* nonnull %0) #15
  br label %cleanup27

cleanup27:                                        ; preds = %entry, %cleanup.thread, %cleanup
  %retval.1 = phi %struct.ossl_provider_st* [ null, %cleanup ], [ null, %entry ], [ %prov.2.ph, %cleanup.thread ]
  ret %struct.ossl_provider_st* %retval.1
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #4

declare i32 @ossl_lib_ctx_is_default(%struct.ossl_lib_ctx_st* noundef) local_unnamed_addr #1

declare i32 @OPENSSL_init_crypto(i64 noundef, %struct.ossl_init_settings_st* noundef) local_unnamed_addr #1

declare i32 @CRYPTO_THREAD_read_lock(i8* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @sk_OSSL_PROVIDER_find(%struct.stack_st_OSSL_PROVIDER* noundef %sk, %struct.ossl_provider_st* noundef %ptr) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.stack_st_OSSL_PROVIDER* %sk to %struct.stack_st*
  %1 = getelementptr %struct.ossl_provider_st, %struct.ossl_provider_st* %ptr, i64 0, i32 0
  %call = tail call i32 @OPENSSL_sk_find(%struct.stack_st* noundef %0, i8* noundef %1) #13
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.ossl_provider_st* @sk_OSSL_PROVIDER_value(%struct.stack_st_OSSL_PROVIDER* noundef %sk, i32 noundef %idx) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.stack_st_OSSL_PROVIDER* %sk to %struct.stack_st*
  %call = tail call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %0, i32 noundef %idx) #13
  %1 = bitcast i8* %call to %struct.ossl_provider_st*
  ret %struct.ossl_provider_st* %1
}

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_provider_up_ref(%struct.ossl_provider_st* noundef %prov) local_unnamed_addr #0 {
entry:
  %ref = alloca i32, align 4
  %0 = bitcast i32* %ref to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #15
  store i32 0, i32* %ref, align 4, !tbaa !23
  %refcnt = getelementptr inbounds %struct.ossl_provider_st, %struct.ossl_provider_st* %prov, i64 0, i32 2
  call fastcc void @CRYPTO_UP_REF(i32* noundef nonnull %refcnt, i32* noundef nonnull %ref) #14
  %ischild = getelementptr inbounds %struct.ossl_provider_st, %struct.ossl_provider_st* %prov, i64 0, i32 25
  %bf.load = load i8, i8* %ischild, align 8
  %bf.clear = and i8 %bf.load, 1
  %tobool.not = icmp eq i8 %bf.clear, 0
  br i1 %tobool.not, label %if.end6, label %if.then1

if.then1:                                         ; preds = %entry
  %call2 = tail call i32 @ossl_provider_up_ref_parent(%struct.ossl_provider_st* noundef nonnull %prov, i32 noundef 0) #13
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.then4, label %if.end6

if.then4:                                         ; preds = %if.then1
  tail call void @ossl_provider_free(%struct.ossl_provider_st* noundef nonnull %prov) #14
  br label %cleanup

if.end6:                                          ; preds = %if.then1, %entry
  %1 = load i32, i32* %ref, align 4, !tbaa !23
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.then4
  %retval.0 = phi i32 [ %1, %if.end6 ], [ 0, %if.then4 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #15
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind uwtable willreturn
define internal fastcc void @CRYPTO_UP_REF(i32* nocapture noundef %val, i32* nocapture noundef writeonly %ret) unnamed_addr #5 {
entry:
  %0 = atomicrmw add i32* %val, i32 1 monotonic, align 4
  %add = add nsw i32 %0, 1
  store i32 %add, i32* %ret, align 4, !tbaa !23
  ret void
}

declare i32 @ossl_provider_up_ref_parent(%struct.ossl_provider_st* noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define void @ossl_provider_free(%struct.ossl_provider_st* noundef %prov) local_unnamed_addr #0 {
entry:
  %ref = alloca i32, align 4
  %cmp.not = icmp eq %struct.ossl_provider_st* %prov, null
  br i1 %cmp.not, label %if.end24, label %if.then

if.then:                                          ; preds = %entry
  %0 = bitcast i32* %ref to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #15
  store i32 0, i32* %ref, align 4, !tbaa !23
  %refcnt = getelementptr inbounds %struct.ossl_provider_st, %struct.ossl_provider_st* %prov, i64 0, i32 2
  call fastcc void @CRYPTO_DOWN_REF(i32* noundef nonnull %refcnt, i32* noundef nonnull %ref) #14
  %1 = load i32, i32* %ref, align 4, !tbaa !23
  %cmp1 = icmp eq i32 %1, 0
  br i1 %cmp1, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.then
  %2 = getelementptr %struct.ossl_provider_st, %struct.ossl_provider_st* %prov, i64 0, i32 0
  %bf.load = load i8, i8* %2, align 8
  %bf.clear = and i8 %bf.load, 1
  %tobool.not = icmp eq i8 %bf.clear, 0
  br i1 %tobool.not, label %if.end13, label %if.then3

if.then3:                                         ; preds = %if.then2
  tail call void @ossl_provider_teardown(%struct.ossl_provider_st* noundef nonnull %prov) #14
  %error_strings = getelementptr inbounds %struct.ossl_provider_st, %struct.ossl_provider_st* %prov, i64 0, i32 13
  %3 = load %struct.ERR_string_data_st*, %struct.ERR_string_data_st** %error_strings, align 8, !tbaa !27
  %cmp4.not = icmp eq %struct.ERR_string_data_st* %3, null
  br i1 %cmp4.not, label %if.end, label %if.then5

if.then5:                                         ; preds = %if.then3
  %error_lib = getelementptr inbounds %struct.ossl_provider_st, %struct.ossl_provider_st* %prov, i64 0, i32 12
  %4 = load i32, i32* %error_lib, align 8, !tbaa !28
  %call7 = tail call i32 @ERR_unload_strings(i32 noundef %4, %struct.ERR_string_data_st* noundef nonnull %3) #13
  %5 = bitcast %struct.ERR_string_data_st** %error_strings to i8**
  %6 = load i8*, i8** %5, align 8, !tbaa !27
  tail call void @CRYPTO_free(i8* noundef %6, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 684) #13
  store %struct.ERR_string_data_st* null, %struct.ERR_string_data_st** %error_strings, align 8, !tbaa !27
  br label %if.end

if.end:                                           ; preds = %if.then5, %if.then3
  %operation_bits = getelementptr inbounds %struct.ossl_provider_st, %struct.ossl_provider_st* %prov, i64 0, i32 21
  %7 = load i8*, i8** %operation_bits, align 8, !tbaa !29
  tail call void @CRYPTO_free(i8* noundef %7, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 689) #13
  store i8* null, i8** %operation_bits, align 8, !tbaa !29
  %operation_bits_sz = getelementptr inbounds %struct.ossl_provider_st, %struct.ossl_provider_st* %prov, i64 0, i32 22
  store i64 0, i64* %operation_bits_sz, align 8, !tbaa !30
  %bf.load11 = load i8, i8* %2, align 8
  %bf.clear12 = and i8 %bf.load11, -2
  store i8 %bf.clear12, i8* %2, align 8
  br label %if.end13

if.end13:                                         ; preds = %if.end, %if.then2
  %call14 = tail call i32 @ossl_init_thread_deregister(i8* noundef nonnull %2) #13
  %module = getelementptr inbounds %struct.ossl_provider_st, %struct.ossl_provider_st* %prov, i64 0, i32 7
  %8 = load %struct.dso_st*, %struct.dso_st** %module, align 8, !tbaa !31
  %call15 = tail call i32 @DSO_free(%struct.dso_st* noundef %8) #13
  %name = getelementptr inbounds %struct.ossl_provider_st, %struct.ossl_provider_st* %prov, i64 0, i32 5
  %9 = load i8*, i8** %name, align 8, !tbaa !24
  tail call void @CRYPTO_free(i8* noundef %9, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 704) #13
  %path = getelementptr inbounds %struct.ossl_provider_st, %struct.ossl_provider_st* %prov, i64 0, i32 6
  %10 = load i8*, i8** %path, align 8, !tbaa !32
  tail call void @CRYPTO_free(i8* noundef %10, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 705) #13
  %parameters = getelementptr inbounds %struct.ossl_provider_st, %struct.ossl_provider_st* %prov, i64 0, i32 9
  %11 = load %struct.stack_st_INFOPAIR*, %struct.stack_st_INFOPAIR** %parameters, align 8, !tbaa !33
  tail call fastcc void @sk_INFOPAIR_pop_free(%struct.stack_st_INFOPAIR* noundef %11) #14
  %opbits_lock = getelementptr inbounds %struct.ossl_provider_st, %struct.ossl_provider_st* %prov, i64 0, i32 23
  %12 = load i8*, i8** %opbits_lock, align 8, !tbaa !34
  tail call void @CRYPTO_THREAD_lock_free(i8* noundef %12) #13
  %flag_lock = getelementptr inbounds %struct.ossl_provider_st, %struct.ossl_provider_st* %prov, i64 0, i32 1
  %13 = load i8*, i8** %flag_lock, align 8, !tbaa !35
  tail call void @CRYPTO_THREAD_lock_free(i8* noundef %13) #13
  tail call void @CRYPTO_free(i8* noundef nonnull %2, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 712) #13
  br label %if.end23

if.else:                                          ; preds = %if.then
  %ischild = getelementptr inbounds %struct.ossl_provider_st, %struct.ossl_provider_st* %prov, i64 0, i32 25
  %bf.load16 = load i8, i8* %ischild, align 8
  %bf.clear17 = and i8 %bf.load16, 1
  %tobool19.not = icmp eq i8 %bf.clear17, 0
  br i1 %tobool19.not, label %if.end23, label %if.then20

if.then20:                                        ; preds = %if.else
  %call21 = tail call i32 @ossl_provider_free_parent(%struct.ossl_provider_st* noundef nonnull %prov, i32 noundef 0) #13
  br label %if.end23

if.end23:                                         ; preds = %if.else, %if.then20, %if.end13
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #15
  br label %if.end24

if.end24:                                         ; preds = %if.end23, %entry
  ret void
}

; Function Attrs: noinline nounwind uwtable
define %struct.ossl_provider_st* @ossl_provider_new(%struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef %name, i32 (%struct.ossl_core_handle_st*, %struct.ossl_dispatch_st*, %struct.ossl_dispatch_st**, i8**)* noundef %init_function, i32 noundef %noconfig) local_unnamed_addr #0 {
entry:
  %template = alloca %struct.OSSL_PROVIDER_INFO, align 8
  %0 = bitcast %struct.OSSL_PROVIDER_INFO* %template to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %0) #15
  %call = tail call fastcc %struct.provider_store_st* @get_provider_store(%struct.ossl_lib_ctx_st* noundef %libctx) #14
  %cmp = icmp eq %struct.provider_store_st* %call, null
  br i1 %cmp, label %cleanup44, label %if.end

if.end:                                           ; preds = %entry
  %call1 = tail call %struct.ossl_provider_st* @ossl_provider_find(%struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef %name, i32 noundef %noconfig) #14
  %cmp2.not = icmp eq %struct.ossl_provider_st* %call1, null
  br i1 %cmp2.not, label %if.end4, label %if.then3

if.then3:                                         ; preds = %if.end
  tail call void @ossl_provider_free(%struct.ossl_provider_st* noundef nonnull %call1) #14
  tail call void @ERR_new() #13
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 523, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.ossl_provider_new, i64 0, i64 0)) #13
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 15, i32 noundef 104, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* noundef %name) #13
  br label %cleanup44

if.end4:                                          ; preds = %if.end
  %call5 = call i8* @memset(i8* noundef nonnull %0, i32 noundef 0, i64 noundef 40) #13
  %cmp6 = icmp eq i32 (%struct.ossl_core_handle_st*, %struct.ossl_dispatch_st*, %struct.ossl_dispatch_st**, i8**)* %init_function, null
  br i1 %cmp6, label %for.cond.preheader, label %if.else

for.cond.preheader:                               ; preds = %if.end4
  %1 = load i8*, i8** getelementptr inbounds ([0 x %struct.OSSL_PROVIDER_INFO], [0 x %struct.OSSL_PROVIDER_INFO]* @ossl_predefined_providers, i64 0, i64 0, i32 0), align 8, !tbaa !4
  %cmp9.not74 = icmp eq i8* %1, null
  br i1 %cmp9.not74, label %if.then17, label %for.body

for.body:                                         ; preds = %for.cond.preheader, %for.inc
  %2 = phi i8* [ %3, %for.inc ], [ %1, %for.cond.preheader ]
  %p.075 = phi %struct.OSSL_PROVIDER_INFO* [ %incdec.ptr, %for.inc ], [ getelementptr inbounds ([0 x %struct.OSSL_PROVIDER_INFO], [0 x %struct.OSSL_PROVIDER_INFO]* @ossl_predefined_providers, i64 0, i64 0), %for.cond.preheader ]
  %call11 = call i32 @strcmp(i8* noundef nonnull %2, i8* noundef %name) #16
  %cmp12 = icmp eq i32 %call11, 0
  br i1 %cmp12, label %for.end, label %for.inc

for.inc:                                          ; preds = %for.body
  %incdec.ptr = getelementptr inbounds %struct.OSSL_PROVIDER_INFO, %struct.OSSL_PROVIDER_INFO* %p.075, i64 1
  %name8 = getelementptr inbounds %struct.OSSL_PROVIDER_INFO, %struct.OSSL_PROVIDER_INFO* %incdec.ptr, i64 0, i32 0
  %3 = load i8*, i8** %name8, align 8, !tbaa !4
  %cmp9.not = icmp eq i8* %3, null
  br i1 %cmp9.not, label %if.then17, label %for.body, !llvm.loop !36

for.end:                                          ; preds = %for.body
  %4 = bitcast %struct.OSSL_PROVIDER_INFO* %p.075 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(40) %0, i8* noundef nonnull align 8 dereferenceable(40) %4, i64 40, i1 false), !tbaa.struct !21
  br label %if.end36

if.then17:                                        ; preds = %for.inc, %for.cond.preheader
  %lock = getelementptr inbounds %struct.provider_store_st, %struct.provider_store_st* %call, i64 0, i32 4
  %5 = load i8*, i8** %lock, align 8, !tbaa !15
  %call18 = call i32 @CRYPTO_THREAD_read_lock(i8* noundef %5) #13
  %tobool.not = icmp eq i32 %call18, 0
  br i1 %tobool.not, label %cleanup44, label %if.end20

if.end20:                                         ; preds = %if.then17
  %numprovinfo = getelementptr inbounds %struct.provider_store_st, %struct.provider_store_st* %call, i64 0, i32 7
  %6 = load i64, i64* %numprovinfo, align 8, !tbaa !20
  %cmp2276.not = icmp eq i64 %6, 0
  br i1 %cmp2276.not, label %for.end31, label %for.body23.preheader

for.body23.preheader:                             ; preds = %if.end20
  %provinfo = getelementptr inbounds %struct.provider_store_st, %struct.provider_store_st* %call, i64 0, i32 6
  %7 = load %struct.OSSL_PROVIDER_INFO*, %struct.OSSL_PROVIDER_INFO** %provinfo, align 8, !tbaa !19
  br label %for.body23

for.body23:                                       ; preds = %for.body23.preheader, %for.inc29
  %i.078 = phi i64 [ %inc, %for.inc29 ], [ 0, %for.body23.preheader ]
  %p.177 = phi %struct.OSSL_PROVIDER_INFO* [ %incdec.ptr30, %for.inc29 ], [ %7, %for.body23.preheader ]
  %name24 = getelementptr inbounds %struct.OSSL_PROVIDER_INFO, %struct.OSSL_PROVIDER_INFO* %p.177, i64 0, i32 0
  %8 = load i8*, i8** %name24, align 8, !tbaa !4
  %call25 = call i32 @strcmp(i8* noundef %8, i8* noundef %name) #16
  %cmp26 = icmp eq i32 %call25, 0
  br i1 %cmp26, label %if.then27, label %for.inc29

if.then27:                                        ; preds = %for.body23
  %9 = bitcast %struct.OSSL_PROVIDER_INFO* %p.177 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(40) %0, i8* noundef nonnull align 8 dereferenceable(40) %9, i64 40, i1 false), !tbaa.struct !21
  br label %for.end31

for.inc29:                                        ; preds = %for.body23
  %incdec.ptr30 = getelementptr inbounds %struct.OSSL_PROVIDER_INFO, %struct.OSSL_PROVIDER_INFO* %p.177, i64 1
  %inc = add nuw i64 %i.078, 1
  %exitcond.not = icmp eq i64 %inc, %6
  br i1 %exitcond.not, label %for.end31, label %for.body23, !llvm.loop !38

for.end31:                                        ; preds = %for.inc29, %if.end20, %if.then27
  %10 = load i8*, i8** %lock, align 8, !tbaa !15
  %call33 = call i32 @CRYPTO_THREAD_unlock(i8* noundef %10) #13
  br label %if.end36

if.else:                                          ; preds = %if.end4
  %init = getelementptr inbounds %struct.OSSL_PROVIDER_INFO, %struct.OSSL_PROVIDER_INFO* %template, i64 0, i32 2
  store i32 (%struct.ossl_core_handle_st*, %struct.ossl_dispatch_st*, %struct.ossl_dispatch_st**, i8**)* %init_function, i32 (%struct.ossl_core_handle_st*, %struct.ossl_dispatch_st*, %struct.ossl_dispatch_st**, i8**)** %init, align 8, !tbaa !39
  br label %if.end36

if.end36:                                         ; preds = %for.end, %for.end31, %if.else
  %init37 = getelementptr inbounds %struct.OSSL_PROVIDER_INFO, %struct.OSSL_PROVIDER_INFO* %template, i64 0, i32 2
  %11 = load i32 (%struct.ossl_core_handle_st*, %struct.ossl_dispatch_st*, %struct.ossl_dispatch_st**, i8**)*, i32 (%struct.ossl_core_handle_st*, %struct.ossl_dispatch_st*, %struct.ossl_dispatch_st**, i8**)** %init37, align 8, !tbaa !39
  %parameters = getelementptr inbounds %struct.OSSL_PROVIDER_INFO, %struct.OSSL_PROVIDER_INFO* %template, i64 0, i32 3
  %12 = load %struct.stack_st_INFOPAIR*, %struct.stack_st_INFOPAIR** %parameters, align 8, !tbaa !11
  %call38 = call fastcc %struct.ossl_provider_st* @provider_new(i8* noundef %name, i32 (%struct.ossl_core_handle_st*, %struct.ossl_dispatch_st*, %struct.ossl_dispatch_st**, i8**)* noundef %11, %struct.stack_st_INFOPAIR* noundef %12) #14
  %cmp39 = icmp eq %struct.ossl_provider_st* %call38, null
  br i1 %cmp39, label %cleanup44, label %if.end41

if.end41:                                         ; preds = %if.end36
  %libctx42 = getelementptr inbounds %struct.ossl_provider_st, %struct.ossl_provider_st* %call38, i64 0, i32 10
  store %struct.ossl_lib_ctx_st* %libctx, %struct.ossl_lib_ctx_st** %libctx42, align 8, !tbaa !40
  %call43 = call i32 @ERR_get_next_error_library() #13
  %error_lib = getelementptr inbounds %struct.ossl_provider_st, %struct.ossl_provider_st* %call38, i64 0, i32 12
  store i32 %call43, i32* %error_lib, align 8, !tbaa !28
  br label %cleanup44

cleanup44:                                        ; preds = %if.then17, %if.end36, %entry, %if.end41, %if.then3
  %retval.1 = phi %struct.ossl_provider_st* [ null, %if.then3 ], [ %call38, %if.end41 ], [ null, %entry ], [ null, %if.end36 ], [ null, %if.then17 ]
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %0) #15
  ret %struct.ossl_provider_st* %retval.1
}

; Function Attrs: nounwind
declare i8* @memset(i8* noundef, i32 noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare i32 @strcmp(i8* noundef, i8* noundef) local_unnamed_addr #7

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.ossl_provider_st* @provider_new(i8* noundef %name, i32 (%struct.ossl_core_handle_st*, %struct.ossl_dispatch_st*, %struct.ossl_dispatch_st**, i8**)* noundef %init_function, %struct.stack_st_INFOPAIR* noundef %parameters) unnamed_addr #0 {
entry:
  %call = tail call i8* @CRYPTO_zalloc(i64 noundef 224, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 450) #13
  %0 = bitcast i8* %call to %struct.ossl_provider_st*
  %cmp = icmp eq i8* %call, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %call1 = tail call i8* @CRYPTO_THREAD_lock_new() #13
  %opbits_lock = getelementptr inbounds i8, i8* %call, i64 184
  %1 = bitcast i8* %opbits_lock to i8**
  store i8* %call1, i8** %1, align 8, !tbaa !34
  %cmp2 = icmp eq i8* %call1, null
  br i1 %cmp2, label %if.then, label %lor.lhs.false3

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %call4 = tail call i8* @CRYPTO_THREAD_lock_new() #13
  %flag_lock = getelementptr inbounds i8, i8* %call, i64 8
  %2 = bitcast i8* %flag_lock to i8**
  store i8* %call4, i8** %2, align 8, !tbaa !35
  %cmp5 = icmp eq i8* %call4, null
  br i1 %cmp5, label %if.then, label %lor.lhs.false6

lor.lhs.false6:                                   ; preds = %lor.lhs.false3
  %call7 = tail call i8* @CRYPTO_strdup(i8* noundef %name, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 456) #13
  %name8 = getelementptr inbounds i8, i8* %call, i64 40
  %3 = bitcast i8* %name8 to i8**
  store i8* %call7, i8** %3, align 8, !tbaa !24
  %cmp9 = icmp eq i8* %call7, null
  br i1 %cmp9, label %if.then, label %lor.lhs.false10

lor.lhs.false10:                                  ; preds = %lor.lhs.false6
  %call11 = tail call fastcc %struct.stack_st_INFOPAIR* @sk_INFOPAIR_deep_copy(%struct.stack_st_INFOPAIR* noundef %parameters) #14
  %parameters12 = getelementptr inbounds i8, i8* %call, i64 72
  %4 = bitcast i8* %parameters12 to %struct.stack_st_INFOPAIR**
  store %struct.stack_st_INFOPAIR* %call11, %struct.stack_st_INFOPAIR** %4, align 8, !tbaa !33
  %cmp13 = icmp eq %struct.stack_st_INFOPAIR* %call11, null
  br i1 %cmp13, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false10, %lor.lhs.false6, %lor.lhs.false3, %lor.lhs.false, %entry
  tail call void @ossl_provider_free(%struct.ossl_provider_st* noundef %0) #14
  tail call void @ERR_new() #13
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 461, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @__func__.provider_new, i64 0, i64 0)) #13
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 15, i32 noundef 786688, i8* noundef null) #13
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false10
  %refcnt = getelementptr inbounds i8, i8* %call, i64 16
  %5 = bitcast i8* %refcnt to i32*
  store atomic i32 1, i32* %5 seq_cst, align 4, !tbaa !41
  %init_function14 = getelementptr inbounds i8, i8* %call, i64 64
  %6 = bitcast i8* %init_function14 to i32 (%struct.ossl_core_handle_st*, %struct.ossl_dispatch_st*, %struct.ossl_dispatch_st**, i8**)**
  store i32 (%struct.ossl_core_handle_st*, %struct.ossl_dispatch_st*, %struct.ossl_dispatch_st**, i8**)* %init_function, i32 (%struct.ossl_core_handle_st*, %struct.ossl_dispatch_st*, %struct.ossl_dispatch_st**, i8**)** %6, align 8, !tbaa !42
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi %struct.ossl_provider_st* [ null, %if.then ], [ %0, %if.end ]
  ret %struct.ossl_provider_st* %retval.0
}

declare i32 @ERR_get_next_error_library() local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_provider_add_to_store(%struct.ossl_provider_st* noundef %prov, %struct.ossl_provider_st** noundef writeonly %actualprov, i32 noundef %retain_fallbacks) local_unnamed_addr #0 {
entry:
  %tmpl = alloca %struct.ossl_provider_st, align 8
  %0 = getelementptr inbounds %struct.ossl_provider_st, %struct.ossl_provider_st* %tmpl, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 224, i8* nonnull %0) #15
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(224) %0, i8 0, i64 224, i1 false)
  %libctx = getelementptr inbounds %struct.ossl_provider_st, %struct.ossl_provider_st* %prov, i64 0, i32 10
  %1 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** %libctx, align 8, !tbaa !40
  %call = tail call fastcc %struct.provider_store_st* @get_provider_store(%struct.ossl_lib_ctx_st* noundef %1) #14
  %cmp = icmp eq %struct.provider_store_st* %call, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %lock = getelementptr inbounds %struct.provider_store_st, %struct.provider_store_st* %call, i64 0, i32 4
  %2 = load i8*, i8** %lock, align 8, !tbaa !15
  %call1 = tail call i32 @CRYPTO_THREAD_write_lock(i8* noundef %2) #13
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %cleanup, label %if.end3

if.end3:                                          ; preds = %if.end
  %name = getelementptr inbounds %struct.ossl_provider_st, %struct.ossl_provider_st* %prov, i64 0, i32 5
  %3 = load i8*, i8** %name, align 8, !tbaa !24
  %name4 = getelementptr inbounds %struct.ossl_provider_st, %struct.ossl_provider_st* %tmpl, i64 0, i32 5
  store i8* %3, i8** %name4, align 8, !tbaa !24
  %providers = getelementptr inbounds %struct.provider_store_st, %struct.provider_store_st* %call, i64 0, i32 1
  %4 = load %struct.stack_st_OSSL_PROVIDER*, %struct.stack_st_OSSL_PROVIDER** %providers, align 8, !tbaa !26
  %call5 = call fastcc i32 @sk_OSSL_PROVIDER_find(%struct.stack_st_OSSL_PROVIDER* noundef %4, %struct.ossl_provider_st* noundef nonnull %tmpl) #14
  %cmp6 = icmp eq i32 %call5, -1
  %5 = load %struct.stack_st_OSSL_PROVIDER*, %struct.stack_st_OSSL_PROVIDER** %providers, align 8, !tbaa !26
  br i1 %cmp6, label %if.then12, label %if.end10

if.end10:                                         ; preds = %if.end3
  %call9 = call fastcc %struct.ossl_provider_st* @sk_OSSL_PROVIDER_value(%struct.stack_st_OSSL_PROVIDER* noundef %5, i32 noundef %call5) #14
  br label %if.end28

if.then12:                                        ; preds = %if.end3
  %call14 = call fastcc i32 @sk_OSSL_PROVIDER_push(%struct.stack_st_OSSL_PROVIDER* noundef %5, %struct.ossl_provider_st* noundef nonnull %prov) #14
  %cmp15 = icmp eq i32 %call14, 0
  br i1 %cmp15, label %err, label %if.end17

if.end17:                                         ; preds = %if.then12
  %store18 = getelementptr inbounds %struct.ossl_provider_st, %struct.ossl_provider_st* %prov, i64 0, i32 11
  store %struct.provider_store_st* %call, %struct.provider_store_st** %store18, align 8, !tbaa !43
  %call19 = call fastcc i32 @create_provider_children(%struct.ossl_provider_st* noundef nonnull %prov) #14
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.then21, label %if.end24

if.then21:                                        ; preds = %if.end17
  %6 = load %struct.stack_st_OSSL_PROVIDER*, %struct.stack_st_OSSL_PROVIDER** %providers, align 8, !tbaa !26
  call fastcc void @sk_OSSL_PROVIDER_delete_ptr(%struct.stack_st_OSSL_PROVIDER* noundef %6, %struct.ossl_provider_st* noundef nonnull %prov) #14
  br label %err

if.end24:                                         ; preds = %if.end17
  %tobool25.not = icmp eq i32 %retain_fallbacks, 0
  br i1 %tobool25.not, label %if.then26, label %if.end28

if.then26:                                        ; preds = %if.end24
  %use_fallbacks = getelementptr inbounds %struct.provider_store_st, %struct.provider_store_st* %call, i64 0, i32 9
  %bf.load = load i8, i8* %use_fallbacks, align 8
  %bf.clear = and i8 %bf.load, -2
  store i8 %bf.clear, i8* %use_fallbacks, align 8
  br label %if.end28

if.end28:                                         ; preds = %if.end10, %if.end24, %if.then26
  %actualtmp.078 = phi %struct.ossl_provider_st* [ %prov, %if.end24 ], [ %prov, %if.then26 ], [ %call9, %if.end10 ]
  %7 = load i8*, i8** %lock, align 8, !tbaa !15
  %call30 = call i32 @CRYPTO_THREAD_unlock(i8* noundef %7) #13
  %cmp31.not = icmp eq %struct.ossl_provider_st** %actualprov, null
  br i1 %cmp31.not, label %if.end37, label %if.then32

if.then32:                                        ; preds = %if.end28
  %call33 = call i32 @ossl_provider_up_ref(%struct.ossl_provider_st* noundef %actualtmp.078) #14
  %tobool34.not = icmp eq i32 %call33, 0
  br i1 %tobool34.not, label %err.thread, label %if.end36

err.thread:                                       ; preds = %if.then32
  call void @ERR_new() #13
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 634, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.ossl_provider_add_to_store, i64 0, i64 0)) #13
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 15, i32 noundef 786688, i8* noundef null) #13
  %8 = load i8*, i8** %lock, align 8, !tbaa !15
  %call4380 = call i32 @CRYPTO_THREAD_unlock(i8* noundef %8) #13
  br label %if.then45

if.end36:                                         ; preds = %if.then32
  store %struct.ossl_provider_st* %actualtmp.078, %struct.ossl_provider_st** %actualprov, align 8, !tbaa !22
  br label %if.end37

if.end37:                                         ; preds = %if.end36, %if.end28
  %cmp38 = icmp sgt i32 %call5, -1
  br i1 %cmp38, label %if.then39, label %cleanup

if.then39:                                        ; preds = %if.end37
  %call40 = call i32 @ossl_provider_deactivate(%struct.ossl_provider_st* noundef nonnull %prov) #14
  call void @ossl_provider_free(%struct.ossl_provider_st* noundef nonnull %prov) #14
  br label %cleanup

err:                                              ; preds = %if.then12, %if.then21
  %9 = load i8*, i8** %lock, align 8, !tbaa !15
  %call43 = call i32 @CRYPTO_THREAD_unlock(i8* noundef %9) #13
  %cmp44.not = icmp eq %struct.ossl_provider_st** %actualprov, null
  br i1 %cmp44.not, label %cleanup, label %if.then45

if.then45:                                        ; preds = %err.thread, %err
  %actualtmp.182 = phi %struct.ossl_provider_st* [ null, %err.thread ], [ %prov, %err ]
  call void @ossl_provider_free(%struct.ossl_provider_st* noundef %actualtmp.182) #14
  br label %cleanup

cleanup:                                          ; preds = %err, %if.then45, %if.end37, %if.then39, %if.end, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ 0, %if.end ], [ 1, %if.then39 ], [ 1, %if.end37 ], [ 0, %if.then45 ], [ 0, %err ]
  call void @llvm.lifetime.end.p0i8(i64 224, i8* nonnull %0) #15
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @sk_OSSL_PROVIDER_push(%struct.stack_st_OSSL_PROVIDER* noundef %sk, %struct.ossl_provider_st* noundef %ptr) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.stack_st_OSSL_PROVIDER* %sk to %struct.stack_st*
  %1 = getelementptr %struct.ossl_provider_st, %struct.ossl_provider_st* %ptr, i64 0, i32 0
  %call = tail call i32 @OPENSSL_sk_push(%struct.stack_st* noundef %0, i8* noundef %1) #13
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @create_provider_children(%struct.ossl_provider_st* noundef %prov) unnamed_addr #0 {
entry:
  %store1 = getelementptr inbounds %struct.ossl_provider_st, %struct.ossl_provider_st* %prov, i64 0, i32 11
  %0 = load %struct.provider_store_st*, %struct.provider_store_st** %store1, align 8, !tbaa !43
  %child_cbs = getelementptr inbounds %struct.provider_store_st, %struct.provider_store_st* %0, i64 0, i32 2
  %1 = load %struct.stack_st_OSSL_PROVIDER_CHILD_CB*, %struct.stack_st_OSSL_PROVIDER_CHILD_CB** %child_cbs, align 8, !tbaa !44
  %call = tail call fastcc i32 @sk_OSSL_PROVIDER_CHILD_CB_num(%struct.stack_st_OSSL_PROVIDER_CHILD_CB* noundef %1) #14
  %cmp16 = icmp sgt i32 %call, 0
  br i1 %cmp16, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %2 = bitcast %struct.ossl_provider_st* %prov to %struct.ossl_core_handle_st*
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %ret.018 = phi i32 [ 1, %for.body.lr.ph ], [ %and, %for.body ]
  %i.017 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body ]
  %3 = load %struct.stack_st_OSSL_PROVIDER_CHILD_CB*, %struct.stack_st_OSSL_PROVIDER_CHILD_CB** %child_cbs, align 8, !tbaa !44
  %call3 = tail call fastcc %struct.OSSL_PROVIDER_CHILD_CB* @sk_OSSL_PROVIDER_CHILD_CB_value(%struct.stack_st_OSSL_PROVIDER_CHILD_CB* noundef %3, i32 noundef %i.017) #14
  %create_cb = getelementptr inbounds %struct.OSSL_PROVIDER_CHILD_CB, %struct.OSSL_PROVIDER_CHILD_CB* %call3, i64 0, i32 1
  %4 = load i32 (%struct.ossl_core_handle_st*, i8*)*, i32 (%struct.ossl_core_handle_st*, i8*)** %create_cb, align 8, !tbaa !45
  %cbdata = getelementptr inbounds %struct.OSSL_PROVIDER_CHILD_CB, %struct.OSSL_PROVIDER_CHILD_CB* %call3, i64 0, i32 4
  %5 = load i8*, i8** %cbdata, align 8, !tbaa !47
  %call4 = tail call i32 %4(%struct.ossl_core_handle_st* noundef %2, i8* noundef %5) #13
  %and = and i32 %call4, %ret.018
  %inc = add nuw nsw i32 %i.017, 1
  %exitcond.not = icmp eq i32 %inc, %call
  br i1 %exitcond.not, label %for.end, label %for.body, !llvm.loop !48

for.end:                                          ; preds = %for.body, %entry
  %ret.0.lcssa = phi i32 [ 1, %entry ], [ %and, %for.body ]
  ret i32 %ret.0.lcssa
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @sk_OSSL_PROVIDER_delete_ptr(%struct.stack_st_OSSL_PROVIDER* noundef %sk, %struct.ossl_provider_st* noundef %ptr) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.stack_st_OSSL_PROVIDER* %sk to %struct.stack_st*
  %1 = getelementptr %struct.ossl_provider_st, %struct.ossl_provider_st* %ptr, i64 0, i32 0
  %call = tail call i8* @OPENSSL_sk_delete_ptr(%struct.stack_st* noundef %0, i8* noundef %1) #13
  ret void
}

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_provider_deactivate(%struct.ossl_provider_st* noundef %prov) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.ossl_provider_st* %prov, null
  br i1 %cmp, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %call = tail call fastcc i32 @provider_deactivate(%struct.ossl_provider_st* noundef nonnull %prov, i32 noundef 1) #14
  %cmp1 = icmp slt i32 %call, 0
  br i1 %cmp1, label %cleanup, label %if.end

if.end:                                           ; preds = %lor.lhs.false
  %cmp2 = icmp eq i32 %call, 0
  br i1 %cmp2, label %cond.true, label %cleanup

cond.true:                                        ; preds = %if.end
  %call3 = tail call fastcc i32 @provider_flush_store_cache(%struct.ossl_provider_st* noundef nonnull %prov) #14
  br label %cleanup

cleanup:                                          ; preds = %cond.true, %if.end, %entry, %lor.lhs.false
  %retval.0 = phi i32 [ 0, %lor.lhs.false ], [ 0, %entry ], [ %call3, %cond.true ], [ 1, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind uwtable willreturn
define internal fastcc void @CRYPTO_DOWN_REF(i32* nocapture noundef %val, i32* nocapture noundef writeonly %ret) unnamed_addr #5 {
entry:
  %0 = atomicrmw sub i32* %val, i32 1 monotonic, align 4
  %sub = add nsw i32 %0, -1
  store i32 %sub, i32* %ret, align 4, !tbaa !23
  %cmp = icmp eq i32 %sub, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  fence acquire
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind uwtable
define void @ossl_provider_teardown(%struct.ossl_provider_st* nocapture noundef readonly %prov) local_unnamed_addr #0 {
entry:
  %teardown = getelementptr inbounds %struct.ossl_provider_st, %struct.ossl_provider_st* %prov, i64 0, i32 14
  %0 = load void (i8*)*, void (i8*)** %teardown, align 8, !tbaa !49
  %cmp.not = icmp eq void (i8*)* %0, null
  br i1 %cmp.not, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %ischild = getelementptr inbounds %struct.ossl_provider_st, %struct.ossl_provider_st* %prov, i64 0, i32 25
  %bf.load = load i8, i8* %ischild, align 8
  %bf.clear = and i8 %bf.load, 1
  %tobool.not = icmp eq i8 %bf.clear, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %provctx = getelementptr inbounds %struct.ossl_provider_st, %struct.ossl_provider_st* %prov, i64 0, i32 26
  %1 = load i8*, i8** %provctx, align 8, !tbaa !50
  tail call void %0(i8* noundef %1) #13
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  ret void
}

declare i32 @ERR_unload_strings(i32 noundef, %struct.ERR_string_data_st* noundef) local_unnamed_addr #1

declare i32 @ossl_init_thread_deregister(i8* noundef) local_unnamed_addr #1

declare i32 @DSO_free(%struct.dso_st* noundef) local_unnamed_addr #1

declare void @CRYPTO_THREAD_lock_free(i8* noundef) local_unnamed_addr #1

declare i32 @ossl_provider_free_parent(%struct.ossl_provider_st* noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_provider_set_module_path(%struct.ossl_provider_st* nocapture noundef %prov, i8* noundef %module_path) local_unnamed_addr #0 {
entry:
  %path = getelementptr inbounds %struct.ossl_provider_st, %struct.ossl_provider_st* %prov, i64 0, i32 6
  %0 = load i8*, i8** %path, align 8, !tbaa !32
  tail call void @CRYPTO_free(i8* noundef %0, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 725) #13
  store i8* null, i8** %path, align 8, !tbaa !32
  %cmp = icmp eq i8* %module_path, null
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %call = tail call i8* @CRYPTO_strdup(i8* noundef nonnull %module_path, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 729) #13
  store i8* %call, i8** %path, align 8, !tbaa !32
  %cmp3.not = icmp eq i8* %call, null
  br i1 %cmp3.not, label %if.end5, label %return

if.end5:                                          ; preds = %if.end
  tail call void @ERR_new() #13
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 731, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.ossl_provider_set_module_path, i64 0, i64 0)) #13
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 15, i32 noundef 786688, i8* noundef null) #13
  br label %return

return:                                           ; preds = %if.end, %entry, %if.end5
  %retval.0 = phi i32 [ 0, %if.end5 ], [ 1, %entry ], [ 1, %if.end ]
  ret i32 %retval.0
}

declare i8* @CRYPTO_strdup(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_provider_add_parameter(%struct.ossl_provider_st* nocapture noundef %prov, i8* noundef %name, i8* noundef %value) local_unnamed_addr #0 {
entry:
  %parameters = getelementptr inbounds %struct.ossl_provider_st, %struct.ossl_provider_st* %prov, i64 0, i32 9
  %call = tail call fastcc i32 @infopair_add(%struct.stack_st_INFOPAIR** noundef nonnull %parameters, i8* noundef %name, i8* noundef %value) #14
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @infopair_add(%struct.stack_st_INFOPAIR** nocapture noundef %infopairsk, i8* noundef %name, i8* noundef %value) unnamed_addr #0 {
entry:
  %call = tail call i8* @CRYPTO_zalloc(i64 noundef 16, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 740) #13
  %0 = bitcast i8* %call to %struct.INFOPAIR*
  %cmp.not = icmp eq i8* %call, null
  br i1 %cmp.not, label %if.end19, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %1 = load %struct.stack_st_INFOPAIR*, %struct.stack_st_INFOPAIR** %infopairsk, align 8, !tbaa !22
  %cmp1.not = icmp eq %struct.stack_st_INFOPAIR* %1, null
  br i1 %cmp1.not, label %lor.lhs.false, label %land.lhs.true4

lor.lhs.false:                                    ; preds = %land.lhs.true
  %call2 = tail call fastcc %struct.stack_st_INFOPAIR* @sk_INFOPAIR_new_null() #14
  store %struct.stack_st_INFOPAIR* %call2, %struct.stack_st_INFOPAIR** %infopairsk, align 8, !tbaa !22
  %cmp3.not = icmp eq %struct.stack_st_INFOPAIR* %call2, null
  br i1 %cmp3.not, label %if.then16, label %land.lhs.true4

land.lhs.true4:                                   ; preds = %lor.lhs.false, %land.lhs.true
  %call5 = tail call i8* @CRYPTO_strdup(i8* noundef %name, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 743) #13
  %name6 = bitcast i8* %call to i8**
  store i8* %call5, i8** %name6, align 8, !tbaa !12
  %cmp7.not = icmp eq i8* %call5, null
  br i1 %cmp7.not, label %if.then16, label %land.lhs.true8

land.lhs.true8:                                   ; preds = %land.lhs.true4
  %call9 = tail call i8* @CRYPTO_strdup(i8* noundef %value, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 744) #13
  %value10 = getelementptr inbounds i8, i8* %call, i64 8
  %2 = bitcast i8* %value10 to i8**
  store i8* %call9, i8** %2, align 8, !tbaa !14
  %cmp11.not = icmp eq i8* %call9, null
  br i1 %cmp11.not, label %if.then16, label %land.lhs.true12

land.lhs.true12:                                  ; preds = %land.lhs.true8
  %3 = load %struct.stack_st_INFOPAIR*, %struct.stack_st_INFOPAIR** %infopairsk, align 8, !tbaa !22
  %call13 = tail call fastcc i32 @sk_INFOPAIR_push(%struct.stack_st_INFOPAIR* noundef %3, %struct.INFOPAIR* noundef nonnull %0) #14
  %cmp14 = icmp sgt i32 %call13, 0
  br i1 %cmp14, label %cleanup, label %if.then16

if.then16:                                        ; preds = %lor.lhs.false, %land.lhs.true4, %land.lhs.true8, %land.lhs.true12
  %name17.pre-phi = bitcast i8* %call to i8**
  %4 = load i8*, i8** %name17.pre-phi, align 8, !tbaa !12
  tail call void @CRYPTO_free(i8* noundef %4, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 749) #13
  %value18 = getelementptr inbounds i8, i8* %call, i64 8
  %5 = bitcast i8* %value18 to i8**
  %6 = load i8*, i8** %5, align 8, !tbaa !14
  tail call void @CRYPTO_free(i8* noundef %6, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 750) #13
  tail call void @CRYPTO_free(i8* noundef nonnull %call, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 751) #13
  br label %if.end19

if.end19:                                         ; preds = %entry, %if.then16
  tail call void @ERR_new() #13
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 753, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @__func__.infopair_add, i64 0, i64 0)) #13
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 15, i32 noundef 786688, i8* noundef null) #13
  br label %cleanup

cleanup:                                          ; preds = %land.lhs.true12, %if.end19
  %retval.0 = phi i32 [ 0, %if.end19 ], [ 1, %land.lhs.true12 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_provider_info_add_parameter(%struct.OSSL_PROVIDER_INFO* nocapture noundef %provinfo, i8* noundef %name, i8* noundef %value) local_unnamed_addr #0 {
entry:
  %parameters = getelementptr inbounds %struct.OSSL_PROVIDER_INFO, %struct.OSSL_PROVIDER_INFO* %provinfo, i64 0, i32 3
  %call = tail call fastcc i32 @infopair_add(%struct.stack_st_INFOPAIR** noundef nonnull %parameters, i8* noundef %name, i8* noundef %value) #14
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define i32 @OSSL_PROVIDER_set_default_search_path(%struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef %path) local_unnamed_addr #0 {
entry:
  %cmp.not = icmp eq i8* %path, null
  br i1 %cmp.not, label %if.end3, label %if.then

if.then:                                          ; preds = %entry
  %call = tail call i8* @CRYPTO_strdup(i8* noundef nonnull %path, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 791) #13
  %cmp1 = icmp eq i8* %call, null
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.then
  tail call void @ERR_new() #13
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 793, i8* noundef getelementptr inbounds ([38 x i8], [38 x i8]* @__func__.OSSL_PROVIDER_set_default_search_path, i64 0, i64 0)) #13
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 15, i32 noundef 786688, i8* noundef null) #13
  br label %cleanup

if.end3:                                          ; preds = %if.then, %entry
  %p.0 = phi i8* [ %call, %if.then ], [ null, %entry ]
  %call4 = tail call fastcc %struct.provider_store_st* @get_provider_store(%struct.ossl_lib_ctx_st* noundef %libctx) #14
  %cmp5.not = icmp eq %struct.provider_store_st* %call4, null
  br i1 %cmp5.not, label %if.end11, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end3
  %default_path_lock = getelementptr inbounds %struct.provider_store_st, %struct.provider_store_st* %call4, i64 0, i32 3
  %0 = load i8*, i8** %default_path_lock, align 8, !tbaa !51
  %call6 = tail call i32 @CRYPTO_THREAD_write_lock(i8* noundef %0) #13
  %tobool.not = icmp eq i32 %call6, 0
  br i1 %tobool.not, label %if.end11, label %if.then7

if.then7:                                         ; preds = %land.lhs.true
  %default_path = getelementptr inbounds %struct.provider_store_st, %struct.provider_store_st* %call4, i64 0, i32 5
  %1 = load i8*, i8** %default_path, align 8, !tbaa !52
  tail call void @CRYPTO_free(i8* noundef %1, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 799) #13
  store i8* %p.0, i8** %default_path, align 8, !tbaa !52
  %2 = load i8*, i8** %default_path_lock, align 8, !tbaa !51
  %call10 = tail call i32 @CRYPTO_THREAD_unlock(i8* noundef %2) #13
  br label %cleanup

if.end11:                                         ; preds = %land.lhs.true, %if.end3
  tail call void @CRYPTO_free(i8* noundef %p.0, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 804) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %if.then7, %if.then2
  %retval.0 = phi i32 [ 0, %if.then2 ], [ 1, %if.then7 ], [ 0, %if.end11 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_provider_activate(%struct.ossl_provider_st* noundef %prov, i32 noundef %upcalls, i32 noundef %aschild) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.ossl_provider_st* %prov, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %tobool.not = icmp eq i32 %aschild, 0
  br i1 %tobool.not, label %if.end3, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  %ischild = getelementptr inbounds %struct.ossl_provider_st, %struct.ossl_provider_st* %prov, i64 0, i32 25
  %bf.load = load i8, i8* %ischild, align 8
  %bf.clear = and i8 %bf.load, 1
  %tobool1.not = icmp eq i8 %bf.clear, 0
  br i1 %tobool1.not, label %cleanup, label %if.end3

if.end3:                                          ; preds = %land.lhs.true, %if.end
  %call = tail call fastcc i32 @provider_activate(%struct.ossl_provider_st* noundef nonnull %prov, i32 noundef 1, i32 noundef %upcalls) #14
  %cmp4 = icmp sgt i32 %call, 0
  br i1 %cmp4, label %if.then5, label %cleanup

if.then5:                                         ; preds = %if.end3
  %cmp6 = icmp eq i32 %call, 1
  br i1 %cmp6, label %cond.true, label %cleanup

cond.true:                                        ; preds = %if.then5
  %call7 = tail call fastcc i32 @provider_flush_store_cache(%struct.ossl_provider_st* noundef nonnull %prov) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %cond.true, %if.then5, %land.lhs.true, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ 1, %land.lhs.true ], [ %call7, %cond.true ], [ 1, %if.then5 ], [ 0, %if.end3 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @provider_activate(%struct.ossl_provider_st* noundef %prov, i32 noundef %lock, i32 noundef %upcalls) unnamed_addr #0 {
entry:
  %store1 = getelementptr inbounds %struct.ossl_provider_st, %struct.ossl_provider_st* %prov, i64 0, i32 11
  %0 = load %struct.provider_store_st*, %struct.provider_store_st** %store1, align 8, !tbaa !43
  %cmp = icmp eq %struct.provider_store_st* %0, null
  br i1 %cmp, label %if.then, label %if.end3

if.then:                                          ; preds = %entry
  %call = tail call fastcc i32 @provider_init(%struct.ossl_provider_st* noundef nonnull %prov) #14
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %cleanup, label %if.end3

if.end3:                                          ; preds = %if.then, %entry
  %lock.addr.0 = phi i32 [ 0, %if.then ], [ %lock, %entry ]
  %ischild = getelementptr inbounds %struct.ossl_provider_st, %struct.ossl_provider_st* %prov, i64 0, i32 25
  %bf.load = load i8, i8* %ischild, align 8
  %bf.clear = and i8 %bf.load, 1
  %tobool4 = icmp ne i8 %bf.clear, 0
  %tobool5 = icmp ne i32 %upcalls, 0
  %or.cond = and i1 %tobool5, %tobool4
  br i1 %or.cond, label %land.lhs.true6, label %if.end10

land.lhs.true6:                                   ; preds = %if.end3
  %call7 = tail call i32 @ossl_provider_up_ref_parent(%struct.ossl_provider_st* noundef nonnull %prov, i32 noundef 1) #13
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %cleanup, label %if.end10

if.end10:                                         ; preds = %land.lhs.true6, %if.end3
  %tobool11.not = icmp eq i32 %lock.addr.0, 0
  br i1 %tobool11.not, label %if.end45, label %land.lhs.true12

land.lhs.true12:                                  ; preds = %if.end10
  %lock13 = getelementptr inbounds %struct.provider_store_st, %struct.provider_store_st* %0, i64 0, i32 4
  %1 = load i8*, i8** %lock13, align 8, !tbaa !15
  %call14 = tail call i32 @CRYPTO_THREAD_read_lock(i8* noundef %1) #13
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.then16, label %land.lhs.true29

if.then16:                                        ; preds = %land.lhs.true12
  %bf.load18 = load i8, i8* %ischild, align 8
  %bf.clear19 = and i8 %bf.load18, 1
  %tobool21 = icmp ne i8 %bf.clear19, 0
  %or.cond74 = and i1 %tobool5, %tobool21
  br i1 %or.cond74, label %if.then24, label %cleanup

if.then24:                                        ; preds = %if.then16
  %call25 = tail call i32 @ossl_provider_free_parent(%struct.ossl_provider_st* noundef nonnull %prov, i32 noundef 1) #13
  br label %cleanup

land.lhs.true29:                                  ; preds = %land.lhs.true12
  %flag_lock = getelementptr inbounds %struct.ossl_provider_st, %struct.ossl_provider_st* %prov, i64 0, i32 1
  %2 = load i8*, i8** %flag_lock, align 8, !tbaa !35
  %call30 = tail call i32 @CRYPTO_THREAD_write_lock(i8* noundef %2) #13
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %if.then32, label %if.end45

if.then32:                                        ; preds = %land.lhs.true29
  %3 = load i8*, i8** %lock13, align 8, !tbaa !15
  %call34 = tail call i32 @CRYPTO_THREAD_unlock(i8* noundef %3) #13
  %bf.load36 = load i8, i8* %ischild, align 8
  %bf.clear37 = and i8 %bf.load36, 1
  %tobool39 = icmp ne i8 %bf.clear37, 0
  %or.cond75 = and i1 %tobool5, %tobool39
  br i1 %or.cond75, label %if.then42, label %cleanup

if.then42:                                        ; preds = %if.then32
  %call43 = tail call i32 @ossl_provider_free_parent(%struct.ossl_provider_st* noundef nonnull %prov, i32 noundef 1) #13
  br label %cleanup

if.end45:                                         ; preds = %if.end10, %land.lhs.true29
  %activatecnt = getelementptr inbounds %struct.ossl_provider_st, %struct.ossl_provider_st* %prov, i64 0, i32 4
  %4 = load i32, i32* %activatecnt, align 8, !tbaa !53
  %inc = add nsw i32 %4, 1
  store i32 %inc, i32* %activatecnt, align 8, !tbaa !53
  %5 = getelementptr %struct.ossl_provider_st, %struct.ossl_provider_st* %prov, i64 0, i32 0
  %bf.load46 = load i8, i8* %5, align 8
  %bf.set = or i8 %bf.load46, 2
  store i8 %bf.set, i8* %5, align 8
  %cmp49 = icmp eq i32 %4, 0
  %cmp51 = icmp ne %struct.provider_store_st* %0, null
  %or.cond76 = select i1 %cmp49, i1 %cmp51, i1 false
  br i1 %tobool11.not, label %if.end58, label %if.then55

if.then55:                                        ; preds = %if.end45
  %flag_lock56 = getelementptr inbounds %struct.ossl_provider_st, %struct.ossl_provider_st* %prov, i64 0, i32 1
  %6 = load i8*, i8** %flag_lock56, align 8, !tbaa !35
  %call57 = tail call i32 @CRYPTO_THREAD_unlock(i8* noundef %6) #13
  br label %if.end58

if.end58:                                         ; preds = %if.then55, %if.end45
  br i1 %or.cond76, label %if.then60, label %if.end62

if.then60:                                        ; preds = %if.end58
  %call61 = tail call fastcc i32 @create_provider_children(%struct.ossl_provider_st* noundef nonnull %prov) #14
  br label %if.end62

if.end62:                                         ; preds = %if.then60, %if.end58
  %ret.0 = phi i32 [ %call61, %if.then60 ], [ 1, %if.end58 ]
  br i1 %tobool11.not, label %if.end67, label %if.then64

if.then64:                                        ; preds = %if.end62
  %lock65 = getelementptr inbounds %struct.provider_store_st, %struct.provider_store_st* %0, i64 0, i32 4
  %7 = load i8*, i8** %lock65, align 8, !tbaa !15
  %call66 = tail call i32 @CRYPTO_THREAD_unlock(i8* noundef %7) #13
  br label %if.end67

if.end67:                                         ; preds = %if.then64, %if.end62
  %tobool68.not = icmp eq i32 %ret.0, 0
  %.inc = select i1 %tobool68.not, i32 -1, i32 %inc
  br label %cleanup

cleanup:                                          ; preds = %if.end67, %if.then32, %if.then42, %if.then16, %if.then24, %land.lhs.true6, %if.then
  %retval.0 = phi i32 [ -1, %if.then ], [ -1, %land.lhs.true6 ], [ -1, %if.then24 ], [ -1, %if.then16 ], [ -1, %if.then42 ], [ -1, %if.then32 ], [ %.inc, %if.end67 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @provider_flush_store_cache(%struct.ossl_provider_st* nocapture noundef readonly %prov) unnamed_addr #0 {
entry:
  %libctx = getelementptr inbounds %struct.ossl_provider_st, %struct.ossl_provider_st* %prov, i64 0, i32 10
  %0 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** %libctx, align 8, !tbaa !40
  %call = tail call fastcc %struct.provider_store_st* @get_provider_store(%struct.ossl_lib_ctx_st* noundef %0) #14
  %cmp = icmp eq %struct.provider_store_st* %call, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %lock = getelementptr inbounds %struct.provider_store_st, %struct.provider_store_st* %call, i64 0, i32 4
  %1 = load i8*, i8** %lock, align 8, !tbaa !15
  %call1 = tail call i32 @CRYPTO_THREAD_read_lock(i8* noundef %1) #13
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %cleanup, label %if.end3

if.end3:                                          ; preds = %if.end
  %freeing4 = getelementptr inbounds %struct.provider_store_st, %struct.provider_store_st* %call, i64 0, i32 9
  %bf.load = load i8, i8* %freeing4, align 8
  %2 = load i8*, i8** %lock, align 8, !tbaa !15
  %call6 = tail call i32 @CRYPTO_THREAD_unlock(i8* noundef %2) #13
  %3 = and i8 %bf.load, 2
  %tobool7.not = icmp eq i8 %3, 0
  br i1 %tobool7.not, label %if.then8, label %cleanup

if.then8:                                         ; preds = %if.end3
  %4 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** %libctx, align 8, !tbaa !40
  %call10 = tail call i32 @evp_method_store_flush(%struct.ossl_lib_ctx_st* noundef %4) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.end, %entry, %if.then8
  %retval.0 = phi i32 [ %call10, %if.then8 ], [ 0, %entry ], [ 0, %if.end ], [ 1, %if.end3 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @provider_deactivate(%struct.ossl_provider_st* noundef %prov, i32 noundef %upcalls) unnamed_addr #0 {
entry:
  %cmp.not = icmp eq %struct.ossl_provider_st* %prov, null
  br i1 %cmp.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %libctx = getelementptr inbounds %struct.ossl_provider_st, %struct.ossl_provider_st* %prov, i64 0, i32 10
  %0 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** %libctx, align 8, !tbaa !40
  %call = tail call fastcc %struct.provider_store_st* @get_provider_store(%struct.ossl_lib_ctx_st* noundef %0) #14
  %cmp3 = icmp eq %struct.provider_store_st* %call, null
  br i1 %cmp3, label %cleanup, label %if.end6

if.end6:                                          ; preds = %if.end
  %lock = getelementptr inbounds %struct.provider_store_st, %struct.provider_store_st* %call, i64 0, i32 4
  %1 = load i8*, i8** %lock, align 8, !tbaa !15
  %call7 = tail call i32 @CRYPTO_THREAD_read_lock(i8* noundef %1) #13
  %tobool.not = icmp eq i32 %call7, 0
  br i1 %tobool.not, label %cleanup, label %if.end9

if.end9:                                          ; preds = %if.end6
  %flag_lock = getelementptr inbounds %struct.ossl_provider_st, %struct.ossl_provider_st* %prov, i64 0, i32 1
  %2 = load i8*, i8** %flag_lock, align 8, !tbaa !35
  %call10 = tail call i32 @CRYPTO_THREAD_write_lock(i8* noundef %2) #13
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.then12, label %if.end15

if.then12:                                        ; preds = %if.end9
  %3 = load i8*, i8** %lock, align 8, !tbaa !15
  %call14 = tail call i32 @CRYPTO_THREAD_unlock(i8* noundef %3) #13
  br label %cleanup

if.end15:                                         ; preds = %if.end9
  %activatecnt = getelementptr inbounds %struct.ossl_provider_st, %struct.ossl_provider_st* %prov, i64 0, i32 4
  %4 = load i32, i32* %activatecnt, align 8, !tbaa !53
  %cmp16 = icmp sgt i32 %4, 1
  br i1 %cmp16, label %if.end40, label %if.then26

if.then26:                                        ; preds = %if.end15
  %dec75 = add nsw i32 %4, -1
  store i32 %dec75, i32* %activatecnt, align 8, !tbaa !53
  %5 = getelementptr %struct.ossl_provider_st, %struct.ossl_provider_st* %prov, i64 0, i32 0
  %bf.load27 = load i8, i8* %5, align 8
  %bf.clear28 = and i8 %bf.load27, -3
  store i8 %bf.clear28, i8* %5, align 8
  %6 = load i8*, i8** %flag_lock, align 8, !tbaa !35
  %call31 = tail call i32 @CRYPTO_THREAD_unlock(i8* noundef %6) #13
  %child_cbs = getelementptr inbounds %struct.provider_store_st, %struct.provider_store_st* %call, i64 0, i32 2
  %7 = load %struct.stack_st_OSSL_PROVIDER_CHILD_CB*, %struct.stack_st_OSSL_PROVIDER_CHILD_CB** %child_cbs, align 8, !tbaa !44
  %call34 = tail call fastcc i32 @sk_OSSL_PROVIDER_CHILD_CB_num(%struct.stack_st_OSSL_PROVIDER_CHILD_CB* noundef %7) #14
  %cmp3584 = icmp sgt i32 %call34, 0
  br i1 %cmp3584, label %for.body.lr.ph, label %if.end40.thread

for.body.lr.ph:                                   ; preds = %if.then26
  %8 = bitcast %struct.ossl_provider_st* %prov to %struct.ossl_core_handle_st*
  br label %for.body

if.end40.thread:                                  ; preds = %for.body, %if.then26
  %9 = load i8*, i8** %lock, align 8, !tbaa !15
  %call4283 = tail call i32 @CRYPTO_THREAD_unlock(i8* noundef %9) #13
  br label %cleanup

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %i.085 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body ]
  %10 = load %struct.stack_st_OSSL_PROVIDER_CHILD_CB*, %struct.stack_st_OSSL_PROVIDER_CHILD_CB** %child_cbs, align 8, !tbaa !44
  %call38 = tail call fastcc %struct.OSSL_PROVIDER_CHILD_CB* @sk_OSSL_PROVIDER_CHILD_CB_value(%struct.stack_st_OSSL_PROVIDER_CHILD_CB* noundef %10, i32 noundef %i.085) #14
  %remove_cb = getelementptr inbounds %struct.OSSL_PROVIDER_CHILD_CB, %struct.OSSL_PROVIDER_CHILD_CB* %call38, i64 0, i32 2
  %11 = load i32 (%struct.ossl_core_handle_st*, i8*)*, i32 (%struct.ossl_core_handle_st*, i8*)** %remove_cb, align 8, !tbaa !54
  %cbdata = getelementptr inbounds %struct.OSSL_PROVIDER_CHILD_CB, %struct.OSSL_PROVIDER_CHILD_CB* %call38, i64 0, i32 4
  %12 = load i8*, i8** %cbdata, align 8, !tbaa !47
  %call39 = tail call i32 %11(%struct.ossl_core_handle_st* noundef nonnull %8, i8* noundef %12) #13
  %inc = add nuw nsw i32 %i.085, 1
  %exitcond.not = icmp eq i32 %inc, %call34
  br i1 %exitcond.not, label %if.end40.thread, label %for.body, !llvm.loop !55

if.end40:                                         ; preds = %if.end15
  %ischild = getelementptr inbounds %struct.ossl_provider_st, %struct.ossl_provider_st* %prov, i64 0, i32 25
  %bf.load = load i8, i8* %ischild, align 8
  %bf.clear = and i8 %bf.load, 1
  %tobool18 = icmp eq i8 %bf.clear, 0
  %tobool20 = icmp eq i32 %upcalls, 0
  %not.or.cond = or i1 %tobool20, %tobool18
  %dec = add nsw i32 %4, -1
  store i32 %dec, i32* %activatecnt, align 8, !tbaa !53
  %13 = load i8*, i8** %flag_lock, align 8, !tbaa !35
  %call31.c = tail call i32 @CRYPTO_THREAD_unlock(i8* noundef %13) #13
  %14 = load i8*, i8** %lock, align 8, !tbaa !15
  %call42 = tail call i32 @CRYPTO_THREAD_unlock(i8* noundef %14) #13
  br i1 %not.or.cond, label %cleanup, label %if.then44

if.then44:                                        ; preds = %if.end40
  %call45 = tail call i32 @ossl_provider_free_parent(%struct.ossl_provider_st* noundef nonnull %prov, i32 noundef 1) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end40.thread, %if.end40, %if.then44, %if.end6, %if.end, %entry, %if.then12
  %retval.0 = phi i32 [ -1, %if.then12 ], [ -1, %entry ], [ -1, %if.end ], [ -1, %if.end6 ], [ %dec, %if.then44 ], [ %dec, %if.end40 ], [ %dec75, %if.end40.thread ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define i8* @ossl_provider_ctx(%struct.ossl_provider_st* nocapture noundef readonly %prov) local_unnamed_addr #8 {
entry:
  %provctx = getelementptr inbounds %struct.ossl_provider_st, %struct.ossl_provider_st* %prov, i64 0, i32 26
  %0 = load i8*, i8** %provctx, align 8, !tbaa !50
  ret i8* %0
}

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_provider_doall_activated(%struct.ossl_lib_ctx_st* noundef %ctx, i32 (%struct.ossl_provider_st*, i8*)* nocapture noundef readonly %cb, i8* noundef %cbdata) local_unnamed_addr #0 {
entry:
  %ref = alloca i32, align 4
  %0 = bitcast i32* %ref to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #15
  %call = tail call fastcc %struct.provider_store_st* @get_provider_store(%struct.ossl_lib_ctx_st* noundef %ctx) #14
  %call1 = tail call i32 @ossl_lib_ctx_is_default(%struct.ossl_lib_ctx_st* noundef %ctx) #13
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call2 = tail call i32 @OPENSSL_init_crypto(i64 noundef 64, %struct.ossl_init_settings_st* noundef null) #13
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %cmp = icmp eq %struct.provider_store_st* %call, null
  br i1 %cmp, label %cleanup79, label %if.end4

if.end4:                                          ; preds = %if.end
  %call5 = tail call fastcc i32 @provider_activate_fallbacks(%struct.provider_store_st* noundef nonnull %call) #14
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %cleanup79, label %if.end8

if.end8:                                          ; preds = %if.end4
  %lock = getelementptr inbounds %struct.provider_store_st, %struct.provider_store_st* %call, i64 0, i32 4
  %1 = load i8*, i8** %lock, align 8, !tbaa !15
  %call9 = tail call i32 @CRYPTO_THREAD_read_lock(i8* noundef %1) #13
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %cleanup79, label %if.end12

if.end12:                                         ; preds = %if.end8
  %providers = getelementptr inbounds %struct.provider_store_st, %struct.provider_store_st* %call, i64 0, i32 1
  %2 = load %struct.stack_st_OSSL_PROVIDER*, %struct.stack_st_OSSL_PROVIDER** %providers, align 8, !tbaa !26
  %call13 = tail call fastcc %struct.stack_st_OSSL_PROVIDER* @sk_OSSL_PROVIDER_dup(%struct.stack_st_OSSL_PROVIDER* noundef %2) #14
  %cmp14 = icmp eq %struct.stack_st_OSSL_PROVIDER* %call13, null
  br i1 %cmp14, label %if.then15, label %if.end18

if.then15:                                        ; preds = %if.end12
  %3 = load i8*, i8** %lock, align 8, !tbaa !15
  %call17 = tail call i32 @CRYPTO_THREAD_unlock(i8* noundef %3) #13
  br label %cleanup79

if.end18:                                         ; preds = %if.end12
  %call19 = tail call fastcc i32 @sk_OSSL_PROVIDER_num(%struct.stack_st_OSSL_PROVIDER* noundef nonnull %call13) #14
  %cmp20143 = icmp sgt i32 %call19, 0
  br i1 %cmp20143, label %for.body, label %finish.sink.split

for.body:                                         ; preds = %if.end18, %cleanup
  %curr.0145.in = phi i32 [ %curr.0145, %cleanup ], [ %call19, %if.end18 ]
  %max.0144 = phi i32 [ %max.1, %cleanup ], [ %call19, %if.end18 ]
  %curr.0145 = add nsw i32 %curr.0145.in, -1
  %call21 = tail call fastcc %struct.ossl_provider_st* @sk_OSSL_PROVIDER_value(%struct.stack_st_OSSL_PROVIDER* noundef nonnull %call13, i32 noundef %curr.0145) #14
  %flag_lock = getelementptr inbounds %struct.ossl_provider_st, %struct.ossl_provider_st* %call21, i64 0, i32 1
  %4 = load i8*, i8** %flag_lock, align 8, !tbaa !35
  %call22 = tail call i32 @CRYPTO_THREAD_write_lock(i8* noundef %4) #13
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %finish.sink.split, label %if.end25

if.end25:                                         ; preds = %for.body
  %5 = getelementptr %struct.ossl_provider_st, %struct.ossl_provider_st* %call21, i64 0, i32 0
  %bf.load = load i8, i8* %5, align 8
  %6 = and i8 %bf.load, 2
  %tobool26.not = icmp eq i8 %6, 0
  br i1 %tobool26.not, label %if.else, label %if.then27

if.then27:                                        ; preds = %if.end25
  %refcnt = getelementptr inbounds %struct.ossl_provider_st, %struct.ossl_provider_st* %call21, i64 0, i32 2
  call fastcc void @CRYPTO_UP_REF(i32* noundef nonnull %refcnt, i32* noundef nonnull %ref) #14
  %call34 = tail call fastcc i32 @provider_activate(%struct.ossl_provider_st* noundef nonnull %call21, i32 noundef 0, i32 noundef 0) #14
  %cmp35 = icmp slt i32 %call34, 0
  br i1 %cmp35, label %if.then36, label %cleanup

if.then36:                                        ; preds = %if.then27
  call fastcc void @CRYPTO_DOWN_REF(i32* noundef nonnull %refcnt, i32* noundef nonnull %ref) #14
  %7 = load i8*, i8** %flag_lock, align 8, !tbaa !35
  %call41 = tail call i32 @CRYPTO_THREAD_unlock(i8* noundef %7) #13
  br label %finish.sink.split

if.else:                                          ; preds = %if.end25
  tail call fastcc void @sk_OSSL_PROVIDER_delete(%struct.stack_st_OSSL_PROVIDER* noundef nonnull %call13, i32 noundef %curr.0145) #14
  %dec = add nsw i32 %max.0144, -1
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then27
  %max.1 = phi i32 [ %max.0144, %if.then27 ], [ %dec, %if.else ]
  %8 = load i8*, i8** %flag_lock, align 8, !tbaa !35
  %call46 = tail call i32 @CRYPTO_THREAD_unlock(i8* noundef %8) #13
  %cmp20 = icmp ugt i32 %curr.0145.in, 1
  br i1 %cmp20, label %for.body, label %for.end

for.end:                                          ; preds = %cleanup
  %9 = load i8*, i8** %lock, align 8, !tbaa !15
  %call49 = tail call i32 @CRYPTO_THREAD_unlock(i8* noundef %9) #13
  %cmp51146 = icmp sgt i32 %max.1, 0
  br i1 %cmp51146, label %for.body52, label %finish

for.body52:                                       ; preds = %for.end, %for.inc62
  %curr.1147 = phi i32 [ %inc, %for.inc62 ], [ 0, %for.end ]
  %call54 = tail call fastcc %struct.ossl_provider_st* @sk_OSSL_PROVIDER_value(%struct.stack_st_OSSL_PROVIDER* noundef nonnull %call13, i32 noundef %curr.1147) #14
  %call55 = tail call i32 %cb(%struct.ossl_provider_st* noundef %call54, i8* noundef %cbdata) #13
  %tobool56.not = icmp eq i32 %call55, 0
  br i1 %tobool56.not, label %finish, label %for.inc62

for.inc62:                                        ; preds = %for.body52
  %inc = add nuw nsw i32 %curr.1147, 1
  %exitcond.not = icmp eq i32 %inc, %max.1
  br i1 %exitcond.not, label %finish, label %for.body52, !llvm.loop !56

finish.sink.split:                                ; preds = %for.body, %if.then36, %if.end18
  %max.0139.ph = phi i32 [ %call19, %if.end18 ], [ %max.0144, %if.then36 ], [ %max.0144, %for.body ]
  %curr.2.ph = phi i32 [ -1, %if.end18 ], [ %curr.0145, %if.then36 ], [ %curr.0145, %for.body ]
  %ret.0.ph = phi i32 [ 1, %if.end18 ], [ 0, %if.then36 ], [ 0, %for.body ]
  %10 = load i8*, i8** %lock, align 8, !tbaa !15
  %call49165 = tail call i32 @CRYPTO_THREAD_unlock(i8* noundef %10) #13
  br label %finish

finish:                                           ; preds = %for.inc62, %for.body52, %finish.sink.split, %for.end
  %max.0139 = phi i32 [ %max.1, %for.end ], [ %max.0139.ph, %finish.sink.split ], [ %max.1, %for.body52 ], [ %max.1, %for.inc62 ]
  %curr.2 = phi i32 [ -1, %for.end ], [ %curr.2.ph, %finish.sink.split ], [ -1, %for.inc62 ], [ %curr.1147, %for.body52 ]
  %ret.0 = phi i32 [ 1, %for.end ], [ %ret.0.ph, %finish.sink.split ], [ 1, %for.inc62 ], [ 0, %for.body52 ]
  %curr.3152 = add nsw i32 %curr.2, 1
  %cmp68153 = icmp slt i32 %curr.3152, %max.0139
  br i1 %cmp68153, label %for.body69, label %for.end78

for.body69:                                       ; preds = %finish, %for.body69
  %curr.3154 = phi i32 [ %curr.3, %for.body69 ], [ %curr.3152, %finish ]
  %call71 = tail call fastcc %struct.ossl_provider_st* @sk_OSSL_PROVIDER_value(%struct.stack_st_OSSL_PROVIDER* noundef nonnull %call13, i32 noundef %curr.3154) #14
  %call72 = tail call fastcc i32 @provider_deactivate(%struct.ossl_provider_st* noundef %call71, i32 noundef 0) #14
  %refcnt73 = getelementptr inbounds %struct.ossl_provider_st, %struct.ossl_provider_st* %call71, i64 0, i32 2
  call fastcc void @CRYPTO_DOWN_REF(i32* noundef nonnull %refcnt73, i32* noundef nonnull %ref) #14
  %curr.3 = add i32 %curr.3154, 1
  %exitcond163.not = icmp eq i32 %curr.3, %max.0139
  br i1 %exitcond163.not, label %for.end78, label %for.body69, !llvm.loop !57

for.end78:                                        ; preds = %for.body69, %finish
  tail call fastcc void @sk_OSSL_PROVIDER_free(%struct.stack_st_OSSL_PROVIDER* noundef nonnull %call13) #14
  br label %cleanup79

cleanup79:                                        ; preds = %if.end8, %if.end4, %if.end, %for.end78, %if.then15
  %retval.0 = phi i32 [ 0, %if.then15 ], [ %ret.0, %for.end78 ], [ 1, %if.end ], [ 0, %if.end4 ], [ 0, %if.end8 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #15
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @provider_activate_fallbacks(%struct.provider_store_st* noundef %store) unnamed_addr #0 {
entry:
  %lock = getelementptr inbounds %struct.provider_store_st, %struct.provider_store_st* %store, i64 0, i32 4
  %0 = load i8*, i8** %lock, align 8, !tbaa !15
  %call = tail call i32 @CRYPTO_THREAD_read_lock(i8* noundef %0) #13
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %cleanup51, label %if.end

if.end:                                           ; preds = %entry
  %use_fallbacks1 = getelementptr inbounds %struct.provider_store_st, %struct.provider_store_st* %store, i64 0, i32 9
  %bf.load = load i8, i8* %use_fallbacks1, align 8
  %bf.clear = and i8 %bf.load, 1
  %1 = load i8*, i8** %lock, align 8, !tbaa !15
  %call3 = tail call i32 @CRYPTO_THREAD_unlock(i8* noundef %1) #13
  %tobool4.not = icmp eq i8 %bf.clear, 0
  br i1 %tobool4.not, label %cleanup51, label %if.end6

if.end6:                                          ; preds = %if.end
  %2 = load i8*, i8** %lock, align 8, !tbaa !15
  %call8 = tail call i32 @CRYPTO_THREAD_write_lock(i8* noundef %2) #13
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %cleanup51, label %if.end11

if.end11:                                         ; preds = %if.end6
  %bf.load13 = load i8, i8* %use_fallbacks1, align 8
  %bf.clear14 = and i8 %bf.load13, 1
  %tobool16.not = icmp eq i8 %bf.clear14, 0
  br i1 %tobool16.not, label %cleanup51.sink.split, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end11
  %3 = load i8*, i8** getelementptr inbounds ([0 x %struct.OSSL_PROVIDER_INFO], [0 x %struct.OSSL_PROVIDER_INFO]* @ossl_predefined_providers, i64 0, i64 0, i32 0), align 8, !tbaa !4
  %cmp.not90 = icmp eq i8* %3, null
  br i1 %cmp.not90, label %cleanup51.sink.split, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %libctx = getelementptr inbounds %struct.provider_store_st, %struct.provider_store_st* %store, i64 0, i32 0
  %providers = getelementptr inbounds %struct.provider_store_st, %struct.provider_store_st* %store, i64 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %4 = phi i8* [ %3, %for.body.lr.ph ], [ %8, %for.inc ]
  %p.092 = phi %struct.OSSL_PROVIDER_INFO* [ getelementptr inbounds ([0 x %struct.OSSL_PROVIDER_INFO], [0 x %struct.OSSL_PROVIDER_INFO]* @ossl_predefined_providers, i64 0, i64 0), %for.body.lr.ph ], [ %incdec.ptr, %for.inc ]
  %activated_fallback_count.091 = phi i32 [ 0, %for.body.lr.ph ], [ %activated_fallback_count.1, %for.inc ]
  %is_fallback = getelementptr inbounds %struct.OSSL_PROVIDER_INFO, %struct.OSSL_PROVIDER_INFO* %p.092, i64 0, i32 4
  %bf.load21 = load i8, i8* %is_fallback, align 8
  %bf.clear22 = and i8 %bf.load21, 1
  %tobool24.not = icmp eq i8 %bf.clear22, 0
  br i1 %tobool24.not, label %for.inc, label %if.end26

if.end26:                                         ; preds = %for.body
  %init = getelementptr inbounds %struct.OSSL_PROVIDER_INFO, %struct.OSSL_PROVIDER_INFO* %p.092, i64 0, i32 2
  %5 = load i32 (%struct.ossl_core_handle_st*, %struct.ossl_dispatch_st*, %struct.ossl_dispatch_st**, i8**)*, i32 (%struct.ossl_core_handle_st*, %struct.ossl_dispatch_st*, %struct.ossl_dispatch_st**, i8**)** %init, align 8, !tbaa !39
  %call28 = tail call fastcc %struct.ossl_provider_st* @provider_new(i8* noundef nonnull %4, i32 (%struct.ossl_core_handle_st*, %struct.ossl_dispatch_st*, %struct.ossl_dispatch_st**, i8**)* noundef %5, %struct.stack_st_INFOPAIR* noundef null) #14
  %cmp29 = icmp eq %struct.ossl_provider_st* %call28, null
  br i1 %cmp29, label %cleanup51.sink.split, label %if.end31

if.end31:                                         ; preds = %if.end26
  %6 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** %libctx, align 8, !tbaa !58
  %libctx32 = getelementptr inbounds %struct.ossl_provider_st, %struct.ossl_provider_st* %call28, i64 0, i32 10
  store %struct.ossl_lib_ctx_st* %6, %struct.ossl_lib_ctx_st** %libctx32, align 8, !tbaa !40
  %call33 = tail call i32 @ERR_get_next_error_library() #13
  %error_lib = getelementptr inbounds %struct.ossl_provider_st, %struct.ossl_provider_st* %call28, i64 0, i32 12
  store i32 %call33, i32* %error_lib, align 8, !tbaa !28
  %call34 = tail call fastcc i32 @provider_activate(%struct.ossl_provider_st* noundef nonnull %call28, i32 noundef 0, i32 noundef 0) #14
  %cmp35 = icmp slt i32 %call34, 0
  br i1 %cmp35, label %if.then36, label %if.end37

if.then36:                                        ; preds = %if.end31
  tail call void @ossl_provider_free(%struct.ossl_provider_st* noundef nonnull %call28) #14
  br label %cleanup51.sink.split

if.end37:                                         ; preds = %if.end31
  %store38 = getelementptr inbounds %struct.ossl_provider_st, %struct.ossl_provider_st* %call28, i64 0, i32 11
  store %struct.provider_store_st* %store, %struct.provider_store_st** %store38, align 8, !tbaa !43
  %7 = load %struct.stack_st_OSSL_PROVIDER*, %struct.stack_st_OSSL_PROVIDER** %providers, align 8, !tbaa !26
  %call39 = tail call fastcc i32 @sk_OSSL_PROVIDER_push(%struct.stack_st_OSSL_PROVIDER* noundef %7, %struct.ossl_provider_st* noundef nonnull %call28) #14
  %cmp40 = icmp eq i32 %call39, 0
  br i1 %cmp40, label %if.then41, label %if.end42

if.then41:                                        ; preds = %if.end37
  tail call void @ossl_provider_free(%struct.ossl_provider_st* noundef nonnull %call28) #14
  br label %cleanup51.sink.split

if.end42:                                         ; preds = %if.end37
  %inc = add nsw i32 %activated_fallback_count.091, 1
  br label %for.inc

for.inc:                                          ; preds = %if.end42, %for.body
  %activated_fallback_count.1 = phi i32 [ %inc, %if.end42 ], [ %activated_fallback_count.091, %for.body ]
  %incdec.ptr = getelementptr inbounds %struct.OSSL_PROVIDER_INFO, %struct.OSSL_PROVIDER_INFO* %p.092, i64 1
  %name = getelementptr inbounds %struct.OSSL_PROVIDER_INFO, %struct.OSSL_PROVIDER_INFO* %incdec.ptr, i64 0, i32 0
  %8 = load i8*, i8** %name, align 8, !tbaa !4
  %cmp.not = icmp eq i8* %8, null
  br i1 %cmp.not, label %for.end, label %for.body, !llvm.loop !59

for.end:                                          ; preds = %for.inc
  %cmp43 = icmp sgt i32 %activated_fallback_count.1, 0
  br i1 %cmp43, label %if.then44, label %cleanup51.sink.split

if.then44:                                        ; preds = %for.end
  %bf.load46 = load i8, i8* %use_fallbacks1, align 8
  %bf.clear47 = and i8 %bf.load46, -2
  store i8 %bf.clear47, i8* %use_fallbacks1, align 8
  br label %cleanup51.sink.split

cleanup51.sink.split:                             ; preds = %if.end26, %if.then44, %for.end, %if.then36, %if.then41, %for.cond.preheader, %if.end11
  %retval.0.ph = phi i32 [ 1, %if.end11 ], [ 1, %if.then44 ], [ 0, %for.end ], [ 0, %if.then36 ], [ 0, %if.then41 ], [ 0, %for.cond.preheader ], [ 0, %if.end26 ]
  %9 = load i8*, i8** %lock, align 8, !tbaa !15
  %call50 = tail call i32 @CRYPTO_THREAD_unlock(i8* noundef %9) #13
  br label %cleanup51

cleanup51:                                        ; preds = %cleanup51.sink.split, %if.end6, %if.end, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ 1, %if.end ], [ 0, %if.end6 ], [ %retval.0.ph, %cleanup51.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.stack_st_OSSL_PROVIDER* @sk_OSSL_PROVIDER_dup(%struct.stack_st_OSSL_PROVIDER* noundef %sk) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.stack_st_OSSL_PROVIDER* %sk to %struct.stack_st*
  %call = tail call %struct.stack_st* @OPENSSL_sk_dup(%struct.stack_st* noundef %0) #13
  %1 = bitcast %struct.stack_st* %call to %struct.stack_st_OSSL_PROVIDER*
  ret %struct.stack_st_OSSL_PROVIDER* %1
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @sk_OSSL_PROVIDER_num(%struct.stack_st_OSSL_PROVIDER* noundef %sk) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.stack_st_OSSL_PROVIDER* %sk to %struct.stack_st*
  %call = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %0) #13
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @sk_OSSL_PROVIDER_delete(%struct.stack_st_OSSL_PROVIDER* noundef %sk, i32 noundef %i) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.stack_st_OSSL_PROVIDER* %sk to %struct.stack_st*
  %call = tail call i8* @OPENSSL_sk_delete(%struct.stack_st* noundef %0, i32 noundef %i) #13
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @sk_OSSL_PROVIDER_free(%struct.stack_st_OSSL_PROVIDER* noundef %sk) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.stack_st_OSSL_PROVIDER* %sk to %struct.stack_st*
  tail call void @OPENSSL_sk_free(%struct.stack_st* noundef %0) #13
  ret void
}

; Function Attrs: noinline nounwind uwtable
define i32 @OSSL_PROVIDER_available(%struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef %name) local_unnamed_addr #0 {
entry:
  %call = tail call fastcc %struct.provider_store_st* @get_provider_store(%struct.ossl_lib_ctx_st* noundef %libctx) #14
  %cmp = icmp eq %struct.provider_store_st* %call, null
  br i1 %cmp, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %call1 = tail call fastcc i32 @provider_activate_fallbacks(%struct.provider_store_st* noundef nonnull %call) #14
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %lor.lhs.false
  %call2 = tail call %struct.ossl_provider_st* @ossl_provider_find(%struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef %name, i32 noundef 0) #14
  %cmp3.not = icmp eq %struct.ossl_provider_st* %call2, null
  br i1 %cmp3.not, label %cleanup, label %if.then4

if.then4:                                         ; preds = %if.end
  %flag_lock = getelementptr inbounds %struct.ossl_provider_st, %struct.ossl_provider_st* %call2, i64 0, i32 1
  %0 = load i8*, i8** %flag_lock, align 8, !tbaa !35
  %call5 = tail call i32 @CRYPTO_THREAD_read_lock(i8* noundef %0) #13
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %cleanup, label %if.end8

if.end8:                                          ; preds = %if.then4
  %1 = getelementptr %struct.ossl_provider_st, %struct.ossl_provider_st* %call2, i64 0, i32 0
  %bf.load = load i8, i8* %1, align 8
  %bf.lshr = lshr i8 %bf.load, 1
  %bf.clear = and i8 %bf.lshr, 1
  %bf.cast = zext i8 %bf.clear to i32
  %2 = load i8*, i8** %flag_lock, align 8, !tbaa !35
  %call10 = tail call i32 @CRYPTO_THREAD_unlock(i8* noundef %2) #13
  tail call void @ossl_provider_free(%struct.ossl_provider_st* noundef nonnull %call2) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.end8, %if.then4, %entry, %lor.lhs.false
  %retval.0 = phi i32 [ 0, %lor.lhs.false ], [ 0, %entry ], [ 0, %if.then4 ], [ %bf.cast, %if.end8 ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define i32 @ossl_provider_set_fallback(%struct.ossl_provider_st* noundef %prov) local_unnamed_addr #9 {
entry:
  %cmp = icmp eq %struct.ossl_provider_st* %prov, null
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %0 = getelementptr %struct.ossl_provider_st, %struct.ossl_provider_st* %prov, i64 0, i32 0
  %bf.load = load i8, i8* %0, align 8
  %bf.set = or i8 %bf.load, 4
  store i8 %bf.set, i8* %0, align 8
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define i8* @ossl_provider_name(%struct.ossl_provider_st* nocapture noundef readonly %prov) local_unnamed_addr #8 {
entry:
  %name = getelementptr inbounds %struct.ossl_provider_st, %struct.ossl_provider_st* %prov, i64 0, i32 5
  %0 = load i8*, i8** %name, align 8, !tbaa !24
  ret i8* %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define %struct.dso_st* @ossl_provider_dso(%struct.ossl_provider_st* nocapture noundef readonly %prov) local_unnamed_addr #8 {
entry:
  %module = getelementptr inbounds %struct.ossl_provider_st, %struct.ossl_provider_st* %prov, i64 0, i32 7
  %0 = load %struct.dso_st*, %struct.dso_st** %module, align 8, !tbaa !31
  ret %struct.dso_st* %0
}

; Function Attrs: noinline nounwind uwtable
define i8* @ossl_provider_module_name(%struct.ossl_provider_st* nocapture noundef readonly %prov) local_unnamed_addr #0 {
entry:
  %module = getelementptr inbounds %struct.ossl_provider_st, %struct.ossl_provider_st* %prov, i64 0, i32 7
  %0 = load %struct.dso_st*, %struct.dso_st** %module, align 8, !tbaa !31
  %call = tail call i8* @DSO_get_filename(%struct.dso_st* noundef %0) #13
  ret i8* %call
}

declare i8* @DSO_get_filename(%struct.dso_st* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define i8* @ossl_provider_module_path(%struct.ossl_provider_st* nocapture noundef readonly %prov) local_unnamed_addr #0 {
entry:
  %module = getelementptr inbounds %struct.ossl_provider_st, %struct.ossl_provider_st* %prov, i64 0, i32 7
  %0 = load %struct.dso_st*, %struct.dso_st** %module, align 8, !tbaa !31
  %call = tail call i8* @DSO_get_filename(%struct.dso_st* noundef %0) #13
  ret i8* %call
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define i8* @ossl_provider_prov_ctx(%struct.ossl_provider_st* noundef readonly %prov) local_unnamed_addr #8 {
entry:
  %cmp.not = icmp eq %struct.ossl_provider_st* %prov, null
  br i1 %cmp.not, label %return, label %if.then

if.then:                                          ; preds = %entry
  %provctx = getelementptr inbounds %struct.ossl_provider_st, %struct.ossl_provider_st* %prov, i64 0, i32 26
  %0 = load i8*, i8** %provctx, align 8, !tbaa !50
  br label %return

return:                                           ; preds = %entry, %if.then
  %retval.0 = phi i8* [ %0, %if.then ], [ null, %entry ]
  ret i8* %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define %struct.ossl_dispatch_st* @ossl_provider_get0_dispatch(%struct.ossl_provider_st* noundef readonly %prov) local_unnamed_addr #8 {
entry:
  %cmp.not = icmp eq %struct.ossl_provider_st* %prov, null
  br i1 %cmp.not, label %return, label %if.then

if.then:                                          ; preds = %entry
  %dispatch = getelementptr inbounds %struct.ossl_provider_st, %struct.ossl_provider_st* %prov, i64 0, i32 27
  %0 = load %struct.ossl_dispatch_st*, %struct.ossl_dispatch_st** %dispatch, align 8, !tbaa !60
  br label %return

return:                                           ; preds = %entry, %if.then
  %retval.0 = phi %struct.ossl_dispatch_st* [ %0, %if.then ], [ null, %entry ]
  ret %struct.ossl_dispatch_st* %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define %struct.ossl_lib_ctx_st* @ossl_provider_libctx(%struct.ossl_provider_st* noundef readonly %prov) local_unnamed_addr #8 {
entry:
  %cmp.not = icmp eq %struct.ossl_provider_st* %prov, null
  br i1 %cmp.not, label %cond.end, label %cond.true

cond.true:                                        ; preds = %entry
  %libctx = getelementptr inbounds %struct.ossl_provider_st, %struct.ossl_provider_st* %prov, i64 0, i32 10
  %0 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** %libctx, align 8, !tbaa !40
  br label %cond.end

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.ossl_lib_ctx_st* [ %0, %cond.true ], [ null, %entry ]
  ret %struct.ossl_lib_ctx_st* %cond
}

; Function Attrs: noinline nounwind uwtable
define %struct.ossl_param_st* @ossl_provider_gettable_params(%struct.ossl_provider_st* nocapture noundef readonly %prov) local_unnamed_addr #0 {
entry:
  %gettable_params = getelementptr inbounds %struct.ossl_provider_st, %struct.ossl_provider_st* %prov, i64 0, i32 15
  %0 = load %struct.ossl_param_st* (i8*)*, %struct.ossl_param_st* (i8*)** %gettable_params, align 8, !tbaa !61
  %cmp = icmp eq %struct.ossl_param_st* (i8*)* %0, null
  br i1 %cmp, label %cond.end, label %cond.false

cond.false:                                       ; preds = %entry
  %provctx = getelementptr inbounds %struct.ossl_provider_st, %struct.ossl_provider_st* %prov, i64 0, i32 26
  %1 = load i8*, i8** %provctx, align 8, !tbaa !50
  %call = tail call %struct.ossl_param_st* %0(i8* noundef %1) #13
  br label %cond.end

cond.end:                                         ; preds = %entry, %cond.false
  %cond = phi %struct.ossl_param_st* [ %call, %cond.false ], [ null, %entry ]
  ret %struct.ossl_param_st* %cond
}

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_provider_get_params(%struct.ossl_provider_st* nocapture noundef readonly %prov, %struct.ossl_param_st* noundef %params) local_unnamed_addr #0 {
entry:
  %get_params = getelementptr inbounds %struct.ossl_provider_st, %struct.ossl_provider_st* %prov, i64 0, i32 16
  %0 = load i32 (i8*, %struct.ossl_param_st*)*, i32 (i8*, %struct.ossl_param_st*)** %get_params, align 8, !tbaa !62
  %cmp = icmp eq i32 (i8*, %struct.ossl_param_st*)* %0, null
  br i1 %cmp, label %cond.end, label %cond.false

cond.false:                                       ; preds = %entry
  %provctx = getelementptr inbounds %struct.ossl_provider_st, %struct.ossl_provider_st* %prov, i64 0, i32 26
  %1 = load i8*, i8** %provctx, align 8, !tbaa !50
  %call = tail call i32 %0(i8* noundef %1, %struct.ossl_param_st* noundef %params) #13
  br label %cond.end

cond.end:                                         ; preds = %entry, %cond.false
  %cond = phi i32 [ %call, %cond.false ], [ 0, %entry ]
  ret i32 %cond
}

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_provider_self_test(%struct.ossl_provider_st* nocapture noundef readonly %prov) local_unnamed_addr #0 {
entry:
  %self_test = getelementptr inbounds %struct.ossl_provider_st, %struct.ossl_provider_st* %prov, i64 0, i32 18
  %0 = load i32 (i8*)*, i32 (i8*)** %self_test, align 8, !tbaa !63
  %cmp = icmp eq i32 (i8*)* %0, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %provctx = getelementptr inbounds %struct.ossl_provider_st, %struct.ossl_provider_st* %prov, i64 0, i32 26
  %1 = load i8*, i8** %provctx, align 8, !tbaa !50
  %call = tail call i32 %0(i8* noundef %1) #13
  %cmp2 = icmp eq i32 %call, 0
  br i1 %cmp2, label %if.then3, label %cleanup

if.then3:                                         ; preds = %if.end
  %call4 = tail call fastcc i32 @provider_flush_store_cache(%struct.ossl_provider_st* noundef nonnull %prov) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then3, %entry
  %retval.0 = phi i32 [ 1, %entry ], [ 0, %if.then3 ], [ %call, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_provider_get_capabilities(%struct.ossl_provider_st* nocapture noundef readonly %prov, i8* noundef %capability, i32 (%struct.ossl_param_st*, i8*)* noundef %cb, i8* noundef %arg) local_unnamed_addr #0 {
entry:
  %get_capabilities = getelementptr inbounds %struct.ossl_provider_st, %struct.ossl_provider_st* %prov, i64 0, i32 17
  %0 = load i32 (i8*, i8*, i32 (%struct.ossl_param_st*, i8*)*, i8*)*, i32 (i8*, i8*, i32 (%struct.ossl_param_st*, i8*)*, i8*)** %get_capabilities, align 8, !tbaa !64
  %cmp = icmp eq i32 (i8*, i8*, i32 (%struct.ossl_param_st*, i8*)*, i8*)* %0, null
  br i1 %cmp, label %cond.end, label %cond.false

cond.false:                                       ; preds = %entry
  %provctx = getelementptr inbounds %struct.ossl_provider_st, %struct.ossl_provider_st* %prov, i64 0, i32 26
  %1 = load i8*, i8** %provctx, align 8, !tbaa !50
  %call = tail call i32 %0(i8* noundef %1, i8* noundef %capability, i32 (%struct.ossl_param_st*, i8*)* noundef %cb, i8* noundef %arg) #13
  br label %cond.end

cond.end:                                         ; preds = %entry, %cond.false
  %cond = phi i32 [ %call, %cond.false ], [ 1, %entry ]
  ret i32 %cond
}

; Function Attrs: noinline nounwind uwtable
define %struct.ossl_algorithm_st* @ossl_provider_query_operation(%struct.ossl_provider_st* nocapture noundef readonly %prov, i32 noundef %operation_id, i32* noundef %no_cache) local_unnamed_addr #0 {
entry:
  %query_operation = getelementptr inbounds %struct.ossl_provider_st, %struct.ossl_provider_st* %prov, i64 0, i32 19
  %0 = load %struct.ossl_algorithm_st* (i8*, i32, i32*)*, %struct.ossl_algorithm_st* (i8*, i32, i32*)** %query_operation, align 8, !tbaa !65
  %cmp = icmp eq %struct.ossl_algorithm_st* (i8*, i32, i32*)* %0, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %provctx = getelementptr inbounds %struct.ossl_provider_st, %struct.ossl_provider_st* %prov, i64 0, i32 26
  %1 = load i8*, i8** %provctx, align 8, !tbaa !50
  %call = tail call %struct.ossl_algorithm_st* %0(i8* noundef %1, i32 noundef %operation_id, i32* noundef %no_cache) #13
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi %struct.ossl_algorithm_st* [ %call, %if.end ], [ null, %entry ]
  ret %struct.ossl_algorithm_st* %retval.0
}

; Function Attrs: noinline nounwind uwtable
define void @ossl_provider_unquery_operation(%struct.ossl_provider_st* nocapture noundef readonly %prov, i32 noundef %operation_id, %struct.ossl_algorithm_st* noundef %algs) local_unnamed_addr #0 {
entry:
  %unquery_operation = getelementptr inbounds %struct.ossl_provider_st, %struct.ossl_provider_st* %prov, i64 0, i32 20
  %0 = load void (i8*, i32, %struct.ossl_algorithm_st*)*, void (i8*, i32, %struct.ossl_algorithm_st*)** %unquery_operation, align 8, !tbaa !66
  %cmp.not = icmp eq void (i8*, i32, %struct.ossl_algorithm_st*)* %0, null
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %provctx = getelementptr inbounds %struct.ossl_provider_st, %struct.ossl_provider_st* %prov, i64 0, i32 26
  %1 = load i8*, i8** %provctx, align 8, !tbaa !50
  tail call void %0(i8* noundef %1, i32 noundef %operation_id, %struct.ossl_algorithm_st* noundef %algs) #13
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_provider_clear_all_operation_bits(%struct.ossl_lib_ctx_st* noundef %libctx) local_unnamed_addr #0 {
entry:
  %call = tail call fastcc %struct.provider_store_st* @get_provider_store(%struct.ossl_lib_ctx_st* noundef %libctx) #14
  %cmp.not = icmp eq %struct.provider_store_st* %call, null
  br i1 %cmp.not, label %cleanup, label %if.then

if.then:                                          ; preds = %entry
  %lock = getelementptr inbounds %struct.provider_store_st, %struct.provider_store_st* %call, i64 0, i32 4
  %0 = load i8*, i8** %lock, align 8, !tbaa !15
  %call1 = tail call i32 @CRYPTO_THREAD_read_lock(i8* noundef %0) #13
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %if.then
  %providers = getelementptr inbounds %struct.provider_store_st, %struct.provider_store_st* %call, i64 0, i32 1
  %1 = load %struct.stack_st_OSSL_PROVIDER*, %struct.stack_st_OSSL_PROVIDER** %providers, align 8, !tbaa !26
  %call3 = tail call fastcc i32 @sk_OSSL_PROVIDER_num(%struct.stack_st_OSSL_PROVIDER* noundef %1) #14
  %cmp439 = icmp sgt i32 %call3, 0
  br i1 %cmp439, label %for.body, label %for.end

for.body:                                         ; preds = %if.end, %for.inc
  %res.041 = phi i32 [ %res.1, %for.inc ], [ 1, %if.end ]
  %i.040 = phi i32 [ %inc, %for.inc ], [ 0, %if.end ]
  %2 = load %struct.stack_st_OSSL_PROVIDER*, %struct.stack_st_OSSL_PROVIDER** %providers, align 8, !tbaa !26
  %call6 = tail call fastcc %struct.ossl_provider_st* @sk_OSSL_PROVIDER_value(%struct.stack_st_OSSL_PROVIDER* noundef %2, i32 noundef %i.040) #14
  %opbits_lock = getelementptr inbounds %struct.ossl_provider_st, %struct.ossl_provider_st* %call6, i64 0, i32 23
  %3 = load i8*, i8** %opbits_lock, align 8, !tbaa !34
  %call7 = tail call i32 @CRYPTO_THREAD_write_lock(i8* noundef %3) #13
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %for.inc, label %if.end10

if.end10:                                         ; preds = %for.body
  %operation_bits = getelementptr inbounds %struct.ossl_provider_st, %struct.ossl_provider_st* %call6, i64 0, i32 21
  %4 = load i8*, i8** %operation_bits, align 8, !tbaa !29
  %cmp11.not = icmp eq i8* %4, null
  br i1 %cmp11.not, label %if.end15, label %if.then12

if.then12:                                        ; preds = %if.end10
  %operation_bits_sz = getelementptr inbounds %struct.ossl_provider_st, %struct.ossl_provider_st* %call6, i64 0, i32 22
  %5 = load i64, i64* %operation_bits_sz, align 8, !tbaa !30
  %call14 = tail call i8* @memset(i8* noundef nonnull %4, i32 noundef 0, i64 noundef %5) #13
  br label %if.end15

if.end15:                                         ; preds = %if.then12, %if.end10
  %6 = load i8*, i8** %opbits_lock, align 8, !tbaa !34
  %call17 = tail call i32 @CRYPTO_THREAD_unlock(i8* noundef %6) #13
  br label %for.inc

for.inc:                                          ; preds = %for.body, %if.end15
  %res.1 = phi i32 [ %res.041, %if.end15 ], [ 0, %for.body ]
  %inc = add nuw nsw i32 %i.040, 1
  %exitcond.not = icmp eq i32 %inc, %call3
  br i1 %exitcond.not, label %for.end, label %for.body, !llvm.loop !67

for.end:                                          ; preds = %for.inc, %if.end
  %res.0.lcssa = phi i32 [ 1, %if.end ], [ %res.1, %for.inc ]
  %7 = load i8*, i8** %lock, align 8, !tbaa !15
  %call19 = tail call i32 @CRYPTO_THREAD_unlock(i8* noundef %7) #13
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.then, %for.end
  %retval.0 = phi i32 [ %res.0.lcssa, %for.end ], [ 0, %if.then ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_provider_set_operation_bit(%struct.ossl_provider_st* nocapture noundef %provider, i64 noundef %bitnum) local_unnamed_addr #0 {
entry:
  %div = lshr i64 %bitnum, 3
  %0 = trunc i64 %bitnum to i8
  %sh_prom = and i8 %0, 7
  %shl = shl nuw i8 1, %sh_prom
  %opbits_lock = getelementptr inbounds %struct.ossl_provider_st, %struct.ossl_provider_st* %provider, i64 0, i32 23
  %1 = load i8*, i8** %opbits_lock, align 8, !tbaa !34
  %call = tail call i32 @CRYPTO_THREAD_write_lock(i8* noundef %1) #13
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %cleanup25, label %if.end

if.end:                                           ; preds = %entry
  %operation_bits_sz = getelementptr inbounds %struct.ossl_provider_st, %struct.ossl_provider_st* %provider, i64 0, i32 22
  %2 = load i64, i64* %operation_bits_sz, align 8, !tbaa !30
  %cmp.not = icmp ugt i64 %2, %div
  br i1 %cmp.not, label %if.end18, label %if.then2

if.then2:                                         ; preds = %if.end
  %operation_bits = getelementptr inbounds %struct.ossl_provider_st, %struct.ossl_provider_st* %provider, i64 0, i32 21
  %3 = load i8*, i8** %operation_bits, align 8, !tbaa !29
  %add = add nuw nsw i64 %div, 1
  %call3 = tail call i8* @CRYPTO_realloc(i8* noundef %3, i64 noundef %add, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 1562) #13
  %cmp4 = icmp eq i8* %call3, null
  br i1 %cmp4, label %cleanup.thread, label %cleanup

cleanup.thread:                                   ; preds = %if.then2
  %4 = load i8*, i8** %opbits_lock, align 8, !tbaa !34
  %call8 = tail call i32 @CRYPTO_THREAD_unlock(i8* noundef %4) #13
  tail call void @ERR_new() #13
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 1566, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @__func__.ossl_provider_set_operation_bit, i64 0, i64 0)) #13
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 15, i32 noundef 786688, i8* noundef null) #13
  br label %cleanup25

cleanup:                                          ; preds = %if.then2
  store i8* %call3, i8** %operation_bits, align 8, !tbaa !29
  %5 = load i64, i64* %operation_bits_sz, align 8, !tbaa !30
  %add.ptr = getelementptr inbounds i8, i8* %call3, i64 %5
  %sub = sub i64 %add, %5
  %call15 = tail call i8* @memset(i8* noundef nonnull %add.ptr, i32 noundef 0, i64 noundef %sub) #13
  store i64 %add, i64* %operation_bits_sz, align 8, !tbaa !30
  br label %if.end18

if.end18:                                         ; preds = %cleanup, %if.end
  %operation_bits20 = getelementptr inbounds %struct.ossl_provider_st, %struct.ossl_provider_st* %provider, i64 0, i32 21
  %6 = load i8*, i8** %operation_bits20, align 8, !tbaa !29
  %arrayidx = getelementptr inbounds i8, i8* %6, i64 %div
  %7 = load i8, i8* %arrayidx, align 1, !tbaa !68
  %or45 = or i8 %7, %shl
  store i8 %or45, i8* %arrayidx, align 1, !tbaa !68
  %8 = load i8*, i8** %opbits_lock, align 8, !tbaa !34
  %call24 = tail call i32 @CRYPTO_THREAD_unlock(i8* noundef %8) #13
  br label %cleanup25

cleanup25:                                        ; preds = %cleanup.thread, %entry, %if.end18
  %retval.1 = phi i32 [ 1, %if.end18 ], [ 0, %entry ], [ 0, %cleanup.thread ]
  ret i32 %retval.1
}

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_provider_test_operation_bit(%struct.ossl_provider_st* nocapture noundef readonly %provider, i64 noundef %bitnum, i32* noundef writeonly %result) local_unnamed_addr #0 {
entry:
  %div = lshr i64 %bitnum, 3
  %0 = trunc i64 %bitnum to i8
  %sh_prom = and i8 %0, 7
  %shl = shl nuw i8 1, %sh_prom
  %cmp.not = icmp eq i32* %result, null
  br i1 %cmp.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #13
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 1586, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @__func__.ossl_provider_test_operation_bit, i64 0, i64 0)) #13
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 15, i32 noundef 786690, i8* noundef null) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  store i32 0, i32* %result, align 4, !tbaa !23
  %opbits_lock = getelementptr inbounds %struct.ossl_provider_st, %struct.ossl_provider_st* %provider, i64 0, i32 23
  %1 = load i8*, i8** %opbits_lock, align 8, !tbaa !34
  %call = tail call i32 @CRYPTO_THREAD_read_lock(i8* noundef %1) #13
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %cleanup, label %if.end5

if.end5:                                          ; preds = %if.end
  %operation_bits_sz = getelementptr inbounds %struct.ossl_provider_st, %struct.ossl_provider_st* %provider, i64 0, i32 22
  %2 = load i64, i64* %operation_bits_sz, align 8, !tbaa !30
  %cmp6 = icmp ugt i64 %2, %div
  br i1 %cmp6, label %if.then8, label %if.end14

if.then8:                                         ; preds = %if.end5
  %operation_bits = getelementptr inbounds %struct.ossl_provider_st, %struct.ossl_provider_st* %provider, i64 0, i32 21
  %3 = load i8*, i8** %operation_bits, align 8, !tbaa !29
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 %div
  %4 = load i8, i8* %arrayidx, align 1, !tbaa !68
  %and1126 = and i8 %4, %shl
  %cmp12 = icmp ne i8 %and1126, 0
  %conv13 = zext i1 %cmp12 to i32
  store i32 %conv13, i32* %result, align 4, !tbaa !23
  br label %if.end14

if.end14:                                         ; preds = %if.then8, %if.end5
  %5 = load i8*, i8** %opbits_lock, align 8, !tbaa !34
  %call16 = tail call i32 @CRYPTO_THREAD_unlock(i8* noundef %5) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.end14, %if.then
  %retval.0 = phi i32 [ 1, %if.end14 ], [ 0, %if.then ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define %struct.ossl_core_handle_st* @ossl_provider_get_parent(%struct.ossl_provider_st* nocapture noundef readonly %prov) local_unnamed_addr #8 {
entry:
  %handle = getelementptr inbounds %struct.ossl_provider_st, %struct.ossl_provider_st* %prov, i64 0, i32 24
  %0 = load %struct.ossl_core_handle_st*, %struct.ossl_core_handle_st** %handle, align 8, !tbaa !69
  ret %struct.ossl_core_handle_st* %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define i32 @ossl_provider_is_child(%struct.ossl_provider_st* nocapture noundef readonly %prov) local_unnamed_addr #8 {
entry:
  %ischild = getelementptr inbounds %struct.ossl_provider_st, %struct.ossl_provider_st* %prov, i64 0, i32 25
  %bf.load = load i8, i8* %ischild, align 8
  %bf.clear = and i8 %bf.load, 1
  %bf.cast = zext i8 %bf.clear to i32
  ret i32 %bf.cast
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define i32 @ossl_provider_set_child(%struct.ossl_provider_st* nocapture noundef %prov, %struct.ossl_core_handle_st* noundef %handle) local_unnamed_addr #9 {
entry:
  %handle1 = getelementptr inbounds %struct.ossl_provider_st, %struct.ossl_provider_st* %prov, i64 0, i32 24
  store %struct.ossl_core_handle_st* %handle, %struct.ossl_core_handle_st** %handle1, align 8, !tbaa !69
  %ischild = getelementptr inbounds %struct.ossl_provider_st, %struct.ossl_provider_st* %prov, i64 0, i32 25
  %bf.load = load i8, i8* %ischild, align 8
  %bf.set = or i8 %bf.load, 1
  store i8 %bf.set, i8* %ischild, align 8
  ret i32 1
}

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_provider_default_props_update(%struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef %props) local_unnamed_addr #0 {
entry:
  %call = tail call fastcc %struct.provider_store_st* @get_provider_store(%struct.ossl_lib_ctx_st* noundef %libctx) #14
  %cmp = icmp eq %struct.provider_store_st* %call, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %lock = getelementptr inbounds %struct.provider_store_st, %struct.provider_store_st* %call, i64 0, i32 4
  %0 = load i8*, i8** %lock, align 8, !tbaa !15
  %call1 = tail call i32 @CRYPTO_THREAD_read_lock(i8* noundef %0) #13
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %cleanup, label %if.end3

if.end3:                                          ; preds = %if.end
  %child_cbs = getelementptr inbounds %struct.provider_store_st, %struct.provider_store_st* %call, i64 0, i32 2
  %1 = load %struct.stack_st_OSSL_PROVIDER_CHILD_CB*, %struct.stack_st_OSSL_PROVIDER_CHILD_CB** %child_cbs, align 8, !tbaa !44
  %call4 = tail call fastcc i32 @sk_OSSL_PROVIDER_CHILD_CB_num(%struct.stack_st_OSSL_PROVIDER_CHILD_CB* noundef %1) #14
  %cmp524 = icmp sgt i32 %call4, 0
  br i1 %cmp524, label %for.body, label %for.end

for.body:                                         ; preds = %if.end3, %for.body
  %i.025 = phi i32 [ %inc, %for.body ], [ 0, %if.end3 ]
  %2 = load %struct.stack_st_OSSL_PROVIDER_CHILD_CB*, %struct.stack_st_OSSL_PROVIDER_CHILD_CB** %child_cbs, align 8, !tbaa !44
  %call7 = tail call fastcc %struct.OSSL_PROVIDER_CHILD_CB* @sk_OSSL_PROVIDER_CHILD_CB_value(%struct.stack_st_OSSL_PROVIDER_CHILD_CB* noundef %2, i32 noundef %i.025) #14
  %global_props_cb = getelementptr inbounds %struct.OSSL_PROVIDER_CHILD_CB, %struct.OSSL_PROVIDER_CHILD_CB* %call7, i64 0, i32 3
  %3 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %global_props_cb, align 8, !tbaa !70
  %cbdata = getelementptr inbounds %struct.OSSL_PROVIDER_CHILD_CB, %struct.OSSL_PROVIDER_CHILD_CB* %call7, i64 0, i32 4
  %4 = load i8*, i8** %cbdata, align 8, !tbaa !47
  %call8 = tail call i32 %3(i8* noundef %props, i8* noundef %4) #13
  %inc = add nuw nsw i32 %i.025, 1
  %exitcond.not = icmp eq i32 %inc, %call4
  br i1 %exitcond.not, label %for.end, label %for.body, !llvm.loop !71

for.end:                                          ; preds = %for.body, %if.end3
  %5 = load i8*, i8** %lock, align 8, !tbaa !15
  %call10 = tail call i32 @CRYPTO_THREAD_unlock(i8* noundef %5) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry, %for.end
  %retval.0 = phi i32 [ 1, %for.end ], [ 0, %entry ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @sk_OSSL_PROVIDER_CHILD_CB_num(%struct.stack_st_OSSL_PROVIDER_CHILD_CB* noundef %sk) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.stack_st_OSSL_PROVIDER_CHILD_CB* %sk to %struct.stack_st*
  %call = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %0) #13
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.OSSL_PROVIDER_CHILD_CB* @sk_OSSL_PROVIDER_CHILD_CB_value(%struct.stack_st_OSSL_PROVIDER_CHILD_CB* noundef %sk, i32 noundef %idx) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.stack_st_OSSL_PROVIDER_CHILD_CB* %sk to %struct.stack_st*
  %call = tail call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %0, i32 noundef %idx) #13
  %1 = bitcast i8* %call to %struct.OSSL_PROVIDER_CHILD_CB*
  ret %struct.OSSL_PROVIDER_CHILD_CB* %1
}

declare void @OPENSSL_sk_pop_free(%struct.stack_st* noundef, void (i8*)* noundef) local_unnamed_addr #1

declare i8* @ossl_lib_ctx_get_data(%struct.ossl_lib_ctx_st* noundef, i32 noundef, %struct.ossl_lib_ctx_method* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal i8* @provider_store_new(%struct.ossl_lib_ctx_st* noundef %ctx) #0 {
entry:
  %call = tail call i8* @CRYPTO_zalloc(i64 noundef 80, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 305) #13
  %cmp = icmp eq i8* %call, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %call1 = tail call fastcc %struct.stack_st_OSSL_PROVIDER* @sk_OSSL_PROVIDER_new() #14
  %providers = getelementptr inbounds i8, i8* %call, i64 8
  %0 = bitcast i8* %providers to %struct.stack_st_OSSL_PROVIDER**
  store %struct.stack_st_OSSL_PROVIDER* %call1, %struct.stack_st_OSSL_PROVIDER** %0, align 8, !tbaa !26
  %cmp2 = icmp eq %struct.stack_st_OSSL_PROVIDER* %call1, null
  br i1 %cmp2, label %if.then, label %lor.lhs.false3

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %call4 = tail call i8* @CRYPTO_THREAD_lock_new() #13
  %default_path_lock = getelementptr inbounds i8, i8* %call, i64 24
  %1 = bitcast i8* %default_path_lock to i8**
  store i8* %call4, i8** %1, align 8, !tbaa !51
  %cmp5 = icmp eq i8* %call4, null
  br i1 %cmp5, label %if.then, label %lor.lhs.false6

lor.lhs.false6:                                   ; preds = %lor.lhs.false3
  %call7 = tail call fastcc %struct.stack_st_OSSL_PROVIDER_CHILD_CB* @sk_OSSL_PROVIDER_CHILD_CB_new_null() #14
  %child_cbs = getelementptr inbounds i8, i8* %call, i64 16
  %2 = bitcast i8* %child_cbs to %struct.stack_st_OSSL_PROVIDER_CHILD_CB**
  store %struct.stack_st_OSSL_PROVIDER_CHILD_CB* %call7, %struct.stack_st_OSSL_PROVIDER_CHILD_CB** %2, align 8, !tbaa !44
  %cmp8 = icmp eq %struct.stack_st_OSSL_PROVIDER_CHILD_CB* %call7, null
  br i1 %cmp8, label %if.then, label %lor.lhs.false9

lor.lhs.false9:                                   ; preds = %lor.lhs.false6
  %call10 = tail call i8* @CRYPTO_THREAD_lock_new() #13
  %lock = getelementptr inbounds i8, i8* %call, i64 32
  %3 = bitcast i8* %lock to i8**
  store i8* %call10, i8** %3, align 8, !tbaa !15
  %cmp11 = icmp eq i8* %call10, null
  br i1 %cmp11, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false9, %lor.lhs.false6, %lor.lhs.false3, %lor.lhs.false, %entry
  tail call void @provider_store_free(i8* noundef %call) #14
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false9
  %libctx = bitcast i8* %call to %struct.ossl_lib_ctx_st**
  store %struct.ossl_lib_ctx_st* %ctx, %struct.ossl_lib_ctx_st** %libctx, align 8, !tbaa !58
  %4 = getelementptr inbounds i8, i8* %call, i64 72
  %bf.load = load i8, i8* %4, align 8
  %bf.set = or i8 %bf.load, 1
  store i8 %bf.set, i8* %4, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i8* [ null, %if.then ], [ %call, %if.end ]
  ret i8* %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal void @provider_store_free(i8* noundef %vstore) #0 {
entry:
  %cmp = icmp eq i8* %vstore, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %0 = getelementptr inbounds i8, i8* %vstore, i64 72
  %bf.load = load i8, i8* %0, align 8
  %bf.set = or i8 %bf.load, 2
  store i8 %bf.set, i8* %0, align 8
  %default_path = getelementptr inbounds i8, i8* %vstore, i64 40
  %1 = bitcast i8* %default_path to i8**
  %2 = load i8*, i8** %1, align 8, !tbaa !52
  tail call void @CRYPTO_free(i8* noundef %2, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 289) #13
  %providers = getelementptr inbounds i8, i8* %vstore, i64 8
  %3 = bitcast i8* %providers to %struct.stack_st_OSSL_PROVIDER**
  %4 = load %struct.stack_st_OSSL_PROVIDER*, %struct.stack_st_OSSL_PROVIDER** %3, align 8, !tbaa !26
  tail call fastcc void @sk_OSSL_PROVIDER_pop_free(%struct.stack_st_OSSL_PROVIDER* noundef %4) #14
  %child_cbs = getelementptr inbounds i8, i8* %vstore, i64 16
  %5 = bitcast i8* %child_cbs to %struct.stack_st_OSSL_PROVIDER_CHILD_CB**
  %6 = load %struct.stack_st_OSSL_PROVIDER_CHILD_CB*, %struct.stack_st_OSSL_PROVIDER_CHILD_CB** %5, align 8, !tbaa !44
  tail call fastcc void @sk_OSSL_PROVIDER_CHILD_CB_pop_free(%struct.stack_st_OSSL_PROVIDER_CHILD_CB* noundef %6) #14
  %default_path_lock = getelementptr inbounds i8, i8* %vstore, i64 24
  %7 = bitcast i8* %default_path_lock to i8**
  %8 = load i8*, i8** %7, align 8, !tbaa !51
  tail call void @CRYPTO_THREAD_lock_free(i8* noundef %8) #13
  %lock = getelementptr inbounds i8, i8* %vstore, i64 32
  %9 = bitcast i8* %lock to i8**
  %10 = load i8*, i8** %9, align 8, !tbaa !15
  tail call void @CRYPTO_THREAD_lock_free(i8* noundef %10) #13
  %numprovinfo = getelementptr inbounds i8, i8* %vstore, i64 56
  %11 = bitcast i8* %numprovinfo to i64*
  %12 = load i64, i64* %11, align 8, !tbaa !20
  %cmp118.not = icmp eq i64 %12, 0
  br i1 %cmp118.not, label %for.end, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %if.end
  %provinfo = getelementptr inbounds i8, i8* %vstore, i64 48
  %13 = bitcast i8* %provinfo to %struct.OSSL_PROVIDER_INFO**
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %i.019 = phi i64 [ 0, %for.body.lr.ph ], [ %inc, %for.body ]
  %14 = load %struct.OSSL_PROVIDER_INFO*, %struct.OSSL_PROVIDER_INFO** %13, align 8, !tbaa !19
  %arrayidx = getelementptr inbounds %struct.OSSL_PROVIDER_INFO, %struct.OSSL_PROVIDER_INFO* %14, i64 %i.019
  tail call void @ossl_provider_info_clear(%struct.OSSL_PROVIDER_INFO* noundef %arrayidx) #14
  %inc = add nuw i64 %i.019, 1
  %15 = load i64, i64* %11, align 8, !tbaa !20
  %cmp1 = icmp ult i64 %inc, %15
  br i1 %cmp1, label %for.body, label %for.end, !llvm.loop !72

for.end:                                          ; preds = %for.body, %if.end
  %provinfo2 = getelementptr inbounds i8, i8* %vstore, i64 48
  %16 = bitcast i8* %provinfo2 to i8**
  %17 = load i8*, i8** %16, align 8, !tbaa !19
  tail call void @CRYPTO_free(i8* noundef %17, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 299) #13
  tail call void @CRYPTO_free(i8* noundef nonnull %vstore, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 300) #13
  br label %cleanup

cleanup:                                          ; preds = %entry, %for.end
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.stack_st_OSSL_PROVIDER* @sk_OSSL_PROVIDER_new() unnamed_addr #0 {
entry:
  %call = tail call %struct.stack_st* @OPENSSL_sk_new(i32 (i8*, i8*)* noundef bitcast (i32 (%struct.ossl_provider_st**, %struct.ossl_provider_st**)* @ossl_provider_cmp to i32 (i8*, i8*)*)) #13
  %0 = bitcast %struct.stack_st* %call to %struct.stack_st_OSSL_PROVIDER*
  ret %struct.stack_st_OSSL_PROVIDER* %0
}

; Function Attrs: mustprogress nofree noinline nounwind readonly uwtable willreturn
define internal i32 @ossl_provider_cmp(%struct.ossl_provider_st** nocapture noundef readonly %a, %struct.ossl_provider_st** nocapture noundef readonly %b) #10 {
entry:
  %0 = load %struct.ossl_provider_st*, %struct.ossl_provider_st** %a, align 8, !tbaa !22
  %name = getelementptr inbounds %struct.ossl_provider_st, %struct.ossl_provider_st* %0, i64 0, i32 5
  %1 = load i8*, i8** %name, align 8, !tbaa !24
  %2 = load %struct.ossl_provider_st*, %struct.ossl_provider_st** %b, align 8, !tbaa !22
  %name1 = getelementptr inbounds %struct.ossl_provider_st, %struct.ossl_provider_st* %2, i64 0, i32 5
  %3 = load i8*, i8** %name1, align 8, !tbaa !24
  %call = tail call i32 @strcmp(i8* noundef %1, i8* noundef %3) #16
  ret i32 %call
}

declare i8* @CRYPTO_THREAD_lock_new() local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.stack_st_OSSL_PROVIDER_CHILD_CB* @sk_OSSL_PROVIDER_CHILD_CB_new_null() unnamed_addr #0 {
entry:
  %call = tail call %struct.stack_st* @OPENSSL_sk_new_null() #13
  %0 = bitcast %struct.stack_st* %call to %struct.stack_st_OSSL_PROVIDER_CHILD_CB*
  ret %struct.stack_st_OSSL_PROVIDER_CHILD_CB* %0
}

declare %struct.stack_st* @OPENSSL_sk_new(i32 (i8*, i8*)* noundef) local_unnamed_addr #1

declare %struct.stack_st* @OPENSSL_sk_new_null() local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @sk_OSSL_PROVIDER_pop_free(%struct.stack_st_OSSL_PROVIDER* noundef %sk) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.stack_st_OSSL_PROVIDER* %sk to %struct.stack_st*
  tail call void @OPENSSL_sk_pop_free(%struct.stack_st* noundef %0, void (i8*)* noundef bitcast (void (%struct.ossl_provider_st*)* @provider_deactivate_free to void (i8*)*)) #13
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @provider_deactivate_free(%struct.ossl_provider_st* noundef %prov) #0 {
entry:
  %0 = getelementptr %struct.ossl_provider_st, %struct.ossl_provider_st* %prov, i64 0, i32 0
  %bf.load = load i8, i8* %0, align 8
  %1 = and i8 %bf.load, 2
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = tail call i32 @ossl_provider_deactivate(%struct.ossl_provider_st* noundef nonnull %prov) #14
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  tail call void @ossl_provider_free(%struct.ossl_provider_st* noundef nonnull %prov) #14
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @sk_OSSL_PROVIDER_CHILD_CB_pop_free(%struct.stack_st_OSSL_PROVIDER_CHILD_CB* noundef %sk) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.stack_st_OSSL_PROVIDER_CHILD_CB* %sk to %struct.stack_st*
  tail call void @OPENSSL_sk_pop_free(%struct.stack_st* noundef %0, void (i8*)* noundef bitcast (void (%struct.OSSL_PROVIDER_CHILD_CB*)* @ossl_provider_child_cb_free to void (i8*)*)) #13
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @ossl_provider_child_cb_free(%struct.OSSL_PROVIDER_CHILD_CB* noundef %cb) #0 {
entry:
  %0 = bitcast %struct.OSSL_PROVIDER_CHILD_CB* %cb to i8*
  tail call void @CRYPTO_free(i8* noundef %0, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 240) #13
  ret void
}

declare i32 @OPENSSL_sk_find(%struct.stack_st* noundef, i8* noundef) local_unnamed_addr #1

declare i8* @OPENSSL_sk_value(%struct.stack_st* noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.stack_st_INFOPAIR* @sk_INFOPAIR_deep_copy(%struct.stack_st_INFOPAIR* noundef %sk) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.stack_st_INFOPAIR* %sk to %struct.stack_st*
  %call = tail call %struct.stack_st* @OPENSSL_sk_deep_copy(%struct.stack_st* noundef %0, i8* (i8*)* noundef bitcast (%struct.INFOPAIR* (%struct.INFOPAIR*)* @infopair_copy to i8* (i8*)*), void (i8*)* noundef bitcast (void (%struct.INFOPAIR*)* @infopair_free to void (i8*)*)) #13
  %1 = bitcast %struct.stack_st* %call to %struct.stack_st_INFOPAIR*
  ret %struct.stack_st_INFOPAIR* %1
}

; Function Attrs: noinline nounwind uwtable
define internal %struct.INFOPAIR* @infopair_copy(%struct.INFOPAIR* nocapture noundef readonly %src) #0 {
entry:
  %call = tail call i8* @CRYPTO_zalloc(i64 noundef 16, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 253) #13
  %0 = bitcast i8* %call to %struct.INFOPAIR*
  %cmp = icmp eq i8* %call, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %name = getelementptr inbounds %struct.INFOPAIR, %struct.INFOPAIR* %src, i64 0, i32 0
  %1 = load i8*, i8** %name, align 8, !tbaa !12
  %cmp1.not = icmp eq i8* %1, null
  br i1 %cmp1.not, label %if.end10, label %if.then2

if.then2:                                         ; preds = %if.end
  %call4 = tail call i8* @CRYPTO_strdup(i8* noundef nonnull %1, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 258) #13
  %name5 = bitcast i8* %call to i8**
  store i8* %call4, i8** %name5, align 8, !tbaa !12
  %cmp7 = icmp eq i8* %call4, null
  br i1 %cmp7, label %err, label %if.end10

if.end10:                                         ; preds = %if.then2, %if.end
  %value = getelementptr inbounds %struct.INFOPAIR, %struct.INFOPAIR* %src, i64 0, i32 1
  %2 = load i8*, i8** %value, align 8, !tbaa !14
  %cmp11.not = icmp eq i8* %2, null
  br i1 %cmp11.not, label %cleanup, label %if.then12

if.then12:                                        ; preds = %if.end10
  %call14 = tail call i8* @CRYPTO_strdup(i8* noundef nonnull %2, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 263) #13
  %value15 = getelementptr inbounds i8, i8* %call, i64 8
  %3 = bitcast i8* %value15 to i8**
  store i8* %call14, i8** %3, align 8, !tbaa !14
  %cmp17 = icmp eq i8* %call14, null
  br i1 %cmp17, label %if.then12.err_crit_edge, label %cleanup

if.then12.err_crit_edge:                          ; preds = %if.then12
  %name21.phi.trans.insert = bitcast i8* %call to i8**
  %.pre = load i8*, i8** %name21.phi.trans.insert, align 8, !tbaa !12
  br label %err

err:                                              ; preds = %if.then12.err_crit_edge, %if.then2
  %4 = phi i8* [ %.pre, %if.then12.err_crit_edge ], [ null, %if.then2 ]
  tail call void @CRYPTO_free(i8* noundef %4, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 269) #13
  tail call void @CRYPTO_free(i8* noundef nonnull %call, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 270) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %if.then12, %entry, %err
  %retval.0 = phi %struct.INFOPAIR* [ null, %err ], [ null, %entry ], [ %0, %if.then12 ], [ %0, %if.end10 ]
  ret %struct.INFOPAIR* %retval.0
}

declare %struct.stack_st* @OPENSSL_sk_deep_copy(%struct.stack_st* noundef, i8* (i8*)* noundef, void (i8*)* noundef) local_unnamed_addr #1

declare i32 @OPENSSL_sk_push(%struct.stack_st* noundef, i8* noundef) local_unnamed_addr #1

declare i8* @OPENSSL_sk_delete_ptr(%struct.stack_st* noundef, i8* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.stack_st_INFOPAIR* @sk_INFOPAIR_new_null() unnamed_addr #0 {
entry:
  %call = tail call %struct.stack_st* @OPENSSL_sk_new_null() #13
  %0 = bitcast %struct.stack_st* %call to %struct.stack_st_INFOPAIR*
  ret %struct.stack_st_INFOPAIR* %0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @sk_INFOPAIR_push(%struct.stack_st_INFOPAIR* noundef %sk, %struct.INFOPAIR* noundef %ptr) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.stack_st_INFOPAIR* %sk to %struct.stack_st*
  %1 = bitcast %struct.INFOPAIR* %ptr to i8*
  %call = tail call i32 @OPENSSL_sk_push(%struct.stack_st* noundef %0, i8* noundef %1) #13
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @provider_init(%struct.ossl_provider_st* noundef %prov) unnamed_addr #0 {
entry:
  %provider_dispatch = alloca %struct.ossl_dispatch_st*, align 8
  %tmp_provctx = alloca i8*, align 8
  %0 = bitcast %struct.ossl_dispatch_st** %provider_dispatch to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #15
  store %struct.ossl_dispatch_st* null, %struct.ossl_dispatch_st** %provider_dispatch, align 8, !tbaa !22
  %1 = bitcast i8** %tmp_provctx to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #15
  store i8* null, i8** %tmp_provctx, align 8, !tbaa !22
  %2 = getelementptr %struct.ossl_provider_st, %struct.ossl_provider_st* %prov, i64 0, i32 0
  %bf.load = load i8, i8* %2, align 8
  %bf.clear = and i8 %bf.load, 1
  %tobool.not = icmp eq i8 %bf.clear, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #13
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 825, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.provider_init, i64 0, i64 0)) #13
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 15, i32 noundef 786691, i8* noundef null) #13
  br label %cleanup150

if.end:                                           ; preds = %entry
  %init_function = getelementptr inbounds %struct.ossl_provider_st, %struct.ossl_provider_st* %prov, i64 0, i32 8
  %3 = load i32 (%struct.ossl_core_handle_st*, %struct.ossl_dispatch_st*, %struct.ossl_dispatch_st**, i8**)*, i32 (%struct.ossl_core_handle_st*, %struct.ossl_dispatch_st*, %struct.ossl_dispatch_st**, i8**)** %init_function, align 8, !tbaa !42
  %cmp1 = icmp eq i32 (%struct.ossl_core_handle_st*, %struct.ossl_dispatch_st*, %struct.ossl_dispatch_st**, i8**)* %3, null
  br i1 %cmp1, label %if.then2, label %lor.lhs.false72

if.then2:                                         ; preds = %if.end
  %module = getelementptr inbounds %struct.ossl_provider_st, %struct.ossl_provider_st* %prov, i64 0, i32 7
  %4 = load %struct.dso_st*, %struct.dso_st** %module, align 8, !tbaa !31
  %cmp3 = icmp eq %struct.dso_st* %4, null
  br i1 %cmp3, label %if.then4, label %if.then64

if.then4:                                         ; preds = %if.then2
  %call = tail call %struct.dso_st* @DSO_new() #13
  store %struct.dso_st* %call, %struct.dso_st** %module, align 8, !tbaa !31
  %cmp6 = icmp eq %struct.dso_st* %call, null
  br i1 %cmp6, label %cleanup150, label %if.end8

if.end8:                                          ; preds = %if.then4
  %libctx = getelementptr inbounds %struct.ossl_provider_st, %struct.ossl_provider_st* %prov, i64 0, i32 10
  %5 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** %libctx, align 8, !tbaa !40
  %call9 = tail call fastcc %struct.provider_store_st* @get_provider_store(%struct.ossl_lib_ctx_st* noundef %5) #14
  %cmp10 = icmp eq %struct.provider_store_st* %call9, null
  br i1 %cmp10, label %cleanup150, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end8
  %default_path_lock = getelementptr inbounds %struct.provider_store_st, %struct.provider_store_st* %call9, i64 0, i32 3
  %6 = load i8*, i8** %default_path_lock, align 8, !tbaa !51
  %call11 = tail call i32 @CRYPTO_THREAD_read_lock(i8* noundef %6) #13
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %cleanup150, label %if.end14

if.end14:                                         ; preds = %lor.lhs.false
  %default_path = getelementptr inbounds %struct.provider_store_st, %struct.provider_store_st* %call9, i64 0, i32 5
  %7 = load i8*, i8** %default_path, align 8, !tbaa !52
  %cmp15.not = icmp eq i8* %7, null
  br i1 %cmp15.not, label %if.then28, label %if.then16

if.then16:                                        ; preds = %if.end14
  %call18 = tail call i8* @CRYPTO_strdup(i8* noundef nonnull %7, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 855) #13
  %8 = load i8*, i8** %default_path_lock, align 8, !tbaa !51
  %call20 = tail call i32 @CRYPTO_THREAD_unlock(i8* noundef %8) #13
  %cmp21 = icmp eq i8* %call18, null
  br i1 %cmp21, label %if.then22, label %if.end33

if.then22:                                        ; preds = %if.then16
  tail call void @ERR_new() #13
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 858, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.provider_init, i64 0, i64 0)) #13
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 15, i32 noundef 786688, i8* noundef null) #13
  br label %cleanup150

if.then28:                                        ; preds = %if.end14
  %9 = load i8*, i8** %default_path_lock, align 8, !tbaa !51
  %call25 = tail call i32 @CRYPTO_THREAD_unlock(i8* noundef %9) #13
  %call29 = tail call i8* @ossl_safe_getenv(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0)) #13
  %cmp30 = icmp eq i8* %call29, null
  %spec.store.select = select i1 %cmp30, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i8* %call29
  br label %if.end33

if.end33:                                         ; preds = %if.then16, %if.then28
  %allocated_load_dir.0244 = phi i8* [ null, %if.then28 ], [ %call18, %if.then16 ]
  %load_dir.1 = phi i8* [ %spec.store.select, %if.then28 ], [ %call18, %if.then16 ]
  %10 = load %struct.dso_st*, %struct.dso_st** %module, align 8, !tbaa !31
  %call35 = tail call i64 @DSO_ctrl(%struct.dso_st* noundef %10, i32 noundef 2, i64 noundef 2, i8* noundef null) #13
  %path = getelementptr inbounds %struct.ossl_provider_st, %struct.ossl_provider_st* %prov, i64 0, i32 6
  %11 = load i8*, i8** %path, align 8, !tbaa !32
  %cmp36 = icmp eq i8* %11, null
  br i1 %cmp36, label %if.end40, label %if.end45

if.end40:                                         ; preds = %if.end33
  %12 = load %struct.dso_st*, %struct.dso_st** %module, align 8, !tbaa !31
  %name = getelementptr inbounds %struct.ossl_provider_st, %struct.ossl_provider_st* %prov, i64 0, i32 5
  %13 = load i8*, i8** %name, align 8, !tbaa !24
  %call39 = tail call i8* @DSO_convert_filename(%struct.dso_st* noundef %12, i8* noundef %13) #13
  %cmp41.not = icmp eq i8* %call39, null
  br i1 %cmp41.not, label %if.then51, label %if.end45

if.end45:                                         ; preds = %if.end33, %if.end40
  %module_path.0251 = phi i8* [ %call39, %if.end40 ], [ %11, %if.end33 ]
  %allocated_path.0249 = phi i8* [ %call39, %if.end40 ], [ null, %if.end33 ]
  %14 = load %struct.dso_st*, %struct.dso_st** %module, align 8, !tbaa !31
  %call44 = tail call i8* @DSO_merge(%struct.dso_st* noundef %14, i8* noundef nonnull %module_path.0251, i8* noundef %load_dir.1) #13
  %cmp46 = icmp eq i8* %call44, null
  br i1 %cmp46, label %if.then51, label %lor.lhs.false47

lor.lhs.false47:                                  ; preds = %if.end45
  %15 = load %struct.dso_st*, %struct.dso_st** %module, align 8, !tbaa !31
  %call49 = tail call %struct.dso_st* @DSO_load(%struct.dso_st* noundef %15, i8* noundef nonnull %call44, %struct.dso_meth_st* noundef null, i32 noundef 0) #13
  %cmp50 = icmp eq %struct.dso_st* %call49, null
  br i1 %cmp50, label %if.then51, label %if.end61

if.then51:                                        ; preds = %if.end40, %lor.lhs.false47, %if.end45
  %merged_path.0258 = phi i8* [ %call44, %lor.lhs.false47 ], [ null, %if.end45 ], [ null, %if.end40 ]
  %allocated_path.0250256 = phi i8* [ %allocated_path.0249, %lor.lhs.false47 ], [ %allocated_path.0249, %if.end45 ], [ null, %if.end40 ]
  %16 = load %struct.dso_st*, %struct.dso_st** %module, align 8, !tbaa !31
  %call53 = tail call i32 @DSO_free(%struct.dso_st* noundef %16) #13
  store %struct.dso_st* null, %struct.dso_st** %module, align 8, !tbaa !31
  br label %if.end61

if.end61:                                         ; preds = %if.then51, %lor.lhs.false47
  %merged_path.0257 = phi i8* [ %merged_path.0258, %if.then51 ], [ %call44, %lor.lhs.false47 ]
  %allocated_path.0250255 = phi i8* [ %allocated_path.0250256, %if.then51 ], [ %allocated_path.0249, %lor.lhs.false47 ]
  tail call void @CRYPTO_free(i8* noundef %merged_path.0257, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 888) #13
  tail call void @CRYPTO_free(i8* noundef %allocated_path.0250255, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 889) #13
  tail call void @CRYPTO_free(i8* noundef %allocated_load_dir.0244, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 890) #13
  %.pr = load %struct.dso_st*, %struct.dso_st** %module, align 8, !tbaa !31
  %cmp63.not = icmp eq %struct.dso_st* %.pr, null
  br i1 %cmp63.not, label %if.end69thread-pre-split, label %if.then64

if.then64:                                        ; preds = %if.then2, %if.end61
  %17 = phi %struct.dso_st* [ %.pr, %if.end61 ], [ %4, %if.then2 ]
  %call66 = tail call void ()* @DSO_bind_func(%struct.dso_st* noundef nonnull %17, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0)) #13
  %18 = bitcast i32 (%struct.ossl_core_handle_st*, %struct.ossl_dispatch_st*, %struct.ossl_dispatch_st**, i8**)** %init_function to void ()**
  store void ()* %call66, void ()** %18, align 8, !tbaa !42
  %19 = bitcast void ()* %call66 to i32 (%struct.ossl_core_handle_st*, %struct.ossl_dispatch_st*, %struct.ossl_dispatch_st**, i8**)*
  br label %if.end69

if.end69thread-pre-split:                         ; preds = %if.end61
  %.pr262 = load i32 (%struct.ossl_core_handle_st*, %struct.ossl_dispatch_st*, %struct.ossl_dispatch_st**, i8**)*, i32 (%struct.ossl_core_handle_st*, %struct.ossl_dispatch_st*, %struct.ossl_dispatch_st**, i8**)** %init_function, align 8, !tbaa !42
  br label %if.end69

if.end69:                                         ; preds = %if.end69thread-pre-split, %if.then64
  %20 = phi i32 (%struct.ossl_core_handle_st*, %struct.ossl_dispatch_st*, %struct.ossl_dispatch_st**, i8**)* [ %.pr262, %if.end69thread-pre-split ], [ %19, %if.then64 ]
  %cmp71 = icmp eq i32 (%struct.ossl_core_handle_st*, %struct.ossl_dispatch_st*, %struct.ossl_dispatch_st**, i8**)* %20, null
  br i1 %cmp71, label %if.then76, label %lor.lhs.false72

lor.lhs.false72:                                  ; preds = %if.end, %if.end69
  %21 = phi i32 (%struct.ossl_core_handle_st*, %struct.ossl_dispatch_st*, %struct.ossl_dispatch_st**, i8**)* [ %20, %if.end69 ], [ %3, %if.end ]
  %22 = bitcast %struct.ossl_provider_st* %prov to %struct.ossl_core_handle_st*
  %call74 = call i32 %21(%struct.ossl_core_handle_st* noundef %22, %struct.ossl_dispatch_st* noundef getelementptr inbounds ([48 x %struct.ossl_dispatch_st], [48 x %struct.ossl_dispatch_st]* @core_dispatch_, i64 0, i64 0), %struct.ossl_dispatch_st** noundef nonnull %provider_dispatch, i8** noundef nonnull %tmp_provctx) #13
  %tobool75.not = icmp eq i32 %call74, 0
  br i1 %tobool75.not, label %if.then76, label %if.end78

if.then76:                                        ; preds = %lor.lhs.false72, %if.end69
  call void @ERR_new() #13
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 903, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.provider_init, i64 0, i64 0)) #13
  %name77 = getelementptr inbounds %struct.ossl_provider_st, %struct.ossl_provider_st* %prov, i64 0, i32 5
  %23 = load i8*, i8** %name77, align 8, !tbaa !24
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 15, i32 noundef 786693, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* noundef %23) #13
  br label %cleanup150

if.end78:                                         ; preds = %lor.lhs.false72
  %24 = load i8*, i8** %tmp_provctx, align 8, !tbaa !22
  %provctx = getelementptr inbounds %struct.ossl_provider_st, %struct.ossl_provider_st* %prov, i64 0, i32 26
  store i8* %24, i8** %provctx, align 8, !tbaa !50
  %25 = load %struct.ossl_dispatch_st*, %struct.ossl_dispatch_st** %provider_dispatch, align 8, !tbaa !22
  %dispatch = getelementptr inbounds %struct.ossl_provider_st, %struct.ossl_provider_st* %prov, i64 0, i32 27
  store %struct.ossl_dispatch_st* %25, %struct.ossl_dispatch_st** %dispatch, align 8, !tbaa !60
  %unquery_operation = getelementptr inbounds %struct.ossl_provider_st, %struct.ossl_provider_st* %prov, i64 0, i32 20
  %query_operation = getelementptr inbounds %struct.ossl_provider_st, %struct.ossl_provider_st* %prov, i64 0, i32 19
  %get_capabilities = getelementptr inbounds %struct.ossl_provider_st, %struct.ossl_provider_st* %prov, i64 0, i32 17
  %self_test = getelementptr inbounds %struct.ossl_provider_st, %struct.ossl_provider_st* %prov, i64 0, i32 18
  %get_params = getelementptr inbounds %struct.ossl_provider_st, %struct.ossl_provider_st* %prov, i64 0, i32 16
  %gettable_params = getelementptr inbounds %struct.ossl_provider_st, %struct.ossl_provider_st* %prov, i64 0, i32 15
  %teardown = getelementptr inbounds %struct.ossl_provider_st, %struct.ossl_provider_st* %prov, i64 0, i32 14
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end78
  %26 = phi %struct.ossl_dispatch_st* [ %25, %if.end78 ], [ %incdec.ptr, %for.inc ]
  %p_get_reason_strings.0 = phi %struct.ossl_item_st* (i8*)* [ null, %if.end78 ], [ %p_get_reason_strings.1, %for.inc ]
  %function_id = getelementptr inbounds %struct.ossl_dispatch_st, %struct.ossl_dispatch_st* %26, i64 0, i32 0
  %27 = load i32, i32* %function_id, align 8, !tbaa !73
  switch i32 %27, label %for.inc [
    i32 0, label %for.end
    i32 1024, label %sw.bb
    i32 1025, label %sw.bb82
    i32 1026, label %sw.bb84
    i32 1031, label %sw.bb86
    i32 1030, label %sw.bb88
    i32 1027, label %sw.bb90
    i32 1028, label %sw.bb92
    i32 1029, label %sw.bb94
  ]

sw.bb:                                            ; preds = %for.cond
  %call81 = call fastcc void (i8*)* @OSSL_FUNC_provider_teardown(%struct.ossl_dispatch_st* noundef nonnull %26) #14
  store void (i8*)* %call81, void (i8*)** %teardown, align 8, !tbaa !49
  br label %for.inc

sw.bb82:                                          ; preds = %for.cond
  %call83 = call fastcc %struct.ossl_param_st* (i8*)* @OSSL_FUNC_provider_gettable_params(%struct.ossl_dispatch_st* noundef nonnull %26) #14
  store %struct.ossl_param_st* (i8*)* %call83, %struct.ossl_param_st* (i8*)** %gettable_params, align 8, !tbaa !61
  br label %for.inc

sw.bb84:                                          ; preds = %for.cond
  %call85 = call fastcc i32 (i8*, %struct.ossl_param_st*)* @OSSL_FUNC_provider_get_params(%struct.ossl_dispatch_st* noundef nonnull %26) #14
  store i32 (i8*, %struct.ossl_param_st*)* %call85, i32 (i8*, %struct.ossl_param_st*)** %get_params, align 8, !tbaa !62
  br label %for.inc

sw.bb86:                                          ; preds = %for.cond
  %call87 = call fastcc i32 (i8*)* @OSSL_FUNC_provider_self_test(%struct.ossl_dispatch_st* noundef nonnull %26) #14
  store i32 (i8*)* %call87, i32 (i8*)** %self_test, align 8, !tbaa !63
  br label %for.inc

sw.bb88:                                          ; preds = %for.cond
  %call89 = call fastcc i32 (i8*, i8*, i32 (%struct.ossl_param_st*, i8*)*, i8*)* @OSSL_FUNC_provider_get_capabilities(%struct.ossl_dispatch_st* noundef nonnull %26) #14
  store i32 (i8*, i8*, i32 (%struct.ossl_param_st*, i8*)*, i8*)* %call89, i32 (i8*, i8*, i32 (%struct.ossl_param_st*, i8*)*, i8*)** %get_capabilities, align 8, !tbaa !64
  br label %for.inc

sw.bb90:                                          ; preds = %for.cond
  %call91 = call fastcc %struct.ossl_algorithm_st* (i8*, i32, i32*)* @OSSL_FUNC_provider_query_operation(%struct.ossl_dispatch_st* noundef nonnull %26) #14
  store %struct.ossl_algorithm_st* (i8*, i32, i32*)* %call91, %struct.ossl_algorithm_st* (i8*, i32, i32*)** %query_operation, align 8, !tbaa !65
  br label %for.inc

sw.bb92:                                          ; preds = %for.cond
  %call93 = call fastcc void (i8*, i32, %struct.ossl_algorithm_st*)* @OSSL_FUNC_provider_unquery_operation(%struct.ossl_dispatch_st* noundef nonnull %26) #14
  store void (i8*, i32, %struct.ossl_algorithm_st*)* %call93, void (i8*, i32, %struct.ossl_algorithm_st*)** %unquery_operation, align 8, !tbaa !66
  br label %for.inc

sw.bb94:                                          ; preds = %for.cond
  %call95 = call fastcc %struct.ossl_item_st* (i8*)* @OSSL_FUNC_provider_get_reason_strings(%struct.ossl_dispatch_st* noundef nonnull %26) #14
  br label %for.inc

for.inc:                                          ; preds = %for.cond, %sw.bb, %sw.bb82, %sw.bb84, %sw.bb86, %sw.bb88, %sw.bb90, %sw.bb92, %sw.bb94
  %p_get_reason_strings.1 = phi %struct.ossl_item_st* (i8*)* [ %call95, %sw.bb94 ], [ %p_get_reason_strings.0, %sw.bb92 ], [ %p_get_reason_strings.0, %sw.bb90 ], [ %p_get_reason_strings.0, %sw.bb88 ], [ %p_get_reason_strings.0, %sw.bb86 ], [ %p_get_reason_strings.0, %sw.bb84 ], [ %p_get_reason_strings.0, %sw.bb82 ], [ %p_get_reason_strings.0, %sw.bb ], [ %p_get_reason_strings.0, %for.cond ]
  %incdec.ptr = getelementptr inbounds %struct.ossl_dispatch_st, %struct.ossl_dispatch_st* %26, i64 1
  store %struct.ossl_dispatch_st* %incdec.ptr, %struct.ossl_dispatch_st** %provider_dispatch, align 8, !tbaa !22
  br label %for.cond, !llvm.loop !75

for.end:                                          ; preds = %for.cond
  %cmp96.not = icmp eq %struct.ossl_item_st* (i8*)* %p_get_reason_strings.0, null
  br i1 %cmp96.not, label %if.end147, label %if.then97

if.then97:                                        ; preds = %for.end
  %call99 = call %struct.ossl_item_st* %p_get_reason_strings.0(i8* noundef %24) #13
  %id267 = getelementptr inbounds %struct.ossl_item_st, %struct.ossl_item_st* %call99, i64 0, i32 0
  %28 = load i32, i32* %id267, align 8, !tbaa !76
  %cmp100.not268 = icmp eq i32 %28, 0
  br i1 %cmp100.not268, label %while.end, label %while.body

while.body:                                       ; preds = %if.then97, %if.end107
  %29 = phi i32 [ %30, %if.end107 ], [ %28, %if.then97 ]
  %cnt.0269 = phi i64 [ %inc, %if.end107 ], [ 0, %if.then97 ]
  %conv = zext i32 %29 to i64
  %call103 = call fastcc i32 @ERR_GET_LIB(i64 noundef %conv) #14
  %cmp104.not = icmp eq i32 %call103, 0
  br i1 %cmp104.not, label %if.end107, label %cleanup150

if.end107:                                        ; preds = %while.body
  %inc = add i64 %cnt.0269, 1
  %id = getelementptr inbounds %struct.ossl_item_st, %struct.ossl_item_st* %call99, i64 %inc, i32 0
  %30 = load i32, i32* %id, align 8, !tbaa !76
  %cmp100.not = icmp eq i32 %30, 0
  br i1 %cmp100.not, label %while.end, label %while.body, !llvm.loop !78

while.end:                                        ; preds = %if.end107, %if.then97
  %cnt.0.lcssa = phi i64 [ 0, %if.then97 ], [ %inc, %if.end107 ]
  %add = shl i64 %cnt.0.lcssa, 4
  %mul = add i64 %add, 32
  %call109 = call i8* @CRYPTO_zalloc(i64 noundef %mul, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 974) #13
  %error_strings = getelementptr inbounds %struct.ossl_provider_st, %struct.ossl_provider_st* %prov, i64 0, i32 13
  %31 = bitcast %struct.ERR_string_data_st** %error_strings to i8**
  store i8* %call109, i8** %31, align 8, !tbaa !27
  %cmp111 = icmp eq i8* %call109, null
  %32 = bitcast i8* %call109 to %struct.ERR_string_data_st*
  br i1 %cmp111, label %cleanup150, label %if.end114

if.end114:                                        ; preds = %while.end
  %error_lib = getelementptr inbounds %struct.ossl_provider_st, %struct.ossl_provider_st* %prov, i64 0, i32 12
  %33 = load i32, i32* %error_lib, align 8, !tbaa !28
  %34 = shl i32 %33, 23
  %35 = and i32 %34, 2139095040
  %shl = zext i32 %35 to i64
  %error = bitcast i8* %call109 to i64*
  store i64 %shl, i64* %error, align 8, !tbaa !79
  %name118 = getelementptr inbounds %struct.ossl_provider_st, %struct.ossl_provider_st* %prov, i64 0, i32 5
  %36 = load i8*, i8** %name118, align 8, !tbaa !24
  %string = getelementptr inbounds i8, i8* %call109, i64 8
  %37 = bitcast i8* %string to i8**
  store i8* %36, i8** %37, align 8, !tbaa !81
  %cmp122.not270 = icmp eq i64 %cnt.0.lcssa, -1
  br i1 %cmp122.not270, label %cleanup142, label %for.body124.preheader

for.body124.preheader:                            ; preds = %if.end114
  %38 = add i64 %cnt.0.lcssa, 2
  %umax = call i64 @llvm.umax.i64(i64 %38, i64 2)
  %39 = add i64 %umax, -1
  %xtraiter = and i64 %39, 1
  %40 = icmp ult i64 %38, 3
  br i1 %40, label %cleanup142.loopexit.unr-lcssa, label %for.body124.preheader.new

for.body124.preheader.new:                        ; preds = %for.body124.preheader
  %unroll_iter = and i64 %39, -2
  br label %for.body124

for.body124:                                      ; preds = %for.body124, %for.body124.preheader.new
  %cnt2.0271 = phi i64 [ 1, %for.body124.preheader.new ], [ %inc137.1, %for.body124 ]
  %niter = phi i64 [ 0, %for.body124.preheader.new ], [ %niter.next.1, %for.body124 ]
  %sub = add nsw i64 %cnt2.0271, -1
  %id126 = getelementptr inbounds %struct.ossl_item_st, %struct.ossl_item_st* %call99, i64 %sub, i32 0
  %41 = load i32, i32* %id126, align 8, !tbaa !76
  %conv127 = sext i32 %41 to i64
  %error130 = getelementptr inbounds %struct.ERR_string_data_st, %struct.ERR_string_data_st* %32, i64 %cnt2.0271, i32 0
  store i64 %conv127, i64* %error130, align 8, !tbaa !79
  %ptr = getelementptr inbounds %struct.ossl_item_st, %struct.ossl_item_st* %call99, i64 %sub, i32 1
  %42 = load i8*, i8** %ptr, align 8, !tbaa !82
  %string135 = getelementptr inbounds %struct.ERR_string_data_st, %struct.ERR_string_data_st* %32, i64 %cnt2.0271, i32 1
  store i8* %42, i8** %string135, align 8, !tbaa !81
  %inc137 = add nuw i64 %cnt2.0271, 1
  %id126.1 = getelementptr inbounds %struct.ossl_item_st, %struct.ossl_item_st* %call99, i64 %cnt2.0271, i32 0
  %43 = load i32, i32* %id126.1, align 8, !tbaa !76
  %conv127.1 = sext i32 %43 to i64
  %error130.1 = getelementptr inbounds %struct.ERR_string_data_st, %struct.ERR_string_data_st* %32, i64 %inc137, i32 0
  store i64 %conv127.1, i64* %error130.1, align 8, !tbaa !79
  %ptr.1 = getelementptr inbounds %struct.ossl_item_st, %struct.ossl_item_st* %call99, i64 %cnt2.0271, i32 1
  %44 = load i8*, i8** %ptr.1, align 8, !tbaa !82
  %string135.1 = getelementptr inbounds %struct.ERR_string_data_st, %struct.ERR_string_data_st* %32, i64 %inc137, i32 1
  store i8* %44, i8** %string135.1, align 8, !tbaa !81
  %inc137.1 = add nuw i64 %cnt2.0271, 2
  %niter.next.1 = add nuw i64 %niter, 2
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %cleanup142.loopexit.unr-lcssa, label %for.body124, !llvm.loop !83

cleanup142.loopexit.unr-lcssa:                    ; preds = %for.body124, %for.body124.preheader
  %cnt2.0271.unr = phi i64 [ 1, %for.body124.preheader ], [ %inc137.1, %for.body124 ]
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %cleanup142, label %for.body124.epil

for.body124.epil:                                 ; preds = %cleanup142.loopexit.unr-lcssa
  %sub.epil = add i64 %cnt2.0271.unr, -1
  %id126.epil = getelementptr inbounds %struct.ossl_item_st, %struct.ossl_item_st* %call99, i64 %sub.epil, i32 0
  %45 = load i32, i32* %id126.epil, align 8, !tbaa !76
  %conv127.epil = sext i32 %45 to i64
  %error130.epil = getelementptr inbounds %struct.ERR_string_data_st, %struct.ERR_string_data_st* %32, i64 %cnt2.0271.unr, i32 0
  store i64 %conv127.epil, i64* %error130.epil, align 8, !tbaa !79
  %ptr.epil = getelementptr inbounds %struct.ossl_item_st, %struct.ossl_item_st* %call99, i64 %sub.epil, i32 1
  %46 = load i8*, i8** %ptr.epil, align 8, !tbaa !82
  %string135.epil = getelementptr inbounds %struct.ERR_string_data_st, %struct.ERR_string_data_st* %32, i64 %cnt2.0271.unr, i32 1
  store i8* %46, i8** %string135.epil, align 8, !tbaa !81
  br label %cleanup142

cleanup142:                                       ; preds = %for.body124.epil, %cleanup142.loopexit.unr-lcssa, %if.end114
  %call141 = call i32 @ERR_load_strings(i32 noundef %33, %struct.ERR_string_data_st* noundef nonnull %32) #13
  br label %if.end147

if.end147:                                        ; preds = %cleanup142, %for.end
  %bf.load148 = load i8, i8* %2, align 8
  %bf.set = or i8 %bf.load148, 1
  store i8 %bf.set, i8* %2, align 8
  br label %cleanup150

cleanup150:                                       ; preds = %while.body, %while.end, %if.end8, %lor.lhs.false, %if.then4, %if.then22, %if.then, %if.then76, %if.end147
  %ok.0 = phi i32 [ 0, %if.then76 ], [ 1, %if.end147 ], [ 0, %if.then ], [ 0, %if.then22 ], [ 0, %if.then4 ], [ 0, %lor.lhs.false ], [ 0, %if.end8 ], [ 0, %while.end ], [ 0, %while.body ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #15
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #15
  ret i32 %ok.0
}

declare %struct.dso_st* @DSO_new() local_unnamed_addr #1

declare i8* @ossl_safe_getenv(i8* noundef) local_unnamed_addr #1

declare i64 @DSO_ctrl(%struct.dso_st* noundef, i32 noundef, i64 noundef, i8* noundef) local_unnamed_addr #1

declare i8* @DSO_convert_filename(%struct.dso_st* noundef, i8* noundef) local_unnamed_addr #1

declare i8* @DSO_merge(%struct.dso_st* noundef, i8* noundef, i8* noundef) local_unnamed_addr #1

declare %struct.dso_st* @DSO_load(%struct.dso_st* noundef, i8* noundef, %struct.dso_meth_st* noundef, i32 noundef) local_unnamed_addr #1

declare void ()* @DSO_bind_func(%struct.dso_st* noundef, i8* noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal fastcc void (i8*)* @OSSL_FUNC_provider_teardown(%struct.ossl_dispatch_st* nocapture noundef readonly %opf) unnamed_addr #8 {
entry:
  %function = getelementptr inbounds %struct.ossl_dispatch_st, %struct.ossl_dispatch_st* %opf, i64 0, i32 1
  %0 = bitcast void ()** %function to void (i8*)**
  %1 = load void (i8*)*, void (i8*)** %0, align 8, !tbaa !84
  ret void (i8*)* %1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal fastcc %struct.ossl_param_st* (i8*)* @OSSL_FUNC_provider_gettable_params(%struct.ossl_dispatch_st* nocapture noundef readonly %opf) unnamed_addr #8 {
entry:
  %function = getelementptr inbounds %struct.ossl_dispatch_st, %struct.ossl_dispatch_st* %opf, i64 0, i32 1
  %0 = bitcast void ()** %function to %struct.ossl_param_st* (i8*)**
  %1 = load %struct.ossl_param_st* (i8*)*, %struct.ossl_param_st* (i8*)** %0, align 8, !tbaa !84
  ret %struct.ossl_param_st* (i8*)* %1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal fastcc i32 (i8*, %struct.ossl_param_st*)* @OSSL_FUNC_provider_get_params(%struct.ossl_dispatch_st* nocapture noundef readonly %opf) unnamed_addr #8 {
entry:
  %function = getelementptr inbounds %struct.ossl_dispatch_st, %struct.ossl_dispatch_st* %opf, i64 0, i32 1
  %0 = bitcast void ()** %function to i32 (i8*, %struct.ossl_param_st*)**
  %1 = load i32 (i8*, %struct.ossl_param_st*)*, i32 (i8*, %struct.ossl_param_st*)** %0, align 8, !tbaa !84
  ret i32 (i8*, %struct.ossl_param_st*)* %1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal fastcc i32 (i8*)* @OSSL_FUNC_provider_self_test(%struct.ossl_dispatch_st* nocapture noundef readonly %opf) unnamed_addr #8 {
entry:
  %function = getelementptr inbounds %struct.ossl_dispatch_st, %struct.ossl_dispatch_st* %opf, i64 0, i32 1
  %0 = bitcast void ()** %function to i32 (i8*)**
  %1 = load i32 (i8*)*, i32 (i8*)** %0, align 8, !tbaa !84
  ret i32 (i8*)* %1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal fastcc i32 (i8*, i8*, i32 (%struct.ossl_param_st*, i8*)*, i8*)* @OSSL_FUNC_provider_get_capabilities(%struct.ossl_dispatch_st* nocapture noundef readonly %opf) unnamed_addr #8 {
entry:
  %function = getelementptr inbounds %struct.ossl_dispatch_st, %struct.ossl_dispatch_st* %opf, i64 0, i32 1
  %0 = bitcast void ()** %function to i32 (i8*, i8*, i32 (%struct.ossl_param_st*, i8*)*, i8*)**
  %1 = load i32 (i8*, i8*, i32 (%struct.ossl_param_st*, i8*)*, i8*)*, i32 (i8*, i8*, i32 (%struct.ossl_param_st*, i8*)*, i8*)** %0, align 8, !tbaa !84
  ret i32 (i8*, i8*, i32 (%struct.ossl_param_st*, i8*)*, i8*)* %1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal fastcc %struct.ossl_algorithm_st* (i8*, i32, i32*)* @OSSL_FUNC_provider_query_operation(%struct.ossl_dispatch_st* nocapture noundef readonly %opf) unnamed_addr #8 {
entry:
  %function = getelementptr inbounds %struct.ossl_dispatch_st, %struct.ossl_dispatch_st* %opf, i64 0, i32 1
  %0 = bitcast void ()** %function to %struct.ossl_algorithm_st* (i8*, i32, i32*)**
  %1 = load %struct.ossl_algorithm_st* (i8*, i32, i32*)*, %struct.ossl_algorithm_st* (i8*, i32, i32*)** %0, align 8, !tbaa !84
  ret %struct.ossl_algorithm_st* (i8*, i32, i32*)* %1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal fastcc void (i8*, i32, %struct.ossl_algorithm_st*)* @OSSL_FUNC_provider_unquery_operation(%struct.ossl_dispatch_st* nocapture noundef readonly %opf) unnamed_addr #8 {
entry:
  %function = getelementptr inbounds %struct.ossl_dispatch_st, %struct.ossl_dispatch_st* %opf, i64 0, i32 1
  %0 = bitcast void ()** %function to void (i8*, i32, %struct.ossl_algorithm_st*)**
  %1 = load void (i8*, i32, %struct.ossl_algorithm_st*)*, void (i8*, i32, %struct.ossl_algorithm_st*)** %0, align 8, !tbaa !84
  ret void (i8*, i32, %struct.ossl_algorithm_st*)* %1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal fastcc %struct.ossl_item_st* (i8*)* @OSSL_FUNC_provider_get_reason_strings(%struct.ossl_dispatch_st* nocapture noundef readonly %opf) unnamed_addr #8 {
entry:
  %function = getelementptr inbounds %struct.ossl_dispatch_st, %struct.ossl_dispatch_st* %opf, i64 0, i32 1
  %0 = bitcast void ()** %function to %struct.ossl_item_st* (i8*)**
  %1 = load %struct.ossl_item_st* (i8*)*, %struct.ossl_item_st* (i8*)** %0, align 8, !tbaa !84
  ret %struct.ossl_item_st* (i8*)* %1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc i32 @ERR_GET_LIB(i64 noundef %errcode) unnamed_addr #11 {
entry:
  %and = and i64 %errcode, 2147483648
  %cmp.not = icmp eq i64 %and, 0
  %0 = trunc i64 %errcode to i32
  %1 = lshr i32 %0, 23
  %conv = and i32 %1, 255
  %retval.0 = select i1 %cmp.not, i32 %conv, i32 2
  ret i32 %retval.0
}

declare i32 @ERR_load_strings(i32 noundef, %struct.ERR_string_data_st* noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal %struct.ossl_param_st* @core_gettable_params(%struct.ossl_core_handle_st* nocapture noundef readnone %handle) #11 {
entry:
  ret %struct.ossl_param_st* getelementptr inbounds ([4 x %struct.ossl_param_st], [4 x %struct.ossl_param_st]* @param_types, i64 0, i64 0)
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @core_get_params(%struct.ossl_core_handle_st* nocapture noundef readonly %handle, %struct.ossl_param_st* noundef %params) #0 {
entry:
  %0 = bitcast %struct.ossl_core_handle_st* %handle to %struct.ossl_provider_st*
  %call = tail call %struct.ossl_param_st* @OSSL_PARAM_locate(%struct.ossl_param_st* noundef %params, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0)) #13
  %cmp.not = icmp eq %struct.ossl_param_st* %call, null
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call1 = tail call i32 @OSSL_PARAM_set_utf8_ptr(%struct.ossl_param_st* noundef nonnull %call, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0)) #13
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %call2 = tail call %struct.ossl_param_st* @OSSL_PARAM_locate(%struct.ossl_param_st* noundef %params, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0)) #13
  %cmp3.not = icmp eq %struct.ossl_param_st* %call2, null
  br i1 %cmp3.not, label %if.end6, label %if.then4

if.then4:                                         ; preds = %if.end
  %name = getelementptr inbounds %struct.ossl_provider_st, %struct.ossl_provider_st* %0, i64 0, i32 5
  %1 = load i8*, i8** %name, align 8, !tbaa !24
  %call5 = tail call i32 @OSSL_PARAM_set_utf8_ptr(%struct.ossl_param_st* noundef nonnull %call2, i8* noundef %1) #13
  br label %if.end6

if.end6:                                          ; preds = %if.then4, %if.end
  %call7 = tail call %struct.ossl_param_st* @OSSL_PARAM_locate(%struct.ossl_param_st* noundef %params, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i64 0, i64 0)) #13
  %cmp8.not = icmp eq %struct.ossl_param_st* %call7, null
  br i1 %cmp8.not, label %if.end12, label %if.then9

if.then9:                                         ; preds = %if.end6
  %call10 = tail call i8* @ossl_provider_module_path(%struct.ossl_provider_st* noundef %0) #14
  %call11 = tail call i32 @OSSL_PARAM_set_utf8_ptr(%struct.ossl_param_st* noundef nonnull %call7, i8* noundef %call10) #13
  br label %if.end12

if.end12:                                         ; preds = %if.then9, %if.end6
  %parameters = getelementptr inbounds %struct.ossl_provider_st, %struct.ossl_provider_st* %0, i64 0, i32 9
  %2 = load %struct.stack_st_INFOPAIR*, %struct.stack_st_INFOPAIR** %parameters, align 8, !tbaa !33
  %cmp13 = icmp eq %struct.stack_st_INFOPAIR* %2, null
  br i1 %cmp13, label %cleanup, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end12
  %call1746 = tail call fastcc i32 @sk_INFOPAIR_num(%struct.stack_st_INFOPAIR* noundef nonnull %2) #14
  %cmp1847 = icmp sgt i32 %call1746, 0
  br i1 %cmp1847, label %for.body, label %cleanup

for.body:                                         ; preds = %for.cond.preheader, %if.end26
  %i.048 = phi i32 [ %inc, %if.end26 ], [ 0, %for.cond.preheader ]
  %3 = load %struct.stack_st_INFOPAIR*, %struct.stack_st_INFOPAIR** %parameters, align 8, !tbaa !33
  %call20 = tail call fastcc %struct.INFOPAIR* @sk_INFOPAIR_value(%struct.stack_st_INFOPAIR* noundef %3, i32 noundef %i.048) #14
  %name21 = getelementptr inbounds %struct.INFOPAIR, %struct.INFOPAIR* %call20, i64 0, i32 0
  %4 = load i8*, i8** %name21, align 8, !tbaa !12
  %call22 = tail call %struct.ossl_param_st* @OSSL_PARAM_locate(%struct.ossl_param_st* noundef %params, i8* noundef %4) #13
  %cmp23.not = icmp eq %struct.ossl_param_st* %call22, null
  br i1 %cmp23.not, label %if.end26, label %if.then24

if.then24:                                        ; preds = %for.body
  %value = getelementptr inbounds %struct.INFOPAIR, %struct.INFOPAIR* %call20, i64 0, i32 1
  %5 = load i8*, i8** %value, align 8, !tbaa !14
  %call25 = tail call i32 @OSSL_PARAM_set_utf8_ptr(%struct.ossl_param_st* noundef nonnull %call22, i8* noundef %5) #13
  br label %if.end26

if.end26:                                         ; preds = %if.then24, %for.body
  %inc = add nuw nsw i32 %i.048, 1
  %6 = load %struct.stack_st_INFOPAIR*, %struct.stack_st_INFOPAIR** %parameters, align 8, !tbaa !33
  %call17 = tail call fastcc i32 @sk_INFOPAIR_num(%struct.stack_st_INFOPAIR* noundef %6) #14
  %cmp18 = icmp slt i32 %inc, %call17
  br i1 %cmp18, label %for.body, label %cleanup, !llvm.loop !85

cleanup:                                          ; preds = %if.end26, %for.cond.preheader, %if.end12
  ret i32 1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal %struct.openssl_core_ctx_st* @core_get_libctx(%struct.ossl_core_handle_st* nocapture noundef readonly %handle) #8 {
entry:
  %0 = bitcast %struct.ossl_core_handle_st* %handle to %struct.ossl_provider_st*
  %libctx = getelementptr inbounds %struct.ossl_provider_st, %struct.ossl_provider_st* %0, i64 0, i32 10
  %1 = bitcast %struct.ossl_lib_ctx_st** %libctx to %struct.openssl_core_ctx_st**
  %2 = load %struct.openssl_core_ctx_st*, %struct.openssl_core_ctx_st** %1, align 8, !tbaa !40
  ret %struct.openssl_core_ctx_st* %2
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @core_thread_start(%struct.ossl_core_handle_st* noundef %handle, void (i8*)* noundef %handfn, i8* noundef %arg) #0 {
entry:
  %0 = bitcast %struct.ossl_core_handle_st* %handle to i8*
  %call = tail call i32 @ossl_init_thread_start(i8* noundef %0, i8* noundef %arg, void (i8*)* noundef %handfn) #13
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal void @core_new_error(%struct.ossl_core_handle_st* nocapture noundef readnone %handle) #0 {
entry:
  tail call void @ERR_new() #13
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @core_set_error_debug(%struct.ossl_core_handle_st* nocapture noundef readnone %handle, i8* noundef %file, i32 noundef %line, i8* noundef %func) #0 {
entry:
  tail call void @ERR_set_debug(i8* noundef %file, i32 noundef %line, i8* noundef %func) #13
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @core_vset_error(%struct.ossl_core_handle_st* nocapture noundef readonly %handle, i32 noundef %reason, i8* noundef %fmt, %struct.__va_list_tag* noundef %args) #0 {
entry:
  %conv = zext i32 %reason to i64
  %call = tail call fastcc i32 @ERR_GET_LIB(i64 noundef %conv) #14
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %call5 = tail call fastcc i32 @ERR_GET_REASON(i64 noundef %conv) #14, !range !86
  tail call void @ERR_vset_error(i32 noundef %call, i32 noundef %call5, i8* noundef %fmt, %struct.__va_list_tag* noundef %args) #13
  br label %if.end

if.else:                                          ; preds = %entry
  %0 = bitcast %struct.ossl_core_handle_st* %handle to %struct.ossl_provider_st*
  %error_lib = getelementptr inbounds %struct.ossl_provider_st, %struct.ossl_provider_st* %0, i64 0, i32 12
  %1 = load i32, i32* %error_lib, align 8, !tbaa !28
  tail call void @ERR_vset_error(i32 noundef %1, i32 noundef %reason, i8* noundef %fmt, %struct.__va_list_tag* noundef %args) #13
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @core_set_error_mark(%struct.ossl_core_handle_st* nocapture noundef readnone %handle) #0 {
entry:
  %call = tail call i32 @ERR_set_mark() #13
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @core_clear_last_error_mark(%struct.ossl_core_handle_st* nocapture noundef readnone %handle) #0 {
entry:
  %call = tail call i32 @ERR_clear_last_mark() #13
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @core_pop_error_to_mark(%struct.ossl_core_handle_st* nocapture noundef readnone %handle) #0 {
entry:
  %call = tail call i32 @ERR_pop_to_mark() #13
  ret i32 %call
}

declare %struct.ossl_core_bio_st* @ossl_core_bio_new_file(i8* noundef, i8* noundef) #1

declare %struct.ossl_core_bio_st* @ossl_core_bio_new_mem_buf(i8* noundef, i32 noundef) #1

declare i32 @ossl_core_bio_read_ex(%struct.ossl_core_bio_st* noundef, i8* noundef, i64 noundef, i64* noundef) #1

declare i32 @ossl_core_bio_write_ex(%struct.ossl_core_bio_st* noundef, i8* noundef, i64 noundef, i64* noundef) #1

declare i32 @ossl_core_bio_gets(%struct.ossl_core_bio_st* noundef, i8* noundef, i32 noundef) #1

declare i32 @ossl_core_bio_puts(%struct.ossl_core_bio_st* noundef, i8* noundef) #1

declare i64 @ossl_core_bio_ctrl(%struct.ossl_core_bio_st* noundef, i32 noundef, i64 noundef, i8* noundef) #1

declare i32 @ossl_core_bio_up_ref(%struct.ossl_core_bio_st* noundef) #1

declare i32 @ossl_core_bio_free(%struct.ossl_core_bio_st* noundef) #1

declare i32 @ossl_core_bio_vprintf(%struct.ossl_core_bio_st* noundef, i8* noundef, %struct.__va_list_tag* noundef) #1

declare i32 @BIO_vsnprintf(i8* noundef, i64 noundef, i8* noundef, %struct.__va_list_tag* noundef) #1

declare void @OSSL_SELF_TEST_get_callback(%struct.ossl_lib_ctx_st* noundef, i32 (%struct.ossl_param_st*, i8*)** noundef, i8** noundef) #1

declare i64 @ossl_rand_get_entropy(%struct.ossl_core_handle_st* noundef, i8** noundef, i32 noundef, i64 noundef, i64 noundef) #1

declare void @ossl_rand_cleanup_entropy(%struct.ossl_core_handle_st* noundef, i8* noundef, i64 noundef) #1

declare i64 @ossl_rand_get_nonce(%struct.ossl_core_handle_st* noundef, i8** noundef, i64 noundef, i64 noundef, i8* noundef, i64 noundef) #1

declare void @ossl_rand_cleanup_nonce(%struct.ossl_core_handle_st* noundef, i8* noundef, i64 noundef) #1

declare i8* @CRYPTO_malloc(i64 noundef, i8* noundef, i32 noundef) #1

declare void @CRYPTO_clear_free(i8* noundef, i64 noundef, i8* noundef, i32 noundef) #1

declare i8* @CRYPTO_clear_realloc(i8* noundef, i64 noundef, i64 noundef, i8* noundef, i32 noundef) #1

declare i8* @CRYPTO_secure_malloc(i64 noundef, i8* noundef, i32 noundef) #1

declare i8* @CRYPTO_secure_zalloc(i64 noundef, i8* noundef, i32 noundef) #1

declare void @CRYPTO_secure_free(i8* noundef, i8* noundef, i32 noundef) #1

declare void @CRYPTO_secure_clear_free(i8* noundef, i64 noundef, i8* noundef, i32 noundef) #1

declare i32 @CRYPTO_secure_allocated(i8* noundef) #1

declare void @OPENSSL_cleanse(i8* noundef, i64 noundef) #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @ossl_provider_register_child_cb(%struct.ossl_core_handle_st* noundef %handle, i32 (%struct.ossl_core_handle_st*, i8*)* noundef %create_cb, i32 (%struct.ossl_core_handle_st*, i8*)* noundef %remove_cb, i32 (i8*, i8*)* noundef %global_props_cb, i8* noundef %cbdata) #0 {
entry:
  %0 = bitcast %struct.ossl_core_handle_st* %handle to %struct.ossl_provider_st*
  %libctx1 = getelementptr inbounds %struct.ossl_provider_st, %struct.ossl_provider_st* %0, i64 0, i32 10
  %1 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** %libctx1, align 8, !tbaa !40
  %call = tail call fastcc %struct.provider_store_st* @get_provider_store(%struct.ossl_lib_ctx_st* noundef %1) #14
  %cmp = icmp eq %struct.provider_store_st* %call, null
  br i1 %cmp, label %cleanup52, label %if.end

if.end:                                           ; preds = %entry
  %call2 = tail call i8* @CRYPTO_malloc(i64 noundef 40, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 1669) #13
  %2 = bitcast i8* %call2 to %struct.OSSL_PROVIDER_CHILD_CB*
  %cmp3 = icmp eq i8* %call2, null
  br i1 %cmp3, label %cleanup52, label %if.end5

if.end5:                                          ; preds = %if.end
  %3 = bitcast i8* %call2 to %struct.ossl_core_handle_st**
  store %struct.ossl_core_handle_st* %handle, %struct.ossl_core_handle_st** %3, align 8, !tbaa !87
  %create_cb7 = getelementptr inbounds i8, i8* %call2, i64 8
  %4 = bitcast i8* %create_cb7 to i32 (%struct.ossl_core_handle_st*, i8*)**
  store i32 (%struct.ossl_core_handle_st*, i8*)* %create_cb, i32 (%struct.ossl_core_handle_st*, i8*)** %4, align 8, !tbaa !45
  %remove_cb8 = getelementptr inbounds i8, i8* %call2, i64 16
  %5 = bitcast i8* %remove_cb8 to i32 (%struct.ossl_core_handle_st*, i8*)**
  store i32 (%struct.ossl_core_handle_st*, i8*)* %remove_cb, i32 (%struct.ossl_core_handle_st*, i8*)** %5, align 8, !tbaa !54
  %global_props_cb9 = getelementptr inbounds i8, i8* %call2, i64 24
  %6 = bitcast i8* %global_props_cb9 to i32 (i8*, i8*)**
  store i32 (i8*, i8*)* %global_props_cb, i32 (i8*, i8*)** %6, align 8, !tbaa !70
  %cbdata10 = getelementptr inbounds i8, i8* %call2, i64 32
  %7 = bitcast i8* %cbdata10 to i8**
  store i8* %cbdata, i8** %7, align 8, !tbaa !47
  %lock = getelementptr inbounds %struct.provider_store_st, %struct.provider_store_st* %call, i64 0, i32 4
  %8 = load i8*, i8** %lock, align 8, !tbaa !15
  %call11 = tail call i32 @CRYPTO_THREAD_write_lock(i8* noundef %8) #13
  %tobool.not = icmp eq i32 %call11, 0
  br i1 %tobool.not, label %if.then12, label %if.end13

if.then12:                                        ; preds = %if.end5
  tail call void @CRYPTO_free(i8* noundef nonnull %call2, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 1679) #13
  br label %cleanup52

if.end13:                                         ; preds = %if.end5
  %call14 = tail call i8* @evp_get_global_properties_str(%struct.ossl_lib_ctx_st* noundef %1, i32 noundef 0) #13
  %cmp15.not = icmp eq i8* %call14, null
  br i1 %cmp15.not, label %if.end18, label %if.then16

if.then16:                                        ; preds = %if.end13
  %call17 = tail call i32 %global_props_cb(i8* noundef nonnull %call14, i8* noundef %cbdata) #13
  tail call void @CRYPTO_free(i8* noundef nonnull %call14, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 1686) #13
  br label %if.end18

if.end18:                                         ; preds = %if.then16, %if.end13
  %providers = getelementptr inbounds %struct.provider_store_st, %struct.provider_store_st* %call, i64 0, i32 1
  %9 = load %struct.stack_st_OSSL_PROVIDER*, %struct.stack_st_OSSL_PROVIDER** %providers, align 8, !tbaa !26
  %call19 = tail call fastcc i32 @sk_OSSL_PROVIDER_num(%struct.stack_st_OSSL_PROVIDER* noundef %9) #14
  %cmp20110 = icmp sgt i32 %call19, 0
  br i1 %cmp20110, label %for.body, label %for.end

for.body:                                         ; preds = %if.end18, %for.inc
  %i.0111 = phi i32 [ %inc, %for.inc ], [ 0, %if.end18 ]
  %10 = load %struct.stack_st_OSSL_PROVIDER*, %struct.stack_st_OSSL_PROVIDER** %providers, align 8, !tbaa !26
  %call22 = tail call fastcc %struct.ossl_provider_st* @sk_OSSL_PROVIDER_value(%struct.stack_st_OSSL_PROVIDER* noundef %10, i32 noundef %i.0111) #14
  %flag_lock = getelementptr inbounds %struct.ossl_provider_st, %struct.ossl_provider_st* %call22, i64 0, i32 1
  %11 = load i8*, i8** %flag_lock, align 8, !tbaa !35
  %call23 = tail call i32 @CRYPTO_THREAD_read_lock(i8* noundef %11) #13
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %for.end, label %if.end26

if.end26:                                         ; preds = %for.body
  %12 = getelementptr %struct.ossl_provider_st, %struct.ossl_provider_st* %call22, i64 0, i32 0
  %bf.load = load i8, i8* %12, align 8
  %13 = load i8*, i8** %flag_lock, align 8, !tbaa !35
  %call28 = tail call i32 @CRYPTO_THREAD_unlock(i8* noundef %13) #13
  %14 = and i8 %bf.load, 2
  %tobool29.not = icmp eq i8 %14, 0
  br i1 %tobool29.not, label %for.inc, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end26
  %15 = bitcast %struct.ossl_provider_st* %call22 to %struct.ossl_core_handle_st*
  %call30 = tail call i32 %create_cb(%struct.ossl_core_handle_st* noundef %15, i8* noundef %cbdata) #13
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %for.end, label %for.inc

for.inc:                                          ; preds = %land.lhs.true, %if.end26
  %inc = add nuw nsw i32 %i.0111, 1
  %exitcond.not = icmp eq i32 %inc, %call19
  br i1 %exitcond.not, label %if.end37, label %for.body, !llvm.loop !88

for.end:                                          ; preds = %for.body, %land.lhs.true, %if.end18
  %i.0.lcssa = phi i32 [ 0, %if.end18 ], [ %i.0111, %land.lhs.true ], [ %i.0111, %for.body ]
  %cmp34 = icmp eq i32 %i.0.lcssa, %call19
  br i1 %cmp34, label %if.end37, label %for.cond41.preheader

if.end37:                                         ; preds = %for.inc, %for.end
  %i.0.lcssa120 = phi i32 [ %i.0.lcssa, %for.end ], [ %call19, %for.inc ]
  %child_cbs = getelementptr inbounds %struct.provider_store_st, %struct.provider_store_st* %call, i64 0, i32 2
  %16 = load %struct.stack_st_OSSL_PROVIDER_CHILD_CB*, %struct.stack_st_OSSL_PROVIDER_CHILD_CB** %child_cbs, align 8, !tbaa !44
  %call36 = tail call fastcc i32 @sk_OSSL_PROVIDER_CHILD_CB_push(%struct.stack_st_OSSL_PROVIDER_CHILD_CB* noundef %16, %struct.OSSL_PROVIDER_CHILD_CB* noundef nonnull %2) #14
  %cmp38 = icmp ne i32 %i.0.lcssa120, %call19
  %cmp39 = icmp slt i32 %call36, 1
  %or.cond = select i1 %cmp38, i1 true, i1 %cmp39
  br i1 %or.cond, label %for.cond41.preheader, label %if.end49

for.cond41.preheader:                             ; preds = %for.end, %if.end37
  %i.0.lcssa119126 = phi i32 [ %i.0.lcssa120, %if.end37 ], [ %i.0.lcssa, %for.end ]
  %cmp42115 = icmp sgt i32 %i.0.lcssa119126, -1
  br i1 %cmp42115, label %for.body43, label %for.end48

for.body43:                                       ; preds = %for.cond41.preheader, %for.body43
  %i.1116 = phi i32 [ %dec, %for.body43 ], [ %i.0.lcssa119126, %for.cond41.preheader ]
  %17 = load %struct.stack_st_OSSL_PROVIDER*, %struct.stack_st_OSSL_PROVIDER** %providers, align 8, !tbaa !26
  %call45 = tail call fastcc %struct.ossl_provider_st* @sk_OSSL_PROVIDER_value(%struct.stack_st_OSSL_PROVIDER* noundef %17, i32 noundef %i.1116) #14
  %18 = bitcast %struct.ossl_provider_st* %call45 to %struct.ossl_core_handle_st*
  %call46 = tail call i32 %remove_cb(%struct.ossl_core_handle_st* noundef %18, i8* noundef %cbdata) #13
  %dec = add nsw i32 %i.1116, -1
  %cmp42.not = icmp eq i32 %i.1116, 0
  br i1 %cmp42.not, label %for.end48, label %for.body43, !llvm.loop !89

for.end48:                                        ; preds = %for.body43, %for.cond41.preheader
  tail call void @CRYPTO_free(i8* noundef nonnull %call2, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 1720) #13
  br label %if.end49

if.end49:                                         ; preds = %if.end37, %for.end48
  %ret.1 = phi i32 [ 0, %for.end48 ], [ %call36, %if.end37 ]
  %19 = load i8*, i8** %lock, align 8, !tbaa !15
  %call51 = tail call i32 @CRYPTO_THREAD_unlock(i8* noundef %19) #13
  br label %cleanup52

cleanup52:                                        ; preds = %if.end, %entry, %if.end49, %if.then12
  %retval.0 = phi i32 [ %ret.1, %if.end49 ], [ 0, %if.then12 ], [ 0, %entry ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal void @ossl_provider_deregister_child_cb(%struct.ossl_core_handle_st* noundef readonly %handle) #0 {
entry:
  %0 = bitcast %struct.ossl_core_handle_st* %handle to %struct.ossl_provider_st*
  %libctx1 = getelementptr inbounds %struct.ossl_provider_st, %struct.ossl_provider_st* %0, i64 0, i32 10
  %1 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** %libctx1, align 8, !tbaa !40
  %call = tail call fastcc %struct.provider_store_st* @get_provider_store(%struct.ossl_lib_ctx_st* noundef %1) #14
  %cmp = icmp eq %struct.provider_store_st* %call, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %lock = getelementptr inbounds %struct.provider_store_st, %struct.provider_store_st* %call, i64 0, i32 4
  %2 = load i8*, i8** %lock, align 8, !tbaa !15
  %call2 = tail call i32 @CRYPTO_THREAD_write_lock(i8* noundef %2) #13
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %cleanup, label %if.end4

if.end4:                                          ; preds = %if.end
  %child_cbs = getelementptr inbounds %struct.provider_store_st, %struct.provider_store_st* %call, i64 0, i32 2
  %3 = load %struct.stack_st_OSSL_PROVIDER_CHILD_CB*, %struct.stack_st_OSSL_PROVIDER_CHILD_CB** %child_cbs, align 8, !tbaa !44
  %call5 = tail call fastcc i32 @sk_OSSL_PROVIDER_CHILD_CB_num(%struct.stack_st_OSSL_PROVIDER_CHILD_CB* noundef %3) #14
  %cmp637 = icmp sgt i32 %call5, 0
  br i1 %cmp637, label %for.body, label %for.end

for.body:                                         ; preds = %if.end4, %for.inc
  %i.038 = phi i32 [ %inc, %for.inc ], [ 0, %if.end4 ]
  %4 = load %struct.stack_st_OSSL_PROVIDER_CHILD_CB*, %struct.stack_st_OSSL_PROVIDER_CHILD_CB** %child_cbs, align 8, !tbaa !44
  %call8 = tail call fastcc %struct.OSSL_PROVIDER_CHILD_CB* @sk_OSSL_PROVIDER_CHILD_CB_value(%struct.stack_st_OSSL_PROVIDER_CHILD_CB* noundef %4, i32 noundef %i.038) #14
  %prov = getelementptr inbounds %struct.OSSL_PROVIDER_CHILD_CB, %struct.OSSL_PROVIDER_CHILD_CB* %call8, i64 0, i32 0
  %5 = load %struct.ossl_provider_st*, %struct.ossl_provider_st** %prov, align 8, !tbaa !87
  %cmp9 = icmp eq %struct.ossl_provider_st* %5, %0
  br i1 %cmp9, label %if.then10, label %for.inc

if.then10:                                        ; preds = %for.body
  %6 = load %struct.stack_st_OSSL_PROVIDER_CHILD_CB*, %struct.stack_st_OSSL_PROVIDER_CHILD_CB** %child_cbs, align 8, !tbaa !44
  tail call fastcc void @sk_OSSL_PROVIDER_CHILD_CB_delete(%struct.stack_st_OSSL_PROVIDER_CHILD_CB* noundef %6, i32 noundef %i.038) #14
  %7 = bitcast %struct.OSSL_PROVIDER_CHILD_CB* %call8 to i8*
  tail call void @CRYPTO_free(i8* noundef %7, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 1751) #13
  br label %for.end

for.inc:                                          ; preds = %for.body
  %inc = add nuw nsw i32 %i.038, 1
  %exitcond.not = icmp eq i32 %inc, %call5
  br i1 %exitcond.not, label %for.end, label %for.body, !llvm.loop !90

for.end:                                          ; preds = %for.inc, %if.end4, %if.then10
  %8 = load i8*, i8** %lock, align 8, !tbaa !15
  %call15 = tail call i32 @CRYPTO_THREAD_unlock(i8* noundef %8) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry, %for.end
  ret void
}

declare i8* @OSSL_PROVIDER_get0_name(%struct.ossl_provider_st* noundef) #1

declare i8* @OSSL_PROVIDER_get0_provider_ctx(%struct.ossl_provider_st* noundef) #1

declare %struct.ossl_dispatch_st* @OSSL_PROVIDER_get0_dispatch(%struct.ossl_provider_st* noundef) #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @provider_up_ref_intern(%struct.ossl_provider_st* noundef %prov, i32 noundef %activate) #0 {
entry:
  %tobool.not = icmp eq i32 %activate, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = tail call i32 @ossl_provider_activate(%struct.ossl_provider_st* noundef %prov, i32 noundef 1, i32 noundef 0) #14
  br label %return

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @ossl_provider_up_ref(%struct.ossl_provider_st* noundef %prov) #14
  br label %return

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %call, %if.then ], [ %call1, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @provider_free_intern(%struct.ossl_provider_st* noundef %prov, i32 noundef %deactivate) #0 {
entry:
  %tobool.not = icmp eq i32 %deactivate, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = tail call i32 @ossl_provider_deactivate(%struct.ossl_provider_st* noundef %prov) #14
  br label %return

if.end:                                           ; preds = %entry
  tail call void @ossl_provider_free(%struct.ossl_provider_st* noundef %prov) #14
  br label %return

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %call, %if.then ], [ 1, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @core_obj_add_sigid(%struct.ossl_core_handle_st* nocapture noundef readnone %prov, i8* noundef %sign_name, i8* noundef %digest_name, i8* noundef %pkey_name) #0 {
entry:
  %call = tail call i32 @OBJ_txt2nid(i8* noundef %sign_name) #13
  %call1 = tail call i32 @OBJ_txt2nid(i8* noundef %digest_name) #13
  %call2 = tail call i32 @OBJ_txt2nid(i8* noundef %pkey_name) #13
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call3 = tail call i32 @OBJ_find_sigid_algs(i32 noundef %call, i32* noundef null, i32* noundef null) #13
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.end5, label %cleanup

if.end5:                                          ; preds = %if.end
  %cmp6 = icmp eq i32 %call1, 0
  %cmp7 = icmp eq i32 %call2, 0
  %or.cond = select i1 %cmp6, i1 true, i1 %cmp7
  br i1 %or.cond, label %cleanup, label %if.end9

if.end9:                                          ; preds = %if.end5
  %call10 = tail call i32 @OBJ_add_sigid(i32 noundef %call, i32 noundef %call1, i32 noundef %call2) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end, %entry, %if.end9
  %retval.0 = phi i32 [ %call10, %if.end9 ], [ 0, %entry ], [ 1, %if.end ], [ 0, %if.end5 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @core_obj_create(%struct.ossl_core_handle_st* nocapture noundef readnone %prov, i8* noundef %oid, i8* noundef %sn, i8* noundef %ln) #0 {
entry:
  %call = tail call i32 @OBJ_txt2nid(i8* noundef %oid) #13
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %lor.rhs, label %lor.end

lor.rhs:                                          ; preds = %entry
  %call1 = tail call i32 @OBJ_create(i8* noundef %oid, i8* noundef %sn, i8* noundef %ln) #13
  %cmp2 = icmp ne i32 %call1, 0
  %phi.cast = zext i1 %cmp2 to i32
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %entry
  %0 = phi i32 [ 1, %entry ], [ %phi.cast, %lor.rhs ]
  ret i32 %0
}

declare %struct.ossl_param_st* @OSSL_PARAM_locate(%struct.ossl_param_st* noundef, i8* noundef) local_unnamed_addr #1

declare i32 @OSSL_PARAM_set_utf8_ptr(%struct.ossl_param_st* noundef, i8* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @sk_INFOPAIR_num(%struct.stack_st_INFOPAIR* noundef %sk) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.stack_st_INFOPAIR* %sk to %struct.stack_st*
  %call = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %0) #13
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.INFOPAIR* @sk_INFOPAIR_value(%struct.stack_st_INFOPAIR* noundef %sk, i32 noundef %idx) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.stack_st_INFOPAIR* %sk to %struct.stack_st*
  %call = tail call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %0, i32 noundef %idx) #13
  %1 = bitcast i8* %call to %struct.INFOPAIR*
  ret %struct.INFOPAIR* %1
}

declare i32 @OPENSSL_sk_num(%struct.stack_st* noundef) local_unnamed_addr #1

declare i32 @ossl_init_thread_start(i8* noundef, i8* noundef, void (i8*)* noundef) local_unnamed_addr #1

declare void @ERR_vset_error(i32 noundef, i32 noundef, i8* noundef, %struct.__va_list_tag* noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc i32 @ERR_GET_REASON(i64 noundef %errcode) unnamed_addr #11 {
entry:
  %and = and i64 %errcode, 2147483648
  %cmp.not = icmp eq i64 %and, 0
  %0 = trunc i64 %errcode to i32
  %retval.0.v = select i1 %cmp.not, i32 8388607, i32 2147483647
  %retval.0 = and i32 %retval.0.v, %0
  ret i32 %retval.0
}

declare i32 @ERR_set_mark() local_unnamed_addr #1

declare i32 @ERR_clear_last_mark() local_unnamed_addr #1

declare i32 @ERR_pop_to_mark() local_unnamed_addr #1

declare i8* @evp_get_global_properties_str(%struct.ossl_lib_ctx_st* noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @sk_OSSL_PROVIDER_CHILD_CB_push(%struct.stack_st_OSSL_PROVIDER_CHILD_CB* noundef %sk, %struct.OSSL_PROVIDER_CHILD_CB* noundef %ptr) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.stack_st_OSSL_PROVIDER_CHILD_CB* %sk to %struct.stack_st*
  %1 = bitcast %struct.OSSL_PROVIDER_CHILD_CB* %ptr to i8*
  %call = tail call i32 @OPENSSL_sk_push(%struct.stack_st* noundef %0, i8* noundef %1) #13
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @sk_OSSL_PROVIDER_CHILD_CB_delete(%struct.stack_st_OSSL_PROVIDER_CHILD_CB* noundef %sk, i32 noundef %i) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.stack_st_OSSL_PROVIDER_CHILD_CB* %sk to %struct.stack_st*
  %call = tail call i8* @OPENSSL_sk_delete(%struct.stack_st* noundef %0, i32 noundef %i) #13
  ret void
}

declare i8* @OPENSSL_sk_delete(%struct.stack_st* noundef, i32 noundef) local_unnamed_addr #1

declare i32 @OBJ_txt2nid(i8* noundef) local_unnamed_addr #1

declare i32 @OBJ_find_sigid_algs(i32 noundef, i32* noundef, i32* noundef) local_unnamed_addr #1

declare i32 @OBJ_add_sigid(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare i32 @OBJ_create(i8* noundef, i8* noundef, i8* noundef) local_unnamed_addr #1

declare i32 @evp_method_store_flush(%struct.ossl_lib_ctx_st* noundef) local_unnamed_addr #1

declare %struct.stack_st* @OPENSSL_sk_dup(%struct.stack_st* noundef) local_unnamed_addr #1

declare void @OPENSSL_sk_free(%struct.stack_st* noundef) local_unnamed_addr #1

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umax.i64(i64, i64) #12

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #3 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #4 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #5 = { mustprogress nofree noinline norecurse nounwind uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree noinline nounwind readonly uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #13 = { nobuiltin nounwind "no-builtins" }
attributes #14 = { nobuiltin "no-builtins" }
attributes #15 = { nounwind }
attributes #16 = { nobuiltin nounwind readonly willreturn "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{!"clang version 14.0.0"}
!4 = !{!5, !6, i64 0}
!5 = !{!"", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !9, i64 32}
!6 = !{!"any pointer", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!"int", !7, i64 0}
!10 = !{!5, !6, i64 8}
!11 = !{!5, !6, i64 24}
!12 = !{!13, !6, i64 0}
!13 = !{!"", !6, i64 0, !6, i64 8}
!14 = !{!13, !6, i64 8}
!15 = !{!16, !6, i64 32}
!16 = !{!"provider_store_st", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !6, i64 40, !6, i64 48, !17, i64 56, !17, i64 64, !9, i64 72, !9, i64 72}
!17 = !{!"long", !7, i64 0}
!18 = !{!16, !17, i64 64}
!19 = !{!16, !6, i64 48}
!20 = !{!16, !17, i64 56}
!21 = !{i64 0, i64 8, !22, i64 8, i64 8, !22, i64 16, i64 8, !22, i64 24, i64 8, !22, i64 32, i64 4, !23}
!22 = !{!6, !6, i64 0}
!23 = !{!9, !9, i64 0}
!24 = !{!25, !6, i64 40}
!25 = !{!"ossl_provider_st", !9, i64 0, !9, i64 0, !9, i64 0, !6, i64 8, !7, i64 16, !6, i64 24, !9, i64 32, !6, i64 40, !6, i64 48, !6, i64 56, !6, i64 64, !6, i64 72, !6, i64 80, !6, i64 88, !9, i64 96, !6, i64 104, !6, i64 112, !6, i64 120, !6, i64 128, !6, i64 136, !6, i64 144, !6, i64 152, !6, i64 160, !6, i64 168, !17, i64 176, !6, i64 184, !6, i64 192, !9, i64 200, !6, i64 208, !6, i64 216}
!26 = !{!16, !6, i64 8}
!27 = !{!25, !6, i64 104}
!28 = !{!25, !9, i64 96}
!29 = !{!25, !6, i64 168}
!30 = !{!25, !17, i64 176}
!31 = !{!25, !6, i64 56}
!32 = !{!25, !6, i64 48}
!33 = !{!25, !6, i64 72}
!34 = !{!25, !6, i64 184}
!35 = !{!25, !6, i64 8}
!36 = distinct !{!36, !37}
!37 = !{!"llvm.loop.mustprogress"}
!38 = distinct !{!38, !37}
!39 = !{!5, !6, i64 16}
!40 = !{!25, !6, i64 80}
!41 = !{!25, !7, i64 16}
!42 = !{!25, !6, i64 64}
!43 = !{!25, !6, i64 88}
!44 = !{!16, !6, i64 16}
!45 = !{!46, !6, i64 8}
!46 = !{!"", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !6, i64 32}
!47 = !{!46, !6, i64 32}
!48 = distinct !{!48, !37}
!49 = !{!25, !6, i64 112}
!50 = !{!25, !6, i64 208}
!51 = !{!16, !6, i64 24}
!52 = !{!16, !6, i64 40}
!53 = !{!25, !9, i64 32}
!54 = !{!46, !6, i64 16}
!55 = distinct !{!55, !37}
!56 = distinct !{!56, !37}
!57 = distinct !{!57, !37}
!58 = !{!16, !6, i64 0}
!59 = distinct !{!59, !37}
!60 = !{!25, !6, i64 216}
!61 = !{!25, !6, i64 120}
!62 = !{!25, !6, i64 128}
!63 = !{!25, !6, i64 144}
!64 = !{!25, !6, i64 136}
!65 = !{!25, !6, i64 152}
!66 = !{!25, !6, i64 160}
!67 = distinct !{!67, !37}
!68 = !{!7, !7, i64 0}
!69 = !{!25, !6, i64 192}
!70 = !{!46, !6, i64 24}
!71 = distinct !{!71, !37}
!72 = distinct !{!72, !37}
!73 = !{!74, !9, i64 0}
!74 = !{!"ossl_dispatch_st", !9, i64 0, !6, i64 8}
!75 = distinct !{!75, !37}
!76 = !{!77, !9, i64 0}
!77 = !{!"ossl_item_st", !9, i64 0, !6, i64 8}
!78 = distinct !{!78, !37}
!79 = !{!80, !17, i64 0}
!80 = !{!"ERR_string_data_st", !17, i64 0, !6, i64 8}
!81 = !{!80, !6, i64 8}
!82 = !{!77, !6, i64 8}
!83 = distinct !{!83, !37}
!84 = !{!74, !6, i64 8}
!85 = distinct !{!85, !37}
!86 = !{i32 0, i32 -2147483648}
!87 = !{!46, !6, i64 0}
!88 = distinct !{!88, !37}
!89 = distinct !{!89, !37}
!90 = distinct !{!90, !37}
