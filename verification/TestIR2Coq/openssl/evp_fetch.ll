; ModuleID = 'crypto/evp/evp_fetch.c'
source_filename = "crypto/evp/evp_fetch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ossl_method_construct_method_st = type { i8* (i8*)*, i8* (i8*, i8*)*, i32 (i8*, i8*, %struct.ossl_provider_st*, i8*, i8*, i8*)*, i8* (%struct.ossl_algorithm_st*, %struct.ossl_provider_st*, i8*)*, void (i8*, i8*)* }
%struct.ossl_provider_st = type opaque
%struct.ossl_algorithm_st = type { i8*, i8*, %struct.ossl_dispatch_st*, i8* }
%struct.ossl_dispatch_st = type { i32, void ()* }
%struct.ossl_lib_ctx_method = type { i32, i8* (%struct.ossl_lib_ctx_st*)*, void (i8*)* }
%struct.ossl_lib_ctx_st = type opaque
%struct.evp_method_data_st = type { %struct.ossl_lib_ctx_st*, i32, i32, i8*, i8*, %struct.ossl_method_store_st*, i8, i8* (i32, %struct.ossl_algorithm_st*, %struct.ossl_provider_st*)*, i32 (i8*)*, void (i8*)* }
%struct.ossl_method_store_st = type opaque
%struct.ossl_namemap_st = type opaque
%struct.ossl_property_list_st = type opaque
%struct.filter_data_st = type { i32, void (i8*, i8*)*, i8* }

@.str = private unnamed_addr constant [23 x i8] c"crypto/evp/evp_fetch.c\00", align 1
@__func__.evp_set_default_properties_int = private unnamed_addr constant [31 x i8] c"evp_set_default_properties_int\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"fips\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"fips=yes\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"-fips\00", align 1
@.str.4 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@__func__.evp_get_global_properties_str = private unnamed_addr constant [30 x i8] c"evp_get_global_properties_str\00", align 1
@__func__.inner_evp_generic_fetch = private unnamed_addr constant [24 x i8] c"inner_evp_generic_fetch\00", align 1
@__const.inner_evp_generic_fetch.mcm = private unnamed_addr constant %struct.ossl_method_construct_method_st { i8* (i8*)* @get_tmp_evp_method_store, i8* (i8*, i8*)* @get_evp_method_from_store, i32 (i8*, i8*, %struct.ossl_provider_st*, i8*, i8*, i8*)* @put_evp_method_in_store, i8* (%struct.ossl_algorithm_st*, %struct.ossl_provider_st*, i8*)* @construct_evp_method, void (i8*, i8*)* @destruct_evp_method }, align 8
@.str.5 = private unnamed_addr constant [41 x i8] c"%s, Algorithm (%s : %d), Properties (%s)\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"<null>\00", align 1
@evp_method_store_method = internal constant %struct.ossl_lib_ctx_method { i32 2, i8* (%struct.ossl_lib_ctx_st*)* @evp_method_store_new, void (i8*)* @evp_method_store_free }, align 8
@__func__.evp_set_parsed_default_properties = private unnamed_addr constant [34 x i8] c"evp_set_parsed_default_properties\00", align 1
@__func__.evp_default_properties_merge = private unnamed_addr constant [29 x i8] c"evp_default_properties_merge\00", align 1

; Function Attrs: noinline nounwind uwtable
define i8* @evp_generic_fetch(%struct.ossl_lib_ctx_st* noundef %libctx, i32 noundef %operation_id, i8* noundef %name, i8* noundef %properties, i8* (i32, %struct.ossl_algorithm_st*, %struct.ossl_provider_st*)* noundef %new_method, i32 (i8*)* noundef %up_ref_method, void (i8*)* noundef %free_method) local_unnamed_addr #0 {
entry:
  %methdata = alloca %struct.evp_method_data_st, align 8
  %0 = bitcast %struct.evp_method_data_st* %methdata to i8*
  call void @llvm.lifetime.start.p0i8(i64 72, i8* nonnull %0) #6
  %libctx1 = getelementptr inbounds %struct.evp_method_data_st, %struct.evp_method_data_st* %methdata, i64 0, i32 0
  store %struct.ossl_lib_ctx_st* %libctx, %struct.ossl_lib_ctx_st** %libctx1, align 8, !tbaa !4
  %tmp_store = getelementptr inbounds %struct.evp_method_data_st, %struct.evp_method_data_st* %methdata, i64 0, i32 5
  store %struct.ossl_method_store_st* null, %struct.ossl_method_store_st** %tmp_store, align 8, !tbaa !10
  %call = call fastcc i8* @inner_evp_generic_fetch(%struct.evp_method_data_st* noundef nonnull %methdata, i32 noundef %operation_id, i32 noundef 0, i8* noundef %name, i8* noundef %properties, i8* (i32, %struct.ossl_algorithm_st*, %struct.ossl_provider_st*)* noundef %new_method, i32 (i8*)* noundef %up_ref_method, void (i8*)* noundef %free_method) #7
  %1 = bitcast %struct.ossl_method_store_st** %tmp_store to i8**
  %2 = load i8*, i8** %1, align 8, !tbaa !10
  call fastcc void @dealloc_tmp_evp_method_store(i8* noundef %2) #7
  call void @llvm.lifetime.end.p0i8(i64 72, i8* nonnull %0) #6
  ret i8* %call
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: noinline nounwind uwtable
define internal fastcc i8* @inner_evp_generic_fetch(%struct.evp_method_data_st* noundef %methdata, i32 noundef %operation_id, i32 noundef %name_id, i8* noundef %name, i8* noundef %properties, i8* (i32, %struct.ossl_algorithm_st*, %struct.ossl_provider_st*)* noundef %new_method, i32 (i8*)* noundef %up_ref_method, void (i8*)* noundef %free_method) unnamed_addr #0 {
entry:
  %method = alloca i8*, align 8
  %mcm = alloca %struct.ossl_method_construct_method_st, align 8
  %libctx = getelementptr inbounds %struct.evp_method_data_st, %struct.evp_method_data_st* %methdata, i64 0, i32 0
  %0 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** %libctx, align 8, !tbaa !4
  %call = tail call fastcc %struct.ossl_method_store_st* @get_evp_method_store(%struct.ossl_lib_ctx_st* noundef %0) #7
  %1 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** %libctx, align 8, !tbaa !4
  %call2 = tail call %struct.ossl_namemap_st* @ossl_namemap_stored(%struct.ossl_lib_ctx_st* noundef %1) #8
  %2 = bitcast i8** %method to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #6
  store i8* null, i8** %method, align 8, !tbaa !11
  %cmp = icmp eq %struct.ossl_method_store_st* %call, null
  %cmp3 = icmp eq %struct.ossl_namemap_st* %call2, null
  %or.cond = select i1 %cmp, i1 true, i1 %cmp3
  br i1 %or.cond, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 253, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.inner_evp_generic_fetch, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 6, i32 noundef 524550, i8* noundef null) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %cmp4 = icmp sgt i32 %operation_id, 0
  br i1 %cmp4, label %if.end8, label %if.then7

if.then7:                                         ; preds = %if.end
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 262, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.inner_evp_generic_fetch, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 6, i32 noundef 786691, i8* noundef null) #8
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %cmp9 = icmp eq i32 %name_id, 0
  %cmp11 = icmp eq i8* %name, null
  %3 = or i1 %cmp9, %cmp11
  br i1 %3, label %if.end16, label %if.then15

if.then15:                                        ; preds = %if.end8
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 271, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.inner_evp_generic_fetch, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 6, i32 noundef 786691, i8* noundef null) #8
  br label %cleanup

if.end16:                                         ; preds = %if.end8
  %cmp19 = icmp ne i8* %name, null
  %or.cond94 = and i1 %cmp9, %cmp19
  br i1 %or.cond94, label %if.then21, label %if.end23

if.then21:                                        ; preds = %if.end16
  %call22 = tail call i32 @ossl_namemap_name2num(%struct.ossl_namemap_st* noundef nonnull %call2, i8* noundef nonnull %name) #8
  br label %if.end23

if.end23:                                         ; preds = %if.then21, %if.end16
  %name_id.addr.0 = phi i32 [ %call22, %if.then21 ], [ %name_id, %if.end16 ]
  %cmp24.not = icmp eq i32 %name_id.addr.0, 0
  br i1 %cmp24.not, label %if.then40, label %land.lhs.true26

land.lhs.true26:                                  ; preds = %if.end23
  %call27 = tail call fastcc i32 @evp_method_id(i32 noundef %name_id.addr.0, i32 noundef %operation_id) #7
  %cmp28 = icmp eq i32 %call27, 0
  br i1 %cmp28, label %if.then30, label %lor.lhs.false38

if.then30:                                        ; preds = %land.lhs.true26
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 288, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.inner_evp_generic_fetch, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 6, i32 noundef 786691, i8* noundef null) #8
  br label %cleanup

lor.lhs.false38:                                  ; preds = %land.lhs.true26
  %call39 = call i32 @ossl_method_store_cache_get(%struct.ossl_method_store_st* noundef nonnull %call, i32 noundef %call27, i8* noundef %properties, i8** noundef nonnull %method) #8
  %tobool.not = icmp eq i32 %call39, 0
  br i1 %tobool.not, label %if.then40, label %if.end64

if.then40:                                        ; preds = %if.end23, %lor.lhs.false38
  %4 = bitcast %struct.ossl_method_construct_method_st* %mcm to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %4) #6
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(40) %4, i8* noundef nonnull align 8 dereferenceable(40) bitcast (%struct.ossl_method_construct_method_st* @__const.inner_evp_generic_fetch.mcm to i8*), i64 40, i1 false)
  %operation_id41 = getelementptr inbounds %struct.evp_method_data_st, %struct.evp_method_data_st* %methdata, i64 0, i32 1
  store i32 %operation_id, i32* %operation_id41, align 8, !tbaa !12
  %name_id42 = getelementptr inbounds %struct.evp_method_data_st, %struct.evp_method_data_st* %methdata, i64 0, i32 2
  store i32 %name_id.addr.0, i32* %name_id42, align 4, !tbaa !13
  %names = getelementptr inbounds %struct.evp_method_data_st, %struct.evp_method_data_st* %methdata, i64 0, i32 3
  store i8* %name, i8** %names, align 8, !tbaa !14
  %propquery = getelementptr inbounds %struct.evp_method_data_st, %struct.evp_method_data_st* %methdata, i64 0, i32 4
  store i8* %properties, i8** %propquery, align 8, !tbaa !15
  %method_from_algorithm = getelementptr inbounds %struct.evp_method_data_st, %struct.evp_method_data_st* %methdata, i64 0, i32 7
  store i8* (i32, %struct.ossl_algorithm_st*, %struct.ossl_provider_st*)* %new_method, i8* (i32, %struct.ossl_algorithm_st*, %struct.ossl_provider_st*)** %method_from_algorithm, align 8, !tbaa !16
  %refcnt_up_method = getelementptr inbounds %struct.evp_method_data_st, %struct.evp_method_data_st* %methdata, i64 0, i32 8
  store i32 (i8*)* %up_ref_method, i32 (i8*)** %refcnt_up_method, align 8, !tbaa !17
  %destruct_method = getelementptr inbounds %struct.evp_method_data_st, %struct.evp_method_data_st* %methdata, i64 0, i32 9
  store void (i8*)* %free_method, void (i8*)** %destruct_method, align 8, !tbaa !18
  %flag_construct_error_occurred = getelementptr inbounds %struct.evp_method_data_st, %struct.evp_method_data_st* %methdata, i64 0, i32 6
  %bf.load = load i8, i8* %flag_construct_error_occurred, align 8
  %bf.clear = and i8 %bf.load, -2
  store i8 %bf.clear, i8* %flag_construct_error_occurred, align 8
  %5 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** %libctx, align 8, !tbaa !4
  %6 = bitcast %struct.evp_method_data_st* %methdata to i8*
  %call44 = call i8* @ossl_method_construct(%struct.ossl_lib_ctx_st* noundef %5, i32 noundef %operation_id, i32 noundef 0, %struct.ossl_method_construct_method_st* noundef nonnull %mcm, i8* noundef %6) #8
  store i8* %call44, i8** %method, align 8, !tbaa !11
  %cmp45.not = icmp eq i8* %call44, null
  br i1 %cmp45.not, label %if.end59, label %if.then47

if.then47:                                        ; preds = %if.then40
  br i1 %cmp24.not, label %if.end52, label %if.end52.thread

if.end52.thread:                                  ; preds = %if.then47
  %call53154 = call fastcc i32 @evp_method_id(i32 noundef %name_id.addr.0, i32 noundef %operation_id) #7
  br label %if.then56

if.end52:                                         ; preds = %if.then47
  %call51 = call i32 @ossl_namemap_name2num(%struct.ossl_namemap_st* noundef nonnull %call2, i8* noundef %name) #8
  %cmp54.not = icmp eq i32 %call51, 0
  br i1 %cmp54.not, label %if.end59, label %if.end52.if.then56_crit_edge

if.end52.if.then56_crit_edge:                     ; preds = %if.end52
  %call53 = call fastcc i32 @evp_method_id(i32 noundef %call51, i32 noundef %operation_id) #7
  %.pre = load i8*, i8** %method, align 8, !tbaa !11
  br label %if.then56

if.then56:                                        ; preds = %if.end52.if.then56_crit_edge, %if.end52.thread
  %7 = phi i8* [ %call44, %if.end52.thread ], [ %.pre, %if.end52.if.then56_crit_edge ]
  %call53157 = phi i32 [ %call53154, %if.end52.thread ], [ %call53, %if.end52.if.then56_crit_edge ]
  %name_id.addr.1156 = phi i32 [ %name_id.addr.0, %if.end52.thread ], [ %call51, %if.end52.if.then56_crit_edge ]
  %call57 = call i32 @ossl_method_store_cache_set(%struct.ossl_method_store_st* noundef nonnull %call, i32 noundef %call53157, i8* noundef %properties, i8* noundef %7, i32 (i8*)* noundef %up_ref_method, void (i8*)* noundef %free_method) #8
  br label %if.end59

if.end59:                                         ; preds = %if.end52, %if.then56, %if.then40
  %name_id.addr.2 = phi i32 [ %name_id.addr.1156, %if.then56 ], [ 0, %if.end52 ], [ %name_id.addr.0, %if.then40 ]
  %bf.load61 = load i8, i8* %flag_construct_error_occurred, align 8
  %bf.clear62 = and i8 %bf.load61, 1
  %8 = xor i8 %bf.clear62, 1
  %9 = zext i8 %8 to i32
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %4) #6
  br label %if.end64

if.end64:                                         ; preds = %if.end59, %lor.lhs.false38
  %name_id.addr.3 = phi i32 [ %name_id.addr.2, %if.end59 ], [ %name_id.addr.0, %lor.lhs.false38 ]
  %unsupported.1 = phi i32 [ %9, %if.end59 ], [ 0, %lor.lhs.false38 ]
  %cmp65 = icmp ne i32 %name_id.addr.3, 0
  %or.cond95 = or i1 %cmp19, %cmp65
  %10 = load i8*, i8** %method, align 8
  %cmp71 = icmp eq i8* %10, null
  %or.cond96 = select i1 %or.cond95, i1 %cmp71, i1 false
  br i1 %or.cond96, label %if.then73, label %cleanup

if.then73:                                        ; preds = %if.end64
  %tobool74.not = icmp eq i32 %unsupported.1, 0
  %cond = select i1 %tobool74.not, i32 524557, i32 524556
  br i1 %cmp11, label %if.then77, label %if.end79

if.then77:                                        ; preds = %if.then73
  %call78 = call i8* @ossl_namemap_num2name(%struct.ossl_namemap_st* noundef nonnull %call2, i32 noundef %name_id.addr.3, i64 noundef 0) #8
  br label %if.end79

if.end79:                                         ; preds = %if.then77, %if.then73
  %name.addr.0 = phi i8* [ %call78, %if.then77 ], [ %name, %if.then73 ]
  call void @ERR_new() #8
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 346, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.inner_evp_generic_fetch, i64 0, i64 0)) #8
  %11 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** %libctx, align 8, !tbaa !4
  %call81 = call i8* @ossl_lib_ctx_get_descriptor(%struct.ossl_lib_ctx_st* noundef %11) #8
  %cmp83 = icmp eq i8* %properties, null
  %cond88 = select i1 %cmp83, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i8* %properties
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 6, i32 noundef %cond, i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str.5, i64 0, i64 0), i8* noundef %call81, i8* noundef %name.addr.0, i32 noundef %name_id.addr.3, i8* noundef %cond88) #8
  %.pre158 = load i8*, i8** %method, align 8, !tbaa !11
  br label %cleanup

cleanup:                                          ; preds = %if.end79, %if.end64, %if.then30, %if.then15, %if.then7, %if.then
  %retval.0 = phi i8* [ null, %if.then ], [ null, %if.then30 ], [ null, %if.then15 ], [ null, %if.then7 ], [ %10, %if.end64 ], [ %.pre158, %if.end79 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #6
  ret i8* %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @dealloc_tmp_evp_method_store(i8* noundef %store) unnamed_addr #0 {
entry:
  %cmp.not = icmp eq i8* %store, null
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %0 = bitcast i8* %store to %struct.ossl_method_store_st*
  tail call void @ossl_method_store_free(%struct.ossl_method_store_st* noundef nonnull %0) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: noinline nounwind uwtable
define i8* @evp_generic_fetch_by_number(%struct.ossl_lib_ctx_st* noundef %libctx, i32 noundef %operation_id, i32 noundef %name_id, i8* noundef %properties, i8* (i32, %struct.ossl_algorithm_st*, %struct.ossl_provider_st*)* noundef %new_method, i32 (i8*)* noundef %up_ref_method, void (i8*)* noundef %free_method) local_unnamed_addr #0 {
entry:
  %methdata = alloca %struct.evp_method_data_st, align 8
  %0 = bitcast %struct.evp_method_data_st* %methdata to i8*
  call void @llvm.lifetime.start.p0i8(i64 72, i8* nonnull %0) #6
  %libctx1 = getelementptr inbounds %struct.evp_method_data_st, %struct.evp_method_data_st* %methdata, i64 0, i32 0
  store %struct.ossl_lib_ctx_st* %libctx, %struct.ossl_lib_ctx_st** %libctx1, align 8, !tbaa !4
  %tmp_store = getelementptr inbounds %struct.evp_method_data_st, %struct.evp_method_data_st* %methdata, i64 0, i32 5
  store %struct.ossl_method_store_st* null, %struct.ossl_method_store_st** %tmp_store, align 8, !tbaa !10
  %call = call fastcc i8* @inner_evp_generic_fetch(%struct.evp_method_data_st* noundef nonnull %methdata, i32 noundef %operation_id, i32 noundef %name_id, i8* noundef null, i8* noundef %properties, i8* (i32, %struct.ossl_algorithm_st*, %struct.ossl_provider_st*)* noundef %new_method, i32 (i8*)* noundef %up_ref_method, void (i8*)* noundef %free_method) #7
  %1 = bitcast %struct.ossl_method_store_st** %tmp_store to i8**
  %2 = load i8*, i8** %1, align 8, !tbaa !10
  call fastcc void @dealloc_tmp_evp_method_store(i8* noundef %2) #7
  call void @llvm.lifetime.end.p0i8(i64 72, i8* nonnull %0) #6
  ret i8* %call
}

; Function Attrs: noinline nounwind uwtable
define i32 @evp_method_store_flush(%struct.ossl_lib_ctx_st* noundef %libctx) local_unnamed_addr #0 {
entry:
  %call = tail call fastcc %struct.ossl_method_store_st* @get_evp_method_store(%struct.ossl_lib_ctx_st* noundef %libctx) #7
  %cmp.not = icmp eq %struct.ossl_method_store_st* %call, null
  br i1 %cmp.not, label %cleanup, label %if.then

if.then:                                          ; preds = %entry
  %call1 = tail call i32 @ossl_method_store_flush_cache(%struct.ossl_method_store_st* noundef nonnull %call, i32 noundef 1) #8
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.then
  %retval.0 = phi i32 [ %call1, %if.then ], [ 1, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.ossl_method_store_st* @get_evp_method_store(%struct.ossl_lib_ctx_st* noundef %libctx) unnamed_addr #0 {
entry:
  %call = tail call i8* @ossl_lib_ctx_get_data(%struct.ossl_lib_ctx_st* noundef %libctx, i32 noundef 0, %struct.ossl_lib_ctx_method* noundef nonnull @evp_method_store_method) #8
  %0 = bitcast i8* %call to %struct.ossl_method_store_st*
  ret %struct.ossl_method_store_st* %0
}

declare i32 @ossl_method_store_flush_cache(%struct.ossl_method_store_st* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @evp_set_default_properties_int(%struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef %propq, i32 noundef %loadconfig, i32 noundef %mirrored) local_unnamed_addr #0 {
entry:
  %cmp.not = icmp eq i8* %propq, null
  br i1 %cmp.not, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %call = tail call %struct.ossl_property_list_st* @ossl_parse_query(%struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef nonnull %propq, i32 noundef 1) #8
  %cmp1 = icmp eq %struct.ossl_property_list_st* %call, null
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 467, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.evp_set_default_properties_int, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 6, i32 noundef 210, i8* noundef null) #8
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true, %entry
  %pl.0 = phi %struct.ossl_property_list_st* [ %call, %land.lhs.true ], [ null, %entry ]
  %call2 = tail call fastcc i32 @evp_set_parsed_default_properties(%struct.ossl_lib_ctx_st* noundef %libctx, %struct.ossl_property_list_st* noundef %pl.0, i32 noundef %loadconfig, i32 noundef %mirrored) #7
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.then3, label %cleanup

if.then3:                                         ; preds = %if.end
  tail call void @ossl_property_free(%struct.ossl_property_list_st* noundef %pl.0) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then3, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 0, %if.then3 ], [ 1, %if.end ]
  ret i32 %retval.0
}

declare %struct.ossl_property_list_st* @ossl_parse_query(%struct.ossl_lib_ctx_st* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare void @ERR_new() local_unnamed_addr #2

declare void @ERR_set_debug(i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #2

declare void @ERR_set_error(i32 noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @evp_set_parsed_default_properties(%struct.ossl_lib_ctx_st* noundef %libctx, %struct.ossl_property_list_st* noundef %def_prop, i32 noundef %loadconfig, i32 noundef %mirrored) unnamed_addr #0 {
entry:
  %call = tail call fastcc %struct.ossl_method_store_st* @get_evp_method_store(%struct.ossl_lib_ctx_st* noundef %libctx) #7
  %call1 = tail call %struct.ossl_property_list_st** @ossl_ctx_global_properties(%struct.ossl_lib_ctx_st* noundef %libctx, i32 noundef %loadconfig) #8
  %cmp = icmp ne %struct.ossl_property_list_st** %call1, null
  %cmp2 = icmp ne %struct.ossl_method_store_st* %call, null
  %or.cond = select i1 %cmp, i1 %cmp2, i1 false
  br i1 %or.cond, label %if.then, label %if.end26

if.then:                                          ; preds = %entry
  %tobool.not = icmp eq i32 %mirrored, 0
  br i1 %tobool.not, label %if.else, label %if.then3

if.then3:                                         ; preds = %if.then
  %call4 = tail call i32 @ossl_global_properties_no_mirrored(%struct.ossl_lib_ctx_st* noundef %libctx) #8
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end7, label %cleanup27

if.else:                                          ; preds = %if.then
  tail call void @ossl_global_properties_stop_mirroring(%struct.ossl_lib_ctx_st* noundef %libctx) #8
  br label %if.end7

if.end7:                                          ; preds = %if.then3, %if.else
  %call8 = tail call i64 @ossl_property_list_to_string(%struct.ossl_lib_ctx_st* noundef %libctx, %struct.ossl_property_list_st* noundef %def_prop, i8* noundef null, i64 noundef 0) #8
  %cmp9.not = icmp eq i64 %call8, 0
  br i1 %cmp9.not, label %if.then14, label %if.end12

if.end12:                                         ; preds = %if.end7
  %call11 = tail call i8* @CRYPTO_malloc(i64 noundef %call8, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 438) #8
  %cmp13 = icmp eq i8* %call11, null
  br i1 %cmp13, label %if.then14, label %if.end15

if.then14:                                        ; preds = %if.end7, %if.end12
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 440, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @__func__.evp_set_parsed_default_properties, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 6, i32 noundef 786691, i8* noundef null) #8
  br label %cleanup27

if.end15:                                         ; preds = %if.end12
  %call16 = tail call i64 @ossl_property_list_to_string(%struct.ossl_lib_ctx_st* noundef %libctx, %struct.ossl_property_list_st* noundef %def_prop, i8* noundef nonnull %call11, i64 noundef %call8) #8
  %cmp17 = icmp eq i64 %call16, 0
  br i1 %cmp17, label %if.then18, label %if.end19

if.then18:                                        ; preds = %if.end15
  tail call void @CRYPTO_free(i8* noundef nonnull %call11, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 445) #8
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 446, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @__func__.evp_set_parsed_default_properties, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 6, i32 noundef 786691, i8* noundef null) #8
  br label %cleanup27

if.end19:                                         ; preds = %if.end15
  %call20 = tail call i32 @ossl_provider_default_props_update(%struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef nonnull %call11) #8
  tail call void @CRYPTO_free(i8* noundef nonnull %call11, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 450) #8
  %0 = load %struct.ossl_property_list_st*, %struct.ossl_property_list_st** %call1, align 8, !tbaa !11
  tail call void @ossl_property_free(%struct.ossl_property_list_st* noundef %0) #8
  store %struct.ossl_property_list_st* %def_prop, %struct.ossl_property_list_st** %call1, align 8, !tbaa !11
  %call23 = tail call i32 @ossl_method_store_flush_cache(%struct.ossl_method_store_st* noundef nonnull %call, i32 noundef 0) #8
  br label %cleanup27

if.end26:                                         ; preds = %entry
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 457, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @__func__.evp_set_parsed_default_properties, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 6, i32 noundef 786691, i8* noundef null) #8
  br label %cleanup27

cleanup27:                                        ; preds = %if.then14, %if.then18, %if.end19, %if.then3, %if.end26
  %retval.1 = phi i32 [ 0, %if.end26 ], [ 0, %if.then14 ], [ 0, %if.then18 ], [ %call23, %if.end19 ], [ 0, %if.then3 ]
  ret i32 %retval.1
}

declare void @ossl_property_free(%struct.ossl_property_list_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @EVP_set_default_properties(%struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef %propq) local_unnamed_addr #0 {
entry:
  %call = tail call i32 @evp_set_default_properties_int(%struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef %propq, i32 noundef 1, i32 noundef 0) #7
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define i32 @EVP_default_properties_is_fips_enabled(%struct.ossl_lib_ctx_st* noundef %libctx) local_unnamed_addr #0 {
entry:
  %call = tail call fastcc i32 @evp_default_property_is_enabled(%struct.ossl_lib_ctx_st* noundef %libctx) #7
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @evp_default_property_is_enabled(%struct.ossl_lib_ctx_st* noundef %libctx) unnamed_addr #0 {
entry:
  %call = tail call %struct.ossl_property_list_st** @ossl_ctx_global_properties(%struct.ossl_lib_ctx_st* noundef %libctx, i32 noundef 1) #8
  %cmp.not = icmp eq %struct.ossl_property_list_st** %call, null
  br i1 %cmp.not, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %0 = load %struct.ossl_property_list_st*, %struct.ossl_property_list_st** %call, align 8, !tbaa !11
  %call1 = tail call i32 @ossl_property_is_enabled(%struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), %struct.ossl_property_list_st* noundef %0) #8
  %tobool = icmp ne i32 %call1, 0
  %phi.cast = zext i1 %tobool to i32
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %1 = phi i32 [ 0, %entry ], [ %phi.cast, %land.rhs ]
  ret i32 %1
}

; Function Attrs: noinline nounwind uwtable
define i32 @evp_default_properties_enable_fips_int(%struct.ossl_lib_ctx_st* noundef %libctx, i32 noundef %enable, i32 noundef %loadconfig) local_unnamed_addr #0 {
entry:
  %cmp.not = icmp eq i32 %enable, 0
  %cond = select i1 %cmp.not, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0)
  %call = tail call fastcc i32 @evp_default_properties_merge(%struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef %cond, i32 noundef %loadconfig) #7
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @evp_default_properties_merge(%struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef %propq, i32 noundef %loadconfig) unnamed_addr #0 {
entry:
  %call = tail call %struct.ossl_property_list_st** @ossl_ctx_global_properties(%struct.ossl_lib_ctx_st* noundef %libctx, i32 noundef %loadconfig) #8
  %cmp = icmp eq i8* %propq, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %cmp1 = icmp eq %struct.ossl_property_list_st** %call, null
  br i1 %cmp1, label %if.then3, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %0 = load %struct.ossl_property_list_st*, %struct.ossl_property_list_st** %call, align 8, !tbaa !11
  %cmp2 = icmp eq %struct.ossl_property_list_st* %0, null
  br i1 %cmp2, label %if.then3, label %if.end5

if.then3:                                         ; preds = %lor.lhs.false, %if.end
  %call4 = tail call i32 @evp_set_default_properties_int(%struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef nonnull %propq, i32 noundef 0, i32 noundef 0) #7
  br label %cleanup

if.end5:                                          ; preds = %lor.lhs.false
  %call6 = tail call %struct.ossl_property_list_st* @ossl_parse_query(%struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef nonnull %propq, i32 noundef 1) #8
  %cmp7 = icmp eq %struct.ossl_property_list_st* %call6, null
  br i1 %cmp7, label %if.then8, label %if.end9

if.then8:                                         ; preds = %if.end5
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 493, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.evp_default_properties_merge, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 6, i32 noundef 210, i8* noundef null) #8
  br label %cleanup

if.end9:                                          ; preds = %if.end5
  %1 = load %struct.ossl_property_list_st*, %struct.ossl_property_list_st** %call, align 8, !tbaa !11
  %call10 = tail call %struct.ossl_property_list_st* @ossl_property_merge(%struct.ossl_property_list_st* noundef nonnull %call6, %struct.ossl_property_list_st* noundef %1) #8
  tail call void @ossl_property_free(%struct.ossl_property_list_st* noundef nonnull %call6) #8
  %cmp11 = icmp eq %struct.ossl_property_list_st* %call10, null
  br i1 %cmp11, label %if.then12, label %if.end13

if.then12:                                        ; preds = %if.end9
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 499, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.evp_default_properties_merge, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 6, i32 noundef 786688, i8* noundef null) #8
  br label %cleanup

if.end13:                                         ; preds = %if.end9
  %call14 = tail call fastcc i32 @evp_set_parsed_default_properties(%struct.ossl_lib_ctx_st* noundef %libctx, %struct.ossl_property_list_st* noundef nonnull %call10, i32 noundef 0, i32 noundef 0) #7
  %tobool.not = icmp eq i32 %call14, 0
  br i1 %tobool.not, label %if.then15, label %cleanup

if.then15:                                        ; preds = %if.end13
  tail call void @ossl_property_free(%struct.ossl_property_list_st* noundef nonnull %call10) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end13, %entry, %if.then15, %if.then12, %if.then8, %if.then3
  %retval.0 = phi i32 [ %call4, %if.then3 ], [ 0, %if.then8 ], [ 0, %if.then12 ], [ 0, %if.then15 ], [ 1, %entry ], [ 1, %if.end13 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @EVP_default_properties_enable_fips(%struct.ossl_lib_ctx_st* noundef %libctx, i32 noundef %enable) local_unnamed_addr #0 {
entry:
  %call = tail call i32 @evp_default_properties_enable_fips_int(%struct.ossl_lib_ctx_st* noundef %libctx, i32 noundef %enable, i32 noundef 1) #7
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define i8* @evp_get_global_properties_str(%struct.ossl_lib_ctx_st* noundef %libctx, i32 noundef %loadconfig) local_unnamed_addr #0 {
entry:
  %call = tail call %struct.ossl_property_list_st** @ossl_ctx_global_properties(%struct.ossl_lib_ctx_st* noundef %libctx, i32 noundef %loadconfig) #8
  %cmp = icmp eq %struct.ossl_property_list_st** %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call1 = tail call i8* @CRYPTO_strdup(i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0), i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 542) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = load %struct.ossl_property_list_st*, %struct.ossl_property_list_st** %call, align 8, !tbaa !11
  %call2 = tail call i64 @ossl_property_list_to_string(%struct.ossl_lib_ctx_st* noundef %libctx, %struct.ossl_property_list_st* noundef %0, i8* noundef null, i64 noundef 0) #8
  %cmp3 = icmp eq i64 %call2, 0
  br i1 %cmp3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 546, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.evp_get_global_properties_str, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 6, i32 noundef 786691, i8* noundef null) #8
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %call6 = tail call i8* @CRYPTO_malloc(i64 noundef %call2, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 550) #8
  %cmp7 = icmp eq i8* %call6, null
  br i1 %cmp7, label %if.then8, label %if.end9

if.then8:                                         ; preds = %if.end5
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 552, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.evp_get_global_properties_str, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 6, i32 noundef 786688, i8* noundef null) #8
  br label %cleanup

if.end9:                                          ; preds = %if.end5
  %1 = load %struct.ossl_property_list_st*, %struct.ossl_property_list_st** %call, align 8, !tbaa !11
  %call10 = tail call i64 @ossl_property_list_to_string(%struct.ossl_lib_ctx_st* noundef %libctx, %struct.ossl_property_list_st* noundef %1, i8* noundef nonnull %call6, i64 noundef %call2) #8
  %cmp11 = icmp eq i64 %call10, 0
  br i1 %cmp11, label %if.then12, label %cleanup

if.then12:                                        ; preds = %if.end9
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 556, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.evp_get_global_properties_str, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 6, i32 noundef 786691, i8* noundef null) #8
  tail call void @CRYPTO_free(i8* noundef nonnull %call6, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 557) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %if.then12, %if.then8, %if.then4, %if.then
  %retval.0 = phi i8* [ %call1, %if.then ], [ null, %if.then4 ], [ null, %if.then8 ], [ null, %if.then12 ], [ %call6, %if.end9 ]
  ret i8* %retval.0
}

declare %struct.ossl_property_list_st** @ossl_ctx_global_properties(%struct.ossl_lib_ctx_st* noundef, i32 noundef) local_unnamed_addr #2

declare i8* @CRYPTO_strdup(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare i64 @ossl_property_list_to_string(%struct.ossl_lib_ctx_st* noundef, %struct.ossl_property_list_st* noundef, i8* noundef, i64 noundef) local_unnamed_addr #2

declare i8* @CRYPTO_malloc(i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare void @CRYPTO_free(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define void @evp_generic_do_all(%struct.ossl_lib_ctx_st* noundef %libctx, i32 noundef %operation_id, void (i8*, i8*)* noundef %user_fn, i8* noundef %user_arg, i8* (i32, %struct.ossl_algorithm_st*, %struct.ossl_provider_st*)* noundef %new_method, i32 (i8*)* noundef %up_ref_method, void (i8*)* noundef %free_method) local_unnamed_addr #0 {
entry:
  %methdata = alloca %struct.evp_method_data_st, align 8
  %data = alloca %struct.filter_data_st, align 8
  %0 = bitcast %struct.evp_method_data_st* %methdata to i8*
  call void @llvm.lifetime.start.p0i8(i64 72, i8* nonnull %0) #6
  %1 = bitcast %struct.filter_data_st* %data to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %1) #6
  %libctx1 = getelementptr inbounds %struct.evp_method_data_st, %struct.evp_method_data_st* %methdata, i64 0, i32 0
  store %struct.ossl_lib_ctx_st* %libctx, %struct.ossl_lib_ctx_st** %libctx1, align 8, !tbaa !4
  %tmp_store = getelementptr inbounds %struct.evp_method_data_st, %struct.evp_method_data_st* %methdata, i64 0, i32 5
  store %struct.ossl_method_store_st* null, %struct.ossl_method_store_st** %tmp_store, align 8, !tbaa !10
  %call = call fastcc i8* @inner_evp_generic_fetch(%struct.evp_method_data_st* noundef nonnull %methdata, i32 noundef %operation_id, i32 noundef 0, i8* noundef null, i8* noundef null, i8* (i32, %struct.ossl_algorithm_st*, %struct.ossl_provider_st*)* noundef %new_method, i32 (i8*)* noundef %up_ref_method, void (i8*)* noundef %free_method) #7
  %operation_id2 = getelementptr inbounds %struct.filter_data_st, %struct.filter_data_st* %data, i64 0, i32 0
  store i32 %operation_id, i32* %operation_id2, align 8, !tbaa !19
  %user_fn3 = getelementptr inbounds %struct.filter_data_st, %struct.filter_data_st* %data, i64 0, i32 1
  store void (i8*, i8*)* %user_fn, void (i8*, i8*)** %user_fn3, align 8, !tbaa !21
  %user_arg4 = getelementptr inbounds %struct.filter_data_st, %struct.filter_data_st* %data, i64 0, i32 2
  store i8* %user_arg, i8** %user_arg4, align 8, !tbaa !22
  %2 = load %struct.ossl_method_store_st*, %struct.ossl_method_store_st** %tmp_store, align 8, !tbaa !10
  %cmp.not = icmp eq %struct.ossl_method_store_st* %2, null
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @ossl_method_store_do_all(%struct.ossl_method_store_st* noundef nonnull %2, void (i32, i8*, i8*)* noundef nonnull @filter_on_operation_id, i8* noundef nonnull %1) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %call7 = call fastcc %struct.ossl_method_store_st* @get_evp_method_store(%struct.ossl_lib_ctx_st* noundef %libctx) #7
  call void @ossl_method_store_do_all(%struct.ossl_method_store_st* noundef %call7, void (i32, i8*, i8*)* noundef nonnull @filter_on_operation_id, i8* noundef nonnull %1) #8
  %3 = bitcast %struct.ossl_method_store_st** %tmp_store to i8**
  %4 = load i8*, i8** %3, align 8, !tbaa !10
  call fastcc void @dealloc_tmp_evp_method_store(i8* noundef %4) #7
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %1) #6
  call void @llvm.lifetime.end.p0i8(i64 72, i8* nonnull %0) #6
  ret void
}

declare void @ossl_method_store_do_all(%struct.ossl_method_store_st* noundef, void (i32, i8*, i8*)* noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal void @filter_on_operation_id(i32 noundef %id, i8* noundef %method, i8* nocapture noundef readonly %arg) #0 {
entry:
  %and = and i32 %id, 255
  %operation_id = bitcast i8* %arg to i32*
  %0 = load i32, i32* %operation_id, align 8, !tbaa !19
  %cmp = icmp eq i32 %and, %0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %user_fn = getelementptr inbounds i8, i8* %arg, i64 8
  %1 = bitcast i8* %user_fn to void (i8*, i8*)**
  %2 = load void (i8*, i8*)*, void (i8*, i8*)** %1, align 8, !tbaa !21
  %user_arg = getelementptr inbounds i8, i8* %arg, i64 16
  %3 = bitcast i8* %user_arg to i8**
  %4 = load i8*, i8** %3, align 8, !tbaa !22
  tail call void %2(i8* noundef %method, i8* noundef %4) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind uwtable
define i32 @evp_is_a(%struct.ossl_provider_st* noundef %prov, i32 noundef %number, i8* noundef %legacy_name, i8* noundef %name) local_unnamed_addr #0 {
entry:
  %call = tail call %struct.ossl_lib_ctx_st* @ossl_provider_libctx(%struct.ossl_provider_st* noundef %prov) #8
  %call1 = tail call %struct.ossl_namemap_st* @ossl_namemap_stored(%struct.ossl_lib_ctx_st* noundef %call) #8
  %cmp = icmp eq %struct.ossl_provider_st* %prov, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call2 = tail call i32 @ossl_namemap_name2num(%struct.ossl_namemap_st* noundef %call1, i8* noundef %legacy_name) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %number.addr.0 = phi i32 [ %call2, %if.then ], [ %number, %entry ]
  %call3 = tail call i32 @ossl_namemap_name2num(%struct.ossl_namemap_st* noundef %call1, i8* noundef %name) #8
  %cmp4 = icmp eq i32 %call3, %number.addr.0
  %conv = zext i1 %cmp4 to i32
  ret i32 %conv
}

declare %struct.ossl_lib_ctx_st* @ossl_provider_libctx(%struct.ossl_provider_st* noundef) local_unnamed_addr #2

declare %struct.ossl_namemap_st* @ossl_namemap_stored(%struct.ossl_lib_ctx_st* noundef) local_unnamed_addr #2

declare i32 @ossl_namemap_name2num(%struct.ossl_namemap_st* noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @evp_names_do_all(%struct.ossl_provider_st* noundef %prov, i32 noundef %number, void (i8*, i8*)* noundef %fn, i8* noundef %data) local_unnamed_addr #0 {
entry:
  %call = tail call %struct.ossl_lib_ctx_st* @ossl_provider_libctx(%struct.ossl_provider_st* noundef %prov) #8
  %call1 = tail call %struct.ossl_namemap_st* @ossl_namemap_stored(%struct.ossl_lib_ctx_st* noundef %call) #8
  %call2 = tail call i32 @ossl_namemap_doall_names(%struct.ossl_namemap_st* noundef %call1, i32 noundef %number, void (i8*, i8*)* noundef %fn, i8* noundef %data) #8
  ret i32 %call2
}

declare i32 @ossl_namemap_doall_names(%struct.ossl_namemap_st* noundef, i32 noundef, void (i8*, i8*)* noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc i32 @evp_method_id(i32 noundef %name_id, i32 noundef %operation_id) unnamed_addr #3 {
entry:
  %0 = add i32 %name_id, -1
  %1 = icmp ult i32 %0, 8388607
  %2 = add i32 %operation_id, -1
  %3 = icmp ult i32 %2, 255
  %or.cond = and i1 %1, %3
  %shl = shl i32 %name_id, 8
  %and = and i32 %shl, 2147483392
  %and9 = and i32 %operation_id, 255
  %or = or i32 %and, %and9
  %retval.0 = select i1 %or.cond, i32 %or, i32 0
  ret i32 %retval.0
}

declare i32 @ossl_method_store_cache_get(%struct.ossl_method_store_st* noundef, i32 noundef, i8* noundef, i8** noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal i8* @get_tmp_evp_method_store(i8* nocapture noundef %data) #0 {
entry:
  %tmp_store = getelementptr inbounds i8, i8* %data, i64 32
  %0 = bitcast i8* %tmp_store to %struct.ossl_method_store_st**
  %1 = load %struct.ossl_method_store_st*, %struct.ossl_method_store_st** %0, align 8, !tbaa !10
  %cmp = icmp eq %struct.ossl_method_store_st* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %libctx = bitcast i8* %data to %struct.ossl_lib_ctx_st**
  %2 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** %libctx, align 8, !tbaa !4
  %call = tail call %struct.ossl_method_store_st* @ossl_method_store_new(%struct.ossl_lib_ctx_st* noundef %2) #8
  store %struct.ossl_method_store_st* %call, %struct.ossl_method_store_st** %0, align 8, !tbaa !10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %.in = phi %struct.ossl_method_store_st* [ %call, %if.then ], [ %1, %entry ]
  %3 = bitcast %struct.ossl_method_store_st* %.in to i8*
  ret i8* %3
}

; Function Attrs: noinline nounwind uwtable
define internal i8* @get_evp_method_from_store(i8* noundef %store, i8* nocapture noundef readonly %data) #0 {
entry:
  %method = alloca i8*, align 8
  %0 = bitcast i8** %method to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #6
  store i8* null, i8** %method, align 8, !tbaa !11
  %name_id1 = getelementptr inbounds i8, i8* %data, i64 12
  %1 = bitcast i8* %name_id1 to i32*
  %2 = load i32, i32* %1, align 4, !tbaa !13
  %cmp = icmp eq i32 %2, 0
  br i1 %cmp, label %land.lhs.true, label %lor.lhs.false

land.lhs.true:                                    ; preds = %entry
  %names = getelementptr inbounds i8, i8* %data, i64 16
  %3 = bitcast i8* %names to i8**
  %4 = load i8*, i8** %3, align 8, !tbaa !14
  %cmp2.not = icmp eq i8* %4, null
  br i1 %cmp2.not, label %cleanup30, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %libctx = bitcast i8* %data to %struct.ossl_lib_ctx_st**
  %5 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** %libctx, align 8, !tbaa !4
  %call = tail call %struct.ossl_namemap_st* @ossl_namemap_stored(%struct.ossl_lib_ctx_st* noundef %5) #8
  %6 = load i8*, i8** %3, align 8, !tbaa !14
  %call5 = tail call i8* @strchr(i8* noundef %6, i32 noundef 58) #9
  %cmp6 = icmp eq i8* %call5, null
  br i1 %cmp6, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then
  %call7 = tail call i64 @strlen(i8* noundef %6) #9
  br label %cond.end

cond.false:                                       ; preds = %if.then
  %sub.ptr.lhs.cast = ptrtoint i8* %call5 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %6 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %call7, %cond.true ], [ %sub.ptr.sub, %cond.false ]
  %cmp8 = icmp eq %struct.ossl_namemap_st* %call, null
  br i1 %cmp8, label %cleanup30, label %if.end14

if.end14:                                         ; preds = %cond.end
  %call10 = tail call i32 @ossl_namemap_name2num_n(%struct.ossl_namemap_st* noundef nonnull %call, i8* noundef %6, i64 noundef %cond) #8
  %cmp15 = icmp eq i32 %call10, 0
  br i1 %cmp15, label %cleanup30, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry, %if.end14
  %name_id.162 = phi i32 [ %call10, %if.end14 ], [ %2, %entry ]
  %operation_id = getelementptr inbounds i8, i8* %data, i64 8
  %7 = bitcast i8* %operation_id to i32*
  %8 = load i32, i32* %7, align 8, !tbaa !12
  %call16 = tail call fastcc i32 @evp_method_id(i32 noundef %name_id.162, i32 noundef %8) #7
  %cmp17 = icmp eq i32 %call16, 0
  br i1 %cmp17, label %cleanup30, label %if.end19

if.end19:                                         ; preds = %lor.lhs.false
  %cmp20 = icmp eq i8* %store, null
  br i1 %cmp20, label %land.lhs.true21, label %if.end26

land.lhs.true21:                                  ; preds = %if.end19
  %libctx22 = bitcast i8* %data to %struct.ossl_lib_ctx_st**
  %9 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** %libctx22, align 8, !tbaa !4
  %call23 = tail call fastcc %struct.ossl_method_store_st* @get_evp_method_store(%struct.ossl_lib_ctx_st* noundef %9) #7
  %10 = bitcast %struct.ossl_method_store_st* %call23 to i8*
  %cmp24 = icmp eq %struct.ossl_method_store_st* %call23, null
  br i1 %cmp24, label %cleanup30, label %if.end26

if.end26:                                         ; preds = %land.lhs.true21, %if.end19
  %store.addr.0 = phi i8* [ %10, %land.lhs.true21 ], [ %store, %if.end19 ]
  %11 = bitcast i8* %store.addr.0 to %struct.ossl_method_store_st*
  %propquery = getelementptr inbounds i8, i8* %data, i64 24
  %12 = bitcast i8* %propquery to i8**
  %13 = load i8*, i8** %12, align 8, !tbaa !15
  %call27 = call i32 @ossl_method_store_fetch(%struct.ossl_method_store_st* noundef %11, i32 noundef %call16, i8* noundef %13, i8** noundef nonnull %method) #8
  %tobool.not = icmp eq i32 %call27, 0
  %14 = load i8*, i8** %method, align 8
  %spec.select = select i1 %tobool.not, i8* null, i8* %14
  br label %cleanup30

cleanup30:                                        ; preds = %cond.end, %land.lhs.true, %if.end26, %land.lhs.true21, %if.end14, %lor.lhs.false
  %retval.1 = phi i8* [ null, %lor.lhs.false ], [ null, %if.end14 ], [ null, %land.lhs.true21 ], [ %spec.select, %if.end26 ], [ null, %land.lhs.true ], [ null, %cond.end ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #6
  ret i8* %retval.1
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @put_evp_method_in_store(i8* noundef %store, i8* noundef %method, %struct.ossl_provider_st* noundef %prov, i8* noundef %names, i8* noundef %propdef, i8* nocapture noundef readonly %data) #0 {
entry:
  %cmp.not = icmp eq i8* %names, null
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = tail call i8* @strchr(i8* noundef nonnull %names, i32 noundef 58) #9
  %cmp1 = icmp eq i8* %call, null
  br i1 %cmp1, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then
  %call2 = tail call i64 @strlen(i8* noundef nonnull %names) #9
  br label %if.end

cond.false:                                       ; preds = %if.then
  %sub.ptr.lhs.cast = ptrtoint i8* %call to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %names to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  br label %if.end

if.end:                                           ; preds = %cond.true, %cond.false, %entry
  %l.0 = phi i64 [ 0, %entry ], [ %call2, %cond.true ], [ %sub.ptr.sub, %cond.false ]
  %libctx = bitcast i8* %data to %struct.ossl_lib_ctx_st**
  %0 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** %libctx, align 8, !tbaa !4
  %call3 = tail call %struct.ossl_namemap_st* @ossl_namemap_stored(%struct.ossl_lib_ctx_st* noundef %0) #8
  %cmp4 = icmp eq %struct.ossl_namemap_st* %call3, null
  br i1 %cmp4, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %call5 = tail call i32 @ossl_namemap_name2num_n(%struct.ossl_namemap_st* noundef nonnull %call3, i8* noundef %names, i64 noundef %l.0) #8
  %cmp6 = icmp eq i32 %call5, 0
  br i1 %cmp6, label %cleanup, label %lor.lhs.false7

lor.lhs.false7:                                   ; preds = %lor.lhs.false
  %operation_id = getelementptr inbounds i8, i8* %data, i64 8
  %1 = bitcast i8* %operation_id to i32*
  %2 = load i32, i32* %1, align 8, !tbaa !12
  %call8 = tail call fastcc i32 @evp_method_id(i32 noundef %call5, i32 noundef %2) #7
  %cmp9 = icmp eq i32 %call8, 0
  br i1 %cmp9, label %cleanup, label %if.end11

if.end11:                                         ; preds = %lor.lhs.false7
  %cmp12 = icmp eq i8* %store, null
  br i1 %cmp12, label %land.lhs.true, label %if.end17

land.lhs.true:                                    ; preds = %if.end11
  %3 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** %libctx, align 8, !tbaa !4
  %call14 = tail call fastcc %struct.ossl_method_store_st* @get_evp_method_store(%struct.ossl_lib_ctx_st* noundef %3) #7
  %4 = bitcast %struct.ossl_method_store_st* %call14 to i8*
  %cmp15 = icmp eq %struct.ossl_method_store_st* %call14, null
  br i1 %cmp15, label %cleanup, label %if.end17

if.end17:                                         ; preds = %land.lhs.true, %if.end11
  %store.addr.0 = phi i8* [ %4, %land.lhs.true ], [ %store, %if.end11 ]
  %5 = bitcast i8* %store.addr.0 to %struct.ossl_method_store_st*
  %refcnt_up_method = getelementptr inbounds i8, i8* %data, i64 56
  %6 = bitcast i8* %refcnt_up_method to i32 (i8*)**
  %7 = load i32 (i8*)*, i32 (i8*)** %6, align 8, !tbaa !17
  %destruct_method = getelementptr inbounds i8, i8* %data, i64 64
  %8 = bitcast i8* %destruct_method to void (i8*)**
  %9 = load void (i8*)*, void (i8*)** %8, align 8, !tbaa !18
  %call18 = tail call i32 @ossl_method_store_add(%struct.ossl_method_store_st* noundef %5, %struct.ossl_provider_st* noundef %prov, i32 noundef %call8, i8* noundef %propdef, i8* noundef %method, i32 (i8*)* noundef %7, void (i8*)* noundef %9) #8
  br label %cleanup

cleanup:                                          ; preds = %land.lhs.true, %if.end, %lor.lhs.false, %lor.lhs.false7, %if.end17
  %retval.0 = phi i32 [ %call18, %if.end17 ], [ 0, %lor.lhs.false7 ], [ 0, %lor.lhs.false ], [ 0, %if.end ], [ 0, %land.lhs.true ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i8* @construct_evp_method(%struct.ossl_algorithm_st* noundef %algodef, %struct.ossl_provider_st* noundef %prov, i8* nocapture noundef %data) #0 {
entry:
  %call = tail call %struct.ossl_lib_ctx_st* @ossl_provider_libctx(%struct.ossl_provider_st* noundef %prov) #8
  %call1 = tail call %struct.ossl_namemap_st* @ossl_namemap_stored(%struct.ossl_lib_ctx_st* noundef %call) #8
  %algorithm_names = getelementptr inbounds %struct.ossl_algorithm_st, %struct.ossl_algorithm_st* %algodef, i64 0, i32 0
  %0 = load i8*, i8** %algorithm_names, align 8, !tbaa !23
  %call2 = tail call i32 @ossl_namemap_add_names(%struct.ossl_namemap_st* noundef %call1, i32 noundef 0, i8* noundef %0, i8 noundef signext 58) #8
  %cmp = icmp eq i32 %call2, 0
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %method_from_algorithm = getelementptr inbounds i8, i8* %data, i64 48
  %1 = bitcast i8* %method_from_algorithm to i8* (i32, %struct.ossl_algorithm_st*, %struct.ossl_provider_st*)**
  %2 = load i8* (i32, %struct.ossl_algorithm_st*, %struct.ossl_provider_st*)*, i8* (i32, %struct.ossl_algorithm_st*, %struct.ossl_provider_st*)** %1, align 8, !tbaa !16
  %call3 = tail call i8* %2(i32 noundef %call2, %struct.ossl_algorithm_st* noundef nonnull %algodef, %struct.ossl_provider_st* noundef %prov) #8
  %cmp4 = icmp eq i8* %call3, null
  br i1 %cmp4, label %if.then5, label %cleanup

if.then5:                                         ; preds = %if.end
  %3 = getelementptr inbounds i8, i8* %data, i64 40
  %bf.load = load i8, i8* %3, align 8
  %bf.set = or i8 %bf.load, 1
  store i8 %bf.set, i8* %3, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then5, %entry
  %retval.0 = phi i8* [ null, %entry ], [ null, %if.then5 ], [ %call3, %if.end ]
  ret i8* %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal void @destruct_evp_method(i8* noundef %method, i8* nocapture noundef readonly %data) #0 {
entry:
  %destruct_method = getelementptr inbounds i8, i8* %data, i64 64
  %0 = bitcast i8* %destruct_method to void (i8*)**
  %1 = load void (i8*)*, void (i8*)** %0, align 8, !tbaa !18
  tail call void %1(i8* noundef %method) #8
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #4

declare i8* @ossl_method_construct(%struct.ossl_lib_ctx_st* noundef, i32 noundef, i32 noundef, %struct.ossl_method_construct_method_st* noundef, i8* noundef) local_unnamed_addr #2

declare i32 @ossl_method_store_cache_set(%struct.ossl_method_store_st* noundef, i32 noundef, i8* noundef, i8* noundef, i32 (i8*)* noundef, void (i8*)* noundef) local_unnamed_addr #2

declare i8* @ossl_namemap_num2name(%struct.ossl_namemap_st* noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

declare i8* @ossl_lib_ctx_get_descriptor(%struct.ossl_lib_ctx_st* noundef) local_unnamed_addr #2

declare %struct.ossl_method_store_st* @ossl_method_store_new(%struct.ossl_lib_ctx_st* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare i8* @strchr(i8* noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare i64 @strlen(i8* noundef) local_unnamed_addr #5

declare i32 @ossl_namemap_name2num_n(%struct.ossl_namemap_st* noundef, i8* noundef, i64 noundef) local_unnamed_addr #2

declare i32 @ossl_method_store_fetch(%struct.ossl_method_store_st* noundef, i32 noundef, i8* noundef, i8** noundef) local_unnamed_addr #2

declare i32 @ossl_method_store_add(%struct.ossl_method_store_st* noundef, %struct.ossl_provider_st* noundef, i32 noundef, i8* noundef, i8* noundef, i32 (i8*)* noundef, void (i8*)* noundef) local_unnamed_addr #2

declare i32 @ossl_namemap_add_names(%struct.ossl_namemap_st* noundef, i32 noundef, i8* noundef, i8 noundef signext) local_unnamed_addr #2

declare void @ossl_method_store_free(%struct.ossl_method_store_st* noundef) local_unnamed_addr #2

declare i8* @ossl_lib_ctx_get_data(%struct.ossl_lib_ctx_st* noundef, i32 noundef, %struct.ossl_lib_ctx_method* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal i8* @evp_method_store_new(%struct.ossl_lib_ctx_st* noundef %ctx) #0 {
entry:
  %call = tail call %struct.ossl_method_store_st* @ossl_method_store_new(%struct.ossl_lib_ctx_st* noundef %ctx) #8
  %0 = bitcast %struct.ossl_method_store_st* %call to i8*
  ret i8* %0
}

; Function Attrs: noinline nounwind uwtable
define internal void @evp_method_store_free(i8* noundef %vstore) #0 {
entry:
  %0 = bitcast i8* %vstore to %struct.ossl_method_store_st*
  tail call void @ossl_method_store_free(%struct.ossl_method_store_st* noundef %0) #8
  ret void
}

declare i32 @ossl_global_properties_no_mirrored(%struct.ossl_lib_ctx_st* noundef) local_unnamed_addr #2

declare void @ossl_global_properties_stop_mirroring(%struct.ossl_lib_ctx_st* noundef) local_unnamed_addr #2

declare i32 @ossl_provider_default_props_update(%struct.ossl_lib_ctx_st* noundef, i8* noundef) local_unnamed_addr #2

declare i32 @ossl_property_is_enabled(%struct.ossl_lib_ctx_st* noundef, i8* noundef, %struct.ossl_property_list_st* noundef) local_unnamed_addr #2

declare %struct.ossl_property_list_st* @ossl_property_merge(%struct.ossl_property_list_st* noundef, %struct.ossl_property_list_st* noundef) local_unnamed_addr #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #5 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind }
attributes #7 = { nobuiltin "no-builtins" }
attributes #8 = { nobuiltin nounwind "no-builtins" }
attributes #9 = { nobuiltin nounwind readonly willreturn "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{!"clang version 14.0.0"}
!4 = !{!5, !6, i64 0}
!5 = !{!"evp_method_data_st", !6, i64 0, !9, i64 8, !9, i64 12, !6, i64 16, !6, i64 24, !6, i64 32, !9, i64 40, !6, i64 48, !6, i64 56, !6, i64 64}
!6 = !{!"any pointer", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!"int", !7, i64 0}
!10 = !{!5, !6, i64 32}
!11 = !{!6, !6, i64 0}
!12 = !{!5, !9, i64 8}
!13 = !{!5, !9, i64 12}
!14 = !{!5, !6, i64 16}
!15 = !{!5, !6, i64 24}
!16 = !{!5, !6, i64 48}
!17 = !{!5, !6, i64 56}
!18 = !{!5, !6, i64 64}
!19 = !{!20, !9, i64 0}
!20 = !{!"filter_data_st", !9, i64 0, !6, i64 8, !6, i64 16}
!21 = !{!20, !6, i64 8}
!22 = !{!20, !6, i64 16}
!23 = !{!24, !6, i64 0}
!24 = !{!"ossl_algorithm_st", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24}
