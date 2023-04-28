; ModuleID = 'crypto/modes/ofb128.c'
source_filename = "crypto/modes/ofb128.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define void @CRYPTO_ofb128_encrypt(i8* nocapture noundef readonly %in, i8* nocapture noundef writeonly %out, i64 noundef %len, i8* noundef %key, i8* noundef %ivec, i32* nocapture noundef %num, void (i8*, i8*, i8*)* nocapture noundef readonly %block) local_unnamed_addr #0 {
entry:
  %0 = load i32, i32* %num, align 4, !tbaa !4
  %cmp = icmp slt i32 %0, 0
  br i1 %cmp, label %cleanup, label %while.cond.preheader

while.cond.preheader:                             ; preds = %entry
  %tobool99 = icmp ne i32 %0, 0
  %tobool1100 = icmp ne i64 %len, 0
  %1 = and i1 %tobool99, %tobool1100
  br i1 %1, label %while.body, label %while.cond5.preheader

while.cond5.preheader:                            ; preds = %while.body, %while.cond.preheader
  %len.addr.0.lcssa = phi i64 [ %len, %while.cond.preheader ], [ %dec, %while.body ]
  %out.addr.0.lcssa = phi i8* [ %out, %while.cond.preheader ], [ %incdec.ptr4, %while.body ]
  %n.0.lcssa = phi i32 [ %0, %while.cond.preheader ], [ %rem, %while.body ]
  %in.addr.0.lcssa = phi i8* [ %in, %while.cond.preheader ], [ %incdec.ptr, %while.body ]
  %cmp6110 = icmp ugt i64 %len.addr.0.lcssa, 15
  br i1 %cmp6110, label %while.body8.peel, label %while.end21

while.body8.peel:                                 ; preds = %while.cond5.preheader
  tail call void %block(i8* noundef %ivec, i8* noundef %ivec, i8* noundef %key) #1
  %cmp9108.peel = icmp ult i32 %n.0.lcssa, 16
  br i1 %cmp9108.peel, label %for.body.preheader.peel, label %for.end.peel

for.body.preheader.peel:                          ; preds = %while.body8.peel
  %2 = zext i32 %n.0.lcssa to i64
  %add.ptr.peel = getelementptr inbounds i8, i8* %in.addr.0.lcssa, i64 %2
  %3 = bitcast i8* %add.ptr.peel to i64*
  %4 = load i64, i64* %3, align 1, !tbaa !8
  %add.ptr12.peel = getelementptr inbounds i8, i8* %ivec, i64 %2
  %5 = bitcast i8* %add.ptr12.peel to i64*
  %6 = load i64, i64* %5, align 1, !tbaa !8
  %xor13.peel = xor i64 %6, %4
  %add.ptr15.peel = getelementptr inbounds i8, i8* %out.addr.0.lcssa, i64 %2
  %7 = bitcast i8* %add.ptr15.peel to i64*
  store i64 %xor13.peel, i64* %7, align 1, !tbaa !8
  %indvars.iv.next.peel = add nuw nsw i64 %2, 8
  %cmp9.peel = icmp ult i32 %n.0.lcssa, 8
  br i1 %cmp9.peel, label %for.body.1.peel, label %for.end.peel, !llvm.loop !10

for.body.1.peel:                                  ; preds = %for.body.preheader.peel
  %add.ptr.1.peel = getelementptr inbounds i8, i8* %in.addr.0.lcssa, i64 %indvars.iv.next.peel
  %8 = bitcast i8* %add.ptr.1.peel to i64*
  %9 = load i64, i64* %8, align 1, !tbaa !8
  %add.ptr12.1.peel = getelementptr inbounds i8, i8* %ivec, i64 %indvars.iv.next.peel
  %10 = bitcast i8* %add.ptr12.1.peel to i64*
  %11 = load i64, i64* %10, align 1, !tbaa !8
  %xor13.1.peel = xor i64 %11, %9
  %add.ptr15.1.peel = getelementptr inbounds i8, i8* %out.addr.0.lcssa, i64 %indvars.iv.next.peel
  %12 = bitcast i8* %add.ptr15.1.peel to i64*
  store i64 %xor13.1.peel, i64* %12, align 1, !tbaa !8
  br label %for.end.peel

for.end.peel:                                     ; preds = %for.body.preheader.peel, %for.body.1.peel, %while.body8.peel
  %sub.peel = add i64 %len.addr.0.lcssa, -16
  %add.ptr19.peel = getelementptr inbounds i8, i8* %out.addr.0.lcssa, i64 16
  %add.ptr20.peel = getelementptr inbounds i8, i8* %in.addr.0.lcssa, i64 16
  %cmp6.peel = icmp ugt i64 %sub.peel, 15
  br i1 %cmp6.peel, label %while.body8.preheader.peel.newph, label %while.end21

while.body8.preheader.peel.newph:                 ; preds = %for.end.peel
  %13 = bitcast i8* %ivec to i64*
  %add.ptr12.1 = getelementptr inbounds i8, i8* %ivec, i64 8
  %14 = bitcast i8* %add.ptr12.1 to i64*
  br label %while.body8

while.body:                                       ; preds = %while.cond.preheader, %while.body
  %in.addr.0104 = phi i8* [ %incdec.ptr, %while.body ], [ %in, %while.cond.preheader ]
  %n.0103 = phi i32 [ %rem, %while.body ], [ %0, %while.cond.preheader ]
  %out.addr.0102 = phi i8* [ %incdec.ptr4, %while.body ], [ %out, %while.cond.preheader ]
  %len.addr.0101 = phi i64 [ %dec, %while.body ], [ %len, %while.cond.preheader ]
  %incdec.ptr = getelementptr inbounds i8, i8* %in.addr.0104, i64 1
  %15 = load i8, i8* %in.addr.0104, align 1, !tbaa !12
  %idxprom = zext i32 %n.0103 to i64
  %arrayidx = getelementptr inbounds i8, i8* %ivec, i64 %idxprom
  %16 = load i8, i8* %arrayidx, align 1, !tbaa !12
  %xor98 = xor i8 %16, %15
  %incdec.ptr4 = getelementptr inbounds i8, i8* %out.addr.0102, i64 1
  store i8 %xor98, i8* %out.addr.0102, align 1, !tbaa !12
  %dec = add i64 %len.addr.0101, -1
  %add = add i32 %n.0103, 1
  %rem = and i32 %add, 15
  %tobool = icmp ne i32 %rem, 0
  %tobool1 = icmp ne i64 %dec, 0
  %17 = select i1 %tobool, i1 %tobool1, i1 false
  br i1 %17, label %while.body, label %while.cond5.preheader, !llvm.loop !13

while.body8:                                      ; preds = %while.body8.preheader.peel.newph, %while.body8
  %in.addr.1114 = phi i8* [ %add.ptr20, %while.body8 ], [ %add.ptr20.peel, %while.body8.preheader.peel.newph ]
  %out.addr.1112 = phi i8* [ %add.ptr19, %while.body8 ], [ %add.ptr19.peel, %while.body8.preheader.peel.newph ]
  %len.addr.1111 = phi i64 [ %sub, %while.body8 ], [ %sub.peel, %while.body8.preheader.peel.newph ]
  tail call void %block(i8* noundef %ivec, i8* noundef %ivec, i8* noundef %key) #1
  %18 = bitcast i8* %in.addr.1114 to i64*
  %19 = load i64, i64* %18, align 1, !tbaa !8
  %20 = load i64, i64* %13, align 1, !tbaa !8
  %xor13 = xor i64 %20, %19
  %21 = bitcast i8* %out.addr.1112 to i64*
  store i64 %xor13, i64* %21, align 1, !tbaa !8
  %add.ptr.1 = getelementptr inbounds i8, i8* %in.addr.1114, i64 8
  %22 = bitcast i8* %add.ptr.1 to i64*
  %23 = load i64, i64* %22, align 1, !tbaa !8
  %24 = load i64, i64* %14, align 1, !tbaa !8
  %xor13.1 = xor i64 %24, %23
  %add.ptr15.1 = getelementptr inbounds i8, i8* %out.addr.1112, i64 8
  %25 = bitcast i8* %add.ptr15.1 to i64*
  store i64 %xor13.1, i64* %25, align 1, !tbaa !8
  %sub = add i64 %len.addr.1111, -16
  %add.ptr19 = getelementptr inbounds i8, i8* %out.addr.1112, i64 16
  %add.ptr20 = getelementptr inbounds i8, i8* %in.addr.1114, i64 16
  %cmp6 = icmp ugt i64 %sub, 15
  br i1 %cmp6, label %while.body8, label %while.end21, !llvm.loop !14

while.end21:                                      ; preds = %for.end.peel, %while.body8, %while.cond5.preheader
  %len.addr.1.lcssa = phi i64 [ %len.addr.0.lcssa, %while.cond5.preheader ], [ %sub.peel, %for.end.peel ], [ %sub, %while.body8 ]
  %out.addr.1.lcssa = phi i8* [ %out.addr.0.lcssa, %while.cond5.preheader ], [ %add.ptr19.peel, %for.end.peel ], [ %add.ptr19, %while.body8 ]
  %n.1.lcssa = phi i32 [ %n.0.lcssa, %while.cond5.preheader ], [ 0, %while.body8 ], [ 0, %for.end.peel ]
  %in.addr.1.lcssa = phi i8* [ %in.addr.0.lcssa, %while.cond5.preheader ], [ %add.ptr20.peel, %for.end.peel ], [ %add.ptr20, %while.body8 ]
  %tobool22.not = icmp eq i64 %len.addr.1.lcssa, 0
  br i1 %tobool22.not, label %cleanup, label %if.then23

if.then23:                                        ; preds = %while.end21
  tail call void %block(i8* noundef %ivec, i8* noundef %ivec, i8* noundef %key) #1
  %min.iters.check = icmp ult i64 %len.addr.1.lcssa, 32
  br i1 %min.iters.check, label %while.body27.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %if.then23
  %26 = add i64 %len.addr.1.lcssa, -1
  %27 = trunc i64 %26 to i32
  %28 = xor i32 %n.1.lcssa, -1
  %29 = icmp ult i32 %28, %27
  %30 = icmp ugt i64 %26, 4294967295
  %31 = or i1 %29, %30
  br i1 %31, label %while.body27.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %32 = zext i32 %n.1.lcssa to i64
  %scevgep = getelementptr i8, i8* %out.addr.1.lcssa, i64 %32
  %33 = add i64 %len.addr.1.lcssa, %32
  %scevgep124 = getelementptr i8, i8* %out.addr.1.lcssa, i64 %33
  %scevgep125 = getelementptr i8, i8* %in.addr.1.lcssa, i64 %32
  %scevgep126 = getelementptr i8, i8* %in.addr.1.lcssa, i64 %33
  %scevgep127 = getelementptr i8, i8* %ivec, i64 %32
  %scevgep128 = getelementptr i8, i8* %ivec, i64 %33
  %bound0 = icmp ult i8* %scevgep, %scevgep126
  %bound1 = icmp ult i8* %scevgep125, %scevgep124
  %found.conflict = and i1 %bound0, %bound1
  %bound0129 = icmp ult i8* %scevgep, %scevgep128
  %bound1130 = icmp ult i8* %scevgep127, %scevgep124
  %found.conflict131 = and i1 %bound0129, %bound1130
  %conflict.rdx = or i1 %found.conflict, %found.conflict131
  br i1 %conflict.rdx, label %while.body27.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %len.addr.1.lcssa, -32
  %cast.crd = trunc i64 %n.vec to i32
  %ind.end = add i32 %n.1.lcssa, %cast.crd
  %ind.end133 = and i64 %len.addr.1.lcssa, 31
  %34 = add i64 %n.vec, -32
  %35 = lshr exact i64 %34, 5
  %36 = add nuw nsw i64 %35, 1
  %xtraiter = and i64 %36, 1
  %37 = icmp eq i64 %34, 0
  br i1 %37, label %middle.block.unr-lcssa, label %vector.ph.new

vector.ph.new:                                    ; preds = %vector.ph
  %unroll_iter = and i64 %36, 1152921504606846974
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph.new
  %index = phi i64 [ 0, %vector.ph.new ], [ %index.next.1, %vector.body ]
  %niter = phi i64 [ 0, %vector.ph.new ], [ %niter.next.1, %vector.body ]
  %38 = trunc i64 %index to i32
  %offset.idx = add i32 %n.1.lcssa, %38
  %39 = zext i32 %offset.idx to i64
  %40 = getelementptr inbounds i8, i8* %in.addr.1.lcssa, i64 %39
  %41 = bitcast i8* %40 to <16 x i8>*
  %wide.load = load <16 x i8>, <16 x i8>* %41, align 1, !tbaa !12, !alias.scope !16
  %42 = getelementptr inbounds i8, i8* %40, i64 16
  %43 = bitcast i8* %42 to <16 x i8>*
  %wide.load135 = load <16 x i8>, <16 x i8>* %43, align 1, !tbaa !12, !alias.scope !16
  %44 = getelementptr inbounds i8, i8* %ivec, i64 %39
  %45 = bitcast i8* %44 to <16 x i8>*
  %wide.load136 = load <16 x i8>, <16 x i8>* %45, align 1, !tbaa !12, !alias.scope !19
  %46 = getelementptr inbounds i8, i8* %44, i64 16
  %47 = bitcast i8* %46 to <16 x i8>*
  %wide.load137 = load <16 x i8>, <16 x i8>* %47, align 1, !tbaa !12, !alias.scope !19
  %48 = xor <16 x i8> %wide.load136, %wide.load
  %49 = xor <16 x i8> %wide.load137, %wide.load135
  %50 = getelementptr inbounds i8, i8* %out.addr.1.lcssa, i64 %39
  %51 = bitcast i8* %50 to <16 x i8>*
  store <16 x i8> %48, <16 x i8>* %51, align 1, !tbaa !12, !alias.scope !21, !noalias !23
  %52 = getelementptr inbounds i8, i8* %50, i64 16
  %53 = bitcast i8* %52 to <16 x i8>*
  store <16 x i8> %49, <16 x i8>* %53, align 1, !tbaa !12, !alias.scope !21, !noalias !23
  %54 = trunc i64 %index to i32
  %55 = or i32 %54, 32
  %offset.idx.1 = add i32 %n.1.lcssa, %55
  %56 = zext i32 %offset.idx.1 to i64
  %57 = getelementptr inbounds i8, i8* %in.addr.1.lcssa, i64 %56
  %58 = bitcast i8* %57 to <16 x i8>*
  %wide.load.1 = load <16 x i8>, <16 x i8>* %58, align 1, !tbaa !12, !alias.scope !16
  %59 = getelementptr inbounds i8, i8* %57, i64 16
  %60 = bitcast i8* %59 to <16 x i8>*
  %wide.load135.1 = load <16 x i8>, <16 x i8>* %60, align 1, !tbaa !12, !alias.scope !16
  %61 = getelementptr inbounds i8, i8* %ivec, i64 %56
  %62 = bitcast i8* %61 to <16 x i8>*
  %wide.load136.1 = load <16 x i8>, <16 x i8>* %62, align 1, !tbaa !12, !alias.scope !19
  %63 = getelementptr inbounds i8, i8* %61, i64 16
  %64 = bitcast i8* %63 to <16 x i8>*
  %wide.load137.1 = load <16 x i8>, <16 x i8>* %64, align 1, !tbaa !12, !alias.scope !19
  %65 = xor <16 x i8> %wide.load136.1, %wide.load.1
  %66 = xor <16 x i8> %wide.load137.1, %wide.load135.1
  %67 = getelementptr inbounds i8, i8* %out.addr.1.lcssa, i64 %56
  %68 = bitcast i8* %67 to <16 x i8>*
  store <16 x i8> %65, <16 x i8>* %68, align 1, !tbaa !12, !alias.scope !21, !noalias !23
  %69 = getelementptr inbounds i8, i8* %67, i64 16
  %70 = bitcast i8* %69 to <16 x i8>*
  store <16 x i8> %66, <16 x i8>* %70, align 1, !tbaa !12, !alias.scope !21, !noalias !23
  %index.next.1 = add nuw i64 %index, 64
  %niter.next.1 = add i64 %niter, 2
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %middle.block.unr-lcssa.loopexit, label %vector.body, !llvm.loop !24

middle.block.unr-lcssa.loopexit:                  ; preds = %vector.body
  %phi.cast = trunc i64 %index.next.1 to i32
  br label %middle.block.unr-lcssa

middle.block.unr-lcssa:                           ; preds = %middle.block.unr-lcssa.loopexit, %vector.ph
  %index.unr = phi i32 [ 0, %vector.ph ], [ %phi.cast, %middle.block.unr-lcssa.loopexit ]
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %middle.block, label %vector.body.epil

vector.body.epil:                                 ; preds = %middle.block.unr-lcssa
  %offset.idx.epil = add i32 %n.1.lcssa, %index.unr
  %71 = zext i32 %offset.idx.epil to i64
  %72 = getelementptr inbounds i8, i8* %in.addr.1.lcssa, i64 %71
  %73 = bitcast i8* %72 to <16 x i8>*
  %wide.load.epil = load <16 x i8>, <16 x i8>* %73, align 1, !tbaa !12, !alias.scope !16
  %74 = getelementptr inbounds i8, i8* %72, i64 16
  %75 = bitcast i8* %74 to <16 x i8>*
  %wide.load135.epil = load <16 x i8>, <16 x i8>* %75, align 1, !tbaa !12, !alias.scope !16
  %76 = getelementptr inbounds i8, i8* %ivec, i64 %71
  %77 = bitcast i8* %76 to <16 x i8>*
  %wide.load136.epil = load <16 x i8>, <16 x i8>* %77, align 1, !tbaa !12, !alias.scope !19
  %78 = getelementptr inbounds i8, i8* %76, i64 16
  %79 = bitcast i8* %78 to <16 x i8>*
  %wide.load137.epil = load <16 x i8>, <16 x i8>* %79, align 1, !tbaa !12, !alias.scope !19
  %80 = xor <16 x i8> %wide.load136.epil, %wide.load.epil
  %81 = xor <16 x i8> %wide.load137.epil, %wide.load135.epil
  %82 = getelementptr inbounds i8, i8* %out.addr.1.lcssa, i64 %71
  %83 = bitcast i8* %82 to <16 x i8>*
  store <16 x i8> %80, <16 x i8>* %83, align 1, !tbaa !12, !alias.scope !21, !noalias !23
  %84 = getelementptr inbounds i8, i8* %82, i64 16
  %85 = bitcast i8* %84 to <16 x i8>*
  store <16 x i8> %81, <16 x i8>* %85, align 1, !tbaa !12, !alias.scope !21, !noalias !23
  br label %middle.block

middle.block:                                     ; preds = %middle.block.unr-lcssa, %vector.body.epil
  %cmp.n = icmp eq i64 %len.addr.1.lcssa, %n.vec
  br i1 %cmp.n, label %cleanup, label %while.body27.preheader

while.body27.preheader:                           ; preds = %vector.memcheck, %vector.scevcheck, %if.then23, %middle.block
  %n.3121.ph = phi i32 [ %n.1.lcssa, %vector.memcheck ], [ %n.1.lcssa, %vector.scevcheck ], [ %n.1.lcssa, %if.then23 ], [ %ind.end, %middle.block ]
  %len.addr.2120.ph = phi i64 [ %len.addr.1.lcssa, %vector.memcheck ], [ %len.addr.1.lcssa, %vector.scevcheck ], [ %len.addr.1.lcssa, %if.then23 ], [ %ind.end133, %middle.block ]
  %xtraiter139 = and i64 %len.addr.2120.ph, 1
  %lcmp.mod140.not = icmp eq i64 %xtraiter139, 0
  br i1 %lcmp.mod140.not, label %while.body27.prol.loopexit, label %while.body27.prol

while.body27.prol:                                ; preds = %while.body27.preheader
  %dec25.prol = add i64 %len.addr.2120.ph, -1
  %idxprom28.prol = zext i32 %n.3121.ph to i64
  %arrayidx29.prol = getelementptr inbounds i8, i8* %in.addr.1.lcssa, i64 %idxprom28.prol
  %86 = load i8, i8* %arrayidx29.prol, align 1, !tbaa !12
  %arrayidx32.prol = getelementptr inbounds i8, i8* %ivec, i64 %idxprom28.prol
  %87 = load i8, i8* %arrayidx32.prol, align 1, !tbaa !12
  %xor3497.prol = xor i8 %87, %86
  %arrayidx37.prol = getelementptr inbounds i8, i8* %out.addr.1.lcssa, i64 %idxprom28.prol
  store i8 %xor3497.prol, i8* %arrayidx37.prol, align 1, !tbaa !12
  %inc.prol = add i32 %n.3121.ph, 1
  br label %while.body27.prol.loopexit

while.body27.prol.loopexit:                       ; preds = %while.body27.prol, %while.body27.preheader
  %inc.lcssa.unr = phi i32 [ undef, %while.body27.preheader ], [ %inc.prol, %while.body27.prol ]
  %n.3121.unr = phi i32 [ %n.3121.ph, %while.body27.preheader ], [ %inc.prol, %while.body27.prol ]
  %len.addr.2120.unr = phi i64 [ %len.addr.2120.ph, %while.body27.preheader ], [ %dec25.prol, %while.body27.prol ]
  %88 = icmp eq i64 %len.addr.2120.ph, 1
  br i1 %88, label %cleanup, label %while.body27

while.body27:                                     ; preds = %while.body27.prol.loopexit, %while.body27
  %n.3121 = phi i32 [ %inc.1, %while.body27 ], [ %n.3121.unr, %while.body27.prol.loopexit ]
  %len.addr.2120 = phi i64 [ %dec25.1, %while.body27 ], [ %len.addr.2120.unr, %while.body27.prol.loopexit ]
  %idxprom28 = zext i32 %n.3121 to i64
  %arrayidx29 = getelementptr inbounds i8, i8* %in.addr.1.lcssa, i64 %idxprom28
  %89 = load i8, i8* %arrayidx29, align 1, !tbaa !12
  %arrayidx32 = getelementptr inbounds i8, i8* %ivec, i64 %idxprom28
  %90 = load i8, i8* %arrayidx32, align 1, !tbaa !12
  %xor3497 = xor i8 %90, %89
  %arrayidx37 = getelementptr inbounds i8, i8* %out.addr.1.lcssa, i64 %idxprom28
  store i8 %xor3497, i8* %arrayidx37, align 1, !tbaa !12
  %inc = add i32 %n.3121, 1
  %dec25.1 = add i64 %len.addr.2120, -2
  %idxprom28.1 = zext i32 %inc to i64
  %arrayidx29.1 = getelementptr inbounds i8, i8* %in.addr.1.lcssa, i64 %idxprom28.1
  %91 = load i8, i8* %arrayidx29.1, align 1, !tbaa !12
  %arrayidx32.1 = getelementptr inbounds i8, i8* %ivec, i64 %idxprom28.1
  %92 = load i8, i8* %arrayidx32.1, align 1, !tbaa !12
  %xor3497.1 = xor i8 %92, %91
  %arrayidx37.1 = getelementptr inbounds i8, i8* %out.addr.1.lcssa, i64 %idxprom28.1
  store i8 %xor3497.1, i8* %arrayidx37.1, align 1, !tbaa !12
  %inc.1 = add i32 %n.3121, 2
  %tobool26.not.1 = icmp eq i64 %dec25.1, 0
  br i1 %tobool26.not.1, label %cleanup, label %while.body27, !llvm.loop !26

cleanup:                                          ; preds = %while.body27.prol.loopexit, %while.body27, %middle.block, %while.end21, %entry
  %storemerge = phi i32 [ -1, %entry ], [ %n.1.lcssa, %while.end21 ], [ %ind.end, %middle.block ], [ %inc.lcssa.unr, %while.body27.prol.loopexit ], [ %inc.1, %while.body27 ]
  store i32 %storemerge, i32* %num, align 4, !tbaa !4
  ret void
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nobuiltin nounwind "no-builtins" }

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
!8 = !{!9, !9, i64 0}
!9 = !{!"long", !6, i64 0}
!10 = distinct !{!10, !11}
!11 = !{!"llvm.loop.mustprogress"}
!12 = !{!6, !6, i64 0}
!13 = distinct !{!13, !11}
!14 = distinct !{!14, !11, !15}
!15 = !{!"llvm.loop.peeled.count", i32 1}
!16 = !{!17}
!17 = distinct !{!17, !18}
!18 = distinct !{!18, !"LVerDomain"}
!19 = !{!20}
!20 = distinct !{!20, !18}
!21 = !{!22}
!22 = distinct !{!22, !18}
!23 = !{!17, !20}
!24 = distinct !{!24, !11, !25}
!25 = !{!"llvm.loop.isvectorized", i32 1}
!26 = distinct !{!26, !11, !25}
