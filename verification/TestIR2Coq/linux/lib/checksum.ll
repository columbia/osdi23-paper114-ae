; ModuleID = 'lib/checksum.c'
source_filename = "lib/checksum.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @csum_partial(i8* noundef %buff, i32 noundef %len, i32 noundef %wsum) local_unnamed_addr #0 {
entry:
  %call = call i32 @do_csum(i8* noundef %buff, i32 noundef %len) #3
  %add = add i32 %call, %wsum
  %cmp = icmp ult i32 %add, %wsum
  %add1 = zext i1 %cmp to i32
  %spec.select = add i32 %add, %add1
  ret i32 %spec.select
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @do_csum(i8* noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i16 @ip_compute_csum(i8* noundef %buff, i32 noundef %len) local_unnamed_addr #0 {
entry:
  %call = call i32 @do_csum(i8* noundef %buff, i32 noundef %len) #3
  %0 = trunc i32 %call to i16
  %conv = xor i16 %0, -1
  ret i16 %conv
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define dso_local i32 @csum_tcpudp_nofold(i32 noundef %saddr, i32 noundef %daddr, i32 noundef %len, i8 noundef %proto, i32 noundef %sum) local_unnamed_addr #2 {
entry:
  %conv = zext i32 %sum to i64
  %conv1 = zext i32 %saddr to i64
  %conv2 = zext i32 %daddr to i64
  %conv4 = zext i8 %proto to i32
  %add5 = add i32 %conv4, %len
  %shl = shl i32 %add5, 8
  %conv6 = zext i32 %shl to i64
  %add = add nuw nsw i64 %conv2, %conv1
  %add3 = add nuw nsw i64 %add, %conv
  %add7 = add nuw nsw i64 %add3, %conv6
  %call = call fastcc i32 @from64to32(i64 noundef %add7) #4
  ret i32 %call
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i32 @from64to32(i64 noundef %x) unnamed_addr #2 {
entry:
  %and = and i64 %x, 4294967295
  %shr = lshr i64 %x, 32
  %add = add nuw nsw i64 %and, %shr
  %shr2 = lshr i64 %add, 32
  %add3 = add nuw nsw i64 %shr2, %add
  %conv = trunc i64 %add3 to i32
  ret i32 %conv
}

attributes #0 = { noinline nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #1 = { null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #3 = { nobuiltin nounwind "no-builtins" }
attributes #4 = { nobuiltin "no-builtins" }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}

!0 = !{i32 1, !"wchar_size", i32 2}
!1 = !{i32 1, !"branch-target-enforcement", i32 0}
!2 = !{i32 1, !"sign-return-address", i32 0}
!3 = !{i32 1, !"sign-return-address-all", i32 0}
!4 = !{i32 1, !"sign-return-address-with-bkey", i32 0}
!5 = !{i32 7, !"frame-pointer", i32 1}
!6 = !{!"clang version 14.0.0"}
