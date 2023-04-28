; ModuleID = 'crypto/ec/curve448/arch_64/f_impl64.c'
source_filename = "crypto/ec/curve448/arch_64/f_impl64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gf_s = type { [8 x i64] }

; Function Attrs: nofree noinline nosync nounwind uwtable
define void @gf_mul(%struct.gf_s* noalias nocapture noundef %cs, %struct.gf_s* nocapture noundef readonly %as, %struct.gf_s* nocapture noundef readonly %bs) local_unnamed_addr #0 {
entry:
  %aa = alloca [4 x i64], align 16
  %bb = alloca [4 x i64], align 16
  %bbb = alloca [4 x i64], align 16
  %0 = bitcast [4 x i64]* %aa to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %0) #4
  %1 = bitcast [4 x i64]* %bb to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %1) #4
  %2 = bitcast [4 x i64]* %bbb to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %2) #4
  %arrayidx6 = getelementptr inbounds %struct.gf_s, %struct.gf_s* %as, i64 0, i32 0, i64 4
  %arrayidx14 = getelementptr inbounds %struct.gf_s, %struct.gf_s* %bs, i64 0, i32 0, i64 4
  %arrayidx17 = getelementptr inbounds [4 x i64], [4 x i64]* %bb, i64 0, i64 0
  %3 = bitcast %struct.gf_s* %bs to <2 x i64>*
  %4 = load <2 x i64>, <2 x i64>* %3, align 8, !tbaa !4
  %5 = bitcast i64* %arrayidx14 to <2 x i64>*
  %6 = load <2 x i64>, <2 x i64>* %5, align 8, !tbaa !4
  %7 = add <2 x i64> %6, %4
  %8 = extractelement <2 x i64> %7, i64 0
  store i64 %8, i64* %arrayidx17, align 16, !tbaa !4
  %9 = bitcast %struct.gf_s* %as to <2 x i64>*
  %10 = load <2 x i64>, <2 x i64>* %9, align 8, !tbaa !4
  %11 = bitcast i64* %arrayidx6 to <2 x i64>*
  %12 = load <2 x i64>, <2 x i64>* %11, align 8, !tbaa !4
  %13 = add <2 x i64> %12, %10
  %14 = bitcast [4 x i64]* %aa to <2 x i64>*
  store <2 x i64> %13, <2 x i64>* %14, align 16, !tbaa !4
  %arrayidx17.1 = getelementptr inbounds [4 x i64], [4 x i64]* %bb, i64 0, i64 1
  %15 = extractelement <2 x i64> %7, i64 1
  store i64 %15, i64* %arrayidx17.1, align 8, !tbaa !4
  %16 = add <2 x i64> %7, %6
  %17 = bitcast [4 x i64]* %bbb to <2 x i64>*
  store <2 x i64> %16, <2 x i64>* %17, align 16, !tbaa !4
  %arrayidx.2 = getelementptr inbounds %struct.gf_s, %struct.gf_s* %as, i64 0, i32 0, i64 2
  %arrayidx6.2 = getelementptr inbounds %struct.gf_s, %struct.gf_s* %as, i64 0, i32 0, i64 6
  %arrayidx9.2 = getelementptr inbounds [4 x i64], [4 x i64]* %aa, i64 0, i64 2
  %arrayidx11.2 = getelementptr inbounds %struct.gf_s, %struct.gf_s* %bs, i64 0, i32 0, i64 2
  %arrayidx14.2 = getelementptr inbounds %struct.gf_s, %struct.gf_s* %bs, i64 0, i32 0, i64 6
  %arrayidx17.2 = getelementptr inbounds [4 x i64], [4 x i64]* %bb, i64 0, i64 2
  %18 = bitcast i64* %arrayidx11.2 to <2 x i64>*
  %19 = load <2 x i64>, <2 x i64>* %18, align 8, !tbaa !4
  %20 = bitcast i64* %arrayidx14.2 to <2 x i64>*
  %21 = load <2 x i64>, <2 x i64>* %20, align 8, !tbaa !4
  %22 = add <2 x i64> %21, %19
  %23 = extractelement <2 x i64> %22, i64 0
  store i64 %23, i64* %arrayidx17.2, align 16, !tbaa !4
  %arrayidx25.2 = getelementptr inbounds [4 x i64], [4 x i64]* %bbb, i64 0, i64 2
  %24 = bitcast i64* %arrayidx.2 to <2 x i64>*
  %25 = load <2 x i64>, <2 x i64>* %24, align 8, !tbaa !4
  %26 = bitcast i64* %arrayidx6.2 to <2 x i64>*
  %27 = load <2 x i64>, <2 x i64>* %26, align 8, !tbaa !4
  %28 = add <2 x i64> %27, %25
  %29 = bitcast i64* %arrayidx9.2 to <2 x i64>*
  store <2 x i64> %28, <2 x i64>* %29, align 16, !tbaa !4
  %arrayidx17.3 = getelementptr inbounds [4 x i64], [4 x i64]* %bb, i64 0, i64 3
  %30 = extractelement <2 x i64> %22, i64 1
  store i64 %30, i64* %arrayidx17.3, align 8, !tbaa !4
  %31 = add <2 x i64> %22, %21
  %32 = bitcast i64* %arrayidx25.2 to <2 x i64>*
  store <2 x i64> %31, <2 x i64>* %32, align 16, !tbaa !4
  br label %for.cond29.preheader

for.cond29.preheader:                             ; preds = %entry, %for.end91
  %indvars.iv246 = phi i64 [ 0, %entry ], [ %indvars.iv.next247, %for.end91 ]
  %indvars.iv233 = phi i64 [ 1, %entry ], [ %indvars.iv.next234, %for.end91 ]
  %accum0.0227 = phi i128 [ 0, %entry ], [ %shr, %for.end91 ]
  %accum1.0226 = phi i128 [ 0, %entry ], [ %shr101, %for.end91 ]
  br label %for.body31

for.cond58.preheader:                             ; preds = %for.body31
  %33 = icmp ult i64 %indvars.iv233, 4
  br i1 %33, label %for.body60, label %for.end91

for.body31:                                       ; preds = %for.cond29.preheader, %for.body31
  %indvars.iv = phi i64 [ 0, %for.cond29.preheader ], [ %indvars.iv.next, %for.body31 ]
  %accum0.1216 = phi i128 [ %accum0.0227, %for.cond29.preheader ], [ %add54, %for.body31 ]
  %accum1.1215 = phi i128 [ %accum1.0226, %for.cond29.preheader ], [ %add44, %for.body31 ]
  %accum2.0214 = phi i128 [ 0, %for.cond29.preheader ], [ %add36, %for.body31 ]
  %arrayidx33 = getelementptr inbounds %struct.gf_s, %struct.gf_s* %as, i64 0, i32 0, i64 %indvars.iv
  %34 = load i64, i64* %arrayidx33, align 8, !tbaa !4
  %35 = sub nsw i64 %indvars.iv246, %indvars.iv
  %idxprom34 = and i64 %35, 4294967295
  %arrayidx35 = getelementptr inbounds %struct.gf_s, %struct.gf_s* %bs, i64 0, i32 0, i64 %idxprom34
  %36 = load i64, i64* %arrayidx35, align 8, !tbaa !4
  %call = tail call fastcc { i64, i64 } @widemul(i64 noundef %34, i64 noundef %36) #5
  %37 = extractvalue { i64, i64 } %call, 0
  %38 = extractvalue { i64, i64 } %call, 1
  %coerce.sroa.2.0.insert.ext = zext i64 %38 to i128
  %coerce.sroa.2.0.insert.shift = shl nuw i128 %coerce.sroa.2.0.insert.ext, 64
  %coerce.sroa.0.0.insert.ext = zext i64 %37 to i128
  %coerce.sroa.0.0.insert.insert = add i128 %accum2.0214, %coerce.sroa.0.0.insert.ext
  %add36 = add i128 %coerce.sroa.0.0.insert.insert, %coerce.sroa.2.0.insert.shift
  %arrayidx38 = getelementptr inbounds [4 x i64], [4 x i64]* %aa, i64 0, i64 %indvars.iv
  %39 = load i64, i64* %arrayidx38, align 8, !tbaa !4
  %arrayidx41 = getelementptr inbounds [4 x i64], [4 x i64]* %bb, i64 0, i64 %idxprom34
  %40 = load i64, i64* %arrayidx41, align 8, !tbaa !4
  %call42 = tail call fastcc { i64, i64 } @widemul(i64 noundef %39, i64 noundef %40) #5
  %41 = extractvalue { i64, i64 } %call42, 0
  %42 = extractvalue { i64, i64 } %call42, 1
  %coerce43.sroa.2.0.insert.ext = zext i64 %42 to i128
  %coerce43.sroa.2.0.insert.shift = shl nuw i128 %coerce43.sroa.2.0.insert.ext, 64
  %coerce43.sroa.0.0.insert.ext = zext i64 %41 to i128
  %coerce43.sroa.0.0.insert.insert = add i128 %accum1.1215, %coerce43.sroa.0.0.insert.ext
  %add44 = add i128 %coerce43.sroa.0.0.insert.insert, %coerce43.sroa.2.0.insert.shift
  %43 = add nuw nsw i64 %indvars.iv, 4
  %arrayidx47 = getelementptr inbounds %struct.gf_s, %struct.gf_s* %as, i64 0, i32 0, i64 %43
  %44 = load i64, i64* %arrayidx47, align 8, !tbaa !4
  %45 = add nsw i64 %35, 4
  %arrayidx51 = getelementptr inbounds %struct.gf_s, %struct.gf_s* %bs, i64 0, i32 0, i64 %45
  %46 = load i64, i64* %arrayidx51, align 8, !tbaa !4
  %call52 = tail call fastcc { i64, i64 } @widemul(i64 noundef %44, i64 noundef %46) #5
  %47 = extractvalue { i64, i64 } %call52, 0
  %48 = extractvalue { i64, i64 } %call52, 1
  %coerce53.sroa.2.0.insert.ext = zext i64 %48 to i128
  %coerce53.sroa.2.0.insert.shift = shl nuw i128 %coerce53.sroa.2.0.insert.ext, 64
  %coerce53.sroa.0.0.insert.ext = zext i64 %47 to i128
  %coerce53.sroa.0.0.insert.insert = add i128 %accum0.1216, %coerce53.sroa.0.0.insert.ext
  %add54 = add i128 %coerce53.sroa.0.0.insert.insert, %coerce53.sroa.2.0.insert.shift
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond = icmp eq i64 %indvars.iv.next, %indvars.iv233
  br i1 %exitcond, label %for.cond58.preheader, label %for.body31, !llvm.loop !8

for.body60:                                       ; preds = %for.cond58.preheader, %for.body60
  %indvars.iv238 = phi i64 [ %indvars.iv.next239, %for.body60 ], [ %indvars.iv233, %for.cond58.preheader ]
  %accum0.2221 = phi i128 [ %add88, %for.body60 ], [ %add54, %for.cond58.preheader ]
  %accum1.2220 = phi i128 [ %add78, %for.body60 ], [ %add44, %for.cond58.preheader ]
  %accum2.1219 = phi i128 [ %add69, %for.body60 ], [ %add36, %for.cond58.preheader ]
  %arrayidx62 = getelementptr inbounds %struct.gf_s, %struct.gf_s* %as, i64 0, i32 0, i64 %indvars.iv238
  %49 = load i64, i64* %arrayidx62, align 8, !tbaa !4
  %50 = sub nsw i64 %indvars.iv246, %indvars.iv238
  %51 = add nsw i64 %50, 8
  %arrayidx66 = getelementptr inbounds %struct.gf_s, %struct.gf_s* %bs, i64 0, i32 0, i64 %51
  %52 = load i64, i64* %arrayidx66, align 8, !tbaa !4
  %call67 = tail call fastcc { i64, i64 } @widemul(i64 noundef %49, i64 noundef %52) #5
  %53 = extractvalue { i64, i64 } %call67, 0
  %54 = extractvalue { i64, i64 } %call67, 1
  %coerce68.sroa.2.0.insert.ext = zext i64 %54 to i128
  %coerce68.sroa.2.0.insert.shift = shl nuw i128 %coerce68.sroa.2.0.insert.ext, 64
  %coerce68.sroa.0.0.insert.ext = zext i64 %53 to i128
  %coerce68.sroa.0.0.insert.insert = add i128 %accum2.1219, %coerce68.sroa.0.0.insert.ext
  %add69 = add i128 %coerce68.sroa.0.0.insert.insert, %coerce68.sroa.2.0.insert.shift
  %arrayidx71 = getelementptr inbounds [4 x i64], [4 x i64]* %aa, i64 0, i64 %indvars.iv238
  %55 = load i64, i64* %arrayidx71, align 8, !tbaa !4
  %56 = add nsw i64 %50, 4
  %arrayidx75 = getelementptr inbounds [4 x i64], [4 x i64]* %bbb, i64 0, i64 %56
  %57 = load i64, i64* %arrayidx75, align 8, !tbaa !4
  %call76 = tail call fastcc { i64, i64 } @widemul(i64 noundef %55, i64 noundef %57) #5
  %58 = extractvalue { i64, i64 } %call76, 0
  %59 = extractvalue { i64, i64 } %call76, 1
  %coerce77.sroa.2.0.insert.ext = zext i64 %59 to i128
  %coerce77.sroa.2.0.insert.shift = shl nuw i128 %coerce77.sroa.2.0.insert.ext, 64
  %coerce77.sroa.0.0.insert.ext = zext i64 %58 to i128
  %coerce77.sroa.0.0.insert.insert = add i128 %accum1.2220, %coerce77.sroa.0.0.insert.ext
  %add78 = add i128 %coerce77.sroa.0.0.insert.insert, %coerce77.sroa.2.0.insert.shift
  %60 = add nuw nsw i64 %indvars.iv238, 4
  %arrayidx81 = getelementptr inbounds %struct.gf_s, %struct.gf_s* %as, i64 0, i32 0, i64 %60
  %61 = load i64, i64* %arrayidx81, align 8, !tbaa !4
  %arrayidx85 = getelementptr inbounds [4 x i64], [4 x i64]* %bb, i64 0, i64 %56
  %62 = load i64, i64* %arrayidx85, align 8, !tbaa !4
  %call86 = tail call fastcc { i64, i64 } @widemul(i64 noundef %61, i64 noundef %62) #5
  %63 = extractvalue { i64, i64 } %call86, 0
  %64 = extractvalue { i64, i64 } %call86, 1
  %coerce87.sroa.2.0.insert.ext = zext i64 %64 to i128
  %coerce87.sroa.2.0.insert.shift = shl nuw i128 %coerce87.sroa.2.0.insert.ext, 64
  %coerce87.sroa.0.0.insert.ext = zext i64 %63 to i128
  %coerce87.sroa.0.0.insert.insert = add i128 %accum0.2221, %coerce87.sroa.0.0.insert.ext
  %add88 = add i128 %coerce87.sroa.0.0.insert.insert, %coerce87.sroa.2.0.insert.shift
  %indvars.iv.next239 = add nuw nsw i64 %indvars.iv238, 1
  %exitcond245.not = icmp eq i64 %indvars.iv.next239, 4
  br i1 %exitcond245.not, label %for.end91, label %for.body60, !llvm.loop !10

for.end91:                                        ; preds = %for.body60, %for.cond58.preheader
  %accum2.1.lcssa = phi i128 [ %add36, %for.cond58.preheader ], [ %add69, %for.body60 ]
  %accum1.2.lcssa = phi i128 [ %add44, %for.cond58.preheader ], [ %add78, %for.body60 ]
  %accum0.2.lcssa = phi i128 [ %add54, %for.cond58.preheader ], [ %add88, %for.body60 ]
  %sub92 = sub i128 %accum1.2.lcssa, %accum2.1.lcssa
  %add93 = add i128 %accum0.2.lcssa, %accum2.1.lcssa
  %conv = trunc i128 %add93 to i64
  %and = and i64 %conv, 72057594037927935
  %arrayidx95 = getelementptr inbounds %struct.gf_s, %struct.gf_s* %cs, i64 0, i32 0, i64 %indvars.iv246
  store i64 %and, i64* %arrayidx95, align 8, !tbaa !4
  %conv96 = trunc i128 %sub92 to i64
  %and97 = and i64 %conv96, 72057594037927935
  %65 = add nuw nsw i64 %indvars.iv246, 4
  %arrayidx100 = getelementptr inbounds %struct.gf_s, %struct.gf_s* %cs, i64 0, i32 0, i64 %65
  store i64 %and97, i64* %arrayidx100, align 8, !tbaa !4
  %shr = lshr i128 %add93, 56
  %shr101 = lshr i128 %sub92, 56
  %indvars.iv.next247 = add nuw nsw i64 %indvars.iv246, 1
  %indvars.iv.next234 = add nuw nsw i64 %indvars.iv233, 1
  %exitcond252.not = icmp eq i64 %indvars.iv.next247, 4
  br i1 %exitcond252.not, label %for.end104, label %for.cond29.preheader, !llvm.loop !11

for.end104:                                       ; preds = %for.end91
  %arraydecay4 = getelementptr inbounds %struct.gf_s, %struct.gf_s* %cs, i64 0, i32 0, i64 0
  %add105 = add nuw nsw i128 %shr, %shr101
  %arrayidx106 = getelementptr inbounds %struct.gf_s, %struct.gf_s* %cs, i64 0, i32 0, i64 4
  %66 = load i64, i64* %arrayidx106, align 8, !tbaa !4
  %conv107 = zext i64 %66 to i128
  %add108 = add nuw nsw i128 %add105, %conv107
  %67 = load i64, i64* %arraydecay4, align 8, !tbaa !4
  %conv110 = zext i64 %67 to i128
  %add111 = add nuw nsw i128 %shr101, %conv110
  %conv112 = trunc i128 %add108 to i64
  %and113 = and i64 %conv112, 72057594037927935
  store i64 %and113, i64* %arrayidx106, align 8, !tbaa !4
  %conv115 = trunc i128 %add111 to i64
  %and116 = and i64 %conv115, 72057594037927935
  store i64 %and116, i64* %arraydecay4, align 8, !tbaa !4
  %shr118 = lshr i128 %add108, 56
  %shr119 = lshr i128 %add111, 56
  %conv120 = trunc i128 %shr118 to i64
  %arrayidx121 = getelementptr inbounds %struct.gf_s, %struct.gf_s* %cs, i64 0, i32 0, i64 5
  %68 = load i64, i64* %arrayidx121, align 8, !tbaa !4
  %add122 = add i64 %68, %conv120
  store i64 %add122, i64* %arrayidx121, align 8, !tbaa !4
  %conv123 = trunc i128 %shr119 to i64
  %arrayidx124 = getelementptr inbounds %struct.gf_s, %struct.gf_s* %cs, i64 0, i32 0, i64 1
  %69 = load i64, i64* %arrayidx124, align 8, !tbaa !4
  %add125 = add i64 %69, %conv123
  store i64 %add125, i64* %arrayidx124, align 8, !tbaa !4
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %2) #4
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %1) #4
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc { i64, i64 } @widemul(i64 noundef %a, i64 noundef %b) unnamed_addr #2 {
entry:
  %conv = zext i64 %a to i128
  %conv1 = zext i64 %b to i128
  %mul = mul nuw i128 %conv1, %conv
  %retval.sroa.0.0.extract.trunc = trunc i128 %mul to i64
  %retval.sroa.2.0.extract.shift = lshr i128 %mul, 64
  %retval.sroa.2.0.extract.trunc = trunc i128 %retval.sroa.2.0.extract.shift to i64
  %.fca.0.insert = insertvalue { i64, i64 } poison, i64 %retval.sroa.0.0.extract.trunc, 0
  %.fca.1.insert = insertvalue { i64, i64 } %.fca.0.insert, i64 %retval.sroa.2.0.extract.trunc, 1
  ret { i64, i64 } %.fca.1.insert
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define void @gf_mulw_unsigned(%struct.gf_s* noalias nocapture noundef %cs, %struct.gf_s* nocapture noundef readonly %as, i32 noundef %b) local_unnamed_addr #3 {
entry:
  %conv = zext i32 %b to i64
  %arrayidx = getelementptr inbounds %struct.gf_s, %struct.gf_s* %as, i64 0, i32 0, i64 0
  %0 = load i64, i64* %arrayidx, align 8, !tbaa !4
  %call = tail call fastcc { i64, i64 } @widemul(i64 noundef %conv, i64 noundef %0) #5
  %1 = extractvalue { i64, i64 } %call, 0
  %2 = extractvalue { i64, i64 } %call, 1
  %coerce.sroa.2.0.insert.ext = zext i64 %2 to i128
  %coerce.sroa.2.0.insert.shift = shl nuw i128 %coerce.sroa.2.0.insert.ext, 64
  %coerce.sroa.0.0.insert.ext = zext i64 %1 to i128
  %add = or i128 %coerce.sroa.2.0.insert.shift, %coerce.sroa.0.0.insert.ext
  %arrayidx6 = getelementptr inbounds %struct.gf_s, %struct.gf_s* %as, i64 0, i32 0, i64 4
  %3 = load i64, i64* %arrayidx6, align 8, !tbaa !4
  %call7 = tail call fastcc { i64, i64 } @widemul(i64 noundef %conv, i64 noundef %3) #5
  %4 = extractvalue { i64, i64 } %call7, 0
  %5 = extractvalue { i64, i64 } %call7, 1
  %coerce8.sroa.2.0.insert.ext = zext i64 %5 to i128
  %coerce8.sroa.2.0.insert.shift = shl nuw i128 %coerce8.sroa.2.0.insert.ext, 64
  %coerce8.sroa.0.0.insert.ext = zext i64 %4 to i128
  %add9 = or i128 %coerce8.sroa.2.0.insert.shift, %coerce8.sroa.0.0.insert.ext
  %conv11 = and i64 %1, 72057594037927935
  %arrayidx13 = getelementptr inbounds %struct.gf_s, %struct.gf_s* %cs, i64 0, i32 0, i64 0
  store i64 %conv11, i64* %arrayidx13, align 8, !tbaa !4
  %shr = lshr i128 %add, 56
  %conv16 = and i64 %4, 72057594037927935
  %arrayidx19 = getelementptr inbounds %struct.gf_s, %struct.gf_s* %cs, i64 0, i32 0, i64 4
  %shr20 = lshr i128 %add9, 56
  %arrayidx.1 = getelementptr inbounds %struct.gf_s, %struct.gf_s* %as, i64 0, i32 0, i64 1
  %6 = load i64, i64* %arrayidx.1, align 8, !tbaa !4
  %call.1 = tail call fastcc { i64, i64 } @widemul(i64 noundef %conv, i64 noundef %6) #5
  %7 = extractvalue { i64, i64 } %call.1, 0
  %8 = extractvalue { i64, i64 } %call.1, 1
  %coerce.sroa.2.0.insert.ext.1 = zext i64 %8 to i128
  %coerce.sroa.2.0.insert.shift.1 = shl nuw i128 %coerce.sroa.2.0.insert.ext.1, 64
  %coerce.sroa.0.0.insert.ext.1 = zext i64 %7 to i128
  %coerce.sroa.0.0.insert.insert.1 = add nuw nsw i128 %shr, %coerce.sroa.0.0.insert.ext.1
  %add.1 = add i128 %coerce.sroa.0.0.insert.insert.1, %coerce.sroa.2.0.insert.shift.1
  %arrayidx6.1 = getelementptr inbounds %struct.gf_s, %struct.gf_s* %as, i64 0, i32 0, i64 5
  %9 = load i64, i64* %arrayidx6.1, align 8, !tbaa !4
  %call7.1 = tail call fastcc { i64, i64 } @widemul(i64 noundef %conv, i64 noundef %9) #5
  %10 = extractvalue { i64, i64 } %call7.1, 0
  %11 = extractvalue { i64, i64 } %call7.1, 1
  %coerce8.sroa.2.0.insert.ext.1 = zext i64 %11 to i128
  %coerce8.sroa.2.0.insert.shift.1 = shl nuw i128 %coerce8.sroa.2.0.insert.ext.1, 64
  %coerce8.sroa.0.0.insert.ext.1 = zext i64 %10 to i128
  %coerce8.sroa.0.0.insert.insert.1 = add nuw nsw i128 %shr20, %coerce8.sroa.0.0.insert.ext.1
  %add9.1 = add i128 %coerce8.sroa.0.0.insert.insert.1, %coerce8.sroa.2.0.insert.shift.1
  %12 = trunc i128 %add.1 to i64
  %conv11.1 = and i64 %12, 72057594037927935
  %arrayidx13.1 = getelementptr inbounds %struct.gf_s, %struct.gf_s* %cs, i64 0, i32 0, i64 1
  %shr.1 = lshr i128 %add.1, 56
  %13 = trunc i128 %add9.1 to i64
  %conv16.1 = and i64 %13, 72057594037927935
  %arrayidx19.1 = getelementptr inbounds %struct.gf_s, %struct.gf_s* %cs, i64 0, i32 0, i64 5
  %shr20.1 = lshr i128 %add9.1, 56
  %arrayidx.2 = getelementptr inbounds %struct.gf_s, %struct.gf_s* %as, i64 0, i32 0, i64 2
  %14 = load i64, i64* %arrayidx.2, align 8, !tbaa !4
  %call.2 = tail call fastcc { i64, i64 } @widemul(i64 noundef %conv, i64 noundef %14) #5
  %15 = extractvalue { i64, i64 } %call.2, 0
  %16 = extractvalue { i64, i64 } %call.2, 1
  %coerce.sroa.2.0.insert.ext.2 = zext i64 %16 to i128
  %coerce.sroa.2.0.insert.shift.2 = shl nuw i128 %coerce.sroa.2.0.insert.ext.2, 64
  %coerce.sroa.0.0.insert.ext.2 = zext i64 %15 to i128
  %coerce.sroa.0.0.insert.insert.2 = add nuw nsw i128 %shr.1, %coerce.sroa.0.0.insert.ext.2
  %add.2 = add i128 %coerce.sroa.0.0.insert.insert.2, %coerce.sroa.2.0.insert.shift.2
  %arrayidx6.2 = getelementptr inbounds %struct.gf_s, %struct.gf_s* %as, i64 0, i32 0, i64 6
  %17 = load i64, i64* %arrayidx6.2, align 8, !tbaa !4
  %call7.2 = tail call fastcc { i64, i64 } @widemul(i64 noundef %conv, i64 noundef %17) #5
  %18 = extractvalue { i64, i64 } %call7.2, 0
  %19 = extractvalue { i64, i64 } %call7.2, 1
  %coerce8.sroa.2.0.insert.ext.2 = zext i64 %19 to i128
  %coerce8.sroa.2.0.insert.shift.2 = shl nuw i128 %coerce8.sroa.2.0.insert.ext.2, 64
  %coerce8.sroa.0.0.insert.ext.2 = zext i64 %18 to i128
  %coerce8.sroa.0.0.insert.insert.2 = add nuw nsw i128 %shr20.1, %coerce8.sroa.0.0.insert.ext.2
  %add9.2 = add i128 %coerce8.sroa.0.0.insert.insert.2, %coerce8.sroa.2.0.insert.shift.2
  %arrayidx13.2 = getelementptr inbounds %struct.gf_s, %struct.gf_s* %cs, i64 0, i32 0, i64 2
  %shr.2 = lshr i128 %add.2, 56
  %arrayidx19.2 = getelementptr inbounds %struct.gf_s, %struct.gf_s* %cs, i64 0, i32 0, i64 6
  %shr20.2 = lshr i128 %add9.2, 56
  %arrayidx.3 = getelementptr inbounds %struct.gf_s, %struct.gf_s* %as, i64 0, i32 0, i64 3
  %20 = load i64, i64* %arrayidx.3, align 8, !tbaa !4
  %call.3 = tail call fastcc { i64, i64 } @widemul(i64 noundef %conv, i64 noundef %20) #5
  %21 = extractvalue { i64, i64 } %call.3, 0
  %22 = extractvalue { i64, i64 } %call.3, 1
  %coerce.sroa.2.0.insert.ext.3 = zext i64 %22 to i128
  %coerce.sroa.2.0.insert.shift.3 = shl nuw i128 %coerce.sroa.2.0.insert.ext.3, 64
  %coerce.sroa.0.0.insert.ext.3 = zext i64 %21 to i128
  %coerce.sroa.0.0.insert.insert.3 = add nuw nsw i128 %shr.2, %coerce.sroa.0.0.insert.ext.3
  %add.3 = add i128 %coerce.sroa.0.0.insert.insert.3, %coerce.sroa.2.0.insert.shift.3
  %arrayidx6.3 = getelementptr inbounds %struct.gf_s, %struct.gf_s* %as, i64 0, i32 0, i64 7
  %23 = load i64, i64* %arrayidx6.3, align 8, !tbaa !4
  %call7.3 = tail call fastcc { i64, i64 } @widemul(i64 noundef %conv, i64 noundef %23) #5
  %24 = extractvalue { i64, i64 } %call7.3, 0
  %25 = extractvalue { i64, i64 } %call7.3, 1
  %coerce8.sroa.2.0.insert.ext.3 = zext i64 %25 to i128
  %coerce8.sroa.2.0.insert.shift.3 = shl nuw i128 %coerce8.sroa.2.0.insert.ext.3, 64
  %coerce8.sroa.0.0.insert.ext.3 = zext i64 %24 to i128
  %coerce8.sroa.0.0.insert.insert.3 = add nuw nsw i128 %shr20.2, %coerce8.sroa.0.0.insert.ext.3
  %add9.3 = add i128 %coerce8.sroa.0.0.insert.insert.3, %coerce8.sroa.2.0.insert.shift.3
  %26 = insertelement <2 x i128> poison, i128 %add.2, i64 0
  %27 = insertelement <2 x i128> %26, i128 %add.3, i64 1
  %28 = trunc <2 x i128> %27 to <2 x i64>
  %29 = and <2 x i64> %28, <i64 72057594037927935, i64 72057594037927935>
  %30 = bitcast i64* %arrayidx13.2 to <2 x i64>*
  store <2 x i64> %29, <2 x i64>* %30, align 8, !tbaa !4
  %shr.3 = lshr i128 %add.3, 56
  %31 = insertelement <2 x i128> poison, i128 %add9.2, i64 0
  %32 = insertelement <2 x i128> %31, i128 %add9.3, i64 1
  %33 = trunc <2 x i128> %32 to <2 x i64>
  %34 = and <2 x i64> %33, <i64 72057594037927935, i64 72057594037927935>
  %35 = bitcast i64* %arrayidx19.2 to <2 x i64>*
  store <2 x i64> %34, <2 x i64>* %35, align 8, !tbaa !4
  %shr20.3 = lshr i128 %add9.3, 56
  %conv22 = zext i64 %conv16 to i128
  %add23 = add nuw nsw i128 %shr.3, %shr20.3
  %add24 = add nuw nsw i128 %add23, %conv22
  %36 = trunc i128 %add24 to i64
  %conv27 = and i64 %36, 72057594037927935
  store i64 %conv27, i64* %arrayidx19, align 8, !tbaa !4
  %shr29 = lshr i128 %add24, 56
  %37 = trunc i128 %shr29 to i64
  %conv33 = add nuw nsw i64 %conv16.1, %37
  store i64 %conv33, i64* %arrayidx19.1, align 8, !tbaa !4
  %38 = load i64, i64* %arrayidx13, align 8, !tbaa !4
  %conv35 = zext i64 %38 to i128
  %add36 = add nuw nsw i128 %shr20.3, %conv35
  %39 = trunc i128 %add36 to i64
  %conv39 = and i64 %39, 72057594037927935
  store i64 %conv39, i64* %arrayidx13, align 8, !tbaa !4
  %shr41 = lshr i128 %add36, 56
  %40 = trunc i128 %shr41 to i64
  %conv45 = add nuw nsw i64 %conv11.1, %40
  store i64 %conv45, i64* %arrayidx13.1, align 8, !tbaa !4
  ret void
}

; Function Attrs: nofree noinline nosync nounwind uwtable
define void @gf_sqr(%struct.gf_s* noalias nocapture noundef %cs, %struct.gf_s* nocapture noundef readonly %as) local_unnamed_addr #0 {
entry:
  %arrayidx = getelementptr inbounds %struct.gf_s, %struct.gf_s* %as, i64 0, i32 0, i64 0
  %0 = load i64, i64* %arrayidx, align 8, !tbaa !4
  %arrayidx4 = getelementptr inbounds %struct.gf_s, %struct.gf_s* %as, i64 0, i32 0, i64 4
  %1 = load i64, i64* %arrayidx4, align 8, !tbaa !4
  %add5 = add i64 %1, %0
  %arrayidx.1 = getelementptr inbounds %struct.gf_s, %struct.gf_s* %as, i64 0, i32 0, i64 1
  %2 = load i64, i64* %arrayidx.1, align 8, !tbaa !4
  %arrayidx4.1 = getelementptr inbounds %struct.gf_s, %struct.gf_s* %as, i64 0, i32 0, i64 5
  %3 = load i64, i64* %arrayidx4.1, align 8, !tbaa !4
  %add5.1 = add i64 %3, %2
  %arrayidx.2 = getelementptr inbounds %struct.gf_s, %struct.gf_s* %as, i64 0, i32 0, i64 2
  %4 = load i64, i64* %arrayidx.2, align 8, !tbaa !4
  %arrayidx4.2 = getelementptr inbounds %struct.gf_s, %struct.gf_s* %as, i64 0, i32 0, i64 6
  %5 = load i64, i64* %arrayidx4.2, align 8, !tbaa !4
  %add5.2 = add i64 %5, %4
  %arrayidx.3 = getelementptr inbounds %struct.gf_s, %struct.gf_s* %as, i64 0, i32 0, i64 3
  %6 = load i64, i64* %arrayidx.3, align 8, !tbaa !4
  %arrayidx4.3 = getelementptr inbounds %struct.gf_s, %struct.gf_s* %as, i64 0, i32 0, i64 7
  %7 = load i64, i64* %arrayidx4.3, align 8, !tbaa !4
  %add5.3 = add i64 %7, %6
  %arraydecay2 = getelementptr inbounds %struct.gf_s, %struct.gf_s* %cs, i64 0, i32 0, i64 0
  %call = tail call fastcc { i64, i64 } @widemul(i64 noundef %0, i64 noundef %6) #5
  %8 = extractvalue { i64, i64 } %call, 0
  %9 = extractvalue { i64, i64 } %call, 1
  %coerce.sroa.2.0.insert.ext = zext i64 %9 to i128
  %coerce.sroa.2.0.insert.shift = shl nuw i128 %coerce.sroa.2.0.insert.ext, 64
  %coerce.sroa.0.0.insert.ext = zext i64 %8 to i128
  %call12 = tail call fastcc { i64, i64 } @widemul(i64 noundef %add5, i64 noundef %add5.3) #5
  %10 = extractvalue { i64, i64 } %call12, 0
  %11 = extractvalue { i64, i64 } %call12, 1
  %coerce13.sroa.2.0.insert.ext = zext i64 %11 to i128
  %coerce13.sroa.2.0.insert.shift = shl nuw i128 %coerce13.sroa.2.0.insert.ext, 64
  %coerce13.sroa.0.0.insert.ext = zext i64 %10 to i128
  %call16 = tail call fastcc { i64, i64 } @widemul(i64 noundef %1, i64 noundef %7) #5
  %12 = extractvalue { i64, i64 } %call16, 0
  %13 = extractvalue { i64, i64 } %call16, 1
  %coerce17.sroa.2.0.insert.ext = zext i64 %13 to i128
  %coerce17.sroa.2.0.insert.shift = shl nuw i128 %coerce17.sroa.2.0.insert.ext, 64
  %coerce17.sroa.0.0.insert.ext = zext i64 %12 to i128
  %call20 = tail call fastcc { i64, i64 } @widemul(i64 noundef %2, i64 noundef %4) #5
  %14 = extractvalue { i64, i64 } %call20, 0
  %15 = extractvalue { i64, i64 } %call20, 1
  %coerce21.sroa.2.0.insert.ext = zext i64 %15 to i128
  %coerce21.sroa.2.0.insert.shift = shl nuw i128 %coerce21.sroa.2.0.insert.ext, 64
  %coerce21.sroa.0.0.insert.ext = zext i64 %14 to i128
  %coerce21.sroa.0.0.insert.insert = or i128 %coerce.sroa.2.0.insert.shift, %coerce.sroa.0.0.insert.ext
  %coerce.sroa.0.0.insert.insert = add i128 %coerce21.sroa.0.0.insert.insert, %coerce21.sroa.0.0.insert.ext
  %add22 = add i128 %coerce.sroa.0.0.insert.insert, %coerce21.sroa.2.0.insert.shift
  %call25 = tail call fastcc { i64, i64 } @widemul(i64 noundef %add5.1, i64 noundef %add5.2) #5
  %16 = extractvalue { i64, i64 } %call25, 0
  %17 = extractvalue { i64, i64 } %call25, 1
  %coerce26.sroa.2.0.insert.ext = zext i64 %17 to i128
  %coerce26.sroa.2.0.insert.shift = shl nuw i128 %coerce26.sroa.2.0.insert.ext, 64
  %coerce26.sroa.0.0.insert.ext = zext i64 %16 to i128
  %call30 = tail call fastcc { i64, i64 } @widemul(i64 noundef %3, i64 noundef %5) #5
  %18 = extractvalue { i64, i64 } %call30, 0
  %19 = extractvalue { i64, i64 } %call30, 1
  %coerce31.sroa.2.0.insert.ext = zext i64 %19 to i128
  %coerce31.sroa.2.0.insert.shift = shl nuw i128 %coerce31.sroa.2.0.insert.ext, 64
  %coerce31.sroa.0.0.insert.ext = zext i64 %18 to i128
  %coerce26.sroa.0.0.insert.insert = or i128 %coerce13.sroa.2.0.insert.shift, %coerce13.sroa.0.0.insert.ext
  %coerce13.sroa.0.0.insert.insert = sub i128 %coerce26.sroa.0.0.insert.insert, %add22
  %add27 = add i128 %coerce13.sroa.0.0.insert.insert, %coerce26.sroa.0.0.insert.ext
  %sub = add i128 %add27, %coerce26.sroa.2.0.insert.shift
  %coerce31.sroa.0.0.insert.insert = or i128 %coerce17.sroa.2.0.insert.shift, %coerce17.sroa.0.0.insert.ext
  %coerce17.sroa.0.0.insert.insert = add i128 %coerce31.sroa.0.0.insert.insert, %add22
  %add32 = add i128 %coerce17.sroa.0.0.insert.insert, %coerce31.sroa.0.0.insert.ext
  %add33 = add i128 %add32, %coerce31.sroa.2.0.insert.shift
  %conv = trunc i128 %add33 to i64
  %shl = shl i64 %conv, 1
  %and = and i64 %shl, 72057594037927934
  %arrayidx34 = getelementptr inbounds %struct.gf_s, %struct.gf_s* %cs, i64 0, i32 0, i64 3
  %conv35 = trunc i128 %sub to i64
  %shl36 = shl i64 %conv35, 1
  %and37 = and i64 %shl36, 72057594037927934
  %arrayidx38 = getelementptr inbounds %struct.gf_s, %struct.gf_s* %cs, i64 0, i32 0, i64 7
  %shr = lshr i128 %sub, 55
  %shr39 = lshr i128 %add33, 55
  %mul = shl i64 %add5.1, 1
  %call42 = tail call fastcc { i64, i64 } @widemul(i64 noundef %mul, i64 noundef %add5.3) #5
  %20 = extractvalue { i64, i64 } %call42, 0
  %21 = extractvalue { i64, i64 } %call42, 1
  %coerce43.sroa.2.0.insert.ext = zext i64 %21 to i128
  %coerce43.sroa.2.0.insert.shift = shl nuw i128 %coerce43.sroa.2.0.insert.ext, 64
  %coerce43.sroa.0.0.insert.ext = zext i64 %20 to i128
  %mul46 = shl i64 %3, 1
  %call48 = tail call fastcc { i64, i64 } @widemul(i64 noundef %mul46, i64 noundef %7) #5
  %22 = extractvalue { i64, i64 } %call48, 0
  %23 = extractvalue { i64, i64 } %call48, 1
  %coerce49.sroa.2.0.insert.ext = zext i64 %23 to i128
  %coerce49.sroa.2.0.insert.shift = shl nuw i128 %coerce49.sroa.2.0.insert.ext, 64
  %coerce49.sroa.0.0.insert.ext = zext i64 %22 to i128
  %call53 = tail call fastcc { i64, i64 } @widemul(i64 noundef %add5.2, i64 noundef %add5.2) #5
  %24 = extractvalue { i64, i64 } %call53, 0
  %25 = extractvalue { i64, i64 } %call53, 1
  %coerce54.sroa.2.0.insert.ext = zext i64 %25 to i128
  %coerce54.sroa.2.0.insert.shift = shl nuw i128 %coerce54.sroa.2.0.insert.ext, 64
  %coerce54.sroa.0.0.insert.ext = zext i64 %24 to i128
  %coerce54.sroa.0.0.insert.insert = add nuw nsw i128 %shr, %coerce43.sroa.0.0.insert.ext
  %coerce43.sroa.0.0.insert.insert = add i128 %coerce54.sroa.0.0.insert.insert, %coerce43.sroa.2.0.insert.shift
  %add44 = add i128 %coerce43.sroa.0.0.insert.insert, %coerce54.sroa.0.0.insert.ext
  %add55 = add i128 %add44, %coerce54.sroa.2.0.insert.shift
  %mul58 = shl i64 %2, 1
  %call60 = tail call fastcc { i64, i64 } @widemul(i64 noundef %mul58, i64 noundef %6) #5
  %26 = extractvalue { i64, i64 } %call60, 0
  %27 = extractvalue { i64, i64 } %call60, 1
  %coerce61.sroa.2.0.insert.ext = zext i64 %27 to i128
  %coerce61.sroa.2.0.insert.shift.neg368 = mul i128 %coerce61.sroa.2.0.insert.ext, -18446744073709551616
  %coerce61.sroa.0.0.insert.ext = zext i64 %26 to i128
  %call65 = tail call fastcc { i64, i64 } @widemul(i64 noundef %5, i64 noundef %5) #5
  %28 = extractvalue { i64, i64 } %call65, 0
  %29 = extractvalue { i64, i64 } %call65, 1
  %coerce66.sroa.2.0.insert.ext = zext i64 %29 to i128
  %coerce66.sroa.2.0.insert.shift = shl nuw i128 %coerce66.sroa.2.0.insert.ext, 64
  %coerce66.sroa.0.0.insert.ext = zext i64 %28 to i128
  %call70 = tail call fastcc { i64, i64 } @widemul(i64 noundef %0, i64 noundef %0) #5
  %30 = extractvalue { i64, i64 } %call70, 0
  %31 = extractvalue { i64, i64 } %call70, 1
  %coerce71.sroa.2.0.insert.ext = zext i64 %31 to i128
  %coerce71.sroa.2.0.insert.shift = shl nuw i128 %coerce71.sroa.2.0.insert.ext, 64
  %coerce71.sroa.0.0.insert.ext = zext i64 %30 to i128
  %coerce71.sroa.0.0.insert.insert = or i128 %coerce71.sroa.2.0.insert.shift, %coerce71.sroa.0.0.insert.ext
  %call76 = tail call fastcc { i64, i64 } @widemul(i64 noundef %4, i64 noundef %4) #5
  %32 = extractvalue { i64, i64 } %call76, 0
  %33 = extractvalue { i64, i64 } %call76, 1
  %coerce77.sroa.2.0.insert.ext = zext i64 %33 to i128
  %coerce77.sroa.2.0.insert.shift.neg369 = mul i128 %coerce77.sroa.2.0.insert.ext, -18446744073709551616
  %coerce77.sroa.0.0.insert.ext = zext i64 %32 to i128
  %call81 = tail call fastcc { i64, i64 } @widemul(i64 noundef %add5, i64 noundef %add5) #5
  %34 = extractvalue { i64, i64 } %call81, 0
  %35 = extractvalue { i64, i64 } %call81, 1
  %coerce82.sroa.2.0.insert.ext = zext i64 %35 to i128
  %coerce82.sroa.2.0.insert.shift = shl nuw i128 %coerce82.sroa.2.0.insert.ext, 64
  %coerce82.sroa.0.0.insert.ext = zext i64 %34 to i128
  %coerce82.sroa.0.0.insert.insert = or i128 %coerce49.sroa.2.0.insert.shift, %coerce49.sroa.0.0.insert.ext
  %coerce66.sroa.0.0.insert.insert = add i128 %coerce82.sroa.0.0.insert.insert, %shr39
  %coerce49.sroa.0.0.insert.insert = add i128 %coerce66.sroa.0.0.insert.insert, %add55
  %add50 = add i128 %coerce49.sroa.0.0.insert.insert, %coerce66.sroa.0.0.insert.ext
  %add56 = add i128 %add50, %coerce66.sroa.2.0.insert.shift
  %add67 = sub i128 %add56, %coerce71.sroa.0.0.insert.insert
  %sub72 = add i128 %add67, %coerce82.sroa.0.0.insert.ext
  %add83 = add i128 %sub72, %coerce82.sroa.2.0.insert.shift
  %call86 = tail call fastcc { i64, i64 } @widemul(i64 noundef %1, i64 noundef %1) #5
  %36 = extractvalue { i64, i64 } %call86, 0
  %37 = extractvalue { i64, i64 } %call86, 1
  %coerce87.sroa.2.0.insert.ext = zext i64 %37 to i128
  %coerce87.sroa.2.0.insert.shift = shl nuw i128 %coerce87.sroa.2.0.insert.ext, 64
  %coerce87.sroa.0.0.insert.ext = zext i64 %36 to i128
  %38 = add i128 %add55, %coerce61.sroa.2.0.insert.shift.neg368
  %39 = add nuw nsw i128 %coerce61.sroa.0.0.insert.ext, %coerce77.sroa.0.0.insert.ext
  %coerce61.sroa.0.0.insert.insert.neg = sub i128 %38, %39
  %.neg = add i128 %coerce61.sroa.0.0.insert.insert.neg, %coerce71.sroa.0.0.insert.insert
  %40 = add i128 %.neg, %coerce77.sroa.2.0.insert.shift.neg369
  %sub78 = add i128 %40, %coerce87.sroa.0.0.insert.ext
  %add88 = add i128 %sub78, %coerce87.sroa.2.0.insert.shift
  %conv89 = trunc i128 %add88 to i64
  %and90 = and i64 %conv89, 72057594037927935
  %conv92 = trunc i128 %add83 to i64
  %and93 = and i64 %conv92, 72057594037927935
  %arrayidx94 = getelementptr inbounds %struct.gf_s, %struct.gf_s* %cs, i64 0, i32 0, i64 4
  %shr95 = lshr i128 %add88, 56
  %shr96 = lshr i128 %add83, 56
  %mul98 = shl i64 %add5.2, 1
  %call100 = tail call fastcc { i64, i64 } @widemul(i64 noundef %mul98, i64 noundef %add5.3) #5
  %41 = extractvalue { i64, i64 } %call100, 0
  %42 = extractvalue { i64, i64 } %call100, 1
  %coerce101.sroa.2.0.insert.ext = zext i64 %42 to i128
  %coerce101.sroa.2.0.insert.shift = shl nuw i128 %coerce101.sroa.2.0.insert.ext, 64
  %coerce101.sroa.0.0.insert.ext = zext i64 %41 to i128
  %coerce101.sroa.0.0.insert.insert = or i128 %coerce101.sroa.2.0.insert.shift, %coerce101.sroa.0.0.insert.ext
  %mul103 = shl i64 %4, 1
  %call105 = tail call fastcc { i64, i64 } @widemul(i64 noundef %mul103, i64 noundef %6) #5
  %43 = extractvalue { i64, i64 } %call105, 0
  %44 = extractvalue { i64, i64 } %call105, 1
  %coerce106.sroa.2.0.insert.ext = zext i64 %44 to i128
  %coerce106.sroa.2.0.insert.shift.neg370 = mul i128 %coerce106.sroa.2.0.insert.ext, -18446744073709551616
  %coerce106.sroa.0.0.insert.ext = zext i64 %43 to i128
  %mul109 = shl i64 %5, 1
  %call111 = tail call fastcc { i64, i64 } @widemul(i64 noundef %mul109, i64 noundef %7) #5
  %45 = extractvalue { i64, i64 } %call111, 0
  %46 = extractvalue { i64, i64 } %call111, 1
  %coerce112.sroa.2.0.insert.ext = zext i64 %46 to i128
  %coerce112.sroa.2.0.insert.shift = shl nuw i128 %coerce112.sroa.2.0.insert.ext, 64
  %coerce112.sroa.0.0.insert.ext = zext i64 %45 to i128
  %mul117 = shl i64 %0, 1
  %call119 = tail call fastcc { i64, i64 } @widemul(i64 noundef %mul117, i64 noundef %2) #5
  %47 = extractvalue { i64, i64 } %call119, 0
  %48 = extractvalue { i64, i64 } %call119, 1
  %coerce120.sroa.2.0.insert.ext = zext i64 %48 to i128
  %coerce120.sroa.2.0.insert.shift = shl nuw i128 %coerce120.sroa.2.0.insert.ext, 64
  %coerce120.sroa.0.0.insert.ext = zext i64 %47 to i128
  %coerce120.sroa.0.0.insert.insert = or i128 %coerce120.sroa.2.0.insert.shift, %coerce120.sroa.0.0.insert.ext
  %mul122 = shl i64 %add5, 1
  %call124 = tail call fastcc { i64, i64 } @widemul(i64 noundef %mul122, i64 noundef %add5.1) #5
  %49 = extractvalue { i64, i64 } %call124, 0
  %50 = extractvalue { i64, i64 } %call124, 1
  %coerce125.sroa.2.0.insert.ext = zext i64 %50 to i128
  %coerce125.sroa.2.0.insert.shift = shl nuw i128 %coerce125.sroa.2.0.insert.ext, 64
  %coerce125.sroa.0.0.insert.ext = zext i64 %49 to i128
  %mul128 = shl i64 %1, 1
  %call130 = tail call fastcc { i64, i64 } @widemul(i64 noundef %mul128, i64 noundef %3) #5
  %51 = extractvalue { i64, i64 } %call130, 0
  %52 = extractvalue { i64, i64 } %call130, 1
  %coerce131.sroa.2.0.insert.ext = zext i64 %52 to i128
  %coerce131.sroa.2.0.insert.shift = shl nuw i128 %coerce131.sroa.2.0.insert.ext, 64
  %coerce131.sroa.0.0.insert.ext = zext i64 %51 to i128
  %coerce125.sroa.0.0.insert.insert = add nuw nsw i128 %shr96, %coerce112.sroa.0.0.insert.ext
  %coerce112.sroa.0.0.insert.insert = add i128 %coerce125.sroa.0.0.insert.insert, %coerce101.sroa.0.0.insert.insert
  %add113 = add i128 %coerce112.sroa.0.0.insert.insert, %coerce112.sroa.2.0.insert.shift
  %add114 = add i128 %add113, %coerce125.sroa.0.0.insert.ext
  %add126 = add i128 %add114, %coerce125.sroa.2.0.insert.shift
  %sub133 = sub i128 %add126, %coerce120.sroa.0.0.insert.insert
  %coerce131.sroa.0.0.insert.insert = sub nsw i128 %shr95, %coerce106.sroa.0.0.insert.ext
  %coerce106.sroa.0.0.insert.insert.neg = add i128 %coerce131.sroa.0.0.insert.insert, %coerce106.sroa.2.0.insert.shift.neg370
  %sub107 = add i128 %coerce106.sroa.0.0.insert.insert.neg, %coerce101.sroa.0.0.insert.insert
  %add115 = add i128 %sub107, %coerce131.sroa.0.0.insert.ext
  %add132 = add i128 %add115, %coerce120.sroa.0.0.insert.insert
  %add134 = add i128 %add132, %coerce131.sroa.2.0.insert.shift
  %arrayidx137 = getelementptr inbounds %struct.gf_s, %struct.gf_s* %cs, i64 0, i32 0, i64 1
  %arrayidx140 = getelementptr inbounds %struct.gf_s, %struct.gf_s* %cs, i64 0, i32 0, i64 5
  %shr141 = lshr i128 %add134, 56
  %shr142 = lshr i128 %sub133, 56
  %call145 = tail call fastcc { i64, i64 } @widemul(i64 noundef %add5.3, i64 noundef %add5.3) #5
  %53 = extractvalue { i64, i64 } %call145, 0
  %54 = extractvalue { i64, i64 } %call145, 1
  %coerce146.sroa.2.0.insert.ext = zext i64 %54 to i128
  %coerce146.sroa.2.0.insert.shift = shl nuw i128 %coerce146.sroa.2.0.insert.ext, 64
  %coerce146.sroa.0.0.insert.ext = zext i64 %53 to i128
  %coerce146.sroa.0.0.insert.insert = or i128 %coerce146.sroa.2.0.insert.shift, %coerce146.sroa.0.0.insert.ext
  %call149 = tail call fastcc { i64, i64 } @widemul(i64 noundef %6, i64 noundef %6) #5
  %55 = extractvalue { i64, i64 } %call149, 0
  %56 = extractvalue { i64, i64 } %call149, 1
  %coerce150.sroa.2.0.insert.ext = zext i64 %56 to i128
  %coerce150.sroa.2.0.insert.shift.neg371 = mul i128 %coerce150.sroa.2.0.insert.ext, -18446744073709551616
  %coerce150.sroa.0.0.insert.ext = zext i64 %55 to i128
  %call154 = tail call fastcc { i64, i64 } @widemul(i64 noundef %7, i64 noundef %7) #5
  %57 = extractvalue { i64, i64 } %call154, 0
  %58 = extractvalue { i64, i64 } %call154, 1
  %coerce155.sroa.2.0.insert.ext = zext i64 %58 to i128
  %coerce155.sroa.2.0.insert.shift = shl nuw i128 %coerce155.sroa.2.0.insert.ext, 64
  %coerce155.sroa.0.0.insert.ext = zext i64 %57 to i128
  %call162 = tail call fastcc { i64, i64 } @widemul(i64 noundef %mul117, i64 noundef %4) #5
  %59 = extractvalue { i64, i64 } %call162, 0
  %60 = extractvalue { i64, i64 } %call162, 1
  %coerce163.sroa.2.0.insert.ext = zext i64 %60 to i128
  %coerce163.sroa.2.0.insert.shift = shl nuw i128 %coerce163.sroa.2.0.insert.ext, 64
  %coerce163.sroa.0.0.insert.ext = zext i64 %59 to i128
  %call167 = tail call fastcc { i64, i64 } @widemul(i64 noundef %mul122, i64 noundef %add5.2) #5
  %61 = extractvalue { i64, i64 } %call167, 0
  %62 = extractvalue { i64, i64 } %call167, 1
  %coerce168.sroa.2.0.insert.ext = zext i64 %62 to i128
  %coerce168.sroa.2.0.insert.shift = shl nuw i128 %coerce168.sroa.2.0.insert.ext, 64
  %coerce168.sroa.0.0.insert.ext = zext i64 %61 to i128
  %call173 = tail call fastcc { i64, i64 } @widemul(i64 noundef %mul128, i64 noundef %5) #5
  %63 = extractvalue { i64, i64 } %call173, 0
  %64 = extractvalue { i64, i64 } %call173, 1
  %coerce174.sroa.2.0.insert.ext = zext i64 %64 to i128
  %coerce174.sroa.2.0.insert.shift = shl nuw i128 %coerce174.sroa.2.0.insert.ext, 64
  %coerce174.sroa.0.0.insert.ext = zext i64 %63 to i128
  %call178 = tail call fastcc { i64, i64 } @widemul(i64 noundef %2, i64 noundef %2) #5
  %65 = extractvalue { i64, i64 } %call178, 0
  %66 = extractvalue { i64, i64 } %call178, 1
  %coerce179.sroa.2.0.insert.ext = zext i64 %66 to i128
  %coerce179.sroa.2.0.insert.shift = shl nuw i128 %coerce179.sroa.2.0.insert.ext, 64
  %coerce179.sroa.0.0.insert.ext = zext i64 %65 to i128
  %coerce179.sroa.0.0.insert.insert = or i128 %coerce163.sroa.2.0.insert.shift, %coerce163.sroa.0.0.insert.ext
  %coerce163.sroa.0.0.insert.insert = add i128 %coerce179.sroa.0.0.insert.insert, %coerce179.sroa.0.0.insert.ext
  %add180 = add i128 %coerce163.sroa.0.0.insert.insert, %coerce179.sroa.2.0.insert.shift
  %call183 = tail call fastcc { i64, i64 } @widemul(i64 noundef %add5.1, i64 noundef %add5.1) #5
  %67 = extractvalue { i64, i64 } %call183, 0
  %68 = extractvalue { i64, i64 } %call183, 1
  %coerce184.sroa.2.0.insert.ext = zext i64 %68 to i128
  %coerce184.sroa.2.0.insert.shift = shl nuw i128 %coerce184.sroa.2.0.insert.ext, 64
  %coerce184.sroa.0.0.insert.ext = zext i64 %67 to i128
  %call188 = tail call fastcc { i64, i64 } @widemul(i64 noundef %3, i64 noundef %3) #5
  %69 = extractvalue { i64, i64 } %call188, 0
  %70 = extractvalue { i64, i64 } %call188, 1
  %coerce189.sroa.2.0.insert.ext = zext i64 %70 to i128
  %coerce189.sroa.2.0.insert.shift = shl nuw i128 %coerce189.sroa.2.0.insert.ext, 64
  %coerce189.sroa.0.0.insert.ext = zext i64 %69 to i128
  %coerce184.sroa.0.0.insert.insert = add nuw nsw i128 %shr142, %coerce155.sroa.0.0.insert.ext
  %coerce168.sroa.0.0.insert.insert = add i128 %coerce184.sroa.0.0.insert.insert, %coerce146.sroa.0.0.insert.insert
  %coerce155.sroa.0.0.insert.insert = add i128 %coerce168.sroa.0.0.insert.insert, %coerce155.sroa.2.0.insert.shift
  %add156 = add i128 %coerce155.sroa.0.0.insert.insert, %coerce168.sroa.0.0.insert.ext
  %add157 = add i128 %add156, %coerce168.sroa.2.0.insert.shift
  %add169 = add i128 %add157, %coerce184.sroa.0.0.insert.ext
  %add185 = add i128 %add169, %coerce184.sroa.2.0.insert.shift
  %sub191 = sub i128 %add185, %add180
  %coerce189.sroa.0.0.insert.insert = sub i128 %coerce150.sroa.2.0.insert.shift.neg371, %coerce150.sroa.0.0.insert.ext
  %coerce174.sroa.0.0.insert.insert = add i128 %coerce189.sroa.0.0.insert.insert, %shr141
  %coerce150.sroa.0.0.insert.insert.neg = add i128 %coerce174.sroa.0.0.insert.insert, %coerce146.sroa.0.0.insert.insert
  %sub151 = add i128 %coerce150.sroa.0.0.insert.insert.neg, %coerce174.sroa.0.0.insert.ext
  %add158 = add i128 %sub151, %coerce174.sroa.2.0.insert.shift
  %add175 = add i128 %add158, %coerce189.sroa.0.0.insert.ext
  %add190 = add i128 %add175, %add180
  %add192 = add i128 %add190, %coerce189.sroa.2.0.insert.shift
  %71 = insertelement <2 x i128> poison, i128 %add134, i64 0
  %72 = insertelement <2 x i128> %71, i128 %add192, i64 1
  %73 = trunc <2 x i128> %72 to <2 x i64>
  %74 = and <2 x i64> %73, <i64 72057594037927935, i64 72057594037927935>
  %75 = bitcast i64* %arrayidx137 to <2 x i64>*
  store <2 x i64> %74, <2 x i64>* %75, align 8, !tbaa !4
  %76 = insertelement <2 x i128> poison, i128 %sub133, i64 0
  %77 = insertelement <2 x i128> %76, i128 %sub191, i64 1
  %78 = trunc <2 x i128> %77 to <2 x i64>
  %79 = and <2 x i64> %78, <i64 72057594037927935, i64 72057594037927935>
  %80 = bitcast i64* %arrayidx140 to <2 x i64>*
  store <2 x i64> %79, <2 x i64>* %80, align 8, !tbaa !4
  %shr199 = lshr i128 %add192, 56
  %shr200 = lshr i128 %sub191, 56
  %conv202 = zext i64 %and to i128
  %add203 = add nuw nsw i128 %shr199, %conv202
  %conv205 = zext i64 %and37 to i128
  %add206 = add nuw nsw i128 %shr200, %conv205
  %conv207 = trunc i128 %add203 to i64
  %and208 = and i64 %conv207, 72057594037927935
  store i64 %and208, i64* %arrayidx34, align 8, !tbaa !4
  %conv210 = trunc i128 %add206 to i64
  %and211 = and i64 %conv210, 72057594037927935
  store i64 %and211, i64* %arrayidx38, align 8, !tbaa !4
  %shr213 = lshr i128 %add203, 56
  %shr214 = lshr i128 %add206, 56
  %conv215 = trunc i128 %shr213 to i64
  %conv216 = trunc i128 %shr214 to i64
  %add217 = add nuw nsw i64 %and93, %conv216
  %add219 = add nuw nsw i64 %add217, %conv215
  store i64 %add219, i64* %arrayidx94, align 8, !tbaa !4
  %add222 = add nuw nsw i64 %and90, %conv216
  store i64 %add222, i64* %arraydecay2, align 8, !tbaa !4
  ret void
}

attributes #0 = { nofree noinline nosync nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree noinline norecurse nosync nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }
attributes #5 = { nobuiltin "no-builtins" }

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
!11 = distinct !{!11, !9}
