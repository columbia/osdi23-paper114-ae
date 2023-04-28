; ModuleID = 'test/mdc2test.c'
source_filename = "test/mdc2test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ossl_param_st = type { i8*, i32, i8*, i64, i64 }
%struct.ossl_provider_st = type opaque
%struct.ossl_lib_ctx_st = type opaque
%struct.evp_md_ctx_st = type opaque
%struct.evp_md_st = type opaque
%struct.engine_st = type opaque

@.str = private unnamed_addr constant [10 x i8] c"test_mdc2\00", align 1
@test_mdc2.text = internal global [25 x i8] c"Now is the time for all \00", align 16
@.str.1 = private unnamed_addr constant [9 x i8] c"pad-type\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"legacy\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"test/mdc2test.c\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.5 = private unnamed_addr constant [39 x i8] c"EVP_DigestInit_ex(c, EVP_mdc2(), NULL)\00", align 1
@.str.6 = private unnamed_addr constant [49 x i8] c"EVP_DigestUpdate(c, (unsigned char *)text, tlen)\00", align 1
@.str.7 = private unnamed_addr constant [38 x i8] c"EVP_DigestFinal_ex(c, &(md[0]), NULL)\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"md\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"pad1\00", align 1
@pad1 = internal global [16 x i8] c"B\E5\0C\D2$\BA\CE\BAv\0B\DD+\D4\09(\1A", align 16
@.str.10 = private unnamed_addr constant [33 x i8] c"EVP_MD_CTX_set_params(c, params)\00", align 1
@.str.11 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"pad2\00", align 1
@pad2 = internal global [16 x i8] c".Fy\B5\AD\D9\CAu5\D8z\FE\AB3\BE\E2", align 16

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @setup_tests() local_unnamed_addr #0 {
entry:
  tail call void @add_test(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 ()* noundef nonnull @test_mdc2) #5
  ret i32 1
}

declare dso_local void @add_test(i8* noundef, i32 ()* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_mdc2() #0 {
entry:
  %pad_type = alloca i32, align 4
  %md = alloca [16 x i8], align 16
  %params = alloca [2 x %struct.ossl_param_st], align 16
  %tmp3 = alloca %struct.ossl_param_st, align 8
  %0 = bitcast i32* %pad_type to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #6
  store i32 2, i32* %pad_type, align 4, !tbaa !3
  %1 = getelementptr inbounds [16 x i8], [16 x i8]* %md, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %1) #6
  %call = tail call i64 @strlen(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @test_mdc2.text, i64 0, i64 0)) #7
  %2 = bitcast [2 x %struct.ossl_param_st]* %params to i8*
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %2) #6
  %arrayidx = getelementptr inbounds [2 x %struct.ossl_param_st], [2 x %struct.ossl_param_st]* %params, i64 0, i64 0
  %params73 = getelementptr inbounds [2 x %struct.ossl_param_st], [2 x %struct.ossl_param_st]* %params, i64 0, i64 0
  call void @OSSL_PARAM_construct_uint(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %params73, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32* noundef nonnull %pad_type) #5
  %arrayidx2 = getelementptr inbounds [2 x %struct.ossl_param_st], [2 x %struct.ossl_param_st]* %params, i64 0, i64 1
  %3 = bitcast %struct.ossl_param_st* %tmp3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %3) #6
  call void @OSSL_PARAM_construct_end(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %tmp3) #5
  %4 = bitcast %struct.ossl_param_st* %arrayidx2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(40) %4, i8* noundef nonnull align 8 dereferenceable(40) %3, i64 40, i1 false), !tbaa.struct !7
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %3) #6
  %call4 = call %struct.ossl_provider_st* @OSSL_PROVIDER_load(%struct.ossl_lib_ctx_st* noundef null, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0)) #5
  %call5 = call %struct.evp_md_ctx_st* @EVP_MD_CTX_new() #5
  %5 = bitcast %struct.evp_md_ctx_st* %call5 to i8*
  %call6 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i32 noundef 67, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i8* noundef %5) #5
  %tobool.not = icmp eq i32 %call6, 0
  br i1 %tobool.not, label %end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %call7 = call %struct.evp_md_st* @EVP_mdc2() #5
  %call8 = call i32 @EVP_DigestInit_ex(%struct.evp_md_ctx_st* noundef %call5, %struct.evp_md_st* noundef %call7, %struct.engine_st* noundef null) #5
  %cmp = icmp ne i32 %call8, 0
  %conv = zext i1 %cmp to i32
  %call9 = call i32 @test_true(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i32 noundef 68, i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.5, i64 0, i64 0), i32 noundef %conv) #5
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %end, label %lor.lhs.false11

lor.lhs.false11:                                  ; preds = %lor.lhs.false
  %call12 = call i32 @EVP_DigestUpdate(%struct.evp_md_ctx_st* noundef %call5, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @test_mdc2.text, i64 0, i64 0), i64 noundef %call) #5
  %cmp13 = icmp ne i32 %call12, 0
  %conv14 = zext i1 %cmp13 to i32
  %call15 = call i32 @test_true(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i32 noundef 69, i8* noundef getelementptr inbounds ([49 x i8], [49 x i8]* @.str.6, i64 0, i64 0), i32 noundef %conv14) #5
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %end, label %lor.lhs.false17

lor.lhs.false17:                                  ; preds = %lor.lhs.false11
  %call19 = call i32 @EVP_DigestFinal_ex(%struct.evp_md_ctx_st* noundef %call5, i8* noundef nonnull %1, i32* noundef null) #5
  %cmp20 = icmp ne i32 %call19, 0
  %conv21 = zext i1 %cmp20 to i32
  %call22 = call i32 @test_true(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i32 noundef 70, i8* noundef getelementptr inbounds ([38 x i8], [38 x i8]* @.str.7, i64 0, i64 0), i32 noundef %conv21) #5
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %end, label %lor.lhs.false24

lor.lhs.false24:                                  ; preds = %lor.lhs.false17
  %call25 = call i32 @test_mem_eq(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i32 noundef 71, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0), i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0), i8* noundef nonnull %1, i64 noundef 16, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @pad1, i64 0, i64 0), i64 noundef 16) #5
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %end, label %lor.lhs.false27

lor.lhs.false27:                                  ; preds = %lor.lhs.false24
  %call28 = call %struct.evp_md_st* @EVP_mdc2() #5
  %call29 = call i32 @EVP_DigestInit_ex(%struct.evp_md_ctx_st* noundef %call5, %struct.evp_md_st* noundef %call28, %struct.engine_st* noundef null) #5
  %cmp30 = icmp ne i32 %call29, 0
  %conv31 = zext i1 %cmp30 to i32
  %call32 = call i32 @test_true(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i32 noundef 72, i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.5, i64 0, i64 0), i32 noundef %conv31) #5
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %end, label %if.end

if.end:                                           ; preds = %lor.lhs.false27
  %call35 = call i32 @EVP_MD_CTX_set_params(%struct.evp_md_ctx_st* noundef %call5, %struct.ossl_param_st* noundef nonnull %arrayidx) #5
  %call36 = call i32 @test_int_gt(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i32 noundef 75, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.10, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i64 0, i64 0), i32 noundef %call35, i32 noundef 0) #5
  %tobool37.not = icmp eq i32 %call36, 0
  br i1 %tobool37.not, label %end, label %lor.lhs.false38

lor.lhs.false38:                                  ; preds = %if.end
  %call39 = call i32 @EVP_DigestUpdate(%struct.evp_md_ctx_st* noundef %call5, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @test_mdc2.text, i64 0, i64 0), i64 noundef %call) #5
  %cmp40 = icmp ne i32 %call39, 0
  %conv41 = zext i1 %cmp40 to i32
  %call42 = call i32 @test_true(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i32 noundef 76, i8* noundef getelementptr inbounds ([49 x i8], [49 x i8]* @.str.6, i64 0, i64 0), i32 noundef %conv41) #5
  %tobool43.not = icmp eq i32 %call42, 0
  br i1 %tobool43.not, label %end, label %lor.lhs.false44

lor.lhs.false44:                                  ; preds = %lor.lhs.false38
  %call46 = call i32 @EVP_DigestFinal_ex(%struct.evp_md_ctx_st* noundef %call5, i8* noundef nonnull %1, i32* noundef null) #5
  %cmp47 = icmp ne i32 %call46, 0
  %conv48 = zext i1 %cmp47 to i32
  %call49 = call i32 @test_true(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i32 noundef 77, i8* noundef getelementptr inbounds ([38 x i8], [38 x i8]* @.str.7, i64 0, i64 0), i32 noundef %conv48) #5
  %tobool50.not = icmp eq i32 %call49, 0
  br i1 %tobool50.not, label %end, label %lor.lhs.false51

lor.lhs.false51:                                  ; preds = %lor.lhs.false44
  %call53 = call i32 @test_mem_eq(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i32 noundef 78, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0), i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0), i8* noundef nonnull %1, i64 noundef 16, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @pad2, i64 0, i64 0), i64 noundef 16) #5
  %tobool54.not = icmp ne i32 %call53, 0
  %spec.select = zext i1 %tobool54.not to i32
  br label %end

end:                                              ; preds = %lor.lhs.false51, %if.end, %lor.lhs.false38, %lor.lhs.false44, %entry, %lor.lhs.false, %lor.lhs.false11, %lor.lhs.false17, %lor.lhs.false24, %lor.lhs.false27
  %testresult.0 = phi i32 [ 0, %lor.lhs.false44 ], [ 0, %lor.lhs.false38 ], [ 0, %if.end ], [ 0, %lor.lhs.false27 ], [ 0, %lor.lhs.false24 ], [ 0, %lor.lhs.false17 ], [ 0, %lor.lhs.false11 ], [ 0, %lor.lhs.false ], [ 0, %entry ], [ %spec.select, %lor.lhs.false51 ]
  call void @EVP_MD_CTX_free(%struct.evp_md_ctx_st* noundef %call5) #5
  %call57 = call i32 @OSSL_PROVIDER_unload(%struct.ossl_provider_st* noundef %call4) #5
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %2) #6
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %1) #6
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #6
  ret i32 %testresult.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i64 @strlen(i8* noundef) local_unnamed_addr #3

declare dso_local void @OSSL_PARAM_construct_uint(%struct.ossl_param_st* sret(%struct.ossl_param_st) align 8, i8* noundef, i32* noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

declare dso_local void @OSSL_PARAM_construct_end(%struct.ossl_param_st* sret(%struct.ossl_param_st) align 8) local_unnamed_addr #1

declare dso_local %struct.ossl_provider_st* @OSSL_PROVIDER_load(%struct.ossl_lib_ctx_st* noundef, i8* noundef) local_unnamed_addr #1

declare dso_local %struct.evp_md_ctx_st* @EVP_MD_CTX_new() local_unnamed_addr #1

declare dso_local i32 @test_ptr(i8* noundef, i32 noundef, i8* noundef, i8* noundef) local_unnamed_addr #1

declare dso_local i32 @test_true(i8* noundef, i32 noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

declare dso_local i32 @EVP_DigestInit_ex(%struct.evp_md_ctx_st* noundef, %struct.evp_md_st* noundef, %struct.engine_st* noundef) local_unnamed_addr #1

declare dso_local %struct.evp_md_st* @EVP_mdc2() local_unnamed_addr #1

declare dso_local i32 @EVP_DigestUpdate(%struct.evp_md_ctx_st* noundef, i8* noundef, i64 noundef) local_unnamed_addr #1

declare dso_local i32 @EVP_DigestFinal_ex(%struct.evp_md_ctx_st* noundef, i8* noundef, i32* noundef) local_unnamed_addr #1

declare dso_local i32 @test_mem_eq(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i8* noundef, i64 noundef, i8* noundef, i64 noundef) local_unnamed_addr #1

declare dso_local i32 @test_int_gt(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare dso_local i32 @EVP_MD_CTX_set_params(%struct.evp_md_ctx_st* noundef, %struct.ossl_param_st* noundef) local_unnamed_addr #1

declare dso_local void @EVP_MD_CTX_free(%struct.evp_md_ctx_st* noundef) local_unnamed_addr #1

declare dso_local i32 @OSSL_PROVIDER_unload(%struct.ossl_provider_st* noundef) local_unnamed_addr #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #3 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #5 = { nobuiltin nounwind "no-builtins" }
attributes #6 = { nounwind }
attributes #7 = { nobuiltin nounwind readonly willreturn "no-builtins" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{!"clang version 14.0.0"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{i64 0, i64 8, !8, i64 8, i64 4, !3, i64 16, i64 8, !8, i64 24, i64 8, !10, i64 32, i64 8, !10}
!8 = !{!9, !9, i64 0}
!9 = !{!"any pointer", !5, i64 0}
!10 = !{!11, !11, i64 0}
!11 = !{!"long", !5, i64 0}
