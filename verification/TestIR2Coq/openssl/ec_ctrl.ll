; ModuleID = 'crypto/evp/ec_ctrl.c'
source_filename = "crypto/evp/ec_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evp_pkey_ctx_st = type { i32, %struct.ossl_lib_ctx_st*, i8*, i8*, %struct.evp_keymgmt_st*, %union.anon, %struct.anon.4, i8*, i32 (%struct.evp_pkey_ctx_st*)*, i32*, i32, i32, %struct.evp_pkey_method_st*, %struct.engine_st*, %struct.evp_pkey_st*, %struct.evp_pkey_st*, i8*, i8, %struct.bignum_st* }
%struct.ossl_lib_ctx_st = type opaque
%struct.evp_keymgmt_st = type opaque
%union.anon = type { %struct.anon.0 }
%struct.anon.0 = type { %struct.evp_keyexch_st*, i8* }
%struct.evp_keyexch_st = type opaque
%struct.anon.4 = type { i8*, i8*, i64, i8 }
%struct.evp_pkey_method_st = type { i32, i32, i32 (%struct.evp_pkey_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*, %struct.evp_pkey_ctx_st*)*, void (%struct.evp_pkey_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*, %struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*, %struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*, i8*, i64*, i8*, i64)*, i32 (%struct.evp_pkey_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*, i8*, i64, i8*, i64)*, i32 (%struct.evp_pkey_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*, i8*, i64*, i8*, i64)*, i32 (%struct.evp_pkey_ctx_st*, %struct.evp_md_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*, i8*, i64*, %struct.evp_md_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*, %struct.evp_md_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*, i8*, i32, %struct.evp_md_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*, i8*, i64*, i8*, i64)*, i32 (%struct.evp_pkey_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*, i8*, i64*, i8*, i64)*, i32 (%struct.evp_pkey_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*, i8*, i64*)*, i32 (%struct.evp_pkey_ctx_st*, i32, i32, i8*)*, i32 (%struct.evp_pkey_ctx_st*, i8*, i8*)*, i32 (%struct.evp_md_ctx_st*, i8*, i64*, i8*, i64)*, i32 (%struct.evp_md_ctx_st*, i8*, i64, i8*, i64)*, i32 (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_ctx_st*, %struct.evp_md_ctx_st*)* }
%struct.evp_md_ctx_st = type opaque
%struct.engine_st = type opaque
%struct.evp_pkey_st = type { i32, i32, %struct.evp_pkey_asn1_method_st*, %struct.engine_st*, %struct.engine_st*, %union.legacy_pkey_st, %union.legacy_pkey_st, i32, i8*, %struct.stack_st_X509_ATTRIBUTE*, i32, i8, %struct.crypto_ex_data_st, %struct.evp_keymgmt_st*, i8*, i64, %struct.stack_st_OP_CACHE_ELEM*, i64, %struct.anon.5 }
%struct.evp_pkey_asn1_method_st = type opaque
%union.legacy_pkey_st = type { i8* }
%struct.stack_st_X509_ATTRIBUTE = type opaque
%struct.crypto_ex_data_st = type { %struct.ossl_lib_ctx_st*, %struct.stack_st_void* }
%struct.stack_st_void = type opaque
%struct.stack_st_OP_CACHE_ELEM = type opaque
%struct.anon.5 = type { i32, i32, i32 }
%struct.bignum_st = type opaque
%struct.ossl_param_st = type { i8*, i32, i8*, i64, i64 }
%struct.evp_md_st = type { i32, i32, i32, i64, i32, i32 (%struct.evp_md_ctx_st*)*, i32 (%struct.evp_md_ctx_st*, i8*, i64)*, i32 (%struct.evp_md_ctx_st*, i8*)*, i32 (%struct.evp_md_ctx_st*, %struct.evp_md_ctx_st*)*, i32 (%struct.evp_md_ctx_st*)*, i32, i32, i32 (%struct.evp_md_ctx_st*, i32, i32, i8*)*, i32, i8*, i8*, %struct.ossl_provider_st*, i32, i8*, i8* (i8*)*, i32 (i8*, %struct.ossl_param_st*)*, i32 (i8*, i8*, i64)*, i32 (i8*, i8*, i64*, i64)*, i32 (i8*, i8*, i64, i8*, i64*, i64)*, void (i8*)*, i8* (i8*)*, i32 (%struct.ossl_param_st*)*, i32 (i8*, %struct.ossl_param_st*)*, i32 (i8*, %struct.ossl_param_st*)*, %struct.ossl_param_st* (i8*)*, %struct.ossl_param_st* (i8*, i8*)*, %struct.ossl_param_st* (i8*, i8*)* }
%struct.ossl_provider_st = type opaque

@.str = private unnamed_addr constant [19 x i8] c"ecdh-cofactor-mode\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"crypto/evp/ec_ctrl.c\00", align 1
@__func__.EVP_PKEY_CTX_set_ecdh_cofactor_mode = private unnamed_addr constant [36 x i8] c"EVP_PKEY_CTX_set_ecdh_cofactor_mode\00", align 1
@__func__.EVP_PKEY_CTX_get_ecdh_cofactor_mode = private unnamed_addr constant [36 x i8] c"EVP_PKEY_CTX_get_ecdh_cofactor_mode\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"kdf-outlen\00", align 1
@__func__.EVP_PKEY_CTX_set_ecdh_kdf_outlen = private unnamed_addr constant [33 x i8] c"EVP_PKEY_CTX_set_ecdh_kdf_outlen\00", align 1
@__func__.EVP_PKEY_CTX_get_ecdh_kdf_outlen = private unnamed_addr constant [33 x i8] c"EVP_PKEY_CTX_get_ecdh_kdf_outlen\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"kdf-ukm\00", align 1
@__func__.EVP_PKEY_CTX_set0_ecdh_kdf_ukm = private unnamed_addr constant [31 x i8] c"EVP_PKEY_CTX_set0_ecdh_kdf_ukm\00", align 1
@__func__.EVP_PKEY_CTX_get0_ecdh_kdf_ukm = private unnamed_addr constant [31 x i8] c"EVP_PKEY_CTX_get0_ecdh_kdf_ukm\00", align 1
@__func__.evp_pkey_ctx_getset_ecdh_param_checks = private unnamed_addr constant [38 x i8] c"evp_pkey_ctx_getset_ecdh_param_checks\00", align 1

; Function Attrs: noinline nounwind uwtable
define i32 @EVP_PKEY_CTX_set_ecdh_cofactor_mode(%struct.evp_pkey_ctx_st* noundef %ctx, i32 noundef %cofactor_mode) local_unnamed_addr #0 {
entry:
  %cofactor_mode.addr = alloca i32, align 4
  %params = alloca [2 x %struct.ossl_param_st], align 16
  %tmp6 = alloca %struct.ossl_param_st, align 8
  store i32 %cofactor_mode, i32* %cofactor_mode.addr, align 4, !tbaa !4
  %0 = bitcast [2 x %struct.ossl_param_st]* %params to i8*
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %0) #4
  %arraydecay = getelementptr inbounds [2 x %struct.ossl_param_st], [2 x %struct.ossl_param_st]* %params, i64 0, i64 0
  %call = tail call fastcc i32 @evp_pkey_ctx_getset_ecdh_param_checks(%struct.evp_pkey_ctx_st* noundef %ctx) #5
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %1 = add i32 %cofactor_mode, -2
  %2 = icmp ult i32 %1, -3
  br i1 %2, label %cleanup, label %if.end4

if.end4:                                          ; preds = %if.end
  %incdec.ptr = getelementptr inbounds [2 x %struct.ossl_param_st], [2 x %struct.ossl_param_st]* %params, i64 0, i64 1
  %params21 = getelementptr inbounds [2 x %struct.ossl_param_st], [2 x %struct.ossl_param_st]* %params, i64 0, i64 0
  call void @OSSL_PARAM_construct_int(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %params21, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32* noundef nonnull %cofactor_mode.addr) #6
  %3 = bitcast %struct.ossl_param_st* %tmp6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %3) #4
  call void @OSSL_PARAM_construct_end(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %tmp6) #6
  %4 = bitcast %struct.ossl_param_st* %incdec.ptr to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(40) %4, i8* noundef nonnull align 8 dereferenceable(40) %3, i64 40, i1 false), !tbaa.struct !8
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %3) #4
  %call8 = call i32 @evp_pkey_ctx_set_params_strict(%struct.evp_pkey_ctx_st* noundef %ctx, %struct.ossl_param_st* noundef nonnull %arraydecay) #6
  %cmp9 = icmp eq i32 %call8, -2
  br i1 %cmp9, label %if.then10, label %cleanup

if.then10:                                        ; preds = %if.end4
  call void @ERR_new() #6
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 noundef 66, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @__func__.EVP_PKEY_CTX_set_ecdh_cofactor_mode, i64 0, i64 0)) #6
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 6, i32 noundef 147, i8* noundef null) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.then10, %if.end, %entry
  %retval.0 = phi i32 [ %call, %entry ], [ -2, %if.end ], [ -2, %if.then10 ], [ %call8, %if.end4 ]
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %0) #4
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @evp_pkey_ctx_getset_ecdh_param_checks(%struct.evp_pkey_ctx_st* noundef readonly %ctx) unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.evp_pkey_ctx_st* %ctx, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %operation = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %ctx, i64 0, i32 0
  %0 = load i32, i32* %operation, align 8, !tbaa !13
  %cmp1 = icmp eq i32 %0, 2048
  br i1 %cmp1, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false, %entry
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 noundef 27, i8* noundef getelementptr inbounds ([38 x i8], [38 x i8]* @__func__.evp_pkey_ctx_getset_ecdh_param_checks, i64 0, i64 0)) #6
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 6, i32 noundef 147, i8* noundef null) #6
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %keymgmt = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %ctx, i64 0, i32 4
  %1 = load %struct.evp_keymgmt_st*, %struct.evp_keymgmt_st** %keymgmt, align 8, !tbaa !16
  %cmp2 = icmp eq %struct.evp_keymgmt_st* %1, null
  br i1 %cmp2, label %land.lhs.true, label %if.end8

land.lhs.true:                                    ; preds = %if.end
  %pmeth = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %ctx, i64 0, i32 12
  %2 = load %struct.evp_pkey_method_st*, %struct.evp_pkey_method_st** %pmeth, align 8, !tbaa !17
  %cmp3.not = icmp eq %struct.evp_pkey_method_st* %2, null
  br i1 %cmp3.not, label %if.end8, label %land.lhs.true4

land.lhs.true4:                                   ; preds = %land.lhs.true
  %pkey_id = getelementptr inbounds %struct.evp_pkey_method_st, %struct.evp_pkey_method_st* %2, i64 0, i32 0
  %3 = load i32, i32* %pkey_id, align 8, !tbaa !18
  %cmp6.not = icmp eq i32 %3, 408
  br i1 %cmp6.not, label %if.end8, label %return

if.end8:                                          ; preds = %land.lhs.true4, %land.lhs.true, %if.end
  br label %return

return:                                           ; preds = %land.lhs.true4, %if.end8, %if.then
  %retval.0 = phi i32 [ -2, %if.then ], [ 1, %if.end8 ], [ -1, %land.lhs.true4 ]
  ret i32 %retval.0
}

declare void @OSSL_PARAM_construct_int(%struct.ossl_param_st* sret(%struct.ossl_param_st) align 8, i8* noundef, i32* noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

declare void @OSSL_PARAM_construct_end(%struct.ossl_param_st* sret(%struct.ossl_param_st) align 8) local_unnamed_addr #2

declare i32 @evp_pkey_ctx_set_params_strict(%struct.evp_pkey_ctx_st* noundef, %struct.ossl_param_st* noundef) local_unnamed_addr #2

declare void @ERR_new() local_unnamed_addr #2

declare void @ERR_set_debug(i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #2

declare void @ERR_set_error(i32 noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @EVP_PKEY_CTX_get_ecdh_cofactor_mode(%struct.evp_pkey_ctx_st* noundef %ctx) local_unnamed_addr #0 {
entry:
  %mode = alloca i32, align 4
  %params = alloca [2 x %struct.ossl_param_st], align 16
  %tmp2 = alloca %struct.ossl_param_st, align 8
  %0 = bitcast i32* %mode to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #4
  %1 = bitcast [2 x %struct.ossl_param_st]* %params to i8*
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %1) #4
  %call = tail call fastcc i32 @evp_pkey_ctx_getset_ecdh_param_checks(%struct.evp_pkey_ctx_st* noundef %ctx) #5
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %arraydecay = getelementptr inbounds [2 x %struct.ossl_param_st], [2 x %struct.ossl_param_st]* %params, i64 0, i64 0
  %incdec.ptr = getelementptr inbounds [2 x %struct.ossl_param_st], [2 x %struct.ossl_param_st]* %params, i64 0, i64 1
  %params20 = getelementptr inbounds [2 x %struct.ossl_param_st], [2 x %struct.ossl_param_st]* %params, i64 0, i64 0
  call void @OSSL_PARAM_construct_int(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %params20, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32* noundef nonnull %mode) #6
  %2 = bitcast %struct.ossl_param_st* %tmp2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %2) #4
  call void @OSSL_PARAM_construct_end(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %tmp2) #6
  %3 = bitcast %struct.ossl_param_st* %incdec.ptr to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(40) %3, i8* noundef nonnull align 8 dereferenceable(40) %2, i64 40, i1 false), !tbaa.struct !8
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %2) #4
  %call4 = call i32 @evp_pkey_ctx_get_params_strict(%struct.evp_pkey_ctx_st* noundef %ctx, %struct.ossl_param_st* noundef nonnull %arraydecay) #6
  switch i32 %call4, label %cleanup [
    i32 -2, label %sw.bb
    i32 1, label %sw.bb5
  ]

sw.bb:                                            ; preds = %if.end
  call void @ERR_new() #6
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 noundef 87, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @__func__.EVP_PKEY_CTX_get_ecdh_cofactor_mode, i64 0, i64 0)) #6
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 6, i32 noundef 147, i8* noundef null) #6
  br label %cleanup

sw.bb5:                                           ; preds = %if.end
  %4 = load i32, i32* %mode, align 4, !tbaa !4
  %5 = icmp ugt i32 %4, 1
  %spec.store.select = select i1 %5, i32 -1, i32 %4
  br label %cleanup

cleanup:                                          ; preds = %sw.bb, %sw.bb5, %if.end, %entry
  %retval.0 = phi i32 [ %call, %entry ], [ %spec.store.select, %sw.bb5 ], [ -2, %sw.bb ], [ -1, %if.end ]
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %1) #4
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #4
  ret i32 %retval.0
}

declare i32 @evp_pkey_ctx_get_params_strict(%struct.evp_pkey_ctx_st* noundef, %struct.ossl_param_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @EVP_PKEY_CTX_set_ecdh_kdf_type(%struct.evp_pkey_ctx_st* noundef %ctx, i32 noundef %kdf) local_unnamed_addr #0 {
entry:
  %call = tail call i32 @EVP_PKEY_CTX_ctrl(%struct.evp_pkey_ctx_st* noundef %ctx, i32 noundef 408, i32 noundef 2048, i32 noundef 4100, i32 noundef %kdf, i8* noundef null) #6
  ret i32 %call
}

declare i32 @EVP_PKEY_CTX_ctrl(%struct.evp_pkey_ctx_st* noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @EVP_PKEY_CTX_get_ecdh_kdf_type(%struct.evp_pkey_ctx_st* noundef %ctx) local_unnamed_addr #0 {
entry:
  %call = tail call i32 @EVP_PKEY_CTX_ctrl(%struct.evp_pkey_ctx_st* noundef %ctx, i32 noundef 408, i32 noundef 2048, i32 noundef 4100, i32 noundef -2, i8* noundef null) #6
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define i32 @EVP_PKEY_CTX_set_ecdh_kdf_md(%struct.evp_pkey_ctx_st* noundef %ctx, %struct.evp_md_st* noundef %md) local_unnamed_addr #0 {
entry:
  %0 = bitcast %struct.evp_md_st* %md to i8*
  %call = tail call i32 @EVP_PKEY_CTX_ctrl(%struct.evp_pkey_ctx_st* noundef %ctx, i32 noundef 408, i32 noundef 2048, i32 noundef 4101, i32 noundef 0, i8* noundef %0) #6
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define i32 @EVP_PKEY_CTX_get_ecdh_kdf_md(%struct.evp_pkey_ctx_st* noundef %ctx, %struct.evp_md_st** noundef %pmd) local_unnamed_addr #0 {
entry:
  %0 = bitcast %struct.evp_md_st** %pmd to i8*
  %call = tail call i32 @EVP_PKEY_CTX_ctrl(%struct.evp_pkey_ctx_st* noundef %ctx, i32 noundef 408, i32 noundef 2048, i32 noundef 4102, i32 noundef 0, i8* noundef %0) #6
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define i32 @EVP_PKEY_CTX_set_ecdh_kdf_outlen(%struct.evp_pkey_ctx_st* noundef %ctx, i32 noundef %outlen) local_unnamed_addr #0 {
entry:
  %len = alloca i64, align 8
  %params = alloca [2 x %struct.ossl_param_st], align 16
  %tmp7 = alloca %struct.ossl_param_st, align 8
  %0 = bitcast i64* %len to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #4
  %conv = sext i32 %outlen to i64
  store i64 %conv, i64* %len, align 8, !tbaa !11
  %1 = bitcast [2 x %struct.ossl_param_st]* %params to i8*
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %1) #4
  %arraydecay = getelementptr inbounds [2 x %struct.ossl_param_st], [2 x %struct.ossl_param_st]* %params, i64 0, i64 0
  %call = tail call fastcc i32 @evp_pkey_ctx_getset_ecdh_param_checks(%struct.evp_pkey_ctx_st* noundef %ctx) #5
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %cmp2 = icmp slt i32 %outlen, 1
  br i1 %cmp2, label %cleanup, label %if.end5

if.end5:                                          ; preds = %if.end
  %incdec.ptr = getelementptr inbounds [2 x %struct.ossl_param_st], [2 x %struct.ossl_param_st]* %params, i64 0, i64 1
  %params25 = getelementptr inbounds [2 x %struct.ossl_param_st], [2 x %struct.ossl_param_st]* %params, i64 0, i64 0
  call void @OSSL_PARAM_construct_size_t(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %params25, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i64* noundef nonnull %len) #6
  %2 = bitcast %struct.ossl_param_st* %tmp7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %2) #4
  call void @OSSL_PARAM_construct_end(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %tmp7) #6
  %3 = bitcast %struct.ossl_param_st* %incdec.ptr to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(40) %3, i8* noundef nonnull align 8 dereferenceable(40) %2, i64 40, i1 false), !tbaa.struct !8
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %2) #4
  %call9 = call i32 @evp_pkey_ctx_set_params_strict(%struct.evp_pkey_ctx_st* noundef %ctx, %struct.ossl_param_st* noundef nonnull %arraydecay) #6
  %cmp10 = icmp eq i32 %call9, -2
  br i1 %cmp10, label %if.then12, label %cleanup

if.then12:                                        ; preds = %if.end5
  call void @ERR_new() #6
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 noundef 172, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @__func__.EVP_PKEY_CTX_set_ecdh_kdf_outlen, i64 0, i64 0)) #6
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 6, i32 noundef 147, i8* noundef null) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.then12, %if.end, %entry
  %retval.0 = phi i32 [ %call, %entry ], [ -2, %if.end ], [ -2, %if.then12 ], [ %call9, %if.end5 ]
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %1) #4
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #4
  ret i32 %retval.0
}

declare void @OSSL_PARAM_construct_size_t(%struct.ossl_param_st* sret(%struct.ossl_param_st) align 8, i8* noundef, i64* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @EVP_PKEY_CTX_get_ecdh_kdf_outlen(%struct.evp_pkey_ctx_st* noundef %ctx, i32* nocapture noundef writeonly %plen) local_unnamed_addr #0 {
entry:
  %len = alloca i64, align 8
  %params = alloca [2 x %struct.ossl_param_st], align 16
  %tmp2 = alloca %struct.ossl_param_st, align 8
  %0 = bitcast i64* %len to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #4
  store i64 4294967295, i64* %len, align 8, !tbaa !11
  %1 = bitcast [2 x %struct.ossl_param_st]* %params to i8*
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %1) #4
  %call = tail call fastcc i32 @evp_pkey_ctx_getset_ecdh_param_checks(%struct.evp_pkey_ctx_st* noundef %ctx) #5
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %arraydecay = getelementptr inbounds [2 x %struct.ossl_param_st], [2 x %struct.ossl_param_st]* %params, i64 0, i64 0
  %incdec.ptr = getelementptr inbounds [2 x %struct.ossl_param_st], [2 x %struct.ossl_param_st]* %params, i64 0, i64 1
  %params19 = getelementptr inbounds [2 x %struct.ossl_param_st], [2 x %struct.ossl_param_st]* %params, i64 0, i64 0
  call void @OSSL_PARAM_construct_size_t(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %params19, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i64* noundef nonnull %len) #6
  %2 = bitcast %struct.ossl_param_st* %tmp2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %2) #4
  call void @OSSL_PARAM_construct_end(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %tmp2) #6
  %3 = bitcast %struct.ossl_param_st* %incdec.ptr to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(40) %3, i8* noundef nonnull align 8 dereferenceable(40) %2, i64 40, i1 false), !tbaa.struct !8
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %2) #4
  %call4 = call i32 @evp_pkey_ctx_get_params_strict(%struct.evp_pkey_ctx_st* noundef %ctx, %struct.ossl_param_st* noundef nonnull %arraydecay) #6
  switch i32 %call4, label %cleanup [
    i32 -2, label %sw.bb
    i32 1, label %sw.bb5
  ]

sw.bb:                                            ; preds = %if.end
  call void @ERR_new() #6
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 noundef 194, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @__func__.EVP_PKEY_CTX_get_ecdh_kdf_outlen, i64 0, i64 0)) #6
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 6, i32 noundef 147, i8* noundef null) #6
  br label %cleanup

sw.bb5:                                           ; preds = %if.end
  %4 = load i64, i64* %len, align 8, !tbaa !11
  %cmp6 = icmp ult i64 %4, 2147483648
  br i1 %cmp6, label %if.then7, label %cleanup

if.then7:                                         ; preds = %sw.bb5
  %conv = trunc i64 %4 to i32
  store i32 %conv, i32* %plen, align 4, !tbaa !4
  br label %cleanup

cleanup:                                          ; preds = %sw.bb, %if.then7, %sw.bb5, %if.end, %entry
  %retval.0 = phi i32 [ %call, %entry ], [ 1, %if.then7 ], [ -2, %sw.bb ], [ -1, %sw.bb5 ], [ -1, %if.end ]
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %1) #4
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #4
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @EVP_PKEY_CTX_set0_ecdh_kdf_ukm(%struct.evp_pkey_ctx_st* noundef %ctx, i8* noundef %ukm, i32 noundef %len) local_unnamed_addr #0 {
entry:
  %params = alloca [2 x %struct.ossl_param_st], align 16
  %tmp2 = alloca %struct.ossl_param_st, align 8
  %0 = bitcast [2 x %struct.ossl_param_st]* %params to i8*
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %0) #4
  %call = tail call fastcc i32 @evp_pkey_ctx_getset_ecdh_param_checks(%struct.evp_pkey_ctx_st* noundef %ctx) #5
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %arraydecay = getelementptr inbounds [2 x %struct.ossl_param_st], [2 x %struct.ossl_param_st]* %params, i64 0, i64 0
  %incdec.ptr = getelementptr inbounds [2 x %struct.ossl_param_st], [2 x %struct.ossl_param_st]* %params, i64 0, i64 1
  %conv = sext i32 %len to i64
  %params16 = getelementptr inbounds [2 x %struct.ossl_param_st], [2 x %struct.ossl_param_st]* %params, i64 0, i64 0
  call void @OSSL_PARAM_construct_octet_string(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %params16, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i8* noundef %ukm, i64 noundef %conv) #6
  %1 = bitcast %struct.ossl_param_st* %tmp2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %1) #4
  call void @OSSL_PARAM_construct_end(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %tmp2) #6
  %2 = bitcast %struct.ossl_param_st* %incdec.ptr to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(40) %2, i8* noundef nonnull align 8 dereferenceable(40) %1, i64 40, i1 false), !tbaa.struct !8
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %1) #4
  %call4 = call i32 @evp_pkey_ctx_set_params_strict(%struct.evp_pkey_ctx_st* noundef %ctx, %struct.ossl_param_st* noundef nonnull %arraydecay) #6
  switch i32 %call4, label %cleanup [
    i32 -2, label %sw.bb
    i32 1, label %sw.bb5
  ]

sw.bb:                                            ; preds = %if.end
  call void @ERR_new() #6
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 noundef 232, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.EVP_PKEY_CTX_set0_ecdh_kdf_ukm, i64 0, i64 0)) #6
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 6, i32 noundef 147, i8* noundef null) #6
  br label %cleanup

sw.bb5:                                           ; preds = %if.end
  call void @CRYPTO_free(i8* noundef %ukm, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 noundef 235) #6
  br label %cleanup

cleanup:                                          ; preds = %sw.bb, %sw.bb5, %if.end, %entry
  %retval.0 = phi i32 [ %call, %entry ], [ %call4, %if.end ], [ 1, %sw.bb5 ], [ -2, %sw.bb ]
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %0) #4
  ret i32 %retval.0
}

declare void @OSSL_PARAM_construct_octet_string(%struct.ossl_param_st* sret(%struct.ossl_param_st) align 8, i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #2

declare void @CRYPTO_free(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @EVP_PKEY_CTX_get0_ecdh_kdf_ukm(%struct.evp_pkey_ctx_st* noundef %ctx, i8** noundef %pukm) local_unnamed_addr #0 {
entry:
  %params = alloca [2 x %struct.ossl_param_st], align 16
  %tmp2 = alloca %struct.ossl_param_st, align 8
  %0 = bitcast [2 x %struct.ossl_param_st]* %params to i8*
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %0) #4
  %call = tail call fastcc i32 @evp_pkey_ctx_getset_ecdh_param_checks(%struct.evp_pkey_ctx_st* noundef %ctx) #5
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %arraydecay = getelementptr inbounds [2 x %struct.ossl_param_st], [2 x %struct.ossl_param_st]* %params, i64 0, i64 0
  %incdec.ptr = getelementptr inbounds [2 x %struct.ossl_param_st], [2 x %struct.ossl_param_st]* %params, i64 0, i64 1
  %params21 = getelementptr inbounds [2 x %struct.ossl_param_st], [2 x %struct.ossl_param_st]* %params, i64 0, i64 0
  call void @OSSL_PARAM_construct_octet_ptr(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %params21, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i8** noundef %pukm, i64 noundef 0) #6
  %1 = bitcast %struct.ossl_param_st* %tmp2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %1) #4
  call void @OSSL_PARAM_construct_end(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %tmp2) #6
  %2 = bitcast %struct.ossl_param_st* %incdec.ptr to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(40) %2, i8* noundef nonnull align 8 dereferenceable(40) %1, i64 40, i1 false), !tbaa.struct !8
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %1) #4
  %call4 = call i32 @evp_pkey_ctx_get_params_strict(%struct.evp_pkey_ctx_st* noundef %ctx, %struct.ossl_param_st* noundef nonnull %arraydecay) #6
  switch i32 %call4, label %cleanup [
    i32 -2, label %sw.bb
    i32 1, label %sw.bb5
  ]

sw.bb:                                            ; preds = %if.end
  call void @ERR_new() #6
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 noundef 261, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.EVP_PKEY_CTX_get0_ecdh_kdf_ukm, i64 0, i64 0)) #6
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 6, i32 noundef 147, i8* noundef null) #6
  br label %cleanup

sw.bb5:                                           ; preds = %if.end
  %return_size = getelementptr inbounds [2 x %struct.ossl_param_st], [2 x %struct.ossl_param_st]* %params, i64 0, i64 0, i32 4
  %3 = load i64, i64* %return_size, align 16, !tbaa !20
  %cmp6 = icmp ult i64 %3, 2147483648
  %conv = trunc i64 %3 to i32
  %spec.select = select i1 %cmp6, i32 %conv, i32 -1
  br label %cleanup

cleanup:                                          ; preds = %sw.bb5, %sw.bb, %if.end, %entry
  %retval.0 = phi i32 [ %call, %entry ], [ -2, %sw.bb ], [ %spec.select, %sw.bb5 ], [ -1, %if.end ]
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %0) #4
  ret i32 %retval.0
}

declare void @OSSL_PARAM_construct_octet_ptr(%struct.ossl_param_st* sret(%struct.ossl_param_st) align 8, i8* noundef, i8** noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @EVP_PKEY_CTX_set_ec_paramgen_curve_nid(%struct.evp_pkey_ctx_st* noundef %ctx, i32 noundef %nid) local_unnamed_addr #0 {
entry:
  %call = tail call i32 @EVP_PKEY_CTX_ctrl(%struct.evp_pkey_ctx_st* noundef %ctx, i32 noundef 408, i32 noundef 6, i32 noundef 4097, i32 noundef %nid, i8* noundef null) #6
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define i32 @EVP_PKEY_CTX_set_ec_param_enc(%struct.evp_pkey_ctx_st* noundef %ctx, i32 noundef %param_enc) local_unnamed_addr #0 {
entry:
  %call = tail call i32 @EVP_PKEY_CTX_ctrl(%struct.evp_pkey_ctx_st* noundef %ctx, i32 noundef 408, i32 noundef 6, i32 noundef 4098, i32 noundef %param_enc, i8* noundef null) #6
  ret i32 %call
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #4 = { nounwind }
attributes #5 = { nobuiltin "no-builtins" }
attributes #6 = { nobuiltin nounwind "no-builtins" }

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
!8 = !{i64 0, i64 8, !9, i64 8, i64 4, !4, i64 16, i64 8, !9, i64 24, i64 8, !11, i64 32, i64 8, !11}
!9 = !{!10, !10, i64 0}
!10 = !{!"any pointer", !6, i64 0}
!11 = !{!12, !12, i64 0}
!12 = !{!"long", !6, i64 0}
!13 = !{!14, !5, i64 0}
!14 = !{!"evp_pkey_ctx_st", !5, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !6, i64 40, !15, i64 56, !10, i64 88, !10, i64 96, !10, i64 104, !5, i64 112, !5, i64 116, !10, i64 120, !10, i64 128, !10, i64 136, !10, i64 144, !10, i64 152, !5, i64 160, !10, i64 168}
!15 = !{!"", !10, i64 0, !10, i64 8, !12, i64 16, !5, i64 24}
!16 = !{!14, !10, i64 32}
!17 = !{!14, !10, i64 120}
!18 = !{!19, !5, i64 0}
!19 = !{!"evp_pkey_method_st", !5, i64 0, !5, i64 4, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !10, i64 40, !10, i64 48, !10, i64 56, !10, i64 64, !10, i64 72, !10, i64 80, !10, i64 88, !10, i64 96, !10, i64 104, !10, i64 112, !10, i64 120, !10, i64 128, !10, i64 136, !10, i64 144, !10, i64 152, !10, i64 160, !10, i64 168, !10, i64 176, !10, i64 184, !10, i64 192, !10, i64 200, !10, i64 208, !10, i64 216, !10, i64 224, !10, i64 232, !10, i64 240, !10, i64 248}
!20 = !{!21, !12, i64 32}
!21 = !{!"ossl_param_st", !10, i64 0, !5, i64 8, !10, i64 16, !12, i64 24, !12, i64 32}
