; ModuleID = 'crypto/idea/i_ecb.c'
source_filename = "crypto/idea/i_ecb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.idea_key_st = type { [9 x [6 x i32]] }

@.str = private unnamed_addr constant [10 x i8] c"idea(int)\00", align 1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define i8* @IDEA_options() local_unnamed_addr #0 {
entry:
  ret i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0)
}

; Function Attrs: noinline nounwind uwtable
define void @IDEA_ecb_encrypt(i8* nocapture noundef readonly %in, i8* nocapture noundef writeonly %out, %struct.idea_key_st* noundef %ks) local_unnamed_addr #1 {
entry:
  %d = alloca [2 x i64], align 16
  %0 = bitcast [2 x i64]* %d to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #4
  %incdec.ptr = getelementptr inbounds i8, i8* %in, i64 1
  %1 = load i8, i8* %in, align 1, !tbaa !4
  %conv = zext i8 %1 to i64
  %shl = shl nuw nsw i64 %conv, 24
  %incdec.ptr1 = getelementptr inbounds i8, i8* %in, i64 2
  %2 = load i8, i8* %incdec.ptr, align 1, !tbaa !4
  %conv2 = zext i8 %2 to i64
  %shl3 = shl nuw nsw i64 %conv2, 16
  %or = or i64 %shl3, %shl
  %incdec.ptr4 = getelementptr inbounds i8, i8* %in, i64 3
  %3 = load i8, i8* %incdec.ptr1, align 1, !tbaa !4
  %conv5 = zext i8 %3 to i64
  %shl6 = shl nuw nsw i64 %conv5, 8
  %or7 = or i64 %or, %shl6
  %incdec.ptr8 = getelementptr inbounds i8, i8* %in, i64 4
  %4 = load i8, i8* %incdec.ptr4, align 1, !tbaa !4
  %conv9 = zext i8 %4 to i64
  %or10 = or i64 %or7, %conv9
  %arrayidx = getelementptr inbounds [2 x i64], [2 x i64]* %d, i64 0, i64 0
  store i64 %or10, i64* %arrayidx, align 16, !tbaa !7
  %incdec.ptr11 = getelementptr inbounds i8, i8* %in, i64 5
  %5 = load i8, i8* %incdec.ptr8, align 1, !tbaa !4
  %conv12 = zext i8 %5 to i64
  %shl13 = shl nuw nsw i64 %conv12, 24
  %incdec.ptr14 = getelementptr inbounds i8, i8* %in, i64 6
  %6 = load i8, i8* %incdec.ptr11, align 1, !tbaa !4
  %conv15 = zext i8 %6 to i64
  %shl16 = shl nuw nsw i64 %conv15, 16
  %or17 = or i64 %shl16, %shl13
  %incdec.ptr18 = getelementptr inbounds i8, i8* %in, i64 7
  %7 = load i8, i8* %incdec.ptr14, align 1, !tbaa !4
  %conv19 = zext i8 %7 to i64
  %shl20 = shl nuw nsw i64 %conv19, 8
  %or21 = or i64 %or17, %shl20
  %8 = load i8, i8* %incdec.ptr18, align 1, !tbaa !4
  %conv23 = zext i8 %8 to i64
  %or24 = or i64 %or21, %conv23
  %arrayidx25 = getelementptr inbounds [2 x i64], [2 x i64]* %d, i64 0, i64 1
  store i64 %or24, i64* %arrayidx25, align 8, !tbaa !7
  call void @IDEA_encrypt(i64* noundef nonnull %arrayidx, %struct.idea_key_st* noundef %ks) #5
  %9 = load i64, i64* %arrayidx, align 16, !tbaa !7
  %shr = lshr i64 %9, 24
  %conv27 = trunc i64 %shr to i8
  %incdec.ptr28 = getelementptr inbounds i8, i8* %out, i64 1
  store i8 %conv27, i8* %out, align 1, !tbaa !4
  %shr29 = lshr i64 %9, 16
  %conv31 = trunc i64 %shr29 to i8
  %incdec.ptr32 = getelementptr inbounds i8, i8* %out, i64 2
  store i8 %conv31, i8* %incdec.ptr28, align 1, !tbaa !4
  %shr33 = lshr i64 %9, 8
  %conv35 = trunc i64 %shr33 to i8
  %incdec.ptr36 = getelementptr inbounds i8, i8* %out, i64 3
  store i8 %conv35, i8* %incdec.ptr32, align 1, !tbaa !4
  %conv38 = trunc i64 %9 to i8
  %incdec.ptr39 = getelementptr inbounds i8, i8* %out, i64 4
  store i8 %conv38, i8* %incdec.ptr36, align 1, !tbaa !4
  %10 = load i64, i64* %arrayidx25, align 8, !tbaa !7
  %shr41 = lshr i64 %10, 24
  %conv43 = trunc i64 %shr41 to i8
  %incdec.ptr44 = getelementptr inbounds i8, i8* %out, i64 5
  store i8 %conv43, i8* %incdec.ptr39, align 1, !tbaa !4
  %shr45 = lshr i64 %10, 16
  %conv47 = trunc i64 %shr45 to i8
  %incdec.ptr48 = getelementptr inbounds i8, i8* %out, i64 6
  store i8 %conv47, i8* %incdec.ptr44, align 1, !tbaa !4
  %shr49 = lshr i64 %10, 8
  %conv51 = trunc i64 %shr49 to i8
  %incdec.ptr52 = getelementptr inbounds i8, i8* %out, i64 7
  store i8 %conv51, i8* %incdec.ptr48, align 1, !tbaa !4
  %conv54 = trunc i64 %10 to i8
  store i8 %conv54, i8* %incdec.ptr52, align 1, !tbaa !4
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

declare void @IDEA_encrypt(i64* noundef, %struct.idea_key_st* noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #3 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }
attributes #5 = { nobuiltin nounwind "no-builtins" }

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
!8 = !{!"long", !5, i64 0}
