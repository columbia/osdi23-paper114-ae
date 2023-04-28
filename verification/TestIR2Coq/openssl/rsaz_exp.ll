; ModuleID = 'crypto/bn/rsaz_exp.c'
source_filename = "crypto/bn/rsaz_exp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@two80 = internal constant <{ i64, i64, i64, [37 x i64] }> <{ i64 0, i64 0, i64 4194304, [37 x i64] zeroinitializer }>, align 64
@one = internal constant <{ i64, [39 x i64] }> <{ i64 1, [39 x i64] zeroinitializer }>, align 64

; Function Attrs: noinline nounwind uwtable
define void @RSAZ_1024_mod_exp_avx2(i64* noundef %result_norm, i64* noundef %base_norm, i64* nocapture noundef readonly %exponent, i64* noundef %m_norm, i64* noundef %RR, i64 noundef %k0) local_unnamed_addr #0 {
entry:
  %storage = alloca [5632 x i8], align 16
  %0 = getelementptr inbounds [5632 x i8], [5632 x i8]* %storage, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 5632, i8* nonnull %0) #3
  %1 = ptrtoint [5632 x i8]* %storage to i64
  %rem = and i64 %1, 48
  %sub = sub nuw nsw i64 64, %rem
  %add.ptr = getelementptr inbounds [5632 x i8], [5632 x i8]* %storage, i64 0, i64 %sub
  %add.ptr2 = getelementptr inbounds i8, i8* %add.ptr, i64 960
  %2 = ptrtoint i8* %add.ptr to i64
  %and = and i64 %2, 4032
  %tobool.not = icmp ult i64 %and, 3776
  %add.ptr3 = getelementptr inbounds i8, i8* %add.ptr, i64 320
  %add.ptr4 = getelementptr inbounds i8, i8* %add.ptr, i64 640
  %m.0 = select i1 %tobool.not, i8* %add.ptr, i8* %add.ptr4
  %result.0 = select i1 %tobool.not, i8* %add.ptr3, i8* %add.ptr
  %a_inv.0 = select i1 %tobool.not, i8* %add.ptr4, i8* %add.ptr3
  %3 = bitcast i64* %m_norm to i8*
  call void @rsaz_1024_norm2red_avx2(i8* noundef nonnull %m.0, i8* noundef %3) #4
  %4 = bitcast i64* %base_norm to i8*
  call void @rsaz_1024_norm2red_avx2(i8* noundef nonnull %a_inv.0, i8* noundef %4) #4
  %5 = bitcast i64* %RR to i8*
  call void @rsaz_1024_norm2red_avx2(i8* noundef nonnull %add.ptr2, i8* noundef %5) #4
  call void @rsaz_1024_mul_avx2(i8* noundef nonnull %add.ptr2, i8* noundef nonnull %add.ptr2, i8* noundef nonnull %add.ptr2, i8* noundef nonnull %m.0, i64 noundef %k0) #4
  call void @rsaz_1024_mul_avx2(i8* noundef nonnull %add.ptr2, i8* noundef nonnull %add.ptr2, i8* noundef bitcast (<{ i64, i64, i64, [37 x i64] }>* @two80 to i8*), i8* noundef nonnull %m.0, i64 noundef %k0) #4
  call void @rsaz_1024_mul_avx2(i8* noundef nonnull %result.0, i8* noundef nonnull %add.ptr2, i8* noundef bitcast (<{ i64, [39 x i64] }>* @one to i8*), i8* noundef nonnull %m.0, i64 noundef %k0) #4
  call void @rsaz_1024_mul_avx2(i8* noundef nonnull %a_inv.0, i8* noundef nonnull %a_inv.0, i8* noundef nonnull %add.ptr2, i8* noundef nonnull %m.0, i64 noundef %k0) #4
  call void @rsaz_1024_scatter5_avx2(i8* noundef nonnull %add.ptr2, i8* noundef nonnull %result.0, i32 noundef 0) #4
  call void @rsaz_1024_scatter5_avx2(i8* noundef nonnull %add.ptr2, i8* noundef nonnull %a_inv.0, i32 noundef 1) #4
  call void @rsaz_1024_sqr_avx2(i8* noundef nonnull %result.0, i8* noundef nonnull %a_inv.0, i8* noundef nonnull %m.0, i64 noundef %k0, i32 noundef 1) #4
  call void @rsaz_1024_scatter5_avx2(i8* noundef nonnull %add.ptr2, i8* noundef nonnull %result.0, i32 noundef 2) #4
  call void @rsaz_1024_sqr_avx2(i8* noundef nonnull %result.0, i8* noundef nonnull %result.0, i8* noundef nonnull %m.0, i64 noundef %k0, i32 noundef 1) #4
  call void @rsaz_1024_scatter5_avx2(i8* noundef nonnull %add.ptr2, i8* noundef nonnull %result.0, i32 noundef 4) #4
  call void @rsaz_1024_sqr_avx2(i8* noundef nonnull %result.0, i8* noundef nonnull %result.0, i8* noundef nonnull %m.0, i64 noundef %k0, i32 noundef 1) #4
  call void @rsaz_1024_scatter5_avx2(i8* noundef nonnull %add.ptr2, i8* noundef nonnull %result.0, i32 noundef 8) #4
  call void @rsaz_1024_sqr_avx2(i8* noundef nonnull %result.0, i8* noundef nonnull %result.0, i8* noundef nonnull %m.0, i64 noundef %k0, i32 noundef 1) #4
  call void @rsaz_1024_scatter5_avx2(i8* noundef nonnull %add.ptr2, i8* noundef nonnull %result.0, i32 noundef 16) #4
  call void @rsaz_1024_mul_avx2(i8* noundef nonnull %result.0, i8* noundef nonnull %result.0, i8* noundef nonnull %a_inv.0, i8* noundef nonnull %m.0, i64 noundef %k0) #4
  call void @rsaz_1024_scatter5_avx2(i8* noundef nonnull %add.ptr2, i8* noundef nonnull %result.0, i32 noundef 17) #4
  call void @rsaz_1024_gather5_avx2(i8* noundef nonnull %result.0, i8* noundef nonnull %add.ptr2, i32 noundef 2) #4
  call void @rsaz_1024_mul_avx2(i8* noundef nonnull %result.0, i8* noundef nonnull %result.0, i8* noundef nonnull %a_inv.0, i8* noundef nonnull %m.0, i64 noundef %k0) #4
  call void @rsaz_1024_scatter5_avx2(i8* noundef nonnull %add.ptr2, i8* noundef nonnull %result.0, i32 noundef 3) #4
  call void @rsaz_1024_sqr_avx2(i8* noundef nonnull %result.0, i8* noundef nonnull %result.0, i8* noundef nonnull %m.0, i64 noundef %k0, i32 noundef 1) #4
  call void @rsaz_1024_scatter5_avx2(i8* noundef nonnull %add.ptr2, i8* noundef nonnull %result.0, i32 noundef 6) #4
  call void @rsaz_1024_sqr_avx2(i8* noundef nonnull %result.0, i8* noundef nonnull %result.0, i8* noundef nonnull %m.0, i64 noundef %k0, i32 noundef 1) #4
  call void @rsaz_1024_scatter5_avx2(i8* noundef nonnull %add.ptr2, i8* noundef nonnull %result.0, i32 noundef 12) #4
  call void @rsaz_1024_sqr_avx2(i8* noundef nonnull %result.0, i8* noundef nonnull %result.0, i8* noundef nonnull %m.0, i64 noundef %k0, i32 noundef 1) #4
  call void @rsaz_1024_scatter5_avx2(i8* noundef nonnull %add.ptr2, i8* noundef nonnull %result.0, i32 noundef 24) #4
  call void @rsaz_1024_mul_avx2(i8* noundef nonnull %result.0, i8* noundef nonnull %result.0, i8* noundef nonnull %a_inv.0, i8* noundef nonnull %m.0, i64 noundef %k0) #4
  call void @rsaz_1024_scatter5_avx2(i8* noundef nonnull %add.ptr2, i8* noundef nonnull %result.0, i32 noundef 25) #4
  call void @rsaz_1024_gather5_avx2(i8* noundef nonnull %result.0, i8* noundef nonnull %add.ptr2, i32 noundef 4) #4
  call void @rsaz_1024_mul_avx2(i8* noundef nonnull %result.0, i8* noundef nonnull %result.0, i8* noundef nonnull %a_inv.0, i8* noundef nonnull %m.0, i64 noundef %k0) #4
  call void @rsaz_1024_scatter5_avx2(i8* noundef nonnull %add.ptr2, i8* noundef nonnull %result.0, i32 noundef 5) #4
  call void @rsaz_1024_sqr_avx2(i8* noundef nonnull %result.0, i8* noundef nonnull %result.0, i8* noundef nonnull %m.0, i64 noundef %k0, i32 noundef 1) #4
  call void @rsaz_1024_scatter5_avx2(i8* noundef nonnull %add.ptr2, i8* noundef nonnull %result.0, i32 noundef 10) #4
  call void @rsaz_1024_sqr_avx2(i8* noundef nonnull %result.0, i8* noundef nonnull %result.0, i8* noundef nonnull %m.0, i64 noundef %k0, i32 noundef 1) #4
  call void @rsaz_1024_scatter5_avx2(i8* noundef nonnull %add.ptr2, i8* noundef nonnull %result.0, i32 noundef 20) #4
  call void @rsaz_1024_mul_avx2(i8* noundef nonnull %result.0, i8* noundef nonnull %result.0, i8* noundef nonnull %a_inv.0, i8* noundef nonnull %m.0, i64 noundef %k0) #4
  call void @rsaz_1024_scatter5_avx2(i8* noundef nonnull %add.ptr2, i8* noundef nonnull %result.0, i32 noundef 21) #4
  call void @rsaz_1024_gather5_avx2(i8* noundef nonnull %result.0, i8* noundef nonnull %add.ptr2, i32 noundef 6) #4
  call void @rsaz_1024_mul_avx2(i8* noundef nonnull %result.0, i8* noundef nonnull %result.0, i8* noundef nonnull %a_inv.0, i8* noundef nonnull %m.0, i64 noundef %k0) #4
  call void @rsaz_1024_scatter5_avx2(i8* noundef nonnull %add.ptr2, i8* noundef nonnull %result.0, i32 noundef 7) #4
  call void @rsaz_1024_sqr_avx2(i8* noundef nonnull %result.0, i8* noundef nonnull %result.0, i8* noundef nonnull %m.0, i64 noundef %k0, i32 noundef 1) #4
  call void @rsaz_1024_scatter5_avx2(i8* noundef nonnull %add.ptr2, i8* noundef nonnull %result.0, i32 noundef 14) #4
  call void @rsaz_1024_sqr_avx2(i8* noundef nonnull %result.0, i8* noundef nonnull %result.0, i8* noundef nonnull %m.0, i64 noundef %k0, i32 noundef 1) #4
  call void @rsaz_1024_scatter5_avx2(i8* noundef nonnull %add.ptr2, i8* noundef nonnull %result.0, i32 noundef 28) #4
  call void @rsaz_1024_mul_avx2(i8* noundef nonnull %result.0, i8* noundef nonnull %result.0, i8* noundef nonnull %a_inv.0, i8* noundef nonnull %m.0, i64 noundef %k0) #4
  call void @rsaz_1024_scatter5_avx2(i8* noundef nonnull %add.ptr2, i8* noundef nonnull %result.0, i32 noundef 29) #4
  call void @rsaz_1024_gather5_avx2(i8* noundef nonnull %result.0, i8* noundef nonnull %add.ptr2, i32 noundef 8) #4
  call void @rsaz_1024_mul_avx2(i8* noundef nonnull %result.0, i8* noundef nonnull %result.0, i8* noundef nonnull %a_inv.0, i8* noundef nonnull %m.0, i64 noundef %k0) #4
  call void @rsaz_1024_scatter5_avx2(i8* noundef nonnull %add.ptr2, i8* noundef nonnull %result.0, i32 noundef 9) #4
  call void @rsaz_1024_sqr_avx2(i8* noundef nonnull %result.0, i8* noundef nonnull %result.0, i8* noundef nonnull %m.0, i64 noundef %k0, i32 noundef 1) #4
  call void @rsaz_1024_scatter5_avx2(i8* noundef nonnull %add.ptr2, i8* noundef nonnull %result.0, i32 noundef 18) #4
  call void @rsaz_1024_mul_avx2(i8* noundef nonnull %result.0, i8* noundef nonnull %result.0, i8* noundef nonnull %a_inv.0, i8* noundef nonnull %m.0, i64 noundef %k0) #4
  call void @rsaz_1024_scatter5_avx2(i8* noundef nonnull %add.ptr2, i8* noundef nonnull %result.0, i32 noundef 19) #4
  call void @rsaz_1024_gather5_avx2(i8* noundef nonnull %result.0, i8* noundef nonnull %add.ptr2, i32 noundef 10) #4
  call void @rsaz_1024_mul_avx2(i8* noundef nonnull %result.0, i8* noundef nonnull %result.0, i8* noundef nonnull %a_inv.0, i8* noundef nonnull %m.0, i64 noundef %k0) #4
  call void @rsaz_1024_scatter5_avx2(i8* noundef nonnull %add.ptr2, i8* noundef nonnull %result.0, i32 noundef 11) #4
  call void @rsaz_1024_sqr_avx2(i8* noundef nonnull %result.0, i8* noundef nonnull %result.0, i8* noundef nonnull %m.0, i64 noundef %k0, i32 noundef 1) #4
  call void @rsaz_1024_scatter5_avx2(i8* noundef nonnull %add.ptr2, i8* noundef nonnull %result.0, i32 noundef 22) #4
  call void @rsaz_1024_mul_avx2(i8* noundef nonnull %result.0, i8* noundef nonnull %result.0, i8* noundef nonnull %a_inv.0, i8* noundef nonnull %m.0, i64 noundef %k0) #4
  call void @rsaz_1024_scatter5_avx2(i8* noundef nonnull %add.ptr2, i8* noundef nonnull %result.0, i32 noundef 23) #4
  call void @rsaz_1024_gather5_avx2(i8* noundef nonnull %result.0, i8* noundef nonnull %add.ptr2, i32 noundef 12) #4
  call void @rsaz_1024_mul_avx2(i8* noundef nonnull %result.0, i8* noundef nonnull %result.0, i8* noundef nonnull %a_inv.0, i8* noundef nonnull %m.0, i64 noundef %k0) #4
  call void @rsaz_1024_scatter5_avx2(i8* noundef nonnull %add.ptr2, i8* noundef nonnull %result.0, i32 noundef 13) #4
  call void @rsaz_1024_sqr_avx2(i8* noundef nonnull %result.0, i8* noundef nonnull %result.0, i8* noundef nonnull %m.0, i64 noundef %k0, i32 noundef 1) #4
  call void @rsaz_1024_scatter5_avx2(i8* noundef nonnull %add.ptr2, i8* noundef nonnull %result.0, i32 noundef 26) #4
  call void @rsaz_1024_mul_avx2(i8* noundef nonnull %result.0, i8* noundef nonnull %result.0, i8* noundef nonnull %a_inv.0, i8* noundef nonnull %m.0, i64 noundef %k0) #4
  call void @rsaz_1024_scatter5_avx2(i8* noundef nonnull %add.ptr2, i8* noundef nonnull %result.0, i32 noundef 27) #4
  call void @rsaz_1024_gather5_avx2(i8* noundef nonnull %result.0, i8* noundef nonnull %add.ptr2, i32 noundef 14) #4
  call void @rsaz_1024_mul_avx2(i8* noundef nonnull %result.0, i8* noundef nonnull %result.0, i8* noundef nonnull %a_inv.0, i8* noundef nonnull %m.0, i64 noundef %k0) #4
  call void @rsaz_1024_scatter5_avx2(i8* noundef nonnull %add.ptr2, i8* noundef nonnull %result.0, i32 noundef 15) #4
  call void @rsaz_1024_sqr_avx2(i8* noundef nonnull %result.0, i8* noundef nonnull %result.0, i8* noundef nonnull %m.0, i64 noundef %k0, i32 noundef 1) #4
  call void @rsaz_1024_scatter5_avx2(i8* noundef nonnull %add.ptr2, i8* noundef nonnull %result.0, i32 noundef 30) #4
  call void @rsaz_1024_mul_avx2(i8* noundef nonnull %result.0, i8* noundef nonnull %result.0, i8* noundef nonnull %a_inv.0, i8* noundef nonnull %m.0, i64 noundef %k0) #4
  call void @rsaz_1024_scatter5_avx2(i8* noundef nonnull %add.ptr2, i8* noundef nonnull %result.0, i32 noundef 31) #4
  %6 = bitcast i64* %exponent to i8*
  %arrayidx = getelementptr inbounds i8, i8* %6, i64 127
  %7 = load i8, i8* %arrayidx, align 1, !tbaa !4
  %8 = lshr i8 %7, 3
  %9 = zext i8 %8 to i32
  call void @rsaz_1024_gather5_avx2(i8* noundef nonnull %result.0, i8* noundef nonnull %add.ptr2, i32 noundef %9) #4
  br label %while.body

while.body:                                       ; preds = %entry, %while.body
  %index.0310 = phi i32 [ 1014, %entry ], [ %sub19, %while.body ]
  call void @rsaz_1024_sqr_avx2(i8* noundef nonnull %result.0, i8* noundef nonnull %result.0, i8* noundef nonnull %m.0, i64 noundef %k0, i32 noundef 5) #4
  %div309 = lshr i32 %index.0310, 3
  %add9 = add nuw nsw i32 %div309, 1
  %10 = zext i32 %add9 to i64
  %arrayidx10 = getelementptr inbounds i8, i8* %6, i64 %10
  %11 = load i8, i8* %arrayidx10, align 1, !tbaa !4
  %conv11 = zext i8 %11 to i32
  %shl = shl nuw nsw i32 %conv11, 8
  %12 = zext i32 %div309 to i64
  %arrayidx14 = getelementptr inbounds i8, i8* %6, i64 %12
  %13 = load i8, i8* %arrayidx14, align 1, !tbaa !4
  %conv15 = zext i8 %13 to i32
  %or = or i32 %shl, %conv15
  %rem16308 = and i32 %index.0310, 7
  %shr17 = lshr i32 %or, %rem16308
  %and18 = and i32 %shr17, 31
  %sub19 = add nsw i32 %index.0310, -5
  call void @rsaz_1024_gather5_avx2(i8* noundef nonnull %a_inv.0, i8* noundef nonnull %add.ptr2, i32 noundef %and18) #4
  call void @rsaz_1024_mul_avx2(i8* noundef nonnull %result.0, i8* noundef nonnull %result.0, i8* noundef nonnull %a_inv.0, i8* noundef nonnull %m.0, i64 noundef %k0) #4
  %cmp = icmp ugt i32 %index.0310, 4
  br i1 %cmp, label %while.body, label %while.end, !llvm.loop !7

while.end:                                        ; preds = %while.body
  call void @rsaz_1024_sqr_avx2(i8* noundef nonnull %result.0, i8* noundef nonnull %result.0, i8* noundef nonnull %m.0, i64 noundef %k0, i32 noundef 4) #4
  %14 = load i8, i8* %6, align 1, !tbaa !4
  %15 = and i8 %14, 15
  %and22 = zext i8 %15 to i32
  call void @rsaz_1024_gather5_avx2(i8* noundef nonnull %a_inv.0, i8* noundef nonnull %add.ptr2, i32 noundef %and22) #4
  call void @rsaz_1024_mul_avx2(i8* noundef nonnull %result.0, i8* noundef nonnull %result.0, i8* noundef nonnull %a_inv.0, i8* noundef nonnull %m.0, i64 noundef %k0) #4
  call void @rsaz_1024_mul_avx2(i8* noundef nonnull %result.0, i8* noundef nonnull %result.0, i8* noundef bitcast (<{ i64, [39 x i64] }>* @one to i8*), i8* noundef nonnull %m.0, i64 noundef %k0) #4
  %16 = bitcast i64* %result_norm to i8*
  call void @rsaz_1024_red2norm_avx2(i8* noundef %16, i8* noundef nonnull %result.0) #4
  call void @OPENSSL_cleanse(i8* noundef nonnull %0, i64 noundef 5632) #4
  call void @llvm.lifetime.end.p0i8(i64 5632, i8* nonnull %0) #3
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

declare void @rsaz_1024_norm2red_avx2(i8* noundef, i8* noundef) local_unnamed_addr #2

declare void @rsaz_1024_mul_avx2(i8* noundef, i8* noundef, i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #2

declare void @rsaz_1024_scatter5_avx2(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare void @rsaz_1024_sqr_avx2(i8* noundef, i8* noundef, i8* noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

declare void @rsaz_1024_gather5_avx2(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare void @rsaz_1024_red2norm_avx2(i8* noundef, i8* noundef) local_unnamed_addr #2

declare void @OPENSSL_cleanse(i8* noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: noinline nounwind uwtable
define void @RSAZ_512_mod_exp(i64* noundef %result, i64* noundef %base, i64* nocapture noundef readonly %exponent, i64* noundef %m, i64 noundef %k0, i64* noundef %RR) local_unnamed_addr #0 {
entry:
  %storage = alloca [1216 x i8], align 16
  %0 = getelementptr inbounds [1216 x i8], [1216 x i8]* %storage, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 1216, i8* nonnull %0) #3
  %1 = ptrtoint [1216 x i8]* %storage to i64
  %rem = and i64 %1, 48
  %sub = sub nuw nsw i64 64, %rem
  %add.ptr = getelementptr inbounds [1216 x i8], [1216 x i8]* %storage, i64 0, i64 %sub
  %add.ptr2 = getelementptr inbounds i8, i8* %add.ptr, i64 1024
  %2 = bitcast i8* %add.ptr2 to i64*
  %add.ptr4 = getelementptr inbounds i8, i8* %add.ptr, i64 1088
  %3 = bitcast i8* %add.ptr4 to i64*
  %4 = bitcast i64* %m to <2 x i64>*
  %5 = load <2 x i64>, <2 x i64>* %4, align 8, !tbaa !9
  %6 = sub <2 x i64> <i64 0, i64 poison>, %5
  %7 = xor <2 x i64> %5, <i64 poison, i64 -1>
  %8 = shufflevector <2 x i64> %6, <2 x i64> %7, <2 x i32> <i32 0, i32 3>
  %9 = bitcast i8* %add.ptr4 to <2 x i64>*
  store <2 x i64> %8, <2 x i64>* %9, align 16, !tbaa !9
  %arrayidx9 = getelementptr inbounds i64, i64* %m, i64 2
  %arrayidx11 = getelementptr inbounds i8, i8* %add.ptr, i64 1104
  %10 = bitcast i64* %arrayidx9 to <2 x i64>*
  %11 = load <2 x i64>, <2 x i64>* %10, align 8, !tbaa !9
  %12 = xor <2 x i64> %11, <i64 -1, i64 -1>
  %13 = bitcast i8* %arrayidx11 to <2 x i64>*
  store <2 x i64> %12, <2 x i64>* %13, align 16, !tbaa !9
  %arrayidx15 = getelementptr inbounds i64, i64* %m, i64 4
  %arrayidx17 = getelementptr inbounds i8, i8* %add.ptr, i64 1120
  %14 = bitcast i64* %arrayidx15 to <2 x i64>*
  %15 = load <2 x i64>, <2 x i64>* %14, align 8, !tbaa !9
  %16 = xor <2 x i64> %15, <i64 -1, i64 -1>
  %17 = bitcast i8* %arrayidx17 to <2 x i64>*
  store <2 x i64> %16, <2 x i64>* %17, align 16, !tbaa !9
  %arrayidx21 = getelementptr inbounds i64, i64* %m, i64 6
  %arrayidx23 = getelementptr inbounds i8, i8* %add.ptr, i64 1136
  %18 = bitcast i64* %arrayidx21 to <2 x i64>*
  %19 = load <2 x i64>, <2 x i64>* %18, align 8, !tbaa !9
  %20 = xor <2 x i64> %19, <i64 -1, i64 -1>
  %21 = bitcast i8* %arrayidx23 to <2 x i64>*
  store <2 x i64> %20, <2 x i64>* %21, align 16, !tbaa !9
  call void @rsaz_512_scatter4(i8* noundef nonnull %add.ptr, i64* noundef nonnull %3, i32 noundef 0) #4
  %22 = bitcast i64* %base to i8*
  %23 = bitcast i64* %RR to i8*
  %24 = bitcast i64* %m to i8*
  call void @rsaz_512_mul(i8* noundef nonnull %add.ptr2, i8* noundef %22, i8* noundef %23, i8* noundef nonnull %24, i64 noundef %k0) #4
  call void @rsaz_512_scatter4(i8* noundef nonnull %add.ptr, i64* noundef nonnull %2, i32 noundef 1) #4
  call void @rsaz_512_sqr(i8* noundef nonnull %add.ptr4, i8* noundef nonnull %add.ptr2, i8* noundef nonnull %24, i64 noundef %k0, i32 noundef 1) #4
  call void @rsaz_512_scatter4(i8* noundef nonnull %add.ptr, i64* noundef nonnull %3, i32 noundef 2) #4
  call void @rsaz_512_mul_scatter4(i8* noundef nonnull %add.ptr4, i8* noundef nonnull %add.ptr2, i8* noundef nonnull %24, i64 noundef %k0, i8* noundef nonnull %add.ptr, i32 noundef 3) #4
  call void @rsaz_512_mul_scatter4(i8* noundef nonnull %add.ptr4, i8* noundef nonnull %add.ptr2, i8* noundef nonnull %24, i64 noundef %k0, i8* noundef nonnull %add.ptr, i32 noundef 4) #4
  call void @rsaz_512_mul_scatter4(i8* noundef nonnull %add.ptr4, i8* noundef nonnull %add.ptr2, i8* noundef nonnull %24, i64 noundef %k0, i8* noundef nonnull %add.ptr, i32 noundef 5) #4
  call void @rsaz_512_mul_scatter4(i8* noundef nonnull %add.ptr4, i8* noundef nonnull %add.ptr2, i8* noundef nonnull %24, i64 noundef %k0, i8* noundef nonnull %add.ptr, i32 noundef 6) #4
  call void @rsaz_512_mul_scatter4(i8* noundef nonnull %add.ptr4, i8* noundef nonnull %add.ptr2, i8* noundef nonnull %24, i64 noundef %k0, i8* noundef nonnull %add.ptr, i32 noundef 7) #4
  call void @rsaz_512_mul_scatter4(i8* noundef nonnull %add.ptr4, i8* noundef nonnull %add.ptr2, i8* noundef nonnull %24, i64 noundef %k0, i8* noundef nonnull %add.ptr, i32 noundef 8) #4
  call void @rsaz_512_mul_scatter4(i8* noundef nonnull %add.ptr4, i8* noundef nonnull %add.ptr2, i8* noundef nonnull %24, i64 noundef %k0, i8* noundef nonnull %add.ptr, i32 noundef 9) #4
  call void @rsaz_512_mul_scatter4(i8* noundef nonnull %add.ptr4, i8* noundef nonnull %add.ptr2, i8* noundef nonnull %24, i64 noundef %k0, i8* noundef nonnull %add.ptr, i32 noundef 10) #4
  call void @rsaz_512_mul_scatter4(i8* noundef nonnull %add.ptr4, i8* noundef nonnull %add.ptr2, i8* noundef nonnull %24, i64 noundef %k0, i8* noundef nonnull %add.ptr, i32 noundef 11) #4
  call void @rsaz_512_mul_scatter4(i8* noundef nonnull %add.ptr4, i8* noundef nonnull %add.ptr2, i8* noundef nonnull %24, i64 noundef %k0, i8* noundef nonnull %add.ptr, i32 noundef 12) #4
  call void @rsaz_512_mul_scatter4(i8* noundef nonnull %add.ptr4, i8* noundef nonnull %add.ptr2, i8* noundef nonnull %24, i64 noundef %k0, i8* noundef nonnull %add.ptr, i32 noundef 13) #4
  call void @rsaz_512_mul_scatter4(i8* noundef nonnull %add.ptr4, i8* noundef nonnull %add.ptr2, i8* noundef nonnull %24, i64 noundef %k0, i8* noundef nonnull %add.ptr, i32 noundef 14) #4
  call void @rsaz_512_mul_scatter4(i8* noundef nonnull %add.ptr4, i8* noundef nonnull %add.ptr2, i8* noundef nonnull %24, i64 noundef %k0, i8* noundef nonnull %add.ptr, i32 noundef 15) #4
  %25 = bitcast i64* %exponent to i8*
  %arrayidx27 = getelementptr inbounds i8, i8* %25, i64 63
  %26 = load i8, i8* %arrayidx27, align 1, !tbaa !4
  %conv = zext i8 %26 to i32
  %shr = lshr i32 %conv, 4
  call void @rsaz_512_gather4(i64* noundef nonnull %3, i8* noundef nonnull %add.ptr, i32 noundef %shr) #4
  call void @rsaz_512_sqr(i8* noundef nonnull %add.ptr4, i8* noundef nonnull %add.ptr4, i8* noundef nonnull %24, i64 noundef %k0, i32 noundef 4) #4
  %and = and i32 %conv, 15
  call void @rsaz_512_mul_gather4(i8* noundef nonnull %add.ptr4, i8* noundef nonnull %add.ptr4, i8* noundef nonnull %add.ptr, i8* noundef nonnull %24, i64 noundef %k0, i32 noundef %and) #4
  br label %for.body31

for.body31:                                       ; preds = %entry, %for.body31
  %indvars.iv = phi i64 [ 62, %entry ], [ %indvars.iv.next, %for.body31 ]
  %arrayidx32 = getelementptr inbounds i8, i8* %25, i64 %indvars.iv
  %27 = load i8, i8* %arrayidx32, align 1, !tbaa !4
  %conv33 = zext i8 %27 to i32
  call void @rsaz_512_sqr(i8* noundef nonnull %add.ptr4, i8* noundef nonnull %add.ptr4, i8* noundef nonnull %24, i64 noundef %k0, i32 noundef 4) #4
  %shr34 = lshr i32 %conv33, 4
  call void @rsaz_512_mul_gather4(i8* noundef nonnull %add.ptr4, i8* noundef nonnull %add.ptr4, i8* noundef nonnull %add.ptr, i8* noundef nonnull %24, i64 noundef %k0, i32 noundef %shr34) #4
  call void @rsaz_512_sqr(i8* noundef nonnull %add.ptr4, i8* noundef nonnull %add.ptr4, i8* noundef nonnull %24, i64 noundef %k0, i32 noundef 4) #4
  %and35 = and i32 %conv33, 15
  call void @rsaz_512_mul_gather4(i8* noundef nonnull %add.ptr4, i8* noundef nonnull %add.ptr4, i8* noundef nonnull %add.ptr, i8* noundef nonnull %24, i64 noundef %k0, i32 noundef %and35) #4
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %cmp29.not = icmp eq i64 %indvars.iv, 0
  br i1 %cmp29.not, label %for.end37, label %for.body31, !llvm.loop !11

for.end37:                                        ; preds = %for.body31
  %28 = bitcast i64* %result to i8*
  call void @rsaz_512_mul_by_one(i8* noundef %28, i8* noundef nonnull %add.ptr4, i8* noundef nonnull %24, i64 noundef %k0) #4
  call void @OPENSSL_cleanse(i8* noundef nonnull %0, i64 noundef 1216) #4
  call void @llvm.lifetime.end.p0i8(i64 1216, i8* nonnull %0) #3
  ret void
}

declare void @rsaz_512_scatter4(i8* noundef, i64* noundef, i32 noundef) local_unnamed_addr #2

declare void @rsaz_512_mul(i8* noundef, i8* noundef, i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #2

declare void @rsaz_512_sqr(i8* noundef, i8* noundef, i8* noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

declare void @rsaz_512_mul_scatter4(i8* noundef, i8* noundef, i8* noundef, i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare void @rsaz_512_gather4(i64* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare void @rsaz_512_mul_gather4(i8* noundef, i8* noundef, i8* noundef, i8* noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

declare void @rsaz_512_mul_by_one(i8* noundef, i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }
attributes #4 = { nobuiltin nounwind "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{!"clang version 14.0.0"}
!4 = !{!5, !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = distinct !{!7, !8}
!8 = !{!"llvm.loop.mustprogress"}
!9 = !{!10, !10, i64 0}
!10 = !{!"long", !5, i64 0}
!11 = distinct !{!11, !8}
