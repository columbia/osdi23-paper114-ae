; ModuleID = 'crypto/bn/bn_intern.c'
source_filename = "crypto/bn/bn_intern.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bignum_st = type { i64*, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [22 x i8] c"crypto/bn/bn_intern.c\00", align 1
@__func__.bn_compute_wNAF = private unnamed_addr constant [16 x i8] c"bn_compute_wNAF\00", align 1
@__func__.bn_set_words = private unnamed_addr constant [13 x i8] c"bn_set_words\00", align 1

; Function Attrs: noinline nounwind uwtable
define i8* @bn_compute_wNAF(%struct.bignum_st* noundef %scalar, i32 noundef %w, i64* nocapture noundef writeonly %ret_len) local_unnamed_addr #0 {
entry:
  %call = tail call i32 @BN_is_zero(%struct.bignum_st* noundef %scalar) #5
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end3, label %if.then

if.then:                                          ; preds = %entry
  %call1 = tail call i8* @CRYPTO_malloc(i64 noundef 1, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 31) #5
  %cmp = icmp eq i8* %call1, null
  br i1 %cmp, label %err, label %if.end

if.end:                                           ; preds = %if.then
  store i8 0, i8* %call1, align 1, !tbaa !4
  store i64 1, i64* %ret_len, align 8, !tbaa !7
  br label %cleanup91

if.end3:                                          ; preds = %entry
  %0 = add i32 %w, -8
  %1 = icmp ult i32 %0, -7
  br i1 %1, label %err, label %if.end7

if.end7:                                          ; preds = %if.end3
  %shl = shl nuw nsw i32 1, %w
  %shl8 = shl nuw nsw i32 %shl, 1
  %sub = add nsw i32 %shl8, -1
  %call9 = tail call i32 @BN_is_negative(%struct.bignum_st* noundef %scalar) #5
  %tobool10.not = icmp eq i32 %call9, 0
  %d = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %scalar, i64 0, i32 0
  %2 = load i64*, i64** %d, align 8, !tbaa !9
  %cmp13 = icmp eq i64* %2, null
  br i1 %cmp13, label %err, label %lor.lhs.false14

lor.lhs.false14:                                  ; preds = %if.end7
  %top = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %scalar, i64 0, i32 1
  %3 = load i32, i32* %top, align 8, !tbaa !13
  %cmp15 = icmp eq i32 %3, 0
  br i1 %cmp15, label %err, label %if.end17

if.end17:                                         ; preds = %lor.lhs.false14
  %call18 = tail call i32 @BN_num_bits(%struct.bignum_st* noundef nonnull %scalar) #5
  %conv = sext i32 %call18 to i64
  %add = add nsw i64 %conv, 1
  %call19 = tail call i8* @CRYPTO_malloc(i64 noundef %add, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 60) #5
  %cmp20 = icmp eq i8* %call19, null
  br i1 %cmp20, label %err, label %if.end23

if.end23:                                         ; preds = %if.end17
  %4 = load i64*, i64** %d, align 8, !tbaa !9
  %5 = load i64, i64* %4, align 8, !tbaa !7
  %6 = trunc i64 %5 to i32
  %conv27 = and i32 %sub, %6
  %conv42175 = zext i32 %w to i64
  %shr176 = lshr i32 %sub, 1
  %sub51 = sub nsw i32 0, %shl
  br label %while.cond

while.cond:                                       ; preds = %if.end72, %if.end23
  %window_val.0 = phi i32 [ %conv27, %if.end23 ], [ %add81, %if.end72 ]
  %j.0 = phi i64 [ 0, %if.end23 ], [ %inc, %if.end72 ]
  %cmp28.not = icmp eq i32 %window_val.0, 0
  br i1 %cmp28.not, label %lor.rhs, label %while.body

lor.rhs:                                          ; preds = %while.cond
  %add31 = add i64 %j.0, 1
  %add32 = add i64 %add31, %conv42175
  %cmp33 = icmp ult i64 %add32, %conv
  br i1 %cmp33, label %if.end72, label %while.end

while.body:                                       ; preds = %while.cond
  %and35 = and i32 %window_val.0, 1
  %tobool36.not = icmp eq i32 %and35, 0
  br i1 %tobool36.not, label %if.end72, label %if.then37

if.then37:                                        ; preds = %while.body
  %and38 = and i32 %window_val.0, %shl
  %tobool39.not = icmp eq i32 %and38, 0
  br i1 %tobool39.not, label %if.end50, label %if.then40

if.then40:                                        ; preds = %if.then37
  %sub41 = sub nsw i32 %window_val.0, %shl8
  %add43 = add i64 %j.0, 1
  %add44 = add i64 %add43, %conv42175
  %cmp45.not = icmp ult i64 %add44, %conv
  %and48 = and i32 %window_val.0, %shr176
  %spec.select = select i1 %cmp45.not, i32 %sub41, i32 %and48
  %.pre = and i32 %spec.select, 1
  br label %if.end50

if.end50:                                         ; preds = %if.then40, %if.then37
  %and58.pre-phi = phi i32 [ %.pre, %if.then40 ], [ 1, %if.then37 ]
  %digit.0 = phi i32 [ %spec.select, %if.then40 ], [ %window_val.0, %if.then37 ]
  %cmp52.not = icmp sle i32 %digit.0, %sub51
  %cmp55.not = icmp sge i32 %digit.0, %shl
  %or.cond.not = or i1 %cmp52.not, %cmp55.not
  %tobool59.not = icmp eq i32 %and58.pre-phi, 0
  %or.cond160 = or i1 %or.cond.not, %tobool59.not
  br i1 %or.cond160, label %err, label %if.end61

if.end61:                                         ; preds = %if.end50
  %sub62 = sub nsw i32 %window_val.0, %digit.0
  %cmp63.not = icmp eq i32 %sub62, 0
  br i1 %cmp63.not, label %if.end72, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end61
  %cmp65.not = icmp eq i32 %sub62, %shl8
  %cmp68.not = icmp eq i32 %sub62, %shl
  %or.cond161 = or i1 %cmp65.not, %cmp68.not
  br i1 %or.cond161, label %if.end72, label %err

if.end72:                                         ; preds = %lor.rhs, %if.end61, %land.lhs.true, %while.body
  %window_val.1 = phi i32 [ %sub62, %land.lhs.true ], [ 0, %if.end61 ], [ %window_val.0, %while.body ], [ 0, %lor.rhs ]
  %digit.1 = phi i32 [ %digit.0, %land.lhs.true ], [ %digit.0, %if.end61 ], [ 0, %while.body ], [ 0, %lor.rhs ]
  %7 = sub nsw i32 0, %digit.1
  %8 = select i1 %tobool10.not, i32 %digit.1, i32 %7
  %conv73 = trunc i32 %8 to i8
  %inc = add i64 %j.0, 1
  %arrayidx74 = getelementptr inbounds i8, i8* %call19, i64 %j.0
  store i8 %conv73, i8* %arrayidx74, align 1, !tbaa !4
  %shr75 = ashr i32 %window_val.1, 1
  %9 = trunc i64 %inc to i32
  %conv78 = add i32 %9, %w
  %call79 = tail call i32 @BN_is_bit_set(%struct.bignum_st* noundef %scalar, i32 noundef %conv78) #5
  %mul80 = shl i32 %call79, %w
  %add81 = add nsw i32 %mul80, %shr75
  %cmp82 = icmp sgt i32 %add81, %shl8
  br i1 %cmp82, label %err, label %while.cond

while.end:                                        ; preds = %lor.rhs
  %cmp87 = icmp ugt i64 %j.0, %add
  br i1 %cmp87, label %err, label %if.end90

if.end90:                                         ; preds = %while.end
  store i64 %j.0, i64* %ret_len, align 8, !tbaa !7
  br label %cleanup91

err:                                              ; preds = %if.end72, %land.lhs.true, %if.end50, %while.end, %if.end17, %if.end7, %lor.lhs.false14, %if.end3, %if.then
  %.sink180 = phi i32 [ 33, %if.then ], [ 43, %if.end3 ], [ 55, %lor.lhs.false14 ], [ 55, %if.end7 ], [ 66, %if.end17 ], [ 130, %while.end ], [ 101, %if.end50 ], [ 113, %land.lhs.true ], [ 124, %if.end72 ]
  %.sink = phi i32 [ 786688, %if.then ], [ 786691, %if.end3 ], [ 786691, %lor.lhs.false14 ], [ 786691, %if.end7 ], [ 786688, %if.end17 ], [ 786691, %while.end ], [ 786691, %if.end50 ], [ 786691, %land.lhs.true ], [ 786691, %if.end72 ]
  %r.0 = phi i8* [ null, %if.then ], [ null, %if.end3 ], [ null, %lor.lhs.false14 ], [ null, %if.end7 ], [ null, %if.end17 ], [ %call19, %while.end ], [ %call19, %if.end50 ], [ %call19, %land.lhs.true ], [ %call19, %if.end72 ]
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef %.sink180, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.bn_compute_wNAF, i64 0, i64 0)) #5
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 3, i32 noundef %.sink, i8* noundef null) #5
  tail call void @CRYPTO_free(i8* noundef %r.0, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 137) #5
  br label %cleanup91

cleanup91:                                        ; preds = %err, %if.end90, %if.end
  %retval.0 = phi i8* [ null, %err ], [ %call1, %if.end ], [ %call19, %if.end90 ]
  ret i8* %retval.0
}

declare i32 @BN_is_zero(%struct.bignum_st* noundef) local_unnamed_addr #1

declare i8* @CRYPTO_malloc(i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

declare void @ERR_new() local_unnamed_addr #1

declare void @ERR_set_debug(i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #1

declare void @ERR_set_error(i32 noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #1

declare i32 @BN_is_negative(%struct.bignum_st* noundef) local_unnamed_addr #1

declare i32 @BN_num_bits(%struct.bignum_st* noundef) local_unnamed_addr #1

declare i32 @BN_is_bit_set(%struct.bignum_st* noundef, i32 noundef) local_unnamed_addr #1

declare void @CRYPTO_free(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define i32 @bn_get_top(%struct.bignum_st* nocapture noundef readonly %a) local_unnamed_addr #2 {
entry:
  %top = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %a, i64 0, i32 1
  %0 = load i32, i32* %top, align 8, !tbaa !13
  ret i32 %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define i32 @bn_get_dmax(%struct.bignum_st* nocapture noundef readonly %a) local_unnamed_addr #2 {
entry:
  %dmax = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %a, i64 0, i32 2
  %0 = load i32, i32* %dmax, align 4, !tbaa !14
  ret i32 %0
}

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define void @bn_set_all_zero(%struct.bignum_st* nocapture noundef readonly %a) local_unnamed_addr #3 {
entry:
  %top = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %a, i64 0, i32 1
  %0 = load i32, i32* %top, align 8, !tbaa !13
  %dmax = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %a, i64 0, i32 2
  %1 = load i32, i32* %dmax, align 4, !tbaa !14
  %cmp6 = icmp slt i32 %0, %1
  br i1 %cmp6, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %d = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %a, i64 0, i32 0
  %2 = load i64*, i64** %d, align 8, !tbaa !9
  %3 = sext i32 %0 to i64
  %wide.trip.count = sext i32 %1 to i64
  %4 = sub nsw i64 %wide.trip.count, %3
  %min.iters.check = icmp ult i64 %4, 4
  br i1 %min.iters.check, label %for.body.preheader, label %vector.ph

vector.ph:                                        ; preds = %for.body.lr.ph
  %n.vec = and i64 %4, -4
  %ind.end = add nsw i64 %n.vec, %3
  %5 = add nsw i64 %n.vec, -4
  %6 = lshr exact i64 %5, 2
  %7 = add nuw nsw i64 %6, 1
  %xtraiter = and i64 %7, 3
  %8 = icmp ult i64 %5, 12
  br i1 %8, label %middle.block.unr-lcssa, label %vector.ph.new

vector.ph.new:                                    ; preds = %vector.ph
  %unroll_iter = and i64 %7, 9223372036854775804
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph.new
  %index = phi i64 [ 0, %vector.ph.new ], [ %index.next.3, %vector.body ]
  %niter = phi i64 [ 0, %vector.ph.new ], [ %niter.next.3, %vector.body ]
  %offset.idx = add i64 %index, %3
  %9 = getelementptr inbounds i64, i64* %2, i64 %offset.idx
  %10 = bitcast i64* %9 to <2 x i64>*
  store <2 x i64> zeroinitializer, <2 x i64>* %10, align 8, !tbaa !7
  %11 = getelementptr inbounds i64, i64* %9, i64 2
  %12 = bitcast i64* %11 to <2 x i64>*
  store <2 x i64> zeroinitializer, <2 x i64>* %12, align 8, !tbaa !7
  %index.next = or i64 %index, 4
  %offset.idx.1 = add i64 %index.next, %3
  %13 = getelementptr inbounds i64, i64* %2, i64 %offset.idx.1
  %14 = bitcast i64* %13 to <2 x i64>*
  store <2 x i64> zeroinitializer, <2 x i64>* %14, align 8, !tbaa !7
  %15 = getelementptr inbounds i64, i64* %13, i64 2
  %16 = bitcast i64* %15 to <2 x i64>*
  store <2 x i64> zeroinitializer, <2 x i64>* %16, align 8, !tbaa !7
  %index.next.1 = or i64 %index, 8
  %offset.idx.2 = add i64 %index.next.1, %3
  %17 = getelementptr inbounds i64, i64* %2, i64 %offset.idx.2
  %18 = bitcast i64* %17 to <2 x i64>*
  store <2 x i64> zeroinitializer, <2 x i64>* %18, align 8, !tbaa !7
  %19 = getelementptr inbounds i64, i64* %17, i64 2
  %20 = bitcast i64* %19 to <2 x i64>*
  store <2 x i64> zeroinitializer, <2 x i64>* %20, align 8, !tbaa !7
  %index.next.2 = or i64 %index, 12
  %offset.idx.3 = add i64 %index.next.2, %3
  %21 = getelementptr inbounds i64, i64* %2, i64 %offset.idx.3
  %22 = bitcast i64* %21 to <2 x i64>*
  store <2 x i64> zeroinitializer, <2 x i64>* %22, align 8, !tbaa !7
  %23 = getelementptr inbounds i64, i64* %21, i64 2
  %24 = bitcast i64* %23 to <2 x i64>*
  store <2 x i64> zeroinitializer, <2 x i64>* %24, align 8, !tbaa !7
  %index.next.3 = add nuw i64 %index, 16
  %niter.next.3 = add nuw i64 %niter, 4
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %middle.block.unr-lcssa, label %vector.body, !llvm.loop !15

middle.block.unr-lcssa:                           ; preds = %vector.body, %vector.ph
  %index.unr = phi i64 [ 0, %vector.ph ], [ %index.next.3, %vector.body ]
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %middle.block, label %vector.body.epil

vector.body.epil:                                 ; preds = %middle.block.unr-lcssa, %vector.body.epil
  %index.epil = phi i64 [ %index.next.epil, %vector.body.epil ], [ %index.unr, %middle.block.unr-lcssa ]
  %epil.iter = phi i64 [ %epil.iter.next, %vector.body.epil ], [ 0, %middle.block.unr-lcssa ]
  %offset.idx.epil = add i64 %index.epil, %3
  %25 = getelementptr inbounds i64, i64* %2, i64 %offset.idx.epil
  %26 = bitcast i64* %25 to <2 x i64>*
  store <2 x i64> zeroinitializer, <2 x i64>* %26, align 8, !tbaa !7
  %27 = getelementptr inbounds i64, i64* %25, i64 2
  %28 = bitcast i64* %27 to <2 x i64>*
  store <2 x i64> zeroinitializer, <2 x i64>* %28, align 8, !tbaa !7
  %index.next.epil = add nuw i64 %index.epil, 4
  %epil.iter.next = add i64 %epil.iter, 1
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %middle.block, label %vector.body.epil, !llvm.loop !18

middle.block:                                     ; preds = %vector.body.epil, %middle.block.unr-lcssa
  %cmp.n = icmp eq i64 %4, %n.vec
  br i1 %cmp.n, label %for.end, label %for.body.preheader

for.body.preheader:                               ; preds = %for.body.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ %3, %for.body.lr.ph ], [ %ind.end, %middle.block ]
  br label %for.body

for.body:                                         ; preds = %for.body.preheader, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ %indvars.iv.ph, %for.body.preheader ]
  %arrayidx = getelementptr inbounds i64, i64* %2, i64 %indvars.iv
  store i64 0, i64* %arrayidx, align 8, !tbaa !7
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %for.end, label %for.body, !llvm.loop !20

for.end:                                          ; preds = %for.body, %middle.block, %entry
  ret void
}

; Function Attrs: noinline nounwind uwtable
define i32 @bn_copy_words(i64* noundef %out, %struct.bignum_st* nocapture noundef readonly %in, i32 noundef %size) local_unnamed_addr #0 {
entry:
  %top = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %in, i64 0, i32 1
  %0 = load i32, i32* %top, align 8, !tbaa !13
  %cmp = icmp sgt i32 %0, %size
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %1 = bitcast i64* %out to i8*
  %conv = sext i32 %size to i64
  %mul = shl nsw i64 %conv, 3
  %call = tail call i8* @memset(i8* noundef %1, i32 noundef 0, i64 noundef %mul) #5
  %d = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %in, i64 0, i32 0
  %2 = load i64*, i64** %d, align 8, !tbaa !9
  %cmp1.not = icmp eq i64* %2, null
  br i1 %cmp1.not, label %return, label %if.then3

if.then3:                                         ; preds = %if.end
  %3 = bitcast i64* %2 to i8*
  %4 = load i32, i32* %top, align 8, !tbaa !13
  %conv6 = sext i32 %4 to i64
  %mul7 = shl nsw i64 %conv6, 3
  %call8 = tail call i8* @memcpy(i8* noundef %1, i8* noundef nonnull %3, i64 noundef %mul7) #5
  br label %return

return:                                           ; preds = %if.end, %if.then3, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ 1, %if.then3 ], [ 1, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind
declare i8* @memset(i8* noundef, i32 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare i8* @memcpy(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define i64* @bn_get_words(%struct.bignum_st* nocapture noundef readonly %a) local_unnamed_addr #2 {
entry:
  %d = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %a, i64 0, i32 0
  %0 = load i64*, i64** %d, align 8, !tbaa !9
  ret i64* %0
}

; Function Attrs: noinline nounwind uwtable
define void @bn_set_static_words(%struct.bignum_st* noundef %a, i64* noundef %words, i32 noundef %size) local_unnamed_addr #0 {
entry:
  %d = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %a, i64 0, i32 0
  store i64* %words, i64** %d, align 8, !tbaa !9
  %top = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %a, i64 0, i32 1
  store i32 %size, i32* %top, align 8, !tbaa !13
  %dmax = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %a, i64 0, i32 2
  store i32 %size, i32* %dmax, align 4, !tbaa !14
  %neg = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %a, i64 0, i32 3
  store i32 0, i32* %neg, align 8, !tbaa !22
  %flags = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %a, i64 0, i32 4
  %0 = load i32, i32* %flags, align 4, !tbaa !23
  %or = or i32 %0, 2
  store i32 %or, i32* %flags, align 4, !tbaa !23
  tail call void @bn_correct_top(%struct.bignum_st* noundef %a) #5
  ret void
}

declare void @bn_correct_top(%struct.bignum_st* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define i32 @bn_set_words(%struct.bignum_st* noundef %a, i64* noundef %words, i32 noundef %num_words) local_unnamed_addr #0 {
entry:
  %call = tail call %struct.bignum_st* @bn_wexpand(%struct.bignum_st* noundef %a, i32 noundef %num_words) #5
  %cmp = icmp eq %struct.bignum_st* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 191, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @__func__.bn_set_words, i64 0, i64 0)) #5
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 3, i32 noundef 786688, i8* noundef null) #5
  br label %return

if.end:                                           ; preds = %entry
  %0 = bitcast %struct.bignum_st* %a to i8**
  %1 = load i8*, i8** %0, align 8, !tbaa !9
  %2 = bitcast i64* %words to i8*
  %conv = sext i32 %num_words to i64
  %mul = shl nsw i64 %conv, 3
  %call1 = tail call i8* @memcpy(i8* noundef %1, i8* noundef %2, i64 noundef %mul) #5
  %top = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %a, i64 0, i32 1
  store i32 %num_words, i32* %top, align 8, !tbaa !13
  tail call void @bn_correct_top(%struct.bignum_st* noundef %a) #5
  br label %return

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 1, %if.end ]
  ret i32 %retval.0
}

declare %struct.bignum_st* @bn_wexpand(%struct.bignum_st* noundef, i32 noundef) local_unnamed_addr #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree noinline norecurse nosync nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nobuiltin nounwind "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{!"clang version 14.0.0"}
!4 = !{!5, !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!8, !8, i64 0}
!8 = !{!"long", !5, i64 0}
!9 = !{!10, !11, i64 0}
!10 = !{!"bignum_st", !11, i64 0, !12, i64 8, !12, i64 12, !12, i64 16, !12, i64 20}
!11 = !{!"any pointer", !5, i64 0}
!12 = !{!"int", !5, i64 0}
!13 = !{!10, !12, i64 8}
!14 = !{!10, !12, i64 12}
!15 = distinct !{!15, !16, !17}
!16 = !{!"llvm.loop.mustprogress"}
!17 = !{!"llvm.loop.isvectorized", i32 1}
!18 = distinct !{!18, !19}
!19 = !{!"llvm.loop.unroll.disable"}
!20 = distinct !{!20, !16, !21, !17}
!21 = !{!"llvm.loop.unroll.runtime.disable"}
!22 = !{!10, !12, i64 16}
!23 = !{!10, !12, i64 20}
