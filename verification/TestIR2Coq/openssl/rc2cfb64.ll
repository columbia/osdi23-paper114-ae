; ModuleID = 'crypto/rc2/rc2cfb64.c'
source_filename = "crypto/rc2/rc2cfb64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rc2_key_st = type { [64 x i32] }

; Function Attrs: noinline nounwind uwtable
define void @RC2_cfb64_encrypt(i8* nocapture noundef readonly %in, i8* nocapture noundef writeonly %out, i64 noundef %length, %struct.rc2_key_st* noundef %schedule, i8* noundef %ivec, i32* nocapture noundef %num, i32 noundef %encrypt) local_unnamed_addr #0 {
entry:
  %ti = alloca [2 x i64], align 16
  %0 = load i32, i32* %num, align 4, !tbaa !4
  %1 = bitcast [2 x i64]* %ti to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %1) #3
  %tobool.not = icmp eq i32 %encrypt, 0
  %tobool69.not254 = icmp eq i64 %length, 0
  br i1 %tobool.not, label %while.cond67.preheader, label %while.cond.preheader

while.cond.preheader:                             ; preds = %entry
  br i1 %tobool69.not254, label %if.end151, label %while.body.lr.ph

while.body.lr.ph:                                 ; preds = %while.cond.preheader
  %incdec.ptr = getelementptr inbounds i8, i8* %ivec, i64 1
  %incdec.ptr3 = getelementptr inbounds i8, i8* %ivec, i64 2
  %incdec.ptr5 = getelementptr inbounds i8, i8* %ivec, i64 3
  %incdec.ptr9 = getelementptr inbounds i8, i8* %ivec, i64 4
  %arrayidx = getelementptr inbounds [2 x i64], [2 x i64]* %ti, i64 0, i64 0
  %incdec.ptr13 = getelementptr inbounds i8, i8* %ivec, i64 5
  %incdec.ptr15 = getelementptr inbounds i8, i8* %ivec, i64 6
  %incdec.ptr19 = getelementptr inbounds i8, i8* %ivec, i64 7
  %arrayidx27 = getelementptr inbounds [2 x i64], [2 x i64]* %ti, i64 0, i64 1
  br label %while.body

while.cond67.preheader:                           ; preds = %entry
  br i1 %tobool69.not254, label %if.end151, label %while.body70.lr.ph

while.body70.lr.ph:                               ; preds = %while.cond67.preheader
  %incdec.ptr74 = getelementptr inbounds i8, i8* %ivec, i64 1
  %incdec.ptr76 = getelementptr inbounds i8, i8* %ivec, i64 2
  %incdec.ptr80 = getelementptr inbounds i8, i8* %ivec, i64 3
  %incdec.ptr84 = getelementptr inbounds i8, i8* %ivec, i64 4
  %arrayidx88 = getelementptr inbounds [2 x i64], [2 x i64]* %ti, i64 0, i64 0
  %incdec.ptr89 = getelementptr inbounds i8, i8* %ivec, i64 5
  %incdec.ptr91 = getelementptr inbounds i8, i8* %ivec, i64 6
  %incdec.ptr95 = getelementptr inbounds i8, i8* %ivec, i64 7
  %arrayidx103 = getelementptr inbounds [2 x i64], [2 x i64]* %ti, i64 0, i64 1
  br label %while.body70

while.body:                                       ; preds = %while.body.lr.ph, %if.end
  %dec252.in = phi i64 [ %length, %while.body.lr.ph ], [ %dec252, %if.end ]
  %n.0251 = phi i32 [ %0, %while.body.lr.ph ], [ %and66, %if.end ]
  %in.addr.0250 = phi i8* [ %in, %while.body.lr.ph ], [ %incdec.ptr58, %if.end ]
  %out.addr.0249 = phi i8* [ %out, %while.body.lr.ph ], [ %incdec.ptr63, %if.end ]
  %dec252 = add nsw i64 %dec252.in, -1
  %cmp = icmp eq i32 %n.0251, 0
  br i1 %cmp, label %if.then2, label %if.end

if.then2:                                         ; preds = %while.body
  %2 = load i8, i8* %ivec, align 1, !tbaa !8
  %conv = zext i8 %2 to i64
  %3 = load i8, i8* %incdec.ptr, align 1, !tbaa !8
  %conv4 = zext i8 %3 to i64
  %shl = shl nuw nsw i64 %conv4, 8
  %or = or i64 %shl, %conv
  %4 = load i8, i8* %incdec.ptr3, align 1, !tbaa !8
  %conv6 = zext i8 %4 to i64
  %shl7 = shl nuw nsw i64 %conv6, 16
  %or8 = or i64 %or, %shl7
  %5 = load i8, i8* %incdec.ptr5, align 1, !tbaa !8
  %conv10 = zext i8 %5 to i64
  %shl11 = shl nuw nsw i64 %conv10, 24
  %or12 = or i64 %or8, %shl11
  store i64 %or12, i64* %arrayidx, align 16, !tbaa !9
  %6 = load i8, i8* %incdec.ptr9, align 1, !tbaa !8
  %conv14 = zext i8 %6 to i64
  %7 = load i8, i8* %incdec.ptr13, align 1, !tbaa !8
  %conv16 = zext i8 %7 to i64
  %shl17 = shl nuw nsw i64 %conv16, 8
  %or18 = or i64 %shl17, %conv14
  %8 = load i8, i8* %incdec.ptr15, align 1, !tbaa !8
  %conv20 = zext i8 %8 to i64
  %shl21 = shl nuw nsw i64 %conv20, 16
  %or22 = or i64 %or18, %shl21
  %9 = load i8, i8* %incdec.ptr19, align 1, !tbaa !8
  %conv24 = zext i8 %9 to i64
  %shl25 = shl nuw nsw i64 %conv24, 24
  %or26 = or i64 %or22, %shl25
  store i64 %or26, i64* %arrayidx27, align 8, !tbaa !9
  call void @RC2_encrypt(i64* noundef nonnull %arrayidx, %struct.rc2_key_st* noundef %schedule) #4
  %10 = load i64, i64* %arrayidx, align 16, !tbaa !9
  %conv29 = trunc i64 %10 to i8
  store i8 %conv29, i8* %ivec, align 1, !tbaa !8
  %shr = lshr i64 %10, 8
  %conv32 = trunc i64 %shr to i8
  store i8 %conv32, i8* %incdec.ptr, align 1, !tbaa !8
  %shr34 = lshr i64 %10, 16
  %conv36 = trunc i64 %shr34 to i8
  store i8 %conv36, i8* %incdec.ptr3, align 1, !tbaa !8
  %shr38 = lshr i64 %10, 24
  %conv40 = trunc i64 %shr38 to i8
  store i8 %conv40, i8* %incdec.ptr5, align 1, !tbaa !8
  %11 = load i64, i64* %arrayidx27, align 8, !tbaa !9
  %conv44 = trunc i64 %11 to i8
  store i8 %conv44, i8* %incdec.ptr9, align 1, !tbaa !8
  %shr46 = lshr i64 %11, 8
  %conv48 = trunc i64 %shr46 to i8
  store i8 %conv48, i8* %incdec.ptr13, align 1, !tbaa !8
  %shr50 = lshr i64 %11, 16
  %conv52 = trunc i64 %shr50 to i8
  store i8 %conv52, i8* %incdec.ptr15, align 1, !tbaa !8
  %shr54 = lshr i64 %11, 24
  %conv56 = trunc i64 %shr54 to i8
  store i8 %conv56, i8* %incdec.ptr19, align 1, !tbaa !8
  br label %if.end

if.end:                                           ; preds = %if.then2, %while.body
  %incdec.ptr58 = getelementptr inbounds i8, i8* %in.addr.0250, i64 1
  %12 = load i8, i8* %in.addr.0250, align 1, !tbaa !8
  %idxprom = sext i32 %n.0251 to i64
  %arrayidx60 = getelementptr inbounds i8, i8* %ivec, i64 %idxprom
  %13 = load i8, i8* %arrayidx60, align 1, !tbaa !8
  %xor245 = xor i8 %13, %12
  %incdec.ptr63 = getelementptr inbounds i8, i8* %out.addr.0249, i64 1
  store i8 %xor245, i8* %out.addr.0249, align 1, !tbaa !8
  store i8 %xor245, i8* %arrayidx60, align 1, !tbaa !8
  %add = add nsw i32 %n.0251, 1
  %and66 = and i32 %add, 7
  %tobool1.not = icmp eq i64 %dec252, 0
  br i1 %tobool1.not, label %if.end151, label %while.body, !llvm.loop !11

while.body70:                                     ; preds = %while.body70.lr.ph, %if.end137
  %dec68258.in = phi i64 [ %length, %while.body70.lr.ph ], [ %dec68258, %if.end137 ]
  %n.1257 = phi i32 [ %0, %while.body70.lr.ph ], [ %and149, %if.end137 ]
  %in.addr.1256 = phi i8* [ %in, %while.body70.lr.ph ], [ %incdec.ptr138, %if.end137 ]
  %out.addr.1255 = phi i8* [ %out, %while.body70.lr.ph ], [ %incdec.ptr147, %if.end137 ]
  %dec68258 = add nsw i64 %dec68258.in, -1
  %cmp71 = icmp eq i32 %n.1257, 0
  br i1 %cmp71, label %if.then73, label %if.end137

if.then73:                                        ; preds = %while.body70
  %14 = load i8, i8* %ivec, align 1, !tbaa !8
  %conv75 = zext i8 %14 to i64
  %15 = load i8, i8* %incdec.ptr74, align 1, !tbaa !8
  %conv77 = zext i8 %15 to i64
  %shl78 = shl nuw nsw i64 %conv77, 8
  %or79 = or i64 %shl78, %conv75
  %16 = load i8, i8* %incdec.ptr76, align 1, !tbaa !8
  %conv81 = zext i8 %16 to i64
  %shl82 = shl nuw nsw i64 %conv81, 16
  %or83 = or i64 %or79, %shl82
  %17 = load i8, i8* %incdec.ptr80, align 1, !tbaa !8
  %conv85 = zext i8 %17 to i64
  %shl86 = shl nuw nsw i64 %conv85, 24
  %or87 = or i64 %or83, %shl86
  store i64 %or87, i64* %arrayidx88, align 16, !tbaa !9
  %18 = load i8, i8* %incdec.ptr84, align 1, !tbaa !8
  %conv90 = zext i8 %18 to i64
  %19 = load i8, i8* %incdec.ptr89, align 1, !tbaa !8
  %conv92 = zext i8 %19 to i64
  %shl93 = shl nuw nsw i64 %conv92, 8
  %or94 = or i64 %shl93, %conv90
  %20 = load i8, i8* %incdec.ptr91, align 1, !tbaa !8
  %conv96 = zext i8 %20 to i64
  %shl97 = shl nuw nsw i64 %conv96, 16
  %or98 = or i64 %or94, %shl97
  %21 = load i8, i8* %incdec.ptr95, align 1, !tbaa !8
  %conv100 = zext i8 %21 to i64
  %shl101 = shl nuw nsw i64 %conv100, 24
  %or102 = or i64 %or98, %shl101
  store i64 %or102, i64* %arrayidx103, align 8, !tbaa !9
  call void @RC2_encrypt(i64* noundef nonnull %arrayidx88, %struct.rc2_key_st* noundef %schedule) #4
  %22 = load i64, i64* %arrayidx88, align 16, !tbaa !9
  %conv107 = trunc i64 %22 to i8
  store i8 %conv107, i8* %ivec, align 1, !tbaa !8
  %shr109 = lshr i64 %22, 8
  %conv111 = trunc i64 %shr109 to i8
  store i8 %conv111, i8* %incdec.ptr74, align 1, !tbaa !8
  %shr113 = lshr i64 %22, 16
  %conv115 = trunc i64 %shr113 to i8
  store i8 %conv115, i8* %incdec.ptr76, align 1, !tbaa !8
  %shr117 = lshr i64 %22, 24
  %conv119 = trunc i64 %shr117 to i8
  store i8 %conv119, i8* %incdec.ptr80, align 1, !tbaa !8
  %23 = load i64, i64* %arrayidx103, align 8, !tbaa !9
  %conv123 = trunc i64 %23 to i8
  store i8 %conv123, i8* %incdec.ptr84, align 1, !tbaa !8
  %shr125 = lshr i64 %23, 8
  %conv127 = trunc i64 %shr125 to i8
  store i8 %conv127, i8* %incdec.ptr89, align 1, !tbaa !8
  %shr129 = lshr i64 %23, 16
  %conv131 = trunc i64 %shr129 to i8
  store i8 %conv131, i8* %incdec.ptr91, align 1, !tbaa !8
  %shr133 = lshr i64 %23, 24
  %conv135 = trunc i64 %shr133 to i8
  store i8 %conv135, i8* %incdec.ptr95, align 1, !tbaa !8
  br label %if.end137

if.end137:                                        ; preds = %if.then73, %while.body70
  %incdec.ptr138 = getelementptr inbounds i8, i8* %in.addr.1256, i64 1
  %24 = load i8, i8* %in.addr.1256, align 1, !tbaa !8
  %idxprom139 = sext i32 %n.1257 to i64
  %arrayidx140 = getelementptr inbounds i8, i8* %ivec, i64 %idxprom139
  %25 = load i8, i8* %arrayidx140, align 1, !tbaa !8
  store i8 %24, i8* %arrayidx140, align 1, !tbaa !8
  %xor145244 = xor i8 %25, %24
  %incdec.ptr147 = getelementptr inbounds i8, i8* %out.addr.1255, i64 1
  store i8 %xor145244, i8* %out.addr.1255, align 1, !tbaa !8
  %add148 = add nsw i32 %n.1257, 1
  %and149 = and i32 %add148, 7
  %tobool69.not = icmp eq i64 %dec68258, 0
  br i1 %tobool69.not, label %if.end151, label %while.body70, !llvm.loop !13

if.end151:                                        ; preds = %if.end, %if.end137, %while.cond.preheader, %while.cond67.preheader
  %n.2 = phi i32 [ %0, %while.cond67.preheader ], [ %0, %while.cond.preheader ], [ %and149, %if.end137 ], [ %and66, %if.end ]
  store i32 %n.2, i32* %num, align 4, !tbaa !4
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %1) #3
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

declare void @RC2_encrypt(i64* noundef, %struct.rc2_key_st* noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

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
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!6, !6, i64 0}
!9 = !{!10, !10, i64 0}
!10 = !{!"long", !6, i64 0}
!11 = distinct !{!11, !12}
!12 = !{!"llvm.loop.mustprogress"}
!13 = distinct !{!13, !12}
