; ModuleID = 'crypto/camellia/cmll_ctr.c'
source_filename = "crypto/camellia/cmll_ctr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.camellia_key_st = type { %union.anon, i32 }
%union.anon = type { double, [264 x i8] }

; Function Attrs: noinline nounwind uwtable
define void @Camellia_ctr128_encrypt(i8* noundef %in, i8* noundef %out, i64 noundef %length, %struct.camellia_key_st* noundef %key, i8* noundef %ivec, i8* noundef %ecount_buf, i32* noundef %num) local_unnamed_addr #0 {
entry:
  %0 = bitcast %struct.camellia_key_st* %key to i8*
  tail call void @CRYPTO_ctr128_encrypt(i8* noundef %in, i8* noundef %out, i64 noundef %length, i8* noundef %0, i8* noundef %ivec, i8* noundef %ecount_buf, i32* noundef %num, void (i8*, i8*, i8*)* noundef bitcast (void (i8*, i8*, %struct.camellia_key_st*)* @Camellia_encrypt to void (i8*, i8*, i8*)*)) #2
  ret void
}

declare void @CRYPTO_ctr128_encrypt(i8* noundef, i8* noundef, i64 noundef, i8* noundef, i8* noundef, i8* noundef, i32* noundef, void (i8*, i8*, i8*)* noundef) local_unnamed_addr #1

declare void @Camellia_encrypt(i8* noundef, i8* noundef, %struct.camellia_key_st* noundef) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nobuiltin nounwind "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{!"clang version 14.0.0"}
