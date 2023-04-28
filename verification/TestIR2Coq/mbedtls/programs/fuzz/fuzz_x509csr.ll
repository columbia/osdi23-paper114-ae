; ModuleID = 'fuzz_x509csr.c'
source_filename = "fuzz_x509csr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mbedtls_x509_csr = type { %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf, i32, %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_named_data, %struct.mbedtls_pk_context, %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf, i32, i32, i8* }
%struct.mbedtls_asn1_named_data = type { %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_named_data*, i8 }
%struct.mbedtls_pk_context = type { %struct.mbedtls_pk_info_t*, i8* }
%struct.mbedtls_pk_info_t = type opaque
%struct.mbedtls_asn1_buf = type { i32, i64, i8* }

@.str = private unnamed_addr constant [2 x i8] c" \00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @LLVMFuzzerTestOneInput(i8* noundef %Data, i64 noundef %Size) #0 {
entry:
  %Data.addr = alloca i8*, align 8
  %Size.addr = alloca i64, align 8
  %ret = alloca i32, align 4
  %csr = alloca %struct.mbedtls_x509_csr, align 8
  %buf = alloca [4096 x i8], align 16
  store i8* %Data, i8** %Data.addr, align 8
  store i64 %Size, i64* %Size.addr, align 8
  call void @mbedtls_x509_csr_init(%struct.mbedtls_x509_csr* noundef %csr) #2
  %0 = load i8*, i8** %Data.addr, align 8
  %1 = load i64, i64* %Size.addr, align 8
  %call = call i32 @mbedtls_x509_csr_parse(%struct.mbedtls_x509_csr* noundef %csr, i8* noundef %0, i64 noundef %1) #2
  store i32 %call, i32* %ret, align 4
  %2 = load i32, i32* %ret, align 4
  %cmp = icmp eq i32 %2, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %arraydecay = getelementptr inbounds [4096 x i8], [4096 x i8]* %buf, i64 0, i64 0
  %call1 = call i32 @mbedtls_x509_csr_info(i8* noundef %arraydecay, i64 noundef 4095, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), %struct.mbedtls_x509_csr* noundef %csr) #2
  store i32 %call1, i32* %ret, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  call void @mbedtls_x509_csr_free(%struct.mbedtls_x509_csr* noundef %csr) #2
  ret i32 0
}

declare dso_local void @mbedtls_x509_csr_init(%struct.mbedtls_x509_csr* noundef) #1

declare dso_local i32 @mbedtls_x509_csr_parse(%struct.mbedtls_x509_csr* noundef, i8* noundef, i64 noundef) #1

declare dso_local i32 @mbedtls_x509_csr_info(i8* noundef, i64 noundef, i8* noundef, %struct.mbedtls_x509_csr* noundef) #1

declare dso_local void @mbedtls_x509_csr_free(%struct.mbedtls_x509_csr* noundef) #1

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nobuiltin "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.0"}
