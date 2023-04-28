; ModuleID = 'crypto/cpuid.c'
source_filename = "crypto/cpuid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@OPENSSL_cpuid_setup.trigger = internal unnamed_addr global i1 false, align 4
@.str = private unnamed_addr constant [16 x i8] c"OPENSSL_ia32cap\00", align 1
@OPENSSL_ia32cap_P = external global [4 x i32], align 16

; Function Attrs: noinline nounwind uwtable
define void @OPENSSL_cpuid_setup() local_unnamed_addr #0 {
entry:
  %.b = load i1, i1* @OPENSSL_cpuid_setup.trigger, align 4
  br i1 %.b, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  store i1 true, i1* @OPENSSL_cpuid_setup.trigger, align 4
  %call = tail call i8* @getenv(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0)) #4
  %cmp.not = icmp eq i8* %call, null
  br i1 %cmp.not, label %if.else48, label %if.then1

if.then1:                                         ; preds = %if.end
  %0 = load i8, i8* %call, align 1, !tbaa !4
  %cmp2 = icmp eq i8 %0, 126
  %1 = zext i1 %cmp2 to i64
  %add.ptr = getelementptr inbounds i8, i8* %call, i64 %1
  %call4 = tail call fastcc i64 @ossl_strtouint64(i8* noundef nonnull %add.ptr) #5
  br i1 %cmp2, label %if.then6, label %if.else

if.then6:                                         ; preds = %if.then1
  %call7 = tail call i64 @OPENSSL_ia32_cpuid(i32* noundef getelementptr inbounds ([4 x i32], [4 x i32]* @OPENSSL_ia32cap_P, i64 0, i64 0)) #4
  %neg = xor i64 %call4, -1
  %and = and i64 %call7, %neg
  %and8 = and i64 %call4, 16777216
  %tobool9.not = icmp eq i64 %and8, 0
  %and11 = and i64 %and, -1297045497365659649
  %spec.select = select i1 %tobool9.not, i64 %and, i64 %and11
  br label %if.end20

if.else:                                          ; preds = %if.then1
  %2 = load i8, i8* %call, align 1, !tbaa !4
  %cmp15 = icmp eq i8 %2, 58
  br i1 %cmp15, label %if.then17, label %if.end20

if.then17:                                        ; preds = %if.else
  %call18 = tail call i64 @OPENSSL_ia32_cpuid(i32* noundef getelementptr inbounds ([4 x i32], [4 x i32]* @OPENSSL_ia32cap_P, i64 0, i64 0)) #4
  br label %if.end20

if.end20:                                         ; preds = %if.else, %if.then17, %if.then6
  %vec.1 = phi i64 [ %spec.select, %if.then6 ], [ %call18, %if.then17 ], [ %call4, %if.else ]
  %call21 = tail call fastcc i8* @ossl_strchr(i8* noundef nonnull %call) #5
  %cmp22.not = icmp eq i8* %call21, null
  br i1 %cmp22.not, label %if.else46, label %if.then24

if.then24:                                        ; preds = %if.end20
  %incdec.ptr = getelementptr inbounds i8, i8* %call21, i64 1
  %3 = load i8, i8* %incdec.ptr, align 1, !tbaa !4
  %cmp27 = icmp eq i8 %3, 126
  %4 = zext i1 %cmp27 to i64
  %add.ptr31 = getelementptr inbounds i8, i8* %incdec.ptr, i64 %4
  %call32 = tail call fastcc i64 @ossl_strtouint64(i8* noundef nonnull %add.ptr31) #5
  %conv35 = trunc i64 %call32 to i32
  br i1 %cmp27, label %if.then34, label %if.else41

if.then34:                                        ; preds = %if.then24
  %neg36 = xor i32 %conv35, -1
  %5 = load i32, i32* getelementptr inbounds ([4 x i32], [4 x i32]* @OPENSSL_ia32cap_P, i64 0, i64 2), align 8, !tbaa !7
  %and37 = and i32 %5, %neg36
  store i32 %and37, i32* getelementptr inbounds ([4 x i32], [4 x i32]* @OPENSSL_ia32cap_P, i64 0, i64 2), align 8, !tbaa !7
  %shr = lshr i64 %call32, 32
  %conv38 = trunc i64 %shr to i32
  %neg39 = xor i32 %conv38, -1
  %6 = load i32, i32* getelementptr inbounds ([4 x i32], [4 x i32]* @OPENSSL_ia32cap_P, i64 0, i64 3), align 4, !tbaa !7
  %and40 = and i32 %6, %neg39
  br label %if.end47

if.else41:                                        ; preds = %if.then24
  store i32 %conv35, i32* getelementptr inbounds ([4 x i32], [4 x i32]* @OPENSSL_ia32cap_P, i64 0, i64 2), align 8, !tbaa !7
  %shr43 = lshr i64 %call32, 32
  %conv44 = trunc i64 %shr43 to i32
  br label %if.end47

if.else46:                                        ; preds = %if.end20
  store i32 0, i32* getelementptr inbounds ([4 x i32], [4 x i32]* @OPENSSL_ia32cap_P, i64 0, i64 2), align 8, !tbaa !7
  br label %if.end47

if.end47:                                         ; preds = %if.then34, %if.else41, %if.else46
  %storemerge76 = phi i32 [ 0, %if.else46 ], [ %conv44, %if.else41 ], [ %and40, %if.then34 ]
  store i32 %storemerge76, i32* getelementptr inbounds ([4 x i32], [4 x i32]* @OPENSSL_ia32cap_P, i64 0, i64 3), align 4, !tbaa !7
  br label %if.end50

if.else48:                                        ; preds = %if.end
  %call49 = tail call i64 @OPENSSL_ia32_cpuid(i32* noundef getelementptr inbounds ([4 x i32], [4 x i32]* @OPENSSL_ia32cap_P, i64 0, i64 0)) #4
  br label %if.end50

if.end50:                                         ; preds = %if.else48, %if.end47
  %vec.2 = phi i64 [ %vec.1, %if.end47 ], [ %call49, %if.else48 ]
  %conv51 = trunc i64 %vec.2 to i32
  %or = or i32 %conv51, 1024
  store i32 %or, i32* getelementptr inbounds ([4 x i32], [4 x i32]* @OPENSSL_ia32cap_P, i64 0, i64 0), align 16, !tbaa !7
  %shr52 = lshr i64 %vec.2, 32
  %conv53 = trunc i64 %shr52 to i32
  store i32 %conv53, i32* getelementptr inbounds ([4 x i32], [4 x i32]* @OPENSSL_ia32cap_P, i64 0, i64 1), align 4, !tbaa !7
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end50
  ret void
}

; Function Attrs: nounwind
declare i8* @getenv(i8* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal fastcc i64 @ossl_strtouint64(i8* nocapture noundef readonly %str) unnamed_addr #0 {
entry:
  %0 = load i8, i8* %str, align 1, !tbaa !4
  %cmp = icmp eq i8 %0, 48
  br i1 %cmp, label %if.then, label %if.end7

if.then:                                          ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %str, i64 1
  %1 = load i8, i8* %incdec.ptr, align 1, !tbaa !4
  %conv2 = sext i8 %1 to i32
  %call = tail call i32 @ossl_tolower(i32 noundef %conv2) #4
  %cmp3 = icmp eq i32 %call, 120
  %incdec.ptr6 = getelementptr inbounds i8, i8* %str, i64 2
  %spec.select = select i1 %cmp3, i8* %incdec.ptr6, i8* %incdec.ptr
  %spec.select23 = select i1 %cmp3, i32 16, i32 8
  %.pre = load i8, i8* %spec.select, align 1, !tbaa !4
  br label %if.end7

if.end7:                                          ; preds = %if.then, %entry
  %2 = phi i8 [ %0, %entry ], [ %.pre, %if.then ]
  %str.addr.0 = phi i8* [ %str, %entry ], [ %spec.select, %if.then ]
  %base.0 = phi i32 [ 10, %entry ], [ %spec.select23, %if.then ]
  %call924 = tail call fastcc i32 @todigit(i8 noundef signext %2) #5
  %cmp1025 = icmp ult i32 %call924, %base.0
  br i1 %cmp1025, label %while.body.lr.ph, label %while.end

while.body.lr.ph:                                 ; preds = %if.end7
  %conv12 = zext i32 %base.0 to i64
  br label %while.body

while.body:                                       ; preds = %while.body.lr.ph, %while.body
  %call928 = phi i32 [ %call924, %while.body.lr.ph ], [ %call9, %while.body ]
  %str.addr.127 = phi i8* [ %str.addr.0, %while.body.lr.ph ], [ %incdec.ptr8, %while.body ]
  %ret.026 = phi i64 [ 0, %while.body.lr.ph ], [ %add, %while.body ]
  %incdec.ptr8 = getelementptr inbounds i8, i8* %str.addr.127, i64 1
  %mul = mul i64 %ret.026, %conv12
  %conv13 = zext i32 %call928 to i64
  %add = add i64 %mul, %conv13
  %3 = load i8, i8* %incdec.ptr8, align 1, !tbaa !4
  %call9 = tail call fastcc i32 @todigit(i8 noundef signext %3) #5
  %cmp10 = icmp ult i32 %call9, %base.0
  br i1 %cmp10, label %while.body, label %while.end, !llvm.loop !9

while.end:                                        ; preds = %while.body, %if.end7
  %ret.0.lcssa = phi i64 [ 0, %if.end7 ], [ %add, %while.body ]
  ret i64 %ret.0.lcssa
}

declare i64 @OPENSSL_ia32_cpuid(i32* noundef) local_unnamed_addr #2

; Function Attrs: nofree noinline norecurse nosync nounwind readonly uwtable
define internal fastcc i8* @ossl_strchr(i8* noundef readonly %str) unnamed_addr #3 {
entry:
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %str.addr.0 = phi i8* [ %str, %entry ], [ %incdec.ptr, %if.end ]
  %0 = load i8, i8* %str.addr.0, align 1, !tbaa !4
  switch i8 %0, label %if.end [
    i8 0, label %cleanup
    i8 58, label %cleanup.loopexit
  ]

if.end:                                           ; preds = %while.cond
  %incdec.ptr = getelementptr inbounds i8, i8* %str.addr.0, i64 1
  br label %while.cond, !llvm.loop !11

cleanup.loopexit:                                 ; preds = %while.cond
  br label %cleanup

cleanup:                                          ; preds = %while.cond, %cleanup.loopexit
  %retval.0 = phi i8* [ %str.addr.0, %cleanup.loopexit ], [ null, %while.cond ]
  ret i8* %retval.0
}

declare i32 @ossl_tolower(i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @todigit(i8 noundef signext %c) unnamed_addr #0 {
entry:
  %conv = sext i8 %c to i32
  %call = tail call i32 @ossl_ctype_check(i32 noundef %conv, i32 noundef 4) #4
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %sub = add nsw i32 %conv, -48
  br label %return

if.else:                                          ; preds = %entry
  %call3 = tail call i32 @ossl_ctype_check(i32 noundef %conv, i32 noundef 16) #4
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %return, label %if.then5

if.then5:                                         ; preds = %if.else
  %call7 = tail call i32 @ossl_tolower(i32 noundef %conv) #4
  %add = add nsw i32 %call7, -87
  br label %return

return:                                           ; preds = %if.else, %if.then5, %if.then
  %retval.0 = phi i32 [ %sub, %if.then ], [ %add, %if.then5 ], [ 16, %if.else ]
  ret i32 %retval.0
}

declare i32 @ossl_ctype_check(i32 noundef, i32 noundef) local_unnamed_addr #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree noinline norecurse nosync nounwind readonly uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nobuiltin nounwind "no-builtins" }
attributes #5 = { nobuiltin "no-builtins" }

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
!9 = distinct !{!9, !10}
!10 = !{!"llvm.loop.mustprogress"}
!11 = distinct !{!11, !10}
