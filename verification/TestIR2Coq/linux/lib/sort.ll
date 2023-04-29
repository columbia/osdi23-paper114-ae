; ModuleID = 'lib/sort.c'
source_filename = "lib/sort.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @sort_r(i8* noundef %base, i64 noundef %num, i64 noundef %size, i32 (i8*, i8*, i8*)* noundef %cmp_func, void (i8*, i8*, i32)* noundef %swap_func, i8* noundef %priv) local_unnamed_addr #0 {
entry:
  %mul = mul i64 %size, %num
  %div = lshr i64 %num, 1
  %mul1 = mul i64 %div, %size
  %sub = sub i64 0, %size
  %and = and i64 %sub, %size
  %tobool.not = icmp eq i64 %mul1, 0
  br i1 %tobool.not, label %cleanup53, label %if.end

if.end:                                           ; preds = %entry
  %tobool2.not = icmp eq void (i8*, i8*, i32)* %swap_func, null
  br i1 %tobool2.not, label %if.then3, label %if.end10

if.then3:                                         ; preds = %if.end
  %conv.i = trunc i64 %size to i32
  %and.i = and i32 %conv.i, 7
  %cmp.i = icmp eq i32 %and.i, 0
  br i1 %cmp.i, label %if.end10, label %if.else

if.else:                                          ; preds = %if.then3
  %and.i116 = and i32 %conv.i, 3
  %cmp.i117 = icmp eq i32 %and.i116, 0
  %. = select i1 %cmp.i117, void (i8*, i8*, i32)* inttoptr (i64 1 to void (i8*, i8*, i32)*), void (i8*, i8*, i32)* inttoptr (i64 2 to void (i8*, i8*, i32)*)
  br label %if.end10

if.end10:                                         ; preds = %if.else, %if.then3, %if.end
  %swap_func.addr.0 = phi void (i8*, i8*, i32)* [ %swap_func, %if.end ], [ null, %if.then3 ], [ %., %if.else ]
  %conv.i118 = and i64 %and, 4294967295
  br label %for.cond

for.cond:                                         ; preds = %for.cond.backedge, %if.end10
  %n.0 = phi i64 [ %mul, %if.end10 ], [ %n.1, %for.cond.backedge ]
  %a.0 = phi i64 [ %mul1, %if.end10 ], [ %a.1, %for.cond.backedge ]
  %tobool11.not = icmp eq i64 %a.0, 0
  br i1 %tobool11.not, label %if.else14, label %if.then12

if.then12:                                        ; preds = %for.cond
  %sub13 = sub i64 %a.0, %size
  br label %if.end20

if.else14:                                        ; preds = %for.cond
  %sub15 = sub i64 %n.0, %size
  %tobool16.not = icmp eq i64 %sub15, 0
  br i1 %tobool16.not, label %cleanup53, label %if.then17

if.then17:                                        ; preds = %if.else14
  %add.ptr = getelementptr i8, i8* %base, i64 %sub15
  call fastcc void @do_swap(i8* noundef %base, i8* noundef %add.ptr, i64 noundef %size, void (i8*, i8*, i32)* noundef %swap_func.addr.0) #2
  br label %if.end20

if.end20:                                         ; preds = %if.then17, %if.then12
  %n.1 = phi i64 [ %n.0, %if.then12 ], [ %sub15, %if.then17 ]
  %a.1 = phi i64 [ %sub13, %if.then12 ], [ 0, %if.then17 ]
  %mul22131 = shl i64 %a.1, 1
  %add132 = add i64 %mul22131, %size
  %add23133 = add i64 %add132, %size
  %cmp134 = icmp ult i64 %add23133, %n.1
  br i1 %cmp134, label %for.body, label %for.end

for.body:                                         ; preds = %if.end20, %for.body
  %add23136 = phi i64 [ %add23, %for.body ], [ %add23133, %if.end20 ]
  %add135 = phi i64 [ %add, %for.body ], [ %add132, %if.end20 ]
  %add.ptr25 = getelementptr i8, i8* %base, i64 %add135
  %add.ptr26 = getelementptr i8, i8* %base, i64 %add23136
  %call27 = call fastcc i32 @do_cmp(i8* noundef %add.ptr25, i8* noundef %add.ptr26, i32 (i8*, i8*, i8*)* noundef %cmp_func, i8* noundef %priv) #2
  %cmp28 = icmp sgt i32 %call27, -1
  %cond = select i1 %cmp28, i64 %add135, i64 %add23136
  %mul22 = shl i64 %cond, 1
  %add = add i64 %mul22, %size
  %add23 = add i64 %add, %size
  %cmp = icmp ult i64 %add23, %n.1
  br i1 %cmp, label %for.body, label %for.end

for.end:                                          ; preds = %for.body, %if.end20
  %b.0.lcssa = phi i64 [ %a.1, %if.end20 ], [ %cond, %for.body ]
  %add.lcssa = phi i64 [ %add132, %if.end20 ], [ %add, %for.body ]
  %add23.lcssa = phi i64 [ %add23133, %if.end20 ], [ %add23, %for.body ]
  %cmp30 = icmp eq i64 %add23.lcssa, %n.1
  %spec.select = select i1 %cmp30, i64 %add.lcssa, i64 %b.0.lcssa
  %add.ptr36 = getelementptr i8, i8* %base, i64 %a.1
  %cmp34.not139 = icmp eq i64 %spec.select, %a.1
  br i1 %cmp34.not139, label %for.cond.backedge, label %land.rhs

for.cond.backedge:                                ; preds = %while.body, %while.body45, %for.end, %while.end
  br label %for.cond

land.rhs:                                         ; preds = %for.end, %while.body
  %b.2140 = phi i64 [ %div.i, %while.body ], [ %spec.select, %for.end ]
  %add.ptr37 = getelementptr i8, i8* %base, i64 %b.2140
  %call38 = call fastcc i32 @do_cmp(i8* noundef %add.ptr36, i8* noundef %add.ptr37, i32 (i8*, i8*, i8*)* noundef %cmp_func, i8* noundef %priv) #2
  %cmp39 = icmp sgt i32 %call38, -1
  br i1 %cmp39, label %while.body, label %while.end

while.body:                                       ; preds = %land.rhs
  %sub.i = sub i64 %b.2140, %size
  %and.i119 = and i64 %conv.i118, %sub.i
  %sub1.i = sub nsw i64 0, %and.i119
  %and2.i = and i64 %sub1.i, %size
  %sub3.i = sub i64 %sub.i, %and2.i
  %div.i = lshr i64 %sub3.i, 1
  %cmp34.not = icmp eq i64 %div.i, %a.1
  br i1 %cmp34.not, label %for.cond.backedge, label %land.rhs

while.end:                                        ; preds = %land.rhs
  %cmp43.not143 = icmp eq i64 %b.2140, %a.1
  br i1 %cmp43.not143, label %for.cond.backedge, label %while.body45.lr.ph

while.body45.lr.ph:                               ; preds = %while.end
  %add.ptr48 = getelementptr i8, i8* %base, i64 %b.2140
  br label %while.body45

while.body45:                                     ; preds = %while.body45.lr.ph, %while.body45
  %b.3144 = phi i64 [ %b.2140, %while.body45.lr.ph ], [ %div.i126, %while.body45 ]
  %sub.i120 = sub i64 %b.3144, %size
  %and.i122 = and i64 %conv.i118, %sub.i120
  %sub1.i123 = sub nsw i64 0, %and.i122
  %and2.i124 = and i64 %sub1.i123, %size
  %sub3.i125 = sub i64 %sub.i120, %and2.i124
  %div.i126 = lshr i64 %sub3.i125, 1
  %add.ptr47 = getelementptr i8, i8* %base, i64 %div.i126
  call fastcc void @do_swap(i8* noundef %add.ptr47, i8* noundef %add.ptr48, i64 noundef %size, void (i8*, i8*, i32)* noundef %swap_func.addr.0) #2
  %cmp43.not = icmp eq i64 %div.i126, %a.1
  br i1 %cmp43.not, label %for.cond.backedge, label %while.body45

cleanup53:                                        ; preds = %if.else14, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_swap(i8* noundef %a, i8* noundef %b, i64 noundef %size, void (i8*, i8*, i32)* noundef %swap_func) unnamed_addr #0 {
entry:
  %magicptr21 = ptrtoint void (i8*, i8*, i32)* %swap_func to i64
  switch i64 %magicptr21, label %if.else6 [
    i64 0, label %if.then
    i64 1, label %if.then2
    i64 2, label %if.then5
  ]

if.then:                                          ; preds = %entry
  call fastcc void @swap_words_64(i8* noundef %a, i8* noundef %b, i64 noundef %size) #2
  br label %if.end8

if.then2:                                         ; preds = %entry
  call fastcc void @swap_words_32(i8* noundef %a, i8* noundef %b, i64 noundef %size) #2
  br label %if.end8

if.then5:                                         ; preds = %entry
  call fastcc void @swap_bytes(i8* noundef %a, i8* noundef %b, i64 noundef %size) #2
  br label %if.end8

if.else6:                                         ; preds = %entry
  %conv = trunc i64 %size to i32
  call void %swap_func(i8* noundef %a, i8* noundef %b, i32 noundef %conv) #3
  br label %if.end8

if.end8:                                          ; preds = %if.then2, %if.else6, %if.then5, %if.then
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @do_cmp(i8* noundef %a, i8* noundef %b, i32 (i8*, i8*, i8*)* noundef readonly %cmp, i8* noundef %priv) unnamed_addr #0 {
entry:
  %cmp1 = icmp eq i32 (i8*, i8*, i8*)* %cmp, null
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = bitcast i8* %priv to i32 (i8*, i8*)*
  %call = call i32 %0(i8* noundef %a, i8* noundef %b) #3
  br label %return

if.end:                                           ; preds = %entry
  %call2 = call i32 %cmp(i8* noundef %a, i8* noundef %b, i8* noundef %priv) #3
  br label %return

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %call, %if.then ], [ %call2, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @sort(i8* noundef %base, i64 noundef %num, i64 noundef %size, i32 (i8*, i8*)* noundef %cmp_func, void (i8*, i8*, i32)* noundef %swap_func) local_unnamed_addr #0 {
entry:
  %0 = bitcast i32 (i8*, i8*)* %cmp_func to i8*
  call void @sort_r(i8* noundef %base, i64 noundef %num, i64 noundef %size, i32 (i8*, i8*, i8*)* noundef null, void (i8*, i8*, i32)* noundef %swap_func, i8* noundef %0) #2
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind null_pointer_is_valid
define internal fastcc void @swap_words_64(i8* nocapture noundef %a, i8* nocapture noundef %b, i64 noundef %n) unnamed_addr #1 {
entry:
  br label %do.body

do.body:                                          ; preds = %do.body, %entry
  %n.addr.0 = phi i64 [ %n, %entry ], [ %sub, %do.body ]
  %sub = add i64 %n.addr.0, -8
  %add.ptr = getelementptr i8, i8* %a, i64 %sub
  %0 = bitcast i8* %add.ptr to i64*
  %1 = load i64, i64* %0, align 8
  %add.ptr1 = getelementptr i8, i8* %b, i64 %sub
  %2 = bitcast i8* %add.ptr1 to i64*
  %3 = load i64, i64* %2, align 8
  store i64 %3, i64* %0, align 8
  store i64 %1, i64* %2, align 8
  %tobool.not = icmp eq i64 %sub, 0
  br i1 %tobool.not, label %do.end, label %do.body

do.end:                                           ; preds = %do.body
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind null_pointer_is_valid
define internal fastcc void @swap_words_32(i8* nocapture noundef %a, i8* nocapture noundef %b, i64 noundef %n) unnamed_addr #1 {
entry:
  br label %do.body

do.body:                                          ; preds = %do.body, %entry
  %n.addr.0 = phi i64 [ %n, %entry ], [ %sub, %do.body ]
  %sub = add i64 %n.addr.0, -4
  %add.ptr = getelementptr i8, i8* %a, i64 %sub
  %0 = bitcast i8* %add.ptr to i32*
  %1 = load i32, i32* %0, align 4
  %add.ptr1 = getelementptr i8, i8* %b, i64 %sub
  %2 = bitcast i8* %add.ptr1 to i32*
  %3 = load i32, i32* %2, align 4
  store i32 %3, i32* %0, align 4
  store i32 %1, i32* %2, align 4
  %tobool.not = icmp eq i64 %sub, 0
  br i1 %tobool.not, label %do.end, label %do.body

do.end:                                           ; preds = %do.body
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind null_pointer_is_valid
define internal fastcc void @swap_bytes(i8* nocapture noundef %a, i8* nocapture noundef %b, i64 noundef %n) unnamed_addr #1 {
entry:
  br label %do.body

do.body:                                          ; preds = %do.body, %entry
  %n.addr.0 = phi i64 [ %n, %entry ], [ %dec, %do.body ]
  %dec = add i64 %n.addr.0, -1
  %arrayidx = getelementptr i8, i8* %a, i64 %dec
  %0 = load i8, i8* %arrayidx, align 1
  %arrayidx1 = getelementptr i8, i8* %b, i64 %dec
  %1 = load i8, i8* %arrayidx1, align 1
  store i8 %1, i8* %arrayidx, align 1
  store i8 %0, i8* %arrayidx1, align 1
  %tobool.not = icmp eq i64 %dec, 0
  br i1 %tobool.not, label %do.end, label %do.body

do.end:                                           ; preds = %do.body
  ret void
}

attributes #0 = { noinline nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #1 = { nofree noinline norecurse nosync nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #2 = { nobuiltin "no-builtins" }
attributes #3 = { nobuiltin nounwind "no-builtins" }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}

!0 = !{i32 1, !"wchar_size", i32 2}
!1 = !{i32 1, !"branch-target-enforcement", i32 0}
!2 = !{i32 1, !"sign-return-address", i32 0}
!3 = !{i32 1, !"sign-return-address-all", i32 0}
!4 = !{i32 1, !"sign-return-address-with-bkey", i32 0}
!5 = !{i32 7, !"frame-pointer", i32 1}
!6 = !{!"clang version 14.0.0"}
