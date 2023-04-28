; ModuleID = 'crypto/evp/e_old.c'
source_filename = "crypto/evp/e_old.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evp_cipher_st = type opaque

; Function Attrs: noinline nounwind uwtable
define %struct.evp_cipher_st* @EVP_bf_cfb() local_unnamed_addr #0 {
entry:
  %call = tail call %struct.evp_cipher_st* @EVP_bf_cfb64() #2
  ret %struct.evp_cipher_st* %call
}

declare %struct.evp_cipher_st* @EVP_bf_cfb64() local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define %struct.evp_cipher_st* @EVP_des_cfb() local_unnamed_addr #0 {
entry:
  %call = tail call %struct.evp_cipher_st* @EVP_des_cfb64() #2
  ret %struct.evp_cipher_st* %call
}

declare %struct.evp_cipher_st* @EVP_des_cfb64() local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define %struct.evp_cipher_st* @EVP_des_ede3_cfb() local_unnamed_addr #0 {
entry:
  %call = tail call %struct.evp_cipher_st* @EVP_des_ede3_cfb64() #2
  ret %struct.evp_cipher_st* %call
}

declare %struct.evp_cipher_st* @EVP_des_ede3_cfb64() local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define %struct.evp_cipher_st* @EVP_des_ede_cfb() local_unnamed_addr #0 {
entry:
  %call = tail call %struct.evp_cipher_st* @EVP_des_ede_cfb64() #2
  ret %struct.evp_cipher_st* %call
}

declare %struct.evp_cipher_st* @EVP_des_ede_cfb64() local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define %struct.evp_cipher_st* @EVP_idea_cfb() local_unnamed_addr #0 {
entry:
  %call = tail call %struct.evp_cipher_st* @EVP_idea_cfb64() #2
  ret %struct.evp_cipher_st* %call
}

declare %struct.evp_cipher_st* @EVP_idea_cfb64() local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define %struct.evp_cipher_st* @EVP_rc2_cfb() local_unnamed_addr #0 {
entry:
  %call = tail call %struct.evp_cipher_st* @EVP_rc2_cfb64() #2
  ret %struct.evp_cipher_st* %call
}

declare %struct.evp_cipher_st* @EVP_rc2_cfb64() local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define %struct.evp_cipher_st* @EVP_cast5_cfb() local_unnamed_addr #0 {
entry:
  %call = tail call %struct.evp_cipher_st* @EVP_cast5_cfb64() #2
  ret %struct.evp_cipher_st* %call
}

declare %struct.evp_cipher_st* @EVP_cast5_cfb64() local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define %struct.evp_cipher_st* @EVP_aes_128_cfb() local_unnamed_addr #0 {
entry:
  %call = tail call %struct.evp_cipher_st* @EVP_aes_128_cfb128() #2
  ret %struct.evp_cipher_st* %call
}

declare %struct.evp_cipher_st* @EVP_aes_128_cfb128() local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define %struct.evp_cipher_st* @EVP_aes_192_cfb() local_unnamed_addr #0 {
entry:
  %call = tail call %struct.evp_cipher_st* @EVP_aes_192_cfb128() #2
  ret %struct.evp_cipher_st* %call
}

declare %struct.evp_cipher_st* @EVP_aes_192_cfb128() local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define %struct.evp_cipher_st* @EVP_aes_256_cfb() local_unnamed_addr #0 {
entry:
  %call = tail call %struct.evp_cipher_st* @EVP_aes_256_cfb128() #2
  ret %struct.evp_cipher_st* %call
}

declare %struct.evp_cipher_st* @EVP_aes_256_cfb128() local_unnamed_addr #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nobuiltin nounwind "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{!"clang version 14.0.0"}
