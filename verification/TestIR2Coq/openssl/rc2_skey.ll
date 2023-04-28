; ModuleID = 'crypto/rc2/rc2_skey.c'
source_filename = "crypto/rc2/rc2_skey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rc2_key_st = type { [64 x i32] }

@key_table = internal unnamed_addr constant [256 x i8] c"\D9x\F9\C4\19\DD\B5\ED(\E9\FDyJ\A0\D8\9D\C6~7\83+vS\8EbLd\88D\8B\FB\A2\17\9AY\F5\87\B3O\13aEm\8D\09\81}2\BD\8F@\EB\86\B7{\0B\F0\95!\22\\kN\82T\D6e\93\CE`\B2\1CsV\C0\14\A7\8C\F1\DC\12u\CA\1F;\BE\E4\D1B=\D40\A3<\B6&o\BF\0E\DAFi\07W'\F2\1D\9B\BC\94C\03\F8\11\C7\F6\90\EF>\E7\06\C3\D5/\C8f\1E\D7\08\E8\EA\DE\80R\EE\F7\84\AAr\AC5Mj*\96\1A\D2qZ\15ItK\9F\D0^\04\18\A4\EC\C2\E0An\0FQ\CB\CC$\91\AFP\A1\F4p9\99|:\85#\B8\B4z\FC\026[%U\971-]\FA\98\E3\8A\92\AE\05\DF)\10gl\BA\C9\D3\00\E6\CF\E1\9E\A8,c\16\01?X\E2\89\A9\0D84\1B\AB3\FF\B0\BBH\0C_\B9\B1\CD.\C5\F3\DBG\E5\A5\9Cw\0A\A6 h\FE\7F\C1\AD", align 16

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define void @RC2_set_key(%struct.rc2_key_st* nocapture noundef %key, i32 noundef %len, i8* nocapture noundef readonly %data, i32 noundef %bits) local_unnamed_addr #0 {
entry:
  %0 = bitcast %struct.rc2_key_st* %key to i8*
  store i8 0, i8* %0, align 1, !tbaa !4
  %1 = icmp slt i32 %len, 128
  %spec.store.select = select i1 %1, i32 %len, i32 128
  %cmp2 = icmp slt i32 %bits, 1
  %spec.store.select74 = select i1 %cmp2, i32 1024, i32 %bits
  %2 = icmp ult i32 %spec.store.select74, 1024
  %spec.store.select73 = select i1 %2, i32 %spec.store.select74, i32 1024
  %cmp8122 = icmp sgt i32 %len, 0
  br i1 %cmp8122, label %iter.check, label %for.end

iter.check:                                       ; preds = %entry
  %smax = call i32 @llvm.smax.i32(i32 %spec.store.select, i32 1)
  %wide.trip.count = zext i32 %smax to i64
  %min.iters.check = icmp ult i32 %smax, 8
  br i1 %min.iters.check, label %for.body.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %uglygep = getelementptr i8, i8* %0, i64 %wide.trip.count
  %scevgep = getelementptr i8, i8* %data, i64 %wide.trip.count
  %bound0 = icmp ugt i8* %scevgep, %0
  %bound1 = icmp ugt i8* %uglygep, %data
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %for.body.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check147 = icmp ult i32 %smax, 32
  br i1 %min.iters.check147, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.vec = and i64 %wide.trip.count, 2147483616
  %3 = add nsw i64 %n.vec, -32
  %4 = lshr exact i64 %3, 5
  %5 = add nuw nsw i64 %4, 1
  %xtraiter = and i64 %5, 3
  %6 = icmp ult i64 %3, 96
  br i1 %6, label %middle.block.unr-lcssa, label %vector.ph.new

vector.ph.new:                                    ; preds = %vector.ph
  %unroll_iter = and i64 %5, 1152921504606846972
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph.new
  %index = phi i64 [ 0, %vector.ph.new ], [ %index.next.3, %vector.body ]
  %niter = phi i64 [ 0, %vector.ph.new ], [ %niter.next.3, %vector.body ]
  %7 = getelementptr inbounds i8, i8* %data, i64 %index
  %8 = bitcast i8* %7 to <16 x i8>*
  %wide.load = load <16 x i8>, <16 x i8>* %8, align 1, !tbaa !4, !alias.scope !7
  %9 = getelementptr inbounds i8, i8* %7, i64 16
  %10 = bitcast i8* %9 to <16 x i8>*
  %wide.load148 = load <16 x i8>, <16 x i8>* %10, align 1, !tbaa !4, !alias.scope !7
  %11 = getelementptr inbounds i8, i8* %0, i64 %index
  %12 = bitcast i8* %11 to <16 x i8>*
  store <16 x i8> %wide.load, <16 x i8>* %12, align 1, !tbaa !4, !alias.scope !10, !noalias !7
  %13 = getelementptr inbounds i8, i8* %11, i64 16
  %14 = bitcast i8* %13 to <16 x i8>*
  store <16 x i8> %wide.load148, <16 x i8>* %14, align 1, !tbaa !4, !alias.scope !10, !noalias !7
  %index.next = or i64 %index, 32
  %15 = getelementptr inbounds i8, i8* %data, i64 %index.next
  %16 = bitcast i8* %15 to <16 x i8>*
  %wide.load.1 = load <16 x i8>, <16 x i8>* %16, align 1, !tbaa !4, !alias.scope !7
  %17 = getelementptr inbounds i8, i8* %15, i64 16
  %18 = bitcast i8* %17 to <16 x i8>*
  %wide.load148.1 = load <16 x i8>, <16 x i8>* %18, align 1, !tbaa !4, !alias.scope !7
  %19 = getelementptr inbounds i8, i8* %0, i64 %index.next
  %20 = bitcast i8* %19 to <16 x i8>*
  store <16 x i8> %wide.load.1, <16 x i8>* %20, align 1, !tbaa !4, !alias.scope !10, !noalias !7
  %21 = getelementptr inbounds i8, i8* %19, i64 16
  %22 = bitcast i8* %21 to <16 x i8>*
  store <16 x i8> %wide.load148.1, <16 x i8>* %22, align 1, !tbaa !4, !alias.scope !10, !noalias !7
  %index.next.1 = or i64 %index, 64
  %23 = getelementptr inbounds i8, i8* %data, i64 %index.next.1
  %24 = bitcast i8* %23 to <16 x i8>*
  %wide.load.2 = load <16 x i8>, <16 x i8>* %24, align 1, !tbaa !4, !alias.scope !7
  %25 = getelementptr inbounds i8, i8* %23, i64 16
  %26 = bitcast i8* %25 to <16 x i8>*
  %wide.load148.2 = load <16 x i8>, <16 x i8>* %26, align 1, !tbaa !4, !alias.scope !7
  %27 = getelementptr inbounds i8, i8* %0, i64 %index.next.1
  %28 = bitcast i8* %27 to <16 x i8>*
  store <16 x i8> %wide.load.2, <16 x i8>* %28, align 1, !tbaa !4, !alias.scope !10, !noalias !7
  %29 = getelementptr inbounds i8, i8* %27, i64 16
  %30 = bitcast i8* %29 to <16 x i8>*
  store <16 x i8> %wide.load148.2, <16 x i8>* %30, align 1, !tbaa !4, !alias.scope !10, !noalias !7
  %index.next.2 = or i64 %index, 96
  %31 = getelementptr inbounds i8, i8* %data, i64 %index.next.2
  %32 = bitcast i8* %31 to <16 x i8>*
  %wide.load.3 = load <16 x i8>, <16 x i8>* %32, align 1, !tbaa !4, !alias.scope !7
  %33 = getelementptr inbounds i8, i8* %31, i64 16
  %34 = bitcast i8* %33 to <16 x i8>*
  %wide.load148.3 = load <16 x i8>, <16 x i8>* %34, align 1, !tbaa !4, !alias.scope !7
  %35 = getelementptr inbounds i8, i8* %0, i64 %index.next.2
  %36 = bitcast i8* %35 to <16 x i8>*
  store <16 x i8> %wide.load.3, <16 x i8>* %36, align 1, !tbaa !4, !alias.scope !10, !noalias !7
  %37 = getelementptr inbounds i8, i8* %35, i64 16
  %38 = bitcast i8* %37 to <16 x i8>*
  store <16 x i8> %wide.load148.3, <16 x i8>* %38, align 1, !tbaa !4, !alias.scope !10, !noalias !7
  %index.next.3 = add nuw i64 %index, 128
  %niter.next.3 = add i64 %niter, 4
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %middle.block.unr-lcssa, label %vector.body, !llvm.loop !12

middle.block.unr-lcssa:                           ; preds = %vector.body, %vector.ph
  %index.unr = phi i64 [ 0, %vector.ph ], [ %index.next.3, %vector.body ]
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %middle.block, label %vector.body.epil

vector.body.epil:                                 ; preds = %middle.block.unr-lcssa, %vector.body.epil
  %index.epil = phi i64 [ %index.next.epil, %vector.body.epil ], [ %index.unr, %middle.block.unr-lcssa ]
  %epil.iter = phi i64 [ %epil.iter.next, %vector.body.epil ], [ 0, %middle.block.unr-lcssa ]
  %39 = getelementptr inbounds i8, i8* %data, i64 %index.epil
  %40 = bitcast i8* %39 to <16 x i8>*
  %wide.load.epil = load <16 x i8>, <16 x i8>* %40, align 1, !tbaa !4, !alias.scope !7
  %41 = getelementptr inbounds i8, i8* %39, i64 16
  %42 = bitcast i8* %41 to <16 x i8>*
  %wide.load148.epil = load <16 x i8>, <16 x i8>* %42, align 1, !tbaa !4, !alias.scope !7
  %43 = getelementptr inbounds i8, i8* %0, i64 %index.epil
  %44 = bitcast i8* %43 to <16 x i8>*
  store <16 x i8> %wide.load.epil, <16 x i8>* %44, align 1, !tbaa !4, !alias.scope !10, !noalias !7
  %45 = getelementptr inbounds i8, i8* %43, i64 16
  %46 = bitcast i8* %45 to <16 x i8>*
  store <16 x i8> %wide.load148.epil, <16 x i8>* %46, align 1, !tbaa !4, !alias.scope !10, !noalias !7
  %index.next.epil = add nuw i64 %index.epil, 32
  %epil.iter.next = add i64 %epil.iter, 1
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %middle.block, label %vector.body.epil, !llvm.loop !15

middle.block:                                     ; preds = %vector.body.epil, %middle.block.unr-lcssa
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %for.end, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %n.vec.remaining = and i64 %wide.trip.count, 24
  %min.epilog.iters.check = icmp eq i64 %n.vec.remaining, 0
  br i1 %min.epilog.iters.check, label %for.body.preheader, label %vec.epilog.ph

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec150 = and i64 %wide.trip.count, 2147483640
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index152 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next154, %vec.epilog.vector.body ]
  %47 = getelementptr inbounds i8, i8* %data, i64 %index152
  %48 = bitcast i8* %47 to <8 x i8>*
  %wide.load153 = load <8 x i8>, <8 x i8>* %48, align 1, !tbaa !4
  %49 = getelementptr inbounds i8, i8* %0, i64 %index152
  %50 = bitcast i8* %49 to <8 x i8>*
  store <8 x i8> %wide.load153, <8 x i8>* %50, align 1, !tbaa !4
  %index.next154 = add nuw i64 %index152, 8
  %51 = icmp eq i64 %index.next154, %n.vec150
  br i1 %51, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !17

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n151 = icmp eq i64 %n.vec150, %wide.trip.count
  br i1 %cmp.n151, label %for.end, label %for.body.preheader

for.body.preheader:                               ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec150, %vec.epilog.middle.block ]
  %52 = xor i64 %indvars.iv.ph, -1
  %53 = add nsw i64 %52, %wide.trip.count
  %xtraiter155 = and i64 %wide.trip.count, 3
  %lcmp.mod156.not = icmp eq i64 %xtraiter155, 0
  br i1 %lcmp.mod156.not, label %for.body.prol.loopexit, label %for.body.prol

for.body.prol:                                    ; preds = %for.body.preheader, %for.body.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %for.body.prol ], [ %indvars.iv.ph, %for.body.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %for.body.prol ], [ 0, %for.body.preheader ]
  %arrayidx9.prol = getelementptr inbounds i8, i8* %data, i64 %indvars.iv.prol
  %54 = load i8, i8* %arrayidx9.prol, align 1, !tbaa !4
  %arrayidx11.prol = getelementptr inbounds i8, i8* %0, i64 %indvars.iv.prol
  store i8 %54, i8* %arrayidx11.prol, align 1, !tbaa !4
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1
  %prol.iter.next = add i64 %prol.iter, 1
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter155
  br i1 %prol.iter.cmp.not, label %for.body.prol.loopexit, label %for.body.prol, !llvm.loop !19

for.body.prol.loopexit:                           ; preds = %for.body.prol, %for.body.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %for.body.preheader ], [ %indvars.iv.next.prol, %for.body.prol ]
  %55 = icmp ult i64 %53, 3
  br i1 %55, label %for.end, label %for.body

for.body:                                         ; preds = %for.body.prol.loopexit, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %for.body ], [ %indvars.iv.unr, %for.body.prol.loopexit ]
  %arrayidx9 = getelementptr inbounds i8, i8* %data, i64 %indvars.iv
  %56 = load i8, i8* %arrayidx9, align 1, !tbaa !4
  %arrayidx11 = getelementptr inbounds i8, i8* %0, i64 %indvars.iv
  store i8 %56, i8* %arrayidx11, align 1, !tbaa !4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %arrayidx9.1 = getelementptr inbounds i8, i8* %data, i64 %indvars.iv.next
  %57 = load i8, i8* %arrayidx9.1, align 1, !tbaa !4
  %arrayidx11.1 = getelementptr inbounds i8, i8* %0, i64 %indvars.iv.next
  store i8 %57, i8* %arrayidx11.1, align 1, !tbaa !4
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2
  %arrayidx9.2 = getelementptr inbounds i8, i8* %data, i64 %indvars.iv.next.1
  %58 = load i8, i8* %arrayidx9.2, align 1, !tbaa !4
  %arrayidx11.2 = getelementptr inbounds i8, i8* %0, i64 %indvars.iv.next.1
  store i8 %58, i8* %arrayidx11.2, align 1, !tbaa !4
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3
  %arrayidx9.3 = getelementptr inbounds i8, i8* %data, i64 %indvars.iv.next.2
  %59 = load i8, i8* %arrayidx9.3, align 1, !tbaa !4
  %arrayidx11.3 = getelementptr inbounds i8, i8* %0, i64 %indvars.iv.next.2
  store i8 %59, i8* %arrayidx11.3, align 1, !tbaa !4
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond.not.3, label %for.end, label %for.body, !llvm.loop !20

for.end:                                          ; preds = %for.body.prol.loopexit, %for.body, %middle.block, %vec.epilog.middle.block, %entry
  br i1 %1, label %for.body17.preheader, label %for.end30

for.body17.preheader:                             ; preds = %for.end
  %sub = add nsw i32 %spec.store.select, -1
  %idxprom12 = sext i32 %sub to i64
  %arrayidx13 = getelementptr inbounds i8, i8* %0, i64 %idxprom12
  %60 = load i8, i8* %arrayidx13, align 1, !tbaa !4
  %61 = sext i32 %spec.store.select to i64
  %62 = sub i32 128, %spec.store.select
  %wide.trip.count138 = zext i32 %62 to i64
  %xtraiter157 = and i64 %wide.trip.count138, 1
  %63 = icmp eq i32 %spec.store.select, 127
  br i1 %63, label %for.end30.loopexit.unr-lcssa, label %for.body17.preheader.new

for.body17.preheader.new:                         ; preds = %for.body17.preheader
  %unroll_iter160 = and i64 %wide.trip.count138, 4294967294
  br label %for.body17

for.body17:                                       ; preds = %for.body17, %for.body17.preheader.new
  %indvars.iv136 = phi i64 [ %61, %for.body17.preheader.new ], [ %indvars.iv.next137.1, %for.body17 ]
  %indvars.iv134 = phi i64 [ 0, %for.body17.preheader.new ], [ %indvars.iv.next135.1, %for.body17 ]
  %d.0.in126 = phi i8 [ %60, %for.body17.preheader.new ], [ %67, %for.body17 ]
  %niter161 = phi i64 [ 0, %for.body17.preheader.new ], [ %niter161.next.1, %for.body17 ]
  %d.0 = zext i8 %d.0.in126 to i64
  %arrayidx19 = getelementptr inbounds i8, i8* %0, i64 %indvars.iv134
  %64 = load i8, i8* %arrayidx19, align 1, !tbaa !4
  %conv20 = zext i8 %64 to i64
  %add = add nuw nsw i64 %conv20, %d.0
  %and = and i64 %add, 255
  %arrayidx22 = getelementptr inbounds [256 x i8], [256 x i8]* @key_table, i64 0, i64 %and
  %65 = load i8, i8* %arrayidx22, align 1, !tbaa !4
  %arrayidx26 = getelementptr inbounds i8, i8* %0, i64 %indvars.iv136
  store i8 %65, i8* %arrayidx26, align 1, !tbaa !4
  %indvars.iv.next137 = add nsw i64 %indvars.iv136, 1
  %indvars.iv.next135 = or i64 %indvars.iv134, 1
  %d.0.1 = zext i8 %65 to i64
  %arrayidx19.1 = getelementptr inbounds i8, i8* %0, i64 %indvars.iv.next135
  %66 = load i8, i8* %arrayidx19.1, align 1, !tbaa !4
  %conv20.1 = zext i8 %66 to i64
  %add.1 = add nuw nsw i64 %conv20.1, %d.0.1
  %and.1 = and i64 %add.1, 255
  %arrayidx22.1 = getelementptr inbounds [256 x i8], [256 x i8]* @key_table, i64 0, i64 %and.1
  %67 = load i8, i8* %arrayidx22.1, align 1, !tbaa !4
  %arrayidx26.1 = getelementptr inbounds i8, i8* %0, i64 %indvars.iv.next137
  store i8 %67, i8* %arrayidx26.1, align 1, !tbaa !4
  %indvars.iv.next137.1 = add nsw i64 %indvars.iv136, 2
  %indvars.iv.next135.1 = add nuw nsw i64 %indvars.iv134, 2
  %niter161.next.1 = add i64 %niter161, 2
  %niter161.ncmp.1 = icmp eq i64 %niter161.next.1, %unroll_iter160
  br i1 %niter161.ncmp.1, label %for.end30.loopexit.unr-lcssa, label %for.body17, !llvm.loop !21

for.end30.loopexit.unr-lcssa:                     ; preds = %for.body17, %for.body17.preheader
  %indvars.iv136.unr = phi i64 [ %61, %for.body17.preheader ], [ %indvars.iv.next137.1, %for.body17 ]
  %indvars.iv134.unr = phi i64 [ 0, %for.body17.preheader ], [ %indvars.iv.next135.1, %for.body17 ]
  %d.0.in126.unr = phi i8 [ %60, %for.body17.preheader ], [ %67, %for.body17 ]
  %lcmp.mod159.not = icmp eq i64 %xtraiter157, 0
  br i1 %lcmp.mod159.not, label %for.end30, label %for.body17.epil

for.body17.epil:                                  ; preds = %for.end30.loopexit.unr-lcssa
  %d.0.epil = zext i8 %d.0.in126.unr to i64
  %arrayidx19.epil = getelementptr inbounds i8, i8* %0, i64 %indvars.iv134.unr
  %68 = load i8, i8* %arrayidx19.epil, align 1, !tbaa !4
  %conv20.epil = zext i8 %68 to i64
  %add.epil = add nuw nsw i64 %conv20.epil, %d.0.epil
  %and.epil = and i64 %add.epil, 255
  %arrayidx22.epil = getelementptr inbounds [256 x i8], [256 x i8]* @key_table, i64 0, i64 %and.epil
  %69 = load i8, i8* %arrayidx22.epil, align 1, !tbaa !4
  %arrayidx26.epil = getelementptr inbounds i8, i8* %0, i64 %indvars.iv136.unr
  store i8 %69, i8* %arrayidx26.epil, align 1, !tbaa !4
  br label %for.end30

for.end30:                                        ; preds = %for.body17.epil, %for.end30.loopexit.unr-lcssa, %for.end
  %add31 = add nuw nsw i32 %spec.store.select73, 7
  %70 = lshr i32 %add31, 3
  %sub32 = sub nsw i32 128, %70
  %sub33 = sub nsw i32 0, %spec.store.select73
  %and34 = and i32 %sub33, 7
  %shr35 = lshr i32 255, %and34
  %idxprom36 = sext i32 %sub32 to i64
  %arrayidx37 = getelementptr inbounds i8, i8* %0, i64 %idxprom36
  %71 = load i8, i8* %arrayidx37, align 1, !tbaa !4
  %conv38 = zext i8 %71 to i32
  %and39 = and i32 %shr35, %conv38
  %idxprom40 = zext i32 %and39 to i64
  %arrayidx41 = getelementptr inbounds [256 x i8], [256 x i8]* @key_table, i64 0, i64 %idxprom40
  %72 = load i8, i8* %arrayidx41, align 1, !tbaa !4
  store i8 %72, i8* %arrayidx37, align 1, !tbaa !4
  %tobool.not128 = icmp eq i32 %70, 128
  br i1 %tobool.not128, label %while.end, label %while.body.preheader

while.body.preheader:                             ; preds = %for.end30
  %narrow = sub nsw i32 127, %70
  %73 = sext i32 %narrow to i64
  %74 = zext i32 %70 to i64
  %xtraiter162 = and i64 %74, 1
  %lcmp.mod163.not = icmp eq i64 %xtraiter162, 0
  br i1 %lcmp.mod163.not, label %while.body.prol.loopexit, label %while.body.prol

while.body.prol:                                  ; preds = %while.body.preheader
  %75 = add nsw i64 %73, %74
  %arrayidx48.prol = getelementptr inbounds i8, i8* %0, i64 %75
  %76 = load i8, i8* %arrayidx48.prol, align 1, !tbaa !4
  %xor120.prol = xor i8 %76, %72
  %idxprom50.prol = zext i8 %xor120.prol to i64
  %arrayidx51.prol = getelementptr inbounds [256 x i8], [256 x i8]* @key_table, i64 0, i64 %idxprom50.prol
  %77 = load i8, i8* %arrayidx51.prol, align 1, !tbaa !4
  %arrayidx55.prol = getelementptr inbounds i8, i8* %0, i64 %73
  store i8 %77, i8* %arrayidx55.prol, align 1, !tbaa !4
  %indvars.iv.next141.prol = add nsw i64 %73, -1
  br label %while.body.prol.loopexit

while.body.prol.loopexit:                         ; preds = %while.body.prol, %while.body.preheader
  %indvars.iv140.unr = phi i64 [ %73, %while.body.preheader ], [ %indvars.iv.next141.prol, %while.body.prol ]
  %d.1.in129.unr = phi i8 [ %72, %while.body.preheader ], [ %77, %while.body.prol ]
  %78 = icmp eq i32 %70, 127
  br i1 %78, label %while.end, label %while.body

while.body:                                       ; preds = %while.body.prol.loopexit, %while.body
  %indvars.iv140 = phi i64 [ %indvars.iv.next141.1, %while.body ], [ %indvars.iv140.unr, %while.body.prol.loopexit ]
  %d.1.in129 = phi i8 [ %84, %while.body ], [ %d.1.in129.unr, %while.body.prol.loopexit ]
  %79 = add nsw i64 %indvars.iv140, %74
  %arrayidx48 = getelementptr inbounds i8, i8* %0, i64 %79
  %80 = load i8, i8* %arrayidx48, align 1, !tbaa !4
  %xor120 = xor i8 %80, %d.1.in129
  %idxprom50 = zext i8 %xor120 to i64
  %arrayidx51 = getelementptr inbounds [256 x i8], [256 x i8]* @key_table, i64 0, i64 %idxprom50
  %81 = load i8, i8* %arrayidx51, align 1, !tbaa !4
  %arrayidx55 = getelementptr inbounds i8, i8* %0, i64 %indvars.iv140
  store i8 %81, i8* %arrayidx55, align 1, !tbaa !4
  %indvars.iv.next141 = add nsw i64 %indvars.iv140, -1
  %82 = add nsw i64 %indvars.iv.next141, %74
  %arrayidx48.1 = getelementptr inbounds i8, i8* %0, i64 %82
  %83 = load i8, i8* %arrayidx48.1, align 1, !tbaa !4
  %xor120.1 = xor i8 %83, %81
  %idxprom50.1 = zext i8 %xor120.1 to i64
  %arrayidx51.1 = getelementptr inbounds [256 x i8], [256 x i8]* @key_table, i64 0, i64 %idxprom50.1
  %84 = load i8, i8* %arrayidx51.1, align 1, !tbaa !4
  %arrayidx55.1 = getelementptr inbounds i8, i8* %0, i64 %indvars.iv.next141
  store i8 %84, i8* %arrayidx55.1, align 1, !tbaa !4
  %indvars.iv.next141.1 = add nsw i64 %indvars.iv140, -2
  %85 = icmp eq i64 %indvars.iv.next141, 0
  br i1 %85, label %while.end, label %while.body, !llvm.loop !22

while.end:                                        ; preds = %while.body.prol.loopexit, %while.body, %for.end30
  %arrayidx57 = getelementptr inbounds %struct.rc2_key_st, %struct.rc2_key_st* %key, i64 0, i32 0, i64 63
  br label %for.body61

for.body61:                                       ; preds = %for.body61, %while.end
  %indvars.iv143 = phi i64 [ 127, %while.end ], [ %indvars.iv.next144.1, %for.body61 ]
  %ki.0132 = phi i32* [ %arrayidx57, %while.end ], [ %incdec.ptr.1, %for.body61 ]
  %arrayidx63 = getelementptr inbounds i8, i8* %0, i64 %indvars.iv143
  %86 = load i8, i8* %arrayidx63, align 1, !tbaa !4
  %conv64 = zext i8 %86 to i32
  %shl = shl nuw nsw i32 %conv64, 8
  %87 = add nsw i64 %indvars.iv143, -1
  %arrayidx67 = getelementptr inbounds i8, i8* %0, i64 %87
  %88 = load i8, i8* %arrayidx67, align 1, !tbaa !4
  %conv68 = zext i8 %88 to i32
  %or = or i32 %shl, %conv68
  %incdec.ptr = getelementptr inbounds i32, i32* %ki.0132, i64 -1
  store i32 %or, i32* %ki.0132, align 4, !tbaa !23
  %indvars.iv.next144 = add nsw i64 %indvars.iv143, -2
  %arrayidx63.1 = getelementptr inbounds i8, i8* %0, i64 %indvars.iv.next144
  %89 = load i8, i8* %arrayidx63.1, align 1, !tbaa !4
  %conv64.1 = zext i8 %89 to i32
  %shl.1 = shl nuw nsw i32 %conv64.1, 8
  %90 = add nsw i64 %indvars.iv143, -3
  %arrayidx67.1 = getelementptr inbounds i8, i8* %0, i64 %90
  %91 = load i8, i8* %arrayidx67.1, align 1, !tbaa !4
  %conv68.1 = zext i8 %91 to i32
  %or.1 = or i32 %shl.1, %conv68.1
  %incdec.ptr.1 = getelementptr inbounds i32, i32* %ki.0132, i64 -2
  store i32 %or.1, i32* %incdec.ptr, align 4, !tbaa !23
  %indvars.iv.next144.1 = add nsw i64 %indvars.iv143, -4
  %cmp59.1 = icmp ugt i64 %indvars.iv.next144, 1
  br i1 %cmp59.1, label %for.body61, label %for.end72, !llvm.loop !25

for.end72:                                        ; preds = %for.body61
  ret void
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #1

attributes #0 = { nofree noinline norecurse nosync nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{!"clang version 14.0.0"}
!4 = !{!5, !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!8}
!8 = distinct !{!8, !9}
!9 = distinct !{!9, !"LVerDomain"}
!10 = !{!11}
!11 = distinct !{!11, !9}
!12 = distinct !{!12, !13, !14}
!13 = !{!"llvm.loop.mustprogress"}
!14 = !{!"llvm.loop.isvectorized", i32 1}
!15 = distinct !{!15, !16}
!16 = !{!"llvm.loop.unroll.disable"}
!17 = distinct !{!17, !13, !14, !18}
!18 = !{!"llvm.loop.unroll.runtime.disable"}
!19 = distinct !{!19, !16}
!20 = distinct !{!20, !13, !14}
!21 = distinct !{!21, !13}
!22 = distinct !{!22, !13}
!23 = !{!24, !24, i64 0}
!24 = !{!"int", !5, i64 0}
!25 = distinct !{!25, !13}
