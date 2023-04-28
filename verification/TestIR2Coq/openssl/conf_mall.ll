; ModuleID = 'crypto/conf/conf_mall.c'
source_filename = "crypto/conf/conf_mall.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define void @OPENSSL_load_builtin_modules() local_unnamed_addr #0 {
entry:
  tail call void @ASN1_add_oid_module() #2
  tail call void @ASN1_add_stable_module() #2
  tail call void @ENGINE_add_conf_module() #2
  tail call void @EVP_add_alg_module() #2
  tail call void @ossl_config_add_ssl_module() #2
  tail call void @ossl_provider_add_conf_module() #2
  tail call void @ossl_random_add_conf_module() #2
  ret void
}

declare void @ASN1_add_oid_module() local_unnamed_addr #1

declare void @ASN1_add_stable_module() local_unnamed_addr #1

declare void @ENGINE_add_conf_module() local_unnamed_addr #1

declare void @EVP_add_alg_module() local_unnamed_addr #1

declare void @ossl_config_add_ssl_module() local_unnamed_addr #1

declare void @ossl_provider_add_conf_module() local_unnamed_addr #1

declare void @ossl_random_add_conf_module() local_unnamed_addr #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nobuiltin nounwind "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{!"clang version 14.0.0"}
