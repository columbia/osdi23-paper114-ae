; ModuleID = 'crypto/modes/ccm128.c'
source_filename = "crypto/modes/ccm128.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccm128_context = type { %union.anon, %union.anon, i64, void (i8*, i8*, i8*)*, i8* }
%union.anon = type { [2 x i64] }

; Function Attrs: noinline nounwind uwtable
define void @CRYPTO_ccm128_init(%struct.ccm128_context* noundef %ctx, i32 noundef %M, i32 noundef %L, i8* noundef %key, void (i8*, i8*, i8*)* noundef %block) local_unnamed_addr #0 {
entry:
  %arraydecay = bitcast %struct.ccm128_context* %ctx to i8*
  %call = tail call i8* @memset(i8* noundef %arraydecay, i32 noundef 0, i64 noundef 16) #5
  %conv = add i32 %L, 7
  %and = and i32 %conv, 7
  %0 = shl i32 %M, 2
  %1 = add i32 %0, 56
  %shl = and i32 %1, 56
  %or = or i32 %and, %shl
  %conv6 = trunc i32 %or to i8
  store i8 %conv6, i8* %arraydecay, align 8, !tbaa !4
  %blocks = getelementptr inbounds %struct.ccm128_context, %struct.ccm128_context* %ctx, i64 0, i32 2
  store i64 0, i64* %blocks, align 8, !tbaa !7
  %block9 = getelementptr inbounds %struct.ccm128_context, %struct.ccm128_context* %ctx, i64 0, i32 3
  store void (i8*, i8*, i8*)* %block, void (i8*, i8*, i8*)** %block9, align 8, !tbaa !11
  %key10 = getelementptr inbounds %struct.ccm128_context, %struct.ccm128_context* %ctx, i64 0, i32 4
  store i8* %key, i8** %key10, align 8, !tbaa !12
  ret void
}

; Function Attrs: nounwind
declare i8* @memset(i8* noundef, i32 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define i32 @CRYPTO_ccm128_setiv(%struct.ccm128_context* noundef %ctx, i8* noundef %nonce, i64 noundef %nlen, i64 noundef %mlen) local_unnamed_addr #0 {
entry:
  %c = bitcast %struct.ccm128_context* %ctx to [16 x i8]*
  %arrayidx = bitcast %struct.ccm128_context* %ctx to i8*
  %0 = load i8, i8* %arrayidx, align 8, !tbaa !4
  %1 = and i8 %0, 7
  %narrow = sub nuw nsw i8 14, %1
  %conv2 = zext i8 %narrow to i64
  %cmp = icmp ugt i64 %conv2, %nlen
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %cmp4 = icmp ugt i8 %1, 2
  br i1 %cmp4, label %if.then6, label %if.else

if.then6:                                         ; preds = %if.end
  %shr = lshr i64 %mlen, 56
  %conv7 = trunc i64 %shr to i8
  %arrayidx10 = getelementptr inbounds %struct.ccm128_context, %struct.ccm128_context* %ctx, i64 0, i32 0, i32 0, i64 1
  %2 = bitcast i64* %arrayidx10 to i8*
  store i8 %conv7, i8* %2, align 8, !tbaa !4
  %shr11 = lshr i64 %mlen, 48
  %conv12 = trunc i64 %shr11 to i8
  %arrayidx15 = getelementptr inbounds [16 x i8], [16 x i8]* %c, i64 0, i64 9
  store i8 %conv12, i8* %arrayidx15, align 1, !tbaa !4
  %shr16 = lshr i64 %mlen, 40
  %conv17 = trunc i64 %shr16 to i8
  %arrayidx20 = getelementptr inbounds [16 x i8], [16 x i8]* %c, i64 0, i64 10
  store i8 %conv17, i8* %arrayidx20, align 2, !tbaa !4
  %shr21 = lshr i64 %mlen, 32
  %conv22 = trunc i64 %shr21 to i8
  %arrayidx25 = getelementptr inbounds [16 x i8], [16 x i8]* %c, i64 0, i64 11
  store i8 %conv22, i8* %arrayidx25, align 1, !tbaa !4
  br label %if.end28

if.else:                                          ; preds = %if.end
  %arrayidx27 = getelementptr inbounds %struct.ccm128_context, %struct.ccm128_context* %ctx, i64 0, i32 0, i32 0, i64 1
  store i64 0, i64* %arrayidx27, align 8, !tbaa !4
  br label %if.end28

if.end28:                                         ; preds = %if.else, %if.then6
  %shr29 = lshr i64 %mlen, 24
  %conv30 = trunc i64 %shr29 to i8
  %arrayidx33 = getelementptr inbounds [16 x i8], [16 x i8]* %c, i64 0, i64 12
  store i8 %conv30, i8* %arrayidx33, align 4, !tbaa !4
  %shr34 = lshr i64 %mlen, 16
  %conv35 = trunc i64 %shr34 to i8
  %arrayidx38 = getelementptr inbounds [16 x i8], [16 x i8]* %c, i64 0, i64 13
  store i8 %conv35, i8* %arrayidx38, align 1, !tbaa !4
  %shr39 = lshr i64 %mlen, 8
  %conv40 = trunc i64 %shr39 to i8
  %arrayidx43 = getelementptr inbounds [16 x i8], [16 x i8]* %c, i64 0, i64 14
  store i8 %conv40, i8* %arrayidx43, align 2, !tbaa !4
  %conv44 = trunc i64 %mlen to i8
  %arrayidx47 = getelementptr inbounds [16 x i8], [16 x i8]* %c, i64 0, i64 15
  store i8 %conv44, i8* %arrayidx47, align 1, !tbaa !4
  %3 = and i8 %0, -65
  store i8 %3, i8* %arrayidx, align 8, !tbaa !4
  %arrayidx56 = getelementptr inbounds [16 x i8], [16 x i8]* %c, i64 0, i64 1
  %call = tail call i8* @memcpy(i8* noundef nonnull %arrayidx56, i8* noundef %nonce, i64 noundef %conv2) #5
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end28
  %retval.0 = phi i32 [ 0, %if.end28 ], [ -1, %entry ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: nounwind
declare i8* @memcpy(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: noinline nounwind uwtable
define void @CRYPTO_ccm128_aad(%struct.ccm128_context* noundef %ctx, i8* nocapture noundef readonly %aad, i64 noundef %alen) local_unnamed_addr #0 {
entry:
  %block1 = getelementptr inbounds %struct.ccm128_context, %struct.ccm128_context* %ctx, i64 0, i32 3
  %0 = load void (i8*, i8*, i8*)*, void (i8*, i8*, i8*)** %block1, align 8, !tbaa !11
  %cmp = icmp eq i64 %alen, 0
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %arrayidx = bitcast %struct.ccm128_context* %ctx to i8*
  %1 = load i8, i8* %arrayidx, align 8, !tbaa !4
  %2 = or i8 %1, 64
  store i8 %2, i8* %arrayidx, align 8, !tbaa !4
  %cmac = getelementptr inbounds %struct.ccm128_context, %struct.ccm128_context* %ctx, i64 0, i32 1
  %c5 = bitcast %union.anon* %cmac to [16 x i8]*
  %arraydecay6 = bitcast %union.anon* %cmac to i8*
  %key = getelementptr inbounds %struct.ccm128_context, %struct.ccm128_context* %ctx, i64 0, i32 4
  %3 = load i8*, i8** %key, align 8, !tbaa !12
  tail call void %0(i8* noundef nonnull %arrayidx, i8* noundef nonnull %arraydecay6, i8* noundef %3) #5
  %blocks = getelementptr inbounds %struct.ccm128_context, %struct.ccm128_context* %ctx, i64 0, i32 2
  %4 = load i64, i64* %blocks, align 8, !tbaa !7
  %inc = add i64 %4, 1
  store i64 %inc, i64* %blocks, align 8, !tbaa !7
  %cmp7 = icmp ult i64 %alen, 65280
  br i1 %cmp7, label %if.then9, label %if.else

if.then9:                                         ; preds = %if.end
  %5 = load i8, i8* %arraydecay6, align 8, !tbaa !4
  %6 = lshr i64 %alen, 8
  %7 = trunc i64 %6 to i8
  %conv16 = xor i8 %5, %7
  store i8 %conv16, i8* %arraydecay6, align 8, !tbaa !4
  br label %if.end160

if.else:                                          ; preds = %if.end
  %cmp25 = icmp ugt i64 %alen, 4294967295
  %8 = load i8, i8* %arraydecay6, align 8, !tbaa !4
  %9 = xor i8 %8, -1
  store i8 %9, i8* %arraydecay6, align 8, !tbaa !4
  %arrayidx36 = getelementptr inbounds [16 x i8], [16 x i8]* %c5, i64 0, i64 1
  %10 = load i8, i8* %arrayidx36, align 1, !tbaa !4
  br i1 %cmp25, label %if.then27, label %if.else111

if.then27:                                        ; preds = %if.else
  %11 = xor i8 %10, -1
  store i8 %11, i8* %arrayidx36, align 1, !tbaa !4
  %shr40 = lshr i64 %alen, 56
  %conv41 = trunc i64 %shr40 to i8
  %arrayidx45 = getelementptr inbounds [16 x i8], [16 x i8]* %c5, i64 0, i64 2
  %12 = load i8, i8* %arrayidx45, align 2, !tbaa !4
  %xor47 = xor i8 %12, %conv41
  store i8 %xor47, i8* %arrayidx45, align 2, !tbaa !4
  %shr49 = lshr i64 %alen, 48
  %conv50 = trunc i64 %shr49 to i8
  %arrayidx54 = getelementptr inbounds [16 x i8], [16 x i8]* %c5, i64 0, i64 3
  %13 = load i8, i8* %arrayidx54, align 1, !tbaa !4
  %xor56 = xor i8 %13, %conv50
  store i8 %xor56, i8* %arrayidx54, align 1, !tbaa !4
  %shr58 = lshr i64 %alen, 40
  %conv59 = trunc i64 %shr58 to i8
  %arrayidx63 = getelementptr inbounds [16 x i8], [16 x i8]* %c5, i64 0, i64 4
  %14 = load i8, i8* %arrayidx63, align 4, !tbaa !4
  %xor65 = xor i8 %14, %conv59
  store i8 %xor65, i8* %arrayidx63, align 4, !tbaa !4
  %shr67 = lshr i64 %alen, 32
  %conv68 = trunc i64 %shr67 to i8
  %arrayidx72 = getelementptr inbounds [16 x i8], [16 x i8]* %c5, i64 0, i64 5
  %15 = load i8, i8* %arrayidx72, align 1, !tbaa !4
  %xor74 = xor i8 %15, %conv68
  store i8 %xor74, i8* %arrayidx72, align 1, !tbaa !4
  %arrayidx81 = getelementptr inbounds [16 x i8], [16 x i8]* %c5, i64 0, i64 6
  %16 = load i8, i8* %arrayidx81, align 2, !tbaa !4
  %17 = lshr i64 %alen, 24
  %18 = trunc i64 %17 to i8
  %conv84 = xor i8 %16, %18
  store i8 %conv84, i8* %arrayidx81, align 2, !tbaa !4
  %arrayidx90 = getelementptr inbounds [16 x i8], [16 x i8]* %c5, i64 0, i64 7
  %19 = load i8, i8* %arrayidx90, align 1, !tbaa !4
  %20 = lshr i64 %alen, 16
  %21 = trunc i64 %20 to i8
  %conv93 = xor i8 %19, %21
  store i8 %conv93, i8* %arrayidx90, align 1, !tbaa !4
  %arrayidx99 = getelementptr inbounds %struct.ccm128_context, %struct.ccm128_context* %ctx, i64 0, i32 1, i32 0, i64 1
  %22 = bitcast i64* %arrayidx99 to i8*
  %23 = load i8, i8* %22, align 8, !tbaa !4
  %24 = lshr i64 %alen, 8
  %25 = trunc i64 %24 to i8
  %conv102 = xor i8 %23, %25
  store i8 %conv102, i8* %22, align 8, !tbaa !4
  br label %if.end160

if.else111:                                       ; preds = %if.else
  %26 = xor i8 %10, -2
  store i8 %26, i8* %arrayidx36, align 1, !tbaa !4
  %arrayidx129 = getelementptr inbounds [16 x i8], [16 x i8]* %c5, i64 0, i64 2
  %27 = load i8, i8* %arrayidx129, align 2, !tbaa !4
  %28 = lshr i64 %alen, 24
  %29 = trunc i64 %28 to i8
  %conv132 = xor i8 %27, %29
  store i8 %conv132, i8* %arrayidx129, align 2, !tbaa !4
  %arrayidx138 = getelementptr inbounds [16 x i8], [16 x i8]* %c5, i64 0, i64 3
  %30 = load i8, i8* %arrayidx138, align 1, !tbaa !4
  %31 = lshr i64 %alen, 16
  %32 = trunc i64 %31 to i8
  %conv141 = xor i8 %30, %32
  store i8 %conv141, i8* %arrayidx138, align 1, !tbaa !4
  %arrayidx147 = getelementptr inbounds [16 x i8], [16 x i8]* %c5, i64 0, i64 4
  %33 = load i8, i8* %arrayidx147, align 4, !tbaa !4
  %34 = lshr i64 %alen, 8
  %35 = trunc i64 %34 to i8
  %conv150 = xor i8 %33, %35
  store i8 %conv150, i8* %arrayidx147, align 4, !tbaa !4
  br label %if.end160

if.end160:                                        ; preds = %if.then27, %if.else111, %if.then9
  %.sink = phi i64 [ 9, %if.then27 ], [ 5, %if.else111 ], [ 1, %if.then9 ]
  %i.0 = phi i64 [ 10, %if.then27 ], [ 6, %if.else111 ], [ 2, %if.then9 ]
  %conv103 = trunc i64 %alen to i8
  %arrayidx107 = getelementptr inbounds [16 x i8], [16 x i8]* %c5, i64 0, i64 %.sink
  %36 = load i8, i8* %arrayidx107, align 1, !tbaa !4
  %xor109 = xor i8 %36, %conv103
  store i8 %xor109, i8* %arrayidx107, align 1, !tbaa !4
  %scevgep = getelementptr %struct.ccm128_context, %struct.ccm128_context* %ctx, i64 0, i32 1, i32 0, i64 0
  %scevgep247 = bitcast i64* %scevgep to i8*
  %scevgep248 = getelementptr %struct.ccm128_context, %struct.ccm128_context* %ctx, i64 0, i32 1, i32 0, i64 0
  %scevgep248249 = bitcast i64* %scevgep248 to i8*
  %uglygep250 = getelementptr i8, i8* %scevgep248249, i64 1
  br label %do.body

do.body:                                          ; preds = %for.end, %if.end160
  %alen.addr.0 = phi i64 [ %alen, %if.end160 ], [ %alen.addr.1.lcssa, %for.end ]
  %i.1 = phi i64 [ %i.0, %if.end160 ], [ 0, %for.end ]
  %aad.addr.0 = phi i8* [ %aad, %if.end160 ], [ %aad.addr.1.lcssa, %for.end ]
  %tobool236.not = icmp eq i64 %alen.addr.0, 0
  br i1 %tobool236.not, label %for.end, label %for.body.preheader

for.body.preheader:                               ; preds = %do.body
  %37 = sub nsw i64 15, %i.1
  %38 = add i64 %alen.addr.0, -1
  %umin254 = call i64 @llvm.umin.i64(i64 %38, i64 %37)
  %39 = add nuw nsw i64 %umin254, 1
  %min.iters.check = icmp ult i64 %umin254, 15
  br i1 %min.iters.check, label %for.body.preheader260, label %vector.memcheck

vector.memcheck:                                  ; preds = %for.body.preheader
  %uglygep = getelementptr i8, i8* %scevgep247, i64 %i.1
  %40 = sub nsw i64 15, %i.1
  %41 = add i64 %alen.addr.0, -1
  %umin = call i64 @llvm.umin.i64(i64 %41, i64 %40)
  %42 = add i64 %i.1, %umin
  %scevgep251 = getelementptr i8, i8* %uglygep250, i64 %42
  %scevgep252 = getelementptr i8, i8* %aad.addr.0, i64 1
  %scevgep253 = getelementptr i8, i8* %scevgep252, i64 %umin
  %bound0 = icmp ult i8* %uglygep, %scevgep253
  %bound1 = icmp ult i8* %aad.addr.0, %scevgep251
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %for.body.preheader260, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %39, -16
  %ind.end = add i64 %i.1, %n.vec
  %ind.end256 = getelementptr i8, i8* %aad.addr.0, i64 %n.vec
  %ind.end258 = sub i64 %alen.addr.0, %n.vec
  %43 = add i64 %alen.addr.0, -15
  %44 = add nsw i64 %n.vec, -16
  %45 = lshr exact i64 %44, 4
  %46 = add nuw nsw i64 %45, 1
  %xtraiter = and i64 %46, 1
  %47 = icmp eq i64 %44, 0
  br i1 %47, label %middle.block.unr-lcssa, label %vector.ph.new

vector.ph.new:                                    ; preds = %vector.ph
  %unroll_iter = and i64 %46, 2305843009213693950
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph.new
  %index = phi i64 [ 0, %vector.ph.new ], [ %index.next.1, %vector.body ]
  %48 = phi i64 [ %43, %vector.ph.new ], [ %59, %vector.body ]
  %niter = phi i64 [ 0, %vector.ph.new ], [ %niter.next.1, %vector.body ]
  %offset.idx = add i64 %i.1, %index
  %next.gep = getelementptr i8, i8* %aad.addr.0, i64 %index
  %49 = bitcast i8* %next.gep to <16 x i8>*
  %wide.load = load <16 x i8>, <16 x i8>* %49, align 1, !tbaa !4, !alias.scope !13
  %50 = getelementptr inbounds [16 x i8], [16 x i8]* %c5, i64 0, i64 %offset.idx
  %51 = bitcast i8* %50 to <16 x i8>*
  %wide.load259 = load <16 x i8>, <16 x i8>* %51, align 1, !tbaa !4, !alias.scope !16, !noalias !13
  %52 = xor <16 x i8> %wide.load259, %wide.load
  %53 = bitcast i8* %50 to <16 x i8>*
  store <16 x i8> %52, <16 x i8>* %53, align 1, !tbaa !4, !alias.scope !16, !noalias !13
  %index.next = or i64 %index, 16
  %offset.idx.1 = add i64 %i.1, %index.next
  %next.gep.1 = getelementptr i8, i8* %aad.addr.0, i64 %index.next
  %54 = bitcast i8* %next.gep.1 to <16 x i8>*
  %wide.load.1 = load <16 x i8>, <16 x i8>* %54, align 1, !tbaa !4, !alias.scope !13
  %55 = getelementptr inbounds [16 x i8], [16 x i8]* %c5, i64 0, i64 %offset.idx.1
  %56 = bitcast i8* %55 to <16 x i8>*
  %wide.load259.1 = load <16 x i8>, <16 x i8>* %56, align 1, !tbaa !4, !alias.scope !16, !noalias !13
  %57 = xor <16 x i8> %wide.load259.1, %wide.load.1
  %58 = bitcast i8* %55 to <16 x i8>*
  store <16 x i8> %57, <16 x i8>* %58, align 1, !tbaa !4, !alias.scope !16, !noalias !13
  %index.next.1 = add nuw i64 %index, 32
  %59 = add i64 %48, -32
  %niter.next.1 = add i64 %niter, 2
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %middle.block.unr-lcssa.loopexit, label %vector.body, !llvm.loop !18

middle.block.unr-lcssa.loopexit:                  ; preds = %vector.body
  %60 = add i64 %48, -16
  br label %middle.block.unr-lcssa

middle.block.unr-lcssa:                           ; preds = %middle.block.unr-lcssa.loopexit, %vector.ph
  %.lcssa.ph = phi i64 [ undef, %vector.ph ], [ %60, %middle.block.unr-lcssa.loopexit ]
  %index.unr = phi i64 [ 0, %vector.ph ], [ %index.next.1, %middle.block.unr-lcssa.loopexit ]
  %.unr = phi i64 [ %43, %vector.ph ], [ %59, %middle.block.unr-lcssa.loopexit ]
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %middle.block, label %vector.body.epil

vector.body.epil:                                 ; preds = %middle.block.unr-lcssa
  %offset.idx.epil = add i64 %i.1, %index.unr
  %next.gep.epil = getelementptr i8, i8* %aad.addr.0, i64 %index.unr
  %61 = bitcast i8* %next.gep.epil to <16 x i8>*
  %wide.load.epil = load <16 x i8>, <16 x i8>* %61, align 1, !tbaa !4, !alias.scope !13
  %62 = getelementptr inbounds [16 x i8], [16 x i8]* %c5, i64 0, i64 %offset.idx.epil
  %63 = bitcast i8* %62 to <16 x i8>*
  %wide.load259.epil = load <16 x i8>, <16 x i8>* %63, align 1, !tbaa !4, !alias.scope !16, !noalias !13
  %64 = xor <16 x i8> %wide.load259.epil, %wide.load.epil
  %65 = bitcast i8* %62 to <16 x i8>*
  store <16 x i8> %64, <16 x i8>* %65, align 1, !tbaa !4, !alias.scope !16, !noalias !13
  br label %middle.block

middle.block:                                     ; preds = %middle.block.unr-lcssa, %vector.body.epil
  %.lcssa = phi i64 [ %.lcssa.ph, %middle.block.unr-lcssa ], [ %.unr, %vector.body.epil ]
  %cmp.n = icmp eq i64 %39, %n.vec
  %66 = icmp ne i64 %.lcssa, 1
  br i1 %cmp.n, label %for.end, label %for.body.preheader260

for.body.preheader260:                            ; preds = %vector.memcheck, %for.body.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ %i.1, %vector.memcheck ], [ %i.1, %for.body.preheader ], [ %ind.end, %middle.block ]
  %aad.addr.1239.ph = phi i8* [ %aad.addr.0, %vector.memcheck ], [ %aad.addr.0, %for.body.preheader ], [ %ind.end256, %middle.block ]
  %alen.addr.1237.ph = phi i64 [ %alen.addr.0, %vector.memcheck ], [ %alen.addr.0, %for.body.preheader ], [ %ind.end258, %middle.block ]
  br label %for.body

for.body:                                         ; preds = %for.body.preheader260, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ %indvars.iv.ph, %for.body.preheader260 ]
  %aad.addr.1239 = phi i8* [ %incdec.ptr, %for.body ], [ %aad.addr.1239.ph, %for.body.preheader260 ]
  %alen.addr.1237 = phi i64 [ %dec, %for.body ], [ %alen.addr.1237.ph, %for.body.preheader260 ]
  %67 = load i8, i8* %aad.addr.1239, align 1, !tbaa !4
  %arrayidx166 = getelementptr inbounds [16 x i8], [16 x i8]* %c5, i64 0, i64 %indvars.iv
  %68 = load i8, i8* %arrayidx166, align 1, !tbaa !4
  %xor168235 = xor i8 %68, %67
  store i8 %xor168235, i8* %arrayidx166, align 1, !tbaa !4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %incdec.ptr = getelementptr inbounds i8, i8* %aad.addr.1239, i64 1
  %dec = add i64 %alen.addr.1237, -1
  %cmp161 = icmp ult i64 %indvars.iv, 15
  %tobool = icmp ne i64 %dec, 0
  %69 = select i1 %cmp161, i1 %tobool, i1 false
  br i1 %69, label %for.body, label %for.end, !llvm.loop !21

for.end:                                          ; preds = %for.body, %middle.block, %do.body
  %alen.addr.1.lcssa = phi i64 [ 0, %do.body ], [ %ind.end258, %middle.block ], [ %dec, %for.body ]
  %aad.addr.1.lcssa = phi i8* [ %aad.addr.0, %do.body ], [ %ind.end256, %middle.block ], [ %incdec.ptr, %for.body ]
  %tobool.lcssa = phi i1 [ false, %do.body ], [ %66, %middle.block ], [ %tobool, %for.body ]
  %70 = load i8*, i8** %key, align 8, !tbaa !12
  tail call void %0(i8* noundef nonnull %arraydecay6, i8* noundef nonnull %arraydecay6, i8* noundef %70) #5
  %71 = load i64, i64* %blocks, align 8, !tbaa !7
  %inc179 = add i64 %71, 1
  store i64 %inc179, i64* %blocks, align 8, !tbaa !7
  br i1 %tobool.lcssa, label %do.body, label %cleanup, !llvm.loop !22

cleanup:                                          ; preds = %for.end, %entry
  ret void
}

; Function Attrs: noinline nounwind uwtable
define i32 @CRYPTO_ccm128_encrypt(%struct.ccm128_context* noundef %ctx, i8* nocapture noundef readonly %inp, i8* nocapture noundef writeonly %out, i64 noundef %len) local_unnamed_addr #0 {
entry:
  %scratch = alloca <2 x i64>, align 16
  %c = bitcast %struct.ccm128_context* %ctx to [16 x i8]*
  %arrayidx = bitcast %struct.ccm128_context* %ctx to i8*
  %0 = load i8, i8* %arrayidx, align 8, !tbaa !4
  %block1 = getelementptr inbounds %struct.ccm128_context, %struct.ccm128_context* %ctx, i64 0, i32 3
  %1 = load void (i8*, i8*, i8*)*, void (i8*, i8*, i8*)** %block1, align 8, !tbaa !11
  %key2 = getelementptr inbounds %struct.ccm128_context, %struct.ccm128_context* %ctx, i64 0, i32 4
  %2 = load i8*, i8** %key2, align 8, !tbaa !12
  %3 = bitcast <2 x i64>* %scratch to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %3) #6
  %conv = zext i8 %0 to i32
  %and = and i32 %conv, 64
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %cmac = getelementptr inbounds %struct.ccm128_context, %struct.ccm128_context* %ctx, i64 0, i32 1
  %arraydecay6 = bitcast %union.anon* %cmac to i8*
  tail call void %1(i8* noundef nonnull %arrayidx, i8* noundef nonnull %arraydecay6, i8* noundef %2) #5
  %blocks = getelementptr inbounds %struct.ccm128_context, %struct.ccm128_context* %ctx, i64 0, i32 2
  %4 = load i64, i64* %blocks, align 8, !tbaa !7
  %inc = add i64 %4, 1
  store i64 %inc, i64* %blocks, align 8, !tbaa !7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %and8 = and i32 %conv, 7
  %conv9 = trunc i32 %and8 to i8
  store i8 %conv9, i8* %arrayidx, align 8, !tbaa !4
  %sub = xor i32 %and8, 15
  %cmp248.not = icmp eq i32 %and8, 0
  br i1 %cmp248.not, label %for.end, label %for.body.preheader

for.body.preheader:                               ; preds = %if.end
  %5 = zext i32 %sub to i64
  %umax = call i32 @llvm.umax.i32(i32 %sub, i32 14)
  %6 = zext i32 %umax to i64
  %7 = add nuw nsw i64 %6, 1
  %8 = sub nsw i64 %7, %5
  %9 = sub nsw i64 %6, %5
  %xtraiter = and i64 %8, 3
  %10 = icmp ult i64 %9, 3
  br i1 %10, label %for.end.loopexit.unr-lcssa, label %for.body.preheader.new

for.body.preheader.new:                           ; preds = %for.body.preheader
  %unroll_iter = and i64 %8, -4
  br label %for.body

for.body:                                         ; preds = %for.body, %for.body.preheader.new
  %indvars.iv = phi i64 [ %5, %for.body.preheader.new ], [ %indvars.iv.next.3, %for.body ]
  %n.0249 = phi i64 [ 0, %for.body.preheader.new ], [ %shl.3, %for.body ]
  %niter = phi i64 [ 0, %for.body.preheader.new ], [ %niter.next.3, %for.body ]
  %arrayidx16 = getelementptr inbounds [16 x i8], [16 x i8]* %c, i64 0, i64 %indvars.iv
  %11 = load i8, i8* %arrayidx16, align 1, !tbaa !4
  %conv17 = zext i8 %11 to i64
  %or = or i64 %n.0249, %conv17
  store i8 0, i8* %arrayidx16, align 1, !tbaa !4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %arrayidx16.1 = getelementptr inbounds [16 x i8], [16 x i8]* %c, i64 0, i64 %indvars.iv.next
  %12 = load i8, i8* %arrayidx16.1, align 1, !tbaa !4
  %conv17.1 = zext i8 %12 to i64
  store i8 0, i8* %arrayidx16.1, align 1, !tbaa !4
  %13 = shl i64 %or, 16
  %14 = shl nuw nsw i64 %conv17.1, 8
  %shl.1 = or i64 %13, %14
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2
  %arrayidx16.2 = getelementptr inbounds [16 x i8], [16 x i8]* %c, i64 0, i64 %indvars.iv.next.1
  %15 = load i8, i8* %arrayidx16.2, align 1, !tbaa !4
  %conv17.2 = zext i8 %15 to i64
  %or.2 = or i64 %shl.1, %conv17.2
  store i8 0, i8* %arrayidx16.2, align 1, !tbaa !4
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3
  %arrayidx16.3 = getelementptr inbounds [16 x i8], [16 x i8]* %c, i64 0, i64 %indvars.iv.next.2
  %16 = load i8, i8* %arrayidx16.3, align 1, !tbaa !4
  %conv17.3 = zext i8 %16 to i64
  store i8 0, i8* %arrayidx16.3, align 1, !tbaa !4
  %17 = shl i64 %or.2, 16
  %18 = shl nuw nsw i64 %conv17.3, 8
  %shl.3 = or i64 %17, %18
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4
  %niter.next.3 = add i64 %niter, 4
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %for.end.loopexit.unr-lcssa, label %for.body, !llvm.loop !23

for.end.loopexit.unr-lcssa:                       ; preds = %for.body, %for.body.preheader
  %shl.lcssa.ph = phi i64 [ undef, %for.body.preheader ], [ %shl.3, %for.body ]
  %indvars.iv.unr = phi i64 [ %5, %for.body.preheader ], [ %indvars.iv.next.3, %for.body ]
  %n.0249.unr = phi i64 [ 0, %for.body.preheader ], [ %shl.3, %for.body ]
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %for.end, label %for.body.epil

for.body.epil:                                    ; preds = %for.end.loopexit.unr-lcssa, %for.body.epil
  %indvars.iv.epil = phi i64 [ %indvars.iv.next.epil, %for.body.epil ], [ %indvars.iv.unr, %for.end.loopexit.unr-lcssa ]
  %n.0249.epil = phi i64 [ %shl.epil, %for.body.epil ], [ %n.0249.unr, %for.end.loopexit.unr-lcssa ]
  %epil.iter = phi i64 [ %epil.iter.next, %for.body.epil ], [ 0, %for.end.loopexit.unr-lcssa ]
  %arrayidx16.epil = getelementptr inbounds [16 x i8], [16 x i8]* %c, i64 0, i64 %indvars.iv.epil
  %19 = load i8, i8* %arrayidx16.epil, align 1, !tbaa !4
  %conv17.epil = zext i8 %19 to i64
  %or.epil = or i64 %n.0249.epil, %conv17.epil
  store i8 0, i8* %arrayidx16.epil, align 1, !tbaa !4
  %shl.epil = shl i64 %or.epil, 8
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %for.end, label %for.body.epil, !llvm.loop !24

for.end:                                          ; preds = %for.end.loopexit.unr-lcssa, %for.body.epil, %if.end
  %n.0.lcssa = phi i64 [ 0, %if.end ], [ %shl.lcssa.ph, %for.end.loopexit.unr-lcssa ], [ %shl.epil, %for.body.epil ]
  %arrayidx25 = getelementptr inbounds [16 x i8], [16 x i8]* %c, i64 0, i64 15
  %20 = load i8, i8* %arrayidx25, align 1, !tbaa !4
  %conv26 = zext i8 %20 to i64
  %or27 = or i64 %n.0.lcssa, %conv26
  store i8 1, i8* %arrayidx25, align 1, !tbaa !4
  %cmp31.not = icmp eq i64 %or27, %len
  br i1 %cmp31.not, label %if.end34, label %cleanup

if.end34:                                         ; preds = %for.end
  %add = add i64 %len, 15
  %shr = lshr i64 %add, 3
  %or35 = or i64 %shr, 1
  %blocks36 = getelementptr inbounds %struct.ccm128_context, %struct.ccm128_context* %ctx, i64 0, i32 2
  %21 = load i64, i64* %blocks36, align 8, !tbaa !7
  %add37 = add i64 %21, %or35
  store i64 %add37, i64* %blocks36, align 8, !tbaa !7
  %cmp39 = icmp ugt i64 %add37, 2305843009213693952
  br i1 %cmp39, label %cleanup, label %while.cond.preheader

while.cond.preheader:                             ; preds = %if.end34
  %cmp43251 = icmp ugt i64 %len, 15
  br i1 %cmp43251, label %while.body.lr.ph, label %while.end

while.body.lr.ph:                                 ; preds = %while.cond.preheader
  %cmac46 = getelementptr inbounds %struct.ccm128_context, %struct.ccm128_context* %ctx, i64 0, i32 1
  %arrayidx47 = getelementptr inbounds %union.anon, %union.anon* %cmac46, i64 0, i32 0, i64 0
  %arrayidx51 = getelementptr inbounds %struct.ccm128_context, %struct.ccm128_context* %ctx, i64 0, i32 1, i32 0, i64 1
  %arraydecay55 = bitcast %union.anon* %cmac46 to i8*
  %arrayidx68 = getelementptr inbounds <2 x i64>, <2 x i64>* %scratch, i64 0, i64 0
  %22 = getelementptr inbounds <2 x i64>, <2 x i64>* %scratch, i64 0, i64 1
  br label %while.body

while.body:                                       ; preds = %while.body.lr.ph, %while.body
  %inp.addr.0254 = phi i8* [ %inp, %while.body.lr.ph ], [ %add.ptr, %while.body ]
  %out.addr.0253 = phi i8* [ %out, %while.body.lr.ph ], [ %add.ptr77, %while.body ]
  %len.addr.0252 = phi i64 [ %len, %while.body.lr.ph ], [ %sub78, %while.body ]
  %23 = bitcast i8* %inp.addr.0254 to i64*
  %24 = load i64, i64* %23, align 1, !tbaa !26
  %25 = load i64, i64* %arrayidx47, align 8, !tbaa !4
  %xor = xor i64 %25, %24
  store i64 %xor, i64* %arrayidx47, align 8, !tbaa !4
  %arrayidx48 = getelementptr inbounds i8, i8* %inp.addr.0254, i64 8
  %26 = bitcast i8* %arrayidx48 to i64*
  %27 = load i64, i64* %26, align 1, !tbaa !26
  %28 = load i64, i64* %arrayidx51, align 8, !tbaa !4
  %xor52 = xor i64 %28, %27
  store i64 %xor52, i64* %arrayidx51, align 8, !tbaa !4
  call void %1(i8* noundef nonnull %arraydecay55, i8* noundef nonnull %arraydecay55, i8* noundef %2) #5
  call void %1(i8* noundef nonnull %arrayidx, i8* noundef nonnull %3, i8* noundef %2) #5
  call fastcc void @ctr64_inc(i8* noundef nonnull %arrayidx) #7
  %29 = load i64, i64* %arrayidx68, align 16, !tbaa !4
  %30 = load i64, i64* %23, align 1, !tbaa !26
  %xor70 = xor i64 %30, %29
  %31 = bitcast i8* %out.addr.0253 to i64*
  store i64 %xor70, i64* %31, align 1, !tbaa !26
  %32 = load i64, i64* %22, align 8, !tbaa !4
  %33 = load i64, i64* %26, align 1, !tbaa !26
  %xor75 = xor i64 %33, %32
  %arrayidx76 = getelementptr inbounds i8, i8* %out.addr.0253, i64 8
  %34 = bitcast i8* %arrayidx76 to i64*
  store i64 %xor75, i64* %34, align 1, !tbaa !26
  %add.ptr = getelementptr inbounds i8, i8* %inp.addr.0254, i64 16
  %add.ptr77 = getelementptr inbounds i8, i8* %out.addr.0253, i64 16
  %sub78 = add i64 %len.addr.0252, -16
  %cmp43 = icmp ugt i64 %sub78, 15
  br i1 %cmp43, label %while.body, label %while.end, !llvm.loop !27

while.end:                                        ; preds = %while.body, %while.cond.preheader
  %len.addr.0.lcssa = phi i64 [ %len, %while.cond.preheader ], [ %sub78, %while.body ]
  %out.addr.0.lcssa = phi i8* [ %out, %while.cond.preheader ], [ %add.ptr77, %while.body ]
  %inp.addr.0.lcssa = phi i8* [ %inp, %while.cond.preheader ], [ %add.ptr, %while.body ]
  %tobool79.not = icmp eq i64 %len.addr.0.lcssa, 0
  br i1 %tobool79.not, label %for.body134.preheader, label %for.body85.lr.ph

for.body85.lr.ph:                                 ; preds = %while.end
  %cmac89 = getelementptr inbounds %struct.ccm128_context, %struct.ccm128_context* %ctx, i64 0, i32 1
  %c90 = bitcast %union.anon* %cmac89 to [16 x i8]*
  br label %for.body85

for.body85:                                       ; preds = %for.body85.lr.ph, %for.body85
  %conv82260 = phi i64 [ 0, %for.body85.lr.ph ], [ %conv82, %for.body85 ]
  %arrayidx87 = getelementptr inbounds i8, i8* %inp.addr.0.lcssa, i64 %conv82260
  %35 = load i8, i8* %arrayidx87, align 1, !tbaa !4
  %arrayidx92 = getelementptr inbounds [16 x i8], [16 x i8]* %c90, i64 0, i64 %conv82260
  %36 = load i8, i8* %arrayidx92, align 1, !tbaa !4
  %xor94247 = xor i8 %36, %35
  store i8 %xor94247, i8* %arrayidx92, align 1, !tbaa !4
  %inc97 = add nuw nsw i64 %conv82260, 1
  %conv82 = and i64 %inc97, 4294967295
  %cmp83 = icmp ugt i64 %len.addr.0.lcssa, %conv82
  br i1 %cmp83, label %for.body85, label %for.body114.preheader, !llvm.loop !28

for.body114.preheader:                            ; preds = %for.body85
  %cmac99 = getelementptr inbounds %struct.ccm128_context, %struct.ccm128_context* %ctx, i64 0, i32 1
  %arraydecay101 = bitcast %union.anon* %cmac99 to i8*
  call void %1(i8* noundef nonnull %arraydecay101, i8* noundef nonnull %arraydecay101, i8* noundef %2) #5
  %c108 = bitcast <2 x i64>* %scratch to [16 x i8]*
  call void %1(i8* noundef nonnull %arrayidx, i8* noundef nonnull %3, i8* noundef %2) #5
  br label %for.body114

for.body114:                                      ; preds = %for.body114.preheader, %for.body114
  %conv111263 = phi i64 [ %conv111, %for.body114 ], [ 0, %for.body114.preheader ]
  %arrayidx117 = getelementptr inbounds [16 x i8], [16 x i8]* %c108, i64 0, i64 %conv111263
  %37 = load i8, i8* %arrayidx117, align 1, !tbaa !4
  %arrayidx120 = getelementptr inbounds i8, i8* %inp.addr.0.lcssa, i64 %conv111263
  %38 = load i8, i8* %arrayidx120, align 1, !tbaa !4
  %xor122246 = xor i8 %38, %37
  %arrayidx125 = getelementptr inbounds i8, i8* %out.addr.0.lcssa, i64 %conv111263
  store i8 %xor122246, i8* %arrayidx125, align 1, !tbaa !4
  %inc127 = add nuw nsw i64 %conv111263, 1
  %conv111 = and i64 %inc127, 4294967295
  %cmp112 = icmp ugt i64 %len.addr.0.lcssa, %conv111
  br i1 %cmp112, label %for.body114, label %for.body134.preheader, !llvm.loop !29

for.body134.preheader:                            ; preds = %for.body114, %while.end
  %39 = zext i32 %sub to i64
  %arrayidx138 = getelementptr inbounds [16 x i8], [16 x i8]* %c, i64 0, i64 %39
  store i8 0, i8* %arrayidx138, align 1, !tbaa !4
  %indvars.iv.next269 = add nuw nsw i64 %39, 1
  %exitcond272.not = icmp eq i64 %indvars.iv.next269, 16
  br i1 %exitcond272.not, label %for.end141, label %for.body134.1, !llvm.loop !30

for.body134.1:                                    ; preds = %for.body134.preheader
  %arrayidx138.1 = getelementptr inbounds [16 x i8], [16 x i8]* %c, i64 0, i64 %indvars.iv.next269
  store i8 0, i8* %arrayidx138.1, align 1, !tbaa !4
  %indvars.iv.next269.1 = add nuw nsw i64 %39, 2
  %exitcond272.not.1 = icmp eq i64 %indvars.iv.next269.1, 16
  br i1 %exitcond272.not.1, label %for.end141, label %for.body134.2, !llvm.loop !30

for.body134.2:                                    ; preds = %for.body134.1
  %arrayidx138.2 = getelementptr inbounds [16 x i8], [16 x i8]* %c, i64 0, i64 %indvars.iv.next269.1
  store i8 0, i8* %arrayidx138.2, align 1, !tbaa !4
  %indvars.iv.next269.2 = add nuw nsw i64 %39, 3
  %exitcond272.not.2 = icmp eq i64 %indvars.iv.next269.2, 16
  br i1 %exitcond272.not.2, label %for.end141, label %for.body134.3, !llvm.loop !30

for.body134.3:                                    ; preds = %for.body134.2
  %arrayidx138.3 = getelementptr inbounds [16 x i8], [16 x i8]* %c, i64 0, i64 %indvars.iv.next269.2
  store i8 0, i8* %arrayidx138.3, align 1, !tbaa !4
  %indvars.iv.next269.3 = add nuw nsw i64 %39, 4
  %exitcond272.not.3 = icmp eq i64 %indvars.iv.next269.3, 16
  br i1 %exitcond272.not.3, label %for.end141, label %for.body134.4, !llvm.loop !30

for.body134.4:                                    ; preds = %for.body134.3
  %arrayidx138.4 = getelementptr inbounds [16 x i8], [16 x i8]* %c, i64 0, i64 %indvars.iv.next269.3
  store i8 0, i8* %arrayidx138.4, align 1, !tbaa !4
  %indvars.iv.next269.4 = add nuw nsw i64 %39, 5
  %exitcond272.not.4 = icmp eq i64 %indvars.iv.next269.4, 16
  br i1 %exitcond272.not.4, label %for.end141, label %for.body134.5, !llvm.loop !30

for.body134.5:                                    ; preds = %for.body134.4
  %arrayidx138.5 = getelementptr inbounds [16 x i8], [16 x i8]* %c, i64 0, i64 %indvars.iv.next269.4
  store i8 0, i8* %arrayidx138.5, align 1, !tbaa !4
  %indvars.iv.next269.5 = add nuw nsw i64 %39, 6
  %exitcond272.not.5 = icmp eq i64 %indvars.iv.next269.5, 16
  br i1 %exitcond272.not.5, label %for.end141, label %for.body134.6, !llvm.loop !30

for.body134.6:                                    ; preds = %for.body134.5
  %arrayidx138.6 = getelementptr inbounds [16 x i8], [16 x i8]* %c, i64 0, i64 %indvars.iv.next269.5
  store i8 0, i8* %arrayidx138.6, align 1, !tbaa !4
  %indvars.iv.next269.6 = add nuw nsw i64 %39, 7
  %exitcond272.not.6 = icmp eq i64 %indvars.iv.next269.6, 16
  br i1 %exitcond272.not.6, label %for.end141, label %for.body134.7, !llvm.loop !30

for.body134.7:                                    ; preds = %for.body134.6
  %arrayidx138.7 = getelementptr inbounds [16 x i8], [16 x i8]* %c, i64 0, i64 %indvars.iv.next269.6
  store i8 0, i8* %arrayidx138.7, align 1, !tbaa !4
  br label %for.end141

for.end141:                                       ; preds = %for.body134.7, %for.body134.6, %for.body134.5, %for.body134.4, %for.body134.3, %for.body134.2, %for.body134.1, %for.body134.preheader
  call void %1(i8* noundef nonnull %arrayidx, i8* noundef nonnull %3, i8* noundef %2) #5
  %arrayidx151 = getelementptr inbounds %struct.ccm128_context, %struct.ccm128_context* %ctx, i64 0, i32 1, i32 0, i64 0
  %40 = load <2 x i64>, <2 x i64>* %scratch, align 16, !tbaa !4
  %41 = bitcast i64* %arrayidx151 to <2 x i64>*
  %42 = load <2 x i64>, <2 x i64>* %41, align 8, !tbaa !4
  %43 = xor <2 x i64> %42, %40
  %44 = bitcast i64* %arrayidx151 to <2 x i64>*
  store <2 x i64> %43, <2 x i64>* %44, align 8, !tbaa !4
  store i8 %0, i8* %arrayidx, align 8, !tbaa !4
  br label %cleanup

cleanup:                                          ; preds = %if.end34, %for.end, %for.end141
  %retval.0 = phi i32 [ 0, %for.end141 ], [ -1, %for.end ], [ -2, %if.end34 ]
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %3) #6
  ret i32 %retval.0
}

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define internal fastcc void @ctr64_inc(i8* nocapture noundef %counter) unnamed_addr #3 {
entry:
  %add.ptr = getelementptr inbounds i8, i8* %counter, i64 8
  %arrayidx = getelementptr inbounds i8, i8* %counter, i64 15
  %0 = load i8, i8* %arrayidx, align 1, !tbaa !4
  %inc = add i8 %0, 1
  store i8 %inc, i8* %arrayidx, align 1, !tbaa !4
  %tobool.not.not = icmp eq i8 %inc, 0
  br i1 %tobool.not.not, label %do.body.1, label %cleanup, !llvm.loop !31

do.body.1:                                        ; preds = %entry
  %arrayidx.1 = getelementptr inbounds i8, i8* %counter, i64 14
  %1 = load i8, i8* %arrayidx.1, align 1, !tbaa !4
  %inc.1 = add i8 %1, 1
  store i8 %inc.1, i8* %arrayidx.1, align 1, !tbaa !4
  %tobool.not.1.not = icmp eq i8 %inc.1, 0
  br i1 %tobool.not.1.not, label %do.body.2, label %cleanup, !llvm.loop !31

do.body.2:                                        ; preds = %do.body.1
  %arrayidx.2 = getelementptr inbounds i8, i8* %counter, i64 13
  %2 = load i8, i8* %arrayidx.2, align 1, !tbaa !4
  %inc.2 = add i8 %2, 1
  store i8 %inc.2, i8* %arrayidx.2, align 1, !tbaa !4
  %tobool.not.2.not = icmp eq i8 %inc.2, 0
  br i1 %tobool.not.2.not, label %do.body.3, label %cleanup, !llvm.loop !31

do.body.3:                                        ; preds = %do.body.2
  %arrayidx.3 = getelementptr inbounds i8, i8* %counter, i64 12
  %3 = load i8, i8* %arrayidx.3, align 1, !tbaa !4
  %inc.3 = add i8 %3, 1
  store i8 %inc.3, i8* %arrayidx.3, align 1, !tbaa !4
  %tobool.not.3.not = icmp eq i8 %inc.3, 0
  br i1 %tobool.not.3.not, label %do.body.4, label %cleanup, !llvm.loop !31

do.body.4:                                        ; preds = %do.body.3
  %arrayidx.4 = getelementptr inbounds i8, i8* %counter, i64 11
  %4 = load i8, i8* %arrayidx.4, align 1, !tbaa !4
  %inc.4 = add i8 %4, 1
  store i8 %inc.4, i8* %arrayidx.4, align 1, !tbaa !4
  %tobool.not.4.not = icmp eq i8 %inc.4, 0
  br i1 %tobool.not.4.not, label %do.body.5, label %cleanup, !llvm.loop !31

do.body.5:                                        ; preds = %do.body.4
  %arrayidx.5 = getelementptr inbounds i8, i8* %counter, i64 10
  %5 = load i8, i8* %arrayidx.5, align 1, !tbaa !4
  %inc.5 = add i8 %5, 1
  store i8 %inc.5, i8* %arrayidx.5, align 1, !tbaa !4
  %tobool.not.5.not = icmp eq i8 %inc.5, 0
  br i1 %tobool.not.5.not, label %do.body.6, label %cleanup, !llvm.loop !31

do.body.6:                                        ; preds = %do.body.5
  %arrayidx.6 = getelementptr inbounds i8, i8* %counter, i64 9
  %6 = load i8, i8* %arrayidx.6, align 1, !tbaa !4
  %inc.6 = add i8 %6, 1
  store i8 %inc.6, i8* %arrayidx.6, align 1, !tbaa !4
  %tobool.not.6.not = icmp eq i8 %inc.6, 0
  br i1 %tobool.not.6.not, label %do.body.7, label %cleanup, !llvm.loop !31

do.body.7:                                        ; preds = %do.body.6
  %7 = load i8, i8* %add.ptr, align 1, !tbaa !4
  %inc.7 = add i8 %7, 1
  store i8 %inc.7, i8* %add.ptr, align 1, !tbaa !4
  br label %cleanup

cleanup:                                          ; preds = %do.body.7, %do.body.6, %do.body.5, %do.body.4, %do.body.3, %do.body.2, %do.body.1, %entry
  ret void
}

; Function Attrs: noinline nounwind uwtable
define i32 @CRYPTO_ccm128_decrypt(%struct.ccm128_context* noundef %ctx, i8* nocapture noundef readonly %inp, i8* nocapture noundef writeonly %out, i64 noundef %len) local_unnamed_addr #0 {
entry:
  %scratch = alloca <2 x i64>, align 16
  %c = bitcast %struct.ccm128_context* %ctx to [16 x i8]*
  %arrayidx = bitcast %struct.ccm128_context* %ctx to i8*
  %0 = load i8, i8* %arrayidx, align 8, !tbaa !4
  %block1 = getelementptr inbounds %struct.ccm128_context, %struct.ccm128_context* %ctx, i64 0, i32 3
  %1 = load void (i8*, i8*, i8*)*, void (i8*, i8*, i8*)** %block1, align 8, !tbaa !11
  %key2 = getelementptr inbounds %struct.ccm128_context, %struct.ccm128_context* %ctx, i64 0, i32 4
  %2 = load i8*, i8** %key2, align 8, !tbaa !12
  %3 = bitcast <2 x i64>* %scratch to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %3) #6
  %conv = zext i8 %0 to i32
  %and = and i32 %conv, 64
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %cmac = getelementptr inbounds %struct.ccm128_context, %struct.ccm128_context* %ctx, i64 0, i32 1
  %arraydecay6 = bitcast %union.anon* %cmac to i8*
  tail call void %1(i8* noundef nonnull %arrayidx, i8* noundef nonnull %arraydecay6, i8* noundef %2) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %and8 = and i32 %conv, 7
  %conv9 = trunc i32 %and8 to i8
  store i8 %conv9, i8* %arrayidx, align 8, !tbaa !4
  %sub = xor i32 %and8, 15
  %cmp216.not = icmp eq i32 %and8, 0
  br i1 %cmp216.not, label %for.end, label %for.body.preheader

for.body.preheader:                               ; preds = %if.end
  %4 = zext i32 %sub to i64
  %umax = call i32 @llvm.umax.i32(i32 %sub, i32 14)
  %5 = zext i32 %umax to i64
  %6 = add nuw nsw i64 %5, 1
  %7 = sub nsw i64 %6, %4
  %8 = sub nsw i64 %5, %4
  %xtraiter = and i64 %7, 3
  %9 = icmp ult i64 %8, 3
  br i1 %9, label %for.end.loopexit.unr-lcssa, label %for.body.preheader.new

for.body.preheader.new:                           ; preds = %for.body.preheader
  %unroll_iter = and i64 %7, -4
  br label %for.body

for.body:                                         ; preds = %for.body, %for.body.preheader.new
  %indvars.iv = phi i64 [ %4, %for.body.preheader.new ], [ %indvars.iv.next.3, %for.body ]
  %n.0217 = phi i64 [ 0, %for.body.preheader.new ], [ %shl.3, %for.body ]
  %niter = phi i64 [ 0, %for.body.preheader.new ], [ %niter.next.3, %for.body ]
  %arrayidx16 = getelementptr inbounds [16 x i8], [16 x i8]* %c, i64 0, i64 %indvars.iv
  %10 = load i8, i8* %arrayidx16, align 1, !tbaa !4
  %conv17 = zext i8 %10 to i64
  %or = or i64 %n.0217, %conv17
  store i8 0, i8* %arrayidx16, align 1, !tbaa !4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %arrayidx16.1 = getelementptr inbounds [16 x i8], [16 x i8]* %c, i64 0, i64 %indvars.iv.next
  %11 = load i8, i8* %arrayidx16.1, align 1, !tbaa !4
  %conv17.1 = zext i8 %11 to i64
  store i8 0, i8* %arrayidx16.1, align 1, !tbaa !4
  %12 = shl i64 %or, 16
  %13 = shl nuw nsw i64 %conv17.1, 8
  %shl.1 = or i64 %12, %13
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2
  %arrayidx16.2 = getelementptr inbounds [16 x i8], [16 x i8]* %c, i64 0, i64 %indvars.iv.next.1
  %14 = load i8, i8* %arrayidx16.2, align 1, !tbaa !4
  %conv17.2 = zext i8 %14 to i64
  %or.2 = or i64 %shl.1, %conv17.2
  store i8 0, i8* %arrayidx16.2, align 1, !tbaa !4
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3
  %arrayidx16.3 = getelementptr inbounds [16 x i8], [16 x i8]* %c, i64 0, i64 %indvars.iv.next.2
  %15 = load i8, i8* %arrayidx16.3, align 1, !tbaa !4
  %conv17.3 = zext i8 %15 to i64
  store i8 0, i8* %arrayidx16.3, align 1, !tbaa !4
  %16 = shl i64 %or.2, 16
  %17 = shl nuw nsw i64 %conv17.3, 8
  %shl.3 = or i64 %16, %17
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4
  %niter.next.3 = add i64 %niter, 4
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %for.end.loopexit.unr-lcssa, label %for.body, !llvm.loop !32

for.end.loopexit.unr-lcssa:                       ; preds = %for.body, %for.body.preheader
  %shl.lcssa.ph = phi i64 [ undef, %for.body.preheader ], [ %shl.3, %for.body ]
  %indvars.iv.unr = phi i64 [ %4, %for.body.preheader ], [ %indvars.iv.next.3, %for.body ]
  %n.0217.unr = phi i64 [ 0, %for.body.preheader ], [ %shl.3, %for.body ]
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %for.end, label %for.body.epil

for.body.epil:                                    ; preds = %for.end.loopexit.unr-lcssa, %for.body.epil
  %indvars.iv.epil = phi i64 [ %indvars.iv.next.epil, %for.body.epil ], [ %indvars.iv.unr, %for.end.loopexit.unr-lcssa ]
  %n.0217.epil = phi i64 [ %shl.epil, %for.body.epil ], [ %n.0217.unr, %for.end.loopexit.unr-lcssa ]
  %epil.iter = phi i64 [ %epil.iter.next, %for.body.epil ], [ 0, %for.end.loopexit.unr-lcssa ]
  %arrayidx16.epil = getelementptr inbounds [16 x i8], [16 x i8]* %c, i64 0, i64 %indvars.iv.epil
  %18 = load i8, i8* %arrayidx16.epil, align 1, !tbaa !4
  %conv17.epil = zext i8 %18 to i64
  %or.epil = or i64 %n.0217.epil, %conv17.epil
  store i8 0, i8* %arrayidx16.epil, align 1, !tbaa !4
  %shl.epil = shl i64 %or.epil, 8
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %for.end, label %for.body.epil, !llvm.loop !33

for.end:                                          ; preds = %for.end.loopexit.unr-lcssa, %for.body.epil, %if.end
  %n.0.lcssa = phi i64 [ 0, %if.end ], [ %shl.lcssa.ph, %for.end.loopexit.unr-lcssa ], [ %shl.epil, %for.body.epil ]
  %arrayidx24 = getelementptr inbounds [16 x i8], [16 x i8]* %c, i64 0, i64 15
  %19 = load i8, i8* %arrayidx24, align 1, !tbaa !4
  %conv25 = zext i8 %19 to i64
  %or26 = or i64 %n.0.lcssa, %conv25
  store i8 1, i8* %arrayidx24, align 1, !tbaa !4
  %cmp30.not = icmp eq i64 %or26, %len
  br i1 %cmp30.not, label %while.cond.preheader, label %cleanup

while.cond.preheader:                             ; preds = %for.end
  %cmp34219 = icmp ugt i64 %len, 15
  br i1 %cmp34219, label %while.body.lr.ph, label %while.end

while.body.lr.ph:                                 ; preds = %while.cond.preheader
  %arrayidx44 = getelementptr inbounds <2 x i64>, <2 x i64>* %scratch, i64 0, i64 0
  %cmac47 = getelementptr inbounds %struct.ccm128_context, %struct.ccm128_context* %ctx, i64 0, i32 1
  %arrayidx49 = getelementptr inbounds %union.anon, %union.anon* %cmac47, i64 0, i32 0, i64 0
  %20 = getelementptr inbounds <2 x i64>, <2 x i64>* %scratch, i64 0, i64 1
  %arrayidx58 = getelementptr inbounds %struct.ccm128_context, %struct.ccm128_context* %ctx, i64 0, i32 1, i32 0, i64 1
  %arraydecay62 = bitcast %union.anon* %cmac47 to i8*
  br label %while.body

while.body:                                       ; preds = %while.body.lr.ph, %while.body
  %inp.addr.0222 = phi i8* [ %inp, %while.body.lr.ph ], [ %add.ptr, %while.body ]
  %out.addr.0221 = phi i8* [ %out, %while.body.lr.ph ], [ %add.ptr66, %while.body ]
  %len.addr.0220 = phi i64 [ %len, %while.body.lr.ph ], [ %sub67, %while.body ]
  call void %1(i8* noundef nonnull %arrayidx, i8* noundef nonnull %3, i8* noundef %2) #5
  call fastcc void @ctr64_inc(i8* noundef nonnull %arrayidx) #7
  %21 = load i64, i64* %arrayidx44, align 16, !tbaa !4
  %22 = bitcast i8* %inp.addr.0222 to i64*
  %23 = load i64, i64* %22, align 1, !tbaa !26
  %xor = xor i64 %23, %21
  %24 = bitcast i8* %out.addr.0221 to i64*
  store i64 %xor, i64* %24, align 1, !tbaa !26
  %25 = load i64, i64* %arrayidx49, align 8, !tbaa !4
  %xor50 = xor i64 %25, %xor
  store i64 %xor50, i64* %arrayidx49, align 8, !tbaa !4
  %26 = load i64, i64* %20, align 8, !tbaa !4
  %arrayidx53 = getelementptr inbounds i8, i8* %inp.addr.0222, i64 8
  %27 = bitcast i8* %arrayidx53 to i64*
  %28 = load i64, i64* %27, align 1, !tbaa !26
  %xor54 = xor i64 %28, %26
  %arrayidx55 = getelementptr inbounds i8, i8* %out.addr.0221, i64 8
  %29 = bitcast i8* %arrayidx55 to i64*
  store i64 %xor54, i64* %29, align 1, !tbaa !26
  %30 = load i64, i64* %arrayidx58, align 8, !tbaa !4
  %xor59 = xor i64 %30, %xor54
  store i64 %xor59, i64* %arrayidx58, align 8, !tbaa !4
  call void %1(i8* noundef nonnull %arraydecay62, i8* noundef nonnull %arraydecay62, i8* noundef %2) #5
  %add.ptr = getelementptr inbounds i8, i8* %inp.addr.0222, i64 16
  %add.ptr66 = getelementptr inbounds i8, i8* %out.addr.0221, i64 16
  %sub67 = add i64 %len.addr.0220, -16
  %cmp34 = icmp ugt i64 %sub67, 15
  br i1 %cmp34, label %while.body, label %while.end, !llvm.loop !34

while.end:                                        ; preds = %while.body, %while.cond.preheader
  %len.addr.0.lcssa = phi i64 [ %len, %while.cond.preheader ], [ %sub67, %while.body ]
  %out.addr.0.lcssa = phi i8* [ %out, %while.cond.preheader ], [ %add.ptr66, %while.body ]
  %inp.addr.0.lcssa = phi i8* [ %inp, %while.cond.preheader ], [ %add.ptr, %while.body ]
  %tobool68.not = icmp eq i64 %len.addr.0.lcssa, 0
  br i1 %tobool68.not, label %for.body113.preheader, label %for.body79.lr.ph

for.body79.lr.ph:                                 ; preds = %while.end
  %c73 = bitcast <2 x i64>* %scratch to [16 x i8]*
  call void %1(i8* noundef nonnull %arrayidx, i8* noundef nonnull %3, i8* noundef %2) #5
  %cmac92 = getelementptr inbounds %struct.ccm128_context, %struct.ccm128_context* %ctx, i64 0, i32 1
  %c93 = bitcast %union.anon* %cmac92 to [16 x i8]*
  br label %for.body79

for.body79:                                       ; preds = %for.body79.lr.ph, %for.body79
  %conv76228 = phi i64 [ 0, %for.body79.lr.ph ], [ %conv76, %for.body79 ]
  %arrayidx82 = getelementptr inbounds [16 x i8], [16 x i8]* %c73, i64 0, i64 %conv76228
  %31 = load i8, i8* %arrayidx82, align 1, !tbaa !4
  %arrayidx85 = getelementptr inbounds i8, i8* %inp.addr.0.lcssa, i64 %conv76228
  %32 = load i8, i8* %arrayidx85, align 1, !tbaa !4
  %xor87214 = xor i8 %32, %31
  %arrayidx90 = getelementptr inbounds i8, i8* %out.addr.0.lcssa, i64 %conv76228
  store i8 %xor87214, i8* %arrayidx90, align 1, !tbaa !4
  %arrayidx95 = getelementptr inbounds [16 x i8], [16 x i8]* %c93, i64 0, i64 %conv76228
  %33 = load i8, i8* %arrayidx95, align 1, !tbaa !4
  %xor97215 = xor i8 %33, %xor87214
  store i8 %xor97215, i8* %arrayidx95, align 1, !tbaa !4
  %inc100 = add nuw nsw i64 %conv76228, 1
  %conv76 = and i64 %inc100, 4294967295
  %cmp77 = icmp ugt i64 %len.addr.0.lcssa, %conv76
  br i1 %cmp77, label %for.body79, label %for.end101, !llvm.loop !35

for.end101:                                       ; preds = %for.body79
  %cmac102 = getelementptr inbounds %struct.ccm128_context, %struct.ccm128_context* %ctx, i64 0, i32 1
  %arraydecay104 = bitcast %union.anon* %cmac102 to i8*
  call void %1(i8* noundef nonnull %arraydecay104, i8* noundef nonnull %arraydecay104, i8* noundef %2) #5
  br label %for.body113.preheader

for.body113.preheader:                            ; preds = %while.end, %for.end101
  %34 = zext i32 %sub to i64
  %arrayidx117 = getelementptr inbounds [16 x i8], [16 x i8]* %c, i64 0, i64 %34
  store i8 0, i8* %arrayidx117, align 1, !tbaa !4
  %indvars.iv.next233 = add nuw nsw i64 %34, 1
  %exitcond236.not = icmp eq i64 %indvars.iv.next233, 16
  br i1 %exitcond236.not, label %for.end120, label %for.body113.1, !llvm.loop !36

for.body113.1:                                    ; preds = %for.body113.preheader
  %arrayidx117.1 = getelementptr inbounds [16 x i8], [16 x i8]* %c, i64 0, i64 %indvars.iv.next233
  store i8 0, i8* %arrayidx117.1, align 1, !tbaa !4
  %indvars.iv.next233.1 = add nuw nsw i64 %34, 2
  %exitcond236.not.1 = icmp eq i64 %indvars.iv.next233.1, 16
  br i1 %exitcond236.not.1, label %for.end120, label %for.body113.2, !llvm.loop !36

for.body113.2:                                    ; preds = %for.body113.1
  %arrayidx117.2 = getelementptr inbounds [16 x i8], [16 x i8]* %c, i64 0, i64 %indvars.iv.next233.1
  store i8 0, i8* %arrayidx117.2, align 1, !tbaa !4
  %indvars.iv.next233.2 = add nuw nsw i64 %34, 3
  %exitcond236.not.2 = icmp eq i64 %indvars.iv.next233.2, 16
  br i1 %exitcond236.not.2, label %for.end120, label %for.body113.3, !llvm.loop !36

for.body113.3:                                    ; preds = %for.body113.2
  %arrayidx117.3 = getelementptr inbounds [16 x i8], [16 x i8]* %c, i64 0, i64 %indvars.iv.next233.2
  store i8 0, i8* %arrayidx117.3, align 1, !tbaa !4
  %indvars.iv.next233.3 = add nuw nsw i64 %34, 4
  %exitcond236.not.3 = icmp eq i64 %indvars.iv.next233.3, 16
  br i1 %exitcond236.not.3, label %for.end120, label %for.body113.4, !llvm.loop !36

for.body113.4:                                    ; preds = %for.body113.3
  %arrayidx117.4 = getelementptr inbounds [16 x i8], [16 x i8]* %c, i64 0, i64 %indvars.iv.next233.3
  store i8 0, i8* %arrayidx117.4, align 1, !tbaa !4
  %indvars.iv.next233.4 = add nuw nsw i64 %34, 5
  %exitcond236.not.4 = icmp eq i64 %indvars.iv.next233.4, 16
  br i1 %exitcond236.not.4, label %for.end120, label %for.body113.5, !llvm.loop !36

for.body113.5:                                    ; preds = %for.body113.4
  %arrayidx117.5 = getelementptr inbounds [16 x i8], [16 x i8]* %c, i64 0, i64 %indvars.iv.next233.4
  store i8 0, i8* %arrayidx117.5, align 1, !tbaa !4
  %indvars.iv.next233.5 = add nuw nsw i64 %34, 6
  %exitcond236.not.5 = icmp eq i64 %indvars.iv.next233.5, 16
  br i1 %exitcond236.not.5, label %for.end120, label %for.body113.6, !llvm.loop !36

for.body113.6:                                    ; preds = %for.body113.5
  %arrayidx117.6 = getelementptr inbounds [16 x i8], [16 x i8]* %c, i64 0, i64 %indvars.iv.next233.5
  store i8 0, i8* %arrayidx117.6, align 1, !tbaa !4
  %indvars.iv.next233.6 = add nuw nsw i64 %34, 7
  %exitcond236.not.6 = icmp eq i64 %indvars.iv.next233.6, 16
  br i1 %exitcond236.not.6, label %for.end120, label %for.body113.7, !llvm.loop !36

for.body113.7:                                    ; preds = %for.body113.6
  %arrayidx117.7 = getelementptr inbounds [16 x i8], [16 x i8]* %c, i64 0, i64 %indvars.iv.next233.6
  store i8 0, i8* %arrayidx117.7, align 1, !tbaa !4
  br label %for.end120

for.end120:                                       ; preds = %for.body113.7, %for.body113.6, %for.body113.5, %for.body113.4, %for.body113.3, %for.body113.2, %for.body113.1, %for.body113.preheader
  call void %1(i8* noundef nonnull %arrayidx, i8* noundef nonnull %3, i8* noundef %2) #5
  %arrayidx130 = getelementptr inbounds %struct.ccm128_context, %struct.ccm128_context* %ctx, i64 0, i32 1, i32 0, i64 0
  %35 = load <2 x i64>, <2 x i64>* %scratch, align 16, !tbaa !4
  %36 = bitcast i64* %arrayidx130 to <2 x i64>*
  %37 = load <2 x i64>, <2 x i64>* %36, align 8, !tbaa !4
  %38 = xor <2 x i64> %37, %35
  %39 = bitcast i64* %arrayidx130 to <2 x i64>*
  store <2 x i64> %38, <2 x i64>* %39, align 8, !tbaa !4
  store i8 %0, i8* %arrayidx, align 8, !tbaa !4
  br label %cleanup

cleanup:                                          ; preds = %for.end, %for.end120
  %retval.0 = phi i32 [ 0, %for.end120 ], [ -1, %for.end ]
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %3) #6
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @CRYPTO_ccm128_encrypt_ccm64(%struct.ccm128_context* noundef %ctx, i8* noundef %inp, i8* noundef %out, i64 noundef %len, void (i8*, i8*, i64, i8*, i8*, i8*)* nocapture noundef readonly %stream) local_unnamed_addr #0 {
entry:
  %scratch = alloca <2 x i64>, align 16
  %c = bitcast %struct.ccm128_context* %ctx to [16 x i8]*
  %arrayidx = bitcast %struct.ccm128_context* %ctx to i8*
  %0 = load i8, i8* %arrayidx, align 8, !tbaa !4
  %block1 = getelementptr inbounds %struct.ccm128_context, %struct.ccm128_context* %ctx, i64 0, i32 3
  %1 = load void (i8*, i8*, i8*)*, void (i8*, i8*, i8*)** %block1, align 8, !tbaa !11
  %key2 = getelementptr inbounds %struct.ccm128_context, %struct.ccm128_context* %ctx, i64 0, i32 4
  %2 = load i8*, i8** %key2, align 8, !tbaa !12
  %3 = bitcast <2 x i64>* %scratch to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %3) #6
  %conv = zext i8 %0 to i32
  %and = and i32 %conv, 64
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %cmac = getelementptr inbounds %struct.ccm128_context, %struct.ccm128_context* %ctx, i64 0, i32 1
  %arraydecay6 = bitcast %union.anon* %cmac to i8*
  tail call void %1(i8* noundef nonnull %arrayidx, i8* noundef nonnull %arraydecay6, i8* noundef %2) #5
  %blocks = getelementptr inbounds %struct.ccm128_context, %struct.ccm128_context* %ctx, i64 0, i32 2
  %4 = load i64, i64* %blocks, align 8, !tbaa !7
  %inc = add i64 %4, 1
  store i64 %inc, i64* %blocks, align 8, !tbaa !7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %and8 = and i32 %conv, 7
  %conv9 = trunc i32 %and8 to i8
  store i8 %conv9, i8* %arrayidx, align 8, !tbaa !4
  %sub = xor i32 %and8, 15
  %cmp229.not = icmp eq i32 %and8, 0
  br i1 %cmp229.not, label %for.end, label %for.body.preheader

for.body.preheader:                               ; preds = %if.end
  %5 = zext i32 %sub to i64
  %umax = call i32 @llvm.umax.i32(i32 %sub, i32 14)
  %6 = zext i32 %umax to i64
  %7 = add nuw nsw i64 %6, 1
  %8 = sub nsw i64 %7, %5
  %9 = sub nsw i64 %6, %5
  %xtraiter = and i64 %8, 3
  %10 = icmp ult i64 %9, 3
  br i1 %10, label %for.end.loopexit.unr-lcssa, label %for.body.preheader.new

for.body.preheader.new:                           ; preds = %for.body.preheader
  %unroll_iter = and i64 %8, -4
  br label %for.body

for.body:                                         ; preds = %for.body, %for.body.preheader.new
  %indvars.iv = phi i64 [ %5, %for.body.preheader.new ], [ %indvars.iv.next.3, %for.body ]
  %n.0230 = phi i64 [ 0, %for.body.preheader.new ], [ %shl.3, %for.body ]
  %niter = phi i64 [ 0, %for.body.preheader.new ], [ %niter.next.3, %for.body ]
  %arrayidx16 = getelementptr inbounds [16 x i8], [16 x i8]* %c, i64 0, i64 %indvars.iv
  %11 = load i8, i8* %arrayidx16, align 1, !tbaa !4
  %conv17 = zext i8 %11 to i64
  %or = or i64 %n.0230, %conv17
  store i8 0, i8* %arrayidx16, align 1, !tbaa !4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %arrayidx16.1 = getelementptr inbounds [16 x i8], [16 x i8]* %c, i64 0, i64 %indvars.iv.next
  %12 = load i8, i8* %arrayidx16.1, align 1, !tbaa !4
  %conv17.1 = zext i8 %12 to i64
  store i8 0, i8* %arrayidx16.1, align 1, !tbaa !4
  %13 = shl i64 %or, 16
  %14 = shl nuw nsw i64 %conv17.1, 8
  %shl.1 = or i64 %13, %14
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2
  %arrayidx16.2 = getelementptr inbounds [16 x i8], [16 x i8]* %c, i64 0, i64 %indvars.iv.next.1
  %15 = load i8, i8* %arrayidx16.2, align 1, !tbaa !4
  %conv17.2 = zext i8 %15 to i64
  %or.2 = or i64 %shl.1, %conv17.2
  store i8 0, i8* %arrayidx16.2, align 1, !tbaa !4
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3
  %arrayidx16.3 = getelementptr inbounds [16 x i8], [16 x i8]* %c, i64 0, i64 %indvars.iv.next.2
  %16 = load i8, i8* %arrayidx16.3, align 1, !tbaa !4
  %conv17.3 = zext i8 %16 to i64
  store i8 0, i8* %arrayidx16.3, align 1, !tbaa !4
  %17 = shl i64 %or.2, 16
  %18 = shl nuw nsw i64 %conv17.3, 8
  %shl.3 = or i64 %17, %18
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4
  %niter.next.3 = add i64 %niter, 4
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %for.end.loopexit.unr-lcssa, label %for.body, !llvm.loop !37

for.end.loopexit.unr-lcssa:                       ; preds = %for.body, %for.body.preheader
  %shl.lcssa.ph = phi i64 [ undef, %for.body.preheader ], [ %shl.3, %for.body ]
  %indvars.iv.unr = phi i64 [ %5, %for.body.preheader ], [ %indvars.iv.next.3, %for.body ]
  %n.0230.unr = phi i64 [ 0, %for.body.preheader ], [ %shl.3, %for.body ]
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %for.end, label %for.body.epil

for.body.epil:                                    ; preds = %for.end.loopexit.unr-lcssa, %for.body.epil
  %indvars.iv.epil = phi i64 [ %indvars.iv.next.epil, %for.body.epil ], [ %indvars.iv.unr, %for.end.loopexit.unr-lcssa ]
  %n.0230.epil = phi i64 [ %shl.epil, %for.body.epil ], [ %n.0230.unr, %for.end.loopexit.unr-lcssa ]
  %epil.iter = phi i64 [ %epil.iter.next, %for.body.epil ], [ 0, %for.end.loopexit.unr-lcssa ]
  %arrayidx16.epil = getelementptr inbounds [16 x i8], [16 x i8]* %c, i64 0, i64 %indvars.iv.epil
  %19 = load i8, i8* %arrayidx16.epil, align 1, !tbaa !4
  %conv17.epil = zext i8 %19 to i64
  %or.epil = or i64 %n.0230.epil, %conv17.epil
  store i8 0, i8* %arrayidx16.epil, align 1, !tbaa !4
  %shl.epil = shl i64 %or.epil, 8
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %for.end, label %for.body.epil, !llvm.loop !38

for.end:                                          ; preds = %for.end.loopexit.unr-lcssa, %for.body.epil, %if.end
  %n.0.lcssa = phi i64 [ 0, %if.end ], [ %shl.lcssa.ph, %for.end.loopexit.unr-lcssa ], [ %shl.epil, %for.body.epil ]
  %arrayidx25 = getelementptr inbounds [16 x i8], [16 x i8]* %c, i64 0, i64 15
  %20 = load i8, i8* %arrayidx25, align 1, !tbaa !4
  %conv26 = zext i8 %20 to i64
  %or27 = or i64 %n.0.lcssa, %conv26
  store i8 1, i8* %arrayidx25, align 1, !tbaa !4
  %cmp31.not = icmp eq i64 %or27, %len
  br i1 %cmp31.not, label %if.end34, label %cleanup

if.end34:                                         ; preds = %for.end
  %add = add i64 %len, 15
  %shr = lshr i64 %add, 3
  %or35 = or i64 %shr, 1
  %blocks36 = getelementptr inbounds %struct.ccm128_context, %struct.ccm128_context* %ctx, i64 0, i32 2
  %21 = load i64, i64* %blocks36, align 8, !tbaa !7
  %add37 = add i64 %21, %or35
  store i64 %add37, i64* %blocks36, align 8, !tbaa !7
  %cmp39 = icmp ugt i64 %add37, 2305843009213693952
  br i1 %cmp39, label %cleanup, label %if.end42

if.end42:                                         ; preds = %if.end34
  %div = lshr i64 %len, 4
  %tobool43.not = icmp ult i64 %len, 16
  br i1 %tobool43.not, label %if.end60, label %if.then44

if.then44:                                        ; preds = %if.end42
  %cmac48 = getelementptr inbounds %struct.ccm128_context, %struct.ccm128_context* %ctx, i64 0, i32 1
  %arraydecay50 = bitcast %union.anon* %cmac48 to i8*
  tail call void %stream(i8* noundef %inp, i8* noundef %out, i64 noundef %div, i8* noundef %2, i8* noundef nonnull %arrayidx, i8* noundef nonnull %arraydecay50) #5
  %mul = and i64 %len, -16
  %sub52 = and i64 %len, 15
  %tobool53.not = icmp eq i64 %sub52, 0
  br i1 %tobool53.not, label %for.body115.preheader, label %if.end60.thread

if.end60.thread:                                  ; preds = %if.then44
  %add.ptr51 = getelementptr inbounds i8, i8* %out, i64 %mul
  %add.ptr = getelementptr inbounds i8, i8* %inp, i64 %mul
  tail call fastcc void @ctr64_add(i8* noundef nonnull %arrayidx, i64 noundef %div) #7
  br label %for.body67.lr.ph

if.end60:                                         ; preds = %if.end42
  %tobool61.not = icmp eq i64 %len, 0
  br i1 %tobool61.not, label %for.body115.preheader, label %for.body67.lr.ph

for.body67.lr.ph:                                 ; preds = %if.end60, %if.end60.thread
  %inp.addr.0254 = phi i8* [ %add.ptr, %if.end60.thread ], [ %inp, %if.end60 ]
  %out.addr.0253 = phi i8* [ %add.ptr51, %if.end60.thread ], [ %out, %if.end60 ]
  %len.addr.0251 = phi i64 [ %sub52, %if.end60.thread ], [ %len, %if.end60 ]
  %cmac71 = getelementptr inbounds %struct.ccm128_context, %struct.ccm128_context* %ctx, i64 0, i32 1
  %c72 = bitcast %union.anon* %cmac71 to [16 x i8]*
  br label %for.body67

for.body67:                                       ; preds = %for.body67.lr.ph, %for.body67
  %conv64234 = phi i64 [ 0, %for.body67.lr.ph ], [ %conv64, %for.body67 ]
  %arrayidx69 = getelementptr inbounds i8, i8* %inp.addr.0254, i64 %conv64234
  %22 = load i8, i8* %arrayidx69, align 1, !tbaa !4
  %arrayidx74 = getelementptr inbounds [16 x i8], [16 x i8]* %c72, i64 0, i64 %conv64234
  %23 = load i8, i8* %arrayidx74, align 1, !tbaa !4
  %xor224 = xor i8 %23, %22
  store i8 %xor224, i8* %arrayidx74, align 1, !tbaa !4
  %inc78 = add nuw nsw i64 %conv64234, 1
  %conv64 = and i64 %inc78, 4294967295
  %cmp65 = icmp ugt i64 %len.addr.0251, %conv64
  br i1 %cmp65, label %for.body67, label %for.body95.preheader, !llvm.loop !39

for.body95.preheader:                             ; preds = %for.body67
  %cmac80 = getelementptr inbounds %struct.ccm128_context, %struct.ccm128_context* %ctx, i64 0, i32 1
  %arraydecay82 = bitcast %union.anon* %cmac80 to i8*
  tail call void %1(i8* noundef nonnull %arraydecay82, i8* noundef nonnull %arraydecay82, i8* noundef %2) #5
  %c89 = bitcast <2 x i64>* %scratch to [16 x i8]*
  call void %1(i8* noundef nonnull %arrayidx, i8* noundef nonnull %3, i8* noundef %2) #5
  br label %for.body95

for.body95:                                       ; preds = %for.body95.preheader, %for.body95
  %conv92237 = phi i64 [ %conv92, %for.body95 ], [ 0, %for.body95.preheader ]
  %arrayidx98 = getelementptr inbounds [16 x i8], [16 x i8]* %c89, i64 0, i64 %conv92237
  %24 = load i8, i8* %arrayidx98, align 1, !tbaa !4
  %arrayidx101 = getelementptr inbounds i8, i8* %inp.addr.0254, i64 %conv92237
  %25 = load i8, i8* %arrayidx101, align 1, !tbaa !4
  %xor103223 = xor i8 %25, %24
  %arrayidx106 = getelementptr inbounds i8, i8* %out.addr.0253, i64 %conv92237
  store i8 %xor103223, i8* %arrayidx106, align 1, !tbaa !4
  %inc108 = add nuw nsw i64 %conv92237, 1
  %conv92 = and i64 %inc108, 4294967295
  %cmp93 = icmp ugt i64 %len.addr.0251, %conv92
  br i1 %cmp93, label %for.body95, label %for.body115.preheader, !llvm.loop !40

for.body115.preheader:                            ; preds = %for.body95, %if.end60, %if.then44
  %26 = zext i32 %sub to i64
  %arrayidx119 = getelementptr inbounds [16 x i8], [16 x i8]* %c, i64 0, i64 %26
  store i8 0, i8* %arrayidx119, align 1, !tbaa !4
  %indvars.iv.next243 = add nuw nsw i64 %26, 1
  %exitcond246.not = icmp eq i64 %indvars.iv.next243, 16
  br i1 %exitcond246.not, label %for.end122, label %for.body115.1, !llvm.loop !41

for.body115.1:                                    ; preds = %for.body115.preheader
  %arrayidx119.1 = getelementptr inbounds [16 x i8], [16 x i8]* %c, i64 0, i64 %indvars.iv.next243
  store i8 0, i8* %arrayidx119.1, align 1, !tbaa !4
  %indvars.iv.next243.1 = add nuw nsw i64 %26, 2
  %exitcond246.not.1 = icmp eq i64 %indvars.iv.next243.1, 16
  br i1 %exitcond246.not.1, label %for.end122, label %for.body115.2, !llvm.loop !41

for.body115.2:                                    ; preds = %for.body115.1
  %arrayidx119.2 = getelementptr inbounds [16 x i8], [16 x i8]* %c, i64 0, i64 %indvars.iv.next243.1
  store i8 0, i8* %arrayidx119.2, align 1, !tbaa !4
  %indvars.iv.next243.2 = add nuw nsw i64 %26, 3
  %exitcond246.not.2 = icmp eq i64 %indvars.iv.next243.2, 16
  br i1 %exitcond246.not.2, label %for.end122, label %for.body115.3, !llvm.loop !41

for.body115.3:                                    ; preds = %for.body115.2
  %arrayidx119.3 = getelementptr inbounds [16 x i8], [16 x i8]* %c, i64 0, i64 %indvars.iv.next243.2
  store i8 0, i8* %arrayidx119.3, align 1, !tbaa !4
  %indvars.iv.next243.3 = add nuw nsw i64 %26, 4
  %exitcond246.not.3 = icmp eq i64 %indvars.iv.next243.3, 16
  br i1 %exitcond246.not.3, label %for.end122, label %for.body115.4, !llvm.loop !41

for.body115.4:                                    ; preds = %for.body115.3
  %arrayidx119.4 = getelementptr inbounds [16 x i8], [16 x i8]* %c, i64 0, i64 %indvars.iv.next243.3
  store i8 0, i8* %arrayidx119.4, align 1, !tbaa !4
  %indvars.iv.next243.4 = add nuw nsw i64 %26, 5
  %exitcond246.not.4 = icmp eq i64 %indvars.iv.next243.4, 16
  br i1 %exitcond246.not.4, label %for.end122, label %for.body115.5, !llvm.loop !41

for.body115.5:                                    ; preds = %for.body115.4
  %arrayidx119.5 = getelementptr inbounds [16 x i8], [16 x i8]* %c, i64 0, i64 %indvars.iv.next243.4
  store i8 0, i8* %arrayidx119.5, align 1, !tbaa !4
  %indvars.iv.next243.5 = add nuw nsw i64 %26, 6
  %exitcond246.not.5 = icmp eq i64 %indvars.iv.next243.5, 16
  br i1 %exitcond246.not.5, label %for.end122, label %for.body115.6, !llvm.loop !41

for.body115.6:                                    ; preds = %for.body115.5
  %arrayidx119.6 = getelementptr inbounds [16 x i8], [16 x i8]* %c, i64 0, i64 %indvars.iv.next243.5
  store i8 0, i8* %arrayidx119.6, align 1, !tbaa !4
  %indvars.iv.next243.6 = add nuw nsw i64 %26, 7
  %exitcond246.not.6 = icmp eq i64 %indvars.iv.next243.6, 16
  br i1 %exitcond246.not.6, label %for.end122, label %for.body115.7, !llvm.loop !41

for.body115.7:                                    ; preds = %for.body115.6
  %arrayidx119.7 = getelementptr inbounds [16 x i8], [16 x i8]* %c, i64 0, i64 %indvars.iv.next243.6
  store i8 0, i8* %arrayidx119.7, align 1, !tbaa !4
  br label %for.end122

for.end122:                                       ; preds = %for.body115.7, %for.body115.6, %for.body115.5, %for.body115.4, %for.body115.3, %for.body115.2, %for.body115.1, %for.body115.preheader
  call void %1(i8* noundef nonnull %arrayidx, i8* noundef nonnull %3, i8* noundef %2) #5
  %arrayidx131 = getelementptr inbounds %struct.ccm128_context, %struct.ccm128_context* %ctx, i64 0, i32 1, i32 0, i64 0
  %27 = load <2 x i64>, <2 x i64>* %scratch, align 16, !tbaa !4
  %28 = bitcast i64* %arrayidx131 to <2 x i64>*
  %29 = load <2 x i64>, <2 x i64>* %28, align 8, !tbaa !4
  %30 = xor <2 x i64> %29, %27
  %31 = bitcast i64* %arrayidx131 to <2 x i64>*
  store <2 x i64> %30, <2 x i64>* %31, align 8, !tbaa !4
  store i8 %0, i8* %arrayidx, align 8, !tbaa !4
  br label %cleanup

cleanup:                                          ; preds = %if.end34, %for.end, %for.end122
  %retval.0 = phi i32 [ 0, %for.end122 ], [ -1, %for.end ], [ -2, %if.end34 ]
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %3) #6
  ret i32 %retval.0
}

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define internal fastcc void @ctr64_add(i8* nocapture noundef %counter, i64 noundef %inc) unnamed_addr #3 {
entry:
  %add.ptr = getelementptr inbounds i8, i8* %counter, i64 8
  %arrayidx = getelementptr inbounds i8, i8* %counter, i64 15
  %0 = load i8, i8* %arrayidx, align 1, !tbaa !4
  %conv = zext i8 %0 to i64
  %and = and i64 %inc, 255
  %add1 = add nuw nsw i64 %and, %conv
  %conv2 = trunc i64 %add1 to i8
  store i8 %conv2, i8* %arrayidx, align 1, !tbaa !4
  %tobool5 = icmp ugt i64 %inc, 255
  %tobool6 = icmp ugt i64 %add1, 255
  %1 = select i1 %tobool5, i1 true, i1 %tobool6
  br i1 %1, label %do.body.1, label %do.end, !llvm.loop !42

do.body.1:                                        ; preds = %entry
  %shr4 = lshr i64 %inc, 8
  %shr = lshr i64 %add1, 8
  %arrayidx.1 = getelementptr inbounds i8, i8* %counter, i64 14
  %2 = load i8, i8* %arrayidx.1, align 1, !tbaa !4
  %conv.1 = zext i8 %2 to i64
  %and.1 = and i64 %shr4, 255
  %add.1 = add nuw nsw i64 %shr, %and.1
  %add1.1 = add nuw nsw i64 %add.1, %conv.1
  %conv2.1 = trunc i64 %add1.1 to i8
  store i8 %conv2.1, i8* %arrayidx.1, align 1, !tbaa !4
  %tobool5.1 = icmp ugt i64 %inc, 65535
  %tobool6.1 = icmp ugt i64 %add1.1, 255
  %3 = select i1 %tobool5.1, i1 true, i1 %tobool6.1
  br i1 %3, label %do.body.2, label %do.end, !llvm.loop !42

do.body.2:                                        ; preds = %do.body.1
  %shr4.1 = lshr i64 %inc, 16
  %shr.1 = lshr i64 %add1.1, 8
  %arrayidx.2 = getelementptr inbounds i8, i8* %counter, i64 13
  %4 = load i8, i8* %arrayidx.2, align 1, !tbaa !4
  %conv.2 = zext i8 %4 to i64
  %and.2 = and i64 %shr4.1, 255
  %add.2 = add nuw nsw i64 %shr.1, %and.2
  %add1.2 = add nuw nsw i64 %add.2, %conv.2
  %conv2.2 = trunc i64 %add1.2 to i8
  store i8 %conv2.2, i8* %arrayidx.2, align 1, !tbaa !4
  %tobool5.2 = icmp ugt i64 %inc, 16777215
  %tobool6.2 = icmp ugt i64 %add1.2, 255
  %5 = select i1 %tobool5.2, i1 true, i1 %tobool6.2
  br i1 %5, label %do.body.3, label %do.end, !llvm.loop !42

do.body.3:                                        ; preds = %do.body.2
  %shr4.2 = lshr i64 %inc, 24
  %shr.2 = lshr i64 %add1.2, 8
  %arrayidx.3 = getelementptr inbounds i8, i8* %counter, i64 12
  %6 = load i8, i8* %arrayidx.3, align 1, !tbaa !4
  %conv.3 = zext i8 %6 to i64
  %and.3 = and i64 %shr4.2, 255
  %add.3 = add nuw nsw i64 %shr.2, %and.3
  %add1.3 = add nuw nsw i64 %add.3, %conv.3
  %conv2.3 = trunc i64 %add1.3 to i8
  store i8 %conv2.3, i8* %arrayidx.3, align 1, !tbaa !4
  %tobool5.3 = icmp ugt i64 %inc, 4294967295
  %tobool6.3 = icmp ugt i64 %add1.3, 255
  %7 = select i1 %tobool5.3, i1 true, i1 %tobool6.3
  br i1 %7, label %do.body.4, label %do.end, !llvm.loop !42

do.body.4:                                        ; preds = %do.body.3
  %shr4.3 = lshr i64 %inc, 32
  %shr.3 = lshr i64 %add1.3, 8
  %arrayidx.4 = getelementptr inbounds i8, i8* %counter, i64 11
  %8 = load i8, i8* %arrayidx.4, align 1, !tbaa !4
  %conv.4 = zext i8 %8 to i64
  %and.4 = and i64 %shr4.3, 255
  %add.4 = add nuw nsw i64 %shr.3, %and.4
  %add1.4 = add nuw nsw i64 %add.4, %conv.4
  %conv2.4 = trunc i64 %add1.4 to i8
  store i8 %conv2.4, i8* %arrayidx.4, align 1, !tbaa !4
  %tobool5.4 = icmp ugt i64 %inc, 1099511627775
  %tobool6.4 = icmp ugt i64 %add1.4, 255
  %9 = select i1 %tobool5.4, i1 true, i1 %tobool6.4
  br i1 %9, label %do.body.5, label %do.end, !llvm.loop !42

do.body.5:                                        ; preds = %do.body.4
  %shr4.4 = lshr i64 %inc, 40
  %shr.4 = lshr i64 %add1.4, 8
  %arrayidx.5 = getelementptr inbounds i8, i8* %counter, i64 10
  %10 = load i8, i8* %arrayidx.5, align 1, !tbaa !4
  %conv.5 = zext i8 %10 to i64
  %and.5 = and i64 %shr4.4, 255
  %add.5 = add nuw nsw i64 %shr.4, %and.5
  %add1.5 = add nuw nsw i64 %add.5, %conv.5
  %conv2.5 = trunc i64 %add1.5 to i8
  store i8 %conv2.5, i8* %arrayidx.5, align 1, !tbaa !4
  %tobool5.5 = icmp ugt i64 %inc, 281474976710655
  %tobool6.5 = icmp ugt i64 %add1.5, 255
  %11 = select i1 %tobool5.5, i1 true, i1 %tobool6.5
  br i1 %11, label %do.body.6, label %do.end, !llvm.loop !42

do.body.6:                                        ; preds = %do.body.5
  %shr4.5 = lshr i64 %inc, 48
  %shr.5 = lshr i64 %add1.5, 8
  %arrayidx.6 = getelementptr inbounds i8, i8* %counter, i64 9
  %12 = load i8, i8* %arrayidx.6, align 1, !tbaa !4
  %conv.6 = zext i8 %12 to i64
  %and.6 = and i64 %shr4.5, 255
  %add.6 = add nuw nsw i64 %shr.5, %and.6
  %add1.6 = add nuw nsw i64 %add.6, %conv.6
  %conv2.6 = trunc i64 %add1.6 to i8
  store i8 %conv2.6, i8* %arrayidx.6, align 1, !tbaa !4
  %tobool5.6 = icmp ugt i64 %inc, 72057594037927935
  %tobool6.6 = icmp ugt i64 %add1.6, 255
  %13 = select i1 %tobool5.6, i1 true, i1 %tobool6.6
  br i1 %13, label %do.body.7, label %do.end, !llvm.loop !42

do.body.7:                                        ; preds = %do.body.6
  %shr4.6 = lshr i64 %inc, 56
  %shr.6 = lshr i64 %add1.6, 8
  %14 = load i8, i8* %add.ptr, align 1, !tbaa !4
  %add.7 = add nuw nsw i64 %shr.6, %shr4.6
  %15 = trunc i64 %add.7 to i8
  %conv2.7 = add i8 %14, %15
  store i8 %conv2.7, i8* %add.ptr, align 1, !tbaa !4
  br label %do.end

do.end:                                           ; preds = %do.body.7, %do.body.6, %do.body.5, %do.body.4, %do.body.3, %do.body.2, %do.body.1, %entry
  ret void
}

; Function Attrs: noinline nounwind uwtable
define i32 @CRYPTO_ccm128_decrypt_ccm64(%struct.ccm128_context* noundef %ctx, i8* noundef %inp, i8* noundef %out, i64 noundef %len, void (i8*, i8*, i64, i8*, i8*, i8*)* nocapture noundef readonly %stream) local_unnamed_addr #0 {
entry:
  %scratch = alloca <2 x i64>, align 16
  %c = bitcast %struct.ccm128_context* %ctx to [16 x i8]*
  %arrayidx = bitcast %struct.ccm128_context* %ctx to i8*
  %0 = load i8, i8* %arrayidx, align 8, !tbaa !4
  %block1 = getelementptr inbounds %struct.ccm128_context, %struct.ccm128_context* %ctx, i64 0, i32 3
  %1 = load void (i8*, i8*, i8*)*, void (i8*, i8*, i8*)** %block1, align 8, !tbaa !11
  %key2 = getelementptr inbounds %struct.ccm128_context, %struct.ccm128_context* %ctx, i64 0, i32 4
  %2 = load i8*, i8** %key2, align 8, !tbaa !12
  %3 = bitcast <2 x i64>* %scratch to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %3) #6
  %conv = zext i8 %0 to i32
  %and = and i32 %conv, 64
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %cmac = getelementptr inbounds %struct.ccm128_context, %struct.ccm128_context* %ctx, i64 0, i32 1
  %arraydecay6 = bitcast %union.anon* %cmac to i8*
  tail call void %1(i8* noundef nonnull %arrayidx, i8* noundef nonnull %arraydecay6, i8* noundef %2) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %and8 = and i32 %conv, 7
  %conv9 = trunc i32 %and8 to i8
  store i8 %conv9, i8* %arrayidx, align 8, !tbaa !4
  %sub = xor i32 %and8, 15
  %cmp209.not = icmp eq i32 %and8, 0
  br i1 %cmp209.not, label %for.end, label %for.body.preheader

for.body.preheader:                               ; preds = %if.end
  %4 = zext i32 %sub to i64
  %umax = call i32 @llvm.umax.i32(i32 %sub, i32 14)
  %5 = zext i32 %umax to i64
  %6 = add nuw nsw i64 %5, 1
  %7 = sub nsw i64 %6, %4
  %8 = sub nsw i64 %5, %4
  %xtraiter = and i64 %7, 3
  %9 = icmp ult i64 %8, 3
  br i1 %9, label %for.end.loopexit.unr-lcssa, label %for.body.preheader.new

for.body.preheader.new:                           ; preds = %for.body.preheader
  %unroll_iter = and i64 %7, -4
  br label %for.body

for.body:                                         ; preds = %for.body, %for.body.preheader.new
  %indvars.iv = phi i64 [ %4, %for.body.preheader.new ], [ %indvars.iv.next.3, %for.body ]
  %n.0210 = phi i64 [ 0, %for.body.preheader.new ], [ %shl.3, %for.body ]
  %niter = phi i64 [ 0, %for.body.preheader.new ], [ %niter.next.3, %for.body ]
  %arrayidx16 = getelementptr inbounds [16 x i8], [16 x i8]* %c, i64 0, i64 %indvars.iv
  %10 = load i8, i8* %arrayidx16, align 1, !tbaa !4
  %conv17 = zext i8 %10 to i64
  %or = or i64 %n.0210, %conv17
  store i8 0, i8* %arrayidx16, align 1, !tbaa !4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %arrayidx16.1 = getelementptr inbounds [16 x i8], [16 x i8]* %c, i64 0, i64 %indvars.iv.next
  %11 = load i8, i8* %arrayidx16.1, align 1, !tbaa !4
  %conv17.1 = zext i8 %11 to i64
  store i8 0, i8* %arrayidx16.1, align 1, !tbaa !4
  %12 = shl i64 %or, 16
  %13 = shl nuw nsw i64 %conv17.1, 8
  %shl.1 = or i64 %12, %13
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2
  %arrayidx16.2 = getelementptr inbounds [16 x i8], [16 x i8]* %c, i64 0, i64 %indvars.iv.next.1
  %14 = load i8, i8* %arrayidx16.2, align 1, !tbaa !4
  %conv17.2 = zext i8 %14 to i64
  %or.2 = or i64 %shl.1, %conv17.2
  store i8 0, i8* %arrayidx16.2, align 1, !tbaa !4
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3
  %arrayidx16.3 = getelementptr inbounds [16 x i8], [16 x i8]* %c, i64 0, i64 %indvars.iv.next.2
  %15 = load i8, i8* %arrayidx16.3, align 1, !tbaa !4
  %conv17.3 = zext i8 %15 to i64
  store i8 0, i8* %arrayidx16.3, align 1, !tbaa !4
  %16 = shl i64 %or.2, 16
  %17 = shl nuw nsw i64 %conv17.3, 8
  %shl.3 = or i64 %16, %17
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4
  %niter.next.3 = add i64 %niter, 4
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %for.end.loopexit.unr-lcssa, label %for.body, !llvm.loop !43

for.end.loopexit.unr-lcssa:                       ; preds = %for.body, %for.body.preheader
  %shl.lcssa.ph = phi i64 [ undef, %for.body.preheader ], [ %shl.3, %for.body ]
  %indvars.iv.unr = phi i64 [ %4, %for.body.preheader ], [ %indvars.iv.next.3, %for.body ]
  %n.0210.unr = phi i64 [ 0, %for.body.preheader ], [ %shl.3, %for.body ]
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %for.end, label %for.body.epil

for.body.epil:                                    ; preds = %for.end.loopexit.unr-lcssa, %for.body.epil
  %indvars.iv.epil = phi i64 [ %indvars.iv.next.epil, %for.body.epil ], [ %indvars.iv.unr, %for.end.loopexit.unr-lcssa ]
  %n.0210.epil = phi i64 [ %shl.epil, %for.body.epil ], [ %n.0210.unr, %for.end.loopexit.unr-lcssa ]
  %epil.iter = phi i64 [ %epil.iter.next, %for.body.epil ], [ 0, %for.end.loopexit.unr-lcssa ]
  %arrayidx16.epil = getelementptr inbounds [16 x i8], [16 x i8]* %c, i64 0, i64 %indvars.iv.epil
  %18 = load i8, i8* %arrayidx16.epil, align 1, !tbaa !4
  %conv17.epil = zext i8 %18 to i64
  %or.epil = or i64 %n.0210.epil, %conv17.epil
  store i8 0, i8* %arrayidx16.epil, align 1, !tbaa !4
  %shl.epil = shl i64 %or.epil, 8
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %for.end, label %for.body.epil, !llvm.loop !44

for.end:                                          ; preds = %for.end.loopexit.unr-lcssa, %for.body.epil, %if.end
  %n.0.lcssa = phi i64 [ 0, %if.end ], [ %shl.lcssa.ph, %for.end.loopexit.unr-lcssa ], [ %shl.epil, %for.body.epil ]
  %arrayidx24 = getelementptr inbounds [16 x i8], [16 x i8]* %c, i64 0, i64 15
  %19 = load i8, i8* %arrayidx24, align 1, !tbaa !4
  %conv25 = zext i8 %19 to i64
  %or26 = or i64 %n.0.lcssa, %conv25
  store i8 1, i8* %arrayidx24, align 1, !tbaa !4
  %cmp30.not = icmp eq i64 %or26, %len
  br i1 %cmp30.not, label %if.end33, label %cleanup

if.end33:                                         ; preds = %for.end
  %div = lshr i64 %len, 4
  %tobool34.not = icmp ult i64 %len, 16
  br i1 %tobool34.not, label %if.end51, label %if.then35

if.then35:                                        ; preds = %if.end33
  %cmac39 = getelementptr inbounds %struct.ccm128_context, %struct.ccm128_context* %ctx, i64 0, i32 1
  %arraydecay41 = bitcast %union.anon* %cmac39 to i8*
  tail call void %stream(i8* noundef %inp, i8* noundef %out, i64 noundef %div, i8* noundef %2, i8* noundef nonnull %arrayidx, i8* noundef nonnull %arraydecay41) #5
  %mul = and i64 %len, -16
  %sub43 = and i64 %len, 15
  %tobool44.not = icmp eq i64 %sub43, 0
  br i1 %tobool44.not, label %for.body96.preheader, label %if.end51.thread201

if.end51.thread201:                               ; preds = %if.then35
  %add.ptr42 = getelementptr inbounds i8, i8* %out, i64 %mul
  %add.ptr = getelementptr inbounds i8, i8* %inp, i64 %mul
  tail call fastcc void @ctr64_add(i8* noundef nonnull %arrayidx, i64 noundef %div) #7
  br label %for.body63.lr.ph

if.end51:                                         ; preds = %if.end33
  %tobool52.not = icmp eq i64 %len, 0
  br i1 %tobool52.not, label %for.body96.preheader, label %for.body63.lr.ph

for.body63.lr.ph:                                 ; preds = %if.end51, %if.end51.thread201
  %inp.addr.0208 = phi i8* [ %add.ptr, %if.end51.thread201 ], [ %inp, %if.end51 ]
  %out.addr.0207 = phi i8* [ %add.ptr42, %if.end51.thread201 ], [ %out, %if.end51 ]
  %len.addr.0206 = phi i64 [ %sub43, %if.end51.thread201 ], [ %len, %if.end51 ]
  %c57 = bitcast <2 x i64>* %scratch to [16 x i8]*
  call void %1(i8* noundef nonnull %arrayidx, i8* noundef nonnull %3, i8* noundef %2) #5
  %cmac75 = getelementptr inbounds %struct.ccm128_context, %struct.ccm128_context* %ctx, i64 0, i32 1
  %c76 = bitcast %union.anon* %cmac75 to [16 x i8]*
  br label %for.body63

for.body63:                                       ; preds = %for.body63.lr.ph, %for.body63
  %conv60214 = phi i64 [ 0, %for.body63.lr.ph ], [ %conv60, %for.body63 ]
  %arrayidx66 = getelementptr inbounds [16 x i8], [16 x i8]* %c57, i64 0, i64 %conv60214
  %20 = load i8, i8* %arrayidx66, align 1, !tbaa !4
  %arrayidx69 = getelementptr inbounds i8, i8* %inp.addr.0208, i64 %conv60214
  %21 = load i8, i8* %arrayidx69, align 1, !tbaa !4
  %xor195 = xor i8 %21, %20
  %arrayidx73 = getelementptr inbounds i8, i8* %out.addr.0207, i64 %conv60214
  store i8 %xor195, i8* %arrayidx73, align 1, !tbaa !4
  %arrayidx78 = getelementptr inbounds [16 x i8], [16 x i8]* %c76, i64 0, i64 %conv60214
  %22 = load i8, i8* %arrayidx78, align 1, !tbaa !4
  %xor80196 = xor i8 %22, %xor195
  store i8 %xor80196, i8* %arrayidx78, align 1, !tbaa !4
  %inc83 = add nuw nsw i64 %conv60214, 1
  %conv60 = and i64 %inc83, 4294967295
  %cmp61 = icmp ugt i64 %len.addr.0206, %conv60
  br i1 %cmp61, label %for.body63, label %for.end84, !llvm.loop !45

for.end84:                                        ; preds = %for.body63
  %cmac85 = getelementptr inbounds %struct.ccm128_context, %struct.ccm128_context* %ctx, i64 0, i32 1
  %arraydecay87 = bitcast %union.anon* %cmac85 to i8*
  call void %1(i8* noundef nonnull %arraydecay87, i8* noundef nonnull %arraydecay87, i8* noundef %2) #5
  br label %for.body96.preheader

for.body96.preheader:                             ; preds = %if.end51, %for.end84, %if.then35
  %23 = zext i32 %sub to i64
  %arrayidx100 = getelementptr inbounds [16 x i8], [16 x i8]* %c, i64 0, i64 %23
  store i8 0, i8* %arrayidx100, align 1, !tbaa !4
  %indvars.iv.next219 = add nuw nsw i64 %23, 1
  %exitcond222.not = icmp eq i64 %indvars.iv.next219, 16
  br i1 %exitcond222.not, label %for.end103, label %for.body96.1, !llvm.loop !46

for.body96.1:                                     ; preds = %for.body96.preheader
  %arrayidx100.1 = getelementptr inbounds [16 x i8], [16 x i8]* %c, i64 0, i64 %indvars.iv.next219
  store i8 0, i8* %arrayidx100.1, align 1, !tbaa !4
  %indvars.iv.next219.1 = add nuw nsw i64 %23, 2
  %exitcond222.not.1 = icmp eq i64 %indvars.iv.next219.1, 16
  br i1 %exitcond222.not.1, label %for.end103, label %for.body96.2, !llvm.loop !46

for.body96.2:                                     ; preds = %for.body96.1
  %arrayidx100.2 = getelementptr inbounds [16 x i8], [16 x i8]* %c, i64 0, i64 %indvars.iv.next219.1
  store i8 0, i8* %arrayidx100.2, align 1, !tbaa !4
  %indvars.iv.next219.2 = add nuw nsw i64 %23, 3
  %exitcond222.not.2 = icmp eq i64 %indvars.iv.next219.2, 16
  br i1 %exitcond222.not.2, label %for.end103, label %for.body96.3, !llvm.loop !46

for.body96.3:                                     ; preds = %for.body96.2
  %arrayidx100.3 = getelementptr inbounds [16 x i8], [16 x i8]* %c, i64 0, i64 %indvars.iv.next219.2
  store i8 0, i8* %arrayidx100.3, align 1, !tbaa !4
  %indvars.iv.next219.3 = add nuw nsw i64 %23, 4
  %exitcond222.not.3 = icmp eq i64 %indvars.iv.next219.3, 16
  br i1 %exitcond222.not.3, label %for.end103, label %for.body96.4, !llvm.loop !46

for.body96.4:                                     ; preds = %for.body96.3
  %arrayidx100.4 = getelementptr inbounds [16 x i8], [16 x i8]* %c, i64 0, i64 %indvars.iv.next219.3
  store i8 0, i8* %arrayidx100.4, align 1, !tbaa !4
  %indvars.iv.next219.4 = add nuw nsw i64 %23, 5
  %exitcond222.not.4 = icmp eq i64 %indvars.iv.next219.4, 16
  br i1 %exitcond222.not.4, label %for.end103, label %for.body96.5, !llvm.loop !46

for.body96.5:                                     ; preds = %for.body96.4
  %arrayidx100.5 = getelementptr inbounds [16 x i8], [16 x i8]* %c, i64 0, i64 %indvars.iv.next219.4
  store i8 0, i8* %arrayidx100.5, align 1, !tbaa !4
  %indvars.iv.next219.5 = add nuw nsw i64 %23, 6
  %exitcond222.not.5 = icmp eq i64 %indvars.iv.next219.5, 16
  br i1 %exitcond222.not.5, label %for.end103, label %for.body96.6, !llvm.loop !46

for.body96.6:                                     ; preds = %for.body96.5
  %arrayidx100.6 = getelementptr inbounds [16 x i8], [16 x i8]* %c, i64 0, i64 %indvars.iv.next219.5
  store i8 0, i8* %arrayidx100.6, align 1, !tbaa !4
  %indvars.iv.next219.6 = add nuw nsw i64 %23, 7
  %exitcond222.not.6 = icmp eq i64 %indvars.iv.next219.6, 16
  br i1 %exitcond222.not.6, label %for.end103, label %for.body96.7, !llvm.loop !46

for.body96.7:                                     ; preds = %for.body96.6
  %arrayidx100.7 = getelementptr inbounds [16 x i8], [16 x i8]* %c, i64 0, i64 %indvars.iv.next219.6
  store i8 0, i8* %arrayidx100.7, align 1, !tbaa !4
  br label %for.end103

for.end103:                                       ; preds = %for.body96.7, %for.body96.6, %for.body96.5, %for.body96.4, %for.body96.3, %for.body96.2, %for.body96.1, %for.body96.preheader
  call void %1(i8* noundef nonnull %arrayidx, i8* noundef nonnull %3, i8* noundef %2) #5
  %arrayidx112 = getelementptr inbounds %struct.ccm128_context, %struct.ccm128_context* %ctx, i64 0, i32 1, i32 0, i64 0
  %24 = load <2 x i64>, <2 x i64>* %scratch, align 16, !tbaa !4
  %25 = bitcast i64* %arrayidx112 to <2 x i64>*
  %26 = load <2 x i64>, <2 x i64>* %25, align 8, !tbaa !4
  %27 = xor <2 x i64> %26, %24
  %28 = bitcast i64* %arrayidx112 to <2 x i64>*
  store <2 x i64> %27, <2 x i64>* %28, align 8, !tbaa !4
  store i8 %0, i8* %arrayidx, align 8, !tbaa !4
  br label %cleanup

cleanup:                                          ; preds = %for.end, %for.end103
  %retval.0 = phi i32 [ 0, %for.end103 ], [ -1, %for.end ]
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %3) #6
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i64 @CRYPTO_ccm128_tag(%struct.ccm128_context* noundef %ctx, i8* noundef %tag, i64 noundef %len) local_unnamed_addr #0 {
entry:
  %arrayidx = bitcast %struct.ccm128_context* %ctx to i8*
  %0 = load i8, i8* %arrayidx, align 8, !tbaa !4
  %1 = lshr i8 %0, 2
  %2 = and i8 %1, 14
  %narrow = add nuw nsw i8 %2, 2
  %conv1 = zext i8 %narrow to i64
  %cmp.not = icmp eq i64 %conv1, %len
  br i1 %cmp.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %cmac = getelementptr inbounds %struct.ccm128_context, %struct.ccm128_context* %ctx, i64 0, i32 1
  %arraydecay = bitcast %union.anon* %cmac to i8*
  %call = tail call i8* @memcpy(i8* noundef %tag, i8* noundef nonnull %arraydecay, i64 noundef %len) #5
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i64 [ %len, %if.end ], [ 0, %entry ]
  ret i64 %retval.0
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #4

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umin.i64(i64, i64) #4

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #3 = { nofree noinline norecurse nosync nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nobuiltin nounwind "no-builtins" }
attributes #6 = { nounwind }
attributes #7 = { nobuiltin "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{!"clang version 14.0.0"}
!4 = !{!5, !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!8, !9, i64 32}
!8 = !{!"ccm128_context", !5, i64 0, !5, i64 16, !9, i64 32, !10, i64 40, !10, i64 48}
!9 = !{!"long long", !5, i64 0}
!10 = !{!"any pointer", !5, i64 0}
!11 = !{!8, !10, i64 40}
!12 = !{!8, !10, i64 48}
!13 = !{!14}
!14 = distinct !{!14, !15}
!15 = distinct !{!15, !"LVerDomain"}
!16 = !{!17}
!17 = distinct !{!17, !15}
!18 = distinct !{!18, !19, !20}
!19 = !{!"llvm.loop.mustprogress"}
!20 = !{!"llvm.loop.isvectorized", i32 1}
!21 = distinct !{!21, !19, !20}
!22 = distinct !{!22, !19}
!23 = distinct !{!23, !19}
!24 = distinct !{!24, !25}
!25 = !{!"llvm.loop.unroll.disable"}
!26 = !{!9, !9, i64 0}
!27 = distinct !{!27, !19}
!28 = distinct !{!28, !19}
!29 = distinct !{!29, !19}
!30 = distinct !{!30, !19}
!31 = distinct !{!31, !19}
!32 = distinct !{!32, !19}
!33 = distinct !{!33, !25}
!34 = distinct !{!34, !19}
!35 = distinct !{!35, !19}
!36 = distinct !{!36, !19}
!37 = distinct !{!37, !19}
!38 = distinct !{!38, !25}
!39 = distinct !{!39, !19}
!40 = distinct !{!40, !19}
!41 = distinct !{!41, !19}
!42 = distinct !{!42, !19}
!43 = distinct !{!43, !19}
!44 = distinct !{!44, !25}
!45 = distinct !{!45, !19}
!46 = distinct !{!46, !19}
