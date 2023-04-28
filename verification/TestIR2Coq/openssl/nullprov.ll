; ModuleID = 'providers/nullprov.c'
source_filename = "providers/nullprov.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ossl_dispatch_st = type { i32, void ()* }
%struct.ossl_param_st = type { i8*, i32, i8*, i64, i64 }
%struct.ossl_core_handle_st = type opaque
%struct.ossl_provider_st = type opaque
%struct.ossl_algorithm_st = type { i8*, i8*, %struct.ossl_dispatch_st*, i8* }

@null_dispatch_table = internal constant [4 x %struct.ossl_dispatch_st] [%struct.ossl_dispatch_st { i32 1025, void ()* bitcast (%struct.ossl_param_st* (%struct.ossl_provider_st*)* @null_gettable_params to void ()*) }, %struct.ossl_dispatch_st { i32 1026, void ()* bitcast (i32 (%struct.ossl_provider_st*, %struct.ossl_param_st*)* @null_get_params to void ()*) }, %struct.ossl_dispatch_st { i32 1027, void ()* bitcast (%struct.ossl_algorithm_st* (%struct.ossl_provider_st*, i32, i32*)* @null_query to void ()*) }, %struct.ossl_dispatch_st zeroinitializer], align 16
@null_param_types = internal constant [5 x %struct.ossl_param_st] [%struct.ossl_param_st { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i32 6, i8* null, i64 0, i64 -1 }, %struct.ossl_param_st { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0), i32 6, i8* null, i64 0, i64 -1 }, %struct.ossl_param_st { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i32 0, i32 0), i32 6, i8* null, i64 0, i64 -1 }, %struct.ossl_param_st { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i32 0, i32 0), i32 1, i8* null, i64 0, i64 -1 }, %struct.ossl_param_st zeroinitializer], align 16
@.str = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"buildinfo\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"status\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"OpenSSL Null Provider\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"3.0.0\00", align 1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define i32 @ossl_null_provider_init(%struct.ossl_core_handle_st* noundef %handle, %struct.ossl_dispatch_st* nocapture noundef readnone %in, %struct.ossl_dispatch_st** nocapture noundef writeonly %out, i8** nocapture noundef writeonly %provctx) local_unnamed_addr #0 {
entry:
  store %struct.ossl_dispatch_st* getelementptr inbounds ([4 x %struct.ossl_dispatch_st], [4 x %struct.ossl_dispatch_st]* @null_dispatch_table, i64 0, i64 0), %struct.ossl_dispatch_st** %out, align 8, !tbaa !4
  %0 = bitcast i8** %provctx to %struct.ossl_core_handle_st**
  store %struct.ossl_core_handle_st* %handle, %struct.ossl_core_handle_st** %0, align 8, !tbaa !4
  ret i32 1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal %struct.ossl_param_st* @null_gettable_params(%struct.ossl_provider_st* nocapture noundef readnone %prov) #1 {
entry:
  ret %struct.ossl_param_st* getelementptr inbounds ([5 x %struct.ossl_param_st], [5 x %struct.ossl_param_st]* @null_param_types, i64 0, i64 0)
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @null_get_params(%struct.ossl_provider_st* nocapture noundef readnone %provctx, %struct.ossl_param_st* noundef %params) #2 {
entry:
  %call = tail call %struct.ossl_param_st* @OSSL_PARAM_locate(%struct.ossl_param_st* noundef %params, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0)) #4
  %cmp.not = icmp eq %struct.ossl_param_st* %call, null
  br i1 %cmp.not, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %call1 = tail call i32 @OSSL_PARAM_set_utf8_ptr(%struct.ossl_param_st* noundef nonnull %call, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0)) #4
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %land.lhs.true, %entry
  %call2 = tail call %struct.ossl_param_st* @OSSL_PARAM_locate(%struct.ossl_param_st* noundef %params, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0)) #4
  %cmp3.not = icmp eq %struct.ossl_param_st* %call2, null
  br i1 %cmp3.not, label %if.end8, label %land.lhs.true4

land.lhs.true4:                                   ; preds = %if.end
  %call5 = tail call i32 @OSSL_PARAM_set_utf8_ptr(%struct.ossl_param_st* noundef nonnull %call2, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0)) #4
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %cleanup, label %if.end8

if.end8:                                          ; preds = %land.lhs.true4, %if.end
  %call9 = tail call %struct.ossl_param_st* @OSSL_PARAM_locate(%struct.ossl_param_st* noundef %params, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0)) #4
  %cmp10.not = icmp eq %struct.ossl_param_st* %call9, null
  br i1 %cmp10.not, label %if.end15, label %land.lhs.true11

land.lhs.true11:                                  ; preds = %if.end8
  %call12 = tail call i32 @OSSL_PARAM_set_utf8_ptr(%struct.ossl_param_st* noundef nonnull %call9, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0)) #4
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %cleanup, label %if.end15

if.end15:                                         ; preds = %land.lhs.true11, %if.end8
  %call16 = tail call %struct.ossl_param_st* @OSSL_PARAM_locate(%struct.ossl_param_st* noundef %params, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0)) #4
  %cmp17.not = icmp eq %struct.ossl_param_st* %call16, null
  br i1 %cmp17.not, label %if.end23, label %land.lhs.true18

land.lhs.true18:                                  ; preds = %if.end15
  %call19 = tail call i32 @ossl_prov_is_running() #4
  %call20 = tail call i32 @OSSL_PARAM_set_int(%struct.ossl_param_st* noundef nonnull %call16, i32 noundef %call19) #4
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %cleanup, label %if.end23

if.end23:                                         ; preds = %land.lhs.true18, %if.end15
  br label %cleanup

cleanup:                                          ; preds = %land.lhs.true18, %land.lhs.true11, %land.lhs.true4, %land.lhs.true, %if.end23
  %retval.0 = phi i32 [ 1, %if.end23 ], [ 0, %land.lhs.true ], [ 0, %land.lhs.true4 ], [ 0, %land.lhs.true11 ], [ 0, %land.lhs.true18 ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define internal noalias %struct.ossl_algorithm_st* @null_query(%struct.ossl_provider_st* nocapture noundef readnone %prov, i32 noundef %operation_id, i32* nocapture noundef writeonly %no_cache) #0 {
entry:
  store i32 0, i32* %no_cache, align 4, !tbaa !8
  ret %struct.ossl_algorithm_st* null
}

declare %struct.ossl_param_st* @OSSL_PARAM_locate(%struct.ossl_param_st* noundef, i8* noundef) local_unnamed_addr #3

declare i32 @OSSL_PARAM_set_utf8_ptr(%struct.ossl_param_st* noundef, i8* noundef) local_unnamed_addr #3

declare i32 @OSSL_PARAM_set_int(%struct.ossl_param_st* noundef, i32 noundef) local_unnamed_addr #3

declare i32 @ossl_prov_is_running() local_unnamed_addr #3

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nobuiltin nounwind "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{!"clang version 14.0.0"}
!4 = !{!5, !5, i64 0}
!5 = !{!"any pointer", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !9, i64 0}
!9 = !{!"int", !6, i64 0}
