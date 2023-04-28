; ModuleID = 'crypto/bn/bn_mul.c'
source_filename = "crypto/bn/bn_mul.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bignum_st = type { i64*, i32, i32, i32, i32 }
%struct.bignum_ctx = type opaque

; Function Attrs: noinline nounwind uwtable
define i64 @bn_sub_part_words(i64* noundef %r, i64* noundef %a, i64* noundef %b, i32 noundef %cl, i32 noundef %dl) local_unnamed_addr #0 {
entry:
  %call = tail call i64 @bn_sub_words(i64* noundef %r, i64* noundef %a, i64* noundef %b, i32 noundef %cl) #3
  %cmp = icmp eq i32 %dl, 0
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %idx.ext = sext i32 %cl to i64
  %add.ptr = getelementptr inbounds i64, i64* %r, i64 %idx.ext
  %add.ptr4 = getelementptr inbounds i64, i64* %b, i64 %idx.ext
  %cmp5 = icmp slt i32 %dl, 0
  br i1 %cmp5, label %for.cond.preheader, label %if.else

for.cond.preheader:                               ; preds = %if.end
  %0 = load i64, i64* %add.ptr4, align 8, !tbaa !4
  %1 = add i64 %call, %0
  %sub7288 = sub i64 0, %1
  store i64 %sub7288, i64* %add.ptr, align 8, !tbaa !4
  %cmp9.not289 = icmp eq i64 %0, 0
  %spec.select290 = select i1 %cmp9.not289, i64 %call, i64 1
  %cmp12291 = icmp eq i32 %dl, -1
  br i1 %cmp12291, label %cleanup, label %if.end14

if.end14:                                         ; preds = %for.cond.preheader, %if.end50
  %spec.select295 = phi i64 [ %spec.select, %if.end50 ], [ %spec.select290, %for.cond.preheader ]
  %dl.addr.0294 = phi i32 [ %inc47, %if.end50 ], [ %dl, %for.cond.preheader ]
  %b.addr.0293 = phi i64* [ %add.ptr51, %if.end50 ], [ %add.ptr4, %for.cond.preheader ]
  %r.addr.0292 = phi i64* [ %add.ptr52, %if.end50 ], [ %add.ptr, %for.cond.preheader ]
  %arrayidx15 = getelementptr inbounds i64, i64* %b.addr.0293, i64 1
  %2 = load i64, i64* %arrayidx15, align 8, !tbaa !4
  %3 = add i64 %spec.select295, %2
  %sub17 = sub i64 0, %3
  %arrayidx19 = getelementptr inbounds i64, i64* %r.addr.0292, i64 1
  store i64 %sub17, i64* %arrayidx19, align 8, !tbaa !4
  %cmp20.not = icmp eq i64 %2, 0
  %spec.select255 = select i1 %cmp20.not, i64 %spec.select295, i64 1
  %cmp24 = icmp eq i32 %dl.addr.0294, -2
  br i1 %cmp24, label %cleanup, label %if.end26

if.end26:                                         ; preds = %if.end14
  %arrayidx27 = getelementptr inbounds i64, i64* %b.addr.0293, i64 2
  %4 = load i64, i64* %arrayidx27, align 8, !tbaa !4
  %5 = add i64 %spec.select255, %4
  %sub29 = sub i64 0, %5
  %arrayidx31 = getelementptr inbounds i64, i64* %r.addr.0292, i64 2
  store i64 %sub29, i64* %arrayidx31, align 8, !tbaa !4
  %cmp32.not = icmp eq i64 %4, 0
  %spec.select256 = select i1 %cmp32.not, i64 %spec.select255, i64 1
  %cmp36 = icmp ugt i32 %dl.addr.0294, -4
  br i1 %cmp36, label %cleanup, label %if.end38

if.end38:                                         ; preds = %if.end26
  %arrayidx39 = getelementptr inbounds i64, i64* %b.addr.0293, i64 3
  %6 = load i64, i64* %arrayidx39, align 8, !tbaa !4
  %7 = add i64 %spec.select256, %6
  %sub41 = sub i64 0, %7
  %arrayidx43 = getelementptr inbounds i64, i64* %r.addr.0292, i64 3
  store i64 %sub41, i64* %arrayidx43, align 8, !tbaa !4
  %cmp44.not = icmp eq i64 %6, 0
  %spec.select257 = select i1 %cmp44.not, i64 %spec.select256, i64 1
  %cmp48 = icmp eq i32 %dl.addr.0294, -4
  br i1 %cmp48, label %cleanup, label %if.end50

if.end50:                                         ; preds = %if.end38
  %inc47 = add nuw nsw i32 %dl.addr.0294, 4
  %add.ptr51 = getelementptr inbounds i64, i64* %b.addr.0293, i64 4
  %add.ptr52 = getelementptr inbounds i64, i64* %r.addr.0292, i64 4
  %8 = load i64, i64* %add.ptr51, align 8, !tbaa !4
  %9 = add i64 %spec.select257, %8
  %sub7 = sub i64 0, %9
  store i64 %sub7, i64* %add.ptr52, align 8, !tbaa !4
  %cmp9.not = icmp eq i64 %8, 0
  %spec.select = select i1 %cmp9.not, i64 %spec.select257, i64 1
  %cmp12 = icmp eq i32 %inc47, -1
  br i1 %cmp12, label %cleanup, label %if.end14

if.else:                                          ; preds = %if.end
  %add.ptr2 = getelementptr inbounds i64, i64* %a, i64 %idx.ext
  %tobool.not277 = icmp eq i64 %call, 0
  br i1 %tobool.not277, label %for.cond129.preheader, label %while.body

while.body:                                       ; preds = %if.else, %if.end95
  %save_dl.0281 = phi i32 [ %dec92, %if.end95 ], [ %dl, %if.else ]
  %c.5280 = phi i64 [ %spec.select260, %if.end95 ], [ %call, %if.else ]
  %a.addr.0279 = phi i64* [ %add.ptr96, %if.end95 ], [ %add.ptr2, %if.else ]
  %r.addr.1278 = phi i64* [ %add.ptr97, %if.end95 ], [ %add.ptr, %if.else ]
  %10 = load i64, i64* %a.addr.0279, align 8, !tbaa !4
  %sub54 = sub i64 %10, %c.5280
  store i64 %sub54, i64* %r.addr.1278, align 8, !tbaa !4
  %cmp57.not = icmp eq i64 %10, 0
  %spec.select258 = select i1 %cmp57.not, i64 %c.5280, i64 0
  %cmp60 = icmp slt i32 %save_dl.0281, 2
  br i1 %cmp60, label %cleanup, label %if.end62

if.end62:                                         ; preds = %while.body
  %arrayidx63 = getelementptr inbounds i64, i64* %a.addr.0279, i64 1
  %11 = load i64, i64* %arrayidx63, align 8, !tbaa !4
  %sub64 = sub i64 %11, %spec.select258
  %arrayidx66 = getelementptr inbounds i64, i64* %r.addr.1278, i64 1
  store i64 %sub64, i64* %arrayidx66, align 8, !tbaa !4
  %cmp67.not = icmp eq i64 %11, 0
  %spec.select259 = select i1 %cmp67.not, i64 %spec.select258, i64 0
  %cmp71 = icmp eq i32 %save_dl.0281, 2
  br i1 %cmp71, label %cleanup, label %if.end73

if.end73:                                         ; preds = %if.end62
  %arrayidx74 = getelementptr inbounds i64, i64* %a.addr.0279, i64 2
  %12 = load i64, i64* %arrayidx74, align 8, !tbaa !4
  %sub75 = sub i64 %12, %spec.select259
  %arrayidx77 = getelementptr inbounds i64, i64* %r.addr.1278, i64 2
  store i64 %sub75, i64* %arrayidx77, align 8, !tbaa !4
  %cmp78.not = icmp eq i64 %12, 0
  %spec.select260 = select i1 %cmp78.not, i64 %spec.select259, i64 0
  %cmp82 = icmp ult i32 %save_dl.0281, 4
  br i1 %cmp82, label %cleanup, label %if.end84

if.end84:                                         ; preds = %if.end73
  %arrayidx85 = getelementptr inbounds i64, i64* %a.addr.0279, i64 3
  %13 = load i64, i64* %arrayidx85, align 8, !tbaa !4
  %sub86 = sub i64 %13, %spec.select260
  %arrayidx88 = getelementptr inbounds i64, i64* %r.addr.1278, i64 3
  store i64 %sub86, i64* %arrayidx88, align 8, !tbaa !4
  %cmp89.not = icmp eq i64 %13, 0
  %spec.select261 = select i1 %cmp89.not, i64 %spec.select260, i64 0
  %cmp93 = icmp eq i32 %save_dl.0281, 4
  br i1 %cmp93, label %cleanup, label %if.end95

if.end95:                                         ; preds = %if.end84
  %dec92 = add nsw i32 %save_dl.0281, -4
  %add.ptr96 = getelementptr inbounds i64, i64* %a.addr.0279, i64 4
  %add.ptr97 = getelementptr inbounds i64, i64* %r.addr.1278, i64 4
  %tobool.not = icmp eq i64 %spec.select261, 0
  br i1 %tobool.not, label %for.cond129.preheader, label %while.body, !llvm.loop !8

for.cond129.preheader:                            ; preds = %if.end95, %if.else
  %r.addr.1.lcssa = phi i64* [ %add.ptr, %if.else ], [ %add.ptr97, %if.end95 ]
  %a.addr.0.lcssa = phi i64* [ %add.ptr2, %if.else ], [ %add.ptr96, %if.end95 ]
  %save_dl.0.lcssa = phi i32 [ %dl, %if.else ], [ %dec92, %if.end95 ]
  %14 = load i64, i64* %a.addr.0.lcssa, align 8, !tbaa !4
  store i64 %14, i64* %r.addr.1.lcssa, align 8, !tbaa !4
  %cmp133284 = icmp eq i32 %save_dl.0.lcssa, 1
  br i1 %cmp133284, label %cleanup, label %if.end135

if.end135:                                        ; preds = %for.cond129.preheader, %if.end153
  %dl.addr.7287 = phi i32 [ %dec150, %if.end153 ], [ %save_dl.0.lcssa, %for.cond129.preheader ]
  %a.addr.2286 = phi i64* [ %add.ptr154, %if.end153 ], [ %a.addr.0.lcssa, %for.cond129.preheader ]
  %r.addr.3285 = phi i64* [ %add.ptr155, %if.end153 ], [ %r.addr.1.lcssa, %for.cond129.preheader ]
  %arrayidx136 = getelementptr inbounds i64, i64* %a.addr.2286, i64 1
  %15 = load i64, i64* %arrayidx136, align 8, !tbaa !4
  %arrayidx137 = getelementptr inbounds i64, i64* %r.addr.3285, i64 1
  store i64 %15, i64* %arrayidx137, align 8, !tbaa !4
  %cmp139 = icmp eq i32 %dl.addr.7287, 2
  br i1 %cmp139, label %cleanup, label %if.end141

if.end141:                                        ; preds = %if.end135
  %arrayidx142 = getelementptr inbounds i64, i64* %a.addr.2286, i64 2
  %16 = load i64, i64* %arrayidx142, align 8, !tbaa !4
  %arrayidx143 = getelementptr inbounds i64, i64* %r.addr.3285, i64 2
  store i64 %16, i64* %arrayidx143, align 8, !tbaa !4
  %cmp145 = icmp ult i32 %dl.addr.7287, 4
  br i1 %cmp145, label %cleanup, label %if.end147

if.end147:                                        ; preds = %if.end141
  %arrayidx148 = getelementptr inbounds i64, i64* %a.addr.2286, i64 3
  %17 = load i64, i64* %arrayidx148, align 8, !tbaa !4
  %arrayidx149 = getelementptr inbounds i64, i64* %r.addr.3285, i64 3
  store i64 %17, i64* %arrayidx149, align 8, !tbaa !4
  %cmp151 = icmp eq i32 %dl.addr.7287, 4
  br i1 %cmp151, label %cleanup, label %if.end153

if.end153:                                        ; preds = %if.end147
  %dec150 = add nsw i32 %dl.addr.7287, -4
  %add.ptr154 = getelementptr inbounds i64, i64* %a.addr.2286, i64 4
  %add.ptr155 = getelementptr inbounds i64, i64* %r.addr.3285, i64 4
  %18 = load i64, i64* %add.ptr154, align 8, !tbaa !4
  store i64 %18, i64* %add.ptr155, align 8, !tbaa !4
  %cmp133 = icmp ult i32 %dec150, 2
  br i1 %cmp133, label %cleanup, label %if.end135

cleanup:                                          ; preds = %while.body, %if.end62, %if.end73, %if.end84, %if.end147, %if.end141, %if.end135, %if.end153, %if.end50, %if.end14, %if.end26, %if.end38, %for.cond129.preheader, %for.cond.preheader, %entry
  %retval.0 = phi i64 [ %call, %entry ], [ %spec.select290, %for.cond.preheader ], [ 0, %for.cond129.preheader ], [ %spec.select, %if.end50 ], [ %spec.select255, %if.end14 ], [ %spec.select256, %if.end26 ], [ %spec.select257, %if.end38 ], [ 0, %if.end153 ], [ 0, %if.end135 ], [ 0, %if.end141 ], [ 0, %if.end147 ], [ %spec.select258, %while.body ], [ %spec.select259, %if.end62 ], [ %spec.select260, %if.end73 ], [ %spec.select261, %if.end84 ]
  ret i64 %retval.0
}

declare i64 @bn_sub_words(i64* noundef, i64* noundef, i64* noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define void @bn_mul_recursive(i64* noundef %r, i64* noundef %a, i64* noundef %b, i32 noundef %n2, i32 noundef %dna, i32 noundef %dnb, i64* noundef %t) local_unnamed_addr #0 {
entry:
  %div = sdiv i32 %n2, 2
  %add = add nsw i32 %div, %dna
  %add1 = add nsw i32 %div, %dnb
  %cmp = icmp eq i32 %n2, 8
  %0 = or i32 %dnb, %dna
  %1 = icmp eq i32 %0, 0
  %2 = and i1 %cmp, %1
  br i1 %2, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @bn_mul_comba8(i64* noundef %r, i64* noundef %a, i64* noundef %b) #3
  br label %cleanup

if.end:                                           ; preds = %entry
  %cmp5 = icmp slt i32 %n2, 16
  br i1 %cmp5, label %if.then6, label %if.end17

if.then6:                                         ; preds = %if.end
  %add7 = add nsw i32 %dna, %n2
  %add8 = add nsw i32 %dnb, %n2
  tail call void @bn_mul_normal(i64* noundef %r, i64* noundef %a, i32 noundef %add7, i64* noundef %b, i32 noundef %add8) #4
  %add9 = add i32 %dnb, %dna
  %cmp10 = icmp slt i32 %add9, 0
  br i1 %cmp10, label %if.then11, label %cleanup

if.then11:                                        ; preds = %if.then6
  %mul = shl nsw i32 %n2, 1
  %add13 = add i32 %add9, %mul
  %idxprom = sext i32 %add13 to i64
  %arrayidx = getelementptr inbounds i64, i64* %r, i64 %idxprom
  %3 = bitcast i64* %arrayidx to i8*
  %sub = sub nsw i32 0, %add9
  %conv419 = zext i32 %sub to i64
  %mul15 = shl nuw nsw i64 %conv419, 3
  %call = tail call i8* @memset(i8* noundef %3, i32 noundef 0, i64 noundef %mul15) #3
  br label %cleanup

if.end17:                                         ; preds = %if.end
  %idxprom18 = sext i32 %div to i64
  %arrayidx19 = getelementptr inbounds i64, i64* %a, i64 %idxprom18
  %sub20 = sub i32 0, %dna
  %call21 = tail call i32 @bn_cmp_part_words(i64* noundef %a, i64* noundef %arrayidx19, i32 noundef %add, i32 noundef %sub20) #3
  %arrayidx23 = getelementptr inbounds i64, i64* %b, i64 %idxprom18
  %call25 = tail call i32 @bn_cmp_part_words(i64* noundef %arrayidx23, i64* noundef %b, i32 noundef %add1, i32 noundef %dnb) #3
  %mul26 = mul nsw i32 %call21, 3
  %add27 = add nsw i32 %mul26, %call25
  switch i32 %add27, label %sw.epilog [
    i32 -4, label %sw.bb
    i32 -3, label %sw.bb38
    i32 -2, label %sw.bb39
    i32 -1, label %sw.bb50
    i32 0, label %sw.bb50
    i32 1, label %sw.bb50
    i32 2, label %sw.bb51
    i32 3, label %sw.bb62
    i32 4, label %sw.bb63
  ]

sw.bb:                                            ; preds = %if.end17
  %call31 = tail call i64 @bn_sub_part_words(i64* noundef %t, i64* noundef %arrayidx19, i64* noundef %a, i32 noundef %add, i32 noundef %dna) #4
  %arrayidx33 = getelementptr inbounds i64, i64* %t, i64 %idxprom18
  %sub36 = sub i32 0, %dnb
  %call37 = tail call i64 @bn_sub_part_words(i64* noundef %arrayidx33, i64* noundef %b, i64* noundef %arrayidx23, i32 noundef %add1, i32 noundef %sub36) #4
  br label %sw.epilog

sw.bb38:                                          ; preds = %if.end17
  br label %sw.epilog

sw.bb39:                                          ; preds = %if.end17
  %call43 = tail call i64 @bn_sub_part_words(i64* noundef %t, i64* noundef %arrayidx19, i64* noundef %a, i32 noundef %add, i32 noundef %dna) #4
  %arrayidx45 = getelementptr inbounds i64, i64* %t, i64 %idxprom18
  %call49 = tail call i64 @bn_sub_part_words(i64* noundef %arrayidx45, i64* noundef %arrayidx23, i64* noundef %b, i32 noundef %add1, i32 noundef %dnb) #4
  br label %sw.epilog

sw.bb50:                                          ; preds = %if.end17, %if.end17, %if.end17
  br label %sw.epilog

sw.bb51:                                          ; preds = %if.end17
  %call55 = tail call i64 @bn_sub_part_words(i64* noundef %t, i64* noundef %a, i64* noundef %arrayidx19, i32 noundef %add, i32 noundef %sub20) #4
  %arrayidx57 = getelementptr inbounds i64, i64* %t, i64 %idxprom18
  %sub60 = sub i32 0, %dnb
  %call61 = tail call i64 @bn_sub_part_words(i64* noundef %arrayidx57, i64* noundef %b, i64* noundef %arrayidx23, i32 noundef %add1, i32 noundef %sub60) #4
  br label %sw.epilog

sw.bb62:                                          ; preds = %if.end17
  br label %sw.epilog

sw.bb63:                                          ; preds = %if.end17
  %call67 = tail call i64 @bn_sub_part_words(i64* noundef %t, i64* noundef %a, i64* noundef %arrayidx19, i32 noundef %add, i32 noundef %sub20) #4
  %arrayidx69 = getelementptr inbounds i64, i64* %t, i64 %idxprom18
  %call73 = tail call i64 @bn_sub_part_words(i64* noundef %arrayidx69, i64* noundef %arrayidx23, i64* noundef %b, i32 noundef %add1, i32 noundef %dnb) #4
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end17, %sw.bb63, %sw.bb62, %sw.bb51, %sw.bb50, %sw.bb39, %sw.bb38, %sw.bb
  %tobool154.not = phi i1 [ true, %if.end17 ], [ true, %sw.bb63 ], [ true, %sw.bb62 ], [ false, %sw.bb51 ], [ true, %sw.bb50 ], [ false, %sw.bb39 ], [ true, %sw.bb38 ], [ true, %sw.bb ]
  %tobool129.not = phi i1 [ true, %if.end17 ], [ true, %sw.bb63 ], [ false, %sw.bb62 ], [ true, %sw.bb51 ], [ false, %sw.bb50 ], [ true, %sw.bb39 ], [ false, %sw.bb38 ], [ true, %sw.bb ]
  %4 = and i32 %n2, -2
  %5 = icmp eq i32 %4, 8
  %6 = and i1 %5, %1
  br i1 %6, label %if.then82, label %if.else98

if.then82:                                        ; preds = %sw.epilog
  %idxprom84 = sext i32 %n2 to i64
  %arrayidx85 = getelementptr inbounds i64, i64* %t, i64 %idxprom84
  br i1 %tobool129.not, label %if.then83, label %if.else

if.then83:                                        ; preds = %if.then82
  %arrayidx87 = getelementptr inbounds i64, i64* %t, i64 %idxprom18
  tail call void @bn_mul_comba4(i64* noundef nonnull %arrayidx85, i64* noundef %t, i64* noundef %arrayidx87) #3
  br label %if.end91

if.else:                                          ; preds = %if.then82
  %7 = bitcast i64* %arrayidx85 to i8*
  %call90 = tail call i8* @memset(i8* noundef nonnull %7, i32 noundef 0, i64 noundef 64) #3
  br label %if.end91

if.end91:                                         ; preds = %if.else, %if.then83
  tail call void @bn_mul_comba4(i64* noundef %r, i64* noundef %a, i64* noundef %b) #3
  %arrayidx93 = getelementptr inbounds i64, i64* %r, i64 %idxprom84
  tail call void @bn_mul_comba4(i64* noundef nonnull %arrayidx93, i64* noundef %arrayidx19, i64* noundef %arrayidx23) #3
  %.pre = zext i32 %n2 to i64
  br label %if.end149

if.else98:                                        ; preds = %sw.epilog
  %8 = icmp eq i32 %4, 16
  %9 = and i1 %8, %1
  br i1 %9, label %if.then107, label %if.else125

if.then107:                                       ; preds = %if.else98
  %idxprom110421 = zext i32 %n2 to i64
  %arrayidx111 = getelementptr inbounds i64, i64* %t, i64 %idxprom110421
  br i1 %tobool129.not, label %if.then109, label %if.else114

if.then109:                                       ; preds = %if.then107
  %arrayidx113 = getelementptr inbounds i64, i64* %t, i64 %idxprom18
  tail call void @bn_mul_comba8(i64* noundef nonnull %arrayidx111, i64* noundef %t, i64* noundef %arrayidx113) #3
  br label %if.end118

if.else114:                                       ; preds = %if.then107
  %10 = bitcast i64* %arrayidx111 to i8*
  %call117 = tail call i8* @memset(i8* noundef nonnull %10, i32 noundef 0, i64 noundef 128) #3
  br label %if.end118

if.end118:                                        ; preds = %if.else114, %if.then109
  tail call void @bn_mul_comba8(i64* noundef %r, i64* noundef %a, i64* noundef %b) #3
  %arrayidx120 = getelementptr inbounds i64, i64* %r, i64 %idxprom110421
  tail call void @bn_mul_comba8(i64* noundef nonnull %arrayidx120, i64* noundef %arrayidx19, i64* noundef %arrayidx23) #3
  br label %if.end149

if.else125:                                       ; preds = %if.else98
  %mul126 = shl nuw nsw i32 %n2, 1
  %idxprom127 = sext i32 %mul126 to i64
  %arrayidx128 = getelementptr inbounds i64, i64* %t, i64 %idxprom127
  %idxprom131424 = zext i32 %n2 to i64
  %arrayidx132 = getelementptr inbounds i64, i64* %t, i64 %idxprom131424
  br i1 %tobool129.not, label %if.then130, label %if.else135

if.then130:                                       ; preds = %if.else125
  %arrayidx134 = getelementptr inbounds i64, i64* %t, i64 %idxprom18
  tail call void @bn_mul_recursive(i64* noundef nonnull %arrayidx132, i64* noundef %t, i64* noundef %arrayidx134, i32 noundef %div, i32 noundef 0, i32 noundef 0, i64* noundef nonnull %arrayidx128) #4
  br label %if.end141

if.else135:                                       ; preds = %if.else125
  %11 = bitcast i64* %arrayidx132 to i8*
  %mul139 = shl nuw nsw i64 %idxprom131424, 3
  %call140 = tail call i8* @memset(i8* noundef nonnull %11, i32 noundef 0, i64 noundef %mul139) #3
  br label %if.end141

if.end141:                                        ; preds = %if.else135, %if.then130
  tail call void @bn_mul_recursive(i64* noundef %r, i64* noundef %a, i64* noundef %b, i32 noundef %div, i32 noundef 0, i32 noundef 0, i64* noundef nonnull %arrayidx128) #4
  %arrayidx143 = getelementptr inbounds i64, i64* %r, i64 %idxprom131424
  tail call void @bn_mul_recursive(i64* noundef nonnull %arrayidx143, i64* noundef %arrayidx19, i64* noundef %arrayidx23, i32 noundef %div, i32 noundef %dna, i32 noundef %dnb, i64* noundef nonnull %arrayidx128) #4
  br label %if.end149

if.end149:                                        ; preds = %if.end118, %if.end141, %if.end91
  %idxprom150420.pre-phi = phi i64 [ %idxprom110421, %if.end118 ], [ %idxprom131424, %if.end141 ], [ %.pre, %if.end91 ]
  %arrayidx151 = getelementptr inbounds i64, i64* %r, i64 %idxprom150420.pre-phi
  %call152 = tail call i64 @bn_add_words(i64* noundef %t, i64* noundef %r, i64* noundef %arrayidx151, i32 noundef %n2) #3
  %conv153 = trunc i64 %call152 to i32
  %arrayidx165 = getelementptr inbounds i64, i64* %t, i64 %idxprom150420.pre-phi
  br i1 %tobool154.not, label %if.else163, label %if.then155

if.then155:                                       ; preds = %if.end149
  %call160 = tail call i64 @bn_sub_words(i64* noundef %arrayidx165, i64* noundef %t, i64* noundef %arrayidx165, i32 noundef %n2) #3
  %conv161 = trunc i64 %call160 to i32
  %sub162 = sub nsw i32 %conv153, %conv161
  br label %if.end171

if.else163:                                       ; preds = %if.end149
  %call168 = tail call i64 @bn_add_words(i64* noundef %arrayidx165, i64* noundef %arrayidx165, i64* noundef %t, i32 noundef %n2) #3
  %conv169 = trunc i64 %call168 to i32
  %add170 = add nsw i32 %conv169, %conv153
  br label %if.end171

if.end171:                                        ; preds = %if.else163, %if.then155
  %c1.0 = phi i32 [ %sub162, %if.then155 ], [ %add170, %if.else163 ]
  %arrayidx173 = getelementptr inbounds i64, i64* %r, i64 %idxprom18
  %arrayidx177 = getelementptr inbounds i64, i64* %t, i64 %idxprom150420.pre-phi
  %call178 = tail call i64 @bn_add_words(i64* noundef %arrayidx173, i64* noundef %arrayidx173, i64* noundef %arrayidx177, i32 noundef %n2) #3
  %conv179 = trunc i64 %call178 to i32
  %add180 = add nsw i32 %c1.0, %conv179
  %tobool181.not = icmp eq i32 %add180, 0
  br i1 %tobool181.not, label %cleanup, label %if.then182

if.then182:                                       ; preds = %if.end171
  %add183 = add nsw i32 %div, %n2
  %idxprom184 = sext i32 %add183 to i64
  %arrayidx185 = getelementptr inbounds i64, i64* %r, i64 %idxprom184
  %12 = load i64, i64* %arrayidx185, align 8, !tbaa !4
  %conv186 = sext i32 %add180 to i64
  %add187 = add i64 %12, %conv186
  store i64 %add187, i64* %arrayidx185, align 8, !tbaa !4
  %cmp189 = icmp ult i64 %add187, %conv186
  br i1 %cmp189, label %do.body, label %cleanup

do.body:                                          ; preds = %if.then182, %do.body
  %p.0 = phi i64* [ %incdec.ptr, %do.body ], [ %arrayidx185, %if.then182 ]
  %incdec.ptr = getelementptr inbounds i64, i64* %p.0, i64 1
  %13 = load i64, i64* %incdec.ptr, align 8, !tbaa !4
  %add192 = add i64 %13, 1
  store i64 %add192, i64* %incdec.ptr, align 8, !tbaa !4
  %cmp194 = icmp eq i64 %add192, 0
  br i1 %cmp194, label %do.body, label %cleanup, !llvm.loop !10

cleanup:                                          ; preds = %do.body, %if.end171, %if.then182, %if.then6, %if.then11, %if.then
  ret void
}

declare void @bn_mul_comba8(i64* noundef, i64* noundef, i64* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define void @bn_mul_normal(i64* noundef %r, i64* noundef %a, i32 noundef %na, i64* noundef %b, i32 noundef %nb) local_unnamed_addr #0 {
entry:
  %cmp = icmp slt i32 %na, %nb
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %na.addr.0 = phi i32 [ %nb, %if.then ], [ %na, %entry ]
  %b.addr.0 = phi i64* [ %a, %if.then ], [ %b, %entry ]
  %nb.addr.0 = phi i32 [ %na, %if.then ], [ %nb, %entry ]
  %a.addr.0 = phi i64* [ %b, %if.then ], [ %a, %entry ]
  %idxprom = sext i32 %na.addr.0 to i64
  %arrayidx = getelementptr inbounds i64, i64* %r, i64 %idxprom
  %cmp1 = icmp slt i32 %nb.addr.0, 1
  br i1 %cmp1, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.end
  %call = tail call i64 @bn_mul_words(i64* noundef %r, i64* noundef %a.addr.0, i32 noundef %na.addr.0, i64 noundef 0) #3
  br label %cleanup

if.else:                                          ; preds = %if.end
  %0 = load i64, i64* %b.addr.0, align 8, !tbaa !4
  %call4 = tail call i64 @bn_mul_words(i64* noundef %r, i64* noundef %a.addr.0, i32 noundef %na.addr.0, i64 noundef %0) #3
  store i64 %call4, i64* %arrayidx, align 8, !tbaa !4
  %cmp781 = icmp eq i32 %nb.addr.0, 1
  br i1 %cmp781, label %cleanup, label %if.end9

if.end9:                                          ; preds = %if.else, %if.end33
  %r.addr.085 = phi i64* [ %arrayidx34, %if.end33 ], [ %r, %if.else ]
  %rr.084 = phi i64* [ %arrayidx37, %if.end33 ], [ %arrayidx, %if.else ]
  %nb.addr.183 = phi i32 [ %dec30, %if.end33 ], [ %nb.addr.0, %if.else ]
  %b.addr.182 = phi i64* [ %arrayidx35, %if.end33 ], [ %b.addr.0, %if.else ]
  %arrayidx10 = getelementptr inbounds i64, i64* %r.addr.085, i64 1
  %arrayidx11 = getelementptr inbounds i64, i64* %b.addr.182, i64 1
  %1 = load i64, i64* %arrayidx11, align 8, !tbaa !4
  %call12 = tail call i64 @bn_mul_add_words(i64* noundef nonnull %arrayidx10, i64* noundef %a.addr.0, i32 noundef %na.addr.0, i64 noundef %1) #3
  %arrayidx13 = getelementptr inbounds i64, i64* %rr.084, i64 1
  store i64 %call12, i64* %arrayidx13, align 8, !tbaa !4
  %cmp15 = icmp eq i32 %nb.addr.183, 2
  br i1 %cmp15, label %cleanup, label %if.end17

if.end17:                                         ; preds = %if.end9
  %arrayidx18 = getelementptr inbounds i64, i64* %r.addr.085, i64 2
  %arrayidx19 = getelementptr inbounds i64, i64* %b.addr.182, i64 2
  %2 = load i64, i64* %arrayidx19, align 8, !tbaa !4
  %call20 = tail call i64 @bn_mul_add_words(i64* noundef nonnull %arrayidx18, i64* noundef %a.addr.0, i32 noundef %na.addr.0, i64 noundef %2) #3
  %arrayidx21 = getelementptr inbounds i64, i64* %rr.084, i64 2
  store i64 %call20, i64* %arrayidx21, align 8, !tbaa !4
  %cmp23 = icmp ult i32 %nb.addr.183, 4
  br i1 %cmp23, label %cleanup, label %if.end25

if.end25:                                         ; preds = %if.end17
  %arrayidx26 = getelementptr inbounds i64, i64* %r.addr.085, i64 3
  %arrayidx27 = getelementptr inbounds i64, i64* %b.addr.182, i64 3
  %3 = load i64, i64* %arrayidx27, align 8, !tbaa !4
  %call28 = tail call i64 @bn_mul_add_words(i64* noundef nonnull %arrayidx26, i64* noundef %a.addr.0, i32 noundef %na.addr.0, i64 noundef %3) #3
  %arrayidx29 = getelementptr inbounds i64, i64* %rr.084, i64 3
  store i64 %call28, i64* %arrayidx29, align 8, !tbaa !4
  %cmp31 = icmp eq i32 %nb.addr.183, 4
  br i1 %cmp31, label %cleanup, label %if.end33

if.end33:                                         ; preds = %if.end25
  %dec30 = add nsw i32 %nb.addr.183, -4
  %arrayidx34 = getelementptr inbounds i64, i64* %r.addr.085, i64 4
  %arrayidx35 = getelementptr inbounds i64, i64* %b.addr.182, i64 4
  %4 = load i64, i64* %arrayidx35, align 8, !tbaa !4
  %call36 = tail call i64 @bn_mul_add_words(i64* noundef nonnull %arrayidx34, i64* noundef %a.addr.0, i32 noundef %na.addr.0, i64 noundef %4) #3
  %arrayidx37 = getelementptr inbounds i64, i64* %rr.084, i64 4
  store i64 %call36, i64* %arrayidx37, align 8, !tbaa !4
  %cmp7 = icmp ult i32 %dec30, 2
  br i1 %cmp7, label %cleanup, label %if.end9

cleanup:                                          ; preds = %if.end33, %if.end9, %if.end17, %if.end25, %if.else, %if.then2
  ret void
}

; Function Attrs: nounwind
declare i8* @memset(i8* noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

declare i32 @bn_cmp_part_words(i64* noundef, i64* noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare void @bn_mul_comba4(i64* noundef, i64* noundef, i64* noundef) local_unnamed_addr #1

declare i64 @bn_add_words(i64* noundef, i64* noundef, i64* noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define void @bn_mul_part_recursive(i64* noundef %r, i64* noundef %a, i64* noundef %b, i32 noundef %n, i32 noundef %tna, i32 noundef %tnb, i64* noundef %t) local_unnamed_addr #0 {
entry:
  %mul = shl nsw i32 %n, 1
  %cmp = icmp slt i32 %n, 8
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %add = add nsw i32 %tna, %n
  %add1 = add nsw i32 %tnb, %n
  tail call void @bn_mul_normal(i64* noundef %r, i64* noundef %a, i32 noundef %add, i64* noundef %b, i32 noundef %add1) #4
  br label %cleanup

if.end:                                           ; preds = %entry
  %idxprom486 = zext i32 %n to i64
  %arrayidx = getelementptr inbounds i64, i64* %a, i64 %idxprom486
  %sub = sub nsw i32 %n, %tna
  %call = tail call i32 @bn_cmp_part_words(i64* noundef %a, i64* noundef nonnull %arrayidx, i32 noundef %tna, i32 noundef %sub) #3
  %arrayidx3 = getelementptr inbounds i64, i64* %b, i64 %idxprom486
  %sub4 = sub nsw i32 %tnb, %n
  %call5 = tail call i32 @bn_cmp_part_words(i64* noundef nonnull %arrayidx3, i64* noundef %b, i32 noundef %tnb, i32 noundef %sub4) #3
  %mul6 = mul nsw i32 %call, 3
  %add7 = add nsw i32 %mul6, %call5
  switch i32 %add7, label %sw.epilog [
    i32 -4, label %sw.bb
    i32 -3, label %sw.bb18
    i32 -2, label %sw.bb18
    i32 -1, label %sw.bb29
    i32 0, label %sw.bb29
    i32 1, label %sw.bb29
    i32 2, label %sw.bb29
    i32 3, label %sw.bb40
    i32 4, label %sw.bb40
  ]

sw.bb:                                            ; preds = %if.end
  %sub10 = sub nsw i32 %tna, %n
  %call11 = tail call i64 @bn_sub_part_words(i64* noundef %t, i64* noundef nonnull %arrayidx, i64* noundef %a, i32 noundef %tna, i32 noundef %sub10) #4
  %arrayidx13 = getelementptr inbounds i64, i64* %t, i64 %idxprom486
  %sub16 = sub nsw i32 %n, %tnb
  %call17 = tail call i64 @bn_sub_part_words(i64* noundef nonnull %arrayidx13, i64* noundef %b, i64* noundef nonnull %arrayidx3, i32 noundef %tnb, i32 noundef %sub16) #4
  br label %sw.epilog

sw.bb18:                                          ; preds = %if.end, %if.end
  %sub21 = sub nsw i32 %tna, %n
  %call22 = tail call i64 @bn_sub_part_words(i64* noundef %t, i64* noundef nonnull %arrayidx, i64* noundef %a, i32 noundef %tna, i32 noundef %sub21) #4
  %arrayidx24 = getelementptr inbounds i64, i64* %t, i64 %idxprom486
  %call28 = tail call i64 @bn_sub_part_words(i64* noundef nonnull %arrayidx24, i64* noundef nonnull %arrayidx3, i64* noundef %b, i32 noundef %tnb, i32 noundef %sub4) #4
  br label %sw.epilog

sw.bb29:                                          ; preds = %if.end, %if.end, %if.end, %if.end
  %call33 = tail call i64 @bn_sub_part_words(i64* noundef %t, i64* noundef %a, i64* noundef nonnull %arrayidx, i32 noundef %tna, i32 noundef %sub) #4
  %arrayidx35 = getelementptr inbounds i64, i64* %t, i64 %idxprom486
  %sub38 = sub nsw i32 %n, %tnb
  %call39 = tail call i64 @bn_sub_part_words(i64* noundef nonnull %arrayidx35, i64* noundef %b, i64* noundef nonnull %arrayidx3, i32 noundef %tnb, i32 noundef %sub38) #4
  br label %sw.epilog

sw.bb40:                                          ; preds = %if.end, %if.end
  %call44 = tail call i64 @bn_sub_part_words(i64* noundef %t, i64* noundef %a, i64* noundef nonnull %arrayidx, i32 noundef %tna, i32 noundef %sub) #4
  %arrayidx46 = getelementptr inbounds i64, i64* %t, i64 %idxprom486
  %call50 = tail call i64 @bn_sub_part_words(i64* noundef nonnull %arrayidx46, i64* noundef nonnull %arrayidx3, i64* noundef %b, i32 noundef %tnb, i32 noundef %sub4) #4
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end, %sw.bb40, %sw.bb29, %sw.bb18, %sw.bb
  %tobool.not = phi i1 [ true, %if.end ], [ true, %sw.bb40 ], [ false, %sw.bb29 ], [ false, %sw.bb18 ], [ true, %sw.bb ]
  %cmp51 = icmp eq i32 %n, 8
  br i1 %cmp51, label %if.then52, label %if.else

if.then52:                                        ; preds = %sw.epilog
  %idxprom53487 = zext i32 %mul to i64
  %arrayidx54 = getelementptr inbounds i64, i64* %t, i64 %idxprom53487
  %arrayidx56 = getelementptr inbounds i64, i64* %t, i64 %idxprom486
  tail call void @bn_mul_comba8(i64* noundef %arrayidx54, i64* noundef %t, i64* noundef nonnull %arrayidx56) #3
  tail call void @bn_mul_comba8(i64* noundef %r, i64* noundef %a, i64* noundef %b) #3
  %arrayidx58 = getelementptr inbounds i64, i64* %r, i64 %idxprom53487
  tail call void @bn_mul_normal(i64* noundef %arrayidx58, i64* noundef nonnull %arrayidx, i32 noundef %tna, i64* noundef nonnull %arrayidx3, i32 noundef %tnb) #4
  %add63 = add i32 %tnb, %tna
  %add64 = add i32 %add63, %mul
  %idxprom65 = sext i32 %add64 to i64
  %arrayidx66 = getelementptr inbounds i64, i64* %r, i64 %idxprom65
  %0 = bitcast i64* %arrayidx66 to i8*
  %sub68 = sub i32 %mul, %add63
  %conv = sext i32 %sub68 to i64
  %mul69 = shl nsw i64 %conv, 3
  %call70 = tail call i8* @memset(i8* noundef %0, i32 noundef 0, i64 noundef %mul69) #3
  br label %if.end178

if.else:                                          ; preds = %sw.epilog
  %mul71 = shl nsw i32 %n, 2
  %idxprom72 = sext i32 %mul71 to i64
  %arrayidx73 = getelementptr inbounds i64, i64* %t, i64 %idxprom72
  %idxprom74 = sext i32 %mul to i64
  %arrayidx75 = getelementptr inbounds i64, i64* %t, i64 %idxprom74
  %arrayidx77 = getelementptr inbounds i64, i64* %t, i64 %idxprom486
  tail call void @bn_mul_recursive(i64* noundef %arrayidx75, i64* noundef %t, i64* noundef nonnull %arrayidx77, i32 noundef %n, i32 noundef 0, i32 noundef 0, i64* noundef %arrayidx73) #4
  tail call void @bn_mul_recursive(i64* noundef %r, i64* noundef %a, i64* noundef %b, i32 noundef %n, i32 noundef 0, i32 noundef 0, i64* noundef %arrayidx73) #4
  %div488 = lshr i32 %n, 1
  %cmp78 = icmp sgt i32 %tna, %tnb
  %tna.tnb = select i1 %cmp78, i32 %tna, i32 %tnb
  %j.0 = sub nsw i32 %tna.tnb, %div488
  %cmp85 = icmp eq i32 %j.0, 0
  br i1 %cmp85, label %if.then87, label %if.else105

if.then87:                                        ; preds = %if.else
  %arrayidx89 = getelementptr inbounds i64, i64* %r, i64 %idxprom74
  %sub94 = sub nsw i32 %tna, %div488
  %sub95 = sub nsw i32 %tnb, %div488
  tail call void @bn_mul_recursive(i64* noundef %arrayidx89, i64* noundef nonnull %arrayidx, i64* noundef nonnull %arrayidx3, i32 noundef %div488, i32 noundef %sub94, i32 noundef %sub95, i64* noundef %arrayidx73) #4
  %mul96 = and i32 %n, -2
  %add97 = add nsw i32 %mul, %mul96
  %idxprom98 = sext i32 %add97 to i64
  %arrayidx99 = getelementptr inbounds i64, i64* %r, i64 %idxprom98
  %1 = bitcast i64* %arrayidx99 to i8*
  %sub101 = sub nsw i32 %mul, %mul96
  %conv102 = sext i32 %sub101 to i64
  %mul103 = shl nsw i64 %conv102, 3
  %call104 = tail call i8* @memset(i8* noundef %1, i32 noundef 0, i64 noundef %mul103) #3
  br label %if.end178

if.else105:                                       ; preds = %if.else
  %cmp106 = icmp sgt i32 %j.0, 0
  %arrayidx110 = getelementptr inbounds i64, i64* %r, i64 %idxprom74
  br i1 %cmp106, label %if.then108, label %if.else126

if.then108:                                       ; preds = %if.else105
  %sub115 = sub nsw i32 %tna, %div488
  %sub116 = sub nsw i32 %tnb, %div488
  tail call void @bn_mul_part_recursive(i64* noundef %arrayidx110, i64* noundef nonnull %arrayidx, i64* noundef nonnull %arrayidx3, i32 noundef %div488, i32 noundef %sub115, i32 noundef %sub116, i64* noundef %arrayidx73) #4
  %add117 = add i32 %tnb, %tna
  %add118 = add i32 %add117, %mul
  %idxprom119 = sext i32 %add118 to i64
  %arrayidx120 = getelementptr inbounds i64, i64* %r, i64 %idxprom119
  %2 = bitcast i64* %arrayidx120 to i8*
  %sub122 = sub i32 %mul, %add117
  %conv123 = sext i32 %sub122 to i64
  %mul124 = shl nsw i64 %conv123, 3
  %call125 = tail call i8* @memset(i8* noundef %2, i32 noundef 0, i64 noundef %mul124) #3
  br label %if.end178

if.else126:                                       ; preds = %if.else105
  %3 = bitcast i64* %arrayidx110 to i8*
  %mul130 = shl nsw i64 %idxprom74, 3
  %call131 = tail call i8* @memset(i8* noundef %3, i32 noundef 0, i64 noundef %mul130) #3
  %cmp132 = icmp slt i32 %tna, 16
  %cmp134 = icmp slt i32 %tnb, 16
  %or.cond = and i1 %cmp132, %cmp134
  br i1 %or.cond, label %if.then136, label %for.cond

if.then136:                                       ; preds = %if.else126
  tail call void @bn_mul_normal(i64* noundef %arrayidx110, i64* noundef nonnull %arrayidx, i32 noundef %tna, i64* noundef nonnull %arrayidx3, i32 noundef %tnb) #4
  br label %if.end178

for.cond:                                         ; preds = %if.else126, %if.else158
  %i.0 = phi i32 [ %div144, %if.else158 ], [ %div488, %if.else126 ]
  %div144 = sdiv i32 %i.0, 2
  %cmp145 = icmp slt i32 %div144, %tna
  %cmp147 = icmp slt i32 %div144, %tnb
  %or.cond484 = or i1 %cmp145, %cmp147
  br i1 %or.cond484, label %if.then149, label %if.else158

if.then149:                                       ; preds = %for.cond
  %sub156 = sub nsw i32 %tna, %div144
  %sub157 = sub nsw i32 %tnb, %div144
  tail call void @bn_mul_part_recursive(i64* noundef %arrayidx110, i64* noundef nonnull %arrayidx, i64* noundef nonnull %arrayidx3, i32 noundef %div144, i32 noundef %sub156, i32 noundef %sub157, i64* noundef %arrayidx73) #4
  br label %if.end178

if.else158:                                       ; preds = %for.cond
  %cmp159 = icmp eq i32 %div144, %tna
  %cmp162 = icmp eq i32 %div144, %tnb
  %or.cond485 = or i1 %cmp159, %cmp162
  br i1 %or.cond485, label %if.then164, label %for.cond

if.then164:                                       ; preds = %if.else158
  %sub171 = sub nsw i32 %tna, %div144
  %sub172 = sub nsw i32 %tnb, %div144
  tail call void @bn_mul_recursive(i64* noundef %arrayidx110, i64* noundef nonnull %arrayidx, i64* noundef nonnull %arrayidx3, i32 noundef %div144, i32 noundef %sub171, i32 noundef %sub172, i64* noundef %arrayidx73) #4
  br label %if.end178

if.end178:                                        ; preds = %if.then87, %if.then136, %if.then164, %if.then149, %if.then108, %if.then52
  %idxprom179.pre-phi = phi i64 [ %idxprom74, %if.then87 ], [ %idxprom74, %if.then136 ], [ %idxprom74, %if.then164 ], [ %idxprom74, %if.then149 ], [ %idxprom74, %if.then108 ], [ 16, %if.then52 ]
  %arrayidx180 = getelementptr inbounds i64, i64* %r, i64 %idxprom179.pre-phi
  %call181 = tail call i64 @bn_add_words(i64* noundef %t, i64* noundef %r, i64* noundef %arrayidx180, i32 noundef %mul) #3
  %conv182 = trunc i64 %call181 to i32
  %arrayidx193 = getelementptr inbounds i64, i64* %t, i64 %idxprom179.pre-phi
  br i1 %tobool.not, label %if.else191, label %if.then183

if.then183:                                       ; preds = %if.end178
  %call188 = tail call i64 @bn_sub_words(i64* noundef %arrayidx193, i64* noundef %t, i64* noundef %arrayidx193, i32 noundef %mul) #3
  %conv189 = trunc i64 %call188 to i32
  %sub190 = sub nsw i32 %conv182, %conv189
  br label %if.end199

if.else191:                                       ; preds = %if.end178
  %call196 = tail call i64 @bn_add_words(i64* noundef %arrayidx193, i64* noundef %arrayidx193, i64* noundef %t, i32 noundef %mul) #3
  %conv197 = trunc i64 %call196 to i32
  %add198 = add nsw i32 %conv197, %conv182
  br label %if.end199

if.end199:                                        ; preds = %if.else191, %if.then183
  %c1.0 = phi i32 [ %sub190, %if.then183 ], [ %add198, %if.else191 ]
  %arrayidx201 = getelementptr inbounds i64, i64* %r, i64 %idxprom486
  %arrayidx205 = getelementptr inbounds i64, i64* %t, i64 %idxprom179.pre-phi
  %call206 = tail call i64 @bn_add_words(i64* noundef nonnull %arrayidx201, i64* noundef nonnull %arrayidx201, i64* noundef %arrayidx205, i32 noundef %mul) #3
  %conv207 = trunc i64 %call206 to i32
  %add208 = add nsw i32 %c1.0, %conv207
  %tobool209.not = icmp eq i32 %add208, 0
  br i1 %tobool209.not, label %cleanup, label %if.then210

if.then210:                                       ; preds = %if.end199
  %add211 = mul nsw i32 %n, 3
  %idxprom212 = sext i32 %add211 to i64
  %arrayidx213 = getelementptr inbounds i64, i64* %r, i64 %idxprom212
  %4 = load i64, i64* %arrayidx213, align 8, !tbaa !4
  %conv214 = sext i32 %add208 to i64
  %add215 = add i64 %4, %conv214
  store i64 %add215, i64* %arrayidx213, align 8, !tbaa !4
  %cmp217 = icmp ult i64 %add215, %conv214
  br i1 %cmp217, label %do.body, label %cleanup

do.body:                                          ; preds = %if.then210, %do.body
  %p.0 = phi i64* [ %incdec.ptr, %do.body ], [ %arrayidx213, %if.then210 ]
  %incdec.ptr = getelementptr inbounds i64, i64* %p.0, i64 1
  %5 = load i64, i64* %incdec.ptr, align 8, !tbaa !4
  %add220 = add i64 %5, 1
  store i64 %add220, i64* %incdec.ptr, align 8, !tbaa !4
  %cmp222 = icmp eq i64 %add220, 0
  br i1 %cmp222, label %do.body, label %cleanup, !llvm.loop !11

cleanup:                                          ; preds = %do.body, %if.end199, %if.then210, %if.then
  ret void
}

; Function Attrs: noinline nounwind uwtable
define void @bn_mul_low_recursive(i64* noundef %r, i64* noundef %a, i64* noundef %b, i32 noundef %n2, i64* noundef %t) local_unnamed_addr #0 {
entry:
  %div = sdiv i32 %n2, 2
  tail call void @bn_mul_recursive(i64* noundef %r, i64* noundef %a, i64* noundef %b, i32 noundef %div, i32 noundef 0, i32 noundef 0, i64* noundef %t) #4
  %cmp = icmp sgt i32 %n2, 63
  %idxprom = sext i32 %div to i64
  %arrayidx3 = getelementptr inbounds i64, i64* %b, i64 %idxprom
  br i1 %cmp, label %if.then, label %if.else

common.ret:                                       ; preds = %if.else, %if.then
  ret void

if.then:                                          ; preds = %entry
  %idxprom497 = zext i32 %n2 to i64
  %arrayidx5 = getelementptr inbounds i64, i64* %t, i64 %idxprom497
  tail call void @bn_mul_low_recursive(i64* noundef %t, i64* noundef %a, i64* noundef %arrayidx3, i32 noundef %div, i64* noundef nonnull %arrayidx5) #4
  %arrayidx7 = getelementptr inbounds i64, i64* %r, i64 %idxprom
  %call = tail call i64 @bn_add_words(i64* noundef %arrayidx7, i64* noundef %arrayidx7, i64* noundef %t, i32 noundef %div) #3
  %arrayidx13 = getelementptr inbounds i64, i64* %a, i64 %idxprom
  tail call void @bn_mul_low_recursive(i64* noundef %t, i64* noundef %arrayidx13, i64* noundef %b, i32 noundef %div, i64* noundef nonnull %arrayidx5) #4
  %call22 = tail call i64 @bn_add_words(i64* noundef %arrayidx7, i64* noundef %arrayidx7, i64* noundef %t, i32 noundef %div) #3
  br label %common.ret

if.else:                                          ; preds = %entry
  tail call void @bn_mul_low_normal(i64* noundef %t, i64* noundef %a, i64* noundef %arrayidx3, i32 noundef %div) #4
  %arrayidx28 = getelementptr inbounds i64, i64* %t, i64 %idxprom
  %arrayidx30 = getelementptr inbounds i64, i64* %a, i64 %idxprom
  tail call void @bn_mul_low_normal(i64* noundef %arrayidx28, i64* noundef %arrayidx30, i64* noundef %b, i32 noundef %div) #4
  %arrayidx33 = getelementptr inbounds i64, i64* %r, i64 %idxprom
  %call37 = tail call i64 @bn_add_words(i64* noundef %arrayidx33, i64* noundef %arrayidx33, i64* noundef %t, i32 noundef %div) #3
  %call44 = tail call i64 @bn_add_words(i64* noundef %arrayidx33, i64* noundef %arrayidx33, i64* noundef %arrayidx28, i32 noundef %div) #3
  br label %common.ret
}

; Function Attrs: noinline nounwind uwtable
define void @bn_mul_low_normal(i64* noundef %r, i64* noundef %a, i64* nocapture noundef readonly %b, i32 noundef %n) local_unnamed_addr #0 {
entry:
  %0 = load i64, i64* %b, align 8, !tbaa !4
  %call = tail call i64 @bn_mul_words(i64* noundef %r, i64* noundef %a, i32 noundef %n, i64 noundef %0) #3
  %cmp48 = icmp slt i32 %n, 2
  br i1 %cmp48, label %return, label %if.end

if.end:                                           ; preds = %entry, %if.end21
  %n.addr.051 = phi i32 [ %dec18, %if.end21 ], [ %n, %entry ]
  %b.addr.050 = phi i64* [ %arrayidx23, %if.end21 ], [ %b, %entry ]
  %r.addr.049 = phi i64* [ %arrayidx22, %if.end21 ], [ %r, %entry ]
  %dec = add nsw i32 %n.addr.051, -1
  %arrayidx1 = getelementptr inbounds i64, i64* %r.addr.049, i64 1
  %arrayidx2 = getelementptr inbounds i64, i64* %b.addr.050, i64 1
  %1 = load i64, i64* %arrayidx2, align 8, !tbaa !4
  %call3 = tail call i64 @bn_mul_add_words(i64* noundef nonnull %arrayidx1, i64* noundef %a, i32 noundef %dec, i64 noundef %1) #3
  %cmp5 = icmp eq i32 %n.addr.051, 2
  br i1 %cmp5, label %return, label %if.end7

if.end7:                                          ; preds = %if.end
  %dec4 = add nsw i32 %n.addr.051, -2
  %arrayidx8 = getelementptr inbounds i64, i64* %r.addr.049, i64 2
  %arrayidx9 = getelementptr inbounds i64, i64* %b.addr.050, i64 2
  %2 = load i64, i64* %arrayidx9, align 8, !tbaa !4
  %call10 = tail call i64 @bn_mul_add_words(i64* noundef nonnull %arrayidx8, i64* noundef %a, i32 noundef %dec4, i64 noundef %2) #3
  %cmp12 = icmp ult i32 %n.addr.051, 4
  br i1 %cmp12, label %return, label %if.end14

if.end14:                                         ; preds = %if.end7
  %dec11 = add nsw i32 %n.addr.051, -3
  %arrayidx15 = getelementptr inbounds i64, i64* %r.addr.049, i64 3
  %arrayidx16 = getelementptr inbounds i64, i64* %b.addr.050, i64 3
  %3 = load i64, i64* %arrayidx16, align 8, !tbaa !4
  %call17 = tail call i64 @bn_mul_add_words(i64* noundef nonnull %arrayidx15, i64* noundef %a, i32 noundef %dec11, i64 noundef %3) #3
  %dec18 = add nsw i32 %n.addr.051, -4
  %cmp19 = icmp eq i32 %n.addr.051, 4
  br i1 %cmp19, label %return, label %if.end21

if.end21:                                         ; preds = %if.end14
  %arrayidx22 = getelementptr inbounds i64, i64* %r.addr.049, i64 4
  %arrayidx23 = getelementptr inbounds i64, i64* %b.addr.050, i64 4
  %4 = load i64, i64* %arrayidx23, align 8, !tbaa !4
  %call24 = tail call i64 @bn_mul_add_words(i64* noundef nonnull %arrayidx22, i64* noundef %a, i32 noundef %dec18, i64 noundef %4) #3
  %cmp = icmp ult i32 %n.addr.051, 6
  br i1 %cmp, label %return, label %if.end

return:                                           ; preds = %if.end21, %if.end, %if.end7, %if.end14, %entry
  ret void
}

; Function Attrs: noinline nounwind uwtable
define i32 @BN_mul(%struct.bignum_st* noundef %r, %struct.bignum_st* noundef %a, %struct.bignum_st* noundef %b, %struct.bignum_ctx* noundef %ctx) local_unnamed_addr #0 {
entry:
  %call = tail call i32 @bn_mul_fixed_top(%struct.bignum_st* noundef %r, %struct.bignum_st* noundef %a, %struct.bignum_st* noundef %b, %struct.bignum_ctx* noundef %ctx) #4
  tail call void @bn_correct_top(%struct.bignum_st* noundef %r) #3
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define i32 @bn_mul_fixed_top(%struct.bignum_st* noundef %r, %struct.bignum_st* noundef readonly %a, %struct.bignum_st* noundef readonly %b, %struct.bignum_ctx* noundef %ctx) local_unnamed_addr #0 {
entry:
  %top1 = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %a, i64 0, i32 1
  %0 = load i32, i32* %top1, align 8, !tbaa !12
  %top2 = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %b, i64 0, i32 1
  %1 = load i32, i32* %top2, align 8, !tbaa !12
  %cmp = icmp eq i32 %0, 0
  %cmp3 = icmp eq i32 %1, 0
  %or.cond = select i1 %cmp, i1 true, i1 %cmp3
  br i1 %or.cond, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @BN_zero_ex(%struct.bignum_st* noundef %r) #3
  br label %cleanup

if.end:                                           ; preds = %entry
  %add = add nsw i32 %1, %0
  tail call void @BN_CTX_start(%struct.bignum_ctx* noundef %ctx) #3
  %cmp4 = icmp eq %struct.bignum_st* %r, %a
  %cmp6 = icmp eq %struct.bignum_st* %r, %b
  %or.cond209 = or i1 %cmp4, %cmp6
  br i1 %or.cond209, label %if.then7, label %if.end11

if.then7:                                         ; preds = %if.end
  %call = tail call %struct.bignum_st* @BN_CTX_get(%struct.bignum_ctx* noundef %ctx) #3
  %cmp8 = icmp eq %struct.bignum_st* %call, null
  br i1 %cmp8, label %err, label %if.end11

if.end11:                                         ; preds = %if.end, %if.then7
  %rr.0 = phi %struct.bignum_st* [ %call, %if.then7 ], [ %r, %if.end ]
  %sub = sub nsw i32 %0, %1
  %cmp12 = icmp eq i32 %sub, 0
  %cmp14 = icmp eq i32 %0, 8
  %or.cond124 = and i1 %cmp14, %cmp12
  br i1 %or.cond124, label %if.then15, label %if.end24

if.then15:                                        ; preds = %if.end11
  %call16 = tail call %struct.bignum_st* @bn_wexpand(%struct.bignum_st* noundef %rr.0, i32 noundef 16) #3
  %cmp17 = icmp eq %struct.bignum_st* %call16, null
  br i1 %cmp17, label %err, label %if.end19

if.end19:                                         ; preds = %if.then15
  %top20 = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %rr.0, i64 0, i32 1
  store i32 16, i32* %top20, align 8, !tbaa !12
  %d = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %rr.0, i64 0, i32 0
  %2 = load i64*, i64** %d, align 8, !tbaa !16
  %d21 = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %a, i64 0, i32 0
  %3 = load i64*, i64** %d21, align 8, !tbaa !16
  %d22 = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %b, i64 0, i32 0
  %4 = load i64*, i64** %d22, align 8, !tbaa !16
  tail call void @bn_mul_comba8(i64* noundef %2, i64* noundef %3, i64* noundef %4) #3
  br label %end

if.end24:                                         ; preds = %if.end11
  %cmp25 = icmp sgt i32 %0, 15
  %cmp26 = icmp sgt i32 %1, 15
  %or.cond122 = select i1 %cmp25, i1 %cmp26, i1 false
  %5 = add i32 %sub, 1
  %6 = icmp ult i32 %5, 3
  %or.cond211 = select i1 %or.cond122, i1 %6, i1 false
  br i1 %or.cond211, label %if.then31, label %if.end94

if.then31:                                        ; preds = %if.end24
  %cmp32 = icmp sgt i32 %sub, -1
  %. = select i1 %cmp32, i32 %0, i32 %1
  %conv215 = zext i32 %. to i64
  %call34 = tail call i32 @BN_num_bits_word(i64 noundef %conv215) #3
  %sub42 = add nsw i32 %call34, -1
  %shl = shl nuw i32 1, %sub42
  %call44 = tail call %struct.bignum_st* @BN_CTX_get(%struct.bignum_ctx* noundef %ctx) #3
  %cmp45 = icmp eq %struct.bignum_st* %call44, null
  br i1 %cmp45, label %err, label %if.end48

if.end48:                                         ; preds = %if.then31
  %cmp49 = icmp sgt i32 %0, %shl
  %cmp52 = icmp sgt i32 %1, %shl
  %or.cond212 = select i1 %cmp49, i1 true, i1 %cmp52
  br i1 %or.cond212, label %if.then54, label %if.else72

if.then54:                                        ; preds = %if.end48
  %mul = shl nsw i32 %shl, 3
  %call55 = tail call %struct.bignum_st* @bn_wexpand(%struct.bignum_st* noundef nonnull %call44, i32 noundef %mul) #3
  %cmp56 = icmp eq %struct.bignum_st* %call55, null
  br i1 %cmp56, label %err, label %if.end59

if.end59:                                         ; preds = %if.then54
  %call61 = tail call %struct.bignum_st* @bn_wexpand(%struct.bignum_st* noundef %rr.0, i32 noundef %mul) #3
  %cmp62 = icmp eq %struct.bignum_st* %call61, null
  br i1 %cmp62, label %err, label %if.end65

if.end65:                                         ; preds = %if.end59
  %d66 = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %rr.0, i64 0, i32 0
  %7 = load i64*, i64** %d66, align 8, !tbaa !16
  %d67 = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %a, i64 0, i32 0
  %8 = load i64*, i64** %d67, align 8, !tbaa !16
  %d68 = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %b, i64 0, i32 0
  %9 = load i64*, i64** %d68, align 8, !tbaa !16
  %sub69 = sub nsw i32 %0, %shl
  %sub70 = sub nsw i32 %1, %shl
  %d71 = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %call44, i64 0, i32 0
  %10 = load i64*, i64** %d71, align 8, !tbaa !16
  tail call void @bn_mul_part_recursive(i64* noundef %7, i64* noundef %8, i64* noundef %9, i32 noundef %shl, i32 noundef %sub69, i32 noundef %sub70, i64* noundef %10) #4
  br label %if.end91

if.else72:                                        ; preds = %if.end48
  %mul73 = shl nsw i32 %shl, 2
  %call74 = tail call %struct.bignum_st* @bn_wexpand(%struct.bignum_st* noundef nonnull %call44, i32 noundef %mul73) #3
  %cmp75 = icmp eq %struct.bignum_st* %call74, null
  br i1 %cmp75, label %err, label %if.end78

if.end78:                                         ; preds = %if.else72
  %call80 = tail call %struct.bignum_st* @bn_wexpand(%struct.bignum_st* noundef %rr.0, i32 noundef %mul73) #3
  %cmp81 = icmp eq %struct.bignum_st* %call80, null
  br i1 %cmp81, label %err, label %if.end84

if.end84:                                         ; preds = %if.end78
  %d85 = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %rr.0, i64 0, i32 0
  %11 = load i64*, i64** %d85, align 8, !tbaa !16
  %d86 = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %a, i64 0, i32 0
  %12 = load i64*, i64** %d86, align 8, !tbaa !16
  %d87 = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %b, i64 0, i32 0
  %13 = load i64*, i64** %d87, align 8, !tbaa !16
  %sub88 = sub nsw i32 %0, %shl
  %sub89 = sub nsw i32 %1, %shl
  %d90 = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %call44, i64 0, i32 0
  %14 = load i64*, i64** %d90, align 8, !tbaa !16
  tail call void @bn_mul_recursive(i64* noundef %11, i64* noundef %12, i64* noundef %13, i32 noundef %shl, i32 noundef %sub88, i32 noundef %sub89, i64* noundef %14) #4
  br label %if.end91

if.end91:                                         ; preds = %if.end84, %if.end65
  %top92 = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %rr.0, i64 0, i32 1
  store i32 %add, i32* %top92, align 8, !tbaa !12
  br label %end

if.end94:                                         ; preds = %if.end24
  %call95 = tail call %struct.bignum_st* @bn_wexpand(%struct.bignum_st* noundef %rr.0, i32 noundef %add) #3
  %cmp96 = icmp eq %struct.bignum_st* %call95, null
  br i1 %cmp96, label %err, label %if.end99

if.end99:                                         ; preds = %if.end94
  %top100 = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %rr.0, i64 0, i32 1
  store i32 %add, i32* %top100, align 8, !tbaa !12
  %d101 = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %rr.0, i64 0, i32 0
  %15 = load i64*, i64** %d101, align 8, !tbaa !16
  %d102 = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %a, i64 0, i32 0
  %16 = load i64*, i64** %d102, align 8, !tbaa !16
  %d103 = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %b, i64 0, i32 0
  %17 = load i64*, i64** %d103, align 8, !tbaa !16
  tail call void @bn_mul_normal(i64* noundef %15, i64* noundef %16, i32 noundef %0, i64* noundef %17, i32 noundef %1) #4
  br label %end

end:                                              ; preds = %if.end99, %if.end91, %if.end19
  %neg = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %a, i64 0, i32 3
  %18 = load i32, i32* %neg, align 8, !tbaa !17
  %neg104 = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %b, i64 0, i32 3
  %19 = load i32, i32* %neg104, align 8, !tbaa !17
  %xor = xor i32 %19, %18
  %neg105 = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %rr.0, i64 0, i32 3
  store i32 %xor, i32* %neg105, align 8, !tbaa !17
  %cmp106.not = icmp eq %struct.bignum_st* %rr.0, %r
  br i1 %cmp106.not, label %if.end113, label %land.lhs.true108

land.lhs.true108:                                 ; preds = %end
  %call109 = tail call %struct.bignum_st* @BN_copy(%struct.bignum_st* noundef %r, %struct.bignum_st* noundef nonnull %rr.0) #3
  %cmp110 = icmp eq %struct.bignum_st* %call109, null
  br i1 %cmp110, label %err, label %if.end113

if.end113:                                        ; preds = %land.lhs.true108, %end
  br label %err

err:                                              ; preds = %land.lhs.true108, %if.end94, %if.end78, %if.else72, %if.end59, %if.then54, %if.then31, %if.then15, %if.then7, %if.end113
  %ret.0 = phi i32 [ 0, %if.then7 ], [ 0, %if.then15 ], [ 0, %land.lhs.true108 ], [ 1, %if.end113 ], [ 0, %if.then31 ], [ 0, %if.then54 ], [ 0, %if.end59 ], [ 0, %if.else72 ], [ 0, %if.end78 ], [ 0, %if.end94 ]
  tail call void @BN_CTX_end(%struct.bignum_ctx* noundef %ctx) #3
  br label %cleanup

cleanup:                                          ; preds = %err, %if.then
  %retval.0 = phi i32 [ 1, %if.then ], [ %ret.0, %err ]
  ret i32 %retval.0
}

declare void @bn_correct_top(%struct.bignum_st* noundef) local_unnamed_addr #1

declare void @BN_zero_ex(%struct.bignum_st* noundef) local_unnamed_addr #1

declare void @BN_CTX_start(%struct.bignum_ctx* noundef) local_unnamed_addr #1

declare %struct.bignum_st* @BN_CTX_get(%struct.bignum_ctx* noundef) local_unnamed_addr #1

declare %struct.bignum_st* @bn_wexpand(%struct.bignum_st* noundef, i32 noundef) local_unnamed_addr #1

declare i32 @BN_num_bits_word(i64 noundef) local_unnamed_addr #1

declare %struct.bignum_st* @BN_copy(%struct.bignum_st* noundef, %struct.bignum_st* noundef) local_unnamed_addr #1

declare void @BN_CTX_end(%struct.bignum_ctx* noundef) local_unnamed_addr #1

declare i64 @bn_mul_words(i64* noundef, i64* noundef, i32 noundef, i64 noundef) local_unnamed_addr #1

declare i64 @bn_mul_add_words(i64* noundef, i64* noundef, i32 noundef, i64 noundef) local_unnamed_addr #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nobuiltin nounwind "no-builtins" }
attributes #4 = { nobuiltin "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{!"clang version 14.0.0"}
!4 = !{!5, !5, i64 0}
!5 = !{!"long", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = distinct !{!8, !9}
!9 = !{!"llvm.loop.mustprogress"}
!10 = distinct !{!10, !9}
!11 = distinct !{!11, !9}
!12 = !{!13, !15, i64 8}
!13 = !{!"bignum_st", !14, i64 0, !15, i64 8, !15, i64 12, !15, i64 16, !15, i64 20}
!14 = !{!"any pointer", !6, i64 0}
!15 = !{!"int", !6, i64 0}
!16 = !{!13, !14, i64 0}
!17 = !{!13, !15, i64 16}
