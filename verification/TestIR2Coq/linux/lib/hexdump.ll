; ModuleID = 'lib/hexdump.c'
source_filename = "lib/hexdump.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

@hex_asc = dso_local local_unnamed_addr constant [17 x i8] c"0123456789abcdef\00", align 1
@hex_asc_upper = dso_local local_unnamed_addr constant [17 x i8] c"0123456789ABCDEF\00", align 1
@.str = private unnamed_addr constant [12 x i8] c"%s%16.16llx\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"%s%8.8x\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"%s%4.4x\00", align 1
@_ctype = external dso_local local_unnamed_addr constant [0 x i8], align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"%s%s%p: %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"%s%s%.8x: %s\0A\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"%s%s%s\0A\00", align 1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define dso_local i32 @hex_to_bin(i8 noundef %ch) local_unnamed_addr #0 {
entry:
  %0 = add i8 %ch, -48
  %1 = icmp ult i8 %0, 10
  br i1 %1, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %conv = zext i8 %ch to i32
  %sub = add nsw i32 %conv, -48
  br label %return

if.end:                                           ; preds = %entry
  %call = call fastcc i8 @__tolower(i8 noundef %ch) #10
  %2 = add i8 %call, -97
  %3 = icmp ult i8 %2, 6
  br i1 %3, label %if.then13, label %return

if.then13:                                        ; preds = %if.end
  %conv6 = zext i8 %call to i32
  %add = add nsw i32 %conv6, -87
  br label %return

return:                                           ; preds = %if.end, %if.then13, %if.then
  %retval.0 = phi i32 [ %sub, %if.then ], [ %add, %if.then13 ], [ -1, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i8 @__tolower(i8 noundef %c) unnamed_addr #0 {
entry:
  %0 = zext i8 %c to i64
  %arrayidx = getelementptr [0 x i8], [0 x i8]* @_ctype, i64 0, i64 %0
  %1 = load i8, i8* %arrayidx, align 1
  %2 = and i8 %1, 1
  %cmp.not = icmp eq i8 %2, 0
  %sub = add i8 %c, 32
  %spec.select = select i1 %cmp.not, i8 %c, i8 %sub
  ret i8 %spec.select
}

; Function Attrs: nofree noinline norecurse nosync nounwind null_pointer_is_valid
define dso_local i32 @hex2bin(i8* nocapture noundef writeonly %dst, i8* nocapture noundef readonly %src, i64 noundef %count) local_unnamed_addr #1 {
entry:
  %tobool.not14 = icmp eq i64 %count, 0
  br i1 %tobool.not14, label %return, label %while.body

while.body:                                       ; preds = %entry, %cleanup
  %dec17.in = phi i64 [ %dec17, %cleanup ], [ %count, %entry ]
  %src.addr.016 = phi i8* [ %incdec.ptr1, %cleanup ], [ %src, %entry ]
  %dst.addr.015 = phi i8* [ %incdec.ptr4, %cleanup ], [ %dst, %entry ]
  %dec17 = add i64 %dec17.in, -1
  %incdec.ptr = getelementptr i8, i8* %src.addr.016, i64 1
  %0 = load i8, i8* %src.addr.016, align 1
  %call = call i32 @hex_to_bin(i8 noundef %0) #10
  %1 = load i8, i8* %incdec.ptr, align 1
  %call2 = call i32 @hex_to_bin(i8 noundef %1) #10
  %cmp = icmp slt i32 %call, 0
  %cmp3 = icmp slt i32 %call2, 0
  %or.cond = select i1 %cmp, i1 true, i1 %cmp3
  br i1 %or.cond, label %return, label %cleanup

cleanup:                                          ; preds = %while.body
  %incdec.ptr1 = getelementptr i8, i8* %src.addr.016, i64 2
  %shl = shl i32 %call, 4
  %or = or i32 %call2, %shl
  %conv = trunc i32 %or to i8
  %incdec.ptr4 = getelementptr i8, i8* %dst.addr.015, i64 1
  store i8 %conv, i8* %dst.addr.015, align 1
  %tobool.not = icmp eq i64 %dec17, 0
  br i1 %tobool.not, label %return, label %while.body

return:                                           ; preds = %cleanup, %while.body, %entry
  %retval.2 = phi i32 [ 0, %entry ], [ -22, %while.body ], [ 0, %cleanup ]
  ret i32 %retval.2
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: nofree noinline norecurse nosync nounwind null_pointer_is_valid
define dso_local i8* @bin2hex(i8* noundef %dst, i8* nocapture noundef readonly %src, i64 noundef %count) local_unnamed_addr #1 {
entry:
  %tobool.not3 = icmp eq i64 %count, 0
  br i1 %tobool.not3, label %while.end, label %while.body

while.body:                                       ; preds = %entry, %while.body
  %_src.06 = phi i8* [ %incdec.ptr, %while.body ], [ %src, %entry ]
  %count.addr.05 = phi i64 [ %dec, %while.body ], [ %count, %entry ]
  %dst.addr.04 = phi i8* [ %call, %while.body ], [ %dst, %entry ]
  %dec = add i64 %count.addr.05, -1
  %incdec.ptr = getelementptr i8, i8* %_src.06, i64 1
  %0 = load i8, i8* %_src.06, align 1
  %call = call fastcc i8* @hex_byte_pack(i8* noundef %dst.addr.04, i8 noundef %0) #10
  %tobool.not = icmp eq i64 %dec, 0
  br i1 %tobool.not, label %while.end, label %while.body

while.end:                                        ; preds = %while.body, %entry
  %dst.addr.0.lcssa = phi i8* [ %dst, %entry ], [ %call, %while.body ]
  ret i8* %dst.addr.0.lcssa
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn writeonly
define internal fastcc i8* @hex_byte_pack(i8* noundef writeonly %buf, i8 noundef %byte) unnamed_addr #3 {
entry:
  %conv = zext i8 %byte to i32
  %0 = lshr i32 %conv, 4
  %1 = zext i32 %0 to i64
  %arrayidx = getelementptr [17 x i8], [17 x i8]* @hex_asc, i64 0, i64 %1
  %2 = load i8, i8* %arrayidx, align 1
  %incdec.ptr = getelementptr i8, i8* %buf, i64 1
  store i8 %2, i8* %buf, align 1
  %and2 = and i32 %conv, 15
  %3 = zext i32 %and2 to i64
  %arrayidx4 = getelementptr [17 x i8], [17 x i8]* @hex_asc, i64 0, i64 %3
  %4 = load i8, i8* %arrayidx4, align 1
  %incdec.ptr5 = getelementptr i8, i8* %buf, i64 2
  store i8 %4, i8* %incdec.ptr, align 1
  ret i8* %incdec.ptr5
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @hex_dump_to_buffer(i8* nocapture noundef readonly %buf, i64 noundef %len, i32 noundef %rowsize, i32 noundef %groupsize, i8* noundef %linebuf, i64 noundef %linebuflen, i1 noundef %ascii) local_unnamed_addr #4 {
entry:
  %cmp = icmp ne i32 %rowsize, 16
  %cmp1 = icmp ne i32 %rowsize, 32
  %or.cond = and i1 %cmp, %cmp1
  %spec.store.select235 = select i1 %or.cond, i32 16, i32 %rowsize
  %conv365 = zext i32 %spec.store.select235 to i64
  %cmp2 = icmp ult i64 %conv365, %len
  %spec.select = select i1 %cmp2, i64 %conv365, i64 %len
  %conv7 = sext i32 %groupsize to i64
  %call = call fastcc i1 @is_power_of_2(i64 noundef %conv7) #11
  %cmp8 = icmp slt i32 %groupsize, 9
  %0 = and i1 %cmp8, %call
  %spec.store.select236 = select i1 %0, i32 %groupsize, i32 1
  %conv12 = sext i32 %spec.store.select236 to i64
  %rem = urem i64 %spec.select, %conv12
  %cmp13.not = icmp eq i64 %rem, 0
  %spec.store.select = select i1 %cmp13.not, i32 %spec.store.select236, i32 1
  %conv17 = sext i32 %spec.store.select to i64
  %div = udiv i64 %spec.select, %conv17
  %conv18 = trunc i64 %div to i32
  %mul = shl nuw nsw i32 %spec.store.select235, 1
  %div19 = sdiv i32 %spec.store.select235, %spec.store.select
  %add = add nsw i32 %div19, %mul
  %add20 = add nuw nsw i32 %add, 1
  %tobool.not = icmp eq i64 %linebuflen, 0
  br i1 %tobool.not, label %overflow1, label %if.end22

if.end22:                                         ; preds = %entry
  %tobool23.not = icmp eq i64 %spec.select, 0
  br i1 %tobool23.not, label %nil, label %if.end25

if.end25:                                         ; preds = %if.end22
  switch i32 %spec.store.select, label %for.body117 [
    i32 8, label %if.then28
    i32 4, label %if.then46
    i32 2, label %if.then80
  ]

if.then28:                                        ; preds = %if.end25
  %1 = bitcast i8* %buf to i64*
  %cmp29386.not = icmp eq i32 %conv18, 0
  br i1 %cmp29386.not, label %if.end160, label %for.body

for.body:                                         ; preds = %if.then28, %if.end42
  %indvars.iv418 = phi i64 [ %indvars.iv.next419, %if.end42 ], [ 0, %if.then28 ]
  %lx.0388 = phi i32 [ %add43, %if.end42 ], [ 0, %if.then28 ]
  %idx.ext = sext i32 %lx.0388 to i64
  %add.ptr = getelementptr i8, i8* %linebuf, i64 %idx.ext
  %sub = sub i64 %linebuflen, %idx.ext
  %tobool32.not = icmp eq i64 %indvars.iv418, 0
  %cond = select i1 %tobool32.not, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)
  %add.ptr34 = getelementptr i64, i64* %1, i64 %indvars.iv418
  %2 = load i64, i64* %add.ptr34, align 1
  %call35 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef %add.ptr, i64 noundef %sub, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* noundef %cond, i64 noundef %2) #12
  %conv36 = sext i32 %call35 to i64
  %cmp39.not = icmp ugt i64 %sub, %conv36
  br i1 %cmp39.not, label %if.end42, label %overflow1

if.end42:                                         ; preds = %for.body
  %add43 = add i32 %call35, %lx.0388
  %indvars.iv.next419 = add nuw nsw i64 %indvars.iv418, 1
  %exitcond422.not = icmp eq i64 %indvars.iv.next419, %div
  br i1 %exitcond422.not, label %if.end160, label %for.body

if.then46:                                        ; preds = %if.end25
  %3 = bitcast i8* %buf to i32*
  %cmp48382.not = icmp eq i32 %conv18, 0
  br i1 %cmp48382.not, label %if.end160, label %for.body50

for.body50:                                       ; preds = %if.then46, %if.end69
  %indvars.iv413 = phi i64 [ %indvars.iv.next414, %if.end69 ], [ 0, %if.then46 ]
  %lx.1384 = phi i32 [ %add70, %if.end69 ], [ 0, %if.then46 ]
  %idx.ext51 = sext i32 %lx.1384 to i64
  %add.ptr52 = getelementptr i8, i8* %linebuf, i64 %idx.ext51
  %sub54 = sub i64 %linebuflen, %idx.ext51
  %tobool55.not = icmp eq i64 %indvars.iv413, 0
  %cond56 = select i1 %tobool55.not, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)
  %add.ptr59 = getelementptr i32, i32* %3, i64 %indvars.iv413
  %4 = load i32, i32* %add.ptr59, align 1
  %call62 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef %add.ptr52, i64 noundef %sub54, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i8* noundef %cond56, i32 noundef %4) #12
  %conv63 = sext i32 %call62 to i64
  %cmp66.not = icmp ugt i64 %sub54, %conv63
  br i1 %cmp66.not, label %if.end69, label %overflow1

if.end69:                                         ; preds = %for.body50
  %add70 = add i32 %call62, %lx.1384
  %indvars.iv.next414 = add nuw nsw i64 %indvars.iv413, 1
  %exitcond417.not = icmp eq i64 %indvars.iv.next414, %div
  br i1 %exitcond417.not, label %if.end160, label %for.body50

if.then80:                                        ; preds = %if.end25
  %5 = bitcast i8* %buf to i16*
  %cmp82379.not = icmp eq i32 %conv18, 0
  br i1 %cmp82379.not, label %if.end160, label %for.body84

for.body84:                                       ; preds = %if.then80, %if.end104
  %indvars.iv = phi i64 [ %indvars.iv.next, %if.end104 ], [ 0, %if.then80 ]
  %lx.2381 = phi i32 [ %add105, %if.end104 ], [ 0, %if.then80 ]
  %idx.ext85 = sext i32 %lx.2381 to i64
  %add.ptr86 = getelementptr i8, i8* %linebuf, i64 %idx.ext85
  %sub88 = sub i64 %linebuflen, %idx.ext85
  %tobool89.not = icmp eq i64 %indvars.iv, 0
  %cond90 = select i1 %tobool89.not, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)
  %add.ptr93 = getelementptr i16, i16* %5, i64 %indvars.iv
  %6 = load i16, i16* %add.ptr93, align 1
  %conv96 = zext i16 %6 to i32
  %call97 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef %add.ptr86, i64 noundef %sub88, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i8* noundef %cond90, i32 noundef %conv96) #12
  %conv98 = sext i32 %call97 to i64
  %cmp101.not = icmp ugt i64 %sub88, %conv98
  br i1 %cmp101.not, label %if.end104, label %overflow1

if.end104:                                        ; preds = %for.body84
  %add105 = add i32 %call97, %lx.2381
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %div
  br i1 %exitcond.not, label %if.end160, label %for.body84

for.body117:                                      ; preds = %if.end25, %if.end148
  %conv114393 = phi i64 [ %conv114, %if.end148 ], [ 0, %if.end25 ]
  %lx.3392 = phi i32 [ %add130, %if.end148 ], [ 0, %if.end25 ]
  %indvars = trunc i64 %conv114393 to i32
  %add118 = add i32 %lx.3392, 2
  %conv119 = sext i32 %add118 to i64
  %cmp120 = icmp ugt i64 %conv119, %linebuflen
  br i1 %cmp120, label %overflow2, label %if.end123

if.end123:                                        ; preds = %for.body117
  %arrayidx = getelementptr i8, i8* %buf, i64 %conv114393
  %7 = load i8, i8* %arrayidx, align 1
  %conv124 = zext i8 %7 to i32
  %8 = lshr i32 %conv124, 4
  %9 = zext i32 %8 to i64
  %arrayidx126 = getelementptr [17 x i8], [17 x i8]* @hex_asc, i64 0, i64 %9
  %10 = load i8, i8* %arrayidx126, align 1
  %inc127 = add i32 %lx.3392, 1
  %idxprom128 = sext i32 %lx.3392 to i64
  %arrayidx129 = getelementptr i8, i8* %linebuf, i64 %idxprom128
  store i8 %10, i8* %arrayidx129, align 1
  %add130 = add i32 %lx.3392, 3
  %conv131 = sext i32 %add130 to i64
  %cmp132 = icmp ugt i64 %conv131, %linebuflen
  br i1 %cmp132, label %overflow2, label %if.end135

if.end135:                                        ; preds = %if.end123
  %and137 = and i32 %conv124, 15
  %11 = zext i32 %and137 to i64
  %arrayidx139 = getelementptr [17 x i8], [17 x i8]* @hex_asc, i64 0, i64 %11
  %12 = load i8, i8* %arrayidx139, align 1
  %idxprom141 = sext i32 %inc127 to i64
  %arrayidx142 = getelementptr i8, i8* %linebuf, i64 %idxprom141
  store i8 %12, i8* %arrayidx142, align 1
  %add143 = add i32 %lx.3392, 4
  %conv144 = sext i32 %add143 to i64
  %cmp145 = icmp ugt i64 %conv144, %linebuflen
  br i1 %cmp145, label %overflow2, label %if.end148

if.end148:                                        ; preds = %if.end135
  %arrayidx151 = getelementptr i8, i8* %linebuf, i64 %conv119
  store i8 32, i8* %arrayidx151, align 1
  %inc153 = add i32 %indvars, 1
  %conv114 = sext i32 %inc153 to i64
  %cmp115 = icmp ugt i64 %spec.select, %conv114
  br i1 %cmp115, label %for.body117, label %for.end154

for.end154:                                       ; preds = %if.end148
  %phi.cmp = icmp ne i32 %inc153, 0
  %phi.cast = sext i1 %phi.cmp to i32
  %13 = add i32 %add130, %phi.cast
  br label %if.end160

if.end160:                                        ; preds = %if.end104, %if.end69, %if.end42, %if.then80, %if.then46, %if.then28, %for.end154
  %lx.4 = phi i32 [ %13, %for.end154 ], [ 0, %if.then28 ], [ 0, %if.then46 ], [ 0, %if.then80 ], [ %add43, %if.end42 ], [ %add70, %if.end69 ], [ %add105, %if.end104 ]
  br i1 %ascii, label %while.cond.preheader, label %nil

while.cond.preheader:                             ; preds = %if.end160
  %cmp164.not396 = icmp sgt i32 %lx.4, %add
  br i1 %cmp164.not396, label %for.body179.preheader, label %while.body.preheader

while.body.preheader:                             ; preds = %while.cond.preheader
  %14 = sext i32 %lx.4 to i64
  br label %while.body

while.body:                                       ; preds = %while.body.preheader, %if.end171
  %indvars.iv423 = phi i64 [ %14, %while.body.preheader ], [ %indvars.iv.next424, %if.end171 ]
  %add166 = shl i64 %indvars.iv423, 32
  %sext = add i64 %add166, 8589934592
  %conv167 = ashr exact i64 %sext, 32
  %cmp168 = icmp ugt i64 %conv167, %linebuflen
  br i1 %cmp168, label %overflow2.loopexit404, label %if.end171

if.end171:                                        ; preds = %while.body
  %indvars.iv.next424 = add nsw i64 %indvars.iv423, 1
  %arrayidx174 = getelementptr i8, i8* %linebuf, i64 %indvars.iv423
  store i8 32, i8* %arrayidx174, align 1
  %lftr.wideiv = trunc i64 %indvars.iv.next424 to i32
  %exitcond427.not = icmp eq i32 %add20, %lftr.wideiv
  br i1 %exitcond427.not, label %for.body179.preheader, label %while.body

for.body179.preheader:                            ; preds = %if.end171, %while.cond.preheader
  %lx.6401.ph = phi i32 [ %lx.4, %while.cond.preheader ], [ %add20, %if.end171 ]
  br label %for.body179

for.body179:                                      ; preds = %for.body179.preheader, %cond.end
  %conv176402 = phi i64 [ %conv176, %cond.end ], [ 0, %for.body179.preheader ]
  %lx.6401 = phi i32 [ %inc202, %cond.end ], [ %lx.6401.ph, %for.body179.preheader ]
  %add180 = add i32 %lx.6401, 2
  %conv181 = sext i32 %add180 to i64
  %cmp182 = icmp ugt i64 %conv181, %linebuflen
  br i1 %cmp182, label %overflow2, label %if.end185

if.end185:                                        ; preds = %for.body179
  %arrayidx187 = getelementptr i8, i8* %buf, i64 %conv176402
  %15 = load i8, i8* %arrayidx187, align 1
  %cmp189 = icmp sgt i8 %15, -1
  br i1 %cmp189, label %land.lhs.true191, label %cond.end

land.lhs.true191:                                 ; preds = %if.end185
  %idxprom193 = zext i8 %15 to i64
  %arrayidx194 = getelementptr [0 x i8], [0 x i8]* @_ctype, i64 0, i64 %idxprom193
  %16 = load i8, i8* %arrayidx194, align 1
  %17 = and i8 %16, -105
  %cmp197.not = icmp eq i8 %17, 0
  %spec.select358 = select i1 %cmp197.not, i8 46, i8 %15
  br label %cond.end

cond.end:                                         ; preds = %land.lhs.true191, %if.end185
  %cond200 = phi i8 [ 46, %if.end185 ], [ %spec.select358, %land.lhs.true191 ]
  %inc202 = add i32 %lx.6401, 1
  %idxprom203 = sext i32 %lx.6401 to i64
  %arrayidx204 = getelementptr i8, i8* %linebuf, i64 %idxprom203
  store i8 %cond200, i8* %arrayidx204, align 1
  %inc206 = shl nsw i64 %conv176402, 32
  %sext431 = add i64 %inc206, 4294967296
  %conv176 = ashr exact i64 %sext431, 32
  %cmp177 = icmp ugt i64 %spec.select, %conv176
  br i1 %cmp177, label %for.body179, label %nil

nil:                                              ; preds = %cond.end, %if.end160, %if.end22
  %lx.7 = phi i32 [ %lx.4, %if.end160 ], [ 0, %if.end22 ], [ %inc202, %cond.end ]
  %idxprom208 = sext i32 %lx.7 to i64
  %arrayidx209 = getelementptr i8, i8* %linebuf, i64 %idxprom208
  store i8 0, i8* %arrayidx209, align 1
  br label %cleanup227

overflow2.loopexit404:                            ; preds = %while.body
  %18 = trunc i64 %indvars.iv423 to i32
  br label %overflow2

overflow2:                                        ; preds = %if.end135, %if.end123, %for.body117, %for.body179, %overflow2.loopexit404
  %lx.8 = phi i32 [ %18, %overflow2.loopexit404 ], [ %lx.6401, %for.body179 ], [ %add118, %if.end135 ], [ %inc127, %if.end123 ], [ %lx.3392, %for.body117 ]
  %idxprom211 = sext i32 %lx.8 to i64
  %arrayidx212 = getelementptr i8, i8* %linebuf, i64 %idxprom211
  store i8 0, i8* %arrayidx212, align 1
  br label %overflow1

overflow1:                                        ; preds = %for.body84, %for.body50, %for.body, %entry, %overflow2
  br i1 %ascii, label %cond.true215, label %cond.false218

cond.true215:                                     ; preds = %overflow1
  %conv216429 = zext i32 %add20 to i64
  %add217 = add nuw nsw i64 %spec.select, %conv216429
  br label %cond.end224

cond.false218:                                    ; preds = %overflow1
  %mul219 = shl i32 %spec.store.select, 1
  %add220 = or i32 %mul219, 1
  %mul221 = mul i32 %add220, %conv18
  %sub222 = add i32 %mul221, -1
  %conv223430 = zext i32 %sub222 to i64
  br label %cond.end224

cond.end224:                                      ; preds = %cond.false218, %cond.true215
  %cond225 = phi i64 [ %add217, %cond.true215 ], [ %conv223430, %cond.false218 ]
  %conv226 = trunc i64 %cond225 to i32
  br label %cleanup227

cleanup227:                                       ; preds = %cond.end224, %nil
  %retval.0 = phi i32 [ %conv226, %cond.end224 ], [ %lx.7, %nil ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i1 @is_power_of_2(i64 noundef %n) unnamed_addr #5 {
entry:
  %cmp.not = icmp eq i64 %n, 0
  br i1 %cmp.not, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %0 = call i64 @llvm.ctpop.i64(i64 %n), !range !7
  %cmp1 = icmp ult i64 %0, 2
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %1 = phi i1 [ false, %entry ], [ %cmp1, %land.rhs ]
  ret i1 %1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snprintf(i8* noundef, i64 noundef, i8* noundef, ...) local_unnamed_addr #6

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @print_hex_dump(i8* noundef %level, i8* noundef %prefix_str, i32 noundef %prefix_type, i32 noundef %rowsize, i32 noundef %groupsize, i8* noundef %buf, i64 noundef %len, i1 noundef %ascii) local_unnamed_addr #4 {
entry:
  %linebuf = alloca [131 x i8], align 1
  %0 = getelementptr inbounds [131 x i8], [131 x i8]* %linebuf, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 131, i8* nonnull %0) #13
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(131) %0, i8 0, i64 131, i1 false), !annotation !8
  %cmp = icmp ne i32 %rowsize, 16
  %cmp2 = icmp ne i32 %rowsize, 32
  %or.cond = and i1 %cmp, %cmp2
  %spec.store.select = select i1 %or.cond, i32 16, i32 %rowsize
  %cmp552.not = icmp eq i64 %len, 0
  br i1 %cmp552.not, label %for.end, label %for.body.preheader

for.body.preheader:                               ; preds = %entry
  %conv = trunc i64 %len to i32
  br label %for.body

for.body:                                         ; preds = %for.body.preheader, %for.inc
  %conv456 = phi i64 [ %conv4, %for.inc ], [ 0, %for.body.preheader ]
  %remaining.053 = phi i32 [ %sub, %for.inc ], [ %conv, %for.body.preheader ]
  %indvars = trunc i64 %conv456 to i32
  %cmp7 = icmp slt i32 %remaining.053, %spec.store.select
  %cond = select i1 %cmp7, i32 %remaining.053, i32 %spec.store.select
  %sub = sub i32 %remaining.053, %spec.store.select
  %add.ptr = getelementptr i8, i8* %buf, i64 %conv456
  %conv9 = sext i32 %cond to i64
  %call = call i32 @hex_dump_to_buffer(i8* noundef %add.ptr, i64 noundef %conv9, i32 noundef %spec.store.select, i32 noundef %groupsize, i8* noundef nonnull %0, i64 noundef 131, i1 noundef %ascii) #10
  switch i32 %prefix_type, label %do.end24 [
    i32 1, label %do.end
    i32 2, label %do.end18
  ]

do.end:                                           ; preds = %for.body
  %call14 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0), i8* noundef %level, i8* noundef %prefix_str, i8* noundef %add.ptr, i8* noundef nonnull %0) #14
  br label %for.inc

do.end18:                                         ; preds = %for.body
  %call21 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0), i8* noundef %level, i8* noundef %prefix_str, i32 noundef %indvars, i8* noundef nonnull %0) #14
  br label %for.inc

do.end24:                                         ; preds = %for.body
  %call27 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), i8* noundef %level, i8* noundef %prefix_str, i8* noundef nonnull %0) #14
  br label %for.inc

for.inc:                                          ; preds = %do.end, %do.end18, %do.end24
  %add = add i32 %spec.store.select, %indvars
  %conv4 = sext i32 %add to i64
  %cmp5 = icmp ult i64 %conv4, %len
  br i1 %cmp5, label %for.body, label %for.end

for.end:                                          ; preds = %for.inc, %entry
  call void @llvm.lifetime.end.p0i8(i64 131, i8* nonnull %0) #13
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #7

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(i8* noundef, ...) local_unnamed_addr #8

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.ctpop.i64(i64) #9

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #1 = { nofree noinline norecurse nosync nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #2 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn writeonly "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #4 = { noinline nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #5 = { mustprogress nofree noinline nosync nounwind null_pointer_is_valid readnone willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #6 = { null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #7 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #8 = { cold null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #9 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nobuiltin "no-builtins" }
attributes #11 = { nobuiltin nounwind readnone willreturn "no-builtins" }
attributes #12 = { nobuiltin nounwind "no-builtins" }
attributes #13 = { nounwind }
attributes #14 = { cold nobuiltin nounwind "no-builtins" }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}

!0 = !{i32 1, !"wchar_size", i32 2}
!1 = !{i32 1, !"branch-target-enforcement", i32 0}
!2 = !{i32 1, !"sign-return-address", i32 0}
!3 = !{i32 1, !"sign-return-address-all", i32 0}
!4 = !{i32 1, !"sign-return-address-with-bkey", i32 0}
!5 = !{i32 7, !"frame-pointer", i32 1}
!6 = !{!"clang version 14.0.0"}
!7 = !{i64 0, i64 65}
!8 = !{!"auto-init"}
