; ModuleID = 'test/user_property_test.c'
source_filename = "test/user_property_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ossl_dispatch_st = type { i32, void ()* }
%struct.ossl_algorithm_st = type { i8*, i8*, %struct.ossl_dispatch_st*, i8* }
%struct.ossl_lib_ctx_st = type opaque
%struct.ossl_provider_st = type opaque
%struct.evp_md_st = type opaque
%struct.ossl_core_handle_st = type opaque
%struct.ossl_param_st = type { i8*, i32, i8*, i64, i64 }

@.str = private unnamed_addr constant [33 x i8] c"test_default_props_and_providers\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"test/user_property_test.c\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"libctx = OSSL_LIB_CTX_new()\00", align 1
@.str.3 = private unnamed_addr constant [70 x i8] c"OSSL_PROVIDER_add_builtin(libctx, \22testprov\22, testprov_provider_init)\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"testprov\00", align 1
@.str.5 = private unnamed_addr constant [49 x i8] c"EVP_set_default_properties(libctx, MYPROPERTIES)\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"foo.bar=yes\00", align 1
@.str.7 = private unnamed_addr constant [50 x i8] c"testprov = OSSL_PROVIDER_load(libctx, \22testprov\22)\00", align 1
@.str.8 = private unnamed_addr constant [54 x i8] c"testprovmd = EVP_MD_fetch(libctx, \22testprovmd\22, NULL)\00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c"testprovmd\00", align 1
@testprov_dispatch_table = internal constant [2 x %struct.ossl_dispatch_st] [%struct.ossl_dispatch_st { i32 1027, void ()* bitcast (%struct.ossl_algorithm_st* (i8*, i32, i32*)* @testprov_query to void ()*) }, %struct.ossl_dispatch_st zeroinitializer], align 16
@testprov_digests = internal constant [2 x %struct.ossl_algorithm_st] [%struct.ossl_algorithm_st { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i32 0, i32 0), %struct.ossl_dispatch_st* getelementptr inbounds ([3 x %struct.ossl_dispatch_st], [3 x %struct.ossl_dispatch_st]* @testprovmd_functions, i32 0, i32 0), i8* null }, %struct.ossl_algorithm_st zeroinitializer], align 16
@testprovmd_functions = internal constant [3 x %struct.ossl_dispatch_st] [%struct.ossl_dispatch_st { i32 8, void ()* bitcast (i32 (%struct.ossl_param_st*)* @tmpmd_get_params to void ()*) }, %struct.ossl_dispatch_st { i32 5, void ()* bitcast (i32 (i8*, i8*, i64, i8*, i64*, i64)* @tmpmd_digest to void ()*) }, %struct.ossl_dispatch_st zeroinitializer], align 16
@.str.10 = private unnamed_addr constant [10 x i8] c"blocksize\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"size\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @setup_tests() local_unnamed_addr #0 {
entry:
  tail call void @add_all_tests(i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 (i32)* noundef nonnull @test_default_props_and_providers, i32 noundef 3, i32 noundef 1) #4
  ret i32 1
}

declare dso_local void @add_all_tests(i8* noundef, i32 (i32)* noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_default_props_and_providers(i32 noundef %propsorder) #0 {
entry:
  %call = tail call %struct.ossl_lib_ctx_st* @OSSL_LIB_CTX_new() #4
  %0 = bitcast %struct.ossl_lib_ctx_st* %call to i8*
  %call1 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 noundef 93, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i8* noundef %0) #4
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %err, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %call2 = tail call i32 @OSSL_PROVIDER_add_builtin(%struct.ossl_lib_ctx_st* noundef %call, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i32 (%struct.ossl_core_handle_st*, %struct.ossl_dispatch_st*, %struct.ossl_dispatch_st**, i8**)* noundef nonnull @testprov_provider_init) #4
  %cmp = icmp ne i32 %call2, 0
  %conv = zext i1 %cmp to i32
  %call3 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 noundef 95, i8* noundef getelementptr inbounds ([70 x i8], [70 x i8]* @.str.3, i64 0, i64 0), i32 noundef %conv) #4
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %err, label %if.end

if.end:                                           ; preds = %lor.lhs.false
  %cmp5 = icmp eq i32 %propsorder, 0
  br i1 %cmp5, label %land.lhs.true, label %if.end13

land.lhs.true:                                    ; preds = %if.end
  %call7 = tail call i32 @EVP_set_default_properties(%struct.ossl_lib_ctx_st* noundef %call, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0)) #4
  %cmp8 = icmp ne i32 %call7, 0
  %conv9 = zext i1 %cmp8 to i32
  %call10 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 noundef 99, i8* noundef getelementptr inbounds ([49 x i8], [49 x i8]* @.str.5, i64 0, i64 0), i32 noundef %conv9) #4
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %err, label %if.end13

if.end13:                                         ; preds = %land.lhs.true, %if.end
  %call14 = tail call %struct.ossl_provider_st* @OSSL_PROVIDER_load(%struct.ossl_lib_ctx_st* noundef %call, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0)) #4
  %1 = bitcast %struct.ossl_provider_st* %call14 to i8*
  %call15 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 noundef 102, i8* noundef getelementptr inbounds ([50 x i8], [50 x i8]* @.str.7, i64 0, i64 0), i8* noundef %1) #4
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %err, label %if.end18

if.end18:                                         ; preds = %if.end13
  %cmp19 = icmp eq i32 %propsorder, 1
  br i1 %cmp19, label %land.lhs.true21, label %if.end28

land.lhs.true21:                                  ; preds = %if.end18
  %call22 = tail call i32 @EVP_set_default_properties(%struct.ossl_lib_ctx_st* noundef %call, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0)) #4
  %cmp23 = icmp ne i32 %call22, 0
  %conv24 = zext i1 %cmp23 to i32
  %call25 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 noundef 106, i8* noundef getelementptr inbounds ([49 x i8], [49 x i8]* @.str.5, i64 0, i64 0), i32 noundef %conv24) #4
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %err, label %if.end28

if.end28:                                         ; preds = %land.lhs.true21, %if.end18
  %call29 = tail call %struct.evp_md_st* @EVP_MD_fetch(%struct.ossl_lib_ctx_st* noundef %call, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i64 0, i64 0), i8* noundef null) #4
  %2 = bitcast %struct.evp_md_st* %call29 to i8*
  %call30 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 noundef 109, i8* noundef getelementptr inbounds ([54 x i8], [54 x i8]* @.str.8, i64 0, i64 0), i8* noundef %2) #4
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %err, label %if.end33

if.end33:                                         ; preds = %if.end28
  %cmp34 = icmp eq i32 %propsorder, 2
  br i1 %cmp34, label %if.then36, label %if.end49

if.then36:                                        ; preds = %if.end33
  %call37 = tail call i32 @EVP_set_default_properties(%struct.ossl_lib_ctx_st* noundef %call, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0)) #4
  %cmp38 = icmp ne i32 %call37, 0
  %conv39 = zext i1 %cmp38 to i32
  %call40 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 noundef 113, i8* noundef getelementptr inbounds ([49 x i8], [49 x i8]* @.str.5, i64 0, i64 0), i32 noundef %conv39) #4
  %tobool41.not = icmp eq i32 %call40, 0
  br i1 %tobool41.not, label %err, label %if.end43

if.end43:                                         ; preds = %if.then36
  tail call void @EVP_MD_free(%struct.evp_md_st* noundef %call29) #4
  %call44 = tail call %struct.evp_md_st* @EVP_MD_fetch(%struct.ossl_lib_ctx_st* noundef %call, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i64 0, i64 0), i8* noundef null) #4
  %3 = bitcast %struct.evp_md_st* %call44 to i8*
  %call45 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 noundef 116, i8* noundef getelementptr inbounds ([54 x i8], [54 x i8]* @.str.8, i64 0, i64 0), i8* noundef %3) #4
  %tobool46.not = icmp eq i32 %call45, 0
  br i1 %tobool46.not, label %err, label %if.end49

if.end49:                                         ; preds = %if.end43, %if.end33
  %testprovmd.0 = phi %struct.evp_md_st* [ %call44, %if.end43 ], [ %call29, %if.end33 ]
  br label %err

err:                                              ; preds = %if.end43, %if.then36, %if.end28, %land.lhs.true21, %if.end13, %land.lhs.true, %entry, %lor.lhs.false, %if.end49
  %testprov.0 = phi %struct.ossl_provider_st* [ %call14, %if.end49 ], [ %call14, %if.end43 ], [ %call14, %if.then36 ], [ %call14, %if.end28 ], [ %call14, %land.lhs.true21 ], [ %call14, %if.end13 ], [ null, %land.lhs.true ], [ null, %lor.lhs.false ], [ null, %entry ]
  %testprovmd.1 = phi %struct.evp_md_st* [ %testprovmd.0, %if.end49 ], [ %call44, %if.end43 ], [ %call29, %if.then36 ], [ %call29, %if.end28 ], [ null, %land.lhs.true21 ], [ null, %if.end13 ], [ null, %land.lhs.true ], [ null, %lor.lhs.false ], [ null, %entry ]
  %res.0 = phi i32 [ 1, %if.end49 ], [ 0, %if.end43 ], [ 0, %if.then36 ], [ 0, %if.end28 ], [ 0, %land.lhs.true21 ], [ 0, %if.end13 ], [ 0, %land.lhs.true ], [ 0, %lor.lhs.false ], [ 0, %entry ]
  tail call void @EVP_MD_free(%struct.evp_md_st* noundef %testprovmd.1) #4
  %call50 = tail call i32 @OSSL_PROVIDER_unload(%struct.ossl_provider_st* noundef %testprov.0) #4
  tail call void @OSSL_LIB_CTX_free(%struct.ossl_lib_ctx_st* noundef %call) #4
  ret i32 %res.0
}

declare dso_local i32 @test_ptr(i8* noundef, i32 noundef, i8* noundef, i8* noundef) local_unnamed_addr #1

declare dso_local %struct.ossl_lib_ctx_st* @OSSL_LIB_CTX_new() local_unnamed_addr #1

declare dso_local i32 @test_true(i8* noundef, i32 noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

declare dso_local i32 @OSSL_PROVIDER_add_builtin(%struct.ossl_lib_ctx_st* noundef, i8* noundef, i32 (%struct.ossl_core_handle_st*, %struct.ossl_dispatch_st*, %struct.ossl_dispatch_st**, i8**)* noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define internal i32 @testprov_provider_init(%struct.ossl_core_handle_st* noundef %handle, %struct.ossl_dispatch_st* nocapture noundef readnone %in, %struct.ossl_dispatch_st** nocapture noundef writeonly %out, i8** nocapture noundef writeonly %provctx) #2 {
entry:
  %0 = bitcast i8** %provctx to %struct.ossl_core_handle_st**
  store %struct.ossl_core_handle_st* %handle, %struct.ossl_core_handle_st** %0, align 8, !tbaa !3
  store %struct.ossl_dispatch_st* getelementptr inbounds ([2 x %struct.ossl_dispatch_st], [2 x %struct.ossl_dispatch_st]* @testprov_dispatch_table, i64 0, i64 0), %struct.ossl_dispatch_st** %out, align 8, !tbaa !3
  ret i32 1
}

declare dso_local i32 @EVP_set_default_properties(%struct.ossl_lib_ctx_st* noundef, i8* noundef) local_unnamed_addr #1

declare dso_local %struct.ossl_provider_st* @OSSL_PROVIDER_load(%struct.ossl_lib_ctx_st* noundef, i8* noundef) local_unnamed_addr #1

declare dso_local %struct.evp_md_st* @EVP_MD_fetch(%struct.ossl_lib_ctx_st* noundef, i8* noundef, i8* noundef) local_unnamed_addr #1

declare dso_local void @EVP_MD_free(%struct.evp_md_st* noundef) local_unnamed_addr #1

declare dso_local i32 @OSSL_PROVIDER_unload(%struct.ossl_provider_st* noundef) local_unnamed_addr #1

declare dso_local void @OSSL_LIB_CTX_free(%struct.ossl_lib_ctx_st* noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define internal %struct.ossl_algorithm_st* @testprov_query(i8* nocapture noundef readnone %provctx, i32 noundef %operation_id, i32* nocapture noundef writeonly %no_cache) #2 {
entry:
  store i32 0, i32* %no_cache, align 4, !tbaa !7
  %cmp = icmp eq i32 %operation_id, 1
  %cond = select i1 %cmp, %struct.ossl_algorithm_st* getelementptr inbounds ([2 x %struct.ossl_algorithm_st], [2 x %struct.ossl_algorithm_st]* @testprov_digests, i64 0, i64 0), %struct.ossl_algorithm_st* null
  ret %struct.ossl_algorithm_st* %cond
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @tmpmd_get_params(%struct.ossl_param_st* noundef %params) #0 {
entry:
  %call = tail call %struct.ossl_param_st* @OSSL_PARAM_locate(%struct.ossl_param_st* noundef %params, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i64 0, i64 0)) #4
  %cmp.not = icmp eq %struct.ossl_param_st* %call, null
  br i1 %cmp.not, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %call1 = tail call i32 @OSSL_PARAM_set_size_t(%struct.ossl_param_st* noundef nonnull %call, i64 noundef 1) #4
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %land.lhs.true, %entry
  %call2 = tail call %struct.ossl_param_st* @OSSL_PARAM_locate(%struct.ossl_param_st* noundef %params, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0)) #4
  %cmp3.not = icmp eq %struct.ossl_param_st* %call2, null
  br i1 %cmp3.not, label %if.end8, label %land.lhs.true4

land.lhs.true4:                                   ; preds = %if.end
  %call5 = tail call i32 @OSSL_PARAM_set_size_t(%struct.ossl_param_st* noundef nonnull %call2, i64 noundef 1) #4
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %cleanup, label %if.end8

if.end8:                                          ; preds = %land.lhs.true4, %if.end
  br label %cleanup

cleanup:                                          ; preds = %land.lhs.true4, %land.lhs.true, %if.end8
  %retval.0 = phi i32 [ 1, %if.end8 ], [ 0, %land.lhs.true ], [ 0, %land.lhs.true4 ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal i32 @tmpmd_digest(i8* nocapture noundef readnone %provctx, i8* nocapture noundef readnone %in, i64 noundef %inl, i8* nocapture noundef readnone %out, i64* nocapture noundef readnone %outl, i64 noundef %outsz) #3 {
entry:
  ret i32 0
}

declare dso_local %struct.ossl_param_st* @OSSL_PARAM_locate(%struct.ossl_param_st* noundef, i8* noundef) local_unnamed_addr #1

declare dso_local i32 @OSSL_PARAM_set_size_t(%struct.ossl_param_st* noundef, i64 noundef) local_unnamed_addr #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nobuiltin nounwind "no-builtins" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{!"clang version 14.0.0"}
!3 = !{!4, !4, i64 0}
!4 = !{!"any pointer", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!8, !8, i64 0}
!8 = !{!"int", !5, i64 0}
