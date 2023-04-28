; ModuleID = 'crypto/bn/bn_mont.c'
source_filename = "crypto/bn/bn_mont.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bignum_st = type { i64*, i32, i32, i32, i32 }
%struct.bn_mont_ctx_st = type { i32, %struct.bignum_st, %struct.bignum_st, %struct.bignum_st, [2 x i64], i32 }
%struct.bignum_ctx = type opaque

@.str = private unnamed_addr constant [20 x i8] c"crypto/bn/bn_mont.c\00", align 1
@__func__.BN_MONT_CTX_new = private unnamed_addr constant [16 x i8] c"BN_MONT_CTX_new\00", align 1

; Function Attrs: noinline nounwind uwtable
define i32 @BN_mod_mul_montgomery(%struct.bignum_st* noundef %r, %struct.bignum_st* noundef %a, %struct.bignum_st* noundef %b, %struct.bn_mont_ctx_st* noundef %mont, %struct.bignum_ctx* noundef %ctx) local_unnamed_addr #0 {
entry:
  %call = tail call i32 @bn_mul_mont_fixed_top(%struct.bignum_st* noundef %r, %struct.bignum_st* noundef %a, %struct.bignum_st* noundef %b, %struct.bn_mont_ctx_st* noundef %mont, %struct.bignum_ctx* noundef %ctx) #4
  tail call void @bn_correct_top(%struct.bignum_st* noundef %r) #5
  ret i32 %call
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: noinline nounwind uwtable
define i32 @bn_mul_mont_fixed_top(%struct.bignum_st* noundef %r, %struct.bignum_st* noundef %a, %struct.bignum_st* noundef %b, %struct.bn_mont_ctx_st* noundef %mont, %struct.bignum_ctx* noundef %ctx) local_unnamed_addr #0 {
entry:
  %top = getelementptr inbounds %struct.bn_mont_ctx_st, %struct.bn_mont_ctx_st* %mont, i64 0, i32 2, i32 1
  %0 = load i32, i32* %top, align 8, !tbaa !4
  %cmp = icmp sgt i32 %0, 1
  br i1 %cmp, label %land.lhs.true, label %if.end18

land.lhs.true:                                    ; preds = %entry
  %top1 = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %a, i64 0, i32 1
  %1 = load i32, i32* %top1, align 8, !tbaa !11
  %cmp2 = icmp eq i32 %1, %0
  br i1 %cmp2, label %land.lhs.true3, label %if.end18

land.lhs.true3:                                   ; preds = %land.lhs.true
  %top4 = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %b, i64 0, i32 1
  %2 = load i32, i32* %top4, align 8, !tbaa !11
  %cmp5 = icmp eq i32 %2, %0
  br i1 %cmp5, label %if.then, label %if.end18

if.then:                                          ; preds = %land.lhs.true3
  %call = tail call %struct.bignum_st* @bn_wexpand(%struct.bignum_st* noundef %r, i32 noundef %0) #5
  %cmp6 = icmp eq %struct.bignum_st* %call, null
  br i1 %cmp6, label %cleanup, label %if.end

if.end:                                           ; preds = %if.then
  %d = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %r, i64 0, i32 0
  %3 = load i64*, i64** %d, align 8, !tbaa !12
  %d8 = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %a, i64 0, i32 0
  %4 = load i64*, i64** %d8, align 8, !tbaa !12
  %d9 = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %b, i64 0, i32 0
  %5 = load i64*, i64** %d9, align 8, !tbaa !12
  %d11 = getelementptr inbounds %struct.bn_mont_ctx_st, %struct.bn_mont_ctx_st* %mont, i64 0, i32 2, i32 0
  %6 = load i64*, i64** %d11, align 8, !tbaa !13
  %arraydecay = getelementptr inbounds %struct.bn_mont_ctx_st, %struct.bn_mont_ctx_st* %mont, i64 0, i32 4, i64 0
  %call12 = tail call i32 @bn_mul_mont(i64* noundef %3, i64* noundef %4, i64* noundef %5, i64* noundef %6, i64* noundef nonnull %arraydecay, i32 noundef %0) #5
  %tobool.not = icmp eq i32 %call12, 0
  br i1 %tobool.not, label %if.end18, label %if.then13

if.then13:                                        ; preds = %if.end
  %neg = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %a, i64 0, i32 3
  %7 = load i32, i32* %neg, align 8, !tbaa !14
  %neg14 = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %b, i64 0, i32 3
  %8 = load i32, i32* %neg14, align 8, !tbaa !14
  %xor = xor i32 %8, %7
  %neg15 = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %r, i64 0, i32 3
  store i32 %xor, i32* %neg15, align 8, !tbaa !14
  %top16 = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %r, i64 0, i32 1
  store i32 %0, i32* %top16, align 8, !tbaa !11
  br label %cleanup

if.end18:                                         ; preds = %if.end, %land.lhs.true3, %land.lhs.true, %entry
  %top19 = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %a, i64 0, i32 1
  %9 = load i32, i32* %top19, align 8, !tbaa !11
  %top20 = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %b, i64 0, i32 1
  %10 = load i32, i32* %top20, align 8, !tbaa !11
  %add = add nsw i32 %10, %9
  %mul = shl nsw i32 %0, 1
  %cmp21 = icmp sgt i32 %add, %mul
  br i1 %cmp21, label %cleanup, label %if.end23

if.end23:                                         ; preds = %if.end18
  tail call void @BN_CTX_start(%struct.bignum_ctx* noundef %ctx) #5
  %call24 = tail call %struct.bignum_st* @BN_CTX_get(%struct.bignum_ctx* noundef %ctx) #5
  %cmp25 = icmp eq %struct.bignum_st* %call24, null
  br i1 %cmp25, label %err, label %if.end27

if.end27:                                         ; preds = %if.end23
  %cmp28 = icmp eq %struct.bignum_st* %a, %b
  br i1 %cmp28, label %if.then29, label %if.else

if.then29:                                        ; preds = %if.end27
  %call30 = tail call i32 @bn_sqr_fixed_top(%struct.bignum_st* noundef nonnull %call24, %struct.bignum_st* noundef nonnull %a, %struct.bignum_ctx* noundef %ctx) #5
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %err, label %if.end38

if.else:                                          ; preds = %if.end27
  %call34 = tail call i32 @bn_mul_fixed_top(%struct.bignum_st* noundef nonnull %call24, %struct.bignum_st* noundef nonnull %a, %struct.bignum_st* noundef nonnull %b, %struct.bignum_ctx* noundef %ctx) #5
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %err, label %if.end38

if.end38:                                         ; preds = %if.else, %if.then29
  %call39 = tail call fastcc i32 @bn_from_montgomery_word(%struct.bignum_st* noundef %r, %struct.bignum_st* noundef nonnull %call24, %struct.bn_mont_ctx_st* noundef nonnull %mont) #4
  %tobool40.not = icmp ne i32 %call39, 0
  %spec.select = zext i1 %tobool40.not to i32
  br label %err

err:                                              ; preds = %if.end38, %if.else, %if.then29, %if.end23
  %ret.0 = phi i32 [ 0, %if.end23 ], [ 0, %if.then29 ], [ 0, %if.else ], [ %spec.select, %if.end38 ]
  tail call void @BN_CTX_end(%struct.bignum_ctx* noundef %ctx) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end18, %if.then, %err, %if.then13
  %retval.0 = phi i32 [ 1, %if.then13 ], [ %ret.0, %err ], [ 0, %if.then ], [ 0, %if.end18 ]
  ret i32 %retval.0
}

declare void @bn_correct_top(%struct.bignum_st* noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

declare %struct.bignum_st* @bn_wexpand(%struct.bignum_st* noundef, i32 noundef) local_unnamed_addr #2

declare i32 @bn_mul_mont(i64* noundef, i64* noundef, i64* noundef, i64* noundef, i64* noundef, i32 noundef) local_unnamed_addr #2

declare void @BN_CTX_start(%struct.bignum_ctx* noundef) local_unnamed_addr #2

declare %struct.bignum_st* @BN_CTX_get(%struct.bignum_ctx* noundef) local_unnamed_addr #2

declare i32 @bn_sqr_fixed_top(%struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_ctx* noundef) local_unnamed_addr #2

declare i32 @bn_mul_fixed_top(%struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_ctx* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @bn_from_montgomery_word(%struct.bignum_st* noundef %ret, %struct.bignum_st* noundef %r, %struct.bn_mont_ctx_st* nocapture noundef readonly %mont) unnamed_addr #0 {
entry:
  %top = getelementptr inbounds %struct.bn_mont_ctx_st, %struct.bn_mont_ctx_st* %mont, i64 0, i32 2, i32 1
  %0 = load i32, i32* %top, align 8, !tbaa !11
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %top1 = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %ret, i64 0, i32 1
  store i32 0, i32* %top1, align 8, !tbaa !11
  br label %cleanup

if.end:                                           ; preds = %entry
  %mul = shl nsw i32 %0, 1
  %call = tail call %struct.bignum_st* @bn_wexpand(%struct.bignum_st* noundef %r, i32 noundef %mul) #5
  %cmp2 = icmp eq %struct.bignum_st* %call, null
  br i1 %cmp2, label %cleanup, label %if.end4

if.end4:                                          ; preds = %if.end
  %neg = getelementptr inbounds %struct.bn_mont_ctx_st, %struct.bn_mont_ctx_st* %mont, i64 0, i32 2, i32 3
  %1 = load i32, i32* %neg, align 8, !tbaa !14
  %neg5 = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %r, i64 0, i32 3
  %2 = load i32, i32* %neg5, align 8, !tbaa !14
  %xor = xor i32 %2, %1
  store i32 %xor, i32* %neg5, align 8, !tbaa !14
  %d = getelementptr inbounds %struct.bn_mont_ctx_st, %struct.bn_mont_ctx_st* %mont, i64 0, i32 2, i32 0
  %3 = load i64*, i64** %d, align 8, !tbaa !12
  %d6 = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %r, i64 0, i32 0
  %4 = load i64*, i64** %d6, align 8, !tbaa !12
  %top7 = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %r, i64 0, i32 1
  %5 = load i32, i32* %top7, align 8, !tbaa !11
  %cmp8160 = icmp sgt i32 %0, 0
  br i1 %cmp8160, label %for.body.preheader, label %for.end.thread

for.end.thread:                                   ; preds = %if.end4
  store i32 %mul, i32* %top7, align 8, !tbaa !11
  br label %for.end41

for.body.preheader:                               ; preds = %if.end4
  %smax = call i32 @llvm.smax.i32(i32 %mul, i32 1)
  %wide.trip.count = zext i32 %smax to i64
  %min.iters.check = icmp ult i32 %smax, 4
  br i1 %min.iters.check, label %for.body.preheader212, label %vector.ph

vector.ph:                                        ; preds = %for.body.preheader
  %n.vec = and i64 %wide.trip.count, 2147483644
  %broadcast.splatinsert = insertelement <2 x i32> poison, i32 %5, i64 0
  %broadcast.splat = shufflevector <2 x i32> %broadcast.splatinsert, <2 x i32> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert182 = insertelement <2 x i32> poison, i32 %5, i64 0
  %broadcast.splat183 = shufflevector <2 x i32> %broadcast.splatinsert182, <2 x i32> poison, <2 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vec.ind178 = phi <2 x i32> [ <i32 0, i32 1>, %vector.ph ], [ %vec.ind.next181, %vector.body ]
  %step.add179 = add <2 x i32> %vec.ind178, <i32 2, i32 2>
  %6 = sub <2 x i32> %vec.ind178, %broadcast.splat
  %7 = sub <2 x i32> %step.add179, %broadcast.splat183
  %8 = lshr <2 x i32> %6, <i32 31, i32 31>
  %9 = lshr <2 x i32> %7, <i32 31, i32 31>
  %10 = zext <2 x i32> %8 to <2 x i64>
  %11 = zext <2 x i32> %9 to <2 x i64>
  %12 = sub nsw <2 x i64> zeroinitializer, %10
  %13 = sub nsw <2 x i64> zeroinitializer, %11
  %14 = getelementptr inbounds i64, i64* %4, i64 %index
  %15 = bitcast i64* %14 to <2 x i64>*
  %wide.load = load <2 x i64>, <2 x i64>* %15, align 8, !tbaa !15
  %16 = getelementptr inbounds i64, i64* %14, i64 2
  %17 = bitcast i64* %16 to <2 x i64>*
  %wide.load184 = load <2 x i64>, <2 x i64>* %17, align 8, !tbaa !15
  %18 = and <2 x i64> %wide.load, %12
  %19 = and <2 x i64> %wide.load184, %13
  %20 = bitcast i64* %14 to <2 x i64>*
  store <2 x i64> %18, <2 x i64>* %20, align 8, !tbaa !15
  %21 = bitcast i64* %16 to <2 x i64>*
  store <2 x i64> %19, <2 x i64>* %21, align 8, !tbaa !15
  %index.next = add nuw i64 %index, 4
  %vec.ind.next181 = add <2 x i32> %vec.ind178, <i32 4, i32 4>
  %22 = icmp eq i64 %index.next, %n.vec
  br i1 %22, label %middle.block, label %vector.body, !llvm.loop !17

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %for.end, label %for.body.preheader212

for.body.preheader212:                            ; preds = %for.body.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %for.body.preheader ], [ %n.vec, %middle.block ]
  br label %for.body

for.body:                                         ; preds = %for.body.preheader212, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ %indvars.iv.ph, %for.body.preheader212 ]
  %23 = trunc i64 %indvars.iv to i32
  %sub = sub i32 %23, %5
  %shr = lshr i32 %sub, 31
  %conv = zext i32 %shr to i64
  %sub9 = sub nsw i64 0, %conv
  %arrayidx = getelementptr inbounds i64, i64* %4, i64 %indvars.iv
  %24 = load i64, i64* %arrayidx, align 8, !tbaa !15
  %and = and i64 %24, %sub9
  store i64 %and, i64* %arrayidx, align 8, !tbaa !15
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %for.end, label %for.body, !llvm.loop !20

for.end:                                          ; preds = %for.body, %middle.block
  store i32 %mul, i32* %top7, align 8, !tbaa !11
  %arrayidx12 = getelementptr inbounds %struct.bn_mont_ctx_st, %struct.bn_mont_ctx_st* %mont, i64 0, i32 4, i64 0
  %25 = load i64, i64* %arrayidx12, align 8, !tbaa !15
  br i1 %cmp8160, label %for.body16.lr.ph, label %for.end41

for.body16.lr.ph:                                 ; preds = %for.end
  %idxprom21176 = zext i32 %0 to i64
  br label %for.body16

for.body16:                                       ; preds = %for.body16.lr.ph, %for.body16
  %i.1165 = phi i32 [ 0, %for.body16.lr.ph ], [ %inc40, %for.body16 ]
  %rp.0164 = phi i64* [ %4, %for.body16.lr.ph ], [ %incdec.ptr, %for.body16 ]
  %carry.0163 = phi i64 [ 0, %for.body16.lr.ph ], [ %and36, %for.body16 ]
  %26 = load i64, i64* %rp.0164, align 8, !tbaa !15
  %mul18 = mul i64 %26, %25
  %call20 = tail call i64 @bn_mul_add_words(i64* noundef nonnull %rp.0164, i64* noundef %3, i32 noundef %0, i64 noundef %mul18) #5
  %add = add i64 %call20, %carry.0163
  %arrayidx22 = getelementptr inbounds i64, i64* %rp.0164, i64 %idxprom21176
  %27 = load i64, i64* %arrayidx22, align 8, !tbaa !15
  %add23 = add i64 %add, %27
  %cmp27 = icmp ne i64 %add, 0
  %28 = zext i1 %cmp27 to i64
  %or30 = or i64 %carry.0163, %28
  %cmp33 = icmp ule i64 %add23, %27
  %29 = zext i1 %cmp33 to i64
  %and36 = and i64 %or30, %29
  store i64 %add23, i64* %arrayidx22, align 8, !tbaa !15
  %inc40 = add nuw nsw i32 %i.1165, 1
  %incdec.ptr = getelementptr inbounds i64, i64* %rp.0164, i64 1
  %exitcond169.not = icmp eq i32 %inc40, %0
  br i1 %exitcond169.not, label %for.end41, label %for.body16, !llvm.loop !22

for.end41:                                        ; preds = %for.body16, %for.end.thread, %for.end
  %carry.0.lcssa = phi i64 [ 0, %for.end ], [ 0, %for.end.thread ], [ %and36, %for.body16 ]
  %call42 = tail call %struct.bignum_st* @bn_wexpand(%struct.bignum_st* noundef %ret, i32 noundef %0) #5
  %cmp43 = icmp eq %struct.bignum_st* %call42, null
  br i1 %cmp43, label %cleanup, label %if.end46

if.end46:                                         ; preds = %for.end41
  %top47 = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %ret, i64 0, i32 1
  store i32 %0, i32* %top47, align 8, !tbaa !11
  %30 = load i32, i32* %neg5, align 8, !tbaa !14
  %neg51 = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %ret, i64 0, i32 3
  store i32 %30, i32* %neg51, align 8, !tbaa !14
  %d52 = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %ret, i64 0, i32 0
  %31 = load i64*, i64** %d52, align 8, !tbaa !12
  %32 = load i64*, i64** %d6, align 8, !tbaa !12
  %idxprom54 = sext i32 %0 to i64
  %arrayidx55 = getelementptr inbounds i64, i64* %32, i64 %idxprom54
  %call56 = tail call i64 @bn_sub_words(i64* noundef %31, i64* noundef nonnull %arrayidx55, i64* noundef %3, i32 noundef %0) #5
  %sub57 = sub i64 %carry.0.lcssa, %call56
  br i1 %cmp8160, label %for.body61.lr.ph, label %cleanup

for.body61.lr.ph:                                 ; preds = %if.end46
  %neg65 = xor i64 %sub57, -1
  %wide.trip.count173 = zext i32 %0 to i64
  %min.iters.check192 = icmp ult i32 %0, 4
  br i1 %min.iters.check192, label %for.body61.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %for.body61.lr.ph
  %scevgep = getelementptr i64, i64* %31, i64 %wide.trip.count173
  %33 = add nsw i64 %idxprom54, %wide.trip.count173
  %scevgep187 = getelementptr i64, i64* %32, i64 %33
  %bound0 = icmp ult i64* %31, %scevgep187
  %bound1 = icmp ult i64* %arrayidx55, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %for.body61.preheader, label %vector.ph193

vector.ph193:                                     ; preds = %vector.memcheck
  %n.vec195 = and i64 %wide.trip.count173, 4294967292
  %broadcast.splatinsert201 = insertelement <2 x i64> poison, i64 %sub57, i64 0
  %broadcast.splat202 = shufflevector <2 x i64> %broadcast.splatinsert201, <2 x i64> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert203 = insertelement <2 x i64> poison, i64 %sub57, i64 0
  %broadcast.splat204 = shufflevector <2 x i64> %broadcast.splatinsert203, <2 x i64> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert207 = insertelement <2 x i64> poison, i64 %neg65, i64 0
  %broadcast.splat208 = shufflevector <2 x i64> %broadcast.splatinsert207, <2 x i64> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert209 = insertelement <2 x i64> poison, i64 %neg65, i64 0
  %broadcast.splat210 = shufflevector <2 x i64> %broadcast.splatinsert209, <2 x i64> poison, <2 x i32> zeroinitializer
  br label %vector.body191

vector.body191:                                   ; preds = %vector.body191, %vector.ph193
  %index198 = phi i64 [ 0, %vector.ph193 ], [ %index.next211, %vector.body191 ]
  %34 = getelementptr inbounds i64, i64* %arrayidx55, i64 %index198
  %35 = bitcast i64* %34 to <2 x i64>*
  %wide.load199 = load <2 x i64>, <2 x i64>* %35, align 8, !tbaa !15, !alias.scope !23
  %36 = getelementptr inbounds i64, i64* %34, i64 2
  %37 = bitcast i64* %36 to <2 x i64>*
  %wide.load200 = load <2 x i64>, <2 x i64>* %37, align 8, !tbaa !15, !alias.scope !23
  %38 = and <2 x i64> %wide.load199, %broadcast.splat202
  %39 = and <2 x i64> %wide.load200, %broadcast.splat204
  %40 = getelementptr inbounds i64, i64* %31, i64 %index198
  %41 = bitcast i64* %40 to <2 x i64>*
  %wide.load205 = load <2 x i64>, <2 x i64>* %41, align 8, !tbaa !15, !alias.scope !26, !noalias !23
  %42 = getelementptr inbounds i64, i64* %40, i64 2
  %43 = bitcast i64* %42 to <2 x i64>*
  %wide.load206 = load <2 x i64>, <2 x i64>* %43, align 8, !tbaa !15, !alias.scope !26, !noalias !23
  %44 = and <2 x i64> %wide.load205, %broadcast.splat208
  %45 = and <2 x i64> %wide.load206, %broadcast.splat210
  %46 = or <2 x i64> %44, %38
  %47 = or <2 x i64> %45, %39
  %48 = bitcast i64* %40 to <2 x i64>*
  store <2 x i64> %46, <2 x i64>* %48, align 8, !tbaa !15, !alias.scope !26, !noalias !23
  %49 = bitcast i64* %42 to <2 x i64>*
  store <2 x i64> %47, <2 x i64>* %49, align 8, !tbaa !15, !alias.scope !26, !noalias !23
  %50 = bitcast i64* %34 to <2 x i64>*
  store <2 x i64> zeroinitializer, <2 x i64>* %50, align 8, !tbaa !15, !alias.scope !23
  %51 = bitcast i64* %36 to <2 x i64>*
  store <2 x i64> zeroinitializer, <2 x i64>* %51, align 8, !tbaa !15, !alias.scope !23
  %index.next211 = add nuw i64 %index198, 4
  %52 = icmp eq i64 %index.next211, %n.vec195
  br i1 %52, label %middle.block189, label %vector.body191, !llvm.loop !28

middle.block189:                                  ; preds = %vector.body191
  %cmp.n197 = icmp eq i64 %n.vec195, %wide.trip.count173
  br i1 %cmp.n197, label %cleanup, label %for.body61.preheader

for.body61.preheader:                             ; preds = %vector.memcheck, %for.body61.lr.ph, %middle.block189
  %indvars.iv170.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %for.body61.lr.ph ], [ %n.vec195, %middle.block189 ]
  %53 = xor i64 %indvars.iv170.ph, -1
  %xtraiter = and i64 %wide.trip.count173, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %for.body61.prol.loopexit, label %for.body61.prol

for.body61.prol:                                  ; preds = %for.body61.preheader
  %arrayidx63.prol = getelementptr inbounds i64, i64* %arrayidx55, i64 %indvars.iv170.ph
  %54 = load i64, i64* %arrayidx63.prol, align 8, !tbaa !15
  %and64.prol = and i64 %54, %sub57
  %arrayidx67.prol = getelementptr inbounds i64, i64* %31, i64 %indvars.iv170.ph
  %55 = load i64, i64* %arrayidx67.prol, align 8, !tbaa !15
  %and68.prol = and i64 %55, %neg65
  %or69.prol = or i64 %and68.prol, %and64.prol
  store i64 %or69.prol, i64* %arrayidx67.prol, align 8, !tbaa !15
  store i64 0, i64* %arrayidx63.prol, align 8, !tbaa !15
  %indvars.iv.next171.prol = or i64 %indvars.iv170.ph, 1
  br label %for.body61.prol.loopexit

for.body61.prol.loopexit:                         ; preds = %for.body61.prol, %for.body61.preheader
  %indvars.iv170.unr = phi i64 [ %indvars.iv170.ph, %for.body61.preheader ], [ %indvars.iv.next171.prol, %for.body61.prol ]
  %56 = sub nsw i64 0, %wide.trip.count173
  %57 = icmp eq i64 %53, %56
  br i1 %57, label %cleanup, label %for.body61

for.body61:                                       ; preds = %for.body61.prol.loopexit, %for.body61
  %indvars.iv170 = phi i64 [ %indvars.iv.next171.1, %for.body61 ], [ %indvars.iv170.unr, %for.body61.prol.loopexit ]
  %arrayidx63 = getelementptr inbounds i64, i64* %arrayidx55, i64 %indvars.iv170
  %58 = load i64, i64* %arrayidx63, align 8, !tbaa !15
  %and64 = and i64 %58, %sub57
  %arrayidx67 = getelementptr inbounds i64, i64* %31, i64 %indvars.iv170
  %59 = load i64, i64* %arrayidx67, align 8, !tbaa !15
  %and68 = and i64 %59, %neg65
  %or69 = or i64 %and68, %and64
  store i64 %or69, i64* %arrayidx67, align 8, !tbaa !15
  store i64 0, i64* %arrayidx63, align 8, !tbaa !15
  %indvars.iv.next171 = add nuw nsw i64 %indvars.iv170, 1
  %arrayidx63.1 = getelementptr inbounds i64, i64* %arrayidx55, i64 %indvars.iv.next171
  %60 = load i64, i64* %arrayidx63.1, align 8, !tbaa !15
  %and64.1 = and i64 %60, %sub57
  %arrayidx67.1 = getelementptr inbounds i64, i64* %31, i64 %indvars.iv.next171
  %61 = load i64, i64* %arrayidx67.1, align 8, !tbaa !15
  %and68.1 = and i64 %61, %neg65
  %or69.1 = or i64 %and68.1, %and64.1
  store i64 %or69.1, i64* %arrayidx67.1, align 8, !tbaa !15
  store i64 0, i64* %arrayidx63.1, align 8, !tbaa !15
  %indvars.iv.next171.1 = add nuw nsw i64 %indvars.iv170, 2
  %exitcond174.not.1 = icmp eq i64 %indvars.iv.next171.1, %wide.trip.count173
  br i1 %exitcond174.not.1, label %cleanup, label %for.body61, !llvm.loop !29

cleanup:                                          ; preds = %for.body61.prol.loopexit, %for.body61, %middle.block189, %if.end46, %for.end41, %if.end, %if.then
  %retval.0 = phi i32 [ 1, %if.then ], [ 0, %if.end ], [ 0, %for.end41 ], [ 1, %if.end46 ], [ 1, %middle.block189 ], [ 1, %for.body61 ], [ 1, %for.body61.prol.loopexit ]
  ret i32 %retval.0
}

declare void @BN_CTX_end(%struct.bignum_ctx* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @BN_from_montgomery(%struct.bignum_st* noundef %ret, %struct.bignum_st* noundef %a, %struct.bn_mont_ctx_st* nocapture noundef readonly %mont, %struct.bignum_ctx* noundef %ctx) local_unnamed_addr #0 {
entry:
  %call = tail call i32 @bn_from_mont_fixed_top(%struct.bignum_st* noundef %ret, %struct.bignum_st* noundef %a, %struct.bn_mont_ctx_st* noundef %mont, %struct.bignum_ctx* noundef %ctx) #4
  tail call void @bn_correct_top(%struct.bignum_st* noundef %ret) #5
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define i32 @bn_from_mont_fixed_top(%struct.bignum_st* noundef %ret, %struct.bignum_st* noundef %a, %struct.bn_mont_ctx_st* nocapture noundef readonly %mont, %struct.bignum_ctx* noundef %ctx) local_unnamed_addr #0 {
entry:
  tail call void @BN_CTX_start(%struct.bignum_ctx* noundef %ctx) #5
  %call = tail call %struct.bignum_st* @BN_CTX_get(%struct.bignum_ctx* noundef %ctx) #5
  %tobool.not = icmp eq %struct.bignum_st* %call, null
  br i1 %tobool.not, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %call1 = tail call %struct.bignum_st* @BN_copy(%struct.bignum_st* noundef nonnull %call, %struct.bignum_st* noundef %a) #5
  %tobool2.not = icmp eq %struct.bignum_st* %call1, null
  br i1 %tobool2.not, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %call3 = tail call fastcc i32 @bn_from_montgomery_word(%struct.bignum_st* noundef %ret, %struct.bignum_st* noundef nonnull %call, %struct.bn_mont_ctx_st* noundef %mont) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %retn.0 = phi i32 [ %call3, %if.then ], [ 0, %land.lhs.true ], [ 0, %entry ]
  tail call void @BN_CTX_end(%struct.bignum_ctx* noundef %ctx) #5
  ret i32 %retn.0
}

declare %struct.bignum_st* @BN_copy(%struct.bignum_st* noundef, %struct.bignum_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @bn_to_mont_fixed_top(%struct.bignum_st* noundef %r, %struct.bignum_st* noundef %a, %struct.bn_mont_ctx_st* noundef %mont, %struct.bignum_ctx* noundef %ctx) local_unnamed_addr #0 {
entry:
  %RR = getelementptr inbounds %struct.bn_mont_ctx_st, %struct.bn_mont_ctx_st* %mont, i64 0, i32 1
  %call = tail call i32 @bn_mul_mont_fixed_top(%struct.bignum_st* noundef %r, %struct.bignum_st* noundef %a, %struct.bignum_st* noundef nonnull %RR, %struct.bn_mont_ctx_st* noundef %mont, %struct.bignum_ctx* noundef %ctx) #4
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define %struct.bn_mont_ctx_st* @BN_MONT_CTX_new() local_unnamed_addr #0 {
entry:
  %call = tail call i8* @CRYPTO_malloc(i64 noundef 104, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 232) #5
  %0 = bitcast i8* %call to %struct.bn_mont_ctx_st*
  %cmp = icmp eq i8* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 233, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.BN_MONT_CTX_new, i64 0, i64 0)) #5
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 3, i32 noundef 786688, i8* noundef null) #5
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @BN_MONT_CTX_init(%struct.bn_mont_ctx_st* noundef nonnull %0) #4
  %flags = getelementptr inbounds i8, i8* %call, i64 96
  %1 = bitcast i8* %flags to i32*
  store i32 1, i32* %1, align 8, !tbaa !30
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi %struct.bn_mont_ctx_st* [ null, %if.then ], [ %0, %if.end ]
  ret %struct.bn_mont_ctx_st* %retval.0
}

declare i8* @CRYPTO_malloc(i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare void @ERR_new() local_unnamed_addr #2

declare void @ERR_set_debug(i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #2

declare void @ERR_set_error(i32 noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define void @BN_MONT_CTX_init(%struct.bn_mont_ctx_st* noundef %ctx) local_unnamed_addr #0 {
entry:
  %ri = getelementptr inbounds %struct.bn_mont_ctx_st, %struct.bn_mont_ctx_st* %ctx, i64 0, i32 0
  store i32 0, i32* %ri, align 8, !tbaa !31
  %RR = getelementptr inbounds %struct.bn_mont_ctx_st, %struct.bn_mont_ctx_st* %ctx, i64 0, i32 1
  tail call void @bn_init(%struct.bignum_st* noundef nonnull %RR) #5
  %N = getelementptr inbounds %struct.bn_mont_ctx_st, %struct.bn_mont_ctx_st* %ctx, i64 0, i32 2
  tail call void @bn_init(%struct.bignum_st* noundef nonnull %N) #5
  %Ni = getelementptr inbounds %struct.bn_mont_ctx_st, %struct.bn_mont_ctx_st* %ctx, i64 0, i32 3
  tail call void @bn_init(%struct.bignum_st* noundef nonnull %Ni) #5
  %arrayidx2 = getelementptr inbounds %struct.bn_mont_ctx_st, %struct.bn_mont_ctx_st* %ctx, i64 0, i32 4, i64 0
  %0 = bitcast i64* %arrayidx2 to <2 x i64>*
  store <2 x i64> zeroinitializer, <2 x i64>* %0, align 8, !tbaa !15
  %flags = getelementptr inbounds %struct.bn_mont_ctx_st, %struct.bn_mont_ctx_st* %ctx, i64 0, i32 5
  store i32 0, i32* %flags, align 8, !tbaa !30
  ret void
}

declare void @bn_init(%struct.bignum_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define void @BN_MONT_CTX_free(%struct.bn_mont_ctx_st* noundef %mont) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.bn_mont_ctx_st* %mont, null
  br i1 %cmp, label %if.end2, label %if.end

if.end:                                           ; preds = %entry
  %RR = getelementptr inbounds %struct.bn_mont_ctx_st, %struct.bn_mont_ctx_st* %mont, i64 0, i32 1
  tail call void @BN_clear_free(%struct.bignum_st* noundef nonnull %RR) #5
  %N = getelementptr inbounds %struct.bn_mont_ctx_st, %struct.bn_mont_ctx_st* %mont, i64 0, i32 2
  tail call void @BN_clear_free(%struct.bignum_st* noundef nonnull %N) #5
  %Ni = getelementptr inbounds %struct.bn_mont_ctx_st, %struct.bn_mont_ctx_st* %mont, i64 0, i32 3
  tail call void @BN_clear_free(%struct.bignum_st* noundef nonnull %Ni) #5
  %flags = getelementptr inbounds %struct.bn_mont_ctx_st, %struct.bn_mont_ctx_st* %mont, i64 0, i32 5
  %0 = load i32, i32* %flags, align 8, !tbaa !30
  %and = and i32 %0, 1
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end2, label %if.then1

if.then1:                                         ; preds = %if.end
  %1 = bitcast %struct.bn_mont_ctx_st* %mont to i8*
  tail call void @CRYPTO_free(i8* noundef nonnull %1, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 260) #5
  br label %if.end2

if.end2:                                          ; preds = %entry, %if.then1, %if.end
  ret void
}

declare void @BN_clear_free(%struct.bignum_st* noundef) local_unnamed_addr #2

declare void @CRYPTO_free(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @BN_MONT_CTX_set(%struct.bn_mont_ctx_st* noundef %mont, %struct.bignum_st* noundef %mod, %struct.bignum_ctx* noundef %ctx) local_unnamed_addr #0 {
entry:
  %tmod = alloca %struct.bignum_st, align 8
  %buf = alloca [2 x i64], align 16
  %call = tail call i32 @BN_is_zero(%struct.bignum_st* noundef %mod) #5
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %cleanup93

if.end:                                           ; preds = %entry
  tail call void @BN_CTX_start(%struct.bignum_ctx* noundef %ctx) #5
  %call1 = tail call %struct.bignum_st* @BN_CTX_get(%struct.bignum_ctx* noundef %ctx) #5
  %cmp = icmp eq %struct.bignum_st* %call1, null
  br i1 %cmp, label %err, label %if.end3

if.end3:                                          ; preds = %if.end
  %RR = getelementptr inbounds %struct.bn_mont_ctx_st, %struct.bn_mont_ctx_st* %mont, i64 0, i32 1
  %N = getelementptr inbounds %struct.bn_mont_ctx_st, %struct.bn_mont_ctx_st* %mont, i64 0, i32 2
  %call4 = tail call %struct.bignum_st* @BN_copy(%struct.bignum_st* noundef nonnull %N, %struct.bignum_st* noundef %mod) #5
  %tobool5.not = icmp eq %struct.bignum_st* %call4, null
  br i1 %tobool5.not, label %err, label %if.end7

if.end7:                                          ; preds = %if.end3
  %call8 = tail call i32 @BN_get_flags(%struct.bignum_st* noundef %mod, i32 noundef 4) #5
  %cmp9.not = icmp eq i32 %call8, 0
  br i1 %cmp9.not, label %if.end12, label %if.then10

if.then10:                                        ; preds = %if.end7
  tail call void @BN_set_flags(%struct.bignum_st* noundef nonnull %N, i32 noundef 4) #5
  br label %if.end12

if.end12:                                         ; preds = %if.then10, %if.end7
  %neg = getelementptr inbounds %struct.bn_mont_ctx_st, %struct.bn_mont_ctx_st* %mont, i64 0, i32 2, i32 3
  store i32 0, i32* %neg, align 8, !tbaa !32
  %0 = bitcast %struct.bignum_st* %tmod to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %0) #6
  %1 = bitcast [2 x i64]* %buf to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %1) #6
  call void @bn_init(%struct.bignum_st* noundef nonnull %tmod) #5
  %arraydecay = getelementptr inbounds [2 x i64], [2 x i64]* %buf, i64 0, i64 0
  %d = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %tmod, i64 0, i32 0
  store i64* %arraydecay, i64** %d, align 8, !tbaa !12
  %dmax = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %tmod, i64 0, i32 2
  store i32 2, i32* %dmax, align 4, !tbaa !33
  %neg14 = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %tmod, i64 0, i32 3
  store i32 0, i32* %neg14, align 8, !tbaa !14
  %call15 = call i32 @BN_get_flags(%struct.bignum_st* noundef %mod, i32 noundef 4) #5
  %cmp16.not = icmp eq i32 %call15, 0
  br i1 %cmp16.not, label %if.end18, label %if.then17

if.then17:                                        ; preds = %if.end12
  call void @BN_set_flags(%struct.bignum_st* noundef nonnull %tmod, i32 noundef 4) #5
  br label %if.end18

if.end18:                                         ; preds = %if.then17, %if.end12
  %call19 = call i32 @BN_num_bits(%struct.bignum_st* noundef %mod) #5
  %add = add nsw i32 %call19, 63
  %div = sdiv i32 %add, 64
  %mul = shl nsw i32 %div, 6
  %ri = getelementptr inbounds %struct.bn_mont_ctx_st, %struct.bn_mont_ctx_st* %mont, i64 0, i32 0
  store i32 %mul, i32* %ri, align 8, !tbaa !31
  call void @BN_zero_ex(%struct.bignum_st* noundef nonnull %RR) #5
  %call20 = call i32 @BN_set_bit(%struct.bignum_st* noundef nonnull %RR, i32 noundef 64) #5
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %cleanup.thread, label %if.end23

if.end23:                                         ; preds = %if.end18
  %d24 = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %mod, i64 0, i32 0
  %2 = load i64*, i64** %d24, align 8, !tbaa !12
  %3 = load i64, i64* %2, align 8, !tbaa !15
  store i64 %3, i64* %arraydecay, align 16, !tbaa !15
  %arrayidx26 = getelementptr inbounds [2 x i64], [2 x i64]* %buf, i64 0, i64 1
  store i64 0, i64* %arrayidx26, align 8, !tbaa !15
  %cmp28.not = icmp ne i64 %3, 0
  %cond = zext i1 %cmp28.not to i32
  %top = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %tmod, i64 0, i32 1
  store i32 %cond, i32* %top, align 8, !tbaa !11
  %call29 = call i32 @BN_is_one(%struct.bignum_st* noundef nonnull %tmod) #5
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %if.else, label %if.then31

if.then31:                                        ; preds = %if.end23
  call void @BN_zero_ex(%struct.bignum_st* noundef nonnull %call1) #5
  br label %if.end36

if.else:                                          ; preds = %if.end23
  %call32 = call %struct.bignum_st* @BN_mod_inverse(%struct.bignum_st* noundef nonnull %call1, %struct.bignum_st* noundef nonnull %RR, %struct.bignum_st* noundef nonnull %tmod, %struct.bignum_ctx* noundef %ctx) #5
  %cmp33 = icmp eq %struct.bignum_st* %call32, null
  br i1 %cmp33, label %cleanup.thread, label %if.end36

if.end36:                                         ; preds = %if.else, %if.then31
  %call37 = call i32 @BN_lshift(%struct.bignum_st* noundef nonnull %call1, %struct.bignum_st* noundef nonnull %call1, i32 noundef 64) #5
  %tobool38.not = icmp eq i32 %call37, 0
  br i1 %tobool38.not, label %cleanup.thread, label %if.end40

if.end40:                                         ; preds = %if.end36
  %call41 = call i32 @BN_is_zero(%struct.bignum_st* noundef nonnull %call1) #5
  %tobool42.not = icmp eq i32 %call41, 0
  br i1 %tobool42.not, label %if.then43, label %if.else48

if.then43:                                        ; preds = %if.end40
  %call44 = call i32 @BN_sub_word(%struct.bignum_st* noundef nonnull %call1, i64 noundef 1) #5
  %tobool45.not = icmp eq i32 %call44, 0
  br i1 %tobool45.not, label %cleanup.thread, label %if.end53

if.else48:                                        ; preds = %if.end40
  %call49 = call i32 @BN_set_word(%struct.bignum_st* noundef nonnull %call1, i64 noundef -1) #5
  %tobool50.not = icmp eq i32 %call49, 0
  br i1 %tobool50.not, label %cleanup.thread, label %if.end53

if.end53:                                         ; preds = %if.else48, %if.then43
  %call54 = call i32 @BN_div(%struct.bignum_st* noundef nonnull %call1, %struct.bignum_st* noundef null, %struct.bignum_st* noundef nonnull %call1, %struct.bignum_st* noundef nonnull %tmod, %struct.bignum_ctx* noundef %ctx) #5
  %tobool55.not = icmp eq i32 %call54, 0
  br i1 %tobool55.not, label %cleanup.thread, label %if.end57

if.end57:                                         ; preds = %if.end53
  %top58 = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %call1, i64 0, i32 1
  %4 = load i32, i32* %top58, align 8, !tbaa !11
  %cmp59 = icmp sgt i32 %4, 0
  br i1 %cmp59, label %cond.true, label %cleanup.cont

cond.true:                                        ; preds = %if.end57
  %d60 = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %call1, i64 0, i32 0
  %5 = load i64*, i64** %d60, align 8, !tbaa !12
  %6 = load i64, i64* %5, align 8, !tbaa !15
  br label %cleanup.cont

cleanup.thread:                                   ; preds = %if.end18, %if.else, %if.end36, %if.then43, %if.else48, %if.end53
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %1) #6
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %0) #6
  br label %err

cleanup.cont:                                     ; preds = %if.end57, %cond.true
  %cond62 = phi i64 [ %6, %cond.true ], [ 0, %if.end57 ]
  %arrayidx63 = getelementptr inbounds %struct.bn_mont_ctx_st, %struct.bn_mont_ctx_st* %mont, i64 0, i32 4, i64 0
  store i64 %cond62, i64* %arrayidx63, align 8, !tbaa !15
  %arrayidx65 = getelementptr inbounds %struct.bn_mont_ctx_st, %struct.bn_mont_ctx_st* %mont, i64 0, i32 4, i64 1
  store i64 0, i64* %arrayidx65, align 8, !tbaa !15
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %1) #6
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %0) #6
  call void @BN_zero_ex(%struct.bignum_st* noundef nonnull %RR) #5
  %7 = load i32, i32* %ri, align 8, !tbaa !31
  %mul70 = shl nsw i32 %7, 1
  %call71 = call i32 @BN_set_bit(%struct.bignum_st* noundef nonnull %RR, i32 noundef %mul70) #5
  %tobool72.not = icmp eq i32 %call71, 0
  br i1 %tobool72.not, label %err, label %if.end74

if.end74:                                         ; preds = %cleanup.cont
  %call78 = call i32 @BN_div(%struct.bignum_st* noundef null, %struct.bignum_st* noundef nonnull %RR, %struct.bignum_st* noundef nonnull %RR, %struct.bignum_st* noundef nonnull %N, %struct.bignum_ctx* noundef %ctx) #5
  %tobool79.not = icmp eq i32 %call78, 0
  br i1 %tobool79.not, label %err, label %if.end81

if.end81:                                         ; preds = %if.end74
  %top83 = getelementptr inbounds %struct.bn_mont_ctx_st, %struct.bn_mont_ctx_st* %mont, i64 0, i32 1, i32 1
  %8 = load i32, i32* %top83, align 8, !tbaa !34
  %top85 = getelementptr inbounds %struct.bn_mont_ctx_st, %struct.bn_mont_ctx_st* %mont, i64 0, i32 2, i32 1
  %9 = load i32, i32* %top85, align 8, !tbaa !4
  %cmp86147 = icmp slt i32 %8, %9
  br i1 %cmp86147, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %if.end81
  %d88 = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %RR, i64 0, i32 0
  %10 = load i64*, i64** %d88, align 8, !tbaa !35
  %11 = sext i32 %8 to i64
  %wide.trip.count = sext i32 %9 to i64
  %12 = sub nsw i64 %wide.trip.count, %11
  %min.iters.check = icmp ult i64 %12, 4
  br i1 %min.iters.check, label %for.body.preheader, label %vector.ph

vector.ph:                                        ; preds = %for.body.lr.ph
  %n.vec = and i64 %12, -4
  %ind.end = add nsw i64 %n.vec, %11
  %13 = add nsw i64 %n.vec, -4
  %14 = lshr exact i64 %13, 2
  %15 = add nuw nsw i64 %14, 1
  %xtraiter = and i64 %15, 3
  %16 = icmp ult i64 %13, 12
  br i1 %16, label %middle.block.unr-lcssa, label %vector.ph.new

vector.ph.new:                                    ; preds = %vector.ph
  %unroll_iter = and i64 %15, 9223372036854775804
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph.new
  %index = phi i64 [ 0, %vector.ph.new ], [ %index.next.3, %vector.body ]
  %niter = phi i64 [ 0, %vector.ph.new ], [ %niter.next.3, %vector.body ]
  %offset.idx = add i64 %index, %11
  %17 = getelementptr inbounds i64, i64* %10, i64 %offset.idx
  %18 = bitcast i64* %17 to <2 x i64>*
  store <2 x i64> zeroinitializer, <2 x i64>* %18, align 8, !tbaa !15
  %19 = getelementptr inbounds i64, i64* %17, i64 2
  %20 = bitcast i64* %19 to <2 x i64>*
  store <2 x i64> zeroinitializer, <2 x i64>* %20, align 8, !tbaa !15
  %index.next = or i64 %index, 4
  %offset.idx.1 = add i64 %index.next, %11
  %21 = getelementptr inbounds i64, i64* %10, i64 %offset.idx.1
  %22 = bitcast i64* %21 to <2 x i64>*
  store <2 x i64> zeroinitializer, <2 x i64>* %22, align 8, !tbaa !15
  %23 = getelementptr inbounds i64, i64* %21, i64 2
  %24 = bitcast i64* %23 to <2 x i64>*
  store <2 x i64> zeroinitializer, <2 x i64>* %24, align 8, !tbaa !15
  %index.next.1 = or i64 %index, 8
  %offset.idx.2 = add i64 %index.next.1, %11
  %25 = getelementptr inbounds i64, i64* %10, i64 %offset.idx.2
  %26 = bitcast i64* %25 to <2 x i64>*
  store <2 x i64> zeroinitializer, <2 x i64>* %26, align 8, !tbaa !15
  %27 = getelementptr inbounds i64, i64* %25, i64 2
  %28 = bitcast i64* %27 to <2 x i64>*
  store <2 x i64> zeroinitializer, <2 x i64>* %28, align 8, !tbaa !15
  %index.next.2 = or i64 %index, 12
  %offset.idx.3 = add i64 %index.next.2, %11
  %29 = getelementptr inbounds i64, i64* %10, i64 %offset.idx.3
  %30 = bitcast i64* %29 to <2 x i64>*
  store <2 x i64> zeroinitializer, <2 x i64>* %30, align 8, !tbaa !15
  %31 = getelementptr inbounds i64, i64* %29, i64 2
  %32 = bitcast i64* %31 to <2 x i64>*
  store <2 x i64> zeroinitializer, <2 x i64>* %32, align 8, !tbaa !15
  %index.next.3 = add nuw i64 %index, 16
  %niter.next.3 = add nuw i64 %niter, 4
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %middle.block.unr-lcssa, label %vector.body, !llvm.loop !36

middle.block.unr-lcssa:                           ; preds = %vector.body, %vector.ph
  %index.unr = phi i64 [ 0, %vector.ph ], [ %index.next.3, %vector.body ]
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %middle.block, label %vector.body.epil

vector.body.epil:                                 ; preds = %middle.block.unr-lcssa, %vector.body.epil
  %index.epil = phi i64 [ %index.next.epil, %vector.body.epil ], [ %index.unr, %middle.block.unr-lcssa ]
  %epil.iter = phi i64 [ %epil.iter.next, %vector.body.epil ], [ 0, %middle.block.unr-lcssa ]
  %offset.idx.epil = add i64 %index.epil, %11
  %33 = getelementptr inbounds i64, i64* %10, i64 %offset.idx.epil
  %34 = bitcast i64* %33 to <2 x i64>*
  store <2 x i64> zeroinitializer, <2 x i64>* %34, align 8, !tbaa !15
  %35 = getelementptr inbounds i64, i64* %33, i64 2
  %36 = bitcast i64* %35 to <2 x i64>*
  store <2 x i64> zeroinitializer, <2 x i64>* %36, align 8, !tbaa !15
  %index.next.epil = add nuw i64 %index.epil, 4
  %epil.iter.next = add i64 %epil.iter, 1
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %middle.block, label %vector.body.epil, !llvm.loop !37

middle.block:                                     ; preds = %vector.body.epil, %middle.block.unr-lcssa
  %cmp.n = icmp eq i64 %12, %n.vec
  br i1 %cmp.n, label %for.end, label %for.body.preheader

for.body.preheader:                               ; preds = %for.body.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ %11, %for.body.lr.ph ], [ %ind.end, %middle.block ]
  br label %for.body

for.body:                                         ; preds = %for.body.preheader, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ %indvars.iv.ph, %for.body.preheader ]
  %arrayidx89 = getelementptr inbounds i64, i64* %10, i64 %indvars.iv
  store i64 0, i64* %arrayidx89, align 8, !tbaa !15
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %for.end, label %for.body, !llvm.loop !39

for.end:                                          ; preds = %for.body, %middle.block, %if.end81
  store i32 %9, i32* %top83, align 8, !tbaa !34
  br label %err

err:                                              ; preds = %cleanup.thread, %if.end74, %cleanup.cont, %if.end3, %if.end, %for.end
  %ret.0 = phi i32 [ 0, %if.end ], [ 1, %for.end ], [ 0, %if.end74 ], [ 0, %cleanup.cont ], [ 0, %if.end3 ], [ 0, %cleanup.thread ]
  call void @BN_CTX_end(%struct.bignum_ctx* noundef %ctx) #5
  br label %cleanup93

cleanup93:                                        ; preds = %entry, %err
  %retval.0 = phi i32 [ %ret.0, %err ], [ 0, %entry ]
  ret i32 %retval.0
}

declare i32 @BN_is_zero(%struct.bignum_st* noundef) local_unnamed_addr #2

declare i32 @BN_get_flags(%struct.bignum_st* noundef, i32 noundef) local_unnamed_addr #2

declare void @BN_set_flags(%struct.bignum_st* noundef, i32 noundef) local_unnamed_addr #2

declare i32 @BN_num_bits(%struct.bignum_st* noundef) local_unnamed_addr #2

declare void @BN_zero_ex(%struct.bignum_st* noundef) local_unnamed_addr #2

declare i32 @BN_set_bit(%struct.bignum_st* noundef, i32 noundef) local_unnamed_addr #2

declare i32 @BN_is_one(%struct.bignum_st* noundef) local_unnamed_addr #2

declare %struct.bignum_st* @BN_mod_inverse(%struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_ctx* noundef) local_unnamed_addr #2

declare i32 @BN_lshift(%struct.bignum_st* noundef, %struct.bignum_st* noundef, i32 noundef) local_unnamed_addr #2

declare i32 @BN_sub_word(%struct.bignum_st* noundef, i64 noundef) local_unnamed_addr #2

declare i32 @BN_set_word(%struct.bignum_st* noundef, i64 noundef) local_unnamed_addr #2

declare i32 @BN_div(%struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_ctx* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define %struct.bn_mont_ctx_st* @BN_MONT_CTX_copy(%struct.bn_mont_ctx_st* noundef %to, %struct.bn_mont_ctx_st* noundef %from) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.bn_mont_ctx_st* %to, %from
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %RR = getelementptr inbounds %struct.bn_mont_ctx_st, %struct.bn_mont_ctx_st* %to, i64 0, i32 1
  %RR1 = getelementptr inbounds %struct.bn_mont_ctx_st, %struct.bn_mont_ctx_st* %from, i64 0, i32 1
  %call = tail call %struct.bignum_st* @BN_copy(%struct.bignum_st* noundef nonnull %RR, %struct.bignum_st* noundef nonnull %RR1) #5
  %tobool.not = icmp eq %struct.bignum_st* %call, null
  br i1 %tobool.not, label %return, label %if.end3

if.end3:                                          ; preds = %if.end
  %N = getelementptr inbounds %struct.bn_mont_ctx_st, %struct.bn_mont_ctx_st* %to, i64 0, i32 2
  %N4 = getelementptr inbounds %struct.bn_mont_ctx_st, %struct.bn_mont_ctx_st* %from, i64 0, i32 2
  %call5 = tail call %struct.bignum_st* @BN_copy(%struct.bignum_st* noundef nonnull %N, %struct.bignum_st* noundef nonnull %N4) #5
  %tobool6.not = icmp eq %struct.bignum_st* %call5, null
  br i1 %tobool6.not, label %return, label %if.end8

if.end8:                                          ; preds = %if.end3
  %Ni = getelementptr inbounds %struct.bn_mont_ctx_st, %struct.bn_mont_ctx_st* %to, i64 0, i32 3
  %Ni9 = getelementptr inbounds %struct.bn_mont_ctx_st, %struct.bn_mont_ctx_st* %from, i64 0, i32 3
  %call10 = tail call %struct.bignum_st* @BN_copy(%struct.bignum_st* noundef nonnull %Ni, %struct.bignum_st* noundef nonnull %Ni9) #5
  %tobool11.not = icmp eq %struct.bignum_st* %call10, null
  br i1 %tobool11.not, label %return, label %if.end13

if.end13:                                         ; preds = %if.end8
  %ri = getelementptr inbounds %struct.bn_mont_ctx_st, %struct.bn_mont_ctx_st* %from, i64 0, i32 0
  %0 = load i32, i32* %ri, align 8, !tbaa !31
  %ri14 = getelementptr inbounds %struct.bn_mont_ctx_st, %struct.bn_mont_ctx_st* %to, i64 0, i32 0
  store i32 %0, i32* %ri14, align 8, !tbaa !31
  %arrayidx = getelementptr inbounds %struct.bn_mont_ctx_st, %struct.bn_mont_ctx_st* %from, i64 0, i32 4, i64 0
  %1 = load i64, i64* %arrayidx, align 8, !tbaa !15
  %arrayidx16 = getelementptr inbounds %struct.bn_mont_ctx_st, %struct.bn_mont_ctx_st* %to, i64 0, i32 4, i64 0
  store i64 %1, i64* %arrayidx16, align 8, !tbaa !15
  %arrayidx18 = getelementptr inbounds %struct.bn_mont_ctx_st, %struct.bn_mont_ctx_st* %from, i64 0, i32 4, i64 1
  %2 = load i64, i64* %arrayidx18, align 8, !tbaa !15
  %arrayidx20 = getelementptr inbounds %struct.bn_mont_ctx_st, %struct.bn_mont_ctx_st* %to, i64 0, i32 4, i64 1
  store i64 %2, i64* %arrayidx20, align 8, !tbaa !15
  br label %return

return:                                           ; preds = %if.end8, %if.end3, %if.end, %entry, %if.end13
  %retval.0 = phi %struct.bn_mont_ctx_st* [ %to, %if.end13 ], [ %to, %entry ], [ null, %if.end ], [ null, %if.end3 ], [ null, %if.end8 ]
  ret %struct.bn_mont_ctx_st* %retval.0
}

; Function Attrs: noinline nounwind uwtable
define %struct.bn_mont_ctx_st* @BN_MONT_CTX_set_locked(%struct.bn_mont_ctx_st** nocapture noundef %pmont, i8* noundef %lock, %struct.bignum_st* noundef %mod, %struct.bignum_ctx* noundef %ctx) local_unnamed_addr #0 {
entry:
  %call = tail call i32 @CRYPTO_THREAD_read_lock(i8* noundef %lock) #5
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %0 = load %struct.bn_mont_ctx_st*, %struct.bn_mont_ctx_st** %pmont, align 8, !tbaa !40
  %call1 = tail call i32 @CRYPTO_THREAD_unlock(i8* noundef %lock) #5
  %tobool2.not = icmp eq %struct.bn_mont_ctx_st* %0, null
  br i1 %tobool2.not, label %if.end4, label %cleanup

if.end4:                                          ; preds = %if.end
  %call5 = tail call %struct.bn_mont_ctx_st* @BN_MONT_CTX_new() #4
  %cmp = icmp eq %struct.bn_mont_ctx_st* %call5, null
  br i1 %cmp, label %cleanup, label %if.end7

if.end7:                                          ; preds = %if.end4
  %call8 = tail call i32 @BN_MONT_CTX_set(%struct.bn_mont_ctx_st* noundef nonnull %call5, %struct.bignum_st* noundef %mod, %struct.bignum_ctx* noundef %ctx) #4
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.then10, label %if.end11

if.then10:                                        ; preds = %if.end7
  tail call void @BN_MONT_CTX_free(%struct.bn_mont_ctx_st* noundef nonnull %call5) #4
  br label %cleanup

if.end11:                                         ; preds = %if.end7
  %call12 = tail call i32 @CRYPTO_THREAD_write_lock(i8* noundef %lock) #5
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.then14, label %if.end15

if.then14:                                        ; preds = %if.end11
  tail call void @BN_MONT_CTX_free(%struct.bn_mont_ctx_st* noundef nonnull %call5) #4
  br label %cleanup

if.end15:                                         ; preds = %if.end11
  %1 = load %struct.bn_mont_ctx_st*, %struct.bn_mont_ctx_st** %pmont, align 8, !tbaa !40
  %tobool16.not = icmp eq %struct.bn_mont_ctx_st* %1, null
  br i1 %tobool16.not, label %if.else, label %if.then17

if.then17:                                        ; preds = %if.end15
  tail call void @BN_MONT_CTX_free(%struct.bn_mont_ctx_st* noundef nonnull %call5) #4
  %2 = load %struct.bn_mont_ctx_st*, %struct.bn_mont_ctx_st** %pmont, align 8, !tbaa !40
  br label %if.end18

if.else:                                          ; preds = %if.end15
  store %struct.bn_mont_ctx_st* %call5, %struct.bn_mont_ctx_st** %pmont, align 8, !tbaa !40
  br label %if.end18

if.end18:                                         ; preds = %if.else, %if.then17
  %ret.0 = phi %struct.bn_mont_ctx_st* [ %2, %if.then17 ], [ %call5, %if.else ]
  %call19 = tail call i32 @CRYPTO_THREAD_unlock(i8* noundef %lock) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.end, %entry, %if.end18, %if.then14, %if.then10
  %retval.0 = phi %struct.bn_mont_ctx_st* [ %ret.0, %if.end18 ], [ null, %if.then14 ], [ null, %if.then10 ], [ null, %entry ], [ %0, %if.end ], [ null, %if.end4 ]
  ret %struct.bn_mont_ctx_st* %retval.0
}

declare i32 @CRYPTO_THREAD_read_lock(i8* noundef) local_unnamed_addr #2

declare i32 @CRYPTO_THREAD_unlock(i8* noundef) local_unnamed_addr #2

declare i32 @CRYPTO_THREAD_write_lock(i8* noundef) local_unnamed_addr #2

declare i64 @bn_mul_add_words(i64* noundef, i64* noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

declare i64 @bn_sub_words(i64* noundef, i64* noundef, i64* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #3

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nobuiltin "no-builtins" }
attributes #5 = { nobuiltin nounwind "no-builtins" }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{!"clang version 14.0.0"}
!4 = !{!5, !6, i64 40}
!5 = !{!"bn_mont_ctx_st", !6, i64 0, !9, i64 8, !9, i64 32, !9, i64 56, !7, i64 80, !6, i64 96}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!"bignum_st", !10, i64 0, !6, i64 8, !6, i64 12, !6, i64 16, !6, i64 20}
!10 = !{!"any pointer", !7, i64 0}
!11 = !{!9, !6, i64 8}
!12 = !{!9, !10, i64 0}
!13 = !{!5, !10, i64 32}
!14 = !{!9, !6, i64 16}
!15 = !{!16, !16, i64 0}
!16 = !{!"long", !7, i64 0}
!17 = distinct !{!17, !18, !19}
!18 = !{!"llvm.loop.mustprogress"}
!19 = !{!"llvm.loop.isvectorized", i32 1}
!20 = distinct !{!20, !18, !21, !19}
!21 = !{!"llvm.loop.unroll.runtime.disable"}
!22 = distinct !{!22, !18}
!23 = !{!24}
!24 = distinct !{!24, !25}
!25 = distinct !{!25, !"LVerDomain"}
!26 = !{!27}
!27 = distinct !{!27, !25}
!28 = distinct !{!28, !18, !19}
!29 = distinct !{!29, !18, !19}
!30 = !{!5, !6, i64 96}
!31 = !{!5, !6, i64 0}
!32 = !{!5, !6, i64 48}
!33 = !{!9, !6, i64 12}
!34 = !{!5, !6, i64 16}
!35 = !{!5, !10, i64 8}
!36 = distinct !{!36, !18, !19}
!37 = distinct !{!37, !38}
!38 = !{!"llvm.loop.unroll.disable"}
!39 = distinct !{!39, !18, !21, !19}
!40 = !{!10, !10, i64 0}
