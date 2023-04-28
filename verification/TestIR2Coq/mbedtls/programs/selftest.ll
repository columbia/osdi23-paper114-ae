; ModuleID = 'test/selftest.c'
source_filename = "test/selftest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.selftest_t = type { i8*, i32 (i32)* }

@.str = private unnamed_addr constant [7 x i8] c"calloc\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"md5\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"ripemd160\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"sha1\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"sha256\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"sha512\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"des\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"aes\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"gcm\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"ccm\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"nist_kw\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"cmac\00", align 1
@.str.12 = private unnamed_addr constant [9 x i8] c"chacha20\00", align 1
@.str.13 = private unnamed_addr constant [9 x i8] c"poly1305\00", align 1
@.str.14 = private unnamed_addr constant [18 x i8] c"chacha20-poly1305\00", align 1
@.str.15 = private unnamed_addr constant [7 x i8] c"base64\00", align 1
@.str.16 = private unnamed_addr constant [4 x i8] c"mpi\00", align 1
@.str.17 = private unnamed_addr constant [4 x i8] c"rsa\00", align 1
@.str.18 = private unnamed_addr constant [9 x i8] c"camellia\00", align 1
@.str.19 = private unnamed_addr constant [5 x i8] c"aria\00", align 1
@.str.20 = private unnamed_addr constant [9 x i8] c"ctr_drbg\00", align 1
@.str.21 = private unnamed_addr constant [10 x i8] c"hmac_drbg\00", align 1
@.str.22 = private unnamed_addr constant [4 x i8] c"ecp\00", align 1
@.str.23 = private unnamed_addr constant [8 x i8] c"ecjpake\00", align 1
@.str.24 = private unnamed_addr constant [4 x i8] c"dhm\00", align 1
@.str.25 = private unnamed_addr constant [8 x i8] c"entropy\00", align 1
@.str.26 = private unnamed_addr constant [6 x i8] c"pkcs5\00", align 1
@selftests = dso_local constant [28 x %struct.selftest_t] [%struct.selftest_t { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i32 (i32)* @calloc_self_test }, %struct.selftest_t { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), i32 (i32)* @mbedtls_md5_self_test }, %struct.selftest_t { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i32 0, i32 0), i32 (i32)* @mbedtls_ripemd160_self_test }, %struct.selftest_t { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0), i32 (i32)* @mbedtls_sha1_self_test }, %struct.selftest_t { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i32 0, i32 0), i32 (i32)* @mbedtls_sha256_self_test }, %struct.selftest_t { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0), i32 (i32)* @mbedtls_sha512_self_test }, %struct.selftest_t { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i32 0, i32 0), i32 (i32)* @mbedtls_des_self_test }, %struct.selftest_t { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i32 0, i32 0), i32 (i32)* @mbedtls_aes_self_test }, %struct.selftest_t { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i32 0, i32 0), i32 (i32)* @mbedtls_gcm_self_test }, %struct.selftest_t { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i32 0, i32 0), i32 (i32)* @mbedtls_ccm_self_test }, %struct.selftest_t { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i32 0, i32 0), i32 (i32)* @mbedtls_nist_kw_self_test }, %struct.selftest_t { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i32 0, i32 0), i32 (i32)* @mbedtls_cmac_self_test }, %struct.selftest_t { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i32 0, i32 0), i32 (i32)* @mbedtls_chacha20_self_test }, %struct.selftest_t { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.13, i32 0, i32 0), i32 (i32)* @mbedtls_poly1305_self_test }, %struct.selftest_t { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.14, i32 0, i32 0), i32 (i32)* @mbedtls_chachapoly_self_test }, %struct.selftest_t { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15, i32 0, i32 0), i32 (i32)* @mbedtls_base64_self_test }, %struct.selftest_t { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.16, i32 0, i32 0), i32 (i32)* @mbedtls_mpi_self_test }, %struct.selftest_t { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17, i32 0, i32 0), i32 (i32)* @mbedtls_rsa_self_test }, %struct.selftest_t { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.18, i32 0, i32 0), i32 (i32)* @mbedtls_camellia_self_test }, %struct.selftest_t { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i32 0, i32 0), i32 (i32)* @mbedtls_aria_self_test }, %struct.selftest_t { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.20, i32 0, i32 0), i32 (i32)* @mbedtls_ctr_drbg_self_test }, %struct.selftest_t { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.21, i32 0, i32 0), i32 (i32)* @mbedtls_hmac_drbg_self_test }, %struct.selftest_t { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.22, i32 0, i32 0), i32 (i32)* @mbedtls_ecp_self_test }, %struct.selftest_t { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.23, i32 0, i32 0), i32 (i32)* @mbedtls_ecjpake_self_test }, %struct.selftest_t { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.24, i32 0, i32 0), i32 (i32)* @mbedtls_dhm_self_test }, %struct.selftest_t { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.25, i32 0, i32 0), i32 (i32)* @mbedtls_entropy_self_test_wrapper }, %struct.selftest_t { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.26, i32 0, i32 0), i32 (i32)* @mbedtls_pkcs5_self_test }, %struct.selftest_t zeroinitializer], align 16
@.str.27 = private unnamed_addr constant [37 x i8] c"all-bits-zero is not a NULL pointer\0A\00", align 1
@.str.28 = private unnamed_addr constant [39 x i8] c"the snprintf implementation is broken\0A\00", align 1
@.str.29 = private unnamed_addr constant [8 x i8] c"--quiet\00", align 1
@.str.30 = private unnamed_addr constant [3 x i8] c"-q\00", align 1
@.str.31 = private unnamed_addr constant [10 x i8] c"--exclude\00", align 1
@.str.32 = private unnamed_addr constant [3 x i8] c"-x\00", align 1
@.str.33 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.34 = private unnamed_addr constant [42 x i8] c"  Test suite %s not available -> failed\0A\0A\00", align 1
@.str.35 = private unnamed_addr constant [12 x i8] c"  Skip: %s\0A\00", align 1
@.str.36 = private unnamed_addr constant [28 x i8] c"  Executed %d test suites\0A\0A\00", align 1
@.str.37 = private unnamed_addr constant [22 x i8] c"  [ %d tests FAIL ]\0A\0A\00", align 1
@.str.38 = private unnamed_addr constant [23 x i8] c"  [ All tests PASS ]\0A\0A\00", align 1
@.str.39 = private unnamed_addr constant [28 x i8] c"  CALLOC(0): passed (NULL)\0A\00", align 1
@.str.40 = private unnamed_addr constant [48 x i8] c"  CALLOC(0): failed (mix of NULL and non-NULL)\0A\00", align 1
@.str.41 = private unnamed_addr constant [37 x i8] c"  CALLOC(0): passed (same non-null)\0A\00", align 1
@.str.42 = private unnamed_addr constant [41 x i8] c"  CALLOC(0): passed (distinct non-null)\0A\00", align 1
@.str.43 = private unnamed_addr constant [28 x i8] c"  CALLOC(1): failed (NULL)\0A\00", align 1
@.str.44 = private unnamed_addr constant [41 x i8] c"  CALLOC(1): failed (same buffer twice)\0A\00", align 1
@.str.45 = private unnamed_addr constant [21 x i8] c"  CALLOC(1): passed\0A\00", align 1
@.str.46 = private unnamed_addr constant [34 x i8] c"  CALLOC(1 again): failed (NULL)\0A\00", align 1
@.str.47 = private unnamed_addr constant [27 x i8] c"  CALLOC(1 again): passed\0A\00", align 1
@.str.48 = private unnamed_addr constant [10 x i8] c"xxxxxxxxx\00", align 1
@.str.49 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.50 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@.str.51 = private unnamed_addr constant [3 x i8] c"12\00", align 1
@.str.52 = private unnamed_addr constant [4 x i8] c"123\00", align 1
@__const.test_snprintf.buf = private unnamed_addr constant [10 x i8] c"xxxxxxxxx\00", align 1
@__const.test_snprintf.ref = private unnamed_addr constant [10 x i8] c"xxxxxxxxx\00", align 1
@.str.53 = private unnamed_addr constant [3 x i8] c"%s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_entropy_self_test_wrapper(i32 noundef %verbose) #0 {
entry:
  %verbose.addr = alloca i32, align 4
  store i32 %verbose, i32* %verbose.addr, align 4
  %0 = load i32, i32* %verbose.addr, align 4
  %call = call i32 @mbedtls_entropy_self_test(i32 noundef %0) #6
  ret i32 %call
}

declare dso_local i32 @mbedtls_entropy_self_test(i32 noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @calloc_self_test(i32 noundef %verbose) #0 {
entry:
  %verbose.addr = alloca i32, align 4
  %failures = alloca i32, align 4
  %empty1 = alloca i8*, align 8
  %empty2 = alloca i8*, align 8
  %buffer1 = alloca i8*, align 8
  %buffer2 = alloca i8*, align 8
  store i32 %verbose, i32* %verbose.addr, align 4
  store i32 0, i32* %failures, align 4
  %call = call noalias i8* @calloc(i64 noundef 0, i64 noundef 1) #7
  store i8* %call, i8** %empty1, align 8
  %call1 = call noalias i8* @calloc(i64 noundef 0, i64 noundef 1) #7
  store i8* %call1, i8** %empty2, align 8
  %call2 = call noalias i8* @calloc(i64 noundef 1, i64 noundef 1) #7
  store i8* %call2, i8** %buffer1, align 8
  %call3 = call noalias i8* @calloc(i64 noundef 1, i64 noundef 1) #7
  store i8* %call3, i8** %buffer2, align 8
  %0 = load i8*, i8** %empty1, align 8
  %cmp = icmp eq i8* %0, null
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %1 = load i8*, i8** %empty2, align 8
  %cmp4 = icmp eq i8* %1, null
  br i1 %cmp4, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %2 = load i32, i32* %verbose.addr, align 4
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %if.then5, label %if.end

if.then5:                                         ; preds = %if.then
  %call6 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.39, i64 0, i64 0)) #6
  br label %if.end

if.end:                                           ; preds = %if.then5, %if.then
  br label %if.end28

if.else:                                          ; preds = %land.lhs.true, %entry
  %3 = load i8*, i8** %empty1, align 8
  %cmp7 = icmp eq i8* %3, null
  br i1 %cmp7, label %if.then9, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else
  %4 = load i8*, i8** %empty2, align 8
  %cmp8 = icmp eq i8* %4, null
  br i1 %cmp8, label %if.then9, label %if.else14

if.then9:                                         ; preds = %lor.lhs.false, %if.else
  %5 = load i32, i32* %verbose.addr, align 4
  %tobool10 = icmp ne i32 %5, 0
  br i1 %tobool10, label %if.then11, label %if.end13

if.then11:                                        ; preds = %if.then9
  %call12 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @.str.40, i64 0, i64 0)) #6
  br label %if.end13

if.end13:                                         ; preds = %if.then11, %if.then9
  %6 = load i32, i32* %failures, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, i32* %failures, align 4
  br label %if.end27

if.else14:                                        ; preds = %lor.lhs.false
  %7 = load i8*, i8** %empty1, align 8
  %8 = load i8*, i8** %empty2, align 8
  %cmp15 = icmp eq i8* %7, %8
  br i1 %cmp15, label %if.then16, label %if.else21

if.then16:                                        ; preds = %if.else14
  %9 = load i32, i32* %verbose.addr, align 4
  %tobool17 = icmp ne i32 %9, 0
  br i1 %tobool17, label %if.then18, label %if.end20

if.then18:                                        ; preds = %if.then16
  %call19 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.41, i64 0, i64 0)) #6
  br label %if.end20

if.end20:                                         ; preds = %if.then18, %if.then16
  br label %if.end26

if.else21:                                        ; preds = %if.else14
  %10 = load i32, i32* %verbose.addr, align 4
  %tobool22 = icmp ne i32 %10, 0
  br i1 %tobool22, label %if.then23, label %if.end25

if.then23:                                        ; preds = %if.else21
  %call24 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str.42, i64 0, i64 0)) #6
  br label %if.end25

if.end25:                                         ; preds = %if.then23, %if.else21
  br label %if.end26

if.end26:                                         ; preds = %if.end25, %if.end20
  br label %if.end27

if.end27:                                         ; preds = %if.end26, %if.end13
  br label %if.end28

if.end28:                                         ; preds = %if.end27, %if.end
  %11 = load i8*, i8** %buffer1, align 8
  %cmp29 = icmp eq i8* %11, null
  br i1 %cmp29, label %if.then32, label %lor.lhs.false30

lor.lhs.false30:                                  ; preds = %if.end28
  %12 = load i8*, i8** %buffer2, align 8
  %cmp31 = icmp eq i8* %12, null
  br i1 %cmp31, label %if.then32, label %if.else38

if.then32:                                        ; preds = %lor.lhs.false30, %if.end28
  %13 = load i32, i32* %verbose.addr, align 4
  %tobool33 = icmp ne i32 %13, 0
  br i1 %tobool33, label %if.then34, label %if.end36

if.then34:                                        ; preds = %if.then32
  %call35 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.43, i64 0, i64 0)) #6
  br label %if.end36

if.end36:                                         ; preds = %if.then34, %if.then32
  %14 = load i32, i32* %failures, align 4
  %inc37 = add nsw i32 %14, 1
  store i32 %inc37, i32* %failures, align 4
  br label %if.end52

if.else38:                                        ; preds = %lor.lhs.false30
  %15 = load i8*, i8** %buffer1, align 8
  %16 = load i8*, i8** %buffer2, align 8
  %cmp39 = icmp eq i8* %15, %16
  br i1 %cmp39, label %if.then40, label %if.else46

if.then40:                                        ; preds = %if.else38
  %17 = load i32, i32* %verbose.addr, align 4
  %tobool41 = icmp ne i32 %17, 0
  br i1 %tobool41, label %if.then42, label %if.end44

if.then42:                                        ; preds = %if.then40
  %call43 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str.44, i64 0, i64 0)) #6
  br label %if.end44

if.end44:                                         ; preds = %if.then42, %if.then40
  %18 = load i32, i32* %failures, align 4
  %inc45 = add nsw i32 %18, 1
  store i32 %inc45, i32* %failures, align 4
  br label %if.end51

if.else46:                                        ; preds = %if.else38
  %19 = load i32, i32* %verbose.addr, align 4
  %tobool47 = icmp ne i32 %19, 0
  br i1 %tobool47, label %if.then48, label %if.end50

if.then48:                                        ; preds = %if.else46
  %call49 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.45, i64 0, i64 0)) #6
  br label %if.end50

if.end50:                                         ; preds = %if.then48, %if.else46
  br label %if.end51

if.end51:                                         ; preds = %if.end50, %if.end44
  br label %if.end52

if.end52:                                         ; preds = %if.end51, %if.end36
  %20 = load i8*, i8** %buffer1, align 8
  call void @free(i8* noundef %20) #7
  %call53 = call noalias i8* @calloc(i64 noundef 1, i64 noundef 1) #7
  store i8* %call53, i8** %buffer1, align 8
  %21 = load i8*, i8** %buffer1, align 8
  %cmp54 = icmp eq i8* %21, null
  br i1 %cmp54, label %if.then55, label %if.else61

if.then55:                                        ; preds = %if.end52
  %22 = load i32, i32* %verbose.addr, align 4
  %tobool56 = icmp ne i32 %22, 0
  br i1 %tobool56, label %if.then57, label %if.end59

if.then57:                                        ; preds = %if.then55
  %call58 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.46, i64 0, i64 0)) #6
  br label %if.end59

if.end59:                                         ; preds = %if.then57, %if.then55
  %23 = load i32, i32* %failures, align 4
  %inc60 = add nsw i32 %23, 1
  store i32 %inc60, i32* %failures, align 4
  br label %if.end66

if.else61:                                        ; preds = %if.end52
  %24 = load i32, i32* %verbose.addr, align 4
  %tobool62 = icmp ne i32 %24, 0
  br i1 %tobool62, label %if.then63, label %if.end65

if.then63:                                        ; preds = %if.else61
  %call64 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.47, i64 0, i64 0)) #6
  br label %if.end65

if.end65:                                         ; preds = %if.then63, %if.else61
  br label %if.end66

if.end66:                                         ; preds = %if.end65, %if.end59
  %25 = load i32, i32* %verbose.addr, align 4
  %tobool67 = icmp ne i32 %25, 0
  br i1 %tobool67, label %if.then68, label %if.end70

if.then68:                                        ; preds = %if.end66
  %call69 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.33, i64 0, i64 0)) #6
  br label %if.end70

if.end70:                                         ; preds = %if.then68, %if.end66
  %26 = load i8*, i8** %empty1, align 8
  call void @free(i8* noundef %26) #7
  %27 = load i8*, i8** %empty2, align 8
  call void @free(i8* noundef %27) #7
  %28 = load i8*, i8** %buffer1, align 8
  call void @free(i8* noundef %28) #7
  %29 = load i8*, i8** %buffer2, align 8
  call void @free(i8* noundef %29) #7
  %30 = load i32, i32* %failures, align 4
  ret i32 %30
}

declare dso_local i32 @mbedtls_md5_self_test(i32 noundef) #1

declare dso_local i32 @mbedtls_ripemd160_self_test(i32 noundef) #1

declare dso_local i32 @mbedtls_sha1_self_test(i32 noundef) #1

declare dso_local i32 @mbedtls_sha256_self_test(i32 noundef) #1

declare dso_local i32 @mbedtls_sha512_self_test(i32 noundef) #1

declare dso_local i32 @mbedtls_des_self_test(i32 noundef) #1

declare dso_local i32 @mbedtls_aes_self_test(i32 noundef) #1

declare dso_local i32 @mbedtls_gcm_self_test(i32 noundef) #1

declare dso_local i32 @mbedtls_ccm_self_test(i32 noundef) #1

declare dso_local i32 @mbedtls_nist_kw_self_test(i32 noundef) #1

declare dso_local i32 @mbedtls_cmac_self_test(i32 noundef) #1

declare dso_local i32 @mbedtls_chacha20_self_test(i32 noundef) #1

declare dso_local i32 @mbedtls_poly1305_self_test(i32 noundef) #1

declare dso_local i32 @mbedtls_chachapoly_self_test(i32 noundef) #1

declare dso_local i32 @mbedtls_base64_self_test(i32 noundef) #1

declare dso_local i32 @mbedtls_mpi_self_test(i32 noundef) #1

declare dso_local i32 @mbedtls_rsa_self_test(i32 noundef) #1

declare dso_local i32 @mbedtls_camellia_self_test(i32 noundef) #1

declare dso_local i32 @mbedtls_aria_self_test(i32 noundef) #1

declare dso_local i32 @mbedtls_ctr_drbg_self_test(i32 noundef) #1

declare dso_local i32 @mbedtls_hmac_drbg_self_test(i32 noundef) #1

declare dso_local i32 @mbedtls_ecp_self_test(i32 noundef) #1

declare dso_local i32 @mbedtls_ecjpake_self_test(i32 noundef) #1

declare dso_local i32 @mbedtls_dhm_self_test(i32 noundef) #1

declare dso_local i32 @mbedtls_pkcs5_self_test(i32 noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 noundef %argc, i8** noundef %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %test = alloca %struct.selftest_t*, align 8
  %argp = alloca i8**, align 8
  %v = alloca i32, align 4
  %exclude_mode = alloca i32, align 4
  %suites_tested = alloca i32, align 4
  %suites_failed = alloca i32, align 4
  %pointer = alloca i8*, align 8
  %excluded = alloca i8**, align 8
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  store i32 1, i32* %v, align 4
  store i32 0, i32* %exclude_mode, align 4
  store i32 0, i32* %suites_tested, align 4
  store i32 0, i32* %suites_failed, align 4
  %0 = bitcast i8** %pointer to i8*
  %call = call i8* @memset(i8* noundef %0, i32 noundef 0, i64 noundef 8) #7
  %1 = load i8*, i8** %pointer, align 8
  %cmp = icmp ne i8* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call1 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.27, i64 0, i64 0)) #6
  call void @exit(i32 noundef 1) #8
  unreachable

if.end:                                           ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %if.end
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %do.body2

do.body2:                                         ; preds = %do.end
  br label %do.end3

do.end3:                                          ; preds = %do.body2
  br label %do.body4

do.body4:                                         ; preds = %do.end3
  br label %do.end5

do.end5:                                          ; preds = %do.body4
  br label %do.body6

do.body6:                                         ; preds = %do.end5
  br label %do.end7

do.end7:                                          ; preds = %do.body6
  br label %do.body8

do.body8:                                         ; preds = %do.end7
  br label %do.end9

do.end9:                                          ; preds = %do.body8
  br label %do.body10

do.body10:                                        ; preds = %do.end9
  br label %do.end11

do.end11:                                         ; preds = %do.body10
  br label %do.body12

do.body12:                                        ; preds = %do.end11
  br label %do.end13

do.end13:                                         ; preds = %do.body12
  br label %do.body14

do.body14:                                        ; preds = %do.end13
  br label %do.end15

do.end15:                                         ; preds = %do.body14
  br label %do.body16

do.body16:                                        ; preds = %do.end15
  br label %do.end17

do.end17:                                         ; preds = %do.body16
  br label %do.body18

do.body18:                                        ; preds = %do.end17
  br label %do.end19

do.end19:                                         ; preds = %do.body18
  %call20 = call i32 @run_test_snprintf() #6
  %cmp21 = icmp ne i32 %call20, 0
  br i1 %cmp21, label %if.then22, label %if.end24

if.then22:                                        ; preds = %do.end19
  %call23 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.28, i64 0, i64 0)) #6
  call void @exit(i32 noundef 1) #8
  unreachable

if.end24:                                         ; preds = %do.end19
  %2 = load i8**, i8*** %argv.addr, align 8
  %3 = load i32, i32* %argc.addr, align 4
  %cmp25 = icmp sge i32 %3, 1
  br i1 %cmp25, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end24
  br label %cond.end

cond.false:                                       ; preds = %if.end24
  %4 = load i32, i32* %argc.addr, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 1, %cond.true ], [ %4, %cond.false ]
  %idx.ext = sext i32 %cond to i64
  %add.ptr = getelementptr inbounds i8*, i8** %2, i64 %idx.ext
  store i8** %add.ptr, i8*** %argp, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %cond.end
  %5 = load i8**, i8*** %argp, align 8
  %6 = load i8*, i8** %5, align 8
  %cmp26 = icmp ne i8* %6, null
  br i1 %cmp26, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load i8**, i8*** %argp, align 8
  %8 = load i8*, i8** %7, align 8
  %call27 = call i32 @strcmp(i8* noundef %8, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.29, i64 0, i64 0)) #9
  %cmp28 = icmp eq i32 %call27, 0
  br i1 %cmp28, label %if.then31, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %9 = load i8**, i8*** %argp, align 8
  %10 = load i8*, i8** %9, align 8
  %call29 = call i32 @strcmp(i8* noundef %10, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.30, i64 0, i64 0)) #9
  %cmp30 = icmp eq i32 %call29, 0
  br i1 %cmp30, label %if.then31, label %if.else

if.then31:                                        ; preds = %lor.lhs.false, %for.body
  store i32 0, i32* %v, align 4
  br label %if.end40

if.else:                                          ; preds = %lor.lhs.false
  %11 = load i8**, i8*** %argp, align 8
  %12 = load i8*, i8** %11, align 8
  %call32 = call i32 @strcmp(i8* noundef %12, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.31, i64 0, i64 0)) #9
  %cmp33 = icmp eq i32 %call32, 0
  br i1 %cmp33, label %if.then37, label %lor.lhs.false34

lor.lhs.false34:                                  ; preds = %if.else
  %13 = load i8**, i8*** %argp, align 8
  %14 = load i8*, i8** %13, align 8
  %call35 = call i32 @strcmp(i8* noundef %14, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.32, i64 0, i64 0)) #9
  %cmp36 = icmp eq i32 %call35, 0
  br i1 %cmp36, label %if.then37, label %if.else38

if.then37:                                        ; preds = %lor.lhs.false34, %if.else
  store i32 1, i32* %exclude_mode, align 4
  br label %if.end39

if.else38:                                        ; preds = %lor.lhs.false34
  br label %for.end

if.end39:                                         ; preds = %if.then37
  br label %if.end40

if.end40:                                         ; preds = %if.end39, %if.then31
  br label %for.inc

for.inc:                                          ; preds = %if.end40
  %15 = load i8**, i8*** %argp, align 8
  %incdec.ptr = getelementptr inbounds i8*, i8** %15, i32 1
  store i8** %incdec.ptr, i8*** %argp, align 8
  br label %for.cond, !llvm.loop !4

for.end:                                          ; preds = %if.else38, %for.cond
  %16 = load i32, i32* %v, align 4
  %cmp41 = icmp ne i32 %16, 0
  br i1 %cmp41, label %if.then42, label %if.end44

if.then42:                                        ; preds = %for.end
  %call43 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.33, i64 0, i64 0)) #6
  br label %if.end44

if.end44:                                         ; preds = %if.then42, %for.end
  %17 = load i8**, i8*** %argp, align 8
  %18 = load i8*, i8** %17, align 8
  %cmp45 = icmp ne i8* %18, null
  br i1 %cmp45, label %land.lhs.true, label %if.else75

land.lhs.true:                                    ; preds = %if.end44
  %19 = load i32, i32* %exclude_mode, align 4
  %cmp46 = icmp eq i32 %19, 0
  br i1 %cmp46, label %if.then47, label %if.else75

if.then47:                                        ; preds = %land.lhs.true
  br label %for.cond48

for.cond48:                                       ; preds = %for.inc72, %if.then47
  %20 = load i8**, i8*** %argp, align 8
  %21 = load i8*, i8** %20, align 8
  %cmp49 = icmp ne i8* %21, null
  br i1 %cmp49, label %for.body50, label %for.end74

for.body50:                                       ; preds = %for.cond48
  store %struct.selftest_t* getelementptr inbounds ([28 x %struct.selftest_t], [28 x %struct.selftest_t]* @selftests, i64 0, i64 0), %struct.selftest_t** %test, align 8
  br label %for.cond51

for.cond51:                                       ; preds = %for.inc63, %for.body50
  %22 = load %struct.selftest_t*, %struct.selftest_t** %test, align 8
  %name = getelementptr inbounds %struct.selftest_t, %struct.selftest_t* %22, i32 0, i32 0
  %23 = load i8*, i8** %name, align 8
  %cmp52 = icmp ne i8* %23, null
  br i1 %cmp52, label %for.body53, label %for.end65

for.body53:                                       ; preds = %for.cond51
  %24 = load i8**, i8*** %argp, align 8
  %25 = load i8*, i8** %24, align 8
  %26 = load %struct.selftest_t*, %struct.selftest_t** %test, align 8
  %name54 = getelementptr inbounds %struct.selftest_t, %struct.selftest_t* %26, i32 0, i32 0
  %27 = load i8*, i8** %name54, align 8
  %call55 = call i32 @strcmp(i8* noundef %25, i8* noundef %27) #9
  %tobool = icmp ne i32 %call55, 0
  br i1 %tobool, label %if.end62, label %if.then56

if.then56:                                        ; preds = %for.body53
  %28 = load %struct.selftest_t*, %struct.selftest_t** %test, align 8
  %function = getelementptr inbounds %struct.selftest_t, %struct.selftest_t* %28, i32 0, i32 1
  %29 = load i32 (i32)*, i32 (i32)** %function, align 8
  %30 = load i32, i32* %v, align 4
  %call57 = call i32 %29(i32 noundef %30) #6
  %cmp58 = icmp ne i32 %call57, 0
  br i1 %cmp58, label %if.then59, label %if.end60

if.then59:                                        ; preds = %if.then56
  %31 = load i32, i32* %suites_failed, align 4
  %inc = add nsw i32 %31, 1
  store i32 %inc, i32* %suites_failed, align 4
  br label %if.end60

if.end60:                                         ; preds = %if.then59, %if.then56
  %32 = load i32, i32* %suites_tested, align 4
  %inc61 = add nsw i32 %32, 1
  store i32 %inc61, i32* %suites_tested, align 4
  br label %for.end65

if.end62:                                         ; preds = %for.body53
  br label %for.inc63

for.inc63:                                        ; preds = %if.end62
  %33 = load %struct.selftest_t*, %struct.selftest_t** %test, align 8
  %incdec.ptr64 = getelementptr inbounds %struct.selftest_t, %struct.selftest_t* %33, i32 1
  store %struct.selftest_t* %incdec.ptr64, %struct.selftest_t** %test, align 8
  br label %for.cond51, !llvm.loop !6

for.end65:                                        ; preds = %if.end60, %for.cond51
  %34 = load %struct.selftest_t*, %struct.selftest_t** %test, align 8
  %name66 = getelementptr inbounds %struct.selftest_t, %struct.selftest_t* %34, i32 0, i32 0
  %35 = load i8*, i8** %name66, align 8
  %cmp67 = icmp eq i8* %35, null
  br i1 %cmp67, label %if.then68, label %if.end71

if.then68:                                        ; preds = %for.end65
  %36 = load i8**, i8*** %argp, align 8
  %37 = load i8*, i8** %36, align 8
  %call69 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @.str.34, i64 0, i64 0), i8* noundef %37) #6
  %38 = load i32, i32* %suites_failed, align 4
  %inc70 = add nsw i32 %38, 1
  store i32 %inc70, i32* %suites_failed, align 4
  br label %if.end71

if.end71:                                         ; preds = %if.then68, %for.end65
  br label %for.inc72

for.inc72:                                        ; preds = %if.end71
  %39 = load i8**, i8*** %argp, align 8
  %incdec.ptr73 = getelementptr inbounds i8*, i8** %39, i32 1
  store i8** %incdec.ptr73, i8*** %argp, align 8
  br label %for.cond48, !llvm.loop !7

for.end74:                                        ; preds = %for.cond48
  br label %if.end112

if.else75:                                        ; preds = %land.lhs.true, %if.end44
  store %struct.selftest_t* getelementptr inbounds ([28 x %struct.selftest_t], [28 x %struct.selftest_t]* @selftests, i64 0, i64 0), %struct.selftest_t** %test, align 8
  br label %for.cond76

for.cond76:                                       ; preds = %for.inc109, %if.else75
  %40 = load %struct.selftest_t*, %struct.selftest_t** %test, align 8
  %name77 = getelementptr inbounds %struct.selftest_t, %struct.selftest_t* %40, i32 0, i32 0
  %41 = load i8*, i8** %name77, align 8
  %cmp78 = icmp ne i8* %41, null
  br i1 %cmp78, label %for.body79, label %for.end111

for.body79:                                       ; preds = %for.cond76
  %42 = load i32, i32* %exclude_mode, align 4
  %tobool80 = icmp ne i32 %42, 0
  br i1 %tobool80, label %if.then81, label %if.end101

if.then81:                                        ; preds = %for.body79
  %43 = load i8**, i8*** %argp, align 8
  store i8** %43, i8*** %excluded, align 8
  br label %for.cond82

for.cond82:                                       ; preds = %for.inc90, %if.then81
  %44 = load i8**, i8*** %excluded, align 8
  %45 = load i8*, i8** %44, align 8
  %cmp83 = icmp ne i8* %45, null
  br i1 %cmp83, label %for.body84, label %for.end92

for.body84:                                       ; preds = %for.cond82
  %46 = load i8**, i8*** %excluded, align 8
  %47 = load i8*, i8** %46, align 8
  %48 = load %struct.selftest_t*, %struct.selftest_t** %test, align 8
  %name85 = getelementptr inbounds %struct.selftest_t, %struct.selftest_t* %48, i32 0, i32 0
  %49 = load i8*, i8** %name85, align 8
  %call86 = call i32 @strcmp(i8* noundef %47, i8* noundef %49) #9
  %tobool87 = icmp ne i32 %call86, 0
  br i1 %tobool87, label %if.end89, label %if.then88

if.then88:                                        ; preds = %for.body84
  br label %for.end92

if.end89:                                         ; preds = %for.body84
  br label %for.inc90

for.inc90:                                        ; preds = %if.end89
  %50 = load i8**, i8*** %excluded, align 8
  %incdec.ptr91 = getelementptr inbounds i8*, i8** %50, i32 1
  store i8** %incdec.ptr91, i8*** %excluded, align 8
  br label %for.cond82, !llvm.loop !8

for.end92:                                        ; preds = %if.then88, %for.cond82
  %51 = load i8**, i8*** %excluded, align 8
  %52 = load i8*, i8** %51, align 8
  %tobool93 = icmp ne i8* %52, null
  br i1 %tobool93, label %if.then94, label %if.end100

if.then94:                                        ; preds = %for.end92
  %53 = load i32, i32* %v, align 4
  %tobool95 = icmp ne i32 %53, 0
  br i1 %tobool95, label %if.then96, label %if.end99

if.then96:                                        ; preds = %if.then94
  %54 = load %struct.selftest_t*, %struct.selftest_t** %test, align 8
  %name97 = getelementptr inbounds %struct.selftest_t, %struct.selftest_t* %54, i32 0, i32 0
  %55 = load i8*, i8** %name97, align 8
  %call98 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.35, i64 0, i64 0), i8* noundef %55) #6
  br label %if.end99

if.end99:                                         ; preds = %if.then96, %if.then94
  br label %for.inc109

if.end100:                                        ; preds = %for.end92
  br label %if.end101

if.end101:                                        ; preds = %if.end100, %for.body79
  %56 = load %struct.selftest_t*, %struct.selftest_t** %test, align 8
  %function102 = getelementptr inbounds %struct.selftest_t, %struct.selftest_t* %56, i32 0, i32 1
  %57 = load i32 (i32)*, i32 (i32)** %function102, align 8
  %58 = load i32, i32* %v, align 4
  %call103 = call i32 %57(i32 noundef %58) #6
  %cmp104 = icmp ne i32 %call103, 0
  br i1 %cmp104, label %if.then105, label %if.end107

if.then105:                                       ; preds = %if.end101
  %59 = load i32, i32* %suites_failed, align 4
  %inc106 = add nsw i32 %59, 1
  store i32 %inc106, i32* %suites_failed, align 4
  br label %if.end107

if.end107:                                        ; preds = %if.then105, %if.end101
  %60 = load i32, i32* %suites_tested, align 4
  %inc108 = add nsw i32 %60, 1
  store i32 %inc108, i32* %suites_tested, align 4
  br label %for.inc109

for.inc109:                                       ; preds = %if.end107, %if.end99
  %61 = load %struct.selftest_t*, %struct.selftest_t** %test, align 8
  %incdec.ptr110 = getelementptr inbounds %struct.selftest_t, %struct.selftest_t* %61, i32 1
  store %struct.selftest_t* %incdec.ptr110, %struct.selftest_t** %test, align 8
  br label %for.cond76, !llvm.loop !9

for.end111:                                       ; preds = %for.cond76
  br label %if.end112

if.end112:                                        ; preds = %for.end111, %for.end74
  %62 = load i32, i32* %v, align 4
  %cmp113 = icmp ne i32 %62, 0
  br i1 %cmp113, label %if.then114, label %if.end122

if.then114:                                       ; preds = %if.end112
  %63 = load i32, i32* %suites_tested, align 4
  %call115 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.36, i64 0, i64 0), i32 noundef %63) #6
  %64 = load i32, i32* %suites_failed, align 4
  %cmp116 = icmp sgt i32 %64, 0
  br i1 %cmp116, label %if.then117, label %if.else119

if.then117:                                       ; preds = %if.then114
  %65 = load i32, i32* %suites_failed, align 4
  %call118 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.37, i64 0, i64 0), i32 noundef %65) #6
  br label %if.end121

if.else119:                                       ; preds = %if.then114
  %call120 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.38, i64 0, i64 0)) #6
  br label %if.end121

if.end121:                                        ; preds = %if.else119, %if.then117
  br label %if.end122

if.end122:                                        ; preds = %if.end121, %if.end112
  %66 = load i32, i32* %suites_failed, align 4
  %cmp123 = icmp sgt i32 %66, 0
  br i1 %cmp123, label %if.then124, label %if.end125

if.then124:                                       ; preds = %if.end122
  call void @exit(i32 noundef 1) #8
  unreachable

if.end125:                                        ; preds = %if.end122
  call void @exit(i32 noundef 0) #8
  unreachable
}

; Function Attrs: nounwind
declare dso_local i8* @memset(i8* noundef, i32 noundef, i64 noundef) #2

declare dso_local i32 @printf(i8* noundef, ...) #1

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32 noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @run_test_snprintf() #0 {
entry:
  %call = call i32 @test_snprintf(i64 noundef 0, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.48, i64 0, i64 0), i32 noundef -1) #6
  %cmp = icmp ne i32 %call, 0
  br i1 %cmp, label %lor.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %call1 = call i32 @test_snprintf(i64 noundef 1, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.49, i64 0, i64 0), i32 noundef -1) #6
  %cmp2 = icmp ne i32 %call1, 0
  br i1 %cmp2, label %lor.end, label %lor.lhs.false3

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %call4 = call i32 @test_snprintf(i64 noundef 2, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.50, i64 0, i64 0), i32 noundef -1) #6
  %cmp5 = icmp ne i32 %call4, 0
  br i1 %cmp5, label %lor.end, label %lor.lhs.false6

lor.lhs.false6:                                   ; preds = %lor.lhs.false3
  %call7 = call i32 @test_snprintf(i64 noundef 3, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.51, i64 0, i64 0), i32 noundef -1) #6
  %cmp8 = icmp ne i32 %call7, 0
  br i1 %cmp8, label %lor.end, label %lor.lhs.false9

lor.lhs.false9:                                   ; preds = %lor.lhs.false6
  %call10 = call i32 @test_snprintf(i64 noundef 4, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.52, i64 0, i64 0), i32 noundef 3) #6
  %cmp11 = icmp ne i32 %call10, 0
  br i1 %cmp11, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %lor.lhs.false9
  %call12 = call i32 @test_snprintf(i64 noundef 5, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.52, i64 0, i64 0), i32 noundef 3) #6
  %cmp13 = icmp ne i32 %call12, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %lor.lhs.false9, %lor.lhs.false6, %lor.lhs.false3, %lor.lhs.false, %entry
  %0 = phi i1 [ true, %lor.lhs.false9 ], [ true, %lor.lhs.false6 ], [ true, %lor.lhs.false3 ], [ true, %lor.lhs.false ], [ true, %entry ], [ %cmp13, %lor.rhs ]
  %lor.ext = zext i1 %0 to i32
  ret i32 %lor.ext
}

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @strcmp(i8* noundef, i8* noundef) #4

; Function Attrs: nounwind
declare dso_local noalias i8* @calloc(i64 noundef, i64 noundef) #2

; Function Attrs: nounwind
declare dso_local void @free(i8* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_snprintf(i64 noundef %n, i8* noundef %ref_buf, i32 noundef %ref_ret) #0 {
entry:
  %retval = alloca i32, align 4
  %n.addr = alloca i64, align 8
  %ref_buf.addr = alloca i8*, align 8
  %ref_ret.addr = alloca i32, align 4
  %ret = alloca i32, align 4
  %buf = alloca [10 x i8], align 1
  %ref = alloca [10 x i8], align 1
  store i64 %n, i64* %n.addr, align 8
  store i8* %ref_buf, i8** %ref_buf.addr, align 8
  store i32 %ref_ret, i32* %ref_ret.addr, align 4
  %0 = bitcast [10 x i8]* %buf to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %0, i8* align 1 getelementptr inbounds ([10 x i8], [10 x i8]* @__const.test_snprintf.buf, i32 0, i32 0), i64 10, i1 false)
  %1 = bitcast [10 x i8]* %ref to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %1, i8* align 1 getelementptr inbounds ([10 x i8], [10 x i8]* @__const.test_snprintf.ref, i32 0, i32 0), i64 10, i1 false)
  %arraydecay = getelementptr inbounds [10 x i8], [10 x i8]* %buf, i64 0, i64 0
  %2 = load i64, i64* %n.addr, align 8
  %call = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef %arraydecay, i64 noundef %2, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.53, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.52, i64 0, i64 0)) #7
  store i32 %call, i32* %ret, align 4
  %3 = load i32, i32* %ret, align 4
  %cmp = icmp slt i32 %3, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %4 = load i32, i32* %ret, align 4
  %conv = sext i32 %4 to i64
  %5 = load i64, i64* %n.addr, align 8
  %cmp1 = icmp uge i64 %conv, %5
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 -1, i32* %ret, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false
  %6 = load i8*, i8** %ref_buf.addr, align 8
  %arraydecay3 = getelementptr inbounds [10 x i8], [10 x i8]* %buf, i64 0, i64 0
  %call4 = call i32 @strncmp(i8* noundef %6, i8* noundef %arraydecay3, i64 noundef 10) #9
  %cmp5 = icmp ne i32 %call4, 0
  br i1 %cmp5, label %if.then17, label %lor.lhs.false7

lor.lhs.false7:                                   ; preds = %if.end
  %7 = load i32, i32* %ref_ret.addr, align 4
  %8 = load i32, i32* %ret, align 4
  %cmp8 = icmp ne i32 %7, %8
  br i1 %cmp8, label %if.then17, label %lor.lhs.false10

lor.lhs.false10:                                  ; preds = %lor.lhs.false7
  %arraydecay11 = getelementptr inbounds [10 x i8], [10 x i8]* %buf, i64 0, i64 0
  %9 = load i64, i64* %n.addr, align 8
  %add.ptr = getelementptr inbounds i8, i8* %arraydecay11, i64 %9
  %arraydecay12 = getelementptr inbounds [10 x i8], [10 x i8]* %ref, i64 0, i64 0
  %10 = load i64, i64* %n.addr, align 8
  %add.ptr13 = getelementptr inbounds i8, i8* %arraydecay12, i64 %10
  %11 = load i64, i64* %n.addr, align 8
  %sub = sub i64 10, %11
  %call14 = call i32 @memcmp(i8* noundef %add.ptr, i8* noundef %add.ptr13, i64 noundef %sub) #9
  %cmp15 = icmp ne i32 %call14, 0
  br i1 %cmp15, label %if.then17, label %if.end18

if.then17:                                        ; preds = %lor.lhs.false10, %lor.lhs.false7, %if.end
  store i32 1, i32* %retval, align 4
  br label %return

if.end18:                                         ; preds = %lor.lhs.false10
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end18, %if.then17
  %12 = load i32, i32* %retval, align 4
  ret i32 %12
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: nounwind
declare dso_local i32 @snprintf(i8* noundef, i64 noundef, i8* noundef, ...) #2

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @strncmp(i8* noundef, i8* noundef, i64 noundef) #4

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @memcmp(i8* noundef, i8* noundef, i64 noundef) #4

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind readonly willreturn "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { argmemonly nofree nounwind willreturn }
attributes #6 = { nobuiltin "no-builtins" }
attributes #7 = { nobuiltin nounwind "no-builtins" }
attributes #8 = { nobuiltin noreturn nounwind "no-builtins" }
attributes #9 = { nobuiltin nounwind readonly willreturn "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.0"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
!7 = distinct !{!7, !5}
!8 = distinct !{!8, !5}
!9 = distinct !{!9, !5}
