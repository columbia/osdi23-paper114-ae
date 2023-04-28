; ModuleID = 'crypto/modes/cts128.c'
source_filename = "crypto/modes/cts128.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.anon = type { i64, [8 x i8] }
%union.anon.0 = type { i64, [8 x i8] }
%union.anon.1 = type { i64, [24 x i8] }
%union.anon.2 = type { i64, [24 x i8] }
%union.anon.3 = type { i64, [24 x i8] }
%union.anon.4 = type { i64, [24 x i8] }

; Function Attrs: noinline nounwind uwtable
define i64 @CRYPTO_cts128_encrypt_block(i8* noundef %in, i8* noundef %out, i64 noundef %len, i8* noundef %key, i8* noundef %ivec, void (i8*, i8*, i8*)* noundef %block) local_unnamed_addr #0 {
entry:
  %cmp = icmp ult i64 %len, 17
  br i1 %cmp, label %cleanup, label %iter.check

iter.check:                                       ; preds = %entry
  %rem = and i64 %len, 15
  %cmp1 = icmp eq i64 %rem, 0
  %spec.store.select = select i1 %cmp1, i64 16, i64 %rem
  %sub = sub nuw i64 %len, %spec.store.select
  tail call void @CRYPTO_cbc128_encrypt(i8* noundef %in, i8* noundef %out, i64 noundef %sub, i8* noundef %key, i8* noundef %ivec, void (i8*, i8*, i8*)* noundef %block) #4
  %add.ptr = getelementptr inbounds i8, i8* %in, i64 %sub
  %add.ptr4 = getelementptr inbounds i8, i8* %out, i64 %sub
  %min.iters.check = icmp ult i64 %spec.store.select, 8
  br i1 %min.iters.check, label %for.body.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %scevgep = getelementptr i8, i8* %ivec, i64 %spec.store.select
  %scevgep42 = getelementptr i8, i8* %in, i64 %len
  %bound0 = icmp ugt i8* %scevgep42, %ivec
  %bound1 = icmp ult i8* %add.ptr, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %for.body.preheader, label %vec.epilog.ph

vec.epilog.ph:                                    ; preds = %vector.memcheck
  %n.vec48 = and i64 %spec.store.select, 24
  %0 = bitcast i8* %add.ptr to <8 x i8>*
  %wide.load51 = load <8 x i8>, <8 x i8>* %0, align 1, !tbaa !4
  %1 = bitcast i8* %ivec to <8 x i8>*
  %wide.load52 = load <8 x i8>, <8 x i8>* %1, align 1, !tbaa !4
  %2 = xor <8 x i8> %wide.load52, %wide.load51
  %3 = bitcast i8* %ivec to <8 x i8>*
  store <8 x i8> %2, <8 x i8>* %3, align 1, !tbaa !4
  %4 = icmp eq i64 %n.vec48, 8
  br i1 %4, label %vec.epilog.middle.block, label %vec.epilog.vector.body.1, !llvm.loop !7

vec.epilog.vector.body.1:                         ; preds = %vec.epilog.ph
  %5 = getelementptr inbounds i8, i8* %add.ptr, i64 8
  %6 = bitcast i8* %5 to <8 x i8>*
  %wide.load51.1 = load <8 x i8>, <8 x i8>* %6, align 1, !tbaa !4
  %7 = getelementptr inbounds i8, i8* %ivec, i64 8
  %8 = bitcast i8* %7 to <8 x i8>*
  %wide.load52.1 = load <8 x i8>, <8 x i8>* %8, align 1, !tbaa !4
  %9 = xor <8 x i8> %wide.load52.1, %wide.load51.1
  %10 = bitcast i8* %7 to <8 x i8>*
  store <8 x i8> %9, <8 x i8>* %10, align 1, !tbaa !4
  %11 = icmp eq i64 %n.vec48, 16
  br i1 %11, label %vec.epilog.middle.block, label %vec.epilog.vector.body.2, !llvm.loop !7

vec.epilog.vector.body.2:                         ; preds = %vec.epilog.vector.body.1
  %12 = getelementptr inbounds i8, i8* %add.ptr, i64 16
  %13 = bitcast i8* %12 to <8 x i8>*
  %wide.load51.2 = load <8 x i8>, <8 x i8>* %13, align 1, !tbaa !4
  %14 = getelementptr inbounds i8, i8* %ivec, i64 16
  %15 = bitcast i8* %14 to <8 x i8>*
  %wide.load52.2 = load <8 x i8>, <8 x i8>* %15, align 1, !tbaa !4
  %16 = xor <8 x i8> %wide.load52.2, %wide.load51.2
  %17 = bitcast i8* %14 to <8 x i8>*
  store <8 x i8> %16, <8 x i8>* %17, align 1, !tbaa !4
  br label %vec.epilog.middle.block

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body.2, %vec.epilog.vector.body.1, %vec.epilog.ph
  %cmp.n49 = icmp eq i64 %spec.store.select, %n.vec48
  br i1 %cmp.n49, label %for.end, label %for.body.preheader

for.body.preheader:                               ; preds = %vector.memcheck, %iter.check, %vec.epilog.middle.block
  %n.041.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec48, %vec.epilog.middle.block ]
  %18 = xor i64 %n.041.ph, -1
  %19 = add nsw i64 %spec.store.select, %18
  %xtraiter = and i64 %spec.store.select, 3
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %for.body.prol.loopexit, label %for.body.prol

for.body.prol:                                    ; preds = %for.body.preheader, %for.body.prol
  %n.041.prol = phi i64 [ %inc.prol, %for.body.prol ], [ %n.041.ph, %for.body.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %for.body.prol ], [ 0, %for.body.preheader ]
  %arrayidx.prol = getelementptr inbounds i8, i8* %add.ptr, i64 %n.041.prol
  %20 = load i8, i8* %arrayidx.prol, align 1, !tbaa !4
  %arrayidx6.prol = getelementptr inbounds i8, i8* %ivec, i64 %n.041.prol
  %21 = load i8, i8* %arrayidx6.prol, align 1, !tbaa !4
  %xor39.prol = xor i8 %21, %20
  store i8 %xor39.prol, i8* %arrayidx6.prol, align 1, !tbaa !4
  %inc.prol = add nuw nsw i64 %n.041.prol, 1
  %prol.iter.next = add i64 %prol.iter, 1
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %for.body.prol.loopexit, label %for.body.prol, !llvm.loop !11

for.body.prol.loopexit:                           ; preds = %for.body.prol, %for.body.preheader
  %n.041.unr = phi i64 [ %n.041.ph, %for.body.preheader ], [ %inc.prol, %for.body.prol ]
  %22 = icmp ult i64 %19, 3
  br i1 %22, label %for.end, label %for.body

for.body:                                         ; preds = %for.body.prol.loopexit, %for.body
  %n.041 = phi i64 [ %inc.3, %for.body ], [ %n.041.unr, %for.body.prol.loopexit ]
  %arrayidx = getelementptr inbounds i8, i8* %add.ptr, i64 %n.041
  %23 = load i8, i8* %arrayidx, align 1, !tbaa !4
  %arrayidx6 = getelementptr inbounds i8, i8* %ivec, i64 %n.041
  %24 = load i8, i8* %arrayidx6, align 1, !tbaa !4
  %xor39 = xor i8 %24, %23
  store i8 %xor39, i8* %arrayidx6, align 1, !tbaa !4
  %inc = add nuw nsw i64 %n.041, 1
  %arrayidx.1 = getelementptr inbounds i8, i8* %add.ptr, i64 %inc
  %25 = load i8, i8* %arrayidx.1, align 1, !tbaa !4
  %arrayidx6.1 = getelementptr inbounds i8, i8* %ivec, i64 %inc
  %26 = load i8, i8* %arrayidx6.1, align 1, !tbaa !4
  %xor39.1 = xor i8 %26, %25
  store i8 %xor39.1, i8* %arrayidx6.1, align 1, !tbaa !4
  %inc.1 = add nuw nsw i64 %n.041, 2
  %arrayidx.2 = getelementptr inbounds i8, i8* %add.ptr, i64 %inc.1
  %27 = load i8, i8* %arrayidx.2, align 1, !tbaa !4
  %arrayidx6.2 = getelementptr inbounds i8, i8* %ivec, i64 %inc.1
  %28 = load i8, i8* %arrayidx6.2, align 1, !tbaa !4
  %xor39.2 = xor i8 %28, %27
  store i8 %xor39.2, i8* %arrayidx6.2, align 1, !tbaa !4
  %inc.2 = add nuw nsw i64 %n.041, 3
  %arrayidx.3 = getelementptr inbounds i8, i8* %add.ptr, i64 %inc.2
  %29 = load i8, i8* %arrayidx.3, align 1, !tbaa !4
  %arrayidx6.3 = getelementptr inbounds i8, i8* %ivec, i64 %inc.2
  %30 = load i8, i8* %arrayidx6.3, align 1, !tbaa !4
  %xor39.3 = xor i8 %30, %29
  store i8 %xor39.3, i8* %arrayidx6.3, align 1, !tbaa !4
  %inc.3 = add nuw nsw i64 %n.041, 4
  %exitcond.not.3 = icmp eq i64 %inc.3, %spec.store.select
  br i1 %exitcond.not.3, label %for.end, label %for.body, !llvm.loop !13

for.end:                                          ; preds = %for.body.prol.loopexit, %for.body, %vec.epilog.middle.block
  tail call void %block(i8* noundef nonnull %ivec, i8* noundef nonnull %ivec, i8* noundef %key) #4
  %add.ptr9 = getelementptr inbounds i8, i8* %add.ptr4, i64 -16
  %call = tail call i8* @memcpy(i8* noundef %add.ptr4, i8* noundef nonnull %add.ptr9, i64 noundef %spec.store.select) #4
  %call11 = tail call i8* @memcpy(i8* noundef nonnull %add.ptr9, i8* noundef nonnull %ivec, i64 noundef 16) #4
  br label %cleanup

cleanup:                                          ; preds = %entry, %for.end
  %retval.0 = phi i64 [ %len, %for.end ], [ 0, %entry ]
  ret i64 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

declare void @CRYPTO_cbc128_encrypt(i8* noundef, i8* noundef, i64 noundef, i8* noundef, i8* noundef, void (i8*, i8*, i8*)* noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare i8* @memcpy(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: noinline nounwind uwtable
define i64 @CRYPTO_nistcts128_encrypt_block(i8* noundef %in, i8* noundef %out, i64 noundef %len, i8* noundef %key, i8* noundef %ivec, void (i8*, i8*, i8*)* noundef %block) local_unnamed_addr #0 {
entry:
  %cmp = icmp ult i64 %len, 16
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %rem = and i64 %len, 15
  %sub = and i64 %len, -16
  tail call void @CRYPTO_cbc128_encrypt(i8* noundef %in, i8* noundef %out, i64 noundef %sub, i8* noundef %key, i8* noundef %ivec, void (i8*, i8*, i8*)* noundef %block) #4
  %cmp1 = icmp eq i64 %rem, 0
  br i1 %cmp1, label %cleanup, label %for.body.preheader

for.body.preheader:                               ; preds = %if.end
  %add.ptr = getelementptr inbounds i8, i8* %in, i64 %sub
  %add.ptr4 = getelementptr inbounds i8, i8* %out, i64 %sub
  %0 = add nsw i64 %rem, -1
  %xtraiter = and i64 %len, 3
  %1 = icmp ult i64 %0, 3
  br i1 %1, label %for.end.unr-lcssa, label %for.body.preheader.new

for.body.preheader.new:                           ; preds = %for.body.preheader
  %unroll_iter = sub nsw i64 %rem, %xtraiter
  br label %for.body

for.body:                                         ; preds = %for.body, %for.body.preheader.new
  %n.040 = phi i64 [ 0, %for.body.preheader.new ], [ %inc.3, %for.body ]
  %niter = phi i64 [ 0, %for.body.preheader.new ], [ %niter.next.3, %for.body ]
  %arrayidx = getelementptr inbounds i8, i8* %add.ptr, i64 %n.040
  %2 = load i8, i8* %arrayidx, align 1, !tbaa !4
  %arrayidx6 = getelementptr inbounds i8, i8* %ivec, i64 %n.040
  %3 = load i8, i8* %arrayidx6, align 1, !tbaa !4
  %xor38 = xor i8 %3, %2
  store i8 %xor38, i8* %arrayidx6, align 1, !tbaa !4
  %inc = or i64 %n.040, 1
  %arrayidx.1 = getelementptr inbounds i8, i8* %add.ptr, i64 %inc
  %4 = load i8, i8* %arrayidx.1, align 1, !tbaa !4
  %arrayidx6.1 = getelementptr inbounds i8, i8* %ivec, i64 %inc
  %5 = load i8, i8* %arrayidx6.1, align 1, !tbaa !4
  %xor38.1 = xor i8 %5, %4
  store i8 %xor38.1, i8* %arrayidx6.1, align 1, !tbaa !4
  %inc.1 = or i64 %n.040, 2
  %arrayidx.2 = getelementptr inbounds i8, i8* %add.ptr, i64 %inc.1
  %6 = load i8, i8* %arrayidx.2, align 1, !tbaa !4
  %arrayidx6.2 = getelementptr inbounds i8, i8* %ivec, i64 %inc.1
  %7 = load i8, i8* %arrayidx6.2, align 1, !tbaa !4
  %xor38.2 = xor i8 %7, %6
  store i8 %xor38.2, i8* %arrayidx6.2, align 1, !tbaa !4
  %inc.2 = or i64 %n.040, 3
  %arrayidx.3 = getelementptr inbounds i8, i8* %add.ptr, i64 %inc.2
  %8 = load i8, i8* %arrayidx.3, align 1, !tbaa !4
  %arrayidx6.3 = getelementptr inbounds i8, i8* %ivec, i64 %inc.2
  %9 = load i8, i8* %arrayidx6.3, align 1, !tbaa !4
  %xor38.3 = xor i8 %9, %8
  store i8 %xor38.3, i8* %arrayidx6.3, align 1, !tbaa !4
  %inc.3 = add nuw nsw i64 %n.040, 4
  %niter.next.3 = add i64 %niter, 4
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %for.end.unr-lcssa, label %for.body, !llvm.loop !14

for.end.unr-lcssa:                                ; preds = %for.body, %for.body.preheader
  %n.040.unr = phi i64 [ 0, %for.body.preheader ], [ %inc.3, %for.body ]
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %for.end, label %for.body.epil

for.body.epil:                                    ; preds = %for.end.unr-lcssa, %for.body.epil
  %n.040.epil = phi i64 [ %inc.epil, %for.body.epil ], [ %n.040.unr, %for.end.unr-lcssa ]
  %epil.iter = phi i64 [ %epil.iter.next, %for.body.epil ], [ 0, %for.end.unr-lcssa ]
  %arrayidx.epil = getelementptr inbounds i8, i8* %add.ptr, i64 %n.040.epil
  %10 = load i8, i8* %arrayidx.epil, align 1, !tbaa !4
  %arrayidx6.epil = getelementptr inbounds i8, i8* %ivec, i64 %n.040.epil
  %11 = load i8, i8* %arrayidx6.epil, align 1, !tbaa !4
  %xor38.epil = xor i8 %11, %10
  store i8 %xor38.epil, i8* %arrayidx6.epil, align 1, !tbaa !4
  %inc.epil = add nuw nsw i64 %n.040.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %for.end, label %for.body.epil, !llvm.loop !15

for.end:                                          ; preds = %for.body.epil, %for.end.unr-lcssa
  tail call void %block(i8* noundef nonnull %ivec, i8* noundef nonnull %ivec, i8* noundef %key) #4
  %add.ptr9 = getelementptr inbounds i8, i8* %add.ptr4, i64 -16
  %add.ptr10 = getelementptr inbounds i8, i8* %add.ptr9, i64 %rem
  %call = tail call i8* @memcpy(i8* noundef nonnull %add.ptr10, i8* noundef nonnull %ivec, i64 noundef 16) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry, %for.end
  %retval.0 = phi i64 [ %len, %for.end ], [ 0, %entry ], [ %sub, %if.end ]
  ret i64 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i64 @CRYPTO_cts128_encrypt(i8* noundef %in, i8* noundef %out, i64 noundef %len, i8* noundef %key, i8* noundef %ivec, void (i8*, i8*, i64, i8*, i8*, i32)* nocapture noundef readonly %cbc) local_unnamed_addr #0 {
entry:
  %tmp = alloca %union.anon, align 8
  %0 = bitcast %union.anon* %tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #5
  %cmp = icmp ult i64 %len, 17
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %rem = and i64 %len, 15
  %cmp1 = icmp eq i64 %rem, 0
  %spec.store.select = select i1 %cmp1, i64 16, i64 %rem
  %sub = sub nuw i64 %len, %spec.store.select
  tail call void %cbc(i8* noundef %in, i8* noundef %out, i64 noundef %sub, i8* noundef %key, i8* noundef %ivec, i32 noundef 1) #4
  %add.ptr = getelementptr inbounds i8, i8* %in, i64 %sub
  %add.ptr4 = getelementptr inbounds i8, i8* %out, i64 %sub
  %call = call i8* @memset(i8* noundef nonnull %0, i32 noundef 0, i64 noundef 16) #4
  %call7 = call i8* @memcpy(i8* noundef nonnull %0, i8* noundef %add.ptr, i64 noundef %spec.store.select) #4
  %add.ptr8 = getelementptr inbounds i8, i8* %add.ptr4, i64 -16
  %call9 = call i8* @memcpy(i8* noundef %add.ptr4, i8* noundef nonnull %add.ptr8, i64 noundef %spec.store.select) #4
  call void %cbc(i8* noundef nonnull %0, i8* noundef nonnull %add.ptr8, i64 noundef 16, i8* noundef %key, i8* noundef %ivec, i32 noundef 1) #4
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i64 [ %len, %if.end ], [ 0, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #5
  ret i64 %retval.0
}

; Function Attrs: nounwind
declare i8* @memset(i8* noundef, i32 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define i64 @CRYPTO_nistcts128_encrypt(i8* noundef %in, i8* noundef %out, i64 noundef %len, i8* noundef %key, i8* noundef %ivec, void (i8*, i8*, i64, i8*, i8*, i32)* nocapture noundef readonly %cbc) local_unnamed_addr #0 {
entry:
  %tmp = alloca %union.anon.0, align 8
  %0 = bitcast %union.anon.0* %tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #5
  %cmp = icmp ult i64 %len, 16
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %rem = and i64 %len, 15
  %sub = and i64 %len, -16
  tail call void %cbc(i8* noundef %in, i8* noundef %out, i64 noundef %sub, i8* noundef %key, i8* noundef %ivec, i32 noundef 1) #4
  %cmp1 = icmp eq i64 %rem, 0
  br i1 %cmp1, label %cleanup, label %if.end3

if.end3:                                          ; preds = %if.end
  %add.ptr = getelementptr inbounds i8, i8* %in, i64 %sub
  %add.ptr4 = getelementptr inbounds i8, i8* %out, i64 %sub
  %call = call i8* @memset(i8* noundef nonnull %0, i32 noundef 0, i64 noundef 16) #4
  %call7 = call i8* @memcpy(i8* noundef nonnull %0, i8* noundef %add.ptr, i64 noundef %rem) #4
  %add.ptr10 = getelementptr inbounds i8, i8* %add.ptr4, i64 -16
  %add.ptr11 = getelementptr inbounds i8, i8* %add.ptr10, i64 %rem
  call void %cbc(i8* noundef nonnull %0, i8* noundef nonnull %add.ptr11, i64 noundef 16, i8* noundef %key, i8* noundef %ivec, i32 noundef 1) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry, %if.end3
  %retval.0 = phi i64 [ %len, %if.end3 ], [ 0, %entry ], [ %sub, %if.end ]
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #5
  ret i64 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i64 @CRYPTO_cts128_decrypt_block(i8* noundef %in, i8* noundef %out, i64 noundef %len, i8* noundef %key, i8* noundef %ivec, void (i8*, i8*, i8*)* noundef %block) local_unnamed_addr #0 {
entry:
  %tmp = alloca %union.anon.1, align 8
  %0 = bitcast %union.anon.1* %tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %0) #5
  %cmp = icmp ult i64 %len, 17
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %rem = and i64 %len, 15
  %cmp1 = icmp eq i64 %rem, 0
  %spec.store.select = select i1 %cmp1, i64 16, i64 %rem
  %add = add nuw nsw i64 %spec.store.select, 16
  %sub = sub i64 %len, %add
  %tobool.not = icmp eq i64 %sub, 0
  br i1 %tobool.not, label %iter.check, label %if.then4

if.then4:                                         ; preds = %if.end
  tail call void @CRYPTO_cbc128_decrypt(i8* noundef %in, i8* noundef %out, i64 noundef %sub, i8* noundef %key, i8* noundef %ivec, void (i8*, i8*, i8*)* noundef %block) #4
  %add.ptr = getelementptr inbounds i8, i8* %in, i64 %sub
  %add.ptr5 = getelementptr inbounds i8, i8* %out, i64 %sub
  br label %iter.check

iter.check:                                       ; preds = %if.end, %if.then4
  %out.addr.0 = phi i8* [ %add.ptr5, %if.then4 ], [ %out, %if.end ]
  %in.addr.0 = phi i8* [ %add.ptr, %if.then4 ], [ %in, %if.end ]
  %c = bitcast %union.anon.1* %tmp to [32 x i8]*
  %1 = getelementptr inbounds %union.anon.1, %union.anon.1* %tmp, i64 0, i32 1, i64 8
  call void %block(i8* noundef %in.addr.0, i8* noundef nonnull %1, i8* noundef %key) #4
  %call = call i8* @memcpy(i8* noundef nonnull %0, i8* noundef nonnull %1, i64 noundef 16) #4
  %add.ptr15 = getelementptr inbounds i8, i8* %in.addr.0, i64 16
  %call16 = call i8* @memcpy(i8* noundef nonnull %0, i8* noundef nonnull %add.ptr15, i64 noundef %spec.store.select) #4
  call void %block(i8* noundef nonnull %0, i8* noundef nonnull %0, i8* noundef %key) #4
  %2 = load i8, i8* %in.addr.0, align 1, !tbaa !4
  %arrayidx24 = bitcast %union.anon.1* %tmp to i8*
  %3 = load i8, i8* %arrayidx24, align 8, !tbaa !4
  %4 = load i8, i8* %ivec, align 1, !tbaa !4
  %xor89 = xor i8 %4, %3
  store i8 %xor89, i8* %out.addr.0, align 1, !tbaa !4
  store i8 %2, i8* %ivec, align 1, !tbaa !4
  %arrayidx.1 = getelementptr inbounds i8, i8* %in.addr.0, i64 1
  %5 = load i8, i8* %arrayidx.1, align 1, !tbaa !4
  %arrayidx24.1 = getelementptr inbounds [32 x i8], [32 x i8]* %c, i64 0, i64 1
  %6 = load i8, i8* %arrayidx24.1, align 1, !tbaa !4
  %arrayidx25.1 = getelementptr inbounds i8, i8* %ivec, i64 1
  %7 = load i8, i8* %arrayidx25.1, align 1, !tbaa !4
  %xor89.1 = xor i8 %7, %6
  %arrayidx28.1 = getelementptr inbounds i8, i8* %out.addr.0, i64 1
  store i8 %xor89.1, i8* %arrayidx28.1, align 1, !tbaa !4
  store i8 %5, i8* %arrayidx25.1, align 1, !tbaa !4
  %arrayidx.2 = getelementptr inbounds i8, i8* %in.addr.0, i64 2
  %8 = load i8, i8* %arrayidx.2, align 1, !tbaa !4
  %arrayidx24.2 = getelementptr inbounds [32 x i8], [32 x i8]* %c, i64 0, i64 2
  %9 = load i8, i8* %arrayidx24.2, align 2, !tbaa !4
  %arrayidx25.2 = getelementptr inbounds i8, i8* %ivec, i64 2
  %10 = load i8, i8* %arrayidx25.2, align 1, !tbaa !4
  %xor89.2 = xor i8 %10, %9
  %arrayidx28.2 = getelementptr inbounds i8, i8* %out.addr.0, i64 2
  store i8 %xor89.2, i8* %arrayidx28.2, align 1, !tbaa !4
  store i8 %8, i8* %arrayidx25.2, align 1, !tbaa !4
  %arrayidx.3 = getelementptr inbounds i8, i8* %in.addr.0, i64 3
  %11 = load i8, i8* %arrayidx.3, align 1, !tbaa !4
  %arrayidx24.3 = getelementptr inbounds [32 x i8], [32 x i8]* %c, i64 0, i64 3
  %12 = load i8, i8* %arrayidx24.3, align 1, !tbaa !4
  %arrayidx25.3 = getelementptr inbounds i8, i8* %ivec, i64 3
  %13 = load i8, i8* %arrayidx25.3, align 1, !tbaa !4
  %xor89.3 = xor i8 %13, %12
  %arrayidx28.3 = getelementptr inbounds i8, i8* %out.addr.0, i64 3
  store i8 %xor89.3, i8* %arrayidx28.3, align 1, !tbaa !4
  store i8 %11, i8* %arrayidx25.3, align 1, !tbaa !4
  %arrayidx.4 = getelementptr inbounds i8, i8* %in.addr.0, i64 4
  %14 = load i8, i8* %arrayidx.4, align 1, !tbaa !4
  %arrayidx24.4 = getelementptr inbounds [32 x i8], [32 x i8]* %c, i64 0, i64 4
  %15 = load i8, i8* %arrayidx24.4, align 4, !tbaa !4
  %arrayidx25.4 = getelementptr inbounds i8, i8* %ivec, i64 4
  %16 = load i8, i8* %arrayidx25.4, align 1, !tbaa !4
  %xor89.4 = xor i8 %16, %15
  %arrayidx28.4 = getelementptr inbounds i8, i8* %out.addr.0, i64 4
  store i8 %xor89.4, i8* %arrayidx28.4, align 1, !tbaa !4
  store i8 %14, i8* %arrayidx25.4, align 1, !tbaa !4
  %arrayidx.5 = getelementptr inbounds i8, i8* %in.addr.0, i64 5
  %17 = load i8, i8* %arrayidx.5, align 1, !tbaa !4
  %arrayidx24.5 = getelementptr inbounds [32 x i8], [32 x i8]* %c, i64 0, i64 5
  %18 = load i8, i8* %arrayidx24.5, align 1, !tbaa !4
  %arrayidx25.5 = getelementptr inbounds i8, i8* %ivec, i64 5
  %19 = load i8, i8* %arrayidx25.5, align 1, !tbaa !4
  %xor89.5 = xor i8 %19, %18
  %arrayidx28.5 = getelementptr inbounds i8, i8* %out.addr.0, i64 5
  store i8 %xor89.5, i8* %arrayidx28.5, align 1, !tbaa !4
  store i8 %17, i8* %arrayidx25.5, align 1, !tbaa !4
  %arrayidx.6 = getelementptr inbounds i8, i8* %in.addr.0, i64 6
  %20 = load i8, i8* %arrayidx.6, align 1, !tbaa !4
  %arrayidx24.6 = getelementptr inbounds [32 x i8], [32 x i8]* %c, i64 0, i64 6
  %21 = load i8, i8* %arrayidx24.6, align 2, !tbaa !4
  %arrayidx25.6 = getelementptr inbounds i8, i8* %ivec, i64 6
  %22 = load i8, i8* %arrayidx25.6, align 1, !tbaa !4
  %xor89.6 = xor i8 %22, %21
  %arrayidx28.6 = getelementptr inbounds i8, i8* %out.addr.0, i64 6
  store i8 %xor89.6, i8* %arrayidx28.6, align 1, !tbaa !4
  store i8 %20, i8* %arrayidx25.6, align 1, !tbaa !4
  %arrayidx.7 = getelementptr inbounds i8, i8* %in.addr.0, i64 7
  %23 = load i8, i8* %arrayidx.7, align 1, !tbaa !4
  %arrayidx24.7 = getelementptr inbounds [32 x i8], [32 x i8]* %c, i64 0, i64 7
  %24 = load i8, i8* %arrayidx24.7, align 1, !tbaa !4
  %arrayidx25.7 = getelementptr inbounds i8, i8* %ivec, i64 7
  %25 = load i8, i8* %arrayidx25.7, align 1, !tbaa !4
  %xor89.7 = xor i8 %25, %24
  %arrayidx28.7 = getelementptr inbounds i8, i8* %out.addr.0, i64 7
  store i8 %xor89.7, i8* %arrayidx28.7, align 1, !tbaa !4
  store i8 %23, i8* %arrayidx25.7, align 1, !tbaa !4
  %arrayidx.8 = getelementptr inbounds i8, i8* %in.addr.0, i64 8
  %26 = load i8, i8* %arrayidx.8, align 1, !tbaa !4
  %27 = getelementptr inbounds %union.anon.1, %union.anon.1* %tmp, i64 0, i32 1, i64 0
  %28 = load i8, i8* %27, align 8, !tbaa !4
  %arrayidx25.8 = getelementptr inbounds i8, i8* %ivec, i64 8
  %29 = load i8, i8* %arrayidx25.8, align 1, !tbaa !4
  %xor89.8 = xor i8 %29, %28
  %arrayidx28.8 = getelementptr inbounds i8, i8* %out.addr.0, i64 8
  store i8 %xor89.8, i8* %arrayidx28.8, align 1, !tbaa !4
  store i8 %26, i8* %arrayidx25.8, align 1, !tbaa !4
  %arrayidx.9 = getelementptr inbounds i8, i8* %in.addr.0, i64 9
  %30 = load i8, i8* %arrayidx.9, align 1, !tbaa !4
  %31 = getelementptr inbounds %union.anon.1, %union.anon.1* %tmp, i64 0, i32 1, i64 1
  %32 = load i8, i8* %31, align 1, !tbaa !4
  %arrayidx25.9 = getelementptr inbounds i8, i8* %ivec, i64 9
  %33 = load i8, i8* %arrayidx25.9, align 1, !tbaa !4
  %xor89.9 = xor i8 %33, %32
  %arrayidx28.9 = getelementptr inbounds i8, i8* %out.addr.0, i64 9
  store i8 %xor89.9, i8* %arrayidx28.9, align 1, !tbaa !4
  store i8 %30, i8* %arrayidx25.9, align 1, !tbaa !4
  %arrayidx.10 = getelementptr inbounds i8, i8* %in.addr.0, i64 10
  %34 = load i8, i8* %arrayidx.10, align 1, !tbaa !4
  %35 = getelementptr inbounds %union.anon.1, %union.anon.1* %tmp, i64 0, i32 1, i64 2
  %36 = load i8, i8* %35, align 2, !tbaa !4
  %arrayidx25.10 = getelementptr inbounds i8, i8* %ivec, i64 10
  %37 = load i8, i8* %arrayidx25.10, align 1, !tbaa !4
  %xor89.10 = xor i8 %37, %36
  %arrayidx28.10 = getelementptr inbounds i8, i8* %out.addr.0, i64 10
  store i8 %xor89.10, i8* %arrayidx28.10, align 1, !tbaa !4
  store i8 %34, i8* %arrayidx25.10, align 1, !tbaa !4
  %arrayidx.11 = getelementptr inbounds i8, i8* %in.addr.0, i64 11
  %38 = load i8, i8* %arrayidx.11, align 1, !tbaa !4
  %39 = getelementptr inbounds %union.anon.1, %union.anon.1* %tmp, i64 0, i32 1, i64 3
  %40 = load i8, i8* %39, align 1, !tbaa !4
  %arrayidx25.11 = getelementptr inbounds i8, i8* %ivec, i64 11
  %41 = load i8, i8* %arrayidx25.11, align 1, !tbaa !4
  %xor89.11 = xor i8 %41, %40
  %arrayidx28.11 = getelementptr inbounds i8, i8* %out.addr.0, i64 11
  store i8 %xor89.11, i8* %arrayidx28.11, align 1, !tbaa !4
  store i8 %38, i8* %arrayidx25.11, align 1, !tbaa !4
  %arrayidx.12 = getelementptr inbounds i8, i8* %in.addr.0, i64 12
  %42 = load i8, i8* %arrayidx.12, align 1, !tbaa !4
  %43 = getelementptr inbounds %union.anon.1, %union.anon.1* %tmp, i64 0, i32 1, i64 4
  %44 = load i8, i8* %43, align 4, !tbaa !4
  %arrayidx25.12 = getelementptr inbounds i8, i8* %ivec, i64 12
  %45 = load i8, i8* %arrayidx25.12, align 1, !tbaa !4
  %xor89.12 = xor i8 %45, %44
  %arrayidx28.12 = getelementptr inbounds i8, i8* %out.addr.0, i64 12
  store i8 %xor89.12, i8* %arrayidx28.12, align 1, !tbaa !4
  store i8 %42, i8* %arrayidx25.12, align 1, !tbaa !4
  %arrayidx.13 = getelementptr inbounds i8, i8* %in.addr.0, i64 13
  %46 = load i8, i8* %arrayidx.13, align 1, !tbaa !4
  %47 = getelementptr inbounds %union.anon.1, %union.anon.1* %tmp, i64 0, i32 1, i64 5
  %48 = load i8, i8* %47, align 1, !tbaa !4
  %arrayidx25.13 = getelementptr inbounds i8, i8* %ivec, i64 13
  %49 = load i8, i8* %arrayidx25.13, align 1, !tbaa !4
  %xor89.13 = xor i8 %49, %48
  %arrayidx28.13 = getelementptr inbounds i8, i8* %out.addr.0, i64 13
  store i8 %xor89.13, i8* %arrayidx28.13, align 1, !tbaa !4
  store i8 %46, i8* %arrayidx25.13, align 1, !tbaa !4
  %arrayidx.14 = getelementptr inbounds i8, i8* %in.addr.0, i64 14
  %50 = load i8, i8* %arrayidx.14, align 1, !tbaa !4
  %51 = getelementptr inbounds %union.anon.1, %union.anon.1* %tmp, i64 0, i32 1, i64 6
  %52 = load i8, i8* %51, align 2, !tbaa !4
  %arrayidx25.14 = getelementptr inbounds i8, i8* %ivec, i64 14
  %53 = load i8, i8* %arrayidx25.14, align 1, !tbaa !4
  %xor89.14 = xor i8 %53, %52
  %arrayidx28.14 = getelementptr inbounds i8, i8* %out.addr.0, i64 14
  store i8 %xor89.14, i8* %arrayidx28.14, align 1, !tbaa !4
  store i8 %50, i8* %arrayidx25.14, align 1, !tbaa !4
  %arrayidx.15 = getelementptr inbounds i8, i8* %in.addr.0, i64 15
  %54 = load i8, i8* %arrayidx.15, align 1, !tbaa !4
  %55 = getelementptr inbounds %union.anon.1, %union.anon.1* %tmp, i64 0, i32 1, i64 7
  %56 = load i8, i8* %55, align 1, !tbaa !4
  %arrayidx25.15 = getelementptr inbounds i8, i8* %ivec, i64 15
  %57 = load i8, i8* %arrayidx25.15, align 1, !tbaa !4
  %xor89.15 = xor i8 %57, %56
  %arrayidx28.15 = getelementptr inbounds i8, i8* %out.addr.0, i64 15
  store i8 %xor89.15, i8* %arrayidx28.15, align 1, !tbaa !4
  store i8 %54, i8* %arrayidx25.15, align 1, !tbaa !4
  %min.iters.check = icmp ult i64 %spec.store.select, 8
  br i1 %min.iters.check, label %for.body34.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %scevgep = getelementptr i8, i8* %out.addr.0, i64 16
  %scevgep93 = getelementptr i8, i8* %out.addr.0, i64 %add
  %scevgep94 = getelementptr i8, i8* %in.addr.0, i64 16
  %scevgep95 = getelementptr i8, i8* %in.addr.0, i64 %add
  %bound0 = icmp ult i8* %scevgep, %scevgep95
  %bound1 = icmp ult i8* %scevgep94, %scevgep93
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %for.body34.preheader, label %vec.epilog.ph

vec.epilog.ph:                                    ; preds = %vector.memcheck
  %n.vec101 = and i64 %spec.store.select, 24
  %ind.end = add nuw nsw i64 %n.vec101, 16
  %58 = getelementptr inbounds %union.anon.1, %union.anon.1* %tmp, i64 0, i32 1, i64 8
  %59 = bitcast i8* %58 to <8 x i8>*
  %wide.load106 = load <8 x i8>, <8 x i8>* %59, align 8, !tbaa !4
  %60 = getelementptr inbounds i8, i8* %in.addr.0, i64 16
  %61 = bitcast i8* %60 to <8 x i8>*
  %wide.load107 = load <8 x i8>, <8 x i8>* %61, align 1, !tbaa !4
  %62 = xor <8 x i8> %wide.load107, %wide.load106
  %63 = getelementptr inbounds i8, i8* %out.addr.0, i64 16
  %64 = bitcast i8* %63 to <8 x i8>*
  store <8 x i8> %62, <8 x i8>* %64, align 1, !tbaa !4
  %65 = icmp eq i64 %n.vec101, 8
  br i1 %65, label %vec.epilog.middle.block, label %vec.epilog.vector.body.1, !llvm.loop !16

vec.epilog.vector.body.1:                         ; preds = %vec.epilog.ph
  %66 = getelementptr inbounds %union.anon.1, %union.anon.1* %tmp, i64 0, i32 1, i64 16
  %67 = bitcast i8* %66 to <8 x i8>*
  %wide.load106.1 = load <8 x i8>, <8 x i8>* %67, align 8, !tbaa !4
  %68 = getelementptr inbounds i8, i8* %in.addr.0, i64 24
  %69 = bitcast i8* %68 to <8 x i8>*
  %wide.load107.1 = load <8 x i8>, <8 x i8>* %69, align 1, !tbaa !4
  %70 = xor <8 x i8> %wide.load107.1, %wide.load106.1
  %71 = getelementptr inbounds i8, i8* %out.addr.0, i64 24
  %72 = bitcast i8* %71 to <8 x i8>*
  store <8 x i8> %70, <8 x i8>* %72, align 1, !tbaa !4
  %73 = icmp eq i64 %n.vec101, 16
  br i1 %73, label %vec.epilog.middle.block, label %vec.epilog.vector.body.2, !llvm.loop !16

vec.epilog.vector.body.2:                         ; preds = %vec.epilog.vector.body.1
  %74 = getelementptr inbounds %union.anon.1, %union.anon.1* %tmp, i64 1
  %75 = bitcast %union.anon.1* %74 to <8 x i8>*
  %wide.load106.2 = load <8 x i8>, <8 x i8>* %75, align 8, !tbaa !4
  %76 = getelementptr inbounds i8, i8* %in.addr.0, i64 32
  %77 = bitcast i8* %76 to <8 x i8>*
  %wide.load107.2 = load <8 x i8>, <8 x i8>* %77, align 1, !tbaa !4
  %78 = xor <8 x i8> %wide.load107.2, %wide.load106.2
  %79 = getelementptr inbounds i8, i8* %out.addr.0, i64 32
  %80 = bitcast i8* %79 to <8 x i8>*
  store <8 x i8> %78, <8 x i8>* %80, align 1, !tbaa !4
  br label %vec.epilog.middle.block

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body.2, %vec.epilog.vector.body.1, %vec.epilog.ph
  %cmp.n103 = icmp eq i64 %spec.store.select, %n.vec101
  br i1 %cmp.n103, label %for.end45, label %for.body34.preheader

for.body34.preheader:                             ; preds = %vector.memcheck, %iter.check, %vec.epilog.middle.block
  %n.192.ph = phi i64 [ 16, %iter.check ], [ 16, %vector.memcheck ], [ %ind.end, %vec.epilog.middle.block ]
  %81 = sub nsw i64 %spec.store.select, %n.192.ph
  %82 = add nuw nsw i64 %spec.store.select, 15
  %83 = sub nsw i64 %82, %n.192.ph
  %xtraiter = and i64 %81, 3
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %for.body34.prol.loopexit, label %for.body34.prol

for.body34.prol:                                  ; preds = %for.body34.preheader, %for.body34.prol
  %n.192.prol = phi i64 [ %inc44.prol, %for.body34.prol ], [ %n.192.ph, %for.body34.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %for.body34.prol ], [ 0, %for.body34.preheader ]
  %arrayidx36.prol = getelementptr inbounds [32 x i8], [32 x i8]* %c, i64 0, i64 %n.192.prol
  %84 = load i8, i8* %arrayidx36.prol, align 1, !tbaa !4
  %arrayidx38.prol = getelementptr inbounds i8, i8* %in.addr.0, i64 %n.192.prol
  %85 = load i8, i8* %arrayidx38.prol, align 1, !tbaa !4
  %xor4088.prol = xor i8 %85, %84
  %arrayidx42.prol = getelementptr inbounds i8, i8* %out.addr.0, i64 %n.192.prol
  store i8 %xor4088.prol, i8* %arrayidx42.prol, align 1, !tbaa !4
  %inc44.prol = add nuw nsw i64 %n.192.prol, 1
  %prol.iter.next = add i64 %prol.iter, 1
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %for.body34.prol.loopexit, label %for.body34.prol, !llvm.loop !17

for.body34.prol.loopexit:                         ; preds = %for.body34.prol, %for.body34.preheader
  %n.192.unr = phi i64 [ %n.192.ph, %for.body34.preheader ], [ %inc44.prol, %for.body34.prol ]
  %86 = icmp ult i64 %83, 3
  br i1 %86, label %for.end45, label %for.body34

for.body34:                                       ; preds = %for.body34.prol.loopexit, %for.body34
  %n.192 = phi i64 [ %inc44.3, %for.body34 ], [ %n.192.unr, %for.body34.prol.loopexit ]
  %arrayidx36 = getelementptr inbounds [32 x i8], [32 x i8]* %c, i64 0, i64 %n.192
  %87 = load i8, i8* %arrayidx36, align 1, !tbaa !4
  %arrayidx38 = getelementptr inbounds i8, i8* %in.addr.0, i64 %n.192
  %88 = load i8, i8* %arrayidx38, align 1, !tbaa !4
  %xor4088 = xor i8 %88, %87
  %arrayidx42 = getelementptr inbounds i8, i8* %out.addr.0, i64 %n.192
  store i8 %xor4088, i8* %arrayidx42, align 1, !tbaa !4
  %inc44 = add nuw nsw i64 %n.192, 1
  %arrayidx36.1 = getelementptr inbounds [32 x i8], [32 x i8]* %c, i64 0, i64 %inc44
  %89 = load i8, i8* %arrayidx36.1, align 1, !tbaa !4
  %arrayidx38.1 = getelementptr inbounds i8, i8* %in.addr.0, i64 %inc44
  %90 = load i8, i8* %arrayidx38.1, align 1, !tbaa !4
  %xor4088.1 = xor i8 %90, %89
  %arrayidx42.1 = getelementptr inbounds i8, i8* %out.addr.0, i64 %inc44
  store i8 %xor4088.1, i8* %arrayidx42.1, align 1, !tbaa !4
  %inc44.1 = add nuw nsw i64 %n.192, 2
  %arrayidx36.2 = getelementptr inbounds [32 x i8], [32 x i8]* %c, i64 0, i64 %inc44.1
  %91 = load i8, i8* %arrayidx36.2, align 1, !tbaa !4
  %arrayidx38.2 = getelementptr inbounds i8, i8* %in.addr.0, i64 %inc44.1
  %92 = load i8, i8* %arrayidx38.2, align 1, !tbaa !4
  %xor4088.2 = xor i8 %92, %91
  %arrayidx42.2 = getelementptr inbounds i8, i8* %out.addr.0, i64 %inc44.1
  store i8 %xor4088.2, i8* %arrayidx42.2, align 1, !tbaa !4
  %inc44.2 = add nuw nsw i64 %n.192, 3
  %arrayidx36.3 = getelementptr inbounds [32 x i8], [32 x i8]* %c, i64 0, i64 %inc44.2
  %93 = load i8, i8* %arrayidx36.3, align 1, !tbaa !4
  %arrayidx38.3 = getelementptr inbounds i8, i8* %in.addr.0, i64 %inc44.2
  %94 = load i8, i8* %arrayidx38.3, align 1, !tbaa !4
  %xor4088.3 = xor i8 %94, %93
  %arrayidx42.3 = getelementptr inbounds i8, i8* %out.addr.0, i64 %inc44.2
  store i8 %xor4088.3, i8* %arrayidx42.3, align 1, !tbaa !4
  %inc44.3 = add nuw nsw i64 %n.192, 4
  %exitcond.not.3 = icmp eq i64 %inc44.3, %add
  br i1 %exitcond.not.3, label %for.end45, label %for.body34, !llvm.loop !18

for.end45:                                        ; preds = %for.body34.prol.loopexit, %for.body34, %vec.epilog.middle.block
  %add47 = add i64 %len, 16
  br label %cleanup

cleanup:                                          ; preds = %entry, %for.end45
  %retval.0 = phi i64 [ %add47, %for.end45 ], [ 0, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #5
  ret i64 %retval.0
}

declare void @CRYPTO_cbc128_decrypt(i8* noundef, i8* noundef, i64 noundef, i8* noundef, i8* noundef, void (i8*, i8*, i8*)* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i64 @CRYPTO_nistcts128_decrypt_block(i8* noundef %in, i8* noundef %out, i64 noundef %len, i8* noundef %key, i8* noundef %ivec, void (i8*, i8*, i8*)* noundef %block) local_unnamed_addr #0 {
entry:
  %tmp = alloca %union.anon.2, align 16
  %0 = bitcast %union.anon.2* %tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %0) #5
  %cmp = icmp ult i64 %len, 16
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %rem = and i64 %len, 15
  %cmp1 = icmp eq i64 %rem, 0
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  tail call void @CRYPTO_cbc128_decrypt(i8* noundef %in, i8* noundef %out, i64 noundef %len, i8* noundef %key, i8* noundef %ivec, void (i8*, i8*, i8*)* noundef %block) #4
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %add = or i64 %rem, 16
  %sub = sub i64 %len, %add
  %tobool.not = icmp eq i64 %sub, 0
  br i1 %tobool.not, label %iter.check, label %if.then4

if.then4:                                         ; preds = %if.end3
  tail call void @CRYPTO_cbc128_decrypt(i8* noundef %in, i8* noundef %out, i64 noundef %sub, i8* noundef %key, i8* noundef %ivec, void (i8*, i8*, i8*)* noundef %block) #4
  %add.ptr = getelementptr inbounds i8, i8* %in, i64 %sub
  %add.ptr5 = getelementptr inbounds i8, i8* %out, i64 %sub
  br label %iter.check

iter.check:                                       ; preds = %if.then4, %if.end3
  %out.addr.0 = phi i8* [ %add.ptr5, %if.then4 ], [ %out, %if.end3 ]
  %in.addr.0 = phi i8* [ %add.ptr, %if.then4 ], [ %in, %if.end3 ]
  %add.ptr7 = getelementptr inbounds i8, i8* %in.addr.0, i64 %rem
  %c = bitcast %union.anon.2* %tmp to [32 x i8]*
  %1 = getelementptr inbounds %union.anon.2, %union.anon.2* %tmp, i64 0, i32 1, i64 8
  call void %block(i8* noundef nonnull %add.ptr7, i8* noundef nonnull %1, i8* noundef %key) #4
  %call = call i8* @memcpy(i8* noundef nonnull %0, i8* noundef nonnull %1, i64 noundef 16) #4
  %call16 = call i8* @memcpy(i8* noundef nonnull %0, i8* noundef %in.addr.0, i64 noundef %rem) #4
  call void %block(i8* noundef nonnull %0, i8* noundef nonnull %0, i8* noundef %key) #4
  %scevgep = getelementptr i8, i8* %out.addr.0, i64 16
  %scevgep112 = getelementptr i8, i8* %ivec, i64 16
  %scevgep113 = getelementptr i8, i8* %in.addr.0, i64 %rem
  %2 = or i64 %rem, 16
  %scevgep114 = getelementptr i8, i8* %in.addr.0, i64 %2
  %scevgep115 = getelementptr i8, i8* %in.addr.0, i64 16
  %bound0 = icmp ult i8* %out.addr.0, %scevgep112
  %bound1 = icmp ugt i8* %scevgep, %ivec
  %found.conflict = and i1 %bound0, %bound1
  %bound0116 = icmp ult i8* %out.addr.0, %scevgep114
  %bound1117 = icmp ult i8* %scevgep113, %scevgep
  %found.conflict118 = and i1 %bound0116, %bound1117
  %conflict.rdx = or i1 %found.conflict, %found.conflict118
  %bound0119 = icmp ult i8* %out.addr.0, %scevgep115
  %bound1120 = icmp ult i8* %in.addr.0, %scevgep
  %found.conflict121 = and i1 %bound0119, %bound1120
  %conflict.rdx122 = or i1 %conflict.rdx, %found.conflict121
  %bound0123 = icmp ugt i8* %scevgep114, %ivec
  %bound1124 = icmp ult i8* %scevgep113, %scevgep112
  %found.conflict125 = and i1 %bound0123, %bound1124
  %conflict.rdx126 = or i1 %conflict.rdx122, %found.conflict125
  %bound0127 = icmp ugt i8* %scevgep115, %ivec
  %bound1128 = icmp ult i8* %in.addr.0, %scevgep112
  %found.conflict129 = and i1 %bound0127, %bound1128
  %conflict.rdx130 = or i1 %conflict.rdx126, %found.conflict129
  br i1 %conflict.rdx130, label %for.body, label %vector.body

vector.body:                                      ; preds = %iter.check
  %3 = bitcast i8* %in.addr.0 to <16 x i8>*
  %wide.load = load <16 x i8>, <16 x i8>* %3, align 1, !tbaa !4, !alias.scope !19
  %4 = bitcast %union.anon.2* %tmp to <16 x i8>*
  %wide.load131 = load <16 x i8>, <16 x i8>* %4, align 16, !tbaa !4
  %5 = bitcast i8* %ivec to <16 x i8>*
  %wide.load132 = load <16 x i8>, <16 x i8>* %5, align 1, !tbaa !4, !alias.scope !22, !noalias !24
  %6 = xor <16 x i8> %wide.load132, %wide.load131
  %7 = bitcast i8* %out.addr.0 to <16 x i8>*
  store <16 x i8> %6, <16 x i8>* %7, align 1, !tbaa !4, !alias.scope !26, !noalias !28
  %8 = getelementptr inbounds i8, i8* %in.addr.0, i64 %rem
  %9 = bitcast i8* %8 to <16 x i8>*
  %wide.load133 = load <16 x i8>, <16 x i8>* %9, align 1, !tbaa !4, !alias.scope !29
  %10 = bitcast i8* %ivec to <16 x i8>*
  store <16 x i8> %wide.load133, <16 x i8>* %10, align 1, !tbaa !4, !alias.scope !22, !noalias !24
  %11 = bitcast %union.anon.2* %tmp to <16 x i8>*
  store <16 x i8> %wide.load, <16 x i8>* %11, align 16, !tbaa !4
  br label %for.cond35.preheader

for.cond35.preheader:                             ; preds = %for.body, %vector.body
  %cmp36109.not = icmp eq i64 %add, 16
  br i1 %cmp36109.not, label %for.end51, label %for.body38.preheader

for.body38.preheader:                             ; preds = %for.cond35.preheader
  %xtraiter = and i64 %len, 1
  %12 = icmp eq i64 %rem, 1
  br i1 %12, label %for.end51.loopexit.unr-lcssa, label %for.body38.preheader.new

for.body38.preheader.new:                         ; preds = %for.body38.preheader
  %unroll_iter = sub nsw i64 %rem, %xtraiter
  br label %for.body38

for.body:                                         ; preds = %iter.check, %for.body
  %n.0108 = phi i64 [ %inc.1, %for.body ], [ 0, %iter.check ]
  %arrayidx = getelementptr inbounds i8, i8* %in.addr.0, i64 %n.0108
  %13 = load i8, i8* %arrayidx, align 1, !tbaa !4
  %arrayidx24 = getelementptr inbounds [32 x i8], [32 x i8]* %c, i64 0, i64 %n.0108
  %14 = load i8, i8* %arrayidx24, align 2, !tbaa !4
  %arrayidx25 = getelementptr inbounds i8, i8* %ivec, i64 %n.0108
  %15 = load i8, i8* %arrayidx25, align 1, !tbaa !4
  %xor107 = xor i8 %15, %14
  %arrayidx28 = getelementptr inbounds i8, i8* %out.addr.0, i64 %n.0108
  store i8 %xor107, i8* %arrayidx28, align 1, !tbaa !4
  %add29 = add nuw nsw i64 %n.0108, %rem
  %arrayidx30 = getelementptr inbounds i8, i8* %in.addr.0, i64 %add29
  %16 = load i8, i8* %arrayidx30, align 1, !tbaa !4
  store i8 %16, i8* %arrayidx25, align 1, !tbaa !4
  store i8 %13, i8* %arrayidx24, align 2, !tbaa !4
  %inc = or i64 %n.0108, 1
  %arrayidx.1 = getelementptr inbounds i8, i8* %in.addr.0, i64 %inc
  %17 = load i8, i8* %arrayidx.1, align 1, !tbaa !4
  %arrayidx24.1 = getelementptr inbounds [32 x i8], [32 x i8]* %c, i64 0, i64 %inc
  %18 = load i8, i8* %arrayidx24.1, align 1, !tbaa !4
  %arrayidx25.1 = getelementptr inbounds i8, i8* %ivec, i64 %inc
  %19 = load i8, i8* %arrayidx25.1, align 1, !tbaa !4
  %xor107.1 = xor i8 %19, %18
  %arrayidx28.1 = getelementptr inbounds i8, i8* %out.addr.0, i64 %inc
  store i8 %xor107.1, i8* %arrayidx28.1, align 1, !tbaa !4
  %add29.1 = add nuw nsw i64 %inc, %rem
  %arrayidx30.1 = getelementptr inbounds i8, i8* %in.addr.0, i64 %add29.1
  %20 = load i8, i8* %arrayidx30.1, align 1, !tbaa !4
  store i8 %20, i8* %arrayidx25.1, align 1, !tbaa !4
  store i8 %17, i8* %arrayidx24.1, align 1, !tbaa !4
  %inc.1 = add nuw nsw i64 %n.0108, 2
  %exitcond.not.1 = icmp eq i64 %inc.1, 16
  br i1 %exitcond.not.1, label %for.cond35.preheader, label %for.body, !llvm.loop !30

for.body38:                                       ; preds = %for.body38, %for.body38.preheader.new
  %n.1110 = phi i64 [ 16, %for.body38.preheader.new ], [ %inc50.1, %for.body38 ]
  %niter = phi i64 [ 0, %for.body38.preheader.new ], [ %niter.next.1, %for.body38 ]
  %arrayidx40 = getelementptr inbounds [32 x i8], [32 x i8]* %c, i64 0, i64 %n.1110
  %21 = load i8, i8* %arrayidx40, align 2, !tbaa !4
  %sub43 = add nsw i64 %n.1110, -16
  %arrayidx44 = getelementptr inbounds [32 x i8], [32 x i8]* %c, i64 0, i64 %sub43
  %22 = load i8, i8* %arrayidx44, align 2, !tbaa !4
  %xor46106 = xor i8 %22, %21
  %arrayidx48 = getelementptr inbounds i8, i8* %out.addr.0, i64 %n.1110
  store i8 %xor46106, i8* %arrayidx48, align 1, !tbaa !4
  %inc50 = or i64 %n.1110, 1
  %arrayidx40.1 = getelementptr inbounds [32 x i8], [32 x i8]* %c, i64 0, i64 %inc50
  %23 = load i8, i8* %arrayidx40.1, align 1, !tbaa !4
  %sub43.1 = add nsw i64 %n.1110, -15
  %arrayidx44.1 = getelementptr inbounds [32 x i8], [32 x i8]* %c, i64 0, i64 %sub43.1
  %24 = load i8, i8* %arrayidx44.1, align 1, !tbaa !4
  %xor46106.1 = xor i8 %24, %23
  %arrayidx48.1 = getelementptr inbounds i8, i8* %out.addr.0, i64 %inc50
  store i8 %xor46106.1, i8* %arrayidx48.1, align 1, !tbaa !4
  %inc50.1 = add nuw nsw i64 %n.1110, 2
  %niter.next.1 = add i64 %niter, 2
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %for.end51.loopexit.unr-lcssa, label %for.body38, !llvm.loop !31

for.end51.loopexit.unr-lcssa:                     ; preds = %for.body38, %for.body38.preheader
  %n.1110.unr = phi i64 [ 16, %for.body38.preheader ], [ %inc50.1, %for.body38 ]
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %for.end51, label %for.body38.epil

for.body38.epil:                                  ; preds = %for.end51.loopexit.unr-lcssa
  %arrayidx40.epil = getelementptr inbounds [32 x i8], [32 x i8]* %c, i64 0, i64 %n.1110.unr
  %25 = load i8, i8* %arrayidx40.epil, align 1, !tbaa !4
  %sub43.epil = add nsw i64 %n.1110.unr, -16
  %arrayidx44.epil = getelementptr inbounds [32 x i8], [32 x i8]* %c, i64 0, i64 %sub43.epil
  %26 = load i8, i8* %arrayidx44.epil, align 1, !tbaa !4
  %xor46106.epil = xor i8 %26, %25
  %arrayidx48.epil = getelementptr inbounds i8, i8* %out.addr.0, i64 %n.1110.unr
  store i8 %xor46106.epil, i8* %arrayidx48.epil, align 1, !tbaa !4
  br label %for.end51

for.end51:                                        ; preds = %for.body38.epil, %for.end51.loopexit.unr-lcssa, %for.cond35.preheader
  %add53 = add i64 %len, 16
  br label %cleanup

cleanup:                                          ; preds = %entry, %for.end51, %if.then2
  %retval.0 = phi i64 [ %len, %if.then2 ], [ %add53, %for.end51 ], [ 0, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #5
  ret i64 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i64 @CRYPTO_cts128_decrypt(i8* noundef %in, i8* noundef %out, i64 noundef %len, i8* noundef %key, i8* noundef %ivec, void (i8*, i8*, i64, i8*, i8*, i32)* nocapture noundef readonly %cbc) local_unnamed_addr #0 {
entry:
  %tmp = alloca %union.anon.3, align 8
  %0 = bitcast %union.anon.3* %tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %0) #5
  %cmp = icmp ult i64 %len, 17
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %rem = and i64 %len, 15
  %cmp1 = icmp eq i64 %rem, 0
  %spec.store.select = select i1 %cmp1, i64 16, i64 %rem
  %add = add nuw nsw i64 %spec.store.select, 16
  %sub = sub i64 %len, %add
  %tobool.not = icmp eq i64 %sub, 0
  br i1 %tobool.not, label %if.end6, label %if.then4

if.then4:                                         ; preds = %if.end
  tail call void %cbc(i8* noundef %in, i8* noundef %out, i64 noundef %sub, i8* noundef %key, i8* noundef %ivec, i32 noundef 0) #4
  %add.ptr = getelementptr inbounds i8, i8* %in, i64 %sub
  %add.ptr5 = getelementptr inbounds i8, i8* %out, i64 %sub
  br label %if.end6

if.end6:                                          ; preds = %if.then4, %if.end
  %out.addr.0 = phi i8* [ %add.ptr5, %if.then4 ], [ %out, %if.end ]
  %in.addr.0 = phi i8* [ %add.ptr, %if.then4 ], [ %in, %if.end ]
  %call = call i8* @memset(i8* noundef nonnull %0, i32 noundef 0, i64 noundef 32) #4
  %1 = getelementptr inbounds %union.anon.3, %union.anon.3* %tmp, i64 0, i32 1, i64 8
  call void %cbc(i8* noundef %in.addr.0, i8* noundef nonnull %0, i64 noundef 16, i8* noundef %key, i8* noundef nonnull %1, i32 noundef 0) #4
  %add.ptr14 = getelementptr inbounds i8, i8* %in.addr.0, i64 16
  %call15 = call i8* @memcpy(i8* noundef nonnull %0, i8* noundef nonnull %add.ptr14, i64 noundef %spec.store.select) #4
  call void %cbc(i8* noundef nonnull %0, i8* noundef nonnull %0, i64 noundef 32, i8* noundef %key, i8* noundef %ivec, i32 noundef 0) #4
  %call23 = call i8* @memcpy(i8* noundef %out.addr.0, i8* noundef nonnull %0, i64 noundef %add) #4
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end6
  %retval.0 = phi i64 [ %len, %if.end6 ], [ 0, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #5
  ret i64 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i64 @CRYPTO_nistcts128_decrypt(i8* noundef %in, i8* noundef %out, i64 noundef %len, i8* noundef %key, i8* noundef %ivec, void (i8*, i8*, i64, i8*, i8*, i32)* nocapture noundef readonly %cbc) local_unnamed_addr #0 {
entry:
  %tmp = alloca %union.anon.4, align 8
  %0 = bitcast %union.anon.4* %tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %0) #5
  %cmp = icmp ult i64 %len, 16
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %rem = and i64 %len, 15
  %cmp1 = icmp eq i64 %rem, 0
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  tail call void %cbc(i8* noundef %in, i8* noundef %out, i64 noundef %len, i8* noundef %key, i8* noundef %ivec, i32 noundef 0) #4
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %add = or i64 %rem, 16
  %sub = sub i64 %len, %add
  %tobool.not = icmp eq i64 %sub, 0
  br i1 %tobool.not, label %if.end6, label %if.then4

if.then4:                                         ; preds = %if.end3
  tail call void %cbc(i8* noundef %in, i8* noundef %out, i64 noundef %sub, i8* noundef %key, i8* noundef %ivec, i32 noundef 0) #4
  %add.ptr = getelementptr inbounds i8, i8* %in, i64 %sub
  %add.ptr5 = getelementptr inbounds i8, i8* %out, i64 %sub
  br label %if.end6

if.end6:                                          ; preds = %if.then4, %if.end3
  %out.addr.0 = phi i8* [ %add.ptr5, %if.then4 ], [ %out, %if.end3 ]
  %in.addr.0 = phi i8* [ %add.ptr, %if.then4 ], [ %in, %if.end3 ]
  %call = call i8* @memset(i8* noundef nonnull %0, i32 noundef 0, i64 noundef 32) #4
  %add.ptr7 = getelementptr inbounds i8, i8* %in.addr.0, i64 %rem
  %1 = getelementptr inbounds %union.anon.4, %union.anon.4* %tmp, i64 0, i32 1, i64 8
  call void %cbc(i8* noundef nonnull %add.ptr7, i8* noundef nonnull %0, i64 noundef 16, i8* noundef %key, i8* noundef nonnull %1, i32 noundef 0) #4
  %call15 = call i8* @memcpy(i8* noundef nonnull %0, i8* noundef %in.addr.0, i64 noundef %rem) #4
  call void %cbc(i8* noundef nonnull %0, i8* noundef nonnull %0, i64 noundef 32, i8* noundef %key, i8* noundef %ivec, i32 noundef 0) #4
  %call23 = call i8* @memcpy(i8* noundef %out.addr.0, i8* noundef nonnull %0, i64 noundef %add) #4
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end6, %if.then2
  %retval.0 = phi i64 [ %len, %if.then2 ], [ %len, %if.end6 ], [ 0, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #5
  ret i64 %retval.0
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nobuiltin nounwind "no-builtins" }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{!"clang version 14.0.0"}
!4 = !{!5, !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = distinct !{!7, !8, !9, !10}
!8 = !{!"llvm.loop.mustprogress"}
!9 = !{!"llvm.loop.isvectorized", i32 1}
!10 = !{!"llvm.loop.unroll.runtime.disable"}
!11 = distinct !{!11, !12}
!12 = !{!"llvm.loop.unroll.disable"}
!13 = distinct !{!13, !8, !9}
!14 = distinct !{!14, !8}
!15 = distinct !{!15, !12}
!16 = distinct !{!16, !8, !9, !10}
!17 = distinct !{!17, !12}
!18 = distinct !{!18, !8, !9}
!19 = !{!20}
!20 = distinct !{!20, !21}
!21 = distinct !{!21, !"LVerDomain"}
!22 = !{!23}
!23 = distinct !{!23, !21}
!24 = !{!25, !20}
!25 = distinct !{!25, !21}
!26 = !{!27}
!27 = distinct !{!27, !21}
!28 = !{!23, !25, !20}
!29 = !{!25}
!30 = distinct !{!30, !8, !9}
!31 = distinct !{!31, !8}
