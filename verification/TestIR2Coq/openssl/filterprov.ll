; ModuleID = 'test/filterprov.c'
source_filename = "test/filterprov.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.filter_prov_globals_st = type { %struct.ossl_lib_ctx_st*, %struct.ossl_provider_st*, [10 x %struct.anon], i32, i32, i64, i32 }
%struct.ossl_lib_ctx_st = type opaque
%struct.ossl_provider_st = type opaque
%struct.anon = type { i32, [6 x %struct.ossl_algorithm_st] }
%struct.ossl_algorithm_st = type { i8*, i8*, %struct.ossl_dispatch_st*, i8* }
%struct.ossl_dispatch_st = type { i32, void ()* }
%struct.ossl_core_handle_st = type opaque
%struct.ossl_param_st = type { i8*, i32, i8*, i64, i64 }

@ourglobals = internal global %struct.filter_prov_globals_st zeroinitializer, align 8
@.str = private unnamed_addr constant [8 x i8] c"default\00", align 1
@filter_dispatch_table = internal constant [7 x %struct.ossl_dispatch_st] [%struct.ossl_dispatch_st { i32 1025, void ()* bitcast (%struct.ossl_param_st* (i8*)* @filter_gettable_params to void ()*) }, %struct.ossl_dispatch_st { i32 1026, void ()* bitcast (i32 (i8*, %struct.ossl_param_st*)* @filter_get_params to void ()*) }, %struct.ossl_dispatch_st { i32 1027, void ()* bitcast (%struct.ossl_algorithm_st* (i8*, i32, i32*)* @filter_query to void ()*) }, %struct.ossl_dispatch_st { i32 1028, void ()* bitcast (void (i8*, i32, %struct.ossl_algorithm_st*)* @filter_unquery to void ()*) }, %struct.ossl_dispatch_st { i32 1030, void ()* bitcast (i32 (i8*, i8*, i32 (%struct.ossl_param_st*, i8*)*, i8*)* @filter_get_capabilities to void ()*) }, %struct.ossl_dispatch_st { i32 1024, void ()* bitcast (void (i8*)* @filter_teardown to void ()*) }, %struct.ossl_dispatch_st zeroinitializer], align 16
@.str.1 = private unnamed_addr constant [18 x i8] c"test/filterprov.c\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c":\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"globs->query_count\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"0\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @filter_provider_init(%struct.ossl_core_handle_st* nocapture noundef readnone %handle, %struct.ossl_dispatch_st* nocapture noundef readnone %in, %struct.ossl_dispatch_st** nocapture noundef writeonly %out, i8** nocapture noundef writeonly %provctx) local_unnamed_addr #0 {
entry:
  %call = tail call i8* @memset(i8* noundef bitcast (%struct.filter_prov_globals_st* @ourglobals to i8*), i32 noundef 0, i64 noundef 2040) #6
  %call1 = tail call %struct.ossl_lib_ctx_st* @OSSL_LIB_CTX_new() #6
  store %struct.ossl_lib_ctx_st* %call1, %struct.ossl_lib_ctx_st** getelementptr inbounds (%struct.filter_prov_globals_st, %struct.filter_prov_globals_st* @ourglobals, i64 0, i32 0), align 8, !tbaa !3
  %cmp = icmp eq %struct.ossl_lib_ctx_st* %call1, null
  br i1 %cmp, label %entry.err_crit_edge, label %if.end

entry.err_crit_edge:                              ; preds = %entry
  %.pre = load %struct.ossl_provider_st*, %struct.ossl_provider_st** getelementptr inbounds (%struct.filter_prov_globals_st, %struct.filter_prov_globals_st* @ourglobals, i64 0, i32 1), align 8, !tbaa !10
  br label %err

if.end:                                           ; preds = %entry
  %call2 = tail call %struct.ossl_provider_st* @OSSL_PROVIDER_load(%struct.ossl_lib_ctx_st* noundef nonnull %call1, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0)) #6
  store %struct.ossl_provider_st* %call2, %struct.ossl_provider_st** getelementptr inbounds (%struct.filter_prov_globals_st, %struct.filter_prov_globals_st* @ourglobals, i64 0, i32 1), align 8, !tbaa !10
  %cmp3 = icmp eq %struct.ossl_provider_st* %call2, null
  br i1 %cmp3, label %err, label %if.end5

if.end5:                                          ; preds = %if.end
  %call6 = tail call i8* @OSSL_PROVIDER_get0_provider_ctx(%struct.ossl_provider_st* noundef nonnull %call2) #6
  store i8* %call6, i8** %provctx, align 8, !tbaa !11
  store %struct.ossl_dispatch_st* getelementptr inbounds ([7 x %struct.ossl_dispatch_st], [7 x %struct.ossl_dispatch_st]* @filter_dispatch_table, i64 0, i64 0), %struct.ossl_dispatch_st** %out, align 8, !tbaa !11
  br label %return

err:                                              ; preds = %entry.err_crit_edge, %if.end
  %0 = phi %struct.ossl_provider_st* [ %.pre, %entry.err_crit_edge ], [ null, %if.end ]
  %call7 = tail call i32 @OSSL_PROVIDER_unload(%struct.ossl_provider_st* noundef %0) #6
  %1 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** getelementptr inbounds (%struct.filter_prov_globals_st, %struct.filter_prov_globals_st* @ourglobals, i64 0, i32 0), align 8, !tbaa !3
  tail call void @OSSL_LIB_CTX_free(%struct.ossl_lib_ctx_st* noundef %1) #6
  br label %return

return:                                           ; preds = %err, %if.end5
  %retval.0 = phi i32 [ 0, %err ], [ 1, %if.end5 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind
declare dso_local i8* @memset(i8* noundef, i32 noundef, i64 noundef) local_unnamed_addr #1

declare dso_local %struct.ossl_lib_ctx_st* @OSSL_LIB_CTX_new() local_unnamed_addr #2

declare dso_local %struct.ossl_provider_st* @OSSL_PROVIDER_load(%struct.ossl_lib_ctx_st* noundef, i8* noundef) local_unnamed_addr #2

declare dso_local i8* @OSSL_PROVIDER_get0_provider_ctx(%struct.ossl_provider_st* noundef) local_unnamed_addr #2

declare dso_local i32 @OSSL_PROVIDER_unload(%struct.ossl_provider_st* noundef) local_unnamed_addr #2

declare dso_local void @OSSL_LIB_CTX_free(%struct.ossl_lib_ctx_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @filter_provider_set_filter(i32 noundef %operation, i8* noundef %filterstr) local_unnamed_addr #0 {
entry:
  %no_cache = alloca i32, align 4
  %0 = bitcast i32* %no_cache to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #7
  store i32 0, i32* %no_cache, align 4, !tbaa !12
  %call1 = tail call i8* @CRYPTO_strdup(i8* noundef %filterstr, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 noundef 170) #6
  %1 = load %struct.ossl_provider_st*, %struct.ossl_provider_st** getelementptr inbounds (%struct.filter_prov_globals_st, %struct.filter_prov_globals_st* @ourglobals, i64 0, i32 1), align 8, !tbaa !10
  %call2 = call %struct.ossl_algorithm_st* @OSSL_PROVIDER_query_operation(%struct.ossl_provider_st* noundef %1, i32 noundef %operation, i32* noundef nonnull %no_cache) #6
  %cmp = icmp eq i8* %call1, null
  %cmp3 = icmp eq %struct.ossl_algorithm_st* %call2, null
  %or.cond = select i1 %cmp, i1 true, i1 %cmp3
  %2 = load i32, i32* getelementptr inbounds (%struct.filter_prov_globals_st, %struct.filter_prov_globals_st* @ourglobals, i64 0, i32 3), align 8
  %cmp6 = icmp sgt i32 %2, 9
  %or.cond118 = select i1 %or.cond, i1 true, i1 %cmp6
  br i1 %or.cond118, label %cleanup66, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  %algorithm_names130 = getelementptr inbounds %struct.ossl_algorithm_st, %struct.ossl_algorithm_st* %call2, i64 0, i32 0
  br label %for.body

for.body:                                         ; preds = %for.cond.preheader, %for.inc53
  %indvars.iv = phi i64 [ 0, %for.cond.preheader ], [ %indvars.iv.next, %for.inc53 ]
  %name.0134 = phi i8* [ %call1, %for.cond.preheader ], [ %add.ptr, %for.inc53 ]
  %call9 = call i8* @strstr(i8* noundef nonnull %name.0134, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)) #8
  %cmp10.not = icmp eq i8* %call9, null
  br i1 %cmp10.not, label %if.end12, label %if.then11

if.then11:                                        ; preds = %for.body
  store i8 0, i8* %call9, align 1, !tbaa !13
  br label %if.end12

if.end12:                                         ; preds = %for.body, %if.then11
  %call13 = call i64 @strlen(i8* noundef nonnull %name.0134) #8
  %3 = load i8*, i8** %algorithm_names130, align 8, !tbaa !14
  %cmp15.not131 = icmp eq i8* %3, null
  br i1 %cmp15.not131, label %cleanup66, label %for.body16

for.body16:                                       ; preds = %if.end12, %for.inc
  %4 = phi i8* [ %7, %for.inc ], [ %3, %if.end12 ]
  %algs.0132 = phi %struct.ossl_algorithm_st* [ %incdec.ptr, %for.inc ], [ %call2, %if.end12 ]
  %call18 = call i8* @strstr(i8* noundef nonnull %4, i8* noundef %name.0134) #8
  %cmp19 = icmp eq i8* %call18, null
  br i1 %cmp19, label %for.inc, label %if.end21

if.end21:                                         ; preds = %for.body16
  %arrayidx = getelementptr inbounds i8, i8* %call18, i64 %call13
  %5 = load i8, i8* %arrayidx, align 1, !tbaa !13
  switch i8 %5, label %for.inc [
    i8 0, label %if.end29
    i8 58, label %if.end29
  ]

if.end29:                                         ; preds = %if.end21, %if.end21
  %cmp31.not = icmp eq i8* %call18, %4
  br i1 %cmp31.not, label %if.end39, label %land.lhs.true33

land.lhs.true33:                                  ; preds = %if.end29
  %arrayidx34 = getelementptr inbounds i8, i8* %call18, i64 -1
  %6 = load i8, i8* %arrayidx34, align 1, !tbaa !13
  %cmp36.not = icmp eq i8 %6, 58
  br i1 %cmp36.not, label %if.end39, label %for.inc

if.end39:                                         ; preds = %land.lhs.true33, %if.end29
  %exitcond = icmp eq i64 %indvars.iv, 5
  br i1 %exitcond, label %cleanup66, label %for.end

for.inc:                                          ; preds = %for.body16, %if.end21, %land.lhs.true33
  %incdec.ptr = getelementptr inbounds %struct.ossl_algorithm_st, %struct.ossl_algorithm_st* %algs.0132, i64 1
  %algorithm_names = getelementptr inbounds %struct.ossl_algorithm_st, %struct.ossl_algorithm_st* %incdec.ptr, i64 0, i32 0
  %7 = load i8*, i8** %algorithm_names, align 8, !tbaa !14
  %cmp15.not = icmp eq i8* %7, null
  br i1 %cmp15.not, label %cleanup66, label %for.body16, !llvm.loop !16

for.end:                                          ; preds = %if.end39
  %algorithm_names.le = getelementptr inbounds %struct.ossl_algorithm_st, %struct.ossl_algorithm_st* %algs.0132, i64 0, i32 0
  %8 = load i32, i32* getelementptr inbounds (%struct.filter_prov_globals_st, %struct.filter_prov_globals_st* @ourglobals, i64 0, i32 3), align 8, !tbaa !18
  %idxprom = sext i32 %8 to i64
  %arrayidx47 = getelementptr inbounds %struct.filter_prov_globals_st, %struct.filter_prov_globals_st* @ourglobals, i64 0, i32 2, i64 %idxprom, i32 1, i64 %indvars.iv
  %9 = bitcast %struct.ossl_algorithm_st* %arrayidx47 to i8*
  %10 = bitcast %struct.ossl_algorithm_st* %algs.0132 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %9, i8* noundef nonnull align 8 dereferenceable(32) %10, i64 32, i1 false), !tbaa.struct !19
  %.pr = load i8*, i8** %algorithm_names.le, align 8, !tbaa !14
  %cmp49 = icmp eq i8* %.pr, null
  br i1 %cmp49, label %cleanup66, label %for.inc53

for.inc53:                                        ; preds = %for.end
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %add.ptr = getelementptr inbounds i8, i8* %call9, i64 1
  br i1 %cmp10.not, label %for.end56, label %for.body, !llvm.loop !20

for.end56:                                        ; preds = %for.inc53
  %11 = load i32, i32* getelementptr inbounds (%struct.filter_prov_globals_st, %struct.filter_prov_globals_st* @ourglobals, i64 0, i32 3), align 8, !tbaa !18
  %idxprom59 = sext i32 %11 to i64
  %operation61 = getelementptr inbounds %struct.filter_prov_globals_st, %struct.filter_prov_globals_st* @ourglobals, i64 0, i32 2, i64 %idxprom59, i32 0
  store i32 %operation, i32* %operation61, align 8, !tbaa !21
  %12 = load i32, i32* %no_cache, align 4, !tbaa !12
  store i32 %12, i32* getelementptr inbounds (%struct.filter_prov_globals_st, %struct.filter_prov_globals_st* @ourglobals, i64 0, i32 4), align 4, !tbaa !23
  %inc64 = add nsw i32 %11, 1
  store i32 %inc64, i32* getelementptr inbounds (%struct.filter_prov_globals_st, %struct.filter_prov_globals_st* @ourglobals, i64 0, i32 3), align 8, !tbaa !18
  br label %cleanup66

cleanup66:                                        ; preds = %for.end, %if.end39, %if.end12, %for.inc, %for.end56, %entry
  %ret.0 = phi i32 [ 0, %entry ], [ 1, %for.end56 ], [ 0, %for.inc ], [ 0, %if.end12 ], [ 0, %if.end39 ], [ 0, %for.end ]
  %13 = load %struct.ossl_provider_st*, %struct.ossl_provider_st** getelementptr inbounds (%struct.filter_prov_globals_st, %struct.filter_prov_globals_st* @ourglobals, i64 0, i32 1), align 8, !tbaa !10
  call void @OSSL_PROVIDER_unquery_operation(%struct.ossl_provider_st* noundef %13, i32 noundef %operation, %struct.ossl_algorithm_st* noundef %call2) #6
  call void @CRYPTO_free(i8* noundef %call1, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 noundef 225) #6
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #7
  ret i32 %ret.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #3

declare dso_local i8* @CRYPTO_strdup(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare dso_local %struct.ossl_algorithm_st* @OSSL_PROVIDER_query_operation(%struct.ossl_provider_st* noundef, i32 noundef, i32* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i8* @strstr(i8* noundef, i8* noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i64 @strlen(i8* noundef) local_unnamed_addr #4

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #3

declare dso_local void @OSSL_PROVIDER_unquery_operation(%struct.ossl_provider_st* noundef, i32 noundef, %struct.ossl_algorithm_st* noundef) local_unnamed_addr #2

declare dso_local void @CRYPTO_free(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @filter_provider_check_clean_finish() local_unnamed_addr #0 {
entry:
  %0 = load i64, i64* getelementptr inbounds (%struct.filter_prov_globals_st, %struct.filter_prov_globals_st* @ourglobals, i64 0, i32 5), align 8, !tbaa !24
  %call1 = tail call i32 @test_ulong_eq(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 noundef 237, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i64 noundef %0, i64 noundef 0) #6
  %tobool.not = icmp ne i32 %call1, 0
  %1 = load i32, i32* getelementptr inbounds (%struct.filter_prov_globals_st, %struct.filter_prov_globals_st* @ourglobals, i64 0, i32 6), align 8
  %tobool2.not = icmp eq i32 %1, 0
  %narrow = select i1 %tobool.not, i1 %tobool2.not, i1 false
  %2 = zext i1 %narrow to i32
  ret i32 %2
}

declare dso_local i32 @test_ulong_eq(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal %struct.ossl_param_st* @filter_gettable_params(i8* nocapture noundef readnone %provctx) #0 {
entry:
  %0 = load %struct.ossl_provider_st*, %struct.ossl_provider_st** getelementptr inbounds (%struct.filter_prov_globals_st, %struct.filter_prov_globals_st* @ourglobals, i64 0, i32 1), align 8, !tbaa !10
  %call1 = tail call %struct.ossl_param_st* @OSSL_PROVIDER_gettable_params(%struct.ossl_provider_st* noundef %0) #6
  ret %struct.ossl_param_st* %call1
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @filter_get_params(i8* nocapture noundef readnone %provctx, %struct.ossl_param_st* noundef %params) #0 {
entry:
  %0 = load %struct.ossl_provider_st*, %struct.ossl_provider_st** getelementptr inbounds (%struct.filter_prov_globals_st, %struct.filter_prov_globals_st* @ourglobals, i64 0, i32 1), align 8, !tbaa !10
  %call1 = tail call i32 @OSSL_PROVIDER_get_params(%struct.ossl_provider_st* noundef %0, %struct.ossl_param_st* noundef %params) #6
  ret i32 %call1
}

; Function Attrs: noinline nounwind uwtable
define internal %struct.ossl_algorithm_st* @filter_query(i8* nocapture noundef readnone %provctx, i32 noundef %operation_id, i32* noundef %no_cache) #0 {
entry:
  %0 = load i64, i64* getelementptr inbounds (%struct.filter_prov_globals_st, %struct.filter_prov_globals_st* @ourglobals, i64 0, i32 5), align 8, !tbaa !24
  %inc = add i64 %0, 1
  store i64 %inc, i64* getelementptr inbounds (%struct.filter_prov_globals_st, %struct.filter_prov_globals_st* @ourglobals, i64 0, i32 5), align 8, !tbaa !24
  %1 = load i32, i32* getelementptr inbounds (%struct.filter_prov_globals_st, %struct.filter_prov_globals_st* @ourglobals, i64 0, i32 3), align 8, !tbaa !18
  %cmp21 = icmp sgt i32 %1, 0
  br i1 %cmp21, label %for.body.preheader, label %for.end

for.body.preheader:                               ; preds = %entry
  %wide.trip.count = zext i32 %1 to i64
  br label %for.body

for.body:                                         ; preds = %for.body.preheader, %for.inc
  %indvars.iv = phi i64 [ 0, %for.body.preheader ], [ %indvars.iv.next, %for.inc ]
  %operation = getelementptr inbounds %struct.filter_prov_globals_st, %struct.filter_prov_globals_st* @ourglobals, i64 0, i32 2, i64 %indvars.iv, i32 0
  %2 = load i32, i32* %operation, align 8, !tbaa !21
  %cmp1 = icmp eq i32 %2, %operation_id
  br i1 %cmp1, label %if.then, label %for.inc

if.then:                                          ; preds = %for.body
  %idxprom.le = and i64 %indvars.iv, 4294967295
  %3 = load i32, i32* getelementptr inbounds (%struct.filter_prov_globals_st, %struct.filter_prov_globals_st* @ourglobals, i64 0, i32 4), align 4, !tbaa !23
  store i32 %3, i32* %no_cache, align 4, !tbaa !12
  %arraydecay = getelementptr inbounds %struct.filter_prov_globals_st, %struct.filter_prov_globals_st* @ourglobals, i64 0, i32 2, i64 %idxprom.le, i32 1, i64 0
  br label %cleanup

for.inc:                                          ; preds = %for.body
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %for.end, label %for.body, !llvm.loop !25

for.end:                                          ; preds = %for.inc, %entry
  %4 = load %struct.ossl_provider_st*, %struct.ossl_provider_st** getelementptr inbounds (%struct.filter_prov_globals_st, %struct.filter_prov_globals_st* @ourglobals, i64 0, i32 1), align 8, !tbaa !10
  %call7 = tail call %struct.ossl_algorithm_st* @OSSL_PROVIDER_query_operation(%struct.ossl_provider_st* noundef %4, i32 noundef %operation_id, i32* noundef %no_cache) #6
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then
  %retval.0 = phi %struct.ossl_algorithm_st* [ %arraydecay, %if.then ], [ %call7, %for.end ]
  ret %struct.ossl_algorithm_st* %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal void @filter_unquery(i8* nocapture noundef readnone %provctx, i32 noundef %operation_id, %struct.ossl_algorithm_st* noundef %algs) #0 {
entry:
  %0 = load i64, i64* getelementptr inbounds (%struct.filter_prov_globals_st, %struct.filter_prov_globals_st* @ourglobals, i64 0, i32 5), align 8, !tbaa !24
  %call1 = tail call i32 @test_ulong_gt(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 noundef 103, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i64 noundef %0, i64 noundef 0) #6
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 1, i32* getelementptr inbounds (%struct.filter_prov_globals_st, %struct.filter_prov_globals_st* @ourglobals, i64 0, i32 6), align 8, !tbaa !26
  br label %if.end

if.else:                                          ; preds = %entry
  %1 = load i64, i64* getelementptr inbounds (%struct.filter_prov_globals_st, %struct.filter_prov_globals_st* @ourglobals, i64 0, i32 5), align 8, !tbaa !24
  %dec = add i64 %1, -1
  store i64 %dec, i64* getelementptr inbounds (%struct.filter_prov_globals_st, %struct.filter_prov_globals_st* @ourglobals, i64 0, i32 5), align 8, !tbaa !24
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %2 = load i32, i32* getelementptr inbounds (%struct.filter_prov_globals_st, %struct.filter_prov_globals_st* @ourglobals, i64 0, i32 3), align 8, !tbaa !18
  %cmp17 = icmp sgt i32 %2, 0
  br i1 %cmp17, label %for.body.preheader, label %for.end

for.body.preheader:                               ; preds = %if.end
  %wide.trip.count = zext i32 %2 to i64
  br label %for.body

for.cond:                                         ; preds = %for.body
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %for.end, label %for.body, !llvm.loop !27

for.body:                                         ; preds = %for.body.preheader, %for.cond
  %indvars.iv = phi i64 [ 0, %for.body.preheader ], [ %indvars.iv.next, %for.cond ]
  %arraydecay = getelementptr inbounds %struct.filter_prov_globals_st, %struct.filter_prov_globals_st* @ourglobals, i64 0, i32 2, i64 %indvars.iv, i32 1, i64 0
  %cmp3 = icmp eq %struct.ossl_algorithm_st* %arraydecay, %algs
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br i1 %cmp3, label %cleanup, label %for.cond

for.end:                                          ; preds = %for.cond, %if.end
  %3 = load %struct.ossl_provider_st*, %struct.ossl_provider_st** getelementptr inbounds (%struct.filter_prov_globals_st, %struct.filter_prov_globals_st* @ourglobals, i64 0, i32 1), align 8, !tbaa !10
  tail call void @OSSL_PROVIDER_unquery_operation(%struct.ossl_provider_st* noundef %3, i32 noundef %operation_id, %struct.ossl_algorithm_st* noundef %algs) #6
  br label %cleanup

cleanup:                                          ; preds = %for.body, %for.end
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @filter_get_capabilities(i8* nocapture noundef readnone %provctx, i8* noundef %capability, i32 (%struct.ossl_param_st*, i8*)* noundef %cb, i8* noundef %arg) #0 {
entry:
  %0 = load %struct.ossl_provider_st*, %struct.ossl_provider_st** getelementptr inbounds (%struct.filter_prov_globals_st, %struct.filter_prov_globals_st* @ourglobals, i64 0, i32 1), align 8, !tbaa !10
  %call1 = tail call i32 @OSSL_PROVIDER_get_capabilities(%struct.ossl_provider_st* noundef %0, i8* noundef %capability, i32 (%struct.ossl_param_st*, i8*)* noundef %cb, i8* noundef %arg) #6
  ret i32 %call1
}

; Function Attrs: noinline nounwind uwtable
define internal void @filter_teardown(i8* nocapture noundef readnone %provctx) #0 {
entry:
  %0 = load %struct.ossl_provider_st*, %struct.ossl_provider_st** getelementptr inbounds (%struct.filter_prov_globals_st, %struct.filter_prov_globals_st* @ourglobals, i64 0, i32 1), align 8, !tbaa !10
  %call1 = tail call i32 @OSSL_PROVIDER_unload(%struct.ossl_provider_st* noundef %0) #6
  %1 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** getelementptr inbounds (%struct.filter_prov_globals_st, %struct.filter_prov_globals_st* @ourglobals, i64 0, i32 0), align 8, !tbaa !3
  tail call void @OSSL_LIB_CTX_free(%struct.ossl_lib_ctx_st* noundef %1) #6
  %call2 = tail call i8* @memset(i8* noundef bitcast (%struct.filter_prov_globals_st* @ourglobals to i8*), i32 noundef 0, i64 noundef 2040) #6
  ret void
}

declare dso_local %struct.ossl_param_st* @OSSL_PROVIDER_gettable_params(%struct.ossl_provider_st* noundef) local_unnamed_addr #2

declare dso_local i32 @OSSL_PROVIDER_get_params(%struct.ossl_provider_st* noundef, %struct.ossl_param_st* noundef) local_unnamed_addr #2

declare dso_local i32 @test_ulong_gt(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

declare dso_local i32 @OSSL_PROVIDER_get_capabilities(%struct.ossl_provider_st* noundef, i8* noundef, i32 (%struct.ossl_param_st*, i8*)* noundef, i8* noundef) local_unnamed_addr #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #4 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #6 = { nobuiltin nounwind "no-builtins" }
attributes #7 = { nounwind }
attributes #8 = { nobuiltin nounwind readonly willreturn "no-builtins" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{!"clang version 14.0.0"}
!3 = !{!4, !5, i64 0}
!4 = !{!"filter_prov_globals_st", !5, i64 0, !5, i64 8, !6, i64 16, !8, i64 2016, !8, i64 2020, !9, i64 2024, !8, i64 2032}
!5 = !{!"any pointer", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!"int", !6, i64 0}
!9 = !{!"long", !6, i64 0}
!10 = !{!4, !5, i64 8}
!11 = !{!5, !5, i64 0}
!12 = !{!8, !8, i64 0}
!13 = !{!6, !6, i64 0}
!14 = !{!15, !5, i64 0}
!15 = !{!"ossl_algorithm_st", !5, i64 0, !5, i64 8, !5, i64 16, !5, i64 24}
!16 = distinct !{!16, !17}
!17 = !{!"llvm.loop.mustprogress"}
!18 = !{!4, !8, i64 2016}
!19 = !{i64 0, i64 8, !11, i64 8, i64 8, !11, i64 16, i64 8, !11, i64 24, i64 8, !11}
!20 = distinct !{!20, !17}
!21 = !{!22, !8, i64 0}
!22 = !{!"", !8, i64 0, !6, i64 8}
!23 = !{!4, !8, i64 2020}
!24 = !{!4, !9, i64 2024}
!25 = distinct !{!25, !17}
!26 = !{!4, !8, i64 2032}
!27 = distinct !{!27, !17}
