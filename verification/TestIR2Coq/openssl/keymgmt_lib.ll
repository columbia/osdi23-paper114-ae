; ModuleID = 'crypto/evp/keymgmt_lib.c'
source_filename = "crypto/evp/keymgmt_lib.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ossl_param_st = type { i8*, i32, i8*, i64, i64 }
%struct.evp_keymgmt_st = type { i32, i32, i8*, i8*, %struct.ossl_provider_st*, i32, i8*, i8* (i8*)*, void (i8*)*, i32 (i8*, %struct.ossl_param_st*)*, %struct.ossl_param_st* (i8*)*, i32 (i8*, %struct.ossl_param_st*)*, %struct.ossl_param_st* (i8*)*, i8* (i8*, i32, %struct.ossl_param_st*)*, i32 (i8*, i8*)*, i32 (i8*, %struct.ossl_param_st*)*, %struct.ossl_param_st* (i8*, i8*)*, i8* (i8*, i32 (%struct.ossl_param_st*, i8*)*, i8*)*, void (i8*)*, i8* (i8*, i64)*, i8* (i32)*, i32 (i8*, i32)*, i32 (i8*, i32, i32)*, i32 (i8*, i8*, i32)*, i32 (i8*, i32, %struct.ossl_param_st*)*, %struct.ossl_param_st* (i32)*, i32 (i8*, i32, i32 (%struct.ossl_param_st*, i8*)*, i8*)*, %struct.ossl_param_st* (i32)*, i8* (i8*, i32)* }
%struct.ossl_provider_st = type opaque
%struct.evp_pkey_st = type { i32, i32, %struct.evp_pkey_asn1_method_st*, %struct.engine_st*, %struct.engine_st*, %union.legacy_pkey_st, %union.legacy_pkey_st, i32, i8*, %struct.stack_st_X509_ATTRIBUTE*, i32, i8, %struct.crypto_ex_data_st, %struct.evp_keymgmt_st*, i8*, i64, %struct.stack_st_OP_CACHE_ELEM*, i64, %struct.anon }
%struct.evp_pkey_asn1_method_st = type opaque
%struct.engine_st = type opaque
%union.legacy_pkey_st = type { i8* }
%struct.stack_st_X509_ATTRIBUTE = type opaque
%struct.crypto_ex_data_st = type { %struct.ossl_lib_ctx_st*, %struct.stack_st_void* }
%struct.ossl_lib_ctx_st = type opaque
%struct.stack_st_void = type opaque
%struct.stack_st_OP_CACHE_ELEM = type opaque
%struct.anon = type { i32, i32, i32 }
%struct.evp_keymgmt_util_try_import_data_st = type { %struct.evp_keymgmt_st*, i8*, i32 }
%struct.OP_CACHE_ELEM = type { %struct.evp_keymgmt_st*, i8* }
%struct.stack_st = type opaque

@.str = private unnamed_addr constant [25 x i8] c"crypto/evp/keymgmt_lib.c\00", align 1
@__func__.evp_keymgmt_util_try_import = private unnamed_addr constant [28 x i8] c"evp_keymgmt_util_try_import\00", align 1
@__func__.evp_keymgmt_util_assign_pkey = private unnamed_addr constant [29 x i8] c"evp_keymgmt_util_assign_pkey\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"bits\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"security-bits\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"max-size\00", align 1
@__func__.evp_keymgmt_util_match = private unnamed_addr constant [23 x i8] c"evp_keymgmt_util_match\00", align 1
@__func__.evp_keymgmt_util_copy = private unnamed_addr constant [22 x i8] c"evp_keymgmt_util_copy\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"default-digest\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"mandatory-digest\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"UNDEF\00", align 1

; Function Attrs: noinline nounwind uwtable
define i32 @evp_keymgmt_util_try_import(%struct.ossl_param_st* noundef %params, i8* nocapture noundef %arg) #0 {
entry:
  %keydata = getelementptr inbounds i8, i8* %arg, i64 8
  %0 = bitcast i8* %keydata to i8**
  %1 = load i8*, i8** %0, align 8, !tbaa !4
  %cmp = icmp eq i8* %1, null
  br i1 %cmp, label %if.then, label %if.end4

if.then:                                          ; preds = %entry
  %keymgmt = bitcast i8* %arg to %struct.evp_keymgmt_st**
  %2 = load %struct.evp_keymgmt_st*, %struct.evp_keymgmt_st** %keymgmt, align 8, !tbaa !10
  %call = tail call i8* @evp_keymgmt_newdata(%struct.evp_keymgmt_st* noundef %2) #5
  store i8* %call, i8** %0, align 8, !tbaa !4
  %cmp2 = icmp eq i8* %call, null
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.then
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 37, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.evp_keymgmt_util_try_import, i64 0, i64 0)) #5
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 6, i32 noundef 786688, i8* noundef null) #5
  br label %cleanup

if.end4:                                          ; preds = %if.then, %entry
  %3 = phi i8* [ %call, %if.then ], [ %1, %entry ]
  %key = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %params, i64 0, i32 0
  %4 = load i8*, i8** %key, align 8, !tbaa !11
  %cmp5 = icmp eq i8* %4, null
  br i1 %cmp5, label %cleanup, label %if.end7

if.end7:                                          ; preds = %if.end4
  %keymgmt8 = bitcast i8* %arg to %struct.evp_keymgmt_st**
  %5 = load %struct.evp_keymgmt_st*, %struct.evp_keymgmt_st** %keymgmt8, align 8, !tbaa !10
  %selection = getelementptr inbounds i8, i8* %arg, i64 16
  %6 = bitcast i8* %selection to i32*
  %7 = load i32, i32* %6, align 8, !tbaa !14
  %call10 = tail call i32 @evp_keymgmt_import(%struct.evp_keymgmt_st* noundef %5, i8* noundef nonnull %3, i32 noundef %7, %struct.ossl_param_st* noundef nonnull %params) #5
  %tobool.not = icmp ne i32 %call10, 0
  %cmp.not = xor i1 %cmp, true
  %brmerge = select i1 %tobool.not, i1 true, i1 %cmp.not
  %.mux = zext i1 %tobool.not to i32
  br i1 %brmerge, label %cleanup, label %if.then14

if.then14:                                        ; preds = %if.end7
  %8 = load %struct.evp_keymgmt_st*, %struct.evp_keymgmt_st** %keymgmt8, align 8, !tbaa !10
  %9 = load i8*, i8** %0, align 8, !tbaa !4
  tail call void @evp_keymgmt_freedata(%struct.evp_keymgmt_st* noundef %8, i8* noundef %9) #5
  store i8* null, i8** %0, align 8, !tbaa !4
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %if.then14, %if.end4, %if.then3
  %retval.0 = phi i32 [ 0, %if.then3 ], [ 1, %if.end4 ], [ %.mux, %if.end7 ], [ 0, %if.then14 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

declare i8* @evp_keymgmt_newdata(%struct.evp_keymgmt_st* noundef) local_unnamed_addr #2

declare void @ERR_new() local_unnamed_addr #2

declare void @ERR_set_debug(i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #2

declare void @ERR_set_error(i32 noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #2

declare i32 @evp_keymgmt_import(%struct.evp_keymgmt_st* noundef, i8* noundef, i32 noundef, %struct.ossl_param_st* noundef) local_unnamed_addr #2

declare void @evp_keymgmt_freedata(%struct.evp_keymgmt_st* noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: noinline nounwind uwtable
define i32 @evp_keymgmt_util_assign_pkey(%struct.evp_pkey_st* noundef %pkey, %struct.evp_keymgmt_st* noundef %keymgmt, i8* noundef %keydata) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.evp_pkey_st* %pkey, null
  %cmp1 = icmp eq %struct.evp_keymgmt_st* %keymgmt, null
  %or.cond = or i1 %cmp, %cmp1
  %cmp3 = icmp eq i8* %keydata, null
  %or.cond6 = or i1 %or.cond, %cmp3
  br i1 %or.cond6, label %if.then, label %lor.lhs.false4

lor.lhs.false4:                                   ; preds = %entry
  %call = tail call i32 @EVP_PKEY_set_type_by_keymgmt(%struct.evp_pkey_st* noundef nonnull %pkey, %struct.evp_keymgmt_st* noundef nonnull %keymgmt) #5
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false4, %entry
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 65, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.evp_keymgmt_util_assign_pkey, i64 0, i64 0)) #5
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 6, i32 noundef 786691, i8* noundef null) #5
  br label %return

if.end:                                           ; preds = %lor.lhs.false4
  %keydata5 = getelementptr inbounds %struct.evp_pkey_st, %struct.evp_pkey_st* %pkey, i64 0, i32 14
  store i8* %keydata, i8** %keydata5, align 8, !tbaa !15
  tail call void @evp_keymgmt_util_cache_keyinfo(%struct.evp_pkey_st* noundef nonnull %pkey) #6
  br label %return

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 1, %if.end ]
  ret i32 %retval.0
}

declare i32 @EVP_PKEY_set_type_by_keymgmt(%struct.evp_pkey_st* noundef, %struct.evp_keymgmt_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define void @evp_keymgmt_util_cache_keyinfo(%struct.evp_pkey_st* nocapture noundef %pk) local_unnamed_addr #0 {
entry:
  %bits = alloca i32, align 4
  %security_bits = alloca i32, align 4
  %size = alloca i32, align 4
  %params = alloca [4 x %struct.ossl_param_st], align 16
  %tmp2 = alloca %struct.ossl_param_st, align 8
  %tmp4 = alloca %struct.ossl_param_st, align 8
  %tmp6 = alloca %struct.ossl_param_st, align 8
  %keydata = getelementptr inbounds %struct.evp_pkey_st, %struct.evp_pkey_st* %pk, i64 0, i32 14
  %0 = load i8*, i8** %keydata, align 8, !tbaa !15
  %cmp.not = icmp eq i8* %0, null
  br i1 %cmp.not, label %if.end14, label %if.then

if.then:                                          ; preds = %entry
  %1 = bitcast i32* %bits to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %1) #7
  store i32 0, i32* %bits, align 4, !tbaa !19
  %2 = bitcast i32* %security_bits to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %2) #7
  store i32 0, i32* %security_bits, align 4, !tbaa !19
  %3 = bitcast i32* %size to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %3) #7
  store i32 0, i32* %size, align 4, !tbaa !19
  %4 = bitcast [4 x %struct.ossl_param_st]* %params to i8*
  call void @llvm.lifetime.start.p0i8(i64 160, i8* nonnull %4) #7
  %arrayidx = getelementptr inbounds [4 x %struct.ossl_param_st], [4 x %struct.ossl_param_st]* %params, i64 0, i64 0
  %params20 = getelementptr inbounds [4 x %struct.ossl_param_st], [4 x %struct.ossl_param_st]* %params, i64 0, i64 0
  call void @OSSL_PARAM_construct_int(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %params20, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32* noundef nonnull %bits) #5
  %arrayidx1 = getelementptr inbounds [4 x %struct.ossl_param_st], [4 x %struct.ossl_param_st]* %params, i64 0, i64 1
  %5 = bitcast %struct.ossl_param_st* %tmp2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %5) #7
  call void @OSSL_PARAM_construct_int(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %tmp2, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i32* noundef nonnull %security_bits) #5
  %6 = bitcast %struct.ossl_param_st* %arrayidx1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(40) %6, i8* noundef nonnull align 8 dereferenceable(40) %5, i64 40, i1 false), !tbaa.struct !20
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %5) #7
  %arrayidx3 = getelementptr inbounds [4 x %struct.ossl_param_st], [4 x %struct.ossl_param_st]* %params, i64 0, i64 2
  %7 = bitcast %struct.ossl_param_st* %tmp4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %7) #7
  call void @OSSL_PARAM_construct_int(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %tmp4, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i32* noundef nonnull %size) #5
  %8 = bitcast %struct.ossl_param_st* %arrayidx3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(40) %8, i8* noundef nonnull align 8 dereferenceable(40) %7, i64 40, i1 false), !tbaa.struct !20
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %7) #7
  %arrayidx5 = getelementptr inbounds [4 x %struct.ossl_param_st], [4 x %struct.ossl_param_st]* %params, i64 0, i64 3
  %9 = bitcast %struct.ossl_param_st* %tmp6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %9) #7
  call void @OSSL_PARAM_construct_end(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %tmp6) #5
  %10 = bitcast %struct.ossl_param_st* %arrayidx5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(40) %10, i8* noundef nonnull align 8 dereferenceable(40) %9, i64 40, i1 false), !tbaa.struct !20
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %9) #7
  %keymgmt = getelementptr inbounds %struct.evp_pkey_st, %struct.evp_pkey_st* %pk, i64 0, i32 13
  %11 = load %struct.evp_keymgmt_st*, %struct.evp_keymgmt_st** %keymgmt, align 8, !tbaa !23
  %12 = load i8*, i8** %keydata, align 8, !tbaa !15
  %call = call i32 @evp_keymgmt_get_params(%struct.evp_keymgmt_st* noundef %11, i8* noundef %12, %struct.ossl_param_st* noundef nonnull %arrayidx) #5
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %if.then8

if.then8:                                         ; preds = %if.then
  %13 = load i32, i32* %size, align 4, !tbaa !19
  %size9 = getelementptr inbounds %struct.evp_pkey_st, %struct.evp_pkey_st* %pk, i64 0, i32 18, i32 2
  store i32 %13, i32* %size9, align 8, !tbaa !24
  %14 = load i32, i32* %bits, align 4, !tbaa !19
  %bits11 = getelementptr inbounds %struct.evp_pkey_st, %struct.evp_pkey_st* %pk, i64 0, i32 18, i32 0
  store i32 %14, i32* %bits11, align 8, !tbaa !25
  %15 = load i32, i32* %security_bits, align 4, !tbaa !19
  %security_bits13 = getelementptr inbounds %struct.evp_pkey_st, %struct.evp_pkey_st* %pk, i64 0, i32 18, i32 1
  store i32 %15, i32* %security_bits13, align 4, !tbaa !26
  br label %if.end

if.end:                                           ; preds = %if.then8, %if.then
  call void @llvm.lifetime.end.p0i8(i64 160, i8* nonnull %4) #7
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %3) #7
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2) #7
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %1) #7
  br label %if.end14

if.end14:                                         ; preds = %if.end, %entry
  ret void
}

; Function Attrs: noinline nounwind uwtable
define %struct.evp_pkey_st* @evp_keymgmt_util_make_pkey(%struct.evp_keymgmt_st* noundef %keymgmt, i8* noundef %keydata) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.evp_keymgmt_st* %keymgmt, null
  %cmp1 = icmp eq i8* %keydata, null
  %or.cond = or i1 %cmp, %cmp1
  br i1 %or.cond, label %if.then, label %lor.lhs.false2

lor.lhs.false2:                                   ; preds = %entry
  %call = tail call %struct.evp_pkey_st* @EVP_PKEY_new() #5
  %cmp3 = icmp eq %struct.evp_pkey_st* %call, null
  br i1 %cmp3, label %if.then, label %lor.lhs.false4

lor.lhs.false4:                                   ; preds = %lor.lhs.false2
  %call5 = tail call i32 @evp_keymgmt_util_assign_pkey(%struct.evp_pkey_st* noundef nonnull %call, %struct.evp_keymgmt_st* noundef nonnull %keymgmt, i8* noundef nonnull %keydata) #6
  %tobool.not = icmp eq i32 %call5, 0
  br i1 %tobool.not, label %if.then, label %cleanup

if.then:                                          ; preds = %lor.lhs.false4, %lor.lhs.false2, %entry
  %pkey.0 = phi %struct.evp_pkey_st* [ null, %entry ], [ null, %lor.lhs.false2 ], [ %call, %lor.lhs.false4 ]
  tail call void @EVP_PKEY_free(%struct.evp_pkey_st* noundef %pkey.0) #5
  br label %cleanup

cleanup:                                          ; preds = %lor.lhs.false4, %if.then
  %retval.0 = phi %struct.evp_pkey_st* [ null, %if.then ], [ %call, %lor.lhs.false4 ]
  ret %struct.evp_pkey_st* %retval.0
}

declare %struct.evp_pkey_st* @EVP_PKEY_new() local_unnamed_addr #2

declare void @EVP_PKEY_free(%struct.evp_pkey_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @evp_keymgmt_util_export(%struct.evp_pkey_st* noundef readonly %pk, i32 noundef %selection, i32 (%struct.ossl_param_st*, i8*)* noundef %export_cb, i8* noundef %export_cbarg) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.evp_pkey_st* %pk, null
  %cmp1 = icmp eq i32 (%struct.ossl_param_st*, i8*)* %export_cb, null
  %or.cond = or i1 %cmp, %cmp1
  br i1 %or.cond, label %return, label %if.end

if.end:                                           ; preds = %entry
  %keymgmt = getelementptr inbounds %struct.evp_pkey_st, %struct.evp_pkey_st* %pk, i64 0, i32 13
  %0 = load %struct.evp_keymgmt_st*, %struct.evp_keymgmt_st** %keymgmt, align 8, !tbaa !23
  %keydata = getelementptr inbounds %struct.evp_pkey_st, %struct.evp_pkey_st* %pk, i64 0, i32 14
  %1 = load i8*, i8** %keydata, align 8, !tbaa !15
  %call = tail call i32 @evp_keymgmt_export(%struct.evp_keymgmt_st* noundef %0, i8* noundef %1, i32 noundef %selection, i32 (%struct.ossl_param_st*, i8*)* noundef nonnull %export_cb, i8* noundef %export_cbarg) #5
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %call, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

declare i32 @evp_keymgmt_export(%struct.evp_keymgmt_st* noundef, i8* noundef, i32 noundef, i32 (%struct.ossl_param_st*, i8*)* noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i8* @evp_keymgmt_util_export_to_provider(%struct.evp_pkey_st* noundef %pk, %struct.evp_keymgmt_st* noundef %keymgmt) local_unnamed_addr #0 {
entry:
  %import_data = alloca %struct.evp_keymgmt_util_try_import_data_st, align 8
  %0 = bitcast %struct.evp_keymgmt_util_try_import_data_st* %import_data to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %0) #7
  %cmp = icmp eq %struct.evp_keymgmt_st* %keymgmt, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %keydata = getelementptr inbounds %struct.evp_pkey_st, %struct.evp_pkey_st* %pk, i64 0, i32 14
  %1 = load i8*, i8** %keydata, align 8, !tbaa !15
  %cmp1 = icmp eq i8* %1, null
  br i1 %cmp1, label %cleanup, label %if.end3

if.end3:                                          ; preds = %if.end
  %keymgmt4 = getelementptr inbounds %struct.evp_pkey_st, %struct.evp_pkey_st* %pk, i64 0, i32 13
  %2 = load %struct.evp_keymgmt_st*, %struct.evp_keymgmt_st** %keymgmt4, align 8, !tbaa !23
  %cmp5 = icmp eq %struct.evp_keymgmt_st* %2, %keymgmt
  br i1 %cmp5, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end3
  %name_id = getelementptr inbounds %struct.evp_keymgmt_st, %struct.evp_keymgmt_st* %2, i64 0, i32 1
  %3 = load i32, i32* %name_id, align 4, !tbaa !27
  %name_id7 = getelementptr inbounds %struct.evp_keymgmt_st, %struct.evp_keymgmt_st* %keymgmt, i64 0, i32 1
  %4 = load i32, i32* %name_id7, align 4, !tbaa !27
  %cmp8 = icmp eq i32 %3, %4
  br i1 %cmp8, label %land.lhs.true, label %if.end14

land.lhs.true:                                    ; preds = %lor.lhs.false
  %prov = getelementptr inbounds %struct.evp_keymgmt_st, %struct.evp_keymgmt_st* %2, i64 0, i32 4
  %5 = load %struct.ossl_provider_st*, %struct.ossl_provider_st** %prov, align 8, !tbaa !29
  %prov10 = getelementptr inbounds %struct.evp_keymgmt_st, %struct.evp_keymgmt_st* %keymgmt, i64 0, i32 4
  %6 = load %struct.ossl_provider_st*, %struct.ossl_provider_st** %prov10, align 8, !tbaa !29
  %cmp11 = icmp eq %struct.ossl_provider_st* %5, %6
  br i1 %cmp11, label %cleanup, label %if.end14

if.end14:                                         ; preds = %land.lhs.true, %lor.lhs.false
  %lock = getelementptr inbounds %struct.evp_pkey_st, %struct.evp_pkey_st* %pk, i64 0, i32 8
  %7 = load i8*, i8** %lock, align 8, !tbaa !30
  %call = tail call i32 @CRYPTO_THREAD_read_lock(i8* noundef %7) #5
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %cleanup, label %if.end16

if.end16:                                         ; preds = %if.end14
  %dirty_cnt = getelementptr inbounds %struct.evp_pkey_st, %struct.evp_pkey_st* %pk, i64 0, i32 15
  %8 = load i64, i64* %dirty_cnt, align 8, !tbaa !31
  %dirty_cnt_copy = getelementptr inbounds %struct.evp_pkey_st, %struct.evp_pkey_st* %pk, i64 0, i32 17
  %9 = load i64, i64* %dirty_cnt_copy, align 8, !tbaa !32
  %cmp17 = icmp eq i64 %8, %9
  br i1 %cmp17, label %if.then18, label %if.end29

if.then18:                                        ; preds = %if.end16
  %call19 = tail call %struct.OP_CACHE_ELEM* @evp_keymgmt_util_find_operation_cache(%struct.evp_pkey_st* noundef nonnull %pk, %struct.evp_keymgmt_st* noundef nonnull %keymgmt) #6
  %cmp20.not = icmp eq %struct.OP_CACHE_ELEM* %call19, null
  br i1 %cmp20.not, label %if.end29, label %land.lhs.true21

land.lhs.true21:                                  ; preds = %if.then18
  %keymgmt22 = getelementptr inbounds %struct.OP_CACHE_ELEM, %struct.OP_CACHE_ELEM* %call19, i64 0, i32 0
  %10 = load %struct.evp_keymgmt_st*, %struct.evp_keymgmt_st** %keymgmt22, align 8, !tbaa !33
  %cmp23.not = icmp eq %struct.evp_keymgmt_st* %10, null
  br i1 %cmp23.not, label %if.end29, label %if.then24

if.then24:                                        ; preds = %land.lhs.true21
  %keydata25 = getelementptr inbounds %struct.OP_CACHE_ELEM, %struct.OP_CACHE_ELEM* %call19, i64 0, i32 1
  %11 = load i8*, i8** %keydata25, align 8, !tbaa !35
  %12 = load i8*, i8** %lock, align 8, !tbaa !30
  %call27 = tail call i32 @CRYPTO_THREAD_unlock(i8* noundef %12) #5
  br label %cleanup

if.end29:                                         ; preds = %if.then18, %land.lhs.true21, %if.end16
  %13 = load i8*, i8** %lock, align 8, !tbaa !30
  %call31 = tail call i32 @CRYPTO_THREAD_unlock(i8* noundef %13) #5
  %14 = load %struct.evp_keymgmt_st*, %struct.evp_keymgmt_st** %keymgmt4, align 8, !tbaa !23
  %export = getelementptr inbounds %struct.evp_keymgmt_st, %struct.evp_keymgmt_st* %14, i64 0, i32 26
  %15 = load i32 (i8*, i32, i32 (%struct.ossl_param_st*, i8*)*, i8*)*, i32 (i8*, i32, i32 (%struct.ossl_param_st*, i8*)*, i8*)** %export, align 8, !tbaa !36
  %cmp33 = icmp eq i32 (i8*, i32, i32 (%struct.ossl_param_st*, i8*)*, i8*)* %15, null
  br i1 %cmp33, label %cleanup, label %if.end35

if.end35:                                         ; preds = %if.end29
  %call37 = tail call fastcc i32 @match_type(%struct.evp_keymgmt_st* noundef nonnull %14, %struct.evp_keymgmt_st* noundef nonnull %keymgmt) #6
  %cmp38.not = icmp eq i32 %call37, 0
  br i1 %cmp38.not, label %cleanup, label %if.end40

if.end40:                                         ; preds = %if.end35
  %keydata41 = getelementptr inbounds %struct.evp_keymgmt_util_try_import_data_st, %struct.evp_keymgmt_util_try_import_data_st* %import_data, i64 0, i32 1
  store i8* null, i8** %keydata41, align 8, !tbaa !4
  %keymgmt42 = getelementptr inbounds %struct.evp_keymgmt_util_try_import_data_st, %struct.evp_keymgmt_util_try_import_data_st* %import_data, i64 0, i32 0
  store %struct.evp_keymgmt_st* %keymgmt, %struct.evp_keymgmt_st** %keymgmt42, align 8, !tbaa !10
  %selection = getelementptr inbounds %struct.evp_keymgmt_util_try_import_data_st, %struct.evp_keymgmt_util_try_import_data_st* %import_data, i64 0, i32 2
  store i32 135, i32* %selection, align 8, !tbaa !14
  %call43 = call i32 @evp_keymgmt_util_export(%struct.evp_pkey_st* noundef nonnull %pk, i32 noundef 135, i32 (%struct.ossl_param_st*, i8*)* noundef nonnull @evp_keymgmt_util_try_import, i8* noundef nonnull %0) #6
  %tobool44.not = icmp eq i32 %call43, 0
  br i1 %tobool44.not, label %cleanup, label %if.end46

if.end46:                                         ; preds = %if.end40
  %16 = load i8*, i8** %lock, align 8, !tbaa !30
  %call48 = call i32 @CRYPTO_THREAD_write_lock(i8* noundef %16) #5
  %tobool49.not = icmp eq i32 %call48, 0
  br i1 %tobool49.not, label %if.then50, label %if.end52

if.then50:                                        ; preds = %if.end46
  %17 = load i8*, i8** %keydata41, align 8, !tbaa !4
  call void @evp_keymgmt_freedata(%struct.evp_keymgmt_st* noundef nonnull %keymgmt, i8* noundef %17) #5
  br label %cleanup

if.end52:                                         ; preds = %if.end46
  %call53 = call %struct.OP_CACHE_ELEM* @evp_keymgmt_util_find_operation_cache(%struct.evp_pkey_st* noundef nonnull %pk, %struct.evp_keymgmt_st* noundef nonnull %keymgmt) #6
  %cmp54.not = icmp eq %struct.OP_CACHE_ELEM* %call53, null
  br i1 %cmp54.not, label %if.end64, label %land.lhs.true55

land.lhs.true55:                                  ; preds = %if.end52
  %keydata56 = getelementptr inbounds %struct.OP_CACHE_ELEM, %struct.OP_CACHE_ELEM* %call53, i64 0, i32 1
  %18 = load i8*, i8** %keydata56, align 8, !tbaa !35
  %cmp57.not = icmp eq i8* %18, null
  br i1 %cmp57.not, label %if.end64, label %if.then58

if.then58:                                        ; preds = %land.lhs.true55
  %19 = load i8*, i8** %lock, align 8, !tbaa !30
  %call62 = call i32 @CRYPTO_THREAD_unlock(i8* noundef %19) #5
  %20 = load i8*, i8** %keydata41, align 8, !tbaa !4
  call void @evp_keymgmt_freedata(%struct.evp_keymgmt_st* noundef nonnull %keymgmt, i8* noundef %20) #5
  br label %cleanup

if.end64:                                         ; preds = %land.lhs.true55, %if.end52
  %21 = load i64, i64* %dirty_cnt, align 8, !tbaa !31
  %22 = load i64, i64* %dirty_cnt_copy, align 8, !tbaa !32
  %cmp67.not = icmp eq i64 %21, %22
  br i1 %cmp67.not, label %if.end70, label %if.then68

if.then68:                                        ; preds = %if.end64
  %call69 = call i32 @evp_keymgmt_util_clear_operation_cache(%struct.evp_pkey_st* noundef nonnull %pk, i32 noundef 0) #6
  br label %if.end70

if.end70:                                         ; preds = %if.then68, %if.end64
  %23 = load i8*, i8** %keydata41, align 8, !tbaa !4
  %call72 = call i32 @evp_keymgmt_util_cache_keydata(%struct.evp_pkey_st* noundef nonnull %pk, %struct.evp_keymgmt_st* noundef nonnull %keymgmt, i8* noundef %23) #6
  %tobool73.not = icmp eq i32 %call72, 0
  br i1 %tobool73.not, label %if.then74, label %if.end76

if.then74:                                        ; preds = %if.end70
  %24 = load i8*, i8** %keydata41, align 8, !tbaa !4
  call void @evp_keymgmt_freedata(%struct.evp_keymgmt_st* noundef nonnull %keymgmt, i8* noundef %24) #5
  br label %cleanup

if.end76:                                         ; preds = %if.end70
  %25 = load i64, i64* %dirty_cnt, align 8, !tbaa !31
  store i64 %25, i64* %dirty_cnt_copy, align 8, !tbaa !32
  %26 = load i8*, i8** %lock, align 8, !tbaa !30
  %call80 = call i32 @CRYPTO_THREAD_unlock(i8* noundef %26) #5
  %27 = load i8*, i8** %keydata41, align 8, !tbaa !4
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %land.lhs.true, %if.end40, %if.end35, %if.end29, %if.end14, %if.end, %entry, %if.end76, %if.then74, %if.then58, %if.then50, %if.then24
  %retval.0 = phi i8* [ %11, %if.then24 ], [ %18, %if.then58 ], [ %27, %if.end76 ], [ null, %if.then74 ], [ null, %if.then50 ], [ null, %entry ], [ null, %if.end ], [ null, %if.end14 ], [ null, %if.end29 ], [ null, %if.end35 ], [ null, %if.end40 ], [ %1, %land.lhs.true ], [ %1, %if.end3 ]
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %0) #7
  ret i8* %retval.0
}

declare i32 @CRYPTO_THREAD_read_lock(i8* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define %struct.OP_CACHE_ELEM* @evp_keymgmt_util_find_operation_cache(%struct.evp_pkey_st* nocapture noundef readonly %pk, %struct.evp_keymgmt_st* noundef readnone %keymgmt) local_unnamed_addr #0 {
entry:
  %operation_cache = getelementptr inbounds %struct.evp_pkey_st, %struct.evp_pkey_st* %pk, i64 0, i32 16
  %0 = load %struct.stack_st_OP_CACHE_ELEM*, %struct.stack_st_OP_CACHE_ELEM** %operation_cache, align 8, !tbaa !37
  %call = tail call fastcc i32 @sk_OP_CACHE_ELEM_num(%struct.stack_st_OP_CACHE_ELEM* noundef %0) #6
  %cmp14 = icmp sgt i32 %call, 0
  br i1 %cmp14, label %for.body, label %cleanup

for.cond:                                         ; preds = %for.body
  %exitcond.not = icmp eq i32 %inc, %call
  br i1 %exitcond.not, label %cleanup, label %for.body, !llvm.loop !38

for.body:                                         ; preds = %entry, %for.cond
  %i.015 = phi i32 [ %inc, %for.cond ], [ 0, %entry ]
  %1 = load %struct.stack_st_OP_CACHE_ELEM*, %struct.stack_st_OP_CACHE_ELEM** %operation_cache, align 8, !tbaa !37
  %call2 = tail call fastcc %struct.OP_CACHE_ELEM* @sk_OP_CACHE_ELEM_value(%struct.stack_st_OP_CACHE_ELEM* noundef %1, i32 noundef %i.015) #6
  %keymgmt3 = getelementptr inbounds %struct.OP_CACHE_ELEM, %struct.OP_CACHE_ELEM* %call2, i64 0, i32 0
  %2 = load %struct.evp_keymgmt_st*, %struct.evp_keymgmt_st** %keymgmt3, align 8, !tbaa !33
  %cmp4 = icmp eq %struct.evp_keymgmt_st* %2, %keymgmt
  %inc = add nuw nsw i32 %i.015, 1
  br i1 %cmp4, label %cleanup, label %for.cond

cleanup:                                          ; preds = %for.body, %for.cond, %entry
  %retval.0 = phi %struct.OP_CACHE_ELEM* [ null, %entry ], [ null, %for.cond ], [ %call2, %for.body ]
  ret %struct.OP_CACHE_ELEM* %retval.0
}

declare i32 @CRYPTO_THREAD_unlock(i8* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @match_type(%struct.evp_keymgmt_st* noundef %keymgmt1, %struct.evp_keymgmt_st* noundef %keymgmt2) unnamed_addr #0 {
entry:
  %call = tail call i8* @EVP_KEYMGMT_get0_name(%struct.evp_keymgmt_st* noundef %keymgmt2) #5
  %call1 = tail call i32 @EVP_KEYMGMT_is_a(%struct.evp_keymgmt_st* noundef %keymgmt1, i8* noundef %call) #5
  ret i32 %call1
}

declare i32 @CRYPTO_THREAD_write_lock(i8* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @evp_keymgmt_util_clear_operation_cache(%struct.evp_pkey_st* noundef %pk, i32 noundef %locking) local_unnamed_addr #0 {
entry:
  %cmp.not = icmp eq %struct.evp_pkey_st* %pk, null
  br i1 %cmp.not, label %return, label %if.then

if.then:                                          ; preds = %entry
  %tobool.not = icmp eq i32 %locking, 0
  br i1 %tobool.not, label %if.end15.critedge, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.then
  %lock = getelementptr inbounds %struct.evp_pkey_st, %struct.evp_pkey_st* %pk, i64 0, i32 8
  %0 = load i8*, i8** %lock, align 8, !tbaa !30
  %cmp1.not = icmp eq i8* %0, null
  br i1 %cmp1.not, label %land.lhs.true8, label %land.lhs.true2

land.lhs.true2:                                   ; preds = %land.lhs.true
  %call = tail call i32 @CRYPTO_THREAD_write_lock(i8* noundef nonnull %0) #5
  %tobool4.not = icmp eq i32 %call, 0
  br i1 %tobool4.not, label %return, label %land.lhs.true8

land.lhs.true8:                                   ; preds = %land.lhs.true, %land.lhs.true2
  %operation_cache = getelementptr inbounds %struct.evp_pkey_st, %struct.evp_pkey_st* %pk, i64 0, i32 16
  %1 = load %struct.stack_st_OP_CACHE_ELEM*, %struct.stack_st_OP_CACHE_ELEM** %operation_cache, align 8, !tbaa !37
  tail call fastcc void @sk_OP_CACHE_ELEM_pop_free(%struct.stack_st_OP_CACHE_ELEM* noundef %1) #6
  store %struct.stack_st_OP_CACHE_ELEM* null, %struct.stack_st_OP_CACHE_ELEM** %operation_cache, align 8, !tbaa !37
  %2 = load i8*, i8** %lock, align 8, !tbaa !30
  %cmp10.not = icmp eq i8* %2, null
  br i1 %cmp10.not, label %return, label %if.then11

if.then11:                                        ; preds = %land.lhs.true8
  %call13 = tail call i32 @CRYPTO_THREAD_unlock(i8* noundef nonnull %2) #5
  br label %return

if.end15.critedge:                                ; preds = %if.then
  %operation_cache.c = getelementptr inbounds %struct.evp_pkey_st, %struct.evp_pkey_st* %pk, i64 0, i32 16
  %3 = load %struct.stack_st_OP_CACHE_ELEM*, %struct.stack_st_OP_CACHE_ELEM** %operation_cache.c, align 8, !tbaa !37
  tail call fastcc void @sk_OP_CACHE_ELEM_pop_free(%struct.stack_st_OP_CACHE_ELEM* noundef %3) #6
  store %struct.stack_st_OP_CACHE_ELEM* null, %struct.stack_st_OP_CACHE_ELEM** %operation_cache.c, align 8, !tbaa !37
  br label %return

return:                                           ; preds = %entry, %if.then11, %land.lhs.true8, %if.end15.critedge, %land.lhs.true2
  %retval.0 = phi i32 [ 0, %land.lhs.true2 ], [ 1, %if.end15.critedge ], [ 1, %land.lhs.true8 ], [ 1, %if.then11 ], [ 1, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @evp_keymgmt_util_cache_keydata(%struct.evp_pkey_st* nocapture noundef %pk, %struct.evp_keymgmt_st* noundef %keymgmt, i8* noundef %keydata) local_unnamed_addr #0 {
entry:
  %cmp.not = icmp eq i8* %keydata, null
  br i1 %cmp.not, label %cleanup, label %if.then

if.then:                                          ; preds = %entry
  %operation_cache = getelementptr inbounds %struct.evp_pkey_st, %struct.evp_pkey_st* %pk, i64 0, i32 16
  %0 = load %struct.stack_st_OP_CACHE_ELEM*, %struct.stack_st_OP_CACHE_ELEM** %operation_cache, align 8, !tbaa !37
  %cmp1 = icmp eq %struct.stack_st_OP_CACHE_ELEM* %0, null
  br i1 %cmp1, label %if.then2, label %if.end7

if.then2:                                         ; preds = %if.then
  %call = tail call fastcc %struct.stack_st_OP_CACHE_ELEM* @sk_OP_CACHE_ELEM_new_null() #6
  store %struct.stack_st_OP_CACHE_ELEM* %call, %struct.stack_st_OP_CACHE_ELEM** %operation_cache, align 8, !tbaa !37
  %cmp5 = icmp eq %struct.stack_st_OP_CACHE_ELEM* %call, null
  br i1 %cmp5, label %cleanup, label %if.end7

if.end7:                                          ; preds = %if.then2, %if.then
  %call8 = tail call i8* @CRYPTO_malloc(i64 noundef 16, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 263) #5
  %1 = bitcast i8* %call8 to %struct.OP_CACHE_ELEM*
  %cmp9 = icmp eq i8* %call8, null
  br i1 %cmp9, label %cleanup, label %if.end11

if.end11:                                         ; preds = %if.end7
  %keydata12 = getelementptr inbounds i8, i8* %call8, i64 8
  %2 = bitcast i8* %keydata12 to i8**
  store i8* %keydata, i8** %2, align 8, !tbaa !35
  %keymgmt13 = bitcast i8* %call8 to %struct.evp_keymgmt_st**
  store %struct.evp_keymgmt_st* %keymgmt, %struct.evp_keymgmt_st** %keymgmt13, align 8, !tbaa !33
  %call14 = tail call i32 @EVP_KEYMGMT_up_ref(%struct.evp_keymgmt_st* noundef %keymgmt) #5
  %tobool.not = icmp eq i32 %call14, 0
  br i1 %tobool.not, label %cleanup.sink.split, label %if.end16

if.end16:                                         ; preds = %if.end11
  %3 = load %struct.stack_st_OP_CACHE_ELEM*, %struct.stack_st_OP_CACHE_ELEM** %operation_cache, align 8, !tbaa !37
  %call18 = tail call fastcc i32 @sk_OP_CACHE_ELEM_push(%struct.stack_st_OP_CACHE_ELEM* noundef %3, %struct.OP_CACHE_ELEM* noundef nonnull %1) #6
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.then20, label %cleanup

if.then20:                                        ; preds = %if.end16
  tail call void @EVP_KEYMGMT_free(%struct.evp_keymgmt_st* noundef %keymgmt) #5
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end11, %if.then20
  %.sink = phi i32 [ 276, %if.then20 ], [ 270, %if.end11 ]
  tail call void @CRYPTO_free(i8* noundef nonnull %call8, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef %.sink) #5
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry, %if.end16, %if.end7, %if.then2
  %retval.0 = phi i32 [ 0, %if.then2 ], [ 0, %if.end7 ], [ 1, %if.end16 ], [ 1, %entry ], [ 0, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @sk_OP_CACHE_ELEM_pop_free(%struct.stack_st_OP_CACHE_ELEM* noundef %sk) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.stack_st_OP_CACHE_ELEM* %sk to %struct.stack_st*
  tail call void @OPENSSL_sk_pop_free(%struct.stack_st* noundef %0, void (i8*)* noundef bitcast (void (%struct.OP_CACHE_ELEM*)* @op_cache_free to void (i8*)*)) #5
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @op_cache_free(%struct.OP_CACHE_ELEM* noundef %e) #0 {
entry:
  %keymgmt = getelementptr inbounds %struct.OP_CACHE_ELEM, %struct.OP_CACHE_ELEM* %e, i64 0, i32 0
  %0 = load %struct.evp_keymgmt_st*, %struct.evp_keymgmt_st** %keymgmt, align 8, !tbaa !33
  %keydata = getelementptr inbounds %struct.OP_CACHE_ELEM, %struct.OP_CACHE_ELEM* %e, i64 0, i32 1
  %1 = load i8*, i8** %keydata, align 8, !tbaa !35
  tail call void @evp_keymgmt_freedata(%struct.evp_keymgmt_st* noundef %0, i8* noundef %1) #5
  %2 = load %struct.evp_keymgmt_st*, %struct.evp_keymgmt_st** %keymgmt, align 8, !tbaa !33
  tail call void @EVP_KEYMGMT_free(%struct.evp_keymgmt_st* noundef %2) #5
  %3 = bitcast %struct.OP_CACHE_ELEM* %e to i8*
  tail call void @CRYPTO_free(i8* noundef %3, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 216) #5
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @sk_OP_CACHE_ELEM_num(%struct.stack_st_OP_CACHE_ELEM* noundef %sk) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.stack_st_OP_CACHE_ELEM* %sk to %struct.stack_st*
  %call = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %0) #5
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.OP_CACHE_ELEM* @sk_OP_CACHE_ELEM_value(%struct.stack_st_OP_CACHE_ELEM* noundef %sk, i32 noundef %idx) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.stack_st_OP_CACHE_ELEM* %sk to %struct.stack_st*
  %call = tail call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %0, i32 noundef %idx) #5
  %1 = bitcast i8* %call to %struct.OP_CACHE_ELEM*
  ret %struct.OP_CACHE_ELEM* %1
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.stack_st_OP_CACHE_ELEM* @sk_OP_CACHE_ELEM_new_null() unnamed_addr #0 {
entry:
  %call = tail call %struct.stack_st* @OPENSSL_sk_new_null() #5
  %0 = bitcast %struct.stack_st* %call to %struct.stack_st_OP_CACHE_ELEM*
  ret %struct.stack_st_OP_CACHE_ELEM* %0
}

declare i8* @CRYPTO_malloc(i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare i32 @EVP_KEYMGMT_up_ref(%struct.evp_keymgmt_st* noundef) local_unnamed_addr #2

declare void @CRYPTO_free(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @sk_OP_CACHE_ELEM_push(%struct.stack_st_OP_CACHE_ELEM* noundef %sk, %struct.OP_CACHE_ELEM* noundef %ptr) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.stack_st_OP_CACHE_ELEM* %sk to %struct.stack_st*
  %1 = bitcast %struct.OP_CACHE_ELEM* %ptr to i8*
  %call = tail call i32 @OPENSSL_sk_push(%struct.stack_st* noundef %0, i8* noundef %1) #5
  ret i32 %call
}

declare void @EVP_KEYMGMT_free(%struct.evp_keymgmt_st* noundef) local_unnamed_addr #2

declare void @OSSL_PARAM_construct_int(%struct.ossl_param_st* sret(%struct.ossl_param_st) align 8, i8* noundef, i32* noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

declare void @OSSL_PARAM_construct_end(%struct.ossl_param_st* sret(%struct.ossl_param_st) align 8) local_unnamed_addr #2

declare i32 @evp_keymgmt_get_params(%struct.evp_keymgmt_st* noundef, i8* noundef, %struct.ossl_param_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i8* @evp_keymgmt_util_fromdata(%struct.evp_pkey_st* noundef %target, %struct.evp_keymgmt_st* noundef %keymgmt, i32 noundef %selection, %struct.ossl_param_st* noundef %params) local_unnamed_addr #0 {
entry:
  %call = tail call i8* @evp_keymgmt_newdata(%struct.evp_keymgmt_st* noundef %keymgmt) #5
  %cmp = icmp eq i8* %call, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %call1 = tail call i32 @evp_keymgmt_import(%struct.evp_keymgmt_st* noundef %keymgmt, i8* noundef nonnull %call, i32 noundef %selection, %struct.ossl_param_st* noundef %params) #5
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.then, label %lor.lhs.false2

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %call3 = tail call i32 @evp_keymgmt_util_assign_pkey(%struct.evp_pkey_st* noundef %target, %struct.evp_keymgmt_st* noundef %keymgmt, i8* noundef nonnull %call) #6
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false2, %lor.lhs.false, %entry
  tail call void @evp_keymgmt_freedata(%struct.evp_keymgmt_st* noundef %keymgmt, i8* noundef %call) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false2
  %keydata.0 = phi i8* [ null, %if.then ], [ %call, %lor.lhs.false2 ]
  ret i8* %keydata.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @evp_keymgmt_util_has(%struct.evp_pkey_st* nocapture noundef readonly %pk, i32 noundef %selection) local_unnamed_addr #0 {
entry:
  %keymgmt = getelementptr inbounds %struct.evp_pkey_st, %struct.evp_pkey_st* %pk, i64 0, i32 13
  %0 = load %struct.evp_keymgmt_st*, %struct.evp_keymgmt_st** %keymgmt, align 8, !tbaa !23
  %cmp = icmp eq %struct.evp_keymgmt_st* %0, null
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %keydata = getelementptr inbounds %struct.evp_pkey_st, %struct.evp_pkey_st* %pk, i64 0, i32 14
  %1 = load i8*, i8** %keydata, align 8, !tbaa !15
  %call = tail call i32 @evp_keymgmt_has(%struct.evp_keymgmt_st* noundef nonnull %0, i8* noundef %1, i32 noundef %selection) #5
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %call, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

declare i32 @evp_keymgmt_has(%struct.evp_keymgmt_st* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @evp_keymgmt_util_match(%struct.evp_pkey_st* noundef %pk1, %struct.evp_pkey_st* noundef %pk2, i32 noundef %selection) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.evp_pkey_st* %pk1, null
  %cmp1 = icmp eq %struct.evp_pkey_st* %pk2, null
  %or.cond = or i1 %cmp, %cmp1
  br i1 %or.cond, label %if.then, label %if.end5

if.then:                                          ; preds = %entry
  %or.cond74 = and i1 %cmp, %cmp1
  %. = zext i1 %or.cond74 to i32
  br label %cleanup70

if.end5:                                          ; preds = %entry
  %keymgmt = getelementptr inbounds %struct.evp_pkey_st, %struct.evp_pkey_st* %pk1, i64 0, i32 13
  %0 = load %struct.evp_keymgmt_st*, %struct.evp_keymgmt_st** %keymgmt, align 8, !tbaa !23
  %keydata = getelementptr inbounds %struct.evp_pkey_st, %struct.evp_pkey_st* %pk1, i64 0, i32 14
  %1 = load i8*, i8** %keydata, align 8, !tbaa !15
  %keymgmt6 = getelementptr inbounds %struct.evp_pkey_st, %struct.evp_pkey_st* %pk2, i64 0, i32 13
  %2 = load %struct.evp_keymgmt_st*, %struct.evp_keymgmt_st** %keymgmt6, align 8, !tbaa !23
  %keydata7 = getelementptr inbounds %struct.evp_pkey_st, %struct.evp_pkey_st* %pk2, i64 0, i32 14
  %3 = load i8*, i8** %keydata7, align 8, !tbaa !15
  %cmp8.not = icmp eq %struct.evp_keymgmt_st* %0, %2
  br i1 %cmp8.not, label %if.end54, label %if.then9

if.then9:                                         ; preds = %if.end5
  %cmp10 = icmp ne %struct.evp_keymgmt_st* %0, null
  %cmp12 = icmp ne %struct.evp_keymgmt_st* %2, null
  %or.cond75 = select i1 %cmp10, i1 %cmp12, i1 false
  br i1 %or.cond75, label %land.lhs.true13, label %if.end15

land.lhs.true13:                                  ; preds = %if.then9
  %call = tail call fastcc i32 @match_type(%struct.evp_keymgmt_st* noundef nonnull %0, %struct.evp_keymgmt_st* noundef nonnull %2) #6
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %cleanup, label %if.end15

if.end15:                                         ; preds = %land.lhs.true13, %if.then9
  br i1 %cmp12, label %land.lhs.true17, label %if.end50

land.lhs.true17:                                  ; preds = %if.end15
  %match = getelementptr inbounds %struct.evp_keymgmt_st, %struct.evp_keymgmt_st* %2, i64 0, i32 23
  %4 = load i32 (i8*, i8*, i32)*, i32 (i8*, i8*, i32)** %match, align 8, !tbaa !40
  %cmp18.not = icmp eq i32 (i8*, i8*, i32)* %4, null
  br i1 %cmp18.not, label %if.end50, label %if.then19

if.then19:                                        ; preds = %land.lhs.true17
  %cmp20.not = icmp eq i8* %1, null
  br i1 %cmp20.not, label %if.end54, label %if.end28

if.end28:                                         ; preds = %if.then19
  %call22 = tail call i8* @evp_keymgmt_util_export_to_provider(%struct.evp_pkey_st* noundef nonnull %pk1, %struct.evp_keymgmt_st* noundef nonnull %2) #6
  %cmp23.not = icmp eq i8* %call22, null
  %spec.select = select i1 %cmp23.not, %struct.evp_keymgmt_st* %0, %struct.evp_keymgmt_st* %2
  %spec.select121 = select i1 %cmp23.not, i8* %1, i8* %call22
  %cmp31 = icmp ne %struct.evp_keymgmt_st* %spec.select, null
  %or.cond76 = select i1 %cmp23.not, i1 %cmp31, i1 false
  br i1 %or.cond76, label %land.lhs.true33, label %if.end50

land.lhs.true33:                                  ; preds = %if.end28
  %match34 = getelementptr inbounds %struct.evp_keymgmt_st, %struct.evp_keymgmt_st* %spec.select, i64 0, i32 23
  %5 = load i32 (i8*, i8*, i32)*, i32 (i8*, i8*, i32)** %match34, align 8, !tbaa !40
  %cmp35.not = icmp eq i32 (i8*, i8*, i32)* %5, null
  br i1 %cmp35.not, label %if.end50, label %if.then37

if.then37:                                        ; preds = %land.lhs.true33
  %cmp39.not = icmp eq i8* %3, null
  br i1 %cmp39.not, label %cleanup70, label %if.end45

if.end45:                                         ; preds = %if.then37
  %call42 = tail call i8* @evp_keymgmt_util_export_to_provider(%struct.evp_pkey_st* noundef nonnull %pk2, %struct.evp_keymgmt_st* noundef nonnull %spec.select) #6
  %cmp43 = icmp eq i8* %call42, null
  br i1 %cmp43, label %if.end50, label %if.end61

cleanup:                                          ; preds = %land.lhs.true13
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 378, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.evp_keymgmt_util_match, i64 0, i64 0)) #5
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 6, i32 noundef 101, i8* noundef null) #5
  br label %cleanup70

if.end50:                                         ; preds = %if.end15, %land.lhs.true17, %if.end45, %if.end28, %land.lhs.true33
  %keymgmt1.3 = phi %struct.evp_keymgmt_st* [ %spec.select, %if.end45 ], [ %spec.select, %if.end28 ], [ %spec.select, %land.lhs.true33 ], [ %0, %land.lhs.true17 ], [ %0, %if.end15 ]
  %keydata1.3 = phi i8* [ %spec.select121, %if.end45 ], [ %spec.select121, %if.end28 ], [ %spec.select121, %land.lhs.true33 ], [ %1, %land.lhs.true17 ], [ %1, %if.end15 ]
  %cmp51.not = icmp eq %struct.evp_keymgmt_st* %keymgmt1.3, %2
  br i1 %cmp51.not, label %if.end54, label %cleanup70

if.end54:                                         ; preds = %if.end5, %if.then19, %if.end50
  %keydata1.3161 = phi i8* [ %keydata1.3, %if.end50 ], [ null, %if.then19 ], [ %1, %if.end5 ]
  %keymgmt1.3160 = phi %struct.evp_keymgmt_st* [ %keymgmt1.3, %if.end50 ], [ %2, %if.then19 ], [ %0, %if.end5 ]
  %cmp55 = icmp eq i8* %keydata1.3161, null
  %cmp58 = icmp eq i8* %3, null
  %or.cond77 = select i1 %cmp55, i1 %cmp58, i1 false
  br i1 %or.cond77, label %cleanup70, label %if.end61

if.end61:                                         ; preds = %if.end45, %if.end54
  %cmp58173 = phi i1 [ %cmp58, %if.end54 ], [ false, %if.end45 ]
  %cmp55172 = phi i1 [ %cmp55, %if.end54 ], [ false, %if.end45 ]
  %keymgmt1.3160171 = phi %struct.evp_keymgmt_st* [ %keymgmt1.3160, %if.end54 ], [ %spec.select, %if.end45 ]
  %keydata1.3161170 = phi i8* [ %keydata1.3161, %if.end54 ], [ %spec.select121, %if.end45 ]
  %keydata2.3162169 = phi i8* [ %3, %if.end54 ], [ %call42, %if.end45 ]
  %or.cond78 = select i1 %cmp55172, i1 true, i1 %cmp58173
  br i1 %or.cond78, label %cleanup70, label %if.end68

if.end68:                                         ; preds = %if.end61
  %call69 = tail call i32 @evp_keymgmt_match(%struct.evp_keymgmt_st* noundef %keymgmt1.3160171, i8* noundef %keydata1.3161170, i8* noundef %keydata2.3162169, i32 noundef %selection) #5
  br label %cleanup70

cleanup70:                                        ; preds = %if.then37, %cleanup, %if.end61, %if.end54, %if.end50, %if.then, %if.end68
  %retval.1 = phi i32 [ %call69, %if.end68 ], [ -1, %cleanup ], [ %., %if.then ], [ -2, %if.end50 ], [ 1, %if.end54 ], [ 0, %if.end61 ], [ 0, %if.then37 ]
  ret i32 %retval.1
}

declare i32 @evp_keymgmt_match(%struct.evp_keymgmt_st* noundef, i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @evp_keymgmt_util_copy(%struct.evp_pkey_st* noundef %to, %struct.evp_pkey_st* noundef %from, i32 noundef %selection) local_unnamed_addr #0 {
entry:
  %import_data = alloca %struct.evp_keymgmt_util_try_import_data_st, align 8
  %keymgmt = getelementptr inbounds %struct.evp_pkey_st, %struct.evp_pkey_st* %to, i64 0, i32 13
  %0 = load %struct.evp_keymgmt_st*, %struct.evp_keymgmt_st** %keymgmt, align 8, !tbaa !23
  %keydata = getelementptr inbounds %struct.evp_pkey_st, %struct.evp_pkey_st* %to, i64 0, i32 14
  %1 = load i8*, i8** %keydata, align 8, !tbaa !15
  %cmp = icmp eq %struct.evp_pkey_st* %from, null
  br i1 %cmp, label %cleanup42, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %keydata1 = getelementptr inbounds %struct.evp_pkey_st, %struct.evp_pkey_st* %from, i64 0, i32 14
  %2 = load i8*, i8** %keydata1, align 8, !tbaa !15
  %cmp2 = icmp eq i8* %2, null
  br i1 %cmp2, label %cleanup42, label %if.end

if.end:                                           ; preds = %lor.lhs.false
  %cmp3 = icmp eq %struct.evp_keymgmt_st* %0, null
  %keymgmt5 = getelementptr inbounds %struct.evp_pkey_st, %struct.evp_pkey_st* %from, i64 0, i32 13
  %3 = load %struct.evp_keymgmt_st*, %struct.evp_keymgmt_st** %keymgmt5, align 8, !tbaa !23
  br i1 %cmp3, label %land.lhs.true, label %if.end6

if.end6:                                          ; preds = %if.end
  %cmp8 = icmp eq %struct.evp_keymgmt_st* %0, %3
  br i1 %cmp8, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.end, %if.end6
  %to_keymgmt.078 = phi %struct.evp_keymgmt_st* [ %0, %if.end6 ], [ %3, %if.end ]
  %dup = getelementptr inbounds %struct.evp_keymgmt_st, %struct.evp_keymgmt_st* %3, i64 0, i32 28
  %4 = load i8* (i8*, i32)*, i8* (i8*, i32)** %dup, align 8, !tbaa !41
  %cmp9 = icmp ne i8* (i8*, i32)* %4, null
  %cmp11 = icmp eq i8* %1, null
  %or.cond = select i1 %cmp9, i1 %cmp11, i1 false
  br i1 %or.cond, label %if.then12, label %if.else

if.then12:                                        ; preds = %land.lhs.true
  %call = tail call i8* @evp_keymgmt_dup(%struct.evp_keymgmt_st* noundef nonnull %3, i8* noundef nonnull %2, i32 noundef %selection) #5
  %cmp14 = icmp eq i8* %call, null
  br i1 %cmp14, label %cleanup42, label %if.end33

if.else:                                          ; preds = %land.lhs.true, %if.end6
  %to_keymgmt.077 = phi %struct.evp_keymgmt_st* [ %to_keymgmt.078, %land.lhs.true ], [ %0, %if.end6 ]
  %call18 = tail call fastcc i32 @match_type(%struct.evp_keymgmt_st* noundef %to_keymgmt.077, %struct.evp_keymgmt_st* noundef %3) #6
  %tobool.not = icmp eq i32 %call18, 0
  br i1 %tobool.not, label %if.else31, label %if.then19

if.then19:                                        ; preds = %if.else
  %5 = bitcast %struct.evp_keymgmt_util_try_import_data_st* %import_data to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %5) #7
  %keymgmt20 = getelementptr inbounds %struct.evp_keymgmt_util_try_import_data_st, %struct.evp_keymgmt_util_try_import_data_st* %import_data, i64 0, i32 0
  store %struct.evp_keymgmt_st* %to_keymgmt.077, %struct.evp_keymgmt_st** %keymgmt20, align 8, !tbaa !10
  %keydata21 = getelementptr inbounds %struct.evp_keymgmt_util_try_import_data_st, %struct.evp_keymgmt_util_try_import_data_st* %import_data, i64 0, i32 1
  store i8* %1, i8** %keydata21, align 8, !tbaa !4
  %selection22 = getelementptr inbounds %struct.evp_keymgmt_util_try_import_data_st, %struct.evp_keymgmt_util_try_import_data_st* %import_data, i64 0, i32 2
  store i32 %selection, i32* %selection22, align 8, !tbaa !14
  %call23 = call i32 @evp_keymgmt_util_export(%struct.evp_pkey_st* noundef nonnull %from, i32 noundef %selection, i32 (%struct.ossl_param_st*, i8*)* noundef nonnull @evp_keymgmt_util_try_import, i8* noundef nonnull %5) #6
  %tobool24.not = icmp eq i32 %call23, 0
  %cmp27 = icmp eq i8* %1, null
  %6 = load i8*, i8** %keydata21, align 8
  %spec.select = select i1 %cmp27, i8* %6, i8* %1
  %spec.select73 = select i1 %cmp27, i8* %6, i8* null
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %5) #7
  br i1 %tobool24.not, label %cleanup42, label %if.end33

if.else31:                                        ; preds = %if.else
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 481, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.evp_keymgmt_util_copy, i64 0, i64 0)) #5
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 6, i32 noundef 101, i8* noundef null) #5
  br label %cleanup42

if.end33:                                         ; preds = %if.then19, %if.then12
  %to_keymgmt.076 = phi %struct.evp_keymgmt_st* [ %to_keymgmt.078, %if.then12 ], [ %to_keymgmt.077, %if.then19 ]
  %to_keydata.2 = phi i8* [ %call, %if.then12 ], [ %spec.select, %if.then19 ]
  %alloc_keydata.2 = phi i8* [ %call, %if.then12 ], [ %spec.select73, %if.then19 ]
  %7 = load %struct.evp_keymgmt_st*, %struct.evp_keymgmt_st** %keymgmt, align 8, !tbaa !23
  %cmp35 = icmp eq %struct.evp_keymgmt_st* %7, null
  br i1 %cmp35, label %land.lhs.true36, label %if.end40

land.lhs.true36:                                  ; preds = %if.end33
  %call37 = call i32 @EVP_PKEY_set_type_by_keymgmt(%struct.evp_pkey_st* noundef nonnull %to, %struct.evp_keymgmt_st* noundef %to_keymgmt.076) #5
  %tobool38.not = icmp eq i32 %call37, 0
  br i1 %tobool38.not, label %if.then39, label %if.end40

if.then39:                                        ; preds = %land.lhs.true36
  call void @evp_keymgmt_freedata(%struct.evp_keymgmt_st* noundef %to_keymgmt.076, i8* noundef %alloc_keydata.2) #5
  br label %cleanup42

if.end40:                                         ; preds = %land.lhs.true36, %if.end33
  store i8* %to_keydata.2, i8** %keydata, align 8, !tbaa !15
  call void @evp_keymgmt_util_cache_keyinfo(%struct.evp_pkey_st* noundef nonnull %to) #6
  br label %cleanup42

cleanup42:                                        ; preds = %if.then12, %entry, %lor.lhs.false, %if.then19, %if.end40, %if.then39, %if.else31
  %retval.1 = phi i32 [ 1, %if.end40 ], [ 0, %if.then39 ], [ 0, %if.then19 ], [ 0, %if.else31 ], [ 0, %lor.lhs.false ], [ 0, %entry ], [ 0, %if.then12 ]
  ret i32 %retval.1
}

declare i8* @evp_keymgmt_dup(%struct.evp_keymgmt_st* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i8* @evp_keymgmt_util_gen(%struct.evp_pkey_st* noundef %target, %struct.evp_keymgmt_st* noundef %keymgmt, i8* noundef %genctx, i32 (%struct.ossl_param_st*, i8*)* noundef %cb, i8* noundef %cbarg) local_unnamed_addr #0 {
entry:
  %call = tail call i8* @evp_keymgmt_gen(%struct.evp_keymgmt_st* noundef %keymgmt, i8* noundef %genctx, i32 (%struct.ossl_param_st*, i8*)* noundef %cb, i8* noundef %cbarg) #5
  %cmp = icmp eq i8* %call, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %call1 = tail call i32 @evp_keymgmt_util_assign_pkey(%struct.evp_pkey_st* noundef %target, %struct.evp_keymgmt_st* noundef %keymgmt, i8* noundef nonnull %call) #6
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  tail call void @evp_keymgmt_freedata(%struct.evp_keymgmt_st* noundef %keymgmt, i8* noundef %call) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false
  %keydata.0 = phi i8* [ null, %if.then ], [ %call, %lor.lhs.false ]
  ret i8* %keydata.0
}

declare i8* @evp_keymgmt_gen(%struct.evp_keymgmt_st* noundef, i8* noundef, i32 (%struct.ossl_param_st*, i8*)* noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @evp_keymgmt_util_get_deflt_digest_name(%struct.evp_keymgmt_st* noundef %keymgmt, i8* noundef %keydata, i8* noundef %mdname, i64 noundef %mdname_sz) local_unnamed_addr #0 {
entry:
  %params = alloca [3 x %struct.ossl_param_st], align 16
  %mddefault = alloca [100 x i8], align 16
  %mdmandatory = alloca [100 x i8], align 16
  %tmp2 = alloca %struct.ossl_param_st, align 8
  %tmp5 = alloca %struct.ossl_param_st, align 8
  %0 = bitcast [3 x %struct.ossl_param_st]* %params to i8*
  call void @llvm.lifetime.start.p0i8(i64 120, i8* nonnull %0) #7
  %1 = getelementptr inbounds [100 x i8], [100 x i8]* %mddefault, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 100, i8* nonnull %1) #7
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(100) %1, i8 0, i64 100, i1 false)
  %2 = getelementptr inbounds [100 x i8], [100 x i8]* %mdmandatory, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 100, i8* nonnull %2) #7
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(100) %2, i8 0, i64 100, i1 false)
  %arrayidx = getelementptr inbounds [3 x %struct.ossl_param_st], [3 x %struct.ossl_param_st]* %params, i64 0, i64 0
  %params45 = getelementptr inbounds [3 x %struct.ossl_param_st], [3 x %struct.ossl_param_st]* %params, i64 0, i64 0
  call void @OSSL_PARAM_construct_utf8_string(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %params45, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i8* noundef nonnull %1, i64 noundef 100) #5
  %arrayidx1 = getelementptr inbounds [3 x %struct.ossl_param_st], [3 x %struct.ossl_param_st]* %params, i64 0, i64 1
  %3 = bitcast %struct.ossl_param_st* %tmp2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %3) #7
  call void @OSSL_PARAM_construct_utf8_string(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %tmp2, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0), i8* noundef nonnull %2, i64 noundef 100) #5
  %4 = bitcast %struct.ossl_param_st* %arrayidx1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(40) %4, i8* noundef nonnull align 8 dereferenceable(40) %3, i64 40, i1 false), !tbaa.struct !20
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %3) #7
  %arrayidx4 = getelementptr inbounds [3 x %struct.ossl_param_st], [3 x %struct.ossl_param_st]* %params, i64 0, i64 2
  %5 = bitcast %struct.ossl_param_st* %tmp5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %5) #7
  call void @OSSL_PARAM_construct_end(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %tmp5) #5
  %6 = bitcast %struct.ossl_param_st* %arrayidx4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(40) %6, i8* noundef nonnull align 8 dereferenceable(40) %5, i64 40, i1 false), !tbaa.struct !20
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %5) #7
  %call = call i32 @evp_keymgmt_get_params(%struct.evp_keymgmt_st* noundef %keymgmt, i8* noundef %keydata, %struct.ossl_param_st* noundef nonnull %arrayidx) #5
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call8 = call i32 @OSSL_PARAM_modified(%struct.ossl_param_st* noundef nonnull %arrayidx1) #5
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.else15, label %if.then10

if.then10:                                        ; preds = %if.end
  %return_size = getelementptr inbounds [3 x %struct.ossl_param_st], [3 x %struct.ossl_param_st]* %params, i64 0, i64 1, i32 4
  %7 = load i64, i64* %return_size, align 8, !tbaa !42
  br label %if.then30

if.else15:                                        ; preds = %if.end
  %call17 = call i32 @OSSL_PARAM_modified(%struct.ossl_param_st* noundef nonnull %arrayidx) #5
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %cleanup, label %if.then19

if.then19:                                        ; preds = %if.else15
  %return_size21 = getelementptr inbounds [3 x %struct.ossl_param_st], [3 x %struct.ossl_param_st]* %params, i64 0, i64 0, i32 4
  %8 = load i64, i64* %return_size21, align 16, !tbaa !42
  br label %if.then30

if.then30:                                        ; preds = %if.then10, %if.then19
  %.sink46 = phi i64 [ %7, %if.then10 ], [ %8, %if.then19 ]
  %.sink = phi i8* [ %2, %if.then10 ], [ %1, %if.then19 ]
  %rv.0.ph = phi i32 [ 2, %if.then10 ], [ 1, %if.then19 ]
  %cmp = icmp ult i64 %.sink46, 2
  %.arraydecay3 = select i1 %cmp, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i8* %.sink
  %call31 = call i64 @OPENSSL_strlcpy(i8* noundef %mdname, i8* noundef %.arraydecay3, i64 noundef %mdname_sz) #5
  br label %cleanup

cleanup:                                          ; preds = %if.else15, %if.then30, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ %rv.0.ph, %if.then30 ], [ -2, %if.else15 ]
  call void @llvm.lifetime.end.p0i8(i64 100, i8* nonnull %2) #7
  call void @llvm.lifetime.end.p0i8(i64 100, i8* nonnull %1) #7
  call void @llvm.lifetime.end.p0i8(i64 120, i8* nonnull %0) #7
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #4

declare void @OSSL_PARAM_construct_utf8_string(%struct.ossl_param_st* sret(%struct.ossl_param_st) align 8, i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #2

declare i32 @OSSL_PARAM_modified(%struct.ossl_param_st* noundef) local_unnamed_addr #2

declare i64 @OPENSSL_strlcpy(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #2

declare i8* @EVP_KEYMGMT_get0_name(%struct.evp_keymgmt_st* noundef) local_unnamed_addr #2

declare i32 @EVP_KEYMGMT_is_a(%struct.evp_keymgmt_st* noundef, i8* noundef) local_unnamed_addr #2

declare void @OPENSSL_sk_pop_free(%struct.stack_st* noundef, void (i8*)* noundef) local_unnamed_addr #2

declare i32 @OPENSSL_sk_num(%struct.stack_st* noundef) local_unnamed_addr #2

declare i8* @OPENSSL_sk_value(%struct.stack_st* noundef, i32 noundef) local_unnamed_addr #2

declare %struct.stack_st* @OPENSSL_sk_new_null() local_unnamed_addr #2

declare i32 @OPENSSL_sk_push(%struct.stack_st* noundef, i8* noundef) local_unnamed_addr #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #4 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #5 = { nobuiltin nounwind "no-builtins" }
attributes #6 = { nobuiltin "no-builtins" }
attributes #7 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{!"clang version 14.0.0"}
!4 = !{!5, !6, i64 8}
!5 = !{!"evp_keymgmt_util_try_import_data_st", !6, i64 0, !6, i64 8, !9, i64 16}
!6 = !{!"any pointer", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!"int", !7, i64 0}
!10 = !{!5, !6, i64 0}
!11 = !{!12, !6, i64 0}
!12 = !{!"ossl_param_st", !6, i64 0, !9, i64 8, !6, i64 16, !13, i64 24, !13, i64 32}
!13 = !{!"long", !7, i64 0}
!14 = !{!5, !9, i64 16}
!15 = !{!16, !6, i64 104}
!16 = !{!"evp_pkey_st", !9, i64 0, !9, i64 4, !6, i64 8, !6, i64 16, !6, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !6, i64 56, !6, i64 64, !9, i64 72, !9, i64 76, !17, i64 80, !6, i64 96, !6, i64 104, !13, i64 112, !6, i64 120, !13, i64 128, !18, i64 136}
!17 = !{!"crypto_ex_data_st", !6, i64 0, !6, i64 8}
!18 = !{!"", !9, i64 0, !9, i64 4, !9, i64 8}
!19 = !{!9, !9, i64 0}
!20 = !{i64 0, i64 8, !21, i64 8, i64 4, !19, i64 16, i64 8, !21, i64 24, i64 8, !22, i64 32, i64 8, !22}
!21 = !{!6, !6, i64 0}
!22 = !{!13, !13, i64 0}
!23 = !{!16, !6, i64 96}
!24 = !{!16, !9, i64 144}
!25 = !{!16, !9, i64 136}
!26 = !{!16, !9, i64 140}
!27 = !{!28, !9, i64 4}
!28 = !{!"evp_keymgmt_st", !9, i64 0, !9, i64 4, !6, i64 8, !6, i64 16, !6, i64 24, !7, i64 32, !6, i64 40, !6, i64 48, !6, i64 56, !6, i64 64, !6, i64 72, !6, i64 80, !6, i64 88, !6, i64 96, !6, i64 104, !6, i64 112, !6, i64 120, !6, i64 128, !6, i64 136, !6, i64 144, !6, i64 152, !6, i64 160, !6, i64 168, !6, i64 176, !6, i64 184, !6, i64 192, !6, i64 200, !6, i64 208, !6, i64 216}
!29 = !{!28, !6, i64 24}
!30 = !{!16, !6, i64 56}
!31 = !{!16, !13, i64 112}
!32 = !{!16, !13, i64 128}
!33 = !{!34, !6, i64 0}
!34 = !{!"", !6, i64 0, !6, i64 8}
!35 = !{!34, !6, i64 8}
!36 = !{!28, !6, i64 200}
!37 = !{!16, !6, i64 120}
!38 = distinct !{!38, !39}
!39 = !{!"llvm.loop.mustprogress"}
!40 = !{!28, !6, i64 176}
!41 = !{!28, !6, i64 216}
!42 = !{!12, !13, i64 32}
