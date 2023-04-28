; ModuleID = 'ecdsa.c'
source_filename = "ecdsa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mbedtls_ecp_group = type { i32, %struct.mbedtls_mpi, %struct.mbedtls_mpi, %struct.mbedtls_mpi, %struct.mbedtls_ecp_point, %struct.mbedtls_mpi, i64, i64, i32, i32 (%struct.mbedtls_mpi*)*, i32 (%struct.mbedtls_ecp_point*, i8*)*, i32 (%struct.mbedtls_ecp_point*, i8*)*, i8*, %struct.mbedtls_ecp_point*, i64 }
%struct.mbedtls_ecp_point = type { %struct.mbedtls_mpi, %struct.mbedtls_mpi, %struct.mbedtls_mpi }
%struct.mbedtls_mpi = type { i32, i64, i64* }
%struct.mbedtls_hmac_drbg_context = type { %struct.mbedtls_md_context_t, [64 x i8], i32, i64, i32, i32, i32 (i8*, i8*, i64)*, i8* }
%struct.mbedtls_md_context_t = type { %struct.mbedtls_md_info_t*, i8*, i8* }
%struct.mbedtls_md_info_t = type opaque
%struct.mbedtls_ecp_keypair = type { %struct.mbedtls_ecp_group, %struct.mbedtls_mpi, %struct.mbedtls_ecp_point }

@.str = private unnamed_addr constant [8 x i8] c"ecdsa.c\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_ecdsa_can_do(i32 noundef %gid) #0 {
entry:
  %retval = alloca i32, align 4
  %gid.addr = alloca i32, align 4
  store i32 %gid, i32* %gid.addr, align 4
  %0 = load i32, i32* %gid.addr, align 4
  switch i32 %0, label %sw.default [
    i32 9, label %sw.bb
    i32 13, label %sw.bb1
  ]

sw.bb:                                            ; preds = %entry
  store i32 0, i32* %retval, align 4
  br label %return

sw.bb1:                                           ; preds = %entry
  store i32 0, i32* %retval, align 4
  br label %return

sw.default:                                       ; preds = %entry
  store i32 1, i32* %retval, align 4
  br label %return

return:                                           ; preds = %sw.default, %sw.bb1, %sw.bb
  %1 = load i32, i32* %retval, align 4
  ret i32 %1
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_ecdsa_sign(%struct.mbedtls_ecp_group* noundef %grp, %struct.mbedtls_mpi* noundef %r, %struct.mbedtls_mpi* noundef %s, %struct.mbedtls_mpi* noundef %d, i8* noundef %buf, i64 noundef %blen, i32 (i8*, i8*, i64)* noundef %f_rng, i8* noundef %p_rng) #0 {
entry:
  %grp.addr = alloca %struct.mbedtls_ecp_group*, align 8
  %r.addr = alloca %struct.mbedtls_mpi*, align 8
  %s.addr = alloca %struct.mbedtls_mpi*, align 8
  %d.addr = alloca %struct.mbedtls_mpi*, align 8
  %buf.addr = alloca i8*, align 8
  %blen.addr = alloca i64, align 8
  %f_rng.addr = alloca i32 (i8*, i8*, i64)*, align 8
  %p_rng.addr = alloca i8*, align 8
  store %struct.mbedtls_ecp_group* %grp, %struct.mbedtls_ecp_group** %grp.addr, align 8
  store %struct.mbedtls_mpi* %r, %struct.mbedtls_mpi** %r.addr, align 8
  store %struct.mbedtls_mpi* %s, %struct.mbedtls_mpi** %s.addr, align 8
  store %struct.mbedtls_mpi* %d, %struct.mbedtls_mpi** %d.addr, align 8
  store i8* %buf, i8** %buf.addr, align 8
  store i64 %blen, i64* %blen.addr, align 8
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
  br label %do.body3

do.body3:                                         ; preds = %do.end2
  br label %do.end4

do.end4:                                          ; preds = %do.body3
  br label %do.body5

do.body5:                                         ; preds = %do.end4
  br label %do.end6

do.end6:                                          ; preds = %do.body5
  br label %do.body7

do.body7:                                         ; preds = %do.end6
  br label %do.end8

do.end8:                                          ; preds = %do.body7
  br label %do.body9

do.body9:                                         ; preds = %do.end8
  br label %do.end10

do.end10:                                         ; preds = %do.body9
  %0 = load %struct.mbedtls_ecp_group*, %struct.mbedtls_ecp_group** %grp.addr, align 8
  %1 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %r.addr, align 8
  %2 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %s.addr, align 8
  %3 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %d.addr, align 8
  %4 = load i8*, i8** %buf.addr, align 8
  %5 = load i64, i64* %blen.addr, align 8
  %6 = load i32 (i8*, i8*, i64)*, i32 (i8*, i8*, i64)** %f_rng.addr, align 8
  %7 = load i8*, i8** %p_rng.addr, align 8
  %8 = load i32 (i8*, i8*, i64)*, i32 (i8*, i8*, i64)** %f_rng.addr, align 8
  %9 = load i8*, i8** %p_rng.addr, align 8
  %call = call i32 @ecdsa_sign_restartable(%struct.mbedtls_ecp_group* noundef %0, %struct.mbedtls_mpi* noundef %1, %struct.mbedtls_mpi* noundef %2, %struct.mbedtls_mpi* noundef %3, i8* noundef %4, i64 noundef %5, i32 (i8*, i8*, i64)* noundef %6, i8* noundef %7, i32 (i8*, i8*, i64)* noundef %8, i8* noundef %9, i8* noundef null) #4
  ret i32 %call
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ecdsa_sign_restartable(%struct.mbedtls_ecp_group* noundef %grp, %struct.mbedtls_mpi* noundef %r, %struct.mbedtls_mpi* noundef %s, %struct.mbedtls_mpi* noundef %d, i8* noundef %buf, i64 noundef %blen, i32 (i8*, i8*, i64)* noundef %f_rng, i8* noundef %p_rng, i32 (i8*, i8*, i64)* noundef %f_rng_blind, i8* noundef %p_rng_blind, i8* noundef %rs_ctx) #0 {
entry:
  %retval = alloca i32, align 4
  %grp.addr = alloca %struct.mbedtls_ecp_group*, align 8
  %r.addr = alloca %struct.mbedtls_mpi*, align 8
  %s.addr = alloca %struct.mbedtls_mpi*, align 8
  %d.addr = alloca %struct.mbedtls_mpi*, align 8
  %buf.addr = alloca i8*, align 8
  %blen.addr = alloca i64, align 8
  %f_rng.addr = alloca i32 (i8*, i8*, i64)*, align 8
  %p_rng.addr = alloca i8*, align 8
  %f_rng_blind.addr = alloca i32 (i8*, i8*, i64)*, align 8
  %p_rng_blind.addr = alloca i8*, align 8
  %rs_ctx.addr = alloca i8*, align 8
  %ret = alloca i32, align 4
  %key_tries = alloca i32, align 4
  %sign_tries = alloca i32, align 4
  %p_sign_tries = alloca i32*, align 8
  %p_key_tries = alloca i32*, align 8
  %R = alloca %struct.mbedtls_ecp_point, align 8
  %k = alloca %struct.mbedtls_mpi, align 8
  %e = alloca %struct.mbedtls_mpi, align 8
  %t = alloca %struct.mbedtls_mpi, align 8
  %pk = alloca %struct.mbedtls_mpi*, align 8
  %pr = alloca %struct.mbedtls_mpi*, align 8
  store %struct.mbedtls_ecp_group* %grp, %struct.mbedtls_ecp_group** %grp.addr, align 8
  store %struct.mbedtls_mpi* %r, %struct.mbedtls_mpi** %r.addr, align 8
  store %struct.mbedtls_mpi* %s, %struct.mbedtls_mpi** %s.addr, align 8
  store %struct.mbedtls_mpi* %d, %struct.mbedtls_mpi** %d.addr, align 8
  store i8* %buf, i8** %buf.addr, align 8
  store i64 %blen, i64* %blen.addr, align 8
  store i32 (i8*, i8*, i64)* %f_rng, i32 (i8*, i8*, i64)** %f_rng.addr, align 8
  store i8* %p_rng, i8** %p_rng.addr, align 8
  store i32 (i8*, i8*, i64)* %f_rng_blind, i32 (i8*, i8*, i64)** %f_rng_blind.addr, align 8
  store i8* %p_rng_blind, i8** %p_rng_blind.addr, align 8
  store i8* %rs_ctx, i8** %rs_ctx.addr, align 8
  store i32* %sign_tries, i32** %p_sign_tries, align 8
  store i32* %key_tries, i32** %p_key_tries, align 8
  store %struct.mbedtls_mpi* %k, %struct.mbedtls_mpi** %pk, align 8
  %0 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %r.addr, align 8
  store %struct.mbedtls_mpi* %0, %struct.mbedtls_mpi** %pr, align 8
  %1 = load %struct.mbedtls_ecp_group*, %struct.mbedtls_ecp_group** %grp.addr, align 8
  %id = getelementptr inbounds %struct.mbedtls_ecp_group, %struct.mbedtls_ecp_group* %1, i32 0, i32 0
  %2 = load i32, i32* %id, align 8
  %call = call i32 @mbedtls_ecdsa_can_do(i32 noundef %2) #4
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %3 = load %struct.mbedtls_ecp_group*, %struct.mbedtls_ecp_group** %grp.addr, align 8
  %N = getelementptr inbounds %struct.mbedtls_ecp_group, %struct.mbedtls_ecp_group* %3, i32 0, i32 5
  %p = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %N, i32 0, i32 2
  %4 = load i64*, i64** %p, align 8
  %cmp = icmp eq i64* %4, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 -20352, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %5 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %d.addr, align 8
  %call1 = call i32 @mbedtls_mpi_cmp_int(%struct.mbedtls_mpi* noundef %5, i64 noundef 1) #4
  %cmp2 = icmp slt i32 %call1, 0
  br i1 %cmp2, label %if.then7, label %lor.lhs.false3

lor.lhs.false3:                                   ; preds = %if.end
  %6 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %d.addr, align 8
  %7 = load %struct.mbedtls_ecp_group*, %struct.mbedtls_ecp_group** %grp.addr, align 8
  %N4 = getelementptr inbounds %struct.mbedtls_ecp_group, %struct.mbedtls_ecp_group* %7, i32 0, i32 5
  %call5 = call i32 @mbedtls_mpi_cmp_mpi(%struct.mbedtls_mpi* noundef %6, %struct.mbedtls_mpi* noundef %N4) #4
  %cmp6 = icmp sge i32 %call5, 0
  br i1 %cmp6, label %if.then7, label %if.end8

if.then7:                                         ; preds = %lor.lhs.false3, %if.end
  store i32 -19584, i32* %retval, align 4
  br label %return

if.end8:                                          ; preds = %lor.lhs.false3
  call void @mbedtls_ecp_point_init(%struct.mbedtls_ecp_point* noundef %R) #4
  call void @mbedtls_mpi_init(%struct.mbedtls_mpi* noundef %k) #4
  call void @mbedtls_mpi_init(%struct.mbedtls_mpi* noundef %e) #4
  call void @mbedtls_mpi_init(%struct.mbedtls_mpi* noundef %t) #4
  %8 = load i8*, i8** %rs_ctx.addr, align 8
  %9 = load i32*, i32** %p_sign_tries, align 8
  store i32 0, i32* %9, align 4
  br label %do.body

do.body:                                          ; preds = %do.cond111, %if.end8
  %10 = load i32*, i32** %p_sign_tries, align 8
  %11 = load i32, i32* %10, align 4
  %inc = add nsw i32 %11, 1
  store i32 %inc, i32* %10, align 4
  %cmp9 = icmp sgt i32 %11, 10
  br i1 %cmp9, label %if.then10, label %if.end11

if.then10:                                        ; preds = %do.body
  store i32 -19712, i32* %ret, align 4
  br label %cleanup

if.end11:                                         ; preds = %do.body
  %12 = load i32*, i32** %p_key_tries, align 8
  store i32 0, i32* %12, align 4
  br label %do.body12

do.body12:                                        ; preds = %do.cond, %if.end11
  %13 = load i32*, i32** %p_key_tries, align 8
  %14 = load i32, i32* %13, align 4
  %inc13 = add nsw i32 %14, 1
  store i32 %inc13, i32* %13, align 4
  %cmp14 = icmp sgt i32 %14, 10
  br i1 %cmp14, label %if.then15, label %if.end16

if.then15:                                        ; preds = %do.body12
  store i32 -19712, i32* %ret, align 4
  br label %cleanup

if.end16:                                         ; preds = %do.body12
  br label %do.body17

do.body17:                                        ; preds = %if.end16
  %15 = load %struct.mbedtls_ecp_group*, %struct.mbedtls_ecp_group** %grp.addr, align 8
  %16 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %pk, align 8
  %17 = load i32 (i8*, i8*, i64)*, i32 (i8*, i8*, i64)** %f_rng.addr, align 8
  %18 = load i8*, i8** %p_rng.addr, align 8
  %call18 = call i32 @mbedtls_ecp_gen_privkey(%struct.mbedtls_ecp_group* noundef %15, %struct.mbedtls_mpi* noundef %16, i32 (i8*, i8*, i64)* noundef %17, i8* noundef %18) #4
  store i32 %call18, i32* %ret, align 4
  %cmp19 = icmp ne i32 %call18, 0
  br i1 %cmp19, label %if.then20, label %if.end21

if.then20:                                        ; preds = %do.body17
  br label %cleanup

if.end21:                                         ; preds = %do.body17
  br label %do.end

do.end:                                           ; preds = %if.end21
  br label %do.body22

do.body22:                                        ; preds = %do.end
  %19 = load %struct.mbedtls_ecp_group*, %struct.mbedtls_ecp_group** %grp.addr, align 8
  %20 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %pk, align 8
  %21 = load %struct.mbedtls_ecp_group*, %struct.mbedtls_ecp_group** %grp.addr, align 8
  %G = getelementptr inbounds %struct.mbedtls_ecp_group, %struct.mbedtls_ecp_group* %21, i32 0, i32 4
  %22 = load i32 (i8*, i8*, i64)*, i32 (i8*, i8*, i64)** %f_rng_blind.addr, align 8
  %23 = load i8*, i8** %p_rng_blind.addr, align 8
  %call23 = call i32 @mbedtls_ecp_mul_restartable(%struct.mbedtls_ecp_group* noundef %19, %struct.mbedtls_ecp_point* noundef %R, %struct.mbedtls_mpi* noundef %20, %struct.mbedtls_ecp_point* noundef %G, i32 (i8*, i8*, i64)* noundef %22, i8* noundef %23, i8* noundef null) #4
  store i32 %call23, i32* %ret, align 4
  %cmp24 = icmp ne i32 %call23, 0
  br i1 %cmp24, label %if.then25, label %if.end26

if.then25:                                        ; preds = %do.body22
  br label %cleanup

if.end26:                                         ; preds = %do.body22
  br label %do.end27

do.end27:                                         ; preds = %if.end26
  br label %do.body28

do.body28:                                        ; preds = %do.end27
  %24 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %pr, align 8
  %X = getelementptr inbounds %struct.mbedtls_ecp_point, %struct.mbedtls_ecp_point* %R, i32 0, i32 0
  %25 = load %struct.mbedtls_ecp_group*, %struct.mbedtls_ecp_group** %grp.addr, align 8
  %N29 = getelementptr inbounds %struct.mbedtls_ecp_group, %struct.mbedtls_ecp_group* %25, i32 0, i32 5
  %call30 = call i32 @mbedtls_mpi_mod_mpi(%struct.mbedtls_mpi* noundef %24, %struct.mbedtls_mpi* noundef %X, %struct.mbedtls_mpi* noundef %N29) #4
  store i32 %call30, i32* %ret, align 4
  %cmp31 = icmp ne i32 %call30, 0
  br i1 %cmp31, label %if.then32, label %if.end33

if.then32:                                        ; preds = %do.body28
  br label %cleanup

if.end33:                                         ; preds = %do.body28
  br label %do.end34

do.end34:                                         ; preds = %if.end33
  br label %do.cond

do.cond:                                          ; preds = %do.end34
  %26 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %pr, align 8
  %call35 = call i32 @mbedtls_mpi_cmp_int(%struct.mbedtls_mpi* noundef %26, i64 noundef 0) #4
  %cmp36 = icmp eq i32 %call35, 0
  br i1 %cmp36, label %do.body12, label %do.end37, !llvm.loop !4

do.end37:                                         ; preds = %do.cond
  br label %do.body38

do.body38:                                        ; preds = %do.end37
  %27 = load %struct.mbedtls_ecp_group*, %struct.mbedtls_ecp_group** %grp.addr, align 8
  %28 = load i8*, i8** %buf.addr, align 8
  %29 = load i64, i64* %blen.addr, align 8
  %call39 = call i32 @derive_mpi(%struct.mbedtls_ecp_group* noundef %27, %struct.mbedtls_mpi* noundef %e, i8* noundef %28, i64 noundef %29) #4
  store i32 %call39, i32* %ret, align 4
  %cmp40 = icmp ne i32 %call39, 0
  br i1 %cmp40, label %if.then41, label %if.end42

if.then41:                                        ; preds = %do.body38
  br label %cleanup

if.end42:                                         ; preds = %do.body38
  br label %do.end44

do.end44:                                         ; preds = %if.end42
  br label %do.body45

do.body45:                                        ; preds = %do.end44
  %30 = load %struct.mbedtls_ecp_group*, %struct.mbedtls_ecp_group** %grp.addr, align 8
  %31 = load i32 (i8*, i8*, i64)*, i32 (i8*, i8*, i64)** %f_rng_blind.addr, align 8
  %32 = load i8*, i8** %p_rng_blind.addr, align 8
  %call46 = call i32 @mbedtls_ecp_gen_privkey(%struct.mbedtls_ecp_group* noundef %30, %struct.mbedtls_mpi* noundef %t, i32 (i8*, i8*, i64)* noundef %31, i8* noundef %32) #4
  store i32 %call46, i32* %ret, align 4
  %cmp47 = icmp ne i32 %call46, 0
  br i1 %cmp47, label %if.then48, label %if.end49

if.then48:                                        ; preds = %do.body45
  br label %cleanup

if.end49:                                         ; preds = %do.body45
  br label %do.end51

do.end51:                                         ; preds = %if.end49
  br label %do.body52

do.body52:                                        ; preds = %do.end51
  %33 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %s.addr, align 8
  %34 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %pr, align 8
  %35 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %d.addr, align 8
  %call53 = call i32 @mbedtls_mpi_mul_mpi(%struct.mbedtls_mpi* noundef %33, %struct.mbedtls_mpi* noundef %34, %struct.mbedtls_mpi* noundef %35) #4
  store i32 %call53, i32* %ret, align 4
  %cmp54 = icmp ne i32 %call53, 0
  br i1 %cmp54, label %if.then55, label %if.end56

if.then55:                                        ; preds = %do.body52
  br label %cleanup

if.end56:                                         ; preds = %do.body52
  br label %do.end58

do.end58:                                         ; preds = %if.end56
  br label %do.body59

do.body59:                                        ; preds = %do.end58
  %36 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %s.addr, align 8
  %call60 = call i32 @mbedtls_mpi_add_mpi(%struct.mbedtls_mpi* noundef %e, %struct.mbedtls_mpi* noundef %e, %struct.mbedtls_mpi* noundef %36) #4
  store i32 %call60, i32* %ret, align 4
  %cmp61 = icmp ne i32 %call60, 0
  br i1 %cmp61, label %if.then62, label %if.end63

if.then62:                                        ; preds = %do.body59
  br label %cleanup

if.end63:                                         ; preds = %do.body59
  br label %do.end65

do.end65:                                         ; preds = %if.end63
  br label %do.body66

do.body66:                                        ; preds = %do.end65
  %call67 = call i32 @mbedtls_mpi_mul_mpi(%struct.mbedtls_mpi* noundef %e, %struct.mbedtls_mpi* noundef %e, %struct.mbedtls_mpi* noundef %t) #4
  store i32 %call67, i32* %ret, align 4
  %cmp68 = icmp ne i32 %call67, 0
  br i1 %cmp68, label %if.then69, label %if.end70

if.then69:                                        ; preds = %do.body66
  br label %cleanup

if.end70:                                         ; preds = %do.body66
  br label %do.end72

do.end72:                                         ; preds = %if.end70
  br label %do.body73

do.body73:                                        ; preds = %do.end72
  %37 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %pk, align 8
  %38 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %pk, align 8
  %call74 = call i32 @mbedtls_mpi_mul_mpi(%struct.mbedtls_mpi* noundef %37, %struct.mbedtls_mpi* noundef %38, %struct.mbedtls_mpi* noundef %t) #4
  store i32 %call74, i32* %ret, align 4
  %cmp75 = icmp ne i32 %call74, 0
  br i1 %cmp75, label %if.then76, label %if.end77

if.then76:                                        ; preds = %do.body73
  br label %cleanup

if.end77:                                         ; preds = %do.body73
  br label %do.end79

do.end79:                                         ; preds = %if.end77
  br label %do.body80

do.body80:                                        ; preds = %do.end79
  %39 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %pk, align 8
  %40 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %pk, align 8
  %41 = load %struct.mbedtls_ecp_group*, %struct.mbedtls_ecp_group** %grp.addr, align 8
  %N81 = getelementptr inbounds %struct.mbedtls_ecp_group, %struct.mbedtls_ecp_group* %41, i32 0, i32 5
  %call82 = call i32 @mbedtls_mpi_mod_mpi(%struct.mbedtls_mpi* noundef %39, %struct.mbedtls_mpi* noundef %40, %struct.mbedtls_mpi* noundef %N81) #4
  store i32 %call82, i32* %ret, align 4
  %cmp83 = icmp ne i32 %call82, 0
  br i1 %cmp83, label %if.then84, label %if.end85

if.then84:                                        ; preds = %do.body80
  br label %cleanup

if.end85:                                         ; preds = %do.body80
  br label %do.end87

do.end87:                                         ; preds = %if.end85
  br label %do.body88

do.body88:                                        ; preds = %do.end87
  %42 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %s.addr, align 8
  %43 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %pk, align 8
  %44 = load %struct.mbedtls_ecp_group*, %struct.mbedtls_ecp_group** %grp.addr, align 8
  %N89 = getelementptr inbounds %struct.mbedtls_ecp_group, %struct.mbedtls_ecp_group* %44, i32 0, i32 5
  %call90 = call i32 @mbedtls_mpi_inv_mod(%struct.mbedtls_mpi* noundef %42, %struct.mbedtls_mpi* noundef %43, %struct.mbedtls_mpi* noundef %N89) #4
  store i32 %call90, i32* %ret, align 4
  %cmp91 = icmp ne i32 %call90, 0
  br i1 %cmp91, label %if.then92, label %if.end93

if.then92:                                        ; preds = %do.body88
  br label %cleanup

if.end93:                                         ; preds = %do.body88
  br label %do.end95

do.end95:                                         ; preds = %if.end93
  br label %do.body96

do.body96:                                        ; preds = %do.end95
  %45 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %s.addr, align 8
  %46 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %s.addr, align 8
  %call97 = call i32 @mbedtls_mpi_mul_mpi(%struct.mbedtls_mpi* noundef %45, %struct.mbedtls_mpi* noundef %46, %struct.mbedtls_mpi* noundef %e) #4
  store i32 %call97, i32* %ret, align 4
  %cmp98 = icmp ne i32 %call97, 0
  br i1 %cmp98, label %if.then99, label %if.end100

if.then99:                                        ; preds = %do.body96
  br label %cleanup

if.end100:                                        ; preds = %do.body96
  br label %do.end102

do.end102:                                        ; preds = %if.end100
  br label %do.body103

do.body103:                                       ; preds = %do.end102
  %47 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %s.addr, align 8
  %48 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %s.addr, align 8
  %49 = load %struct.mbedtls_ecp_group*, %struct.mbedtls_ecp_group** %grp.addr, align 8
  %N104 = getelementptr inbounds %struct.mbedtls_ecp_group, %struct.mbedtls_ecp_group* %49, i32 0, i32 5
  %call105 = call i32 @mbedtls_mpi_mod_mpi(%struct.mbedtls_mpi* noundef %47, %struct.mbedtls_mpi* noundef %48, %struct.mbedtls_mpi* noundef %N104) #4
  store i32 %call105, i32* %ret, align 4
  %cmp106 = icmp ne i32 %call105, 0
  br i1 %cmp106, label %if.then107, label %if.end108

if.then107:                                       ; preds = %do.body103
  br label %cleanup

if.end108:                                        ; preds = %do.body103
  br label %do.end110

do.end110:                                        ; preds = %if.end108
  br label %do.cond111

do.cond111:                                       ; preds = %do.end110
  %50 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %s.addr, align 8
  %call112 = call i32 @mbedtls_mpi_cmp_int(%struct.mbedtls_mpi* noundef %50, i64 noundef 0) #4
  %cmp113 = icmp eq i32 %call112, 0
  br i1 %cmp113, label %do.body, label %do.end114, !llvm.loop !6

do.end114:                                        ; preds = %do.cond111
  br label %cleanup

cleanup:                                          ; preds = %do.end114, %if.then107, %if.then99, %if.then92, %if.then84, %if.then76, %if.then69, %if.then62, %if.then55, %if.then48, %if.then41, %if.then32, %if.then25, %if.then20, %if.then15, %if.then10
  call void @mbedtls_ecp_point_free(%struct.mbedtls_ecp_point* noundef %R) #4
  call void @mbedtls_mpi_free(%struct.mbedtls_mpi* noundef %k) #4
  call void @mbedtls_mpi_free(%struct.mbedtls_mpi* noundef %e) #4
  call void @mbedtls_mpi_free(%struct.mbedtls_mpi* noundef %t) #4
  %51 = load i8*, i8** %rs_ctx.addr, align 8
  %52 = load i32, i32* %ret, align 4
  store i32 %52, i32* %retval, align 4
  br label %return

return:                                           ; preds = %cleanup, %if.then7, %if.then
  %53 = load i32, i32* %retval, align 4
  ret i32 %53
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_ecdsa_sign_det_ext(%struct.mbedtls_ecp_group* noundef %grp, %struct.mbedtls_mpi* noundef %r, %struct.mbedtls_mpi* noundef %s, %struct.mbedtls_mpi* noundef %d, i8* noundef %buf, i64 noundef %blen, i32 noundef %md_alg, i32 (i8*, i8*, i64)* noundef %f_rng_blind, i8* noundef %p_rng_blind) #0 {
entry:
  %grp.addr = alloca %struct.mbedtls_ecp_group*, align 8
  %r.addr = alloca %struct.mbedtls_mpi*, align 8
  %s.addr = alloca %struct.mbedtls_mpi*, align 8
  %d.addr = alloca %struct.mbedtls_mpi*, align 8
  %buf.addr = alloca i8*, align 8
  %blen.addr = alloca i64, align 8
  %md_alg.addr = alloca i32, align 4
  %f_rng_blind.addr = alloca i32 (i8*, i8*, i64)*, align 8
  %p_rng_blind.addr = alloca i8*, align 8
  store %struct.mbedtls_ecp_group* %grp, %struct.mbedtls_ecp_group** %grp.addr, align 8
  store %struct.mbedtls_mpi* %r, %struct.mbedtls_mpi** %r.addr, align 8
  store %struct.mbedtls_mpi* %s, %struct.mbedtls_mpi** %s.addr, align 8
  store %struct.mbedtls_mpi* %d, %struct.mbedtls_mpi** %d.addr, align 8
  store i8* %buf, i8** %buf.addr, align 8
  store i64 %blen, i64* %blen.addr, align 8
  store i32 %md_alg, i32* %md_alg.addr, align 4
  store i32 (i8*, i8*, i64)* %f_rng_blind, i32 (i8*, i8*, i64)** %f_rng_blind.addr, align 8
  store i8* %p_rng_blind, i8** %p_rng_blind.addr, align 8
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
  br label %do.body7

do.body7:                                         ; preds = %do.end6
  br label %do.end8

do.end8:                                          ; preds = %do.body7
  br label %do.body9

do.body9:                                         ; preds = %do.end8
  br label %do.end10

do.end10:                                         ; preds = %do.body9
  %0 = load %struct.mbedtls_ecp_group*, %struct.mbedtls_ecp_group** %grp.addr, align 8
  %1 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %r.addr, align 8
  %2 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %s.addr, align 8
  %3 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %d.addr, align 8
  %4 = load i8*, i8** %buf.addr, align 8
  %5 = load i64, i64* %blen.addr, align 8
  %6 = load i32, i32* %md_alg.addr, align 4
  %7 = load i32 (i8*, i8*, i64)*, i32 (i8*, i8*, i64)** %f_rng_blind.addr, align 8
  %8 = load i8*, i8** %p_rng_blind.addr, align 8
  %call = call i32 @ecdsa_sign_det_restartable(%struct.mbedtls_ecp_group* noundef %0, %struct.mbedtls_mpi* noundef %1, %struct.mbedtls_mpi* noundef %2, %struct.mbedtls_mpi* noundef %3, i8* noundef %4, i64 noundef %5, i32 noundef %6, i32 (i8*, i8*, i64)* noundef %7, i8* noundef %8, i8* noundef null) #4
  ret i32 %call
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ecdsa_sign_det_restartable(%struct.mbedtls_ecp_group* noundef %grp, %struct.mbedtls_mpi* noundef %r, %struct.mbedtls_mpi* noundef %s, %struct.mbedtls_mpi* noundef %d, i8* noundef %buf, i64 noundef %blen, i32 noundef %md_alg, i32 (i8*, i8*, i64)* noundef %f_rng_blind, i8* noundef %p_rng_blind, i8* noundef %rs_ctx) #0 {
entry:
  %retval = alloca i32, align 4
  %grp.addr = alloca %struct.mbedtls_ecp_group*, align 8
  %r.addr = alloca %struct.mbedtls_mpi*, align 8
  %s.addr = alloca %struct.mbedtls_mpi*, align 8
  %d.addr = alloca %struct.mbedtls_mpi*, align 8
  %buf.addr = alloca i8*, align 8
  %blen.addr = alloca i64, align 8
  %md_alg.addr = alloca i32, align 4
  %f_rng_blind.addr = alloca i32 (i8*, i8*, i64)*, align 8
  %p_rng_blind.addr = alloca i8*, align 8
  %rs_ctx.addr = alloca i8*, align 8
  %ret = alloca i32, align 4
  %rng_ctx = alloca %struct.mbedtls_hmac_drbg_context, align 8
  %p_rng = alloca %struct.mbedtls_hmac_drbg_context*, align 8
  %data = alloca [132 x i8], align 16
  %grp_len = alloca i64, align 8
  %md_info = alloca %struct.mbedtls_md_info_t*, align 8
  %h = alloca %struct.mbedtls_mpi, align 8
  store %struct.mbedtls_ecp_group* %grp, %struct.mbedtls_ecp_group** %grp.addr, align 8
  store %struct.mbedtls_mpi* %r, %struct.mbedtls_mpi** %r.addr, align 8
  store %struct.mbedtls_mpi* %s, %struct.mbedtls_mpi** %s.addr, align 8
  store %struct.mbedtls_mpi* %d, %struct.mbedtls_mpi** %d.addr, align 8
  store i8* %buf, i8** %buf.addr, align 8
  store i64 %blen, i64* %blen.addr, align 8
  store i32 %md_alg, i32* %md_alg.addr, align 4
  store i32 (i8*, i8*, i64)* %f_rng_blind, i32 (i8*, i8*, i64)** %f_rng_blind.addr, align 8
  store i8* %p_rng_blind, i8** %p_rng_blind.addr, align 8
  store i8* %rs_ctx, i8** %rs_ctx.addr, align 8
  store i32 -110, i32* %ret, align 4
  store %struct.mbedtls_hmac_drbg_context* %rng_ctx, %struct.mbedtls_hmac_drbg_context** %p_rng, align 8
  %0 = load %struct.mbedtls_ecp_group*, %struct.mbedtls_ecp_group** %grp.addr, align 8
  %nbits = getelementptr inbounds %struct.mbedtls_ecp_group, %struct.mbedtls_ecp_group* %0, i32 0, i32 7
  %1 = load i64, i64* %nbits, align 8
  %add = add i64 %1, 7
  %div = udiv i64 %add, 8
  store i64 %div, i64* %grp_len, align 8
  %2 = load i32, i32* %md_alg.addr, align 4
  %call = call %struct.mbedtls_md_info_t* @mbedtls_md_info_from_type(i32 noundef %2) #4
  store %struct.mbedtls_md_info_t* %call, %struct.mbedtls_md_info_t** %md_info, align 8
  %cmp = icmp eq %struct.mbedtls_md_info_t* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -20352, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  call void @mbedtls_mpi_init(%struct.mbedtls_mpi* noundef %h) #4
  call void @mbedtls_hmac_drbg_init(%struct.mbedtls_hmac_drbg_context* noundef %rng_ctx) #4
  %3 = load i8*, i8** %rs_ctx.addr, align 8
  br label %do.body

do.body:                                          ; preds = %if.end
  %4 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %d.addr, align 8
  %arraydecay = getelementptr inbounds [132 x i8], [132 x i8]* %data, i64 0, i64 0
  %5 = load i64, i64* %grp_len, align 8
  %call1 = call i32 @mbedtls_mpi_write_binary(%struct.mbedtls_mpi* noundef %4, i8* noundef %arraydecay, i64 noundef %5) #4
  store i32 %call1, i32* %ret, align 4
  %cmp2 = icmp ne i32 %call1, 0
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %do.body
  br label %cleanup

if.end4:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %if.end4
  br label %do.body5

do.body5:                                         ; preds = %do.end
  %6 = load %struct.mbedtls_ecp_group*, %struct.mbedtls_ecp_group** %grp.addr, align 8
  %7 = load i8*, i8** %buf.addr, align 8
  %8 = load i64, i64* %blen.addr, align 8
  %call6 = call i32 @derive_mpi(%struct.mbedtls_ecp_group* noundef %6, %struct.mbedtls_mpi* noundef %h, i8* noundef %7, i64 noundef %8) #4
  store i32 %call6, i32* %ret, align 4
  %cmp7 = icmp ne i32 %call6, 0
  br i1 %cmp7, label %if.then8, label %if.end9

if.then8:                                         ; preds = %do.body5
  br label %cleanup

if.end9:                                          ; preds = %do.body5
  br label %do.end10

do.end10:                                         ; preds = %if.end9
  br label %do.body11

do.body11:                                        ; preds = %do.end10
  %arraydecay12 = getelementptr inbounds [132 x i8], [132 x i8]* %data, i64 0, i64 0
  %9 = load i64, i64* %grp_len, align 8
  %add.ptr = getelementptr inbounds i8, i8* %arraydecay12, i64 %9
  %10 = load i64, i64* %grp_len, align 8
  %call13 = call i32 @mbedtls_mpi_write_binary(%struct.mbedtls_mpi* noundef %h, i8* noundef %add.ptr, i64 noundef %10) #4
  store i32 %call13, i32* %ret, align 4
  %cmp14 = icmp ne i32 %call13, 0
  br i1 %cmp14, label %if.then15, label %if.end16

if.then15:                                        ; preds = %do.body11
  br label %cleanup

if.end16:                                         ; preds = %do.body11
  br label %do.end17

do.end17:                                         ; preds = %if.end16
  %11 = load %struct.mbedtls_hmac_drbg_context*, %struct.mbedtls_hmac_drbg_context** %p_rng, align 8
  %12 = load %struct.mbedtls_md_info_t*, %struct.mbedtls_md_info_t** %md_info, align 8
  %arraydecay18 = getelementptr inbounds [132 x i8], [132 x i8]* %data, i64 0, i64 0
  %13 = load i64, i64* %grp_len, align 8
  %mul = mul i64 2, %13
  %call19 = call i32 @mbedtls_hmac_drbg_seed_buf(%struct.mbedtls_hmac_drbg_context* noundef %11, %struct.mbedtls_md_info_t* noundef %12, i8* noundef %arraydecay18, i64 noundef %mul) #4
  %14 = load %struct.mbedtls_ecp_group*, %struct.mbedtls_ecp_group** %grp.addr, align 8
  %15 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %r.addr, align 8
  %16 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %s.addr, align 8
  %17 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %d.addr, align 8
  %18 = load i8*, i8** %buf.addr, align 8
  %19 = load i64, i64* %blen.addr, align 8
  %20 = load %struct.mbedtls_hmac_drbg_context*, %struct.mbedtls_hmac_drbg_context** %p_rng, align 8
  %21 = bitcast %struct.mbedtls_hmac_drbg_context* %20 to i8*
  %22 = load i32 (i8*, i8*, i64)*, i32 (i8*, i8*, i64)** %f_rng_blind.addr, align 8
  %23 = load i8*, i8** %p_rng_blind.addr, align 8
  %24 = load i8*, i8** %rs_ctx.addr, align 8
  %call20 = call i32 @ecdsa_sign_restartable(%struct.mbedtls_ecp_group* noundef %14, %struct.mbedtls_mpi* noundef %15, %struct.mbedtls_mpi* noundef %16, %struct.mbedtls_mpi* noundef %17, i8* noundef %18, i64 noundef %19, i32 (i8*, i8*, i64)* noundef @mbedtls_hmac_drbg_random, i8* noundef %21, i32 (i8*, i8*, i64)* noundef %22, i8* noundef %23, i8* noundef %24) #4
  store i32 %call20, i32* %ret, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end17, %if.then15, %if.then8, %if.then3
  call void @mbedtls_hmac_drbg_free(%struct.mbedtls_hmac_drbg_context* noundef %rng_ctx) #4
  call void @mbedtls_mpi_free(%struct.mbedtls_mpi* noundef %h) #4
  %25 = load i8*, i8** %rs_ctx.addr, align 8
  %26 = load i32, i32* %ret, align 4
  store i32 %26, i32* %retval, align 4
  br label %return

return:                                           ; preds = %cleanup, %if.then
  %27 = load i32, i32* %retval, align 4
  ret i32 %27
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_ecdsa_verify(%struct.mbedtls_ecp_group* noundef %grp, i8* noundef %buf, i64 noundef %blen, %struct.mbedtls_ecp_point* noundef %Q, %struct.mbedtls_mpi* noundef %r, %struct.mbedtls_mpi* noundef %s) #0 {
entry:
  %grp.addr = alloca %struct.mbedtls_ecp_group*, align 8
  %buf.addr = alloca i8*, align 8
  %blen.addr = alloca i64, align 8
  %Q.addr = alloca %struct.mbedtls_ecp_point*, align 8
  %r.addr = alloca %struct.mbedtls_mpi*, align 8
  %s.addr = alloca %struct.mbedtls_mpi*, align 8
  store %struct.mbedtls_ecp_group* %grp, %struct.mbedtls_ecp_group** %grp.addr, align 8
  store i8* %buf, i8** %buf.addr, align 8
  store i64 %blen, i64* %blen.addr, align 8
  store %struct.mbedtls_ecp_point* %Q, %struct.mbedtls_ecp_point** %Q.addr, align 8
  store %struct.mbedtls_mpi* %r, %struct.mbedtls_mpi** %r.addr, align 8
  store %struct.mbedtls_mpi* %s, %struct.mbedtls_mpi** %s.addr, align 8
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
  br label %do.body7

do.body7:                                         ; preds = %do.end6
  br label %do.end8

do.end8:                                          ; preds = %do.body7
  %0 = load %struct.mbedtls_ecp_group*, %struct.mbedtls_ecp_group** %grp.addr, align 8
  %1 = load i8*, i8** %buf.addr, align 8
  %2 = load i64, i64* %blen.addr, align 8
  %3 = load %struct.mbedtls_ecp_point*, %struct.mbedtls_ecp_point** %Q.addr, align 8
  %4 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %r.addr, align 8
  %5 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %s.addr, align 8
  %call = call i32 @ecdsa_verify_restartable(%struct.mbedtls_ecp_group* noundef %0, i8* noundef %1, i64 noundef %2, %struct.mbedtls_ecp_point* noundef %3, %struct.mbedtls_mpi* noundef %4, %struct.mbedtls_mpi* noundef %5, i8* noundef null) #4
  ret i32 %call
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ecdsa_verify_restartable(%struct.mbedtls_ecp_group* noundef %grp, i8* noundef %buf, i64 noundef %blen, %struct.mbedtls_ecp_point* noundef %Q, %struct.mbedtls_mpi* noundef %r, %struct.mbedtls_mpi* noundef %s, i8* noundef %rs_ctx) #0 {
entry:
  %retval = alloca i32, align 4
  %grp.addr = alloca %struct.mbedtls_ecp_group*, align 8
  %buf.addr = alloca i8*, align 8
  %blen.addr = alloca i64, align 8
  %Q.addr = alloca %struct.mbedtls_ecp_point*, align 8
  %r.addr = alloca %struct.mbedtls_mpi*, align 8
  %s.addr = alloca %struct.mbedtls_mpi*, align 8
  %rs_ctx.addr = alloca i8*, align 8
  %ret = alloca i32, align 4
  %e = alloca %struct.mbedtls_mpi, align 8
  %s_inv = alloca %struct.mbedtls_mpi, align 8
  %u1 = alloca %struct.mbedtls_mpi, align 8
  %u2 = alloca %struct.mbedtls_mpi, align 8
  %R = alloca %struct.mbedtls_ecp_point, align 8
  %pu1 = alloca %struct.mbedtls_mpi*, align 8
  %pu2 = alloca %struct.mbedtls_mpi*, align 8
  store %struct.mbedtls_ecp_group* %grp, %struct.mbedtls_ecp_group** %grp.addr, align 8
  store i8* %buf, i8** %buf.addr, align 8
  store i64 %blen, i64* %blen.addr, align 8
  store %struct.mbedtls_ecp_point* %Q, %struct.mbedtls_ecp_point** %Q.addr, align 8
  store %struct.mbedtls_mpi* %r, %struct.mbedtls_mpi** %r.addr, align 8
  store %struct.mbedtls_mpi* %s, %struct.mbedtls_mpi** %s.addr, align 8
  store i8* %rs_ctx, i8** %rs_ctx.addr, align 8
  store i32 -110, i32* %ret, align 4
  store %struct.mbedtls_mpi* %u1, %struct.mbedtls_mpi** %pu1, align 8
  store %struct.mbedtls_mpi* %u2, %struct.mbedtls_mpi** %pu2, align 8
  call void @mbedtls_ecp_point_init(%struct.mbedtls_ecp_point* noundef %R) #4
  call void @mbedtls_mpi_init(%struct.mbedtls_mpi* noundef %e) #4
  call void @mbedtls_mpi_init(%struct.mbedtls_mpi* noundef %s_inv) #4
  call void @mbedtls_mpi_init(%struct.mbedtls_mpi* noundef %u1) #4
  call void @mbedtls_mpi_init(%struct.mbedtls_mpi* noundef %u2) #4
  %0 = load %struct.mbedtls_ecp_group*, %struct.mbedtls_ecp_group** %grp.addr, align 8
  %id = getelementptr inbounds %struct.mbedtls_ecp_group, %struct.mbedtls_ecp_group* %0, i32 0, i32 0
  %1 = load i32, i32* %id, align 8
  %call = call i32 @mbedtls_ecdsa_can_do(i32 noundef %1) #4
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %2 = load %struct.mbedtls_ecp_group*, %struct.mbedtls_ecp_group** %grp.addr, align 8
  %N = getelementptr inbounds %struct.mbedtls_ecp_group, %struct.mbedtls_ecp_group* %2, i32 0, i32 5
  %p = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %N, i32 0, i32 2
  %3 = load i64*, i64** %p, align 8
  %cmp = icmp eq i64* %3, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 -20352, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %4 = load i8*, i8** %rs_ctx.addr, align 8
  %5 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %r.addr, align 8
  %call1 = call i32 @mbedtls_mpi_cmp_int(%struct.mbedtls_mpi* noundef %5, i64 noundef 1) #4
  %cmp2 = icmp slt i32 %call1, 0
  br i1 %cmp2, label %if.then14, label %lor.lhs.false3

lor.lhs.false3:                                   ; preds = %if.end
  %6 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %r.addr, align 8
  %7 = load %struct.mbedtls_ecp_group*, %struct.mbedtls_ecp_group** %grp.addr, align 8
  %N4 = getelementptr inbounds %struct.mbedtls_ecp_group, %struct.mbedtls_ecp_group* %7, i32 0, i32 5
  %call5 = call i32 @mbedtls_mpi_cmp_mpi(%struct.mbedtls_mpi* noundef %6, %struct.mbedtls_mpi* noundef %N4) #4
  %cmp6 = icmp sge i32 %call5, 0
  br i1 %cmp6, label %if.then14, label %lor.lhs.false7

lor.lhs.false7:                                   ; preds = %lor.lhs.false3
  %8 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %s.addr, align 8
  %call8 = call i32 @mbedtls_mpi_cmp_int(%struct.mbedtls_mpi* noundef %8, i64 noundef 1) #4
  %cmp9 = icmp slt i32 %call8, 0
  br i1 %cmp9, label %if.then14, label %lor.lhs.false10

lor.lhs.false10:                                  ; preds = %lor.lhs.false7
  %9 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %s.addr, align 8
  %10 = load %struct.mbedtls_ecp_group*, %struct.mbedtls_ecp_group** %grp.addr, align 8
  %N11 = getelementptr inbounds %struct.mbedtls_ecp_group, %struct.mbedtls_ecp_group* %10, i32 0, i32 5
  %call12 = call i32 @mbedtls_mpi_cmp_mpi(%struct.mbedtls_mpi* noundef %9, %struct.mbedtls_mpi* noundef %N11) #4
  %cmp13 = icmp sge i32 %call12, 0
  br i1 %cmp13, label %if.then14, label %if.end15

if.then14:                                        ; preds = %lor.lhs.false10, %lor.lhs.false7, %lor.lhs.false3, %if.end
  store i32 -19968, i32* %ret, align 4
  br label %cleanup

if.end15:                                         ; preds = %lor.lhs.false10
  br label %do.body

do.body:                                          ; preds = %if.end15
  %11 = load %struct.mbedtls_ecp_group*, %struct.mbedtls_ecp_group** %grp.addr, align 8
  %12 = load i8*, i8** %buf.addr, align 8
  %13 = load i64, i64* %blen.addr, align 8
  %call16 = call i32 @derive_mpi(%struct.mbedtls_ecp_group* noundef %11, %struct.mbedtls_mpi* noundef %e, i8* noundef %12, i64 noundef %13) #4
  store i32 %call16, i32* %ret, align 4
  %cmp17 = icmp ne i32 %call16, 0
  br i1 %cmp17, label %if.then18, label %if.end19

if.then18:                                        ; preds = %do.body
  br label %cleanup

if.end19:                                         ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %if.end19
  br label %do.body20

do.body20:                                        ; preds = %do.end
  %14 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %s.addr, align 8
  %15 = load %struct.mbedtls_ecp_group*, %struct.mbedtls_ecp_group** %grp.addr, align 8
  %N21 = getelementptr inbounds %struct.mbedtls_ecp_group, %struct.mbedtls_ecp_group* %15, i32 0, i32 5
  %call22 = call i32 @mbedtls_mpi_inv_mod(%struct.mbedtls_mpi* noundef %s_inv, %struct.mbedtls_mpi* noundef %14, %struct.mbedtls_mpi* noundef %N21) #4
  store i32 %call22, i32* %ret, align 4
  %cmp23 = icmp ne i32 %call22, 0
  br i1 %cmp23, label %if.then24, label %if.end25

if.then24:                                        ; preds = %do.body20
  br label %cleanup

if.end25:                                         ; preds = %do.body20
  br label %do.end26

do.end26:                                         ; preds = %if.end25
  br label %do.body27

do.body27:                                        ; preds = %do.end26
  %16 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %pu1, align 8
  %call28 = call i32 @mbedtls_mpi_mul_mpi(%struct.mbedtls_mpi* noundef %16, %struct.mbedtls_mpi* noundef %e, %struct.mbedtls_mpi* noundef %s_inv) #4
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
  %17 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %pu1, align 8
  %18 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %pu1, align 8
  %19 = load %struct.mbedtls_ecp_group*, %struct.mbedtls_ecp_group** %grp.addr, align 8
  %N34 = getelementptr inbounds %struct.mbedtls_ecp_group, %struct.mbedtls_ecp_group* %19, i32 0, i32 5
  %call35 = call i32 @mbedtls_mpi_mod_mpi(%struct.mbedtls_mpi* noundef %17, %struct.mbedtls_mpi* noundef %18, %struct.mbedtls_mpi* noundef %N34) #4
  store i32 %call35, i32* %ret, align 4
  %cmp36 = icmp ne i32 %call35, 0
  br i1 %cmp36, label %if.then37, label %if.end38

if.then37:                                        ; preds = %do.body33
  br label %cleanup

if.end38:                                         ; preds = %do.body33
  br label %do.end39

do.end39:                                         ; preds = %if.end38
  br label %do.body40

do.body40:                                        ; preds = %do.end39
  %20 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %pu2, align 8
  %21 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %r.addr, align 8
  %call41 = call i32 @mbedtls_mpi_mul_mpi(%struct.mbedtls_mpi* noundef %20, %struct.mbedtls_mpi* noundef %21, %struct.mbedtls_mpi* noundef %s_inv) #4
  store i32 %call41, i32* %ret, align 4
  %cmp42 = icmp ne i32 %call41, 0
  br i1 %cmp42, label %if.then43, label %if.end44

if.then43:                                        ; preds = %do.body40
  br label %cleanup

if.end44:                                         ; preds = %do.body40
  br label %do.end45

do.end45:                                         ; preds = %if.end44
  br label %do.body46

do.body46:                                        ; preds = %do.end45
  %22 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %pu2, align 8
  %23 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %pu2, align 8
  %24 = load %struct.mbedtls_ecp_group*, %struct.mbedtls_ecp_group** %grp.addr, align 8
  %N47 = getelementptr inbounds %struct.mbedtls_ecp_group, %struct.mbedtls_ecp_group* %24, i32 0, i32 5
  %call48 = call i32 @mbedtls_mpi_mod_mpi(%struct.mbedtls_mpi* noundef %22, %struct.mbedtls_mpi* noundef %23, %struct.mbedtls_mpi* noundef %N47) #4
  store i32 %call48, i32* %ret, align 4
  %cmp49 = icmp ne i32 %call48, 0
  br i1 %cmp49, label %if.then50, label %if.end51

if.then50:                                        ; preds = %do.body46
  br label %cleanup

if.end51:                                         ; preds = %do.body46
  br label %do.end52

do.end52:                                         ; preds = %if.end51
  br label %do.body53

do.body53:                                        ; preds = %do.end52
  %25 = load %struct.mbedtls_ecp_group*, %struct.mbedtls_ecp_group** %grp.addr, align 8
  %26 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %pu1, align 8
  %27 = load %struct.mbedtls_ecp_group*, %struct.mbedtls_ecp_group** %grp.addr, align 8
  %G = getelementptr inbounds %struct.mbedtls_ecp_group, %struct.mbedtls_ecp_group* %27, i32 0, i32 4
  %28 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %pu2, align 8
  %29 = load %struct.mbedtls_ecp_point*, %struct.mbedtls_ecp_point** %Q.addr, align 8
  %call54 = call i32 @mbedtls_ecp_muladd_restartable(%struct.mbedtls_ecp_group* noundef %25, %struct.mbedtls_ecp_point* noundef %R, %struct.mbedtls_mpi* noundef %26, %struct.mbedtls_ecp_point* noundef %G, %struct.mbedtls_mpi* noundef %28, %struct.mbedtls_ecp_point* noundef %29, i8* noundef null) #4
  store i32 %call54, i32* %ret, align 4
  %cmp55 = icmp ne i32 %call54, 0
  br i1 %cmp55, label %if.then56, label %if.end57

if.then56:                                        ; preds = %do.body53
  br label %cleanup

if.end57:                                         ; preds = %do.body53
  br label %do.end58

do.end58:                                         ; preds = %if.end57
  %call59 = call i32 @mbedtls_ecp_is_zero(%struct.mbedtls_ecp_point* noundef %R) #4
  %tobool60 = icmp ne i32 %call59, 0
  br i1 %tobool60, label %if.then61, label %if.end62

if.then61:                                        ; preds = %do.end58
  store i32 -19968, i32* %ret, align 4
  br label %cleanup

if.end62:                                         ; preds = %do.end58
  br label %do.body63

do.body63:                                        ; preds = %if.end62
  %X = getelementptr inbounds %struct.mbedtls_ecp_point, %struct.mbedtls_ecp_point* %R, i32 0, i32 0
  %X64 = getelementptr inbounds %struct.mbedtls_ecp_point, %struct.mbedtls_ecp_point* %R, i32 0, i32 0
  %30 = load %struct.mbedtls_ecp_group*, %struct.mbedtls_ecp_group** %grp.addr, align 8
  %N65 = getelementptr inbounds %struct.mbedtls_ecp_group, %struct.mbedtls_ecp_group* %30, i32 0, i32 5
  %call66 = call i32 @mbedtls_mpi_mod_mpi(%struct.mbedtls_mpi* noundef %X, %struct.mbedtls_mpi* noundef %X64, %struct.mbedtls_mpi* noundef %N65) #4
  store i32 %call66, i32* %ret, align 4
  %cmp67 = icmp ne i32 %call66, 0
  br i1 %cmp67, label %if.then68, label %if.end69

if.then68:                                        ; preds = %do.body63
  br label %cleanup

if.end69:                                         ; preds = %do.body63
  br label %do.end70

do.end70:                                         ; preds = %if.end69
  %X71 = getelementptr inbounds %struct.mbedtls_ecp_point, %struct.mbedtls_ecp_point* %R, i32 0, i32 0
  %31 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %r.addr, align 8
  %call72 = call i32 @mbedtls_mpi_cmp_mpi(%struct.mbedtls_mpi* noundef %X71, %struct.mbedtls_mpi* noundef %31) #4
  %cmp73 = icmp ne i32 %call72, 0
  br i1 %cmp73, label %if.then74, label %if.end75

if.then74:                                        ; preds = %do.end70
  store i32 -19968, i32* %ret, align 4
  br label %cleanup

if.end75:                                         ; preds = %do.end70
  br label %cleanup

cleanup:                                          ; preds = %if.end75, %if.then74, %if.then68, %if.then61, %if.then56, %if.then50, %if.then43, %if.then37, %if.then30, %if.then24, %if.then18, %if.then14
  call void @mbedtls_ecp_point_free(%struct.mbedtls_ecp_point* noundef %R) #4
  call void @mbedtls_mpi_free(%struct.mbedtls_mpi* noundef %e) #4
  call void @mbedtls_mpi_free(%struct.mbedtls_mpi* noundef %s_inv) #4
  call void @mbedtls_mpi_free(%struct.mbedtls_mpi* noundef %u1) #4
  call void @mbedtls_mpi_free(%struct.mbedtls_mpi* noundef %u2) #4
  %32 = load i8*, i8** %rs_ctx.addr, align 8
  %33 = load i32, i32* %ret, align 4
  store i32 %33, i32* %retval, align 4
  br label %return

return:                                           ; preds = %cleanup, %if.then
  %34 = load i32, i32* %retval, align 4
  ret i32 %34
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_ecdsa_write_signature_restartable(%struct.mbedtls_ecp_keypair* noundef %ctx, i32 noundef %md_alg, i8* noundef %hash, i64 noundef %hlen, i8* noundef %sig, i64 noundef %sig_size, i64* noundef %slen, i32 (i8*, i8*, i64)* noundef %f_rng, i8* noundef %p_rng, i8* noundef %rs_ctx) #0 {
entry:
  %retval = alloca i32, align 4
  %ctx.addr = alloca %struct.mbedtls_ecp_keypair*, align 8
  %md_alg.addr = alloca i32, align 4
  %hash.addr = alloca i8*, align 8
  %hlen.addr = alloca i64, align 8
  %sig.addr = alloca i8*, align 8
  %sig_size.addr = alloca i64, align 8
  %slen.addr = alloca i64*, align 8
  %f_rng.addr = alloca i32 (i8*, i8*, i64)*, align 8
  %p_rng.addr = alloca i8*, align 8
  %rs_ctx.addr = alloca i8*, align 8
  %ret = alloca i32, align 4
  %r = alloca %struct.mbedtls_mpi, align 8
  %s = alloca %struct.mbedtls_mpi, align 8
  store %struct.mbedtls_ecp_keypair* %ctx, %struct.mbedtls_ecp_keypair** %ctx.addr, align 8
  store i32 %md_alg, i32* %md_alg.addr, align 4
  store i8* %hash, i8** %hash.addr, align 8
  store i64 %hlen, i64* %hlen.addr, align 8
  store i8* %sig, i8** %sig.addr, align 8
  store i64 %sig_size, i64* %sig_size.addr, align 8
  store i64* %slen, i64** %slen.addr, align 8
  store i32 (i8*, i8*, i64)* %f_rng, i32 (i8*, i8*, i64)** %f_rng.addr, align 8
  store i8* %p_rng, i8** %p_rng.addr, align 8
  store i8* %rs_ctx, i8** %rs_ctx.addr, align 8
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
  br label %do.body5

do.body5:                                         ; preds = %do.end4
  br label %do.end6

do.end6:                                          ; preds = %do.body5
  %0 = load i32 (i8*, i8*, i64)*, i32 (i8*, i8*, i64)** %f_rng.addr, align 8
  %cmp = icmp eq i32 (i8*, i8*, i64)* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.end6
  store i32 -20352, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %do.end6
  call void @mbedtls_mpi_init(%struct.mbedtls_mpi* noundef %r) #4
  call void @mbedtls_mpi_init(%struct.mbedtls_mpi* noundef %s) #4
  br label %do.body7

do.body7:                                         ; preds = %if.end
  %1 = load %struct.mbedtls_ecp_keypair*, %struct.mbedtls_ecp_keypair** %ctx.addr, align 8
  %grp = getelementptr inbounds %struct.mbedtls_ecp_keypair, %struct.mbedtls_ecp_keypair* %1, i32 0, i32 0
  %2 = load %struct.mbedtls_ecp_keypair*, %struct.mbedtls_ecp_keypair** %ctx.addr, align 8
  %d = getelementptr inbounds %struct.mbedtls_ecp_keypair, %struct.mbedtls_ecp_keypair* %2, i32 0, i32 1
  %3 = load i8*, i8** %hash.addr, align 8
  %4 = load i64, i64* %hlen.addr, align 8
  %5 = load i32, i32* %md_alg.addr, align 4
  %6 = load i32 (i8*, i8*, i64)*, i32 (i8*, i8*, i64)** %f_rng.addr, align 8
  %7 = load i8*, i8** %p_rng.addr, align 8
  %8 = load i8*, i8** %rs_ctx.addr, align 8
  %call = call i32 @ecdsa_sign_det_restartable(%struct.mbedtls_ecp_group* noundef %grp, %struct.mbedtls_mpi* noundef %r, %struct.mbedtls_mpi* noundef %s, %struct.mbedtls_mpi* noundef %d, i8* noundef %3, i64 noundef %4, i32 noundef %5, i32 (i8*, i8*, i64)* noundef %6, i8* noundef %7, i8* noundef %8) #4
  store i32 %call, i32* %ret, align 4
  %cmp8 = icmp ne i32 %call, 0
  br i1 %cmp8, label %if.then9, label %if.end10

if.then9:                                         ; preds = %do.body7
  br label %cleanup

if.end10:                                         ; preds = %do.body7
  br label %do.end11

do.end11:                                         ; preds = %if.end10
  br label %do.body12

do.body12:                                        ; preds = %do.end11
  %9 = load i8*, i8** %sig.addr, align 8
  %10 = load i64, i64* %sig_size.addr, align 8
  %11 = load i64*, i64** %slen.addr, align 8
  %call13 = call i32 @ecdsa_signature_to_asn1(%struct.mbedtls_mpi* noundef %r, %struct.mbedtls_mpi* noundef %s, i8* noundef %9, i64 noundef %10, i64* noundef %11) #4
  store i32 %call13, i32* %ret, align 4
  %cmp14 = icmp ne i32 %call13, 0
  br i1 %cmp14, label %if.then15, label %if.end16

if.then15:                                        ; preds = %do.body12
  br label %cleanup

if.end16:                                         ; preds = %do.body12
  br label %do.end17

do.end17:                                         ; preds = %if.end16
  br label %cleanup

cleanup:                                          ; preds = %do.end17, %if.then15, %if.then9
  call void @mbedtls_mpi_free(%struct.mbedtls_mpi* noundef %r) #4
  call void @mbedtls_mpi_free(%struct.mbedtls_mpi* noundef %s) #4
  %12 = load i32, i32* %ret, align 4
  store i32 %12, i32* %retval, align 4
  br label %return

return:                                           ; preds = %cleanup, %if.then
  %13 = load i32, i32* %retval, align 4
  ret i32 %13
}

declare dso_local void @mbedtls_mpi_init(%struct.mbedtls_mpi* noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ecdsa_signature_to_asn1(%struct.mbedtls_mpi* noundef %r, %struct.mbedtls_mpi* noundef %s, i8* noundef %sig, i64 noundef %sig_size, i64* noundef %slen) #0 {
entry:
  %retval = alloca i32, align 4
  %r.addr = alloca %struct.mbedtls_mpi*, align 8
  %s.addr = alloca %struct.mbedtls_mpi*, align 8
  %sig.addr = alloca i8*, align 8
  %sig_size.addr = alloca i64, align 8
  %slen.addr = alloca i64*, align 8
  %ret = alloca i32, align 4
  %buf = alloca [139 x i8], align 16
  %p = alloca i8*, align 8
  %len = alloca i64, align 8
  store %struct.mbedtls_mpi* %r, %struct.mbedtls_mpi** %r.addr, align 8
  store %struct.mbedtls_mpi* %s, %struct.mbedtls_mpi** %s.addr, align 8
  store i8* %sig, i8** %sig.addr, align 8
  store i64 %sig_size, i64* %sig_size.addr, align 8
  store i64* %slen, i64** %slen.addr, align 8
  store i32 -110, i32* %ret, align 4
  %0 = bitcast [139 x i8]* %buf to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 139, i1 false)
  %arraydecay = getelementptr inbounds [139 x i8], [139 x i8]* %buf, i64 0, i64 0
  %add.ptr = getelementptr inbounds i8, i8* %arraydecay, i64 139
  store i8* %add.ptr, i8** %p, align 8
  store i64 0, i64* %len, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %arraydecay1 = getelementptr inbounds [139 x i8], [139 x i8]* %buf, i64 0, i64 0
  %1 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %s.addr, align 8
  %call = call i32 @mbedtls_asn1_write_mpi(i8** noundef %p, i8* noundef %arraydecay1, %struct.mbedtls_mpi* noundef %1) #4
  store i32 %call, i32* %ret, align 4
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  %2 = load i32, i32* %ret, align 4
  store i32 %2, i32* %retval, align 4
  br label %return

if.else:                                          ; preds = %do.body
  %3 = load i32, i32* %ret, align 4
  %conv = sext i32 %3 to i64
  %4 = load i64, i64* %len, align 8
  %add = add i64 %4, %conv
  store i64 %add, i64* %len, align 8
  br label %if.end

if.end:                                           ; preds = %if.else
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %do.body2

do.body2:                                         ; preds = %do.end
  %arraydecay3 = getelementptr inbounds [139 x i8], [139 x i8]* %buf, i64 0, i64 0
  %5 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %r.addr, align 8
  %call4 = call i32 @mbedtls_asn1_write_mpi(i8** noundef %p, i8* noundef %arraydecay3, %struct.mbedtls_mpi* noundef %5) #4
  store i32 %call4, i32* %ret, align 4
  %cmp5 = icmp slt i32 %call4, 0
  br i1 %cmp5, label %if.then7, label %if.else8

if.then7:                                         ; preds = %do.body2
  %6 = load i32, i32* %ret, align 4
  store i32 %6, i32* %retval, align 4
  br label %return

if.else8:                                         ; preds = %do.body2
  %7 = load i32, i32* %ret, align 4
  %conv9 = sext i32 %7 to i64
  %8 = load i64, i64* %len, align 8
  %add10 = add i64 %8, %conv9
  store i64 %add10, i64* %len, align 8
  br label %if.end11

if.end11:                                         ; preds = %if.else8
  br label %do.end12

do.end12:                                         ; preds = %if.end11
  br label %do.body13

do.body13:                                        ; preds = %do.end12
  %arraydecay14 = getelementptr inbounds [139 x i8], [139 x i8]* %buf, i64 0, i64 0
  %9 = load i64, i64* %len, align 8
  %call15 = call i32 @mbedtls_asn1_write_len(i8** noundef %p, i8* noundef %arraydecay14, i64 noundef %9) #4
  store i32 %call15, i32* %ret, align 4
  %cmp16 = icmp slt i32 %call15, 0
  br i1 %cmp16, label %if.then18, label %if.else19

if.then18:                                        ; preds = %do.body13
  %10 = load i32, i32* %ret, align 4
  store i32 %10, i32* %retval, align 4
  br label %return

if.else19:                                        ; preds = %do.body13
  %11 = load i32, i32* %ret, align 4
  %conv20 = sext i32 %11 to i64
  %12 = load i64, i64* %len, align 8
  %add21 = add i64 %12, %conv20
  store i64 %add21, i64* %len, align 8
  br label %if.end22

if.end22:                                         ; preds = %if.else19
  br label %do.end23

do.end23:                                         ; preds = %if.end22
  br label %do.body24

do.body24:                                        ; preds = %do.end23
  %arraydecay25 = getelementptr inbounds [139 x i8], [139 x i8]* %buf, i64 0, i64 0
  %call26 = call i32 @mbedtls_asn1_write_tag(i8** noundef %p, i8* noundef %arraydecay25, i8 noundef zeroext 48) #4
  store i32 %call26, i32* %ret, align 4
  %cmp27 = icmp slt i32 %call26, 0
  br i1 %cmp27, label %if.then29, label %if.else30

if.then29:                                        ; preds = %do.body24
  %13 = load i32, i32* %ret, align 4
  store i32 %13, i32* %retval, align 4
  br label %return

if.else30:                                        ; preds = %do.body24
  %14 = load i32, i32* %ret, align 4
  %conv31 = sext i32 %14 to i64
  %15 = load i64, i64* %len, align 8
  %add32 = add i64 %15, %conv31
  store i64 %add32, i64* %len, align 8
  br label %if.end33

if.end33:                                         ; preds = %if.else30
  br label %do.end34

do.end34:                                         ; preds = %if.end33
  %16 = load i64, i64* %len, align 8
  %17 = load i64, i64* %sig_size.addr, align 8
  %cmp35 = icmp ugt i64 %16, %17
  br i1 %cmp35, label %if.then37, label %if.end38

if.then37:                                        ; preds = %do.end34
  store i32 -20224, i32* %retval, align 4
  br label %return

if.end38:                                         ; preds = %do.end34
  %18 = load i8*, i8** %sig.addr, align 8
  %19 = load i8*, i8** %p, align 8
  %20 = load i64, i64* %len, align 8
  %call39 = call i8* @memcpy(i8* noundef %18, i8* noundef %19, i64 noundef %20) #5
  %21 = load i64, i64* %len, align 8
  %22 = load i64*, i64** %slen.addr, align 8
  store i64 %21, i64* %22, align 8
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end38, %if.then37, %if.then29, %if.then18, %if.then7, %if.then
  %23 = load i32, i32* %retval, align 4
  ret i32 %23
}

declare dso_local void @mbedtls_mpi_free(%struct.mbedtls_mpi* noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_ecdsa_write_signature(%struct.mbedtls_ecp_keypair* noundef %ctx, i32 noundef %md_alg, i8* noundef %hash, i64 noundef %hlen, i8* noundef %sig, i64 noundef %sig_size, i64* noundef %slen, i32 (i8*, i8*, i64)* noundef %f_rng, i8* noundef %p_rng) #0 {
entry:
  %ctx.addr = alloca %struct.mbedtls_ecp_keypair*, align 8
  %md_alg.addr = alloca i32, align 4
  %hash.addr = alloca i8*, align 8
  %hlen.addr = alloca i64, align 8
  %sig.addr = alloca i8*, align 8
  %sig_size.addr = alloca i64, align 8
  %slen.addr = alloca i64*, align 8
  %f_rng.addr = alloca i32 (i8*, i8*, i64)*, align 8
  %p_rng.addr = alloca i8*, align 8
  store %struct.mbedtls_ecp_keypair* %ctx, %struct.mbedtls_ecp_keypair** %ctx.addr, align 8
  store i32 %md_alg, i32* %md_alg.addr, align 4
  store i8* %hash, i8** %hash.addr, align 8
  store i64 %hlen, i64* %hlen.addr, align 8
  store i8* %sig, i8** %sig.addr, align 8
  store i64 %sig_size, i64* %sig_size.addr, align 8
  store i64* %slen, i64** %slen.addr, align 8
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
  br label %do.body3

do.body3:                                         ; preds = %do.end2
  br label %do.end4

do.end4:                                          ; preds = %do.body3
  br label %do.body5

do.body5:                                         ; preds = %do.end4
  br label %do.end6

do.end6:                                          ; preds = %do.body5
  %0 = load %struct.mbedtls_ecp_keypair*, %struct.mbedtls_ecp_keypair** %ctx.addr, align 8
  %1 = load i32, i32* %md_alg.addr, align 4
  %2 = load i8*, i8** %hash.addr, align 8
  %3 = load i64, i64* %hlen.addr, align 8
  %4 = load i8*, i8** %sig.addr, align 8
  %5 = load i64, i64* %sig_size.addr, align 8
  %6 = load i64*, i64** %slen.addr, align 8
  %7 = load i32 (i8*, i8*, i64)*, i32 (i8*, i8*, i64)** %f_rng.addr, align 8
  %8 = load i8*, i8** %p_rng.addr, align 8
  %call = call i32 @mbedtls_ecdsa_write_signature_restartable(%struct.mbedtls_ecp_keypair* noundef %0, i32 noundef %1, i8* noundef %2, i64 noundef %3, i8* noundef %4, i64 noundef %5, i64* noundef %6, i32 (i8*, i8*, i64)* noundef %7, i8* noundef %8, i8* noundef null) #4
  ret i32 %call
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_ecdsa_read_signature(%struct.mbedtls_ecp_keypair* noundef %ctx, i8* noundef %hash, i64 noundef %hlen, i8* noundef %sig, i64 noundef %slen) #0 {
entry:
  %ctx.addr = alloca %struct.mbedtls_ecp_keypair*, align 8
  %hash.addr = alloca i8*, align 8
  %hlen.addr = alloca i64, align 8
  %sig.addr = alloca i8*, align 8
  %slen.addr = alloca i64, align 8
  store %struct.mbedtls_ecp_keypair* %ctx, %struct.mbedtls_ecp_keypair** %ctx.addr, align 8
  store i8* %hash, i8** %hash.addr, align 8
  store i64 %hlen, i64* %hlen.addr, align 8
  store i8* %sig, i8** %sig.addr, align 8
  store i64 %slen, i64* %slen.addr, align 8
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
  %0 = load %struct.mbedtls_ecp_keypair*, %struct.mbedtls_ecp_keypair** %ctx.addr, align 8
  %1 = load i8*, i8** %hash.addr, align 8
  %2 = load i64, i64* %hlen.addr, align 8
  %3 = load i8*, i8** %sig.addr, align 8
  %4 = load i64, i64* %slen.addr, align 8
  %call = call i32 @mbedtls_ecdsa_read_signature_restartable(%struct.mbedtls_ecp_keypair* noundef %0, i8* noundef %1, i64 noundef %2, i8* noundef %3, i64 noundef %4, i8* noundef null) #4
  ret i32 %call
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_ecdsa_read_signature_restartable(%struct.mbedtls_ecp_keypair* noundef %ctx, i8* noundef %hash, i64 noundef %hlen, i8* noundef %sig, i64 noundef %slen, i8* noundef %rs_ctx) #0 {
entry:
  %ctx.addr = alloca %struct.mbedtls_ecp_keypair*, align 8
  %hash.addr = alloca i8*, align 8
  %hlen.addr = alloca i64, align 8
  %sig.addr = alloca i8*, align 8
  %slen.addr = alloca i64, align 8
  %rs_ctx.addr = alloca i8*, align 8
  %ret = alloca i32, align 4
  %p = alloca i8*, align 8
  %end = alloca i8*, align 8
  %len = alloca i64, align 8
  %r = alloca %struct.mbedtls_mpi, align 8
  %s = alloca %struct.mbedtls_mpi, align 8
  store %struct.mbedtls_ecp_keypair* %ctx, %struct.mbedtls_ecp_keypair** %ctx.addr, align 8
  store i8* %hash, i8** %hash.addr, align 8
  store i64 %hlen, i64* %hlen.addr, align 8
  store i8* %sig, i8** %sig.addr, align 8
  store i64 %slen, i64* %slen.addr, align 8
  store i8* %rs_ctx, i8** %rs_ctx.addr, align 8
  store i32 -110, i32* %ret, align 4
  %0 = load i8*, i8** %sig.addr, align 8
  store i8* %0, i8** %p, align 8
  %1 = load i8*, i8** %sig.addr, align 8
  %2 = load i64, i64* %slen.addr, align 8
  %add.ptr = getelementptr inbounds i8, i8* %1, i64 %2
  store i8* %add.ptr, i8** %end, align 8
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
  call void @mbedtls_mpi_init(%struct.mbedtls_mpi* noundef %r) #4
  call void @mbedtls_mpi_init(%struct.mbedtls_mpi* noundef %s) #4
  %3 = load i8*, i8** %end, align 8
  %call = call i32 @mbedtls_asn1_get_tag(i8** noundef %p, i8* noundef %3, i64* noundef %len, i32 noundef 48) #4
  store i32 %call, i32* %ret, align 4
  %cmp = icmp ne i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.end4
  %4 = load i32, i32* %ret, align 4
  %add = add nsw i32 %4, -20352
  store i32 %add, i32* %ret, align 4
  br label %cleanup

if.end:                                           ; preds = %do.end4
  %5 = load i8*, i8** %p, align 8
  %6 = load i64, i64* %len, align 8
  %add.ptr5 = getelementptr inbounds i8, i8* %5, i64 %6
  %7 = load i8*, i8** %end, align 8
  %cmp6 = icmp ne i8* %add.ptr5, %7
  br i1 %cmp6, label %if.then7, label %if.end9

if.then7:                                         ; preds = %if.end
  %call8 = call i32 @mbedtls_error_add(i32 noundef -20352, i32 noundef -102, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 noundef 791) #4
  store i32 %call8, i32* %ret, align 4
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %8 = load i8*, i8** %end, align 8
  %call10 = call i32 @mbedtls_asn1_get_mpi(i8** noundef %p, i8* noundef %8, %struct.mbedtls_mpi* noundef %r) #4
  store i32 %call10, i32* %ret, align 4
  %cmp11 = icmp ne i32 %call10, 0
  br i1 %cmp11, label %if.then14, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end9
  %9 = load i8*, i8** %end, align 8
  %call12 = call i32 @mbedtls_asn1_get_mpi(i8** noundef %p, i8* noundef %9, %struct.mbedtls_mpi* noundef %s) #4
  store i32 %call12, i32* %ret, align 4
  %cmp13 = icmp ne i32 %call12, 0
  br i1 %cmp13, label %if.then14, label %if.end16

if.then14:                                        ; preds = %lor.lhs.false, %if.end9
  %10 = load i32, i32* %ret, align 4
  %add15 = add nsw i32 %10, -20352
  store i32 %add15, i32* %ret, align 4
  br label %cleanup

if.end16:                                         ; preds = %lor.lhs.false
  %11 = load %struct.mbedtls_ecp_keypair*, %struct.mbedtls_ecp_keypair** %ctx.addr, align 8
  %grp = getelementptr inbounds %struct.mbedtls_ecp_keypair, %struct.mbedtls_ecp_keypair* %11, i32 0, i32 0
  %12 = load i8*, i8** %hash.addr, align 8
  %13 = load i64, i64* %hlen.addr, align 8
  %14 = load %struct.mbedtls_ecp_keypair*, %struct.mbedtls_ecp_keypair** %ctx.addr, align 8
  %Q = getelementptr inbounds %struct.mbedtls_ecp_keypair, %struct.mbedtls_ecp_keypair* %14, i32 0, i32 2
  %15 = load i8*, i8** %rs_ctx.addr, align 8
  %call17 = call i32 @ecdsa_verify_restartable(%struct.mbedtls_ecp_group* noundef %grp, i8* noundef %12, i64 noundef %13, %struct.mbedtls_ecp_point* noundef %Q, %struct.mbedtls_mpi* noundef %r, %struct.mbedtls_mpi* noundef %s, i8* noundef %15) #4
  store i32 %call17, i32* %ret, align 4
  %cmp18 = icmp ne i32 %call17, 0
  br i1 %cmp18, label %if.then19, label %if.end20

if.then19:                                        ; preds = %if.end16
  br label %cleanup

if.end20:                                         ; preds = %if.end16
  %16 = load i8*, i8** %p, align 8
  %17 = load i8*, i8** %end, align 8
  %cmp21 = icmp ne i8* %16, %17
  br i1 %cmp21, label %if.then22, label %if.end23

if.then22:                                        ; preds = %if.end20
  store i32 -19456, i32* %ret, align 4
  br label %if.end23

if.end23:                                         ; preds = %if.then22, %if.end20
  br label %cleanup

cleanup:                                          ; preds = %if.end23, %if.then19, %if.then14, %if.then7, %if.then
  call void @mbedtls_mpi_free(%struct.mbedtls_mpi* noundef %r) #4
  call void @mbedtls_mpi_free(%struct.mbedtls_mpi* noundef %s) #4
  %18 = load i32, i32* %ret, align 4
  ret i32 %18
}

declare dso_local i32 @mbedtls_asn1_get_tag(i8** noundef, i8* noundef, i64* noundef, i32 noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mbedtls_error_add(i32 noundef %high, i32 noundef %low, i8* noundef %file, i32 noundef %line) #0 {
entry:
  %high.addr = alloca i32, align 4
  %low.addr = alloca i32, align 4
  %file.addr = alloca i8*, align 8
  %line.addr = alloca i32, align 4
  store i32 %high, i32* %high.addr, align 4
  store i32 %low, i32* %low.addr, align 4
  store i8* %file, i8** %file.addr, align 8
  store i32 %line, i32* %line.addr, align 4
  %0 = load i8*, i8** %file.addr, align 8
  %1 = load i32, i32* %line.addr, align 4
  %2 = load i32, i32* %high.addr, align 4
  %3 = load i32, i32* %low.addr, align 4
  %add = add nsw i32 %2, %3
  ret i32 %add
}

declare dso_local i32 @mbedtls_asn1_get_mpi(i8** noundef, i8* noundef, %struct.mbedtls_mpi* noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_ecdsa_genkey(%struct.mbedtls_ecp_keypair* noundef %ctx, i32 noundef %gid, i32 (i8*, i8*, i64)* noundef %f_rng, i8* noundef %p_rng) #0 {
entry:
  %retval = alloca i32, align 4
  %ctx.addr = alloca %struct.mbedtls_ecp_keypair*, align 8
  %gid.addr = alloca i32, align 4
  %f_rng.addr = alloca i32 (i8*, i8*, i64)*, align 8
  %p_rng.addr = alloca i8*, align 8
  %ret = alloca i32, align 4
  store %struct.mbedtls_ecp_keypair* %ctx, %struct.mbedtls_ecp_keypair** %ctx.addr, align 8
  store i32 %gid, i32* %gid.addr, align 4
  store i32 (i8*, i8*, i64)* %f_rng, i32 (i8*, i8*, i64)** %f_rng.addr, align 8
  store i8* %p_rng, i8** %p_rng.addr, align 8
  store i32 0, i32* %ret, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %do.body1

do.body1:                                         ; preds = %do.end
  br label %do.end2

do.end2:                                          ; preds = %do.body1
  %0 = load %struct.mbedtls_ecp_keypair*, %struct.mbedtls_ecp_keypair** %ctx.addr, align 8
  %grp = getelementptr inbounds %struct.mbedtls_ecp_keypair, %struct.mbedtls_ecp_keypair* %0, i32 0, i32 0
  %1 = load i32, i32* %gid.addr, align 4
  %call = call i32 @mbedtls_ecp_group_load(%struct.mbedtls_ecp_group* noundef %grp, i32 noundef %1) #4
  store i32 %call, i32* %ret, align 4
  %2 = load i32, i32* %ret, align 4
  %cmp = icmp ne i32 %2, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.end2
  %3 = load i32, i32* %ret, align 4
  store i32 %3, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %do.end2
  %4 = load %struct.mbedtls_ecp_keypair*, %struct.mbedtls_ecp_keypair** %ctx.addr, align 8
  %grp3 = getelementptr inbounds %struct.mbedtls_ecp_keypair, %struct.mbedtls_ecp_keypair* %4, i32 0, i32 0
  %5 = load %struct.mbedtls_ecp_keypair*, %struct.mbedtls_ecp_keypair** %ctx.addr, align 8
  %d = getelementptr inbounds %struct.mbedtls_ecp_keypair, %struct.mbedtls_ecp_keypair* %5, i32 0, i32 1
  %6 = load %struct.mbedtls_ecp_keypair*, %struct.mbedtls_ecp_keypair** %ctx.addr, align 8
  %Q = getelementptr inbounds %struct.mbedtls_ecp_keypair, %struct.mbedtls_ecp_keypair* %6, i32 0, i32 2
  %7 = load i32 (i8*, i8*, i64)*, i32 (i8*, i8*, i64)** %f_rng.addr, align 8
  %8 = load i8*, i8** %p_rng.addr, align 8
  %call4 = call i32 @mbedtls_ecp_gen_keypair(%struct.mbedtls_ecp_group* noundef %grp3, %struct.mbedtls_mpi* noundef %d, %struct.mbedtls_ecp_point* noundef %Q, i32 (i8*, i8*, i64)* noundef %7, i8* noundef %8) #4
  store i32 %call4, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %9 = load i32, i32* %retval, align 4
  ret i32 %9
}

declare dso_local i32 @mbedtls_ecp_group_load(%struct.mbedtls_ecp_group* noundef, i32 noundef) #1

declare dso_local i32 @mbedtls_ecp_gen_keypair(%struct.mbedtls_ecp_group* noundef, %struct.mbedtls_mpi* noundef, %struct.mbedtls_ecp_point* noundef, i32 (i8*, i8*, i64)* noundef, i8* noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_ecdsa_from_keypair(%struct.mbedtls_ecp_keypair* noundef %ctx, %struct.mbedtls_ecp_keypair* noundef %key) #0 {
entry:
  %ctx.addr = alloca %struct.mbedtls_ecp_keypair*, align 8
  %key.addr = alloca %struct.mbedtls_ecp_keypair*, align 8
  %ret = alloca i32, align 4
  store %struct.mbedtls_ecp_keypair* %ctx, %struct.mbedtls_ecp_keypair** %ctx.addr, align 8
  store %struct.mbedtls_ecp_keypair* %key, %struct.mbedtls_ecp_keypair** %key.addr, align 8
  store i32 -110, i32* %ret, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %do.body1

do.body1:                                         ; preds = %do.end
  br label %do.end2

do.end2:                                          ; preds = %do.body1
  %0 = load %struct.mbedtls_ecp_keypair*, %struct.mbedtls_ecp_keypair** %ctx.addr, align 8
  %grp = getelementptr inbounds %struct.mbedtls_ecp_keypair, %struct.mbedtls_ecp_keypair* %0, i32 0, i32 0
  %1 = load %struct.mbedtls_ecp_keypair*, %struct.mbedtls_ecp_keypair** %key.addr, align 8
  %grp3 = getelementptr inbounds %struct.mbedtls_ecp_keypair, %struct.mbedtls_ecp_keypair* %1, i32 0, i32 0
  %call = call i32 @mbedtls_ecp_group_copy(%struct.mbedtls_ecp_group* noundef %grp, %struct.mbedtls_ecp_group* noundef %grp3) #4
  store i32 %call, i32* %ret, align 4
  %cmp = icmp ne i32 %call, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.end2
  %2 = load %struct.mbedtls_ecp_keypair*, %struct.mbedtls_ecp_keypair** %ctx.addr, align 8
  %d = getelementptr inbounds %struct.mbedtls_ecp_keypair, %struct.mbedtls_ecp_keypair* %2, i32 0, i32 1
  %3 = load %struct.mbedtls_ecp_keypair*, %struct.mbedtls_ecp_keypair** %key.addr, align 8
  %d4 = getelementptr inbounds %struct.mbedtls_ecp_keypair, %struct.mbedtls_ecp_keypair* %3, i32 0, i32 1
  %call5 = call i32 @mbedtls_mpi_copy(%struct.mbedtls_mpi* noundef %d, %struct.mbedtls_mpi* noundef %d4) #4
  store i32 %call5, i32* %ret, align 4
  %cmp6 = icmp ne i32 %call5, 0
  br i1 %cmp6, label %if.then, label %lor.lhs.false7

lor.lhs.false7:                                   ; preds = %lor.lhs.false
  %4 = load %struct.mbedtls_ecp_keypair*, %struct.mbedtls_ecp_keypair** %ctx.addr, align 8
  %Q = getelementptr inbounds %struct.mbedtls_ecp_keypair, %struct.mbedtls_ecp_keypair* %4, i32 0, i32 2
  %5 = load %struct.mbedtls_ecp_keypair*, %struct.mbedtls_ecp_keypair** %key.addr, align 8
  %Q8 = getelementptr inbounds %struct.mbedtls_ecp_keypair, %struct.mbedtls_ecp_keypair* %5, i32 0, i32 2
  %call9 = call i32 @mbedtls_ecp_copy(%struct.mbedtls_ecp_point* noundef %Q, %struct.mbedtls_ecp_point* noundef %Q8) #4
  store i32 %call9, i32* %ret, align 4
  %cmp10 = icmp ne i32 %call9, 0
  br i1 %cmp10, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false7, %lor.lhs.false, %do.end2
  %6 = load %struct.mbedtls_ecp_keypair*, %struct.mbedtls_ecp_keypair** %ctx.addr, align 8
  call void @mbedtls_ecdsa_free(%struct.mbedtls_ecp_keypair* noundef %6) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false7
  %7 = load i32, i32* %ret, align 4
  ret i32 %7
}

declare dso_local i32 @mbedtls_ecp_group_copy(%struct.mbedtls_ecp_group* noundef, %struct.mbedtls_ecp_group* noundef) #1

declare dso_local i32 @mbedtls_mpi_copy(%struct.mbedtls_mpi* noundef, %struct.mbedtls_mpi* noundef) #1

declare dso_local i32 @mbedtls_ecp_copy(%struct.mbedtls_ecp_point* noundef, %struct.mbedtls_ecp_point* noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mbedtls_ecdsa_free(%struct.mbedtls_ecp_keypair* noundef %ctx) #0 {
entry:
  %ctx.addr = alloca %struct.mbedtls_ecp_keypair*, align 8
  store %struct.mbedtls_ecp_keypair* %ctx, %struct.mbedtls_ecp_keypair** %ctx.addr, align 8
  %0 = load %struct.mbedtls_ecp_keypair*, %struct.mbedtls_ecp_keypair** %ctx.addr, align 8
  %cmp = icmp eq %struct.mbedtls_ecp_keypair* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct.mbedtls_ecp_keypair*, %struct.mbedtls_ecp_keypair** %ctx.addr, align 8
  call void @mbedtls_ecp_keypair_free(%struct.mbedtls_ecp_keypair* noundef %1) #4
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mbedtls_ecdsa_init(%struct.mbedtls_ecp_keypair* noundef %ctx) #0 {
entry:
  %ctx.addr = alloca %struct.mbedtls_ecp_keypair*, align 8
  store %struct.mbedtls_ecp_keypair* %ctx, %struct.mbedtls_ecp_keypair** %ctx.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  %0 = load %struct.mbedtls_ecp_keypair*, %struct.mbedtls_ecp_keypair** %ctx.addr, align 8
  call void @mbedtls_ecp_keypair_init(%struct.mbedtls_ecp_keypair* noundef %0) #4
  ret void
}

declare dso_local void @mbedtls_ecp_keypair_init(%struct.mbedtls_ecp_keypair* noundef) #1

declare dso_local void @mbedtls_ecp_keypair_free(%struct.mbedtls_ecp_keypair* noundef) #1

declare dso_local i32 @mbedtls_mpi_cmp_int(%struct.mbedtls_mpi* noundef, i64 noundef) #1

declare dso_local i32 @mbedtls_mpi_cmp_mpi(%struct.mbedtls_mpi* noundef, %struct.mbedtls_mpi* noundef) #1

declare dso_local void @mbedtls_ecp_point_init(%struct.mbedtls_ecp_point* noundef) #1

declare dso_local i32 @mbedtls_ecp_gen_privkey(%struct.mbedtls_ecp_group* noundef, %struct.mbedtls_mpi* noundef, i32 (i8*, i8*, i64)* noundef, i8* noundef) #1

declare dso_local i32 @mbedtls_ecp_mul_restartable(%struct.mbedtls_ecp_group* noundef, %struct.mbedtls_ecp_point* noundef, %struct.mbedtls_mpi* noundef, %struct.mbedtls_ecp_point* noundef, i32 (i8*, i8*, i64)* noundef, i8* noundef, i8* noundef) #1

declare dso_local i32 @mbedtls_mpi_mod_mpi(%struct.mbedtls_mpi* noundef, %struct.mbedtls_mpi* noundef, %struct.mbedtls_mpi* noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @derive_mpi(%struct.mbedtls_ecp_group* noundef %grp, %struct.mbedtls_mpi* noundef %x, i8* noundef %buf, i64 noundef %blen) #0 {
entry:
  %grp.addr = alloca %struct.mbedtls_ecp_group*, align 8
  %x.addr = alloca %struct.mbedtls_mpi*, align 8
  %buf.addr = alloca i8*, align 8
  %blen.addr = alloca i64, align 8
  %ret = alloca i32, align 4
  %n_size = alloca i64, align 8
  %use_size = alloca i64, align 8
  store %struct.mbedtls_ecp_group* %grp, %struct.mbedtls_ecp_group** %grp.addr, align 8
  store %struct.mbedtls_mpi* %x, %struct.mbedtls_mpi** %x.addr, align 8
  store i8* %buf, i8** %buf.addr, align 8
  store i64 %blen, i64* %blen.addr, align 8
  store i32 -110, i32* %ret, align 4
  %0 = load %struct.mbedtls_ecp_group*, %struct.mbedtls_ecp_group** %grp.addr, align 8
  %nbits = getelementptr inbounds %struct.mbedtls_ecp_group, %struct.mbedtls_ecp_group* %0, i32 0, i32 7
  %1 = load i64, i64* %nbits, align 8
  %add = add i64 %1, 7
  %div = udiv i64 %add, 8
  store i64 %div, i64* %n_size, align 8
  %2 = load i64, i64* %blen.addr, align 8
  %3 = load i64, i64* %n_size, align 8
  %cmp = icmp ugt i64 %2, %3
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %4 = load i64, i64* %n_size, align 8
  br label %cond.end

cond.false:                                       ; preds = %entry
  %5 = load i64, i64* %blen.addr, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %4, %cond.true ], [ %5, %cond.false ]
  store i64 %cond, i64* %use_size, align 8
  br label %do.body

do.body:                                          ; preds = %cond.end
  %6 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %x.addr, align 8
  %7 = load i8*, i8** %buf.addr, align 8
  %8 = load i64, i64* %use_size, align 8
  %call = call i32 @mbedtls_mpi_read_binary(%struct.mbedtls_mpi* noundef %6, i8* noundef %7, i64 noundef %8) #4
  store i32 %call, i32* %ret, align 4
  %cmp1 = icmp ne i32 %call, 0
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  br label %cleanup

if.end:                                           ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %if.end
  %9 = load i64, i64* %use_size, align 8
  %mul = mul i64 %9, 8
  %10 = load %struct.mbedtls_ecp_group*, %struct.mbedtls_ecp_group** %grp.addr, align 8
  %nbits2 = getelementptr inbounds %struct.mbedtls_ecp_group, %struct.mbedtls_ecp_group* %10, i32 0, i32 7
  %11 = load i64, i64* %nbits2, align 8
  %cmp3 = icmp ugt i64 %mul, %11
  br i1 %cmp3, label %if.then4, label %if.end13

if.then4:                                         ; preds = %do.end
  br label %do.body5

do.body5:                                         ; preds = %if.then4
  %12 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %x.addr, align 8
  %13 = load i64, i64* %use_size, align 8
  %mul6 = mul i64 %13, 8
  %14 = load %struct.mbedtls_ecp_group*, %struct.mbedtls_ecp_group** %grp.addr, align 8
  %nbits7 = getelementptr inbounds %struct.mbedtls_ecp_group, %struct.mbedtls_ecp_group* %14, i32 0, i32 7
  %15 = load i64, i64* %nbits7, align 8
  %sub = sub i64 %mul6, %15
  %call8 = call i32 @mbedtls_mpi_shift_r(%struct.mbedtls_mpi* noundef %12, i64 noundef %sub) #4
  store i32 %call8, i32* %ret, align 4
  %cmp9 = icmp ne i32 %call8, 0
  br i1 %cmp9, label %if.then10, label %if.end11

if.then10:                                        ; preds = %do.body5
  br label %cleanup

if.end11:                                         ; preds = %do.body5
  br label %do.end12

do.end12:                                         ; preds = %if.end11
  br label %if.end13

if.end13:                                         ; preds = %do.end12, %do.end
  %16 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %x.addr, align 8
  %17 = load %struct.mbedtls_ecp_group*, %struct.mbedtls_ecp_group** %grp.addr, align 8
  %N = getelementptr inbounds %struct.mbedtls_ecp_group, %struct.mbedtls_ecp_group* %17, i32 0, i32 5
  %call14 = call i32 @mbedtls_mpi_cmp_mpi(%struct.mbedtls_mpi* noundef %16, %struct.mbedtls_mpi* noundef %N) #4
  %cmp15 = icmp sge i32 %call14, 0
  br i1 %cmp15, label %if.then16, label %if.end24

if.then16:                                        ; preds = %if.end13
  br label %do.body17

do.body17:                                        ; preds = %if.then16
  %18 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %x.addr, align 8
  %19 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %x.addr, align 8
  %20 = load %struct.mbedtls_ecp_group*, %struct.mbedtls_ecp_group** %grp.addr, align 8
  %N18 = getelementptr inbounds %struct.mbedtls_ecp_group, %struct.mbedtls_ecp_group* %20, i32 0, i32 5
  %call19 = call i32 @mbedtls_mpi_sub_mpi(%struct.mbedtls_mpi* noundef %18, %struct.mbedtls_mpi* noundef %19, %struct.mbedtls_mpi* noundef %N18) #4
  store i32 %call19, i32* %ret, align 4
  %cmp20 = icmp ne i32 %call19, 0
  br i1 %cmp20, label %if.then21, label %if.end22

if.then21:                                        ; preds = %do.body17
  br label %cleanup

if.end22:                                         ; preds = %do.body17
  br label %do.end23

do.end23:                                         ; preds = %if.end22
  br label %if.end24

if.end24:                                         ; preds = %do.end23, %if.end13
  br label %cleanup

cleanup:                                          ; preds = %if.end24, %if.then21, %if.then10, %if.then
  %21 = load i32, i32* %ret, align 4
  ret i32 %21
}

declare dso_local i32 @mbedtls_mpi_mul_mpi(%struct.mbedtls_mpi* noundef, %struct.mbedtls_mpi* noundef, %struct.mbedtls_mpi* noundef) #1

declare dso_local i32 @mbedtls_mpi_add_mpi(%struct.mbedtls_mpi* noundef, %struct.mbedtls_mpi* noundef, %struct.mbedtls_mpi* noundef) #1

declare dso_local i32 @mbedtls_mpi_inv_mod(%struct.mbedtls_mpi* noundef, %struct.mbedtls_mpi* noundef, %struct.mbedtls_mpi* noundef) #1

declare dso_local void @mbedtls_ecp_point_free(%struct.mbedtls_ecp_point* noundef) #1

declare dso_local i32 @mbedtls_mpi_read_binary(%struct.mbedtls_mpi* noundef, i8* noundef, i64 noundef) #1

declare dso_local i32 @mbedtls_mpi_shift_r(%struct.mbedtls_mpi* noundef, i64 noundef) #1

declare dso_local i32 @mbedtls_mpi_sub_mpi(%struct.mbedtls_mpi* noundef, %struct.mbedtls_mpi* noundef, %struct.mbedtls_mpi* noundef) #1

declare dso_local %struct.mbedtls_md_info_t* @mbedtls_md_info_from_type(i32 noundef) #1

declare dso_local void @mbedtls_hmac_drbg_init(%struct.mbedtls_hmac_drbg_context* noundef) #1

declare dso_local i32 @mbedtls_mpi_write_binary(%struct.mbedtls_mpi* noundef, i8* noundef, i64 noundef) #1

declare dso_local i32 @mbedtls_hmac_drbg_seed_buf(%struct.mbedtls_hmac_drbg_context* noundef, %struct.mbedtls_md_info_t* noundef, i8* noundef, i64 noundef) #1

declare dso_local i32 @mbedtls_hmac_drbg_random(i8* noundef, i8* noundef, i64 noundef) #1

declare dso_local void @mbedtls_hmac_drbg_free(%struct.mbedtls_hmac_drbg_context* noundef) #1

declare dso_local i32 @mbedtls_ecp_muladd_restartable(%struct.mbedtls_ecp_group* noundef, %struct.mbedtls_ecp_point* noundef, %struct.mbedtls_mpi* noundef, %struct.mbedtls_ecp_point* noundef, %struct.mbedtls_mpi* noundef, %struct.mbedtls_ecp_point* noundef, i8* noundef) #1

declare dso_local i32 @mbedtls_ecp_is_zero(%struct.mbedtls_ecp_point* noundef) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @mbedtls_asn1_write_mpi(i8** noundef, i8* noundef, %struct.mbedtls_mpi* noundef) #1

declare dso_local i32 @mbedtls_asn1_write_len(i8** noundef, i8* noundef, i64 noundef) #1

declare dso_local i32 @mbedtls_asn1_write_tag(i8** noundef, i8* noundef, i8 noundef zeroext) #1

; Function Attrs: nounwind
declare dso_local i8* @memcpy(i8* noundef, i8* noundef, i64 noundef) #3

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { nounwind "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nobuiltin "no-builtins" }
attributes #5 = { nobuiltin nounwind "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.0"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
