; ModuleID = 'crypto/evp/exchange.c'
source_filename = "crypto/evp/exchange.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evp_keyexch_st = type { i32, i8*, i8*, %struct.ossl_provider_st*, i32, i8*, i8* (i8*)*, i32 (i8*, i8*, %struct.ossl_param_st*)*, i32 (i8*, i8*)*, i32 (i8*, i8*, i64*, i64)*, void (i8*)*, i8* (i8*)*, i32 (i8*, %struct.ossl_param_st*)*, %struct.ossl_param_st* (i8*, i8*)*, i32 (i8*, %struct.ossl_param_st*)*, %struct.ossl_param_st* (i8*, i8*)* }
%struct.ossl_provider_st = type opaque
%struct.ossl_param_st = type { i8*, i32, i8*, i64, i64 }
%struct.ossl_lib_ctx_st = type opaque
%struct.ossl_algorithm_st = type { i8*, i8*, %struct.ossl_dispatch_st*, i8* }
%struct.ossl_dispatch_st = type { i32, void ()* }
%struct.evp_pkey_ctx_st = type { i32, %struct.ossl_lib_ctx_st*, i8*, i8*, %struct.evp_keymgmt_st*, %union.anon, %struct.anon.4, i8*, {}*, i32*, i32, i32, %struct.evp_pkey_method_st*, %struct.engine_st*, %struct.evp_pkey_st*, %struct.evp_pkey_st*, i8*, i8, %struct.bignum_st* }
%struct.evp_keymgmt_st = type { i32, i32, i8*, i8*, %struct.ossl_provider_st*, i32, i8*, i8* (i8*)*, void (i8*)*, i32 (i8*, %struct.ossl_param_st*)*, %struct.ossl_param_st* (i8*)*, i32 (i8*, %struct.ossl_param_st*)*, %struct.ossl_param_st* (i8*)*, i8* (i8*, i32, %struct.ossl_param_st*)*, i32 (i8*, i8*)*, i32 (i8*, %struct.ossl_param_st*)*, %struct.ossl_param_st* (i8*, i8*)*, i8* (i8*, i32 (%struct.ossl_param_st*, i8*)*, i8*)*, void (i8*)*, i8* (i8*, i64)*, i8* (i32)*, i32 (i8*, i32)*, i32 (i8*, i32, i32)*, i32 (i8*, i8*, i32)*, i32 (i8*, i32, %struct.ossl_param_st*)*, %struct.ossl_param_st* (i32)*, i32 (i8*, i32, i32 (%struct.ossl_param_st*, i8*)*, i8*)*, %struct.ossl_param_st* (i32)*, i8* (i8*, i32)* }
%union.anon = type { %struct.anon.0 }
%struct.anon.0 = type { %struct.evp_keyexch_st*, i8* }
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

@.str = private unnamed_addr constant [22 x i8] c"crypto/evp/exchange.c\00", align 1
@__func__.EVP_PKEY_derive_init_ex = private unnamed_addr constant [24 x i8] c"EVP_PKEY_derive_init_ex\00", align 1
@__func__.EVP_PKEY_derive_set_peer_ex = private unnamed_addr constant [28 x i8] c"EVP_PKEY_derive_set_peer_ex\00", align 1
@__func__.EVP_PKEY_derive = private unnamed_addr constant [16 x i8] c"EVP_PKEY_derive\00", align 1
@__func__.evp_keyexch_from_algorithm = private unnamed_addr constant [27 x i8] c"evp_keyexch_from_algorithm\00", align 1
@__func__.evp_keyexch_new = private unnamed_addr constant [16 x i8] c"evp_keyexch_new\00", align 1

; Function Attrs: noinline nounwind uwtable
define void @EVP_KEYEXCH_free(%struct.evp_keyexch_st* noundef %exchange) #0 {
entry:
  %i = alloca i32, align 4
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #6
  %cmp = icmp eq %struct.evp_keyexch_st* %exchange, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %refcnt = getelementptr inbounds %struct.evp_keyexch_st, %struct.evp_keyexch_st* %exchange, i64 0, i32 4
  call fastcc void @CRYPTO_DOWN_REF(i32* noundef nonnull %refcnt, i32* noundef nonnull %i) #7
  %1 = load i32, i32* %i, align 4, !tbaa !4
  %cmp1 = icmp sgt i32 %1, 0
  br i1 %cmp1, label %cleanup, label %if.end3

if.end3:                                          ; preds = %if.end
  %lock = getelementptr inbounds %struct.evp_keyexch_st, %struct.evp_keyexch_st* %exchange, i64 0, i32 5
  %type_name = getelementptr inbounds %struct.evp_keyexch_st, %struct.evp_keyexch_st* %exchange, i64 0, i32 1
  %2 = load i8*, i8** %type_name, align 8, !tbaa !8
  tail call void @CRYPTO_free(i8* noundef %2, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 155) #8
  %prov = getelementptr inbounds %struct.evp_keyexch_st, %struct.evp_keyexch_st* %exchange, i64 0, i32 3
  %3 = load %struct.ossl_provider_st*, %struct.ossl_provider_st** %prov, align 8, !tbaa !11
  tail call void @ossl_provider_free(%struct.ossl_provider_st* noundef %3) #8
  %4 = load i8*, i8** %lock, align 8, !tbaa !12
  tail call void @CRYPTO_THREAD_lock_free(i8* noundef %4) #8
  %5 = bitcast %struct.evp_keyexch_st* %exchange to i8*
  tail call void @CRYPTO_free(i8* noundef nonnull %5, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 158) #8
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
define i32 @EVP_KEYEXCH_up_ref(%struct.evp_keyexch_st* nocapture noundef %exchange) #4 {
entry:
  %ref = alloca i32, align 4
  %0 = bitcast i32* %ref to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #6
  %refcnt = getelementptr inbounds %struct.evp_keyexch_st, %struct.evp_keyexch_st* %exchange, i64 0, i32 4
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
define %struct.ossl_provider_st* @EVP_KEYEXCH_get0_provider(%struct.evp_keyexch_st* nocapture noundef readonly %exchange) local_unnamed_addr #5 {
entry:
  %prov = getelementptr inbounds %struct.evp_keyexch_st, %struct.evp_keyexch_st* %exchange, i64 0, i32 3
  %0 = load %struct.ossl_provider_st*, %struct.ossl_provider_st** %prov, align 8, !tbaa !11
  ret %struct.ossl_provider_st* %0
}

; Function Attrs: noinline nounwind uwtable
define %struct.evp_keyexch_st* @EVP_KEYEXCH_fetch(%struct.ossl_lib_ctx_st* noundef %ctx, i8* noundef %algorithm, i8* noundef %properties) local_unnamed_addr #0 {
entry:
  %call = tail call i8* @evp_generic_fetch(%struct.ossl_lib_ctx_st* noundef %ctx, i32 noundef 11, i8* noundef %algorithm, i8* noundef %properties, i8* (i32, %struct.ossl_algorithm_st*, %struct.ossl_provider_st*)* noundef nonnull @evp_keyexch_from_algorithm, i32 (i8*)* noundef bitcast (i32 (%struct.evp_keyexch_st*)* @EVP_KEYEXCH_up_ref to i32 (i8*)*), void (i8*)* noundef bitcast (void (%struct.evp_keyexch_st*)* @EVP_KEYEXCH_free to void (i8*)*)) #8
  %0 = bitcast i8* %call to %struct.evp_keyexch_st*
  ret %struct.evp_keyexch_st* %0
}

declare i8* @evp_generic_fetch(%struct.ossl_lib_ctx_st* noundef, i32 noundef, i8* noundef, i8* noundef, i8* (i32, %struct.ossl_algorithm_st*, %struct.ossl_provider_st*)* noundef, i32 (i8*)* noundef, void (i8*)* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define internal i8* @evp_keyexch_from_algorithm(i32 noundef %name_id, %struct.ossl_algorithm_st* noundef %algodef, %struct.ossl_provider_st* noundef %prov) #0 {
entry:
  %implementation = getelementptr inbounds %struct.ossl_algorithm_st, %struct.ossl_algorithm_st* %algodef, i64 0, i32 2
  %0 = load %struct.ossl_dispatch_st*, %struct.ossl_dispatch_st** %implementation, align 8, !tbaa !13
  %call = tail call fastcc %struct.evp_keyexch_st* @evp_keyexch_new(%struct.ossl_provider_st* noundef %prov) #7
  %cmp = icmp eq %struct.evp_keyexch_st* %call, null
  br i1 %cmp, label %err.sink.split, label %if.end

if.end:                                           ; preds = %entry
  %name_id1 = getelementptr inbounds %struct.evp_keyexch_st, %struct.evp_keyexch_st* %call, i64 0, i32 0
  store i32 %name_id, i32* %name_id1, align 8, !tbaa !15
  %call2 = tail call i8* @ossl_algorithm_get1_first_name(%struct.ossl_algorithm_st* noundef nonnull %algodef) #8
  %type_name = getelementptr inbounds %struct.evp_keyexch_st, %struct.evp_keyexch_st* %call, i64 0, i32 1
  store i8* %call2, i8** %type_name, align 8, !tbaa !8
  %cmp3 = icmp eq i8* %call2, null
  br i1 %cmp3, label %err, label %if.end5

if.end5:                                          ; preds = %if.end
  %algorithm_description = getelementptr inbounds %struct.ossl_algorithm_st, %struct.ossl_algorithm_st* %algodef, i64 0, i32 3
  %1 = load i8*, i8** %algorithm_description, align 8, !tbaa !16
  %description = getelementptr inbounds %struct.evp_keyexch_st, %struct.evp_keyexch_st* %call, i64 0, i32 2
  store i8* %1, i8** %description, align 8, !tbaa !17
  %settable_ctx_params = getelementptr inbounds %struct.evp_keyexch_st, %struct.evp_keyexch_st* %call, i64 0, i32 13
  %set_ctx_params = getelementptr inbounds %struct.evp_keyexch_st, %struct.evp_keyexch_st* %call, i64 0, i32 12
  %gettable_ctx_params = getelementptr inbounds %struct.evp_keyexch_st, %struct.evp_keyexch_st* %call, i64 0, i32 15
  %get_ctx_params = getelementptr inbounds %struct.evp_keyexch_st, %struct.evp_keyexch_st* %call, i64 0, i32 14
  %dupctx = getelementptr inbounds %struct.evp_keyexch_st, %struct.evp_keyexch_st* %call, i64 0, i32 11
  %freectx = getelementptr inbounds %struct.evp_keyexch_st, %struct.evp_keyexch_st* %call, i64 0, i32 10
  %derive = getelementptr inbounds %struct.evp_keyexch_st, %struct.evp_keyexch_st* %call, i64 0, i32 9
  %set_peer = getelementptr inbounds %struct.evp_keyexch_st, %struct.evp_keyexch_st* %call, i64 0, i32 8
  %init = getelementptr inbounds %struct.evp_keyexch_st, %struct.evp_keyexch_st* %call, i64 0, i32 7
  %newctx = getelementptr inbounds %struct.evp_keyexch_st, %struct.evp_keyexch_st* %call, i64 0, i32 6
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end5
  %fns.0 = phi %struct.ossl_dispatch_st* [ %0, %if.end5 ], [ %incdec.ptr, %for.inc ]
  %fncnt.0 = phi i32 [ 0, %if.end5 ], [ %fncnt.1, %for.inc ]
  %sparamfncnt.0 = phi i32 [ 0, %if.end5 ], [ %sparamfncnt.1, %for.inc ]
  %gparamfncnt.0 = phi i32 [ 0, %if.end5 ], [ %gparamfncnt.1, %for.inc ]
  %function_id = getelementptr inbounds %struct.ossl_dispatch_st, %struct.ossl_dispatch_st* %fns.0, i64 0, i32 0
  %2 = load i32, i32* %function_id, align 8, !tbaa !18
  switch i32 %2, label %for.inc [
    i32 0, label %for.end
    i32 1, label %sw.bb
    i32 2, label %sw.bb13
    i32 4, label %sw.bb20
    i32 3, label %sw.bb26
    i32 5, label %sw.bb33
    i32 6, label %sw.bb40
    i32 9, label %sw.bb46
    i32 10, label %sw.bb53
    i32 7, label %sw.bb60
    i32 8, label %sw.bb67
  ]

sw.bb:                                            ; preds = %for.cond
  %3 = load i8* (i8*)*, i8* (i8*)** %newctx, align 8, !tbaa !20
  %cmp8.not = icmp eq i8* (i8*)* %3, null
  br i1 %cmp8.not, label %if.end10, label %for.inc

if.end10:                                         ; preds = %sw.bb
  %call11 = tail call fastcc i8* (i8*)* @OSSL_FUNC_keyexch_newctx(%struct.ossl_dispatch_st* noundef nonnull %fns.0) #7
  store i8* (i8*)* %call11, i8* (i8*)** %newctx, align 8, !tbaa !20
  %inc = add nsw i32 %fncnt.0, 1
  br label %for.inc

sw.bb13:                                          ; preds = %for.cond
  %4 = load i32 (i8*, i8*, %struct.ossl_param_st*)*, i32 (i8*, i8*, %struct.ossl_param_st*)** %init, align 8, !tbaa !21
  %cmp14.not = icmp eq i32 (i8*, i8*, %struct.ossl_param_st*)* %4, null
  br i1 %cmp14.not, label %if.end16, label %for.inc

if.end16:                                         ; preds = %sw.bb13
  %call17 = tail call fastcc i32 (i8*, i8*, %struct.ossl_param_st*)* @OSSL_FUNC_keyexch_init(%struct.ossl_dispatch_st* noundef nonnull %fns.0) #7
  store i32 (i8*, i8*, %struct.ossl_param_st*)* %call17, i32 (i8*, i8*, %struct.ossl_param_st*)** %init, align 8, !tbaa !21
  %inc19 = add nsw i32 %fncnt.0, 1
  br label %for.inc

sw.bb20:                                          ; preds = %for.cond
  %5 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %set_peer, align 8, !tbaa !22
  %cmp21.not = icmp eq i32 (i8*, i8*)* %5, null
  br i1 %cmp21.not, label %if.end23, label %for.inc

if.end23:                                         ; preds = %sw.bb20
  %call24 = tail call fastcc i32 (i8*, i8*)* @OSSL_FUNC_keyexch_set_peer(%struct.ossl_dispatch_st* noundef nonnull %fns.0) #7
  store i32 (i8*, i8*)* %call24, i32 (i8*, i8*)** %set_peer, align 8, !tbaa !22
  br label %for.inc

sw.bb26:                                          ; preds = %for.cond
  %6 = load i32 (i8*, i8*, i64*, i64)*, i32 (i8*, i8*, i64*, i64)** %derive, align 8, !tbaa !23
  %cmp27.not = icmp eq i32 (i8*, i8*, i64*, i64)* %6, null
  br i1 %cmp27.not, label %if.end29, label %for.inc

if.end29:                                         ; preds = %sw.bb26
  %call30 = tail call fastcc i32 (i8*, i8*, i64*, i64)* @OSSL_FUNC_keyexch_derive(%struct.ossl_dispatch_st* noundef nonnull %fns.0) #7
  store i32 (i8*, i8*, i64*, i64)* %call30, i32 (i8*, i8*, i64*, i64)** %derive, align 8, !tbaa !23
  %inc32 = add nsw i32 %fncnt.0, 1
  br label %for.inc

sw.bb33:                                          ; preds = %for.cond
  %7 = load void (i8*)*, void (i8*)** %freectx, align 8, !tbaa !24
  %cmp34.not = icmp eq void (i8*)* %7, null
  br i1 %cmp34.not, label %if.end36, label %for.inc

if.end36:                                         ; preds = %sw.bb33
  %call37 = tail call fastcc void (i8*)* @OSSL_FUNC_keyexch_freectx(%struct.ossl_dispatch_st* noundef nonnull %fns.0) #7
  store void (i8*)* %call37, void (i8*)** %freectx, align 8, !tbaa !24
  %inc39 = add nsw i32 %fncnt.0, 1
  br label %for.inc

sw.bb40:                                          ; preds = %for.cond
  %8 = load i8* (i8*)*, i8* (i8*)** %dupctx, align 8, !tbaa !25
  %cmp41.not = icmp eq i8* (i8*)* %8, null
  br i1 %cmp41.not, label %if.end43, label %for.inc

if.end43:                                         ; preds = %sw.bb40
  %call44 = tail call fastcc i8* (i8*)* @OSSL_FUNC_keyexch_dupctx(%struct.ossl_dispatch_st* noundef nonnull %fns.0) #7
  store i8* (i8*)* %call44, i8* (i8*)** %dupctx, align 8, !tbaa !25
  br label %for.inc

sw.bb46:                                          ; preds = %for.cond
  %9 = load i32 (i8*, %struct.ossl_param_st*)*, i32 (i8*, %struct.ossl_param_st*)** %get_ctx_params, align 8, !tbaa !26
  %cmp47.not = icmp eq i32 (i8*, %struct.ossl_param_st*)* %9, null
  br i1 %cmp47.not, label %if.end49, label %for.inc

if.end49:                                         ; preds = %sw.bb46
  %call50 = tail call fastcc i32 (i8*, %struct.ossl_param_st*)* @OSSL_FUNC_keyexch_get_ctx_params(%struct.ossl_dispatch_st* noundef nonnull %fns.0) #7
  store i32 (i8*, %struct.ossl_param_st*)* %call50, i32 (i8*, %struct.ossl_param_st*)** %get_ctx_params, align 8, !tbaa !26
  %inc52 = add nsw i32 %gparamfncnt.0, 1
  br label %for.inc

sw.bb53:                                          ; preds = %for.cond
  %10 = load %struct.ossl_param_st* (i8*, i8*)*, %struct.ossl_param_st* (i8*, i8*)** %gettable_ctx_params, align 8, !tbaa !27
  %cmp54.not = icmp eq %struct.ossl_param_st* (i8*, i8*)* %10, null
  br i1 %cmp54.not, label %if.end56, label %for.inc

if.end56:                                         ; preds = %sw.bb53
  %call57 = tail call fastcc %struct.ossl_param_st* (i8*, i8*)* @OSSL_FUNC_keyexch_gettable_ctx_params(%struct.ossl_dispatch_st* noundef nonnull %fns.0) #7
  store %struct.ossl_param_st* (i8*, i8*)* %call57, %struct.ossl_param_st* (i8*, i8*)** %gettable_ctx_params, align 8, !tbaa !27
  %inc59 = add nsw i32 %gparamfncnt.0, 1
  br label %for.inc

sw.bb60:                                          ; preds = %for.cond
  %11 = load i32 (i8*, %struct.ossl_param_st*)*, i32 (i8*, %struct.ossl_param_st*)** %set_ctx_params, align 8, !tbaa !28
  %cmp61.not = icmp eq i32 (i8*, %struct.ossl_param_st*)* %11, null
  br i1 %cmp61.not, label %if.end63, label %for.inc

if.end63:                                         ; preds = %sw.bb60
  %call64 = tail call fastcc i32 (i8*, %struct.ossl_param_st*)* @OSSL_FUNC_keyexch_set_ctx_params(%struct.ossl_dispatch_st* noundef nonnull %fns.0) #7
  store i32 (i8*, %struct.ossl_param_st*)* %call64, i32 (i8*, %struct.ossl_param_st*)** %set_ctx_params, align 8, !tbaa !28
  %inc66 = add nsw i32 %sparamfncnt.0, 1
  br label %for.inc

sw.bb67:                                          ; preds = %for.cond
  %12 = load %struct.ossl_param_st* (i8*, i8*)*, %struct.ossl_param_st* (i8*, i8*)** %settable_ctx_params, align 8, !tbaa !29
  %cmp68.not = icmp eq %struct.ossl_param_st* (i8*, i8*)* %12, null
  br i1 %cmp68.not, label %if.end70, label %for.inc

if.end70:                                         ; preds = %sw.bb67
  %call71 = tail call fastcc %struct.ossl_param_st* (i8*, i8*)* @OSSL_FUNC_keyexch_settable_ctx_params(%struct.ossl_dispatch_st* noundef nonnull %fns.0) #7
  store %struct.ossl_param_st* (i8*, i8*)* %call71, %struct.ossl_param_st* (i8*, i8*)** %settable_ctx_params, align 8, !tbaa !29
  %inc73 = add nsw i32 %sparamfncnt.0, 1
  br label %for.inc

for.inc:                                          ; preds = %for.cond, %if.end10, %if.end16, %if.end23, %if.end29, %if.end36, %if.end43, %if.end49, %if.end56, %if.end63, %if.end70, %sw.bb, %sw.bb13, %sw.bb20, %sw.bb26, %sw.bb33, %sw.bb40, %sw.bb46, %sw.bb53, %sw.bb60, %sw.bb67
  %fncnt.1 = phi i32 [ %fncnt.0, %sw.bb67 ], [ %fncnt.0, %if.end70 ], [ %fncnt.0, %sw.bb60 ], [ %fncnt.0, %if.end63 ], [ %fncnt.0, %sw.bb53 ], [ %fncnt.0, %if.end56 ], [ %fncnt.0, %sw.bb46 ], [ %fncnt.0, %if.end49 ], [ %fncnt.0, %sw.bb40 ], [ %fncnt.0, %if.end43 ], [ %fncnt.0, %sw.bb33 ], [ %inc39, %if.end36 ], [ %fncnt.0, %sw.bb26 ], [ %inc32, %if.end29 ], [ %fncnt.0, %sw.bb20 ], [ %fncnt.0, %if.end23 ], [ %fncnt.0, %sw.bb13 ], [ %inc19, %if.end16 ], [ %fncnt.0, %sw.bb ], [ %inc, %if.end10 ], [ %fncnt.0, %for.cond ]
  %sparamfncnt.1 = phi i32 [ %sparamfncnt.0, %sw.bb67 ], [ %inc73, %if.end70 ], [ %sparamfncnt.0, %sw.bb60 ], [ %inc66, %if.end63 ], [ %sparamfncnt.0, %sw.bb53 ], [ %sparamfncnt.0, %if.end56 ], [ %sparamfncnt.0, %sw.bb46 ], [ %sparamfncnt.0, %if.end49 ], [ %sparamfncnt.0, %sw.bb40 ], [ %sparamfncnt.0, %if.end43 ], [ %sparamfncnt.0, %sw.bb33 ], [ %sparamfncnt.0, %if.end36 ], [ %sparamfncnt.0, %sw.bb26 ], [ %sparamfncnt.0, %if.end29 ], [ %sparamfncnt.0, %sw.bb20 ], [ %sparamfncnt.0, %if.end23 ], [ %sparamfncnt.0, %sw.bb13 ], [ %sparamfncnt.0, %if.end16 ], [ %sparamfncnt.0, %sw.bb ], [ %sparamfncnt.0, %if.end10 ], [ %sparamfncnt.0, %for.cond ]
  %gparamfncnt.1 = phi i32 [ %gparamfncnt.0, %sw.bb67 ], [ %gparamfncnt.0, %if.end70 ], [ %gparamfncnt.0, %sw.bb60 ], [ %gparamfncnt.0, %if.end63 ], [ %gparamfncnt.0, %sw.bb53 ], [ %inc59, %if.end56 ], [ %gparamfncnt.0, %sw.bb46 ], [ %inc52, %if.end49 ], [ %gparamfncnt.0, %sw.bb40 ], [ %gparamfncnt.0, %if.end43 ], [ %gparamfncnt.0, %sw.bb33 ], [ %gparamfncnt.0, %if.end36 ], [ %gparamfncnt.0, %sw.bb26 ], [ %gparamfncnt.0, %if.end29 ], [ %gparamfncnt.0, %sw.bb20 ], [ %gparamfncnt.0, %if.end23 ], [ %gparamfncnt.0, %sw.bb13 ], [ %gparamfncnt.0, %if.end16 ], [ %gparamfncnt.0, %sw.bb ], [ %gparamfncnt.0, %if.end10 ], [ %gparamfncnt.0, %for.cond ]
  %incdec.ptr = getelementptr inbounds %struct.ossl_dispatch_st, %struct.ossl_dispatch_st* %fns.0, i64 1
  br label %for.cond, !llvm.loop !30

for.end:                                          ; preds = %for.cond
  %cmp74.not = icmp eq i32 %fncnt.0, 4
  %13 = and i32 %gparamfncnt.0, -3
  %.not = icmp eq i32 %13, 0
  %or.cond = select i1 %cmp74.not, i1 %.not, i1 false
  %14 = and i32 %sparamfncnt.0, -3
  %.not141 = icmp eq i32 %14, 0
  %or.cond142 = select i1 %or.cond, i1 %.not141, i1 false
  br i1 %or.cond142, label %if.end82, label %err.sink.split

if.end82:                                         ; preds = %for.end
  %15 = bitcast %struct.evp_keyexch_st* %call to i8*
  br label %cleanup

err.sink.split:                                   ; preds = %for.end, %entry
  %.sink143 = phi i32 [ 51, %entry ], [ 135, %for.end ]
  %.sink = phi i32 [ 786688, %entry ], [ 193, %for.end ]
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef %.sink143, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.evp_keyexch_from_algorithm, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 6, i32 noundef %.sink, i8* noundef null) #8
  br label %err

err:                                              ; preds = %err.sink.split, %if.end
  tail call void @EVP_KEYEXCH_free(%struct.evp_keyexch_st* noundef %call) #7
  br label %cleanup

cleanup:                                          ; preds = %err, %if.end82
  %retval.0 = phi i8* [ null, %err ], [ %15, %if.end82 ]
  ret i8* %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @EVP_PKEY_derive_init(%struct.evp_pkey_ctx_st* noundef %ctx) local_unnamed_addr #0 {
entry:
  %call = tail call i32 @EVP_PKEY_derive_init_ex(%struct.evp_pkey_ctx_st* noundef %ctx, %struct.ossl_param_st* noundef null) #7
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define i32 @EVP_PKEY_derive_init_ex(%struct.evp_pkey_ctx_st* noundef %ctx, %struct.ossl_param_st* noundef %params) local_unnamed_addr #0 {
entry:
  %tmp_keymgmt = alloca %struct.evp_keymgmt_st*, align 8
  %0 = bitcast %struct.evp_keymgmt_st** %tmp_keymgmt to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #6
  store %struct.evp_keymgmt_st* null, %struct.evp_keymgmt_st** %tmp_keymgmt, align 8, !tbaa !32
  %cmp = icmp eq %struct.evp_pkey_ctx_st* %ctx, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 197, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.EVP_PKEY_derive_init_ex, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 6, i32 noundef 786690, i8* noundef null) #8
  br label %cleanup92

if.end:                                           ; preds = %entry
  tail call void @evp_pkey_ctx_free_old_ops(%struct.evp_pkey_ctx_st* noundef nonnull %ctx) #8
  %operation = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %ctx, i64 0, i32 0
  store i32 2048, i32* %operation, align 8, !tbaa !33
  %call = tail call i32 @ERR_set_mark() #8
  %keymgmt = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %ctx, i64 0, i32 4
  %1 = load %struct.evp_keymgmt_st*, %struct.evp_keymgmt_st** %keymgmt, align 8, !tbaa !37
  %cmp1 = icmp eq %struct.evp_keymgmt_st* %1, null
  br i1 %cmp1, label %legacy, label %if.end3

if.end3:                                          ; preds = %if.end
  store %struct.evp_keymgmt_st* %1, %struct.evp_keymgmt_st** %tmp_keymgmt, align 8, !tbaa !32
  %pkey = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %ctx, i64 0, i32 14
  %2 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %pkey, align 8, !tbaa !38
  %cmp5 = icmp eq %struct.evp_pkey_st* %2, null
  br i1 %cmp5, label %if.then6, label %if.end22

if.then6:                                         ; preds = %if.end3
  %call8 = tail call %struct.evp_pkey_st* @EVP_PKEY_new() #8
  %cmp9 = icmp eq %struct.evp_pkey_st* %call8, null
  br i1 %cmp9, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then6
  %call10 = tail call i32 @EVP_PKEY_set_type_by_keymgmt(%struct.evp_pkey_st* noundef nonnull %call8, %struct.evp_keymgmt_st* noundef nonnull %1) #8
  %tobool.not = icmp eq i32 %call10, 0
  br i1 %tobool.not, label %cleanup, label %if.end13

if.end13:                                         ; preds = %lor.lhs.false
  %call14 = tail call i8* @evp_keymgmt_newdata(%struct.evp_keymgmt_st* noundef nonnull %1) #8
  %keydata = getelementptr inbounds %struct.evp_pkey_st, %struct.evp_pkey_st* %call8, i64 0, i32 14
  store i8* %call14, i8** %keydata, align 8, !tbaa !39
  %cmp15 = icmp eq i8* %call14, null
  br i1 %cmp15, label %if.end22.thread, label %if.end22.thread157

if.end22.thread:                                  ; preds = %if.end13
  tail call void @EVP_PKEY_free(%struct.evp_pkey_st* noundef nonnull %call8) #8
  br label %legacy

if.end22.thread157:                               ; preds = %if.end13
  store %struct.evp_pkey_st* %call8, %struct.evp_pkey_st** %pkey, align 8, !tbaa !38
  br label %if.end25

cleanup:                                          ; preds = %if.then6, %lor.lhs.false
  %call12 = tail call i32 @ERR_clear_last_mark() #8
  tail call void @EVP_PKEY_free(%struct.evp_pkey_st* noundef %call8) #8
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 224, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.EVP_PKEY_derive_init_ex, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 6, i32 noundef 134, i8* noundef null) #8
  br label %err

if.end22:                                         ; preds = %if.end3
  %libctx = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %ctx, i64 0, i32 1
  %3 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** %libctx, align 8, !tbaa !43
  %propquery = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %ctx, i64 0, i32 2
  %4 = load i8*, i8** %propquery, align 8, !tbaa !44
  %call21 = call i8* @evp_pkey_export_to_provider(%struct.evp_pkey_st* noundef nonnull %2, %struct.ossl_lib_ctx_st* noundef %3, %struct.evp_keymgmt_st** noundef nonnull %tmp_keymgmt, i8* noundef %4) #8
  %cmp23 = icmp eq i8* %call21, null
  br i1 %cmp23, label %legacy, label %if.end22.if.end25_crit_edge

if.end22.if.end25_crit_edge:                      ; preds = %if.end22
  %.pre = load %struct.evp_keymgmt_st*, %struct.evp_keymgmt_st** %tmp_keymgmt, align 8, !tbaa !32
  br label %if.end25

if.end25:                                         ; preds = %if.end22.if.end25_crit_edge, %if.end22.thread157
  %5 = phi %struct.evp_keymgmt_st* [ %1, %if.end22.thread157 ], [ %.pre, %if.end22.if.end25_crit_edge ]
  %provkey.1160 = phi i8* [ %call14, %if.end22.thread157 ], [ %call21, %if.end22.if.end25_crit_edge ]
  %call26 = call i32 @EVP_KEYMGMT_up_ref(%struct.evp_keymgmt_st* noundef %5) #8
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %if.then28, label %if.end30

if.then28:                                        ; preds = %if.end25
  %call29 = call i32 @ERR_clear_last_mark() #8
  call void @ERR_new() #8
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 240, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.EVP_PKEY_derive_init_ex, i64 0, i64 0)) #8
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 6, i32 noundef 134, i8* noundef null) #8
  br label %err

if.end30:                                         ; preds = %if.end25
  %6 = load %struct.evp_keymgmt_st*, %struct.evp_keymgmt_st** %keymgmt, align 8, !tbaa !37
  call void @EVP_KEYMGMT_free(%struct.evp_keymgmt_st* noundef %6) #8
  %7 = load %struct.evp_keymgmt_st*, %struct.evp_keymgmt_st** %tmp_keymgmt, align 8, !tbaa !32
  store %struct.evp_keymgmt_st* %7, %struct.evp_keymgmt_st** %keymgmt, align 8, !tbaa !37
  %query_operation_name = getelementptr inbounds %struct.evp_keymgmt_st, %struct.evp_keymgmt_st* %7, i64 0, i32 20
  %8 = load i8* (i32)*, i8* (i32)** %query_operation_name, align 8, !tbaa !45
  %cmp34.not = icmp eq i8* (i32)* %8, null
  br i1 %cmp34.not, label %if.then41, label %if.end39

if.end39:                                         ; preds = %if.end30
  %call38 = call i8* %8(i32 noundef 11) #8
  %cmp40 = icmp eq i8* %call38, null
  br i1 %cmp40, label %if.then41, label %if.end42

if.then41:                                        ; preds = %if.end30, %if.end39
  %keytype = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %ctx, i64 0, i32 3
  %9 = load i8*, i8** %keytype, align 8, !tbaa !47
  br label %if.end42

if.end42:                                         ; preds = %if.then41, %if.end39
  %supported_exch.1 = phi i8* [ %9, %if.then41 ], [ %call38, %if.end39 ]
  %libctx43 = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %ctx, i64 0, i32 1
  %10 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** %libctx43, align 8, !tbaa !43
  %propquery44 = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %ctx, i64 0, i32 2
  %11 = load i8*, i8** %propquery44, align 8, !tbaa !44
  %call45 = call %struct.evp_keyexch_st* @EVP_KEYEXCH_fetch(%struct.ossl_lib_ctx_st* noundef %10, i8* noundef %supported_exch.1, i8* noundef %11) #7
  %cmp46 = icmp eq %struct.evp_keyexch_st* %call45, null
  br i1 %cmp46, label %if.then52, label %lor.lhs.false47

lor.lhs.false47:                                  ; preds = %if.end42
  %12 = load %struct.evp_keymgmt_st*, %struct.evp_keymgmt_st** %keymgmt, align 8, !tbaa !37
  %call49 = call %struct.ossl_provider_st* @EVP_KEYMGMT_get0_provider(%struct.evp_keymgmt_st* noundef %12) #8
  %call50 = call %struct.ossl_provider_st* @EVP_KEYEXCH_get0_provider(%struct.evp_keyexch_st* noundef nonnull %call45) #7
  %cmp51.not = icmp eq %struct.ossl_provider_st* %call49, %call50
  br i1 %cmp51.not, label %if.end53, label %if.then52

if.then52:                                        ; preds = %lor.lhs.false47, %if.end42
  call void @EVP_KEYEXCH_free(%struct.evp_keyexch_st* noundef %call45) #7
  br label %legacy

if.end53:                                         ; preds = %lor.lhs.false47
  %call54 = call i32 @ERR_pop_to_mark() #8
  %exchange55 = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %ctx, i64 0, i32 5, i32 0, i32 0
  store %struct.evp_keyexch_st* %call45, %struct.evp_keyexch_st** %exchange55, align 8, !tbaa !48
  %newctx = getelementptr inbounds %struct.evp_keyexch_st, %struct.evp_keyexch_st* %call45, i64 0, i32 6
  %13 = load i8* (i8*)*, i8* (i8*)** %newctx, align 8, !tbaa !20
  %prov = getelementptr inbounds %struct.evp_keyexch_st, %struct.evp_keyexch_st* %call45, i64 0, i32 3
  %14 = load %struct.ossl_provider_st*, %struct.ossl_provider_st** %prov, align 8, !tbaa !11
  %call56 = call i8* @ossl_provider_ctx(%struct.ossl_provider_st* noundef %14) #8
  %call57 = call i8* %13(i8* noundef %call56) #8
  %algctx = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %ctx, i64 0, i32 5, i32 0, i32 1
  store i8* %call57, i8** %algctx, align 8, !tbaa !48
  %cmp63 = icmp eq i8* %call57, null
  br i1 %cmp63, label %if.then64, label %if.end65

if.then64:                                        ; preds = %if.end53
  call void @ERR_new() #8
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 285, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.EVP_PKEY_derive_init_ex, i64 0, i64 0)) #8
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 6, i32 noundef 134, i8* noundef null) #8
  br label %err

if.end65:                                         ; preds = %if.end53
  %init = getelementptr inbounds %struct.evp_keyexch_st, %struct.evp_keyexch_st* %call45, i64 0, i32 7
  %15 = load i32 (i8*, i8*, %struct.ossl_param_st*)*, i32 (i8*, i8*, %struct.ossl_param_st*)** %init, align 8, !tbaa !21
  %call69 = call i32 %15(i8* noundef nonnull %call57, i8* noundef nonnull %provkey.1160, %struct.ossl_param_st* noundef %params) #8
  %tobool70.not = icmp ne i32 %call69, 0
  %cond = zext i1 %tobool70.not to i32
  br label %cleanup92

err:                                              ; preds = %cleanup, %if.then64, %if.then28
  call void @evp_pkey_ctx_free_old_ops(%struct.evp_pkey_ctx_st* noundef nonnull %ctx) #8
  store i32 0, i32* %operation, align 8, !tbaa !33
  br label %cleanup92

legacy:                                           ; preds = %if.end22.thread, %if.end22, %if.end, %if.then52
  %call72 = call i32 @ERR_pop_to_mark() #8
  %pmeth = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %ctx, i64 0, i32 12
  %16 = load %struct.evp_pkey_method_st*, %struct.evp_pkey_method_st** %pmeth, align 8, !tbaa !49
  %cmp73 = icmp eq %struct.evp_pkey_method_st* %16, null
  br i1 %cmp73, label %if.then77, label %lor.lhs.false74

lor.lhs.false74:                                  ; preds = %legacy
  %derive = getelementptr inbounds %struct.evp_pkey_method_st, %struct.evp_pkey_method_st* %16, i64 0, i32 24
  %17 = load i32 (%struct.evp_pkey_ctx_st*, i8*, i64*)*, i32 (%struct.evp_pkey_ctx_st*, i8*, i64*)** %derive, align 8, !tbaa !50
  %cmp76 = icmp eq i32 (%struct.evp_pkey_ctx_st*, i8*, i64*)* %17, null
  br i1 %cmp76, label %if.then77, label %if.end78

if.then77:                                        ; preds = %lor.lhs.false74, %legacy
  call void @ERR_new() #8
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 307, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.EVP_PKEY_derive_init_ex, i64 0, i64 0)) #8
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 6, i32 noundef 150, i8* noundef null) #8
  br label %cleanup92

if.end78:                                         ; preds = %lor.lhs.false74
  %derive_init = getelementptr inbounds %struct.evp_pkey_method_st, %struct.evp_pkey_method_st* %16, i64 0, i32 23
  %derive_init80 = bitcast {}** %derive_init to i32 (%struct.evp_pkey_ctx_st*)**
  %18 = load i32 (%struct.evp_pkey_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*)** %derive_init80, align 8, !tbaa !52
  %cmp81 = icmp eq i32 (%struct.evp_pkey_ctx_st*)* %18, null
  br i1 %cmp81, label %cleanup92, label %if.end83

if.end83:                                         ; preds = %if.end78
  %call87 = call i32 %18(%struct.evp_pkey_ctx_st* noundef nonnull %ctx) #8
  %cmp88 = icmp slt i32 %call87, 1
  br i1 %cmp88, label %if.then89, label %cleanup92

if.then89:                                        ; preds = %if.end83
  store i32 0, i32* %operation, align 8, !tbaa !33
  br label %cleanup92

cleanup92:                                        ; preds = %if.end83, %if.then89, %if.end78, %if.then77, %err, %if.end65, %if.then
  %retval.0 = phi i32 [ -2, %if.then ], [ -2, %if.then77 ], [ 0, %err ], [ %cond, %if.end65 ], [ 1, %if.end78 ], [ %call87, %if.then89 ], [ %call87, %if.end83 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #6
  ret i32 %retval.0
}

declare void @ERR_new() local_unnamed_addr #3

declare void @ERR_set_debug(i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #3

declare void @ERR_set_error(i32 noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #3

declare void @evp_pkey_ctx_free_old_ops(%struct.evp_pkey_ctx_st* noundef) local_unnamed_addr #3

declare i32 @ERR_set_mark() local_unnamed_addr #3

declare %struct.evp_pkey_st* @EVP_PKEY_new() local_unnamed_addr #3

declare i32 @EVP_PKEY_set_type_by_keymgmt(%struct.evp_pkey_st* noundef, %struct.evp_keymgmt_st* noundef) local_unnamed_addr #3

declare i32 @ERR_clear_last_mark() local_unnamed_addr #3

declare void @EVP_PKEY_free(%struct.evp_pkey_st* noundef) local_unnamed_addr #3

declare i8* @evp_keymgmt_newdata(%struct.evp_keymgmt_st* noundef) local_unnamed_addr #3

declare i8* @evp_pkey_export_to_provider(%struct.evp_pkey_st* noundef, %struct.ossl_lib_ctx_st* noundef, %struct.evp_keymgmt_st** noundef, i8* noundef) local_unnamed_addr #3

declare i32 @EVP_KEYMGMT_up_ref(%struct.evp_keymgmt_st* noundef) local_unnamed_addr #3

declare void @EVP_KEYMGMT_free(%struct.evp_keymgmt_st* noundef) local_unnamed_addr #3

declare %struct.ossl_provider_st* @EVP_KEYMGMT_get0_provider(%struct.evp_keymgmt_st* noundef) local_unnamed_addr #3

declare i32 @ERR_pop_to_mark() local_unnamed_addr #3

declare i8* @ossl_provider_ctx(%struct.ossl_provider_st* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define i32 @EVP_PKEY_derive_set_peer_ex(%struct.evp_pkey_ctx_st* noundef %ctx, %struct.evp_pkey_st* noundef %peer, i32 noundef %validate_peer) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.evp_pkey_ctx_st* %ctx, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 328, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.EVP_PKEY_derive_set_peer_ex, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 6, i32 noundef 786690, i8* noundef null) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %operation = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %ctx, i64 0, i32 0
  %0 = load i32, i32* %operation, align 8, !tbaa !33
  %cmp1 = icmp eq i32 %0, 2048
  br i1 %cmp1, label %lor.lhs.false, label %legacy

lor.lhs.false:                                    ; preds = %if.end
  %algctx = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %ctx, i64 0, i32 5, i32 0, i32 1
  %1 = load i8*, i8** %algctx, align 8, !tbaa !48
  %cmp2 = icmp eq i8* %1, null
  br i1 %cmp2, label %legacy, label %if.end4

if.end4:                                          ; preds = %lor.lhs.false
  %exchange = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %ctx, i64 0, i32 5, i32 0, i32 0
  %2 = load %struct.evp_keyexch_st*, %struct.evp_keyexch_st** %exchange, align 8, !tbaa !48
  %set_peer = getelementptr inbounds %struct.evp_keyexch_st, %struct.evp_keyexch_st* %2, i64 0, i32 8
  %3 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %set_peer, align 8, !tbaa !22
  %cmp7 = icmp eq i32 (i8*, i8*)* %3, null
  br i1 %cmp7, label %if.then8, label %if.end9

if.then8:                                         ; preds = %if.end4
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 336, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.EVP_PKEY_derive_set_peer_ex, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 6, i32 noundef 150, i8* noundef null) #8
  br label %cleanup

if.end9:                                          ; preds = %if.end4
  %tobool.not = icmp eq i32 %validate_peer, 0
  br i1 %tobool.not, label %if.end18, label %if.then10

if.then10:                                        ; preds = %if.end9
  %libctx = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %ctx, i64 0, i32 1
  %4 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** %libctx, align 8, !tbaa !43
  %propquery = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %ctx, i64 0, i32 2
  %5 = load i8*, i8** %propquery, align 8, !tbaa !44
  %call = tail call %struct.evp_pkey_ctx_st* @EVP_PKEY_CTX_new_from_pkey(%struct.ossl_lib_ctx_st* noundef %4, %struct.evp_pkey_st* noundef %peer, i8* noundef %5) #8
  %cmp11 = icmp eq %struct.evp_pkey_ctx_st* %call, null
  br i1 %cmp11, label %cleanup, label %if.end13

if.end13:                                         ; preds = %if.then10
  %call14 = tail call i32 @EVP_PKEY_public_check(%struct.evp_pkey_ctx_st* noundef nonnull %call) #8
  tail call void @EVP_PKEY_CTX_free(%struct.evp_pkey_ctx_st* noundef nonnull %call) #8
  %cmp15 = icmp slt i32 %call14, 1
  br i1 %cmp15, label %cleanup, label %if.end18

if.end18:                                         ; preds = %if.end13, %if.end9
  %libctx19 = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %ctx, i64 0, i32 1
  %6 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** %libctx19, align 8, !tbaa !43
  %keymgmt = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %ctx, i64 0, i32 4
  %propquery20 = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %ctx, i64 0, i32 2
  %7 = load i8*, i8** %propquery20, align 8, !tbaa !44
  %call21 = tail call i8* @evp_pkey_export_to_provider(%struct.evp_pkey_st* noundef %peer, %struct.ossl_lib_ctx_st* noundef %6, %struct.evp_keymgmt_st** noundef nonnull %keymgmt, i8* noundef %7) #8
  %cmp22 = icmp eq i8* %call21, null
  br i1 %cmp22, label %legacy, label %if.end24

if.end24:                                         ; preds = %if.end18
  %8 = load %struct.evp_keyexch_st*, %struct.evp_keyexch_st** %exchange, align 8, !tbaa !48
  %set_peer28 = getelementptr inbounds %struct.evp_keyexch_st, %struct.evp_keyexch_st* %8, i64 0, i32 8
  %9 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %set_peer28, align 8, !tbaa !22
  %10 = load i8*, i8** %algctx, align 8, !tbaa !48
  %call32 = tail call i32 %9(i8* noundef %10, i8* noundef nonnull %call21) #8
  br label %cleanup

legacy:                                           ; preds = %if.end18, %if.end, %lor.lhs.false
  %pmeth = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %ctx, i64 0, i32 12
  %11 = load %struct.evp_pkey_method_st*, %struct.evp_pkey_method_st** %pmeth, align 8, !tbaa !49
  %cmp33 = icmp eq %struct.evp_pkey_method_st* %11, null
  br i1 %cmp33, label %if.then46, label %lor.lhs.false34

lor.lhs.false34:                                  ; preds = %legacy
  %derive = getelementptr inbounds %struct.evp_pkey_method_st, %struct.evp_pkey_method_st* %11, i64 0, i32 24
  %12 = load i32 (%struct.evp_pkey_ctx_st*, i8*, i64*)*, i32 (%struct.evp_pkey_ctx_st*, i8*, i64*)** %derive, align 8, !tbaa !50
  %cmp36.not = icmp eq i32 (%struct.evp_pkey_ctx_st*, i8*, i64*)* %12, null
  br i1 %cmp36.not, label %lor.lhs.false37, label %lor.lhs.false43

lor.lhs.false37:                                  ; preds = %lor.lhs.false34
  %encrypt = getelementptr inbounds %struct.evp_pkey_method_st, %struct.evp_pkey_method_st* %11, i64 0, i32 20
  %13 = load i32 (%struct.evp_pkey_ctx_st*, i8*, i64*, i8*, i64)*, i32 (%struct.evp_pkey_ctx_st*, i8*, i64*, i8*, i64)** %encrypt, align 8, !tbaa !53
  %cmp39.not = icmp eq i32 (%struct.evp_pkey_ctx_st*, i8*, i64*, i8*, i64)* %13, null
  br i1 %cmp39.not, label %lor.lhs.false40, label %lor.lhs.false43

lor.lhs.false40:                                  ; preds = %lor.lhs.false37
  %decrypt = getelementptr inbounds %struct.evp_pkey_method_st, %struct.evp_pkey_method_st* %11, i64 0, i32 22
  %14 = load i32 (%struct.evp_pkey_ctx_st*, i8*, i64*, i8*, i64)*, i32 (%struct.evp_pkey_ctx_st*, i8*, i64*, i8*, i64)** %decrypt, align 8, !tbaa !54
  %cmp42.not = icmp eq i32 (%struct.evp_pkey_ctx_st*, i8*, i64*, i8*, i64)* %14, null
  br i1 %cmp42.not, label %if.then46, label %lor.lhs.false43

lor.lhs.false43:                                  ; preds = %lor.lhs.false40, %lor.lhs.false37, %lor.lhs.false34
  %ctrl = getelementptr inbounds %struct.evp_pkey_method_st, %struct.evp_pkey_method_st* %11, i64 0, i32 25
  %15 = load i32 (%struct.evp_pkey_ctx_st*, i32, i32, i8*)*, i32 (%struct.evp_pkey_ctx_st*, i32, i32, i8*)** %ctrl, align 8, !tbaa !55
  %cmp45 = icmp eq i32 (%struct.evp_pkey_ctx_st*, i32, i32, i8*)* %15, null
  br i1 %cmp45, label %if.then46, label %if.end47

if.then46:                                        ; preds = %lor.lhs.false43, %lor.lhs.false40, %legacy
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 369, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.EVP_PKEY_derive_set_peer_ex, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 6, i32 noundef 150, i8* noundef null) #8
  br label %cleanup

if.end47:                                         ; preds = %lor.lhs.false43
  %16 = load i32, i32* %operation, align 8, !tbaa !33
  switch i32 %16, label %if.then55 [
    i32 2048, label %if.end56
    i32 512, label %if.end56
    i32 1024, label %if.end56
  ]

if.then55:                                        ; preds = %if.end47
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 375, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.EVP_PKEY_derive_set_peer_ex, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 6, i32 noundef 151, i8* noundef null) #8
  br label %cleanup

if.end56:                                         ; preds = %if.end47, %if.end47, %if.end47
  %17 = bitcast %struct.evp_pkey_st* %peer to i8*
  %call59 = tail call i32 %15(%struct.evp_pkey_ctx_st* noundef nonnull %ctx, i32 noundef 2, i32 noundef 0, i8* noundef %17) #8
  %cmp60 = icmp slt i32 %call59, 1
  br i1 %cmp60, label %cleanup, label %if.end62

if.end62:                                         ; preds = %if.end56
  %cmp63 = icmp eq i32 %call59, 2
  br i1 %cmp63, label %cleanup, label %if.end65

if.end65:                                         ; preds = %if.end62
  %pkey = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %ctx, i64 0, i32 14
  %18 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %pkey, align 8, !tbaa !38
  %cmp66 = icmp eq %struct.evp_pkey_st* %18, null
  br i1 %cmp66, label %if.then67, label %if.end68

if.then67:                                        ; preds = %if.end65
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 388, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.EVP_PKEY_derive_set_peer_ex, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 6, i32 noundef 154, i8* noundef null) #8
  br label %cleanup

if.end68:                                         ; preds = %if.end65
  %type = getelementptr inbounds %struct.evp_pkey_st, %struct.evp_pkey_st* %18, i64 0, i32 0
  %19 = load i32, i32* %type, align 8, !tbaa !56
  %type70 = getelementptr inbounds %struct.evp_pkey_st, %struct.evp_pkey_st* %peer, i64 0, i32 0
  %20 = load i32, i32* %type70, align 8, !tbaa !56
  %cmp71.not = icmp eq i32 %19, %20
  br i1 %cmp71.not, label %if.end73, label %if.then72

if.then72:                                        ; preds = %if.end68
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 393, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.EVP_PKEY_derive_set_peer_ex, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 6, i32 noundef 101, i8* noundef null) #8
  br label %cleanup

if.end73:                                         ; preds = %if.end68
  %call74 = tail call i32 @EVP_PKEY_missing_parameters(%struct.evp_pkey_st* noundef nonnull %peer) #8
  %tobool75.not = icmp eq i32 %call74, 0
  br i1 %tobool75.not, label %land.lhs.true76, label %if.end81

land.lhs.true76:                                  ; preds = %if.end73
  %21 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %pkey, align 8, !tbaa !38
  %call78 = tail call i32 @EVP_PKEY_parameters_eq(%struct.evp_pkey_st* noundef %21, %struct.evp_pkey_st* noundef nonnull %peer) #8
  %tobool79.not = icmp eq i32 %call78, 0
  br i1 %tobool79.not, label %if.then80, label %if.end81

if.then80:                                        ; preds = %land.lhs.true76
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 406, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.EVP_PKEY_derive_set_peer_ex, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 6, i32 noundef 153, i8* noundef null) #8
  br label %cleanup

if.end81:                                         ; preds = %land.lhs.true76, %if.end73
  %peerkey = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %ctx, i64 0, i32 15
  %22 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %peerkey, align 8, !tbaa !57
  tail call void @EVP_PKEY_free(%struct.evp_pkey_st* noundef %22) #8
  store %struct.evp_pkey_st* %peer, %struct.evp_pkey_st** %peerkey, align 8, !tbaa !57
  %23 = load %struct.evp_pkey_method_st*, %struct.evp_pkey_method_st** %pmeth, align 8, !tbaa !49
  %ctrl84 = getelementptr inbounds %struct.evp_pkey_method_st, %struct.evp_pkey_method_st* %23, i64 0, i32 25
  %24 = load i32 (%struct.evp_pkey_ctx_st*, i32, i32, i8*)*, i32 (%struct.evp_pkey_ctx_st*, i32, i32, i8*)** %ctrl84, align 8, !tbaa !55
  %call85 = tail call i32 %24(%struct.evp_pkey_ctx_st* noundef nonnull %ctx, i32 noundef 2, i32 noundef 1, i8* noundef nonnull %17) #8
  %cmp86 = icmp slt i32 %call85, 1
  br i1 %cmp86, label %if.then87, label %if.end89

if.then87:                                        ; preds = %if.end81
  store %struct.evp_pkey_st* null, %struct.evp_pkey_st** %peerkey, align 8, !tbaa !57
  br label %cleanup

if.end89:                                         ; preds = %if.end81
  %call90 = tail call i32 @EVP_PKEY_up_ref(%struct.evp_pkey_st* noundef nonnull %peer) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end62, %if.end56, %if.end13, %if.then10, %if.end89, %if.then87, %if.then80, %if.then72, %if.then67, %if.then55, %if.then46, %if.end24, %if.then8, %if.then
  %retval.0 = phi i32 [ -1, %if.then ], [ -2, %if.then46 ], [ -1, %if.then55 ], [ -1, %if.then67 ], [ -1, %if.then72 ], [ %call85, %if.then87 ], [ 1, %if.end89 ], [ -1, %if.then80 ], [ -2, %if.then8 ], [ %call32, %if.end24 ], [ -1, %if.then10 ], [ -1, %if.end13 ], [ %call59, %if.end56 ], [ 1, %if.end62 ]
  ret i32 %retval.0
}

declare %struct.evp_pkey_ctx_st* @EVP_PKEY_CTX_new_from_pkey(%struct.ossl_lib_ctx_st* noundef, %struct.evp_pkey_st* noundef, i8* noundef) local_unnamed_addr #3

declare i32 @EVP_PKEY_public_check(%struct.evp_pkey_ctx_st* noundef) local_unnamed_addr #3

declare void @EVP_PKEY_CTX_free(%struct.evp_pkey_ctx_st* noundef) local_unnamed_addr #3

declare i32 @EVP_PKEY_missing_parameters(%struct.evp_pkey_st* noundef) local_unnamed_addr #3

declare i32 @EVP_PKEY_parameters_eq(%struct.evp_pkey_st* noundef, %struct.evp_pkey_st* noundef) local_unnamed_addr #3

declare i32 @EVP_PKEY_up_ref(%struct.evp_pkey_st* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define i32 @EVP_PKEY_derive_set_peer(%struct.evp_pkey_ctx_st* noundef %ctx, %struct.evp_pkey_st* noundef %peer) local_unnamed_addr #0 {
entry:
  %call = tail call i32 @EVP_PKEY_derive_set_peer_ex(%struct.evp_pkey_ctx_st* noundef %ctx, %struct.evp_pkey_st* noundef %peer, i32 noundef 1) #7
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define i32 @EVP_PKEY_derive(%struct.evp_pkey_ctx_st* noundef %ctx, i8* noundef %key, i64* noundef %pkeylen) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.evp_pkey_ctx_st* %ctx, null
  %cmp1 = icmp eq i64* %pkeylen, null
  %or.cond = or i1 %cmp, %cmp1
  br i1 %or.cond, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 435, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.EVP_PKEY_derive, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 6, i32 noundef 786690, i8* noundef null) #8
  br label %cleanup40

if.end:                                           ; preds = %entry
  %operation = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %ctx, i64 0, i32 0
  %0 = load i32, i32* %operation, align 8, !tbaa !33
  %cmp2 = icmp eq i32 %0, 2048
  br i1 %cmp2, label %if.end4, label %if.then3

if.then3:                                         ; preds = %if.end
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 440, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.EVP_PKEY_derive, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 6, i32 noundef 151, i8* noundef null) #8
  br label %cleanup40

if.end4:                                          ; preds = %if.end
  %algctx = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %ctx, i64 0, i32 5, i32 0, i32 1
  %1 = load i8*, i8** %algctx, align 8, !tbaa !48
  %cmp5 = icmp eq i8* %1, null
  br i1 %cmp5, label %legacy, label %if.end7

if.end7:                                          ; preds = %if.end4
  %exchange = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %ctx, i64 0, i32 5, i32 0, i32 0
  %2 = load %struct.evp_keyexch_st*, %struct.evp_keyexch_st** %exchange, align 8, !tbaa !48
  %derive = getelementptr inbounds %struct.evp_keyexch_st, %struct.evp_keyexch_st* %2, i64 0, i32 9
  %3 = load i32 (i8*, i8*, i64*, i64)*, i32 (i8*, i8*, i64*, i64)** %derive, align 8, !tbaa !23
  %cmp13.not = icmp eq i8* %key, null
  br i1 %cmp13.not, label %cond.end, label %cond.true

cond.true:                                        ; preds = %if.end7
  %4 = load i64, i64* %pkeylen, align 8, !tbaa !58
  br label %cond.end

cond.end:                                         ; preds = %if.end7, %cond.true
  %cond = phi i64 [ %4, %cond.true ], [ 0, %if.end7 ]
  %call = tail call i32 %3(i8* noundef nonnull %1, i8* noundef %key, i64* noundef nonnull %pkeylen, i64 noundef %cond) #8
  br label %cleanup40

legacy:                                           ; preds = %if.end4
  %pmeth = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %ctx, i64 0, i32 12
  %5 = load %struct.evp_pkey_method_st*, %struct.evp_pkey_method_st** %pmeth, align 8, !tbaa !49
  %cmp14 = icmp eq %struct.evp_pkey_method_st* %5, null
  br i1 %cmp14, label %if.then19, label %lor.lhs.false15

lor.lhs.false15:                                  ; preds = %legacy
  %derive17 = getelementptr inbounds %struct.evp_pkey_method_st, %struct.evp_pkey_method_st* %5, i64 0, i32 24
  %6 = load i32 (%struct.evp_pkey_ctx_st*, i8*, i64*)*, i32 (%struct.evp_pkey_ctx_st*, i8*, i64*)** %derive17, align 8, !tbaa !50
  %cmp18 = icmp eq i32 (%struct.evp_pkey_ctx_st*, i8*, i64*)* %6, null
  br i1 %cmp18, label %if.then19, label %if.end20

if.then19:                                        ; preds = %lor.lhs.false15, %legacy
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 453, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.EVP_PKEY_derive, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 6, i32 noundef 150, i8* noundef null) #8
  br label %cleanup40

if.end20:                                         ; preds = %lor.lhs.false15
  %flags = getelementptr inbounds %struct.evp_pkey_method_st, %struct.evp_pkey_method_st* %5, i64 0, i32 1
  %7 = load i32, i32* %flags, align 4, !tbaa !59
  %and = and i32 %7, 2
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end36, label %if.then22

if.then22:                                        ; preds = %if.end20
  %pkey = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %ctx, i64 0, i32 14
  %8 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %pkey, align 8, !tbaa !38
  %call23 = tail call i32 @EVP_PKEY_get_size(%struct.evp_pkey_st* noundef %8) #8
  %conv = sext i32 %call23 to i64
  %cmp24 = icmp eq i32 %call23, 0
  br i1 %cmp24, label %if.then26, label %if.end27

if.then26:                                        ; preds = %if.then22
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 457, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.EVP_PKEY_derive, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 6, i32 noundef 163, i8* noundef null) #8
  br label %cleanup40

if.end27:                                         ; preds = %if.then22
  %cmp28 = icmp eq i8* %key, null
  br i1 %cmp28, label %if.then30, label %if.end31

if.then30:                                        ; preds = %if.end27
  store i64 %conv, i64* %pkeylen, align 8, !tbaa !58
  br label %cleanup40

if.end31:                                         ; preds = %if.end27
  %9 = load i64, i64* %pkeylen, align 8, !tbaa !58
  %cmp32 = icmp ult i64 %9, %conv
  br i1 %cmp32, label %if.then34, label %if.end31.if.end36_crit_edge

if.end31.if.end36_crit_edge:                      ; preds = %if.end31
  %.pre = load %struct.evp_pkey_method_st*, %struct.evp_pkey_method_st** %pmeth, align 8, !tbaa !49
  %derive38.phi.trans.insert = getelementptr inbounds %struct.evp_pkey_method_st, %struct.evp_pkey_method_st* %.pre, i64 0, i32 24
  %.pre67 = load i32 (%struct.evp_pkey_ctx_st*, i8*, i64*)*, i32 (%struct.evp_pkey_ctx_st*, i8*, i64*)** %derive38.phi.trans.insert, align 8, !tbaa !50
  br label %if.end36

if.then34:                                        ; preds = %if.end31
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 457, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.EVP_PKEY_derive, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 6, i32 noundef 155, i8* noundef null) #8
  br label %cleanup40

if.end36:                                         ; preds = %if.end31.if.end36_crit_edge, %if.end20
  %10 = phi i32 (%struct.evp_pkey_ctx_st*, i8*, i64*)* [ %.pre67, %if.end31.if.end36_crit_edge ], [ %6, %if.end20 ]
  %call39 = tail call i32 %10(%struct.evp_pkey_ctx_st* noundef nonnull %ctx, i8* noundef %key, i64* noundef nonnull %pkeylen) #8
  br label %cleanup40

cleanup40:                                        ; preds = %if.then26, %if.then30, %if.then34, %if.end36, %if.then19, %cond.end, %if.then3, %if.then
  %retval.1 = phi i32 [ -1, %if.then ], [ -2, %if.then19 ], [ %call39, %if.end36 ], [ %call, %cond.end ], [ -1, %if.then3 ], [ 0, %if.then26 ], [ 1, %if.then30 ], [ 0, %if.then34 ]
  ret i32 %retval.1
}

declare i32 @EVP_PKEY_get_size(%struct.evp_pkey_st* noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define i32 @evp_keyexch_get_number(%struct.evp_keyexch_st* nocapture noundef readonly %keyexch) local_unnamed_addr #5 {
entry:
  %name_id = getelementptr inbounds %struct.evp_keyexch_st, %struct.evp_keyexch_st* %keyexch, i64 0, i32 0
  %0 = load i32, i32* %name_id, align 8, !tbaa !15
  ret i32 %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define i8* @EVP_KEYEXCH_get0_name(%struct.evp_keyexch_st* nocapture noundef readonly %keyexch) local_unnamed_addr #5 {
entry:
  %type_name = getelementptr inbounds %struct.evp_keyexch_st, %struct.evp_keyexch_st* %keyexch, i64 0, i32 1
  %0 = load i8*, i8** %type_name, align 8, !tbaa !8
  ret i8* %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define i8* @EVP_KEYEXCH_get0_description(%struct.evp_keyexch_st* nocapture noundef readonly %keyexch) local_unnamed_addr #5 {
entry:
  %description = getelementptr inbounds %struct.evp_keyexch_st, %struct.evp_keyexch_st* %keyexch, i64 0, i32 2
  %0 = load i8*, i8** %description, align 8, !tbaa !17
  ret i8* %0
}

; Function Attrs: noinline nounwind uwtable
define i32 @EVP_KEYEXCH_is_a(%struct.evp_keyexch_st* nocapture noundef readonly %keyexch, i8* noundef %name) local_unnamed_addr #0 {
entry:
  %prov = getelementptr inbounds %struct.evp_keyexch_st, %struct.evp_keyexch_st* %keyexch, i64 0, i32 3
  %0 = load %struct.ossl_provider_st*, %struct.ossl_provider_st** %prov, align 8, !tbaa !11
  %name_id = getelementptr inbounds %struct.evp_keyexch_st, %struct.evp_keyexch_st* %keyexch, i64 0, i32 0
  %1 = load i32, i32* %name_id, align 8, !tbaa !15
  %call = tail call i32 @evp_is_a(%struct.ossl_provider_st* noundef %0, i32 noundef %1, i8* noundef null, i8* noundef %name) #8
  ret i32 %call
}

declare i32 @evp_is_a(%struct.ossl_provider_st* noundef, i32 noundef, i8* noundef, i8* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define void @EVP_KEYEXCH_do_all_provided(%struct.ossl_lib_ctx_st* noundef %libctx, void (%struct.evp_keyexch_st*, i8*)* noundef %fn, i8* noundef %arg) local_unnamed_addr #0 {
entry:
  %0 = bitcast void (%struct.evp_keyexch_st*, i8*)* %fn to void (i8*, i8*)*
  tail call void @evp_generic_do_all(%struct.ossl_lib_ctx_st* noundef %libctx, i32 noundef 11, void (i8*, i8*)* noundef %0, i8* noundef %arg, i8* (i32, %struct.ossl_algorithm_st*, %struct.ossl_provider_st*)* noundef nonnull @evp_keyexch_from_algorithm, i32 (i8*)* noundef bitcast (i32 (%struct.evp_keyexch_st*)* @EVP_KEYEXCH_up_ref to i32 (i8*)*), void (i8*)* noundef bitcast (void (%struct.evp_keyexch_st*)* @EVP_KEYEXCH_free to void (i8*)*)) #8
  ret void
}

declare void @evp_generic_do_all(%struct.ossl_lib_ctx_st* noundef, i32 noundef, void (i8*, i8*)* noundef, i8* noundef, i8* (i32, %struct.ossl_algorithm_st*, %struct.ossl_provider_st*)* noundef, i32 (i8*)* noundef, void (i8*)* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define i32 @EVP_KEYEXCH_names_do_all(%struct.evp_keyexch_st* nocapture noundef readonly %keyexch, void (i8*, i8*)* noundef %fn, i8* noundef %data) local_unnamed_addr #0 {
entry:
  %prov = getelementptr inbounds %struct.evp_keyexch_st, %struct.evp_keyexch_st* %keyexch, i64 0, i32 3
  %0 = load %struct.ossl_provider_st*, %struct.ossl_provider_st** %prov, align 8, !tbaa !11
  %cmp.not = icmp eq %struct.ossl_provider_st* %0, null
  br i1 %cmp.not, label %return, label %if.then

if.then:                                          ; preds = %entry
  %name_id = getelementptr inbounds %struct.evp_keyexch_st, %struct.evp_keyexch_st* %keyexch, i64 0, i32 0
  %1 = load i32, i32* %name_id, align 8, !tbaa !15
  %call = tail call i32 @evp_names_do_all(%struct.ossl_provider_st* noundef nonnull %0, i32 noundef %1, void (i8*, i8*)* noundef %fn, i8* noundef %data) #8
  br label %return

return:                                           ; preds = %entry, %if.then
  %retval.0 = phi i32 [ %call, %if.then ], [ 1, %entry ]
  ret i32 %retval.0
}

declare i32 @evp_names_do_all(%struct.ossl_provider_st* noundef, i32 noundef, void (i8*, i8*)* noundef, i8* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define %struct.ossl_param_st* @EVP_KEYEXCH_gettable_ctx_params(%struct.evp_keyexch_st* noundef readonly %keyexch) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.evp_keyexch_st* %keyexch, null
  br i1 %cmp, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %gettable_ctx_params = getelementptr inbounds %struct.evp_keyexch_st, %struct.evp_keyexch_st* %keyexch, i64 0, i32 15
  %0 = load %struct.ossl_param_st* (i8*, i8*)*, %struct.ossl_param_st* (i8*, i8*)** %gettable_ctx_params, align 8, !tbaa !27
  %cmp1 = icmp eq %struct.ossl_param_st* (i8*, i8*)* %0, null
  br i1 %cmp1, label %cleanup, label %if.end

if.end:                                           ; preds = %lor.lhs.false
  %call = tail call %struct.ossl_provider_st* @EVP_KEYEXCH_get0_provider(%struct.evp_keyexch_st* noundef nonnull %keyexch) #7
  %call2 = tail call i8* @ossl_provider_ctx(%struct.ossl_provider_st* noundef %call) #8
  %1 = load %struct.ossl_param_st* (i8*, i8*)*, %struct.ossl_param_st* (i8*, i8*)** %gettable_ctx_params, align 8, !tbaa !27
  %call4 = tail call %struct.ossl_param_st* %1(i8* noundef null, i8* noundef %call2) #8
  br label %cleanup

cleanup:                                          ; preds = %entry, %lor.lhs.false, %if.end
  %retval.0 = phi %struct.ossl_param_st* [ %call4, %if.end ], [ null, %lor.lhs.false ], [ null, %entry ]
  ret %struct.ossl_param_st* %retval.0
}

; Function Attrs: noinline nounwind uwtable
define %struct.ossl_param_st* @EVP_KEYEXCH_settable_ctx_params(%struct.evp_keyexch_st* noundef readonly %keyexch) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.evp_keyexch_st* %keyexch, null
  br i1 %cmp, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %settable_ctx_params = getelementptr inbounds %struct.evp_keyexch_st, %struct.evp_keyexch_st* %keyexch, i64 0, i32 13
  %0 = load %struct.ossl_param_st* (i8*, i8*)*, %struct.ossl_param_st* (i8*, i8*)** %settable_ctx_params, align 8, !tbaa !29
  %cmp1 = icmp eq %struct.ossl_param_st* (i8*, i8*)* %0, null
  br i1 %cmp1, label %cleanup, label %if.end

if.end:                                           ; preds = %lor.lhs.false
  %call = tail call %struct.ossl_provider_st* @EVP_KEYEXCH_get0_provider(%struct.evp_keyexch_st* noundef nonnull %keyexch) #7
  %call2 = tail call i8* @ossl_provider_ctx(%struct.ossl_provider_st* noundef %call) #8
  %1 = load %struct.ossl_param_st* (i8*, i8*)*, %struct.ossl_param_st* (i8*, i8*)** %settable_ctx_params, align 8, !tbaa !29
  %call4 = tail call %struct.ossl_param_st* %1(i8* noundef null, i8* noundef %call2) #8
  br label %cleanup

cleanup:                                          ; preds = %entry, %lor.lhs.false, %if.end
  %retval.0 = phi %struct.ossl_param_st* [ %call4, %if.end ], [ null, %lor.lhs.false ], [ null, %entry ]
  ret %struct.ossl_param_st* %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.evp_keyexch_st* @evp_keyexch_new(%struct.ossl_provider_st* noundef %prov) unnamed_addr #0 {
entry:
  %call = tail call i8* @CRYPTO_zalloc(i64 noundef 128, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 22) #8
  %0 = bitcast i8* %call to %struct.evp_keyexch_st*
  %cmp = icmp eq i8* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 25, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.evp_keyexch_new, i64 0, i64 0)) #8
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
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 31, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.evp_keyexch_new, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 6, i32 noundef 786688, i8* noundef null) #8
  tail call void @CRYPTO_free(i8* noundef nonnull %call, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 32) #8
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %prov6 = getelementptr inbounds i8, i8* %call, i64 24
  %2 = bitcast i8* %prov6 to %struct.ossl_provider_st**
  store %struct.ossl_provider_st* %prov, %struct.ossl_provider_st** %2, align 8, !tbaa !11
  %call7 = tail call i32 @ossl_provider_up_ref(%struct.ossl_provider_st* noundef %prov) #8
  %refcnt = getelementptr inbounds i8, i8* %call, i64 32
  %3 = bitcast i8* %refcnt to i32*
  store atomic i32 1, i32* %3 seq_cst, align 4, !tbaa !60
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.then4, %if.then
  %retval.0 = phi %struct.evp_keyexch_st* [ null, %if.then ], [ null, %if.then4 ], [ %0, %if.end5 ]
  ret %struct.evp_keyexch_st* %retval.0
}

declare i8* @ossl_algorithm_get1_first_name(%struct.ossl_algorithm_st* noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal fastcc i8* (i8*)* @OSSL_FUNC_keyexch_newctx(%struct.ossl_dispatch_st* nocapture noundef readonly %opf) unnamed_addr #5 {
entry:
  %function = getelementptr inbounds %struct.ossl_dispatch_st, %struct.ossl_dispatch_st* %opf, i64 0, i32 1
  %0 = bitcast void ()** %function to i8* (i8*)**
  %1 = load i8* (i8*)*, i8* (i8*)** %0, align 8, !tbaa !61
  ret i8* (i8*)* %1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal fastcc i32 (i8*, i8*, %struct.ossl_param_st*)* @OSSL_FUNC_keyexch_init(%struct.ossl_dispatch_st* nocapture noundef readonly %opf) unnamed_addr #5 {
entry:
  %function = getelementptr inbounds %struct.ossl_dispatch_st, %struct.ossl_dispatch_st* %opf, i64 0, i32 1
  %0 = bitcast void ()** %function to i32 (i8*, i8*, %struct.ossl_param_st*)**
  %1 = load i32 (i8*, i8*, %struct.ossl_param_st*)*, i32 (i8*, i8*, %struct.ossl_param_st*)** %0, align 8, !tbaa !61
  ret i32 (i8*, i8*, %struct.ossl_param_st*)* %1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal fastcc i32 (i8*, i8*)* @OSSL_FUNC_keyexch_set_peer(%struct.ossl_dispatch_st* nocapture noundef readonly %opf) unnamed_addr #5 {
entry:
  %function = getelementptr inbounds %struct.ossl_dispatch_st, %struct.ossl_dispatch_st* %opf, i64 0, i32 1
  %0 = bitcast void ()** %function to i32 (i8*, i8*)**
  %1 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %0, align 8, !tbaa !61
  ret i32 (i8*, i8*)* %1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal fastcc i32 (i8*, i8*, i64*, i64)* @OSSL_FUNC_keyexch_derive(%struct.ossl_dispatch_st* nocapture noundef readonly %opf) unnamed_addr #5 {
entry:
  %function = getelementptr inbounds %struct.ossl_dispatch_st, %struct.ossl_dispatch_st* %opf, i64 0, i32 1
  %0 = bitcast void ()** %function to i32 (i8*, i8*, i64*, i64)**
  %1 = load i32 (i8*, i8*, i64*, i64)*, i32 (i8*, i8*, i64*, i64)** %0, align 8, !tbaa !61
  ret i32 (i8*, i8*, i64*, i64)* %1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal fastcc void (i8*)* @OSSL_FUNC_keyexch_freectx(%struct.ossl_dispatch_st* nocapture noundef readonly %opf) unnamed_addr #5 {
entry:
  %function = getelementptr inbounds %struct.ossl_dispatch_st, %struct.ossl_dispatch_st* %opf, i64 0, i32 1
  %0 = bitcast void ()** %function to void (i8*)**
  %1 = load void (i8*)*, void (i8*)** %0, align 8, !tbaa !61
  ret void (i8*)* %1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal fastcc i8* (i8*)* @OSSL_FUNC_keyexch_dupctx(%struct.ossl_dispatch_st* nocapture noundef readonly %opf) unnamed_addr #5 {
entry:
  %function = getelementptr inbounds %struct.ossl_dispatch_st, %struct.ossl_dispatch_st* %opf, i64 0, i32 1
  %0 = bitcast void ()** %function to i8* (i8*)**
  %1 = load i8* (i8*)*, i8* (i8*)** %0, align 8, !tbaa !61
  ret i8* (i8*)* %1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal fastcc i32 (i8*, %struct.ossl_param_st*)* @OSSL_FUNC_keyexch_get_ctx_params(%struct.ossl_dispatch_st* nocapture noundef readonly %opf) unnamed_addr #5 {
entry:
  %function = getelementptr inbounds %struct.ossl_dispatch_st, %struct.ossl_dispatch_st* %opf, i64 0, i32 1
  %0 = bitcast void ()** %function to i32 (i8*, %struct.ossl_param_st*)**
  %1 = load i32 (i8*, %struct.ossl_param_st*)*, i32 (i8*, %struct.ossl_param_st*)** %0, align 8, !tbaa !61
  ret i32 (i8*, %struct.ossl_param_st*)* %1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal fastcc %struct.ossl_param_st* (i8*, i8*)* @OSSL_FUNC_keyexch_gettable_ctx_params(%struct.ossl_dispatch_st* nocapture noundef readonly %opf) unnamed_addr #5 {
entry:
  %function = getelementptr inbounds %struct.ossl_dispatch_st, %struct.ossl_dispatch_st* %opf, i64 0, i32 1
  %0 = bitcast void ()** %function to %struct.ossl_param_st* (i8*, i8*)**
  %1 = load %struct.ossl_param_st* (i8*, i8*)*, %struct.ossl_param_st* (i8*, i8*)** %0, align 8, !tbaa !61
  ret %struct.ossl_param_st* (i8*, i8*)* %1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal fastcc i32 (i8*, %struct.ossl_param_st*)* @OSSL_FUNC_keyexch_set_ctx_params(%struct.ossl_dispatch_st* nocapture noundef readonly %opf) unnamed_addr #5 {
entry:
  %function = getelementptr inbounds %struct.ossl_dispatch_st, %struct.ossl_dispatch_st* %opf, i64 0, i32 1
  %0 = bitcast void ()** %function to i32 (i8*, %struct.ossl_param_st*)**
  %1 = load i32 (i8*, %struct.ossl_param_st*)*, i32 (i8*, %struct.ossl_param_st*)** %0, align 8, !tbaa !61
  ret i32 (i8*, %struct.ossl_param_st*)* %1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal fastcc %struct.ossl_param_st* (i8*, i8*)* @OSSL_FUNC_keyexch_settable_ctx_params(%struct.ossl_dispatch_st* nocapture noundef readonly %opf) unnamed_addr #5 {
entry:
  %function = getelementptr inbounds %struct.ossl_dispatch_st, %struct.ossl_dispatch_st* %opf, i64 0, i32 1
  %0 = bitcast void ()** %function to %struct.ossl_param_st* (i8*, i8*)**
  %1 = load %struct.ossl_param_st* (i8*, i8*)*, %struct.ossl_param_st* (i8*, i8*)** %0, align 8, !tbaa !61
  ret %struct.ossl_param_st* (i8*, i8*)* %1
}

declare i8* @CRYPTO_zalloc(i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #3

declare i8* @CRYPTO_THREAD_lock_new() local_unnamed_addr #3

declare i32 @ossl_provider_up_ref(%struct.ossl_provider_st* noundef) local_unnamed_addr #3

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
!9 = !{!"evp_keyexch_st", !5, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !6, i64 32, !10, i64 40, !10, i64 48, !10, i64 56, !10, i64 64, !10, i64 72, !10, i64 80, !10, i64 88, !10, i64 96, !10, i64 104, !10, i64 112, !10, i64 120}
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
!26 = !{!9, !10, i64 112}
!27 = !{!9, !10, i64 120}
!28 = !{!9, !10, i64 96}
!29 = !{!9, !10, i64 104}
!30 = distinct !{!30, !31}
!31 = !{!"llvm.loop.mustprogress"}
!32 = !{!10, !10, i64 0}
!33 = !{!34, !5, i64 0}
!34 = !{!"evp_pkey_ctx_st", !5, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !6, i64 40, !35, i64 56, !10, i64 88, !10, i64 96, !10, i64 104, !5, i64 112, !5, i64 116, !10, i64 120, !10, i64 128, !10, i64 136, !10, i64 144, !10, i64 152, !5, i64 160, !10, i64 168}
!35 = !{!"", !10, i64 0, !10, i64 8, !36, i64 16, !5, i64 24}
!36 = !{!"long", !6, i64 0}
!37 = !{!34, !10, i64 32}
!38 = !{!34, !10, i64 136}
!39 = !{!40, !10, i64 104}
!40 = !{!"evp_pkey_st", !5, i64 0, !5, i64 4, !10, i64 8, !10, i64 16, !10, i64 24, !6, i64 32, !6, i64 40, !6, i64 48, !10, i64 56, !10, i64 64, !5, i64 72, !5, i64 76, !41, i64 80, !10, i64 96, !10, i64 104, !36, i64 112, !10, i64 120, !36, i64 128, !42, i64 136}
!41 = !{!"crypto_ex_data_st", !10, i64 0, !10, i64 8}
!42 = !{!"", !5, i64 0, !5, i64 4, !5, i64 8}
!43 = !{!34, !10, i64 8}
!44 = !{!34, !10, i64 16}
!45 = !{!46, !10, i64 152}
!46 = !{!"evp_keymgmt_st", !5, i64 0, !5, i64 4, !10, i64 8, !10, i64 16, !10, i64 24, !6, i64 32, !10, i64 40, !10, i64 48, !10, i64 56, !10, i64 64, !10, i64 72, !10, i64 80, !10, i64 88, !10, i64 96, !10, i64 104, !10, i64 112, !10, i64 120, !10, i64 128, !10, i64 136, !10, i64 144, !10, i64 152, !10, i64 160, !10, i64 168, !10, i64 176, !10, i64 184, !10, i64 192, !10, i64 200, !10, i64 208, !10, i64 216}
!47 = !{!34, !10, i64 24}
!48 = !{!6, !6, i64 0}
!49 = !{!34, !10, i64 120}
!50 = !{!51, !10, i64 184}
!51 = !{!"evp_pkey_method_st", !5, i64 0, !5, i64 4, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !10, i64 40, !10, i64 48, !10, i64 56, !10, i64 64, !10, i64 72, !10, i64 80, !10, i64 88, !10, i64 96, !10, i64 104, !10, i64 112, !10, i64 120, !10, i64 128, !10, i64 136, !10, i64 144, !10, i64 152, !10, i64 160, !10, i64 168, !10, i64 176, !10, i64 184, !10, i64 192, !10, i64 200, !10, i64 208, !10, i64 216, !10, i64 224, !10, i64 232, !10, i64 240, !10, i64 248}
!52 = !{!51, !10, i64 176}
!53 = !{!51, !10, i64 152}
!54 = !{!51, !10, i64 168}
!55 = !{!51, !10, i64 192}
!56 = !{!40, !5, i64 0}
!57 = !{!34, !10, i64 144}
!58 = !{!36, !36, i64 0}
!59 = !{!51, !5, i64 4}
!60 = !{!9, !6, i64 32}
!61 = !{!19, !10, i64 8}
