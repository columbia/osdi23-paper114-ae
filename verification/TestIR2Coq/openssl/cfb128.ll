; ModuleID = 'crypto/modes/cfb128.c'
source_filename = "crypto/modes/cfb128.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define void @CRYPTO_cfb128_encrypt(i8* nocapture noundef readonly %in, i8* nocapture noundef writeonly %out, i64 noundef %len, i8* noundef %key, i8* noundef %ivec, i32* nocapture noundef %num, i32 noundef %enc, void (i8*, i8*, i8*)* nocapture noundef readonly %block) local_unnamed_addr #0 {
entry:
  %0 = load i32, i32* %num, align 4, !tbaa !4
  %cmp = icmp slt i32 %0, 0
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %tobool.not = icmp eq i32 %enc, 0
  %tobool64269 = icmp ne i32 %0, 0
  %tobool66270 = icmp ne i64 %len, 0
  %1 = and i1 %tobool64269, %tobool66270
  br i1 %tobool.not, label %while.cond63.preheader, label %while.cond.preheader

while.cond.preheader:                             ; preds = %if.end
  br i1 %1, label %while.body, label %while.cond7.preheader

while.cond63.preheader:                           ; preds = %if.end
  br i1 %1, label %while.body68, label %while.cond83.preheader

while.cond7.preheader:                            ; preds = %while.body, %while.cond.preheader
  %n.0.lcssa = phi i32 [ %0, %while.cond.preheader ], [ %rem, %while.body ]
  %len.addr.0.lcssa = phi i64 [ %len, %while.cond.preheader ], [ %dec, %while.body ]
  %out.addr.0.lcssa = phi i8* [ %out, %while.cond.preheader ], [ %incdec.ptr6, %while.body ]
  %in.addr.0.lcssa = phi i8* [ %in, %while.cond.preheader ], [ %incdec.ptr, %while.body ]
  %cmp8256 = icmp ugt i64 %len.addr.0.lcssa, 15
  br i1 %cmp8256, label %while.body10.peel, label %while.end23

while.body10.peel:                                ; preds = %while.cond7.preheader
  tail call void %block(i8* noundef %ivec, i8* noundef %ivec, i8* noundef %key) #3
  %cmp11254.peel = icmp ult i32 %n.0.lcssa, 16
  br i1 %cmp11254.peel, label %for.body.preheader.peel, label %for.end.peel

for.body.preheader.peel:                          ; preds = %while.body10.peel
  %2 = zext i32 %n.0.lcssa to i64
  %add.ptr.peel = getelementptr inbounds i8, i8* %in.addr.0.lcssa, i64 %2
  %3 = bitcast i8* %add.ptr.peel to i64*
  %4 = load i64, i64* %3, align 1, !tbaa !8
  %add.ptr14.peel = getelementptr inbounds i8, i8* %ivec, i64 %2
  %5 = bitcast i8* %add.ptr14.peel to i64*
  %6 = load i64, i64* %5, align 1, !tbaa !8
  %xor15.peel = xor i64 %6, %4
  store i64 %xor15.peel, i64* %5, align 1, !tbaa !8
  %add.ptr17.peel = getelementptr inbounds i8, i8* %out.addr.0.lcssa, i64 %2
  %7 = bitcast i8* %add.ptr17.peel to i64*
  store i64 %xor15.peel, i64* %7, align 1, !tbaa !8
  %indvars.iv.next.peel = add nuw nsw i64 %2, 8
  %cmp11.peel = icmp ult i32 %n.0.lcssa, 8
  br i1 %cmp11.peel, label %for.body.1.peel, label %for.end.peel, !llvm.loop !10

for.body.1.peel:                                  ; preds = %for.body.preheader.peel
  %add.ptr.1.peel = getelementptr inbounds i8, i8* %in.addr.0.lcssa, i64 %indvars.iv.next.peel
  %8 = bitcast i8* %add.ptr.1.peel to i64*
  %9 = load i64, i64* %8, align 1, !tbaa !8
  %add.ptr14.1.peel = getelementptr inbounds i8, i8* %ivec, i64 %indvars.iv.next.peel
  %10 = bitcast i8* %add.ptr14.1.peel to i64*
  %11 = load i64, i64* %10, align 1, !tbaa !8
  %xor15.1.peel = xor i64 %11, %9
  store i64 %xor15.1.peel, i64* %10, align 1, !tbaa !8
  %add.ptr17.1.peel = getelementptr inbounds i8, i8* %out.addr.0.lcssa, i64 %indvars.iv.next.peel
  %12 = bitcast i8* %add.ptr17.1.peel to i64*
  store i64 %xor15.1.peel, i64* %12, align 1, !tbaa !8
  br label %for.end.peel

for.end.peel:                                     ; preds = %for.body.preheader.peel, %for.body.1.peel, %while.body10.peel
  %sub.peel = add i64 %len.addr.0.lcssa, -16
  %add.ptr21.peel = getelementptr inbounds i8, i8* %out.addr.0.lcssa, i64 16
  %add.ptr22.peel = getelementptr inbounds i8, i8* %in.addr.0.lcssa, i64 16
  %cmp8.peel = icmp ugt i64 %sub.peel, 15
  br i1 %cmp8.peel, label %while.body10.preheader.peel.newph, label %while.end23

while.body10.preheader.peel.newph:                ; preds = %for.end.peel
  %13 = bitcast i8* %ivec to i64*
  %add.ptr14.1 = getelementptr inbounds i8, i8* %ivec, i64 8
  %14 = bitcast i8* %add.ptr14.1 to i64*
  br label %while.body10

while.body:                                       ; preds = %while.cond.preheader, %while.body
  %in.addr.0250 = phi i8* [ %incdec.ptr, %while.body ], [ %in, %while.cond.preheader ]
  %out.addr.0249 = phi i8* [ %incdec.ptr6, %while.body ], [ %out, %while.cond.preheader ]
  %len.addr.0248 = phi i64 [ %dec, %while.body ], [ %len, %while.cond.preheader ]
  %n.0247 = phi i32 [ %rem, %while.body ], [ %0, %while.cond.preheader ]
  %incdec.ptr = getelementptr inbounds i8, i8* %in.addr.0250, i64 1
  %15 = load i8, i8* %in.addr.0250, align 1, !tbaa !12
  %idxprom = zext i32 %n.0247 to i64
  %arrayidx = getelementptr inbounds i8, i8* %ivec, i64 %idxprom
  %16 = load i8, i8* %arrayidx, align 1, !tbaa !12
  %xor244 = xor i8 %16, %15
  store i8 %xor244, i8* %arrayidx, align 1, !tbaa !12
  %incdec.ptr6 = getelementptr inbounds i8, i8* %out.addr.0249, i64 1
  store i8 %xor244, i8* %out.addr.0249, align 1, !tbaa !12
  %dec = add i64 %len.addr.0248, -1
  %add = add i32 %n.0247, 1
  %rem = and i32 %add, 15
  %tobool2 = icmp ne i32 %rem, 0
  %tobool3 = icmp ne i64 %dec, 0
  %17 = select i1 %tobool2, i1 %tobool3, i1 false
  br i1 %17, label %while.body, label %while.cond7.preheader, !llvm.loop !13

while.body10:                                     ; preds = %while.body10.preheader.peel.newph, %while.body10
  %in.addr.1260 = phi i8* [ %add.ptr22, %while.body10 ], [ %add.ptr22.peel, %while.body10.preheader.peel.newph ]
  %out.addr.1259 = phi i8* [ %add.ptr21, %while.body10 ], [ %add.ptr21.peel, %while.body10.preheader.peel.newph ]
  %len.addr.1258 = phi i64 [ %sub, %while.body10 ], [ %sub.peel, %while.body10.preheader.peel.newph ]
  tail call void %block(i8* noundef %ivec, i8* noundef %ivec, i8* noundef %key) #3
  %18 = bitcast i8* %in.addr.1260 to i64*
  %19 = load i64, i64* %18, align 1, !tbaa !8
  %20 = load i64, i64* %13, align 1, !tbaa !8
  %xor15 = xor i64 %20, %19
  store i64 %xor15, i64* %13, align 1, !tbaa !8
  %21 = bitcast i8* %out.addr.1259 to i64*
  store i64 %xor15, i64* %21, align 1, !tbaa !8
  %add.ptr.1 = getelementptr inbounds i8, i8* %in.addr.1260, i64 8
  %22 = bitcast i8* %add.ptr.1 to i64*
  %23 = load i64, i64* %22, align 1, !tbaa !8
  %24 = load i64, i64* %14, align 1, !tbaa !8
  %xor15.1 = xor i64 %24, %23
  store i64 %xor15.1, i64* %14, align 1, !tbaa !8
  %add.ptr17.1 = getelementptr inbounds i8, i8* %out.addr.1259, i64 8
  %25 = bitcast i8* %add.ptr17.1 to i64*
  store i64 %xor15.1, i64* %25, align 1, !tbaa !8
  %sub = add i64 %len.addr.1258, -16
  %add.ptr21 = getelementptr inbounds i8, i8* %out.addr.1259, i64 16
  %add.ptr22 = getelementptr inbounds i8, i8* %in.addr.1260, i64 16
  %cmp8 = icmp ugt i64 %sub, 15
  br i1 %cmp8, label %while.body10, label %while.end23, !llvm.loop !14

while.end23:                                      ; preds = %for.end.peel, %while.body10, %while.cond7.preheader
  %n.1.lcssa = phi i32 [ %n.0.lcssa, %while.cond7.preheader ], [ 0, %while.body10 ], [ 0, %for.end.peel ]
  %len.addr.1.lcssa = phi i64 [ %len.addr.0.lcssa, %while.cond7.preheader ], [ %sub.peel, %for.end.peel ], [ %sub, %while.body10 ]
  %out.addr.1.lcssa = phi i8* [ %out.addr.0.lcssa, %while.cond7.preheader ], [ %add.ptr21.peel, %for.end.peel ], [ %add.ptr21, %while.body10 ]
  %in.addr.1.lcssa = phi i8* [ %in.addr.0.lcssa, %while.cond7.preheader ], [ %add.ptr22.peel, %for.end.peel ], [ %add.ptr22, %while.body10 ]
  %tobool24.not = icmp eq i64 %len.addr.1.lcssa, 0
  br i1 %tobool24.not, label %cleanup, label %if.then25

if.then25:                                        ; preds = %while.end23
  tail call void %block(i8* noundef %ivec, i8* noundef %ivec, i8* noundef %key) #3
  %min.iters.check = icmp ult i64 %len.addr.1.lcssa, 32
  br i1 %min.iters.check, label %while.body29.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %if.then25
  %26 = add i64 %len.addr.1.lcssa, -1
  %27 = trunc i64 %26 to i32
  %28 = xor i32 %n.1.lcssa, -1
  %29 = icmp ult i32 %28, %27
  %30 = icmp ugt i64 %26, 4294967295
  %31 = or i1 %29, %30
  br i1 %31, label %while.body29.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %32 = zext i32 %n.1.lcssa to i64
  %scevgep = getelementptr i8, i8* %ivec, i64 %32
  %33 = add i64 %len.addr.1.lcssa, %32
  %scevgep299 = getelementptr i8, i8* %ivec, i64 %33
  %scevgep300 = getelementptr i8, i8* %out.addr.1.lcssa, i64 %32
  %scevgep301 = getelementptr i8, i8* %out.addr.1.lcssa, i64 %33
  %scevgep302 = getelementptr i8, i8* %in.addr.1.lcssa, i64 %32
  %scevgep303 = getelementptr i8, i8* %in.addr.1.lcssa, i64 %33
  %bound0 = icmp ult i8* %scevgep, %scevgep301
  %bound1 = icmp ult i8* %scevgep300, %scevgep299
  %found.conflict = and i1 %bound0, %bound1
  %bound0304 = icmp ult i8* %scevgep, %scevgep303
  %bound1305 = icmp ult i8* %scevgep302, %scevgep299
  %found.conflict306 = and i1 %bound0304, %bound1305
  %conflict.rdx = or i1 %found.conflict, %found.conflict306
  %bound0307 = icmp ult i8* %scevgep300, %scevgep303
  %bound1308 = icmp ult i8* %scevgep302, %scevgep301
  %found.conflict309 = and i1 %bound0307, %bound1308
  %conflict.rdx310 = or i1 %conflict.rdx, %found.conflict309
  br i1 %conflict.rdx310, label %while.body29.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %len.addr.1.lcssa, -32
  %ind.end = and i64 %len.addr.1.lcssa, 31
  %cast.crd = trunc i64 %n.vec to i32
  %ind.end312 = add i32 %n.1.lcssa, %cast.crd
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
  %offset.idx313 = add i32 %n.1.lcssa, %38
  %39 = zext i32 %offset.idx313 to i64
  %40 = getelementptr inbounds i8, i8* %in.addr.1.lcssa, i64 %39
  %41 = bitcast i8* %40 to <16 x i8>*
  %wide.load = load <16 x i8>, <16 x i8>* %41, align 1, !tbaa !12, !alias.scope !16
  %42 = getelementptr inbounds i8, i8* %40, i64 16
  %43 = bitcast i8* %42 to <16 x i8>*
  %wide.load314 = load <16 x i8>, <16 x i8>* %43, align 1, !tbaa !12, !alias.scope !16
  %44 = getelementptr inbounds i8, i8* %ivec, i64 %39
  %45 = bitcast i8* %44 to <16 x i8>*
  %wide.load315 = load <16 x i8>, <16 x i8>* %45, align 1, !tbaa !12, !alias.scope !19, !noalias !21
  %46 = getelementptr inbounds i8, i8* %44, i64 16
  %47 = bitcast i8* %46 to <16 x i8>*
  %wide.load316 = load <16 x i8>, <16 x i8>* %47, align 1, !tbaa !12, !alias.scope !19, !noalias !21
  %48 = xor <16 x i8> %wide.load315, %wide.load
  %49 = xor <16 x i8> %wide.load316, %wide.load314
  %50 = bitcast i8* %44 to <16 x i8>*
  store <16 x i8> %48, <16 x i8>* %50, align 1, !tbaa !12, !alias.scope !19, !noalias !21
  %51 = bitcast i8* %46 to <16 x i8>*
  store <16 x i8> %49, <16 x i8>* %51, align 1, !tbaa !12, !alias.scope !19, !noalias !21
  %52 = getelementptr inbounds i8, i8* %out.addr.1.lcssa, i64 %39
  %53 = bitcast i8* %52 to <16 x i8>*
  store <16 x i8> %48, <16 x i8>* %53, align 1, !tbaa !12, !alias.scope !23, !noalias !16
  %54 = getelementptr inbounds i8, i8* %52, i64 16
  %55 = bitcast i8* %54 to <16 x i8>*
  store <16 x i8> %49, <16 x i8>* %55, align 1, !tbaa !12, !alias.scope !23, !noalias !16
  %56 = trunc i64 %index to i32
  %57 = or i32 %56, 32
  %offset.idx313.1 = add i32 %n.1.lcssa, %57
  %58 = zext i32 %offset.idx313.1 to i64
  %59 = getelementptr inbounds i8, i8* %in.addr.1.lcssa, i64 %58
  %60 = bitcast i8* %59 to <16 x i8>*
  %wide.load.1 = load <16 x i8>, <16 x i8>* %60, align 1, !tbaa !12, !alias.scope !16
  %61 = getelementptr inbounds i8, i8* %59, i64 16
  %62 = bitcast i8* %61 to <16 x i8>*
  %wide.load314.1 = load <16 x i8>, <16 x i8>* %62, align 1, !tbaa !12, !alias.scope !16
  %63 = getelementptr inbounds i8, i8* %ivec, i64 %58
  %64 = bitcast i8* %63 to <16 x i8>*
  %wide.load315.1 = load <16 x i8>, <16 x i8>* %64, align 1, !tbaa !12, !alias.scope !19, !noalias !21
  %65 = getelementptr inbounds i8, i8* %63, i64 16
  %66 = bitcast i8* %65 to <16 x i8>*
  %wide.load316.1 = load <16 x i8>, <16 x i8>* %66, align 1, !tbaa !12, !alias.scope !19, !noalias !21
  %67 = xor <16 x i8> %wide.load315.1, %wide.load.1
  %68 = xor <16 x i8> %wide.load316.1, %wide.load314.1
  %69 = bitcast i8* %63 to <16 x i8>*
  store <16 x i8> %67, <16 x i8>* %69, align 1, !tbaa !12, !alias.scope !19, !noalias !21
  %70 = bitcast i8* %65 to <16 x i8>*
  store <16 x i8> %68, <16 x i8>* %70, align 1, !tbaa !12, !alias.scope !19, !noalias !21
  %71 = getelementptr inbounds i8, i8* %out.addr.1.lcssa, i64 %58
  %72 = bitcast i8* %71 to <16 x i8>*
  store <16 x i8> %67, <16 x i8>* %72, align 1, !tbaa !12, !alias.scope !23, !noalias !16
  %73 = getelementptr inbounds i8, i8* %71, i64 16
  %74 = bitcast i8* %73 to <16 x i8>*
  store <16 x i8> %68, <16 x i8>* %74, align 1, !tbaa !12, !alias.scope !23, !noalias !16
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
  %offset.idx313.epil = add i32 %n.1.lcssa, %index.unr
  %75 = zext i32 %offset.idx313.epil to i64
  %76 = getelementptr inbounds i8, i8* %in.addr.1.lcssa, i64 %75
  %77 = bitcast i8* %76 to <16 x i8>*
  %wide.load.epil = load <16 x i8>, <16 x i8>* %77, align 1, !tbaa !12, !alias.scope !16
  %78 = getelementptr inbounds i8, i8* %76, i64 16
  %79 = bitcast i8* %78 to <16 x i8>*
  %wide.load314.epil = load <16 x i8>, <16 x i8>* %79, align 1, !tbaa !12, !alias.scope !16
  %80 = getelementptr inbounds i8, i8* %ivec, i64 %75
  %81 = bitcast i8* %80 to <16 x i8>*
  %wide.load315.epil = load <16 x i8>, <16 x i8>* %81, align 1, !tbaa !12, !alias.scope !19, !noalias !21
  %82 = getelementptr inbounds i8, i8* %80, i64 16
  %83 = bitcast i8* %82 to <16 x i8>*
  %wide.load316.epil = load <16 x i8>, <16 x i8>* %83, align 1, !tbaa !12, !alias.scope !19, !noalias !21
  %84 = xor <16 x i8> %wide.load315.epil, %wide.load.epil
  %85 = xor <16 x i8> %wide.load316.epil, %wide.load314.epil
  %86 = bitcast i8* %80 to <16 x i8>*
  store <16 x i8> %84, <16 x i8>* %86, align 1, !tbaa !12, !alias.scope !19, !noalias !21
  %87 = bitcast i8* %82 to <16 x i8>*
  store <16 x i8> %85, <16 x i8>* %87, align 1, !tbaa !12, !alias.scope !19, !noalias !21
  %88 = getelementptr inbounds i8, i8* %out.addr.1.lcssa, i64 %75
  %89 = bitcast i8* %88 to <16 x i8>*
  store <16 x i8> %84, <16 x i8>* %89, align 1, !tbaa !12, !alias.scope !23, !noalias !16
  %90 = getelementptr inbounds i8, i8* %88, i64 16
  %91 = bitcast i8* %90 to <16 x i8>*
  store <16 x i8> %85, <16 x i8>* %91, align 1, !tbaa !12, !alias.scope !23, !noalias !16
  br label %middle.block

middle.block:                                     ; preds = %middle.block.unr-lcssa, %vector.body.epil
  %cmp.n = icmp eq i64 %len.addr.1.lcssa, %n.vec
  br i1 %cmp.n, label %cleanup, label %while.body29.preheader

while.body29.preheader:                           ; preds = %vector.memcheck, %vector.scevcheck, %if.then25, %middle.block
  %len.addr.2267.ph = phi i64 [ %len.addr.1.lcssa, %vector.memcheck ], [ %len.addr.1.lcssa, %vector.scevcheck ], [ %len.addr.1.lcssa, %if.then25 ], [ %ind.end, %middle.block ]
  %n.3266.ph = phi i32 [ %n.1.lcssa, %vector.memcheck ], [ %n.1.lcssa, %vector.scevcheck ], [ %n.1.lcssa, %if.then25 ], [ %ind.end312, %middle.block ]
  %xtraiter359 = and i64 %len.addr.2267.ph, 1
  %lcmp.mod360.not = icmp eq i64 %xtraiter359, 0
  br i1 %lcmp.mod360.not, label %while.body29.prol.loopexit, label %while.body29.prol

while.body29.prol:                                ; preds = %while.body29.preheader
  %dec27.prol = add i64 %len.addr.2267.ph, -1
  %idxprom30.prol = zext i32 %n.3266.ph to i64
  %arrayidx31.prol = getelementptr inbounds i8, i8* %in.addr.1.lcssa, i64 %idxprom30.prol
  %92 = load i8, i8* %arrayidx31.prol, align 1, !tbaa !12
  %arrayidx34.prol = getelementptr inbounds i8, i8* %ivec, i64 %idxprom30.prol
  %93 = load i8, i8* %arrayidx34.prol, align 1, !tbaa !12
  %xor36243.prol = xor i8 %93, %92
  store i8 %xor36243.prol, i8* %arrayidx34.prol, align 1, !tbaa !12
  %arrayidx39.prol = getelementptr inbounds i8, i8* %out.addr.1.lcssa, i64 %idxprom30.prol
  store i8 %xor36243.prol, i8* %arrayidx39.prol, align 1, !tbaa !12
  %inc.prol = add i32 %n.3266.ph, 1
  br label %while.body29.prol.loopexit

while.body29.prol.loopexit:                       ; preds = %while.body29.prol, %while.body29.preheader
  %inc.lcssa.unr = phi i32 [ undef, %while.body29.preheader ], [ %inc.prol, %while.body29.prol ]
  %len.addr.2267.unr = phi i64 [ %len.addr.2267.ph, %while.body29.preheader ], [ %dec27.prol, %while.body29.prol ]
  %n.3266.unr = phi i32 [ %n.3266.ph, %while.body29.preheader ], [ %inc.prol, %while.body29.prol ]
  %94 = icmp eq i64 %len.addr.2267.ph, 1
  br i1 %94, label %cleanup, label %while.body29

while.body29:                                     ; preds = %while.body29.prol.loopexit, %while.body29
  %len.addr.2267 = phi i64 [ %dec27.1, %while.body29 ], [ %len.addr.2267.unr, %while.body29.prol.loopexit ]
  %n.3266 = phi i32 [ %inc.1, %while.body29 ], [ %n.3266.unr, %while.body29.prol.loopexit ]
  %idxprom30 = zext i32 %n.3266 to i64
  %arrayidx31 = getelementptr inbounds i8, i8* %in.addr.1.lcssa, i64 %idxprom30
  %95 = load i8, i8* %arrayidx31, align 1, !tbaa !12
  %arrayidx34 = getelementptr inbounds i8, i8* %ivec, i64 %idxprom30
  %96 = load i8, i8* %arrayidx34, align 1, !tbaa !12
  %xor36243 = xor i8 %96, %95
  store i8 %xor36243, i8* %arrayidx34, align 1, !tbaa !12
  %arrayidx39 = getelementptr inbounds i8, i8* %out.addr.1.lcssa, i64 %idxprom30
  store i8 %xor36243, i8* %arrayidx39, align 1, !tbaa !12
  %inc = add i32 %n.3266, 1
  %dec27.1 = add i64 %len.addr.2267, -2
  %idxprom30.1 = zext i32 %inc to i64
  %arrayidx31.1 = getelementptr inbounds i8, i8* %in.addr.1.lcssa, i64 %idxprom30.1
  %97 = load i8, i8* %arrayidx31.1, align 1, !tbaa !12
  %arrayidx34.1 = getelementptr inbounds i8, i8* %ivec, i64 %idxprom30.1
  %98 = load i8, i8* %arrayidx34.1, align 1, !tbaa !12
  %xor36243.1 = xor i8 %98, %97
  store i8 %xor36243.1, i8* %arrayidx34.1, align 1, !tbaa !12
  %arrayidx39.1 = getelementptr inbounds i8, i8* %out.addr.1.lcssa, i64 %idxprom30.1
  store i8 %xor36243.1, i8* %arrayidx39.1, align 1, !tbaa !12
  %inc.1 = add i32 %n.3266, 2
  %tobool28.not.1 = icmp eq i64 %dec27.1, 0
  br i1 %tobool28.not.1, label %cleanup, label %while.body29, !llvm.loop !26

while.cond83.preheader:                           ; preds = %while.body68, %while.cond63.preheader
  %n.5.lcssa = phi i32 [ %0, %while.cond63.preheader ], [ %rem81, %while.body68 ]
  %len.addr.3.lcssa = phi i64 [ %len, %while.cond63.preheader ], [ %dec79, %while.body68 ]
  %out.addr.2.lcssa = phi i8* [ %out, %while.cond63.preheader ], [ %incdec.ptr76, %while.body68 ]
  %in.addr.2.lcssa = phi i8* [ %in, %while.cond63.preheader ], [ %incdec.ptr72, %while.body68 ]
  %cmp84281 = icmp ugt i64 %len.addr.3.lcssa, 15
  br i1 %cmp84281, label %while.body86.peel, label %while.end108

while.body86.peel:                                ; preds = %while.cond83.preheader
  tail call void %block(i8* noundef %ivec, i8* noundef %ivec, i8* noundef %key) #3
  %cmp88279.peel = icmp ult i32 %n.5.lcssa, 16
  br i1 %cmp88279.peel, label %for.body90.preheader.peel, label %for.end104.peel

for.body90.preheader.peel:                        ; preds = %while.body86.peel
  %99 = zext i32 %n.5.lcssa to i64
  %add.ptr92.peel = getelementptr inbounds i8, i8* %in.addr.2.lcssa, i64 %99
  %100 = bitcast i8* %add.ptr92.peel to i64*
  %101 = load i64, i64* %100, align 1, !tbaa !8
  %add.ptr94.peel = getelementptr inbounds i8, i8* %ivec, i64 %99
  %102 = bitcast i8* %add.ptr94.peel to i64*
  %103 = load i64, i64* %102, align 1, !tbaa !8
  %xor95.peel = xor i64 %103, %101
  %add.ptr97.peel = getelementptr inbounds i8, i8* %out.addr.2.lcssa, i64 %99
  %104 = bitcast i8* %add.ptr97.peel to i64*
  store i64 %xor95.peel, i64* %104, align 1, !tbaa !8
  store i64 %101, i64* %102, align 1, !tbaa !8
  %indvars.iv.next296.peel = add nuw nsw i64 %99, 8
  %cmp88.peel = icmp ult i32 %n.5.lcssa, 8
  br i1 %cmp88.peel, label %for.body90.1.peel, label %for.end104.peel, !llvm.loop !27

for.body90.1.peel:                                ; preds = %for.body90.preheader.peel
  %add.ptr92.1.peel = getelementptr inbounds i8, i8* %in.addr.2.lcssa, i64 %indvars.iv.next296.peel
  %105 = bitcast i8* %add.ptr92.1.peel to i64*
  %106 = load i64, i64* %105, align 1, !tbaa !8
  %add.ptr94.1.peel = getelementptr inbounds i8, i8* %ivec, i64 %indvars.iv.next296.peel
  %107 = bitcast i8* %add.ptr94.1.peel to i64*
  %108 = load i64, i64* %107, align 1, !tbaa !8
  %xor95.1.peel = xor i64 %108, %106
  %add.ptr97.1.peel = getelementptr inbounds i8, i8* %out.addr.2.lcssa, i64 %indvars.iv.next296.peel
  %109 = bitcast i8* %add.ptr97.1.peel to i64*
  store i64 %xor95.1.peel, i64* %109, align 1, !tbaa !8
  store i64 %106, i64* %107, align 1, !tbaa !8
  br label %for.end104.peel

for.end104.peel:                                  ; preds = %for.body90.preheader.peel, %for.body90.1.peel, %while.body86.peel
  %sub105.peel = add i64 %len.addr.3.lcssa, -16
  %add.ptr106.peel = getelementptr inbounds i8, i8* %out.addr.2.lcssa, i64 16
  %add.ptr107.peel = getelementptr inbounds i8, i8* %in.addr.2.lcssa, i64 16
  %cmp84.peel = icmp ugt i64 %sub105.peel, 15
  br i1 %cmp84.peel, label %while.body86.preheader.peel.newph, label %while.end108

while.body86.preheader.peel.newph:                ; preds = %for.end104.peel
  %110 = bitcast i8* %ivec to i64*
  %add.ptr94.1 = getelementptr inbounds i8, i8* %ivec, i64 8
  %111 = bitcast i8* %add.ptr94.1 to i64*
  br label %while.body86

while.body68:                                     ; preds = %while.cond63.preheader, %while.body68
  %in.addr.2274 = phi i8* [ %incdec.ptr72, %while.body68 ], [ %in, %while.cond63.preheader ]
  %out.addr.2273 = phi i8* [ %incdec.ptr76, %while.body68 ], [ %out, %while.cond63.preheader ]
  %len.addr.3272 = phi i64 [ %dec79, %while.body68 ], [ %len, %while.cond63.preheader ]
  %n.5271 = phi i32 [ %rem81, %while.body68 ], [ %0, %while.cond63.preheader ]
  %idxprom69 = zext i32 %n.5271 to i64
  %arrayidx70 = getelementptr inbounds i8, i8* %ivec, i64 %idxprom69
  %112 = load i8, i8* %arrayidx70, align 1, !tbaa !12
  %incdec.ptr72 = getelementptr inbounds i8, i8* %in.addr.2274, i64 1
  %113 = load i8, i8* %in.addr.2274, align 1, !tbaa !12
  %xor74242 = xor i8 %113, %112
  %incdec.ptr76 = getelementptr inbounds i8, i8* %out.addr.2273, i64 1
  store i8 %xor74242, i8* %out.addr.2273, align 1, !tbaa !12
  store i8 %113, i8* %arrayidx70, align 1, !tbaa !12
  %dec79 = add i64 %len.addr.3272, -1
  %add80 = add i32 %n.5271, 1
  %rem81 = and i32 %add80, 15
  %tobool64 = icmp ne i32 %rem81, 0
  %tobool66 = icmp ne i64 %dec79, 0
  %114 = select i1 %tobool64, i1 %tobool66, i1 false
  br i1 %114, label %while.body68, label %while.cond83.preheader, !llvm.loop !28

while.body86:                                     ; preds = %while.body86.preheader.peel.newph, %while.body86
  %in.addr.3285 = phi i8* [ %add.ptr107, %while.body86 ], [ %add.ptr107.peel, %while.body86.preheader.peel.newph ]
  %out.addr.3284 = phi i8* [ %add.ptr106, %while.body86 ], [ %add.ptr106.peel, %while.body86.preheader.peel.newph ]
  %len.addr.4283 = phi i64 [ %sub105, %while.body86 ], [ %sub105.peel, %while.body86.preheader.peel.newph ]
  tail call void %block(i8* noundef %ivec, i8* noundef %ivec, i8* noundef %key) #3
  %115 = bitcast i8* %in.addr.3285 to i64*
  %116 = load i64, i64* %115, align 1, !tbaa !8
  %117 = load i64, i64* %110, align 1, !tbaa !8
  %xor95 = xor i64 %117, %116
  %118 = bitcast i8* %out.addr.3284 to i64*
  store i64 %xor95, i64* %118, align 1, !tbaa !8
  store i64 %116, i64* %110, align 1, !tbaa !8
  %add.ptr92.1 = getelementptr inbounds i8, i8* %in.addr.3285, i64 8
  %119 = bitcast i8* %add.ptr92.1 to i64*
  %120 = load i64, i64* %119, align 1, !tbaa !8
  %121 = load i64, i64* %111, align 1, !tbaa !8
  %xor95.1 = xor i64 %121, %120
  %add.ptr97.1 = getelementptr inbounds i8, i8* %out.addr.3284, i64 8
  %122 = bitcast i8* %add.ptr97.1 to i64*
  store i64 %xor95.1, i64* %122, align 1, !tbaa !8
  store i64 %120, i64* %111, align 1, !tbaa !8
  %sub105 = add i64 %len.addr.4283, -16
  %add.ptr106 = getelementptr inbounds i8, i8* %out.addr.3284, i64 16
  %add.ptr107 = getelementptr inbounds i8, i8* %in.addr.3285, i64 16
  %cmp84 = icmp ugt i64 %sub105, 15
  br i1 %cmp84, label %while.body86, label %while.end108, !llvm.loop !29

while.end108:                                     ; preds = %for.end104.peel, %while.body86, %while.cond83.preheader
  %n.6.lcssa = phi i32 [ %n.5.lcssa, %while.cond83.preheader ], [ 0, %while.body86 ], [ 0, %for.end104.peel ]
  %len.addr.4.lcssa = phi i64 [ %len.addr.3.lcssa, %while.cond83.preheader ], [ %sub105.peel, %for.end104.peel ], [ %sub105, %while.body86 ]
  %out.addr.3.lcssa = phi i8* [ %out.addr.2.lcssa, %while.cond83.preheader ], [ %add.ptr106.peel, %for.end104.peel ], [ %add.ptr106, %while.body86 ]
  %in.addr.3.lcssa = phi i8* [ %in.addr.2.lcssa, %while.cond83.preheader ], [ %add.ptr107.peel, %for.end104.peel ], [ %add.ptr107, %while.body86 ]
  %tobool109.not = icmp eq i64 %len.addr.4.lcssa, 0
  br i1 %tobool109.not, label %cleanup, label %if.then110

if.then110:                                       ; preds = %while.end108
  tail call void %block(i8* noundef %ivec, i8* noundef %ivec, i8* noundef %key) #3
  %min.iters.check339 = icmp ult i64 %len.addr.4.lcssa, 32
  br i1 %min.iters.check339, label %while.body114.preheader, label %vector.scevcheck317

vector.scevcheck317:                              ; preds = %if.then110
  %123 = add i64 %len.addr.4.lcssa, -1
  %124 = trunc i64 %123 to i32
  %125 = xor i32 %n.6.lcssa, -1
  %126 = icmp ult i32 %125, %124
  %127 = icmp ugt i64 %123, 4294967295
  %128 = or i1 %126, %127
  br i1 %128, label %while.body114.preheader, label %vector.memcheck318

vector.memcheck318:                               ; preds = %vector.scevcheck317
  %129 = zext i32 %n.6.lcssa to i64
  %scevgep319 = getelementptr i8, i8* %out.addr.3.lcssa, i64 %129
  %130 = add i64 %len.addr.4.lcssa, %129
  %scevgep320 = getelementptr i8, i8* %out.addr.3.lcssa, i64 %130
  %scevgep321 = getelementptr i8, i8* %ivec, i64 %129
  %scevgep322 = getelementptr i8, i8* %ivec, i64 %130
  %scevgep323 = getelementptr i8, i8* %in.addr.3.lcssa, i64 %129
  %scevgep324 = getelementptr i8, i8* %in.addr.3.lcssa, i64 %130
  %bound0325 = icmp ult i8* %scevgep319, %scevgep322
  %bound1326 = icmp ult i8* %scevgep321, %scevgep320
  %found.conflict327 = and i1 %bound0325, %bound1326
  %bound0328 = icmp ult i8* %scevgep319, %scevgep324
  %bound1329 = icmp ult i8* %scevgep323, %scevgep320
  %found.conflict330 = and i1 %bound0328, %bound1329
  %conflict.rdx331 = or i1 %found.conflict327, %found.conflict330
  %bound0332 = icmp ult i8* %scevgep321, %scevgep324
  %bound1333 = icmp ult i8* %scevgep323, %scevgep322
  %found.conflict334 = and i1 %bound0332, %bound1333
  %conflict.rdx335 = or i1 %conflict.rdx331, %found.conflict334
  br i1 %conflict.rdx335, label %while.body114.preheader, label %vector.ph340

vector.ph340:                                     ; preds = %vector.memcheck318
  %n.vec342 = and i64 %len.addr.4.lcssa, -32
  %ind.end344 = and i64 %len.addr.4.lcssa, 31
  %cast.crd346 = trunc i64 %n.vec342 to i32
  %ind.end347 = add i32 %n.6.lcssa, %cast.crd346
  %131 = add i64 %n.vec342, -32
  %132 = lshr exact i64 %131, 5
  %133 = add nuw nsw i64 %132, 1
  %xtraiter362 = and i64 %133, 1
  %134 = icmp eq i64 %131, 0
  br i1 %134, label %middle.block336.unr-lcssa, label %vector.ph340.new

vector.ph340.new:                                 ; preds = %vector.ph340
  %unroll_iter364 = and i64 %133, 1152921504606846974
  br label %vector.body338

vector.body338:                                   ; preds = %vector.body338, %vector.ph340.new
  %index349 = phi i64 [ 0, %vector.ph340.new ], [ %index.next356.1, %vector.body338 ]
  %niter365 = phi i64 [ 0, %vector.ph340.new ], [ %niter365.next.1, %vector.body338 ]
  %135 = trunc i64 %index349 to i32
  %offset.idx351 = add i32 %n.6.lcssa, %135
  %136 = zext i32 %offset.idx351 to i64
  %137 = getelementptr inbounds i8, i8* %ivec, i64 %136
  %138 = bitcast i8* %137 to <16 x i8>*
  %wide.load352 = load <16 x i8>, <16 x i8>* %138, align 1, !tbaa !12, !alias.scope !30, !noalias !33
  %139 = getelementptr inbounds i8, i8* %137, i64 16
  %140 = bitcast i8* %139 to <16 x i8>*
  %wide.load353 = load <16 x i8>, <16 x i8>* %140, align 1, !tbaa !12, !alias.scope !30, !noalias !33
  %141 = getelementptr inbounds i8, i8* %in.addr.3.lcssa, i64 %136
  %142 = bitcast i8* %141 to <16 x i8>*
  %wide.load354 = load <16 x i8>, <16 x i8>* %142, align 1, !tbaa !12, !alias.scope !33
  %143 = getelementptr inbounds i8, i8* %141, i64 16
  %144 = bitcast i8* %143 to <16 x i8>*
  %wide.load355 = load <16 x i8>, <16 x i8>* %144, align 1, !tbaa !12, !alias.scope !33
  %145 = xor <16 x i8> %wide.load354, %wide.load352
  %146 = xor <16 x i8> %wide.load355, %wide.load353
  %147 = getelementptr inbounds i8, i8* %out.addr.3.lcssa, i64 %136
  %148 = bitcast i8* %147 to <16 x i8>*
  store <16 x i8> %145, <16 x i8>* %148, align 1, !tbaa !12, !alias.scope !35, !noalias !37
  %149 = getelementptr inbounds i8, i8* %147, i64 16
  %150 = bitcast i8* %149 to <16 x i8>*
  store <16 x i8> %146, <16 x i8>* %150, align 1, !tbaa !12, !alias.scope !35, !noalias !37
  %151 = bitcast i8* %137 to <16 x i8>*
  store <16 x i8> %wide.load354, <16 x i8>* %151, align 1, !tbaa !12, !alias.scope !30, !noalias !33
  %152 = bitcast i8* %139 to <16 x i8>*
  store <16 x i8> %wide.load355, <16 x i8>* %152, align 1, !tbaa !12, !alias.scope !30, !noalias !33
  %153 = trunc i64 %index349 to i32
  %154 = or i32 %153, 32
  %offset.idx351.1 = add i32 %n.6.lcssa, %154
  %155 = zext i32 %offset.idx351.1 to i64
  %156 = getelementptr inbounds i8, i8* %ivec, i64 %155
  %157 = bitcast i8* %156 to <16 x i8>*
  %wide.load352.1 = load <16 x i8>, <16 x i8>* %157, align 1, !tbaa !12, !alias.scope !30, !noalias !33
  %158 = getelementptr inbounds i8, i8* %156, i64 16
  %159 = bitcast i8* %158 to <16 x i8>*
  %wide.load353.1 = load <16 x i8>, <16 x i8>* %159, align 1, !tbaa !12, !alias.scope !30, !noalias !33
  %160 = getelementptr inbounds i8, i8* %in.addr.3.lcssa, i64 %155
  %161 = bitcast i8* %160 to <16 x i8>*
  %wide.load354.1 = load <16 x i8>, <16 x i8>* %161, align 1, !tbaa !12, !alias.scope !33
  %162 = getelementptr inbounds i8, i8* %160, i64 16
  %163 = bitcast i8* %162 to <16 x i8>*
  %wide.load355.1 = load <16 x i8>, <16 x i8>* %163, align 1, !tbaa !12, !alias.scope !33
  %164 = xor <16 x i8> %wide.load354.1, %wide.load352.1
  %165 = xor <16 x i8> %wide.load355.1, %wide.load353.1
  %166 = getelementptr inbounds i8, i8* %out.addr.3.lcssa, i64 %155
  %167 = bitcast i8* %166 to <16 x i8>*
  store <16 x i8> %164, <16 x i8>* %167, align 1, !tbaa !12, !alias.scope !35, !noalias !37
  %168 = getelementptr inbounds i8, i8* %166, i64 16
  %169 = bitcast i8* %168 to <16 x i8>*
  store <16 x i8> %165, <16 x i8>* %169, align 1, !tbaa !12, !alias.scope !35, !noalias !37
  %170 = bitcast i8* %156 to <16 x i8>*
  store <16 x i8> %wide.load354.1, <16 x i8>* %170, align 1, !tbaa !12, !alias.scope !30, !noalias !33
  %171 = bitcast i8* %158 to <16 x i8>*
  store <16 x i8> %wide.load355.1, <16 x i8>* %171, align 1, !tbaa !12, !alias.scope !30, !noalias !33
  %index.next356.1 = add nuw i64 %index349, 64
  %niter365.next.1 = add i64 %niter365, 2
  %niter365.ncmp.1 = icmp eq i64 %niter365.next.1, %unroll_iter364
  br i1 %niter365.ncmp.1, label %middle.block336.unr-lcssa.loopexit, label %vector.body338, !llvm.loop !38

middle.block336.unr-lcssa.loopexit:               ; preds = %vector.body338
  %phi.cast368 = trunc i64 %index.next356.1 to i32
  br label %middle.block336.unr-lcssa

middle.block336.unr-lcssa:                        ; preds = %middle.block336.unr-lcssa.loopexit, %vector.ph340
  %index349.unr = phi i32 [ 0, %vector.ph340 ], [ %phi.cast368, %middle.block336.unr-lcssa.loopexit ]
  %lcmp.mod363.not = icmp eq i64 %xtraiter362, 0
  br i1 %lcmp.mod363.not, label %middle.block336, label %vector.body338.epil

vector.body338.epil:                              ; preds = %middle.block336.unr-lcssa
  %offset.idx351.epil = add i32 %n.6.lcssa, %index349.unr
  %172 = zext i32 %offset.idx351.epil to i64
  %173 = getelementptr inbounds i8, i8* %ivec, i64 %172
  %174 = bitcast i8* %173 to <16 x i8>*
  %wide.load352.epil = load <16 x i8>, <16 x i8>* %174, align 1, !tbaa !12, !alias.scope !30, !noalias !33
  %175 = getelementptr inbounds i8, i8* %173, i64 16
  %176 = bitcast i8* %175 to <16 x i8>*
  %wide.load353.epil = load <16 x i8>, <16 x i8>* %176, align 1, !tbaa !12, !alias.scope !30, !noalias !33
  %177 = getelementptr inbounds i8, i8* %in.addr.3.lcssa, i64 %172
  %178 = bitcast i8* %177 to <16 x i8>*
  %wide.load354.epil = load <16 x i8>, <16 x i8>* %178, align 1, !tbaa !12, !alias.scope !33
  %179 = getelementptr inbounds i8, i8* %177, i64 16
  %180 = bitcast i8* %179 to <16 x i8>*
  %wide.load355.epil = load <16 x i8>, <16 x i8>* %180, align 1, !tbaa !12, !alias.scope !33
  %181 = xor <16 x i8> %wide.load354.epil, %wide.load352.epil
  %182 = xor <16 x i8> %wide.load355.epil, %wide.load353.epil
  %183 = getelementptr inbounds i8, i8* %out.addr.3.lcssa, i64 %172
  %184 = bitcast i8* %183 to <16 x i8>*
  store <16 x i8> %181, <16 x i8>* %184, align 1, !tbaa !12, !alias.scope !35, !noalias !37
  %185 = getelementptr inbounds i8, i8* %183, i64 16
  %186 = bitcast i8* %185 to <16 x i8>*
  store <16 x i8> %182, <16 x i8>* %186, align 1, !tbaa !12, !alias.scope !35, !noalias !37
  %187 = bitcast i8* %173 to <16 x i8>*
  store <16 x i8> %wide.load354.epil, <16 x i8>* %187, align 1, !tbaa !12, !alias.scope !30, !noalias !33
  %188 = bitcast i8* %175 to <16 x i8>*
  store <16 x i8> %wide.load355.epil, <16 x i8>* %188, align 1, !tbaa !12, !alias.scope !30, !noalias !33
  br label %middle.block336

middle.block336:                                  ; preds = %middle.block336.unr-lcssa, %vector.body338.epil
  %cmp.n348 = icmp eq i64 %len.addr.4.lcssa, %n.vec342
  br i1 %cmp.n348, label %cleanup, label %while.body114.preheader

while.body114.preheader:                          ; preds = %vector.memcheck318, %vector.scevcheck317, %if.then110, %middle.block336
  %len.addr.5292.ph = phi i64 [ %len.addr.4.lcssa, %vector.memcheck318 ], [ %len.addr.4.lcssa, %vector.scevcheck317 ], [ %len.addr.4.lcssa, %if.then110 ], [ %ind.end344, %middle.block336 ]
  %n.8291.ph = phi i32 [ %n.6.lcssa, %vector.memcheck318 ], [ %n.6.lcssa, %vector.scevcheck317 ], [ %n.6.lcssa, %if.then110 ], [ %ind.end347, %middle.block336 ]
  %xtraiter366 = and i64 %len.addr.5292.ph, 1
  %lcmp.mod367.not = icmp eq i64 %xtraiter366, 0
  br i1 %lcmp.mod367.not, label %while.body114.prol.loopexit, label %while.body114.prol

while.body114.prol:                               ; preds = %while.body114.preheader
  %dec112.prol = add i64 %len.addr.5292.ph, -1
  %idxprom116.prol = zext i32 %n.8291.ph to i64
  %arrayidx117.prol = getelementptr inbounds i8, i8* %ivec, i64 %idxprom116.prol
  %189 = load i8, i8* %arrayidx117.prol, align 1, !tbaa !12
  %arrayidx120.prol = getelementptr inbounds i8, i8* %in.addr.3.lcssa, i64 %idxprom116.prol
  %190 = load i8, i8* %arrayidx120.prol, align 1, !tbaa !12
  %xor122241.prol = xor i8 %190, %189
  %arrayidx125.prol = getelementptr inbounds i8, i8* %out.addr.3.lcssa, i64 %idxprom116.prol
  store i8 %xor122241.prol, i8* %arrayidx125.prol, align 1, !tbaa !12
  store i8 %190, i8* %arrayidx117.prol, align 1, !tbaa !12
  %inc128.prol = add i32 %n.8291.ph, 1
  br label %while.body114.prol.loopexit

while.body114.prol.loopexit:                      ; preds = %while.body114.prol, %while.body114.preheader
  %inc128.lcssa.unr = phi i32 [ undef, %while.body114.preheader ], [ %inc128.prol, %while.body114.prol ]
  %len.addr.5292.unr = phi i64 [ %len.addr.5292.ph, %while.body114.preheader ], [ %dec112.prol, %while.body114.prol ]
  %n.8291.unr = phi i32 [ %n.8291.ph, %while.body114.preheader ], [ %inc128.prol, %while.body114.prol ]
  %191 = icmp eq i64 %len.addr.5292.ph, 1
  br i1 %191, label %cleanup, label %while.body114

while.body114:                                    ; preds = %while.body114.prol.loopexit, %while.body114
  %len.addr.5292 = phi i64 [ %dec112.1, %while.body114 ], [ %len.addr.5292.unr, %while.body114.prol.loopexit ]
  %n.8291 = phi i32 [ %inc128.1, %while.body114 ], [ %n.8291.unr, %while.body114.prol.loopexit ]
  %idxprom116 = zext i32 %n.8291 to i64
  %arrayidx117 = getelementptr inbounds i8, i8* %ivec, i64 %idxprom116
  %192 = load i8, i8* %arrayidx117, align 1, !tbaa !12
  %arrayidx120 = getelementptr inbounds i8, i8* %in.addr.3.lcssa, i64 %idxprom116
  %193 = load i8, i8* %arrayidx120, align 1, !tbaa !12
  %xor122241 = xor i8 %193, %192
  %arrayidx125 = getelementptr inbounds i8, i8* %out.addr.3.lcssa, i64 %idxprom116
  store i8 %xor122241, i8* %arrayidx125, align 1, !tbaa !12
  store i8 %193, i8* %arrayidx117, align 1, !tbaa !12
  %inc128 = add i32 %n.8291, 1
  %dec112.1 = add i64 %len.addr.5292, -2
  %idxprom116.1 = zext i32 %inc128 to i64
  %arrayidx117.1 = getelementptr inbounds i8, i8* %ivec, i64 %idxprom116.1
  %194 = load i8, i8* %arrayidx117.1, align 1, !tbaa !12
  %arrayidx120.1 = getelementptr inbounds i8, i8* %in.addr.3.lcssa, i64 %idxprom116.1
  %195 = load i8, i8* %arrayidx120.1, align 1, !tbaa !12
  %xor122241.1 = xor i8 %195, %194
  %arrayidx125.1 = getelementptr inbounds i8, i8* %out.addr.3.lcssa, i64 %idxprom116.1
  store i8 %xor122241.1, i8* %arrayidx125.1, align 1, !tbaa !12
  store i8 %195, i8* %arrayidx117.1, align 1, !tbaa !12
  %inc128.1 = add i32 %n.8291, 2
  %tobool113.not.1 = icmp eq i64 %dec112.1, 0
  br i1 %tobool113.not.1, label %cleanup, label %while.body114, !llvm.loop !39

cleanup:                                          ; preds = %while.body29.prol.loopexit, %while.body29, %while.body114.prol.loopexit, %while.body114, %middle.block, %middle.block336, %while.end108, %while.end23, %entry
  %n.9.sink = phi i32 [ -1, %entry ], [ %n.1.lcssa, %while.end23 ], [ %n.6.lcssa, %while.end108 ], [ %ind.end347, %middle.block336 ], [ %ind.end312, %middle.block ], [ %inc128.lcssa.unr, %while.body114.prol.loopexit ], [ %inc128.1, %while.body114 ], [ %inc.lcssa.unr, %while.body29.prol.loopexit ], [ %inc.1, %while.body29 ]
  store i32 %n.9.sink, i32* %num, align 4, !tbaa !4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: noinline nounwind uwtable
define void @CRYPTO_cfb128_1_encrypt(i8* nocapture noundef readonly %in, i8* nocapture noundef %out, i64 noundef %bits, i8* noundef %key, i8* noundef %ivec, i32* nocapture noundef readnone %num, i32 noundef %enc, void (i8*, i8*, i8*)* nocapture noundef readonly %block) local_unnamed_addr #0 {
entry:
  %c = alloca [1 x i8], align 1
  %d = alloca [1 x i8], align 1
  %0 = getelementptr inbounds [1 x i8], [1 x i8]* %c, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %0) #4
  %1 = getelementptr inbounds [1 x i8], [1 x i8]* %d, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %1) #4
  %cmp29.not = icmp eq i64 %bits, 0
  br i1 %cmp29.not, label %for.end, label %for.body

for.body:                                         ; preds = %entry, %for.body
  %n.030 = phi i64 [ %inc, %for.body ], [ 0, %entry ]
  %div = lshr i64 %n.030, 3
  %arrayidx = getelementptr inbounds i8, i8* %in, i64 %div
  %2 = load i8, i8* %arrayidx, align 1, !tbaa !12
  %conv = zext i8 %2 to i32
  %3 = trunc i64 %n.030 to i32
  %4 = and i32 %3, 7
  %sh_prom = xor i32 %4, 7
  %shl = shl nuw i32 1, %sh_prom
  %and = and i32 %shl, %conv
  %tobool.not = icmp eq i32 %and, 0
  %conv1 = select i1 %tobool.not, i8 0, i8 -128
  store i8 %conv1, i8* %0, align 1, !tbaa !12
  call fastcc void @cfbr_encrypt_block(i8* noundef nonnull %0, i8* noundef nonnull %1, i32 noundef 1, i8* noundef %key, i8* noundef %ivec, i32 noundef %enc, void (i8*, i8*, i8*)* noundef %block) #5
  %arrayidx5 = getelementptr inbounds i8, i8* %out, i64 %div
  %5 = load i8, i8* %arrayidx5, align 1, !tbaa !12
  %conv6 = zext i8 %5 to i32
  %neg = xor i32 %shl, -1
  %and11 = and i32 %conv6, %neg
  %6 = load i8, i8* %1, align 1, !tbaa !12
  %7 = and i8 %6, -128
  %and14 = zext i8 %7 to i32
  %shr = lshr i32 %and14, %4
  %or = or i32 %shr, %and11
  %conv17 = trunc i32 %or to i8
  store i8 %conv17, i8* %arrayidx5, align 1, !tbaa !12
  %inc = add nuw i64 %n.030, 1
  %exitcond.not = icmp eq i64 %inc, %bits
  br i1 %exitcond.not, label %for.end, label %for.body, !llvm.loop !40

for.end:                                          ; preds = %for.body, %entry
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %1) #4
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %0) #4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @cfbr_encrypt_block(i8* nocapture noundef readonly %in, i8* nocapture noundef writeonly %out, i32 noundef %nbits, i8* noundef %key, i8* noundef %ivec, i32 noundef %enc, void (i8*, i8*, i8*)* nocapture noundef readonly %block) unnamed_addr #0 {
entry:
  %ovec = alloca [33 x i8], align 16
  %0 = getelementptr inbounds [33 x i8], [33 x i8]* %ovec, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 33, i8* nonnull %0) #4
  %call = call i8* @memcpy(i8* noundef nonnull %0, i8* noundef %ivec, i64 noundef 16) #3
  call void %block(i8* noundef %ivec, i8* noundef %ivec, i8* noundef %key) #3
  %tobool.not = icmp eq i32 %enc, 0
  %1 = load i8, i8* %in, align 1, !tbaa !12
  %2 = load i8, i8* %ivec, align 1, !tbaa !12
  %xor26102 = xor i8 %2, %1
  %.xor26102 = select i1 %tobool.not, i8 %1, i8 %xor26102
  %3 = getelementptr inbounds [33 x i8], [33 x i8]* %ovec, i64 0, i64 16
  store i8 %.xor26102, i8* %3, align 16
  store i8 %xor26102, i8* %out, align 1, !tbaa !12
  %rem34 = srem i32 %nbits, 8
  %div35 = sdiv i32 %nbits, 8
  %cmp36 = icmp eq i32 %rem34, 0
  br i1 %cmp36, label %if.then38, label %iter.check

iter.check:                                       ; preds = %entry
  %4 = sext i32 %div35 to i64
  %sub = sub nsw i32 8, %rem34
  %broadcast.splatinsert110 = insertelement <16 x i32> poison, i32 %sub, i64 0
  %broadcast.splat111 = shufflevector <16 x i32> %broadcast.splatinsert110, <16 x i32> poison, <16 x i32> zeroinitializer
  %broadcast.splatinsert = insertelement <16 x i32> poison, i32 %rem34, i64 0
  %broadcast.splat = shufflevector <16 x i32> %broadcast.splatinsert, <16 x i32> poison, <16 x i32> zeroinitializer
  %5 = getelementptr inbounds [33 x i8], [33 x i8]* %ovec, i64 0, i64 %4
  %6 = bitcast i8* %5 to <16 x i8>*
  %wide.load = load <16 x i8>, <16 x i8>* %6, align 1, !tbaa !12
  %7 = zext <16 x i8> %wide.load to <16 x i32>
  %8 = shl <16 x i32> %7, %broadcast.splat
  %9 = add nsw i64 %4, 1
  %10 = getelementptr inbounds [33 x i8], [33 x i8]* %ovec, i64 0, i64 %9
  %11 = bitcast i8* %10 to <16 x i8>*
  %wide.load109 = load <16 x i8>, <16 x i8>* %11, align 1, !tbaa !12
  %12 = zext <16 x i8> %wide.load109 to <16 x i32>
  %13 = lshr <16 x i32> %12, %broadcast.splat111
  %14 = or <16 x i32> %13, %8
  %15 = trunc <16 x i32> %14 to <16 x i8>
  %16 = bitcast i8* %ivec to <16 x i8>*
  store <16 x i8> %15, <16 x i8>* %16, align 1, !tbaa !12
  br label %cleanup

if.then38:                                        ; preds = %entry
  %17 = zext i32 %div35 to i64
  %add.ptr = getelementptr inbounds [33 x i8], [33 x i8]* %ovec, i64 0, i64 %17
  %call40 = call i8* @memcpy(i8* noundef nonnull %ivec, i8* noundef nonnull %add.ptr, i64 noundef 16) #3
  br label %cleanup

cleanup:                                          ; preds = %iter.check, %if.then38
  call void @llvm.lifetime.end.p0i8(i64 33, i8* nonnull %0) #4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define void @CRYPTO_cfb128_8_encrypt(i8* nocapture noundef readonly %in, i8* nocapture noundef writeonly %out, i64 noundef %length, i8* noundef %key, i8* noundef %ivec, i32* nocapture noundef readnone %num, i32 noundef %enc, void (i8*, i8*, i8*)* nocapture noundef readonly %block) local_unnamed_addr #0 {
entry:
  %cmp6.not = icmp eq i64 %length, 0
  br i1 %cmp6.not, label %for.end, label %for.body

for.body:                                         ; preds = %entry, %for.body
  %n.07 = phi i64 [ %inc, %for.body ], [ 0, %entry ]
  %arrayidx = getelementptr inbounds i8, i8* %in, i64 %n.07
  %arrayidx1 = getelementptr inbounds i8, i8* %out, i64 %n.07
  tail call fastcc void @cfbr_encrypt_block(i8* noundef %arrayidx, i8* noundef %arrayidx1, i32 noundef 8, i8* noundef %key, i8* noundef %ivec, i32 noundef %enc, void (i8*, i8*, i8*)* noundef %block) #5
  %inc = add nuw i64 %n.07, 1
  %exitcond.not = icmp eq i64 %inc, %length
  br i1 %exitcond.not, label %for.end, label %for.body, !llvm.loop !41

for.end:                                          ; preds = %for.body, %entry
  ret void
}

; Function Attrs: nounwind
declare i8* @memcpy(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { nounwind "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nobuiltin nounwind "no-builtins" }
attributes #4 = { nounwind }
attributes #5 = { nobuiltin "no-builtins" }

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
!21 = !{!22, !17}
!22 = distinct !{!22, !18}
!23 = !{!22}
!24 = distinct !{!24, !11, !25}
!25 = !{!"llvm.loop.isvectorized", i32 1}
!26 = distinct !{!26, !11, !25}
!27 = distinct !{!27, !11}
!28 = distinct !{!28, !11}
!29 = distinct !{!29, !11, !15}
!30 = !{!31}
!31 = distinct !{!31, !32}
!32 = distinct !{!32, !"LVerDomain"}
!33 = !{!34}
!34 = distinct !{!34, !32}
!35 = !{!36}
!36 = distinct !{!36, !32}
!37 = !{!31, !34}
!38 = distinct !{!38, !11, !25}
!39 = distinct !{!39, !11, !25}
!40 = distinct !{!40, !11}
!41 = distinct !{!41, !11}
