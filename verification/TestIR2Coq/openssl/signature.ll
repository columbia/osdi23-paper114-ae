; ModuleID = 'crypto/evp/signature.c'
source_filename = "crypto/evp/signature.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evp_signature_st = type { i32, i8*, i8*, %struct.ossl_provider_st*, i32, i8*, i8* (i8*, i8*)*, i32 (i8*, i8*, %struct.ossl_param_st*)*, i32 (i8*, i8*, i64*, i64, i8*, i64)*, i32 (i8*, i8*, %struct.ossl_param_st*)*, i32 (i8*, i8*, i64, i8*, i64)*, i32 (i8*, i8*, %struct.ossl_param_st*)*, i32 (i8*, i8*, i64*, i64, i8*, i64)*, i32 (i8*, i8*, i8*, %struct.ossl_param_st*)*, i32 (i8*, i8*, i64)*, i32 (i8*, i8*, i64*, i64)*, i32 (i8*, i8*, i64*, i64, i8*, i64)*, i32 (i8*, i8*, i8*, %struct.ossl_param_st*)*, i32 (i8*, i8*, i64)*, i32 (i8*, i8*, i64)*, i32 (i8*, i8*, i64, i8*, i64)*, void (i8*)*, i8* (i8*)*, i32 (i8*, %struct.ossl_param_st*)*, %struct.ossl_param_st* (i8*, i8*)*, i32 (i8*, %struct.ossl_param_st*)*, %struct.ossl_param_st* (i8*, i8*)*, i32 (i8*, %struct.ossl_param_st*)*, %struct.ossl_param_st* (i8*)*, i32 (i8*, %struct.ossl_param_st*)*, %struct.ossl_param_st* (i8*)* }
%struct.ossl_provider_st = type opaque
%struct.ossl_param_st = type { i8*, i32, i8*, i64, i64 }
%struct.ossl_lib_ctx_st = type opaque
%struct.ossl_algorithm_st = type { i8*, i8*, %struct.ossl_dispatch_st*, i8* }
%struct.ossl_dispatch_st = type { i32, void ()* }
%struct.evp_pkey_ctx_st = type { i32, %struct.ossl_lib_ctx_st*, i8*, i8*, %struct.evp_keymgmt_st*, %union.anon, %struct.anon.4, i8*, {}*, i32*, i32, i32, %struct.evp_pkey_method_st*, %struct.engine_st*, %struct.evp_pkey_st*, %struct.evp_pkey_st*, i8*, i8, %struct.bignum_st* }
%struct.evp_keymgmt_st = type { i32, i32, i8*, i8*, %struct.ossl_provider_st*, i32, i8*, i8* (i8*)*, void (i8*)*, i32 (i8*, %struct.ossl_param_st*)*, %struct.ossl_param_st* (i8*)*, i32 (i8*, %struct.ossl_param_st*)*, %struct.ossl_param_st* (i8*)*, i8* (i8*, i32, %struct.ossl_param_st*)*, i32 (i8*, i8*)*, i32 (i8*, %struct.ossl_param_st*)*, %struct.ossl_param_st* (i8*, i8*)*, i8* (i8*, i32 (%struct.ossl_param_st*, i8*)*, i8*)*, void (i8*)*, i8* (i8*, i64)*, i8* (i32)*, i32 (i8*, i32)*, i32 (i8*, i32, i32)*, i32 (i8*, i8*, i32)*, i32 (i8*, i32, %struct.ossl_param_st*)*, %struct.ossl_param_st* (i32)*, i32 (i8*, i32, i32 (%struct.ossl_param_st*, i8*)*, i8*)*, %struct.ossl_param_st* (i32)*, i8* (i8*, i32)* }
%union.anon = type { %struct.anon.0 }
%struct.anon.0 = type { %struct.evp_keyexch_st*, i8* }
%struct.evp_keyexch_st = type { i32, i8*, i8*, %struct.ossl_provider_st*, i32, i8*, i8* (i8*)*, i32 (i8*, i8*, %struct.ossl_param_st*)*, i32 (i8*, i8*)*, i32 (i8*, i8*, i64*, i64)*, void (i8*)*, i8* (i8*)*, i32 (i8*, %struct.ossl_param_st*)*, %struct.ossl_param_st* (i8*, i8*)*, i32 (i8*, %struct.ossl_param_st*)*, %struct.ossl_param_st* (i8*, i8*)* }
%struct.anon.4 = type { i8*, i8*, i64, i8 }
%struct.evp_pkey_method_st = type { i32, i32, {}*, i32 (%struct.evp_pkey_ctx_st*, %struct.evp_pkey_ctx_st*)*, void (%struct.evp_pkey_ctx_st*)*, {}*, i32 (%struct.evp_pkey_ctx_st*, %struct.evp_pkey_st*)*, {}*, i32 (%struct.evp_pkey_ctx_st*, %struct.evp_pkey_st*)*, {}*, i32 (%struct.evp_pkey_ctx_st*, i8*, i64*, i8*, i64)*, {}*, i32 (%struct.evp_pkey_ctx_st*, i8*, i64, i8*, i64)*, {}*, i32 (%struct.evp_pkey_ctx_st*, i8*, i64*, i8*, i64)*, i32 (%struct.evp_pkey_ctx_st*, %struct.evp_md_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*, i8*, i64*, %struct.evp_md_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*, %struct.evp_md_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*, i8*, i32, %struct.evp_md_ctx_st*)*, {}*, i32 (%struct.evp_pkey_ctx_st*, i8*, i64*, i8*, i64)*, {}*, i32 (%struct.evp_pkey_ctx_st*, i8*, i64*, i8*, i64)*, {}*, i32 (%struct.evp_pkey_ctx_st*, i8*, i64*)*, i32 (%struct.evp_pkey_ctx_st*, i32, i32, i8*)*, i32 (%struct.evp_pkey_ctx_st*, i8*, i8*)*, i32 (%struct.evp_md_ctx_st*, i8*, i64*, i8*, i64)*, i32 (%struct.evp_md_ctx_st*, i8*, i64, i8*, i64)*, i32 (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_ctx_st*, %struct.evp_md_ctx_st*)* }
%struct.evp_md_ctx_st = type { %struct.evp_md_st*, %struct.evp_md_st*, %struct.engine_st*, i64, i8*, %struct.evp_pkey_ctx_st*, i32 (%struct.evp_md_ctx_st*, i8*, i64)*, i8*, %struct.evp_md_st* }
%struct.evp_md_st = type { i32, i32, i32, i64, i32, i32 (%struct.evp_md_ctx_st*)*, i32 (%struct.evp_md_ctx_st*, i8*, i64)*, i32 (%struct.evp_md_ctx_st*, i8*)*, i32 (%struct.evp_md_ctx_st*, %struct.evp_md_ctx_st*)*, i32 (%struct.evp_md_ctx_st*)*, i32, i32, i32 (%struct.evp_md_ctx_st*, i32, i32, i8*)*, i32, i8*, i8*, %struct.ossl_provider_st*, i32, i8*, i8* (i8*)*, i32 (i8*, %struct.ossl_param_st*)*, i32 (i8*, i8*, i64)*, i32 (i8*, i8*, i64*, i64)*, i32 (i8*, i8*, i64, i8*, i64*, i64)*, void (i8*)*, i8* (i8*)*, i32 (%struct.ossl_param_st*)*, i32 (i8*, %struct.ossl_param_st*)*, i32 (i8*, %struct.ossl_param_st*)*, %struct.ossl_param_st* (i8*)*, %struct.ossl_param_st* (i8*, i8*)*, %struct.ossl_param_st* (i8*, i8*)* }
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

@.str = private unnamed_addr constant [23 x i8] c"crypto/evp/signature.c\00", align 1
@__func__.EVP_PKEY_sign = private unnamed_addr constant [14 x i8] c"EVP_PKEY_sign\00", align 1
@__func__.EVP_PKEY_verify = private unnamed_addr constant [16 x i8] c"EVP_PKEY_verify\00", align 1
@__func__.EVP_PKEY_verify_recover = private unnamed_addr constant [24 x i8] c"EVP_PKEY_verify_recover\00", align 1
@__func__.evp_signature_from_algorithm = private unnamed_addr constant [29 x i8] c"evp_signature_from_algorithm\00", align 1
@__func__.evp_signature_new = private unnamed_addr constant [18 x i8] c"evp_signature_new\00", align 1
@__func__.evp_pkey_signature_init = private unnamed_addr constant [24 x i8] c"evp_pkey_signature_init\00", align 1

; Function Attrs: noinline nounwind uwtable
define void @EVP_SIGNATURE_free(%struct.evp_signature_st* noundef %signature) #0 {
entry:
  %i = alloca i32, align 4
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #6
  %cmp = icmp eq %struct.evp_signature_st* %signature, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %refcnt = getelementptr inbounds %struct.evp_signature_st, %struct.evp_signature_st* %signature, i64 0, i32 4
  call fastcc void @CRYPTO_DOWN_REF(i32* noundef nonnull %refcnt, i32* noundef nonnull %i) #7
  %1 = load i32, i32* %i, align 4, !tbaa !4
  %cmp1 = icmp sgt i32 %1, 0
  br i1 %cmp1, label %cleanup, label %if.end3

if.end3:                                          ; preds = %if.end
  %lock = getelementptr inbounds %struct.evp_signature_st, %struct.evp_signature_st* %signature, i64 0, i32 5
  %type_name = getelementptr inbounds %struct.evp_signature_st, %struct.evp_signature_st* %signature, i64 0, i32 1
  %2 = load i8*, i8** %type_name, align 8, !tbaa !8
  tail call void @CRYPTO_free(i8* noundef %2, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 289) #8
  %prov = getelementptr inbounds %struct.evp_signature_st, %struct.evp_signature_st* %signature, i64 0, i32 3
  %3 = load %struct.ossl_provider_st*, %struct.ossl_provider_st** %prov, align 8, !tbaa !11
  tail call void @ossl_provider_free(%struct.ossl_provider_st* noundef %3) #8
  %4 = load i8*, i8** %lock, align 8, !tbaa !12
  tail call void @CRYPTO_THREAD_lock_free(i8* noundef %4) #8
  %5 = bitcast %struct.evp_signature_st* %signature to i8*
  tail call void @CRYPTO_free(i8* noundef nonnull %5, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 292) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry, %if.end3
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #6
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: mustprogress nofree noinline norecurse nounwind uwtable willreturn
define internal fastcc void @CRYPTO_DOWN_REF(i32* nocapture noundef %val, i32* nocapture noundef writeonly %ret) unnamed_addr #2 {
entry:
  %0 = atomicrmw sub i32* %val, i32 1 monotonic, align 4
  %sub = add nsw i32 %0, -1
  store i32 %sub, i32* %ret, align 4, !tbaa !4
  %cmp = icmp eq i32 %sub, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  fence acquire
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare void @CRYPTO_free(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #3

declare void @ossl_provider_free(%struct.ossl_provider_st* noundef) local_unnamed_addr #3

declare void @CRYPTO_THREAD_lock_free(i8* noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: mustprogress nofree noinline nounwind uwtable willreturn
define i32 @EVP_SIGNATURE_up_ref(%struct.evp_signature_st* nocapture noundef %signature) #4 {
entry:
  %ref = alloca i32, align 4
  %0 = bitcast i32* %ref to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #6
  %refcnt = getelementptr inbounds %struct.evp_signature_st, %struct.evp_signature_st* %signature, i64 0, i32 4
  call fastcc void @CRYPTO_UP_REF(i32* noundef nonnull %refcnt, i32* noundef nonnull %ref) #7
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #6
  ret i32 1
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind uwtable willreturn
define internal fastcc void @CRYPTO_UP_REF(i32* nocapture noundef %val, i32* nocapture noundef writeonly %ret) unnamed_addr #2 {
entry:
  %0 = atomicrmw add i32* %val, i32 1 monotonic, align 4
  %add = add nsw i32 %0, 1
  store i32 %add, i32* %ret, align 4, !tbaa !4
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define %struct.ossl_provider_st* @EVP_SIGNATURE_get0_provider(%struct.evp_signature_st* nocapture noundef readonly %signature) local_unnamed_addr #5 {
entry:
  %prov = getelementptr inbounds %struct.evp_signature_st, %struct.evp_signature_st* %signature, i64 0, i32 3
  %0 = load %struct.ossl_provider_st*, %struct.ossl_provider_st** %prov, align 8, !tbaa !11
  ret %struct.ossl_provider_st* %0
}

; Function Attrs: noinline nounwind uwtable
define %struct.evp_signature_st* @EVP_SIGNATURE_fetch(%struct.ossl_lib_ctx_st* noundef %ctx, i8* noundef %algorithm, i8* noundef %properties) local_unnamed_addr #0 {
entry:
  %call = tail call i8* @evp_generic_fetch(%struct.ossl_lib_ctx_st* noundef %ctx, i32 noundef 12, i8* noundef %algorithm, i8* noundef %properties, i8* (i32, %struct.ossl_algorithm_st*, %struct.ossl_provider_st*)* noundef nonnull @evp_signature_from_algorithm, i32 (i8*)* noundef bitcast (i32 (%struct.evp_signature_st*)* @EVP_SIGNATURE_up_ref to i32 (i8*)*), void (i8*)* noundef bitcast (void (%struct.evp_signature_st*)* @EVP_SIGNATURE_free to void (i8*)*)) #8
  %0 = bitcast i8* %call to %struct.evp_signature_st*
  ret %struct.evp_signature_st* %0
}

declare i8* @evp_generic_fetch(%struct.ossl_lib_ctx_st* noundef, i32 noundef, i8* noundef, i8* noundef, i8* (i32, %struct.ossl_algorithm_st*, %struct.ossl_provider_st*)* noundef, i32 (i8*)* noundef, void (i8*)* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define internal i8* @evp_signature_from_algorithm(i32 noundef %name_id, %struct.ossl_algorithm_st* noundef %algodef, %struct.ossl_provider_st* noundef %prov) #0 {
entry:
  %implementation = getelementptr inbounds %struct.ossl_algorithm_st, %struct.ossl_algorithm_st* %algodef, i64 0, i32 2
  %0 = load %struct.ossl_dispatch_st*, %struct.ossl_dispatch_st** %implementation, align 8, !tbaa !13
  %call = tail call fastcc %struct.evp_signature_st* @evp_signature_new(%struct.ossl_provider_st* noundef %prov) #7
  %cmp = icmp eq %struct.evp_signature_st* %call, null
  br i1 %cmp, label %err.sink.split, label %if.end

if.end:                                           ; preds = %entry
  %name_id1 = getelementptr inbounds %struct.evp_signature_st, %struct.evp_signature_st* %call, i64 0, i32 0
  store i32 %name_id, i32* %name_id1, align 8, !tbaa !15
  %call2 = tail call i8* @ossl_algorithm_get1_first_name(%struct.ossl_algorithm_st* noundef nonnull %algodef) #8
  %type_name = getelementptr inbounds %struct.evp_signature_st, %struct.evp_signature_st* %call, i64 0, i32 1
  store i8* %call2, i8** %type_name, align 8, !tbaa !8
  %cmp3 = icmp eq i8* %call2, null
  br i1 %cmp3, label %err, label %if.end5

if.end5:                                          ; preds = %if.end
  %algorithm_description = getelementptr inbounds %struct.ossl_algorithm_st, %struct.ossl_algorithm_st* %algodef, i64 0, i32 3
  %1 = load i8*, i8** %algorithm_description, align 8, !tbaa !16
  %description = getelementptr inbounds %struct.evp_signature_st, %struct.evp_signature_st* %call, i64 0, i32 2
  store i8* %1, i8** %description, align 8, !tbaa !17
  %settable_ctx_md_params = getelementptr inbounds %struct.evp_signature_st, %struct.evp_signature_st* %call, i64 0, i32 30
  %set_ctx_md_params = getelementptr inbounds %struct.evp_signature_st, %struct.evp_signature_st* %call, i64 0, i32 29
  %gettable_ctx_md_params = getelementptr inbounds %struct.evp_signature_st, %struct.evp_signature_st* %call, i64 0, i32 28
  %get_ctx_md_params = getelementptr inbounds %struct.evp_signature_st, %struct.evp_signature_st* %call, i64 0, i32 27
  %settable_ctx_params = getelementptr inbounds %struct.evp_signature_st, %struct.evp_signature_st* %call, i64 0, i32 26
  %set_ctx_params = getelementptr inbounds %struct.evp_signature_st, %struct.evp_signature_st* %call, i64 0, i32 25
  %gettable_ctx_params = getelementptr inbounds %struct.evp_signature_st, %struct.evp_signature_st* %call, i64 0, i32 24
  %get_ctx_params = getelementptr inbounds %struct.evp_signature_st, %struct.evp_signature_st* %call, i64 0, i32 23
  %dupctx = getelementptr inbounds %struct.evp_signature_st, %struct.evp_signature_st* %call, i64 0, i32 22
  %freectx = getelementptr inbounds %struct.evp_signature_st, %struct.evp_signature_st* %call, i64 0, i32 21
  %digest_verify = getelementptr inbounds %struct.evp_signature_st, %struct.evp_signature_st* %call, i64 0, i32 20
  %digest_verify_final = getelementptr inbounds %struct.evp_signature_st, %struct.evp_signature_st* %call, i64 0, i32 19
  %digest_verify_update = getelementptr inbounds %struct.evp_signature_st, %struct.evp_signature_st* %call, i64 0, i32 18
  %digest_verify_init = getelementptr inbounds %struct.evp_signature_st, %struct.evp_signature_st* %call, i64 0, i32 17
  %digest_sign = getelementptr inbounds %struct.evp_signature_st, %struct.evp_signature_st* %call, i64 0, i32 16
  %digest_sign_final = getelementptr inbounds %struct.evp_signature_st, %struct.evp_signature_st* %call, i64 0, i32 15
  %digest_sign_update = getelementptr inbounds %struct.evp_signature_st, %struct.evp_signature_st* %call, i64 0, i32 14
  %digest_sign_init = getelementptr inbounds %struct.evp_signature_st, %struct.evp_signature_st* %call, i64 0, i32 13
  %verify_recover = getelementptr inbounds %struct.evp_signature_st, %struct.evp_signature_st* %call, i64 0, i32 12
  %verify_recover_init = getelementptr inbounds %struct.evp_signature_st, %struct.evp_signature_st* %call, i64 0, i32 11
  %verify = getelementptr inbounds %struct.evp_signature_st, %struct.evp_signature_st* %call, i64 0, i32 10
  %verify_init = getelementptr inbounds %struct.evp_signature_st, %struct.evp_signature_st* %call, i64 0, i32 9
  %sign = getelementptr inbounds %struct.evp_signature_st, %struct.evp_signature_st* %call, i64 0, i32 8
  %sign_init = getelementptr inbounds %struct.evp_signature_st, %struct.evp_signature_st* %call, i64 0, i32 7
  %newctx = getelementptr inbounds %struct.evp_signature_st, %struct.evp_signature_st* %call, i64 0, i32 6
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end5
  %fns.0 = phi %struct.ossl_dispatch_st* [ %0, %if.end5 ], [ %incdec.ptr, %for.inc ]
  %ctxfncnt.0 = phi i32 [ 0, %if.end5 ], [ %ctxfncnt.1, %for.inc ]
  %signfncnt.0 = phi i32 [ 0, %if.end5 ], [ %signfncnt.1, %for.inc ]
  %verifyfncnt.0 = phi i32 [ 0, %if.end5 ], [ %verifyfncnt.1, %for.inc ]
  %verifyrecfncnt.0 = phi i32 [ 0, %if.end5 ], [ %verifyrecfncnt.1, %for.inc ]
  %digsignfncnt.0 = phi i32 [ 0, %if.end5 ], [ %digsignfncnt.1, %for.inc ]
  %digverifyfncnt.0 = phi i32 [ 0, %if.end5 ], [ %digverifyfncnt.1, %for.inc ]
  %gparamfncnt.0 = phi i32 [ 0, %if.end5 ], [ %gparamfncnt.1, %for.inc ]
  %sparamfncnt.0 = phi i32 [ 0, %if.end5 ], [ %sparamfncnt.1, %for.inc ]
  %gmdparamfncnt.0 = phi i32 [ 0, %if.end5 ], [ %gmdparamfncnt.1, %for.inc ]
  %smdparamfncnt.0 = phi i32 [ 0, %if.end5 ], [ %smdparamfncnt.1, %for.inc ]
  %function_id = getelementptr inbounds %struct.ossl_dispatch_st, %struct.ossl_dispatch_st* %fns.0, i64 0, i32 0
  %2 = load i32, i32* %function_id, align 8, !tbaa !18
  switch i32 %2, label %for.inc [
    i32 0, label %for.end
    i32 1, label %sw.bb
    i32 2, label %sw.bb13
    i32 3, label %sw.bb20
    i32 4, label %sw.bb27
    i32 5, label %sw.bb34
    i32 6, label %sw.bb41
    i32 7, label %sw.bb48
    i32 8, label %sw.bb55
    i32 9, label %sw.bb61
    i32 10, label %sw.bb68
    i32 11, label %sw.bb75
    i32 12, label %sw.bb81
    i32 13, label %sw.bb87
    i32 14, label %sw.bb94
    i32 15, label %sw.bb101
    i32 16, label %sw.bb107
    i32 17, label %sw.bb114
    i32 18, label %sw.bb120
    i32 19, label %sw.bb127
    i32 20, label %sw.bb134
    i32 21, label %sw.bb141
    i32 22, label %sw.bb148
    i32 23, label %sw.bb155
    i32 24, label %sw.bb162
    i32 25, label %sw.bb169
  ]

sw.bb:                                            ; preds = %for.cond
  %3 = load i8* (i8*, i8*)*, i8* (i8*, i8*)** %newctx, align 8, !tbaa !20
  %cmp8.not = icmp eq i8* (i8*, i8*)* %3, null
  br i1 %cmp8.not, label %if.end10, label %for.inc

if.end10:                                         ; preds = %sw.bb
  %call11 = tail call fastcc i8* (i8*, i8*)* @OSSL_FUNC_signature_newctx(%struct.ossl_dispatch_st* noundef nonnull %fns.0) #7
  store i8* (i8*, i8*)* %call11, i8* (i8*, i8*)** %newctx, align 8, !tbaa !20
  %inc = add nsw i32 %ctxfncnt.0, 1
  br label %for.inc

sw.bb13:                                          ; preds = %for.cond
  %4 = load i32 (i8*, i8*, %struct.ossl_param_st*)*, i32 (i8*, i8*, %struct.ossl_param_st*)** %sign_init, align 8, !tbaa !21
  %cmp14.not = icmp eq i32 (i8*, i8*, %struct.ossl_param_st*)* %4, null
  br i1 %cmp14.not, label %if.end16, label %for.inc

if.end16:                                         ; preds = %sw.bb13
  %call17 = tail call fastcc i32 (i8*, i8*, %struct.ossl_param_st*)* @OSSL_FUNC_signature_sign_init(%struct.ossl_dispatch_st* noundef nonnull %fns.0) #7
  store i32 (i8*, i8*, %struct.ossl_param_st*)* %call17, i32 (i8*, i8*, %struct.ossl_param_st*)** %sign_init, align 8, !tbaa !21
  %inc19 = add nsw i32 %signfncnt.0, 1
  br label %for.inc

sw.bb20:                                          ; preds = %for.cond
  %5 = load i32 (i8*, i8*, i64*, i64, i8*, i64)*, i32 (i8*, i8*, i64*, i64, i8*, i64)** %sign, align 8, !tbaa !22
  %cmp21.not = icmp eq i32 (i8*, i8*, i64*, i64, i8*, i64)* %5, null
  br i1 %cmp21.not, label %if.end23, label %for.inc

if.end23:                                         ; preds = %sw.bb20
  %call24 = tail call fastcc i32 (i8*, i8*, i64*, i64, i8*, i64)* @OSSL_FUNC_signature_sign(%struct.ossl_dispatch_st* noundef nonnull %fns.0) #7
  store i32 (i8*, i8*, i64*, i64, i8*, i64)* %call24, i32 (i8*, i8*, i64*, i64, i8*, i64)** %sign, align 8, !tbaa !22
  %inc26 = add nsw i32 %signfncnt.0, 1
  br label %for.inc

sw.bb27:                                          ; preds = %for.cond
  %6 = load i32 (i8*, i8*, %struct.ossl_param_st*)*, i32 (i8*, i8*, %struct.ossl_param_st*)** %verify_init, align 8, !tbaa !23
  %cmp28.not = icmp eq i32 (i8*, i8*, %struct.ossl_param_st*)* %6, null
  br i1 %cmp28.not, label %if.end30, label %for.inc

if.end30:                                         ; preds = %sw.bb27
  %call31 = tail call fastcc i32 (i8*, i8*, %struct.ossl_param_st*)* @OSSL_FUNC_signature_verify_init(%struct.ossl_dispatch_st* noundef nonnull %fns.0) #7
  store i32 (i8*, i8*, %struct.ossl_param_st*)* %call31, i32 (i8*, i8*, %struct.ossl_param_st*)** %verify_init, align 8, !tbaa !23
  %inc33 = add nsw i32 %verifyfncnt.0, 1
  br label %for.inc

sw.bb34:                                          ; preds = %for.cond
  %7 = load i32 (i8*, i8*, i64, i8*, i64)*, i32 (i8*, i8*, i64, i8*, i64)** %verify, align 8, !tbaa !24
  %cmp35.not = icmp eq i32 (i8*, i8*, i64, i8*, i64)* %7, null
  br i1 %cmp35.not, label %if.end37, label %for.inc

if.end37:                                         ; preds = %sw.bb34
  %call38 = tail call fastcc i32 (i8*, i8*, i64, i8*, i64)* @OSSL_FUNC_signature_verify(%struct.ossl_dispatch_st* noundef nonnull %fns.0) #7
  store i32 (i8*, i8*, i64, i8*, i64)* %call38, i32 (i8*, i8*, i64, i8*, i64)** %verify, align 8, !tbaa !24
  %inc40 = add nsw i32 %verifyfncnt.0, 1
  br label %for.inc

sw.bb41:                                          ; preds = %for.cond
  %8 = load i32 (i8*, i8*, %struct.ossl_param_st*)*, i32 (i8*, i8*, %struct.ossl_param_st*)** %verify_recover_init, align 8, !tbaa !25
  %cmp42.not = icmp eq i32 (i8*, i8*, %struct.ossl_param_st*)* %8, null
  br i1 %cmp42.not, label %if.end44, label %for.inc

if.end44:                                         ; preds = %sw.bb41
  %call45 = tail call fastcc i32 (i8*, i8*, %struct.ossl_param_st*)* @OSSL_FUNC_signature_verify_recover_init(%struct.ossl_dispatch_st* noundef nonnull %fns.0) #7
  store i32 (i8*, i8*, %struct.ossl_param_st*)* %call45, i32 (i8*, i8*, %struct.ossl_param_st*)** %verify_recover_init, align 8, !tbaa !25
  %inc47 = add nsw i32 %verifyrecfncnt.0, 1
  br label %for.inc

sw.bb48:                                          ; preds = %for.cond
  %9 = load i32 (i8*, i8*, i64*, i64, i8*, i64)*, i32 (i8*, i8*, i64*, i64, i8*, i64)** %verify_recover, align 8, !tbaa !26
  %cmp49.not = icmp eq i32 (i8*, i8*, i64*, i64, i8*, i64)* %9, null
  br i1 %cmp49.not, label %if.end51, label %for.inc

if.end51:                                         ; preds = %sw.bb48
  %call52 = tail call fastcc i32 (i8*, i8*, i64*, i64, i8*, i64)* @OSSL_FUNC_signature_verify_recover(%struct.ossl_dispatch_st* noundef nonnull %fns.0) #7
  store i32 (i8*, i8*, i64*, i64, i8*, i64)* %call52, i32 (i8*, i8*, i64*, i64, i8*, i64)** %verify_recover, align 8, !tbaa !26
  %inc54 = add nsw i32 %verifyrecfncnt.0, 1
  br label %for.inc

sw.bb55:                                          ; preds = %for.cond
  %10 = load i32 (i8*, i8*, i8*, %struct.ossl_param_st*)*, i32 (i8*, i8*, i8*, %struct.ossl_param_st*)** %digest_sign_init, align 8, !tbaa !27
  %cmp56.not = icmp eq i32 (i8*, i8*, i8*, %struct.ossl_param_st*)* %10, null
  br i1 %cmp56.not, label %if.end58, label %for.inc

if.end58:                                         ; preds = %sw.bb55
  %call59 = tail call fastcc i32 (i8*, i8*, i8*, %struct.ossl_param_st*)* @OSSL_FUNC_signature_digest_sign_init(%struct.ossl_dispatch_st* noundef nonnull %fns.0) #7
  store i32 (i8*, i8*, i8*, %struct.ossl_param_st*)* %call59, i32 (i8*, i8*, i8*, %struct.ossl_param_st*)** %digest_sign_init, align 8, !tbaa !27
  br label %for.inc

sw.bb61:                                          ; preds = %for.cond
  %11 = load i32 (i8*, i8*, i64)*, i32 (i8*, i8*, i64)** %digest_sign_update, align 8, !tbaa !28
  %cmp62.not = icmp eq i32 (i8*, i8*, i64)* %11, null
  br i1 %cmp62.not, label %if.end64, label %for.inc

if.end64:                                         ; preds = %sw.bb61
  %call65 = tail call fastcc i32 (i8*, i8*, i64)* @OSSL_FUNC_signature_digest_sign_update(%struct.ossl_dispatch_st* noundef nonnull %fns.0) #7
  store i32 (i8*, i8*, i64)* %call65, i32 (i8*, i8*, i64)** %digest_sign_update, align 8, !tbaa !28
  %inc67 = add nsw i32 %digsignfncnt.0, 1
  br label %for.inc

sw.bb68:                                          ; preds = %for.cond
  %12 = load i32 (i8*, i8*, i64*, i64)*, i32 (i8*, i8*, i64*, i64)** %digest_sign_final, align 8, !tbaa !29
  %cmp69.not = icmp eq i32 (i8*, i8*, i64*, i64)* %12, null
  br i1 %cmp69.not, label %if.end71, label %for.inc

if.end71:                                         ; preds = %sw.bb68
  %call72 = tail call fastcc i32 (i8*, i8*, i64*, i64)* @OSSL_FUNC_signature_digest_sign_final(%struct.ossl_dispatch_st* noundef nonnull %fns.0) #7
  store i32 (i8*, i8*, i64*, i64)* %call72, i32 (i8*, i8*, i64*, i64)** %digest_sign_final, align 8, !tbaa !29
  %inc74 = add nsw i32 %digsignfncnt.0, 1
  br label %for.inc

sw.bb75:                                          ; preds = %for.cond
  %13 = load i32 (i8*, i8*, i64*, i64, i8*, i64)*, i32 (i8*, i8*, i64*, i64, i8*, i64)** %digest_sign, align 8, !tbaa !30
  %cmp76.not = icmp eq i32 (i8*, i8*, i64*, i64, i8*, i64)* %13, null
  br i1 %cmp76.not, label %if.end78, label %for.inc

if.end78:                                         ; preds = %sw.bb75
  %call79 = tail call fastcc i32 (i8*, i8*, i64*, i64, i8*, i64)* @OSSL_FUNC_signature_digest_sign(%struct.ossl_dispatch_st* noundef nonnull %fns.0) #7
  store i32 (i8*, i8*, i64*, i64, i8*, i64)* %call79, i32 (i8*, i8*, i64*, i64, i8*, i64)** %digest_sign, align 8, !tbaa !30
  br label %for.inc

sw.bb81:                                          ; preds = %for.cond
  %14 = load i32 (i8*, i8*, i8*, %struct.ossl_param_st*)*, i32 (i8*, i8*, i8*, %struct.ossl_param_st*)** %digest_verify_init, align 8, !tbaa !31
  %cmp82.not = icmp eq i32 (i8*, i8*, i8*, %struct.ossl_param_st*)* %14, null
  br i1 %cmp82.not, label %if.end84, label %for.inc

if.end84:                                         ; preds = %sw.bb81
  %call85 = tail call fastcc i32 (i8*, i8*, i8*, %struct.ossl_param_st*)* @OSSL_FUNC_signature_digest_verify_init(%struct.ossl_dispatch_st* noundef nonnull %fns.0) #7
  store i32 (i8*, i8*, i8*, %struct.ossl_param_st*)* %call85, i32 (i8*, i8*, i8*, %struct.ossl_param_st*)** %digest_verify_init, align 8, !tbaa !31
  br label %for.inc

sw.bb87:                                          ; preds = %for.cond
  %15 = load i32 (i8*, i8*, i64)*, i32 (i8*, i8*, i64)** %digest_verify_update, align 8, !tbaa !32
  %cmp88.not = icmp eq i32 (i8*, i8*, i64)* %15, null
  br i1 %cmp88.not, label %if.end90, label %for.inc

if.end90:                                         ; preds = %sw.bb87
  %call91 = tail call fastcc i32 (i8*, i8*, i64)* @OSSL_FUNC_signature_digest_verify_update(%struct.ossl_dispatch_st* noundef nonnull %fns.0) #7
  store i32 (i8*, i8*, i64)* %call91, i32 (i8*, i8*, i64)** %digest_verify_update, align 8, !tbaa !32
  %inc93 = add nsw i32 %digverifyfncnt.0, 1
  br label %for.inc

sw.bb94:                                          ; preds = %for.cond
  %16 = load i32 (i8*, i8*, i64)*, i32 (i8*, i8*, i64)** %digest_verify_final, align 8, !tbaa !33
  %cmp95.not = icmp eq i32 (i8*, i8*, i64)* %16, null
  br i1 %cmp95.not, label %if.end97, label %for.inc

if.end97:                                         ; preds = %sw.bb94
  %call98 = tail call fastcc i32 (i8*, i8*, i64)* @OSSL_FUNC_signature_digest_verify_final(%struct.ossl_dispatch_st* noundef nonnull %fns.0) #7
  store i32 (i8*, i8*, i64)* %call98, i32 (i8*, i8*, i64)** %digest_verify_final, align 8, !tbaa !33
  %inc100 = add nsw i32 %digverifyfncnt.0, 1
  br label %for.inc

sw.bb101:                                         ; preds = %for.cond
  %17 = load i32 (i8*, i8*, i64, i8*, i64)*, i32 (i8*, i8*, i64, i8*, i64)** %digest_verify, align 8, !tbaa !34
  %cmp102.not = icmp eq i32 (i8*, i8*, i64, i8*, i64)* %17, null
  br i1 %cmp102.not, label %if.end104, label %for.inc

if.end104:                                        ; preds = %sw.bb101
  %call105 = tail call fastcc i32 (i8*, i8*, i64, i8*, i64)* @OSSL_FUNC_signature_digest_verify(%struct.ossl_dispatch_st* noundef nonnull %fns.0) #7
  store i32 (i8*, i8*, i64, i8*, i64)* %call105, i32 (i8*, i8*, i64, i8*, i64)** %digest_verify, align 8, !tbaa !34
  br label %for.inc

sw.bb107:                                         ; preds = %for.cond
  %18 = load void (i8*)*, void (i8*)** %freectx, align 8, !tbaa !35
  %cmp108.not = icmp eq void (i8*)* %18, null
  br i1 %cmp108.not, label %if.end110, label %for.inc

if.end110:                                        ; preds = %sw.bb107
  %call111 = tail call fastcc void (i8*)* @OSSL_FUNC_signature_freectx(%struct.ossl_dispatch_st* noundef nonnull %fns.0) #7
  store void (i8*)* %call111, void (i8*)** %freectx, align 8, !tbaa !35
  %inc113 = add nsw i32 %ctxfncnt.0, 1
  br label %for.inc

sw.bb114:                                         ; preds = %for.cond
  %19 = load i8* (i8*)*, i8* (i8*)** %dupctx, align 8, !tbaa !36
  %cmp115.not = icmp eq i8* (i8*)* %19, null
  br i1 %cmp115.not, label %if.end117, label %for.inc

if.end117:                                        ; preds = %sw.bb114
  %call118 = tail call fastcc i8* (i8*)* @OSSL_FUNC_signature_dupctx(%struct.ossl_dispatch_st* noundef nonnull %fns.0) #7
  store i8* (i8*)* %call118, i8* (i8*)** %dupctx, align 8, !tbaa !36
  br label %for.inc

sw.bb120:                                         ; preds = %for.cond
  %20 = load i32 (i8*, %struct.ossl_param_st*)*, i32 (i8*, %struct.ossl_param_st*)** %get_ctx_params, align 8, !tbaa !37
  %cmp121.not = icmp eq i32 (i8*, %struct.ossl_param_st*)* %20, null
  br i1 %cmp121.not, label %if.end123, label %for.inc

if.end123:                                        ; preds = %sw.bb120
  %call124 = tail call fastcc i32 (i8*, %struct.ossl_param_st*)* @OSSL_FUNC_signature_get_ctx_params(%struct.ossl_dispatch_st* noundef nonnull %fns.0) #7
  store i32 (i8*, %struct.ossl_param_st*)* %call124, i32 (i8*, %struct.ossl_param_st*)** %get_ctx_params, align 8, !tbaa !37
  %inc126 = add nsw i32 %gparamfncnt.0, 1
  br label %for.inc

sw.bb127:                                         ; preds = %for.cond
  %21 = load %struct.ossl_param_st* (i8*, i8*)*, %struct.ossl_param_st* (i8*, i8*)** %gettable_ctx_params, align 8, !tbaa !38
  %cmp128.not = icmp eq %struct.ossl_param_st* (i8*, i8*)* %21, null
  br i1 %cmp128.not, label %if.end130, label %for.inc

if.end130:                                        ; preds = %sw.bb127
  %call131 = tail call fastcc %struct.ossl_param_st* (i8*, i8*)* @OSSL_FUNC_signature_gettable_ctx_params(%struct.ossl_dispatch_st* noundef nonnull %fns.0) #7
  store %struct.ossl_param_st* (i8*, i8*)* %call131, %struct.ossl_param_st* (i8*, i8*)** %gettable_ctx_params, align 8, !tbaa !38
  %inc133 = add nsw i32 %gparamfncnt.0, 1
  br label %for.inc

sw.bb134:                                         ; preds = %for.cond
  %22 = load i32 (i8*, %struct.ossl_param_st*)*, i32 (i8*, %struct.ossl_param_st*)** %set_ctx_params, align 8, !tbaa !39
  %cmp135.not = icmp eq i32 (i8*, %struct.ossl_param_st*)* %22, null
  br i1 %cmp135.not, label %if.end137, label %for.inc

if.end137:                                        ; preds = %sw.bb134
  %call138 = tail call fastcc i32 (i8*, %struct.ossl_param_st*)* @OSSL_FUNC_signature_set_ctx_params(%struct.ossl_dispatch_st* noundef nonnull %fns.0) #7
  store i32 (i8*, %struct.ossl_param_st*)* %call138, i32 (i8*, %struct.ossl_param_st*)** %set_ctx_params, align 8, !tbaa !39
  %inc140 = add nsw i32 %sparamfncnt.0, 1
  br label %for.inc

sw.bb141:                                         ; preds = %for.cond
  %23 = load %struct.ossl_param_st* (i8*, i8*)*, %struct.ossl_param_st* (i8*, i8*)** %settable_ctx_params, align 8, !tbaa !40
  %cmp142.not = icmp eq %struct.ossl_param_st* (i8*, i8*)* %23, null
  br i1 %cmp142.not, label %if.end144, label %for.inc

if.end144:                                        ; preds = %sw.bb141
  %call145 = tail call fastcc %struct.ossl_param_st* (i8*, i8*)* @OSSL_FUNC_signature_settable_ctx_params(%struct.ossl_dispatch_st* noundef nonnull %fns.0) #7
  store %struct.ossl_param_st* (i8*, i8*)* %call145, %struct.ossl_param_st* (i8*, i8*)** %settable_ctx_params, align 8, !tbaa !40
  %inc147 = add nsw i32 %sparamfncnt.0, 1
  br label %for.inc

sw.bb148:                                         ; preds = %for.cond
  %24 = load i32 (i8*, %struct.ossl_param_st*)*, i32 (i8*, %struct.ossl_param_st*)** %get_ctx_md_params, align 8, !tbaa !41
  %cmp149.not = icmp eq i32 (i8*, %struct.ossl_param_st*)* %24, null
  br i1 %cmp149.not, label %if.end151, label %for.inc

if.end151:                                        ; preds = %sw.bb148
  %call152 = tail call fastcc i32 (i8*, %struct.ossl_param_st*)* @OSSL_FUNC_signature_get_ctx_md_params(%struct.ossl_dispatch_st* noundef nonnull %fns.0) #7
  store i32 (i8*, %struct.ossl_param_st*)* %call152, i32 (i8*, %struct.ossl_param_st*)** %get_ctx_md_params, align 8, !tbaa !41
  %inc154 = add nsw i32 %gmdparamfncnt.0, 1
  br label %for.inc

sw.bb155:                                         ; preds = %for.cond
  %25 = load %struct.ossl_param_st* (i8*)*, %struct.ossl_param_st* (i8*)** %gettable_ctx_md_params, align 8, !tbaa !42
  %cmp156.not = icmp eq %struct.ossl_param_st* (i8*)* %25, null
  br i1 %cmp156.not, label %if.end158, label %for.inc

if.end158:                                        ; preds = %sw.bb155
  %call159 = tail call fastcc %struct.ossl_param_st* (i8*)* @OSSL_FUNC_signature_gettable_ctx_md_params(%struct.ossl_dispatch_st* noundef nonnull %fns.0) #7
  store %struct.ossl_param_st* (i8*)* %call159, %struct.ossl_param_st* (i8*)** %gettable_ctx_md_params, align 8, !tbaa !42
  %inc161 = add nsw i32 %gmdparamfncnt.0, 1
  br label %for.inc

sw.bb162:                                         ; preds = %for.cond
  %26 = load i32 (i8*, %struct.ossl_param_st*)*, i32 (i8*, %struct.ossl_param_st*)** %set_ctx_md_params, align 8, !tbaa !43
  %cmp163.not = icmp eq i32 (i8*, %struct.ossl_param_st*)* %26, null
  br i1 %cmp163.not, label %if.end165, label %for.inc

if.end165:                                        ; preds = %sw.bb162
  %call166 = tail call fastcc i32 (i8*, %struct.ossl_param_st*)* @OSSL_FUNC_signature_set_ctx_md_params(%struct.ossl_dispatch_st* noundef nonnull %fns.0) #7
  store i32 (i8*, %struct.ossl_param_st*)* %call166, i32 (i8*, %struct.ossl_param_st*)** %set_ctx_md_params, align 8, !tbaa !43
  %inc168 = add nsw i32 %smdparamfncnt.0, 1
  br label %for.inc

sw.bb169:                                         ; preds = %for.cond
  %27 = load %struct.ossl_param_st* (i8*)*, %struct.ossl_param_st* (i8*)** %settable_ctx_md_params, align 8, !tbaa !44
  %cmp170.not = icmp eq %struct.ossl_param_st* (i8*)* %27, null
  br i1 %cmp170.not, label %if.end172, label %for.inc

if.end172:                                        ; preds = %sw.bb169
  %call173 = tail call fastcc %struct.ossl_param_st* (i8*)* @OSSL_FUNC_signature_settable_ctx_md_params(%struct.ossl_dispatch_st* noundef nonnull %fns.0) #7
  store %struct.ossl_param_st* (i8*)* %call173, %struct.ossl_param_st* (i8*)** %settable_ctx_md_params, align 8, !tbaa !44
  %inc175 = add nsw i32 %smdparamfncnt.0, 1
  br label %for.inc

for.inc:                                          ; preds = %for.cond, %if.end10, %if.end16, %if.end23, %if.end30, %if.end37, %if.end44, %if.end51, %if.end58, %if.end64, %if.end71, %if.end78, %if.end84, %if.end90, %if.end97, %if.end104, %if.end110, %if.end117, %if.end123, %if.end130, %if.end137, %if.end144, %if.end151, %if.end158, %if.end165, %if.end172, %sw.bb, %sw.bb13, %sw.bb20, %sw.bb27, %sw.bb34, %sw.bb41, %sw.bb48, %sw.bb55, %sw.bb61, %sw.bb68, %sw.bb75, %sw.bb81, %sw.bb87, %sw.bb94, %sw.bb101, %sw.bb107, %sw.bb114, %sw.bb120, %sw.bb127, %sw.bb134, %sw.bb141, %sw.bb148, %sw.bb155, %sw.bb162, %sw.bb169
  %ctxfncnt.1 = phi i32 [ %ctxfncnt.0, %sw.bb169 ], [ %ctxfncnt.0, %if.end172 ], [ %ctxfncnt.0, %sw.bb162 ], [ %ctxfncnt.0, %if.end165 ], [ %ctxfncnt.0, %sw.bb155 ], [ %ctxfncnt.0, %if.end158 ], [ %ctxfncnt.0, %sw.bb148 ], [ %ctxfncnt.0, %if.end151 ], [ %ctxfncnt.0, %sw.bb141 ], [ %ctxfncnt.0, %if.end144 ], [ %ctxfncnt.0, %sw.bb134 ], [ %ctxfncnt.0, %if.end137 ], [ %ctxfncnt.0, %sw.bb127 ], [ %ctxfncnt.0, %if.end130 ], [ %ctxfncnt.0, %sw.bb120 ], [ %ctxfncnt.0, %if.end123 ], [ %ctxfncnt.0, %sw.bb114 ], [ %ctxfncnt.0, %if.end117 ], [ %ctxfncnt.0, %sw.bb107 ], [ %inc113, %if.end110 ], [ %ctxfncnt.0, %sw.bb101 ], [ %ctxfncnt.0, %if.end104 ], [ %ctxfncnt.0, %sw.bb94 ], [ %ctxfncnt.0, %if.end97 ], [ %ctxfncnt.0, %sw.bb87 ], [ %ctxfncnt.0, %if.end90 ], [ %ctxfncnt.0, %sw.bb81 ], [ %ctxfncnt.0, %if.end84 ], [ %ctxfncnt.0, %sw.bb75 ], [ %ctxfncnt.0, %if.end78 ], [ %ctxfncnt.0, %sw.bb68 ], [ %ctxfncnt.0, %if.end71 ], [ %ctxfncnt.0, %sw.bb61 ], [ %ctxfncnt.0, %if.end64 ], [ %ctxfncnt.0, %sw.bb55 ], [ %ctxfncnt.0, %if.end58 ], [ %ctxfncnt.0, %sw.bb48 ], [ %ctxfncnt.0, %if.end51 ], [ %ctxfncnt.0, %sw.bb41 ], [ %ctxfncnt.0, %if.end44 ], [ %ctxfncnt.0, %sw.bb34 ], [ %ctxfncnt.0, %if.end37 ], [ %ctxfncnt.0, %sw.bb27 ], [ %ctxfncnt.0, %if.end30 ], [ %ctxfncnt.0, %sw.bb20 ], [ %ctxfncnt.0, %if.end23 ], [ %ctxfncnt.0, %sw.bb13 ], [ %ctxfncnt.0, %if.end16 ], [ %ctxfncnt.0, %sw.bb ], [ %inc, %if.end10 ], [ %ctxfncnt.0, %for.cond ]
  %signfncnt.1 = phi i32 [ %signfncnt.0, %sw.bb169 ], [ %signfncnt.0, %if.end172 ], [ %signfncnt.0, %sw.bb162 ], [ %signfncnt.0, %if.end165 ], [ %signfncnt.0, %sw.bb155 ], [ %signfncnt.0, %if.end158 ], [ %signfncnt.0, %sw.bb148 ], [ %signfncnt.0, %if.end151 ], [ %signfncnt.0, %sw.bb141 ], [ %signfncnt.0, %if.end144 ], [ %signfncnt.0, %sw.bb134 ], [ %signfncnt.0, %if.end137 ], [ %signfncnt.0, %sw.bb127 ], [ %signfncnt.0, %if.end130 ], [ %signfncnt.0, %sw.bb120 ], [ %signfncnt.0, %if.end123 ], [ %signfncnt.0, %sw.bb114 ], [ %signfncnt.0, %if.end117 ], [ %signfncnt.0, %sw.bb107 ], [ %signfncnt.0, %if.end110 ], [ %signfncnt.0, %sw.bb101 ], [ %signfncnt.0, %if.end104 ], [ %signfncnt.0, %sw.bb94 ], [ %signfncnt.0, %if.end97 ], [ %signfncnt.0, %sw.bb87 ], [ %signfncnt.0, %if.end90 ], [ %signfncnt.0, %sw.bb81 ], [ %signfncnt.0, %if.end84 ], [ %signfncnt.0, %sw.bb75 ], [ %signfncnt.0, %if.end78 ], [ %signfncnt.0, %sw.bb68 ], [ %signfncnt.0, %if.end71 ], [ %signfncnt.0, %sw.bb61 ], [ %signfncnt.0, %if.end64 ], [ %signfncnt.0, %sw.bb55 ], [ %signfncnt.0, %if.end58 ], [ %signfncnt.0, %sw.bb48 ], [ %signfncnt.0, %if.end51 ], [ %signfncnt.0, %sw.bb41 ], [ %signfncnt.0, %if.end44 ], [ %signfncnt.0, %sw.bb34 ], [ %signfncnt.0, %if.end37 ], [ %signfncnt.0, %sw.bb27 ], [ %signfncnt.0, %if.end30 ], [ %signfncnt.0, %sw.bb20 ], [ %inc26, %if.end23 ], [ %signfncnt.0, %sw.bb13 ], [ %inc19, %if.end16 ], [ %signfncnt.0, %sw.bb ], [ %signfncnt.0, %if.end10 ], [ %signfncnt.0, %for.cond ]
  %verifyfncnt.1 = phi i32 [ %verifyfncnt.0, %sw.bb169 ], [ %verifyfncnt.0, %if.end172 ], [ %verifyfncnt.0, %sw.bb162 ], [ %verifyfncnt.0, %if.end165 ], [ %verifyfncnt.0, %sw.bb155 ], [ %verifyfncnt.0, %if.end158 ], [ %verifyfncnt.0, %sw.bb148 ], [ %verifyfncnt.0, %if.end151 ], [ %verifyfncnt.0, %sw.bb141 ], [ %verifyfncnt.0, %if.end144 ], [ %verifyfncnt.0, %sw.bb134 ], [ %verifyfncnt.0, %if.end137 ], [ %verifyfncnt.0, %sw.bb127 ], [ %verifyfncnt.0, %if.end130 ], [ %verifyfncnt.0, %sw.bb120 ], [ %verifyfncnt.0, %if.end123 ], [ %verifyfncnt.0, %sw.bb114 ], [ %verifyfncnt.0, %if.end117 ], [ %verifyfncnt.0, %sw.bb107 ], [ %verifyfncnt.0, %if.end110 ], [ %verifyfncnt.0, %sw.bb101 ], [ %verifyfncnt.0, %if.end104 ], [ %verifyfncnt.0, %sw.bb94 ], [ %verifyfncnt.0, %if.end97 ], [ %verifyfncnt.0, %sw.bb87 ], [ %verifyfncnt.0, %if.end90 ], [ %verifyfncnt.0, %sw.bb81 ], [ %verifyfncnt.0, %if.end84 ], [ %verifyfncnt.0, %sw.bb75 ], [ %verifyfncnt.0, %if.end78 ], [ %verifyfncnt.0, %sw.bb68 ], [ %verifyfncnt.0, %if.end71 ], [ %verifyfncnt.0, %sw.bb61 ], [ %verifyfncnt.0, %if.end64 ], [ %verifyfncnt.0, %sw.bb55 ], [ %verifyfncnt.0, %if.end58 ], [ %verifyfncnt.0, %sw.bb48 ], [ %verifyfncnt.0, %if.end51 ], [ %verifyfncnt.0, %sw.bb41 ], [ %verifyfncnt.0, %if.end44 ], [ %verifyfncnt.0, %sw.bb34 ], [ %inc40, %if.end37 ], [ %verifyfncnt.0, %sw.bb27 ], [ %inc33, %if.end30 ], [ %verifyfncnt.0, %sw.bb20 ], [ %verifyfncnt.0, %if.end23 ], [ %verifyfncnt.0, %sw.bb13 ], [ %verifyfncnt.0, %if.end16 ], [ %verifyfncnt.0, %sw.bb ], [ %verifyfncnt.0, %if.end10 ], [ %verifyfncnt.0, %for.cond ]
  %verifyrecfncnt.1 = phi i32 [ %verifyrecfncnt.0, %sw.bb169 ], [ %verifyrecfncnt.0, %if.end172 ], [ %verifyrecfncnt.0, %sw.bb162 ], [ %verifyrecfncnt.0, %if.end165 ], [ %verifyrecfncnt.0, %sw.bb155 ], [ %verifyrecfncnt.0, %if.end158 ], [ %verifyrecfncnt.0, %sw.bb148 ], [ %verifyrecfncnt.0, %if.end151 ], [ %verifyrecfncnt.0, %sw.bb141 ], [ %verifyrecfncnt.0, %if.end144 ], [ %verifyrecfncnt.0, %sw.bb134 ], [ %verifyrecfncnt.0, %if.end137 ], [ %verifyrecfncnt.0, %sw.bb127 ], [ %verifyrecfncnt.0, %if.end130 ], [ %verifyrecfncnt.0, %sw.bb120 ], [ %verifyrecfncnt.0, %if.end123 ], [ %verifyrecfncnt.0, %sw.bb114 ], [ %verifyrecfncnt.0, %if.end117 ], [ %verifyrecfncnt.0, %sw.bb107 ], [ %verifyrecfncnt.0, %if.end110 ], [ %verifyrecfncnt.0, %sw.bb101 ], [ %verifyrecfncnt.0, %if.end104 ], [ %verifyrecfncnt.0, %sw.bb94 ], [ %verifyrecfncnt.0, %if.end97 ], [ %verifyrecfncnt.0, %sw.bb87 ], [ %verifyrecfncnt.0, %if.end90 ], [ %verifyrecfncnt.0, %sw.bb81 ], [ %verifyrecfncnt.0, %if.end84 ], [ %verifyrecfncnt.0, %sw.bb75 ], [ %verifyrecfncnt.0, %if.end78 ], [ %verifyrecfncnt.0, %sw.bb68 ], [ %verifyrecfncnt.0, %if.end71 ], [ %verifyrecfncnt.0, %sw.bb61 ], [ %verifyrecfncnt.0, %if.end64 ], [ %verifyrecfncnt.0, %sw.bb55 ], [ %verifyrecfncnt.0, %if.end58 ], [ %verifyrecfncnt.0, %sw.bb48 ], [ %inc54, %if.end51 ], [ %verifyrecfncnt.0, %sw.bb41 ], [ %inc47, %if.end44 ], [ %verifyrecfncnt.0, %sw.bb34 ], [ %verifyrecfncnt.0, %if.end37 ], [ %verifyrecfncnt.0, %sw.bb27 ], [ %verifyrecfncnt.0, %if.end30 ], [ %verifyrecfncnt.0, %sw.bb20 ], [ %verifyrecfncnt.0, %if.end23 ], [ %verifyrecfncnt.0, %sw.bb13 ], [ %verifyrecfncnt.0, %if.end16 ], [ %verifyrecfncnt.0, %sw.bb ], [ %verifyrecfncnt.0, %if.end10 ], [ %verifyrecfncnt.0, %for.cond ]
  %digsignfncnt.1 = phi i32 [ %digsignfncnt.0, %sw.bb169 ], [ %digsignfncnt.0, %if.end172 ], [ %digsignfncnt.0, %sw.bb162 ], [ %digsignfncnt.0, %if.end165 ], [ %digsignfncnt.0, %sw.bb155 ], [ %digsignfncnt.0, %if.end158 ], [ %digsignfncnt.0, %sw.bb148 ], [ %digsignfncnt.0, %if.end151 ], [ %digsignfncnt.0, %sw.bb141 ], [ %digsignfncnt.0, %if.end144 ], [ %digsignfncnt.0, %sw.bb134 ], [ %digsignfncnt.0, %if.end137 ], [ %digsignfncnt.0, %sw.bb127 ], [ %digsignfncnt.0, %if.end130 ], [ %digsignfncnt.0, %sw.bb120 ], [ %digsignfncnt.0, %if.end123 ], [ %digsignfncnt.0, %sw.bb114 ], [ %digsignfncnt.0, %if.end117 ], [ %digsignfncnt.0, %sw.bb107 ], [ %digsignfncnt.0, %if.end110 ], [ %digsignfncnt.0, %sw.bb101 ], [ %digsignfncnt.0, %if.end104 ], [ %digsignfncnt.0, %sw.bb94 ], [ %digsignfncnt.0, %if.end97 ], [ %digsignfncnt.0, %sw.bb87 ], [ %digsignfncnt.0, %if.end90 ], [ %digsignfncnt.0, %sw.bb81 ], [ %digsignfncnt.0, %if.end84 ], [ %digsignfncnt.0, %sw.bb75 ], [ %digsignfncnt.0, %if.end78 ], [ %digsignfncnt.0, %sw.bb68 ], [ %inc74, %if.end71 ], [ %digsignfncnt.0, %sw.bb61 ], [ %inc67, %if.end64 ], [ %digsignfncnt.0, %sw.bb55 ], [ %digsignfncnt.0, %if.end58 ], [ %digsignfncnt.0, %sw.bb48 ], [ %digsignfncnt.0, %if.end51 ], [ %digsignfncnt.0, %sw.bb41 ], [ %digsignfncnt.0, %if.end44 ], [ %digsignfncnt.0, %sw.bb34 ], [ %digsignfncnt.0, %if.end37 ], [ %digsignfncnt.0, %sw.bb27 ], [ %digsignfncnt.0, %if.end30 ], [ %digsignfncnt.0, %sw.bb20 ], [ %digsignfncnt.0, %if.end23 ], [ %digsignfncnt.0, %sw.bb13 ], [ %digsignfncnt.0, %if.end16 ], [ %digsignfncnt.0, %sw.bb ], [ %digsignfncnt.0, %if.end10 ], [ %digsignfncnt.0, %for.cond ]
  %digverifyfncnt.1 = phi i32 [ %digverifyfncnt.0, %sw.bb169 ], [ %digverifyfncnt.0, %if.end172 ], [ %digverifyfncnt.0, %sw.bb162 ], [ %digverifyfncnt.0, %if.end165 ], [ %digverifyfncnt.0, %sw.bb155 ], [ %digverifyfncnt.0, %if.end158 ], [ %digverifyfncnt.0, %sw.bb148 ], [ %digverifyfncnt.0, %if.end151 ], [ %digverifyfncnt.0, %sw.bb141 ], [ %digverifyfncnt.0, %if.end144 ], [ %digverifyfncnt.0, %sw.bb134 ], [ %digverifyfncnt.0, %if.end137 ], [ %digverifyfncnt.0, %sw.bb127 ], [ %digverifyfncnt.0, %if.end130 ], [ %digverifyfncnt.0, %sw.bb120 ], [ %digverifyfncnt.0, %if.end123 ], [ %digverifyfncnt.0, %sw.bb114 ], [ %digverifyfncnt.0, %if.end117 ], [ %digverifyfncnt.0, %sw.bb107 ], [ %digverifyfncnt.0, %if.end110 ], [ %digverifyfncnt.0, %sw.bb101 ], [ %digverifyfncnt.0, %if.end104 ], [ %digverifyfncnt.0, %sw.bb94 ], [ %inc100, %if.end97 ], [ %digverifyfncnt.0, %sw.bb87 ], [ %inc93, %if.end90 ], [ %digverifyfncnt.0, %sw.bb81 ], [ %digverifyfncnt.0, %if.end84 ], [ %digverifyfncnt.0, %sw.bb75 ], [ %digverifyfncnt.0, %if.end78 ], [ %digverifyfncnt.0, %sw.bb68 ], [ %digverifyfncnt.0, %if.end71 ], [ %digverifyfncnt.0, %sw.bb61 ], [ %digverifyfncnt.0, %if.end64 ], [ %digverifyfncnt.0, %sw.bb55 ], [ %digverifyfncnt.0, %if.end58 ], [ %digverifyfncnt.0, %sw.bb48 ], [ %digverifyfncnt.0, %if.end51 ], [ %digverifyfncnt.0, %sw.bb41 ], [ %digverifyfncnt.0, %if.end44 ], [ %digverifyfncnt.0, %sw.bb34 ], [ %digverifyfncnt.0, %if.end37 ], [ %digverifyfncnt.0, %sw.bb27 ], [ %digverifyfncnt.0, %if.end30 ], [ %digverifyfncnt.0, %sw.bb20 ], [ %digverifyfncnt.0, %if.end23 ], [ %digverifyfncnt.0, %sw.bb13 ], [ %digverifyfncnt.0, %if.end16 ], [ %digverifyfncnt.0, %sw.bb ], [ %digverifyfncnt.0, %if.end10 ], [ %digverifyfncnt.0, %for.cond ]
  %gparamfncnt.1 = phi i32 [ %gparamfncnt.0, %sw.bb169 ], [ %gparamfncnt.0, %if.end172 ], [ %gparamfncnt.0, %sw.bb162 ], [ %gparamfncnt.0, %if.end165 ], [ %gparamfncnt.0, %sw.bb155 ], [ %gparamfncnt.0, %if.end158 ], [ %gparamfncnt.0, %sw.bb148 ], [ %gparamfncnt.0, %if.end151 ], [ %gparamfncnt.0, %sw.bb141 ], [ %gparamfncnt.0, %if.end144 ], [ %gparamfncnt.0, %sw.bb134 ], [ %gparamfncnt.0, %if.end137 ], [ %gparamfncnt.0, %sw.bb127 ], [ %inc133, %if.end130 ], [ %gparamfncnt.0, %sw.bb120 ], [ %inc126, %if.end123 ], [ %gparamfncnt.0, %sw.bb114 ], [ %gparamfncnt.0, %if.end117 ], [ %gparamfncnt.0, %sw.bb107 ], [ %gparamfncnt.0, %if.end110 ], [ %gparamfncnt.0, %sw.bb101 ], [ %gparamfncnt.0, %if.end104 ], [ %gparamfncnt.0, %sw.bb94 ], [ %gparamfncnt.0, %if.end97 ], [ %gparamfncnt.0, %sw.bb87 ], [ %gparamfncnt.0, %if.end90 ], [ %gparamfncnt.0, %sw.bb81 ], [ %gparamfncnt.0, %if.end84 ], [ %gparamfncnt.0, %sw.bb75 ], [ %gparamfncnt.0, %if.end78 ], [ %gparamfncnt.0, %sw.bb68 ], [ %gparamfncnt.0, %if.end71 ], [ %gparamfncnt.0, %sw.bb61 ], [ %gparamfncnt.0, %if.end64 ], [ %gparamfncnt.0, %sw.bb55 ], [ %gparamfncnt.0, %if.end58 ], [ %gparamfncnt.0, %sw.bb48 ], [ %gparamfncnt.0, %if.end51 ], [ %gparamfncnt.0, %sw.bb41 ], [ %gparamfncnt.0, %if.end44 ], [ %gparamfncnt.0, %sw.bb34 ], [ %gparamfncnt.0, %if.end37 ], [ %gparamfncnt.0, %sw.bb27 ], [ %gparamfncnt.0, %if.end30 ], [ %gparamfncnt.0, %sw.bb20 ], [ %gparamfncnt.0, %if.end23 ], [ %gparamfncnt.0, %sw.bb13 ], [ %gparamfncnt.0, %if.end16 ], [ %gparamfncnt.0, %sw.bb ], [ %gparamfncnt.0, %if.end10 ], [ %gparamfncnt.0, %for.cond ]
  %sparamfncnt.1 = phi i32 [ %sparamfncnt.0, %sw.bb169 ], [ %sparamfncnt.0, %if.end172 ], [ %sparamfncnt.0, %sw.bb162 ], [ %sparamfncnt.0, %if.end165 ], [ %sparamfncnt.0, %sw.bb155 ], [ %sparamfncnt.0, %if.end158 ], [ %sparamfncnt.0, %sw.bb148 ], [ %sparamfncnt.0, %if.end151 ], [ %sparamfncnt.0, %sw.bb141 ], [ %inc147, %if.end144 ], [ %sparamfncnt.0, %sw.bb134 ], [ %inc140, %if.end137 ], [ %sparamfncnt.0, %sw.bb127 ], [ %sparamfncnt.0, %if.end130 ], [ %sparamfncnt.0, %sw.bb120 ], [ %sparamfncnt.0, %if.end123 ], [ %sparamfncnt.0, %sw.bb114 ], [ %sparamfncnt.0, %if.end117 ], [ %sparamfncnt.0, %sw.bb107 ], [ %sparamfncnt.0, %if.end110 ], [ %sparamfncnt.0, %sw.bb101 ], [ %sparamfncnt.0, %if.end104 ], [ %sparamfncnt.0, %sw.bb94 ], [ %sparamfncnt.0, %if.end97 ], [ %sparamfncnt.0, %sw.bb87 ], [ %sparamfncnt.0, %if.end90 ], [ %sparamfncnt.0, %sw.bb81 ], [ %sparamfncnt.0, %if.end84 ], [ %sparamfncnt.0, %sw.bb75 ], [ %sparamfncnt.0, %if.end78 ], [ %sparamfncnt.0, %sw.bb68 ], [ %sparamfncnt.0, %if.end71 ], [ %sparamfncnt.0, %sw.bb61 ], [ %sparamfncnt.0, %if.end64 ], [ %sparamfncnt.0, %sw.bb55 ], [ %sparamfncnt.0, %if.end58 ], [ %sparamfncnt.0, %sw.bb48 ], [ %sparamfncnt.0, %if.end51 ], [ %sparamfncnt.0, %sw.bb41 ], [ %sparamfncnt.0, %if.end44 ], [ %sparamfncnt.0, %sw.bb34 ], [ %sparamfncnt.0, %if.end37 ], [ %sparamfncnt.0, %sw.bb27 ], [ %sparamfncnt.0, %if.end30 ], [ %sparamfncnt.0, %sw.bb20 ], [ %sparamfncnt.0, %if.end23 ], [ %sparamfncnt.0, %sw.bb13 ], [ %sparamfncnt.0, %if.end16 ], [ %sparamfncnt.0, %sw.bb ], [ %sparamfncnt.0, %if.end10 ], [ %sparamfncnt.0, %for.cond ]
  %gmdparamfncnt.1 = phi i32 [ %gmdparamfncnt.0, %sw.bb169 ], [ %gmdparamfncnt.0, %if.end172 ], [ %gmdparamfncnt.0, %sw.bb162 ], [ %gmdparamfncnt.0, %if.end165 ], [ %gmdparamfncnt.0, %sw.bb155 ], [ %inc161, %if.end158 ], [ %gmdparamfncnt.0, %sw.bb148 ], [ %inc154, %if.end151 ], [ %gmdparamfncnt.0, %sw.bb141 ], [ %gmdparamfncnt.0, %if.end144 ], [ %gmdparamfncnt.0, %sw.bb134 ], [ %gmdparamfncnt.0, %if.end137 ], [ %gmdparamfncnt.0, %sw.bb127 ], [ %gmdparamfncnt.0, %if.end130 ], [ %gmdparamfncnt.0, %sw.bb120 ], [ %gmdparamfncnt.0, %if.end123 ], [ %gmdparamfncnt.0, %sw.bb114 ], [ %gmdparamfncnt.0, %if.end117 ], [ %gmdparamfncnt.0, %sw.bb107 ], [ %gmdparamfncnt.0, %if.end110 ], [ %gmdparamfncnt.0, %sw.bb101 ], [ %gmdparamfncnt.0, %if.end104 ], [ %gmdparamfncnt.0, %sw.bb94 ], [ %gmdparamfncnt.0, %if.end97 ], [ %gmdparamfncnt.0, %sw.bb87 ], [ %gmdparamfncnt.0, %if.end90 ], [ %gmdparamfncnt.0, %sw.bb81 ], [ %gmdparamfncnt.0, %if.end84 ], [ %gmdparamfncnt.0, %sw.bb75 ], [ %gmdparamfncnt.0, %if.end78 ], [ %gmdparamfncnt.0, %sw.bb68 ], [ %gmdparamfncnt.0, %if.end71 ], [ %gmdparamfncnt.0, %sw.bb61 ], [ %gmdparamfncnt.0, %if.end64 ], [ %gmdparamfncnt.0, %sw.bb55 ], [ %gmdparamfncnt.0, %if.end58 ], [ %gmdparamfncnt.0, %sw.bb48 ], [ %gmdparamfncnt.0, %if.end51 ], [ %gmdparamfncnt.0, %sw.bb41 ], [ %gmdparamfncnt.0, %if.end44 ], [ %gmdparamfncnt.0, %sw.bb34 ], [ %gmdparamfncnt.0, %if.end37 ], [ %gmdparamfncnt.0, %sw.bb27 ], [ %gmdparamfncnt.0, %if.end30 ], [ %gmdparamfncnt.0, %sw.bb20 ], [ %gmdparamfncnt.0, %if.end23 ], [ %gmdparamfncnt.0, %sw.bb13 ], [ %gmdparamfncnt.0, %if.end16 ], [ %gmdparamfncnt.0, %sw.bb ], [ %gmdparamfncnt.0, %if.end10 ], [ %gmdparamfncnt.0, %for.cond ]
  %smdparamfncnt.1 = phi i32 [ %smdparamfncnt.0, %sw.bb169 ], [ %inc175, %if.end172 ], [ %smdparamfncnt.0, %sw.bb162 ], [ %inc168, %if.end165 ], [ %smdparamfncnt.0, %sw.bb155 ], [ %smdparamfncnt.0, %if.end158 ], [ %smdparamfncnt.0, %sw.bb148 ], [ %smdparamfncnt.0, %if.end151 ], [ %smdparamfncnt.0, %sw.bb141 ], [ %smdparamfncnt.0, %if.end144 ], [ %smdparamfncnt.0, %sw.bb134 ], [ %smdparamfncnt.0, %if.end137 ], [ %smdparamfncnt.0, %sw.bb127 ], [ %smdparamfncnt.0, %if.end130 ], [ %smdparamfncnt.0, %sw.bb120 ], [ %smdparamfncnt.0, %if.end123 ], [ %smdparamfncnt.0, %sw.bb114 ], [ %smdparamfncnt.0, %if.end117 ], [ %smdparamfncnt.0, %sw.bb107 ], [ %smdparamfncnt.0, %if.end110 ], [ %smdparamfncnt.0, %sw.bb101 ], [ %smdparamfncnt.0, %if.end104 ], [ %smdparamfncnt.0, %sw.bb94 ], [ %smdparamfncnt.0, %if.end97 ], [ %smdparamfncnt.0, %sw.bb87 ], [ %smdparamfncnt.0, %if.end90 ], [ %smdparamfncnt.0, %sw.bb81 ], [ %smdparamfncnt.0, %if.end84 ], [ %smdparamfncnt.0, %sw.bb75 ], [ %smdparamfncnt.0, %if.end78 ], [ %smdparamfncnt.0, %sw.bb68 ], [ %smdparamfncnt.0, %if.end71 ], [ %smdparamfncnt.0, %sw.bb61 ], [ %smdparamfncnt.0, %if.end64 ], [ %smdparamfncnt.0, %sw.bb55 ], [ %smdparamfncnt.0, %if.end58 ], [ %smdparamfncnt.0, %sw.bb48 ], [ %smdparamfncnt.0, %if.end51 ], [ %smdparamfncnt.0, %sw.bb41 ], [ %smdparamfncnt.0, %if.end44 ], [ %smdparamfncnt.0, %sw.bb34 ], [ %smdparamfncnt.0, %if.end37 ], [ %smdparamfncnt.0, %sw.bb27 ], [ %smdparamfncnt.0, %if.end30 ], [ %smdparamfncnt.0, %sw.bb20 ], [ %smdparamfncnt.0, %if.end23 ], [ %smdparamfncnt.0, %sw.bb13 ], [ %smdparamfncnt.0, %if.end16 ], [ %smdparamfncnt.0, %sw.bb ], [ %smdparamfncnt.0, %if.end10 ], [ %smdparamfncnt.0, %for.cond ]
  %incdec.ptr = getelementptr inbounds %struct.ossl_dispatch_st, %struct.ossl_dispatch_st* %fns.0, i64 1
  br label %for.cond, !llvm.loop !45

for.end:                                          ; preds = %for.cond
  %cmp176.not = icmp eq i32 %ctxfncnt.0, 2
  br i1 %cmp176.not, label %lor.lhs.false, label %err.sink.split

lor.lhs.false:                                    ; preds = %for.end
  %cmp177 = icmp eq i32 %signfncnt.0, 0
  %cmp178 = icmp eq i32 %verifyfncnt.0, 0
  %or.cond = select i1 %cmp177, i1 %cmp178, i1 false
  %cmp180 = icmp eq i32 %verifyrecfncnt.0, 0
  %or.cond262 = select i1 %or.cond, i1 %cmp180, i1 false
  %cmp182 = icmp eq i32 %digsignfncnt.0, 0
  %or.cond263 = select i1 %or.cond262, i1 %cmp182, i1 false
  %cmp184 = icmp eq i32 %digverifyfncnt.0, 0
  %or.cond264 = select i1 %or.cond263, i1 %cmp184, i1 false
  br i1 %or.cond264, label %land.lhs.true185, label %lor.lhs.false191

land.lhs.true185:                                 ; preds = %lor.lhs.false
  %28 = load i32 (i8*, i8*, i64*, i64, i8*, i64)*, i32 (i8*, i8*, i64*, i64, i8*, i64)** %digest_sign, align 8, !tbaa !30
  %cmp187 = icmp eq i32 (i8*, i8*, i64*, i64, i8*, i64)* %28, null
  br i1 %cmp187, label %land.lhs.true188, label %lor.lhs.false195

land.lhs.true188:                                 ; preds = %land.lhs.true185
  %29 = load i32 (i8*, i8*, i64, i8*, i64)*, i32 (i8*, i8*, i64, i8*, i64)** %digest_verify, align 8, !tbaa !34
  %cmp190.not = icmp eq i32 (i8*, i8*, i64, i8*, i64)* %29, null
  br i1 %cmp190.not, label %err.sink.split, label %lor.lhs.false195

lor.lhs.false191:                                 ; preds = %lor.lhs.false
  %.old = and i32 %signfncnt.0, -3
  %.not.old = icmp eq i32 %.old, 0
  br i1 %.not.old, label %lor.lhs.false195, label %err.sink.split

lor.lhs.false195:                                 ; preds = %land.lhs.true185, %land.lhs.true188, %lor.lhs.false191
  %30 = and i32 %verifyfncnt.0, -3
  %.not413 = icmp eq i32 %30, 0
  %31 = and i32 %verifyrecfncnt.0, -3
  %.not414 = icmp eq i32 %31, 0
  %or.cond423 = select i1 %.not413, i1 %.not414, i1 false
  %32 = and i32 %digsignfncnt.0, -3
  %.not415 = icmp eq i32 %32, 0
  %or.cond425 = select i1 %or.cond423, i1 %.not415, i1 false
  br i1 %or.cond425, label %lor.lhs.false207, label %err.sink.split

lor.lhs.false207:                                 ; preds = %lor.lhs.false195
  %cmp208 = icmp eq i32 %digsignfncnt.0, 2
  br i1 %cmp208, label %land.lhs.true209, label %lor.lhs.false212

land.lhs.true209:                                 ; preds = %lor.lhs.false207
  %33 = load i32 (i8*, i8*, i8*, %struct.ossl_param_st*)*, i32 (i8*, i8*, i8*, %struct.ossl_param_st*)** %digest_sign_init, align 8, !tbaa !27
  %cmp211 = icmp ne i32 (i8*, i8*, i8*, %struct.ossl_param_st*)* %33, null
  %34 = and i32 %digverifyfncnt.0, -3
  %.not416 = icmp eq i32 %34, 0
  %or.cond427 = select i1 %cmp211, i1 %.not416, i1 false
  br i1 %or.cond427, label %lor.lhs.false216, label %err.sink.split

lor.lhs.false212:                                 ; preds = %lor.lhs.false207
  %.old426 = and i32 %digverifyfncnt.0, -3
  %.not416.old = icmp eq i32 %.old426, 0
  br i1 %.not416.old, label %lor.lhs.false216, label %err.sink.split

lor.lhs.false216:                                 ; preds = %land.lhs.true209, %lor.lhs.false212
  %cmp217 = icmp eq i32 %digverifyfncnt.0, 2
  br i1 %cmp217, label %land.lhs.true218, label %lor.lhs.false221

land.lhs.true218:                                 ; preds = %lor.lhs.false216
  %35 = load i32 (i8*, i8*, i8*, %struct.ossl_param_st*)*, i32 (i8*, i8*, i8*, %struct.ossl_param_st*)** %digest_verify_init, align 8, !tbaa !31
  %cmp220 = icmp eq i32 (i8*, i8*, i8*, %struct.ossl_param_st*)* %35, null
  br i1 %cmp220, label %err.sink.split, label %lor.lhs.false221

lor.lhs.false221:                                 ; preds = %land.lhs.true218, %lor.lhs.false216
  %36 = load i32 (i8*, i8*, i64*, i64, i8*, i64)*, i32 (i8*, i8*, i64*, i64, i8*, i64)** %digest_sign, align 8, !tbaa !30
  %cmp223.not = icmp eq i32 (i8*, i8*, i64*, i64, i8*, i64)* %36, null
  br i1 %cmp223.not, label %lor.lhs.false227, label %land.lhs.true224

land.lhs.true224:                                 ; preds = %lor.lhs.false221
  %37 = load i32 (i8*, i8*, i8*, %struct.ossl_param_st*)*, i32 (i8*, i8*, i8*, %struct.ossl_param_st*)** %digest_sign_init, align 8, !tbaa !27
  %cmp226 = icmp eq i32 (i8*, i8*, i8*, %struct.ossl_param_st*)* %37, null
  br i1 %cmp226, label %err.sink.split, label %lor.lhs.false227

lor.lhs.false227:                                 ; preds = %land.lhs.true224, %lor.lhs.false221
  %38 = load i32 (i8*, i8*, i64, i8*, i64)*, i32 (i8*, i8*, i64, i8*, i64)** %digest_verify, align 8, !tbaa !34
  %cmp229.not = icmp eq i32 (i8*, i8*, i64, i8*, i64)* %38, null
  br i1 %cmp229.not, label %lor.lhs.false233, label %land.lhs.true230

land.lhs.true230:                                 ; preds = %lor.lhs.false227
  %39 = load i32 (i8*, i8*, i8*, %struct.ossl_param_st*)*, i32 (i8*, i8*, i8*, %struct.ossl_param_st*)** %digest_verify_init, align 8, !tbaa !31
  %cmp232 = icmp ne i32 (i8*, i8*, i8*, %struct.ossl_param_st*)* %39, null
  %40 = and i32 %gparamfncnt.0, -3
  %.not417 = icmp eq i32 %40, 0
  %or.cond429 = select i1 %cmp232, i1 %.not417, i1 false
  br i1 %or.cond429, label %lor.lhs.false237, label %err.sink.split

lor.lhs.false233:                                 ; preds = %lor.lhs.false227
  %.old428 = and i32 %gparamfncnt.0, -3
  %.not417.old = icmp eq i32 %.old428, 0
  br i1 %.not417.old, label %lor.lhs.false237, label %err.sink.split

lor.lhs.false237:                                 ; preds = %land.lhs.true230, %lor.lhs.false233
  %41 = and i32 %sparamfncnt.0, -3
  %.not418 = icmp eq i32 %41, 0
  %42 = and i32 %gmdparamfncnt.0, -3
  %.not419 = icmp eq i32 %42, 0
  %or.cond431 = select i1 %.not418, i1 %.not419, i1 false
  %43 = and i32 %smdparamfncnt.0, -3
  %.not420 = icmp eq i32 %43, 0
  %or.cond433 = select i1 %or.cond431, i1 %.not420, i1 false
  br i1 %or.cond433, label %if.end250, label %err.sink.split

if.end250:                                        ; preds = %lor.lhs.false237
  %44 = bitcast %struct.evp_signature_st* %call to i8*
  br label %cleanup

err.sink.split:                                   ; preds = %for.end, %land.lhs.true188, %land.lhs.true209, %land.lhs.true218, %land.lhs.true224, %land.lhs.true230, %lor.lhs.false191, %lor.lhs.false195, %lor.lhs.false212, %lor.lhs.false233, %lor.lhs.false237, %entry
  %.sink436 = phi i32 [ 54, %entry ], [ 270, %lor.lhs.false237 ], [ 270, %lor.lhs.false233 ], [ 270, %lor.lhs.false212 ], [ 270, %lor.lhs.false195 ], [ 270, %lor.lhs.false191 ], [ 270, %land.lhs.true230 ], [ 270, %land.lhs.true224 ], [ 270, %land.lhs.true218 ], [ 270, %land.lhs.true209 ], [ 270, %land.lhs.true188 ], [ 270, %for.end ]
  %.sink = phi i32 [ 786688, %entry ], [ 193, %lor.lhs.false237 ], [ 193, %lor.lhs.false233 ], [ 193, %lor.lhs.false212 ], [ 193, %lor.lhs.false195 ], [ 193, %lor.lhs.false191 ], [ 193, %land.lhs.true230 ], [ 193, %land.lhs.true224 ], [ 193, %land.lhs.true218 ], [ 193, %land.lhs.true209 ], [ 193, %land.lhs.true188 ], [ 193, %for.end ]
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef %.sink436, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.evp_signature_from_algorithm, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 6, i32 noundef %.sink, i8* noundef null) #8
  br label %err

err:                                              ; preds = %err.sink.split, %if.end
  tail call void @EVP_SIGNATURE_free(%struct.evp_signature_st* noundef %call) #7
  br label %cleanup

cleanup:                                          ; preds = %err, %if.end250
  %retval.0 = phi i8* [ null, %err ], [ %44, %if.end250 ]
  ret i8* %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @EVP_SIGNATURE_is_a(%struct.evp_signature_st* nocapture noundef readonly %signature, i8* noundef %name) local_unnamed_addr #0 {
entry:
  %prov = getelementptr inbounds %struct.evp_signature_st, %struct.evp_signature_st* %signature, i64 0, i32 3
  %0 = load %struct.ossl_provider_st*, %struct.ossl_provider_st** %prov, align 8, !tbaa !11
  %name_id = getelementptr inbounds %struct.evp_signature_st, %struct.evp_signature_st* %signature, i64 0, i32 0
  %1 = load i32, i32* %name_id, align 8, !tbaa !15
  %call = tail call i32 @evp_is_a(%struct.ossl_provider_st* noundef %0, i32 noundef %1, i8* noundef null, i8* noundef %name) #8
  ret i32 %call
}

declare i32 @evp_is_a(%struct.ossl_provider_st* noundef, i32 noundef, i8* noundef, i8* noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define i32 @evp_signature_get_number(%struct.evp_signature_st* nocapture noundef readonly %signature) local_unnamed_addr #5 {
entry:
  %name_id = getelementptr inbounds %struct.evp_signature_st, %struct.evp_signature_st* %signature, i64 0, i32 0
  %0 = load i32, i32* %name_id, align 8, !tbaa !15
  ret i32 %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define i8* @EVP_SIGNATURE_get0_name(%struct.evp_signature_st* nocapture noundef readonly %signature) local_unnamed_addr #5 {
entry:
  %type_name = getelementptr inbounds %struct.evp_signature_st, %struct.evp_signature_st* %signature, i64 0, i32 1
  %0 = load i8*, i8** %type_name, align 8, !tbaa !8
  ret i8* %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define i8* @EVP_SIGNATURE_get0_description(%struct.evp_signature_st* nocapture noundef readonly %signature) local_unnamed_addr #5 {
entry:
  %description = getelementptr inbounds %struct.evp_signature_st, %struct.evp_signature_st* %signature, i64 0, i32 2
  %0 = load i8*, i8** %description, align 8, !tbaa !17
  ret i8* %0
}

; Function Attrs: noinline nounwind uwtable
define void @EVP_SIGNATURE_do_all_provided(%struct.ossl_lib_ctx_st* noundef %libctx, void (%struct.evp_signature_st*, i8*)* noundef %fn, i8* noundef %arg) local_unnamed_addr #0 {
entry:
  %0 = bitcast void (%struct.evp_signature_st*, i8*)* %fn to void (i8*, i8*)*
  tail call void @evp_generic_do_all(%struct.ossl_lib_ctx_st* noundef %libctx, i32 noundef 12, void (i8*, i8*)* noundef %0, i8* noundef %arg, i8* (i32, %struct.ossl_algorithm_st*, %struct.ossl_provider_st*)* noundef nonnull @evp_signature_from_algorithm, i32 (i8*)* noundef bitcast (i32 (%struct.evp_signature_st*)* @EVP_SIGNATURE_up_ref to i32 (i8*)*), void (i8*)* noundef bitcast (void (%struct.evp_signature_st*)* @EVP_SIGNATURE_free to void (i8*)*)) #8
  ret void
}

declare void @evp_generic_do_all(%struct.ossl_lib_ctx_st* noundef, i32 noundef, void (i8*, i8*)* noundef, i8* noundef, i8* (i32, %struct.ossl_algorithm_st*, %struct.ossl_provider_st*)* noundef, i32 (i8*)* noundef, void (i8*)* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define i32 @EVP_SIGNATURE_names_do_all(%struct.evp_signature_st* nocapture noundef readonly %signature, void (i8*, i8*)* noundef %fn, i8* noundef %data) local_unnamed_addr #0 {
entry:
  %prov = getelementptr inbounds %struct.evp_signature_st, %struct.evp_signature_st* %signature, i64 0, i32 3
  %0 = load %struct.ossl_provider_st*, %struct.ossl_provider_st** %prov, align 8, !tbaa !11
  %cmp.not = icmp eq %struct.ossl_provider_st* %0, null
  br i1 %cmp.not, label %return, label %if.then

if.then:                                          ; preds = %entry
  %name_id = getelementptr inbounds %struct.evp_signature_st, %struct.evp_signature_st* %signature, i64 0, i32 0
  %1 = load i32, i32* %name_id, align 8, !tbaa !15
  %call = tail call i32 @evp_names_do_all(%struct.ossl_provider_st* noundef nonnull %0, i32 noundef %1, void (i8*, i8*)* noundef %fn, i8* noundef %data) #8
  br label %return

return:                                           ; preds = %entry, %if.then
  %retval.0 = phi i32 [ %call, %if.then ], [ 1, %entry ]
  ret i32 %retval.0
}

declare i32 @evp_names_do_all(%struct.ossl_provider_st* noundef, i32 noundef, void (i8*, i8*)* noundef, i8* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define %struct.ossl_param_st* @EVP_SIGNATURE_gettable_ctx_params(%struct.evp_signature_st* noundef readonly %sig) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.evp_signature_st* %sig, null
  br i1 %cmp, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %gettable_ctx_params = getelementptr inbounds %struct.evp_signature_st, %struct.evp_signature_st* %sig, i64 0, i32 24
  %0 = load %struct.ossl_param_st* (i8*, i8*)*, %struct.ossl_param_st* (i8*, i8*)** %gettable_ctx_params, align 8, !tbaa !38
  %cmp1 = icmp eq %struct.ossl_param_st* (i8*, i8*)* %0, null
  br i1 %cmp1, label %cleanup, label %if.end

if.end:                                           ; preds = %lor.lhs.false
  %call = tail call %struct.ossl_provider_st* @EVP_SIGNATURE_get0_provider(%struct.evp_signature_st* noundef nonnull %sig) #7
  %call2 = tail call i8* @ossl_provider_ctx(%struct.ossl_provider_st* noundef %call) #8
  %1 = load %struct.ossl_param_st* (i8*, i8*)*, %struct.ossl_param_st* (i8*, i8*)** %gettable_ctx_params, align 8, !tbaa !38
  %call4 = tail call %struct.ossl_param_st* %1(i8* noundef null, i8* noundef %call2) #8
  br label %cleanup

cleanup:                                          ; preds = %entry, %lor.lhs.false, %if.end
  %retval.0 = phi %struct.ossl_param_st* [ %call4, %if.end ], [ null, %lor.lhs.false ], [ null, %entry ]
  ret %struct.ossl_param_st* %retval.0
}

declare i8* @ossl_provider_ctx(%struct.ossl_provider_st* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define %struct.ossl_param_st* @EVP_SIGNATURE_settable_ctx_params(%struct.evp_signature_st* noundef readonly %sig) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.evp_signature_st* %sig, null
  br i1 %cmp, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %settable_ctx_params = getelementptr inbounds %struct.evp_signature_st, %struct.evp_signature_st* %sig, i64 0, i32 26
  %0 = load %struct.ossl_param_st* (i8*, i8*)*, %struct.ossl_param_st* (i8*, i8*)** %settable_ctx_params, align 8, !tbaa !40
  %cmp1 = icmp eq %struct.ossl_param_st* (i8*, i8*)* %0, null
  br i1 %cmp1, label %cleanup, label %if.end

if.end:                                           ; preds = %lor.lhs.false
  %call = tail call %struct.ossl_provider_st* @EVP_SIGNATURE_get0_provider(%struct.evp_signature_st* noundef nonnull %sig) #7
  %call2 = tail call i8* @ossl_provider_ctx(%struct.ossl_provider_st* noundef %call) #8
  %1 = load %struct.ossl_param_st* (i8*, i8*)*, %struct.ossl_param_st* (i8*, i8*)** %settable_ctx_params, align 8, !tbaa !40
  %call4 = tail call %struct.ossl_param_st* %1(i8* noundef null, i8* noundef %call2) #8
  br label %cleanup

cleanup:                                          ; preds = %entry, %lor.lhs.false, %if.end
  %retval.0 = phi %struct.ossl_param_st* [ %call4, %if.end ], [ null, %lor.lhs.false ], [ null, %entry ]
  ret %struct.ossl_param_st* %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @EVP_PKEY_sign_init(%struct.evp_pkey_ctx_st* noundef %ctx) local_unnamed_addr #0 {
entry:
  %call = tail call fastcc i32 @evp_pkey_signature_init(%struct.evp_pkey_ctx_st* noundef %ctx, i32 noundef 16, %struct.ossl_param_st* noundef null) #7
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @evp_pkey_signature_init(%struct.evp_pkey_ctx_st* noundef %ctx, i32 noundef %operation, %struct.ossl_param_st* noundef %params) unnamed_addr #0 {
entry:
  %tmp_keymgmt = alloca %struct.evp_keymgmt_st*, align 8
  %0 = bitcast %struct.evp_keymgmt_st** %tmp_keymgmt to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #6
  store %struct.evp_keymgmt_st* null, %struct.evp_keymgmt_st** %tmp_keymgmt, align 8, !tbaa !47
  %cmp = icmp eq %struct.evp_pkey_ctx_st* %ctx, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 392, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.evp_pkey_signature_init, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 6, i32 noundef 150, i8* noundef null) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @evp_pkey_ctx_free_old_ops(%struct.evp_pkey_ctx_st* noundef nonnull %ctx) #8
  %operation1 = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %ctx, i64 0, i32 0
  store i32 %operation, i32* %operation1, align 8, !tbaa !48
  %call = tail call i32 @ERR_set_mark() #8
  %keymgmt = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %ctx, i64 0, i32 4
  %1 = load %struct.evp_keymgmt_st*, %struct.evp_keymgmt_st** %keymgmt, align 8, !tbaa !52
  %cmp2 = icmp eq %struct.evp_keymgmt_st* %1, null
  br i1 %cmp2, label %legacy, label %if.end4

if.end4:                                          ; preds = %if.end
  store %struct.evp_keymgmt_st* %1, %struct.evp_keymgmt_st** %tmp_keymgmt, align 8, !tbaa !47
  %pkey = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %ctx, i64 0, i32 14
  %2 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %pkey, align 8, !tbaa !53
  %libctx = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %ctx, i64 0, i32 1
  %3 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** %libctx, align 8, !tbaa !54
  %propquery = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %ctx, i64 0, i32 2
  %4 = load i8*, i8** %propquery, align 8, !tbaa !55
  %call6 = call i8* @evp_pkey_export_to_provider(%struct.evp_pkey_st* noundef %2, %struct.ossl_lib_ctx_st* noundef %3, %struct.evp_keymgmt_st** noundef nonnull %tmp_keymgmt, i8* noundef %4) #8
  %5 = load %struct.evp_keymgmt_st*, %struct.evp_keymgmt_st** %tmp_keymgmt, align 8, !tbaa !47
  %cmp7 = icmp eq %struct.evp_keymgmt_st* %5, null
  br i1 %cmp7, label %legacy, label %if.end9

if.end9:                                          ; preds = %if.end4
  %call10 = call i32 @EVP_KEYMGMT_up_ref(%struct.evp_keymgmt_st* noundef nonnull %5) #8
  %tobool.not = icmp eq i32 %call10, 0
  br i1 %tobool.not, label %if.then11, label %if.end13

if.then11:                                        ; preds = %if.end9
  %call12 = call i32 @ERR_clear_last_mark() #8
  call void @ERR_new() #8
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 415, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.evp_pkey_signature_init, i64 0, i64 0)) #8
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 6, i32 noundef 134, i8* noundef null) #8
  br label %err

if.end13:                                         ; preds = %if.end9
  %6 = load %struct.evp_keymgmt_st*, %struct.evp_keymgmt_st** %keymgmt, align 8, !tbaa !52
  call void @EVP_KEYMGMT_free(%struct.evp_keymgmt_st* noundef %6) #8
  %7 = load %struct.evp_keymgmt_st*, %struct.evp_keymgmt_st** %tmp_keymgmt, align 8, !tbaa !47
  store %struct.evp_keymgmt_st* %7, %struct.evp_keymgmt_st** %keymgmt, align 8, !tbaa !52
  %query_operation_name = getelementptr inbounds %struct.evp_keymgmt_st, %struct.evp_keymgmt_st* %7, i64 0, i32 20
  %8 = load i8* (i32)*, i8* (i32)** %query_operation_name, align 8, !tbaa !56
  %cmp17.not = icmp eq i8* (i32)* %8, null
  br i1 %cmp17.not, label %if.then24, label %if.end22

if.end22:                                         ; preds = %if.end13
  %call21 = call i8* %8(i32 noundef 12) #8
  %cmp23 = icmp eq i8* %call21, null
  br i1 %cmp23, label %if.then24, label %if.end25

if.then24:                                        ; preds = %if.end13, %if.end22
  %keytype = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %ctx, i64 0, i32 3
  %9 = load i8*, i8** %keytype, align 8, !tbaa !58
  br label %if.end25

if.end25:                                         ; preds = %if.then24, %if.end22
  %supported_sig.1 = phi i8* [ %9, %if.then24 ], [ %call21, %if.end22 ]
  %10 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** %libctx, align 8, !tbaa !54
  %11 = load i8*, i8** %propquery, align 8, !tbaa !55
  %call28 = call %struct.evp_signature_st* @EVP_SIGNATURE_fetch(%struct.ossl_lib_ctx_st* noundef %10, i8* noundef %supported_sig.1, i8* noundef %11) #7
  %cmp29 = icmp eq %struct.evp_signature_st* %call28, null
  br i1 %cmp29, label %if.then34, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end25
  %12 = load %struct.evp_keymgmt_st*, %struct.evp_keymgmt_st** %keymgmt, align 8, !tbaa !52
  %call31 = call %struct.ossl_provider_st* @EVP_KEYMGMT_get0_provider(%struct.evp_keymgmt_st* noundef %12) #8
  %call32 = call %struct.ossl_provider_st* @EVP_SIGNATURE_get0_provider(%struct.evp_signature_st* noundef nonnull %call28) #7
  %cmp33.not = icmp eq %struct.ossl_provider_st* %call31, %call32
  br i1 %cmp33.not, label %if.end35, label %if.then34

if.then34:                                        ; preds = %lor.lhs.false, %if.end25
  call void @EVP_SIGNATURE_free(%struct.evp_signature_st* noundef %call28) #7
  br label %legacy

if.end35:                                         ; preds = %lor.lhs.false
  %call36 = call i32 @ERR_pop_to_mark() #8
  %op = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %ctx, i64 0, i32 5
  %signature37 = bitcast %union.anon* %op to %struct.evp_signature_st**
  store %struct.evp_signature_st* %call28, %struct.evp_signature_st** %signature37, align 8, !tbaa !59
  %newctx = getelementptr inbounds %struct.evp_signature_st, %struct.evp_signature_st* %call28, i64 0, i32 6
  %13 = load i8* (i8*, i8*)*, i8* (i8*, i8*)** %newctx, align 8, !tbaa !20
  %prov = getelementptr inbounds %struct.evp_signature_st, %struct.evp_signature_st* %call28, i64 0, i32 3
  %14 = load %struct.ossl_provider_st*, %struct.ossl_provider_st** %prov, align 8, !tbaa !11
  %call38 = call i8* @ossl_provider_ctx(%struct.ossl_provider_st* noundef %14) #8
  %15 = load i8*, i8** %propquery, align 8, !tbaa !55
  %call40 = call i8* %13(i8* noundef %call38, i8* noundef %15) #8
  %16 = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %ctx, i64 0, i32 5, i32 0, i32 1
  store i8* %call40, i8** %16, align 8, !tbaa !59
  %cmp46 = icmp eq i8* %call40, null
  br i1 %cmp46, label %if.then47, label %if.end48

if.then47:                                        ; preds = %if.end35
  call void @ERR_new() #8
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 462, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.evp_pkey_signature_init, i64 0, i64 0)) #8
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 6, i32 noundef 134, i8* noundef null) #8
  br label %err

if.end48:                                         ; preds = %if.end35
  switch i32 %operation, label %sw.default [
    i32 16, label %sw.bb
    i32 32, label %sw.bb57
    i32 64, label %sw.bb66
  ]

sw.bb:                                            ; preds = %if.end48
  %sign_init = getelementptr inbounds %struct.evp_signature_st, %struct.evp_signature_st* %call28, i64 0, i32 7
  %17 = load i32 (i8*, i8*, %struct.ossl_param_st*)*, i32 (i8*, i8*, %struct.ossl_param_st*)** %sign_init, align 8, !tbaa !21
  %cmp49 = icmp eq i32 (i8*, i8*, %struct.ossl_param_st*)* %17, null
  br i1 %cmp49, label %if.then50, label %sw.epilog

if.then50:                                        ; preds = %sw.bb
  call void @ERR_new() #8
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 469, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.evp_pkey_signature_init, i64 0, i64 0)) #8
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 6, i32 noundef 150, i8* noundef null) #8
  br label %err

sw.bb57:                                          ; preds = %if.end48
  %verify_init = getelementptr inbounds %struct.evp_signature_st, %struct.evp_signature_st* %call28, i64 0, i32 9
  %18 = load i32 (i8*, i8*, %struct.ossl_param_st*)*, i32 (i8*, i8*, %struct.ossl_param_st*)** %verify_init, align 8, !tbaa !23
  %cmp58 = icmp eq i32 (i8*, i8*, %struct.ossl_param_st*)* %18, null
  br i1 %cmp58, label %if.then59, label %sw.epilog

if.then59:                                        ; preds = %sw.bb57
  call void @ERR_new() #8
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 477, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.evp_pkey_signature_init, i64 0, i64 0)) #8
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 6, i32 noundef 150, i8* noundef null) #8
  br label %err

sw.bb66:                                          ; preds = %if.end48
  %verify_recover_init = getelementptr inbounds %struct.evp_signature_st, %struct.evp_signature_st* %call28, i64 0, i32 11
  %19 = load i32 (i8*, i8*, %struct.ossl_param_st*)*, i32 (i8*, i8*, %struct.ossl_param_st*)** %verify_recover_init, align 8, !tbaa !25
  %cmp67 = icmp eq i32 (i8*, i8*, %struct.ossl_param_st*)* %19, null
  br i1 %cmp67, label %if.then68, label %sw.epilog

if.then68:                                        ; preds = %sw.bb66
  call void @ERR_new() #8
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 485, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.evp_pkey_signature_init, i64 0, i64 0)) #8
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 6, i32 noundef 150, i8* noundef null) #8
  br label %err

sw.default:                                       ; preds = %if.end48
  call void @ERR_new() #8
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 493, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.evp_pkey_signature_init, i64 0, i64 0)) #8
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 6, i32 noundef 134, i8* noundef null) #8
  br label %err

sw.epilog:                                        ; preds = %sw.bb66, %sw.bb57, %sw.bb
  %.sink = phi i32 (i8*, i8*, %struct.ossl_param_st*)* [ %17, %sw.bb ], [ %18, %sw.bb57 ], [ %19, %sw.bb66 ]
  %call74 = call i32 %.sink(i8* noundef nonnull %call40, i8* noundef %call6, %struct.ossl_param_st* noundef %params) #8
  %cmp75 = icmp slt i32 %call74, 1
  br i1 %cmp75, label %if.then76, label %if.then141

if.then76:                                        ; preds = %sw.epilog
  %freectx = getelementptr inbounds %struct.evp_signature_st, %struct.evp_signature_st* %call28, i64 0, i32 21
  %20 = load void (i8*)*, void (i8*)** %freectx, align 8, !tbaa !35
  %21 = load i8*, i8** %16, align 8, !tbaa !59
  call void %20(i8* noundef %21) #8
  store i8* null, i8** %16, align 8, !tbaa !59
  br label %err

legacy:                                           ; preds = %if.end4, %if.end, %if.then34
  %call84 = call i32 @ERR_pop_to_mark() #8
  %pmeth = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %ctx, i64 0, i32 12
  %22 = load %struct.evp_pkey_method_st*, %struct.evp_pkey_method_st** %pmeth, align 8, !tbaa !60
  %cmp85 = icmp eq %struct.evp_pkey_method_st* %22, null
  br i1 %cmp85, label %if.then100, label %lor.lhs.false86

lor.lhs.false86:                                  ; preds = %legacy
  switch i32 %operation, label %sw.default135 [
    i32 16, label %land.lhs.true
    i32 32, label %land.lhs.true92
    i32 64, label %land.lhs.true97
  ]

land.lhs.true:                                    ; preds = %lor.lhs.false86
  %sign = getelementptr inbounds %struct.evp_pkey_method_st, %struct.evp_pkey_method_st* %22, i64 0, i32 10
  %23 = load i32 (%struct.evp_pkey_ctx_st*, i8*, i64*, i8*, i64)*, i32 (%struct.evp_pkey_ctx_st*, i8*, i64*, i8*, i64)** %sign, align 8, !tbaa !61
  %cmp89 = icmp eq i32 (%struct.evp_pkey_ctx_st*, i8*, i64*, i8*, i64)* %23, null
  br i1 %cmp89, label %if.then100, label %sw.bb102

land.lhs.true92:                                  ; preds = %lor.lhs.false86
  %verify = getelementptr inbounds %struct.evp_pkey_method_st, %struct.evp_pkey_method_st* %22, i64 0, i32 12
  %24 = load i32 (%struct.evp_pkey_ctx_st*, i8*, i64, i8*, i64)*, i32 (%struct.evp_pkey_ctx_st*, i8*, i64, i8*, i64)** %verify, align 8, !tbaa !63
  %cmp94 = icmp eq i32 (%struct.evp_pkey_ctx_st*, i8*, i64, i8*, i64)* %24, null
  br i1 %cmp94, label %if.then100, label %sw.bb113

land.lhs.true97:                                  ; preds = %lor.lhs.false86
  %verify_recover = getelementptr inbounds %struct.evp_pkey_method_st, %struct.evp_pkey_method_st* %22, i64 0, i32 14
  %25 = load i32 (%struct.evp_pkey_ctx_st*, i8*, i64*, i8*, i64)*, i32 (%struct.evp_pkey_ctx_st*, i8*, i64*, i8*, i64)** %verify_recover, align 8, !tbaa !64
  %cmp99 = icmp eq i32 (%struct.evp_pkey_ctx_st*, i8*, i64*, i8*, i64)* %25, null
  br i1 %cmp99, label %if.then100, label %sw.bb124

if.then100:                                       ; preds = %land.lhs.true97, %land.lhs.true92, %land.lhs.true, %legacy
  call void @ERR_new() #8
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 516, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.evp_pkey_signature_init, i64 0, i64 0)) #8
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 6, i32 noundef 150, i8* noundef null) #8
  br label %cleanup

sw.bb102:                                         ; preds = %land.lhs.true
  %sign_init104 = getelementptr inbounds %struct.evp_pkey_method_st, %struct.evp_pkey_method_st* %22, i64 0, i32 9
  %sign_init105 = bitcast {}** %sign_init104 to i32 (%struct.evp_pkey_ctx_st*)**
  %26 = load i32 (%struct.evp_pkey_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*)** %sign_init105, align 8, !tbaa !65
  %cmp106 = icmp eq i32 (%struct.evp_pkey_ctx_st*)* %26, null
  br i1 %cmp106, label %cleanup, label %sw.epilog136

sw.bb113:                                         ; preds = %land.lhs.true92
  %verify_init115 = getelementptr inbounds %struct.evp_pkey_method_st, %struct.evp_pkey_method_st* %22, i64 0, i32 11
  %verify_init116 = bitcast {}** %verify_init115 to i32 (%struct.evp_pkey_ctx_st*)**
  %27 = load i32 (%struct.evp_pkey_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*)** %verify_init116, align 8, !tbaa !66
  %cmp117 = icmp eq i32 (%struct.evp_pkey_ctx_st*)* %27, null
  br i1 %cmp117, label %cleanup, label %sw.epilog136

sw.bb124:                                         ; preds = %land.lhs.true97
  %verify_recover_init126 = getelementptr inbounds %struct.evp_pkey_method_st, %struct.evp_pkey_method_st* %22, i64 0, i32 13
  %verify_recover_init127 = bitcast {}** %verify_recover_init126 to i32 (%struct.evp_pkey_ctx_st*)**
  %28 = load i32 (%struct.evp_pkey_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*)** %verify_recover_init127, align 8, !tbaa !67
  %cmp128 = icmp eq i32 (%struct.evp_pkey_ctx_st*)* %28, null
  br i1 %cmp128, label %cleanup, label %sw.epilog136

sw.default135:                                    ; preds = %lor.lhs.false86
  call void @ERR_new() #8
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 537, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.evp_pkey_signature_init, i64 0, i64 0)) #8
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 6, i32 noundef 134, i8* noundef null) #8
  br label %err

sw.epilog136:                                     ; preds = %sw.bb124, %sw.bb113, %sw.bb102
  %.sink230 = phi i32 (%struct.evp_pkey_ctx_st*)* [ %26, %sw.bb102 ], [ %27, %sw.bb113 ], [ %28, %sw.bb124 ]
  %call134 = call i32 %.sink230(%struct.evp_pkey_ctx_st* noundef nonnull %ctx) #8
  %cmp137 = icmp slt i32 %call134, 1
  br i1 %cmp137, label %err, label %if.then141

if.then141:                                       ; preds = %sw.epilog, %sw.epilog136
  %call142 = call i32 @evp_pkey_ctx_use_cached_data(%struct.evp_pkey_ctx_st* noundef nonnull %ctx) #8
  br label %cleanup

err:                                              ; preds = %sw.epilog136, %sw.default135, %if.then76, %sw.default, %if.then68, %if.then59, %if.then50, %if.then47, %if.then11
  %ret.4 = phi i32 [ 0, %sw.default135 ], [ %call134, %sw.epilog136 ], [ 0, %if.then47 ], [ 0, %sw.default ], [ -2, %if.then68 ], [ %call74, %if.then76 ], [ -2, %if.then59 ], [ -2, %if.then50 ], [ 0, %if.then11 ]
  call void @evp_pkey_ctx_free_old_ops(%struct.evp_pkey_ctx_st* noundef nonnull %ctx) #8
  store i32 0, i32* %operation1, align 8, !tbaa !48
  br label %cleanup

cleanup:                                          ; preds = %sw.bb124, %sw.bb113, %sw.bb102, %err, %if.then141, %if.then100, %if.then
  %retval.0 = phi i32 [ -2, %if.then ], [ -2, %if.then100 ], [ %ret.4, %err ], [ %call142, %if.then141 ], [ 1, %sw.bb102 ], [ 1, %sw.bb113 ], [ 1, %sw.bb124 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #6
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @EVP_PKEY_sign_init_ex(%struct.evp_pkey_ctx_st* noundef %ctx, %struct.ossl_param_st* noundef %params) local_unnamed_addr #0 {
entry:
  %call = tail call fastcc i32 @evp_pkey_signature_init(%struct.evp_pkey_ctx_st* noundef %ctx, i32 noundef 16, %struct.ossl_param_st* noundef %params) #7
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define i32 @EVP_PKEY_sign(%struct.evp_pkey_ctx_st* noundef %ctx, i8* noundef %sig, i64* noundef %siglen, i8* noundef %tbs, i64 noundef %tbslen) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.evp_pkey_ctx_st* %ctx, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 572, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.EVP_PKEY_sign, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 6, i32 noundef 150, i8* noundef null) #8
  br label %cleanup38

if.end:                                           ; preds = %entry
  %operation = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %ctx, i64 0, i32 0
  %0 = load i32, i32* %operation, align 8, !tbaa !48
  %cmp1.not = icmp eq i32 %0, 16
  br i1 %cmp1.not, label %if.end3, label %if.then2

if.then2:                                         ; preds = %if.end
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 577, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.EVP_PKEY_sign, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 6, i32 noundef 151, i8* noundef null) #8
  br label %cleanup38

if.end3:                                          ; preds = %if.end
  %1 = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %ctx, i64 0, i32 5, i32 0, i32 1
  %2 = load i8*, i8** %1, align 8, !tbaa !59
  %cmp5 = icmp eq i8* %2, null
  br i1 %cmp5, label %legacy, label %if.end7

if.end7:                                          ; preds = %if.end3
  %op = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %ctx, i64 0, i32 5
  %signature = bitcast %union.anon* %op to %struct.evp_signature_st**
  %3 = load %struct.evp_signature_st*, %struct.evp_signature_st** %signature, align 8, !tbaa !59
  %sign = getelementptr inbounds %struct.evp_signature_st, %struct.evp_signature_st* %3, i64 0, i32 8
  %4 = load i32 (i8*, i8*, i64*, i64, i8*, i64)*, i32 (i8*, i8*, i64*, i64, i8*, i64)** %sign, align 8, !tbaa !22
  %call = tail call i32 %4(i8* noundef nonnull %2, i8* noundef %sig, i64* noundef %siglen, i64 noundef -1, i8* noundef %tbs, i64 noundef %tbslen) #8
  br label %cleanup38

legacy:                                           ; preds = %if.end3
  %pmeth = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %ctx, i64 0, i32 12
  %5 = load %struct.evp_pkey_method_st*, %struct.evp_pkey_method_st** %pmeth, align 8, !tbaa !60
  %cmp13 = icmp eq %struct.evp_pkey_method_st* %5, null
  br i1 %cmp13, label %if.then17, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %legacy
  %sign15 = getelementptr inbounds %struct.evp_pkey_method_st, %struct.evp_pkey_method_st* %5, i64 0, i32 10
  %6 = load i32 (%struct.evp_pkey_ctx_st*, i8*, i64*, i8*, i64)*, i32 (%struct.evp_pkey_ctx_st*, i8*, i64*, i8*, i64)** %sign15, align 8, !tbaa !61
  %cmp16 = icmp eq i32 (%struct.evp_pkey_ctx_st*, i8*, i64*, i8*, i64)* %6, null
  br i1 %cmp16, label %if.then17, label %if.end18

if.then17:                                        ; preds = %lor.lhs.false, %legacy
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 591, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.EVP_PKEY_sign, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 6, i32 noundef 150, i8* noundef null) #8
  br label %cleanup38

if.end18:                                         ; preds = %lor.lhs.false
  %flags = getelementptr inbounds %struct.evp_pkey_method_st, %struct.evp_pkey_method_st* %5, i64 0, i32 1
  %7 = load i32, i32* %flags, align 4, !tbaa !68
  %and = and i32 %7, 2
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end34, label %if.then20

if.then20:                                        ; preds = %if.end18
  %pkey = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %ctx, i64 0, i32 14
  %8 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %pkey, align 8, !tbaa !53
  %call21 = tail call i32 @EVP_PKEY_get_size(%struct.evp_pkey_st* noundef %8) #8
  %conv = sext i32 %call21 to i64
  %cmp22 = icmp eq i32 %call21, 0
  br i1 %cmp22, label %if.then24, label %if.end25

if.then24:                                        ; preds = %if.then20
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 595, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.EVP_PKEY_sign, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 6, i32 noundef 163, i8* noundef null) #8
  br label %cleanup38

if.end25:                                         ; preds = %if.then20
  %cmp26 = icmp eq i8* %sig, null
  br i1 %cmp26, label %if.then28, label %if.end29

if.then28:                                        ; preds = %if.end25
  store i64 %conv, i64* %siglen, align 8, !tbaa !69
  br label %cleanup38

if.end29:                                         ; preds = %if.end25
  %9 = load i64, i64* %siglen, align 8, !tbaa !69
  %cmp30 = icmp ult i64 %9, %conv
  br i1 %cmp30, label %if.then32, label %if.end29.if.end34_crit_edge

if.end29.if.end34_crit_edge:                      ; preds = %if.end29
  %.pre = load %struct.evp_pkey_method_st*, %struct.evp_pkey_method_st** %pmeth, align 8, !tbaa !60
  %sign36.phi.trans.insert = getelementptr inbounds %struct.evp_pkey_method_st, %struct.evp_pkey_method_st* %.pre, i64 0, i32 10
  %.pre63 = load i32 (%struct.evp_pkey_ctx_st*, i8*, i64*, i8*, i64)*, i32 (%struct.evp_pkey_ctx_st*, i8*, i64*, i8*, i64)** %sign36.phi.trans.insert, align 8, !tbaa !61
  br label %if.end34

if.then32:                                        ; preds = %if.end29
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 595, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.EVP_PKEY_sign, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 6, i32 noundef 155, i8* noundef null) #8
  br label %cleanup38

if.end34:                                         ; preds = %if.end29.if.end34_crit_edge, %if.end18
  %10 = phi i32 (%struct.evp_pkey_ctx_st*, i8*, i64*, i8*, i64)* [ %.pre63, %if.end29.if.end34_crit_edge ], [ %6, %if.end18 ]
  %call37 = tail call i32 %10(%struct.evp_pkey_ctx_st* noundef nonnull %ctx, i8* noundef %sig, i64* noundef %siglen, i8* noundef %tbs, i64 noundef %tbslen) #8
  br label %cleanup38

cleanup38:                                        ; preds = %if.then24, %if.then28, %if.then32, %if.end34, %if.then17, %if.end7, %if.then2, %if.then
  %retval.1 = phi i32 [ -2, %if.then ], [ -1, %if.then2 ], [ -2, %if.then17 ], [ %call37, %if.end34 ], [ %call, %if.end7 ], [ 0, %if.then24 ], [ 1, %if.then28 ], [ 0, %if.then32 ]
  ret i32 %retval.1
}

declare void @ERR_new() local_unnamed_addr #3

declare void @ERR_set_debug(i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #3

declare void @ERR_set_error(i32 noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #3

declare i32 @EVP_PKEY_get_size(%struct.evp_pkey_st* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define i32 @EVP_PKEY_verify_init(%struct.evp_pkey_ctx_st* noundef %ctx) local_unnamed_addr #0 {
entry:
  %call = tail call fastcc i32 @evp_pkey_signature_init(%struct.evp_pkey_ctx_st* noundef %ctx, i32 noundef 32, %struct.ossl_param_st* noundef null) #7
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define i32 @EVP_PKEY_verify_init_ex(%struct.evp_pkey_ctx_st* noundef %ctx, %struct.ossl_param_st* noundef %params) local_unnamed_addr #0 {
entry:
  %call = tail call fastcc i32 @evp_pkey_signature_init(%struct.evp_pkey_ctx_st* noundef %ctx, i32 noundef 32, %struct.ossl_param_st* noundef %params) #7
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define i32 @EVP_PKEY_verify(%struct.evp_pkey_ctx_st* noundef %ctx, i8* noundef %sig, i64 noundef %siglen, i8* noundef %tbs, i64 noundef %tbslen) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.evp_pkey_ctx_st* %ctx, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 616, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.EVP_PKEY_verify, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 6, i32 noundef 150, i8* noundef null) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %operation = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %ctx, i64 0, i32 0
  %0 = load i32, i32* %operation, align 8, !tbaa !48
  %cmp1.not = icmp eq i32 %0, 32
  br i1 %cmp1.not, label %if.end3, label %if.then2

if.then2:                                         ; preds = %if.end
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 621, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.EVP_PKEY_verify, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 6, i32 noundef 151, i8* noundef null) #8
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %1 = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %ctx, i64 0, i32 5, i32 0, i32 1
  %2 = load i8*, i8** %1, align 8, !tbaa !59
  %cmp5 = icmp eq i8* %2, null
  br i1 %cmp5, label %legacy, label %if.end7

if.end7:                                          ; preds = %if.end3
  %op = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %ctx, i64 0, i32 5
  %signature = bitcast %union.anon* %op to %struct.evp_signature_st**
  %3 = load %struct.evp_signature_st*, %struct.evp_signature_st** %signature, align 8, !tbaa !59
  %verify = getelementptr inbounds %struct.evp_signature_st, %struct.evp_signature_st* %3, i64 0, i32 10
  %4 = load i32 (i8*, i8*, i64, i8*, i64)*, i32 (i8*, i8*, i64, i8*, i64)** %verify, align 8, !tbaa !24
  %call = tail call i32 %4(i8* noundef nonnull %2, i8* noundef %sig, i64 noundef %siglen, i8* noundef %tbs, i64 noundef %tbslen) #8
  br label %cleanup

legacy:                                           ; preds = %if.end3
  %pmeth = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %ctx, i64 0, i32 12
  %5 = load %struct.evp_pkey_method_st*, %struct.evp_pkey_method_st** %pmeth, align 8, !tbaa !60
  %cmp13 = icmp eq %struct.evp_pkey_method_st* %5, null
  br i1 %cmp13, label %if.then17, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %legacy
  %verify15 = getelementptr inbounds %struct.evp_pkey_method_st, %struct.evp_pkey_method_st* %5, i64 0, i32 12
  %6 = load i32 (%struct.evp_pkey_ctx_st*, i8*, i64, i8*, i64)*, i32 (%struct.evp_pkey_ctx_st*, i8*, i64, i8*, i64)** %verify15, align 8, !tbaa !63
  %cmp16 = icmp eq i32 (%struct.evp_pkey_ctx_st*, i8*, i64, i8*, i64)* %6, null
  br i1 %cmp16, label %if.then17, label %if.end18

if.then17:                                        ; preds = %lor.lhs.false, %legacy
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 634, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.EVP_PKEY_verify, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 6, i32 noundef 150, i8* noundef null) #8
  br label %cleanup

if.end18:                                         ; preds = %lor.lhs.false
  %call21 = tail call i32 %6(%struct.evp_pkey_ctx_st* noundef nonnull %ctx, i8* noundef %sig, i64 noundef %siglen, i8* noundef %tbs, i64 noundef %tbslen) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end18, %if.then17, %if.end7, %if.then2, %if.then
  %retval.0 = phi i32 [ -2, %if.then ], [ -1, %if.then2 ], [ -2, %if.then17 ], [ %call21, %if.end18 ], [ %call, %if.end7 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @EVP_PKEY_verify_recover_init(%struct.evp_pkey_ctx_st* noundef %ctx) local_unnamed_addr #0 {
entry:
  %call = tail call fastcc i32 @evp_pkey_signature_init(%struct.evp_pkey_ctx_st* noundef %ctx, i32 noundef 64, %struct.ossl_param_st* noundef null) #7
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define i32 @EVP_PKEY_verify_recover_init_ex(%struct.evp_pkey_ctx_st* noundef %ctx, %struct.ossl_param_st* noundef %params) local_unnamed_addr #0 {
entry:
  %call = tail call fastcc i32 @evp_pkey_signature_init(%struct.evp_pkey_ctx_st* noundef %ctx, i32 noundef 64, %struct.ossl_param_st* noundef %params) #7
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define i32 @EVP_PKEY_verify_recover(%struct.evp_pkey_ctx_st* noundef %ctx, i8* noundef %rout, i64* noundef %routlen, i8* noundef %sig, i64 noundef %siglen) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.evp_pkey_ctx_st* %ctx, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 659, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.EVP_PKEY_verify_recover, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 6, i32 noundef 150, i8* noundef null) #8
  br label %cleanup39

if.end:                                           ; preds = %entry
  %operation = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %ctx, i64 0, i32 0
  %0 = load i32, i32* %operation, align 8, !tbaa !48
  %cmp1.not = icmp eq i32 %0, 64
  br i1 %cmp1.not, label %if.end3, label %if.then2

if.then2:                                         ; preds = %if.end
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 664, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.EVP_PKEY_verify_recover, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 6, i32 noundef 151, i8* noundef null) #8
  br label %cleanup39

if.end3:                                          ; preds = %if.end
  %1 = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %ctx, i64 0, i32 5, i32 0, i32 1
  %2 = load i8*, i8** %1, align 8, !tbaa !59
  %cmp5 = icmp eq i8* %2, null
  br i1 %cmp5, label %legacy, label %if.end7

if.end7:                                          ; preds = %if.end3
  %op = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %ctx, i64 0, i32 5
  %signature = bitcast %union.anon* %op to %struct.evp_signature_st**
  %3 = load %struct.evp_signature_st*, %struct.evp_signature_st** %signature, align 8, !tbaa !59
  %verify_recover = getelementptr inbounds %struct.evp_signature_st, %struct.evp_signature_st* %3, i64 0, i32 12
  %4 = load i32 (i8*, i8*, i64*, i64, i8*, i64)*, i32 (i8*, i8*, i64*, i64, i8*, i64)** %verify_recover, align 8, !tbaa !26
  %cmp13 = icmp eq i8* %rout, null
  br i1 %cmp13, label %cond.end, label %cond.false

cond.false:                                       ; preds = %if.end7
  %5 = load i64, i64* %routlen, align 8, !tbaa !69
  br label %cond.end

cond.end:                                         ; preds = %if.end7, %cond.false
  %cond = phi i64 [ %5, %cond.false ], [ 0, %if.end7 ]
  %call = tail call i32 %4(i8* noundef nonnull %2, i8* noundef %rout, i64* noundef %routlen, i64 noundef %cond, i8* noundef %sig, i64 noundef %siglen) #8
  br label %cleanup39

legacy:                                           ; preds = %if.end3
  %pmeth = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %ctx, i64 0, i32 12
  %6 = load %struct.evp_pkey_method_st*, %struct.evp_pkey_method_st** %pmeth, align 8, !tbaa !60
  %cmp14 = icmp eq %struct.evp_pkey_method_st* %6, null
  br i1 %cmp14, label %if.then18, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %legacy
  %verify_recover16 = getelementptr inbounds %struct.evp_pkey_method_st, %struct.evp_pkey_method_st* %6, i64 0, i32 14
  %7 = load i32 (%struct.evp_pkey_ctx_st*, i8*, i64*, i8*, i64)*, i32 (%struct.evp_pkey_ctx_st*, i8*, i64*, i8*, i64)** %verify_recover16, align 8, !tbaa !64
  %cmp17 = icmp eq i32 (%struct.evp_pkey_ctx_st*, i8*, i64*, i8*, i64)* %7, null
  br i1 %cmp17, label %if.then18, label %if.end19

if.then18:                                        ; preds = %lor.lhs.false, %legacy
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 678, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.EVP_PKEY_verify_recover, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 6, i32 noundef 150, i8* noundef null) #8
  br label %cleanup39

if.end19:                                         ; preds = %lor.lhs.false
  %flags = getelementptr inbounds %struct.evp_pkey_method_st, %struct.evp_pkey_method_st* %6, i64 0, i32 1
  %8 = load i32, i32* %flags, align 4, !tbaa !68
  %and = and i32 %8, 2
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end35, label %if.then21

if.then21:                                        ; preds = %if.end19
  %pkey = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %ctx, i64 0, i32 14
  %9 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %pkey, align 8, !tbaa !53
  %call22 = tail call i32 @EVP_PKEY_get_size(%struct.evp_pkey_st* noundef %9) #8
  %conv = sext i32 %call22 to i64
  %cmp23 = icmp eq i32 %call22, 0
  br i1 %cmp23, label %if.then25, label %if.end26

if.then25:                                        ; preds = %if.then21
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 681, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.EVP_PKEY_verify_recover, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 6, i32 noundef 163, i8* noundef null) #8
  br label %cleanup39

if.end26:                                         ; preds = %if.then21
  %cmp27 = icmp eq i8* %rout, null
  br i1 %cmp27, label %if.then29, label %if.end30

if.then29:                                        ; preds = %if.end26
  store i64 %conv, i64* %routlen, align 8, !tbaa !69
  br label %cleanup39

if.end30:                                         ; preds = %if.end26
  %10 = load i64, i64* %routlen, align 8, !tbaa !69
  %cmp31 = icmp ult i64 %10, %conv
  br i1 %cmp31, label %if.then33, label %if.end30.if.end35_crit_edge

if.end30.if.end35_crit_edge:                      ; preds = %if.end30
  %.pre = load %struct.evp_pkey_method_st*, %struct.evp_pkey_method_st** %pmeth, align 8, !tbaa !60
  %verify_recover37.phi.trans.insert = getelementptr inbounds %struct.evp_pkey_method_st, %struct.evp_pkey_method_st* %.pre, i64 0, i32 14
  %.pre67 = load i32 (%struct.evp_pkey_ctx_st*, i8*, i64*, i8*, i64)*, i32 (%struct.evp_pkey_ctx_st*, i8*, i64*, i8*, i64)** %verify_recover37.phi.trans.insert, align 8, !tbaa !64
  br label %if.end35

if.then33:                                        ; preds = %if.end30
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 681, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.EVP_PKEY_verify_recover, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 6, i32 noundef 155, i8* noundef null) #8
  br label %cleanup39

if.end35:                                         ; preds = %if.end30.if.end35_crit_edge, %if.end19
  %11 = phi i32 (%struct.evp_pkey_ctx_st*, i8*, i64*, i8*, i64)* [ %.pre67, %if.end30.if.end35_crit_edge ], [ %7, %if.end19 ]
  %call38 = tail call i32 %11(%struct.evp_pkey_ctx_st* noundef nonnull %ctx, i8* noundef %rout, i64* noundef %routlen, i8* noundef %sig, i64 noundef %siglen) #8
  br label %cleanup39

cleanup39:                                        ; preds = %if.then25, %if.then29, %if.then33, %if.end35, %if.then18, %cond.end, %if.then2, %if.then
  %retval.1 = phi i32 [ -2, %if.then ], [ -1, %if.then2 ], [ -2, %if.then18 ], [ %call38, %if.end35 ], [ %call, %cond.end ], [ 0, %if.then25 ], [ 1, %if.then29 ], [ 0, %if.then33 ]
  ret i32 %retval.1
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.evp_signature_st* @evp_signature_new(%struct.ossl_provider_st* noundef %prov) unnamed_addr #0 {
entry:
  %call = tail call i8* @CRYPTO_zalloc(i64 noundef 248, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 23) #8
  %0 = bitcast i8* %call to %struct.evp_signature_st*
  %cmp = icmp eq i8* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 26, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.evp_signature_new, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 6, i32 noundef 786688, i8* noundef null) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i8* @CRYPTO_THREAD_lock_new() #8
  %lock = getelementptr inbounds i8, i8* %call, i64 40
  %1 = bitcast i8* %lock to i8**
  store i8* %call1, i8** %1, align 8, !tbaa !12
  %cmp3 = icmp eq i8* %call1, null
  br i1 %cmp3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 32, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.evp_signature_new, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 6, i32 noundef 786688, i8* noundef null) #8
  tail call void @CRYPTO_free(i8* noundef nonnull %call, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 33) #8
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %prov6 = getelementptr inbounds i8, i8* %call, i64 24
  %2 = bitcast i8* %prov6 to %struct.ossl_provider_st**
  store %struct.ossl_provider_st* %prov, %struct.ossl_provider_st** %2, align 8, !tbaa !11
  %call7 = tail call i32 @ossl_provider_up_ref(%struct.ossl_provider_st* noundef %prov) #8
  %refcnt = getelementptr inbounds i8, i8* %call, i64 32
  %3 = bitcast i8* %refcnt to i32*
  store atomic i32 1, i32* %3 seq_cst, align 4, !tbaa !70
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.then4, %if.then
  %retval.0 = phi %struct.evp_signature_st* [ null, %if.then ], [ null, %if.then4 ], [ %0, %if.end5 ]
  ret %struct.evp_signature_st* %retval.0
}

declare i8* @ossl_algorithm_get1_first_name(%struct.ossl_algorithm_st* noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal fastcc i8* (i8*, i8*)* @OSSL_FUNC_signature_newctx(%struct.ossl_dispatch_st* nocapture noundef readonly %opf) unnamed_addr #5 {
entry:
  %function = getelementptr inbounds %struct.ossl_dispatch_st, %struct.ossl_dispatch_st* %opf, i64 0, i32 1
  %0 = bitcast void ()** %function to i8* (i8*, i8*)**
  %1 = load i8* (i8*, i8*)*, i8* (i8*, i8*)** %0, align 8, !tbaa !71
  ret i8* (i8*, i8*)* %1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal fastcc i32 (i8*, i8*, %struct.ossl_param_st*)* @OSSL_FUNC_signature_sign_init(%struct.ossl_dispatch_st* nocapture noundef readonly %opf) unnamed_addr #5 {
entry:
  %function = getelementptr inbounds %struct.ossl_dispatch_st, %struct.ossl_dispatch_st* %opf, i64 0, i32 1
  %0 = bitcast void ()** %function to i32 (i8*, i8*, %struct.ossl_param_st*)**
  %1 = load i32 (i8*, i8*, %struct.ossl_param_st*)*, i32 (i8*, i8*, %struct.ossl_param_st*)** %0, align 8, !tbaa !71
  ret i32 (i8*, i8*, %struct.ossl_param_st*)* %1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal fastcc i32 (i8*, i8*, i64*, i64, i8*, i64)* @OSSL_FUNC_signature_sign(%struct.ossl_dispatch_st* nocapture noundef readonly %opf) unnamed_addr #5 {
entry:
  %function = getelementptr inbounds %struct.ossl_dispatch_st, %struct.ossl_dispatch_st* %opf, i64 0, i32 1
  %0 = bitcast void ()** %function to i32 (i8*, i8*, i64*, i64, i8*, i64)**
  %1 = load i32 (i8*, i8*, i64*, i64, i8*, i64)*, i32 (i8*, i8*, i64*, i64, i8*, i64)** %0, align 8, !tbaa !71
  ret i32 (i8*, i8*, i64*, i64, i8*, i64)* %1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal fastcc i32 (i8*, i8*, %struct.ossl_param_st*)* @OSSL_FUNC_signature_verify_init(%struct.ossl_dispatch_st* nocapture noundef readonly %opf) unnamed_addr #5 {
entry:
  %function = getelementptr inbounds %struct.ossl_dispatch_st, %struct.ossl_dispatch_st* %opf, i64 0, i32 1
  %0 = bitcast void ()** %function to i32 (i8*, i8*, %struct.ossl_param_st*)**
  %1 = load i32 (i8*, i8*, %struct.ossl_param_st*)*, i32 (i8*, i8*, %struct.ossl_param_st*)** %0, align 8, !tbaa !71
  ret i32 (i8*, i8*, %struct.ossl_param_st*)* %1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal fastcc i32 (i8*, i8*, i64, i8*, i64)* @OSSL_FUNC_signature_verify(%struct.ossl_dispatch_st* nocapture noundef readonly %opf) unnamed_addr #5 {
entry:
  %function = getelementptr inbounds %struct.ossl_dispatch_st, %struct.ossl_dispatch_st* %opf, i64 0, i32 1
  %0 = bitcast void ()** %function to i32 (i8*, i8*, i64, i8*, i64)**
  %1 = load i32 (i8*, i8*, i64, i8*, i64)*, i32 (i8*, i8*, i64, i8*, i64)** %0, align 8, !tbaa !71
  ret i32 (i8*, i8*, i64, i8*, i64)* %1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal fastcc i32 (i8*, i8*, %struct.ossl_param_st*)* @OSSL_FUNC_signature_verify_recover_init(%struct.ossl_dispatch_st* nocapture noundef readonly %opf) unnamed_addr #5 {
entry:
  %function = getelementptr inbounds %struct.ossl_dispatch_st, %struct.ossl_dispatch_st* %opf, i64 0, i32 1
  %0 = bitcast void ()** %function to i32 (i8*, i8*, %struct.ossl_param_st*)**
  %1 = load i32 (i8*, i8*, %struct.ossl_param_st*)*, i32 (i8*, i8*, %struct.ossl_param_st*)** %0, align 8, !tbaa !71
  ret i32 (i8*, i8*, %struct.ossl_param_st*)* %1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal fastcc i32 (i8*, i8*, i64*, i64, i8*, i64)* @OSSL_FUNC_signature_verify_recover(%struct.ossl_dispatch_st* nocapture noundef readonly %opf) unnamed_addr #5 {
entry:
  %function = getelementptr inbounds %struct.ossl_dispatch_st, %struct.ossl_dispatch_st* %opf, i64 0, i32 1
  %0 = bitcast void ()** %function to i32 (i8*, i8*, i64*, i64, i8*, i64)**
  %1 = load i32 (i8*, i8*, i64*, i64, i8*, i64)*, i32 (i8*, i8*, i64*, i64, i8*, i64)** %0, align 8, !tbaa !71
  ret i32 (i8*, i8*, i64*, i64, i8*, i64)* %1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal fastcc i32 (i8*, i8*, i8*, %struct.ossl_param_st*)* @OSSL_FUNC_signature_digest_sign_init(%struct.ossl_dispatch_st* nocapture noundef readonly %opf) unnamed_addr #5 {
entry:
  %function = getelementptr inbounds %struct.ossl_dispatch_st, %struct.ossl_dispatch_st* %opf, i64 0, i32 1
  %0 = bitcast void ()** %function to i32 (i8*, i8*, i8*, %struct.ossl_param_st*)**
  %1 = load i32 (i8*, i8*, i8*, %struct.ossl_param_st*)*, i32 (i8*, i8*, i8*, %struct.ossl_param_st*)** %0, align 8, !tbaa !71
  ret i32 (i8*, i8*, i8*, %struct.ossl_param_st*)* %1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal fastcc i32 (i8*, i8*, i64)* @OSSL_FUNC_signature_digest_sign_update(%struct.ossl_dispatch_st* nocapture noundef readonly %opf) unnamed_addr #5 {
entry:
  %function = getelementptr inbounds %struct.ossl_dispatch_st, %struct.ossl_dispatch_st* %opf, i64 0, i32 1
  %0 = bitcast void ()** %function to i32 (i8*, i8*, i64)**
  %1 = load i32 (i8*, i8*, i64)*, i32 (i8*, i8*, i64)** %0, align 8, !tbaa !71
  ret i32 (i8*, i8*, i64)* %1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal fastcc i32 (i8*, i8*, i64*, i64)* @OSSL_FUNC_signature_digest_sign_final(%struct.ossl_dispatch_st* nocapture noundef readonly %opf) unnamed_addr #5 {
entry:
  %function = getelementptr inbounds %struct.ossl_dispatch_st, %struct.ossl_dispatch_st* %opf, i64 0, i32 1
  %0 = bitcast void ()** %function to i32 (i8*, i8*, i64*, i64)**
  %1 = load i32 (i8*, i8*, i64*, i64)*, i32 (i8*, i8*, i64*, i64)** %0, align 8, !tbaa !71
  ret i32 (i8*, i8*, i64*, i64)* %1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal fastcc i32 (i8*, i8*, i64*, i64, i8*, i64)* @OSSL_FUNC_signature_digest_sign(%struct.ossl_dispatch_st* nocapture noundef readonly %opf) unnamed_addr #5 {
entry:
  %function = getelementptr inbounds %struct.ossl_dispatch_st, %struct.ossl_dispatch_st* %opf, i64 0, i32 1
  %0 = bitcast void ()** %function to i32 (i8*, i8*, i64*, i64, i8*, i64)**
  %1 = load i32 (i8*, i8*, i64*, i64, i8*, i64)*, i32 (i8*, i8*, i64*, i64, i8*, i64)** %0, align 8, !tbaa !71
  ret i32 (i8*, i8*, i64*, i64, i8*, i64)* %1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal fastcc i32 (i8*, i8*, i8*, %struct.ossl_param_st*)* @OSSL_FUNC_signature_digest_verify_init(%struct.ossl_dispatch_st* nocapture noundef readonly %opf) unnamed_addr #5 {
entry:
  %function = getelementptr inbounds %struct.ossl_dispatch_st, %struct.ossl_dispatch_st* %opf, i64 0, i32 1
  %0 = bitcast void ()** %function to i32 (i8*, i8*, i8*, %struct.ossl_param_st*)**
  %1 = load i32 (i8*, i8*, i8*, %struct.ossl_param_st*)*, i32 (i8*, i8*, i8*, %struct.ossl_param_st*)** %0, align 8, !tbaa !71
  ret i32 (i8*, i8*, i8*, %struct.ossl_param_st*)* %1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal fastcc i32 (i8*, i8*, i64)* @OSSL_FUNC_signature_digest_verify_update(%struct.ossl_dispatch_st* nocapture noundef readonly %opf) unnamed_addr #5 {
entry:
  %function = getelementptr inbounds %struct.ossl_dispatch_st, %struct.ossl_dispatch_st* %opf, i64 0, i32 1
  %0 = bitcast void ()** %function to i32 (i8*, i8*, i64)**
  %1 = load i32 (i8*, i8*, i64)*, i32 (i8*, i8*, i64)** %0, align 8, !tbaa !71
  ret i32 (i8*, i8*, i64)* %1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal fastcc i32 (i8*, i8*, i64)* @OSSL_FUNC_signature_digest_verify_final(%struct.ossl_dispatch_st* nocapture noundef readonly %opf) unnamed_addr #5 {
entry:
  %function = getelementptr inbounds %struct.ossl_dispatch_st, %struct.ossl_dispatch_st* %opf, i64 0, i32 1
  %0 = bitcast void ()** %function to i32 (i8*, i8*, i64)**
  %1 = load i32 (i8*, i8*, i64)*, i32 (i8*, i8*, i64)** %0, align 8, !tbaa !71
  ret i32 (i8*, i8*, i64)* %1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal fastcc i32 (i8*, i8*, i64, i8*, i64)* @OSSL_FUNC_signature_digest_verify(%struct.ossl_dispatch_st* nocapture noundef readonly %opf) unnamed_addr #5 {
entry:
  %function = getelementptr inbounds %struct.ossl_dispatch_st, %struct.ossl_dispatch_st* %opf, i64 0, i32 1
  %0 = bitcast void ()** %function to i32 (i8*, i8*, i64, i8*, i64)**
  %1 = load i32 (i8*, i8*, i64, i8*, i64)*, i32 (i8*, i8*, i64, i8*, i64)** %0, align 8, !tbaa !71
  ret i32 (i8*, i8*, i64, i8*, i64)* %1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal fastcc void (i8*)* @OSSL_FUNC_signature_freectx(%struct.ossl_dispatch_st* nocapture noundef readonly %opf) unnamed_addr #5 {
entry:
  %function = getelementptr inbounds %struct.ossl_dispatch_st, %struct.ossl_dispatch_st* %opf, i64 0, i32 1
  %0 = bitcast void ()** %function to void (i8*)**
  %1 = load void (i8*)*, void (i8*)** %0, align 8, !tbaa !71
  ret void (i8*)* %1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal fastcc i8* (i8*)* @OSSL_FUNC_signature_dupctx(%struct.ossl_dispatch_st* nocapture noundef readonly %opf) unnamed_addr #5 {
entry:
  %function = getelementptr inbounds %struct.ossl_dispatch_st, %struct.ossl_dispatch_st* %opf, i64 0, i32 1
  %0 = bitcast void ()** %function to i8* (i8*)**
  %1 = load i8* (i8*)*, i8* (i8*)** %0, align 8, !tbaa !71
  ret i8* (i8*)* %1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal fastcc i32 (i8*, %struct.ossl_param_st*)* @OSSL_FUNC_signature_get_ctx_params(%struct.ossl_dispatch_st* nocapture noundef readonly %opf) unnamed_addr #5 {
entry:
  %function = getelementptr inbounds %struct.ossl_dispatch_st, %struct.ossl_dispatch_st* %opf, i64 0, i32 1
  %0 = bitcast void ()** %function to i32 (i8*, %struct.ossl_param_st*)**
  %1 = load i32 (i8*, %struct.ossl_param_st*)*, i32 (i8*, %struct.ossl_param_st*)** %0, align 8, !tbaa !71
  ret i32 (i8*, %struct.ossl_param_st*)* %1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal fastcc %struct.ossl_param_st* (i8*, i8*)* @OSSL_FUNC_signature_gettable_ctx_params(%struct.ossl_dispatch_st* nocapture noundef readonly %opf) unnamed_addr #5 {
entry:
  %function = getelementptr inbounds %struct.ossl_dispatch_st, %struct.ossl_dispatch_st* %opf, i64 0, i32 1
  %0 = bitcast void ()** %function to %struct.ossl_param_st* (i8*, i8*)**
  %1 = load %struct.ossl_param_st* (i8*, i8*)*, %struct.ossl_param_st* (i8*, i8*)** %0, align 8, !tbaa !71
  ret %struct.ossl_param_st* (i8*, i8*)* %1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal fastcc i32 (i8*, %struct.ossl_param_st*)* @OSSL_FUNC_signature_set_ctx_params(%struct.ossl_dispatch_st* nocapture noundef readonly %opf) unnamed_addr #5 {
entry:
  %function = getelementptr inbounds %struct.ossl_dispatch_st, %struct.ossl_dispatch_st* %opf, i64 0, i32 1
  %0 = bitcast void ()** %function to i32 (i8*, %struct.ossl_param_st*)**
  %1 = load i32 (i8*, %struct.ossl_param_st*)*, i32 (i8*, %struct.ossl_param_st*)** %0, align 8, !tbaa !71
  ret i32 (i8*, %struct.ossl_param_st*)* %1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal fastcc %struct.ossl_param_st* (i8*, i8*)* @OSSL_FUNC_signature_settable_ctx_params(%struct.ossl_dispatch_st* nocapture noundef readonly %opf) unnamed_addr #5 {
entry:
  %function = getelementptr inbounds %struct.ossl_dispatch_st, %struct.ossl_dispatch_st* %opf, i64 0, i32 1
  %0 = bitcast void ()** %function to %struct.ossl_param_st* (i8*, i8*)**
  %1 = load %struct.ossl_param_st* (i8*, i8*)*, %struct.ossl_param_st* (i8*, i8*)** %0, align 8, !tbaa !71
  ret %struct.ossl_param_st* (i8*, i8*)* %1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal fastcc i32 (i8*, %struct.ossl_param_st*)* @OSSL_FUNC_signature_get_ctx_md_params(%struct.ossl_dispatch_st* nocapture noundef readonly %opf) unnamed_addr #5 {
entry:
  %function = getelementptr inbounds %struct.ossl_dispatch_st, %struct.ossl_dispatch_st* %opf, i64 0, i32 1
  %0 = bitcast void ()** %function to i32 (i8*, %struct.ossl_param_st*)**
  %1 = load i32 (i8*, %struct.ossl_param_st*)*, i32 (i8*, %struct.ossl_param_st*)** %0, align 8, !tbaa !71
  ret i32 (i8*, %struct.ossl_param_st*)* %1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal fastcc %struct.ossl_param_st* (i8*)* @OSSL_FUNC_signature_gettable_ctx_md_params(%struct.ossl_dispatch_st* nocapture noundef readonly %opf) unnamed_addr #5 {
entry:
  %function = getelementptr inbounds %struct.ossl_dispatch_st, %struct.ossl_dispatch_st* %opf, i64 0, i32 1
  %0 = bitcast void ()** %function to %struct.ossl_param_st* (i8*)**
  %1 = load %struct.ossl_param_st* (i8*)*, %struct.ossl_param_st* (i8*)** %0, align 8, !tbaa !71
  ret %struct.ossl_param_st* (i8*)* %1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal fastcc i32 (i8*, %struct.ossl_param_st*)* @OSSL_FUNC_signature_set_ctx_md_params(%struct.ossl_dispatch_st* nocapture noundef readonly %opf) unnamed_addr #5 {
entry:
  %function = getelementptr inbounds %struct.ossl_dispatch_st, %struct.ossl_dispatch_st* %opf, i64 0, i32 1
  %0 = bitcast void ()** %function to i32 (i8*, %struct.ossl_param_st*)**
  %1 = load i32 (i8*, %struct.ossl_param_st*)*, i32 (i8*, %struct.ossl_param_st*)** %0, align 8, !tbaa !71
  ret i32 (i8*, %struct.ossl_param_st*)* %1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal fastcc %struct.ossl_param_st* (i8*)* @OSSL_FUNC_signature_settable_ctx_md_params(%struct.ossl_dispatch_st* nocapture noundef readonly %opf) unnamed_addr #5 {
entry:
  %function = getelementptr inbounds %struct.ossl_dispatch_st, %struct.ossl_dispatch_st* %opf, i64 0, i32 1
  %0 = bitcast void ()** %function to %struct.ossl_param_st* (i8*)**
  %1 = load %struct.ossl_param_st* (i8*)*, %struct.ossl_param_st* (i8*)** %0, align 8, !tbaa !71
  ret %struct.ossl_param_st* (i8*)* %1
}

declare i8* @CRYPTO_zalloc(i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #3

declare i8* @CRYPTO_THREAD_lock_new() local_unnamed_addr #3

declare i32 @ossl_provider_up_ref(%struct.ossl_provider_st* noundef) local_unnamed_addr #3

declare void @evp_pkey_ctx_free_old_ops(%struct.evp_pkey_ctx_st* noundef) local_unnamed_addr #3

declare i32 @ERR_set_mark() local_unnamed_addr #3

declare i8* @evp_pkey_export_to_provider(%struct.evp_pkey_st* noundef, %struct.ossl_lib_ctx_st* noundef, %struct.evp_keymgmt_st** noundef, i8* noundef) local_unnamed_addr #3

declare i32 @EVP_KEYMGMT_up_ref(%struct.evp_keymgmt_st* noundef) local_unnamed_addr #3

declare i32 @ERR_clear_last_mark() local_unnamed_addr #3

declare void @EVP_KEYMGMT_free(%struct.evp_keymgmt_st* noundef) local_unnamed_addr #3

declare %struct.ossl_provider_st* @EVP_KEYMGMT_get0_provider(%struct.evp_keymgmt_st* noundef) local_unnamed_addr #3

declare i32 @ERR_pop_to_mark() local_unnamed_addr #3

declare i32 @evp_pkey_ctx_use_cached_data(%struct.evp_pkey_ctx_st* noundef) local_unnamed_addr #3

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { mustprogress nofree noinline norecurse nounwind uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline nounwind uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind }
attributes #7 = { nobuiltin "no-builtins" }
attributes #8 = { nobuiltin nounwind "no-builtins" }

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
!8 = !{!9, !10, i64 8}
!9 = !{!"evp_signature_st", !5, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !6, i64 32, !10, i64 40, !10, i64 48, !10, i64 56, !10, i64 64, !10, i64 72, !10, i64 80, !10, i64 88, !10, i64 96, !10, i64 104, !10, i64 112, !10, i64 120, !10, i64 128, !10, i64 136, !10, i64 144, !10, i64 152, !10, i64 160, !10, i64 168, !10, i64 176, !10, i64 184, !10, i64 192, !10, i64 200, !10, i64 208, !10, i64 216, !10, i64 224, !10, i64 232, !10, i64 240}
!10 = !{!"any pointer", !6, i64 0}
!11 = !{!9, !10, i64 24}
!12 = !{!9, !10, i64 40}
!13 = !{!14, !10, i64 16}
!14 = !{!"ossl_algorithm_st", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24}
!15 = !{!9, !5, i64 0}
!16 = !{!14, !10, i64 24}
!17 = !{!9, !10, i64 16}
!18 = !{!19, !5, i64 0}
!19 = !{!"ossl_dispatch_st", !5, i64 0, !10, i64 8}
!20 = !{!9, !10, i64 48}
!21 = !{!9, !10, i64 56}
!22 = !{!9, !10, i64 64}
!23 = !{!9, !10, i64 72}
!24 = !{!9, !10, i64 80}
!25 = !{!9, !10, i64 88}
!26 = !{!9, !10, i64 96}
!27 = !{!9, !10, i64 104}
!28 = !{!9, !10, i64 112}
!29 = !{!9, !10, i64 120}
!30 = !{!9, !10, i64 128}
!31 = !{!9, !10, i64 136}
!32 = !{!9, !10, i64 144}
!33 = !{!9, !10, i64 152}
!34 = !{!9, !10, i64 160}
!35 = !{!9, !10, i64 168}
!36 = !{!9, !10, i64 176}
!37 = !{!9, !10, i64 184}
!38 = !{!9, !10, i64 192}
!39 = !{!9, !10, i64 200}
!40 = !{!9, !10, i64 208}
!41 = !{!9, !10, i64 216}
!42 = !{!9, !10, i64 224}
!43 = !{!9, !10, i64 232}
!44 = !{!9, !10, i64 240}
!45 = distinct !{!45, !46}
!46 = !{!"llvm.loop.mustprogress"}
!47 = !{!10, !10, i64 0}
!48 = !{!49, !5, i64 0}
!49 = !{!"evp_pkey_ctx_st", !5, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !6, i64 40, !50, i64 56, !10, i64 88, !10, i64 96, !10, i64 104, !5, i64 112, !5, i64 116, !10, i64 120, !10, i64 128, !10, i64 136, !10, i64 144, !10, i64 152, !5, i64 160, !10, i64 168}
!50 = !{!"", !10, i64 0, !10, i64 8, !51, i64 16, !5, i64 24}
!51 = !{!"long", !6, i64 0}
!52 = !{!49, !10, i64 32}
!53 = !{!49, !10, i64 136}
!54 = !{!49, !10, i64 8}
!55 = !{!49, !10, i64 16}
!56 = !{!57, !10, i64 152}
!57 = !{!"evp_keymgmt_st", !5, i64 0, !5, i64 4, !10, i64 8, !10, i64 16, !10, i64 24, !6, i64 32, !10, i64 40, !10, i64 48, !10, i64 56, !10, i64 64, !10, i64 72, !10, i64 80, !10, i64 88, !10, i64 96, !10, i64 104, !10, i64 112, !10, i64 120, !10, i64 128, !10, i64 136, !10, i64 144, !10, i64 152, !10, i64 160, !10, i64 168, !10, i64 176, !10, i64 184, !10, i64 192, !10, i64 200, !10, i64 208, !10, i64 216}
!58 = !{!49, !10, i64 24}
!59 = !{!6, !6, i64 0}
!60 = !{!49, !10, i64 120}
!61 = !{!62, !10, i64 72}
!62 = !{!"evp_pkey_method_st", !5, i64 0, !5, i64 4, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !10, i64 40, !10, i64 48, !10, i64 56, !10, i64 64, !10, i64 72, !10, i64 80, !10, i64 88, !10, i64 96, !10, i64 104, !10, i64 112, !10, i64 120, !10, i64 128, !10, i64 136, !10, i64 144, !10, i64 152, !10, i64 160, !10, i64 168, !10, i64 176, !10, i64 184, !10, i64 192, !10, i64 200, !10, i64 208, !10, i64 216, !10, i64 224, !10, i64 232, !10, i64 240, !10, i64 248}
!63 = !{!62, !10, i64 88}
!64 = !{!62, !10, i64 104}
!65 = !{!62, !10, i64 64}
!66 = !{!62, !10, i64 80}
!67 = !{!62, !10, i64 96}
!68 = !{!62, !5, i64 4}
!69 = !{!51, !51, i64 0}
!70 = !{!9, !6, i64 32}
!71 = !{!19, !10, i64 8}
