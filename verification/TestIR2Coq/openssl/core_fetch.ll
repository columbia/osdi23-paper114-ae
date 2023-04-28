; ModuleID = 'crypto/core_fetch.c'
source_filename = "crypto/core_fetch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ossl_lib_ctx_st = type opaque
%struct.ossl_method_construct_method_st = type { i8* (i8*)*, i8* (i8*, i8*)*, i32 (i8*, i8*, %struct.ossl_provider_st*, i8*, i8*, i8*)*, i8* (%struct.ossl_algorithm_st*, %struct.ossl_provider_st*, i8*)*, void (i8*, i8*)* }
%struct.ossl_provider_st = type opaque
%struct.ossl_algorithm_st = type { i8*, i8*, %struct.ossl_dispatch_st*, i8* }
%struct.ossl_dispatch_st = type { i32, void ()* }
%struct.construct_data_st = type { %struct.ossl_lib_ctx_st*, %struct.ossl_method_store_st*, i32, i32, %struct.ossl_method_construct_method_st*, i8* }
%struct.ossl_method_store_st = type opaque

@.str = private unnamed_addr constant [20 x i8] c"crypto/core_fetch.c\00", align 1
@__func__.ossl_method_construct_precondition = private unnamed_addr constant [35 x i8] c"ossl_method_construct_precondition\00", align 1
@__func__.ossl_method_construct_postcondition = private unnamed_addr constant [36 x i8] c"ossl_method_construct_postcondition\00", align 1

; Function Attrs: noinline nounwind uwtable
define i8* @ossl_method_construct(%struct.ossl_lib_ctx_st* noundef %libctx, i32 noundef %operation_id, i32 noundef %force_store, %struct.ossl_method_construct_method_st* noundef %mcm, i8* noundef %mcm_data) local_unnamed_addr #0 {
entry:
  %cbdata = alloca %struct.construct_data_st, align 8
  %get = getelementptr inbounds %struct.ossl_method_construct_method_st, %struct.ossl_method_construct_method_st* %mcm, i64 0, i32 1
  %0 = load i8* (i8*, i8*)*, i8* (i8*, i8*)** %get, align 8, !tbaa !4
  %call = tail call i8* %0(i8* noundef null, i8* noundef %mcm_data) #3
  %cmp = icmp eq i8* %call, null
  br i1 %cmp, label %if.then, label %if.end15

if.then:                                          ; preds = %entry
  %1 = bitcast %struct.construct_data_st* %cbdata to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %1) #4
  %store = getelementptr inbounds %struct.construct_data_st, %struct.construct_data_st* %cbdata, i64 0, i32 1
  store %struct.ossl_method_store_st* null, %struct.ossl_method_store_st** %store, align 8, !tbaa !9
  %force_store1 = getelementptr inbounds %struct.construct_data_st, %struct.construct_data_st* %cbdata, i64 0, i32 3
  store i32 %force_store, i32* %force_store1, align 4, !tbaa !12
  %mcm2 = getelementptr inbounds %struct.construct_data_st, %struct.construct_data_st* %cbdata, i64 0, i32 4
  store %struct.ossl_method_construct_method_st* %mcm, %struct.ossl_method_construct_method_st** %mcm2, align 8, !tbaa !13
  %mcm_data3 = getelementptr inbounds %struct.construct_data_st, %struct.construct_data_st* %cbdata, i64 0, i32 5
  store i8* %mcm_data, i8** %mcm_data3, align 8, !tbaa !14
  call void @ossl_algorithm_do_all(%struct.ossl_lib_ctx_st* noundef %libctx, i32 noundef %operation_id, %struct.ossl_provider_st* noundef null, i32 (%struct.ossl_provider_st*, i32, i8*, i32*)* noundef nonnull @ossl_method_construct_precondition, void (%struct.ossl_provider_st*, %struct.ossl_algorithm_st*, i32, i8*)* noundef nonnull @ossl_method_construct_this, i32 (%struct.ossl_provider_st*, i32, i32, i8*, i32*)* noundef nonnull @ossl_method_construct_postcondition, i8* noundef nonnull %1) #3
  %2 = load %struct.ossl_method_store_st*, %struct.ossl_method_store_st** %store, align 8, !tbaa !9
  %cmp5.not = icmp eq %struct.ossl_method_store_st* %2, null
  br i1 %cmp5.not, label %if.then11, label %if.end

if.end:                                           ; preds = %if.then
  %3 = load i8* (i8*, i8*)*, i8* (i8*, i8*)** %get, align 8, !tbaa !4
  %4 = bitcast %struct.ossl_method_store_st* %2 to i8*
  %call9 = call i8* %3(i8* noundef nonnull %4, i8* noundef %mcm_data) #3
  %cmp10 = icmp eq i8* %call9, null
  br i1 %cmp10, label %if.then11, label %if.end14

if.then11:                                        ; preds = %if.then, %if.end
  %5 = load i8* (i8*, i8*)*, i8* (i8*, i8*)** %get, align 8, !tbaa !4
  %call13 = call i8* %5(i8* noundef null, i8* noundef %mcm_data) #3
  br label %if.end14

if.end14:                                         ; preds = %if.then11, %if.end
  %method.1 = phi i8* [ %call13, %if.then11 ], [ %call9, %if.end ]
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %1) #4
  br label %if.end15

if.end15:                                         ; preds = %if.end14, %entry
  %method.2 = phi i8* [ %method.1, %if.end14 ], [ %call, %entry ]
  ret i8* %method.2
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

declare void @ossl_algorithm_do_all(%struct.ossl_lib_ctx_st* noundef, i32 noundef, %struct.ossl_provider_st* noundef, i32 (%struct.ossl_provider_st*, i32, i8*, i32*)* noundef, void (%struct.ossl_provider_st*, %struct.ossl_algorithm_st*, i32, i8*)* noundef, i32 (%struct.ossl_provider_st*, i32, i32, i8*, i32*)* noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal i32 @ossl_method_construct_precondition(%struct.ossl_provider_st* noundef %provider, i32 noundef %operation_id, i8* nocapture noundef readnone %cbdata, i32* noundef %result) #0 {
entry:
  %cmp.not = icmp eq i32* %result, null
  br i1 %cmp.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #3
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 32, i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @__func__.ossl_method_construct_precondition, i64 0, i64 0)) #3
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 15, i32 noundef 786690, i8* noundef null) #3
  br label %return

if.end:                                           ; preds = %entry
  %conv3 = sext i32 %operation_id to i64
  %call = tail call i32 @ossl_provider_test_operation_bit(%struct.ossl_provider_st* noundef %provider, i64 noundef %conv3, i32* noundef nonnull %result) #3
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %return, label %if.end5

if.end5:                                          ; preds = %if.end
  %0 = load i32, i32* %result, align 4, !tbaa !15
  %tobool6.not = icmp eq i32 %0, 0
  %lnot.ext = zext i1 %tobool6.not to i32
  store i32 %lnot.ext, i32* %result, align 4, !tbaa !15
  br label %return

return:                                           ; preds = %if.end, %if.end5, %if.then
  %retval.0 = phi i32 [ 1, %if.end5 ], [ 0, %if.then ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal void @ossl_method_construct_this(%struct.ossl_provider_st* noundef %provider, %struct.ossl_algorithm_st* noundef %algo, i32 noundef %no_store, i8* nocapture noundef %cbdata) #0 {
entry:
  %mcm = getelementptr inbounds i8, i8* %cbdata, i64 24
  %0 = bitcast i8* %mcm to %struct.ossl_method_construct_method_st**
  %1 = load %struct.ossl_method_construct_method_st*, %struct.ossl_method_construct_method_st** %0, align 8, !tbaa !13
  %construct = getelementptr inbounds %struct.ossl_method_construct_method_st, %struct.ossl_method_construct_method_st* %1, i64 0, i32 3
  %2 = load i8* (%struct.ossl_algorithm_st*, %struct.ossl_provider_st*, i8*)*, i8* (%struct.ossl_algorithm_st*, %struct.ossl_provider_st*, i8*)** %construct, align 8, !tbaa !16
  %mcm_data = getelementptr inbounds i8, i8* %cbdata, i64 32
  %3 = bitcast i8* %mcm_data to i8**
  %4 = load i8*, i8** %3, align 8, !tbaa !14
  %call = tail call i8* %2(%struct.ossl_algorithm_st* noundef %algo, %struct.ossl_provider_st* noundef %provider, i8* noundef %4) #3
  %cmp = icmp eq i8* %call, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %force_store = getelementptr inbounds i8, i8* %cbdata, i64 20
  %5 = bitcast i8* %force_store to i32*
  %6 = load i32, i32* %5, align 4, !tbaa !12
  %tobool = icmp eq i32 %6, 0
  %tobool1 = icmp ne i32 %no_store, 0
  %or.cond = and i1 %tobool1, %tobool
  %7 = load %struct.ossl_method_construct_method_st*, %struct.ossl_method_construct_method_st** %0, align 8, !tbaa !13
  br i1 %or.cond, label %if.else, label %if.then2

if.then2:                                         ; preds = %if.end
  %put = getelementptr inbounds %struct.ossl_method_construct_method_st, %struct.ossl_method_construct_method_st* %7, i64 0, i32 2
  %8 = load i32 (i8*, i8*, %struct.ossl_provider_st*, i8*, i8*, i8*)*, i32 (i8*, i8*, %struct.ossl_provider_st*, i8*, i8*, i8*)** %put, align 8, !tbaa !17
  %algorithm_names = getelementptr inbounds %struct.ossl_algorithm_st, %struct.ossl_algorithm_st* %algo, i64 0, i32 0
  %9 = load i8*, i8** %algorithm_names, align 8, !tbaa !18
  %property_definition = getelementptr inbounds %struct.ossl_algorithm_st, %struct.ossl_algorithm_st* %algo, i64 0, i32 1
  %10 = load i8*, i8** %property_definition, align 8, !tbaa !20
  %11 = load i8*, i8** %3, align 8, !tbaa !14
  %call5 = tail call i32 %8(i8* noundef null, i8* noundef nonnull %call, %struct.ossl_provider_st* noundef %provider, i8* noundef %9, i8* noundef %10, i8* noundef %11) #3
  br label %if.end19

if.else:                                          ; preds = %if.end
  %get_tmp_store = getelementptr inbounds %struct.ossl_method_construct_method_st, %struct.ossl_method_construct_method_st* %7, i64 0, i32 0
  %12 = load i8* (i8*)*, i8* (i8*)** %get_tmp_store, align 8, !tbaa !21
  %13 = load i8*, i8** %3, align 8, !tbaa !14
  %call8 = tail call i8* %12(i8* noundef %13) #3
  %store = getelementptr inbounds i8, i8* %cbdata, i64 8
  %14 = bitcast i8* %store to i8**
  store i8* %call8, i8** %14, align 8, !tbaa !9
  %cmp9 = icmp eq i8* %call8, null
  br i1 %cmp9, label %cleanup, label %if.end11

if.end11:                                         ; preds = %if.else
  %15 = load %struct.ossl_method_construct_method_st*, %struct.ossl_method_construct_method_st** %0, align 8, !tbaa !13
  %put13 = getelementptr inbounds %struct.ossl_method_construct_method_st, %struct.ossl_method_construct_method_st* %15, i64 0, i32 2
  %16 = load i32 (i8*, i8*, %struct.ossl_provider_st*, i8*, i8*, i8*)*, i32 (i8*, i8*, %struct.ossl_provider_st*, i8*, i8*, i8*)** %put13, align 8, !tbaa !17
  %algorithm_names15 = getelementptr inbounds %struct.ossl_algorithm_st, %struct.ossl_algorithm_st* %algo, i64 0, i32 0
  %17 = load i8*, i8** %algorithm_names15, align 8, !tbaa !18
  %property_definition16 = getelementptr inbounds %struct.ossl_algorithm_st, %struct.ossl_algorithm_st* %algo, i64 0, i32 1
  %18 = load i8*, i8** %property_definition16, align 8, !tbaa !20
  %19 = load i8*, i8** %3, align 8, !tbaa !14
  %call18 = tail call i32 %16(i8* noundef nonnull %call8, i8* noundef nonnull %call, %struct.ossl_provider_st* noundef %provider, i8* noundef %17, i8* noundef %18, i8* noundef %19) #3
  br label %if.end19

if.end19:                                         ; preds = %if.end11, %if.then2
  %20 = load %struct.ossl_method_construct_method_st*, %struct.ossl_method_construct_method_st** %0, align 8, !tbaa !13
  %destruct = getelementptr inbounds %struct.ossl_method_construct_method_st, %struct.ossl_method_construct_method_st* %20, i64 0, i32 4
  %21 = load void (i8*, i8*)*, void (i8*, i8*)** %destruct, align 8, !tbaa !22
  %22 = load i8*, i8** %3, align 8, !tbaa !14
  tail call void %21(i8* noundef nonnull %call, i8* noundef %22) #3
  br label %cleanup

cleanup:                                          ; preds = %if.else, %entry, %if.end19
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @ossl_method_construct_postcondition(%struct.ossl_provider_st* noundef %provider, i32 noundef %operation_id, i32 noundef %no_store, i8* nocapture noundef readnone %cbdata, i32* noundef writeonly %result) #0 {
entry:
  %cmp.not = icmp eq i32* %result, null
  br i1 %cmp.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #3
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 54, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @__func__.ossl_method_construct_postcondition, i64 0, i64 0)) #3
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 15, i32 noundef 786690, i8* noundef null) #3
  br label %return

if.end:                                           ; preds = %entry
  store i32 1, i32* %result, align 4, !tbaa !15
  %cmp3.not = icmp eq i32 %no_store, 0
  br i1 %cmp3.not, label %lor.rhs, label %return

lor.rhs:                                          ; preds = %if.end
  %conv5 = sext i32 %operation_id to i64
  %call = tail call i32 @ossl_provider_set_operation_bit(%struct.ossl_provider_st* noundef %provider, i64 noundef %conv5) #3
  %tobool = icmp ne i32 %call, 0
  %phi.cast = zext i1 %tobool to i32
  br label %return

return:                                           ; preds = %if.end, %lor.rhs, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 1, %if.end ], [ %phi.cast, %lor.rhs ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

declare void @ERR_new() local_unnamed_addr #2

declare void @ERR_set_debug(i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #2

declare void @ERR_set_error(i32 noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #2

declare i32 @ossl_provider_test_operation_bit(%struct.ossl_provider_st* noundef, i64 noundef, i32* noundef) local_unnamed_addr #2

declare i32 @ossl_provider_set_operation_bit(%struct.ossl_provider_st* noundef, i64 noundef) local_unnamed_addr #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nobuiltin nounwind "no-builtins" }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{!"clang version 14.0.0"}
!4 = !{!5, !6, i64 8}
!5 = !{!"ossl_method_construct_method_st", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !6, i64 32}
!6 = !{!"any pointer", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !6, i64 8}
!10 = !{!"construct_data_st", !6, i64 0, !6, i64 8, !11, i64 16, !11, i64 20, !6, i64 24, !6, i64 32}
!11 = !{!"int", !7, i64 0}
!12 = !{!10, !11, i64 20}
!13 = !{!10, !6, i64 24}
!14 = !{!10, !6, i64 32}
!15 = !{!11, !11, i64 0}
!16 = !{!5, !6, i64 24}
!17 = !{!5, !6, i64 16}
!18 = !{!19, !6, i64 0}
!19 = !{!"ossl_algorithm_st", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24}
!20 = !{!19, !6, i64 8}
!21 = !{!5, !6, i64 0}
!22 = !{!5, !6, i64 32}
