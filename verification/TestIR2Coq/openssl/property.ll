; ModuleID = 'crypto/property/property.c'
source_filename = "crypto/property/property.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ossl_lib_ctx_method = type { i32, i8* (%struct.ossl_lib_ctx_st*)*, void (i8*)* }
%struct.ossl_lib_ctx_st = type opaque
%struct.ossl_property_list_st = type { i32, i8, [1 x %struct.ossl_property_definition_st] }
%struct.ossl_property_definition_st = type { i32, i32, i32, i8, %union.anon }
%union.anon = type { i64 }
%struct.ossl_init_settings_st = type opaque
%struct.ossl_method_store_st = type { %struct.ossl_lib_ctx_st*, i64, %struct.sparse_array_st_ALGORITHM*, i32, i8* }
%struct.sparse_array_st_ALGORITHM = type opaque
%struct.sparse_array_st = type opaque
%struct.ALGORITHM = type { i32, %struct.stack_st_IMPLEMENTATION*, %struct.lhash_st_QUERY* }
%struct.stack_st_IMPLEMENTATION = type opaque
%struct.lhash_st_QUERY = type { %union.lh_QUERY_dummy }
%union.lh_QUERY_dummy = type { i8* }
%struct.ossl_provider_st = type opaque
%struct.IMPLEMENTATION = type { %struct.ossl_provider_st*, %struct.ossl_property_list_st*, %struct.METHOD }
%struct.METHOD = type { i8*, i32 (i8*)*, void (i8*)* }
%struct.stack_st = type opaque
%struct.lhash_st = type opaque
%struct.QUERY = type { i8*, %struct.METHOD, [1 x i8] }
%struct.alg_do_each_data_st = type { void (i32, i8*, i8*)*, i8* }
%struct.IMPL_CACHE_FLUSH = type { %struct.lhash_st_QUERY*, i64, i32 }

@ossl_ctx_global_properties_method = internal constant %struct.ossl_lib_ctx_method { i32 0, i8* (%struct.ossl_lib_ctx_st*)* @ossl_ctx_global_properties_new, void (i8*)* @ossl_ctx_global_properties_free }, align 8
@.str = private unnamed_addr constant [27 x i8] c"crypto/property/property.c\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

; Function Attrs: noinline nounwind uwtable
define %struct.ossl_property_list_st** @ossl_ctx_global_properties(%struct.ossl_lib_ctx_st* noundef %libctx, i32 noundef %loadconfig) local_unnamed_addr #0 {
entry:
  %tobool.not = icmp eq i32 %loadconfig, 0
  br i1 %tobool.not, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %call = tail call i32 @OPENSSL_init_crypto(i64 noundef 64, %struct.ossl_init_settings_st* noundef null) #6
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %cleanup, label %if.end

if.end:                                           ; preds = %land.lhs.true, %entry
  %call2 = tail call i8* @ossl_lib_ctx_get_data(%struct.ossl_lib_ctx_st* noundef %libctx, i32 noundef 14, %struct.ossl_lib_ctx_method* noundef nonnull @ossl_ctx_global_properties_method) #6
  %list = bitcast i8* %call2 to %struct.ossl_property_list_st**
  br label %cleanup

cleanup:                                          ; preds = %land.lhs.true, %if.end
  %retval.0 = phi %struct.ossl_property_list_st** [ %list, %if.end ], [ null, %land.lhs.true ]
  ret %struct.ossl_property_list_st** %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

declare i32 @OPENSSL_init_crypto(i64 noundef, %struct.ossl_init_settings_st* noundef) local_unnamed_addr #2

declare i8* @ossl_lib_ctx_get_data(%struct.ossl_lib_ctx_st* noundef, i32 noundef, %struct.ossl_lib_ctx_method* noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_global_properties_no_mirrored(%struct.ossl_lib_ctx_st* noundef %libctx) local_unnamed_addr #0 {
entry:
  %call = tail call i8* @ossl_lib_ctx_get_data(%struct.ossl_lib_ctx_st* noundef %libctx, i32 noundef 14, %struct.ossl_lib_ctx_method* noundef nonnull @ossl_ctx_global_properties_method) #6
  %0 = getelementptr inbounds i8, i8* %call, i64 8
  %bf.load = load i8, i8* %0, align 8
  %bf.clear = and i8 %bf.load, 1
  %1 = zext i8 %bf.clear to i32
  ret i32 %1
}

; Function Attrs: noinline nounwind uwtable
define void @ossl_global_properties_stop_mirroring(%struct.ossl_lib_ctx_st* noundef %libctx) local_unnamed_addr #0 {
entry:
  %call = tail call i8* @ossl_lib_ctx_get_data(%struct.ossl_lib_ctx_st* noundef %libctx, i32 noundef 14, %struct.ossl_lib_ctx_method* noundef nonnull @ossl_ctx_global_properties_method) #6
  %0 = getelementptr inbounds i8, i8* %call, i64 8
  %bf.load = load i8, i8* %0, align 8
  %bf.set = or i8 %bf.load, 1
  store i8 %bf.set, i8* %0, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define %struct.ossl_method_store_st* @ossl_method_store_new(%struct.ossl_lib_ctx_st* noundef %ctx) local_unnamed_addr #0 {
entry:
  %call = tail call i8* @CRYPTO_zalloc(i64 noundef 40, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 noundef 212) #6
  %0 = bitcast i8* %call to %struct.ossl_method_store_st*
  %cmp.not = icmp eq i8* %call, null
  br i1 %cmp.not, label %cleanup, label %if.then

if.then:                                          ; preds = %entry
  %ctx1 = bitcast i8* %call to %struct.ossl_lib_ctx_st**
  store %struct.ossl_lib_ctx_st* %ctx, %struct.ossl_lib_ctx_st** %ctx1, align 8, !tbaa !4
  %call2 = tail call fastcc %struct.sparse_array_st_ALGORITHM* @ossl_sa_ALGORITHM_new() #7
  %algs = getelementptr inbounds i8, i8* %call, i64 16
  %1 = bitcast i8* %algs to %struct.sparse_array_st_ALGORITHM**
  store %struct.sparse_array_st_ALGORITHM* %call2, %struct.sparse_array_st_ALGORITHM** %1, align 8, !tbaa !11
  %cmp3 = icmp eq %struct.sparse_array_st_ALGORITHM* %call2, null
  br i1 %cmp3, label %cleanup.sink.split, label %if.end

if.end:                                           ; preds = %if.then
  %call5 = tail call i8* @CRYPTO_THREAD_lock_new() #6
  %lock = getelementptr inbounds i8, i8* %call, i64 32
  %2 = bitcast i8* %lock to i8**
  store i8* %call5, i8** %2, align 8, !tbaa !12
  %cmp6 = icmp eq i8* %call5, null
  br i1 %cmp6, label %if.then7, label %cleanup

if.then7:                                         ; preds = %if.end
  %3 = load %struct.sparse_array_st_ALGORITHM*, %struct.sparse_array_st_ALGORITHM** %1, align 8, !tbaa !11
  tail call fastcc void @ossl_sa_ALGORITHM_free(%struct.sparse_array_st_ALGORITHM* noundef %3) #7
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.then, %if.then7
  %.sink = phi i32 [ 221, %if.then7 ], [ 216, %if.then ]
  tail call void @CRYPTO_free(i8* noundef nonnull %call, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 noundef %.sink) #6
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry, %if.end
  %retval.0 = phi %struct.ossl_method_store_st* [ %0, %if.end ], [ %0, %entry ], [ null, %cleanup.sink.split ]
  ret %struct.ossl_method_store_st* %retval.0
}

declare i8* @CRYPTO_zalloc(i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.sparse_array_st_ALGORITHM* @ossl_sa_ALGORITHM_new() unnamed_addr #0 {
entry:
  %call = tail call %struct.sparse_array_st* @ossl_sa_new() #6
  %0 = bitcast %struct.sparse_array_st* %call to %struct.sparse_array_st_ALGORITHM*
  ret %struct.sparse_array_st_ALGORITHM* %0
}

declare void @CRYPTO_free(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare i8* @CRYPTO_THREAD_lock_new() local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @ossl_sa_ALGORITHM_free(%struct.sparse_array_st_ALGORITHM* noundef %sa) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.sparse_array_st_ALGORITHM* %sa to %struct.sparse_array_st*
  tail call void @ossl_sa_free(%struct.sparse_array_st* noundef %0) #6
  ret void
}

; Function Attrs: noinline nounwind uwtable
define void @ossl_method_store_free(%struct.ossl_method_store_st* noundef %store) local_unnamed_addr #0 {
entry:
  %cmp.not = icmp eq %struct.ossl_method_store_st* %store, null
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %algs = getelementptr inbounds %struct.ossl_method_store_st, %struct.ossl_method_store_st* %store, i64 0, i32 2
  %0 = load %struct.sparse_array_st_ALGORITHM*, %struct.sparse_array_st_ALGORITHM** %algs, align 8, !tbaa !11
  tail call fastcc void @ossl_sa_ALGORITHM_doall(%struct.sparse_array_st_ALGORITHM* noundef %0) #7
  %1 = load %struct.sparse_array_st_ALGORITHM*, %struct.sparse_array_st_ALGORITHM** %algs, align 8, !tbaa !11
  tail call fastcc void @ossl_sa_ALGORITHM_free(%struct.sparse_array_st_ALGORITHM* noundef %1) #7
  %lock = getelementptr inbounds %struct.ossl_method_store_st, %struct.ossl_method_store_st* %store, i64 0, i32 4
  %2 = load i8*, i8** %lock, align 8, !tbaa !12
  tail call void @CRYPTO_THREAD_lock_free(i8* noundef %2) #6
  %3 = bitcast %struct.ossl_method_store_st* %store to i8*
  tail call void @CRYPTO_free(i8* noundef nonnull %3, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 noundef 234) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @ossl_sa_ALGORITHM_doall(%struct.sparse_array_st_ALGORITHM* noundef %sa) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.sparse_array_st_ALGORITHM* %sa to %struct.sparse_array_st*
  tail call void @ossl_sa_doall(%struct.sparse_array_st* noundef %0, void (i64, i8*)* noundef bitcast (void (i64, %struct.ALGORITHM*)* @alg_cleanup to void (i64, i8*)*)) #6
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @alg_cleanup(i64 noundef %idx, %struct.ALGORITHM* noundef %a) #0 {
entry:
  %cmp.not = icmp eq %struct.ALGORITHM* %a, null
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %impls = getelementptr inbounds %struct.ALGORITHM, %struct.ALGORITHM* %a, i64 0, i32 1
  %0 = load %struct.stack_st_IMPLEMENTATION*, %struct.stack_st_IMPLEMENTATION** %impls, align 8, !tbaa !13
  tail call fastcc void @sk_IMPLEMENTATION_pop_free(%struct.stack_st_IMPLEMENTATION* noundef %0) #7
  %cache = getelementptr inbounds %struct.ALGORITHM, %struct.ALGORITHM* %a, i64 0, i32 2
  %1 = load %struct.lhash_st_QUERY*, %struct.lhash_st_QUERY** %cache, align 8, !tbaa !15
  tail call fastcc void @lh_QUERY_doall(%struct.lhash_st_QUERY* noundef %1) #7
  %2 = load %struct.lhash_st_QUERY*, %struct.lhash_st_QUERY** %cache, align 8, !tbaa !15
  tail call fastcc void @lh_QUERY_free(%struct.lhash_st_QUERY* noundef %2) #7
  %3 = bitcast %struct.ALGORITHM* %a to i8*
  tail call void @CRYPTO_free(i8* noundef nonnull %3, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 noundef 200) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare void @CRYPTO_THREAD_lock_free(i8* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_method_store_add(%struct.ossl_method_store_st* noundef %store, %struct.ossl_provider_st* noundef %prov, i32 noundef %nid, i8* noundef %properties, i8* noundef %method, i32 (i8*)* noundef %method_up_ref, void (i8*)* noundef %method_destruct) local_unnamed_addr #0 {
entry:
  %cmp = icmp slt i32 %nid, 1
  %cmp1 = icmp eq i8* %method, null
  %or.cond = or i1 %cmp, %cmp1
  %cmp3 = icmp eq %struct.ossl_method_store_st* %store, null
  %or.cond87 = or i1 %cmp3, %or.cond
  br i1 %or.cond87, label %cleanup83, label %if.end

if.end:                                           ; preds = %entry
  %cmp4 = icmp eq i8* %properties, null
  %spec.store.select = select i1 %cmp4, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8* %properties
  %call = tail call i8* @CRYPTO_malloc(i64 noundef 40, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 noundef 264) #6
  %0 = bitcast i8* %call to %struct.IMPLEMENTATION*
  %cmp7 = icmp eq i8* %call, null
  br i1 %cmp7, label %cleanup83, label %if.end9

if.end9:                                          ; preds = %if.end
  %method10 = getelementptr inbounds i8, i8* %call, i64 16
  %1 = bitcast i8* %method10 to %struct.METHOD*
  %method11 = bitcast i8* %method10 to i8**
  store i8* %method, i8** %method11, align 8, !tbaa !16
  %up_ref = getelementptr inbounds i8, i8* %call, i64 24
  %2 = bitcast i8* %up_ref to i32 (i8*)**
  store i32 (i8*)* %method_up_ref, i32 (i8*)** %2, align 8, !tbaa !19
  %free = getelementptr inbounds i8, i8* %call, i64 32
  %3 = bitcast i8* %free to void (i8*)**
  store void (i8*)* %method_destruct, void (i8*)** %3, align 8, !tbaa !20
  %call15 = tail call fastcc i32 @ossl_method_up_ref(%struct.METHOD* noundef nonnull %1) #7
  %tobool.not = icmp eq i32 %call15, 0
  br i1 %tobool.not, label %if.then16, label %if.end17

if.then16:                                        ; preds = %if.end9
  tail call void @CRYPTO_free(i8* noundef nonnull %call, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 noundef 271) #6
  br label %cleanup83

if.end17:                                         ; preds = %if.end9
  %provider = bitcast i8* %call to %struct.ossl_provider_st**
  store %struct.ossl_provider_st* %prov, %struct.ossl_provider_st** %provider, align 8, !tbaa !21
  %call18 = tail call fastcc i32 @ossl_property_write_lock(%struct.ossl_method_store_st* noundef nonnull %store) #7
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.then20, label %if.end21

if.then20:                                        ; preds = %if.end17
  tail call void @CRYPTO_free(i8* noundef nonnull %call, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 noundef 278) #6
  br label %cleanup83

if.end21:                                         ; preds = %if.end17
  tail call fastcc void @ossl_method_cache_flush(%struct.ossl_method_store_st* noundef nonnull %store, i32 noundef %nid) #7
  %ctx = getelementptr inbounds %struct.ossl_method_store_st, %struct.ossl_method_store_st* %store, i64 0, i32 0
  %4 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** %ctx, align 8, !tbaa !4
  %call22 = tail call %struct.ossl_property_list_st* @ossl_prop_defn_get(%struct.ossl_lib_ctx_st* noundef %4, i8* noundef %spec.store.select) #6
  %properties23 = getelementptr inbounds i8, i8* %call, i64 8
  %5 = bitcast i8* %properties23 to %struct.ossl_property_list_st**
  store %struct.ossl_property_list_st* %call22, %struct.ossl_property_list_st** %5, align 8, !tbaa !22
  %cmp24 = icmp eq %struct.ossl_property_list_st* %call22, null
  br i1 %cmp24, label %if.then25, label %if.end36

if.then25:                                        ; preds = %if.end21
  %6 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** %ctx, align 8, !tbaa !4
  %call27 = tail call %struct.ossl_property_list_st* @ossl_parse_property(%struct.ossl_lib_ctx_st* noundef %6, i8* noundef %spec.store.select) #6
  store %struct.ossl_property_list_st* %call27, %struct.ossl_property_list_st** %5, align 8, !tbaa !22
  %cmp30 = icmp eq %struct.ossl_property_list_st* %call27, null
  br i1 %cmp30, label %err, label %if.end32

if.end32:                                         ; preds = %if.then25
  %7 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** %ctx, align 8, !tbaa !4
  %call35 = tail call i32 @ossl_prop_defn_set(%struct.ossl_lib_ctx_st* noundef %7, i8* noundef %spec.store.select, %struct.ossl_property_list_st* noundef nonnull %call27) #6
  br label %if.end36

if.end36:                                         ; preds = %if.end32, %if.end21
  %call37 = tail call fastcc %struct.ALGORITHM* @ossl_method_store_retrieve(%struct.ossl_method_store_st* noundef nonnull %store, i32 noundef %nid) #7
  %cmp38 = icmp eq %struct.ALGORITHM* %call37, null
  br i1 %cmp38, label %if.then39, label %if.end55

if.then39:                                        ; preds = %if.end36
  %call40 = tail call i8* @CRYPTO_zalloc(i64 noundef 24, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 noundef 291) #6
  %8 = bitcast i8* %call40 to %struct.ALGORITHM*
  %cmp41 = icmp eq i8* %call40, null
  br i1 %cmp41, label %err, label %lor.lhs.false42

lor.lhs.false42:                                  ; preds = %if.then39
  %call43 = tail call fastcc %struct.stack_st_IMPLEMENTATION* @sk_IMPLEMENTATION_new_null() #7
  %impls = getelementptr inbounds i8, i8* %call40, i64 8
  %9 = bitcast i8* %impls to %struct.stack_st_IMPLEMENTATION**
  store %struct.stack_st_IMPLEMENTATION* %call43, %struct.stack_st_IMPLEMENTATION** %9, align 8, !tbaa !13
  %cmp44 = icmp eq %struct.stack_st_IMPLEMENTATION* %call43, null
  br i1 %cmp44, label %err, label %lor.lhs.false45

lor.lhs.false45:                                  ; preds = %lor.lhs.false42
  %call46 = tail call fastcc %struct.lhash_st_QUERY* @lh_QUERY_new() #7
  %cache = getelementptr inbounds i8, i8* %call40, i64 16
  %10 = bitcast i8* %cache to %struct.lhash_st_QUERY**
  store %struct.lhash_st_QUERY* %call46, %struct.lhash_st_QUERY** %10, align 8, !tbaa !15
  %cmp47 = icmp eq %struct.lhash_st_QUERY* %call46, null
  br i1 %cmp47, label %err, label %if.end49

if.end49:                                         ; preds = %lor.lhs.false45
  %nid50 = bitcast i8* %call40 to i32*
  store i32 %nid, i32* %nid50, align 8, !tbaa !23
  %call51 = tail call fastcc i32 @ossl_method_store_insert(%struct.ossl_method_store_st* noundef nonnull %store, %struct.ALGORITHM* noundef nonnull %8) #7
  %tobool52.not = icmp eq i32 %call51, 0
  br i1 %tobool52.not, label %err, label %if.end55

if.end55:                                         ; preds = %if.end49, %if.end36
  %alg.0 = phi %struct.ALGORITHM* [ %8, %if.end49 ], [ %call37, %if.end36 ]
  %impls56 = getelementptr inbounds %struct.ALGORITHM, %struct.ALGORITHM* %alg.0, i64 0, i32 1
  %11 = load %struct.stack_st_IMPLEMENTATION*, %struct.stack_st_IMPLEMENTATION** %impls56, align 8, !tbaa !13
  %call57146 = tail call fastcc i32 @sk_IMPLEMENTATION_num(%struct.stack_st_IMPLEMENTATION* noundef %11) #7
  %cmp58147 = icmp sgt i32 %call57146, 0
  br i1 %cmp58147, label %for.body, label %for.end

for.body:                                         ; preds = %if.end55, %for.inc
  %i.0148 = phi i32 [ %inc, %for.inc ], [ 0, %if.end55 ]
  %12 = load %struct.stack_st_IMPLEMENTATION*, %struct.stack_st_IMPLEMENTATION** %impls56, align 8, !tbaa !13
  %call60 = tail call fastcc %struct.IMPLEMENTATION* @sk_IMPLEMENTATION_value(%struct.stack_st_IMPLEMENTATION* noundef %12, i32 noundef %i.0148) #7
  %provider61 = getelementptr inbounds %struct.IMPLEMENTATION, %struct.IMPLEMENTATION* %call60, i64 0, i32 0
  %13 = load %struct.ossl_provider_st*, %struct.ossl_provider_st** %provider61, align 8, !tbaa !21
  %14 = load %struct.ossl_provider_st*, %struct.ossl_provider_st** %provider, align 8, !tbaa !21
  %cmp63 = icmp eq %struct.ossl_provider_st* %13, %14
  br i1 %cmp63, label %land.lhs.true, label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %properties64 = getelementptr inbounds %struct.IMPLEMENTATION, %struct.IMPLEMENTATION* %call60, i64 0, i32 1
  %15 = load %struct.ossl_property_list_st*, %struct.ossl_property_list_st** %properties64, align 8, !tbaa !22
  %16 = load %struct.ossl_property_list_st*, %struct.ossl_property_list_st** %5, align 8, !tbaa !22
  %cmp66 = icmp eq %struct.ossl_property_list_st* %15, %16
  br i1 %cmp66, label %for.end, label %for.inc

for.inc:                                          ; preds = %for.body, %land.lhs.true
  %inc = add nuw nsw i32 %i.0148, 1
  %17 = load %struct.stack_st_IMPLEMENTATION*, %struct.stack_st_IMPLEMENTATION** %impls56, align 8, !tbaa !13
  %call57 = tail call fastcc i32 @sk_IMPLEMENTATION_num(%struct.stack_st_IMPLEMENTATION* noundef %17) #7
  %cmp58 = icmp slt i32 %inc, %call57
  br i1 %cmp58, label %for.body, label %for.end, !llvm.loop !24

for.end:                                          ; preds = %for.inc, %land.lhs.true, %if.end55
  %i.0.lcssa = phi i32 [ 0, %if.end55 ], [ %i.0148, %land.lhs.true ], [ %inc, %for.inc ]
  %18 = load %struct.stack_st_IMPLEMENTATION*, %struct.stack_st_IMPLEMENTATION** %impls56, align 8, !tbaa !13
  %call70 = tail call fastcc i32 @sk_IMPLEMENTATION_num(%struct.stack_st_IMPLEMENTATION* noundef %18) #7
  %cmp71 = icmp eq i32 %i.0.lcssa, %call70
  br i1 %cmp71, label %if.end77, label %if.end77.thread

if.end77.thread:                                  ; preds = %for.end
  tail call fastcc void @ossl_property_unlock(%struct.ossl_method_store_st* noundef %store) #7
  br label %if.then80

if.end77:                                         ; preds = %for.end
  %19 = load %struct.stack_st_IMPLEMENTATION*, %struct.stack_st_IMPLEMENTATION** %impls56, align 8, !tbaa !13
  %call74 = tail call fastcc i32 @sk_IMPLEMENTATION_push(%struct.stack_st_IMPLEMENTATION* noundef %19, %struct.IMPLEMENTATION* noundef nonnull %0) #7
  %tobool75.not = icmp eq i32 %call74, 0
  tail call fastcc void @ossl_property_unlock(%struct.ossl_method_store_st* noundef %store) #7
  br i1 %tobool75.not, label %if.then80, label %cleanup83

if.then80:                                        ; preds = %if.end77.thread, %if.end77
  tail call void @impl_free(%struct.IMPLEMENTATION* noundef nonnull %0) #7
  br label %cleanup83

err:                                              ; preds = %if.end49, %if.then39, %lor.lhs.false42, %lor.lhs.false45, %if.then25
  %alg.1 = phi %struct.ALGORITHM* [ null, %if.then25 ], [ null, %if.then39 ], [ %8, %lor.lhs.false42 ], [ %8, %lor.lhs.false45 ], [ %8, %if.end49 ]
  tail call fastcc void @ossl_property_unlock(%struct.ossl_method_store_st* noundef nonnull %store) #7
  tail call void @alg_cleanup(i64 noundef 0, %struct.ALGORITHM* noundef %alg.1) #7
  tail call void @impl_free(%struct.IMPLEMENTATION* noundef nonnull %0) #7
  br label %cleanup83

cleanup83:                                        ; preds = %if.end77, %if.then80, %if.end, %entry, %err, %if.then20, %if.then16
  %retval.0 = phi i32 [ 0, %err ], [ 0, %if.then20 ], [ 0, %if.then16 ], [ 0, %entry ], [ 0, %if.end ], [ 0, %if.then80 ], [ 1, %if.end77 ]
  ret i32 %retval.0
}

declare i8* @CRYPTO_malloc(i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @ossl_method_up_ref(%struct.METHOD* nocapture noundef readonly %method) unnamed_addr #0 {
entry:
  %up_ref = getelementptr inbounds %struct.METHOD, %struct.METHOD* %method, i64 0, i32 1
  %0 = load i32 (i8*)*, i32 (i8*)** %up_ref, align 8, !tbaa !26
  %method1 = getelementptr inbounds %struct.METHOD, %struct.METHOD* %method, i64 0, i32 0
  %1 = load i8*, i8** %method1, align 8, !tbaa !27
  %call = tail call i32 %0(i8* noundef %1) #6
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @ossl_property_write_lock(%struct.ossl_method_store_st* noundef readonly %p) unnamed_addr #0 {
entry:
  %cmp.not = icmp eq %struct.ossl_method_store_st* %p, null
  br i1 %cmp.not, label %cond.end, label %cond.true

cond.true:                                        ; preds = %entry
  %lock = getelementptr inbounds %struct.ossl_method_store_st, %struct.ossl_method_store_st* %p, i64 0, i32 4
  %0 = load i8*, i8** %lock, align 8, !tbaa !12
  %call = tail call i32 @CRYPTO_THREAD_write_lock(i8* noundef %0) #6
  br label %cond.end

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ 0, %entry ]
  ret i32 %cond
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @ossl_method_cache_flush(%struct.ossl_method_store_st* nocapture noundef %store, i32 noundef %nid) unnamed_addr #0 {
entry:
  %call = tail call fastcc %struct.ALGORITHM* @ossl_method_store_retrieve(%struct.ossl_method_store_st* noundef %store, i32 noundef %nid) #7
  %cmp.not = icmp eq %struct.ALGORITHM* %call, null
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %ctx = getelementptr inbounds %struct.ossl_method_store_st, %struct.ossl_method_store_st* %store, i64 0, i32 0
  %0 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** %ctx, align 8, !tbaa !4
  %call1 = tail call i32 @ossl_provider_clear_all_operation_bits(%struct.ossl_lib_ctx_st* noundef %0) #6
  %cache = getelementptr inbounds %struct.ALGORITHM, %struct.ALGORITHM* %call, i64 0, i32 2
  %1 = load %struct.lhash_st_QUERY*, %struct.lhash_st_QUERY** %cache, align 8, !tbaa !15
  %call2 = tail call fastcc i64 @lh_QUERY_num_items(%struct.lhash_st_QUERY* noundef %1) #7
  %nelem = getelementptr inbounds %struct.ossl_method_store_st, %struct.ossl_method_store_st* %store, i64 0, i32 1
  %2 = load i64, i64* %nelem, align 8, !tbaa !28
  %sub = sub i64 %2, %call2
  store i64 %sub, i64* %nelem, align 8, !tbaa !28
  tail call void @impl_cache_flush_alg(i64 noundef 0, %struct.ALGORITHM* noundef nonnull %call, i8* noundef null) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare %struct.ossl_property_list_st* @ossl_prop_defn_get(%struct.ossl_lib_ctx_st* noundef, i8* noundef) local_unnamed_addr #2

declare %struct.ossl_property_list_st* @ossl_parse_property(%struct.ossl_lib_ctx_st* noundef, i8* noundef) local_unnamed_addr #2

declare i32 @ossl_prop_defn_set(%struct.ossl_lib_ctx_st* noundef, i8* noundef, %struct.ossl_property_list_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.ALGORITHM* @ossl_method_store_retrieve(%struct.ossl_method_store_st* nocapture noundef readonly %store, i32 noundef %nid) unnamed_addr #0 {
entry:
  %algs = getelementptr inbounds %struct.ossl_method_store_st, %struct.ossl_method_store_st* %store, i64 0, i32 2
  %0 = load %struct.sparse_array_st_ALGORITHM*, %struct.sparse_array_st_ALGORITHM** %algs, align 8, !tbaa !11
  %conv = sext i32 %nid to i64
  %call = tail call fastcc %struct.ALGORITHM* @ossl_sa_ALGORITHM_get(%struct.sparse_array_st_ALGORITHM* noundef %0, i64 noundef %conv) #7
  ret %struct.ALGORITHM* %call
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.stack_st_IMPLEMENTATION* @sk_IMPLEMENTATION_new_null() unnamed_addr #0 {
entry:
  %call = tail call %struct.stack_st* @OPENSSL_sk_new_null() #6
  %0 = bitcast %struct.stack_st* %call to %struct.stack_st_IMPLEMENTATION*
  ret %struct.stack_st_IMPLEMENTATION* %0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.lhash_st_QUERY* @lh_QUERY_new() unnamed_addr #0 {
entry:
  %call = tail call %struct.lhash_st* @OPENSSL_LH_new(i64 (i8*)* noundef bitcast (i64 (%struct.QUERY*)* @query_hash to i64 (i8*)*), i32 (i8*, i8*)* noundef bitcast (i32 (%struct.QUERY*, %struct.QUERY*)* @query_cmp to i32 (i8*, i8*)*)) #6
  %0 = bitcast %struct.lhash_st* %call to %struct.lhash_st_QUERY*
  ret %struct.lhash_st_QUERY* %0
}

; Function Attrs: noinline nounwind uwtable
define internal i64 @query_hash(%struct.QUERY* nocapture noundef readonly %a) #0 {
entry:
  %query = getelementptr inbounds %struct.QUERY, %struct.QUERY* %a, i64 0, i32 0
  %0 = load i8*, i8** %query, align 8, !tbaa !29
  %call = tail call i64 @OPENSSL_LH_strhash(i8* noundef %0) #6
  ret i64 %call
}

; Function Attrs: mustprogress nofree noinline nounwind readonly uwtable willreturn
define internal i32 @query_cmp(%struct.QUERY* nocapture noundef readonly %a, %struct.QUERY* nocapture noundef readonly %b) #3 {
entry:
  %query = getelementptr inbounds %struct.QUERY, %struct.QUERY* %a, i64 0, i32 0
  %0 = load i8*, i8** %query, align 8, !tbaa !29
  %query1 = getelementptr inbounds %struct.QUERY, %struct.QUERY* %b, i64 0, i32 0
  %1 = load i8*, i8** %query1, align 8, !tbaa !29
  %call = tail call i32 @strcmp(i8* noundef %0, i8* noundef %1) #8
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @ossl_method_store_insert(%struct.ossl_method_store_st* nocapture noundef readonly %store, %struct.ALGORITHM* noundef %alg) unnamed_addr #0 {
entry:
  %algs = getelementptr inbounds %struct.ossl_method_store_st, %struct.ossl_method_store_st* %store, i64 0, i32 2
  %0 = load %struct.sparse_array_st_ALGORITHM*, %struct.sparse_array_st_ALGORITHM** %algs, align 8, !tbaa !11
  %nid = getelementptr inbounds %struct.ALGORITHM, %struct.ALGORITHM* %alg, i64 0, i32 0
  %1 = load i32, i32* %nid, align 8, !tbaa !23
  %conv = sext i32 %1 to i64
  %call = tail call fastcc i32 @ossl_sa_ALGORITHM_set(%struct.sparse_array_st_ALGORITHM* noundef %0, i64 noundef %conv, %struct.ALGORITHM* noundef %alg) #7
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @sk_IMPLEMENTATION_num(%struct.stack_st_IMPLEMENTATION* noundef %sk) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.stack_st_IMPLEMENTATION* %sk to %struct.stack_st*
  %call = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %0) #6
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.IMPLEMENTATION* @sk_IMPLEMENTATION_value(%struct.stack_st_IMPLEMENTATION* noundef %sk, i32 noundef %idx) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.stack_st_IMPLEMENTATION* %sk to %struct.stack_st*
  %call = tail call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %0, i32 noundef %idx) #6
  %1 = bitcast i8* %call to %struct.IMPLEMENTATION*
  ret %struct.IMPLEMENTATION* %1
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @sk_IMPLEMENTATION_push(%struct.stack_st_IMPLEMENTATION* noundef %sk, %struct.IMPLEMENTATION* noundef %ptr) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.stack_st_IMPLEMENTATION* %sk to %struct.stack_st*
  %1 = bitcast %struct.IMPLEMENTATION* %ptr to i8*
  %call = tail call i32 @OPENSSL_sk_push(%struct.stack_st* noundef %0, i8* noundef %1) #6
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @ossl_property_unlock(%struct.ossl_method_store_st* noundef readonly %p) unnamed_addr #0 {
entry:
  %cmp.not = icmp eq %struct.ossl_method_store_st* %p, null
  br i1 %cmp.not, label %cond.end, label %cond.true

cond.true:                                        ; preds = %entry
  %lock = getelementptr inbounds %struct.ossl_method_store_st, %struct.ossl_method_store_st* %p, i64 0, i32 4
  %0 = load i8*, i8** %lock, align 8, !tbaa !12
  %call = tail call i32 @CRYPTO_THREAD_unlock(i8* noundef %0) #6
  br label %cond.end

cond.end:                                         ; preds = %entry, %cond.true
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @impl_free(%struct.IMPLEMENTATION* noundef %impl) #0 {
entry:
  %cmp.not = icmp eq %struct.IMPLEMENTATION* %impl, null
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %method = getelementptr inbounds %struct.IMPLEMENTATION, %struct.IMPLEMENTATION* %impl, i64 0, i32 2
  tail call fastcc void @ossl_method_free(%struct.METHOD* noundef nonnull %method) #7
  %0 = bitcast %struct.IMPLEMENTATION* %impl to i8*
  tail call void @CRYPTO_free(i8* noundef nonnull %0, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 noundef 182) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_method_store_remove(%struct.ossl_method_store_st* noundef %store, i32 noundef %nid, i8* noundef readnone %method) local_unnamed_addr #0 {
entry:
  %cmp = icmp slt i32 %nid, 1
  %cmp1 = icmp eq i8* %method, null
  %or.cond = or i1 %cmp, %cmp1
  %cmp3 = icmp eq %struct.ossl_method_store_st* %store, null
  %or.cond26 = or i1 %cmp3, %or.cond
  br i1 %or.cond26, label %cleanup24, label %if.end

if.end:                                           ; preds = %entry
  %call = tail call fastcc i32 @ossl_property_write_lock(%struct.ossl_method_store_st* noundef nonnull %store) #7
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %cleanup24, label %if.end5

if.end5:                                          ; preds = %if.end
  tail call fastcc void @ossl_method_cache_flush(%struct.ossl_method_store_st* noundef nonnull %store, i32 noundef %nid) #7
  %call6 = tail call fastcc %struct.ALGORITHM* @ossl_method_store_retrieve(%struct.ossl_method_store_st* noundef nonnull %store, i32 noundef %nid) #7
  %cmp7 = icmp eq %struct.ALGORITHM* %call6, null
  br i1 %cmp7, label %if.then8, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end5
  %impls = getelementptr inbounds %struct.ALGORITHM, %struct.ALGORITHM* %call6, i64 0, i32 1
  %0 = load %struct.stack_st_IMPLEMENTATION*, %struct.stack_st_IMPLEMENTATION** %impls, align 8, !tbaa !13
  %call1148 = tail call fastcc i32 @sk_IMPLEMENTATION_num(%struct.stack_st_IMPLEMENTATION* noundef %0) #7
  %cmp1249 = icmp sgt i32 %call1148, 0
  br i1 %cmp1249, label %for.body, label %for.end

if.then8:                                         ; preds = %if.end5
  tail call fastcc void @ossl_property_unlock(%struct.ossl_method_store_st* noundef nonnull %store) #7
  br label %cleanup24

for.body:                                         ; preds = %for.cond.preheader, %for.inc
  %i.050 = phi i32 [ %inc, %for.inc ], [ 0, %for.cond.preheader ]
  %1 = load %struct.stack_st_IMPLEMENTATION*, %struct.stack_st_IMPLEMENTATION** %impls, align 8, !tbaa !13
  %call14 = tail call fastcc %struct.IMPLEMENTATION* @sk_IMPLEMENTATION_value(%struct.stack_st_IMPLEMENTATION* noundef %1, i32 noundef %i.050) #7
  %method16 = getelementptr inbounds %struct.IMPLEMENTATION, %struct.IMPLEMENTATION* %call14, i64 0, i32 2, i32 0
  %2 = load i8*, i8** %method16, align 8, !tbaa !16
  %cmp17 = icmp eq i8* %2, %method
  br i1 %cmp17, label %if.then18, label %for.inc

if.then18:                                        ; preds = %for.body
  tail call void @impl_free(%struct.IMPLEMENTATION* noundef nonnull %call14) #7
  %3 = load %struct.stack_st_IMPLEMENTATION*, %struct.stack_st_IMPLEMENTATION** %impls, align 8, !tbaa !13
  tail call fastcc void @sk_IMPLEMENTATION_delete(%struct.stack_st_IMPLEMENTATION* noundef %3, i32 noundef %i.050) #7
  tail call fastcc void @ossl_property_unlock(%struct.ossl_method_store_st* noundef %store) #7
  br label %cleanup24

for.inc:                                          ; preds = %for.body
  %inc = add nuw nsw i32 %i.050, 1
  %4 = load %struct.stack_st_IMPLEMENTATION*, %struct.stack_st_IMPLEMENTATION** %impls, align 8, !tbaa !13
  %call11 = tail call fastcc i32 @sk_IMPLEMENTATION_num(%struct.stack_st_IMPLEMENTATION* noundef %4) #7
  %cmp12 = icmp slt i32 %inc, %call11
  br i1 %cmp12, label %for.body, label %for.end, !llvm.loop !31

for.end:                                          ; preds = %for.inc, %for.cond.preheader
  tail call fastcc void @ossl_property_unlock(%struct.ossl_method_store_st* noundef %store) #7
  br label %cleanup24

cleanup24:                                        ; preds = %if.then18, %if.end, %entry, %for.end, %if.then8
  %retval.2 = phi i32 [ 0, %if.then8 ], [ 1, %if.then18 ], [ 0, %for.end ], [ 0, %entry ], [ 0, %if.end ]
  ret i32 %retval.2
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @sk_IMPLEMENTATION_delete(%struct.stack_st_IMPLEMENTATION* noundef %sk, i32 noundef %i) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.stack_st_IMPLEMENTATION* %sk to %struct.stack_st*
  %call = tail call i8* @OPENSSL_sk_delete(%struct.stack_st* noundef %0, i32 noundef %i) #6
  ret void
}

; Function Attrs: noinline nounwind uwtable
define void @ossl_method_store_do_all(%struct.ossl_method_store_st* noundef readonly %store, void (i32, i8*, i8*)* noundef %fn, i8* noundef %fnarg) local_unnamed_addr #0 {
entry:
  %data = alloca %struct.alg_do_each_data_st, align 8
  %0 = bitcast %struct.alg_do_each_data_st* %data to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #9
  %fn1 = getelementptr inbounds %struct.alg_do_each_data_st, %struct.alg_do_each_data_st* %data, i64 0, i32 0
  store void (i32, i8*, i8*)* %fn, void (i32, i8*, i8*)** %fn1, align 8, !tbaa !32
  %fnarg2 = getelementptr inbounds %struct.alg_do_each_data_st, %struct.alg_do_each_data_st* %data, i64 0, i32 1
  store i8* %fnarg, i8** %fnarg2, align 8, !tbaa !34
  %cmp.not = icmp eq %struct.ossl_method_store_st* %store, null
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %algs = getelementptr inbounds %struct.ossl_method_store_st, %struct.ossl_method_store_st* %store, i64 0, i32 2
  %1 = load %struct.sparse_array_st_ALGORITHM*, %struct.sparse_array_st_ALGORITHM** %algs, align 8, !tbaa !11
  call fastcc void @ossl_sa_ALGORITHM_doall_arg(%struct.sparse_array_st_ALGORITHM* noundef %1, void (i64, %struct.ALGORITHM*, i8*)* noundef nonnull @alg_do_each, i8* noundef nonnull %0) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #9
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @ossl_sa_ALGORITHM_doall_arg(%struct.sparse_array_st_ALGORITHM* noundef %sa, void (i64, %struct.ALGORITHM*, i8*)* noundef %leaf, i8* noundef %arg) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.sparse_array_st_ALGORITHM* %sa to %struct.sparse_array_st*
  %1 = bitcast void (i64, %struct.ALGORITHM*, i8*)* %leaf to void (i64, i8*, i8*)*
  tail call void @ossl_sa_doall_arg(%struct.sparse_array_st* noundef %0, void (i64, i8*, i8*)* noundef %1, i8* noundef %arg) #6
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @alg_do_each(i64 noundef %idx, %struct.ALGORITHM* nocapture noundef readonly %alg, i8* nocapture noundef readonly %arg) #0 {
entry:
  %impls = getelementptr inbounds %struct.ALGORITHM, %struct.ALGORITHM* %alg, i64 0, i32 1
  %0 = load %struct.stack_st_IMPLEMENTATION*, %struct.stack_st_IMPLEMENTATION** %impls, align 8, !tbaa !13
  %call = tail call fastcc i32 @sk_IMPLEMENTATION_num(%struct.stack_st_IMPLEMENTATION* noundef %0) #7
  %cmp12 = icmp sgt i32 %call, 0
  br i1 %cmp12, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %fn = bitcast i8* %arg to void (i32, i8*, i8*)**
  %fnarg = getelementptr inbounds i8, i8* %arg, i64 8
  %1 = bitcast i8* %fnarg to i8**
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %i.013 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body ]
  %2 = load %struct.stack_st_IMPLEMENTATION*, %struct.stack_st_IMPLEMENTATION** %impls, align 8, !tbaa !13
  %call2 = tail call fastcc %struct.IMPLEMENTATION* @sk_IMPLEMENTATION_value(%struct.stack_st_IMPLEMENTATION* noundef %2, i32 noundef %i.013) #7
  %3 = load void (i32, i8*, i8*)*, void (i32, i8*, i8*)** %fn, align 8, !tbaa !32
  %4 = load i8*, i8** %1, align 8, !tbaa !34
  tail call fastcc void @alg_do_one(%struct.ALGORITHM* noundef nonnull %alg, %struct.IMPLEMENTATION* noundef %call2, void (i32, i8*, i8*)* noundef %3, i8* noundef %4) #7
  %inc = add nuw nsw i32 %i.013, 1
  %exitcond.not = icmp eq i32 %inc, %call
  br i1 %exitcond.not, label %for.end, label %for.body, !llvm.loop !35

for.end:                                          ; preds = %for.body, %entry
  ret void
}

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_method_store_fetch(%struct.ossl_method_store_st* noundef %store, i32 noundef %nid, i8* noundef %prop_query, i8** noundef writeonly %method) local_unnamed_addr #0 {
entry:
  %call = tail call i32 @OPENSSL_init_crypto(i64 noundef 64, %struct.ossl_init_settings_st* noundef null) #6
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %cmp = icmp slt i32 %nid, 1
  %cmp1 = icmp eq i8** %method, null
  %or.cond = or i1 %cmp, %cmp1
  %cmp3 = icmp eq %struct.ossl_method_store_st* %store, null
  %or.cond73 = or i1 %cmp3, %or.cond
  br i1 %or.cond73, label %cleanup, label %if.end5

if.end5:                                          ; preds = %if.end
  %call6 = tail call fastcc i32 @ossl_property_read_lock(%struct.ossl_method_store_st* noundef nonnull %store) #7
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %cleanup, label %if.end9

if.end9:                                          ; preds = %if.end5
  %call10 = tail call fastcc %struct.ALGORITHM* @ossl_method_store_retrieve(%struct.ossl_method_store_st* noundef nonnull %store, i32 noundef %nid) #7
  %cmp11 = icmp eq %struct.ALGORITHM* %call10, null
  br i1 %cmp11, label %if.then12, label %if.end14

if.then12:                                        ; preds = %if.end9
  tail call fastcc void @ossl_property_unlock(%struct.ossl_method_store_st* noundef nonnull %store) #7
  br label %cleanup

if.end14:                                         ; preds = %if.end9
  %cmp15.not = icmp eq i8* %prop_query, null
  br i1 %cmp15.not, label %if.end18, label %if.then16

if.then16:                                        ; preds = %if.end14
  %ctx = getelementptr inbounds %struct.ossl_method_store_st, %struct.ossl_method_store_st* %store, i64 0, i32 0
  %0 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** %ctx, align 8, !tbaa !4
  %call17 = tail call %struct.ossl_property_list_st* @ossl_parse_query(%struct.ossl_lib_ctx_st* noundef %0, i8* noundef nonnull %prop_query, i32 noundef 0) #6
  br label %if.end18

if.end18:                                         ; preds = %if.then16, %if.end14
  %p2.0 = phi %struct.ossl_property_list_st* [ %call17, %if.then16 ], [ null, %if.end14 ]
  %ctx19 = getelementptr inbounds %struct.ossl_method_store_st, %struct.ossl_method_store_st* %store, i64 0, i32 0
  %1 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** %ctx19, align 8, !tbaa !4
  %call20 = tail call %struct.ossl_property_list_st** @ossl_ctx_global_properties(%struct.ossl_lib_ctx_st* noundef %1, i32 noundef 0) #7
  %cmp21.not = icmp eq %struct.ossl_property_list_st** %call20, null
  br i1 %cmp21.not, label %if.end31, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end18
  %2 = load %struct.ossl_property_list_st*, %struct.ossl_property_list_st** %call20, align 8, !tbaa !36
  %cmp22.not = icmp eq %struct.ossl_property_list_st* %2, null
  br i1 %cmp22.not, label %if.end31, label %if.then23

if.then23:                                        ; preds = %land.lhs.true
  %cmp24 = icmp eq %struct.ossl_property_list_st* %p2.0, null
  br i1 %cmp24, label %if.end39, label %if.else

if.else:                                          ; preds = %if.then23
  %call26 = tail call %struct.ossl_property_list_st* @ossl_property_merge(%struct.ossl_property_list_st* noundef nonnull %p2.0, %struct.ossl_property_list_st* noundef nonnull %2) #6
  tail call void @ossl_property_free(%struct.ossl_property_list_st* noundef nonnull %p2.0) #6
  %cmp27 = icmp eq %struct.ossl_property_list_st* %call26, null
  br i1 %cmp27, label %if.end61, label %if.end39

if.end31:                                         ; preds = %land.lhs.true, %if.end18
  %cmp32 = icmp eq %struct.ossl_property_list_st* %p2.0, null
  br i1 %cmp32, label %if.then33, label %if.end39

if.then33:                                        ; preds = %if.end31
  %impls = getelementptr inbounds %struct.ALGORITHM, %struct.ALGORITHM* %call10, i64 0, i32 1
  %3 = load %struct.stack_st_IMPLEMENTATION*, %struct.stack_st_IMPLEMENTATION** %impls, align 8, !tbaa !13
  %call34 = tail call fastcc %struct.IMPLEMENTATION* @sk_IMPLEMENTATION_value(%struct.stack_st_IMPLEMENTATION* noundef %3, i32 noundef 0) #7
  %cmp35.not = icmp eq %struct.IMPLEMENTATION* %call34, null
  %method37 = getelementptr inbounds %struct.IMPLEMENTATION, %struct.IMPLEMENTATION* %call34, i64 0, i32 2
  br i1 %cmp35.not, label %if.end61, label %land.lhs.true55

if.end39:                                         ; preds = %if.else, %if.then23, %if.end31
  %p2.1119 = phi %struct.ossl_property_list_st* [ %p2.0, %if.end31 ], [ %call26, %if.else ], [ null, %if.then23 ]
  %pq.1118 = phi %struct.ossl_property_list_st* [ %p2.0, %if.end31 ], [ %call26, %if.else ], [ %2, %if.then23 ]
  %call40 = tail call i32 @ossl_property_has_optional(%struct.ossl_property_list_st* noundef nonnull %pq.1118) #6
  %impls41 = getelementptr inbounds %struct.ALGORITHM, %struct.ALGORITHM* %call10, i64 0, i32 1
  %4 = load %struct.stack_st_IMPLEMENTATION*, %struct.stack_st_IMPLEMENTATION** %impls41, align 8, !tbaa !13
  %call42136 = tail call fastcc i32 @sk_IMPLEMENTATION_num(%struct.stack_st_IMPLEMENTATION* noundef %4) #7
  %cmp43137 = icmp sgt i32 %call42136, 0
  br i1 %cmp43137, label %for.body.lr.ph, label %if.end61

for.body.lr.ph:                                   ; preds = %if.end39
  %tobool50.not = icmp eq i32 %call40, 0
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %best.0141 = phi i32 [ -1, %for.body.lr.ph ], [ %best.1, %for.inc ]
  %j.0140 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc ]
  %ret.0139 = phi i32 [ 0, %for.body.lr.ph ], [ %ret.1, %for.inc ]
  %best_method.0138 = phi %struct.METHOD* [ null, %for.body.lr.ph ], [ %best_method.1, %for.inc ]
  %5 = load %struct.stack_st_IMPLEMENTATION*, %struct.stack_st_IMPLEMENTATION** %impls41, align 8, !tbaa !13
  %call45 = tail call fastcc %struct.IMPLEMENTATION* @sk_IMPLEMENTATION_value(%struct.stack_st_IMPLEMENTATION* noundef %5, i32 noundef %j.0140) #7
  %properties = getelementptr inbounds %struct.IMPLEMENTATION, %struct.IMPLEMENTATION* %call45, i64 0, i32 1
  %6 = load %struct.ossl_property_list_st*, %struct.ossl_property_list_st** %properties, align 8, !tbaa !22
  %call46 = tail call i32 @ossl_property_match_count(%struct.ossl_property_list_st* noundef nonnull %pq.1118, %struct.ossl_property_list_st* noundef %6) #6
  %cmp47 = icmp sgt i32 %call46, %best.0141
  br i1 %cmp47, label %if.then48, label %for.inc

if.then48:                                        ; preds = %for.body
  %method49 = getelementptr inbounds %struct.IMPLEMENTATION, %struct.IMPLEMENTATION* %call45, i64 0, i32 2
  br i1 %tobool50.not, label %land.lhs.true55, label %for.inc

for.inc:                                          ; preds = %for.body, %if.then48
  %best_method.1 = phi %struct.METHOD* [ %method49, %if.then48 ], [ %best_method.0138, %for.body ]
  %ret.1 = phi i32 [ 1, %if.then48 ], [ %ret.0139, %for.body ]
  %best.1 = phi i32 [ %call46, %if.then48 ], [ %best.0141, %for.body ]
  %inc = add nuw nsw i32 %j.0140, 1
  %7 = load %struct.stack_st_IMPLEMENTATION*, %struct.stack_st_IMPLEMENTATION** %impls41, align 8, !tbaa !13
  %call42 = tail call fastcc i32 @sk_IMPLEMENTATION_num(%struct.stack_st_IMPLEMENTATION* noundef %7) #7
  %cmp43 = icmp slt i32 %inc, %call42
  br i1 %cmp43, label %for.body, label %fin, !llvm.loop !37

fin:                                              ; preds = %for.inc
  %tobool54.not = icmp eq i32 %ret.1, 0
  br i1 %tobool54.not, label %if.end61, label %land.lhs.true55

land.lhs.true55:                                  ; preds = %if.then48, %if.then33, %fin
  %best_method.2133 = phi %struct.METHOD* [ %best_method.1, %fin ], [ %method37, %if.then33 ], [ %method49, %if.then48 ]
  %p2.2132 = phi %struct.ossl_property_list_st* [ %p2.1119, %fin ], [ null, %if.then33 ], [ %p2.1119, %if.then48 ]
  %call56 = tail call fastcc i32 @ossl_method_up_ref(%struct.METHOD* noundef %best_method.2133) #7
  %tobool57.not = icmp eq i32 %call56, 0
  br i1 %tobool57.not, label %if.end61, label %if.then58

if.then58:                                        ; preds = %land.lhs.true55
  %method59 = getelementptr inbounds %struct.METHOD, %struct.METHOD* %best_method.2133, i64 0, i32 0
  %8 = load i8*, i8** %method59, align 8, !tbaa !27
  store i8* %8, i8** %method, align 8, !tbaa !36
  br label %if.end61

if.end61:                                         ; preds = %if.end39, %if.then33, %if.else, %fin, %land.lhs.true55, %if.then58
  %p2.2124 = phi %struct.ossl_property_list_st* [ %p2.2132, %if.then58 ], [ %p2.2132, %land.lhs.true55 ], [ %p2.1119, %fin ], [ null, %if.else ], [ null, %if.then33 ], [ %p2.1119, %if.end39 ]
  %ret.3 = phi i32 [ 1, %if.then58 ], [ 0, %land.lhs.true55 ], [ 0, %fin ], [ 0, %if.else ], [ 0, %if.then33 ], [ 0, %if.end39 ]
  tail call fastcc void @ossl_property_unlock(%struct.ossl_method_store_st* noundef %store) #7
  tail call void @ossl_property_free(%struct.ossl_property_list_st* noundef %p2.2124) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end, %entry, %if.end61, %if.then12
  %retval.0 = phi i32 [ 0, %if.then12 ], [ %ret.3, %if.end61 ], [ 0, %entry ], [ 0, %if.end ], [ 0, %if.end5 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @ossl_property_read_lock(%struct.ossl_method_store_st* noundef readonly %p) unnamed_addr #0 {
entry:
  %cmp.not = icmp eq %struct.ossl_method_store_st* %p, null
  br i1 %cmp.not, label %cond.end, label %cond.true

cond.true:                                        ; preds = %entry
  %lock = getelementptr inbounds %struct.ossl_method_store_st, %struct.ossl_method_store_st* %p, i64 0, i32 4
  %0 = load i8*, i8** %lock, align 8, !tbaa !12
  %call = tail call i32 @CRYPTO_THREAD_read_lock(i8* noundef %0) #6
  br label %cond.end

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ 0, %entry ]
  ret i32 %cond
}

declare %struct.ossl_property_list_st* @ossl_parse_query(%struct.ossl_lib_ctx_st* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare %struct.ossl_property_list_st* @ossl_property_merge(%struct.ossl_property_list_st* noundef, %struct.ossl_property_list_st* noundef) local_unnamed_addr #2

declare void @ossl_property_free(%struct.ossl_property_list_st* noundef) local_unnamed_addr #2

declare i32 @ossl_property_has_optional(%struct.ossl_property_list_st* noundef) local_unnamed_addr #2

declare i32 @ossl_property_match_count(%struct.ossl_property_list_st* noundef, %struct.ossl_property_list_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_method_store_flush_cache(%struct.ossl_method_store_st* noundef %store, i32 noundef %all) local_unnamed_addr #0 {
entry:
  %cmp.not = icmp eq i32 %all, 0
  br i1 %cmp.not, label %cond.end, label %cond.true

cond.true:                                        ; preds = %entry
  %algs = getelementptr inbounds %struct.ossl_method_store_st, %struct.ossl_method_store_st* %store, i64 0, i32 2
  %0 = bitcast %struct.sparse_array_st_ALGORITHM** %algs to i8**
  %1 = load i8*, i8** %0, align 8, !tbaa !11
  br label %cond.end

cond.end:                                         ; preds = %entry, %cond.true
  %2 = phi i8* [ %1, %cond.true ], [ null, %entry ]
  %call = tail call fastcc i32 @ossl_property_write_lock(%struct.ossl_method_store_st* noundef %store) #7
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %cond.end
  %ctx = getelementptr inbounds %struct.ossl_method_store_st, %struct.ossl_method_store_st* %store, i64 0, i32 0
  %3 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** %ctx, align 8, !tbaa !4
  %call1 = tail call i32 @ossl_provider_clear_all_operation_bits(%struct.ossl_lib_ctx_st* noundef %3) #6
  %algs2 = getelementptr inbounds %struct.ossl_method_store_st, %struct.ossl_method_store_st* %store, i64 0, i32 2
  %4 = load %struct.sparse_array_st_ALGORITHM*, %struct.sparse_array_st_ALGORITHM** %algs2, align 8, !tbaa !11
  tail call fastcc void @ossl_sa_ALGORITHM_doall_arg(%struct.sparse_array_st_ALGORITHM* noundef %4, void (i64, %struct.ALGORITHM*, i8*)* noundef nonnull @impl_cache_flush_alg, i8* noundef %2) #7
  %nelem = getelementptr inbounds %struct.ossl_method_store_st, %struct.ossl_method_store_st* %store, i64 0, i32 1
  store i64 0, i64* %nelem, align 8, !tbaa !28
  tail call fastcc void @ossl_property_unlock(%struct.ossl_method_store_st* noundef %store) #7
  br label %cleanup

cleanup:                                          ; preds = %cond.end, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %cond.end ]
  ret i32 %retval.0
}

declare i32 @ossl_provider_clear_all_operation_bits(%struct.ossl_lib_ctx_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal void @impl_cache_flush_alg(i64 noundef %idx, %struct.ALGORITHM* noundef %alg, i8* noundef %arg) #0 {
entry:
  %cache = getelementptr inbounds %struct.ALGORITHM, %struct.ALGORITHM* %alg, i64 0, i32 2
  %0 = load %struct.lhash_st_QUERY*, %struct.lhash_st_QUERY** %cache, align 8, !tbaa !15
  tail call fastcc void @lh_QUERY_doall(%struct.lhash_st_QUERY* noundef %0) #7
  %cmp.not = icmp eq i8* %arg, null
  br i1 %cmp.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %1 = bitcast i8* %arg to %struct.sparse_array_st_ALGORITHM*
  %impls = getelementptr inbounds %struct.ALGORITHM, %struct.ALGORITHM* %alg, i64 0, i32 1
  %2 = load %struct.stack_st_IMPLEMENTATION*, %struct.stack_st_IMPLEMENTATION** %impls, align 8, !tbaa !13
  tail call fastcc void @sk_IMPLEMENTATION_pop_free(%struct.stack_st_IMPLEMENTATION* noundef %2) #7
  %3 = load %struct.lhash_st_QUERY*, %struct.lhash_st_QUERY** %cache, align 8, !tbaa !15
  tail call fastcc void @lh_QUERY_free(%struct.lhash_st_QUERY* noundef %3) #7
  %4 = bitcast %struct.ALGORITHM* %alg to i8*
  tail call void @CRYPTO_free(i8* noundef %4, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 noundef 477) #6
  %call = tail call fastcc i32 @ossl_sa_ALGORITHM_set(%struct.sparse_array_st_ALGORITHM* noundef nonnull %1, i64 noundef %idx, %struct.ALGORITHM* noundef null) #7
  br label %if.end

if.else:                                          ; preds = %entry
  %5 = load %struct.lhash_st_QUERY*, %struct.lhash_st_QUERY** %cache, align 8, !tbaa !15
  tail call fastcc void @lh_QUERY_flush(%struct.lhash_st_QUERY* noundef %5) #7
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_method_store_cache_get(%struct.ossl_method_store_st* noundef %store, i32 noundef %nid, i8* noundef %prop_query, i8** nocapture noundef writeonly %method) local_unnamed_addr #0 {
entry:
  %elem = alloca %struct.QUERY, align 8
  %0 = bitcast %struct.QUERY* %elem to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %0) #9
  %cmp = icmp slt i32 %nid, 1
  %cmp1 = icmp eq %struct.ossl_method_store_st* %store, null
  %or.cond = or i1 %cmp1, %cmp
  br i1 %or.cond, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call = tail call fastcc i32 @ossl_property_read_lock(%struct.ossl_method_store_st* noundef nonnull %store) #7
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %cleanup, label %if.end3

if.end3:                                          ; preds = %if.end
  %call4 = tail call fastcc %struct.ALGORITHM* @ossl_method_store_retrieve(%struct.ossl_method_store_st* noundef nonnull %store, i32 noundef %nid) #7
  %cmp5 = icmp eq %struct.ALGORITHM* %call4, null
  br i1 %cmp5, label %err, label %if.end7

if.end7:                                          ; preds = %if.end3
  %cmp8.not = icmp eq i8* %prop_query, null
  %cond = select i1 %cmp8.not, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8* %prop_query
  %query = getelementptr inbounds %struct.QUERY, %struct.QUERY* %elem, i64 0, i32 0
  store i8* %cond, i8** %query, align 8, !tbaa !29
  %cache = getelementptr inbounds %struct.ALGORITHM, %struct.ALGORITHM* %call4, i64 0, i32 2
  %1 = load %struct.lhash_st_QUERY*, %struct.lhash_st_QUERY** %cache, align 8, !tbaa !15
  %call9 = call fastcc %struct.QUERY* @lh_QUERY_retrieve(%struct.lhash_st_QUERY* noundef %1, %struct.QUERY* noundef nonnull %elem) #7
  %cmp10 = icmp eq %struct.QUERY* %call9, null
  br i1 %cmp10, label %err, label %if.end12

if.end12:                                         ; preds = %if.end7
  %method13 = getelementptr inbounds %struct.QUERY, %struct.QUERY* %call9, i64 0, i32 1
  %call14 = call fastcc i32 @ossl_method_up_ref(%struct.METHOD* noundef nonnull %method13) #7
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %err, label %if.then16

if.then16:                                        ; preds = %if.end12
  %method18 = getelementptr inbounds %struct.METHOD, %struct.METHOD* %method13, i64 0, i32 0
  %2 = load i8*, i8** %method18, align 8, !tbaa !38
  store i8* %2, i8** %method, align 8, !tbaa !36
  br label %err

err:                                              ; preds = %if.end12, %if.then16, %if.end7, %if.end3
  %res.0 = phi i32 [ 0, %if.end3 ], [ 0, %if.end7 ], [ 1, %if.then16 ], [ 0, %if.end12 ]
  call fastcc void @ossl_property_unlock(%struct.ossl_method_store_st* noundef nonnull %store) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry, %err
  %retval.0 = phi i32 [ %res.0, %err ], [ 0, %entry ], [ 0, %if.end ]
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %0) #9
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.QUERY* @lh_QUERY_retrieve(%struct.lhash_st_QUERY* noundef %lh, %struct.QUERY* noundef %d) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.lhash_st_QUERY* %lh to %struct.lhash_st*
  %1 = bitcast %struct.QUERY* %d to i8*
  %call = tail call i8* @OPENSSL_LH_retrieve(%struct.lhash_st* noundef %0, i8* noundef %1) #6
  %2 = bitcast i8* %call to %struct.QUERY*
  ret %struct.QUERY* %2
}

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_method_store_cache_set(%struct.ossl_method_store_st* noundef %store, i32 noundef %nid, i8* noundef %prop_query, i8* noundef %method, i32 (i8*)* noundef %method_up_ref, void (i8*)* noundef %method_destruct) local_unnamed_addr #0 {
entry:
  %elem = alloca %struct.QUERY, align 8
  %0 = bitcast %struct.QUERY* %elem to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %0) #9
  %cmp = icmp slt i32 %nid, 1
  %cmp1 = icmp eq %struct.ossl_method_store_st* %store, null
  %or.cond = or i1 %cmp1, %cmp
  br i1 %or.cond, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %cmp2 = icmp eq i8* %prop_query, null
  br i1 %cmp2, label %cleanup, label %if.end4

if.end4:                                          ; preds = %if.end
  %call = tail call fastcc i32 @ossl_property_write_lock(%struct.ossl_method_store_st* noundef nonnull %store) #7
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %cleanup, label %if.end6

if.end6:                                          ; preds = %if.end4
  %need_flush = getelementptr inbounds %struct.ossl_method_store_st, %struct.ossl_method_store_st* %store, i64 0, i32 3
  %1 = load i32, i32* %need_flush, align 8, !tbaa !39
  %tobool7.not = icmp eq i32 %1, 0
  br i1 %tobool7.not, label %if.end9, label %if.then8

if.then8:                                         ; preds = %if.end6
  tail call fastcc void @ossl_method_cache_flush_some(%struct.ossl_method_store_st* noundef nonnull %store) #7
  br label %if.end9

if.end9:                                          ; preds = %if.then8, %if.end6
  %call10 = tail call fastcc %struct.ALGORITHM* @ossl_method_store_retrieve(%struct.ossl_method_store_st* noundef nonnull %store, i32 noundef %nid) #7
  %cmp11 = icmp eq %struct.ALGORITHM* %call10, null
  br i1 %cmp11, label %err, label %if.end13

if.end13:                                         ; preds = %if.end9
  %cmp14 = icmp eq i8* %method, null
  br i1 %cmp14, label %if.then15, label %if.end20

if.then15:                                        ; preds = %if.end13
  %query = getelementptr inbounds %struct.QUERY, %struct.QUERY* %elem, i64 0, i32 0
  store i8* %prop_query, i8** %query, align 8, !tbaa !29
  %cache = getelementptr inbounds %struct.ALGORITHM, %struct.ALGORITHM* %call10, i64 0, i32 2
  %2 = load %struct.lhash_st_QUERY*, %struct.lhash_st_QUERY** %cache, align 8, !tbaa !15
  %call16 = call fastcc %struct.QUERY* @lh_QUERY_delete(%struct.lhash_st_QUERY* noundef %2, %struct.QUERY* noundef nonnull %elem) #7
  %cmp17.not = icmp eq %struct.QUERY* %call16, null
  br i1 %cmp17.not, label %end, label %if.then18

if.then18:                                        ; preds = %if.then15
  call void @impl_cache_free(%struct.QUERY* noundef nonnull %call16) #7
  %nelem = getelementptr inbounds %struct.ossl_method_store_st, %struct.ossl_method_store_st* %store, i64 0, i32 1
  %3 = load i64, i64* %nelem, align 8, !tbaa !28
  %dec = add i64 %3, -1
  store i64 %dec, i64* %nelem, align 8, !tbaa !28
  br label %end

if.end20:                                         ; preds = %if.end13
  %call21 = tail call i64 @strlen(i8* noundef nonnull %prop_query) #8
  %add = add i64 %call21, 40
  %call22 = tail call i8* @CRYPTO_malloc(i64 noundef %add, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 noundef 632) #6
  %4 = bitcast i8* %call22 to %struct.QUERY*
  %cmp23.not = icmp eq i8* %call22, null
  br i1 %cmp23.not, label %err, label %if.then24

if.then24:                                        ; preds = %if.end20
  %body = getelementptr inbounds i8, i8* %call22, i64 32
  %query25 = bitcast i8* %call22 to i8**
  store i8* %body, i8** %query25, align 8, !tbaa !29
  %method26 = getelementptr inbounds i8, i8* %call22, i64 8
  %5 = bitcast i8* %method26 to %struct.METHOD*
  %method27 = bitcast i8* %method26 to i8**
  store i8* %method, i8** %method27, align 8, !tbaa !38
  %up_ref = getelementptr inbounds i8, i8* %call22, i64 16
  %6 = bitcast i8* %up_ref to i32 (i8*)**
  store i32 (i8*)* %method_up_ref, i32 (i8*)** %6, align 8, !tbaa !40
  %free = getelementptr inbounds i8, i8* %call22, i64 24
  %7 = bitcast i8* %free to void (i8*)**
  store void (i8*)* %method_destruct, void (i8*)** %7, align 8, !tbaa !41
  %call31 = tail call fastcc i32 @ossl_method_up_ref(%struct.METHOD* noundef nonnull %5) #7
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %err, label %if.end34

if.end34:                                         ; preds = %if.then24
  %8 = load i8*, i8** %query25, align 8, !tbaa !29
  %add36 = add i64 %call21, 1
  %call37 = tail call i8* @memcpy(i8* noundef %8, i8* noundef nonnull %prop_query, i64 noundef %add36) #6
  %cache38 = getelementptr inbounds %struct.ALGORITHM, %struct.ALGORITHM* %call10, i64 0, i32 2
  %9 = load %struct.lhash_st_QUERY*, %struct.lhash_st_QUERY** %cache38, align 8, !tbaa !15
  %call39 = tail call fastcc %struct.QUERY* @lh_QUERY_insert(%struct.lhash_st_QUERY* noundef %9, %struct.QUERY* noundef nonnull %4) #7
  %cmp40.not = icmp eq %struct.QUERY* %call39, null
  br i1 %cmp40.not, label %if.end42, label %if.then41

if.then41:                                        ; preds = %if.end34
  tail call void @impl_cache_free(%struct.QUERY* noundef nonnull %call39) #7
  br label %end

if.end42:                                         ; preds = %if.end34
  %10 = load %struct.lhash_st_QUERY*, %struct.lhash_st_QUERY** %cache38, align 8, !tbaa !15
  %call44 = tail call fastcc i32 @lh_QUERY_error(%struct.lhash_st_QUERY* noundef %10) #7
  %tobool45.not = icmp eq i32 %call44, 0
  br i1 %tobool45.not, label %if.then46, label %if.end52

if.then46:                                        ; preds = %if.end42
  %nelem47 = getelementptr inbounds %struct.ossl_method_store_st, %struct.ossl_method_store_st* %store, i64 0, i32 1
  %11 = load i64, i64* %nelem47, align 8, !tbaa !28
  %inc = add i64 %11, 1
  store i64 %inc, i64* %nelem47, align 8, !tbaa !28
  %cmp48 = icmp ugt i64 %inc, 499
  br i1 %cmp48, label %if.then49, label %end

if.then49:                                        ; preds = %if.then46
  store i32 1, i32* %need_flush, align 8, !tbaa !39
  br label %end

if.end52:                                         ; preds = %if.end42
  tail call fastcc void @ossl_method_free(%struct.METHOD* noundef nonnull %5) #7
  br label %err

err:                                              ; preds = %if.end20, %if.end52, %if.then24, %if.end9
  %12 = phi i8* [ null, %if.end9 ], [ %call22, %if.end52 ], [ %call22, %if.then24 ], [ null, %if.end20 ]
  tail call void @CRYPTO_free(i8* noundef %12, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 noundef 654) #6
  br label %end

end:                                              ; preds = %if.then46, %if.then49, %if.then15, %if.then18, %err, %if.then41
  %res.0 = phi i32 [ 0, %err ], [ 1, %if.then18 ], [ 1, %if.then15 ], [ 1, %if.then41 ], [ 1, %if.then49 ], [ 1, %if.then46 ]
  call fastcc void @ossl_property_unlock(%struct.ossl_method_store_st* noundef nonnull %store) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.end, %entry, %end
  %retval.0 = phi i32 [ %res.0, %end ], [ 0, %entry ], [ 1, %if.end ], [ 0, %if.end4 ]
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %0) #9
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @ossl_method_cache_flush_some(%struct.ossl_method_store_st* nocapture noundef %store) unnamed_addr #0 {
entry:
  %state = alloca %struct.IMPL_CACHE_FLUSH, align 8
  %0 = bitcast %struct.IMPL_CACHE_FLUSH* %state to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %0) #9
  %nelem = getelementptr inbounds %struct.IMPL_CACHE_FLUSH, %struct.IMPL_CACHE_FLUSH* %state, i64 0, i32 1
  store i64 0, i64* %nelem, align 8, !tbaa !42
  %call = tail call i32 @OPENSSL_rdtsc() #6
  %cmp = icmp eq i32 %call, 0
  %spec.select = select i1 %cmp, i32 1, i32 %call
  %seed = getelementptr inbounds %struct.IMPL_CACHE_FLUSH, %struct.IMPL_CACHE_FLUSH* %state, i64 0, i32 2
  store i32 %spec.select, i32* %seed, align 8, !tbaa !44
  %ctx = getelementptr inbounds %struct.ossl_method_store_st, %struct.ossl_method_store_st* %store, i64 0, i32 0
  %1 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** %ctx, align 8, !tbaa !4
  %call2 = tail call i32 @ossl_provider_clear_all_operation_bits(%struct.ossl_lib_ctx_st* noundef %1) #6
  %need_flush = getelementptr inbounds %struct.ossl_method_store_st, %struct.ossl_method_store_st* %store, i64 0, i32 3
  store i32 0, i32* %need_flush, align 8, !tbaa !39
  %algs = getelementptr inbounds %struct.ossl_method_store_st, %struct.ossl_method_store_st* %store, i64 0, i32 2
  %2 = load %struct.sparse_array_st_ALGORITHM*, %struct.sparse_array_st_ALGORITHM** %algs, align 8, !tbaa !11
  call fastcc void @ossl_sa_ALGORITHM_doall_arg(%struct.sparse_array_st_ALGORITHM* noundef %2, void (i64, %struct.ALGORITHM*, i8*)* noundef nonnull @impl_cache_flush_one_alg, i8* noundef nonnull %0) #7
  %3 = load i64, i64* %nelem, align 8, !tbaa !42
  %nelem4 = getelementptr inbounds %struct.ossl_method_store_st, %struct.ossl_method_store_st* %store, i64 0, i32 1
  store i64 %3, i64* %nelem4, align 8, !tbaa !28
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %0) #9
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.QUERY* @lh_QUERY_delete(%struct.lhash_st_QUERY* noundef %lh, %struct.QUERY* noundef %d) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.lhash_st_QUERY* %lh to %struct.lhash_st*
  %1 = bitcast %struct.QUERY* %d to i8*
  %call = tail call i8* @OPENSSL_LH_delete(%struct.lhash_st* noundef %0, i8* noundef %1) #6
  %2 = bitcast i8* %call to %struct.QUERY*
  ret %struct.QUERY* %2
}

; Function Attrs: noinline nounwind uwtable
define internal void @impl_cache_free(%struct.QUERY* noundef %elem) #0 {
entry:
  %cmp.not = icmp eq %struct.QUERY* %elem, null
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %method = getelementptr inbounds %struct.QUERY, %struct.QUERY* %elem, i64 0, i32 1
  tail call fastcc void @ossl_method_free(%struct.METHOD* noundef nonnull %method) #7
  %0 = bitcast %struct.QUERY* %elem to i8*
  tail call void @CRYPTO_free(i8* noundef nonnull %0, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 noundef 190) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare i64 @strlen(i8* noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare i8* @memcpy(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.QUERY* @lh_QUERY_insert(%struct.lhash_st_QUERY* noundef %lh, %struct.QUERY* noundef %d) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.lhash_st_QUERY* %lh to %struct.lhash_st*
  %1 = bitcast %struct.QUERY* %d to i8*
  %call = tail call i8* @OPENSSL_LH_insert(%struct.lhash_st* noundef %0, i8* noundef %1) #6
  %2 = bitcast i8* %call to %struct.QUERY*
  ret %struct.QUERY* %2
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @lh_QUERY_error(%struct.lhash_st_QUERY* noundef %lh) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.lhash_st_QUERY* %lh to %struct.lhash_st*
  %call = tail call i32 @OPENSSL_LH_error(%struct.lhash_st* noundef %0) #6
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @ossl_method_free(%struct.METHOD* nocapture noundef readonly %method) unnamed_addr #0 {
entry:
  %free = getelementptr inbounds %struct.METHOD, %struct.METHOD* %method, i64 0, i32 2
  %0 = load void (i8*)*, void (i8*)** %free, align 8, !tbaa !45
  %method1 = getelementptr inbounds %struct.METHOD, %struct.METHOD* %method, i64 0, i32 0
  %1 = load i8*, i8** %method1, align 8, !tbaa !27
  tail call void %0(i8* noundef %1) #6
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal i8* @ossl_ctx_global_properties_new(%struct.ossl_lib_ctx_st* nocapture noundef readnone %ctx) #0 {
entry:
  %call = tail call i8* @CRYPTO_zalloc(i64 noundef 16, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 noundef 99) #6
  ret i8* %call
}

; Function Attrs: noinline nounwind uwtable
define internal void @ossl_ctx_global_properties_free(i8* noundef %vglobp) #0 {
entry:
  %cmp.not = icmp eq i8* %vglobp, null
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %list = bitcast i8* %vglobp to %struct.ossl_property_list_st**
  %0 = load %struct.ossl_property_list_st*, %struct.ossl_property_list_st** %list, align 8, !tbaa !46
  tail call void @ossl_property_free(%struct.ossl_property_list_st* noundef %0) #6
  tail call void @CRYPTO_free(i8* noundef nonnull %vglobp, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 noundef 93) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare %struct.sparse_array_st* @ossl_sa_new() local_unnamed_addr #2

declare void @ossl_sa_free(%struct.sparse_array_st* noundef) local_unnamed_addr #2

declare void @ossl_sa_doall(%struct.sparse_array_st* noundef, void (i64, i8*)* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @sk_IMPLEMENTATION_pop_free(%struct.stack_st_IMPLEMENTATION* noundef %sk) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.stack_st_IMPLEMENTATION* %sk to %struct.stack_st*
  tail call void @OPENSSL_sk_pop_free(%struct.stack_st* noundef %0, void (i8*)* noundef bitcast (void (%struct.IMPLEMENTATION*)* @impl_free to void (i8*)*)) #6
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @lh_QUERY_doall(%struct.lhash_st_QUERY* noundef %lh) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.lhash_st_QUERY* %lh to %struct.lhash_st*
  tail call void @OPENSSL_LH_doall(%struct.lhash_st* noundef %0, void (i8*)* noundef bitcast (void (%struct.QUERY*)* @impl_cache_free to void (i8*)*)) #6
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @lh_QUERY_free(%struct.lhash_st_QUERY* noundef %lh) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.lhash_st_QUERY* %lh to %struct.lhash_st*
  tail call void @OPENSSL_LH_free(%struct.lhash_st* noundef %0) #6
  ret void
}

declare void @OPENSSL_sk_pop_free(%struct.stack_st* noundef, void (i8*)* noundef) local_unnamed_addr #2

declare void @OPENSSL_LH_doall(%struct.lhash_st* noundef, void (i8*)* noundef) local_unnamed_addr #2

declare void @OPENSSL_LH_free(%struct.lhash_st* noundef) local_unnamed_addr #2

declare i32 @CRYPTO_THREAD_write_lock(i8* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.ALGORITHM* @ossl_sa_ALGORITHM_get(%struct.sparse_array_st_ALGORITHM* noundef %sa, i64 noundef %n) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.sparse_array_st_ALGORITHM* %sa to %struct.sparse_array_st*
  %call = tail call i8* @ossl_sa_get(%struct.sparse_array_st* noundef %0, i64 noundef %n) #6
  %1 = bitcast i8* %call to %struct.ALGORITHM*
  ret %struct.ALGORITHM* %1
}

declare i8* @ossl_sa_get(%struct.sparse_array_st* noundef, i64 noundef) local_unnamed_addr #2

declare %struct.stack_st* @OPENSSL_sk_new_null() local_unnamed_addr #2

declare %struct.lhash_st* @OPENSSL_LH_new(i64 (i8*)* noundef, i32 (i8*, i8*)* noundef) local_unnamed_addr #2

declare i64 @OPENSSL_LH_strhash(i8* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare i32 @strcmp(i8* noundef, i8* noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @ossl_sa_ALGORITHM_set(%struct.sparse_array_st_ALGORITHM* noundef %sa, i64 noundef %n, %struct.ALGORITHM* noundef %val) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.sparse_array_st_ALGORITHM* %sa to %struct.sparse_array_st*
  %1 = bitcast %struct.ALGORITHM* %val to i8*
  %call = tail call i32 @ossl_sa_set(%struct.sparse_array_st* noundef %0, i64 noundef %n, i8* noundef %1) #6
  ret i32 %call
}

declare i32 @ossl_sa_set(%struct.sparse_array_st* noundef, i64 noundef, i8* noundef) local_unnamed_addr #2

declare i32 @OPENSSL_sk_num(%struct.stack_st* noundef) local_unnamed_addr #2

declare i8* @OPENSSL_sk_value(%struct.stack_st* noundef, i32 noundef) local_unnamed_addr #2

declare i32 @OPENSSL_sk_push(%struct.stack_st* noundef, i8* noundef) local_unnamed_addr #2

declare i32 @CRYPTO_THREAD_unlock(i8* noundef) local_unnamed_addr #2

declare i8* @OPENSSL_sk_delete(%struct.stack_st* noundef, i32 noundef) local_unnamed_addr #2

declare void @ossl_sa_doall_arg(%struct.sparse_array_st* noundef, void (i64, i8*, i8*)* noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @alg_do_one(%struct.ALGORITHM* nocapture noundef readonly %alg, %struct.IMPLEMENTATION* nocapture noundef readonly %impl, void (i32, i8*, i8*)* nocapture noundef readonly %fn, i8* noundef %fnarg) unnamed_addr #0 {
entry:
  %nid = getelementptr inbounds %struct.ALGORITHM, %struct.ALGORITHM* %alg, i64 0, i32 0
  %0 = load i32, i32* %nid, align 8, !tbaa !23
  %method1 = getelementptr inbounds %struct.IMPLEMENTATION, %struct.IMPLEMENTATION* %impl, i64 0, i32 2, i32 0
  %1 = load i8*, i8** %method1, align 8, !tbaa !16
  tail call void %fn(i32 noundef %0, i8* noundef %1, i8* noundef %fnarg) #6
  ret void
}

declare i32 @CRYPTO_THREAD_read_lock(i8* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc i64 @lh_QUERY_num_items(%struct.lhash_st_QUERY* noundef %lh) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.lhash_st_QUERY* %lh to %struct.lhash_st*
  %call = tail call i64 @OPENSSL_LH_num_items(%struct.lhash_st* noundef %0) #6
  ret i64 %call
}

declare i64 @OPENSSL_LH_num_items(%struct.lhash_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @lh_QUERY_flush(%struct.lhash_st_QUERY* noundef %lh) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.lhash_st_QUERY* %lh to %struct.lhash_st*
  tail call void @OPENSSL_LH_flush(%struct.lhash_st* noundef %0) #6
  ret void
}

declare void @OPENSSL_LH_flush(%struct.lhash_st* noundef) local_unnamed_addr #2

declare i8* @OPENSSL_LH_retrieve(%struct.lhash_st* noundef, i8* noundef) local_unnamed_addr #2

declare i32 @OPENSSL_rdtsc() local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal void @impl_cache_flush_one_alg(i64 noundef %idx, %struct.ALGORITHM* nocapture noundef readonly %alg, i8* noundef %v) #0 {
entry:
  %0 = bitcast i8* %v to %struct.IMPL_CACHE_FLUSH*
  %cache = getelementptr inbounds %struct.ALGORITHM, %struct.ALGORITHM* %alg, i64 0, i32 2
  %1 = load %struct.lhash_st_QUERY*, %struct.lhash_st_QUERY** %cache, align 8, !tbaa !15
  %cache1 = bitcast i8* %v to %struct.lhash_st_QUERY**
  store %struct.lhash_st_QUERY* %1, %struct.lhash_st_QUERY** %cache1, align 8, !tbaa !48
  tail call fastcc void @lh_QUERY_doall_IMPL_CACHE_FLUSH(%struct.lhash_st_QUERY* noundef %1, %struct.IMPL_CACHE_FLUSH* noundef %0) #7
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @lh_QUERY_doall_IMPL_CACHE_FLUSH(%struct.lhash_st_QUERY* noundef %lh, %struct.IMPL_CACHE_FLUSH* noundef %arg) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.lhash_st_QUERY* %lh to %struct.lhash_st*
  %1 = bitcast %struct.IMPL_CACHE_FLUSH* %arg to i8*
  tail call void @OPENSSL_LH_doall_arg(%struct.lhash_st* noundef %0, void (i8*, i8*)* noundef bitcast (void (%struct.QUERY*, %struct.IMPL_CACHE_FLUSH*)* @impl_cache_flush_cache to void (i8*, i8*)*), i8* noundef %1) #6
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @impl_cache_flush_cache(%struct.QUERY* noundef %c, %struct.IMPL_CACHE_FLUSH* nocapture noundef %state) #0 {
entry:
  %seed = getelementptr inbounds %struct.IMPL_CACHE_FLUSH, %struct.IMPL_CACHE_FLUSH* %state, i64 0, i32 2
  %0 = load i32, i32* %seed, align 8, !tbaa !44
  %shl = shl i32 %0, 13
  %xor = xor i32 %shl, %0
  %shr = lshr i32 %xor, 17
  %xor1 = xor i32 %shr, %xor
  %shl2 = shl i32 %xor1, 5
  %xor3 = xor i32 %shl2, %xor1
  store i32 %xor3, i32* %seed, align 8, !tbaa !44
  %and = and i32 %xor1, 1
  %cmp.not = icmp eq i32 %and, 0
  br i1 %cmp.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %cache = getelementptr inbounds %struct.IMPL_CACHE_FLUSH, %struct.IMPL_CACHE_FLUSH* %state, i64 0, i32 0
  %1 = load %struct.lhash_st_QUERY*, %struct.lhash_st_QUERY** %cache, align 8, !tbaa !48
  %call = tail call fastcc %struct.QUERY* @lh_QUERY_delete(%struct.lhash_st_QUERY* noundef %1, %struct.QUERY* noundef %c) #7
  tail call void @impl_cache_free(%struct.QUERY* noundef %call) #7
  br label %if.end

if.else:                                          ; preds = %entry
  %nelem = getelementptr inbounds %struct.IMPL_CACHE_FLUSH, %struct.IMPL_CACHE_FLUSH* %state, i64 0, i32 1
  %2 = load i64, i64* %nelem, align 8, !tbaa !42
  %inc = add i64 %2, 1
  store i64 %inc, i64* %nelem, align 8, !tbaa !42
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

declare void @OPENSSL_LH_doall_arg(%struct.lhash_st* noundef, void (i8*, i8*)* noundef, i8* noundef) local_unnamed_addr #2

declare i8* @OPENSSL_LH_delete(%struct.lhash_st* noundef, i8* noundef) local_unnamed_addr #2

declare i8* @OPENSSL_LH_insert(%struct.lhash_st* noundef, i8* noundef) local_unnamed_addr #2

declare i32 @OPENSSL_LH_error(%struct.lhash_st* noundef) local_unnamed_addr #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline nounwind readonly uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nobuiltin nounwind "no-builtins" }
attributes #7 = { nobuiltin "no-builtins" }
attributes #8 = { nobuiltin nounwind readonly willreturn "no-builtins" }
attributes #9 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{!"clang version 14.0.0"}
!4 = !{!5, !6, i64 0}
!5 = !{!"ossl_method_store_st", !6, i64 0, !9, i64 8, !6, i64 16, !10, i64 24, !6, i64 32}
!6 = !{!"any pointer", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!"long", !7, i64 0}
!10 = !{!"int", !7, i64 0}
!11 = !{!5, !6, i64 16}
!12 = !{!5, !6, i64 32}
!13 = !{!14, !6, i64 8}
!14 = !{!"", !10, i64 0, !6, i64 8, !6, i64 16}
!15 = !{!14, !6, i64 16}
!16 = !{!17, !6, i64 16}
!17 = !{!"", !6, i64 0, !6, i64 8, !18, i64 16}
!18 = !{!"", !6, i64 0, !6, i64 8, !6, i64 16}
!19 = !{!17, !6, i64 24}
!20 = !{!17, !6, i64 32}
!21 = !{!17, !6, i64 0}
!22 = !{!17, !6, i64 8}
!23 = !{!14, !10, i64 0}
!24 = distinct !{!24, !25}
!25 = !{!"llvm.loop.mustprogress"}
!26 = !{!18, !6, i64 8}
!27 = !{!18, !6, i64 0}
!28 = !{!5, !9, i64 8}
!29 = !{!30, !6, i64 0}
!30 = !{!"", !6, i64 0, !18, i64 8, !7, i64 32}
!31 = distinct !{!31, !25}
!32 = !{!33, !6, i64 0}
!33 = !{!"alg_do_each_data_st", !6, i64 0, !6, i64 8}
!34 = !{!33, !6, i64 8}
!35 = distinct !{!35, !25}
!36 = !{!6, !6, i64 0}
!37 = distinct !{!37, !25}
!38 = !{!30, !6, i64 8}
!39 = !{!5, !10, i64 24}
!40 = !{!30, !6, i64 16}
!41 = !{!30, !6, i64 24}
!42 = !{!43, !9, i64 8}
!43 = !{!"", !6, i64 0, !9, i64 8, !10, i64 16}
!44 = !{!43, !10, i64 16}
!45 = !{!18, !6, i64 16}
!46 = !{!47, !6, i64 0}
!47 = !{!"ossl_global_properties_st", !6, i64 0, !10, i64 8}
!48 = !{!43, !6, i64 0}
