; ModuleID = 'test/tls-provider.c'
source_filename = "test/tls-provider.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tls_group_st = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.ossl_dispatch_st = type { i32, void ()* }
%struct.ossl_algorithm_st = type { i8*, i8*, %struct.ossl_dispatch_st*, i8* }
%struct.ossl_param_st = type { i8*, i32, i8*, i64, i64 }
%struct.ossl_core_handle_st = type opaque
%struct.ossl_lib_ctx_st = type opaque
%struct.xorkey_st = type { [32 x i8], [32 x i8], i32, i32 }

@xor_group = internal global %struct.tls_group_st { i32 0, i32 128, i32 772, i32 0, i32 -1, i32 -1, i32 0 }, align 4
@xor_kemgroup = internal global %struct.tls_group_st { i32 0, i32 128, i32 772, i32 0, i32 -1, i32 -1, i32 1 }, align 4
@tls_prov_dispatch_table = internal constant [4 x %struct.ossl_dispatch_st] [%struct.ossl_dispatch_st { i32 1024, void ()* bitcast (void (i8*)* @tls_prov_teardown to void ()*) }, %struct.ossl_dispatch_st { i32 1027, void ()* bitcast (%struct.ossl_algorithm_st* (i8*, i32, i32*)* @tls_prov_query to void ()*) }, %struct.ossl_dispatch_st { i32 1030, void ()* bitcast (i32 (i8*, i8*, i32 (%struct.ossl_param_st*, i8*)*, i8*)* @tls_prov_get_capabilities to void ()*) }, %struct.ossl_dispatch_st zeroinitializer], align 16
@randomize_tls_group_id.mem = internal unnamed_addr global [10 x i32] zeroinitializer, align 16
@randomize_tls_group_id.in_mem = internal unnamed_addr global i32 0, align 4
@dummy_group_names = internal unnamed_addr global [50 x i8*] zeroinitializer, align 16
@.str = private unnamed_addr constant [20 x i8] c"test/tls-provider.c\00", align 1
@tls_prov_keymgmt = internal constant [2 x %struct.ossl_algorithm_st] [%struct.ossl_algorithm_st { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i32 0, i32 0), %struct.ossl_dispatch_st* getelementptr inbounds ([18 x %struct.ossl_dispatch_st], [18 x %struct.ossl_dispatch_st]* @xor_keymgmt_functions, i32 0, i32 0), i8* null }, %struct.ossl_algorithm_st zeroinitializer], align 16
@tls_prov_keyexch = internal constant [2 x %struct.ossl_algorithm_st] [%struct.ossl_algorithm_st { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i32 0, i32 0), %struct.ossl_dispatch_st* getelementptr inbounds ([7 x %struct.ossl_dispatch_st], [7 x %struct.ossl_dispatch_st]* @xor_keyexch_functions, i32 0, i32 0), i8* null }, %struct.ossl_algorithm_st zeroinitializer], align 16
@tls_prov_kem = internal constant [2 x %struct.ossl_algorithm_st] [%struct.ossl_algorithm_st { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i32 0, i32 0), %struct.ossl_dispatch_st* getelementptr inbounds ([8 x %struct.ossl_dispatch_st], [8 x %struct.ossl_dispatch_st]* @xor_kem_functions, i32 0, i32 0), i8* null }, %struct.ossl_algorithm_st zeroinitializer], align 16
@.str.1 = private unnamed_addr constant [4 x i8] c"XOR\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"provider=tls-provider,fips=yes\00", align 1
@xor_keymgmt_functions = internal constant [18 x %struct.ossl_dispatch_st] [%struct.ossl_dispatch_st { i32 1, void ()* bitcast (i8* (i8*)* @xor_newdata to void ()*) }, %struct.ossl_dispatch_st { i32 2, void ()* bitcast (i8* (i8*, i32, %struct.ossl_param_st*)* @xor_gen_init to void ()*) }, %struct.ossl_dispatch_st { i32 4, void ()* bitcast (i32 (i8*, %struct.ossl_param_st*)* @xor_gen_set_params to void ()*) }, %struct.ossl_dispatch_st { i32 5, void ()* bitcast (%struct.ossl_param_st* (i8*, i8*)* @xor_gen_settable_params to void ()*) }, %struct.ossl_dispatch_st { i32 6, void ()* bitcast (i8* (i8*, i32 (%struct.ossl_param_st*, i8*)*, i8*)* @xor_gen to void ()*) }, %struct.ossl_dispatch_st { i32 7, void ()* bitcast (void (i8*)* @xor_gen_cleanup to void ()*) }, %struct.ossl_dispatch_st { i32 11, void ()* bitcast (i32 (i8*, %struct.ossl_param_st*)* @xor_get_params to void ()*) }, %struct.ossl_dispatch_st { i32 12, void ()* bitcast (%struct.ossl_param_st* (i8*)* @xor_gettable_params to void ()*) }, %struct.ossl_dispatch_st { i32 13, void ()* bitcast (i32 (i8*, %struct.ossl_param_st*)* @xor_set_params to void ()*) }, %struct.ossl_dispatch_st { i32 14, void ()* bitcast (%struct.ossl_param_st* (i8*)* @xor_settable_params to void ()*) }, %struct.ossl_dispatch_st { i32 21, void ()* bitcast (i32 (i8*, i32)* @xor_has to void ()*) }, %struct.ossl_dispatch_st { i32 44, void ()* bitcast (i8* (i8*, i32)* @xor_dup to void ()*) }, %struct.ossl_dispatch_st { i32 10, void ()* bitcast (void (i8*)* @xor_freedata to void ()*) }, %struct.ossl_dispatch_st { i32 40, void ()* bitcast (i32 (i8*, i32, %struct.ossl_param_st*)* @xor_import to void ()*) }, %struct.ossl_dispatch_st { i32 41, void ()* bitcast (%struct.ossl_param_st* (i32)* @xor_import_types to void ()*) }, %struct.ossl_dispatch_st { i32 42, void ()* bitcast (i32 (i8*, i32, i32 (%struct.ossl_param_st*, i8*)*, i8*)* @xor_export to void ()*) }, %struct.ossl_dispatch_st { i32 43, void ()* bitcast (%struct.ossl_param_st* (i32)* @xor_export_types to void ()*) }, %struct.ossl_dispatch_st zeroinitializer], align 16
@.str.3 = private unnamed_addr constant [6 x i8] c"group\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"xorgroup-int\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"xorkemgroup-int\00", align 1
@xor_gen_settable_params.settable = internal global [2 x %struct.ossl_param_st] [%struct.ossl_param_st { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i32 0, i32 0), i32 4, i8* null, i64 0, i64 -1 }, %struct.ossl_param_st zeroinitializer], align 16
@.str.6 = private unnamed_addr constant [5 x i8] c"bits\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"security-bits\00", align 1
@.str.8 = private unnamed_addr constant [16 x i8] c"encoded-pub-key\00", align 1
@xor_params = internal constant [4 x %struct.ossl_param_st] [%struct.ossl_param_st { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i32 1, i8* null, i64 4, i64 -1 }, %struct.ossl_param_st { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i32 0, i32 0), i32 1, i8* null, i64 4, i64 -1 }, %struct.ossl_param_st { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i32 0, i32 0), i32 5, i8* null, i64 0, i64 -1 }, %struct.ossl_param_st zeroinitializer], align 16
@xor_known_settable_params = internal constant [2 x %struct.ossl_param_st] [%struct.ossl_param_st { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i32 0, i32 0), i32 5, i8* null, i64 0, i64 -1 }, %struct.ossl_param_st zeroinitializer], align 16
@.str.9 = private unnamed_addr constant [5 x i8] c"priv\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"pub\00", align 1
@xor_key_types = internal constant [3 x %struct.ossl_param_st] [%struct.ossl_param_st { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i32 0, i32 0), i32 2, i8* null, i64 0, i64 -1 }, %struct.ossl_param_st { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i32 0, i32 0), i32 2, i8* null, i64 0, i64 -1 }, %struct.ossl_param_st zeroinitializer], align 16
@xor_keyexch_functions = internal constant [7 x %struct.ossl_dispatch_st] [%struct.ossl_dispatch_st { i32 1, void ()* bitcast (i8* (i8*)* @xor_newctx to void ()*) }, %struct.ossl_dispatch_st { i32 2, void ()* bitcast (i32 (i8*, i8*, %struct.ossl_param_st*)* @xor_init to void ()*) }, %struct.ossl_dispatch_st { i32 3, void ()* bitcast (i32 (i8*, i8*, i64*, i64)* @xor_derive to void ()*) }, %struct.ossl_dispatch_st { i32 4, void ()* bitcast (i32 (i8*, i8*)* @xor_set_peer to void ()*) }, %struct.ossl_dispatch_st { i32 5, void ()* bitcast (void (i8*)* @xor_freectx to void ()*) }, %struct.ossl_dispatch_st { i32 6, void ()* bitcast (i8* (i8*)* @xor_dupctx to void ()*) }, %struct.ossl_dispatch_st zeroinitializer], align 16
@xor_kem_functions = internal constant [8 x %struct.ossl_dispatch_st] [%struct.ossl_dispatch_st { i32 1, void ()* bitcast (i8* (i8*)* @xor_newctx to void ()*) }, %struct.ossl_dispatch_st { i32 6, void ()* bitcast (void (i8*)* @xor_freectx to void ()*) }, %struct.ossl_dispatch_st { i32 7, void ()* bitcast (i8* (i8*)* @xor_dupctx to void ()*) }, %struct.ossl_dispatch_st { i32 2, void ()* bitcast (i32 (i8*, i8*, %struct.ossl_param_st*)* @xor_init to void ()*) }, %struct.ossl_dispatch_st { i32 3, void ()* bitcast (i32 (i8*, i8*, i64*, i8*, i64*)* @xor_encapsulate to void ()*) }, %struct.ossl_dispatch_st { i32 4, void ()* bitcast (i32 (i8*, i8*, %struct.ossl_param_st*)* @xor_init to void ()*) }, %struct.ossl_dispatch_st { i32 5, void ()* bitcast (i32 (i8*, i8*, i64*, i8*, i64)* @xor_decapsulate to void ()*) }, %struct.ossl_dispatch_st zeroinitializer], align 16
@.str.11 = private unnamed_addr constant [6 x i8] c"dummy\00", align 1
@.str.12 = private unnamed_addr constant [10 x i8] c"TLS-GROUP\00", align 1
@xor_group_params = internal constant [11 x %struct.ossl_param_st] [%struct.ossl_param_st { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.14, i32 0, i32 0), i32 4, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i32 0, i32 0), i64 9, i64 -1 }, %struct.ossl_param_st { i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.16, i32 0, i32 0), i32 4, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i32 0, i32 0), i64 13, i64 -1 }, %struct.ossl_param_st { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i32 0, i32 0), i32 4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), i64 4, i64 -1 }, %struct.ossl_param_st { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.18, i32 0, i32 0), i32 2, i8* bitcast (%struct.tls_group_st* @xor_group to i8*), i64 4, i64 -1 }, %struct.ossl_param_st { i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.19, i32 0, i32 0), i32 2, i8* getelementptr (i8, i8* bitcast (%struct.tls_group_st* @xor_group to i8*), i64 4), i64 4, i64 -1 }, %struct.ossl_param_st { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.20, i32 0, i32 0), i32 1, i8* getelementptr (i8, i8* bitcast (%struct.tls_group_st* @xor_group to i8*), i64 8), i64 4, i64 -1 }, %struct.ossl_param_st { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.21, i32 0, i32 0), i32 1, i8* getelementptr (i8, i8* bitcast (%struct.tls_group_st* @xor_group to i8*), i64 12), i64 4, i64 -1 }, %struct.ossl_param_st { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.22, i32 0, i32 0), i32 1, i8* getelementptr (i8, i8* bitcast (%struct.tls_group_st* @xor_group to i8*), i64 16), i64 4, i64 -1 }, %struct.ossl_param_st { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.23, i32 0, i32 0), i32 1, i8* getelementptr (i8, i8* bitcast (%struct.tls_group_st* @xor_group to i8*), i64 20), i64 4, i64 -1 }, %struct.ossl_param_st { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.24, i32 0, i32 0), i32 2, i8* getelementptr (i8, i8* bitcast (%struct.tls_group_st* @xor_group to i8*), i64 24), i64 4, i64 -1 }, %struct.ossl_param_st zeroinitializer], align 16
@xor_kemgroup_params = internal constant [11 x %struct.ossl_param_st] [%struct.ossl_param_st { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.14, i32 0, i32 0), i32 4, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.25, i32 0, i32 0), i64 12, i64 -1 }, %struct.ossl_param_st { i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.16, i32 0, i32 0), i32 4, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i32 0, i32 0), i64 16, i64 -1 }, %struct.ossl_param_st { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i32 0, i32 0), i32 4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), i64 4, i64 -1 }, %struct.ossl_param_st { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.18, i32 0, i32 0), i32 2, i8* bitcast (%struct.tls_group_st* @xor_kemgroup to i8*), i64 4, i64 -1 }, %struct.ossl_param_st { i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.19, i32 0, i32 0), i32 2, i8* getelementptr (i8, i8* bitcast (%struct.tls_group_st* @xor_kemgroup to i8*), i64 4), i64 4, i64 -1 }, %struct.ossl_param_st { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.20, i32 0, i32 0), i32 1, i8* getelementptr (i8, i8* bitcast (%struct.tls_group_st* @xor_kemgroup to i8*), i64 8), i64 4, i64 -1 }, %struct.ossl_param_st { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.21, i32 0, i32 0), i32 1, i8* getelementptr (i8, i8* bitcast (%struct.tls_group_st* @xor_kemgroup to i8*), i64 12), i64 4, i64 -1 }, %struct.ossl_param_st { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.22, i32 0, i32 0), i32 1, i8* getelementptr (i8, i8* bitcast (%struct.tls_group_st* @xor_kemgroup to i8*), i64 16), i64 4, i64 -1 }, %struct.ossl_param_st { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.23, i32 0, i32 0), i32 1, i8* getelementptr (i8, i8* bitcast (%struct.tls_group_st* @xor_kemgroup to i8*), i64 20), i64 4, i64 -1 }, %struct.ossl_param_st { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.24, i32 0, i32 0), i32 2, i8* getelementptr (i8, i8* bitcast (%struct.tls_group_st* @xor_kemgroup to i8*), i64 24), i64 4, i64 -1 }, %struct.ossl_param_st zeroinitializer], align 16
@.str.13 = private unnamed_addr constant [5 x i8] c"%s%d\00", align 1
@.str.14 = private unnamed_addr constant [15 x i8] c"tls-group-name\00", align 1
@.str.15 = private unnamed_addr constant [9 x i8] c"xorgroup\00", align 1
@.str.16 = private unnamed_addr constant [24 x i8] c"tls-group-name-internal\00", align 1
@.str.17 = private unnamed_addr constant [14 x i8] c"tls-group-alg\00", align 1
@.str.18 = private unnamed_addr constant [13 x i8] c"tls-group-id\00", align 1
@.str.19 = private unnamed_addr constant [19 x i8] c"tls-group-sec-bits\00", align 1
@.str.20 = private unnamed_addr constant [12 x i8] c"tls-min-tls\00", align 1
@.str.21 = private unnamed_addr constant [12 x i8] c"tls-max-tls\00", align 1
@.str.22 = private unnamed_addr constant [13 x i8] c"tls-min-dtls\00", align 1
@.str.23 = private unnamed_addr constant [13 x i8] c"tls-max-dtls\00", align 1
@.str.24 = private unnamed_addr constant [17 x i8] c"tls-group-is-kem\00", align 1
@.str.25 = private unnamed_addr constant [12 x i8] c"xorkemgroup\00", align 1
@switch.table.tls_prov_query = private unnamed_addr constant [5 x %struct.ossl_algorithm_st*] [%struct.ossl_algorithm_st* getelementptr inbounds ([2 x %struct.ossl_algorithm_st], [2 x %struct.ossl_algorithm_st]* @tls_prov_keymgmt, i64 0, i64 0), %struct.ossl_algorithm_st* getelementptr inbounds ([2 x %struct.ossl_algorithm_st], [2 x %struct.ossl_algorithm_st]* @tls_prov_keyexch, i64 0, i64 0), %struct.ossl_algorithm_st* null, %struct.ossl_algorithm_st* null, %struct.ossl_algorithm_st* getelementptr inbounds ([2 x %struct.ossl_algorithm_st], [2 x %struct.ossl_algorithm_st]* @tls_prov_kem, i64 0, i64 0)], align 8

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @tls_provider_init(%struct.ossl_core_handle_st* nocapture noundef readnone %handle, %struct.ossl_dispatch_st* nocapture noundef readnone %in, %struct.ossl_dispatch_st** nocapture noundef writeonly %out, i8** nocapture noundef writeonly %provctx) local_unnamed_addr #0 {
entry:
  %call = tail call %struct.ossl_lib_ctx_st* @OSSL_LIB_CTX_new() #10
  %0 = bitcast i8** %provctx to %struct.ossl_lib_ctx_st**
  store %struct.ossl_lib_ctx_st* %call, %struct.ossl_lib_ctx_st** %0, align 8, !tbaa !3
  %call1 = tail call fastcc i32 @randomize_tls_group_id(%struct.ossl_lib_ctx_st* noundef %call) #11
  store i32 %call1, i32* getelementptr inbounds (%struct.tls_group_st, %struct.tls_group_st* @xor_group, i64 0, i32 0), align 4, !tbaa !7
  %call2 = tail call fastcc i32 @randomize_tls_group_id(%struct.ossl_lib_ctx_st* noundef %call) #11
  store i32 %call2, i32* getelementptr inbounds (%struct.tls_group_st, %struct.tls_group_st* @xor_kemgroup, i64 0, i32 0), align 4, !tbaa !7
  store %struct.ossl_dispatch_st* getelementptr inbounds ([4 x %struct.ossl_dispatch_st], [4 x %struct.ossl_dispatch_st]* @tls_prov_dispatch_table, i64 0, i64 0), %struct.ossl_dispatch_st** %out, align 8, !tbaa !3
  ret i32 1
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

declare dso_local %struct.ossl_lib_ctx_st* @OSSL_LIB_CTX_new() local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @randomize_tls_group_id(%struct.ossl_lib_ctx_st* noundef %libctx) unnamed_addr #0 {
entry:
  %group_id = alloca i32, align 4
  %0 = bitcast i32* %group_id to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #12
  %call17 = call i32 @RAND_bytes_ex(%struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef nonnull %0, i64 noundef 4, i32 noundef 0) #10
  %tobool.not18 = icmp eq i32 %call17, 0
  br i1 %tobool.not18, label %cleanup, label %if.end

retry.loopexit:                                   ; preds = %for.body
  %call = call i32 @RAND_bytes_ex(%struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef nonnull %0, i64 noundef 4, i32 noundef 0) #10
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry, %retry.loopexit
  %1 = load i32, i32* %group_id, align 4, !tbaa !10
  %rem = urem i32 %1, 255
  %add = or i32 %rem, 65024
  store i32 %add, i32* %group_id, align 4, !tbaa !10
  %2 = load i32, i32* @randomize_tls_group_id.in_mem, align 4, !tbaa !10
  %cmp12 = icmp sgt i32 %2, 0
  br i1 %cmp12, label %for.body.preheader, label %for.end

for.body.preheader:                               ; preds = %if.end
  %wide.trip.count = zext i32 %2 to i64
  br label %for.body

for.cond:                                         ; preds = %for.body
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %for.end, label %for.body, !llvm.loop !11

for.body:                                         ; preds = %for.body.preheader, %for.cond
  %indvars.iv = phi i64 [ 0, %for.body.preheader ], [ %indvars.iv.next, %for.cond ]
  %arrayidx = getelementptr inbounds [10 x i32], [10 x i32]* @randomize_tls_group_id.mem, i64 0, i64 %indvars.iv
  %3 = load i32, i32* %arrayidx, align 4, !tbaa !10
  %cmp1 = icmp eq i32 %3, %add
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br i1 %cmp1, label %retry.loopexit, label %for.cond

for.end:                                          ; preds = %if.end, %for.cond
  %inc4 = add nsw i32 %2, 1
  store i32 %inc4, i32* @randomize_tls_group_id.in_mem, align 4, !tbaa !10
  %idxprom5 = sext i32 %2 to i64
  %arrayidx6 = getelementptr inbounds [10 x i32], [10 x i32]* @randomize_tls_group_id.mem, i64 0, i64 %idxprom5
  store i32 %add, i32* %arrayidx6, align 4, !tbaa !10
  br label %cleanup

cleanup:                                          ; preds = %retry.loopexit, %entry, %for.end
  %retval.0 = phi i32 [ %add, %for.end ], [ 0, %entry ], [ 0, %retry.loopexit ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #12
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

declare dso_local i32 @RAND_bytes_ex(%struct.ossl_lib_ctx_st* noundef, i8* noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal void @tls_prov_teardown(i8* noundef %provctx) #0 {
entry:
  %0 = bitcast i8* %provctx to %struct.ossl_lib_ctx_st*
  tail call void @OSSL_LIB_CTX_free(%struct.ossl_lib_ctx_st* noundef %0) #10
  br label %for.body

for.body:                                         ; preds = %entry, %for.body
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.next, %for.body ]
  %arrayidx = getelementptr inbounds [50 x i8*], [50 x i8*]* @dummy_group_names, i64 0, i64 %indvars.iv
  %1 = load i8*, i8** %arrayidx, align 8, !tbaa !3
  tail call void @CRYPTO_free(i8* noundef %1, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 790) #10
  store i8* null, i8** %arrayidx, align 8, !tbaa !3
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 50
  br i1 %exitcond.not, label %for.end, label %for.body, !llvm.loop !13

for.end:                                          ; preds = %for.body
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define internal %struct.ossl_algorithm_st* @tls_prov_query(i8* nocapture noundef readnone %provctx, i32 noundef %operation_id, i32* nocapture noundef writeonly %no_cache) #3 {
entry:
  store i32 0, i32* %no_cache, align 4, !tbaa !10
  %switch.tableidx = add i32 %operation_id, -10
  %0 = icmp ult i32 %switch.tableidx, 5
  br i1 %0, label %switch.lookup, label %return

switch.lookup:                                    ; preds = %entry
  %1 = sext i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds [5 x %struct.ossl_algorithm_st*], [5 x %struct.ossl_algorithm_st*]* @switch.table.tls_prov_query, i64 0, i64 %1
  %switch.load = load %struct.ossl_algorithm_st*, %struct.ossl_algorithm_st** %switch.gep, align 8
  br label %return

return:                                           ; preds = %entry, %switch.lookup
  %retval.0 = phi %struct.ossl_algorithm_st* [ %switch.load, %switch.lookup ], [ null, %entry ]
  ret %struct.ossl_algorithm_st* %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @tls_prov_get_capabilities(i8* nocapture noundef readnone %provctx, i8* noundef readonly %capability, i32 (%struct.ossl_param_st*, i8*)* nocapture noundef readonly %cb, i8* noundef %arg) #0 {
entry:
  %dummygroup = alloca [11 x %struct.ossl_param_st], align 16
  %call = tail call i64 @strlen(i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i64 0, i64 0)) #13
  %add = add i64 %call, 3
  %call1 = tail call i32 @strcmp(i8* noundef %capability, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i64 0, i64 0)) #13
  %cmp.not = icmp eq i32 %call1, 0
  br i1 %cmp.not, label %if.end, label %cleanup31

if.end:                                           ; preds = %entry
  %call2 = tail call i32 %cb(%struct.ossl_param_st* noundef getelementptr inbounds ([11 x %struct.ossl_param_st], [11 x %struct.ossl_param_st]* @xor_group_params, i64 0, i64 0), i8* noundef %arg) #10
  %call3 = tail call i32 %cb(%struct.ossl_param_st* noundef getelementptr inbounds ([11 x %struct.ossl_param_st], [11 x %struct.ossl_param_st]* @xor_kemgroup_params, i64 0, i64 0), i8* noundef %arg) #10
  %and = and i32 %call3, %call2
  %0 = bitcast [11 x %struct.ossl_param_st]* %dummygroup to i8*
  %arraydecay = getelementptr inbounds [11 x %struct.ossl_param_st], [11 x %struct.ossl_param_st]* %dummygroup, i64 0, i64 0
  %data = getelementptr inbounds [11 x %struct.ossl_param_st], [11 x %struct.ossl_param_st]* %dummygroup, i64 0, i64 0, i32 2
  %data_size = getelementptr inbounds [11 x %struct.ossl_param_st], [11 x %struct.ossl_param_st]* %dummygroup, i64 0, i64 0, i32 3
  br label %for.body

for.body:                                         ; preds = %if.end, %for.inc
  %indvars.iv = phi i64 [ 0, %if.end ], [ %indvars.iv.next, %for.inc ]
  %ret.061 = phi i32 [ %and, %if.end ], [ %and30, %for.inc ]
  call void @llvm.lifetime.start.p0i8(i64 440, i8* nonnull %0) #12
  %call5 = call i8* @memcpy(i8* noundef nonnull %0, i8* noundef bitcast ([11 x %struct.ossl_param_st]* @xor_group_params to i8*), i64 noundef 440) #10
  %arrayidx = getelementptr inbounds [50 x i8*], [50 x i8*]* @dummy_group_names, i64 0, i64 %indvars.iv
  %1 = load i8*, i8** %arrayidx, align 8, !tbaa !3
  %cmp6 = icmp eq i8* %1, null
  br i1 %cmp6, label %if.then7, label %for.inc

if.then7:                                         ; preds = %for.body
  %call8 = call i8* @CRYPTO_zalloc(i64 noundef %add, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 204) #10
  store i8* %call8, i8** %arrayidx, align 8, !tbaa !3
  %cmp13 = icmp eq i8* %call8, null
  br i1 %cmp13, label %cleanup, label %if.end15

if.end15:                                         ; preds = %if.then7
  %2 = trunc i64 %indvars.iv to i32
  %call18 = call i32 (i8*, i64, i8*, ...) @BIO_snprintf(i8* noundef nonnull %call8, i64 noundef %add, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0), i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i64 0, i64 0), i32 noundef %2) #10
  %.pre = load i8*, i8** %arrayidx, align 8, !tbaa !3
  br label %for.inc

cleanup:                                          ; preds = %if.then7
  call void @llvm.lifetime.end.p0i8(i64 440, i8* nonnull %0) #12
  br label %cleanup31

for.inc:                                          ; preds = %for.body, %if.end15
  %3 = phi i8* [ %1, %for.body ], [ %.pre, %if.end15 ]
  store i8* %3, i8** %data, align 16, !tbaa !14
  %call25 = call i64 @strlen(i8* noundef %3) #13
  %add26 = add i64 %call25, 1
  store i64 %add26, i64* %data_size, align 8, !tbaa !17
  %call29 = call i32 %cb(%struct.ossl_param_st* noundef nonnull %arraydecay, i8* noundef %arg) #10
  %and30 = and i32 %call29, %ret.061
  call void @llvm.lifetime.end.p0i8(i64 440, i8* nonnull %0) #12
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 50
  br i1 %exitcond.not, label %cleanup31, label %for.body, !llvm.loop !18

cleanup31:                                        ; preds = %for.inc, %cleanup, %entry
  %retval.2 = phi i32 [ 0, %cleanup ], [ 0, %entry ], [ %and30, %for.inc ]
  ret i32 %retval.2
}

declare dso_local void @OSSL_LIB_CTX_free(%struct.ossl_lib_ctx_st* noundef) local_unnamed_addr #2

declare dso_local void @CRYPTO_free(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal i8* @xor_newdata(i8* nocapture noundef readnone %provctx) #0 {
entry:
  %call = tail call i8* @CRYPTO_zalloc(i64 noundef 72, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 456) #10
  ret i8* %call
}

; Function Attrs: noinline nounwind uwtable
define internal i8* @xor_gen_init(i8* noundef %provctx, i32 noundef %selection, %struct.ossl_param_st* noundef %params) #0 {
entry:
  %and = and i32 %selection, 7
  %cmp = icmp eq i32 %and, 0
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call = tail call i8* @CRYPTO_zalloc(i64 noundef 16, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 591) #10
  %cmp1.not = icmp eq i8* %call, null
  br i1 %cmp1.not, label %if.end4, label %if.then2

if.then2:                                         ; preds = %if.end
  %selection3 = bitcast i8* %call to i32*
  store i32 %selection, i32* %selection3, align 8, !tbaa !19
  br label %if.end4

if.end4:                                          ; preds = %if.then2, %if.end
  %libctx = getelementptr inbounds i8, i8* %call, i64 8
  %0 = bitcast i8* %libctx to i8**
  store i8* %provctx, i8** %0, align 8, !tbaa !21
  %call5 = tail call i32 @xor_gen_set_params(i8* noundef %call, %struct.ossl_param_st* noundef %params) #11
  %tobool.not = icmp eq i32 %call5, 0
  br i1 %tobool.not, label %if.then6, label %cleanup

if.then6:                                         ; preds = %if.end4
  tail call void @CRYPTO_free(i8* noundef nonnull %call, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 598) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %entry, %if.then6
  %retval.0 = phi i8* [ null, %if.then6 ], [ null, %entry ], [ %call, %if.end4 ]
  ret i8* %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @xor_gen_set_params(i8* noundef readnone %genctx, %struct.ossl_param_st* noundef %params) #0 {
entry:
  %cmp = icmp eq i8* %genctx, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call = tail call %struct.ossl_param_st* @OSSL_PARAM_locate_const(%struct.ossl_param_st* noundef %params, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0)) #10
  %cmp1.not = icmp eq %struct.ossl_param_st* %call, null
  br i1 %cmp1.not, label %if.end11, label %if.then2

if.then2:                                         ; preds = %if.end
  %data_type = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %call, i64 0, i32 1
  %0 = load i32, i32* %data_type, align 8, !tbaa !22
  %cmp3.not = icmp eq i32 %0, 4
  br i1 %cmp3.not, label %lor.lhs.false, label %cleanup

lor.lhs.false:                                    ; preds = %if.then2
  %data = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %call, i64 0, i32 2
  %1 = load i8*, i8** %data, align 8, !tbaa !14
  %call4 = tail call i32 @strcmp(i8* noundef %1, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0)) #13
  %cmp5.not = icmp eq i32 %call4, 0
  br i1 %cmp5.not, label %if.end11, label %land.lhs.true

land.lhs.true:                                    ; preds = %lor.lhs.false
  %call7 = tail call i32 @strcmp(i8* noundef %1, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0)) #13
  %cmp8.not = icmp eq i32 %call7, 0
  br i1 %cmp8.not, label %if.end11, label %cleanup

if.end11:                                         ; preds = %lor.lhs.false, %land.lhs.true, %if.end
  br label %cleanup

cleanup:                                          ; preds = %if.then2, %land.lhs.true, %entry, %if.end11
  %retval.0 = phi i32 [ 1, %if.end11 ], [ 0, %entry ], [ 0, %land.lhs.true ], [ 0, %if.then2 ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal %struct.ossl_param_st* @xor_gen_settable_params(i8* nocapture noundef readnone %genctx, i8* nocapture noundef readnone %provctx) #4 {
entry:
  ret %struct.ossl_param_st* getelementptr inbounds ([2 x %struct.ossl_param_st], [2 x %struct.ossl_param_st]* @xor_gen_settable_params.settable, i64 0, i64 0)
}

; Function Attrs: noinline nounwind uwtable
define internal i8* @xor_gen(i8* nocapture noundef readonly %genctx, i32 (%struct.ossl_param_st*, i8*)* nocapture noundef readnone %osslcb, i8* nocapture noundef readnone %cbarg) #0 {
entry:
  %call = tail call i8* @CRYPTO_zalloc(i64 noundef 72, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 636) #10
  %cmp = icmp eq i8* %call, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %selection = bitcast i8* %genctx to i32*
  %0 = load i32, i32* %selection, align 8, !tbaa !19
  %and = and i32 %0, 3
  %cmp1.not = icmp eq i32 %and, 0
  br i1 %cmp1.not, label %cleanup, label %if.then2

if.then2:                                         ; preds = %if.end
  %libctx = getelementptr inbounds i8, i8* %genctx, i64 8
  %1 = bitcast i8* %libctx to %struct.ossl_lib_ctx_st**
  %2 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** %1, align 8, !tbaa !21
  %call3 = tail call i32 @RAND_bytes_ex(%struct.ossl_lib_ctx_st* noundef %2, i8* noundef nonnull %call, i64 noundef 32, i32 noundef 0) #10
  %cmp4 = icmp slt i32 %call3, 1
  br i1 %cmp4, label %if.then5, label %vector.body

vector.body:                                      ; preds = %if.then2
  %pubkey = getelementptr inbounds i8, i8* %call, i64 32
  %3 = bitcast i8* %call to <16 x i8>*
  %wide.load = load <16 x i8>, <16 x i8>* %3, align 1, !tbaa !23
  %4 = xor <16 x i8> %wide.load, <i8 -45, i8 107, i8 84, i8 -20, i8 91, i8 -84, i8 -119, i8 -106, i8 -116, i8 44, i8 102, i8 -91, i8 103, i8 13, i8 -29, i8 -35>
  %5 = bitcast i8* %pubkey to <16 x i8>*
  store <16 x i8> %4, <16 x i8>* %5, align 1, !tbaa !23
  %6 = getelementptr inbounds i8, i8* %call, i64 16
  %7 = bitcast i8* %6 to <16 x i8>*
  %wide.load.1 = load <16 x i8>, <16 x i8>* %7, align 1, !tbaa !23
  %8 = xor <16 x i8> %wide.load.1, <i8 67, i8 105, i8 -68, i8 -125, i8 61, i8 96, i8 -57, i8 -72, i8 43, i8 28, i8 90, i8 -3, i8 -75, i8 -51, i8 -48, i8 -8>
  %9 = getelementptr inbounds i8, i8* %call, i64 48
  %10 = bitcast i8* %9 to <16 x i8>*
  store <16 x i8> %8, <16 x i8>* %10, align 1, !tbaa !23
  %hasprivkey = getelementptr inbounds i8, i8* %call, i64 64
  %11 = bitcast i8* %hasprivkey to i32*
  store i32 1, i32* %11, align 4, !tbaa !24
  %haspubkey = getelementptr inbounds i8, i8* %call, i64 68
  %12 = bitcast i8* %haspubkey to i32*
  store i32 1, i32* %12, align 4, !tbaa !26
  br label %cleanup

if.then5:                                         ; preds = %if.then2
  tail call void @CRYPTO_free(i8* noundef nonnull %call, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 644) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %vector.body, %entry, %if.then5
  %retval.0 = phi i8* [ null, %if.then5 ], [ null, %entry ], [ %call, %vector.body ], [ %call, %if.end ]
  ret i8* %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal void @xor_gen_cleanup(i8* noundef %genctx) #0 {
entry:
  tail call void @CRYPTO_free(i8* noundef %genctx, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 734) #10
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @xor_get_params(i8* noundef %vkey, %struct.ossl_param_st* noundef %params) #0 {
entry:
  %call = tail call %struct.ossl_param_st* @OSSL_PARAM_locate(%struct.ossl_param_st* noundef %params, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0)) #10
  %cmp.not = icmp eq %struct.ossl_param_st* %call, null
  br i1 %cmp.not, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %call1 = tail call i32 @OSSL_PARAM_set_int(%struct.ossl_param_st* noundef nonnull %call, i32 noundef 32) #10
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %land.lhs.true, %entry
  %call2 = tail call %struct.ossl_param_st* @OSSL_PARAM_locate(%struct.ossl_param_st* noundef %params, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0)) #10
  %cmp3.not = icmp eq %struct.ossl_param_st* %call2, null
  br i1 %cmp3.not, label %if.end8, label %land.lhs.true4

land.lhs.true4:                                   ; preds = %if.end
  %0 = load i32, i32* getelementptr inbounds (%struct.tls_group_st, %struct.tls_group_st* @xor_group, i64 0, i32 1), align 4, !tbaa !27
  %call5 = tail call i32 @OSSL_PARAM_set_int(%struct.ossl_param_st* noundef nonnull %call2, i32 noundef %0) #10
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %cleanup, label %if.end8

if.end8:                                          ; preds = %land.lhs.true4, %if.end
  %call9 = tail call %struct.ossl_param_st* @OSSL_PARAM_locate(%struct.ossl_param_st* noundef %params, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i64 0, i64 0)) #10
  %cmp10.not = icmp eq %struct.ossl_param_st* %call9, null
  br i1 %cmp10.not, label %cleanup, label %if.then11

if.then11:                                        ; preds = %if.end8
  %data_type = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %call9, i64 0, i32 1
  %1 = load i32, i32* %data_type, align 8, !tbaa !22
  %cmp12.not = icmp eq i32 %1, 5
  br i1 %cmp12.not, label %if.end14, label %cleanup

if.end14:                                         ; preds = %if.then11
  %return_size = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %call9, i64 0, i32 4
  store i64 32, i64* %return_size, align 8, !tbaa !28
  %data = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %call9, i64 0, i32 2
  %2 = load i8*, i8** %data, align 8, !tbaa !14
  %cmp15.not = icmp eq i8* %2, null
  br i1 %cmp15.not, label %cleanup, label %land.lhs.true16

land.lhs.true16:                                  ; preds = %if.end14
  %data_size = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %call9, i64 0, i32 3
  %3 = load i64, i64* %data_size, align 8, !tbaa !17
  %cmp17 = icmp ugt i64 %3, 31
  br i1 %cmp17, label %if.then18, label %cleanup

if.then18:                                        ; preds = %land.lhs.true16
  %pubkey = getelementptr inbounds i8, i8* %vkey, i64 32
  %call20 = tail call i8* @memcpy(i8* noundef nonnull %2, i8* noundef nonnull %pubkey, i64 noundef 32) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %if.then18, %land.lhs.true16, %if.end14, %if.then11, %land.lhs.true4, %land.lhs.true
  %retval.0 = phi i32 [ 0, %land.lhs.true ], [ 0, %land.lhs.true4 ], [ 0, %if.then11 ], [ 1, %if.end14 ], [ 1, %land.lhs.true16 ], [ 1, %if.then18 ], [ 1, %if.end8 ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal %struct.ossl_param_st* @xor_gettable_params(i8* nocapture noundef readnone %provctx) #4 {
entry:
  ret %struct.ossl_param_st* getelementptr inbounds ([4 x %struct.ossl_param_st], [4 x %struct.ossl_param_st]* @xor_params, i64 0, i64 0)
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @xor_set_params(i8* noundef %vkey, %struct.ossl_param_st* noundef %params) #0 {
entry:
  %call = tail call %struct.ossl_param_st* @OSSL_PARAM_locate_const(%struct.ossl_param_st* noundef %params, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i64 0, i64 0)) #10
  %cmp.not = icmp eq %struct.ossl_param_st* %call, null
  br i1 %cmp.not, label %cleanup, label %if.then

if.then:                                          ; preds = %entry
  %data_type = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %call, i64 0, i32 1
  %0 = load i32, i32* %data_type, align 8, !tbaa !22
  %cmp1.not = icmp eq i32 %0, 5
  br i1 %cmp1.not, label %lor.lhs.false, label %cleanup

lor.lhs.false:                                    ; preds = %if.then
  %data_size = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %call, i64 0, i32 3
  %1 = load i64, i64* %data_size, align 8, !tbaa !17
  %cmp2.not = icmp eq i64 %1, 32
  br i1 %cmp2.not, label %if.end, label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %pubkey = getelementptr inbounds i8, i8* %vkey, i64 32
  %data = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %call, i64 0, i32 2
  %2 = load i8*, i8** %data, align 8, !tbaa !14
  %call4 = tail call i8* @memcpy(i8* noundef nonnull %pubkey, i8* noundef %2, i64 noundef 32) #10
  %haspubkey = getelementptr inbounds i8, i8* %vkey, i64 68
  %3 = bitcast i8* %haspubkey to i32*
  store i32 1, i32* %3, align 4, !tbaa !26
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end, %if.then, %lor.lhs.false
  %retval.0 = phi i32 [ 0, %lor.lhs.false ], [ 0, %if.then ], [ 1, %if.end ], [ 1, %entry ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal %struct.ossl_param_st* @xor_settable_params(i8* nocapture noundef readnone %provctx) #4 {
entry:
  ret %struct.ossl_param_st* getelementptr inbounds ([2 x %struct.ossl_param_st], [2 x %struct.ossl_param_st]* @xor_known_settable_params, i64 0, i64 0)
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal i32 @xor_has(i8* noundef readonly %vkey, i32 noundef %selection) #5 {
entry:
  %cmp.not = icmp eq i8* %vkey, null
  br i1 %cmp.not, label %if.end13, label %if.then

if.then:                                          ; preds = %entry
  %and = and i32 %selection, 2
  %cmp1.not = icmp eq i32 %and, 0
  br i1 %cmp1.not, label %if.end.thread, label %if.end

if.end:                                           ; preds = %if.then
  %haspubkey = getelementptr inbounds i8, i8* %vkey, i64 68
  %0 = bitcast i8* %haspubkey to i32*
  %1 = load i32, i32* %0, align 4, !tbaa !26
  %tobool3 = icmp ne i32 %1, 0
  %and4 = and i32 %selection, 1
  %cmp5.not = icmp eq i32 %and4, 0
  %tobool3.not = xor i1 %tobool3, true
  %brmerge = select i1 %cmp5.not, i1 true, i1 %tobool3.not
  %tobool3.mux = select i1 %cmp5.not, i1 %tobool3, i1 false
  br i1 %brmerge, label %if.end13, label %land.rhs8

if.end.thread:                                    ; preds = %if.then
  %and422 = and i32 %selection, 1
  %cmp5.not23 = icmp eq i32 %and422, 0
  br i1 %cmp5.not23, label %if.end13, label %land.rhs8

land.rhs8:                                        ; preds = %if.end, %if.end.thread
  %hasprivkey = getelementptr inbounds i8, i8* %vkey, i64 64
  %2 = bitcast i8* %hasprivkey to i32*
  %3 = load i32, i32* %2, align 4, !tbaa !24
  %tobool9 = icmp ne i32 %3, 0
  br label %if.end13

if.end13:                                         ; preds = %if.end, %if.end.thread, %land.rhs8, %entry
  %ok.1.shrunk = phi i1 [ %tobool3.mux, %if.end ], [ false, %entry ], [ %tobool9, %land.rhs8 ], [ true, %if.end.thread ]
  %ok.1 = zext i1 %ok.1.shrunk to i32
  ret i32 %ok.1
}

; Function Attrs: noinline nounwind uwtable
define internal i8* @xor_dup(i8* noundef %vfromkey, i32 noundef %selection) #0 {
entry:
  %call = tail call i8* @xor_newdata(i8* noundef null) #11
  %0 = bitcast i8* %call to %struct.xorkey_st*
  %cmp = icmp ne i8* %call, null
  %cmp1 = icmp ne i8* %vfromkey, null
  %or.cond = and i1 %cmp1, %cmp
  br i1 %or.cond, label %if.then, label %if.then27

if.then:                                          ; preds = %entry
  %and = and i32 %selection, 2
  %cmp2.not = icmp eq i32 %and, 0
  br i1 %cmp2.not, label %if.end10, label %if.then3

if.then3:                                         ; preds = %if.then
  %haspubkey = getelementptr inbounds i8, i8* %vfromkey, i64 68
  %1 = bitcast i8* %haspubkey to i32*
  %2 = load i32, i32* %1, align 4, !tbaa !26
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %if.end10.sink.split, label %if.then4

if.then4:                                         ; preds = %if.then3
  %pubkey = getelementptr inbounds i8, i8* %call, i64 32
  %pubkey5 = getelementptr inbounds i8, i8* %vfromkey, i64 32
  %call7 = tail call i8* @memcpy(i8* noundef nonnull %pubkey, i8* noundef nonnull %pubkey5, i64 noundef 32) #10
  br label %if.end10.sink.split

if.end10.sink.split:                              ; preds = %if.then3, %if.then4
  %.sink = phi i32 [ 1, %if.then4 ], [ 0, %if.then3 ]
  %haspubkey8 = getelementptr inbounds i8, i8* %call, i64 68
  %3 = bitcast i8* %haspubkey8 to i32*
  store i32 %.sink, i32* %3, align 4, !tbaa !26
  br label %if.end10

if.end10:                                         ; preds = %if.end10.sink.split, %if.then
  %and11 = and i32 %selection, 1
  %cmp12.not = icmp eq i32 %and11, 0
  br i1 %cmp12.not, label %if.end28, label %if.then13

if.then13:                                        ; preds = %if.end10
  %hasprivkey = getelementptr inbounds i8, i8* %vfromkey, i64 64
  %4 = bitcast i8* %hasprivkey to i32*
  %5 = load i32, i32* %4, align 4, !tbaa !24
  %tobool14.not = icmp eq i32 %5, 0
  br i1 %tobool14.not, label %if.else21, label %if.then15

if.then15:                                        ; preds = %if.then13
  %call19 = tail call i8* @memcpy(i8* noundef nonnull %call, i8* noundef nonnull %vfromkey, i64 noundef 32) #10
  %hasprivkey20 = getelementptr inbounds i8, i8* %call, i64 64
  %6 = bitcast i8* %hasprivkey20 to i32*
  store i32 1, i32* %6, align 4, !tbaa !24
  br label %if.end28

if.else21:                                        ; preds = %if.then13
  %hasprivkey22 = getelementptr inbounds i8, i8* %call, i64 64
  %7 = bitcast i8* %hasprivkey22 to i32*
  store i32 0, i32* %7, align 4, !tbaa !24
  br label %if.end28

if.then27:                                        ; preds = %entry
  tail call void @xor_freedata(i8* noundef %call) #11
  br label %if.end28

if.end28:                                         ; preds = %if.end10, %if.then15, %if.else21, %if.then27
  %tokey.0 = phi %struct.xorkey_st* [ null, %if.then27 ], [ %0, %if.else21 ], [ %0, %if.then15 ], [ %0, %if.end10 ]
  %8 = getelementptr %struct.xorkey_st, %struct.xorkey_st* %tokey.0, i64 0, i32 0, i64 0
  ret i8* %8
}

; Function Attrs: noinline nounwind uwtable
define internal void @xor_freedata(i8* noundef %keydata) #0 {
entry:
  tail call void @CRYPTO_free(i8* noundef %keydata, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 461) #10
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @xor_import(i8* noundef %vkey, i32 noundef %select, %struct.ossl_param_st* noundef %params) #0 {
entry:
  %privkey = alloca [32 x i8], align 16
  %pubkey = alloca [32 x i8], align 16
  %pprivkey = alloca i8*, align 8
  %ppubkey = alloca i8*, align 8
  %priv_len = alloca i64, align 8
  %pub_len = alloca i64, align 8
  %0 = getelementptr inbounds [32 x i8], [32 x i8]* %privkey, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %0) #12
  %1 = getelementptr inbounds [32 x i8], [32 x i8]* %pubkey, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %1) #12
  %2 = bitcast i8** %pprivkey to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #12
  store i8* %0, i8** %pprivkey, align 8, !tbaa !3
  %3 = bitcast i8** %ppubkey to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %3) #12
  store i8* %1, i8** %ppubkey, align 8, !tbaa !3
  %4 = bitcast i64* %priv_len to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #12
  store i64 0, i64* %priv_len, align 8, !tbaa !29
  %5 = bitcast i64* %pub_len to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %5) #12
  store i64 0, i64* %pub_len, align 8, !tbaa !29
  %cmp = icmp eq i8* %vkey, null
  %and = and i32 %select, 3
  %cmp2 = icmp eq i32 %and, 0
  %or.cond = or i1 %cmp, %cmp2
  br i1 %or.cond, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call = call i8* @memset(i8* noundef nonnull %0, i32 noundef 0, i64 noundef 32) #10
  %call5 = call i8* @memset(i8* noundef nonnull %1, i32 noundef 0, i64 noundef 32) #10
  %call6 = call %struct.ossl_param_st* @OSSL_PARAM_locate_const(%struct.ossl_param_st* noundef %params, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0)) #10
  %call7 = call %struct.ossl_param_st* @OSSL_PARAM_locate_const(%struct.ossl_param_st* noundef %params, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0)) #10
  %cmp8.not = icmp eq %struct.ossl_param_st* %call6, null
  br i1 %cmp8.not, label %lor.lhs.false10, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  %call9 = call i32 @OSSL_PARAM_get_octet_string(%struct.ossl_param_st* noundef nonnull %call6, i8** noundef nonnull %pprivkey, i64 noundef 32, i64* noundef nonnull %priv_len) #10
  %tobool.not = icmp eq i32 %call9, 0
  br i1 %tobool.not, label %cleanup, label %lor.lhs.false10

lor.lhs.false10:                                  ; preds = %land.lhs.true, %if.end
  %cmp11.not = icmp eq %struct.ossl_param_st* %call7, null
  br i1 %cmp11.not, label %if.end16, label %land.lhs.true12

land.lhs.true12:                                  ; preds = %lor.lhs.false10
  %call13 = call i32 @OSSL_PARAM_get_octet_string(%struct.ossl_param_st* noundef nonnull %call7, i8** noundef nonnull %ppubkey, i64 noundef 32, i64* noundef nonnull %pub_len) #10
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %cleanup, label %if.end16

if.end16:                                         ; preds = %land.lhs.true12, %lor.lhs.false10
  %6 = load i64, i64* %priv_len, align 8, !tbaa !29
  %cmp17.not = icmp eq i64 %6, 0
  br i1 %cmp17.not, label %if.end23, label %if.then18

if.then18:                                        ; preds = %if.end16
  %call22 = call i8* @memcpy(i8* noundef nonnull %vkey, i8* noundef nonnull %0, i64 noundef %6) #10
  %hasprivkey = getelementptr inbounds i8, i8* %vkey, i64 64
  %7 = bitcast i8* %hasprivkey to i32*
  store i32 1, i32* %7, align 4, !tbaa !24
  br label %if.end23

if.end23:                                         ; preds = %if.then18, %if.end16
  %8 = load i64, i64* %pub_len, align 8, !tbaa !29
  %cmp24.not = icmp eq i64 %8, 0
  br i1 %cmp24.not, label %cleanup, label %if.then25

if.then25:                                        ; preds = %if.end23
  %pubkey26 = getelementptr inbounds i8, i8* %vkey, i64 32
  %call29 = call i8* @memcpy(i8* noundef nonnull %pubkey26, i8* noundef nonnull %1, i64 noundef %8) #10
  %haspubkey = getelementptr inbounds i8, i8* %vkey, i64 68
  %9 = bitcast i8* %haspubkey to i32*
  store i32 1, i32* %9, align 4, !tbaa !26
  br label %cleanup

cleanup:                                          ; preds = %land.lhs.true12, %land.lhs.true, %if.then25, %if.end23, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ 0, %land.lhs.true12 ], [ 0, %land.lhs.true ], [ 1, %if.then25 ], [ 1, %if.end23 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %5) #12
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #12
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3) #12
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #12
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %1) #12
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #12
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal %struct.ossl_param_st* @xor_import_types(i32 noundef %select) #4 {
entry:
  %and = and i32 %select, 3
  %cmp.not = icmp eq i32 %and, 0
  %cond = select i1 %cmp.not, %struct.ossl_param_st* null, %struct.ossl_param_st* getelementptr inbounds ([3 x %struct.ossl_param_st], [3 x %struct.ossl_param_st]* @xor_key_types, i64 0, i64 0)
  ret %struct.ossl_param_st* %cond
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @xor_export(i8* noundef %vkey, i32 noundef %select, i32 (%struct.ossl_param_st*, i8*)* nocapture noundef readonly %param_cb, i8* noundef %cbarg) #0 {
entry:
  %params = alloca [3 x %struct.ossl_param_st], align 16
  %tmp4 = alloca %struct.ossl_param_st, align 8
  %tmp7 = alloca %struct.ossl_param_st, align 8
  %0 = bitcast [3 x %struct.ossl_param_st]* %params to i8*
  call void @llvm.lifetime.start.p0i8(i64 120, i8* nonnull %0) #12
  %cmp = icmp eq i8* %vkey, null
  %and = and i32 %select, 3
  %cmp1 = icmp eq i32 %and, 0
  %or.cond = or i1 %cmp, %cmp1
  br i1 %or.cond, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %arraydecay = getelementptr inbounds [3 x %struct.ossl_param_st], [3 x %struct.ossl_param_st]* %params, i64 0, i64 0
  %incdec.ptr = getelementptr inbounds [3 x %struct.ossl_param_st], [3 x %struct.ossl_param_st]* %params, i64 0, i64 1
  %params17 = getelementptr inbounds [3 x %struct.ossl_param_st], [3 x %struct.ossl_param_st]* %params, i64 0, i64 0
  call void @OSSL_PARAM_construct_octet_string(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %params17, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0), i8* noundef nonnull %vkey, i64 noundef 32) #10
  %incdec.ptr3 = getelementptr inbounds [3 x %struct.ossl_param_st], [3 x %struct.ossl_param_st]* %params, i64 0, i64 2
  %1 = bitcast %struct.ossl_param_st* %tmp4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %1) #12
  %pubkey = getelementptr inbounds i8, i8* %vkey, i64 32
  call void @OSSL_PARAM_construct_octet_string(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %tmp4, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0), i8* noundef nonnull %pubkey, i64 noundef 32) #10
  %2 = bitcast %struct.ossl_param_st* %incdec.ptr to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(40) %2, i8* noundef nonnull align 8 dereferenceable(40) %1, i64 40, i1 false), !tbaa.struct !30
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %1) #12
  %3 = bitcast %struct.ossl_param_st* %tmp7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %3) #12
  call void @OSSL_PARAM_construct_end(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %tmp7) #10
  %4 = bitcast %struct.ossl_param_st* %incdec.ptr3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(40) %4, i8* noundef nonnull align 8 dereferenceable(40) %3, i64 40, i1 false), !tbaa.struct !30
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %3) #12
  %call = call i32 %param_cb(%struct.ossl_param_st* noundef nonnull %arraydecay, i8* noundef %cbarg) #10
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %call, %if.end ], [ 0, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 120, i8* nonnull %0) #12
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal %struct.ossl_param_st* @xor_export_types(i32 noundef %select) #4 {
entry:
  %and = and i32 %select, 3
  %cmp.not = icmp eq i32 %and, 0
  %cond = select i1 %cmp.not, %struct.ossl_param_st* null, %struct.ossl_param_st* getelementptr inbounds ([3 x %struct.ossl_param_st], [3 x %struct.ossl_param_st]* @xor_key_types, i64 0, i64 0)
  ret %struct.ossl_param_st* %cond
}

declare dso_local i8* @CRYPTO_zalloc(i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare dso_local %struct.ossl_param_st* @OSSL_PARAM_locate_const(%struct.ossl_param_st* noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i32 @strcmp(i8* noundef, i8* noundef) local_unnamed_addr #6

declare dso_local %struct.ossl_param_st* @OSSL_PARAM_locate(%struct.ossl_param_st* noundef, i8* noundef) local_unnamed_addr #2

declare dso_local i32 @OSSL_PARAM_set_int(%struct.ossl_param_st* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare dso_local i8* @memcpy(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: nounwind
declare dso_local i8* @memset(i8* noundef, i32 noundef, i64 noundef) local_unnamed_addr #7

declare dso_local i32 @OSSL_PARAM_get_octet_string(%struct.ossl_param_st* noundef, i8** noundef, i64 noundef, i64* noundef) local_unnamed_addr #2

declare dso_local void @OSSL_PARAM_construct_octet_string(%struct.ossl_param_st* sret(%struct.ossl_param_st) align 8, i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #8

declare dso_local void @OSSL_PARAM_construct_end(%struct.ossl_param_st* sret(%struct.ossl_param_st) align 8) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal i8* @xor_newctx(i8* noundef %provctx) #0 {
entry:
  %call = tail call i8* @CRYPTO_zalloc(i64 noundef 24, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 232) #10
  %cmp = icmp eq i8* %call, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %provctx1 = getelementptr inbounds i8, i8* %call, i64 16
  %0 = bitcast i8* %provctx1 to i8**
  store i8* %provctx, i8** %0, align 8, !tbaa !31
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  ret i8* %call
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define internal i32 @xor_init(i8* noundef writeonly %vpxorctx, i8* noundef %vkey, %struct.ossl_param_st* nocapture noundef readnone %params) #3 {
entry:
  %cmp = icmp eq i8* %vpxorctx, null
  %cmp1 = icmp eq i8* %vkey, null
  %or.cond = or i1 %cmp, %cmp1
  br i1 %or.cond, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %0 = bitcast i8* %vpxorctx to i8**
  store i8* %vkey, i8** %0, align 8, !tbaa !33
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define internal i32 @xor_derive(i8* nocapture noundef readonly %vpxorctx, i8* noundef writeonly %secret, i64* nocapture noundef writeonly %secretlen, i64 noundef %outlen) #9 {
entry:
  %key = bitcast i8* %vpxorctx to %struct.xorkey_st**
  %0 = load %struct.xorkey_st*, %struct.xorkey_st** %key, align 8, !tbaa !33
  %cmp = icmp eq %struct.xorkey_st* %0, null
  br i1 %cmp, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %peerkey = getelementptr inbounds i8, i8* %vpxorctx, i64 8
  %1 = bitcast i8* %peerkey to %struct.xorkey_st**
  %2 = load %struct.xorkey_st*, %struct.xorkey_st** %1, align 8, !tbaa !34
  %cmp1 = icmp eq %struct.xorkey_st* %2, null
  br i1 %cmp1, label %cleanup, label %if.end

if.end:                                           ; preds = %lor.lhs.false
  store i64 32, i64* %secretlen, align 8, !tbaa !29
  %cmp2 = icmp eq i8* %secret, null
  br i1 %cmp2, label %cleanup, label %if.end4

if.end4:                                          ; preds = %if.end
  %cmp5 = icmp ult i64 %outlen, 32
  br i1 %cmp5, label %cleanup, label %for.body.preheader

for.body.preheader:                               ; preds = %if.end4
  %arrayidx32 = getelementptr inbounds %struct.xorkey_st, %struct.xorkey_st* %0, i64 0, i32 0, i64 0
  %3 = load i8, i8* %arrayidx32, align 1, !tbaa !23
  %arrayidx1233 = getelementptr inbounds %struct.xorkey_st, %struct.xorkey_st* %2, i64 0, i32 1, i64 0
  %4 = load i8, i8* %arrayidx1233, align 1, !tbaa !23
  %xor2834 = xor i8 %4, %3
  store i8 %xor2834, i8* %secret, align 1, !tbaa !23
  br label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body.for.body_crit_edge.1, %for.body.preheader
  %indvars.iv.next35 = phi i64 [ 1, %for.body.preheader ], [ %indvars.iv.next.1, %for.body.for.body_crit_edge.1 ]
  %.pre = load %struct.xorkey_st*, %struct.xorkey_st** %key, align 8, !tbaa !33
  %.pre31 = load %struct.xorkey_st*, %struct.xorkey_st** %1, align 8, !tbaa !34
  %arrayidx = getelementptr inbounds %struct.xorkey_st, %struct.xorkey_st* %.pre, i64 0, i32 0, i64 %indvars.iv.next35
  %5 = load i8, i8* %arrayidx, align 1, !tbaa !23
  %arrayidx12 = getelementptr inbounds %struct.xorkey_st, %struct.xorkey_st* %.pre31, i64 0, i32 1, i64 %indvars.iv.next35
  %6 = load i8, i8* %arrayidx12, align 1, !tbaa !23
  %xor28 = xor i8 %6, %5
  %arrayidx16 = getelementptr inbounds i8, i8* %secret, i64 %indvars.iv.next35
  store i8 %xor28, i8* %arrayidx16, align 1, !tbaa !23
  %indvars.iv.next = add nuw nsw i64 %indvars.iv.next35, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 32
  br i1 %exitcond.not, label %cleanup, label %for.body.for.body_crit_edge.1, !llvm.loop !35

for.body.for.body_crit_edge.1:                    ; preds = %for.body.for.body_crit_edge
  %.pre.1 = load %struct.xorkey_st*, %struct.xorkey_st** %key, align 8, !tbaa !33
  %.pre31.1 = load %struct.xorkey_st*, %struct.xorkey_st** %1, align 8, !tbaa !34
  %arrayidx.1 = getelementptr inbounds %struct.xorkey_st, %struct.xorkey_st* %.pre.1, i64 0, i32 0, i64 %indvars.iv.next
  %7 = load i8, i8* %arrayidx.1, align 1, !tbaa !23
  %arrayidx12.1 = getelementptr inbounds %struct.xorkey_st, %struct.xorkey_st* %.pre31.1, i64 0, i32 1, i64 %indvars.iv.next
  %8 = load i8, i8* %arrayidx12.1, align 1, !tbaa !23
  %xor28.1 = xor i8 %8, %7
  %arrayidx16.1 = getelementptr inbounds i8, i8* %secret, i64 %indvars.iv.next
  store i8 %xor28.1, i8* %arrayidx16.1, align 1, !tbaa !23
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv.next35, 2
  br label %for.body.for.body_crit_edge

cleanup:                                          ; preds = %for.body.for.body_crit_edge, %if.end4, %if.end, %entry, %lor.lhs.false
  %retval.0 = phi i32 [ 0, %lor.lhs.false ], [ 0, %entry ], [ 1, %if.end ], [ 0, %if.end4 ], [ 1, %for.body.for.body_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define internal i32 @xor_set_peer(i8* noundef writeonly %vpxorctx, i8* noundef %vpeerkey) #3 {
entry:
  %cmp = icmp eq i8* %vpxorctx, null
  %cmp1 = icmp eq i8* %vpeerkey, null
  %or.cond = or i1 %cmp, %cmp1
  br i1 %or.cond, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %peerkey = getelementptr inbounds i8, i8* %vpxorctx, i64 8
  %0 = bitcast i8* %peerkey to i8**
  store i8* %vpeerkey, i8** %0, align 8, !tbaa !34
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal void @xor_freectx(i8* noundef %pxorctx) #0 {
entry:
  tail call void @CRYPTO_free(i8* noundef %pxorctx, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 287) #10
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal i8* @xor_dupctx(i8* nocapture noundef readonly %vpxorctx) #0 {
entry:
  %call = tail call i8* @CRYPTO_zalloc(i64 noundef 24, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 295) #10
  %cmp = icmp eq i8* %call, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(24) %call, i8* noundef nonnull align 8 dereferenceable(24) %vpxorctx, i64 24, i1 false), !tbaa.struct !36
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  ret i8* %call
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @xor_encapsulate(i8* nocapture noundef readonly %vpxorctx, i8* noundef %ct, i64* noundef writeonly %ctlen, i8* noundef %ss, i64* noundef writeonly %sslen) #0 {
entry:
  %cmp = icmp eq i8* %ct, null
  %cmp1 = icmp eq i8* %ss, null
  %or.cond = or i1 %cmp, %cmp1
  br i1 %or.cond, label %if.then, label %if.end11

if.then:                                          ; preds = %entry
  %cmp2 = icmp eq i64* %ctlen, null
  %cmp3 = icmp eq i64* %sslen, null
  %or.cond37 = and i1 %cmp2, %cmp3
  br i1 %or.cond37, label %cleanup, label %if.end

if.end:                                           ; preds = %if.then
  br i1 %cmp2, label %if.end7, label %if.then6

if.then6:                                         ; preds = %if.end
  store i64 32, i64* %ctlen, align 8, !tbaa !29
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %if.end
  br i1 %cmp3, label %cleanup, label %if.then9

if.then9:                                         ; preds = %if.end7
  store i64 32, i64* %sslen, align 8, !tbaa !29
  br label %cleanup

if.end11:                                         ; preds = %entry
  %provctx = getelementptr inbounds i8, i8* %vpxorctx, i64 16
  %0 = bitcast i8* %provctx to i8**
  %1 = load i8*, i8** %0, align 8, !tbaa !31
  %call = tail call i8* @xor_gen_init(i8* noundef %1, i32 noundef 3, %struct.ossl_param_st* noundef null) #11
  %cmp12 = icmp eq i8* %call, null
  br i1 %cmp12, label %end, label %if.end14

if.end14:                                         ; preds = %if.end11
  %call15 = tail call i8* @xor_gen(i8* noundef nonnull %call, i32 (%struct.ossl_param_st*, i8*)* noundef null, i8* noundef null) #11
  %2 = bitcast i8* %call15 to %struct.xorkey_st*
  %cmp16 = icmp eq i8* %call15, null
  br i1 %cmp16, label %end, label %if.end18

if.end18:                                         ; preds = %if.end14
  %pubkey = getelementptr inbounds i8, i8* %call15, i64 32
  %call19 = tail call i8* @memcpy(i8* noundef nonnull %ct, i8* noundef nonnull %pubkey, i64 noundef 32) #10
  store i64 32, i64* %ctlen, align 8, !tbaa !29
  %3 = load i8*, i8** %0, align 8, !tbaa !31
  %call21 = tail call i8* @xor_newctx(i8* noundef %3) #11
  %cmp22 = icmp eq i8* %call21, null
  br i1 %cmp22, label %end, label %lor.lhs.false23

lor.lhs.false23:                                  ; preds = %if.end18
  %call24 = tail call i32 @xor_init(i8* noundef nonnull %call21, i8* noundef nonnull %call15, %struct.ossl_param_st* noundef null) #11
  %tobool.not = icmp eq i32 %call24, 0
  br i1 %tobool.not, label %end, label %lor.lhs.false25

lor.lhs.false25:                                  ; preds = %lor.lhs.false23
  %4 = bitcast i8* %vpxorctx to i8**
  %5 = load i8*, i8** %4, align 8, !tbaa !33
  %call26 = tail call i32 @xor_set_peer(i8* noundef nonnull %call21, i8* noundef %5) #11
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %end, label %lor.lhs.false28

lor.lhs.false28:                                  ; preds = %lor.lhs.false25
  %call29 = tail call i32 @xor_derive(i8* noundef nonnull %call21, i8* noundef nonnull %ss, i64* noundef %sslen, i64 noundef 32) #11
  %tobool30.not = icmp ne i32 %call29, 0
  %spec.select = zext i1 %tobool30.not to i32
  br label %end

end:                                              ; preds = %lor.lhs.false28, %if.end18, %lor.lhs.false23, %lor.lhs.false25, %if.end14, %if.end11
  %rv.0 = phi i32 [ 0, %if.end11 ], [ 0, %if.end14 ], [ 0, %if.end18 ], [ 0, %lor.lhs.false25 ], [ 0, %lor.lhs.false23 ], [ %spec.select, %lor.lhs.false28 ]
  %derivectx.0 = phi i8* [ null, %if.end11 ], [ null, %if.end14 ], [ null, %if.end18 ], [ %call21, %lor.lhs.false25 ], [ %call21, %lor.lhs.false23 ], [ %call21, %lor.lhs.false28 ]
  %ourkey.0 = phi %struct.xorkey_st* [ null, %if.end11 ], [ null, %if.end14 ], [ %2, %if.end18 ], [ %2, %lor.lhs.false25 ], [ %2, %lor.lhs.false23 ], [ %2, %lor.lhs.false28 ]
  tail call void @xor_gen_cleanup(i8* noundef %call) #11
  %6 = getelementptr %struct.xorkey_st, %struct.xorkey_st* %ourkey.0, i64 0, i32 0, i64 0
  tail call void @xor_freedata(i8* noundef %6) #11
  tail call void @xor_freectx(i8* noundef %derivectx.0) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %if.then9, %if.then, %end
  %retval.0 = phi i32 [ %rv.0, %end ], [ 0, %if.then ], [ 1, %if.then9 ], [ 1, %if.end7 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @xor_decapsulate(i8* nocapture noundef readonly %vpxorctx, i8* noundef %ss, i64* noundef writeonly %sslen, i8* noundef %ct, i64 noundef %ctlen) #0 {
entry:
  %cmp = icmp eq i8* %ss, null
  br i1 %cmp, label %if.then, label %if.end3

if.then:                                          ; preds = %entry
  %cmp1 = icmp eq i64* %sslen, null
  br i1 %cmp1, label %cleanup, label %if.end

if.end:                                           ; preds = %if.then
  store i64 32, i64* %sslen, align 8, !tbaa !29
  br label %cleanup

if.end3:                                          ; preds = %entry
  %cmp4.not = icmp eq i64 %ctlen, 32
  br i1 %cmp4.not, label %if.end6, label %cleanup

if.end6:                                          ; preds = %if.end3
  %provctx = getelementptr inbounds i8, i8* %vpxorctx, i64 16
  %0 = bitcast i8* %provctx to i8**
  %1 = load i8*, i8** %0, align 8, !tbaa !31
  %call = tail call i8* @xor_newdata(i8* noundef %1) #11
  %cmp7 = icmp eq i8* %call, null
  br i1 %cmp7, label %end, label %if.end9

if.end9:                                          ; preds = %if.end6
  %pubkey = getelementptr inbounds i8, i8* %call, i64 32
  %call10 = tail call i8* @memcpy(i8* noundef nonnull %pubkey, i8* noundef %ct, i64 noundef 32) #10
  %2 = load i8*, i8** %0, align 8, !tbaa !31
  %call12 = tail call i8* @xor_newctx(i8* noundef %2) #11
  %cmp13 = icmp eq i8* %call12, null
  br i1 %cmp13, label %end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end9
  %3 = bitcast i8* %vpxorctx to i8**
  %4 = load i8*, i8** %3, align 8, !tbaa !33
  %call14 = tail call i32 @xor_init(i8* noundef nonnull %call12, i8* noundef %4, %struct.ossl_param_st* noundef null) #11
  %tobool.not = icmp eq i32 %call14, 0
  br i1 %tobool.not, label %end, label %lor.lhs.false15

lor.lhs.false15:                                  ; preds = %lor.lhs.false
  %call16 = tail call i32 @xor_set_peer(i8* noundef nonnull %call12, i8* noundef nonnull %call) #11
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %end, label %lor.lhs.false18

lor.lhs.false18:                                  ; preds = %lor.lhs.false15
  %call19 = tail call i32 @xor_derive(i8* noundef nonnull %call12, i8* noundef nonnull %ss, i64* noundef %sslen, i64 noundef 32) #11
  %tobool20.not = icmp ne i32 %call19, 0
  %spec.select = zext i1 %tobool20.not to i32
  br label %end

end:                                              ; preds = %lor.lhs.false18, %if.end9, %lor.lhs.false, %lor.lhs.false15, %if.end6
  %rv.0 = phi i32 [ 0, %if.end6 ], [ 0, %if.end9 ], [ 0, %lor.lhs.false15 ], [ 0, %lor.lhs.false ], [ %spec.select, %lor.lhs.false18 ]
  %derivectx.0 = phi i8* [ null, %if.end6 ], [ null, %if.end9 ], [ %call12, %lor.lhs.false15 ], [ %call12, %lor.lhs.false ], [ %call12, %lor.lhs.false18 ]
  tail call void @xor_freedata(i8* noundef %call) #11
  tail call void @xor_freectx(i8* noundef %derivectx.0) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.then, %end, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ %rv.0, %end ], [ 0, %if.then ], [ 0, %if.end3 ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i64 @strlen(i8* noundef) local_unnamed_addr #6

declare dso_local i32 @BIO_snprintf(i8* noundef, i64 noundef, i8* noundef, ...) local_unnamed_addr #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #9 = { nofree noinline norecurse nosync nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nobuiltin nounwind "no-builtins" }
attributes #11 = { nobuiltin "no-builtins" }
attributes #12 = { nounwind }
attributes #13 = { nobuiltin nounwind readonly willreturn "no-builtins" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{!"clang version 14.0.0"}
!3 = !{!4, !4, i64 0}
!4 = !{!"any pointer", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!8, !9, i64 0}
!8 = !{!"tls_group_st", !9, i64 0, !9, i64 4, !9, i64 8, !9, i64 12, !9, i64 16, !9, i64 20, !9, i64 24}
!9 = !{!"int", !5, i64 0}
!10 = !{!9, !9, i64 0}
!11 = distinct !{!11, !12}
!12 = !{!"llvm.loop.mustprogress"}
!13 = distinct !{!13, !12}
!14 = !{!15, !4, i64 16}
!15 = !{!"ossl_param_st", !4, i64 0, !9, i64 8, !4, i64 16, !16, i64 24, !16, i64 32}
!16 = !{!"long", !5, i64 0}
!17 = !{!15, !16, i64 24}
!18 = distinct !{!18, !12}
!19 = !{!20, !9, i64 0}
!20 = !{!"xor_gen_ctx", !9, i64 0, !4, i64 8}
!21 = !{!20, !4, i64 8}
!22 = !{!15, !9, i64 8}
!23 = !{!5, !5, i64 0}
!24 = !{!25, !9, i64 64}
!25 = !{!"xorkey_st", !5, i64 0, !5, i64 32, !9, i64 64, !9, i64 68}
!26 = !{!25, !9, i64 68}
!27 = !{!8, !9, i64 4}
!28 = !{!15, !16, i64 32}
!29 = !{!16, !16, i64 0}
!30 = !{i64 0, i64 8, !3, i64 8, i64 4, !10, i64 16, i64 8, !3, i64 24, i64 8, !29, i64 32, i64 8, !29}
!31 = !{!32, !4, i64 16}
!32 = !{!"", !4, i64 0, !4, i64 8, !4, i64 16}
!33 = !{!32, !4, i64 0}
!34 = !{!32, !4, i64 8}
!35 = distinct !{!35, !12}
!36 = !{i64 0, i64 8, !3, i64 8, i64 8, !3, i64 16, i64 8, !3}
