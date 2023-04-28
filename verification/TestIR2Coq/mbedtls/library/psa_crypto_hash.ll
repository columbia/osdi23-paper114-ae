; ModuleID = 'psa_crypto_hash.c'
source_filename = "psa_crypto_hash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mbedtls_md_info_t = type { i8*, i32, i8, i8 }
%struct.mbedtls_psa_hash_operation_t = type { i32, %union.anon }
%union.anon = type { %struct.mbedtls_sha512_context }
%struct.mbedtls_sha512_context = type { [2 x i64], [8 x i64], [128 x i8], i32 }
%struct.mbedtls_md5_context = type { [2 x i32], [4 x i32], [64 x i8] }
%struct.mbedtls_ripemd160_context = type { [2 x i32], [5 x i32], [64 x i8] }
%struct.mbedtls_sha1_context = type { [2 x i32], [5 x i32], [64 x i8] }
%struct.mbedtls_sha256_context = type { [2 x i32], [8 x i32], [64 x i8], i32 }

@mbedtls_md5_info = external dso_local constant %struct.mbedtls_md_info_t, align 8
@mbedtls_ripemd160_info = external dso_local constant %struct.mbedtls_md_info_t, align 8
@mbedtls_sha1_info = external dso_local constant %struct.mbedtls_md_info_t, align 8
@mbedtls_sha224_info = external dso_local constant %struct.mbedtls_md_info_t, align 8
@mbedtls_sha256_info = external dso_local constant %struct.mbedtls_md_info_t, align 8
@mbedtls_sha384_info = external dso_local constant %struct.mbedtls_md_info_t, align 8
@mbedtls_sha512_info = external dso_local constant %struct.mbedtls_md_info_t, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.mbedtls_md_info_t* @mbedtls_md_info_from_psa(i32 noundef %alg) #0 {
entry:
  %retval = alloca %struct.mbedtls_md_info_t*, align 8
  %alg.addr = alloca i32, align 4
  store i32 %alg, i32* %alg.addr, align 4
  %0 = load i32, i32* %alg.addr, align 4
  switch i32 %0, label %sw.default [
    i32 33554435, label %sw.bb
    i32 33554436, label %sw.bb1
    i32 33554437, label %sw.bb2
    i32 33554440, label %sw.bb3
    i32 33554441, label %sw.bb4
    i32 33554442, label %sw.bb5
    i32 33554443, label %sw.bb6
  ]

sw.bb:                                            ; preds = %entry
  store %struct.mbedtls_md_info_t* @mbedtls_md5_info, %struct.mbedtls_md_info_t** %retval, align 8
  br label %return

sw.bb1:                                           ; preds = %entry
  store %struct.mbedtls_md_info_t* @mbedtls_ripemd160_info, %struct.mbedtls_md_info_t** %retval, align 8
  br label %return

sw.bb2:                                           ; preds = %entry
  store %struct.mbedtls_md_info_t* @mbedtls_sha1_info, %struct.mbedtls_md_info_t** %retval, align 8
  br label %return

sw.bb3:                                           ; preds = %entry
  store %struct.mbedtls_md_info_t* @mbedtls_sha224_info, %struct.mbedtls_md_info_t** %retval, align 8
  br label %return

sw.bb4:                                           ; preds = %entry
  store %struct.mbedtls_md_info_t* @mbedtls_sha256_info, %struct.mbedtls_md_info_t** %retval, align 8
  br label %return

sw.bb5:                                           ; preds = %entry
  store %struct.mbedtls_md_info_t* @mbedtls_sha384_info, %struct.mbedtls_md_info_t** %retval, align 8
  br label %return

sw.bb6:                                           ; preds = %entry
  store %struct.mbedtls_md_info_t* @mbedtls_sha512_info, %struct.mbedtls_md_info_t** %retval, align 8
  br label %return

sw.default:                                       ; preds = %entry
  store %struct.mbedtls_md_info_t* null, %struct.mbedtls_md_info_t** %retval, align 8
  br label %return

return:                                           ; preds = %sw.default, %sw.bb6, %sw.bb5, %sw.bb4, %sw.bb3, %sw.bb2, %sw.bb1, %sw.bb
  %1 = load %struct.mbedtls_md_info_t*, %struct.mbedtls_md_info_t** %retval, align 8
  ret %struct.mbedtls_md_info_t* %1
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_psa_hash_abort(%struct.mbedtls_psa_hash_operation_t* noundef %operation) #0 {
entry:
  %retval = alloca i32, align 4
  %operation.addr = alloca %struct.mbedtls_psa_hash_operation_t*, align 8
  store %struct.mbedtls_psa_hash_operation_t* %operation, %struct.mbedtls_psa_hash_operation_t** %operation.addr, align 8
  %0 = load %struct.mbedtls_psa_hash_operation_t*, %struct.mbedtls_psa_hash_operation_t** %operation.addr, align 8
  %alg = getelementptr inbounds %struct.mbedtls_psa_hash_operation_t, %struct.mbedtls_psa_hash_operation_t* %0, i32 0, i32 0
  %1 = load i32, i32* %alg, align 8
  switch i32 %1, label %sw.default [
    i32 0, label %sw.bb
    i32 33554435, label %sw.bb1
    i32 33554436, label %sw.bb2
    i32 33554437, label %sw.bb4
    i32 33554440, label %sw.bb6
    i32 33554441, label %sw.bb8
    i32 33554442, label %sw.bb11
    i32 33554443, label %sw.bb13
  ]

sw.bb:                                            ; preds = %entry
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  %2 = load %struct.mbedtls_psa_hash_operation_t*, %struct.mbedtls_psa_hash_operation_t** %operation.addr, align 8
  %ctx = getelementptr inbounds %struct.mbedtls_psa_hash_operation_t, %struct.mbedtls_psa_hash_operation_t* %2, i32 0, i32 1
  %md5 = bitcast %union.anon* %ctx to %struct.mbedtls_md5_context*
  call void @mbedtls_md5_free(%struct.mbedtls_md5_context* noundef %md5) #4
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  %3 = load %struct.mbedtls_psa_hash_operation_t*, %struct.mbedtls_psa_hash_operation_t** %operation.addr, align 8
  %ctx3 = getelementptr inbounds %struct.mbedtls_psa_hash_operation_t, %struct.mbedtls_psa_hash_operation_t* %3, i32 0, i32 1
  %ripemd160 = bitcast %union.anon* %ctx3 to %struct.mbedtls_ripemd160_context*
  call void @mbedtls_ripemd160_free(%struct.mbedtls_ripemd160_context* noundef %ripemd160) #4
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  %4 = load %struct.mbedtls_psa_hash_operation_t*, %struct.mbedtls_psa_hash_operation_t** %operation.addr, align 8
  %ctx5 = getelementptr inbounds %struct.mbedtls_psa_hash_operation_t, %struct.mbedtls_psa_hash_operation_t* %4, i32 0, i32 1
  %sha1 = bitcast %union.anon* %ctx5 to %struct.mbedtls_sha1_context*
  call void @mbedtls_sha1_free(%struct.mbedtls_sha1_context* noundef %sha1) #4
  br label %sw.epilog

sw.bb6:                                           ; preds = %entry
  %5 = load %struct.mbedtls_psa_hash_operation_t*, %struct.mbedtls_psa_hash_operation_t** %operation.addr, align 8
  %ctx7 = getelementptr inbounds %struct.mbedtls_psa_hash_operation_t, %struct.mbedtls_psa_hash_operation_t* %5, i32 0, i32 1
  %sha256 = bitcast %union.anon* %ctx7 to %struct.mbedtls_sha256_context*
  call void @mbedtls_sha256_free(%struct.mbedtls_sha256_context* noundef %sha256) #4
  br label %sw.epilog

sw.bb8:                                           ; preds = %entry
  %6 = load %struct.mbedtls_psa_hash_operation_t*, %struct.mbedtls_psa_hash_operation_t** %operation.addr, align 8
  %ctx9 = getelementptr inbounds %struct.mbedtls_psa_hash_operation_t, %struct.mbedtls_psa_hash_operation_t* %6, i32 0, i32 1
  %sha25610 = bitcast %union.anon* %ctx9 to %struct.mbedtls_sha256_context*
  call void @mbedtls_sha256_free(%struct.mbedtls_sha256_context* noundef %sha25610) #4
  br label %sw.epilog

sw.bb11:                                          ; preds = %entry
  %7 = load %struct.mbedtls_psa_hash_operation_t*, %struct.mbedtls_psa_hash_operation_t** %operation.addr, align 8
  %ctx12 = getelementptr inbounds %struct.mbedtls_psa_hash_operation_t, %struct.mbedtls_psa_hash_operation_t* %7, i32 0, i32 1
  %sha512 = bitcast %union.anon* %ctx12 to %struct.mbedtls_sha512_context*
  call void @mbedtls_sha512_free(%struct.mbedtls_sha512_context* noundef %sha512) #4
  br label %sw.epilog

sw.bb13:                                          ; preds = %entry
  %8 = load %struct.mbedtls_psa_hash_operation_t*, %struct.mbedtls_psa_hash_operation_t** %operation.addr, align 8
  %ctx14 = getelementptr inbounds %struct.mbedtls_psa_hash_operation_t, %struct.mbedtls_psa_hash_operation_t* %8, i32 0, i32 1
  %sha51215 = bitcast %union.anon* %ctx14 to %struct.mbedtls_sha512_context*
  call void @mbedtls_sha512_free(%struct.mbedtls_sha512_context* noundef %sha51215) #4
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  store i32 -137, i32* %retval, align 4
  br label %return

sw.epilog:                                        ; preds = %sw.bb13, %sw.bb11, %sw.bb8, %sw.bb6, %sw.bb4, %sw.bb2, %sw.bb1, %sw.bb
  %9 = load %struct.mbedtls_psa_hash_operation_t*, %struct.mbedtls_psa_hash_operation_t** %operation.addr, align 8
  %alg16 = getelementptr inbounds %struct.mbedtls_psa_hash_operation_t, %struct.mbedtls_psa_hash_operation_t* %9, i32 0, i32 0
  store i32 0, i32* %alg16, align 8
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %sw.epilog, %sw.default
  %10 = load i32, i32* %retval, align 4
  ret i32 %10
}

declare dso_local void @mbedtls_md5_free(%struct.mbedtls_md5_context* noundef) #1

declare dso_local void @mbedtls_ripemd160_free(%struct.mbedtls_ripemd160_context* noundef) #1

declare dso_local void @mbedtls_sha1_free(%struct.mbedtls_sha1_context* noundef) #1

declare dso_local void @mbedtls_sha256_free(%struct.mbedtls_sha256_context* noundef) #1

declare dso_local void @mbedtls_sha512_free(%struct.mbedtls_sha512_context* noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_psa_hash_setup(%struct.mbedtls_psa_hash_operation_t* noundef %operation, i32 noundef %alg) #0 {
entry:
  %retval = alloca i32, align 4
  %operation.addr = alloca %struct.mbedtls_psa_hash_operation_t*, align 8
  %alg.addr = alloca i32, align 4
  %ret = alloca i32, align 4
  store %struct.mbedtls_psa_hash_operation_t* %operation, %struct.mbedtls_psa_hash_operation_t** %operation.addr, align 8
  store i32 %alg, i32* %alg.addr, align 4
  store i32 -110, i32* %ret, align 4
  %0 = load %struct.mbedtls_psa_hash_operation_t*, %struct.mbedtls_psa_hash_operation_t** %operation.addr, align 8
  %alg1 = getelementptr inbounds %struct.mbedtls_psa_hash_operation_t, %struct.mbedtls_psa_hash_operation_t* %0, i32 0, i32 0
  %1 = load i32, i32* %alg1, align 8
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -137, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i32, i32* %alg.addr, align 4
  switch i32 %2, label %sw.default [
    i32 33554435, label %sw.bb
    i32 33554436, label %sw.bb4
    i32 33554437, label %sw.bb9
    i32 33554440, label %sw.bb14
    i32 33554441, label %sw.bb19
    i32 33554442, label %sw.bb25
    i32 33554443, label %sw.bb30
  ]

sw.bb:                                            ; preds = %if.end
  %3 = load %struct.mbedtls_psa_hash_operation_t*, %struct.mbedtls_psa_hash_operation_t** %operation.addr, align 8
  %ctx = getelementptr inbounds %struct.mbedtls_psa_hash_operation_t, %struct.mbedtls_psa_hash_operation_t* %3, i32 0, i32 1
  %md5 = bitcast %union.anon* %ctx to %struct.mbedtls_md5_context*
  call void @mbedtls_md5_init(%struct.mbedtls_md5_context* noundef %md5) #4
  %4 = load %struct.mbedtls_psa_hash_operation_t*, %struct.mbedtls_psa_hash_operation_t** %operation.addr, align 8
  %ctx2 = getelementptr inbounds %struct.mbedtls_psa_hash_operation_t, %struct.mbedtls_psa_hash_operation_t* %4, i32 0, i32 1
  %md53 = bitcast %union.anon* %ctx2 to %struct.mbedtls_md5_context*
  %call = call i32 @mbedtls_md5_starts(%struct.mbedtls_md5_context* noundef %md53) #4
  store i32 %call, i32* %ret, align 4
  br label %sw.epilog

sw.bb4:                                           ; preds = %if.end
  %5 = load %struct.mbedtls_psa_hash_operation_t*, %struct.mbedtls_psa_hash_operation_t** %operation.addr, align 8
  %ctx5 = getelementptr inbounds %struct.mbedtls_psa_hash_operation_t, %struct.mbedtls_psa_hash_operation_t* %5, i32 0, i32 1
  %ripemd160 = bitcast %union.anon* %ctx5 to %struct.mbedtls_ripemd160_context*
  call void @mbedtls_ripemd160_init(%struct.mbedtls_ripemd160_context* noundef %ripemd160) #4
  %6 = load %struct.mbedtls_psa_hash_operation_t*, %struct.mbedtls_psa_hash_operation_t** %operation.addr, align 8
  %ctx6 = getelementptr inbounds %struct.mbedtls_psa_hash_operation_t, %struct.mbedtls_psa_hash_operation_t* %6, i32 0, i32 1
  %ripemd1607 = bitcast %union.anon* %ctx6 to %struct.mbedtls_ripemd160_context*
  %call8 = call i32 @mbedtls_ripemd160_starts(%struct.mbedtls_ripemd160_context* noundef %ripemd1607) #4
  store i32 %call8, i32* %ret, align 4
  br label %sw.epilog

sw.bb9:                                           ; preds = %if.end
  %7 = load %struct.mbedtls_psa_hash_operation_t*, %struct.mbedtls_psa_hash_operation_t** %operation.addr, align 8
  %ctx10 = getelementptr inbounds %struct.mbedtls_psa_hash_operation_t, %struct.mbedtls_psa_hash_operation_t* %7, i32 0, i32 1
  %sha1 = bitcast %union.anon* %ctx10 to %struct.mbedtls_sha1_context*
  call void @mbedtls_sha1_init(%struct.mbedtls_sha1_context* noundef %sha1) #4
  %8 = load %struct.mbedtls_psa_hash_operation_t*, %struct.mbedtls_psa_hash_operation_t** %operation.addr, align 8
  %ctx11 = getelementptr inbounds %struct.mbedtls_psa_hash_operation_t, %struct.mbedtls_psa_hash_operation_t* %8, i32 0, i32 1
  %sha112 = bitcast %union.anon* %ctx11 to %struct.mbedtls_sha1_context*
  %call13 = call i32 @mbedtls_sha1_starts(%struct.mbedtls_sha1_context* noundef %sha112) #4
  store i32 %call13, i32* %ret, align 4
  br label %sw.epilog

sw.bb14:                                          ; preds = %if.end
  %9 = load %struct.mbedtls_psa_hash_operation_t*, %struct.mbedtls_psa_hash_operation_t** %operation.addr, align 8
  %ctx15 = getelementptr inbounds %struct.mbedtls_psa_hash_operation_t, %struct.mbedtls_psa_hash_operation_t* %9, i32 0, i32 1
  %sha256 = bitcast %union.anon* %ctx15 to %struct.mbedtls_sha256_context*
  call void @mbedtls_sha256_init(%struct.mbedtls_sha256_context* noundef %sha256) #4
  %10 = load %struct.mbedtls_psa_hash_operation_t*, %struct.mbedtls_psa_hash_operation_t** %operation.addr, align 8
  %ctx16 = getelementptr inbounds %struct.mbedtls_psa_hash_operation_t, %struct.mbedtls_psa_hash_operation_t* %10, i32 0, i32 1
  %sha25617 = bitcast %union.anon* %ctx16 to %struct.mbedtls_sha256_context*
  %call18 = call i32 @mbedtls_sha256_starts(%struct.mbedtls_sha256_context* noundef %sha25617, i32 noundef 1) #4
  store i32 %call18, i32* %ret, align 4
  br label %sw.epilog

sw.bb19:                                          ; preds = %if.end
  %11 = load %struct.mbedtls_psa_hash_operation_t*, %struct.mbedtls_psa_hash_operation_t** %operation.addr, align 8
  %ctx20 = getelementptr inbounds %struct.mbedtls_psa_hash_operation_t, %struct.mbedtls_psa_hash_operation_t* %11, i32 0, i32 1
  %sha25621 = bitcast %union.anon* %ctx20 to %struct.mbedtls_sha256_context*
  call void @mbedtls_sha256_init(%struct.mbedtls_sha256_context* noundef %sha25621) #4
  %12 = load %struct.mbedtls_psa_hash_operation_t*, %struct.mbedtls_psa_hash_operation_t** %operation.addr, align 8
  %ctx22 = getelementptr inbounds %struct.mbedtls_psa_hash_operation_t, %struct.mbedtls_psa_hash_operation_t* %12, i32 0, i32 1
  %sha25623 = bitcast %union.anon* %ctx22 to %struct.mbedtls_sha256_context*
  %call24 = call i32 @mbedtls_sha256_starts(%struct.mbedtls_sha256_context* noundef %sha25623, i32 noundef 0) #4
  store i32 %call24, i32* %ret, align 4
  br label %sw.epilog

sw.bb25:                                          ; preds = %if.end
  %13 = load %struct.mbedtls_psa_hash_operation_t*, %struct.mbedtls_psa_hash_operation_t** %operation.addr, align 8
  %ctx26 = getelementptr inbounds %struct.mbedtls_psa_hash_operation_t, %struct.mbedtls_psa_hash_operation_t* %13, i32 0, i32 1
  %sha512 = bitcast %union.anon* %ctx26 to %struct.mbedtls_sha512_context*
  call void @mbedtls_sha512_init(%struct.mbedtls_sha512_context* noundef %sha512) #4
  %14 = load %struct.mbedtls_psa_hash_operation_t*, %struct.mbedtls_psa_hash_operation_t** %operation.addr, align 8
  %ctx27 = getelementptr inbounds %struct.mbedtls_psa_hash_operation_t, %struct.mbedtls_psa_hash_operation_t* %14, i32 0, i32 1
  %sha51228 = bitcast %union.anon* %ctx27 to %struct.mbedtls_sha512_context*
  %call29 = call i32 @mbedtls_sha512_starts(%struct.mbedtls_sha512_context* noundef %sha51228, i32 noundef 1) #4
  store i32 %call29, i32* %ret, align 4
  br label %sw.epilog

sw.bb30:                                          ; preds = %if.end
  %15 = load %struct.mbedtls_psa_hash_operation_t*, %struct.mbedtls_psa_hash_operation_t** %operation.addr, align 8
  %ctx31 = getelementptr inbounds %struct.mbedtls_psa_hash_operation_t, %struct.mbedtls_psa_hash_operation_t* %15, i32 0, i32 1
  %sha51232 = bitcast %union.anon* %ctx31 to %struct.mbedtls_sha512_context*
  call void @mbedtls_sha512_init(%struct.mbedtls_sha512_context* noundef %sha51232) #4
  %16 = load %struct.mbedtls_psa_hash_operation_t*, %struct.mbedtls_psa_hash_operation_t** %operation.addr, align 8
  %ctx33 = getelementptr inbounds %struct.mbedtls_psa_hash_operation_t, %struct.mbedtls_psa_hash_operation_t* %16, i32 0, i32 1
  %sha51234 = bitcast %union.anon* %ctx33 to %struct.mbedtls_sha512_context*
  %call35 = call i32 @mbedtls_sha512_starts(%struct.mbedtls_sha512_context* noundef %sha51234, i32 noundef 0) #4
  store i32 %call35, i32* %ret, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %if.end
  %17 = load i32, i32* %alg.addr, align 4
  %and = and i32 %17, 2130706432
  %cmp36 = icmp eq i32 %and, 33554432
  %18 = zext i1 %cmp36 to i64
  %cond = select i1 %cmp36, i32 -134, i32 -135
  store i32 %cond, i32* %retval, align 4
  br label %return

sw.epilog:                                        ; preds = %sw.bb30, %sw.bb25, %sw.bb19, %sw.bb14, %sw.bb9, %sw.bb4, %sw.bb
  %19 = load i32, i32* %ret, align 4
  %cmp37 = icmp eq i32 %19, 0
  br i1 %cmp37, label %if.then38, label %if.else

if.then38:                                        ; preds = %sw.epilog
  %20 = load i32, i32* %alg.addr, align 4
  %21 = load %struct.mbedtls_psa_hash_operation_t*, %struct.mbedtls_psa_hash_operation_t** %operation.addr, align 8
  %alg39 = getelementptr inbounds %struct.mbedtls_psa_hash_operation_t, %struct.mbedtls_psa_hash_operation_t* %21, i32 0, i32 0
  store i32 %20, i32* %alg39, align 8
  br label %if.end41

if.else:                                          ; preds = %sw.epilog
  %22 = load %struct.mbedtls_psa_hash_operation_t*, %struct.mbedtls_psa_hash_operation_t** %operation.addr, align 8
  %call40 = call i32 @mbedtls_psa_hash_abort(%struct.mbedtls_psa_hash_operation_t* noundef %22) #4
  br label %if.end41

if.end41:                                         ; preds = %if.else, %if.then38
  %23 = load i32, i32* %ret, align 4
  %call42 = call i32 @mbedtls_to_psa_error(i32 noundef %23) #4
  store i32 %call42, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end41, %sw.default, %if.then
  %24 = load i32, i32* %retval, align 4
  ret i32 %24
}

declare dso_local void @mbedtls_md5_init(%struct.mbedtls_md5_context* noundef) #1

declare dso_local i32 @mbedtls_md5_starts(%struct.mbedtls_md5_context* noundef) #1

declare dso_local void @mbedtls_ripemd160_init(%struct.mbedtls_ripemd160_context* noundef) #1

declare dso_local i32 @mbedtls_ripemd160_starts(%struct.mbedtls_ripemd160_context* noundef) #1

declare dso_local void @mbedtls_sha1_init(%struct.mbedtls_sha1_context* noundef) #1

declare dso_local i32 @mbedtls_sha1_starts(%struct.mbedtls_sha1_context* noundef) #1

declare dso_local void @mbedtls_sha256_init(%struct.mbedtls_sha256_context* noundef) #1

declare dso_local i32 @mbedtls_sha256_starts(%struct.mbedtls_sha256_context* noundef, i32 noundef) #1

declare dso_local void @mbedtls_sha512_init(%struct.mbedtls_sha512_context* noundef) #1

declare dso_local i32 @mbedtls_sha512_starts(%struct.mbedtls_sha512_context* noundef, i32 noundef) #1

declare dso_local i32 @mbedtls_to_psa_error(i32 noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_psa_hash_clone(%struct.mbedtls_psa_hash_operation_t* noundef %source_operation, %struct.mbedtls_psa_hash_operation_t* noundef %target_operation) #0 {
entry:
  %retval = alloca i32, align 4
  %source_operation.addr = alloca %struct.mbedtls_psa_hash_operation_t*, align 8
  %target_operation.addr = alloca %struct.mbedtls_psa_hash_operation_t*, align 8
  store %struct.mbedtls_psa_hash_operation_t* %source_operation, %struct.mbedtls_psa_hash_operation_t** %source_operation.addr, align 8
  store %struct.mbedtls_psa_hash_operation_t* %target_operation, %struct.mbedtls_psa_hash_operation_t** %target_operation.addr, align 8
  %0 = load %struct.mbedtls_psa_hash_operation_t*, %struct.mbedtls_psa_hash_operation_t** %source_operation.addr, align 8
  %alg = getelementptr inbounds %struct.mbedtls_psa_hash_operation_t, %struct.mbedtls_psa_hash_operation_t* %0, i32 0, i32 0
  %1 = load i32, i32* %alg, align 8
  switch i32 %1, label %sw.default [
    i32 0, label %sw.bb
    i32 33554435, label %sw.bb1
    i32 33554436, label %sw.bb4
    i32 33554437, label %sw.bb8
    i32 33554440, label %sw.bb12
    i32 33554441, label %sw.bb16
    i32 33554442, label %sw.bb21
    i32 33554443, label %sw.bb25
  ]

sw.bb:                                            ; preds = %entry
  store i32 -137, i32* %retval, align 4
  br label %return

sw.bb1:                                           ; preds = %entry
  %2 = load %struct.mbedtls_psa_hash_operation_t*, %struct.mbedtls_psa_hash_operation_t** %target_operation.addr, align 8
  %ctx = getelementptr inbounds %struct.mbedtls_psa_hash_operation_t, %struct.mbedtls_psa_hash_operation_t* %2, i32 0, i32 1
  %md5 = bitcast %union.anon* %ctx to %struct.mbedtls_md5_context*
  %3 = load %struct.mbedtls_psa_hash_operation_t*, %struct.mbedtls_psa_hash_operation_t** %source_operation.addr, align 8
  %ctx2 = getelementptr inbounds %struct.mbedtls_psa_hash_operation_t, %struct.mbedtls_psa_hash_operation_t* %3, i32 0, i32 1
  %md53 = bitcast %union.anon* %ctx2 to %struct.mbedtls_md5_context*
  call void @mbedtls_md5_clone(%struct.mbedtls_md5_context* noundef %md5, %struct.mbedtls_md5_context* noundef %md53) #4
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  %4 = load %struct.mbedtls_psa_hash_operation_t*, %struct.mbedtls_psa_hash_operation_t** %target_operation.addr, align 8
  %ctx5 = getelementptr inbounds %struct.mbedtls_psa_hash_operation_t, %struct.mbedtls_psa_hash_operation_t* %4, i32 0, i32 1
  %ripemd160 = bitcast %union.anon* %ctx5 to %struct.mbedtls_ripemd160_context*
  %5 = load %struct.mbedtls_psa_hash_operation_t*, %struct.mbedtls_psa_hash_operation_t** %source_operation.addr, align 8
  %ctx6 = getelementptr inbounds %struct.mbedtls_psa_hash_operation_t, %struct.mbedtls_psa_hash_operation_t* %5, i32 0, i32 1
  %ripemd1607 = bitcast %union.anon* %ctx6 to %struct.mbedtls_ripemd160_context*
  call void @mbedtls_ripemd160_clone(%struct.mbedtls_ripemd160_context* noundef %ripemd160, %struct.mbedtls_ripemd160_context* noundef %ripemd1607) #4
  br label %sw.epilog

sw.bb8:                                           ; preds = %entry
  %6 = load %struct.mbedtls_psa_hash_operation_t*, %struct.mbedtls_psa_hash_operation_t** %target_operation.addr, align 8
  %ctx9 = getelementptr inbounds %struct.mbedtls_psa_hash_operation_t, %struct.mbedtls_psa_hash_operation_t* %6, i32 0, i32 1
  %sha1 = bitcast %union.anon* %ctx9 to %struct.mbedtls_sha1_context*
  %7 = load %struct.mbedtls_psa_hash_operation_t*, %struct.mbedtls_psa_hash_operation_t** %source_operation.addr, align 8
  %ctx10 = getelementptr inbounds %struct.mbedtls_psa_hash_operation_t, %struct.mbedtls_psa_hash_operation_t* %7, i32 0, i32 1
  %sha111 = bitcast %union.anon* %ctx10 to %struct.mbedtls_sha1_context*
  call void @mbedtls_sha1_clone(%struct.mbedtls_sha1_context* noundef %sha1, %struct.mbedtls_sha1_context* noundef %sha111) #4
  br label %sw.epilog

sw.bb12:                                          ; preds = %entry
  %8 = load %struct.mbedtls_psa_hash_operation_t*, %struct.mbedtls_psa_hash_operation_t** %target_operation.addr, align 8
  %ctx13 = getelementptr inbounds %struct.mbedtls_psa_hash_operation_t, %struct.mbedtls_psa_hash_operation_t* %8, i32 0, i32 1
  %sha256 = bitcast %union.anon* %ctx13 to %struct.mbedtls_sha256_context*
  %9 = load %struct.mbedtls_psa_hash_operation_t*, %struct.mbedtls_psa_hash_operation_t** %source_operation.addr, align 8
  %ctx14 = getelementptr inbounds %struct.mbedtls_psa_hash_operation_t, %struct.mbedtls_psa_hash_operation_t* %9, i32 0, i32 1
  %sha25615 = bitcast %union.anon* %ctx14 to %struct.mbedtls_sha256_context*
  call void @mbedtls_sha256_clone(%struct.mbedtls_sha256_context* noundef %sha256, %struct.mbedtls_sha256_context* noundef %sha25615) #4
  br label %sw.epilog

sw.bb16:                                          ; preds = %entry
  %10 = load %struct.mbedtls_psa_hash_operation_t*, %struct.mbedtls_psa_hash_operation_t** %target_operation.addr, align 8
  %ctx17 = getelementptr inbounds %struct.mbedtls_psa_hash_operation_t, %struct.mbedtls_psa_hash_operation_t* %10, i32 0, i32 1
  %sha25618 = bitcast %union.anon* %ctx17 to %struct.mbedtls_sha256_context*
  %11 = load %struct.mbedtls_psa_hash_operation_t*, %struct.mbedtls_psa_hash_operation_t** %source_operation.addr, align 8
  %ctx19 = getelementptr inbounds %struct.mbedtls_psa_hash_operation_t, %struct.mbedtls_psa_hash_operation_t* %11, i32 0, i32 1
  %sha25620 = bitcast %union.anon* %ctx19 to %struct.mbedtls_sha256_context*
  call void @mbedtls_sha256_clone(%struct.mbedtls_sha256_context* noundef %sha25618, %struct.mbedtls_sha256_context* noundef %sha25620) #4
  br label %sw.epilog

sw.bb21:                                          ; preds = %entry
  %12 = load %struct.mbedtls_psa_hash_operation_t*, %struct.mbedtls_psa_hash_operation_t** %target_operation.addr, align 8
  %ctx22 = getelementptr inbounds %struct.mbedtls_psa_hash_operation_t, %struct.mbedtls_psa_hash_operation_t* %12, i32 0, i32 1
  %sha512 = bitcast %union.anon* %ctx22 to %struct.mbedtls_sha512_context*
  %13 = load %struct.mbedtls_psa_hash_operation_t*, %struct.mbedtls_psa_hash_operation_t** %source_operation.addr, align 8
  %ctx23 = getelementptr inbounds %struct.mbedtls_psa_hash_operation_t, %struct.mbedtls_psa_hash_operation_t* %13, i32 0, i32 1
  %sha51224 = bitcast %union.anon* %ctx23 to %struct.mbedtls_sha512_context*
  call void @mbedtls_sha512_clone(%struct.mbedtls_sha512_context* noundef %sha512, %struct.mbedtls_sha512_context* noundef %sha51224) #4
  br label %sw.epilog

sw.bb25:                                          ; preds = %entry
  %14 = load %struct.mbedtls_psa_hash_operation_t*, %struct.mbedtls_psa_hash_operation_t** %target_operation.addr, align 8
  %ctx26 = getelementptr inbounds %struct.mbedtls_psa_hash_operation_t, %struct.mbedtls_psa_hash_operation_t* %14, i32 0, i32 1
  %sha51227 = bitcast %union.anon* %ctx26 to %struct.mbedtls_sha512_context*
  %15 = load %struct.mbedtls_psa_hash_operation_t*, %struct.mbedtls_psa_hash_operation_t** %source_operation.addr, align 8
  %ctx28 = getelementptr inbounds %struct.mbedtls_psa_hash_operation_t, %struct.mbedtls_psa_hash_operation_t* %15, i32 0, i32 1
  %sha51229 = bitcast %union.anon* %ctx28 to %struct.mbedtls_sha512_context*
  call void @mbedtls_sha512_clone(%struct.mbedtls_sha512_context* noundef %sha51227, %struct.mbedtls_sha512_context* noundef %sha51229) #4
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %16 = load %struct.mbedtls_psa_hash_operation_t*, %struct.mbedtls_psa_hash_operation_t** %source_operation.addr, align 8
  %17 = load %struct.mbedtls_psa_hash_operation_t*, %struct.mbedtls_psa_hash_operation_t** %target_operation.addr, align 8
  store i32 -134, i32* %retval, align 4
  br label %return

sw.epilog:                                        ; preds = %sw.bb25, %sw.bb21, %sw.bb16, %sw.bb12, %sw.bb8, %sw.bb4, %sw.bb1
  %18 = load %struct.mbedtls_psa_hash_operation_t*, %struct.mbedtls_psa_hash_operation_t** %source_operation.addr, align 8
  %alg30 = getelementptr inbounds %struct.mbedtls_psa_hash_operation_t, %struct.mbedtls_psa_hash_operation_t* %18, i32 0, i32 0
  %19 = load i32, i32* %alg30, align 8
  %20 = load %struct.mbedtls_psa_hash_operation_t*, %struct.mbedtls_psa_hash_operation_t** %target_operation.addr, align 8
  %alg31 = getelementptr inbounds %struct.mbedtls_psa_hash_operation_t, %struct.mbedtls_psa_hash_operation_t* %20, i32 0, i32 0
  store i32 %19, i32* %alg31, align 8
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %sw.epilog, %sw.default, %sw.bb
  %21 = load i32, i32* %retval, align 4
  ret i32 %21
}

declare dso_local void @mbedtls_md5_clone(%struct.mbedtls_md5_context* noundef, %struct.mbedtls_md5_context* noundef) #1

declare dso_local void @mbedtls_ripemd160_clone(%struct.mbedtls_ripemd160_context* noundef, %struct.mbedtls_ripemd160_context* noundef) #1

declare dso_local void @mbedtls_sha1_clone(%struct.mbedtls_sha1_context* noundef, %struct.mbedtls_sha1_context* noundef) #1

declare dso_local void @mbedtls_sha256_clone(%struct.mbedtls_sha256_context* noundef, %struct.mbedtls_sha256_context* noundef) #1

declare dso_local void @mbedtls_sha512_clone(%struct.mbedtls_sha512_context* noundef, %struct.mbedtls_sha512_context* noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_psa_hash_update(%struct.mbedtls_psa_hash_operation_t* noundef %operation, i8* noundef %input, i64 noundef %input_length) #0 {
entry:
  %retval = alloca i32, align 4
  %operation.addr = alloca %struct.mbedtls_psa_hash_operation_t*, align 8
  %input.addr = alloca i8*, align 8
  %input_length.addr = alloca i64, align 8
  %ret = alloca i32, align 4
  store %struct.mbedtls_psa_hash_operation_t* %operation, %struct.mbedtls_psa_hash_operation_t** %operation.addr, align 8
  store i8* %input, i8** %input.addr, align 8
  store i64 %input_length, i64* %input_length.addr, align 8
  store i32 -110, i32* %ret, align 4
  %0 = load %struct.mbedtls_psa_hash_operation_t*, %struct.mbedtls_psa_hash_operation_t** %operation.addr, align 8
  %alg = getelementptr inbounds %struct.mbedtls_psa_hash_operation_t, %struct.mbedtls_psa_hash_operation_t* %0, i32 0, i32 0
  %1 = load i32, i32* %alg, align 8
  switch i32 %1, label %sw.default [
    i32 33554435, label %sw.bb
    i32 33554436, label %sw.bb1
    i32 33554437, label %sw.bb4
    i32 33554440, label %sw.bb7
    i32 33554441, label %sw.bb10
    i32 33554442, label %sw.bb14
    i32 33554443, label %sw.bb17
  ]

sw.bb:                                            ; preds = %entry
  %2 = load %struct.mbedtls_psa_hash_operation_t*, %struct.mbedtls_psa_hash_operation_t** %operation.addr, align 8
  %ctx = getelementptr inbounds %struct.mbedtls_psa_hash_operation_t, %struct.mbedtls_psa_hash_operation_t* %2, i32 0, i32 1
  %md5 = bitcast %union.anon* %ctx to %struct.mbedtls_md5_context*
  %3 = load i8*, i8** %input.addr, align 8
  %4 = load i64, i64* %input_length.addr, align 8
  %call = call i32 @mbedtls_md5_update(%struct.mbedtls_md5_context* noundef %md5, i8* noundef %3, i64 noundef %4) #4
  store i32 %call, i32* %ret, align 4
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  %5 = load %struct.mbedtls_psa_hash_operation_t*, %struct.mbedtls_psa_hash_operation_t** %operation.addr, align 8
  %ctx2 = getelementptr inbounds %struct.mbedtls_psa_hash_operation_t, %struct.mbedtls_psa_hash_operation_t* %5, i32 0, i32 1
  %ripemd160 = bitcast %union.anon* %ctx2 to %struct.mbedtls_ripemd160_context*
  %6 = load i8*, i8** %input.addr, align 8
  %7 = load i64, i64* %input_length.addr, align 8
  %call3 = call i32 @mbedtls_ripemd160_update(%struct.mbedtls_ripemd160_context* noundef %ripemd160, i8* noundef %6, i64 noundef %7) #4
  store i32 %call3, i32* %ret, align 4
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  %8 = load %struct.mbedtls_psa_hash_operation_t*, %struct.mbedtls_psa_hash_operation_t** %operation.addr, align 8
  %ctx5 = getelementptr inbounds %struct.mbedtls_psa_hash_operation_t, %struct.mbedtls_psa_hash_operation_t* %8, i32 0, i32 1
  %sha1 = bitcast %union.anon* %ctx5 to %struct.mbedtls_sha1_context*
  %9 = load i8*, i8** %input.addr, align 8
  %10 = load i64, i64* %input_length.addr, align 8
  %call6 = call i32 @mbedtls_sha1_update(%struct.mbedtls_sha1_context* noundef %sha1, i8* noundef %9, i64 noundef %10) #4
  store i32 %call6, i32* %ret, align 4
  br label %sw.epilog

sw.bb7:                                           ; preds = %entry
  %11 = load %struct.mbedtls_psa_hash_operation_t*, %struct.mbedtls_psa_hash_operation_t** %operation.addr, align 8
  %ctx8 = getelementptr inbounds %struct.mbedtls_psa_hash_operation_t, %struct.mbedtls_psa_hash_operation_t* %11, i32 0, i32 1
  %sha256 = bitcast %union.anon* %ctx8 to %struct.mbedtls_sha256_context*
  %12 = load i8*, i8** %input.addr, align 8
  %13 = load i64, i64* %input_length.addr, align 8
  %call9 = call i32 @mbedtls_sha256_update(%struct.mbedtls_sha256_context* noundef %sha256, i8* noundef %12, i64 noundef %13) #4
  store i32 %call9, i32* %ret, align 4
  br label %sw.epilog

sw.bb10:                                          ; preds = %entry
  %14 = load %struct.mbedtls_psa_hash_operation_t*, %struct.mbedtls_psa_hash_operation_t** %operation.addr, align 8
  %ctx11 = getelementptr inbounds %struct.mbedtls_psa_hash_operation_t, %struct.mbedtls_psa_hash_operation_t* %14, i32 0, i32 1
  %sha25612 = bitcast %union.anon* %ctx11 to %struct.mbedtls_sha256_context*
  %15 = load i8*, i8** %input.addr, align 8
  %16 = load i64, i64* %input_length.addr, align 8
  %call13 = call i32 @mbedtls_sha256_update(%struct.mbedtls_sha256_context* noundef %sha25612, i8* noundef %15, i64 noundef %16) #4
  store i32 %call13, i32* %ret, align 4
  br label %sw.epilog

sw.bb14:                                          ; preds = %entry
  %17 = load %struct.mbedtls_psa_hash_operation_t*, %struct.mbedtls_psa_hash_operation_t** %operation.addr, align 8
  %ctx15 = getelementptr inbounds %struct.mbedtls_psa_hash_operation_t, %struct.mbedtls_psa_hash_operation_t* %17, i32 0, i32 1
  %sha512 = bitcast %union.anon* %ctx15 to %struct.mbedtls_sha512_context*
  %18 = load i8*, i8** %input.addr, align 8
  %19 = load i64, i64* %input_length.addr, align 8
  %call16 = call i32 @mbedtls_sha512_update(%struct.mbedtls_sha512_context* noundef %sha512, i8* noundef %18, i64 noundef %19) #4
  store i32 %call16, i32* %ret, align 4
  br label %sw.epilog

sw.bb17:                                          ; preds = %entry
  %20 = load %struct.mbedtls_psa_hash_operation_t*, %struct.mbedtls_psa_hash_operation_t** %operation.addr, align 8
  %ctx18 = getelementptr inbounds %struct.mbedtls_psa_hash_operation_t, %struct.mbedtls_psa_hash_operation_t* %20, i32 0, i32 1
  %sha51219 = bitcast %union.anon* %ctx18 to %struct.mbedtls_sha512_context*
  %21 = load i8*, i8** %input.addr, align 8
  %22 = load i64, i64* %input_length.addr, align 8
  %call20 = call i32 @mbedtls_sha512_update(%struct.mbedtls_sha512_context* noundef %sha51219, i8* noundef %21, i64 noundef %22) #4
  store i32 %call20, i32* %ret, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %23 = load i8*, i8** %input.addr, align 8
  %24 = load i64, i64* %input_length.addr, align 8
  store i32 -137, i32* %retval, align 4
  br label %return

sw.epilog:                                        ; preds = %sw.bb17, %sw.bb14, %sw.bb10, %sw.bb7, %sw.bb4, %sw.bb1, %sw.bb
  %25 = load i32, i32* %ret, align 4
  %call21 = call i32 @mbedtls_to_psa_error(i32 noundef %25) #4
  store i32 %call21, i32* %retval, align 4
  br label %return

return:                                           ; preds = %sw.epilog, %sw.default
  %26 = load i32, i32* %retval, align 4
  ret i32 %26
}

declare dso_local i32 @mbedtls_md5_update(%struct.mbedtls_md5_context* noundef, i8* noundef, i64 noundef) #1

declare dso_local i32 @mbedtls_ripemd160_update(%struct.mbedtls_ripemd160_context* noundef, i8* noundef, i64 noundef) #1

declare dso_local i32 @mbedtls_sha1_update(%struct.mbedtls_sha1_context* noundef, i8* noundef, i64 noundef) #1

declare dso_local i32 @mbedtls_sha256_update(%struct.mbedtls_sha256_context* noundef, i8* noundef, i64 noundef) #1

declare dso_local i32 @mbedtls_sha512_update(%struct.mbedtls_sha512_context* noundef, i8* noundef, i64 noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_psa_hash_finish(%struct.mbedtls_psa_hash_operation_t* noundef %operation, i8* noundef %hash, i64 noundef %hash_size, i64* noundef %hash_length) #0 {
entry:
  %retval = alloca i32, align 4
  %operation.addr = alloca %struct.mbedtls_psa_hash_operation_t*, align 8
  %hash.addr = alloca i8*, align 8
  %hash_size.addr = alloca i64, align 8
  %hash_length.addr = alloca i64*, align 8
  %status = alloca i32, align 4
  %ret = alloca i32, align 4
  %actual_hash_length = alloca i64, align 8
  store %struct.mbedtls_psa_hash_operation_t* %operation, %struct.mbedtls_psa_hash_operation_t** %operation.addr, align 8
  store i8* %hash, i8** %hash.addr, align 8
  store i64 %hash_size, i64* %hash_size.addr, align 8
  store i64* %hash_length, i64** %hash_length.addr, align 8
  store i32 -110, i32* %ret, align 4
  %0 = load %struct.mbedtls_psa_hash_operation_t*, %struct.mbedtls_psa_hash_operation_t** %operation.addr, align 8
  %alg = getelementptr inbounds %struct.mbedtls_psa_hash_operation_t, %struct.mbedtls_psa_hash_operation_t* %0, i32 0, i32 0
  %1 = load i32, i32* %alg, align 8
  %and = and i32 %1, 255
  %or = or i32 33554432, %and
  %cmp = icmp eq i32 %or, 33554435
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end92

cond.false:                                       ; preds = %entry
  %2 = load %struct.mbedtls_psa_hash_operation_t*, %struct.mbedtls_psa_hash_operation_t** %operation.addr, align 8
  %alg1 = getelementptr inbounds %struct.mbedtls_psa_hash_operation_t, %struct.mbedtls_psa_hash_operation_t* %2, i32 0, i32 0
  %3 = load i32, i32* %alg1, align 8
  %and2 = and i32 %3, 255
  %or3 = or i32 33554432, %and2
  %cmp4 = icmp eq i32 %or3, 33554436
  br i1 %cmp4, label %cond.true5, label %cond.false6

cond.true5:                                       ; preds = %cond.false
  br label %cond.end90

cond.false6:                                      ; preds = %cond.false
  %4 = load %struct.mbedtls_psa_hash_operation_t*, %struct.mbedtls_psa_hash_operation_t** %operation.addr, align 8
  %alg7 = getelementptr inbounds %struct.mbedtls_psa_hash_operation_t, %struct.mbedtls_psa_hash_operation_t* %4, i32 0, i32 0
  %5 = load i32, i32* %alg7, align 8
  %and8 = and i32 %5, 255
  %or9 = or i32 33554432, %and8
  %cmp10 = icmp eq i32 %or9, 33554437
  br i1 %cmp10, label %cond.true11, label %cond.false12

cond.true11:                                      ; preds = %cond.false6
  br label %cond.end88

cond.false12:                                     ; preds = %cond.false6
  %6 = load %struct.mbedtls_psa_hash_operation_t*, %struct.mbedtls_psa_hash_operation_t** %operation.addr, align 8
  %alg13 = getelementptr inbounds %struct.mbedtls_psa_hash_operation_t, %struct.mbedtls_psa_hash_operation_t* %6, i32 0, i32 0
  %7 = load i32, i32* %alg13, align 8
  %and14 = and i32 %7, 255
  %or15 = or i32 33554432, %and14
  %cmp16 = icmp eq i32 %or15, 33554440
  br i1 %cmp16, label %cond.true17, label %cond.false18

cond.true17:                                      ; preds = %cond.false12
  br label %cond.end86

cond.false18:                                     ; preds = %cond.false12
  %8 = load %struct.mbedtls_psa_hash_operation_t*, %struct.mbedtls_psa_hash_operation_t** %operation.addr, align 8
  %alg19 = getelementptr inbounds %struct.mbedtls_psa_hash_operation_t, %struct.mbedtls_psa_hash_operation_t* %8, i32 0, i32 0
  %9 = load i32, i32* %alg19, align 8
  %and20 = and i32 %9, 255
  %or21 = or i32 33554432, %and20
  %cmp22 = icmp eq i32 %or21, 33554441
  br i1 %cmp22, label %cond.true23, label %cond.false24

cond.true23:                                      ; preds = %cond.false18
  br label %cond.end84

cond.false24:                                     ; preds = %cond.false18
  %10 = load %struct.mbedtls_psa_hash_operation_t*, %struct.mbedtls_psa_hash_operation_t** %operation.addr, align 8
  %alg25 = getelementptr inbounds %struct.mbedtls_psa_hash_operation_t, %struct.mbedtls_psa_hash_operation_t* %10, i32 0, i32 0
  %11 = load i32, i32* %alg25, align 8
  %and26 = and i32 %11, 255
  %or27 = or i32 33554432, %and26
  %cmp28 = icmp eq i32 %or27, 33554442
  br i1 %cmp28, label %cond.true29, label %cond.false30

cond.true29:                                      ; preds = %cond.false24
  br label %cond.end82

cond.false30:                                     ; preds = %cond.false24
  %12 = load %struct.mbedtls_psa_hash_operation_t*, %struct.mbedtls_psa_hash_operation_t** %operation.addr, align 8
  %alg31 = getelementptr inbounds %struct.mbedtls_psa_hash_operation_t, %struct.mbedtls_psa_hash_operation_t* %12, i32 0, i32 0
  %13 = load i32, i32* %alg31, align 8
  %and32 = and i32 %13, 255
  %or33 = or i32 33554432, %and32
  %cmp34 = icmp eq i32 %or33, 33554443
  br i1 %cmp34, label %cond.true35, label %cond.false36

cond.true35:                                      ; preds = %cond.false30
  br label %cond.end80

cond.false36:                                     ; preds = %cond.false30
  %14 = load %struct.mbedtls_psa_hash_operation_t*, %struct.mbedtls_psa_hash_operation_t** %operation.addr, align 8
  %alg37 = getelementptr inbounds %struct.mbedtls_psa_hash_operation_t, %struct.mbedtls_psa_hash_operation_t* %14, i32 0, i32 0
  %15 = load i32, i32* %alg37, align 8
  %and38 = and i32 %15, 255
  %or39 = or i32 33554432, %and38
  %cmp40 = icmp eq i32 %or39, 33554444
  br i1 %cmp40, label %cond.true41, label %cond.false42

cond.true41:                                      ; preds = %cond.false36
  br label %cond.end78

cond.false42:                                     ; preds = %cond.false36
  %16 = load %struct.mbedtls_psa_hash_operation_t*, %struct.mbedtls_psa_hash_operation_t** %operation.addr, align 8
  %alg43 = getelementptr inbounds %struct.mbedtls_psa_hash_operation_t, %struct.mbedtls_psa_hash_operation_t* %16, i32 0, i32 0
  %17 = load i32, i32* %alg43, align 8
  %and44 = and i32 %17, 255
  %or45 = or i32 33554432, %and44
  %cmp46 = icmp eq i32 %or45, 33554445
  br i1 %cmp46, label %cond.true47, label %cond.false48

cond.true47:                                      ; preds = %cond.false42
  br label %cond.end76

cond.false48:                                     ; preds = %cond.false42
  %18 = load %struct.mbedtls_psa_hash_operation_t*, %struct.mbedtls_psa_hash_operation_t** %operation.addr, align 8
  %alg49 = getelementptr inbounds %struct.mbedtls_psa_hash_operation_t, %struct.mbedtls_psa_hash_operation_t* %18, i32 0, i32 0
  %19 = load i32, i32* %alg49, align 8
  %and50 = and i32 %19, 255
  %or51 = or i32 33554432, %and50
  %cmp52 = icmp eq i32 %or51, 33554448
  br i1 %cmp52, label %cond.true53, label %cond.false54

cond.true53:                                      ; preds = %cond.false48
  br label %cond.end74

cond.false54:                                     ; preds = %cond.false48
  %20 = load %struct.mbedtls_psa_hash_operation_t*, %struct.mbedtls_psa_hash_operation_t** %operation.addr, align 8
  %alg55 = getelementptr inbounds %struct.mbedtls_psa_hash_operation_t, %struct.mbedtls_psa_hash_operation_t* %20, i32 0, i32 0
  %21 = load i32, i32* %alg55, align 8
  %and56 = and i32 %21, 255
  %or57 = or i32 33554432, %and56
  %cmp58 = icmp eq i32 %or57, 33554449
  br i1 %cmp58, label %cond.true59, label %cond.false60

cond.true59:                                      ; preds = %cond.false54
  br label %cond.end72

cond.false60:                                     ; preds = %cond.false54
  %22 = load %struct.mbedtls_psa_hash_operation_t*, %struct.mbedtls_psa_hash_operation_t** %operation.addr, align 8
  %alg61 = getelementptr inbounds %struct.mbedtls_psa_hash_operation_t, %struct.mbedtls_psa_hash_operation_t* %22, i32 0, i32 0
  %23 = load i32, i32* %alg61, align 8
  %and62 = and i32 %23, 255
  %or63 = or i32 33554432, %and62
  %cmp64 = icmp eq i32 %or63, 33554450
  br i1 %cmp64, label %cond.true65, label %cond.false66

cond.true65:                                      ; preds = %cond.false60
  br label %cond.end

cond.false66:                                     ; preds = %cond.false60
  %24 = load %struct.mbedtls_psa_hash_operation_t*, %struct.mbedtls_psa_hash_operation_t** %operation.addr, align 8
  %alg67 = getelementptr inbounds %struct.mbedtls_psa_hash_operation_t, %struct.mbedtls_psa_hash_operation_t* %24, i32 0, i32 0
  %25 = load i32, i32* %alg67, align 8
  %and68 = and i32 %25, 255
  %or69 = or i32 33554432, %and68
  %cmp70 = icmp eq i32 %or69, 33554451
  %26 = zext i1 %cmp70 to i64
  %cond = select i1 %cmp70, i32 64, i32 0
  br label %cond.end

cond.end:                                         ; preds = %cond.false66, %cond.true65
  %cond71 = phi i32 [ 48, %cond.true65 ], [ %cond, %cond.false66 ]
  br label %cond.end72

cond.end72:                                       ; preds = %cond.end, %cond.true59
  %cond73 = phi i32 [ 32, %cond.true59 ], [ %cond71, %cond.end ]
  br label %cond.end74

cond.end74:                                       ; preds = %cond.end72, %cond.true53
  %cond75 = phi i32 [ 28, %cond.true53 ], [ %cond73, %cond.end72 ]
  br label %cond.end76

cond.end76:                                       ; preds = %cond.end74, %cond.true47
  %cond77 = phi i32 [ 32, %cond.true47 ], [ %cond75, %cond.end74 ]
  br label %cond.end78

cond.end78:                                       ; preds = %cond.end76, %cond.true41
  %cond79 = phi i32 [ 28, %cond.true41 ], [ %cond77, %cond.end76 ]
  br label %cond.end80

cond.end80:                                       ; preds = %cond.end78, %cond.true35
  %cond81 = phi i32 [ 64, %cond.true35 ], [ %cond79, %cond.end78 ]
  br label %cond.end82

cond.end82:                                       ; preds = %cond.end80, %cond.true29
  %cond83 = phi i32 [ 48, %cond.true29 ], [ %cond81, %cond.end80 ]
  br label %cond.end84

cond.end84:                                       ; preds = %cond.end82, %cond.true23
  %cond85 = phi i32 [ 32, %cond.true23 ], [ %cond83, %cond.end82 ]
  br label %cond.end86

cond.end86:                                       ; preds = %cond.end84, %cond.true17
  %cond87 = phi i32 [ 28, %cond.true17 ], [ %cond85, %cond.end84 ]
  br label %cond.end88

cond.end88:                                       ; preds = %cond.end86, %cond.true11
  %cond89 = phi i32 [ 20, %cond.true11 ], [ %cond87, %cond.end86 ]
  br label %cond.end90

cond.end90:                                       ; preds = %cond.end88, %cond.true5
  %cond91 = phi i32 [ 20, %cond.true5 ], [ %cond89, %cond.end88 ]
  br label %cond.end92

cond.end92:                                       ; preds = %cond.end90, %cond.true
  %cond93 = phi i32 [ 16, %cond.true ], [ %cond91, %cond.end90 ]
  %conv = sext i32 %cond93 to i64
  store i64 %conv, i64* %actual_hash_length, align 8
  %27 = load i64, i64* %hash_size.addr, align 8
  %28 = load i64*, i64** %hash_length.addr, align 8
  store i64 %27, i64* %28, align 8
  %29 = load i64, i64* %hash_size.addr, align 8
  %cmp94 = icmp ne i64 %29, 0
  br i1 %cmp94, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end92
  %30 = load i8*, i8** %hash.addr, align 8
  %31 = load i64, i64* %hash_size.addr, align 8
  %call = call i8* @memset(i8* noundef %30, i32 noundef 33, i64 noundef %31) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %cond.end92
  %32 = load i64, i64* %hash_size.addr, align 8
  %33 = load i64, i64* %actual_hash_length, align 8
  %cmp96 = icmp ult i64 %32, %33
  br i1 %cmp96, label %if.then98, label %if.end99

if.then98:                                        ; preds = %if.end
  store i32 -138, i32* %status, align 4
  br label %exit

if.end99:                                         ; preds = %if.end
  %34 = load %struct.mbedtls_psa_hash_operation_t*, %struct.mbedtls_psa_hash_operation_t** %operation.addr, align 8
  %alg100 = getelementptr inbounds %struct.mbedtls_psa_hash_operation_t, %struct.mbedtls_psa_hash_operation_t* %34, i32 0, i32 0
  %35 = load i32, i32* %alg100, align 8
  switch i32 %35, label %sw.default [
    i32 33554435, label %sw.bb
    i32 33554436, label %sw.bb102
    i32 33554437, label %sw.bb105
    i32 33554440, label %sw.bb108
    i32 33554441, label %sw.bb111
    i32 33554442, label %sw.bb115
    i32 33554443, label %sw.bb118
  ]

sw.bb:                                            ; preds = %if.end99
  %36 = load %struct.mbedtls_psa_hash_operation_t*, %struct.mbedtls_psa_hash_operation_t** %operation.addr, align 8
  %ctx = getelementptr inbounds %struct.mbedtls_psa_hash_operation_t, %struct.mbedtls_psa_hash_operation_t* %36, i32 0, i32 1
  %md5 = bitcast %union.anon* %ctx to %struct.mbedtls_md5_context*
  %37 = load i8*, i8** %hash.addr, align 8
  %call101 = call i32 @mbedtls_md5_finish(%struct.mbedtls_md5_context* noundef %md5, i8* noundef %37) #4
  store i32 %call101, i32* %ret, align 4
  br label %sw.epilog

sw.bb102:                                         ; preds = %if.end99
  %38 = load %struct.mbedtls_psa_hash_operation_t*, %struct.mbedtls_psa_hash_operation_t** %operation.addr, align 8
  %ctx103 = getelementptr inbounds %struct.mbedtls_psa_hash_operation_t, %struct.mbedtls_psa_hash_operation_t* %38, i32 0, i32 1
  %ripemd160 = bitcast %union.anon* %ctx103 to %struct.mbedtls_ripemd160_context*
  %39 = load i8*, i8** %hash.addr, align 8
  %call104 = call i32 @mbedtls_ripemd160_finish(%struct.mbedtls_ripemd160_context* noundef %ripemd160, i8* noundef %39) #4
  store i32 %call104, i32* %ret, align 4
  br label %sw.epilog

sw.bb105:                                         ; preds = %if.end99
  %40 = load %struct.mbedtls_psa_hash_operation_t*, %struct.mbedtls_psa_hash_operation_t** %operation.addr, align 8
  %ctx106 = getelementptr inbounds %struct.mbedtls_psa_hash_operation_t, %struct.mbedtls_psa_hash_operation_t* %40, i32 0, i32 1
  %sha1 = bitcast %union.anon* %ctx106 to %struct.mbedtls_sha1_context*
  %41 = load i8*, i8** %hash.addr, align 8
  %call107 = call i32 @mbedtls_sha1_finish(%struct.mbedtls_sha1_context* noundef %sha1, i8* noundef %41) #4
  store i32 %call107, i32* %ret, align 4
  br label %sw.epilog

sw.bb108:                                         ; preds = %if.end99
  %42 = load %struct.mbedtls_psa_hash_operation_t*, %struct.mbedtls_psa_hash_operation_t** %operation.addr, align 8
  %ctx109 = getelementptr inbounds %struct.mbedtls_psa_hash_operation_t, %struct.mbedtls_psa_hash_operation_t* %42, i32 0, i32 1
  %sha256 = bitcast %union.anon* %ctx109 to %struct.mbedtls_sha256_context*
  %43 = load i8*, i8** %hash.addr, align 8
  %call110 = call i32 @mbedtls_sha256_finish(%struct.mbedtls_sha256_context* noundef %sha256, i8* noundef %43) #4
  store i32 %call110, i32* %ret, align 4
  br label %sw.epilog

sw.bb111:                                         ; preds = %if.end99
  %44 = load %struct.mbedtls_psa_hash_operation_t*, %struct.mbedtls_psa_hash_operation_t** %operation.addr, align 8
  %ctx112 = getelementptr inbounds %struct.mbedtls_psa_hash_operation_t, %struct.mbedtls_psa_hash_operation_t* %44, i32 0, i32 1
  %sha256113 = bitcast %union.anon* %ctx112 to %struct.mbedtls_sha256_context*
  %45 = load i8*, i8** %hash.addr, align 8
  %call114 = call i32 @mbedtls_sha256_finish(%struct.mbedtls_sha256_context* noundef %sha256113, i8* noundef %45) #4
  store i32 %call114, i32* %ret, align 4
  br label %sw.epilog

sw.bb115:                                         ; preds = %if.end99
  %46 = load %struct.mbedtls_psa_hash_operation_t*, %struct.mbedtls_psa_hash_operation_t** %operation.addr, align 8
  %ctx116 = getelementptr inbounds %struct.mbedtls_psa_hash_operation_t, %struct.mbedtls_psa_hash_operation_t* %46, i32 0, i32 1
  %sha512 = bitcast %union.anon* %ctx116 to %struct.mbedtls_sha512_context*
  %47 = load i8*, i8** %hash.addr, align 8
  %call117 = call i32 @mbedtls_sha512_finish(%struct.mbedtls_sha512_context* noundef %sha512, i8* noundef %47) #4
  store i32 %call117, i32* %ret, align 4
  br label %sw.epilog

sw.bb118:                                         ; preds = %if.end99
  %48 = load %struct.mbedtls_psa_hash_operation_t*, %struct.mbedtls_psa_hash_operation_t** %operation.addr, align 8
  %ctx119 = getelementptr inbounds %struct.mbedtls_psa_hash_operation_t, %struct.mbedtls_psa_hash_operation_t* %48, i32 0, i32 1
  %sha512120 = bitcast %union.anon* %ctx119 to %struct.mbedtls_sha512_context*
  %49 = load i8*, i8** %hash.addr, align 8
  %call121 = call i32 @mbedtls_sha512_finish(%struct.mbedtls_sha512_context* noundef %sha512120, i8* noundef %49) #4
  store i32 %call121, i32* %ret, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %if.end99
  %50 = load i8*, i8** %hash.addr, align 8
  store i32 -137, i32* %retval, align 4
  br label %return

sw.epilog:                                        ; preds = %sw.bb118, %sw.bb115, %sw.bb111, %sw.bb108, %sw.bb105, %sw.bb102, %sw.bb
  %51 = load i32, i32* %ret, align 4
  %call122 = call i32 @mbedtls_to_psa_error(i32 noundef %51) #4
  store i32 %call122, i32* %status, align 4
  br label %exit

exit:                                             ; preds = %sw.epilog, %if.then98
  %52 = load i32, i32* %status, align 4
  %cmp123 = icmp eq i32 %52, 0
  br i1 %cmp123, label %if.then125, label %if.end126

if.then125:                                       ; preds = %exit
  %53 = load i64, i64* %actual_hash_length, align 8
  %54 = load i64*, i64** %hash_length.addr, align 8
  store i64 %53, i64* %54, align 8
  br label %if.end126

if.end126:                                        ; preds = %if.then125, %exit
  %55 = load i32, i32* %status, align 4
  store i32 %55, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end126, %sw.default
  %56 = load i32, i32* %retval, align 4
  ret i32 %56
}

; Function Attrs: nounwind
declare dso_local i8* @memset(i8* noundef, i32 noundef, i64 noundef) #2

declare dso_local i32 @mbedtls_md5_finish(%struct.mbedtls_md5_context* noundef, i8* noundef) #1

declare dso_local i32 @mbedtls_ripemd160_finish(%struct.mbedtls_ripemd160_context* noundef, i8* noundef) #1

declare dso_local i32 @mbedtls_sha1_finish(%struct.mbedtls_sha1_context* noundef, i8* noundef) #1

declare dso_local i32 @mbedtls_sha256_finish(%struct.mbedtls_sha256_context* noundef, i8* noundef) #1

declare dso_local i32 @mbedtls_sha512_finish(%struct.mbedtls_sha512_context* noundef, i8* noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_psa_hash_compute(i32 noundef %alg, i8* noundef %input, i64 noundef %input_length, i8* noundef %hash, i64 noundef %hash_size, i64* noundef %hash_length) #0 {
entry:
  %retval = alloca i32, align 4
  %alg.addr = alloca i32, align 4
  %input.addr = alloca i8*, align 8
  %input_length.addr = alloca i64, align 8
  %hash.addr = alloca i8*, align 8
  %hash_size.addr = alloca i64, align 8
  %hash_length.addr = alloca i64*, align 8
  %operation = alloca %struct.mbedtls_psa_hash_operation_t, align 8
  %status = alloca i32, align 4
  %abort_status = alloca i32, align 4
  store i32 %alg, i32* %alg.addr, align 4
  store i8* %input, i8** %input.addr, align 8
  store i64 %input_length, i64* %input_length.addr, align 8
  store i8* %hash, i8** %hash.addr, align 8
  store i64 %hash_size, i64* %hash_size.addr, align 8
  store i64* %hash_length, i64** %hash_length.addr, align 8
  %0 = bitcast %struct.mbedtls_psa_hash_operation_t* %operation to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %0, i8 0, i64 224, i1 false)
  %1 = bitcast i8* %0 to { i32, [4 x i8], { i32, [212 x i8] } }*
  %2 = getelementptr inbounds { i32, [4 x i8], { i32, [212 x i8] } }, { i32, [4 x i8], { i32, [212 x i8] } }* %1, i32 0, i32 2
  store i32 -151, i32* %status, align 4
  store i32 -151, i32* %abort_status, align 4
  %3 = load i64, i64* %hash_size.addr, align 8
  %4 = load i64*, i64** %hash_length.addr, align 8
  store i64 %3, i64* %4, align 8
  %5 = load i32, i32* %alg.addr, align 4
  %call = call i32 @mbedtls_psa_hash_setup(%struct.mbedtls_psa_hash_operation_t* noundef %operation, i32 noundef %5) #4
  store i32 %call, i32* %status, align 4
  %6 = load i32, i32* %status, align 4
  %cmp = icmp ne i32 %6, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %exit

if.end:                                           ; preds = %entry
  %7 = load i8*, i8** %input.addr, align 8
  %8 = load i64, i64* %input_length.addr, align 8
  %call1 = call i32 @mbedtls_psa_hash_update(%struct.mbedtls_psa_hash_operation_t* noundef %operation, i8* noundef %7, i64 noundef %8) #4
  store i32 %call1, i32* %status, align 4
  %9 = load i32, i32* %status, align 4
  %cmp2 = icmp ne i32 %9, 0
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  br label %exit

if.end4:                                          ; preds = %if.end
  %10 = load i8*, i8** %hash.addr, align 8
  %11 = load i64, i64* %hash_size.addr, align 8
  %12 = load i64*, i64** %hash_length.addr, align 8
  %call5 = call i32 @mbedtls_psa_hash_finish(%struct.mbedtls_psa_hash_operation_t* noundef %operation, i8* noundef %10, i64 noundef %11, i64* noundef %12) #4
  store i32 %call5, i32* %status, align 4
  %13 = load i32, i32* %status, align 4
  %cmp6 = icmp ne i32 %13, 0
  br i1 %cmp6, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.end4
  br label %exit

if.end8:                                          ; preds = %if.end4
  br label %exit

exit:                                             ; preds = %if.end8, %if.then7, %if.then3, %if.then
  %call9 = call i32 @mbedtls_psa_hash_abort(%struct.mbedtls_psa_hash_operation_t* noundef %operation) #4
  store i32 %call9, i32* %abort_status, align 4
  %14 = load i32, i32* %status, align 4
  %cmp10 = icmp eq i32 %14, 0
  br i1 %cmp10, label %if.then11, label %if.else

if.then11:                                        ; preds = %exit
  %15 = load i32, i32* %abort_status, align 4
  store i32 %15, i32* %retval, align 4
  br label %return

if.else:                                          ; preds = %exit
  %16 = load i32, i32* %status, align 4
  store i32 %16, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.else, %if.then11
  %17 = load i32, i32* %retval, align 4
  ret i32 %17
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { nobuiltin "no-builtins" }
attributes #5 = { nobuiltin nounwind "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.0"}
