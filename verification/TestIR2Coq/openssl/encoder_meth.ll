; ModuleID = 'crypto/encode_decode/encoder_meth.c'
source_filename = "crypto/encode_decode/encoder_meth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ossl_method_construct_method_st = type { i8* (i8*)*, i8* (i8*, i8*)*, i32 (i8*, i8*, %struct.ossl_provider_st*, i8*, i8*, i8*)*, i8* (%struct.ossl_algorithm_st*, %struct.ossl_provider_st*, i8*)*, void (i8*, i8*)* }
%struct.ossl_provider_st = type opaque
%struct.ossl_algorithm_st = type { i8*, i8*, %struct.ossl_dispatch_st*, i8* }
%struct.ossl_dispatch_st = type { i32, void ()* }
%struct.ossl_lib_ctx_method = type { i32, i8* (%struct.ossl_lib_ctx_st*)*, void (i8*)* }
%struct.ossl_lib_ctx_st = type opaque
%struct.ossl_encoder_st = type { %struct.ossl_endecode_base_st, i8* (i8*)*, void (i8*)*, i32 (%struct.ossl_param_st*)*, %struct.ossl_param_st* (i8*)*, i32 (i8*, %struct.ossl_param_st*)*, %struct.ossl_param_st* (i8*)*, i32 (i8*, i32)*, i32 (i8*, %struct.ossl_core_bio_st*, i8*, %struct.ossl_param_st*, i32, i32 (i8*, i64, i64*, %struct.ossl_param_st*, i8*)*, i8*)*, i8* (i8*, i32, %struct.ossl_param_st*)*, void (i8*)* }
%struct.ossl_endecode_base_st = type { %struct.ossl_provider_st*, i32, i8*, %struct.ossl_algorithm_st*, %struct.ossl_property_list_st*, i32, i8* }
%struct.ossl_property_list_st = type opaque
%struct.ossl_param_st = type { i8*, i32, i8*, i64, i64 }
%struct.ossl_core_bio_st = type opaque
%struct.encoder_data_st = type { %struct.ossl_lib_ctx_st*, i32, i8*, i8*, %struct.ossl_method_store_st*, i8 }
%struct.ossl_method_store_st = type opaque
%struct.ossl_namemap_st = type opaque
%struct.do_one_data_st = type { void (%struct.ossl_encoder_st*, i8*)*, i8* }
%struct.ossl_encoder_ctx_st = type { i32, i8*, i8*, %struct.stack_st_OSSL_ENCODER_INSTANCE*, i8* (%struct.ossl_encoder_instance_st*, i8*)*, void (i8*)*, i8*, %struct.ossl_passphrase_data_st }
%struct.stack_st_OSSL_ENCODER_INSTANCE = type opaque
%struct.ossl_encoder_instance_st = type { %struct.ossl_encoder_st*, i8*, i8*, i8* }
%struct.ossl_passphrase_data_st = type { i32, %union.anon, i8, i8*, i64 }
%union.anon = type { %struct.anon }
%struct.anon = type { i8*, i64 }
%struct.stack_st = type opaque

@.str = private unnamed_addr constant [36 x i8] c"crypto/encode_decode/encoder_meth.c\00", align 1
@__func__.OSSL_ENCODER_get0_provider = private unnamed_addr constant [27 x i8] c"OSSL_ENCODER_get0_provider\00", align 1
@__func__.OSSL_ENCODER_get0_properties = private unnamed_addr constant [29 x i8] c"OSSL_ENCODER_get0_properties\00", align 1
@__func__.ossl_encoder_parsed_properties = private unnamed_addr constant [31 x i8] c"ossl_encoder_parsed_properties\00", align 1
@__func__.ossl_encoder_get_number = private unnamed_addr constant [24 x i8] c"ossl_encoder_get_number\00", align 1
@__func__.OSSL_ENCODER_CTX_new = private unnamed_addr constant [21 x i8] c"OSSL_ENCODER_CTX_new\00", align 1
@__func__.OSSL_ENCODER_CTX_set_params = private unnamed_addr constant [28 x i8] c"OSSL_ENCODER_CTX_set_params\00", align 1
@__func__.inner_ossl_encoder_fetch = private unnamed_addr constant [25 x i8] c"inner_ossl_encoder_fetch\00", align 1
@__const.inner_ossl_encoder_fetch.mcm = private unnamed_addr constant %struct.ossl_method_construct_method_st { i8* (i8*)* @get_tmp_encoder_store, i8* (i8*, i8*)* @get_encoder_from_store, i32 (i8*, i8*, %struct.ossl_provider_st*, i8*, i8*, i8*)* @put_encoder_in_store, i8* (%struct.ossl_algorithm_st*, %struct.ossl_provider_st*, i8*)* @construct_encoder, void (i8*, i8*)* @destruct_encoder }, align 8
@.str.1 = private unnamed_addr constant [36 x i8] c"%s, Name (%s : %d), Properties (%s)\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"<null>\00", align 1
@__func__.encoder_from_algorithm = private unnamed_addr constant [23 x i8] c"encoder_from_algorithm\00", align 1
@__func__.ossl_encoder_new = private unnamed_addr constant [17 x i8] c"ossl_encoder_new\00", align 1
@encoder_store_method = internal constant %struct.ossl_lib_ctx_method { i32 2, i8* (%struct.ossl_lib_ctx_st*)* @encoder_store_new, void (i8*)* @encoder_store_free }, align 8

; Function Attrs: mustprogress nofree noinline nounwind uwtable willreturn
define i32 @OSSL_ENCODER_up_ref(%struct.ossl_encoder_st* nocapture noundef %encoder) #0 {
entry:
  %ref = alloca i32, align 4
  %0 = bitcast i32* %ref to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #8
  %refcnt = getelementptr inbounds %struct.ossl_encoder_st, %struct.ossl_encoder_st* %encoder, i64 0, i32 0, i32 5
  call fastcc void @CRYPTO_UP_REF(i32* noundef nonnull %refcnt, i32* noundef nonnull %ref) #9
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #8
  ret i32 1
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: mustprogress nofree noinline norecurse nounwind uwtable willreturn
define internal fastcc void @CRYPTO_UP_REF(i32* nocapture noundef %val, i32* nocapture noundef writeonly %ret) unnamed_addr #2 {
entry:
  %0 = atomicrmw add i32* %val, i32 1 monotonic, align 4
  %add = add nsw i32 %0, 1
  store i32 %add, i32* %ret, align 4, !tbaa !4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: noinline nounwind uwtable
define void @OSSL_ENCODER_free(%struct.ossl_encoder_st* noundef %encoder) #3 {
entry:
  %ref = alloca i32, align 4
  %0 = bitcast i32* %ref to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #8
  store i32 0, i32* %ref, align 4, !tbaa !4
  %cmp = icmp eq %struct.ossl_encoder_st* %encoder, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %refcnt = getelementptr inbounds %struct.ossl_encoder_st, %struct.ossl_encoder_st* %encoder, i64 0, i32 0, i32 5
  call fastcc void @CRYPTO_DOWN_REF(i32* noundef nonnull %refcnt, i32* noundef nonnull %ref) #9
  %1 = load i32, i32* %ref, align 4, !tbaa !4
  %cmp2 = icmp sgt i32 %1, 0
  br i1 %cmp2, label %cleanup, label %if.end4

if.end4:                                          ; preds = %if.end
  %lock = getelementptr inbounds %struct.ossl_encoder_st, %struct.ossl_encoder_st* %encoder, i64 0, i32 0, i32 6
  %name = getelementptr inbounds %struct.ossl_encoder_st, %struct.ossl_encoder_st* %encoder, i64 0, i32 0, i32 2
  %2 = load i8*, i8** %name, align 8, !tbaa !8
  tail call void @CRYPTO_free(i8* noundef %2, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 noundef 61) #10
  %parsed_propdef = getelementptr inbounds %struct.ossl_encoder_st, %struct.ossl_encoder_st* %encoder, i64 0, i32 0, i32 4
  %3 = load %struct.ossl_property_list_st*, %struct.ossl_property_list_st** %parsed_propdef, align 8, !tbaa !12
  tail call void @ossl_property_free(%struct.ossl_property_list_st* noundef %3) #10
  %prov = getelementptr inbounds %struct.ossl_encoder_st, %struct.ossl_encoder_st* %encoder, i64 0, i32 0, i32 0
  %4 = load %struct.ossl_provider_st*, %struct.ossl_provider_st** %prov, align 8, !tbaa !13
  tail call void @ossl_provider_free(%struct.ossl_provider_st* noundef %4) #10
  %5 = load i8*, i8** %lock, align 8, !tbaa !14
  tail call void @CRYPTO_THREAD_lock_free(i8* noundef %5) #10
  %6 = bitcast %struct.ossl_encoder_st* %encoder to i8*
  tail call void @CRYPTO_free(i8* noundef nonnull %6, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 noundef 65) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry, %if.end4
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #8
  ret void
}

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

declare void @CRYPTO_free(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #4

declare void @ossl_property_free(%struct.ossl_property_list_st* noundef) local_unnamed_addr #4

declare void @ossl_provider_free(%struct.ossl_provider_st* noundef) local_unnamed_addr #4

declare void @CRYPTO_THREAD_lock_free(i8* noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind uwtable
define %struct.ossl_encoder_st* @OSSL_ENCODER_fetch(%struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef %name, i8* noundef %properties) local_unnamed_addr #3 {
entry:
  %methdata = alloca %struct.encoder_data_st, align 8
  %0 = bitcast %struct.encoder_data_st* %methdata to i8*
  call void @llvm.lifetime.start.p0i8(i64 48, i8* nonnull %0) #8
  %libctx1 = getelementptr inbounds %struct.encoder_data_st, %struct.encoder_data_st* %methdata, i64 0, i32 0
  store %struct.ossl_lib_ctx_st* %libctx, %struct.ossl_lib_ctx_st** %libctx1, align 8, !tbaa !15
  %tmp_store = getelementptr inbounds %struct.encoder_data_st, %struct.encoder_data_st* %methdata, i64 0, i32 4
  store %struct.ossl_method_store_st* null, %struct.ossl_method_store_st** %tmp_store, align 8, !tbaa !17
  %call = call fastcc %struct.ossl_encoder_st* @inner_ossl_encoder_fetch(%struct.encoder_data_st* noundef nonnull %methdata, i32 noundef 0, i8* noundef %name, i8* noundef %properties) #9
  %1 = bitcast %struct.ossl_method_store_st** %tmp_store to i8**
  %2 = load i8*, i8** %1, align 8, !tbaa !17
  call fastcc void @dealloc_tmp_encoder_store(i8* noundef %2) #9
  call void @llvm.lifetime.end.p0i8(i64 48, i8* nonnull %0) #8
  ret %struct.ossl_encoder_st* %call
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.ossl_encoder_st* @inner_ossl_encoder_fetch(%struct.encoder_data_st* noundef %methdata, i32 noundef %id, i8* noundef %name, i8* noundef %properties) unnamed_addr #3 {
entry:
  %method = alloca i8*, align 8
  %mcm = alloca %struct.ossl_method_construct_method_st, align 8
  %libctx = getelementptr inbounds %struct.encoder_data_st, %struct.encoder_data_st* %methdata, i64 0, i32 0
  %0 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** %libctx, align 8, !tbaa !15
  %call = tail call fastcc %struct.ossl_method_store_st* @get_encoder_store(%struct.ossl_lib_ctx_st* noundef %0) #9
  %1 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** %libctx, align 8, !tbaa !15
  %call2 = tail call %struct.ossl_namemap_st* @ossl_namemap_stored(%struct.ossl_lib_ctx_st* noundef %1) #10
  %2 = bitcast i8** %method to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #8
  store i8* null, i8** %method, align 8, !tbaa !18
  %cmp = icmp eq %struct.ossl_method_store_st* %call, null
  %cmp3 = icmp eq %struct.ossl_namemap_st* %call2, null
  %or.cond = select i1 %cmp, i1 true, i1 %cmp3
  br i1 %or.cond, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #10
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 noundef 355, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.inner_ossl_encoder_fetch, i64 0, i64 0)) #10
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 59, i32 noundef 524550, i8* noundef null) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %cmp4 = icmp eq i32 %id, 0
  %cmp5 = icmp eq i8* %name, null
  %3 = or i1 %cmp4, %cmp5
  br i1 %3, label %if.end8, label %if.then7

if.then7:                                         ; preds = %if.end
  tail call void @ERR_new() #10
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 noundef 364, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.inner_ossl_encoder_fetch, i64 0, i64 0)) #10
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 59, i32 noundef 786691, i8* noundef null) #10
  br label %cleanup

if.end8:                                          ; preds = %if.end
  br i1 %cmp4, label %if.end12, label %lor.lhs.false17

if.end12:                                         ; preds = %if.end8
  %call11 = tail call i32 @ossl_namemap_name2num(%struct.ossl_namemap_st* noundef nonnull %call2, i8* noundef %name) #10
  %cmp13 = icmp eq i32 %call11, 0
  br i1 %cmp13, label %if.then19, label %lor.lhs.false17

lor.lhs.false17:                                  ; preds = %if.end8, %if.end12
  %id.addr.0101 = phi i32 [ %call11, %if.end12 ], [ %id, %if.end8 ]
  %call18 = call i32 @ossl_method_store_cache_get(%struct.ossl_method_store_st* noundef nonnull %call, i32 noundef %id.addr.0101, i8* noundef %properties, i8** noundef nonnull %method) #10
  %tobool.not = icmp eq i32 %call18, 0
  br i1 %tobool.not, label %if.then19, label %if.end35

if.then19:                                        ; preds = %lor.lhs.false17, %if.end12
  %cmp13104 = phi i1 [ false, %lor.lhs.false17 ], [ true, %if.end12 ]
  %id.addr.0102 = phi i32 [ %id.addr.0101, %lor.lhs.false17 ], [ 0, %if.end12 ]
  %4 = bitcast %struct.ossl_method_construct_method_st* %mcm to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %4) #8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(40) %4, i8* noundef nonnull align 8 dereferenceable(40) bitcast (%struct.ossl_method_construct_method_st* @__const.inner_ossl_encoder_fetch.mcm to i8*), i64 40, i1 false)
  %id20 = getelementptr inbounds %struct.encoder_data_st, %struct.encoder_data_st* %methdata, i64 0, i32 1
  store i32 %id.addr.0102, i32* %id20, align 8, !tbaa !19
  %names = getelementptr inbounds %struct.encoder_data_st, %struct.encoder_data_st* %methdata, i64 0, i32 2
  store i8* %name, i8** %names, align 8, !tbaa !20
  %propquery = getelementptr inbounds %struct.encoder_data_st, %struct.encoder_data_st* %methdata, i64 0, i32 3
  store i8* %properties, i8** %propquery, align 8, !tbaa !21
  %flag_construct_error_occurred = getelementptr inbounds %struct.encoder_data_st, %struct.encoder_data_st* %methdata, i64 0, i32 5
  %bf.load = load i8, i8* %flag_construct_error_occurred, align 8
  %bf.clear = and i8 %bf.load, -2
  store i8 %bf.clear, i8* %flag_construct_error_occurred, align 8
  %5 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** %libctx, align 8, !tbaa !15
  %6 = bitcast %struct.encoder_data_st* %methdata to i8*
  %call22 = call i8* @ossl_method_construct(%struct.ossl_lib_ctx_st* noundef %5, i32 noundef 20, i32 noundef 0, %struct.ossl_method_construct_method_st* noundef nonnull %mcm, i8* noundef %6) #10
  store i8* %call22, i8** %method, align 8, !tbaa !18
  %cmp23.not = icmp eq i8* %call22, null
  br i1 %cmp23.not, label %if.end30, label %if.then24

if.then24:                                        ; preds = %if.then19
  br i1 %cmp13104, label %if.then26, label %if.end28

if.then26:                                        ; preds = %if.then24
  %call27 = call i32 @ossl_namemap_name2num(%struct.ossl_namemap_st* noundef nonnull %call2, i8* noundef %name) #10
  %.pre = load i8*, i8** %method, align 8, !tbaa !18
  br label %if.end28

if.end28:                                         ; preds = %if.then26, %if.then24
  %7 = phi i8* [ %.pre, %if.then26 ], [ %call22, %if.then24 ]
  %id.addr.1 = phi i32 [ %call27, %if.then26 ], [ %id.addr.0102, %if.then24 ]
  %call29 = call i32 @ossl_method_store_cache_set(%struct.ossl_method_store_st* noundef nonnull %call, i32 noundef %id.addr.1, i8* noundef %properties, i8* noundef %7, i32 (i8*)* noundef nonnull @up_ref_encoder, void (i8*)* noundef nonnull @free_encoder) #10
  br label %if.end30

if.end30:                                         ; preds = %if.end28, %if.then19
  %id.addr.2 = phi i32 [ %id.addr.1, %if.end28 ], [ %id.addr.0102, %if.then19 ]
  %bf.load32 = load i8, i8* %flag_construct_error_occurred, align 8
  %bf.clear33 = and i8 %bf.load32, 1
  %8 = xor i8 %bf.clear33, 1
  %9 = zext i8 %8 to i32
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %4) #8
  br label %if.end35

if.end35:                                         ; preds = %if.end30, %lor.lhs.false17
  %id.addr.3 = phi i32 [ %id.addr.2, %if.end30 ], [ %id.addr.0101, %lor.lhs.false17 ]
  %unsupported.1 = phi i32 [ %9, %if.end30 ], [ 0, %lor.lhs.false17 ]
  %cmp36 = icmp ne i32 %id.addr.3, 0
  %cmp38 = icmp ne i8* %name, null
  %or.cond58 = or i1 %cmp38, %cmp36
  %10 = load i8*, i8** %method, align 8
  %cmp39 = icmp eq i8* %10, null
  %or.cond59 = select i1 %or.cond58, i1 %cmp39, i1 false
  br i1 %or.cond59, label %if.then40, label %if.end35.if.end54_crit_edge

if.end35.if.end54_crit_edge:                      ; preds = %if.end35
  %11 = bitcast i8* %10 to %struct.ossl_encoder_st*
  br label %cleanup

if.then40:                                        ; preds = %if.end35
  %tobool41.not = icmp eq i32 %unsupported.1, 0
  %cond = select i1 %tobool41.not, i32 524557, i32 524556
  br i1 %cmp5, label %if.then43, label %if.end45

if.then43:                                        ; preds = %if.then40
  %call44 = call i8* @ossl_namemap_num2name(%struct.ossl_namemap_st* noundef nonnull %call2, i32 noundef %id.addr.3, i64 noundef 0) #10
  br label %if.end45

if.end45:                                         ; preds = %if.then43, %if.then40
  %name.addr.0 = phi i8* [ %call44, %if.then43 ], [ %name, %if.then40 ]
  call void @ERR_new() #10
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 noundef 419, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.inner_ossl_encoder_fetch, i64 0, i64 0)) #10
  %12 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** %libctx, align 8, !tbaa !15
  %call47 = call i8* @ossl_lib_ctx_get_descriptor(%struct.ossl_lib_ctx_st* noundef %12) #10
  %cmp49 = icmp eq i8* %properties, null
  %cond53 = select i1 %cmp49, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8* %properties
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 59, i32 noundef %cond, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i8* noundef %call47, i8* noundef %name.addr.0, i32 noundef %id.addr.3, i8* noundef %cond53) #10
  %.phi.trans.insert = bitcast i8** %method to %struct.ossl_encoder_st**
  %.pre106 = load %struct.ossl_encoder_st*, %struct.ossl_encoder_st** %.phi.trans.insert, align 8, !tbaa !18
  br label %cleanup

cleanup:                                          ; preds = %if.end45, %if.end35.if.end54_crit_edge, %if.then7, %if.then
  %retval.0 = phi %struct.ossl_encoder_st* [ null, %if.then ], [ null, %if.then7 ], [ %11, %if.end35.if.end54_crit_edge ], [ %.pre106, %if.end45 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #8
  ret %struct.ossl_encoder_st* %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @dealloc_tmp_encoder_store(i8* noundef %store) unnamed_addr #3 {
entry:
  %cmp.not = icmp eq i8* %store, null
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %0 = bitcast i8* %store to %struct.ossl_method_store_st*
  tail call void @ossl_method_store_free(%struct.ossl_method_store_st* noundef nonnull %0) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind uwtable
define %struct.ossl_encoder_st* @ossl_encoder_fetch_by_number(%struct.ossl_lib_ctx_st* noundef %libctx, i32 noundef %id, i8* noundef %properties) local_unnamed_addr #3 {
entry:
  %methdata = alloca %struct.encoder_data_st, align 8
  %0 = bitcast %struct.encoder_data_st* %methdata to i8*
  call void @llvm.lifetime.start.p0i8(i64 48, i8* nonnull %0) #8
  %libctx1 = getelementptr inbounds %struct.encoder_data_st, %struct.encoder_data_st* %methdata, i64 0, i32 0
  store %struct.ossl_lib_ctx_st* %libctx, %struct.ossl_lib_ctx_st** %libctx1, align 8, !tbaa !15
  %tmp_store = getelementptr inbounds %struct.encoder_data_st, %struct.encoder_data_st* %methdata, i64 0, i32 4
  store %struct.ossl_method_store_st* null, %struct.ossl_method_store_st** %tmp_store, align 8, !tbaa !17
  %call = call fastcc %struct.ossl_encoder_st* @inner_ossl_encoder_fetch(%struct.encoder_data_st* noundef nonnull %methdata, i32 noundef %id, i8* noundef null, i8* noundef %properties) #9
  %1 = bitcast %struct.ossl_method_store_st** %tmp_store to i8**
  %2 = load i8*, i8** %1, align 8, !tbaa !17
  call fastcc void @dealloc_tmp_encoder_store(i8* noundef %2) #9
  call void @llvm.lifetime.end.p0i8(i64 48, i8* nonnull %0) #8
  ret %struct.ossl_encoder_st* %call
}

; Function Attrs: noinline nounwind uwtable
define %struct.ossl_provider_st* @OSSL_ENCODER_get0_provider(%struct.ossl_encoder_st* noundef readonly %encoder) local_unnamed_addr #3 {
entry:
  %cmp.not = icmp eq %struct.ossl_encoder_st* %encoder, null
  br i1 %cmp.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #10
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 noundef 462, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.OSSL_ENCODER_get0_provider, i64 0, i64 0)) #10
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 59, i32 noundef 786690, i8* noundef null) #10
  br label %return

if.end:                                           ; preds = %entry
  %prov = getelementptr inbounds %struct.ossl_encoder_st, %struct.ossl_encoder_st* %encoder, i64 0, i32 0, i32 0
  %0 = load %struct.ossl_provider_st*, %struct.ossl_provider_st** %prov, align 8, !tbaa !13
  br label %return

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi %struct.ossl_provider_st* [ %0, %if.end ], [ null, %if.then ]
  ret %struct.ossl_provider_st* %retval.0
}

declare void @ERR_new() local_unnamed_addr #4

declare void @ERR_set_debug(i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #4

declare void @ERR_set_error(i32 noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #4

; Function Attrs: noinline nounwind uwtable
define i8* @OSSL_ENCODER_get0_properties(%struct.ossl_encoder_st* noundef readonly %encoder) local_unnamed_addr #3 {
entry:
  %cmp.not = icmp eq %struct.ossl_encoder_st* %encoder, null
  br i1 %cmp.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #10
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 noundef 472, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.OSSL_ENCODER_get0_properties, i64 0, i64 0)) #10
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 59, i32 noundef 786690, i8* noundef null) #10
  br label %return

if.end:                                           ; preds = %entry
  %algodef = getelementptr inbounds %struct.ossl_encoder_st, %struct.ossl_encoder_st* %encoder, i64 0, i32 0, i32 3
  %0 = load %struct.ossl_algorithm_st*, %struct.ossl_algorithm_st** %algodef, align 8, !tbaa !22
  %property_definition = getelementptr inbounds %struct.ossl_algorithm_st, %struct.ossl_algorithm_st* %0, i64 0, i32 1
  %1 = load i8*, i8** %property_definition, align 8, !tbaa !23
  br label %return

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi i8* [ %1, %if.end ], [ null, %if.then ]
  ret i8* %retval.0
}

; Function Attrs: noinline nounwind uwtable
define %struct.ossl_property_list_st* @ossl_encoder_parsed_properties(%struct.ossl_encoder_st* noundef readonly %encoder) local_unnamed_addr #3 {
entry:
  %cmp.not = icmp eq %struct.ossl_encoder_st* %encoder, null
  br i1 %cmp.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #10
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 noundef 483, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.ossl_encoder_parsed_properties, i64 0, i64 0)) #10
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 59, i32 noundef 786690, i8* noundef null) #10
  br label %return

if.end:                                           ; preds = %entry
  %parsed_propdef = getelementptr inbounds %struct.ossl_encoder_st, %struct.ossl_encoder_st* %encoder, i64 0, i32 0, i32 4
  %0 = load %struct.ossl_property_list_st*, %struct.ossl_property_list_st** %parsed_propdef, align 8, !tbaa !12
  br label %return

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi %struct.ossl_property_list_st* [ %0, %if.end ], [ null, %if.then ]
  ret %struct.ossl_property_list_st* %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_encoder_get_number(%struct.ossl_encoder_st* noundef readonly %encoder) local_unnamed_addr #3 {
entry:
  %cmp.not = icmp eq %struct.ossl_encoder_st* %encoder, null
  br i1 %cmp.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #10
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 noundef 493, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.ossl_encoder_get_number, i64 0, i64 0)) #10
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 59, i32 noundef 786690, i8* noundef null) #10
  br label %return

if.end:                                           ; preds = %entry
  %id = getelementptr inbounds %struct.ossl_encoder_st, %struct.ossl_encoder_st* %encoder, i64 0, i32 0, i32 1
  %0 = load i32, i32* %id, align 8, !tbaa !25
  br label %return

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %0, %if.end ], [ 0, %if.then ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define i8* @OSSL_ENCODER_get0_name(%struct.ossl_encoder_st* nocapture noundef readonly %encoder) local_unnamed_addr #5 {
entry:
  %name = getelementptr inbounds %struct.ossl_encoder_st, %struct.ossl_encoder_st* %encoder, i64 0, i32 0, i32 2
  %0 = load i8*, i8** %name, align 8, !tbaa !8
  ret i8* %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define i8* @OSSL_ENCODER_get0_description(%struct.ossl_encoder_st* nocapture noundef readonly %encoder) local_unnamed_addr #5 {
entry:
  %algodef = getelementptr inbounds %struct.ossl_encoder_st, %struct.ossl_encoder_st* %encoder, i64 0, i32 0, i32 3
  %0 = load %struct.ossl_algorithm_st*, %struct.ossl_algorithm_st** %algodef, align 8, !tbaa !22
  %algorithm_description = getelementptr inbounds %struct.ossl_algorithm_st, %struct.ossl_algorithm_st* %0, i64 0, i32 3
  %1 = load i8*, i8** %algorithm_description, align 8, !tbaa !26
  ret i8* %1
}

; Function Attrs: noinline nounwind uwtable
define i32 @OSSL_ENCODER_is_a(%struct.ossl_encoder_st* nocapture noundef readonly %encoder, i8* noundef %name) local_unnamed_addr #3 {
entry:
  %prov = getelementptr inbounds %struct.ossl_encoder_st, %struct.ossl_encoder_st* %encoder, i64 0, i32 0, i32 0
  %0 = load %struct.ossl_provider_st*, %struct.ossl_provider_st** %prov, align 8, !tbaa !13
  %cmp.not = icmp eq %struct.ossl_provider_st* %0, null
  br i1 %cmp.not, label %return, label %if.then

if.then:                                          ; preds = %entry
  %call = tail call %struct.ossl_lib_ctx_st* @ossl_provider_libctx(%struct.ossl_provider_st* noundef nonnull %0) #10
  %call3 = tail call %struct.ossl_namemap_st* @ossl_namemap_stored(%struct.ossl_lib_ctx_st* noundef %call) #10
  %call4 = tail call i32 @ossl_namemap_name2num(%struct.ossl_namemap_st* noundef %call3, i8* noundef %name) #10
  %id = getelementptr inbounds %struct.ossl_encoder_st, %struct.ossl_encoder_st* %encoder, i64 0, i32 0, i32 1
  %1 = load i32, i32* %id, align 8, !tbaa !25
  %cmp6 = icmp eq i32 %call4, %1
  %conv = zext i1 %cmp6 to i32
  br label %return

return:                                           ; preds = %entry, %if.then
  %retval.0 = phi i32 [ %conv, %if.then ], [ 0, %entry ]
  ret i32 %retval.0
}

declare %struct.ossl_lib_ctx_st* @ossl_provider_libctx(%struct.ossl_provider_st* noundef) local_unnamed_addr #4

declare %struct.ossl_namemap_st* @ossl_namemap_stored(%struct.ossl_lib_ctx_st* noundef) local_unnamed_addr #4

declare i32 @ossl_namemap_name2num(%struct.ossl_namemap_st* noundef, i8* noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind uwtable
define void @OSSL_ENCODER_do_all_provided(%struct.ossl_lib_ctx_st* noundef %libctx, void (%struct.ossl_encoder_st*, i8*)* noundef %user_fn, i8* noundef %user_arg) local_unnamed_addr #3 {
entry:
  %methdata = alloca %struct.encoder_data_st, align 8
  %data = alloca %struct.do_one_data_st, align 8
  %0 = bitcast %struct.encoder_data_st* %methdata to i8*
  call void @llvm.lifetime.start.p0i8(i64 48, i8* nonnull %0) #8
  %1 = bitcast %struct.do_one_data_st* %data to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %1) #8
  %libctx1 = getelementptr inbounds %struct.encoder_data_st, %struct.encoder_data_st* %methdata, i64 0, i32 0
  store %struct.ossl_lib_ctx_st* %libctx, %struct.ossl_lib_ctx_st** %libctx1, align 8, !tbaa !15
  %tmp_store = getelementptr inbounds %struct.encoder_data_st, %struct.encoder_data_st* %methdata, i64 0, i32 4
  store %struct.ossl_method_store_st* null, %struct.ossl_method_store_st** %tmp_store, align 8, !tbaa !17
  %call = call fastcc %struct.ossl_encoder_st* @inner_ossl_encoder_fetch(%struct.encoder_data_st* noundef nonnull %methdata, i32 noundef 0, i8* noundef null, i8* noundef null) #9
  %user_fn2 = getelementptr inbounds %struct.do_one_data_st, %struct.do_one_data_st* %data, i64 0, i32 0
  store void (%struct.ossl_encoder_st*, i8*)* %user_fn, void (%struct.ossl_encoder_st*, i8*)** %user_fn2, align 8, !tbaa !27
  %user_arg3 = getelementptr inbounds %struct.do_one_data_st, %struct.do_one_data_st* %data, i64 0, i32 1
  store i8* %user_arg, i8** %user_arg3, align 8, !tbaa !29
  %2 = load %struct.ossl_method_store_st*, %struct.ossl_method_store_st** %tmp_store, align 8, !tbaa !17
  %cmp.not = icmp eq %struct.ossl_method_store_st* %2, null
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @ossl_method_store_do_all(%struct.ossl_method_store_st* noundef nonnull %2, void (i32, i8*, i8*)* noundef nonnull @do_one, i8* noundef nonnull %1) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %call6 = call fastcc %struct.ossl_method_store_st* @get_encoder_store(%struct.ossl_lib_ctx_st* noundef %libctx) #9
  call void @ossl_method_store_do_all(%struct.ossl_method_store_st* noundef %call6, void (i32, i8*, i8*)* noundef nonnull @do_one, i8* noundef nonnull %1) #10
  %3 = bitcast %struct.ossl_method_store_st** %tmp_store to i8**
  %4 = load i8*, i8** %3, align 8, !tbaa !17
  call fastcc void @dealloc_tmp_encoder_store(i8* noundef %4) #9
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %1) #8
  call void @llvm.lifetime.end.p0i8(i64 48, i8* nonnull %0) #8
  ret void
}

declare void @ossl_method_store_do_all(%struct.ossl_method_store_st* noundef, void (i32, i8*, i8*)* noundef, i8* noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind uwtable
define internal void @do_one(i32 noundef %id, i8* noundef %method, i8* nocapture noundef readonly %arg) #3 {
entry:
  %user_fn = bitcast i8* %arg to void (%struct.ossl_encoder_st*, i8*)**
  %0 = load void (%struct.ossl_encoder_st*, i8*)*, void (%struct.ossl_encoder_st*, i8*)** %user_fn, align 8, !tbaa !27
  %1 = bitcast i8* %method to %struct.ossl_encoder_st*
  %user_arg = getelementptr inbounds i8, i8* %arg, i64 8
  %2 = bitcast i8* %user_arg to i8**
  %3 = load i8*, i8** %2, align 8, !tbaa !29
  tail call void %0(%struct.ossl_encoder_st* noundef %1, i8* noundef %3) #10
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.ossl_method_store_st* @get_encoder_store(%struct.ossl_lib_ctx_st* noundef %libctx) unnamed_addr #3 {
entry:
  %call = tail call i8* @ossl_lib_ctx_get_data(%struct.ossl_lib_ctx_st* noundef %libctx, i32 noundef 10, %struct.ossl_lib_ctx_method* noundef nonnull @encoder_store_method) #10
  %0 = bitcast i8* %call to %struct.ossl_method_store_st*
  ret %struct.ossl_method_store_st* %0
}

; Function Attrs: noinline nounwind uwtable
define i32 @OSSL_ENCODER_names_do_all(%struct.ossl_encoder_st* noundef readonly %encoder, void (i8*, i8*)* noundef %fn, i8* noundef %data) local_unnamed_addr #3 {
entry:
  %cmp = icmp eq %struct.ossl_encoder_st* %encoder, null
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %prov = getelementptr inbounds %struct.ossl_encoder_st, %struct.ossl_encoder_st* %encoder, i64 0, i32 0, i32 0
  %0 = load %struct.ossl_provider_st*, %struct.ossl_provider_st** %prov, align 8, !tbaa !13
  %cmp1.not = icmp eq %struct.ossl_provider_st* %0, null
  br i1 %cmp1.not, label %return, label %if.then2

if.then2:                                         ; preds = %if.end
  %call = tail call %struct.ossl_lib_ctx_st* @ossl_provider_libctx(%struct.ossl_provider_st* noundef nonnull %0) #10
  %call5 = tail call %struct.ossl_namemap_st* @ossl_namemap_stored(%struct.ossl_lib_ctx_st* noundef %call) #10
  %id = getelementptr inbounds %struct.ossl_encoder_st, %struct.ossl_encoder_st* %encoder, i64 0, i32 0, i32 1
  %1 = load i32, i32* %id, align 8, !tbaa !25
  %call7 = tail call i32 @ossl_namemap_doall_names(%struct.ossl_namemap_st* noundef %call5, i32 noundef %1, void (i8*, i8*)* noundef %fn, i8* noundef %data) #10
  br label %return

return:                                           ; preds = %if.end, %entry, %if.then2
  %retval.0 = phi i32 [ %call7, %if.then2 ], [ 0, %entry ], [ 1, %if.end ]
  ret i32 %retval.0
}

declare i32 @ossl_namemap_doall_names(%struct.ossl_namemap_st* noundef, i32 noundef, void (i8*, i8*)* noundef, i8* noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind uwtable
define %struct.ossl_param_st* @OSSL_ENCODER_gettable_params(%struct.ossl_encoder_st* noundef %encoder) local_unnamed_addr #3 {
entry:
  %cmp.not = icmp eq %struct.ossl_encoder_st* %encoder, null
  br i1 %cmp.not, label %return, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %gettable_params = getelementptr inbounds %struct.ossl_encoder_st, %struct.ossl_encoder_st* %encoder, i64 0, i32 4
  %0 = load %struct.ossl_param_st* (i8*)*, %struct.ossl_param_st* (i8*)** %gettable_params, align 8, !tbaa !30
  %cmp1.not = icmp eq %struct.ossl_param_st* (i8*)* %0, null
  br i1 %cmp1.not, label %return, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %call = tail call %struct.ossl_provider_st* @OSSL_ENCODER_get0_provider(%struct.ossl_encoder_st* noundef nonnull %encoder) #9
  %call2 = tail call i8* @ossl_provider_ctx(%struct.ossl_provider_st* noundef %call) #10
  %1 = load %struct.ossl_param_st* (i8*)*, %struct.ossl_param_st* (i8*)** %gettable_params, align 8, !tbaa !30
  %call4 = tail call %struct.ossl_param_st* %1(i8* noundef %call2) #10
  br label %return

return:                                           ; preds = %entry, %land.lhs.true, %if.then
  %retval.0 = phi %struct.ossl_param_st* [ %call4, %if.then ], [ null, %land.lhs.true ], [ null, %entry ]
  ret %struct.ossl_param_st* %retval.0
}

declare i8* @ossl_provider_ctx(%struct.ossl_provider_st* noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind uwtable
define i32 @OSSL_ENCODER_get_params(%struct.ossl_encoder_st* noundef readonly %encoder, %struct.ossl_param_st* noundef %params) local_unnamed_addr #3 {
entry:
  %cmp.not = icmp eq %struct.ossl_encoder_st* %encoder, null
  br i1 %cmp.not, label %return, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %get_params = getelementptr inbounds %struct.ossl_encoder_st, %struct.ossl_encoder_st* %encoder, i64 0, i32 3
  %0 = load i32 (%struct.ossl_param_st*)*, i32 (%struct.ossl_param_st*)** %get_params, align 8, !tbaa !31
  %cmp1.not = icmp eq i32 (%struct.ossl_param_st*)* %0, null
  br i1 %cmp1.not, label %return, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %call = tail call i32 %0(%struct.ossl_param_st* noundef %params) #10
  br label %return

return:                                           ; preds = %entry, %land.lhs.true, %if.then
  %retval.0 = phi i32 [ %call, %if.then ], [ 0, %land.lhs.true ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define %struct.ossl_param_st* @OSSL_ENCODER_settable_ctx_params(%struct.ossl_encoder_st* noundef %encoder) local_unnamed_addr #3 {
entry:
  %cmp.not = icmp eq %struct.ossl_encoder_st* %encoder, null
  br i1 %cmp.not, label %return, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %settable_ctx_params = getelementptr inbounds %struct.ossl_encoder_st, %struct.ossl_encoder_st* %encoder, i64 0, i32 6
  %0 = load %struct.ossl_param_st* (i8*)*, %struct.ossl_param_st* (i8*)** %settable_ctx_params, align 8, !tbaa !32
  %cmp1.not = icmp eq %struct.ossl_param_st* (i8*)* %0, null
  br i1 %cmp1.not, label %return, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %call = tail call %struct.ossl_provider_st* @OSSL_ENCODER_get0_provider(%struct.ossl_encoder_st* noundef nonnull %encoder) #9
  %call2 = tail call i8* @ossl_provider_ctx(%struct.ossl_provider_st* noundef %call) #10
  %1 = load %struct.ossl_param_st* (i8*)*, %struct.ossl_param_st* (i8*)** %settable_ctx_params, align 8, !tbaa !32
  %call4 = tail call %struct.ossl_param_st* %1(i8* noundef %call2) #10
  br label %return

return:                                           ; preds = %entry, %land.lhs.true, %if.then
  %retval.0 = phi %struct.ossl_param_st* [ %call4, %if.then ], [ null, %land.lhs.true ], [ null, %entry ]
  ret %struct.ossl_param_st* %retval.0
}

; Function Attrs: noinline nounwind uwtable
define %struct.ossl_encoder_ctx_st* @OSSL_ENCODER_CTX_new() local_unnamed_addr #3 {
entry:
  %call = tail call i8* @CRYPTO_zalloc(i64 noundef 104, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 noundef 606) #10
  %cmp = icmp eq i8* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #10
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 noundef 607, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.OSSL_ENCODER_CTX_new, i64 0, i64 0)) #10
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 59, i32 noundef 786688, i8* noundef null) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %0 = bitcast i8* %call to %struct.ossl_encoder_ctx_st*
  ret %struct.ossl_encoder_ctx_st* %0
}

declare i8* @CRYPTO_zalloc(i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind uwtable
define i32 @OSSL_ENCODER_CTX_set_params(%struct.ossl_encoder_ctx_st* noundef %ctx, %struct.ossl_param_st* noundef %params) local_unnamed_addr #3 {
entry:
  %cmp.not = icmp eq %struct.ossl_encoder_ctx_st* %ctx, null
  br i1 %cmp.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #10
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 noundef 620, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.OSSL_ENCODER_CTX_set_params, i64 0, i64 0)) #10
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 59, i32 noundef 786690, i8* noundef null) #10
  br label %cleanup27

if.end:                                           ; preds = %entry
  %encoder_insts = getelementptr inbounds %struct.ossl_encoder_ctx_st, %struct.ossl_encoder_ctx_st* %ctx, i64 0, i32 3
  %0 = load %struct.stack_st_OSSL_ENCODER_INSTANCE*, %struct.stack_st_OSSL_ENCODER_INSTANCE** %encoder_insts, align 8, !tbaa !33
  %cmp3 = icmp eq %struct.stack_st_OSSL_ENCODER_INSTANCE* %0, null
  br i1 %cmp3, label %cleanup27, label %if.end6

if.end6:                                          ; preds = %if.end
  %call = tail call i32 @OSSL_ENCODER_CTX_get_num_encoders(%struct.ossl_encoder_ctx_st* noundef nonnull %ctx) #10
  %cmp844.not = icmp eq i32 %call, 0
  br i1 %cmp844.not, label %cleanup27, label %for.body.preheader

for.body.preheader:                               ; preds = %if.end6
  %umax = sext i32 %call to i64
  br label %for.body

for.body:                                         ; preds = %for.body.preheader, %cleanup
  %ok.046 = phi i32 [ %ok.2, %cleanup ], [ 1, %for.body.preheader ]
  %i.045 = phi i64 [ %inc, %cleanup ], [ 0, %for.body.preheader ]
  %1 = load %struct.stack_st_OSSL_ENCODER_INSTANCE*, %struct.stack_st_OSSL_ENCODER_INSTANCE** %encoder_insts, align 8, !tbaa !33
  %conv11 = trunc i64 %i.045 to i32
  %call12 = tail call fastcc %struct.ossl_encoder_instance_st* @sk_OSSL_ENCODER_INSTANCE_value(%struct.stack_st_OSSL_ENCODER_INSTANCE* noundef %1, i32 noundef %conv11) #9
  %call13 = tail call %struct.ossl_encoder_st* @OSSL_ENCODER_INSTANCE_get_encoder(%struct.ossl_encoder_instance_st* noundef %call12) #10
  %call14 = tail call i8* @OSSL_ENCODER_INSTANCE_get_encoder_ctx(%struct.ossl_encoder_instance_st* noundef %call12) #10
  %cmp15 = icmp eq i8* %call14, null
  br i1 %cmp15, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %set_ctx_params = getelementptr inbounds %struct.ossl_encoder_st, %struct.ossl_encoder_st* %call13, i64 0, i32 5
  %2 = load i32 (i8*, %struct.ossl_param_st*)*, i32 (i8*, %struct.ossl_param_st*)** %set_ctx_params, align 8, !tbaa !37
  %cmp17 = icmp eq i32 (i8*, %struct.ossl_param_st*)* %2, null
  br i1 %cmp17, label %cleanup, label %if.end20

if.end20:                                         ; preds = %lor.lhs.false
  %call22 = tail call i32 %2(i8* noundef nonnull %call14, %struct.ossl_param_st* noundef %params) #10
  %tobool.not = icmp eq i32 %call22, 0
  %spec.select = select i1 %tobool.not, i32 0, i32 %ok.046
  br label %cleanup

cleanup:                                          ; preds = %for.body, %lor.lhs.false, %if.end20
  %ok.2 = phi i32 [ %spec.select, %if.end20 ], [ %ok.046, %lor.lhs.false ], [ %ok.046, %for.body ]
  %inc = add nuw i64 %i.045, 1
  %exitcond.not = icmp eq i64 %inc, %umax
  br i1 %exitcond.not, label %cleanup27, label %for.body, !llvm.loop !38

cleanup27:                                        ; preds = %cleanup, %if.end6, %if.end, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 1, %if.end ], [ 1, %if.end6 ], [ %ok.2, %cleanup ]
  ret i32 %retval.0
}

declare i32 @OSSL_ENCODER_CTX_get_num_encoders(%struct.ossl_encoder_ctx_st* noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.ossl_encoder_instance_st* @sk_OSSL_ENCODER_INSTANCE_value(%struct.stack_st_OSSL_ENCODER_INSTANCE* noundef %sk, i32 noundef %idx) unnamed_addr #3 {
entry:
  %0 = bitcast %struct.stack_st_OSSL_ENCODER_INSTANCE* %sk to %struct.stack_st*
  %call = tail call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %0, i32 noundef %idx) #10
  %1 = bitcast i8* %call to %struct.ossl_encoder_instance_st*
  ret %struct.ossl_encoder_instance_st* %1
}

declare %struct.ossl_encoder_st* @OSSL_ENCODER_INSTANCE_get_encoder(%struct.ossl_encoder_instance_st* noundef) local_unnamed_addr #4

declare i8* @OSSL_ENCODER_INSTANCE_get_encoder_ctx(%struct.ossl_encoder_instance_st* noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind uwtable
define void @OSSL_ENCODER_CTX_free(%struct.ossl_encoder_ctx_st* noundef %ctx) local_unnamed_addr #3 {
entry:
  %cmp.not = icmp eq %struct.ossl_encoder_ctx_st* %ctx, null
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %encoder_insts = getelementptr inbounds %struct.ossl_encoder_ctx_st, %struct.ossl_encoder_ctx_st* %ctx, i64 0, i32 3
  %0 = load %struct.stack_st_OSSL_ENCODER_INSTANCE*, %struct.stack_st_OSSL_ENCODER_INSTANCE** %encoder_insts, align 8, !tbaa !33
  tail call fastcc void @sk_OSSL_ENCODER_INSTANCE_pop_free(%struct.stack_st_OSSL_ENCODER_INSTANCE* noundef %0) #9
  %construct_data = getelementptr inbounds %struct.ossl_encoder_ctx_st, %struct.ossl_encoder_ctx_st* %ctx, i64 0, i32 6
  %1 = load i8*, i8** %construct_data, align 8, !tbaa !40
  tail call void @CRYPTO_free(i8* noundef %1, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 noundef 647) #10
  %pwdata = getelementptr inbounds %struct.ossl_encoder_ctx_st, %struct.ossl_encoder_ctx_st* %ctx, i64 0, i32 7
  tail call void @ossl_pw_clear_passphrase_data(%struct.ossl_passphrase_data_st* noundef nonnull %pwdata) #10
  %2 = bitcast %struct.ossl_encoder_ctx_st* %ctx to i8*
  tail call void @CRYPTO_free(i8* noundef nonnull %2, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 noundef 649) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @sk_OSSL_ENCODER_INSTANCE_pop_free(%struct.stack_st_OSSL_ENCODER_INSTANCE* noundef %sk) unnamed_addr #3 {
entry:
  %0 = bitcast %struct.stack_st_OSSL_ENCODER_INSTANCE* %sk to %struct.stack_st*
  tail call void @OPENSSL_sk_pop_free(%struct.stack_st* noundef %0, void (i8*)* noundef bitcast (void (%struct.ossl_encoder_instance_st*)* @ossl_encoder_instance_free to void (i8*)*)) #10
  ret void
}

declare void @ossl_encoder_instance_free(%struct.ossl_encoder_instance_st* noundef) #4

declare void @ossl_pw_clear_passphrase_data(%struct.ossl_passphrase_data_st* noundef) local_unnamed_addr #4

declare i32 @ossl_method_store_cache_get(%struct.ossl_method_store_st* noundef, i32 noundef, i8* noundef, i8** noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind uwtable
define internal i8* @get_tmp_encoder_store(i8* nocapture noundef %data) #3 {
entry:
  %tmp_store = getelementptr inbounds i8, i8* %data, i64 32
  %0 = bitcast i8* %tmp_store to %struct.ossl_method_store_st**
  %1 = load %struct.ossl_method_store_st*, %struct.ossl_method_store_st** %0, align 8, !tbaa !17
  %cmp = icmp eq %struct.ossl_method_store_st* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %libctx = bitcast i8* %data to %struct.ossl_lib_ctx_st**
  %2 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** %libctx, align 8, !tbaa !15
  %call = tail call %struct.ossl_method_store_st* @ossl_method_store_new(%struct.ossl_lib_ctx_st* noundef %2) #10
  store %struct.ossl_method_store_st* %call, %struct.ossl_method_store_st** %0, align 8, !tbaa !17
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %.in = phi %struct.ossl_method_store_st* [ %call, %if.then ], [ %1, %entry ]
  %3 = bitcast %struct.ossl_method_store_st* %.in to i8*
  ret i8* %3
}

; Function Attrs: noinline nounwind uwtable
define internal i8* @get_encoder_from_store(i8* noundef %store, i8* nocapture noundef readonly %data) #3 {
entry:
  %method = alloca i8*, align 8
  %0 = bitcast i8** %method to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #8
  store i8* null, i8** %method, align 8, !tbaa !18
  %id1 = getelementptr inbounds i8, i8* %data, i64 8
  %1 = bitcast i8* %id1 to i32*
  %2 = load i32, i32* %1, align 8, !tbaa !19
  %cmp = icmp eq i32 %2, 0
  br i1 %cmp, label %land.lhs.true, label %if.end18

land.lhs.true:                                    ; preds = %entry
  %names = getelementptr inbounds i8, i8* %data, i64 16
  %3 = bitcast i8* %names to i8**
  %4 = load i8*, i8** %3, align 8, !tbaa !20
  %cmp2.not = icmp eq i8* %4, null
  br i1 %cmp2.not, label %cleanup29, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %libctx = bitcast i8* %data to %struct.ossl_lib_ctx_st**
  %5 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** %libctx, align 8, !tbaa !15
  %call = tail call %struct.ossl_namemap_st* @ossl_namemap_stored(%struct.ossl_lib_ctx_st* noundef %5) #10
  %6 = load i8*, i8** %3, align 8, !tbaa !20
  %call5 = tail call i8* @strchr(i8* noundef %6, i32 noundef 58) #11
  %cmp6 = icmp eq i8* %call5, null
  br i1 %cmp6, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then
  %call7 = tail call i64 @strlen(i8* noundef %6) #11
  br label %cond.end

cond.false:                                       ; preds = %if.then
  %sub.ptr.lhs.cast = ptrtoint i8* %call5 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %6 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %call7, %cond.true ], [ %sub.ptr.sub, %cond.false ]
  %cmp8 = icmp eq %struct.ossl_namemap_st* %call, null
  br i1 %cmp8, label %cleanup29, label %if.end15

if.end15:                                         ; preds = %cond.end
  %call11 = tail call i32 @ossl_namemap_name2num_n(%struct.ossl_namemap_st* noundef nonnull %call, i8* noundef %6, i64 noundef %cond) #10
  %cmp16 = icmp eq i32 %call11, 0
  br i1 %cmp16, label %cleanup29, label %if.end18

if.end18:                                         ; preds = %entry, %if.end15
  %id.158 = phi i32 [ %call11, %if.end15 ], [ %2, %entry ]
  %cmp19 = icmp eq i8* %store, null
  br i1 %cmp19, label %land.lhs.true20, label %if.end25

land.lhs.true20:                                  ; preds = %if.end18
  %libctx21 = bitcast i8* %data to %struct.ossl_lib_ctx_st**
  %7 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** %libctx21, align 8, !tbaa !15
  %call22 = tail call fastcc %struct.ossl_method_store_st* @get_encoder_store(%struct.ossl_lib_ctx_st* noundef %7) #9
  %8 = bitcast %struct.ossl_method_store_st* %call22 to i8*
  %cmp23 = icmp eq %struct.ossl_method_store_st* %call22, null
  br i1 %cmp23, label %cleanup29, label %if.end25

if.end25:                                         ; preds = %land.lhs.true20, %if.end18
  %store.addr.0 = phi i8* [ %8, %land.lhs.true20 ], [ %store, %if.end18 ]
  %9 = bitcast i8* %store.addr.0 to %struct.ossl_method_store_st*
  %propquery = getelementptr inbounds i8, i8* %data, i64 24
  %10 = bitcast i8* %propquery to i8**
  %11 = load i8*, i8** %10, align 8, !tbaa !21
  %call26 = call i32 @ossl_method_store_fetch(%struct.ossl_method_store_st* noundef %9, i32 noundef %id.158, i8* noundef %11, i8** noundef nonnull %method) #10
  %tobool.not = icmp eq i32 %call26, 0
  %12 = load i8*, i8** %method, align 8
  %spec.select = select i1 %tobool.not, i8* null, i8* %12
  br label %cleanup29

cleanup29:                                        ; preds = %cond.end, %land.lhs.true, %if.end25, %land.lhs.true20, %if.end15
  %retval.1 = phi i8* [ null, %if.end15 ], [ null, %land.lhs.true20 ], [ %spec.select, %if.end25 ], [ null, %land.lhs.true ], [ null, %cond.end ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #8
  ret i8* %retval.1
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @put_encoder_in_store(i8* noundef %store, i8* noundef %method, %struct.ossl_provider_st* noundef %prov, i8* noundef %names, i8* noundef %propdef, i8* nocapture noundef readonly %data) #3 {
entry:
  %cmp.not = icmp eq i8* %names, null
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = tail call i8* @strchr(i8* noundef nonnull %names, i32 noundef 58) #11
  %cmp1 = icmp eq i8* %call, null
  br i1 %cmp1, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then
  %call2 = tail call i64 @strlen(i8* noundef nonnull %names) #11
  br label %if.end

cond.false:                                       ; preds = %if.then
  %sub.ptr.lhs.cast = ptrtoint i8* %call to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %names to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  br label %if.end

if.end:                                           ; preds = %cond.true, %cond.false, %entry
  %l.0 = phi i64 [ 0, %entry ], [ %call2, %cond.true ], [ %sub.ptr.sub, %cond.false ]
  %libctx = bitcast i8* %data to %struct.ossl_lib_ctx_st**
  %0 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** %libctx, align 8, !tbaa !15
  %call3 = tail call %struct.ossl_namemap_st* @ossl_namemap_stored(%struct.ossl_lib_ctx_st* noundef %0) #10
  %cmp4 = icmp eq %struct.ossl_namemap_st* %call3, null
  br i1 %cmp4, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %call5 = tail call i32 @ossl_namemap_name2num_n(%struct.ossl_namemap_st* noundef nonnull %call3, i8* noundef %names, i64 noundef %l.0) #10
  %cmp6 = icmp eq i32 %call5, 0
  br i1 %cmp6, label %cleanup, label %if.end8

if.end8:                                          ; preds = %lor.lhs.false
  %cmp9 = icmp eq i8* %store, null
  br i1 %cmp9, label %land.lhs.true, label %if.end14

land.lhs.true:                                    ; preds = %if.end8
  %1 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** %libctx, align 8, !tbaa !15
  %call11 = tail call fastcc %struct.ossl_method_store_st* @get_encoder_store(%struct.ossl_lib_ctx_st* noundef %1) #9
  %2 = bitcast %struct.ossl_method_store_st* %call11 to i8*
  %cmp12 = icmp eq %struct.ossl_method_store_st* %call11, null
  br i1 %cmp12, label %cleanup, label %if.end14

if.end14:                                         ; preds = %land.lhs.true, %if.end8
  %store.addr.0 = phi i8* [ %2, %land.lhs.true ], [ %store, %if.end8 ]
  %3 = bitcast i8* %store.addr.0 to %struct.ossl_method_store_st*
  %call15 = tail call i32 @ossl_method_store_add(%struct.ossl_method_store_st* noundef %3, %struct.ossl_provider_st* noundef %prov, i32 noundef %call5, i8* noundef %propdef, i8* noundef %method, i32 (i8*)* noundef bitcast (i32 (%struct.ossl_encoder_st*)* @OSSL_ENCODER_up_ref to i32 (i8*)*), void (i8*)* noundef bitcast (void (%struct.ossl_encoder_st*)* @OSSL_ENCODER_free to void (i8*)*)) #10
  br label %cleanup

cleanup:                                          ; preds = %land.lhs.true, %if.end, %lor.lhs.false, %if.end14
  %retval.0 = phi i32 [ %call15, %if.end14 ], [ 0, %lor.lhs.false ], [ 0, %if.end ], [ 0, %land.lhs.true ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i8* @construct_encoder(%struct.ossl_algorithm_st* noundef %algodef, %struct.ossl_provider_st* noundef %prov, i8* nocapture noundef %data) #3 {
entry:
  %call = tail call %struct.ossl_lib_ctx_st* @ossl_provider_libctx(%struct.ossl_provider_st* noundef %prov) #10
  %call1 = tail call %struct.ossl_namemap_st* @ossl_namemap_stored(%struct.ossl_lib_ctx_st* noundef %call) #10
  %algorithm_names = getelementptr inbounds %struct.ossl_algorithm_st, %struct.ossl_algorithm_st* %algodef, i64 0, i32 0
  %0 = load i8*, i8** %algorithm_names, align 8, !tbaa !41
  %call2 = tail call i32 @ossl_namemap_add_names(%struct.ossl_namemap_st* noundef %call1, i32 noundef 0, i8* noundef %0, i8 noundef signext 58) #10
  %cmp.not = icmp eq i32 %call2, 0
  br i1 %cmp.not, label %if.then5, label %if.end

if.end:                                           ; preds = %entry
  %call3 = tail call fastcc i8* @encoder_from_algorithm(i32 noundef %call2, %struct.ossl_algorithm_st* noundef nonnull %algodef, %struct.ossl_provider_st* noundef %prov) #9
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
define internal void @destruct_encoder(i8* noundef %method, i8* nocapture noundef readnone %data) #3 {
entry:
  %0 = bitcast i8* %method to %struct.ossl_encoder_st*
  tail call void @OSSL_ENCODER_free(%struct.ossl_encoder_st* noundef %0) #9
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #6

declare i8* @ossl_method_construct(%struct.ossl_lib_ctx_st* noundef, i32 noundef, i32 noundef, %struct.ossl_method_construct_method_st* noundef, i8* noundef) local_unnamed_addr #4

declare i32 @ossl_method_store_cache_set(%struct.ossl_method_store_st* noundef, i32 noundef, i8* noundef, i8* noundef, i32 (i8*)* noundef, void (i8*)* noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline nounwind uwtable willreturn
define internal i32 @up_ref_encoder(i8* nocapture noundef %method) #0 {
entry:
  %0 = bitcast i8* %method to %struct.ossl_encoder_st*
  %call = tail call i32 @OSSL_ENCODER_up_ref(%struct.ossl_encoder_st* noundef %0) #9
  ret i32 1
}

; Function Attrs: noinline nounwind uwtable
define internal void @free_encoder(i8* noundef %method) #3 {
entry:
  %0 = bitcast i8* %method to %struct.ossl_encoder_st*
  tail call void @OSSL_ENCODER_free(%struct.ossl_encoder_st* noundef %0) #9
  ret void
}

declare i8* @ossl_namemap_num2name(%struct.ossl_namemap_st* noundef, i32 noundef, i64 noundef) local_unnamed_addr #4

declare i8* @ossl_lib_ctx_get_descriptor(%struct.ossl_lib_ctx_st* noundef) local_unnamed_addr #4

declare %struct.ossl_method_store_st* @ossl_method_store_new(%struct.ossl_lib_ctx_st* noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare i8* @strchr(i8* noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare i64 @strlen(i8* noundef) local_unnamed_addr #7

declare i32 @ossl_namemap_name2num_n(%struct.ossl_namemap_st* noundef, i8* noundef, i64 noundef) local_unnamed_addr #4

declare i32 @ossl_method_store_fetch(%struct.ossl_method_store_st* noundef, i32 noundef, i8* noundef, i8** noundef) local_unnamed_addr #4

declare i32 @ossl_method_store_add(%struct.ossl_method_store_st* noundef, %struct.ossl_provider_st* noundef, i32 noundef, i8* noundef, i8* noundef, i32 (i8*)* noundef, void (i8*)* noundef) local_unnamed_addr #4

declare i32 @ossl_namemap_add_names(%struct.ossl_namemap_st* noundef, i32 noundef, i8* noundef, i8 noundef signext) local_unnamed_addr #4

; Function Attrs: noinline nounwind uwtable
define internal fastcc i8* @encoder_from_algorithm(i32 noundef %id, %struct.ossl_algorithm_st* noundef %algodef, %struct.ossl_provider_st* noundef %prov) unnamed_addr #3 {
entry:
  %implementation = getelementptr inbounds %struct.ossl_algorithm_st, %struct.ossl_algorithm_st* %algodef, i64 0, i32 2
  %0 = load %struct.ossl_dispatch_st*, %struct.ossl_dispatch_st** %implementation, align 8, !tbaa !42
  %call = tail call %struct.ossl_lib_ctx_st* @ossl_provider_libctx(%struct.ossl_provider_st* noundef %prov) #10
  %call1 = tail call fastcc %struct.ossl_encoder_st* @ossl_encoder_new() #9
  %cmp = icmp eq %struct.ossl_encoder_st* %call1, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %id2 = getelementptr inbounds %struct.ossl_encoder_st, %struct.ossl_encoder_st* %call1, i64 0, i32 0, i32 1
  store i32 %id, i32* %id2, align 8, !tbaa !25
  %call3 = tail call i8* @ossl_algorithm_get1_first_name(%struct.ossl_algorithm_st* noundef nonnull %algodef) #10
  %name = getelementptr inbounds %struct.ossl_encoder_st, %struct.ossl_encoder_st* %call1, i64 0, i32 0, i32 2
  store i8* %call3, i8** %name, align 8, !tbaa !8
  %cmp5 = icmp eq i8* %call3, null
  br i1 %cmp5, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.end
  tail call void @OSSL_ENCODER_free(%struct.ossl_encoder_st* noundef nonnull %call1) #9
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %algodef9 = getelementptr inbounds %struct.ossl_encoder_st, %struct.ossl_encoder_st* %call1, i64 0, i32 0, i32 3
  store %struct.ossl_algorithm_st* %algodef, %struct.ossl_algorithm_st** %algodef9, align 8, !tbaa !22
  %property_definition = getelementptr inbounds %struct.ossl_algorithm_st, %struct.ossl_algorithm_st* %algodef, i64 0, i32 1
  %1 = load i8*, i8** %property_definition, align 8, !tbaa !23
  %call10 = tail call %struct.ossl_property_list_st* @ossl_parse_property(%struct.ossl_lib_ctx_st* noundef %call, i8* noundef %1) #10
  %parsed_propdef = getelementptr inbounds %struct.ossl_encoder_st, %struct.ossl_encoder_st* %call1, i64 0, i32 0, i32 4
  store %struct.ossl_property_list_st* %call10, %struct.ossl_property_list_st** %parsed_propdef, align 8, !tbaa !12
  %free_object = getelementptr inbounds %struct.ossl_encoder_st, %struct.ossl_encoder_st* %call1, i64 0, i32 10
  %import_object = getelementptr inbounds %struct.ossl_encoder_st, %struct.ossl_encoder_st* %call1, i64 0, i32 9
  %encode = getelementptr inbounds %struct.ossl_encoder_st, %struct.ossl_encoder_st* %call1, i64 0, i32 8
  %does_selection = getelementptr inbounds %struct.ossl_encoder_st, %struct.ossl_encoder_st* %call1, i64 0, i32 7
  %settable_ctx_params = getelementptr inbounds %struct.ossl_encoder_st, %struct.ossl_encoder_st* %call1, i64 0, i32 6
  %set_ctx_params = getelementptr inbounds %struct.ossl_encoder_st, %struct.ossl_encoder_st* %call1, i64 0, i32 5
  %gettable_params = getelementptr inbounds %struct.ossl_encoder_st, %struct.ossl_encoder_st* %call1, i64 0, i32 4
  %get_params = getelementptr inbounds %struct.ossl_encoder_st, %struct.ossl_encoder_st* %call1, i64 0, i32 3
  %freectx = getelementptr inbounds %struct.ossl_encoder_st, %struct.ossl_encoder_st* %call1, i64 0, i32 2
  %newctx = getelementptr inbounds %struct.ossl_encoder_st, %struct.ossl_encoder_st* %call1, i64 0, i32 1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end7
  %fns.0 = phi %struct.ossl_dispatch_st* [ %0, %if.end7 ], [ %incdec.ptr, %for.inc ]
  %function_id = getelementptr inbounds %struct.ossl_dispatch_st, %struct.ossl_dispatch_st* %fns.0, i64 0, i32 0
  %2 = load i32, i32* %function_id, align 8, !tbaa !43
  switch i32 %2, label %for.inc [
    i32 0, label %for.end
    i32 1, label %sw.bb
    i32 2, label %sw.bb19
    i32 3, label %sw.bb25
    i32 4, label %sw.bb31
    i32 5, label %sw.bb37
    i32 6, label %sw.bb43
    i32 10, label %sw.bb49
    i32 11, label %sw.bb55
    i32 20, label %sw.bb61
    i32 21, label %sw.bb67
  ]

sw.bb:                                            ; preds = %for.cond
  %3 = load i8* (i8*)*, i8* (i8*)** %newctx, align 8, !tbaa !45
  %cmp14 = icmp eq i8* (i8*)* %3, null
  br i1 %cmp14, label %if.then15, label %for.inc

if.then15:                                        ; preds = %sw.bb
  %call16 = tail call fastcc i8* (i8*)* @OSSL_FUNC_encoder_newctx(%struct.ossl_dispatch_st* noundef nonnull %fns.0) #9
  store i8* (i8*)* %call16, i8* (i8*)** %newctx, align 8, !tbaa !45
  br label %for.inc

sw.bb19:                                          ; preds = %for.cond
  %4 = load void (i8*)*, void (i8*)** %freectx, align 8, !tbaa !46
  %cmp20 = icmp eq void (i8*)* %4, null
  br i1 %cmp20, label %if.then21, label %for.inc

if.then21:                                        ; preds = %sw.bb19
  %call22 = tail call fastcc void (i8*)* @OSSL_FUNC_encoder_freectx(%struct.ossl_dispatch_st* noundef nonnull %fns.0) #9
  store void (i8*)* %call22, void (i8*)** %freectx, align 8, !tbaa !46
  br label %for.inc

sw.bb25:                                          ; preds = %for.cond
  %5 = load i32 (%struct.ossl_param_st*)*, i32 (%struct.ossl_param_st*)** %get_params, align 8, !tbaa !31
  %cmp26 = icmp eq i32 (%struct.ossl_param_st*)* %5, null
  br i1 %cmp26, label %if.then27, label %for.inc

if.then27:                                        ; preds = %sw.bb25
  %call28 = tail call fastcc i32 (%struct.ossl_param_st*)* @OSSL_FUNC_encoder_get_params(%struct.ossl_dispatch_st* noundef nonnull %fns.0) #9
  store i32 (%struct.ossl_param_st*)* %call28, i32 (%struct.ossl_param_st*)** %get_params, align 8, !tbaa !31
  br label %for.inc

sw.bb31:                                          ; preds = %for.cond
  %6 = load %struct.ossl_param_st* (i8*)*, %struct.ossl_param_st* (i8*)** %gettable_params, align 8, !tbaa !30
  %cmp32 = icmp eq %struct.ossl_param_st* (i8*)* %6, null
  br i1 %cmp32, label %if.then33, label %for.inc

if.then33:                                        ; preds = %sw.bb31
  %call34 = tail call fastcc %struct.ossl_param_st* (i8*)* @OSSL_FUNC_encoder_gettable_params(%struct.ossl_dispatch_st* noundef nonnull %fns.0) #9
  store %struct.ossl_param_st* (i8*)* %call34, %struct.ossl_param_st* (i8*)** %gettable_params, align 8, !tbaa !30
  br label %for.inc

sw.bb37:                                          ; preds = %for.cond
  %7 = load i32 (i8*, %struct.ossl_param_st*)*, i32 (i8*, %struct.ossl_param_st*)** %set_ctx_params, align 8, !tbaa !37
  %cmp38 = icmp eq i32 (i8*, %struct.ossl_param_st*)* %7, null
  br i1 %cmp38, label %if.then39, label %for.inc

if.then39:                                        ; preds = %sw.bb37
  %call40 = tail call fastcc i32 (i8*, %struct.ossl_param_st*)* @OSSL_FUNC_encoder_set_ctx_params(%struct.ossl_dispatch_st* noundef nonnull %fns.0) #9
  store i32 (i8*, %struct.ossl_param_st*)* %call40, i32 (i8*, %struct.ossl_param_st*)** %set_ctx_params, align 8, !tbaa !37
  br label %for.inc

sw.bb43:                                          ; preds = %for.cond
  %8 = load %struct.ossl_param_st* (i8*)*, %struct.ossl_param_st* (i8*)** %settable_ctx_params, align 8, !tbaa !32
  %cmp44 = icmp eq %struct.ossl_param_st* (i8*)* %8, null
  br i1 %cmp44, label %if.then45, label %for.inc

if.then45:                                        ; preds = %sw.bb43
  %call46 = tail call fastcc %struct.ossl_param_st* (i8*)* @OSSL_FUNC_encoder_settable_ctx_params(%struct.ossl_dispatch_st* noundef nonnull %fns.0) #9
  store %struct.ossl_param_st* (i8*)* %call46, %struct.ossl_param_st* (i8*)** %settable_ctx_params, align 8, !tbaa !32
  br label %for.inc

sw.bb49:                                          ; preds = %for.cond
  %9 = load i32 (i8*, i32)*, i32 (i8*, i32)** %does_selection, align 8, !tbaa !47
  %cmp50 = icmp eq i32 (i8*, i32)* %9, null
  br i1 %cmp50, label %if.then51, label %for.inc

if.then51:                                        ; preds = %sw.bb49
  %call52 = tail call fastcc i32 (i8*, i32)* @OSSL_FUNC_encoder_does_selection(%struct.ossl_dispatch_st* noundef nonnull %fns.0) #9
  store i32 (i8*, i32)* %call52, i32 (i8*, i32)** %does_selection, align 8, !tbaa !47
  br label %for.inc

sw.bb55:                                          ; preds = %for.cond
  %10 = load i32 (i8*, %struct.ossl_core_bio_st*, i8*, %struct.ossl_param_st*, i32, i32 (i8*, i64, i64*, %struct.ossl_param_st*, i8*)*, i8*)*, i32 (i8*, %struct.ossl_core_bio_st*, i8*, %struct.ossl_param_st*, i32, i32 (i8*, i64, i64*, %struct.ossl_param_st*, i8*)*, i8*)** %encode, align 8, !tbaa !48
  %cmp56 = icmp eq i32 (i8*, %struct.ossl_core_bio_st*, i8*, %struct.ossl_param_st*, i32, i32 (i8*, i64, i64*, %struct.ossl_param_st*, i8*)*, i8*)* %10, null
  br i1 %cmp56, label %if.then57, label %for.inc

if.then57:                                        ; preds = %sw.bb55
  %call58 = tail call fastcc i32 (i8*, %struct.ossl_core_bio_st*, i8*, %struct.ossl_param_st*, i32, i32 (i8*, i64, i64*, %struct.ossl_param_st*, i8*)*, i8*)* @OSSL_FUNC_encoder_encode(%struct.ossl_dispatch_st* noundef nonnull %fns.0) #9
  store i32 (i8*, %struct.ossl_core_bio_st*, i8*, %struct.ossl_param_st*, i32, i32 (i8*, i64, i64*, %struct.ossl_param_st*, i8*)*, i8*)* %call58, i32 (i8*, %struct.ossl_core_bio_st*, i8*, %struct.ossl_param_st*, i32, i32 (i8*, i64, i64*, %struct.ossl_param_st*, i8*)*, i8*)** %encode, align 8, !tbaa !48
  br label %for.inc

sw.bb61:                                          ; preds = %for.cond
  %11 = load i8* (i8*, i32, %struct.ossl_param_st*)*, i8* (i8*, i32, %struct.ossl_param_st*)** %import_object, align 8, !tbaa !49
  %cmp62 = icmp eq i8* (i8*, i32, %struct.ossl_param_st*)* %11, null
  br i1 %cmp62, label %if.then63, label %for.inc

if.then63:                                        ; preds = %sw.bb61
  %call64 = tail call fastcc i8* (i8*, i32, %struct.ossl_param_st*)* @OSSL_FUNC_encoder_import_object(%struct.ossl_dispatch_st* noundef nonnull %fns.0) #9
  store i8* (i8*, i32, %struct.ossl_param_st*)* %call64, i8* (i8*, i32, %struct.ossl_param_st*)** %import_object, align 8, !tbaa !49
  br label %for.inc

sw.bb67:                                          ; preds = %for.cond
  %12 = load void (i8*)*, void (i8*)** %free_object, align 8, !tbaa !50
  %cmp68 = icmp eq void (i8*)* %12, null
  br i1 %cmp68, label %if.then69, label %for.inc

if.then69:                                        ; preds = %sw.bb67
  %call70 = tail call fastcc void (i8*)* @OSSL_FUNC_encoder_free_object(%struct.ossl_dispatch_st* noundef nonnull %fns.0) #9
  store void (i8*)* %call70, void (i8*)** %free_object, align 8, !tbaa !50
  br label %for.inc

for.inc:                                          ; preds = %for.cond, %if.then15, %sw.bb, %if.then21, %sw.bb19, %if.then27, %sw.bb25, %if.then33, %sw.bb31, %if.then39, %sw.bb37, %if.then45, %sw.bb43, %if.then51, %sw.bb49, %if.then57, %sw.bb55, %if.then63, %sw.bb61, %if.then69, %sw.bb67
  %incdec.ptr = getelementptr inbounds %struct.ossl_dispatch_st, %struct.ossl_dispatch_st* %fns.0, i64 1
  br label %for.cond, !llvm.loop !51

for.end:                                          ; preds = %for.cond
  %13 = load i8* (i8*)*, i8* (i8*)** %newctx, align 8, !tbaa !45
  %cmp74 = icmp eq i8* (i8*)* %13, null
  %14 = load void (i8*)*, void (i8*)** %freectx, align 8, !tbaa !46
  %cmp76 = icmp eq void (i8*)* %14, null
  br i1 %cmp74, label %land.lhs.true, label %land.lhs.true79

land.lhs.true:                                    ; preds = %for.end
  br i1 %cmp76, label %lor.lhs.false94, label %lor.lhs.false82

land.lhs.true79:                                  ; preds = %for.end
  br i1 %cmp76, label %lor.lhs.false82, label %lor.lhs.false94

lor.lhs.false82:                                  ; preds = %land.lhs.true, %land.lhs.true79
  %15 = load i8* (i8*, i32, %struct.ossl_param_st*)*, i8* (i8*, i32, %struct.ossl_param_st*)** %import_object, align 8, !tbaa !49
  %cmp84.not = icmp eq i8* (i8*, i32, %struct.ossl_param_st*)* %15, null
  %16 = load void (i8*)*, void (i8*)** %free_object, align 8, !tbaa !50
  %cmp93 = icmp eq void (i8*)* %16, null
  br i1 %cmp84.not, label %land.lhs.true91, label %land.lhs.true85

land.lhs.true85:                                  ; preds = %lor.lhs.false82
  br i1 %cmp93, label %if.then97, label %lor.lhs.false94

land.lhs.true91:                                  ; preds = %lor.lhs.false82
  br i1 %cmp93, label %lor.lhs.false94, label %if.then97

lor.lhs.false94:                                  ; preds = %land.lhs.true91, %land.lhs.true85, %land.lhs.true79, %land.lhs.true
  %17 = load i32 (i8*, %struct.ossl_core_bio_st*, i8*, %struct.ossl_param_st*, i32, i32 (i8*, i64, i64*, %struct.ossl_param_st*, i8*)*, i8*)*, i32 (i8*, %struct.ossl_core_bio_st*, i8*, %struct.ossl_param_st*, i32, i32 (i8*, i64, i64*, %struct.ossl_param_st*, i8*)*, i8*)** %encode, align 8, !tbaa !48
  %cmp96 = icmp eq i32 (i8*, %struct.ossl_core_bio_st*, i8*, %struct.ossl_param_st*, i32, i32 (i8*, i64, i64*, %struct.ossl_param_st*, i8*)*, i8*)* %17, null
  br i1 %cmp96, label %if.then97, label %if.end98

if.then97:                                        ; preds = %land.lhs.true85, %lor.lhs.false94, %land.lhs.true91
  tail call void @OSSL_ENCODER_free(%struct.ossl_encoder_st* noundef nonnull %call1) #9
  tail call void @ERR_new() #10
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 noundef 279, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.encoder_from_algorithm, i64 0, i64 0)) #10
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 59, i32 noundef 786696, i8* noundef null) #10
  br label %cleanup

if.end98:                                         ; preds = %lor.lhs.false94
  %cmp99.not = icmp eq %struct.ossl_provider_st* %prov, null
  br i1 %cmp99.not, label %if.end103, label %land.lhs.true100

land.lhs.true100:                                 ; preds = %if.end98
  %call101 = tail call i32 @ossl_provider_up_ref(%struct.ossl_provider_st* noundef nonnull %prov) #10
  %tobool.not = icmp eq i32 %call101, 0
  br i1 %tobool.not, label %if.then102, label %if.end103

if.then102:                                       ; preds = %land.lhs.true100
  tail call void @OSSL_ENCODER_free(%struct.ossl_encoder_st* noundef nonnull %call1) #9
  br label %cleanup

if.end103:                                        ; preds = %land.lhs.true100, %if.end98
  %prov105 = getelementptr inbounds %struct.ossl_encoder_st, %struct.ossl_encoder_st* %call1, i64 0, i32 0, i32 0
  store %struct.ossl_provider_st* %prov, %struct.ossl_provider_st** %prov105, align 8, !tbaa !13
  %18 = bitcast %struct.ossl_encoder_st* %call1 to i8*
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end103, %if.then102, %if.then97, %if.then6
  %retval.0 = phi i8* [ null, %if.then6 ], [ null, %if.then97 ], [ %18, %if.end103 ], [ null, %if.then102 ], [ null, %entry ]
  ret i8* %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.ossl_encoder_st* @ossl_encoder_new() unnamed_addr #3 {
entry:
  %call = tail call i8* @CRYPTO_zalloc(i64 noundef 136, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 noundef 31) #10
  %0 = bitcast i8* %call to %struct.ossl_encoder_st*
  %cmp = icmp eq i8* %call, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %call1 = tail call i8* @CRYPTO_THREAD_lock_new() #10
  %lock = getelementptr inbounds i8, i8* %call, i64 48
  %1 = bitcast i8* %lock to i8**
  store i8* %call1, i8** %1, align 8, !tbaa !14
  %cmp2 = icmp eq i8* %call1, null
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  tail call void @OSSL_ENCODER_free(%struct.ossl_encoder_st* noundef %0) #9
  tail call void @ERR_new() #10
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 noundef 34, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.ossl_encoder_new, i64 0, i64 0)) #10
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 59, i32 noundef 786688, i8* noundef null) #10
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %refcnt = getelementptr inbounds i8, i8* %call, i64 40
  %2 = bitcast i8* %refcnt to i32*
  store atomic i32 1, i32* %2 seq_cst, align 4, !tbaa !52
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi %struct.ossl_encoder_st* [ null, %if.then ], [ %0, %if.end ]
  ret %struct.ossl_encoder_st* %retval.0
}

declare i8* @ossl_algorithm_get1_first_name(%struct.ossl_algorithm_st* noundef) local_unnamed_addr #4

declare %struct.ossl_property_list_st* @ossl_parse_property(%struct.ossl_lib_ctx_st* noundef, i8* noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal fastcc i8* (i8*)* @OSSL_FUNC_encoder_newctx(%struct.ossl_dispatch_st* nocapture noundef readonly %opf) unnamed_addr #5 {
entry:
  %function = getelementptr inbounds %struct.ossl_dispatch_st, %struct.ossl_dispatch_st* %opf, i64 0, i32 1
  %0 = bitcast void ()** %function to i8* (i8*)**
  %1 = load i8* (i8*)*, i8* (i8*)** %0, align 8, !tbaa !53
  ret i8* (i8*)* %1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal fastcc void (i8*)* @OSSL_FUNC_encoder_freectx(%struct.ossl_dispatch_st* nocapture noundef readonly %opf) unnamed_addr #5 {
entry:
  %function = getelementptr inbounds %struct.ossl_dispatch_st, %struct.ossl_dispatch_st* %opf, i64 0, i32 1
  %0 = bitcast void ()** %function to void (i8*)**
  %1 = load void (i8*)*, void (i8*)** %0, align 8, !tbaa !53
  ret void (i8*)* %1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal fastcc i32 (%struct.ossl_param_st*)* @OSSL_FUNC_encoder_get_params(%struct.ossl_dispatch_st* nocapture noundef readonly %opf) unnamed_addr #5 {
entry:
  %function = getelementptr inbounds %struct.ossl_dispatch_st, %struct.ossl_dispatch_st* %opf, i64 0, i32 1
  %0 = bitcast void ()** %function to i32 (%struct.ossl_param_st*)**
  %1 = load i32 (%struct.ossl_param_st*)*, i32 (%struct.ossl_param_st*)** %0, align 8, !tbaa !53
  ret i32 (%struct.ossl_param_st*)* %1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal fastcc %struct.ossl_param_st* (i8*)* @OSSL_FUNC_encoder_gettable_params(%struct.ossl_dispatch_st* nocapture noundef readonly %opf) unnamed_addr #5 {
entry:
  %function = getelementptr inbounds %struct.ossl_dispatch_st, %struct.ossl_dispatch_st* %opf, i64 0, i32 1
  %0 = bitcast void ()** %function to %struct.ossl_param_st* (i8*)**
  %1 = load %struct.ossl_param_st* (i8*)*, %struct.ossl_param_st* (i8*)** %0, align 8, !tbaa !53
  ret %struct.ossl_param_st* (i8*)* %1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal fastcc i32 (i8*, %struct.ossl_param_st*)* @OSSL_FUNC_encoder_set_ctx_params(%struct.ossl_dispatch_st* nocapture noundef readonly %opf) unnamed_addr #5 {
entry:
  %function = getelementptr inbounds %struct.ossl_dispatch_st, %struct.ossl_dispatch_st* %opf, i64 0, i32 1
  %0 = bitcast void ()** %function to i32 (i8*, %struct.ossl_param_st*)**
  %1 = load i32 (i8*, %struct.ossl_param_st*)*, i32 (i8*, %struct.ossl_param_st*)** %0, align 8, !tbaa !53
  ret i32 (i8*, %struct.ossl_param_st*)* %1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal fastcc %struct.ossl_param_st* (i8*)* @OSSL_FUNC_encoder_settable_ctx_params(%struct.ossl_dispatch_st* nocapture noundef readonly %opf) unnamed_addr #5 {
entry:
  %function = getelementptr inbounds %struct.ossl_dispatch_st, %struct.ossl_dispatch_st* %opf, i64 0, i32 1
  %0 = bitcast void ()** %function to %struct.ossl_param_st* (i8*)**
  %1 = load %struct.ossl_param_st* (i8*)*, %struct.ossl_param_st* (i8*)** %0, align 8, !tbaa !53
  ret %struct.ossl_param_st* (i8*)* %1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal fastcc i32 (i8*, i32)* @OSSL_FUNC_encoder_does_selection(%struct.ossl_dispatch_st* nocapture noundef readonly %opf) unnamed_addr #5 {
entry:
  %function = getelementptr inbounds %struct.ossl_dispatch_st, %struct.ossl_dispatch_st* %opf, i64 0, i32 1
  %0 = bitcast void ()** %function to i32 (i8*, i32)**
  %1 = load i32 (i8*, i32)*, i32 (i8*, i32)** %0, align 8, !tbaa !53
  ret i32 (i8*, i32)* %1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal fastcc i32 (i8*, %struct.ossl_core_bio_st*, i8*, %struct.ossl_param_st*, i32, i32 (i8*, i64, i64*, %struct.ossl_param_st*, i8*)*, i8*)* @OSSL_FUNC_encoder_encode(%struct.ossl_dispatch_st* nocapture noundef readonly %opf) unnamed_addr #5 {
entry:
  %function = getelementptr inbounds %struct.ossl_dispatch_st, %struct.ossl_dispatch_st* %opf, i64 0, i32 1
  %0 = bitcast void ()** %function to i32 (i8*, %struct.ossl_core_bio_st*, i8*, %struct.ossl_param_st*, i32, i32 (i8*, i64, i64*, %struct.ossl_param_st*, i8*)*, i8*)**
  %1 = load i32 (i8*, %struct.ossl_core_bio_st*, i8*, %struct.ossl_param_st*, i32, i32 (i8*, i64, i64*, %struct.ossl_param_st*, i8*)*, i8*)*, i32 (i8*, %struct.ossl_core_bio_st*, i8*, %struct.ossl_param_st*, i32, i32 (i8*, i64, i64*, %struct.ossl_param_st*, i8*)*, i8*)** %0, align 8, !tbaa !53
  ret i32 (i8*, %struct.ossl_core_bio_st*, i8*, %struct.ossl_param_st*, i32, i32 (i8*, i64, i64*, %struct.ossl_param_st*, i8*)*, i8*)* %1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal fastcc i8* (i8*, i32, %struct.ossl_param_st*)* @OSSL_FUNC_encoder_import_object(%struct.ossl_dispatch_st* nocapture noundef readonly %opf) unnamed_addr #5 {
entry:
  %function = getelementptr inbounds %struct.ossl_dispatch_st, %struct.ossl_dispatch_st* %opf, i64 0, i32 1
  %0 = bitcast void ()** %function to i8* (i8*, i32, %struct.ossl_param_st*)**
  %1 = load i8* (i8*, i32, %struct.ossl_param_st*)*, i8* (i8*, i32, %struct.ossl_param_st*)** %0, align 8, !tbaa !53
  ret i8* (i8*, i32, %struct.ossl_param_st*)* %1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal fastcc void (i8*)* @OSSL_FUNC_encoder_free_object(%struct.ossl_dispatch_st* nocapture noundef readonly %opf) unnamed_addr #5 {
entry:
  %function = getelementptr inbounds %struct.ossl_dispatch_st, %struct.ossl_dispatch_st* %opf, i64 0, i32 1
  %0 = bitcast void ()** %function to void (i8*)**
  %1 = load void (i8*)*, void (i8*)** %0, align 8, !tbaa !53
  ret void (i8*)* %1
}

declare i32 @ossl_provider_up_ref(%struct.ossl_provider_st* noundef) local_unnamed_addr #4

declare i8* @CRYPTO_THREAD_lock_new() local_unnamed_addr #4

declare void @ossl_method_store_free(%struct.ossl_method_store_st* noundef) local_unnamed_addr #4

declare i8* @ossl_lib_ctx_get_data(%struct.ossl_lib_ctx_st* noundef, i32 noundef, %struct.ossl_lib_ctx_method* noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind uwtable
define internal i8* @encoder_store_new(%struct.ossl_lib_ctx_st* noundef %ctx) #3 {
entry:
  %call = tail call %struct.ossl_method_store_st* @ossl_method_store_new(%struct.ossl_lib_ctx_st* noundef %ctx) #10
  %0 = bitcast %struct.ossl_method_store_st* %call to i8*
  ret i8* %0
}

; Function Attrs: noinline nounwind uwtable
define internal void @encoder_store_free(i8* noundef %vstore) #3 {
entry:
  %0 = bitcast i8* %vstore to %struct.ossl_method_store_st*
  tail call void @ossl_method_store_free(%struct.ossl_method_store_st* noundef %0) #10
  ret void
}

declare i8* @OPENSSL_sk_value(%struct.stack_st* noundef, i32 noundef) local_unnamed_addr #4

declare void @OPENSSL_sk_pop_free(%struct.stack_st* noundef, void (i8*)* noundef) local_unnamed_addr #4

attributes #0 = { mustprogress nofree noinline nounwind uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { mustprogress nofree noinline norecurse nounwind uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #7 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind }
attributes #9 = { nobuiltin "no-builtins" }
attributes #10 = { nobuiltin nounwind "no-builtins" }
attributes #11 = { nobuiltin nounwind readonly willreturn "no-builtins" }

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
!8 = !{!9, !11, i64 16}
!9 = !{!"ossl_encoder_st", !10, i64 0, !11, i64 56, !11, i64 64, !11, i64 72, !11, i64 80, !11, i64 88, !11, i64 96, !11, i64 104, !11, i64 112, !11, i64 120, !11, i64 128}
!10 = !{!"ossl_endecode_base_st", !11, i64 0, !5, i64 8, !11, i64 16, !11, i64 24, !11, i64 32, !6, i64 40, !11, i64 48}
!11 = !{!"any pointer", !6, i64 0}
!12 = !{!9, !11, i64 32}
!13 = !{!9, !11, i64 0}
!14 = !{!9, !11, i64 48}
!15 = !{!16, !11, i64 0}
!16 = !{!"encoder_data_st", !11, i64 0, !5, i64 8, !11, i64 16, !11, i64 24, !11, i64 32, !5, i64 40}
!17 = !{!16, !11, i64 32}
!18 = !{!11, !11, i64 0}
!19 = !{!16, !5, i64 8}
!20 = !{!16, !11, i64 16}
!21 = !{!16, !11, i64 24}
!22 = !{!9, !11, i64 24}
!23 = !{!24, !11, i64 8}
!24 = !{!"ossl_algorithm_st", !11, i64 0, !11, i64 8, !11, i64 16, !11, i64 24}
!25 = !{!9, !5, i64 8}
!26 = !{!24, !11, i64 24}
!27 = !{!28, !11, i64 0}
!28 = !{!"do_one_data_st", !11, i64 0, !11, i64 8}
!29 = !{!28, !11, i64 8}
!30 = !{!9, !11, i64 80}
!31 = !{!9, !11, i64 72}
!32 = !{!9, !11, i64 96}
!33 = !{!34, !11, i64 24}
!34 = !{!"ossl_encoder_ctx_st", !5, i64 0, !11, i64 8, !11, i64 16, !11, i64 24, !11, i64 32, !11, i64 40, !11, i64 48, !35, i64 56}
!35 = !{!"ossl_passphrase_data_st", !6, i64 0, !6, i64 8, !5, i64 24, !11, i64 32, !36, i64 40}
!36 = !{!"long", !6, i64 0}
!37 = !{!9, !11, i64 88}
!38 = distinct !{!38, !39}
!39 = !{!"llvm.loop.mustprogress"}
!40 = !{!34, !11, i64 48}
!41 = !{!24, !11, i64 0}
!42 = !{!24, !11, i64 16}
!43 = !{!44, !5, i64 0}
!44 = !{!"ossl_dispatch_st", !5, i64 0, !11, i64 8}
!45 = !{!9, !11, i64 56}
!46 = !{!9, !11, i64 64}
!47 = !{!9, !11, i64 104}
!48 = !{!9, !11, i64 112}
!49 = !{!9, !11, i64 120}
!50 = !{!9, !11, i64 128}
!51 = distinct !{!51, !39}
!52 = !{!9, !6, i64 40}
!53 = !{!44, !11, i64 8}
