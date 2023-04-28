; ModuleID = 'crypto/bn/bn_gf2m.c'
source_filename = "crypto/bn/bn_gf2m.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bignum_st = type { i64*, i32, i32, i32, i32 }
%struct.bignum_ctx = type opaque

@.str = private unnamed_addr constant [20 x i8] c"crypto/bn/bn_gf2m.c\00", align 1
@__func__.BN_GF2m_mod = private unnamed_addr constant [12 x i8] c"BN_GF2m_mod\00", align 1
@__func__.BN_GF2m_mod_mul = private unnamed_addr constant [16 x i8] c"BN_GF2m_mod_mul\00", align 1
@__func__.BN_GF2m_mod_sqr = private unnamed_addr constant [16 x i8] c"BN_GF2m_mod_sqr\00", align 1
@__func__.BN_GF2m_mod_exp = private unnamed_addr constant [16 x i8] c"BN_GF2m_mod_exp\00", align 1
@__func__.BN_GF2m_mod_sqrt = private unnamed_addr constant [17 x i8] c"BN_GF2m_mod_sqrt\00", align 1
@__func__.BN_GF2m_mod_solve_quad_arr = private unnamed_addr constant [27 x i8] c"BN_GF2m_mod_solve_quad_arr\00", align 1
@__func__.BN_GF2m_mod_solve_quad = private unnamed_addr constant [23 x i8] c"BN_GF2m_mod_solve_quad\00", align 1

; Function Attrs: noinline nounwind uwtable
define i32 @BN_GF2m_add(%struct.bignum_st* noundef %r, %struct.bignum_st* nocapture noundef readonly %a, %struct.bignum_st* nocapture noundef readonly %b) local_unnamed_addr #0 {
entry:
  %top = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %a, i64 0, i32 1
  %0 = load i32, i32* %top, align 8, !tbaa !4
  %top1 = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %b, i64 0, i32 1
  %1 = load i32, i32* %top1, align 8, !tbaa !4
  %cmp = icmp slt i32 %0, %1
  %b.a = select i1 %cmp, %struct.bignum_st* %b, %struct.bignum_st* %a
  %a.b = select i1 %cmp, %struct.bignum_st* %a, %struct.bignum_st* %b
  %top2 = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %b.a, i64 0, i32 1
  %2 = load i32, i32* %top2, align 8, !tbaa !4
  %call = tail call %struct.bignum_st* @bn_wexpand(%struct.bignum_st* noundef %r, i32 noundef %2) #4
  %cmp3 = icmp eq %struct.bignum_st* %call, null
  br i1 %cmp3, label %cleanup, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  %top6 = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %a.b, i64 0, i32 1
  %3 = load i32, i32* %top6, align 8, !tbaa !4
  %cmp755 = icmp sgt i32 %3, 0
  br i1 %cmp755, label %for.body.lr.ph, label %for.cond14.preheader

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %d = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %b.a, i64 0, i32 0
  %4 = load i64*, i64** %d, align 8, !tbaa !10
  %d8 = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %a.b, i64 0, i32 0
  %5 = load i64*, i64** %d8, align 8, !tbaa !10
  %d11 = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %r, i64 0, i32 0
  %6 = load i64*, i64** %d11, align 8, !tbaa !10
  %wide.trip.count = zext i32 %3 to i64
  %min.iters.check = icmp ult i32 %3, 4
  br i1 %min.iters.check, label %for.body.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %for.body.lr.ph
  %scevgep = getelementptr i64, i64* %6, i64 %wide.trip.count
  %scevgep67 = getelementptr i64, i64* %4, i64 %wide.trip.count
  %scevgep69 = getelementptr i64, i64* %5, i64 %wide.trip.count
  %bound0 = icmp ult i64* %6, %scevgep67
  %bound1 = icmp ult i64* %4, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound071 = icmp ult i64* %6, %scevgep69
  %bound172 = icmp ult i64* %5, %scevgep
  %found.conflict73 = and i1 %bound071, %bound172
  %conflict.rdx = or i1 %found.conflict, %found.conflict73
  br i1 %conflict.rdx, label %for.body.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count, 4294967292
  %7 = add nsw i64 %n.vec, -4
  %8 = lshr exact i64 %7, 2
  %9 = add nuw nsw i64 %8, 1
  %xtraiter = and i64 %9, 1
  %10 = icmp eq i64 %7, 0
  br i1 %10, label %middle.block.unr-lcssa, label %vector.ph.new

vector.ph.new:                                    ; preds = %vector.ph
  %unroll_iter = and i64 %9, 9223372036854775806
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph.new
  %index = phi i64 [ 0, %vector.ph.new ], [ %index.next.1, %vector.body ]
  %niter = phi i64 [ 0, %vector.ph.new ], [ %niter.next.1, %vector.body ]
  %11 = getelementptr inbounds i64, i64* %4, i64 %index
  %12 = bitcast i64* %11 to <2 x i64>*
  %wide.load = load <2 x i64>, <2 x i64>* %12, align 8, !tbaa !11, !alias.scope !13
  %13 = getelementptr inbounds i64, i64* %11, i64 2
  %14 = bitcast i64* %13 to <2 x i64>*
  %wide.load74 = load <2 x i64>, <2 x i64>* %14, align 8, !tbaa !11, !alias.scope !13
  %15 = getelementptr inbounds i64, i64* %5, i64 %index
  %16 = bitcast i64* %15 to <2 x i64>*
  %wide.load75 = load <2 x i64>, <2 x i64>* %16, align 8, !tbaa !11, !alias.scope !16
  %17 = getelementptr inbounds i64, i64* %15, i64 2
  %18 = bitcast i64* %17 to <2 x i64>*
  %wide.load76 = load <2 x i64>, <2 x i64>* %18, align 8, !tbaa !11, !alias.scope !16
  %19 = xor <2 x i64> %wide.load75, %wide.load
  %20 = xor <2 x i64> %wide.load76, %wide.load74
  %21 = getelementptr inbounds i64, i64* %6, i64 %index
  %22 = bitcast i64* %21 to <2 x i64>*
  store <2 x i64> %19, <2 x i64>* %22, align 8, !tbaa !11, !alias.scope !18, !noalias !20
  %23 = getelementptr inbounds i64, i64* %21, i64 2
  %24 = bitcast i64* %23 to <2 x i64>*
  store <2 x i64> %20, <2 x i64>* %24, align 8, !tbaa !11, !alias.scope !18, !noalias !20
  %index.next = or i64 %index, 4
  %25 = getelementptr inbounds i64, i64* %4, i64 %index.next
  %26 = bitcast i64* %25 to <2 x i64>*
  %wide.load.1 = load <2 x i64>, <2 x i64>* %26, align 8, !tbaa !11, !alias.scope !13
  %27 = getelementptr inbounds i64, i64* %25, i64 2
  %28 = bitcast i64* %27 to <2 x i64>*
  %wide.load74.1 = load <2 x i64>, <2 x i64>* %28, align 8, !tbaa !11, !alias.scope !13
  %29 = getelementptr inbounds i64, i64* %5, i64 %index.next
  %30 = bitcast i64* %29 to <2 x i64>*
  %wide.load75.1 = load <2 x i64>, <2 x i64>* %30, align 8, !tbaa !11, !alias.scope !16
  %31 = getelementptr inbounds i64, i64* %29, i64 2
  %32 = bitcast i64* %31 to <2 x i64>*
  %wide.load76.1 = load <2 x i64>, <2 x i64>* %32, align 8, !tbaa !11, !alias.scope !16
  %33 = xor <2 x i64> %wide.load75.1, %wide.load.1
  %34 = xor <2 x i64> %wide.load76.1, %wide.load74.1
  %35 = getelementptr inbounds i64, i64* %6, i64 %index.next
  %36 = bitcast i64* %35 to <2 x i64>*
  store <2 x i64> %33, <2 x i64>* %36, align 8, !tbaa !11, !alias.scope !18, !noalias !20
  %37 = getelementptr inbounds i64, i64* %35, i64 2
  %38 = bitcast i64* %37 to <2 x i64>*
  store <2 x i64> %34, <2 x i64>* %38, align 8, !tbaa !11, !alias.scope !18, !noalias !20
  %index.next.1 = add nuw i64 %index, 8
  %niter.next.1 = add i64 %niter, 2
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %middle.block.unr-lcssa, label %vector.body, !llvm.loop !21

middle.block.unr-lcssa:                           ; preds = %vector.body, %vector.ph
  %index.unr = phi i64 [ 0, %vector.ph ], [ %index.next.1, %vector.body ]
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %middle.block, label %vector.body.epil

vector.body.epil:                                 ; preds = %middle.block.unr-lcssa
  %39 = getelementptr inbounds i64, i64* %4, i64 %index.unr
  %40 = bitcast i64* %39 to <2 x i64>*
  %wide.load.epil = load <2 x i64>, <2 x i64>* %40, align 8, !tbaa !11, !alias.scope !13
  %41 = getelementptr inbounds i64, i64* %39, i64 2
  %42 = bitcast i64* %41 to <2 x i64>*
  %wide.load74.epil = load <2 x i64>, <2 x i64>* %42, align 8, !tbaa !11, !alias.scope !13
  %43 = getelementptr inbounds i64, i64* %5, i64 %index.unr
  %44 = bitcast i64* %43 to <2 x i64>*
  %wide.load75.epil = load <2 x i64>, <2 x i64>* %44, align 8, !tbaa !11, !alias.scope !16
  %45 = getelementptr inbounds i64, i64* %43, i64 2
  %46 = bitcast i64* %45 to <2 x i64>*
  %wide.load76.epil = load <2 x i64>, <2 x i64>* %46, align 8, !tbaa !11, !alias.scope !16
  %47 = xor <2 x i64> %wide.load75.epil, %wide.load.epil
  %48 = xor <2 x i64> %wide.load76.epil, %wide.load74.epil
  %49 = getelementptr inbounds i64, i64* %6, i64 %index.unr
  %50 = bitcast i64* %49 to <2 x i64>*
  store <2 x i64> %47, <2 x i64>* %50, align 8, !tbaa !11, !alias.scope !18, !noalias !20
  %51 = getelementptr inbounds i64, i64* %49, i64 2
  %52 = bitcast i64* %51 to <2 x i64>*
  store <2 x i64> %48, <2 x i64>* %52, align 8, !tbaa !11, !alias.scope !18, !noalias !20
  br label %middle.block

middle.block:                                     ; preds = %middle.block.unr-lcssa, %vector.body.epil
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %for.cond14.preheader, label %for.body.preheader

for.body.preheader:                               ; preds = %vector.memcheck, %for.body.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %for.body.lr.ph ], [ %n.vec, %middle.block ]
  %53 = xor i64 %indvars.iv.ph, -1
  %54 = add nsw i64 %53, %wide.trip.count
  %xtraiter102 = and i64 %wide.trip.count, 3
  %lcmp.mod103.not = icmp eq i64 %xtraiter102, 0
  br i1 %lcmp.mod103.not, label %for.body.prol.loopexit, label %for.body.prol

for.body.prol:                                    ; preds = %for.body.preheader, %for.body.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %for.body.prol ], [ %indvars.iv.ph, %for.body.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %for.body.prol ], [ 0, %for.body.preheader ]
  %arrayidx.prol = getelementptr inbounds i64, i64* %4, i64 %indvars.iv.prol
  %55 = load i64, i64* %arrayidx.prol, align 8, !tbaa !11
  %arrayidx10.prol = getelementptr inbounds i64, i64* %5, i64 %indvars.iv.prol
  %56 = load i64, i64* %arrayidx10.prol, align 8, !tbaa !11
  %xor.prol = xor i64 %56, %55
  %arrayidx13.prol = getelementptr inbounds i64, i64* %6, i64 %indvars.iv.prol
  store i64 %xor.prol, i64* %arrayidx13.prol, align 8, !tbaa !11
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1
  %prol.iter.next = add i64 %prol.iter, 1
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter102
  br i1 %prol.iter.cmp.not, label %for.body.prol.loopexit, label %for.body.prol, !llvm.loop !24

for.body.prol.loopexit:                           ; preds = %for.body.prol, %for.body.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %for.body.preheader ], [ %indvars.iv.next.prol, %for.body.prol ]
  %57 = icmp ult i64 %54, 3
  br i1 %57, label %for.cond14.preheader, label %for.body

for.cond14.preheader:                             ; preds = %for.body.prol.loopexit, %for.body, %middle.block, %for.cond.preheader
  %i.0.lcssa = phi i32 [ 0, %for.cond.preheader ], [ %3, %middle.block ], [ %3, %for.body ], [ %3, %for.body.prol.loopexit ]
  %58 = load i32, i32* %top2, align 8, !tbaa !4
  %cmp1657 = icmp slt i32 %i.0.lcssa, %58
  br i1 %cmp1657, label %for.body17.lr.ph, label %for.end26

for.body17.lr.ph:                                 ; preds = %for.cond14.preheader
  %d18 = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %b.a, i64 0, i32 0
  %59 = load i64*, i64** %d18, align 8, !tbaa !10
  %d21 = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %r, i64 0, i32 0
  %60 = load i64*, i64** %d21, align 8, !tbaa !10
  %61 = zext i32 %i.0.lcssa to i64
  %wide.trip.count64 = zext i32 %58 to i64
  %62 = sub nsw i64 %wide.trip.count64, %61
  %min.iters.check92 = icmp ult i64 %62, 4
  br i1 %min.iters.check92, label %for.body17.preheader, label %vector.memcheck77

vector.memcheck77:                                ; preds = %for.body17.lr.ph
  %scevgep78 = getelementptr i64, i64* %60, i64 %61
  %scevgep80 = getelementptr i64, i64* %60, i64 %wide.trip.count64
  %scevgep82 = getelementptr i64, i64* %59, i64 %61
  %scevgep84 = getelementptr i64, i64* %59, i64 %wide.trip.count64
  %bound086 = icmp ult i64* %scevgep78, %scevgep84
  %bound187 = icmp ult i64* %scevgep82, %scevgep80
  %found.conflict88 = and i1 %bound086, %bound187
  br i1 %found.conflict88, label %for.body17.preheader, label %vector.ph93

vector.ph93:                                      ; preds = %vector.memcheck77
  %n.vec95 = and i64 %62, -4
  %ind.end = add nsw i64 %n.vec95, %61
  %63 = add nsw i64 %n.vec95, -4
  %64 = lshr exact i64 %63, 2
  %65 = add nuw nsw i64 %64, 1
  %xtraiter104 = and i64 %65, 3
  %66 = icmp ult i64 %63, 12
  br i1 %66, label %middle.block89.unr-lcssa, label %vector.ph93.new

vector.ph93.new:                                  ; preds = %vector.ph93
  %unroll_iter106 = and i64 %65, 9223372036854775804
  br label %vector.body91

vector.body91:                                    ; preds = %vector.body91, %vector.ph93.new
  %index98 = phi i64 [ 0, %vector.ph93.new ], [ %index.next101.3, %vector.body91 ]
  %niter107 = phi i64 [ 0, %vector.ph93.new ], [ %niter107.next.3, %vector.body91 ]
  %offset.idx = add i64 %index98, %61
  %67 = getelementptr inbounds i64, i64* %59, i64 %offset.idx
  %68 = bitcast i64* %67 to <2 x i64>*
  %wide.load99 = load <2 x i64>, <2 x i64>* %68, align 8, !tbaa !11, !alias.scope !26
  %69 = getelementptr inbounds i64, i64* %67, i64 2
  %70 = bitcast i64* %69 to <2 x i64>*
  %wide.load100 = load <2 x i64>, <2 x i64>* %70, align 8, !tbaa !11, !alias.scope !26
  %71 = getelementptr inbounds i64, i64* %60, i64 %offset.idx
  %72 = bitcast i64* %71 to <2 x i64>*
  store <2 x i64> %wide.load99, <2 x i64>* %72, align 8, !tbaa !11, !alias.scope !29, !noalias !26
  %73 = getelementptr inbounds i64, i64* %71, i64 2
  %74 = bitcast i64* %73 to <2 x i64>*
  store <2 x i64> %wide.load100, <2 x i64>* %74, align 8, !tbaa !11, !alias.scope !29, !noalias !26
  %index.next101 = or i64 %index98, 4
  %offset.idx.1 = add i64 %index.next101, %61
  %75 = getelementptr inbounds i64, i64* %59, i64 %offset.idx.1
  %76 = bitcast i64* %75 to <2 x i64>*
  %wide.load99.1 = load <2 x i64>, <2 x i64>* %76, align 8, !tbaa !11, !alias.scope !26
  %77 = getelementptr inbounds i64, i64* %75, i64 2
  %78 = bitcast i64* %77 to <2 x i64>*
  %wide.load100.1 = load <2 x i64>, <2 x i64>* %78, align 8, !tbaa !11, !alias.scope !26
  %79 = getelementptr inbounds i64, i64* %60, i64 %offset.idx.1
  %80 = bitcast i64* %79 to <2 x i64>*
  store <2 x i64> %wide.load99.1, <2 x i64>* %80, align 8, !tbaa !11, !alias.scope !29, !noalias !26
  %81 = getelementptr inbounds i64, i64* %79, i64 2
  %82 = bitcast i64* %81 to <2 x i64>*
  store <2 x i64> %wide.load100.1, <2 x i64>* %82, align 8, !tbaa !11, !alias.scope !29, !noalias !26
  %index.next101.1 = or i64 %index98, 8
  %offset.idx.2 = add i64 %index.next101.1, %61
  %83 = getelementptr inbounds i64, i64* %59, i64 %offset.idx.2
  %84 = bitcast i64* %83 to <2 x i64>*
  %wide.load99.2 = load <2 x i64>, <2 x i64>* %84, align 8, !tbaa !11, !alias.scope !26
  %85 = getelementptr inbounds i64, i64* %83, i64 2
  %86 = bitcast i64* %85 to <2 x i64>*
  %wide.load100.2 = load <2 x i64>, <2 x i64>* %86, align 8, !tbaa !11, !alias.scope !26
  %87 = getelementptr inbounds i64, i64* %60, i64 %offset.idx.2
  %88 = bitcast i64* %87 to <2 x i64>*
  store <2 x i64> %wide.load99.2, <2 x i64>* %88, align 8, !tbaa !11, !alias.scope !29, !noalias !26
  %89 = getelementptr inbounds i64, i64* %87, i64 2
  %90 = bitcast i64* %89 to <2 x i64>*
  store <2 x i64> %wide.load100.2, <2 x i64>* %90, align 8, !tbaa !11, !alias.scope !29, !noalias !26
  %index.next101.2 = or i64 %index98, 12
  %offset.idx.3 = add i64 %index.next101.2, %61
  %91 = getelementptr inbounds i64, i64* %59, i64 %offset.idx.3
  %92 = bitcast i64* %91 to <2 x i64>*
  %wide.load99.3 = load <2 x i64>, <2 x i64>* %92, align 8, !tbaa !11, !alias.scope !26
  %93 = getelementptr inbounds i64, i64* %91, i64 2
  %94 = bitcast i64* %93 to <2 x i64>*
  %wide.load100.3 = load <2 x i64>, <2 x i64>* %94, align 8, !tbaa !11, !alias.scope !26
  %95 = getelementptr inbounds i64, i64* %60, i64 %offset.idx.3
  %96 = bitcast i64* %95 to <2 x i64>*
  store <2 x i64> %wide.load99.3, <2 x i64>* %96, align 8, !tbaa !11, !alias.scope !29, !noalias !26
  %97 = getelementptr inbounds i64, i64* %95, i64 2
  %98 = bitcast i64* %97 to <2 x i64>*
  store <2 x i64> %wide.load100.3, <2 x i64>* %98, align 8, !tbaa !11, !alias.scope !29, !noalias !26
  %index.next101.3 = add nuw i64 %index98, 16
  %niter107.next.3 = add nuw i64 %niter107, 4
  %niter107.ncmp.3 = icmp eq i64 %niter107.next.3, %unroll_iter106
  br i1 %niter107.ncmp.3, label %middle.block89.unr-lcssa, label %vector.body91, !llvm.loop !31

middle.block89.unr-lcssa:                         ; preds = %vector.body91, %vector.ph93
  %index98.unr = phi i64 [ 0, %vector.ph93 ], [ %index.next101.3, %vector.body91 ]
  %lcmp.mod105.not = icmp eq i64 %xtraiter104, 0
  br i1 %lcmp.mod105.not, label %middle.block89, label %vector.body91.epil

vector.body91.epil:                               ; preds = %middle.block89.unr-lcssa, %vector.body91.epil
  %index98.epil = phi i64 [ %index.next101.epil, %vector.body91.epil ], [ %index98.unr, %middle.block89.unr-lcssa ]
  %epil.iter = phi i64 [ %epil.iter.next, %vector.body91.epil ], [ 0, %middle.block89.unr-lcssa ]
  %offset.idx.epil = add i64 %index98.epil, %61
  %99 = getelementptr inbounds i64, i64* %59, i64 %offset.idx.epil
  %100 = bitcast i64* %99 to <2 x i64>*
  %wide.load99.epil = load <2 x i64>, <2 x i64>* %100, align 8, !tbaa !11, !alias.scope !26
  %101 = getelementptr inbounds i64, i64* %99, i64 2
  %102 = bitcast i64* %101 to <2 x i64>*
  %wide.load100.epil = load <2 x i64>, <2 x i64>* %102, align 8, !tbaa !11, !alias.scope !26
  %103 = getelementptr inbounds i64, i64* %60, i64 %offset.idx.epil
  %104 = bitcast i64* %103 to <2 x i64>*
  store <2 x i64> %wide.load99.epil, <2 x i64>* %104, align 8, !tbaa !11, !alias.scope !29, !noalias !26
  %105 = getelementptr inbounds i64, i64* %103, i64 2
  %106 = bitcast i64* %105 to <2 x i64>*
  store <2 x i64> %wide.load100.epil, <2 x i64>* %106, align 8, !tbaa !11, !alias.scope !29, !noalias !26
  %index.next101.epil = add nuw i64 %index98.epil, 4
  %epil.iter.next = add i64 %epil.iter, 1
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter104
  br i1 %epil.iter.cmp.not, label %middle.block89, label %vector.body91.epil, !llvm.loop !32

middle.block89:                                   ; preds = %vector.body91.epil, %middle.block89.unr-lcssa
  %cmp.n97 = icmp eq i64 %62, %n.vec95
  br i1 %cmp.n97, label %for.end26, label %for.body17.preheader

for.body17.preheader:                             ; preds = %vector.memcheck77, %for.body17.lr.ph, %middle.block89
  %indvars.iv61.ph = phi i64 [ %61, %vector.memcheck77 ], [ %61, %for.body17.lr.ph ], [ %ind.end, %middle.block89 ]
  %107 = sub nsw i64 %wide.trip.count64, %indvars.iv61.ph
  %108 = xor i64 %indvars.iv61.ph, -1
  %109 = add nsw i64 %108, %wide.trip.count64
  %xtraiter108 = and i64 %107, 3
  %lcmp.mod109.not = icmp eq i64 %xtraiter108, 0
  br i1 %lcmp.mod109.not, label %for.body17.prol.loopexit, label %for.body17.prol

for.body17.prol:                                  ; preds = %for.body17.preheader, %for.body17.prol
  %indvars.iv61.prol = phi i64 [ %indvars.iv.next62.prol, %for.body17.prol ], [ %indvars.iv61.ph, %for.body17.preheader ]
  %prol.iter110 = phi i64 [ %prol.iter110.next, %for.body17.prol ], [ 0, %for.body17.preheader ]
  %arrayidx20.prol = getelementptr inbounds i64, i64* %59, i64 %indvars.iv61.prol
  %110 = load i64, i64* %arrayidx20.prol, align 8, !tbaa !11
  %arrayidx23.prol = getelementptr inbounds i64, i64* %60, i64 %indvars.iv61.prol
  store i64 %110, i64* %arrayidx23.prol, align 8, !tbaa !11
  %indvars.iv.next62.prol = add nuw nsw i64 %indvars.iv61.prol, 1
  %prol.iter110.next = add i64 %prol.iter110, 1
  %prol.iter110.cmp.not = icmp eq i64 %prol.iter110.next, %xtraiter108
  br i1 %prol.iter110.cmp.not, label %for.body17.prol.loopexit, label %for.body17.prol, !llvm.loop !33

for.body17.prol.loopexit:                         ; preds = %for.body17.prol, %for.body17.preheader
  %indvars.iv61.unr = phi i64 [ %indvars.iv61.ph, %for.body17.preheader ], [ %indvars.iv.next62.prol, %for.body17.prol ]
  %111 = icmp ult i64 %109, 3
  br i1 %111, label %for.end26, label %for.body17

for.body:                                         ; preds = %for.body.prol.loopexit, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %for.body ], [ %indvars.iv.unr, %for.body.prol.loopexit ]
  %arrayidx = getelementptr inbounds i64, i64* %4, i64 %indvars.iv
  %112 = load i64, i64* %arrayidx, align 8, !tbaa !11
  %arrayidx10 = getelementptr inbounds i64, i64* %5, i64 %indvars.iv
  %113 = load i64, i64* %arrayidx10, align 8, !tbaa !11
  %xor = xor i64 %113, %112
  %arrayidx13 = getelementptr inbounds i64, i64* %6, i64 %indvars.iv
  store i64 %xor, i64* %arrayidx13, align 8, !tbaa !11
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %arrayidx.1 = getelementptr inbounds i64, i64* %4, i64 %indvars.iv.next
  %114 = load i64, i64* %arrayidx.1, align 8, !tbaa !11
  %arrayidx10.1 = getelementptr inbounds i64, i64* %5, i64 %indvars.iv.next
  %115 = load i64, i64* %arrayidx10.1, align 8, !tbaa !11
  %xor.1 = xor i64 %115, %114
  %arrayidx13.1 = getelementptr inbounds i64, i64* %6, i64 %indvars.iv.next
  store i64 %xor.1, i64* %arrayidx13.1, align 8, !tbaa !11
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2
  %arrayidx.2 = getelementptr inbounds i64, i64* %4, i64 %indvars.iv.next.1
  %116 = load i64, i64* %arrayidx.2, align 8, !tbaa !11
  %arrayidx10.2 = getelementptr inbounds i64, i64* %5, i64 %indvars.iv.next.1
  %117 = load i64, i64* %arrayidx10.2, align 8, !tbaa !11
  %xor.2 = xor i64 %117, %116
  %arrayidx13.2 = getelementptr inbounds i64, i64* %6, i64 %indvars.iv.next.1
  store i64 %xor.2, i64* %arrayidx13.2, align 8, !tbaa !11
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3
  %arrayidx.3 = getelementptr inbounds i64, i64* %4, i64 %indvars.iv.next.2
  %118 = load i64, i64* %arrayidx.3, align 8, !tbaa !11
  %arrayidx10.3 = getelementptr inbounds i64, i64* %5, i64 %indvars.iv.next.2
  %119 = load i64, i64* %arrayidx10.3, align 8, !tbaa !11
  %xor.3 = xor i64 %119, %118
  %arrayidx13.3 = getelementptr inbounds i64, i64* %6, i64 %indvars.iv.next.2
  store i64 %xor.3, i64* %arrayidx13.3, align 8, !tbaa !11
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond.not.3, label %for.cond14.preheader, label %for.body, !llvm.loop !34

for.body17:                                       ; preds = %for.body17.prol.loopexit, %for.body17
  %indvars.iv61 = phi i64 [ %indvars.iv.next62.3, %for.body17 ], [ %indvars.iv61.unr, %for.body17.prol.loopexit ]
  %arrayidx20 = getelementptr inbounds i64, i64* %59, i64 %indvars.iv61
  %120 = load i64, i64* %arrayidx20, align 8, !tbaa !11
  %arrayidx23 = getelementptr inbounds i64, i64* %60, i64 %indvars.iv61
  store i64 %120, i64* %arrayidx23, align 8, !tbaa !11
  %indvars.iv.next62 = add nuw nsw i64 %indvars.iv61, 1
  %arrayidx20.1 = getelementptr inbounds i64, i64* %59, i64 %indvars.iv.next62
  %121 = load i64, i64* %arrayidx20.1, align 8, !tbaa !11
  %arrayidx23.1 = getelementptr inbounds i64, i64* %60, i64 %indvars.iv.next62
  store i64 %121, i64* %arrayidx23.1, align 8, !tbaa !11
  %indvars.iv.next62.1 = add nuw nsw i64 %indvars.iv61, 2
  %arrayidx20.2 = getelementptr inbounds i64, i64* %59, i64 %indvars.iv.next62.1
  %122 = load i64, i64* %arrayidx20.2, align 8, !tbaa !11
  %arrayidx23.2 = getelementptr inbounds i64, i64* %60, i64 %indvars.iv.next62.1
  store i64 %122, i64* %arrayidx23.2, align 8, !tbaa !11
  %indvars.iv.next62.2 = add nuw nsw i64 %indvars.iv61, 3
  %arrayidx20.3 = getelementptr inbounds i64, i64* %59, i64 %indvars.iv.next62.2
  %123 = load i64, i64* %arrayidx20.3, align 8, !tbaa !11
  %arrayidx23.3 = getelementptr inbounds i64, i64* %60, i64 %indvars.iv.next62.2
  store i64 %123, i64* %arrayidx23.3, align 8, !tbaa !11
  %indvars.iv.next62.3 = add nuw nsw i64 %indvars.iv61, 4
  %exitcond65.not.3 = icmp eq i64 %indvars.iv.next62.3, %wide.trip.count64
  br i1 %exitcond65.not.3, label %for.end26, label %for.body17, !llvm.loop !35

for.end26:                                        ; preds = %for.body17.prol.loopexit, %for.body17, %middle.block89, %for.cond14.preheader
  %top28 = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %r, i64 0, i32 1
  store i32 %58, i32* %top28, align 8, !tbaa !4
  tail call void @bn_correct_top(%struct.bignum_st* noundef %r) #4
  br label %cleanup

cleanup:                                          ; preds = %entry, %for.end26
  %retval.0 = phi i32 [ 1, %for.end26 ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

declare %struct.bignum_st* @bn_wexpand(%struct.bignum_st* noundef, i32 noundef) local_unnamed_addr #2

declare void @bn_correct_top(%struct.bignum_st* noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: noinline nounwind uwtable
define i32 @BN_GF2m_mod_arr(%struct.bignum_st* noundef %r, %struct.bignum_st* noundef readonly %a, i32* nocapture noundef readonly %p) local_unnamed_addr #0 {
entry:
  %0 = load i32, i32* %p, align 4, !tbaa !36
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @BN_zero_ex(%struct.bignum_st* noundef %r) #4
  br label %cleanup

if.end:                                           ; preds = %entry
  %cmp1.not = icmp eq %struct.bignum_st* %a, %r
  %top16.phi.trans.insert = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %a, i64 0, i32 1
  %.pre263 = load i32, i32* %top16.phi.trans.insert, align 8, !tbaa !4
  br i1 %cmp1.not, label %if.end13, label %if.then2

if.then2:                                         ; preds = %if.end
  %call = tail call %struct.bignum_st* @bn_wexpand(%struct.bignum_st* noundef %r, i32 noundef %.pre263) #4
  %tobool.not = icmp eq %struct.bignum_st* %call, null
  br i1 %tobool.not, label %cleanup, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.then2
  %1 = load i32, i32* %top16.phi.trans.insert, align 8, !tbaa !4
  %cmp6236 = icmp sgt i32 %1, 0
  br i1 %cmp6236, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %d = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %a, i64 0, i32 0
  %2 = load i64*, i64** %d, align 8, !tbaa !10
  %d8 = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %r, i64 0, i32 0
  %3 = load i64*, i64** %d8, align 8, !tbaa !10
  %wide.trip.count = zext i32 %1 to i64
  %min.iters.check = icmp ult i32 %1, 4
  br i1 %min.iters.check, label %for.body.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %for.body.lr.ph
  %scevgep = getelementptr i64, i64* %3, i64 %wide.trip.count
  %scevgep278 = getelementptr i64, i64* %2, i64 %wide.trip.count
  %bound0 = icmp ult i64* %3, %scevgep278
  %bound1 = icmp ult i64* %2, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %for.body.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count, 4294967292
  %4 = add nsw i64 %n.vec, -4
  %5 = lshr exact i64 %4, 2
  %6 = add nuw nsw i64 %5, 1
  %xtraiter = and i64 %6, 3
  %7 = icmp ult i64 %4, 12
  br i1 %7, label %middle.block.unr-lcssa, label %vector.ph.new

vector.ph.new:                                    ; preds = %vector.ph
  %unroll_iter = and i64 %6, 9223372036854775804
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph.new
  %index = phi i64 [ 0, %vector.ph.new ], [ %index.next.3, %vector.body ]
  %niter = phi i64 [ 0, %vector.ph.new ], [ %niter.next.3, %vector.body ]
  %8 = getelementptr inbounds i64, i64* %2, i64 %index
  %9 = bitcast i64* %8 to <2 x i64>*
  %wide.load = load <2 x i64>, <2 x i64>* %9, align 8, !tbaa !11, !alias.scope !37
  %10 = getelementptr inbounds i64, i64* %8, i64 2
  %11 = bitcast i64* %10 to <2 x i64>*
  %wide.load280 = load <2 x i64>, <2 x i64>* %11, align 8, !tbaa !11, !alias.scope !37
  %12 = getelementptr inbounds i64, i64* %3, i64 %index
  %13 = bitcast i64* %12 to <2 x i64>*
  store <2 x i64> %wide.load, <2 x i64>* %13, align 8, !tbaa !11, !alias.scope !40, !noalias !37
  %14 = getelementptr inbounds i64, i64* %12, i64 2
  %15 = bitcast i64* %14 to <2 x i64>*
  store <2 x i64> %wide.load280, <2 x i64>* %15, align 8, !tbaa !11, !alias.scope !40, !noalias !37
  %index.next = or i64 %index, 4
  %16 = getelementptr inbounds i64, i64* %2, i64 %index.next
  %17 = bitcast i64* %16 to <2 x i64>*
  %wide.load.1 = load <2 x i64>, <2 x i64>* %17, align 8, !tbaa !11, !alias.scope !37
  %18 = getelementptr inbounds i64, i64* %16, i64 2
  %19 = bitcast i64* %18 to <2 x i64>*
  %wide.load280.1 = load <2 x i64>, <2 x i64>* %19, align 8, !tbaa !11, !alias.scope !37
  %20 = getelementptr inbounds i64, i64* %3, i64 %index.next
  %21 = bitcast i64* %20 to <2 x i64>*
  store <2 x i64> %wide.load.1, <2 x i64>* %21, align 8, !tbaa !11, !alias.scope !40, !noalias !37
  %22 = getelementptr inbounds i64, i64* %20, i64 2
  %23 = bitcast i64* %22 to <2 x i64>*
  store <2 x i64> %wide.load280.1, <2 x i64>* %23, align 8, !tbaa !11, !alias.scope !40, !noalias !37
  %index.next.1 = or i64 %index, 8
  %24 = getelementptr inbounds i64, i64* %2, i64 %index.next.1
  %25 = bitcast i64* %24 to <2 x i64>*
  %wide.load.2 = load <2 x i64>, <2 x i64>* %25, align 8, !tbaa !11, !alias.scope !37
  %26 = getelementptr inbounds i64, i64* %24, i64 2
  %27 = bitcast i64* %26 to <2 x i64>*
  %wide.load280.2 = load <2 x i64>, <2 x i64>* %27, align 8, !tbaa !11, !alias.scope !37
  %28 = getelementptr inbounds i64, i64* %3, i64 %index.next.1
  %29 = bitcast i64* %28 to <2 x i64>*
  store <2 x i64> %wide.load.2, <2 x i64>* %29, align 8, !tbaa !11, !alias.scope !40, !noalias !37
  %30 = getelementptr inbounds i64, i64* %28, i64 2
  %31 = bitcast i64* %30 to <2 x i64>*
  store <2 x i64> %wide.load280.2, <2 x i64>* %31, align 8, !tbaa !11, !alias.scope !40, !noalias !37
  %index.next.2 = or i64 %index, 12
  %32 = getelementptr inbounds i64, i64* %2, i64 %index.next.2
  %33 = bitcast i64* %32 to <2 x i64>*
  %wide.load.3 = load <2 x i64>, <2 x i64>* %33, align 8, !tbaa !11, !alias.scope !37
  %34 = getelementptr inbounds i64, i64* %32, i64 2
  %35 = bitcast i64* %34 to <2 x i64>*
  %wide.load280.3 = load <2 x i64>, <2 x i64>* %35, align 8, !tbaa !11, !alias.scope !37
  %36 = getelementptr inbounds i64, i64* %3, i64 %index.next.2
  %37 = bitcast i64* %36 to <2 x i64>*
  store <2 x i64> %wide.load.3, <2 x i64>* %37, align 8, !tbaa !11, !alias.scope !40, !noalias !37
  %38 = getelementptr inbounds i64, i64* %36, i64 2
  %39 = bitcast i64* %38 to <2 x i64>*
  store <2 x i64> %wide.load280.3, <2 x i64>* %39, align 8, !tbaa !11, !alias.scope !40, !noalias !37
  %index.next.3 = add nuw i64 %index, 16
  %niter.next.3 = add nuw i64 %niter, 4
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %middle.block.unr-lcssa, label %vector.body, !llvm.loop !42

middle.block.unr-lcssa:                           ; preds = %vector.body, %vector.ph
  %index.unr = phi i64 [ 0, %vector.ph ], [ %index.next.3, %vector.body ]
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %middle.block, label %vector.body.epil

vector.body.epil:                                 ; preds = %middle.block.unr-lcssa, %vector.body.epil
  %index.epil = phi i64 [ %index.next.epil, %vector.body.epil ], [ %index.unr, %middle.block.unr-lcssa ]
  %epil.iter = phi i64 [ %epil.iter.next, %vector.body.epil ], [ 0, %middle.block.unr-lcssa ]
  %40 = getelementptr inbounds i64, i64* %2, i64 %index.epil
  %41 = bitcast i64* %40 to <2 x i64>*
  %wide.load.epil = load <2 x i64>, <2 x i64>* %41, align 8, !tbaa !11, !alias.scope !37
  %42 = getelementptr inbounds i64, i64* %40, i64 2
  %43 = bitcast i64* %42 to <2 x i64>*
  %wide.load280.epil = load <2 x i64>, <2 x i64>* %43, align 8, !tbaa !11, !alias.scope !37
  %44 = getelementptr inbounds i64, i64* %3, i64 %index.epil
  %45 = bitcast i64* %44 to <2 x i64>*
  store <2 x i64> %wide.load.epil, <2 x i64>* %45, align 8, !tbaa !11, !alias.scope !40, !noalias !37
  %46 = getelementptr inbounds i64, i64* %44, i64 2
  %47 = bitcast i64* %46 to <2 x i64>*
  store <2 x i64> %wide.load280.epil, <2 x i64>* %47, align 8, !tbaa !11, !alias.scope !40, !noalias !37
  %index.next.epil = add nuw i64 %index.epil, 4
  %epil.iter.next = add i64 %epil.iter, 1
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %middle.block, label %vector.body.epil, !llvm.loop !43

middle.block:                                     ; preds = %vector.body.epil, %middle.block.unr-lcssa
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %for.end, label %for.body.preheader

for.body.preheader:                               ; preds = %vector.memcheck, %for.body.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %for.body.lr.ph ], [ %n.vec, %middle.block ]
  %48 = xor i64 %indvars.iv.ph, -1
  %49 = add nsw i64 %48, %wide.trip.count
  %xtraiter281 = and i64 %wide.trip.count, 3
  %lcmp.mod282.not = icmp eq i64 %xtraiter281, 0
  br i1 %lcmp.mod282.not, label %for.body.prol.loopexit, label %for.body.prol

for.body.prol:                                    ; preds = %for.body.preheader, %for.body.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %for.body.prol ], [ %indvars.iv.ph, %for.body.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %for.body.prol ], [ 0, %for.body.preheader ]
  %arrayidx7.prol = getelementptr inbounds i64, i64* %2, i64 %indvars.iv.prol
  %50 = load i64, i64* %arrayidx7.prol, align 8, !tbaa !11
  %arrayidx10.prol = getelementptr inbounds i64, i64* %3, i64 %indvars.iv.prol
  store i64 %50, i64* %arrayidx10.prol, align 8, !tbaa !11
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1
  %prol.iter.next = add i64 %prol.iter, 1
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter281
  br i1 %prol.iter.cmp.not, label %for.body.prol.loopexit, label %for.body.prol, !llvm.loop !44

for.body.prol.loopexit:                           ; preds = %for.body.prol, %for.body.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %for.body.preheader ], [ %indvars.iv.next.prol, %for.body.prol ]
  %51 = icmp ult i64 %49, 3
  br i1 %51, label %for.end, label %for.body

for.body:                                         ; preds = %for.body.prol.loopexit, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %for.body ], [ %indvars.iv.unr, %for.body.prol.loopexit ]
  %arrayidx7 = getelementptr inbounds i64, i64* %2, i64 %indvars.iv
  %52 = load i64, i64* %arrayidx7, align 8, !tbaa !11
  %arrayidx10 = getelementptr inbounds i64, i64* %3, i64 %indvars.iv
  store i64 %52, i64* %arrayidx10, align 8, !tbaa !11
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %arrayidx7.1 = getelementptr inbounds i64, i64* %2, i64 %indvars.iv.next
  %53 = load i64, i64* %arrayidx7.1, align 8, !tbaa !11
  %arrayidx10.1 = getelementptr inbounds i64, i64* %3, i64 %indvars.iv.next
  store i64 %53, i64* %arrayidx10.1, align 8, !tbaa !11
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2
  %arrayidx7.2 = getelementptr inbounds i64, i64* %2, i64 %indvars.iv.next.1
  %54 = load i64, i64* %arrayidx7.2, align 8, !tbaa !11
  %arrayidx10.2 = getelementptr inbounds i64, i64* %3, i64 %indvars.iv.next.1
  store i64 %54, i64* %arrayidx10.2, align 8, !tbaa !11
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3
  %arrayidx7.3 = getelementptr inbounds i64, i64* %2, i64 %indvars.iv.next.2
  %55 = load i64, i64* %arrayidx7.3, align 8, !tbaa !11
  %arrayidx10.3 = getelementptr inbounds i64, i64* %3, i64 %indvars.iv.next.2
  store i64 %55, i64* %arrayidx10.3, align 8, !tbaa !11
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond.not.3, label %for.end, label %for.body, !llvm.loop !45

for.end:                                          ; preds = %for.body.prol.loopexit, %for.body, %middle.block, %for.cond.preheader
  %top12 = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %r, i64 0, i32 1
  store i32 %1, i32* %top12, align 8, !tbaa !4
  %.pre = load i32, i32* %p, align 4, !tbaa !36
  br label %if.end13

if.end13:                                         ; preds = %if.end, %for.end
  %56 = phi i32 [ %1, %for.end ], [ %.pre263, %if.end ]
  %57 = phi i32 [ %.pre, %for.end ], [ %0, %if.end ]
  %d14 = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %r, i64 0, i32 0
  %58 = load i64*, i64** %d14, align 8, !tbaa !10
  %div = sdiv i32 %57, 64
  %rem56 = srem i32 %57, 64
  %sub = add i32 %56, -1
  %cmp18243 = icmp sgt i32 %sub, %div
  br i1 %cmp18243, label %for.body19.lr.ph.lr.ph, label %if.end13.while.cond.preheader_crit_edge

if.end13.while.cond.preheader_crit_edge:          ; preds = %if.end13
  %.pre264 = srem i32 %57, 64
  %.pre265 = sext i32 %div to i64
  br label %while.cond.preheader

for.body19.lr.ph.lr.ph:                           ; preds = %if.end13
  %arrayidx31238 = getelementptr inbounds i32, i32* %p, i64 1
  %sh_prom58 = zext i32 %rem56 to i64
  %tobool64.not = icmp eq i32 %rem56, 0
  %sub57 = sub nsw i32 64, %rem56
  %sh_prom66 = zext i32 %sub57 to i64
  %59 = sext i32 %sub to i64
  %60 = sext i32 %div to i64
  br label %for.body19.lr.ph

for.body19.lr.ph:                                 ; preds = %for.body19.lr.ph.lr.ph, %if.then25
  %indvars.iv256 = phi i64 [ %59, %for.body19.lr.ph.lr.ph ], [ %indvars.iv.next257, %if.then25 ]
  %arrayidx21 = getelementptr inbounds i64, i64* %58, i64 %indvars.iv256
  %61 = sub nsw i64 %indvars.iv256, %60
  %arrayidx62 = getelementptr inbounds i64, i64* %58, i64 %61
  %62 = add nsw i64 %61, -1
  %arrayidx71 = getelementptr inbounds i64, i64* %58, i64 %62
  %63 = trunc i64 %indvars.iv256 to i32
  %64 = load i64, i64* %arrayidx21, align 8, !tbaa !11
  %cmp24273 = icmp eq i64 %64, 0
  br i1 %cmp24273, label %if.then25, label %if.end26.preheader

if.end26.preheader:                               ; preds = %for.body19.lr.ph
  %65 = load i32, i32* %arrayidx31238, align 4, !tbaa !36
  %cmp32.not239 = icmp eq i32 %65, 0
  br label %if.end26

while.cond.preheader.loopexit250:                 ; preds = %if.then25
  %66 = trunc i64 %indvars.iv.next257 to i32
  br label %while.cond.preheader

while.cond.preheader:                             ; preds = %if.end13.while.cond.preheader_crit_edge, %while.cond.preheader.loopexit250
  %idxprom78.pre-phi = phi i64 [ %.pre265, %if.end13.while.cond.preheader_crit_edge ], [ %60, %while.cond.preheader.loopexit250 ]
  %rem77.pre-phi = phi i32 [ %.pre264, %if.end13.while.cond.preheader_crit_edge ], [ %rem56, %while.cond.preheader.loopexit250 ]
  %j.1.ph.lcssa = phi i32 [ %sub, %if.end13.while.cond.preheader_crit_edge ], [ %66, %while.cond.preheader.loopexit250 ]
  %arrayidx79 = getelementptr inbounds i64, i64* %58, i64 %idxprom78.pre-phi
  %cmp75 = icmp eq i32 %j.1.ph.lcssa, %div
  br i1 %cmp75, label %while.body.lr.ph, label %while.end

while.body.lr.ph:                                 ; preds = %while.cond.preheader
  %sh_prom80 = zext i32 %rem77.pre-phi to i64
  %tobool86.not = icmp eq i32 %rem77.pre-phi, 0
  %sub85 = sub nsw i32 64, %rem77.pre-phi
  %sh_prom90 = zext i32 %sub85 to i64
  %67 = lshr i64 -1, %sh_prom90
  %arrayidx103247 = getelementptr inbounds i32, i32* %p, i64 1
  %68 = load i64, i64* %arrayidx79, align 8, !tbaa !11
  %shr81274 = lshr i64 %68, %sh_prom80
  %cmp82275 = icmp eq i64 %shr81274, 0
  br i1 %cmp82275, label %while.end, label %if.end84.preheader

if.end84.preheader:                               ; preds = %while.body.lr.ph
  %69 = load i32, i32* %arrayidx103247, align 4, !tbaa !36
  %cmp104.not248 = icmp eq i32 %69, 0
  br label %if.end84

if.then25:                                        ; preds = %if.end73, %for.body19.lr.ph
  %indvars.iv.next257 = add nsw i64 %indvars.iv256, -1
  %cmp18 = icmp sgt i64 %indvars.iv.next257, %60
  br i1 %cmp18, label %for.body19.lr.ph, label %while.cond.preheader.loopexit250, !llvm.loop !46

if.end26:                                         ; preds = %if.end26.preheader, %if.end73
  %70 = phi i64 [ %77, %if.end73 ], [ %64, %if.end26.preheader ]
  store i64 0, i64* %arrayidx21, align 8, !tbaa !11
  br i1 %cmp32.not239, label %for.end54, label %for.body33

for.body33:                                       ; preds = %if.end26, %for.inc52
  %indvars.iv253 = phi i64 [ %indvars.iv.next254, %for.inc52 ], [ 1, %if.end26 ]
  %71 = phi i32 [ %74, %for.inc52 ], [ %65, %if.end26 ]
  %sub37 = sub nsw i32 %57, %71
  %rem = srem i32 %sub37, 64
  %div39.neg = sdiv i32 %sub37, -64
  %sh_prom = zext i32 %rem to i64
  %shr = lshr i64 %70, %sh_prom
  %sub40 = add i32 %div39.neg, %63
  %idxprom41 = sext i32 %sub40 to i64
  %arrayidx42 = getelementptr inbounds i64, i64* %58, i64 %idxprom41
  %72 = load i64, i64* %arrayidx42, align 8, !tbaa !11
  %xor = xor i64 %72, %shr
  store i64 %xor, i64* %arrayidx42, align 8, !tbaa !11
  %tobool43.not = icmp eq i32 %rem, 0
  br i1 %tobool43.not, label %for.inc52, label %if.then44

if.then44:                                        ; preds = %for.body33
  %sub38 = sub nsw i32 64, %rem
  %sh_prom45 = zext i32 %sub38 to i64
  %shl = shl i64 %70, %sh_prom45
  %sub47 = add nsw i32 %sub40, -1
  %idxprom48 = sext i32 %sub47 to i64
  %arrayidx49 = getelementptr inbounds i64, i64* %58, i64 %idxprom48
  %73 = load i64, i64* %arrayidx49, align 8, !tbaa !11
  %xor50 = xor i64 %73, %shl
  store i64 %xor50, i64* %arrayidx49, align 8, !tbaa !11
  br label %for.inc52

for.inc52:                                        ; preds = %for.body33, %if.then44
  %indvars.iv.next254 = add nuw i64 %indvars.iv253, 1
  %arrayidx31 = getelementptr inbounds i32, i32* %p, i64 %indvars.iv.next254
  %74 = load i32, i32* %arrayidx31, align 4, !tbaa !36
  %cmp32.not = icmp eq i32 %74, 0
  br i1 %cmp32.not, label %for.end54, label %for.body33, !llvm.loop !47

for.end54:                                        ; preds = %for.inc52, %if.end26
  %shr59 = lshr i64 %70, %sh_prom58
  %75 = load i64, i64* %arrayidx62, align 8, !tbaa !11
  %xor63 = xor i64 %75, %shr59
  store i64 %xor63, i64* %arrayidx62, align 8, !tbaa !11
  br i1 %tobool64.not, label %if.end73, label %if.then65

if.then65:                                        ; preds = %for.end54
  %shl67 = shl i64 %70, %sh_prom66
  %76 = load i64, i64* %arrayidx71, align 8, !tbaa !11
  %xor72 = xor i64 %76, %shl67
  store i64 %xor72, i64* %arrayidx71, align 8, !tbaa !11
  br label %if.end73

if.end73:                                         ; preds = %if.then65, %for.end54
  %77 = load i64, i64* %arrayidx21, align 8, !tbaa !11
  %cmp24 = icmp eq i64 %77, 0
  br i1 %cmp24, label %if.then25, label %if.end26, !llvm.loop !46

while.cond.loopexit:                              ; preds = %if.end126, %if.end84
  %78 = load i64, i64* %arrayidx79, align 8, !tbaa !11
  %shr81 = lshr i64 %78, %sh_prom80
  %cmp82 = icmp eq i64 %shr81, 0
  br i1 %cmp82, label %while.end, label %if.end84, !llvm.loop !48

if.end84:                                         ; preds = %if.end84.preheader, %while.cond.loopexit
  %shr81276 = phi i64 [ %shr81, %while.cond.loopexit ], [ %shr81274, %if.end84.preheader ]
  %79 = phi i64 [ %78, %while.cond.loopexit ], [ %68, %if.end84.preheader ]
  %shr93 = and i64 %79, %67
  %storemerge = select i1 %tobool86.not, i64 0, i64 %shr93
  store i64 %storemerge, i64* %arrayidx79, align 8, !tbaa !11
  %80 = load i64, i64* %58, align 8, !tbaa !11
  %xor100 = xor i64 %80, %shr81276
  store i64 %xor100, i64* %58, align 8, !tbaa !11
  br i1 %cmp104.not248, label %while.cond.loopexit, label %for.body105

for.body105:                                      ; preds = %if.end84, %if.end126
  %indvars.iv260 = phi i64 [ %indvars.iv.next261, %if.end126 ], [ 1, %if.end84 ]
  %81 = phi i32 [ %84, %if.end126 ], [ %69, %if.end84 ]
  %div108 = sdiv i32 %81, 64
  %rem111 = srem i32 %81, 64
  %sh_prom113 = zext i32 %rem111 to i64
  %shl114 = shl i64 %shr81276, %sh_prom113
  %idxprom115 = sext i32 %div108 to i64
  %arrayidx116 = getelementptr inbounds i64, i64* %58, i64 %idxprom115
  %82 = load i64, i64* %arrayidx116, align 8, !tbaa !11
  %xor117 = xor i64 %82, %shl114
  store i64 %xor117, i64* %arrayidx116, align 8, !tbaa !11
  %tobool118.not = icmp eq i32 %rem111, 0
  br i1 %tobool118.not, label %if.end126, label %land.lhs.true

land.lhs.true:                                    ; preds = %for.body105
  %sub112 = sub nsw i32 64, %rem111
  %sh_prom119 = zext i32 %sub112 to i64
  %shr120 = lshr i64 %shr81276, %sh_prom119
  %tobool121.not = icmp eq i64 %shr120, 0
  br i1 %tobool121.not, label %if.end126, label %if.then122

if.then122:                                       ; preds = %land.lhs.true
  %add = add nsw i32 %div108, 1
  %idxprom123 = sext i32 %add to i64
  %arrayidx124 = getelementptr inbounds i64, i64* %58, i64 %idxprom123
  %83 = load i64, i64* %arrayidx124, align 8, !tbaa !11
  %xor125 = xor i64 %83, %shr120
  store i64 %xor125, i64* %arrayidx124, align 8, !tbaa !11
  br label %if.end126

if.end126:                                        ; preds = %if.then122, %land.lhs.true, %for.body105
  %indvars.iv.next261 = add nuw i64 %indvars.iv260, 1
  %arrayidx103 = getelementptr inbounds i32, i32* %p, i64 %indvars.iv.next261
  %84 = load i32, i32* %arrayidx103, align 4, !tbaa !36
  %cmp104.not = icmp eq i32 %84, 0
  br i1 %cmp104.not, label %while.cond.loopexit, label %for.body105, !llvm.loop !49

while.end:                                        ; preds = %while.cond.loopexit, %while.body.lr.ph, %while.cond.preheader
  tail call void @bn_correct_top(%struct.bignum_st* noundef %r) #4
  br label %cleanup

cleanup:                                          ; preds = %if.then2, %while.end, %if.then
  %retval.0 = phi i32 [ 1, %if.then ], [ 1, %while.end ], [ 0, %if.then2 ]
  ret i32 %retval.0
}

declare void @BN_zero_ex(%struct.bignum_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @BN_GF2m_mod(%struct.bignum_st* noundef %r, %struct.bignum_st* noundef %a, %struct.bignum_st* noundef %p) local_unnamed_addr #0 {
entry:
  %arr = alloca [6 x i32], align 16
  %0 = bitcast [6 x i32]* %arr to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %0) #5
  %arraydecay = getelementptr inbounds [6 x i32], [6 x i32]* %arr, i64 0, i64 0
  %call = call i32 @BN_GF2m_poly2arr(%struct.bignum_st* noundef %p, i32* noundef nonnull %arraydecay, i32 noundef 6) #6
  %tobool = icmp eq i32 %call, 0
  %cmp = icmp sgt i32 %call, 6
  %or.cond = or i1 %tobool, %cmp
  br i1 %or.cond, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #4
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 398, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @__func__.BN_GF2m_mod, i64 0, i64 0)) #4
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 3, i32 noundef 106, i8* noundef null) #4
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = call i32 @BN_GF2m_mod_arr(%struct.bignum_st* noundef %r, %struct.bignum_st* noundef %a, i32* noundef nonnull %arraydecay) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ %call2, %if.end ]
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %0) #5
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @BN_GF2m_poly2arr(%struct.bignum_st* noundef %a, i32* nocapture noundef writeonly %p, i32 noundef %max) local_unnamed_addr #0 {
entry:
  %call = tail call i32 @BN_is_zero(%struct.bignum_st* noundef %a) #4
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %top = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %a, i64 0, i32 1
  %0 = load i32, i32* %top, align 8, !tbaa !4
  %cmp60 = icmp sgt i32 %0, 0
  br i1 %cmp60, label %for.body.lr.ph, label %for.end20

for.body.lr.ph:                                   ; preds = %if.end
  %d = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %a, i64 0, i32 0
  %1 = load i64*, i64** %d, align 8, !tbaa !10
  %2 = zext i32 %0 to i64
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.inc18
  %indvars.iv = phi i64 [ %2, %for.body.lr.ph ], [ %indvars.iv.next, %for.inc18 ]
  %k.061 = phi i32 [ 0, %for.body.lr.ph ], [ %k.3, %for.inc18 ]
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %idxprom52 = and i64 %indvars.iv.next, 4294967295
  %arrayidx = getelementptr inbounds i64, i64* %1, i64 %idxprom52
  %3 = load i64, i64* %arrayidx, align 8, !tbaa !11
  %tobool1.not = icmp eq i64 %3, 0
  br i1 %tobool1.not, label %for.inc18, label %for.cond4.preheader

for.cond4.preheader:                              ; preds = %for.body
  %indvars = trunc i64 %indvars.iv.next to i32
  %mul = shl nsw i32 %indvars, 6
  br label %for.body6

for.body6:                                        ; preds = %for.cond4.preheader, %if.end17
  %mask.058 = phi i64 [ -9223372036854775808, %for.cond4.preheader ], [ %shr, %if.end17 ]
  %k.156 = phi i32 [ %k.061, %for.cond4.preheader ], [ %k.2, %if.end17 ]
  %j.053 = phi i32 [ 63, %for.cond4.preheader ], [ %dec, %if.end17 ]
  %and = and i64 %mask.058, %3
  %tobool10.not = icmp eq i64 %and, 0
  br i1 %tobool10.not, label %if.end17, label %if.then11

if.then11:                                        ; preds = %for.body6
  %cmp12 = icmp slt i32 %k.156, %max
  br i1 %cmp12, label %if.then13, label %if.end16

if.then13:                                        ; preds = %if.then11
  %add = add nsw i32 %j.053, %mul
  %idxprom14 = sext i32 %k.156 to i64
  %arrayidx15 = getelementptr inbounds i32, i32* %p, i64 %idxprom14
  store i32 %add, i32* %arrayidx15, align 4, !tbaa !36
  br label %if.end16

if.end16:                                         ; preds = %if.then13, %if.then11
  %inc = add nsw i32 %k.156, 1
  br label %if.end17

if.end17:                                         ; preds = %if.end16, %for.body6
  %k.2 = phi i32 [ %inc, %if.end16 ], [ %k.156, %for.body6 ]
  %shr = lshr i64 %mask.058, 1
  %dec = add nsw i32 %j.053, -1
  %cmp5.not = icmp eq i32 %j.053, 0
  br i1 %cmp5.not, label %for.inc18, label %for.body6, !llvm.loop !50

for.inc18:                                        ; preds = %if.end17, %for.body
  %k.3 = phi i32 [ %k.061, %for.body ], [ %k.2, %if.end17 ]
  %cmp = icmp sgt i64 %indvars.iv, 1
  br i1 %cmp, label %for.body, label %for.end20, !llvm.loop !51

for.end20:                                        ; preds = %for.inc18, %if.end
  %k.0.lcssa = phi i32 [ 0, %if.end ], [ %k.3, %for.inc18 ]
  %cmp21 = icmp slt i32 %k.0.lcssa, %max
  br i1 %cmp21, label %if.then22, label %cleanup

if.then22:                                        ; preds = %for.end20
  %idxprom23 = sext i32 %k.0.lcssa to i64
  %arrayidx24 = getelementptr inbounds i32, i32* %p, i64 %idxprom23
  store i32 -1, i32* %arrayidx24, align 4, !tbaa !36
  %inc25 = add nsw i32 %k.0.lcssa, 1
  br label %cleanup

cleanup:                                          ; preds = %for.end20, %if.then22, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ %inc25, %if.then22 ], [ %k.0.lcssa, %for.end20 ]
  ret i32 %retval.0
}

declare void @ERR_new() local_unnamed_addr #2

declare void @ERR_set_debug(i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #2

declare void @ERR_set_error(i32 noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @BN_GF2m_mod_mul_arr(%struct.bignum_st* noundef %r, %struct.bignum_st* noundef readonly %a, %struct.bignum_st* noundef readonly %b, i32* nocapture noundef readonly %p, %struct.bignum_ctx* noundef %ctx) local_unnamed_addr #0 {
entry:
  %zz = alloca [4 x i64], align 16
  %0 = bitcast [4 x i64]* %zz to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %0) #5
  %cmp = icmp eq %struct.bignum_st* %a, %b
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = tail call i32 @BN_GF2m_mod_sqr_arr(%struct.bignum_st* noundef %r, %struct.bignum_st* noundef %a, i32* noundef %p, %struct.bignum_ctx* noundef %ctx) #6
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @BN_CTX_start(%struct.bignum_ctx* noundef %ctx) #4
  %call1 = tail call %struct.bignum_st* @BN_CTX_get(%struct.bignum_ctx* noundef %ctx) #4
  %cmp2 = icmp eq %struct.bignum_st* %call1, null
  br i1 %cmp2, label %err, label %if.end4

if.end4:                                          ; preds = %if.end
  %top = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %a, i64 0, i32 1
  %1 = load i32, i32* %top, align 8, !tbaa !4
  %top5 = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %b, i64 0, i32 1
  %2 = load i32, i32* %top5, align 8, !tbaa !4
  %add = add i32 %1, 4
  %add6 = add i32 %add, %2
  %call7 = tail call %struct.bignum_st* @bn_wexpand(%struct.bignum_st* noundef nonnull %call1, i32 noundef %add6) #4
  %tobool.not = icmp eq %struct.bignum_st* %call7, null
  br i1 %tobool.not, label %err, label %if.end9

if.end9:                                          ; preds = %if.end4
  %top10 = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %call1, i64 0, i32 1
  store i32 %add6, i32* %top10, align 8, !tbaa !4
  %cmp11127 = icmp sgt i32 %add6, 0
  br i1 %cmp11127, label %for.body.lr.ph, label %for.cond12.preheader

for.body.lr.ph:                                   ; preds = %if.end9
  %d = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %call1, i64 0, i32 0
  %3 = load i64*, i64** %d, align 8, !tbaa !10
  %wide.trip.count = zext i32 %add6 to i64
  %min.iters.check = icmp ult i32 %add6, 4
  br i1 %min.iters.check, label %for.body.preheader, label %vector.ph

vector.ph:                                        ; preds = %for.body.lr.ph
  %n.vec = and i64 %wide.trip.count, 4294967292
  %4 = add nsw i64 %n.vec, -4
  %5 = lshr exact i64 %4, 2
  %6 = add nuw nsw i64 %5, 1
  %xtraiter = and i64 %6, 7
  %7 = icmp ult i64 %4, 28
  br i1 %7, label %middle.block.unr-lcssa, label %vector.ph.new

vector.ph.new:                                    ; preds = %vector.ph
  %unroll_iter = and i64 %6, 9223372036854775800
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph.new
  %index = phi i64 [ 0, %vector.ph.new ], [ %index.next.7, %vector.body ]
  %niter = phi i64 [ 0, %vector.ph.new ], [ %niter.next.7, %vector.body ]
  %8 = getelementptr inbounds i64, i64* %3, i64 %index
  %9 = bitcast i64* %8 to <2 x i64>*
  store <2 x i64> zeroinitializer, <2 x i64>* %9, align 8, !tbaa !11
  %10 = getelementptr inbounds i64, i64* %8, i64 2
  %11 = bitcast i64* %10 to <2 x i64>*
  store <2 x i64> zeroinitializer, <2 x i64>* %11, align 8, !tbaa !11
  %index.next = or i64 %index, 4
  %12 = getelementptr inbounds i64, i64* %3, i64 %index.next
  %13 = bitcast i64* %12 to <2 x i64>*
  store <2 x i64> zeroinitializer, <2 x i64>* %13, align 8, !tbaa !11
  %14 = getelementptr inbounds i64, i64* %12, i64 2
  %15 = bitcast i64* %14 to <2 x i64>*
  store <2 x i64> zeroinitializer, <2 x i64>* %15, align 8, !tbaa !11
  %index.next.1 = or i64 %index, 8
  %16 = getelementptr inbounds i64, i64* %3, i64 %index.next.1
  %17 = bitcast i64* %16 to <2 x i64>*
  store <2 x i64> zeroinitializer, <2 x i64>* %17, align 8, !tbaa !11
  %18 = getelementptr inbounds i64, i64* %16, i64 2
  %19 = bitcast i64* %18 to <2 x i64>*
  store <2 x i64> zeroinitializer, <2 x i64>* %19, align 8, !tbaa !11
  %index.next.2 = or i64 %index, 12
  %20 = getelementptr inbounds i64, i64* %3, i64 %index.next.2
  %21 = bitcast i64* %20 to <2 x i64>*
  store <2 x i64> zeroinitializer, <2 x i64>* %21, align 8, !tbaa !11
  %22 = getelementptr inbounds i64, i64* %20, i64 2
  %23 = bitcast i64* %22 to <2 x i64>*
  store <2 x i64> zeroinitializer, <2 x i64>* %23, align 8, !tbaa !11
  %index.next.3 = or i64 %index, 16
  %24 = getelementptr inbounds i64, i64* %3, i64 %index.next.3
  %25 = bitcast i64* %24 to <2 x i64>*
  store <2 x i64> zeroinitializer, <2 x i64>* %25, align 8, !tbaa !11
  %26 = getelementptr inbounds i64, i64* %24, i64 2
  %27 = bitcast i64* %26 to <2 x i64>*
  store <2 x i64> zeroinitializer, <2 x i64>* %27, align 8, !tbaa !11
  %index.next.4 = or i64 %index, 20
  %28 = getelementptr inbounds i64, i64* %3, i64 %index.next.4
  %29 = bitcast i64* %28 to <2 x i64>*
  store <2 x i64> zeroinitializer, <2 x i64>* %29, align 8, !tbaa !11
  %30 = getelementptr inbounds i64, i64* %28, i64 2
  %31 = bitcast i64* %30 to <2 x i64>*
  store <2 x i64> zeroinitializer, <2 x i64>* %31, align 8, !tbaa !11
  %index.next.5 = or i64 %index, 24
  %32 = getelementptr inbounds i64, i64* %3, i64 %index.next.5
  %33 = bitcast i64* %32 to <2 x i64>*
  store <2 x i64> zeroinitializer, <2 x i64>* %33, align 8, !tbaa !11
  %34 = getelementptr inbounds i64, i64* %32, i64 2
  %35 = bitcast i64* %34 to <2 x i64>*
  store <2 x i64> zeroinitializer, <2 x i64>* %35, align 8, !tbaa !11
  %index.next.6 = or i64 %index, 28
  %36 = getelementptr inbounds i64, i64* %3, i64 %index.next.6
  %37 = bitcast i64* %36 to <2 x i64>*
  store <2 x i64> zeroinitializer, <2 x i64>* %37, align 8, !tbaa !11
  %38 = getelementptr inbounds i64, i64* %36, i64 2
  %39 = bitcast i64* %38 to <2 x i64>*
  store <2 x i64> zeroinitializer, <2 x i64>* %39, align 8, !tbaa !11
  %index.next.7 = add nuw i64 %index, 32
  %niter.next.7 = add i64 %niter, 8
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %middle.block.unr-lcssa, label %vector.body, !llvm.loop !52

middle.block.unr-lcssa:                           ; preds = %vector.body, %vector.ph
  %index.unr = phi i64 [ 0, %vector.ph ], [ %index.next.7, %vector.body ]
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %middle.block, label %vector.body.epil

vector.body.epil:                                 ; preds = %middle.block.unr-lcssa, %vector.body.epil
  %index.epil = phi i64 [ %index.next.epil, %vector.body.epil ], [ %index.unr, %middle.block.unr-lcssa ]
  %epil.iter = phi i64 [ %epil.iter.next, %vector.body.epil ], [ 0, %middle.block.unr-lcssa ]
  %40 = getelementptr inbounds i64, i64* %3, i64 %index.epil
  %41 = bitcast i64* %40 to <2 x i64>*
  store <2 x i64> zeroinitializer, <2 x i64>* %41, align 8, !tbaa !11
  %42 = getelementptr inbounds i64, i64* %40, i64 2
  %43 = bitcast i64* %42 to <2 x i64>*
  store <2 x i64> zeroinitializer, <2 x i64>* %43, align 8, !tbaa !11
  %index.next.epil = add nuw i64 %index.epil, 4
  %epil.iter.next = add i64 %epil.iter, 1
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %middle.block, label %vector.body.epil, !llvm.loop !53

middle.block:                                     ; preds = %vector.body.epil, %middle.block.unr-lcssa
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %for.cond12.preheader, label %for.body.preheader

for.body.preheader:                               ; preds = %for.body.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %for.body.lr.ph ], [ %n.vec, %middle.block ]
  br label %for.body

for.cond12.preheader:                             ; preds = %for.body, %middle.block, %if.end9
  %44 = load i32, i32* %top5, align 8, !tbaa !4
  %cmp14132 = icmp sgt i32 %44, 0
  br i1 %cmp14132, label %for.body15.lr.ph, label %for.end62

for.body15.lr.ph:                                 ; preds = %for.cond12.preheader
  %d16 = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %b, i64 0, i32 0
  %d30 = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %a, i64 0, i32 0
  %arraydecay = getelementptr inbounds [4 x i64], [4 x i64]* %zz, i64 0, i64 0
  %d49 = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %call1, i64 0, i32 0
  %arrayidx48.1 = getelementptr inbounds [4 x i64], [4 x i64]* %zz, i64 0, i64 1
  %arrayidx48.2 = getelementptr inbounds [4 x i64], [4 x i64]* %zz, i64 0, i64 2
  %arrayidx48.3 = getelementptr inbounds [4 x i64], [4 x i64]* %zz, i64 0, i64 3
  br label %for.body15

for.body:                                         ; preds = %for.body.preheader, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ %indvars.iv.ph, %for.body.preheader ]
  %arrayidx = getelementptr inbounds i64, i64* %3, i64 %indvars.iv
  store i64 0, i64* %arrayidx, align 8, !tbaa !11
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %for.cond12.preheader, label %for.body, !llvm.loop !54

for.body15:                                       ; preds = %for.body15.lr.ph, %for.inc60
  %45 = phi i32 [ %44, %for.body15.lr.ph ], [ %73, %for.inc60 ]
  %indvars.iv146 = phi i64 [ 0, %for.body15.lr.ph ], [ %indvars.iv.next147, %for.inc60 ]
  %46 = load i64*, i64** %d16, align 8, !tbaa !10
  %arrayidx18 = getelementptr inbounds i64, i64* %46, i64 %indvars.iv146
  %47 = load i64, i64* %arrayidx18, align 8, !tbaa !11
  %48 = or i64 %indvars.iv146, 1
  %49 = zext i32 %45 to i64
  %cmp21 = icmp eq i64 %48, %49
  br i1 %cmp21, label %cond.end, label %cond.false

cond.false:                                       ; preds = %for.body15
  %arrayidx25 = getelementptr inbounds i64, i64* %46, i64 %48
  %50 = load i64, i64* %arrayidx25, align 8, !tbaa !11
  br label %cond.end

cond.end:                                         ; preds = %for.body15, %cond.false
  %cond = phi i64 [ %50, %cond.false ], [ 0, %for.body15 ]
  %51 = load i32, i32* %top, align 8, !tbaa !4
  %cmp28130 = icmp sgt i32 %51, 0
  br i1 %cmp28130, label %for.body29, label %for.inc60

for.body29:                                       ; preds = %cond.end, %cond.end42
  %indvars.iv141 = phi i64 [ %indvars.iv.next142, %cond.end42 ], [ 0, %cond.end ]
  %52 = phi i32 [ %71, %cond.end42 ], [ %51, %cond.end ]
  %53 = load i64*, i64** %d30, align 8, !tbaa !10
  %arrayidx32 = getelementptr inbounds i64, i64* %53, i64 %indvars.iv141
  %54 = load i64, i64* %arrayidx32, align 8, !tbaa !11
  %55 = or i64 %indvars.iv141, 1
  %56 = zext i32 %52 to i64
  %cmp35 = icmp eq i64 %55, %56
  br i1 %cmp35, label %cond.end42, label %cond.false37

cond.false37:                                     ; preds = %for.body29
  %arrayidx41 = getelementptr inbounds i64, i64* %53, i64 %55
  %57 = load i64, i64* %arrayidx41, align 8, !tbaa !11
  br label %cond.end42

cond.end42:                                       ; preds = %for.body29, %cond.false37
  %cond43 = phi i64 [ %57, %cond.false37 ], [ 0, %for.body29 ]
  call void @bn_GF2m_mul_2x2(i64* noundef nonnull %arraydecay, i64 noundef %cond43, i64 noundef %54, i64 noundef %cond, i64 noundef %47) #4
  %58 = load i64*, i64** %d49, align 8, !tbaa !10
  %59 = add nuw nsw i64 %indvars.iv141, %indvars.iv146
  %60 = load i64, i64* %arraydecay, align 16, !tbaa !11
  %arrayidx53 = getelementptr inbounds i64, i64* %58, i64 %59
  %61 = load i64, i64* %arrayidx53, align 8, !tbaa !11
  %xor = xor i64 %61, %60
  store i64 %xor, i64* %arrayidx53, align 8, !tbaa !11
  %62 = load i64, i64* %arrayidx48.1, align 8, !tbaa !11
  %63 = or i64 %59, 1
  %arrayidx53.1 = getelementptr inbounds i64, i64* %58, i64 %63
  %64 = load i64, i64* %arrayidx53.1, align 8, !tbaa !11
  %xor.1 = xor i64 %64, %62
  store i64 %xor.1, i64* %arrayidx53.1, align 8, !tbaa !11
  %65 = load i64, i64* %arrayidx48.2, align 16, !tbaa !11
  %66 = add nuw nsw i64 %59, 2
  %arrayidx53.2 = getelementptr inbounds i64, i64* %58, i64 %66
  %67 = load i64, i64* %arrayidx53.2, align 8, !tbaa !11
  %xor.2 = xor i64 %67, %65
  store i64 %xor.2, i64* %arrayidx53.2, align 8, !tbaa !11
  %68 = load i64, i64* %arrayidx48.3, align 8, !tbaa !11
  %69 = add nuw nsw i64 %59, 3
  %arrayidx53.3 = getelementptr inbounds i64, i64* %58, i64 %69
  %70 = load i64, i64* %arrayidx53.3, align 8, !tbaa !11
  %xor.3 = xor i64 %70, %68
  store i64 %xor.3, i64* %arrayidx53.3, align 8, !tbaa !11
  %indvars.iv.next142 = add nuw i64 %indvars.iv141, 2
  %71 = load i32, i32* %top, align 8, !tbaa !4
  %72 = trunc i64 %indvars.iv.next142 to i32
  %cmp28 = icmp sgt i32 %71, %72
  br i1 %cmp28, label %for.body29, label %for.inc60.loopexit, !llvm.loop !56

for.inc60.loopexit:                               ; preds = %cond.end42
  %.pre = load i32, i32* %top5, align 8, !tbaa !4
  br label %for.inc60

for.inc60:                                        ; preds = %for.inc60.loopexit, %cond.end
  %73 = phi i32 [ %.pre, %for.inc60.loopexit ], [ %45, %cond.end ]
  %indvars.iv.next147 = add nuw i64 %indvars.iv146, 2
  %74 = trunc i64 %indvars.iv.next147 to i32
  %cmp14 = icmp sgt i32 %73, %74
  br i1 %cmp14, label %for.body15, label %for.end62, !llvm.loop !57

for.end62:                                        ; preds = %for.inc60, %for.cond12.preheader
  call void @bn_correct_top(%struct.bignum_st* noundef nonnull %call1) #4
  %call63 = call i32 @BN_GF2m_mod_arr(%struct.bignum_st* noundef %r, %struct.bignum_st* noundef nonnull %call1, i32* noundef %p) #6
  %tobool64.not = icmp ne i32 %call63, 0
  %spec.select = zext i1 %tobool64.not to i32
  br label %err

err:                                              ; preds = %for.end62, %if.end4, %if.end
  %ret.0 = phi i32 [ 0, %if.end ], [ 0, %if.end4 ], [ %spec.select, %for.end62 ]
  call void @BN_CTX_end(%struct.bignum_ctx* noundef %ctx) #4
  br label %cleanup

cleanup:                                          ; preds = %err, %if.then
  %retval.0 = phi i32 [ %call, %if.then ], [ %ret.0, %err ]
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #5
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @BN_GF2m_mod_sqr_arr(%struct.bignum_st* noundef %r, %struct.bignum_st* nocapture noundef readonly %a, i32* nocapture noundef readonly %p, %struct.bignum_ctx* noundef %ctx) local_unnamed_addr #0 {
entry:
  tail call void @BN_CTX_start(%struct.bignum_ctx* noundef %ctx) #4
  %call = tail call %struct.bignum_st* @BN_CTX_get(%struct.bignum_ctx* noundef %ctx) #4
  %cmp = icmp eq %struct.bignum_st* %call, null
  br i1 %cmp, label %err, label %if.end

if.end:                                           ; preds = %entry
  %top = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %a, i64 0, i32 1
  %0 = load i32, i32* %top, align 8, !tbaa !4
  %mul = shl nsw i32 %0, 1
  %call1 = tail call %struct.bignum_st* @bn_wexpand(%struct.bignum_st* noundef nonnull %call, i32 noundef %mul) #4
  %tobool.not = icmp eq %struct.bignum_st* %call1, null
  br i1 %tobool.not, label %err, label %if.end3

if.end3:                                          ; preds = %if.end
  %1 = load i32, i32* %top, align 8, !tbaa !4
  %cmp5599 = icmp sgt i32 %1, 0
  br i1 %cmp5599, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %if.end3
  %d = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %a, i64 0, i32 0
  %2 = load i64*, i64** %d, align 8, !tbaa !10
  %d221 = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %call, i64 0, i32 0
  %3 = load i64*, i64** %d221, align 8, !tbaa !10
  %4 = zext i32 %1 to i64
  %min.iters.check = icmp eq i32 %1, 1
  br i1 %min.iters.check, label %for.body.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %for.body.lr.ph
  %5 = add nsw i64 %4, -1
  %6 = shl i32 %1, 1
  %7 = add i32 %6, -1
  %8 = trunc i64 %5 to i32
  %mul602 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %8, i32 2)
  %mul.result = extractvalue { i32, i1 } %mul602, 0
  %mul.overflow = extractvalue { i32, i1 } %mul602, 1
  %9 = sub i32 %7, %mul.result
  %10 = icmp sgt i32 %9, %7
  %11 = or i1 %10, %mul.overflow
  %12 = icmp ugt i64 %5, 4294967295
  %13 = or i1 %11, %12
  %14 = add i32 %6, -2
  %15 = trunc i64 %5 to i32
  %mul603 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %15, i32 2)
  %mul.result604 = extractvalue { i32, i1 } %mul603, 0
  %mul.overflow605 = extractvalue { i32, i1 } %mul603, 1
  %16 = sub i32 %14, %mul.result604
  %17 = icmp sgt i32 %16, %14
  %18 = or i1 %17, %mul.overflow605
  %19 = icmp ugt i64 %5, 4294967295
  %20 = or i1 %18, %19
  %21 = sext i32 %14 to i64
  %22 = or i64 %21, 1
  %scevgep = getelementptr i64, i64* %3, i64 %22
  %mul606 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %5, i64 16)
  %mul.result607 = extractvalue { i64, i1 } %mul606, 0
  %mul.overflow608 = extractvalue { i64, i1 } %mul606, 1
  %scevgep609 = bitcast i64* %scevgep to i8*
  %23 = sub i64 0, %mul.result607
  %24 = getelementptr i8, i8* %scevgep609, i64 %23
  %25 = icmp ugt i8* %24, %scevgep609
  %26 = or i1 %25, %mul.overflow608
  %scevgep610 = getelementptr i64, i64* %3, i64 %21
  %mul611 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %5, i64 16)
  %mul.result612 = extractvalue { i64, i1 } %mul611, 0
  %mul.overflow613 = extractvalue { i64, i1 } %mul611, 1
  %scevgep610614 = bitcast i64* %scevgep610 to i8*
  %27 = sub i64 0, %mul.result612
  %28 = getelementptr i8, i8* %scevgep610614, i64 %27
  %29 = icmp ugt i8* %28, %scevgep610614
  %30 = or i1 %29, %mul.overflow613
  %31 = or i1 %13, %20
  %32 = or i1 %31, %26
  %33 = or i1 %32, %30
  br i1 %33, label %for.body.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %scevgep615 = getelementptr i64, i64* %2, i64 %4
  %34 = shl i32 %1, 1
  %35 = add i32 %34, -2
  %36 = sext i32 %35 to i64
  %37 = add nsw i64 %36, 2
  %.neg = mul nsw i64 %4, -2
  %38 = add nsw i64 %.neg, %37
  %scevgep617 = getelementptr i64, i64* %3, i64 %38
  %39 = add nsw i64 %36, 2
  %scevgep619 = getelementptr i64, i64* %3, i64 %39
  %bound0 = icmp ult i64* %2, %scevgep619
  %bound1 = icmp ult i64* %scevgep617, %scevgep615
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %for.body.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %4, 4294967294
  %ind.end = and i64 %4, 1
  %40 = getelementptr inbounds i64, i64* %2, i64 -1
  %41 = getelementptr inbounds i64, i64* %3, i64 -2
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %42 = xor i64 %index, -1
  %43 = add i64 %42, %4
  %44 = getelementptr inbounds i64, i64* %40, i64 %43
  %45 = bitcast i64* %44 to <2 x i64>*
  %wide.load = load <2 x i64>, <2 x i64>* %45, align 8, !tbaa !11, !alias.scope !58, !noalias !61
  %reverse = shufflevector <2 x i64> %wide.load, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %46 = lshr <2 x i64> %reverse, <i64 60, i64 60>
  %47 = shl nuw nsw <2 x i64> %46, <i64 3, i64 3>
  %48 = and <2 x i64> %47, <i64 64, i64 64>
  %49 = shl nuw nsw <2 x i64> %46, <i64 2, i64 2>
  %50 = and <2 x i64> %49, <i64 16, i64 16>
  %51 = shl nuw nsw <2 x i64> %46, <i64 1, i64 1>
  %52 = and <2 x i64> %51, <i64 4, i64 4>
  %53 = and <2 x i64> %46, <i64 1, i64 1>
  %54 = or <2 x i64> %50, %53
  %55 = or <2 x i64> %54, %48
  %56 = or <2 x i64> %55, %52
  %57 = shl nuw nsw <2 x i64> %56, <i64 56, i64 56>
  %58 = lshr <2 x i64> %reverse, <i64 56, i64 56>
  %59 = shl nuw nsw <2 x i64> %58, <i64 3, i64 3>
  %60 = and <2 x i64> %59, <i64 64, i64 64>
  %61 = shl nuw nsw <2 x i64> %58, <i64 2, i64 2>
  %62 = and <2 x i64> %61, <i64 16, i64 16>
  %63 = shl nuw nsw <2 x i64> %58, <i64 1, i64 1>
  %64 = and <2 x i64> %63, <i64 4, i64 4>
  %65 = and <2 x i64> %58, <i64 1, i64 1>
  %66 = or <2 x i64> %62, %65
  %67 = or <2 x i64> %66, %60
  %68 = or <2 x i64> %67, %64
  %69 = shl nuw nsw <2 x i64> %68, <i64 48, i64 48>
  %70 = or <2 x i64> %57, %69
  %71 = lshr <2 x i64> %reverse, <i64 52, i64 52>
  %72 = shl nuw nsw <2 x i64> %71, <i64 3, i64 3>
  %73 = and <2 x i64> %72, <i64 64, i64 64>
  %74 = shl nuw nsw <2 x i64> %71, <i64 2, i64 2>
  %75 = and <2 x i64> %74, <i64 16, i64 16>
  %76 = shl nuw nsw <2 x i64> %71, <i64 1, i64 1>
  %77 = and <2 x i64> %76, <i64 4, i64 4>
  %78 = and <2 x i64> %71, <i64 1, i64 1>
  %79 = or <2 x i64> %75, %78
  %80 = or <2 x i64> %79, %73
  %81 = or <2 x i64> %80, %77
  %82 = shl nuw nsw <2 x i64> %81, <i64 40, i64 40>
  %83 = or <2 x i64> %70, %82
  %84 = lshr <2 x i64> %reverse, <i64 48, i64 48>
  %85 = shl nuw nsw <2 x i64> %84, <i64 3, i64 3>
  %86 = and <2 x i64> %85, <i64 64, i64 64>
  %87 = shl nuw nsw <2 x i64> %84, <i64 2, i64 2>
  %88 = and <2 x i64> %87, <i64 16, i64 16>
  %89 = shl nuw nsw <2 x i64> %84, <i64 1, i64 1>
  %90 = and <2 x i64> %89, <i64 4, i64 4>
  %91 = and <2 x i64> %84, <i64 1, i64 1>
  %92 = or <2 x i64> %88, %91
  %93 = or <2 x i64> %92, %86
  %94 = or <2 x i64> %93, %90
  %95 = shl nuw nsw <2 x i64> %94, <i64 32, i64 32>
  %96 = or <2 x i64> %83, %95
  %97 = lshr <2 x i64> %reverse, <i64 44, i64 44>
  %98 = shl nuw nsw <2 x i64> %97, <i64 3, i64 3>
  %99 = and <2 x i64> %98, <i64 64, i64 64>
  %100 = shl nuw nsw <2 x i64> %97, <i64 2, i64 2>
  %101 = and <2 x i64> %100, <i64 16, i64 16>
  %102 = shl nuw nsw <2 x i64> %97, <i64 1, i64 1>
  %103 = and <2 x i64> %102, <i64 4, i64 4>
  %104 = and <2 x i64> %97, <i64 1, i64 1>
  %105 = or <2 x i64> %101, %104
  %106 = or <2 x i64> %105, %99
  %107 = or <2 x i64> %106, %103
  %108 = shl nuw nsw <2 x i64> %107, <i64 24, i64 24>
  %109 = or <2 x i64> %96, %108
  %110 = lshr <2 x i64> %reverse, <i64 40, i64 40>
  %111 = shl nuw nsw <2 x i64> %110, <i64 3, i64 3>
  %112 = and <2 x i64> %111, <i64 64, i64 64>
  %113 = shl nuw nsw <2 x i64> %110, <i64 2, i64 2>
  %114 = and <2 x i64> %113, <i64 16, i64 16>
  %115 = shl nuw nsw <2 x i64> %110, <i64 1, i64 1>
  %116 = and <2 x i64> %115, <i64 4, i64 4>
  %117 = and <2 x i64> %110, <i64 1, i64 1>
  %118 = or <2 x i64> %114, %117
  %119 = or <2 x i64> %118, %112
  %120 = or <2 x i64> %119, %116
  %121 = shl nuw nsw <2 x i64> %120, <i64 16, i64 16>
  %122 = or <2 x i64> %109, %121
  %123 = lshr <2 x i64> %reverse, <i64 36, i64 36>
  %124 = shl nuw nsw <2 x i64> %123, <i64 3, i64 3>
  %125 = and <2 x i64> %124, <i64 64, i64 64>
  %126 = shl nuw nsw <2 x i64> %123, <i64 2, i64 2>
  %127 = and <2 x i64> %126, <i64 16, i64 16>
  %128 = shl nuw nsw <2 x i64> %123, <i64 1, i64 1>
  %129 = and <2 x i64> %128, <i64 4, i64 4>
  %130 = and <2 x i64> %123, <i64 1, i64 1>
  %131 = or <2 x i64> %127, %130
  %132 = or <2 x i64> %131, %125
  %133 = or <2 x i64> %132, %129
  %134 = shl nuw nsw <2 x i64> %133, <i64 8, i64 8>
  %135 = or <2 x i64> %122, %134
  %136 = lshr <2 x i64> %reverse, <i64 32, i64 32>
  %137 = shl nuw nsw <2 x i64> %136, <i64 3, i64 3>
  %138 = and <2 x i64> %137, <i64 64, i64 64>
  %139 = shl nuw nsw <2 x i64> %136, <i64 2, i64 2>
  %140 = and <2 x i64> %139, <i64 16, i64 16>
  %141 = shl nuw nsw <2 x i64> %136, <i64 1, i64 1>
  %142 = and <2 x i64> %141, <i64 4, i64 4>
  %143 = and <2 x i64> %136, <i64 1, i64 1>
  %144 = or <2 x i64> %140, %143
  %145 = or <2 x i64> %144, %138
  %146 = or <2 x i64> %145, %142
  %147 = or <2 x i64> %146, %135
  %148 = trunc i64 %43 to i32
  %149 = shl nuw nsw i32 %148, 1
  %150 = bitcast i64* %44 to <2 x i64>*
  %wide.load621 = load <2 x i64>, <2 x i64>* %150, align 8, !tbaa !11, !alias.scope !58, !noalias !61
  %reverse622 = shufflevector <2 x i64> %wide.load621, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %151 = lshr <2 x i64> %reverse622, <i64 28, i64 28>
  %152 = shl nuw nsw <2 x i64> %151, <i64 3, i64 3>
  %153 = and <2 x i64> %152, <i64 64, i64 64>
  %154 = shl nuw nsw <2 x i64> %151, <i64 2, i64 2>
  %155 = and <2 x i64> %154, <i64 16, i64 16>
  %156 = shl nuw nsw <2 x i64> %151, <i64 1, i64 1>
  %157 = and <2 x i64> %156, <i64 4, i64 4>
  %158 = and <2 x i64> %151, <i64 1, i64 1>
  %159 = or <2 x i64> %155, %158
  %160 = or <2 x i64> %159, %153
  %161 = or <2 x i64> %160, %157
  %162 = shl nuw nsw <2 x i64> %161, <i64 56, i64 56>
  %163 = lshr <2 x i64> %reverse622, <i64 24, i64 24>
  %164 = shl nuw nsw <2 x i64> %163, <i64 3, i64 3>
  %165 = and <2 x i64> %164, <i64 64, i64 64>
  %166 = shl nuw nsw <2 x i64> %163, <i64 2, i64 2>
  %167 = and <2 x i64> %166, <i64 16, i64 16>
  %168 = shl nuw nsw <2 x i64> %163, <i64 1, i64 1>
  %169 = and <2 x i64> %168, <i64 4, i64 4>
  %170 = and <2 x i64> %163, <i64 1, i64 1>
  %171 = or <2 x i64> %167, %170
  %172 = or <2 x i64> %171, %165
  %173 = or <2 x i64> %172, %169
  %174 = shl nuw nsw <2 x i64> %173, <i64 48, i64 48>
  %175 = or <2 x i64> %162, %174
  %176 = lshr <2 x i64> %reverse622, <i64 20, i64 20>
  %177 = shl nuw nsw <2 x i64> %176, <i64 3, i64 3>
  %178 = and <2 x i64> %177, <i64 64, i64 64>
  %179 = shl nuw nsw <2 x i64> %176, <i64 2, i64 2>
  %180 = and <2 x i64> %179, <i64 16, i64 16>
  %181 = shl nuw nsw <2 x i64> %176, <i64 1, i64 1>
  %182 = and <2 x i64> %181, <i64 4, i64 4>
  %183 = and <2 x i64> %176, <i64 1, i64 1>
  %184 = or <2 x i64> %180, %183
  %185 = or <2 x i64> %184, %178
  %186 = or <2 x i64> %185, %182
  %187 = shl nuw nsw <2 x i64> %186, <i64 40, i64 40>
  %188 = or <2 x i64> %175, %187
  %189 = lshr <2 x i64> %reverse622, <i64 16, i64 16>
  %190 = shl nuw nsw <2 x i64> %189, <i64 3, i64 3>
  %191 = and <2 x i64> %190, <i64 64, i64 64>
  %192 = shl nuw nsw <2 x i64> %189, <i64 2, i64 2>
  %193 = and <2 x i64> %192, <i64 16, i64 16>
  %194 = shl nuw nsw <2 x i64> %189, <i64 1, i64 1>
  %195 = and <2 x i64> %194, <i64 4, i64 4>
  %196 = and <2 x i64> %189, <i64 1, i64 1>
  %197 = or <2 x i64> %193, %196
  %198 = or <2 x i64> %197, %191
  %199 = or <2 x i64> %198, %195
  %200 = shl nuw nsw <2 x i64> %199, <i64 32, i64 32>
  %201 = or <2 x i64> %188, %200
  %202 = lshr <2 x i64> %reverse622, <i64 12, i64 12>
  %203 = shl nuw nsw <2 x i64> %202, <i64 3, i64 3>
  %204 = and <2 x i64> %203, <i64 64, i64 64>
  %205 = shl nuw nsw <2 x i64> %202, <i64 2, i64 2>
  %206 = and <2 x i64> %205, <i64 16, i64 16>
  %207 = shl nuw nsw <2 x i64> %202, <i64 1, i64 1>
  %208 = and <2 x i64> %207, <i64 4, i64 4>
  %209 = and <2 x i64> %202, <i64 1, i64 1>
  %210 = or <2 x i64> %206, %209
  %211 = or <2 x i64> %210, %204
  %212 = or <2 x i64> %211, %208
  %213 = shl nuw nsw <2 x i64> %212, <i64 24, i64 24>
  %214 = or <2 x i64> %201, %213
  %215 = lshr <2 x i64> %reverse622, <i64 8, i64 8>
  %216 = shl nuw nsw <2 x i64> %215, <i64 3, i64 3>
  %217 = and <2 x i64> %216, <i64 64, i64 64>
  %218 = shl nuw nsw <2 x i64> %215, <i64 2, i64 2>
  %219 = and <2 x i64> %218, <i64 16, i64 16>
  %220 = shl nuw nsw <2 x i64> %215, <i64 1, i64 1>
  %221 = and <2 x i64> %220, <i64 4, i64 4>
  %222 = and <2 x i64> %215, <i64 1, i64 1>
  %223 = or <2 x i64> %219, %222
  %224 = or <2 x i64> %223, %217
  %225 = or <2 x i64> %224, %221
  %226 = shl nuw nsw <2 x i64> %225, <i64 16, i64 16>
  %227 = or <2 x i64> %214, %226
  %228 = lshr <2 x i64> %reverse622, <i64 4, i64 4>
  %229 = shl nuw nsw <2 x i64> %228, <i64 3, i64 3>
  %230 = and <2 x i64> %229, <i64 64, i64 64>
  %231 = shl nuw nsw <2 x i64> %228, <i64 2, i64 2>
  %232 = and <2 x i64> %231, <i64 16, i64 16>
  %233 = shl nuw nsw <2 x i64> %228, <i64 1, i64 1>
  %234 = and <2 x i64> %233, <i64 4, i64 4>
  %235 = and <2 x i64> %228, <i64 1, i64 1>
  %236 = or <2 x i64> %232, %235
  %237 = or <2 x i64> %236, %230
  %238 = or <2 x i64> %237, %234
  %239 = shl nuw nsw <2 x i64> %238, <i64 8, i64 8>
  %240 = or <2 x i64> %227, %239
  %241 = shl <2 x i64> %reverse622, <i64 3, i64 3>
  %242 = and <2 x i64> %241, <i64 64, i64 64>
  %243 = shl <2 x i64> %reverse622, <i64 2, i64 2>
  %244 = and <2 x i64> %243, <i64 16, i64 16>
  %245 = shl <2 x i64> %reverse622, <i64 1, i64 1>
  %246 = and <2 x i64> %245, <i64 4, i64 4>
  %247 = and <2 x i64> %reverse622, <i64 1, i64 1>
  %248 = or <2 x i64> %244, %247
  %249 = or <2 x i64> %248, %242
  %250 = or <2 x i64> %249, %246
  %251 = or <2 x i64> %250, %240
  %252 = sext i32 %149 to i64
  %253 = getelementptr inbounds i64, i64* %41, i64 %252
  %254 = bitcast i64* %253 to <4 x i64>*
  %reverse623 = shufflevector <2 x i64> %251, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %reverse624 = shufflevector <2 x i64> %147, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %interleaved.vec = shufflevector <2 x i64> %reverse623, <2 x i64> %reverse624, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x i64> %interleaved.vec, <4 x i64>* %254, align 8, !tbaa !11
  %index.next = add nuw i64 %index, 2
  %255 = icmp eq i64 %index.next, %n.vec
  br i1 %255, label %middle.block, label %vector.body, !llvm.loop !63

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %4
  br i1 %cmp.n, label %for.end, label %for.body.preheader

for.body.preheader:                               ; preds = %vector.memcheck, %vector.scevcheck, %for.body.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ %4, %vector.memcheck ], [ %4, %vector.scevcheck ], [ %4, %for.body.lr.ph ], [ %ind.end, %middle.block ]
  br label %for.body

for.body:                                         ; preds = %for.body.preheader, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ %indvars.iv.ph, %for.body.preheader ]
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %arrayidx = getelementptr inbounds i64, i64* %2, i64 %indvars.iv.next
  %256 = load i64, i64* %arrayidx, align 8, !tbaa !11
  %shr = lshr i64 %256, 60
  %and = shl nuw nsw i64 %shr, 3
  %shl = and i64 %and, 64
  %and10 = shl nuw nsw i64 %shr, 2
  %shl11 = and i64 %and10, 16
  %and16 = shl nuw nsw i64 %shr, 1
  %shl17 = and i64 %and16, 4
  %and23 = and i64 %shr, 1
  %or18 = or i64 %shl11, %and23
  %or = or i64 %or18, %shl
  %or24 = or i64 %or, %shl17
  %shl25 = shl nuw nsw i64 %or24, 56
  %shr29 = lshr i64 %256, 56
  %and30 = shl nuw nsw i64 %shr29, 3
  %shl31 = and i64 %and30, 64
  %and36 = shl nuw nsw i64 %shr29, 2
  %shl37 = and i64 %and36, 16
  %and43 = shl nuw nsw i64 %shr29, 1
  %shl44 = and i64 %and43, 4
  %and50 = and i64 %shr29, 1
  %or45 = or i64 %shl37, %and50
  %or38 = or i64 %or45, %shl31
  %or51 = or i64 %or38, %shl44
  %shl52 = shl nuw nsw i64 %or51, 48
  %or53 = or i64 %shl25, %shl52
  %shr57 = lshr i64 %256, 52
  %and58 = shl nuw nsw i64 %shr57, 3
  %shl59 = and i64 %and58, 64
  %and64 = shl nuw nsw i64 %shr57, 2
  %shl65 = and i64 %and64, 16
  %and71 = shl nuw nsw i64 %shr57, 1
  %shl72 = and i64 %and71, 4
  %and78 = and i64 %shr57, 1
  %or73 = or i64 %shl65, %and78
  %or66 = or i64 %or73, %shl59
  %or79 = or i64 %or66, %shl72
  %shl80 = shl nuw nsw i64 %or79, 40
  %or81 = or i64 %or53, %shl80
  %shr85 = lshr i64 %256, 48
  %and86 = shl nuw nsw i64 %shr85, 3
  %shl87 = and i64 %and86, 64
  %and92 = shl nuw nsw i64 %shr85, 2
  %shl93 = and i64 %and92, 16
  %and99 = shl nuw nsw i64 %shr85, 1
  %shl100 = and i64 %and99, 4
  %and106 = and i64 %shr85, 1
  %or101 = or i64 %shl93, %and106
  %or94 = or i64 %or101, %shl87
  %or107 = or i64 %or94, %shl100
  %shl108 = shl nuw nsw i64 %or107, 32
  %or109 = or i64 %or81, %shl108
  %shr113 = lshr i64 %256, 44
  %and114 = shl nuw nsw i64 %shr113, 3
  %shl115 = and i64 %and114, 64
  %and120 = shl nuw nsw i64 %shr113, 2
  %shl121 = and i64 %and120, 16
  %and127 = shl nuw nsw i64 %shr113, 1
  %shl128 = and i64 %and127, 4
  %and134 = and i64 %shr113, 1
  %or129 = or i64 %shl121, %and134
  %or122 = or i64 %or129, %shl115
  %or135 = or i64 %or122, %shl128
  %shl136 = shl nuw nsw i64 %or135, 24
  %or137 = or i64 %or109, %shl136
  %shr141 = lshr i64 %256, 40
  %and142 = shl nuw nsw i64 %shr141, 3
  %shl143 = and i64 %and142, 64
  %and148 = shl nuw nsw i64 %shr141, 2
  %shl149 = and i64 %and148, 16
  %and155 = shl nuw nsw i64 %shr141, 1
  %shl156 = and i64 %and155, 4
  %and162 = and i64 %shr141, 1
  %or157 = or i64 %shl149, %and162
  %or150 = or i64 %or157, %shl143
  %or163 = or i64 %or150, %shl156
  %shl164 = shl nuw nsw i64 %or163, 16
  %or165 = or i64 %or137, %shl164
  %shr169 = lshr i64 %256, 36
  %and170 = shl nuw nsw i64 %shr169, 3
  %shl171 = and i64 %and170, 64
  %and176 = shl nuw nsw i64 %shr169, 2
  %shl177 = and i64 %and176, 16
  %and183 = shl nuw nsw i64 %shr169, 1
  %shl184 = and i64 %and183, 4
  %and190 = and i64 %shr169, 1
  %or185 = or i64 %shl177, %and190
  %or178 = or i64 %or185, %shl171
  %or191 = or i64 %or178, %shl184
  %shl192 = shl nuw nsw i64 %or191, 8
  %or193 = or i64 %or165, %shl192
  %shr197 = lshr i64 %256, 32
  %and198 = shl nuw nsw i64 %shr197, 3
  %shl199 = and i64 %and198, 64
  %and204 = shl nuw nsw i64 %shr197, 2
  %shl205 = and i64 %and204, 16
  %and211 = shl nuw nsw i64 %shr197, 1
  %shl212 = and i64 %and211, 4
  %and218 = and i64 %shr197, 1
  %or206 = or i64 %shl205, %and218
  %or213 = or i64 %or206, %shl199
  %or219 = or i64 %or213, %shl212
  %or220 = or i64 %or219, %or193
  %257 = trunc i64 %indvars.iv.next to i32
  %mul222 = shl nuw nsw i32 %257, 1
  %add = or i32 %mul222, 1
  %idxprom223 = sext i32 %add to i64
  %arrayidx224 = getelementptr inbounds i64, i64* %3, i64 %idxprom223
  store i64 %or220, i64* %arrayidx224, align 8, !tbaa !11
  %258 = load i64, i64* %arrayidx, align 8, !tbaa !11
  %shr228 = lshr i64 %258, 28
  %and229 = shl nuw nsw i64 %shr228, 3
  %shl230 = and i64 %and229, 64
  %and235 = shl nuw nsw i64 %shr228, 2
  %shl236 = and i64 %and235, 16
  %and242 = shl nuw nsw i64 %shr228, 1
  %shl243 = and i64 %and242, 4
  %and249 = and i64 %shr228, 1
  %or244 = or i64 %shl236, %and249
  %or237 = or i64 %or244, %shl230
  %or250 = or i64 %or237, %shl243
  %shl251 = shl nuw nsw i64 %or250, 56
  %shr255 = lshr i64 %258, 24
  %and256 = shl nuw nsw i64 %shr255, 3
  %shl257 = and i64 %and256, 64
  %and262 = shl nuw nsw i64 %shr255, 2
  %shl263 = and i64 %and262, 16
  %and269 = shl nuw nsw i64 %shr255, 1
  %shl270 = and i64 %and269, 4
  %and276 = and i64 %shr255, 1
  %or271 = or i64 %shl263, %and276
  %or264 = or i64 %or271, %shl257
  %or277 = or i64 %or264, %shl270
  %shl278 = shl nuw nsw i64 %or277, 48
  %or279 = or i64 %shl251, %shl278
  %shr283 = lshr i64 %258, 20
  %and284 = shl nuw nsw i64 %shr283, 3
  %shl285 = and i64 %and284, 64
  %and290 = shl nuw nsw i64 %shr283, 2
  %shl291 = and i64 %and290, 16
  %and297 = shl nuw nsw i64 %shr283, 1
  %shl298 = and i64 %and297, 4
  %and304 = and i64 %shr283, 1
  %or299 = or i64 %shl291, %and304
  %or292 = or i64 %or299, %shl285
  %or305 = or i64 %or292, %shl298
  %shl306 = shl nuw nsw i64 %or305, 40
  %or307 = or i64 %or279, %shl306
  %shr311 = lshr i64 %258, 16
  %and312 = shl nuw nsw i64 %shr311, 3
  %shl313 = and i64 %and312, 64
  %and318 = shl nuw nsw i64 %shr311, 2
  %shl319 = and i64 %and318, 16
  %and325 = shl nuw nsw i64 %shr311, 1
  %shl326 = and i64 %and325, 4
  %and332 = and i64 %shr311, 1
  %or327 = or i64 %shl319, %and332
  %or320 = or i64 %or327, %shl313
  %or333 = or i64 %or320, %shl326
  %shl334 = shl nuw nsw i64 %or333, 32
  %or335 = or i64 %or307, %shl334
  %shr339 = lshr i64 %258, 12
  %and340 = shl nuw nsw i64 %shr339, 3
  %shl341 = and i64 %and340, 64
  %and346 = shl nuw nsw i64 %shr339, 2
  %shl347 = and i64 %and346, 16
  %and353 = shl nuw nsw i64 %shr339, 1
  %shl354 = and i64 %and353, 4
  %and360 = and i64 %shr339, 1
  %or355 = or i64 %shl347, %and360
  %or348 = or i64 %or355, %shl341
  %or361 = or i64 %or348, %shl354
  %shl362 = shl nuw nsw i64 %or361, 24
  %or363 = or i64 %or335, %shl362
  %shr367 = lshr i64 %258, 8
  %and368 = shl nuw nsw i64 %shr367, 3
  %shl369 = and i64 %and368, 64
  %and374 = shl nuw nsw i64 %shr367, 2
  %shl375 = and i64 %and374, 16
  %and381 = shl nuw nsw i64 %shr367, 1
  %shl382 = and i64 %and381, 4
  %and388 = and i64 %shr367, 1
  %or383 = or i64 %shl375, %and388
  %or376 = or i64 %or383, %shl369
  %or389 = or i64 %or376, %shl382
  %shl390 = shl nuw nsw i64 %or389, 16
  %or391 = or i64 %or363, %shl390
  %shr395 = lshr i64 %258, 4
  %and396 = shl nuw nsw i64 %shr395, 3
  %shl397 = and i64 %and396, 64
  %and402 = shl nuw nsw i64 %shr395, 2
  %shl403 = and i64 %and402, 16
  %and409 = shl nuw nsw i64 %shr395, 1
  %shl410 = and i64 %and409, 4
  %and416 = and i64 %shr395, 1
  %or411 = or i64 %shl403, %and416
  %or404 = or i64 %or411, %shl397
  %or417 = or i64 %or404, %shl410
  %shl418 = shl nuw nsw i64 %or417, 8
  %or419 = or i64 %or391, %shl418
  %and423 = shl i64 %258, 3
  %shl424 = and i64 %and423, 64
  %and428 = shl i64 %258, 2
  %shl429 = and i64 %and428, 16
  %and434 = shl i64 %258, 1
  %shl435 = and i64 %and434, 4
  %and440 = and i64 %258, 1
  %or430 = or i64 %shl429, %and440
  %or436 = or i64 %or430, %shl424
  %or441 = or i64 %or436, %shl435
  %or442 = or i64 %or441, %or419
  %idxprom445 = sext i32 %mul222 to i64
  %arrayidx446 = getelementptr inbounds i64, i64* %3, i64 %idxprom445
  store i64 %or442, i64* %arrayidx446, align 8, !tbaa !11
  %cmp5 = icmp ugt i64 %indvars.iv, 1
  br i1 %cmp5, label %for.body, label %for.end, !llvm.loop !64

for.end:                                          ; preds = %for.body, %middle.block, %if.end3
  %mul448 = shl nsw i32 %1, 1
  %top449 = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %call, i64 0, i32 1
  store i32 %mul448, i32* %top449, align 8, !tbaa !4
  tail call void @bn_correct_top(%struct.bignum_st* noundef nonnull %call) #4
  %call450 = tail call i32 @BN_GF2m_mod_arr(%struct.bignum_st* noundef %r, %struct.bignum_st* noundef nonnull %call, i32* noundef %p) #6
  %tobool451.not = icmp ne i32 %call450, 0
  %spec.select = zext i1 %tobool451.not to i32
  br label %err

err:                                              ; preds = %for.end, %if.end, %entry
  %ret.0 = phi i32 [ 0, %entry ], [ 0, %if.end ], [ %spec.select, %for.end ]
  tail call void @BN_CTX_end(%struct.bignum_ctx* noundef %ctx) #4
  ret i32 %ret.0
}

declare void @BN_CTX_start(%struct.bignum_ctx* noundef) local_unnamed_addr #2

declare %struct.bignum_st* @BN_CTX_get(%struct.bignum_ctx* noundef) local_unnamed_addr #2

declare void @bn_GF2m_mul_2x2(i64* noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

declare void @BN_CTX_end(%struct.bignum_ctx* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @BN_GF2m_mod_mul(%struct.bignum_st* noundef %r, %struct.bignum_st* noundef %a, %struct.bignum_st* noundef %b, %struct.bignum_st* noundef %p, %struct.bignum_ctx* noundef %ctx) local_unnamed_addr #0 {
entry:
  %call = tail call i32 @BN_num_bits(%struct.bignum_st* noundef %p) #4
  %add = add nsw i32 %call, 1
  %conv = sext i32 %add to i64
  %mul = shl nsw i64 %conv, 2
  %call1 = tail call i8* @CRYPTO_malloc(i64 noundef %mul, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 476) #4
  %0 = bitcast i8* %call1 to i32*
  %cmp = icmp eq i8* %call1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #4
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 478, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.BN_GF2m_mod_mul, i64 0, i64 0)) #4
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 3, i32 noundef 786688, i8* noundef null) #4
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = tail call i32 @BN_GF2m_poly2arr(%struct.bignum_st* noundef %p, i32* noundef nonnull %0, i32 noundef %add) #6
  %tobool.not = icmp eq i32 %call3, 0
  %cmp4 = icmp sgt i32 %call3, %add
  %or.cond = select i1 %tobool.not, i1 true, i1 %cmp4
  br i1 %or.cond, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.end
  tail call void @ERR_new() #4
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 483, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.BN_GF2m_mod_mul, i64 0, i64 0)) #4
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 3, i32 noundef 106, i8* noundef null) #4
  br label %err

if.end7:                                          ; preds = %if.end
  %call8 = tail call i32 @BN_GF2m_mod_mul_arr(%struct.bignum_st* noundef %r, %struct.bignum_st* noundef %a, %struct.bignum_st* noundef %b, i32* noundef nonnull %0, %struct.bignum_ctx* noundef %ctx) #6
  br label %err

err:                                              ; preds = %if.end7, %if.then6
  %ret.0 = phi i32 [ %call3, %if.then6 ], [ %call8, %if.end7 ]
  tail call void @CRYPTO_free(i8* noundef nonnull %call1, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 489) #4
  br label %cleanup

cleanup:                                          ; preds = %err, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ %ret.0, %err ]
  ret i32 %retval.0
}

declare i32 @BN_num_bits(%struct.bignum_st* noundef) local_unnamed_addr #2

declare i8* @CRYPTO_malloc(i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare void @CRYPTO_free(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @BN_GF2m_mod_sqr(%struct.bignum_st* noundef %r, %struct.bignum_st* nocapture noundef readonly %a, %struct.bignum_st* noundef %p, %struct.bignum_ctx* noundef %ctx) local_unnamed_addr #0 {
entry:
  %call = tail call i32 @BN_num_bits(%struct.bignum_st* noundef %p) #4
  %add = add nsw i32 %call, 1
  %conv = sext i32 %add to i64
  %mul = shl nsw i64 %conv, 2
  %call1 = tail call i8* @CRYPTO_malloc(i64 noundef %mul, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 538) #4
  %0 = bitcast i8* %call1 to i32*
  %cmp = icmp eq i8* %call1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #4
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 540, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.BN_GF2m_mod_sqr, i64 0, i64 0)) #4
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 3, i32 noundef 786688, i8* noundef null) #4
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = tail call i32 @BN_GF2m_poly2arr(%struct.bignum_st* noundef %p, i32* noundef nonnull %0, i32 noundef %add) #6
  %tobool.not = icmp eq i32 %call3, 0
  %cmp4 = icmp sgt i32 %call3, %add
  %or.cond = select i1 %tobool.not, i1 true, i1 %cmp4
  br i1 %or.cond, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.end
  tail call void @ERR_new() #4
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 545, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.BN_GF2m_mod_sqr, i64 0, i64 0)) #4
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 3, i32 noundef 106, i8* noundef null) #4
  br label %err

if.end7:                                          ; preds = %if.end
  %call8 = tail call i32 @BN_GF2m_mod_sqr_arr(%struct.bignum_st* noundef %r, %struct.bignum_st* noundef %a, i32* noundef nonnull %0, %struct.bignum_ctx* noundef %ctx) #6
  br label %err

err:                                              ; preds = %if.end7, %if.then6
  %ret.0 = phi i32 [ %call3, %if.then6 ], [ %call8, %if.end7 ]
  tail call void @CRYPTO_free(i8* noundef nonnull %call1, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 551) #4
  br label %cleanup

cleanup:                                          ; preds = %err, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ %ret.0, %err ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @BN_GF2m_mod_inv(%struct.bignum_st* noundef %r, %struct.bignum_st* noundef %a, %struct.bignum_st* noundef %p, %struct.bignum_ctx* noundef %ctx) local_unnamed_addr #0 {
entry:
  tail call void @BN_CTX_start(%struct.bignum_ctx* noundef %ctx) #4
  %call = tail call %struct.bignum_st* @BN_CTX_get(%struct.bignum_ctx* noundef %ctx) #4
  %cmp = icmp eq %struct.bignum_st* %call, null
  br i1 %cmp, label %err, label %do.body

do.body:                                          ; preds = %entry, %do.cond
  %call1 = tail call i32 @BN_num_bits(%struct.bignum_st* noundef %p) #4
  %sub = add nsw i32 %call1, -1
  %call2 = tail call i32 @BN_priv_rand_ex(%struct.bignum_st* noundef nonnull %call, i32 noundef %sub, i32 noundef -1, i32 noundef 0, i32 noundef 0, %struct.bignum_ctx* noundef %ctx) #4
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %err, label %do.cond

do.cond:                                          ; preds = %do.body
  %call5 = tail call i32 @BN_is_zero(%struct.bignum_st* noundef nonnull %call) #4
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %do.end, label %do.body, !llvm.loop !65

do.end:                                           ; preds = %do.cond
  %call7 = tail call i32 @BN_GF2m_mod_mul(%struct.bignum_st* noundef %r, %struct.bignum_st* noundef %a, %struct.bignum_st* noundef nonnull %call, %struct.bignum_st* noundef %p, %struct.bignum_ctx* noundef %ctx) #6
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %err, label %if.end10

if.end10:                                         ; preds = %do.end
  %call11 = tail call fastcc i32 @BN_GF2m_mod_inv_vartime(%struct.bignum_st* noundef %r, %struct.bignum_st* noundef %r, %struct.bignum_st* noundef %p, %struct.bignum_ctx* noundef %ctx) #6
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %err, label %if.end14

if.end14:                                         ; preds = %if.end10
  %call15 = tail call i32 @BN_GF2m_mod_mul(%struct.bignum_st* noundef %r, %struct.bignum_st* noundef %r, %struct.bignum_st* noundef nonnull %call, %struct.bignum_st* noundef %p, %struct.bignum_ctx* noundef %ctx) #6
  %tobool16.not = icmp ne i32 %call15, 0
  %spec.select = zext i1 %tobool16.not to i32
  br label %err

err:                                              ; preds = %do.body, %if.end14, %if.end10, %do.end, %entry
  %ret.0 = phi i32 [ 0, %entry ], [ 0, %if.end10 ], [ 0, %do.end ], [ %spec.select, %if.end14 ], [ 0, %do.body ]
  tail call void @BN_CTX_end(%struct.bignum_ctx* noundef %ctx) #4
  ret i32 %ret.0
}

declare i32 @BN_priv_rand_ex(%struct.bignum_st* noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, %struct.bignum_ctx* noundef) local_unnamed_addr #2

declare i32 @BN_is_zero(%struct.bignum_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @BN_GF2m_mod_inv_vartime(%struct.bignum_st* noundef %r, %struct.bignum_st* noundef %a, %struct.bignum_st* noundef %p, %struct.bignum_ctx* noundef %ctx) unnamed_addr #0 {
entry:
  tail call void @BN_CTX_start(%struct.bignum_ctx* noundef %ctx) #4
  %call = tail call %struct.bignum_st* @BN_CTX_get(%struct.bignum_ctx* noundef %ctx) #4
  %call1 = tail call %struct.bignum_st* @BN_CTX_get(%struct.bignum_ctx* noundef %ctx) #4
  %call2 = tail call %struct.bignum_st* @BN_CTX_get(%struct.bignum_ctx* noundef %ctx) #4
  %call3 = tail call %struct.bignum_st* @BN_CTX_get(%struct.bignum_ctx* noundef %ctx) #4
  %cmp = icmp eq %struct.bignum_st* %call3, null
  br i1 %cmp, label %err, label %if.end

if.end:                                           ; preds = %entry
  %call4 = tail call i32 @BN_GF2m_mod(%struct.bignum_st* noundef %call2, %struct.bignum_st* noundef %a, %struct.bignum_st* noundef %p) #6
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %err, label %if.end6

if.end6:                                          ; preds = %if.end
  %call7 = tail call i32 @BN_is_zero(%struct.bignum_st* noundef %call2) #4
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end10, label %err

if.end10:                                         ; preds = %if.end6
  %call11 = tail call %struct.bignum_st* @BN_copy(%struct.bignum_st* noundef nonnull %call3, %struct.bignum_st* noundef %p) #4
  %tobool12.not = icmp eq %struct.bignum_st* %call11, null
  br i1 %tobool12.not, label %err, label %if.end14

if.end14:                                         ; preds = %if.end10
  %call15 = tail call i32 @BN_num_bits(%struct.bignum_st* noundef %call2) #4
  %call16 = tail call i32 @BN_num_bits(%struct.bignum_st* noundef nonnull %call3) #4
  %top17 = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %p, i64 0, i32 1
  %0 = load i32, i32* %top17, align 8, !tbaa !4
  %call18 = tail call %struct.bignum_st* @bn_wexpand(%struct.bignum_st* noundef %call2, i32 noundef %0) #4
  %tobool19.not = icmp eq %struct.bignum_st* %call18, null
  br i1 %tobool19.not, label %err, label %if.end21

if.end21:                                         ; preds = %if.end14
  %d = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %call2, i64 0, i32 0
  %1 = load i64*, i64** %d, align 8, !tbaa !10
  %top22 = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %call2, i64 0, i32 1
  %2 = load i32, i32* %top22, align 8, !tbaa !4
  %cmp23298 = icmp slt i32 %2, %0
  br i1 %cmp23298, label %for.body.preheader, label %for.end

for.body.preheader:                               ; preds = %if.end21
  %3 = sext i32 %2 to i64
  %wide.trip.count = sext i32 %0 to i64
  %4 = sub nsw i64 %wide.trip.count, %3
  %min.iters.check = icmp ult i64 %4, 4
  br i1 %min.iters.check, label %for.body.preheader430, label %vector.ph

vector.ph:                                        ; preds = %for.body.preheader
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
  %9 = getelementptr inbounds i64, i64* %1, i64 %offset.idx
  %10 = bitcast i64* %9 to <2 x i64>*
  store <2 x i64> zeroinitializer, <2 x i64>* %10, align 8, !tbaa !11
  %11 = getelementptr inbounds i64, i64* %9, i64 2
  %12 = bitcast i64* %11 to <2 x i64>*
  store <2 x i64> zeroinitializer, <2 x i64>* %12, align 8, !tbaa !11
  %index.next = or i64 %index, 4
  %offset.idx.1 = add i64 %index.next, %3
  %13 = getelementptr inbounds i64, i64* %1, i64 %offset.idx.1
  %14 = bitcast i64* %13 to <2 x i64>*
  store <2 x i64> zeroinitializer, <2 x i64>* %14, align 8, !tbaa !11
  %15 = getelementptr inbounds i64, i64* %13, i64 2
  %16 = bitcast i64* %15 to <2 x i64>*
  store <2 x i64> zeroinitializer, <2 x i64>* %16, align 8, !tbaa !11
  %index.next.1 = or i64 %index, 8
  %offset.idx.2 = add i64 %index.next.1, %3
  %17 = getelementptr inbounds i64, i64* %1, i64 %offset.idx.2
  %18 = bitcast i64* %17 to <2 x i64>*
  store <2 x i64> zeroinitializer, <2 x i64>* %18, align 8, !tbaa !11
  %19 = getelementptr inbounds i64, i64* %17, i64 2
  %20 = bitcast i64* %19 to <2 x i64>*
  store <2 x i64> zeroinitializer, <2 x i64>* %20, align 8, !tbaa !11
  %index.next.2 = or i64 %index, 12
  %offset.idx.3 = add i64 %index.next.2, %3
  %21 = getelementptr inbounds i64, i64* %1, i64 %offset.idx.3
  %22 = bitcast i64* %21 to <2 x i64>*
  store <2 x i64> zeroinitializer, <2 x i64>* %22, align 8, !tbaa !11
  %23 = getelementptr inbounds i64, i64* %21, i64 2
  %24 = bitcast i64* %23 to <2 x i64>*
  store <2 x i64> zeroinitializer, <2 x i64>* %24, align 8, !tbaa !11
  %index.next.3 = add nuw i64 %index, 16
  %niter.next.3 = add nuw i64 %niter, 4
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %middle.block.unr-lcssa, label %vector.body, !llvm.loop !66

middle.block.unr-lcssa:                           ; preds = %vector.body, %vector.ph
  %index.unr = phi i64 [ 0, %vector.ph ], [ %index.next.3, %vector.body ]
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %middle.block, label %vector.body.epil

vector.body.epil:                                 ; preds = %middle.block.unr-lcssa, %vector.body.epil
  %index.epil = phi i64 [ %index.next.epil, %vector.body.epil ], [ %index.unr, %middle.block.unr-lcssa ]
  %epil.iter = phi i64 [ %epil.iter.next, %vector.body.epil ], [ 0, %middle.block.unr-lcssa ]
  %offset.idx.epil = add i64 %index.epil, %3
  %25 = getelementptr inbounds i64, i64* %1, i64 %offset.idx.epil
  %26 = bitcast i64* %25 to <2 x i64>*
  store <2 x i64> zeroinitializer, <2 x i64>* %26, align 8, !tbaa !11
  %27 = getelementptr inbounds i64, i64* %25, i64 2
  %28 = bitcast i64* %27 to <2 x i64>*
  store <2 x i64> zeroinitializer, <2 x i64>* %28, align 8, !tbaa !11
  %index.next.epil = add nuw i64 %index.epil, 4
  %epil.iter.next = add i64 %epil.iter, 1
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %middle.block, label %vector.body.epil, !llvm.loop !67

middle.block:                                     ; preds = %vector.body.epil, %middle.block.unr-lcssa
  %cmp.n = icmp eq i64 %4, %n.vec
  br i1 %cmp.n, label %for.end, label %for.body.preheader430

for.body.preheader430:                            ; preds = %for.body.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ %3, %for.body.preheader ], [ %ind.end, %middle.block ]
  br label %for.body

for.body:                                         ; preds = %for.body.preheader430, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ %indvars.iv.ph, %for.body.preheader430 ]
  %arrayidx = getelementptr inbounds i64, i64* %1, i64 %indvars.iv
  store i64 0, i64* %arrayidx, align 8, !tbaa !11
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %for.end, label %for.body, !llvm.loop !68

for.end:                                          ; preds = %for.body, %middle.block, %if.end21
  store i32 %0, i32* %top22, align 8, !tbaa !4
  %call25 = tail call %struct.bignum_st* @bn_wexpand(%struct.bignum_st* noundef %call, i32 noundef %0) #4
  %tobool26.not = icmp eq %struct.bignum_st* %call25, null
  br i1 %tobool26.not, label %err, label %if.end28

if.end28:                                         ; preds = %for.end
  %d29 = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %call, i64 0, i32 0
  %29 = load i64*, i64** %d29, align 8, !tbaa !10
  store i64 1, i64* %29, align 8, !tbaa !11
  %cmp32300 = icmp sgt i32 %0, 1
  br i1 %cmp32300, label %for.body33.preheader, label %for.end38

for.body33.preheader:                             ; preds = %if.end28
  %wide.trip.count324 = zext i32 %0 to i64
  %30 = add nsw i64 %wide.trip.count324, -1
  %min.iters.check357 = icmp ult i64 %30, 4
  br i1 %min.iters.check357, label %for.body33.preheader429, label %vector.ph358

vector.ph358:                                     ; preds = %for.body33.preheader
  %n.vec360 = and i64 %30, -4
  %ind.end362 = or i64 %n.vec360, 1
  %31 = add nsw i64 %n.vec360, -4
  %32 = lshr exact i64 %31, 2
  %33 = add nuw nsw i64 %32, 1
  %xtraiter431 = and i64 %33, 3
  %34 = icmp ult i64 %31, 12
  br i1 %34, label %middle.block354.unr-lcssa, label %vector.ph358.new

vector.ph358.new:                                 ; preds = %vector.ph358
  %unroll_iter434 = and i64 %33, 9223372036854775804
  br label %vector.body356

vector.body356:                                   ; preds = %vector.body356, %vector.ph358.new
  %index364 = phi i64 [ 0, %vector.ph358.new ], [ %index.next366.3, %vector.body356 ]
  %niter435 = phi i64 [ 0, %vector.ph358.new ], [ %niter435.next.3, %vector.body356 ]
  %offset.idx365 = or i64 %index364, 1
  %35 = getelementptr inbounds i64, i64* %29, i64 %offset.idx365
  %36 = bitcast i64* %35 to <2 x i64>*
  store <2 x i64> zeroinitializer, <2 x i64>* %36, align 8, !tbaa !11
  %37 = getelementptr inbounds i64, i64* %35, i64 2
  %38 = bitcast i64* %37 to <2 x i64>*
  store <2 x i64> zeroinitializer, <2 x i64>* %38, align 8, !tbaa !11
  %offset.idx365.1 = or i64 %index364, 5
  %39 = getelementptr inbounds i64, i64* %29, i64 %offset.idx365.1
  %40 = bitcast i64* %39 to <2 x i64>*
  store <2 x i64> zeroinitializer, <2 x i64>* %40, align 8, !tbaa !11
  %41 = getelementptr inbounds i64, i64* %39, i64 2
  %42 = bitcast i64* %41 to <2 x i64>*
  store <2 x i64> zeroinitializer, <2 x i64>* %42, align 8, !tbaa !11
  %offset.idx365.2 = or i64 %index364, 9
  %43 = getelementptr inbounds i64, i64* %29, i64 %offset.idx365.2
  %44 = bitcast i64* %43 to <2 x i64>*
  store <2 x i64> zeroinitializer, <2 x i64>* %44, align 8, !tbaa !11
  %45 = getelementptr inbounds i64, i64* %43, i64 2
  %46 = bitcast i64* %45 to <2 x i64>*
  store <2 x i64> zeroinitializer, <2 x i64>* %46, align 8, !tbaa !11
  %offset.idx365.3 = or i64 %index364, 13
  %47 = getelementptr inbounds i64, i64* %29, i64 %offset.idx365.3
  %48 = bitcast i64* %47 to <2 x i64>*
  store <2 x i64> zeroinitializer, <2 x i64>* %48, align 8, !tbaa !11
  %49 = getelementptr inbounds i64, i64* %47, i64 2
  %50 = bitcast i64* %49 to <2 x i64>*
  store <2 x i64> zeroinitializer, <2 x i64>* %50, align 8, !tbaa !11
  %index.next366.3 = add nuw i64 %index364, 16
  %niter435.next.3 = add nuw i64 %niter435, 4
  %niter435.ncmp.3 = icmp eq i64 %niter435.next.3, %unroll_iter434
  br i1 %niter435.ncmp.3, label %middle.block354.unr-lcssa, label %vector.body356, !llvm.loop !69

middle.block354.unr-lcssa:                        ; preds = %vector.body356, %vector.ph358
  %index364.unr = phi i64 [ 0, %vector.ph358 ], [ %index.next366.3, %vector.body356 ]
  %lcmp.mod433.not = icmp eq i64 %xtraiter431, 0
  br i1 %lcmp.mod433.not, label %middle.block354, label %vector.body356.epil

vector.body356.epil:                              ; preds = %middle.block354.unr-lcssa, %vector.body356.epil
  %index364.epil = phi i64 [ %index.next366.epil, %vector.body356.epil ], [ %index364.unr, %middle.block354.unr-lcssa ]
  %epil.iter432 = phi i64 [ %epil.iter432.next, %vector.body356.epil ], [ 0, %middle.block354.unr-lcssa ]
  %offset.idx365.epil = or i64 %index364.epil, 1
  %51 = getelementptr inbounds i64, i64* %29, i64 %offset.idx365.epil
  %52 = bitcast i64* %51 to <2 x i64>*
  store <2 x i64> zeroinitializer, <2 x i64>* %52, align 8, !tbaa !11
  %53 = getelementptr inbounds i64, i64* %51, i64 2
  %54 = bitcast i64* %53 to <2 x i64>*
  store <2 x i64> zeroinitializer, <2 x i64>* %54, align 8, !tbaa !11
  %index.next366.epil = add nuw i64 %index364.epil, 4
  %epil.iter432.next = add i64 %epil.iter432, 1
  %epil.iter432.cmp.not = icmp eq i64 %epil.iter432.next, %xtraiter431
  br i1 %epil.iter432.cmp.not, label %middle.block354, label %vector.body356.epil, !llvm.loop !70

middle.block354:                                  ; preds = %vector.body356.epil, %middle.block354.unr-lcssa
  %cmp.n363 = icmp eq i64 %30, %n.vec360
  br i1 %cmp.n363, label %for.end38, label %for.body33.preheader429

for.body33.preheader429:                          ; preds = %for.body33.preheader, %middle.block354
  %indvars.iv321.ph = phi i64 [ 1, %for.body33.preheader ], [ %ind.end362, %middle.block354 ]
  br label %for.body33

for.body33:                                       ; preds = %for.body33.preheader429, %for.body33
  %indvars.iv321 = phi i64 [ %indvars.iv.next322, %for.body33 ], [ %indvars.iv321.ph, %for.body33.preheader429 ]
  %arrayidx35 = getelementptr inbounds i64, i64* %29, i64 %indvars.iv321
  store i64 0, i64* %arrayidx35, align 8, !tbaa !11
  %indvars.iv.next322 = add nuw nsw i64 %indvars.iv321, 1
  %exitcond325.not = icmp eq i64 %indvars.iv.next322, %wide.trip.count324
  br i1 %exitcond325.not, label %for.end38, label %for.body33, !llvm.loop !71

for.end38:                                        ; preds = %for.body33, %middle.block354, %if.end28
  %top39 = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %call, i64 0, i32 1
  store i32 %0, i32* %top39, align 8, !tbaa !4
  %call40 = tail call %struct.bignum_st* @bn_wexpand(%struct.bignum_st* noundef %call1, i32 noundef %0) #4
  %tobool41.not = icmp eq %struct.bignum_st* %call40, null
  br i1 %tobool41.not, label %err, label %if.end43

if.end43:                                         ; preds = %for.end38
  %d44 = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %call1, i64 0, i32 0
  %55 = load i64*, i64** %d44, align 8, !tbaa !10
  %cmp46302 = icmp sgt i32 %0, 0
  br i1 %cmp46302, label %for.body47.preheader, label %for.end52

for.body47.preheader:                             ; preds = %if.end43
  %wide.trip.count329 = zext i32 %0 to i64
  %min.iters.check370 = icmp ult i32 %0, 4
  br i1 %min.iters.check370, label %for.body47.preheader428, label %vector.ph371

vector.ph371:                                     ; preds = %for.body47.preheader
  %n.vec373 = and i64 %wide.trip.count329, 4294967292
  %56 = add nsw i64 %n.vec373, -4
  %57 = lshr exact i64 %56, 2
  %58 = add nuw nsw i64 %57, 1
  %xtraiter436 = and i64 %58, 7
  %59 = icmp ult i64 %56, 28
  br i1 %59, label %middle.block367.unr-lcssa, label %vector.ph371.new

vector.ph371.new:                                 ; preds = %vector.ph371
  %unroll_iter439 = and i64 %58, 9223372036854775800
  br label %vector.body369

vector.body369:                                   ; preds = %vector.body369, %vector.ph371.new
  %index376 = phi i64 [ 0, %vector.ph371.new ], [ %index.next377.7, %vector.body369 ]
  %niter440 = phi i64 [ 0, %vector.ph371.new ], [ %niter440.next.7, %vector.body369 ]
  %60 = getelementptr inbounds i64, i64* %55, i64 %index376
  %61 = bitcast i64* %60 to <2 x i64>*
  store <2 x i64> zeroinitializer, <2 x i64>* %61, align 8, !tbaa !11
  %62 = getelementptr inbounds i64, i64* %60, i64 2
  %63 = bitcast i64* %62 to <2 x i64>*
  store <2 x i64> zeroinitializer, <2 x i64>* %63, align 8, !tbaa !11
  %index.next377 = or i64 %index376, 4
  %64 = getelementptr inbounds i64, i64* %55, i64 %index.next377
  %65 = bitcast i64* %64 to <2 x i64>*
  store <2 x i64> zeroinitializer, <2 x i64>* %65, align 8, !tbaa !11
  %66 = getelementptr inbounds i64, i64* %64, i64 2
  %67 = bitcast i64* %66 to <2 x i64>*
  store <2 x i64> zeroinitializer, <2 x i64>* %67, align 8, !tbaa !11
  %index.next377.1 = or i64 %index376, 8
  %68 = getelementptr inbounds i64, i64* %55, i64 %index.next377.1
  %69 = bitcast i64* %68 to <2 x i64>*
  store <2 x i64> zeroinitializer, <2 x i64>* %69, align 8, !tbaa !11
  %70 = getelementptr inbounds i64, i64* %68, i64 2
  %71 = bitcast i64* %70 to <2 x i64>*
  store <2 x i64> zeroinitializer, <2 x i64>* %71, align 8, !tbaa !11
  %index.next377.2 = or i64 %index376, 12
  %72 = getelementptr inbounds i64, i64* %55, i64 %index.next377.2
  %73 = bitcast i64* %72 to <2 x i64>*
  store <2 x i64> zeroinitializer, <2 x i64>* %73, align 8, !tbaa !11
  %74 = getelementptr inbounds i64, i64* %72, i64 2
  %75 = bitcast i64* %74 to <2 x i64>*
  store <2 x i64> zeroinitializer, <2 x i64>* %75, align 8, !tbaa !11
  %index.next377.3 = or i64 %index376, 16
  %76 = getelementptr inbounds i64, i64* %55, i64 %index.next377.3
  %77 = bitcast i64* %76 to <2 x i64>*
  store <2 x i64> zeroinitializer, <2 x i64>* %77, align 8, !tbaa !11
  %78 = getelementptr inbounds i64, i64* %76, i64 2
  %79 = bitcast i64* %78 to <2 x i64>*
  store <2 x i64> zeroinitializer, <2 x i64>* %79, align 8, !tbaa !11
  %index.next377.4 = or i64 %index376, 20
  %80 = getelementptr inbounds i64, i64* %55, i64 %index.next377.4
  %81 = bitcast i64* %80 to <2 x i64>*
  store <2 x i64> zeroinitializer, <2 x i64>* %81, align 8, !tbaa !11
  %82 = getelementptr inbounds i64, i64* %80, i64 2
  %83 = bitcast i64* %82 to <2 x i64>*
  store <2 x i64> zeroinitializer, <2 x i64>* %83, align 8, !tbaa !11
  %index.next377.5 = or i64 %index376, 24
  %84 = getelementptr inbounds i64, i64* %55, i64 %index.next377.5
  %85 = bitcast i64* %84 to <2 x i64>*
  store <2 x i64> zeroinitializer, <2 x i64>* %85, align 8, !tbaa !11
  %86 = getelementptr inbounds i64, i64* %84, i64 2
  %87 = bitcast i64* %86 to <2 x i64>*
  store <2 x i64> zeroinitializer, <2 x i64>* %87, align 8, !tbaa !11
  %index.next377.6 = or i64 %index376, 28
  %88 = getelementptr inbounds i64, i64* %55, i64 %index.next377.6
  %89 = bitcast i64* %88 to <2 x i64>*
  store <2 x i64> zeroinitializer, <2 x i64>* %89, align 8, !tbaa !11
  %90 = getelementptr inbounds i64, i64* %88, i64 2
  %91 = bitcast i64* %90 to <2 x i64>*
  store <2 x i64> zeroinitializer, <2 x i64>* %91, align 8, !tbaa !11
  %index.next377.7 = add nuw i64 %index376, 32
  %niter440.next.7 = add i64 %niter440, 8
  %niter440.ncmp.7 = icmp eq i64 %niter440.next.7, %unroll_iter439
  br i1 %niter440.ncmp.7, label %middle.block367.unr-lcssa, label %vector.body369, !llvm.loop !72

middle.block367.unr-lcssa:                        ; preds = %vector.body369, %vector.ph371
  %index376.unr = phi i64 [ 0, %vector.ph371 ], [ %index.next377.7, %vector.body369 ]
  %lcmp.mod438.not = icmp eq i64 %xtraiter436, 0
  br i1 %lcmp.mod438.not, label %middle.block367, label %vector.body369.epil

vector.body369.epil:                              ; preds = %middle.block367.unr-lcssa, %vector.body369.epil
  %index376.epil = phi i64 [ %index.next377.epil, %vector.body369.epil ], [ %index376.unr, %middle.block367.unr-lcssa ]
  %epil.iter437 = phi i64 [ %epil.iter437.next, %vector.body369.epil ], [ 0, %middle.block367.unr-lcssa ]
  %92 = getelementptr inbounds i64, i64* %55, i64 %index376.epil
  %93 = bitcast i64* %92 to <2 x i64>*
  store <2 x i64> zeroinitializer, <2 x i64>* %93, align 8, !tbaa !11
  %94 = getelementptr inbounds i64, i64* %92, i64 2
  %95 = bitcast i64* %94 to <2 x i64>*
  store <2 x i64> zeroinitializer, <2 x i64>* %95, align 8, !tbaa !11
  %index.next377.epil = add nuw i64 %index376.epil, 4
  %epil.iter437.next = add i64 %epil.iter437, 1
  %epil.iter437.cmp.not = icmp eq i64 %epil.iter437.next, %xtraiter436
  br i1 %epil.iter437.cmp.not, label %middle.block367, label %vector.body369.epil, !llvm.loop !73

middle.block367:                                  ; preds = %vector.body369.epil, %middle.block367.unr-lcssa
  %cmp.n375 = icmp eq i64 %n.vec373, %wide.trip.count329
  br i1 %cmp.n375, label %for.end52, label %for.body47.preheader428

for.body47.preheader428:                          ; preds = %for.body47.preheader, %middle.block367
  %indvars.iv326.ph = phi i64 [ 0, %for.body47.preheader ], [ %n.vec373, %middle.block367 ]
  br label %for.body47

for.body47:                                       ; preds = %for.body47.preheader428, %for.body47
  %indvars.iv326 = phi i64 [ %indvars.iv.next327, %for.body47 ], [ %indvars.iv326.ph, %for.body47.preheader428 ]
  %arrayidx49 = getelementptr inbounds i64, i64* %55, i64 %indvars.iv326
  store i64 0, i64* %arrayidx49, align 8, !tbaa !11
  %indvars.iv.next327 = add nuw nsw i64 %indvars.iv326, 1
  %exitcond330.not = icmp eq i64 %indvars.iv.next327, %wide.trip.count329
  br i1 %exitcond330.not, label %for.end52, label %for.body47, !llvm.loop !74

for.end52:                                        ; preds = %for.body47, %middle.block367, %if.end43
  %top53 = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %call1, i64 0, i32 1
  store i32 %0, i32* %top53, align 8, !tbaa !4
  %d54 = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %call3, i64 0, i32 0
  %96 = load i64*, i64** %d54, align 8, !tbaa !10
  %d63 = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %p, i64 0, i32 0
  %sub67 = add i32 %0, -1
  %wide.trip.count334 = zext i32 %sub67 to i64
  %wide.trip.count339 = zext i32 %0 to i64
  %min.iters.check407 = icmp ult i32 %0, 4
  %n.vec410 = and i64 %wide.trip.count339, 4294967292
  %cmp.n412 = icmp eq i64 %n.vec410, %wide.trip.count339
  %xtraiter441 = and i64 %wide.trip.count339, 1
  %lcmp.mod442.not = icmp eq i64 %xtraiter441, 0
  %97 = sub nsw i64 0, %wide.trip.count339
  br label %while.cond

while.cond:                                       ; preds = %while.cond.backedge, %for.end52
  %ubits.0 = phi i32 [ %call15, %for.end52 ], [ %ubits.0.be, %while.cond.backedge ]
  %vbits.0 = phi i32 [ %call16, %for.end52 ], [ %vbits.1, %while.cond.backedge ]
  %v.0 = phi %struct.bignum_st* [ %call3, %for.end52 ], [ %v.1, %while.cond.backedge ]
  %udp.0 = phi i64* [ %1, %for.end52 ], [ %udp.1, %while.cond.backedge ]
  %bdp.0 = phi i64* [ %29, %for.end52 ], [ %bdp.1, %while.cond.backedge ]
  %vdp.0 = phi i64* [ %96, %for.end52 ], [ %vdp.1, %while.cond.backedge ]
  %cdp.0 = phi i64* [ %55, %for.end52 ], [ %cdp.1, %while.cond.backedge ]
  %u.0 = phi %struct.bignum_st* [ %call2, %for.end52 ], [ %u.1, %while.cond.backedge ]
  %c.0 = phi %struct.bignum_st* [ %call1, %for.end52 ], [ %c.1, %while.cond.backedge ]
  %b.0 = phi %struct.bignum_st* [ %call, %for.end52 ], [ %b.1, %while.cond.backedge ]
  %tobool56.not310 = icmp eq i32 %ubits.0, 0
  br i1 %tobool56.not310, label %while.end.thread, label %land.rhs

while.end.thread:                                 ; preds = %for.end92, %while.cond
  %.pr = load i64, i64* %udp.0, align 8, !tbaa !11
  br label %if.then100

land.rhs:                                         ; preds = %while.cond, %for.end92
  %ubits.1311 = phi i32 [ %dec, %for.end92 ], [ %ubits.0, %while.cond ]
  %98 = load i64, i64* %udp.0, align 8, !tbaa !11
  %and = and i64 %98, 1
  %tobool58.not = icmp eq i64 %and, 0
  br i1 %tobool58.not, label %while.body59, label %while.end

while.body59:                                     ; preds = %land.rhs
  %99 = load i64, i64* %bdp.0, align 8, !tbaa !11
  %and62 = and i64 %99, 1
  %sub = sub nsw i64 0, %and62
  %100 = load i64*, i64** %d63, align 8, !tbaa !10
  %101 = load i64, i64* %100, align 8, !tbaa !11
  %and65 = and i64 %101, %sub
  %xor = xor i64 %and65, %99
  br i1 %cmp32300, label %for.body69, label %for.end92

for.body69:                                       ; preds = %while.body59, %for.body69
  %indvars.iv331 = phi i64 [ %indvars.iv.next332, %for.body69 ], [ 0, %while.body59 ]
  %b0.0307 = phi i64 [ %xor83, %for.body69 ], [ %xor, %while.body59 ]
  %u0.0306 = phi i64 [ %102, %for.body69 ], [ %98, %while.body59 ]
  %indvars.iv.next332 = add nuw nsw i64 %indvars.iv331, 1
  %arrayidx71 = getelementptr inbounds i64, i64* %udp.0, i64 %indvars.iv.next332
  %102 = load i64, i64* %arrayidx71, align 8, !tbaa !11
  %or = tail call i64 @llvm.fshl.i64(i64 %102, i64 %u0.0306, i64 63)
  %arrayidx74 = getelementptr inbounds i64, i64* %udp.0, i64 %indvars.iv331
  store i64 %or, i64* %arrayidx74, align 8, !tbaa !11
  %arrayidx77 = getelementptr inbounds i64, i64* %bdp.0, i64 %indvars.iv.next332
  %103 = load i64, i64* %arrayidx77, align 8, !tbaa !11
  %arrayidx81 = getelementptr inbounds i64, i64* %100, i64 %indvars.iv.next332
  %104 = load i64, i64* %arrayidx81, align 8, !tbaa !11
  %and82 = and i64 %104, %sub
  %xor83 = xor i64 %and82, %103
  %or86 = tail call i64 @llvm.fshl.i64(i64 %xor83, i64 %b0.0307, i64 63)
  %arrayidx89 = getelementptr inbounds i64, i64* %bdp.0, i64 %indvars.iv331
  store i64 %or86, i64* %arrayidx89, align 8, !tbaa !11
  %exitcond335.not = icmp eq i64 %indvars.iv.next332, %wide.trip.count334
  br i1 %exitcond335.not, label %for.end92, label %for.body69, !llvm.loop !75

for.end92:                                        ; preds = %for.body69, %while.body59
  %i.3.lcssa = phi i32 [ 0, %while.body59 ], [ %sub67, %for.body69 ]
  %u0.0.lcssa = phi i64 [ %98, %while.body59 ], [ %102, %for.body69 ]
  %b0.0.lcssa = phi i64 [ %xor, %while.body59 ], [ %xor83, %for.body69 ]
  %shr93 = lshr i64 %u0.0.lcssa, 1
  %idxprom94 = zext i32 %i.3.lcssa to i64
  %arrayidx95 = getelementptr inbounds i64, i64* %udp.0, i64 %idxprom94
  store i64 %shr93, i64* %arrayidx95, align 8, !tbaa !11
  %shr96 = lshr i64 %b0.0.lcssa, 1
  %arrayidx98 = getelementptr inbounds i64, i64* %bdp.0, i64 %idxprom94
  store i64 %shr96, i64* %arrayidx98, align 8, !tbaa !11
  %dec = add nsw i32 %ubits.1311, -1
  %tobool56.not = icmp eq i32 %dec, 0
  br i1 %tobool56.not, label %while.end.thread, label %land.rhs, !llvm.loop !76

while.end:                                        ; preds = %land.rhs
  %cmp99 = icmp slt i32 %ubits.1311, 65
  br i1 %cmp99, label %if.then100, label %if.end109

if.then100:                                       ; preds = %while.end.thread, %while.end
  %ubits.1295 = phi i32 [ 0, %while.end.thread ], [ %ubits.1311, %while.end ]
  %105 = phi i64 [ %.pr, %while.end.thread ], [ %98, %while.end ]
  switch i64 %105, label %if.end109 [
    i64 0, label %err
    i64 1, label %cleanup.cont
  ]

if.end109:                                        ; preds = %if.then100, %while.end
  %ubits.1294 = phi i32 [ %ubits.1295, %if.then100 ], [ %ubits.1311, %while.end ]
  %cmp110 = icmp slt i32 %ubits.1294, %vbits.0
  br i1 %cmp110, label %if.then111, label %if.end114

if.then111:                                       ; preds = %if.end109
  %d112 = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %u.0, i64 0, i32 0
  %106 = load i64*, i64** %d112, align 8, !tbaa !10
  %d113 = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %b.0, i64 0, i32 0
  %107 = load i64*, i64** %d113, align 8, !tbaa !10
  br label %if.end114

if.end114:                                        ; preds = %if.then111, %if.end109
  %ubits.2 = phi i32 [ %vbits.0, %if.then111 ], [ %ubits.1294, %if.end109 ]
  %vbits.1 = phi i32 [ %ubits.1294, %if.then111 ], [ %vbits.0, %if.end109 ]
  %v.1 = phi %struct.bignum_st* [ %u.0, %if.then111 ], [ %v.0, %if.end109 ]
  %udp.1 = phi i64* [ %vdp.0, %if.then111 ], [ %udp.0, %if.end109 ]
  %bdp.1 = phi i64* [ %cdp.0, %if.then111 ], [ %bdp.0, %if.end109 ]
  %vdp.1 = phi i64* [ %106, %if.then111 ], [ %vdp.0, %if.end109 ]
  %cdp.1 = phi i64* [ %107, %if.then111 ], [ %cdp.0, %if.end109 ]
  %u.1 = phi %struct.bignum_st* [ %v.0, %if.then111 ], [ %u.0, %if.end109 ]
  %c.1 = phi %struct.bignum_st* [ %b.0, %if.then111 ], [ %c.0, %if.end109 ]
  %b.1 = phi %struct.bignum_st* [ %c.0, %if.then111 ], [ %b.0, %if.end109 ]
  br i1 %cmp46302, label %for.body117.preheader, label %for.end130

for.body117.preheader:                            ; preds = %if.end114
  br i1 %min.iters.check407, label %for.body117.preheader422, label %vector.memcheck

vector.memcheck:                                  ; preds = %for.body117.preheader
  %scevgep = getelementptr i64, i64* %udp.1, i64 %wide.trip.count339
  %scevgep381 = getelementptr i64, i64* %bdp.1, i64 %wide.trip.count339
  %scevgep384 = getelementptr i64, i64* %vdp.1, i64 %wide.trip.count339
  %scevgep387 = getelementptr i64, i64* %cdp.1, i64 %wide.trip.count339
  %bound0 = icmp ult i64* %udp.1, %scevgep381
  %bound1 = icmp ult i64* %bdp.1, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound0389 = icmp ult i64* %udp.1, %scevgep384
  %bound1390 = icmp ult i64* %vdp.1, %scevgep
  %found.conflict391 = and i1 %bound0389, %bound1390
  %conflict.rdx = or i1 %found.conflict, %found.conflict391
  %bound0392 = icmp ult i64* %udp.1, %scevgep387
  %bound1393 = icmp ult i64* %cdp.1, %scevgep
  %found.conflict394 = and i1 %bound0392, %bound1393
  %conflict.rdx395 = or i1 %conflict.rdx, %found.conflict394
  %bound0396 = icmp ult i64* %bdp.1, %scevgep384
  %bound1397 = icmp ult i64* %vdp.1, %scevgep381
  %found.conflict398 = and i1 %bound0396, %bound1397
  %conflict.rdx399 = or i1 %conflict.rdx395, %found.conflict398
  %bound0400 = icmp ult i64* %bdp.1, %scevgep387
  %bound1401 = icmp ult i64* %cdp.1, %scevgep381
  %found.conflict402 = and i1 %bound0400, %bound1401
  %conflict.rdx403 = or i1 %conflict.rdx399, %found.conflict402
  br i1 %conflict.rdx403, label %for.body117.preheader422, label %vector.body406

vector.body406:                                   ; preds = %vector.memcheck, %vector.body406
  %index413 = phi i64 [ %index.next421, %vector.body406 ], [ 0, %vector.memcheck ]
  %108 = getelementptr inbounds i64, i64* %vdp.1, i64 %index413
  %109 = bitcast i64* %108 to <2 x i64>*
  %wide.load = load <2 x i64>, <2 x i64>* %109, align 8, !tbaa !11, !alias.scope !77
  %110 = getelementptr inbounds i64, i64* %108, i64 2
  %111 = bitcast i64* %110 to <2 x i64>*
  %wide.load414 = load <2 x i64>, <2 x i64>* %111, align 8, !tbaa !11, !alias.scope !77
  %112 = getelementptr inbounds i64, i64* %udp.1, i64 %index413
  %113 = bitcast i64* %112 to <2 x i64>*
  %wide.load415 = load <2 x i64>, <2 x i64>* %113, align 8, !tbaa !11, !alias.scope !80, !noalias !82
  %114 = getelementptr inbounds i64, i64* %112, i64 2
  %115 = bitcast i64* %114 to <2 x i64>*
  %wide.load416 = load <2 x i64>, <2 x i64>* %115, align 8, !tbaa !11, !alias.scope !80, !noalias !82
  %116 = xor <2 x i64> %wide.load415, %wide.load
  %117 = xor <2 x i64> %wide.load416, %wide.load414
  %118 = bitcast i64* %112 to <2 x i64>*
  store <2 x i64> %116, <2 x i64>* %118, align 8, !tbaa !11, !alias.scope !80, !noalias !82
  %119 = bitcast i64* %114 to <2 x i64>*
  store <2 x i64> %117, <2 x i64>* %119, align 8, !tbaa !11, !alias.scope !80, !noalias !82
  %120 = getelementptr inbounds i64, i64* %cdp.1, i64 %index413
  %121 = bitcast i64* %120 to <2 x i64>*
  %wide.load417 = load <2 x i64>, <2 x i64>* %121, align 8, !tbaa !11, !alias.scope !85
  %122 = getelementptr inbounds i64, i64* %120, i64 2
  %123 = bitcast i64* %122 to <2 x i64>*
  %wide.load418 = load <2 x i64>, <2 x i64>* %123, align 8, !tbaa !11, !alias.scope !85
  %124 = getelementptr inbounds i64, i64* %bdp.1, i64 %index413
  %125 = bitcast i64* %124 to <2 x i64>*
  %wide.load419 = load <2 x i64>, <2 x i64>* %125, align 8, !tbaa !11, !alias.scope !86, !noalias !87
  %126 = getelementptr inbounds i64, i64* %124, i64 2
  %127 = bitcast i64* %126 to <2 x i64>*
  %wide.load420 = load <2 x i64>, <2 x i64>* %127, align 8, !tbaa !11, !alias.scope !86, !noalias !87
  %128 = xor <2 x i64> %wide.load419, %wide.load417
  %129 = xor <2 x i64> %wide.load420, %wide.load418
  %130 = bitcast i64* %124 to <2 x i64>*
  store <2 x i64> %128, <2 x i64>* %130, align 8, !tbaa !11, !alias.scope !86, !noalias !87
  %131 = bitcast i64* %126 to <2 x i64>*
  store <2 x i64> %129, <2 x i64>* %131, align 8, !tbaa !11, !alias.scope !86, !noalias !87
  %index.next421 = add nuw i64 %index413, 4
  %132 = icmp eq i64 %index.next421, %n.vec410
  br i1 %132, label %middle.block404, label %vector.body406, !llvm.loop !88

middle.block404:                                  ; preds = %vector.body406
  br i1 %cmp.n412, label %for.end130, label %for.body117.preheader422

for.body117.preheader422:                         ; preds = %vector.memcheck, %for.body117.preheader, %middle.block404
  %indvars.iv336.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %for.body117.preheader ], [ %n.vec410, %middle.block404 ]
  %133 = xor i64 %indvars.iv336.ph, -1
  br i1 %lcmp.mod442.not, label %for.body117.prol.loopexit, label %for.body117.prol

for.body117.prol:                                 ; preds = %for.body117.preheader422
  %arrayidx119.prol = getelementptr inbounds i64, i64* %vdp.1, i64 %indvars.iv336.ph
  %134 = load i64, i64* %arrayidx119.prol, align 8, !tbaa !11
  %arrayidx121.prol = getelementptr inbounds i64, i64* %udp.1, i64 %indvars.iv336.ph
  %135 = load i64, i64* %arrayidx121.prol, align 8, !tbaa !11
  %xor122.prol = xor i64 %135, %134
  store i64 %xor122.prol, i64* %arrayidx121.prol, align 8, !tbaa !11
  %arrayidx124.prol = getelementptr inbounds i64, i64* %cdp.1, i64 %indvars.iv336.ph
  %136 = load i64, i64* %arrayidx124.prol, align 8, !tbaa !11
  %arrayidx126.prol = getelementptr inbounds i64, i64* %bdp.1, i64 %indvars.iv336.ph
  %137 = load i64, i64* %arrayidx126.prol, align 8, !tbaa !11
  %xor127.prol = xor i64 %137, %136
  store i64 %xor127.prol, i64* %arrayidx126.prol, align 8, !tbaa !11
  %indvars.iv.next337.prol = or i64 %indvars.iv336.ph, 1
  br label %for.body117.prol.loopexit

for.body117.prol.loopexit:                        ; preds = %for.body117.prol, %for.body117.preheader422
  %indvars.iv336.unr = phi i64 [ %indvars.iv336.ph, %for.body117.preheader422 ], [ %indvars.iv.next337.prol, %for.body117.prol ]
  %138 = icmp eq i64 %133, %97
  br i1 %138, label %for.end130, label %for.body117

for.body117:                                      ; preds = %for.body117.prol.loopexit, %for.body117
  %indvars.iv336 = phi i64 [ %indvars.iv.next337.1, %for.body117 ], [ %indvars.iv336.unr, %for.body117.prol.loopexit ]
  %arrayidx119 = getelementptr inbounds i64, i64* %vdp.1, i64 %indvars.iv336
  %139 = load i64, i64* %arrayidx119, align 8, !tbaa !11
  %arrayidx121 = getelementptr inbounds i64, i64* %udp.1, i64 %indvars.iv336
  %140 = load i64, i64* %arrayidx121, align 8, !tbaa !11
  %xor122 = xor i64 %140, %139
  store i64 %xor122, i64* %arrayidx121, align 8, !tbaa !11
  %arrayidx124 = getelementptr inbounds i64, i64* %cdp.1, i64 %indvars.iv336
  %141 = load i64, i64* %arrayidx124, align 8, !tbaa !11
  %arrayidx126 = getelementptr inbounds i64, i64* %bdp.1, i64 %indvars.iv336
  %142 = load i64, i64* %arrayidx126, align 8, !tbaa !11
  %xor127 = xor i64 %142, %141
  store i64 %xor127, i64* %arrayidx126, align 8, !tbaa !11
  %indvars.iv.next337 = add nuw nsw i64 %indvars.iv336, 1
  %arrayidx119.1 = getelementptr inbounds i64, i64* %vdp.1, i64 %indvars.iv.next337
  %143 = load i64, i64* %arrayidx119.1, align 8, !tbaa !11
  %arrayidx121.1 = getelementptr inbounds i64, i64* %udp.1, i64 %indvars.iv.next337
  %144 = load i64, i64* %arrayidx121.1, align 8, !tbaa !11
  %xor122.1 = xor i64 %144, %143
  store i64 %xor122.1, i64* %arrayidx121.1, align 8, !tbaa !11
  %arrayidx124.1 = getelementptr inbounds i64, i64* %cdp.1, i64 %indvars.iv.next337
  %145 = load i64, i64* %arrayidx124.1, align 8, !tbaa !11
  %arrayidx126.1 = getelementptr inbounds i64, i64* %bdp.1, i64 %indvars.iv.next337
  %146 = load i64, i64* %arrayidx126.1, align 8, !tbaa !11
  %xor127.1 = xor i64 %146, %145
  store i64 %xor127.1, i64* %arrayidx126.1, align 8, !tbaa !11
  %indvars.iv.next337.1 = add nuw nsw i64 %indvars.iv336, 2
  %exitcond340.not.1 = icmp eq i64 %indvars.iv.next337.1, %wide.trip.count339
  br i1 %exitcond340.not.1, label %for.end130, label %for.body117, !llvm.loop !89

for.end130:                                       ; preds = %for.body117.prol.loopexit, %for.body117, %middle.block404, %if.end114
  %cmp131 = icmp eq i32 %ubits.2, %vbits.1
  br i1 %cmp131, label %if.then132, label %while.cond.backedge

if.then132:                                       ; preds = %for.end130
  %sub133 = add nsw i32 %ubits.2, -1
  %div = sdiv i32 %sub133, 64
  %147 = sext i32 %div to i64
  br label %while.cond134

while.cond134:                                    ; preds = %while.cond134, %if.then132
  %indvars.iv341 = phi i64 [ %indvars.iv.next342, %while.cond134 ], [ %147, %if.then132 ]
  %arrayidx136 = getelementptr inbounds i64, i64* %udp.1, i64 %indvars.iv341
  %148 = load i64, i64* %arrayidx136, align 8, !tbaa !11
  %cmp137 = icmp eq i64 %148, 0
  %149 = icmp ne i64 %indvars.iv341, 0
  %150 = select i1 %cmp137, i1 %149, i1 false
  %indvars.iv.next342 = add nsw i64 %indvars.iv341, -1
  br i1 %150, label %while.cond134, label %while.end143, !llvm.loop !90

while.end143:                                     ; preds = %while.cond134
  %151 = trunc i64 %indvars.iv341 to i32
  %mul = shl nsw i32 %151, 6
  %call144 = tail call i32 @BN_num_bits_word(i64 noundef %148) #4
  %add145 = add nsw i32 %call144, %mul
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %while.end143, %for.end130
  %ubits.0.be = phi i32 [ %add145, %while.end143 ], [ %ubits.2, %for.end130 ]
  br label %while.cond

cleanup.cont:                                     ; preds = %if.then100
  tail call void @bn_correct_top(%struct.bignum_st* noundef %b.0) #4
  %call155 = tail call %struct.bignum_st* @BN_copy(%struct.bignum_st* noundef %r, %struct.bignum_st* noundef %b.0) #4
  %tobool156.not = icmp ne %struct.bignum_st* %call155, null
  %spec.select = zext i1 %tobool156.not to i32
  br label %err

err:                                              ; preds = %if.then100, %for.end38, %for.end, %if.end14, %cleanup.cont, %if.end10, %if.end6, %if.end, %entry
  %ret.0 = phi i32 [ 0, %entry ], [ 0, %if.end6 ], [ 0, %if.end10 ], [ 0, %if.end ], [ %spec.select, %cleanup.cont ], [ 0, %if.end14 ], [ 0, %for.end ], [ 0, %for.end38 ], [ 0, %if.then100 ]
  tail call void @BN_CTX_end(%struct.bignum_ctx* noundef %ctx) #4
  ret i32 %ret.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @BN_GF2m_mod_inv_arr(%struct.bignum_st* noundef %r, %struct.bignum_st* noundef %xx, i32* nocapture noundef readonly %p, %struct.bignum_ctx* noundef %ctx) local_unnamed_addr #0 {
entry:
  tail call void @BN_CTX_start(%struct.bignum_ctx* noundef %ctx) #4
  %call = tail call %struct.bignum_st* @BN_CTX_get(%struct.bignum_ctx* noundef %ctx) #4
  %cmp = icmp eq %struct.bignum_st* %call, null
  br i1 %cmp, label %err, label %if.end

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @BN_GF2m_arr2poly(i32* noundef %p, %struct.bignum_st* noundef nonnull %call) #6
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %err, label %if.end3

if.end3:                                          ; preds = %if.end
  %call4 = tail call i32 @BN_GF2m_mod_inv(%struct.bignum_st* noundef %r, %struct.bignum_st* noundef %xx, %struct.bignum_st* noundef nonnull %call, %struct.bignum_ctx* noundef %ctx) #6
  br label %err

err:                                              ; preds = %if.end, %entry, %if.end3
  %ret.0 = phi i32 [ 0, %entry ], [ %call4, %if.end3 ], [ 0, %if.end ]
  tail call void @BN_CTX_end(%struct.bignum_ctx* noundef %ctx) #4
  ret i32 %ret.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @BN_GF2m_arr2poly(i32* nocapture noundef readonly %p, %struct.bignum_st* noundef %a) local_unnamed_addr #0 {
entry:
  tail call void @BN_zero_ex(%struct.bignum_st* noundef %a) #4
  %0 = load i32, i32* %p, align 4, !tbaa !36
  %cmp.not9 = icmp eq i32 %0, -1
  br i1 %cmp.not9, label %cleanup, label %for.body

for.cond:                                         ; preds = %for.body
  %arrayidx = getelementptr inbounds i32, i32* %p, i64 %indvars.iv.next
  %1 = load i32, i32* %arrayidx, align 4, !tbaa !36
  %cmp.not = icmp eq i32 %1, -1
  br i1 %cmp.not, label %cleanup, label %for.body, !llvm.loop !91

for.body:                                         ; preds = %entry, %for.cond
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.cond ], [ 0, %entry ]
  %2 = phi i32 [ %1, %for.cond ], [ %0, %entry ]
  %call = tail call i32 @BN_set_bit(%struct.bignum_st* noundef %a, i32 noundef %2) #4
  %cmp3 = icmp eq i32 %call, 0
  %indvars.iv.next = add nuw i64 %indvars.iv, 1
  br i1 %cmp3, label %cleanup, label %for.cond

cleanup:                                          ; preds = %for.body, %for.cond, %entry
  %retval.0 = phi i32 [ 1, %entry ], [ 1, %for.cond ], [ 0, %for.body ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @BN_GF2m_mod_div(%struct.bignum_st* noundef %r, %struct.bignum_st* noundef %y, %struct.bignum_st* noundef %x, %struct.bignum_st* noundef %p, %struct.bignum_ctx* noundef %ctx) local_unnamed_addr #0 {
entry:
  tail call void @BN_CTX_start(%struct.bignum_ctx* noundef %ctx) #4
  %call = tail call %struct.bignum_st* @BN_CTX_get(%struct.bignum_ctx* noundef %ctx) #4
  %cmp = icmp eq %struct.bignum_st* %call, null
  br i1 %cmp, label %err, label %if.end

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @BN_GF2m_mod_inv(%struct.bignum_st* noundef nonnull %call, %struct.bignum_st* noundef %x, %struct.bignum_st* noundef %p, %struct.bignum_ctx* noundef %ctx) #6
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %err, label %if.end3

if.end3:                                          ; preds = %if.end
  %call4 = tail call i32 @BN_GF2m_mod_mul(%struct.bignum_st* noundef %r, %struct.bignum_st* noundef %y, %struct.bignum_st* noundef nonnull %call, %struct.bignum_st* noundef %p, %struct.bignum_ctx* noundef %ctx) #6
  %tobool5.not = icmp ne i32 %call4, 0
  %spec.select = zext i1 %tobool5.not to i32
  br label %err

err:                                              ; preds = %if.end3, %if.end, %entry
  %ret.0 = phi i32 [ 0, %entry ], [ 0, %if.end ], [ %spec.select, %if.end3 ]
  tail call void @BN_CTX_end(%struct.bignum_ctx* noundef %ctx) #4
  ret i32 %ret.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @BN_GF2m_mod_div_arr(%struct.bignum_st* noundef %r, %struct.bignum_st* noundef %yy, %struct.bignum_st* noundef %xx, i32* nocapture noundef readonly %p, %struct.bignum_ctx* noundef %ctx) local_unnamed_addr #0 {
entry:
  tail call void @BN_CTX_start(%struct.bignum_ctx* noundef %ctx) #4
  %call = tail call %struct.bignum_st* @BN_CTX_get(%struct.bignum_ctx* noundef %ctx) #4
  %cmp = icmp eq %struct.bignum_st* %call, null
  br i1 %cmp, label %err, label %if.end

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @BN_GF2m_arr2poly(i32* noundef %p, %struct.bignum_st* noundef nonnull %call) #6
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %err, label %if.end3

if.end3:                                          ; preds = %if.end
  %call4 = tail call i32 @BN_GF2m_mod_div(%struct.bignum_st* noundef %r, %struct.bignum_st* noundef %yy, %struct.bignum_st* noundef %xx, %struct.bignum_st* noundef nonnull %call, %struct.bignum_ctx* noundef %ctx) #6
  br label %err

err:                                              ; preds = %if.end, %entry, %if.end3
  %ret.0 = phi i32 [ 0, %entry ], [ %call4, %if.end3 ], [ 0, %if.end ]
  tail call void @BN_CTX_end(%struct.bignum_ctx* noundef %ctx) #4
  ret i32 %ret.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @BN_GF2m_mod_exp_arr(%struct.bignum_st* noundef %r, %struct.bignum_st* noundef %a, %struct.bignum_st* noundef %b, i32* nocapture noundef readonly %p, %struct.bignum_ctx* noundef %ctx) local_unnamed_addr #0 {
entry:
  %call = tail call i32 @BN_is_zero(%struct.bignum_st* noundef %b) #4
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call1 = tail call i32 @BN_set_word(%struct.bignum_st* noundef %r, i64 noundef 1) #4
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @BN_abs_is_word(%struct.bignum_st* noundef %b, i64 noundef 1) #4
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end6, label %if.then4

if.then4:                                         ; preds = %if.end
  %call5 = tail call %struct.bignum_st* @BN_copy(%struct.bignum_st* noundef %r, %struct.bignum_st* noundef %a) #4
  %cmp = icmp ne %struct.bignum_st* %call5, null
  %conv = zext i1 %cmp to i32
  br label %cleanup

if.end6:                                          ; preds = %if.end
  tail call void @BN_CTX_start(%struct.bignum_ctx* noundef %ctx) #4
  %call7 = tail call %struct.bignum_st* @BN_CTX_get(%struct.bignum_ctx* noundef %ctx) #4
  %cmp8 = icmp eq %struct.bignum_st* %call7, null
  br i1 %cmp8, label %err, label %if.end11

if.end11:                                         ; preds = %if.end6
  %call12 = tail call i32 @BN_GF2m_mod_arr(%struct.bignum_st* noundef nonnull %call7, %struct.bignum_st* noundef %a, i32* noundef %p) #6
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %err, label %if.end15

if.end15:                                         ; preds = %if.end11
  %call16 = tail call i32 @BN_num_bits(%struct.bignum_st* noundef %b) #4
  %cmp1863 = icmp sgt i32 %call16, 1
  br i1 %cmp1863, label %for.body.preheader, label %for.end

for.body.preheader:                               ; preds = %if.end15
  %sub17 = add nsw i32 %call16, -2
  br label %for.body

for.body:                                         ; preds = %for.body.preheader, %for.inc
  %i.064 = phi i32 [ %dec, %for.inc ], [ %sub17, %for.body.preheader ]
  %call20 = tail call i32 @BN_GF2m_mod_sqr_arr(%struct.bignum_st* noundef nonnull %call7, %struct.bignum_st* noundef nonnull %call7, i32* noundef %p, %struct.bignum_ctx* noundef %ctx) #6
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %err, label %if.end23

if.end23:                                         ; preds = %for.body
  %call24 = tail call i32 @BN_is_bit_set(%struct.bignum_st* noundef %b, i32 noundef %i.064) #4
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %for.inc, label %if.then26

if.then26:                                        ; preds = %if.end23
  %call27 = tail call i32 @BN_GF2m_mod_mul_arr(%struct.bignum_st* noundef nonnull %call7, %struct.bignum_st* noundef nonnull %call7, %struct.bignum_st* noundef %a, i32* noundef %p, %struct.bignum_ctx* noundef %ctx) #6
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %err, label %for.inc

for.inc:                                          ; preds = %if.end23, %if.then26
  %dec = add nsw i32 %i.064, -1
  %cmp18 = icmp sgt i32 %i.064, 0
  br i1 %cmp18, label %for.body, label %for.end, !llvm.loop !92

for.end:                                          ; preds = %for.inc, %if.end15
  %call32 = tail call %struct.bignum_st* @BN_copy(%struct.bignum_st* noundef %r, %struct.bignum_st* noundef nonnull %call7) #4
  %tobool33.not = icmp ne %struct.bignum_st* %call32, null
  %spec.select = zext i1 %tobool33.not to i32
  br label %err

err:                                              ; preds = %if.then26, %for.body, %for.end, %if.end11, %if.end6
  %ret.0 = phi i32 [ 0, %if.end6 ], [ 0, %if.end11 ], [ %spec.select, %for.end ], [ 0, %for.body ], [ 0, %if.then26 ]
  tail call void @BN_CTX_end(%struct.bignum_ctx* noundef %ctx) #4
  br label %cleanup

cleanup:                                          ; preds = %err, %if.then4, %if.then
  %retval.0 = phi i32 [ %call1, %if.then ], [ %conv, %if.then4 ], [ %ret.0, %err ]
  ret i32 %retval.0
}

declare i32 @BN_set_word(%struct.bignum_st* noundef, i64 noundef) local_unnamed_addr #2

declare i32 @BN_abs_is_word(%struct.bignum_st* noundef, i64 noundef) local_unnamed_addr #2

declare %struct.bignum_st* @BN_copy(%struct.bignum_st* noundef, %struct.bignum_st* noundef) local_unnamed_addr #2

declare i32 @BN_is_bit_set(%struct.bignum_st* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @BN_GF2m_mod_exp(%struct.bignum_st* noundef %r, %struct.bignum_st* noundef %a, %struct.bignum_st* noundef %b, %struct.bignum_st* noundef %p, %struct.bignum_ctx* noundef %ctx) local_unnamed_addr #0 {
entry:
  %call = tail call i32 @BN_num_bits(%struct.bignum_st* noundef %p) #4
  %add = add nsw i32 %call, 1
  %conv = sext i32 %add to i64
  %mul = shl nsw i64 %conv, 2
  %call1 = tail call i8* @CRYPTO_malloc(i64 noundef %mul, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 917) #4
  %0 = bitcast i8* %call1 to i32*
  %cmp = icmp eq i8* %call1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #4
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 919, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.BN_GF2m_mod_exp, i64 0, i64 0)) #4
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 3, i32 noundef 786688, i8* noundef null) #4
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = tail call i32 @BN_GF2m_poly2arr(%struct.bignum_st* noundef %p, i32* noundef nonnull %0, i32 noundef %add) #6
  %tobool.not = icmp eq i32 %call3, 0
  %cmp4 = icmp sgt i32 %call3, %add
  %or.cond = select i1 %tobool.not, i1 true, i1 %cmp4
  br i1 %or.cond, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.end
  tail call void @ERR_new() #4
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 924, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.BN_GF2m_mod_exp, i64 0, i64 0)) #4
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 3, i32 noundef 106, i8* noundef null) #4
  br label %err

if.end7:                                          ; preds = %if.end
  %call8 = tail call i32 @BN_GF2m_mod_exp_arr(%struct.bignum_st* noundef %r, %struct.bignum_st* noundef %a, %struct.bignum_st* noundef %b, i32* noundef nonnull %0, %struct.bignum_ctx* noundef %ctx) #6
  br label %err

err:                                              ; preds = %if.end7, %if.then6
  %ret.0 = phi i32 [ %call3, %if.then6 ], [ %call8, %if.end7 ]
  tail call void @CRYPTO_free(i8* noundef nonnull %call1, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 930) #4
  br label %cleanup

cleanup:                                          ; preds = %err, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ %ret.0, %err ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @BN_GF2m_mod_sqrt_arr(%struct.bignum_st* noundef %r, %struct.bignum_st* noundef %a, i32* nocapture noundef readonly %p, %struct.bignum_ctx* noundef %ctx) local_unnamed_addr #0 {
entry:
  %0 = load i32, i32* %p, align 4, !tbaa !36
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @BN_zero_ex(%struct.bignum_st* noundef %r) #4
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @BN_CTX_start(%struct.bignum_ctx* noundef %ctx) #4
  %call = tail call %struct.bignum_st* @BN_CTX_get(%struct.bignum_ctx* noundef %ctx) #4
  %cmp1 = icmp eq %struct.bignum_st* %call, null
  br i1 %cmp1, label %err, label %if.end3

if.end3:                                          ; preds = %if.end
  %1 = load i32, i32* %p, align 4, !tbaa !36
  %sub = add nsw i32 %1, -1
  %call5 = tail call i32 @BN_set_bit(%struct.bignum_st* noundef nonnull %call, i32 noundef %sub) #4
  %tobool.not = icmp eq i32 %call5, 0
  br i1 %tobool.not, label %err, label %if.end7

if.end7:                                          ; preds = %if.end3
  %call8 = tail call i32 @BN_GF2m_mod_exp_arr(%struct.bignum_st* noundef %r, %struct.bignum_st* noundef %a, %struct.bignum_st* noundef nonnull %call, i32* noundef nonnull %p, %struct.bignum_ctx* noundef %ctx) #6
  br label %err

err:                                              ; preds = %if.end3, %if.end, %if.end7
  %ret.0 = phi i32 [ 0, %if.end ], [ %call8, %if.end7 ], [ 0, %if.end3 ]
  tail call void @BN_CTX_end(%struct.bignum_ctx* noundef %ctx) #4
  br label %cleanup

cleanup:                                          ; preds = %err, %if.then
  %retval.0 = phi i32 [ 1, %if.then ], [ %ret.0, %err ]
  ret i32 %retval.0
}

declare i32 @BN_set_bit(%struct.bignum_st* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @BN_GF2m_mod_sqrt(%struct.bignum_st* noundef %r, %struct.bignum_st* noundef %a, %struct.bignum_st* noundef %p, %struct.bignum_ctx* noundef %ctx) local_unnamed_addr #0 {
entry:
  %call = tail call i32 @BN_num_bits(%struct.bignum_st* noundef %p) #4
  %add = add nsw i32 %call, 1
  %conv = sext i32 %add to i64
  %mul = shl nsw i64 %conv, 2
  %call1 = tail call i8* @CRYPTO_malloc(i64 noundef %mul, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 981) #4
  %0 = bitcast i8* %call1 to i32*
  %cmp = icmp eq i8* %call1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #4
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 983, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.BN_GF2m_mod_sqrt, i64 0, i64 0)) #4
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 3, i32 noundef 786688, i8* noundef null) #4
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = tail call i32 @BN_GF2m_poly2arr(%struct.bignum_st* noundef %p, i32* noundef nonnull %0, i32 noundef %add) #6
  %tobool.not = icmp eq i32 %call3, 0
  %cmp4 = icmp sgt i32 %call3, %add
  %or.cond = select i1 %tobool.not, i1 true, i1 %cmp4
  br i1 %or.cond, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.end
  tail call void @ERR_new() #4
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 988, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.BN_GF2m_mod_sqrt, i64 0, i64 0)) #4
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 3, i32 noundef 106, i8* noundef null) #4
  br label %err

if.end7:                                          ; preds = %if.end
  %call8 = tail call i32 @BN_GF2m_mod_sqrt_arr(%struct.bignum_st* noundef %r, %struct.bignum_st* noundef %a, i32* noundef nonnull %0, %struct.bignum_ctx* noundef %ctx) #6
  br label %err

err:                                              ; preds = %if.end7, %if.then6
  %ret.0 = phi i32 [ %call3, %if.then6 ], [ %call8, %if.end7 ]
  tail call void @CRYPTO_free(i8* noundef nonnull %call1, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 994) #4
  br label %cleanup

cleanup:                                          ; preds = %err, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ %ret.0, %err ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @BN_GF2m_mod_solve_quad_arr(%struct.bignum_st* noundef %r, %struct.bignum_st* noundef %a_, i32* nocapture noundef readonly %p, %struct.bignum_ctx* noundef %ctx) local_unnamed_addr #0 {
entry:
  %0 = load i32, i32* %p, align 4, !tbaa !36
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @BN_zero_ex(%struct.bignum_st* noundef %r) #4
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @BN_CTX_start(%struct.bignum_ctx* noundef %ctx) #4
  %call = tail call %struct.bignum_st* @BN_CTX_get(%struct.bignum_ctx* noundef %ctx) #4
  %call1 = tail call %struct.bignum_st* @BN_CTX_get(%struct.bignum_ctx* noundef %ctx) #4
  %call2 = tail call %struct.bignum_st* @BN_CTX_get(%struct.bignum_ctx* noundef %ctx) #4
  %cmp3 = icmp eq %struct.bignum_st* %call2, null
  br i1 %cmp3, label %err, label %if.end5

if.end5:                                          ; preds = %if.end
  %call6 = tail call i32 @BN_GF2m_mod_arr(%struct.bignum_st* noundef %call, %struct.bignum_st* noundef %a_, i32* noundef nonnull %p) #6
  %tobool.not = icmp eq i32 %call6, 0
  br i1 %tobool.not, label %err, label %if.end8

if.end8:                                          ; preds = %if.end5
  %call9 = tail call i32 @BN_is_zero(%struct.bignum_st* noundef %call) #4
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end12, label %if.then11

if.then11:                                        ; preds = %if.end8
  tail call void @BN_zero_ex(%struct.bignum_st* noundef %r) #4
  br label %err

if.end12:                                         ; preds = %if.end8
  %1 = load i32, i32* %p, align 4, !tbaa !36
  %and = and i32 %1, 1
  %tobool14.not = icmp eq i32 %and, 0
  br i1 %tobool14.not, label %if.else, label %if.then15

if.then15:                                        ; preds = %if.end12
  %call16 = tail call %struct.bignum_st* @BN_copy(%struct.bignum_st* noundef %call1, %struct.bignum_st* noundef %call) #4
  %tobool17.not = icmp eq %struct.bignum_st* %call16, null
  br i1 %tobool17.not, label %err, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.then15
  %2 = load i32, i32* %p, align 4, !tbaa !36
  %cmp21.not195 = icmp slt i32 %2, 3
  br i1 %cmp21.not195, label %if.end89, label %for.body

for.cond:                                         ; preds = %if.end29
  %inc = add nuw nsw i32 %j.0196, 1
  %3 = load i32, i32* %p, align 4, !tbaa !36
  %sub = add nsw i32 %3, -1
  %div = sdiv i32 %sub, 2
  %cmp21.not.not = icmp slt i32 %j.0196, %div
  br i1 %cmp21.not.not, label %for.body, label %if.end89, !llvm.loop !93

for.body:                                         ; preds = %for.cond.preheader, %for.cond
  %j.0196 = phi i32 [ %inc, %for.cond ], [ 1, %for.cond.preheader ]
  %call22 = tail call i32 @BN_GF2m_mod_sqr_arr(%struct.bignum_st* noundef %call1, %struct.bignum_st* noundef %call1, i32* noundef nonnull %p, %struct.bignum_ctx* noundef %ctx) #6
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %err, label %if.end25

if.end25:                                         ; preds = %for.body
  %call26 = tail call i32 @BN_GF2m_mod_sqr_arr(%struct.bignum_st* noundef %call1, %struct.bignum_st* noundef %call1, i32* noundef nonnull %p, %struct.bignum_ctx* noundef %ctx) #6
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %err, label %if.end29

if.end29:                                         ; preds = %if.end25
  %call30 = tail call i32 @BN_GF2m_add(%struct.bignum_st* noundef %call1, %struct.bignum_st* noundef %call1, %struct.bignum_st* noundef %call) #6
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %err, label %for.cond

if.else:                                          ; preds = %if.end12
  %call34 = tail call %struct.bignum_st* @BN_CTX_get(%struct.bignum_ctx* noundef %ctx) #4
  %call35 = tail call %struct.bignum_st* @BN_CTX_get(%struct.bignum_ctx* noundef %ctx) #4
  %call36 = tail call %struct.bignum_st* @BN_CTX_get(%struct.bignum_ctx* noundef %ctx) #4
  %cmp37 = icmp eq %struct.bignum_st* %call36, null
  br i1 %cmp37, label %err, label %do.body

do.body:                                          ; preds = %if.else, %for.end80
  %count.0 = phi i32 [ %inc81, %for.end80 ], [ 0, %if.else ]
  %4 = load i32, i32* %p, align 4, !tbaa !36
  %call41 = tail call i32 @BN_priv_rand_ex(%struct.bignum_st* noundef %call34, i32 noundef %4, i32 noundef 0, i32 noundef 0, i32 noundef 0, %struct.bignum_ctx* noundef %ctx) #4
  %tobool42.not = icmp eq i32 %call41, 0
  br i1 %tobool42.not, label %err, label %if.end44

if.end44:                                         ; preds = %do.body
  %call45 = tail call i32 @BN_GF2m_mod_arr(%struct.bignum_st* noundef %call34, %struct.bignum_st* noundef %call34, i32* noundef nonnull %p) #6
  %tobool46.not = icmp eq i32 %call45, 0
  br i1 %tobool46.not, label %err, label %if.end48

if.end48:                                         ; preds = %if.end44
  tail call void @BN_zero_ex(%struct.bignum_st* noundef %call1) #4
  %call49 = tail call %struct.bignum_st* @BN_copy(%struct.bignum_st* noundef nonnull %call2, %struct.bignum_st* noundef %call34) #4
  %tobool50.not = icmp eq %struct.bignum_st* %call49, null
  br i1 %tobool50.not, label %err, label %for.cond53.preheader

for.cond53.preheader:                             ; preds = %if.end48
  %5 = load i32, i32* %p, align 4, !tbaa !36
  %cmp56.not.not197 = icmp sgt i32 %5, 1
  br i1 %cmp56.not.not197, label %for.body57, label %for.end80

for.cond53:                                       ; preds = %if.end73
  %6 = load i32, i32* %p, align 4, !tbaa !36
  %cmp56.not.not = icmp slt i32 %inc79, %6
  br i1 %cmp56.not.not, label %for.body57, label %for.end80, !llvm.loop !94

for.body57:                                       ; preds = %for.cond53.preheader, %for.cond53
  %j.1198 = phi i32 [ %inc79, %for.cond53 ], [ 1, %for.cond53.preheader ]
  %call58 = tail call i32 @BN_GF2m_mod_sqr_arr(%struct.bignum_st* noundef %call1, %struct.bignum_st* noundef %call1, i32* noundef nonnull %p, %struct.bignum_ctx* noundef %ctx) #6
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %err, label %if.end61

if.end61:                                         ; preds = %for.body57
  %call62 = tail call i32 @BN_GF2m_mod_sqr_arr(%struct.bignum_st* noundef %call35, %struct.bignum_st* noundef nonnull %call2, i32* noundef nonnull %p, %struct.bignum_ctx* noundef %ctx) #6
  %tobool63.not = icmp eq i32 %call62, 0
  br i1 %tobool63.not, label %err, label %if.end65

if.end65:                                         ; preds = %if.end61
  %call66 = tail call i32 @BN_GF2m_mod_mul_arr(%struct.bignum_st* noundef nonnull %call36, %struct.bignum_st* noundef %call35, %struct.bignum_st* noundef %call, i32* noundef nonnull %p, %struct.bignum_ctx* noundef %ctx) #6
  %tobool67.not = icmp eq i32 %call66, 0
  br i1 %tobool67.not, label %err, label %if.end69

if.end69:                                         ; preds = %if.end65
  %call70 = tail call i32 @BN_GF2m_add(%struct.bignum_st* noundef %call1, %struct.bignum_st* noundef %call1, %struct.bignum_st* noundef nonnull %call36) #6
  %tobool71.not = icmp eq i32 %call70, 0
  br i1 %tobool71.not, label %err, label %if.end73

if.end73:                                         ; preds = %if.end69
  %call74 = tail call i32 @BN_GF2m_add(%struct.bignum_st* noundef nonnull %call2, %struct.bignum_st* noundef %call35, %struct.bignum_st* noundef %call34) #6
  %tobool75.not = icmp eq i32 %call74, 0
  %inc79 = add nuw nsw i32 %j.1198, 1
  br i1 %tobool75.not, label %err, label %for.cond53

for.end80:                                        ; preds = %for.cond53, %for.cond53.preheader
  %inc81 = add nuw nsw i32 %count.0, 1
  %call82 = tail call i32 @BN_is_zero(%struct.bignum_st* noundef nonnull %call2) #4
  %tobool83 = icmp ne i32 %call82, 0
  %cmp84 = icmp ult i32 %count.0, 49
  %7 = select i1 %tobool83, i1 %cmp84, i1 false
  br i1 %7, label %do.body, label %do.end, !llvm.loop !95

do.end:                                           ; preds = %for.end80
  %call85 = tail call i32 @BN_is_zero(%struct.bignum_st* noundef nonnull %call2) #4
  %tobool86.not = icmp eq i32 %call85, 0
  br i1 %tobool86.not, label %if.end89, label %if.then87

if.then87:                                        ; preds = %do.end
  tail call void @ERR_new() #4
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 1076, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.BN_GF2m_mod_solve_quad_arr, i64 0, i64 0)) #4
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 3, i32 noundef 113, i8* noundef null) #4
  br label %err

if.end89:                                         ; preds = %for.cond, %for.cond.preheader, %do.end
  %call90 = tail call i32 @BN_GF2m_mod_sqr_arr(%struct.bignum_st* noundef nonnull %call2, %struct.bignum_st* noundef %call1, i32* noundef nonnull %p, %struct.bignum_ctx* noundef %ctx) #6
  %tobool91.not = icmp eq i32 %call90, 0
  br i1 %tobool91.not, label %err, label %if.end93

if.end93:                                         ; preds = %if.end89
  %call94 = tail call i32 @BN_GF2m_add(%struct.bignum_st* noundef nonnull %call2, %struct.bignum_st* noundef %call1, %struct.bignum_st* noundef nonnull %call2) #6
  %tobool95.not = icmp eq i32 %call94, 0
  br i1 %tobool95.not, label %err, label %if.end97

if.end97:                                         ; preds = %if.end93
  %call98 = tail call i32 @BN_ucmp(%struct.bignum_st* noundef nonnull %call2, %struct.bignum_st* noundef %call) #4
  %tobool99.not = icmp eq i32 %call98, 0
  br i1 %tobool99.not, label %if.end101, label %if.then100

if.then100:                                       ; preds = %if.end97
  tail call void @ERR_new() #4
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 1086, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.BN_GF2m_mod_solve_quad_arr, i64 0, i64 0)) #4
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 3, i32 noundef 116, i8* noundef null) #4
  br label %err

if.end101:                                        ; preds = %if.end97
  %call102 = tail call %struct.bignum_st* @BN_copy(%struct.bignum_st* noundef %r, %struct.bignum_st* noundef %call1) #4
  %tobool103.not = icmp ne %struct.bignum_st* %call102, null
  %spec.select = zext i1 %tobool103.not to i32
  br label %err

err:                                              ; preds = %if.end29, %if.end25, %for.body, %if.end48, %if.end44, %do.body, %if.end73, %if.end69, %if.end65, %if.end61, %for.body57, %if.end101, %if.end93, %if.end89, %if.else, %if.then15, %if.end5, %if.end, %if.then100, %if.then87, %if.then11
  %ret.0 = phi i32 [ 0, %if.end ], [ 1, %if.then11 ], [ 0, %if.then100 ], [ 0, %if.end93 ], [ 0, %if.end89 ], [ 0, %if.then15 ], [ 0, %if.else ], [ 0, %if.then87 ], [ 0, %if.end5 ], [ %spec.select, %if.end101 ], [ 0, %for.body57 ], [ 0, %if.end61 ], [ 0, %if.end65 ], [ 0, %if.end69 ], [ 0, %if.end73 ], [ 0, %do.body ], [ 0, %if.end44 ], [ 0, %if.end48 ], [ 0, %for.body ], [ 0, %if.end25 ], [ 0, %if.end29 ]
  tail call void @BN_CTX_end(%struct.bignum_ctx* noundef %ctx) #4
  br label %cleanup

cleanup:                                          ; preds = %err, %if.then
  %retval.0 = phi i32 [ 1, %if.then ], [ %ret.0, %err ]
  ret i32 %retval.0
}

declare i32 @BN_ucmp(%struct.bignum_st* noundef, %struct.bignum_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @BN_GF2m_mod_solve_quad(%struct.bignum_st* noundef %r, %struct.bignum_st* noundef %a, %struct.bignum_st* noundef %p, %struct.bignum_ctx* noundef %ctx) local_unnamed_addr #0 {
entry:
  %call = tail call i32 @BN_num_bits(%struct.bignum_st* noundef %p) #4
  %add = add nsw i32 %call, 1
  %conv = sext i32 %add to i64
  %mul = shl nsw i64 %conv, 2
  %call1 = tail call i8* @CRYPTO_malloc(i64 noundef %mul, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 1117) #4
  %0 = bitcast i8* %call1 to i32*
  %cmp = icmp eq i8* %call1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #4
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 1119, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.BN_GF2m_mod_solve_quad, i64 0, i64 0)) #4
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 3, i32 noundef 786688, i8* noundef null) #4
  br label %err

if.end:                                           ; preds = %entry
  %call3 = tail call i32 @BN_GF2m_poly2arr(%struct.bignum_st* noundef %p, i32* noundef nonnull %0, i32 noundef %add) #6
  %tobool.not = icmp eq i32 %call3, 0
  %cmp4 = icmp sgt i32 %call3, %add
  %or.cond = select i1 %tobool.not, i1 true, i1 %cmp4
  br i1 %or.cond, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.end
  tail call void @ERR_new() #4
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 1124, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.BN_GF2m_mod_solve_quad, i64 0, i64 0)) #4
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 3, i32 noundef 106, i8* noundef null) #4
  br label %err

if.end7:                                          ; preds = %if.end
  %call8 = tail call i32 @BN_GF2m_mod_solve_quad_arr(%struct.bignum_st* noundef %r, %struct.bignum_st* noundef %a, i32* noundef nonnull %0, %struct.bignum_ctx* noundef %ctx) #6
  br label %err

err:                                              ; preds = %if.end7, %if.then6, %if.then
  %ret.0 = phi i32 [ 0, %if.then ], [ %call3, %if.then6 ], [ %call8, %if.end7 ]
  tail call void @CRYPTO_free(i8* noundef %call1, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 1130) #4
  ret i32 %ret.0
}

declare i32 @BN_num_bits_word(i64 noundef) local_unnamed_addr #2

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.fshl.i64(i64, i64, i64) #3

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #3

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #3

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nobuiltin nounwind "no-builtins" }
attributes #5 = { nounwind }
attributes #6 = { nobuiltin "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{!"clang version 14.0.0"}
!4 = !{!5, !9, i64 8}
!5 = !{!"bignum_st", !6, i64 0, !9, i64 8, !9, i64 12, !9, i64 16, !9, i64 20}
!6 = !{!"any pointer", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!"int", !7, i64 0}
!10 = !{!5, !6, i64 0}
!11 = !{!12, !12, i64 0}
!12 = !{!"long", !7, i64 0}
!13 = !{!14}
!14 = distinct !{!14, !15}
!15 = distinct !{!15, !"LVerDomain"}
!16 = !{!17}
!17 = distinct !{!17, !15}
!18 = !{!19}
!19 = distinct !{!19, !15}
!20 = !{!14, !17}
!21 = distinct !{!21, !22, !23}
!22 = !{!"llvm.loop.mustprogress"}
!23 = !{!"llvm.loop.isvectorized", i32 1}
!24 = distinct !{!24, !25}
!25 = !{!"llvm.loop.unroll.disable"}
!26 = !{!27}
!27 = distinct !{!27, !28}
!28 = distinct !{!28, !"LVerDomain"}
!29 = !{!30}
!30 = distinct !{!30, !28}
!31 = distinct !{!31, !22, !23}
!32 = distinct !{!32, !25}
!33 = distinct !{!33, !25}
!34 = distinct !{!34, !22, !23}
!35 = distinct !{!35, !22, !23}
!36 = !{!9, !9, i64 0}
!37 = !{!38}
!38 = distinct !{!38, !39}
!39 = distinct !{!39, !"LVerDomain"}
!40 = !{!41}
!41 = distinct !{!41, !39}
!42 = distinct !{!42, !22, !23}
!43 = distinct !{!43, !25}
!44 = distinct !{!44, !25}
!45 = distinct !{!45, !22, !23}
!46 = distinct !{!46, !22}
!47 = distinct !{!47, !22}
!48 = distinct !{!48, !22}
!49 = distinct !{!49, !22}
!50 = distinct !{!50, !22}
!51 = distinct !{!51, !22}
!52 = distinct !{!52, !22, !23}
!53 = distinct !{!53, !25}
!54 = distinct !{!54, !22, !55, !23}
!55 = !{!"llvm.loop.unroll.runtime.disable"}
!56 = distinct !{!56, !22}
!57 = distinct !{!57, !22}
!58 = !{!59}
!59 = distinct !{!59, !60}
!60 = distinct !{!60, !"LVerDomain"}
!61 = !{!62}
!62 = distinct !{!62, !60}
!63 = distinct !{!63, !22, !23}
!64 = distinct !{!64, !22, !23}
!65 = distinct !{!65, !22}
!66 = distinct !{!66, !22, !23}
!67 = distinct !{!67, !25}
!68 = distinct !{!68, !22, !55, !23}
!69 = distinct !{!69, !22, !23}
!70 = distinct !{!70, !25}
!71 = distinct !{!71, !22, !55, !23}
!72 = distinct !{!72, !22, !23}
!73 = distinct !{!73, !25}
!74 = distinct !{!74, !22, !55, !23}
!75 = distinct !{!75, !22}
!76 = distinct !{!76, !22}
!77 = !{!78}
!78 = distinct !{!78, !79}
!79 = distinct !{!79, !"LVerDomain"}
!80 = !{!81}
!81 = distinct !{!81, !79}
!82 = !{!83, !78, !84}
!83 = distinct !{!83, !79}
!84 = distinct !{!84, !79}
!85 = !{!84}
!86 = !{!83}
!87 = !{!78, !84}
!88 = distinct !{!88, !22, !23}
!89 = distinct !{!89, !22, !23}
!90 = distinct !{!90, !22}
!91 = distinct !{!91, !22}
!92 = distinct !{!92, !22}
!93 = distinct !{!93, !22}
!94 = distinct !{!94, !22}
!95 = distinct !{!95, !22}
