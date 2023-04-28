; ModuleID = 'crypto/ec/curve448/scalar.c'
source_filename = "crypto/ec/curve448/scalar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.curve448_scalar_s = type { [7 x i64] }

@ossl_curve448_scalar_one = constant [1 x %struct.curve448_scalar_s] [%struct.curve448_scalar_s { [7 x i64] [i64 1, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0] }], align 16
@ossl_curve448_scalar_zero = constant [1 x %struct.curve448_scalar_s] zeroinitializer, align 16
@sc_r2 = internal constant [1 x %struct.curve448_scalar_s] [%struct.curve448_scalar_s { [7 x i64] [i64 -2066146901595808928, i64 8859473595851707865, i64 965703414319814745, i64 -5902020696520468424, i64 1917620071967259716, i64 2329131455307870383, i64 3747743906366994217] }], align 16
@sc_p = internal constant [1 x %struct.curve448_scalar_s] [%struct.curve448_scalar_s { [7 x i64] [i64 2556006723728458995, i64 2408513697996967765, i64 -4301259484579875184, i64 -2201345047, i64 -1, i64 -1, i64 4611686018427387903] }], align 16

; Function Attrs: nofree noinline nosync nounwind uwtable
define void @ossl_curve448_scalar_mul(%struct.curve448_scalar_s* nocapture noundef %out, %struct.curve448_scalar_s* nocapture noundef readonly %a, %struct.curve448_scalar_s* nocapture noundef readonly %b) local_unnamed_addr #0 {
entry:
  tail call fastcc void @sc_montmul(%struct.curve448_scalar_s* noundef %out, %struct.curve448_scalar_s* noundef %a, %struct.curve448_scalar_s* noundef %b) #9
  tail call fastcc void @sc_montmul(%struct.curve448_scalar_s* noundef %out, %struct.curve448_scalar_s* noundef %out, %struct.curve448_scalar_s* noundef getelementptr inbounds ([1 x %struct.curve448_scalar_s], [1 x %struct.curve448_scalar_s]* @sc_r2, i64 0, i64 0)) #9
  ret void
}

; Function Attrs: nofree noinline nosync nounwind uwtable
define internal fastcc void @sc_montmul(%struct.curve448_scalar_s* nocapture noundef %out, %struct.curve448_scalar_s* nocapture noundef readonly %a, %struct.curve448_scalar_s* nocapture noundef readonly %b) unnamed_addr #0 {
entry:
  %accum = alloca [8 x i64], align 16
  %0 = bitcast [8 x i64]* %accum to i8*
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %0) #10
  %arrayidx18 = getelementptr inbounds [8 x i64], [8 x i64]* %accum, i64 0, i64 0
  %arrayidx6.phi.trans.insert = getelementptr inbounds %struct.curve448_scalar_s, %struct.curve448_scalar_s* %b, i64 0, i32 0, i64 0
  %.pre = load i64, i64* %arrayidx6.phi.trans.insert, align 8, !tbaa !4
  %arrayidx6.1.phi.trans.insert = getelementptr inbounds %struct.curve448_scalar_s, %struct.curve448_scalar_s* %b, i64 0, i32 0, i64 1
  %.pre102 = load i64, i64* %arrayidx6.1.phi.trans.insert, align 8, !tbaa !4
  %arrayidx6.2.phi.trans.insert = getelementptr inbounds %struct.curve448_scalar_s, %struct.curve448_scalar_s* %b, i64 0, i32 0, i64 2
  %.pre103 = load i64, i64* %arrayidx6.2.phi.trans.insert, align 8, !tbaa !4
  %arrayidx6.3.phi.trans.insert = getelementptr inbounds %struct.curve448_scalar_s, %struct.curve448_scalar_s* %b, i64 0, i32 0, i64 3
  %.pre104 = load i64, i64* %arrayidx6.3.phi.trans.insert, align 8, !tbaa !4
  %arrayidx6.4.phi.trans.insert = getelementptr inbounds %struct.curve448_scalar_s, %struct.curve448_scalar_s* %b, i64 0, i32 0, i64 4
  %.pre105 = load i64, i64* %arrayidx6.4.phi.trans.insert, align 8, !tbaa !4
  %arrayidx6.5.phi.trans.insert = getelementptr inbounds %struct.curve448_scalar_s, %struct.curve448_scalar_s* %b, i64 0, i32 0, i64 5
  %.pre106 = load i64, i64* %arrayidx6.5.phi.trans.insert, align 8, !tbaa !4
  %arrayidx6.6.phi.trans.insert = getelementptr inbounds %struct.curve448_scalar_s, %struct.curve448_scalar_s* %b, i64 0, i32 0, i64 6
  %.pre107 = load i64, i64* %arrayidx6.6.phi.trans.insert, align 8, !tbaa !4
  %conv7 = zext i64 %.pre to i128
  %conv7.1 = zext i64 %.pre102 to i128
  %conv7.2 = zext i64 %.pre103 to i128
  %conv7.3 = zext i64 %.pre104 to i128
  %conv7.4 = zext i64 %.pre105 to i128
  %conv7.5 = zext i64 %.pre106 to i128
  %conv7.6 = zext i64 %.pre107 to i128
  br label %if.end.6

if.end.6:                                         ; preds = %if.end.6, %entry
  %1 = phi i64 [ 0, %entry ], [ %conv47, %if.end.6 ]
  %2 = phi i64 [ 0, %entry ], [ %conv34.6, %if.end.6 ]
  %3 = phi i64 [ 0, %entry ], [ %conv34.5, %if.end.6 ]
  %4 = phi i64 [ 0, %entry ], [ %conv34.4, %if.end.6 ]
  %5 = phi i64 [ 0, %entry ], [ %conv34.3, %if.end.6 ]
  %6 = phi i64 [ 0, %entry ], [ %conv34.2, %if.end.6 ]
  %7 = phi i64 [ 0, %entry ], [ %conv34.1, %if.end.6 ]
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.next, %if.end.6 ]
  %hi_carry.097 = phi i64 [ 0, %entry ], [ %conv52, %if.end.6 ]
  %arrayidx = getelementptr inbounds %struct.curve448_scalar_s, %struct.curve448_scalar_s* %a, i64 0, i32 0, i64 %indvars.iv
  %8 = load i64, i64* %arrayidx, align 8, !tbaa !4
  %conv = zext i64 %8 to i128
  %mul = mul nuw i128 %conv7, %conv
  %conv10 = zext i64 %7 to i128
  %add11 = add nuw i128 %mul, %conv10
  %conv12 = trunc i128 %add11 to i64
  %shr = lshr i128 %add11, 64
  %mul.1 = mul nuw i128 %conv7.1, %conv
  %conv10.1 = zext i64 %6 to i128
  %add.1 = add nuw nsw i128 %shr, %conv10.1
  %add11.1 = add nuw i128 %add.1, %mul.1
  %shr.1 = lshr i128 %add11.1, 64
  %mul.2 = mul nuw i128 %conv7.2, %conv
  %conv10.2 = zext i64 %5 to i128
  %add.2 = add nuw nsw i128 %shr.1, %conv10.2
  %add11.2 = add nuw i128 %add.2, %mul.2
  %shr.2 = lshr i128 %add11.2, 64
  %mul.3 = mul nuw i128 %conv7.3, %conv
  %conv10.3 = zext i64 %4 to i128
  %add.3 = add nuw nsw i128 %shr.2, %conv10.3
  %add11.3 = add nuw i128 %add.3, %mul.3
  %shr.3 = lshr i128 %add11.3, 64
  %mul.4 = mul nuw i128 %conv7.4, %conv
  %conv10.4 = zext i64 %3 to i128
  %add.4 = add nuw nsw i128 %shr.3, %conv10.4
  %add11.4 = add nuw i128 %add.4, %mul.4
  %shr.4 = lshr i128 %add11.4, 64
  %mul.5 = mul nuw i128 %conv7.5, %conv
  %conv10.5 = zext i64 %2 to i128
  %add.5 = add nuw nsw i128 %shr.4, %conv10.5
  %add11.5 = add nuw i128 %add.5, %mul.5
  %shr.5 = lshr i128 %add11.5, 64
  %mul.6 = mul nuw i128 %conv7.6, %conv
  %conv10.6 = zext i64 %1 to i128
  %add.6 = add nuw nsw i128 %shr.5, %conv10.6
  %add11.6 = add nuw i128 %add.6, %mul.6
  %shr.6 = lshr i128 %add11.6, 64
  %mul19 = mul i64 %conv12, 269446386856070085
  %conv24 = zext i64 %mul19 to i128
  %mul28 = mul nuw nsw i128 %conv24, 2556006723728458995
  %conv31 = and i128 %add11, 18446744073709551615
  %add33 = add nuw nsw i128 %conv31, %mul28
  %shr37 = lshr i128 %add33, 64
  %mul28.1 = mul nuw nsw i128 %conv24, 2408513697996967765
  %conv31.1 = and i128 %add11.1, 18446744073709551615
  %add32.1 = add nuw nsw i128 %shr37, %conv31.1
  %add33.1 = add nuw nsw i128 %add32.1, %mul28.1
  %conv34.1 = trunc i128 %add33.1 to i64
  %shr37.1 = lshr i128 %add33.1, 64
  %mul28.2 = mul nuw i128 %conv24, 14145484589129676432
  %conv31.2 = and i128 %add11.2, 18446744073709551615
  %add32.2 = add nuw nsw i128 %shr37.1, %conv31.2
  %add33.2 = add i128 %add32.2, %mul28.2
  %conv34.2 = trunc i128 %add33.2 to i64
  %shr37.2 = lshr i128 %add33.2, 64
  %mul28.3 = mul nuw i128 %conv24, 18446744071508206569
  %conv31.3 = and i128 %add11.3, 18446744073709551615
  %add32.3 = add nuw nsw i128 %shr37.2, %conv31.3
  %add33.3 = add i128 %add32.3, %mul28.3
  %conv34.3 = trunc i128 %add33.3 to i64
  %shr37.3 = lshr i128 %add33.3, 64
  %mul28.4 = mul nuw i128 %conv24, 18446744073709551615
  %conv31.4 = and i128 %add11.4, 18446744073709551615
  %add32.4 = add nuw nsw i128 %shr37.3, %conv31.4
  %add33.4 = add i128 %add32.4, %mul28.4
  %conv34.4 = trunc i128 %add33.4 to i64
  %shr37.4 = lshr i128 %add33.4, 64
  %conv31.5 = and i128 %add11.5, 18446744073709551615
  %add32.5 = add nuw nsw i128 %shr37.4, %conv31.5
  %add33.5 = add i128 %add32.5, %mul28.4
  %conv34.5 = trunc i128 %add33.5 to i64
  %shr37.5 = lshr i128 %add33.5, 64
  %mul28.6 = mul nuw nsw i128 %conv24, 4611686018427387903
  %conv31.6 = and i128 %add11.6, 18446744073709551615
  %add32.6 = add nuw nsw i128 %shr37.5, %conv31.6
  %add33.6 = add nuw nsw i128 %add32.6, %mul28.6
  %conv34.6 = trunc i128 %add33.6 to i64
  %shr37.6 = lshr i128 %add33.6, 64
  %conv45 = zext i64 %hi_carry.097 to i128
  %add44 = add nuw nsw i128 %shr37.6, %conv45
  %add46 = add nuw nsw i128 %add44, %shr.6
  %conv47 = trunc i128 %add46 to i64
  %shr51 = lshr i128 %add46, 64
  %conv52 = trunc i128 %shr51 to i64
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 7
  br i1 %exitcond.not, label %for.end55, label %if.end.6, !llvm.loop !8

for.end55:                                        ; preds = %if.end.6
  %conv34.1.le = trunc i128 %add33.1 to i64
  %conv34.2.le = trunc i128 %add33.2 to i64
  %conv34.3.le = trunc i128 %add33.3 to i64
  %conv34.4.le = trunc i128 %add33.4 to i64
  %conv34.5.le = trunc i128 %add33.5 to i64
  %conv34.6.le = trunc i128 %add33.6 to i64
  %conv47.le = trunc i128 %add46 to i64
  %conv15 = trunc i128 %shr.6 to i64
  %arrayidx17 = getelementptr inbounds [8 x i64], [8 x i64]* %accum, i64 0, i64 7
  %arrayidx9.6 = getelementptr inbounds [8 x i64], [8 x i64]* %accum, i64 0, i64 6
  %arrayidx9.5 = getelementptr inbounds [8 x i64], [8 x i64]* %accum, i64 0, i64 5
  %arrayidx9.4 = getelementptr inbounds [8 x i64], [8 x i64]* %accum, i64 0, i64 4
  %arrayidx9.3 = getelementptr inbounds [8 x i64], [8 x i64]* %accum, i64 0, i64 3
  %arrayidx9.2 = getelementptr inbounds [8 x i64], [8 x i64]* %accum, i64 0, i64 2
  %arrayidx9.1 = getelementptr inbounds [8 x i64], [8 x i64]* %accum, i64 0, i64 1
  store i64 %conv15, i64* %arrayidx17, align 8, !tbaa !4
  store i64 %conv34.1.le, i64* %arrayidx18, align 16, !tbaa !4
  store i64 %conv34.2.le, i64* %arrayidx9.1, align 8, !tbaa !4
  store i64 %conv34.3.le, i64* %arrayidx9.2, align 16, !tbaa !4
  store i64 %conv34.4.le, i64* %arrayidx9.3, align 8, !tbaa !4
  store i64 %conv34.5.le, i64* %arrayidx9.4, align 16, !tbaa !4
  store i64 %conv34.6.le, i64* %arrayidx9.5, align 8, !tbaa !4
  store i64 %conv47.le, i64* %arrayidx9.6, align 16, !tbaa !4
  %conv52.le = trunc i128 %shr51 to i64
  call fastcc void @sc_subx(%struct.curve448_scalar_s* noundef %out, i64* noundef nonnull %arrayidx18, %struct.curve448_scalar_s* noundef getelementptr inbounds ([1 x %struct.curve448_scalar_s], [1 x %struct.curve448_scalar_s]* @sc_p, i64 0, i64 0), i64 noundef %conv52.le) #9
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %0) #10
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define void @ossl_curve448_scalar_sub(%struct.curve448_scalar_s* nocapture noundef %out, %struct.curve448_scalar_s* nocapture noundef readonly %a, %struct.curve448_scalar_s* nocapture noundef readonly %b) local_unnamed_addr #1 {
entry:
  %arraydecay = getelementptr inbounds %struct.curve448_scalar_s, %struct.curve448_scalar_s* %a, i64 0, i32 0, i64 0
  tail call fastcc void @sc_subx(%struct.curve448_scalar_s* noundef %out, i64* noundef %arraydecay, %struct.curve448_scalar_s* noundef %b, i64 noundef 0) #9
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define internal fastcc void @sc_subx(%struct.curve448_scalar_s* nocapture noundef %out, i64* nocapture noundef readonly %accum, %struct.curve448_scalar_s* nocapture noundef readonly %sub, i64 noundef %extra) unnamed_addr #1 {
entry:
  %0 = load i64, i64* %accum, align 8, !tbaa !4
  %conv = zext i64 %0 to i128
  %arrayidx2 = getelementptr inbounds %struct.curve448_scalar_s, %struct.curve448_scalar_s* %sub, i64 0, i32 0, i64 0
  %1 = load i64, i64* %arrayidx2, align 8, !tbaa !4
  %conv3 = zext i64 %1 to i128
  %sub4 = sub nsw i128 %conv, %conv3
  %conv5 = trunc i128 %sub4 to i64
  %arrayidx8 = getelementptr inbounds %struct.curve448_scalar_s, %struct.curve448_scalar_s* %out, i64 0, i32 0, i64 0
  store i64 %conv5, i64* %arrayidx8, align 8, !tbaa !4
  %shr = ashr i128 %sub4, 64
  %arrayidx.1 = getelementptr inbounds i64, i64* %accum, i64 1
  %2 = load i64, i64* %arrayidx.1, align 8, !tbaa !4
  %conv.1 = zext i64 %2 to i128
  %add.1 = add nsw i128 %shr, %conv.1
  %arrayidx2.1 = getelementptr inbounds %struct.curve448_scalar_s, %struct.curve448_scalar_s* %sub, i64 0, i32 0, i64 1
  %3 = load i64, i64* %arrayidx2.1, align 8, !tbaa !4
  %conv3.1 = zext i64 %3 to i128
  %sub4.1 = sub nsw i128 %add.1, %conv3.1
  %conv5.1 = trunc i128 %sub4.1 to i64
  %arrayidx8.1 = getelementptr inbounds %struct.curve448_scalar_s, %struct.curve448_scalar_s* %out, i64 0, i32 0, i64 1
  store i64 %conv5.1, i64* %arrayidx8.1, align 8, !tbaa !4
  %shr.1 = ashr i128 %sub4.1, 64
  %arrayidx.2 = getelementptr inbounds i64, i64* %accum, i64 2
  %4 = load i64, i64* %arrayidx.2, align 8, !tbaa !4
  %conv.2 = zext i64 %4 to i128
  %add.2 = add nsw i128 %shr.1, %conv.2
  %arrayidx2.2 = getelementptr inbounds %struct.curve448_scalar_s, %struct.curve448_scalar_s* %sub, i64 0, i32 0, i64 2
  %5 = load i64, i64* %arrayidx2.2, align 8, !tbaa !4
  %conv3.2 = zext i64 %5 to i128
  %sub4.2 = sub nsw i128 %add.2, %conv3.2
  %conv5.2 = trunc i128 %sub4.2 to i64
  %arrayidx8.2 = getelementptr inbounds %struct.curve448_scalar_s, %struct.curve448_scalar_s* %out, i64 0, i32 0, i64 2
  store i64 %conv5.2, i64* %arrayidx8.2, align 8, !tbaa !4
  %shr.2 = ashr i128 %sub4.2, 64
  %arrayidx.3 = getelementptr inbounds i64, i64* %accum, i64 3
  %6 = load i64, i64* %arrayidx.3, align 8, !tbaa !4
  %conv.3 = zext i64 %6 to i128
  %add.3 = add nsw i128 %shr.2, %conv.3
  %arrayidx2.3 = getelementptr inbounds %struct.curve448_scalar_s, %struct.curve448_scalar_s* %sub, i64 0, i32 0, i64 3
  %7 = load i64, i64* %arrayidx2.3, align 8, !tbaa !4
  %conv3.3 = zext i64 %7 to i128
  %sub4.3 = sub nsw i128 %add.3, %conv3.3
  %conv5.3 = trunc i128 %sub4.3 to i64
  %arrayidx8.3 = getelementptr inbounds %struct.curve448_scalar_s, %struct.curve448_scalar_s* %out, i64 0, i32 0, i64 3
  store i64 %conv5.3, i64* %arrayidx8.3, align 8, !tbaa !4
  %shr.3 = ashr i128 %sub4.3, 64
  %arrayidx.4 = getelementptr inbounds i64, i64* %accum, i64 4
  %8 = load i64, i64* %arrayidx.4, align 8, !tbaa !4
  %conv.4 = zext i64 %8 to i128
  %add.4 = add nsw i128 %shr.3, %conv.4
  %arrayidx2.4 = getelementptr inbounds %struct.curve448_scalar_s, %struct.curve448_scalar_s* %sub, i64 0, i32 0, i64 4
  %9 = load i64, i64* %arrayidx2.4, align 8, !tbaa !4
  %conv3.4 = zext i64 %9 to i128
  %sub4.4 = sub nsw i128 %add.4, %conv3.4
  %conv5.4 = trunc i128 %sub4.4 to i64
  %arrayidx8.4 = getelementptr inbounds %struct.curve448_scalar_s, %struct.curve448_scalar_s* %out, i64 0, i32 0, i64 4
  store i64 %conv5.4, i64* %arrayidx8.4, align 8, !tbaa !4
  %shr.4 = ashr i128 %sub4.4, 64
  %arrayidx.5 = getelementptr inbounds i64, i64* %accum, i64 5
  %10 = load i64, i64* %arrayidx.5, align 8, !tbaa !4
  %conv.5 = zext i64 %10 to i128
  %add.5 = add nsw i128 %shr.4, %conv.5
  %arrayidx2.5 = getelementptr inbounds %struct.curve448_scalar_s, %struct.curve448_scalar_s* %sub, i64 0, i32 0, i64 5
  %11 = load i64, i64* %arrayidx2.5, align 8, !tbaa !4
  %conv3.5 = zext i64 %11 to i128
  %sub4.5 = sub nsw i128 %add.5, %conv3.5
  %conv5.5 = trunc i128 %sub4.5 to i64
  %arrayidx8.5 = getelementptr inbounds %struct.curve448_scalar_s, %struct.curve448_scalar_s* %out, i64 0, i32 0, i64 5
  store i64 %conv5.5, i64* %arrayidx8.5, align 8, !tbaa !4
  %shr.5 = ashr i128 %sub4.5, 64
  %arrayidx.6 = getelementptr inbounds i64, i64* %accum, i64 6
  %12 = load i64, i64* %arrayidx.6, align 8, !tbaa !4
  %conv.6 = zext i64 %12 to i128
  %add.6 = add nsw i128 %shr.5, %conv.6
  %arrayidx2.6 = getelementptr inbounds %struct.curve448_scalar_s, %struct.curve448_scalar_s* %sub, i64 0, i32 0, i64 6
  %13 = load i64, i64* %arrayidx2.6, align 8, !tbaa !4
  %conv3.6 = zext i64 %13 to i128
  %sub4.6 = sub nsw i128 %add.6, %conv3.6
  %arrayidx8.6 = getelementptr inbounds %struct.curve448_scalar_s, %struct.curve448_scalar_s* %out, i64 0, i32 0, i64 6
  %shr.6 = ashr i128 %sub4.6, 64
  %conv9 = trunc i128 %shr.6 to i64
  %add10 = add i64 %conv9, %extra
  %conv18 = and i128 %sub4, 18446744073709551615
  %and = and i64 %add10, 2556006723728458995
  %conv23 = zext i64 %and to i128
  %add24 = add nuw nsw i128 %conv18, %conv23
  %conv25 = trunc i128 %add24 to i64
  store i64 %conv25, i64* %arrayidx8, align 8, !tbaa !4
  %14 = lshr i128 %add24, 64
  %conv18.1 = and i128 %sub4.1, 18446744073709551615
  %add19.1 = add nuw nsw i128 %14, %conv18.1
  %and.1 = and i64 %add10, 2408513697996967765
  %conv23.1 = zext i64 %and.1 to i128
  %add24.1 = add nuw nsw i128 %add19.1, %conv23.1
  %conv25.1 = trunc i128 %add24.1 to i64
  store i64 %conv25.1, i64* %arrayidx8.1, align 8, !tbaa !4
  %15 = lshr i128 %add24.1, 64
  %conv18.2 = and i128 %sub4.2, 18446744073709551615
  %add19.2 = add nuw nsw i128 %15, %conv18.2
  %and.2 = and i64 %add10, -4301259484579875184
  %conv23.2 = zext i64 %and.2 to i128
  %add24.2 = add nuw nsw i128 %add19.2, %conv23.2
  %conv25.2 = trunc i128 %add24.2 to i64
  store i64 %conv25.2, i64* %arrayidx8.2, align 8, !tbaa !4
  %16 = lshr i128 %add24.2, 64
  %conv18.3 = and i128 %sub4.3, 18446744073709551615
  %add19.3 = add nuw nsw i128 %16, %conv18.3
  %and.3 = and i64 %add10, -2201345047
  %conv23.3 = zext i64 %and.3 to i128
  %add24.3 = add nuw nsw i128 %add19.3, %conv23.3
  %conv25.3 = trunc i128 %add24.3 to i64
  store i64 %conv25.3, i64* %arrayidx8.3, align 8, !tbaa !4
  %17 = lshr i128 %add24.3, 64
  %conv18.4 = and i128 %sub4.4, 18446744073709551615
  %add19.4 = add nuw nsw i128 %17, %conv18.4
  %conv23.4 = zext i64 %add10 to i128
  %add24.4 = add nuw nsw i128 %add19.4, %conv23.4
  %conv25.4 = trunc i128 %add24.4 to i64
  store i64 %conv25.4, i64* %arrayidx8.4, align 8, !tbaa !4
  %18 = lshr i128 %add24.4, 64
  %conv18.5 = and i128 %sub4.5, 18446744073709551615
  %add19.5 = add nuw nsw i128 %18, %conv18.5
  %add24.5 = add nuw nsw i128 %add19.5, %conv23.4
  %conv25.5 = trunc i128 %add24.5 to i64
  store i64 %conv25.5, i64* %arrayidx8.5, align 8, !tbaa !4
  %19 = lshr i128 %add24.5, 64
  %add19.6 = add nsw i128 %19, %sub4.6
  %and.6 = and i64 %add10, 4611686018427387903
  %20 = trunc i128 %add19.6 to i64
  %conv25.6 = add i64 %and.6, %20
  store i64 %conv25.6, i64* %arrayidx8.6, align 8, !tbaa !4
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define void @ossl_curve448_scalar_add(%struct.curve448_scalar_s* nocapture noundef %out, %struct.curve448_scalar_s* nocapture noundef readonly %a, %struct.curve448_scalar_s* nocapture noundef readonly %b) local_unnamed_addr #1 {
entry:
  %arrayidx = getelementptr inbounds %struct.curve448_scalar_s, %struct.curve448_scalar_s* %a, i64 0, i32 0, i64 0
  %0 = load i64, i64* %arrayidx, align 8, !tbaa !4
  %conv = zext i64 %0 to i128
  %arrayidx3 = getelementptr inbounds %struct.curve448_scalar_s, %struct.curve448_scalar_s* %b, i64 0, i32 0, i64 0
  %1 = load i64, i64* %arrayidx3, align 8, !tbaa !4
  %conv4 = zext i64 %1 to i128
  %add5 = add nuw nsw i128 %conv, %conv4
  %conv6 = trunc i128 %add5 to i64
  %arrayidx9 = getelementptr inbounds %struct.curve448_scalar_s, %struct.curve448_scalar_s* %out, i64 0, i32 0, i64 0
  store i64 %conv6, i64* %arrayidx9, align 8, !tbaa !4
  %shr = lshr i128 %add5, 64
  %arrayidx.1 = getelementptr inbounds %struct.curve448_scalar_s, %struct.curve448_scalar_s* %a, i64 0, i32 0, i64 1
  %2 = load i64, i64* %arrayidx.1, align 8, !tbaa !4
  %conv.1 = zext i64 %2 to i128
  %add.1 = add nuw nsw i128 %shr, %conv.1
  %arrayidx3.1 = getelementptr inbounds %struct.curve448_scalar_s, %struct.curve448_scalar_s* %b, i64 0, i32 0, i64 1
  %3 = load i64, i64* %arrayidx3.1, align 8, !tbaa !4
  %conv4.1 = zext i64 %3 to i128
  %add5.1 = add nuw nsw i128 %add.1, %conv4.1
  %conv6.1 = trunc i128 %add5.1 to i64
  %arrayidx9.1 = getelementptr inbounds %struct.curve448_scalar_s, %struct.curve448_scalar_s* %out, i64 0, i32 0, i64 1
  store i64 %conv6.1, i64* %arrayidx9.1, align 8, !tbaa !4
  %shr.1 = lshr i128 %add5.1, 64
  %arrayidx.2 = getelementptr inbounds %struct.curve448_scalar_s, %struct.curve448_scalar_s* %a, i64 0, i32 0, i64 2
  %4 = load i64, i64* %arrayidx.2, align 8, !tbaa !4
  %conv.2 = zext i64 %4 to i128
  %add.2 = add nuw nsw i128 %shr.1, %conv.2
  %arrayidx3.2 = getelementptr inbounds %struct.curve448_scalar_s, %struct.curve448_scalar_s* %b, i64 0, i32 0, i64 2
  %5 = load i64, i64* %arrayidx3.2, align 8, !tbaa !4
  %conv4.2 = zext i64 %5 to i128
  %add5.2 = add nuw nsw i128 %add.2, %conv4.2
  %conv6.2 = trunc i128 %add5.2 to i64
  %arrayidx9.2 = getelementptr inbounds %struct.curve448_scalar_s, %struct.curve448_scalar_s* %out, i64 0, i32 0, i64 2
  store i64 %conv6.2, i64* %arrayidx9.2, align 8, !tbaa !4
  %shr.2 = lshr i128 %add5.2, 64
  %arrayidx.3 = getelementptr inbounds %struct.curve448_scalar_s, %struct.curve448_scalar_s* %a, i64 0, i32 0, i64 3
  %6 = load i64, i64* %arrayidx.3, align 8, !tbaa !4
  %conv.3 = zext i64 %6 to i128
  %add.3 = add nuw nsw i128 %shr.2, %conv.3
  %arrayidx3.3 = getelementptr inbounds %struct.curve448_scalar_s, %struct.curve448_scalar_s* %b, i64 0, i32 0, i64 3
  %7 = load i64, i64* %arrayidx3.3, align 8, !tbaa !4
  %conv4.3 = zext i64 %7 to i128
  %add5.3 = add nuw nsw i128 %add.3, %conv4.3
  %conv6.3 = trunc i128 %add5.3 to i64
  %arrayidx9.3 = getelementptr inbounds %struct.curve448_scalar_s, %struct.curve448_scalar_s* %out, i64 0, i32 0, i64 3
  store i64 %conv6.3, i64* %arrayidx9.3, align 8, !tbaa !4
  %shr.3 = lshr i128 %add5.3, 64
  %arrayidx.4 = getelementptr inbounds %struct.curve448_scalar_s, %struct.curve448_scalar_s* %a, i64 0, i32 0, i64 4
  %8 = load i64, i64* %arrayidx.4, align 8, !tbaa !4
  %conv.4 = zext i64 %8 to i128
  %add.4 = add nuw nsw i128 %shr.3, %conv.4
  %arrayidx3.4 = getelementptr inbounds %struct.curve448_scalar_s, %struct.curve448_scalar_s* %b, i64 0, i32 0, i64 4
  %9 = load i64, i64* %arrayidx3.4, align 8, !tbaa !4
  %conv4.4 = zext i64 %9 to i128
  %add5.4 = add nuw nsw i128 %add.4, %conv4.4
  %conv6.4 = trunc i128 %add5.4 to i64
  %arrayidx9.4 = getelementptr inbounds %struct.curve448_scalar_s, %struct.curve448_scalar_s* %out, i64 0, i32 0, i64 4
  store i64 %conv6.4, i64* %arrayidx9.4, align 8, !tbaa !4
  %shr.4 = lshr i128 %add5.4, 64
  %arrayidx.5 = getelementptr inbounds %struct.curve448_scalar_s, %struct.curve448_scalar_s* %a, i64 0, i32 0, i64 5
  %10 = load i64, i64* %arrayidx.5, align 8, !tbaa !4
  %conv.5 = zext i64 %10 to i128
  %add.5 = add nuw nsw i128 %shr.4, %conv.5
  %arrayidx3.5 = getelementptr inbounds %struct.curve448_scalar_s, %struct.curve448_scalar_s* %b, i64 0, i32 0, i64 5
  %11 = load i64, i64* %arrayidx3.5, align 8, !tbaa !4
  %conv4.5 = zext i64 %11 to i128
  %add5.5 = add nuw nsw i128 %add.5, %conv4.5
  %conv6.5 = trunc i128 %add5.5 to i64
  %arrayidx9.5 = getelementptr inbounds %struct.curve448_scalar_s, %struct.curve448_scalar_s* %out, i64 0, i32 0, i64 5
  store i64 %conv6.5, i64* %arrayidx9.5, align 8, !tbaa !4
  %shr.5 = lshr i128 %add5.5, 64
  %arrayidx.6 = getelementptr inbounds %struct.curve448_scalar_s, %struct.curve448_scalar_s* %a, i64 0, i32 0, i64 6
  %12 = load i64, i64* %arrayidx.6, align 8, !tbaa !4
  %conv.6 = zext i64 %12 to i128
  %add.6 = add nuw nsw i128 %shr.5, %conv.6
  %arrayidx3.6 = getelementptr inbounds %struct.curve448_scalar_s, %struct.curve448_scalar_s* %b, i64 0, i32 0, i64 6
  %13 = load i64, i64* %arrayidx3.6, align 8, !tbaa !4
  %conv4.6 = zext i64 %13 to i128
  %add5.6 = add nuw nsw i128 %add.6, %conv4.6
  %conv6.6 = trunc i128 %add5.6 to i64
  %arrayidx9.6 = getelementptr inbounds %struct.curve448_scalar_s, %struct.curve448_scalar_s* %out, i64 0, i32 0, i64 6
  store i64 %conv6.6, i64* %arrayidx9.6, align 8, !tbaa !4
  %shr.6 = lshr i128 %add5.6, 64
  %conv11 = trunc i128 %shr.6 to i64
  tail call fastcc void @sc_subx(%struct.curve448_scalar_s* noundef %out, i64* noundef nonnull %arrayidx9, %struct.curve448_scalar_s* noundef getelementptr inbounds ([1 x %struct.curve448_scalar_s], [1 x %struct.curve448_scalar_s]* @sc_p, i64 0, i64 0), i64 noundef %conv11) #9
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: nofree noinline nosync nounwind uwtable
define i32 @ossl_curve448_scalar_decode(%struct.curve448_scalar_s* nocapture noundef %s, i8* nocapture noundef readonly %ser) local_unnamed_addr #0 {
entry:
  tail call fastcc void @scalar_decode_short(%struct.curve448_scalar_s* noundef %s, i8* noundef %ser, i64 noundef 56) #9
  %arrayidx = getelementptr inbounds %struct.curve448_scalar_s, %struct.curve448_scalar_s* %s, i64 0, i32 0, i64 0
  %0 = load i64, i64* %arrayidx, align 8, !tbaa !4
  %conv = zext i64 %0 to i128
  %sub = add nsw i128 %conv, -2556006723728458995
  %shr = ashr i128 %sub, 64
  %arrayidx.1 = getelementptr inbounds %struct.curve448_scalar_s, %struct.curve448_scalar_s* %s, i64 0, i32 0, i64 1
  %1 = load i64, i64* %arrayidx.1, align 8, !tbaa !4
  %conv.1 = zext i64 %1 to i128
  %add.1 = add nsw i128 %shr, %conv.1
  %sub.1 = add nsw i128 %add.1, -2408513697996967765
  %shr.1 = ashr i128 %sub.1, 64
  %arrayidx.2 = getelementptr inbounds %struct.curve448_scalar_s, %struct.curve448_scalar_s* %s, i64 0, i32 0, i64 2
  %2 = load i64, i64* %arrayidx.2, align 8, !tbaa !4
  %conv.2 = zext i64 %2 to i128
  %add.2 = add nsw i128 %shr.1, %conv.2
  %sub.2 = add nsw i128 %add.2, -14145484589129676432
  %shr.2 = ashr i128 %sub.2, 64
  %arrayidx.3 = getelementptr inbounds %struct.curve448_scalar_s, %struct.curve448_scalar_s* %s, i64 0, i32 0, i64 3
  %3 = load i64, i64* %arrayidx.3, align 8, !tbaa !4
  %conv.3 = zext i64 %3 to i128
  %add.3 = add nsw i128 %shr.2, %conv.3
  %sub.3 = add nsw i128 %add.3, -18446744071508206569
  %shr.3 = ashr i128 %sub.3, 64
  %arrayidx.4 = getelementptr inbounds %struct.curve448_scalar_s, %struct.curve448_scalar_s* %s, i64 0, i32 0, i64 4
  %4 = load i64, i64* %arrayidx.4, align 8, !tbaa !4
  %conv.4 = zext i64 %4 to i128
  %add.4 = add nsw i128 %shr.3, %conv.4
  %sub.4 = add nsw i128 %add.4, -18446744073709551615
  %shr.4 = ashr i128 %sub.4, 64
  %arrayidx.5 = getelementptr inbounds %struct.curve448_scalar_s, %struct.curve448_scalar_s* %s, i64 0, i32 0, i64 5
  %5 = load i64, i64* %arrayidx.5, align 8, !tbaa !4
  %conv.5 = zext i64 %5 to i128
  %add.5 = add nsw i128 %shr.4, %conv.5
  %sub.5 = add nsw i128 %add.5, -18446744073709551615
  %shr.5 = ashr i128 %sub.5, 64
  %arrayidx.6 = getelementptr inbounds %struct.curve448_scalar_s, %struct.curve448_scalar_s* %s, i64 0, i32 0, i64 6
  %6 = load i64, i64* %arrayidx.6, align 8, !tbaa !4
  %conv.6 = zext i64 %6 to i128
  %add.6 = add nsw i128 %shr.5, %conv.6
  %sub.6 = add nsw i128 %add.6, 79228162509652651575116562433
  %7 = lshr i128 %sub.6, 64
  tail call void @ossl_curve448_scalar_mul(%struct.curve448_scalar_s* noundef %s, %struct.curve448_scalar_s* noundef %s, %struct.curve448_scalar_s* noundef getelementptr inbounds ([1 x %struct.curve448_scalar_s], [1 x %struct.curve448_scalar_s]* @ossl_curve448_scalar_one, i64 0, i64 0)) #9
  %conv4 = trunc i128 %7 to i64
  %conv5 = and i64 %conv4, 4294967295
  %call = tail call fastcc i64 @constant_time_is_zero_64(i64 noundef %conv5) #9
  %neg = xor i64 %call, -1
  %call6 = tail call fastcc i32 @c448_succeed_if(i64 noundef %neg) #9
  ret i32 %call6
}

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define internal fastcc void @scalar_decode_short(%struct.curve448_scalar_s* nocapture noundef writeonly %s, i8* nocapture noundef readonly %ser, i64 noundef %nbytes) unnamed_addr #1 {
entry:
  %cmp321.not = icmp eq i64 %nbytes, 0
  br i1 %cmp321.not, label %for.end, label %for.body4.preheader

for.body4.preheader:                              ; preds = %entry
  %0 = add i64 %nbytes, -1
  %umin = call i64 @llvm.umin.i64(i64 %0, i64 7)
  %1 = add nuw nsw i64 %umin, 1
  %2 = load i8, i8* %ser, align 1, !tbaa !10
  %conv = zext i8 %2 to i64
  %exitcond.not = icmp eq i64 %umin, 0
  br i1 %exitcond.not, label %for.end, label %for.body4.136, !llvm.loop !11

for.body4.136:                                    ; preds = %for.body4.preheader
  %arrayidx.130 = getelementptr inbounds i8, i8* %ser, i64 1
  %3 = load i8, i8* %arrayidx.130, align 1, !tbaa !10
  %conv.131 = zext i8 %3 to i64
  %shl.133 = shl nuw nsw i64 %conv.131, 8
  %or.134 = or i64 %shl.133, %conv
  %exitcond.not.1 = icmp eq i64 %umin, 1
  br i1 %exitcond.not.1, label %for.end, label %for.body4.245, !llvm.loop !11

for.body4.245:                                    ; preds = %for.body4.136
  %arrayidx.239 = getelementptr inbounds i8, i8* %ser, i64 2
  %4 = load i8, i8* %arrayidx.239, align 1, !tbaa !10
  %conv.240 = zext i8 %4 to i64
  %shl.242 = shl nuw nsw i64 %conv.240, 16
  %or.243 = or i64 %shl.242, %or.134
  %exitcond.not.2 = icmp eq i64 %umin, 2
  br i1 %exitcond.not.2, label %for.end, label %for.body4.354, !llvm.loop !11

for.body4.354:                                    ; preds = %for.body4.245
  %arrayidx.348 = getelementptr inbounds i8, i8* %ser, i64 3
  %5 = load i8, i8* %arrayidx.348, align 1, !tbaa !10
  %conv.349 = zext i8 %5 to i64
  %shl.351 = shl nuw nsw i64 %conv.349, 24
  %or.352 = or i64 %shl.351, %or.243
  %exitcond.not.3 = icmp eq i64 %umin, 3
  br i1 %exitcond.not.3, label %for.end, label %for.body4.463, !llvm.loop !11

for.body4.463:                                    ; preds = %for.body4.354
  %arrayidx.457 = getelementptr inbounds i8, i8* %ser, i64 4
  %6 = load i8, i8* %arrayidx.457, align 1, !tbaa !10
  %conv.458 = zext i8 %6 to i64
  %shl.460 = shl nuw nsw i64 %conv.458, 32
  %or.461 = or i64 %shl.460, %or.352
  %exitcond.not.4 = icmp eq i64 %umin, 4
  br i1 %exitcond.not.4, label %for.end, label %for.body4.572, !llvm.loop !11

for.body4.572:                                    ; preds = %for.body4.463
  %arrayidx.566 = getelementptr inbounds i8, i8* %ser, i64 5
  %7 = load i8, i8* %arrayidx.566, align 1, !tbaa !10
  %conv.567 = zext i8 %7 to i64
  %shl.569 = shl nuw nsw i64 %conv.567, 40
  %or.570 = or i64 %shl.569, %or.461
  %exitcond.not.5 = icmp eq i64 %umin, 5
  br i1 %exitcond.not.5, label %for.end, label %for.body4.681, !llvm.loop !11

for.body4.681:                                    ; preds = %for.body4.572
  %arrayidx.675 = getelementptr inbounds i8, i8* %ser, i64 6
  %8 = load i8, i8* %arrayidx.675, align 1, !tbaa !10
  %conv.676 = zext i8 %8 to i64
  %shl.678 = shl nuw nsw i64 %conv.676, 48
  %or.679 = or i64 %shl.678, %or.570
  %exitcond.not.6 = icmp eq i64 %umin, 6
  br i1 %exitcond.not.6, label %for.end, label %for.body4.7, !llvm.loop !11

for.body4.7:                                      ; preds = %for.body4.681
  %arrayidx.7 = getelementptr inbounds i8, i8* %ser, i64 7
  %9 = load i8, i8* %arrayidx.7, align 1, !tbaa !10
  %conv.7 = zext i8 %9 to i64
  %shl.7 = shl nuw i64 %conv.7, 56
  %or.7 = or i64 %shl.7, %or.679
  br label %for.end

for.end:                                          ; preds = %for.body4.preheader, %for.body4.136, %for.body4.245, %for.body4.354, %for.body4.463, %for.body4.572, %for.body4.681, %for.body4.7, %entry
  %k.1.lcssa = phi i64 [ 0, %entry ], [ %1, %for.body4.7 ], [ %1, %for.body4.681 ], [ %1, %for.body4.572 ], [ %1, %for.body4.463 ], [ %1, %for.body4.354 ], [ %1, %for.body4.245 ], [ %1, %for.body4.136 ], [ %1, %for.body4.preheader ]
  %out.0.lcssa = phi i64 [ 0, %entry ], [ %conv, %for.body4.preheader ], [ %or.134, %for.body4.136 ], [ %or.243, %for.body4.245 ], [ %or.352, %for.body4.354 ], [ %or.461, %for.body4.463 ], [ %or.570, %for.body4.572 ], [ %or.679, %for.body4.681 ], [ %or.7, %for.body4.7 ]
  %arrayidx6 = getelementptr inbounds %struct.curve448_scalar_s, %struct.curve448_scalar_s* %s, i64 0, i32 0, i64 0
  store i64 %out.0.lcssa, i64* %arrayidx6, align 8, !tbaa !4
  %cmp321.1 = icmp ult i64 %k.1.lcssa, %nbytes
  br i1 %cmp321.1, label %for.body4.1, label %for.end.1

for.body4.1:                                      ; preds = %for.end
  %arrayidx.1 = getelementptr inbounds i8, i8* %ser, i64 %k.1.lcssa
  %10 = load i8, i8* %arrayidx.1, align 1, !tbaa !10
  %conv.1 = zext i8 %10 to i64
  %inc5.1 = add nuw nsw i64 %k.1.lcssa, 1
  %cmp3.1 = icmp ult i64 %inc5.1, %nbytes
  br i1 %cmp3.1, label %for.body4.1.1, label %for.end.1, !llvm.loop !11

for.body4.1.1:                                    ; preds = %for.body4.1
  %arrayidx.1.1 = getelementptr inbounds i8, i8* %ser, i64 %inc5.1
  %11 = load i8, i8* %arrayidx.1.1, align 1, !tbaa !10
  %conv.1.1 = zext i8 %11 to i64
  %shl.1.1 = shl nuw nsw i64 %conv.1.1, 8
  %or.1.1 = or i64 %shl.1.1, %conv.1
  %inc5.1.1 = add nuw nsw i64 %k.1.lcssa, 2
  %cmp3.1.1 = icmp ult i64 %inc5.1.1, %nbytes
  br i1 %cmp3.1.1, label %for.body4.1.2, label %for.end.1, !llvm.loop !11

for.body4.1.2:                                    ; preds = %for.body4.1.1
  %arrayidx.1.2 = getelementptr inbounds i8, i8* %ser, i64 %inc5.1.1
  %12 = load i8, i8* %arrayidx.1.2, align 1, !tbaa !10
  %conv.1.2 = zext i8 %12 to i64
  %shl.1.2 = shl nuw nsw i64 %conv.1.2, 16
  %or.1.2 = or i64 %shl.1.2, %or.1.1
  %inc5.1.2 = add nuw nsw i64 %k.1.lcssa, 3
  %cmp3.1.2 = icmp ult i64 %inc5.1.2, %nbytes
  br i1 %cmp3.1.2, label %for.body4.1.3, label %for.end.1, !llvm.loop !11

for.body4.1.3:                                    ; preds = %for.body4.1.2
  %arrayidx.1.3 = getelementptr inbounds i8, i8* %ser, i64 %inc5.1.2
  %13 = load i8, i8* %arrayidx.1.3, align 1, !tbaa !10
  %conv.1.3 = zext i8 %13 to i64
  %shl.1.3 = shl nuw nsw i64 %conv.1.3, 24
  %or.1.3 = or i64 %shl.1.3, %or.1.2
  %inc5.1.3 = add nuw nsw i64 %k.1.lcssa, 4
  %cmp3.1.3 = icmp ult i64 %inc5.1.3, %nbytes
  br i1 %cmp3.1.3, label %for.body4.1.4, label %for.end.1, !llvm.loop !11

for.body4.1.4:                                    ; preds = %for.body4.1.3
  %arrayidx.1.4 = getelementptr inbounds i8, i8* %ser, i64 %inc5.1.3
  %14 = load i8, i8* %arrayidx.1.4, align 1, !tbaa !10
  %conv.1.4 = zext i8 %14 to i64
  %shl.1.4 = shl nuw nsw i64 %conv.1.4, 32
  %or.1.4 = or i64 %shl.1.4, %or.1.3
  %inc5.1.4 = add nuw nsw i64 %k.1.lcssa, 5
  %cmp3.1.4 = icmp ult i64 %inc5.1.4, %nbytes
  br i1 %cmp3.1.4, label %for.body4.1.5, label %for.end.1, !llvm.loop !11

for.body4.1.5:                                    ; preds = %for.body4.1.4
  %arrayidx.1.5 = getelementptr inbounds i8, i8* %ser, i64 %inc5.1.4
  %15 = load i8, i8* %arrayidx.1.5, align 1, !tbaa !10
  %conv.1.5 = zext i8 %15 to i64
  %shl.1.5 = shl nuw nsw i64 %conv.1.5, 40
  %or.1.5 = or i64 %shl.1.5, %or.1.4
  %inc5.1.5 = add nuw nsw i64 %k.1.lcssa, 6
  %cmp3.1.5 = icmp ult i64 %inc5.1.5, %nbytes
  br i1 %cmp3.1.5, label %for.body4.1.6, label %for.end.1, !llvm.loop !11

for.body4.1.6:                                    ; preds = %for.body4.1.5
  %arrayidx.1.6 = getelementptr inbounds i8, i8* %ser, i64 %inc5.1.5
  %16 = load i8, i8* %arrayidx.1.6, align 1, !tbaa !10
  %conv.1.6 = zext i8 %16 to i64
  %shl.1.6 = shl nuw nsw i64 %conv.1.6, 48
  %or.1.6 = or i64 %shl.1.6, %or.1.5
  %inc5.1.6 = add nuw nsw i64 %k.1.lcssa, 7
  %cmp3.1.6 = icmp ult i64 %inc5.1.6, %nbytes
  br i1 %cmp3.1.6, label %for.body4.1.7, label %for.end.1, !llvm.loop !11

for.body4.1.7:                                    ; preds = %for.body4.1.6
  %arrayidx.1.7 = getelementptr inbounds i8, i8* %ser, i64 %inc5.1.6
  %17 = load i8, i8* %arrayidx.1.7, align 1, !tbaa !10
  %conv.1.7 = zext i8 %17 to i64
  %shl.1.7 = shl nuw i64 %conv.1.7, 56
  %or.1.7 = or i64 %shl.1.7, %or.1.6
  %inc5.1.7 = add nuw nsw i64 %k.1.lcssa, 8
  br label %for.end.1

for.end.1:                                        ; preds = %for.body4.1, %for.body4.1.1, %for.body4.1.2, %for.body4.1.3, %for.body4.1.4, %for.body4.1.5, %for.body4.1.6, %for.body4.1.7, %for.end
  %k.1.lcssa.1 = phi i64 [ %k.1.lcssa, %for.end ], [ %inc5.1, %for.body4.1 ], [ %inc5.1.1, %for.body4.1.1 ], [ %inc5.1.2, %for.body4.1.2 ], [ %inc5.1.3, %for.body4.1.3 ], [ %inc5.1.4, %for.body4.1.4 ], [ %inc5.1.5, %for.body4.1.5 ], [ %inc5.1.6, %for.body4.1.6 ], [ %inc5.1.7, %for.body4.1.7 ]
  %out.0.lcssa.1 = phi i64 [ 0, %for.end ], [ %conv.1, %for.body4.1 ], [ %or.1.1, %for.body4.1.1 ], [ %or.1.2, %for.body4.1.2 ], [ %or.1.3, %for.body4.1.3 ], [ %or.1.4, %for.body4.1.4 ], [ %or.1.5, %for.body4.1.5 ], [ %or.1.6, %for.body4.1.6 ], [ %or.1.7, %for.body4.1.7 ]
  %arrayidx6.1 = getelementptr inbounds %struct.curve448_scalar_s, %struct.curve448_scalar_s* %s, i64 0, i32 0, i64 1
  store i64 %out.0.lcssa.1, i64* %arrayidx6.1, align 8, !tbaa !4
  %cmp321.2 = icmp ult i64 %k.1.lcssa.1, %nbytes
  br i1 %cmp321.2, label %for.body4.2, label %for.end.2

for.body4.2:                                      ; preds = %for.end.1
  %arrayidx.2 = getelementptr inbounds i8, i8* %ser, i64 %k.1.lcssa.1
  %18 = load i8, i8* %arrayidx.2, align 1, !tbaa !10
  %conv.2 = zext i8 %18 to i64
  %inc5.2 = add nuw nsw i64 %k.1.lcssa.1, 1
  %cmp3.2 = icmp ult i64 %inc5.2, %nbytes
  br i1 %cmp3.2, label %for.body4.2.1, label %for.end.2, !llvm.loop !11

for.body4.2.1:                                    ; preds = %for.body4.2
  %arrayidx.2.1 = getelementptr inbounds i8, i8* %ser, i64 %inc5.2
  %19 = load i8, i8* %arrayidx.2.1, align 1, !tbaa !10
  %conv.2.1 = zext i8 %19 to i64
  %shl.2.1 = shl nuw nsw i64 %conv.2.1, 8
  %or.2.1 = or i64 %shl.2.1, %conv.2
  %inc5.2.1 = add nuw nsw i64 %k.1.lcssa.1, 2
  %cmp3.2.1 = icmp ult i64 %inc5.2.1, %nbytes
  br i1 %cmp3.2.1, label %for.body4.2.2, label %for.end.2, !llvm.loop !11

for.body4.2.2:                                    ; preds = %for.body4.2.1
  %arrayidx.2.2 = getelementptr inbounds i8, i8* %ser, i64 %inc5.2.1
  %20 = load i8, i8* %arrayidx.2.2, align 1, !tbaa !10
  %conv.2.2 = zext i8 %20 to i64
  %shl.2.2 = shl nuw nsw i64 %conv.2.2, 16
  %or.2.2 = or i64 %shl.2.2, %or.2.1
  %inc5.2.2 = add nuw nsw i64 %k.1.lcssa.1, 3
  %cmp3.2.2 = icmp ult i64 %inc5.2.2, %nbytes
  br i1 %cmp3.2.2, label %for.body4.2.3, label %for.end.2, !llvm.loop !11

for.body4.2.3:                                    ; preds = %for.body4.2.2
  %arrayidx.2.3 = getelementptr inbounds i8, i8* %ser, i64 %inc5.2.2
  %21 = load i8, i8* %arrayidx.2.3, align 1, !tbaa !10
  %conv.2.3 = zext i8 %21 to i64
  %shl.2.3 = shl nuw nsw i64 %conv.2.3, 24
  %or.2.3 = or i64 %shl.2.3, %or.2.2
  %inc5.2.3 = add nuw nsw i64 %k.1.lcssa.1, 4
  %cmp3.2.3 = icmp ult i64 %inc5.2.3, %nbytes
  br i1 %cmp3.2.3, label %for.body4.2.4, label %for.end.2, !llvm.loop !11

for.body4.2.4:                                    ; preds = %for.body4.2.3
  %arrayidx.2.4 = getelementptr inbounds i8, i8* %ser, i64 %inc5.2.3
  %22 = load i8, i8* %arrayidx.2.4, align 1, !tbaa !10
  %conv.2.4 = zext i8 %22 to i64
  %shl.2.4 = shl nuw nsw i64 %conv.2.4, 32
  %or.2.4 = or i64 %shl.2.4, %or.2.3
  %inc5.2.4 = add nuw nsw i64 %k.1.lcssa.1, 5
  %cmp3.2.4 = icmp ult i64 %inc5.2.4, %nbytes
  br i1 %cmp3.2.4, label %for.body4.2.5, label %for.end.2, !llvm.loop !11

for.body4.2.5:                                    ; preds = %for.body4.2.4
  %arrayidx.2.5 = getelementptr inbounds i8, i8* %ser, i64 %inc5.2.4
  %23 = load i8, i8* %arrayidx.2.5, align 1, !tbaa !10
  %conv.2.5 = zext i8 %23 to i64
  %shl.2.5 = shl nuw nsw i64 %conv.2.5, 40
  %or.2.5 = or i64 %shl.2.5, %or.2.4
  %inc5.2.5 = add nuw nsw i64 %k.1.lcssa.1, 6
  %cmp3.2.5 = icmp ult i64 %inc5.2.5, %nbytes
  br i1 %cmp3.2.5, label %for.body4.2.6, label %for.end.2, !llvm.loop !11

for.body4.2.6:                                    ; preds = %for.body4.2.5
  %arrayidx.2.6 = getelementptr inbounds i8, i8* %ser, i64 %inc5.2.5
  %24 = load i8, i8* %arrayidx.2.6, align 1, !tbaa !10
  %conv.2.6 = zext i8 %24 to i64
  %shl.2.6 = shl nuw nsw i64 %conv.2.6, 48
  %or.2.6 = or i64 %shl.2.6, %or.2.5
  %inc5.2.6 = add nuw nsw i64 %k.1.lcssa.1, 7
  %cmp3.2.6 = icmp ult i64 %inc5.2.6, %nbytes
  br i1 %cmp3.2.6, label %for.body4.2.7, label %for.end.2, !llvm.loop !11

for.body4.2.7:                                    ; preds = %for.body4.2.6
  %arrayidx.2.7 = getelementptr inbounds i8, i8* %ser, i64 %inc5.2.6
  %25 = load i8, i8* %arrayidx.2.7, align 1, !tbaa !10
  %conv.2.7 = zext i8 %25 to i64
  %shl.2.7 = shl nuw i64 %conv.2.7, 56
  %or.2.7 = or i64 %shl.2.7, %or.2.6
  %inc5.2.7 = add nuw nsw i64 %k.1.lcssa.1, 8
  br label %for.end.2

for.end.2:                                        ; preds = %for.body4.2, %for.body4.2.1, %for.body4.2.2, %for.body4.2.3, %for.body4.2.4, %for.body4.2.5, %for.body4.2.6, %for.body4.2.7, %for.end.1
  %k.1.lcssa.2 = phi i64 [ %k.1.lcssa.1, %for.end.1 ], [ %inc5.2, %for.body4.2 ], [ %inc5.2.1, %for.body4.2.1 ], [ %inc5.2.2, %for.body4.2.2 ], [ %inc5.2.3, %for.body4.2.3 ], [ %inc5.2.4, %for.body4.2.4 ], [ %inc5.2.5, %for.body4.2.5 ], [ %inc5.2.6, %for.body4.2.6 ], [ %inc5.2.7, %for.body4.2.7 ]
  %out.0.lcssa.2 = phi i64 [ 0, %for.end.1 ], [ %conv.2, %for.body4.2 ], [ %or.2.1, %for.body4.2.1 ], [ %or.2.2, %for.body4.2.2 ], [ %or.2.3, %for.body4.2.3 ], [ %or.2.4, %for.body4.2.4 ], [ %or.2.5, %for.body4.2.5 ], [ %or.2.6, %for.body4.2.6 ], [ %or.2.7, %for.body4.2.7 ]
  %arrayidx6.2 = getelementptr inbounds %struct.curve448_scalar_s, %struct.curve448_scalar_s* %s, i64 0, i32 0, i64 2
  store i64 %out.0.lcssa.2, i64* %arrayidx6.2, align 8, !tbaa !4
  %cmp321.3 = icmp ult i64 %k.1.lcssa.2, %nbytes
  br i1 %cmp321.3, label %for.body4.3, label %for.end.3

for.body4.3:                                      ; preds = %for.end.2
  %arrayidx.3 = getelementptr inbounds i8, i8* %ser, i64 %k.1.lcssa.2
  %26 = load i8, i8* %arrayidx.3, align 1, !tbaa !10
  %conv.3 = zext i8 %26 to i64
  %inc5.3 = add nuw nsw i64 %k.1.lcssa.2, 1
  %cmp3.3 = icmp ult i64 %inc5.3, %nbytes
  br i1 %cmp3.3, label %for.body4.3.1, label %for.end.3, !llvm.loop !11

for.body4.3.1:                                    ; preds = %for.body4.3
  %arrayidx.3.1 = getelementptr inbounds i8, i8* %ser, i64 %inc5.3
  %27 = load i8, i8* %arrayidx.3.1, align 1, !tbaa !10
  %conv.3.1 = zext i8 %27 to i64
  %shl.3.1 = shl nuw nsw i64 %conv.3.1, 8
  %or.3.1 = or i64 %shl.3.1, %conv.3
  %inc5.3.1 = add nuw nsw i64 %k.1.lcssa.2, 2
  %cmp3.3.1 = icmp ult i64 %inc5.3.1, %nbytes
  br i1 %cmp3.3.1, label %for.body4.3.2, label %for.end.3, !llvm.loop !11

for.body4.3.2:                                    ; preds = %for.body4.3.1
  %arrayidx.3.2 = getelementptr inbounds i8, i8* %ser, i64 %inc5.3.1
  %28 = load i8, i8* %arrayidx.3.2, align 1, !tbaa !10
  %conv.3.2 = zext i8 %28 to i64
  %shl.3.2 = shl nuw nsw i64 %conv.3.2, 16
  %or.3.2 = or i64 %shl.3.2, %or.3.1
  %inc5.3.2 = add nuw nsw i64 %k.1.lcssa.2, 3
  %cmp3.3.2 = icmp ult i64 %inc5.3.2, %nbytes
  br i1 %cmp3.3.2, label %for.body4.3.3, label %for.end.3, !llvm.loop !11

for.body4.3.3:                                    ; preds = %for.body4.3.2
  %arrayidx.3.3 = getelementptr inbounds i8, i8* %ser, i64 %inc5.3.2
  %29 = load i8, i8* %arrayidx.3.3, align 1, !tbaa !10
  %conv.3.3 = zext i8 %29 to i64
  %shl.3.3 = shl nuw nsw i64 %conv.3.3, 24
  %or.3.3 = or i64 %shl.3.3, %or.3.2
  %inc5.3.3 = add nuw nsw i64 %k.1.lcssa.2, 4
  %cmp3.3.3 = icmp ult i64 %inc5.3.3, %nbytes
  br i1 %cmp3.3.3, label %for.body4.3.4, label %for.end.3, !llvm.loop !11

for.body4.3.4:                                    ; preds = %for.body4.3.3
  %arrayidx.3.4 = getelementptr inbounds i8, i8* %ser, i64 %inc5.3.3
  %30 = load i8, i8* %arrayidx.3.4, align 1, !tbaa !10
  %conv.3.4 = zext i8 %30 to i64
  %shl.3.4 = shl nuw nsw i64 %conv.3.4, 32
  %or.3.4 = or i64 %shl.3.4, %or.3.3
  %inc5.3.4 = add nuw nsw i64 %k.1.lcssa.2, 5
  %cmp3.3.4 = icmp ult i64 %inc5.3.4, %nbytes
  br i1 %cmp3.3.4, label %for.body4.3.5, label %for.end.3, !llvm.loop !11

for.body4.3.5:                                    ; preds = %for.body4.3.4
  %arrayidx.3.5 = getelementptr inbounds i8, i8* %ser, i64 %inc5.3.4
  %31 = load i8, i8* %arrayidx.3.5, align 1, !tbaa !10
  %conv.3.5 = zext i8 %31 to i64
  %shl.3.5 = shl nuw nsw i64 %conv.3.5, 40
  %or.3.5 = or i64 %shl.3.5, %or.3.4
  %inc5.3.5 = add nuw nsw i64 %k.1.lcssa.2, 6
  %cmp3.3.5 = icmp ult i64 %inc5.3.5, %nbytes
  br i1 %cmp3.3.5, label %for.body4.3.6, label %for.end.3, !llvm.loop !11

for.body4.3.6:                                    ; preds = %for.body4.3.5
  %arrayidx.3.6 = getelementptr inbounds i8, i8* %ser, i64 %inc5.3.5
  %32 = load i8, i8* %arrayidx.3.6, align 1, !tbaa !10
  %conv.3.6 = zext i8 %32 to i64
  %shl.3.6 = shl nuw nsw i64 %conv.3.6, 48
  %or.3.6 = or i64 %shl.3.6, %or.3.5
  %inc5.3.6 = add nuw nsw i64 %k.1.lcssa.2, 7
  %cmp3.3.6 = icmp ult i64 %inc5.3.6, %nbytes
  br i1 %cmp3.3.6, label %for.body4.3.7, label %for.end.3, !llvm.loop !11

for.body4.3.7:                                    ; preds = %for.body4.3.6
  %arrayidx.3.7 = getelementptr inbounds i8, i8* %ser, i64 %inc5.3.6
  %33 = load i8, i8* %arrayidx.3.7, align 1, !tbaa !10
  %conv.3.7 = zext i8 %33 to i64
  %shl.3.7 = shl nuw i64 %conv.3.7, 56
  %or.3.7 = or i64 %shl.3.7, %or.3.6
  %inc5.3.7 = add nuw nsw i64 %k.1.lcssa.2, 8
  br label %for.end.3

for.end.3:                                        ; preds = %for.body4.3, %for.body4.3.1, %for.body4.3.2, %for.body4.3.3, %for.body4.3.4, %for.body4.3.5, %for.body4.3.6, %for.body4.3.7, %for.end.2
  %k.1.lcssa.3 = phi i64 [ %k.1.lcssa.2, %for.end.2 ], [ %inc5.3, %for.body4.3 ], [ %inc5.3.1, %for.body4.3.1 ], [ %inc5.3.2, %for.body4.3.2 ], [ %inc5.3.3, %for.body4.3.3 ], [ %inc5.3.4, %for.body4.3.4 ], [ %inc5.3.5, %for.body4.3.5 ], [ %inc5.3.6, %for.body4.3.6 ], [ %inc5.3.7, %for.body4.3.7 ]
  %out.0.lcssa.3 = phi i64 [ 0, %for.end.2 ], [ %conv.3, %for.body4.3 ], [ %or.3.1, %for.body4.3.1 ], [ %or.3.2, %for.body4.3.2 ], [ %or.3.3, %for.body4.3.3 ], [ %or.3.4, %for.body4.3.4 ], [ %or.3.5, %for.body4.3.5 ], [ %or.3.6, %for.body4.3.6 ], [ %or.3.7, %for.body4.3.7 ]
  %arrayidx6.3 = getelementptr inbounds %struct.curve448_scalar_s, %struct.curve448_scalar_s* %s, i64 0, i32 0, i64 3
  store i64 %out.0.lcssa.3, i64* %arrayidx6.3, align 8, !tbaa !4
  %cmp321.4 = icmp ult i64 %k.1.lcssa.3, %nbytes
  br i1 %cmp321.4, label %for.body4.4, label %for.end.4

for.body4.4:                                      ; preds = %for.end.3
  %arrayidx.4 = getelementptr inbounds i8, i8* %ser, i64 %k.1.lcssa.3
  %34 = load i8, i8* %arrayidx.4, align 1, !tbaa !10
  %conv.4 = zext i8 %34 to i64
  %inc5.4 = add nuw nsw i64 %k.1.lcssa.3, 1
  %cmp3.4 = icmp ult i64 %inc5.4, %nbytes
  br i1 %cmp3.4, label %for.body4.4.1, label %for.end.4, !llvm.loop !11

for.body4.4.1:                                    ; preds = %for.body4.4
  %arrayidx.4.1 = getelementptr inbounds i8, i8* %ser, i64 %inc5.4
  %35 = load i8, i8* %arrayidx.4.1, align 1, !tbaa !10
  %conv.4.1 = zext i8 %35 to i64
  %shl.4.1 = shl nuw nsw i64 %conv.4.1, 8
  %or.4.1 = or i64 %shl.4.1, %conv.4
  %inc5.4.1 = add nuw nsw i64 %k.1.lcssa.3, 2
  %cmp3.4.1 = icmp ult i64 %inc5.4.1, %nbytes
  br i1 %cmp3.4.1, label %for.body4.4.2, label %for.end.4, !llvm.loop !11

for.body4.4.2:                                    ; preds = %for.body4.4.1
  %arrayidx.4.2 = getelementptr inbounds i8, i8* %ser, i64 %inc5.4.1
  %36 = load i8, i8* %arrayidx.4.2, align 1, !tbaa !10
  %conv.4.2 = zext i8 %36 to i64
  %shl.4.2 = shl nuw nsw i64 %conv.4.2, 16
  %or.4.2 = or i64 %shl.4.2, %or.4.1
  %inc5.4.2 = add nuw nsw i64 %k.1.lcssa.3, 3
  %cmp3.4.2 = icmp ult i64 %inc5.4.2, %nbytes
  br i1 %cmp3.4.2, label %for.body4.4.3, label %for.end.4, !llvm.loop !11

for.body4.4.3:                                    ; preds = %for.body4.4.2
  %arrayidx.4.3 = getelementptr inbounds i8, i8* %ser, i64 %inc5.4.2
  %37 = load i8, i8* %arrayidx.4.3, align 1, !tbaa !10
  %conv.4.3 = zext i8 %37 to i64
  %shl.4.3 = shl nuw nsw i64 %conv.4.3, 24
  %or.4.3 = or i64 %shl.4.3, %or.4.2
  %inc5.4.3 = add nuw nsw i64 %k.1.lcssa.3, 4
  %cmp3.4.3 = icmp ult i64 %inc5.4.3, %nbytes
  br i1 %cmp3.4.3, label %for.body4.4.4, label %for.end.4, !llvm.loop !11

for.body4.4.4:                                    ; preds = %for.body4.4.3
  %arrayidx.4.4 = getelementptr inbounds i8, i8* %ser, i64 %inc5.4.3
  %38 = load i8, i8* %arrayidx.4.4, align 1, !tbaa !10
  %conv.4.4 = zext i8 %38 to i64
  %shl.4.4 = shl nuw nsw i64 %conv.4.4, 32
  %or.4.4 = or i64 %shl.4.4, %or.4.3
  %inc5.4.4 = add nuw nsw i64 %k.1.lcssa.3, 5
  %cmp3.4.4 = icmp ult i64 %inc5.4.4, %nbytes
  br i1 %cmp3.4.4, label %for.body4.4.5, label %for.end.4, !llvm.loop !11

for.body4.4.5:                                    ; preds = %for.body4.4.4
  %arrayidx.4.5 = getelementptr inbounds i8, i8* %ser, i64 %inc5.4.4
  %39 = load i8, i8* %arrayidx.4.5, align 1, !tbaa !10
  %conv.4.5 = zext i8 %39 to i64
  %shl.4.5 = shl nuw nsw i64 %conv.4.5, 40
  %or.4.5 = or i64 %shl.4.5, %or.4.4
  %inc5.4.5 = add nuw nsw i64 %k.1.lcssa.3, 6
  %cmp3.4.5 = icmp ult i64 %inc5.4.5, %nbytes
  br i1 %cmp3.4.5, label %for.body4.4.6, label %for.end.4, !llvm.loop !11

for.body4.4.6:                                    ; preds = %for.body4.4.5
  %arrayidx.4.6 = getelementptr inbounds i8, i8* %ser, i64 %inc5.4.5
  %40 = load i8, i8* %arrayidx.4.6, align 1, !tbaa !10
  %conv.4.6 = zext i8 %40 to i64
  %shl.4.6 = shl nuw nsw i64 %conv.4.6, 48
  %or.4.6 = or i64 %shl.4.6, %or.4.5
  %inc5.4.6 = add nuw nsw i64 %k.1.lcssa.3, 7
  %cmp3.4.6 = icmp ult i64 %inc5.4.6, %nbytes
  br i1 %cmp3.4.6, label %for.body4.4.7, label %for.end.4, !llvm.loop !11

for.body4.4.7:                                    ; preds = %for.body4.4.6
  %arrayidx.4.7 = getelementptr inbounds i8, i8* %ser, i64 %inc5.4.6
  %41 = load i8, i8* %arrayidx.4.7, align 1, !tbaa !10
  %conv.4.7 = zext i8 %41 to i64
  %shl.4.7 = shl nuw i64 %conv.4.7, 56
  %or.4.7 = or i64 %shl.4.7, %or.4.6
  %inc5.4.7 = add nuw nsw i64 %k.1.lcssa.3, 8
  br label %for.end.4

for.end.4:                                        ; preds = %for.body4.4, %for.body4.4.1, %for.body4.4.2, %for.body4.4.3, %for.body4.4.4, %for.body4.4.5, %for.body4.4.6, %for.body4.4.7, %for.end.3
  %k.1.lcssa.4 = phi i64 [ %k.1.lcssa.3, %for.end.3 ], [ %inc5.4, %for.body4.4 ], [ %inc5.4.1, %for.body4.4.1 ], [ %inc5.4.2, %for.body4.4.2 ], [ %inc5.4.3, %for.body4.4.3 ], [ %inc5.4.4, %for.body4.4.4 ], [ %inc5.4.5, %for.body4.4.5 ], [ %inc5.4.6, %for.body4.4.6 ], [ %inc5.4.7, %for.body4.4.7 ]
  %out.0.lcssa.4 = phi i64 [ 0, %for.end.3 ], [ %conv.4, %for.body4.4 ], [ %or.4.1, %for.body4.4.1 ], [ %or.4.2, %for.body4.4.2 ], [ %or.4.3, %for.body4.4.3 ], [ %or.4.4, %for.body4.4.4 ], [ %or.4.5, %for.body4.4.5 ], [ %or.4.6, %for.body4.4.6 ], [ %or.4.7, %for.body4.4.7 ]
  %arrayidx6.4 = getelementptr inbounds %struct.curve448_scalar_s, %struct.curve448_scalar_s* %s, i64 0, i32 0, i64 4
  store i64 %out.0.lcssa.4, i64* %arrayidx6.4, align 8, !tbaa !4
  %cmp321.5 = icmp ult i64 %k.1.lcssa.4, %nbytes
  br i1 %cmp321.5, label %for.body4.5, label %for.end.5

for.body4.5:                                      ; preds = %for.end.4
  %arrayidx.5 = getelementptr inbounds i8, i8* %ser, i64 %k.1.lcssa.4
  %42 = load i8, i8* %arrayidx.5, align 1, !tbaa !10
  %conv.5 = zext i8 %42 to i64
  %inc5.5 = add nuw nsw i64 %k.1.lcssa.4, 1
  %cmp3.5 = icmp ult i64 %inc5.5, %nbytes
  br i1 %cmp3.5, label %for.body4.5.1, label %for.end.5, !llvm.loop !11

for.body4.5.1:                                    ; preds = %for.body4.5
  %arrayidx.5.1 = getelementptr inbounds i8, i8* %ser, i64 %inc5.5
  %43 = load i8, i8* %arrayidx.5.1, align 1, !tbaa !10
  %conv.5.1 = zext i8 %43 to i64
  %shl.5.1 = shl nuw nsw i64 %conv.5.1, 8
  %or.5.1 = or i64 %shl.5.1, %conv.5
  %inc5.5.1 = add nuw nsw i64 %k.1.lcssa.4, 2
  %cmp3.5.1 = icmp ult i64 %inc5.5.1, %nbytes
  br i1 %cmp3.5.1, label %for.body4.5.2, label %for.end.5, !llvm.loop !11

for.body4.5.2:                                    ; preds = %for.body4.5.1
  %arrayidx.5.2 = getelementptr inbounds i8, i8* %ser, i64 %inc5.5.1
  %44 = load i8, i8* %arrayidx.5.2, align 1, !tbaa !10
  %conv.5.2 = zext i8 %44 to i64
  %shl.5.2 = shl nuw nsw i64 %conv.5.2, 16
  %or.5.2 = or i64 %shl.5.2, %or.5.1
  %inc5.5.2 = add nuw nsw i64 %k.1.lcssa.4, 3
  %cmp3.5.2 = icmp ult i64 %inc5.5.2, %nbytes
  br i1 %cmp3.5.2, label %for.body4.5.3, label %for.end.5, !llvm.loop !11

for.body4.5.3:                                    ; preds = %for.body4.5.2
  %arrayidx.5.3 = getelementptr inbounds i8, i8* %ser, i64 %inc5.5.2
  %45 = load i8, i8* %arrayidx.5.3, align 1, !tbaa !10
  %conv.5.3 = zext i8 %45 to i64
  %shl.5.3 = shl nuw nsw i64 %conv.5.3, 24
  %or.5.3 = or i64 %shl.5.3, %or.5.2
  %inc5.5.3 = add nuw nsw i64 %k.1.lcssa.4, 4
  %cmp3.5.3 = icmp ult i64 %inc5.5.3, %nbytes
  br i1 %cmp3.5.3, label %for.body4.5.4, label %for.end.5, !llvm.loop !11

for.body4.5.4:                                    ; preds = %for.body4.5.3
  %arrayidx.5.4 = getelementptr inbounds i8, i8* %ser, i64 %inc5.5.3
  %46 = load i8, i8* %arrayidx.5.4, align 1, !tbaa !10
  %conv.5.4 = zext i8 %46 to i64
  %shl.5.4 = shl nuw nsw i64 %conv.5.4, 32
  %or.5.4 = or i64 %shl.5.4, %or.5.3
  %inc5.5.4 = add nuw nsw i64 %k.1.lcssa.4, 5
  %cmp3.5.4 = icmp ult i64 %inc5.5.4, %nbytes
  br i1 %cmp3.5.4, label %for.body4.5.5, label %for.end.5, !llvm.loop !11

for.body4.5.5:                                    ; preds = %for.body4.5.4
  %arrayidx.5.5 = getelementptr inbounds i8, i8* %ser, i64 %inc5.5.4
  %47 = load i8, i8* %arrayidx.5.5, align 1, !tbaa !10
  %conv.5.5 = zext i8 %47 to i64
  %shl.5.5 = shl nuw nsw i64 %conv.5.5, 40
  %or.5.5 = or i64 %shl.5.5, %or.5.4
  %inc5.5.5 = add nuw nsw i64 %k.1.lcssa.4, 6
  %cmp3.5.5 = icmp ult i64 %inc5.5.5, %nbytes
  br i1 %cmp3.5.5, label %for.body4.5.6, label %for.end.5, !llvm.loop !11

for.body4.5.6:                                    ; preds = %for.body4.5.5
  %arrayidx.5.6 = getelementptr inbounds i8, i8* %ser, i64 %inc5.5.5
  %48 = load i8, i8* %arrayidx.5.6, align 1, !tbaa !10
  %conv.5.6 = zext i8 %48 to i64
  %shl.5.6 = shl nuw nsw i64 %conv.5.6, 48
  %or.5.6 = or i64 %shl.5.6, %or.5.5
  %inc5.5.6 = add nuw nsw i64 %k.1.lcssa.4, 7
  %cmp3.5.6 = icmp ult i64 %inc5.5.6, %nbytes
  br i1 %cmp3.5.6, label %for.body4.5.7, label %for.end.5, !llvm.loop !11

for.body4.5.7:                                    ; preds = %for.body4.5.6
  %arrayidx.5.7 = getelementptr inbounds i8, i8* %ser, i64 %inc5.5.6
  %49 = load i8, i8* %arrayidx.5.7, align 1, !tbaa !10
  %conv.5.7 = zext i8 %49 to i64
  %shl.5.7 = shl nuw i64 %conv.5.7, 56
  %or.5.7 = or i64 %shl.5.7, %or.5.6
  %inc5.5.7 = add nuw nsw i64 %k.1.lcssa.4, 8
  br label %for.end.5

for.end.5:                                        ; preds = %for.body4.5, %for.body4.5.1, %for.body4.5.2, %for.body4.5.3, %for.body4.5.4, %for.body4.5.5, %for.body4.5.6, %for.body4.5.7, %for.end.4
  %k.1.lcssa.5 = phi i64 [ %k.1.lcssa.4, %for.end.4 ], [ %inc5.5, %for.body4.5 ], [ %inc5.5.1, %for.body4.5.1 ], [ %inc5.5.2, %for.body4.5.2 ], [ %inc5.5.3, %for.body4.5.3 ], [ %inc5.5.4, %for.body4.5.4 ], [ %inc5.5.5, %for.body4.5.5 ], [ %inc5.5.6, %for.body4.5.6 ], [ %inc5.5.7, %for.body4.5.7 ]
  %out.0.lcssa.5 = phi i64 [ 0, %for.end.4 ], [ %conv.5, %for.body4.5 ], [ %or.5.1, %for.body4.5.1 ], [ %or.5.2, %for.body4.5.2 ], [ %or.5.3, %for.body4.5.3 ], [ %or.5.4, %for.body4.5.4 ], [ %or.5.5, %for.body4.5.5 ], [ %or.5.6, %for.body4.5.6 ], [ %or.5.7, %for.body4.5.7 ]
  %arrayidx6.5 = getelementptr inbounds %struct.curve448_scalar_s, %struct.curve448_scalar_s* %s, i64 0, i32 0, i64 5
  store i64 %out.0.lcssa.5, i64* %arrayidx6.5, align 8, !tbaa !4
  %cmp321.6 = icmp ult i64 %k.1.lcssa.5, %nbytes
  br i1 %cmp321.6, label %for.body4.6, label %for.end.6

for.body4.6:                                      ; preds = %for.end.5
  %arrayidx.6 = getelementptr inbounds i8, i8* %ser, i64 %k.1.lcssa.5
  %50 = load i8, i8* %arrayidx.6, align 1, !tbaa !10
  %conv.6 = zext i8 %50 to i64
  %inc5.6 = add nuw nsw i64 %k.1.lcssa.5, 1
  %cmp3.6 = icmp ult i64 %inc5.6, %nbytes
  br i1 %cmp3.6, label %for.body4.6.1, label %for.end.6, !llvm.loop !11

for.body4.6.1:                                    ; preds = %for.body4.6
  %arrayidx.6.1 = getelementptr inbounds i8, i8* %ser, i64 %inc5.6
  %51 = load i8, i8* %arrayidx.6.1, align 1, !tbaa !10
  %conv.6.1 = zext i8 %51 to i64
  %shl.6.1 = shl nuw nsw i64 %conv.6.1, 8
  %or.6.1 = or i64 %shl.6.1, %conv.6
  %inc5.6.1 = add nuw nsw i64 %k.1.lcssa.5, 2
  %cmp3.6.1 = icmp ult i64 %inc5.6.1, %nbytes
  br i1 %cmp3.6.1, label %for.body4.6.2, label %for.end.6, !llvm.loop !11

for.body4.6.2:                                    ; preds = %for.body4.6.1
  %arrayidx.6.2 = getelementptr inbounds i8, i8* %ser, i64 %inc5.6.1
  %52 = load i8, i8* %arrayidx.6.2, align 1, !tbaa !10
  %conv.6.2 = zext i8 %52 to i64
  %shl.6.2 = shl nuw nsw i64 %conv.6.2, 16
  %or.6.2 = or i64 %shl.6.2, %or.6.1
  %inc5.6.2 = add nuw nsw i64 %k.1.lcssa.5, 3
  %cmp3.6.2 = icmp ult i64 %inc5.6.2, %nbytes
  br i1 %cmp3.6.2, label %for.body4.6.3, label %for.end.6, !llvm.loop !11

for.body4.6.3:                                    ; preds = %for.body4.6.2
  %arrayidx.6.3 = getelementptr inbounds i8, i8* %ser, i64 %inc5.6.2
  %53 = load i8, i8* %arrayidx.6.3, align 1, !tbaa !10
  %conv.6.3 = zext i8 %53 to i64
  %shl.6.3 = shl nuw nsw i64 %conv.6.3, 24
  %or.6.3 = or i64 %shl.6.3, %or.6.2
  %inc5.6.3 = add nuw nsw i64 %k.1.lcssa.5, 4
  %cmp3.6.3 = icmp ult i64 %inc5.6.3, %nbytes
  br i1 %cmp3.6.3, label %for.body4.6.4, label %for.end.6, !llvm.loop !11

for.body4.6.4:                                    ; preds = %for.body4.6.3
  %arrayidx.6.4 = getelementptr inbounds i8, i8* %ser, i64 %inc5.6.3
  %54 = load i8, i8* %arrayidx.6.4, align 1, !tbaa !10
  %conv.6.4 = zext i8 %54 to i64
  %shl.6.4 = shl nuw nsw i64 %conv.6.4, 32
  %or.6.4 = or i64 %shl.6.4, %or.6.3
  %inc5.6.4 = add nuw nsw i64 %k.1.lcssa.5, 5
  %cmp3.6.4 = icmp ult i64 %inc5.6.4, %nbytes
  br i1 %cmp3.6.4, label %for.body4.6.5, label %for.end.6, !llvm.loop !11

for.body4.6.5:                                    ; preds = %for.body4.6.4
  %arrayidx.6.5 = getelementptr inbounds i8, i8* %ser, i64 %inc5.6.4
  %55 = load i8, i8* %arrayidx.6.5, align 1, !tbaa !10
  %conv.6.5 = zext i8 %55 to i64
  %shl.6.5 = shl nuw nsw i64 %conv.6.5, 40
  %or.6.5 = or i64 %shl.6.5, %or.6.4
  %inc5.6.5 = add nuw nsw i64 %k.1.lcssa.5, 6
  %cmp3.6.5 = icmp ult i64 %inc5.6.5, %nbytes
  br i1 %cmp3.6.5, label %for.body4.6.6, label %for.end.6, !llvm.loop !11

for.body4.6.6:                                    ; preds = %for.body4.6.5
  %arrayidx.6.6 = getelementptr inbounds i8, i8* %ser, i64 %inc5.6.5
  %56 = load i8, i8* %arrayidx.6.6, align 1, !tbaa !10
  %conv.6.6 = zext i8 %56 to i64
  %shl.6.6 = shl nuw nsw i64 %conv.6.6, 48
  %or.6.6 = or i64 %shl.6.6, %or.6.5
  %inc5.6.6 = add nuw nsw i64 %k.1.lcssa.5, 7
  %cmp3.6.6 = icmp ult i64 %inc5.6.6, %nbytes
  br i1 %cmp3.6.6, label %for.body4.6.7, label %for.end.6, !llvm.loop !11

for.body4.6.7:                                    ; preds = %for.body4.6.6
  %arrayidx.6.7 = getelementptr inbounds i8, i8* %ser, i64 %inc5.6.6
  %57 = load i8, i8* %arrayidx.6.7, align 1, !tbaa !10
  %conv.6.7 = zext i8 %57 to i64
  %shl.6.7 = shl nuw i64 %conv.6.7, 56
  %or.6.7 = or i64 %shl.6.7, %or.6.6
  br label %for.end.6

for.end.6:                                        ; preds = %for.body4.6, %for.body4.6.1, %for.body4.6.2, %for.body4.6.3, %for.body4.6.4, %for.body4.6.5, %for.body4.6.6, %for.body4.6.7, %for.end.5
  %out.0.lcssa.6 = phi i64 [ 0, %for.end.5 ], [ %conv.6, %for.body4.6 ], [ %or.6.1, %for.body4.6.1 ], [ %or.6.2, %for.body4.6.2 ], [ %or.6.3, %for.body4.6.3 ], [ %or.6.4, %for.body4.6.4 ], [ %or.6.5, %for.body4.6.5 ], [ %or.6.6, %for.body4.6.6 ], [ %or.6.7, %for.body4.6.7 ]
  %arrayidx6.6 = getelementptr inbounds %struct.curve448_scalar_s, %struct.curve448_scalar_s* %s, i64 0, i32 0, i64 6
  store i64 %out.0.lcssa.6, i64* %arrayidx6.6, align 8, !tbaa !4
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc i32 @c448_succeed_if(i64 noundef %x) unnamed_addr #3 {
entry:
  %conv = trunc i64 %x to i32
  ret i32 %conv
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc i64 @constant_time_is_zero_64(i64 noundef %a) unnamed_addr #3 {
entry:
  %neg = xor i64 %a, -1
  %sub = add i64 %a, -1
  %and = and i64 %sub, %neg
  %call = tail call fastcc i64 @constant_time_msb_64(i64 noundef %and) #9
  ret i64 %call
}

; Function Attrs: noinline nounwind uwtable
define void @ossl_curve448_scalar_destroy(%struct.curve448_scalar_s* noundef %scalar) local_unnamed_addr #4 {
entry:
  %0 = bitcast %struct.curve448_scalar_s* %scalar to i8*
  tail call void @OPENSSL_cleanse(i8* noundef %0, i64 noundef 56) #11
  ret void
}

declare void @OPENSSL_cleanse(i8* noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind uwtable
define void @ossl_curve448_scalar_decode_long(%struct.curve448_scalar_s* nocapture noundef %s, i8* nocapture noundef readonly %ser, i64 noundef %ser_len) local_unnamed_addr #4 {
entry:
  %t1 = alloca [1 x %struct.curve448_scalar_s], align 16
  %t2 = alloca [1 x %struct.curve448_scalar_s], align 16
  %0 = bitcast [1 x %struct.curve448_scalar_s]* %t1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %0) #10
  %1 = bitcast [1 x %struct.curve448_scalar_s]* %t2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %1) #10
  %cmp = icmp eq i64 %ser_len, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call fastcc void @curve448_scalar_copy(%struct.curve448_scalar_s* noundef %s, %struct.curve448_scalar_s* noundef getelementptr inbounds ([1 x %struct.curve448_scalar_s], [1 x %struct.curve448_scalar_s]* @ossl_curve448_scalar_zero, i64 0, i64 0)) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %rem = urem i64 %ser_len, 56
  %sub = sub i64 %ser_len, %rem
  %cmp1 = icmp eq i64 %rem, 0
  %sub3 = add i64 %sub, -56
  %spec.select = select i1 %cmp1, i64 %sub3, i64 %sub
  %arraydecay = getelementptr inbounds [1 x %struct.curve448_scalar_s], [1 x %struct.curve448_scalar_s]* %t1, i64 0, i64 0
  %arrayidx = getelementptr inbounds i8, i8* %ser, i64 %spec.select
  %sub5 = sub i64 %ser_len, %spec.select
  call fastcc void @scalar_decode_short(%struct.curve448_scalar_s* noundef nonnull %arraydecay, i8* noundef %arrayidx, i64 noundef %sub5) #9
  %cmp6 = icmp eq i64 %ser_len, 56
  br i1 %cmp6, label %if.then7, label %while.cond.preheader

while.cond.preheader:                             ; preds = %if.end
  %tobool.not38 = icmp eq i64 %spec.select, 0
  br i1 %tobool.not38, label %while.end, label %while.body.lr.ph

while.body.lr.ph:                                 ; preds = %while.cond.preheader
  %arraydecay14 = getelementptr inbounds [1 x %struct.curve448_scalar_s], [1 x %struct.curve448_scalar_s]* %t2, i64 0, i64 0
  br label %while.body

if.then7:                                         ; preds = %if.end
  call void @ossl_curve448_scalar_mul(%struct.curve448_scalar_s* noundef %s, %struct.curve448_scalar_s* noundef nonnull %arraydecay, %struct.curve448_scalar_s* noundef getelementptr inbounds ([1 x %struct.curve448_scalar_s], [1 x %struct.curve448_scalar_s]* @ossl_curve448_scalar_one, i64 0, i64 0)) #9
  call void @ossl_curve448_scalar_destroy(%struct.curve448_scalar_s* noundef nonnull %arraydecay) #9
  br label %cleanup

while.body:                                       ; preds = %while.body.lr.ph, %while.body
  %i.139 = phi i64 [ %spec.select, %while.body.lr.ph ], [ %sub11, %while.body ]
  %sub11 = add i64 %i.139, -56
  call fastcc void @sc_montmul(%struct.curve448_scalar_s* noundef nonnull %arraydecay, %struct.curve448_scalar_s* noundef nonnull %arraydecay, %struct.curve448_scalar_s* noundef getelementptr inbounds ([1 x %struct.curve448_scalar_s], [1 x %struct.curve448_scalar_s]* @sc_r2, i64 0, i64 0)) #9
  %add.ptr = getelementptr inbounds i8, i8* %ser, i64 %sub11
  %call = call i32 @ossl_curve448_scalar_decode(%struct.curve448_scalar_s* noundef nonnull %arraydecay14, i8* noundef %add.ptr) #9
  call void @ossl_curve448_scalar_add(%struct.curve448_scalar_s* noundef nonnull %arraydecay, %struct.curve448_scalar_s* noundef nonnull %arraydecay, %struct.curve448_scalar_s* noundef nonnull %arraydecay14) #9
  %tobool.not = icmp eq i64 %sub11, 0
  br i1 %tobool.not, label %while.end, label %while.body, !llvm.loop !12

while.end:                                        ; preds = %while.body, %while.cond.preheader
  call fastcc void @curve448_scalar_copy(%struct.curve448_scalar_s* noundef %s, %struct.curve448_scalar_s* noundef nonnull %arraydecay) #9
  call void @ossl_curve448_scalar_destroy(%struct.curve448_scalar_s* noundef nonnull %arraydecay) #9
  %arraydecay20 = getelementptr inbounds [1 x %struct.curve448_scalar_s], [1 x %struct.curve448_scalar_s]* %t2, i64 0, i64 0
  call void @ossl_curve448_scalar_destroy(%struct.curve448_scalar_s* noundef nonnull %arraydecay20) #9
  br label %cleanup

cleanup:                                          ; preds = %while.end, %if.then7, %if.then
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %1) #10
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %0) #10
  ret void
}

; Function Attrs: mustprogress nofree noinline nosync nounwind uwtable willreturn
define internal fastcc void @curve448_scalar_copy(%struct.curve448_scalar_s* nocapture noundef writeonly %out, %struct.curve448_scalar_s* nocapture noundef readonly %a) unnamed_addr #6 {
entry:
  %0 = bitcast %struct.curve448_scalar_s* %out to i8*
  %1 = bitcast %struct.curve448_scalar_s* %a to i8*
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %0, i8* noundef nonnull align 8 dereferenceable(56) %1, i64 56, i1 false), !tbaa.struct !13
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define void @ossl_curve448_scalar_encode(i8* nocapture noundef writeonly %ser, %struct.curve448_scalar_s* nocapture noundef readonly %s) local_unnamed_addr #1 {
entry:
  br label %for.cond1.preheader

for.cond1.preheader:                              ; preds = %entry, %for.cond1.preheader
  %indvars.iv33 = phi i64 [ 0, %entry ], [ %indvars.iv.next34, %for.cond1.preheader ]
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.next, %for.cond1.preheader ]
  %arrayidx = getelementptr inbounds %struct.curve448_scalar_s, %struct.curve448_scalar_s* %s, i64 0, i32 0, i64 %indvars.iv33
  %0 = load i64, i64* %arrayidx, align 8, !tbaa !4
  %conv5 = trunc i64 %0 to i8
  %arrayidx7 = getelementptr inbounds i8, i8* %ser, i64 %indvars.iv
  store i8 %conv5, i8* %arrayidx7, align 1, !tbaa !10
  %1 = or i64 %indvars.iv, 1
  %2 = load i64, i64* %arrayidx, align 8, !tbaa !4
  %shr.1 = lshr i64 %2, 8
  %conv5.1 = trunc i64 %shr.1 to i8
  %arrayidx7.1 = getelementptr inbounds i8, i8* %ser, i64 %1
  store i8 %conv5.1, i8* %arrayidx7.1, align 1, !tbaa !10
  %3 = or i64 %indvars.iv, 2
  %4 = load i64, i64* %arrayidx, align 8, !tbaa !4
  %shr.2 = lshr i64 %4, 16
  %conv5.2 = trunc i64 %shr.2 to i8
  %arrayidx7.2 = getelementptr inbounds i8, i8* %ser, i64 %3
  store i8 %conv5.2, i8* %arrayidx7.2, align 1, !tbaa !10
  %5 = or i64 %indvars.iv, 3
  %6 = load i64, i64* %arrayidx, align 8, !tbaa !4
  %shr.3 = lshr i64 %6, 24
  %conv5.3 = trunc i64 %shr.3 to i8
  %arrayidx7.3 = getelementptr inbounds i8, i8* %ser, i64 %5
  store i8 %conv5.3, i8* %arrayidx7.3, align 1, !tbaa !10
  %7 = or i64 %indvars.iv, 4
  %8 = load i64, i64* %arrayidx, align 8, !tbaa !4
  %shr.4 = lshr i64 %8, 32
  %conv5.4 = trunc i64 %shr.4 to i8
  %arrayidx7.4 = getelementptr inbounds i8, i8* %ser, i64 %7
  store i8 %conv5.4, i8* %arrayidx7.4, align 1, !tbaa !10
  %9 = or i64 %indvars.iv, 5
  %10 = load i64, i64* %arrayidx, align 8, !tbaa !4
  %shr.5 = lshr i64 %10, 40
  %conv5.5 = trunc i64 %shr.5 to i8
  %arrayidx7.5 = getelementptr inbounds i8, i8* %ser, i64 %9
  store i8 %conv5.5, i8* %arrayidx7.5, align 1, !tbaa !10
  %11 = or i64 %indvars.iv, 6
  %12 = load i64, i64* %arrayidx, align 8, !tbaa !4
  %shr.6 = lshr i64 %12, 48
  %conv5.6 = trunc i64 %shr.6 to i8
  %arrayidx7.6 = getelementptr inbounds i8, i8* %ser, i64 %11
  store i8 %conv5.6, i8* %arrayidx7.6, align 1, !tbaa !10
  %13 = or i64 %indvars.iv, 7
  %14 = load i64, i64* %arrayidx, align 8, !tbaa !4
  %shr.7 = lshr i64 %14, 56
  %conv5.7 = trunc i64 %shr.7 to i8
  %arrayidx7.7 = getelementptr inbounds i8, i8* %ser, i64 %13
  store i8 %conv5.7, i8* %arrayidx7.7, align 1, !tbaa !10
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 8
  %indvars.iv.next34 = add nuw nsw i64 %indvars.iv33, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next34, 7
  br i1 %exitcond.not, label %for.end11, label %for.cond1.preheader, !llvm.loop !14

for.end11:                                        ; preds = %for.cond1.preheader
  ret void
}

; Function Attrs: nofree noinline nosync nounwind uwtable
define void @ossl_curve448_scalar_halve(%struct.curve448_scalar_s* nocapture noundef %out, %struct.curve448_scalar_s* nocapture noundef readonly %a) local_unnamed_addr #0 {
entry:
  %arrayidx = getelementptr inbounds %struct.curve448_scalar_s, %struct.curve448_scalar_s* %a, i64 0, i32 0, i64 0
  %0 = load i64, i64* %arrayidx, align 8, !tbaa !4
  %and = and i64 %0, 1
  %sub = sub nsw i64 0, %and
  %conv = zext i64 %0 to i128
  %and5 = and i64 %sub, 2556006723728458995
  %conv6 = zext i64 %and5 to i128
  %add7 = add nuw nsw i128 %conv, %conv6
  %conv8 = trunc i128 %add7 to i64
  %arrayidx11 = getelementptr inbounds %struct.curve448_scalar_s, %struct.curve448_scalar_s* %out, i64 0, i32 0, i64 0
  store i64 %conv8, i64* %arrayidx11, align 8, !tbaa !4
  %shr = lshr i128 %add7, 64
  %arrayidx2.1 = getelementptr inbounds %struct.curve448_scalar_s, %struct.curve448_scalar_s* %a, i64 0, i32 0, i64 1
  %1 = load i64, i64* %arrayidx2.1, align 8, !tbaa !4
  %conv.1 = zext i64 %1 to i128
  %add.1 = add nuw nsw i128 %shr, %conv.1
  %and5.1 = and i64 %sub, 2408513697996967765
  %conv6.1 = zext i64 %and5.1 to i128
  %add7.1 = add nuw nsw i128 %add.1, %conv6.1
  %conv8.1 = trunc i128 %add7.1 to i64
  %arrayidx11.1 = getelementptr inbounds %struct.curve448_scalar_s, %struct.curve448_scalar_s* %out, i64 0, i32 0, i64 1
  store i64 %conv8.1, i64* %arrayidx11.1, align 8, !tbaa !4
  %shr.1 = lshr i128 %add7.1, 64
  %arrayidx2.2 = getelementptr inbounds %struct.curve448_scalar_s, %struct.curve448_scalar_s* %a, i64 0, i32 0, i64 2
  %2 = load i64, i64* %arrayidx2.2, align 8, !tbaa !4
  %conv.2 = zext i64 %2 to i128
  %add.2 = add nuw nsw i128 %shr.1, %conv.2
  %and5.2 = and i64 %sub, -4301259484579875184
  %conv6.2 = zext i64 %and5.2 to i128
  %add7.2 = add nuw nsw i128 %add.2, %conv6.2
  %conv8.2 = trunc i128 %add7.2 to i64
  %arrayidx11.2 = getelementptr inbounds %struct.curve448_scalar_s, %struct.curve448_scalar_s* %out, i64 0, i32 0, i64 2
  store i64 %conv8.2, i64* %arrayidx11.2, align 8, !tbaa !4
  %shr.2 = lshr i128 %add7.2, 64
  %arrayidx2.3 = getelementptr inbounds %struct.curve448_scalar_s, %struct.curve448_scalar_s* %a, i64 0, i32 0, i64 3
  %3 = load i64, i64* %arrayidx2.3, align 8, !tbaa !4
  %conv.3 = zext i64 %3 to i128
  %add.3 = add nuw nsw i128 %shr.2, %conv.3
  %and5.3 = and i64 %sub, -2201345047
  %conv6.3 = zext i64 %and5.3 to i128
  %add7.3 = add nuw nsw i128 %add.3, %conv6.3
  %conv8.3 = trunc i128 %add7.3 to i64
  %arrayidx11.3 = getelementptr inbounds %struct.curve448_scalar_s, %struct.curve448_scalar_s* %out, i64 0, i32 0, i64 3
  store i64 %conv8.3, i64* %arrayidx11.3, align 8, !tbaa !4
  %shr.3 = lshr i128 %add7.3, 64
  %arrayidx2.4 = getelementptr inbounds %struct.curve448_scalar_s, %struct.curve448_scalar_s* %a, i64 0, i32 0, i64 4
  %4 = load i64, i64* %arrayidx2.4, align 8, !tbaa !4
  %conv.4 = zext i64 %4 to i128
  %add.4 = add nuw nsw i128 %shr.3, %conv.4
  %conv6.4 = zext i64 %sub to i128
  %add7.4 = add nuw nsw i128 %add.4, %conv6.4
  %conv8.4 = trunc i128 %add7.4 to i64
  %arrayidx11.4 = getelementptr inbounds %struct.curve448_scalar_s, %struct.curve448_scalar_s* %out, i64 0, i32 0, i64 4
  store i64 %conv8.4, i64* %arrayidx11.4, align 8, !tbaa !4
  %shr.4 = lshr i128 %add7.4, 64
  %arrayidx2.5 = getelementptr inbounds %struct.curve448_scalar_s, %struct.curve448_scalar_s* %a, i64 0, i32 0, i64 5
  %5 = load i64, i64* %arrayidx2.5, align 8, !tbaa !4
  %conv.5 = zext i64 %5 to i128
  %add.5 = add nuw nsw i128 %shr.4, %conv.5
  %add7.5 = add nuw nsw i128 %add.5, %conv6.4
  %conv8.5 = trunc i128 %add7.5 to i64
  %arrayidx11.5 = getelementptr inbounds %struct.curve448_scalar_s, %struct.curve448_scalar_s* %out, i64 0, i32 0, i64 5
  store i64 %conv8.5, i64* %arrayidx11.5, align 8, !tbaa !4
  %shr.5 = lshr i128 %add7.5, 64
  %arrayidx2.6 = getelementptr inbounds %struct.curve448_scalar_s, %struct.curve448_scalar_s* %a, i64 0, i32 0, i64 6
  %6 = load i64, i64* %arrayidx2.6, align 8, !tbaa !4
  %conv.6 = zext i64 %6 to i128
  %add.6 = add nuw nsw i128 %shr.5, %conv.6
  %and5.6 = and i64 %sub, 4611686018427387903
  %conv6.6 = zext i64 %and5.6 to i128
  %add7.6 = add nuw nsw i128 %add.6, %conv6.6
  %conv8.6 = trunc i128 %add7.6 to i64
  %arrayidx11.6 = getelementptr inbounds %struct.curve448_scalar_s, %struct.curve448_scalar_s* %out, i64 0, i32 0, i64 6
  %or = tail call i64 @llvm.fshl.i64(i64 %conv8.1, i64 %conv8, i64 63)
  store i64 %or, i64* %arrayidx11, align 8, !tbaa !4
  %or.1 = tail call i64 @llvm.fshl.i64(i64 %conv8.2, i64 %conv8.1, i64 63)
  store i64 %or.1, i64* %arrayidx11.1, align 8, !tbaa !4
  %or.2 = tail call i64 @llvm.fshl.i64(i64 %conv8.3, i64 %conv8.2, i64 63)
  store i64 %or.2, i64* %arrayidx11.2, align 8, !tbaa !4
  %or.3 = tail call i64 @llvm.fshl.i64(i64 %conv8.4, i64 %conv8.3, i64 63)
  store i64 %or.3, i64* %arrayidx11.3, align 8, !tbaa !4
  %or.4 = tail call i64 @llvm.fshl.i64(i64 %conv8.5, i64 %conv8.4, i64 63)
  store i64 %or.4, i64* %arrayidx11.4, align 8, !tbaa !4
  %or.5 = tail call i64 @llvm.fshl.i64(i64 %conv8.6, i64 %conv8.5, i64 63)
  store i64 %or.5, i64* %arrayidx11.5, align 8, !tbaa !4
  %shr.6 = lshr i128 %add7.6, 64
  %chain.0.tr = trunc i128 %shr.6 to i64
  %or36 = tail call i64 @llvm.fshl.i64(i64 %chain.0.tr, i64 %conv8.6, i64 63)
  store i64 %or36, i64* %arrayidx11.6, align 8, !tbaa !4
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc i64 @constant_time_msb_64(i64 noundef %a) unnamed_addr #3 {
entry:
  %shr.neg = ashr i64 %a, 63
  ret i64 %shr.neg
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #7

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.fshl.i64(i64, i64, i64) #8

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umin.i64(i64, i64) #8

attributes #0 = { nofree noinline nosync nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree noinline norecurse nosync nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline nosync nounwind uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #8 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nobuiltin "no-builtins" }
attributes #10 = { nounwind }
attributes #11 = { nobuiltin nounwind "no-builtins" }

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
!11 = distinct !{!11, !9}
!12 = distinct !{!12, !9}
!13 = !{i64 0, i64 56, !10}
!14 = distinct !{!14, !9}
