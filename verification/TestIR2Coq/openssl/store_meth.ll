; ModuleID = 'crypto/store/store_meth.c'
source_filename = "crypto/store/store_meth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ossl_method_construct_method_st = type { i8* (i8*)*, i8* (i8*, i8*)*, i32 (i8*, i8*, %struct.ossl_provider_st*, i8*, i8*, i8*)*, i8* (%struct.ossl_algorithm_st*, %struct.ossl_provider_st*, i8*)*, void (i8*, i8*)* }
%struct.ossl_provider_st = type opaque
%struct.ossl_algorithm_st = type { i8*, i8*, %struct.ossl_dispatch_st*, i8* }
%struct.ossl_dispatch_st = type { i32, void ()* }
%struct.ossl_lib_ctx_method = type { i32, i8* (%struct.ossl_lib_ctx_st*)*, void (i8*)* }
%struct.ossl_lib_ctx_st = type opaque
%struct.ossl_store_loader_st = type { i8*, %struct.engine_st*, %struct.ossl_store_loader_ctx_st* (%struct.ossl_store_loader_st*, i8*, %struct.ui_method_st*, i8*)*, %struct.ossl_store_loader_ctx_st* (%struct.ossl_store_loader_st*, %struct.bio_st*, %struct.ossl_lib_ctx_st*, i8*, %struct.ui_method_st*, i8*)*, i32 (%struct.ossl_store_loader_ctx_st*, i32, %struct.__va_list_tag*)*, i32 (%struct.ossl_store_loader_ctx_st*, i32)*, i32 (%struct.ossl_store_loader_ctx_st*, %struct.ossl_store_search_st*)*, %struct.ossl_store_info_st* (%struct.ossl_store_loader_ctx_st*, %struct.ui_method_st*, i8*)*, i32 (%struct.ossl_store_loader_ctx_st*)*, i32 (%struct.ossl_store_loader_ctx_st*)*, i32 (%struct.ossl_store_loader_ctx_st*)*, %struct.ossl_store_loader_ctx_st* (%struct.ossl_store_loader_st*, i8*, %struct.ossl_lib_ctx_st*, i8*, %struct.ui_method_st*, i8*)*, %struct.ossl_provider_st*, i32, i8*, i8*, i32, i8*, i8* (i8*, i8*)*, i8* (i8*, %struct.ossl_core_bio_st*)*, %struct.ossl_param_st* (i8*)*, i32 (i8*, %struct.ossl_param_st*)*, i32 (i8*, i32 (%struct.ossl_param_st*, i8*)*, i8*, i32 (i8*, i64, i64*, %struct.ossl_param_st*, i8*)*, i8*)*, i32 (i8*)*, i32 (i8*)*, i32 (i8*, i8*, i64, i32 (%struct.ossl_param_st*, i8*)*, i8*)* }
%struct.engine_st = type opaque
%struct.ossl_store_loader_ctx_st = type opaque
%struct.ui_method_st = type opaque
%struct.bio_st = type opaque
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct.ossl_store_search_st = type { i32, %struct.X509_name_st*, %struct.asn1_string_st*, %struct.evp_md_st*, i8*, i64 }
%struct.X509_name_st = type opaque
%struct.asn1_string_st = type { i32, i32, i8*, i64 }
%struct.evp_md_st = type opaque
%struct.ossl_store_info_st = type { i32, %union.anon }
%union.anon = type { %struct.anon }
%struct.anon = type { i8*, i8* }
%struct.ossl_core_bio_st = type opaque
%struct.ossl_param_st = type { i8*, i32, i8*, i64, i64 }
%struct.loader_data_st = type { %struct.ossl_lib_ctx_st*, i32, i8*, i8*, %struct.ossl_method_store_st*, i8 }
%struct.ossl_method_store_st = type opaque
%struct.ossl_namemap_st = type opaque
%struct.do_one_data_st = type { void (%struct.ossl_store_loader_st*, i8*)*, i8* }

@.str = private unnamed_addr constant [26 x i8] c"crypto/store/store_meth.c\00", align 1
@__func__.OSSL_STORE_LOADER_get0_provider = private unnamed_addr constant [32 x i8] c"OSSL_STORE_LOADER_get0_provider\00", align 1
@__func__.OSSL_STORE_LOADER_get0_properties = private unnamed_addr constant [34 x i8] c"OSSL_STORE_LOADER_get0_properties\00", align 1
@__func__.ossl_store_loader_get_number = private unnamed_addr constant [29 x i8] c"ossl_store_loader_get_number\00", align 1
@__func__.inner_loader_fetch = private unnamed_addr constant [19 x i8] c"inner_loader_fetch\00", align 1
@__const.inner_loader_fetch.mcm = private unnamed_addr constant %struct.ossl_method_construct_method_st { i8* (i8*)* @get_tmp_loader_store, i8* (i8*, i8*)* @get_loader_from_store, i32 (i8*, i8*, %struct.ossl_provider_st*, i8*, i8*, i8*)* @put_loader_in_store, i8* (%struct.ossl_algorithm_st*, %struct.ossl_provider_st*, i8*)* @construct_loader, void (i8*, i8*)* @destruct_loader }, align 8
@.str.1 = private unnamed_addr constant [152 x i8] c"No store loader found. For standard store loaders you need at least one of the default or base providers available. Did you forget to load them? Info: \00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [40 x i8] c"%s%s, Scheme (%s : %d), Properties (%s)\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"<null>\00", align 1
@__func__.loader_from_algorithm = private unnamed_addr constant [22 x i8] c"loader_from_algorithm\00", align 1
@loader_store_method = internal constant %struct.ossl_lib_ctx_method { i32 2, i8* (%struct.ossl_lib_ctx_st*)* @loader_store_new, void (i8*)* @loader_store_free }, align 8

; Function Attrs: mustprogress nofree noinline nounwind uwtable willreturn
define i32 @OSSL_STORE_LOADER_up_ref(%struct.ossl_store_loader_st* nocapture noundef %loader) local_unnamed_addr #0 {
entry:
  %ref = alloca i32, align 4
  %0 = bitcast i32* %ref to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #7
  %prov = getelementptr inbounds %struct.ossl_store_loader_st, %struct.ossl_store_loader_st* %loader, i64 0, i32 12
  %1 = load %struct.ossl_provider_st*, %struct.ossl_provider_st** %prov, align 8, !tbaa !4
  %cmp.not = icmp eq %struct.ossl_provider_st* %1, null
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %refcnt = getelementptr inbounds %struct.ossl_store_loader_st, %struct.ossl_store_loader_st* %loader, i64 0, i32 16
  call fastcc void @CRYPTO_UP_REF(i32* noundef nonnull %refcnt, i32* noundef nonnull %ref) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #7
  ret i32 1
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: mustprogress nofree noinline norecurse nounwind uwtable willreturn
define internal fastcc void @CRYPTO_UP_REF(i32* nocapture noundef %val, i32* nocapture noundef writeonly %ret) unnamed_addr #2 {
entry:
  %0 = atomicrmw add i32* %val, i32 1 monotonic, align 4
  %add = add nsw i32 %0, 1
  store i32 %add, i32* %ret, align 4, !tbaa !10
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: noinline nounwind uwtable
define void @OSSL_STORE_LOADER_free(%struct.ossl_store_loader_st* noundef %loader) local_unnamed_addr #3 {
entry:
  %i = alloca i32, align 4
  %cmp.not = icmp eq %struct.ossl_store_loader_st* %loader, null
  br i1 %cmp.not, label %if.end6, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %prov = getelementptr inbounds %struct.ossl_store_loader_st, %struct.ossl_store_loader_st* %loader, i64 0, i32 12
  %0 = load %struct.ossl_provider_st*, %struct.ossl_provider_st** %prov, align 8, !tbaa !4
  %cmp1.not = icmp eq %struct.ossl_provider_st* %0, null
  br i1 %cmp1.not, label %if.end6, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %1 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %1) #7
  %refcnt = getelementptr inbounds %struct.ossl_store_loader_st, %struct.ossl_store_loader_st* %loader, i64 0, i32 16
  call fastcc void @CRYPTO_DOWN_REF(i32* noundef nonnull %refcnt, i32* noundef nonnull %i) #8
  %2 = load i32, i32* %i, align 4, !tbaa !10
  %cmp2 = icmp sgt i32 %2, 0
  br i1 %cmp2, label %cleanup, label %cleanup.thread

cleanup.thread:                                   ; preds = %if.then
  %lock = getelementptr inbounds %struct.ossl_store_loader_st, %struct.ossl_store_loader_st* %loader, i64 0, i32 17
  %3 = load %struct.ossl_provider_st*, %struct.ossl_provider_st** %prov, align 8, !tbaa !4
  tail call void @ossl_provider_free(%struct.ossl_provider_st* noundef %3) #9
  %4 = load i8*, i8** %lock, align 8, !tbaa !11
  tail call void @CRYPTO_THREAD_lock_free(i8* noundef %4) #9
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %1) #7
  br label %if.end6

cleanup:                                          ; preds = %if.then
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %1) #7
  br label %return

if.end6:                                          ; preds = %cleanup.thread, %land.lhs.true, %entry
  %5 = bitcast %struct.ossl_store_loader_st* %loader to i8*
  tail call void @CRYPTO_free(i8* noundef %5, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 noundef 38) #9
  br label %return

return:                                           ; preds = %cleanup, %if.end6
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind uwtable willreturn
define internal fastcc void @CRYPTO_DOWN_REF(i32* nocapture noundef %val, i32* nocapture noundef writeonly %ret) unnamed_addr #2 {
entry:
  %0 = atomicrmw sub i32* %val, i32 1 monotonic, align 4
  %sub = add nsw i32 %0, -1
  store i32 %sub, i32* %ret, align 4, !tbaa !10
  %cmp = icmp eq i32 %sub, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  fence acquire
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare void @ossl_provider_free(%struct.ossl_provider_st* noundef) local_unnamed_addr #4

declare void @CRYPTO_THREAD_lock_free(i8* noundef) local_unnamed_addr #4

declare void @CRYPTO_free(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind uwtable
define %struct.ossl_store_loader_st* @OSSL_STORE_LOADER_fetch(%struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef %scheme, i8* noundef %properties) local_unnamed_addr #3 {
entry:
  %methdata = alloca %struct.loader_data_st, align 8
  %0 = bitcast %struct.loader_data_st* %methdata to i8*
  call void @llvm.lifetime.start.p0i8(i64 48, i8* nonnull %0) #7
  %libctx1 = getelementptr inbounds %struct.loader_data_st, %struct.loader_data_st* %methdata, i64 0, i32 0
  store %struct.ossl_lib_ctx_st* %libctx, %struct.ossl_lib_ctx_st** %libctx1, align 8, !tbaa !12
  %tmp_store = getelementptr inbounds %struct.loader_data_st, %struct.loader_data_st* %methdata, i64 0, i32 4
  store %struct.ossl_method_store_st* null, %struct.ossl_method_store_st** %tmp_store, align 8, !tbaa !14
  %call = call fastcc %struct.ossl_store_loader_st* @inner_loader_fetch(%struct.loader_data_st* noundef nonnull %methdata, i32 noundef 0, i8* noundef %scheme, i8* noundef %properties) #8
  %1 = bitcast %struct.ossl_method_store_st** %tmp_store to i8**
  %2 = load i8*, i8** %1, align 8, !tbaa !14
  call fastcc void @dealloc_tmp_loader_store(i8* noundef %2) #8
  call void @llvm.lifetime.end.p0i8(i64 48, i8* nonnull %0) #7
  ret %struct.ossl_store_loader_st* %call
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.ossl_store_loader_st* @inner_loader_fetch(%struct.loader_data_st* noundef %methdata, i32 noundef %id, i8* noundef %scheme, i8* noundef %properties) unnamed_addr #3 {
entry:
  %method = alloca i8*, align 8
  %mcm = alloca %struct.ossl_method_construct_method_st, align 8
  %libctx = getelementptr inbounds %struct.loader_data_st, %struct.loader_data_st* %methdata, i64 0, i32 0
  %0 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** %libctx, align 8, !tbaa !12
  %call = tail call fastcc %struct.ossl_method_store_st* @get_loader_store(%struct.ossl_lib_ctx_st* noundef %0) #8
  %1 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** %libctx, align 8, !tbaa !12
  %call2 = tail call %struct.ossl_namemap_st* @ossl_namemap_stored(%struct.ossl_lib_ctx_st* noundef %1) #9
  %2 = bitcast i8** %method to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #7
  store i8* null, i8** %method, align 8, !tbaa !15
  %cmp = icmp eq %struct.ossl_method_store_st* %call, null
  %cmp3 = icmp eq %struct.ossl_namemap_st* %call2, null
  %or.cond = select i1 %cmp, i1 true, i1 %cmp3
  br i1 %or.cond, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #9
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 noundef 286, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.inner_loader_fetch, i64 0, i64 0)) #9
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 44, i32 noundef 524550, i8* noundef null) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %cmp4 = icmp eq i32 %id, 0
  %cmp5 = icmp eq i8* %scheme, null
  %3 = or i1 %cmp4, %cmp5
  br i1 %3, label %if.end8, label %if.then7

if.then7:                                         ; preds = %if.end
  tail call void @ERR_new() #9
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 noundef 295, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.inner_loader_fetch, i64 0, i64 0)) #9
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 44, i32 noundef 786691, i8* noundef null) #9
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %cmp10 = icmp ne i8* %scheme, null
  %or.cond62 = and i1 %cmp4, %cmp10
  br i1 %or.cond62, label %if.then11, label %if.end13

if.then11:                                        ; preds = %if.end8
  %call12 = tail call i32 @ossl_namemap_name2num(%struct.ossl_namemap_st* noundef nonnull %call2, i8* noundef nonnull %scheme) #9
  br label %if.end13

if.end13:                                         ; preds = %if.then11, %if.end8
  %id.addr.0 = phi i32 [ %call12, %if.then11 ], [ %id, %if.end8 ]
  %cmp14 = icmp eq i32 %id.addr.0, 0
  br i1 %cmp14, label %if.then20, label %lor.lhs.false18

lor.lhs.false18:                                  ; preds = %if.end13
  %call19 = call i32 @ossl_method_store_cache_get(%struct.ossl_method_store_st* noundef nonnull %call, i32 noundef %id.addr.0, i8* noundef %properties, i8** noundef nonnull %method) #9
  %tobool.not = icmp eq i32 %call19, 0
  br i1 %tobool.not, label %if.then20, label %if.end36

if.then20:                                        ; preds = %lor.lhs.false18, %if.end13
  %4 = bitcast %struct.ossl_method_construct_method_st* %mcm to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %4) #7
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(40) %4, i8* noundef nonnull align 8 dereferenceable(40) bitcast (%struct.ossl_method_construct_method_st* @__const.inner_loader_fetch.mcm to i8*), i64 40, i1 false)
  %scheme_id = getelementptr inbounds %struct.loader_data_st, %struct.loader_data_st* %methdata, i64 0, i32 1
  store i32 %id.addr.0, i32* %scheme_id, align 8, !tbaa !16
  %scheme21 = getelementptr inbounds %struct.loader_data_st, %struct.loader_data_st* %methdata, i64 0, i32 2
  store i8* %scheme, i8** %scheme21, align 8, !tbaa !17
  %propquery = getelementptr inbounds %struct.loader_data_st, %struct.loader_data_st* %methdata, i64 0, i32 3
  store i8* %properties, i8** %propquery, align 8, !tbaa !18
  %flag_construct_error_occurred = getelementptr inbounds %struct.loader_data_st, %struct.loader_data_st* %methdata, i64 0, i32 5
  %bf.load = load i8, i8* %flag_construct_error_occurred, align 8
  %bf.clear = and i8 %bf.load, -2
  store i8 %bf.clear, i8* %flag_construct_error_occurred, align 8
  %5 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** %libctx, align 8, !tbaa !12
  %6 = bitcast %struct.loader_data_st* %methdata to i8*
  %call23 = call i8* @ossl_method_construct(%struct.ossl_lib_ctx_st* noundef %5, i32 noundef 22, i32 noundef 0, %struct.ossl_method_construct_method_st* noundef nonnull %mcm, i8* noundef %6) #9
  store i8* %call23, i8** %method, align 8, !tbaa !15
  %cmp24.not = icmp eq i8* %call23, null
  br i1 %cmp24.not, label %if.end31, label %if.then25

if.then25:                                        ; preds = %if.then20
  br i1 %cmp14, label %if.then27, label %if.end29

if.then27:                                        ; preds = %if.then25
  %call28 = call i32 @ossl_namemap_name2num(%struct.ossl_namemap_st* noundef nonnull %call2, i8* noundef %scheme) #9
  %.pre = load i8*, i8** %method, align 8, !tbaa !15
  br label %if.end29

if.end29:                                         ; preds = %if.then27, %if.then25
  %7 = phi i8* [ %.pre, %if.then27 ], [ %call23, %if.then25 ]
  %id.addr.1 = phi i32 [ %call28, %if.then27 ], [ %id.addr.0, %if.then25 ]
  %call30 = call i32 @ossl_method_store_cache_set(%struct.ossl_method_store_st* noundef nonnull %call, i32 noundef %id.addr.1, i8* noundef %properties, i8* noundef %7, i32 (i8*)* noundef nonnull @up_ref_loader, void (i8*)* noundef nonnull @free_loader) #9
  br label %if.end31

if.end31:                                         ; preds = %if.end29, %if.then20
  %id.addr.2 = phi i32 [ %id.addr.1, %if.end29 ], [ %id.addr.0, %if.then20 ]
  %bf.load33 = load i8, i8* %flag_construct_error_occurred, align 8
  %bf.clear34 = and i8 %bf.load33, 1
  %8 = xor i8 %bf.clear34, 1
  %9 = zext i8 %8 to i32
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %4) #7
  br label %if.end36

if.end36:                                         ; preds = %if.end31, %lor.lhs.false18
  %unsupported.1 = phi i32 [ %9, %if.end31 ], [ 0, %lor.lhs.false18 ]
  %id.addr.3 = phi i32 [ %id.addr.2, %if.end31 ], [ %id.addr.0, %lor.lhs.false18 ]
  %cmp37 = icmp ne i32 %id.addr.3, 0
  %or.cond63 = or i1 %cmp10, %cmp37
  %10 = load i8*, i8** %method, align 8
  %cmp41 = icmp eq i8* %10, null
  %or.cond64 = select i1 %or.cond63, i1 %cmp41, i1 false
  br i1 %or.cond64, label %if.then42, label %if.end36.if.end58_crit_edge

if.end36.if.end58_crit_edge:                      ; preds = %if.end36
  %11 = bitcast i8* %10 to %struct.ossl_store_loader_st*
  br label %cleanup

if.then42:                                        ; preds = %if.end36
  %tobool43.not = icmp eq i32 %unsupported.1, 0
  %cond = select i1 %tobool43.not, i32 524557, i32 524556
  %cond45 = select i1 %tobool43.not, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([152 x i8], [152 x i8]* @.str.1, i64 0, i64 0)
  br i1 %cmp5, label %if.then47, label %if.end49

if.then47:                                        ; preds = %if.then42
  %call48 = call i8* @ossl_namemap_num2name(%struct.ossl_namemap_st* noundef nonnull %call2, i32 noundef %id.addr.3, i64 noundef 0) #9
  br label %if.end49

if.end49:                                         ; preds = %if.then47, %if.then42
  %scheme.addr.0 = phi i8* [ %call48, %if.then47 ], [ %scheme, %if.then42 ]
  call void @ERR_new() #9
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 noundef 356, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.inner_loader_fetch, i64 0, i64 0)) #9
  %12 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** %libctx, align 8, !tbaa !12
  %call51 = call i8* @ossl_lib_ctx_get_descriptor(%struct.ossl_lib_ctx_st* noundef %12) #9
  %cmp53 = icmp eq i8* %properties, null
  %cond57 = select i1 %cmp53, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i8* %properties
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 44, i32 noundef %cond, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0), i8* noundef %cond45, i8* noundef %call51, i8* noundef %scheme.addr.0, i32 noundef %id.addr.3, i8* noundef %cond57) #9
  %.phi.trans.insert = bitcast i8** %method to %struct.ossl_store_loader_st**
  %.pre106 = load %struct.ossl_store_loader_st*, %struct.ossl_store_loader_st** %.phi.trans.insert, align 8, !tbaa !15
  br label %cleanup

cleanup:                                          ; preds = %if.end49, %if.end36.if.end58_crit_edge, %if.then7, %if.then
  %retval.0 = phi %struct.ossl_store_loader_st* [ null, %if.then ], [ null, %if.then7 ], [ %11, %if.end36.if.end58_crit_edge ], [ %.pre106, %if.end49 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #7
  ret %struct.ossl_store_loader_st* %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @dealloc_tmp_loader_store(i8* noundef %store) unnamed_addr #3 {
entry:
  %cmp.not = icmp eq i8* %store, null
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %0 = bitcast i8* %store to %struct.ossl_method_store_st*
  tail call void @ossl_method_store_free(%struct.ossl_method_store_st* noundef nonnull %0) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind uwtable
define %struct.ossl_store_loader_st* @ossl_store_loader_fetch_by_number(%struct.ossl_lib_ctx_st* noundef %libctx, i32 noundef %scheme_id, i8* noundef %properties) local_unnamed_addr #3 {
entry:
  %methdata = alloca %struct.loader_data_st, align 8
  %0 = bitcast %struct.loader_data_st* %methdata to i8*
  call void @llvm.lifetime.start.p0i8(i64 48, i8* nonnull %0) #7
  %libctx1 = getelementptr inbounds %struct.loader_data_st, %struct.loader_data_st* %methdata, i64 0, i32 0
  store %struct.ossl_lib_ctx_st* %libctx, %struct.ossl_lib_ctx_st** %libctx1, align 8, !tbaa !12
  %tmp_store = getelementptr inbounds %struct.loader_data_st, %struct.loader_data_st* %methdata, i64 0, i32 4
  store %struct.ossl_method_store_st* null, %struct.ossl_method_store_st** %tmp_store, align 8, !tbaa !14
  %call = call fastcc %struct.ossl_store_loader_st* @inner_loader_fetch(%struct.loader_data_st* noundef nonnull %methdata, i32 noundef %scheme_id, i8* noundef null, i8* noundef %properties) #8
  %1 = bitcast %struct.ossl_method_store_st** %tmp_store to i8**
  %2 = load i8*, i8** %1, align 8, !tbaa !14
  call fastcc void @dealloc_tmp_loader_store(i8* noundef %2) #8
  call void @llvm.lifetime.end.p0i8(i64 48, i8* nonnull %0) #7
  ret %struct.ossl_store_loader_st* %call
}

; Function Attrs: noinline nounwind uwtable
define %struct.ossl_provider_st* @OSSL_STORE_LOADER_get0_provider(%struct.ossl_store_loader_st* noundef readonly %loader) local_unnamed_addr #3 {
entry:
  %cmp.not = icmp eq %struct.ossl_store_loader_st* %loader, null
  br i1 %cmp.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #9
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 noundef 402, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @__func__.OSSL_STORE_LOADER_get0_provider, i64 0, i64 0)) #9
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 44, i32 noundef 786690, i8* noundef null) #9
  br label %return

if.end:                                           ; preds = %entry
  %prov = getelementptr inbounds %struct.ossl_store_loader_st, %struct.ossl_store_loader_st* %loader, i64 0, i32 12
  %0 = load %struct.ossl_provider_st*, %struct.ossl_provider_st** %prov, align 8, !tbaa !4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi %struct.ossl_provider_st* [ %0, %if.end ], [ null, %if.then ]
  ret %struct.ossl_provider_st* %retval.0
}

declare void @ERR_new() local_unnamed_addr #4

declare void @ERR_set_debug(i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #4

declare void @ERR_set_error(i32 noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #4

; Function Attrs: noinline nounwind uwtable
define i8* @OSSL_STORE_LOADER_get0_properties(%struct.ossl_store_loader_st* noundef readonly %loader) local_unnamed_addr #3 {
entry:
  %cmp.not = icmp eq %struct.ossl_store_loader_st* %loader, null
  br i1 %cmp.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #9
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 noundef 412, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @__func__.OSSL_STORE_LOADER_get0_properties, i64 0, i64 0)) #9
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 44, i32 noundef 786690, i8* noundef null) #9
  br label %return

if.end:                                           ; preds = %entry
  %propdef = getelementptr inbounds %struct.ossl_store_loader_st, %struct.ossl_store_loader_st* %loader, i64 0, i32 14
  %0 = load i8*, i8** %propdef, align 8, !tbaa !19
  br label %return

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi i8* [ %0, %if.end ], [ null, %if.then ]
  ret i8* %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_store_loader_get_number(%struct.ossl_store_loader_st* noundef readonly %loader) local_unnamed_addr #3 {
entry:
  %cmp.not = icmp eq %struct.ossl_store_loader_st* %loader, null
  br i1 %cmp.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #9
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 noundef 422, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.ossl_store_loader_get_number, i64 0, i64 0)) #9
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 44, i32 noundef 786690, i8* noundef null) #9
  br label %return

if.end:                                           ; preds = %entry
  %scheme_id = getelementptr inbounds %struct.ossl_store_loader_st, %struct.ossl_store_loader_st* %loader, i64 0, i32 13
  %0 = load i32, i32* %scheme_id, align 8, !tbaa !20
  br label %return

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %0, %if.end ], [ 0, %if.then ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define i8* @OSSL_STORE_LOADER_get0_description(%struct.ossl_store_loader_st* nocapture noundef readonly %loader) local_unnamed_addr #5 {
entry:
  %description = getelementptr inbounds %struct.ossl_store_loader_st, %struct.ossl_store_loader_st* %loader, i64 0, i32 15
  %0 = load i8*, i8** %description, align 8, !tbaa !21
  ret i8* %0
}

; Function Attrs: noinline nounwind uwtable
define i32 @OSSL_STORE_LOADER_is_a(%struct.ossl_store_loader_st* nocapture noundef readonly %loader, i8* noundef %name) local_unnamed_addr #3 {
entry:
  %prov = getelementptr inbounds %struct.ossl_store_loader_st, %struct.ossl_store_loader_st* %loader, i64 0, i32 12
  %0 = load %struct.ossl_provider_st*, %struct.ossl_provider_st** %prov, align 8, !tbaa !4
  %cmp.not = icmp eq %struct.ossl_provider_st* %0, null
  br i1 %cmp.not, label %return, label %if.then

if.then:                                          ; preds = %entry
  %call = tail call %struct.ossl_lib_ctx_st* @ossl_provider_libctx(%struct.ossl_provider_st* noundef nonnull %0) #9
  %call2 = tail call %struct.ossl_namemap_st* @ossl_namemap_stored(%struct.ossl_lib_ctx_st* noundef %call) #9
  %call3 = tail call i32 @ossl_namemap_name2num(%struct.ossl_namemap_st* noundef %call2, i8* noundef %name) #9
  %scheme_id = getelementptr inbounds %struct.ossl_store_loader_st, %struct.ossl_store_loader_st* %loader, i64 0, i32 13
  %1 = load i32, i32* %scheme_id, align 8, !tbaa !20
  %cmp4 = icmp eq i32 %call3, %1
  %conv = zext i1 %cmp4 to i32
  br label %return

return:                                           ; preds = %entry, %if.then
  %retval.0 = phi i32 [ %conv, %if.then ], [ 0, %entry ]
  ret i32 %retval.0
}

declare %struct.ossl_lib_ctx_st* @ossl_provider_libctx(%struct.ossl_provider_st* noundef) local_unnamed_addr #4

declare %struct.ossl_namemap_st* @ossl_namemap_stored(%struct.ossl_lib_ctx_st* noundef) local_unnamed_addr #4

declare i32 @ossl_namemap_name2num(%struct.ossl_namemap_st* noundef, i8* noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind uwtable
define void @OSSL_STORE_LOADER_do_all_provided(%struct.ossl_lib_ctx_st* noundef %libctx, void (%struct.ossl_store_loader_st*, i8*)* noundef %user_fn, i8* noundef %user_arg) local_unnamed_addr #3 {
entry:
  %methdata = alloca %struct.loader_data_st, align 8
  %data = alloca %struct.do_one_data_st, align 8
  %0 = bitcast %struct.loader_data_st* %methdata to i8*
  call void @llvm.lifetime.start.p0i8(i64 48, i8* nonnull %0) #7
  %1 = bitcast %struct.do_one_data_st* %data to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %1) #7
  %libctx1 = getelementptr inbounds %struct.loader_data_st, %struct.loader_data_st* %methdata, i64 0, i32 0
  store %struct.ossl_lib_ctx_st* %libctx, %struct.ossl_lib_ctx_st** %libctx1, align 8, !tbaa !12
  %tmp_store = getelementptr inbounds %struct.loader_data_st, %struct.loader_data_st* %methdata, i64 0, i32 4
  store %struct.ossl_method_store_st* null, %struct.ossl_method_store_st** %tmp_store, align 8, !tbaa !14
  %call = call fastcc %struct.ossl_store_loader_st* @inner_loader_fetch(%struct.loader_data_st* noundef nonnull %methdata, i32 noundef 0, i8* noundef null, i8* noundef null) #8
  %user_fn2 = getelementptr inbounds %struct.do_one_data_st, %struct.do_one_data_st* %data, i64 0, i32 0
  store void (%struct.ossl_store_loader_st*, i8*)* %user_fn, void (%struct.ossl_store_loader_st*, i8*)** %user_fn2, align 8, !tbaa !22
  %user_arg3 = getelementptr inbounds %struct.do_one_data_st, %struct.do_one_data_st* %data, i64 0, i32 1
  store i8* %user_arg, i8** %user_arg3, align 8, !tbaa !24
  %2 = load %struct.ossl_method_store_st*, %struct.ossl_method_store_st** %tmp_store, align 8, !tbaa !14
  %cmp.not = icmp eq %struct.ossl_method_store_st* %2, null
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @ossl_method_store_do_all(%struct.ossl_method_store_st* noundef nonnull %2, void (i32, i8*, i8*)* noundef nonnull @do_one, i8* noundef nonnull %1) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %call6 = call fastcc %struct.ossl_method_store_st* @get_loader_store(%struct.ossl_lib_ctx_st* noundef %libctx) #8
  call void @ossl_method_store_do_all(%struct.ossl_method_store_st* noundef %call6, void (i32, i8*, i8*)* noundef nonnull @do_one, i8* noundef nonnull %1) #9
  %3 = bitcast %struct.ossl_method_store_st** %tmp_store to i8**
  %4 = load i8*, i8** %3, align 8, !tbaa !14
  call fastcc void @dealloc_tmp_loader_store(i8* noundef %4) #8
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %1) #7
  call void @llvm.lifetime.end.p0i8(i64 48, i8* nonnull %0) #7
  ret void
}

declare void @ossl_method_store_do_all(%struct.ossl_method_store_st* noundef, void (i32, i8*, i8*)* noundef, i8* noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind uwtable
define internal void @do_one(i32 noundef %id, i8* noundef %method, i8* nocapture noundef readonly %arg) #3 {
entry:
  %user_fn = bitcast i8* %arg to void (%struct.ossl_store_loader_st*, i8*)**
  %0 = load void (%struct.ossl_store_loader_st*, i8*)*, void (%struct.ossl_store_loader_st*, i8*)** %user_fn, align 8, !tbaa !22
  %1 = bitcast i8* %method to %struct.ossl_store_loader_st*
  %user_arg = getelementptr inbounds i8, i8* %arg, i64 8
  %2 = bitcast i8* %user_arg to i8**
  %3 = load i8*, i8** %2, align 8, !tbaa !24
  tail call void %0(%struct.ossl_store_loader_st* noundef %1, i8* noundef %3) #9
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.ossl_method_store_st* @get_loader_store(%struct.ossl_lib_ctx_st* noundef %libctx) unnamed_addr #3 {
entry:
  %call = tail call i8* @ossl_lib_ctx_get_data(%struct.ossl_lib_ctx_st* noundef %libctx, i32 noundef 15, %struct.ossl_lib_ctx_method* noundef nonnull @loader_store_method) #9
  %0 = bitcast i8* %call to %struct.ossl_method_store_st*
  ret %struct.ossl_method_store_st* %0
}

; Function Attrs: noinline nounwind uwtable
define i32 @OSSL_STORE_LOADER_names_do_all(%struct.ossl_store_loader_st* noundef readonly %loader, void (i8*, i8*)* noundef %fn, i8* noundef %data) local_unnamed_addr #3 {
entry:
  %cmp = icmp eq %struct.ossl_store_loader_st* %loader, null
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %prov = getelementptr inbounds %struct.ossl_store_loader_st, %struct.ossl_store_loader_st* %loader, i64 0, i32 12
  %0 = load %struct.ossl_provider_st*, %struct.ossl_provider_st** %prov, align 8, !tbaa !4
  %cmp1.not = icmp eq %struct.ossl_provider_st* %0, null
  br i1 %cmp1.not, label %return, label %if.then2

if.then2:                                         ; preds = %if.end
  %call = tail call %struct.ossl_lib_ctx_st* @ossl_provider_libctx(%struct.ossl_provider_st* noundef nonnull %0) #9
  %call4 = tail call %struct.ossl_namemap_st* @ossl_namemap_stored(%struct.ossl_lib_ctx_st* noundef %call) #9
  %scheme_id = getelementptr inbounds %struct.ossl_store_loader_st, %struct.ossl_store_loader_st* %loader, i64 0, i32 13
  %1 = load i32, i32* %scheme_id, align 8, !tbaa !20
  %call5 = tail call i32 @ossl_namemap_doall_names(%struct.ossl_namemap_st* noundef %call4, i32 noundef %1, void (i8*, i8*)* noundef %fn, i8* noundef %data) #9
  br label %return

return:                                           ; preds = %if.end, %entry, %if.then2
  %retval.0 = phi i32 [ %call5, %if.then2 ], [ 0, %entry ], [ 1, %if.end ]
  ret i32 %retval.0
}

declare i32 @ossl_namemap_doall_names(%struct.ossl_namemap_st* noundef, i32 noundef, void (i8*, i8*)* noundef, i8* noundef) local_unnamed_addr #4

declare i32 @ossl_method_store_cache_get(%struct.ossl_method_store_st* noundef, i32 noundef, i8* noundef, i8** noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind uwtable
define internal i8* @get_tmp_loader_store(i8* nocapture noundef %data) #3 {
entry:
  %tmp_store = getelementptr inbounds i8, i8* %data, i64 32
  %0 = bitcast i8* %tmp_store to %struct.ossl_method_store_st**
  %1 = load %struct.ossl_method_store_st*, %struct.ossl_method_store_st** %0, align 8, !tbaa !14
  %cmp = icmp eq %struct.ossl_method_store_st* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %libctx = bitcast i8* %data to %struct.ossl_lib_ctx_st**
  %2 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** %libctx, align 8, !tbaa !12
  %call = tail call %struct.ossl_method_store_st* @ossl_method_store_new(%struct.ossl_lib_ctx_st* noundef %2) #9
  store %struct.ossl_method_store_st* %call, %struct.ossl_method_store_st** %0, align 8, !tbaa !14
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %.in = phi %struct.ossl_method_store_st* [ %call, %if.then ], [ %1, %entry ]
  %3 = bitcast %struct.ossl_method_store_st* %.in to i8*
  ret i8* %3
}

; Function Attrs: noinline nounwind uwtable
define internal i8* @get_loader_from_store(i8* noundef %store, i8* nocapture noundef readonly %data) #3 {
entry:
  %method = alloca i8*, align 8
  %0 = bitcast i8** %method to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #7
  store i8* null, i8** %method, align 8, !tbaa !15
  %scheme_id = getelementptr inbounds i8, i8* %data, i64 8
  %1 = bitcast i8* %scheme_id to i32*
  %2 = load i32, i32* %1, align 8, !tbaa !16
  %cmp = icmp eq i32 %2, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %libctx = bitcast i8* %data to %struct.ossl_lib_ctx_st**
  %3 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** %libctx, align 8, !tbaa !12
  %call = tail call %struct.ossl_namemap_st* @ossl_namemap_stored(%struct.ossl_lib_ctx_st* noundef %3) #9
  %scheme = getelementptr inbounds i8, i8* %data, i64 16
  %4 = bitcast i8* %scheme to i8**
  %5 = load i8*, i8** %4, align 8, !tbaa !17
  %call1 = tail call i32 @ossl_namemap_name2num(%struct.ossl_namemap_st* noundef %call, i8* noundef %5) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %id.0 = phi i32 [ %call1, %if.then ], [ %2, %entry ]
  %cmp2 = icmp eq i8* %store, null
  br i1 %cmp2, label %land.lhs.true, label %if.end7

land.lhs.true:                                    ; preds = %if.end
  %libctx3 = bitcast i8* %data to %struct.ossl_lib_ctx_st**
  %6 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** %libctx3, align 8, !tbaa !12
  %call4 = tail call fastcc %struct.ossl_method_store_st* @get_loader_store(%struct.ossl_lib_ctx_st* noundef %6) #8
  %7 = bitcast %struct.ossl_method_store_st* %call4 to i8*
  %cmp5 = icmp eq %struct.ossl_method_store_st* %call4, null
  br i1 %cmp5, label %cleanup, label %if.end7

if.end7:                                          ; preds = %land.lhs.true, %if.end
  %store.addr.0 = phi i8* [ %7, %land.lhs.true ], [ %store, %if.end ]
  %8 = bitcast i8* %store.addr.0 to %struct.ossl_method_store_st*
  %propquery = getelementptr inbounds i8, i8* %data, i64 24
  %9 = bitcast i8* %propquery to i8**
  %10 = load i8*, i8** %9, align 8, !tbaa !18
  %call8 = call i32 @ossl_method_store_fetch(%struct.ossl_method_store_st* noundef %8, i32 noundef %id.0, i8* noundef %10, i8** noundef nonnull %method) #9
  %tobool.not = icmp eq i32 %call8, 0
  %11 = load i8*, i8** %method, align 8
  %spec.select = select i1 %tobool.not, i8* null, i8* %11
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %land.lhs.true
  %retval.0 = phi i8* [ null, %land.lhs.true ], [ %spec.select, %if.end7 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #7
  ret i8* %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @put_loader_in_store(i8* noundef %store, i8* noundef %method, %struct.ossl_provider_st* noundef %prov, i8* noundef %scheme, i8* noundef %propdef, i8* nocapture noundef readonly %data) #3 {
entry:
  %libctx = bitcast i8* %data to %struct.ossl_lib_ctx_st**
  %0 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** %libctx, align 8, !tbaa !12
  %call = tail call %struct.ossl_namemap_st* @ossl_namemap_stored(%struct.ossl_lib_ctx_st* noundef %0) #9
  %cmp = icmp eq %struct.ossl_namemap_st* %call, null
  br i1 %cmp, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %call1 = tail call i32 @ossl_namemap_name2num(%struct.ossl_namemap_st* noundef nonnull %call, i8* noundef %scheme) #9
  %cmp2 = icmp eq i32 %call1, 0
  br i1 %cmp2, label %cleanup, label %if.end

if.end:                                           ; preds = %lor.lhs.false
  %cmp3 = icmp eq i8* %store, null
  br i1 %cmp3, label %land.lhs.true, label %if.end8

land.lhs.true:                                    ; preds = %if.end
  %1 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** %libctx, align 8, !tbaa !12
  %call5 = tail call fastcc %struct.ossl_method_store_st* @get_loader_store(%struct.ossl_lib_ctx_st* noundef %1) #8
  %2 = bitcast %struct.ossl_method_store_st* %call5 to i8*
  %cmp6 = icmp eq %struct.ossl_method_store_st* %call5, null
  br i1 %cmp6, label %cleanup, label %if.end8

if.end8:                                          ; preds = %land.lhs.true, %if.end
  %store.addr.0 = phi i8* [ %2, %land.lhs.true ], [ %store, %if.end ]
  %3 = bitcast i8* %store.addr.0 to %struct.ossl_method_store_st*
  %call9 = tail call i32 @ossl_method_store_add(%struct.ossl_method_store_st* noundef %3, %struct.ossl_provider_st* noundef %prov, i32 noundef %call1, i8* noundef %propdef, i8* noundef %method, i32 (i8*)* noundef nonnull @up_ref_loader, void (i8*)* noundef nonnull @free_loader) #9
  br label %cleanup

cleanup:                                          ; preds = %land.lhs.true, %entry, %lor.lhs.false, %if.end8
  %retval.0 = phi i32 [ %call9, %if.end8 ], [ 0, %lor.lhs.false ], [ 0, %entry ], [ 0, %land.lhs.true ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i8* @construct_loader(%struct.ossl_algorithm_st* nocapture noundef readonly %algodef, %struct.ossl_provider_st* noundef %prov, i8* nocapture noundef %data) #3 {
entry:
  %call = tail call %struct.ossl_lib_ctx_st* @ossl_provider_libctx(%struct.ossl_provider_st* noundef %prov) #9
  %call1 = tail call %struct.ossl_namemap_st* @ossl_namemap_stored(%struct.ossl_lib_ctx_st* noundef %call) #9
  %algorithm_names = getelementptr inbounds %struct.ossl_algorithm_st, %struct.ossl_algorithm_st* %algodef, i64 0, i32 0
  %0 = load i8*, i8** %algorithm_names, align 8, !tbaa !25
  %call2 = tail call i32 @ossl_namemap_add_name(%struct.ossl_namemap_st* noundef %call1, i32 noundef 0, i8* noundef %0) #9
  %cmp.not = icmp eq i32 %call2, 0
  br i1 %cmp.not, label %if.then5, label %if.end

if.end:                                           ; preds = %entry
  %call3 = tail call fastcc i8* @loader_from_algorithm(i32 noundef %call2, %struct.ossl_algorithm_st* noundef nonnull %algodef, %struct.ossl_provider_st* noundef %prov) #8
  %cmp4 = icmp eq i8* %call3, null
  br i1 %cmp4, label %if.then5, label %if.end6

if.then5:                                         ; preds = %entry, %if.end
  %1 = getelementptr inbounds i8, i8* %data, i64 40
  %bf.load = load i8, i8* %1, align 8
  %bf.set = or i8 %bf.load, 1
  store i8 %bf.set, i8* %1, align 8
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %if.end
  %method.019 = phi i8* [ null, %if.then5 ], [ %call3, %if.end ]
  ret i8* %method.019
}

; Function Attrs: noinline nounwind uwtable
define internal void @destruct_loader(i8* noundef %method, i8* nocapture noundef readnone %data) #3 {
entry:
  %0 = bitcast i8* %method to %struct.ossl_store_loader_st*
  tail call void @OSSL_STORE_LOADER_free(%struct.ossl_store_loader_st* noundef %0) #8
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #6

declare i8* @ossl_method_construct(%struct.ossl_lib_ctx_st* noundef, i32 noundef, i32 noundef, %struct.ossl_method_construct_method_st* noundef, i8* noundef) local_unnamed_addr #4

declare i32 @ossl_method_store_cache_set(%struct.ossl_method_store_st* noundef, i32 noundef, i8* noundef, i8* noundef, i32 (i8*)* noundef, void (i8*)* noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline nounwind uwtable willreturn
define internal i32 @up_ref_loader(i8* nocapture noundef %method) #0 {
entry:
  %0 = bitcast i8* %method to %struct.ossl_store_loader_st*
  %call = tail call i32 @OSSL_STORE_LOADER_up_ref(%struct.ossl_store_loader_st* noundef %0) #8
  ret i32 1
}

; Function Attrs: noinline nounwind uwtable
define internal void @free_loader(i8* noundef %method) #3 {
entry:
  %0 = bitcast i8* %method to %struct.ossl_store_loader_st*
  tail call void @OSSL_STORE_LOADER_free(%struct.ossl_store_loader_st* noundef %0) #8
  ret void
}

declare i8* @ossl_namemap_num2name(%struct.ossl_namemap_st* noundef, i32 noundef, i64 noundef) local_unnamed_addr #4

declare i8* @ossl_lib_ctx_get_descriptor(%struct.ossl_lib_ctx_st* noundef) local_unnamed_addr #4

declare %struct.ossl_method_store_st* @ossl_method_store_new(%struct.ossl_lib_ctx_st* noundef) local_unnamed_addr #4

declare i32 @ossl_method_store_fetch(%struct.ossl_method_store_st* noundef, i32 noundef, i8* noundef, i8** noundef) local_unnamed_addr #4

declare i32 @ossl_method_store_add(%struct.ossl_method_store_st* noundef, %struct.ossl_provider_st* noundef, i32 noundef, i8* noundef, i8* noundef, i32 (i8*)* noundef, void (i8*)* noundef) local_unnamed_addr #4

declare i32 @ossl_namemap_add_name(%struct.ossl_namemap_st* noundef, i32 noundef, i8* noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind uwtable
define internal fastcc i8* @loader_from_algorithm(i32 noundef %scheme_id, %struct.ossl_algorithm_st* nocapture noundef readonly %algodef, %struct.ossl_provider_st* noundef %prov) unnamed_addr #3 {
entry:
  %implementation = getelementptr inbounds %struct.ossl_algorithm_st, %struct.ossl_algorithm_st* %algodef, i64 0, i32 2
  %0 = load %struct.ossl_dispatch_st*, %struct.ossl_dispatch_st** %implementation, align 8, !tbaa !27
  %call = tail call fastcc %struct.ossl_store_loader_st* @new_loader(%struct.ossl_provider_st* noundef %prov) #8
  %cmp = icmp eq %struct.ossl_store_loader_st* %call, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %scheme_id1 = getelementptr inbounds %struct.ossl_store_loader_st, %struct.ossl_store_loader_st* %call, i64 0, i32 13
  store i32 %scheme_id, i32* %scheme_id1, align 8, !tbaa !20
  %property_definition = getelementptr inbounds %struct.ossl_algorithm_st, %struct.ossl_algorithm_st* %algodef, i64 0, i32 1
  %1 = load i8*, i8** %property_definition, align 8, !tbaa !28
  %propdef = getelementptr inbounds %struct.ossl_store_loader_st, %struct.ossl_store_loader_st* %call, i64 0, i32 14
  store i8* %1, i8** %propdef, align 8, !tbaa !19
  %algorithm_description = getelementptr inbounds %struct.ossl_algorithm_st, %struct.ossl_algorithm_st* %algodef, i64 0, i32 3
  %2 = load i8*, i8** %algorithm_description, align 8, !tbaa !29
  %description = getelementptr inbounds %struct.ossl_store_loader_st, %struct.ossl_store_loader_st* %call, i64 0, i32 15
  store i8* %2, i8** %description, align 8, !tbaa !21
  %p_export_object = getelementptr inbounds %struct.ossl_store_loader_st, %struct.ossl_store_loader_st* %call, i64 0, i32 25
  %p_close = getelementptr inbounds %struct.ossl_store_loader_st, %struct.ossl_store_loader_st* %call, i64 0, i32 24
  %p_eof = getelementptr inbounds %struct.ossl_store_loader_st, %struct.ossl_store_loader_st* %call, i64 0, i32 23
  %p_load = getelementptr inbounds %struct.ossl_store_loader_st, %struct.ossl_store_loader_st* %call, i64 0, i32 22
  %p_set_ctx_params = getelementptr inbounds %struct.ossl_store_loader_st, %struct.ossl_store_loader_st* %call, i64 0, i32 21
  %p_settable_ctx_params = getelementptr inbounds %struct.ossl_store_loader_st, %struct.ossl_store_loader_st* %call, i64 0, i32 20
  %p_attach = getelementptr inbounds %struct.ossl_store_loader_st, %struct.ossl_store_loader_st* %call, i64 0, i32 19
  %p_open = getelementptr inbounds %struct.ossl_store_loader_st, %struct.ossl_store_loader_st* %call, i64 0, i32 18
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %fns.0 = phi %struct.ossl_dispatch_st* [ %0, %if.end ], [ %incdec.ptr, %for.inc ]
  %function_id = getelementptr inbounds %struct.ossl_dispatch_st, %struct.ossl_dispatch_st* %fns.0, i64 0, i32 0
  %3 = load i32, i32* %function_id, align 8, !tbaa !30
  switch i32 %3, label %for.inc [
    i32 0, label %for.end
    i32 1, label %sw.bb
    i32 2, label %sw.bb9
    i32 3, label %sw.bb15
    i32 4, label %sw.bb21
    i32 5, label %sw.bb27
    i32 6, label %sw.bb33
    i32 7, label %sw.bb39
    i32 8, label %sw.bb45
  ]

sw.bb:                                            ; preds = %for.cond
  %4 = load i8* (i8*, i8*)*, i8* (i8*, i8*)** %p_open, align 8, !tbaa !32
  %cmp4 = icmp eq i8* (i8*, i8*)* %4, null
  br i1 %cmp4, label %if.then5, label %for.inc

if.then5:                                         ; preds = %sw.bb
  %call6 = tail call fastcc i8* (i8*, i8*)* @OSSL_FUNC_store_open(%struct.ossl_dispatch_st* noundef nonnull %fns.0) #8
  store i8* (i8*, i8*)* %call6, i8* (i8*, i8*)** %p_open, align 8, !tbaa !32
  br label %for.inc

sw.bb9:                                           ; preds = %for.cond
  %5 = load i8* (i8*, %struct.ossl_core_bio_st*)*, i8* (i8*, %struct.ossl_core_bio_st*)** %p_attach, align 8, !tbaa !33
  %cmp10 = icmp eq i8* (i8*, %struct.ossl_core_bio_st*)* %5, null
  br i1 %cmp10, label %if.then11, label %for.inc

if.then11:                                        ; preds = %sw.bb9
  %call12 = tail call fastcc i8* (i8*, %struct.ossl_core_bio_st*)* @OSSL_FUNC_store_attach(%struct.ossl_dispatch_st* noundef nonnull %fns.0) #8
  store i8* (i8*, %struct.ossl_core_bio_st*)* %call12, i8* (i8*, %struct.ossl_core_bio_st*)** %p_attach, align 8, !tbaa !33
  br label %for.inc

sw.bb15:                                          ; preds = %for.cond
  %6 = load %struct.ossl_param_st* (i8*)*, %struct.ossl_param_st* (i8*)** %p_settable_ctx_params, align 8, !tbaa !34
  %cmp16 = icmp eq %struct.ossl_param_st* (i8*)* %6, null
  br i1 %cmp16, label %if.then17, label %for.inc

if.then17:                                        ; preds = %sw.bb15
  %call18 = tail call fastcc %struct.ossl_param_st* (i8*)* @OSSL_FUNC_store_settable_ctx_params(%struct.ossl_dispatch_st* noundef nonnull %fns.0) #8
  store %struct.ossl_param_st* (i8*)* %call18, %struct.ossl_param_st* (i8*)** %p_settable_ctx_params, align 8, !tbaa !34
  br label %for.inc

sw.bb21:                                          ; preds = %for.cond
  %7 = load i32 (i8*, %struct.ossl_param_st*)*, i32 (i8*, %struct.ossl_param_st*)** %p_set_ctx_params, align 8, !tbaa !35
  %cmp22 = icmp eq i32 (i8*, %struct.ossl_param_st*)* %7, null
  br i1 %cmp22, label %if.then23, label %for.inc

if.then23:                                        ; preds = %sw.bb21
  %call24 = tail call fastcc i32 (i8*, %struct.ossl_param_st*)* @OSSL_FUNC_store_set_ctx_params(%struct.ossl_dispatch_st* noundef nonnull %fns.0) #8
  store i32 (i8*, %struct.ossl_param_st*)* %call24, i32 (i8*, %struct.ossl_param_st*)** %p_set_ctx_params, align 8, !tbaa !35
  br label %for.inc

sw.bb27:                                          ; preds = %for.cond
  %8 = load i32 (i8*, i32 (%struct.ossl_param_st*, i8*)*, i8*, i32 (i8*, i64, i64*, %struct.ossl_param_st*, i8*)*, i8*)*, i32 (i8*, i32 (%struct.ossl_param_st*, i8*)*, i8*, i32 (i8*, i64, i64*, %struct.ossl_param_st*, i8*)*, i8*)** %p_load, align 8, !tbaa !36
  %cmp28 = icmp eq i32 (i8*, i32 (%struct.ossl_param_st*, i8*)*, i8*, i32 (i8*, i64, i64*, %struct.ossl_param_st*, i8*)*, i8*)* %8, null
  br i1 %cmp28, label %if.then29, label %for.inc

if.then29:                                        ; preds = %sw.bb27
  %call30 = tail call fastcc i32 (i8*, i32 (%struct.ossl_param_st*, i8*)*, i8*, i32 (i8*, i64, i64*, %struct.ossl_param_st*, i8*)*, i8*)* @OSSL_FUNC_store_load(%struct.ossl_dispatch_st* noundef nonnull %fns.0) #8
  store i32 (i8*, i32 (%struct.ossl_param_st*, i8*)*, i8*, i32 (i8*, i64, i64*, %struct.ossl_param_st*, i8*)*, i8*)* %call30, i32 (i8*, i32 (%struct.ossl_param_st*, i8*)*, i8*, i32 (i8*, i64, i64*, %struct.ossl_param_st*, i8*)*, i8*)** %p_load, align 8, !tbaa !36
  br label %for.inc

sw.bb33:                                          ; preds = %for.cond
  %9 = load i32 (i8*)*, i32 (i8*)** %p_eof, align 8, !tbaa !37
  %cmp34 = icmp eq i32 (i8*)* %9, null
  br i1 %cmp34, label %if.then35, label %for.inc

if.then35:                                        ; preds = %sw.bb33
  %call36 = tail call fastcc i32 (i8*)* @OSSL_FUNC_store_eof(%struct.ossl_dispatch_st* noundef nonnull %fns.0) #8
  store i32 (i8*)* %call36, i32 (i8*)** %p_eof, align 8, !tbaa !37
  br label %for.inc

sw.bb39:                                          ; preds = %for.cond
  %10 = load i32 (i8*)*, i32 (i8*)** %p_close, align 8, !tbaa !38
  %cmp40 = icmp eq i32 (i8*)* %10, null
  br i1 %cmp40, label %if.then41, label %for.inc

if.then41:                                        ; preds = %sw.bb39
  %call42 = tail call fastcc i32 (i8*)* @OSSL_FUNC_store_close(%struct.ossl_dispatch_st* noundef nonnull %fns.0) #8
  store i32 (i8*)* %call42, i32 (i8*)** %p_close, align 8, !tbaa !38
  br label %for.inc

sw.bb45:                                          ; preds = %for.cond
  %11 = load i32 (i8*, i8*, i64, i32 (%struct.ossl_param_st*, i8*)*, i8*)*, i32 (i8*, i8*, i64, i32 (%struct.ossl_param_st*, i8*)*, i8*)** %p_export_object, align 8, !tbaa !39
  %cmp46 = icmp eq i32 (i8*, i8*, i64, i32 (%struct.ossl_param_st*, i8*)*, i8*)* %11, null
  br i1 %cmp46, label %if.then47, label %for.inc

if.then47:                                        ; preds = %sw.bb45
  %call48 = tail call fastcc i32 (i8*, i8*, i64, i32 (%struct.ossl_param_st*, i8*)*, i8*)* @OSSL_FUNC_store_export_object(%struct.ossl_dispatch_st* noundef nonnull %fns.0) #8
  store i32 (i8*, i8*, i64, i32 (%struct.ossl_param_st*, i8*)*, i8*)* %call48, i32 (i8*, i8*, i64, i32 (%struct.ossl_param_st*, i8*)*, i8*)** %p_export_object, align 8, !tbaa !39
  br label %for.inc

for.inc:                                          ; preds = %for.cond, %if.then5, %sw.bb, %if.then11, %sw.bb9, %if.then17, %sw.bb15, %if.then23, %sw.bb21, %if.then29, %sw.bb27, %if.then35, %sw.bb33, %if.then41, %sw.bb39, %if.then47, %sw.bb45
  %incdec.ptr = getelementptr inbounds %struct.ossl_dispatch_st, %struct.ossl_dispatch_st* %fns.0, i64 1
  br label %for.cond, !llvm.loop !40

for.end:                                          ; preds = %for.cond
  %12 = load i8* (i8*, i8*)*, i8* (i8*, i8*)** %p_open, align 8, !tbaa !32
  %cmp52 = icmp eq i8* (i8*, i8*)* %12, null
  br i1 %cmp52, label %land.lhs.true, label %lor.lhs.false

land.lhs.true:                                    ; preds = %for.end
  %13 = load i8* (i8*, %struct.ossl_core_bio_st*)*, i8* (i8*, %struct.ossl_core_bio_st*)** %p_attach, align 8, !tbaa !33
  %cmp54 = icmp eq i8* (i8*, %struct.ossl_core_bio_st*)* %13, null
  br i1 %cmp54, label %if.then63, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true, %for.end
  %14 = load i32 (i8*, i32 (%struct.ossl_param_st*, i8*)*, i8*, i32 (i8*, i64, i64*, %struct.ossl_param_st*, i8*)*, i8*)*, i32 (i8*, i32 (%struct.ossl_param_st*, i8*)*, i8*, i32 (i8*, i64, i64*, %struct.ossl_param_st*, i8*)*, i8*)** %p_load, align 8, !tbaa !36
  %cmp56 = icmp eq i32 (i8*, i32 (%struct.ossl_param_st*, i8*)*, i8*, i32 (i8*, i64, i64*, %struct.ossl_param_st*, i8*)*, i8*)* %14, null
  br i1 %cmp56, label %if.then63, label %lor.lhs.false57

lor.lhs.false57:                                  ; preds = %lor.lhs.false
  %15 = load i32 (i8*)*, i32 (i8*)** %p_eof, align 8, !tbaa !37
  %cmp59 = icmp eq i32 (i8*)* %15, null
  br i1 %cmp59, label %if.then63, label %lor.lhs.false60

lor.lhs.false60:                                  ; preds = %lor.lhs.false57
  %16 = load i32 (i8*)*, i32 (i8*)** %p_close, align 8, !tbaa !38
  %cmp62 = icmp eq i32 (i8*)* %16, null
  br i1 %cmp62, label %if.then63, label %if.end64

if.then63:                                        ; preds = %lor.lhs.false60, %lor.lhs.false57, %lor.lhs.false, %land.lhs.true
  tail call void @OSSL_STORE_LOADER_free(%struct.ossl_store_loader_st* noundef nonnull %call) #8
  tail call void @ERR_new() #9
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 noundef 228, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.loader_from_algorithm, i64 0, i64 0)) #9
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 44, i32 noundef 116, i8* noundef null) #9
  br label %cleanup

if.end64:                                         ; preds = %lor.lhs.false60
  %17 = bitcast %struct.ossl_store_loader_st* %call to i8*
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end64, %if.then63
  %retval.0 = phi i8* [ null, %if.then63 ], [ %17, %if.end64 ], [ null, %entry ]
  ret i8* %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.ossl_store_loader_st* @new_loader(%struct.ossl_provider_st* noundef %prov) unnamed_addr #3 {
entry:
  %call = tail call i8* @CRYPTO_zalloc(i64 noundef 208, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 noundef 49) #9
  %0 = bitcast i8* %call to %struct.ossl_store_loader_st*
  %cmp = icmp eq i8* %call, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %call1 = tail call i8* @CRYPTO_THREAD_lock_new() #9
  %lock = getelementptr inbounds i8, i8* %call, i64 136
  %1 = bitcast i8* %lock to i8**
  store i8* %call1, i8** %1, align 8, !tbaa !11
  %cmp2 = icmp eq i8* %call1, null
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  tail call void @CRYPTO_free(i8* noundef %call, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 noundef 51) #9
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %prov3 = getelementptr inbounds i8, i8* %call, i64 96
  %2 = bitcast i8* %prov3 to %struct.ossl_provider_st**
  store %struct.ossl_provider_st* %prov, %struct.ossl_provider_st** %2, align 8, !tbaa !4
  %call4 = tail call i32 @ossl_provider_up_ref(%struct.ossl_provider_st* noundef %prov) #9
  %refcnt = getelementptr inbounds i8, i8* %call, i64 128
  %3 = bitcast i8* %refcnt to i32*
  store atomic i32 1, i32* %3 seq_cst, align 4, !tbaa !42
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi %struct.ossl_store_loader_st* [ null, %if.then ], [ %0, %if.end ]
  ret %struct.ossl_store_loader_st* %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal fastcc i8* (i8*, i8*)* @OSSL_FUNC_store_open(%struct.ossl_dispatch_st* nocapture noundef readonly %opf) unnamed_addr #5 {
entry:
  %function = getelementptr inbounds %struct.ossl_dispatch_st, %struct.ossl_dispatch_st* %opf, i64 0, i32 1
  %0 = bitcast void ()** %function to i8* (i8*, i8*)**
  %1 = load i8* (i8*, i8*)*, i8* (i8*, i8*)** %0, align 8, !tbaa !43
  ret i8* (i8*, i8*)* %1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal fastcc i8* (i8*, %struct.ossl_core_bio_st*)* @OSSL_FUNC_store_attach(%struct.ossl_dispatch_st* nocapture noundef readonly %opf) unnamed_addr #5 {
entry:
  %function = getelementptr inbounds %struct.ossl_dispatch_st, %struct.ossl_dispatch_st* %opf, i64 0, i32 1
  %0 = bitcast void ()** %function to i8* (i8*, %struct.ossl_core_bio_st*)**
  %1 = load i8* (i8*, %struct.ossl_core_bio_st*)*, i8* (i8*, %struct.ossl_core_bio_st*)** %0, align 8, !tbaa !43
  ret i8* (i8*, %struct.ossl_core_bio_st*)* %1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal fastcc %struct.ossl_param_st* (i8*)* @OSSL_FUNC_store_settable_ctx_params(%struct.ossl_dispatch_st* nocapture noundef readonly %opf) unnamed_addr #5 {
entry:
  %function = getelementptr inbounds %struct.ossl_dispatch_st, %struct.ossl_dispatch_st* %opf, i64 0, i32 1
  %0 = bitcast void ()** %function to %struct.ossl_param_st* (i8*)**
  %1 = load %struct.ossl_param_st* (i8*)*, %struct.ossl_param_st* (i8*)** %0, align 8, !tbaa !43
  ret %struct.ossl_param_st* (i8*)* %1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal fastcc i32 (i8*, %struct.ossl_param_st*)* @OSSL_FUNC_store_set_ctx_params(%struct.ossl_dispatch_st* nocapture noundef readonly %opf) unnamed_addr #5 {
entry:
  %function = getelementptr inbounds %struct.ossl_dispatch_st, %struct.ossl_dispatch_st* %opf, i64 0, i32 1
  %0 = bitcast void ()** %function to i32 (i8*, %struct.ossl_param_st*)**
  %1 = load i32 (i8*, %struct.ossl_param_st*)*, i32 (i8*, %struct.ossl_param_st*)** %0, align 8, !tbaa !43
  ret i32 (i8*, %struct.ossl_param_st*)* %1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal fastcc i32 (i8*, i32 (%struct.ossl_param_st*, i8*)*, i8*, i32 (i8*, i64, i64*, %struct.ossl_param_st*, i8*)*, i8*)* @OSSL_FUNC_store_load(%struct.ossl_dispatch_st* nocapture noundef readonly %opf) unnamed_addr #5 {
entry:
  %function = getelementptr inbounds %struct.ossl_dispatch_st, %struct.ossl_dispatch_st* %opf, i64 0, i32 1
  %0 = bitcast void ()** %function to i32 (i8*, i32 (%struct.ossl_param_st*, i8*)*, i8*, i32 (i8*, i64, i64*, %struct.ossl_param_st*, i8*)*, i8*)**
  %1 = load i32 (i8*, i32 (%struct.ossl_param_st*, i8*)*, i8*, i32 (i8*, i64, i64*, %struct.ossl_param_st*, i8*)*, i8*)*, i32 (i8*, i32 (%struct.ossl_param_st*, i8*)*, i8*, i32 (i8*, i64, i64*, %struct.ossl_param_st*, i8*)*, i8*)** %0, align 8, !tbaa !43
  ret i32 (i8*, i32 (%struct.ossl_param_st*, i8*)*, i8*, i32 (i8*, i64, i64*, %struct.ossl_param_st*, i8*)*, i8*)* %1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal fastcc i32 (i8*)* @OSSL_FUNC_store_eof(%struct.ossl_dispatch_st* nocapture noundef readonly %opf) unnamed_addr #5 {
entry:
  %function = getelementptr inbounds %struct.ossl_dispatch_st, %struct.ossl_dispatch_st* %opf, i64 0, i32 1
  %0 = bitcast void ()** %function to i32 (i8*)**
  %1 = load i32 (i8*)*, i32 (i8*)** %0, align 8, !tbaa !43
  ret i32 (i8*)* %1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal fastcc i32 (i8*)* @OSSL_FUNC_store_close(%struct.ossl_dispatch_st* nocapture noundef readonly %opf) unnamed_addr #5 {
entry:
  %function = getelementptr inbounds %struct.ossl_dispatch_st, %struct.ossl_dispatch_st* %opf, i64 0, i32 1
  %0 = bitcast void ()** %function to i32 (i8*)**
  %1 = load i32 (i8*)*, i32 (i8*)** %0, align 8, !tbaa !43
  ret i32 (i8*)* %1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal fastcc i32 (i8*, i8*, i64, i32 (%struct.ossl_param_st*, i8*)*, i8*)* @OSSL_FUNC_store_export_object(%struct.ossl_dispatch_st* nocapture noundef readonly %opf) unnamed_addr #5 {
entry:
  %function = getelementptr inbounds %struct.ossl_dispatch_st, %struct.ossl_dispatch_st* %opf, i64 0, i32 1
  %0 = bitcast void ()** %function to i32 (i8*, i8*, i64, i32 (%struct.ossl_param_st*, i8*)*, i8*)**
  %1 = load i32 (i8*, i8*, i64, i32 (%struct.ossl_param_st*, i8*)*, i8*)*, i32 (i8*, i8*, i64, i32 (%struct.ossl_param_st*, i8*)*, i8*)** %0, align 8, !tbaa !43
  ret i32 (i8*, i8*, i64, i32 (%struct.ossl_param_st*, i8*)*, i8*)* %1
}

declare i8* @CRYPTO_zalloc(i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #4

declare i8* @CRYPTO_THREAD_lock_new() local_unnamed_addr #4

declare i32 @ossl_provider_up_ref(%struct.ossl_provider_st* noundef) local_unnamed_addr #4

declare void @ossl_method_store_free(%struct.ossl_method_store_st* noundef) local_unnamed_addr #4

declare i8* @ossl_lib_ctx_get_data(%struct.ossl_lib_ctx_st* noundef, i32 noundef, %struct.ossl_lib_ctx_method* noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind uwtable
define internal i8* @loader_store_new(%struct.ossl_lib_ctx_st* noundef %ctx) #3 {
entry:
  %call = tail call %struct.ossl_method_store_st* @ossl_method_store_new(%struct.ossl_lib_ctx_st* noundef %ctx) #9
  %0 = bitcast %struct.ossl_method_store_st* %call to i8*
  ret i8* %0
}

; Function Attrs: noinline nounwind uwtable
define internal void @loader_store_free(i8* noundef %vstore) #3 {
entry:
  %0 = bitcast i8* %vstore to %struct.ossl_method_store_st*
  tail call void @ossl_method_store_free(%struct.ossl_method_store_st* noundef %0) #9
  ret void
}

attributes #0 = { mustprogress nofree noinline nounwind uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { mustprogress nofree noinline norecurse nounwind uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #7 = { nounwind }
attributes #8 = { nobuiltin "no-builtins" }
attributes #9 = { nobuiltin nounwind "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{!"clang version 14.0.0"}
!4 = !{!5, !6, i64 96}
!5 = !{!"ossl_store_loader_st", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !6, i64 40, !6, i64 48, !6, i64 56, !6, i64 64, !6, i64 72, !6, i64 80, !6, i64 88, !6, i64 96, !9, i64 104, !6, i64 112, !6, i64 120, !7, i64 128, !6, i64 136, !6, i64 144, !6, i64 152, !6, i64 160, !6, i64 168, !6, i64 176, !6, i64 184, !6, i64 192, !6, i64 200}
!6 = !{!"any pointer", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!"int", !7, i64 0}
!10 = !{!9, !9, i64 0}
!11 = !{!5, !6, i64 136}
!12 = !{!13, !6, i64 0}
!13 = !{!"loader_data_st", !6, i64 0, !9, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !9, i64 40}
!14 = !{!13, !6, i64 32}
!15 = !{!6, !6, i64 0}
!16 = !{!13, !9, i64 8}
!17 = !{!13, !6, i64 16}
!18 = !{!13, !6, i64 24}
!19 = !{!5, !6, i64 112}
!20 = !{!5, !9, i64 104}
!21 = !{!5, !6, i64 120}
!22 = !{!23, !6, i64 0}
!23 = !{!"do_one_data_st", !6, i64 0, !6, i64 8}
!24 = !{!23, !6, i64 8}
!25 = !{!26, !6, i64 0}
!26 = !{!"ossl_algorithm_st", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24}
!27 = !{!26, !6, i64 16}
!28 = !{!26, !6, i64 8}
!29 = !{!26, !6, i64 24}
!30 = !{!31, !9, i64 0}
!31 = !{!"ossl_dispatch_st", !9, i64 0, !6, i64 8}
!32 = !{!5, !6, i64 144}
!33 = !{!5, !6, i64 152}
!34 = !{!5, !6, i64 160}
!35 = !{!5, !6, i64 168}
!36 = !{!5, !6, i64 176}
!37 = !{!5, !6, i64 184}
!38 = !{!5, !6, i64 192}
!39 = !{!5, !6, i64 200}
!40 = distinct !{!40, !41}
!41 = !{!"llvm.loop.mustprogress"}
!42 = !{!5, !7, i64 128}
!43 = !{!31, !6, i64 8}
