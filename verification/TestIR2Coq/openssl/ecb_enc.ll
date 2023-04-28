; ModuleID = 'crypto/des/ecb_enc.c'
source_filename = "crypto/des/ecb_enc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.DES_ks = type { [16 x %union.anon] }
%union.anon = type { [2 x i32] }

@DES_options.init = internal unnamed_addr global i1 false, align 4
@DES_options.buf = internal global [12 x i8] zeroinitializer, align 1
@.str = private unnamed_addr constant [9 x i8] c"des(int)\00", align 1

; Function Attrs: noinline nounwind uwtable
define i8* @DES_options() local_unnamed_addr #0 {
entry:
  %.b = load i1, i1* @DES_options.init, align 4
  br i1 %.b, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = tail call i64 @OPENSSL_strlcpy(i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @DES_options.buf, i64 0, i64 0), i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i64 noundef 12) #3
  store i1 true, i1* @DES_options.init, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret i8* getelementptr inbounds ([12 x i8], [12 x i8]* @DES_options.buf, i64 0, i64 0)
}

declare i64 @OPENSSL_strlcpy(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define void @DES_ecb_encrypt([8 x i8]* nocapture noundef readonly %input, [8 x i8]* nocapture noundef writeonly %output, %struct.DES_ks* noundef %ks, i32 noundef %enc) local_unnamed_addr #0 {
entry:
  %ll = alloca [2 x i32], align 4
  %0 = bitcast [2 x i32]* %ll to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #4
  %arrayidx = getelementptr inbounds [8 x i8], [8 x i8]* %input, i64 0, i64 0
  %arrayidx1 = getelementptr inbounds [8 x i8], [8 x i8]* %output, i64 0, i64 0
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
  %arrayidx12 = getelementptr inbounds [2 x i32], [2 x i32]* %ll, i64 0, i64 0
  store i32 %or11, i32* %arrayidx12, align 4, !tbaa !7
  %incdec.ptr13 = getelementptr inbounds [8 x i8], [8 x i8]* %input, i64 0, i64 5
  %5 = load i8, i8* %incdec.ptr8, align 1, !tbaa !4
  %conv14 = zext i8 %5 to i32
  %incdec.ptr15 = getelementptr inbounds [8 x i8], [8 x i8]* %input, i64 0, i64 6
  %6 = load i8, i8* %incdec.ptr13, align 1, !tbaa !4
  %conv16 = zext i8 %6 to i32
  %shl17 = shl nuw nsw i32 %conv16, 8
  %or18 = or i32 %shl17, %conv14
  %incdec.ptr19 = getelementptr inbounds [8 x i8], [8 x i8]* %input, i64 0, i64 7
  %7 = load i8, i8* %incdec.ptr15, align 1, !tbaa !4
  %conv20 = zext i8 %7 to i32
  %shl21 = shl nuw nsw i32 %conv20, 16
  %or22 = or i32 %or18, %shl21
  %8 = load i8, i8* %incdec.ptr19, align 1, !tbaa !4
  %conv24 = zext i8 %8 to i32
  %shl25 = shl nuw i32 %conv24, 24
  %or26 = or i32 %or22, %shl25
  %arrayidx27 = getelementptr inbounds [2 x i32], [2 x i32]* %ll, i64 0, i64 1
  store i32 %or26, i32* %arrayidx27, align 4, !tbaa !7
  call void @DES_encrypt1(i32* noundef nonnull %arrayidx12, %struct.DES_ks* noundef %ks, i32 noundef %enc) #3
  %9 = load i32, i32* %arrayidx12, align 4, !tbaa !7
  %conv29 = trunc i32 %9 to i8
  %incdec.ptr30 = getelementptr inbounds [8 x i8], [8 x i8]* %output, i64 0, i64 1
  store i8 %conv29, i8* %arrayidx1, align 1, !tbaa !4
  %shr = lshr i32 %9, 8
  %conv32 = trunc i32 %shr to i8
  %incdec.ptr33 = getelementptr inbounds [8 x i8], [8 x i8]* %output, i64 0, i64 2
  store i8 %conv32, i8* %incdec.ptr30, align 1, !tbaa !4
  %shr34 = lshr i32 %9, 16
  %conv36 = trunc i32 %shr34 to i8
  %incdec.ptr37 = getelementptr inbounds [8 x i8], [8 x i8]* %output, i64 0, i64 3
  store i8 %conv36, i8* %incdec.ptr33, align 1, !tbaa !4
  %shr38 = lshr i32 %9, 24
  %conv40 = trunc i32 %shr38 to i8
  %incdec.ptr41 = getelementptr inbounds [8 x i8], [8 x i8]* %output, i64 0, i64 4
  store i8 %conv40, i8* %incdec.ptr37, align 1, !tbaa !4
  %10 = load i32, i32* %arrayidx27, align 4, !tbaa !7
  %conv44 = trunc i32 %10 to i8
  %incdec.ptr45 = getelementptr inbounds [8 x i8], [8 x i8]* %output, i64 0, i64 5
  store i8 %conv44, i8* %incdec.ptr41, align 1, !tbaa !4
  %shr46 = lshr i32 %10, 8
  %conv48 = trunc i32 %shr46 to i8
  %incdec.ptr49 = getelementptr inbounds [8 x i8], [8 x i8]* %output, i64 0, i64 6
  store i8 %conv48, i8* %incdec.ptr45, align 1, !tbaa !4
  %shr50 = lshr i32 %10, 16
  %conv52 = trunc i32 %shr50 to i8
  %incdec.ptr53 = getelementptr inbounds [8 x i8], [8 x i8]* %output, i64 0, i64 7
  store i8 %conv52, i8* %incdec.ptr49, align 1, !tbaa !4
  %shr54 = lshr i32 %10, 24
  %conv56 = trunc i32 %shr54 to i8
  store i8 %conv56, i8* %incdec.ptr53, align 1, !tbaa !4
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

declare void @DES_encrypt1(i32* noundef, %struct.DES_ks* noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #3 = { nobuiltin nounwind "no-builtins" }
attributes #4 = { nounwind }

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
