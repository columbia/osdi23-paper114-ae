; ModuleID = 'crypto/des/ofb64enc.c'
source_filename = "crypto/des/ofb64enc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.DES_ks = type { [16 x %union.anon] }
%union.anon = type { [2 x i32] }

; Function Attrs: noinline nounwind uwtable
define void @DES_ofb64_encrypt(i8* nocapture noundef readonly %in, i8* nocapture noundef writeonly %out, i64 noundef %length, %struct.DES_ks* noundef %schedule, [8 x i8]* nocapture noundef %ivec, i32* nocapture noundef %num) local_unnamed_addr #0 {
entry:
  %d = alloca [8 x i8], align 1
  %ti = alloca [2 x i32], align 4
  %0 = load i32, i32* %num, align 4, !tbaa !4
  %1 = getelementptr inbounds [8 x i8], [8 x i8]* %d, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #3
  %2 = bitcast [2 x i32]* %ti to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #3
  %arrayidx = getelementptr inbounds [8 x i8], [8 x i8]* %ivec, i64 0, i64 0
  %incdec.ptr = getelementptr inbounds [8 x i8], [8 x i8]* %ivec, i64 0, i64 1
  %3 = load i8, i8* %arrayidx, align 1, !tbaa !8
  %conv = zext i8 %3 to i32
  %incdec.ptr1 = getelementptr inbounds [8 x i8], [8 x i8]* %ivec, i64 0, i64 2
  %4 = load i8, i8* %incdec.ptr, align 1, !tbaa !8
  %conv2 = zext i8 %4 to i32
  %shl = shl nuw nsw i32 %conv2, 8
  %or = or i32 %shl, %conv
  %incdec.ptr3 = getelementptr inbounds [8 x i8], [8 x i8]* %ivec, i64 0, i64 3
  %5 = load i8, i8* %incdec.ptr1, align 1, !tbaa !8
  %conv4 = zext i8 %5 to i32
  %shl5 = shl nuw nsw i32 %conv4, 16
  %or6 = or i32 %or, %shl5
  %incdec.ptr7 = getelementptr inbounds [8 x i8], [8 x i8]* %ivec, i64 0, i64 4
  %6 = load i8, i8* %incdec.ptr3, align 1, !tbaa !8
  %conv8 = zext i8 %6 to i32
  %shl9 = shl nuw i32 %conv8, 24
  %or10 = or i32 %or6, %shl9
  %incdec.ptr11 = getelementptr inbounds [8 x i8], [8 x i8]* %ivec, i64 0, i64 5
  %7 = load i8, i8* %incdec.ptr7, align 1, !tbaa !8
  %conv12 = zext i8 %7 to i32
  %incdec.ptr13 = getelementptr inbounds [8 x i8], [8 x i8]* %ivec, i64 0, i64 6
  %8 = load i8, i8* %incdec.ptr11, align 1, !tbaa !8
  %conv14 = zext i8 %8 to i32
  %shl15 = shl nuw nsw i32 %conv14, 8
  %or16 = or i32 %shl15, %conv12
  %incdec.ptr17 = getelementptr inbounds [8 x i8], [8 x i8]* %ivec, i64 0, i64 7
  %9 = load i8, i8* %incdec.ptr13, align 1, !tbaa !8
  %conv18 = zext i8 %9 to i32
  %shl19 = shl nuw nsw i32 %conv18, 16
  %or20 = or i32 %or16, %shl19
  %10 = load i8, i8* %incdec.ptr17, align 1, !tbaa !8
  %conv22 = zext i8 %10 to i32
  %shl23 = shl nuw i32 %conv22, 24
  %or24 = or i32 %or20, %shl23
  %arrayidx25 = getelementptr inbounds [2 x i32], [2 x i32]* %ti, i64 0, i64 0
  store i32 %or10, i32* %arrayidx25, align 4, !tbaa !4
  %arrayidx26 = getelementptr inbounds [2 x i32], [2 x i32]* %ti, i64 0, i64 1
  store i32 %or24, i32* %arrayidx26, align 4, !tbaa !4
  %incdec.ptr28 = getelementptr inbounds [8 x i8], [8 x i8]* %d, i64 0, i64 1
  store i8 %3, i8* %1, align 1, !tbaa !8
  %incdec.ptr31 = getelementptr inbounds [8 x i8], [8 x i8]* %d, i64 0, i64 2
  store i8 %4, i8* %incdec.ptr28, align 1, !tbaa !8
  %incdec.ptr35 = getelementptr inbounds [8 x i8], [8 x i8]* %d, i64 0, i64 3
  store i8 %5, i8* %incdec.ptr31, align 1, !tbaa !8
  %incdec.ptr39 = getelementptr inbounds [8 x i8], [8 x i8]* %d, i64 0, i64 4
  store i8 %6, i8* %incdec.ptr35, align 1, !tbaa !8
  %incdec.ptr42 = getelementptr inbounds [8 x i8], [8 x i8]* %d, i64 0, i64 5
  store i8 %7, i8* %incdec.ptr39, align 1, !tbaa !8
  %incdec.ptr46 = getelementptr inbounds [8 x i8], [8 x i8]* %d, i64 0, i64 6
  store i8 %8, i8* %incdec.ptr42, align 1, !tbaa !8
  %incdec.ptr50 = getelementptr inbounds [8 x i8], [8 x i8]* %d, i64 0, i64 7
  store i8 %9, i8* %incdec.ptr46, align 1, !tbaa !8
  store i8 %10, i8* %incdec.ptr50, align 1, !tbaa !8
  %tobool.not210 = icmp eq i64 %length, 0
  br i1 %tobool.not210, label %if.end132, label %while.body

while.body:                                       ; preds = %entry, %if.end
  %11 = phi i32 [ %15, %if.end ], [ %or24, %entry ]
  %12 = phi i32 [ %16, %if.end ], [ %or10, %entry ]
  %dec215.in = phi i64 [ %dec215, %if.end ], [ %length, %entry ]
  %save.0214 = phi i32 [ %save.1, %if.end ], [ 0, %entry ]
  %n.0213 = phi i32 [ %and96, %if.end ], [ %0, %entry ]
  %in.addr.0212 = phi i8* [ %incdec.ptr90, %if.end ], [ %in, %entry ]
  %out.addr.0211 = phi i8* [ %incdec.ptr95, %if.end ], [ %out, %entry ]
  %dec215 = add nsw i64 %dec215.in, -1
  %cmp = icmp eq i32 %n.0213, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  call void @DES_encrypt1(i32* noundef nonnull %arrayidx25, %struct.DES_ks* noundef %schedule, i32 noundef 1) #4
  %13 = load i32, i32* %arrayidx25, align 4, !tbaa !4
  %conv60 = trunc i32 %13 to i8
  store i8 %conv60, i8* %1, align 1, !tbaa !8
  %shr62 = lshr i32 %13, 8
  %conv64 = trunc i32 %shr62 to i8
  store i8 %conv64, i8* %incdec.ptr28, align 1, !tbaa !8
  %shr66 = lshr i32 %13, 16
  %conv68 = trunc i32 %shr66 to i8
  store i8 %conv68, i8* %incdec.ptr31, align 1, !tbaa !8
  %shr70 = lshr i32 %13, 24
  %conv72 = trunc i32 %shr70 to i8
  store i8 %conv72, i8* %incdec.ptr35, align 1, !tbaa !8
  %14 = load i32, i32* %arrayidx26, align 4, !tbaa !4
  %conv76 = trunc i32 %14 to i8
  store i8 %conv76, i8* %incdec.ptr39, align 1, !tbaa !8
  %shr78 = lshr i32 %14, 8
  %conv80 = trunc i32 %shr78 to i8
  store i8 %conv80, i8* %incdec.ptr42, align 1, !tbaa !8
  %shr82 = lshr i32 %14, 16
  %conv84 = trunc i32 %shr82 to i8
  store i8 %conv84, i8* %incdec.ptr46, align 1, !tbaa !8
  %shr86 = lshr i32 %14, 24
  %conv88 = trunc i32 %shr86 to i8
  store i8 %conv88, i8* %incdec.ptr50, align 1, !tbaa !8
  %inc = add nsw i32 %save.0214, 1
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body
  %15 = phi i32 [ %14, %if.then ], [ %11, %while.body ]
  %16 = phi i32 [ %13, %if.then ], [ %12, %while.body ]
  %save.1 = phi i32 [ %inc, %if.then ], [ %save.0214, %while.body ]
  %incdec.ptr90 = getelementptr inbounds i8, i8* %in.addr.0212, i64 1
  %17 = load i8, i8* %in.addr.0212, align 1, !tbaa !8
  %idxprom = sext i32 %n.0213 to i64
  %arrayidx92 = getelementptr inbounds [8 x i8], [8 x i8]* %d, i64 0, i64 %idxprom
  %18 = load i8, i8* %arrayidx92, align 1, !tbaa !8
  %xor208 = xor i8 %18, %17
  %incdec.ptr95 = getelementptr inbounds i8, i8* %out.addr.0211, i64 1
  store i8 %xor208, i8* %out.addr.0211, align 1, !tbaa !8
  %add = add nsw i32 %n.0213, 1
  %and96 = and i32 %add, 7
  %tobool.not = icmp eq i64 %dec215, 0
  br i1 %tobool.not, label %while.end, label %while.body, !llvm.loop !9

while.end:                                        ; preds = %if.end
  %tobool97.not = icmp eq i32 %save.1, 0
  br i1 %tobool97.not, label %if.end132, label %if.then98

if.then98:                                        ; preds = %while.end
  %conv103 = trunc i32 %16 to i8
  store i8 %conv103, i8* %arrayidx, align 1, !tbaa !8
  %shr105 = lshr i32 %16, 8
  %conv107 = trunc i32 %shr105 to i8
  store i8 %conv107, i8* %incdec.ptr, align 1, !tbaa !8
  %shr109 = lshr i32 %16, 16
  %conv111 = trunc i32 %shr109 to i8
  store i8 %conv111, i8* %incdec.ptr1, align 1, !tbaa !8
  %shr113 = lshr i32 %16, 24
  %conv115 = trunc i32 %shr113 to i8
  store i8 %conv115, i8* %incdec.ptr3, align 1, !tbaa !8
  %conv118 = trunc i32 %15 to i8
  store i8 %conv118, i8* %incdec.ptr7, align 1, !tbaa !8
  %shr120 = lshr i32 %15, 8
  %conv122 = trunc i32 %shr120 to i8
  store i8 %conv122, i8* %incdec.ptr11, align 1, !tbaa !8
  %shr124 = lshr i32 %15, 16
  %conv126 = trunc i32 %shr124 to i8
  store i8 %conv126, i8* %incdec.ptr13, align 1, !tbaa !8
  %shr128 = lshr i32 %15, 24
  %conv130 = trunc i32 %shr128 to i8
  store i8 %conv130, i8* %incdec.ptr17, align 1, !tbaa !8
  br label %if.end132

if.end132:                                        ; preds = %entry, %if.then98, %while.end
  %n.0.lcssa220 = phi i32 [ %and96, %if.then98 ], [ %and96, %while.end ], [ %0, %entry ]
  store i32 %n.0.lcssa220, i32* %num, align 4, !tbaa !4
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #3
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
