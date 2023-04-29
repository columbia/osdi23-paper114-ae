; ModuleID = 'lib/cmdline.c'
source_filename = "lib/cmdline.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

@_ctype = external dso_local local_unnamed_addr constant [0 x i8], align 1

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @get_option(i8** noundef %str, i32* noundef writeonly %pint) local_unnamed_addr #0 {
entry:
  %0 = load i8*, i8** %str, align 8
  %tobool.not = icmp eq i8* %0, null
  br i1 %tobool.not, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i8, i8* %0, align 1
  switch i8 %1, label %if.else [
    i8 0, label %cleanup
    i8 45, label %if.then3
  ]

if.then3:                                         ; preds = %lor.lhs.false
  %incdec.ptr = getelementptr i8, i8* %0, i64 1
  %call = call i64 @simple_strtoull(i8* noundef %incdec.ptr, i8** noundef %str, i32 noundef 0) #4
  %sub = sub i64 0, %call
  br label %if.end7

if.else:                                          ; preds = %lor.lhs.false
  %call5 = call i64 @simple_strtoull(i8* noundef nonnull %0, i8** noundef %str, i32 noundef 0) #4
  br label %if.end7

if.end7:                                          ; preds = %if.else, %if.then3
  %cur.0 = phi i8* [ %incdec.ptr, %if.then3 ], [ %0, %if.else ]
  %value.0.in = phi i64 [ %sub, %if.then3 ], [ %call5, %if.else ]
  %tobool8.not = icmp eq i32* %pint, null
  br i1 %tobool8.not, label %if.end10, label %if.then9

if.then9:                                         ; preds = %if.end7
  %value.0 = trunc i64 %value.0.in to i32
  store i32 %value.0, i32* %pint, align 4
  br label %if.end10

if.end10:                                         ; preds = %if.then9, %if.end7
  %2 = load i8*, i8** %str, align 8
  %cmp11 = icmp eq i8* %cur.0, %2
  br i1 %cmp11, label %cleanup, label %if.end14

if.end14:                                         ; preds = %if.end10
  %3 = load i8, i8* %2, align 1
  switch i8 %3, label %if.end25 [
    i8 44, label %if.then18
    i8 45, label %cleanup
  ]

if.then18:                                        ; preds = %if.end14
  %incdec.ptr19 = getelementptr i8, i8* %2, i64 1
  store i8* %incdec.ptr19, i8** %str, align 8
  br label %cleanup

if.end25:                                         ; preds = %if.end14
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %if.end10, %lor.lhs.false, %entry, %if.end25, %if.then18
  %retval.0 = phi i32 [ 2, %if.then18 ], [ 1, %if.end25 ], [ 0, %lor.lhs.false ], [ 0, %entry ], [ 0, %if.end10 ], [ 3, %if.end14 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @simple_strtoull(i8* noundef, i8** noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i8* @get_options(i8* noundef %str, i32 noundef %nints, i32* noundef %ints) local_unnamed_addr #0 {
entry:
  %str.addr = alloca i8*, align 8
  store i8* %str, i8** %str.addr, align 8
  %cmp = icmp eq i32 %nints, 0
  %cmp157 = icmp sgt i32 %nints, 1
  %0 = or i1 %cmp, %cmp157
  br i1 %0, label %while.body, label %while.end

while.body:                                       ; preds = %entry, %while.cond.backedge
  %i.058 = phi i32 [ %i.0.be, %while.cond.backedge ], [ 1, %entry ]
  %narrow = select i1 %cmp, i32 0, i32 %i.058
  %cond.idx = sext i32 %narrow to i64
  %cond = getelementptr i32, i32* %ints, i64 %cond.idx
  %call = call i32 @get_option(i8** noundef nonnull %str.addr, i32* noundef %cond) #5
  switch i32 %call, label %if.end17 [
    i32 0, label %while.end
    i32 3, label %if.then5
  ]

if.then5:                                         ; preds = %while.body
  %sub = sub i32 %nints, %i.058
  %cond10 = select i1 %cmp, i32 0, i32 %sub
  %call11 = call fastcc i32 @get_range(i8** noundef nonnull %str.addr, i32* noundef %cond, i32 noundef %cond10) #5
  %cmp12 = icmp slt i32 %call11, 0
  %inc54 = select i1 %cmp12, i32 0, i32 %call11
  %spec.select = add i32 %i.058, %inc54
  br i1 %cmp12, label %while.end, label %while.cond.backedge

while.cond.backedge:                              ; preds = %if.end17, %if.then5
  %i.0.be = phi i32 [ %spec.select, %if.then5 ], [ %inc, %if.end17 ]
  %cmp1 = icmp slt i32 %i.0.be, %nints
  %1 = or i1 %cmp, %cmp1
  br i1 %1, label %while.body, label %while.end

if.end17:                                         ; preds = %while.body
  %inc = add i32 %i.058, 1
  %cmp18 = icmp eq i32 %call, 1
  br i1 %cmp18, label %while.end, label %while.cond.backedge

while.end:                                        ; preds = %while.cond.backedge, %while.body, %if.end17, %if.then5, %entry
  %i.4 = phi i32 [ 1, %entry ], [ %i.0.be, %while.cond.backedge ], [ %i.058, %while.body ], [ %inc, %if.end17 ], [ %spec.select, %if.then5 ]
  %sub24 = add i32 %i.4, -1
  store i32 %sub24, i32* %ints, align 4
  %2 = load i8*, i8** %str.addr, align 8
  ret i8* %2
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @get_range(i8** nocapture noundef %str, i32* nocapture noundef %pint, i32 noundef %n) unnamed_addr #0 {
entry:
  %0 = load i8*, i8** %str, align 8
  %incdec.ptr = getelementptr i8, i8* %0, i64 1
  store i8* %incdec.ptr, i8** %str, align 8
  %call = call i64 @simple_strtol(i8* noundef %incdec.ptr, i8** noundef null, i32 noundef 0) #4
  %conv = trunc i64 %call to i32
  %1 = load i32, i32* %pint, align 4
  %tobool13 = icmp ne i32 %n, 0
  %cmp14 = icmp slt i32 %1, %conv
  %2 = select i1 %tobool13, i1 %cmp14, i1 false
  br i1 %2, label %for.body.preheader, label %for.end

for.body.preheader:                               ; preds = %entry
  %3 = add i32 %n, -1
  %4 = xor i32 %1, -1
  %5 = add i32 %4, %conv
  %6 = icmp eq i32 %3, 0
  %umin = call i32 @llvm.umin.i32(i32 %5, i32 %3)
  %7 = select i1 %6, i32 0, i32 %umin
  %8 = zext i32 %7 to i64
  %9 = add nuw nsw i64 %8, 1
  %min.iters.check = icmp eq i32 %7, 0
  br i1 %min.iters.check, label %for.body.preheader28, label %vector.ph

vector.ph:                                        ; preds = %for.body.preheader
  %n.vec = and i64 %9, 8589934590
  %cast.crd = trunc i64 %n.vec to i32
  %ind.end = add i32 %1, %cast.crd
  %cast.crd19 = trunc i64 %n.vec to i32
  %ind.end20 = sub i32 %n, %cast.crd19
  %ind.end22 = getelementptr i32, i32* %pint, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %10 = trunc i64 %index to i32
  %offset.idx = add i32 %1, %10
  %induction23 = add i32 %offset.idx, 1
  %next.gep = getelementptr i32, i32* %pint, i64 %index
  %11 = or i64 %index, 1
  %next.gep27 = getelementptr i32, i32* %pint, i64 %11
  store i32 %offset.idx, i32* %next.gep, align 4
  store i32 %induction23, i32* %next.gep27, align 4
  %index.next = add nuw i64 %index, 2
  %12 = icmp eq i64 %index.next, %n.vec
  br i1 %12, label %middle.block, label %vector.body, !llvm.loop !7

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %9, %n.vec
  br i1 %cmp.n, label %for.end, label %for.body.preheader28

for.body.preheader28:                             ; preds = %for.body.preheader, %middle.block
  %x.017.ph = phi i32 [ %1, %for.body.preheader ], [ %ind.end, %middle.block ]
  %n.addr.016.ph = phi i32 [ %n, %for.body.preheader ], [ %ind.end20, %middle.block ]
  %pint.addr.015.ph = phi i32* [ %pint, %for.body.preheader ], [ %ind.end22, %middle.block ]
  br label %for.body

for.body:                                         ; preds = %for.body.preheader28, %for.body
  %x.017 = phi i32 [ %inc, %for.body ], [ %x.017.ph, %for.body.preheader28 ]
  %n.addr.016 = phi i32 [ %dec, %for.body ], [ %n.addr.016.ph, %for.body.preheader28 ]
  %pint.addr.015 = phi i32* [ %incdec.ptr2, %for.body ], [ %pint.addr.015.ph, %for.body.preheader28 ]
  %incdec.ptr2 = getelementptr i32, i32* %pint.addr.015, i64 1
  store i32 %x.017, i32* %pint.addr.015, align 4
  %inc = add nsw i32 %x.017, 1
  %dec = add i32 %n.addr.016, -1
  %tobool = icmp ne i32 %dec, 0
  %cmp = icmp slt i32 %inc, %conv
  %13 = select i1 %tobool, i1 %cmp, i1 false
  br i1 %13, label %for.body, label %for.end, !llvm.loop !9

for.end:                                          ; preds = %for.body, %middle.block, %entry
  %sub = sub i32 %conv, %1
  ret i32 %sub
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @memparse(i8* noundef %ptr, i8** noundef writeonly %retptr) local_unnamed_addr #0 {
entry:
  %endptr = alloca i8*, align 8
  %0 = bitcast i8** %endptr to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #6
  store i8* null, i8** %endptr, align 8, !annotation !10
  %call = call i64 @simple_strtoull(i8* noundef %ptr, i8** noundef nonnull %endptr, i32 noundef 0) #4
  %1 = load i8*, i8** %endptr, align 8
  %2 = load i8, i8* %1, align 1
  switch i8 %2, label %sw.epilog [
    i8 69, label %sw.bb
    i8 101, label %sw.bb
    i8 80, label %sw.bb1
    i8 112, label %sw.bb1
    i8 84, label %sw.bb3
    i8 116, label %sw.bb3
    i8 71, label %sw.bb5
    i8 103, label %sw.bb5
    i8 77, label %sw.bb7
    i8 109, label %sw.bb7
    i8 75, label %sw.bb9
    i8 107, label %sw.bb9
  ]

sw.bb:                                            ; preds = %entry, %entry
  %shl = shl i64 %call, 10
  br label %sw.bb1

sw.bb1:                                           ; preds = %entry, %entry, %sw.bb
  %ret.0 = phi i64 [ %call, %entry ], [ %call, %entry ], [ %shl, %sw.bb ]
  %shl2 = shl i64 %ret.0, 10
  br label %sw.bb3

sw.bb3:                                           ; preds = %entry, %entry, %sw.bb1
  %ret.1 = phi i64 [ %call, %entry ], [ %call, %entry ], [ %shl2, %sw.bb1 ]
  %shl4 = shl i64 %ret.1, 10
  br label %sw.bb5

sw.bb5:                                           ; preds = %entry, %entry, %sw.bb3
  %ret.2 = phi i64 [ %call, %entry ], [ %call, %entry ], [ %shl4, %sw.bb3 ]
  %shl6 = shl i64 %ret.2, 10
  br label %sw.bb7

sw.bb7:                                           ; preds = %entry, %entry, %sw.bb5
  %ret.3 = phi i64 [ %call, %entry ], [ %call, %entry ], [ %shl6, %sw.bb5 ]
  %shl8 = shl i64 %ret.3, 10
  br label %sw.bb9

sw.bb9:                                           ; preds = %entry, %entry, %sw.bb7
  %ret.4 = phi i64 [ %call, %entry ], [ %call, %entry ], [ %shl8, %sw.bb7 ]
  %shl10 = shl i64 %ret.4, 10
  %incdec.ptr = getelementptr i8, i8* %1, i64 1
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb9, %entry
  %3 = phi i8* [ %1, %entry ], [ %incdec.ptr, %sw.bb9 ]
  %ret.5 = phi i64 [ %call, %entry ], [ %shl10, %sw.bb9 ]
  %tobool.not = icmp eq i8** %retptr, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %sw.epilog
  store i8* %3, i8** %retptr, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.epilog
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #6
  ret i64 %ret.5
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i1 @parse_option_str(i8* noundef %str, i8* noundef %option) local_unnamed_addr #0 {
entry:
  %0 = load i8, i8* %str, align 1
  %tobool.not33 = icmp eq i8 %0, 0
  br i1 %tobool.not33, label %return, label %while.body

while.body:                                       ; preds = %entry, %while.end
  %str.addr.034 = phi i8* [ %spec.select, %while.end ], [ %str, %entry ]
  %call = call i64 @strlen(i8* noundef %option) #4
  %call1 = call i32 @strncmp(i8* noundef %str.addr.034, i8* noundef %option, i64 noundef %call) #4
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.then, label %while.cond8.preheader

if.then:                                          ; preds = %while.body
  %call3 = call i64 @strlen(i8* noundef %option) #4
  %add.ptr = getelementptr i8, i8* %str.addr.034, i64 %call3
  %1 = load i8, i8* %add.ptr, align 1
  switch i8 %1, label %while.cond8.preheader [
    i8 0, label %return
    i8 44, label %return
  ]

while.cond8.preheader:                            ; preds = %if.then, %while.body
  %str.addr.2.ph = phi i8* [ %add.ptr, %if.then ], [ %str.addr.034, %while.body ]
  br label %while.cond8

while.cond8:                                      ; preds = %while.cond8.preheader, %while.body14
  %str.addr.2 = phi i8* [ %incdec.ptr, %while.body14 ], [ %str.addr.2.ph, %while.cond8.preheader ]
  %2 = load i8, i8* %str.addr.2, align 1
  switch i8 %2, label %while.body14 [
    i8 0, label %while.end
    i8 44, label %while.end
  ]

while.body14:                                     ; preds = %while.cond8
  %incdec.ptr = getelementptr i8, i8* %str.addr.2, i64 1
  br label %while.cond8

while.end:                                        ; preds = %while.cond8, %while.cond8
  %cmp16 = icmp eq i8 %2, 44
  %spec.select.idx = zext i1 %cmp16 to i64
  %spec.select = getelementptr i8, i8* %str.addr.2, i64 %spec.select.idx
  %3 = load i8, i8* %spec.select, align 1
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %return, label %while.body

return:                                           ; preds = %if.then, %if.then, %while.end, %entry
  %tobool.not.lcssa = phi i1 [ false, %entry ], [ false, %while.end ], [ true, %if.then ], [ true, %if.then ]
  ret i1 %tobool.not.lcssa
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strncmp(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @strlen(i8* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i8* @next_arg(i8* noundef %args, i8** nocapture noundef writeonly %param, i8** nocapture noundef writeonly %val) local_unnamed_addr #0 {
entry:
  %0 = load i8, i8* %args, align 1
  %cmp = icmp eq i8 %0, 34
  %spec.select.idx = zext i1 %cmp to i64
  %spec.select = getelementptr i8, i8* %args, i64 %spec.select.idx
  %1 = load i8, i8* %spec.select, align 1
  %tobool.not123 = icmp eq i8 %1, 0
  br i1 %tobool.not123, label %for.end.thread, label %for.body.preheader

for.end.thread:                                   ; preds = %entry
  store i8* %spec.select, i8** %param, align 8
  br label %if.then33

for.body.preheader:                               ; preds = %entry
  %spec.select120 = zext i1 %cmp to i32
  br label %for.body

for.body:                                         ; preds = %for.body.preheader, %if.end12
  %2 = phi i8 [ %6, %if.end12 ], [ %1, %for.body.preheader ]
  %in_quote.1126 = phi i32 [ %in_quote.2, %if.end12 ], [ %spec.select120, %for.body.preheader ]
  %equals.0125 = phi i32 [ %equals.1, %if.end12 ], [ 0, %for.body.preheader ]
  %i.0124 = phi i32 [ %inc, %if.end12 ], [ 0, %for.body.preheader ]
  %3 = zext i8 %2 to i64
  %arrayidx6 = getelementptr [0 x i8], [0 x i8]* @_ctype, i64 0, i64 %3
  %4 = load i8, i8* %arrayidx6, align 1
  %5 = and i8 %4, 32
  %cmp8 = icmp eq i8 %5, 0
  %tobool10 = icmp ne i32 %in_quote.1126, 0
  %or.cond = select i1 %cmp8, i1 true, i1 %tobool10
  br i1 %or.cond, label %if.end12, label %for.end

if.end12:                                         ; preds = %for.body
  %cmp13 = icmp eq i32 %equals.0125, 0
  %cmp19 = icmp eq i8 %2, 61
  %spec.select121 = select i1 %cmp19, i32 %i.0124, i32 0
  %equals.1 = select i1 %cmp13, i32 %spec.select121, i32 %equals.0125
  %cmp27 = icmp eq i8 %2, 34
  %lnot = xor i1 %tobool10, true
  %lnot.ext = zext i1 %lnot to i32
  %in_quote.2 = select i1 %cmp27, i32 %lnot.ext, i32 %in_quote.1126
  %inc = add i32 %i.0124, 1
  %idxprom = zext i32 %inc to i64
  %arrayidx = getelementptr i8, i8* %spec.select, i64 %idxprom
  %6 = load i8, i8* %arrayidx, align 1
  %tobool.not = icmp eq i8 %6, 0
  br i1 %tobool.not, label %for.end, label %for.body

for.end:                                          ; preds = %if.end12, %for.body
  %i.0.lcssa122 = phi i32 [ %inc, %if.end12 ], [ %i.0124, %for.body ]
  %equals.0.lcssa = phi i32 [ %equals.1, %if.end12 ], [ %equals.0125, %for.body ]
  %idxprom.le = zext i32 %i.0.lcssa122 to i64
  %arrayidx.le = getelementptr i8, i8* %spec.select, i64 %idxprom.le
  store i8* %spec.select, i8** %param, align 8
  %tobool32.not = icmp eq i32 %equals.0.lcssa, 0
  br i1 %tobool32.not, label %if.then33, label %if.else

if.then33:                                        ; preds = %for.end.thread, %for.end
  %arrayidx.le140 = phi i8* [ %spec.select, %for.end.thread ], [ %arrayidx.le, %for.end ]
  %i.0.lcssa122138 = phi i32 [ 0, %for.end.thread ], [ %i.0.lcssa122, %for.end ]
  store i8* null, i8** %val, align 8
  br label %if.end53

if.else:                                          ; preds = %for.end
  %idxprom34 = zext i32 %equals.0.lcssa to i64
  %arrayidx35 = getelementptr i8, i8* %spec.select, i64 %idxprom34
  store i8 0, i8* %arrayidx35, align 1
  %add.ptr36 = getelementptr i8, i8* %arrayidx35, i64 1
  store i8* %add.ptr36, i8** %val, align 8
  %7 = load i8, i8* %add.ptr36, align 1
  %cmp38 = icmp eq i8 %7, 34
  br i1 %cmp38, label %if.then40, label %if.end53

if.then40:                                        ; preds = %if.else
  %incdec.ptr41 = getelementptr i8, i8* %add.ptr36, i64 1
  store i8* %incdec.ptr41, i8** %val, align 8
  %sub = add i32 %i.0.lcssa122, -1
  %idxprom42 = zext i32 %sub to i64
  %arrayidx43 = getelementptr i8, i8* %spec.select, i64 %idxprom42
  %8 = load i8, i8* %arrayidx43, align 1
  %cmp45 = icmp eq i8 %8, 34
  br i1 %cmp45, label %if.then47, label %if.end53

if.then47:                                        ; preds = %if.then40
  store i8 0, i8* %arrayidx43, align 1
  br label %if.end53

if.end53:                                         ; preds = %if.else, %if.then47, %if.then40, %if.then33
  %arrayidx.le139 = phi i8* [ %arrayidx.le, %if.else ], [ %arrayidx.le, %if.then47 ], [ %arrayidx.le, %if.then40 ], [ %arrayidx.le140, %if.then33 ]
  %i.0.lcssa122137 = phi i32 [ %i.0.lcssa122, %if.else ], [ %i.0.lcssa122, %if.then47 ], [ %i.0.lcssa122, %if.then40 ], [ %i.0.lcssa122138, %if.then33 ]
  br i1 %cmp, label %land.lhs.true55, label %if.end66

land.lhs.true55:                                  ; preds = %if.end53
  %sub56 = add i32 %i.0.lcssa122137, -1
  %idxprom57 = zext i32 %sub56 to i64
  %arrayidx58 = getelementptr i8, i8* %spec.select, i64 %idxprom57
  %9 = load i8, i8* %arrayidx58, align 1
  %cmp60 = icmp eq i8 %9, 34
  br i1 %cmp60, label %if.then62, label %if.end66

if.then62:                                        ; preds = %land.lhs.true55
  store i8 0, i8* %arrayidx58, align 1
  br label %if.end66

if.end66:                                         ; preds = %if.then62, %land.lhs.true55, %if.end53
  %10 = load i8, i8* %arrayidx.le139, align 1
  %tobool69.not = icmp eq i8 %10, 0
  br i1 %tobool69.not, label %if.end78, label %if.then70

if.then70:                                        ; preds = %if.end66
  store i8 0, i8* %arrayidx.le139, align 1
  %add = add i32 %i.0.lcssa122137, 1
  %idx.ext73 = zext i32 %add to i64
  %add.ptr74 = getelementptr i8, i8* %spec.select, i64 %idx.ext73
  br label %if.end78

if.end78:                                         ; preds = %if.end66, %if.then70
  %args.addr.1 = phi i8* [ %add.ptr74, %if.then70 ], [ %arrayidx.le139, %if.end66 ]
  %call = call i8* @skip_spaces(i8* noundef %args.addr.1) #4
  ret i8* %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @skip_spaces(i8* noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @simple_strtol(i8* noundef, i8** noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #3

attributes #0 = { noinline nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #3 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nobuiltin nounwind "no-builtins" }
attributes #5 = { nobuiltin "no-builtins" }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}

!0 = !{i32 1, !"wchar_size", i32 2}
!1 = !{i32 1, !"branch-target-enforcement", i32 0}
!2 = !{i32 1, !"sign-return-address", i32 0}
!3 = !{i32 1, !"sign-return-address-all", i32 0}
!4 = !{i32 1, !"sign-return-address-with-bkey", i32 0}
!5 = !{i32 7, !"frame-pointer", i32 1}
!6 = !{!"clang version 14.0.0"}
!7 = distinct !{!7, !8}
!8 = !{!"llvm.loop.isvectorized", i32 1}
!9 = distinct !{!9, !8}
!10 = !{!"auto-init"}
