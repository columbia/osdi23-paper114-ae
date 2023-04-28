; ModuleID = 'bignum.c'
source_filename = "bignum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mbedtls_mpi = type { i32, i64, i64* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@.str = private unnamed_addr constant [17 x i8] c"0123456789ABCDEF\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@.str.3 = private unnamed_addr constant [129 x i8] c"EFE021C2645FD1DC586E69184AF4A31ED5F53E93B5F123FA41680867BA110131944FE7952E2517337780CB0DB80E61AAE7C8DDC6C5C6AADEB34EB38A2F40D5E6\00", align 1
@.str.4 = private unnamed_addr constant [129 x i8] c"B2E7EFD37075B9F03FF989C7C5051C2034D2A323810251127E7BF8625A4F49A5F3E27F4DA8BD59C47D6DAABA4C8127BD5B5C25763222FEFCCFC38B832366C29E\00", align 1
@.str.5 = private unnamed_addr constant [97 x i8] c"0066A198186C18C10B2F5ED9B522752A9830B69916E535C8F047518A889A43A594B6BED27A168D31D4A52F88925AA8F5\00", align 1
@.str.6 = private unnamed_addr constant [223 x i8] c"602AB7ECA597A3D6B56FF9829A5E8B859E857EA95A03512E2BAE7391688D264AA5663B0341DB9CCFD2C4C5F421FEC8148001B72E848A38CAE1C65F78E56ABDEFE12D3C039B8A02D6BE593F0BBBDA56F1ECF677152EF804370C1A305CAF3B5BF130879B56C61DE584A0F53A2447A51E\00", align 1
@.str.7 = private unnamed_addr constant [26 x i8] c"  MPI test #1 (mul_mpi): \00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"failed\0A\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"passed\0A\00", align 1
@.str.10 = private unnamed_addr constant [36 x i8] c"256567336059E52CAE22925474705F39A94\00", align 1
@.str.11 = private unnamed_addr constant [95 x i8] c"6613F26162223DF488E9CD48CC132C7A0AC93C701B001B092E4E5B9F73BCD27B9EE50D0657C77F374E903CDFA4C642\00", align 1
@.str.12 = private unnamed_addr constant [26 x i8] c"  MPI test #2 (div_mpi): \00", align 1
@.str.13 = private unnamed_addr constant [95 x i8] c"36E139AEA55215609D2816998ED020BBBD96C37890F65171D948E9BC7CBAA4D9325D24D6A3C12710F10A09FA08AB87\00", align 1
@.str.14 = private unnamed_addr constant [26 x i8] c"  MPI test #3 (exp_mod): \00", align 1
@.str.15 = private unnamed_addr constant [97 x i8] c"003A0AAEDD7E784FC07D8F9EC6E3BFD5C3DBA76456363A10869622EAC2DD84ECC5B8A74DAC4D09E03B5E0BE779F2DF61\00", align 1
@.str.16 = private unnamed_addr constant [26 x i8] c"  MPI test #4 (inv_mod): \00", align 1
@.str.17 = private unnamed_addr constant [29 x i8] c"  MPI test #5 (simple gcd): \00", align 1
@gcd_pairs = internal constant [3 x [3 x i32]] [[3 x i32] [i32 693, i32 609, i32 21], [3 x i32] [i32 1764, i32 868, i32 28], [3 x i32] [i32 768454923, i32 542167814, i32 1]], align 16
@.str.18 = private unnamed_addr constant [14 x i8] c"failed at %d\0A\00", align 1
@.str.19 = private unnamed_addr constant [38 x i8] c"Unexpected error, return code = %08X\0A\00", align 1
@.str.20 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@small_prime = internal constant [168 x i32] [i32 3, i32 5, i32 7, i32 11, i32 13, i32 17, i32 19, i32 23, i32 29, i32 31, i32 37, i32 41, i32 43, i32 47, i32 53, i32 59, i32 61, i32 67, i32 71, i32 73, i32 79, i32 83, i32 89, i32 97, i32 101, i32 103, i32 107, i32 109, i32 113, i32 127, i32 131, i32 137, i32 139, i32 149, i32 151, i32 157, i32 163, i32 167, i32 173, i32 179, i32 181, i32 191, i32 193, i32 197, i32 199, i32 211, i32 223, i32 227, i32 229, i32 233, i32 239, i32 241, i32 251, i32 257, i32 263, i32 269, i32 271, i32 277, i32 281, i32 283, i32 293, i32 307, i32 311, i32 313, i32 317, i32 331, i32 337, i32 347, i32 349, i32 353, i32 359, i32 367, i32 373, i32 379, i32 383, i32 389, i32 397, i32 401, i32 409, i32 419, i32 421, i32 431, i32 433, i32 439, i32 443, i32 449, i32 457, i32 461, i32 463, i32 467, i32 479, i32 487, i32 491, i32 499, i32 503, i32 509, i32 521, i32 523, i32 541, i32 547, i32 557, i32 563, i32 569, i32 571, i32 577, i32 587, i32 593, i32 599, i32 601, i32 607, i32 613, i32 617, i32 619, i32 631, i32 641, i32 643, i32 647, i32 653, i32 659, i32 661, i32 673, i32 677, i32 683, i32 691, i32 701, i32 709, i32 719, i32 727, i32 733, i32 739, i32 743, i32 751, i32 757, i32 761, i32 769, i32 773, i32 787, i32 797, i32 809, i32 811, i32 821, i32 823, i32 827, i32 829, i32 839, i32 853, i32 857, i32 859, i32 863, i32 877, i32 881, i32 883, i32 887, i32 907, i32 911, i32 919, i32 929, i32 937, i32 941, i32 947, i32 953, i32 967, i32 971, i32 977, i32 983, i32 991, i32 997, i32 -103], align 16

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mbedtls_mpi_init(%struct.mbedtls_mpi* noundef %X) #0 {
entry:
  %X.addr = alloca %struct.mbedtls_mpi*, align 8
  store %struct.mbedtls_mpi* %X, %struct.mbedtls_mpi** %X.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  %0 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %X.addr, align 8
  %s = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %0, i32 0, i32 0
  store i32 1, i32* %s, align 8
  %1 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %X.addr, align 8
  %n = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %1, i32 0, i32 1
  store i64 0, i64* %n, align 8
  %2 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %X.addr, align 8
  %p = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %2, i32 0, i32 2
  store i64* null, i64** %p, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mbedtls_mpi_free(%struct.mbedtls_mpi* noundef %X) #0 {
entry:
  %X.addr = alloca %struct.mbedtls_mpi*, align 8
  store %struct.mbedtls_mpi* %X, %struct.mbedtls_mpi** %X.addr, align 8
  %0 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %X.addr, align 8
  %cmp = icmp eq %struct.mbedtls_mpi* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %X.addr, align 8
  %p = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %1, i32 0, i32 2
  %2 = load i64*, i64** %p, align 8
  %cmp1 = icmp ne i64* %2, null
  br i1 %cmp1, label %if.then2, label %if.end5

if.then2:                                         ; preds = %if.end
  %3 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %X.addr, align 8
  %p3 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %3, i32 0, i32 2
  %4 = load i64*, i64** %p3, align 8
  %5 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %X.addr, align 8
  %n = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %5, i32 0, i32 1
  %6 = load i64, i64* %n, align 8
  call void @mbedtls_mpi_zeroize(i64* noundef %4, i64 noundef %6) #5
  %7 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %X.addr, align 8
  %p4 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %7, i32 0, i32 2
  %8 = load i64*, i64** %p4, align 8
  %9 = bitcast i64* %8 to i8*
  call void @free(i8* noundef %9) #6
  br label %if.end5

if.end5:                                          ; preds = %if.then2, %if.end
  %10 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %X.addr, align 8
  %s = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %10, i32 0, i32 0
  store i32 1, i32* %s, align 8
  %11 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %X.addr, align 8
  %n6 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %11, i32 0, i32 1
  store i64 0, i64* %n6, align 8
  %12 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %X.addr, align 8
  %p7 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %12, i32 0, i32 2
  store i64* null, i64** %p7, align 8
  br label %return

return:                                           ; preds = %if.end5, %if.then
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mbedtls_mpi_zeroize(i64* noundef %v, i64 noundef %n) #0 {
entry:
  %v.addr = alloca i64*, align 8
  %n.addr = alloca i64, align 8
  store i64* %v, i64** %v.addr, align 8
  store i64 %n, i64* %n.addr, align 8
  %0 = load i64*, i64** %v.addr, align 8
  %1 = bitcast i64* %0 to i8*
  %2 = load i64, i64* %n.addr, align 8
  %mul = mul i64 8, %2
  call void @mbedtls_platform_zeroize(i8* noundef %1, i64 noundef %mul) #5
  ret void
}

; Function Attrs: nounwind
declare dso_local void @free(i8* noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_mpi_grow(%struct.mbedtls_mpi* noundef %X, i64 noundef %nblimbs) #0 {
entry:
  %retval = alloca i32, align 4
  %X.addr = alloca %struct.mbedtls_mpi*, align 8
  %nblimbs.addr = alloca i64, align 8
  %p = alloca i64*, align 8
  store %struct.mbedtls_mpi* %X, %struct.mbedtls_mpi** %X.addr, align 8
  store i64 %nblimbs, i64* %nblimbs.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  %0 = load i64, i64* %nblimbs.addr, align 8
  %cmp = icmp ugt i64 %0, 10000
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.end
  store i32 -16, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %do.end
  %1 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %X.addr, align 8
  %n = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %1, i32 0, i32 1
  %2 = load i64, i64* %n, align 8
  %3 = load i64, i64* %nblimbs.addr, align 8
  %cmp1 = icmp ult i64 %2, %3
  br i1 %cmp1, label %if.then2, label %if.end18

if.then2:                                         ; preds = %if.end
  %4 = load i64, i64* %nblimbs.addr, align 8
  %call = call noalias i8* @calloc(i64 noundef %4, i64 noundef 8) #6
  %5 = bitcast i8* %call to i64*
  store i64* %5, i64** %p, align 8
  %cmp3 = icmp eq i64* %5, null
  br i1 %cmp3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.then2
  store i32 -16, i32* %retval, align 4
  br label %return

if.end5:                                          ; preds = %if.then2
  %6 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %X.addr, align 8
  %p6 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %6, i32 0, i32 2
  %7 = load i64*, i64** %p6, align 8
  %cmp7 = icmp ne i64* %7, null
  br i1 %cmp7, label %if.then8, label %if.end15

if.then8:                                         ; preds = %if.end5
  %8 = load i64*, i64** %p, align 8
  %9 = bitcast i64* %8 to i8*
  %10 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %X.addr, align 8
  %p9 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %10, i32 0, i32 2
  %11 = load i64*, i64** %p9, align 8
  %12 = bitcast i64* %11 to i8*
  %13 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %X.addr, align 8
  %n10 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %13, i32 0, i32 1
  %14 = load i64, i64* %n10, align 8
  %mul = mul i64 %14, 8
  %call11 = call i8* @memcpy(i8* noundef %9, i8* noundef %12, i64 noundef %mul) #6
  %15 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %X.addr, align 8
  %p12 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %15, i32 0, i32 2
  %16 = load i64*, i64** %p12, align 8
  %17 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %X.addr, align 8
  %n13 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %17, i32 0, i32 1
  %18 = load i64, i64* %n13, align 8
  call void @mbedtls_mpi_zeroize(i64* noundef %16, i64 noundef %18) #5
  %19 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %X.addr, align 8
  %p14 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %19, i32 0, i32 2
  %20 = load i64*, i64** %p14, align 8
  %21 = bitcast i64* %20 to i8*
  call void @free(i8* noundef %21) #6
  br label %if.end15

if.end15:                                         ; preds = %if.then8, %if.end5
  %22 = load i64, i64* %nblimbs.addr, align 8
  %23 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %X.addr, align 8
  %n16 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %23, i32 0, i32 1
  store i64 %22, i64* %n16, align 8
  %24 = load i64*, i64** %p, align 8
  %25 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %X.addr, align 8
  %p17 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %25, i32 0, i32 2
  store i64* %24, i64** %p17, align 8
  br label %if.end18

if.end18:                                         ; preds = %if.end15, %if.end
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end18, %if.then4, %if.then
  %26 = load i32, i32* %retval, align 4
  ret i32 %26
}

; Function Attrs: nounwind
declare dso_local noalias i8* @calloc(i64 noundef, i64 noundef) #1

; Function Attrs: nounwind
declare dso_local i8* @memcpy(i8* noundef, i8* noundef, i64 noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_mpi_shrink(%struct.mbedtls_mpi* noundef %X, i64 noundef %nblimbs) #0 {
entry:
  %retval = alloca i32, align 4
  %X.addr = alloca %struct.mbedtls_mpi*, align 8
  %nblimbs.addr = alloca i64, align 8
  %p = alloca i64*, align 8
  %i = alloca i64, align 8
  store %struct.mbedtls_mpi* %X, %struct.mbedtls_mpi** %X.addr, align 8
  store i64 %nblimbs, i64* %nblimbs.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  %0 = load i64, i64* %nblimbs.addr, align 8
  %cmp = icmp ugt i64 %0, 10000
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.end
  store i32 -16, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %do.end
  %1 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %X.addr, align 8
  %n = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %1, i32 0, i32 1
  %2 = load i64, i64* %n, align 8
  %3 = load i64, i64* %nblimbs.addr, align 8
  %cmp1 = icmp ule i64 %2, %3
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  %4 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %X.addr, align 8
  %5 = load i64, i64* %nblimbs.addr, align 8
  %call = call i32 @mbedtls_mpi_grow(%struct.mbedtls_mpi* noundef %4, i64 noundef %5) #5
  store i32 %call, i32* %retval, align 4
  br label %return

if.end3:                                          ; preds = %if.end
  %6 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %X.addr, align 8
  %n4 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %6, i32 0, i32 1
  %7 = load i64, i64* %n4, align 8
  %sub = sub i64 %7, 1
  store i64 %sub, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end3
  %8 = load i64, i64* %i, align 8
  %cmp5 = icmp ugt i64 %8, 0
  br i1 %cmp5, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %X.addr, align 8
  %p6 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %9, i32 0, i32 2
  %10 = load i64*, i64** %p6, align 8
  %11 = load i64, i64* %i, align 8
  %arrayidx = getelementptr inbounds i64, i64* %10, i64 %11
  %12 = load i64, i64* %arrayidx, align 8
  %cmp7 = icmp ne i64 %12, 0
  br i1 %cmp7, label %if.then8, label %if.end9

if.then8:                                         ; preds = %for.body
  br label %for.end

if.end9:                                          ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end9
  %13 = load i64, i64* %i, align 8
  %dec = add i64 %13, -1
  store i64 %dec, i64* %i, align 8
  br label %for.cond, !llvm.loop !4

for.end:                                          ; preds = %if.then8, %for.cond
  %14 = load i64, i64* %i, align 8
  %inc = add i64 %14, 1
  store i64 %inc, i64* %i, align 8
  %15 = load i64, i64* %i, align 8
  %16 = load i64, i64* %nblimbs.addr, align 8
  %cmp10 = icmp ult i64 %15, %16
  br i1 %cmp10, label %if.then11, label %if.end12

if.then11:                                        ; preds = %for.end
  %17 = load i64, i64* %nblimbs.addr, align 8
  store i64 %17, i64* %i, align 8
  br label %if.end12

if.end12:                                         ; preds = %if.then11, %for.end
  %18 = load i64, i64* %i, align 8
  %call13 = call noalias i8* @calloc(i64 noundef %18, i64 noundef 8) #6
  %19 = bitcast i8* %call13 to i64*
  store i64* %19, i64** %p, align 8
  %cmp14 = icmp eq i64* %19, null
  br i1 %cmp14, label %if.then15, label %if.end16

if.then15:                                        ; preds = %if.end12
  store i32 -16, i32* %retval, align 4
  br label %return

if.end16:                                         ; preds = %if.end12
  %20 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %X.addr, align 8
  %p17 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %20, i32 0, i32 2
  %21 = load i64*, i64** %p17, align 8
  %cmp18 = icmp ne i64* %21, null
  br i1 %cmp18, label %if.then19, label %if.end25

if.then19:                                        ; preds = %if.end16
  %22 = load i64*, i64** %p, align 8
  %23 = bitcast i64* %22 to i8*
  %24 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %X.addr, align 8
  %p20 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %24, i32 0, i32 2
  %25 = load i64*, i64** %p20, align 8
  %26 = bitcast i64* %25 to i8*
  %27 = load i64, i64* %i, align 8
  %mul = mul i64 %27, 8
  %call21 = call i8* @memcpy(i8* noundef %23, i8* noundef %26, i64 noundef %mul) #6
  %28 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %X.addr, align 8
  %p22 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %28, i32 0, i32 2
  %29 = load i64*, i64** %p22, align 8
  %30 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %X.addr, align 8
  %n23 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %30, i32 0, i32 1
  %31 = load i64, i64* %n23, align 8
  call void @mbedtls_mpi_zeroize(i64* noundef %29, i64 noundef %31) #5
  %32 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %X.addr, align 8
  %p24 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %32, i32 0, i32 2
  %33 = load i64*, i64** %p24, align 8
  %34 = bitcast i64* %33 to i8*
  call void @free(i8* noundef %34) #6
  br label %if.end25

if.end25:                                         ; preds = %if.then19, %if.end16
  %35 = load i64, i64* %i, align 8
  %36 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %X.addr, align 8
  %n26 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %36, i32 0, i32 1
  store i64 %35, i64* %n26, align 8
  %37 = load i64*, i64** %p, align 8
  %38 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %X.addr, align 8
  %p27 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %38, i32 0, i32 2
  store i64* %37, i64** %p27, align 8
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end25, %if.then15, %if.then2, %if.then
  %39 = load i32, i32* %retval, align 4
  ret i32 %39
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_mpi_copy(%struct.mbedtls_mpi* noundef %X, %struct.mbedtls_mpi* noundef %Y) #0 {
entry:
  %retval = alloca i32, align 4
  %X.addr = alloca %struct.mbedtls_mpi*, align 8
  %Y.addr = alloca %struct.mbedtls_mpi*, align 8
  %ret = alloca i32, align 4
  %i = alloca i64, align 8
  store %struct.mbedtls_mpi* %X, %struct.mbedtls_mpi** %X.addr, align 8
  store %struct.mbedtls_mpi* %Y, %struct.mbedtls_mpi** %Y.addr, align 8
  store i32 0, i32* %ret, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %do.body1

do.body1:                                         ; preds = %do.end
  br label %do.end2

do.end2:                                          ; preds = %do.body1
  %0 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %X.addr, align 8
  %1 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %Y.addr, align 8
  %cmp = icmp eq %struct.mbedtls_mpi* %0, %1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.end2
  store i32 0, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %do.end2
  %2 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %Y.addr, align 8
  %n = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %2, i32 0, i32 1
  %3 = load i64, i64* %n, align 8
  %cmp3 = icmp eq i64 %3, 0
  br i1 %cmp3, label %if.then4, label %if.end10

if.then4:                                         ; preds = %if.end
  %4 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %X.addr, align 8
  %n5 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %4, i32 0, i32 1
  %5 = load i64, i64* %n5, align 8
  %cmp6 = icmp ne i64 %5, 0
  br i1 %cmp6, label %if.then7, label %if.end9

if.then7:                                         ; preds = %if.then4
  %6 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %X.addr, align 8
  %s = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %6, i32 0, i32 0
  store i32 1, i32* %s, align 8
  %7 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %X.addr, align 8
  %p = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %7, i32 0, i32 2
  %8 = load i64*, i64** %p, align 8
  %9 = bitcast i64* %8 to i8*
  %10 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %X.addr, align 8
  %n8 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %10, i32 0, i32 1
  %11 = load i64, i64* %n8, align 8
  %mul = mul i64 %11, 8
  %call = call i8* @memset(i8* noundef %9, i32 noundef 0, i64 noundef %mul) #6
  br label %if.end9

if.end9:                                          ; preds = %if.then7, %if.then4
  store i32 0, i32* %retval, align 4
  br label %return

if.end10:                                         ; preds = %if.end
  %12 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %Y.addr, align 8
  %n11 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %12, i32 0, i32 1
  %13 = load i64, i64* %n11, align 8
  %sub = sub i64 %13, 1
  store i64 %sub, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end10
  %14 = load i64, i64* %i, align 8
  %cmp12 = icmp ugt i64 %14, 0
  br i1 %cmp12, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %15 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %Y.addr, align 8
  %p13 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %15, i32 0, i32 2
  %16 = load i64*, i64** %p13, align 8
  %17 = load i64, i64* %i, align 8
  %arrayidx = getelementptr inbounds i64, i64* %16, i64 %17
  %18 = load i64, i64* %arrayidx, align 8
  %cmp14 = icmp ne i64 %18, 0
  br i1 %cmp14, label %if.then15, label %if.end16

if.then15:                                        ; preds = %for.body
  br label %for.end

if.end16:                                         ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end16
  %19 = load i64, i64* %i, align 8
  %dec = add i64 %19, -1
  store i64 %dec, i64* %i, align 8
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %if.then15, %for.cond
  %20 = load i64, i64* %i, align 8
  %inc = add i64 %20, 1
  store i64 %inc, i64* %i, align 8
  %21 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %Y.addr, align 8
  %s17 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %21, i32 0, i32 0
  %22 = load i32, i32* %s17, align 8
  %23 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %X.addr, align 8
  %s18 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %23, i32 0, i32 0
  store i32 %22, i32* %s18, align 8
  %24 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %X.addr, align 8
  %n19 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %24, i32 0, i32 1
  %25 = load i64, i64* %n19, align 8
  %26 = load i64, i64* %i, align 8
  %cmp20 = icmp ult i64 %25, %26
  br i1 %cmp20, label %if.then21, label %if.else

if.then21:                                        ; preds = %for.end
  br label %do.body22

do.body22:                                        ; preds = %if.then21
  %27 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %X.addr, align 8
  %28 = load i64, i64* %i, align 8
  %call23 = call i32 @mbedtls_mpi_grow(%struct.mbedtls_mpi* noundef %27, i64 noundef %28) #5
  store i32 %call23, i32* %ret, align 4
  %cmp24 = icmp ne i32 %call23, 0
  br i1 %cmp24, label %if.then25, label %if.end26

if.then25:                                        ; preds = %do.body22
  br label %cleanup

if.end26:                                         ; preds = %do.body22
  br label %do.end27

do.end27:                                         ; preds = %if.end26
  br label %if.end33

if.else:                                          ; preds = %for.end
  %29 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %X.addr, align 8
  %p28 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %29, i32 0, i32 2
  %30 = load i64*, i64** %p28, align 8
  %31 = load i64, i64* %i, align 8
  %add.ptr = getelementptr inbounds i64, i64* %30, i64 %31
  %32 = bitcast i64* %add.ptr to i8*
  %33 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %X.addr, align 8
  %n29 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %33, i32 0, i32 1
  %34 = load i64, i64* %n29, align 8
  %35 = load i64, i64* %i, align 8
  %sub30 = sub i64 %34, %35
  %mul31 = mul i64 %sub30, 8
  %call32 = call i8* @memset(i8* noundef %32, i32 noundef 0, i64 noundef %mul31) #6
  br label %if.end33

if.end33:                                         ; preds = %if.else, %do.end27
  %36 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %X.addr, align 8
  %p34 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %36, i32 0, i32 2
  %37 = load i64*, i64** %p34, align 8
  %38 = bitcast i64* %37 to i8*
  %39 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %Y.addr, align 8
  %p35 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %39, i32 0, i32 2
  %40 = load i64*, i64** %p35, align 8
  %41 = bitcast i64* %40 to i8*
  %42 = load i64, i64* %i, align 8
  %mul36 = mul i64 %42, 8
  %call37 = call i8* @memcpy(i8* noundef %38, i8* noundef %41, i64 noundef %mul36) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end33, %if.then25
  %43 = load i32, i32* %ret, align 4
  store i32 %43, i32* %retval, align 4
  br label %return

return:                                           ; preds = %cleanup, %if.end9, %if.then
  %44 = load i32, i32* %retval, align 4
  ret i32 %44
}

; Function Attrs: nounwind
declare dso_local i8* @memset(i8* noundef, i32 noundef, i64 noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mbedtls_mpi_swap(%struct.mbedtls_mpi* noundef %X, %struct.mbedtls_mpi* noundef %Y) #0 {
entry:
  %X.addr = alloca %struct.mbedtls_mpi*, align 8
  %Y.addr = alloca %struct.mbedtls_mpi*, align 8
  %T = alloca %struct.mbedtls_mpi, align 8
  store %struct.mbedtls_mpi* %X, %struct.mbedtls_mpi** %X.addr, align 8
  store %struct.mbedtls_mpi* %Y, %struct.mbedtls_mpi** %Y.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %do.body1

do.body1:                                         ; preds = %do.end
  br label %do.end2

do.end2:                                          ; preds = %do.body1
  %0 = bitcast %struct.mbedtls_mpi* %T to i8*
  %1 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %X.addr, align 8
  %2 = bitcast %struct.mbedtls_mpi* %1 to i8*
  %call = call i8* @memcpy(i8* noundef %0, i8* noundef %2, i64 noundef 24) #6
  %3 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %X.addr, align 8
  %4 = bitcast %struct.mbedtls_mpi* %3 to i8*
  %5 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %Y.addr, align 8
  %6 = bitcast %struct.mbedtls_mpi* %5 to i8*
  %call3 = call i8* @memcpy(i8* noundef %4, i8* noundef %6, i64 noundef 24) #6
  %7 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %Y.addr, align 8
  %8 = bitcast %struct.mbedtls_mpi* %7 to i8*
  %9 = bitcast %struct.mbedtls_mpi* %T to i8*
  %call4 = call i8* @memcpy(i8* noundef %8, i8* noundef %9, i64 noundef 24) #6
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_mpi_lset(%struct.mbedtls_mpi* noundef %X, i64 noundef %z) #0 {
entry:
  %X.addr = alloca %struct.mbedtls_mpi*, align 8
  %z.addr = alloca i64, align 8
  %ret = alloca i32, align 4
  store %struct.mbedtls_mpi* %X, %struct.mbedtls_mpi** %X.addr, align 8
  store i64 %z, i64* %z.addr, align 8
  store i32 -110, i32* %ret, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %do.body1

do.body1:                                         ; preds = %do.end
  %0 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %X.addr, align 8
  %call = call i32 @mbedtls_mpi_grow(%struct.mbedtls_mpi* noundef %0, i64 noundef 1) #5
  store i32 %call, i32* %ret, align 4
  %cmp = icmp ne i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.body1
  br label %cleanup

if.end:                                           ; preds = %do.body1
  br label %do.end2

do.end2:                                          ; preds = %if.end
  %1 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %X.addr, align 8
  %p = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %1, i32 0, i32 2
  %2 = load i64*, i64** %p, align 8
  %3 = bitcast i64* %2 to i8*
  %4 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %X.addr, align 8
  %n = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %4, i32 0, i32 1
  %5 = load i64, i64* %n, align 8
  %mul = mul i64 %5, 8
  %call3 = call i8* @memset(i8* noundef %3, i32 noundef 0, i64 noundef %mul) #6
  %6 = load i64, i64* %z.addr, align 8
  %cmp4 = icmp slt i64 %6, 0
  br i1 %cmp4, label %cond.true, label %cond.false

cond.true:                                        ; preds = %do.end2
  %7 = load i64, i64* %z.addr, align 8
  %sub = sub nsw i64 0, %7
  br label %cond.end

cond.false:                                       ; preds = %do.end2
  %8 = load i64, i64* %z.addr, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %sub, %cond.true ], [ %8, %cond.false ]
  %9 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %X.addr, align 8
  %p5 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %9, i32 0, i32 2
  %10 = load i64*, i64** %p5, align 8
  %arrayidx = getelementptr inbounds i64, i64* %10, i64 0
  store i64 %cond, i64* %arrayidx, align 8
  %11 = load i64, i64* %z.addr, align 8
  %cmp6 = icmp slt i64 %11, 0
  %12 = zext i1 %cmp6 to i64
  %cond7 = select i1 %cmp6, i32 -1, i32 1
  %13 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %X.addr, align 8
  %s = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %13, i32 0, i32 0
  store i32 %cond7, i32* %s, align 8
  br label %cleanup

cleanup:                                          ; preds = %cond.end, %if.then
  %14 = load i32, i32* %ret, align 4
  ret i32 %14
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_mpi_get_bit(%struct.mbedtls_mpi* noundef %X, i64 noundef %pos) #0 {
entry:
  %retval = alloca i32, align 4
  %X.addr = alloca %struct.mbedtls_mpi*, align 8
  %pos.addr = alloca i64, align 8
  store %struct.mbedtls_mpi* %X, %struct.mbedtls_mpi** %X.addr, align 8
  store i64 %pos, i64* %pos.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  %0 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %X.addr, align 8
  %n = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %0, i32 0, i32 1
  %1 = load i64, i64* %n, align 8
  %mul = mul i64 %1, 64
  %2 = load i64, i64* %pos.addr, align 8
  %cmp = icmp ule i64 %mul, %2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.end
  store i32 0, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %do.end
  %3 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %X.addr, align 8
  %p = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %3, i32 0, i32 2
  %4 = load i64*, i64** %p, align 8
  %5 = load i64, i64* %pos.addr, align 8
  %div = udiv i64 %5, 64
  %arrayidx = getelementptr inbounds i64, i64* %4, i64 %div
  %6 = load i64, i64* %arrayidx, align 8
  %7 = load i64, i64* %pos.addr, align 8
  %rem = urem i64 %7, 64
  %shr = lshr i64 %6, %rem
  %and = and i64 %shr, 1
  %conv = trunc i64 %and to i32
  store i32 %conv, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %8 = load i32, i32* %retval, align 4
  ret i32 %8
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_mpi_set_bit(%struct.mbedtls_mpi* noundef %X, i64 noundef %pos, i8 noundef zeroext %val) #0 {
entry:
  %retval = alloca i32, align 4
  %X.addr = alloca %struct.mbedtls_mpi*, align 8
  %pos.addr = alloca i64, align 8
  %val.addr = alloca i8, align 1
  %ret = alloca i32, align 4
  %off = alloca i64, align 8
  %idx = alloca i64, align 8
  store %struct.mbedtls_mpi* %X, %struct.mbedtls_mpi** %X.addr, align 8
  store i64 %pos, i64* %pos.addr, align 8
  store i8 %val, i8* %val.addr, align 1
  store i32 0, i32* %ret, align 4
  %0 = load i64, i64* %pos.addr, align 8
  %div = udiv i64 %0, 64
  store i64 %div, i64* %off, align 8
  %1 = load i64, i64* %pos.addr, align 8
  %rem = urem i64 %1, 64
  store i64 %rem, i64* %idx, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  %2 = load i8, i8* %val.addr, align 1
  %conv = zext i8 %2 to i32
  %cmp = icmp ne i32 %conv, 0
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %do.end
  %3 = load i8, i8* %val.addr, align 1
  %conv2 = zext i8 %3 to i32
  %cmp3 = icmp ne i32 %conv2, 1
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  store i32 -4, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %land.lhs.true, %do.end
  %4 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %X.addr, align 8
  %n = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %4, i32 0, i32 1
  %5 = load i64, i64* %n, align 8
  %mul = mul i64 %5, 64
  %6 = load i64, i64* %pos.addr, align 8
  %cmp5 = icmp ule i64 %mul, %6
  br i1 %cmp5, label %if.then7, label %if.end19

if.then7:                                         ; preds = %if.end
  %7 = load i8, i8* %val.addr, align 1
  %conv8 = zext i8 %7 to i32
  %cmp9 = icmp eq i32 %conv8, 0
  br i1 %cmp9, label %if.then11, label %if.end12

if.then11:                                        ; preds = %if.then7
  store i32 0, i32* %retval, align 4
  br label %return

if.end12:                                         ; preds = %if.then7
  br label %do.body13

do.body13:                                        ; preds = %if.end12
  %8 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %X.addr, align 8
  %9 = load i64, i64* %off, align 8
  %add = add i64 %9, 1
  %call = call i32 @mbedtls_mpi_grow(%struct.mbedtls_mpi* noundef %8, i64 noundef %add) #5
  store i32 %call, i32* %ret, align 4
  %cmp14 = icmp ne i32 %call, 0
  br i1 %cmp14, label %if.then16, label %if.end17

if.then16:                                        ; preds = %do.body13
  br label %cleanup

if.end17:                                         ; preds = %do.body13
  br label %do.end18

do.end18:                                         ; preds = %if.end17
  br label %if.end19

if.end19:                                         ; preds = %do.end18, %if.end
  %10 = load i64, i64* %idx, align 8
  %shl = shl i64 1, %10
  %neg = xor i64 %shl, -1
  %11 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %X.addr, align 8
  %p = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %11, i32 0, i32 2
  %12 = load i64*, i64** %p, align 8
  %13 = load i64, i64* %off, align 8
  %arrayidx = getelementptr inbounds i64, i64* %12, i64 %13
  %14 = load i64, i64* %arrayidx, align 8
  %and = and i64 %14, %neg
  store i64 %and, i64* %arrayidx, align 8
  %15 = load i8, i8* %val.addr, align 1
  %conv20 = zext i8 %15 to i64
  %16 = load i64, i64* %idx, align 8
  %shl21 = shl i64 %conv20, %16
  %17 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %X.addr, align 8
  %p22 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %17, i32 0, i32 2
  %18 = load i64*, i64** %p22, align 8
  %19 = load i64, i64* %off, align 8
  %arrayidx23 = getelementptr inbounds i64, i64* %18, i64 %19
  %20 = load i64, i64* %arrayidx23, align 8
  %or = or i64 %20, %shl21
  store i64 %or, i64* %arrayidx23, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end19, %if.then16
  %21 = load i32, i32* %ret, align 4
  store i32 %21, i32* %retval, align 4
  br label %return

return:                                           ; preds = %cleanup, %if.then11, %if.then
  %22 = load i32, i32* %retval, align 4
  ret i32 %22
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @mbedtls_mpi_lsb(%struct.mbedtls_mpi* noundef %X) #0 {
entry:
  %retval = alloca i64, align 8
  %X.addr = alloca %struct.mbedtls_mpi*, align 8
  %i = alloca i64, align 8
  %j = alloca i64, align 8
  %count = alloca i64, align 8
  store %struct.mbedtls_mpi* %X, %struct.mbedtls_mpi** %X.addr, align 8
  store i64 0, i64* %count, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc6, %do.end
  %0 = load i64, i64* %i, align 8
  %1 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %X.addr, align 8
  %n = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %1, i32 0, i32 1
  %2 = load i64, i64* %n, align 8
  %cmp = icmp ult i64 %0, %2
  br i1 %cmp, label %for.body, label %for.end8

for.body:                                         ; preds = %for.cond
  store i64 0, i64* %j, align 8
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %3 = load i64, i64* %j, align 8
  %cmp2 = icmp ult i64 %3, 64
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %4 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %X.addr, align 8
  %p = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %4, i32 0, i32 2
  %5 = load i64*, i64** %p, align 8
  %6 = load i64, i64* %i, align 8
  %arrayidx = getelementptr inbounds i64, i64* %5, i64 %6
  %7 = load i64, i64* %arrayidx, align 8
  %8 = load i64, i64* %j, align 8
  %shr = lshr i64 %7, %8
  %and = and i64 %shr, 1
  %cmp4 = icmp ne i64 %and, 0
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %for.body3
  %9 = load i64, i64* %count, align 8
  store i64 %9, i64* %retval, align 8
  br label %return

if.end:                                           ; preds = %for.body3
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %10 = load i64, i64* %j, align 8
  %inc = add i64 %10, 1
  store i64 %inc, i64* %j, align 8
  %11 = load i64, i64* %count, align 8
  %inc5 = add i64 %11, 1
  store i64 %inc5, i64* %count, align 8
  br label %for.cond1, !llvm.loop !7

for.end:                                          ; preds = %for.cond1
  br label %for.inc6

for.inc6:                                         ; preds = %for.end
  %12 = load i64, i64* %i, align 8
  %inc7 = add i64 %12, 1
  store i64 %inc7, i64* %i, align 8
  br label %for.cond, !llvm.loop !8

for.end8:                                         ; preds = %for.cond
  store i64 0, i64* %retval, align 8
  br label %return

return:                                           ; preds = %for.end8, %if.then
  %13 = load i64, i64* %retval, align 8
  ret i64 %13
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @mbedtls_mpi_bitlen(%struct.mbedtls_mpi* noundef %X) #0 {
entry:
  %retval = alloca i64, align 8
  %X.addr = alloca %struct.mbedtls_mpi*, align 8
  %i = alloca i64, align 8
  %j = alloca i64, align 8
  store %struct.mbedtls_mpi* %X, %struct.mbedtls_mpi** %X.addr, align 8
  %0 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %X.addr, align 8
  %n = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %0, i32 0, i32 1
  %1 = load i64, i64* %n, align 8
  %cmp = icmp eq i64 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i64 0, i64* %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %X.addr, align 8
  %n1 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %2, i32 0, i32 1
  %3 = load i64, i64* %n1, align 8
  %sub = sub i64 %3, 1
  store i64 %sub, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %4 = load i64, i64* %i, align 8
  %cmp2 = icmp ugt i64 %4, 0
  br i1 %cmp2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %X.addr, align 8
  %p = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %5, i32 0, i32 2
  %6 = load i64*, i64** %p, align 8
  %7 = load i64, i64* %i, align 8
  %arrayidx = getelementptr inbounds i64, i64* %6, i64 %7
  %8 = load i64, i64* %arrayidx, align 8
  %cmp3 = icmp ne i64 %8, 0
  br i1 %cmp3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %for.body
  br label %for.end

if.end5:                                          ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end5
  %9 = load i64, i64* %i, align 8
  %dec = add i64 %9, -1
  store i64 %dec, i64* %i, align 8
  br label %for.cond, !llvm.loop !9

for.end:                                          ; preds = %if.then4, %for.cond
  %10 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %X.addr, align 8
  %p6 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %10, i32 0, i32 2
  %11 = load i64*, i64** %p6, align 8
  %12 = load i64, i64* %i, align 8
  %arrayidx7 = getelementptr inbounds i64, i64* %11, i64 %12
  %13 = load i64, i64* %arrayidx7, align 8
  %call = call i64 @mbedtls_clz(i64 noundef %13) #5
  %sub8 = sub i64 64, %call
  store i64 %sub8, i64* %j, align 8
  %14 = load i64, i64* %i, align 8
  %mul = mul i64 %14, 64
  %15 = load i64, i64* %j, align 8
  %add = add i64 %mul, %15
  store i64 %add, i64* %retval, align 8
  br label %return

return:                                           ; preds = %for.end, %if.then
  %16 = load i64, i64* %retval, align 8
  ret i64 %16
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @mbedtls_clz(i64 noundef %x) #0 {
entry:
  %x.addr = alloca i64, align 8
  %j = alloca i64, align 8
  %mask = alloca i64, align 8
  store i64 %x, i64* %x.addr, align 8
  store i64 -9223372036854775808, i64* %mask, align 8
  store i64 0, i64* %j, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, i64* %j, align 8
  %cmp = icmp ult i64 %0, 64
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i64, i64* %x.addr, align 8
  %2 = load i64, i64* %mask, align 8
  %and = and i64 %1, %2
  %tobool = icmp ne i64 %and, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  br label %for.end

if.end:                                           ; preds = %for.body
  %3 = load i64, i64* %mask, align 8
  %shr = lshr i64 %3, 1
  store i64 %shr, i64* %mask, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %4 = load i64, i64* %j, align 8
  %inc = add i64 %4, 1
  store i64 %inc, i64* %j, align 8
  br label %for.cond, !llvm.loop !10

for.end:                                          ; preds = %if.then, %for.cond
  %5 = load i64, i64* %j, align 8
  ret i64 %5
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @mbedtls_mpi_size(%struct.mbedtls_mpi* noundef %X) #0 {
entry:
  %X.addr = alloca %struct.mbedtls_mpi*, align 8
  store %struct.mbedtls_mpi* %X, %struct.mbedtls_mpi** %X.addr, align 8
  %0 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %X.addr, align 8
  %call = call i64 @mbedtls_mpi_bitlen(%struct.mbedtls_mpi* noundef %0) #5
  %add = add i64 %call, 7
  %shr = lshr i64 %add, 3
  ret i64 %shr
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_mpi_read_string(%struct.mbedtls_mpi* noundef %X, i32 noundef %radix, i8* noundef %s) #0 {
entry:
  %retval = alloca i32, align 4
  %X.addr = alloca %struct.mbedtls_mpi*, align 8
  %radix.addr = alloca i32, align 4
  %s.addr = alloca i8*, align 8
  %ret = alloca i32, align 4
  %i = alloca i64, align 8
  %j = alloca i64, align 8
  %slen = alloca i64, align 8
  %n = alloca i64, align 8
  %sign = alloca i32, align 4
  %d = alloca i64, align 8
  %T = alloca %struct.mbedtls_mpi, align 8
  store %struct.mbedtls_mpi* %X, %struct.mbedtls_mpi** %X.addr, align 8
  store i32 %radix, i32* %radix.addr, align 4
  store i8* %s, i8** %s.addr, align 8
  store i32 -110, i32* %ret, align 4
  store i32 1, i32* %sign, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %do.body1

do.body1:                                         ; preds = %do.end
  br label %do.end2

do.end2:                                          ; preds = %do.body1
  %0 = load i32, i32* %radix.addr, align 4
  %cmp = icmp slt i32 %0, 2
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.end2
  %1 = load i32, i32* %radix.addr, align 4
  %cmp3 = icmp sgt i32 %1, 16
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %do.end2
  store i32 -4, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  call void @mbedtls_mpi_init(%struct.mbedtls_mpi* noundef %T) #5
  %2 = load i8*, i8** %s.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 0
  %3 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %3 to i32
  %cmp4 = icmp eq i32 %conv, 0
  br i1 %cmp4, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.end
  %4 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %X.addr, align 8
  call void @mbedtls_mpi_free(%struct.mbedtls_mpi* noundef %4) #5
  store i32 0, i32* %retval, align 4
  br label %return

if.end7:                                          ; preds = %if.end
  %5 = load i8*, i8** %s.addr, align 8
  %arrayidx8 = getelementptr inbounds i8, i8* %5, i64 0
  %6 = load i8, i8* %arrayidx8, align 1
  %conv9 = sext i8 %6 to i32
  %cmp10 = icmp eq i32 %conv9, 45
  br i1 %cmp10, label %if.then12, label %if.end13

if.then12:                                        ; preds = %if.end7
  %7 = load i8*, i8** %s.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %7, i32 1
  store i8* %incdec.ptr, i8** %s.addr, align 8
  store i32 -1, i32* %sign, align 4
  br label %if.end13

if.end13:                                         ; preds = %if.then12, %if.end7
  %8 = load i8*, i8** %s.addr, align 8
  %call = call i64 @strlen(i8* noundef %8) #7
  store i64 %call, i64* %slen, align 8
  %9 = load i32, i32* %radix.addr, align 4
  %cmp14 = icmp eq i32 %9, 16
  br i1 %cmp14, label %if.then16, label %if.else

if.then16:                                        ; preds = %if.end13
  %10 = load i64, i64* %slen, align 8
  %cmp17 = icmp ugt i64 %10, 4611686018427387903
  br i1 %cmp17, label %if.then19, label %if.end20

if.then19:                                        ; preds = %if.then16
  store i32 -4, i32* %retval, align 4
  br label %return

if.end20:                                         ; preds = %if.then16
  %11 = load i64, i64* %slen, align 8
  %shl = shl i64 %11, 2
  %div = udiv i64 %shl, 64
  %12 = load i64, i64* %slen, align 8
  %shl21 = shl i64 %12, 2
  %rem = urem i64 %shl21, 64
  %cmp22 = icmp ne i64 %rem, 0
  %conv23 = zext i1 %cmp22 to i32
  %conv24 = sext i32 %conv23 to i64
  %add = add i64 %div, %conv24
  store i64 %add, i64* %n, align 8
  br label %do.body25

do.body25:                                        ; preds = %if.end20
  %13 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %X.addr, align 8
  %14 = load i64, i64* %n, align 8
  %call26 = call i32 @mbedtls_mpi_grow(%struct.mbedtls_mpi* noundef %13, i64 noundef %14) #5
  store i32 %call26, i32* %ret, align 4
  %cmp27 = icmp ne i32 %call26, 0
  br i1 %cmp27, label %if.then29, label %if.end30

if.then29:                                        ; preds = %do.body25
  br label %cleanup

if.end30:                                         ; preds = %do.body25
  br label %do.end31

do.end31:                                         ; preds = %if.end30
  br label %do.body32

do.body32:                                        ; preds = %do.end31
  %15 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %X.addr, align 8
  %call33 = call i32 @mbedtls_mpi_lset(%struct.mbedtls_mpi* noundef %15, i64 noundef 0) #5
  store i32 %call33, i32* %ret, align 4
  %cmp34 = icmp ne i32 %call33, 0
  br i1 %cmp34, label %if.then36, label %if.end37

if.then36:                                        ; preds = %do.body32
  br label %cleanup

if.end37:                                         ; preds = %do.body32
  br label %do.end38

do.end38:                                         ; preds = %if.end37
  %16 = load i64, i64* %slen, align 8
  store i64 %16, i64* %i, align 8
  store i64 0, i64* %j, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %do.end38
  %17 = load i64, i64* %i, align 8
  %cmp39 = icmp ugt i64 %17, 0
  br i1 %cmp39, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  br label %do.body41

do.body41:                                        ; preds = %for.body
  %18 = load i32, i32* %radix.addr, align 4
  %19 = load i8*, i8** %s.addr, align 8
  %20 = load i64, i64* %i, align 8
  %sub = sub i64 %20, 1
  %arrayidx42 = getelementptr inbounds i8, i8* %19, i64 %sub
  %21 = load i8, i8* %arrayidx42, align 1
  %call43 = call i32 @mpi_get_digit(i64* noundef %d, i32 noundef %18, i8 noundef signext %21) #5
  store i32 %call43, i32* %ret, align 4
  %cmp44 = icmp ne i32 %call43, 0
  br i1 %cmp44, label %if.then46, label %if.end47

if.then46:                                        ; preds = %do.body41
  br label %cleanup

if.end47:                                         ; preds = %do.body41
  br label %do.end48

do.end48:                                         ; preds = %if.end47
  %22 = load i64, i64* %d, align 8
  %23 = load i64, i64* %j, align 8
  %rem49 = urem i64 %23, 16
  %shl50 = shl i64 %rem49, 2
  %shl51 = shl i64 %22, %shl50
  %24 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %X.addr, align 8
  %p = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %24, i32 0, i32 2
  %25 = load i64*, i64** %p, align 8
  %26 = load i64, i64* %j, align 8
  %div52 = udiv i64 %26, 16
  %arrayidx53 = getelementptr inbounds i64, i64* %25, i64 %div52
  %27 = load i64, i64* %arrayidx53, align 8
  %or = or i64 %27, %shl51
  store i64 %or, i64* %arrayidx53, align 8
  br label %for.inc

for.inc:                                          ; preds = %do.end48
  %28 = load i64, i64* %i, align 8
  %dec = add i64 %28, -1
  store i64 %dec, i64* %i, align 8
  %29 = load i64, i64* %j, align 8
  %inc = add i64 %29, 1
  store i64 %inc, i64* %j, align 8
  br label %for.cond, !llvm.loop !11

for.end:                                          ; preds = %for.cond
  br label %if.end91

if.else:                                          ; preds = %if.end13
  br label %do.body54

do.body54:                                        ; preds = %if.else
  %30 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %X.addr, align 8
  %call55 = call i32 @mbedtls_mpi_lset(%struct.mbedtls_mpi* noundef %30, i64 noundef 0) #5
  store i32 %call55, i32* %ret, align 4
  %cmp56 = icmp ne i32 %call55, 0
  br i1 %cmp56, label %if.then58, label %if.end59

if.then58:                                        ; preds = %do.body54
  br label %cleanup

if.end59:                                         ; preds = %do.body54
  br label %do.end60

do.end60:                                         ; preds = %if.end59
  store i64 0, i64* %i, align 8
  br label %for.cond61

for.cond61:                                       ; preds = %for.inc88, %do.end60
  %31 = load i64, i64* %i, align 8
  %32 = load i64, i64* %slen, align 8
  %cmp62 = icmp ult i64 %31, %32
  br i1 %cmp62, label %for.body64, label %for.end90

for.body64:                                       ; preds = %for.cond61
  br label %do.body65

do.body65:                                        ; preds = %for.body64
  %33 = load i32, i32* %radix.addr, align 4
  %34 = load i8*, i8** %s.addr, align 8
  %35 = load i64, i64* %i, align 8
  %arrayidx66 = getelementptr inbounds i8, i8* %34, i64 %35
  %36 = load i8, i8* %arrayidx66, align 1
  %call67 = call i32 @mpi_get_digit(i64* noundef %d, i32 noundef %33, i8 noundef signext %36) #5
  store i32 %call67, i32* %ret, align 4
  %cmp68 = icmp ne i32 %call67, 0
  br i1 %cmp68, label %if.then70, label %if.end71

if.then70:                                        ; preds = %do.body65
  br label %cleanup

if.end71:                                         ; preds = %do.body65
  br label %do.end72

do.end72:                                         ; preds = %if.end71
  br label %do.body73

do.body73:                                        ; preds = %do.end72
  %37 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %X.addr, align 8
  %38 = load i32, i32* %radix.addr, align 4
  %conv74 = sext i32 %38 to i64
  %call75 = call i32 @mbedtls_mpi_mul_int(%struct.mbedtls_mpi* noundef %T, %struct.mbedtls_mpi* noundef %37, i64 noundef %conv74) #5
  store i32 %call75, i32* %ret, align 4
  %cmp76 = icmp ne i32 %call75, 0
  br i1 %cmp76, label %if.then78, label %if.end79

if.then78:                                        ; preds = %do.body73
  br label %cleanup

if.end79:                                         ; preds = %do.body73
  br label %do.end80

do.end80:                                         ; preds = %if.end79
  br label %do.body81

do.body81:                                        ; preds = %do.end80
  %39 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %X.addr, align 8
  %40 = load i64, i64* %d, align 8
  %call82 = call i32 @mbedtls_mpi_add_int(%struct.mbedtls_mpi* noundef %39, %struct.mbedtls_mpi* noundef %T, i64 noundef %40) #5
  store i32 %call82, i32* %ret, align 4
  %cmp83 = icmp ne i32 %call82, 0
  br i1 %cmp83, label %if.then85, label %if.end86

if.then85:                                        ; preds = %do.body81
  br label %cleanup

if.end86:                                         ; preds = %do.body81
  br label %do.end87

do.end87:                                         ; preds = %if.end86
  br label %for.inc88

for.inc88:                                        ; preds = %do.end87
  %41 = load i64, i64* %i, align 8
  %inc89 = add i64 %41, 1
  store i64 %inc89, i64* %i, align 8
  br label %for.cond61, !llvm.loop !12

for.end90:                                        ; preds = %for.cond61
  br label %if.end91

if.end91:                                         ; preds = %for.end90, %for.end
  %42 = load i32, i32* %sign, align 4
  %cmp92 = icmp slt i32 %42, 0
  br i1 %cmp92, label %land.lhs.true, label %if.end99

land.lhs.true:                                    ; preds = %if.end91
  %43 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %X.addr, align 8
  %call94 = call i64 @mbedtls_mpi_bitlen(%struct.mbedtls_mpi* noundef %43) #5
  %cmp95 = icmp ne i64 %call94, 0
  br i1 %cmp95, label %if.then97, label %if.end99

if.then97:                                        ; preds = %land.lhs.true
  %44 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %X.addr, align 8
  %s98 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %44, i32 0, i32 0
  store i32 -1, i32* %s98, align 8
  br label %if.end99

if.end99:                                         ; preds = %if.then97, %land.lhs.true, %if.end91
  br label %cleanup

cleanup:                                          ; preds = %if.end99, %if.then85, %if.then78, %if.then70, %if.then58, %if.then46, %if.then36, %if.then29
  call void @mbedtls_mpi_free(%struct.mbedtls_mpi* noundef %T) #5
  %45 = load i32, i32* %ret, align 4
  store i32 %45, i32* %retval, align 4
  br label %return

return:                                           ; preds = %cleanup, %if.then19, %if.then6, %if.then
  %46 = load i32, i32* %retval, align 4
  ret i32 %46
}

; Function Attrs: nounwind readonly willreturn
declare dso_local i64 @strlen(i8* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mpi_get_digit(i64* noundef %d, i32 noundef %radix, i8 noundef signext %c) #0 {
entry:
  %retval = alloca i32, align 4
  %d.addr = alloca i64*, align 8
  %radix.addr = alloca i32, align 4
  %c.addr = alloca i8, align 1
  store i64* %d, i64** %d.addr, align 8
  store i32 %radix, i32* %radix.addr, align 4
  store i8 %c, i8* %c.addr, align 1
  %0 = load i64*, i64** %d.addr, align 8
  store i64 255, i64* %0, align 8
  %1 = load i8, i8* %c.addr, align 1
  %conv = sext i8 %1 to i32
  %cmp = icmp sge i32 %conv, 48
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %2 = load i8, i8* %c.addr, align 1
  %conv2 = sext i8 %2 to i32
  %cmp3 = icmp sle i32 %conv2, 57
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %3 = load i8, i8* %c.addr, align 1
  %conv5 = sext i8 %3 to i32
  %sub = sub nsw i32 %conv5, 48
  %conv6 = sext i32 %sub to i64
  %4 = load i64*, i64** %d.addr, align 8
  store i64 %conv6, i64* %4, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %5 = load i8, i8* %c.addr, align 1
  %conv7 = sext i8 %5 to i32
  %cmp8 = icmp sge i32 %conv7, 65
  br i1 %cmp8, label %land.lhs.true10, label %if.end18

land.lhs.true10:                                  ; preds = %if.end
  %6 = load i8, i8* %c.addr, align 1
  %conv11 = sext i8 %6 to i32
  %cmp12 = icmp sle i32 %conv11, 70
  br i1 %cmp12, label %if.then14, label %if.end18

if.then14:                                        ; preds = %land.lhs.true10
  %7 = load i8, i8* %c.addr, align 1
  %conv15 = sext i8 %7 to i32
  %sub16 = sub nsw i32 %conv15, 55
  %conv17 = sext i32 %sub16 to i64
  %8 = load i64*, i64** %d.addr, align 8
  store i64 %conv17, i64* %8, align 8
  br label %if.end18

if.end18:                                         ; preds = %if.then14, %land.lhs.true10, %if.end
  %9 = load i8, i8* %c.addr, align 1
  %conv19 = sext i8 %9 to i32
  %cmp20 = icmp sge i32 %conv19, 97
  br i1 %cmp20, label %land.lhs.true22, label %if.end30

land.lhs.true22:                                  ; preds = %if.end18
  %10 = load i8, i8* %c.addr, align 1
  %conv23 = sext i8 %10 to i32
  %cmp24 = icmp sle i32 %conv23, 102
  br i1 %cmp24, label %if.then26, label %if.end30

if.then26:                                        ; preds = %land.lhs.true22
  %11 = load i8, i8* %c.addr, align 1
  %conv27 = sext i8 %11 to i32
  %sub28 = sub nsw i32 %conv27, 87
  %conv29 = sext i32 %sub28 to i64
  %12 = load i64*, i64** %d.addr, align 8
  store i64 %conv29, i64* %12, align 8
  br label %if.end30

if.end30:                                         ; preds = %if.then26, %land.lhs.true22, %if.end18
  %13 = load i64*, i64** %d.addr, align 8
  %14 = load i64, i64* %13, align 8
  %15 = load i32, i32* %radix.addr, align 4
  %conv31 = sext i32 %15 to i64
  %cmp32 = icmp uge i64 %14, %conv31
  br i1 %cmp32, label %if.then34, label %if.end35

if.then34:                                        ; preds = %if.end30
  store i32 -6, i32* %retval, align 4
  br label %return

if.end35:                                         ; preds = %if.end30
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end35, %if.then34
  %16 = load i32, i32* %retval, align 4
  ret i32 %16
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_mpi_mul_int(%struct.mbedtls_mpi* noundef %X, %struct.mbedtls_mpi* noundef %A, i64 noundef %b) #0 {
entry:
  %retval = alloca i32, align 4
  %X.addr = alloca %struct.mbedtls_mpi*, align 8
  %A.addr = alloca %struct.mbedtls_mpi*, align 8
  %b.addr = alloca i64, align 8
  %n = alloca i64, align 8
  %ret = alloca i32, align 4
  store %struct.mbedtls_mpi* %X, %struct.mbedtls_mpi** %X.addr, align 8
  store %struct.mbedtls_mpi* %A, %struct.mbedtls_mpi** %A.addr, align 8
  store i64 %b, i64* %b.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %do.body1

do.body1:                                         ; preds = %do.end
  br label %do.end2

do.end2:                                          ; preds = %do.body1
  %0 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %A.addr, align 8
  %n3 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %0, i32 0, i32 1
  %1 = load i64, i64* %n3, align 8
  store i64 %1, i64* %n, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %do.end2
  %2 = load i64, i64* %n, align 8
  %cmp = icmp ugt i64 %2, 0
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %3 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %A.addr, align 8
  %p = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %3, i32 0, i32 2
  %4 = load i64*, i64** %p, align 8
  %5 = load i64, i64* %n, align 8
  %sub = sub i64 %5, 1
  %arrayidx = getelementptr inbounds i64, i64* %4, i64 %sub
  %6 = load i64, i64* %arrayidx, align 8
  %cmp4 = icmp eq i64 %6, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %7 = phi i1 [ false, %while.cond ], [ %cmp4, %land.rhs ]
  br i1 %7, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %8 = load i64, i64* %n, align 8
  %dec = add i64 %8, -1
  store i64 %dec, i64* %n, align 8
  br label %while.cond, !llvm.loop !13

while.end:                                        ; preds = %land.end
  %9 = load i64, i64* %b.addr, align 8
  %cmp5 = icmp eq i64 %9, 0
  br i1 %cmp5, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %while.end
  %10 = load i64, i64* %n, align 8
  %cmp6 = icmp eq i64 %10, 0
  br i1 %cmp6, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %while.end
  %11 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %X.addr, align 8
  %call = call i32 @mbedtls_mpi_lset(%struct.mbedtls_mpi* noundef %11, i64 noundef 0) #5
  store i32 %call, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  store i32 -110, i32* %ret, align 4
  br label %do.body7

do.body7:                                         ; preds = %if.end
  %12 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %X.addr, align 8
  %13 = load i64, i64* %n, align 8
  %add = add i64 %13, 1
  %call8 = call i32 @mbedtls_mpi_grow(%struct.mbedtls_mpi* noundef %12, i64 noundef %add) #5
  store i32 %call8, i32* %ret, align 4
  %cmp9 = icmp ne i32 %call8, 0
  br i1 %cmp9, label %if.then10, label %if.end11

if.then10:                                        ; preds = %do.body7
  br label %cleanup

if.end11:                                         ; preds = %do.body7
  br label %do.end12

do.end12:                                         ; preds = %if.end11
  br label %do.body13

do.body13:                                        ; preds = %do.end12
  %14 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %X.addr, align 8
  %15 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %A.addr, align 8
  %call14 = call i32 @mbedtls_mpi_copy(%struct.mbedtls_mpi* noundef %14, %struct.mbedtls_mpi* noundef %15) #5
  store i32 %call14, i32* %ret, align 4
  %cmp15 = icmp ne i32 %call14, 0
  br i1 %cmp15, label %if.then16, label %if.end17

if.then16:                                        ; preds = %do.body13
  br label %cleanup

if.end17:                                         ; preds = %do.body13
  br label %do.end18

do.end18:                                         ; preds = %if.end17
  %16 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %X.addr, align 8
  %p19 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %16, i32 0, i32 2
  %17 = load i64*, i64** %p19, align 8
  %18 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %X.addr, align 8
  %n20 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %18, i32 0, i32 1
  %19 = load i64, i64* %n20, align 8
  %20 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %A.addr, align 8
  %p21 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %20, i32 0, i32 2
  %21 = load i64*, i64** %p21, align 8
  %22 = load i64, i64* %n, align 8
  %23 = load i64, i64* %b.addr, align 8
  %sub22 = sub i64 %23, 1
  %call23 = call i64 @mbedtls_mpi_core_mla(i64* noundef %17, i64 noundef %19, i64* noundef %21, i64 noundef %22, i64 noundef %sub22) #5
  br label %cleanup

cleanup:                                          ; preds = %do.end18, %if.then16, %if.then10
  %24 = load i32, i32* %ret, align 4
  store i32 %24, i32* %retval, align 4
  br label %return

return:                                           ; preds = %cleanup, %if.then
  %25 = load i32, i32* %retval, align 4
  ret i32 %25
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_mpi_add_int(%struct.mbedtls_mpi* noundef %X, %struct.mbedtls_mpi* noundef %A, i64 noundef %b) #0 {
entry:
  %X.addr = alloca %struct.mbedtls_mpi*, align 8
  %A.addr = alloca %struct.mbedtls_mpi*, align 8
  %b.addr = alloca i64, align 8
  %B = alloca %struct.mbedtls_mpi, align 8
  %p = alloca [1 x i64], align 8
  store %struct.mbedtls_mpi* %X, %struct.mbedtls_mpi** %X.addr, align 8
  store %struct.mbedtls_mpi* %A, %struct.mbedtls_mpi** %A.addr, align 8
  store i64 %b, i64* %b.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %do.body1

do.body1:                                         ; preds = %do.end
  br label %do.end2

do.end2:                                          ; preds = %do.body1
  %0 = load i64, i64* %b.addr, align 8
  %cmp = icmp slt i64 %0, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %do.end2
  %1 = load i64, i64* %b.addr, align 8
  %sub = sub nsw i64 0, %1
  br label %cond.end

cond.false:                                       ; preds = %do.end2
  %2 = load i64, i64* %b.addr, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %sub, %cond.true ], [ %2, %cond.false ]
  %arrayidx = getelementptr inbounds [1 x i64], [1 x i64]* %p, i64 0, i64 0
  store i64 %cond, i64* %arrayidx, align 8
  %3 = load i64, i64* %b.addr, align 8
  %cmp3 = icmp slt i64 %3, 0
  %4 = zext i1 %cmp3 to i64
  %cond4 = select i1 %cmp3, i32 -1, i32 1
  %s = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %B, i32 0, i32 0
  store i32 %cond4, i32* %s, align 8
  %n = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %B, i32 0, i32 1
  store i64 1, i64* %n, align 8
  %arraydecay = getelementptr inbounds [1 x i64], [1 x i64]* %p, i64 0, i64 0
  %p5 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %B, i32 0, i32 2
  store i64* %arraydecay, i64** %p5, align 8
  %5 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %X.addr, align 8
  %6 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %A.addr, align 8
  %call = call i32 @mbedtls_mpi_add_mpi(%struct.mbedtls_mpi* noundef %5, %struct.mbedtls_mpi* noundef %6, %struct.mbedtls_mpi* noundef %B) #5
  ret i32 %call
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_mpi_write_string(%struct.mbedtls_mpi* noundef %X, i32 noundef %radix, i8* noundef %buf, i64 noundef %buflen, i64* noundef %olen) #0 {
entry:
  %retval = alloca i32, align 4
  %X.addr = alloca %struct.mbedtls_mpi*, align 8
  %radix.addr = alloca i32, align 4
  %buf.addr = alloca i8*, align 8
  %buflen.addr = alloca i64, align 8
  %olen.addr = alloca i64*, align 8
  %ret = alloca i32, align 4
  %n = alloca i64, align 8
  %p = alloca i8*, align 8
  %T = alloca %struct.mbedtls_mpi, align 8
  %c = alloca i32, align 4
  %i = alloca i64, align 8
  %j = alloca i64, align 8
  %k = alloca i64, align 8
  store %struct.mbedtls_mpi* %X, %struct.mbedtls_mpi** %X.addr, align 8
  store i32 %radix, i32* %radix.addr, align 4
  store i8* %buf, i8** %buf.addr, align 8
  store i64 %buflen, i64* %buflen.addr, align 8
  store i64* %olen, i64** %olen.addr, align 8
  store i32 0, i32* %ret, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %do.body1

do.body1:                                         ; preds = %do.end
  br label %do.end2

do.end2:                                          ; preds = %do.body1
  br label %do.body3

do.body3:                                         ; preds = %do.end2
  br label %do.end4

do.end4:                                          ; preds = %do.body3
  %0 = load i32, i32* %radix.addr, align 4
  %cmp = icmp slt i32 %0, 2
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.end4
  %1 = load i32, i32* %radix.addr, align 4
  %cmp5 = icmp sgt i32 %1, 16
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %do.end4
  store i32 -4, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %2 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %X.addr, align 8
  %call = call i64 @mbedtls_mpi_bitlen(%struct.mbedtls_mpi* noundef %2) #5
  store i64 %call, i64* %n, align 8
  %3 = load i32, i32* %radix.addr, align 4
  %cmp6 = icmp sge i32 %3, 4
  br i1 %cmp6, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.end
  %4 = load i64, i64* %n, align 8
  %shr = lshr i64 %4, 1
  store i64 %shr, i64* %n, align 8
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %if.end
  %5 = load i32, i32* %radix.addr, align 4
  %cmp9 = icmp sge i32 %5, 16
  br i1 %cmp9, label %if.then10, label %if.end12

if.then10:                                        ; preds = %if.end8
  %6 = load i64, i64* %n, align 8
  %shr11 = lshr i64 %6, 1
  store i64 %shr11, i64* %n, align 8
  br label %if.end12

if.end12:                                         ; preds = %if.then10, %if.end8
  %7 = load i64, i64* %n, align 8
  %add = add i64 %7, 1
  store i64 %add, i64* %n, align 8
  %8 = load i64, i64* %n, align 8
  %add13 = add i64 %8, 1
  store i64 %add13, i64* %n, align 8
  %9 = load i64, i64* %n, align 8
  %add14 = add i64 %9, 1
  store i64 %add14, i64* %n, align 8
  %10 = load i64, i64* %n, align 8
  %and = and i64 %10, 1
  %11 = load i64, i64* %n, align 8
  %add15 = add i64 %11, %and
  store i64 %add15, i64* %n, align 8
  %12 = load i64, i64* %buflen.addr, align 8
  %13 = load i64, i64* %n, align 8
  %cmp16 = icmp ult i64 %12, %13
  br i1 %cmp16, label %if.then17, label %if.end18

if.then17:                                        ; preds = %if.end12
  %14 = load i64, i64* %n, align 8
  %15 = load i64*, i64** %olen.addr, align 8
  store i64 %14, i64* %15, align 8
  store i32 -8, i32* %retval, align 4
  br label %return

if.end18:                                         ; preds = %if.end12
  %16 = load i8*, i8** %buf.addr, align 8
  store i8* %16, i8** %p, align 8
  call void @mbedtls_mpi_init(%struct.mbedtls_mpi* noundef %T) #5
  %17 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %X.addr, align 8
  %s = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %17, i32 0, i32 0
  %18 = load i32, i32* %s, align 8
  %cmp19 = icmp eq i32 %18, -1
  br i1 %cmp19, label %if.then20, label %if.end21

if.then20:                                        ; preds = %if.end18
  %19 = load i8*, i8** %p, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %19, i32 1
  store i8* %incdec.ptr, i8** %p, align 8
  store i8 45, i8* %19, align 1
  %20 = load i64, i64* %buflen.addr, align 8
  %dec = add i64 %20, -1
  store i64 %dec, i64* %buflen.addr, align 8
  br label %if.end21

if.end21:                                         ; preds = %if.then20, %if.end18
  %21 = load i32, i32* %radix.addr, align 4
  %cmp22 = icmp eq i32 %21, 16
  br i1 %cmp22, label %if.then23, label %if.else

if.then23:                                        ; preds = %if.end21
  %22 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %X.addr, align 8
  %n24 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %22, i32 0, i32 1
  %23 = load i64, i64* %n24, align 8
  store i64 %23, i64* %i, align 8
  store i64 0, i64* %k, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc49, %if.then23
  %24 = load i64, i64* %i, align 8
  %cmp25 = icmp ugt i64 %24, 0
  br i1 %cmp25, label %for.body, label %for.end51

for.body:                                         ; preds = %for.cond
  store i64 8, i64* %j, align 8
  br label %for.cond26

for.cond26:                                       ; preds = %for.inc, %for.body
  %25 = load i64, i64* %j, align 8
  %cmp27 = icmp ugt i64 %25, 0
  br i1 %cmp27, label %for.body28, label %for.end

for.body28:                                       ; preds = %for.cond26
  %26 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %X.addr, align 8
  %p29 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %26, i32 0, i32 2
  %27 = load i64*, i64** %p29, align 8
  %28 = load i64, i64* %i, align 8
  %sub = sub i64 %28, 1
  %arrayidx = getelementptr inbounds i64, i64* %27, i64 %sub
  %29 = load i64, i64* %arrayidx, align 8
  %30 = load i64, i64* %j, align 8
  %sub30 = sub i64 %30, 1
  %shl = shl i64 %sub30, 3
  %shr31 = lshr i64 %29, %shl
  %and32 = and i64 %shr31, 255
  %conv = trunc i64 %and32 to i32
  store i32 %conv, i32* %c, align 4
  %31 = load i32, i32* %c, align 4
  %cmp33 = icmp eq i32 %31, 0
  br i1 %cmp33, label %land.lhs.true, label %if.end42

land.lhs.true:                                    ; preds = %for.body28
  %32 = load i64, i64* %k, align 8
  %cmp35 = icmp eq i64 %32, 0
  br i1 %cmp35, label %land.lhs.true37, label %if.end42

land.lhs.true37:                                  ; preds = %land.lhs.true
  %33 = load i64, i64* %i, align 8
  %34 = load i64, i64* %j, align 8
  %add38 = add i64 %33, %34
  %cmp39 = icmp ne i64 %add38, 2
  br i1 %cmp39, label %if.then41, label %if.end42

if.then41:                                        ; preds = %land.lhs.true37
  br label %for.inc

if.end42:                                         ; preds = %land.lhs.true37, %land.lhs.true, %for.body28
  %35 = load i32, i32* %c, align 4
  %div = sdiv i32 %35, 16
  %idxprom = sext i32 %div to i64
  %arrayidx43 = getelementptr inbounds [17 x i8], [17 x i8]* @.str, i64 0, i64 %idxprom
  %36 = load i8, i8* %arrayidx43, align 1
  %37 = load i8*, i8** %p, align 8
  %incdec.ptr44 = getelementptr inbounds i8, i8* %37, i32 1
  store i8* %incdec.ptr44, i8** %p, align 8
  store i8 %36, i8* %37, align 1
  %38 = load i32, i32* %c, align 4
  %rem = srem i32 %38, 16
  %idxprom45 = sext i32 %rem to i64
  %arrayidx46 = getelementptr inbounds [17 x i8], [17 x i8]* @.str, i64 0, i64 %idxprom45
  %39 = load i8, i8* %arrayidx46, align 1
  %40 = load i8*, i8** %p, align 8
  %incdec.ptr47 = getelementptr inbounds i8, i8* %40, i32 1
  store i8* %incdec.ptr47, i8** %p, align 8
  store i8 %39, i8* %40, align 1
  store i64 1, i64* %k, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.end42, %if.then41
  %41 = load i64, i64* %j, align 8
  %dec48 = add i64 %41, -1
  store i64 %dec48, i64* %j, align 8
  br label %for.cond26, !llvm.loop !14

for.end:                                          ; preds = %for.cond26
  br label %for.inc49

for.inc49:                                        ; preds = %for.end
  %42 = load i64, i64* %i, align 8
  %dec50 = add i64 %42, -1
  store i64 %dec50, i64* %i, align 8
  br label %for.cond, !llvm.loop !15

for.end51:                                        ; preds = %for.cond
  br label %if.end72

if.else:                                          ; preds = %if.end21
  br label %do.body52

do.body52:                                        ; preds = %if.else
  %43 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %X.addr, align 8
  %call53 = call i32 @mbedtls_mpi_copy(%struct.mbedtls_mpi* noundef %T, %struct.mbedtls_mpi* noundef %43) #5
  store i32 %call53, i32* %ret, align 4
  %cmp54 = icmp ne i32 %call53, 0
  br i1 %cmp54, label %if.then56, label %if.end57

if.then56:                                        ; preds = %do.body52
  br label %cleanup

if.end57:                                         ; preds = %do.body52
  br label %do.end58

do.end58:                                         ; preds = %if.end57
  %s59 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %T, i32 0, i32 0
  %44 = load i32, i32* %s59, align 8
  %cmp60 = icmp eq i32 %44, -1
  br i1 %cmp60, label %if.then62, label %if.end64

if.then62:                                        ; preds = %do.end58
  %s63 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %T, i32 0, i32 0
  store i32 1, i32* %s63, align 8
  br label %if.end64

if.end64:                                         ; preds = %if.then62, %do.end58
  br label %do.body65

do.body65:                                        ; preds = %if.end64
  %45 = load i32, i32* %radix.addr, align 4
  %46 = load i64, i64* %buflen.addr, align 8
  %call66 = call i32 @mpi_write_hlp(%struct.mbedtls_mpi* noundef %T, i32 noundef %45, i8** noundef %p, i64 noundef %46) #5
  store i32 %call66, i32* %ret, align 4
  %cmp67 = icmp ne i32 %call66, 0
  br i1 %cmp67, label %if.then69, label %if.end70

if.then69:                                        ; preds = %do.body65
  br label %cleanup

if.end70:                                         ; preds = %do.body65
  br label %do.end71

do.end71:                                         ; preds = %if.end70
  br label %if.end72

if.end72:                                         ; preds = %do.end71, %for.end51
  %47 = load i8*, i8** %p, align 8
  %incdec.ptr73 = getelementptr inbounds i8, i8* %47, i32 1
  store i8* %incdec.ptr73, i8** %p, align 8
  store i8 0, i8* %47, align 1
  %48 = load i8*, i8** %p, align 8
  %49 = load i8*, i8** %buf.addr, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %48 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %49 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %50 = load i64*, i64** %olen.addr, align 8
  store i64 %sub.ptr.sub, i64* %50, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end72, %if.then69, %if.then56
  call void @mbedtls_mpi_free(%struct.mbedtls_mpi* noundef %T) #5
  %51 = load i32, i32* %ret, align 4
  store i32 %51, i32* %retval, align 4
  br label %return

return:                                           ; preds = %cleanup, %if.then17, %if.then
  %52 = load i32, i32* %retval, align 4
  ret i32 %52
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mpi_write_hlp(%struct.mbedtls_mpi* noundef %X, i32 noundef %radix, i8** noundef %p, i64 noundef %buflen) #0 {
entry:
  %retval = alloca i32, align 4
  %X.addr = alloca %struct.mbedtls_mpi*, align 8
  %radix.addr = alloca i32, align 4
  %p.addr = alloca i8**, align 8
  %buflen.addr = alloca i64, align 8
  %ret = alloca i32, align 4
  %r = alloca i64, align 8
  %length = alloca i64, align 8
  %p_end = alloca i8*, align 8
  store %struct.mbedtls_mpi* %X, %struct.mbedtls_mpi** %X.addr, align 8
  store i32 %radix, i32* %radix.addr, align 4
  store i8** %p, i8*** %p.addr, align 8
  store i64 %buflen, i64* %buflen.addr, align 8
  store i32 -110, i32* %ret, align 4
  store i64 0, i64* %length, align 8
  %0 = load i8**, i8*** %p.addr, align 8
  %1 = load i8*, i8** %0, align 8
  %2 = load i64, i64* %buflen.addr, align 8
  %add.ptr = getelementptr inbounds i8, i8* %1, i64 %2
  store i8* %add.ptr, i8** %p_end, align 8
  br label %do.body

do.body:                                          ; preds = %do.cond, %entry
  %3 = load i64, i64* %length, align 8
  %4 = load i64, i64* %buflen.addr, align 8
  %cmp = icmp uge i64 %3, %4
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  store i32 -8, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %do.body
  br label %do.body1

do.body1:                                         ; preds = %if.end
  %5 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %X.addr, align 8
  %6 = load i32, i32* %radix.addr, align 4
  %conv = sext i32 %6 to i64
  %call = call i32 @mbedtls_mpi_mod_int(i64* noundef %r, %struct.mbedtls_mpi* noundef %5, i64 noundef %conv) #5
  store i32 %call, i32* %ret, align 4
  %cmp2 = icmp ne i32 %call, 0
  br i1 %cmp2, label %if.then4, label %if.end5

if.then4:                                         ; preds = %do.body1
  br label %cleanup

if.end5:                                          ; preds = %do.body1
  br label %do.end

do.end:                                           ; preds = %if.end5
  br label %do.body6

do.body6:                                         ; preds = %do.end
  %7 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %X.addr, align 8
  %8 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %X.addr, align 8
  %9 = load i32, i32* %radix.addr, align 4
  %conv7 = sext i32 %9 to i64
  %call8 = call i32 @mbedtls_mpi_div_int(%struct.mbedtls_mpi* noundef %7, %struct.mbedtls_mpi* noundef null, %struct.mbedtls_mpi* noundef %8, i64 noundef %conv7) #5
  store i32 %call8, i32* %ret, align 4
  %cmp9 = icmp ne i32 %call8, 0
  br i1 %cmp9, label %if.then11, label %if.end12

if.then11:                                        ; preds = %do.body6
  br label %cleanup

if.end12:                                         ; preds = %do.body6
  br label %do.end13

do.end13:                                         ; preds = %if.end12
  %10 = load i64, i64* %r, align 8
  %cmp14 = icmp ult i64 %10, 10
  br i1 %cmp14, label %if.then16, label %if.else

if.then16:                                        ; preds = %do.end13
  %11 = load i64, i64* %r, align 8
  %add = add i64 48, %11
  %conv17 = trunc i64 %add to i8
  %12 = load i8*, i8** %p_end, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %12, i32 -1
  store i8* %incdec.ptr, i8** %p_end, align 8
  store i8 %conv17, i8* %incdec.ptr, align 1
  br label %if.end21

if.else:                                          ; preds = %do.end13
  %13 = load i64, i64* %r, align 8
  %sub = sub i64 %13, 10
  %add18 = add i64 65, %sub
  %conv19 = trunc i64 %add18 to i8
  %14 = load i8*, i8** %p_end, align 8
  %incdec.ptr20 = getelementptr inbounds i8, i8* %14, i32 -1
  store i8* %incdec.ptr20, i8** %p_end, align 8
  store i8 %conv19, i8* %incdec.ptr20, align 1
  br label %if.end21

if.end21:                                         ; preds = %if.else, %if.then16
  %15 = load i64, i64* %length, align 8
  %inc = add i64 %15, 1
  store i64 %inc, i64* %length, align 8
  br label %do.cond

do.cond:                                          ; preds = %if.end21
  %16 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %X.addr, align 8
  %call22 = call i32 @mbedtls_mpi_cmp_int(%struct.mbedtls_mpi* noundef %16, i64 noundef 0) #5
  %cmp23 = icmp ne i32 %call22, 0
  br i1 %cmp23, label %do.body, label %do.end25, !llvm.loop !16

do.end25:                                         ; preds = %do.cond
  %17 = load i8**, i8*** %p.addr, align 8
  %18 = load i8*, i8** %17, align 8
  %19 = load i8*, i8** %p_end, align 8
  %20 = load i64, i64* %length, align 8
  %call26 = call i8* @memmove(i8* noundef %18, i8* noundef %19, i64 noundef %20) #6
  %21 = load i64, i64* %length, align 8
  %22 = load i8**, i8*** %p.addr, align 8
  %23 = load i8*, i8** %22, align 8
  %add.ptr27 = getelementptr inbounds i8, i8* %23, i64 %21
  store i8* %add.ptr27, i8** %22, align 8
  br label %cleanup

cleanup:                                          ; preds = %do.end25, %if.then11, %if.then4
  %24 = load i32, i32* %ret, align 4
  store i32 %24, i32* %retval, align 4
  br label %return

return:                                           ; preds = %cleanup, %if.then
  %25 = load i32, i32* %retval, align 4
  ret i32 %25
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_mpi_read_file(%struct.mbedtls_mpi* noundef %X, i32 noundef %radix, %struct._IO_FILE* noundef %fin) #0 {
entry:
  %retval = alloca i32, align 4
  %X.addr = alloca %struct.mbedtls_mpi*, align 8
  %radix.addr = alloca i32, align 4
  %fin.addr = alloca %struct._IO_FILE*, align 8
  %d = alloca i64, align 8
  %slen = alloca i64, align 8
  %p = alloca i8*, align 8
  %s = alloca [2484 x i8], align 16
  store %struct.mbedtls_mpi* %X, %struct.mbedtls_mpi** %X.addr, align 8
  store i32 %radix, i32* %radix.addr, align 4
  store %struct._IO_FILE* %fin, %struct._IO_FILE** %fin.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %do.body1

do.body1:                                         ; preds = %do.end
  br label %do.end2

do.end2:                                          ; preds = %do.body1
  %0 = load i32, i32* %radix.addr, align 4
  %cmp = icmp slt i32 %0, 2
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.end2
  %1 = load i32, i32* %radix.addr, align 4
  %cmp3 = icmp sgt i32 %1, 16
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %do.end2
  store i32 -4, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %arraydecay = getelementptr inbounds [2484 x i8], [2484 x i8]* %s, i64 0, i64 0
  %call = call i8* @memset(i8* noundef %arraydecay, i32 noundef 0, i64 noundef 2484) #6
  %arraydecay4 = getelementptr inbounds [2484 x i8], [2484 x i8]* %s, i64 0, i64 0
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %fin.addr, align 8
  %call5 = call i8* @fgets(i8* noundef %arraydecay4, i32 noundef 2483, %struct._IO_FILE* noundef %2) #5
  %cmp6 = icmp eq i8* %call5, null
  br i1 %cmp6, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.end
  store i32 -2, i32* %retval, align 4
  br label %return

if.end8:                                          ; preds = %if.end
  %arraydecay9 = getelementptr inbounds [2484 x i8], [2484 x i8]* %s, i64 0, i64 0
  %call10 = call i64 @strlen(i8* noundef %arraydecay9) #7
  store i64 %call10, i64* %slen, align 8
  %3 = load i64, i64* %slen, align 8
  %cmp11 = icmp eq i64 %3, 2482
  br i1 %cmp11, label %if.then12, label %if.end13

if.then12:                                        ; preds = %if.end8
  store i32 -8, i32* %retval, align 4
  br label %return

if.end13:                                         ; preds = %if.end8
  %4 = load i64, i64* %slen, align 8
  %cmp14 = icmp ugt i64 %4, 0
  br i1 %cmp14, label %land.lhs.true, label %if.end19

land.lhs.true:                                    ; preds = %if.end13
  %5 = load i64, i64* %slen, align 8
  %sub = sub i64 %5, 1
  %arrayidx = getelementptr inbounds [2484 x i8], [2484 x i8]* %s, i64 0, i64 %sub
  %6 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %6 to i32
  %cmp15 = icmp eq i32 %conv, 10
  br i1 %cmp15, label %if.then17, label %if.end19

if.then17:                                        ; preds = %land.lhs.true
  %7 = load i64, i64* %slen, align 8
  %dec = add i64 %7, -1
  store i64 %dec, i64* %slen, align 8
  %8 = load i64, i64* %slen, align 8
  %arrayidx18 = getelementptr inbounds [2484 x i8], [2484 x i8]* %s, i64 0, i64 %8
  store i8 0, i8* %arrayidx18, align 1
  br label %if.end19

if.end19:                                         ; preds = %if.then17, %land.lhs.true, %if.end13
  %9 = load i64, i64* %slen, align 8
  %cmp20 = icmp ugt i64 %9, 0
  br i1 %cmp20, label %land.lhs.true22, label %if.end31

land.lhs.true22:                                  ; preds = %if.end19
  %10 = load i64, i64* %slen, align 8
  %sub23 = sub i64 %10, 1
  %arrayidx24 = getelementptr inbounds [2484 x i8], [2484 x i8]* %s, i64 0, i64 %sub23
  %11 = load i8, i8* %arrayidx24, align 1
  %conv25 = sext i8 %11 to i32
  %cmp26 = icmp eq i32 %conv25, 13
  br i1 %cmp26, label %if.then28, label %if.end31

if.then28:                                        ; preds = %land.lhs.true22
  %12 = load i64, i64* %slen, align 8
  %dec29 = add i64 %12, -1
  store i64 %dec29, i64* %slen, align 8
  %13 = load i64, i64* %slen, align 8
  %arrayidx30 = getelementptr inbounds [2484 x i8], [2484 x i8]* %s, i64 0, i64 %13
  store i8 0, i8* %arrayidx30, align 1
  br label %if.end31

if.end31:                                         ; preds = %if.then28, %land.lhs.true22, %if.end19
  %arraydecay32 = getelementptr inbounds [2484 x i8], [2484 x i8]* %s, i64 0, i64 0
  %14 = load i64, i64* %slen, align 8
  %add.ptr = getelementptr inbounds i8, i8* %arraydecay32, i64 %14
  store i8* %add.ptr, i8** %p, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end40, %if.end31
  %15 = load i8*, i8** %p, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %15, i32 -1
  store i8* %incdec.ptr, i8** %p, align 8
  %arraydecay33 = getelementptr inbounds [2484 x i8], [2484 x i8]* %s, i64 0, i64 0
  %cmp34 = icmp ugt i8* %15, %arraydecay33
  br i1 %cmp34, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %16 = load i32, i32* %radix.addr, align 4
  %17 = load i8*, i8** %p, align 8
  %18 = load i8, i8* %17, align 1
  %call36 = call i32 @mpi_get_digit(i64* noundef %d, i32 noundef %16, i8 noundef signext %18) #5
  %cmp37 = icmp ne i32 %call36, 0
  br i1 %cmp37, label %if.then39, label %if.end40

if.then39:                                        ; preds = %while.body
  br label %while.end

if.end40:                                         ; preds = %while.body
  br label %while.cond, !llvm.loop !17

while.end:                                        ; preds = %if.then39, %while.cond
  %19 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %X.addr, align 8
  %20 = load i32, i32* %radix.addr, align 4
  %21 = load i8*, i8** %p, align 8
  %add.ptr41 = getelementptr inbounds i8, i8* %21, i64 1
  %call42 = call i32 @mbedtls_mpi_read_string(%struct.mbedtls_mpi* noundef %19, i32 noundef %20, i8* noundef %add.ptr41) #5
  store i32 %call42, i32* %retval, align 4
  br label %return

return:                                           ; preds = %while.end, %if.then12, %if.then7, %if.then
  %22 = load i32, i32* %retval, align 4
  ret i32 %22
}

declare dso_local i8* @fgets(i8* noundef, i32 noundef, %struct._IO_FILE* noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_mpi_write_file(i8* noundef %p, %struct.mbedtls_mpi* noundef %X, i32 noundef %radix, %struct._IO_FILE* noundef %fout) #0 {
entry:
  %retval = alloca i32, align 4
  %p.addr = alloca i8*, align 8
  %X.addr = alloca %struct.mbedtls_mpi*, align 8
  %radix.addr = alloca i32, align 4
  %fout.addr = alloca %struct._IO_FILE*, align 8
  %ret = alloca i32, align 4
  %n = alloca i64, align 8
  %slen = alloca i64, align 8
  %plen = alloca i64, align 8
  %s = alloca [2484 x i8], align 16
  store i8* %p, i8** %p.addr, align 8
  store %struct.mbedtls_mpi* %X, %struct.mbedtls_mpi** %X.addr, align 8
  store i32 %radix, i32* %radix.addr, align 4
  store %struct._IO_FILE* %fout, %struct._IO_FILE** %fout.addr, align 8
  store i32 -110, i32* %ret, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  %0 = load i32, i32* %radix.addr, align 4
  %cmp = icmp slt i32 %0, 2
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.end
  %1 = load i32, i32* %radix.addr, align 4
  %cmp1 = icmp sgt i32 %1, 16
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %do.end
  store i32 -4, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %arraydecay = getelementptr inbounds [2484 x i8], [2484 x i8]* %s, i64 0, i64 0
  %call = call i8* @memset(i8* noundef %arraydecay, i32 noundef 0, i64 noundef 2484) #6
  br label %do.body2

do.body2:                                         ; preds = %if.end
  %2 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %X.addr, align 8
  %3 = load i32, i32* %radix.addr, align 4
  %arraydecay3 = getelementptr inbounds [2484 x i8], [2484 x i8]* %s, i64 0, i64 0
  %call4 = call i32 @mbedtls_mpi_write_string(%struct.mbedtls_mpi* noundef %2, i32 noundef %3, i8* noundef %arraydecay3, i64 noundef 2482, i64* noundef %n) #5
  store i32 %call4, i32* %ret, align 4
  %cmp5 = icmp ne i32 %call4, 0
  br i1 %cmp5, label %if.then6, label %if.end7

if.then6:                                         ; preds = %do.body2
  br label %cleanup

if.end7:                                          ; preds = %do.body2
  br label %do.end8

do.end8:                                          ; preds = %if.end7
  %4 = load i8*, i8** %p.addr, align 8
  %cmp9 = icmp eq i8* %4, null
  br i1 %cmp9, label %if.then10, label %if.end11

if.then10:                                        ; preds = %do.end8
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8** %p.addr, align 8
  br label %if.end11

if.end11:                                         ; preds = %if.then10, %do.end8
  %5 = load i8*, i8** %p.addr, align 8
  %call12 = call i64 @strlen(i8* noundef %5) #7
  store i64 %call12, i64* %plen, align 8
  %arraydecay13 = getelementptr inbounds [2484 x i8], [2484 x i8]* %s, i64 0, i64 0
  %call14 = call i64 @strlen(i8* noundef %arraydecay13) #7
  store i64 %call14, i64* %slen, align 8
  %6 = load i64, i64* %slen, align 8
  %inc = add i64 %6, 1
  store i64 %inc, i64* %slen, align 8
  %arrayidx = getelementptr inbounds [2484 x i8], [2484 x i8]* %s, i64 0, i64 %6
  store i8 13, i8* %arrayidx, align 1
  %7 = load i64, i64* %slen, align 8
  %inc15 = add i64 %7, 1
  store i64 %inc15, i64* %slen, align 8
  %arrayidx16 = getelementptr inbounds [2484 x i8], [2484 x i8]* %s, i64 0, i64 %7
  store i8 10, i8* %arrayidx16, align 1
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %fout.addr, align 8
  %cmp17 = icmp ne %struct._IO_FILE* %8, null
  br i1 %cmp17, label %if.then18, label %if.else

if.then18:                                        ; preds = %if.end11
  %9 = load i8*, i8** %p.addr, align 8
  %10 = load i64, i64* %plen, align 8
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %fout.addr, align 8
  %call19 = call i64 @fwrite(i8* noundef %9, i64 noundef 1, i64 noundef %10, %struct._IO_FILE* noundef %11) #5
  %12 = load i64, i64* %plen, align 8
  %cmp20 = icmp ne i64 %call19, %12
  br i1 %cmp20, label %if.then25, label %lor.lhs.false21

lor.lhs.false21:                                  ; preds = %if.then18
  %arraydecay22 = getelementptr inbounds [2484 x i8], [2484 x i8]* %s, i64 0, i64 0
  %13 = load i64, i64* %slen, align 8
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** %fout.addr, align 8
  %call23 = call i64 @fwrite(i8* noundef %arraydecay22, i64 noundef 1, i64 noundef %13, %struct._IO_FILE* noundef %14) #5
  %15 = load i64, i64* %slen, align 8
  %cmp24 = icmp ne i64 %call23, %15
  br i1 %cmp24, label %if.then25, label %if.end26

if.then25:                                        ; preds = %lor.lhs.false21, %if.then18
  store i32 -2, i32* %retval, align 4
  br label %return

if.end26:                                         ; preds = %lor.lhs.false21
  br label %if.end29

if.else:                                          ; preds = %if.end11
  %16 = load i8*, i8** %p.addr, align 8
  %arraydecay27 = getelementptr inbounds [2484 x i8], [2484 x i8]* %s, i64 0, i64 0
  %call28 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* noundef %16, i8* noundef %arraydecay27) #5
  br label %if.end29

if.end29:                                         ; preds = %if.else, %if.end26
  br label %cleanup

cleanup:                                          ; preds = %if.end29, %if.then6
  %17 = load i32, i32* %ret, align 4
  store i32 %17, i32* %retval, align 4
  br label %return

return:                                           ; preds = %cleanup, %if.then25, %if.then
  %18 = load i32, i32* %retval, align 4
  ret i32 %18
}

declare dso_local i64 @fwrite(i8* noundef, i64 noundef, i64 noundef, %struct._IO_FILE* noundef) #3

declare dso_local i32 @printf(i8* noundef, ...) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_mpi_read_binary_le(%struct.mbedtls_mpi* noundef %X, i8* noundef %buf, i64 noundef %buflen) #0 {
entry:
  %X.addr = alloca %struct.mbedtls_mpi*, align 8
  %buf.addr = alloca i8*, align 8
  %buflen.addr = alloca i64, align 8
  %ret = alloca i32, align 4
  %i = alloca i64, align 8
  %limbs = alloca i64, align 8
  store %struct.mbedtls_mpi* %X, %struct.mbedtls_mpi** %X.addr, align 8
  store i8* %buf, i8** %buf.addr, align 8
  store i64 %buflen, i64* %buflen.addr, align 8
  store i32 -110, i32* %ret, align 4
  %0 = load i64, i64* %buflen.addr, align 8
  %div = udiv i64 %0, 8
  %1 = load i64, i64* %buflen.addr, align 8
  %rem = urem i64 %1, 8
  %cmp = icmp ne i64 %rem, 0
  %conv = zext i1 %cmp to i32
  %conv1 = sext i32 %conv to i64
  %add = add i64 %div, %conv1
  store i64 %add, i64* %limbs, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %2 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %X.addr, align 8
  %3 = load i64, i64* %limbs, align 8
  %call = call i32 @mbedtls_mpi_resize_clear(%struct.mbedtls_mpi* noundef %2, i64 noundef %3) #5
  store i32 %call, i32* %ret, align 4
  %cmp2 = icmp ne i32 %call, 0
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  br label %cleanup

if.end:                                           ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %if.end
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %do.end
  %4 = load i64, i64* %i, align 8
  %5 = load i64, i64* %buflen.addr, align 8
  %cmp4 = icmp ult i64 %4, %5
  br i1 %cmp4, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load i8*, i8** %buf.addr, align 8
  %7 = load i64, i64* %i, align 8
  %arrayidx = getelementptr inbounds i8, i8* %6, i64 %7
  %8 = load i8, i8* %arrayidx, align 1
  %conv6 = zext i8 %8 to i64
  %9 = load i64, i64* %i, align 8
  %rem7 = urem i64 %9, 8
  %shl = shl i64 %rem7, 3
  %shl8 = shl i64 %conv6, %shl
  %10 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %X.addr, align 8
  %p = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %10, i32 0, i32 2
  %11 = load i64*, i64** %p, align 8
  %12 = load i64, i64* %i, align 8
  %div9 = udiv i64 %12, 8
  %arrayidx10 = getelementptr inbounds i64, i64* %11, i64 %div9
  %13 = load i64, i64* %arrayidx10, align 8
  %or = or i64 %13, %shl8
  store i64 %or, i64* %arrayidx10, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %14 = load i64, i64* %i, align 8
  %inc = add i64 %14, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond, !llvm.loop !18

for.end:                                          ; preds = %for.cond
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then
  %15 = load i32, i32* %ret, align 4
  ret i32 %15
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mbedtls_mpi_resize_clear(%struct.mbedtls_mpi* noundef %X, i64 noundef %limbs) #0 {
entry:
  %retval = alloca i32, align 4
  %X.addr = alloca %struct.mbedtls_mpi*, align 8
  %limbs.addr = alloca i64, align 8
  store %struct.mbedtls_mpi* %X, %struct.mbedtls_mpi** %X.addr, align 8
  store i64 %limbs, i64* %limbs.addr, align 8
  %0 = load i64, i64* %limbs.addr, align 8
  %cmp = icmp eq i64 %0, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %X.addr, align 8
  call void @mbedtls_mpi_free(%struct.mbedtls_mpi* noundef %1) #5
  store i32 0, i32* %retval, align 4
  br label %return

if.else:                                          ; preds = %entry
  %2 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %X.addr, align 8
  %n = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %2, i32 0, i32 1
  %3 = load i64, i64* %n, align 8
  %4 = load i64, i64* %limbs.addr, align 8
  %cmp1 = icmp eq i64 %3, %4
  br i1 %cmp1, label %if.then2, label %if.else3

if.then2:                                         ; preds = %if.else
  %5 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %X.addr, align 8
  %p = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %5, i32 0, i32 2
  %6 = load i64*, i64** %p, align 8
  %7 = bitcast i64* %6 to i8*
  %8 = load i64, i64* %limbs.addr, align 8
  %mul = mul i64 %8, 8
  %call = call i8* @memset(i8* noundef %7, i32 noundef 0, i64 noundef %mul) #6
  %9 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %X.addr, align 8
  %s = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %9, i32 0, i32 0
  store i32 1, i32* %s, align 8
  store i32 0, i32* %retval, align 4
  br label %return

if.else3:                                         ; preds = %if.else
  %10 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %X.addr, align 8
  call void @mbedtls_mpi_free(%struct.mbedtls_mpi* noundef %10) #5
  %11 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %X.addr, align 8
  %12 = load i64, i64* %limbs.addr, align 8
  %call4 = call i32 @mbedtls_mpi_grow(%struct.mbedtls_mpi* noundef %11, i64 noundef %12) #5
  store i32 %call4, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.else3, %if.then2, %if.then
  %13 = load i32, i32* %retval, align 4
  ret i32 %13
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_mpi_read_binary(%struct.mbedtls_mpi* noundef %X, i8* noundef %buf, i64 noundef %buflen) #0 {
entry:
  %X.addr = alloca %struct.mbedtls_mpi*, align 8
  %buf.addr = alloca i8*, align 8
  %buflen.addr = alloca i64, align 8
  %ret = alloca i32, align 4
  %limbs = alloca i64, align 8
  %overhead = alloca i64, align 8
  %Xp = alloca i8*, align 8
  store %struct.mbedtls_mpi* %X, %struct.mbedtls_mpi** %X.addr, align 8
  store i8* %buf, i8** %buf.addr, align 8
  store i64 %buflen, i64* %buflen.addr, align 8
  store i32 -110, i32* %ret, align 4
  %0 = load i64, i64* %buflen.addr, align 8
  %div = udiv i64 %0, 8
  %1 = load i64, i64* %buflen.addr, align 8
  %rem = urem i64 %1, 8
  %cmp = icmp ne i64 %rem, 0
  %conv = zext i1 %cmp to i32
  %conv1 = sext i32 %conv to i64
  %add = add i64 %div, %conv1
  store i64 %add, i64* %limbs, align 8
  %2 = load i64, i64* %limbs, align 8
  %mul = mul i64 %2, 8
  %3 = load i64, i64* %buflen.addr, align 8
  %sub = sub i64 %mul, %3
  store i64 %sub, i64* %overhead, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %do.body2

do.body2:                                         ; preds = %do.end
  br label %do.end3

do.end3:                                          ; preds = %do.body2
  br label %do.body4

do.body4:                                         ; preds = %do.end3
  %4 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %X.addr, align 8
  %5 = load i64, i64* %limbs, align 8
  %call = call i32 @mbedtls_mpi_resize_clear(%struct.mbedtls_mpi* noundef %4, i64 noundef %5) #5
  store i32 %call, i32* %ret, align 4
  %cmp5 = icmp ne i32 %call, 0
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %do.body4
  br label %cleanup

if.end:                                           ; preds = %do.body4
  br label %do.end7

do.end7:                                          ; preds = %if.end
  %6 = load i64, i64* %buflen.addr, align 8
  %cmp8 = icmp ne i64 %6, 0
  br i1 %cmp8, label %if.then10, label %if.end13

if.then10:                                        ; preds = %do.end7
  %7 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %X.addr, align 8
  %p = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %7, i32 0, i32 2
  %8 = load i64*, i64** %p, align 8
  %9 = bitcast i64* %8 to i8*
  store i8* %9, i8** %Xp, align 8
  %10 = load i8*, i8** %Xp, align 8
  %11 = load i64, i64* %overhead, align 8
  %add.ptr = getelementptr inbounds i8, i8* %10, i64 %11
  %12 = load i8*, i8** %buf.addr, align 8
  %13 = load i64, i64* %buflen.addr, align 8
  %call11 = call i8* @memcpy(i8* noundef %add.ptr, i8* noundef %12, i64 noundef %13) #6
  %14 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %X.addr, align 8
  %p12 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %14, i32 0, i32 2
  %15 = load i64*, i64** %p12, align 8
  %16 = load i64, i64* %limbs, align 8
  call void @mpi_bigendian_to_host(i64* noundef %15, i64 noundef %16) #5
  br label %if.end13

if.end13:                                         ; preds = %if.then10, %do.end7
  br label %cleanup

cleanup:                                          ; preds = %if.end13, %if.then
  %17 = load i32, i32* %ret, align 4
  ret i32 %17
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mpi_bigendian_to_host(i64* noundef %p, i64 noundef %limbs) #0 {
entry:
  %p.addr = alloca i64*, align 8
  %limbs.addr = alloca i64, align 8
  %cur_limb_left = alloca i64*, align 8
  %cur_limb_right = alloca i64*, align 8
  %tmp = alloca i64, align 8
  store i64* %p, i64** %p.addr, align 8
  store i64 %limbs, i64* %limbs.addr, align 8
  %0 = load i64, i64* %limbs.addr, align 8
  %cmp = icmp eq i64 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %for.end

if.end:                                           ; preds = %entry
  %1 = load i64*, i64** %p.addr, align 8
  store i64* %1, i64** %cur_limb_left, align 8
  %2 = load i64*, i64** %p.addr, align 8
  %3 = load i64, i64* %limbs.addr, align 8
  %sub = sub i64 %3, 1
  %add.ptr = getelementptr inbounds i64, i64* %2, i64 %sub
  store i64* %add.ptr, i64** %cur_limb_right, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %4 = load i64*, i64** %cur_limb_left, align 8
  %5 = load i64*, i64** %cur_limb_right, align 8
  %cmp1 = icmp ule i64* %4, %5
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load i64*, i64** %cur_limb_left, align 8
  %7 = load i64, i64* %6, align 8
  %call = call i64 @mpi_uint_bigendian_to_host(i64 noundef %7) #5
  store i64 %call, i64* %tmp, align 8
  %8 = load i64*, i64** %cur_limb_right, align 8
  %9 = load i64, i64* %8, align 8
  %call2 = call i64 @mpi_uint_bigendian_to_host(i64 noundef %9) #5
  %10 = load i64*, i64** %cur_limb_left, align 8
  store i64 %call2, i64* %10, align 8
  %11 = load i64, i64* %tmp, align 8
  %12 = load i64*, i64** %cur_limb_right, align 8
  store i64 %11, i64* %12, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %13 = load i64*, i64** %cur_limb_left, align 8
  %incdec.ptr = getelementptr inbounds i64, i64* %13, i32 1
  store i64* %incdec.ptr, i64** %cur_limb_left, align 8
  %14 = load i64*, i64** %cur_limb_right, align 8
  %incdec.ptr3 = getelementptr inbounds i64, i64* %14, i32 -1
  store i64* %incdec.ptr3, i64** %cur_limb_right, align 8
  br label %for.cond, !llvm.loop !19

for.end:                                          ; preds = %if.then, %for.cond
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_mpi_write_binary_le(%struct.mbedtls_mpi* noundef %X, i8* noundef %buf, i64 noundef %buflen) #0 {
entry:
  %retval = alloca i32, align 4
  %X.addr = alloca %struct.mbedtls_mpi*, align 8
  %buf.addr = alloca i8*, align 8
  %buflen.addr = alloca i64, align 8
  %stored_bytes = alloca i64, align 8
  %bytes_to_copy = alloca i64, align 8
  %i = alloca i64, align 8
  store %struct.mbedtls_mpi* %X, %struct.mbedtls_mpi** %X.addr, align 8
  store i8* %buf, i8** %buf.addr, align 8
  store i64 %buflen, i64* %buflen.addr, align 8
  %0 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %X.addr, align 8
  %n = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %0, i32 0, i32 1
  %1 = load i64, i64* %n, align 8
  %mul = mul i64 %1, 8
  store i64 %mul, i64* %stored_bytes, align 8
  %2 = load i64, i64* %stored_bytes, align 8
  %3 = load i64, i64* %buflen.addr, align 8
  %cmp = icmp ult i64 %2, %3
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %4 = load i64, i64* %stored_bytes, align 8
  store i64 %4, i64* %bytes_to_copy, align 8
  br label %if.end5

if.else:                                          ; preds = %entry
  %5 = load i64, i64* %buflen.addr, align 8
  store i64 %5, i64* %bytes_to_copy, align 8
  %6 = load i64, i64* %bytes_to_copy, align 8
  store i64 %6, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.else
  %7 = load i64, i64* %i, align 8
  %8 = load i64, i64* %stored_bytes, align 8
  %cmp1 = icmp ult i64 %7, %8
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %X.addr, align 8
  %p = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %9, i32 0, i32 2
  %10 = load i64*, i64** %p, align 8
  %11 = load i64, i64* %i, align 8
  %div = udiv i64 %11, 8
  %arrayidx = getelementptr inbounds i64, i64* %10, i64 %div
  %12 = load i64, i64* %arrayidx, align 8
  %13 = load i64, i64* %i, align 8
  %rem = urem i64 %13, 8
  %mul2 = mul i64 %rem, 8
  %shr = lshr i64 %12, %mul2
  %and = and i64 %shr, 255
  %cmp3 = icmp ne i64 %and, 0
  br i1 %cmp3, label %if.then4, label %if.end

if.then4:                                         ; preds = %for.body
  store i32 -8, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %14 = load i64, i64* %i, align 8
  %inc = add i64 %14, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond, !llvm.loop !20

for.end:                                          ; preds = %for.cond
  br label %if.end5

if.end5:                                          ; preds = %for.end, %if.then
  store i64 0, i64* %i, align 8
  br label %for.cond6

for.cond6:                                        ; preds = %for.inc17, %if.end5
  %15 = load i64, i64* %i, align 8
  %16 = load i64, i64* %bytes_to_copy, align 8
  %cmp7 = icmp ult i64 %15, %16
  br i1 %cmp7, label %for.body8, label %for.end19

for.body8:                                        ; preds = %for.cond6
  %17 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %X.addr, align 8
  %p9 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %17, i32 0, i32 2
  %18 = load i64*, i64** %p9, align 8
  %19 = load i64, i64* %i, align 8
  %div10 = udiv i64 %19, 8
  %arrayidx11 = getelementptr inbounds i64, i64* %18, i64 %div10
  %20 = load i64, i64* %arrayidx11, align 8
  %21 = load i64, i64* %i, align 8
  %rem12 = urem i64 %21, 8
  %mul13 = mul i64 %rem12, 8
  %shr14 = lshr i64 %20, %mul13
  %and15 = and i64 %shr14, 255
  %conv = trunc i64 %and15 to i8
  %22 = load i8*, i8** %buf.addr, align 8
  %23 = load i64, i64* %i, align 8
  %arrayidx16 = getelementptr inbounds i8, i8* %22, i64 %23
  store i8 %conv, i8* %arrayidx16, align 1
  br label %for.inc17

for.inc17:                                        ; preds = %for.body8
  %24 = load i64, i64* %i, align 8
  %inc18 = add i64 %24, 1
  store i64 %inc18, i64* %i, align 8
  br label %for.cond6, !llvm.loop !21

for.end19:                                        ; preds = %for.cond6
  %25 = load i64, i64* %stored_bytes, align 8
  %26 = load i64, i64* %buflen.addr, align 8
  %cmp20 = icmp ult i64 %25, %26
  br i1 %cmp20, label %if.then22, label %if.end23

if.then22:                                        ; preds = %for.end19
  %27 = load i8*, i8** %buf.addr, align 8
  %28 = load i64, i64* %stored_bytes, align 8
  %add.ptr = getelementptr inbounds i8, i8* %27, i64 %28
  %29 = load i64, i64* %buflen.addr, align 8
  %30 = load i64, i64* %stored_bytes, align 8
  %sub = sub i64 %29, %30
  %call = call i8* @memset(i8* noundef %add.ptr, i32 noundef 0, i64 noundef %sub) #6
  br label %if.end23

if.end23:                                         ; preds = %if.then22, %for.end19
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end23, %if.then4
  %31 = load i32, i32* %retval, align 4
  ret i32 %31
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_mpi_write_binary(%struct.mbedtls_mpi* noundef %X, i8* noundef %buf, i64 noundef %buflen) #0 {
entry:
  %retval = alloca i32, align 4
  %X.addr = alloca %struct.mbedtls_mpi*, align 8
  %buf.addr = alloca i8*, align 8
  %buflen.addr = alloca i64, align 8
  %stored_bytes = alloca i64, align 8
  %bytes_to_copy = alloca i64, align 8
  %p = alloca i8*, align 8
  %i = alloca i64, align 8
  store %struct.mbedtls_mpi* %X, %struct.mbedtls_mpi** %X.addr, align 8
  store i8* %buf, i8** %buf.addr, align 8
  store i64 %buflen, i64* %buflen.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %do.body1

do.body1:                                         ; preds = %do.end
  br label %do.end2

do.end2:                                          ; preds = %do.body1
  %0 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %X.addr, align 8
  %n = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %0, i32 0, i32 1
  %1 = load i64, i64* %n, align 8
  %mul = mul i64 %1, 8
  store i64 %mul, i64* %stored_bytes, align 8
  %2 = load i64, i64* %stored_bytes, align 8
  %3 = load i64, i64* %buflen.addr, align 8
  %cmp = icmp ult i64 %2, %3
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.end2
  %4 = load i64, i64* %stored_bytes, align 8
  store i64 %4, i64* %bytes_to_copy, align 8
  %5 = load i8*, i8** %buf.addr, align 8
  %6 = load i64, i64* %buflen.addr, align 8
  %add.ptr = getelementptr inbounds i8, i8* %5, i64 %6
  %7 = load i64, i64* %stored_bytes, align 8
  %idx.neg = sub i64 0, %7
  %add.ptr3 = getelementptr inbounds i8, i8* %add.ptr, i64 %idx.neg
  store i8* %add.ptr3, i8** %p, align 8
  %8 = load i8*, i8** %buf.addr, align 8
  %9 = load i64, i64* %buflen.addr, align 8
  %10 = load i64, i64* %stored_bytes, align 8
  %sub = sub i64 %9, %10
  %call = call i8* @memset(i8* noundef %8, i32 noundef 0, i64 noundef %sub) #6
  br label %if.end9

if.else:                                          ; preds = %do.end2
  %11 = load i64, i64* %buflen.addr, align 8
  store i64 %11, i64* %bytes_to_copy, align 8
  %12 = load i8*, i8** %buf.addr, align 8
  store i8* %12, i8** %p, align 8
  %13 = load i64, i64* %bytes_to_copy, align 8
  store i64 %13, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.else
  %14 = load i64, i64* %i, align 8
  %15 = load i64, i64* %stored_bytes, align 8
  %cmp4 = icmp ult i64 %14, %15
  br i1 %cmp4, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %16 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %X.addr, align 8
  %p5 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %16, i32 0, i32 2
  %17 = load i64*, i64** %p5, align 8
  %18 = load i64, i64* %i, align 8
  %div = udiv i64 %18, 8
  %arrayidx = getelementptr inbounds i64, i64* %17, i64 %div
  %19 = load i64, i64* %arrayidx, align 8
  %20 = load i64, i64* %i, align 8
  %rem = urem i64 %20, 8
  %mul6 = mul i64 %rem, 8
  %shr = lshr i64 %19, %mul6
  %and = and i64 %shr, 255
  %cmp7 = icmp ne i64 %and, 0
  br i1 %cmp7, label %if.then8, label %if.end

if.then8:                                         ; preds = %for.body
  store i32 -8, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %21 = load i64, i64* %i, align 8
  %inc = add i64 %21, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond, !llvm.loop !22

for.end:                                          ; preds = %for.cond
  br label %if.end9

if.end9:                                          ; preds = %for.end, %if.then
  store i64 0, i64* %i, align 8
  br label %for.cond10

for.cond10:                                       ; preds = %for.inc23, %if.end9
  %22 = load i64, i64* %i, align 8
  %23 = load i64, i64* %bytes_to_copy, align 8
  %cmp11 = icmp ult i64 %22, %23
  br i1 %cmp11, label %for.body12, label %for.end25

for.body12:                                       ; preds = %for.cond10
  %24 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %X.addr, align 8
  %p13 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %24, i32 0, i32 2
  %25 = load i64*, i64** %p13, align 8
  %26 = load i64, i64* %i, align 8
  %div14 = udiv i64 %26, 8
  %arrayidx15 = getelementptr inbounds i64, i64* %25, i64 %div14
  %27 = load i64, i64* %arrayidx15, align 8
  %28 = load i64, i64* %i, align 8
  %rem16 = urem i64 %28, 8
  %mul17 = mul i64 %rem16, 8
  %shr18 = lshr i64 %27, %mul17
  %and19 = and i64 %shr18, 255
  %conv = trunc i64 %and19 to i8
  %29 = load i8*, i8** %p, align 8
  %30 = load i64, i64* %bytes_to_copy, align 8
  %31 = load i64, i64* %i, align 8
  %sub20 = sub i64 %30, %31
  %sub21 = sub i64 %sub20, 1
  %arrayidx22 = getelementptr inbounds i8, i8* %29, i64 %sub21
  store i8 %conv, i8* %arrayidx22, align 1
  br label %for.inc23

for.inc23:                                        ; preds = %for.body12
  %32 = load i64, i64* %i, align 8
  %inc24 = add i64 %32, 1
  store i64 %inc24, i64* %i, align 8
  br label %for.cond10, !llvm.loop !23

for.end25:                                        ; preds = %for.cond10
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %for.end25, %if.then8
  %33 = load i32, i32* %retval, align 4
  ret i32 %33
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_mpi_shift_l(%struct.mbedtls_mpi* noundef %X, i64 noundef %count) #0 {
entry:
  %X.addr = alloca %struct.mbedtls_mpi*, align 8
  %count.addr = alloca i64, align 8
  %ret = alloca i32, align 4
  %i = alloca i64, align 8
  %v0 = alloca i64, align 8
  %t1 = alloca i64, align 8
  %r0 = alloca i64, align 8
  %r1 = alloca i64, align 8
  store %struct.mbedtls_mpi* %X, %struct.mbedtls_mpi** %X.addr, align 8
  store i64 %count, i64* %count.addr, align 8
  store i32 -110, i32* %ret, align 4
  store i64 0, i64* %r0, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  %0 = load i64, i64* %count.addr, align 8
  %div = udiv i64 %0, 64
  store i64 %div, i64* %v0, align 8
  %1 = load i64, i64* %count.addr, align 8
  %and = and i64 %1, 63
  store i64 %and, i64* %t1, align 8
  %2 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %X.addr, align 8
  %call = call i64 @mbedtls_mpi_bitlen(%struct.mbedtls_mpi* noundef %2) #5
  %3 = load i64, i64* %count.addr, align 8
  %add = add i64 %call, %3
  store i64 %add, i64* %i, align 8
  %4 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %X.addr, align 8
  %n = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %4, i32 0, i32 1
  %5 = load i64, i64* %n, align 8
  %mul = mul i64 %5, 64
  %6 = load i64, i64* %i, align 8
  %cmp = icmp ult i64 %mul, %6
  br i1 %cmp, label %if.then, label %if.end11

if.then:                                          ; preds = %do.end
  br label %do.body1

do.body1:                                         ; preds = %if.then
  %7 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %X.addr, align 8
  %8 = load i64, i64* %i, align 8
  %div2 = udiv i64 %8, 64
  %9 = load i64, i64* %i, align 8
  %rem = urem i64 %9, 64
  %cmp3 = icmp ne i64 %rem, 0
  %conv = zext i1 %cmp3 to i32
  %conv4 = sext i32 %conv to i64
  %add5 = add i64 %div2, %conv4
  %call6 = call i32 @mbedtls_mpi_grow(%struct.mbedtls_mpi* noundef %7, i64 noundef %add5) #5
  store i32 %call6, i32* %ret, align 4
  %cmp7 = icmp ne i32 %call6, 0
  br i1 %cmp7, label %if.then9, label %if.end

if.then9:                                         ; preds = %do.body1
  br label %cleanup

if.end:                                           ; preds = %do.body1
  br label %do.end10

do.end10:                                         ; preds = %if.end
  br label %if.end11

if.end11:                                         ; preds = %do.end10, %do.end
  store i32 0, i32* %ret, align 4
  %10 = load i64, i64* %v0, align 8
  %cmp12 = icmp ugt i64 %10, 0
  br i1 %cmp12, label %if.then14, label %if.end32

if.then14:                                        ; preds = %if.end11
  %11 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %X.addr, align 8
  %n15 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %11, i32 0, i32 1
  %12 = load i64, i64* %n15, align 8
  store i64 %12, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then14
  %13 = load i64, i64* %i, align 8
  %14 = load i64, i64* %v0, align 8
  %cmp16 = icmp ugt i64 %13, %14
  br i1 %cmp16, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %15 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %X.addr, align 8
  %p = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %15, i32 0, i32 2
  %16 = load i64*, i64** %p, align 8
  %17 = load i64, i64* %i, align 8
  %18 = load i64, i64* %v0, align 8
  %sub = sub i64 %17, %18
  %sub18 = sub i64 %sub, 1
  %arrayidx = getelementptr inbounds i64, i64* %16, i64 %sub18
  %19 = load i64, i64* %arrayidx, align 8
  %20 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %X.addr, align 8
  %p19 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %20, i32 0, i32 2
  %21 = load i64*, i64** %p19, align 8
  %22 = load i64, i64* %i, align 8
  %sub20 = sub i64 %22, 1
  %arrayidx21 = getelementptr inbounds i64, i64* %21, i64 %sub20
  store i64 %19, i64* %arrayidx21, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %23 = load i64, i64* %i, align 8
  %dec = add i64 %23, -1
  store i64 %dec, i64* %i, align 8
  br label %for.cond, !llvm.loop !24

for.end:                                          ; preds = %for.cond
  br label %for.cond22

for.cond22:                                       ; preds = %for.inc29, %for.end
  %24 = load i64, i64* %i, align 8
  %cmp23 = icmp ugt i64 %24, 0
  br i1 %cmp23, label %for.body25, label %for.end31

for.body25:                                       ; preds = %for.cond22
  %25 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %X.addr, align 8
  %p26 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %25, i32 0, i32 2
  %26 = load i64*, i64** %p26, align 8
  %27 = load i64, i64* %i, align 8
  %sub27 = sub i64 %27, 1
  %arrayidx28 = getelementptr inbounds i64, i64* %26, i64 %sub27
  store i64 0, i64* %arrayidx28, align 8
  br label %for.inc29

for.inc29:                                        ; preds = %for.body25
  %28 = load i64, i64* %i, align 8
  %dec30 = add i64 %28, -1
  store i64 %dec30, i64* %i, align 8
  br label %for.cond22, !llvm.loop !25

for.end31:                                        ; preds = %for.cond22
  br label %if.end32

if.end32:                                         ; preds = %for.end31, %if.end11
  %29 = load i64, i64* %t1, align 8
  %cmp33 = icmp ugt i64 %29, 0
  br i1 %cmp33, label %if.then35, label %if.end50

if.then35:                                        ; preds = %if.end32
  %30 = load i64, i64* %v0, align 8
  store i64 %30, i64* %i, align 8
  br label %for.cond36

for.cond36:                                       ; preds = %for.inc48, %if.then35
  %31 = load i64, i64* %i, align 8
  %32 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %X.addr, align 8
  %n37 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %32, i32 0, i32 1
  %33 = load i64, i64* %n37, align 8
  %cmp38 = icmp ult i64 %31, %33
  br i1 %cmp38, label %for.body40, label %for.end49

for.body40:                                       ; preds = %for.cond36
  %34 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %X.addr, align 8
  %p41 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %34, i32 0, i32 2
  %35 = load i64*, i64** %p41, align 8
  %36 = load i64, i64* %i, align 8
  %arrayidx42 = getelementptr inbounds i64, i64* %35, i64 %36
  %37 = load i64, i64* %arrayidx42, align 8
  %38 = load i64, i64* %t1, align 8
  %sub43 = sub i64 64, %38
  %shr = lshr i64 %37, %sub43
  store i64 %shr, i64* %r1, align 8
  %39 = load i64, i64* %t1, align 8
  %40 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %X.addr, align 8
  %p44 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %40, i32 0, i32 2
  %41 = load i64*, i64** %p44, align 8
  %42 = load i64, i64* %i, align 8
  %arrayidx45 = getelementptr inbounds i64, i64* %41, i64 %42
  %43 = load i64, i64* %arrayidx45, align 8
  %shl = shl i64 %43, %39
  store i64 %shl, i64* %arrayidx45, align 8
  %44 = load i64, i64* %r0, align 8
  %45 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %X.addr, align 8
  %p46 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %45, i32 0, i32 2
  %46 = load i64*, i64** %p46, align 8
  %47 = load i64, i64* %i, align 8
  %arrayidx47 = getelementptr inbounds i64, i64* %46, i64 %47
  %48 = load i64, i64* %arrayidx47, align 8
  %or = or i64 %48, %44
  store i64 %or, i64* %arrayidx47, align 8
  %49 = load i64, i64* %r1, align 8
  store i64 %49, i64* %r0, align 8
  br label %for.inc48

for.inc48:                                        ; preds = %for.body40
  %50 = load i64, i64* %i, align 8
  %inc = add i64 %50, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond36, !llvm.loop !26

for.end49:                                        ; preds = %for.cond36
  br label %if.end50

if.end50:                                         ; preds = %for.end49, %if.end32
  br label %cleanup

cleanup:                                          ; preds = %if.end50, %if.then9
  %51 = load i32, i32* %ret, align 4
  ret i32 %51
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_mpi_shift_r(%struct.mbedtls_mpi* noundef %X, i64 noundef %count) #0 {
entry:
  %retval = alloca i32, align 4
  %X.addr = alloca %struct.mbedtls_mpi*, align 8
  %count.addr = alloca i64, align 8
  %i = alloca i64, align 8
  %v0 = alloca i64, align 8
  %v1 = alloca i64, align 8
  %r0 = alloca i64, align 8
  %r1 = alloca i64, align 8
  store %struct.mbedtls_mpi* %X, %struct.mbedtls_mpi** %X.addr, align 8
  store i64 %count, i64* %count.addr, align 8
  store i64 0, i64* %r0, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  %0 = load i64, i64* %count.addr, align 8
  %div = udiv i64 %0, 64
  store i64 %div, i64* %v0, align 8
  %1 = load i64, i64* %count.addr, align 8
  %and = and i64 %1, 63
  store i64 %and, i64* %v1, align 8
  %2 = load i64, i64* %v0, align 8
  %3 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %X.addr, align 8
  %n = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %3, i32 0, i32 1
  %4 = load i64, i64* %n, align 8
  %cmp = icmp ugt i64 %2, %4
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.end
  %5 = load i64, i64* %v0, align 8
  %6 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %X.addr, align 8
  %n1 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %6, i32 0, i32 1
  %7 = load i64, i64* %n1, align 8
  %cmp2 = icmp eq i64 %5, %7
  br i1 %cmp2, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %lor.lhs.false
  %8 = load i64, i64* %v1, align 8
  %cmp3 = icmp ugt i64 %8, 0
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true, %do.end
  %9 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %X.addr, align 8
  %call = call i32 @mbedtls_mpi_lset(%struct.mbedtls_mpi* noundef %9, i64 noundef 0) #5
  store i32 %call, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %land.lhs.true, %lor.lhs.false
  %10 = load i64, i64* %v0, align 8
  %cmp4 = icmp ugt i64 %10, 0
  br i1 %cmp4, label %if.then5, label %if.end19

if.then5:                                         ; preds = %if.end
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then5
  %11 = load i64, i64* %i, align 8
  %12 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %X.addr, align 8
  %n6 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %12, i32 0, i32 1
  %13 = load i64, i64* %n6, align 8
  %14 = load i64, i64* %v0, align 8
  %sub = sub i64 %13, %14
  %cmp7 = icmp ult i64 %11, %sub
  br i1 %cmp7, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %15 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %X.addr, align 8
  %p = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %15, i32 0, i32 2
  %16 = load i64*, i64** %p, align 8
  %17 = load i64, i64* %i, align 8
  %18 = load i64, i64* %v0, align 8
  %add = add i64 %17, %18
  %arrayidx = getelementptr inbounds i64, i64* %16, i64 %add
  %19 = load i64, i64* %arrayidx, align 8
  %20 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %X.addr, align 8
  %p8 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %20, i32 0, i32 2
  %21 = load i64*, i64** %p8, align 8
  %22 = load i64, i64* %i, align 8
  %arrayidx9 = getelementptr inbounds i64, i64* %21, i64 %22
  store i64 %19, i64* %arrayidx9, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %23 = load i64, i64* %i, align 8
  %inc = add i64 %23, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond, !llvm.loop !27

for.end:                                          ; preds = %for.cond
  br label %for.cond10

for.cond10:                                       ; preds = %for.inc16, %for.end
  %24 = load i64, i64* %i, align 8
  %25 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %X.addr, align 8
  %n11 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %25, i32 0, i32 1
  %26 = load i64, i64* %n11, align 8
  %cmp12 = icmp ult i64 %24, %26
  br i1 %cmp12, label %for.body13, label %for.end18

for.body13:                                       ; preds = %for.cond10
  %27 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %X.addr, align 8
  %p14 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %27, i32 0, i32 2
  %28 = load i64*, i64** %p14, align 8
  %29 = load i64, i64* %i, align 8
  %arrayidx15 = getelementptr inbounds i64, i64* %28, i64 %29
  store i64 0, i64* %arrayidx15, align 8
  br label %for.inc16

for.inc16:                                        ; preds = %for.body13
  %30 = load i64, i64* %i, align 8
  %inc17 = add i64 %30, 1
  store i64 %inc17, i64* %i, align 8
  br label %for.cond10, !llvm.loop !28

for.end18:                                        ; preds = %for.cond10
  br label %if.end19

if.end19:                                         ; preds = %for.end18, %if.end
  %31 = load i64, i64* %v1, align 8
  %cmp20 = icmp ugt i64 %31, 0
  br i1 %cmp20, label %if.then21, label %if.end38

if.then21:                                        ; preds = %if.end19
  %32 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %X.addr, align 8
  %n22 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %32, i32 0, i32 1
  %33 = load i64, i64* %n22, align 8
  store i64 %33, i64* %i, align 8
  br label %for.cond23

for.cond23:                                       ; preds = %for.inc36, %if.then21
  %34 = load i64, i64* %i, align 8
  %cmp24 = icmp ugt i64 %34, 0
  br i1 %cmp24, label %for.body25, label %for.end37

for.body25:                                       ; preds = %for.cond23
  %35 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %X.addr, align 8
  %p26 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %35, i32 0, i32 2
  %36 = load i64*, i64** %p26, align 8
  %37 = load i64, i64* %i, align 8
  %sub27 = sub i64 %37, 1
  %arrayidx28 = getelementptr inbounds i64, i64* %36, i64 %sub27
  %38 = load i64, i64* %arrayidx28, align 8
  %39 = load i64, i64* %v1, align 8
  %sub29 = sub i64 64, %39
  %shl = shl i64 %38, %sub29
  store i64 %shl, i64* %r1, align 8
  %40 = load i64, i64* %v1, align 8
  %41 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %X.addr, align 8
  %p30 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %41, i32 0, i32 2
  %42 = load i64*, i64** %p30, align 8
  %43 = load i64, i64* %i, align 8
  %sub31 = sub i64 %43, 1
  %arrayidx32 = getelementptr inbounds i64, i64* %42, i64 %sub31
  %44 = load i64, i64* %arrayidx32, align 8
  %shr = lshr i64 %44, %40
  store i64 %shr, i64* %arrayidx32, align 8
  %45 = load i64, i64* %r0, align 8
  %46 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %X.addr, align 8
  %p33 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %46, i32 0, i32 2
  %47 = load i64*, i64** %p33, align 8
  %48 = load i64, i64* %i, align 8
  %sub34 = sub i64 %48, 1
  %arrayidx35 = getelementptr inbounds i64, i64* %47, i64 %sub34
  %49 = load i64, i64* %arrayidx35, align 8
  %or = or i64 %49, %45
  store i64 %or, i64* %arrayidx35, align 8
  %50 = load i64, i64* %r1, align 8
  store i64 %50, i64* %r0, align 8
  br label %for.inc36

for.inc36:                                        ; preds = %for.body25
  %51 = load i64, i64* %i, align 8
  %dec = add i64 %51, -1
  store i64 %dec, i64* %i, align 8
  br label %for.cond23, !llvm.loop !29

for.end37:                                        ; preds = %for.cond23
  br label %if.end38

if.end38:                                         ; preds = %for.end37, %if.end19
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end38, %if.then
  %52 = load i32, i32* %retval, align 4
  ret i32 %52
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_mpi_cmp_abs(%struct.mbedtls_mpi* noundef %X, %struct.mbedtls_mpi* noundef %Y) #0 {
entry:
  %retval = alloca i32, align 4
  %X.addr = alloca %struct.mbedtls_mpi*, align 8
  %Y.addr = alloca %struct.mbedtls_mpi*, align 8
  %i = alloca i64, align 8
  %j = alloca i64, align 8
  store %struct.mbedtls_mpi* %X, %struct.mbedtls_mpi** %X.addr, align 8
  store %struct.mbedtls_mpi* %Y, %struct.mbedtls_mpi** %Y.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %do.body1

do.body1:                                         ; preds = %do.end
  br label %do.end2

do.end2:                                          ; preds = %do.body1
  %0 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %X.addr, align 8
  %n = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %0, i32 0, i32 1
  %1 = load i64, i64* %n, align 8
  store i64 %1, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %do.end2
  %2 = load i64, i64* %i, align 8
  %cmp = icmp ugt i64 %2, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %X.addr, align 8
  %p = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %3, i32 0, i32 2
  %4 = load i64*, i64** %p, align 8
  %5 = load i64, i64* %i, align 8
  %sub = sub i64 %5, 1
  %arrayidx = getelementptr inbounds i64, i64* %4, i64 %sub
  %6 = load i64, i64* %arrayidx, align 8
  %cmp3 = icmp ne i64 %6, 0
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  br label %for.end

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %7 = load i64, i64* %i, align 8
  %dec = add i64 %7, -1
  store i64 %dec, i64* %i, align 8
  br label %for.cond, !llvm.loop !30

for.end:                                          ; preds = %if.then, %for.cond
  %8 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %Y.addr, align 8
  %n4 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %8, i32 0, i32 1
  %9 = load i64, i64* %n4, align 8
  store i64 %9, i64* %j, align 8
  br label %for.cond5

for.cond5:                                        ; preds = %for.inc14, %for.end
  %10 = load i64, i64* %j, align 8
  %cmp6 = icmp ugt i64 %10, 0
  br i1 %cmp6, label %for.body7, label %for.end16

for.body7:                                        ; preds = %for.cond5
  %11 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %Y.addr, align 8
  %p8 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %11, i32 0, i32 2
  %12 = load i64*, i64** %p8, align 8
  %13 = load i64, i64* %j, align 8
  %sub9 = sub i64 %13, 1
  %arrayidx10 = getelementptr inbounds i64, i64* %12, i64 %sub9
  %14 = load i64, i64* %arrayidx10, align 8
  %cmp11 = icmp ne i64 %14, 0
  br i1 %cmp11, label %if.then12, label %if.end13

if.then12:                                        ; preds = %for.body7
  br label %for.end16

if.end13:                                         ; preds = %for.body7
  br label %for.inc14

for.inc14:                                        ; preds = %if.end13
  %15 = load i64, i64* %j, align 8
  %dec15 = add i64 %15, -1
  store i64 %dec15, i64* %j, align 8
  br label %for.cond5, !llvm.loop !31

for.end16:                                        ; preds = %if.then12, %for.cond5
  %16 = load i64, i64* %i, align 8
  %cmp17 = icmp eq i64 %16, 0
  br i1 %cmp17, label %land.lhs.true, label %if.end20

land.lhs.true:                                    ; preds = %for.end16
  %17 = load i64, i64* %j, align 8
  %cmp18 = icmp eq i64 %17, 0
  br i1 %cmp18, label %if.then19, label %if.end20

if.then19:                                        ; preds = %land.lhs.true
  store i32 0, i32* %retval, align 4
  br label %return

if.end20:                                         ; preds = %land.lhs.true, %for.end16
  %18 = load i64, i64* %i, align 8
  %19 = load i64, i64* %j, align 8
  %cmp21 = icmp ugt i64 %18, %19
  br i1 %cmp21, label %if.then22, label %if.end23

if.then22:                                        ; preds = %if.end20
  store i32 1, i32* %retval, align 4
  br label %return

if.end23:                                         ; preds = %if.end20
  %20 = load i64, i64* %j, align 8
  %21 = load i64, i64* %i, align 8
  %cmp24 = icmp ugt i64 %20, %21
  br i1 %cmp24, label %if.then25, label %if.end26

if.then25:                                        ; preds = %if.end23
  store i32 -1, i32* %retval, align 4
  br label %return

if.end26:                                         ; preds = %if.end23
  br label %for.cond27

for.cond27:                                       ; preds = %for.inc48, %if.end26
  %22 = load i64, i64* %i, align 8
  %cmp28 = icmp ugt i64 %22, 0
  br i1 %cmp28, label %for.body29, label %for.end50

for.body29:                                       ; preds = %for.cond27
  %23 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %X.addr, align 8
  %p30 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %23, i32 0, i32 2
  %24 = load i64*, i64** %p30, align 8
  %25 = load i64, i64* %i, align 8
  %sub31 = sub i64 %25, 1
  %arrayidx32 = getelementptr inbounds i64, i64* %24, i64 %sub31
  %26 = load i64, i64* %arrayidx32, align 8
  %27 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %Y.addr, align 8
  %p33 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %27, i32 0, i32 2
  %28 = load i64*, i64** %p33, align 8
  %29 = load i64, i64* %i, align 8
  %sub34 = sub i64 %29, 1
  %arrayidx35 = getelementptr inbounds i64, i64* %28, i64 %sub34
  %30 = load i64, i64* %arrayidx35, align 8
  %cmp36 = icmp ugt i64 %26, %30
  br i1 %cmp36, label %if.then37, label %if.end38

if.then37:                                        ; preds = %for.body29
  store i32 1, i32* %retval, align 4
  br label %return

if.end38:                                         ; preds = %for.body29
  %31 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %X.addr, align 8
  %p39 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %31, i32 0, i32 2
  %32 = load i64*, i64** %p39, align 8
  %33 = load i64, i64* %i, align 8
  %sub40 = sub i64 %33, 1
  %arrayidx41 = getelementptr inbounds i64, i64* %32, i64 %sub40
  %34 = load i64, i64* %arrayidx41, align 8
  %35 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %Y.addr, align 8
  %p42 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %35, i32 0, i32 2
  %36 = load i64*, i64** %p42, align 8
  %37 = load i64, i64* %i, align 8
  %sub43 = sub i64 %37, 1
  %arrayidx44 = getelementptr inbounds i64, i64* %36, i64 %sub43
  %38 = load i64, i64* %arrayidx44, align 8
  %cmp45 = icmp ult i64 %34, %38
  br i1 %cmp45, label %if.then46, label %if.end47

if.then46:                                        ; preds = %if.end38
  store i32 -1, i32* %retval, align 4
  br label %return

if.end47:                                         ; preds = %if.end38
  br label %for.inc48

for.inc48:                                        ; preds = %if.end47
  %39 = load i64, i64* %i, align 8
  %dec49 = add i64 %39, -1
  store i64 %dec49, i64* %i, align 8
  br label %for.cond27, !llvm.loop !32

for.end50:                                        ; preds = %for.cond27
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %for.end50, %if.then46, %if.then37, %if.then25, %if.then22, %if.then19
  %40 = load i32, i32* %retval, align 4
  ret i32 %40
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_mpi_cmp_mpi(%struct.mbedtls_mpi* noundef %X, %struct.mbedtls_mpi* noundef %Y) #0 {
entry:
  %retval = alloca i32, align 4
  %X.addr = alloca %struct.mbedtls_mpi*, align 8
  %Y.addr = alloca %struct.mbedtls_mpi*, align 8
  %i = alloca i64, align 8
  %j = alloca i64, align 8
  store %struct.mbedtls_mpi* %X, %struct.mbedtls_mpi** %X.addr, align 8
  store %struct.mbedtls_mpi* %Y, %struct.mbedtls_mpi** %Y.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %do.body1

do.body1:                                         ; preds = %do.end
  br label %do.end2

do.end2:                                          ; preds = %do.body1
  %0 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %X.addr, align 8
  %n = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %0, i32 0, i32 1
  %1 = load i64, i64* %n, align 8
  store i64 %1, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %do.end2
  %2 = load i64, i64* %i, align 8
  %cmp = icmp ugt i64 %2, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %X.addr, align 8
  %p = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %3, i32 0, i32 2
  %4 = load i64*, i64** %p, align 8
  %5 = load i64, i64* %i, align 8
  %sub = sub i64 %5, 1
  %arrayidx = getelementptr inbounds i64, i64* %4, i64 %sub
  %6 = load i64, i64* %arrayidx, align 8
  %cmp3 = icmp ne i64 %6, 0
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  br label %for.end

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %7 = load i64, i64* %i, align 8
  %dec = add i64 %7, -1
  store i64 %dec, i64* %i, align 8
  br label %for.cond, !llvm.loop !33

for.end:                                          ; preds = %if.then, %for.cond
  %8 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %Y.addr, align 8
  %n4 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %8, i32 0, i32 1
  %9 = load i64, i64* %n4, align 8
  store i64 %9, i64* %j, align 8
  br label %for.cond5

for.cond5:                                        ; preds = %for.inc14, %for.end
  %10 = load i64, i64* %j, align 8
  %cmp6 = icmp ugt i64 %10, 0
  br i1 %cmp6, label %for.body7, label %for.end16

for.body7:                                        ; preds = %for.cond5
  %11 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %Y.addr, align 8
  %p8 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %11, i32 0, i32 2
  %12 = load i64*, i64** %p8, align 8
  %13 = load i64, i64* %j, align 8
  %sub9 = sub i64 %13, 1
  %arrayidx10 = getelementptr inbounds i64, i64* %12, i64 %sub9
  %14 = load i64, i64* %arrayidx10, align 8
  %cmp11 = icmp ne i64 %14, 0
  br i1 %cmp11, label %if.then12, label %if.end13

if.then12:                                        ; preds = %for.body7
  br label %for.end16

if.end13:                                         ; preds = %for.body7
  br label %for.inc14

for.inc14:                                        ; preds = %if.end13
  %15 = load i64, i64* %j, align 8
  %dec15 = add i64 %15, -1
  store i64 %dec15, i64* %j, align 8
  br label %for.cond5, !llvm.loop !34

for.end16:                                        ; preds = %if.then12, %for.cond5
  %16 = load i64, i64* %i, align 8
  %cmp17 = icmp eq i64 %16, 0
  br i1 %cmp17, label %land.lhs.true, label %if.end20

land.lhs.true:                                    ; preds = %for.end16
  %17 = load i64, i64* %j, align 8
  %cmp18 = icmp eq i64 %17, 0
  br i1 %cmp18, label %if.then19, label %if.end20

if.then19:                                        ; preds = %land.lhs.true
  store i32 0, i32* %retval, align 4
  br label %return

if.end20:                                         ; preds = %land.lhs.true, %for.end16
  %18 = load i64, i64* %i, align 8
  %19 = load i64, i64* %j, align 8
  %cmp21 = icmp ugt i64 %18, %19
  br i1 %cmp21, label %if.then22, label %if.end23

if.then22:                                        ; preds = %if.end20
  %20 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %X.addr, align 8
  %s = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %20, i32 0, i32 0
  %21 = load i32, i32* %s, align 8
  store i32 %21, i32* %retval, align 4
  br label %return

if.end23:                                         ; preds = %if.end20
  %22 = load i64, i64* %j, align 8
  %23 = load i64, i64* %i, align 8
  %cmp24 = icmp ugt i64 %22, %23
  br i1 %cmp24, label %if.then25, label %if.end28

if.then25:                                        ; preds = %if.end23
  %24 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %Y.addr, align 8
  %s26 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %24, i32 0, i32 0
  %25 = load i32, i32* %s26, align 8
  %sub27 = sub nsw i32 0, %25
  store i32 %sub27, i32* %retval, align 4
  br label %return

if.end28:                                         ; preds = %if.end23
  %26 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %X.addr, align 8
  %s29 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %26, i32 0, i32 0
  %27 = load i32, i32* %s29, align 8
  %cmp30 = icmp sgt i32 %27, 0
  br i1 %cmp30, label %land.lhs.true31, label %if.end35

land.lhs.true31:                                  ; preds = %if.end28
  %28 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %Y.addr, align 8
  %s32 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %28, i32 0, i32 0
  %29 = load i32, i32* %s32, align 8
  %cmp33 = icmp slt i32 %29, 0
  br i1 %cmp33, label %if.then34, label %if.end35

if.then34:                                        ; preds = %land.lhs.true31
  store i32 1, i32* %retval, align 4
  br label %return

if.end35:                                         ; preds = %land.lhs.true31, %if.end28
  %30 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %Y.addr, align 8
  %s36 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %30, i32 0, i32 0
  %31 = load i32, i32* %s36, align 8
  %cmp37 = icmp sgt i32 %31, 0
  br i1 %cmp37, label %land.lhs.true38, label %if.end42

land.lhs.true38:                                  ; preds = %if.end35
  %32 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %X.addr, align 8
  %s39 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %32, i32 0, i32 0
  %33 = load i32, i32* %s39, align 8
  %cmp40 = icmp slt i32 %33, 0
  br i1 %cmp40, label %if.then41, label %if.end42

if.then41:                                        ; preds = %land.lhs.true38
  store i32 -1, i32* %retval, align 4
  br label %return

if.end42:                                         ; preds = %land.lhs.true38, %if.end35
  br label %for.cond43

for.cond43:                                       ; preds = %for.inc67, %if.end42
  %34 = load i64, i64* %i, align 8
  %cmp44 = icmp ugt i64 %34, 0
  br i1 %cmp44, label %for.body45, label %for.end69

for.body45:                                       ; preds = %for.cond43
  %35 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %X.addr, align 8
  %p46 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %35, i32 0, i32 2
  %36 = load i64*, i64** %p46, align 8
  %37 = load i64, i64* %i, align 8
  %sub47 = sub i64 %37, 1
  %arrayidx48 = getelementptr inbounds i64, i64* %36, i64 %sub47
  %38 = load i64, i64* %arrayidx48, align 8
  %39 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %Y.addr, align 8
  %p49 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %39, i32 0, i32 2
  %40 = load i64*, i64** %p49, align 8
  %41 = load i64, i64* %i, align 8
  %sub50 = sub i64 %41, 1
  %arrayidx51 = getelementptr inbounds i64, i64* %40, i64 %sub50
  %42 = load i64, i64* %arrayidx51, align 8
  %cmp52 = icmp ugt i64 %38, %42
  br i1 %cmp52, label %if.then53, label %if.end55

if.then53:                                        ; preds = %for.body45
  %43 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %X.addr, align 8
  %s54 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %43, i32 0, i32 0
  %44 = load i32, i32* %s54, align 8
  store i32 %44, i32* %retval, align 4
  br label %return

if.end55:                                         ; preds = %for.body45
  %45 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %X.addr, align 8
  %p56 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %45, i32 0, i32 2
  %46 = load i64*, i64** %p56, align 8
  %47 = load i64, i64* %i, align 8
  %sub57 = sub i64 %47, 1
  %arrayidx58 = getelementptr inbounds i64, i64* %46, i64 %sub57
  %48 = load i64, i64* %arrayidx58, align 8
  %49 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %Y.addr, align 8
  %p59 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %49, i32 0, i32 2
  %50 = load i64*, i64** %p59, align 8
  %51 = load i64, i64* %i, align 8
  %sub60 = sub i64 %51, 1
  %arrayidx61 = getelementptr inbounds i64, i64* %50, i64 %sub60
  %52 = load i64, i64* %arrayidx61, align 8
  %cmp62 = icmp ult i64 %48, %52
  br i1 %cmp62, label %if.then63, label %if.end66

if.then63:                                        ; preds = %if.end55
  %53 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %X.addr, align 8
  %s64 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %53, i32 0, i32 0
  %54 = load i32, i32* %s64, align 8
  %sub65 = sub nsw i32 0, %54
  store i32 %sub65, i32* %retval, align 4
  br label %return

if.end66:                                         ; preds = %if.end55
  br label %for.inc67

for.inc67:                                        ; preds = %if.end66
  %55 = load i64, i64* %i, align 8
  %dec68 = add i64 %55, -1
  store i64 %dec68, i64* %i, align 8
  br label %for.cond43, !llvm.loop !35

for.end69:                                        ; preds = %for.cond43
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %for.end69, %if.then63, %if.then53, %if.then41, %if.then34, %if.then25, %if.then22, %if.then19
  %56 = load i32, i32* %retval, align 4
  ret i32 %56
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_mpi_cmp_int(%struct.mbedtls_mpi* noundef %X, i64 noundef %z) #0 {
entry:
  %X.addr = alloca %struct.mbedtls_mpi*, align 8
  %z.addr = alloca i64, align 8
  %Y = alloca %struct.mbedtls_mpi, align 8
  %p = alloca [1 x i64], align 8
  store %struct.mbedtls_mpi* %X, %struct.mbedtls_mpi** %X.addr, align 8
  store i64 %z, i64* %z.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  %0 = load i64, i64* %z.addr, align 8
  %cmp = icmp slt i64 %0, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %do.end
  %1 = load i64, i64* %z.addr, align 8
  %sub = sub nsw i64 0, %1
  br label %cond.end

cond.false:                                       ; preds = %do.end
  %2 = load i64, i64* %z.addr, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %sub, %cond.true ], [ %2, %cond.false ]
  %arraydecay = getelementptr inbounds [1 x i64], [1 x i64]* %p, i64 0, i64 0
  store i64 %cond, i64* %arraydecay, align 8
  %3 = load i64, i64* %z.addr, align 8
  %cmp1 = icmp slt i64 %3, 0
  %4 = zext i1 %cmp1 to i64
  %cond2 = select i1 %cmp1, i32 -1, i32 1
  %s = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %Y, i32 0, i32 0
  store i32 %cond2, i32* %s, align 8
  %n = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %Y, i32 0, i32 1
  store i64 1, i64* %n, align 8
  %arraydecay3 = getelementptr inbounds [1 x i64], [1 x i64]* %p, i64 0, i64 0
  %p4 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %Y, i32 0, i32 2
  store i64* %arraydecay3, i64** %p4, align 8
  %5 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %X.addr, align 8
  %call = call i32 @mbedtls_mpi_cmp_mpi(%struct.mbedtls_mpi* noundef %5, %struct.mbedtls_mpi* noundef %Y) #5
  ret i32 %call
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_mpi_add_abs(%struct.mbedtls_mpi* noundef %X, %struct.mbedtls_mpi* noundef %A, %struct.mbedtls_mpi* noundef %B) #0 {
entry:
  %X.addr = alloca %struct.mbedtls_mpi*, align 8
  %A.addr = alloca %struct.mbedtls_mpi*, align 8
  %B.addr = alloca %struct.mbedtls_mpi*, align 8
  %ret = alloca i32, align 4
  %i = alloca i64, align 8
  %j = alloca i64, align 8
  %o = alloca i64*, align 8
  %p = alloca i64*, align 8
  %c = alloca i64, align 8
  %tmp = alloca i64, align 8
  %T = alloca %struct.mbedtls_mpi*, align 8
  store %struct.mbedtls_mpi* %X, %struct.mbedtls_mpi** %X.addr, align 8
  store %struct.mbedtls_mpi* %A, %struct.mbedtls_mpi** %A.addr, align 8
  store %struct.mbedtls_mpi* %B, %struct.mbedtls_mpi** %B.addr, align 8
  store i32 -110, i32* %ret, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %do.body1

do.body1:                                         ; preds = %do.end
  br label %do.end2

do.end2:                                          ; preds = %do.body1
  br label %do.body3

do.body3:                                         ; preds = %do.end2
  br label %do.end4

do.end4:                                          ; preds = %do.body3
  %0 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %X.addr, align 8
  %1 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %B.addr, align 8
  %cmp = icmp eq %struct.mbedtls_mpi* %0, %1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.end4
  %2 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %A.addr, align 8
  store %struct.mbedtls_mpi* %2, %struct.mbedtls_mpi** %T, align 8
  %3 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %X.addr, align 8
  store %struct.mbedtls_mpi* %3, %struct.mbedtls_mpi** %A.addr, align 8
  %4 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %T, align 8
  store %struct.mbedtls_mpi* %4, %struct.mbedtls_mpi** %B.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %do.end4
  %5 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %X.addr, align 8
  %6 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %A.addr, align 8
  %cmp5 = icmp ne %struct.mbedtls_mpi* %5, %6
  br i1 %cmp5, label %if.then6, label %if.end12

if.then6:                                         ; preds = %if.end
  br label %do.body7

do.body7:                                         ; preds = %if.then6
  %7 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %X.addr, align 8
  %8 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %A.addr, align 8
  %call = call i32 @mbedtls_mpi_copy(%struct.mbedtls_mpi* noundef %7, %struct.mbedtls_mpi* noundef %8) #5
  store i32 %call, i32* %ret, align 4
  %cmp8 = icmp ne i32 %call, 0
  br i1 %cmp8, label %if.then9, label %if.end10

if.then9:                                         ; preds = %do.body7
  br label %cleanup

if.end10:                                         ; preds = %do.body7
  br label %do.end11

do.end11:                                         ; preds = %if.end10
  br label %if.end12

if.end12:                                         ; preds = %do.end11, %if.end
  %9 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %X.addr, align 8
  %s = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %9, i32 0, i32 0
  store i32 1, i32* %s, align 8
  %10 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %B.addr, align 8
  %n = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %10, i32 0, i32 1
  %11 = load i64, i64* %n, align 8
  store i64 %11, i64* %j, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end12
  %12 = load i64, i64* %j, align 8
  %cmp13 = icmp ugt i64 %12, 0
  br i1 %cmp13, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %13 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %B.addr, align 8
  %p14 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %13, i32 0, i32 2
  %14 = load i64*, i64** %p14, align 8
  %15 = load i64, i64* %j, align 8
  %sub = sub i64 %15, 1
  %arrayidx = getelementptr inbounds i64, i64* %14, i64 %sub
  %16 = load i64, i64* %arrayidx, align 8
  %cmp15 = icmp ne i64 %16, 0
  br i1 %cmp15, label %if.then16, label %if.end17

if.then16:                                        ; preds = %for.body
  br label %for.end

if.end17:                                         ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end17
  %17 = load i64, i64* %j, align 8
  %dec = add i64 %17, -1
  store i64 %dec, i64* %j, align 8
  br label %for.cond, !llvm.loop !36

for.end:                                          ; preds = %if.then16, %for.cond
  br label %do.body18

do.body18:                                        ; preds = %for.end
  %18 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %X.addr, align 8
  %19 = load i64, i64* %j, align 8
  %call19 = call i32 @mbedtls_mpi_grow(%struct.mbedtls_mpi* noundef %18, i64 noundef %19) #5
  store i32 %call19, i32* %ret, align 4
  %cmp20 = icmp ne i32 %call19, 0
  br i1 %cmp20, label %if.then21, label %if.end22

if.then21:                                        ; preds = %do.body18
  br label %cleanup

if.end22:                                         ; preds = %do.body18
  br label %do.end23

do.end23:                                         ; preds = %if.end22
  %20 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %B.addr, align 8
  %p24 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %20, i32 0, i32 2
  %21 = load i64*, i64** %p24, align 8
  store i64* %21, i64** %o, align 8
  %22 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %X.addr, align 8
  %p25 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %22, i32 0, i32 2
  %23 = load i64*, i64** %p25, align 8
  store i64* %23, i64** %p, align 8
  store i64 0, i64* %c, align 8
  store i64 0, i64* %i, align 8
  br label %for.cond26

for.cond26:                                       ; preds = %for.inc36, %do.end23
  %24 = load i64, i64* %i, align 8
  %25 = load i64, i64* %j, align 8
  %cmp27 = icmp ult i64 %24, %25
  br i1 %cmp27, label %for.body28, label %for.end38

for.body28:                                       ; preds = %for.cond26
  %26 = load i64*, i64** %o, align 8
  %27 = load i64, i64* %26, align 8
  store i64 %27, i64* %tmp, align 8
  %28 = load i64, i64* %c, align 8
  %29 = load i64*, i64** %p, align 8
  %30 = load i64, i64* %29, align 8
  %add = add i64 %30, %28
  store i64 %add, i64* %29, align 8
  %31 = load i64*, i64** %p, align 8
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* %c, align 8
  %cmp29 = icmp ult i64 %32, %33
  %conv = zext i1 %cmp29 to i32
  %conv30 = sext i32 %conv to i64
  store i64 %conv30, i64* %c, align 8
  %34 = load i64, i64* %tmp, align 8
  %35 = load i64*, i64** %p, align 8
  %36 = load i64, i64* %35, align 8
  %add31 = add i64 %36, %34
  store i64 %add31, i64* %35, align 8
  %37 = load i64*, i64** %p, align 8
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* %tmp, align 8
  %cmp32 = icmp ult i64 %38, %39
  %conv33 = zext i1 %cmp32 to i32
  %conv34 = sext i32 %conv33 to i64
  %40 = load i64, i64* %c, align 8
  %add35 = add i64 %40, %conv34
  store i64 %add35, i64* %c, align 8
  br label %for.inc36

for.inc36:                                        ; preds = %for.body28
  %41 = load i64, i64* %i, align 8
  %inc = add i64 %41, 1
  store i64 %inc, i64* %i, align 8
  %42 = load i64*, i64** %o, align 8
  %incdec.ptr = getelementptr inbounds i64, i64* %42, i32 1
  store i64* %incdec.ptr, i64** %o, align 8
  %43 = load i64*, i64** %p, align 8
  %incdec.ptr37 = getelementptr inbounds i64, i64* %43, i32 1
  store i64* %incdec.ptr37, i64** %p, align 8
  br label %for.cond26, !llvm.loop !37

for.end38:                                        ; preds = %for.cond26
  br label %while.cond

while.cond:                                       ; preds = %if.end54, %for.end38
  %44 = load i64, i64* %c, align 8
  %cmp39 = icmp ne i64 %44, 0
  br i1 %cmp39, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %45 = load i64, i64* %i, align 8
  %46 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %X.addr, align 8
  %n41 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %46, i32 0, i32 1
  %47 = load i64, i64* %n41, align 8
  %cmp42 = icmp uge i64 %45, %47
  br i1 %cmp42, label %if.then44, label %if.end54

if.then44:                                        ; preds = %while.body
  br label %do.body45

do.body45:                                        ; preds = %if.then44
  %48 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %X.addr, align 8
  %49 = load i64, i64* %i, align 8
  %add46 = add i64 %49, 1
  %call47 = call i32 @mbedtls_mpi_grow(%struct.mbedtls_mpi* noundef %48, i64 noundef %add46) #5
  store i32 %call47, i32* %ret, align 4
  %cmp48 = icmp ne i32 %call47, 0
  br i1 %cmp48, label %if.then50, label %if.end51

if.then50:                                        ; preds = %do.body45
  br label %cleanup

if.end51:                                         ; preds = %do.body45
  br label %do.end52

do.end52:                                         ; preds = %if.end51
  %50 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %X.addr, align 8
  %p53 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %50, i32 0, i32 2
  %51 = load i64*, i64** %p53, align 8
  %52 = load i64, i64* %i, align 8
  %add.ptr = getelementptr inbounds i64, i64* %51, i64 %52
  store i64* %add.ptr, i64** %p, align 8
  br label %if.end54

if.end54:                                         ; preds = %do.end52, %while.body
  %53 = load i64, i64* %c, align 8
  %54 = load i64*, i64** %p, align 8
  %55 = load i64, i64* %54, align 8
  %add55 = add i64 %55, %53
  store i64 %add55, i64* %54, align 8
  %56 = load i64*, i64** %p, align 8
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* %c, align 8
  %cmp56 = icmp ult i64 %57, %58
  %conv57 = zext i1 %cmp56 to i32
  %conv58 = sext i32 %conv57 to i64
  store i64 %conv58, i64* %c, align 8
  %59 = load i64, i64* %i, align 8
  %inc59 = add i64 %59, 1
  store i64 %inc59, i64* %i, align 8
  %60 = load i64*, i64** %p, align 8
  %incdec.ptr60 = getelementptr inbounds i64, i64* %60, i32 1
  store i64* %incdec.ptr60, i64** %p, align 8
  br label %while.cond, !llvm.loop !38

while.end:                                        ; preds = %while.cond
  br label %cleanup

cleanup:                                          ; preds = %while.end, %if.then50, %if.then21, %if.then9
  %61 = load i32, i32* %ret, align 4
  ret i32 %61
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_mpi_sub_abs(%struct.mbedtls_mpi* noundef %X, %struct.mbedtls_mpi* noundef %A, %struct.mbedtls_mpi* noundef %B) #0 {
entry:
  %X.addr = alloca %struct.mbedtls_mpi*, align 8
  %A.addr = alloca %struct.mbedtls_mpi*, align 8
  %B.addr = alloca %struct.mbedtls_mpi*, align 8
  %ret = alloca i32, align 4
  %n = alloca i64, align 8
  %carry = alloca i64, align 8
  store %struct.mbedtls_mpi* %X, %struct.mbedtls_mpi** %X.addr, align 8
  store %struct.mbedtls_mpi* %A, %struct.mbedtls_mpi** %A.addr, align 8
  store %struct.mbedtls_mpi* %B, %struct.mbedtls_mpi** %B.addr, align 8
  store i32 -110, i32* %ret, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %do.body1

do.body1:                                         ; preds = %do.end
  br label %do.end2

do.end2:                                          ; preds = %do.body1
  br label %do.body3

do.body3:                                         ; preds = %do.end2
  br label %do.end4

do.end4:                                          ; preds = %do.body3
  %0 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %B.addr, align 8
  %n5 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %0, i32 0, i32 1
  %1 = load i64, i64* %n5, align 8
  store i64 %1, i64* %n, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %do.end4
  %2 = load i64, i64* %n, align 8
  %cmp = icmp ugt i64 %2, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %B.addr, align 8
  %p = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %3, i32 0, i32 2
  %4 = load i64*, i64** %p, align 8
  %5 = load i64, i64* %n, align 8
  %sub = sub i64 %5, 1
  %arrayidx = getelementptr inbounds i64, i64* %4, i64 %sub
  %6 = load i64, i64* %arrayidx, align 8
  %cmp6 = icmp ne i64 %6, 0
  br i1 %cmp6, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  br label %for.end

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %7 = load i64, i64* %n, align 8
  %dec = add i64 %7, -1
  store i64 %dec, i64* %n, align 8
  br label %for.cond, !llvm.loop !39

for.end:                                          ; preds = %if.then, %for.cond
  %8 = load i64, i64* %n, align 8
  %9 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %A.addr, align 8
  %n7 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %9, i32 0, i32 1
  %10 = load i64, i64* %n7, align 8
  %cmp8 = icmp ugt i64 %8, %10
  br i1 %cmp8, label %if.then9, label %if.end10

if.then9:                                         ; preds = %for.end
  store i32 -10, i32* %ret, align 4
  br label %cleanup

if.end10:                                         ; preds = %for.end
  br label %do.body11

do.body11:                                        ; preds = %if.end10
  %11 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %X.addr, align 8
  %12 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %A.addr, align 8
  %n12 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %12, i32 0, i32 1
  %13 = load i64, i64* %n12, align 8
  %call = call i32 @mbedtls_mpi_grow(%struct.mbedtls_mpi* noundef %11, i64 noundef %13) #5
  store i32 %call, i32* %ret, align 4
  %cmp13 = icmp ne i32 %call, 0
  br i1 %cmp13, label %if.then14, label %if.end15

if.then14:                                        ; preds = %do.body11
  br label %cleanup

if.end15:                                         ; preds = %do.body11
  br label %do.end16

do.end16:                                         ; preds = %if.end15
  %14 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %A.addr, align 8
  %n17 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %14, i32 0, i32 1
  %15 = load i64, i64* %n17, align 8
  %16 = load i64, i64* %n, align 8
  %cmp18 = icmp ugt i64 %15, %16
  br i1 %cmp18, label %if.then19, label %if.end26

if.then19:                                        ; preds = %do.end16
  %17 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %X.addr, align 8
  %p20 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %17, i32 0, i32 2
  %18 = load i64*, i64** %p20, align 8
  %19 = load i64, i64* %n, align 8
  %add.ptr = getelementptr inbounds i64, i64* %18, i64 %19
  %20 = bitcast i64* %add.ptr to i8*
  %21 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %A.addr, align 8
  %p21 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %21, i32 0, i32 2
  %22 = load i64*, i64** %p21, align 8
  %23 = load i64, i64* %n, align 8
  %add.ptr22 = getelementptr inbounds i64, i64* %22, i64 %23
  %24 = bitcast i64* %add.ptr22 to i8*
  %25 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %A.addr, align 8
  %n23 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %25, i32 0, i32 1
  %26 = load i64, i64* %n23, align 8
  %27 = load i64, i64* %n, align 8
  %sub24 = sub i64 %26, %27
  %mul = mul i64 %sub24, 8
  %call25 = call i8* @memcpy(i8* noundef %20, i8* noundef %24, i64 noundef %mul) #6
  br label %if.end26

if.end26:                                         ; preds = %if.then19, %do.end16
  %28 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %X.addr, align 8
  %n27 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %28, i32 0, i32 1
  %29 = load i64, i64* %n27, align 8
  %30 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %A.addr, align 8
  %n28 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %30, i32 0, i32 1
  %31 = load i64, i64* %n28, align 8
  %cmp29 = icmp ugt i64 %29, %31
  br i1 %cmp29, label %if.then30, label %if.end39

if.then30:                                        ; preds = %if.end26
  %32 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %X.addr, align 8
  %p31 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %32, i32 0, i32 2
  %33 = load i64*, i64** %p31, align 8
  %34 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %A.addr, align 8
  %n32 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %34, i32 0, i32 1
  %35 = load i64, i64* %n32, align 8
  %add.ptr33 = getelementptr inbounds i64, i64* %33, i64 %35
  %36 = bitcast i64* %add.ptr33 to i8*
  %37 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %X.addr, align 8
  %n34 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %37, i32 0, i32 1
  %38 = load i64, i64* %n34, align 8
  %39 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %A.addr, align 8
  %n35 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %39, i32 0, i32 1
  %40 = load i64, i64* %n35, align 8
  %sub36 = sub i64 %38, %40
  %mul37 = mul i64 %sub36, 8
  %call38 = call i8* @memset(i8* noundef %36, i32 noundef 0, i64 noundef %mul37) #6
  br label %if.end39

if.end39:                                         ; preds = %if.then30, %if.end26
  %41 = load i64, i64* %n, align 8
  %42 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %X.addr, align 8
  %p40 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %42, i32 0, i32 2
  %43 = load i64*, i64** %p40, align 8
  %44 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %A.addr, align 8
  %p41 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %44, i32 0, i32 2
  %45 = load i64*, i64** %p41, align 8
  %46 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %B.addr, align 8
  %p42 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %46, i32 0, i32 2
  %47 = load i64*, i64** %p42, align 8
  %call43 = call i64 @mpi_sub_hlp(i64 noundef %41, i64* noundef %43, i64* noundef %45, i64* noundef %47) #5
  store i64 %call43, i64* %carry, align 8
  %48 = load i64, i64* %carry, align 8
  %cmp44 = icmp ne i64 %48, 0
  br i1 %cmp44, label %if.then45, label %if.end65

if.then45:                                        ; preds = %if.end39
  br label %for.cond46

for.cond46:                                       ; preds = %for.inc56, %if.then45
  %49 = load i64, i64* %n, align 8
  %50 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %X.addr, align 8
  %n47 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %50, i32 0, i32 1
  %51 = load i64, i64* %n47, align 8
  %cmp48 = icmp ult i64 %49, %51
  br i1 %cmp48, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond46
  %52 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %X.addr, align 8
  %p49 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %52, i32 0, i32 2
  %53 = load i64*, i64** %p49, align 8
  %54 = load i64, i64* %n, align 8
  %arrayidx50 = getelementptr inbounds i64, i64* %53, i64 %54
  %55 = load i64, i64* %arrayidx50, align 8
  %cmp51 = icmp eq i64 %55, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond46
  %56 = phi i1 [ false, %for.cond46 ], [ %cmp51, %land.rhs ]
  br i1 %56, label %for.body52, label %for.end57

for.body52:                                       ; preds = %land.end
  %57 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %X.addr, align 8
  %p53 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %57, i32 0, i32 2
  %58 = load i64*, i64** %p53, align 8
  %59 = load i64, i64* %n, align 8
  %arrayidx54 = getelementptr inbounds i64, i64* %58, i64 %59
  %60 = load i64, i64* %arrayidx54, align 8
  %dec55 = add i64 %60, -1
  store i64 %dec55, i64* %arrayidx54, align 8
  br label %for.inc56

for.inc56:                                        ; preds = %for.body52
  %61 = load i64, i64* %n, align 8
  %inc = add i64 %61, 1
  store i64 %inc, i64* %n, align 8
  br label %for.cond46, !llvm.loop !40

for.end57:                                        ; preds = %land.end
  %62 = load i64, i64* %n, align 8
  %63 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %X.addr, align 8
  %n58 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %63, i32 0, i32 1
  %64 = load i64, i64* %n58, align 8
  %cmp59 = icmp eq i64 %62, %64
  br i1 %cmp59, label %if.then60, label %if.end61

if.then60:                                        ; preds = %for.end57
  store i32 -10, i32* %ret, align 4
  br label %cleanup

if.end61:                                         ; preds = %for.end57
  %65 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %X.addr, align 8
  %p62 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %65, i32 0, i32 2
  %66 = load i64*, i64** %p62, align 8
  %67 = load i64, i64* %n, align 8
  %arrayidx63 = getelementptr inbounds i64, i64* %66, i64 %67
  %68 = load i64, i64* %arrayidx63, align 8
  %dec64 = add i64 %68, -1
  store i64 %dec64, i64* %arrayidx63, align 8
  br label %if.end65

if.end65:                                         ; preds = %if.end61, %if.end39
  %69 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %X.addr, align 8
  %s = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %69, i32 0, i32 0
  store i32 1, i32* %s, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end65, %if.then60, %if.then14, %if.then9
  %70 = load i32, i32* %ret, align 4
  ret i32 %70
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @mpi_sub_hlp(i64 noundef %n, i64* noundef %d, i64* noundef %l, i64* noundef %r) #0 {
entry:
  %n.addr = alloca i64, align 8
  %d.addr = alloca i64*, align 8
  %l.addr = alloca i64*, align 8
  %r.addr = alloca i64*, align 8
  %i = alloca i64, align 8
  %c = alloca i64, align 8
  %t = alloca i64, align 8
  %z = alloca i64, align 8
  store i64 %n, i64* %n.addr, align 8
  store i64* %d, i64** %d.addr, align 8
  store i64* %l, i64** %l.addr, align 8
  store i64* %r, i64** %r.addr, align 8
  store i64 0, i64* %c, align 8
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, i64* %i, align 8
  %1 = load i64, i64* %n.addr, align 8
  %cmp = icmp ult i64 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i64*, i64** %l.addr, align 8
  %3 = load i64, i64* %i, align 8
  %arrayidx = getelementptr inbounds i64, i64* %2, i64 %3
  %4 = load i64, i64* %arrayidx, align 8
  %5 = load i64, i64* %c, align 8
  %cmp1 = icmp ult i64 %4, %5
  %conv = zext i1 %cmp1 to i32
  %conv2 = sext i32 %conv to i64
  store i64 %conv2, i64* %z, align 8
  %6 = load i64*, i64** %l.addr, align 8
  %7 = load i64, i64* %i, align 8
  %arrayidx3 = getelementptr inbounds i64, i64* %6, i64 %7
  %8 = load i64, i64* %arrayidx3, align 8
  %9 = load i64, i64* %c, align 8
  %sub = sub i64 %8, %9
  store i64 %sub, i64* %t, align 8
  %10 = load i64, i64* %t, align 8
  %11 = load i64*, i64** %r.addr, align 8
  %12 = load i64, i64* %i, align 8
  %arrayidx4 = getelementptr inbounds i64, i64* %11, i64 %12
  %13 = load i64, i64* %arrayidx4, align 8
  %cmp5 = icmp ult i64 %10, %13
  %conv6 = zext i1 %cmp5 to i32
  %conv7 = sext i32 %conv6 to i64
  %14 = load i64, i64* %z, align 8
  %add = add i64 %conv7, %14
  store i64 %add, i64* %c, align 8
  %15 = load i64, i64* %t, align 8
  %16 = load i64*, i64** %r.addr, align 8
  %17 = load i64, i64* %i, align 8
  %arrayidx8 = getelementptr inbounds i64, i64* %16, i64 %17
  %18 = load i64, i64* %arrayidx8, align 8
  %sub9 = sub i64 %15, %18
  %19 = load i64*, i64** %d.addr, align 8
  %20 = load i64, i64* %i, align 8
  %arrayidx10 = getelementptr inbounds i64, i64* %19, i64 %20
  store i64 %sub9, i64* %arrayidx10, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %21 = load i64, i64* %i, align 8
  %inc = add i64 %21, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond, !llvm.loop !41

for.end:                                          ; preds = %for.cond
  %22 = load i64, i64* %c, align 8
  ret i64 %22
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_mpi_add_mpi(%struct.mbedtls_mpi* noundef %X, %struct.mbedtls_mpi* noundef %A, %struct.mbedtls_mpi* noundef %B) #0 {
entry:
  %X.addr = alloca %struct.mbedtls_mpi*, align 8
  %A.addr = alloca %struct.mbedtls_mpi*, align 8
  %B.addr = alloca %struct.mbedtls_mpi*, align 8
  %ret = alloca i32, align 4
  %s = alloca i32, align 4
  store %struct.mbedtls_mpi* %X, %struct.mbedtls_mpi** %X.addr, align 8
  store %struct.mbedtls_mpi* %A, %struct.mbedtls_mpi** %A.addr, align 8
  store %struct.mbedtls_mpi* %B, %struct.mbedtls_mpi** %B.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %do.body1

do.body1:                                         ; preds = %do.end
  br label %do.end2

do.end2:                                          ; preds = %do.body1
  br label %do.body3

do.body3:                                         ; preds = %do.end2
  br label %do.end4

do.end4:                                          ; preds = %do.body3
  %0 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %A.addr, align 8
  %s5 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %0, i32 0, i32 0
  %1 = load i32, i32* %s5, align 8
  store i32 %1, i32* %s, align 4
  %2 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %A.addr, align 8
  %s6 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %2, i32 0, i32 0
  %3 = load i32, i32* %s6, align 8
  %4 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %B.addr, align 8
  %s7 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %4, i32 0, i32 0
  %5 = load i32, i32* %s7, align 8
  %mul = mul nsw i32 %3, %5
  %cmp = icmp slt i32 %mul, 0
  br i1 %cmp, label %if.then, label %if.else24

if.then:                                          ; preds = %do.end4
  %6 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %A.addr, align 8
  %7 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %B.addr, align 8
  %call = call i32 @mbedtls_mpi_cmp_abs(%struct.mbedtls_mpi* noundef %6, %struct.mbedtls_mpi* noundef %7) #5
  %cmp8 = icmp sge i32 %call, 0
  br i1 %cmp8, label %if.then9, label %if.else

if.then9:                                         ; preds = %if.then
  br label %do.body10

do.body10:                                        ; preds = %if.then9
  %8 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %X.addr, align 8
  %9 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %A.addr, align 8
  %10 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %B.addr, align 8
  %call11 = call i32 @mbedtls_mpi_sub_abs(%struct.mbedtls_mpi* noundef %8, %struct.mbedtls_mpi* noundef %9, %struct.mbedtls_mpi* noundef %10) #5
  store i32 %call11, i32* %ret, align 4
  %cmp12 = icmp ne i32 %call11, 0
  br i1 %cmp12, label %if.then13, label %if.end

if.then13:                                        ; preds = %do.body10
  br label %cleanup

if.end:                                           ; preds = %do.body10
  br label %do.end14

do.end14:                                         ; preds = %if.end
  %11 = load i32, i32* %s, align 4
  %12 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %X.addr, align 8
  %s15 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %12, i32 0, i32 0
  store i32 %11, i32* %s15, align 8
  br label %if.end23

if.else:                                          ; preds = %if.then
  br label %do.body16

do.body16:                                        ; preds = %if.else
  %13 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %X.addr, align 8
  %14 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %B.addr, align 8
  %15 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %A.addr, align 8
  %call17 = call i32 @mbedtls_mpi_sub_abs(%struct.mbedtls_mpi* noundef %13, %struct.mbedtls_mpi* noundef %14, %struct.mbedtls_mpi* noundef %15) #5
  store i32 %call17, i32* %ret, align 4
  %cmp18 = icmp ne i32 %call17, 0
  br i1 %cmp18, label %if.then19, label %if.end20

if.then19:                                        ; preds = %do.body16
  br label %cleanup

if.end20:                                         ; preds = %do.body16
  br label %do.end21

do.end21:                                         ; preds = %if.end20
  %16 = load i32, i32* %s, align 4
  %sub = sub nsw i32 0, %16
  %17 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %X.addr, align 8
  %s22 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %17, i32 0, i32 0
  store i32 %sub, i32* %s22, align 8
  br label %if.end23

if.end23:                                         ; preds = %do.end21, %do.end14
  br label %if.end32

if.else24:                                        ; preds = %do.end4
  br label %do.body25

do.body25:                                        ; preds = %if.else24
  %18 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %X.addr, align 8
  %19 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %A.addr, align 8
  %20 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %B.addr, align 8
  %call26 = call i32 @mbedtls_mpi_add_abs(%struct.mbedtls_mpi* noundef %18, %struct.mbedtls_mpi* noundef %19, %struct.mbedtls_mpi* noundef %20) #5
  store i32 %call26, i32* %ret, align 4
  %cmp27 = icmp ne i32 %call26, 0
  br i1 %cmp27, label %if.then28, label %if.end29

if.then28:                                        ; preds = %do.body25
  br label %cleanup

if.end29:                                         ; preds = %do.body25
  br label %do.end30

do.end30:                                         ; preds = %if.end29
  %21 = load i32, i32* %s, align 4
  %22 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %X.addr, align 8
  %s31 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %22, i32 0, i32 0
  store i32 %21, i32* %s31, align 8
  br label %if.end32

if.end32:                                         ; preds = %do.end30, %if.end23
  br label %cleanup

cleanup:                                          ; preds = %if.end32, %if.then28, %if.then19, %if.then13
  %23 = load i32, i32* %ret, align 4
  ret i32 %23
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_mpi_sub_mpi(%struct.mbedtls_mpi* noundef %X, %struct.mbedtls_mpi* noundef %A, %struct.mbedtls_mpi* noundef %B) #0 {
entry:
  %X.addr = alloca %struct.mbedtls_mpi*, align 8
  %A.addr = alloca %struct.mbedtls_mpi*, align 8
  %B.addr = alloca %struct.mbedtls_mpi*, align 8
  %ret = alloca i32, align 4
  %s = alloca i32, align 4
  store %struct.mbedtls_mpi* %X, %struct.mbedtls_mpi** %X.addr, align 8
  store %struct.mbedtls_mpi* %A, %struct.mbedtls_mpi** %A.addr, align 8
  store %struct.mbedtls_mpi* %B, %struct.mbedtls_mpi** %B.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %do.body1

do.body1:                                         ; preds = %do.end
  br label %do.end2

do.end2:                                          ; preds = %do.body1
  br label %do.body3

do.body3:                                         ; preds = %do.end2
  br label %do.end4

do.end4:                                          ; preds = %do.body3
  %0 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %A.addr, align 8
  %s5 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %0, i32 0, i32 0
  %1 = load i32, i32* %s5, align 8
  store i32 %1, i32* %s, align 4
  %2 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %A.addr, align 8
  %s6 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %2, i32 0, i32 0
  %3 = load i32, i32* %s6, align 8
  %4 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %B.addr, align 8
  %s7 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %4, i32 0, i32 0
  %5 = load i32, i32* %s7, align 8
  %mul = mul nsw i32 %3, %5
  %cmp = icmp sgt i32 %mul, 0
  br i1 %cmp, label %if.then, label %if.else24

if.then:                                          ; preds = %do.end4
  %6 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %A.addr, align 8
  %7 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %B.addr, align 8
  %call = call i32 @mbedtls_mpi_cmp_abs(%struct.mbedtls_mpi* noundef %6, %struct.mbedtls_mpi* noundef %7) #5
  %cmp8 = icmp sge i32 %call, 0
  br i1 %cmp8, label %if.then9, label %if.else

if.then9:                                         ; preds = %if.then
  br label %do.body10

do.body10:                                        ; preds = %if.then9
  %8 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %X.addr, align 8
  %9 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %A.addr, align 8
  %10 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %B.addr, align 8
  %call11 = call i32 @mbedtls_mpi_sub_abs(%struct.mbedtls_mpi* noundef %8, %struct.mbedtls_mpi* noundef %9, %struct.mbedtls_mpi* noundef %10) #5
  store i32 %call11, i32* %ret, align 4
  %cmp12 = icmp ne i32 %call11, 0
  br i1 %cmp12, label %if.then13, label %if.end

if.then13:                                        ; preds = %do.body10
  br label %cleanup

if.end:                                           ; preds = %do.body10
  br label %do.end14

do.end14:                                         ; preds = %if.end
  %11 = load i32, i32* %s, align 4
  %12 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %X.addr, align 8
  %s15 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %12, i32 0, i32 0
  store i32 %11, i32* %s15, align 8
  br label %if.end23

if.else:                                          ; preds = %if.then
  br label %do.body16

do.body16:                                        ; preds = %if.else
  %13 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %X.addr, align 8
  %14 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %B.addr, align 8
  %15 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %A.addr, align 8
  %call17 = call i32 @mbedtls_mpi_sub_abs(%struct.mbedtls_mpi* noundef %13, %struct.mbedtls_mpi* noundef %14, %struct.mbedtls_mpi* noundef %15) #5
  store i32 %call17, i32* %ret, align 4
  %cmp18 = icmp ne i32 %call17, 0
  br i1 %cmp18, label %if.then19, label %if.end20

if.then19:                                        ; preds = %do.body16
  br label %cleanup

if.end20:                                         ; preds = %do.body16
  br label %do.end21

do.end21:                                         ; preds = %if.end20
  %16 = load i32, i32* %s, align 4
  %sub = sub nsw i32 0, %16
  %17 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %X.addr, align 8
  %s22 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %17, i32 0, i32 0
  store i32 %sub, i32* %s22, align 8
  br label %if.end23

if.end23:                                         ; preds = %do.end21, %do.end14
  br label %if.end32

if.else24:                                        ; preds = %do.end4
  br label %do.body25

do.body25:                                        ; preds = %if.else24
  %18 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %X.addr, align 8
  %19 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %A.addr, align 8
  %20 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %B.addr, align 8
  %call26 = call i32 @mbedtls_mpi_add_abs(%struct.mbedtls_mpi* noundef %18, %struct.mbedtls_mpi* noundef %19, %struct.mbedtls_mpi* noundef %20) #5
  store i32 %call26, i32* %ret, align 4
  %cmp27 = icmp ne i32 %call26, 0
  br i1 %cmp27, label %if.then28, label %if.end29

if.then28:                                        ; preds = %do.body25
  br label %cleanup

if.end29:                                         ; preds = %do.body25
  br label %do.end30

do.end30:                                         ; preds = %if.end29
  %21 = load i32, i32* %s, align 4
  %22 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %X.addr, align 8
  %s31 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %22, i32 0, i32 0
  store i32 %21, i32* %s31, align 8
  br label %if.end32

if.end32:                                         ; preds = %do.end30, %if.end23
  br label %cleanup

cleanup:                                          ; preds = %if.end32, %if.then28, %if.then19, %if.then13
  %23 = load i32, i32* %ret, align 4
  ret i32 %23
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_mpi_sub_int(%struct.mbedtls_mpi* noundef %X, %struct.mbedtls_mpi* noundef %A, i64 noundef %b) #0 {
entry:
  %X.addr = alloca %struct.mbedtls_mpi*, align 8
  %A.addr = alloca %struct.mbedtls_mpi*, align 8
  %b.addr = alloca i64, align 8
  %B = alloca %struct.mbedtls_mpi, align 8
  %p = alloca [1 x i64], align 8
  store %struct.mbedtls_mpi* %X, %struct.mbedtls_mpi** %X.addr, align 8
  store %struct.mbedtls_mpi* %A, %struct.mbedtls_mpi** %A.addr, align 8
  store i64 %b, i64* %b.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %do.body1

do.body1:                                         ; preds = %do.end
  br label %do.end2

do.end2:                                          ; preds = %do.body1
  %0 = load i64, i64* %b.addr, align 8
  %cmp = icmp slt i64 %0, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %do.end2
  %1 = load i64, i64* %b.addr, align 8
  %sub = sub nsw i64 0, %1
  br label %cond.end

cond.false:                                       ; preds = %do.end2
  %2 = load i64, i64* %b.addr, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %sub, %cond.true ], [ %2, %cond.false ]
  %arrayidx = getelementptr inbounds [1 x i64], [1 x i64]* %p, i64 0, i64 0
  store i64 %cond, i64* %arrayidx, align 8
  %3 = load i64, i64* %b.addr, align 8
  %cmp3 = icmp slt i64 %3, 0
  %4 = zext i1 %cmp3 to i64
  %cond4 = select i1 %cmp3, i32 -1, i32 1
  %s = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %B, i32 0, i32 0
  store i32 %cond4, i32* %s, align 8
  %n = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %B, i32 0, i32 1
  store i64 1, i64* %n, align 8
  %arraydecay = getelementptr inbounds [1 x i64], [1 x i64]* %p, i64 0, i64 0
  %p5 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %B, i32 0, i32 2
  store i64* %arraydecay, i64** %p5, align 8
  %5 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %X.addr, align 8
  %6 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %A.addr, align 8
  %call = call i32 @mbedtls_mpi_sub_mpi(%struct.mbedtls_mpi* noundef %5, %struct.mbedtls_mpi* noundef %6, %struct.mbedtls_mpi* noundef %B) #5
  ret i32 %call
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @mbedtls_mpi_core_mla(i64* noundef %d, i64 noundef %d_len, i64* noundef %s, i64 noundef %s_len, i64 noundef %b) #0 {
entry:
  %d.addr = alloca i64*, align 8
  %d_len.addr = alloca i64, align 8
  %s.addr = alloca i64*, align 8
  %s_len.addr = alloca i64, align 8
  %b.addr = alloca i64, align 8
  %c = alloca i64, align 8
  %excess_len = alloca i64, align 8
  %steps_x8 = alloca i64, align 8
  %steps_x1 = alloca i64, align 8
  store i64* %d, i64** %d.addr, align 8
  store i64 %d_len, i64* %d_len.addr, align 8
  store i64* %s, i64** %s.addr, align 8
  store i64 %s_len, i64* %s_len.addr, align 8
  store i64 %b, i64* %b.addr, align 8
  store i64 0, i64* %c, align 8
  %0 = load i64, i64* %d_len.addr, align 8
  %1 = load i64, i64* %s_len.addr, align 8
  %sub = sub i64 %0, %1
  store i64 %sub, i64* %excess_len, align 8
  %2 = load i64, i64* %s_len.addr, align 8
  %div = udiv i64 %2, 8
  store i64 %div, i64* %steps_x8, align 8
  %3 = load i64, i64* %s_len.addr, align 8
  %and = and i64 %3, 7
  store i64 %and, i64* %steps_x1, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %4 = load i64, i64* %steps_x8, align 8
  %dec = add i64 %4, -1
  store i64 %dec, i64* %steps_x8, align 8
  %tobool = icmp ne i64 %4, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %5 = load i64, i64* %c, align 8
  %6 = load i64*, i64** %d.addr, align 8
  %7 = load i64*, i64** %s.addr, align 8
  %8 = load i64*, i64** %d.addr, align 8
  %9 = bitcast i64* %8 to [16 x i64]*
  %10 = load i64, i64* %b.addr, align 8
  %11 = load i64*, i64** %s.addr, align 8
  %12 = bitcast i64* %11 to [16 x i64]*
  %13 = call { i64, i64*, i64* } asm "xorq   %r8, %r8\0Amovq   (%rsi), %rax\0Amulq   %rbx\0Aaddq   $$8, %rsi\0Aaddq   %rcx, %rax\0Amovq   %r8, %rcx\0Aadcq   $$0, %rdx\0Anop    \0Aaddq   %rax, (%rdi)\0Aadcq   %rdx, %rcx\0Aaddq   $$8, %rdi\0Amovq   (%rsi), %rax\0Amulq   %rbx\0Aaddq   $$8, %rsi\0Aaddq   %rcx, %rax\0Amovq   %r8, %rcx\0Aadcq   $$0, %rdx\0Anop    \0Aaddq   %rax, (%rdi)\0Aadcq   %rdx, %rcx\0Aaddq   $$8, %rdi\0Amovq   (%rsi), %rax\0Amulq   %rbx\0Aaddq   $$8, %rsi\0Aaddq   %rcx, %rax\0Amovq   %r8, %rcx\0Aadcq   $$0, %rdx\0Anop    \0Aaddq   %rax, (%rdi)\0Aadcq   %rdx, %rcx\0Aaddq   $$8, %rdi\0Amovq   (%rsi), %rax\0Amulq   %rbx\0Aaddq   $$8, %rsi\0Aaddq   %rcx, %rax\0Amovq   %r8, %rcx\0Aadcq   $$0, %rdx\0Anop    \0Aaddq   %rax, (%rdi)\0Aadcq   %rdx, %rcx\0Aaddq   $$8, %rdi\0Amovq   (%rsi), %rax\0Amulq   %rbx\0Aaddq   $$8, %rsi\0Aaddq   %rcx, %rax\0Amovq   %r8, %rcx\0Aadcq   $$0, %rdx\0Anop    \0Aaddq   %rax, (%rdi)\0Aadcq   %rdx, %rcx\0Aaddq   $$8, %rdi\0Amovq   (%rsi), %rax\0Amulq   %rbx\0Aaddq   $$8, %rsi\0Aaddq   %rcx, %rax\0Amovq   %r8, %rcx\0Aadcq   $$0, %rdx\0Anop    \0Aaddq   %rax, (%rdi)\0Aadcq   %rdx, %rcx\0Aaddq   $$8, %rdi\0Amovq   (%rsi), %rax\0Amulq   %rbx\0Aaddq   $$8, %rsi\0Aaddq   %rcx, %rax\0Amovq   %r8, %rcx\0Aadcq   $$0, %rdx\0Anop    \0Aaddq   %rax, (%rdi)\0Aadcq   %rdx, %rcx\0Aaddq   $$8, %rdi\0Amovq   (%rsi), %rax\0Amulq   %rbx\0Aaddq   $$8, %rsi\0Aaddq   %rcx, %rax\0Amovq   %r8, %rcx\0Aadcq   $$0, %rdx\0Anop    \0Aaddq   %rax, (%rdi)\0Aadcq   %rdx, %rcx\0Aaddq   $$8, %rdi\0A", "={cx},={di},={si},=*m,{bx},*m,0,1,2,*m,~{rax},~{rdx},~{r8},~{dirflag},~{fpsr},~{flags}"([16 x i64]* elementtype([16 x i64]) %9, i64 %10, [16 x i64]* elementtype([16 x i64]) %12, i64 %5, i64* %6, i64* %7, [16 x i64]* elementtype([16 x i64]) %9) #8, !srcloc !42
  %asmresult = extractvalue { i64, i64*, i64* } %13, 0
  %asmresult1 = extractvalue { i64, i64*, i64* } %13, 1
  %asmresult2 = extractvalue { i64, i64*, i64* } %13, 2
  store i64 %asmresult, i64* %c, align 8
  store i64* %asmresult1, i64** %d.addr, align 8
  store i64* %asmresult2, i64** %s.addr, align 8
  br label %while.cond, !llvm.loop !43

while.end:                                        ; preds = %while.cond
  br label %while.cond3

while.cond3:                                      ; preds = %while.body6, %while.end
  %14 = load i64, i64* %steps_x1, align 8
  %dec4 = add i64 %14, -1
  store i64 %dec4, i64* %steps_x1, align 8
  %tobool5 = icmp ne i64 %14, 0
  br i1 %tobool5, label %while.body6, label %while.end10

while.body6:                                      ; preds = %while.cond3
  %15 = load i64, i64* %c, align 8
  %16 = load i64*, i64** %d.addr, align 8
  %17 = load i64*, i64** %s.addr, align 8
  %18 = load i64*, i64** %d.addr, align 8
  %19 = bitcast i64* %18 to [16 x i64]*
  %20 = load i64, i64* %b.addr, align 8
  %21 = load i64*, i64** %s.addr, align 8
  %22 = bitcast i64* %21 to [16 x i64]*
  %23 = call { i64, i64*, i64* } asm "xorq   %r8, %r8\0Amovq   (%rsi), %rax\0Amulq   %rbx\0Aaddq   $$8, %rsi\0Aaddq   %rcx, %rax\0Amovq   %r8, %rcx\0Aadcq   $$0, %rdx\0Anop    \0Aaddq   %rax, (%rdi)\0Aadcq   %rdx, %rcx\0Aaddq   $$8, %rdi\0A", "={cx},={di},={si},=*m,{bx},*m,0,1,2,*m,~{rax},~{rdx},~{r8},~{dirflag},~{fpsr},~{flags}"([16 x i64]* elementtype([16 x i64]) %19, i64 %20, [16 x i64]* elementtype([16 x i64]) %22, i64 %15, i64* %16, i64* %17, [16 x i64]* elementtype([16 x i64]) %19) #8, !srcloc !44
  %asmresult7 = extractvalue { i64, i64*, i64* } %23, 0
  %asmresult8 = extractvalue { i64, i64*, i64* } %23, 1
  %asmresult9 = extractvalue { i64, i64*, i64* } %23, 2
  store i64 %asmresult7, i64* %c, align 8
  store i64* %asmresult8, i64** %d.addr, align 8
  store i64* %asmresult9, i64** %s.addr, align 8
  br label %while.cond3, !llvm.loop !45

while.end10:                                      ; preds = %while.cond3
  br label %while.cond11

while.cond11:                                     ; preds = %while.body14, %while.end10
  %24 = load i64, i64* %excess_len, align 8
  %dec12 = add i64 %24, -1
  store i64 %dec12, i64* %excess_len, align 8
  %tobool13 = icmp ne i64 %24, 0
  br i1 %tobool13, label %while.body14, label %while.end16

while.body14:                                     ; preds = %while.cond11
  %25 = load i64, i64* %c, align 8
  %26 = load i64*, i64** %d.addr, align 8
  %27 = load i64, i64* %26, align 8
  %add = add i64 %27, %25
  store i64 %add, i64* %26, align 8
  %28 = load i64*, i64** %d.addr, align 8
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* %c, align 8
  %cmp = icmp ult i64 %29, %30
  %conv = zext i1 %cmp to i32
  %conv15 = sext i32 %conv to i64
  store i64 %conv15, i64* %c, align 8
  %31 = load i64*, i64** %d.addr, align 8
  %incdec.ptr = getelementptr inbounds i64, i64* %31, i32 1
  store i64* %incdec.ptr, i64** %d.addr, align 8
  br label %while.cond11, !llvm.loop !46

while.end16:                                      ; preds = %while.cond11
  %32 = load i64, i64* %c, align 8
  ret i64 %32
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_mpi_mul_mpi(%struct.mbedtls_mpi* noundef %X, %struct.mbedtls_mpi* noundef %A, %struct.mbedtls_mpi* noundef %B) #0 {
entry:
  %X.addr = alloca %struct.mbedtls_mpi*, align 8
  %A.addr = alloca %struct.mbedtls_mpi*, align 8
  %B.addr = alloca %struct.mbedtls_mpi*, align 8
  %ret = alloca i32, align 4
  %i = alloca i64, align 8
  %j = alloca i64, align 8
  %TA = alloca %struct.mbedtls_mpi, align 8
  %TB = alloca %struct.mbedtls_mpi, align 8
  %result_is_zero = alloca i32, align 4
  %k = alloca i64, align 8
  store %struct.mbedtls_mpi* %X, %struct.mbedtls_mpi** %X.addr, align 8
  store %struct.mbedtls_mpi* %A, %struct.mbedtls_mpi** %A.addr, align 8
  store %struct.mbedtls_mpi* %B, %struct.mbedtls_mpi** %B.addr, align 8
  store i32 -110, i32* %ret, align 4
  store i32 0, i32* %result_is_zero, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %do.body1

do.body1:                                         ; preds = %do.end
  br label %do.end2

do.end2:                                          ; preds = %do.body1
  br label %do.body3

do.body3:                                         ; preds = %do.end2
  br label %do.end4

do.end4:                                          ; preds = %do.body3
  call void @mbedtls_mpi_init(%struct.mbedtls_mpi* noundef %TA) #5
  call void @mbedtls_mpi_init(%struct.mbedtls_mpi* noundef %TB) #5
  %0 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %X.addr, align 8
  %1 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %A.addr, align 8
  %cmp = icmp eq %struct.mbedtls_mpi* %0, %1
  br i1 %cmp, label %if.then, label %if.end9

if.then:                                          ; preds = %do.end4
  br label %do.body5

do.body5:                                         ; preds = %if.then
  %2 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %A.addr, align 8
  %call = call i32 @mbedtls_mpi_copy(%struct.mbedtls_mpi* noundef %TA, %struct.mbedtls_mpi* noundef %2) #5
  store i32 %call, i32* %ret, align 4
  %cmp6 = icmp ne i32 %call, 0
  br i1 %cmp6, label %if.then7, label %if.end

if.then7:                                         ; preds = %do.body5
  br label %cleanup

if.end:                                           ; preds = %do.body5
  br label %do.end8

do.end8:                                          ; preds = %if.end
  store %struct.mbedtls_mpi* %TA, %struct.mbedtls_mpi** %A.addr, align 8
  br label %if.end9

if.end9:                                          ; preds = %do.end8, %do.end4
  %3 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %X.addr, align 8
  %4 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %B.addr, align 8
  %cmp10 = icmp eq %struct.mbedtls_mpi* %3, %4
  br i1 %cmp10, label %if.then11, label %if.end18

if.then11:                                        ; preds = %if.end9
  br label %do.body12

do.body12:                                        ; preds = %if.then11
  %5 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %B.addr, align 8
  %call13 = call i32 @mbedtls_mpi_copy(%struct.mbedtls_mpi* noundef %TB, %struct.mbedtls_mpi* noundef %5) #5
  store i32 %call13, i32* %ret, align 4
  %cmp14 = icmp ne i32 %call13, 0
  br i1 %cmp14, label %if.then15, label %if.end16

if.then15:                                        ; preds = %do.body12
  br label %cleanup

if.end16:                                         ; preds = %do.body12
  br label %do.end17

do.end17:                                         ; preds = %if.end16
  store %struct.mbedtls_mpi* %TB, %struct.mbedtls_mpi** %B.addr, align 8
  br label %if.end18

if.end18:                                         ; preds = %do.end17, %if.end9
  %6 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %A.addr, align 8
  %n = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %6, i32 0, i32 1
  %7 = load i64, i64* %n, align 8
  store i64 %7, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end18
  %8 = load i64, i64* %i, align 8
  %cmp19 = icmp ugt i64 %8, 0
  br i1 %cmp19, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %A.addr, align 8
  %p = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %9, i32 0, i32 2
  %10 = load i64*, i64** %p, align 8
  %11 = load i64, i64* %i, align 8
  %sub = sub i64 %11, 1
  %arrayidx = getelementptr inbounds i64, i64* %10, i64 %sub
  %12 = load i64, i64* %arrayidx, align 8
  %cmp20 = icmp ne i64 %12, 0
  br i1 %cmp20, label %if.then21, label %if.end22

if.then21:                                        ; preds = %for.body
  br label %for.end

if.end22:                                         ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end22
  %13 = load i64, i64* %i, align 8
  %dec = add i64 %13, -1
  store i64 %dec, i64* %i, align 8
  br label %for.cond, !llvm.loop !47

for.end:                                          ; preds = %if.then21, %for.cond
  %14 = load i64, i64* %i, align 8
  %cmp23 = icmp eq i64 %14, 0
  br i1 %cmp23, label %if.then24, label %if.end25

if.then24:                                        ; preds = %for.end
  store i32 1, i32* %result_is_zero, align 4
  br label %if.end25

if.end25:                                         ; preds = %if.then24, %for.end
  %15 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %B.addr, align 8
  %n26 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %15, i32 0, i32 1
  %16 = load i64, i64* %n26, align 8
  store i64 %16, i64* %j, align 8
  br label %for.cond27

for.cond27:                                       ; preds = %for.inc36, %if.end25
  %17 = load i64, i64* %j, align 8
  %cmp28 = icmp ugt i64 %17, 0
  br i1 %cmp28, label %for.body29, label %for.end38

for.body29:                                       ; preds = %for.cond27
  %18 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %B.addr, align 8
  %p30 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %18, i32 0, i32 2
  %19 = load i64*, i64** %p30, align 8
  %20 = load i64, i64* %j, align 8
  %sub31 = sub i64 %20, 1
  %arrayidx32 = getelementptr inbounds i64, i64* %19, i64 %sub31
  %21 = load i64, i64* %arrayidx32, align 8
  %cmp33 = icmp ne i64 %21, 0
  br i1 %cmp33, label %if.then34, label %if.end35

if.then34:                                        ; preds = %for.body29
  br label %for.end38

if.end35:                                         ; preds = %for.body29
  br label %for.inc36

for.inc36:                                        ; preds = %if.end35
  %22 = load i64, i64* %j, align 8
  %dec37 = add i64 %22, -1
  store i64 %dec37, i64* %j, align 8
  br label %for.cond27, !llvm.loop !48

for.end38:                                        ; preds = %if.then34, %for.cond27
  %23 = load i64, i64* %j, align 8
  %cmp39 = icmp eq i64 %23, 0
  br i1 %cmp39, label %if.then40, label %if.end41

if.then40:                                        ; preds = %for.end38
  store i32 1, i32* %result_is_zero, align 4
  br label %if.end41

if.end41:                                         ; preds = %if.then40, %for.end38
  br label %do.body42

do.body42:                                        ; preds = %if.end41
  %24 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %X.addr, align 8
  %25 = load i64, i64* %i, align 8
  %26 = load i64, i64* %j, align 8
  %add = add i64 %25, %26
  %call43 = call i32 @mbedtls_mpi_grow(%struct.mbedtls_mpi* noundef %24, i64 noundef %add) #5
  store i32 %call43, i32* %ret, align 4
  %cmp44 = icmp ne i32 %call43, 0
  br i1 %cmp44, label %if.then45, label %if.end46

if.then45:                                        ; preds = %do.body42
  br label %cleanup

if.end46:                                         ; preds = %do.body42
  br label %do.end47

do.end47:                                         ; preds = %if.end46
  br label %do.body48

do.body48:                                        ; preds = %do.end47
  %27 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %X.addr, align 8
  %call49 = call i32 @mbedtls_mpi_lset(%struct.mbedtls_mpi* noundef %27, i64 noundef 0) #5
  store i32 %call49, i32* %ret, align 4
  %cmp50 = icmp ne i32 %call49, 0
  br i1 %cmp50, label %if.then51, label %if.end52

if.then51:                                        ; preds = %do.body48
  br label %cleanup

if.end52:                                         ; preds = %do.body48
  br label %do.end53

do.end53:                                         ; preds = %if.end52
  store i64 0, i64* %k, align 8
  br label %for.cond54

for.cond54:                                       ; preds = %for.inc63, %do.end53
  %28 = load i64, i64* %k, align 8
  %29 = load i64, i64* %j, align 8
  %cmp55 = icmp ult i64 %28, %29
  br i1 %cmp55, label %for.body56, label %for.end64

for.body56:                                       ; preds = %for.cond54
  %30 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %X.addr, align 8
  %p57 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %30, i32 0, i32 2
  %31 = load i64*, i64** %p57, align 8
  %32 = load i64, i64* %k, align 8
  %add.ptr = getelementptr inbounds i64, i64* %31, i64 %32
  %33 = load i64, i64* %i, align 8
  %add58 = add i64 %33, 1
  %34 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %A.addr, align 8
  %p59 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %34, i32 0, i32 2
  %35 = load i64*, i64** %p59, align 8
  %36 = load i64, i64* %i, align 8
  %37 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %B.addr, align 8
  %p60 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %37, i32 0, i32 2
  %38 = load i64*, i64** %p60, align 8
  %39 = load i64, i64* %k, align 8
  %arrayidx61 = getelementptr inbounds i64, i64* %38, i64 %39
  %40 = load i64, i64* %arrayidx61, align 8
  %call62 = call i64 @mbedtls_mpi_core_mla(i64* noundef %add.ptr, i64 noundef %add58, i64* noundef %35, i64 noundef %36, i64 noundef %40) #5
  br label %for.inc63

for.inc63:                                        ; preds = %for.body56
  %41 = load i64, i64* %k, align 8
  %inc = add i64 %41, 1
  store i64 %inc, i64* %k, align 8
  br label %for.cond54, !llvm.loop !49

for.end64:                                        ; preds = %for.cond54
  %42 = load i32, i32* %result_is_zero, align 4
  %tobool = icmp ne i32 %42, 0
  br i1 %tobool, label %if.then65, label %if.else

if.then65:                                        ; preds = %for.end64
  %43 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %X.addr, align 8
  %s = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %43, i32 0, i32 0
  store i32 1, i32* %s, align 8
  br label %if.end69

if.else:                                          ; preds = %for.end64
  %44 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %A.addr, align 8
  %s66 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %44, i32 0, i32 0
  %45 = load i32, i32* %s66, align 8
  %46 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %B.addr, align 8
  %s67 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %46, i32 0, i32 0
  %47 = load i32, i32* %s67, align 8
  %mul = mul nsw i32 %45, %47
  %48 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %X.addr, align 8
  %s68 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %48, i32 0, i32 0
  store i32 %mul, i32* %s68, align 8
  br label %if.end69

if.end69:                                         ; preds = %if.else, %if.then65
  br label %cleanup

cleanup:                                          ; preds = %if.end69, %if.then51, %if.then45, %if.then15, %if.then7
  call void @mbedtls_mpi_free(%struct.mbedtls_mpi* noundef %TB) #5
  call void @mbedtls_mpi_free(%struct.mbedtls_mpi* noundef %TA) #5
  %49 = load i32, i32* %ret, align 4
  ret i32 %49
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_mpi_div_mpi(%struct.mbedtls_mpi* noundef %Q, %struct.mbedtls_mpi* noundef %R, %struct.mbedtls_mpi* noundef %A, %struct.mbedtls_mpi* noundef %B) #0 {
entry:
  %retval = alloca i32, align 4
  %Q.addr = alloca %struct.mbedtls_mpi*, align 8
  %R.addr = alloca %struct.mbedtls_mpi*, align 8
  %A.addr = alloca %struct.mbedtls_mpi*, align 8
  %B.addr = alloca %struct.mbedtls_mpi*, align 8
  %ret = alloca i32, align 4
  %i = alloca i64, align 8
  %n = alloca i64, align 8
  %t = alloca i64, align 8
  %k = alloca i64, align 8
  %X = alloca %struct.mbedtls_mpi, align 8
  %Y = alloca %struct.mbedtls_mpi, align 8
  %Z = alloca %struct.mbedtls_mpi, align 8
  %T1 = alloca %struct.mbedtls_mpi, align 8
  %T2 = alloca %struct.mbedtls_mpi, align 8
  %TP2 = alloca [3 x i64], align 16
  store %struct.mbedtls_mpi* %Q, %struct.mbedtls_mpi** %Q.addr, align 8
  store %struct.mbedtls_mpi* %R, %struct.mbedtls_mpi** %R.addr, align 8
  store %struct.mbedtls_mpi* %A, %struct.mbedtls_mpi** %A.addr, align 8
  store %struct.mbedtls_mpi* %B, %struct.mbedtls_mpi** %B.addr, align 8
  store i32 -110, i32* %ret, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %do.body1

do.body1:                                         ; preds = %do.end
  br label %do.end2

do.end2:                                          ; preds = %do.body1
  %0 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %B.addr, align 8
  %call = call i32 @mbedtls_mpi_cmp_int(%struct.mbedtls_mpi* noundef %0, i64 noundef 0) #5
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.end2
  store i32 -12, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %do.end2
  call void @mbedtls_mpi_init(%struct.mbedtls_mpi* noundef %X) #5
  call void @mbedtls_mpi_init(%struct.mbedtls_mpi* noundef %Y) #5
  call void @mbedtls_mpi_init(%struct.mbedtls_mpi* noundef %Z) #5
  call void @mbedtls_mpi_init(%struct.mbedtls_mpi* noundef %T1) #5
  %s = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %T2, i32 0, i32 0
  store i32 1, i32* %s, align 8
  %n3 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %T2, i32 0, i32 1
  store i64 3, i64* %n3, align 8
  %arraydecay = getelementptr inbounds [3 x i64], [3 x i64]* %TP2, i64 0, i64 0
  %p = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %T2, i32 0, i32 2
  store i64* %arraydecay, i64** %p, align 8
  %1 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %A.addr, align 8
  %2 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %B.addr, align 8
  %call4 = call i32 @mbedtls_mpi_cmp_abs(%struct.mbedtls_mpi* noundef %1, %struct.mbedtls_mpi* noundef %2) #5
  %cmp5 = icmp slt i32 %call4, 0
  br i1 %cmp5, label %if.then6, label %if.end25

if.then6:                                         ; preds = %if.end
  %3 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %Q.addr, align 8
  %cmp7 = icmp ne %struct.mbedtls_mpi* %3, null
  br i1 %cmp7, label %if.then8, label %if.end15

if.then8:                                         ; preds = %if.then6
  br label %do.body9

do.body9:                                         ; preds = %if.then8
  %4 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %Q.addr, align 8
  %call10 = call i32 @mbedtls_mpi_lset(%struct.mbedtls_mpi* noundef %4, i64 noundef 0) #5
  store i32 %call10, i32* %ret, align 4
  %cmp11 = icmp ne i32 %call10, 0
  br i1 %cmp11, label %if.then12, label %if.end13

if.then12:                                        ; preds = %do.body9
  br label %cleanup

if.end13:                                         ; preds = %do.body9
  br label %do.end14

do.end14:                                         ; preds = %if.end13
  br label %if.end15

if.end15:                                         ; preds = %do.end14, %if.then6
  %5 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %R.addr, align 8
  %cmp16 = icmp ne %struct.mbedtls_mpi* %5, null
  br i1 %cmp16, label %if.then17, label %if.end24

if.then17:                                        ; preds = %if.end15
  br label %do.body18

do.body18:                                        ; preds = %if.then17
  %6 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %R.addr, align 8
  %7 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %A.addr, align 8
  %call19 = call i32 @mbedtls_mpi_copy(%struct.mbedtls_mpi* noundef %6, %struct.mbedtls_mpi* noundef %7) #5
  store i32 %call19, i32* %ret, align 4
  %cmp20 = icmp ne i32 %call19, 0
  br i1 %cmp20, label %if.then21, label %if.end22

if.then21:                                        ; preds = %do.body18
  br label %cleanup

if.end22:                                         ; preds = %do.body18
  br label %do.end23

do.end23:                                         ; preds = %if.end22
  br label %if.end24

if.end24:                                         ; preds = %do.end23, %if.end15
  store i32 0, i32* %retval, align 4
  br label %return

if.end25:                                         ; preds = %if.end
  br label %do.body26

do.body26:                                        ; preds = %if.end25
  %8 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %A.addr, align 8
  %call27 = call i32 @mbedtls_mpi_copy(%struct.mbedtls_mpi* noundef %X, %struct.mbedtls_mpi* noundef %8) #5
  store i32 %call27, i32* %ret, align 4
  %cmp28 = icmp ne i32 %call27, 0
  br i1 %cmp28, label %if.then29, label %if.end30

if.then29:                                        ; preds = %do.body26
  br label %cleanup

if.end30:                                         ; preds = %do.body26
  br label %do.end31

do.end31:                                         ; preds = %if.end30
  br label %do.body32

do.body32:                                        ; preds = %do.end31
  %9 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %B.addr, align 8
  %call33 = call i32 @mbedtls_mpi_copy(%struct.mbedtls_mpi* noundef %Y, %struct.mbedtls_mpi* noundef %9) #5
  store i32 %call33, i32* %ret, align 4
  %cmp34 = icmp ne i32 %call33, 0
  br i1 %cmp34, label %if.then35, label %if.end36

if.then35:                                        ; preds = %do.body32
  br label %cleanup

if.end36:                                         ; preds = %do.body32
  br label %do.end37

do.end37:                                         ; preds = %if.end36
  %s38 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %Y, i32 0, i32 0
  store i32 1, i32* %s38, align 8
  %s39 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %X, i32 0, i32 0
  store i32 1, i32* %s39, align 8
  br label %do.body40

do.body40:                                        ; preds = %do.end37
  %10 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %A.addr, align 8
  %n41 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %10, i32 0, i32 1
  %11 = load i64, i64* %n41, align 8
  %add = add i64 %11, 2
  %call42 = call i32 @mbedtls_mpi_grow(%struct.mbedtls_mpi* noundef %Z, i64 noundef %add) #5
  store i32 %call42, i32* %ret, align 4
  %cmp43 = icmp ne i32 %call42, 0
  br i1 %cmp43, label %if.then44, label %if.end45

if.then44:                                        ; preds = %do.body40
  br label %cleanup

if.end45:                                         ; preds = %do.body40
  br label %do.end46

do.end46:                                         ; preds = %if.end45
  br label %do.body47

do.body47:                                        ; preds = %do.end46
  %call48 = call i32 @mbedtls_mpi_lset(%struct.mbedtls_mpi* noundef %Z, i64 noundef 0) #5
  store i32 %call48, i32* %ret, align 4
  %cmp49 = icmp ne i32 %call48, 0
  br i1 %cmp49, label %if.then50, label %if.end51

if.then50:                                        ; preds = %do.body47
  br label %cleanup

if.end51:                                         ; preds = %do.body47
  br label %do.end52

do.end52:                                         ; preds = %if.end51
  br label %do.body53

do.body53:                                        ; preds = %do.end52
  %12 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %A.addr, align 8
  %n54 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %12, i32 0, i32 1
  %13 = load i64, i64* %n54, align 8
  %add55 = add i64 %13, 2
  %call56 = call i32 @mbedtls_mpi_grow(%struct.mbedtls_mpi* noundef %T1, i64 noundef %add55) #5
  store i32 %call56, i32* %ret, align 4
  %cmp57 = icmp ne i32 %call56, 0
  br i1 %cmp57, label %if.then58, label %if.end59

if.then58:                                        ; preds = %do.body53
  br label %cleanup

if.end59:                                         ; preds = %do.body53
  br label %do.end60

do.end60:                                         ; preds = %if.end59
  %call61 = call i64 @mbedtls_mpi_bitlen(%struct.mbedtls_mpi* noundef %Y) #5
  %rem = urem i64 %call61, 64
  store i64 %rem, i64* %k, align 8
  %14 = load i64, i64* %k, align 8
  %cmp62 = icmp ult i64 %14, 63
  br i1 %cmp62, label %if.then63, label %if.else

if.then63:                                        ; preds = %do.end60
  %15 = load i64, i64* %k, align 8
  %sub = sub i64 63, %15
  store i64 %sub, i64* %k, align 8
  br label %do.body64

do.body64:                                        ; preds = %if.then63
  %16 = load i64, i64* %k, align 8
  %call65 = call i32 @mbedtls_mpi_shift_l(%struct.mbedtls_mpi* noundef %X, i64 noundef %16) #5
  store i32 %call65, i32* %ret, align 4
  %cmp66 = icmp ne i32 %call65, 0
  br i1 %cmp66, label %if.then67, label %if.end68

if.then67:                                        ; preds = %do.body64
  br label %cleanup

if.end68:                                         ; preds = %do.body64
  br label %do.end69

do.end69:                                         ; preds = %if.end68
  br label %do.body70

do.body70:                                        ; preds = %do.end69
  %17 = load i64, i64* %k, align 8
  %call71 = call i32 @mbedtls_mpi_shift_l(%struct.mbedtls_mpi* noundef %Y, i64 noundef %17) #5
  store i32 %call71, i32* %ret, align 4
  %cmp72 = icmp ne i32 %call71, 0
  br i1 %cmp72, label %if.then73, label %if.end74

if.then73:                                        ; preds = %do.body70
  br label %cleanup

if.end74:                                         ; preds = %do.body70
  br label %do.end75

do.end75:                                         ; preds = %if.end74
  br label %if.end76

if.else:                                          ; preds = %do.end60
  store i64 0, i64* %k, align 8
  br label %if.end76

if.end76:                                         ; preds = %if.else, %do.end75
  %n77 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %X, i32 0, i32 1
  %18 = load i64, i64* %n77, align 8
  %sub78 = sub i64 %18, 1
  store i64 %sub78, i64* %n, align 8
  %n79 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %Y, i32 0, i32 1
  %19 = load i64, i64* %n79, align 8
  %sub80 = sub i64 %19, 1
  store i64 %sub80, i64* %t, align 8
  br label %do.body81

do.body81:                                        ; preds = %if.end76
  %20 = load i64, i64* %n, align 8
  %21 = load i64, i64* %t, align 8
  %sub82 = sub i64 %20, %21
  %mul = mul i64 64, %sub82
  %call83 = call i32 @mbedtls_mpi_shift_l(%struct.mbedtls_mpi* noundef %Y, i64 noundef %mul) #5
  store i32 %call83, i32* %ret, align 4
  %cmp84 = icmp ne i32 %call83, 0
  br i1 %cmp84, label %if.then85, label %if.end86

if.then85:                                        ; preds = %do.body81
  br label %cleanup

if.end86:                                         ; preds = %do.body81
  br label %do.end87

do.end87:                                         ; preds = %if.end86
  br label %while.cond

while.cond:                                       ; preds = %do.end97, %do.end87
  %call88 = call i32 @mbedtls_mpi_cmp_mpi(%struct.mbedtls_mpi* noundef %X, %struct.mbedtls_mpi* noundef %Y) #5
  %cmp89 = icmp sge i32 %call88, 0
  br i1 %cmp89, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %p90 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %Z, i32 0, i32 2
  %22 = load i64*, i64** %p90, align 8
  %23 = load i64, i64* %n, align 8
  %24 = load i64, i64* %t, align 8
  %sub91 = sub i64 %23, %24
  %arrayidx = getelementptr inbounds i64, i64* %22, i64 %sub91
  %25 = load i64, i64* %arrayidx, align 8
  %inc = add i64 %25, 1
  store i64 %inc, i64* %arrayidx, align 8
  br label %do.body92

do.body92:                                        ; preds = %while.body
  %call93 = call i32 @mbedtls_mpi_sub_mpi(%struct.mbedtls_mpi* noundef %X, %struct.mbedtls_mpi* noundef %X, %struct.mbedtls_mpi* noundef %Y) #5
  store i32 %call93, i32* %ret, align 4
  %cmp94 = icmp ne i32 %call93, 0
  br i1 %cmp94, label %if.then95, label %if.end96

if.then95:                                        ; preds = %do.body92
  br label %cleanup

if.end96:                                         ; preds = %do.body92
  br label %do.end97

do.end97:                                         ; preds = %if.end96
  br label %while.cond, !llvm.loop !50

while.end:                                        ; preds = %while.cond
  br label %do.body98

do.body98:                                        ; preds = %while.end
  %26 = load i64, i64* %n, align 8
  %27 = load i64, i64* %t, align 8
  %sub99 = sub i64 %26, %27
  %mul100 = mul i64 64, %sub99
  %call101 = call i32 @mbedtls_mpi_shift_r(%struct.mbedtls_mpi* noundef %Y, i64 noundef %mul100) #5
  store i32 %call101, i32* %ret, align 4
  %cmp102 = icmp ne i32 %call101, 0
  br i1 %cmp102, label %if.then103, label %if.end104

if.then103:                                       ; preds = %do.body98
  br label %cleanup

if.end104:                                        ; preds = %do.body98
  br label %do.end105

do.end105:                                        ; preds = %if.end104
  %28 = load i64, i64* %n, align 8
  store i64 %28, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %do.end105
  %29 = load i64, i64* %i, align 8
  %30 = load i64, i64* %t, align 8
  %cmp106 = icmp ugt i64 %29, %30
  br i1 %cmp106, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %p107 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %X, i32 0, i32 2
  %31 = load i64*, i64** %p107, align 8
  %32 = load i64, i64* %i, align 8
  %arrayidx108 = getelementptr inbounds i64, i64* %31, i64 %32
  %33 = load i64, i64* %arrayidx108, align 8
  %p109 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %Y, i32 0, i32 2
  %34 = load i64*, i64** %p109, align 8
  %35 = load i64, i64* %t, align 8
  %arrayidx110 = getelementptr inbounds i64, i64* %34, i64 %35
  %36 = load i64, i64* %arrayidx110, align 8
  %cmp111 = icmp uge i64 %33, %36
  br i1 %cmp111, label %if.then112, label %if.else117

if.then112:                                       ; preds = %for.body
  %p113 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %Z, i32 0, i32 2
  %37 = load i64*, i64** %p113, align 8
  %38 = load i64, i64* %i, align 8
  %39 = load i64, i64* %t, align 8
  %sub114 = sub i64 %38, %39
  %sub115 = sub i64 %sub114, 1
  %arrayidx116 = getelementptr inbounds i64, i64* %37, i64 %sub115
  store i64 -1, i64* %arrayidx116, align 8
  br label %if.end130

if.else117:                                       ; preds = %for.body
  %p118 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %X, i32 0, i32 2
  %40 = load i64*, i64** %p118, align 8
  %41 = load i64, i64* %i, align 8
  %arrayidx119 = getelementptr inbounds i64, i64* %40, i64 %41
  %42 = load i64, i64* %arrayidx119, align 8
  %p120 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %X, i32 0, i32 2
  %43 = load i64*, i64** %p120, align 8
  %44 = load i64, i64* %i, align 8
  %sub121 = sub i64 %44, 1
  %arrayidx122 = getelementptr inbounds i64, i64* %43, i64 %sub121
  %45 = load i64, i64* %arrayidx122, align 8
  %p123 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %Y, i32 0, i32 2
  %46 = load i64*, i64** %p123, align 8
  %47 = load i64, i64* %t, align 8
  %arrayidx124 = getelementptr inbounds i64, i64* %46, i64 %47
  %48 = load i64, i64* %arrayidx124, align 8
  %call125 = call i64 @mbedtls_int_div_int(i64 noundef %42, i64 noundef %45, i64 noundef %48, i64* noundef null) #5
  %p126 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %Z, i32 0, i32 2
  %49 = load i64*, i64** %p126, align 8
  %50 = load i64, i64* %i, align 8
  %51 = load i64, i64* %t, align 8
  %sub127 = sub i64 %50, %51
  %sub128 = sub i64 %sub127, 1
  %arrayidx129 = getelementptr inbounds i64, i64* %49, i64 %sub128
  store i64 %call125, i64* %arrayidx129, align 8
  br label %if.end130

if.end130:                                        ; preds = %if.else117, %if.then112
  %52 = load i64, i64* %i, align 8
  %cmp131 = icmp ult i64 %52, 2
  br i1 %cmp131, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end130
  br label %cond.end

cond.false:                                       ; preds = %if.end130
  %p132 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %X, i32 0, i32 2
  %53 = load i64*, i64** %p132, align 8
  %54 = load i64, i64* %i, align 8
  %sub133 = sub i64 %54, 2
  %arrayidx134 = getelementptr inbounds i64, i64* %53, i64 %sub133
  %55 = load i64, i64* %arrayidx134, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ 0, %cond.true ], [ %55, %cond.false ]
  %p135 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %T2, i32 0, i32 2
  %56 = load i64*, i64** %p135, align 8
  %arrayidx136 = getelementptr inbounds i64, i64* %56, i64 0
  store i64 %cond, i64* %arrayidx136, align 8
  %57 = load i64, i64* %i, align 8
  %cmp137 = icmp ult i64 %57, 1
  br i1 %cmp137, label %cond.true138, label %cond.false139

cond.true138:                                     ; preds = %cond.end
  br label %cond.end143

cond.false139:                                    ; preds = %cond.end
  %p140 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %X, i32 0, i32 2
  %58 = load i64*, i64** %p140, align 8
  %59 = load i64, i64* %i, align 8
  %sub141 = sub i64 %59, 1
  %arrayidx142 = getelementptr inbounds i64, i64* %58, i64 %sub141
  %60 = load i64, i64* %arrayidx142, align 8
  br label %cond.end143

cond.end143:                                      ; preds = %cond.false139, %cond.true138
  %cond144 = phi i64 [ 0, %cond.true138 ], [ %60, %cond.false139 ]
  %p145 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %T2, i32 0, i32 2
  %61 = load i64*, i64** %p145, align 8
  %arrayidx146 = getelementptr inbounds i64, i64* %61, i64 1
  store i64 %cond144, i64* %arrayidx146, align 8
  %p147 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %X, i32 0, i32 2
  %62 = load i64*, i64** %p147, align 8
  %63 = load i64, i64* %i, align 8
  %arrayidx148 = getelementptr inbounds i64, i64* %62, i64 %63
  %64 = load i64, i64* %arrayidx148, align 8
  %p149 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %T2, i32 0, i32 2
  %65 = load i64*, i64** %p149, align 8
  %arrayidx150 = getelementptr inbounds i64, i64* %65, i64 2
  store i64 %64, i64* %arrayidx150, align 8
  %p151 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %Z, i32 0, i32 2
  %66 = load i64*, i64** %p151, align 8
  %67 = load i64, i64* %i, align 8
  %68 = load i64, i64* %t, align 8
  %sub152 = sub i64 %67, %68
  %sub153 = sub i64 %sub152, 1
  %arrayidx154 = getelementptr inbounds i64, i64* %66, i64 %sub153
  %69 = load i64, i64* %arrayidx154, align 8
  %inc155 = add i64 %69, 1
  store i64 %inc155, i64* %arrayidx154, align 8
  br label %do.body156

do.body156:                                       ; preds = %do.cond, %cond.end143
  %p157 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %Z, i32 0, i32 2
  %70 = load i64*, i64** %p157, align 8
  %71 = load i64, i64* %i, align 8
  %72 = load i64, i64* %t, align 8
  %sub158 = sub i64 %71, %72
  %sub159 = sub i64 %sub158, 1
  %arrayidx160 = getelementptr inbounds i64, i64* %70, i64 %sub159
  %73 = load i64, i64* %arrayidx160, align 8
  %dec = add i64 %73, -1
  store i64 %dec, i64* %arrayidx160, align 8
  br label %do.body161

do.body161:                                       ; preds = %do.body156
  %call162 = call i32 @mbedtls_mpi_lset(%struct.mbedtls_mpi* noundef %T1, i64 noundef 0) #5
  store i32 %call162, i32* %ret, align 4
  %cmp163 = icmp ne i32 %call162, 0
  br i1 %cmp163, label %if.then164, label %if.end165

if.then164:                                       ; preds = %do.body161
  br label %cleanup

if.end165:                                        ; preds = %do.body161
  br label %do.end166

do.end166:                                        ; preds = %if.end165
  %74 = load i64, i64* %t, align 8
  %cmp167 = icmp ult i64 %74, 1
  br i1 %cmp167, label %cond.true168, label %cond.false169

cond.true168:                                     ; preds = %do.end166
  br label %cond.end173

cond.false169:                                    ; preds = %do.end166
  %p170 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %Y, i32 0, i32 2
  %75 = load i64*, i64** %p170, align 8
  %76 = load i64, i64* %t, align 8
  %sub171 = sub i64 %76, 1
  %arrayidx172 = getelementptr inbounds i64, i64* %75, i64 %sub171
  %77 = load i64, i64* %arrayidx172, align 8
  br label %cond.end173

cond.end173:                                      ; preds = %cond.false169, %cond.true168
  %cond174 = phi i64 [ 0, %cond.true168 ], [ %77, %cond.false169 ]
  %p175 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %T1, i32 0, i32 2
  %78 = load i64*, i64** %p175, align 8
  %arrayidx176 = getelementptr inbounds i64, i64* %78, i64 0
  store i64 %cond174, i64* %arrayidx176, align 8
  %p177 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %Y, i32 0, i32 2
  %79 = load i64*, i64** %p177, align 8
  %80 = load i64, i64* %t, align 8
  %arrayidx178 = getelementptr inbounds i64, i64* %79, i64 %80
  %81 = load i64, i64* %arrayidx178, align 8
  %p179 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %T1, i32 0, i32 2
  %82 = load i64*, i64** %p179, align 8
  %arrayidx180 = getelementptr inbounds i64, i64* %82, i64 1
  store i64 %81, i64* %arrayidx180, align 8
  br label %do.body181

do.body181:                                       ; preds = %cond.end173
  %p182 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %Z, i32 0, i32 2
  %83 = load i64*, i64** %p182, align 8
  %84 = load i64, i64* %i, align 8
  %85 = load i64, i64* %t, align 8
  %sub183 = sub i64 %84, %85
  %sub184 = sub i64 %sub183, 1
  %arrayidx185 = getelementptr inbounds i64, i64* %83, i64 %sub184
  %86 = load i64, i64* %arrayidx185, align 8
  %call186 = call i32 @mbedtls_mpi_mul_int(%struct.mbedtls_mpi* noundef %T1, %struct.mbedtls_mpi* noundef %T1, i64 noundef %86) #5
  store i32 %call186, i32* %ret, align 4
  %cmp187 = icmp ne i32 %call186, 0
  br i1 %cmp187, label %if.then188, label %if.end189

if.then188:                                       ; preds = %do.body181
  br label %cleanup

if.end189:                                        ; preds = %do.body181
  br label %do.end190

do.end190:                                        ; preds = %if.end189
  br label %do.cond

do.cond:                                          ; preds = %do.end190
  %call191 = call i32 @mbedtls_mpi_cmp_mpi(%struct.mbedtls_mpi* noundef %T1, %struct.mbedtls_mpi* noundef %T2) #5
  %cmp192 = icmp sgt i32 %call191, 0
  br i1 %cmp192, label %do.body156, label %do.end193, !llvm.loop !51

do.end193:                                        ; preds = %do.cond
  br label %do.body194

do.body194:                                       ; preds = %do.end193
  %p195 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %Z, i32 0, i32 2
  %87 = load i64*, i64** %p195, align 8
  %88 = load i64, i64* %i, align 8
  %89 = load i64, i64* %t, align 8
  %sub196 = sub i64 %88, %89
  %sub197 = sub i64 %sub196, 1
  %arrayidx198 = getelementptr inbounds i64, i64* %87, i64 %sub197
  %90 = load i64, i64* %arrayidx198, align 8
  %call199 = call i32 @mbedtls_mpi_mul_int(%struct.mbedtls_mpi* noundef %T1, %struct.mbedtls_mpi* noundef %Y, i64 noundef %90) #5
  store i32 %call199, i32* %ret, align 4
  %cmp200 = icmp ne i32 %call199, 0
  br i1 %cmp200, label %if.then201, label %if.end202

if.then201:                                       ; preds = %do.body194
  br label %cleanup

if.end202:                                        ; preds = %do.body194
  br label %do.end204

do.end204:                                        ; preds = %if.end202
  br label %do.body205

do.body205:                                       ; preds = %do.end204
  %91 = load i64, i64* %i, align 8
  %92 = load i64, i64* %t, align 8
  %sub206 = sub i64 %91, %92
  %sub207 = sub i64 %sub206, 1
  %mul208 = mul i64 64, %sub207
  %call209 = call i32 @mbedtls_mpi_shift_l(%struct.mbedtls_mpi* noundef %T1, i64 noundef %mul208) #5
  store i32 %call209, i32* %ret, align 4
  %cmp210 = icmp ne i32 %call209, 0
  br i1 %cmp210, label %if.then211, label %if.end212

if.then211:                                       ; preds = %do.body205
  br label %cleanup

if.end212:                                        ; preds = %do.body205
  br label %do.end214

do.end214:                                        ; preds = %if.end212
  br label %do.body215

do.body215:                                       ; preds = %do.end214
  %call216 = call i32 @mbedtls_mpi_sub_mpi(%struct.mbedtls_mpi* noundef %X, %struct.mbedtls_mpi* noundef %X, %struct.mbedtls_mpi* noundef %T1) #5
  store i32 %call216, i32* %ret, align 4
  %cmp217 = icmp ne i32 %call216, 0
  br i1 %cmp217, label %if.then218, label %if.end219

if.then218:                                       ; preds = %do.body215
  br label %cleanup

if.end219:                                        ; preds = %do.body215
  br label %do.end221

do.end221:                                        ; preds = %if.end219
  %call222 = call i32 @mbedtls_mpi_cmp_int(%struct.mbedtls_mpi* noundef %X, i64 noundef 0) #5
  %cmp223 = icmp slt i32 %call222, 0
  br i1 %cmp223, label %if.then224, label %if.end254

if.then224:                                       ; preds = %do.end221
  br label %do.body225

do.body225:                                       ; preds = %if.then224
  %call226 = call i32 @mbedtls_mpi_copy(%struct.mbedtls_mpi* noundef %T1, %struct.mbedtls_mpi* noundef %Y) #5
  store i32 %call226, i32* %ret, align 4
  %cmp227 = icmp ne i32 %call226, 0
  br i1 %cmp227, label %if.then228, label %if.end229

if.then228:                                       ; preds = %do.body225
  br label %cleanup

if.end229:                                        ; preds = %do.body225
  br label %do.end231

do.end231:                                        ; preds = %if.end229
  br label %do.body232

do.body232:                                       ; preds = %do.end231
  %93 = load i64, i64* %i, align 8
  %94 = load i64, i64* %t, align 8
  %sub233 = sub i64 %93, %94
  %sub234 = sub i64 %sub233, 1
  %mul235 = mul i64 64, %sub234
  %call236 = call i32 @mbedtls_mpi_shift_l(%struct.mbedtls_mpi* noundef %T1, i64 noundef %mul235) #5
  store i32 %call236, i32* %ret, align 4
  %cmp237 = icmp ne i32 %call236, 0
  br i1 %cmp237, label %if.then238, label %if.end239

if.then238:                                       ; preds = %do.body232
  br label %cleanup

if.end239:                                        ; preds = %do.body232
  br label %do.end241

do.end241:                                        ; preds = %if.end239
  br label %do.body242

do.body242:                                       ; preds = %do.end241
  %call243 = call i32 @mbedtls_mpi_add_mpi(%struct.mbedtls_mpi* noundef %X, %struct.mbedtls_mpi* noundef %X, %struct.mbedtls_mpi* noundef %T1) #5
  store i32 %call243, i32* %ret, align 4
  %cmp244 = icmp ne i32 %call243, 0
  br i1 %cmp244, label %if.then245, label %if.end246

if.then245:                                       ; preds = %do.body242
  br label %cleanup

if.end246:                                        ; preds = %do.body242
  br label %do.end248

do.end248:                                        ; preds = %if.end246
  %p249 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %Z, i32 0, i32 2
  %95 = load i64*, i64** %p249, align 8
  %96 = load i64, i64* %i, align 8
  %97 = load i64, i64* %t, align 8
  %sub250 = sub i64 %96, %97
  %sub251 = sub i64 %sub250, 1
  %arrayidx252 = getelementptr inbounds i64, i64* %95, i64 %sub251
  %98 = load i64, i64* %arrayidx252, align 8
  %dec253 = add i64 %98, -1
  store i64 %dec253, i64* %arrayidx252, align 8
  br label %if.end254

if.end254:                                        ; preds = %do.end248, %do.end221
  br label %for.inc

for.inc:                                          ; preds = %if.end254
  %99 = load i64, i64* %i, align 8
  %dec255 = add i64 %99, -1
  store i64 %dec255, i64* %i, align 8
  br label %for.cond, !llvm.loop !52

for.end:                                          ; preds = %for.cond
  %100 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %Q.addr, align 8
  %cmp256 = icmp ne %struct.mbedtls_mpi* %100, null
  br i1 %cmp256, label %if.then257, label %if.end269

if.then257:                                       ; preds = %for.end
  br label %do.body258

do.body258:                                       ; preds = %if.then257
  %101 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %Q.addr, align 8
  %call259 = call i32 @mbedtls_mpi_copy(%struct.mbedtls_mpi* noundef %101, %struct.mbedtls_mpi* noundef %Z) #5
  store i32 %call259, i32* %ret, align 4
  %cmp260 = icmp ne i32 %call259, 0
  br i1 %cmp260, label %if.then261, label %if.end262

if.then261:                                       ; preds = %do.body258
  br label %cleanup

if.end262:                                        ; preds = %do.body258
  br label %do.end264

do.end264:                                        ; preds = %if.end262
  %102 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %A.addr, align 8
  %s265 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %102, i32 0, i32 0
  %103 = load i32, i32* %s265, align 8
  %104 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %B.addr, align 8
  %s266 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %104, i32 0, i32 0
  %105 = load i32, i32* %s266, align 8
  %mul267 = mul nsw i32 %103, %105
  %106 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %Q.addr, align 8
  %s268 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %106, i32 0, i32 0
  store i32 %mul267, i32* %s268, align 8
  br label %if.end269

if.end269:                                        ; preds = %do.end264, %for.end
  %107 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %R.addr, align 8
  %cmp270 = icmp ne %struct.mbedtls_mpi* %107, null
  br i1 %cmp270, label %if.then271, label %if.end293

if.then271:                                       ; preds = %if.end269
  br label %do.body272

do.body272:                                       ; preds = %if.then271
  %108 = load i64, i64* %k, align 8
  %call273 = call i32 @mbedtls_mpi_shift_r(%struct.mbedtls_mpi* noundef %X, i64 noundef %108) #5
  store i32 %call273, i32* %ret, align 4
  %cmp274 = icmp ne i32 %call273, 0
  br i1 %cmp274, label %if.then275, label %if.end276

if.then275:                                       ; preds = %do.body272
  br label %cleanup

if.end276:                                        ; preds = %do.body272
  br label %do.end278

do.end278:                                        ; preds = %if.end276
  %109 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %A.addr, align 8
  %s279 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %109, i32 0, i32 0
  %110 = load i32, i32* %s279, align 8
  %s280 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %X, i32 0, i32 0
  store i32 %110, i32* %s280, align 8
  br label %do.body281

do.body281:                                       ; preds = %do.end278
  %111 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %R.addr, align 8
  %call282 = call i32 @mbedtls_mpi_copy(%struct.mbedtls_mpi* noundef %111, %struct.mbedtls_mpi* noundef %X) #5
  store i32 %call282, i32* %ret, align 4
  %cmp283 = icmp ne i32 %call282, 0
  br i1 %cmp283, label %if.then284, label %if.end285

if.then284:                                       ; preds = %do.body281
  br label %cleanup

if.end285:                                        ; preds = %do.body281
  br label %do.end287

do.end287:                                        ; preds = %if.end285
  %112 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %R.addr, align 8
  %call288 = call i32 @mbedtls_mpi_cmp_int(%struct.mbedtls_mpi* noundef %112, i64 noundef 0) #5
  %cmp289 = icmp eq i32 %call288, 0
  br i1 %cmp289, label %if.then290, label %if.end292

if.then290:                                       ; preds = %do.end287
  %113 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %R.addr, align 8
  %s291 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %113, i32 0, i32 0
  store i32 1, i32* %s291, align 8
  br label %if.end292

if.end292:                                        ; preds = %if.then290, %do.end287
  br label %if.end293

if.end293:                                        ; preds = %if.end292, %if.end269
  br label %cleanup

cleanup:                                          ; preds = %if.end293, %if.then284, %if.then275, %if.then261, %if.then245, %if.then238, %if.then228, %if.then218, %if.then211, %if.then201, %if.then188, %if.then164, %if.then103, %if.then95, %if.then85, %if.then73, %if.then67, %if.then58, %if.then50, %if.then44, %if.then35, %if.then29, %if.then21, %if.then12
  call void @mbedtls_mpi_free(%struct.mbedtls_mpi* noundef %X) #5
  call void @mbedtls_mpi_free(%struct.mbedtls_mpi* noundef %Y) #5
  call void @mbedtls_mpi_free(%struct.mbedtls_mpi* noundef %Z) #5
  call void @mbedtls_mpi_free(%struct.mbedtls_mpi* noundef %T1) #5
  %arraydecay294 = getelementptr inbounds [3 x i64], [3 x i64]* %TP2, i64 0, i64 0
  %114 = bitcast i64* %arraydecay294 to i8*
  call void @mbedtls_platform_zeroize(i8* noundef %114, i64 noundef 24) #5
  %115 = load i32, i32* %ret, align 4
  store i32 %115, i32* %retval, align 4
  br label %return

return:                                           ; preds = %cleanup, %if.end24, %if.then
  %116 = load i32, i32* %retval, align 4
  ret i32 %116
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @mbedtls_int_div_int(i64 noundef %u1, i64 noundef %u0, i64 noundef %d, i64* noundef %r) #0 {
entry:
  %retval = alloca i64, align 8
  %u1.addr = alloca i64, align 8
  %u0.addr = alloca i64, align 8
  %d.addr = alloca i64, align 8
  %r.addr = alloca i64*, align 8
  %dividend = alloca i128, align 16
  %quotient = alloca i128, align 16
  store i64 %u1, i64* %u1.addr, align 8
  store i64 %u0, i64* %u0.addr, align 8
  store i64 %d, i64* %d.addr, align 8
  store i64* %r, i64** %r.addr, align 8
  %0 = load i64, i64* %d.addr, align 8
  %cmp = icmp eq i64 0, %0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i64, i64* %u1.addr, align 8
  %2 = load i64, i64* %d.addr, align 8
  %cmp1 = icmp uge i64 %1, %2
  br i1 %cmp1, label %if.then, label %if.end4

if.then:                                          ; preds = %lor.lhs.false, %entry
  %3 = load i64*, i64** %r.addr, align 8
  %cmp2 = icmp ne i64* %3, null
  br i1 %cmp2, label %if.then3, label %if.end

if.then3:                                         ; preds = %if.then
  %4 = load i64*, i64** %r.addr, align 8
  store i64 -1, i64* %4, align 8
  br label %if.end

if.end:                                           ; preds = %if.then3, %if.then
  store i64 -1, i64* %retval, align 8
  br label %return

if.end4:                                          ; preds = %lor.lhs.false
  %5 = load i64, i64* %u1.addr, align 8
  %conv = zext i64 %5 to i128
  %shl = shl i128 %conv, 64
  store i128 %shl, i128* %dividend, align 16
  %6 = load i64, i64* %u0.addr, align 8
  %conv5 = zext i64 %6 to i128
  %7 = load i128, i128* %dividend, align 16
  %or = or i128 %7, %conv5
  store i128 %or, i128* %dividend, align 16
  %8 = load i128, i128* %dividend, align 16
  %9 = load i64, i64* %d.addr, align 8
  %conv6 = zext i64 %9 to i128
  %div = udiv i128 %8, %conv6
  store i128 %div, i128* %quotient, align 16
  %10 = load i128, i128* %quotient, align 16
  %cmp7 = icmp ugt i128 %10, 18446744073709551615
  br i1 %cmp7, label %if.then9, label %if.end10

if.then9:                                         ; preds = %if.end4
  store i128 18446744073709551615, i128* %quotient, align 16
  br label %if.end10

if.end10:                                         ; preds = %if.then9, %if.end4
  %11 = load i64*, i64** %r.addr, align 8
  %cmp11 = icmp ne i64* %11, null
  br i1 %cmp11, label %if.then13, label %if.end16

if.then13:                                        ; preds = %if.end10
  %12 = load i128, i128* %dividend, align 16
  %13 = load i128, i128* %quotient, align 16
  %14 = load i64, i64* %d.addr, align 8
  %conv14 = zext i64 %14 to i128
  %mul = mul i128 %13, %conv14
  %sub = sub i128 %12, %mul
  %conv15 = trunc i128 %sub to i64
  %15 = load i64*, i64** %r.addr, align 8
  store i64 %conv15, i64* %15, align 8
  br label %if.end16

if.end16:                                         ; preds = %if.then13, %if.end10
  %16 = load i128, i128* %quotient, align 16
  %conv17 = trunc i128 %16 to i64
  store i64 %conv17, i64* %retval, align 8
  br label %return

return:                                           ; preds = %if.end16, %if.end
  %17 = load i64, i64* %retval, align 8
  ret i64 %17
}

declare dso_local void @mbedtls_platform_zeroize(i8* noundef, i64 noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_mpi_div_int(%struct.mbedtls_mpi* noundef %Q, %struct.mbedtls_mpi* noundef %R, %struct.mbedtls_mpi* noundef %A, i64 noundef %b) #0 {
entry:
  %Q.addr = alloca %struct.mbedtls_mpi*, align 8
  %R.addr = alloca %struct.mbedtls_mpi*, align 8
  %A.addr = alloca %struct.mbedtls_mpi*, align 8
  %b.addr = alloca i64, align 8
  %B = alloca %struct.mbedtls_mpi, align 8
  %p = alloca [1 x i64], align 8
  store %struct.mbedtls_mpi* %Q, %struct.mbedtls_mpi** %Q.addr, align 8
  store %struct.mbedtls_mpi* %R, %struct.mbedtls_mpi** %R.addr, align 8
  store %struct.mbedtls_mpi* %A, %struct.mbedtls_mpi** %A.addr, align 8
  store i64 %b, i64* %b.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  %0 = load i64, i64* %b.addr, align 8
  %cmp = icmp slt i64 %0, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %do.end
  %1 = load i64, i64* %b.addr, align 8
  %sub = sub nsw i64 0, %1
  br label %cond.end

cond.false:                                       ; preds = %do.end
  %2 = load i64, i64* %b.addr, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %sub, %cond.true ], [ %2, %cond.false ]
  %arrayidx = getelementptr inbounds [1 x i64], [1 x i64]* %p, i64 0, i64 0
  store i64 %cond, i64* %arrayidx, align 8
  %3 = load i64, i64* %b.addr, align 8
  %cmp1 = icmp slt i64 %3, 0
  %4 = zext i1 %cmp1 to i64
  %cond2 = select i1 %cmp1, i32 -1, i32 1
  %s = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %B, i32 0, i32 0
  store i32 %cond2, i32* %s, align 8
  %n = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %B, i32 0, i32 1
  store i64 1, i64* %n, align 8
  %arraydecay = getelementptr inbounds [1 x i64], [1 x i64]* %p, i64 0, i64 0
  %p3 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %B, i32 0, i32 2
  store i64* %arraydecay, i64** %p3, align 8
  %5 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %Q.addr, align 8
  %6 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %R.addr, align 8
  %7 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %A.addr, align 8
  %call = call i32 @mbedtls_mpi_div_mpi(%struct.mbedtls_mpi* noundef %5, %struct.mbedtls_mpi* noundef %6, %struct.mbedtls_mpi* noundef %7, %struct.mbedtls_mpi* noundef %B) #5
  ret i32 %call
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_mpi_mod_mpi(%struct.mbedtls_mpi* noundef %R, %struct.mbedtls_mpi* noundef %A, %struct.mbedtls_mpi* noundef %B) #0 {
entry:
  %retval = alloca i32, align 4
  %R.addr = alloca %struct.mbedtls_mpi*, align 8
  %A.addr = alloca %struct.mbedtls_mpi*, align 8
  %B.addr = alloca %struct.mbedtls_mpi*, align 8
  %ret = alloca i32, align 4
  store %struct.mbedtls_mpi* %R, %struct.mbedtls_mpi** %R.addr, align 8
  store %struct.mbedtls_mpi* %A, %struct.mbedtls_mpi** %A.addr, align 8
  store %struct.mbedtls_mpi* %B, %struct.mbedtls_mpi** %B.addr, align 8
  store i32 -110, i32* %ret, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %do.body1

do.body1:                                         ; preds = %do.end
  br label %do.end2

do.end2:                                          ; preds = %do.body1
  br label %do.body3

do.body3:                                         ; preds = %do.end2
  br label %do.end4

do.end4:                                          ; preds = %do.body3
  %0 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %B.addr, align 8
  %call = call i32 @mbedtls_mpi_cmp_int(%struct.mbedtls_mpi* noundef %0, i64 noundef 0) #5
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.end4
  store i32 -10, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %do.end4
  br label %do.body5

do.body5:                                         ; preds = %if.end
  %1 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %R.addr, align 8
  %2 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %A.addr, align 8
  %3 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %B.addr, align 8
  %call6 = call i32 @mbedtls_mpi_div_mpi(%struct.mbedtls_mpi* noundef null, %struct.mbedtls_mpi* noundef %1, %struct.mbedtls_mpi* noundef %2, %struct.mbedtls_mpi* noundef %3) #5
  store i32 %call6, i32* %ret, align 4
  %cmp7 = icmp ne i32 %call6, 0
  br i1 %cmp7, label %if.then8, label %if.end9

if.then8:                                         ; preds = %do.body5
  br label %cleanup

if.end9:                                          ; preds = %do.body5
  br label %do.end10

do.end10:                                         ; preds = %if.end9
  br label %while.cond

while.cond:                                       ; preds = %do.end18, %do.end10
  %4 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %R.addr, align 8
  %call11 = call i32 @mbedtls_mpi_cmp_int(%struct.mbedtls_mpi* noundef %4, i64 noundef 0) #5
  %cmp12 = icmp slt i32 %call11, 0
  br i1 %cmp12, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  br label %do.body13

do.body13:                                        ; preds = %while.body
  %5 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %R.addr, align 8
  %6 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %R.addr, align 8
  %7 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %B.addr, align 8
  %call14 = call i32 @mbedtls_mpi_add_mpi(%struct.mbedtls_mpi* noundef %5, %struct.mbedtls_mpi* noundef %6, %struct.mbedtls_mpi* noundef %7) #5
  store i32 %call14, i32* %ret, align 4
  %cmp15 = icmp ne i32 %call14, 0
  br i1 %cmp15, label %if.then16, label %if.end17

if.then16:                                        ; preds = %do.body13
  br label %cleanup

if.end17:                                         ; preds = %do.body13
  br label %do.end18

do.end18:                                         ; preds = %if.end17
  br label %while.cond, !llvm.loop !53

while.end:                                        ; preds = %while.cond
  br label %while.cond19

while.cond19:                                     ; preds = %do.end28, %while.end
  %8 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %R.addr, align 8
  %9 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %B.addr, align 8
  %call20 = call i32 @mbedtls_mpi_cmp_mpi(%struct.mbedtls_mpi* noundef %8, %struct.mbedtls_mpi* noundef %9) #5
  %cmp21 = icmp sge i32 %call20, 0
  br i1 %cmp21, label %while.body22, label %while.end29

while.body22:                                     ; preds = %while.cond19
  br label %do.body23

do.body23:                                        ; preds = %while.body22
  %10 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %R.addr, align 8
  %11 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %R.addr, align 8
  %12 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %B.addr, align 8
  %call24 = call i32 @mbedtls_mpi_sub_mpi(%struct.mbedtls_mpi* noundef %10, %struct.mbedtls_mpi* noundef %11, %struct.mbedtls_mpi* noundef %12) #5
  store i32 %call24, i32* %ret, align 4
  %cmp25 = icmp ne i32 %call24, 0
  br i1 %cmp25, label %if.then26, label %if.end27

if.then26:                                        ; preds = %do.body23
  br label %cleanup

if.end27:                                         ; preds = %do.body23
  br label %do.end28

do.end28:                                         ; preds = %if.end27
  br label %while.cond19, !llvm.loop !54

while.end29:                                      ; preds = %while.cond19
  br label %cleanup

cleanup:                                          ; preds = %while.end29, %if.then26, %if.then16, %if.then8
  %13 = load i32, i32* %ret, align 4
  store i32 %13, i32* %retval, align 4
  br label %return

return:                                           ; preds = %cleanup, %if.then
  %14 = load i32, i32* %retval, align 4
  ret i32 %14
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_mpi_mod_int(i64* noundef %r, %struct.mbedtls_mpi* noundef %A, i64 noundef %b) #0 {
entry:
  %retval = alloca i32, align 4
  %r.addr = alloca i64*, align 8
  %A.addr = alloca %struct.mbedtls_mpi*, align 8
  %b.addr = alloca i64, align 8
  %i = alloca i64, align 8
  %x = alloca i64, align 8
  %y = alloca i64, align 8
  %z = alloca i64, align 8
  store i64* %r, i64** %r.addr, align 8
  store %struct.mbedtls_mpi* %A, %struct.mbedtls_mpi** %A.addr, align 8
  store i64 %b, i64* %b.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %do.body1

do.body1:                                         ; preds = %do.end
  br label %do.end2

do.end2:                                          ; preds = %do.body1
  %0 = load i64, i64* %b.addr, align 8
  %cmp = icmp eq i64 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.end2
  store i32 -12, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %do.end2
  %1 = load i64, i64* %b.addr, align 8
  %cmp3 = icmp slt i64 %1, 0
  br i1 %cmp3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  store i32 -10, i32* %retval, align 4
  br label %return

if.end5:                                          ; preds = %if.end
  %2 = load i64, i64* %b.addr, align 8
  %cmp6 = icmp eq i64 %2, 1
  br i1 %cmp6, label %if.then8, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end5
  %3 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %A.addr, align 8
  %n = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %3, i32 0, i32 1
  %4 = load i64, i64* %n, align 8
  %cmp7 = icmp eq i64 %4, 0
  br i1 %cmp7, label %if.then8, label %if.end9

if.then8:                                         ; preds = %lor.lhs.false, %if.end5
  %5 = load i64*, i64** %r.addr, align 8
  store i64 0, i64* %5, align 8
  store i32 0, i32* %retval, align 4
  br label %return

if.end9:                                          ; preds = %lor.lhs.false
  %6 = load i64, i64* %b.addr, align 8
  %cmp10 = icmp eq i64 %6, 2
  br i1 %cmp10, label %if.then11, label %if.end12

if.then11:                                        ; preds = %if.end9
  %7 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %A.addr, align 8
  %p = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %7, i32 0, i32 2
  %8 = load i64*, i64** %p, align 8
  %arrayidx = getelementptr inbounds i64, i64* %8, i64 0
  %9 = load i64, i64* %arrayidx, align 8
  %and = and i64 %9, 1
  %10 = load i64*, i64** %r.addr, align 8
  store i64 %and, i64* %10, align 8
  store i32 0, i32* %retval, align 4
  br label %return

if.end12:                                         ; preds = %if.end9
  %11 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %A.addr, align 8
  %n13 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %11, i32 0, i32 1
  %12 = load i64, i64* %n13, align 8
  store i64 %12, i64* %i, align 8
  store i64 0, i64* %y, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end12
  %13 = load i64, i64* %i, align 8
  %cmp14 = icmp ugt i64 %13, 0
  br i1 %cmp14, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %14 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %A.addr, align 8
  %p15 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %14, i32 0, i32 2
  %15 = load i64*, i64** %p15, align 8
  %16 = load i64, i64* %i, align 8
  %sub = sub i64 %16, 1
  %arrayidx16 = getelementptr inbounds i64, i64* %15, i64 %sub
  %17 = load i64, i64* %arrayidx16, align 8
  store i64 %17, i64* %x, align 8
  %18 = load i64, i64* %y, align 8
  %shl = shl i64 %18, 32
  %19 = load i64, i64* %x, align 8
  %shr = lshr i64 %19, 32
  %or = or i64 %shl, %shr
  store i64 %or, i64* %y, align 8
  %20 = load i64, i64* %y, align 8
  %21 = load i64, i64* %b.addr, align 8
  %div = udiv i64 %20, %21
  store i64 %div, i64* %z, align 8
  %22 = load i64, i64* %z, align 8
  %23 = load i64, i64* %b.addr, align 8
  %mul = mul i64 %22, %23
  %24 = load i64, i64* %y, align 8
  %sub17 = sub i64 %24, %mul
  store i64 %sub17, i64* %y, align 8
  %25 = load i64, i64* %x, align 8
  %shl18 = shl i64 %25, 32
  store i64 %shl18, i64* %x, align 8
  %26 = load i64, i64* %y, align 8
  %shl19 = shl i64 %26, 32
  %27 = load i64, i64* %x, align 8
  %shr20 = lshr i64 %27, 32
  %or21 = or i64 %shl19, %shr20
  store i64 %or21, i64* %y, align 8
  %28 = load i64, i64* %y, align 8
  %29 = load i64, i64* %b.addr, align 8
  %div22 = udiv i64 %28, %29
  store i64 %div22, i64* %z, align 8
  %30 = load i64, i64* %z, align 8
  %31 = load i64, i64* %b.addr, align 8
  %mul23 = mul i64 %30, %31
  %32 = load i64, i64* %y, align 8
  %sub24 = sub i64 %32, %mul23
  store i64 %sub24, i64* %y, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %33 = load i64, i64* %i, align 8
  %dec = add i64 %33, -1
  store i64 %dec, i64* %i, align 8
  br label %for.cond, !llvm.loop !55

for.end:                                          ; preds = %for.cond
  %34 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %A.addr, align 8
  %s = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %34, i32 0, i32 0
  %35 = load i32, i32* %s, align 8
  %cmp25 = icmp slt i32 %35, 0
  br i1 %cmp25, label %land.lhs.true, label %if.end29

land.lhs.true:                                    ; preds = %for.end
  %36 = load i64, i64* %y, align 8
  %cmp26 = icmp ne i64 %36, 0
  br i1 %cmp26, label %if.then27, label %if.end29

if.then27:                                        ; preds = %land.lhs.true
  %37 = load i64, i64* %b.addr, align 8
  %38 = load i64, i64* %y, align 8
  %sub28 = sub i64 %37, %38
  store i64 %sub28, i64* %y, align 8
  br label %if.end29

if.end29:                                         ; preds = %if.then27, %land.lhs.true, %for.end
  %39 = load i64, i64* %y, align 8
  %40 = load i64*, i64** %r.addr, align 8
  store i64 %39, i64* %40, align 8
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end29, %if.then11, %if.then8, %if.then4, %if.then
  %41 = load i32, i32* %retval, align 4
  ret i32 %41
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_mpi_exp_mod(%struct.mbedtls_mpi* noundef %X, %struct.mbedtls_mpi* noundef %A, %struct.mbedtls_mpi* noundef %E, %struct.mbedtls_mpi* noundef %N, %struct.mbedtls_mpi* noundef %prec_RR) #0 {
entry:
  %retval = alloca i32, align 4
  %X.addr = alloca %struct.mbedtls_mpi*, align 8
  %A.addr = alloca %struct.mbedtls_mpi*, align 8
  %E.addr = alloca %struct.mbedtls_mpi*, align 8
  %N.addr = alloca %struct.mbedtls_mpi*, align 8
  %prec_RR.addr = alloca %struct.mbedtls_mpi*, align 8
  %ret = alloca i32, align 4
  %wbits = alloca i64, align 8
  %wsize = alloca i64, align 8
  %one = alloca i64, align 8
  %i = alloca i64, align 8
  %j = alloca i64, align 8
  %nblimbs = alloca i64, align 8
  %bufsize = alloca i64, align 8
  %nbits = alloca i64, align 8
  %ei = alloca i64, align 8
  %mm = alloca i64, align 8
  %state = alloca i64, align 8
  %RR = alloca %struct.mbedtls_mpi, align 8
  %T = alloca %struct.mbedtls_mpi, align 8
  %W = alloca [64 x %struct.mbedtls_mpi], align 16
  %WW = alloca %struct.mbedtls_mpi, align 8
  %Apos = alloca %struct.mbedtls_mpi, align 8
  %neg = alloca i32, align 4
  store %struct.mbedtls_mpi* %X, %struct.mbedtls_mpi** %X.addr, align 8
  store %struct.mbedtls_mpi* %A, %struct.mbedtls_mpi** %A.addr, align 8
  store %struct.mbedtls_mpi* %E, %struct.mbedtls_mpi** %E.addr, align 8
  store %struct.mbedtls_mpi* %N, %struct.mbedtls_mpi** %N.addr, align 8
  store %struct.mbedtls_mpi* %prec_RR, %struct.mbedtls_mpi** %prec_RR.addr, align 8
  store i32 -110, i32* %ret, align 4
  store i64 1, i64* %one, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %do.body1

do.body1:                                         ; preds = %do.end
  br label %do.end2

do.end2:                                          ; preds = %do.body1
  br label %do.body3

do.body3:                                         ; preds = %do.end2
  br label %do.end4

do.end4:                                          ; preds = %do.body3
  br label %do.body5

do.body5:                                         ; preds = %do.end4
  br label %do.end6

do.end6:                                          ; preds = %do.body5
  %0 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %call = call i32 @mbedtls_mpi_cmp_int(%struct.mbedtls_mpi* noundef %0, i64 noundef 0) #5
  %cmp = icmp sle i32 %call, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.end6
  %1 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %p = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %1, i32 0, i32 2
  %2 = load i64*, i64** %p, align 8
  %arrayidx = getelementptr inbounds i64, i64* %2, i64 0
  %3 = load i64, i64* %arrayidx, align 8
  %and = and i64 %3, 1
  %cmp7 = icmp eq i64 %and, 0
  br i1 %cmp7, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %do.end6
  store i32 -4, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %4 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %E.addr, align 8
  %call8 = call i32 @mbedtls_mpi_cmp_int(%struct.mbedtls_mpi* noundef %4, i64 noundef 0) #5
  %cmp9 = icmp slt i32 %call8, 0
  br i1 %cmp9, label %if.then10, label %if.end11

if.then10:                                        ; preds = %if.end
  store i32 -4, i32* %retval, align 4
  br label %return

if.end11:                                         ; preds = %if.end
  %5 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %E.addr, align 8
  %call12 = call i64 @mbedtls_mpi_bitlen(%struct.mbedtls_mpi* noundef %5) #5
  %cmp13 = icmp ugt i64 %call12, 8192
  br i1 %cmp13, label %if.then17, label %lor.lhs.false14

lor.lhs.false14:                                  ; preds = %if.end11
  %6 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %call15 = call i64 @mbedtls_mpi_bitlen(%struct.mbedtls_mpi* noundef %6) #5
  %cmp16 = icmp ugt i64 %call15, 8192
  br i1 %cmp16, label %if.then17, label %if.end18

if.then17:                                        ; preds = %lor.lhs.false14, %if.end11
  store i32 -4, i32* %retval, align 4
  br label %return

if.end18:                                         ; preds = %lor.lhs.false14
  %7 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  call void @mpi_montg_init(i64* noundef %mm, %struct.mbedtls_mpi* noundef %7) #5
  call void @mbedtls_mpi_init(%struct.mbedtls_mpi* noundef %RR) #5
  call void @mbedtls_mpi_init(%struct.mbedtls_mpi* noundef %T) #5
  call void @mbedtls_mpi_init(%struct.mbedtls_mpi* noundef %Apos) #5
  call void @mbedtls_mpi_init(%struct.mbedtls_mpi* noundef %WW) #5
  %arraydecay = getelementptr inbounds [64 x %struct.mbedtls_mpi], [64 x %struct.mbedtls_mpi]* %W, i64 0, i64 0
  %8 = bitcast %struct.mbedtls_mpi* %arraydecay to i8*
  %call19 = call i8* @memset(i8* noundef %8, i32 noundef 0, i64 noundef 1536) #6
  %9 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %E.addr, align 8
  %call20 = call i64 @mbedtls_mpi_bitlen(%struct.mbedtls_mpi* noundef %9) #5
  store i64 %call20, i64* %i, align 8
  %10 = load i64, i64* %i, align 8
  %cmp21 = icmp ugt i64 %10, 671
  br i1 %cmp21, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end18
  br label %cond.end32

cond.false:                                       ; preds = %if.end18
  %11 = load i64, i64* %i, align 8
  %cmp22 = icmp ugt i64 %11, 239
  br i1 %cmp22, label %cond.true23, label %cond.false24

cond.true23:                                      ; preds = %cond.false
  br label %cond.end30

cond.false24:                                     ; preds = %cond.false
  %12 = load i64, i64* %i, align 8
  %cmp25 = icmp ugt i64 %12, 79
  br i1 %cmp25, label %cond.true26, label %cond.false27

cond.true26:                                      ; preds = %cond.false24
  br label %cond.end

cond.false27:                                     ; preds = %cond.false24
  %13 = load i64, i64* %i, align 8
  %cmp28 = icmp ugt i64 %13, 23
  %14 = zext i1 %cmp28 to i64
  %cond = select i1 %cmp28, i32 3, i32 1
  br label %cond.end

cond.end:                                         ; preds = %cond.false27, %cond.true26
  %cond29 = phi i32 [ 4, %cond.true26 ], [ %cond, %cond.false27 ]
  br label %cond.end30

cond.end30:                                       ; preds = %cond.end, %cond.true23
  %cond31 = phi i32 [ 5, %cond.true23 ], [ %cond29, %cond.end ]
  br label %cond.end32

cond.end32:                                       ; preds = %cond.end30, %cond.true
  %cond33 = phi i32 [ 6, %cond.true ], [ %cond31, %cond.end30 ]
  %conv = sext i32 %cond33 to i64
  store i64 %conv, i64* %wsize, align 8
  %15 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %n = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %15, i32 0, i32 1
  %16 = load i64, i64* %n, align 8
  %add = add i64 %16, 1
  store i64 %add, i64* %j, align 8
  br label %do.body34

do.body34:                                        ; preds = %cond.end32
  %17 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %X.addr, align 8
  %18 = load i64, i64* %j, align 8
  %call35 = call i32 @mbedtls_mpi_grow(%struct.mbedtls_mpi* noundef %17, i64 noundef %18) #5
  store i32 %call35, i32* %ret, align 4
  %cmp36 = icmp ne i32 %call35, 0
  br i1 %cmp36, label %if.then38, label %if.end39

if.then38:                                        ; preds = %do.body34
  br label %cleanup

if.end39:                                         ; preds = %do.body34
  br label %do.end40

do.end40:                                         ; preds = %if.end39
  br label %do.body41

do.body41:                                        ; preds = %do.end40
  %arrayidx42 = getelementptr inbounds [64 x %struct.mbedtls_mpi], [64 x %struct.mbedtls_mpi]* %W, i64 0, i64 1
  %19 = load i64, i64* %j, align 8
  %call43 = call i32 @mbedtls_mpi_grow(%struct.mbedtls_mpi* noundef %arrayidx42, i64 noundef %19) #5
  store i32 %call43, i32* %ret, align 4
  %cmp44 = icmp ne i32 %call43, 0
  br i1 %cmp44, label %if.then46, label %if.end47

if.then46:                                        ; preds = %do.body41
  br label %cleanup

if.end47:                                         ; preds = %do.body41
  br label %do.end48

do.end48:                                         ; preds = %if.end47
  br label %do.body49

do.body49:                                        ; preds = %do.end48
  %20 = load i64, i64* %j, align 8
  %mul = mul i64 %20, 2
  %call50 = call i32 @mbedtls_mpi_grow(%struct.mbedtls_mpi* noundef %T, i64 noundef %mul) #5
  store i32 %call50, i32* %ret, align 4
  %cmp51 = icmp ne i32 %call50, 0
  br i1 %cmp51, label %if.then53, label %if.end54

if.then53:                                        ; preds = %do.body49
  br label %cleanup

if.end54:                                         ; preds = %do.body49
  br label %do.end55

do.end55:                                         ; preds = %if.end54
  %21 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %A.addr, align 8
  %s = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %21, i32 0, i32 0
  %22 = load i32, i32* %s, align 8
  %cmp56 = icmp eq i32 %22, -1
  %conv57 = zext i1 %cmp56 to i32
  store i32 %conv57, i32* %neg, align 4
  %23 = load i32, i32* %neg, align 4
  %tobool = icmp ne i32 %23, 0
  br i1 %tobool, label %if.then58, label %if.end67

if.then58:                                        ; preds = %do.end55
  br label %do.body59

do.body59:                                        ; preds = %if.then58
  %24 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %A.addr, align 8
  %call60 = call i32 @mbedtls_mpi_copy(%struct.mbedtls_mpi* noundef %Apos, %struct.mbedtls_mpi* noundef %24) #5
  store i32 %call60, i32* %ret, align 4
  %cmp61 = icmp ne i32 %call60, 0
  br i1 %cmp61, label %if.then63, label %if.end64

if.then63:                                        ; preds = %do.body59
  br label %cleanup

if.end64:                                         ; preds = %do.body59
  br label %do.end65

do.end65:                                         ; preds = %if.end64
  %s66 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %Apos, i32 0, i32 0
  store i32 1, i32* %s66, align 8
  store %struct.mbedtls_mpi* %Apos, %struct.mbedtls_mpi** %A.addr, align 8
  br label %if.end67

if.end67:                                         ; preds = %do.end65, %do.end55
  %25 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %prec_RR.addr, align 8
  %cmp68 = icmp eq %struct.mbedtls_mpi* %25, null
  br i1 %cmp68, label %if.then74, label %lor.lhs.false70

lor.lhs.false70:                                  ; preds = %if.end67
  %26 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %prec_RR.addr, align 8
  %p71 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %26, i32 0, i32 2
  %27 = load i64*, i64** %p71, align 8
  %cmp72 = icmp eq i64* %27, null
  br i1 %cmp72, label %if.then74, label %if.else

if.then74:                                        ; preds = %lor.lhs.false70, %if.end67
  br label %do.body75

do.body75:                                        ; preds = %if.then74
  %call76 = call i32 @mbedtls_mpi_lset(%struct.mbedtls_mpi* noundef %RR, i64 noundef 1) #5
  store i32 %call76, i32* %ret, align 4
  %cmp77 = icmp ne i32 %call76, 0
  br i1 %cmp77, label %if.then79, label %if.end80

if.then79:                                        ; preds = %do.body75
  br label %cleanup

if.end80:                                         ; preds = %do.body75
  br label %do.end81

do.end81:                                         ; preds = %if.end80
  br label %do.body82

do.body82:                                        ; preds = %do.end81
  %28 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %n83 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %28, i32 0, i32 1
  %29 = load i64, i64* %n83, align 8
  %mul84 = mul i64 %29, 2
  %mul85 = mul i64 %mul84, 64
  %call86 = call i32 @mbedtls_mpi_shift_l(%struct.mbedtls_mpi* noundef %RR, i64 noundef %mul85) #5
  store i32 %call86, i32* %ret, align 4
  %cmp87 = icmp ne i32 %call86, 0
  br i1 %cmp87, label %if.then89, label %if.end90

if.then89:                                        ; preds = %do.body82
  br label %cleanup

if.end90:                                         ; preds = %do.body82
  br label %do.end91

do.end91:                                         ; preds = %if.end90
  br label %do.body92

do.body92:                                        ; preds = %do.end91
  %30 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %call93 = call i32 @mbedtls_mpi_mod_mpi(%struct.mbedtls_mpi* noundef %RR, %struct.mbedtls_mpi* noundef %RR, %struct.mbedtls_mpi* noundef %30) #5
  store i32 %call93, i32* %ret, align 4
  %cmp94 = icmp ne i32 %call93, 0
  br i1 %cmp94, label %if.then96, label %if.end97

if.then96:                                        ; preds = %do.body92
  br label %cleanup

if.end97:                                         ; preds = %do.body92
  br label %do.end98

do.end98:                                         ; preds = %if.end97
  %31 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %prec_RR.addr, align 8
  %cmp99 = icmp ne %struct.mbedtls_mpi* %31, null
  br i1 %cmp99, label %if.then101, label %if.end103

if.then101:                                       ; preds = %do.end98
  %32 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %prec_RR.addr, align 8
  %33 = bitcast %struct.mbedtls_mpi* %32 to i8*
  %34 = bitcast %struct.mbedtls_mpi* %RR to i8*
  %call102 = call i8* @memcpy(i8* noundef %33, i8* noundef %34, i64 noundef 24) #6
  br label %if.end103

if.end103:                                        ; preds = %if.then101, %do.end98
  br label %if.end105

if.else:                                          ; preds = %lor.lhs.false70
  %35 = bitcast %struct.mbedtls_mpi* %RR to i8*
  %36 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %prec_RR.addr, align 8
  %37 = bitcast %struct.mbedtls_mpi* %36 to i8*
  %call104 = call i8* @memcpy(i8* noundef %35, i8* noundef %37, i64 noundef 24) #6
  br label %if.end105

if.end105:                                        ; preds = %if.else, %if.end103
  %38 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %A.addr, align 8
  %39 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %call106 = call i32 @mbedtls_mpi_cmp_mpi(%struct.mbedtls_mpi* noundef %38, %struct.mbedtls_mpi* noundef %39) #5
  %cmp107 = icmp sge i32 %call106, 0
  br i1 %cmp107, label %if.then109, label %if.else128

if.then109:                                       ; preds = %if.end105
  br label %do.body110

do.body110:                                       ; preds = %if.then109
  %arrayidx111 = getelementptr inbounds [64 x %struct.mbedtls_mpi], [64 x %struct.mbedtls_mpi]* %W, i64 0, i64 1
  %40 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %A.addr, align 8
  %41 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %call112 = call i32 @mbedtls_mpi_mod_mpi(%struct.mbedtls_mpi* noundef %arrayidx111, %struct.mbedtls_mpi* noundef %40, %struct.mbedtls_mpi* noundef %41) #5
  store i32 %call112, i32* %ret, align 4
  %cmp113 = icmp ne i32 %call112, 0
  br i1 %cmp113, label %if.then115, label %if.end116

if.then115:                                       ; preds = %do.body110
  br label %cleanup

if.end116:                                        ; preds = %do.body110
  br label %do.end117

do.end117:                                        ; preds = %if.end116
  br label %do.body118

do.body118:                                       ; preds = %do.end117
  %arrayidx119 = getelementptr inbounds [64 x %struct.mbedtls_mpi], [64 x %struct.mbedtls_mpi]* %W, i64 0, i64 1
  %42 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %n120 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %42, i32 0, i32 1
  %43 = load i64, i64* %n120, align 8
  %add121 = add i64 %43, 1
  %call122 = call i32 @mbedtls_mpi_grow(%struct.mbedtls_mpi* noundef %arrayidx119, i64 noundef %add121) #5
  store i32 %call122, i32* %ret, align 4
  %cmp123 = icmp ne i32 %call122, 0
  br i1 %cmp123, label %if.then125, label %if.end126

if.then125:                                       ; preds = %do.body118
  br label %cleanup

if.end126:                                        ; preds = %do.body118
  br label %do.end127

do.end127:                                        ; preds = %if.end126
  br label %if.end137

if.else128:                                       ; preds = %if.end105
  br label %do.body129

do.body129:                                       ; preds = %if.else128
  %arrayidx130 = getelementptr inbounds [64 x %struct.mbedtls_mpi], [64 x %struct.mbedtls_mpi]* %W, i64 0, i64 1
  %44 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %A.addr, align 8
  %call131 = call i32 @mbedtls_mpi_copy(%struct.mbedtls_mpi* noundef %arrayidx130, %struct.mbedtls_mpi* noundef %44) #5
  store i32 %call131, i32* %ret, align 4
  %cmp132 = icmp ne i32 %call131, 0
  br i1 %cmp132, label %if.then134, label %if.end135

if.then134:                                       ; preds = %do.body129
  br label %cleanup

if.end135:                                        ; preds = %do.body129
  br label %do.end136

do.end136:                                        ; preds = %if.end135
  br label %if.end137

if.end137:                                        ; preds = %do.end136, %do.end127
  %arrayidx138 = getelementptr inbounds [64 x %struct.mbedtls_mpi], [64 x %struct.mbedtls_mpi]* %W, i64 0, i64 1
  %45 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %46 = load i64, i64* %mm, align 8
  call void @mpi_montmul(%struct.mbedtls_mpi* noundef %arrayidx138, %struct.mbedtls_mpi* noundef %RR, %struct.mbedtls_mpi* noundef %45, i64 noundef %46, %struct.mbedtls_mpi* noundef %T) #5
  br label %do.body139

do.body139:                                       ; preds = %if.end137
  %47 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %X.addr, align 8
  %call140 = call i32 @mbedtls_mpi_copy(%struct.mbedtls_mpi* noundef %47, %struct.mbedtls_mpi* noundef %RR) #5
  store i32 %call140, i32* %ret, align 4
  %cmp141 = icmp ne i32 %call140, 0
  br i1 %cmp141, label %if.then143, label %if.end144

if.then143:                                       ; preds = %do.body139
  br label %cleanup

if.end144:                                        ; preds = %do.body139
  br label %do.end145

do.end145:                                        ; preds = %if.end144
  %48 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %X.addr, align 8
  %49 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %50 = load i64, i64* %mm, align 8
  call void @mpi_montred(%struct.mbedtls_mpi* noundef %48, %struct.mbedtls_mpi* noundef %49, i64 noundef %50, %struct.mbedtls_mpi* noundef %T) #5
  %51 = load i64, i64* %wsize, align 8
  %cmp146 = icmp ugt i64 %51, 1
  br i1 %cmp146, label %if.then148, label %if.end204

if.then148:                                       ; preds = %do.end145
  %52 = load i64, i64* %one, align 8
  %53 = load i64, i64* %wsize, align 8
  %sub = sub i64 %53, 1
  %shl = shl i64 %52, %sub
  store i64 %shl, i64* %j, align 8
  br label %do.body149

do.body149:                                       ; preds = %if.then148
  %54 = load i64, i64* %j, align 8
  %arrayidx150 = getelementptr inbounds [64 x %struct.mbedtls_mpi], [64 x %struct.mbedtls_mpi]* %W, i64 0, i64 %54
  %55 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %n151 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %55, i32 0, i32 1
  %56 = load i64, i64* %n151, align 8
  %add152 = add i64 %56, 1
  %call153 = call i32 @mbedtls_mpi_grow(%struct.mbedtls_mpi* noundef %arrayidx150, i64 noundef %add152) #5
  store i32 %call153, i32* %ret, align 4
  %cmp154 = icmp ne i32 %call153, 0
  br i1 %cmp154, label %if.then156, label %if.end157

if.then156:                                       ; preds = %do.body149
  br label %cleanup

if.end157:                                        ; preds = %do.body149
  br label %do.end158

do.end158:                                        ; preds = %if.end157
  br label %do.body159

do.body159:                                       ; preds = %do.end158
  %57 = load i64, i64* %j, align 8
  %arrayidx160 = getelementptr inbounds [64 x %struct.mbedtls_mpi], [64 x %struct.mbedtls_mpi]* %W, i64 0, i64 %57
  %arrayidx161 = getelementptr inbounds [64 x %struct.mbedtls_mpi], [64 x %struct.mbedtls_mpi]* %W, i64 0, i64 1
  %call162 = call i32 @mbedtls_mpi_copy(%struct.mbedtls_mpi* noundef %arrayidx160, %struct.mbedtls_mpi* noundef %arrayidx161) #5
  store i32 %call162, i32* %ret, align 4
  %cmp163 = icmp ne i32 %call162, 0
  br i1 %cmp163, label %if.then165, label %if.end166

if.then165:                                       ; preds = %do.body159
  br label %cleanup

if.end166:                                        ; preds = %do.body159
  br label %do.end167

do.end167:                                        ; preds = %if.end166
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %do.end167
  %58 = load i64, i64* %i, align 8
  %59 = load i64, i64* %wsize, align 8
  %sub168 = sub i64 %59, 1
  %cmp169 = icmp ult i64 %58, %sub168
  br i1 %cmp169, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %60 = load i64, i64* %j, align 8
  %arrayidx171 = getelementptr inbounds [64 x %struct.mbedtls_mpi], [64 x %struct.mbedtls_mpi]* %W, i64 0, i64 %60
  %61 = load i64, i64* %j, align 8
  %arrayidx172 = getelementptr inbounds [64 x %struct.mbedtls_mpi], [64 x %struct.mbedtls_mpi]* %W, i64 0, i64 %61
  %62 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %63 = load i64, i64* %mm, align 8
  call void @mpi_montmul(%struct.mbedtls_mpi* noundef %arrayidx171, %struct.mbedtls_mpi* noundef %arrayidx172, %struct.mbedtls_mpi* noundef %62, i64 noundef %63, %struct.mbedtls_mpi* noundef %T) #5
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %64 = load i64, i64* %i, align 8
  %inc = add i64 %64, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond, !llvm.loop !56

for.end:                                          ; preds = %for.cond
  %65 = load i64, i64* %j, align 8
  %add173 = add i64 %65, 1
  store i64 %add173, i64* %i, align 8
  br label %for.cond174

for.cond174:                                      ; preds = %for.inc201, %for.end
  %66 = load i64, i64* %i, align 8
  %67 = load i64, i64* %one, align 8
  %68 = load i64, i64* %wsize, align 8
  %shl175 = shl i64 %67, %68
  %cmp176 = icmp ult i64 %66, %shl175
  br i1 %cmp176, label %for.body178, label %for.end203

for.body178:                                      ; preds = %for.cond174
  br label %do.body179

do.body179:                                       ; preds = %for.body178
  %69 = load i64, i64* %i, align 8
  %arrayidx180 = getelementptr inbounds [64 x %struct.mbedtls_mpi], [64 x %struct.mbedtls_mpi]* %W, i64 0, i64 %69
  %70 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %n181 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %70, i32 0, i32 1
  %71 = load i64, i64* %n181, align 8
  %add182 = add i64 %71, 1
  %call183 = call i32 @mbedtls_mpi_grow(%struct.mbedtls_mpi* noundef %arrayidx180, i64 noundef %add182) #5
  store i32 %call183, i32* %ret, align 4
  %cmp184 = icmp ne i32 %call183, 0
  br i1 %cmp184, label %if.then186, label %if.end187

if.then186:                                       ; preds = %do.body179
  br label %cleanup

if.end187:                                        ; preds = %do.body179
  br label %do.end188

do.end188:                                        ; preds = %if.end187
  br label %do.body189

do.body189:                                       ; preds = %do.end188
  %72 = load i64, i64* %i, align 8
  %arrayidx190 = getelementptr inbounds [64 x %struct.mbedtls_mpi], [64 x %struct.mbedtls_mpi]* %W, i64 0, i64 %72
  %73 = load i64, i64* %i, align 8
  %sub191 = sub i64 %73, 1
  %arrayidx192 = getelementptr inbounds [64 x %struct.mbedtls_mpi], [64 x %struct.mbedtls_mpi]* %W, i64 0, i64 %sub191
  %call193 = call i32 @mbedtls_mpi_copy(%struct.mbedtls_mpi* noundef %arrayidx190, %struct.mbedtls_mpi* noundef %arrayidx192) #5
  store i32 %call193, i32* %ret, align 4
  %cmp194 = icmp ne i32 %call193, 0
  br i1 %cmp194, label %if.then196, label %if.end197

if.then196:                                       ; preds = %do.body189
  br label %cleanup

if.end197:                                        ; preds = %do.body189
  br label %do.end198

do.end198:                                        ; preds = %if.end197
  %74 = load i64, i64* %i, align 8
  %arrayidx199 = getelementptr inbounds [64 x %struct.mbedtls_mpi], [64 x %struct.mbedtls_mpi]* %W, i64 0, i64 %74
  %arrayidx200 = getelementptr inbounds [64 x %struct.mbedtls_mpi], [64 x %struct.mbedtls_mpi]* %W, i64 0, i64 1
  %75 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %76 = load i64, i64* %mm, align 8
  call void @mpi_montmul(%struct.mbedtls_mpi* noundef %arrayidx199, %struct.mbedtls_mpi* noundef %arrayidx200, %struct.mbedtls_mpi* noundef %75, i64 noundef %76, %struct.mbedtls_mpi* noundef %T) #5
  br label %for.inc201

for.inc201:                                       ; preds = %do.end198
  %77 = load i64, i64* %i, align 8
  %inc202 = add i64 %77, 1
  store i64 %inc202, i64* %i, align 8
  br label %for.cond174, !llvm.loop !57

for.end203:                                       ; preds = %for.cond174
  br label %if.end204

if.end204:                                        ; preds = %for.end203, %do.end145
  %78 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %E.addr, align 8
  %n205 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %78, i32 0, i32 1
  %79 = load i64, i64* %n205, align 8
  store i64 %79, i64* %nblimbs, align 8
  store i64 0, i64* %bufsize, align 8
  store i64 0, i64* %nbits, align 8
  store i64 0, i64* %wbits, align 8
  store i64 0, i64* %state, align 8
  br label %while.body

while.body:                                       ; preds = %if.end204, %if.then222, %if.then229, %if.end254
  %80 = load i64, i64* %bufsize, align 8
  %cmp206 = icmp eq i64 %80, 0
  br i1 %cmp206, label %if.then208, label %if.end213

if.then208:                                       ; preds = %while.body
  %81 = load i64, i64* %nblimbs, align 8
  %cmp209 = icmp eq i64 %81, 0
  br i1 %cmp209, label %if.then211, label %if.end212

if.then211:                                       ; preds = %if.then208
  br label %while.end

if.end212:                                        ; preds = %if.then208
  %82 = load i64, i64* %nblimbs, align 8
  %dec = add i64 %82, -1
  store i64 %dec, i64* %nblimbs, align 8
  store i64 64, i64* %bufsize, align 8
  br label %if.end213

if.end213:                                        ; preds = %if.end212, %while.body
  %83 = load i64, i64* %bufsize, align 8
  %dec214 = add i64 %83, -1
  store i64 %dec214, i64* %bufsize, align 8
  %84 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %E.addr, align 8
  %p215 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %84, i32 0, i32 2
  %85 = load i64*, i64** %p215, align 8
  %86 = load i64, i64* %nblimbs, align 8
  %arrayidx216 = getelementptr inbounds i64, i64* %85, i64 %86
  %87 = load i64, i64* %arrayidx216, align 8
  %88 = load i64, i64* %bufsize, align 8
  %shr = lshr i64 %87, %88
  %and217 = and i64 %shr, 1
  store i64 %and217, i64* %ei, align 8
  %89 = load i64, i64* %ei, align 8
  %cmp218 = icmp eq i64 %89, 0
  br i1 %cmp218, label %land.lhs.true, label %if.end223

land.lhs.true:                                    ; preds = %if.end213
  %90 = load i64, i64* %state, align 8
  %cmp220 = icmp eq i64 %90, 0
  br i1 %cmp220, label %if.then222, label %if.end223

if.then222:                                       ; preds = %land.lhs.true
  br label %while.body

if.end223:                                        ; preds = %land.lhs.true, %if.end213
  %91 = load i64, i64* %ei, align 8
  %cmp224 = icmp eq i64 %91, 0
  br i1 %cmp224, label %land.lhs.true226, label %if.end230

land.lhs.true226:                                 ; preds = %if.end223
  %92 = load i64, i64* %state, align 8
  %cmp227 = icmp eq i64 %92, 1
  br i1 %cmp227, label %if.then229, label %if.end230

if.then229:                                       ; preds = %land.lhs.true226
  %93 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %X.addr, align 8
  %94 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %X.addr, align 8
  %95 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %96 = load i64, i64* %mm, align 8
  call void @mpi_montmul(%struct.mbedtls_mpi* noundef %93, %struct.mbedtls_mpi* noundef %94, %struct.mbedtls_mpi* noundef %95, i64 noundef %96, %struct.mbedtls_mpi* noundef %T) #5
  br label %while.body

if.end230:                                        ; preds = %land.lhs.true226, %if.end223
  store i64 2, i64* %state, align 8
  %97 = load i64, i64* %nbits, align 8
  %inc231 = add i64 %97, 1
  store i64 %inc231, i64* %nbits, align 8
  %98 = load i64, i64* %ei, align 8
  %99 = load i64, i64* %wsize, align 8
  %100 = load i64, i64* %nbits, align 8
  %sub232 = sub i64 %99, %100
  %shl233 = shl i64 %98, %sub232
  %101 = load i64, i64* %wbits, align 8
  %or = or i64 %101, %shl233
  store i64 %or, i64* %wbits, align 8
  %102 = load i64, i64* %nbits, align 8
  %103 = load i64, i64* %wsize, align 8
  %cmp234 = icmp eq i64 %102, %103
  br i1 %cmp234, label %if.then236, label %if.end254

if.then236:                                       ; preds = %if.end230
  store i64 0, i64* %i, align 8
  br label %for.cond237

for.cond237:                                      ; preds = %for.inc241, %if.then236
  %104 = load i64, i64* %i, align 8
  %105 = load i64, i64* %wsize, align 8
  %cmp238 = icmp ult i64 %104, %105
  br i1 %cmp238, label %for.body240, label %for.end243

for.body240:                                      ; preds = %for.cond237
  %106 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %X.addr, align 8
  %107 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %X.addr, align 8
  %108 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %109 = load i64, i64* %mm, align 8
  call void @mpi_montmul(%struct.mbedtls_mpi* noundef %106, %struct.mbedtls_mpi* noundef %107, %struct.mbedtls_mpi* noundef %108, i64 noundef %109, %struct.mbedtls_mpi* noundef %T) #5
  br label %for.inc241

for.inc241:                                       ; preds = %for.body240
  %110 = load i64, i64* %i, align 8
  %inc242 = add i64 %110, 1
  store i64 %inc242, i64* %i, align 8
  br label %for.cond237, !llvm.loop !58

for.end243:                                       ; preds = %for.cond237
  br label %do.body244

do.body244:                                       ; preds = %for.end243
  %arraydecay245 = getelementptr inbounds [64 x %struct.mbedtls_mpi], [64 x %struct.mbedtls_mpi]* %W, i64 0, i64 0
  %111 = load i64, i64* %wsize, align 8
  %shl246 = shl i64 1, %111
  %112 = load i64, i64* %wbits, align 8
  %call247 = call i32 @mpi_select(%struct.mbedtls_mpi* noundef %WW, %struct.mbedtls_mpi* noundef %arraydecay245, i64 noundef %shl246, i64 noundef %112) #5
  store i32 %call247, i32* %ret, align 4
  %cmp248 = icmp ne i32 %call247, 0
  br i1 %cmp248, label %if.then250, label %if.end251

if.then250:                                       ; preds = %do.body244
  br label %cleanup

if.end251:                                        ; preds = %do.body244
  br label %do.end252

do.end252:                                        ; preds = %if.end251
  %113 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %X.addr, align 8
  %114 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %115 = load i64, i64* %mm, align 8
  call void @mpi_montmul(%struct.mbedtls_mpi* noundef %113, %struct.mbedtls_mpi* noundef %WW, %struct.mbedtls_mpi* noundef %114, i64 noundef %115, %struct.mbedtls_mpi* noundef %T) #5
  %116 = load i64, i64* %state, align 8
  %dec253 = add i64 %116, -1
  store i64 %dec253, i64* %state, align 8
  store i64 0, i64* %nbits, align 8
  store i64 0, i64* %wbits, align 8
  br label %if.end254

if.end254:                                        ; preds = %do.end252, %if.end230
  br label %while.body

while.end:                                        ; preds = %if.then211
  store i64 0, i64* %i, align 8
  br label %for.cond255

for.cond255:                                      ; preds = %for.inc267, %while.end
  %117 = load i64, i64* %i, align 8
  %118 = load i64, i64* %nbits, align 8
  %cmp256 = icmp ult i64 %117, %118
  br i1 %cmp256, label %for.body258, label %for.end269

for.body258:                                      ; preds = %for.cond255
  %119 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %X.addr, align 8
  %120 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %X.addr, align 8
  %121 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %122 = load i64, i64* %mm, align 8
  call void @mpi_montmul(%struct.mbedtls_mpi* noundef %119, %struct.mbedtls_mpi* noundef %120, %struct.mbedtls_mpi* noundef %121, i64 noundef %122, %struct.mbedtls_mpi* noundef %T) #5
  %123 = load i64, i64* %wbits, align 8
  %shl259 = shl i64 %123, 1
  store i64 %shl259, i64* %wbits, align 8
  %124 = load i64, i64* %wbits, align 8
  %125 = load i64, i64* %one, align 8
  %126 = load i64, i64* %wsize, align 8
  %shl260 = shl i64 %125, %126
  %and261 = and i64 %124, %shl260
  %cmp262 = icmp ne i64 %and261, 0
  br i1 %cmp262, label %if.then264, label %if.end266

if.then264:                                       ; preds = %for.body258
  %127 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %X.addr, align 8
  %arrayidx265 = getelementptr inbounds [64 x %struct.mbedtls_mpi], [64 x %struct.mbedtls_mpi]* %W, i64 0, i64 1
  %128 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %129 = load i64, i64* %mm, align 8
  call void @mpi_montmul(%struct.mbedtls_mpi* noundef %127, %struct.mbedtls_mpi* noundef %arrayidx265, %struct.mbedtls_mpi* noundef %128, i64 noundef %129, %struct.mbedtls_mpi* noundef %T) #5
  br label %if.end266

if.end266:                                        ; preds = %if.then264, %for.body258
  br label %for.inc267

for.inc267:                                       ; preds = %if.end266
  %130 = load i64, i64* %i, align 8
  %inc268 = add i64 %130, 1
  store i64 %inc268, i64* %i, align 8
  br label %for.cond255, !llvm.loop !59

for.end269:                                       ; preds = %for.cond255
  %131 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %X.addr, align 8
  %132 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %133 = load i64, i64* %mm, align 8
  call void @mpi_montred(%struct.mbedtls_mpi* noundef %131, %struct.mbedtls_mpi* noundef %132, i64 noundef %133, %struct.mbedtls_mpi* noundef %T) #5
  %134 = load i32, i32* %neg, align 4
  %tobool270 = icmp ne i32 %134, 0
  br i1 %tobool270, label %land.lhs.true271, label %if.end290

land.lhs.true271:                                 ; preds = %for.end269
  %135 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %E.addr, align 8
  %n272 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %135, i32 0, i32 1
  %136 = load i64, i64* %n272, align 8
  %cmp273 = icmp ne i64 %136, 0
  br i1 %cmp273, label %land.lhs.true275, label %if.end290

land.lhs.true275:                                 ; preds = %land.lhs.true271
  %137 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %E.addr, align 8
  %p276 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %137, i32 0, i32 2
  %138 = load i64*, i64** %p276, align 8
  %arrayidx277 = getelementptr inbounds i64, i64* %138, i64 0
  %139 = load i64, i64* %arrayidx277, align 8
  %and278 = and i64 %139, 1
  %cmp279 = icmp ne i64 %and278, 0
  br i1 %cmp279, label %if.then281, label %if.end290

if.then281:                                       ; preds = %land.lhs.true275
  %140 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %X.addr, align 8
  %s282 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %140, i32 0, i32 0
  store i32 -1, i32* %s282, align 8
  br label %do.body283

do.body283:                                       ; preds = %if.then281
  %141 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %X.addr, align 8
  %142 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %143 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %X.addr, align 8
  %call284 = call i32 @mbedtls_mpi_add_mpi(%struct.mbedtls_mpi* noundef %141, %struct.mbedtls_mpi* noundef %142, %struct.mbedtls_mpi* noundef %143) #5
  store i32 %call284, i32* %ret, align 4
  %cmp285 = icmp ne i32 %call284, 0
  br i1 %cmp285, label %if.then287, label %if.end288

if.then287:                                       ; preds = %do.body283
  br label %cleanup

if.end288:                                        ; preds = %do.body283
  br label %do.end289

do.end289:                                        ; preds = %if.end288
  br label %if.end290

if.end290:                                        ; preds = %do.end289, %land.lhs.true275, %land.lhs.true271, %for.end269
  br label %cleanup

cleanup:                                          ; preds = %if.end290, %if.then287, %if.then250, %if.then196, %if.then186, %if.then165, %if.then156, %if.then143, %if.then134, %if.then125, %if.then115, %if.then96, %if.then89, %if.then79, %if.then63, %if.then53, %if.then46, %if.then38
  %144 = load i64, i64* %one, align 8
  %145 = load i64, i64* %wsize, align 8
  %sub291 = sub i64 %145, 1
  %shl292 = shl i64 %144, %sub291
  store i64 %shl292, i64* %i, align 8
  br label %for.cond293

for.cond293:                                      ; preds = %for.inc299, %cleanup
  %146 = load i64, i64* %i, align 8
  %147 = load i64, i64* %one, align 8
  %148 = load i64, i64* %wsize, align 8
  %shl294 = shl i64 %147, %148
  %cmp295 = icmp ult i64 %146, %shl294
  br i1 %cmp295, label %for.body297, label %for.end301

for.body297:                                      ; preds = %for.cond293
  %149 = load i64, i64* %i, align 8
  %arrayidx298 = getelementptr inbounds [64 x %struct.mbedtls_mpi], [64 x %struct.mbedtls_mpi]* %W, i64 0, i64 %149
  call void @mbedtls_mpi_free(%struct.mbedtls_mpi* noundef %arrayidx298) #5
  br label %for.inc299

for.inc299:                                       ; preds = %for.body297
  %150 = load i64, i64* %i, align 8
  %inc300 = add i64 %150, 1
  store i64 %inc300, i64* %i, align 8
  br label %for.cond293, !llvm.loop !60

for.end301:                                       ; preds = %for.cond293
  %arrayidx302 = getelementptr inbounds [64 x %struct.mbedtls_mpi], [64 x %struct.mbedtls_mpi]* %W, i64 0, i64 1
  call void @mbedtls_mpi_free(%struct.mbedtls_mpi* noundef %arrayidx302) #5
  call void @mbedtls_mpi_free(%struct.mbedtls_mpi* noundef %T) #5
  call void @mbedtls_mpi_free(%struct.mbedtls_mpi* noundef %Apos) #5
  call void @mbedtls_mpi_free(%struct.mbedtls_mpi* noundef %WW) #5
  %151 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %prec_RR.addr, align 8
  %cmp303 = icmp eq %struct.mbedtls_mpi* %151, null
  br i1 %cmp303, label %if.then309, label %lor.lhs.false305

lor.lhs.false305:                                 ; preds = %for.end301
  %152 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %prec_RR.addr, align 8
  %p306 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %152, i32 0, i32 2
  %153 = load i64*, i64** %p306, align 8
  %cmp307 = icmp eq i64* %153, null
  br i1 %cmp307, label %if.then309, label %if.end310

if.then309:                                       ; preds = %lor.lhs.false305, %for.end301
  call void @mbedtls_mpi_free(%struct.mbedtls_mpi* noundef %RR) #5
  br label %if.end310

if.end310:                                        ; preds = %if.then309, %lor.lhs.false305
  %154 = load i32, i32* %ret, align 4
  store i32 %154, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end310, %if.then17, %if.then10, %if.then
  %155 = load i32, i32* %retval, align 4
  ret i32 %155
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mpi_montg_init(i64* noundef %mm, %struct.mbedtls_mpi* noundef %N) #0 {
entry:
  %mm.addr = alloca i64*, align 8
  %N.addr = alloca %struct.mbedtls_mpi*, align 8
  %x = alloca i64, align 8
  %m0 = alloca i64, align 8
  %i = alloca i32, align 4
  store i64* %mm, i64** %mm.addr, align 8
  store %struct.mbedtls_mpi* %N, %struct.mbedtls_mpi** %N.addr, align 8
  %0 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %p = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %0, i32 0, i32 2
  %1 = load i64*, i64** %p, align 8
  %arrayidx = getelementptr inbounds i64, i64* %1, i64 0
  %2 = load i64, i64* %arrayidx, align 8
  store i64 %2, i64* %m0, align 8
  %3 = load i64, i64* %m0, align 8
  store i64 %3, i64* %x, align 8
  %4 = load i64, i64* %m0, align 8
  %add = add i64 %4, 2
  %and = and i64 %add, 4
  %shl = shl i64 %and, 1
  %5 = load i64, i64* %x, align 8
  %add1 = add i64 %5, %shl
  store i64 %add1, i64* %x, align 8
  store i32 64, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %6 = load i32, i32* %i, align 4
  %cmp = icmp uge i32 %6, 8
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load i64, i64* %m0, align 8
  %8 = load i64, i64* %x, align 8
  %mul = mul i64 %7, %8
  %sub = sub i64 2, %mul
  %9 = load i64, i64* %x, align 8
  %mul2 = mul i64 %9, %sub
  store i64 %mul2, i64* %x, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %10 = load i32, i32* %i, align 4
  %div = udiv i32 %10, 2
  store i32 %div, i32* %i, align 4
  br label %for.cond, !llvm.loop !61

for.end:                                          ; preds = %for.cond
  %11 = load i64, i64* %x, align 8
  %neg = xor i64 %11, -1
  %add3 = add i64 %neg, 1
  %12 = load i64*, i64** %mm.addr, align 8
  store i64 %add3, i64* %12, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mpi_montmul(%struct.mbedtls_mpi* noundef %A, %struct.mbedtls_mpi* noundef %B, %struct.mbedtls_mpi* noundef %N, i64 noundef %mm, %struct.mbedtls_mpi* noundef %T) #0 {
entry:
  %A.addr = alloca %struct.mbedtls_mpi*, align 8
  %B.addr = alloca %struct.mbedtls_mpi*, align 8
  %N.addr = alloca %struct.mbedtls_mpi*, align 8
  %mm.addr = alloca i64, align 8
  %T.addr = alloca %struct.mbedtls_mpi*, align 8
  %n = alloca i64, align 8
  %m = alloca i64, align 8
  %d = alloca i64*, align 8
  %i = alloca i64, align 8
  %u0 = alloca i64, align 8
  %u1 = alloca i64, align 8
  store %struct.mbedtls_mpi* %A, %struct.mbedtls_mpi** %A.addr, align 8
  store %struct.mbedtls_mpi* %B, %struct.mbedtls_mpi** %B.addr, align 8
  store %struct.mbedtls_mpi* %N, %struct.mbedtls_mpi** %N.addr, align 8
  store i64 %mm, i64* %mm.addr, align 8
  store %struct.mbedtls_mpi* %T, %struct.mbedtls_mpi** %T.addr, align 8
  %0 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %T.addr, align 8
  %p = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %0, i32 0, i32 2
  %1 = load i64*, i64** %p, align 8
  %2 = bitcast i64* %1 to i8*
  %3 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %T.addr, align 8
  %n1 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %3, i32 0, i32 1
  %4 = load i64, i64* %n1, align 8
  %mul = mul i64 %4, 8
  %call = call i8* @memset(i8* noundef %2, i32 noundef 0, i64 noundef %mul) #6
  %5 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %T.addr, align 8
  %p2 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %5, i32 0, i32 2
  %6 = load i64*, i64** %p2, align 8
  store i64* %6, i64** %d, align 8
  %7 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %n3 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %7, i32 0, i32 1
  %8 = load i64, i64* %n3, align 8
  store i64 %8, i64* %n, align 8
  %9 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %B.addr, align 8
  %n4 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %9, i32 0, i32 1
  %10 = load i64, i64* %n4, align 8
  %11 = load i64, i64* %n, align 8
  %cmp = icmp ult i64 %10, %11
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %12 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %B.addr, align 8
  %n5 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %12, i32 0, i32 1
  %13 = load i64, i64* %n5, align 8
  br label %cond.end

cond.false:                                       ; preds = %entry
  %14 = load i64, i64* %n, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %13, %cond.true ], [ %14, %cond.false ]
  store i64 %cond, i64* %m, align 8
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %cond.end
  %15 = load i64, i64* %i, align 8
  %16 = load i64, i64* %n, align 8
  %cmp6 = icmp ult i64 %15, %16
  br i1 %cmp6, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %17 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %A.addr, align 8
  %p7 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %17, i32 0, i32 2
  %18 = load i64*, i64** %p7, align 8
  %19 = load i64, i64* %i, align 8
  %arrayidx = getelementptr inbounds i64, i64* %18, i64 %19
  %20 = load i64, i64* %arrayidx, align 8
  store i64 %20, i64* %u0, align 8
  %21 = load i64*, i64** %d, align 8
  %arrayidx8 = getelementptr inbounds i64, i64* %21, i64 0
  %22 = load i64, i64* %arrayidx8, align 8
  %23 = load i64, i64* %u0, align 8
  %24 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %B.addr, align 8
  %p9 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %24, i32 0, i32 2
  %25 = load i64*, i64** %p9, align 8
  %arrayidx10 = getelementptr inbounds i64, i64* %25, i64 0
  %26 = load i64, i64* %arrayidx10, align 8
  %mul11 = mul i64 %23, %26
  %add = add i64 %22, %mul11
  %27 = load i64, i64* %mm.addr, align 8
  %mul12 = mul i64 %add, %27
  store i64 %mul12, i64* %u1, align 8
  %28 = load i64*, i64** %d, align 8
  %29 = load i64, i64* %n, align 8
  %add13 = add i64 %29, 2
  %30 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %B.addr, align 8
  %p14 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %30, i32 0, i32 2
  %31 = load i64*, i64** %p14, align 8
  %32 = load i64, i64* %m, align 8
  %33 = load i64, i64* %u0, align 8
  %call15 = call i64 @mbedtls_mpi_core_mla(i64* noundef %28, i64 noundef %add13, i64* noundef %31, i64 noundef %32, i64 noundef %33) #5
  %34 = load i64*, i64** %d, align 8
  %35 = load i64, i64* %n, align 8
  %add16 = add i64 %35, 2
  %36 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %p17 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %36, i32 0, i32 2
  %37 = load i64*, i64** %p17, align 8
  %38 = load i64, i64* %n, align 8
  %39 = load i64, i64* %u1, align 8
  %call18 = call i64 @mbedtls_mpi_core_mla(i64* noundef %34, i64 noundef %add16, i64* noundef %37, i64 noundef %38, i64 noundef %39) #5
  %40 = load i64*, i64** %d, align 8
  %incdec.ptr = getelementptr inbounds i64, i64* %40, i32 1
  store i64* %incdec.ptr, i64** %d, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %41 = load i64, i64* %i, align 8
  %inc = add i64 %41, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond, !llvm.loop !62

for.end:                                          ; preds = %for.cond
  %42 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %A.addr, align 8
  %p19 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %42, i32 0, i32 2
  %43 = load i64*, i64** %p19, align 8
  %44 = bitcast i64* %43 to i8*
  %45 = load i64*, i64** %d, align 8
  %46 = bitcast i64* %45 to i8*
  %47 = load i64, i64* %n, align 8
  %mul20 = mul i64 %47, 8
  %call21 = call i8* @memcpy(i8* noundef %44, i8* noundef %46, i64 noundef %mul20) #6
  %48 = load i64*, i64** %d, align 8
  %49 = load i64, i64* %n, align 8
  %arrayidx22 = getelementptr inbounds i64, i64* %48, i64 %49
  %50 = load i64, i64* %arrayidx22, align 8
  %add23 = add i64 %50, 1
  store i64 %add23, i64* %arrayidx22, align 8
  %51 = load i64, i64* %n, align 8
  %52 = load i64*, i64** %d, align 8
  %53 = load i64*, i64** %d, align 8
  %54 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %p24 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %54, i32 0, i32 2
  %55 = load i64*, i64** %p24, align 8
  %call25 = call i64 @mpi_sub_hlp(i64 noundef %51, i64* noundef %52, i64* noundef %53, i64* noundef %55) #5
  %56 = load i64*, i64** %d, align 8
  %57 = load i64, i64* %n, align 8
  %arrayidx26 = getelementptr inbounds i64, i64* %56, i64 %57
  %58 = load i64, i64* %arrayidx26, align 8
  %sub = sub i64 %58, %call25
  store i64 %sub, i64* %arrayidx26, align 8
  %59 = load i64, i64* %n, align 8
  %60 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %A.addr, align 8
  %p27 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %60, i32 0, i32 2
  %61 = load i64*, i64** %p27, align 8
  %62 = load i64*, i64** %d, align 8
  %63 = load i64*, i64** %d, align 8
  %64 = load i64, i64* %n, align 8
  %arrayidx28 = getelementptr inbounds i64, i64* %63, i64 %64
  %65 = load i64, i64* %arrayidx28, align 8
  %conv = trunc i64 %65 to i8
  call void @mbedtls_ct_mpi_uint_cond_assign(i64 noundef %59, i64* noundef %61, i64* noundef %62, i8 noundef zeroext %conv) #5
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mpi_montred(%struct.mbedtls_mpi* noundef %A, %struct.mbedtls_mpi* noundef %N, i64 noundef %mm, %struct.mbedtls_mpi* noundef %T) #0 {
entry:
  %A.addr = alloca %struct.mbedtls_mpi*, align 8
  %N.addr = alloca %struct.mbedtls_mpi*, align 8
  %mm.addr = alloca i64, align 8
  %T.addr = alloca %struct.mbedtls_mpi*, align 8
  %z = alloca i64, align 8
  %U = alloca %struct.mbedtls_mpi, align 8
  store %struct.mbedtls_mpi* %A, %struct.mbedtls_mpi** %A.addr, align 8
  store %struct.mbedtls_mpi* %N, %struct.mbedtls_mpi** %N.addr, align 8
  store i64 %mm, i64* %mm.addr, align 8
  store %struct.mbedtls_mpi* %T, %struct.mbedtls_mpi** %T.addr, align 8
  store i64 1, i64* %z, align 8
  %0 = load i64, i64* %z, align 8
  %conv = trunc i64 %0 to i32
  %s = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %U, i32 0, i32 0
  store i32 %conv, i32* %s, align 8
  %conv1 = sext i32 %conv to i64
  %n = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %U, i32 0, i32 1
  store i64 %conv1, i64* %n, align 8
  %p = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %U, i32 0, i32 2
  store i64* %z, i64** %p, align 8
  %1 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %A.addr, align 8
  %2 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %3 = load i64, i64* %mm.addr, align 8
  %4 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %T.addr, align 8
  call void @mpi_montmul(%struct.mbedtls_mpi* noundef %1, %struct.mbedtls_mpi* noundef %U, %struct.mbedtls_mpi* noundef %2, i64 noundef %3, %struct.mbedtls_mpi* noundef %4) #5
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mpi_select(%struct.mbedtls_mpi* noundef %R, %struct.mbedtls_mpi* noundef %T, i64 noundef %T_size, i64 noundef %idx) #0 {
entry:
  %R.addr = alloca %struct.mbedtls_mpi*, align 8
  %T.addr = alloca %struct.mbedtls_mpi*, align 8
  %T_size.addr = alloca i64, align 8
  %idx.addr = alloca i64, align 8
  %ret = alloca i32, align 4
  %i = alloca i64, align 8
  store %struct.mbedtls_mpi* %R, %struct.mbedtls_mpi** %R.addr, align 8
  store %struct.mbedtls_mpi* %T, %struct.mbedtls_mpi** %T.addr, align 8
  store i64 %T_size, i64* %T_size.addr, align 8
  store i64 %idx, i64* %idx.addr, align 8
  store i32 -110, i32* %ret, align 4
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, i64* %i, align 8
  %1 = load i64, i64* %T_size.addr, align 8
  %cmp = icmp ult i64 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  br label %do.body

do.body:                                          ; preds = %for.body
  %2 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %R.addr, align 8
  %3 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %T.addr, align 8
  %4 = load i64, i64* %i, align 8
  %arrayidx = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %3, i64 %4
  %5 = load i64, i64* %i, align 8
  %6 = load i64, i64* %idx.addr, align 8
  %call = call i32 @mbedtls_ct_size_bool_eq(i64 noundef %5, i64 noundef %6) #5
  %conv = trunc i32 %call to i8
  %call1 = call i32 @mbedtls_mpi_safe_cond_assign(%struct.mbedtls_mpi* noundef %2, %struct.mbedtls_mpi* noundef %arrayidx, i8 noundef zeroext %conv) #5
  store i32 %call1, i32* %ret, align 4
  %cmp2 = icmp ne i32 %call1, 0
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  br label %cleanup

if.end:                                           ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %for.inc

for.inc:                                          ; preds = %do.end
  %7 = load i64, i64* %i, align 8
  %inc = add i64 %7, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond, !llvm.loop !63

for.end:                                          ; preds = %for.cond
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then
  %8 = load i32, i32* %ret, align 4
  ret i32 %8
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_mpi_gcd(%struct.mbedtls_mpi* noundef %G, %struct.mbedtls_mpi* noundef %A, %struct.mbedtls_mpi* noundef %B) #0 {
entry:
  %G.addr = alloca %struct.mbedtls_mpi*, align 8
  %A.addr = alloca %struct.mbedtls_mpi*, align 8
  %B.addr = alloca %struct.mbedtls_mpi*, align 8
  %ret = alloca i32, align 4
  %lz = alloca i64, align 8
  %lzt = alloca i64, align 8
  %TA = alloca %struct.mbedtls_mpi, align 8
  %TB = alloca %struct.mbedtls_mpi, align 8
  store %struct.mbedtls_mpi* %G, %struct.mbedtls_mpi** %G.addr, align 8
  store %struct.mbedtls_mpi* %A, %struct.mbedtls_mpi** %A.addr, align 8
  store %struct.mbedtls_mpi* %B, %struct.mbedtls_mpi** %B.addr, align 8
  store i32 -110, i32* %ret, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %do.body1

do.body1:                                         ; preds = %do.end
  br label %do.end2

do.end2:                                          ; preds = %do.body1
  br label %do.body3

do.body3:                                         ; preds = %do.end2
  br label %do.end4

do.end4:                                          ; preds = %do.body3
  call void @mbedtls_mpi_init(%struct.mbedtls_mpi* noundef %TA) #5
  call void @mbedtls_mpi_init(%struct.mbedtls_mpi* noundef %TB) #5
  br label %do.body5

do.body5:                                         ; preds = %do.end4
  %0 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %A.addr, align 8
  %call = call i32 @mbedtls_mpi_copy(%struct.mbedtls_mpi* noundef %TA, %struct.mbedtls_mpi* noundef %0) #5
  store i32 %call, i32* %ret, align 4
  %cmp = icmp ne i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.body5
  br label %cleanup

if.end:                                           ; preds = %do.body5
  br label %do.end6

do.end6:                                          ; preds = %if.end
  br label %do.body7

do.body7:                                         ; preds = %do.end6
  %1 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %B.addr, align 8
  %call8 = call i32 @mbedtls_mpi_copy(%struct.mbedtls_mpi* noundef %TB, %struct.mbedtls_mpi* noundef %1) #5
  store i32 %call8, i32* %ret, align 4
  %cmp9 = icmp ne i32 %call8, 0
  br i1 %cmp9, label %if.then10, label %if.end11

if.then10:                                        ; preds = %do.body7
  br label %cleanup

if.end11:                                         ; preds = %do.body7
  br label %do.end12

do.end12:                                         ; preds = %if.end11
  %call13 = call i64 @mbedtls_mpi_lsb(%struct.mbedtls_mpi* noundef %TA) #5
  store i64 %call13, i64* %lz, align 8
  %call14 = call i64 @mbedtls_mpi_lsb(%struct.mbedtls_mpi* noundef %TB) #5
  store i64 %call14, i64* %lzt, align 8
  %2 = load i64, i64* %lzt, align 8
  %cmp15 = icmp eq i64 %2, 0
  br i1 %cmp15, label %land.lhs.true, label %if.end20

land.lhs.true:                                    ; preds = %do.end12
  %call16 = call i32 @mbedtls_mpi_get_bit(%struct.mbedtls_mpi* noundef %TB, i64 noundef 0) #5
  %cmp17 = icmp eq i32 %call16, 0
  br i1 %cmp17, label %if.then18, label %if.end20

if.then18:                                        ; preds = %land.lhs.true
  %3 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %G.addr, align 8
  %4 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %A.addr, align 8
  %call19 = call i32 @mbedtls_mpi_copy(%struct.mbedtls_mpi* noundef %3, %struct.mbedtls_mpi* noundef %4) #5
  store i32 %call19, i32* %ret, align 4
  br label %cleanup

if.end20:                                         ; preds = %land.lhs.true, %do.end12
  %5 = load i64, i64* %lzt, align 8
  %6 = load i64, i64* %lz, align 8
  %cmp21 = icmp ult i64 %5, %6
  br i1 %cmp21, label %if.then22, label %if.end23

if.then22:                                        ; preds = %if.end20
  %7 = load i64, i64* %lzt, align 8
  store i64 %7, i64* %lz, align 8
  br label %if.end23

if.end23:                                         ; preds = %if.then22, %if.end20
  %s = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %TB, i32 0, i32 0
  store i32 1, i32* %s, align 8
  %s24 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %TA, i32 0, i32 0
  store i32 1, i32* %s24, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end68, %if.end23
  %call25 = call i32 @mbedtls_mpi_cmp_int(%struct.mbedtls_mpi* noundef %TA, i64 noundef 0) #5
  %cmp26 = icmp ne i32 %call25, 0
  br i1 %cmp26, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  br label %do.body27

do.body27:                                        ; preds = %while.body
  %call28 = call i64 @mbedtls_mpi_lsb(%struct.mbedtls_mpi* noundef %TA) #5
  %call29 = call i32 @mbedtls_mpi_shift_r(%struct.mbedtls_mpi* noundef %TA, i64 noundef %call28) #5
  store i32 %call29, i32* %ret, align 4
  %cmp30 = icmp ne i32 %call29, 0
  br i1 %cmp30, label %if.then31, label %if.end32

if.then31:                                        ; preds = %do.body27
  br label %cleanup

if.end32:                                         ; preds = %do.body27
  br label %do.end33

do.end33:                                         ; preds = %if.end32
  br label %do.body34

do.body34:                                        ; preds = %do.end33
  %call35 = call i64 @mbedtls_mpi_lsb(%struct.mbedtls_mpi* noundef %TB) #5
  %call36 = call i32 @mbedtls_mpi_shift_r(%struct.mbedtls_mpi* noundef %TB, i64 noundef %call35) #5
  store i32 %call36, i32* %ret, align 4
  %cmp37 = icmp ne i32 %call36, 0
  br i1 %cmp37, label %if.then38, label %if.end39

if.then38:                                        ; preds = %do.body34
  br label %cleanup

if.end39:                                         ; preds = %do.body34
  br label %do.end40

do.end40:                                         ; preds = %if.end39
  %call41 = call i32 @mbedtls_mpi_cmp_mpi(%struct.mbedtls_mpi* noundef %TA, %struct.mbedtls_mpi* noundef %TB) #5
  %cmp42 = icmp sge i32 %call41, 0
  br i1 %cmp42, label %if.then43, label %if.else

if.then43:                                        ; preds = %do.end40
  br label %do.body44

do.body44:                                        ; preds = %if.then43
  %call45 = call i32 @mbedtls_mpi_sub_abs(%struct.mbedtls_mpi* noundef %TA, %struct.mbedtls_mpi* noundef %TA, %struct.mbedtls_mpi* noundef %TB) #5
  store i32 %call45, i32* %ret, align 4
  %cmp46 = icmp ne i32 %call45, 0
  br i1 %cmp46, label %if.then47, label %if.end48

if.then47:                                        ; preds = %do.body44
  br label %cleanup

if.end48:                                         ; preds = %do.body44
  br label %do.end49

do.end49:                                         ; preds = %if.end48
  br label %do.body50

do.body50:                                        ; preds = %do.end49
  %call51 = call i32 @mbedtls_mpi_shift_r(%struct.mbedtls_mpi* noundef %TA, i64 noundef 1) #5
  store i32 %call51, i32* %ret, align 4
  %cmp52 = icmp ne i32 %call51, 0
  br i1 %cmp52, label %if.then53, label %if.end54

if.then53:                                        ; preds = %do.body50
  br label %cleanup

if.end54:                                         ; preds = %do.body50
  br label %do.end55

do.end55:                                         ; preds = %if.end54
  br label %if.end68

if.else:                                          ; preds = %do.end40
  br label %do.body56

do.body56:                                        ; preds = %if.else
  %call57 = call i32 @mbedtls_mpi_sub_abs(%struct.mbedtls_mpi* noundef %TB, %struct.mbedtls_mpi* noundef %TB, %struct.mbedtls_mpi* noundef %TA) #5
  store i32 %call57, i32* %ret, align 4
  %cmp58 = icmp ne i32 %call57, 0
  br i1 %cmp58, label %if.then59, label %if.end60

if.then59:                                        ; preds = %do.body56
  br label %cleanup

if.end60:                                         ; preds = %do.body56
  br label %do.end61

do.end61:                                         ; preds = %if.end60
  br label %do.body62

do.body62:                                        ; preds = %do.end61
  %call63 = call i32 @mbedtls_mpi_shift_r(%struct.mbedtls_mpi* noundef %TB, i64 noundef 1) #5
  store i32 %call63, i32* %ret, align 4
  %cmp64 = icmp ne i32 %call63, 0
  br i1 %cmp64, label %if.then65, label %if.end66

if.then65:                                        ; preds = %do.body62
  br label %cleanup

if.end66:                                         ; preds = %do.body62
  br label %do.end67

do.end67:                                         ; preds = %if.end66
  br label %if.end68

if.end68:                                         ; preds = %do.end67, %do.end55
  br label %while.cond, !llvm.loop !64

while.end:                                        ; preds = %while.cond
  br label %do.body69

do.body69:                                        ; preds = %while.end
  %8 = load i64, i64* %lz, align 8
  %call70 = call i32 @mbedtls_mpi_shift_l(%struct.mbedtls_mpi* noundef %TB, i64 noundef %8) #5
  store i32 %call70, i32* %ret, align 4
  %cmp71 = icmp ne i32 %call70, 0
  br i1 %cmp71, label %if.then72, label %if.end73

if.then72:                                        ; preds = %do.body69
  br label %cleanup

if.end73:                                         ; preds = %do.body69
  br label %do.end74

do.end74:                                         ; preds = %if.end73
  br label %do.body75

do.body75:                                        ; preds = %do.end74
  %9 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %G.addr, align 8
  %call76 = call i32 @mbedtls_mpi_copy(%struct.mbedtls_mpi* noundef %9, %struct.mbedtls_mpi* noundef %TB) #5
  store i32 %call76, i32* %ret, align 4
  %cmp77 = icmp ne i32 %call76, 0
  br i1 %cmp77, label %if.then78, label %if.end79

if.then78:                                        ; preds = %do.body75
  br label %cleanup

if.end79:                                         ; preds = %do.body75
  br label %do.end80

do.end80:                                         ; preds = %if.end79
  br label %cleanup

cleanup:                                          ; preds = %do.end80, %if.then78, %if.then72, %if.then65, %if.then59, %if.then53, %if.then47, %if.then38, %if.then31, %if.then18, %if.then10, %if.then
  call void @mbedtls_mpi_free(%struct.mbedtls_mpi* noundef %TA) #5
  call void @mbedtls_mpi_free(%struct.mbedtls_mpi* noundef %TB) #5
  %10 = load i32, i32* %ret, align 4
  ret i32 %10
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_mpi_fill_random(%struct.mbedtls_mpi* noundef %X, i64 noundef %size, i32 (i8*, i8*, i64)* noundef %f_rng, i8* noundef %p_rng) #0 {
entry:
  %retval = alloca i32, align 4
  %X.addr = alloca %struct.mbedtls_mpi*, align 8
  %size.addr = alloca i64, align 8
  %f_rng.addr = alloca i32 (i8*, i8*, i64)*, align 8
  %p_rng.addr = alloca i8*, align 8
  %ret = alloca i32, align 4
  %limbs = alloca i64, align 8
  store %struct.mbedtls_mpi* %X, %struct.mbedtls_mpi** %X.addr, align 8
  store i64 %size, i64* %size.addr, align 8
  store i32 (i8*, i8*, i64)* %f_rng, i32 (i8*, i8*, i64)** %f_rng.addr, align 8
  store i8* %p_rng, i8** %p_rng.addr, align 8
  store i32 -110, i32* %ret, align 4
  %0 = load i64, i64* %size.addr, align 8
  %div = udiv i64 %0, 8
  %1 = load i64, i64* %size.addr, align 8
  %rem = urem i64 %1, 8
  %cmp = icmp ne i64 %rem, 0
  %conv = zext i1 %cmp to i32
  %conv1 = sext i32 %conv to i64
  %add = add i64 %div, %conv1
  store i64 %add, i64* %limbs, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %do.body2

do.body2:                                         ; preds = %do.end
  br label %do.end3

do.end3:                                          ; preds = %do.body2
  br label %do.body4

do.body4:                                         ; preds = %do.end3
  %2 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %X.addr, align 8
  %3 = load i64, i64* %limbs, align 8
  %call = call i32 @mbedtls_mpi_resize_clear(%struct.mbedtls_mpi* noundef %2, i64 noundef %3) #5
  store i32 %call, i32* %ret, align 4
  %cmp5 = icmp ne i32 %call, 0
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %do.body4
  br label %cleanup

if.end:                                           ; preds = %do.body4
  br label %do.end7

do.end7:                                          ; preds = %if.end
  %4 = load i64, i64* %size.addr, align 8
  %cmp8 = icmp eq i64 %4, 0
  br i1 %cmp8, label %if.then10, label %if.end11

if.then10:                                        ; preds = %do.end7
  store i32 0, i32* %retval, align 4
  br label %return

if.end11:                                         ; preds = %do.end7
  %5 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %X.addr, align 8
  %6 = load i64, i64* %size.addr, align 8
  %7 = load i32 (i8*, i8*, i64)*, i32 (i8*, i8*, i64)** %f_rng.addr, align 8
  %8 = load i8*, i8** %p_rng.addr, align 8
  %call12 = call i32 @mpi_fill_random_internal(%struct.mbedtls_mpi* noundef %5, i64 noundef %6, i32 (i8*, i8*, i64)* noundef %7, i8* noundef %8) #5
  store i32 %call12, i32* %ret, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %if.then
  %9 = load i32, i32* %ret, align 4
  store i32 %9, i32* %retval, align 4
  br label %return

return:                                           ; preds = %cleanup, %if.then10
  %10 = load i32, i32* %retval, align 4
  ret i32 %10
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mpi_fill_random_internal(%struct.mbedtls_mpi* noundef %X, i64 noundef %n_bytes, i32 (i8*, i8*, i64)* noundef %f_rng, i8* noundef %p_rng) #0 {
entry:
  %retval = alloca i32, align 4
  %X.addr = alloca %struct.mbedtls_mpi*, align 8
  %n_bytes.addr = alloca i64, align 8
  %f_rng.addr = alloca i32 (i8*, i8*, i64)*, align 8
  %p_rng.addr = alloca i8*, align 8
  %ret = alloca i32, align 4
  %limbs = alloca i64, align 8
  %overhead = alloca i64, align 8
  store %struct.mbedtls_mpi* %X, %struct.mbedtls_mpi** %X.addr, align 8
  store i64 %n_bytes, i64* %n_bytes.addr, align 8
  store i32 (i8*, i8*, i64)* %f_rng, i32 (i8*, i8*, i64)** %f_rng.addr, align 8
  store i8* %p_rng, i8** %p_rng.addr, align 8
  store i32 -110, i32* %ret, align 4
  %0 = load i64, i64* %n_bytes.addr, align 8
  %div = udiv i64 %0, 8
  %1 = load i64, i64* %n_bytes.addr, align 8
  %rem = urem i64 %1, 8
  %cmp = icmp ne i64 %rem, 0
  %conv = zext i1 %cmp to i32
  %conv1 = sext i32 %conv to i64
  %add = add i64 %div, %conv1
  store i64 %add, i64* %limbs, align 8
  %2 = load i64, i64* %limbs, align 8
  %mul = mul i64 %2, 8
  %3 = load i64, i64* %n_bytes.addr, align 8
  %sub = sub i64 %mul, %3
  store i64 %sub, i64* %overhead, align 8
  %4 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %X.addr, align 8
  %n = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %4, i32 0, i32 1
  %5 = load i64, i64* %n, align 8
  %6 = load i64, i64* %limbs, align 8
  %cmp2 = icmp ult i64 %5, %6
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -4, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %7 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %X.addr, align 8
  %p = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %7, i32 0, i32 2
  %8 = load i64*, i64** %p, align 8
  %9 = bitcast i64* %8 to i8*
  %10 = load i64, i64* %overhead, align 8
  %call = call i8* @memset(i8* noundef %9, i32 noundef 0, i64 noundef %10) #6
  %11 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %X.addr, align 8
  %p4 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %11, i32 0, i32 2
  %12 = load i64*, i64** %p4, align 8
  %13 = bitcast i64* %12 to i8*
  %14 = load i64, i64* %limbs, align 8
  %mul5 = mul i64 %14, 8
  %add.ptr = getelementptr inbounds i8, i8* %13, i64 %mul5
  %15 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %X.addr, align 8
  %n6 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %15, i32 0, i32 1
  %16 = load i64, i64* %n6, align 8
  %17 = load i64, i64* %limbs, align 8
  %sub7 = sub i64 %16, %17
  %mul8 = mul i64 %sub7, 8
  %call9 = call i8* @memset(i8* noundef %add.ptr, i32 noundef 0, i64 noundef %mul8) #6
  br label %do.body

do.body:                                          ; preds = %if.end
  %18 = load i32 (i8*, i8*, i64)*, i32 (i8*, i8*, i64)** %f_rng.addr, align 8
  %19 = load i8*, i8** %p_rng.addr, align 8
  %20 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %X.addr, align 8
  %p10 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %20, i32 0, i32 2
  %21 = load i64*, i64** %p10, align 8
  %22 = bitcast i64* %21 to i8*
  %23 = load i64, i64* %overhead, align 8
  %add.ptr11 = getelementptr inbounds i8, i8* %22, i64 %23
  %24 = load i64, i64* %n_bytes.addr, align 8
  %call12 = call i32 %18(i8* noundef %19, i8* noundef %add.ptr11, i64 noundef %24) #5
  store i32 %call12, i32* %ret, align 4
  %cmp13 = icmp ne i32 %call12, 0
  br i1 %cmp13, label %if.then15, label %if.end16

if.then15:                                        ; preds = %do.body
  br label %cleanup

if.end16:                                         ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %if.end16
  %25 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %X.addr, align 8
  %p17 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %25, i32 0, i32 2
  %26 = load i64*, i64** %p17, align 8
  %27 = load i64, i64* %limbs, align 8
  call void @mpi_bigendian_to_host(i64* noundef %26, i64 noundef %27) #5
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.then15
  %28 = load i32, i32* %ret, align 4
  store i32 %28, i32* %retval, align 4
  br label %return

return:                                           ; preds = %cleanup, %if.then
  %29 = load i32, i32* %retval, align 4
  ret i32 %29
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_mpi_random(%struct.mbedtls_mpi* noundef %X, i64 noundef %min, %struct.mbedtls_mpi* noundef %N, i32 (i8*, i8*, i64)* noundef %f_rng, i8* noundef %p_rng) #0 {
entry:
  %retval = alloca i32, align 4
  %X.addr = alloca %struct.mbedtls_mpi*, align 8
  %min.addr = alloca i64, align 8
  %N.addr = alloca %struct.mbedtls_mpi*, align 8
  %f_rng.addr = alloca i32 (i8*, i8*, i64)*, align 8
  %p_rng.addr = alloca i8*, align 8
  %ret = alloca i32, align 4
  %count = alloca i32, align 4
  %lt_lower = alloca i32, align 4
  %lt_upper = alloca i32, align 4
  %n_bits = alloca i64, align 8
  %n_bytes = alloca i64, align 8
  %lower_bound = alloca %struct.mbedtls_mpi, align 8
  store %struct.mbedtls_mpi* %X, %struct.mbedtls_mpi** %X.addr, align 8
  store i64 %min, i64* %min.addr, align 8
  store %struct.mbedtls_mpi* %N, %struct.mbedtls_mpi** %N.addr, align 8
  store i32 (i8*, i8*, i64)* %f_rng, i32 (i8*, i8*, i64)** %f_rng.addr, align 8
  store i8* %p_rng, i8** %p_rng.addr, align 8
  store i32 -4, i32* %ret, align 4
  store i32 1, i32* %lt_lower, align 4
  store i32 0, i32* %lt_upper, align 4
  %0 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %call = call i64 @mbedtls_mpi_bitlen(%struct.mbedtls_mpi* noundef %0) #5
  store i64 %call, i64* %n_bits, align 8
  %1 = load i64, i64* %n_bits, align 8
  %add = add i64 %1, 7
  %div = udiv i64 %add, 8
  store i64 %div, i64* %n_bytes, align 8
  %2 = load i64, i64* %min.addr, align 8
  %cmp = icmp slt i64 %2, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -4, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %3 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %4 = load i64, i64* %min.addr, align 8
  %call1 = call i32 @mbedtls_mpi_cmp_int(%struct.mbedtls_mpi* noundef %3, i64 noundef %4) #5
  %cmp2 = icmp sle i32 %call1, 0
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  store i32 -4, i32* %retval, align 4
  br label %return

if.end4:                                          ; preds = %if.end
  %5 = load i64, i64* %n_bytes, align 8
  %cmp5 = icmp ugt i64 %5, 4
  %6 = zext i1 %cmp5 to i64
  %cond = select i1 %cmp5, i32 30, i32 250
  store i32 %cond, i32* %count, align 4
  call void @mbedtls_mpi_init(%struct.mbedtls_mpi* noundef %lower_bound) #5
  br label %do.body

do.body:                                          ; preds = %if.end4
  %7 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %X.addr, align 8
  %8 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %n = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %8, i32 0, i32 1
  %9 = load i64, i64* %n, align 8
  %call6 = call i32 @mbedtls_mpi_resize_clear(%struct.mbedtls_mpi* noundef %7, i64 noundef %9) #5
  store i32 %call6, i32* %ret, align 4
  %cmp7 = icmp ne i32 %call6, 0
  br i1 %cmp7, label %if.then8, label %if.end9

if.then8:                                         ; preds = %do.body
  br label %cleanup

if.end9:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %if.end9
  br label %do.body10

do.body10:                                        ; preds = %do.end
  %10 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %n11 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %10, i32 0, i32 1
  %11 = load i64, i64* %n11, align 8
  %call12 = call i32 @mbedtls_mpi_grow(%struct.mbedtls_mpi* noundef %lower_bound, i64 noundef %11) #5
  store i32 %call12, i32* %ret, align 4
  %cmp13 = icmp ne i32 %call12, 0
  br i1 %cmp13, label %if.then14, label %if.end15

if.then14:                                        ; preds = %do.body10
  br label %cleanup

if.end15:                                         ; preds = %do.body10
  br label %do.end16

do.end16:                                         ; preds = %if.end15
  br label %do.body17

do.body17:                                        ; preds = %do.end16
  %12 = load i64, i64* %min.addr, align 8
  %call18 = call i32 @mbedtls_mpi_lset(%struct.mbedtls_mpi* noundef %lower_bound, i64 noundef %12) #5
  store i32 %call18, i32* %ret, align 4
  %cmp19 = icmp ne i32 %call18, 0
  br i1 %cmp19, label %if.then20, label %if.end21

if.then20:                                        ; preds = %do.body17
  br label %cleanup

if.end21:                                         ; preds = %do.body17
  br label %do.end22

do.end22:                                         ; preds = %if.end21
  br label %do.body23

do.body23:                                        ; preds = %lor.end, %do.end22
  br label %do.body24

do.body24:                                        ; preds = %do.body23
  %13 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %X.addr, align 8
  %14 = load i64, i64* %n_bytes, align 8
  %15 = load i32 (i8*, i8*, i64)*, i32 (i8*, i8*, i64)** %f_rng.addr, align 8
  %16 = load i8*, i8** %p_rng.addr, align 8
  %call25 = call i32 @mpi_fill_random_internal(%struct.mbedtls_mpi* noundef %13, i64 noundef %14, i32 (i8*, i8*, i64)* noundef %15, i8* noundef %16) #5
  store i32 %call25, i32* %ret, align 4
  %cmp26 = icmp ne i32 %call25, 0
  br i1 %cmp26, label %if.then27, label %if.end28

if.then27:                                        ; preds = %do.body24
  br label %cleanup

if.end28:                                         ; preds = %do.body24
  br label %do.end29

do.end29:                                         ; preds = %if.end28
  br label %do.body30

do.body30:                                        ; preds = %do.end29
  %17 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %X.addr, align 8
  %18 = load i64, i64* %n_bytes, align 8
  %mul = mul i64 8, %18
  %19 = load i64, i64* %n_bits, align 8
  %sub = sub i64 %mul, %19
  %call31 = call i32 @mbedtls_mpi_shift_r(%struct.mbedtls_mpi* noundef %17, i64 noundef %sub) #5
  store i32 %call31, i32* %ret, align 4
  %cmp32 = icmp ne i32 %call31, 0
  br i1 %cmp32, label %if.then33, label %if.end34

if.then33:                                        ; preds = %do.body30
  br label %cleanup

if.end34:                                         ; preds = %do.body30
  br label %do.end35

do.end35:                                         ; preds = %if.end34
  %20 = load i32, i32* %count, align 4
  %dec = add nsw i32 %20, -1
  store i32 %dec, i32* %count, align 4
  %cmp36 = icmp eq i32 %dec, 0
  br i1 %cmp36, label %if.then37, label %if.end38

if.then37:                                        ; preds = %do.end35
  store i32 -14, i32* %ret, align 4
  br label %cleanup

if.end38:                                         ; preds = %do.end35
  br label %do.body39

do.body39:                                        ; preds = %if.end38
  %21 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %X.addr, align 8
  %call40 = call i32 @mbedtls_mpi_lt_mpi_ct(%struct.mbedtls_mpi* noundef %21, %struct.mbedtls_mpi* noundef %lower_bound, i32* noundef %lt_lower) #5
  store i32 %call40, i32* %ret, align 4
  %cmp41 = icmp ne i32 %call40, 0
  br i1 %cmp41, label %if.then42, label %if.end43

if.then42:                                        ; preds = %do.body39
  br label %cleanup

if.end43:                                         ; preds = %do.body39
  br label %do.end44

do.end44:                                         ; preds = %if.end43
  br label %do.body45

do.body45:                                        ; preds = %do.end44
  %22 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %X.addr, align 8
  %23 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %call46 = call i32 @mbedtls_mpi_lt_mpi_ct(%struct.mbedtls_mpi* noundef %22, %struct.mbedtls_mpi* noundef %23, i32* noundef %lt_upper) #5
  store i32 %call46, i32* %ret, align 4
  %cmp47 = icmp ne i32 %call46, 0
  br i1 %cmp47, label %if.then48, label %if.end49

if.then48:                                        ; preds = %do.body45
  br label %cleanup

if.end49:                                         ; preds = %do.body45
  br label %do.end50

do.end50:                                         ; preds = %if.end49
  br label %do.cond

do.cond:                                          ; preds = %do.end50
  %24 = load i32, i32* %lt_lower, align 4
  %cmp51 = icmp ne i32 %24, 0
  br i1 %cmp51, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %do.cond
  %25 = load i32, i32* %lt_upper, align 4
  %cmp52 = icmp eq i32 %25, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %do.cond
  %26 = phi i1 [ true, %do.cond ], [ %cmp52, %lor.rhs ]
  br i1 %26, label %do.body23, label %do.end53, !llvm.loop !65

do.end53:                                         ; preds = %lor.end
  br label %cleanup

cleanup:                                          ; preds = %do.end53, %if.then48, %if.then42, %if.then37, %if.then33, %if.then27, %if.then20, %if.then14, %if.then8
  call void @mbedtls_mpi_free(%struct.mbedtls_mpi* noundef %lower_bound) #5
  %27 = load i32, i32* %ret, align 4
  store i32 %27, i32* %retval, align 4
  br label %return

return:                                           ; preds = %cleanup, %if.then3, %if.then
  %28 = load i32, i32* %retval, align 4
  ret i32 %28
}

declare dso_local i32 @mbedtls_mpi_lt_mpi_ct(%struct.mbedtls_mpi* noundef, %struct.mbedtls_mpi* noundef, i32* noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_mpi_inv_mod(%struct.mbedtls_mpi* noundef %X, %struct.mbedtls_mpi* noundef %A, %struct.mbedtls_mpi* noundef %N) #0 {
entry:
  %retval = alloca i32, align 4
  %X.addr = alloca %struct.mbedtls_mpi*, align 8
  %A.addr = alloca %struct.mbedtls_mpi*, align 8
  %N.addr = alloca %struct.mbedtls_mpi*, align 8
  %ret = alloca i32, align 4
  %G = alloca %struct.mbedtls_mpi, align 8
  %TA = alloca %struct.mbedtls_mpi, align 8
  %TU = alloca %struct.mbedtls_mpi, align 8
  %U1 = alloca %struct.mbedtls_mpi, align 8
  %U2 = alloca %struct.mbedtls_mpi, align 8
  %TB = alloca %struct.mbedtls_mpi, align 8
  %TV = alloca %struct.mbedtls_mpi, align 8
  %V1 = alloca %struct.mbedtls_mpi, align 8
  %V2 = alloca %struct.mbedtls_mpi, align 8
  store %struct.mbedtls_mpi* %X, %struct.mbedtls_mpi** %X.addr, align 8
  store %struct.mbedtls_mpi* %A, %struct.mbedtls_mpi** %A.addr, align 8
  store %struct.mbedtls_mpi* %N, %struct.mbedtls_mpi** %N.addr, align 8
  store i32 -110, i32* %ret, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %do.body1

do.body1:                                         ; preds = %do.end
  br label %do.end2

do.end2:                                          ; preds = %do.body1
  br label %do.body3

do.body3:                                         ; preds = %do.end2
  br label %do.end4

do.end4:                                          ; preds = %do.body3
  %0 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %call = call i32 @mbedtls_mpi_cmp_int(%struct.mbedtls_mpi* noundef %0, i64 noundef 1) #5
  %cmp = icmp sle i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.end4
  store i32 -4, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %do.end4
  call void @mbedtls_mpi_init(%struct.mbedtls_mpi* noundef %TA) #5
  call void @mbedtls_mpi_init(%struct.mbedtls_mpi* noundef %TU) #5
  call void @mbedtls_mpi_init(%struct.mbedtls_mpi* noundef %U1) #5
  call void @mbedtls_mpi_init(%struct.mbedtls_mpi* noundef %U2) #5
  call void @mbedtls_mpi_init(%struct.mbedtls_mpi* noundef %G) #5
  call void @mbedtls_mpi_init(%struct.mbedtls_mpi* noundef %TB) #5
  call void @mbedtls_mpi_init(%struct.mbedtls_mpi* noundef %TV) #5
  call void @mbedtls_mpi_init(%struct.mbedtls_mpi* noundef %V1) #5
  call void @mbedtls_mpi_init(%struct.mbedtls_mpi* noundef %V2) #5
  br label %do.body5

do.body5:                                         ; preds = %if.end
  %1 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %A.addr, align 8
  %2 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %call6 = call i32 @mbedtls_mpi_gcd(%struct.mbedtls_mpi* noundef %G, %struct.mbedtls_mpi* noundef %1, %struct.mbedtls_mpi* noundef %2) #5
  store i32 %call6, i32* %ret, align 4
  %cmp7 = icmp ne i32 %call6, 0
  br i1 %cmp7, label %if.then8, label %if.end9

if.then8:                                         ; preds = %do.body5
  br label %cleanup

if.end9:                                          ; preds = %do.body5
  br label %do.end10

do.end10:                                         ; preds = %if.end9
  %call11 = call i32 @mbedtls_mpi_cmp_int(%struct.mbedtls_mpi* noundef %G, i64 noundef 1) #5
  %cmp12 = icmp ne i32 %call11, 0
  br i1 %cmp12, label %if.then13, label %if.end14

if.then13:                                        ; preds = %do.end10
  store i32 -14, i32* %ret, align 4
  br label %cleanup

if.end14:                                         ; preds = %do.end10
  br label %do.body15

do.body15:                                        ; preds = %if.end14
  %3 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %A.addr, align 8
  %4 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %call16 = call i32 @mbedtls_mpi_mod_mpi(%struct.mbedtls_mpi* noundef %TA, %struct.mbedtls_mpi* noundef %3, %struct.mbedtls_mpi* noundef %4) #5
  store i32 %call16, i32* %ret, align 4
  %cmp17 = icmp ne i32 %call16, 0
  br i1 %cmp17, label %if.then18, label %if.end19

if.then18:                                        ; preds = %do.body15
  br label %cleanup

if.end19:                                         ; preds = %do.body15
  br label %do.end20

do.end20:                                         ; preds = %if.end19
  br label %do.body21

do.body21:                                        ; preds = %do.end20
  %call22 = call i32 @mbedtls_mpi_copy(%struct.mbedtls_mpi* noundef %TU, %struct.mbedtls_mpi* noundef %TA) #5
  store i32 %call22, i32* %ret, align 4
  %cmp23 = icmp ne i32 %call22, 0
  br i1 %cmp23, label %if.then24, label %if.end25

if.then24:                                        ; preds = %do.body21
  br label %cleanup

if.end25:                                         ; preds = %do.body21
  br label %do.end26

do.end26:                                         ; preds = %if.end25
  br label %do.body27

do.body27:                                        ; preds = %do.end26
  %5 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %call28 = call i32 @mbedtls_mpi_copy(%struct.mbedtls_mpi* noundef %TB, %struct.mbedtls_mpi* noundef %5) #5
  store i32 %call28, i32* %ret, align 4
  %cmp29 = icmp ne i32 %call28, 0
  br i1 %cmp29, label %if.then30, label %if.end31

if.then30:                                        ; preds = %do.body27
  br label %cleanup

if.end31:                                         ; preds = %do.body27
  br label %do.end32

do.end32:                                         ; preds = %if.end31
  br label %do.body33

do.body33:                                        ; preds = %do.end32
  %6 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %call34 = call i32 @mbedtls_mpi_copy(%struct.mbedtls_mpi* noundef %TV, %struct.mbedtls_mpi* noundef %6) #5
  store i32 %call34, i32* %ret, align 4
  %cmp35 = icmp ne i32 %call34, 0
  br i1 %cmp35, label %if.then36, label %if.end37

if.then36:                                        ; preds = %do.body33
  br label %cleanup

if.end37:                                         ; preds = %do.body33
  br label %do.end38

do.end38:                                         ; preds = %if.end37
  br label %do.body39

do.body39:                                        ; preds = %do.end38
  %call40 = call i32 @mbedtls_mpi_lset(%struct.mbedtls_mpi* noundef %U1, i64 noundef 1) #5
  store i32 %call40, i32* %ret, align 4
  %cmp41 = icmp ne i32 %call40, 0
  br i1 %cmp41, label %if.then42, label %if.end43

if.then42:                                        ; preds = %do.body39
  br label %cleanup

if.end43:                                         ; preds = %do.body39
  br label %do.end44

do.end44:                                         ; preds = %if.end43
  br label %do.body45

do.body45:                                        ; preds = %do.end44
  %call46 = call i32 @mbedtls_mpi_lset(%struct.mbedtls_mpi* noundef %U2, i64 noundef 0) #5
  store i32 %call46, i32* %ret, align 4
  %cmp47 = icmp ne i32 %call46, 0
  br i1 %cmp47, label %if.then48, label %if.end49

if.then48:                                        ; preds = %do.body45
  br label %cleanup

if.end49:                                         ; preds = %do.body45
  br label %do.end50

do.end50:                                         ; preds = %if.end49
  br label %do.body51

do.body51:                                        ; preds = %do.end50
  %call52 = call i32 @mbedtls_mpi_lset(%struct.mbedtls_mpi* noundef %V1, i64 noundef 0) #5
  store i32 %call52, i32* %ret, align 4
  %cmp53 = icmp ne i32 %call52, 0
  br i1 %cmp53, label %if.then54, label %if.end55

if.then54:                                        ; preds = %do.body51
  br label %cleanup

if.end55:                                         ; preds = %do.body51
  br label %do.end56

do.end56:                                         ; preds = %if.end55
  br label %do.body57

do.body57:                                        ; preds = %do.end56
  %call58 = call i32 @mbedtls_mpi_lset(%struct.mbedtls_mpi* noundef %V2, i64 noundef 1) #5
  store i32 %call58, i32* %ret, align 4
  %cmp59 = icmp ne i32 %call58, 0
  br i1 %cmp59, label %if.then60, label %if.end61

if.then60:                                        ; preds = %do.body57
  br label %cleanup

if.end61:                                         ; preds = %do.body57
  br label %do.end62

do.end62:                                         ; preds = %if.end61
  br label %do.body63

do.body63:                                        ; preds = %do.cond, %do.end62
  br label %while.cond

while.cond:                                       ; preds = %do.end104, %do.body63
  %p = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %TU, i32 0, i32 2
  %7 = load i64*, i64** %p, align 8
  %arrayidx = getelementptr inbounds i64, i64* %7, i64 0
  %8 = load i64, i64* %arrayidx, align 8
  %and = and i64 %8, 1
  %cmp64 = icmp eq i64 %and, 0
  br i1 %cmp64, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  br label %do.body65

do.body65:                                        ; preds = %while.body
  %call66 = call i32 @mbedtls_mpi_shift_r(%struct.mbedtls_mpi* noundef %TU, i64 noundef 1) #5
  store i32 %call66, i32* %ret, align 4
  %cmp67 = icmp ne i32 %call66, 0
  br i1 %cmp67, label %if.then68, label %if.end69

if.then68:                                        ; preds = %do.body65
  br label %cleanup

if.end69:                                         ; preds = %do.body65
  br label %do.end70

do.end70:                                         ; preds = %if.end69
  %p71 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %U1, i32 0, i32 2
  %9 = load i64*, i64** %p71, align 8
  %arrayidx72 = getelementptr inbounds i64, i64* %9, i64 0
  %10 = load i64, i64* %arrayidx72, align 8
  %and73 = and i64 %10, 1
  %cmp74 = icmp ne i64 %and73, 0
  br i1 %cmp74, label %if.then79, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.end70
  %p75 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %U2, i32 0, i32 2
  %11 = load i64*, i64** %p75, align 8
  %arrayidx76 = getelementptr inbounds i64, i64* %11, i64 0
  %12 = load i64, i64* %arrayidx76, align 8
  %and77 = and i64 %12, 1
  %cmp78 = icmp ne i64 %and77, 0
  br i1 %cmp78, label %if.then79, label %if.end92

if.then79:                                        ; preds = %lor.lhs.false, %do.end70
  br label %do.body80

do.body80:                                        ; preds = %if.then79
  %call81 = call i32 @mbedtls_mpi_add_mpi(%struct.mbedtls_mpi* noundef %U1, %struct.mbedtls_mpi* noundef %U1, %struct.mbedtls_mpi* noundef %TB) #5
  store i32 %call81, i32* %ret, align 4
  %cmp82 = icmp ne i32 %call81, 0
  br i1 %cmp82, label %if.then83, label %if.end84

if.then83:                                        ; preds = %do.body80
  br label %cleanup

if.end84:                                         ; preds = %do.body80
  br label %do.end85

do.end85:                                         ; preds = %if.end84
  br label %do.body86

do.body86:                                        ; preds = %do.end85
  %call87 = call i32 @mbedtls_mpi_sub_mpi(%struct.mbedtls_mpi* noundef %U2, %struct.mbedtls_mpi* noundef %U2, %struct.mbedtls_mpi* noundef %TA) #5
  store i32 %call87, i32* %ret, align 4
  %cmp88 = icmp ne i32 %call87, 0
  br i1 %cmp88, label %if.then89, label %if.end90

if.then89:                                        ; preds = %do.body86
  br label %cleanup

if.end90:                                         ; preds = %do.body86
  br label %do.end91

do.end91:                                         ; preds = %if.end90
  br label %if.end92

if.end92:                                         ; preds = %do.end91, %lor.lhs.false
  br label %do.body93

do.body93:                                        ; preds = %if.end92
  %call94 = call i32 @mbedtls_mpi_shift_r(%struct.mbedtls_mpi* noundef %U1, i64 noundef 1) #5
  store i32 %call94, i32* %ret, align 4
  %cmp95 = icmp ne i32 %call94, 0
  br i1 %cmp95, label %if.then96, label %if.end97

if.then96:                                        ; preds = %do.body93
  br label %cleanup

if.end97:                                         ; preds = %do.body93
  br label %do.end98

do.end98:                                         ; preds = %if.end97
  br label %do.body99

do.body99:                                        ; preds = %do.end98
  %call100 = call i32 @mbedtls_mpi_shift_r(%struct.mbedtls_mpi* noundef %U2, i64 noundef 1) #5
  store i32 %call100, i32* %ret, align 4
  %cmp101 = icmp ne i32 %call100, 0
  br i1 %cmp101, label %if.then102, label %if.end103

if.then102:                                       ; preds = %do.body99
  br label %cleanup

if.end103:                                        ; preds = %do.body99
  br label %do.end104

do.end104:                                        ; preds = %if.end103
  br label %while.cond, !llvm.loop !66

while.end:                                        ; preds = %while.cond
  br label %while.cond105

while.cond105:                                    ; preds = %do.end151, %while.end
  %p106 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %TV, i32 0, i32 2
  %13 = load i64*, i64** %p106, align 8
  %arrayidx107 = getelementptr inbounds i64, i64* %13, i64 0
  %14 = load i64, i64* %arrayidx107, align 8
  %and108 = and i64 %14, 1
  %cmp109 = icmp eq i64 %and108, 0
  br i1 %cmp109, label %while.body110, label %while.end152

while.body110:                                    ; preds = %while.cond105
  br label %do.body111

do.body111:                                       ; preds = %while.body110
  %call112 = call i32 @mbedtls_mpi_shift_r(%struct.mbedtls_mpi* noundef %TV, i64 noundef 1) #5
  store i32 %call112, i32* %ret, align 4
  %cmp113 = icmp ne i32 %call112, 0
  br i1 %cmp113, label %if.then114, label %if.end115

if.then114:                                       ; preds = %do.body111
  br label %cleanup

if.end115:                                        ; preds = %do.body111
  br label %do.end116

do.end116:                                        ; preds = %if.end115
  %p117 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %V1, i32 0, i32 2
  %15 = load i64*, i64** %p117, align 8
  %arrayidx118 = getelementptr inbounds i64, i64* %15, i64 0
  %16 = load i64, i64* %arrayidx118, align 8
  %and119 = and i64 %16, 1
  %cmp120 = icmp ne i64 %and119, 0
  br i1 %cmp120, label %if.then126, label %lor.lhs.false121

lor.lhs.false121:                                 ; preds = %do.end116
  %p122 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %V2, i32 0, i32 2
  %17 = load i64*, i64** %p122, align 8
  %arrayidx123 = getelementptr inbounds i64, i64* %17, i64 0
  %18 = load i64, i64* %arrayidx123, align 8
  %and124 = and i64 %18, 1
  %cmp125 = icmp ne i64 %and124, 0
  br i1 %cmp125, label %if.then126, label %if.end139

if.then126:                                       ; preds = %lor.lhs.false121, %do.end116
  br label %do.body127

do.body127:                                       ; preds = %if.then126
  %call128 = call i32 @mbedtls_mpi_add_mpi(%struct.mbedtls_mpi* noundef %V1, %struct.mbedtls_mpi* noundef %V1, %struct.mbedtls_mpi* noundef %TB) #5
  store i32 %call128, i32* %ret, align 4
  %cmp129 = icmp ne i32 %call128, 0
  br i1 %cmp129, label %if.then130, label %if.end131

if.then130:                                       ; preds = %do.body127
  br label %cleanup

if.end131:                                        ; preds = %do.body127
  br label %do.end132

do.end132:                                        ; preds = %if.end131
  br label %do.body133

do.body133:                                       ; preds = %do.end132
  %call134 = call i32 @mbedtls_mpi_sub_mpi(%struct.mbedtls_mpi* noundef %V2, %struct.mbedtls_mpi* noundef %V2, %struct.mbedtls_mpi* noundef %TA) #5
  store i32 %call134, i32* %ret, align 4
  %cmp135 = icmp ne i32 %call134, 0
  br i1 %cmp135, label %if.then136, label %if.end137

if.then136:                                       ; preds = %do.body133
  br label %cleanup

if.end137:                                        ; preds = %do.body133
  br label %do.end138

do.end138:                                        ; preds = %if.end137
  br label %if.end139

if.end139:                                        ; preds = %do.end138, %lor.lhs.false121
  br label %do.body140

do.body140:                                       ; preds = %if.end139
  %call141 = call i32 @mbedtls_mpi_shift_r(%struct.mbedtls_mpi* noundef %V1, i64 noundef 1) #5
  store i32 %call141, i32* %ret, align 4
  %cmp142 = icmp ne i32 %call141, 0
  br i1 %cmp142, label %if.then143, label %if.end144

if.then143:                                       ; preds = %do.body140
  br label %cleanup

if.end144:                                        ; preds = %do.body140
  br label %do.end145

do.end145:                                        ; preds = %if.end144
  br label %do.body146

do.body146:                                       ; preds = %do.end145
  %call147 = call i32 @mbedtls_mpi_shift_r(%struct.mbedtls_mpi* noundef %V2, i64 noundef 1) #5
  store i32 %call147, i32* %ret, align 4
  %cmp148 = icmp ne i32 %call147, 0
  br i1 %cmp148, label %if.then149, label %if.end150

if.then149:                                       ; preds = %do.body146
  br label %cleanup

if.end150:                                        ; preds = %do.body146
  br label %do.end151

do.end151:                                        ; preds = %if.end150
  br label %while.cond105, !llvm.loop !67

while.end152:                                     ; preds = %while.cond105
  %call153 = call i32 @mbedtls_mpi_cmp_mpi(%struct.mbedtls_mpi* noundef %TU, %struct.mbedtls_mpi* noundef %TV) #5
  %cmp154 = icmp sge i32 %call153, 0
  br i1 %cmp154, label %if.then155, label %if.else

if.then155:                                       ; preds = %while.end152
  br label %do.body156

do.body156:                                       ; preds = %if.then155
  %call157 = call i32 @mbedtls_mpi_sub_mpi(%struct.mbedtls_mpi* noundef %TU, %struct.mbedtls_mpi* noundef %TU, %struct.mbedtls_mpi* noundef %TV) #5
  store i32 %call157, i32* %ret, align 4
  %cmp158 = icmp ne i32 %call157, 0
  br i1 %cmp158, label %if.then159, label %if.end160

if.then159:                                       ; preds = %do.body156
  br label %cleanup

if.end160:                                        ; preds = %do.body156
  br label %do.end161

do.end161:                                        ; preds = %if.end160
  br label %do.body162

do.body162:                                       ; preds = %do.end161
  %call163 = call i32 @mbedtls_mpi_sub_mpi(%struct.mbedtls_mpi* noundef %U1, %struct.mbedtls_mpi* noundef %U1, %struct.mbedtls_mpi* noundef %V1) #5
  store i32 %call163, i32* %ret, align 4
  %cmp164 = icmp ne i32 %call163, 0
  br i1 %cmp164, label %if.then165, label %if.end166

if.then165:                                       ; preds = %do.body162
  br label %cleanup

if.end166:                                        ; preds = %do.body162
  br label %do.end167

do.end167:                                        ; preds = %if.end166
  br label %do.body168

do.body168:                                       ; preds = %do.end167
  %call169 = call i32 @mbedtls_mpi_sub_mpi(%struct.mbedtls_mpi* noundef %U2, %struct.mbedtls_mpi* noundef %U2, %struct.mbedtls_mpi* noundef %V2) #5
  store i32 %call169, i32* %ret, align 4
  %cmp170 = icmp ne i32 %call169, 0
  br i1 %cmp170, label %if.then171, label %if.end172

if.then171:                                       ; preds = %do.body168
  br label %cleanup

if.end172:                                        ; preds = %do.body168
  br label %do.end173

do.end173:                                        ; preds = %if.end172
  br label %if.end192

if.else:                                          ; preds = %while.end152
  br label %do.body174

do.body174:                                       ; preds = %if.else
  %call175 = call i32 @mbedtls_mpi_sub_mpi(%struct.mbedtls_mpi* noundef %TV, %struct.mbedtls_mpi* noundef %TV, %struct.mbedtls_mpi* noundef %TU) #5
  store i32 %call175, i32* %ret, align 4
  %cmp176 = icmp ne i32 %call175, 0
  br i1 %cmp176, label %if.then177, label %if.end178

if.then177:                                       ; preds = %do.body174
  br label %cleanup

if.end178:                                        ; preds = %do.body174
  br label %do.end179

do.end179:                                        ; preds = %if.end178
  br label %do.body180

do.body180:                                       ; preds = %do.end179
  %call181 = call i32 @mbedtls_mpi_sub_mpi(%struct.mbedtls_mpi* noundef %V1, %struct.mbedtls_mpi* noundef %V1, %struct.mbedtls_mpi* noundef %U1) #5
  store i32 %call181, i32* %ret, align 4
  %cmp182 = icmp ne i32 %call181, 0
  br i1 %cmp182, label %if.then183, label %if.end184

if.then183:                                       ; preds = %do.body180
  br label %cleanup

if.end184:                                        ; preds = %do.body180
  br label %do.end185

do.end185:                                        ; preds = %if.end184
  br label %do.body186

do.body186:                                       ; preds = %do.end185
  %call187 = call i32 @mbedtls_mpi_sub_mpi(%struct.mbedtls_mpi* noundef %V2, %struct.mbedtls_mpi* noundef %V2, %struct.mbedtls_mpi* noundef %U2) #5
  store i32 %call187, i32* %ret, align 4
  %cmp188 = icmp ne i32 %call187, 0
  br i1 %cmp188, label %if.then189, label %if.end190

if.then189:                                       ; preds = %do.body186
  br label %cleanup

if.end190:                                        ; preds = %do.body186
  br label %do.end191

do.end191:                                        ; preds = %if.end190
  br label %if.end192

if.end192:                                        ; preds = %do.end191, %do.end173
  br label %do.cond

do.cond:                                          ; preds = %if.end192
  %call193 = call i32 @mbedtls_mpi_cmp_int(%struct.mbedtls_mpi* noundef %TU, i64 noundef 0) #5
  %cmp194 = icmp ne i32 %call193, 0
  br i1 %cmp194, label %do.body63, label %do.end195, !llvm.loop !68

do.end195:                                        ; preds = %do.cond
  br label %while.cond196

while.cond196:                                    ; preds = %do.end206, %do.end195
  %call197 = call i32 @mbedtls_mpi_cmp_int(%struct.mbedtls_mpi* noundef %V1, i64 noundef 0) #5
  %cmp198 = icmp slt i32 %call197, 0
  br i1 %cmp198, label %while.body199, label %while.end207

while.body199:                                    ; preds = %while.cond196
  br label %do.body200

do.body200:                                       ; preds = %while.body199
  %19 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %call201 = call i32 @mbedtls_mpi_add_mpi(%struct.mbedtls_mpi* noundef %V1, %struct.mbedtls_mpi* noundef %V1, %struct.mbedtls_mpi* noundef %19) #5
  store i32 %call201, i32* %ret, align 4
  %cmp202 = icmp ne i32 %call201, 0
  br i1 %cmp202, label %if.then203, label %if.end204

if.then203:                                       ; preds = %do.body200
  br label %cleanup

if.end204:                                        ; preds = %do.body200
  br label %do.end206

do.end206:                                        ; preds = %if.end204
  br label %while.cond196, !llvm.loop !69

while.end207:                                     ; preds = %while.cond196
  br label %while.cond208

while.cond208:                                    ; preds = %do.end218, %while.end207
  %20 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %call209 = call i32 @mbedtls_mpi_cmp_mpi(%struct.mbedtls_mpi* noundef %V1, %struct.mbedtls_mpi* noundef %20) #5
  %cmp210 = icmp sge i32 %call209, 0
  br i1 %cmp210, label %while.body211, label %while.end219

while.body211:                                    ; preds = %while.cond208
  br label %do.body212

do.body212:                                       ; preds = %while.body211
  %21 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %call213 = call i32 @mbedtls_mpi_sub_mpi(%struct.mbedtls_mpi* noundef %V1, %struct.mbedtls_mpi* noundef %V1, %struct.mbedtls_mpi* noundef %21) #5
  store i32 %call213, i32* %ret, align 4
  %cmp214 = icmp ne i32 %call213, 0
  br i1 %cmp214, label %if.then215, label %if.end216

if.then215:                                       ; preds = %do.body212
  br label %cleanup

if.end216:                                        ; preds = %do.body212
  br label %do.end218

do.end218:                                        ; preds = %if.end216
  br label %while.cond208, !llvm.loop !70

while.end219:                                     ; preds = %while.cond208
  br label %do.body220

do.body220:                                       ; preds = %while.end219
  %22 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %X.addr, align 8
  %call221 = call i32 @mbedtls_mpi_copy(%struct.mbedtls_mpi* noundef %22, %struct.mbedtls_mpi* noundef %V1) #5
  store i32 %call221, i32* %ret, align 4
  %cmp222 = icmp ne i32 %call221, 0
  br i1 %cmp222, label %if.then223, label %if.end224

if.then223:                                       ; preds = %do.body220
  br label %cleanup

if.end224:                                        ; preds = %do.body220
  br label %do.end226

do.end226:                                        ; preds = %if.end224
  br label %cleanup

cleanup:                                          ; preds = %do.end226, %if.then223, %if.then215, %if.then203, %if.then189, %if.then183, %if.then177, %if.then171, %if.then165, %if.then159, %if.then149, %if.then143, %if.then136, %if.then130, %if.then114, %if.then102, %if.then96, %if.then89, %if.then83, %if.then68, %if.then60, %if.then54, %if.then48, %if.then42, %if.then36, %if.then30, %if.then24, %if.then18, %if.then13, %if.then8
  call void @mbedtls_mpi_free(%struct.mbedtls_mpi* noundef %TA) #5
  call void @mbedtls_mpi_free(%struct.mbedtls_mpi* noundef %TU) #5
  call void @mbedtls_mpi_free(%struct.mbedtls_mpi* noundef %U1) #5
  call void @mbedtls_mpi_free(%struct.mbedtls_mpi* noundef %U2) #5
  call void @mbedtls_mpi_free(%struct.mbedtls_mpi* noundef %G) #5
  call void @mbedtls_mpi_free(%struct.mbedtls_mpi* noundef %TB) #5
  call void @mbedtls_mpi_free(%struct.mbedtls_mpi* noundef %TV) #5
  call void @mbedtls_mpi_free(%struct.mbedtls_mpi* noundef %V1) #5
  call void @mbedtls_mpi_free(%struct.mbedtls_mpi* noundef %V2) #5
  %23 = load i32, i32* %ret, align 4
  store i32 %23, i32* %retval, align 4
  br label %return

return:                                           ; preds = %cleanup, %if.then
  %24 = load i32, i32* %retval, align 4
  ret i32 %24
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_mpi_is_prime_ext(%struct.mbedtls_mpi* noundef %X, i32 noundef %rounds, i32 (i8*, i8*, i64)* noundef %f_rng, i8* noundef %p_rng) #0 {
entry:
  %retval = alloca i32, align 4
  %X.addr = alloca %struct.mbedtls_mpi*, align 8
  %rounds.addr = alloca i32, align 4
  %f_rng.addr = alloca i32 (i8*, i8*, i64)*, align 8
  %p_rng.addr = alloca i8*, align 8
  %ret = alloca i32, align 4
  %XX = alloca %struct.mbedtls_mpi, align 8
  store %struct.mbedtls_mpi* %X, %struct.mbedtls_mpi** %X.addr, align 8
  store i32 %rounds, i32* %rounds.addr, align 4
  store i32 (i8*, i8*, i64)* %f_rng, i32 (i8*, i8*, i64)** %f_rng.addr, align 8
  store i8* %p_rng, i8** %p_rng.addr, align 8
  store i32 -110, i32* %ret, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %do.body1

do.body1:                                         ; preds = %do.end
  br label %do.end2

do.end2:                                          ; preds = %do.body1
  %s = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %XX, i32 0, i32 0
  store i32 1, i32* %s, align 8
  %0 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %X.addr, align 8
  %n = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %0, i32 0, i32 1
  %1 = load i64, i64* %n, align 8
  %n3 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %XX, i32 0, i32 1
  store i64 %1, i64* %n3, align 8
  %2 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %X.addr, align 8
  %p = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %2, i32 0, i32 2
  %3 = load i64*, i64** %p, align 8
  %p4 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %XX, i32 0, i32 2
  store i64* %3, i64** %p4, align 8
  %call = call i32 @mbedtls_mpi_cmp_int(%struct.mbedtls_mpi* noundef %XX, i64 noundef 0) #5
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.end2
  %call5 = call i32 @mbedtls_mpi_cmp_int(%struct.mbedtls_mpi* noundef %XX, i64 noundef 1) #5
  %cmp6 = icmp eq i32 %call5, 0
  br i1 %cmp6, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %do.end2
  store i32 -14, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %call7 = call i32 @mbedtls_mpi_cmp_int(%struct.mbedtls_mpi* noundef %XX, i64 noundef 2) #5
  %cmp8 = icmp eq i32 %call7, 0
  br i1 %cmp8, label %if.then9, label %if.end10

if.then9:                                         ; preds = %if.end
  store i32 0, i32* %retval, align 4
  br label %return

if.end10:                                         ; preds = %if.end
  %call11 = call i32 @mpi_check_small_factors(%struct.mbedtls_mpi* noundef %XX) #5
  store i32 %call11, i32* %ret, align 4
  %cmp12 = icmp ne i32 %call11, 0
  br i1 %cmp12, label %if.then13, label %if.end17

if.then13:                                        ; preds = %if.end10
  %4 = load i32, i32* %ret, align 4
  %cmp14 = icmp eq i32 %4, 1
  br i1 %cmp14, label %if.then15, label %if.end16

if.then15:                                        ; preds = %if.then13
  store i32 0, i32* %retval, align 4
  br label %return

if.end16:                                         ; preds = %if.then13
  %5 = load i32, i32* %ret, align 4
  store i32 %5, i32* %retval, align 4
  br label %return

if.end17:                                         ; preds = %if.end10
  %6 = load i32, i32* %rounds.addr, align 4
  %conv = sext i32 %6 to i64
  %7 = load i32 (i8*, i8*, i64)*, i32 (i8*, i8*, i64)** %f_rng.addr, align 8
  %8 = load i8*, i8** %p_rng.addr, align 8
  %call18 = call i32 @mpi_miller_rabin(%struct.mbedtls_mpi* noundef %XX, i64 noundef %conv, i32 (i8*, i8*, i64)* noundef %7, i8* noundef %8) #5
  store i32 %call18, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end17, %if.end16, %if.then15, %if.then9, %if.then
  %9 = load i32, i32* %retval, align 4
  ret i32 %9
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mpi_check_small_factors(%struct.mbedtls_mpi* noundef %X) #0 {
entry:
  %retval = alloca i32, align 4
  %X.addr = alloca %struct.mbedtls_mpi*, align 8
  %ret = alloca i32, align 4
  %i = alloca i64, align 8
  %r = alloca i64, align 8
  store %struct.mbedtls_mpi* %X, %struct.mbedtls_mpi** %X.addr, align 8
  store i32 0, i32* %ret, align 4
  %0 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %X.addr, align 8
  %p = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %0, i32 0, i32 2
  %1 = load i64*, i64** %p, align 8
  %arrayidx = getelementptr inbounds i64, i64* %1, i64 0
  %2 = load i64, i64* %arrayidx, align 8
  %and = and i64 %2, 1
  %cmp = icmp eq i64 %and, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -14, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %3 = load i64, i64* %i, align 8
  %arrayidx1 = getelementptr inbounds [168 x i32], [168 x i32]* @small_prime, i64 0, i64 %3
  %4 = load i32, i32* %arrayidx1, align 4
  %cmp2 = icmp sgt i32 %4, 0
  br i1 %cmp2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %X.addr, align 8
  %6 = load i64, i64* %i, align 8
  %arrayidx3 = getelementptr inbounds [168 x i32], [168 x i32]* @small_prime, i64 0, i64 %6
  %7 = load i32, i32* %arrayidx3, align 4
  %conv = sext i32 %7 to i64
  %call = call i32 @mbedtls_mpi_cmp_int(%struct.mbedtls_mpi* noundef %5, i64 noundef %conv) #5
  %cmp4 = icmp sle i32 %call, 0
  br i1 %cmp4, label %if.then6, label %if.end7

if.then6:                                         ; preds = %for.body
  store i32 1, i32* %retval, align 4
  br label %return

if.end7:                                          ; preds = %for.body
  br label %do.body

do.body:                                          ; preds = %if.end7
  %8 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %X.addr, align 8
  %9 = load i64, i64* %i, align 8
  %arrayidx8 = getelementptr inbounds [168 x i32], [168 x i32]* @small_prime, i64 0, i64 %9
  %10 = load i32, i32* %arrayidx8, align 4
  %conv9 = sext i32 %10 to i64
  %call10 = call i32 @mbedtls_mpi_mod_int(i64* noundef %r, %struct.mbedtls_mpi* noundef %8, i64 noundef %conv9) #5
  store i32 %call10, i32* %ret, align 4
  %cmp11 = icmp ne i32 %call10, 0
  br i1 %cmp11, label %if.then13, label %if.end14

if.then13:                                        ; preds = %do.body
  br label %cleanup

if.end14:                                         ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %if.end14
  %11 = load i64, i64* %r, align 8
  %cmp15 = icmp eq i64 %11, 0
  br i1 %cmp15, label %if.then17, label %if.end18

if.then17:                                        ; preds = %do.end
  store i32 -14, i32* %retval, align 4
  br label %return

if.end18:                                         ; preds = %do.end
  br label %for.inc

for.inc:                                          ; preds = %if.end18
  %12 = load i64, i64* %i, align 8
  %inc = add i64 %12, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond, !llvm.loop !71

for.end:                                          ; preds = %for.cond
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then13
  %13 = load i32, i32* %ret, align 4
  store i32 %13, i32* %retval, align 4
  br label %return

return:                                           ; preds = %cleanup, %if.then17, %if.then6, %if.then
  %14 = load i32, i32* %retval, align 4
  ret i32 %14
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mpi_miller_rabin(%struct.mbedtls_mpi* noundef %X, i64 noundef %rounds, i32 (i8*, i8*, i64)* noundef %f_rng, i8* noundef %p_rng) #0 {
entry:
  %X.addr = alloca %struct.mbedtls_mpi*, align 8
  %rounds.addr = alloca i64, align 8
  %f_rng.addr = alloca i32 (i8*, i8*, i64)*, align 8
  %p_rng.addr = alloca i8*, align 8
  %ret = alloca i32, align 4
  %count = alloca i32, align 4
  %i = alloca i64, align 8
  %j = alloca i64, align 8
  %k = alloca i64, align 8
  %s = alloca i64, align 8
  %W = alloca %struct.mbedtls_mpi, align 8
  %R = alloca %struct.mbedtls_mpi, align 8
  %T = alloca %struct.mbedtls_mpi, align 8
  %A = alloca %struct.mbedtls_mpi, align 8
  %RR = alloca %struct.mbedtls_mpi, align 8
  store %struct.mbedtls_mpi* %X, %struct.mbedtls_mpi** %X.addr, align 8
  store i64 %rounds, i64* %rounds.addr, align 8
  store i32 (i8*, i8*, i64)* %f_rng, i32 (i8*, i8*, i64)** %f_rng.addr, align 8
  store i8* %p_rng, i8** %p_rng.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %do.body1

do.body1:                                         ; preds = %do.end
  br label %do.end2

do.end2:                                          ; preds = %do.body1
  call void @mbedtls_mpi_init(%struct.mbedtls_mpi* noundef %W) #5
  call void @mbedtls_mpi_init(%struct.mbedtls_mpi* noundef %R) #5
  call void @mbedtls_mpi_init(%struct.mbedtls_mpi* noundef %T) #5
  call void @mbedtls_mpi_init(%struct.mbedtls_mpi* noundef %A) #5
  call void @mbedtls_mpi_init(%struct.mbedtls_mpi* noundef %RR) #5
  br label %do.body3

do.body3:                                         ; preds = %do.end2
  %0 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %X.addr, align 8
  %call = call i32 @mbedtls_mpi_sub_int(%struct.mbedtls_mpi* noundef %W, %struct.mbedtls_mpi* noundef %0, i64 noundef 1) #5
  store i32 %call, i32* %ret, align 4
  %cmp = icmp ne i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.body3
  br label %cleanup

if.end:                                           ; preds = %do.body3
  br label %do.end4

do.end4:                                          ; preds = %if.end
  %call5 = call i64 @mbedtls_mpi_lsb(%struct.mbedtls_mpi* noundef %W) #5
  store i64 %call5, i64* %s, align 8
  br label %do.body6

do.body6:                                         ; preds = %do.end4
  %call7 = call i32 @mbedtls_mpi_copy(%struct.mbedtls_mpi* noundef %R, %struct.mbedtls_mpi* noundef %W) #5
  store i32 %call7, i32* %ret, align 4
  %cmp8 = icmp ne i32 %call7, 0
  br i1 %cmp8, label %if.then9, label %if.end10

if.then9:                                         ; preds = %do.body6
  br label %cleanup

if.end10:                                         ; preds = %do.body6
  br label %do.end11

do.end11:                                         ; preds = %if.end10
  br label %do.body12

do.body12:                                        ; preds = %do.end11
  %1 = load i64, i64* %s, align 8
  %call13 = call i32 @mbedtls_mpi_shift_r(%struct.mbedtls_mpi* noundef %R, i64 noundef %1) #5
  store i32 %call13, i32* %ret, align 4
  %cmp14 = icmp ne i32 %call13, 0
  br i1 %cmp14, label %if.then15, label %if.end16

if.then15:                                        ; preds = %do.body12
  br label %cleanup

if.end16:                                         ; preds = %do.body12
  br label %do.end17

do.end17:                                         ; preds = %if.end16
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %do.end17
  %2 = load i64, i64* %i, align 8
  %3 = load i64, i64* %rounds.addr, align 8
  %cmp18 = icmp ult i64 %2, %3
  br i1 %cmp18, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %count, align 4
  br label %do.body19

do.body19:                                        ; preds = %lor.end, %for.body
  br label %do.body20

do.body20:                                        ; preds = %do.body19
  %4 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %X.addr, align 8
  %n = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %4, i32 0, i32 1
  %5 = load i64, i64* %n, align 8
  %mul = mul i64 %5, 8
  %6 = load i32 (i8*, i8*, i64)*, i32 (i8*, i8*, i64)** %f_rng.addr, align 8
  %7 = load i8*, i8** %p_rng.addr, align 8
  %call21 = call i32 @mbedtls_mpi_fill_random(%struct.mbedtls_mpi* noundef %A, i64 noundef %mul, i32 (i8*, i8*, i64)* noundef %6, i8* noundef %7) #5
  store i32 %call21, i32* %ret, align 4
  %cmp22 = icmp ne i32 %call21, 0
  br i1 %cmp22, label %if.then23, label %if.end24

if.then23:                                        ; preds = %do.body20
  br label %cleanup

if.end24:                                         ; preds = %do.body20
  br label %do.end25

do.end25:                                         ; preds = %if.end24
  %call26 = call i64 @mbedtls_mpi_bitlen(%struct.mbedtls_mpi* noundef %A) #5
  store i64 %call26, i64* %j, align 8
  %call27 = call i64 @mbedtls_mpi_bitlen(%struct.mbedtls_mpi* noundef %W) #5
  store i64 %call27, i64* %k, align 8
  %8 = load i64, i64* %j, align 8
  %9 = load i64, i64* %k, align 8
  %cmp28 = icmp ugt i64 %8, %9
  br i1 %cmp28, label %if.then29, label %if.end37

if.then29:                                        ; preds = %do.end25
  %10 = load i64, i64* %k, align 8
  %n30 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %A, i32 0, i32 1
  %11 = load i64, i64* %n30, align 8
  %sub = sub i64 %11, 1
  %mul31 = mul i64 %sub, 64
  %sub32 = sub i64 %10, %mul31
  %sub33 = sub i64 %sub32, 1
  %shl = shl i64 1, %sub33
  %sub34 = sub i64 %shl, 1
  %p = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %A, i32 0, i32 2
  %12 = load i64*, i64** %p, align 8
  %n35 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %A, i32 0, i32 1
  %13 = load i64, i64* %n35, align 8
  %sub36 = sub i64 %13, 1
  %arrayidx = getelementptr inbounds i64, i64* %12, i64 %sub36
  %14 = load i64, i64* %arrayidx, align 8
  %and = and i64 %14, %sub34
  store i64 %and, i64* %arrayidx, align 8
  br label %if.end37

if.end37:                                         ; preds = %if.then29, %do.end25
  %15 = load i32, i32* %count, align 4
  %inc = add nsw i32 %15, 1
  store i32 %inc, i32* %count, align 4
  %cmp38 = icmp sgt i32 %15, 30
  br i1 %cmp38, label %if.then39, label %if.end40

if.then39:                                        ; preds = %if.end37
  store i32 -14, i32* %ret, align 4
  br label %cleanup

if.end40:                                         ; preds = %if.end37
  br label %do.cond

do.cond:                                          ; preds = %if.end40
  %call41 = call i32 @mbedtls_mpi_cmp_mpi(%struct.mbedtls_mpi* noundef %A, %struct.mbedtls_mpi* noundef %W) #5
  %cmp42 = icmp sge i32 %call41, 0
  br i1 %cmp42, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %do.cond
  %call43 = call i32 @mbedtls_mpi_cmp_int(%struct.mbedtls_mpi* noundef %A, i64 noundef 1) #5
  %cmp44 = icmp sle i32 %call43, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %do.cond
  %16 = phi i1 [ true, %do.cond ], [ %cmp44, %lor.rhs ]
  br i1 %16, label %do.body19, label %do.end45, !llvm.loop !72

do.end45:                                         ; preds = %lor.end
  br label %do.body46

do.body46:                                        ; preds = %do.end45
  %17 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %X.addr, align 8
  %call47 = call i32 @mbedtls_mpi_exp_mod(%struct.mbedtls_mpi* noundef %A, %struct.mbedtls_mpi* noundef %A, %struct.mbedtls_mpi* noundef %R, %struct.mbedtls_mpi* noundef %17, %struct.mbedtls_mpi* noundef %RR) #5
  store i32 %call47, i32* %ret, align 4
  %cmp48 = icmp ne i32 %call47, 0
  br i1 %cmp48, label %if.then49, label %if.end50

if.then49:                                        ; preds = %do.body46
  br label %cleanup

if.end50:                                         ; preds = %do.body46
  br label %do.end52

do.end52:                                         ; preds = %if.end50
  %call53 = call i32 @mbedtls_mpi_cmp_mpi(%struct.mbedtls_mpi* noundef %A, %struct.mbedtls_mpi* noundef %W) #5
  %cmp54 = icmp eq i32 %call53, 0
  br i1 %cmp54, label %if.then57, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.end52
  %call55 = call i32 @mbedtls_mpi_cmp_int(%struct.mbedtls_mpi* noundef %A, i64 noundef 1) #5
  %cmp56 = icmp eq i32 %call55, 0
  br i1 %cmp56, label %if.then57, label %if.end58

if.then57:                                        ; preds = %lor.lhs.false, %do.end52
  br label %for.inc

if.end58:                                         ; preds = %lor.lhs.false
  store i64 1, i64* %j, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end79, %if.end58
  %18 = load i64, i64* %j, align 8
  %19 = load i64, i64* %s, align 8
  %cmp59 = icmp ult i64 %18, %19
  br i1 %cmp59, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %call60 = call i32 @mbedtls_mpi_cmp_mpi(%struct.mbedtls_mpi* noundef %A, %struct.mbedtls_mpi* noundef %W) #5
  %cmp61 = icmp ne i32 %call60, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %20 = phi i1 [ false, %while.cond ], [ %cmp61, %land.rhs ]
  br i1 %20, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  br label %do.body62

do.body62:                                        ; preds = %while.body
  %call63 = call i32 @mbedtls_mpi_mul_mpi(%struct.mbedtls_mpi* noundef %T, %struct.mbedtls_mpi* noundef %A, %struct.mbedtls_mpi* noundef %A) #5
  store i32 %call63, i32* %ret, align 4
  %cmp64 = icmp ne i32 %call63, 0
  br i1 %cmp64, label %if.then65, label %if.end66

if.then65:                                        ; preds = %do.body62
  br label %cleanup

if.end66:                                         ; preds = %do.body62
  br label %do.end68

do.end68:                                         ; preds = %if.end66
  br label %do.body69

do.body69:                                        ; preds = %do.end68
  %21 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %X.addr, align 8
  %call70 = call i32 @mbedtls_mpi_mod_mpi(%struct.mbedtls_mpi* noundef %A, %struct.mbedtls_mpi* noundef %T, %struct.mbedtls_mpi* noundef %21) #5
  store i32 %call70, i32* %ret, align 4
  %cmp71 = icmp ne i32 %call70, 0
  br i1 %cmp71, label %if.then72, label %if.end73

if.then72:                                        ; preds = %do.body69
  br label %cleanup

if.end73:                                         ; preds = %do.body69
  br label %do.end75

do.end75:                                         ; preds = %if.end73
  %call76 = call i32 @mbedtls_mpi_cmp_int(%struct.mbedtls_mpi* noundef %A, i64 noundef 1) #5
  %cmp77 = icmp eq i32 %call76, 0
  br i1 %cmp77, label %if.then78, label %if.end79

if.then78:                                        ; preds = %do.end75
  br label %while.end

if.end79:                                         ; preds = %do.end75
  %22 = load i64, i64* %j, align 8
  %inc80 = add i64 %22, 1
  store i64 %inc80, i64* %j, align 8
  br label %while.cond, !llvm.loop !73

while.end:                                        ; preds = %if.then78, %land.end
  %call81 = call i32 @mbedtls_mpi_cmp_mpi(%struct.mbedtls_mpi* noundef %A, %struct.mbedtls_mpi* noundef %W) #5
  %cmp82 = icmp ne i32 %call81, 0
  br i1 %cmp82, label %if.then86, label %lor.lhs.false83

lor.lhs.false83:                                  ; preds = %while.end
  %call84 = call i32 @mbedtls_mpi_cmp_int(%struct.mbedtls_mpi* noundef %A, i64 noundef 1) #5
  %cmp85 = icmp eq i32 %call84, 0
  br i1 %cmp85, label %if.then86, label %if.end87

if.then86:                                        ; preds = %lor.lhs.false83, %while.end
  store i32 -14, i32* %ret, align 4
  br label %for.end

if.end87:                                         ; preds = %lor.lhs.false83
  br label %for.inc

for.inc:                                          ; preds = %if.end87, %if.then57
  %23 = load i64, i64* %i, align 8
  %inc88 = add i64 %23, 1
  store i64 %inc88, i64* %i, align 8
  br label %for.cond, !llvm.loop !74

for.end:                                          ; preds = %if.then86, %for.cond
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then72, %if.then65, %if.then49, %if.then39, %if.then23, %if.then15, %if.then9, %if.then
  call void @mbedtls_mpi_free(%struct.mbedtls_mpi* noundef %W) #5
  call void @mbedtls_mpi_free(%struct.mbedtls_mpi* noundef %R) #5
  call void @mbedtls_mpi_free(%struct.mbedtls_mpi* noundef %T) #5
  call void @mbedtls_mpi_free(%struct.mbedtls_mpi* noundef %A) #5
  call void @mbedtls_mpi_free(%struct.mbedtls_mpi* noundef %RR) #5
  %24 = load i32, i32* %ret, align 4
  ret i32 %24
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_mpi_gen_prime(%struct.mbedtls_mpi* noundef %X, i64 noundef %nbits, i32 noundef %flags, i32 (i8*, i8*, i64)* noundef %f_rng, i8* noundef %p_rng) #0 {
entry:
  %retval = alloca i32, align 4
  %X.addr = alloca %struct.mbedtls_mpi*, align 8
  %nbits.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %f_rng.addr = alloca i32 (i8*, i8*, i64)*, align 8
  %p_rng.addr = alloca i8*, align 8
  %ret = alloca i32, align 4
  %k = alloca i64, align 8
  %n = alloca i64, align 8
  %rounds = alloca i32, align 4
  %r = alloca i64, align 8
  %Y = alloca %struct.mbedtls_mpi, align 8
  store %struct.mbedtls_mpi* %X, %struct.mbedtls_mpi** %X.addr, align 8
  store i64 %nbits, i64* %nbits.addr, align 8
  store i32 %flags, i32* %flags.addr, align 4
  store i32 (i8*, i8*, i64)* %f_rng, i32 (i8*, i8*, i64)** %f_rng.addr, align 8
  store i8* %p_rng, i8** %p_rng.addr, align 8
  store i32 -14, i32* %ret, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %do.body1

do.body1:                                         ; preds = %do.end
  br label %do.end2

do.end2:                                          ; preds = %do.body1
  %0 = load i64, i64* %nbits.addr, align 8
  %cmp = icmp ult i64 %0, 3
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.end2
  %1 = load i64, i64* %nbits.addr, align 8
  %cmp3 = icmp ugt i64 %1, 8192
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %do.end2
  store i32 -4, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  call void @mbedtls_mpi_init(%struct.mbedtls_mpi* noundef %Y) #5
  %2 = load i64, i64* %nbits.addr, align 8
  %div = udiv i64 %2, 64
  %3 = load i64, i64* %nbits.addr, align 8
  %rem = urem i64 %3, 64
  %cmp4 = icmp ne i64 %rem, 0
  %conv = zext i1 %cmp4 to i32
  %conv5 = sext i32 %conv to i64
  %add = add i64 %div, %conv5
  store i64 %add, i64* %n, align 8
  %4 = load i32, i32* %flags.addr, align 4
  %and = and i32 %4, 2
  %cmp6 = icmp eq i32 %and, 0
  br i1 %cmp6, label %if.then8, label %if.else

if.then8:                                         ; preds = %if.end
  %5 = load i64, i64* %nbits.addr, align 8
  %cmp9 = icmp uge i64 %5, 1300
  br i1 %cmp9, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then8
  br label %cond.end36

cond.false:                                       ; preds = %if.then8
  %6 = load i64, i64* %nbits.addr, align 8
  %cmp11 = icmp uge i64 %6, 850
  br i1 %cmp11, label %cond.true13, label %cond.false14

cond.true13:                                      ; preds = %cond.false
  br label %cond.end34

cond.false14:                                     ; preds = %cond.false
  %7 = load i64, i64* %nbits.addr, align 8
  %cmp15 = icmp uge i64 %7, 650
  br i1 %cmp15, label %cond.true17, label %cond.false18

cond.true17:                                      ; preds = %cond.false14
  br label %cond.end32

cond.false18:                                     ; preds = %cond.false14
  %8 = load i64, i64* %nbits.addr, align 8
  %cmp19 = icmp uge i64 %8, 350
  br i1 %cmp19, label %cond.true21, label %cond.false22

cond.true21:                                      ; preds = %cond.false18
  br label %cond.end30

cond.false22:                                     ; preds = %cond.false18
  %9 = load i64, i64* %nbits.addr, align 8
  %cmp23 = icmp uge i64 %9, 250
  br i1 %cmp23, label %cond.true25, label %cond.false26

cond.true25:                                      ; preds = %cond.false22
  br label %cond.end

cond.false26:                                     ; preds = %cond.false22
  %10 = load i64, i64* %nbits.addr, align 8
  %cmp27 = icmp uge i64 %10, 150
  %11 = zext i1 %cmp27 to i64
  %cond = select i1 %cmp27, i32 18, i32 27
  br label %cond.end

cond.end:                                         ; preds = %cond.false26, %cond.true25
  %cond29 = phi i32 [ 12, %cond.true25 ], [ %cond, %cond.false26 ]
  br label %cond.end30

cond.end30:                                       ; preds = %cond.end, %cond.true21
  %cond31 = phi i32 [ 8, %cond.true21 ], [ %cond29, %cond.end ]
  br label %cond.end32

cond.end32:                                       ; preds = %cond.end30, %cond.true17
  %cond33 = phi i32 [ 4, %cond.true17 ], [ %cond31, %cond.end30 ]
  br label %cond.end34

cond.end34:                                       ; preds = %cond.end32, %cond.true13
  %cond35 = phi i32 [ 3, %cond.true13 ], [ %cond33, %cond.end32 ]
  br label %cond.end36

cond.end36:                                       ; preds = %cond.end34, %cond.true
  %cond37 = phi i32 [ 2, %cond.true ], [ %cond35, %cond.end34 ]
  store i32 %cond37, i32* %rounds, align 4
  br label %if.end83

if.else:                                          ; preds = %if.end
  %12 = load i64, i64* %nbits.addr, align 8
  %cmp38 = icmp uge i64 %12, 1450
  br i1 %cmp38, label %cond.true40, label %cond.false41

cond.true40:                                      ; preds = %if.else
  br label %cond.end81

cond.false41:                                     ; preds = %if.else
  %13 = load i64, i64* %nbits.addr, align 8
  %cmp42 = icmp uge i64 %13, 1150
  br i1 %cmp42, label %cond.true44, label %cond.false45

cond.true44:                                      ; preds = %cond.false41
  br label %cond.end79

cond.false45:                                     ; preds = %cond.false41
  %14 = load i64, i64* %nbits.addr, align 8
  %cmp46 = icmp uge i64 %14, 1000
  br i1 %cmp46, label %cond.true48, label %cond.false49

cond.true48:                                      ; preds = %cond.false45
  br label %cond.end77

cond.false49:                                     ; preds = %cond.false45
  %15 = load i64, i64* %nbits.addr, align 8
  %cmp50 = icmp uge i64 %15, 850
  br i1 %cmp50, label %cond.true52, label %cond.false53

cond.true52:                                      ; preds = %cond.false49
  br label %cond.end75

cond.false53:                                     ; preds = %cond.false49
  %16 = load i64, i64* %nbits.addr, align 8
  %cmp54 = icmp uge i64 %16, 750
  br i1 %cmp54, label %cond.true56, label %cond.false57

cond.true56:                                      ; preds = %cond.false53
  br label %cond.end73

cond.false57:                                     ; preds = %cond.false53
  %17 = load i64, i64* %nbits.addr, align 8
  %cmp58 = icmp uge i64 %17, 500
  br i1 %cmp58, label %cond.true60, label %cond.false61

cond.true60:                                      ; preds = %cond.false57
  br label %cond.end71

cond.false61:                                     ; preds = %cond.false57
  %18 = load i64, i64* %nbits.addr, align 8
  %cmp62 = icmp uge i64 %18, 250
  br i1 %cmp62, label %cond.true64, label %cond.false65

cond.true64:                                      ; preds = %cond.false61
  br label %cond.end69

cond.false65:                                     ; preds = %cond.false61
  %19 = load i64, i64* %nbits.addr, align 8
  %cmp66 = icmp uge i64 %19, 150
  %20 = zext i1 %cmp66 to i64
  %cond68 = select i1 %cmp66, i32 40, i32 51
  br label %cond.end69

cond.end69:                                       ; preds = %cond.false65, %cond.true64
  %cond70 = phi i32 [ 28, %cond.true64 ], [ %cond68, %cond.false65 ]
  br label %cond.end71

cond.end71:                                       ; preds = %cond.end69, %cond.true60
  %cond72 = phi i32 [ 13, %cond.true60 ], [ %cond70, %cond.end69 ]
  br label %cond.end73

cond.end73:                                       ; preds = %cond.end71, %cond.true56
  %cond74 = phi i32 [ 8, %cond.true56 ], [ %cond72, %cond.end71 ]
  br label %cond.end75

cond.end75:                                       ; preds = %cond.end73, %cond.true52
  %cond76 = phi i32 [ 7, %cond.true52 ], [ %cond74, %cond.end73 ]
  br label %cond.end77

cond.end77:                                       ; preds = %cond.end75, %cond.true48
  %cond78 = phi i32 [ 6, %cond.true48 ], [ %cond76, %cond.end75 ]
  br label %cond.end79

cond.end79:                                       ; preds = %cond.end77, %cond.true44
  %cond80 = phi i32 [ 5, %cond.true44 ], [ %cond78, %cond.end77 ]
  br label %cond.end81

cond.end81:                                       ; preds = %cond.end79, %cond.true40
  %cond82 = phi i32 [ 4, %cond.true40 ], [ %cond80, %cond.end79 ]
  store i32 %cond82, i32* %rounds, align 4
  br label %if.end83

if.end83:                                         ; preds = %cond.end81, %cond.end36
  br label %while.body

while.body:                                       ; preds = %if.end83, %if.then92, %if.end204
  br label %do.body84

do.body84:                                        ; preds = %while.body
  %21 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %X.addr, align 8
  %22 = load i64, i64* %n, align 8
  %mul = mul i64 %22, 8
  %23 = load i32 (i8*, i8*, i64)*, i32 (i8*, i8*, i64)** %f_rng.addr, align 8
  %24 = load i8*, i8** %p_rng.addr, align 8
  %call = call i32 @mbedtls_mpi_fill_random(%struct.mbedtls_mpi* noundef %21, i64 noundef %mul, i32 (i8*, i8*, i64)* noundef %23, i8* noundef %24) #5
  store i32 %call, i32* %ret, align 4
  %cmp85 = icmp ne i32 %call, 0
  br i1 %cmp85, label %if.then87, label %if.end88

if.then87:                                        ; preds = %do.body84
  br label %cleanup

if.end88:                                         ; preds = %do.body84
  br label %do.end89

do.end89:                                         ; preds = %if.end88
  %25 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %X.addr, align 8
  %p = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %25, i32 0, i32 2
  %26 = load i64*, i64** %p, align 8
  %27 = load i64, i64* %n, align 8
  %sub = sub i64 %27, 1
  %arrayidx = getelementptr inbounds i64, i64* %26, i64 %sub
  %28 = load i64, i64* %arrayidx, align 8
  %cmp90 = icmp ult i64 %28, -5402926248376769403
  br i1 %cmp90, label %if.then92, label %if.end93

if.then92:                                        ; preds = %do.end89
  br label %while.body

if.end93:                                         ; preds = %do.end89
  %29 = load i64, i64* %n, align 8
  %mul94 = mul i64 %29, 64
  store i64 %mul94, i64* %k, align 8
  %30 = load i64, i64* %k, align 8
  %31 = load i64, i64* %nbits.addr, align 8
  %cmp95 = icmp ugt i64 %30, %31
  br i1 %cmp95, label %if.then97, label %if.end106

if.then97:                                        ; preds = %if.end93
  br label %do.body98

do.body98:                                        ; preds = %if.then97
  %32 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %X.addr, align 8
  %33 = load i64, i64* %k, align 8
  %34 = load i64, i64* %nbits.addr, align 8
  %sub99 = sub i64 %33, %34
  %call100 = call i32 @mbedtls_mpi_shift_r(%struct.mbedtls_mpi* noundef %32, i64 noundef %sub99) #5
  store i32 %call100, i32* %ret, align 4
  %cmp101 = icmp ne i32 %call100, 0
  br i1 %cmp101, label %if.then103, label %if.end104

if.then103:                                       ; preds = %do.body98
  br label %cleanup

if.end104:                                        ; preds = %do.body98
  br label %do.end105

do.end105:                                        ; preds = %if.end104
  br label %if.end106

if.end106:                                        ; preds = %do.end105, %if.end93
  %35 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %X.addr, align 8
  %p107 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %35, i32 0, i32 2
  %36 = load i64*, i64** %p107, align 8
  %arrayidx108 = getelementptr inbounds i64, i64* %36, i64 0
  %37 = load i64, i64* %arrayidx108, align 8
  %or = or i64 %37, 1
  store i64 %or, i64* %arrayidx108, align 8
  %38 = load i32, i32* %flags.addr, align 4
  %and109 = and i32 %38, 1
  %cmp110 = icmp eq i32 %and109, 0
  br i1 %cmp110, label %if.then112, label %if.else118

if.then112:                                       ; preds = %if.end106
  %39 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %X.addr, align 8
  %40 = load i32, i32* %rounds, align 4
  %41 = load i32 (i8*, i8*, i64)*, i32 (i8*, i8*, i64)** %f_rng.addr, align 8
  %42 = load i8*, i8** %p_rng.addr, align 8
  %call113 = call i32 @mbedtls_mpi_is_prime_ext(%struct.mbedtls_mpi* noundef %39, i32 noundef %40, i32 (i8*, i8*, i64)* noundef %41, i8* noundef %42) #5
  store i32 %call113, i32* %ret, align 4
  %43 = load i32, i32* %ret, align 4
  %cmp114 = icmp ne i32 %43, -14
  br i1 %cmp114, label %if.then116, label %if.end117

if.then116:                                       ; preds = %if.then112
  br label %cleanup

if.end117:                                        ; preds = %if.then112
  br label %if.end204

if.else118:                                       ; preds = %if.end106
  %44 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %X.addr, align 8
  %p119 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %44, i32 0, i32 2
  %45 = load i64*, i64** %p119, align 8
  %arrayidx120 = getelementptr inbounds i64, i64* %45, i64 0
  %46 = load i64, i64* %arrayidx120, align 8
  %or121 = or i64 %46, 2
  store i64 %or121, i64* %arrayidx120, align 8
  br label %do.body122

do.body122:                                       ; preds = %if.else118
  %47 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %X.addr, align 8
  %call123 = call i32 @mbedtls_mpi_mod_int(i64* noundef %r, %struct.mbedtls_mpi* noundef %47, i64 noundef 3) #5
  store i32 %call123, i32* %ret, align 4
  %cmp124 = icmp ne i32 %call123, 0
  br i1 %cmp124, label %if.then126, label %if.end127

if.then126:                                       ; preds = %do.body122
  br label %cleanup

if.end127:                                        ; preds = %do.body122
  br label %do.end128

do.end128:                                        ; preds = %if.end127
  %48 = load i64, i64* %r, align 8
  %cmp129 = icmp eq i64 %48, 0
  br i1 %cmp129, label %if.then131, label %if.else139

if.then131:                                       ; preds = %do.end128
  br label %do.body132

do.body132:                                       ; preds = %if.then131
  %49 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %X.addr, align 8
  %50 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %X.addr, align 8
  %call133 = call i32 @mbedtls_mpi_add_int(%struct.mbedtls_mpi* noundef %49, %struct.mbedtls_mpi* noundef %50, i64 noundef 8) #5
  store i32 %call133, i32* %ret, align 4
  %cmp134 = icmp ne i32 %call133, 0
  br i1 %cmp134, label %if.then136, label %if.end137

if.then136:                                       ; preds = %do.body132
  br label %cleanup

if.end137:                                        ; preds = %do.body132
  br label %do.end138

do.end138:                                        ; preds = %if.end137
  br label %if.end151

if.else139:                                       ; preds = %do.end128
  %51 = load i64, i64* %r, align 8
  %cmp140 = icmp eq i64 %51, 1
  br i1 %cmp140, label %if.then142, label %if.end150

if.then142:                                       ; preds = %if.else139
  br label %do.body143

do.body143:                                       ; preds = %if.then142
  %52 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %X.addr, align 8
  %53 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %X.addr, align 8
  %call144 = call i32 @mbedtls_mpi_add_int(%struct.mbedtls_mpi* noundef %52, %struct.mbedtls_mpi* noundef %53, i64 noundef 4) #5
  store i32 %call144, i32* %ret, align 4
  %cmp145 = icmp ne i32 %call144, 0
  br i1 %cmp145, label %if.then147, label %if.end148

if.then147:                                       ; preds = %do.body143
  br label %cleanup

if.end148:                                        ; preds = %do.body143
  br label %do.end149

do.end149:                                        ; preds = %if.end148
  br label %if.end150

if.end150:                                        ; preds = %do.end149, %if.else139
  br label %if.end151

if.end151:                                        ; preds = %if.end150, %do.end138
  br label %do.body152

do.body152:                                       ; preds = %if.end151
  %54 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %X.addr, align 8
  %call153 = call i32 @mbedtls_mpi_copy(%struct.mbedtls_mpi* noundef %Y, %struct.mbedtls_mpi* noundef %54) #5
  store i32 %call153, i32* %ret, align 4
  %cmp154 = icmp ne i32 %call153, 0
  br i1 %cmp154, label %if.then156, label %if.end157

if.then156:                                       ; preds = %do.body152
  br label %cleanup

if.end157:                                        ; preds = %do.body152
  br label %do.end158

do.end158:                                        ; preds = %if.end157
  br label %do.body159

do.body159:                                       ; preds = %do.end158
  %call160 = call i32 @mbedtls_mpi_shift_r(%struct.mbedtls_mpi* noundef %Y, i64 noundef 1) #5
  store i32 %call160, i32* %ret, align 4
  %cmp161 = icmp ne i32 %call160, 0
  br i1 %cmp161, label %if.then163, label %if.end164

if.then163:                                       ; preds = %do.body159
  br label %cleanup

if.end164:                                        ; preds = %do.body159
  br label %do.end165

do.end165:                                        ; preds = %if.end164
  br label %while.body167

while.body167:                                    ; preds = %do.end165, %do.end203
  %55 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %X.addr, align 8
  %call168 = call i32 @mpi_check_small_factors(%struct.mbedtls_mpi* noundef %55) #5
  store i32 %call168, i32* %ret, align 4
  %cmp169 = icmp eq i32 %call168, 0
  br i1 %cmp169, label %land.lhs.true, label %if.end185

land.lhs.true:                                    ; preds = %while.body167
  %call171 = call i32 @mpi_check_small_factors(%struct.mbedtls_mpi* noundef %Y) #5
  store i32 %call171, i32* %ret, align 4
  %cmp172 = icmp eq i32 %call171, 0
  br i1 %cmp172, label %land.lhs.true174, label %if.end185

land.lhs.true174:                                 ; preds = %land.lhs.true
  %56 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %X.addr, align 8
  %57 = load i32, i32* %rounds, align 4
  %conv175 = sext i32 %57 to i64
  %58 = load i32 (i8*, i8*, i64)*, i32 (i8*, i8*, i64)** %f_rng.addr, align 8
  %59 = load i8*, i8** %p_rng.addr, align 8
  %call176 = call i32 @mpi_miller_rabin(%struct.mbedtls_mpi* noundef %56, i64 noundef %conv175, i32 (i8*, i8*, i64)* noundef %58, i8* noundef %59) #5
  store i32 %call176, i32* %ret, align 4
  %cmp177 = icmp eq i32 %call176, 0
  br i1 %cmp177, label %land.lhs.true179, label %if.end185

land.lhs.true179:                                 ; preds = %land.lhs.true174
  %60 = load i32, i32* %rounds, align 4
  %conv180 = sext i32 %60 to i64
  %61 = load i32 (i8*, i8*, i64)*, i32 (i8*, i8*, i64)** %f_rng.addr, align 8
  %62 = load i8*, i8** %p_rng.addr, align 8
  %call181 = call i32 @mpi_miller_rabin(%struct.mbedtls_mpi* noundef %Y, i64 noundef %conv180, i32 (i8*, i8*, i64)* noundef %61, i8* noundef %62) #5
  store i32 %call181, i32* %ret, align 4
  %cmp182 = icmp eq i32 %call181, 0
  br i1 %cmp182, label %if.then184, label %if.end185

if.then184:                                       ; preds = %land.lhs.true179
  br label %cleanup

if.end185:                                        ; preds = %land.lhs.true179, %land.lhs.true174, %land.lhs.true, %while.body167
  %63 = load i32, i32* %ret, align 4
  %cmp186 = icmp ne i32 %63, -14
  br i1 %cmp186, label %if.then188, label %if.end189

if.then188:                                       ; preds = %if.end185
  br label %cleanup

if.end189:                                        ; preds = %if.end185
  br label %do.body190

do.body190:                                       ; preds = %if.end189
  %64 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %X.addr, align 8
  %65 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %X.addr, align 8
  %call191 = call i32 @mbedtls_mpi_add_int(%struct.mbedtls_mpi* noundef %64, %struct.mbedtls_mpi* noundef %65, i64 noundef 12) #5
  store i32 %call191, i32* %ret, align 4
  %cmp192 = icmp ne i32 %call191, 0
  br i1 %cmp192, label %if.then194, label %if.end195

if.then194:                                       ; preds = %do.body190
  br label %cleanup

if.end195:                                        ; preds = %do.body190
  br label %do.end196

do.end196:                                        ; preds = %if.end195
  br label %do.body197

do.body197:                                       ; preds = %do.end196
  %call198 = call i32 @mbedtls_mpi_add_int(%struct.mbedtls_mpi* noundef %Y, %struct.mbedtls_mpi* noundef %Y, i64 noundef 6) #5
  store i32 %call198, i32* %ret, align 4
  %cmp199 = icmp ne i32 %call198, 0
  br i1 %cmp199, label %if.then201, label %if.end202

if.then201:                                       ; preds = %do.body197
  br label %cleanup

if.end202:                                        ; preds = %do.body197
  br label %do.end203

do.end203:                                        ; preds = %if.end202
  br label %while.body167

if.end204:                                        ; preds = %if.end117
  br label %while.body

cleanup:                                          ; preds = %if.then201, %if.then194, %if.then188, %if.then184, %if.then163, %if.then156, %if.then147, %if.then136, %if.then126, %if.then116, %if.then103, %if.then87
  call void @mbedtls_mpi_free(%struct.mbedtls_mpi* noundef %Y) #5
  %66 = load i32, i32* %ret, align 4
  store i32 %66, i32* %retval, align 4
  br label %return

return:                                           ; preds = %cleanup, %if.then
  %67 = load i32, i32* %retval, align 4
  ret i32 %67
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_mpi_self_test(i32 noundef %verbose) #0 {
entry:
  %verbose.addr = alloca i32, align 4
  %ret = alloca i32, align 4
  %i = alloca i32, align 4
  %A = alloca %struct.mbedtls_mpi, align 8
  %E = alloca %struct.mbedtls_mpi, align 8
  %N = alloca %struct.mbedtls_mpi, align 8
  %X = alloca %struct.mbedtls_mpi, align 8
  %Y = alloca %struct.mbedtls_mpi, align 8
  %U = alloca %struct.mbedtls_mpi, align 8
  %V = alloca %struct.mbedtls_mpi, align 8
  store i32 %verbose, i32* %verbose.addr, align 4
  call void @mbedtls_mpi_init(%struct.mbedtls_mpi* noundef %A) #5
  call void @mbedtls_mpi_init(%struct.mbedtls_mpi* noundef %E) #5
  call void @mbedtls_mpi_init(%struct.mbedtls_mpi* noundef %N) #5
  call void @mbedtls_mpi_init(%struct.mbedtls_mpi* noundef %X) #5
  call void @mbedtls_mpi_init(%struct.mbedtls_mpi* noundef %Y) #5
  call void @mbedtls_mpi_init(%struct.mbedtls_mpi* noundef %U) #5
  call void @mbedtls_mpi_init(%struct.mbedtls_mpi* noundef %V) #5
  br label %do.body

do.body:                                          ; preds = %entry
  %call = call i32 @mbedtls_mpi_read_string(%struct.mbedtls_mpi* noundef %A, i32 noundef 16, i8* noundef getelementptr inbounds ([129 x i8], [129 x i8]* @.str.3, i64 0, i64 0)) #5
  store i32 %call, i32* %ret, align 4
  %cmp = icmp ne i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  br label %cleanup

if.end:                                           ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %do.body1

do.body1:                                         ; preds = %do.end
  %call2 = call i32 @mbedtls_mpi_read_string(%struct.mbedtls_mpi* noundef %E, i32 noundef 16, i8* noundef getelementptr inbounds ([129 x i8], [129 x i8]* @.str.4, i64 0, i64 0)) #5
  store i32 %call2, i32* %ret, align 4
  %cmp3 = icmp ne i32 %call2, 0
  br i1 %cmp3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %do.body1
  br label %cleanup

if.end5:                                          ; preds = %do.body1
  br label %do.end6

do.end6:                                          ; preds = %if.end5
  br label %do.body7

do.body7:                                         ; preds = %do.end6
  %call8 = call i32 @mbedtls_mpi_read_string(%struct.mbedtls_mpi* noundef %N, i32 noundef 16, i8* noundef getelementptr inbounds ([97 x i8], [97 x i8]* @.str.5, i64 0, i64 0)) #5
  store i32 %call8, i32* %ret, align 4
  %cmp9 = icmp ne i32 %call8, 0
  br i1 %cmp9, label %if.then10, label %if.end11

if.then10:                                        ; preds = %do.body7
  br label %cleanup

if.end11:                                         ; preds = %do.body7
  br label %do.end12

do.end12:                                         ; preds = %if.end11
  br label %do.body13

do.body13:                                        ; preds = %do.end12
  %call14 = call i32 @mbedtls_mpi_mul_mpi(%struct.mbedtls_mpi* noundef %X, %struct.mbedtls_mpi* noundef %A, %struct.mbedtls_mpi* noundef %N) #5
  store i32 %call14, i32* %ret, align 4
  %cmp15 = icmp ne i32 %call14, 0
  br i1 %cmp15, label %if.then16, label %if.end17

if.then16:                                        ; preds = %do.body13
  br label %cleanup

if.end17:                                         ; preds = %do.body13
  br label %do.end18

do.end18:                                         ; preds = %if.end17
  br label %do.body19

do.body19:                                        ; preds = %do.end18
  %call20 = call i32 @mbedtls_mpi_read_string(%struct.mbedtls_mpi* noundef %U, i32 noundef 16, i8* noundef getelementptr inbounds ([223 x i8], [223 x i8]* @.str.6, i64 0, i64 0)) #5
  store i32 %call20, i32* %ret, align 4
  %cmp21 = icmp ne i32 %call20, 0
  br i1 %cmp21, label %if.then22, label %if.end23

if.then22:                                        ; preds = %do.body19
  br label %cleanup

if.end23:                                         ; preds = %do.body19
  br label %do.end24

do.end24:                                         ; preds = %if.end23
  %0 = load i32, i32* %verbose.addr, align 4
  %cmp25 = icmp ne i32 %0, 0
  br i1 %cmp25, label %if.then26, label %if.end28

if.then26:                                        ; preds = %do.end24
  %call27 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0)) #5
  br label %if.end28

if.end28:                                         ; preds = %if.then26, %do.end24
  %call29 = call i32 @mbedtls_mpi_cmp_mpi(%struct.mbedtls_mpi* noundef %X, %struct.mbedtls_mpi* noundef %U) #5
  %cmp30 = icmp ne i32 %call29, 0
  br i1 %cmp30, label %if.then31, label %if.end36

if.then31:                                        ; preds = %if.end28
  %1 = load i32, i32* %verbose.addr, align 4
  %cmp32 = icmp ne i32 %1, 0
  br i1 %cmp32, label %if.then33, label %if.end35

if.then33:                                        ; preds = %if.then31
  %call34 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0)) #5
  br label %if.end35

if.end35:                                         ; preds = %if.then33, %if.then31
  store i32 1, i32* %ret, align 4
  br label %cleanup

if.end36:                                         ; preds = %if.end28
  %2 = load i32, i32* %verbose.addr, align 4
  %cmp37 = icmp ne i32 %2, 0
  br i1 %cmp37, label %if.then38, label %if.end40

if.then38:                                        ; preds = %if.end36
  %call39 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0)) #5
  br label %if.end40

if.end40:                                         ; preds = %if.then38, %if.end36
  br label %do.body41

do.body41:                                        ; preds = %if.end40
  %call42 = call i32 @mbedtls_mpi_div_mpi(%struct.mbedtls_mpi* noundef %X, %struct.mbedtls_mpi* noundef %Y, %struct.mbedtls_mpi* noundef %A, %struct.mbedtls_mpi* noundef %N) #5
  store i32 %call42, i32* %ret, align 4
  %cmp43 = icmp ne i32 %call42, 0
  br i1 %cmp43, label %if.then44, label %if.end45

if.then44:                                        ; preds = %do.body41
  br label %cleanup

if.end45:                                         ; preds = %do.body41
  br label %do.end46

do.end46:                                         ; preds = %if.end45
  br label %do.body47

do.body47:                                        ; preds = %do.end46
  %call48 = call i32 @mbedtls_mpi_read_string(%struct.mbedtls_mpi* noundef %U, i32 noundef 16, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.10, i64 0, i64 0)) #5
  store i32 %call48, i32* %ret, align 4
  %cmp49 = icmp ne i32 %call48, 0
  br i1 %cmp49, label %if.then50, label %if.end51

if.then50:                                        ; preds = %do.body47
  br label %cleanup

if.end51:                                         ; preds = %do.body47
  br label %do.end52

do.end52:                                         ; preds = %if.end51
  br label %do.body53

do.body53:                                        ; preds = %do.end52
  %call54 = call i32 @mbedtls_mpi_read_string(%struct.mbedtls_mpi* noundef %V, i32 noundef 16, i8* noundef getelementptr inbounds ([95 x i8], [95 x i8]* @.str.11, i64 0, i64 0)) #5
  store i32 %call54, i32* %ret, align 4
  %cmp55 = icmp ne i32 %call54, 0
  br i1 %cmp55, label %if.then56, label %if.end57

if.then56:                                        ; preds = %do.body53
  br label %cleanup

if.end57:                                         ; preds = %do.body53
  br label %do.end58

do.end58:                                         ; preds = %if.end57
  %3 = load i32, i32* %verbose.addr, align 4
  %cmp59 = icmp ne i32 %3, 0
  br i1 %cmp59, label %if.then60, label %if.end62

if.then60:                                        ; preds = %do.end58
  %call61 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.12, i64 0, i64 0)) #5
  br label %if.end62

if.end62:                                         ; preds = %if.then60, %do.end58
  %call63 = call i32 @mbedtls_mpi_cmp_mpi(%struct.mbedtls_mpi* noundef %X, %struct.mbedtls_mpi* noundef %U) #5
  %cmp64 = icmp ne i32 %call63, 0
  br i1 %cmp64, label %if.then67, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end62
  %call65 = call i32 @mbedtls_mpi_cmp_mpi(%struct.mbedtls_mpi* noundef %Y, %struct.mbedtls_mpi* noundef %V) #5
  %cmp66 = icmp ne i32 %call65, 0
  br i1 %cmp66, label %if.then67, label %if.end72

if.then67:                                        ; preds = %lor.lhs.false, %if.end62
  %4 = load i32, i32* %verbose.addr, align 4
  %cmp68 = icmp ne i32 %4, 0
  br i1 %cmp68, label %if.then69, label %if.end71

if.then69:                                        ; preds = %if.then67
  %call70 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0)) #5
  br label %if.end71

if.end71:                                         ; preds = %if.then69, %if.then67
  store i32 1, i32* %ret, align 4
  br label %cleanup

if.end72:                                         ; preds = %lor.lhs.false
  %5 = load i32, i32* %verbose.addr, align 4
  %cmp73 = icmp ne i32 %5, 0
  br i1 %cmp73, label %if.then74, label %if.end76

if.then74:                                        ; preds = %if.end72
  %call75 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0)) #5
  br label %if.end76

if.end76:                                         ; preds = %if.then74, %if.end72
  br label %do.body77

do.body77:                                        ; preds = %if.end76
  %call78 = call i32 @mbedtls_mpi_exp_mod(%struct.mbedtls_mpi* noundef %X, %struct.mbedtls_mpi* noundef %A, %struct.mbedtls_mpi* noundef %E, %struct.mbedtls_mpi* noundef %N, %struct.mbedtls_mpi* noundef null) #5
  store i32 %call78, i32* %ret, align 4
  %cmp79 = icmp ne i32 %call78, 0
  br i1 %cmp79, label %if.then80, label %if.end81

if.then80:                                        ; preds = %do.body77
  br label %cleanup

if.end81:                                         ; preds = %do.body77
  br label %do.end82

do.end82:                                         ; preds = %if.end81
  br label %do.body83

do.body83:                                        ; preds = %do.end82
  %call84 = call i32 @mbedtls_mpi_read_string(%struct.mbedtls_mpi* noundef %U, i32 noundef 16, i8* noundef getelementptr inbounds ([95 x i8], [95 x i8]* @.str.13, i64 0, i64 0)) #5
  store i32 %call84, i32* %ret, align 4
  %cmp85 = icmp ne i32 %call84, 0
  br i1 %cmp85, label %if.then86, label %if.end87

if.then86:                                        ; preds = %do.body83
  br label %cleanup

if.end87:                                         ; preds = %do.body83
  br label %do.end88

do.end88:                                         ; preds = %if.end87
  %6 = load i32, i32* %verbose.addr, align 4
  %cmp89 = icmp ne i32 %6, 0
  br i1 %cmp89, label %if.then90, label %if.end92

if.then90:                                        ; preds = %do.end88
  %call91 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.14, i64 0, i64 0)) #5
  br label %if.end92

if.end92:                                         ; preds = %if.then90, %do.end88
  %call93 = call i32 @mbedtls_mpi_cmp_mpi(%struct.mbedtls_mpi* noundef %X, %struct.mbedtls_mpi* noundef %U) #5
  %cmp94 = icmp ne i32 %call93, 0
  br i1 %cmp94, label %if.then95, label %if.end100

if.then95:                                        ; preds = %if.end92
  %7 = load i32, i32* %verbose.addr, align 4
  %cmp96 = icmp ne i32 %7, 0
  br i1 %cmp96, label %if.then97, label %if.end99

if.then97:                                        ; preds = %if.then95
  %call98 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0)) #5
  br label %if.end99

if.end99:                                         ; preds = %if.then97, %if.then95
  store i32 1, i32* %ret, align 4
  br label %cleanup

if.end100:                                        ; preds = %if.end92
  %8 = load i32, i32* %verbose.addr, align 4
  %cmp101 = icmp ne i32 %8, 0
  br i1 %cmp101, label %if.then102, label %if.end104

if.then102:                                       ; preds = %if.end100
  %call103 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0)) #5
  br label %if.end104

if.end104:                                        ; preds = %if.then102, %if.end100
  br label %do.body105

do.body105:                                       ; preds = %if.end104
  %call106 = call i32 @mbedtls_mpi_inv_mod(%struct.mbedtls_mpi* noundef %X, %struct.mbedtls_mpi* noundef %A, %struct.mbedtls_mpi* noundef %N) #5
  store i32 %call106, i32* %ret, align 4
  %cmp107 = icmp ne i32 %call106, 0
  br i1 %cmp107, label %if.then108, label %if.end109

if.then108:                                       ; preds = %do.body105
  br label %cleanup

if.end109:                                        ; preds = %do.body105
  br label %do.end110

do.end110:                                        ; preds = %if.end109
  br label %do.body111

do.body111:                                       ; preds = %do.end110
  %call112 = call i32 @mbedtls_mpi_read_string(%struct.mbedtls_mpi* noundef %U, i32 noundef 16, i8* noundef getelementptr inbounds ([97 x i8], [97 x i8]* @.str.15, i64 0, i64 0)) #5
  store i32 %call112, i32* %ret, align 4
  %cmp113 = icmp ne i32 %call112, 0
  br i1 %cmp113, label %if.then114, label %if.end115

if.then114:                                       ; preds = %do.body111
  br label %cleanup

if.end115:                                        ; preds = %do.body111
  br label %do.end116

do.end116:                                        ; preds = %if.end115
  %9 = load i32, i32* %verbose.addr, align 4
  %cmp117 = icmp ne i32 %9, 0
  br i1 %cmp117, label %if.then118, label %if.end120

if.then118:                                       ; preds = %do.end116
  %call119 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.16, i64 0, i64 0)) #5
  br label %if.end120

if.end120:                                        ; preds = %if.then118, %do.end116
  %call121 = call i32 @mbedtls_mpi_cmp_mpi(%struct.mbedtls_mpi* noundef %X, %struct.mbedtls_mpi* noundef %U) #5
  %cmp122 = icmp ne i32 %call121, 0
  br i1 %cmp122, label %if.then123, label %if.end128

if.then123:                                       ; preds = %if.end120
  %10 = load i32, i32* %verbose.addr, align 4
  %cmp124 = icmp ne i32 %10, 0
  br i1 %cmp124, label %if.then125, label %if.end127

if.then125:                                       ; preds = %if.then123
  %call126 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0)) #5
  br label %if.end127

if.end127:                                        ; preds = %if.then125, %if.then123
  store i32 1, i32* %ret, align 4
  br label %cleanup

if.end128:                                        ; preds = %if.end120
  %11 = load i32, i32* %verbose.addr, align 4
  %cmp129 = icmp ne i32 %11, 0
  br i1 %cmp129, label %if.then130, label %if.end132

if.then130:                                       ; preds = %if.end128
  %call131 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0)) #5
  br label %if.end132

if.end132:                                        ; preds = %if.then130, %if.end128
  %12 = load i32, i32* %verbose.addr, align 4
  %cmp133 = icmp ne i32 %12, 0
  br i1 %cmp133, label %if.then134, label %if.end136

if.then134:                                       ; preds = %if.end132
  %call135 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.17, i64 0, i64 0)) #5
  br label %if.end136

if.end136:                                        ; preds = %if.then134, %if.end132
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end136
  %13 = load i32, i32* %i, align 4
  %cmp137 = icmp slt i32 %13, 3
  br i1 %cmp137, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  br label %do.body138

do.body138:                                       ; preds = %for.body
  %14 = load i32, i32* %i, align 4
  %idxprom = sext i32 %14 to i64
  %arrayidx = getelementptr inbounds [3 x [3 x i32]], [3 x [3 x i32]]* @gcd_pairs, i64 0, i64 %idxprom
  %arrayidx139 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx, i64 0, i64 0
  %15 = load i32, i32* %arrayidx139, align 4
  %conv = sext i32 %15 to i64
  %call140 = call i32 @mbedtls_mpi_lset(%struct.mbedtls_mpi* noundef %X, i64 noundef %conv) #5
  store i32 %call140, i32* %ret, align 4
  %cmp141 = icmp ne i32 %call140, 0
  br i1 %cmp141, label %if.then143, label %if.end144

if.then143:                                       ; preds = %do.body138
  br label %cleanup

if.end144:                                        ; preds = %do.body138
  br label %do.end145

do.end145:                                        ; preds = %if.end144
  br label %do.body146

do.body146:                                       ; preds = %do.end145
  %16 = load i32, i32* %i, align 4
  %idxprom147 = sext i32 %16 to i64
  %arrayidx148 = getelementptr inbounds [3 x [3 x i32]], [3 x [3 x i32]]* @gcd_pairs, i64 0, i64 %idxprom147
  %arrayidx149 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx148, i64 0, i64 1
  %17 = load i32, i32* %arrayidx149, align 4
  %conv150 = sext i32 %17 to i64
  %call151 = call i32 @mbedtls_mpi_lset(%struct.mbedtls_mpi* noundef %Y, i64 noundef %conv150) #5
  store i32 %call151, i32* %ret, align 4
  %cmp152 = icmp ne i32 %call151, 0
  br i1 %cmp152, label %if.then154, label %if.end155

if.then154:                                       ; preds = %do.body146
  br label %cleanup

if.end155:                                        ; preds = %do.body146
  br label %do.end156

do.end156:                                        ; preds = %if.end155
  br label %do.body157

do.body157:                                       ; preds = %do.end156
  %call158 = call i32 @mbedtls_mpi_gcd(%struct.mbedtls_mpi* noundef %A, %struct.mbedtls_mpi* noundef %X, %struct.mbedtls_mpi* noundef %Y) #5
  store i32 %call158, i32* %ret, align 4
  %cmp159 = icmp ne i32 %call158, 0
  br i1 %cmp159, label %if.then161, label %if.end162

if.then161:                                       ; preds = %do.body157
  br label %cleanup

if.end162:                                        ; preds = %do.body157
  br label %do.end163

do.end163:                                        ; preds = %if.end162
  %18 = load i32, i32* %i, align 4
  %idxprom164 = sext i32 %18 to i64
  %arrayidx165 = getelementptr inbounds [3 x [3 x i32]], [3 x [3 x i32]]* @gcd_pairs, i64 0, i64 %idxprom164
  %arrayidx166 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx165, i64 0, i64 2
  %19 = load i32, i32* %arrayidx166, align 4
  %conv167 = sext i32 %19 to i64
  %call168 = call i32 @mbedtls_mpi_cmp_int(%struct.mbedtls_mpi* noundef %A, i64 noundef %conv167) #5
  %cmp169 = icmp ne i32 %call168, 0
  br i1 %cmp169, label %if.then171, label %if.end177

if.then171:                                       ; preds = %do.end163
  %20 = load i32, i32* %verbose.addr, align 4
  %cmp172 = icmp ne i32 %20, 0
  br i1 %cmp172, label %if.then174, label %if.end176

if.then174:                                       ; preds = %if.then171
  %21 = load i32, i32* %i, align 4
  %call175 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.18, i64 0, i64 0), i32 noundef %21) #5
  br label %if.end176

if.end176:                                        ; preds = %if.then174, %if.then171
  store i32 1, i32* %ret, align 4
  br label %cleanup

if.end177:                                        ; preds = %do.end163
  br label %for.inc

for.inc:                                          ; preds = %if.end177
  %22 = load i32, i32* %i, align 4
  %inc = add nsw i32 %22, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !75

for.end:                                          ; preds = %for.cond
  %23 = load i32, i32* %verbose.addr, align 4
  %cmp178 = icmp ne i32 %23, 0
  br i1 %cmp178, label %if.then180, label %if.end182

if.then180:                                       ; preds = %for.end
  %call181 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0)) #5
  br label %if.end182

if.end182:                                        ; preds = %if.then180, %for.end
  br label %cleanup

cleanup:                                          ; preds = %if.end182, %if.end176, %if.then161, %if.then154, %if.then143, %if.end127, %if.then114, %if.then108, %if.end99, %if.then86, %if.then80, %if.end71, %if.then56, %if.then50, %if.then44, %if.end35, %if.then22, %if.then16, %if.then10, %if.then4, %if.then
  %24 = load i32, i32* %ret, align 4
  %cmp183 = icmp ne i32 %24, 0
  br i1 %cmp183, label %land.lhs.true, label %if.end189

land.lhs.true:                                    ; preds = %cleanup
  %25 = load i32, i32* %verbose.addr, align 4
  %cmp185 = icmp ne i32 %25, 0
  br i1 %cmp185, label %if.then187, label %if.end189

if.then187:                                       ; preds = %land.lhs.true
  %26 = load i32, i32* %ret, align 4
  %call188 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([38 x i8], [38 x i8]* @.str.19, i64 0, i64 0), i32 noundef %26) #5
  br label %if.end189

if.end189:                                        ; preds = %if.then187, %land.lhs.true, %cleanup
  call void @mbedtls_mpi_free(%struct.mbedtls_mpi* noundef %A) #5
  call void @mbedtls_mpi_free(%struct.mbedtls_mpi* noundef %E) #5
  call void @mbedtls_mpi_free(%struct.mbedtls_mpi* noundef %N) #5
  call void @mbedtls_mpi_free(%struct.mbedtls_mpi* noundef %X) #5
  call void @mbedtls_mpi_free(%struct.mbedtls_mpi* noundef %Y) #5
  call void @mbedtls_mpi_free(%struct.mbedtls_mpi* noundef %U) #5
  call void @mbedtls_mpi_free(%struct.mbedtls_mpi* noundef %V) #5
  %27 = load i32, i32* %verbose.addr, align 4
  %cmp190 = icmp ne i32 %27, 0
  br i1 %cmp190, label %if.then192, label %if.end194

if.then192:                                       ; preds = %if.end189
  %call193 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.20, i64 0, i64 0)) #5
  br label %if.end194

if.end194:                                        ; preds = %if.then192, %if.end189
  %28 = load i32, i32* %ret, align 4
  ret i32 %28
}

; Function Attrs: nounwind
declare dso_local i8* @memmove(i8* noundef, i8* noundef, i64 noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @mpi_uint_bigendian_to_host(i64 noundef %x) #0 {
entry:
  %x.addr = alloca i64, align 8
  store i64 %x, i64* %x.addr, align 8
  %0 = load i64, i64* %x.addr, align 8
  %1 = call i64 @llvm.bswap.i64(i64 %0)
  ret i64 %1
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #4

declare dso_local void @mbedtls_ct_mpi_uint_cond_assign(i64 noundef, i64* noundef, i64* noundef, i8 noundef zeroext) #3

declare dso_local i32 @mbedtls_mpi_safe_cond_assign(%struct.mbedtls_mpi* noundef, %struct.mbedtls_mpi* noundef, i8 noundef zeroext) #3

declare dso_local i32 @mbedtls_ct_size_bool_eq(i64 noundef, i64 noundef) #3

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind readonly willreturn "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nobuiltin "no-builtins" }
attributes #6 = { nobuiltin nounwind "no-builtins" }
attributes #7 = { nobuiltin nounwind readonly willreturn "no-builtins" }
attributes #8 = { nounwind }

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
!10 = distinct !{!10, !5}
!11 = distinct !{!11, !5}
!12 = distinct !{!12, !5}
!13 = distinct !{!13, !5}
!14 = distinct !{!14, !5}
!15 = distinct !{!15, !5}
!16 = distinct !{!16, !5}
!17 = distinct !{!17, !5}
!18 = distinct !{!18, !5}
!19 = distinct !{!19, !5}
!20 = distinct !{!20, !5}
!21 = distinct !{!21, !5}
!22 = distinct !{!22, !5}
!23 = distinct !{!23, !5}
!24 = distinct !{!24, !5}
!25 = distinct !{!25, !5}
!26 = distinct !{!26, !5}
!27 = distinct !{!27, !5}
!28 = distinct !{!28, !5}
!29 = distinct !{!29, !5}
!30 = distinct !{!30, !5}
!31 = distinct !{!31, !5}
!32 = distinct !{!32, !5}
!33 = distinct !{!33, !5}
!34 = distinct !{!34, !5}
!35 = distinct !{!35, !5}
!36 = distinct !{!36, !5}
!37 = distinct !{!37, !5}
!38 = distinct !{!38, !5}
!39 = distinct !{!39, !5}
!40 = distinct !{!40, !5}
!41 = distinct !{!41, !5}
!42 = !{i64 2149130923, i64 2149131048, i64 2149131094, i64 2149131140, i64 2149131186, i64 2149131232, i64 2149131278, i64 2149131324, i64 2149131370, i64 2149131416, i64 2149131462, i64 2149131483, i64 2149131529, i64 2149131575, i64 2149131621, i64 2149131667, i64 2149131713, i64 2149131759, i64 2149131805, i64 2149131851, i64 2149131897, i64 2149131950, i64 2149131996, i64 2149132042, i64 2149132088, i64 2149132134, i64 2149132180, i64 2149132226, i64 2149132272, i64 2149132318, i64 2149132364, i64 2149132385, i64 2149132431, i64 2149132477, i64 2149132523, i64 2149132569, i64 2149132615, i64 2149132661, i64 2149132707, i64 2149132753, i64 2149132799, i64 2149132884, i64 2149132930, i64 2149132976, i64 2149133022, i64 2149133068, i64 2149133114, i64 2149133160, i64 2149133206, i64 2149133252, i64 2149133298, i64 2149133319, i64 2149133365, i64 2149133411, i64 2149133457, i64 2149133503, i64 2149133549, i64 2149133595, i64 2149133641, i64 2149133687, i64 2149133733, i64 2149133786, i64 2149133832, i64 2149133878, i64 2149133924, i64 2149133970, i64 2149134016, i64 2149134062, i64 2149134108, i64 2149134154, i64 2149134200, i64 2149134221, i64 2149134267, i64 2149134313, i64 2149134359, i64 2149134405, i64 2149134451, i64 2149134497, i64 2149134543, i64 2149134589, i64 2149134635}
!43 = distinct !{!43, !5}
!44 = !{i64 2149134965, i64 2149134994, i64 2149135040, i64 2149135086, i64 2149135132, i64 2149135178, i64 2149135224, i64 2149135270, i64 2149135316, i64 2149135362, i64 2149135408}
!45 = distinct !{!45, !5}
!46 = distinct !{!46, !5}
!47 = distinct !{!47, !5}
!48 = distinct !{!48, !5}
!49 = distinct !{!49, !5}
!50 = distinct !{!50, !5}
!51 = distinct !{!51, !5}
!52 = distinct !{!52, !5}
!53 = distinct !{!53, !5}
!54 = distinct !{!54, !5}
!55 = distinct !{!55, !5}
!56 = distinct !{!56, !5}
!57 = distinct !{!57, !5}
!58 = distinct !{!58, !5}
!59 = distinct !{!59, !5}
!60 = distinct !{!60, !5}
!61 = distinct !{!61, !5}
!62 = distinct !{!62, !5}
!63 = distinct !{!63, !5}
!64 = distinct !{!64, !5}
!65 = distinct !{!65, !5}
!66 = distinct !{!66, !5}
!67 = distinct !{!67, !5}
!68 = distinct !{!68, !5}
!69 = distinct !{!69, !5}
!70 = distinct !{!70, !5}
!71 = distinct !{!71, !5}
!72 = distinct !{!72, !5}
!73 = distinct !{!73, !5}
!74 = distinct !{!74, !5}
!75 = distinct !{!75, !5}
