; ModuleID = 'crypto/ctype.c'
source_filename = "crypto/ctype.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ctype_char_map = internal unnamed_addr constant [128 x i16] [i16 64, i16 64, i16 64, i16 64, i16 64, i16 64, i16 64, i16 64, i16 64, i16 104, i16 72, i16 72, i16 72, i16 72, i16 64, i16 64, i16 64, i16 64, i16 64, i16 64, i16 64, i16 64, i16 64, i16 64, i16 64, i16 64, i16 64, i16 64, i16 64, i16 64, i16 64, i16 64, i16 2344, i16 896, i16 896, i16 896, i16 896, i16 896, i16 896, i16 2944, i16 2944, i16 2944, i16 896, i16 3968, i16 2944, i16 2944, i16 2944, i16 3968, i16 3476, i16 3476, i16 3476, i16 3476, i16 3476, i16 3476, i16 3476, i16 3476, i16 3476, i16 3476, i16 2944, i16 896, i16 896, i16 3968, i16 896, i16 2944, i16 896, i16 3474, i16 3474, i16 3474, i16 3474, i16 3474, i16 3474, i16 3458, i16 3458, i16 3458, i16 3458, i16 3458, i16 3458, i16 3458, i16 3458, i16 3458, i16 3458, i16 3458, i16 3458, i16 3458, i16 3458, i16 3458, i16 3458, i16 3458, i16 3458, i16 3458, i16 3458, i16 896, i16 896, i16 896, i16 896, i16 896, i16 896, i16 3473, i16 3473, i16 3473, i16 3473, i16 3473, i16 3473, i16 3457, i16 3457, i16 3457, i16 3457, i16 3457, i16 3457, i16 3457, i16 3457, i16 3457, i16 3457, i16 3457, i16 3457, i16 3457, i16 3457, i16 3457, i16 3457, i16 3457, i16 3457, i16 3457, i16 3457, i16 896, i16 896, i16 896, i16 896, i16 64], align 16

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define i32 @ossl_ctype_check(i32 noundef %c, i32 noundef %mask) local_unnamed_addr #0 {
entry:
  %0 = icmp ult i32 %c, 128
  br i1 %0, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %idxprom8 = zext i32 %c to i64
  %arrayidx = getelementptr inbounds [128 x i16], [128 x i16]* @ctype_char_map, i64 0, i64 %idxprom8
  %1 = load i16, i16* %arrayidx, align 2, !tbaa !4
  %conv = zext i16 %1 to i32
  %and = and i32 %conv, %mask
  %cmp2 = icmp ne i32 %and, 0
  %phi.cast = zext i1 %cmp2 to i32
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %2 = phi i32 [ 0, %entry ], [ %phi.cast, %land.rhs ]
  ret i32 %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define i32 @ossl_tolower(i32 noundef %c) local_unnamed_addr #0 {
entry:
  %call = tail call i32 @ossl_ctype_check(i32 noundef %c, i32 noundef 2) #1
  %tobool.not = icmp eq i32 %call, 0
  %xor = xor i32 %c, 32
  %cond = select i1 %tobool.not, i32 %c, i32 %xor
  ret i32 %cond
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define i32 @ossl_toupper(i32 noundef %c) local_unnamed_addr #0 {
entry:
  %call = tail call i32 @ossl_ctype_check(i32 noundef %c, i32 noundef 1) #1
  %tobool.not = icmp eq i32 %call, 0
  %xor = xor i32 %c, 32
  %cond = select i1 %tobool.not, i32 %c, i32 %xor
  ret i32 %cond
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define i32 @ossl_ascii_isdigit(i8 noundef signext %inchar) local_unnamed_addr #0 {
entry:
  %0 = add i8 %inchar, -48
  %1 = icmp ult i8 %0, 10
  %. = zext i1 %1 to i32
  ret i32 %.
}

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nobuiltin "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{!"clang version 14.0.0"}
!4 = !{!5, !5, i64 0}
!5 = !{!"short", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
