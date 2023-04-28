; ModuleID = 'kernel/time/timecounter.c'
source_filename = "kernel/time/timecounter.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

%struct.timecounter = type { %struct.cyclecounter*, i64, i64, i64, i64 }
%struct.cyclecounter = type { i64 (%struct.cyclecounter*)*, i64, i32, i32 }

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @timecounter_init(%struct.timecounter* nocapture noundef writeonly %tc, %struct.cyclecounter* noundef %cc, i64 noundef %start_tstamp) local_unnamed_addr #0 {
entry:
  %cc1 = getelementptr inbounds %struct.timecounter, %struct.timecounter* %tc, i64 0, i32 0
  store %struct.cyclecounter* %cc, %struct.cyclecounter** %cc1, align 8
  %read = getelementptr inbounds %struct.cyclecounter, %struct.cyclecounter* %cc, i64 0, i32 0
  %0 = load i64 (%struct.cyclecounter*)*, i64 (%struct.cyclecounter*)** %read, align 8
  %call = call i64 %0(%struct.cyclecounter* noundef %cc) #5
  %cycle_last = getelementptr inbounds %struct.timecounter, %struct.timecounter* %tc, i64 0, i32 1
  store i64 %call, i64* %cycle_last, align 8
  %nsec = getelementptr inbounds %struct.timecounter, %struct.timecounter* %tc, i64 0, i32 2
  store i64 %start_tstamp, i64* %nsec, align 8
  %shift = getelementptr inbounds %struct.cyclecounter, %struct.cyclecounter* %cc, i64 0, i32 3
  %1 = load i32, i32* %shift, align 4
  %sh_prom = zext i32 %1 to i64
  %notmask = shl nsw i64 -1, %sh_prom
  %sub = xor i64 %notmask, -1
  %mask = getelementptr inbounds %struct.timecounter, %struct.timecounter* %tc, i64 0, i32 3
  store i64 %sub, i64* %mask, align 8
  %frac = getelementptr inbounds %struct.timecounter, %struct.timecounter* %tc, i64 0, i32 4
  store i64 0, i64* %frac, align 8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @timecounter_read(%struct.timecounter* nocapture noundef %tc) local_unnamed_addr #0 {
entry:
  %call = call fastcc i64 @timecounter_read_delta(%struct.timecounter* noundef %tc) #6
  %nsec1 = getelementptr inbounds %struct.timecounter, %struct.timecounter* %tc, i64 0, i32 2
  %0 = load i64, i64* %nsec1, align 8
  %add = add i64 %0, %call
  store i64 %add, i64* %nsec1, align 8
  ret i64 %add
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @timecounter_read_delta(%struct.timecounter* nocapture noundef %tc) unnamed_addr #0 {
entry:
  %cc = getelementptr inbounds %struct.timecounter, %struct.timecounter* %tc, i64 0, i32 0
  %0 = load %struct.cyclecounter*, %struct.cyclecounter** %cc, align 8
  %read = getelementptr inbounds %struct.cyclecounter, %struct.cyclecounter* %0, i64 0, i32 0
  %1 = load i64 (%struct.cyclecounter*)*, i64 (%struct.cyclecounter*)** %read, align 8
  %call = call i64 %1(%struct.cyclecounter* noundef %0) #5
  %cycle_last = getelementptr inbounds %struct.timecounter, %struct.timecounter* %tc, i64 0, i32 1
  %2 = load i64, i64* %cycle_last, align 8
  %sub = sub i64 %call, %2
  %3 = load %struct.cyclecounter*, %struct.cyclecounter** %cc, align 8
  %mask = getelementptr inbounds %struct.cyclecounter, %struct.cyclecounter* %3, i64 0, i32 1
  %4 = load i64, i64* %mask, align 8
  %and = and i64 %4, %sub
  %mask4 = getelementptr inbounds %struct.timecounter, %struct.timecounter* %tc, i64 0, i32 3
  %5 = load i64, i64* %mask4, align 8
  %frac = getelementptr inbounds %struct.timecounter, %struct.timecounter* %tc, i64 0, i32 4
  %call5 = call fastcc i64 @cyclecounter_cyc2ns(%struct.cyclecounter* noundef %3, i64 noundef %and, i64 noundef %5, i64* noundef %frac) #6
  store i64 %call, i64* %cycle_last, align 8
  ret i64 %call5
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: mustprogress nofree noinline nosync nounwind null_pointer_is_valid willreturn
define dso_local i64 @timecounter_cyc2time(%struct.timecounter* nocapture noundef readonly %tc, i64 noundef %cycle_tstamp) local_unnamed_addr #2 {
entry:
  %frac = alloca i64, align 8
  %cycle_last = getelementptr inbounds %struct.timecounter, %struct.timecounter* %tc, i64 0, i32 1
  %0 = load i64, i64* %cycle_last, align 8
  %sub = sub i64 %cycle_tstamp, %0
  %cc = getelementptr inbounds %struct.timecounter, %struct.timecounter* %tc, i64 0, i32 0
  %1 = load %struct.cyclecounter*, %struct.cyclecounter** %cc, align 8
  %mask = getelementptr inbounds %struct.cyclecounter, %struct.cyclecounter* %1, i64 0, i32 1
  %2 = load i64, i64* %mask, align 8
  %and = and i64 %2, %sub
  %nsec1 = getelementptr inbounds %struct.timecounter, %struct.timecounter* %tc, i64 0, i32 2
  %3 = load i64, i64* %nsec1, align 8
  %4 = bitcast i64* %frac to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #7
  %frac2 = getelementptr inbounds %struct.timecounter, %struct.timecounter* %tc, i64 0, i32 4
  %5 = load i64, i64* %frac2, align 8
  store i64 %5, i64* %frac, align 8
  %div = lshr i64 %2, 1
  %cmp = icmp ugt i64 %and, %div
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %sub6 = sub i64 %0, %cycle_tstamp
  %and9 = and i64 %2, %sub6
  %call = call fastcc i64 @cc_cyc2ns_backwards(%struct.cyclecounter* noundef %1, i64 noundef %and9, i64 noundef %5) #6
  %sub12 = sub i64 %3, %call
  br label %if.end

if.else:                                          ; preds = %entry
  %mask14 = getelementptr inbounds %struct.timecounter, %struct.timecounter* %tc, i64 0, i32 3
  %6 = load i64, i64* %mask14, align 8
  %call15 = call fastcc i64 @cyclecounter_cyc2ns(%struct.cyclecounter* noundef %1, i64 noundef %and, i64 noundef %6, i64* noundef nonnull %frac) #6
  %add = add i64 %call15, %3
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %nsec.0 = phi i64 [ %sub12, %if.then ], [ %add, %if.else ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #7
  ret i64 %nsec.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i64 @cc_cyc2ns_backwards(%struct.cyclecounter* nocapture noundef readonly %cc, i64 noundef %cycles, i64 noundef %frac) unnamed_addr #3 {
entry:
  %mult = getelementptr inbounds %struct.cyclecounter, %struct.cyclecounter* %cc, i64 0, i32 2
  %0 = load i32, i32* %mult, align 8
  %conv = zext i32 %0 to i64
  %mul = mul i64 %conv, %cycles
  %sub = sub i64 %mul, %frac
  %shift = getelementptr inbounds %struct.cyclecounter, %struct.cyclecounter* %cc, i64 0, i32 3
  %1 = load i32, i32* %shift, align 4
  %sh_prom = zext i32 %1 to i64
  %shr = lshr i64 %sub, %sh_prom
  ret i64 %shr
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define internal fastcc i64 @cyclecounter_cyc2ns(%struct.cyclecounter* nocapture noundef readonly %cc, i64 noundef %cycles, i64 noundef %mask, i64* nocapture noundef %frac) unnamed_addr #4 {
entry:
  %mult = getelementptr inbounds %struct.cyclecounter, %struct.cyclecounter* %cc, i64 0, i32 2
  %0 = load i32, i32* %mult, align 8
  %conv = zext i32 %0 to i64
  %mul = mul i64 %conv, %cycles
  %1 = load i64, i64* %frac, align 8
  %add = add i64 %mul, %1
  %and = and i64 %add, %mask
  store i64 %and, i64* %frac, align 8
  %shift = getelementptr inbounds %struct.cyclecounter, %struct.cyclecounter* %cc, i64 0, i32 3
  %2 = load i32, i32* %shift, align 4
  %sh_prom = zext i32 %2 to i64
  %shr = lshr i64 %add, %sh_prom
  ret i64 %shr
}

attributes #0 = { noinline nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { mustprogress nofree noinline nosync nounwind null_pointer_is_valid willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #5 = { nobuiltin nounwind "no-builtins" }
attributes #6 = { nobuiltin "no-builtins" }
attributes #7 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}

!0 = !{i32 1, !"wchar_size", i32 2}
!1 = !{i32 1, !"branch-target-enforcement", i32 0}
!2 = !{i32 1, !"sign-return-address", i32 0}
!3 = !{i32 1, !"sign-return-address-all", i32 0}
!4 = !{i32 1, !"sign-return-address-with-bkey", i32 0}
!5 = !{i32 7, !"frame-pointer", i32 1}
!6 = !{!"clang version 14.0.0"}
