; ModuleID = 'crypto/evp/dh_ctrl.c'
source_filename = "crypto/evp/dh_ctrl.c"
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
%struct.asn1_object_st = type opaque
%struct.evp_md_st = type { i32, i32, i32, i64, i32, i32 (%struct.evp_md_ctx_st*)*, i32 (%struct.evp_md_ctx_st*, i8*, i64)*, i32 (%struct.evp_md_ctx_st*, i8*)*, i32 (%struct.evp_md_ctx_st*, %struct.evp_md_ctx_st*)*, i32 (%struct.evp_md_ctx_st*)*, i32, i32, i32 (%struct.evp_md_ctx_st*, i32, i32, i8*)*, i32, i8*, i8*, %struct.ossl_provider_st*, i32, i8*, i8* (i8*)*, i32 (i8*, %struct.ossl_param_st*)*, i32 (i8*, i8*, i64)*, i32 (i8*, i8*, i64*, i64)*, i32 (i8*, i8*, i64, i8*, i64*, i64)*, void (i8*)*, i8* (i8*)*, i32 (%struct.ossl_param_st*)*, i32 (i8*, %struct.ossl_param_st*)*, i32 (i8*, %struct.ossl_param_st*)*, %struct.ossl_param_st* (i8*)*, %struct.ossl_param_st* (i8*, i8*)*, %struct.ossl_param_st* (i8*, i8*)* }
%struct.ossl_provider_st = type opaque

@.str = private unnamed_addr constant [7 x i8] c"gindex\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"seed\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"pbits\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"qbits\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"safeprime-generator\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"crypto/evp/dh_ctrl.c\00", align 1
@__func__.EVP_PKEY_CTX_set_dh_pad = private unnamed_addr constant [24 x i8] c"EVP_PKEY_CTX_set_dh_pad\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"pad\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"kdf-outlen\00", align 1
@__func__.EVP_PKEY_CTX_set_dh_kdf_outlen = private unnamed_addr constant [31 x i8] c"EVP_PKEY_CTX_set_dh_kdf_outlen\00", align 1
@__func__.EVP_PKEY_CTX_get_dh_kdf_outlen = private unnamed_addr constant [31 x i8] c"EVP_PKEY_CTX_get_dh_kdf_outlen\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"kdf-ukm\00", align 1
@__func__.EVP_PKEY_CTX_set0_dh_kdf_ukm = private unnamed_addr constant [29 x i8] c"EVP_PKEY_CTX_set0_dh_kdf_ukm\00", align 1
@__func__.EVP_PKEY_CTX_get0_dh_kdf_ukm = private unnamed_addr constant [29 x i8] c"EVP_PKEY_CTX_get0_dh_kdf_ukm\00", align 1
@__func__.dh_paramgen_check = private unnamed_addr constant [18 x i8] c"dh_paramgen_check\00", align 1
@__func__.dh_param_derive_check = private unnamed_addr constant [22 x i8] c"dh_param_derive_check\00", align 1

; Function Attrs: noinline nounwind uwtable
define i32 @EVP_PKEY_CTX_set_dh_paramgen_gindex(%struct.evp_pkey_ctx_st* noundef %ctx, i32 noundef %gindex) local_unnamed_addr #0 {
entry:
  %gindex.addr = alloca i32, align 4
  %params = alloca [2 x %struct.ossl_param_st], align 16
  %tmp1 = alloca %struct.ossl_param_st, align 8
  store i32 %gindex, i32* %gindex.addr, align 4, !tbaa !4
  %0 = bitcast [2 x %struct.ossl_param_st]* %params to i8*
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %0) #4
  %call = tail call fastcc i32 @dh_paramgen_check(%struct.evp_pkey_ctx_st* noundef %ctx) #5
  %cmp = icmp slt i32 %call, 1
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %arraydecay = getelementptr inbounds [2 x %struct.ossl_param_st], [2 x %struct.ossl_param_st]* %params, i64 0, i64 0
  %incdec.ptr = getelementptr inbounds [2 x %struct.ossl_param_st], [2 x %struct.ossl_param_st]* %params, i64 0, i64 1
  %params10 = getelementptr inbounds [2 x %struct.ossl_param_st], [2 x %struct.ossl_param_st]* %params, i64 0, i64 0
  call void @OSSL_PARAM_construct_int(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %params10, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32* noundef nonnull %gindex.addr) #6
  %1 = bitcast %struct.ossl_param_st* %tmp1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %1) #4
  call void @OSSL_PARAM_construct_end(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %tmp1) #6
  %2 = bitcast %struct.ossl_param_st* %incdec.ptr to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(40) %2, i8* noundef nonnull align 8 dereferenceable(40) %1, i64 40, i1 false), !tbaa.struct !8
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %1) #4
  %call3 = call i32 @evp_pkey_ctx_set_params_strict(%struct.evp_pkey_ctx_st* noundef %ctx, %struct.ossl_param_st* noundef nonnull %arraydecay) #6
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %call3, %if.end ], [ %call, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %0) #4
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @dh_paramgen_check(%struct.evp_pkey_ctx_st* noundef readonly %ctx) unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.evp_pkey_ctx_st* %ctx, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %operation = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %ctx, i64 0, i32 0
  %0 = load i32, i32* %operation, align 8, !tbaa !13
  switch i32 %0, label %if.then [
    i32 2, label %if.end
    i32 4, label %if.end
  ]

if.then:                                          ; preds = %lor.lhs.false, %entry
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0), i32 noundef 22, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.dh_paramgen_check, i64 0, i64 0)) #6
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 6, i32 noundef 147, i8* noundef null) #6
  br label %return

if.end:                                           ; preds = %lor.lhs.false, %lor.lhs.false
  %keymgmt = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %ctx, i64 0, i32 4
  %1 = load %struct.evp_keymgmt_st*, %struct.evp_keymgmt_st** %keymgmt, align 8, !tbaa !16
  %cmp5 = icmp eq %struct.evp_keymgmt_st* %1, null
  br i1 %cmp5, label %land.lhs.true, label %return

land.lhs.true:                                    ; preds = %if.end
  %pmeth = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %ctx, i64 0, i32 12
  %2 = load %struct.evp_pkey_method_st*, %struct.evp_pkey_method_st** %pmeth, align 8, !tbaa !17
  %pkey_id = getelementptr inbounds %struct.evp_pkey_method_st, %struct.evp_pkey_method_st* %2, i64 0, i32 0
  %3 = load i32, i32* %pkey_id, align 8, !tbaa !18
  %switch.selectcmp.case1 = icmp eq i32 %3, 28
  %switch.selectcmp.case2 = icmp eq i32 %3, 920
  %switch.selectcmp = or i1 %switch.selectcmp.case1, %switch.selectcmp.case2
  %4 = select i1 %switch.selectcmp, i32 1, i32 -1
  br label %return

return:                                           ; preds = %if.end, %land.lhs.true, %if.then
  %retval.0 = phi i32 [ -2, %if.then ], [ %4, %land.lhs.true ], [ 1, %if.end ]
  ret i32 %retval.0
}

declare void @OSSL_PARAM_construct_int(%struct.ossl_param_st* sret(%struct.ossl_param_st) align 8, i8* noundef, i32* noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

declare void @OSSL_PARAM_construct_end(%struct.ossl_param_st* sret(%struct.ossl_param_st) align 8) local_unnamed_addr #2

declare i32 @evp_pkey_ctx_set_params_strict(%struct.evp_pkey_ctx_st* noundef, %struct.ossl_param_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @EVP_PKEY_CTX_set_dh_paramgen_seed(%struct.evp_pkey_ctx_st* noundef %ctx, i8* noundef %seed, i64 noundef %seedlen) local_unnamed_addr #0 {
entry:
  %params = alloca [2 x %struct.ossl_param_st], align 16
  %tmp1 = alloca %struct.ossl_param_st, align 8
  %0 = bitcast [2 x %struct.ossl_param_st]* %params to i8*
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %0) #4
  %call = tail call fastcc i32 @dh_paramgen_check(%struct.evp_pkey_ctx_st* noundef %ctx) #5
  %cmp = icmp slt i32 %call, 1
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %arraydecay = getelementptr inbounds [2 x %struct.ossl_param_st], [2 x %struct.ossl_param_st]* %params, i64 0, i64 0
  %incdec.ptr = getelementptr inbounds [2 x %struct.ossl_param_st], [2 x %struct.ossl_param_st]* %params, i64 0, i64 1
  %params10 = getelementptr inbounds [2 x %struct.ossl_param_st], [2 x %struct.ossl_param_st]* %params, i64 0, i64 0
  call void @OSSL_PARAM_construct_octet_string(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %params10, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* noundef %seed, i64 noundef %seedlen) #6
  %1 = bitcast %struct.ossl_param_st* %tmp1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %1) #4
  call void @OSSL_PARAM_construct_end(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %tmp1) #6
  %2 = bitcast %struct.ossl_param_st* %incdec.ptr to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(40) %2, i8* noundef nonnull align 8 dereferenceable(40) %1, i64 40, i1 false), !tbaa.struct !8
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %1) #4
  %call3 = call i32 @evp_pkey_ctx_set_params_strict(%struct.evp_pkey_ctx_st* noundef %ctx, %struct.ossl_param_st* noundef nonnull %arraydecay) #6
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %call3, %if.end ], [ %call, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %0) #4
  ret i32 %retval.0
}

declare void @OSSL_PARAM_construct_octet_string(%struct.ossl_param_st* sret(%struct.ossl_param_st) align 8, i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @EVP_PKEY_CTX_set_dh_paramgen_type(%struct.evp_pkey_ctx_st* noundef %ctx, i32 noundef %typ) local_unnamed_addr #0 {
entry:
  %call = tail call i32 @EVP_PKEY_CTX_ctrl(%struct.evp_pkey_ctx_st* noundef %ctx, i32 noundef 28, i32 noundef 2, i32 noundef 4101, i32 noundef %typ, i8* noundef null) #6
  ret i32 %call
}

declare i32 @EVP_PKEY_CTX_ctrl(%struct.evp_pkey_ctx_st* noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @EVP_PKEY_CTX_set_dh_paramgen_prime_len(%struct.evp_pkey_ctx_st* noundef %ctx, i32 noundef %pbits) local_unnamed_addr #0 {
entry:
  %params = alloca [2 x %struct.ossl_param_st], align 16
  %bits = alloca i64, align 8
  %tmp2 = alloca %struct.ossl_param_st, align 8
  %0 = bitcast [2 x %struct.ossl_param_st]* %params to i8*
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %0) #4
  %1 = bitcast i64* %bits to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #4
  %conv = sext i32 %pbits to i64
  store i64 %conv, i64* %bits, align 8, !tbaa !11
  %call = tail call fastcc i32 @dh_paramgen_check(%struct.evp_pkey_ctx_st* noundef %ctx) #5
  %cmp = icmp slt i32 %call, 1
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %arraydecay = getelementptr inbounds [2 x %struct.ossl_param_st], [2 x %struct.ossl_param_st]* %params, i64 0, i64 0
  %incdec.ptr = getelementptr inbounds [2 x %struct.ossl_param_st], [2 x %struct.ossl_param_st]* %params, i64 0, i64 1
  %params12 = getelementptr inbounds [2 x %struct.ossl_param_st], [2 x %struct.ossl_param_st]* %params, i64 0, i64 0
  call void @OSSL_PARAM_construct_size_t(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %params12, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i64* noundef nonnull %bits) #6
  %2 = bitcast %struct.ossl_param_st* %tmp2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %2) #4
  call void @OSSL_PARAM_construct_end(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %tmp2) #6
  %3 = bitcast %struct.ossl_param_st* %incdec.ptr to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(40) %3, i8* noundef nonnull align 8 dereferenceable(40) %2, i64 40, i1 false), !tbaa.struct !8
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %2) #4
  %call4 = call i32 @evp_pkey_ctx_set_params_strict(%struct.evp_pkey_ctx_st* noundef %ctx, %struct.ossl_param_st* noundef nonnull %arraydecay) #6
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %call4, %if.end ], [ %call, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #4
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %0) #4
  ret i32 %retval.0
}

declare void @OSSL_PARAM_construct_size_t(%struct.ossl_param_st* sret(%struct.ossl_param_st) align 8, i8* noundef, i64* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @EVP_PKEY_CTX_set_dh_paramgen_subprime_len(%struct.evp_pkey_ctx_st* noundef %ctx, i32 noundef %qbits) local_unnamed_addr #0 {
entry:
  %params = alloca [2 x %struct.ossl_param_st], align 16
  %bits2 = alloca i64, align 8
  %tmp2 = alloca %struct.ossl_param_st, align 8
  %0 = bitcast [2 x %struct.ossl_param_st]* %params to i8*
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %0) #4
  %1 = bitcast i64* %bits2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #4
  %conv = sext i32 %qbits to i64
  store i64 %conv, i64* %bits2, align 8, !tbaa !11
  %call = tail call fastcc i32 @dh_paramgen_check(%struct.evp_pkey_ctx_st* noundef %ctx) #5
  %cmp = icmp slt i32 %call, 1
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %arraydecay = getelementptr inbounds [2 x %struct.ossl_param_st], [2 x %struct.ossl_param_st]* %params, i64 0, i64 0
  %incdec.ptr = getelementptr inbounds [2 x %struct.ossl_param_st], [2 x %struct.ossl_param_st]* %params, i64 0, i64 1
  %params12 = getelementptr inbounds [2 x %struct.ossl_param_st], [2 x %struct.ossl_param_st]* %params, i64 0, i64 0
  call void @OSSL_PARAM_construct_size_t(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %params12, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i64* noundef nonnull %bits2) #6
  %2 = bitcast %struct.ossl_param_st* %tmp2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %2) #4
  call void @OSSL_PARAM_construct_end(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %tmp2) #6
  %3 = bitcast %struct.ossl_param_st* %incdec.ptr to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(40) %3, i8* noundef nonnull align 8 dereferenceable(40) %2, i64 40, i1 false), !tbaa.struct !8
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %2) #4
  %call4 = call i32 @evp_pkey_ctx_set_params_strict(%struct.evp_pkey_ctx_st* noundef %ctx, %struct.ossl_param_st* noundef nonnull %arraydecay) #6
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %call4, %if.end ], [ %call, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #4
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %0) #4
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @EVP_PKEY_CTX_set_dh_paramgen_generator(%struct.evp_pkey_ctx_st* noundef %ctx, i32 noundef %gen) local_unnamed_addr #0 {
entry:
  %gen.addr = alloca i32, align 4
  %params = alloca [2 x %struct.ossl_param_st], align 16
  %tmp1 = alloca %struct.ossl_param_st, align 8
  store i32 %gen, i32* %gen.addr, align 4, !tbaa !4
  %0 = bitcast [2 x %struct.ossl_param_st]* %params to i8*
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %0) #4
  %call = tail call fastcc i32 @dh_paramgen_check(%struct.evp_pkey_ctx_st* noundef %ctx) #5
  %cmp = icmp slt i32 %call, 1
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %arraydecay = getelementptr inbounds [2 x %struct.ossl_param_st], [2 x %struct.ossl_param_st]* %params, i64 0, i64 0
  %incdec.ptr = getelementptr inbounds [2 x %struct.ossl_param_st], [2 x %struct.ossl_param_st]* %params, i64 0, i64 1
  %params10 = getelementptr inbounds [2 x %struct.ossl_param_st], [2 x %struct.ossl_param_st]* %params, i64 0, i64 0
  call void @OSSL_PARAM_construct_int(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %params10, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), i32* noundef nonnull %gen.addr) #6
  %1 = bitcast %struct.ossl_param_st* %tmp1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %1) #4
  call void @OSSL_PARAM_construct_end(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %tmp1) #6
  %2 = bitcast %struct.ossl_param_st* %incdec.ptr to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(40) %2, i8* noundef nonnull align 8 dereferenceable(40) %1, i64 40, i1 false), !tbaa.struct !8
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %1) #4
  %call3 = call i32 @evp_pkey_ctx_set_params_strict(%struct.evp_pkey_ctx_st* noundef %ctx, %struct.ossl_param_st* noundef nonnull %arraydecay) #6
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %call3, %if.end ], [ %call, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %0) #4
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @EVP_PKEY_CTX_set_dh_rfc5114(%struct.evp_pkey_ctx_st* noundef %ctx, i32 noundef %gen) local_unnamed_addr #0 {
entry:
  %call = tail call i32 @EVP_PKEY_CTX_ctrl(%struct.evp_pkey_ctx_st* noundef %ctx, i32 noundef 920, i32 noundef 2, i32 noundef 4099, i32 noundef %gen, i8* noundef null) #6
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define i32 @EVP_PKEY_CTX_set_dhx_rfc5114(%struct.evp_pkey_ctx_st* noundef %ctx, i32 noundef %gen) local_unnamed_addr #0 {
entry:
  %call = tail call i32 @EVP_PKEY_CTX_set_dh_rfc5114(%struct.evp_pkey_ctx_st* noundef %ctx, i32 noundef %gen) #5
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define i32 @EVP_PKEY_CTX_set_dh_nid(%struct.evp_pkey_ctx_st* noundef %ctx, i32 noundef %nid) local_unnamed_addr #0 {
entry:
  %call = tail call i32 @EVP_PKEY_CTX_ctrl(%struct.evp_pkey_ctx_st* noundef %ctx, i32 noundef 28, i32 noundef 6, i32 noundef 4111, i32 noundef %nid, i8* noundef null) #6
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define i32 @EVP_PKEY_CTX_set_dh_pad(%struct.evp_pkey_ctx_st* noundef %ctx, i32 noundef %pad) local_unnamed_addr #0 {
entry:
  %dh_pad_params = alloca [2 x %struct.ossl_param_st], align 16
  %upad = alloca i32, align 4
  %tmp3 = alloca %struct.ossl_param_st, align 8
  %0 = bitcast [2 x %struct.ossl_param_st]* %dh_pad_params to i8*
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %0) #4
  %1 = bitcast i32* %upad to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %1) #4
  store i32 %pad, i32* %upad, align 4, !tbaa !4
  %cmp = icmp eq %struct.evp_pkey_ctx_st* %ctx, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %operation = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %ctx, i64 0, i32 0
  %2 = load i32, i32* %operation, align 8, !tbaa !13
  %cmp1 = icmp eq i32 %2, 2048
  br i1 %cmp1, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false, %entry
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0), i32 noundef 166, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.EVP_PKEY_CTX_set_dh_pad, i64 0, i64 0)) #6
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 6, i32 noundef 147, i8* noundef null) #6
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %arrayidx = getelementptr inbounds [2 x %struct.ossl_param_st], [2 x %struct.ossl_param_st]* %dh_pad_params, i64 0, i64 0
  %dh_pad_params7 = getelementptr inbounds [2 x %struct.ossl_param_st], [2 x %struct.ossl_param_st]* %dh_pad_params, i64 0, i64 0
  call void @OSSL_PARAM_construct_uint(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %dh_pad_params7, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i32* noundef nonnull %upad) #6
  %arrayidx2 = getelementptr inbounds [2 x %struct.ossl_param_st], [2 x %struct.ossl_param_st]* %dh_pad_params, i64 0, i64 1
  %3 = bitcast %struct.ossl_param_st* %tmp3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %3) #4
  call void @OSSL_PARAM_construct_end(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %tmp3) #6
  %4 = bitcast %struct.ossl_param_st* %arrayidx2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(40) %4, i8* noundef nonnull align 8 dereferenceable(40) %3, i64 40, i1 false), !tbaa.struct !8
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %3) #4
  %call = call i32 @evp_pkey_ctx_set_params_strict(%struct.evp_pkey_ctx_st* noundef nonnull %ctx, %struct.ossl_param_st* noundef nonnull %arrayidx) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ -2, %if.then ], [ %call, %if.end ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %1) #4
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %0) #4
  ret i32 %retval.0
}

declare void @ERR_new() local_unnamed_addr #2

declare void @ERR_set_debug(i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #2

declare void @ERR_set_error(i32 noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #2

declare void @OSSL_PARAM_construct_uint(%struct.ossl_param_st* sret(%struct.ossl_param_st) align 8, i8* noundef, i32* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @EVP_PKEY_CTX_set_dh_kdf_type(%struct.evp_pkey_ctx_st* noundef %ctx, i32 noundef %kdf) local_unnamed_addr #0 {
entry:
  %call = tail call i32 @EVP_PKEY_CTX_ctrl(%struct.evp_pkey_ctx_st* noundef %ctx, i32 noundef 920, i32 noundef 2048, i32 noundef 4102, i32 noundef %kdf, i8* noundef null) #6
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define i32 @EVP_PKEY_CTX_get_dh_kdf_type(%struct.evp_pkey_ctx_st* noundef %ctx) local_unnamed_addr #0 {
entry:
  %call = tail call i32 @EVP_PKEY_CTX_ctrl(%struct.evp_pkey_ctx_st* noundef %ctx, i32 noundef 920, i32 noundef 2048, i32 noundef 4102, i32 noundef -2, i8* noundef null) #6
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define i32 @EVP_PKEY_CTX_set0_dh_kdf_oid(%struct.evp_pkey_ctx_st* noundef %ctx, %struct.asn1_object_st* noundef %oid) local_unnamed_addr #0 {
entry:
  %0 = bitcast %struct.asn1_object_st* %oid to i8*
  %call = tail call i32 @EVP_PKEY_CTX_ctrl(%struct.evp_pkey_ctx_st* noundef %ctx, i32 noundef 920, i32 noundef 2048, i32 noundef 4109, i32 noundef 0, i8* noundef %0) #6
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define i32 @EVP_PKEY_CTX_get0_dh_kdf_oid(%struct.evp_pkey_ctx_st* noundef %ctx, %struct.asn1_object_st** noundef %oid) local_unnamed_addr #0 {
entry:
  %0 = bitcast %struct.asn1_object_st** %oid to i8*
  %call = tail call i32 @EVP_PKEY_CTX_ctrl(%struct.evp_pkey_ctx_st* noundef %ctx, i32 noundef 920, i32 noundef 2048, i32 noundef 4110, i32 noundef 0, i8* noundef %0) #6
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define i32 @EVP_PKEY_CTX_set_dh_kdf_md(%struct.evp_pkey_ctx_st* noundef %ctx, %struct.evp_md_st* noundef %md) local_unnamed_addr #0 {
entry:
  %0 = bitcast %struct.evp_md_st* %md to i8*
  %call = tail call i32 @EVP_PKEY_CTX_ctrl(%struct.evp_pkey_ctx_st* noundef %ctx, i32 noundef 920, i32 noundef 2048, i32 noundef 4103, i32 noundef 0, i8* noundef %0) #6
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define i32 @EVP_PKEY_CTX_get_dh_kdf_md(%struct.evp_pkey_ctx_st* noundef %ctx, %struct.evp_md_st** noundef %pmd) local_unnamed_addr #0 {
entry:
  %0 = bitcast %struct.evp_md_st** %pmd to i8*
  %call = tail call i32 @EVP_PKEY_CTX_ctrl(%struct.evp_pkey_ctx_st* noundef %ctx, i32 noundef 920, i32 noundef 2048, i32 noundef 4104, i32 noundef 0, i8* noundef %0) #6
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define i32 @EVP_PKEY_CTX_set_dh_kdf_outlen(%struct.evp_pkey_ctx_st* noundef %ctx, i32 noundef %outlen) local_unnamed_addr #0 {
entry:
  %len = alloca i64, align 8
  %params = alloca [2 x %struct.ossl_param_st], align 16
  %tmp6 = alloca %struct.ossl_param_st, align 8
  %0 = bitcast i64* %len to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #4
  %conv = sext i32 %outlen to i64
  store i64 %conv, i64* %len, align 8, !tbaa !11
  %1 = bitcast [2 x %struct.ossl_param_st]* %params to i8*
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %1) #4
  %arraydecay = getelementptr inbounds [2 x %struct.ossl_param_st], [2 x %struct.ossl_param_st]* %params, i64 0, i64 0
  %call = tail call fastcc i32 @dh_param_derive_check(%struct.evp_pkey_ctx_st* noundef %ctx) #5
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %cmp2 = icmp slt i32 %outlen, 1
  br i1 %cmp2, label %cleanup, label %if.end5

if.end5:                                          ; preds = %if.end
  %incdec.ptr = getelementptr inbounds [2 x %struct.ossl_param_st], [2 x %struct.ossl_param_st]* %params, i64 0, i64 1
  %params24 = getelementptr inbounds [2 x %struct.ossl_param_st], [2 x %struct.ossl_param_st]* %params, i64 0, i64 0
  call void @OSSL_PARAM_construct_size_t(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %params24, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0), i64* noundef nonnull %len) #6
  %2 = bitcast %struct.ossl_param_st* %tmp6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %2) #4
  call void @OSSL_PARAM_construct_end(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %tmp6) #6
  %3 = bitcast %struct.ossl_param_st* %incdec.ptr to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(40) %3, i8* noundef nonnull align 8 dereferenceable(40) %2, i64 40, i1 false), !tbaa.struct !8
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %2) #4
  %call8 = call i32 @evp_pkey_ctx_set_params_strict(%struct.evp_pkey_ctx_st* noundef %ctx, %struct.ossl_param_st* noundef nonnull %arraydecay) #6
  %cmp9 = icmp eq i32 %call8, -2
  br i1 %cmp9, label %if.then11, label %cleanup

if.then11:                                        ; preds = %if.end5
  call void @ERR_new() #6
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0), i32 noundef 261, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.EVP_PKEY_CTX_set_dh_kdf_outlen, i64 0, i64 0)) #6
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 6, i32 noundef 147, i8* noundef null) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.then11, %if.end, %entry
  %retval.0 = phi i32 [ %call, %entry ], [ -2, %if.end ], [ -2, %if.then11 ], [ %call8, %if.end5 ]
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %1) #4
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #4
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @dh_param_derive_check(%struct.evp_pkey_ctx_st* noundef readonly %ctx) unnamed_addr #0 {
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
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0), i32 noundef 37, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.dh_param_derive_check, i64 0, i64 0)) #6
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 6, i32 noundef 147, i8* noundef null) #6
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %keymgmt = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %ctx, i64 0, i32 4
  %1 = load %struct.evp_keymgmt_st*, %struct.evp_keymgmt_st** %keymgmt, align 8, !tbaa !16
  %cmp2 = icmp eq %struct.evp_keymgmt_st* %1, null
  br i1 %cmp2, label %land.lhs.true, label %return

land.lhs.true:                                    ; preds = %if.end
  %pmeth = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %ctx, i64 0, i32 12
  %2 = load %struct.evp_pkey_method_st*, %struct.evp_pkey_method_st** %pmeth, align 8, !tbaa !17
  %pkey_id = getelementptr inbounds %struct.evp_pkey_method_st, %struct.evp_pkey_method_st* %2, i64 0, i32 0
  %3 = load i32, i32* %pkey_id, align 8, !tbaa !18
  %switch.selectcmp.case1 = icmp eq i32 %3, 28
  %switch.selectcmp.case2 = icmp eq i32 %3, 920
  %switch.selectcmp = or i1 %switch.selectcmp.case1, %switch.selectcmp.case2
  %4 = select i1 %switch.selectcmp, i32 1, i32 -1
  br label %return

return:                                           ; preds = %if.end, %land.lhs.true, %if.then
  %retval.0 = phi i32 [ -2, %if.then ], [ %4, %land.lhs.true ], [ 1, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @EVP_PKEY_CTX_get_dh_kdf_outlen(%struct.evp_pkey_ctx_st* noundef %ctx, i32* nocapture noundef writeonly %plen) local_unnamed_addr #0 {
entry:
  %len = alloca i64, align 8
  %params = alloca [2 x %struct.ossl_param_st], align 16
  %tmp1 = alloca %struct.ossl_param_st, align 8
  %0 = bitcast i64* %len to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #4
  store i64 4294967295, i64* %len, align 8, !tbaa !11
  %1 = bitcast [2 x %struct.ossl_param_st]* %params to i8*
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %1) #4
  %call = tail call fastcc i32 @dh_param_derive_check(%struct.evp_pkey_ctx_st* noundef %ctx) #5
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %arraydecay = getelementptr inbounds [2 x %struct.ossl_param_st], [2 x %struct.ossl_param_st]* %params, i64 0, i64 0
  %incdec.ptr = getelementptr inbounds [2 x %struct.ossl_param_st], [2 x %struct.ossl_param_st]* %params, i64 0, i64 1
  %params24 = getelementptr inbounds [2 x %struct.ossl_param_st], [2 x %struct.ossl_param_st]* %params, i64 0, i64 0
  call void @OSSL_PARAM_construct_size_t(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %params24, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0), i64* noundef nonnull %len) #6
  %2 = bitcast %struct.ossl_param_st* %tmp1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %2) #4
  call void @OSSL_PARAM_construct_end(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %tmp1) #6
  %3 = bitcast %struct.ossl_param_st* %incdec.ptr to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(40) %3, i8* noundef nonnull align 8 dereferenceable(40) %2, i64 40, i1 false), !tbaa.struct !8
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %2) #4
  %call3 = call i32 @evp_pkey_ctx_get_params_strict(%struct.evp_pkey_ctx_st* noundef %ctx, %struct.ossl_param_st* noundef nonnull %arraydecay) #6
  %cmp4 = icmp eq i32 %call3, -2
  br i1 %cmp4, label %if.end6.thread, label %if.end6

if.end6.thread:                                   ; preds = %if.end
  call void @ERR_new() #6
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0), i32 noundef 281, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.EVP_PKEY_CTX_get_dh_kdf_outlen, i64 0, i64 0)) #6
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 6, i32 noundef 147, i8* noundef null) #6
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %cmp7 = icmp ne i32 %call3, 1
  %4 = load i64, i64* %len, align 8
  %cmp8 = icmp ugt i64 %4, 2147483647
  %or.cond = select i1 %cmp7, i1 true, i1 %cmp8
  br i1 %or.cond, label %cleanup, label %if.end10

if.end10:                                         ; preds = %if.end6
  %conv = trunc i64 %4 to i32
  store i32 %conv, i32* %plen, align 4, !tbaa !4
  br label %cleanup

cleanup:                                          ; preds = %if.end6.thread, %if.end6, %entry, %if.end10
  %retval.0 = phi i32 [ 1, %if.end10 ], [ %call, %entry ], [ -1, %if.end6 ], [ -1, %if.end6.thread ]
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %1) #4
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #4
  ret i32 %retval.0
}

declare i32 @evp_pkey_ctx_get_params_strict(%struct.evp_pkey_ctx_st* noundef, %struct.ossl_param_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @EVP_PKEY_CTX_set0_dh_kdf_ukm(%struct.evp_pkey_ctx_st* noundef %ctx, i8* noundef %ukm, i32 noundef %len) local_unnamed_addr #0 {
entry:
  %params = alloca [2 x %struct.ossl_param_st], align 16
  %tmp4 = alloca %struct.ossl_param_st, align 8
  %0 = bitcast [2 x %struct.ossl_param_st]* %params to i8*
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %0) #4
  %arraydecay = getelementptr inbounds [2 x %struct.ossl_param_st], [2 x %struct.ossl_param_st]* %params, i64 0, i64 0
  %cmp = icmp slt i32 %len, 0
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call = tail call fastcc i32 @dh_param_derive_check(%struct.evp_pkey_ctx_st* noundef %ctx) #5
  %cmp1.not = icmp eq i32 %call, 1
  br i1 %cmp1.not, label %if.end3, label %cleanup

if.end3:                                          ; preds = %if.end
  %incdec.ptr = getelementptr inbounds [2 x %struct.ossl_param_st], [2 x %struct.ossl_param_st]* %params, i64 0, i64 1
  %conv27 = zext i32 %len to i64
  %params28 = getelementptr inbounds [2 x %struct.ossl_param_st], [2 x %struct.ossl_param_st]* %params, i64 0, i64 0
  call void @OSSL_PARAM_construct_octet_string(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %params28, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0), i8* noundef %ukm, i64 noundef %conv27) #6
  %1 = bitcast %struct.ossl_param_st* %tmp4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %1) #4
  call void @OSSL_PARAM_construct_end(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %tmp4) #6
  %2 = bitcast %struct.ossl_param_st* %incdec.ptr to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(40) %2, i8* noundef nonnull align 8 dereferenceable(40) %1, i64 40, i1 false), !tbaa.struct !8
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %1) #4
  %call6 = call i32 @evp_pkey_ctx_set_params_strict(%struct.evp_pkey_ctx_st* noundef %ctx, %struct.ossl_param_st* noundef nonnull %arraydecay) #6
  switch i32 %call6, label %cleanup [
    i32 -2, label %if.then9
    i32 1, label %if.then13
  ]

if.then9:                                         ; preds = %if.end3
  call void @ERR_new() #6
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0), i32 noundef 313, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.EVP_PKEY_CTX_set0_dh_kdf_ukm, i64 0, i64 0)) #6
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 6, i32 noundef 147, i8* noundef null) #6
  br label %cleanup

if.then13:                                        ; preds = %if.end3
  call void @CRYPTO_free(i8* noundef %ukm, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0), i32 noundef 315) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then9, %if.then13, %if.end3, %if.end, %entry
  %retval.0 = phi i32 [ -1, %entry ], [ %call, %if.end ], [ %call6, %if.end3 ], [ 1, %if.then13 ], [ -2, %if.then9 ]
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %0) #4
  ret i32 %retval.0
}

declare void @CRYPTO_free(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @EVP_PKEY_CTX_get0_dh_kdf_ukm(%struct.evp_pkey_ctx_st* noundef %ctx, i8** noundef %pukm) local_unnamed_addr #0 {
entry:
  %params = alloca [2 x %struct.ossl_param_st], align 16
  %tmp1 = alloca %struct.ossl_param_st, align 8
  %0 = bitcast [2 x %struct.ossl_param_st]* %params to i8*
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %0) #4
  %call = tail call fastcc i32 @dh_param_derive_check(%struct.evp_pkey_ctx_st* noundef %ctx) #5
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %arraydecay = getelementptr inbounds [2 x %struct.ossl_param_st], [2 x %struct.ossl_param_st]* %params, i64 0, i64 0
  %incdec.ptr = getelementptr inbounds [2 x %struct.ossl_param_st], [2 x %struct.ossl_param_st]* %params, i64 0, i64 1
  %params25 = getelementptr inbounds [2 x %struct.ossl_param_st], [2 x %struct.ossl_param_st]* %params, i64 0, i64 0
  call void @OSSL_PARAM_construct_octet_ptr(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %params25, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0), i8** noundef %pukm, i64 noundef 0) #6
  %1 = bitcast %struct.ossl_param_st* %tmp1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %1) #4
  call void @OSSL_PARAM_construct_end(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %tmp1) #6
  %2 = bitcast %struct.ossl_param_st* %incdec.ptr to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(40) %2, i8* noundef nonnull align 8 dereferenceable(40) %1, i64 40, i1 false), !tbaa.struct !8
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %1) #4
  %call3 = call i32 @evp_pkey_ctx_get_params_strict(%struct.evp_pkey_ctx_st* noundef %ctx, %struct.ossl_param_st* noundef nonnull %arraydecay) #6
  switch i32 %call3, label %cleanup [
    i32 -2, label %if.then5
    i32 1, label %if.end9
  ]

if.then5:                                         ; preds = %if.end
  call void @ERR_new() #6
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0), i32 noundef 336, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.EVP_PKEY_CTX_get0_dh_kdf_ukm, i64 0, i64 0)) #6
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 6, i32 noundef 147, i8* noundef null) #6
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %return_size = getelementptr inbounds [2 x %struct.ossl_param_st], [2 x %struct.ossl_param_st]* %params, i64 0, i64 0, i32 4
  %3 = load i64, i64* %return_size, align 16, !tbaa !20
  %cmp10 = icmp ugt i64 %3, 2147483647
  %conv = trunc i64 %3 to i32
  %spec.select = select i1 %cmp10, i32 -1, i32 %conv
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %if.then5, %if.end, %entry
  %retval.0 = phi i32 [ %call, %entry ], [ -1, %if.end ], [ -1, %if.then5 ], [ %spec.select, %if.end9 ]
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %0) #4
  ret i32 %retval.0
}

declare void @OSSL_PARAM_construct_octet_ptr(%struct.ossl_param_st* sret(%struct.ossl_param_st) align 8, i8* noundef, i8** noundef, i64 noundef) local_unnamed_addr #2

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
