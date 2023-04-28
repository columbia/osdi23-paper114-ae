; ModuleID = 'crypto/ec/curve448/curve448.c'
source_filename = "crypto/ec/curve448/curve448.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.curve448_point_s = type { [1 x %struct.gf_s], [1 x %struct.gf_s], [1 x %struct.gf_s], [1 x %struct.gf_s] }
%struct.gf_s = type { [8 x i64] }
%struct.curve448_scalar_s = type { [7 x i64] }
%struct.curve448_precomputed_s = type { [80 x [1 x %struct.niels_s]] }
%struct.niels_s = type { [1 x %struct.gf_s], [1 x %struct.gf_s], [1 x %struct.gf_s] }
%struct.smvt_control = type { i32, i32 }
%struct.anon = type { [1 x %struct.niels_s], [1 x %struct.gf_s] }

@ossl_curve448_point_identity = constant [1 x %struct.curve448_point_s] [%struct.curve448_point_s { [1 x %struct.gf_s] zeroinitializer, [1 x %struct.gf_s] [%struct.gf_s { [8 x i64] [i64 1, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0] }], [1 x %struct.gf_s] [%struct.gf_s { [8 x i64] [i64 1, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0] }], [1 x %struct.gf_s] zeroinitializer }], align 16
@ZERO = internal constant [1 x %struct.gf_s] zeroinitializer, align 16
@precomputed_scalarmul_adjustment = internal constant [1 x %struct.curve448_scalar_s] [%struct.curve448_scalar_s { [7 x i64] [i64 -4002619432236240689, i64 -1642731020532381011, i64 -4966824541560203523, i64 35221520739, i64 0, i64 0, i64 0] }], align 16
@ONE = internal constant [1 x %struct.gf_s] [%struct.gf_s { [8 x i64] [i64 1, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0] }], align 16
@ossl_curve448_precomputed_base = external local_unnamed_addr global %struct.curve448_precomputed_s*, align 8
@ossl_curve448_wnaf_base = external local_unnamed_addr global [1 x %struct.niels_s]*, align 8

; Function Attrs: noinline nounwind uwtable
define void @ossl_curve448_point_double(%struct.curve448_point_s* noundef %p, %struct.curve448_point_s* noundef %q) local_unnamed_addr #0 {
entry:
  tail call fastcc void @point_double_internal(%struct.curve448_point_s* noundef %p, %struct.curve448_point_s* noundef %q, i32 noundef 0) #13
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @point_double_internal(%struct.curve448_point_s* noundef %p, %struct.curve448_point_s* noundef %q, i32 noundef %before_double) unnamed_addr #0 {
entry:
  %a = alloca [1 x %struct.gf_s], align 16
  %b = alloca [1 x %struct.gf_s], align 16
  %c = alloca [1 x %struct.gf_s], align 16
  %d = alloca [1 x %struct.gf_s], align 16
  %0 = bitcast [1 x %struct.gf_s]* %a to i8*
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %0) #14
  %1 = bitcast [1 x %struct.gf_s]* %b to i8*
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %1) #14
  %2 = bitcast [1 x %struct.gf_s]* %c to i8*
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %2) #14
  %3 = bitcast [1 x %struct.gf_s]* %d to i8*
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %3) #14
  %arraydecay = getelementptr inbounds [1 x %struct.gf_s], [1 x %struct.gf_s]* %c, i64 0, i64 0
  %arraydecay1 = getelementptr inbounds %struct.curve448_point_s, %struct.curve448_point_s* %q, i64 0, i32 0, i64 0
  call void @gf_sqr(%struct.gf_s* noundef nonnull %arraydecay, %struct.gf_s* noundef %arraydecay1) #15
  %arraydecay2 = getelementptr inbounds [1 x %struct.gf_s], [1 x %struct.gf_s]* %a, i64 0, i64 0
  %arraydecay3 = getelementptr inbounds %struct.curve448_point_s, %struct.curve448_point_s* %q, i64 0, i32 1, i64 0
  call void @gf_sqr(%struct.gf_s* noundef nonnull %arraydecay2, %struct.gf_s* noundef nonnull %arraydecay3) #15
  %arraydecay4 = getelementptr inbounds [1 x %struct.gf_s], [1 x %struct.gf_s]* %d, i64 0, i64 0
  %arrayidx.i = getelementptr inbounds [1 x %struct.gf_s], [1 x %struct.gf_s]* %c, i64 0, i64 0, i32 0, i64 0
  %4 = load i64, i64* %arrayidx.i, align 16, !tbaa !4
  %arrayidx4.i = getelementptr inbounds [1 x %struct.gf_s], [1 x %struct.gf_s]* %a, i64 0, i64 0, i32 0, i64 0
  %5 = load i64, i64* %arrayidx4.i, align 16, !tbaa !4
  %add.i = add i64 %5, %4
  %arrayidx7.i = getelementptr inbounds [1 x %struct.gf_s], [1 x %struct.gf_s]* %d, i64 0, i64 0, i32 0, i64 0
  %arrayidx.1.i = getelementptr inbounds [1 x %struct.gf_s], [1 x %struct.gf_s]* %c, i64 0, i64 0, i32 0, i64 1
  %arrayidx4.1.i = getelementptr inbounds [1 x %struct.gf_s], [1 x %struct.gf_s]* %a, i64 0, i64 0, i32 0, i64 1
  %arrayidx7.1.i = getelementptr inbounds [1 x %struct.gf_s], [1 x %struct.gf_s]* %d, i64 0, i64 0, i32 0, i64 1
  %6 = bitcast i64* %arrayidx.1.i to <2 x i64>*
  %7 = load <2 x i64>, <2 x i64>* %6, align 8, !tbaa !4
  %8 = bitcast i64* %arrayidx4.1.i to <2 x i64>*
  %9 = load <2 x i64>, <2 x i64>* %8, align 8, !tbaa !4
  %10 = add <2 x i64> %9, %7
  %arrayidx.3.i = getelementptr inbounds [1 x %struct.gf_s], [1 x %struct.gf_s]* %c, i64 0, i64 0, i32 0, i64 3
  %11 = load i64, i64* %arrayidx.3.i, align 8, !tbaa !4
  %arrayidx4.3.i = getelementptr inbounds [1 x %struct.gf_s], [1 x %struct.gf_s]* %a, i64 0, i64 0, i32 0, i64 3
  %12 = load i64, i64* %arrayidx4.3.i, align 8, !tbaa !4
  %add.3.i = add i64 %12, %11
  %arrayidx7.3.i = getelementptr inbounds [1 x %struct.gf_s], [1 x %struct.gf_s]* %d, i64 0, i64 0, i32 0, i64 3
  %arrayidx.4.i = getelementptr inbounds [1 x %struct.gf_s], [1 x %struct.gf_s]* %c, i64 0, i64 0, i32 0, i64 4
  %13 = load i64, i64* %arrayidx.4.i, align 16, !tbaa !4
  %arrayidx4.4.i = getelementptr inbounds [1 x %struct.gf_s], [1 x %struct.gf_s]* %a, i64 0, i64 0, i32 0, i64 4
  %14 = load i64, i64* %arrayidx4.4.i, align 16, !tbaa !4
  %add.4.i = add i64 %14, %13
  %arrayidx7.4.i = getelementptr inbounds [1 x %struct.gf_s], [1 x %struct.gf_s]* %d, i64 0, i64 0, i32 0, i64 4
  %arrayidx.5.i = getelementptr inbounds [1 x %struct.gf_s], [1 x %struct.gf_s]* %c, i64 0, i64 0, i32 0, i64 5
  %15 = load i64, i64* %arrayidx.5.i, align 8, !tbaa !4
  %arrayidx4.5.i = getelementptr inbounds [1 x %struct.gf_s], [1 x %struct.gf_s]* %a, i64 0, i64 0, i32 0, i64 5
  %16 = load i64, i64* %arrayidx4.5.i, align 8, !tbaa !4
  %add.5.i = add i64 %16, %15
  %arrayidx7.5.i = getelementptr inbounds [1 x %struct.gf_s], [1 x %struct.gf_s]* %d, i64 0, i64 0, i32 0, i64 5
  %arrayidx.6.i = getelementptr inbounds [1 x %struct.gf_s], [1 x %struct.gf_s]* %c, i64 0, i64 0, i32 0, i64 6
  %arrayidx4.6.i = getelementptr inbounds [1 x %struct.gf_s], [1 x %struct.gf_s]* %a, i64 0, i64 0, i32 0, i64 6
  %arrayidx7.6.i = getelementptr inbounds [1 x %struct.gf_s], [1 x %struct.gf_s]* %d, i64 0, i64 0, i32 0, i64 6
  %17 = bitcast i64* %arrayidx.6.i to <2 x i64>*
  %18 = load <2 x i64>, <2 x i64>* %17, align 16, !tbaa !4
  %19 = bitcast i64* %arrayidx4.6.i to <2 x i64>*
  %20 = load <2 x i64>, <2 x i64>* %19, align 16, !tbaa !4
  %21 = add <2 x i64> %20, %18
  %22 = extractelement <2 x i64> %21, i64 1
  %shr.i.i = lshr i64 %22, 56
  %add.i.i = add i64 %shr.i.i, %add.4.i
  %23 = and <2 x i64> %21, <i64 72057594037927935, i64 72057594037927935>
  %24 = insertelement <2 x i64> poison, i64 %add.5.i, i64 0
  %25 = shufflevector <2 x i64> %24, <2 x i64> %21, <2 x i32> <i32 0, i32 2>
  %26 = lshr <2 x i64> %25, <i64 56, i64 56>
  %27 = add nuw nsw <2 x i64> %23, %26
  %28 = bitcast i64* %arrayidx7.6.i to <2 x i64>*
  store <2 x i64> %27, <2 x i64>* %28, align 16, !tbaa !4
  %and.2.i.i = and i64 %add.5.i, 72057594037927935
  %shr8.2.i.i = lshr i64 %add.i.i, 56
  %add9.2.i.i = add nuw nsw i64 %shr8.2.i.i, %and.2.i.i
  store i64 %add9.2.i.i, i64* %arrayidx7.5.i, align 8, !tbaa !4
  %and.3.i.i = and i64 %add.i.i, 72057594037927935
  %shr8.3.i.i = lshr i64 %add.3.i, 56
  %add9.3.i.i = add nuw nsw i64 %and.3.i.i, %shr8.3.i.i
  store i64 %add9.3.i.i, i64* %arrayidx7.4.i, align 16, !tbaa !4
  %and.4.i.i = and i64 %add.3.i, 72057594037927935
  %29 = extractelement <2 x i64> %10, i64 1
  %shr8.4.i.i = lshr i64 %29, 56
  %add9.4.i.i = add nuw nsw i64 %and.4.i.i, %shr8.4.i.i
  store i64 %add9.4.i.i, i64* %arrayidx7.3.i, align 8, !tbaa !4
  %30 = and <2 x i64> %10, <i64 72057594037927935, i64 72057594037927935>
  %31 = insertelement <2 x i64> poison, i64 %add.i, i64 0
  %32 = shufflevector <2 x i64> %31, <2 x i64> %10, <2 x i32> <i32 0, i32 2>
  %33 = lshr <2 x i64> %32, <i64 56, i64 56>
  %34 = add nuw nsw <2 x i64> %30, %33
  %35 = bitcast i64* %arrayidx7.1.i to <2 x i64>*
  store <2 x i64> %34, <2 x i64>* %35, align 8, !tbaa !4
  %and15.i.i = and i64 %add.i, 72057594037927935
  %add16.i.i = add nuw nsw i64 %shr.i.i, %and15.i.i
  store i64 %add16.i.i, i64* %arrayidx7.i, align 16, !tbaa !4
  %arraydecay7 = getelementptr inbounds %struct.curve448_point_s, %struct.curve448_point_s* %p, i64 0, i32 3, i64 0
  %arrayidx.i72 = getelementptr inbounds %struct.gf_s, %struct.gf_s* %arraydecay3, i64 0, i32 0, i64 0
  %36 = load i64, i64* %arrayidx.i72, align 8, !tbaa !4
  %arrayidx4.i73 = getelementptr inbounds %struct.curve448_point_s, %struct.curve448_point_s* %q, i64 0, i32 0, i64 0, i32 0, i64 0
  %37 = load i64, i64* %arrayidx4.i73, align 8, !tbaa !4
  %add.i74 = add i64 %37, %36
  %arrayidx7.i75 = getelementptr inbounds %struct.gf_s, %struct.gf_s* %arraydecay7, i64 0, i32 0, i64 0
  store i64 %add.i74, i64* %arrayidx7.i75, align 8, !tbaa !4
  %arrayidx.1.i76 = getelementptr inbounds %struct.curve448_point_s, %struct.curve448_point_s* %q, i64 0, i32 1, i64 0, i32 0, i64 1
  %38 = load i64, i64* %arrayidx.1.i76, align 8, !tbaa !4
  %arrayidx4.1.i77 = getelementptr inbounds %struct.curve448_point_s, %struct.curve448_point_s* %q, i64 0, i32 0, i64 0, i32 0, i64 1
  %39 = load i64, i64* %arrayidx4.1.i77, align 8, !tbaa !4
  %add.1.i78 = add i64 %39, %38
  %arrayidx7.1.i79 = getelementptr inbounds %struct.curve448_point_s, %struct.curve448_point_s* %p, i64 0, i32 3, i64 0, i32 0, i64 1
  store i64 %add.1.i78, i64* %arrayidx7.1.i79, align 8, !tbaa !4
  %arrayidx.2.i80 = getelementptr inbounds %struct.curve448_point_s, %struct.curve448_point_s* %q, i64 0, i32 1, i64 0, i32 0, i64 2
  %40 = load i64, i64* %arrayidx.2.i80, align 8, !tbaa !4
  %arrayidx4.2.i81 = getelementptr inbounds %struct.curve448_point_s, %struct.curve448_point_s* %q, i64 0, i32 0, i64 0, i32 0, i64 2
  %41 = load i64, i64* %arrayidx4.2.i81, align 8, !tbaa !4
  %add.2.i82 = add i64 %41, %40
  %arrayidx7.2.i83 = getelementptr inbounds %struct.curve448_point_s, %struct.curve448_point_s* %p, i64 0, i32 3, i64 0, i32 0, i64 2
  store i64 %add.2.i82, i64* %arrayidx7.2.i83, align 8, !tbaa !4
  %arrayidx.3.i84 = getelementptr inbounds %struct.curve448_point_s, %struct.curve448_point_s* %q, i64 0, i32 1, i64 0, i32 0, i64 3
  %42 = load i64, i64* %arrayidx.3.i84, align 8, !tbaa !4
  %arrayidx4.3.i85 = getelementptr inbounds %struct.curve448_point_s, %struct.curve448_point_s* %q, i64 0, i32 0, i64 0, i32 0, i64 3
  %43 = load i64, i64* %arrayidx4.3.i85, align 8, !tbaa !4
  %add.3.i86 = add i64 %43, %42
  %arrayidx7.3.i87 = getelementptr inbounds %struct.curve448_point_s, %struct.curve448_point_s* %p, i64 0, i32 3, i64 0, i32 0, i64 3
  store i64 %add.3.i86, i64* %arrayidx7.3.i87, align 8, !tbaa !4
  %arrayidx.4.i88 = getelementptr inbounds %struct.curve448_point_s, %struct.curve448_point_s* %q, i64 0, i32 1, i64 0, i32 0, i64 4
  %44 = load i64, i64* %arrayidx.4.i88, align 8, !tbaa !4
  %arrayidx4.4.i89 = getelementptr inbounds %struct.curve448_point_s, %struct.curve448_point_s* %q, i64 0, i32 0, i64 0, i32 0, i64 4
  %45 = load i64, i64* %arrayidx4.4.i89, align 8, !tbaa !4
  %add.4.i90 = add i64 %45, %44
  %arrayidx7.4.i91 = getelementptr inbounds %struct.curve448_point_s, %struct.curve448_point_s* %p, i64 0, i32 3, i64 0, i32 0, i64 4
  store i64 %add.4.i90, i64* %arrayidx7.4.i91, align 8, !tbaa !4
  %arrayidx.5.i92 = getelementptr inbounds %struct.curve448_point_s, %struct.curve448_point_s* %q, i64 0, i32 1, i64 0, i32 0, i64 5
  %46 = load i64, i64* %arrayidx.5.i92, align 8, !tbaa !4
  %arrayidx4.5.i93 = getelementptr inbounds %struct.curve448_point_s, %struct.curve448_point_s* %q, i64 0, i32 0, i64 0, i32 0, i64 5
  %47 = load i64, i64* %arrayidx4.5.i93, align 8, !tbaa !4
  %add.5.i94 = add i64 %47, %46
  %arrayidx7.5.i95 = getelementptr inbounds %struct.curve448_point_s, %struct.curve448_point_s* %p, i64 0, i32 3, i64 0, i32 0, i64 5
  store i64 %add.5.i94, i64* %arrayidx7.5.i95, align 8, !tbaa !4
  %arrayidx.6.i96 = getelementptr inbounds %struct.curve448_point_s, %struct.curve448_point_s* %q, i64 0, i32 1, i64 0, i32 0, i64 6
  %48 = load i64, i64* %arrayidx.6.i96, align 8, !tbaa !4
  %arrayidx4.6.i97 = getelementptr inbounds %struct.curve448_point_s, %struct.curve448_point_s* %q, i64 0, i32 0, i64 0, i32 0, i64 6
  %49 = load i64, i64* %arrayidx4.6.i97, align 8, !tbaa !4
  %add.6.i98 = add i64 %49, %48
  %arrayidx7.6.i99 = getelementptr inbounds %struct.curve448_point_s, %struct.curve448_point_s* %p, i64 0, i32 3, i64 0, i32 0, i64 6
  store i64 %add.6.i98, i64* %arrayidx7.6.i99, align 8, !tbaa !4
  %arrayidx.7.i100 = getelementptr inbounds %struct.curve448_point_s, %struct.curve448_point_s* %q, i64 0, i32 1, i64 0, i32 0, i64 7
  %50 = load i64, i64* %arrayidx.7.i100, align 8, !tbaa !4
  %arrayidx4.7.i101 = getelementptr inbounds %struct.curve448_point_s, %struct.curve448_point_s* %q, i64 0, i32 0, i64 0, i32 0, i64 7
  %51 = load i64, i64* %arrayidx4.7.i101, align 8, !tbaa !4
  %add.7.i102 = add i64 %51, %50
  %arrayidx7.7.i103 = getelementptr inbounds %struct.curve448_point_s, %struct.curve448_point_s* %p, i64 0, i32 3, i64 0, i32 0, i64 7
  %shr.i.i104 = lshr i64 %add.7.i102, 56
  %add.i.i105 = add i64 %shr.i.i104, %add.4.i90
  %and.i.i106 = and i64 %add.7.i102, 72057594037927935
  %shr8.i.i107 = lshr i64 %add.6.i98, 56
  %add9.i.i108 = add nuw nsw i64 %and.i.i106, %shr8.i.i107
  store i64 %add9.i.i108, i64* %arrayidx7.7.i103, align 8, !tbaa !4
  %and.1.i.i109 = and i64 %add.6.i98, 72057594037927935
  %shr8.1.i.i110 = lshr i64 %add.5.i94, 56
  %add9.1.i.i111 = add nuw nsw i64 %and.1.i.i109, %shr8.1.i.i110
  store i64 %add9.1.i.i111, i64* %arrayidx7.6.i99, align 8, !tbaa !4
  %and.2.i.i112 = and i64 %add.5.i94, 72057594037927935
  %shr8.2.i.i113 = lshr i64 %add.i.i105, 56
  %add9.2.i.i114 = add nuw nsw i64 %shr8.2.i.i113, %and.2.i.i112
  store i64 %add9.2.i.i114, i64* %arrayidx7.5.i95, align 8, !tbaa !4
  %and.3.i.i115 = and i64 %add.i.i105, 72057594037927935
  %shr8.3.i.i116 = lshr i64 %add.3.i86, 56
  %add9.3.i.i117 = add nuw nsw i64 %and.3.i.i115, %shr8.3.i.i116
  store i64 %add9.3.i.i117, i64* %arrayidx7.4.i91, align 8, !tbaa !4
  %and.4.i.i118 = and i64 %add.3.i86, 72057594037927935
  %shr8.4.i.i119 = lshr i64 %add.2.i82, 56
  %add9.4.i.i120 = add nuw nsw i64 %and.4.i.i118, %shr8.4.i.i119
  store i64 %add9.4.i.i120, i64* %arrayidx7.3.i87, align 8, !tbaa !4
  %and.5.i.i121 = and i64 %add.2.i82, 72057594037927935
  %shr8.5.i.i122 = lshr i64 %add.1.i78, 56
  %add9.5.i.i123 = add nuw nsw i64 %and.5.i.i121, %shr8.5.i.i122
  store i64 %add9.5.i.i123, i64* %arrayidx7.2.i83, align 8, !tbaa !4
  %and.6.i.i124 = and i64 %add.1.i78, 72057594037927935
  %shr8.6.i.i125 = lshr i64 %add.i74, 56
  %add9.6.i.i126 = add nuw nsw i64 %and.6.i.i124, %shr8.6.i.i125
  store i64 %add9.6.i.i126, i64* %arrayidx7.1.i79, align 8, !tbaa !4
  %and15.i.i127 = and i64 %add.i74, 72057594037927935
  %add16.i.i128 = add nuw nsw i64 %shr.i.i104, %and15.i.i127
  store i64 %add16.i.i128, i64* %arrayidx7.i75, align 16, !tbaa !4
  %arraydecay12 = getelementptr inbounds [1 x %struct.gf_s], [1 x %struct.gf_s]* %b, i64 0, i64 0
  call void @gf_sqr(%struct.gf_s* noundef nonnull %arraydecay12, %struct.gf_s* noundef nonnull %arraydecay7) #15
  call fastcc void @gf_subx_nr(%struct.gf_s* noundef nonnull %arraydecay12, %struct.gf_s* noundef nonnull %arraydecay12, %struct.gf_s* noundef nonnull %arraydecay4, i32 noundef 3) #13
  call fastcc void @gf_sub_nr(%struct.gf_s* noundef nonnull %arraydecay7, %struct.gf_s* noundef nonnull %arraydecay2, %struct.gf_s* noundef nonnull %arraydecay) #13
  %arraydecay23 = getelementptr inbounds %struct.curve448_point_s, %struct.curve448_point_s* %p, i64 0, i32 0, i64 0
  %arraydecay24 = getelementptr inbounds %struct.curve448_point_s, %struct.curve448_point_s* %q, i64 0, i32 2, i64 0
  call void @gf_sqr(%struct.gf_s* noundef %arraydecay23, %struct.gf_s* noundef nonnull %arraydecay24) #15
  %arraydecay26 = getelementptr inbounds %struct.curve448_point_s, %struct.curve448_point_s* %p, i64 0, i32 2, i64 0
  %arrayidx.i129 = getelementptr inbounds %struct.curve448_point_s, %struct.curve448_point_s* %p, i64 0, i32 0, i64 0, i32 0, i64 0
  %52 = load i64, i64* %arrayidx.i129, align 8, !tbaa !4
  %add.i131 = shl i64 %52, 1
  %arrayidx7.i132 = getelementptr inbounds %struct.gf_s, %struct.gf_s* %arraydecay26, i64 0, i32 0, i64 0
  %arrayidx.1.i133 = getelementptr inbounds %struct.curve448_point_s, %struct.curve448_point_s* %p, i64 0, i32 0, i64 0, i32 0, i64 1
  %arrayidx7.1.i136 = getelementptr inbounds %struct.curve448_point_s, %struct.curve448_point_s* %p, i64 0, i32 2, i64 0, i32 0, i64 1
  %53 = bitcast i64* %arrayidx.1.i133 to <2 x i64>*
  %54 = load <2 x i64>, <2 x i64>* %53, align 8, !tbaa !4
  %55 = shl <2 x i64> %54, <i64 1, i64 1>
  %arrayidx.3.i141 = getelementptr inbounds %struct.curve448_point_s, %struct.curve448_point_s* %p, i64 0, i32 0, i64 0, i32 0, i64 3
  %56 = load i64, i64* %arrayidx.3.i141, align 8, !tbaa !4
  %add.3.i143 = shl i64 %56, 1
  %arrayidx7.3.i144 = getelementptr inbounds %struct.curve448_point_s, %struct.curve448_point_s* %p, i64 0, i32 2, i64 0, i32 0, i64 3
  %arrayidx.4.i145 = getelementptr inbounds %struct.curve448_point_s, %struct.curve448_point_s* %p, i64 0, i32 0, i64 0, i32 0, i64 4
  %57 = load i64, i64* %arrayidx.4.i145, align 8, !tbaa !4
  %add.4.i147 = shl i64 %57, 1
  %arrayidx7.4.i148 = getelementptr inbounds %struct.curve448_point_s, %struct.curve448_point_s* %p, i64 0, i32 2, i64 0, i32 0, i64 4
  %arrayidx.5.i149 = getelementptr inbounds %struct.curve448_point_s, %struct.curve448_point_s* %p, i64 0, i32 0, i64 0, i32 0, i64 5
  %58 = load i64, i64* %arrayidx.5.i149, align 8, !tbaa !4
  %add.5.i151 = shl i64 %58, 1
  %arrayidx7.5.i152 = getelementptr inbounds %struct.curve448_point_s, %struct.curve448_point_s* %p, i64 0, i32 2, i64 0, i32 0, i64 5
  %arrayidx.6.i153 = getelementptr inbounds %struct.curve448_point_s, %struct.curve448_point_s* %p, i64 0, i32 0, i64 0, i32 0, i64 6
  %arrayidx7.6.i156 = getelementptr inbounds %struct.curve448_point_s, %struct.curve448_point_s* %p, i64 0, i32 2, i64 0, i32 0, i64 6
  %59 = bitcast i64* %arrayidx.6.i153 to <2 x i64>*
  %60 = load <2 x i64>, <2 x i64>* %59, align 8, !tbaa !4
  %61 = shl <2 x i64> %60, <i64 1, i64 1>
  %62 = extractelement <2 x i64> %61, i64 1
  %shr.i.i161 = lshr i64 %62, 56
  %add.i.i162 = add i64 %shr.i.i161, %add.4.i147
  %63 = and <2 x i64> %61, <i64 72057594037927934, i64 72057594037927934>
  %64 = insertelement <2 x i64> poison, i64 %add.5.i151, i64 0
  %65 = shufflevector <2 x i64> %64, <2 x i64> %61, <2 x i32> <i32 0, i32 2>
  %66 = lshr <2 x i64> %65, <i64 56, i64 56>
  %67 = add nuw nsw <2 x i64> %63, %66
  %68 = bitcast i64* %arrayidx7.6.i156 to <2 x i64>*
  store <2 x i64> %67, <2 x i64>* %68, align 8, !tbaa !4
  %and.2.i.i169 = and i64 %add.5.i151, 72057594037927934
  %shr8.2.i.i170 = lshr i64 %add.i.i162, 56
  %add9.2.i.i171 = add nuw nsw i64 %shr8.2.i.i170, %and.2.i.i169
  store i64 %add9.2.i.i171, i64* %arrayidx7.5.i152, align 8, !tbaa !4
  %and.3.i.i172 = and i64 %add.i.i162, 72057594037927935
  %shr8.3.i.i173 = lshr i64 %add.3.i143, 56
  %add9.3.i.i174 = add nuw nsw i64 %and.3.i.i172, %shr8.3.i.i173
  store i64 %add9.3.i.i174, i64* %arrayidx7.4.i148, align 8, !tbaa !4
  %and.4.i.i175 = and i64 %add.3.i143, 72057594037927934
  %69 = extractelement <2 x i64> %55, i64 1
  %shr8.4.i.i176 = lshr i64 %69, 56
  %add9.4.i.i177 = add nuw nsw i64 %and.4.i.i175, %shr8.4.i.i176
  store i64 %add9.4.i.i177, i64* %arrayidx7.3.i144, align 8, !tbaa !4
  %70 = and <2 x i64> %55, <i64 72057594037927934, i64 72057594037927934>
  %71 = insertelement <2 x i64> poison, i64 %add.i131, i64 0
  %72 = shufflevector <2 x i64> %71, <2 x i64> %55, <2 x i32> <i32 0, i32 2>
  %73 = lshr <2 x i64> %72, <i64 56, i64 56>
  %74 = add nuw nsw <2 x i64> %70, %73
  %75 = bitcast i64* %arrayidx7.1.i136 to <2 x i64>*
  store <2 x i64> %74, <2 x i64>* %75, align 8, !tbaa !4
  %and15.i.i184 = and i64 %add.i131, 72057594037927934
  %add16.i.i185 = add nuw nsw i64 %shr.i.i161, %and15.i.i184
  store i64 %add16.i.i185, i64* %arrayidx7.i132, align 16, !tbaa !4
  call fastcc void @gf_subx_nr(%struct.gf_s* noundef nonnull %arraydecay2, %struct.gf_s* noundef nonnull %arraydecay26, %struct.gf_s* noundef nonnull %arraydecay7, i32 noundef 4) #13
  call void @gf_mul(%struct.gf_s* noundef %arraydecay23, %struct.gf_s* noundef nonnull %arraydecay2, %struct.gf_s* noundef nonnull %arraydecay12) #15
  call void @gf_mul(%struct.gf_s* noundef nonnull %arraydecay26, %struct.gf_s* noundef nonnull %arraydecay7, %struct.gf_s* noundef nonnull %arraydecay2) #15
  %arraydecay46 = getelementptr inbounds %struct.curve448_point_s, %struct.curve448_point_s* %p, i64 0, i32 1, i64 0
  call void @gf_mul(%struct.gf_s* noundef nonnull %arraydecay46, %struct.gf_s* noundef nonnull %arraydecay7, %struct.gf_s* noundef nonnull %arraydecay4) #15
  %tobool.not = icmp eq i32 %before_double, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @gf_mul(%struct.gf_s* noundef nonnull %arraydecay7, %struct.gf_s* noundef nonnull %arraydecay12, %struct.gf_s* noundef nonnull %arraydecay4) #15
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %3) #14
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %2) #14
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %1) #14
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %0) #14
  ret void
}

; Function Attrs: noinline nounwind uwtable
define i64 @ossl_curve448_point_eq(%struct.curve448_point_s* noundef %p, %struct.curve448_point_s* noundef %q) local_unnamed_addr #0 {
entry:
  %a = alloca [1 x %struct.gf_s], align 16
  %b = alloca [1 x %struct.gf_s], align 16
  %0 = bitcast [1 x %struct.gf_s]* %a to i8*
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %0) #14
  %1 = bitcast [1 x %struct.gf_s]* %b to i8*
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %1) #14
  %arraydecay = getelementptr inbounds [1 x %struct.gf_s], [1 x %struct.gf_s]* %a, i64 0, i64 0
  %arraydecay1 = getelementptr inbounds %struct.curve448_point_s, %struct.curve448_point_s* %p, i64 0, i32 1, i64 0
  %arraydecay2 = getelementptr inbounds %struct.curve448_point_s, %struct.curve448_point_s* %q, i64 0, i32 0, i64 0
  call void @gf_mul(%struct.gf_s* noundef nonnull %arraydecay, %struct.gf_s* noundef nonnull %arraydecay1, %struct.gf_s* noundef %arraydecay2) #15
  %arraydecay3 = getelementptr inbounds [1 x %struct.gf_s], [1 x %struct.gf_s]* %b, i64 0, i64 0
  %arraydecay5 = getelementptr inbounds %struct.curve448_point_s, %struct.curve448_point_s* %q, i64 0, i32 1, i64 0
  %arraydecay7 = getelementptr inbounds %struct.curve448_point_s, %struct.curve448_point_s* %p, i64 0, i32 0, i64 0
  call void @gf_mul(%struct.gf_s* noundef nonnull %arraydecay3, %struct.gf_s* noundef nonnull %arraydecay5, %struct.gf_s* noundef %arraydecay7) #15
  %call = call i64 @gf_eq(%struct.gf_s* noundef nonnull %arraydecay, %struct.gf_s* noundef nonnull %arraydecay3) #15
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %1) #14
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %0) #14
  ret i64 %call
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

declare void @gf_mul(%struct.gf_s* noundef, %struct.gf_s* noundef, %struct.gf_s* noundef) local_unnamed_addr #2

declare i64 @gf_eq(%struct.gf_s* noundef, %struct.gf_s* noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: noinline nounwind uwtable
define i64 @ossl_curve448_point_valid(%struct.curve448_point_s* noundef %p) local_unnamed_addr #0 {
entry:
  %a = alloca [1 x %struct.gf_s], align 16
  %b = alloca [1 x %struct.gf_s], align 16
  %c = alloca [1 x %struct.gf_s], align 16
  %0 = bitcast [1 x %struct.gf_s]* %a to i8*
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %0) #14
  %1 = bitcast [1 x %struct.gf_s]* %b to i8*
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %1) #14
  %2 = bitcast [1 x %struct.gf_s]* %c to i8*
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %2) #14
  %arraydecay = getelementptr inbounds [1 x %struct.gf_s], [1 x %struct.gf_s]* %a, i64 0, i64 0
  %arraydecay1 = getelementptr inbounds %struct.curve448_point_s, %struct.curve448_point_s* %p, i64 0, i32 0, i64 0
  %arraydecay2 = getelementptr inbounds %struct.curve448_point_s, %struct.curve448_point_s* %p, i64 0, i32 1, i64 0
  call void @gf_mul(%struct.gf_s* noundef nonnull %arraydecay, %struct.gf_s* noundef %arraydecay1, %struct.gf_s* noundef nonnull %arraydecay2) #15
  %arraydecay3 = getelementptr inbounds [1 x %struct.gf_s], [1 x %struct.gf_s]* %b, i64 0, i64 0
  %arraydecay4 = getelementptr inbounds %struct.curve448_point_s, %struct.curve448_point_s* %p, i64 0, i32 2, i64 0
  %arraydecay5 = getelementptr inbounds %struct.curve448_point_s, %struct.curve448_point_s* %p, i64 0, i32 3, i64 0
  call void @gf_mul(%struct.gf_s* noundef nonnull %arraydecay3, %struct.gf_s* noundef nonnull %arraydecay4, %struct.gf_s* noundef nonnull %arraydecay5) #15
  %call = call i64 @gf_eq(%struct.gf_s* noundef nonnull %arraydecay, %struct.gf_s* noundef nonnull %arraydecay3) #15
  call void @gf_sqr(%struct.gf_s* noundef nonnull %arraydecay, %struct.gf_s* noundef %arraydecay1) #15
  call void @gf_sqr(%struct.gf_s* noundef nonnull %arraydecay3, %struct.gf_s* noundef nonnull %arraydecay2) #15
  call void @gf_sub(%struct.gf_s* noundef nonnull %arraydecay, %struct.gf_s* noundef nonnull %arraydecay3, %struct.gf_s* noundef nonnull %arraydecay) #15
  call void @gf_sqr(%struct.gf_s* noundef nonnull %arraydecay3, %struct.gf_s* noundef nonnull %arraydecay5) #15
  %arraydecay20 = getelementptr inbounds [1 x %struct.gf_s], [1 x %struct.gf_s]* %c, i64 0, i64 0
  call fastcc void @gf_mulw(%struct.gf_s* noundef nonnull %arraydecay20, %struct.gf_s* noundef nonnull %arraydecay3, i32 noundef -39082) #13
  call void @gf_sqr(%struct.gf_s* noundef nonnull %arraydecay3, %struct.gf_s* noundef nonnull %arraydecay4) #15
  call void @gf_add(%struct.gf_s* noundef nonnull %arraydecay3, %struct.gf_s* noundef nonnull %arraydecay3, %struct.gf_s* noundef nonnull %arraydecay20) #15
  %call30 = call i64 @gf_eq(%struct.gf_s* noundef nonnull %arraydecay, %struct.gf_s* noundef nonnull %arraydecay3) #15
  %and = and i64 %call30, %call
  %call33 = call i64 @gf_eq(%struct.gf_s* noundef nonnull %arraydecay4, %struct.gf_s* noundef getelementptr inbounds ([1 x %struct.gf_s], [1 x %struct.gf_s]* @ZERO, i64 0, i64 0)) #15
  %neg = xor i64 %call33, -1
  %and34 = and i64 %and, %neg
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %2) #14
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %1) #14
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %0) #14
  ret i64 %and34
}

declare void @gf_sqr(%struct.gf_s* noundef, %struct.gf_s* noundef) local_unnamed_addr #2

declare void @gf_sub(%struct.gf_s* noundef, %struct.gf_s* noundef, %struct.gf_s* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @gf_mulw(%struct.gf_s* noundef %c, %struct.gf_s* noundef %a, i32 noundef %w) unnamed_addr #0 {
entry:
  %cmp = icmp sgt i32 %w, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  tail call void @gf_mulw_unsigned(%struct.gf_s* noundef %c, %struct.gf_s* noundef %a, i32 noundef %w) #15
  br label %if.end

if.else:                                          ; preds = %entry
  %sub = sub nsw i32 0, %w
  tail call void @gf_mulw_unsigned(%struct.gf_s* noundef %c, %struct.gf_s* noundef %a, i32 noundef %sub) #15
  tail call void @gf_sub(%struct.gf_s* noundef %c, %struct.gf_s* noundef getelementptr inbounds ([1 x %struct.gf_s], [1 x %struct.gf_s]* @ZERO, i64 0, i64 0), %struct.gf_s* noundef %c) #15
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

declare void @gf_add(%struct.gf_s* noundef, %struct.gf_s* noundef, %struct.gf_s* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define void @ossl_curve448_precomputed_scalarmul(%struct.curve448_point_s* noundef %out, %struct.curve448_precomputed_s* nocapture noundef readonly %table, %struct.curve448_scalar_s* noundef %scalar) local_unnamed_addr #0 {
entry:
  %ni = alloca [1 x %struct.niels_s], align 16
  %scalar1x = alloca [1 x %struct.curve448_scalar_s], align 16
  %0 = bitcast [1 x %struct.niels_s]* %ni to i8*
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %0) #14
  %1 = bitcast [1 x %struct.curve448_scalar_s]* %scalar1x to i8*
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %1) #14
  %arraydecay = getelementptr inbounds [1 x %struct.curve448_scalar_s], [1 x %struct.curve448_scalar_s]* %scalar1x, i64 0, i64 0
  call void @ossl_curve448_scalar_add(%struct.curve448_scalar_s* noundef nonnull %arraydecay, %struct.curve448_scalar_s* noundef %scalar, %struct.curve448_scalar_s* noundef getelementptr inbounds ([1 x %struct.curve448_scalar_s], [1 x %struct.curve448_scalar_s]* @precomputed_scalarmul_adjustment, i64 0, i64 0)) #15
  call void @ossl_curve448_scalar_halve(%struct.curve448_scalar_s* noundef nonnull %arraydecay, %struct.curve448_scalar_s* noundef nonnull %arraydecay) #15
  %arraydecay24 = getelementptr inbounds [1 x %struct.niels_s], [1 x %struct.niels_s]* %ni, i64 0, i64 0
  br label %for.body

for.body:                                         ; preds = %entry, %for.inc45
  %indvars.iv96 = phi i64 [ 18, %entry ], [ %indvars.iv.next97, %for.inc45 ]
  %cmp3 = icmp ne i64 %indvars.iv96, 18
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  call fastcc void @point_double_internal(%struct.curve448_point_s* noundef %out, %struct.curve448_point_s* noundef %out, i32 noundef 0) #13
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %indvars.iv.next97 = add nsw i64 %indvars.iv96, -1
  %cmp38 = icmp ne i64 %indvars.iv96, 1
  br label %if.end17.3

if.end17.3:                                       ; preds = %if.end, %if.end41
  %indvars.iv = phi i64 [ 0, %if.end ], [ %indvars.iv.next, %if.end41 ]
  %2 = mul nuw i64 %indvars.iv, 90
  %3 = add nuw nsw i64 %indvars.iv.next97, %2
  %div = lshr i64 %3, 6
  %idxprom = and i64 %div, 67108863
  %arrayidx = getelementptr inbounds [1 x %struct.curve448_scalar_s], [1 x %struct.curve448_scalar_s]* %scalar1x, i64 0, i64 0, i32 0, i64 %idxprom
  %4 = load i64, i64* %arrayidx, align 8, !tbaa !4
  %rem = and i64 %3, 63
  %shr = lshr i64 %4, %rem
  %5 = trunc i64 %shr to i32
  %6 = and i32 %5, 1
  %7 = mul i64 %indvars.iv, 90
  %8 = add i64 %7, 18
  %9 = add nuw nsw i64 %indvars.iv.next97, %8
  %div.1 = lshr i64 %9, 6
  %idxprom.1 = and i64 %div.1, 67108863
  %arrayidx.1 = getelementptr inbounds [1 x %struct.curve448_scalar_s], [1 x %struct.curve448_scalar_s]* %scalar1x, i64 0, i64 0, i32 0, i64 %idxprom.1
  %10 = load i64, i64* %arrayidx.1, align 8, !tbaa !4
  %rem.1 = and i64 %9, 63
  %shr.1 = lshr i64 %10, %rem.1
  %shr.1.tr = trunc i64 %shr.1 to i32
  %11 = shl i32 %shr.1.tr, 1
  %12 = and i32 %11, 2
  %conv16.1 = or i32 %6, %12
  %13 = mul i64 %indvars.iv, 90
  %14 = add i64 %13, 36
  %15 = add nuw nsw i64 %indvars.iv.next97, %14
  %div.2 = lshr i64 %15, 6
  %idxprom.2 = and i64 %div.2, 67108863
  %arrayidx.2 = getelementptr inbounds [1 x %struct.curve448_scalar_s], [1 x %struct.curve448_scalar_s]* %scalar1x, i64 0, i64 0, i32 0, i64 %idxprom.2
  %16 = load i64, i64* %arrayidx.2, align 8, !tbaa !4
  %rem.2 = and i64 %15, 63
  %shr.2 = lshr i64 %16, %rem.2
  %shr.2.tr = trunc i64 %shr.2 to i32
  %17 = shl i32 %shr.2.tr, 2
  %18 = and i32 %17, 4
  %conv16.2 = or i32 %conv16.1, %18
  %19 = mul i64 %indvars.iv, 90
  %20 = add i64 %19, 54
  %21 = add nuw nsw i64 %indvars.iv.next97, %20
  %div.3 = lshr i64 %21, 6
  %idxprom.3 = and i64 %div.3, 67108863
  %arrayidx.3 = getelementptr inbounds [1 x %struct.curve448_scalar_s], [1 x %struct.curve448_scalar_s]* %scalar1x, i64 0, i64 0, i32 0, i64 %idxprom.3
  %22 = load i64, i64* %arrayidx.3, align 8, !tbaa !4
  %rem.3 = and i64 %21, 63
  %shr.3 = lshr i64 %22, %rem.3
  %shr.3.tr = trunc i64 %shr.3 to i32
  %23 = shl i32 %shr.3.tr, 3
  %24 = and i32 %23, 8
  %conv16.3 = or i32 %conv16.2, %24
  %25 = mul i64 %indvars.iv, 90
  %26 = add i64 %25, 72
  %27 = add nuw nsw i64 %indvars.iv.next97, %26
  %cmp12.4 = icmp ult i64 %27, 446
  br i1 %cmp12.4, label %if.then13.4, label %if.end17.4

if.then13.4:                                      ; preds = %if.end17.3
  %div.4 = lshr i64 %27, 6
  %arrayidx.4 = getelementptr inbounds [1 x %struct.curve448_scalar_s], [1 x %struct.curve448_scalar_s]* %scalar1x, i64 0, i64 0, i32 0, i64 %div.4
  %28 = load i64, i64* %arrayidx.4, align 8, !tbaa !4
  %rem.4 = and i64 %27, 63
  %shr.4 = lshr i64 %28, %rem.4
  %shr.4.tr = trunc i64 %shr.4 to i32
  %29 = shl i32 %shr.4.tr, 4
  %30 = and i32 %29, 16
  %conv16.4 = or i32 %conv16.3, %30
  br label %if.end17.4

if.end17.4:                                       ; preds = %if.then13.4, %if.end17.3
  %tab.1.4 = phi i32 [ %conv16.4, %if.then13.4 ], [ %conv16.3, %if.end17.3 ]
  %shr18 = ashr i32 %tab.1.4, 4
  %sub19 = add nsw i32 %shr18, -1
  %conv20 = sext i32 %sub19 to i64
  %xor81 = xor i32 %sub19, %tab.1.4
  %and23 = and i32 %xor81, 15
  %31 = shl i64 %indvars.iv, 4
  %arrayidx28 = getelementptr inbounds %struct.curve448_precomputed_s, %struct.curve448_precomputed_s* %table, i64 0, i32 0, i64 %31
  call fastcc void @constant_time_lookup_niels(%struct.niels_s* noundef nonnull %arraydecay24, [1 x %struct.niels_s]* noundef %arrayidx28, i32 noundef %and23) #13
  call fastcc void @cond_neg_niels(%struct.niels_s* noundef nonnull %arraydecay24, i64 noundef %conv20) #13
  %cmp32 = icmp ne i64 %indvars.iv, 0
  %or.cond = select i1 %cmp3, i1 true, i1 %cmp32
  br i1 %or.cond, label %if.then34, label %if.else

if.then34:                                        ; preds = %if.end17.4
  %cmp36 = icmp eq i64 %indvars.iv, 4
  %32 = select i1 %cmp36, i1 %cmp38, i1 false
  %land.ext = zext i1 %32 to i32
  call fastcc void @add_niels_to_pt(%struct.curve448_point_s* noundef %out, %struct.niels_s* noundef nonnull %arraydecay24, i32 noundef %land.ext) #13
  br label %if.end41

if.else:                                          ; preds = %if.end17.4
  call fastcc void @niels_to_pt(%struct.curve448_point_s* noundef %out, %struct.niels_s* noundef nonnull %arraydecay24) #13
  br label %if.end41

if.end41:                                         ; preds = %if.else, %if.then34
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 5
  br i1 %exitcond.not, label %for.inc45, label %if.end17.3, !llvm.loop !8

for.inc45:                                        ; preds = %if.end41
  %cmp.not = icmp eq i64 %indvars.iv.next97, 0
  br i1 %cmp.not, label %for.end46, label %for.body, !llvm.loop !10

for.end46:                                        ; preds = %for.inc45
  call void @OPENSSL_cleanse(i8* noundef nonnull %0, i64 noundef 192) #15
  call void @OPENSSL_cleanse(i8* noundef nonnull %1, i64 noundef 56) #15
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %1) #14
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %0) #14
  ret void
}

declare void @ossl_curve448_scalar_add(%struct.curve448_scalar_s* noundef, %struct.curve448_scalar_s* noundef, %struct.curve448_scalar_s* noundef) local_unnamed_addr #2

declare void @ossl_curve448_scalar_halve(%struct.curve448_scalar_s* noundef, %struct.curve448_scalar_s* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @constant_time_lookup_niels(%struct.niels_s* noalias noundef %ni, [1 x %struct.niels_s]* nocapture noundef readonly %table, i32 noundef %idx) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.niels_s* %ni to i8*
  %1 = bitcast [1 x %struct.niels_s]* %table to i8*
  %2 = zext i32 %idx to i64
  tail call fastcc void @constant_time_lookup(i8* noundef %0, i8* noundef %1, i64 noundef %2) #13
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @cond_neg_niels(%struct.niels_s* noundef %n, i64 noundef %neg) unnamed_addr #0 {
entry:
  %arraydecay = getelementptr inbounds %struct.niels_s, %struct.niels_s* %n, i64 0, i32 0, i64 0
  %arraydecay1 = getelementptr inbounds %struct.niels_s, %struct.niels_s* %n, i64 0, i32 1, i64 0
  tail call fastcc void @gf_cond_swap(%struct.gf_s* noundef %arraydecay, %struct.gf_s* noundef nonnull %arraydecay1, i64 noundef %neg) #13
  %arraydecay2 = getelementptr inbounds %struct.niels_s, %struct.niels_s* %n, i64 0, i32 2, i64 0
  tail call fastcc void @gf_cond_neg(%struct.gf_s* noundef nonnull %arraydecay2, i64 noundef %neg) #13
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @add_niels_to_pt(%struct.curve448_point_s* noundef %d, %struct.niels_s* noundef %e, i32 noundef %before_double) unnamed_addr #0 {
entry:
  %a = alloca [1 x %struct.gf_s], align 16
  %b = alloca [1 x %struct.gf_s], align 16
  %c = alloca [1 x %struct.gf_s], align 16
  %0 = bitcast [1 x %struct.gf_s]* %a to i8*
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %0) #14
  %1 = bitcast [1 x %struct.gf_s]* %b to i8*
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %1) #14
  %2 = bitcast [1 x %struct.gf_s]* %c to i8*
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %2) #14
  %arraydecay = getelementptr inbounds [1 x %struct.gf_s], [1 x %struct.gf_s]* %b, i64 0, i64 0
  %arraydecay1 = getelementptr inbounds %struct.curve448_point_s, %struct.curve448_point_s* %d, i64 0, i32 1, i64 0
  %arraydecay2 = getelementptr inbounds %struct.curve448_point_s, %struct.curve448_point_s* %d, i64 0, i32 0, i64 0
  call fastcc void @gf_sub_nr(%struct.gf_s* noundef nonnull %arraydecay, %struct.gf_s* noundef nonnull %arraydecay1, %struct.gf_s* noundef %arraydecay2) #13
  %arraydecay3 = getelementptr inbounds [1 x %struct.gf_s], [1 x %struct.gf_s]* %a, i64 0, i64 0
  %arraydecay5 = getelementptr inbounds %struct.niels_s, %struct.niels_s* %e, i64 0, i32 0, i64 0
  call void @gf_mul(%struct.gf_s* noundef nonnull %arraydecay3, %struct.gf_s* noundef %arraydecay5, %struct.gf_s* noundef nonnull %arraydecay) #15
  %arrayidx.i = getelementptr inbounds %struct.curve448_point_s, %struct.curve448_point_s* %d, i64 0, i32 0, i64 0, i32 0, i64 0
  %3 = load i64, i64* %arrayidx.i, align 8, !tbaa !4
  %arrayidx4.i = getelementptr inbounds %struct.gf_s, %struct.gf_s* %arraydecay1, i64 0, i32 0, i64 0
  %4 = load i64, i64* %arrayidx4.i, align 8, !tbaa !4
  %add.i = add i64 %4, %3
  %arrayidx7.i = getelementptr inbounds [1 x %struct.gf_s], [1 x %struct.gf_s]* %b, i64 0, i64 0, i32 0, i64 0
  %arrayidx.1.i = getelementptr inbounds %struct.curve448_point_s, %struct.curve448_point_s* %d, i64 0, i32 0, i64 0, i32 0, i64 1
  %arrayidx4.1.i = getelementptr inbounds %struct.curve448_point_s, %struct.curve448_point_s* %d, i64 0, i32 1, i64 0, i32 0, i64 1
  %arrayidx7.1.i = getelementptr inbounds [1 x %struct.gf_s], [1 x %struct.gf_s]* %b, i64 0, i64 0, i32 0, i64 1
  %5 = bitcast i64* %arrayidx.1.i to <2 x i64>*
  %6 = load <2 x i64>, <2 x i64>* %5, align 8, !tbaa !4
  %7 = bitcast i64* %arrayidx4.1.i to <2 x i64>*
  %8 = load <2 x i64>, <2 x i64>* %7, align 8, !tbaa !4
  %9 = add <2 x i64> %8, %6
  %arrayidx.3.i = getelementptr inbounds %struct.curve448_point_s, %struct.curve448_point_s* %d, i64 0, i32 0, i64 0, i32 0, i64 3
  %10 = load i64, i64* %arrayidx.3.i, align 8, !tbaa !4
  %arrayidx4.3.i = getelementptr inbounds %struct.curve448_point_s, %struct.curve448_point_s* %d, i64 0, i32 1, i64 0, i32 0, i64 3
  %11 = load i64, i64* %arrayidx4.3.i, align 8, !tbaa !4
  %add.3.i = add i64 %11, %10
  %arrayidx7.3.i = getelementptr inbounds [1 x %struct.gf_s], [1 x %struct.gf_s]* %b, i64 0, i64 0, i32 0, i64 3
  %arrayidx.4.i = getelementptr inbounds %struct.curve448_point_s, %struct.curve448_point_s* %d, i64 0, i32 0, i64 0, i32 0, i64 4
  %12 = load i64, i64* %arrayidx.4.i, align 8, !tbaa !4
  %arrayidx4.4.i = getelementptr inbounds %struct.curve448_point_s, %struct.curve448_point_s* %d, i64 0, i32 1, i64 0, i32 0, i64 4
  %13 = load i64, i64* %arrayidx4.4.i, align 8, !tbaa !4
  %add.4.i = add i64 %13, %12
  %arrayidx7.4.i = getelementptr inbounds [1 x %struct.gf_s], [1 x %struct.gf_s]* %b, i64 0, i64 0, i32 0, i64 4
  %arrayidx.5.i = getelementptr inbounds %struct.curve448_point_s, %struct.curve448_point_s* %d, i64 0, i32 0, i64 0, i32 0, i64 5
  %14 = load i64, i64* %arrayidx.5.i, align 8, !tbaa !4
  %arrayidx4.5.i = getelementptr inbounds %struct.curve448_point_s, %struct.curve448_point_s* %d, i64 0, i32 1, i64 0, i32 0, i64 5
  %15 = load i64, i64* %arrayidx4.5.i, align 8, !tbaa !4
  %add.5.i = add i64 %15, %14
  %arrayidx7.5.i = getelementptr inbounds [1 x %struct.gf_s], [1 x %struct.gf_s]* %b, i64 0, i64 0, i32 0, i64 5
  %arrayidx.6.i = getelementptr inbounds %struct.curve448_point_s, %struct.curve448_point_s* %d, i64 0, i32 0, i64 0, i32 0, i64 6
  %arrayidx4.6.i = getelementptr inbounds %struct.curve448_point_s, %struct.curve448_point_s* %d, i64 0, i32 1, i64 0, i32 0, i64 6
  %arrayidx7.6.i = getelementptr inbounds [1 x %struct.gf_s], [1 x %struct.gf_s]* %b, i64 0, i64 0, i32 0, i64 6
  %16 = bitcast i64* %arrayidx.6.i to <2 x i64>*
  %17 = load <2 x i64>, <2 x i64>* %16, align 8, !tbaa !4
  %18 = bitcast i64* %arrayidx4.6.i to <2 x i64>*
  %19 = load <2 x i64>, <2 x i64>* %18, align 8, !tbaa !4
  %20 = add <2 x i64> %19, %17
  %21 = extractelement <2 x i64> %20, i64 1
  %shr.i.i = lshr i64 %21, 56
  %add.i.i = add i64 %shr.i.i, %add.4.i
  %22 = and <2 x i64> %20, <i64 72057594037927935, i64 72057594037927935>
  %23 = insertelement <2 x i64> poison, i64 %add.5.i, i64 0
  %24 = shufflevector <2 x i64> %23, <2 x i64> %20, <2 x i32> <i32 0, i32 2>
  %25 = lshr <2 x i64> %24, <i64 56, i64 56>
  %26 = add nuw nsw <2 x i64> %22, %25
  %27 = bitcast i64* %arrayidx7.6.i to <2 x i64>*
  store <2 x i64> %26, <2 x i64>* %27, align 16, !tbaa !4
  %and.2.i.i = and i64 %add.5.i, 72057594037927935
  %shr8.2.i.i = lshr i64 %add.i.i, 56
  %add9.2.i.i = add nuw nsw i64 %shr8.2.i.i, %and.2.i.i
  store i64 %add9.2.i.i, i64* %arrayidx7.5.i, align 8, !tbaa !4
  %and.3.i.i = and i64 %add.i.i, 72057594037927935
  %shr8.3.i.i = lshr i64 %add.3.i, 56
  %add9.3.i.i = add nuw nsw i64 %and.3.i.i, %shr8.3.i.i
  store i64 %add9.3.i.i, i64* %arrayidx7.4.i, align 16, !tbaa !4
  %and.4.i.i = and i64 %add.3.i, 72057594037927935
  %28 = extractelement <2 x i64> %9, i64 1
  %shr8.4.i.i = lshr i64 %28, 56
  %add9.4.i.i = add nuw nsw i64 %and.4.i.i, %shr8.4.i.i
  store i64 %add9.4.i.i, i64* %arrayidx7.3.i, align 8, !tbaa !4
  %29 = and <2 x i64> %9, <i64 72057594037927935, i64 72057594037927935>
  %30 = insertelement <2 x i64> poison, i64 %add.i, i64 0
  %31 = shufflevector <2 x i64> %30, <2 x i64> %9, <2 x i32> <i32 0, i32 2>
  %32 = lshr <2 x i64> %31, <i64 56, i64 56>
  %33 = add nuw nsw <2 x i64> %29, %32
  %34 = bitcast i64* %arrayidx7.1.i to <2 x i64>*
  store <2 x i64> %33, <2 x i64>* %34, align 8, !tbaa !4
  %and15.i.i = and i64 %add.i, 72057594037927935
  %add16.i.i = add nuw nsw i64 %shr.i.i, %and15.i.i
  store i64 %add16.i.i, i64* %arrayidx7.i, align 16, !tbaa !4
  %arraydecay15 = getelementptr inbounds %struct.niels_s, %struct.niels_s* %e, i64 0, i32 1, i64 0
  call void @gf_mul(%struct.gf_s* noundef nonnull %arraydecay1, %struct.gf_s* noundef nonnull %arraydecay15, %struct.gf_s* noundef nonnull %arraydecay) #15
  %arraydecay20 = getelementptr inbounds %struct.niels_s, %struct.niels_s* %e, i64 0, i32 2, i64 0
  %arraydecay21 = getelementptr inbounds %struct.curve448_point_s, %struct.curve448_point_s* %d, i64 0, i32 3, i64 0
  call void @gf_mul(%struct.gf_s* noundef %arraydecay2, %struct.gf_s* noundef nonnull %arraydecay20, %struct.gf_s* noundef nonnull %arraydecay21) #15
  %arraydecay22 = getelementptr inbounds [1 x %struct.gf_s], [1 x %struct.gf_s]* %c, i64 0, i64 0
  %arrayidx.i79 = getelementptr inbounds [1 x %struct.gf_s], [1 x %struct.gf_s]* %a, i64 0, i64 0, i32 0, i64 0
  %35 = load i64, i64* %arrayidx.i79, align 16, !tbaa !4
  %36 = load i64, i64* %arrayidx4.i, align 8, !tbaa !4
  %add.i81 = add i64 %36, %35
  %arrayidx7.i82 = getelementptr inbounds [1 x %struct.gf_s], [1 x %struct.gf_s]* %c, i64 0, i64 0, i32 0, i64 0
  %arrayidx.1.i83 = getelementptr inbounds [1 x %struct.gf_s], [1 x %struct.gf_s]* %a, i64 0, i64 0, i32 0, i64 1
  %arrayidx7.1.i86 = getelementptr inbounds [1 x %struct.gf_s], [1 x %struct.gf_s]* %c, i64 0, i64 0, i32 0, i64 1
  %37 = bitcast i64* %arrayidx.1.i83 to <2 x i64>*
  %38 = load <2 x i64>, <2 x i64>* %37, align 8, !tbaa !4
  %39 = bitcast i64* %arrayidx4.1.i to <2 x i64>*
  %40 = load <2 x i64>, <2 x i64>* %39, align 8, !tbaa !4
  %41 = add <2 x i64> %40, %38
  %arrayidx.3.i91 = getelementptr inbounds [1 x %struct.gf_s], [1 x %struct.gf_s]* %a, i64 0, i64 0, i32 0, i64 3
  %42 = load i64, i64* %arrayidx.3.i91, align 8, !tbaa !4
  %43 = load i64, i64* %arrayidx4.3.i, align 8, !tbaa !4
  %add.3.i93 = add i64 %43, %42
  %arrayidx7.3.i94 = getelementptr inbounds [1 x %struct.gf_s], [1 x %struct.gf_s]* %c, i64 0, i64 0, i32 0, i64 3
  %arrayidx.4.i95 = getelementptr inbounds [1 x %struct.gf_s], [1 x %struct.gf_s]* %a, i64 0, i64 0, i32 0, i64 4
  %44 = load i64, i64* %arrayidx.4.i95, align 16, !tbaa !4
  %45 = load i64, i64* %arrayidx4.4.i, align 8, !tbaa !4
  %add.4.i97 = add i64 %45, %44
  %arrayidx7.4.i98 = getelementptr inbounds [1 x %struct.gf_s], [1 x %struct.gf_s]* %c, i64 0, i64 0, i32 0, i64 4
  %arrayidx.5.i99 = getelementptr inbounds [1 x %struct.gf_s], [1 x %struct.gf_s]* %a, i64 0, i64 0, i32 0, i64 5
  %46 = load i64, i64* %arrayidx.5.i99, align 8, !tbaa !4
  %47 = load i64, i64* %arrayidx4.5.i, align 8, !tbaa !4
  %add.5.i101 = add i64 %47, %46
  %arrayidx7.5.i102 = getelementptr inbounds [1 x %struct.gf_s], [1 x %struct.gf_s]* %c, i64 0, i64 0, i32 0, i64 5
  %arrayidx.6.i103 = getelementptr inbounds [1 x %struct.gf_s], [1 x %struct.gf_s]* %a, i64 0, i64 0, i32 0, i64 6
  %arrayidx7.6.i106 = getelementptr inbounds [1 x %struct.gf_s], [1 x %struct.gf_s]* %c, i64 0, i64 0, i32 0, i64 6
  %48 = bitcast i64* %arrayidx.6.i103 to <2 x i64>*
  %49 = load <2 x i64>, <2 x i64>* %48, align 16, !tbaa !4
  %50 = bitcast i64* %arrayidx4.6.i to <2 x i64>*
  %51 = load <2 x i64>, <2 x i64>* %50, align 8, !tbaa !4
  %52 = add <2 x i64> %51, %49
  %53 = extractelement <2 x i64> %52, i64 1
  %shr.i.i111 = lshr i64 %53, 56
  %add.i.i112 = add i64 %shr.i.i111, %add.4.i97
  %54 = and <2 x i64> %52, <i64 72057594037927935, i64 72057594037927935>
  %55 = insertelement <2 x i64> poison, i64 %add.5.i101, i64 0
  %56 = shufflevector <2 x i64> %55, <2 x i64> %52, <2 x i32> <i32 0, i32 2>
  %57 = lshr <2 x i64> %56, <i64 56, i64 56>
  %58 = add nuw nsw <2 x i64> %54, %57
  %59 = bitcast i64* %arrayidx7.6.i106 to <2 x i64>*
  store <2 x i64> %58, <2 x i64>* %59, align 16, !tbaa !4
  %and.2.i.i119 = and i64 %add.5.i101, 72057594037927935
  %shr8.2.i.i120 = lshr i64 %add.i.i112, 56
  %add9.2.i.i121 = add nuw nsw i64 %shr8.2.i.i120, %and.2.i.i119
  store i64 %add9.2.i.i121, i64* %arrayidx7.5.i102, align 8, !tbaa !4
  %and.3.i.i122 = and i64 %add.i.i112, 72057594037927935
  %shr8.3.i.i123 = lshr i64 %add.3.i93, 56
  %add9.3.i.i124 = add nuw nsw i64 %and.3.i.i122, %shr8.3.i.i123
  store i64 %add9.3.i.i124, i64* %arrayidx7.4.i98, align 16, !tbaa !4
  %and.4.i.i125 = and i64 %add.3.i93, 72057594037927935
  %60 = extractelement <2 x i64> %41, i64 1
  %shr8.4.i.i126 = lshr i64 %60, 56
  %add9.4.i.i127 = add nuw nsw i64 %and.4.i.i125, %shr8.4.i.i126
  store i64 %add9.4.i.i127, i64* %arrayidx7.3.i94, align 8, !tbaa !4
  %61 = and <2 x i64> %41, <i64 72057594037927935, i64 72057594037927935>
  %62 = insertelement <2 x i64> poison, i64 %add.i81, i64 0
  %63 = shufflevector <2 x i64> %62, <2 x i64> %41, <2 x i32> <i32 0, i32 2>
  %64 = lshr <2 x i64> %63, <i64 56, i64 56>
  %65 = add nuw nsw <2 x i64> %61, %64
  %66 = bitcast i64* %arrayidx7.1.i86 to <2 x i64>*
  store <2 x i64> %65, <2 x i64>* %66, align 8, !tbaa !4
  %and15.i.i134 = and i64 %add.i81, 72057594037927935
  %add16.i.i135 = add nuw nsw i64 %shr.i.i111, %and15.i.i134
  store i64 %add16.i.i135, i64* %arrayidx7.i82, align 16, !tbaa !4
  call fastcc void @gf_sub_nr(%struct.gf_s* noundef nonnull %arraydecay, %struct.gf_s* noundef nonnull %arraydecay1, %struct.gf_s* noundef nonnull %arraydecay3) #13
  %arraydecay32 = getelementptr inbounds %struct.curve448_point_s, %struct.curve448_point_s* %d, i64 0, i32 2, i64 0
  call fastcc void @gf_sub_nr(%struct.gf_s* noundef nonnull %arraydecay1, %struct.gf_s* noundef nonnull %arraydecay32, %struct.gf_s* noundef %arraydecay2) #13
  %67 = load i64, i64* %arrayidx.i, align 8, !tbaa !4
  %arrayidx4.i137 = getelementptr inbounds %struct.gf_s, %struct.gf_s* %arraydecay32, i64 0, i32 0, i64 0
  %68 = load i64, i64* %arrayidx4.i137, align 8, !tbaa !4
  %add.i138 = add i64 %68, %67
  %arrayidx4.1.i141 = getelementptr inbounds %struct.curve448_point_s, %struct.curve448_point_s* %d, i64 0, i32 2, i64 0, i32 0, i64 1
  %69 = bitcast i64* %arrayidx.1.i to <2 x i64>*
  %70 = load <2 x i64>, <2 x i64>* %69, align 8, !tbaa !4
  %71 = bitcast i64* %arrayidx4.1.i141 to <2 x i64>*
  %72 = load <2 x i64>, <2 x i64>* %71, align 8, !tbaa !4
  %73 = add <2 x i64> %72, %70
  %74 = load i64, i64* %arrayidx.3.i, align 8, !tbaa !4
  %arrayidx4.3.i149 = getelementptr inbounds %struct.curve448_point_s, %struct.curve448_point_s* %d, i64 0, i32 2, i64 0, i32 0, i64 3
  %75 = load i64, i64* %arrayidx4.3.i149, align 8, !tbaa !4
  %add.3.i150 = add i64 %75, %74
  %76 = load i64, i64* %arrayidx.4.i, align 8, !tbaa !4
  %arrayidx4.4.i153 = getelementptr inbounds %struct.curve448_point_s, %struct.curve448_point_s* %d, i64 0, i32 2, i64 0, i32 0, i64 4
  %77 = load i64, i64* %arrayidx4.4.i153, align 8, !tbaa !4
  %add.4.i154 = add i64 %77, %76
  %78 = load i64, i64* %arrayidx.5.i, align 8, !tbaa !4
  %arrayidx4.5.i157 = getelementptr inbounds %struct.curve448_point_s, %struct.curve448_point_s* %d, i64 0, i32 2, i64 0, i32 0, i64 5
  %79 = load i64, i64* %arrayidx4.5.i157, align 8, !tbaa !4
  %add.5.i158 = add i64 %79, %78
  %arrayidx4.6.i161 = getelementptr inbounds %struct.curve448_point_s, %struct.curve448_point_s* %d, i64 0, i32 2, i64 0, i32 0, i64 6
  %80 = bitcast i64* %arrayidx.6.i to <2 x i64>*
  %81 = load <2 x i64>, <2 x i64>* %80, align 8, !tbaa !4
  %82 = bitcast i64* %arrayidx4.6.i161 to <2 x i64>*
  %83 = load <2 x i64>, <2 x i64>* %82, align 8, !tbaa !4
  %84 = add <2 x i64> %83, %81
  %85 = extractelement <2 x i64> %84, i64 1
  %shr.i.i168 = lshr i64 %85, 56
  %add.i.i169 = add i64 %shr.i.i168, %add.4.i154
  %86 = and <2 x i64> %84, <i64 72057594037927935, i64 72057594037927935>
  %87 = insertelement <2 x i64> poison, i64 %add.5.i158, i64 0
  %88 = shufflevector <2 x i64> %87, <2 x i64> %84, <2 x i32> <i32 0, i32 2>
  %89 = lshr <2 x i64> %88, <i64 56, i64 56>
  %90 = add nuw nsw <2 x i64> %86, %89
  %91 = bitcast i64* %arrayidx.6.i103 to <2 x i64>*
  store <2 x i64> %90, <2 x i64>* %91, align 16, !tbaa !4
  %and.2.i.i176 = and i64 %add.5.i158, 72057594037927935
  %shr8.2.i.i177 = lshr i64 %add.i.i169, 56
  %add9.2.i.i178 = add nuw nsw i64 %shr8.2.i.i177, %and.2.i.i176
  store i64 %add9.2.i.i178, i64* %arrayidx.5.i99, align 8, !tbaa !4
  %and.3.i.i179 = and i64 %add.i.i169, 72057594037927935
  %shr8.3.i.i180 = lshr i64 %add.3.i150, 56
  %add9.3.i.i181 = add nuw nsw i64 %and.3.i.i179, %shr8.3.i.i180
  store i64 %add9.3.i.i181, i64* %arrayidx.4.i95, align 16, !tbaa !4
  %and.4.i.i182 = and i64 %add.3.i150, 72057594037927935
  %92 = extractelement <2 x i64> %73, i64 1
  %shr8.4.i.i183 = lshr i64 %92, 56
  %add9.4.i.i184 = add nuw nsw i64 %and.4.i.i182, %shr8.4.i.i183
  store i64 %add9.4.i.i184, i64* %arrayidx.3.i91, align 8, !tbaa !4
  %93 = and <2 x i64> %73, <i64 72057594037927935, i64 72057594037927935>
  %94 = insertelement <2 x i64> poison, i64 %add.i138, i64 0
  %95 = shufflevector <2 x i64> %94, <2 x i64> %73, <2 x i32> <i32 0, i32 2>
  %96 = lshr <2 x i64> %95, <i64 56, i64 56>
  %97 = add nuw nsw <2 x i64> %93, %96
  %98 = bitcast i64* %arrayidx.1.i83 to <2 x i64>*
  store <2 x i64> %97, <2 x i64>* %98, align 8, !tbaa !4
  %and15.i.i191 = and i64 %add.i138, 72057594037927935
  %add16.i.i192 = add nuw nsw i64 %shr.i.i168, %and15.i.i191
  store i64 %add16.i.i192, i64* %arrayidx.i79, align 16, !tbaa !4
  call void @gf_mul(%struct.gf_s* noundef nonnull %arraydecay32, %struct.gf_s* noundef nonnull %arraydecay3, %struct.gf_s* noundef nonnull %arraydecay1) #15
  call void @gf_mul(%struct.gf_s* noundef %arraydecay2, %struct.gf_s* noundef nonnull %arraydecay1, %struct.gf_s* noundef nonnull %arraydecay) #15
  call void @gf_mul(%struct.gf_s* noundef nonnull %arraydecay1, %struct.gf_s* noundef nonnull %arraydecay3, %struct.gf_s* noundef nonnull %arraydecay22) #15
  %tobool.not = icmp eq i32 %before_double, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @gf_mul(%struct.gf_s* noundef nonnull %arraydecay21, %struct.gf_s* noundef nonnull %arraydecay, %struct.gf_s* noundef nonnull %arraydecay22) #15
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %2) #14
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %1) #14
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %0) #14
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @niels_to_pt(%struct.curve448_point_s* noundef %e, %struct.niels_s* noundef %n) unnamed_addr #0 {
entry:
  %arraydecay = getelementptr inbounds %struct.curve448_point_s, %struct.curve448_point_s* %e, i64 0, i32 1, i64 0
  %arraydecay1 = getelementptr inbounds %struct.niels_s, %struct.niels_s* %n, i64 0, i32 1, i64 0
  %arraydecay2 = getelementptr inbounds %struct.niels_s, %struct.niels_s* %n, i64 0, i32 0, i64 0
  tail call void @gf_add(%struct.gf_s* noundef nonnull %arraydecay, %struct.gf_s* noundef nonnull %arraydecay1, %struct.gf_s* noundef %arraydecay2) #15
  %arraydecay3 = getelementptr inbounds %struct.curve448_point_s, %struct.curve448_point_s* %e, i64 0, i32 0, i64 0
  tail call void @gf_sub(%struct.gf_s* noundef %arraydecay3, %struct.gf_s* noundef nonnull %arraydecay1, %struct.gf_s* noundef %arraydecay2) #15
  %arraydecay8 = getelementptr inbounds %struct.curve448_point_s, %struct.curve448_point_s* %e, i64 0, i32 3, i64 0
  tail call void @gf_mul(%struct.gf_s* noundef nonnull %arraydecay8, %struct.gf_s* noundef nonnull %arraydecay, %struct.gf_s* noundef %arraydecay3) #15
  %arraydecay13 = getelementptr inbounds %struct.curve448_point_s, %struct.curve448_point_s* %e, i64 0, i32 2, i64 0
  %0 = bitcast %struct.gf_s* %arraydecay13 to i8*
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(64) %0, i8* noundef nonnull align 16 dereferenceable(64) bitcast ([1 x %struct.gf_s]* @ONE to i8*), i64 64, i1 false) #14, !tbaa.struct !11
  ret void
}

declare void @OPENSSL_cleanse(i8* noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define void @ossl_curve448_point_mul_by_ratio_and_encode_like_eddsa(i8* noundef %enc, %struct.curve448_point_s* nocapture noundef readonly %p) local_unnamed_addr #0 {
entry:
  %x = alloca [1 x %struct.gf_s], align 16
  %y = alloca [1 x %struct.gf_s], align 16
  %z = alloca [1 x %struct.gf_s], align 16
  %t = alloca [1 x %struct.gf_s], align 16
  %q = alloca [1 x %struct.curve448_point_s], align 16
  %u = alloca [1 x %struct.gf_s], align 16
  %0 = bitcast [1 x %struct.gf_s]* %x to i8*
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %0) #14
  %1 = bitcast [1 x %struct.gf_s]* %y to i8*
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %1) #14
  %2 = bitcast [1 x %struct.gf_s]* %z to i8*
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %2) #14
  %3 = bitcast [1 x %struct.gf_s]* %t to i8*
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %3) #14
  %4 = bitcast [1 x %struct.curve448_point_s]* %q to i8*
  call void @llvm.lifetime.start.p0i8(i64 256, i8* nonnull %4) #14
  %arraydecay = getelementptr inbounds [1 x %struct.curve448_point_s], [1 x %struct.curve448_point_s]* %q, i64 0, i64 0
  call fastcc void @curve448_point_copy(%struct.curve448_point_s* noundef nonnull %arraydecay, %struct.curve448_point_s* noundef %p) #13
  %5 = bitcast [1 x %struct.gf_s]* %u to i8*
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %5) #14
  %arraydecay1 = getelementptr inbounds [1 x %struct.gf_s], [1 x %struct.gf_s]* %x, i64 0, i64 0
  %arraydecay4 = getelementptr inbounds [1 x %struct.curve448_point_s], [1 x %struct.curve448_point_s]* %q, i64 0, i64 0, i32 0, i64 0
  call void @gf_sqr(%struct.gf_s* noundef nonnull %arraydecay1, %struct.gf_s* noundef nonnull %arraydecay4) #15
  %arraydecay5 = getelementptr inbounds [1 x %struct.gf_s], [1 x %struct.gf_s]* %t, i64 0, i64 0
  %arraydecay8 = getelementptr inbounds [1 x %struct.curve448_point_s], [1 x %struct.curve448_point_s]* %q, i64 0, i64 0, i32 1, i64 0
  call void @gf_sqr(%struct.gf_s* noundef nonnull %arraydecay5, %struct.gf_s* noundef nonnull %arraydecay8) #15
  %arraydecay9 = getelementptr inbounds [1 x %struct.gf_s], [1 x %struct.gf_s]* %u, i64 0, i64 0
  call void @gf_add(%struct.gf_s* noundef nonnull %arraydecay9, %struct.gf_s* noundef nonnull %arraydecay1, %struct.gf_s* noundef nonnull %arraydecay5) #15
  %arraydecay12 = getelementptr inbounds [1 x %struct.gf_s], [1 x %struct.gf_s]* %z, i64 0, i64 0
  call void @gf_add(%struct.gf_s* noundef nonnull %arraydecay12, %struct.gf_s* noundef nonnull %arraydecay8, %struct.gf_s* noundef nonnull %arraydecay4) #15
  %arraydecay19 = getelementptr inbounds [1 x %struct.gf_s], [1 x %struct.gf_s]* %y, i64 0, i64 0
  call void @gf_sqr(%struct.gf_s* noundef nonnull %arraydecay19, %struct.gf_s* noundef nonnull %arraydecay12) #15
  call void @gf_sub(%struct.gf_s* noundef nonnull %arraydecay19, %struct.gf_s* noundef nonnull %arraydecay19, %struct.gf_s* noundef nonnull %arraydecay9) #15
  call void @gf_sub(%struct.gf_s* noundef nonnull %arraydecay12, %struct.gf_s* noundef nonnull %arraydecay5, %struct.gf_s* noundef nonnull %arraydecay1) #15
  %arraydecay30 = getelementptr inbounds [1 x %struct.curve448_point_s], [1 x %struct.curve448_point_s]* %q, i64 0, i64 0, i32 2, i64 0
  call void @gf_sqr(%struct.gf_s* noundef nonnull %arraydecay1, %struct.gf_s* noundef nonnull %arraydecay30) #15
  call void @gf_add(%struct.gf_s* noundef nonnull %arraydecay5, %struct.gf_s* noundef nonnull %arraydecay1, %struct.gf_s* noundef nonnull %arraydecay1) #15
  call void @gf_sub(%struct.gf_s* noundef nonnull %arraydecay5, %struct.gf_s* noundef nonnull %arraydecay5, %struct.gf_s* noundef nonnull %arraydecay12) #15
  call void @gf_mul(%struct.gf_s* noundef nonnull %arraydecay1, %struct.gf_s* noundef nonnull %arraydecay5, %struct.gf_s* noundef nonnull %arraydecay19) #15
  call void @gf_mul(%struct.gf_s* noundef nonnull %arraydecay19, %struct.gf_s* noundef nonnull %arraydecay12, %struct.gf_s* noundef nonnull %arraydecay9) #15
  call void @gf_mul(%struct.gf_s* noundef nonnull %arraydecay12, %struct.gf_s* noundef nonnull %arraydecay9, %struct.gf_s* noundef nonnull %arraydecay5) #15
  call void @OPENSSL_cleanse(i8* noundef nonnull %5, i64 noundef 64) #15
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %5) #14
  call fastcc void @gf_invert(%struct.gf_s* noundef nonnull %arraydecay12, %struct.gf_s* noundef nonnull %arraydecay12) #13
  call void @gf_mul(%struct.gf_s* noundef nonnull %arraydecay5, %struct.gf_s* noundef nonnull %arraydecay1, %struct.gf_s* noundef nonnull %arraydecay12) #15
  call void @gf_mul(%struct.gf_s* noundef nonnull %arraydecay1, %struct.gf_s* noundef nonnull %arraydecay19, %struct.gf_s* noundef nonnull %arraydecay12) #15
  %arrayidx = getelementptr inbounds i8, i8* %enc, i64 56
  store i8 0, i8* %arrayidx, align 1, !tbaa !12
  call void @gf_serialize(i8* noundef %enc, %struct.gf_s* noundef nonnull %arraydecay1, i32 noundef 1) #15
  %call = call i64 @gf_lobit(%struct.gf_s* noundef nonnull %arraydecay5) #15
  %6 = load i8, i8* %arrayidx, align 1, !tbaa !12
  %7 = trunc i64 %call to i8
  %8 = and i8 %7, -128
  %conv58 = or i8 %8, %6
  store i8 %conv58, i8* %arrayidx, align 1, !tbaa !12
  call void @OPENSSL_cleanse(i8* noundef nonnull %0, i64 noundef 64) #15
  call void @OPENSSL_cleanse(i8* noundef nonnull %1, i64 noundef 64) #15
  call void @OPENSSL_cleanse(i8* noundef nonnull %2, i64 noundef 64) #15
  call void @OPENSSL_cleanse(i8* noundef nonnull %3, i64 noundef 64) #15
  call void @ossl_curve448_point_destroy(%struct.curve448_point_s* noundef nonnull %arraydecay) #13
  call void @llvm.lifetime.end.p0i8(i64 256, i8* nonnull %4) #14
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %3) #14
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %2) #14
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %1) #14
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %0) #14
  ret void
}

; Function Attrs: mustprogress nofree noinline nosync nounwind uwtable willreturn
define internal fastcc void @curve448_point_copy(%struct.curve448_point_s* nocapture noundef writeonly %a, %struct.curve448_point_s* nocapture noundef readonly %b) unnamed_addr #3 {
entry:
  %0 = bitcast %struct.curve448_point_s* %a to i8*
  %1 = bitcast %struct.curve448_point_s* %b to i8*
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(256) %0, i8* noundef nonnull align 16 dereferenceable(256) %1, i64 256, i1 false), !tbaa.struct !13
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @gf_invert(%struct.gf_s* nocapture noundef writeonly %y, %struct.gf_s* noundef %x) unnamed_addr #0 {
entry:
  %t1 = alloca [1 x %struct.gf_s], align 16
  %t2 = alloca [1 x %struct.gf_s], align 16
  %0 = bitcast [1 x %struct.gf_s]* %t1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %0) #14
  %1 = bitcast [1 x %struct.gf_s]* %t2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %1) #14
  %arraydecay = getelementptr inbounds [1 x %struct.gf_s], [1 x %struct.gf_s]* %t1, i64 0, i64 0
  call void @gf_sqr(%struct.gf_s* noundef nonnull %arraydecay, %struct.gf_s* noundef %x) #15
  %arraydecay1 = getelementptr inbounds [1 x %struct.gf_s], [1 x %struct.gf_s]* %t2, i64 0, i64 0
  %call = call i64 @gf_isr(%struct.gf_s* noundef nonnull %arraydecay1, %struct.gf_s* noundef nonnull %arraydecay) #15
  call void @gf_sqr(%struct.gf_s* noundef nonnull %arraydecay, %struct.gf_s* noundef nonnull %arraydecay1) #15
  call void @gf_mul(%struct.gf_s* noundef nonnull %arraydecay1, %struct.gf_s* noundef nonnull %arraydecay, %struct.gf_s* noundef %x) #15
  %2 = bitcast %struct.gf_s* %y to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(64) %2, i8* noundef nonnull align 16 dereferenceable(64) %1, i64 64, i1 false) #14, !tbaa.struct !11
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %1) #14
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %0) #14
  ret void
}

declare void @gf_serialize(i8* noundef, %struct.gf_s* noundef, i32 noundef) local_unnamed_addr #2

declare i64 @gf_lobit(%struct.gf_s* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define void @ossl_curve448_point_destroy(%struct.curve448_point_s* noundef %point) local_unnamed_addr #0 {
entry:
  %0 = bitcast %struct.curve448_point_s* %point to i8*
  tail call void @OPENSSL_cleanse(i8* noundef %0, i64 noundef 256) #15
  ret void
}

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_curve448_point_decode_like_eddsa_and_mul_by_ratio(%struct.curve448_point_s* noundef %p, i8* noundef %enc) local_unnamed_addr #0 {
entry:
  %enc2 = alloca [57 x i8], align 16
  %a = alloca [1 x %struct.gf_s], align 16
  %b = alloca [1 x %struct.gf_s], align 16
  %c = alloca [1 x %struct.gf_s], align 16
  %d = alloca [1 x %struct.gf_s], align 16
  %0 = getelementptr inbounds [57 x i8], [57 x i8]* %enc2, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 57, i8* nonnull %0) #14
  %call = call i8* @memcpy(i8* noundef nonnull %0, i8* noundef %enc, i64 noundef 57) #15
  %arrayidx = getelementptr inbounds [57 x i8], [57 x i8]* %enc2, i64 0, i64 56
  %1 = load i8, i8* %arrayidx, align 8, !tbaa !12
  %2 = and i8 %1, -128
  %3 = zext i8 %2 to i64
  %call2 = call fastcc i64 @constant_time_is_zero_64(i64 noundef %3) #13
  %4 = and i8 %1, 127
  store i8 %4, i8* %arrayidx, align 8, !tbaa !12
  %arraydecay7 = getelementptr inbounds %struct.curve448_point_s, %struct.curve448_point_s* %p, i64 0, i32 1, i64 0
  %call9 = call i64 @gf_deserialize(%struct.gf_s* noundef nonnull %arraydecay7, i8* noundef nonnull %0, i32 noundef 1, i8 noundef zeroext 0) #15
  %5 = load i8, i8* %arrayidx, align 8, !tbaa !12
  %conv11 = zext i8 %5 to i64
  %call12 = call fastcc i64 @constant_time_is_zero_64(i64 noundef %conv11) #13
  %and13 = and i64 %call12, %call9
  %arraydecay14 = getelementptr inbounds %struct.curve448_point_s, %struct.curve448_point_s* %p, i64 0, i32 0, i64 0
  call void @gf_sqr(%struct.gf_s* noundef %arraydecay14, %struct.gf_s* noundef nonnull %arraydecay7) #15
  %arraydecay17 = getelementptr inbounds %struct.curve448_point_s, %struct.curve448_point_s* %p, i64 0, i32 2, i64 0
  call void @gf_sub(%struct.gf_s* noundef nonnull %arraydecay17, %struct.gf_s* noundef getelementptr inbounds ([1 x %struct.gf_s], [1 x %struct.gf_s]* @ONE, i64 0, i64 0), %struct.gf_s* noundef %arraydecay14) #15
  %arraydecay20 = getelementptr inbounds %struct.curve448_point_s, %struct.curve448_point_s* %p, i64 0, i32 3, i64 0
  call fastcc void @gf_mulw(%struct.gf_s* noundef nonnull %arraydecay20, %struct.gf_s* noundef %arraydecay14, i32 noundef -39081) #13
  call void @gf_sub(%struct.gf_s* noundef nonnull %arraydecay20, %struct.gf_s* noundef getelementptr inbounds ([1 x %struct.gf_s], [1 x %struct.gf_s]* @ONE, i64 0, i64 0), %struct.gf_s* noundef nonnull %arraydecay20) #15
  call void @gf_mul(%struct.gf_s* noundef %arraydecay14, %struct.gf_s* noundef nonnull %arraydecay17, %struct.gf_s* noundef nonnull %arraydecay20) #15
  %call37 = call i64 @gf_isr(%struct.gf_s* noundef nonnull %arraydecay20, %struct.gf_s* noundef %arraydecay14) #15
  %and38 = and i64 %and13, %call37
  call void @gf_mul(%struct.gf_s* noundef %arraydecay14, %struct.gf_s* noundef nonnull %arraydecay20, %struct.gf_s* noundef nonnull %arraydecay17) #15
  %call49 = call i64 @gf_lobit(%struct.gf_s* noundef %arraydecay14) #15
  %6 = xor i64 %call2, %call49
  %xor = xor i64 %6, -1
  call fastcc void @gf_cond_neg(%struct.gf_s* noundef %arraydecay14, i64 noundef %xor) #13
  %7 = bitcast %struct.gf_s* %arraydecay17 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(64) %7, i8* noundef nonnull align 16 dereferenceable(64) bitcast ([1 x %struct.gf_s]* @ONE to i8*), i64 64, i1 false) #14, !tbaa.struct !11
  %8 = bitcast [1 x %struct.gf_s]* %a to i8*
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %8) #14
  %9 = bitcast [1 x %struct.gf_s]* %b to i8*
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %9) #14
  %10 = bitcast [1 x %struct.gf_s]* %c to i8*
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %10) #14
  %11 = bitcast [1 x %struct.gf_s]* %d to i8*
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %11) #14
  %arraydecay52 = getelementptr inbounds [1 x %struct.gf_s], [1 x %struct.gf_s]* %c, i64 0, i64 0
  call void @gf_sqr(%struct.gf_s* noundef nonnull %arraydecay52, %struct.gf_s* noundef %arraydecay14) #15
  %arraydecay55 = getelementptr inbounds [1 x %struct.gf_s], [1 x %struct.gf_s]* %a, i64 0, i64 0
  call void @gf_sqr(%struct.gf_s* noundef nonnull %arraydecay55, %struct.gf_s* noundef nonnull %arraydecay7) #15
  %arraydecay58 = getelementptr inbounds [1 x %struct.gf_s], [1 x %struct.gf_s]* %d, i64 0, i64 0
  call void @gf_add(%struct.gf_s* noundef nonnull %arraydecay58, %struct.gf_s* noundef nonnull %arraydecay52, %struct.gf_s* noundef nonnull %arraydecay55) #15
  call void @gf_add(%struct.gf_s* noundef nonnull %arraydecay20, %struct.gf_s* noundef nonnull %arraydecay7, %struct.gf_s* noundef %arraydecay14) #15
  %arraydecay67 = getelementptr inbounds [1 x %struct.gf_s], [1 x %struct.gf_s]* %b, i64 0, i64 0
  call void @gf_sqr(%struct.gf_s* noundef nonnull %arraydecay67, %struct.gf_s* noundef nonnull %arraydecay20) #15
  call void @gf_sub(%struct.gf_s* noundef nonnull %arraydecay67, %struct.gf_s* noundef nonnull %arraydecay67, %struct.gf_s* noundef nonnull %arraydecay58) #15
  call void @gf_sub(%struct.gf_s* noundef nonnull %arraydecay20, %struct.gf_s* noundef nonnull %arraydecay55, %struct.gf_s* noundef nonnull %arraydecay52) #15
  call void @gf_sqr(%struct.gf_s* noundef %arraydecay14, %struct.gf_s* noundef nonnull %arraydecay17) #15
  call void @gf_add(%struct.gf_s* noundef nonnull %arraydecay17, %struct.gf_s* noundef %arraydecay14, %struct.gf_s* noundef %arraydecay14) #15
  call void @gf_sub(%struct.gf_s* noundef nonnull %arraydecay55, %struct.gf_s* noundef nonnull %arraydecay17, %struct.gf_s* noundef nonnull %arraydecay58) #15
  call void @gf_mul(%struct.gf_s* noundef %arraydecay14, %struct.gf_s* noundef nonnull %arraydecay55, %struct.gf_s* noundef nonnull %arraydecay67) #15
  call void @gf_mul(%struct.gf_s* noundef nonnull %arraydecay17, %struct.gf_s* noundef nonnull %arraydecay20, %struct.gf_s* noundef nonnull %arraydecay55) #15
  call void @gf_mul(%struct.gf_s* noundef nonnull %arraydecay7, %struct.gf_s* noundef nonnull %arraydecay20, %struct.gf_s* noundef nonnull %arraydecay58) #15
  call void @gf_mul(%struct.gf_s* noundef nonnull %arraydecay20, %struct.gf_s* noundef nonnull %arraydecay67, %struct.gf_s* noundef nonnull %arraydecay58) #15
  call void @OPENSSL_cleanse(i8* noundef nonnull %8, i64 noundef 64) #15
  call void @OPENSSL_cleanse(i8* noundef nonnull %9, i64 noundef 64) #15
  call void @OPENSSL_cleanse(i8* noundef nonnull %10, i64 noundef 64) #15
  call void @OPENSSL_cleanse(i8* noundef nonnull %11, i64 noundef 64) #15
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %11) #14
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %10) #14
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %9) #14
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %8) #14
  call void @OPENSSL_cleanse(i8* noundef nonnull %0, i64 noundef 57) #15
  %call115 = call fastcc i32 @c448_succeed_if(i64 noundef %and38) #13
  call void @llvm.lifetime.end.p0i8(i64 57, i8* nonnull %0) #14
  ret i32 %call115
}

; Function Attrs: nounwind
declare i8* @memcpy(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc i64 @constant_time_is_zero_64(i64 noundef %a) unnamed_addr #5 {
entry:
  %neg = xor i64 %a, -1
  %sub = add i64 %a, -1
  %and = and i64 %sub, %neg
  %call = tail call fastcc i64 @constant_time_msb_64(i64 noundef %and) #13
  ret i64 %call
}

declare i64 @gf_deserialize(%struct.gf_s* noundef, i8* noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #2

declare i64 @gf_isr(%struct.gf_s* noundef, %struct.gf_s* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @gf_cond_neg(%struct.gf_s* noundef %x, i64 noundef %neg) unnamed_addr #0 {
entry:
  %y = alloca [1 x %struct.gf_s], align 16
  %0 = bitcast [1 x %struct.gf_s]* %y to i8*
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %0) #14
  %arraydecay = getelementptr inbounds [1 x %struct.gf_s], [1 x %struct.gf_s]* %y, i64 0, i64 0
  call void @gf_sub(%struct.gf_s* noundef nonnull %arraydecay, %struct.gf_s* noundef getelementptr inbounds ([1 x %struct.gf_s], [1 x %struct.gf_s]* @ZERO, i64 0, i64 0), %struct.gf_s* noundef %x) #15
  call fastcc void @gf_cond_sel(%struct.gf_s* noundef %x, %struct.gf_s* noundef %x, %struct.gf_s* noundef nonnull %arraydecay, i64 noundef %neg) #13
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %0) #14
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc i32 @c448_succeed_if(i64 noundef %x) unnamed_addr #5 {
entry:
  %conv = trunc i64 %x to i32
  ret i32 %conv
}

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_x448_int(i8* noundef %out, i8* noundef %base, i8* nocapture noundef readonly %scalar) local_unnamed_addr #0 {
entry:
  %x1 = alloca [1 x %struct.gf_s], align 16
  %x2 = alloca [1 x %struct.gf_s], align 16
  %z2 = alloca [1 x %struct.gf_s], align 16
  %x3 = alloca [1 x %struct.gf_s], align 16
  %z3 = alloca [1 x %struct.gf_s], align 16
  %t1 = alloca [1 x %struct.gf_s], align 16
  %t2 = alloca [1 x %struct.gf_s], align 16
  %0 = bitcast [1 x %struct.gf_s]* %x1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %0) #14
  %1 = bitcast [1 x %struct.gf_s]* %x2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %1) #14
  %2 = bitcast [1 x %struct.gf_s]* %z2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %2) #14
  %3 = bitcast [1 x %struct.gf_s]* %x3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %3) #14
  %4 = bitcast [1 x %struct.gf_s]* %z3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %4) #14
  %5 = bitcast [1 x %struct.gf_s]* %t1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %5) #14
  %6 = bitcast [1 x %struct.gf_s]* %t2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %6) #14
  %arraydecay = getelementptr inbounds [1 x %struct.gf_s], [1 x %struct.gf_s]* %x1, i64 0, i64 0
  %call = call i64 @gf_deserialize(%struct.gf_s* noundef nonnull %arraydecay, i8* noundef %base, i32 noundef 1, i8 noundef zeroext 0) #15
  %arraydecay1 = getelementptr inbounds [1 x %struct.gf_s], [1 x %struct.gf_s]* %x2, i64 0, i64 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(64) %1, i8* noundef nonnull align 16 dereferenceable(64) bitcast ([1 x %struct.gf_s]* @ONE to i8*), i64 64, i1 false) #14, !tbaa.struct !11
  %arraydecay2 = getelementptr inbounds [1 x %struct.gf_s], [1 x %struct.gf_s]* %z2, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(64) %2, i8 0, i64 64, i1 false)
  %arraydecay3 = getelementptr inbounds [1 x %struct.gf_s], [1 x %struct.gf_s]* %x3, i64 0, i64 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(64) %3, i8* noundef nonnull align 16 dereferenceable(64) %0, i64 64, i1 false) #14, !tbaa.struct !11
  %arraydecay5 = getelementptr inbounds [1 x %struct.gf_s], [1 x %struct.gf_s]* %z3, i64 0, i64 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(64) %4, i8* noundef nonnull align 16 dereferenceable(64) bitcast ([1 x %struct.gf_s]* @ONE to i8*), i64 64, i1 false) #14, !tbaa.struct !11
  %arraydecay20 = getelementptr inbounds [1 x %struct.gf_s], [1 x %struct.gf_s]* %t1, i64 0, i64 0
  %arrayidx.i = getelementptr inbounds [1 x %struct.gf_s], [1 x %struct.gf_s]* %x2, i64 0, i64 0, i32 0, i64 0
  %arrayidx4.i = getelementptr inbounds [1 x %struct.gf_s], [1 x %struct.gf_s]* %z2, i64 0, i64 0, i32 0, i64 0
  %arrayidx7.i = getelementptr inbounds [1 x %struct.gf_s], [1 x %struct.gf_s]* %t1, i64 0, i64 0, i32 0, i64 0
  %arrayidx.1.i = getelementptr inbounds [1 x %struct.gf_s], [1 x %struct.gf_s]* %x2, i64 0, i64 0, i32 0, i64 1
  %arrayidx4.1.i = getelementptr inbounds [1 x %struct.gf_s], [1 x %struct.gf_s]* %z2, i64 0, i64 0, i32 0, i64 1
  %arrayidx7.1.i = getelementptr inbounds [1 x %struct.gf_s], [1 x %struct.gf_s]* %t1, i64 0, i64 0, i32 0, i64 1
  %arrayidx.3.i = getelementptr inbounds [1 x %struct.gf_s], [1 x %struct.gf_s]* %x2, i64 0, i64 0, i32 0, i64 3
  %arrayidx4.3.i = getelementptr inbounds [1 x %struct.gf_s], [1 x %struct.gf_s]* %z2, i64 0, i64 0, i32 0, i64 3
  %arrayidx7.3.i = getelementptr inbounds [1 x %struct.gf_s], [1 x %struct.gf_s]* %t1, i64 0, i64 0, i32 0, i64 3
  %arrayidx.4.i = getelementptr inbounds [1 x %struct.gf_s], [1 x %struct.gf_s]* %x2, i64 0, i64 0, i32 0, i64 4
  %arrayidx4.4.i = getelementptr inbounds [1 x %struct.gf_s], [1 x %struct.gf_s]* %z2, i64 0, i64 0, i32 0, i64 4
  %arrayidx7.4.i = getelementptr inbounds [1 x %struct.gf_s], [1 x %struct.gf_s]* %t1, i64 0, i64 0, i32 0, i64 4
  %arrayidx.5.i = getelementptr inbounds [1 x %struct.gf_s], [1 x %struct.gf_s]* %x2, i64 0, i64 0, i32 0, i64 5
  %arrayidx4.5.i = getelementptr inbounds [1 x %struct.gf_s], [1 x %struct.gf_s]* %z2, i64 0, i64 0, i32 0, i64 5
  %arrayidx7.5.i = getelementptr inbounds [1 x %struct.gf_s], [1 x %struct.gf_s]* %t1, i64 0, i64 0, i32 0, i64 5
  %arrayidx.6.i = getelementptr inbounds [1 x %struct.gf_s], [1 x %struct.gf_s]* %x2, i64 0, i64 0, i32 0, i64 6
  %arrayidx4.6.i = getelementptr inbounds [1 x %struct.gf_s], [1 x %struct.gf_s]* %z2, i64 0, i64 0, i32 0, i64 6
  %arrayidx7.6.i = getelementptr inbounds [1 x %struct.gf_s], [1 x %struct.gf_s]* %t1, i64 0, i64 0, i32 0, i64 6
  %arraydecay23 = getelementptr inbounds [1 x %struct.gf_s], [1 x %struct.gf_s]* %t2, i64 0, i64 0
  %arrayidx.i107 = getelementptr inbounds [1 x %struct.gf_s], [1 x %struct.gf_s]* %z3, i64 0, i64 0, i32 0, i64 0
  %arrayidx4.i108 = getelementptr inbounds [1 x %struct.gf_s], [1 x %struct.gf_s]* %x3, i64 0, i64 0, i32 0, i64 0
  %arrayidx.1.i111 = getelementptr inbounds [1 x %struct.gf_s], [1 x %struct.gf_s]* %z3, i64 0, i64 0, i32 0, i64 1
  %arrayidx4.1.i112 = getelementptr inbounds [1 x %struct.gf_s], [1 x %struct.gf_s]* %x3, i64 0, i64 0, i32 0, i64 1
  %arrayidx.3.i119 = getelementptr inbounds [1 x %struct.gf_s], [1 x %struct.gf_s]* %z3, i64 0, i64 0, i32 0, i64 3
  %arrayidx4.3.i120 = getelementptr inbounds [1 x %struct.gf_s], [1 x %struct.gf_s]* %x3, i64 0, i64 0, i32 0, i64 3
  %arrayidx.4.i123 = getelementptr inbounds [1 x %struct.gf_s], [1 x %struct.gf_s]* %z3, i64 0, i64 0, i32 0, i64 4
  %arrayidx4.4.i124 = getelementptr inbounds [1 x %struct.gf_s], [1 x %struct.gf_s]* %x3, i64 0, i64 0, i32 0, i64 4
  %arrayidx.5.i127 = getelementptr inbounds [1 x %struct.gf_s], [1 x %struct.gf_s]* %z3, i64 0, i64 0, i32 0, i64 5
  %arrayidx4.5.i128 = getelementptr inbounds [1 x %struct.gf_s], [1 x %struct.gf_s]* %x3, i64 0, i64 0, i32 0, i64 5
  %arrayidx.6.i131 = getelementptr inbounds [1 x %struct.gf_s], [1 x %struct.gf_s]* %z3, i64 0, i64 0, i32 0, i64 6
  %arrayidx4.6.i132 = getelementptr inbounds [1 x %struct.gf_s], [1 x %struct.gf_s]* %x3, i64 0, i64 0, i32 0, i64 6
  %7 = bitcast i64* %arrayidx.1.i to <2 x i64>*
  %8 = bitcast i64* %arrayidx4.1.i to <2 x i64>*
  %9 = bitcast i64* %arrayidx.6.i to <2 x i64>*
  %10 = bitcast i64* %arrayidx4.6.i to <2 x i64>*
  %11 = bitcast i64* %arrayidx7.6.i to <2 x i64>*
  %12 = bitcast i64* %arrayidx7.1.i to <2 x i64>*
  %13 = bitcast i64* %arrayidx.1.i111 to <2 x i64>*
  %14 = bitcast i64* %arrayidx4.1.i112 to <2 x i64>*
  %15 = bitcast i64* %arrayidx.6.i131 to <2 x i64>*
  %16 = bitcast i64* %arrayidx4.6.i132 to <2 x i64>*
  %17 = bitcast i64* %arrayidx4.6.i to <2 x i64>*
  %18 = bitcast i64* %arrayidx4.1.i to <2 x i64>*
  %19 = bitcast i64* %arrayidx.1.i to <2 x i64>*
  %20 = bitcast i64* %arrayidx4.1.i112 to <2 x i64>*
  %21 = bitcast i64* %arrayidx.6.i to <2 x i64>*
  %22 = bitcast i64* %arrayidx4.6.i132 to <2 x i64>*
  %23 = bitcast i64* %arrayidx4.6.i to <2 x i64>*
  %24 = bitcast i64* %arrayidx4.1.i to <2 x i64>*
  %25 = bitcast i64* %arrayidx7.1.i to <2 x i64>*
  %26 = bitcast i64* %arrayidx4.1.i to <2 x i64>*
  %27 = bitcast i64* %arrayidx7.6.i to <2 x i64>*
  %28 = bitcast i64* %arrayidx4.6.i to <2 x i64>*
  %29 = bitcast i64* %arrayidx7.6.i to <2 x i64>*
  %30 = bitcast i64* %arrayidx7.1.i to <2 x i64>*
  br label %for.body

for.body:                                         ; preds = %entry, %for.body
  %t.0280 = phi i32 [ 447, %entry ], [ %dec, %for.body ]
  %swap.0279 = phi i64 [ 0, %entry ], [ %sub, %for.body ]
  %div278 = lshr i32 %t.0280, 3
  %31 = zext i32 %div278 to i64
  %arrayidx = getelementptr inbounds i8, i8* %scalar, i64 %31
  %32 = load i8, i8* %arrayidx, align 1, !tbaa !12
  %33 = icmp ult i32 %t.0280, 8
  %34 = and i8 %32, -4
  %cmp9 = icmp eq i32 %t.0280, 447
  %spec.select = select i1 %cmp9, i8 -1, i8 %32
  %sb.0 = select i1 %33, i8 %34, i8 %spec.select
  %conv13 = zext i8 %sb.0 to i32
  %rem106 = and i32 %t.0280, 7
  %shr = lshr i32 %conv13, %rem106
  %and14 = and i32 %shr, 1
  %35 = zext i32 %and14 to i64
  %sub = sub nsw i64 0, %35
  %xor = xor i64 %swap.0279, %sub
  call fastcc void @gf_cond_swap(%struct.gf_s* noundef nonnull %arraydecay1, %struct.gf_s* noundef nonnull %arraydecay3, i64 noundef %xor) #13
  call fastcc void @gf_cond_swap(%struct.gf_s* noundef nonnull %arraydecay2, %struct.gf_s* noundef nonnull %arraydecay5, i64 noundef %xor) #13
  %36 = load i64, i64* %arrayidx.i, align 16, !tbaa !4
  %37 = load i64, i64* %arrayidx4.i, align 16, !tbaa !4
  %add.i = add i64 %37, %36
  %38 = load <2 x i64>, <2 x i64>* %7, align 8, !tbaa !4
  %39 = load <2 x i64>, <2 x i64>* %8, align 8, !tbaa !4
  %40 = add <2 x i64> %39, %38
  %41 = load i64, i64* %arrayidx.3.i, align 8, !tbaa !4
  %42 = load i64, i64* %arrayidx4.3.i, align 8, !tbaa !4
  %add.3.i = add i64 %42, %41
  %43 = load i64, i64* %arrayidx.4.i, align 16, !tbaa !4
  %44 = load i64, i64* %arrayidx4.4.i, align 16, !tbaa !4
  %add.4.i = add i64 %44, %43
  %45 = load i64, i64* %arrayidx.5.i, align 8, !tbaa !4
  %46 = load i64, i64* %arrayidx4.5.i, align 8, !tbaa !4
  %add.5.i = add i64 %46, %45
  %47 = load <2 x i64>, <2 x i64>* %9, align 16, !tbaa !4
  %48 = load <2 x i64>, <2 x i64>* %10, align 16, !tbaa !4
  %49 = add <2 x i64> %48, %47
  %50 = extractelement <2 x i64> %49, i64 1
  %shr.i.i = lshr i64 %50, 56
  %add.i.i = add i64 %shr.i.i, %add.4.i
  %51 = and <2 x i64> %49, <i64 72057594037927935, i64 72057594037927935>
  %52 = insertelement <2 x i64> poison, i64 %add.5.i, i64 0
  %53 = shufflevector <2 x i64> %52, <2 x i64> %49, <2 x i32> <i32 0, i32 2>
  %54 = lshr <2 x i64> %53, <i64 56, i64 56>
  %55 = add nuw nsw <2 x i64> %51, %54
  store <2 x i64> %55, <2 x i64>* %11, align 16, !tbaa !4
  %and.2.i.i = and i64 %add.5.i, 72057594037927935
  %shr8.2.i.i = lshr i64 %add.i.i, 56
  %add9.2.i.i = add nuw nsw i64 %shr8.2.i.i, %and.2.i.i
  store i64 %add9.2.i.i, i64* %arrayidx7.5.i, align 8, !tbaa !4
  %and.3.i.i = and i64 %add.i.i, 72057594037927935
  %shr8.3.i.i = lshr i64 %add.3.i, 56
  %add9.3.i.i = add nuw nsw i64 %and.3.i.i, %shr8.3.i.i
  store i64 %add9.3.i.i, i64* %arrayidx7.4.i, align 16, !tbaa !4
  %and.4.i.i = and i64 %add.3.i, 72057594037927935
  %56 = extractelement <2 x i64> %40, i64 1
  %shr8.4.i.i = lshr i64 %56, 56
  %add9.4.i.i = add nuw nsw i64 %and.4.i.i, %shr8.4.i.i
  store i64 %add9.4.i.i, i64* %arrayidx7.3.i, align 8, !tbaa !4
  %57 = and <2 x i64> %40, <i64 72057594037927935, i64 72057594037927935>
  %58 = insertelement <2 x i64> poison, i64 %add.i, i64 0
  %59 = shufflevector <2 x i64> %58, <2 x i64> %40, <2 x i32> <i32 0, i32 2>
  %60 = lshr <2 x i64> %59, <i64 56, i64 56>
  %61 = add nuw nsw <2 x i64> %57, %60
  store <2 x i64> %61, <2 x i64>* %12, align 8, !tbaa !4
  %and15.i.i = and i64 %add.i, 72057594037927935
  %add16.i.i = add nuw nsw i64 %shr.i.i, %and15.i.i
  store i64 %add16.i.i, i64* %arrayidx7.i, align 16, !tbaa !4
  call fastcc void @gf_sub_nr(%struct.gf_s* noundef nonnull %arraydecay23, %struct.gf_s* noundef nonnull %arraydecay1, %struct.gf_s* noundef nonnull %arraydecay2) #13
  call fastcc void @gf_sub_nr(%struct.gf_s* noundef nonnull %arraydecay2, %struct.gf_s* noundef nonnull %arraydecay3, %struct.gf_s* noundef nonnull %arraydecay5) #13
  call void @gf_mul(%struct.gf_s* noundef nonnull %arraydecay1, %struct.gf_s* noundef nonnull %arraydecay20, %struct.gf_s* noundef nonnull %arraydecay2) #15
  %62 = load i64, i64* %arrayidx.i107, align 16, !tbaa !4
  %63 = load i64, i64* %arrayidx4.i108, align 16, !tbaa !4
  %add.i109 = add i64 %63, %62
  %64 = load <2 x i64>, <2 x i64>* %13, align 8, !tbaa !4
  %65 = load <2 x i64>, <2 x i64>* %14, align 8, !tbaa !4
  %66 = add <2 x i64> %65, %64
  %67 = load i64, i64* %arrayidx.3.i119, align 8, !tbaa !4
  %68 = load i64, i64* %arrayidx4.3.i120, align 8, !tbaa !4
  %add.3.i121 = add i64 %68, %67
  %69 = load i64, i64* %arrayidx.4.i123, align 16, !tbaa !4
  %70 = load i64, i64* %arrayidx4.4.i124, align 16, !tbaa !4
  %add.4.i125 = add i64 %70, %69
  %71 = load i64, i64* %arrayidx.5.i127, align 8, !tbaa !4
  %72 = load i64, i64* %arrayidx4.5.i128, align 8, !tbaa !4
  %add.5.i129 = add i64 %72, %71
  %73 = load <2 x i64>, <2 x i64>* %15, align 16, !tbaa !4
  %74 = load <2 x i64>, <2 x i64>* %16, align 16, !tbaa !4
  %75 = add <2 x i64> %74, %73
  %76 = extractelement <2 x i64> %75, i64 1
  %shr.i.i139 = lshr i64 %76, 56
  %add.i.i140 = add i64 %shr.i.i139, %add.4.i125
  %77 = and <2 x i64> %75, <i64 72057594037927935, i64 72057594037927935>
  %78 = insertelement <2 x i64> poison, i64 %add.5.i129, i64 0
  %79 = shufflevector <2 x i64> %78, <2 x i64> %75, <2 x i32> <i32 0, i32 2>
  %80 = lshr <2 x i64> %79, <i64 56, i64 56>
  %81 = add nuw nsw <2 x i64> %77, %80
  store <2 x i64> %81, <2 x i64>* %17, align 16, !tbaa !4
  %and.2.i.i147 = and i64 %add.5.i129, 72057594037927935
  %shr8.2.i.i148 = lshr i64 %add.i.i140, 56
  %add9.2.i.i149 = add nuw nsw i64 %shr8.2.i.i148, %and.2.i.i147
  store i64 %add9.2.i.i149, i64* %arrayidx4.5.i, align 8, !tbaa !4
  %and.3.i.i150 = and i64 %add.i.i140, 72057594037927935
  %shr8.3.i.i151 = lshr i64 %add.3.i121, 56
  %add9.3.i.i152 = add nuw nsw i64 %and.3.i.i150, %shr8.3.i.i151
  store i64 %add9.3.i.i152, i64* %arrayidx4.4.i, align 16, !tbaa !4
  %and.4.i.i153 = and i64 %add.3.i121, 72057594037927935
  %82 = extractelement <2 x i64> %66, i64 1
  %shr8.4.i.i154 = lshr i64 %82, 56
  %add9.4.i.i155 = add nuw nsw i64 %and.4.i.i153, %shr8.4.i.i154
  store i64 %add9.4.i.i155, i64* %arrayidx4.3.i, align 8, !tbaa !4
  %83 = and <2 x i64> %66, <i64 72057594037927935, i64 72057594037927935>
  %84 = insertelement <2 x i64> poison, i64 %add.i109, i64 0
  %85 = shufflevector <2 x i64> %84, <2 x i64> %66, <2 x i32> <i32 0, i32 2>
  %86 = lshr <2 x i64> %85, <i64 56, i64 56>
  %87 = add nuw nsw <2 x i64> %83, %86
  store <2 x i64> %87, <2 x i64>* %18, align 8, !tbaa !4
  %and15.i.i162 = and i64 %add.i109, 72057594037927935
  %add16.i.i163 = add nuw nsw i64 %shr.i.i139, %and15.i.i162
  store i64 %add16.i.i163, i64* %arrayidx4.i, align 16, !tbaa !4
  call void @gf_mul(%struct.gf_s* noundef nonnull %arraydecay3, %struct.gf_s* noundef nonnull %arraydecay23, %struct.gf_s* noundef nonnull %arraydecay2) #15
  call fastcc void @gf_sub_nr(%struct.gf_s* noundef nonnull %arraydecay5, %struct.gf_s* noundef nonnull %arraydecay1, %struct.gf_s* noundef nonnull %arraydecay3) #13
  call void @gf_sqr(%struct.gf_s* noundef nonnull %arraydecay2, %struct.gf_s* noundef nonnull %arraydecay5) #15
  call void @gf_mul(%struct.gf_s* noundef nonnull %arraydecay5, %struct.gf_s* noundef nonnull %arraydecay, %struct.gf_s* noundef nonnull %arraydecay2) #15
  %88 = load i64, i64* %arrayidx.i, align 16, !tbaa !4
  %89 = load i64, i64* %arrayidx4.i108, align 16, !tbaa !4
  %add.i166 = add i64 %89, %88
  %90 = load <2 x i64>, <2 x i64>* %19, align 8, !tbaa !4
  %91 = load <2 x i64>, <2 x i64>* %20, align 8, !tbaa !4
  %92 = add <2 x i64> %91, %90
  %93 = load i64, i64* %arrayidx.3.i, align 8, !tbaa !4
  %94 = load i64, i64* %arrayidx4.3.i120, align 8, !tbaa !4
  %add.3.i178 = add i64 %94, %93
  %95 = load i64, i64* %arrayidx.4.i, align 16, !tbaa !4
  %96 = load i64, i64* %arrayidx4.4.i124, align 16, !tbaa !4
  %add.4.i182 = add i64 %96, %95
  %97 = load i64, i64* %arrayidx.5.i, align 8, !tbaa !4
  %98 = load i64, i64* %arrayidx4.5.i128, align 8, !tbaa !4
  %add.5.i186 = add i64 %98, %97
  %99 = load <2 x i64>, <2 x i64>* %21, align 16, !tbaa !4
  %100 = load <2 x i64>, <2 x i64>* %22, align 16, !tbaa !4
  %101 = add <2 x i64> %100, %99
  %102 = extractelement <2 x i64> %101, i64 1
  %shr.i.i196 = lshr i64 %102, 56
  %add.i.i197 = add i64 %shr.i.i196, %add.4.i182
  %103 = and <2 x i64> %101, <i64 72057594037927935, i64 72057594037927935>
  %104 = insertelement <2 x i64> poison, i64 %add.5.i186, i64 0
  %105 = shufflevector <2 x i64> %104, <2 x i64> %101, <2 x i32> <i32 0, i32 2>
  %106 = lshr <2 x i64> %105, <i64 56, i64 56>
  %107 = add nuw nsw <2 x i64> %103, %106
  store <2 x i64> %107, <2 x i64>* %23, align 16, !tbaa !4
  %and.2.i.i204 = and i64 %add.5.i186, 72057594037927935
  %shr8.2.i.i205 = lshr i64 %add.i.i197, 56
  %add9.2.i.i206 = add nuw nsw i64 %shr8.2.i.i205, %and.2.i.i204
  store i64 %add9.2.i.i206, i64* %arrayidx4.5.i, align 8, !tbaa !4
  %and.3.i.i207 = and i64 %add.i.i197, 72057594037927935
  %shr8.3.i.i208 = lshr i64 %add.3.i178, 56
  %add9.3.i.i209 = add nuw nsw i64 %and.3.i.i207, %shr8.3.i.i208
  store i64 %add9.3.i.i209, i64* %arrayidx4.4.i, align 16, !tbaa !4
  %and.4.i.i210 = and i64 %add.3.i178, 72057594037927935
  %108 = extractelement <2 x i64> %92, i64 1
  %shr8.4.i.i211 = lshr i64 %108, 56
  %add9.4.i.i212 = add nuw nsw i64 %and.4.i.i210, %shr8.4.i.i211
  store i64 %add9.4.i.i212, i64* %arrayidx4.3.i, align 8, !tbaa !4
  %109 = and <2 x i64> %92, <i64 72057594037927935, i64 72057594037927935>
  %110 = insertelement <2 x i64> poison, i64 %add.i166, i64 0
  %111 = shufflevector <2 x i64> %110, <2 x i64> %92, <2 x i32> <i32 0, i32 2>
  %112 = lshr <2 x i64> %111, <i64 56, i64 56>
  %113 = add nuw nsw <2 x i64> %109, %112
  store <2 x i64> %113, <2 x i64>* %24, align 8, !tbaa !4
  %and15.i.i219 = and i64 %add.i166, 72057594037927935
  %add16.i.i220 = add nuw nsw i64 %shr.i.i196, %and15.i.i219
  store i64 %add16.i.i220, i64* %arrayidx4.i, align 16, !tbaa !4
  call void @gf_sqr(%struct.gf_s* noundef nonnull %arraydecay3, %struct.gf_s* noundef nonnull %arraydecay2) #15
  call void @gf_sqr(%struct.gf_s* noundef nonnull %arraydecay2, %struct.gf_s* noundef nonnull %arraydecay20) #15
  call void @gf_sqr(%struct.gf_s* noundef nonnull %arraydecay20, %struct.gf_s* noundef nonnull %arraydecay23) #15
  call void @gf_mul(%struct.gf_s* noundef nonnull %arraydecay1, %struct.gf_s* noundef nonnull %arraydecay2, %struct.gf_s* noundef nonnull %arraydecay20) #15
  call fastcc void @gf_sub_nr(%struct.gf_s* noundef nonnull %arraydecay23, %struct.gf_s* noundef nonnull %arraydecay2, %struct.gf_s* noundef nonnull %arraydecay20) #13
  call fastcc void @gf_mulw(%struct.gf_s* noundef nonnull %arraydecay20, %struct.gf_s* noundef nonnull %arraydecay23, i32 noundef 39081) #13
  %114 = load i64, i64* %arrayidx7.i, align 16, !tbaa !4
  %115 = load i64, i64* %arrayidx4.i, align 16, !tbaa !4
  %add.i223 = add i64 %115, %114
  %116 = load <2 x i64>, <2 x i64>* %25, align 8, !tbaa !4
  %117 = load <2 x i64>, <2 x i64>* %26, align 8, !tbaa !4
  %118 = add <2 x i64> %117, %116
  %119 = load i64, i64* %arrayidx7.3.i, align 8, !tbaa !4
  %120 = load i64, i64* %arrayidx4.3.i, align 8, !tbaa !4
  %add.3.i235 = add i64 %120, %119
  %121 = load i64, i64* %arrayidx7.4.i, align 16, !tbaa !4
  %122 = load i64, i64* %arrayidx4.4.i, align 16, !tbaa !4
  %add.4.i239 = add i64 %122, %121
  %123 = load i64, i64* %arrayidx7.5.i, align 8, !tbaa !4
  %124 = load i64, i64* %arrayidx4.5.i, align 8, !tbaa !4
  %add.5.i243 = add i64 %124, %123
  %125 = load <2 x i64>, <2 x i64>* %27, align 16, !tbaa !4
  %126 = load <2 x i64>, <2 x i64>* %28, align 16, !tbaa !4
  %127 = add <2 x i64> %126, %125
  %128 = extractelement <2 x i64> %127, i64 1
  %shr.i.i253 = lshr i64 %128, 56
  %add.i.i254 = add i64 %shr.i.i253, %add.4.i239
  %129 = and <2 x i64> %127, <i64 72057594037927935, i64 72057594037927935>
  %130 = insertelement <2 x i64> poison, i64 %add.5.i243, i64 0
  %131 = shufflevector <2 x i64> %130, <2 x i64> %127, <2 x i32> <i32 0, i32 2>
  %132 = lshr <2 x i64> %131, <i64 56, i64 56>
  %133 = add nuw nsw <2 x i64> %129, %132
  store <2 x i64> %133, <2 x i64>* %29, align 16, !tbaa !4
  %and.2.i.i261 = and i64 %add.5.i243, 72057594037927935
  %shr8.2.i.i262 = lshr i64 %add.i.i254, 56
  %add9.2.i.i263 = add nuw nsw i64 %shr8.2.i.i262, %and.2.i.i261
  store i64 %add9.2.i.i263, i64* %arrayidx7.5.i, align 8, !tbaa !4
  %and.3.i.i264 = and i64 %add.i.i254, 72057594037927935
  %shr8.3.i.i265 = lshr i64 %add.3.i235, 56
  %add9.3.i.i266 = add nuw nsw i64 %and.3.i.i264, %shr8.3.i.i265
  store i64 %add9.3.i.i266, i64* %arrayidx7.4.i, align 16, !tbaa !4
  %and.4.i.i267 = and i64 %add.3.i235, 72057594037927935
  %134 = extractelement <2 x i64> %118, i64 1
  %shr8.4.i.i268 = lshr i64 %134, 56
  %add9.4.i.i269 = add nuw nsw i64 %and.4.i.i267, %shr8.4.i.i268
  store i64 %add9.4.i.i269, i64* %arrayidx7.3.i, align 8, !tbaa !4
  %135 = and <2 x i64> %118, <i64 72057594037927935, i64 72057594037927935>
  %136 = insertelement <2 x i64> poison, i64 %add.i223, i64 0
  %137 = shufflevector <2 x i64> %136, <2 x i64> %118, <2 x i32> <i32 0, i32 2>
  %138 = lshr <2 x i64> %137, <i64 56, i64 56>
  %139 = add nuw nsw <2 x i64> %135, %138
  store <2 x i64> %139, <2 x i64>* %30, align 8, !tbaa !4
  %and15.i.i276 = and i64 %add.i223, 72057594037927935
  %add16.i.i277 = add nuw nsw i64 %shr.i.i253, %and15.i.i276
  store i64 %add16.i.i277, i64* %arrayidx7.i, align 16, !tbaa !4
  call void @gf_mul(%struct.gf_s* noundef nonnull %arraydecay2, %struct.gf_s* noundef nonnull %arraydecay23, %struct.gf_s* noundef nonnull %arraydecay20) #15
  %dec = add nsw i32 %t.0280, -1
  %cmp.not = icmp eq i32 %t.0280, 0
  br i1 %cmp.not, label %for.end, label %for.body, !llvm.loop !14

for.end:                                          ; preds = %for.body
  call fastcc void @gf_cond_swap(%struct.gf_s* noundef nonnull %arraydecay1, %struct.gf_s* noundef nonnull %arraydecay3, i64 noundef %sub) #13
  call fastcc void @gf_cond_swap(%struct.gf_s* noundef nonnull %arraydecay2, %struct.gf_s* noundef nonnull %arraydecay5, i64 noundef %sub) #13
  call fastcc void @gf_invert(%struct.gf_s* noundef nonnull %arraydecay2, %struct.gf_s* noundef nonnull %arraydecay2) #13
  call void @gf_mul(%struct.gf_s* noundef nonnull %arraydecay, %struct.gf_s* noundef nonnull %arraydecay1, %struct.gf_s* noundef nonnull %arraydecay2) #15
  call void @gf_serialize(i8* noundef %out, %struct.gf_s* noundef nonnull %arraydecay, i32 noundef 1) #15
  %call80 = call i64 @gf_eq(%struct.gf_s* noundef nonnull %arraydecay, %struct.gf_s* noundef getelementptr inbounds ([1 x %struct.gf_s], [1 x %struct.gf_s]* @ZERO, i64 0, i64 0)) #15
  %neg = xor i64 %call80, -1
  call void @OPENSSL_cleanse(i8* noundef nonnull %0, i64 noundef 64) #15
  call void @OPENSSL_cleanse(i8* noundef nonnull %1, i64 noundef 64) #15
  call void @OPENSSL_cleanse(i8* noundef nonnull %2, i64 noundef 64) #15
  call void @OPENSSL_cleanse(i8* noundef nonnull %3, i64 noundef 64) #15
  call void @OPENSSL_cleanse(i8* noundef nonnull %4, i64 noundef 64) #15
  call void @OPENSSL_cleanse(i8* noundef nonnull %5, i64 noundef 64) #15
  call void @OPENSSL_cleanse(i8* noundef nonnull %6, i64 noundef 64) #15
  %call89 = call fastcc i32 @c448_succeed_if(i64 noundef %neg) #13
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %6) #14
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %5) #14
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %4) #14
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %3) #14
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %2) #14
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %1) #14
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %0) #14
  ret i32 %call89
}

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define internal fastcc void @gf_cond_swap(%struct.gf_s* nocapture noundef %x, %struct.gf_s* noalias nocapture noundef %y, i64 noundef %swap) unnamed_addr #6 {
entry:
  %arrayidx1 = getelementptr inbounds %struct.gf_s, %struct.gf_s* %x, i64 0, i32 0, i64 0
  %arrayidx3 = getelementptr inbounds %struct.gf_s, %struct.gf_s* %y, i64 0, i32 0, i64 0
  tail call fastcc void @constant_time_cond_swap_64(i64 noundef %swap, i64* noundef %arrayidx1, i64* noundef %arrayidx3) #13
  %arrayidx1.1 = getelementptr inbounds %struct.gf_s, %struct.gf_s* %x, i64 0, i32 0, i64 1
  %arrayidx3.1 = getelementptr inbounds %struct.gf_s, %struct.gf_s* %y, i64 0, i32 0, i64 1
  tail call fastcc void @constant_time_cond_swap_64(i64 noundef %swap, i64* noundef nonnull %arrayidx1.1, i64* noundef nonnull %arrayidx3.1) #13
  %arrayidx1.2 = getelementptr inbounds %struct.gf_s, %struct.gf_s* %x, i64 0, i32 0, i64 2
  %arrayidx3.2 = getelementptr inbounds %struct.gf_s, %struct.gf_s* %y, i64 0, i32 0, i64 2
  tail call fastcc void @constant_time_cond_swap_64(i64 noundef %swap, i64* noundef nonnull %arrayidx1.2, i64* noundef nonnull %arrayidx3.2) #13
  %arrayidx1.3 = getelementptr inbounds %struct.gf_s, %struct.gf_s* %x, i64 0, i32 0, i64 3
  %arrayidx3.3 = getelementptr inbounds %struct.gf_s, %struct.gf_s* %y, i64 0, i32 0, i64 3
  tail call fastcc void @constant_time_cond_swap_64(i64 noundef %swap, i64* noundef nonnull %arrayidx1.3, i64* noundef nonnull %arrayidx3.3) #13
  %arrayidx1.4 = getelementptr inbounds %struct.gf_s, %struct.gf_s* %x, i64 0, i32 0, i64 4
  %arrayidx3.4 = getelementptr inbounds %struct.gf_s, %struct.gf_s* %y, i64 0, i32 0, i64 4
  tail call fastcc void @constant_time_cond_swap_64(i64 noundef %swap, i64* noundef nonnull %arrayidx1.4, i64* noundef nonnull %arrayidx3.4) #13
  %arrayidx1.5 = getelementptr inbounds %struct.gf_s, %struct.gf_s* %x, i64 0, i32 0, i64 5
  %arrayidx3.5 = getelementptr inbounds %struct.gf_s, %struct.gf_s* %y, i64 0, i32 0, i64 5
  tail call fastcc void @constant_time_cond_swap_64(i64 noundef %swap, i64* noundef nonnull %arrayidx1.5, i64* noundef nonnull %arrayidx3.5) #13
  %arrayidx1.6 = getelementptr inbounds %struct.gf_s, %struct.gf_s* %x, i64 0, i32 0, i64 6
  %arrayidx3.6 = getelementptr inbounds %struct.gf_s, %struct.gf_s* %y, i64 0, i32 0, i64 6
  tail call fastcc void @constant_time_cond_swap_64(i64 noundef %swap, i64* noundef nonnull %arrayidx1.6, i64* noundef nonnull %arrayidx3.6) #13
  %arrayidx1.7 = getelementptr inbounds %struct.gf_s, %struct.gf_s* %x, i64 0, i32 0, i64 7
  %arrayidx3.7 = getelementptr inbounds %struct.gf_s, %struct.gf_s* %y, i64 0, i32 0, i64 7
  tail call fastcc void @constant_time_cond_swap_64(i64 noundef %swap, i64* noundef nonnull %arrayidx1.7, i64* noundef nonnull %arrayidx3.7) #13
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define internal fastcc void @gf_sub_nr(%struct.gf_s* nocapture noundef writeonly %c, %struct.gf_s* nocapture noundef readonly %a, %struct.gf_s* nocapture noundef readonly %b) unnamed_addr #7 {
entry:
  %arrayidx.i = getelementptr inbounds %struct.gf_s, %struct.gf_s* %a, i64 0, i32 0, i64 0
  %0 = load i64, i64* %arrayidx.i, align 8, !tbaa !4
  %arrayidx4.i = getelementptr inbounds %struct.gf_s, %struct.gf_s* %b, i64 0, i32 0, i64 0
  %1 = load i64, i64* %arrayidx4.i, align 8, !tbaa !4
  %sub5.i = add i64 %0, 144115188075855870
  %add.i = sub i64 %sub5.i, %1
  %arrayidx11.i = getelementptr inbounds %struct.gf_s, %struct.gf_s* %c, i64 0, i32 0, i64 0
  store i64 %add.i, i64* %arrayidx11.i, align 8, !tbaa !4
  %arrayidx.1.i = getelementptr inbounds %struct.gf_s, %struct.gf_s* %a, i64 0, i32 0, i64 1
  %2 = load i64, i64* %arrayidx.1.i, align 8, !tbaa !4
  %arrayidx4.1.i = getelementptr inbounds %struct.gf_s, %struct.gf_s* %b, i64 0, i32 0, i64 1
  %3 = load i64, i64* %arrayidx4.1.i, align 8, !tbaa !4
  %sub5.1.i = add i64 %2, 144115188075855870
  %add.1.i = sub i64 %sub5.1.i, %3
  %arrayidx11.1.i = getelementptr inbounds %struct.gf_s, %struct.gf_s* %c, i64 0, i32 0, i64 1
  store i64 %add.1.i, i64* %arrayidx11.1.i, align 8, !tbaa !4
  %arrayidx.2.i = getelementptr inbounds %struct.gf_s, %struct.gf_s* %a, i64 0, i32 0, i64 2
  %4 = load i64, i64* %arrayidx.2.i, align 8, !tbaa !4
  %arrayidx4.2.i = getelementptr inbounds %struct.gf_s, %struct.gf_s* %b, i64 0, i32 0, i64 2
  %5 = load i64, i64* %arrayidx4.2.i, align 8, !tbaa !4
  %sub5.2.i = add i64 %4, 144115188075855870
  %add.2.i = sub i64 %sub5.2.i, %5
  %arrayidx11.2.i = getelementptr inbounds %struct.gf_s, %struct.gf_s* %c, i64 0, i32 0, i64 2
  store i64 %add.2.i, i64* %arrayidx11.2.i, align 8, !tbaa !4
  %arrayidx.3.i = getelementptr inbounds %struct.gf_s, %struct.gf_s* %a, i64 0, i32 0, i64 3
  %6 = load i64, i64* %arrayidx.3.i, align 8, !tbaa !4
  %arrayidx4.3.i = getelementptr inbounds %struct.gf_s, %struct.gf_s* %b, i64 0, i32 0, i64 3
  %7 = load i64, i64* %arrayidx4.3.i, align 8, !tbaa !4
  %sub5.3.i = add i64 %6, 144115188075855870
  %add.3.i = sub i64 %sub5.3.i, %7
  %arrayidx11.3.i = getelementptr inbounds %struct.gf_s, %struct.gf_s* %c, i64 0, i32 0, i64 3
  store i64 %add.3.i, i64* %arrayidx11.3.i, align 8, !tbaa !4
  %arrayidx.4.i = getelementptr inbounds %struct.gf_s, %struct.gf_s* %a, i64 0, i32 0, i64 4
  %8 = load i64, i64* %arrayidx.4.i, align 8, !tbaa !4
  %arrayidx4.4.i = getelementptr inbounds %struct.gf_s, %struct.gf_s* %b, i64 0, i32 0, i64 4
  %9 = load i64, i64* %arrayidx4.4.i, align 8, !tbaa !4
  %sub5.4.i = add i64 %8, 144115188075855868
  %add.4.i = sub i64 %sub5.4.i, %9
  %arrayidx11.4.i = getelementptr inbounds %struct.gf_s, %struct.gf_s* %c, i64 0, i32 0, i64 4
  store i64 %add.4.i, i64* %arrayidx11.4.i, align 8, !tbaa !4
  %arrayidx.5.i = getelementptr inbounds %struct.gf_s, %struct.gf_s* %a, i64 0, i32 0, i64 5
  %10 = load i64, i64* %arrayidx.5.i, align 8, !tbaa !4
  %arrayidx4.5.i = getelementptr inbounds %struct.gf_s, %struct.gf_s* %b, i64 0, i32 0, i64 5
  %11 = load i64, i64* %arrayidx4.5.i, align 8, !tbaa !4
  %sub5.5.i = add i64 %10, 144115188075855870
  %add.5.i = sub i64 %sub5.5.i, %11
  %arrayidx11.5.i = getelementptr inbounds %struct.gf_s, %struct.gf_s* %c, i64 0, i32 0, i64 5
  store i64 %add.5.i, i64* %arrayidx11.5.i, align 8, !tbaa !4
  %arrayidx.6.i = getelementptr inbounds %struct.gf_s, %struct.gf_s* %a, i64 0, i32 0, i64 6
  %12 = load i64, i64* %arrayidx.6.i, align 8, !tbaa !4
  %arrayidx4.6.i = getelementptr inbounds %struct.gf_s, %struct.gf_s* %b, i64 0, i32 0, i64 6
  %13 = load i64, i64* %arrayidx4.6.i, align 8, !tbaa !4
  %sub5.6.i = add i64 %12, 144115188075855870
  %add.6.i = sub i64 %sub5.6.i, %13
  %arrayidx11.6.i = getelementptr inbounds %struct.gf_s, %struct.gf_s* %c, i64 0, i32 0, i64 6
  store i64 %add.6.i, i64* %arrayidx11.6.i, align 8, !tbaa !4
  %arrayidx.7.i = getelementptr inbounds %struct.gf_s, %struct.gf_s* %a, i64 0, i32 0, i64 7
  %14 = load i64, i64* %arrayidx.7.i, align 8, !tbaa !4
  %arrayidx4.7.i = getelementptr inbounds %struct.gf_s, %struct.gf_s* %b, i64 0, i32 0, i64 7
  %15 = load i64, i64* %arrayidx4.7.i, align 8, !tbaa !4
  %sub5.7.i = add i64 %14, 144115188075855870
  %add.7.i = sub i64 %sub5.7.i, %15
  %arrayidx11.7.i = getelementptr inbounds %struct.gf_s, %struct.gf_s* %c, i64 0, i32 0, i64 7
  %shr.i.i = lshr i64 %add.7.i, 56
  %add.i.i = add i64 %shr.i.i, %add.4.i
  %and.i.i = and i64 %add.7.i, 72057594037927935
  %shr8.i.i = lshr i64 %add.6.i, 56
  %add9.i.i = add nuw nsw i64 %and.i.i, %shr8.i.i
  store i64 %add9.i.i, i64* %arrayidx11.7.i, align 8, !tbaa !4
  %and.1.i.i = and i64 %add.6.i, 72057594037927935
  %shr8.1.i.i = lshr i64 %add.5.i, 56
  %add9.1.i.i = add nuw nsw i64 %and.1.i.i, %shr8.1.i.i
  store i64 %add9.1.i.i, i64* %arrayidx11.6.i, align 8, !tbaa !4
  %and.2.i.i = and i64 %add.5.i, 72057594037927935
  %shr8.2.i.i = lshr i64 %add.i.i, 56
  %add9.2.i.i = add nuw nsw i64 %shr8.2.i.i, %and.2.i.i
  store i64 %add9.2.i.i, i64* %arrayidx11.5.i, align 8, !tbaa !4
  %and.3.i.i = and i64 %add.i.i, 72057594037927935
  %shr8.3.i.i = lshr i64 %add.3.i, 56
  %add9.3.i.i = add nuw nsw i64 %and.3.i.i, %shr8.3.i.i
  store i64 %add9.3.i.i, i64* %arrayidx11.4.i, align 8, !tbaa !4
  %and.4.i.i = and i64 %add.3.i, 72057594037927935
  %shr8.4.i.i = lshr i64 %add.2.i, 56
  %add9.4.i.i = add nuw nsw i64 %and.4.i.i, %shr8.4.i.i
  store i64 %add9.4.i.i, i64* %arrayidx11.3.i, align 8, !tbaa !4
  %and.5.i.i = and i64 %add.2.i, 72057594037927935
  %shr8.5.i.i = lshr i64 %add.1.i, 56
  %add9.5.i.i = add nuw nsw i64 %and.5.i.i, %shr8.5.i.i
  store i64 %add9.5.i.i, i64* %arrayidx11.2.i, align 8, !tbaa !4
  %and.6.i.i = and i64 %add.1.i, 72057594037927935
  %shr8.6.i.i = lshr i64 %add.i, 56
  %add9.6.i.i = add nuw nsw i64 %and.6.i.i, %shr8.6.i.i
  store i64 %add9.6.i.i, i64* %arrayidx11.1.i, align 8, !tbaa !4
  %and15.i.i = and i64 %add.i, 72057594037927935
  %add16.i.i = add nuw nsw i64 %shr.i.i, %and15.i.i
  store i64 %add16.i.i, i64* %arrayidx11.i, align 16, !tbaa !4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define void @ossl_curve448_point_mul_by_ratio_and_encode_like_x448(i8* noundef %out, %struct.curve448_point_s* nocapture noundef readonly %p) local_unnamed_addr #0 {
entry:
  %q = alloca [1 x %struct.curve448_point_s], align 16
  %0 = bitcast [1 x %struct.curve448_point_s]* %q to i8*
  call void @llvm.lifetime.start.p0i8(i64 256, i8* nonnull %0) #14
  %arraydecay = getelementptr inbounds [1 x %struct.curve448_point_s], [1 x %struct.curve448_point_s]* %q, i64 0, i64 0
  call fastcc void @curve448_point_copy(%struct.curve448_point_s* noundef nonnull %arraydecay, %struct.curve448_point_s* noundef %p) #13
  %arraydecay2 = getelementptr inbounds [1 x %struct.curve448_point_s], [1 x %struct.curve448_point_s]* %q, i64 0, i64 0, i32 3, i64 0
  %arraydecay4 = getelementptr inbounds [1 x %struct.curve448_point_s], [1 x %struct.curve448_point_s]* %q, i64 0, i64 0, i32 0, i64 0
  call fastcc void @gf_invert(%struct.gf_s* noundef nonnull %arraydecay2, %struct.gf_s* noundef nonnull %arraydecay4) #13
  %arraydecay6 = getelementptr inbounds [1 x %struct.curve448_point_s], [1 x %struct.curve448_point_s]* %q, i64 0, i64 0, i32 2, i64 0
  %arraydecay11 = getelementptr inbounds [1 x %struct.curve448_point_s], [1 x %struct.curve448_point_s]* %q, i64 0, i64 0, i32 1, i64 0
  call void @gf_mul(%struct.gf_s* noundef nonnull %arraydecay6, %struct.gf_s* noundef nonnull %arraydecay2, %struct.gf_s* noundef nonnull %arraydecay11) #15
  call void @gf_sqr(%struct.gf_s* noundef nonnull %arraydecay11, %struct.gf_s* noundef nonnull %arraydecay6) #15
  call void @gf_serialize(i8* noundef %out, %struct.gf_s* noundef nonnull %arraydecay11, i32 noundef 1) #15
  call void @ossl_curve448_point_destroy(%struct.curve448_point_s* noundef nonnull %arraydecay) #13
  call void @llvm.lifetime.end.p0i8(i64 256, i8* nonnull %0) #14
  ret void
}

; Function Attrs: noinline nounwind uwtable
define void @ossl_x448_derive_public_key(i8* noundef %out, i8* noundef %scalar) local_unnamed_addr #0 {
entry:
  %scalar2 = alloca [56 x i8], align 16
  %the_scalar = alloca [1 x %struct.curve448_scalar_s], align 16
  %p = alloca [1 x %struct.curve448_point_s], align 16
  %0 = getelementptr inbounds [56 x i8], [56 x i8]* %scalar2, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %0) #14
  %1 = bitcast [1 x %struct.curve448_scalar_s]* %the_scalar to i8*
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %1) #14
  %2 = bitcast [1 x %struct.curve448_point_s]* %p to i8*
  call void @llvm.lifetime.start.p0i8(i64 256, i8* nonnull %2) #14
  %call = call i8* @memcpy(i8* noundef nonnull %0, i8* noundef %scalar, i64 noundef 56) #15
  %3 = load i8, i8* %0, align 16, !tbaa !12
  %4 = and i8 %3, -4
  store i8 %4, i8* %0, align 16, !tbaa !12
  %arrayidx2 = getelementptr inbounds [56 x i8], [56 x i8]* %scalar2, i64 0, i64 55
  %5 = load i8, i8* %arrayidx2, align 1, !tbaa !12
  %6 = or i8 %5, -128
  store i8 %6, i8* %arrayidx2, align 1, !tbaa !12
  %arraydecay9 = getelementptr inbounds [1 x %struct.curve448_scalar_s], [1 x %struct.curve448_scalar_s]* %the_scalar, i64 0, i64 0
  call void @ossl_curve448_scalar_decode_long(%struct.curve448_scalar_s* noundef nonnull %arraydecay9, i8* noundef nonnull %0, i64 noundef 56) #15
  call void @ossl_curve448_scalar_halve(%struct.curve448_scalar_s* noundef nonnull %arraydecay9, %struct.curve448_scalar_s* noundef nonnull %arraydecay9) #15
  %arraydecay14 = getelementptr inbounds [1 x %struct.curve448_point_s], [1 x %struct.curve448_point_s]* %p, i64 0, i64 0
  %7 = load %struct.curve448_precomputed_s*, %struct.curve448_precomputed_s** @ossl_curve448_precomputed_base, align 8, !tbaa !15
  call void @ossl_curve448_precomputed_scalarmul(%struct.curve448_point_s* noundef nonnull %arraydecay14, %struct.curve448_precomputed_s* noundef %7, %struct.curve448_scalar_s* noundef nonnull %arraydecay9) #13
  call void @ossl_curve448_point_mul_by_ratio_and_encode_like_x448(i8* noundef %out, %struct.curve448_point_s* noundef nonnull %arraydecay14) #13
  call void @ossl_curve448_point_destroy(%struct.curve448_point_s* noundef nonnull %arraydecay14) #13
  call void @llvm.lifetime.end.p0i8(i64 256, i8* nonnull %2) #14
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %1) #14
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %0) #14
  ret void
}

declare void @ossl_curve448_scalar_decode_long(%struct.curve448_scalar_s* noundef, i8* noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define void @ossl_curve448_base_double_scalarmul_non_secret(%struct.curve448_point_s* noundef %combo, %struct.curve448_scalar_s* nocapture noundef readonly %scalar1, %struct.curve448_point_s* noundef %base2, %struct.curve448_scalar_s* nocapture noundef readonly %scalar2) local_unnamed_addr #0 {
entry:
  %control_var = alloca [114 x %struct.smvt_control], align 16
  %control_pre = alloca [77 x %struct.smvt_control], align 16
  %precmp_var = alloca [8 x [1 x %struct.anon]], align 16
  %0 = bitcast [114 x %struct.smvt_control]* %control_var to i8*
  call void @llvm.lifetime.start.p0i8(i64 912, i8* nonnull %0) #14
  %1 = bitcast [77 x %struct.smvt_control]* %control_pre to i8*
  call void @llvm.lifetime.start.p0i8(i64 616, i8* nonnull %1) #14
  %arraydecay = getelementptr inbounds [77 x %struct.smvt_control], [77 x %struct.smvt_control]* %control_pre, i64 0, i64 0
  call fastcc void @recode_wnaf(%struct.smvt_control* noundef nonnull %arraydecay, %struct.curve448_scalar_s* noundef %scalar1, i32 noundef 5) #13
  %arraydecay1 = getelementptr inbounds [114 x %struct.smvt_control], [114 x %struct.smvt_control]* %control_var, i64 0, i64 0
  call fastcc void @recode_wnaf(%struct.smvt_control* noundef nonnull %arraydecay1, %struct.curve448_scalar_s* noundef %scalar2, i32 noundef 3) #13
  %2 = bitcast [8 x [1 x %struct.anon]]* %precmp_var to i8*
  call void @llvm.lifetime.start.p0i8(i64 2048, i8* nonnull %2) #14
  %arraydecay3 = getelementptr inbounds [8 x [1 x %struct.anon]], [8 x [1 x %struct.anon]]* %precmp_var, i64 0, i64 0
  call fastcc void @prepare_wnaf_table([1 x %struct.anon]* noundef nonnull %arraydecay3, %struct.curve448_point_s* noundef %base2) #13
  %power = getelementptr inbounds [114 x %struct.smvt_control], [114 x %struct.smvt_control]* %control_var, i64 0, i64 0, i32 0
  %3 = load i32, i32* %power, align 16, !tbaa !17
  %cmp = icmp slt i32 %3, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call fastcc void @curve448_point_copy(%struct.curve448_point_s* noundef %combo, %struct.curve448_point_s* noundef getelementptr inbounds ([1 x %struct.curve448_point_s], [1 x %struct.curve448_point_s]* @ossl_curve448_point_identity, i64 0, i64 0)) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %power5 = getelementptr inbounds [77 x %struct.smvt_control], [77 x %struct.smvt_control]* %control_pre, i64 0, i64 0, i32 0
  %4 = load i32, i32* %power5, align 16, !tbaa !17
  %cmp6 = icmp sgt i32 %3, %4
  br i1 %cmp6, label %if.then7, label %if.else

if.then7:                                         ; preds = %if.end
  %addend = getelementptr inbounds [114 x %struct.smvt_control], [114 x %struct.smvt_control]* %control_var, i64 0, i64 0, i32 1
  %5 = load i32, i32* %addend, align 4, !tbaa !20
  %shr = ashr i32 %5, 1
  %idxprom = sext i32 %shr to i64
  %arraydecay10 = getelementptr inbounds [8 x [1 x %struct.anon]], [8 x [1 x %struct.anon]]* %precmp_var, i64 0, i64 %idxprom, i64 0
  call fastcc void @pniels_to_pt(%struct.curve448_point_s* noundef %combo, %struct.anon* noundef nonnull %arraydecay10) #13
  br label %if.end41

if.else:                                          ; preds = %if.end
  %cmp13 = icmp eq i32 %3, %4
  br i1 %cmp13, label %if.then15, label %if.else30

if.then15:                                        ; preds = %if.else
  %addend17 = getelementptr inbounds [114 x %struct.smvt_control], [114 x %struct.smvt_control]* %control_var, i64 0, i64 0, i32 1
  %6 = load i32, i32* %addend17, align 4, !tbaa !20
  %shr18 = ashr i32 %6, 1
  %idxprom19 = sext i32 %shr18 to i64
  %arraydecay21 = getelementptr inbounds [8 x [1 x %struct.anon]], [8 x [1 x %struct.anon]]* %precmp_var, i64 0, i64 %idxprom19, i64 0
  call fastcc void @pniels_to_pt(%struct.curve448_point_s* noundef %combo, %struct.anon* noundef nonnull %arraydecay21) #13
  %7 = load [1 x %struct.niels_s]*, [1 x %struct.niels_s]** @ossl_curve448_wnaf_base, align 8, !tbaa !15
  %addend23 = getelementptr inbounds [77 x %struct.smvt_control], [77 x %struct.smvt_control]* %control_pre, i64 0, i64 0, i32 1
  %8 = load i32, i32* %addend23, align 4, !tbaa !20
  %shr24 = ashr i32 %8, 1
  %idxprom25 = sext i32 %shr24 to i64
  %arraydecay27 = getelementptr inbounds [1 x %struct.niels_s], [1 x %struct.niels_s]* %7, i64 %idxprom25, i64 0
  call fastcc void @add_niels_to_pt(%struct.curve448_point_s* noundef %combo, %struct.niels_s* noundef %arraydecay27, i32 noundef %3) #13
  br label %if.end41

if.else30:                                        ; preds = %if.else
  %9 = load [1 x %struct.niels_s]*, [1 x %struct.niels_s]** @ossl_curve448_wnaf_base, align 8, !tbaa !15
  %addend34 = getelementptr inbounds [77 x %struct.smvt_control], [77 x %struct.smvt_control]* %control_pre, i64 0, i64 0, i32 1
  %10 = load i32, i32* %addend34, align 4, !tbaa !20
  %shr35 = ashr i32 %10, 1
  %idxprom36 = sext i32 %shr35 to i64
  %arraydecay38 = getelementptr inbounds [1 x %struct.niels_s], [1 x %struct.niels_s]* %9, i64 %idxprom36, i64 0
  call fastcc void @niels_to_pt(%struct.curve448_point_s* noundef %combo, %struct.niels_s* noundef %arraydecay38) #13
  br label %if.end41

if.end41:                                         ; preds = %if.then15, %if.else30, %if.then7
  %i.0 = phi i32 [ %3, %if.then7 ], [ %3, %if.then15 ], [ %4, %if.else30 ]
  %contv.0 = phi i32 [ 1, %if.then7 ], [ 1, %if.then15 ], [ 0, %if.else30 ]
  %contp.0 = phi i32 [ 0, %if.then7 ], [ 1, %if.then15 ], [ 1, %if.else30 ]
  %cmp42192 = icmp sgt i32 %i.0, 0
  br i1 %cmp42192, label %for.body, label %for.end

for.body:                                         ; preds = %if.end41, %if.end118
  %i.1195.in = phi i32 [ %i.1195, %if.end118 ], [ %i.0, %if.end41 ]
  %contp.1194 = phi i32 [ %contp.2, %if.end118 ], [ %contp.0, %if.end41 ]
  %contv.1193 = phi i32 [ %contv.2, %if.end118 ], [ %contv.0, %if.end41 ]
  %i.1195 = add nsw i32 %i.1195.in, -1
  %idxprom43 = sext i32 %contv.1193 to i64
  %power45 = getelementptr inbounds [114 x %struct.smvt_control], [114 x %struct.smvt_control]* %control_var, i64 0, i64 %idxprom43, i32 0
  %11 = load i32, i32* %power45, align 8, !tbaa !17
  %cmp46 = icmp eq i32 %i.1195, %11
  %idxprom47 = sext i32 %contp.1194 to i64
  %power49 = getelementptr inbounds [77 x %struct.smvt_control], [77 x %struct.smvt_control]* %control_pre, i64 0, i64 %idxprom47, i32 0
  %12 = load i32, i32* %power49, align 8, !tbaa !17
  %cmp50 = icmp eq i32 %i.1195, %12
  %tobool = icmp ne i32 %i.1195, 0
  %13 = select i1 %cmp46, i1 true, i1 %cmp50
  %lnot = xor i1 %13, true
  %14 = select i1 %tobool, i1 %lnot, i1 false
  %land.ext = zext i1 %14 to i32
  call fastcc void @point_double_internal(%struct.curve448_point_s* noundef %combo, %struct.curve448_point_s* noundef %combo, i32 noundef %land.ext) #13
  br i1 %cmp46, label %if.then55, label %if.end91

if.then55:                                        ; preds = %for.body
  %addend58 = getelementptr inbounds [114 x %struct.smvt_control], [114 x %struct.smvt_control]* %control_var, i64 0, i64 %idxprom43, i32 1
  %15 = load i32, i32* %addend58, align 4, !tbaa !20
  %cmp59 = icmp sgt i32 %15, 0
  br i1 %cmp59, label %if.then61, label %if.else75

if.then61:                                        ; preds = %if.then55
  %shr65185 = lshr i32 %15, 1
  %16 = zext i32 %shr65185 to i64
  %arraydecay68 = getelementptr inbounds [8 x [1 x %struct.anon]], [8 x [1 x %struct.anon]]* %precmp_var, i64 0, i64 %16, i64 0
  %lnot72 = xor i1 %cmp50, true
  %17 = select i1 %tobool, i1 %lnot72, i1 false
  %land.ext74 = zext i1 %17 to i32
  call fastcc void @add_pniels_to_pt(%struct.curve448_point_s* noundef %combo, %struct.anon* noundef nonnull %arraydecay68, i32 noundef %land.ext74) #13
  br label %if.end89

if.else75:                                        ; preds = %if.then55
  %sub = sub nsw i32 0, %15
  %shr79189 = lshr i32 %sub, 1
  %idxprom80190 = zext i32 %shr79189 to i64
  %arraydecay82 = getelementptr inbounds [8 x [1 x %struct.anon]], [8 x [1 x %struct.anon]]* %precmp_var, i64 0, i64 %idxprom80190, i64 0
  %lnot86 = xor i1 %cmp50, true
  %18 = select i1 %tobool, i1 %lnot86, i1 false
  %land.ext88 = zext i1 %18 to i32
  call fastcc void @sub_pniels_from_pt(%struct.curve448_point_s* noundef %combo, %struct.anon* noundef nonnull %arraydecay82, i32 noundef %land.ext88) #13
  br label %if.end89

if.end89:                                         ; preds = %if.else75, %if.then61
  %inc90 = add nsw i32 %contv.1193, 1
  br label %if.end91

if.end91:                                         ; preds = %if.end89, %for.body
  %contv.2 = phi i32 [ %inc90, %if.end89 ], [ %contv.1193, %for.body ]
  br i1 %cmp50, label %if.then93, label %if.end118

if.then93:                                        ; preds = %if.end91
  %addend96 = getelementptr inbounds [77 x %struct.smvt_control], [77 x %struct.smvt_control]* %control_pre, i64 0, i64 %idxprom47, i32 1
  %19 = load i32, i32* %addend96, align 4, !tbaa !20
  %cmp97 = icmp sgt i32 %19, 0
  %20 = load [1 x %struct.niels_s]*, [1 x %struct.niels_s]** @ossl_curve448_wnaf_base, align 8, !tbaa !15
  br i1 %cmp97, label %if.then99, label %if.else107

if.then99:                                        ; preds = %if.then93
  %shr103186 = lshr i32 %19, 1
  %21 = zext i32 %shr103186 to i64
  %arraydecay106 = getelementptr inbounds [1 x %struct.niels_s], [1 x %struct.niels_s]* %20, i64 %21, i64 0
  call fastcc void @add_niels_to_pt(%struct.curve448_point_s* noundef %combo, %struct.niels_s* noundef %arraydecay106, i32 noundef %i.1195) #13
  br label %if.end116

if.else107:                                       ; preds = %if.then93
  %sub111 = sub nsw i32 0, %19
  %shr112187 = lshr i32 %sub111, 1
  %idxprom113188 = zext i32 %shr112187 to i64
  %arraydecay115 = getelementptr inbounds [1 x %struct.niels_s], [1 x %struct.niels_s]* %20, i64 %idxprom113188, i64 0
  call fastcc void @sub_niels_from_pt(%struct.curve448_point_s* noundef %combo, %struct.niels_s* noundef %arraydecay115, i32 noundef %i.1195) #13
  br label %if.end116

if.end116:                                        ; preds = %if.else107, %if.then99
  %inc117 = add nsw i32 %contp.1194, 1
  br label %if.end118

if.end118:                                        ; preds = %if.end116, %if.end91
  %contp.2 = phi i32 [ %inc117, %if.end116 ], [ %contp.1194, %if.end91 ]
  %cmp42 = icmp ugt i32 %i.1195.in, 1
  br i1 %cmp42, label %for.body, label %for.end, !llvm.loop !21

for.end:                                          ; preds = %if.end118, %if.end41
  call void @OPENSSL_cleanse(i8* noundef nonnull %0, i64 noundef 912) #15
  call void @OPENSSL_cleanse(i8* noundef nonnull %1, i64 noundef 616) #15
  call void @OPENSSL_cleanse(i8* noundef nonnull %2, i64 noundef 2048) #15
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then
  call void @llvm.lifetime.end.p0i8(i64 2048, i8* nonnull %2) #14
  call void @llvm.lifetime.end.p0i8(i64 616, i8* nonnull %1) #14
  call void @llvm.lifetime.end.p0i8(i64 912, i8* nonnull %0) #14
  ret void
}

; Function Attrs: nofree noinline nosync nounwind uwtable
define internal fastcc void @recode_wnaf(%struct.smvt_control* nocapture noundef %control, %struct.curve448_scalar_s* nocapture noundef readonly %scalar, i32 noundef %table_bits) unnamed_addr #8 {
entry:
  %add = add i32 %table_bits, 1
  %div = udiv i32 446, %add
  %sub = add nuw nsw i32 %div, 2
  %arrayidx = getelementptr inbounds %struct.curve448_scalar_s, %struct.curve448_scalar_s* %scalar, i64 0, i32 0, i64 0
  %0 = load i64, i64* %arrayidx, align 8, !tbaa !4
  %and = and i64 %0, 65535
  %shl = shl nuw i32 1, %add
  %sub3 = add nsw i32 %shl, -1
  %1 = zext i32 %sub to i64
  %power = getelementptr inbounds %struct.smvt_control, %struct.smvt_control* %control, i64 %1, i32 0
  store i32 -1, i32* %power, align 4, !tbaa !17
  %addend = getelementptr inbounds %struct.smvt_control, %struct.smvt_control* %control, i64 %1, i32 1
  store i32 0, i32* %addend, align 4, !tbaa !20
  %dec = add nuw nsw i32 %div, 1
  br label %for.body

for.body:                                         ; preds = %entry, %while.end
  %position.09 = phi i32 [ %dec, %entry ], [ %position.1.lcssa, %while.end ]
  %current.08 = phi i64 [ %and, %entry ], [ %shr43, %while.end ]
  %w.06 = phi i32 [ 1, %entry ], [ %inc, %while.end ]
  %cmp7 = icmp ult i32 %w.06, 28
  br i1 %cmp7, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %div9 = lshr i32 %w.06, 2
  %idxprom10 = zext i32 %div9 to i64
  %arrayidx11 = getelementptr inbounds %struct.curve448_scalar_s, %struct.curve448_scalar_s* %scalar, i64 0, i32 0, i64 %idxprom10
  %2 = load i64, i64* %arrayidx11, align 8, !tbaa !4
  %rem = shl nuw nsw i32 %w.06, 4
  %mul = and i32 %rem, 48
  %sh_prom = zext i32 %mul to i64
  %shr = lshr i64 %2, %sh_prom
  %conv = shl i64 %shr, 16
  %conv13 = and i64 %conv, 4294901760
  %add14 = add nuw nsw i64 %conv13, %current.08
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %current.1 = phi i64 [ %add14, %if.then ], [ %current.08, %for.body ]
  %and151 = and i64 %current.1, 65535
  %tobool.not2 = icmp eq i64 %and151, 0
  br i1 %tobool.not2, label %while.end, label %while.body.lr.ph

while.body.lr.ph:                                 ; preds = %if.end
  %sub33 = shl i32 %w.06, 4
  %mul34 = add nsw i32 %sub33, -16
  %3 = sext i32 %position.09 to i64
  br label %while.body

while.body:                                       ; preds = %while.body.lr.ph, %while.body
  %indvars.iv = phi i64 [ %3, %while.body.lr.ph ], [ %indvars.iv.next, %while.body ]
  %current.23 = phi i64 [ %current.1, %while.body.lr.ph ], [ %sub32, %while.body ]
  %conv16 = trunc i64 %current.23 to i32
  %4 = tail call i32 @llvm.cttz.i32(i32 %conv16, i1 true), !range !22
  %shr18 = lshr i32 %conv16, %4
  %and19 = and i32 %shr18, %sub3
  %and22 = and i32 %shr18, %shl
  %tobool23.not = icmp eq i32 %and22, 0
  %sub27 = select i1 %tobool23.not, i32 0, i32 %shl
  %spec.select = sub nsw i32 %and19, %sub27
  %mul30 = shl i32 %spec.select, %4
  %conv31 = sext i32 %mul30 to i64
  %sub32 = sub i64 %current.23, %conv31
  %add35 = add i32 %mul34, %4
  %power38 = getelementptr inbounds %struct.smvt_control, %struct.smvt_control* %control, i64 %indvars.iv, i32 0
  store i32 %add35, i32* %power38, align 4, !tbaa !17
  %addend41 = getelementptr inbounds %struct.smvt_control, %struct.smvt_control* %control, i64 %indvars.iv, i32 1
  store i32 %spec.select, i32* %addend41, align 4, !tbaa !20
  %indvars.iv.next = add i64 %indvars.iv, -1
  %and15 = and i64 %sub32, 65535
  %tobool.not = icmp eq i64 %and15, 0
  br i1 %tobool.not, label %while.end.loopexit, label %while.body, !llvm.loop !23

while.end.loopexit:                               ; preds = %while.body
  %5 = trunc i64 %indvars.iv.next to i32
  br label %while.end

while.end:                                        ; preds = %while.end.loopexit, %if.end
  %current.2.lcssa = phi i64 [ %current.1, %if.end ], [ %sub32, %while.end.loopexit ]
  %position.1.lcssa = phi i32 [ %position.09, %if.end ], [ %5, %while.end.loopexit ]
  %shr43 = lshr i64 %current.2.lcssa, 16
  %inc = add nuw nsw i32 %w.06, 1
  %exitcond.not = icmp eq i32 %inc, 30
  br i1 %exitcond.not, label %for.end, label %for.body, !llvm.loop !24

for.end:                                          ; preds = %while.end
  %add1 = add nuw nsw i32 %div, 3
  %inc44 = add nsw i32 %position.1.lcssa, 1
  %inc44.neg = xor i32 %position.1.lcssa, -1
  %sub45 = add i32 %add1, %inc44.neg
  %cmp4710.not = icmp eq i32 %sub45, 0
  br i1 %cmp4710.not, label %for.end57, label %for.body49.preheader

for.body49.preheader:                             ; preds = %for.end
  %wide.trip.count = zext i32 %sub45 to i64
  %min.iters.check = icmp ult i32 %sub45, 4
  br i1 %min.iters.check, label %for.body49.preheader24, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %for.body49.preheader
  %6 = add nsw i64 %wide.trip.count, -1
  %7 = trunc i64 %6 to i32
  %8 = sub i32 -2, %position.1.lcssa
  %9 = icmp ult i32 %8, %7
  %10 = icmp ugt i64 %6, 4294967295
  %11 = or i1 %9, %10
  br i1 %11, label %for.body49.preheader24, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %scevgep = getelementptr %struct.smvt_control, %struct.smvt_control* %control, i64 %wide.trip.count
  %12 = add i32 %position.1.lcssa, 1
  %13 = zext i32 %12 to i64
  %scevgep19 = getelementptr %struct.smvt_control, %struct.smvt_control* %control, i64 %13
  %14 = add nuw nsw i64 %wide.trip.count, %13
  %scevgep21 = getelementptr %struct.smvt_control, %struct.smvt_control* %control, i64 %14
  %bound0 = icmp ugt %struct.smvt_control* %scevgep21, %control
  %bound1 = icmp ult %struct.smvt_control* %scevgep19, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %for.body49.preheader24, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count, 4294967292
  %15 = add nsw i64 %n.vec, -4
  %16 = lshr exact i64 %15, 2
  %17 = add nuw nsw i64 %16, 1
  %xtraiter = and i64 %17, 3
  %18 = icmp ult i64 %15, 12
  br i1 %18, label %middle.block.unr-lcssa, label %vector.ph.new

vector.ph.new:                                    ; preds = %vector.ph
  %unroll_iter = and i64 %17, 9223372036854775804
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph.new
  %index = phi i64 [ 0, %vector.ph.new ], [ %index.next.3, %vector.body ]
  %niter = phi i64 [ 0, %vector.ph.new ], [ %niter.next.3, %vector.body ]
  %19 = trunc i64 %index to i32
  %20 = getelementptr inbounds %struct.smvt_control, %struct.smvt_control* %control, i64 %index
  %21 = add i32 %inc44, %19
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds %struct.smvt_control, %struct.smvt_control* %control, i64 %22
  %24 = bitcast %struct.smvt_control* %23 to <2 x i64>*
  %wide.load = load <2 x i64>, <2 x i64>* %24, align 4, !alias.scope !25
  %25 = getelementptr inbounds %struct.smvt_control, %struct.smvt_control* %23, i64 2
  %26 = bitcast %struct.smvt_control* %25 to <2 x i64>*
  %wide.load23 = load <2 x i64>, <2 x i64>* %26, align 4, !alias.scope !25
  %27 = bitcast %struct.smvt_control* %20 to <2 x i64>*
  store <2 x i64> %wide.load, <2 x i64>* %27, align 4, !alias.scope !28, !noalias !25
  %28 = getelementptr inbounds %struct.smvt_control, %struct.smvt_control* %20, i64 2
  %29 = bitcast %struct.smvt_control* %28 to <2 x i64>*
  store <2 x i64> %wide.load23, <2 x i64>* %29, align 4, !alias.scope !28, !noalias !25
  %index.next = or i64 %index, 4
  %30 = trunc i64 %index.next to i32
  %31 = getelementptr inbounds %struct.smvt_control, %struct.smvt_control* %control, i64 %index.next
  %32 = add i32 %inc44, %30
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds %struct.smvt_control, %struct.smvt_control* %control, i64 %33
  %35 = bitcast %struct.smvt_control* %34 to <2 x i64>*
  %wide.load.1 = load <2 x i64>, <2 x i64>* %35, align 4, !alias.scope !25
  %36 = getelementptr inbounds %struct.smvt_control, %struct.smvt_control* %34, i64 2
  %37 = bitcast %struct.smvt_control* %36 to <2 x i64>*
  %wide.load23.1 = load <2 x i64>, <2 x i64>* %37, align 4, !alias.scope !25
  %38 = bitcast %struct.smvt_control* %31 to <2 x i64>*
  store <2 x i64> %wide.load.1, <2 x i64>* %38, align 4, !alias.scope !28, !noalias !25
  %39 = getelementptr inbounds %struct.smvt_control, %struct.smvt_control* %31, i64 2
  %40 = bitcast %struct.smvt_control* %39 to <2 x i64>*
  store <2 x i64> %wide.load23.1, <2 x i64>* %40, align 4, !alias.scope !28, !noalias !25
  %index.next.1 = or i64 %index, 8
  %41 = trunc i64 %index.next.1 to i32
  %42 = getelementptr inbounds %struct.smvt_control, %struct.smvt_control* %control, i64 %index.next.1
  %43 = add i32 %inc44, %41
  %44 = zext i32 %43 to i64
  %45 = getelementptr inbounds %struct.smvt_control, %struct.smvt_control* %control, i64 %44
  %46 = bitcast %struct.smvt_control* %45 to <2 x i64>*
  %wide.load.2 = load <2 x i64>, <2 x i64>* %46, align 4, !alias.scope !25
  %47 = getelementptr inbounds %struct.smvt_control, %struct.smvt_control* %45, i64 2
  %48 = bitcast %struct.smvt_control* %47 to <2 x i64>*
  %wide.load23.2 = load <2 x i64>, <2 x i64>* %48, align 4, !alias.scope !25
  %49 = bitcast %struct.smvt_control* %42 to <2 x i64>*
  store <2 x i64> %wide.load.2, <2 x i64>* %49, align 4, !alias.scope !28, !noalias !25
  %50 = getelementptr inbounds %struct.smvt_control, %struct.smvt_control* %42, i64 2
  %51 = bitcast %struct.smvt_control* %50 to <2 x i64>*
  store <2 x i64> %wide.load23.2, <2 x i64>* %51, align 4, !alias.scope !28, !noalias !25
  %index.next.2 = or i64 %index, 12
  %52 = trunc i64 %index.next.2 to i32
  %53 = getelementptr inbounds %struct.smvt_control, %struct.smvt_control* %control, i64 %index.next.2
  %54 = add i32 %inc44, %52
  %55 = zext i32 %54 to i64
  %56 = getelementptr inbounds %struct.smvt_control, %struct.smvt_control* %control, i64 %55
  %57 = bitcast %struct.smvt_control* %56 to <2 x i64>*
  %wide.load.3 = load <2 x i64>, <2 x i64>* %57, align 4, !alias.scope !25
  %58 = getelementptr inbounds %struct.smvt_control, %struct.smvt_control* %56, i64 2
  %59 = bitcast %struct.smvt_control* %58 to <2 x i64>*
  %wide.load23.3 = load <2 x i64>, <2 x i64>* %59, align 4, !alias.scope !25
  %60 = bitcast %struct.smvt_control* %53 to <2 x i64>*
  store <2 x i64> %wide.load.3, <2 x i64>* %60, align 4, !alias.scope !28, !noalias !25
  %61 = getelementptr inbounds %struct.smvt_control, %struct.smvt_control* %53, i64 2
  %62 = bitcast %struct.smvt_control* %61 to <2 x i64>*
  store <2 x i64> %wide.load23.3, <2 x i64>* %62, align 4, !alias.scope !28, !noalias !25
  %index.next.3 = add nuw i64 %index, 16
  %niter.next.3 = add nuw i64 %niter, 4
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %middle.block.unr-lcssa, label %vector.body, !llvm.loop !30

middle.block.unr-lcssa:                           ; preds = %vector.body, %vector.ph
  %index.unr = phi i64 [ 0, %vector.ph ], [ %index.next.3, %vector.body ]
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %middle.block, label %vector.body.epil

vector.body.epil:                                 ; preds = %middle.block.unr-lcssa, %vector.body.epil
  %index.epil = phi i64 [ %index.next.epil, %vector.body.epil ], [ %index.unr, %middle.block.unr-lcssa ]
  %epil.iter = phi i64 [ %epil.iter.next, %vector.body.epil ], [ 0, %middle.block.unr-lcssa ]
  %63 = trunc i64 %index.epil to i32
  %64 = getelementptr inbounds %struct.smvt_control, %struct.smvt_control* %control, i64 %index.epil
  %65 = add i32 %inc44, %63
  %66 = zext i32 %65 to i64
  %67 = getelementptr inbounds %struct.smvt_control, %struct.smvt_control* %control, i64 %66
  %68 = bitcast %struct.smvt_control* %67 to <2 x i64>*
  %wide.load.epil = load <2 x i64>, <2 x i64>* %68, align 4, !alias.scope !25
  %69 = getelementptr inbounds %struct.smvt_control, %struct.smvt_control* %67, i64 2
  %70 = bitcast %struct.smvt_control* %69 to <2 x i64>*
  %wide.load23.epil = load <2 x i64>, <2 x i64>* %70, align 4, !alias.scope !25
  %71 = bitcast %struct.smvt_control* %64 to <2 x i64>*
  store <2 x i64> %wide.load.epil, <2 x i64>* %71, align 4, !alias.scope !28, !noalias !25
  %72 = getelementptr inbounds %struct.smvt_control, %struct.smvt_control* %64, i64 2
  %73 = bitcast %struct.smvt_control* %72 to <2 x i64>*
  store <2 x i64> %wide.load23.epil, <2 x i64>* %73, align 4, !alias.scope !28, !noalias !25
  %index.next.epil = add nuw i64 %index.epil, 4
  %epil.iter.next = add i64 %epil.iter, 1
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %middle.block, label %vector.body.epil, !llvm.loop !32

middle.block:                                     ; preds = %vector.body.epil, %middle.block.unr-lcssa
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %for.end57, label %for.body49.preheader24

for.body49.preheader24:                           ; preds = %vector.memcheck, %vector.scevcheck, %for.body49.preheader, %middle.block
  %indvars.iv13.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %vector.scevcheck ], [ 0, %for.body49.preheader ], [ %n.vec, %middle.block ]
  %74 = xor i64 %indvars.iv13.ph, -1
  %75 = add nsw i64 %74, %wide.trip.count
  %xtraiter25 = and i64 %wide.trip.count, 3
  %lcmp.mod26.not = icmp eq i64 %xtraiter25, 0
  br i1 %lcmp.mod26.not, label %for.body49.prol.loopexit, label %for.body49.prol

for.body49.prol:                                  ; preds = %for.body49.preheader24, %for.body49.prol
  %indvars.iv13.prol = phi i64 [ %indvars.iv.next14.prol, %for.body49.prol ], [ %indvars.iv13.ph, %for.body49.preheader24 ]
  %prol.iter = phi i64 [ %prol.iter.next, %for.body49.prol ], [ 0, %for.body49.preheader24 ]
  %arrayidx51.prol = getelementptr inbounds %struct.smvt_control, %struct.smvt_control* %control, i64 %indvars.iv13.prol
  %76 = trunc i64 %indvars.iv13.prol to i32
  %add52.prol = add i32 %inc44, %76
  %idxprom53.prol = zext i32 %add52.prol to i64
  %arrayidx54.prol = getelementptr inbounds %struct.smvt_control, %struct.smvt_control* %control, i64 %idxprom53.prol
  %77 = bitcast %struct.smvt_control* %arrayidx54.prol to i64*
  %78 = bitcast %struct.smvt_control* %arrayidx51.prol to i64*
  %79 = load i64, i64* %77, align 4
  store i64 %79, i64* %78, align 4
  %indvars.iv.next14.prol = add nuw nsw i64 %indvars.iv13.prol, 1
  %prol.iter.next = add i64 %prol.iter, 1
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter25
  br i1 %prol.iter.cmp.not, label %for.body49.prol.loopexit, label %for.body49.prol, !llvm.loop !34

for.body49.prol.loopexit:                         ; preds = %for.body49.prol, %for.body49.preheader24
  %indvars.iv13.unr = phi i64 [ %indvars.iv13.ph, %for.body49.preheader24 ], [ %indvars.iv.next14.prol, %for.body49.prol ]
  %80 = icmp ult i64 %75, 3
  br i1 %80, label %for.end57, label %for.body49

for.body49:                                       ; preds = %for.body49.prol.loopexit, %for.body49
  %indvars.iv13 = phi i64 [ %indvars.iv.next14.3, %for.body49 ], [ %indvars.iv13.unr, %for.body49.prol.loopexit ]
  %arrayidx51 = getelementptr inbounds %struct.smvt_control, %struct.smvt_control* %control, i64 %indvars.iv13
  %81 = trunc i64 %indvars.iv13 to i32
  %add52 = add i32 %inc44, %81
  %idxprom53 = zext i32 %add52 to i64
  %arrayidx54 = getelementptr inbounds %struct.smvt_control, %struct.smvt_control* %control, i64 %idxprom53
  %82 = bitcast %struct.smvt_control* %arrayidx54 to i64*
  %83 = bitcast %struct.smvt_control* %arrayidx51 to i64*
  %84 = load i64, i64* %82, align 4
  store i64 %84, i64* %83, align 4
  %indvars.iv.next14 = add nuw nsw i64 %indvars.iv13, 1
  %arrayidx51.1 = getelementptr inbounds %struct.smvt_control, %struct.smvt_control* %control, i64 %indvars.iv.next14
  %85 = trunc i64 %indvars.iv.next14 to i32
  %add52.1 = add i32 %inc44, %85
  %idxprom53.1 = zext i32 %add52.1 to i64
  %arrayidx54.1 = getelementptr inbounds %struct.smvt_control, %struct.smvt_control* %control, i64 %idxprom53.1
  %86 = bitcast %struct.smvt_control* %arrayidx54.1 to i64*
  %87 = bitcast %struct.smvt_control* %arrayidx51.1 to i64*
  %88 = load i64, i64* %86, align 4
  store i64 %88, i64* %87, align 4
  %indvars.iv.next14.1 = add nuw nsw i64 %indvars.iv13, 2
  %arrayidx51.2 = getelementptr inbounds %struct.smvt_control, %struct.smvt_control* %control, i64 %indvars.iv.next14.1
  %89 = trunc i64 %indvars.iv.next14.1 to i32
  %add52.2 = add i32 %inc44, %89
  %idxprom53.2 = zext i32 %add52.2 to i64
  %arrayidx54.2 = getelementptr inbounds %struct.smvt_control, %struct.smvt_control* %control, i64 %idxprom53.2
  %90 = bitcast %struct.smvt_control* %arrayidx54.2 to i64*
  %91 = bitcast %struct.smvt_control* %arrayidx51.2 to i64*
  %92 = load i64, i64* %90, align 4
  store i64 %92, i64* %91, align 4
  %indvars.iv.next14.2 = add nuw nsw i64 %indvars.iv13, 3
  %arrayidx51.3 = getelementptr inbounds %struct.smvt_control, %struct.smvt_control* %control, i64 %indvars.iv.next14.2
  %93 = trunc i64 %indvars.iv.next14.2 to i32
  %add52.3 = add i32 %inc44, %93
  %idxprom53.3 = zext i32 %add52.3 to i64
  %arrayidx54.3 = getelementptr inbounds %struct.smvt_control, %struct.smvt_control* %control, i64 %idxprom53.3
  %94 = bitcast %struct.smvt_control* %arrayidx54.3 to i64*
  %95 = bitcast %struct.smvt_control* %arrayidx51.3 to i64*
  %96 = load i64, i64* %94, align 4
  store i64 %96, i64* %95, align 4
  %indvars.iv.next14.3 = add nuw nsw i64 %indvars.iv13, 4
  %exitcond16.not.3 = icmp eq i64 %indvars.iv.next14.3, %wide.trip.count
  br i1 %exitcond16.not.3, label %for.end57, label %for.body49, !llvm.loop !35

for.end57:                                        ; preds = %for.body49.prol.loopexit, %for.body49, %middle.block, %for.end
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @prepare_wnaf_table([1 x %struct.anon]* noundef %output, %struct.curve448_point_s* noundef %working) unnamed_addr #0 {
entry:
  %tmp = alloca [1 x %struct.curve448_point_s], align 16
  %twop = alloca [1 x %struct.anon], align 16
  %0 = bitcast [1 x %struct.curve448_point_s]* %tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 256, i8* nonnull %0) #14
  %1 = bitcast [1 x %struct.anon]* %twop to i8*
  call void @llvm.lifetime.start.p0i8(i64 256, i8* nonnull %1) #14
  %arraydecay = getelementptr inbounds [1 x %struct.anon], [1 x %struct.anon]* %output, i64 0, i64 0
  tail call fastcc void @pt_to_pniels(%struct.anon* noundef %arraydecay, %struct.curve448_point_s* noundef %working) #13
  %arraydecay1 = getelementptr inbounds [1 x %struct.curve448_point_s], [1 x %struct.curve448_point_s]* %tmp, i64 0, i64 0
  call void @ossl_curve448_point_double(%struct.curve448_point_s* noundef nonnull %arraydecay1, %struct.curve448_point_s* noundef %working) #13
  %arraydecay2 = getelementptr inbounds [1 x %struct.anon], [1 x %struct.anon]* %twop, i64 0, i64 0
  call fastcc void @pt_to_pniels(%struct.anon* noundef nonnull %arraydecay2, %struct.curve448_point_s* noundef nonnull %arraydecay1) #13
  call fastcc void @add_pniels_to_pt(%struct.curve448_point_s* noundef nonnull %arraydecay1, %struct.anon* noundef %arraydecay, i32 noundef 0) #13
  %arraydecay8 = getelementptr inbounds [1 x %struct.anon], [1 x %struct.anon]* %output, i64 1, i64 0
  call fastcc void @pt_to_pniels(%struct.anon* noundef nonnull %arraydecay8, %struct.curve448_point_s* noundef nonnull %arraydecay1) #13
  call fastcc void @add_pniels_to_pt(%struct.curve448_point_s* noundef nonnull %arraydecay1, %struct.anon* noundef nonnull %arraydecay2, i32 noundef 0) #13
  %arraydecay14 = getelementptr inbounds [1 x %struct.anon], [1 x %struct.anon]* %output, i64 2, i64 0
  call fastcc void @pt_to_pniels(%struct.anon* noundef nonnull %arraydecay14, %struct.curve448_point_s* noundef nonnull %arraydecay1) #13
  call fastcc void @add_pniels_to_pt(%struct.curve448_point_s* noundef nonnull %arraydecay1, %struct.anon* noundef nonnull %arraydecay2, i32 noundef 0) #13
  %arraydecay14.1 = getelementptr inbounds [1 x %struct.anon], [1 x %struct.anon]* %output, i64 3, i64 0
  call fastcc void @pt_to_pniels(%struct.anon* noundef nonnull %arraydecay14.1, %struct.curve448_point_s* noundef nonnull %arraydecay1) #13
  call fastcc void @add_pniels_to_pt(%struct.curve448_point_s* noundef nonnull %arraydecay1, %struct.anon* noundef nonnull %arraydecay2, i32 noundef 0) #13
  %arraydecay14.2 = getelementptr inbounds [1 x %struct.anon], [1 x %struct.anon]* %output, i64 4, i64 0
  call fastcc void @pt_to_pniels(%struct.anon* noundef nonnull %arraydecay14.2, %struct.curve448_point_s* noundef nonnull %arraydecay1) #13
  call fastcc void @add_pniels_to_pt(%struct.curve448_point_s* noundef nonnull %arraydecay1, %struct.anon* noundef nonnull %arraydecay2, i32 noundef 0) #13
  %arraydecay14.3 = getelementptr inbounds [1 x %struct.anon], [1 x %struct.anon]* %output, i64 5, i64 0
  call fastcc void @pt_to_pniels(%struct.anon* noundef nonnull %arraydecay14.3, %struct.curve448_point_s* noundef nonnull %arraydecay1) #13
  call fastcc void @add_pniels_to_pt(%struct.curve448_point_s* noundef nonnull %arraydecay1, %struct.anon* noundef nonnull %arraydecay2, i32 noundef 0) #13
  %arraydecay14.4 = getelementptr inbounds [1 x %struct.anon], [1 x %struct.anon]* %output, i64 6, i64 0
  call fastcc void @pt_to_pniels(%struct.anon* noundef nonnull %arraydecay14.4, %struct.curve448_point_s* noundef nonnull %arraydecay1) #13
  call fastcc void @add_pniels_to_pt(%struct.curve448_point_s* noundef nonnull %arraydecay1, %struct.anon* noundef nonnull %arraydecay2, i32 noundef 0) #13
  %arraydecay14.5 = getelementptr inbounds [1 x %struct.anon], [1 x %struct.anon]* %output, i64 7, i64 0
  call fastcc void @pt_to_pniels(%struct.anon* noundef nonnull %arraydecay14.5, %struct.curve448_point_s* noundef nonnull %arraydecay1) #13
  call void @ossl_curve448_point_destroy(%struct.curve448_point_s* noundef nonnull %arraydecay1) #13
  call void @OPENSSL_cleanse(i8* noundef nonnull %1, i64 noundef 256) #15
  call void @llvm.lifetime.end.p0i8(i64 256, i8* nonnull %1) #14
  call void @llvm.lifetime.end.p0i8(i64 256, i8* nonnull %0) #14
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @pniels_to_pt(%struct.curve448_point_s* noundef %e, %struct.anon* noundef %d) unnamed_addr #0 {
entry:
  %eu = alloca [1 x %struct.gf_s], align 16
  %0 = bitcast [1 x %struct.gf_s]* %eu to i8*
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %0) #14
  %arraydecay = getelementptr inbounds [1 x %struct.gf_s], [1 x %struct.gf_s]* %eu, i64 0, i64 0
  %arraydecay2 = getelementptr inbounds %struct.anon, %struct.anon* %d, i64 0, i32 0, i64 0, i32 1, i64 0
  %arraydecay5 = getelementptr inbounds %struct.anon, %struct.anon* %d, i64 0, i32 0, i64 0, i32 0, i64 0
  call void @gf_add(%struct.gf_s* noundef nonnull %arraydecay, %struct.gf_s* noundef nonnull %arraydecay2, %struct.gf_s* noundef %arraydecay5) #15
  %arraydecay6 = getelementptr inbounds %struct.curve448_point_s, %struct.curve448_point_s* %e, i64 0, i32 1, i64 0
  call void @gf_sub(%struct.gf_s* noundef nonnull %arraydecay6, %struct.gf_s* noundef nonnull %arraydecay2, %struct.gf_s* noundef %arraydecay5) #15
  %arraydecay15 = getelementptr inbounds %struct.curve448_point_s, %struct.curve448_point_s* %e, i64 0, i32 3, i64 0
  call void @gf_mul(%struct.gf_s* noundef nonnull %arraydecay15, %struct.gf_s* noundef nonnull %arraydecay6, %struct.gf_s* noundef nonnull %arraydecay) #15
  %arraydecay19 = getelementptr inbounds %struct.curve448_point_s, %struct.curve448_point_s* %e, i64 0, i32 0, i64 0
  %arraydecay20 = getelementptr inbounds %struct.anon, %struct.anon* %d, i64 0, i32 1, i64 0
  call void @gf_mul(%struct.gf_s* noundef %arraydecay19, %struct.gf_s* noundef nonnull %arraydecay20, %struct.gf_s* noundef nonnull %arraydecay6) #15
  call void @gf_mul(%struct.gf_s* noundef nonnull %arraydecay6, %struct.gf_s* noundef nonnull %arraydecay20, %struct.gf_s* noundef nonnull %arraydecay) #15
  %arraydecay29 = getelementptr inbounds %struct.curve448_point_s, %struct.curve448_point_s* %e, i64 0, i32 2, i64 0
  call void @gf_sqr(%struct.gf_s* noundef nonnull %arraydecay29, %struct.gf_s* noundef nonnull %arraydecay20) #15
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %0) #14
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @add_pniels_to_pt(%struct.curve448_point_s* noundef %p, %struct.anon* noundef %pn, i32 noundef %before_double) unnamed_addr #0 {
entry:
  %L0 = alloca [1 x %struct.gf_s], align 16
  %0 = bitcast [1 x %struct.gf_s]* %L0 to i8*
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %0) #14
  %arraydecay = getelementptr inbounds [1 x %struct.gf_s], [1 x %struct.gf_s]* %L0, i64 0, i64 0
  %arraydecay1 = getelementptr inbounds %struct.curve448_point_s, %struct.curve448_point_s* %p, i64 0, i32 2, i64 0
  %arraydecay3 = getelementptr inbounds %struct.anon, %struct.anon* %pn, i64 0, i32 1, i64 0
  call void @gf_mul(%struct.gf_s* noundef nonnull %arraydecay, %struct.gf_s* noundef nonnull %arraydecay1, %struct.gf_s* noundef nonnull %arraydecay3) #15
  %1 = bitcast %struct.gf_s* %arraydecay1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(64) %1, i8* noundef nonnull align 16 dereferenceable(64) %0, i64 64, i1 false) #14, !tbaa.struct !11
  %arraydecay7 = getelementptr inbounds %struct.anon, %struct.anon* %pn, i64 0, i32 0, i64 0
  call fastcc void @add_niels_to_pt(%struct.curve448_point_s* noundef %p, %struct.niels_s* noundef %arraydecay7, i32 noundef %before_double) #13
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %0) #14
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @sub_pniels_from_pt(%struct.curve448_point_s* noundef %p, %struct.anon* noundef %pn, i32 noundef %before_double) unnamed_addr #0 {
entry:
  %L0 = alloca [1 x %struct.gf_s], align 16
  %0 = bitcast [1 x %struct.gf_s]* %L0 to i8*
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %0) #14
  %arraydecay = getelementptr inbounds [1 x %struct.gf_s], [1 x %struct.gf_s]* %L0, i64 0, i64 0
  %arraydecay1 = getelementptr inbounds %struct.curve448_point_s, %struct.curve448_point_s* %p, i64 0, i32 2, i64 0
  %arraydecay3 = getelementptr inbounds %struct.anon, %struct.anon* %pn, i64 0, i32 1, i64 0
  call void @gf_mul(%struct.gf_s* noundef nonnull %arraydecay, %struct.gf_s* noundef nonnull %arraydecay1, %struct.gf_s* noundef nonnull %arraydecay3) #15
  %1 = bitcast %struct.gf_s* %arraydecay1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(64) %1, i8* noundef nonnull align 16 dereferenceable(64) %0, i64 64, i1 false) #14, !tbaa.struct !11
  %arraydecay7 = getelementptr inbounds %struct.anon, %struct.anon* %pn, i64 0, i32 0, i64 0
  call fastcc void @sub_niels_from_pt(%struct.curve448_point_s* noundef %p, %struct.niels_s* noundef %arraydecay7, i32 noundef %before_double) #13
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %0) #14
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @sub_niels_from_pt(%struct.curve448_point_s* noundef %d, %struct.niels_s* noundef %e, i32 noundef %before_double) unnamed_addr #0 {
entry:
  %a = alloca [1 x %struct.gf_s], align 16
  %b = alloca [1 x %struct.gf_s], align 16
  %c = alloca [1 x %struct.gf_s], align 16
  %0 = bitcast [1 x %struct.gf_s]* %a to i8*
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %0) #14
  %1 = bitcast [1 x %struct.gf_s]* %b to i8*
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %1) #14
  %2 = bitcast [1 x %struct.gf_s]* %c to i8*
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %2) #14
  %arraydecay = getelementptr inbounds [1 x %struct.gf_s], [1 x %struct.gf_s]* %b, i64 0, i64 0
  %arraydecay1 = getelementptr inbounds %struct.curve448_point_s, %struct.curve448_point_s* %d, i64 0, i32 1, i64 0
  %arraydecay2 = getelementptr inbounds %struct.curve448_point_s, %struct.curve448_point_s* %d, i64 0, i32 0, i64 0
  call fastcc void @gf_sub_nr(%struct.gf_s* noundef nonnull %arraydecay, %struct.gf_s* noundef nonnull %arraydecay1, %struct.gf_s* noundef %arraydecay2) #13
  %arraydecay3 = getelementptr inbounds [1 x %struct.gf_s], [1 x %struct.gf_s]* %a, i64 0, i64 0
  %arraydecay5 = getelementptr inbounds %struct.niels_s, %struct.niels_s* %e, i64 0, i32 1, i64 0
  call void @gf_mul(%struct.gf_s* noundef nonnull %arraydecay3, %struct.gf_s* noundef nonnull %arraydecay5, %struct.gf_s* noundef nonnull %arraydecay) #15
  %arrayidx.i = getelementptr inbounds %struct.curve448_point_s, %struct.curve448_point_s* %d, i64 0, i32 0, i64 0, i32 0, i64 0
  %3 = load i64, i64* %arrayidx.i, align 8, !tbaa !4
  %arrayidx4.i = getelementptr inbounds %struct.gf_s, %struct.gf_s* %arraydecay1, i64 0, i32 0, i64 0
  %4 = load i64, i64* %arrayidx4.i, align 8, !tbaa !4
  %add.i = add i64 %4, %3
  %arrayidx7.i = getelementptr inbounds [1 x %struct.gf_s], [1 x %struct.gf_s]* %b, i64 0, i64 0, i32 0, i64 0
  %arrayidx.1.i = getelementptr inbounds %struct.curve448_point_s, %struct.curve448_point_s* %d, i64 0, i32 0, i64 0, i32 0, i64 1
  %arrayidx4.1.i = getelementptr inbounds %struct.curve448_point_s, %struct.curve448_point_s* %d, i64 0, i32 1, i64 0, i32 0, i64 1
  %arrayidx7.1.i = getelementptr inbounds [1 x %struct.gf_s], [1 x %struct.gf_s]* %b, i64 0, i64 0, i32 0, i64 1
  %5 = bitcast i64* %arrayidx.1.i to <2 x i64>*
  %6 = load <2 x i64>, <2 x i64>* %5, align 8, !tbaa !4
  %7 = bitcast i64* %arrayidx4.1.i to <2 x i64>*
  %8 = load <2 x i64>, <2 x i64>* %7, align 8, !tbaa !4
  %9 = add <2 x i64> %8, %6
  %arrayidx.3.i = getelementptr inbounds %struct.curve448_point_s, %struct.curve448_point_s* %d, i64 0, i32 0, i64 0, i32 0, i64 3
  %10 = load i64, i64* %arrayidx.3.i, align 8, !tbaa !4
  %arrayidx4.3.i = getelementptr inbounds %struct.curve448_point_s, %struct.curve448_point_s* %d, i64 0, i32 1, i64 0, i32 0, i64 3
  %11 = load i64, i64* %arrayidx4.3.i, align 8, !tbaa !4
  %add.3.i = add i64 %11, %10
  %arrayidx7.3.i = getelementptr inbounds [1 x %struct.gf_s], [1 x %struct.gf_s]* %b, i64 0, i64 0, i32 0, i64 3
  %arrayidx.4.i = getelementptr inbounds %struct.curve448_point_s, %struct.curve448_point_s* %d, i64 0, i32 0, i64 0, i32 0, i64 4
  %12 = load i64, i64* %arrayidx.4.i, align 8, !tbaa !4
  %arrayidx4.4.i = getelementptr inbounds %struct.curve448_point_s, %struct.curve448_point_s* %d, i64 0, i32 1, i64 0, i32 0, i64 4
  %13 = load i64, i64* %arrayidx4.4.i, align 8, !tbaa !4
  %add.4.i = add i64 %13, %12
  %arrayidx7.4.i = getelementptr inbounds [1 x %struct.gf_s], [1 x %struct.gf_s]* %b, i64 0, i64 0, i32 0, i64 4
  %arrayidx.5.i = getelementptr inbounds %struct.curve448_point_s, %struct.curve448_point_s* %d, i64 0, i32 0, i64 0, i32 0, i64 5
  %14 = load i64, i64* %arrayidx.5.i, align 8, !tbaa !4
  %arrayidx4.5.i = getelementptr inbounds %struct.curve448_point_s, %struct.curve448_point_s* %d, i64 0, i32 1, i64 0, i32 0, i64 5
  %15 = load i64, i64* %arrayidx4.5.i, align 8, !tbaa !4
  %add.5.i = add i64 %15, %14
  %arrayidx7.5.i = getelementptr inbounds [1 x %struct.gf_s], [1 x %struct.gf_s]* %b, i64 0, i64 0, i32 0, i64 5
  %arrayidx.6.i = getelementptr inbounds %struct.curve448_point_s, %struct.curve448_point_s* %d, i64 0, i32 0, i64 0, i32 0, i64 6
  %arrayidx4.6.i = getelementptr inbounds %struct.curve448_point_s, %struct.curve448_point_s* %d, i64 0, i32 1, i64 0, i32 0, i64 6
  %arrayidx7.6.i = getelementptr inbounds [1 x %struct.gf_s], [1 x %struct.gf_s]* %b, i64 0, i64 0, i32 0, i64 6
  %16 = bitcast i64* %arrayidx.6.i to <2 x i64>*
  %17 = load <2 x i64>, <2 x i64>* %16, align 8, !tbaa !4
  %18 = bitcast i64* %arrayidx4.6.i to <2 x i64>*
  %19 = load <2 x i64>, <2 x i64>* %18, align 8, !tbaa !4
  %20 = add <2 x i64> %19, %17
  %21 = extractelement <2 x i64> %20, i64 1
  %shr.i.i = lshr i64 %21, 56
  %add.i.i = add i64 %shr.i.i, %add.4.i
  %22 = and <2 x i64> %20, <i64 72057594037927935, i64 72057594037927935>
  %23 = insertelement <2 x i64> poison, i64 %add.5.i, i64 0
  %24 = shufflevector <2 x i64> %23, <2 x i64> %20, <2 x i32> <i32 0, i32 2>
  %25 = lshr <2 x i64> %24, <i64 56, i64 56>
  %26 = add nuw nsw <2 x i64> %22, %25
  %27 = bitcast i64* %arrayidx7.6.i to <2 x i64>*
  store <2 x i64> %26, <2 x i64>* %27, align 16, !tbaa !4
  %and.2.i.i = and i64 %add.5.i, 72057594037927935
  %shr8.2.i.i = lshr i64 %add.i.i, 56
  %add9.2.i.i = add nuw nsw i64 %shr8.2.i.i, %and.2.i.i
  store i64 %add9.2.i.i, i64* %arrayidx7.5.i, align 8, !tbaa !4
  %and.3.i.i = and i64 %add.i.i, 72057594037927935
  %shr8.3.i.i = lshr i64 %add.3.i, 56
  %add9.3.i.i = add nuw nsw i64 %and.3.i.i, %shr8.3.i.i
  store i64 %add9.3.i.i, i64* %arrayidx7.4.i, align 16, !tbaa !4
  %and.4.i.i = and i64 %add.3.i, 72057594037927935
  %28 = extractelement <2 x i64> %9, i64 1
  %shr8.4.i.i = lshr i64 %28, 56
  %add9.4.i.i = add nuw nsw i64 %and.4.i.i, %shr8.4.i.i
  store i64 %add9.4.i.i, i64* %arrayidx7.3.i, align 8, !tbaa !4
  %29 = and <2 x i64> %9, <i64 72057594037927935, i64 72057594037927935>
  %30 = insertelement <2 x i64> poison, i64 %add.i, i64 0
  %31 = shufflevector <2 x i64> %30, <2 x i64> %9, <2 x i32> <i32 0, i32 2>
  %32 = lshr <2 x i64> %31, <i64 56, i64 56>
  %33 = add nuw nsw <2 x i64> %29, %32
  %34 = bitcast i64* %arrayidx7.1.i to <2 x i64>*
  store <2 x i64> %33, <2 x i64>* %34, align 8, !tbaa !4
  %and15.i.i = and i64 %add.i, 72057594037927935
  %add16.i.i = add nuw nsw i64 %shr.i.i, %and15.i.i
  store i64 %add16.i.i, i64* %arrayidx7.i, align 16, !tbaa !4
  %arraydecay15 = getelementptr inbounds %struct.niels_s, %struct.niels_s* %e, i64 0, i32 0, i64 0
  call void @gf_mul(%struct.gf_s* noundef nonnull %arraydecay1, %struct.gf_s* noundef %arraydecay15, %struct.gf_s* noundef nonnull %arraydecay) #15
  %arraydecay20 = getelementptr inbounds %struct.niels_s, %struct.niels_s* %e, i64 0, i32 2, i64 0
  %arraydecay21 = getelementptr inbounds %struct.curve448_point_s, %struct.curve448_point_s* %d, i64 0, i32 3, i64 0
  call void @gf_mul(%struct.gf_s* noundef %arraydecay2, %struct.gf_s* noundef nonnull %arraydecay20, %struct.gf_s* noundef nonnull %arraydecay21) #15
  %arraydecay22 = getelementptr inbounds [1 x %struct.gf_s], [1 x %struct.gf_s]* %c, i64 0, i64 0
  %arrayidx.i79 = getelementptr inbounds [1 x %struct.gf_s], [1 x %struct.gf_s]* %a, i64 0, i64 0, i32 0, i64 0
  %35 = load i64, i64* %arrayidx.i79, align 16, !tbaa !4
  %36 = load i64, i64* %arrayidx4.i, align 8, !tbaa !4
  %add.i81 = add i64 %36, %35
  %arrayidx7.i82 = getelementptr inbounds [1 x %struct.gf_s], [1 x %struct.gf_s]* %c, i64 0, i64 0, i32 0, i64 0
  %arrayidx.1.i83 = getelementptr inbounds [1 x %struct.gf_s], [1 x %struct.gf_s]* %a, i64 0, i64 0, i32 0, i64 1
  %arrayidx7.1.i86 = getelementptr inbounds [1 x %struct.gf_s], [1 x %struct.gf_s]* %c, i64 0, i64 0, i32 0, i64 1
  %37 = bitcast i64* %arrayidx.1.i83 to <2 x i64>*
  %38 = load <2 x i64>, <2 x i64>* %37, align 8, !tbaa !4
  %39 = bitcast i64* %arrayidx4.1.i to <2 x i64>*
  %40 = load <2 x i64>, <2 x i64>* %39, align 8, !tbaa !4
  %41 = add <2 x i64> %40, %38
  %arrayidx.3.i91 = getelementptr inbounds [1 x %struct.gf_s], [1 x %struct.gf_s]* %a, i64 0, i64 0, i32 0, i64 3
  %42 = load i64, i64* %arrayidx.3.i91, align 8, !tbaa !4
  %43 = load i64, i64* %arrayidx4.3.i, align 8, !tbaa !4
  %add.3.i93 = add i64 %43, %42
  %arrayidx7.3.i94 = getelementptr inbounds [1 x %struct.gf_s], [1 x %struct.gf_s]* %c, i64 0, i64 0, i32 0, i64 3
  %arrayidx.4.i95 = getelementptr inbounds [1 x %struct.gf_s], [1 x %struct.gf_s]* %a, i64 0, i64 0, i32 0, i64 4
  %44 = load i64, i64* %arrayidx.4.i95, align 16, !tbaa !4
  %45 = load i64, i64* %arrayidx4.4.i, align 8, !tbaa !4
  %add.4.i97 = add i64 %45, %44
  %arrayidx7.4.i98 = getelementptr inbounds [1 x %struct.gf_s], [1 x %struct.gf_s]* %c, i64 0, i64 0, i32 0, i64 4
  %arrayidx.5.i99 = getelementptr inbounds [1 x %struct.gf_s], [1 x %struct.gf_s]* %a, i64 0, i64 0, i32 0, i64 5
  %46 = load i64, i64* %arrayidx.5.i99, align 8, !tbaa !4
  %47 = load i64, i64* %arrayidx4.5.i, align 8, !tbaa !4
  %add.5.i101 = add i64 %47, %46
  %arrayidx7.5.i102 = getelementptr inbounds [1 x %struct.gf_s], [1 x %struct.gf_s]* %c, i64 0, i64 0, i32 0, i64 5
  %arrayidx.6.i103 = getelementptr inbounds [1 x %struct.gf_s], [1 x %struct.gf_s]* %a, i64 0, i64 0, i32 0, i64 6
  %arrayidx7.6.i106 = getelementptr inbounds [1 x %struct.gf_s], [1 x %struct.gf_s]* %c, i64 0, i64 0, i32 0, i64 6
  %48 = bitcast i64* %arrayidx.6.i103 to <2 x i64>*
  %49 = load <2 x i64>, <2 x i64>* %48, align 16, !tbaa !4
  %50 = bitcast i64* %arrayidx4.6.i to <2 x i64>*
  %51 = load <2 x i64>, <2 x i64>* %50, align 8, !tbaa !4
  %52 = add <2 x i64> %51, %49
  %53 = extractelement <2 x i64> %52, i64 1
  %shr.i.i111 = lshr i64 %53, 56
  %add.i.i112 = add i64 %shr.i.i111, %add.4.i97
  %54 = and <2 x i64> %52, <i64 72057594037927935, i64 72057594037927935>
  %55 = insertelement <2 x i64> poison, i64 %add.5.i101, i64 0
  %56 = shufflevector <2 x i64> %55, <2 x i64> %52, <2 x i32> <i32 0, i32 2>
  %57 = lshr <2 x i64> %56, <i64 56, i64 56>
  %58 = add nuw nsw <2 x i64> %54, %57
  %59 = bitcast i64* %arrayidx7.6.i106 to <2 x i64>*
  store <2 x i64> %58, <2 x i64>* %59, align 16, !tbaa !4
  %and.2.i.i119 = and i64 %add.5.i101, 72057594037927935
  %shr8.2.i.i120 = lshr i64 %add.i.i112, 56
  %add9.2.i.i121 = add nuw nsw i64 %shr8.2.i.i120, %and.2.i.i119
  store i64 %add9.2.i.i121, i64* %arrayidx7.5.i102, align 8, !tbaa !4
  %and.3.i.i122 = and i64 %add.i.i112, 72057594037927935
  %shr8.3.i.i123 = lshr i64 %add.3.i93, 56
  %add9.3.i.i124 = add nuw nsw i64 %and.3.i.i122, %shr8.3.i.i123
  store i64 %add9.3.i.i124, i64* %arrayidx7.4.i98, align 16, !tbaa !4
  %and.4.i.i125 = and i64 %add.3.i93, 72057594037927935
  %60 = extractelement <2 x i64> %41, i64 1
  %shr8.4.i.i126 = lshr i64 %60, 56
  %add9.4.i.i127 = add nuw nsw i64 %and.4.i.i125, %shr8.4.i.i126
  store i64 %add9.4.i.i127, i64* %arrayidx7.3.i94, align 8, !tbaa !4
  %61 = and <2 x i64> %41, <i64 72057594037927935, i64 72057594037927935>
  %62 = insertelement <2 x i64> poison, i64 %add.i81, i64 0
  %63 = shufflevector <2 x i64> %62, <2 x i64> %41, <2 x i32> <i32 0, i32 2>
  %64 = lshr <2 x i64> %63, <i64 56, i64 56>
  %65 = add nuw nsw <2 x i64> %61, %64
  %66 = bitcast i64* %arrayidx7.1.i86 to <2 x i64>*
  store <2 x i64> %65, <2 x i64>* %66, align 8, !tbaa !4
  %and15.i.i134 = and i64 %add.i81, 72057594037927935
  %add16.i.i135 = add nuw nsw i64 %shr.i.i111, %and15.i.i134
  store i64 %add16.i.i135, i64* %arrayidx7.i82, align 16, !tbaa !4
  call fastcc void @gf_sub_nr(%struct.gf_s* noundef nonnull %arraydecay, %struct.gf_s* noundef nonnull %arraydecay1, %struct.gf_s* noundef nonnull %arraydecay3) #13
  %arraydecay32 = getelementptr inbounds %struct.curve448_point_s, %struct.curve448_point_s* %d, i64 0, i32 2, i64 0
  %arrayidx.i136 = getelementptr inbounds %struct.gf_s, %struct.gf_s* %arraydecay32, i64 0, i32 0, i64 0
  %67 = load i64, i64* %arrayidx.i136, align 8, !tbaa !4
  %68 = load i64, i64* %arrayidx.i, align 8, !tbaa !4
  %add.i138 = add i64 %68, %67
  %arrayidx.1.i140 = getelementptr inbounds %struct.curve448_point_s, %struct.curve448_point_s* %d, i64 0, i32 2, i64 0, i32 0, i64 1
  %69 = bitcast i64* %arrayidx.1.i140 to <2 x i64>*
  %70 = load <2 x i64>, <2 x i64>* %69, align 8, !tbaa !4
  %71 = bitcast i64* %arrayidx.1.i to <2 x i64>*
  %72 = load <2 x i64>, <2 x i64>* %71, align 8, !tbaa !4
  %73 = add <2 x i64> %72, %70
  %arrayidx.3.i148 = getelementptr inbounds %struct.curve448_point_s, %struct.curve448_point_s* %d, i64 0, i32 2, i64 0, i32 0, i64 3
  %74 = load i64, i64* %arrayidx.3.i148, align 8, !tbaa !4
  %75 = load i64, i64* %arrayidx.3.i, align 8, !tbaa !4
  %add.3.i150 = add i64 %75, %74
  %arrayidx.4.i152 = getelementptr inbounds %struct.curve448_point_s, %struct.curve448_point_s* %d, i64 0, i32 2, i64 0, i32 0, i64 4
  %76 = load i64, i64* %arrayidx.4.i152, align 8, !tbaa !4
  %77 = load i64, i64* %arrayidx.4.i, align 8, !tbaa !4
  %add.4.i154 = add i64 %77, %76
  %arrayidx.5.i156 = getelementptr inbounds %struct.curve448_point_s, %struct.curve448_point_s* %d, i64 0, i32 2, i64 0, i32 0, i64 5
  %78 = load i64, i64* %arrayidx.5.i156, align 8, !tbaa !4
  %79 = load i64, i64* %arrayidx.5.i, align 8, !tbaa !4
  %add.5.i158 = add i64 %79, %78
  %arrayidx.6.i160 = getelementptr inbounds %struct.curve448_point_s, %struct.curve448_point_s* %d, i64 0, i32 2, i64 0, i32 0, i64 6
  %80 = bitcast i64* %arrayidx.6.i160 to <2 x i64>*
  %81 = load <2 x i64>, <2 x i64>* %80, align 8, !tbaa !4
  %82 = bitcast i64* %arrayidx.6.i to <2 x i64>*
  %83 = load <2 x i64>, <2 x i64>* %82, align 8, !tbaa !4
  %84 = add <2 x i64> %83, %81
  %85 = extractelement <2 x i64> %84, i64 1
  %shr.i.i168 = lshr i64 %85, 56
  %add.i.i169 = add i64 %shr.i.i168, %add.4.i154
  %86 = and <2 x i64> %84, <i64 72057594037927935, i64 72057594037927935>
  %87 = insertelement <2 x i64> poison, i64 %add.5.i158, i64 0
  %88 = shufflevector <2 x i64> %87, <2 x i64> %84, <2 x i32> <i32 0, i32 2>
  %89 = lshr <2 x i64> %88, <i64 56, i64 56>
  %90 = add nuw nsw <2 x i64> %86, %89
  %91 = bitcast i64* %arrayidx4.6.i to <2 x i64>*
  store <2 x i64> %90, <2 x i64>* %91, align 8, !tbaa !4
  %and.2.i.i176 = and i64 %add.5.i158, 72057594037927935
  %shr8.2.i.i177 = lshr i64 %add.i.i169, 56
  %add9.2.i.i178 = add nuw nsw i64 %shr8.2.i.i177, %and.2.i.i176
  store i64 %add9.2.i.i178, i64* %arrayidx4.5.i, align 8, !tbaa !4
  %and.3.i.i179 = and i64 %add.i.i169, 72057594037927935
  %shr8.3.i.i180 = lshr i64 %add.3.i150, 56
  %add9.3.i.i181 = add nuw nsw i64 %and.3.i.i179, %shr8.3.i.i180
  store i64 %add9.3.i.i181, i64* %arrayidx4.4.i, align 8, !tbaa !4
  %and.4.i.i182 = and i64 %add.3.i150, 72057594037927935
  %92 = extractelement <2 x i64> %73, i64 1
  %shr8.4.i.i183 = lshr i64 %92, 56
  %add9.4.i.i184 = add nuw nsw i64 %and.4.i.i182, %shr8.4.i.i183
  store i64 %add9.4.i.i184, i64* %arrayidx4.3.i, align 8, !tbaa !4
  %93 = and <2 x i64> %73, <i64 72057594037927935, i64 72057594037927935>
  %94 = insertelement <2 x i64> poison, i64 %add.i138, i64 0
  %95 = shufflevector <2 x i64> %94, <2 x i64> %73, <2 x i32> <i32 0, i32 2>
  %96 = lshr <2 x i64> %95, <i64 56, i64 56>
  %97 = add nuw nsw <2 x i64> %93, %96
  %98 = bitcast i64* %arrayidx4.1.i to <2 x i64>*
  store <2 x i64> %97, <2 x i64>* %98, align 8, !tbaa !4
  %and15.i.i191 = and i64 %add.i138, 72057594037927935
  %add16.i.i192 = add nuw nsw i64 %shr.i.i168, %and15.i.i191
  store i64 %add16.i.i192, i64* %arrayidx4.i, align 16, !tbaa !4
  call fastcc void @gf_sub_nr(%struct.gf_s* noundef nonnull %arraydecay3, %struct.gf_s* noundef nonnull %arraydecay32, %struct.gf_s* noundef %arraydecay2) #13
  call void @gf_mul(%struct.gf_s* noundef nonnull %arraydecay32, %struct.gf_s* noundef nonnull %arraydecay3, %struct.gf_s* noundef nonnull %arraydecay1) #15
  call void @gf_mul(%struct.gf_s* noundef %arraydecay2, %struct.gf_s* noundef nonnull %arraydecay1, %struct.gf_s* noundef nonnull %arraydecay) #15
  call void @gf_mul(%struct.gf_s* noundef nonnull %arraydecay1, %struct.gf_s* noundef nonnull %arraydecay3, %struct.gf_s* noundef nonnull %arraydecay22) #15
  %tobool.not = icmp eq i32 %before_double, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @gf_mul(%struct.gf_s* noundef nonnull %arraydecay21, %struct.gf_s* noundef nonnull %arraydecay, %struct.gf_s* noundef nonnull %arraydecay22) #15
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %2) #14
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %1) #14
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %0) #14
  ret void
}

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_x448(i8* noundef %out_shared_key, i8* nocapture noundef readonly %private_key, i8* noundef %peer_public_value) local_unnamed_addr #0 {
entry:
  %call = tail call i32 @ossl_x448_int(i8* noundef %out_shared_key, i8* noundef %peer_public_value, i8* noundef %private_key) #13
  %cmp = icmp eq i32 %call, -1
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: noinline nounwind uwtable
define void @ossl_x448_public_from_private(i8* noundef %out_public_value, i8* noundef %private_key) local_unnamed_addr #0 {
entry:
  tail call void @ossl_x448_derive_public_key(i8* noundef %out_public_value, i8* noundef %private_key) #13
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define internal fastcc void @gf_subx_nr(%struct.gf_s* nocapture noundef writeonly %c, %struct.gf_s* nocapture noundef readonly %a, %struct.gf_s* nocapture noundef readonly %b, i32 noundef %amt) unnamed_addr #7 {
entry:
  %arrayidx.i = getelementptr inbounds %struct.gf_s, %struct.gf_s* %a, i64 0, i32 0, i64 0
  %0 = load i64, i64* %arrayidx.i, align 8, !tbaa !4
  %arrayidx4.i = getelementptr inbounds %struct.gf_s, %struct.gf_s* %b, i64 0, i32 0, i64 0
  %1 = load i64, i64* %arrayidx4.i, align 8, !tbaa !4
  %sub5.i = add i64 %0, 144115188075855870
  %add.i = sub i64 %sub5.i, %1
  %arrayidx11.i = getelementptr inbounds %struct.gf_s, %struct.gf_s* %c, i64 0, i32 0, i64 0
  store i64 %add.i, i64* %arrayidx11.i, align 8, !tbaa !4
  %arrayidx.1.i = getelementptr inbounds %struct.gf_s, %struct.gf_s* %a, i64 0, i32 0, i64 1
  %2 = load i64, i64* %arrayidx.1.i, align 8, !tbaa !4
  %arrayidx4.1.i = getelementptr inbounds %struct.gf_s, %struct.gf_s* %b, i64 0, i32 0, i64 1
  %3 = load i64, i64* %arrayidx4.1.i, align 8, !tbaa !4
  %sub5.1.i = add i64 %2, 144115188075855870
  %add.1.i = sub i64 %sub5.1.i, %3
  %arrayidx11.1.i = getelementptr inbounds %struct.gf_s, %struct.gf_s* %c, i64 0, i32 0, i64 1
  store i64 %add.1.i, i64* %arrayidx11.1.i, align 8, !tbaa !4
  %arrayidx.2.i = getelementptr inbounds %struct.gf_s, %struct.gf_s* %a, i64 0, i32 0, i64 2
  %4 = load i64, i64* %arrayidx.2.i, align 8, !tbaa !4
  %arrayidx4.2.i = getelementptr inbounds %struct.gf_s, %struct.gf_s* %b, i64 0, i32 0, i64 2
  %5 = load i64, i64* %arrayidx4.2.i, align 8, !tbaa !4
  %sub5.2.i = add i64 %4, 144115188075855870
  %add.2.i = sub i64 %sub5.2.i, %5
  %arrayidx11.2.i = getelementptr inbounds %struct.gf_s, %struct.gf_s* %c, i64 0, i32 0, i64 2
  store i64 %add.2.i, i64* %arrayidx11.2.i, align 8, !tbaa !4
  %arrayidx.3.i = getelementptr inbounds %struct.gf_s, %struct.gf_s* %a, i64 0, i32 0, i64 3
  %6 = load i64, i64* %arrayidx.3.i, align 8, !tbaa !4
  %arrayidx4.3.i = getelementptr inbounds %struct.gf_s, %struct.gf_s* %b, i64 0, i32 0, i64 3
  %7 = load i64, i64* %arrayidx4.3.i, align 8, !tbaa !4
  %sub5.3.i = add i64 %6, 144115188075855870
  %add.3.i = sub i64 %sub5.3.i, %7
  %arrayidx11.3.i = getelementptr inbounds %struct.gf_s, %struct.gf_s* %c, i64 0, i32 0, i64 3
  store i64 %add.3.i, i64* %arrayidx11.3.i, align 8, !tbaa !4
  %arrayidx.4.i = getelementptr inbounds %struct.gf_s, %struct.gf_s* %a, i64 0, i32 0, i64 4
  %8 = load i64, i64* %arrayidx.4.i, align 8, !tbaa !4
  %arrayidx4.4.i = getelementptr inbounds %struct.gf_s, %struct.gf_s* %b, i64 0, i32 0, i64 4
  %9 = load i64, i64* %arrayidx4.4.i, align 8, !tbaa !4
  %sub5.4.i = add i64 %8, 144115188075855868
  %add.4.i = sub i64 %sub5.4.i, %9
  %arrayidx11.4.i = getelementptr inbounds %struct.gf_s, %struct.gf_s* %c, i64 0, i32 0, i64 4
  store i64 %add.4.i, i64* %arrayidx11.4.i, align 8, !tbaa !4
  %arrayidx.5.i = getelementptr inbounds %struct.gf_s, %struct.gf_s* %a, i64 0, i32 0, i64 5
  %10 = load i64, i64* %arrayidx.5.i, align 8, !tbaa !4
  %arrayidx4.5.i = getelementptr inbounds %struct.gf_s, %struct.gf_s* %b, i64 0, i32 0, i64 5
  %11 = load i64, i64* %arrayidx4.5.i, align 8, !tbaa !4
  %sub5.5.i = add i64 %10, 144115188075855870
  %add.5.i = sub i64 %sub5.5.i, %11
  %arrayidx11.5.i = getelementptr inbounds %struct.gf_s, %struct.gf_s* %c, i64 0, i32 0, i64 5
  store i64 %add.5.i, i64* %arrayidx11.5.i, align 8, !tbaa !4
  %arrayidx.6.i = getelementptr inbounds %struct.gf_s, %struct.gf_s* %a, i64 0, i32 0, i64 6
  %12 = load i64, i64* %arrayidx.6.i, align 8, !tbaa !4
  %arrayidx4.6.i = getelementptr inbounds %struct.gf_s, %struct.gf_s* %b, i64 0, i32 0, i64 6
  %13 = load i64, i64* %arrayidx4.6.i, align 8, !tbaa !4
  %sub5.6.i = add i64 %12, 144115188075855870
  %add.6.i = sub i64 %sub5.6.i, %13
  %arrayidx11.6.i = getelementptr inbounds %struct.gf_s, %struct.gf_s* %c, i64 0, i32 0, i64 6
  store i64 %add.6.i, i64* %arrayidx11.6.i, align 8, !tbaa !4
  %arrayidx.7.i = getelementptr inbounds %struct.gf_s, %struct.gf_s* %a, i64 0, i32 0, i64 7
  %14 = load i64, i64* %arrayidx.7.i, align 8, !tbaa !4
  %arrayidx4.7.i = getelementptr inbounds %struct.gf_s, %struct.gf_s* %b, i64 0, i32 0, i64 7
  %15 = load i64, i64* %arrayidx4.7.i, align 8, !tbaa !4
  %sub5.7.i = add i64 %14, 144115188075855870
  %add.7.i = sub i64 %sub5.7.i, %15
  %arrayidx11.7.i = getelementptr inbounds %struct.gf_s, %struct.gf_s* %c, i64 0, i32 0, i64 7
  %shr.i.i = lshr i64 %add.7.i, 56
  %add.i.i = add i64 %shr.i.i, %add.4.i
  %and.i.i = and i64 %add.7.i, 72057594037927935
  %shr8.i.i = lshr i64 %add.6.i, 56
  %add9.i.i = add nuw nsw i64 %and.i.i, %shr8.i.i
  store i64 %add9.i.i, i64* %arrayidx11.7.i, align 8, !tbaa !4
  %and.1.i.i = and i64 %add.6.i, 72057594037927935
  %shr8.1.i.i = lshr i64 %add.5.i, 56
  %add9.1.i.i = add nuw nsw i64 %and.1.i.i, %shr8.1.i.i
  store i64 %add9.1.i.i, i64* %arrayidx11.6.i, align 8, !tbaa !4
  %and.2.i.i = and i64 %add.5.i, 72057594037927935
  %shr8.2.i.i = lshr i64 %add.i.i, 56
  %add9.2.i.i = add nuw nsw i64 %shr8.2.i.i, %and.2.i.i
  store i64 %add9.2.i.i, i64* %arrayidx11.5.i, align 8, !tbaa !4
  %and.3.i.i = and i64 %add.i.i, 72057594037927935
  %shr8.3.i.i = lshr i64 %add.3.i, 56
  %add9.3.i.i = add nuw nsw i64 %and.3.i.i, %shr8.3.i.i
  store i64 %add9.3.i.i, i64* %arrayidx11.4.i, align 8, !tbaa !4
  %and.4.i.i = and i64 %add.3.i, 72057594037927935
  %shr8.4.i.i = lshr i64 %add.2.i, 56
  %add9.4.i.i = add nuw nsw i64 %and.4.i.i, %shr8.4.i.i
  store i64 %add9.4.i.i, i64* %arrayidx11.3.i, align 8, !tbaa !4
  %and.5.i.i = and i64 %add.2.i, 72057594037927935
  %shr8.5.i.i = lshr i64 %add.1.i, 56
  %add9.5.i.i = add nuw nsw i64 %and.5.i.i, %shr8.5.i.i
  store i64 %add9.5.i.i, i64* %arrayidx11.2.i, align 8, !tbaa !4
  %and.6.i.i = and i64 %add.1.i, 72057594037927935
  %shr8.6.i.i = lshr i64 %add.i, 56
  %add9.6.i.i = add nuw nsw i64 %and.6.i.i, %shr8.6.i.i
  store i64 %add9.6.i.i, i64* %arrayidx11.1.i, align 8, !tbaa !4
  %and15.i.i = and i64 %add.i, 72057594037927935
  %add16.i.i = add nuw nsw i64 %shr.i.i, %and15.i.i
  store i64 %add16.i.i, i64* %arrayidx11.i, align 16, !tbaa !4
  ret void
}

declare void @gf_mulw_unsigned(%struct.gf_s* noundef, %struct.gf_s* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @constant_time_lookup(i8* noundef %out, i8* nocapture noundef readonly %table, i64 noundef %idx) unnamed_addr #0 {
entry:
  %call = tail call i8* @memset(i8* noundef %out, i32 noundef 0, i64 noundef 192) #15
  br label %for.body

for.body:                                         ; preds = %entry, %for.inc10
  %idx.addr.06 = phi i64 [ %idx, %entry ], [ %dec, %for.inc10 ]
  %i.05 = phi i64 [ 0, %entry ], [ %inc11, %for.inc10 ]
  %tablec.04 = phi i8* [ %table, %entry ], [ %incdec.ptr, %for.inc10 ]
  %call1 = tail call fastcc i64 @constant_time_is_zero_s(i64 noundef %idx.addr.06) #13
  %conv = trunc i64 %call1 to i8
  br label %for.body5

for.body5:                                        ; preds = %for.body, %for.body5
  %tablec.13 = phi i8* [ %tablec.04, %for.body ], [ %incdec.ptr, %for.body5 ]
  %j.02 = phi i64 [ 0, %for.body ], [ %inc, %for.body5 ]
  %incdec.ptr = getelementptr inbounds i8, i8* %tablec.13, i64 1
  %0 = load i8, i8* %tablec.13, align 1, !tbaa !12
  %call6 = tail call fastcc zeroext i8 @constant_time_select_8(i8 noundef zeroext %conv, i8 noundef zeroext %0) #13
  %add.ptr = getelementptr inbounds i8, i8* %out, i64 %j.02
  %1 = load i8, i8* %add.ptr, align 1, !tbaa !12
  %or1 = or i8 %1, %call6
  store i8 %or1, i8* %add.ptr, align 1, !tbaa !12
  %inc = add nuw nsw i64 %j.02, 1
  %exitcond.not = icmp eq i64 %inc, 192
  br i1 %exitcond.not, label %for.inc10, label %for.body5, !llvm.loop !36

for.inc10:                                        ; preds = %for.body5
  %inc11 = add nuw nsw i64 %i.05, 1
  %dec = add i64 %idx.addr.06, -1
  %exitcond7.not = icmp eq i64 %inc11, 16
  br i1 %exitcond7.not, label %for.end12, label %for.body, !llvm.loop !37

for.end12:                                        ; preds = %for.inc10
  ret void
}

; Function Attrs: nounwind
declare i8* @memset(i8* noundef, i32 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc i64 @constant_time_is_zero_s(i64 noundef %a) unnamed_addr #5 {
entry:
  %neg = xor i64 %a, -1
  %sub = add i64 %a, -1
  %and = and i64 %sub, %neg
  %call = tail call fastcc i64 @constant_time_msb_s(i64 noundef %and) #13
  ret i64 %call
}

; Function Attrs: nofree noinline nosync nounwind readnone uwtable
define internal fastcc zeroext i8 @constant_time_select_8(i8 noundef zeroext %mask, i8 noundef zeroext %a) unnamed_addr #9 {
entry:
  %conv = zext i8 %mask to i32
  %conv1 = zext i8 %a to i32
  %call = tail call fastcc i32 @constant_time_select(i32 noundef %conv, i32 noundef %conv1) #13
  %conv3 = trunc i32 %call to i8
  ret i8 %conv3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc i64 @constant_time_msb_s(i64 noundef %a) unnamed_addr #5 {
entry:
  %shr.neg = ashr i64 %a, 63
  ret i64 %shr.neg
}

; Function Attrs: nofree noinline nosync nounwind readnone uwtable
define internal fastcc i32 @constant_time_select(i32 noundef %mask, i32 noundef %a) unnamed_addr #9 {
entry:
  %call = tail call fastcc i32 @value_barrier(i32 noundef %mask) #13
  %and = and i32 %call, %a
  %neg = xor i32 %mask, -1
  %call1 = tail call fastcc i32 @value_barrier(i32 noundef %neg) #13
  ret i32 %and
}

; Function Attrs: nofree noinline nosync nounwind readnone uwtable
define internal fastcc i32 @value_barrier(i32 noundef %a) unnamed_addr #9 {
entry:
  %0 = tail call i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %a) #16, !srcloc !38
  ret i32 %0
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #10

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc i64 @constant_time_msb_64(i64 noundef %a) unnamed_addr #5 {
entry:
  %shr.neg = ashr i64 %a, 63
  ret i64 %shr.neg
}

; Function Attrs: nofree noinline nosync nounwind uwtable
define internal fastcc void @gf_cond_sel(%struct.gf_s* nocapture noundef writeonly %x, %struct.gf_s* nocapture noundef readonly %y, %struct.gf_s* nocapture noundef readonly %z, i64 noundef %is_z) unnamed_addr #8 {
entry:
  %arrayidx1 = getelementptr inbounds %struct.gf_s, %struct.gf_s* %z, i64 0, i32 0, i64 0
  %0 = load i64, i64* %arrayidx1, align 8, !tbaa !4
  %arrayidx4 = getelementptr inbounds %struct.gf_s, %struct.gf_s* %y, i64 0, i32 0, i64 0
  %1 = load i64, i64* %arrayidx4, align 8, !tbaa !4
  %call = tail call fastcc i64 @constant_time_select_64(i64 noundef %is_z, i64 noundef %0, i64 noundef %1) #13
  %arrayidx7 = getelementptr inbounds %struct.gf_s, %struct.gf_s* %x, i64 0, i32 0, i64 0
  store i64 %call, i64* %arrayidx7, align 8, !tbaa !4
  %arrayidx1.1 = getelementptr inbounds %struct.gf_s, %struct.gf_s* %z, i64 0, i32 0, i64 1
  %2 = load i64, i64* %arrayidx1.1, align 8, !tbaa !4
  %arrayidx4.1 = getelementptr inbounds %struct.gf_s, %struct.gf_s* %y, i64 0, i32 0, i64 1
  %3 = load i64, i64* %arrayidx4.1, align 8, !tbaa !4
  %call.1 = tail call fastcc i64 @constant_time_select_64(i64 noundef %is_z, i64 noundef %2, i64 noundef %3) #13
  %arrayidx7.1 = getelementptr inbounds %struct.gf_s, %struct.gf_s* %x, i64 0, i32 0, i64 1
  store i64 %call.1, i64* %arrayidx7.1, align 8, !tbaa !4
  %arrayidx1.2 = getelementptr inbounds %struct.gf_s, %struct.gf_s* %z, i64 0, i32 0, i64 2
  %4 = load i64, i64* %arrayidx1.2, align 8, !tbaa !4
  %arrayidx4.2 = getelementptr inbounds %struct.gf_s, %struct.gf_s* %y, i64 0, i32 0, i64 2
  %5 = load i64, i64* %arrayidx4.2, align 8, !tbaa !4
  %call.2 = tail call fastcc i64 @constant_time_select_64(i64 noundef %is_z, i64 noundef %4, i64 noundef %5) #13
  %arrayidx7.2 = getelementptr inbounds %struct.gf_s, %struct.gf_s* %x, i64 0, i32 0, i64 2
  store i64 %call.2, i64* %arrayidx7.2, align 8, !tbaa !4
  %arrayidx1.3 = getelementptr inbounds %struct.gf_s, %struct.gf_s* %z, i64 0, i32 0, i64 3
  %6 = load i64, i64* %arrayidx1.3, align 8, !tbaa !4
  %arrayidx4.3 = getelementptr inbounds %struct.gf_s, %struct.gf_s* %y, i64 0, i32 0, i64 3
  %7 = load i64, i64* %arrayidx4.3, align 8, !tbaa !4
  %call.3 = tail call fastcc i64 @constant_time_select_64(i64 noundef %is_z, i64 noundef %6, i64 noundef %7) #13
  %arrayidx7.3 = getelementptr inbounds %struct.gf_s, %struct.gf_s* %x, i64 0, i32 0, i64 3
  store i64 %call.3, i64* %arrayidx7.3, align 8, !tbaa !4
  %arrayidx1.4 = getelementptr inbounds %struct.gf_s, %struct.gf_s* %z, i64 0, i32 0, i64 4
  %8 = load i64, i64* %arrayidx1.4, align 8, !tbaa !4
  %arrayidx4.4 = getelementptr inbounds %struct.gf_s, %struct.gf_s* %y, i64 0, i32 0, i64 4
  %9 = load i64, i64* %arrayidx4.4, align 8, !tbaa !4
  %call.4 = tail call fastcc i64 @constant_time_select_64(i64 noundef %is_z, i64 noundef %8, i64 noundef %9) #13
  %arrayidx7.4 = getelementptr inbounds %struct.gf_s, %struct.gf_s* %x, i64 0, i32 0, i64 4
  store i64 %call.4, i64* %arrayidx7.4, align 8, !tbaa !4
  %arrayidx1.5 = getelementptr inbounds %struct.gf_s, %struct.gf_s* %z, i64 0, i32 0, i64 5
  %10 = load i64, i64* %arrayidx1.5, align 8, !tbaa !4
  %arrayidx4.5 = getelementptr inbounds %struct.gf_s, %struct.gf_s* %y, i64 0, i32 0, i64 5
  %11 = load i64, i64* %arrayidx4.5, align 8, !tbaa !4
  %call.5 = tail call fastcc i64 @constant_time_select_64(i64 noundef %is_z, i64 noundef %10, i64 noundef %11) #13
  %arrayidx7.5 = getelementptr inbounds %struct.gf_s, %struct.gf_s* %x, i64 0, i32 0, i64 5
  store i64 %call.5, i64* %arrayidx7.5, align 8, !tbaa !4
  %arrayidx1.6 = getelementptr inbounds %struct.gf_s, %struct.gf_s* %z, i64 0, i32 0, i64 6
  %12 = load i64, i64* %arrayidx1.6, align 8, !tbaa !4
  %arrayidx4.6 = getelementptr inbounds %struct.gf_s, %struct.gf_s* %y, i64 0, i32 0, i64 6
  %13 = load i64, i64* %arrayidx4.6, align 8, !tbaa !4
  %call.6 = tail call fastcc i64 @constant_time_select_64(i64 noundef %is_z, i64 noundef %12, i64 noundef %13) #13
  %arrayidx7.6 = getelementptr inbounds %struct.gf_s, %struct.gf_s* %x, i64 0, i32 0, i64 6
  store i64 %call.6, i64* %arrayidx7.6, align 8, !tbaa !4
  %arrayidx1.7 = getelementptr inbounds %struct.gf_s, %struct.gf_s* %z, i64 0, i32 0, i64 7
  %14 = load i64, i64* %arrayidx1.7, align 8, !tbaa !4
  %arrayidx4.7 = getelementptr inbounds %struct.gf_s, %struct.gf_s* %y, i64 0, i32 0, i64 7
  %15 = load i64, i64* %arrayidx4.7, align 8, !tbaa !4
  %call.7 = tail call fastcc i64 @constant_time_select_64(i64 noundef %is_z, i64 noundef %14, i64 noundef %15) #13
  %arrayidx7.7 = getelementptr inbounds %struct.gf_s, %struct.gf_s* %x, i64 0, i32 0, i64 7
  store i64 %call.7, i64* %arrayidx7.7, align 8, !tbaa !4
  ret void
}

; Function Attrs: nofree noinline nosync nounwind readnone uwtable
define internal fastcc i64 @constant_time_select_64(i64 noundef %mask, i64 noundef %a, i64 noundef %b) unnamed_addr #9 {
entry:
  %call = tail call fastcc i64 @value_barrier_64(i64 noundef %mask) #13
  %and = and i64 %call, %a
  %neg = xor i64 %mask, -1
  %call1 = tail call fastcc i64 @value_barrier_64(i64 noundef %neg) #13
  %and2 = and i64 %call1, %b
  %or = or i64 %and2, %and
  ret i64 %or
}

; Function Attrs: nofree noinline nosync nounwind readnone uwtable
define internal fastcc i64 @value_barrier_64(i64 noundef %a) unnamed_addr #9 {
entry:
  %0 = tail call i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %a) #16, !srcloc !39
  ret i64 %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define internal fastcc void @constant_time_cond_swap_64(i64 noundef %mask, i64* nocapture noundef %a, i64* nocapture noundef %b) unnamed_addr #7 {
entry:
  %0 = load i64, i64* %a, align 8, !tbaa !4
  %1 = load i64, i64* %b, align 8, !tbaa !4
  %xor1 = xor i64 %1, %0
  %and = and i64 %xor1, %mask
  %xor2 = xor i64 %and, %0
  store i64 %xor2, i64* %a, align 8, !tbaa !4
  %2 = load i64, i64* %b, align 8, !tbaa !4
  %xor3 = xor i64 %2, %and
  store i64 %xor3, i64* %b, align 8, !tbaa !4
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #11

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @pt_to_pniels(%struct.anon* noundef %b, %struct.curve448_point_s* noundef %a) unnamed_addr #0 {
entry:
  %arraydecay2 = getelementptr inbounds %struct.anon, %struct.anon* %b, i64 0, i32 0, i64 0, i32 0, i64 0
  %arraydecay3 = getelementptr inbounds %struct.curve448_point_s, %struct.curve448_point_s* %a, i64 0, i32 1, i64 0
  %arraydecay4 = getelementptr inbounds %struct.curve448_point_s, %struct.curve448_point_s* %a, i64 0, i32 0, i64 0
  tail call void @gf_sub(%struct.gf_s* noundef %arraydecay2, %struct.gf_s* noundef nonnull %arraydecay3, %struct.gf_s* noundef %arraydecay4) #15
  %arraydecay8 = getelementptr inbounds %struct.anon, %struct.anon* %b, i64 0, i32 0, i64 0, i32 1, i64 0
  tail call void @gf_add(%struct.gf_s* noundef nonnull %arraydecay8, %struct.gf_s* noundef %arraydecay4, %struct.gf_s* noundef nonnull %arraydecay3) #15
  %arraydecay15 = getelementptr inbounds %struct.anon, %struct.anon* %b, i64 0, i32 0, i64 0, i32 2, i64 0
  %arraydecay16 = getelementptr inbounds %struct.curve448_point_s, %struct.curve448_point_s* %a, i64 0, i32 3, i64 0
  tail call fastcc void @gf_mulw(%struct.gf_s* noundef nonnull %arraydecay15, %struct.gf_s* noundef nonnull %arraydecay16, i32 noundef -78164) #13
  %arraydecay17 = getelementptr inbounds %struct.anon, %struct.anon* %b, i64 0, i32 1, i64 0
  %arraydecay19 = getelementptr inbounds %struct.curve448_point_s, %struct.curve448_point_s* %a, i64 0, i32 2, i64 0
  tail call void @gf_add(%struct.gf_s* noundef nonnull %arraydecay17, %struct.gf_s* noundef nonnull %arraydecay19, %struct.gf_s* noundef nonnull %arraydecay19) #15
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #12

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline nosync nounwind uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree noinline norecurse nosync nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree noinline nosync nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree noinline nosync nounwind readnone uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #11 = { mustprogress nofree nosync nounwind readnone speculatable willreturn }
attributes #12 = { argmemonly nofree nounwind willreturn writeonly }
attributes #13 = { nobuiltin "no-builtins" }
attributes #14 = { nounwind }
attributes #15 = { nobuiltin nounwind "no-builtins" }
attributes #16 = { nounwind readnone }

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
!10 = distinct !{!10, !9}
!11 = !{i64 0, i64 64, !12}
!12 = !{!6, !6, i64 0}
!13 = !{i64 0, i64 64, !12, i64 64, i64 64, !12, i64 128, i64 64, !12, i64 192, i64 64, !12}
!14 = distinct !{!14, !9}
!15 = !{!16, !16, i64 0}
!16 = !{!"any pointer", !6, i64 0}
!17 = !{!18, !19, i64 0}
!18 = !{!"smvt_control", !19, i64 0, !19, i64 4}
!19 = !{!"int", !6, i64 0}
!20 = !{!18, !19, i64 4}
!21 = distinct !{!21, !9}
!22 = !{i32 0, i32 33}
!23 = distinct !{!23, !9}
!24 = distinct !{!24, !9}
!25 = !{!26}
!26 = distinct !{!26, !27}
!27 = distinct !{!27, !"LVerDomain"}
!28 = !{!29}
!29 = distinct !{!29, !27}
!30 = distinct !{!30, !9, !31}
!31 = !{!"llvm.loop.isvectorized", i32 1}
!32 = distinct !{!32, !33}
!33 = !{!"llvm.loop.unroll.disable"}
!34 = distinct !{!34, !33}
!35 = distinct !{!35, !9, !31}
!36 = distinct !{!36, !9}
!37 = distinct !{!37, !9}
!38 = !{i64 701642}
!39 = !{i64 702164}
