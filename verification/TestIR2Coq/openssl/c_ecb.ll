; ModuleID = 'crypto/cast/c_ecb.c'
source_filename = "crypto/cast/c_ecb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cast_key_st = type { [32 x i32], i32 }

; Function Attrs: noinline nounwind uwtable
define void @CAST_ecb_encrypt(i8* nocapture noundef readonly %in, i8* nocapture noundef writeonly %out, %struct.cast_key_st* noundef %ks, i32 noundef %enc) local_unnamed_addr #0 {
entry:
  %d = alloca [2 x i32], align 4
  %0 = bitcast [2 x i32]* %d to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #3
  %incdec.ptr = getelementptr inbounds i8, i8* %in, i64 1
  %1 = load i8, i8* %in, align 1, !tbaa !4
  %conv = zext i8 %1 to i32
  %shl = shl nuw i32 %conv, 24
  %incdec.ptr2 = getelementptr inbounds i8, i8* %in, i64 2
  %2 = load i8, i8* %incdec.ptr, align 1, !tbaa !4
  %conv3 = zext i8 %2 to i32
  %shl4 = shl nuw nsw i32 %conv3, 16
  %or = or i32 %shl4, %shl
  %incdec.ptr7 = getelementptr inbounds i8, i8* %in, i64 3
  %3 = load i8, i8* %incdec.ptr2, align 1, !tbaa !4
  %conv8 = zext i8 %3 to i32
  %shl9 = shl nuw nsw i32 %conv8, 8
  %or11 = or i32 %or, %shl9
  %incdec.ptr13 = getelementptr inbounds i8, i8* %in, i64 4
  %4 = load i8, i8* %incdec.ptr7, align 1, !tbaa !4
  %conv14 = zext i8 %4 to i32
  %or16 = or i32 %or11, %conv14
  %arrayidx = getelementptr inbounds [2 x i32], [2 x i32]* %d, i64 0, i64 0
  store i32 %or16, i32* %arrayidx, align 4, !tbaa !7
  %incdec.ptr18 = getelementptr inbounds i8, i8* %in, i64 5
  %5 = load i8, i8* %incdec.ptr13, align 1, !tbaa !4
  %conv19 = zext i8 %5 to i32
  %shl20 = shl nuw i32 %conv19, 24
  %incdec.ptr22 = getelementptr inbounds i8, i8* %in, i64 6
  %6 = load i8, i8* %incdec.ptr18, align 1, !tbaa !4
  %conv23 = zext i8 %6 to i32
  %shl24 = shl nuw nsw i32 %conv23, 16
  %or26 = or i32 %shl24, %shl20
  %incdec.ptr28 = getelementptr inbounds i8, i8* %in, i64 7
  %7 = load i8, i8* %incdec.ptr22, align 1, !tbaa !4
  %conv29 = zext i8 %7 to i32
  %shl30 = shl nuw nsw i32 %conv29, 8
  %or32 = or i32 %or26, %shl30
  %8 = load i8, i8* %incdec.ptr28, align 1, !tbaa !4
  %conv35 = zext i8 %8 to i32
  %or37 = or i32 %or32, %conv35
  %arrayidx39 = getelementptr inbounds [2 x i32], [2 x i32]* %d, i64 0, i64 1
  store i32 %or37, i32* %arrayidx39, align 4, !tbaa !7
  %tobool.not = icmp eq i32 %enc, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @CAST_encrypt(i32* noundef nonnull %arrayidx, %struct.cast_key_st* noundef %ks) #4
  br label %if.end

if.else:                                          ; preds = %entry
  call void @CAST_decrypt(i32* noundef nonnull %arrayidx, %struct.cast_key_st* noundef %ks) #4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %9 = load i32, i32* %arrayidx, align 4, !tbaa !7
  %shr = lshr i32 %9, 24
  %conv42 = trunc i32 %shr to i8
  %incdec.ptr43 = getelementptr inbounds i8, i8* %out, i64 1
  store i8 %conv42, i8* %out, align 1, !tbaa !4
  %shr44 = lshr i32 %9, 16
  %conv46 = trunc i32 %shr44 to i8
  %incdec.ptr47 = getelementptr inbounds i8, i8* %out, i64 2
  store i8 %conv46, i8* %incdec.ptr43, align 1, !tbaa !4
  %shr48 = lshr i32 %9, 8
  %conv50 = trunc i32 %shr48 to i8
  %incdec.ptr51 = getelementptr inbounds i8, i8* %out, i64 3
  store i8 %conv50, i8* %incdec.ptr47, align 1, !tbaa !4
  %conv53 = trunc i32 %9 to i8
  %incdec.ptr54 = getelementptr inbounds i8, i8* %out, i64 4
  store i8 %conv53, i8* %incdec.ptr51, align 1, !tbaa !4
  %10 = load i32, i32* %arrayidx39, align 4, !tbaa !7
  %shr56 = lshr i32 %10, 24
  %conv58 = trunc i32 %shr56 to i8
  %incdec.ptr59 = getelementptr inbounds i8, i8* %out, i64 5
  store i8 %conv58, i8* %incdec.ptr54, align 1, !tbaa !4
  %shr60 = lshr i32 %10, 16
  %conv62 = trunc i32 %shr60 to i8
  %incdec.ptr63 = getelementptr inbounds i8, i8* %out, i64 6
  store i8 %conv62, i8* %incdec.ptr59, align 1, !tbaa !4
  %shr64 = lshr i32 %10, 8
  %conv66 = trunc i32 %shr64 to i8
  %incdec.ptr67 = getelementptr inbounds i8, i8* %out, i64 7
  store i8 %conv66, i8* %incdec.ptr63, align 1, !tbaa !4
  %conv69 = trunc i32 %10 to i8
  store i8 %conv69, i8* %incdec.ptr67, align 1, !tbaa !4
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #3
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

declare void @CAST_encrypt(i32* noundef, %struct.cast_key_st* noundef) local_unnamed_addr #2

declare void @CAST_decrypt(i32* noundef, %struct.cast_key_st* noundef) local_unnamed_addr #2

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
