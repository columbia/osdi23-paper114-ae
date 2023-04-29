; ModuleID = 'lib/math/div64.c'
source_filename = "lib/math/div64.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @iter_div_u64_rem(i64 noundef %dividend, i32 noundef %divisor, i64* nocapture noundef writeonly %remainder) local_unnamed_addr #0 {
entry:
  %dividend.addr.i = alloca i64, align 8
  %0 = bitcast i64* %dividend.addr.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0)
  store i64 %dividend, i64* %dividend.addr.i, align 8
  %conv.i = zext i32 %divisor to i64
  %cmp.not6.i = icmp ugt i64 %conv.i, %dividend
  br i1 %cmp.not6.i, label %__iter_div_u64_rem.exit, label %while.body.i

while.body.i:                                     ; preds = %entry, %while.body.i
  %1 = phi i64 [ %sub.i, %while.body.i ], [ %dividend, %entry ]
  %ret.07.i = phi i32 [ %inc.i, %while.body.i ], [ 0, %entry ]
  call void asm "", "=*rm,0"(i64* nonnull elementtype(i64) %dividend.addr.i, i64 %1) #7, !srcloc !7
  %2 = load i64, i64* %dividend.addr.i, align 8
  %sub.i = sub i64 %2, %conv.i
  store i64 %sub.i, i64* %dividend.addr.i, align 8
  %inc.i = add i32 %ret.07.i, 1
  %cmp.not.i = icmp ult i64 %sub.i, %conv.i
  br i1 %cmp.not.i, label %__iter_div_u64_rem.exit, label %while.body.i

__iter_div_u64_rem.exit:                          ; preds = %while.body.i, %entry
  %ret.0.lcssa.i = phi i32 [ 0, %entry ], [ %inc.i, %while.body.i ]
  %.lcssa.i = phi i64 [ %dividend, %entry ], [ %sub.i, %while.body.i ]
  store i64 %.lcssa.i, i64* %remainder, align 8
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0)
  ret i32 %ret.0.lcssa.i
}

; Function Attrs: mustprogress nofree noinline nosync nounwind null_pointer_is_valid willreturn writeonly
define dso_local i64 @mul_u64_u64_div_u64(i64 noundef %a, i64 noundef %b, i64 noundef %c) local_unnamed_addr #1 {
entry:
  %rem = alloca i64, align 8
  %0 = bitcast i64* %rem to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #7
  store i64 0, i64* %rem, align 8, !annotation !8
  %call = call fastcc i32 @__ilog2_u64(i64 noundef %a) #8
  %call14 = call fastcc i32 @__ilog2_u64(i64 noundef %b) #8
  %add = add i32 %call14, %call
  %cmp17 = icmp sgt i32 %add, 62
  br i1 %cmp17, label %if.then, label %if.end51

if.then:                                          ; preds = %entry
  %call18 = call fastcc i64 @div64_u64_rem(i64 noundef %b, i64 noundef %c, i64* noundef nonnull %rem) #9
  %mul = mul i64 %call18, %a
  %1 = load i64, i64* %rem, align 8
  %call28 = call fastcc i32 @__ilog2_u64(i64 noundef %a) #8
  %call40 = call fastcc i32 @__ilog2_u64(i64 noundef %1) #8
  %add43 = add i32 %call28, -62
  %sub44 = add i32 %add43, %call40
  %cmp45 = icmp sgt i32 %sub44, 0
  br i1 %cmp45, label %if.then46, label %if.end51

if.then46:                                        ; preds = %if.then
  %sh_prom = zext i32 %sub44 to i64
  %shr = lshr i64 %1, %sh_prom
  %shr48 = lshr i64 %c, %sh_prom
  %tobool.not = icmp eq i64 %shr48, 0
  br i1 %tobool.not, label %cleanup, label %if.end51

if.end51:                                         ; preds = %if.then, %if.then46, %entry
  %b.addr.0 = phi i64 [ %shr, %if.then46 ], [ %1, %if.then ], [ %b, %entry ]
  %c.addr.0 = phi i64 [ %shr48, %if.then46 ], [ %c, %if.then ], [ %c, %entry ]
  %res.0 = phi i64 [ %mul, %if.then46 ], [ %mul, %if.then ], [ 0, %entry ]
  %mul52 = mul i64 %b.addr.0, %a
  %call53 = call fastcc i64 @div64_u64(i64 noundef %mul52, i64 noundef %c.addr.0) #9
  %add54 = add i64 %call53, %res.0
  br label %cleanup

cleanup:                                          ; preds = %if.then46, %if.end51
  %retval.0 = phi i64 [ %add54, %if.end51 ], [ %mul, %if.then46 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #7
  ret i64 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #3

; Function Attrs: mustprogress nofree noinline nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i32 @__ilog2_u64(i64 noundef %n) unnamed_addr #4 {
entry:
  %cmp.i = icmp eq i64 %n, 0
  %0 = call i64 @llvm.ctlz.i64(i64 %n, i1 false) #7, !range !9
  %1 = trunc i64 %0 to i32
  %conv.i.op = sub nsw i32 63, %1
  %sub = select i1 %cmp.i, i32 -1, i32 %conv.i.op
  ret i32 %sub
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn writeonly
define internal fastcc i64 @div64_u64_rem(i64 noundef %dividend, i64 noundef %divisor, i64* nocapture noundef writeonly %remainder) unnamed_addr #5 {
entry:
  %div = udiv i64 %dividend, %divisor
  %0 = mul i64 %div, %divisor
  %rem.decomposed = sub i64 %dividend, %0
  store i64 %rem.decomposed, i64* %remainder, align 8
  ret i64 %div
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i64 @div64_u64(i64 noundef %dividend, i64 noundef %divisor) unnamed_addr #6 {
entry:
  %div = udiv i64 %dividend, %divisor
  ret i64 %div
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

attributes #0 = { noinline nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #1 = { mustprogress nofree noinline nosync nounwind null_pointer_is_valid willreturn writeonly "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #2 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #3 = { mustprogress nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { mustprogress nofree noinline nosync nounwind null_pointer_is_valid readnone willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn writeonly "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #7 = { nounwind }
attributes #8 = { nobuiltin nounwind readnone willreturn "no-builtins" }
attributes #9 = { nobuiltin "no-builtins" }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}

!0 = !{i32 1, !"wchar_size", i32 2}
!1 = !{i32 1, !"branch-target-enforcement", i32 0}
!2 = !{i32 1, !"sign-return-address", i32 0}
!3 = !{i32 1, !"sign-return-address-all", i32 0}
!4 = !{i32 1, !"sign-return-address-with-bkey", i32 0}
!5 = !{i32 7, !"frame-pointer", i32 1}
!6 = !{!"clang version 14.0.0"}
!7 = !{i64 806468}
!8 = !{!"auto-init"}
!9 = !{i64 0, i64 65}
