; ModuleID = 'crypto/punycode.c'
source_filename = "crypto/punycode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"xn--\00", align 1

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_punycode_decode(i8* nocapture noundef readonly %pEncoded, i64 noundef %enc_len, i32* noundef %pDecoded, i32* nocapture noundef %pout_length) local_unnamed_addr #0 {
entry:
  %0 = load i32, i32* %pout_length, align 4, !tbaa !4
  %cmp224.not = icmp eq i64 %enc_len, 0
  br i1 %cmp224.not, label %if.end33, label %for.body

for.body:                                         ; preds = %entry, %for.body
  %conv227 = phi i64 [ %conv, %for.body ], [ 0, %entry ]
  %basic_count.0225 = phi i32 [ %spec.select, %for.body ], [ 0, %entry ]
  %indvars = trunc i64 %conv227 to i32
  %arrayidx = getelementptr inbounds i8, i8* %pEncoded, i64 %conv227
  %1 = load i8, i8* %arrayidx, align 1, !tbaa !8
  %cmp3 = icmp eq i8 %1, 45
  %spec.select = select i1 %cmp3, i32 %indvars, i32 %basic_count.0225
  %inc = add nuw nsw i64 %conv227, 1
  %conv = and i64 %inc, 4294967295
  %cmp = icmp ult i64 %conv, %enc_len
  br i1 %cmp, label %for.body, label %for.end, !llvm.loop !9

for.end:                                          ; preds = %for.body
  %cmp5.not = icmp eq i32 %spec.select, 0
  br i1 %cmp5.not, label %if.end33, label %if.then7

if.then7:                                         ; preds = %for.end
  %cmp8 = icmp ugt i32 %spec.select, %0
  br i1 %cmp8, label %cleanup130, label %for.body15.preheader

for.body15.preheader:                             ; preds = %if.then7
  %wide.trip.count = zext i32 %spec.select to i64
  br label %for.body15

for.body15:                                       ; preds = %for.body15.preheader, %if.end22
  %written_out.0229 = phi i64 [ %inc28, %if.end22 ], [ 0, %for.body15.preheader ]
  %arrayidx17 = getelementptr inbounds i8, i8* %pEncoded, i64 %written_out.0229
  %2 = load i8, i8* %arrayidx17, align 1, !tbaa !8
  %conv18 = sext i8 %2 to i32
  %call = tail call fastcc i32 @is_basic(i32 noundef %conv18) #8
  %cmp19 = icmp eq i32 %call, 0
  br i1 %cmp19, label %cleanup130, label %if.end22

if.end22:                                         ; preds = %for.body15
  %arrayidx27 = getelementptr inbounds i32, i32* %pDecoded, i64 %written_out.0229
  store i32 %conv18, i32* %arrayidx27, align 4, !tbaa !4
  %inc28 = add nuw nsw i64 %written_out.0229, 1
  %exitcond.not = icmp eq i64 %inc28, %wide.trip.count
  br i1 %exitcond.not, label %for.end31, label %for.body15, !llvm.loop !11

for.end31:                                        ; preds = %if.end22
  %add = add i32 %spec.select, 1
  br label %if.end33

if.end33:                                         ; preds = %entry, %for.end31, %for.end
  %processed_in.0 = phi i32 [ %add, %for.end31 ], [ 0, %for.end ], [ 0, %entry ]
  %written_out.1 = phi i64 [ %wide.trip.count, %for.end31 ], [ 0, %for.end ], [ 0, %entry ]
  %conv36239 = zext i32 %processed_in.0 to i64
  %cmp37240 = icmp ult i64 %conv36239, %enc_len
  br i1 %cmp37240, label %for.cond40.preheader.lr.ph, label %for.end128

for.cond40.preheader.lr.ph:                       ; preds = %if.end33
  %conv108 = zext i32 %0 to i64
  br label %for.cond40.preheader

for.cond40.preheader:                             ; preds = %for.cond40.preheader.lr.ph, %cleanup
  %n.0245 = phi i32 [ 128, %for.cond40.preheader.lr.ph ], [ %conv104, %cleanup ]
  %i.0244 = phi i32 [ 0, %for.cond40.preheader.lr.ph ], [ %inc122, %cleanup ]
  %loop.2243 = phi i32 [ %processed_in.0, %for.cond40.preheader.lr.ph ], [ %inc49, %cleanup ]
  %bias.0242 = phi i32 [ 72, %for.cond40.preheader.lr.ph ], [ %call89, %cleanup ]
  %written_out.2241 = phi i64 [ %written_out.1, %for.cond40.preheader.lr.ph ], [ %add85, %cleanup ]
  %conv41232 = zext i32 %loop.2243 to i64
  %cmp42.not233 = icmp ult i64 %conv41232, %enc_len
  br i1 %cmp42.not233, label %if.end45.lr.ph, label %cleanup130

if.end45.lr.ph:                                   ; preds = %for.cond40.preheader
  %add61 = add i32 %bias.0242, 26
  br label %if.end45

if.end45:                                         ; preds = %if.end45.lr.ph, %if.end78
  %conv41238 = phi i64 [ %conv41232, %if.end45.lr.ph ], [ %conv41, %if.end78 ]
  %k.0237 = phi i32 [ 36, %if.end45.lr.ph ], [ %add82, %if.end78 ]
  %w.0236 = phi i32 [ 1, %if.end45.lr.ph ], [ %mul80, %if.end78 ]
  %i.1235 = phi i32 [ %i.0244, %if.end45.lr.ph ], [ %add58, %if.end78 ]
  %indvars252 = trunc i64 %conv41238 to i32
  %arrayidx47 = getelementptr inbounds i8, i8* %pEncoded, i64 %conv41238
  %3 = load i8, i8* %arrayidx47, align 1, !tbaa !8
  %call48 = tail call fastcc i32 @digit_decoded(i8 noundef zeroext %3) #8
  %inc49 = add i32 %indvars252, 1
  %cmp50 = icmp slt i32 %call48, 0
  br i1 %cmp50, label %cleanup130, label %if.end53

if.end53:                                         ; preds = %if.end45
  %sub = xor i32 %i.1235, -1
  %div = udiv i32 %sub, %w.0236
  %cmp54 = icmp ugt i32 %call48, %div
  br i1 %cmp54, label %cleanup130, label %if.end57

if.end57:                                         ; preds = %if.end53
  %mul = mul i32 %call48, %w.0236
  %add58 = add i32 %mul, %i.1235
  %cmp59.not = icmp ugt i32 %k.0237, %bias.0242
  %cmp62.not = icmp ult i32 %k.0237, %add61
  %sub66 = sub i32 %k.0237, %bias.0242
  %cond = select i1 %cmp62.not, i32 %sub66, i32 26
  %cond68 = select i1 %cmp59.not, i32 %cond, i32 1
  %cmp69 = icmp ult i32 %call48, %cond68
  br i1 %cmp69, label %for.end83, label %if.end72

if.end72:                                         ; preds = %if.end57
  %sub73 = sub i32 36, %cond68
  %mul212 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %sub73, i32 %w.0236)
  %mul.ov = extractvalue { i32, i1 } %mul212, 1
  br i1 %mul.ov, label %cleanup130, label %if.end78

if.end78:                                         ; preds = %if.end72
  %mul80 = mul i32 %sub73, %w.0236
  %add82 = add i32 %k.0237, 36
  %conv41 = zext i32 %inc49 to i64
  %cmp42.not = icmp ult i64 %conv41, %enc_len
  br i1 %cmp42.not, label %if.end45, label %cleanup130

for.end83:                                        ; preds = %if.end57
  %sub84 = sub i32 %add58, %i.0244
  %add85 = add nuw nsw i64 %written_out.2241, 1
  %conv86 = trunc i64 %add85 to i32
  %cmp87 = icmp eq i32 %i.0244, 0
  %conv88 = zext i1 %cmp87 to i32
  %call89 = tail call fastcc i32 @adapt(i32 noundef %sub84, i32 noundef %conv86, i32 noundef %conv88) #8
  %conv90 = zext i32 %add58 to i64
  %div92 = udiv i64 %conv90, %add85
  %rem = urem i64 %conv90, %add85
  %sub93 = xor i32 %n.0245, -1
  %conv94 = zext i32 %sub93 to i64
  %cmp95 = icmp ugt i64 %div92, %conv94
  br i1 %cmp95, label %cleanup130, label %if.end98

if.end98:                                         ; preds = %for.end83
  %4 = trunc i64 %div92 to i32
  %conv104 = add i32 %n.0245, %4
  %cmp109 = icmp ugt i64 %written_out.2241, %conv108
  br i1 %cmp109, label %cleanup130, label %cleanup

cleanup:                                          ; preds = %if.end98
  %conv107 = trunc i64 %rem to i32
  %add.ptr = getelementptr inbounds i32, i32* %pDecoded, i64 %rem
  %add.ptr113 = getelementptr inbounds i32, i32* %add.ptr, i64 1
  %5 = bitcast i32* %add.ptr113 to i8*
  %6 = bitcast i32* %add.ptr to i8*
  %sub117 = sub nsw i64 %written_out.2241, %rem
  %mul118 = shl i64 %sub117, 2
  %call119 = tail call i8* @memmove(i8* noundef nonnull %5, i8* noundef %6, i64 noundef %mul118) #9
  store i32 %conv104, i32* %add.ptr, align 4, !tbaa !4
  %inc122 = add i32 %conv107, 1
  %conv36 = zext i32 %inc49 to i64
  %cmp37 = icmp ult i64 %conv36, %enc_len
  br i1 %cmp37, label %for.cond40.preheader, label %for.end128, !llvm.loop !12

for.end128:                                       ; preds = %cleanup, %if.end33
  %add85.lcssa.sink = phi i64 [ %written_out.1, %if.end33 ], [ %add85, %cleanup ]
  %conv86.le = trunc i64 %add85.lcssa.sink to i32
  store i32 %conv86.le, i32* %pout_length, align 4, !tbaa !4
  br label %cleanup130

cleanup130:                                       ; preds = %for.body15, %if.end98, %for.end83, %for.cond40.preheader, %if.end78, %if.end45, %if.end53, %if.end72, %if.then7, %for.end128
  %retval.2 = phi i32 [ 1, %for.end128 ], [ 0, %if.then7 ], [ 0, %if.end72 ], [ 0, %if.end53 ], [ 0, %if.end45 ], [ 0, %if.end78 ], [ 0, %for.cond40.preheader ], [ 0, %for.end83 ], [ 0, %if.end98 ], [ 0, %for.body15 ]
  ret i32 %retval.2
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc i32 @is_basic(i32 noundef %a) unnamed_addr #2 {
entry:
  %cmp = icmp ult i32 %a, 128
  %cond = zext i1 %cmp to i32
  ret i32 %cond
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc i32 @digit_decoded(i8 noundef zeroext %a) unnamed_addr #2 {
entry:
  %conv = zext i8 %a to i32
  %0 = add i8 %a, -65
  %1 = icmp ult i8 %0, 26
  br i1 %1, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %sub = add nsw i32 %conv, -65
  br label %return

if.end:                                           ; preds = %entry
  %2 = add i8 %a, -97
  %3 = icmp ult i8 %2, 26
  br i1 %3, label %if.then13, label %if.end16

if.then13:                                        ; preds = %if.end
  %sub15 = add nsw i32 %conv, -97
  br label %return

if.end16:                                         ; preds = %if.end
  %4 = add i8 %a, -48
  %5 = icmp ult i8 %4, 10
  %add = add nsw i32 %conv, -22
  %spec.select = select i1 %5, i32 %add, i32 -1
  br label %return

return:                                           ; preds = %if.end16, %if.then13, %if.then
  %retval.0 = phi i32 [ %sub, %if.then ], [ %sub15, %if.then13 ], [ %spec.select, %if.end16 ]
  ret i32 %retval.0
}

; Function Attrs: nofree noinline norecurse nosync nounwind readnone uwtable
define internal fastcc i32 @adapt(i32 noundef %delta, i32 noundef %numpoints, i32 noundef %firsttime) unnamed_addr #3 {
entry:
  %tobool.not = icmp eq i32 %firsttime, 0
  br i1 %tobool.not, label %cond.false, label %cond.true

cond.true:                                        ; preds = %entry
  %div = udiv i32 %delta, 700
  br label %cond.end

cond.false:                                       ; preds = %entry
  %div1 = lshr i32 %delta, 1
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %div, %cond.true ], [ %div1, %cond.false ]
  %div2 = udiv i32 %cond, %numpoints
  %add = add nuw i32 %div2, %cond
  %cmp18 = icmp ugt i32 %add, 455
  br i1 %cmp18, label %while.body, label %while.end

while.body:                                       ; preds = %cond.end, %while.body
  %k.020 = phi i32 [ %add4, %while.body ], [ 0, %cond.end ]
  %delta.addr.019 = phi i32 [ %div3, %while.body ], [ %add, %cond.end ]
  %div3 = udiv i32 %delta.addr.019, 35
  %add4 = add i32 %k.020, 36
  %cmp = icmp ugt i32 %delta.addr.019, 15959
  br i1 %cmp, label %while.body, label %while.end, !llvm.loop !13

while.end:                                        ; preds = %while.body, %cond.end
  %delta.addr.0.lcssa = phi i32 [ %add, %cond.end ], [ %div3, %while.body ]
  %k.0.lcssa = phi i32 [ 0, %cond.end ], [ %add4, %while.body ]
  %0 = trunc i32 %delta.addr.0.lcssa to i16
  %div6.lhs.trunc = mul i16 %0, 36
  %div6.rhs.trunc = add i16 %0, 38
  %div617 = udiv i16 %div6.lhs.trunc, %div6.rhs.trunc
  %div6.zext = zext i16 %div617 to i32
  %add7 = add i32 %k.0.lcssa, %div6.zext
  ret i32 %add7
}

; Function Attrs: nounwind
declare i8* @memmove(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_a2ulabel(i8* noundef %in, i8* noundef %out, i64* nocapture noundef readonly %outlen) local_unnamed_addr #0 {
entry:
  %buf = alloca [512 x i32], align 16
  %bufsize = alloca i32, align 4
  %seed = alloca [6 x i8], align 1
  %0 = bitcast [512 x i32]* %buf to i8*
  call void @llvm.lifetime.start.p0i8(i64 2048, i8* nonnull %0) #10
  %cmp = icmp ne i8* %out, null
  %spec.select = zext i1 %cmp to i32
  %1 = bitcast i32* %bufsize to i8*
  %arraydecay = getelementptr inbounds [512 x i32], [512 x i32]* %buf, i64 0, i64 0
  %2 = getelementptr inbounds [6 x i8], [6 x i8]* %seed, i64 0, i64 0
  br label %while.cond

while.cond:                                       ; preds = %if.end57, %entry
  %size.0 = phi i64 [ 0, %entry ], [ %size.5, %if.end57 ]
  %result.1 = phi i32 [ %spec.select, %entry ], [ %result.8, %if.end57 ]
  %inptr.0 = phi i8* [ %in, %entry ], [ %add.ptr62, %if.end57 ]
  %outptr.0 = phi i8* [ %out, %entry ], [ %outptr.6, %if.end57 ]
  %call = call i8* @strchr(i8* noundef %inptr.0, i32 noundef 46) #11
  %tobool.not = icmp eq i8* %call, null
  br i1 %tobool.not, label %cond.false, label %cond.true

cond.true:                                        ; preds = %while.cond
  %sub.ptr.lhs.cast = ptrtoint i8* %call to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %inptr.0 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  br label %cond.end

cond.false:                                       ; preds = %while.cond
  %call1 = call i64 @strlen(i8* noundef %inptr.0) #11
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %sub.ptr.sub, %cond.true ], [ %call1, %cond.false ]
  %call2 = call i32 @strncmp(i8* noundef %inptr.0, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i64 noundef 4) #11
  %cmp3.not = icmp eq i32 %call2, 0
  br i1 %cmp3.not, label %if.else, label %if.then4

if.then4:                                         ; preds = %cond.end
  %add = add i64 %cond, 1
  %add5 = add i64 %add, %size.0
  %3 = load i64, i64* %outlen, align 8, !tbaa !14
  %sub = add i64 %3, -1
  %cmp6.not = icmp ult i64 %add5, %sub
  %cmp9143 = icmp sgt i32 %result.1, 0
  %cmp9 = select i1 %cmp6.not, i1 %cmp9143, i1 false
  br i1 %cmp9, label %if.then10, label %if.end57

if.then10:                                        ; preds = %if.then4
  %call12 = call i8* @memcpy(i8* noundef %outptr.0, i8* noundef %inptr.0, i64 noundef %add) #9
  %add.ptr = getelementptr inbounds i8, i8* %outptr.0, i64 %add
  br label %if.end57

if.else:                                          ; preds = %cond.end
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %1) #10
  store i32 512, i32* %bufsize, align 4, !tbaa !4
  %add.ptr15 = getelementptr inbounds i8, i8* %inptr.0, i64 4
  %sub16 = add i64 %cond, -4
  %call17 = call i32 @ossl_punycode_decode(i8* noundef nonnull %add.ptr15, i64 noundef %sub16, i32* noundef nonnull %arraydecay, i32* noundef nonnull %bufsize) #8
  %cmp18 = icmp slt i32 %call17, 1
  br i1 %cmp18, label %cleanup63.thread, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.else
  %4 = load i32, i32* %bufsize, align 4, !tbaa !4
  %cmp21149.not = icmp eq i32 %4, 0
  br i1 %cmp21149.not, label %for.end, label %for.body.preheader

for.body.preheader:                               ; preds = %for.cond.preheader
  %wide.trip.count = zext i32 %4 to i64
  br label %for.body

for.body:                                         ; preds = %for.body.preheader, %for.inc
  %indvars.iv = phi i64 [ 0, %for.body.preheader ], [ %indvars.iv.next, %for.inc ]
  %outptr.1152 = phi i8* [ %outptr.0, %for.body.preheader ], [ %outptr.3.ph, %for.inc ]
  %result.3151 = phi i32 [ %result.1, %for.body.preheader ], [ %spec.select117, %for.inc ]
  %size.1150 = phi i64 [ %size.0, %for.body.preheader ], [ %add29, %for.inc ]
  call void @llvm.lifetime.start.p0i8(i64 6, i8* nonnull %2) #10
  %arrayidx = getelementptr inbounds [512 x i32], [512 x i32]* %buf, i64 0, i64 %indvars.iv
  %5 = load i32, i32* %arrayidx, align 4, !tbaa !4
  %conv = zext i32 %5 to i64
  %call23 = call fastcc i32 @codepoint2utf8(i8* noundef nonnull %2, i64 noundef %conv) #8
  %6 = zext i32 %call23 to i64
  %cmp25 = icmp eq i32 %call23, 0
  br i1 %cmp25, label %cleanup, label %if.end28

if.end28:                                         ; preds = %for.body
  %add29 = add i64 %size.1150, %6
  %7 = load i64, i64* %outlen, align 8, !tbaa !14
  %sub30 = add i64 %7, -1
  %cmp31.not = icmp ult i64 %add29, %sub30
  %spec.select117 = select i1 %cmp31.not, i32 %result.3151, i32 0
  %cmp35 = icmp sgt i32 %spec.select117, 0
  br i1 %cmp35, label %if.then37, label %for.inc

if.then37:                                        ; preds = %if.end28
  %call39 = call i8* @memcpy(i8* noundef %outptr.1152, i8* noundef nonnull %2, i64 noundef %6) #9
  %add.ptr40 = getelementptr inbounds i8, i8* %outptr.1152, i64 %6
  br label %for.inc

cleanup:                                          ; preds = %for.body
  call void @llvm.lifetime.end.p0i8(i64 6, i8* nonnull %2) #10
  br label %cleanup63.thread

for.inc:                                          ; preds = %if.end28, %if.then37
  %outptr.3.ph = phi i8* [ %outptr.1152, %if.end28 ], [ %add.ptr40, %if.then37 ]
  call void @llvm.lifetime.end.p0i8(i64 6, i8* nonnull %2) #10
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %for.end, label %for.body, !llvm.loop !16

for.end:                                          ; preds = %for.inc, %for.cond.preheader
  %size.1.lcssa = phi i64 [ %size.0, %for.cond.preheader ], [ %add29, %for.inc ]
  %result.3.lcssa = phi i32 [ %result.1, %for.cond.preheader ], [ %spec.select117, %for.inc ]
  %outptr.1.lcssa = phi i8* [ %outptr.0, %for.cond.preheader ], [ %outptr.3.ph, %for.inc ]
  br i1 %tobool.not, label %cleanup53.thread, label %if.then45

if.then45:                                        ; preds = %for.end
  store i8 46, i8* %outptr.1.lcssa, align 1, !tbaa !8
  %incdec.ptr = getelementptr inbounds i8, i8* %outptr.1.lcssa, i64 1
  %inc46 = add i64 %size.1.lcssa, 1
  %8 = load i64, i64* %outlen, align 8, !tbaa !14
  %sub47 = add i64 %8, -1
  %cmp48.not = icmp ult i64 %inc46, %sub47
  %spec.select118 = select i1 %cmp48.not, i32 %result.3.lcssa, i32 0
  br label %cleanup53.thread

cleanup53.thread:                                 ; preds = %if.then45, %for.end
  %size.4.ph = phi i64 [ %inc46, %if.then45 ], [ %size.1.lcssa, %for.end ]
  %result.7.ph = phi i32 [ %spec.select118, %if.then45 ], [ %result.3.lcssa, %for.end ]
  %outptr.5.ph = phi i8* [ %incdec.ptr, %if.then45 ], [ %outptr.1.lcssa, %for.end ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %1) #10
  br label %if.end57

cleanup63.thread:                                 ; preds = %if.else, %cleanup
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %1) #10
  br label %cleanup67

if.end57:                                         ; preds = %cleanup53.thread, %if.then4, %if.then10
  %size.5 = phi i64 [ %add5, %if.then10 ], [ %add5, %if.then4 ], [ %size.4.ph, %cleanup53.thread ]
  %result.8 = phi i32 [ 1, %if.then10 ], [ 0, %if.then4 ], [ %result.7.ph, %cleanup53.thread ]
  %outptr.6 = phi i8* [ %add.ptr, %if.then10 ], [ %outptr.0, %if.then4 ], [ %outptr.5.ph, %cleanup53.thread ]
  %add.ptr62 = getelementptr inbounds i8, i8* %call, i64 1
  br i1 %tobool.not, label %cleanup67, label %while.cond

cleanup67:                                        ; preds = %if.end57, %cleanup63.thread
  %retval.6 = phi i32 [ -1, %cleanup63.thread ], [ %result.8, %if.end57 ]
  call void @llvm.lifetime.end.p0i8(i64 2048, i8* nonnull %0) #10
  ret i32 %retval.6
}

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare i8* @strchr(i8* noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare i64 @strlen(i8* noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare i32 @strncmp(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: nounwind
declare i8* @memcpy(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define internal fastcc i32 @codepoint2utf8(i8* nocapture noundef writeonly %out, i64 noundef %utf) unnamed_addr #6 {
entry:
  %cmp = icmp ult i64 %utf, 128
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %conv = trunc i64 %utf to i8
  store i8 %conv, i8* %out, align 1, !tbaa !8
  br label %return

if.else:                                          ; preds = %entry
  %cmp2 = icmp ult i64 %utf, 2048
  br i1 %cmp2, label %if.then4, label %if.else13

if.then4:                                         ; preds = %if.else
  %shr = lshr i64 %utf, 6
  %0 = trunc i64 %shr to i8
  %conv5 = or i8 %0, -64
  store i8 %conv5, i8* %out, align 1, !tbaa !8
  %1 = trunc i64 %utf to i8
  %2 = and i8 %1, 63
  %conv10 = or i8 %2, -128
  %arrayidx11 = getelementptr inbounds i8, i8* %out, i64 1
  store i8 %conv10, i8* %arrayidx11, align 1, !tbaa !8
  br label %return

if.else13:                                        ; preds = %if.else
  %cmp14 = icmp ult i64 %utf, 65536
  br i1 %cmp14, label %if.then16, label %if.else33

if.then16:                                        ; preds = %if.else13
  %shr17 = lshr i64 %utf, 12
  %3 = trunc i64 %shr17 to i8
  %conv20 = or i8 %3, -32
  store i8 %conv20, i8* %out, align 1, !tbaa !8
  %shr22 = lshr i64 %utf, 6
  %4 = trunc i64 %shr22 to i8
  %5 = and i8 %4, 63
  %conv25 = or i8 %5, -128
  %arrayidx26 = getelementptr inbounds i8, i8* %out, i64 1
  store i8 %conv25, i8* %arrayidx26, align 1, !tbaa !8
  %6 = trunc i64 %utf to i8
  %7 = and i8 %6, 63
  %conv30 = or i8 %7, -128
  %arrayidx31 = getelementptr inbounds i8, i8* %out, i64 2
  store i8 %conv30, i8* %arrayidx31, align 1, !tbaa !8
  br label %return

if.else33:                                        ; preds = %if.else13
  %cmp34 = icmp ult i64 %utf, 1114112
  br i1 %cmp34, label %if.then36, label %if.else58

if.then36:                                        ; preds = %if.else33
  %shr37 = lshr i64 %utf, 18
  %8 = trunc i64 %shr37 to i8
  %conv40 = or i8 %8, -16
  store i8 %conv40, i8* %out, align 1, !tbaa !8
  %shr42 = lshr i64 %utf, 12
  %9 = trunc i64 %shr42 to i8
  %10 = and i8 %9, 63
  %conv45 = or i8 %10, -128
  %arrayidx46 = getelementptr inbounds i8, i8* %out, i64 1
  store i8 %conv45, i8* %arrayidx46, align 1, !tbaa !8
  %shr47 = lshr i64 %utf, 6
  %11 = trunc i64 %shr47 to i8
  %12 = and i8 %11, 63
  %conv50 = or i8 %12, -128
  %arrayidx51 = getelementptr inbounds i8, i8* %out, i64 2
  store i8 %conv50, i8* %arrayidx51, align 1, !tbaa !8
  %13 = trunc i64 %utf to i8
  %14 = and i8 %13, 63
  %conv55 = or i8 %14, -128
  %arrayidx56 = getelementptr inbounds i8, i8* %out, i64 3
  store i8 %conv55, i8* %arrayidx56, align 1, !tbaa !8
  br label %return

if.else58:                                        ; preds = %if.else33
  store i8 -17, i8* %out, align 1, !tbaa !8
  %arrayidx60 = getelementptr inbounds i8, i8* %out, i64 1
  store i8 -65, i8* %arrayidx60, align 1, !tbaa !8
  %arrayidx61 = getelementptr inbounds i8, i8* %out, i64 2
  store i8 -67, i8* %arrayidx61, align 1, !tbaa !8
  br label %return

return:                                           ; preds = %if.else58, %if.then36, %if.then16, %if.then4, %if.then
  %.sink = phi i64 [ 3, %if.else58 ], [ 4, %if.then36 ], [ 3, %if.then16 ], [ 2, %if.then4 ], [ 1, %if.then ]
  %retval.0 = phi i32 [ 0, %if.else58 ], [ 4, %if.then36 ], [ 3, %if.then16 ], [ 2, %if.then4 ], [ 1, %if.then ]
  %arrayidx62 = getelementptr inbounds i8, i8* %out, i64 %.sink
  store i8 0, i8* %arrayidx62, align 1, !tbaa !8
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_a2ucompare(i8* noundef %a, i8* noundef readonly %u) local_unnamed_addr #0 {
entry:
  %a_ulabel = alloca [512 x i8], align 16
  %a_size = alloca i64, align 8
  %0 = getelementptr inbounds [512 x i8], [512 x i8]* %a_ulabel, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 512, i8* nonnull %0) #10
  %1 = bitcast i64* %a_size to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #10
  store i64 512, i64* %a_size, align 8, !tbaa !14
  %call = call i32 @ossl_a2ulabel(i8* noundef %a, i8* noundef nonnull %0, i64* noundef nonnull %a_size) #8
  %cmp = icmp slt i32 %call, 1
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call2 = call i32 @strcmp(i8* noundef nonnull %0, i8* noundef %u) #11
  %cmp3 = icmp ne i32 %call2, 0
  %cond = zext i1 %cmp3 to i32
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %cond, %if.end ], [ -1, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #10
  call void @llvm.lifetime.end.p0i8(i64 512, i8* nonnull %0) #10
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare i32 @strcmp(i8* noundef, i8* noundef) local_unnamed_addr #5

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #7

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree noinline norecurse nosync nounwind readnone uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nobuiltin "no-builtins" }
attributes #9 = { nobuiltin nounwind "no-builtins" }
attributes #10 = { nounwind }
attributes #11 = { nobuiltin nounwind readonly willreturn "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{!"clang version 14.0.0"}
!4 = !{!5, !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!6, !6, i64 0}
!9 = distinct !{!9, !10}
!10 = !{!"llvm.loop.mustprogress"}
!11 = distinct !{!11, !10}
!12 = distinct !{!12, !10}
!13 = distinct !{!13, !10}
!14 = !{!15, !15, i64 0}
!15 = !{!"long", !6, i64 0}
!16 = distinct !{!16, !10}
