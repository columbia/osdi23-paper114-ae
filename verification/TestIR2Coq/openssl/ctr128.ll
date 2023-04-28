; ModuleID = 'crypto/modes/ctr128.c'
source_filename = "crypto/modes/ctr128.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define void @CRYPTO_ctr128_encrypt(i8* nocapture noundef readonly %in, i8* nocapture noundef writeonly %out, i64 noundef %len, i8* noundef %key, i8* noundef %ivec, i8* noundef %ecount_buf, i32* nocapture noundef %num, void (i8*, i8*, i8*)* nocapture noundef readonly %block) local_unnamed_addr #0 {
entry:
  %0 = load i32, i32* %num, align 4, !tbaa !4
  %tobool95 = icmp ne i32 %0, 0
  %tobool196 = icmp ne i64 %len, 0
  %1 = and i1 %tobool95, %tobool196
  br i1 %1, label %while.body, label %while.cond5.preheader

while.cond5.preheader:                            ; preds = %while.body, %entry
  %len.addr.0.lcssa = phi i64 [ %len, %entry ], [ %dec, %while.body ]
  %n.0.lcssa = phi i32 [ %0, %entry ], [ %rem, %while.body ]
  %out.addr.0.lcssa = phi i8* [ %out, %entry ], [ %incdec.ptr4, %while.body ]
  %in.addr.0.lcssa = phi i8* [ %in, %entry ], [ %incdec.ptr, %while.body ]
  %cmp105 = icmp ugt i64 %len.addr.0.lcssa, 15
  br i1 %cmp105, label %while.body7.preheader, label %while.end20

while.body7.preheader:                            ; preds = %while.cond5.preheader
  %2 = bitcast i8* %ecount_buf to i64*
  %add.ptr11.1 = getelementptr inbounds i8, i8* %ecount_buf, i64 8
  %3 = bitcast i8* %add.ptr11.1 to i64*
  br label %while.body7

while.body:                                       ; preds = %entry, %while.body
  %in.addr.0100 = phi i8* [ %incdec.ptr, %while.body ], [ %in, %entry ]
  %out.addr.099 = phi i8* [ %incdec.ptr4, %while.body ], [ %out, %entry ]
  %n.098 = phi i32 [ %rem, %while.body ], [ %0, %entry ]
  %len.addr.097 = phi i64 [ %dec, %while.body ], [ %len, %entry ]
  %incdec.ptr = getelementptr inbounds i8, i8* %in.addr.0100, i64 1
  %4 = load i8, i8* %in.addr.0100, align 1, !tbaa !8
  %idxprom = zext i32 %n.098 to i64
  %arrayidx = getelementptr inbounds i8, i8* %ecount_buf, i64 %idxprom
  %5 = load i8, i8* %arrayidx, align 1, !tbaa !8
  %xor94 = xor i8 %5, %4
  %incdec.ptr4 = getelementptr inbounds i8, i8* %out.addr.099, i64 1
  store i8 %xor94, i8* %out.addr.099, align 1, !tbaa !8
  %dec = add i64 %len.addr.097, -1
  %add = add i32 %n.098, 1
  %rem = and i32 %add, 15
  %tobool = icmp ne i32 %rem, 0
  %tobool1 = icmp ne i64 %dec, 0
  %6 = select i1 %tobool, i1 %tobool1, i1 false
  br i1 %6, label %while.body, label %while.cond5.preheader, !llvm.loop !9

while.body7:                                      ; preds = %while.body7.preheader, %while.body7
  %in.addr.1108 = phi i8* [ %add.ptr19, %while.body7 ], [ %in.addr.0.lcssa, %while.body7.preheader ]
  %out.addr.1107 = phi i8* [ %add.ptr18, %while.body7 ], [ %out.addr.0.lcssa, %while.body7.preheader ]
  %len.addr.1106 = phi i64 [ %sub, %while.body7 ], [ %len.addr.0.lcssa, %while.body7.preheader ]
  tail call void %block(i8* noundef %ivec, i8* noundef %ecount_buf, i8* noundef %key) #3
  tail call fastcc void @ctr128_inc_aligned(i8* noundef %ivec) #4
  %7 = bitcast i8* %in.addr.1108 to i64*
  %8 = load i64, i64* %7, align 1, !tbaa !11
  %9 = load i64, i64* %2, align 1, !tbaa !11
  %xor12 = xor i64 %9, %8
  %10 = bitcast i8* %out.addr.1107 to i64*
  store i64 %xor12, i64* %10, align 1, !tbaa !11
  %add.ptr.1 = getelementptr inbounds i8, i8* %in.addr.1108, i64 8
  %11 = bitcast i8* %add.ptr.1 to i64*
  %12 = load i64, i64* %11, align 1, !tbaa !11
  %13 = load i64, i64* %3, align 1, !tbaa !11
  %xor12.1 = xor i64 %13, %12
  %add.ptr14.1 = getelementptr inbounds i8, i8* %out.addr.1107, i64 8
  %14 = bitcast i8* %add.ptr14.1 to i64*
  store i64 %xor12.1, i64* %14, align 1, !tbaa !11
  %sub = add i64 %len.addr.1106, -16
  %add.ptr18 = getelementptr inbounds i8, i8* %out.addr.1107, i64 16
  %add.ptr19 = getelementptr inbounds i8, i8* %in.addr.1108, i64 16
  %cmp = icmp ugt i64 %sub, 15
  br i1 %cmp, label %while.body7, label %while.end20, !llvm.loop !13

while.end20:                                      ; preds = %while.body7, %while.cond5.preheader
  %len.addr.1.lcssa = phi i64 [ %len.addr.0.lcssa, %while.cond5.preheader ], [ %sub, %while.body7 ]
  %n.1.lcssa = phi i32 [ %n.0.lcssa, %while.cond5.preheader ], [ 0, %while.body7 ]
  %out.addr.1.lcssa = phi i8* [ %out.addr.0.lcssa, %while.cond5.preheader ], [ %add.ptr18, %while.body7 ]
  %in.addr.1.lcssa = phi i8* [ %in.addr.0.lcssa, %while.cond5.preheader ], [ %add.ptr19, %while.body7 ]
  %tobool21.not = icmp eq i64 %len.addr.1.lcssa, 0
  br i1 %tobool21.not, label %if.end, label %if.then

if.then:                                          ; preds = %while.end20
  tail call void %block(i8* noundef %ivec, i8* noundef %ecount_buf, i8* noundef %key) #3
  tail call fastcc void @ctr128_inc_aligned(i8* noundef %ivec) #4
  %min.iters.check = icmp ult i64 %len.addr.1.lcssa, 32
  br i1 %min.iters.check, label %while.body25.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %if.then
  %15 = add i64 %len.addr.1.lcssa, -1
  %16 = trunc i64 %15 to i32
  %17 = xor i32 %n.1.lcssa, -1
  %18 = icmp ult i32 %17, %16
  %19 = icmp ugt i64 %15, 4294967295
  %20 = or i1 %18, %19
  br i1 %20, label %while.body25.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %21 = zext i32 %n.1.lcssa to i64
  %scevgep = getelementptr i8, i8* %out.addr.1.lcssa, i64 %21
  %22 = add i64 %len.addr.1.lcssa, %21
  %scevgep118 = getelementptr i8, i8* %out.addr.1.lcssa, i64 %22
  %scevgep119 = getelementptr i8, i8* %in.addr.1.lcssa, i64 %21
  %scevgep120 = getelementptr i8, i8* %in.addr.1.lcssa, i64 %22
  %scevgep121 = getelementptr i8, i8* %ecount_buf, i64 %21
  %scevgep122 = getelementptr i8, i8* %ecount_buf, i64 %22
  %bound0 = icmp ult i8* %scevgep, %scevgep120
  %bound1 = icmp ult i8* %scevgep119, %scevgep118
  %found.conflict = and i1 %bound0, %bound1
  %bound0123 = icmp ult i8* %scevgep, %scevgep122
  %bound1124 = icmp ult i8* %scevgep121, %scevgep118
  %found.conflict125 = and i1 %bound0123, %bound1124
  %conflict.rdx = or i1 %found.conflict, %found.conflict125
  br i1 %conflict.rdx, label %while.body25.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %len.addr.1.lcssa, -32
  %cast.crd = trunc i64 %n.vec to i32
  %ind.end = add i32 %n.1.lcssa, %cast.crd
  %ind.end127 = and i64 %len.addr.1.lcssa, 31
  %23 = add i64 %n.vec, -32
  %24 = lshr exact i64 %23, 5
  %25 = add nuw nsw i64 %24, 1
  %xtraiter = and i64 %25, 1
  %26 = icmp eq i64 %23, 0
  br i1 %26, label %middle.block.unr-lcssa, label %vector.ph.new

vector.ph.new:                                    ; preds = %vector.ph
  %unroll_iter = and i64 %25, 1152921504606846974
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph.new
  %index = phi i64 [ 0, %vector.ph.new ], [ %index.next.1, %vector.body ]
  %niter = phi i64 [ 0, %vector.ph.new ], [ %niter.next.1, %vector.body ]
  %27 = trunc i64 %index to i32
  %offset.idx = add i32 %n.1.lcssa, %27
  %28 = zext i32 %offset.idx to i64
  %29 = getelementptr inbounds i8, i8* %in.addr.1.lcssa, i64 %28
  %30 = bitcast i8* %29 to <16 x i8>*
  %wide.load = load <16 x i8>, <16 x i8>* %30, align 1, !tbaa !8, !alias.scope !14
  %31 = getelementptr inbounds i8, i8* %29, i64 16
  %32 = bitcast i8* %31 to <16 x i8>*
  %wide.load129 = load <16 x i8>, <16 x i8>* %32, align 1, !tbaa !8, !alias.scope !14
  %33 = getelementptr inbounds i8, i8* %ecount_buf, i64 %28
  %34 = bitcast i8* %33 to <16 x i8>*
  %wide.load130 = load <16 x i8>, <16 x i8>* %34, align 1, !tbaa !8, !alias.scope !17
  %35 = getelementptr inbounds i8, i8* %33, i64 16
  %36 = bitcast i8* %35 to <16 x i8>*
  %wide.load131 = load <16 x i8>, <16 x i8>* %36, align 1, !tbaa !8, !alias.scope !17
  %37 = xor <16 x i8> %wide.load130, %wide.load
  %38 = xor <16 x i8> %wide.load131, %wide.load129
  %39 = getelementptr inbounds i8, i8* %out.addr.1.lcssa, i64 %28
  %40 = bitcast i8* %39 to <16 x i8>*
  store <16 x i8> %37, <16 x i8>* %40, align 1, !tbaa !8, !alias.scope !19, !noalias !21
  %41 = getelementptr inbounds i8, i8* %39, i64 16
  %42 = bitcast i8* %41 to <16 x i8>*
  store <16 x i8> %38, <16 x i8>* %42, align 1, !tbaa !8, !alias.scope !19, !noalias !21
  %43 = trunc i64 %index to i32
  %44 = or i32 %43, 32
  %offset.idx.1 = add i32 %n.1.lcssa, %44
  %45 = zext i32 %offset.idx.1 to i64
  %46 = getelementptr inbounds i8, i8* %in.addr.1.lcssa, i64 %45
  %47 = bitcast i8* %46 to <16 x i8>*
  %wide.load.1 = load <16 x i8>, <16 x i8>* %47, align 1, !tbaa !8, !alias.scope !14
  %48 = getelementptr inbounds i8, i8* %46, i64 16
  %49 = bitcast i8* %48 to <16 x i8>*
  %wide.load129.1 = load <16 x i8>, <16 x i8>* %49, align 1, !tbaa !8, !alias.scope !14
  %50 = getelementptr inbounds i8, i8* %ecount_buf, i64 %45
  %51 = bitcast i8* %50 to <16 x i8>*
  %wide.load130.1 = load <16 x i8>, <16 x i8>* %51, align 1, !tbaa !8, !alias.scope !17
  %52 = getelementptr inbounds i8, i8* %50, i64 16
  %53 = bitcast i8* %52 to <16 x i8>*
  %wide.load131.1 = load <16 x i8>, <16 x i8>* %53, align 1, !tbaa !8, !alias.scope !17
  %54 = xor <16 x i8> %wide.load130.1, %wide.load.1
  %55 = xor <16 x i8> %wide.load131.1, %wide.load129.1
  %56 = getelementptr inbounds i8, i8* %out.addr.1.lcssa, i64 %45
  %57 = bitcast i8* %56 to <16 x i8>*
  store <16 x i8> %54, <16 x i8>* %57, align 1, !tbaa !8, !alias.scope !19, !noalias !21
  %58 = getelementptr inbounds i8, i8* %56, i64 16
  %59 = bitcast i8* %58 to <16 x i8>*
  store <16 x i8> %55, <16 x i8>* %59, align 1, !tbaa !8, !alias.scope !19, !noalias !21
  %index.next.1 = add nuw i64 %index, 64
  %niter.next.1 = add i64 %niter, 2
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %middle.block.unr-lcssa.loopexit, label %vector.body, !llvm.loop !22

middle.block.unr-lcssa.loopexit:                  ; preds = %vector.body
  %phi.cast = trunc i64 %index.next.1 to i32
  br label %middle.block.unr-lcssa

middle.block.unr-lcssa:                           ; preds = %middle.block.unr-lcssa.loopexit, %vector.ph
  %index.unr = phi i32 [ 0, %vector.ph ], [ %phi.cast, %middle.block.unr-lcssa.loopexit ]
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %middle.block, label %vector.body.epil

vector.body.epil:                                 ; preds = %middle.block.unr-lcssa
  %offset.idx.epil = add i32 %n.1.lcssa, %index.unr
  %60 = zext i32 %offset.idx.epil to i64
  %61 = getelementptr inbounds i8, i8* %in.addr.1.lcssa, i64 %60
  %62 = bitcast i8* %61 to <16 x i8>*
  %wide.load.epil = load <16 x i8>, <16 x i8>* %62, align 1, !tbaa !8, !alias.scope !14
  %63 = getelementptr inbounds i8, i8* %61, i64 16
  %64 = bitcast i8* %63 to <16 x i8>*
  %wide.load129.epil = load <16 x i8>, <16 x i8>* %64, align 1, !tbaa !8, !alias.scope !14
  %65 = getelementptr inbounds i8, i8* %ecount_buf, i64 %60
  %66 = bitcast i8* %65 to <16 x i8>*
  %wide.load130.epil = load <16 x i8>, <16 x i8>* %66, align 1, !tbaa !8, !alias.scope !17
  %67 = getelementptr inbounds i8, i8* %65, i64 16
  %68 = bitcast i8* %67 to <16 x i8>*
  %wide.load131.epil = load <16 x i8>, <16 x i8>* %68, align 1, !tbaa !8, !alias.scope !17
  %69 = xor <16 x i8> %wide.load130.epil, %wide.load.epil
  %70 = xor <16 x i8> %wide.load131.epil, %wide.load129.epil
  %71 = getelementptr inbounds i8, i8* %out.addr.1.lcssa, i64 %60
  %72 = bitcast i8* %71 to <16 x i8>*
  store <16 x i8> %69, <16 x i8>* %72, align 1, !tbaa !8, !alias.scope !19, !noalias !21
  %73 = getelementptr inbounds i8, i8* %71, i64 16
  %74 = bitcast i8* %73 to <16 x i8>*
  store <16 x i8> %70, <16 x i8>* %74, align 1, !tbaa !8, !alias.scope !19, !noalias !21
  br label %middle.block

middle.block:                                     ; preds = %middle.block.unr-lcssa, %vector.body.epil
  %cmp.n = icmp eq i64 %len.addr.1.lcssa, %n.vec
  br i1 %cmp.n, label %if.end, label %while.body25.preheader

while.body25.preheader:                           ; preds = %vector.memcheck, %vector.scevcheck, %if.then, %middle.block
  %n.3115.ph = phi i32 [ %n.1.lcssa, %vector.memcheck ], [ %n.1.lcssa, %vector.scevcheck ], [ %n.1.lcssa, %if.then ], [ %ind.end, %middle.block ]
  %len.addr.2114.ph = phi i64 [ %len.addr.1.lcssa, %vector.memcheck ], [ %len.addr.1.lcssa, %vector.scevcheck ], [ %len.addr.1.lcssa, %if.then ], [ %ind.end127, %middle.block ]
  %xtraiter132 = and i64 %len.addr.2114.ph, 1
  %lcmp.mod133.not = icmp eq i64 %xtraiter132, 0
  br i1 %lcmp.mod133.not, label %while.body25.prol.loopexit, label %while.body25.prol

while.body25.prol:                                ; preds = %while.body25.preheader
  %dec23.prol = add i64 %len.addr.2114.ph, -1
  %idxprom26.prol = zext i32 %n.3115.ph to i64
  %arrayidx27.prol = getelementptr inbounds i8, i8* %in.addr.1.lcssa, i64 %idxprom26.prol
  %75 = load i8, i8* %arrayidx27.prol, align 1, !tbaa !8
  %arrayidx30.prol = getelementptr inbounds i8, i8* %ecount_buf, i64 %idxprom26.prol
  %76 = load i8, i8* %arrayidx30.prol, align 1, !tbaa !8
  %xor3293.prol = xor i8 %76, %75
  %arrayidx35.prol = getelementptr inbounds i8, i8* %out.addr.1.lcssa, i64 %idxprom26.prol
  store i8 %xor3293.prol, i8* %arrayidx35.prol, align 1, !tbaa !8
  %inc.prol = add i32 %n.3115.ph, 1
  br label %while.body25.prol.loopexit

while.body25.prol.loopexit:                       ; preds = %while.body25.prol, %while.body25.preheader
  %inc.lcssa.unr = phi i32 [ undef, %while.body25.preheader ], [ %inc.prol, %while.body25.prol ]
  %n.3115.unr = phi i32 [ %n.3115.ph, %while.body25.preheader ], [ %inc.prol, %while.body25.prol ]
  %len.addr.2114.unr = phi i64 [ %len.addr.2114.ph, %while.body25.preheader ], [ %dec23.prol, %while.body25.prol ]
  %77 = icmp eq i64 %len.addr.2114.ph, 1
  br i1 %77, label %if.end, label %while.body25

while.body25:                                     ; preds = %while.body25.prol.loopexit, %while.body25
  %n.3115 = phi i32 [ %inc.1, %while.body25 ], [ %n.3115.unr, %while.body25.prol.loopexit ]
  %len.addr.2114 = phi i64 [ %dec23.1, %while.body25 ], [ %len.addr.2114.unr, %while.body25.prol.loopexit ]
  %idxprom26 = zext i32 %n.3115 to i64
  %arrayidx27 = getelementptr inbounds i8, i8* %in.addr.1.lcssa, i64 %idxprom26
  %78 = load i8, i8* %arrayidx27, align 1, !tbaa !8
  %arrayidx30 = getelementptr inbounds i8, i8* %ecount_buf, i64 %idxprom26
  %79 = load i8, i8* %arrayidx30, align 1, !tbaa !8
  %xor3293 = xor i8 %79, %78
  %arrayidx35 = getelementptr inbounds i8, i8* %out.addr.1.lcssa, i64 %idxprom26
  store i8 %xor3293, i8* %arrayidx35, align 1, !tbaa !8
  %inc = add i32 %n.3115, 1
  %dec23.1 = add i64 %len.addr.2114, -2
  %idxprom26.1 = zext i32 %inc to i64
  %arrayidx27.1 = getelementptr inbounds i8, i8* %in.addr.1.lcssa, i64 %idxprom26.1
  %80 = load i8, i8* %arrayidx27.1, align 1, !tbaa !8
  %arrayidx30.1 = getelementptr inbounds i8, i8* %ecount_buf, i64 %idxprom26.1
  %81 = load i8, i8* %arrayidx30.1, align 1, !tbaa !8
  %xor3293.1 = xor i8 %81, %80
  %arrayidx35.1 = getelementptr inbounds i8, i8* %out.addr.1.lcssa, i64 %idxprom26.1
  store i8 %xor3293.1, i8* %arrayidx35.1, align 1, !tbaa !8
  %inc.1 = add i32 %n.3115, 2
  %tobool24.not.1 = icmp eq i64 %dec23.1, 0
  br i1 %tobool24.not.1, label %if.end, label %while.body25, !llvm.loop !24

if.end:                                           ; preds = %while.body25.prol.loopexit, %while.body25, %middle.block, %while.end20
  %n.4 = phi i32 [ %n.1.lcssa, %while.end20 ], [ %ind.end, %middle.block ], [ %inc.lcssa.unr, %while.body25.prol.loopexit ], [ %inc.1, %while.body25 ]
  store i32 %n.4, i32* %num, align 4, !tbaa !4
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define internal fastcc void @ctr128_inc_aligned(i8* nocapture noundef %counter) unnamed_addr #1 {
entry:
  tail call fastcc void @ctr128_inc(i8* noundef %counter) #4
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define internal fastcc void @ctr128_inc(i8* nocapture noundef %counter) unnamed_addr #1 {
entry:
  %arrayidx = getelementptr inbounds i8, i8* %counter, i64 15
  %0 = load i8, i8* %arrayidx, align 1, !tbaa !8
  %conv = zext i8 %0 to i32
  %add = add nuw nsw i32 %conv, 1
  %conv1 = trunc i32 %add to i8
  store i8 %conv1, i8* %arrayidx, align 1, !tbaa !8
  %shr = lshr i32 %add, 8
  %arrayidx.1 = getelementptr inbounds i8, i8* %counter, i64 14
  %1 = load i8, i8* %arrayidx.1, align 1, !tbaa !8
  %conv.1 = zext i8 %1 to i32
  %add.1 = add nuw nsw i32 %shr, %conv.1
  %conv1.1 = trunc i32 %add.1 to i8
  store i8 %conv1.1, i8* %arrayidx.1, align 1, !tbaa !8
  %shr.1 = lshr i32 %add.1, 8
  %arrayidx.2 = getelementptr inbounds i8, i8* %counter, i64 13
  %2 = load i8, i8* %arrayidx.2, align 1, !tbaa !8
  %conv.2 = zext i8 %2 to i32
  %add.2 = add nuw nsw i32 %shr.1, %conv.2
  %conv1.2 = trunc i32 %add.2 to i8
  store i8 %conv1.2, i8* %arrayidx.2, align 1, !tbaa !8
  %shr.2 = lshr i32 %add.2, 8
  %arrayidx.3 = getelementptr inbounds i8, i8* %counter, i64 12
  %3 = load i8, i8* %arrayidx.3, align 1, !tbaa !8
  %conv.3 = zext i8 %3 to i32
  %add.3 = add nuw nsw i32 %shr.2, %conv.3
  %conv1.3 = trunc i32 %add.3 to i8
  store i8 %conv1.3, i8* %arrayidx.3, align 1, !tbaa !8
  %shr.3 = lshr i32 %add.3, 8
  %arrayidx.4 = getelementptr inbounds i8, i8* %counter, i64 11
  %4 = load i8, i8* %arrayidx.4, align 1, !tbaa !8
  %conv.4 = zext i8 %4 to i32
  %add.4 = add nuw nsw i32 %shr.3, %conv.4
  %conv1.4 = trunc i32 %add.4 to i8
  store i8 %conv1.4, i8* %arrayidx.4, align 1, !tbaa !8
  %shr.4 = lshr i32 %add.4, 8
  %arrayidx.5 = getelementptr inbounds i8, i8* %counter, i64 10
  %5 = load i8, i8* %arrayidx.5, align 1, !tbaa !8
  %conv.5 = zext i8 %5 to i32
  %add.5 = add nuw nsw i32 %shr.4, %conv.5
  %conv1.5 = trunc i32 %add.5 to i8
  store i8 %conv1.5, i8* %arrayidx.5, align 1, !tbaa !8
  %shr.5 = lshr i32 %add.5, 8
  %arrayidx.6 = getelementptr inbounds i8, i8* %counter, i64 9
  %6 = load i8, i8* %arrayidx.6, align 1, !tbaa !8
  %conv.6 = zext i8 %6 to i32
  %add.6 = add nuw nsw i32 %shr.5, %conv.6
  %conv1.6 = trunc i32 %add.6 to i8
  store i8 %conv1.6, i8* %arrayidx.6, align 1, !tbaa !8
  %shr.6 = lshr i32 %add.6, 8
  %arrayidx.7 = getelementptr inbounds i8, i8* %counter, i64 8
  %7 = load i8, i8* %arrayidx.7, align 1, !tbaa !8
  %conv.7 = zext i8 %7 to i32
  %add.7 = add nuw nsw i32 %shr.6, %conv.7
  %conv1.7 = trunc i32 %add.7 to i8
  store i8 %conv1.7, i8* %arrayidx.7, align 1, !tbaa !8
  %shr.7 = lshr i32 %add.7, 8
  %arrayidx.8 = getelementptr inbounds i8, i8* %counter, i64 7
  %8 = load i8, i8* %arrayidx.8, align 1, !tbaa !8
  %conv.8 = zext i8 %8 to i32
  %add.8 = add nuw nsw i32 %shr.7, %conv.8
  %conv1.8 = trunc i32 %add.8 to i8
  store i8 %conv1.8, i8* %arrayidx.8, align 1, !tbaa !8
  %shr.8 = lshr i32 %add.8, 8
  %arrayidx.9 = getelementptr inbounds i8, i8* %counter, i64 6
  %9 = load i8, i8* %arrayidx.9, align 1, !tbaa !8
  %conv.9 = zext i8 %9 to i32
  %add.9 = add nuw nsw i32 %shr.8, %conv.9
  %conv1.9 = trunc i32 %add.9 to i8
  store i8 %conv1.9, i8* %arrayidx.9, align 1, !tbaa !8
  %shr.9 = lshr i32 %add.9, 8
  %arrayidx.10 = getelementptr inbounds i8, i8* %counter, i64 5
  %10 = load i8, i8* %arrayidx.10, align 1, !tbaa !8
  %conv.10 = zext i8 %10 to i32
  %add.10 = add nuw nsw i32 %shr.9, %conv.10
  %conv1.10 = trunc i32 %add.10 to i8
  store i8 %conv1.10, i8* %arrayidx.10, align 1, !tbaa !8
  %shr.10 = lshr i32 %add.10, 8
  %arrayidx.11 = getelementptr inbounds i8, i8* %counter, i64 4
  %11 = load i8, i8* %arrayidx.11, align 1, !tbaa !8
  %conv.11 = zext i8 %11 to i32
  %add.11 = add nuw nsw i32 %shr.10, %conv.11
  %conv1.11 = trunc i32 %add.11 to i8
  store i8 %conv1.11, i8* %arrayidx.11, align 1, !tbaa !8
  %shr.11 = lshr i32 %add.11, 8
  %arrayidx.12 = getelementptr inbounds i8, i8* %counter, i64 3
  %12 = load i8, i8* %arrayidx.12, align 1, !tbaa !8
  %conv.12 = zext i8 %12 to i32
  %add.12 = add nuw nsw i32 %shr.11, %conv.12
  %conv1.12 = trunc i32 %add.12 to i8
  store i8 %conv1.12, i8* %arrayidx.12, align 1, !tbaa !8
  %shr.12 = lshr i32 %add.12, 8
  %arrayidx.13 = getelementptr inbounds i8, i8* %counter, i64 2
  %13 = load i8, i8* %arrayidx.13, align 1, !tbaa !8
  %conv.13 = zext i8 %13 to i32
  %add.13 = add nuw nsw i32 %shr.12, %conv.13
  %conv1.13 = trunc i32 %add.13 to i8
  store i8 %conv1.13, i8* %arrayidx.13, align 1, !tbaa !8
  %shr.13 = lshr i32 %add.13, 8
  %arrayidx.14 = getelementptr inbounds i8, i8* %counter, i64 1
  %14 = load i8, i8* %arrayidx.14, align 1, !tbaa !8
  %conv.14 = zext i8 %14 to i32
  %add.14 = add nuw nsw i32 %shr.13, %conv.14
  %conv1.14 = trunc i32 %add.14 to i8
  store i8 %conv1.14, i8* %arrayidx.14, align 1, !tbaa !8
  %shr.14 = lshr i32 %add.14, 8
  %15 = load i8, i8* %counter, align 1, !tbaa !8
  %16 = trunc i32 %shr.14 to i8
  %conv1.15 = add i8 %15, %16
  store i8 %conv1.15, i8* %counter, align 1, !tbaa !8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define void @CRYPTO_ctr128_encrypt_ctr32(i8* noundef %in, i8* noundef %out, i64 noundef %len, i8* noundef %key, i8* noundef %ivec, i8* noundef %ecount_buf, i32* nocapture noundef %num, void (i8*, i8*, i64, i8*, i8*)* nocapture noundef readonly %func) local_unnamed_addr #0 {
entry:
  %0 = load i32, i32* %num, align 4, !tbaa !4
  %tobool114 = icmp ne i32 %0, 0
  %tobool1115 = icmp ne i64 %len, 0
  %1 = and i1 %tobool114, %tobool1115
  br i1 %1, label %while.body, label %while.end

while.body:                                       ; preds = %entry, %while.body
  %in.addr.0119 = phi i8* [ %incdec.ptr, %while.body ], [ %in, %entry ]
  %out.addr.0118 = phi i8* [ %incdec.ptr4, %while.body ], [ %out, %entry ]
  %len.addr.0117 = phi i64 [ %dec, %while.body ], [ %len, %entry ]
  %n.0116 = phi i32 [ %rem, %while.body ], [ %0, %entry ]
  %incdec.ptr = getelementptr inbounds i8, i8* %in.addr.0119, i64 1
  %2 = load i8, i8* %in.addr.0119, align 1, !tbaa !8
  %idxprom = zext i32 %n.0116 to i64
  %arrayidx = getelementptr inbounds i8, i8* %ecount_buf, i64 %idxprom
  %3 = load i8, i8* %arrayidx, align 1, !tbaa !8
  %xor112 = xor i8 %3, %2
  %incdec.ptr4 = getelementptr inbounds i8, i8* %out.addr.0118, i64 1
  store i8 %xor112, i8* %out.addr.0118, align 1, !tbaa !8
  %dec = add i64 %len.addr.0117, -1
  %add = add i32 %n.0116, 1
  %rem = and i32 %add, 15
  %tobool = icmp ne i32 %rem, 0
  %tobool1 = icmp ne i64 %dec, 0
  %4 = select i1 %tobool, i1 %tobool1, i1 false
  br i1 %4, label %while.body, label %while.end, !llvm.loop !25

while.end:                                        ; preds = %while.body, %entry
  %n.0.lcssa = phi i32 [ %0, %entry ], [ %rem, %while.body ]
  %len.addr.0.lcssa = phi i64 [ %len, %entry ], [ %dec, %while.body ]
  %out.addr.0.lcssa = phi i8* [ %out, %entry ], [ %incdec.ptr4, %while.body ]
  %in.addr.0.lcssa = phi i8* [ %in, %entry ], [ %incdec.ptr, %while.body ]
  %add.ptr = getelementptr inbounds i8, i8* %ivec, i64 12
  %5 = bitcast i8* %add.ptr to i32*
  %6 = load i32, i32* %5, align 4, !tbaa !4
  %7 = tail call i32 asm "bswapl $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %6) #5, !srcloc !26
  %cmp123 = icmp ugt i64 %len.addr.0.lcssa, 15
  br i1 %cmp123, label %while.body7, label %while.end28

while.body7:                                      ; preds = %while.end, %if.end24
  %in.addr.1127 = phi i8* [ %add.ptr27, %if.end24 ], [ %in.addr.0.lcssa, %while.end ]
  %out.addr.1126 = phi i8* [ %add.ptr26, %if.end24 ], [ %out.addr.0.lcssa, %while.end ]
  %len.addr.1125 = phi i64 [ %sub25, %if.end24 ], [ %len.addr.0.lcssa, %while.end ]
  %ctr32.0124 = phi i32 [ %spec.select, %if.end24 ], [ %7, %while.end ]
  %div = lshr i64 %len.addr.1125, 4
  %8 = icmp ult i64 %div, 268435456
  %spec.store.select = select i1 %8, i64 %div, i64 268435456
  %conv10 = trunc i64 %spec.store.select to i32
  %add11 = add i32 %ctr32.0124, %conv10
  %conv12 = zext i32 %add11 to i64
  %cmp13 = icmp ugt i64 %spec.store.select, %conv12
  %spec.select = select i1 %cmp13, i32 0, i32 %add11
  %sub = select i1 %cmp13, i64 %conv12, i64 0
  %spec.select113 = sub nsw i64 %spec.store.select, %sub
  tail call void %func(i8* noundef %in.addr.1127, i8* noundef %out.addr.1126, i64 noundef %spec.select113, i8* noundef %key, i8* noundef nonnull %ivec) #3
  %9 = tail call i32 asm "bswapl $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %spec.select) #5, !srcloc !27
  store i32 %9, i32* %5, align 4, !tbaa !4
  %cmp21 = icmp eq i32 %spec.select, 0
  br i1 %cmp21, label %if.then23, label %if.end24

if.then23:                                        ; preds = %while.body7
  tail call fastcc void @ctr96_inc(i8* noundef nonnull %ivec) #4
  br label %if.end24

if.end24:                                         ; preds = %if.then23, %while.body7
  %mul = shl nsw i64 %spec.select113, 4
  %sub25 = sub i64 %len.addr.1125, %mul
  %add.ptr26 = getelementptr inbounds i8, i8* %out.addr.1126, i64 %mul
  %add.ptr27 = getelementptr inbounds i8, i8* %in.addr.1127, i64 %mul
  %cmp = icmp ugt i64 %sub25, 15
  br i1 %cmp, label %while.body7, label %while.end28, !llvm.loop !28

while.end28:                                      ; preds = %if.end24, %while.end
  %ctr32.0.lcssa = phi i32 [ %7, %while.end ], [ %spec.select, %if.end24 ]
  %len.addr.1.lcssa = phi i64 [ %len.addr.0.lcssa, %while.end ], [ %sub25, %if.end24 ]
  %out.addr.1.lcssa = phi i8* [ %out.addr.0.lcssa, %while.end ], [ %add.ptr26, %if.end24 ]
  %in.addr.1.lcssa = phi i8* [ %in.addr.0.lcssa, %while.end ], [ %add.ptr27, %if.end24 ]
  %tobool29.not = icmp eq i64 %len.addr.1.lcssa, 0
  br i1 %tobool29.not, label %if.end54, label %if.then30

if.then30:                                        ; preds = %while.end28
  %call = tail call i8* @memset(i8* noundef %ecount_buf, i32 noundef 0, i64 noundef 16) #3
  tail call void %func(i8* noundef %ecount_buf, i8* noundef %ecount_buf, i64 noundef 1, i8* noundef %key, i8* noundef nonnull %ivec) #3
  %inc = add i32 %ctr32.0.lcssa, 1
  %10 = tail call i32 asm "bswapl $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %inc) #5, !srcloc !29
  store i32 %10, i32* %5, align 4, !tbaa !4
  %cmp34 = icmp eq i32 %inc, 0
  br i1 %cmp34, label %if.then36, label %while.body41.preheader

if.then36:                                        ; preds = %if.then30
  tail call fastcc void @ctr96_inc(i8* noundef nonnull %ivec) #4
  br label %while.body41.preheader

while.body41.preheader:                           ; preds = %if.then30, %if.then36
  %min.iters.check = icmp ult i64 %len.addr.1.lcssa, 32
  br i1 %min.iters.check, label %while.body41.preheader150, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %while.body41.preheader
  %11 = add i64 %len.addr.1.lcssa, -1
  %12 = trunc i64 %11 to i32
  %13 = xor i32 %n.0.lcssa, -1
  %14 = icmp ult i32 %13, %12
  %15 = icmp ugt i64 %11, 4294967295
  %16 = or i1 %14, %15
  br i1 %16, label %while.body41.preheader150, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %17 = zext i32 %n.0.lcssa to i64
  %scevgep = getelementptr i8, i8* %out.addr.1.lcssa, i64 %17
  %18 = add i64 %len.addr.1.lcssa, %17
  %scevgep136 = getelementptr i8, i8* %out.addr.1.lcssa, i64 %18
  %scevgep137 = getelementptr i8, i8* %in.addr.1.lcssa, i64 %17
  %scevgep138 = getelementptr i8, i8* %in.addr.1.lcssa, i64 %18
  %scevgep139 = getelementptr i8, i8* %ecount_buf, i64 %17
  %scevgep140 = getelementptr i8, i8* %ecount_buf, i64 %18
  %bound0 = icmp ult i8* %scevgep, %scevgep138
  %bound1 = icmp ult i8* %scevgep137, %scevgep136
  %found.conflict = and i1 %bound0, %bound1
  %bound0141 = icmp ult i8* %scevgep, %scevgep140
  %bound1142 = icmp ult i8* %scevgep139, %scevgep136
  %found.conflict143 = and i1 %bound0141, %bound1142
  %conflict.rdx = or i1 %found.conflict, %found.conflict143
  br i1 %conflict.rdx, label %while.body41.preheader150, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %len.addr.1.lcssa, -32
  %ind.end = and i64 %len.addr.1.lcssa, 31
  %cast.crd = trunc i64 %n.vec to i32
  %ind.end145 = add i32 %n.0.lcssa, %cast.crd
  %19 = add i64 %n.vec, -32
  %20 = lshr exact i64 %19, 5
  %21 = add nuw nsw i64 %20, 1
  %xtraiter = and i64 %21, 1
  %22 = icmp eq i64 %19, 0
  br i1 %22, label %middle.block.unr-lcssa, label %vector.ph.new

vector.ph.new:                                    ; preds = %vector.ph
  %unroll_iter = and i64 %21, 1152921504606846974
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph.new
  %index = phi i64 [ 0, %vector.ph.new ], [ %index.next.1, %vector.body ]
  %niter = phi i64 [ 0, %vector.ph.new ], [ %niter.next.1, %vector.body ]
  %23 = trunc i64 %index to i32
  %offset.idx146 = add i32 %n.0.lcssa, %23
  %24 = zext i32 %offset.idx146 to i64
  %25 = getelementptr inbounds i8, i8* %in.addr.1.lcssa, i64 %24
  %26 = bitcast i8* %25 to <16 x i8>*
  %wide.load = load <16 x i8>, <16 x i8>* %26, align 1, !tbaa !8, !alias.scope !30
  %27 = getelementptr inbounds i8, i8* %25, i64 16
  %28 = bitcast i8* %27 to <16 x i8>*
  %wide.load147 = load <16 x i8>, <16 x i8>* %28, align 1, !tbaa !8, !alias.scope !30
  %29 = getelementptr inbounds i8, i8* %ecount_buf, i64 %24
  %30 = bitcast i8* %29 to <16 x i8>*
  %wide.load148 = load <16 x i8>, <16 x i8>* %30, align 1, !tbaa !8, !alias.scope !33
  %31 = getelementptr inbounds i8, i8* %29, i64 16
  %32 = bitcast i8* %31 to <16 x i8>*
  %wide.load149 = load <16 x i8>, <16 x i8>* %32, align 1, !tbaa !8, !alias.scope !33
  %33 = xor <16 x i8> %wide.load148, %wide.load
  %34 = xor <16 x i8> %wide.load149, %wide.load147
  %35 = getelementptr inbounds i8, i8* %out.addr.1.lcssa, i64 %24
  %36 = bitcast i8* %35 to <16 x i8>*
  store <16 x i8> %33, <16 x i8>* %36, align 1, !tbaa !8, !alias.scope !35, !noalias !37
  %37 = getelementptr inbounds i8, i8* %35, i64 16
  %38 = bitcast i8* %37 to <16 x i8>*
  store <16 x i8> %34, <16 x i8>* %38, align 1, !tbaa !8, !alias.scope !35, !noalias !37
  %39 = trunc i64 %index to i32
  %40 = or i32 %39, 32
  %offset.idx146.1 = add i32 %n.0.lcssa, %40
  %41 = zext i32 %offset.idx146.1 to i64
  %42 = getelementptr inbounds i8, i8* %in.addr.1.lcssa, i64 %41
  %43 = bitcast i8* %42 to <16 x i8>*
  %wide.load.1 = load <16 x i8>, <16 x i8>* %43, align 1, !tbaa !8, !alias.scope !30
  %44 = getelementptr inbounds i8, i8* %42, i64 16
  %45 = bitcast i8* %44 to <16 x i8>*
  %wide.load147.1 = load <16 x i8>, <16 x i8>* %45, align 1, !tbaa !8, !alias.scope !30
  %46 = getelementptr inbounds i8, i8* %ecount_buf, i64 %41
  %47 = bitcast i8* %46 to <16 x i8>*
  %wide.load148.1 = load <16 x i8>, <16 x i8>* %47, align 1, !tbaa !8, !alias.scope !33
  %48 = getelementptr inbounds i8, i8* %46, i64 16
  %49 = bitcast i8* %48 to <16 x i8>*
  %wide.load149.1 = load <16 x i8>, <16 x i8>* %49, align 1, !tbaa !8, !alias.scope !33
  %50 = xor <16 x i8> %wide.load148.1, %wide.load.1
  %51 = xor <16 x i8> %wide.load149.1, %wide.load147.1
  %52 = getelementptr inbounds i8, i8* %out.addr.1.lcssa, i64 %41
  %53 = bitcast i8* %52 to <16 x i8>*
  store <16 x i8> %50, <16 x i8>* %53, align 1, !tbaa !8, !alias.scope !35, !noalias !37
  %54 = getelementptr inbounds i8, i8* %52, i64 16
  %55 = bitcast i8* %54 to <16 x i8>*
  store <16 x i8> %51, <16 x i8>* %55, align 1, !tbaa !8, !alias.scope !35, !noalias !37
  %index.next.1 = add nuw i64 %index, 64
  %niter.next.1 = add i64 %niter, 2
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %middle.block.unr-lcssa.loopexit, label %vector.body, !llvm.loop !38

middle.block.unr-lcssa.loopexit:                  ; preds = %vector.body
  %phi.cast = trunc i64 %index.next.1 to i32
  br label %middle.block.unr-lcssa

middle.block.unr-lcssa:                           ; preds = %middle.block.unr-lcssa.loopexit, %vector.ph
  %index.unr = phi i32 [ 0, %vector.ph ], [ %phi.cast, %middle.block.unr-lcssa.loopexit ]
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %middle.block, label %vector.body.epil

vector.body.epil:                                 ; preds = %middle.block.unr-lcssa
  %offset.idx146.epil = add i32 %n.0.lcssa, %index.unr
  %56 = zext i32 %offset.idx146.epil to i64
  %57 = getelementptr inbounds i8, i8* %in.addr.1.lcssa, i64 %56
  %58 = bitcast i8* %57 to <16 x i8>*
  %wide.load.epil = load <16 x i8>, <16 x i8>* %58, align 1, !tbaa !8, !alias.scope !30
  %59 = getelementptr inbounds i8, i8* %57, i64 16
  %60 = bitcast i8* %59 to <16 x i8>*
  %wide.load147.epil = load <16 x i8>, <16 x i8>* %60, align 1, !tbaa !8, !alias.scope !30
  %61 = getelementptr inbounds i8, i8* %ecount_buf, i64 %56
  %62 = bitcast i8* %61 to <16 x i8>*
  %wide.load148.epil = load <16 x i8>, <16 x i8>* %62, align 1, !tbaa !8, !alias.scope !33
  %63 = getelementptr inbounds i8, i8* %61, i64 16
  %64 = bitcast i8* %63 to <16 x i8>*
  %wide.load149.epil = load <16 x i8>, <16 x i8>* %64, align 1, !tbaa !8, !alias.scope !33
  %65 = xor <16 x i8> %wide.load148.epil, %wide.load.epil
  %66 = xor <16 x i8> %wide.load149.epil, %wide.load147.epil
  %67 = getelementptr inbounds i8, i8* %out.addr.1.lcssa, i64 %56
  %68 = bitcast i8* %67 to <16 x i8>*
  store <16 x i8> %65, <16 x i8>* %68, align 1, !tbaa !8, !alias.scope !35, !noalias !37
  %69 = getelementptr inbounds i8, i8* %67, i64 16
  %70 = bitcast i8* %69 to <16 x i8>*
  store <16 x i8> %66, <16 x i8>* %70, align 1, !tbaa !8, !alias.scope !35, !noalias !37
  br label %middle.block

middle.block:                                     ; preds = %middle.block.unr-lcssa, %vector.body.epil
  %cmp.n = icmp eq i64 %len.addr.1.lcssa, %n.vec
  br i1 %cmp.n, label %if.end54, label %while.body41.preheader150

while.body41.preheader150:                        ; preds = %vector.memcheck, %vector.scevcheck, %while.body41.preheader, %middle.block
  %len.addr.2134.ph = phi i64 [ %len.addr.1.lcssa, %vector.memcheck ], [ %len.addr.1.lcssa, %vector.scevcheck ], [ %len.addr.1.lcssa, %while.body41.preheader ], [ %ind.end, %middle.block ]
  %n.1133.ph = phi i32 [ %n.0.lcssa, %vector.memcheck ], [ %n.0.lcssa, %vector.scevcheck ], [ %n.0.lcssa, %while.body41.preheader ], [ %ind.end145, %middle.block ]
  %xtraiter151 = and i64 %len.addr.2134.ph, 1
  %lcmp.mod152.not = icmp eq i64 %xtraiter151, 0
  br i1 %lcmp.mod152.not, label %while.body41.prol.loopexit, label %while.body41.prol

while.body41.prol:                                ; preds = %while.body41.preheader150
  %dec39.prol = add i64 %len.addr.2134.ph, -1
  %idxprom42.prol = zext i32 %n.1133.ph to i64
  %arrayidx43.prol = getelementptr inbounds i8, i8* %in.addr.1.lcssa, i64 %idxprom42.prol
  %71 = load i8, i8* %arrayidx43.prol, align 1, !tbaa !8
  %arrayidx46.prol = getelementptr inbounds i8, i8* %ecount_buf, i64 %idxprom42.prol
  %72 = load i8, i8* %arrayidx46.prol, align 1, !tbaa !8
  %xor48111.prol = xor i8 %72, %71
  %arrayidx51.prol = getelementptr inbounds i8, i8* %out.addr.1.lcssa, i64 %idxprom42.prol
  store i8 %xor48111.prol, i8* %arrayidx51.prol, align 1, !tbaa !8
  %inc52.prol = add i32 %n.1133.ph, 1
  br label %while.body41.prol.loopexit

while.body41.prol.loopexit:                       ; preds = %while.body41.prol, %while.body41.preheader150
  %inc52.lcssa.unr = phi i32 [ undef, %while.body41.preheader150 ], [ %inc52.prol, %while.body41.prol ]
  %len.addr.2134.unr = phi i64 [ %len.addr.2134.ph, %while.body41.preheader150 ], [ %dec39.prol, %while.body41.prol ]
  %n.1133.unr = phi i32 [ %n.1133.ph, %while.body41.preheader150 ], [ %inc52.prol, %while.body41.prol ]
  %73 = icmp eq i64 %len.addr.2134.ph, 1
  br i1 %73, label %if.end54, label %while.body41

while.body41:                                     ; preds = %while.body41.prol.loopexit, %while.body41
  %len.addr.2134 = phi i64 [ %dec39.1, %while.body41 ], [ %len.addr.2134.unr, %while.body41.prol.loopexit ]
  %n.1133 = phi i32 [ %inc52.1, %while.body41 ], [ %n.1133.unr, %while.body41.prol.loopexit ]
  %idxprom42 = zext i32 %n.1133 to i64
  %arrayidx43 = getelementptr inbounds i8, i8* %in.addr.1.lcssa, i64 %idxprom42
  %74 = load i8, i8* %arrayidx43, align 1, !tbaa !8
  %arrayidx46 = getelementptr inbounds i8, i8* %ecount_buf, i64 %idxprom42
  %75 = load i8, i8* %arrayidx46, align 1, !tbaa !8
  %xor48111 = xor i8 %75, %74
  %arrayidx51 = getelementptr inbounds i8, i8* %out.addr.1.lcssa, i64 %idxprom42
  store i8 %xor48111, i8* %arrayidx51, align 1, !tbaa !8
  %inc52 = add i32 %n.1133, 1
  %dec39.1 = add i64 %len.addr.2134, -2
  %idxprom42.1 = zext i32 %inc52 to i64
  %arrayidx43.1 = getelementptr inbounds i8, i8* %in.addr.1.lcssa, i64 %idxprom42.1
  %76 = load i8, i8* %arrayidx43.1, align 1, !tbaa !8
  %arrayidx46.1 = getelementptr inbounds i8, i8* %ecount_buf, i64 %idxprom42.1
  %77 = load i8, i8* %arrayidx46.1, align 1, !tbaa !8
  %xor48111.1 = xor i8 %77, %76
  %arrayidx51.1 = getelementptr inbounds i8, i8* %out.addr.1.lcssa, i64 %idxprom42.1
  store i8 %xor48111.1, i8* %arrayidx51.1, align 1, !tbaa !8
  %inc52.1 = add i32 %n.1133, 2
  %tobool40.not.1 = icmp eq i64 %dec39.1, 0
  br i1 %tobool40.not.1, label %if.end54, label %while.body41, !llvm.loop !39

if.end54:                                         ; preds = %while.body41.prol.loopexit, %while.body41, %middle.block, %while.end28
  %n.2 = phi i32 [ %n.0.lcssa, %while.end28 ], [ %ind.end145, %middle.block ], [ %inc52.lcssa.unr, %while.body41.prol.loopexit ], [ %inc52.1, %while.body41 ]
  store i32 %n.2, i32* %num, align 4, !tbaa !4
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define internal fastcc void @ctr96_inc(i8* nocapture noundef %counter) unnamed_addr #1 {
entry:
  %arrayidx = getelementptr inbounds i8, i8* %counter, i64 11
  %0 = load i8, i8* %arrayidx, align 1, !tbaa !8
  %conv = zext i8 %0 to i32
  %add = add nuw nsw i32 %conv, 1
  %conv1 = trunc i32 %add to i8
  store i8 %conv1, i8* %arrayidx, align 1, !tbaa !8
  %shr = lshr i32 %add, 8
  %arrayidx.1 = getelementptr inbounds i8, i8* %counter, i64 10
  %1 = load i8, i8* %arrayidx.1, align 1, !tbaa !8
  %conv.1 = zext i8 %1 to i32
  %add.1 = add nuw nsw i32 %shr, %conv.1
  %conv1.1 = trunc i32 %add.1 to i8
  store i8 %conv1.1, i8* %arrayidx.1, align 1, !tbaa !8
  %shr.1 = lshr i32 %add.1, 8
  %arrayidx.2 = getelementptr inbounds i8, i8* %counter, i64 9
  %2 = load i8, i8* %arrayidx.2, align 1, !tbaa !8
  %conv.2 = zext i8 %2 to i32
  %add.2 = add nuw nsw i32 %shr.1, %conv.2
  %conv1.2 = trunc i32 %add.2 to i8
  store i8 %conv1.2, i8* %arrayidx.2, align 1, !tbaa !8
  %shr.2 = lshr i32 %add.2, 8
  %arrayidx.3 = getelementptr inbounds i8, i8* %counter, i64 8
  %3 = load i8, i8* %arrayidx.3, align 1, !tbaa !8
  %conv.3 = zext i8 %3 to i32
  %add.3 = add nuw nsw i32 %shr.2, %conv.3
  %conv1.3 = trunc i32 %add.3 to i8
  store i8 %conv1.3, i8* %arrayidx.3, align 1, !tbaa !8
  %shr.3 = lshr i32 %add.3, 8
  %arrayidx.4 = getelementptr inbounds i8, i8* %counter, i64 7
  %4 = load i8, i8* %arrayidx.4, align 1, !tbaa !8
  %conv.4 = zext i8 %4 to i32
  %add.4 = add nuw nsw i32 %shr.3, %conv.4
  %conv1.4 = trunc i32 %add.4 to i8
  store i8 %conv1.4, i8* %arrayidx.4, align 1, !tbaa !8
  %shr.4 = lshr i32 %add.4, 8
  %arrayidx.5 = getelementptr inbounds i8, i8* %counter, i64 6
  %5 = load i8, i8* %arrayidx.5, align 1, !tbaa !8
  %conv.5 = zext i8 %5 to i32
  %add.5 = add nuw nsw i32 %shr.4, %conv.5
  %conv1.5 = trunc i32 %add.5 to i8
  store i8 %conv1.5, i8* %arrayidx.5, align 1, !tbaa !8
  %shr.5 = lshr i32 %add.5, 8
  %arrayidx.6 = getelementptr inbounds i8, i8* %counter, i64 5
  %6 = load i8, i8* %arrayidx.6, align 1, !tbaa !8
  %conv.6 = zext i8 %6 to i32
  %add.6 = add nuw nsw i32 %shr.5, %conv.6
  %conv1.6 = trunc i32 %add.6 to i8
  store i8 %conv1.6, i8* %arrayidx.6, align 1, !tbaa !8
  %shr.6 = lshr i32 %add.6, 8
  %arrayidx.7 = getelementptr inbounds i8, i8* %counter, i64 4
  %7 = load i8, i8* %arrayidx.7, align 1, !tbaa !8
  %conv.7 = zext i8 %7 to i32
  %add.7 = add nuw nsw i32 %shr.6, %conv.7
  %conv1.7 = trunc i32 %add.7 to i8
  store i8 %conv1.7, i8* %arrayidx.7, align 1, !tbaa !8
  %shr.7 = lshr i32 %add.7, 8
  %arrayidx.8 = getelementptr inbounds i8, i8* %counter, i64 3
  %8 = load i8, i8* %arrayidx.8, align 1, !tbaa !8
  %conv.8 = zext i8 %8 to i32
  %add.8 = add nuw nsw i32 %shr.7, %conv.8
  %conv1.8 = trunc i32 %add.8 to i8
  store i8 %conv1.8, i8* %arrayidx.8, align 1, !tbaa !8
  %shr.8 = lshr i32 %add.8, 8
  %arrayidx.9 = getelementptr inbounds i8, i8* %counter, i64 2
  %9 = load i8, i8* %arrayidx.9, align 1, !tbaa !8
  %conv.9 = zext i8 %9 to i32
  %add.9 = add nuw nsw i32 %shr.8, %conv.9
  %conv1.9 = trunc i32 %add.9 to i8
  store i8 %conv1.9, i8* %arrayidx.9, align 1, !tbaa !8
  %shr.9 = lshr i32 %add.9, 8
  %arrayidx.10 = getelementptr inbounds i8, i8* %counter, i64 1
  %10 = load i8, i8* %arrayidx.10, align 1, !tbaa !8
  %conv.10 = zext i8 %10 to i32
  %add.10 = add nuw nsw i32 %shr.9, %conv.10
  %conv1.10 = trunc i32 %add.10 to i8
  store i8 %conv1.10, i8* %arrayidx.10, align 1, !tbaa !8
  %shr.10 = lshr i32 %add.10, 8
  %11 = load i8, i8* %counter, align 1, !tbaa !8
  %12 = trunc i32 %shr.10 to i8
  %conv1.11 = add i8 %11, %12
  store i8 %conv1.11, i8* %counter, align 1, !tbaa !8
  ret void
}

; Function Attrs: nounwind
declare i8* @memset(i8* noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree noinline norecurse nosync nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nobuiltin nounwind "no-builtins" }
attributes #4 = { nobuiltin "no-builtins" }
attributes #5 = { nounwind readnone }

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
!11 = !{!12, !12, i64 0}
!12 = !{!"long", !6, i64 0}
!13 = distinct !{!13, !10}
!14 = !{!15}
!15 = distinct !{!15, !16}
!16 = distinct !{!16, !"LVerDomain"}
!17 = !{!18}
!18 = distinct !{!18, !16}
!19 = !{!20}
!20 = distinct !{!20, !16}
!21 = !{!15, !18}
!22 = distinct !{!22, !10, !23}
!23 = !{!"llvm.loop.isvectorized", i32 1}
!24 = distinct !{!24, !10, !23}
!25 = distinct !{!25, !10}
!26 = !{i64 2148172254}
!27 = !{i64 2148172476}
!28 = distinct !{!28, !10}
!29 = !{i64 2148172676}
!30 = !{!31}
!31 = distinct !{!31, !32}
!32 = distinct !{!32, !"LVerDomain"}
!33 = !{!34}
!34 = distinct !{!34, !32}
!35 = !{!36}
!36 = distinct !{!36, !32}
!37 = !{!31, !34}
!38 = distinct !{!38, !10, !23}
!39 = distinct !{!39, !10, !23}
