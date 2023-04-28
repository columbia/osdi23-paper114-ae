; ModuleID = 'crypto/aes/aes_wrap.c'
source_filename = "crypto/aes/aes_wrap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aes_key_st = type { [60 x i32], i32 }

; Function Attrs: noinline nounwind uwtable
define i32 @AES_wrap_key(%struct.aes_key_st* noundef %key, i8* noundef %iv, i8* noundef %out, i8* noundef %in, i32 noundef %inlen) local_unnamed_addr #0 {
entry:
  %0 = bitcast %struct.aes_key_st* %key to i8*
  %conv = zext i32 %inlen to i64
  %call = tail call i64 @CRYPTO_128_wrap(i8* noundef %0, i8* noundef %iv, i8* noundef %out, i8* noundef %in, i64 noundef %conv, void (i8*, i8*, i8*)* noundef bitcast (void (i8*, i8*, %struct.aes_key_st*)* @AES_encrypt to void (i8*, i8*, i8*)*)) #2
  %conv1 = trunc i64 %call to i32
  ret i32 %conv1
}

declare i64 @CRYPTO_128_wrap(i8* noundef, i8* noundef, i8* noundef, i8* noundef, i64 noundef, void (i8*, i8*, i8*)* noundef) local_unnamed_addr #1

declare void @AES_encrypt(i8* noundef, i8* noundef, %struct.aes_key_st* noundef) #1

; Function Attrs: noinline nounwind uwtable
define i32 @AES_unwrap_key(%struct.aes_key_st* noundef %key, i8* noundef %iv, i8* noundef %out, i8* noundef %in, i32 noundef %inlen) local_unnamed_addr #0 {
entry:
  %0 = bitcast %struct.aes_key_st* %key to i8*
  %conv = zext i32 %inlen to i64
  %call = tail call i64 @CRYPTO_128_unwrap(i8* noundef %0, i8* noundef %iv, i8* noundef %out, i8* noundef %in, i64 noundef %conv, void (i8*, i8*, i8*)* noundef bitcast (void (i8*, i8*, %struct.aes_key_st*)* @AES_decrypt to void (i8*, i8*, i8*)*)) #2
  %conv1 = trunc i64 %call to i32
  ret i32 %conv1
}

declare i64 @CRYPTO_128_unwrap(i8* noundef, i8* noundef, i8* noundef, i8* noundef, i64 noundef, void (i8*, i8*, i8*)* noundef) local_unnamed_addr #1

declare void @AES_decrypt(i8* noundef, i8* noundef, %struct.aes_key_st* noundef) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nobuiltin nounwind "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{!"clang version 14.0.0"}
