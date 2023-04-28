; ModuleID = 'crypto/x509/x509_def.c'
source_filename = "crypto/x509/x509_def.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [23 x i8] c"/usr/local/ssl/private\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"/usr/local/ssl\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"/usr/local/ssl/certs\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"/usr/local/ssl/cert.pem\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"SSL_CERT_DIR\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"SSL_CERT_FILE\00", align 1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define i8* @X509_get_default_private_dir() local_unnamed_addr #0 {
entry:
  ret i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0)
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define i8* @X509_get_default_cert_area() local_unnamed_addr #0 {
entry:
  ret i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0)
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define i8* @X509_get_default_cert_dir() local_unnamed_addr #0 {
entry:
  ret i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0)
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define i8* @X509_get_default_cert_file() local_unnamed_addr #0 {
entry:
  ret i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0)
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define i8* @X509_get_default_cert_dir_env() local_unnamed_addr #0 {
entry:
  ret i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0)
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define i8* @X509_get_default_cert_file_env() local_unnamed_addr #0 {
entry:
  ret i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0)
}

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{!"clang version 14.0.0"}
