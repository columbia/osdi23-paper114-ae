; ModuleID = 'crypto/rc2/rc2_ecb.c'
source_filename = "crypto/rc2/rc2_ecb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rc2_key_st = type { [64 x i32] }

; Function Attrs: noinline nounwind uwtable
define void @RC2_ecb_encrypt(i8* nocapture noundef readonly %in, i8* nocapture noundef writeonly %out, %struct.rc2_key_st* noundef %ks, i32 noundef %encrypt) local_unnamed_addr #0 {
entry:
  %d = alloca [2 x i64], align 16
  %0 = bitcast [2 x i64]* %d to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #3
  %incdec.ptr = getelementptr inbounds i8, i8* %in, i64 1
  %1 = load i8, i8* %in, align 1, !tbaa !4
  %conv = zext i8 %1 to i64
  %incdec.ptr1 = getelementptr inbounds i8, i8* %in, i64 2
  %2 = load i8, i8* %incdec.ptr, align 1, !tbaa !4
  %conv2 = zext i8 %2 to i64
  %shl = shl nuw nsw i64 %conv2, 8
  %or = or i64 %shl, %conv
  %incdec.ptr3 = getelementptr inbounds i8, i8* %in, i64 3
  %3 = load i8, i8* %incdec.ptr1, align 1, !tbaa !4
  %conv4 = zext i8 %3 to i64
  %shl5 = shl nuw nsw i64 %conv4, 16
  %or6 = or i64 %or, %shl5
  %incdec.ptr7 = getelementptr inbounds i8, i8* %in, i64 4
  %4 = load i8, i8* %incdec.ptr3, align 1, !tbaa !4
  %conv8 = zext i8 %4 to i64
  %shl9 = shl nuw nsw i64 %conv8, 24
  %or10 = or i64 %or6, %shl9
  %arrayidx = getelementptr inbounds [2 x i64], [2 x i64]* %d, i64 0, i64 0
  store i64 %or10, i64* %arrayidx, align 16, !tbaa !7
  %incdec.ptr11 = getelementptr inbounds i8, i8* %in, i64 5
  %5 = load i8, i8* %incdec.ptr7, align 1, !tbaa !4
  %conv12 = zext i8 %5 to i64
  %incdec.ptr13 = getelementptr inbounds i8, i8* %in, i64 6
  %6 = load i8, i8* %incdec.ptr11, align 1, !tbaa !4
  %conv14 = zext i8 %6 to i64
  %shl15 = shl nuw nsw i64 %conv14, 8
  %or16 = or i64 %shl15, %conv12
  %incdec.ptr17 = getelementptr inbounds i8, i8* %in, i64 7
  %7 = load i8, i8* %incdec.ptr13, align 1, !tbaa !4
  %conv18 = zext i8 %7 to i64
  %shl19 = shl nuw nsw i64 %conv18, 16
  %or20 = or i64 %or16, %shl19
  %8 = load i8, i8* %incdec.ptr17, align 1, !tbaa !4
  %conv22 = zext i8 %8 to i64
  %shl23 = shl nuw nsw i64 %conv22, 24
  %or24 = or i64 %or20, %shl23
  %arrayidx25 = getelementptr inbounds [2 x i64], [2 x i64]* %d, i64 0, i64 1
  store i64 %or24, i64* %arrayidx25, align 8, !tbaa !7
  %tobool.not = icmp eq i32 %encrypt, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @RC2_encrypt(i64* noundef nonnull %arrayidx, %struct.rc2_key_st* noundef %ks) #4
  br label %if.end

if.else:                                          ; preds = %entry
  call void @RC2_decrypt(i64* noundef nonnull %arrayidx, %struct.rc2_key_st* noundef %ks) #4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %9 = load i64, i64* %arrayidx, align 16, !tbaa !7
  %conv28 = trunc i64 %9 to i8
  %incdec.ptr29 = getelementptr inbounds i8, i8* %out, i64 1
  store i8 %conv28, i8* %out, align 1, !tbaa !4
  %shr = lshr i64 %9, 8
  %conv31 = trunc i64 %shr to i8
  %incdec.ptr32 = getelementptr inbounds i8, i8* %out, i64 2
  store i8 %conv31, i8* %incdec.ptr29, align 1, !tbaa !4
  %shr33 = lshr i64 %9, 16
  %conv35 = trunc i64 %shr33 to i8
  %incdec.ptr36 = getelementptr inbounds i8, i8* %out, i64 3
  store i8 %conv35, i8* %incdec.ptr32, align 1, !tbaa !4
  %shr37 = lshr i64 %9, 24
  %conv39 = trunc i64 %shr37 to i8
  %incdec.ptr40 = getelementptr inbounds i8, i8* %out, i64 4
  store i8 %conv39, i8* %incdec.ptr36, align 1, !tbaa !4
  %10 = load i64, i64* %arrayidx25, align 8, !tbaa !7
  %conv43 = trunc i64 %10 to i8
  %incdec.ptr44 = getelementptr inbounds i8, i8* %out, i64 5
  store i8 %conv43, i8* %incdec.ptr40, align 1, !tbaa !4
  %shr45 = lshr i64 %10, 8
  %conv47 = trunc i64 %shr45 to i8
  %incdec.ptr48 = getelementptr inbounds i8, i8* %out, i64 6
  store i8 %conv47, i8* %incdec.ptr44, align 1, !tbaa !4
  %shr49 = lshr i64 %10, 16
  %conv51 = trunc i64 %shr49 to i8
  %incdec.ptr52 = getelementptr inbounds i8, i8* %out, i64 7
  store i8 %conv51, i8* %incdec.ptr48, align 1, !tbaa !4
  %shr53 = lshr i64 %10, 24
  %conv55 = trunc i64 %shr53 to i8
  store i8 %conv55, i8* %incdec.ptr52, align 1, !tbaa !4
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #3
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

declare void @RC2_encrypt(i64* noundef, %struct.rc2_key_st* noundef) local_unnamed_addr #2

declare void @RC2_decrypt(i64* noundef, %struct.rc2_key_st* noundef) local_unnamed_addr #2

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
!8 = !{!"long", !5, i64 0}
