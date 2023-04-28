; ModuleID = 'crypto/des/ecb3_enc.c'
source_filename = "crypto/des/ecb3_enc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.DES_ks = type { [16 x %union.anon] }
%union.anon = type { [2 x i32] }

; Function Attrs: noinline nounwind uwtable
define void @DES_ecb3_encrypt([8 x i8]* nocapture noundef readonly %input, [8 x i8]* nocapture noundef writeonly %output, %struct.DES_ks* noundef %ks1, %struct.DES_ks* noundef %ks2, %struct.DES_ks* noundef %ks3, i32 noundef %enc) local_unnamed_addr #0 {
entry:
  %ll = alloca [2 x i32], align 4
  %0 = bitcast [2 x i32]* %ll to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #3
  %arrayidx = getelementptr inbounds [8 x i8], [8 x i8]* %input, i64 0, i64 0
  %incdec.ptr = getelementptr inbounds [8 x i8], [8 x i8]* %input, i64 0, i64 1
  %1 = load i8, i8* %arrayidx, align 1, !tbaa !4
  %conv = zext i8 %1 to i32
  %incdec.ptr2 = getelementptr inbounds [8 x i8], [8 x i8]* %input, i64 0, i64 2
  %2 = load i8, i8* %incdec.ptr, align 1, !tbaa !4
  %conv3 = zext i8 %2 to i32
  %shl = shl nuw nsw i32 %conv3, 8
  %or = or i32 %shl, %conv
  %incdec.ptr4 = getelementptr inbounds [8 x i8], [8 x i8]* %input, i64 0, i64 3
  %3 = load i8, i8* %incdec.ptr2, align 1, !tbaa !4
  %conv5 = zext i8 %3 to i32
  %shl6 = shl nuw nsw i32 %conv5, 16
  %or7 = or i32 %or, %shl6
  %incdec.ptr8 = getelementptr inbounds [8 x i8], [8 x i8]* %input, i64 0, i64 4
  %4 = load i8, i8* %incdec.ptr4, align 1, !tbaa !4
  %conv9 = zext i8 %4 to i32
  %shl10 = shl nuw i32 %conv9, 24
  %or11 = or i32 %or7, %shl10
  %incdec.ptr12 = getelementptr inbounds [8 x i8], [8 x i8]* %input, i64 0, i64 5
  %5 = load i8, i8* %incdec.ptr8, align 1, !tbaa !4
  %conv13 = zext i8 %5 to i32
  %incdec.ptr14 = getelementptr inbounds [8 x i8], [8 x i8]* %input, i64 0, i64 6
  %6 = load i8, i8* %incdec.ptr12, align 1, !tbaa !4
  %conv15 = zext i8 %6 to i32
  %shl16 = shl nuw nsw i32 %conv15, 8
  %or17 = or i32 %shl16, %conv13
  %incdec.ptr18 = getelementptr inbounds [8 x i8], [8 x i8]* %input, i64 0, i64 7
  %7 = load i8, i8* %incdec.ptr14, align 1, !tbaa !4
  %conv19 = zext i8 %7 to i32
  %shl20 = shl nuw nsw i32 %conv19, 16
  %or21 = or i32 %or17, %shl20
  %8 = load i8, i8* %incdec.ptr18, align 1, !tbaa !4
  %conv23 = zext i8 %8 to i32
  %shl24 = shl nuw i32 %conv23, 24
  %or25 = or i32 %or21, %shl24
  %arrayidx26 = getelementptr inbounds [2 x i32], [2 x i32]* %ll, i64 0, i64 0
  store i32 %or11, i32* %arrayidx26, align 4, !tbaa !7
  %arrayidx27 = getelementptr inbounds [2 x i32], [2 x i32]* %ll, i64 0, i64 1
  store i32 %or25, i32* %arrayidx27, align 4, !tbaa !7
  %tobool.not = icmp eq i32 %enc, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @DES_encrypt3(i32* noundef nonnull %arrayidx26, %struct.DES_ks* noundef %ks1, %struct.DES_ks* noundef %ks2, %struct.DES_ks* noundef %ks3) #4
  br label %if.end

if.else:                                          ; preds = %entry
  call void @DES_decrypt3(i32* noundef nonnull %arrayidx26, %struct.DES_ks* noundef %ks1, %struct.DES_ks* noundef %ks2, %struct.DES_ks* noundef %ks3) #4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %arrayidx1 = getelementptr inbounds [8 x i8], [8 x i8]* %output, i64 0, i64 0
  %9 = load i32, i32* %arrayidx26, align 4, !tbaa !7
  %10 = load i32, i32* %arrayidx27, align 4, !tbaa !7
  %conv31 = trunc i32 %9 to i8
  %incdec.ptr32 = getelementptr inbounds [8 x i8], [8 x i8]* %output, i64 0, i64 1
  store i8 %conv31, i8* %arrayidx1, align 1, !tbaa !4
  %shr = lshr i32 %9, 8
  %conv34 = trunc i32 %shr to i8
  %incdec.ptr35 = getelementptr inbounds [8 x i8], [8 x i8]* %output, i64 0, i64 2
  store i8 %conv34, i8* %incdec.ptr32, align 1, !tbaa !4
  %shr36 = lshr i32 %9, 16
  %conv38 = trunc i32 %shr36 to i8
  %incdec.ptr39 = getelementptr inbounds [8 x i8], [8 x i8]* %output, i64 0, i64 3
  store i8 %conv38, i8* %incdec.ptr35, align 1, !tbaa !4
  %shr40 = lshr i32 %9, 24
  %conv42 = trunc i32 %shr40 to i8
  %incdec.ptr43 = getelementptr inbounds [8 x i8], [8 x i8]* %output, i64 0, i64 4
  store i8 %conv42, i8* %incdec.ptr39, align 1, !tbaa !4
  %conv45 = trunc i32 %10 to i8
  %incdec.ptr46 = getelementptr inbounds [8 x i8], [8 x i8]* %output, i64 0, i64 5
  store i8 %conv45, i8* %incdec.ptr43, align 1, !tbaa !4
  %shr47 = lshr i32 %10, 8
  %conv49 = trunc i32 %shr47 to i8
  %incdec.ptr50 = getelementptr inbounds [8 x i8], [8 x i8]* %output, i64 0, i64 6
  store i8 %conv49, i8* %incdec.ptr46, align 1, !tbaa !4
  %shr51 = lshr i32 %10, 16
  %conv53 = trunc i32 %shr51 to i8
  %incdec.ptr54 = getelementptr inbounds [8 x i8], [8 x i8]* %output, i64 0, i64 7
  store i8 %conv53, i8* %incdec.ptr50, align 1, !tbaa !4
  %shr55 = lshr i32 %10, 24
  %conv57 = trunc i32 %shr55 to i8
  store i8 %conv57, i8* %incdec.ptr54, align 1, !tbaa !4
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #3
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

declare void @DES_encrypt3(i32* noundef, %struct.DES_ks* noundef, %struct.DES_ks* noundef, %struct.DES_ks* noundef) local_unnamed_addr #2

declare void @DES_decrypt3(i32* noundef, %struct.DES_ks* noundef, %struct.DES_ks* noundef, %struct.DES_ks* noundef) local_unnamed_addr #2

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
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!8, !8, i64 0}
!8 = !{!"int", !5, i64 0}
