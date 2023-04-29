; ModuleID = 'lib/kstrtox.c'
source_filename = "lib/kstrtox.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

@_ctype = external dso_local local_unnamed_addr constant [0 x i8], align 1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define dso_local i8* @_parse_integer_fixup_radix(i8* noundef readonly %s, i32* nocapture noundef %base) local_unnamed_addr #0 {
entry:
  %0 = load i32, i32* %base, align 4
  switch i32 %0, label %if.end32 [
    i32 0, label %if.then
    i32 16, label %land.lhs.true20
  ]

if.then:                                          ; preds = %entry
  %1 = load i8, i8* %s, align 1
  %cmp1 = icmp eq i8 %1, 48
  br i1 %cmp1, label %if.then3, label %if.else15

if.then3:                                         ; preds = %if.then
  %arrayidx4 = getelementptr i8, i8* %s, i64 1
  %2 = load i8, i8* %arrayidx4, align 1
  %call = call fastcc i8 @_tolower(i8 noundef %2) #11
  %cmp6 = icmp eq i8 %call, 120
  br i1 %cmp6, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.then3
  %arrayidx8 = getelementptr i8, i8* %s, i64 2
  %3 = load i8, i8* %arrayidx8, align 1
  %4 = zext i8 %3 to i64
  %arrayidx10 = getelementptr [0 x i8], [0 x i8]* @_ctype, i64 0, i64 %4
  %5 = load i8, i8* %arrayidx10, align 1
  %6 = and i8 %5, 68
  %cmp12.not = icmp eq i8 %6, 0
  br i1 %cmp12.not, label %if.else, label %if.end17.thread44

if.end17.thread44:                                ; preds = %land.lhs.true
  store i32 16, i32* %base, align 4
  br label %land.lhs.true20

if.else:                                          ; preds = %land.lhs.true, %if.then3
  store i32 8, i32* %base, align 4
  br label %if.end32

if.else15:                                        ; preds = %if.then
  store i32 10, i32* %base, align 4
  br label %if.end32

land.lhs.true20:                                  ; preds = %entry, %if.end17.thread44
  %7 = load i8, i8* %s, align 1
  %cmp23 = icmp eq i8 %7, 48
  br i1 %cmp23, label %land.lhs.true25, label %if.end32

land.lhs.true25:                                  ; preds = %land.lhs.true20
  %arrayidx26 = getelementptr i8, i8* %s, i64 1
  %8 = load i8, i8* %arrayidx26, align 1
  %call27 = call fastcc i8 @_tolower(i8 noundef %8) #11
  %cmp29 = icmp eq i8 %call27, 120
  %spec.select.idx = select i1 %cmp29, i64 2, i64 0
  %spec.select = getelementptr i8, i8* %s, i64 %spec.select.idx
  br label %if.end32

if.end32:                                         ; preds = %entry, %if.else, %if.else15, %land.lhs.true25, %land.lhs.true20
  %s.addr.0 = phi i8* [ %s, %land.lhs.true20 ], [ %spec.select, %land.lhs.true25 ], [ %s, %if.else15 ], [ %s, %if.else ], [ %s, %entry ]
  ret i8* %s.addr.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i8 @_tolower(i8 noundef %c) unnamed_addr #1 {
entry:
  %0 = or i8 %c, 32
  ret i8 %0
}

; Function Attrs: nofree noinline nosync nounwind null_pointer_is_valid
define dso_local i32 @_parse_integer_limit(i8* nocapture noundef readonly %s, i32 noundef %base, i64* nocapture noundef writeonly %p, i64 noundef %max_chars) local_unnamed_addr #2 {
entry:
  %tobool.not64 = icmp eq i64 %max_chars, 0
  br i1 %tobool.not64, label %while.end, label %while.body.lr.ph

while.body.lr.ph:                                 ; preds = %entry
  %conv30 = zext i32 %base to i64
  br label %while.body

while.body:                                       ; preds = %while.body.lr.ph, %cleanup
  %dec70.in = phi i64 [ %max_chars, %while.body.lr.ph ], [ %dec70, %cleanup ]
  %rv.068 = phi i32 [ 0, %while.body.lr.ph ], [ %inc, %cleanup ]
  %res.066 = phi i64 [ 0, %while.body.lr.ph ], [ %add32, %cleanup ]
  %s.addr.065 = phi i8* [ %s, %while.body.lr.ph ], [ %incdec.ptr, %cleanup ]
  %dec70 = add i64 %dec70.in, -1
  %0 = load i8, i8* %s.addr.065, align 1
  %conv = zext i8 %0 to i32
  %or = or i32 %conv, 32
  %1 = add i8 %0, -48
  %2 = icmp ult i8 %1, 10
  br i1 %2, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  %sub = add nsw i32 %conv, -48
  br label %if.end12

if.else:                                          ; preds = %while.body
  %3 = add nsw i32 %or, -97
  %4 = icmp ult i32 %3, 6
  br i1 %4, label %if.then9, label %while.end

if.then9:                                         ; preds = %if.else
  %add = add nsw i32 %or, -87
  br label %if.end12

if.end12:                                         ; preds = %if.then9, %if.then
  %val.0 = phi i32 [ %sub, %if.then ], [ %add, %if.then9 ]
  %cmp13.not = icmp ult i32 %val.0, %base
  br i1 %cmp13.not, label %if.end16, label %while.end

if.end16:                                         ; preds = %if.end12
  %tobool17.not = icmp ult i64 %res.066, 1152921504606846976
  %.pre = zext i32 %val.0 to i64
  br i1 %tobool17.not, label %cleanup, label %if.then21, !prof !7

if.then21:                                        ; preds = %if.end16
  %sub23 = xor i64 %.pre, -1
  %call = call fastcc i64 @div_u64(i64 noundef %sub23, i32 noundef %base) #11
  %cmp24 = icmp ugt i64 %res.066, %call
  %or27 = or i32 %rv.068, -2147483648
  %spec.select = select i1 %cmp24, i32 %or27, i32 %rv.068
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.then21
  %rv.1 = phi i32 [ %spec.select, %if.then21 ], [ %rv.068, %if.end16 ]
  %mul = mul i64 %res.066, %conv30
  %add32 = add i64 %mul, %.pre
  %inc = add i32 %rv.1, 1
  %incdec.ptr = getelementptr i8, i8* %s.addr.065, i64 1
  %tobool.not = icmp eq i64 %dec70, 0
  br i1 %tobool.not, label %while.end, label %while.body

while.end:                                        ; preds = %cleanup, %if.else, %if.end12, %entry
  %res.0.lcssa = phi i64 [ 0, %entry ], [ %res.066, %if.end12 ], [ %res.066, %if.else ], [ %add32, %cleanup ]
  %rv.0.lcssa = phi i32 [ 0, %entry ], [ %rv.068, %if.end12 ], [ %rv.068, %if.else ], [ %inc, %cleanup ]
  store i64 %res.0.lcssa, i64* %p, align 8
  ret i32 %rv.0.lcssa
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #3

; Function Attrs: mustprogress nofree noinline nosync nounwind null_pointer_is_valid willreturn writeonly
define internal fastcc i64 @div_u64(i64 noundef %dividend, i32 noundef %divisor) unnamed_addr #4 {
entry:
  %remainder = alloca i32, align 4
  %0 = bitcast i32* %remainder to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #12
  %call = call fastcc i64 @div_u64_rem(i64 noundef %dividend, i32 noundef %divisor, i32* noundef nonnull %remainder) #11
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #12
  ret i64 %call
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #3

; Function Attrs: nofree noinline nosync nounwind null_pointer_is_valid
define dso_local i32 @_parse_integer(i8* nocapture noundef readonly %s, i32 noundef %base, i64* nocapture noundef writeonly %p) local_unnamed_addr #2 {
entry:
  %call = call i32 @_parse_integer_limit(i8* noundef %s, i32 noundef %base, i64* noundef %p, i64 noundef 2147483647) #11
  ret i32 %call
}

; Function Attrs: nofree noinline nosync nounwind null_pointer_is_valid
define dso_local i32 @kstrtoull(i8* noundef %s, i32 noundef %base, i64* nocapture noundef writeonly %res) local_unnamed_addr #2 {
entry:
  %0 = load i8, i8* %s, align 1
  %cmp = icmp eq i8 %0, 43
  %spec.select.idx = zext i1 %cmp to i64
  %spec.select = getelementptr i8, i8* %s, i64 %spec.select.idx
  %call = call fastcc i32 @_kstrtoull(i8* noundef %spec.select, i32 noundef %base, i64* noundef %res) #11
  ret i32 %call
}

; Function Attrs: nofree noinline nosync nounwind null_pointer_is_valid
define internal fastcc i32 @_kstrtoull(i8* noundef %s, i32 noundef %base, i64* nocapture noundef writeonly %res) unnamed_addr #2 {
entry:
  %base.addr = alloca i32, align 4
  %_res = alloca i64, align 8
  store i32 %base, i32* %base.addr, align 4
  %0 = bitcast i64* %_res to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #12
  store i64 0, i64* %_res, align 8, !annotation !8
  %call = call i8* @_parse_integer_fixup_radix(i8* noundef %s, i32* noundef nonnull %base.addr) #11
  %1 = load i32, i32* %base.addr, align 4
  %call1 = call i32 @_parse_integer(i8* noundef %call, i32 noundef %1, i64* noundef nonnull %_res) #11
  %tobool.not = icmp sgt i32 %call1, -1
  br i1 %tobool.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %cmp = icmp eq i32 %call1, 0
  br i1 %cmp, label %cleanup, label %if.end3

if.end3:                                          ; preds = %if.end
  %idx.ext = zext i32 %call1 to i64
  %add.ptr = getelementptr i8, i8* %call, i64 %idx.ext
  %2 = load i8, i8* %add.ptr, align 1
  %cmp4 = icmp eq i8 %2, 10
  %spec.select.idx = zext i1 %cmp4 to i64
  %spec.select = getelementptr i8, i8* %add.ptr, i64 %spec.select.idx
  %3 = load i8, i8* %spec.select, align 1
  %tobool8.not = icmp eq i8 %3, 0
  br i1 %tobool8.not, label %if.end10, label %cleanup

if.end10:                                         ; preds = %if.end3
  %4 = load i64, i64* %_res, align 8
  store i64 %4, i64* %res, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.end, %entry, %if.end10
  %retval.0 = phi i32 [ 0, %if.end10 ], [ -34, %entry ], [ -22, %if.end ], [ -22, %if.end3 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #12
  ret i32 %retval.0
}

; Function Attrs: nofree noinline nosync nounwind null_pointer_is_valid
define dso_local i32 @kstrtoll(i8* noundef %s, i32 noundef %base, i64* nocapture noundef writeonly %res) local_unnamed_addr #2 {
entry:
  %tmp = alloca i64, align 8
  %0 = bitcast i64* %tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #12
  store i64 0, i64* %tmp, align 8, !annotation !8
  %1 = load i8, i8* %s, align 1
  %cmp = icmp eq i8 %1, 45
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %add.ptr = getelementptr i8, i8* %s, i64 1
  %call = call fastcc i32 @_kstrtoull(i8* noundef %add.ptr, i32 noundef %base, i64* noundef nonnull %tmp) #11
  %cmp2 = icmp slt i32 %call, 0
  br i1 %cmp2, label %cleanup, label %if.end

if.end:                                           ; preds = %if.then
  %2 = load i64, i64* %tmp, align 8
  %sub = sub i64 0, %2
  %cmp5 = icmp sgt i64 %sub, 0
  br i1 %cmp5, label %cleanup, label %if.end19

if.else:                                          ; preds = %entry
  %call10 = call i32 @kstrtoull(i8* noundef %s, i32 noundef %base, i64* noundef nonnull %tmp) #11
  %cmp11 = icmp slt i32 %call10, 0
  br i1 %cmp11, label %cleanup, label %if.end14

if.end14:                                         ; preds = %if.else
  %3 = load i64, i64* %tmp, align 8
  %cmp15 = icmp slt i64 %3, 0
  br i1 %cmp15, label %cleanup, label %if.end19

if.end19:                                         ; preds = %if.end14, %if.end
  %storemerge = phi i64 [ %sub, %if.end ], [ %3, %if.end14 ]
  store i64 %storemerge, i64* %res, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %if.else, %if.end, %if.then, %if.end19
  %retval.0 = phi i32 [ 0, %if.end19 ], [ %call, %if.then ], [ -34, %if.end ], [ %call10, %if.else ], [ -34, %if.end14 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #12
  ret i32 %retval.0
}

; Function Attrs: nofree noinline nosync nounwind null_pointer_is_valid
define dso_local i32 @_kstrtoul(i8* noundef %s, i32 noundef %base, i64* nocapture noundef writeonly %res) local_unnamed_addr #2 {
entry:
  %tmp = alloca i64, align 8
  %0 = bitcast i64* %tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #12
  store i64 0, i64* %tmp, align 8, !annotation !8
  %call = call i32 @kstrtoull(i8* noundef %s, i32 noundef %base, i64* noundef nonnull %tmp) #11
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %cleanup, label %if.end3

if.end3:                                          ; preds = %entry
  %1 = load i64, i64* %tmp, align 8
  store i64 %1, i64* %res, align 8
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end3
  %retval.0 = phi i32 [ 0, %if.end3 ], [ %call, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #12
  ret i32 %retval.0
}

; Function Attrs: nofree noinline nosync nounwind null_pointer_is_valid
define dso_local i32 @_kstrtol(i8* noundef %s, i32 noundef %base, i64* nocapture noundef writeonly %res) local_unnamed_addr #2 {
entry:
  %tmp = alloca i64, align 8
  %0 = bitcast i64* %tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #12
  store i64 0, i64* %tmp, align 8, !annotation !8
  %call = call i32 @kstrtoll(i8* noundef %s, i32 noundef %base, i64* noundef nonnull %tmp) #11
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %cleanup, label %if.end3

if.end3:                                          ; preds = %entry
  %1 = load i64, i64* %tmp, align 8
  store i64 %1, i64* %res, align 8
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end3
  %retval.0 = phi i32 [ 0, %if.end3 ], [ %call, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #12
  ret i32 %retval.0
}

; Function Attrs: nofree noinline nosync nounwind null_pointer_is_valid
define dso_local i32 @kstrtouint(i8* noundef %s, i32 noundef %base, i32* nocapture noundef writeonly %res) local_unnamed_addr #2 {
entry:
  %tmp = alloca i64, align 8
  %0 = bitcast i64* %tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #12
  store i64 0, i64* %tmp, align 8, !annotation !8
  %call = call i32 @kstrtoull(i8* noundef %s, i32 noundef %base, i64* noundef nonnull %tmp) #11
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %1 = load i64, i64* %tmp, align 8
  %2 = icmp ult i64 %1, 4294967296
  br i1 %2, label %if.end5, label %cleanup

if.end5:                                          ; preds = %if.end
  %conv = trunc i64 %1 to i32
  store i32 %conv, i32* %res, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry, %if.end5
  %retval.0 = phi i32 [ 0, %if.end5 ], [ %call, %entry ], [ -34, %if.end ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #12
  ret i32 %retval.0
}

; Function Attrs: nofree noinline nosync nounwind null_pointer_is_valid
define dso_local i32 @kstrtoint(i8* noundef %s, i32 noundef %base, i32* nocapture noundef writeonly %res) local_unnamed_addr #2 {
entry:
  %tmp = alloca i64, align 8
  %0 = bitcast i64* %tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #12
  store i64 0, i64* %tmp, align 8, !annotation !8
  %call = call i32 @kstrtoll(i8* noundef %s, i32 noundef %base, i64* noundef nonnull %tmp) #11
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %1 = load i64, i64* %tmp, align 8
  %2 = add i64 %1, 2147483648
  %3 = icmp ult i64 %2, 4294967296
  br i1 %3, label %if.end5, label %cleanup

if.end5:                                          ; preds = %if.end
  %conv = trunc i64 %1 to i32
  store i32 %conv, i32* %res, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry, %if.end5
  %retval.0 = phi i32 [ 0, %if.end5 ], [ %call, %entry ], [ -34, %if.end ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #12
  ret i32 %retval.0
}

; Function Attrs: nofree noinline nosync nounwind null_pointer_is_valid
define dso_local i32 @kstrtou16(i8* noundef %s, i32 noundef %base, i16* nocapture noundef writeonly %res) local_unnamed_addr #2 {
entry:
  %tmp = alloca i64, align 8
  %0 = bitcast i64* %tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #12
  store i64 0, i64* %tmp, align 8, !annotation !8
  %call = call i32 @kstrtoull(i8* noundef %s, i32 noundef %base, i64* noundef nonnull %tmp) #11
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %1 = load i64, i64* %tmp, align 8
  %2 = icmp ult i64 %1, 65536
  br i1 %2, label %if.end5, label %cleanup

if.end5:                                          ; preds = %if.end
  %conv = trunc i64 %1 to i16
  store i16 %conv, i16* %res, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry, %if.end5
  %retval.0 = phi i32 [ 0, %if.end5 ], [ %call, %entry ], [ -34, %if.end ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #12
  ret i32 %retval.0
}

; Function Attrs: nofree noinline nosync nounwind null_pointer_is_valid
define dso_local i32 @kstrtos16(i8* noundef %s, i32 noundef %base, i16* nocapture noundef writeonly %res) local_unnamed_addr #2 {
entry:
  %tmp = alloca i64, align 8
  %0 = bitcast i64* %tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #12
  store i64 0, i64* %tmp, align 8, !annotation !8
  %call = call i32 @kstrtoll(i8* noundef %s, i32 noundef %base, i64* noundef nonnull %tmp) #11
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %1 = load i64, i64* %tmp, align 8
  %2 = add i64 %1, 32768
  %3 = icmp ult i64 %2, 65536
  br i1 %3, label %if.end5, label %cleanup

if.end5:                                          ; preds = %if.end
  %conv = trunc i64 %1 to i16
  store i16 %conv, i16* %res, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry, %if.end5
  %retval.0 = phi i32 [ 0, %if.end5 ], [ %call, %entry ], [ -34, %if.end ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #12
  ret i32 %retval.0
}

; Function Attrs: nofree noinline nosync nounwind null_pointer_is_valid
define dso_local i32 @kstrtou8(i8* noundef %s, i32 noundef %base, i8* nocapture noundef writeonly %res) local_unnamed_addr #2 {
entry:
  %tmp = alloca i64, align 8
  %0 = bitcast i64* %tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #12
  store i64 0, i64* %tmp, align 8, !annotation !8
  %call = call i32 @kstrtoull(i8* noundef %s, i32 noundef %base, i64* noundef nonnull %tmp) #11
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %1 = load i64, i64* %tmp, align 8
  %2 = icmp ult i64 %1, 256
  br i1 %2, label %if.end5, label %cleanup

if.end5:                                          ; preds = %if.end
  %conv = trunc i64 %1 to i8
  store i8 %conv, i8* %res, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry, %if.end5
  %retval.0 = phi i32 [ 0, %if.end5 ], [ %call, %entry ], [ -34, %if.end ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #12
  ret i32 %retval.0
}

; Function Attrs: nofree noinline nosync nounwind null_pointer_is_valid
define dso_local i32 @kstrtos8(i8* noundef %s, i32 noundef %base, i8* nocapture noundef writeonly %res) local_unnamed_addr #2 {
entry:
  %tmp = alloca i64, align 8
  %0 = bitcast i64* %tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #12
  store i64 0, i64* %tmp, align 8, !annotation !8
  %call = call i32 @kstrtoll(i8* noundef %s, i32 noundef %base, i64* noundef nonnull %tmp) #11
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %1 = load i64, i64* %tmp, align 8
  %2 = add i64 %1, 128
  %3 = icmp ult i64 %2, 256
  br i1 %3, label %if.end5, label %cleanup

if.end5:                                          ; preds = %if.end
  %conv = trunc i64 %1 to i8
  store i8 %conv, i8* %res, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry, %if.end5
  %retval.0 = phi i32 [ 0, %if.end5 ], [ %call, %entry ], [ -34, %if.end ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #12
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline nosync nounwind null_pointer_is_valid willreturn
define dso_local i32 @kstrtobool(i8* noundef readonly %s, i8* nocapture noundef writeonly %res) local_unnamed_addr #5 {
entry:
  %tobool.not = icmp eq i8* %s, null
  br i1 %tobool.not, label %return, label %if.end

if.end:                                           ; preds = %entry
  %0 = load i8, i8* %s, align 1
  switch i8 %0, label %return [
    i8 121, label %return.sink.split
    i8 89, label %return.sink.split
    i8 49, label %return.sink.split
    i8 110, label %sw.bb1
    i8 78, label %sw.bb1
    i8 48, label %sw.bb1
    i8 111, label %sw.bb2
    i8 79, label %sw.bb2
  ]

sw.bb1:                                           ; preds = %if.end, %if.end, %if.end
  br label %return.sink.split

sw.bb2:                                           ; preds = %if.end, %if.end
  %arrayidx3 = getelementptr i8, i8* %s, i64 1
  %1 = load i8, i8* %arrayidx3, align 1
  %conv4 = zext i8 %1 to i32
  %2 = add nsw i32 %conv4, -70
  %3 = call i32 @llvm.fshl.i32(i32 %2, i32 %2, i32 29)
  %4 = icmp ult i32 %3, 6
  br i1 %4, label %switch.hole_check, label %return

switch.hole_check:                                ; preds = %sw.bb2
  %switch.maskindex = trunc i32 %3 to i8
  %switch.shifted = lshr i8 51, %switch.maskindex
  %5 = and i8 %switch.shifted, 1
  %switch.lobit.not = icmp eq i8 %5, 0
  br i1 %switch.lobit.not, label %return, label %switch.lookup

switch.lookup:                                    ; preds = %switch.hole_check
  %switch.cast = zext i32 %3 to i48
  %switch.shiftamt = shl nuw nsw i48 %switch.cast, 3
  %switch.downshift = lshr i48 1099528470784, %switch.shiftamt
  %switch.masked = trunc i48 %switch.downshift to i8
  br label %return.sink.split

return.sink.split:                                ; preds = %switch.lookup, %if.end, %if.end, %if.end, %sw.bb1
  %.sink = phi i8 [ 0, %sw.bb1 ], [ 1, %if.end ], [ 1, %if.end ], [ 1, %if.end ], [ %switch.masked, %switch.lookup ]
  store i8 %.sink, i8* %res, align 1
  br label %return

return:                                           ; preds = %switch.hole_check, %sw.bb2, %return.sink.split, %if.end, %entry
  %retval.0 = phi i32 [ -22, %entry ], [ -22, %if.end ], [ -22, %sw.bb2 ], [ 0, %return.sink.split ], [ -22, %switch.hole_check ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @kstrtobool_from_user(i8* noundef %s, i64 noundef %count, i8* nocapture noundef writeonly %res) local_unnamed_addr #6 {
entry:
  %buf = alloca i32, align 4, !annotation !8
  %0 = bitcast i32* %buf to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #12
  store i32 0, i32* %buf, align 4, !annotation !8
  %cmp = icmp ult i64 %count, 3
  %cond = select i1 %cmp, i64 %count, i64 3
  %call2.i = call fastcc i64 @_copy_from_user(i8* noundef nonnull %0, i8* noundef %s, i64 noundef %cond) #13
  %tobool.not = icmp eq i64 %call2.i, 0
  br i1 %tobool.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %tmpcast = bitcast i32* %buf to [4 x i8]*, !annotation !8
  %arrayidx = getelementptr [4 x i8], [4 x i8]* %tmpcast, i64 0, i64 %cond
  store i8 0, i8* %arrayidx, align 1
  %call2 = call i32 @kstrtobool(i8* noundef nonnull %0, i8* noundef %res) #11
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %call2, %if.end ], [ -14, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #12
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #7

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @kstrtoull_from_user(i8* noundef %s, i64 noundef %count, i32 noundef %base, i64* nocapture noundef writeonly %res) local_unnamed_addr #6 {
entry:
  %buf = alloca [67 x i8], align 1
  %0 = getelementptr inbounds [67 x i8], [67 x i8]* %buf, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 67, i8* nonnull %0) #12
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(67) %0, i8 0, i64 67, i1 false), !annotation !8
  %cmp = icmp ult i64 %count, 66
  %cond = select i1 %cmp, i64 %count, i64 66
  %call2.i = call fastcc i64 @_copy_from_user(i8* noundef nonnull %0, i8* noundef %s, i64 noundef %cond) #13
  %tobool.not = icmp eq i64 %call2.i, 0
  br i1 %tobool.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %arrayidx = getelementptr [67 x i8], [67 x i8]* %buf, i64 0, i64 %cond
  store i8 0, i8* %arrayidx, align 1
  %call2 = call i32 @kstrtoull(i8* noundef nonnull %0, i32 noundef %base, i64* noundef %res) #11
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %call2, %if.end ], [ -14, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 67, i8* nonnull %0) #12
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @kstrtoll_from_user(i8* noundef %s, i64 noundef %count, i32 noundef %base, i64* nocapture noundef writeonly %res) local_unnamed_addr #6 {
entry:
  %buf = alloca [67 x i8], align 1
  %0 = getelementptr inbounds [67 x i8], [67 x i8]* %buf, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 67, i8* nonnull %0) #12
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(67) %0, i8 0, i64 67, i1 false), !annotation !8
  %cmp = icmp ult i64 %count, 66
  %cond = select i1 %cmp, i64 %count, i64 66
  %call2.i = call fastcc i64 @_copy_from_user(i8* noundef nonnull %0, i8* noundef %s, i64 noundef %cond) #13
  %tobool.not = icmp eq i64 %call2.i, 0
  br i1 %tobool.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %arrayidx = getelementptr [67 x i8], [67 x i8]* %buf, i64 0, i64 %cond
  store i8 0, i8* %arrayidx, align 1
  %call2 = call i32 @kstrtoll(i8* noundef nonnull %0, i32 noundef %base, i64* noundef %res) #11
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %call2, %if.end ], [ -14, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 67, i8* nonnull %0) #12
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @kstrtoul_from_user(i8* noundef %s, i64 noundef %count, i32 noundef %base, i64* nocapture noundef writeonly %res) local_unnamed_addr #6 {
entry:
  %buf = alloca [67 x i8], align 1
  %0 = getelementptr inbounds [67 x i8], [67 x i8]* %buf, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 67, i8* nonnull %0) #12
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(67) %0, i8 0, i64 67, i1 false), !annotation !8
  %cmp = icmp ult i64 %count, 66
  %cond = select i1 %cmp, i64 %count, i64 66
  %call2.i = call fastcc i64 @_copy_from_user(i8* noundef nonnull %0, i8* noundef %s, i64 noundef %cond) #13
  %tobool.not = icmp eq i64 %call2.i, 0
  br i1 %tobool.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %arrayidx = getelementptr [67 x i8], [67 x i8]* %buf, i64 0, i64 %cond
  store i8 0, i8* %arrayidx, align 1
  %call2 = call fastcc i32 @kstrtoul(i8* noundef nonnull %0, i32 noundef %base, i64* noundef %res) #11
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %call2, %if.end ], [ -14, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 67, i8* nonnull %0) #12
  ret i32 %retval.0
}

; Function Attrs: nofree noinline nosync nounwind null_pointer_is_valid
define internal fastcc i32 @kstrtoul(i8* noundef %s, i32 noundef %base, i64* nocapture noundef writeonly %res) unnamed_addr #2 {
entry:
  %call = call i32 @kstrtoull(i8* noundef %s, i32 noundef %base, i64* noundef %res) #11
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @kstrtol_from_user(i8* noundef %s, i64 noundef %count, i32 noundef %base, i64* nocapture noundef writeonly %res) local_unnamed_addr #6 {
entry:
  %buf = alloca [67 x i8], align 1
  %0 = getelementptr inbounds [67 x i8], [67 x i8]* %buf, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 67, i8* nonnull %0) #12
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(67) %0, i8 0, i64 67, i1 false), !annotation !8
  %cmp = icmp ult i64 %count, 66
  %cond = select i1 %cmp, i64 %count, i64 66
  %call2.i = call fastcc i64 @_copy_from_user(i8* noundef nonnull %0, i8* noundef %s, i64 noundef %cond) #13
  %tobool.not = icmp eq i64 %call2.i, 0
  br i1 %tobool.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %arrayidx = getelementptr [67 x i8], [67 x i8]* %buf, i64 0, i64 %cond
  store i8 0, i8* %arrayidx, align 1
  %call2 = call fastcc i32 @kstrtol(i8* noundef nonnull %0, i32 noundef %base, i64* noundef %res) #11
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %call2, %if.end ], [ -14, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 67, i8* nonnull %0) #12
  ret i32 %retval.0
}

; Function Attrs: nofree noinline nosync nounwind null_pointer_is_valid
define internal fastcc i32 @kstrtol(i8* noundef %s, i32 noundef %base, i64* nocapture noundef writeonly %res) unnamed_addr #2 {
entry:
  %call = call i32 @kstrtoll(i8* noundef %s, i32 noundef %base, i64* noundef %res) #11
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @kstrtouint_from_user(i8* noundef %s, i64 noundef %count, i32 noundef %base, i32* nocapture noundef writeonly %res) local_unnamed_addr #6 {
entry:
  %buf = alloca [35 x i8], align 1
  %0 = getelementptr inbounds [35 x i8], [35 x i8]* %buf, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 35, i8* nonnull %0) #12
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(35) %0, i8 0, i64 35, i1 false), !annotation !8
  %cmp = icmp ult i64 %count, 34
  %cond = select i1 %cmp, i64 %count, i64 34
  %call2.i = call fastcc i64 @_copy_from_user(i8* noundef nonnull %0, i8* noundef %s, i64 noundef %cond) #13
  %tobool.not = icmp eq i64 %call2.i, 0
  br i1 %tobool.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %arrayidx = getelementptr [35 x i8], [35 x i8]* %buf, i64 0, i64 %cond
  store i8 0, i8* %arrayidx, align 1
  %call2 = call i32 @kstrtouint(i8* noundef nonnull %0, i32 noundef %base, i32* noundef %res) #11
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %call2, %if.end ], [ -14, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 35, i8* nonnull %0) #12
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @kstrtoint_from_user(i8* noundef %s, i64 noundef %count, i32 noundef %base, i32* nocapture noundef writeonly %res) local_unnamed_addr #6 {
entry:
  %buf = alloca [35 x i8], align 1
  %0 = getelementptr inbounds [35 x i8], [35 x i8]* %buf, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 35, i8* nonnull %0) #12
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(35) %0, i8 0, i64 35, i1 false), !annotation !8
  %cmp = icmp ult i64 %count, 34
  %cond = select i1 %cmp, i64 %count, i64 34
  %call2.i = call fastcc i64 @_copy_from_user(i8* noundef nonnull %0, i8* noundef %s, i64 noundef %cond) #13
  %tobool.not = icmp eq i64 %call2.i, 0
  br i1 %tobool.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %arrayidx = getelementptr [35 x i8], [35 x i8]* %buf, i64 0, i64 %cond
  store i8 0, i8* %arrayidx, align 1
  %call2 = call i32 @kstrtoint(i8* noundef nonnull %0, i32 noundef %base, i32* noundef %res) #11
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %call2, %if.end ], [ -14, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 35, i8* nonnull %0) #12
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @kstrtou16_from_user(i8* noundef %s, i64 noundef %count, i32 noundef %base, i16* nocapture noundef writeonly %res) local_unnamed_addr #6 {
entry:
  %buf = alloca [19 x i8], align 1
  %0 = getelementptr inbounds [19 x i8], [19 x i8]* %buf, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 19, i8* nonnull %0) #12
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(19) %0, i8 0, i64 19, i1 false), !annotation !8
  %cmp = icmp ult i64 %count, 18
  %cond = select i1 %cmp, i64 %count, i64 18
  %call2.i = call fastcc i64 @_copy_from_user(i8* noundef nonnull %0, i8* noundef %s, i64 noundef %cond) #13
  %tobool.not = icmp eq i64 %call2.i, 0
  br i1 %tobool.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %arrayidx = getelementptr [19 x i8], [19 x i8]* %buf, i64 0, i64 %cond
  store i8 0, i8* %arrayidx, align 1
  %call2 = call i32 @kstrtou16(i8* noundef nonnull %0, i32 noundef %base, i16* noundef %res) #11
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %call2, %if.end ], [ -14, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 19, i8* nonnull %0) #12
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @kstrtos16_from_user(i8* noundef %s, i64 noundef %count, i32 noundef %base, i16* nocapture noundef writeonly %res) local_unnamed_addr #6 {
entry:
  %buf = alloca [19 x i8], align 1
  %0 = getelementptr inbounds [19 x i8], [19 x i8]* %buf, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 19, i8* nonnull %0) #12
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(19) %0, i8 0, i64 19, i1 false), !annotation !8
  %cmp = icmp ult i64 %count, 18
  %cond = select i1 %cmp, i64 %count, i64 18
  %call2.i = call fastcc i64 @_copy_from_user(i8* noundef nonnull %0, i8* noundef %s, i64 noundef %cond) #13
  %tobool.not = icmp eq i64 %call2.i, 0
  br i1 %tobool.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %arrayidx = getelementptr [19 x i8], [19 x i8]* %buf, i64 0, i64 %cond
  store i8 0, i8* %arrayidx, align 1
  %call2 = call i32 @kstrtos16(i8* noundef nonnull %0, i32 noundef %base, i16* noundef %res) #11
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %call2, %if.end ], [ -14, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 19, i8* nonnull %0) #12
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @kstrtou8_from_user(i8* noundef %s, i64 noundef %count, i32 noundef %base, i8* nocapture noundef writeonly %res) local_unnamed_addr #6 {
entry:
  %buf = alloca [11 x i8], align 1
  %0 = getelementptr inbounds [11 x i8], [11 x i8]* %buf, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 11, i8* nonnull %0) #12
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(11) %0, i8 0, i64 11, i1 false), !annotation !8
  %cmp = icmp ult i64 %count, 10
  %cond = select i1 %cmp, i64 %count, i64 10
  %call2.i = call fastcc i64 @_copy_from_user(i8* noundef nonnull %0, i8* noundef %s, i64 noundef %cond) #13
  %tobool.not = icmp eq i64 %call2.i, 0
  br i1 %tobool.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %arrayidx = getelementptr [11 x i8], [11 x i8]* %buf, i64 0, i64 %cond
  store i8 0, i8* %arrayidx, align 1
  %call2 = call i32 @kstrtou8(i8* noundef nonnull %0, i32 noundef %base, i8* noundef %res) #11
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %call2, %if.end ], [ -14, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 11, i8* nonnull %0) #12
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @kstrtos8_from_user(i8* noundef %s, i64 noundef %count, i32 noundef %base, i8* nocapture noundef writeonly %res) local_unnamed_addr #6 {
entry:
  %buf = alloca [11 x i8], align 1
  %0 = getelementptr inbounds [11 x i8], [11 x i8]* %buf, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 11, i8* nonnull %0) #12
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(11) %0, i8 0, i64 11, i1 false), !annotation !8
  %cmp = icmp ult i64 %count, 10
  %cond = select i1 %cmp, i64 %count, i64 10
  %call2.i = call fastcc i64 @_copy_from_user(i8* noundef nonnull %0, i8* noundef %s, i64 noundef %cond) #13
  %tobool.not = icmp eq i64 %call2.i, 0
  br i1 %tobool.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %arrayidx = getelementptr [11 x i8], [11 x i8]* %buf, i64 0, i64 %cond
  store i8 0, i8* %arrayidx, align 1
  %call2 = call i32 @kstrtos8(i8* noundef nonnull %0, i32 noundef %base, i8* noundef %res) #11
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %call2, %if.end ], [ -14, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 11, i8* nonnull %0) #12
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn writeonly
define internal fastcc i64 @div_u64_rem(i64 noundef %dividend, i32 noundef %divisor, i32* nocapture noundef writeonly %remainder) unnamed_addr #8 {
entry:
  %conv = zext i32 %divisor to i64
  %div = udiv i64 %dividend, %conv
  %0 = mul i64 %div, %conv
  %rem.decomposed = sub i64 %dividend, %0
  %conv1 = trunc i64 %rem.decomposed to i32
  store i32 %conv1, i32* %remainder, align 4
  ret i64 %div
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @_copy_from_user(i8* noundef %to, i8* noundef %from, i64 noundef %n) unnamed_addr #6 {
entry:
  %call1 = call fastcc i64 @__range_ok(i8* noundef %from, i64 noundef %n) #11
  %tobool.not = icmp eq i64 %call1, 0
  br i1 %tobool.not, label %if.end, label %if.then, !prof !9

if.then:                                          ; preds = %entry
  %call5 = call fastcc i8* @__uaccess_mask_ptr(i8* noundef %from) #11
  %call6 = call i64 @__arch_copy_from_user(i8* noundef %to, i8* noundef %call5, i64 noundef %n) #13
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %res.0 = phi i64 [ %call6, %if.then ], [ %n, %entry ]
  %tobool8.not = icmp eq i64 %res.0, 0
  br i1 %tobool8.not, label %if.end18, label %if.then16, !prof !7

if.then16:                                        ; preds = %if.end
  %sub = sub i64 %n, %res.0
  %add.ptr = getelementptr i8, i8* %to, i64 %sub
  %call17 = call i8* @memset(i8* noundef %add.ptr, i32 noundef 0, i64 noundef %res.0) #13
  br label %if.end18

if.end18:                                         ; preds = %if.then16, %if.end
  ret i64 %res.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__range_ok(i8* noundef %addr, i64 noundef %size) unnamed_addr #6 {
entry:
  %0 = call { i64, i64 } asm sideeffect "\09adds\09$0, $3, $2\0A\09csel\09$1, xzr, $1, hi\0A\09csinv\09$0, $0, xzr, cc\0A\09sbcs\09xzr, $0, $1\0A\09cset\09$0, ls\0A", "=&r,=r,Ir,0,1,~{cc}"(i64 %size, i8* %addr, i64 549755813887) #12, !srcloc !10
  %asmresult = extractvalue { i64, i64 } %0, 0
  ret i64 %asmresult
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__arch_copy_from_user(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #9

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i8* @__uaccess_mask_ptr(i8* noundef %ptr) unnamed_addr #6 {
entry:
  %0 = ptrtoint i8* %ptr to i64
  %shl.i = shl i64 %0, 8
  %shr.i = ashr exact i64 %shl.i, 8
  %and = and i64 %shr.i, %0
  %1 = inttoptr i64 %and to i8*
  %2 = call i8* asm sideeffect "\09bics\09xzr, $3, $2\0A\09csel\09$0, $1, xzr, eq\0A", "=&r,r,r,r,~{cc}"(i8* %ptr, i64 549755813887, i8* %1) #12, !srcloc !11
  call void asm sideeffect "hint #20", "~{memory}"() #12, !srcloc !12
  ret i8* %2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @memset(i8* noundef, i32 noundef, i64 noundef) local_unnamed_addr #9

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #10

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #1 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #2 = { nofree noinline nosync nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #3 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #4 = { mustprogress nofree noinline nosync nounwind null_pointer_is_valid willreturn writeonly "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #5 = { mustprogress nofree noinline nosync nounwind null_pointer_is_valid willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #6 = { noinline nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #7 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn writeonly "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #9 = { null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #10 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { nobuiltin "no-builtins" }
attributes #12 = { nounwind }
attributes #13 = { nobuiltin nounwind "no-builtins" }

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
!8 = !{!"auto-init"}
!9 = !{!"branch_weights", i32 1, i32 2000}
!10 = !{i64 2990206, i64 2990289, i64 2990513, i64 2990733, i64 2990756}
!11 = !{i64 2994908, i64 2994932}
!12 = !{i64 2150794366}
