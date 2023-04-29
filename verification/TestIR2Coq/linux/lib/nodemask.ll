; ModuleID = 'lib/nodemask.c'
source_filename = "lib/nodemask.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

%struct.nodemask_t = type { [1 x i64] }

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define dso_local i32 @__next_node_in(i32 noundef %node, %struct.nodemask_t* nocapture noundef readonly %srcp) local_unnamed_addr #0 {
entry:
  %call = call fastcc i32 @__next_node(i32 noundef %node, %struct.nodemask_t* noundef %srcp) #1
  %cmp = icmp eq i32 %call, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call1 = call fastcc i32 @__first_node(%struct.nodemask_t* noundef %srcp) #1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %ret.0 = phi i32 [ %call1, %if.then ], [ 0, %entry ]
  ret i32 %ret.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @__next_node(i32 noundef %n, %struct.nodemask_t* nocapture noundef readonly %srcp) unnamed_addr #0 {
entry:
  %arraydecay = getelementptr inbounds %struct.nodemask_t, %struct.nodemask_t* %srcp, i64 0, i32 0, i64 0
  %add = add i32 %n, 1
  %conv = sext i32 %add to i64
  %call = call fastcc i64 @find_next_bit(i64* noundef %arraydecay, i64 noundef %conv) #1
  %conv1 = trunc i64 %call to i32
  ret i32 %conv1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @__first_node(%struct.nodemask_t* nocapture noundef readonly %srcp) unnamed_addr #0 {
entry:
  %arraydecay = getelementptr inbounds %struct.nodemask_t, %struct.nodemask_t* %srcp, i64 0, i32 0, i64 0
  %call = call fastcc i64 @find_first_bit(i64* noundef %arraydecay) #1
  %conv = trunc i64 %call to i32
  ret i32 %conv
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i64 @find_next_bit(i64* nocapture noundef readonly %addr, i64 noundef %offset) unnamed_addr #0 {
entry:
  %cmp3.not = icmp eq i64 %offset, 0
  br i1 %cmp3.not, label %if.end, label %return, !prof !7

if.end:                                           ; preds = %entry
  %0 = load i64, i64* %addr, align 8
  %and9 = and i64 %0, 1
  %1 = xor i64 %and9, 1
  br label %return

return:                                           ; preds = %if.end, %entry
  %retval.0 = phi i64 [ 1, %entry ], [ %1, %if.end ]
  ret i64 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i64 @find_first_bit(i64* nocapture noundef readonly %addr) unnamed_addr #0 {
entry:
  %0 = load i64, i64* %addr, align 8
  %and4 = and i64 %0, 1
  %1 = xor i64 %and4, 1
  ret i64 %1
}

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #1 = { nobuiltin "no-builtins" }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}

!0 = !{i32 1, !"wchar_size", i32 2}
!1 = !{i32 1, !"branch-target-enforcement", i32 0}
!2 = !{i32 1, !"sign-return-address", i32 0}
!3 = !{i32 1, !"sign-return-address-all", i32 0}
!4 = !{i32 1, !"sign-return-address-with-bkey", i32 0}
!5 = !{i32 7, !"frame-pointer", i32 1}
!6 = !{!"clang version 14.0.0"}
!7 = !{!"branch_weights", i32 2000, i32 1}
