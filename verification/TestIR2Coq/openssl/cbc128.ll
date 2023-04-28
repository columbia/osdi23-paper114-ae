; ModuleID = 'crypto/modes/cbc128.c'
source_filename = "crypto/modes/cbc128.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.anon = type { [2 x i64] }

; Function Attrs: noinline nounwind uwtable
define void @CRYPTO_cbc128_encrypt(i8* nocapture noundef readonly %in, i8* noundef %out, i64 noundef %len, i8* noundef %key, i8* noundef %ivec, void (i8*, i8*, i8*)* nocapture noundef readonly %block) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq i64 %len, 0
  br i1 %cmp, label %cleanup, label %while.cond.preheader

while.cond.preheader:                             ; preds = %entry
  %cmp187 = icmp ugt i64 %len, 15
  br i1 %cmp187, label %for.cond.preheader, label %iter.check

for.cond.preheader:                               ; preds = %while.cond.preheader, %for.cond.preheader
  %iv.091 = phi i8* [ %out.addr.089, %for.cond.preheader ], [ %ivec, %while.cond.preheader ]
  %in.addr.090 = phi i8* [ %add.ptr5, %for.cond.preheader ], [ %in, %while.cond.preheader ]
  %out.addr.089 = phi i8* [ %add.ptr6, %for.cond.preheader ], [ %out, %while.cond.preheader ]
  %len.addr.088 = phi i64 [ %sub, %for.cond.preheader ], [ %len, %while.cond.preheader ]
  %0 = bitcast i8* %in.addr.090 to i64*
  %1 = load i64, i64* %0, align 1, !tbaa !4
  %2 = bitcast i8* %iv.091 to i64*
  %3 = load i64, i64* %2, align 1, !tbaa !4
  %xor = xor i64 %3, %1
  %4 = bitcast i8* %out.addr.089 to i64*
  store i64 %xor, i64* %4, align 1, !tbaa !4
  %add.ptr.1 = getelementptr inbounds i8, i8* %in.addr.090, i64 8
  %5 = bitcast i8* %add.ptr.1 to i64*
  %6 = load i64, i64* %5, align 1, !tbaa !4
  %add.ptr3.1 = getelementptr inbounds i8, i8* %iv.091, i64 8
  %7 = bitcast i8* %add.ptr3.1 to i64*
  %8 = load i64, i64* %7, align 1, !tbaa !4
  %xor.1 = xor i64 %8, %6
  %add.ptr4.1 = getelementptr inbounds i8, i8* %out.addr.089, i64 8
  %9 = bitcast i8* %add.ptr4.1 to i64*
  store i64 %xor.1, i64* %9, align 1, !tbaa !4
  tail call void %block(i8* noundef %out.addr.089, i8* noundef %out.addr.089, i8* noundef %key) #3
  %sub = add i64 %len.addr.088, -16
  %add.ptr5 = getelementptr inbounds i8, i8* %in.addr.090, i64 16
  %add.ptr6 = getelementptr inbounds i8, i8* %out.addr.089, i64 16
  %cmp1 = icmp ugt i64 %sub, 15
  br i1 %cmp1, label %for.cond.preheader, label %while.cond7, !llvm.loop !8

while.cond7:                                      ; preds = %for.cond.preheader
  %tobool.not = icmp eq i64 %sub, 0
  br i1 %tobool.not, label %while.end36, label %iter.check

iter.check:                                       ; preds = %while.cond.preheader, %while.cond7
  %iv.0.lcssa111 = phi i8* [ %out.addr.089, %while.cond7 ], [ %ivec, %while.cond.preheader ]
  %in.addr.0.lcssa110 = phi i8* [ %add.ptr5, %while.cond7 ], [ %in, %while.cond.preheader ]
  %out.addr.0.lcssa107 = phi i8* [ %add.ptr6, %while.cond7 ], [ %out, %while.cond.preheader ]
  %len.addr.0.lcssa106 = phi i64 [ %sub, %while.cond7 ], [ %len, %while.cond.preheader ]
  %10 = add nsw i64 %len.addr.0.lcssa106, -1
  %min.iters.check = icmp ult i64 %len.addr.0.lcssa106, 8
  br i1 %min.iters.check, label %for.body12.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %scevgep = getelementptr i8, i8* %out.addr.0.lcssa107, i64 %len.addr.0.lcssa106
  %scevgep113 = getelementptr i8, i8* %in.addr.0.lcssa110, i64 %len.addr.0.lcssa106
  %scevgep114 = getelementptr i8, i8* %iv.0.lcssa111, i64 %len.addr.0.lcssa106
  %bound0 = icmp ult i8* %out.addr.0.lcssa107, %scevgep113
  %bound1 = icmp ult i8* %in.addr.0.lcssa110, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound0115 = icmp ult i8* %out.addr.0.lcssa107, %scevgep114
  %bound1116 = icmp ult i8* %iv.0.lcssa111, %scevgep
  %found.conflict117 = and i1 %bound0115, %bound1116
  %conflict.rdx = or i1 %found.conflict, %found.conflict117
  br i1 %conflict.rdx, label %for.body12.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check118 = icmp ult i64 %len.addr.0.lcssa106, 32
  br i1 %min.iters.check118, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.vec = and i64 %len.addr.0.lcssa106, -32
  %11 = add i64 %n.vec, -32
  %12 = lshr exact i64 %11, 5
  %13 = add nuw nsw i64 %12, 1
  %xtraiter = and i64 %13, 1
  %14 = icmp eq i64 %11, 0
  br i1 %14, label %middle.block.unr-lcssa, label %vector.ph.new

vector.ph.new:                                    ; preds = %vector.ph
  %unroll_iter = and i64 %13, 1152921504606846974
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph.new
  %index = phi i64 [ 0, %vector.ph.new ], [ %index.next.1, %vector.body ]
  %niter = phi i64 [ 0, %vector.ph.new ], [ %niter.next.1, %vector.body ]
  %15 = getelementptr inbounds i8, i8* %in.addr.0.lcssa110, i64 %index
  %16 = bitcast i8* %15 to <16 x i8>*
  %wide.load = load <16 x i8>, <16 x i8>* %16, align 1, !tbaa !10, !alias.scope !11
  %17 = getelementptr inbounds i8, i8* %15, i64 16
  %18 = bitcast i8* %17 to <16 x i8>*
  %wide.load119 = load <16 x i8>, <16 x i8>* %18, align 1, !tbaa !10, !alias.scope !11
  %19 = getelementptr inbounds i8, i8* %iv.0.lcssa111, i64 %index
  %20 = bitcast i8* %19 to <16 x i8>*
  %wide.load120 = load <16 x i8>, <16 x i8>* %20, align 1, !tbaa !10, !alias.scope !14
  %21 = getelementptr inbounds i8, i8* %19, i64 16
  %22 = bitcast i8* %21 to <16 x i8>*
  %wide.load121 = load <16 x i8>, <16 x i8>* %22, align 1, !tbaa !10, !alias.scope !14
  %23 = xor <16 x i8> %wide.load120, %wide.load
  %24 = xor <16 x i8> %wide.load121, %wide.load119
  %25 = getelementptr inbounds i8, i8* %out.addr.0.lcssa107, i64 %index
  %26 = bitcast i8* %25 to <16 x i8>*
  store <16 x i8> %23, <16 x i8>* %26, align 1, !tbaa !10, !alias.scope !16, !noalias !18
  %27 = getelementptr inbounds i8, i8* %25, i64 16
  %28 = bitcast i8* %27 to <16 x i8>*
  store <16 x i8> %24, <16 x i8>* %28, align 1, !tbaa !10, !alias.scope !16, !noalias !18
  %index.next = or i64 %index, 32
  %29 = getelementptr inbounds i8, i8* %in.addr.0.lcssa110, i64 %index.next
  %30 = bitcast i8* %29 to <16 x i8>*
  %wide.load.1 = load <16 x i8>, <16 x i8>* %30, align 1, !tbaa !10, !alias.scope !11
  %31 = getelementptr inbounds i8, i8* %29, i64 16
  %32 = bitcast i8* %31 to <16 x i8>*
  %wide.load119.1 = load <16 x i8>, <16 x i8>* %32, align 1, !tbaa !10, !alias.scope !11
  %33 = getelementptr inbounds i8, i8* %iv.0.lcssa111, i64 %index.next
  %34 = bitcast i8* %33 to <16 x i8>*
  %wide.load120.1 = load <16 x i8>, <16 x i8>* %34, align 1, !tbaa !10, !alias.scope !14
  %35 = getelementptr inbounds i8, i8* %33, i64 16
  %36 = bitcast i8* %35 to <16 x i8>*
  %wide.load121.1 = load <16 x i8>, <16 x i8>* %36, align 1, !tbaa !10, !alias.scope !14
  %37 = xor <16 x i8> %wide.load120.1, %wide.load.1
  %38 = xor <16 x i8> %wide.load121.1, %wide.load119.1
  %39 = getelementptr inbounds i8, i8* %out.addr.0.lcssa107, i64 %index.next
  %40 = bitcast i8* %39 to <16 x i8>*
  store <16 x i8> %37, <16 x i8>* %40, align 1, !tbaa !10, !alias.scope !16, !noalias !18
  %41 = getelementptr inbounds i8, i8* %39, i64 16
  %42 = bitcast i8* %41 to <16 x i8>*
  store <16 x i8> %38, <16 x i8>* %42, align 1, !tbaa !10, !alias.scope !16, !noalias !18
  %index.next.1 = add nuw i64 %index, 64
  %niter.next.1 = add i64 %niter, 2
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %middle.block.unr-lcssa, label %vector.body, !llvm.loop !19

middle.block.unr-lcssa:                           ; preds = %vector.body, %vector.ph
  %index.unr = phi i64 [ 0, %vector.ph ], [ %index.next.1, %vector.body ]
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %middle.block, label %vector.body.epil

vector.body.epil:                                 ; preds = %middle.block.unr-lcssa
  %43 = getelementptr inbounds i8, i8* %in.addr.0.lcssa110, i64 %index.unr
  %44 = bitcast i8* %43 to <16 x i8>*
  %wide.load.epil = load <16 x i8>, <16 x i8>* %44, align 1, !tbaa !10, !alias.scope !11
  %45 = getelementptr inbounds i8, i8* %43, i64 16
  %46 = bitcast i8* %45 to <16 x i8>*
  %wide.load119.epil = load <16 x i8>, <16 x i8>* %46, align 1, !tbaa !10, !alias.scope !11
  %47 = getelementptr inbounds i8, i8* %iv.0.lcssa111, i64 %index.unr
  %48 = bitcast i8* %47 to <16 x i8>*
  %wide.load120.epil = load <16 x i8>, <16 x i8>* %48, align 1, !tbaa !10, !alias.scope !14
  %49 = getelementptr inbounds i8, i8* %47, i64 16
  %50 = bitcast i8* %49 to <16 x i8>*
  %wide.load121.epil = load <16 x i8>, <16 x i8>* %50, align 1, !tbaa !10, !alias.scope !14
  %51 = xor <16 x i8> %wide.load120.epil, %wide.load.epil
  %52 = xor <16 x i8> %wide.load121.epil, %wide.load119.epil
  %53 = getelementptr inbounds i8, i8* %out.addr.0.lcssa107, i64 %index.unr
  %54 = bitcast i8* %53 to <16 x i8>*
  store <16 x i8> %51, <16 x i8>* %54, align 1, !tbaa !10, !alias.scope !16, !noalias !18
  %55 = getelementptr inbounds i8, i8* %53, i64 16
  %56 = bitcast i8* %55 to <16 x i8>*
  store <16 x i8> %52, <16 x i8>* %56, align 1, !tbaa !10, !alias.scope !16, !noalias !18
  br label %middle.block

middle.block:                                     ; preds = %middle.block.unr-lcssa, %vector.body.epil
  %cmp.n = icmp eq i64 %len.addr.0.lcssa106, %n.vec
  br i1 %cmp.n, label %for.cond20.preheader, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %n.vec.remaining = and i64 %len.addr.0.lcssa106, 24
  %min.epilog.iters.check = icmp eq i64 %n.vec.remaining, 0
  br i1 %min.epilog.iters.check, label %for.body12.preheader, label %vec.epilog.ph

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec123 = and i64 %len.addr.0.lcssa106, -8
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index125 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next128, %vec.epilog.vector.body ]
  %57 = getelementptr inbounds i8, i8* %in.addr.0.lcssa110, i64 %index125
  %58 = bitcast i8* %57 to <8 x i8>*
  %wide.load126 = load <8 x i8>, <8 x i8>* %58, align 1, !tbaa !10
  %59 = getelementptr inbounds i8, i8* %iv.0.lcssa111, i64 %index125
  %60 = bitcast i8* %59 to <8 x i8>*
  %wide.load127 = load <8 x i8>, <8 x i8>* %60, align 1, !tbaa !10
  %61 = xor <8 x i8> %wide.load127, %wide.load126
  %62 = getelementptr inbounds i8, i8* %out.addr.0.lcssa107, i64 %index125
  %63 = bitcast i8* %62 to <8 x i8>*
  store <8 x i8> %61, <8 x i8>* %63, align 1, !tbaa !10
  %index.next128 = add nuw i64 %index125, 8
  %64 = icmp eq i64 %index.next128, %n.vec123
  br i1 %64, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !21

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n124 = icmp eq i64 %len.addr.0.lcssa106, %n.vec123
  br i1 %cmp.n124, label %for.cond20.preheader, label %for.body12.preheader

for.body12.preheader:                             ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %n.196.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec123, %vec.epilog.middle.block ]
  %65 = xor i64 %n.196.ph, -1
  %66 = add i64 %len.addr.0.lcssa106, %65
  %xtraiter168 = and i64 %len.addr.0.lcssa106, 3
  %lcmp.mod169.not = icmp eq i64 %xtraiter168, 0
  br i1 %lcmp.mod169.not, label %for.body12.prol.loopexit, label %for.body12.prol

for.body12.prol:                                  ; preds = %for.body12.preheader, %for.body12.prol
  %n.196.prol = phi i64 [ %inc.prol, %for.body12.prol ], [ %n.196.ph, %for.body12.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %for.body12.prol ], [ 0, %for.body12.preheader ]
  %arrayidx.prol = getelementptr inbounds i8, i8* %in.addr.0.lcssa110, i64 %n.196.prol
  %67 = load i8, i8* %arrayidx.prol, align 1, !tbaa !10
  %arrayidx13.prol = getelementptr inbounds i8, i8* %iv.0.lcssa111, i64 %n.196.prol
  %68 = load i8, i8* %arrayidx13.prol, align 1, !tbaa !10
  %xor1585.prol = xor i8 %68, %67
  %arrayidx17.prol = getelementptr inbounds i8, i8* %out.addr.0.lcssa107, i64 %n.196.prol
  store i8 %xor1585.prol, i8* %arrayidx17.prol, align 1, !tbaa !10
  %inc.prol = add nuw nsw i64 %n.196.prol, 1
  %prol.iter.next = add i64 %prol.iter, 1
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter168
  br i1 %prol.iter.cmp.not, label %for.body12.prol.loopexit, label %for.body12.prol, !llvm.loop !23

for.body12.prol.loopexit:                         ; preds = %for.body12.prol, %for.body12.preheader
  %n.196.unr = phi i64 [ %n.196.ph, %for.body12.preheader ], [ %inc.prol, %for.body12.prol ]
  %69 = icmp ult i64 %66, 3
  br i1 %69, label %for.cond20.preheader, label %for.body12

for.cond20.preheader:                             ; preds = %for.body12.prol.loopexit, %for.body12, %vec.epilog.middle.block, %middle.block
  %cmp2198 = icmp ult i64 %len.addr.0.lcssa106, 16
  br i1 %cmp2198, label %iter.check141, label %for.end28

iter.check141:                                    ; preds = %for.cond20.preheader
  %70 = sub i64 16, %len.addr.0.lcssa106
  %min.iters.check139 = icmp ult i64 %70, 8
  br i1 %min.iters.check139, label %for.body23.preheader, label %vector.memcheck129

vector.memcheck129:                               ; preds = %iter.check141
  %scevgep130 = getelementptr i8, i8* %out.addr.0.lcssa107, i64 %len.addr.0.lcssa106
  %scevgep131 = getelementptr i8, i8* %out.addr.0.lcssa107, i64 16
  %scevgep132 = getelementptr i8, i8* %iv.0.lcssa111, i64 %len.addr.0.lcssa106
  %scevgep133 = getelementptr i8, i8* %iv.0.lcssa111, i64 16
  %bound0134 = icmp ult i8* %scevgep130, %scevgep133
  %bound1135 = icmp ult i8* %scevgep132, %scevgep131
  %found.conflict136 = and i1 %bound0134, %bound1135
  br i1 %found.conflict136, label %for.body23.preheader, label %vector.main.loop.iter.check143

vector.main.loop.iter.check143:                   ; preds = %vector.memcheck129
  %min.iters.check142 = icmp ult i64 %70, 16
  br i1 %min.iters.check142, label %vec.epilog.ph155, label %vector.ph144

vector.ph144:                                     ; preds = %vector.main.loop.iter.check143
  %n.vec146 = and i64 %70, -16
  %71 = add i64 %n.vec146, -16
  %72 = lshr exact i64 %71, 4
  %73 = add nuw nsw i64 %72, 1
  %xtraiter170 = and i64 %73, 3
  %74 = icmp ult i64 %71, 48
  br i1 %74, label %middle.block137.unr-lcssa, label %vector.ph144.new

vector.ph144.new:                                 ; preds = %vector.ph144
  %unroll_iter172 = and i64 %73, 2305843009213693948
  br label %vector.body138

vector.body138:                                   ; preds = %vector.body138, %vector.ph144.new
  %index148 = phi i64 [ 0, %vector.ph144.new ], [ %index.next150.3, %vector.body138 ]
  %niter173 = phi i64 [ 0, %vector.ph144.new ], [ %niter173.next.3, %vector.body138 ]
  %offset.idx = add i64 %len.addr.0.lcssa106, %index148
  %75 = getelementptr inbounds i8, i8* %iv.0.lcssa111, i64 %offset.idx
  %76 = bitcast i8* %75 to <16 x i8>*
  %wide.load149 = load <16 x i8>, <16 x i8>* %76, align 1, !tbaa !10, !alias.scope !25
  %77 = getelementptr inbounds i8, i8* %out.addr.0.lcssa107, i64 %offset.idx
  %78 = bitcast i8* %77 to <16 x i8>*
  store <16 x i8> %wide.load149, <16 x i8>* %78, align 1, !tbaa !10, !alias.scope !28, !noalias !25
  %index.next150 = or i64 %index148, 16
  %offset.idx.1 = add i64 %len.addr.0.lcssa106, %index.next150
  %79 = getelementptr inbounds i8, i8* %iv.0.lcssa111, i64 %offset.idx.1
  %80 = bitcast i8* %79 to <16 x i8>*
  %wide.load149.1 = load <16 x i8>, <16 x i8>* %80, align 1, !tbaa !10, !alias.scope !25
  %81 = getelementptr inbounds i8, i8* %out.addr.0.lcssa107, i64 %offset.idx.1
  %82 = bitcast i8* %81 to <16 x i8>*
  store <16 x i8> %wide.load149.1, <16 x i8>* %82, align 1, !tbaa !10, !alias.scope !28, !noalias !25
  %index.next150.1 = or i64 %index148, 32
  %offset.idx.2 = add i64 %len.addr.0.lcssa106, %index.next150.1
  %83 = getelementptr inbounds i8, i8* %iv.0.lcssa111, i64 %offset.idx.2
  %84 = bitcast i8* %83 to <16 x i8>*
  %wide.load149.2 = load <16 x i8>, <16 x i8>* %84, align 1, !tbaa !10, !alias.scope !25
  %85 = getelementptr inbounds i8, i8* %out.addr.0.lcssa107, i64 %offset.idx.2
  %86 = bitcast i8* %85 to <16 x i8>*
  store <16 x i8> %wide.load149.2, <16 x i8>* %86, align 1, !tbaa !10, !alias.scope !28, !noalias !25
  %index.next150.2 = or i64 %index148, 48
  %offset.idx.3 = add i64 %len.addr.0.lcssa106, %index.next150.2
  %87 = getelementptr inbounds i8, i8* %iv.0.lcssa111, i64 %offset.idx.3
  %88 = bitcast i8* %87 to <16 x i8>*
  %wide.load149.3 = load <16 x i8>, <16 x i8>* %88, align 1, !tbaa !10, !alias.scope !25
  %89 = getelementptr inbounds i8, i8* %out.addr.0.lcssa107, i64 %offset.idx.3
  %90 = bitcast i8* %89 to <16 x i8>*
  store <16 x i8> %wide.load149.3, <16 x i8>* %90, align 1, !tbaa !10, !alias.scope !28, !noalias !25
  %index.next150.3 = add nuw i64 %index148, 64
  %niter173.next.3 = add i64 %niter173, 4
  %niter173.ncmp.3 = icmp eq i64 %niter173.next.3, %unroll_iter172
  br i1 %niter173.ncmp.3, label %middle.block137.unr-lcssa, label %vector.body138, !llvm.loop !30

middle.block137.unr-lcssa:                        ; preds = %vector.body138, %vector.ph144
  %index148.unr = phi i64 [ 0, %vector.ph144 ], [ %index.next150.3, %vector.body138 ]
  %lcmp.mod171.not = icmp eq i64 %xtraiter170, 0
  br i1 %lcmp.mod171.not, label %middle.block137, label %vector.body138.epil

vector.body138.epil:                              ; preds = %middle.block137.unr-lcssa, %vector.body138.epil
  %index148.epil = phi i64 [ %index.next150.epil, %vector.body138.epil ], [ %index148.unr, %middle.block137.unr-lcssa ]
  %epil.iter = phi i64 [ %epil.iter.next, %vector.body138.epil ], [ 0, %middle.block137.unr-lcssa ]
  %offset.idx.epil = add i64 %len.addr.0.lcssa106, %index148.epil
  %91 = getelementptr inbounds i8, i8* %iv.0.lcssa111, i64 %offset.idx.epil
  %92 = bitcast i8* %91 to <16 x i8>*
  %wide.load149.epil = load <16 x i8>, <16 x i8>* %92, align 1, !tbaa !10, !alias.scope !25
  %93 = getelementptr inbounds i8, i8* %out.addr.0.lcssa107, i64 %offset.idx.epil
  %94 = bitcast i8* %93 to <16 x i8>*
  store <16 x i8> %wide.load149.epil, <16 x i8>* %94, align 1, !tbaa !10, !alias.scope !28, !noalias !25
  %index.next150.epil = add nuw i64 %index148.epil, 16
  %epil.iter.next = add i64 %epil.iter, 1
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter170
  br i1 %epil.iter.cmp.not, label %middle.block137, label %vector.body138.epil, !llvm.loop !31

middle.block137:                                  ; preds = %vector.body138.epil, %middle.block137.unr-lcssa
  %cmp.n147 = icmp eq i64 %70, %n.vec146
  br i1 %cmp.n147, label %for.end28, label %vec.epilog.iter.check154

vec.epilog.iter.check154:                         ; preds = %middle.block137
  %ind.end162 = add i64 %len.addr.0.lcssa106, %n.vec146
  %n.vec.remaining156 = and i64 %70, 8
  %min.epilog.iters.check157.not.not = icmp eq i64 %n.vec.remaining156, 0
  br i1 %min.epilog.iters.check157.not.not, label %for.body23.preheader, label %vec.epilog.ph155

vec.epilog.ph155:                                 ; preds = %vector.main.loop.iter.check143, %vec.epilog.iter.check154
  %vec.epilog.resume.val158 = phi i64 [ %n.vec146, %vec.epilog.iter.check154 ], [ 0, %vector.main.loop.iter.check143 ]
  %95 = sub i64 16, %len.addr.0.lcssa106
  %n.vec160 = and i64 %95, -8
  %ind.end = add i64 %len.addr.0.lcssa106, %n.vec160
  br label %vec.epilog.vector.body153

vec.epilog.vector.body153:                        ; preds = %vec.epilog.vector.body153, %vec.epilog.ph155
  %index164 = phi i64 [ %vec.epilog.resume.val158, %vec.epilog.ph155 ], [ %index.next167, %vec.epilog.vector.body153 ]
  %offset.idx165 = add i64 %len.addr.0.lcssa106, %index164
  %96 = getelementptr inbounds i8, i8* %iv.0.lcssa111, i64 %offset.idx165
  %97 = bitcast i8* %96 to <8 x i8>*
  %wide.load166 = load <8 x i8>, <8 x i8>* %97, align 1, !tbaa !10
  %98 = getelementptr inbounds i8, i8* %out.addr.0.lcssa107, i64 %offset.idx165
  %99 = bitcast i8* %98 to <8 x i8>*
  store <8 x i8> %wide.load166, <8 x i8>* %99, align 1, !tbaa !10
  %index.next167 = add nuw i64 %index164, 8
  %100 = icmp eq i64 %index.next167, %n.vec160
  br i1 %100, label %vec.epilog.middle.block151, label %vec.epilog.vector.body153, !llvm.loop !32

vec.epilog.middle.block151:                       ; preds = %vec.epilog.vector.body153
  %cmp.n163 = icmp eq i64 %95, %n.vec160
  br i1 %cmp.n163, label %for.end28, label %for.body23.preheader

for.body23.preheader:                             ; preds = %vector.memcheck129, %iter.check141, %vec.epilog.iter.check154, %vec.epilog.middle.block151
  %n.299.ph = phi i64 [ %len.addr.0.lcssa106, %iter.check141 ], [ %len.addr.0.lcssa106, %vector.memcheck129 ], [ %ind.end162, %vec.epilog.iter.check154 ], [ %ind.end, %vec.epilog.middle.block151 ]
  %101 = sub i64 0, %n.299.ph
  %xtraiter174 = and i64 %101, 3
  %lcmp.mod175.not = icmp eq i64 %xtraiter174, 0
  br i1 %lcmp.mod175.not, label %for.body23.prol.loopexit, label %for.body23.prol

for.body23.prol:                                  ; preds = %for.body23.preheader, %for.body23.prol
  %n.299.prol = phi i64 [ %inc27.prol, %for.body23.prol ], [ %n.299.ph, %for.body23.preheader ]
  %prol.iter176 = phi i64 [ %prol.iter176.next, %for.body23.prol ], [ 0, %for.body23.preheader ]
  %arrayidx24.prol = getelementptr inbounds i8, i8* %iv.0.lcssa111, i64 %n.299.prol
  %102 = load i8, i8* %arrayidx24.prol, align 1, !tbaa !10
  %arrayidx25.prol = getelementptr inbounds i8, i8* %out.addr.0.lcssa107, i64 %n.299.prol
  store i8 %102, i8* %arrayidx25.prol, align 1, !tbaa !10
  %inc27.prol = add nuw nsw i64 %n.299.prol, 1
  %prol.iter176.next = add i64 %prol.iter176, 1
  %prol.iter176.cmp.not = icmp eq i64 %prol.iter176.next, %xtraiter174
  br i1 %prol.iter176.cmp.not, label %for.body23.prol.loopexit, label %for.body23.prol, !llvm.loop !33

for.body23.prol.loopexit:                         ; preds = %for.body23.prol, %for.body23.preheader
  %n.299.unr = phi i64 [ %n.299.ph, %for.body23.preheader ], [ %inc27.prol, %for.body23.prol ]
  %103 = add i64 %n.299.ph, -13
  %104 = icmp ult i64 %103, 3
  br i1 %104, label %for.end28, label %for.body23

for.body12:                                       ; preds = %for.body12.prol.loopexit, %for.body12
  %n.196 = phi i64 [ %inc.3, %for.body12 ], [ %n.196.unr, %for.body12.prol.loopexit ]
  %arrayidx = getelementptr inbounds i8, i8* %in.addr.0.lcssa110, i64 %n.196
  %105 = load i8, i8* %arrayidx, align 1, !tbaa !10
  %arrayidx13 = getelementptr inbounds i8, i8* %iv.0.lcssa111, i64 %n.196
  %106 = load i8, i8* %arrayidx13, align 1, !tbaa !10
  %xor1585 = xor i8 %106, %105
  %arrayidx17 = getelementptr inbounds i8, i8* %out.addr.0.lcssa107, i64 %n.196
  store i8 %xor1585, i8* %arrayidx17, align 1, !tbaa !10
  %inc = add nuw nsw i64 %n.196, 1
  %arrayidx.1 = getelementptr inbounds i8, i8* %in.addr.0.lcssa110, i64 %inc
  %107 = load i8, i8* %arrayidx.1, align 1, !tbaa !10
  %arrayidx13.1 = getelementptr inbounds i8, i8* %iv.0.lcssa111, i64 %inc
  %108 = load i8, i8* %arrayidx13.1, align 1, !tbaa !10
  %xor1585.1 = xor i8 %108, %107
  %arrayidx17.1 = getelementptr inbounds i8, i8* %out.addr.0.lcssa107, i64 %inc
  store i8 %xor1585.1, i8* %arrayidx17.1, align 1, !tbaa !10
  %inc.1 = add nuw nsw i64 %n.196, 2
  %arrayidx.2 = getelementptr inbounds i8, i8* %in.addr.0.lcssa110, i64 %inc.1
  %109 = load i8, i8* %arrayidx.2, align 1, !tbaa !10
  %arrayidx13.2 = getelementptr inbounds i8, i8* %iv.0.lcssa111, i64 %inc.1
  %110 = load i8, i8* %arrayidx13.2, align 1, !tbaa !10
  %xor1585.2 = xor i8 %110, %109
  %arrayidx17.2 = getelementptr inbounds i8, i8* %out.addr.0.lcssa107, i64 %inc.1
  store i8 %xor1585.2, i8* %arrayidx17.2, align 1, !tbaa !10
  %inc.2 = add nuw nsw i64 %n.196, 3
  %arrayidx.3 = getelementptr inbounds i8, i8* %in.addr.0.lcssa110, i64 %inc.2
  %111 = load i8, i8* %arrayidx.3, align 1, !tbaa !10
  %arrayidx13.3 = getelementptr inbounds i8, i8* %iv.0.lcssa111, i64 %inc.2
  %112 = load i8, i8* %arrayidx13.3, align 1, !tbaa !10
  %xor1585.3 = xor i8 %112, %111
  %arrayidx17.3 = getelementptr inbounds i8, i8* %out.addr.0.lcssa107, i64 %inc.2
  store i8 %xor1585.3, i8* %arrayidx17.3, align 1, !tbaa !10
  %inc.3 = add nuw nsw i64 %n.196, 4
  %exitcond.not.3 = icmp eq i64 %inc.2, %10
  br i1 %exitcond.not.3, label %for.cond20.preheader, label %for.body12, !llvm.loop !34

for.body23:                                       ; preds = %for.body23.prol.loopexit, %for.body23
  %n.299 = phi i64 [ %inc27.3, %for.body23 ], [ %n.299.unr, %for.body23.prol.loopexit ]
  %arrayidx24 = getelementptr inbounds i8, i8* %iv.0.lcssa111, i64 %n.299
  %113 = load i8, i8* %arrayidx24, align 1, !tbaa !10
  %arrayidx25 = getelementptr inbounds i8, i8* %out.addr.0.lcssa107, i64 %n.299
  store i8 %113, i8* %arrayidx25, align 1, !tbaa !10
  %inc27 = add nuw nsw i64 %n.299, 1
  %arrayidx24.1 = getelementptr inbounds i8, i8* %iv.0.lcssa111, i64 %inc27
  %114 = load i8, i8* %arrayidx24.1, align 1, !tbaa !10
  %arrayidx25.1 = getelementptr inbounds i8, i8* %out.addr.0.lcssa107, i64 %inc27
  store i8 %114, i8* %arrayidx25.1, align 1, !tbaa !10
  %inc27.1 = add nuw nsw i64 %n.299, 2
  %arrayidx24.2 = getelementptr inbounds i8, i8* %iv.0.lcssa111, i64 %inc27.1
  %115 = load i8, i8* %arrayidx24.2, align 1, !tbaa !10
  %arrayidx25.2 = getelementptr inbounds i8, i8* %out.addr.0.lcssa107, i64 %inc27.1
  store i8 %115, i8* %arrayidx25.2, align 1, !tbaa !10
  %inc27.2 = add nuw nsw i64 %n.299, 3
  %arrayidx24.3 = getelementptr inbounds i8, i8* %iv.0.lcssa111, i64 %inc27.2
  %116 = load i8, i8* %arrayidx24.3, align 1, !tbaa !10
  %arrayidx25.3 = getelementptr inbounds i8, i8* %out.addr.0.lcssa107, i64 %inc27.2
  store i8 %116, i8* %arrayidx25.3, align 1, !tbaa !10
  %inc27.3 = add nuw nsw i64 %n.299, 4
  %exitcond100.not.3 = icmp eq i64 %inc27.3, 16
  br i1 %exitcond100.not.3, label %for.end28, label %for.body23, !llvm.loop !35

for.end28:                                        ; preds = %for.body23.prol.loopexit, %for.body23, %middle.block137, %vec.epilog.middle.block151, %for.cond20.preheader
  tail call void %block(i8* noundef nonnull %out.addr.0.lcssa107, i8* noundef nonnull %out.addr.0.lcssa107, i8* noundef %key) #3
  br label %while.end36

while.end36:                                      ; preds = %for.end28, %while.cond7
  %iv.2 = phi i8* [ %out.addr.0.lcssa107, %for.end28 ], [ %out.addr.089, %while.cond7 ]
  %cmp37.not = icmp eq i8* %iv.2, %ivec
  br i1 %cmp37.not, label %cleanup, label %if.then39

if.then39:                                        ; preds = %while.end36
  %call = tail call i8* @memcpy(i8* noundef %ivec, i8* noundef nonnull %iv.2, i64 noundef 16) #3
  br label %cleanup

cleanup:                                          ; preds = %while.end36, %if.then39, %entry
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: nounwind
declare i8* @memcpy(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: noinline nounwind uwtable
define void @CRYPTO_cbc128_decrypt(i8* noundef %in, i8* noundef %out, i64 noundef %len, i8* noundef %key, i8* noundef %ivec, void (i8*, i8*, i8*)* nocapture noundef readonly %block) local_unnamed_addr #0 {
entry:
  %tmp = alloca %union.anon, align 8
  %0 = bitcast %union.anon* %tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #4
  %cmp = icmp eq i64 %len, 0
  br i1 %cmp, label %cleanup70, label %if.end

if.end:                                           ; preds = %entry
  %cmp1.not = icmp eq i8* %in, %out
  %cmp11153 = icmp ugt i64 %len, 15
  br i1 %cmp1.not, label %while.cond10.preheader, label %while.cond.preheader

while.cond.preheader:                             ; preds = %if.end
  br i1 %cmp11153, label %while.body, label %iter.check

while.cond10.preheader:                           ; preds = %if.end
  br i1 %cmp11153, label %while.body12.lr.ph, label %iter.check

while.body12.lr.ph:                               ; preds = %while.cond10.preheader
  %1 = bitcast i8* %ivec to i64*
  %arrayidx19 = getelementptr inbounds %union.anon, %union.anon* %tmp, i64 0, i32 0, i64 0
  %arrayidx19.1 = getelementptr inbounds %union.anon, %union.anon* %tmp, i64 0, i32 0, i64 1
  %arrayidx20.1 = getelementptr inbounds i8, i8* %ivec, i64 8
  %2 = bitcast i8* %arrayidx20.1 to i64*
  br label %while.body12

while.body:                                       ; preds = %while.cond.preheader, %while.body
  %in.addr.0148 = phi i8* [ %add.ptr, %while.body ], [ %in, %while.cond.preheader ]
  %out.addr.0147 = phi i8* [ %add.ptr6, %while.body ], [ %out, %while.cond.preheader ]
  %len.addr.0146 = phi i64 [ %sub, %while.body ], [ %len, %while.cond.preheader ]
  %iv.0145 = phi i8* [ %in.addr.0148, %while.body ], [ %ivec, %while.cond.preheader ]
  %3 = bitcast i8* %out.addr.0147 to i64*
  %4 = bitcast i8* %iv.0145 to i64*
  tail call void %block(i8* noundef %in.addr.0148, i8* noundef %out.addr.0147, i8* noundef %key) #3
  %5 = load i64, i64* %4, align 1, !tbaa !4
  %6 = load i64, i64* %3, align 1, !tbaa !4
  %xor = xor i64 %6, %5
  store i64 %xor, i64* %3, align 1, !tbaa !4
  %arrayidx.1 = getelementptr inbounds i8, i8* %iv.0145, i64 8
  %7 = bitcast i8* %arrayidx.1 to i64*
  %8 = load i64, i64* %7, align 1, !tbaa !4
  %arrayidx5.1 = getelementptr inbounds i8, i8* %out.addr.0147, i64 8
  %9 = bitcast i8* %arrayidx5.1 to i64*
  %10 = load i64, i64* %9, align 1, !tbaa !4
  %xor.1 = xor i64 %10, %8
  store i64 %xor.1, i64* %9, align 1, !tbaa !4
  %sub = add i64 %len.addr.0146, -16
  %add.ptr = getelementptr inbounds i8, i8* %in.addr.0148, i64 16
  %add.ptr6 = getelementptr inbounds i8, i8* %out.addr.0147, i64 16
  %cmp3 = icmp ugt i64 %sub, 15
  br i1 %cmp3, label %while.body, label %while.end, !llvm.loop !36

while.end:                                        ; preds = %while.body
  %cmp7.not = icmp eq i8* %in.addr.0148, %ivec
  br i1 %cmp7.not, label %while.cond32, label %if.then8

if.then8:                                         ; preds = %while.end
  %call = tail call i8* @memcpy(i8* noundef %ivec, i8* noundef %in.addr.0148, i64 noundef 16) #3
  br label %while.cond32

while.body12:                                     ; preds = %while.body12.lr.ph, %while.body12
  %in.addr.1156 = phi i8* [ %in, %while.body12.lr.ph ], [ %add.ptr28, %while.body12 ]
  %out.addr.1155 = phi i8* [ %in, %while.body12.lr.ph ], [ %add.ptr29, %while.body12 ]
  %len.addr.1154 = phi i64 [ %len, %while.body12.lr.ph ], [ %sub27, %while.body12 ]
  %11 = bitcast i8* %out.addr.1155 to i64*
  %12 = bitcast i8* %in.addr.1156 to i64*
  call void %block(i8* noundef %in.addr.1156, i8* noundef nonnull %0, i8* noundef %key) #3
  %13 = load i64, i64* %12, align 1, !tbaa !4
  %14 = load i64, i64* %arrayidx19, align 8, !tbaa !10
  %15 = load i64, i64* %1, align 1, !tbaa !4
  %xor21 = xor i64 %15, %14
  store i64 %xor21, i64* %11, align 1, !tbaa !4
  store i64 %13, i64* %1, align 1, !tbaa !4
  %arrayidx18.1 = getelementptr inbounds i8, i8* %in.addr.1156, i64 8
  %16 = bitcast i8* %arrayidx18.1 to i64*
  %17 = load i64, i64* %16, align 1, !tbaa !4
  %18 = load i64, i64* %arrayidx19.1, align 8, !tbaa !10
  %19 = load i64, i64* %2, align 1, !tbaa !4
  %xor21.1 = xor i64 %19, %18
  %arrayidx22.1 = getelementptr inbounds i8, i8* %out.addr.1155, i64 8
  %20 = bitcast i8* %arrayidx22.1 to i64*
  store i64 %xor21.1, i64* %20, align 1, !tbaa !4
  store i64 %17, i64* %2, align 1, !tbaa !4
  %sub27 = add i64 %len.addr.1154, -16
  %add.ptr28 = getelementptr inbounds i8, i8* %in.addr.1156, i64 16
  %add.ptr29 = getelementptr inbounds i8, i8* %out.addr.1155, i64 16
  %cmp11 = icmp ugt i64 %sub27, 15
  br i1 %cmp11, label %while.body12, label %while.cond32, !llvm.loop !37

while.cond32:                                     ; preds = %while.body12, %if.then8, %while.end
  %len.addr.2 = phi i64 [ %sub, %if.then8 ], [ %sub, %while.end ], [ %sub27, %while.body12 ]
  %out.addr.2 = phi i8* [ %add.ptr6, %if.then8 ], [ %add.ptr6, %while.end ], [ %add.ptr29, %while.body12 ]
  %in.addr.2 = phi i8* [ %add.ptr, %if.then8 ], [ %add.ptr, %while.end ], [ %add.ptr28, %while.body12 ]
  %tobool.not = icmp eq i64 %len.addr.2, 0
  br i1 %tobool.not, label %cleanup70, label %iter.check

iter.check:                                       ; preds = %while.cond.preheader, %while.cond10.preheader, %while.cond32
  %in.addr.2177 = phi i8* [ %in.addr.2, %while.cond32 ], [ %in, %while.cond10.preheader ], [ %in, %while.cond.preheader ]
  %out.addr.2176 = phi i8* [ %out.addr.2, %while.cond32 ], [ %in, %while.cond10.preheader ], [ %out, %while.cond.preheader ]
  %len.addr.2175 = phi i64 [ %len.addr.2, %while.cond32 ], [ %len, %while.cond10.preheader ], [ %len, %while.cond.preheader ]
  %c35 = bitcast %union.anon* %tmp to [16 x i8]*
  call void %block(i8* noundef %in.addr.2177, i8* noundef nonnull %0, i8* noundef %key) #3
  %21 = add nsw i64 %len.addr.2175, -1
  %min.iters.check = icmp ult i64 %len.addr.2175, 8
  br i1 %min.iters.check, label %for.body40.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %scevgep = getelementptr i8, i8* %out.addr.2176, i64 %len.addr.2175
  %scevgep178 = getelementptr i8, i8* %ivec, i64 %len.addr.2175
  %scevgep179 = getelementptr i8, i8* %in.addr.2177, i64 %len.addr.2175
  %uglygep = getelementptr i8, i8* %0, i64 %len.addr.2175
  %bound0 = icmp ult i8* %out.addr.2176, %scevgep178
  %bound1 = icmp ugt i8* %scevgep, %ivec
  %found.conflict = and i1 %bound0, %bound1
  %bound0180 = icmp ult i8* %out.addr.2176, %scevgep179
  %bound1181 = icmp ult i8* %in.addr.2177, %scevgep
  %found.conflict182 = and i1 %bound0180, %bound1181
  %conflict.rdx = or i1 %found.conflict, %found.conflict182
  %bound0183 = icmp ult i8* %out.addr.2176, %uglygep
  %bound1184 = icmp ugt i8* %scevgep, %0
  %found.conflict185 = and i1 %bound0183, %bound1184
  %conflict.rdx186 = or i1 %conflict.rdx, %found.conflict185
  %bound0187 = icmp ugt i8* %scevgep179, %ivec
  %bound1188 = icmp ult i8* %in.addr.2177, %scevgep178
  %found.conflict189 = and i1 %bound0187, %bound1188
  %conflict.rdx190 = or i1 %conflict.rdx186, %found.conflict189
  %bound0191 = icmp ugt i8* %uglygep, %ivec
  %bound1192 = icmp ugt i8* %scevgep178, %0
  %found.conflict193 = and i1 %bound0191, %bound1192
  %conflict.rdx194 = or i1 %conflict.rdx190, %found.conflict193
  br i1 %conflict.rdx194, label %for.body40.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check195 = icmp ult i64 %len.addr.2175, 32
  br i1 %min.iters.check195, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.vec = and i64 %len.addr.2175, -32
  %22 = add i64 %n.vec, -32
  %23 = lshr exact i64 %22, 5
  %24 = add nuw nsw i64 %23, 1
  %xtraiter = and i64 %24, 1
  %25 = icmp eq i64 %22, 0
  br i1 %25, label %middle.block.unr-lcssa, label %vector.ph.new

vector.ph.new:                                    ; preds = %vector.ph
  %unroll_iter = and i64 %24, 1152921504606846974
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph.new
  %index = phi i64 [ 0, %vector.ph.new ], [ %index.next.1, %vector.body ]
  %niter = phi i64 [ 0, %vector.ph.new ], [ %niter.next.1, %vector.body ]
  %26 = getelementptr inbounds i8, i8* %in.addr.2177, i64 %index
  %27 = bitcast i8* %26 to <16 x i8>*
  %wide.load = load <16 x i8>, <16 x i8>* %27, align 1, !tbaa !10, !alias.scope !38
  %28 = getelementptr inbounds i8, i8* %26, i64 16
  %29 = bitcast i8* %28 to <16 x i8>*
  %wide.load196 = load <16 x i8>, <16 x i8>* %29, align 1, !tbaa !10, !alias.scope !38
  %30 = getelementptr inbounds [16 x i8], [16 x i8]* %c35, i64 0, i64 %index
  %31 = bitcast i8* %30 to <16 x i8>*
  %wide.load197 = load <16 x i8>, <16 x i8>* %31, align 8, !tbaa !10, !alias.scope !41
  %32 = getelementptr inbounds i8, i8* %30, i64 16
  %33 = bitcast i8* %32 to <16 x i8>*
  %wide.load198 = load <16 x i8>, <16 x i8>* %33, align 8, !tbaa !10, !alias.scope !41
  %34 = getelementptr inbounds i8, i8* %ivec, i64 %index
  %35 = bitcast i8* %34 to <16 x i8>*
  %wide.load199 = load <16 x i8>, <16 x i8>* %35, align 1, !tbaa !10, !alias.scope !43, !noalias !45
  %36 = getelementptr inbounds i8, i8* %34, i64 16
  %37 = bitcast i8* %36 to <16 x i8>*
  %wide.load200 = load <16 x i8>, <16 x i8>* %37, align 1, !tbaa !10, !alias.scope !43, !noalias !45
  %38 = xor <16 x i8> %wide.load199, %wide.load197
  %39 = xor <16 x i8> %wide.load200, %wide.load198
  %40 = getelementptr inbounds i8, i8* %out.addr.2176, i64 %index
  %41 = bitcast i8* %40 to <16 x i8>*
  store <16 x i8> %38, <16 x i8>* %41, align 1, !tbaa !10, !alias.scope !46, !noalias !48
  %42 = getelementptr inbounds i8, i8* %40, i64 16
  %43 = bitcast i8* %42 to <16 x i8>*
  store <16 x i8> %39, <16 x i8>* %43, align 1, !tbaa !10, !alias.scope !46, !noalias !48
  %44 = bitcast i8* %34 to <16 x i8>*
  store <16 x i8> %wide.load, <16 x i8>* %44, align 1, !tbaa !10, !alias.scope !43, !noalias !45
  %45 = bitcast i8* %36 to <16 x i8>*
  store <16 x i8> %wide.load196, <16 x i8>* %45, align 1, !tbaa !10, !alias.scope !43, !noalias !45
  %index.next = or i64 %index, 32
  %46 = getelementptr inbounds i8, i8* %in.addr.2177, i64 %index.next
  %47 = bitcast i8* %46 to <16 x i8>*
  %wide.load.1 = load <16 x i8>, <16 x i8>* %47, align 1, !tbaa !10, !alias.scope !38
  %48 = getelementptr inbounds i8, i8* %46, i64 16
  %49 = bitcast i8* %48 to <16 x i8>*
  %wide.load196.1 = load <16 x i8>, <16 x i8>* %49, align 1, !tbaa !10, !alias.scope !38
  %50 = getelementptr inbounds [16 x i8], [16 x i8]* %c35, i64 0, i64 %index.next
  %51 = bitcast i8* %50 to <16 x i8>*
  %wide.load197.1 = load <16 x i8>, <16 x i8>* %51, align 8, !tbaa !10, !alias.scope !41
  %52 = getelementptr inbounds i8, i8* %50, i64 16
  %53 = bitcast i8* %52 to <16 x i8>*
  %wide.load198.1 = load <16 x i8>, <16 x i8>* %53, align 8, !tbaa !10, !alias.scope !41
  %54 = getelementptr inbounds i8, i8* %ivec, i64 %index.next
  %55 = bitcast i8* %54 to <16 x i8>*
  %wide.load199.1 = load <16 x i8>, <16 x i8>* %55, align 1, !tbaa !10, !alias.scope !43, !noalias !45
  %56 = getelementptr inbounds i8, i8* %54, i64 16
  %57 = bitcast i8* %56 to <16 x i8>*
  %wide.load200.1 = load <16 x i8>, <16 x i8>* %57, align 1, !tbaa !10, !alias.scope !43, !noalias !45
  %58 = xor <16 x i8> %wide.load199.1, %wide.load197.1
  %59 = xor <16 x i8> %wide.load200.1, %wide.load198.1
  %60 = getelementptr inbounds i8, i8* %out.addr.2176, i64 %index.next
  %61 = bitcast i8* %60 to <16 x i8>*
  store <16 x i8> %58, <16 x i8>* %61, align 1, !tbaa !10, !alias.scope !46, !noalias !48
  %62 = getelementptr inbounds i8, i8* %60, i64 16
  %63 = bitcast i8* %62 to <16 x i8>*
  store <16 x i8> %59, <16 x i8>* %63, align 1, !tbaa !10, !alias.scope !46, !noalias !48
  %64 = bitcast i8* %54 to <16 x i8>*
  store <16 x i8> %wide.load.1, <16 x i8>* %64, align 1, !tbaa !10, !alias.scope !43, !noalias !45
  %65 = bitcast i8* %56 to <16 x i8>*
  store <16 x i8> %wide.load196.1, <16 x i8>* %65, align 1, !tbaa !10, !alias.scope !43, !noalias !45
  %index.next.1 = add nuw i64 %index, 64
  %niter.next.1 = add i64 %niter, 2
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %middle.block.unr-lcssa, label %vector.body, !llvm.loop !49

middle.block.unr-lcssa:                           ; preds = %vector.body, %vector.ph
  %index.unr = phi i64 [ 0, %vector.ph ], [ %index.next.1, %vector.body ]
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %middle.block, label %vector.body.epil

vector.body.epil:                                 ; preds = %middle.block.unr-lcssa
  %66 = getelementptr inbounds i8, i8* %in.addr.2177, i64 %index.unr
  %67 = bitcast i8* %66 to <16 x i8>*
  %wide.load.epil = load <16 x i8>, <16 x i8>* %67, align 1, !tbaa !10, !alias.scope !38
  %68 = getelementptr inbounds i8, i8* %66, i64 16
  %69 = bitcast i8* %68 to <16 x i8>*
  %wide.load196.epil = load <16 x i8>, <16 x i8>* %69, align 1, !tbaa !10, !alias.scope !38
  %70 = getelementptr inbounds [16 x i8], [16 x i8]* %c35, i64 0, i64 %index.unr
  %71 = bitcast i8* %70 to <16 x i8>*
  %wide.load197.epil = load <16 x i8>, <16 x i8>* %71, align 8, !tbaa !10, !alias.scope !41
  %72 = getelementptr inbounds i8, i8* %70, i64 16
  %73 = bitcast i8* %72 to <16 x i8>*
  %wide.load198.epil = load <16 x i8>, <16 x i8>* %73, align 8, !tbaa !10, !alias.scope !41
  %74 = getelementptr inbounds i8, i8* %ivec, i64 %index.unr
  %75 = bitcast i8* %74 to <16 x i8>*
  %wide.load199.epil = load <16 x i8>, <16 x i8>* %75, align 1, !tbaa !10, !alias.scope !43, !noalias !45
  %76 = getelementptr inbounds i8, i8* %74, i64 16
  %77 = bitcast i8* %76 to <16 x i8>*
  %wide.load200.epil = load <16 x i8>, <16 x i8>* %77, align 1, !tbaa !10, !alias.scope !43, !noalias !45
  %78 = xor <16 x i8> %wide.load199.epil, %wide.load197.epil
  %79 = xor <16 x i8> %wide.load200.epil, %wide.load198.epil
  %80 = getelementptr inbounds i8, i8* %out.addr.2176, i64 %index.unr
  %81 = bitcast i8* %80 to <16 x i8>*
  store <16 x i8> %78, <16 x i8>* %81, align 1, !tbaa !10, !alias.scope !46, !noalias !48
  %82 = getelementptr inbounds i8, i8* %80, i64 16
  %83 = bitcast i8* %82 to <16 x i8>*
  store <16 x i8> %79, <16 x i8>* %83, align 1, !tbaa !10, !alias.scope !46, !noalias !48
  %84 = bitcast i8* %74 to <16 x i8>*
  store <16 x i8> %wide.load.epil, <16 x i8>* %84, align 1, !tbaa !10, !alias.scope !43, !noalias !45
  %85 = bitcast i8* %76 to <16 x i8>*
  store <16 x i8> %wide.load196.epil, <16 x i8>* %85, align 1, !tbaa !10, !alias.scope !43, !noalias !45
  br label %middle.block

middle.block:                                     ; preds = %middle.block.unr-lcssa, %vector.body.epil
  %cmp.n = icmp eq i64 %len.addr.2175, %n.vec
  br i1 %cmp.n, label %for.cond56.preheader, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %n.vec.remaining = and i64 %len.addr.2175, 24
  %min.epilog.iters.check = icmp eq i64 %n.vec.remaining, 0
  br i1 %min.epilog.iters.check, label %for.body40.preheader, label %vec.epilog.ph

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec202 = and i64 %len.addr.2175, -8
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index204 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next208, %vec.epilog.vector.body ]
  %86 = getelementptr inbounds i8, i8* %in.addr.2177, i64 %index204
  %87 = bitcast i8* %86 to <8 x i8>*
  %wide.load205 = load <8 x i8>, <8 x i8>* %87, align 1, !tbaa !10
  %88 = getelementptr inbounds [16 x i8], [16 x i8]* %c35, i64 0, i64 %index204
  %89 = bitcast i8* %88 to <8 x i8>*
  %wide.load206 = load <8 x i8>, <8 x i8>* %89, align 8, !tbaa !10
  %90 = getelementptr inbounds i8, i8* %ivec, i64 %index204
  %91 = bitcast i8* %90 to <8 x i8>*
  %wide.load207 = load <8 x i8>, <8 x i8>* %91, align 1, !tbaa !10
  %92 = xor <8 x i8> %wide.load207, %wide.load206
  %93 = getelementptr inbounds i8, i8* %out.addr.2176, i64 %index204
  %94 = bitcast i8* %93 to <8 x i8>*
  store <8 x i8> %92, <8 x i8>* %94, align 1, !tbaa !10
  %95 = bitcast i8* %90 to <8 x i8>*
  store <8 x i8> %wide.load205, <8 x i8>* %95, align 1, !tbaa !10
  %index.next208 = add nuw i64 %index204, 8
  %96 = icmp eq i64 %index.next208, %n.vec202
  br i1 %96, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !50

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n203 = icmp eq i64 %len.addr.2175, %n.vec202
  br i1 %cmp.n203, label %for.cond56.preheader, label %for.body40.preheader

for.body40.preheader:                             ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %n.2161.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec202, %vec.epilog.middle.block ]
  %.neg = or i64 %n.2161.ph, 1
  %xtraiter248 = and i64 %len.addr.2175, 1
  %lcmp.mod249.not = icmp eq i64 %xtraiter248, 0
  br i1 %lcmp.mod249.not, label %for.body40.prol.loopexit, label %for.body40.prol

for.body40.prol:                                  ; preds = %for.body40.preheader
  %arrayidx41.prol = getelementptr inbounds i8, i8* %in.addr.2177, i64 %n.2161.ph
  %97 = load i8, i8* %arrayidx41.prol, align 1, !tbaa !10
  %arrayidx43.prol = getelementptr inbounds [16 x i8], [16 x i8]* %c35, i64 0, i64 %n.2161.ph
  %98 = load i8, i8* %arrayidx43.prol, align 8, !tbaa !10
  %arrayidx44.prol = getelementptr inbounds i8, i8* %ivec, i64 %n.2161.ph
  %99 = load i8, i8* %arrayidx44.prol, align 1, !tbaa !10
  %xor46142.prol = xor i8 %99, %98
  %arrayidx48.prol = getelementptr inbounds i8, i8* %out.addr.2176, i64 %n.2161.ph
  store i8 %xor46142.prol, i8* %arrayidx48.prol, align 1, !tbaa !10
  store i8 %97, i8* %arrayidx44.prol, align 1, !tbaa !10
  %inc51.prol = or i64 %n.2161.ph, 1
  br label %for.body40.prol.loopexit

for.body40.prol.loopexit:                         ; preds = %for.body40.prol, %for.body40.preheader
  %n.2161.unr = phi i64 [ %n.2161.ph, %for.body40.preheader ], [ %inc51.prol, %for.body40.prol ]
  %100 = icmp eq i64 %len.addr.2175, %.neg
  br i1 %100, label %for.cond56.preheader, label %for.body40

for.cond56.preheader:                             ; preds = %for.body40.prol.loopexit, %for.body40, %vec.epilog.middle.block, %middle.block
  %cmp57163 = icmp ult i64 %len.addr.2175, 16
  br i1 %cmp57163, label %iter.check221, label %cleanup70

iter.check221:                                    ; preds = %for.cond56.preheader
  %101 = sub i64 16, %len.addr.2175
  %min.iters.check219 = icmp ult i64 %101, 8
  br i1 %min.iters.check219, label %for.body59.preheader, label %vector.memcheck209

vector.memcheck209:                               ; preds = %iter.check221
  %scevgep210 = getelementptr i8, i8* %ivec, i64 %len.addr.2175
  %scevgep211 = getelementptr i8, i8* %ivec, i64 16
  %scevgep212 = getelementptr i8, i8* %in.addr.2177, i64 %len.addr.2175
  %scevgep213 = getelementptr i8, i8* %in.addr.2177, i64 16
  %bound0214 = icmp ult i8* %scevgep210, %scevgep213
  %bound1215 = icmp ult i8* %scevgep212, %scevgep211
  %found.conflict216 = and i1 %bound0214, %bound1215
  br i1 %found.conflict216, label %for.body59.preheader, label %vector.main.loop.iter.check223

vector.main.loop.iter.check223:                   ; preds = %vector.memcheck209
  %min.iters.check222 = icmp ult i64 %101, 16
  br i1 %min.iters.check222, label %vec.epilog.ph235, label %vector.ph224

vector.ph224:                                     ; preds = %vector.main.loop.iter.check223
  %n.vec226 = and i64 %101, -16
  %102 = add i64 %n.vec226, -16
  %103 = lshr exact i64 %102, 4
  %104 = add nuw nsw i64 %103, 1
  %xtraiter250 = and i64 %104, 3
  %105 = icmp ult i64 %102, 48
  br i1 %105, label %middle.block217.unr-lcssa, label %vector.ph224.new

vector.ph224.new:                                 ; preds = %vector.ph224
  %unroll_iter252 = and i64 %104, 2305843009213693948
  br label %vector.body218

vector.body218:                                   ; preds = %vector.body218, %vector.ph224.new
  %index228 = phi i64 [ 0, %vector.ph224.new ], [ %index.next230.3, %vector.body218 ]
  %niter253 = phi i64 [ 0, %vector.ph224.new ], [ %niter253.next.3, %vector.body218 ]
  %offset.idx = add i64 %len.addr.2175, %index228
  %106 = getelementptr inbounds i8, i8* %in.addr.2177, i64 %offset.idx
  %107 = bitcast i8* %106 to <16 x i8>*
  %wide.load229 = load <16 x i8>, <16 x i8>* %107, align 1, !tbaa !10, !alias.scope !51
  %108 = getelementptr inbounds i8, i8* %ivec, i64 %offset.idx
  %109 = bitcast i8* %108 to <16 x i8>*
  store <16 x i8> %wide.load229, <16 x i8>* %109, align 1, !tbaa !10, !alias.scope !54, !noalias !51
  %index.next230 = or i64 %index228, 16
  %offset.idx.1 = add i64 %len.addr.2175, %index.next230
  %110 = getelementptr inbounds i8, i8* %in.addr.2177, i64 %offset.idx.1
  %111 = bitcast i8* %110 to <16 x i8>*
  %wide.load229.1 = load <16 x i8>, <16 x i8>* %111, align 1, !tbaa !10, !alias.scope !51
  %112 = getelementptr inbounds i8, i8* %ivec, i64 %offset.idx.1
  %113 = bitcast i8* %112 to <16 x i8>*
  store <16 x i8> %wide.load229.1, <16 x i8>* %113, align 1, !tbaa !10, !alias.scope !54, !noalias !51
  %index.next230.1 = or i64 %index228, 32
  %offset.idx.2 = add i64 %len.addr.2175, %index.next230.1
  %114 = getelementptr inbounds i8, i8* %in.addr.2177, i64 %offset.idx.2
  %115 = bitcast i8* %114 to <16 x i8>*
  %wide.load229.2 = load <16 x i8>, <16 x i8>* %115, align 1, !tbaa !10, !alias.scope !51
  %116 = getelementptr inbounds i8, i8* %ivec, i64 %offset.idx.2
  %117 = bitcast i8* %116 to <16 x i8>*
  store <16 x i8> %wide.load229.2, <16 x i8>* %117, align 1, !tbaa !10, !alias.scope !54, !noalias !51
  %index.next230.2 = or i64 %index228, 48
  %offset.idx.3 = add i64 %len.addr.2175, %index.next230.2
  %118 = getelementptr inbounds i8, i8* %in.addr.2177, i64 %offset.idx.3
  %119 = bitcast i8* %118 to <16 x i8>*
  %wide.load229.3 = load <16 x i8>, <16 x i8>* %119, align 1, !tbaa !10, !alias.scope !51
  %120 = getelementptr inbounds i8, i8* %ivec, i64 %offset.idx.3
  %121 = bitcast i8* %120 to <16 x i8>*
  store <16 x i8> %wide.load229.3, <16 x i8>* %121, align 1, !tbaa !10, !alias.scope !54, !noalias !51
  %index.next230.3 = add nuw i64 %index228, 64
  %niter253.next.3 = add i64 %niter253, 4
  %niter253.ncmp.3 = icmp eq i64 %niter253.next.3, %unroll_iter252
  br i1 %niter253.ncmp.3, label %middle.block217.unr-lcssa, label %vector.body218, !llvm.loop !56

middle.block217.unr-lcssa:                        ; preds = %vector.body218, %vector.ph224
  %index228.unr = phi i64 [ 0, %vector.ph224 ], [ %index.next230.3, %vector.body218 ]
  %lcmp.mod251.not = icmp eq i64 %xtraiter250, 0
  br i1 %lcmp.mod251.not, label %middle.block217, label %vector.body218.epil

vector.body218.epil:                              ; preds = %middle.block217.unr-lcssa, %vector.body218.epil
  %index228.epil = phi i64 [ %index.next230.epil, %vector.body218.epil ], [ %index228.unr, %middle.block217.unr-lcssa ]
  %epil.iter = phi i64 [ %epil.iter.next, %vector.body218.epil ], [ 0, %middle.block217.unr-lcssa ]
  %offset.idx.epil = add i64 %len.addr.2175, %index228.epil
  %122 = getelementptr inbounds i8, i8* %in.addr.2177, i64 %offset.idx.epil
  %123 = bitcast i8* %122 to <16 x i8>*
  %wide.load229.epil = load <16 x i8>, <16 x i8>* %123, align 1, !tbaa !10, !alias.scope !51
  %124 = getelementptr inbounds i8, i8* %ivec, i64 %offset.idx.epil
  %125 = bitcast i8* %124 to <16 x i8>*
  store <16 x i8> %wide.load229.epil, <16 x i8>* %125, align 1, !tbaa !10, !alias.scope !54, !noalias !51
  %index.next230.epil = add nuw i64 %index228.epil, 16
  %epil.iter.next = add i64 %epil.iter, 1
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter250
  br i1 %epil.iter.cmp.not, label %middle.block217, label %vector.body218.epil, !llvm.loop !57

middle.block217:                                  ; preds = %vector.body218.epil, %middle.block217.unr-lcssa
  %cmp.n227 = icmp eq i64 %101, %n.vec226
  br i1 %cmp.n227, label %cleanup70, label %vec.epilog.iter.check234

vec.epilog.iter.check234:                         ; preds = %middle.block217
  %ind.end242 = add i64 %len.addr.2175, %n.vec226
  %n.vec.remaining236 = and i64 %101, 8
  %min.epilog.iters.check237.not.not = icmp eq i64 %n.vec.remaining236, 0
  br i1 %min.epilog.iters.check237.not.not, label %for.body59.preheader, label %vec.epilog.ph235

vec.epilog.ph235:                                 ; preds = %vector.main.loop.iter.check223, %vec.epilog.iter.check234
  %vec.epilog.resume.val238 = phi i64 [ %n.vec226, %vec.epilog.iter.check234 ], [ 0, %vector.main.loop.iter.check223 ]
  %126 = sub i64 16, %len.addr.2175
  %n.vec240 = and i64 %126, -8
  %ind.end = add i64 %len.addr.2175, %n.vec240
  br label %vec.epilog.vector.body233

vec.epilog.vector.body233:                        ; preds = %vec.epilog.vector.body233, %vec.epilog.ph235
  %index244 = phi i64 [ %vec.epilog.resume.val238, %vec.epilog.ph235 ], [ %index.next247, %vec.epilog.vector.body233 ]
  %offset.idx245 = add i64 %len.addr.2175, %index244
  %127 = getelementptr inbounds i8, i8* %in.addr.2177, i64 %offset.idx245
  %128 = bitcast i8* %127 to <8 x i8>*
  %wide.load246 = load <8 x i8>, <8 x i8>* %128, align 1, !tbaa !10
  %129 = getelementptr inbounds i8, i8* %ivec, i64 %offset.idx245
  %130 = bitcast i8* %129 to <8 x i8>*
  store <8 x i8> %wide.load246, <8 x i8>* %130, align 1, !tbaa !10
  %index.next247 = add nuw i64 %index244, 8
  %131 = icmp eq i64 %index.next247, %n.vec240
  br i1 %131, label %vec.epilog.middle.block231, label %vec.epilog.vector.body233, !llvm.loop !58

vec.epilog.middle.block231:                       ; preds = %vec.epilog.vector.body233
  %cmp.n243 = icmp eq i64 %126, %n.vec240
  br i1 %cmp.n243, label %cleanup70, label %for.body59.preheader

for.body59.preheader:                             ; preds = %vector.memcheck209, %iter.check221, %vec.epilog.iter.check234, %vec.epilog.middle.block231
  %n.3164.ph = phi i64 [ %len.addr.2175, %iter.check221 ], [ %len.addr.2175, %vector.memcheck209 ], [ %ind.end242, %vec.epilog.iter.check234 ], [ %ind.end, %vec.epilog.middle.block231 ]
  %132 = sub i64 0, %n.3164.ph
  %xtraiter254 = and i64 %132, 3
  %lcmp.mod255.not = icmp eq i64 %xtraiter254, 0
  br i1 %lcmp.mod255.not, label %for.body59.prol.loopexit, label %for.body59.prol

for.body59.prol:                                  ; preds = %for.body59.preheader, %for.body59.prol
  %n.3164.prol = phi i64 [ %inc63.prol, %for.body59.prol ], [ %n.3164.ph, %for.body59.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %for.body59.prol ], [ 0, %for.body59.preheader ]
  %arrayidx60.prol = getelementptr inbounds i8, i8* %in.addr.2177, i64 %n.3164.prol
  %133 = load i8, i8* %arrayidx60.prol, align 1, !tbaa !10
  %arrayidx61.prol = getelementptr inbounds i8, i8* %ivec, i64 %n.3164.prol
  store i8 %133, i8* %arrayidx61.prol, align 1, !tbaa !10
  %inc63.prol = add nuw nsw i64 %n.3164.prol, 1
  %prol.iter.next = add i64 %prol.iter, 1
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter254
  br i1 %prol.iter.cmp.not, label %for.body59.prol.loopexit, label %for.body59.prol, !llvm.loop !59

for.body59.prol.loopexit:                         ; preds = %for.body59.prol, %for.body59.preheader
  %n.3164.unr = phi i64 [ %n.3164.ph, %for.body59.preheader ], [ %inc63.prol, %for.body59.prol ]
  %134 = add i64 %n.3164.ph, -13
  %135 = icmp ult i64 %134, 3
  br i1 %135, label %cleanup70, label %for.body59

for.body40:                                       ; preds = %for.body40.prol.loopexit, %for.body40
  %n.2161 = phi i64 [ %inc51.1, %for.body40 ], [ %n.2161.unr, %for.body40.prol.loopexit ]
  %arrayidx41 = getelementptr inbounds i8, i8* %in.addr.2177, i64 %n.2161
  %136 = load i8, i8* %arrayidx41, align 1, !tbaa !10
  %arrayidx43 = getelementptr inbounds [16 x i8], [16 x i8]* %c35, i64 0, i64 %n.2161
  %137 = load i8, i8* %arrayidx43, align 1, !tbaa !10
  %arrayidx44 = getelementptr inbounds i8, i8* %ivec, i64 %n.2161
  %138 = load i8, i8* %arrayidx44, align 1, !tbaa !10
  %xor46142 = xor i8 %138, %137
  %arrayidx48 = getelementptr inbounds i8, i8* %out.addr.2176, i64 %n.2161
  store i8 %xor46142, i8* %arrayidx48, align 1, !tbaa !10
  store i8 %136, i8* %arrayidx44, align 1, !tbaa !10
  %inc51 = add nuw nsw i64 %n.2161, 1
  %arrayidx41.1 = getelementptr inbounds i8, i8* %in.addr.2177, i64 %inc51
  %139 = load i8, i8* %arrayidx41.1, align 1, !tbaa !10
  %arrayidx43.1 = getelementptr inbounds [16 x i8], [16 x i8]* %c35, i64 0, i64 %inc51
  %140 = load i8, i8* %arrayidx43.1, align 1, !tbaa !10
  %arrayidx44.1 = getelementptr inbounds i8, i8* %ivec, i64 %inc51
  %141 = load i8, i8* %arrayidx44.1, align 1, !tbaa !10
  %xor46142.1 = xor i8 %141, %140
  %arrayidx48.1 = getelementptr inbounds i8, i8* %out.addr.2176, i64 %inc51
  store i8 %xor46142.1, i8* %arrayidx48.1, align 1, !tbaa !10
  store i8 %139, i8* %arrayidx44.1, align 1, !tbaa !10
  %inc51.1 = add nuw nsw i64 %n.2161, 2
  %exitcond.not.1 = icmp eq i64 %inc51, %21
  br i1 %exitcond.not.1, label %for.cond56.preheader, label %for.body40, !llvm.loop !60

for.body59:                                       ; preds = %for.body59.prol.loopexit, %for.body59
  %n.3164 = phi i64 [ %inc63.3, %for.body59 ], [ %n.3164.unr, %for.body59.prol.loopexit ]
  %arrayidx60 = getelementptr inbounds i8, i8* %in.addr.2177, i64 %n.3164
  %142 = load i8, i8* %arrayidx60, align 1, !tbaa !10
  %arrayidx61 = getelementptr inbounds i8, i8* %ivec, i64 %n.3164
  store i8 %142, i8* %arrayidx61, align 1, !tbaa !10
  %inc63 = add nuw nsw i64 %n.3164, 1
  %arrayidx60.1 = getelementptr inbounds i8, i8* %in.addr.2177, i64 %inc63
  %143 = load i8, i8* %arrayidx60.1, align 1, !tbaa !10
  %arrayidx61.1 = getelementptr inbounds i8, i8* %ivec, i64 %inc63
  store i8 %143, i8* %arrayidx61.1, align 1, !tbaa !10
  %inc63.1 = add nuw nsw i64 %n.3164, 2
  %arrayidx60.2 = getelementptr inbounds i8, i8* %in.addr.2177, i64 %inc63.1
  %144 = load i8, i8* %arrayidx60.2, align 1, !tbaa !10
  %arrayidx61.2 = getelementptr inbounds i8, i8* %ivec, i64 %inc63.1
  store i8 %144, i8* %arrayidx61.2, align 1, !tbaa !10
  %inc63.2 = add nuw nsw i64 %n.3164, 3
  %arrayidx60.3 = getelementptr inbounds i8, i8* %in.addr.2177, i64 %inc63.2
  %145 = load i8, i8* %arrayidx60.3, align 1, !tbaa !10
  %arrayidx61.3 = getelementptr inbounds i8, i8* %ivec, i64 %inc63.2
  store i8 %145, i8* %arrayidx61.3, align 1, !tbaa !10
  %inc63.3 = add nuw nsw i64 %n.3164, 4
  %exitcond165.not.3 = icmp eq i64 %inc63.3, 16
  br i1 %exitcond165.not.3, label %cleanup70, label %for.body59, !llvm.loop !61

cleanup70:                                        ; preds = %for.body59.prol.loopexit, %for.body59, %middle.block217, %vec.epilog.middle.block231, %for.cond56.preheader, %while.cond32, %entry
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #4
  ret void
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { nounwind "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nobuiltin nounwind "no-builtins" }
attributes #4 = { nounwind }

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
!10 = !{!6, !6, i64 0}
!11 = !{!12}
!12 = distinct !{!12, !13}
!13 = distinct !{!13, !"LVerDomain"}
!14 = !{!15}
!15 = distinct !{!15, !13}
!16 = !{!17}
!17 = distinct !{!17, !13}
!18 = !{!12, !15}
!19 = distinct !{!19, !9, !20}
!20 = !{!"llvm.loop.isvectorized", i32 1}
!21 = distinct !{!21, !9, !20, !22}
!22 = !{!"llvm.loop.unroll.runtime.disable"}
!23 = distinct !{!23, !24}
!24 = !{!"llvm.loop.unroll.disable"}
!25 = !{!26}
!26 = distinct !{!26, !27}
!27 = distinct !{!27, !"LVerDomain"}
!28 = !{!29}
!29 = distinct !{!29, !27}
!30 = distinct !{!30, !9, !20}
!31 = distinct !{!31, !24}
!32 = distinct !{!32, !9, !20, !22}
!33 = distinct !{!33, !24}
!34 = distinct !{!34, !9, !20}
!35 = distinct !{!35, !9, !20}
!36 = distinct !{!36, !9}
!37 = distinct !{!37, !9}
!38 = !{!39}
!39 = distinct !{!39, !40}
!40 = distinct !{!40, !"LVerDomain"}
!41 = !{!42}
!42 = distinct !{!42, !40}
!43 = !{!44}
!44 = distinct !{!44, !40}
!45 = !{!39, !42}
!46 = !{!47}
!47 = distinct !{!47, !40}
!48 = !{!44, !39, !42}
!49 = distinct !{!49, !9, !20}
!50 = distinct !{!50, !9, !20, !22}
!51 = !{!52}
!52 = distinct !{!52, !53}
!53 = distinct !{!53, !"LVerDomain"}
!54 = !{!55}
!55 = distinct !{!55, !53}
!56 = distinct !{!56, !9, !20}
!57 = distinct !{!57, !24}
!58 = distinct !{!58, !9, !20, !22}
!59 = distinct !{!59, !24}
!60 = distinct !{!60, !9, !20}
!61 = distinct !{!61, !9, !20}
