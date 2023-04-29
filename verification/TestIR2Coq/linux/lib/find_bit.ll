; ModuleID = 'lib/find_bit.c'
source_filename = "lib/find_bit.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

; Function Attrs: nofree noinline nosync nounwind null_pointer_is_valid readonly
define dso_local i64 @_find_next_bit(i64* nocapture noundef readonly %addr1, i64* noundef readonly %addr2, i64 noundef %nbits, i64 noundef %start, i64 noundef %invert, i64 noundef %le) local_unnamed_addr #0 {
entry:
  %cmp.not = icmp ult i64 %start, %nbits
  br i1 %cmp.not, label %if.end, label %cleanup, !prof !7

if.end:                                           ; preds = %entry
  %div = lshr i64 %start, 6
  %arrayidx = getelementptr i64, i64* %addr1, i64 %div
  %0 = load i64, i64* %arrayidx, align 8
  %tobool2.not = icmp eq i64* %addr2, null
  br i1 %tobool2.not, label %if.end6, label %if.then3

if.then3:                                         ; preds = %if.end
  %arrayidx5 = getelementptr i64, i64* %addr2, i64 %div
  %1 = load i64, i64* %arrayidx5, align 8
  %and = and i64 %1, %0
  br label %if.end6

if.end6:                                          ; preds = %if.then3, %if.end
  %tmp.0 = phi i64 [ %and, %if.then3 ], [ %0, %if.end ]
  %xor = xor i64 %tmp.0, %invert
  %and7 = and i64 %start, 63
  %shl = shl nsw i64 -1, %and7
  %tobool8.not = icmp eq i64 %le, 0
  br i1 %tobool8.not, label %if.end10, label %cond.false.i

cond.false.i:                                     ; preds = %if.end6
  %call.i = call fastcc i64 @__fswab64(i64 noundef %shl) #6
  br label %if.end10

if.end10:                                         ; preds = %cond.false.i, %if.end6
  %mask.0 = phi i64 [ %shl, %if.end6 ], [ %call.i, %cond.false.i ]
  %and11 = and i64 %mask.0, %xor
  %and12 = and i64 %start, -64
  %tobool13.not80 = icmp eq i64 %and11, 0
  br i1 %tobool13.not80, label %while.body, label %while.end

while.body:                                       ; preds = %if.end10, %if.end27
  %start.addr.081 = phi i64 [ %add, %if.end27 ], [ %and12, %if.end10 ]
  %add = add i64 %start.addr.081, 64
  %cmp16.not = icmp ult i64 %add, %nbits
  br i1 %cmp16.not, label %if.end19, label %cleanup

if.end19:                                         ; preds = %while.body
  %div20 = lshr exact i64 %add, 6
  %arrayidx21 = getelementptr i64, i64* %addr1, i64 %div20
  %2 = load i64, i64* %arrayidx21, align 8
  br i1 %tobool2.not, label %if.end27, label %if.then23

if.then23:                                        ; preds = %if.end19
  %arrayidx25 = getelementptr i64, i64* %addr2, i64 %div20
  %3 = load i64, i64* %arrayidx25, align 8
  %and26 = and i64 %3, %2
  br label %if.end27

if.end27:                                         ; preds = %if.then23, %if.end19
  %tmp.2 = phi i64 [ %and26, %if.then23 ], [ %2, %if.end19 ]
  %xor28 = xor i64 %tmp.2, %invert
  %tobool13.not = icmp eq i64 %xor28, 0
  br i1 %tobool13.not, label %while.body, label %while.end

while.end:                                        ; preds = %if.end27, %if.end10
  %tmp.1.lcssa = phi i64 [ %and11, %if.end10 ], [ %xor28, %if.end27 ]
  %start.addr.0.lcssa = phi i64 [ %and12, %if.end10 ], [ %add, %if.end27 ]
  br i1 %tobool8.not, label %if.end32, label %cond.false.i75

cond.false.i75:                                   ; preds = %while.end
  %call.i74 = call fastcc i64 @__fswab64(i64 noundef %tmp.1.lcssa) #6
  br label %if.end32

if.end32:                                         ; preds = %cond.false.i75, %while.end
  %tmp.3 = phi i64 [ %tmp.1.lcssa, %while.end ], [ %call.i74, %cond.false.i75 ]
  %4 = call i64 @llvm.cttz.i64(i64 %tmp.3, i1 false) #7, !range !8
  %add34 = add i64 %4, %start.addr.0.lcssa
  %cmp36 = icmp ult i64 %add34, %nbits
  %cond = select i1 %cmp36, i64 %add34, i64 %nbits
  br label %cleanup

cleanup:                                          ; preds = %while.body, %entry, %if.end32
  %retval.0 = phi i64 [ %cond, %if.end32 ], [ %nbits, %entry ], [ %nbits, %while.body ]
  ret i64 %retval.0
}

; Function Attrs: nofree noinline nosync nounwind null_pointer_is_valid readonly
define dso_local i64 @_find_first_bit(i64* nocapture noundef readonly %addr, i64 noundef %size) local_unnamed_addr #0 {
entry:
  %cmp17.not = icmp eq i64 %size, 0
  br i1 %cmp17.not, label %cleanup, label %for.body.preheader

for.body.preheader:                               ; preds = %entry
  %0 = load i64, i64* %addr, align 8
  %tobool.not26 = icmp eq i64 %0, 0
  br i1 %tobool.not26, label %for.cond, label %if.then

for.cond:                                         ; preds = %for.body.preheader, %for.body
  %inc27 = phi i64 [ %inc, %for.body ], [ 1, %for.body.preheader ]
  %mul = shl i64 %inc27, 6
  %cmp = icmp ult i64 %mul, %size
  br i1 %cmp, label %for.body, label %cleanup

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr i64, i64* %addr, i64 %inc27
  %1 = load i64, i64* %arrayidx, align 8
  %tobool.not = icmp eq i64 %1, 0
  %inc = add i64 %inc27, 1
  br i1 %tobool.not, label %for.cond, label %if.then

if.then:                                          ; preds = %for.body, %for.body.preheader
  %mul19.lcssa = phi i64 [ 0, %for.body.preheader ], [ %mul, %for.body ]
  %.lcssa = phi i64 [ %0, %for.body.preheader ], [ %1, %for.body ]
  %2 = call i64 @llvm.cttz.i64(i64 %.lcssa, i1 true) #7, !range !8
  %add = or i64 %2, %mul19.lcssa
  %cmp3 = icmp ult i64 %add, %size
  %cond = select i1 %cmp3, i64 %add, i64 %size
  br label %cleanup

cleanup:                                          ; preds = %for.cond, %entry, %if.then
  %retval.0 = phi i64 [ %cond, %if.then ], [ 0, %entry ], [ %size, %for.cond ]
  ret i64 %retval.0
}

; Function Attrs: nofree noinline nosync nounwind null_pointer_is_valid readonly
define dso_local i64 @_find_first_zero_bit(i64* nocapture noundef readonly %addr, i64 noundef %size) local_unnamed_addr #0 {
entry:
  %cmp18.not = icmp eq i64 %size, 0
  br i1 %cmp18.not, label %cleanup, label %for.body.preheader

for.body.preheader:                               ; preds = %entry
  %0 = load i64, i64* %addr, align 8
  %cmp1.not27 = icmp eq i64 %0, -1
  br i1 %cmp1.not27, label %for.cond, label %if.then

for.cond:                                         ; preds = %for.body.preheader, %for.body
  %inc28 = phi i64 [ %inc, %for.body ], [ 1, %for.body.preheader ]
  %mul = shl i64 %inc28, 6
  %cmp = icmp ult i64 %mul, %size
  br i1 %cmp, label %for.body, label %cleanup

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr i64, i64* %addr, i64 %inc28
  %1 = load i64, i64* %arrayidx, align 8
  %cmp1.not = icmp eq i64 %1, -1
  %inc = add i64 %inc28, 1
  br i1 %cmp1.not, label %for.cond, label %if.then

if.then:                                          ; preds = %for.body, %for.body.preheader
  %mul20.lcssa = phi i64 [ 0, %for.body.preheader ], [ %mul, %for.body ]
  %.lcssa = phi i64 [ %0, %for.body.preheader ], [ %1, %for.body ]
  %neg = xor i64 %.lcssa, -1
  %2 = call i64 @llvm.cttz.i64(i64 %neg, i1 false) #7, !range !8
  %add = add i64 %2, %mul20.lcssa
  %cmp4 = icmp ult i64 %add, %size
  %cond = select i1 %cmp4, i64 %add, i64 %size
  br label %cleanup

cleanup:                                          ; preds = %for.cond, %entry, %if.then
  %retval.0 = phi i64 [ %cond, %if.then ], [ 0, %entry ], [ %size, %for.cond ]
  ret i64 %retval.0
}

; Function Attrs: nofree noinline nosync nounwind null_pointer_is_valid readonly
define dso_local i64 @_find_last_bit(i64* nocapture noundef readonly %addr, i64 noundef %size) local_unnamed_addr #0 {
entry:
  %tobool.not = icmp eq i64 %size, 0
  br i1 %tobool.not, label %return, label %if.then

if.then:                                          ; preds = %entry
  %sub = sub i64 0, %size
  %and = and i64 %sub, 63
  %shr = lshr i64 -1, %and
  %sub1 = add i64 %size, -1
  %div = lshr i64 %sub1, 6
  br label %do.body

do.body:                                          ; preds = %if.end, %if.then
  %val.0 = phi i64 [ %shr, %if.then ], [ -1, %if.end ]
  %idx.0 = phi i64 [ %div, %if.then ], [ %dec, %if.end ]
  %arrayidx = getelementptr i64, i64* %addr, i64 %idx.0
  %0 = load i64, i64* %arrayidx, align 8
  %and2 = and i64 %0, %val.0
  %tobool3.not = icmp eq i64 %and2, 0
  br i1 %tobool3.not, label %if.end, label %cleanup

if.end:                                           ; preds = %do.body
  %dec = add nsw i64 %idx.0, -1
  %tobool5.not = icmp eq i64 %idx.0, 0
  br i1 %tobool5.not, label %return, label %do.body

cleanup:                                          ; preds = %do.body
  %mul = shl i64 %idx.0, 6
  %1 = call i64 @llvm.ctlz.i64(i64 %and2, i1 true) #7, !range !8
  %2 = or i64 %1, %mul
  %add = xor i64 %2, 63
  br label %return

return:                                           ; preds = %if.end, %entry, %cleanup
  %retval.1 = phi i64 [ %add, %cleanup ], [ 0, %entry ], [ %size, %if.end ]
  ret i64 %retval.1
}

; Function Attrs: nofree noinline nosync nounwind null_pointer_is_valid
define dso_local i64 @find_next_clump8(i64* nocapture noundef writeonly %clump, i64* nocapture noundef readonly %addr, i64 noundef %size, i64 noundef %offset) local_unnamed_addr #1 {
entry:
  %call = call fastcc i64 @find_next_bit(i64* noundef %addr, i64 noundef %size, i64 noundef %offset) #8
  %cmp = icmp eq i64 %call, %size
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %and = and i64 %call, -8
  %call1 = call fastcc i64 @bitmap_get_value8(i64* noundef %addr, i64 noundef %and) #8
  store i64 %call1, i64* %clump, align 8
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i64 [ %and, %if.end ], [ %size, %entry ]
  ret i64 %retval.0
}

; Function Attrs: nofree noinline nosync nounwind null_pointer_is_valid readonly
define internal fastcc i64 @find_next_bit(i64* nocapture noundef readonly %addr, i64 noundef %size, i64 noundef %offset) unnamed_addr #0 {
entry:
  %call12 = call i64 @_find_next_bit(i64* noundef %addr, i64* noundef null, i64 noundef %size, i64 noundef %offset, i64 noundef 0, i64 noundef 0) #8
  ret i64 %call12
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i64 @bitmap_get_value8(i64* nocapture noundef readonly %map, i64 noundef %start) unnamed_addr #2 {
entry:
  %div = lshr i64 %start, 6
  %rem = and i64 %start, 63
  %arrayidx = getelementptr i64, i64* %map, i64 %div
  %0 = load i64, i64* %arrayidx, align 8
  %shr = lshr i64 %0, %rem
  %and = and i64 %shr, 255
  ret i64 %and
}

; Function Attrs: mustprogress nofree noinline nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i64 @__fswab64(i64 noundef %val) unnamed_addr #3 {
entry:
  %or19 = call i64 @llvm.bswap.i64(i64 %val)
  ret i64 %or19
}

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.cttz.i64(i64, i1 immarg) #4

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #4

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #5

attributes #0 = { nofree noinline nosync nounwind null_pointer_is_valid readonly "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #1 = { nofree noinline nosync nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #3 = { mustprogress nofree noinline nosync nounwind null_pointer_is_valid readnone willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #4 = { mustprogress nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nobuiltin nounwind readnone willreturn "no-builtins" }
attributes #7 = { nounwind }
attributes #8 = { nobuiltin "no-builtins" }

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
!8 = !{i64 0, i64 65}
