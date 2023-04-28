; ModuleID = 'crypto/des/cfb64enc.c'
source_filename = "crypto/des/cfb64enc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.DES_ks = type { [16 x %union.anon] }
%union.anon = type { [2 x i32] }

; Function Attrs: noinline nounwind uwtable
define void @DES_cfb64_encrypt(i8* nocapture noundef readonly %in, i8* nocapture noundef writeonly %out, i64 noundef %length, %struct.DES_ks* noundef %schedule, [8 x i8]* noundef %ivec, i32* nocapture noundef %num, i32 noundef %enc) local_unnamed_addr #0 {
entry:
  %ti = alloca [2 x i32], align 4
  %0 = load i32, i32* %num, align 4, !tbaa !4
  %1 = bitcast [2 x i32]* %ti to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #3
  %arrayidx = getelementptr inbounds [8 x i8], [8 x i8]* %ivec, i64 0, i64 0
  %tobool.not = icmp eq i32 %enc, 0
  %tobool72.not259 = icmp eq i64 %length, 0
  br i1 %tobool.not, label %while.cond70.preheader, label %while.cond.preheader

while.cond.preheader:                             ; preds = %entry
  br i1 %tobool72.not259, label %if.end156, label %while.body.lr.ph

while.body.lr.ph:                                 ; preds = %while.cond.preheader
  %incdec.ptr = getelementptr inbounds [8 x i8], [8 x i8]* %ivec, i64 0, i64 1
  %incdec.ptr3 = getelementptr inbounds [8 x i8], [8 x i8]* %ivec, i64 0, i64 2
  %incdec.ptr5 = getelementptr inbounds [8 x i8], [8 x i8]* %ivec, i64 0, i64 3
  %incdec.ptr9 = getelementptr inbounds [8 x i8], [8 x i8]* %ivec, i64 0, i64 4
  %arrayidx13 = getelementptr inbounds [2 x i32], [2 x i32]* %ti, i64 0, i64 0
  %incdec.ptr14 = getelementptr inbounds [8 x i8], [8 x i8]* %ivec, i64 0, i64 5
  %incdec.ptr16 = getelementptr inbounds [8 x i8], [8 x i8]* %ivec, i64 0, i64 6
  %incdec.ptr20 = getelementptr inbounds [8 x i8], [8 x i8]* %ivec, i64 0, i64 7
  %arrayidx28 = getelementptr inbounds [2 x i32], [2 x i32]* %ti, i64 0, i64 1
  br label %while.body

while.cond70.preheader:                           ; preds = %entry
  br i1 %tobool72.not259, label %if.end156, label %while.body73.lr.ph

while.body73.lr.ph:                               ; preds = %while.cond70.preheader
  %incdec.ptr77 = getelementptr inbounds [8 x i8], [8 x i8]* %ivec, i64 0, i64 1
  %incdec.ptr79 = getelementptr inbounds [8 x i8], [8 x i8]* %ivec, i64 0, i64 2
  %incdec.ptr83 = getelementptr inbounds [8 x i8], [8 x i8]* %ivec, i64 0, i64 3
  %incdec.ptr87 = getelementptr inbounds [8 x i8], [8 x i8]* %ivec, i64 0, i64 4
  %arrayidx91 = getelementptr inbounds [2 x i32], [2 x i32]* %ti, i64 0, i64 0
  %incdec.ptr92 = getelementptr inbounds [8 x i8], [8 x i8]* %ivec, i64 0, i64 5
  %incdec.ptr94 = getelementptr inbounds [8 x i8], [8 x i8]* %ivec, i64 0, i64 6
  %incdec.ptr98 = getelementptr inbounds [8 x i8], [8 x i8]* %ivec, i64 0, i64 7
  %arrayidx106 = getelementptr inbounds [2 x i32], [2 x i32]* %ti, i64 0, i64 1
  br label %while.body73

while.body:                                       ; preds = %while.body.lr.ph, %if.end
  %dec257.in = phi i64 [ %length, %while.body.lr.ph ], [ %dec257, %if.end ]
  %n.0256 = phi i32 [ %0, %while.body.lr.ph ], [ %and69, %if.end ]
  %in.addr.0255 = phi i8* [ %in, %while.body.lr.ph ], [ %incdec.ptr61, %if.end ]
  %out.addr.0254 = phi i8* [ %out, %while.body.lr.ph ], [ %incdec.ptr66, %if.end ]
  %dec257 = add nsw i64 %dec257.in, -1
  %cmp = icmp eq i32 %n.0256, 0
  br i1 %cmp, label %if.then2, label %if.end

if.then2:                                         ; preds = %while.body
  %2 = load i8, i8* %arrayidx, align 1, !tbaa !8
  %conv = zext i8 %2 to i32
  %3 = load i8, i8* %incdec.ptr, align 1, !tbaa !8
  %conv4 = zext i8 %3 to i32
  %shl = shl nuw nsw i32 %conv4, 8
  %or = or i32 %shl, %conv
  %4 = load i8, i8* %incdec.ptr3, align 1, !tbaa !8
  %conv6 = zext i8 %4 to i32
  %shl7 = shl nuw nsw i32 %conv6, 16
  %or8 = or i32 %or, %shl7
  %5 = load i8, i8* %incdec.ptr5, align 1, !tbaa !8
  %conv10 = zext i8 %5 to i32
  %shl11 = shl nuw i32 %conv10, 24
  %or12 = or i32 %or8, %shl11
  store i32 %or12, i32* %arrayidx13, align 4, !tbaa !4
  %6 = load i8, i8* %incdec.ptr9, align 1, !tbaa !8
  %conv15 = zext i8 %6 to i32
  %7 = load i8, i8* %incdec.ptr14, align 1, !tbaa !8
  %conv17 = zext i8 %7 to i32
  %shl18 = shl nuw nsw i32 %conv17, 8
  %or19 = or i32 %shl18, %conv15
  %8 = load i8, i8* %incdec.ptr16, align 1, !tbaa !8
  %conv21 = zext i8 %8 to i32
  %shl22 = shl nuw nsw i32 %conv21, 16
  %or23 = or i32 %or19, %shl22
  %9 = load i8, i8* %incdec.ptr20, align 1, !tbaa !8
  %conv25 = zext i8 %9 to i32
  %shl26 = shl nuw i32 %conv25, 24
  %or27 = or i32 %or23, %shl26
  store i32 %or27, i32* %arrayidx28, align 4, !tbaa !4
  call void @DES_encrypt1(i32* noundef nonnull %arrayidx13, %struct.DES_ks* noundef %schedule, i32 noundef 1) #4
  %10 = load i32, i32* %arrayidx13, align 4, !tbaa !4
  %conv31 = trunc i32 %10 to i8
  store i8 %conv31, i8* %arrayidx, align 1, !tbaa !8
  %shr = lshr i32 %10, 8
  %conv34 = trunc i32 %shr to i8
  store i8 %conv34, i8* %incdec.ptr, align 1, !tbaa !8
  %shr36 = lshr i32 %10, 16
  %conv38 = trunc i32 %shr36 to i8
  store i8 %conv38, i8* %incdec.ptr3, align 1, !tbaa !8
  %shr40 = lshr i32 %10, 24
  %conv42 = trunc i32 %shr40 to i8
  store i8 %conv42, i8* %incdec.ptr5, align 1, !tbaa !8
  %11 = load i32, i32* %arrayidx28, align 4, !tbaa !4
  %conv46 = trunc i32 %11 to i8
  store i8 %conv46, i8* %incdec.ptr9, align 1, !tbaa !8
  %shr48 = lshr i32 %11, 8
  %conv50 = trunc i32 %shr48 to i8
  store i8 %conv50, i8* %incdec.ptr14, align 1, !tbaa !8
  %shr52 = lshr i32 %11, 16
  %conv54 = trunc i32 %shr52 to i8
  store i8 %conv54, i8* %incdec.ptr16, align 1, !tbaa !8
  %shr56 = lshr i32 %11, 24
  %conv58 = trunc i32 %shr56 to i8
  store i8 %conv58, i8* %incdec.ptr20, align 1, !tbaa !8
  br label %if.end

if.end:                                           ; preds = %if.then2, %while.body
  %incdec.ptr61 = getelementptr inbounds i8, i8* %in.addr.0255, i64 1
  %12 = load i8, i8* %in.addr.0255, align 1, !tbaa !8
  %idxprom = sext i32 %n.0256 to i64
  %arrayidx63 = getelementptr inbounds [8 x i8], [8 x i8]* %ivec, i64 0, i64 %idxprom
  %13 = load i8, i8* %arrayidx63, align 1, !tbaa !8
  %xor250 = xor i8 %13, %12
  %incdec.ptr66 = getelementptr inbounds i8, i8* %out.addr.0254, i64 1
  store i8 %xor250, i8* %out.addr.0254, align 1, !tbaa !8
  store i8 %xor250, i8* %arrayidx63, align 1, !tbaa !8
  %add = add nsw i32 %n.0256, 1
  %and69 = and i32 %add, 7
  %tobool1.not = icmp eq i64 %dec257, 0
  br i1 %tobool1.not, label %if.end156, label %while.body, !llvm.loop !9

while.body73:                                     ; preds = %while.body73.lr.ph, %if.end142
  %dec71263.in = phi i64 [ %length, %while.body73.lr.ph ], [ %dec71263, %if.end142 ]
  %n.1262 = phi i32 [ %0, %while.body73.lr.ph ], [ %and154, %if.end142 ]
  %in.addr.1261 = phi i8* [ %in, %while.body73.lr.ph ], [ %incdec.ptr143, %if.end142 ]
  %out.addr.1260 = phi i8* [ %out, %while.body73.lr.ph ], [ %incdec.ptr152, %if.end142 ]
  %dec71263 = add nsw i64 %dec71263.in, -1
  %cmp74 = icmp eq i32 %n.1262, 0
  br i1 %cmp74, label %if.then76, label %if.end142

if.then76:                                        ; preds = %while.body73
  %14 = load i8, i8* %arrayidx, align 1, !tbaa !8
  %conv78 = zext i8 %14 to i32
  %15 = load i8, i8* %incdec.ptr77, align 1, !tbaa !8
  %conv80 = zext i8 %15 to i32
  %shl81 = shl nuw nsw i32 %conv80, 8
  %or82 = or i32 %shl81, %conv78
  %16 = load i8, i8* %incdec.ptr79, align 1, !tbaa !8
  %conv84 = zext i8 %16 to i32
  %shl85 = shl nuw nsw i32 %conv84, 16
  %or86 = or i32 %or82, %shl85
  %17 = load i8, i8* %incdec.ptr83, align 1, !tbaa !8
  %conv88 = zext i8 %17 to i32
  %shl89 = shl nuw i32 %conv88, 24
  %or90 = or i32 %or86, %shl89
  store i32 %or90, i32* %arrayidx91, align 4, !tbaa !4
  %18 = load i8, i8* %incdec.ptr87, align 1, !tbaa !8
  %conv93 = zext i8 %18 to i32
  %19 = load i8, i8* %incdec.ptr92, align 1, !tbaa !8
  %conv95 = zext i8 %19 to i32
  %shl96 = shl nuw nsw i32 %conv95, 8
  %or97 = or i32 %shl96, %conv93
  %20 = load i8, i8* %incdec.ptr94, align 1, !tbaa !8
  %conv99 = zext i8 %20 to i32
  %shl100 = shl nuw nsw i32 %conv99, 16
  %or101 = or i32 %or97, %shl100
  %21 = load i8, i8* %incdec.ptr98, align 1, !tbaa !8
  %conv103 = zext i8 %21 to i32
  %shl104 = shl nuw i32 %conv103, 24
  %or105 = or i32 %or101, %shl104
  store i32 %or105, i32* %arrayidx106, align 4, !tbaa !4
  call void @DES_encrypt1(i32* noundef nonnull %arrayidx91, %struct.DES_ks* noundef %schedule, i32 noundef 1) #4
  %22 = load i32, i32* %arrayidx91, align 4, !tbaa !4
  %conv111 = trunc i32 %22 to i8
  store i8 %conv111, i8* %arrayidx, align 1, !tbaa !8
  %shr113 = lshr i32 %22, 8
  %conv115 = trunc i32 %shr113 to i8
  store i8 %conv115, i8* %incdec.ptr77, align 1, !tbaa !8
  %shr117 = lshr i32 %22, 16
  %conv119 = trunc i32 %shr117 to i8
  store i8 %conv119, i8* %incdec.ptr79, align 1, !tbaa !8
  %shr121 = lshr i32 %22, 24
  %conv123 = trunc i32 %shr121 to i8
  store i8 %conv123, i8* %incdec.ptr83, align 1, !tbaa !8
  %23 = load i32, i32* %arrayidx106, align 4, !tbaa !4
  %conv127 = trunc i32 %23 to i8
  store i8 %conv127, i8* %incdec.ptr87, align 1, !tbaa !8
  %shr129 = lshr i32 %23, 8
  %conv131 = trunc i32 %shr129 to i8
  store i8 %conv131, i8* %incdec.ptr92, align 1, !tbaa !8
  %shr133 = lshr i32 %23, 16
  %conv135 = trunc i32 %shr133 to i8
  store i8 %conv135, i8* %incdec.ptr94, align 1, !tbaa !8
  %shr137 = lshr i32 %23, 24
  %conv139 = trunc i32 %shr137 to i8
  store i8 %conv139, i8* %incdec.ptr98, align 1, !tbaa !8
  br label %if.end142

if.end142:                                        ; preds = %if.then76, %while.body73
  %incdec.ptr143 = getelementptr inbounds i8, i8* %in.addr.1261, i64 1
  %24 = load i8, i8* %in.addr.1261, align 1, !tbaa !8
  %idxprom144 = sext i32 %n.1262 to i64
  %arrayidx145 = getelementptr inbounds [8 x i8], [8 x i8]* %ivec, i64 0, i64 %idxprom144
  %25 = load i8, i8* %arrayidx145, align 1, !tbaa !8
  store i8 %24, i8* %arrayidx145, align 1, !tbaa !8
  %xor150249 = xor i8 %25, %24
  %incdec.ptr152 = getelementptr inbounds i8, i8* %out.addr.1260, i64 1
  store i8 %xor150249, i8* %out.addr.1260, align 1, !tbaa !8
  %add153 = add nsw i32 %n.1262, 1
  %and154 = and i32 %add153, 7
  %tobool72.not = icmp eq i64 %dec71263, 0
  br i1 %tobool72.not, label %if.end156, label %while.body73, !llvm.loop !11

if.end156:                                        ; preds = %if.end, %if.end142, %while.cond.preheader, %while.cond70.preheader
  %n.2 = phi i32 [ %0, %while.cond70.preheader ], [ %0, %while.cond.preheader ], [ %and154, %if.end142 ], [ %and69, %if.end ]
  store i32 %n.2, i32* %num, align 4, !tbaa !4
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #3
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

declare void @DES_encrypt1(i32* noundef, %struct.DES_ks* noundef, i32 noundef) local_unnamed_addr #2

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
!9 = distinct !{!9, !10}
!10 = !{!"llvm.loop.mustprogress"}
!11 = distinct !{!11, !10}
