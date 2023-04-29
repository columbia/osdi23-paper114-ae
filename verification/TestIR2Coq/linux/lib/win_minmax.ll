; ModuleID = 'lib/win_minmax.c'
source_filename = "lib/win_minmax.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

%struct.minmax = type { [3 x %struct.minmax_sample] }
%struct.minmax_sample = type { i32, i32 }

; Function Attrs: mustprogress nofree noinline nosync nounwind null_pointer_is_valid willreturn
define dso_local i32 @minmax_running_max(%struct.minmax* nocapture noundef %m, i32 noundef %win, i32 noundef %t, i32 noundef %meas) local_unnamed_addr #0 {
entry:
  %val = alloca i64, align 8, !annotation !7
  %tmpcast = bitcast i64* %val to %struct.minmax_sample*, !annotation !7
  %0 = bitcast i64* %val to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #3
  %t1 = bitcast i64* %val to i32*
  store i32 %t, i32* %t1, align 8
  %v = getelementptr inbounds %struct.minmax_sample, %struct.minmax_sample* %tmpcast, i64 0, i32 1
  store i32 %meas, i32* %v, align 4
  %v3 = getelementptr inbounds %struct.minmax, %struct.minmax* %m, i64 0, i32 0, i64 0, i32 1
  %1 = load i32, i32* %v3, align 4
  %cmp.not = icmp ugt i32 %1, %meas
  br i1 %cmp.not, label %lor.lhs.false, label %if.then, !prof !8

lor.lhs.false:                                    ; preds = %entry
  %arrayidx7 = getelementptr %struct.minmax, %struct.minmax* %m, i64 0, i32 0, i64 2
  %t8 = getelementptr inbounds %struct.minmax_sample, %struct.minmax_sample* %arrayidx7, i64 0, i32 0
  %2 = load i32, i32* %t8, align 4
  %sub = sub i32 %t, %2
  %cmp9 = icmp ugt i32 %sub, %win
  br i1 %cmp9, label %if.then, label %if.end, !prof !9

if.then:                                          ; preds = %lor.lhs.false, %entry
  %call = call fastcc i32 @minmax_reset(%struct.minmax* noundef %m, i32 noundef %t, i32 noundef %meas) #4
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %v21 = getelementptr %struct.minmax, %struct.minmax* %m, i64 0, i32 0, i64 1, i32 1
  %3 = load i32, i32* %v21, align 4
  %cmp22.not = icmp ugt i32 %3, %meas
  br i1 %cmp22.not, label %if.else, label %if.then31, !prof !8

if.then31:                                        ; preds = %if.end
  %arrayidx20 = getelementptr %struct.minmax, %struct.minmax* %m, i64 0, i32 0, i64 1
  %4 = bitcast %struct.minmax_sample* %arrayidx20 to i64*
  %5 = load i64, i64* %val, align 8
  store i64 %5, i64* %4, align 4
  %6 = bitcast %struct.minmax_sample* %arrayidx7 to i64*
  store i64 %5, i64* %6, align 4
  br label %if.end53

if.else:                                          ; preds = %if.end
  %v39 = getelementptr %struct.minmax, %struct.minmax* %m, i64 0, i32 0, i64 2, i32 1
  %7 = load i32, i32* %v39, align 4
  %cmp40.not = icmp ugt i32 %7, %meas
  br i1 %cmp40.not, label %if.end53, label %if.then49, !prof !8

if.then49:                                        ; preds = %if.else
  %8 = bitcast %struct.minmax_sample* %arrayidx7 to i64*
  %9 = load i64, i64* %val, align 8
  store i64 %9, i64* %8, align 4
  br label %if.end53

if.end53:                                         ; preds = %if.else, %if.then49, %if.then31
  %call54 = call fastcc i32 @minmax_subwin_update(%struct.minmax* noundef %m, i32 noundef %win, %struct.minmax_sample* noundef nonnull %tmpcast) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end53, %if.then
  %retval.0 = phi i32 [ %call, %if.then ], [ %call54, %if.end53 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #3
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @minmax_reset(%struct.minmax* nocapture noundef %m, i32 noundef %t, i32 noundef %meas) unnamed_addr #2 {
entry:
  %arrayidx = getelementptr %struct.minmax, %struct.minmax* %m, i64 0, i32 0, i64 2
  %arrayidx3 = getelementptr %struct.minmax, %struct.minmax* %m, i64 0, i32 0, i64 1
  %val.sroa.0.0..sroa_idx = getelementptr inbounds %struct.minmax, %struct.minmax* %m, i64 0, i32 0, i64 0, i32 0
  store i32 %t, i32* %val.sroa.0.0..sroa_idx, align 4
  %val.sroa.5.0..sroa_idx11 = getelementptr inbounds %struct.minmax, %struct.minmax* %m, i64 0, i32 0, i64 0, i32 1
  store i32 %meas, i32* %val.sroa.5.0..sroa_idx11, align 4
  %0 = bitcast %struct.minmax* %m to i64*
  %1 = bitcast %struct.minmax_sample* %arrayidx3 to i64*
  %2 = load i64, i64* %0, align 4
  store i64 %2, i64* %1, align 4
  %3 = bitcast %struct.minmax_sample* %arrayidx to i64*
  store i64 %2, i64* %3, align 4
  ret i32 %meas
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @minmax_subwin_update(%struct.minmax* nocapture noundef %m, i32 noundef %win, %struct.minmax_sample* nocapture noundef readonly %val) unnamed_addr #2 {
entry:
  %t = getelementptr inbounds %struct.minmax_sample, %struct.minmax_sample* %val, i64 0, i32 0
  %0 = load i32, i32* %t, align 4
  %t1 = getelementptr inbounds %struct.minmax, %struct.minmax* %m, i64 0, i32 0, i64 0, i32 0
  %1 = load i32, i32* %t1, align 4
  %sub = sub i32 %0, %1
  %cmp = icmp ugt i32 %sub, %win
  %arrayidx6 = getelementptr %struct.minmax, %struct.minmax* %m, i64 0, i32 0, i64 1
  br i1 %cmp, label %if.then, label %if.else, !prof !9

if.then:                                          ; preds = %entry
  %2 = bitcast %struct.minmax_sample* %arrayidx6 to i64*
  %3 = bitcast %struct.minmax* %m to i64*
  %4 = load i64, i64* %2, align 4
  store i64 %4, i64* %3, align 4
  %arrayidx10 = getelementptr %struct.minmax, %struct.minmax* %m, i64 0, i32 0, i64 2
  %5 = bitcast %struct.minmax_sample* %arrayidx10 to i64*
  %6 = load i64, i64* %5, align 4
  store i64 %6, i64* %2, align 4
  %7 = bitcast %struct.minmax_sample* %val to i64*
  %8 = load i64, i64* %7, align 4
  store i64 %8, i64* %5, align 4
  %9 = load i32, i32* %t, align 4
  %10 = trunc i64 %4 to i32
  %sub17 = sub i32 %9, %10
  %cmp18 = icmp ugt i32 %sub17, %win
  br i1 %cmp18, label %if.then27, label %if.end85, !prof !9

if.then27:                                        ; preds = %if.then
  store i64 %6, i64* %3, align 4
  store i64 %8, i64* %2, align 4
  %11 = load i64, i64* %7, align 4
  store i64 %11, i64* %5, align 4
  br label %if.end85

if.else:                                          ; preds = %entry
  %t40 = getelementptr inbounds %struct.minmax_sample, %struct.minmax_sample* %arrayidx6, i64 0, i32 0
  %12 = load i32, i32* %t40, align 4
  %cmp44 = icmp eq i32 %12, %1
  br i1 %cmp44, label %land.lhs.true, label %if.else60, !prof !9

land.lhs.true:                                    ; preds = %if.else
  %div = lshr i32 %win, 2
  %cmp53 = icmp ugt i32 %sub, %div
  br i1 %cmp53, label %if.then55, label %if.else60

if.then55:                                        ; preds = %land.lhs.true
  %arrayidx57 = getelementptr %struct.minmax, %struct.minmax* %m, i64 0, i32 0, i64 2
  %13 = bitcast %struct.minmax_sample* %val to i64*
  %14 = bitcast %struct.minmax_sample* %arrayidx6 to i64*
  %15 = load i64, i64* %13, align 4
  store i64 %15, i64* %14, align 4
  %16 = bitcast %struct.minmax_sample* %arrayidx57 to i64*
  store i64 %15, i64* %16, align 4
  br label %if.end85

if.else60:                                        ; preds = %land.lhs.true, %if.else
  %arrayidx62 = getelementptr %struct.minmax, %struct.minmax* %m, i64 0, i32 0, i64 2
  %t63 = getelementptr inbounds %struct.minmax_sample, %struct.minmax_sample* %arrayidx62, i64 0, i32 0
  %17 = load i32, i32* %t63, align 4
  %cmp67 = icmp eq i32 %17, %12
  br i1 %cmp67, label %land.lhs.true76, label %if.end85, !prof !9

land.lhs.true76:                                  ; preds = %if.else60
  %div77 = lshr i32 %win, 1
  %cmp78 = icmp ugt i32 %sub, %div77
  br i1 %cmp78, label %if.then80, label %if.end85

if.then80:                                        ; preds = %land.lhs.true76
  %18 = bitcast %struct.minmax_sample* %val to i64*
  %19 = bitcast %struct.minmax_sample* %arrayidx62 to i64*
  %20 = load i64, i64* %18, align 4
  store i64 %20, i64* %19, align 4
  br label %if.end85

if.end85:                                         ; preds = %if.then55, %if.then80, %land.lhs.true76, %if.else60, %if.then, %if.then27
  %v = getelementptr inbounds %struct.minmax, %struct.minmax* %m, i64 0, i32 0, i64 0, i32 1
  %21 = load i32, i32* %v, align 4
  ret i32 %21
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: mustprogress nofree noinline nosync nounwind null_pointer_is_valid willreturn
define dso_local i32 @minmax_running_min(%struct.minmax* nocapture noundef %m, i32 noundef %win, i32 noundef %t, i32 noundef %meas) local_unnamed_addr #0 {
entry:
  %val = alloca i64, align 8, !annotation !7
  %tmpcast = bitcast i64* %val to %struct.minmax_sample*, !annotation !7
  %0 = bitcast i64* %val to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #3
  %t1 = bitcast i64* %val to i32*
  store i32 %t, i32* %t1, align 8
  %v = getelementptr inbounds %struct.minmax_sample, %struct.minmax_sample* %tmpcast, i64 0, i32 1
  store i32 %meas, i32* %v, align 4
  %v3 = getelementptr inbounds %struct.minmax, %struct.minmax* %m, i64 0, i32 0, i64 0, i32 1
  %1 = load i32, i32* %v3, align 4
  %cmp.not = icmp ult i32 %1, %meas
  br i1 %cmp.not, label %lor.lhs.false, label %if.then, !prof !8

lor.lhs.false:                                    ; preds = %entry
  %arrayidx7 = getelementptr %struct.minmax, %struct.minmax* %m, i64 0, i32 0, i64 2
  %t8 = getelementptr inbounds %struct.minmax_sample, %struct.minmax_sample* %arrayidx7, i64 0, i32 0
  %2 = load i32, i32* %t8, align 4
  %sub = sub i32 %t, %2
  %cmp9 = icmp ugt i32 %sub, %win
  br i1 %cmp9, label %if.then, label %if.end, !prof !9

if.then:                                          ; preds = %lor.lhs.false, %entry
  %call = call fastcc i32 @minmax_reset(%struct.minmax* noundef %m, i32 noundef %t, i32 noundef %meas) #4
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %v21 = getelementptr %struct.minmax, %struct.minmax* %m, i64 0, i32 0, i64 1, i32 1
  %3 = load i32, i32* %v21, align 4
  %cmp22.not = icmp ult i32 %3, %meas
  br i1 %cmp22.not, label %if.else, label %if.then31, !prof !8

if.then31:                                        ; preds = %if.end
  %arrayidx20 = getelementptr %struct.minmax, %struct.minmax* %m, i64 0, i32 0, i64 1
  %4 = bitcast %struct.minmax_sample* %arrayidx20 to i64*
  %5 = load i64, i64* %val, align 8
  store i64 %5, i64* %4, align 4
  %6 = bitcast %struct.minmax_sample* %arrayidx7 to i64*
  store i64 %5, i64* %6, align 4
  br label %if.end53

if.else:                                          ; preds = %if.end
  %v39 = getelementptr %struct.minmax, %struct.minmax* %m, i64 0, i32 0, i64 2, i32 1
  %7 = load i32, i32* %v39, align 4
  %cmp40.not = icmp ult i32 %7, %meas
  br i1 %cmp40.not, label %if.end53, label %if.then49, !prof !8

if.then49:                                        ; preds = %if.else
  %8 = bitcast %struct.minmax_sample* %arrayidx7 to i64*
  %9 = load i64, i64* %val, align 8
  store i64 %9, i64* %8, align 4
  br label %if.end53

if.end53:                                         ; preds = %if.else, %if.then49, %if.then31
  %call54 = call fastcc i32 @minmax_subwin_update(%struct.minmax* noundef %m, i32 noundef %win, %struct.minmax_sample* noundef nonnull %tmpcast) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end53, %if.then
  %retval.0 = phi i32 [ %call, %if.then ], [ %call54, %if.end53 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #3
  ret i32 %retval.0
}

attributes #0 = { mustprogress nofree noinline nosync nounwind null_pointer_is_valid willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #3 = { nounwind }
attributes #4 = { nobuiltin "no-builtins" }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}

!0 = !{i32 1, !"wchar_size", i32 2}
!1 = !{i32 1, !"branch-target-enforcement", i32 0}
!2 = !{i32 1, !"sign-return-address", i32 0}
!3 = !{i32 1, !"sign-return-address-all", i32 0}
!4 = !{i32 1, !"sign-return-address-with-bkey", i32 0}
!5 = !{i32 7, !"frame-pointer", i32 1}
!6 = !{!"clang version 14.0.0"}
!7 = !{!"auto-init"}
!8 = !{!"branch_weights", i32 2000, i32 1}
!9 = !{!"branch_weights", i32 1, i32 2000}
