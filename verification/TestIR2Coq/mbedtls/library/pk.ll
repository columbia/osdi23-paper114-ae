; ModuleID = 'pk.c'
source_filename = "pk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mbedtls_pk_info_t = type { i32, i8*, i64 (i8*)*, i32 (i32)*, i32 (i8*, i32, i8*, i64, i8*, i64)*, i32 (i8*, i32, i8*, i64, i8*, i64, i64*, i32 (i8*, i8*, i64)*, i8*)*, i32 (i8*, i8*, i64, i8*, i64*, i64, i32 (i8*, i8*, i64)*, i8*)*, i32 (i8*, i8*, i64, i8*, i64*, i64, i32 (i8*, i8*, i64)*, i8*)*, i32 (i8*, i8*, i32 (i8*, i8*, i64)*, i8*)*, i8* ()*, void (i8*)*, void (i8*, %struct.mbedtls_pk_debug_item*)* }
%struct.mbedtls_pk_debug_item = type { i32, i8*, i8* }
%struct.mbedtls_pk_context = type { %struct.mbedtls_pk_info_t*, i8* }
%struct.mbedtls_rsa_alt_context = type { i8*, i32 (i8*, i64*, i8*, i8*, i64)*, i32 (i8*, i32 (i8*, i8*, i64)*, i8*, i32, i32, i8*, i8*)*, i64 (i8*)* }
%struct.mbedtls_md_info_t = type opaque
%struct.mbedtls_pk_rsassa_pss_options = type { i32, i32 }
%struct.mbedtls_rsa_context = type { i32, i64, %struct.mbedtls_mpi, %struct.mbedtls_mpi, %struct.mbedtls_mpi, %struct.mbedtls_mpi, %struct.mbedtls_mpi, %struct.mbedtls_mpi, %struct.mbedtls_mpi, %struct.mbedtls_mpi, %struct.mbedtls_mpi, %struct.mbedtls_mpi, %struct.mbedtls_mpi, %struct.mbedtls_mpi, %struct.mbedtls_mpi, i32, i32 }
%struct.mbedtls_mpi = type { i32, i64, i64* }

@mbedtls_rsa_info = external dso_local constant %struct.mbedtls_pk_info_t, align 8
@mbedtls_eckey_info = external dso_local constant %struct.mbedtls_pk_info_t, align 8
@mbedtls_eckeydh_info = external dso_local constant %struct.mbedtls_pk_info_t, align 8
@mbedtls_ecdsa_info = external dso_local constant %struct.mbedtls_pk_info_t, align 8
@mbedtls_rsa_alt_info = external dso_local constant %struct.mbedtls_pk_info_t, align 8
@.str = private unnamed_addr constant [11 x i8] c"invalid PK\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mbedtls_pk_init(%struct.mbedtls_pk_context* noundef %ctx) #0 {
entry:
  %ctx.addr = alloca %struct.mbedtls_pk_context*, align 8
  store %struct.mbedtls_pk_context* %ctx, %struct.mbedtls_pk_context** %ctx.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  %0 = load %struct.mbedtls_pk_context*, %struct.mbedtls_pk_context** %ctx.addr, align 8
  %pk_info = getelementptr inbounds %struct.mbedtls_pk_context, %struct.mbedtls_pk_context* %0, i32 0, i32 0
  store %struct.mbedtls_pk_info_t* null, %struct.mbedtls_pk_info_t** %pk_info, align 8
  %1 = load %struct.mbedtls_pk_context*, %struct.mbedtls_pk_context** %ctx.addr, align 8
  %pk_ctx = getelementptr inbounds %struct.mbedtls_pk_context, %struct.mbedtls_pk_context* %1, i32 0, i32 1
  store i8* null, i8** %pk_ctx, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mbedtls_pk_free(%struct.mbedtls_pk_context* noundef %ctx) #0 {
entry:
  %ctx.addr = alloca %struct.mbedtls_pk_context*, align 8
  store %struct.mbedtls_pk_context* %ctx, %struct.mbedtls_pk_context** %ctx.addr, align 8
  %0 = load %struct.mbedtls_pk_context*, %struct.mbedtls_pk_context** %ctx.addr, align 8
  %cmp = icmp eq %struct.mbedtls_pk_context* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct.mbedtls_pk_context*, %struct.mbedtls_pk_context** %ctx.addr, align 8
  %pk_info = getelementptr inbounds %struct.mbedtls_pk_context, %struct.mbedtls_pk_context* %1, i32 0, i32 0
  %2 = load %struct.mbedtls_pk_info_t*, %struct.mbedtls_pk_info_t** %pk_info, align 8
  %cmp1 = icmp ne %struct.mbedtls_pk_info_t* %2, null
  br i1 %cmp1, label %if.then2, label %if.end4

if.then2:                                         ; preds = %if.end
  %3 = load %struct.mbedtls_pk_context*, %struct.mbedtls_pk_context** %ctx.addr, align 8
  %pk_info3 = getelementptr inbounds %struct.mbedtls_pk_context, %struct.mbedtls_pk_context* %3, i32 0, i32 0
  %4 = load %struct.mbedtls_pk_info_t*, %struct.mbedtls_pk_info_t** %pk_info3, align 8
  %ctx_free_func = getelementptr inbounds %struct.mbedtls_pk_info_t, %struct.mbedtls_pk_info_t* %4, i32 0, i32 10
  %5 = load void (i8*)*, void (i8*)** %ctx_free_func, align 8
  %6 = load %struct.mbedtls_pk_context*, %struct.mbedtls_pk_context** %ctx.addr, align 8
  %pk_ctx = getelementptr inbounds %struct.mbedtls_pk_context, %struct.mbedtls_pk_context* %6, i32 0, i32 1
  %7 = load i8*, i8** %pk_ctx, align 8
  call void %5(i8* noundef %7) #2
  br label %if.end4

if.end4:                                          ; preds = %if.then2, %if.end
  %8 = load %struct.mbedtls_pk_context*, %struct.mbedtls_pk_context** %ctx.addr, align 8
  %9 = bitcast %struct.mbedtls_pk_context* %8 to i8*
  call void @mbedtls_platform_zeroize(i8* noundef %9, i64 noundef 16) #2
  br label %return

return:                                           ; preds = %if.end4, %if.then
  ret void
}

declare dso_local void @mbedtls_platform_zeroize(i8* noundef, i64 noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.mbedtls_pk_info_t* @mbedtls_pk_info_from_type(i32 noundef %pk_type) #0 {
entry:
  %retval = alloca %struct.mbedtls_pk_info_t*, align 8
  %pk_type.addr = alloca i32, align 4
  store i32 %pk_type, i32* %pk_type.addr, align 4
  %0 = load i32, i32* %pk_type.addr, align 4
  switch i32 %0, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb1
    i32 3, label %sw.bb2
    i32 4, label %sw.bb3
  ]

sw.bb:                                            ; preds = %entry
  store %struct.mbedtls_pk_info_t* @mbedtls_rsa_info, %struct.mbedtls_pk_info_t** %retval, align 8
  br label %return

sw.bb1:                                           ; preds = %entry
  store %struct.mbedtls_pk_info_t* @mbedtls_eckey_info, %struct.mbedtls_pk_info_t** %retval, align 8
  br label %return

sw.bb2:                                           ; preds = %entry
  store %struct.mbedtls_pk_info_t* @mbedtls_eckeydh_info, %struct.mbedtls_pk_info_t** %retval, align 8
  br label %return

sw.bb3:                                           ; preds = %entry
  store %struct.mbedtls_pk_info_t* @mbedtls_ecdsa_info, %struct.mbedtls_pk_info_t** %retval, align 8
  br label %return

sw.default:                                       ; preds = %entry
  store %struct.mbedtls_pk_info_t* null, %struct.mbedtls_pk_info_t** %retval, align 8
  br label %return

return:                                           ; preds = %sw.default, %sw.bb3, %sw.bb2, %sw.bb1, %sw.bb
  %1 = load %struct.mbedtls_pk_info_t*, %struct.mbedtls_pk_info_t** %retval, align 8
  ret %struct.mbedtls_pk_info_t* %1
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_pk_setup(%struct.mbedtls_pk_context* noundef %ctx, %struct.mbedtls_pk_info_t* noundef %info) #0 {
entry:
  %retval = alloca i32, align 4
  %ctx.addr = alloca %struct.mbedtls_pk_context*, align 8
  %info.addr = alloca %struct.mbedtls_pk_info_t*, align 8
  store %struct.mbedtls_pk_context* %ctx, %struct.mbedtls_pk_context** %ctx.addr, align 8
  store %struct.mbedtls_pk_info_t* %info, %struct.mbedtls_pk_info_t** %info.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  %0 = load %struct.mbedtls_pk_info_t*, %struct.mbedtls_pk_info_t** %info.addr, align 8
  %cmp = icmp eq %struct.mbedtls_pk_info_t* %0, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.end
  %1 = load %struct.mbedtls_pk_context*, %struct.mbedtls_pk_context** %ctx.addr, align 8
  %pk_info = getelementptr inbounds %struct.mbedtls_pk_context, %struct.mbedtls_pk_context* %1, i32 0, i32 0
  %2 = load %struct.mbedtls_pk_info_t*, %struct.mbedtls_pk_info_t** %pk_info, align 8
  %cmp1 = icmp ne %struct.mbedtls_pk_info_t* %2, null
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %do.end
  store i32 -16000, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %3 = load %struct.mbedtls_pk_info_t*, %struct.mbedtls_pk_info_t** %info.addr, align 8
  %ctx_alloc_func = getelementptr inbounds %struct.mbedtls_pk_info_t, %struct.mbedtls_pk_info_t* %3, i32 0, i32 9
  %4 = load i8* ()*, i8* ()** %ctx_alloc_func, align 8
  %call = call i8* %4() #2
  %5 = load %struct.mbedtls_pk_context*, %struct.mbedtls_pk_context** %ctx.addr, align 8
  %pk_ctx = getelementptr inbounds %struct.mbedtls_pk_context, %struct.mbedtls_pk_context* %5, i32 0, i32 1
  store i8* %call, i8** %pk_ctx, align 8
  %cmp2 = icmp eq i8* %call, null
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  store i32 -16256, i32* %retval, align 4
  br label %return

if.end4:                                          ; preds = %if.end
  %6 = load %struct.mbedtls_pk_info_t*, %struct.mbedtls_pk_info_t** %info.addr, align 8
  %7 = load %struct.mbedtls_pk_context*, %struct.mbedtls_pk_context** %ctx.addr, align 8
  %pk_info5 = getelementptr inbounds %struct.mbedtls_pk_context, %struct.mbedtls_pk_context* %7, i32 0, i32 0
  store %struct.mbedtls_pk_info_t* %6, %struct.mbedtls_pk_info_t** %pk_info5, align 8
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end4, %if.then3, %if.then
  %8 = load i32, i32* %retval, align 4
  ret i32 %8
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_pk_setup_rsa_alt(%struct.mbedtls_pk_context* noundef %ctx, i8* noundef %key, i32 (i8*, i64*, i8*, i8*, i64)* noundef %decrypt_func, i32 (i8*, i32 (i8*, i8*, i64)*, i8*, i32, i32, i8*, i8*)* noundef %sign_func, i64 (i8*)* noundef %key_len_func) #0 {
entry:
  %retval = alloca i32, align 4
  %ctx.addr = alloca %struct.mbedtls_pk_context*, align 8
  %key.addr = alloca i8*, align 8
  %decrypt_func.addr = alloca i32 (i8*, i64*, i8*, i8*, i64)*, align 8
  %sign_func.addr = alloca i32 (i8*, i32 (i8*, i8*, i64)*, i8*, i32, i32, i8*, i8*)*, align 8
  %key_len_func.addr = alloca i64 (i8*)*, align 8
  %rsa_alt = alloca %struct.mbedtls_rsa_alt_context*, align 8
  %info = alloca %struct.mbedtls_pk_info_t*, align 8
  store %struct.mbedtls_pk_context* %ctx, %struct.mbedtls_pk_context** %ctx.addr, align 8
  store i8* %key, i8** %key.addr, align 8
  store i32 (i8*, i64*, i8*, i8*, i64)* %decrypt_func, i32 (i8*, i64*, i8*, i8*, i64)** %decrypt_func.addr, align 8
  store i32 (i8*, i32 (i8*, i8*, i64)*, i8*, i32, i32, i8*, i8*)* %sign_func, i32 (i8*, i32 (i8*, i8*, i64)*, i8*, i32, i32, i8*, i8*)** %sign_func.addr, align 8
  store i64 (i8*)* %key_len_func, i64 (i8*)** %key_len_func.addr, align 8
  store %struct.mbedtls_pk_info_t* @mbedtls_rsa_alt_info, %struct.mbedtls_pk_info_t** %info, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  %0 = load %struct.mbedtls_pk_context*, %struct.mbedtls_pk_context** %ctx.addr, align 8
  %pk_info = getelementptr inbounds %struct.mbedtls_pk_context, %struct.mbedtls_pk_context* %0, i32 0, i32 0
  %1 = load %struct.mbedtls_pk_info_t*, %struct.mbedtls_pk_info_t** %pk_info, align 8
  %cmp = icmp ne %struct.mbedtls_pk_info_t* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.end
  store i32 -16000, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %do.end
  %2 = load %struct.mbedtls_pk_info_t*, %struct.mbedtls_pk_info_t** %info, align 8
  %ctx_alloc_func = getelementptr inbounds %struct.mbedtls_pk_info_t, %struct.mbedtls_pk_info_t* %2, i32 0, i32 9
  %3 = load i8* ()*, i8* ()** %ctx_alloc_func, align 8
  %call = call i8* %3() #2
  %4 = load %struct.mbedtls_pk_context*, %struct.mbedtls_pk_context** %ctx.addr, align 8
  %pk_ctx = getelementptr inbounds %struct.mbedtls_pk_context, %struct.mbedtls_pk_context* %4, i32 0, i32 1
  store i8* %call, i8** %pk_ctx, align 8
  %cmp1 = icmp eq i8* %call, null
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  store i32 -16256, i32* %retval, align 4
  br label %return

if.end3:                                          ; preds = %if.end
  %5 = load %struct.mbedtls_pk_info_t*, %struct.mbedtls_pk_info_t** %info, align 8
  %6 = load %struct.mbedtls_pk_context*, %struct.mbedtls_pk_context** %ctx.addr, align 8
  %pk_info4 = getelementptr inbounds %struct.mbedtls_pk_context, %struct.mbedtls_pk_context* %6, i32 0, i32 0
  store %struct.mbedtls_pk_info_t* %5, %struct.mbedtls_pk_info_t** %pk_info4, align 8
  %7 = load %struct.mbedtls_pk_context*, %struct.mbedtls_pk_context** %ctx.addr, align 8
  %pk_ctx5 = getelementptr inbounds %struct.mbedtls_pk_context, %struct.mbedtls_pk_context* %7, i32 0, i32 1
  %8 = load i8*, i8** %pk_ctx5, align 8
  %9 = bitcast i8* %8 to %struct.mbedtls_rsa_alt_context*
  store %struct.mbedtls_rsa_alt_context* %9, %struct.mbedtls_rsa_alt_context** %rsa_alt, align 8
  %10 = load i8*, i8** %key.addr, align 8
  %11 = load %struct.mbedtls_rsa_alt_context*, %struct.mbedtls_rsa_alt_context** %rsa_alt, align 8
  %key6 = getelementptr inbounds %struct.mbedtls_rsa_alt_context, %struct.mbedtls_rsa_alt_context* %11, i32 0, i32 0
  store i8* %10, i8** %key6, align 8
  %12 = load i32 (i8*, i64*, i8*, i8*, i64)*, i32 (i8*, i64*, i8*, i8*, i64)** %decrypt_func.addr, align 8
  %13 = load %struct.mbedtls_rsa_alt_context*, %struct.mbedtls_rsa_alt_context** %rsa_alt, align 8
  %decrypt_func7 = getelementptr inbounds %struct.mbedtls_rsa_alt_context, %struct.mbedtls_rsa_alt_context* %13, i32 0, i32 1
  store i32 (i8*, i64*, i8*, i8*, i64)* %12, i32 (i8*, i64*, i8*, i8*, i64)** %decrypt_func7, align 8
  %14 = load i32 (i8*, i32 (i8*, i8*, i64)*, i8*, i32, i32, i8*, i8*)*, i32 (i8*, i32 (i8*, i8*, i64)*, i8*, i32, i32, i8*, i8*)** %sign_func.addr, align 8
  %15 = load %struct.mbedtls_rsa_alt_context*, %struct.mbedtls_rsa_alt_context** %rsa_alt, align 8
  %sign_func8 = getelementptr inbounds %struct.mbedtls_rsa_alt_context, %struct.mbedtls_rsa_alt_context* %15, i32 0, i32 2
  store i32 (i8*, i32 (i8*, i8*, i64)*, i8*, i32, i32, i8*, i8*)* %14, i32 (i8*, i32 (i8*, i8*, i64)*, i8*, i32, i32, i8*, i8*)** %sign_func8, align 8
  %16 = load i64 (i8*)*, i64 (i8*)** %key_len_func.addr, align 8
  %17 = load %struct.mbedtls_rsa_alt_context*, %struct.mbedtls_rsa_alt_context** %rsa_alt, align 8
  %key_len_func9 = getelementptr inbounds %struct.mbedtls_rsa_alt_context, %struct.mbedtls_rsa_alt_context* %17, i32 0, i32 3
  store i64 (i8*)* %16, i64 (i8*)** %key_len_func9, align 8
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end3, %if.then2, %if.then
  %18 = load i32, i32* %retval, align 4
  ret i32 %18
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_pk_can_do(%struct.mbedtls_pk_context* noundef %ctx, i32 noundef %type) #0 {
entry:
  %retval = alloca i32, align 4
  %ctx.addr = alloca %struct.mbedtls_pk_context*, align 8
  %type.addr = alloca i32, align 4
  store %struct.mbedtls_pk_context* %ctx, %struct.mbedtls_pk_context** %ctx.addr, align 8
  store i32 %type, i32* %type.addr, align 4
  %0 = load %struct.mbedtls_pk_context*, %struct.mbedtls_pk_context** %ctx.addr, align 8
  %cmp = icmp eq %struct.mbedtls_pk_context* %0, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load %struct.mbedtls_pk_context*, %struct.mbedtls_pk_context** %ctx.addr, align 8
  %pk_info = getelementptr inbounds %struct.mbedtls_pk_context, %struct.mbedtls_pk_context* %1, i32 0, i32 0
  %2 = load %struct.mbedtls_pk_info_t*, %struct.mbedtls_pk_info_t** %pk_info, align 8
  %cmp1 = icmp eq %struct.mbedtls_pk_info_t* %2, null
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 0, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %3 = load %struct.mbedtls_pk_context*, %struct.mbedtls_pk_context** %ctx.addr, align 8
  %pk_info2 = getelementptr inbounds %struct.mbedtls_pk_context, %struct.mbedtls_pk_context* %3, i32 0, i32 0
  %4 = load %struct.mbedtls_pk_info_t*, %struct.mbedtls_pk_info_t** %pk_info2, align 8
  %can_do = getelementptr inbounds %struct.mbedtls_pk_info_t, %struct.mbedtls_pk_info_t* %4, i32 0, i32 3
  %5 = load i32 (i32)*, i32 (i32)** %can_do, align 8
  %6 = load i32, i32* %type.addr, align 4
  %call = call i32 %5(i32 noundef %6) #2
  store i32 %call, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %7 = load i32, i32* %retval, align 4
  ret i32 %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_pk_verify_restartable(%struct.mbedtls_pk_context* noundef %ctx, i32 noundef %md_alg, i8* noundef %hash, i64 noundef %hash_len, i8* noundef %sig, i64 noundef %sig_len, i8* noundef %rs_ctx) #0 {
entry:
  %retval = alloca i32, align 4
  %ctx.addr = alloca %struct.mbedtls_pk_context*, align 8
  %md_alg.addr = alloca i32, align 4
  %hash.addr = alloca i8*, align 8
  %hash_len.addr = alloca i64, align 8
  %sig.addr = alloca i8*, align 8
  %sig_len.addr = alloca i64, align 8
  %rs_ctx.addr = alloca i8*, align 8
  store %struct.mbedtls_pk_context* %ctx, %struct.mbedtls_pk_context** %ctx.addr, align 8
  store i32 %md_alg, i32* %md_alg.addr, align 4
  store i8* %hash, i8** %hash.addr, align 8
  store i64 %hash_len, i64* %hash_len.addr, align 8
  store i8* %sig, i8** %sig.addr, align 8
  store i64 %sig_len, i64* %sig_len.addr, align 8
  store i8* %rs_ctx, i8** %rs_ctx.addr, align 8
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
  %0 = load %struct.mbedtls_pk_context*, %struct.mbedtls_pk_context** %ctx.addr, align 8
  %pk_info = getelementptr inbounds %struct.mbedtls_pk_context, %struct.mbedtls_pk_context* %0, i32 0, i32 0
  %1 = load %struct.mbedtls_pk_info_t*, %struct.mbedtls_pk_info_t** %pk_info, align 8
  %cmp = icmp eq %struct.mbedtls_pk_info_t* %1, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.end4
  %2 = load i32, i32* %md_alg.addr, align 4
  %call = call i32 @pk_hashlen_helper(i32 noundef %2, i64* noundef %hash_len.addr) #2
  %cmp5 = icmp ne i32 %call, 0
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %do.end4
  store i32 -16000, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %3 = load i8*, i8** %rs_ctx.addr, align 8
  %4 = load %struct.mbedtls_pk_context*, %struct.mbedtls_pk_context** %ctx.addr, align 8
  %pk_info6 = getelementptr inbounds %struct.mbedtls_pk_context, %struct.mbedtls_pk_context* %4, i32 0, i32 0
  %5 = load %struct.mbedtls_pk_info_t*, %struct.mbedtls_pk_info_t** %pk_info6, align 8
  %verify_func = getelementptr inbounds %struct.mbedtls_pk_info_t, %struct.mbedtls_pk_info_t* %5, i32 0, i32 4
  %6 = load i32 (i8*, i32, i8*, i64, i8*, i64)*, i32 (i8*, i32, i8*, i64, i8*, i64)** %verify_func, align 8
  %cmp7 = icmp eq i32 (i8*, i32, i8*, i64, i8*, i64)* %6, null
  br i1 %cmp7, label %if.then8, label %if.end9

if.then8:                                         ; preds = %if.end
  store i32 -16128, i32* %retval, align 4
  br label %return

if.end9:                                          ; preds = %if.end
  %7 = load %struct.mbedtls_pk_context*, %struct.mbedtls_pk_context** %ctx.addr, align 8
  %pk_info10 = getelementptr inbounds %struct.mbedtls_pk_context, %struct.mbedtls_pk_context* %7, i32 0, i32 0
  %8 = load %struct.mbedtls_pk_info_t*, %struct.mbedtls_pk_info_t** %pk_info10, align 8
  %verify_func11 = getelementptr inbounds %struct.mbedtls_pk_info_t, %struct.mbedtls_pk_info_t* %8, i32 0, i32 4
  %9 = load i32 (i8*, i32, i8*, i64, i8*, i64)*, i32 (i8*, i32, i8*, i64, i8*, i64)** %verify_func11, align 8
  %10 = load %struct.mbedtls_pk_context*, %struct.mbedtls_pk_context** %ctx.addr, align 8
  %pk_ctx = getelementptr inbounds %struct.mbedtls_pk_context, %struct.mbedtls_pk_context* %10, i32 0, i32 1
  %11 = load i8*, i8** %pk_ctx, align 8
  %12 = load i32, i32* %md_alg.addr, align 4
  %13 = load i8*, i8** %hash.addr, align 8
  %14 = load i64, i64* %hash_len.addr, align 8
  %15 = load i8*, i8** %sig.addr, align 8
  %16 = load i64, i64* %sig_len.addr, align 8
  %call12 = call i32 %9(i8* noundef %11, i32 noundef %12, i8* noundef %13, i64 noundef %14, i8* noundef %15, i64 noundef %16) #2
  store i32 %call12, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end9, %if.then8, %if.then
  %17 = load i32, i32* %retval, align 4
  ret i32 %17
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pk_hashlen_helper(i32 noundef %md_alg, i64* noundef %hash_len) #0 {
entry:
  %retval = alloca i32, align 4
  %md_alg.addr = alloca i32, align 4
  %hash_len.addr = alloca i64*, align 8
  %md_info = alloca %struct.mbedtls_md_info_t*, align 8
  store i32 %md_alg, i32* %md_alg.addr, align 4
  store i64* %hash_len, i64** %hash_len.addr, align 8
  %0 = load i64*, i64** %hash_len.addr, align 8
  %1 = load i64, i64* %0, align 8
  %cmp = icmp ne i64 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i32, i32* %md_alg.addr, align 4
  %call = call %struct.mbedtls_md_info_t* @mbedtls_md_info_from_type(i32 noundef %2) #2
  store %struct.mbedtls_md_info_t* %call, %struct.mbedtls_md_info_t** %md_info, align 8
  %cmp1 = icmp eq %struct.mbedtls_md_info_t* %call, null
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  store i32 -1, i32* %retval, align 4
  br label %return

if.end3:                                          ; preds = %if.end
  %3 = load %struct.mbedtls_md_info_t*, %struct.mbedtls_md_info_t** %md_info, align 8
  %call4 = call zeroext i8 @mbedtls_md_get_size(%struct.mbedtls_md_info_t* noundef %3) #2
  %conv = zext i8 %call4 to i64
  %4 = load i64*, i64** %hash_len.addr, align 8
  store i64 %conv, i64* %4, align 8
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end3, %if.then2, %if.then
  %5 = load i32, i32* %retval, align 4
  ret i32 %5
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_pk_verify(%struct.mbedtls_pk_context* noundef %ctx, i32 noundef %md_alg, i8* noundef %hash, i64 noundef %hash_len, i8* noundef %sig, i64 noundef %sig_len) #0 {
entry:
  %ctx.addr = alloca %struct.mbedtls_pk_context*, align 8
  %md_alg.addr = alloca i32, align 4
  %hash.addr = alloca i8*, align 8
  %hash_len.addr = alloca i64, align 8
  %sig.addr = alloca i8*, align 8
  %sig_len.addr = alloca i64, align 8
  store %struct.mbedtls_pk_context* %ctx, %struct.mbedtls_pk_context** %ctx.addr, align 8
  store i32 %md_alg, i32* %md_alg.addr, align 4
  store i8* %hash, i8** %hash.addr, align 8
  store i64 %hash_len, i64* %hash_len.addr, align 8
  store i8* %sig, i8** %sig.addr, align 8
  store i64 %sig_len, i64* %sig_len.addr, align 8
  %0 = load %struct.mbedtls_pk_context*, %struct.mbedtls_pk_context** %ctx.addr, align 8
  %1 = load i32, i32* %md_alg.addr, align 4
  %2 = load i8*, i8** %hash.addr, align 8
  %3 = load i64, i64* %hash_len.addr, align 8
  %4 = load i8*, i8** %sig.addr, align 8
  %5 = load i64, i64* %sig_len.addr, align 8
  %call = call i32 @mbedtls_pk_verify_restartable(%struct.mbedtls_pk_context* noundef %0, i32 noundef %1, i8* noundef %2, i64 noundef %3, i8* noundef %4, i64 noundef %5, i8* noundef null) #2
  ret i32 %call
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_pk_verify_ext(i32 noundef %type, i8* noundef %options, %struct.mbedtls_pk_context* noundef %ctx, i32 noundef %md_alg, i8* noundef %hash, i64 noundef %hash_len, i8* noundef %sig, i64 noundef %sig_len) #0 {
entry:
  %retval = alloca i32, align 4
  %type.addr = alloca i32, align 4
  %options.addr = alloca i8*, align 8
  %ctx.addr = alloca %struct.mbedtls_pk_context*, align 8
  %md_alg.addr = alloca i32, align 4
  %hash.addr = alloca i8*, align 8
  %hash_len.addr = alloca i64, align 8
  %sig.addr = alloca i8*, align 8
  %sig_len.addr = alloca i64, align 8
  %ret = alloca i32, align 4
  %pss_opts = alloca %struct.mbedtls_pk_rsassa_pss_options*, align 8
  store i32 %type, i32* %type.addr, align 4
  store i8* %options, i8** %options.addr, align 8
  store %struct.mbedtls_pk_context* %ctx, %struct.mbedtls_pk_context** %ctx.addr, align 8
  store i32 %md_alg, i32* %md_alg.addr, align 4
  store i8* %hash, i8** %hash.addr, align 8
  store i64 %hash_len, i64* %hash_len.addr, align 8
  store i8* %sig, i8** %sig.addr, align 8
  store i64 %sig_len, i64* %sig_len.addr, align 8
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
  %0 = load %struct.mbedtls_pk_context*, %struct.mbedtls_pk_context** %ctx.addr, align 8
  %pk_info = getelementptr inbounds %struct.mbedtls_pk_context, %struct.mbedtls_pk_context* %0, i32 0, i32 0
  %1 = load %struct.mbedtls_pk_info_t*, %struct.mbedtls_pk_info_t** %pk_info, align 8
  %cmp = icmp eq %struct.mbedtls_pk_info_t* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.end4
  store i32 -16000, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %do.end4
  %2 = load %struct.mbedtls_pk_context*, %struct.mbedtls_pk_context** %ctx.addr, align 8
  %3 = load i32, i32* %type.addr, align 4
  %call = call i32 @mbedtls_pk_can_do(%struct.mbedtls_pk_context* noundef %2, i32 noundef %3) #2
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end6, label %if.then5

if.then5:                                         ; preds = %if.end
  store i32 -16128, i32* %retval, align 4
  br label %return

if.end6:                                          ; preds = %if.end
  %4 = load i32, i32* %type.addr, align 4
  %cmp7 = icmp ne i32 %4, 6
  br i1 %cmp7, label %if.then8, label %if.end13

if.then8:                                         ; preds = %if.end6
  %5 = load i8*, i8** %options.addr, align 8
  %cmp9 = icmp ne i8* %5, null
  br i1 %cmp9, label %if.then10, label %if.end11

if.then10:                                        ; preds = %if.then8
  store i32 -16000, i32* %retval, align 4
  br label %return

if.end11:                                         ; preds = %if.then8
  %6 = load %struct.mbedtls_pk_context*, %struct.mbedtls_pk_context** %ctx.addr, align 8
  %7 = load i32, i32* %md_alg.addr, align 4
  %8 = load i8*, i8** %hash.addr, align 8
  %9 = load i64, i64* %hash_len.addr, align 8
  %10 = load i8*, i8** %sig.addr, align 8
  %11 = load i64, i64* %sig_len.addr, align 8
  %call12 = call i32 @mbedtls_pk_verify(%struct.mbedtls_pk_context* noundef %6, i32 noundef %7, i8* noundef %8, i64 noundef %9, i8* noundef %10, i64 noundef %11) #2
  store i32 %call12, i32* %retval, align 4
  br label %return

if.end13:                                         ; preds = %if.end6
  store i32 -110, i32* %ret, align 4
  %12 = load i32, i32* %md_alg.addr, align 4
  %cmp14 = icmp eq i32 %12, 0
  br i1 %cmp14, label %land.lhs.true, label %if.end17

land.lhs.true:                                    ; preds = %if.end13
  %13 = load i64, i64* %hash_len.addr, align 8
  %cmp15 = icmp ult i64 4294967295, %13
  br i1 %cmp15, label %if.then16, label %if.end17

if.then16:                                        ; preds = %land.lhs.true
  store i32 -16000, i32* %retval, align 4
  br label %return

if.end17:                                         ; preds = %land.lhs.true, %if.end13
  %14 = load i8*, i8** %options.addr, align 8
  %cmp18 = icmp eq i8* %14, null
  br i1 %cmp18, label %if.then19, label %if.end20

if.then19:                                        ; preds = %if.end17
  store i32 -16000, i32* %retval, align 4
  br label %return

if.end20:                                         ; preds = %if.end17
  %15 = load i8*, i8** %options.addr, align 8
  %16 = bitcast i8* %15 to %struct.mbedtls_pk_rsassa_pss_options*
  store %struct.mbedtls_pk_rsassa_pss_options* %16, %struct.mbedtls_pk_rsassa_pss_options** %pss_opts, align 8
  %17 = load i64, i64* %sig_len.addr, align 8
  %18 = load %struct.mbedtls_pk_context*, %struct.mbedtls_pk_context** %ctx.addr, align 8
  %call21 = call i64 @mbedtls_pk_get_len(%struct.mbedtls_pk_context* noundef %18) #2
  %cmp22 = icmp ult i64 %17, %call21
  br i1 %cmp22, label %if.then23, label %if.end24

if.then23:                                        ; preds = %if.end20
  store i32 -17280, i32* %retval, align 4
  br label %return

if.end24:                                         ; preds = %if.end20
  %19 = load %struct.mbedtls_pk_context*, %struct.mbedtls_pk_context** %ctx.addr, align 8
  %20 = bitcast %struct.mbedtls_pk_context* %19 to { %struct.mbedtls_pk_info_t*, i8* }*
  %21 = getelementptr inbounds { %struct.mbedtls_pk_info_t*, i8* }, { %struct.mbedtls_pk_info_t*, i8* }* %20, i32 0, i32 0
  %22 = load %struct.mbedtls_pk_info_t*, %struct.mbedtls_pk_info_t** %21, align 8
  %23 = getelementptr inbounds { %struct.mbedtls_pk_info_t*, i8* }, { %struct.mbedtls_pk_info_t*, i8* }* %20, i32 0, i32 1
  %24 = load i8*, i8** %23, align 8
  %call25 = call %struct.mbedtls_rsa_context* @mbedtls_pk_rsa(%struct.mbedtls_pk_info_t* %22, i8* %24) #2
  %25 = load i32, i32* %md_alg.addr, align 4
  %26 = load i64, i64* %hash_len.addr, align 8
  %conv = trunc i64 %26 to i32
  %27 = load i8*, i8** %hash.addr, align 8
  %28 = load %struct.mbedtls_pk_rsassa_pss_options*, %struct.mbedtls_pk_rsassa_pss_options** %pss_opts, align 8
  %mgf1_hash_id = getelementptr inbounds %struct.mbedtls_pk_rsassa_pss_options, %struct.mbedtls_pk_rsassa_pss_options* %28, i32 0, i32 0
  %29 = load i32, i32* %mgf1_hash_id, align 4
  %30 = load %struct.mbedtls_pk_rsassa_pss_options*, %struct.mbedtls_pk_rsassa_pss_options** %pss_opts, align 8
  %expected_salt_len = getelementptr inbounds %struct.mbedtls_pk_rsassa_pss_options, %struct.mbedtls_pk_rsassa_pss_options* %30, i32 0, i32 1
  %31 = load i32, i32* %expected_salt_len, align 4
  %32 = load i8*, i8** %sig.addr, align 8
  %call26 = call i32 @mbedtls_rsa_rsassa_pss_verify_ext(%struct.mbedtls_rsa_context* noundef %call25, i32 noundef %25, i32 noundef %conv, i8* noundef %27, i32 noundef %29, i32 noundef %31, i8* noundef %32) #2
  store i32 %call26, i32* %ret, align 4
  %33 = load i32, i32* %ret, align 4
  %cmp27 = icmp ne i32 %33, 0
  br i1 %cmp27, label %if.then29, label %if.end30

if.then29:                                        ; preds = %if.end24
  %34 = load i32, i32* %ret, align 4
  store i32 %34, i32* %retval, align 4
  br label %return

if.end30:                                         ; preds = %if.end24
  %35 = load i64, i64* %sig_len.addr, align 8
  %36 = load %struct.mbedtls_pk_context*, %struct.mbedtls_pk_context** %ctx.addr, align 8
  %call31 = call i64 @mbedtls_pk_get_len(%struct.mbedtls_pk_context* noundef %36) #2
  %cmp32 = icmp ugt i64 %35, %call31
  br i1 %cmp32, label %if.then34, label %if.end35

if.then34:                                        ; preds = %if.end30
  store i32 -14592, i32* %retval, align 4
  br label %return

if.end35:                                         ; preds = %if.end30
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end35, %if.then34, %if.then29, %if.then23, %if.then19, %if.then16, %if.end11, %if.then10, %if.then5, %if.then
  %37 = load i32, i32* %retval, align 4
  ret i32 %37
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @mbedtls_pk_get_len(%struct.mbedtls_pk_context* noundef %ctx) #0 {
entry:
  %ctx.addr = alloca %struct.mbedtls_pk_context*, align 8
  store %struct.mbedtls_pk_context* %ctx, %struct.mbedtls_pk_context** %ctx.addr, align 8
  %0 = load %struct.mbedtls_pk_context*, %struct.mbedtls_pk_context** %ctx.addr, align 8
  %call = call i64 @mbedtls_pk_get_bitlen(%struct.mbedtls_pk_context* noundef %0) #2
  %add = add i64 %call, 7
  %div = udiv i64 %add, 8
  ret i64 %div
}

declare dso_local i32 @mbedtls_rsa_rsassa_pss_verify_ext(%struct.mbedtls_rsa_context* noundef, i32 noundef, i32 noundef, i8* noundef, i32 noundef, i32 noundef, i8* noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mbedtls_rsa_context* @mbedtls_pk_rsa(%struct.mbedtls_pk_info_t* %pk.coerce0, i8* %pk.coerce1) #0 {
entry:
  %retval = alloca %struct.mbedtls_rsa_context*, align 8
  %pk = alloca %struct.mbedtls_pk_context, align 8
  %0 = bitcast %struct.mbedtls_pk_context* %pk to { %struct.mbedtls_pk_info_t*, i8* }*
  %1 = getelementptr inbounds { %struct.mbedtls_pk_info_t*, i8* }, { %struct.mbedtls_pk_info_t*, i8* }* %0, i32 0, i32 0
  store %struct.mbedtls_pk_info_t* %pk.coerce0, %struct.mbedtls_pk_info_t** %1, align 8
  %2 = getelementptr inbounds { %struct.mbedtls_pk_info_t*, i8* }, { %struct.mbedtls_pk_info_t*, i8* }* %0, i32 0, i32 1
  store i8* %pk.coerce1, i8** %2, align 8
  %call = call i32 @mbedtls_pk_get_type(%struct.mbedtls_pk_context* noundef %pk) #2
  switch i32 %call, label %sw.default [
    i32 1, label %sw.bb
  ]

sw.bb:                                            ; preds = %entry
  %pk_ctx = getelementptr inbounds %struct.mbedtls_pk_context, %struct.mbedtls_pk_context* %pk, i32 0, i32 1
  %3 = load i8*, i8** %pk_ctx, align 8
  %4 = bitcast i8* %3 to %struct.mbedtls_rsa_context*
  store %struct.mbedtls_rsa_context* %4, %struct.mbedtls_rsa_context** %retval, align 8
  br label %return

sw.default:                                       ; preds = %entry
  store %struct.mbedtls_rsa_context* null, %struct.mbedtls_rsa_context** %retval, align 8
  br label %return

return:                                           ; preds = %sw.default, %sw.bb
  %5 = load %struct.mbedtls_rsa_context*, %struct.mbedtls_rsa_context** %retval, align 8
  ret %struct.mbedtls_rsa_context* %5
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_pk_sign_restartable(%struct.mbedtls_pk_context* noundef %ctx, i32 noundef %md_alg, i8* noundef %hash, i64 noundef %hash_len, i8* noundef %sig, i64 noundef %sig_size, i64* noundef %sig_len, i32 (i8*, i8*, i64)* noundef %f_rng, i8* noundef %p_rng, i8* noundef %rs_ctx) #0 {
entry:
  %retval = alloca i32, align 4
  %ctx.addr = alloca %struct.mbedtls_pk_context*, align 8
  %md_alg.addr = alloca i32, align 4
  %hash.addr = alloca i8*, align 8
  %hash_len.addr = alloca i64, align 8
  %sig.addr = alloca i8*, align 8
  %sig_size.addr = alloca i64, align 8
  %sig_len.addr = alloca i64*, align 8
  %f_rng.addr = alloca i32 (i8*, i8*, i64)*, align 8
  %p_rng.addr = alloca i8*, align 8
  %rs_ctx.addr = alloca i8*, align 8
  store %struct.mbedtls_pk_context* %ctx, %struct.mbedtls_pk_context** %ctx.addr, align 8
  store i32 %md_alg, i32* %md_alg.addr, align 4
  store i8* %hash, i8** %hash.addr, align 8
  store i64 %hash_len, i64* %hash_len.addr, align 8
  store i8* %sig, i8** %sig.addr, align 8
  store i64 %sig_size, i64* %sig_size.addr, align 8
  store i64* %sig_len, i64** %sig_len.addr, align 8
  store i32 (i8*, i8*, i64)* %f_rng, i32 (i8*, i8*, i64)** %f_rng.addr, align 8
  store i8* %p_rng, i8** %p_rng.addr, align 8
  store i8* %rs_ctx, i8** %rs_ctx.addr, align 8
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
  %0 = load %struct.mbedtls_pk_context*, %struct.mbedtls_pk_context** %ctx.addr, align 8
  %pk_info = getelementptr inbounds %struct.mbedtls_pk_context, %struct.mbedtls_pk_context* %0, i32 0, i32 0
  %1 = load %struct.mbedtls_pk_info_t*, %struct.mbedtls_pk_info_t** %pk_info, align 8
  %cmp = icmp eq %struct.mbedtls_pk_info_t* %1, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.end4
  %2 = load i32, i32* %md_alg.addr, align 4
  %call = call i32 @pk_hashlen_helper(i32 noundef %2, i64* noundef %hash_len.addr) #2
  %cmp5 = icmp ne i32 %call, 0
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %do.end4
  store i32 -16000, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %3 = load i8*, i8** %rs_ctx.addr, align 8
  %4 = load %struct.mbedtls_pk_context*, %struct.mbedtls_pk_context** %ctx.addr, align 8
  %pk_info6 = getelementptr inbounds %struct.mbedtls_pk_context, %struct.mbedtls_pk_context* %4, i32 0, i32 0
  %5 = load %struct.mbedtls_pk_info_t*, %struct.mbedtls_pk_info_t** %pk_info6, align 8
  %sign_func = getelementptr inbounds %struct.mbedtls_pk_info_t, %struct.mbedtls_pk_info_t* %5, i32 0, i32 5
  %6 = load i32 (i8*, i32, i8*, i64, i8*, i64, i64*, i32 (i8*, i8*, i64)*, i8*)*, i32 (i8*, i32, i8*, i64, i8*, i64, i64*, i32 (i8*, i8*, i64)*, i8*)** %sign_func, align 8
  %cmp7 = icmp eq i32 (i8*, i32, i8*, i64, i8*, i64, i64*, i32 (i8*, i8*, i64)*, i8*)* %6, null
  br i1 %cmp7, label %if.then8, label %if.end9

if.then8:                                         ; preds = %if.end
  store i32 -16128, i32* %retval, align 4
  br label %return

if.end9:                                          ; preds = %if.end
  %7 = load %struct.mbedtls_pk_context*, %struct.mbedtls_pk_context** %ctx.addr, align 8
  %pk_info10 = getelementptr inbounds %struct.mbedtls_pk_context, %struct.mbedtls_pk_context* %7, i32 0, i32 0
  %8 = load %struct.mbedtls_pk_info_t*, %struct.mbedtls_pk_info_t** %pk_info10, align 8
  %sign_func11 = getelementptr inbounds %struct.mbedtls_pk_info_t, %struct.mbedtls_pk_info_t* %8, i32 0, i32 5
  %9 = load i32 (i8*, i32, i8*, i64, i8*, i64, i64*, i32 (i8*, i8*, i64)*, i8*)*, i32 (i8*, i32, i8*, i64, i8*, i64, i64*, i32 (i8*, i8*, i64)*, i8*)** %sign_func11, align 8
  %10 = load %struct.mbedtls_pk_context*, %struct.mbedtls_pk_context** %ctx.addr, align 8
  %pk_ctx = getelementptr inbounds %struct.mbedtls_pk_context, %struct.mbedtls_pk_context* %10, i32 0, i32 1
  %11 = load i8*, i8** %pk_ctx, align 8
  %12 = load i32, i32* %md_alg.addr, align 4
  %13 = load i8*, i8** %hash.addr, align 8
  %14 = load i64, i64* %hash_len.addr, align 8
  %15 = load i8*, i8** %sig.addr, align 8
  %16 = load i64, i64* %sig_size.addr, align 8
  %17 = load i64*, i64** %sig_len.addr, align 8
  %18 = load i32 (i8*, i8*, i64)*, i32 (i8*, i8*, i64)** %f_rng.addr, align 8
  %19 = load i8*, i8** %p_rng.addr, align 8
  %call12 = call i32 %9(i8* noundef %11, i32 noundef %12, i8* noundef %13, i64 noundef %14, i8* noundef %15, i64 noundef %16, i64* noundef %17, i32 (i8*, i8*, i64)* noundef %18, i8* noundef %19) #2
  store i32 %call12, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end9, %if.then8, %if.then
  %20 = load i32, i32* %retval, align 4
  ret i32 %20
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_pk_sign(%struct.mbedtls_pk_context* noundef %ctx, i32 noundef %md_alg, i8* noundef %hash, i64 noundef %hash_len, i8* noundef %sig, i64 noundef %sig_size, i64* noundef %sig_len, i32 (i8*, i8*, i64)* noundef %f_rng, i8* noundef %p_rng) #0 {
entry:
  %ctx.addr = alloca %struct.mbedtls_pk_context*, align 8
  %md_alg.addr = alloca i32, align 4
  %hash.addr = alloca i8*, align 8
  %hash_len.addr = alloca i64, align 8
  %sig.addr = alloca i8*, align 8
  %sig_size.addr = alloca i64, align 8
  %sig_len.addr = alloca i64*, align 8
  %f_rng.addr = alloca i32 (i8*, i8*, i64)*, align 8
  %p_rng.addr = alloca i8*, align 8
  store %struct.mbedtls_pk_context* %ctx, %struct.mbedtls_pk_context** %ctx.addr, align 8
  store i32 %md_alg, i32* %md_alg.addr, align 4
  store i8* %hash, i8** %hash.addr, align 8
  store i64 %hash_len, i64* %hash_len.addr, align 8
  store i8* %sig, i8** %sig.addr, align 8
  store i64 %sig_size, i64* %sig_size.addr, align 8
  store i64* %sig_len, i64** %sig_len.addr, align 8
  store i32 (i8*, i8*, i64)* %f_rng, i32 (i8*, i8*, i64)** %f_rng.addr, align 8
  store i8* %p_rng, i8** %p_rng.addr, align 8
  %0 = load %struct.mbedtls_pk_context*, %struct.mbedtls_pk_context** %ctx.addr, align 8
  %1 = load i32, i32* %md_alg.addr, align 4
  %2 = load i8*, i8** %hash.addr, align 8
  %3 = load i64, i64* %hash_len.addr, align 8
  %4 = load i8*, i8** %sig.addr, align 8
  %5 = load i64, i64* %sig_size.addr, align 8
  %6 = load i64*, i64** %sig_len.addr, align 8
  %7 = load i32 (i8*, i8*, i64)*, i32 (i8*, i8*, i64)** %f_rng.addr, align 8
  %8 = load i8*, i8** %p_rng.addr, align 8
  %call = call i32 @mbedtls_pk_sign_restartable(%struct.mbedtls_pk_context* noundef %0, i32 noundef %1, i8* noundef %2, i64 noundef %3, i8* noundef %4, i64 noundef %5, i64* noundef %6, i32 (i8*, i8*, i64)* noundef %7, i8* noundef %8, i8* noundef null) #2
  ret i32 %call
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_pk_sign_ext(i32 noundef %pk_type, %struct.mbedtls_pk_context* noundef %ctx, i32 noundef %md_alg, i8* noundef %hash, i64 noundef %hash_len, i8* noundef %sig, i64 noundef %sig_size, i64* noundef %sig_len, i32 (i8*, i8*, i64)* noundef %f_rng, i8* noundef %p_rng) #0 {
entry:
  %retval = alloca i32, align 4
  %pk_type.addr = alloca i32, align 4
  %ctx.addr = alloca %struct.mbedtls_pk_context*, align 8
  %md_alg.addr = alloca i32, align 4
  %hash.addr = alloca i8*, align 8
  %hash_len.addr = alloca i64, align 8
  %sig.addr = alloca i8*, align 8
  %sig_size.addr = alloca i64, align 8
  %sig_len.addr = alloca i64*, align 8
  %f_rng.addr = alloca i32 (i8*, i8*, i64)*, align 8
  %p_rng.addr = alloca i8*, align 8
  %psa_md_alg = alloca i32, align 4
  %key = alloca i32*, align 8
  %status = alloca i32, align 4
  store i32 %pk_type, i32* %pk_type.addr, align 4
  store %struct.mbedtls_pk_context* %ctx, %struct.mbedtls_pk_context** %ctx.addr, align 8
  store i32 %md_alg, i32* %md_alg.addr, align 4
  store i8* %hash, i8** %hash.addr, align 8
  store i64 %hash_len, i64* %hash_len.addr, align 8
  store i8* %sig, i8** %sig.addr, align 8
  store i64 %sig_size, i64* %sig_size.addr, align 8
  store i64* %sig_len, i64** %sig_len.addr, align 8
  store i32 (i8*, i8*, i64)* %f_rng, i32 (i8*, i8*, i64)** %f_rng.addr, align 8
  store i8* %p_rng, i8** %p_rng.addr, align 8
  %0 = load i64*, i64** %sig_len.addr, align 8
  store i64 0, i64* %0, align 8
  %1 = load %struct.mbedtls_pk_context*, %struct.mbedtls_pk_context** %ctx.addr, align 8
  %pk_info = getelementptr inbounds %struct.mbedtls_pk_context, %struct.mbedtls_pk_context* %1, i32 0, i32 0
  %2 = load %struct.mbedtls_pk_info_t*, %struct.mbedtls_pk_info_t** %pk_info, align 8
  %cmp = icmp eq %struct.mbedtls_pk_info_t* %2, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -16000, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %3 = load %struct.mbedtls_pk_context*, %struct.mbedtls_pk_context** %ctx.addr, align 8
  %4 = load i32, i32* %pk_type.addr, align 4
  %call = call i32 @mbedtls_pk_can_do(%struct.mbedtls_pk_context* noundef %3, i32 noundef %4) #2
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end2, label %if.then1

if.then1:                                         ; preds = %if.end
  store i32 -16128, i32* %retval, align 4
  br label %return

if.end2:                                          ; preds = %if.end
  %5 = load i32, i32* %pk_type.addr, align 4
  %cmp3 = icmp ne i32 %5, 6
  br i1 %cmp3, label %if.then4, label %if.end6

if.then4:                                         ; preds = %if.end2
  %6 = load %struct.mbedtls_pk_context*, %struct.mbedtls_pk_context** %ctx.addr, align 8
  %7 = load i32, i32* %md_alg.addr, align 4
  %8 = load i8*, i8** %hash.addr, align 8
  %9 = load i64, i64* %hash_len.addr, align 8
  %10 = load i8*, i8** %sig.addr, align 8
  %11 = load i64, i64* %sig_size.addr, align 8
  %12 = load i64*, i64** %sig_len.addr, align 8
  %13 = load i32 (i8*, i8*, i64)*, i32 (i8*, i8*, i64)** %f_rng.addr, align 8
  %14 = load i8*, i8** %p_rng.addr, align 8
  %call5 = call i32 @mbedtls_pk_sign(%struct.mbedtls_pk_context* noundef %6, i32 noundef %7, i8* noundef %8, i64 noundef %9, i8* noundef %10, i64 noundef %11, i64* noundef %12, i32 (i8*, i8*, i64)* noundef %13, i8* noundef %14) #2
  store i32 %call5, i32* %retval, align 4
  br label %return

if.end6:                                          ; preds = %if.end2
  %15 = load i32, i32* %md_alg.addr, align 4
  %call7 = call i32 @mbedtls_psa_translate_md(i32 noundef %15) #2
  store i32 %call7, i32* %psa_md_alg, align 4
  %16 = load i32, i32* %psa_md_alg, align 4
  %cmp8 = icmp eq i32 %16, 0
  br i1 %cmp8, label %if.then9, label %if.end10

if.then9:                                         ; preds = %if.end6
  store i32 -16000, i32* %retval, align 4
  br label %return

if.end10:                                         ; preds = %if.end6
  %17 = load %struct.mbedtls_pk_context*, %struct.mbedtls_pk_context** %ctx.addr, align 8
  %call11 = call i32 @mbedtls_pk_get_type(%struct.mbedtls_pk_context* noundef %17) #2
  %cmp12 = icmp eq i32 %call11, 7
  br i1 %cmp12, label %if.then13, label %if.end16

if.then13:                                        ; preds = %if.end10
  %18 = load %struct.mbedtls_pk_context*, %struct.mbedtls_pk_context** %ctx.addr, align 8
  %pk_ctx = getelementptr inbounds %struct.mbedtls_pk_context, %struct.mbedtls_pk_context* %18, i32 0, i32 1
  %19 = load i8*, i8** %pk_ctx, align 8
  %20 = bitcast i8* %19 to i32*
  store i32* %20, i32** %key, align 8
  %21 = load i32*, i32** %key, align 8
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %psa_md_alg, align 4
  %and = and i32 %23, 255
  %or = or i32 100664064, %and
  %24 = load i8*, i8** %hash.addr, align 8
  %25 = load i64, i64* %hash_len.addr, align 8
  %26 = load i8*, i8** %sig.addr, align 8
  %27 = load i64, i64* %sig_size.addr, align 8
  %28 = load i64*, i64** %sig_len.addr, align 8
  %call14 = call i32 @psa_sign_hash(i32 noundef %22, i32 noundef %or, i8* noundef %24, i64 noundef %25, i8* noundef %26, i64 noundef %27, i64* noundef %28) #2
  store i32 %call14, i32* %status, align 4
  %29 = load i32, i32* %status, align 4
  %call15 = call i32 @mbedtls_pk_error_from_psa_rsa(i32 noundef %29) #2
  store i32 %call15, i32* %retval, align 4
  br label %return

if.end16:                                         ; preds = %if.end10
  %30 = load i32, i32* %psa_md_alg, align 4
  %and17 = and i32 %30, 255
  %or18 = or i32 100664064, %and17
  %31 = load %struct.mbedtls_pk_context*, %struct.mbedtls_pk_context** %ctx.addr, align 8
  %pk_ctx19 = getelementptr inbounds %struct.mbedtls_pk_context, %struct.mbedtls_pk_context* %31, i32 0, i32 1
  %32 = load i8*, i8** %pk_ctx19, align 8
  %33 = bitcast i8* %32 to %struct.mbedtls_rsa_context*
  %34 = load i8*, i8** %hash.addr, align 8
  %35 = load i64, i64* %hash_len.addr, align 8
  %36 = load i8*, i8** %sig.addr, align 8
  %37 = load i64, i64* %sig_size.addr, align 8
  %38 = load i64*, i64** %sig_len.addr, align 8
  %call20 = call i32 @mbedtls_pk_psa_rsa_sign_ext(i32 noundef %or18, %struct.mbedtls_rsa_context* noundef %33, i8* noundef %34, i64 noundef %35, i8* noundef %36, i64 noundef %37, i64* noundef %38) #2
  store i32 %call20, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end16, %if.then13, %if.then9, %if.then4, %if.then1, %if.then
  %39 = load i32, i32* %retval, align 4
  ret i32 %39
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mbedtls_psa_translate_md(i32 noundef %md_alg) #0 {
entry:
  %retval = alloca i32, align 4
  %md_alg.addr = alloca i32, align 4
  store i32 %md_alg, i32* %md_alg.addr, align 4
  %0 = load i32, i32* %md_alg.addr, align 4
  switch i32 %0, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb1
    i32 3, label %sw.bb2
    i32 4, label %sw.bb3
    i32 5, label %sw.bb4
    i32 6, label %sw.bb5
    i32 7, label %sw.bb6
    i32 0, label %sw.bb7
  ]

sw.bb:                                            ; preds = %entry
  store i32 33554435, i32* %retval, align 4
  br label %return

sw.bb1:                                           ; preds = %entry
  store i32 33554437, i32* %retval, align 4
  br label %return

sw.bb2:                                           ; preds = %entry
  store i32 33554440, i32* %retval, align 4
  br label %return

sw.bb3:                                           ; preds = %entry
  store i32 33554441, i32* %retval, align 4
  br label %return

sw.bb4:                                           ; preds = %entry
  store i32 33554442, i32* %retval, align 4
  br label %return

sw.bb5:                                           ; preds = %entry
  store i32 33554443, i32* %retval, align 4
  br label %return

sw.bb6:                                           ; preds = %entry
  store i32 33554436, i32* %retval, align 4
  br label %return

sw.bb7:                                           ; preds = %entry
  store i32 0, i32* %retval, align 4
  br label %return

sw.default:                                       ; preds = %entry
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %sw.default, %sw.bb7, %sw.bb6, %sw.bb5, %sw.bb4, %sw.bb3, %sw.bb2, %sw.bb1, %sw.bb
  %1 = load i32, i32* %retval, align 4
  ret i32 %1
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_pk_get_type(%struct.mbedtls_pk_context* noundef %ctx) #0 {
entry:
  %retval = alloca i32, align 4
  %ctx.addr = alloca %struct.mbedtls_pk_context*, align 8
  store %struct.mbedtls_pk_context* %ctx, %struct.mbedtls_pk_context** %ctx.addr, align 8
  %0 = load %struct.mbedtls_pk_context*, %struct.mbedtls_pk_context** %ctx.addr, align 8
  %cmp = icmp eq %struct.mbedtls_pk_context* %0, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load %struct.mbedtls_pk_context*, %struct.mbedtls_pk_context** %ctx.addr, align 8
  %pk_info = getelementptr inbounds %struct.mbedtls_pk_context, %struct.mbedtls_pk_context* %1, i32 0, i32 0
  %2 = load %struct.mbedtls_pk_info_t*, %struct.mbedtls_pk_info_t** %pk_info, align 8
  %cmp1 = icmp eq %struct.mbedtls_pk_info_t* %2, null
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 0, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %3 = load %struct.mbedtls_pk_context*, %struct.mbedtls_pk_context** %ctx.addr, align 8
  %pk_info2 = getelementptr inbounds %struct.mbedtls_pk_context, %struct.mbedtls_pk_context* %3, i32 0, i32 0
  %4 = load %struct.mbedtls_pk_info_t*, %struct.mbedtls_pk_info_t** %pk_info2, align 8
  %type = getelementptr inbounds %struct.mbedtls_pk_info_t, %struct.mbedtls_pk_info_t* %4, i32 0, i32 0
  %5 = load i32, i32* %type, align 8
  store i32 %5, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %6 = load i32, i32* %retval, align 4
  ret i32 %6
}

declare dso_local i32 @psa_sign_hash(i32 noundef, i32 noundef, i8* noundef, i64 noundef, i8* noundef, i64 noundef, i64* noundef) #1

declare dso_local i32 @mbedtls_pk_error_from_psa_rsa(i32 noundef) #1

declare dso_local i32 @mbedtls_pk_psa_rsa_sign_ext(i32 noundef, %struct.mbedtls_rsa_context* noundef, i8* noundef, i64 noundef, i8* noundef, i64 noundef, i64* noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_pk_decrypt(%struct.mbedtls_pk_context* noundef %ctx, i8* noundef %input, i64 noundef %ilen, i8* noundef %output, i64* noundef %olen, i64 noundef %osize, i32 (i8*, i8*, i64)* noundef %f_rng, i8* noundef %p_rng) #0 {
entry:
  %retval = alloca i32, align 4
  %ctx.addr = alloca %struct.mbedtls_pk_context*, align 8
  %input.addr = alloca i8*, align 8
  %ilen.addr = alloca i64, align 8
  %output.addr = alloca i8*, align 8
  %olen.addr = alloca i64*, align 8
  %osize.addr = alloca i64, align 8
  %f_rng.addr = alloca i32 (i8*, i8*, i64)*, align 8
  %p_rng.addr = alloca i8*, align 8
  store %struct.mbedtls_pk_context* %ctx, %struct.mbedtls_pk_context** %ctx.addr, align 8
  store i8* %input, i8** %input.addr, align 8
  store i64 %ilen, i64* %ilen.addr, align 8
  store i8* %output, i8** %output.addr, align 8
  store i64* %olen, i64** %olen.addr, align 8
  store i64 %osize, i64* %osize.addr, align 8
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
  %0 = load %struct.mbedtls_pk_context*, %struct.mbedtls_pk_context** %ctx.addr, align 8
  %pk_info = getelementptr inbounds %struct.mbedtls_pk_context, %struct.mbedtls_pk_context* %0, i32 0, i32 0
  %1 = load %struct.mbedtls_pk_info_t*, %struct.mbedtls_pk_info_t** %pk_info, align 8
  %cmp = icmp eq %struct.mbedtls_pk_info_t* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.end6
  store i32 -16000, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %do.end6
  %2 = load %struct.mbedtls_pk_context*, %struct.mbedtls_pk_context** %ctx.addr, align 8
  %pk_info7 = getelementptr inbounds %struct.mbedtls_pk_context, %struct.mbedtls_pk_context* %2, i32 0, i32 0
  %3 = load %struct.mbedtls_pk_info_t*, %struct.mbedtls_pk_info_t** %pk_info7, align 8
  %decrypt_func = getelementptr inbounds %struct.mbedtls_pk_info_t, %struct.mbedtls_pk_info_t* %3, i32 0, i32 6
  %4 = load i32 (i8*, i8*, i64, i8*, i64*, i64, i32 (i8*, i8*, i64)*, i8*)*, i32 (i8*, i8*, i64, i8*, i64*, i64, i32 (i8*, i8*, i64)*, i8*)** %decrypt_func, align 8
  %cmp8 = icmp eq i32 (i8*, i8*, i64, i8*, i64*, i64, i32 (i8*, i8*, i64)*, i8*)* %4, null
  br i1 %cmp8, label %if.then9, label %if.end10

if.then9:                                         ; preds = %if.end
  store i32 -16128, i32* %retval, align 4
  br label %return

if.end10:                                         ; preds = %if.end
  %5 = load %struct.mbedtls_pk_context*, %struct.mbedtls_pk_context** %ctx.addr, align 8
  %pk_info11 = getelementptr inbounds %struct.mbedtls_pk_context, %struct.mbedtls_pk_context* %5, i32 0, i32 0
  %6 = load %struct.mbedtls_pk_info_t*, %struct.mbedtls_pk_info_t** %pk_info11, align 8
  %decrypt_func12 = getelementptr inbounds %struct.mbedtls_pk_info_t, %struct.mbedtls_pk_info_t* %6, i32 0, i32 6
  %7 = load i32 (i8*, i8*, i64, i8*, i64*, i64, i32 (i8*, i8*, i64)*, i8*)*, i32 (i8*, i8*, i64, i8*, i64*, i64, i32 (i8*, i8*, i64)*, i8*)** %decrypt_func12, align 8
  %8 = load %struct.mbedtls_pk_context*, %struct.mbedtls_pk_context** %ctx.addr, align 8
  %pk_ctx = getelementptr inbounds %struct.mbedtls_pk_context, %struct.mbedtls_pk_context* %8, i32 0, i32 1
  %9 = load i8*, i8** %pk_ctx, align 8
  %10 = load i8*, i8** %input.addr, align 8
  %11 = load i64, i64* %ilen.addr, align 8
  %12 = load i8*, i8** %output.addr, align 8
  %13 = load i64*, i64** %olen.addr, align 8
  %14 = load i64, i64* %osize.addr, align 8
  %15 = load i32 (i8*, i8*, i64)*, i32 (i8*, i8*, i64)** %f_rng.addr, align 8
  %16 = load i8*, i8** %p_rng.addr, align 8
  %call = call i32 %7(i8* noundef %9, i8* noundef %10, i64 noundef %11, i8* noundef %12, i64* noundef %13, i64 noundef %14, i32 (i8*, i8*, i64)* noundef %15, i8* noundef %16) #2
  store i32 %call, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end10, %if.then9, %if.then
  %17 = load i32, i32* %retval, align 4
  ret i32 %17
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_pk_encrypt(%struct.mbedtls_pk_context* noundef %ctx, i8* noundef %input, i64 noundef %ilen, i8* noundef %output, i64* noundef %olen, i64 noundef %osize, i32 (i8*, i8*, i64)* noundef %f_rng, i8* noundef %p_rng) #0 {
entry:
  %retval = alloca i32, align 4
  %ctx.addr = alloca %struct.mbedtls_pk_context*, align 8
  %input.addr = alloca i8*, align 8
  %ilen.addr = alloca i64, align 8
  %output.addr = alloca i8*, align 8
  %olen.addr = alloca i64*, align 8
  %osize.addr = alloca i64, align 8
  %f_rng.addr = alloca i32 (i8*, i8*, i64)*, align 8
  %p_rng.addr = alloca i8*, align 8
  store %struct.mbedtls_pk_context* %ctx, %struct.mbedtls_pk_context** %ctx.addr, align 8
  store i8* %input, i8** %input.addr, align 8
  store i64 %ilen, i64* %ilen.addr, align 8
  store i8* %output, i8** %output.addr, align 8
  store i64* %olen, i64** %olen.addr, align 8
  store i64 %osize, i64* %osize.addr, align 8
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
  %0 = load %struct.mbedtls_pk_context*, %struct.mbedtls_pk_context** %ctx.addr, align 8
  %pk_info = getelementptr inbounds %struct.mbedtls_pk_context, %struct.mbedtls_pk_context* %0, i32 0, i32 0
  %1 = load %struct.mbedtls_pk_info_t*, %struct.mbedtls_pk_info_t** %pk_info, align 8
  %cmp = icmp eq %struct.mbedtls_pk_info_t* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.end6
  store i32 -16000, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %do.end6
  %2 = load %struct.mbedtls_pk_context*, %struct.mbedtls_pk_context** %ctx.addr, align 8
  %pk_info7 = getelementptr inbounds %struct.mbedtls_pk_context, %struct.mbedtls_pk_context* %2, i32 0, i32 0
  %3 = load %struct.mbedtls_pk_info_t*, %struct.mbedtls_pk_info_t** %pk_info7, align 8
  %encrypt_func = getelementptr inbounds %struct.mbedtls_pk_info_t, %struct.mbedtls_pk_info_t* %3, i32 0, i32 7
  %4 = load i32 (i8*, i8*, i64, i8*, i64*, i64, i32 (i8*, i8*, i64)*, i8*)*, i32 (i8*, i8*, i64, i8*, i64*, i64, i32 (i8*, i8*, i64)*, i8*)** %encrypt_func, align 8
  %cmp8 = icmp eq i32 (i8*, i8*, i64, i8*, i64*, i64, i32 (i8*, i8*, i64)*, i8*)* %4, null
  br i1 %cmp8, label %if.then9, label %if.end10

if.then9:                                         ; preds = %if.end
  store i32 -16128, i32* %retval, align 4
  br label %return

if.end10:                                         ; preds = %if.end
  %5 = load %struct.mbedtls_pk_context*, %struct.mbedtls_pk_context** %ctx.addr, align 8
  %pk_info11 = getelementptr inbounds %struct.mbedtls_pk_context, %struct.mbedtls_pk_context* %5, i32 0, i32 0
  %6 = load %struct.mbedtls_pk_info_t*, %struct.mbedtls_pk_info_t** %pk_info11, align 8
  %encrypt_func12 = getelementptr inbounds %struct.mbedtls_pk_info_t, %struct.mbedtls_pk_info_t* %6, i32 0, i32 7
  %7 = load i32 (i8*, i8*, i64, i8*, i64*, i64, i32 (i8*, i8*, i64)*, i8*)*, i32 (i8*, i8*, i64, i8*, i64*, i64, i32 (i8*, i8*, i64)*, i8*)** %encrypt_func12, align 8
  %8 = load %struct.mbedtls_pk_context*, %struct.mbedtls_pk_context** %ctx.addr, align 8
  %pk_ctx = getelementptr inbounds %struct.mbedtls_pk_context, %struct.mbedtls_pk_context* %8, i32 0, i32 1
  %9 = load i8*, i8** %pk_ctx, align 8
  %10 = load i8*, i8** %input.addr, align 8
  %11 = load i64, i64* %ilen.addr, align 8
  %12 = load i8*, i8** %output.addr, align 8
  %13 = load i64*, i64** %olen.addr, align 8
  %14 = load i64, i64* %osize.addr, align 8
  %15 = load i32 (i8*, i8*, i64)*, i32 (i8*, i8*, i64)** %f_rng.addr, align 8
  %16 = load i8*, i8** %p_rng.addr, align 8
  %call = call i32 %7(i8* noundef %9, i8* noundef %10, i64 noundef %11, i8* noundef %12, i64* noundef %13, i64 noundef %14, i32 (i8*, i8*, i64)* noundef %15, i8* noundef %16) #2
  store i32 %call, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end10, %if.then9, %if.then
  %17 = load i32, i32* %retval, align 4
  ret i32 %17
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_pk_check_pair(%struct.mbedtls_pk_context* noundef %pub, %struct.mbedtls_pk_context* noundef %prv, i32 (i8*, i8*, i64)* noundef %f_rng, i8* noundef %p_rng) #0 {
entry:
  %retval = alloca i32, align 4
  %pub.addr = alloca %struct.mbedtls_pk_context*, align 8
  %prv.addr = alloca %struct.mbedtls_pk_context*, align 8
  %f_rng.addr = alloca i32 (i8*, i8*, i64)*, align 8
  %p_rng.addr = alloca i8*, align 8
  store %struct.mbedtls_pk_context* %pub, %struct.mbedtls_pk_context** %pub.addr, align 8
  store %struct.mbedtls_pk_context* %prv, %struct.mbedtls_pk_context** %prv.addr, align 8
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
  %0 = load %struct.mbedtls_pk_context*, %struct.mbedtls_pk_context** %pub.addr, align 8
  %pk_info = getelementptr inbounds %struct.mbedtls_pk_context, %struct.mbedtls_pk_context* %0, i32 0, i32 0
  %1 = load %struct.mbedtls_pk_info_t*, %struct.mbedtls_pk_info_t** %pk_info, align 8
  %cmp = icmp eq %struct.mbedtls_pk_info_t* %1, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.end2
  %2 = load %struct.mbedtls_pk_context*, %struct.mbedtls_pk_context** %prv.addr, align 8
  %pk_info3 = getelementptr inbounds %struct.mbedtls_pk_context, %struct.mbedtls_pk_context* %2, i32 0, i32 0
  %3 = load %struct.mbedtls_pk_info_t*, %struct.mbedtls_pk_info_t** %pk_info3, align 8
  %cmp4 = icmp eq %struct.mbedtls_pk_info_t* %3, null
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %do.end2
  store i32 -16000, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %4 = load i32 (i8*, i8*, i64)*, i32 (i8*, i8*, i64)** %f_rng.addr, align 8
  %cmp5 = icmp eq i32 (i8*, i8*, i64)* %4, null
  br i1 %cmp5, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.end
  store i32 -16000, i32* %retval, align 4
  br label %return

if.end7:                                          ; preds = %if.end
  %5 = load %struct.mbedtls_pk_context*, %struct.mbedtls_pk_context** %prv.addr, align 8
  %pk_info8 = getelementptr inbounds %struct.mbedtls_pk_context, %struct.mbedtls_pk_context* %5, i32 0, i32 0
  %6 = load %struct.mbedtls_pk_info_t*, %struct.mbedtls_pk_info_t** %pk_info8, align 8
  %check_pair_func = getelementptr inbounds %struct.mbedtls_pk_info_t, %struct.mbedtls_pk_info_t* %6, i32 0, i32 8
  %7 = load i32 (i8*, i8*, i32 (i8*, i8*, i64)*, i8*)*, i32 (i8*, i8*, i32 (i8*, i8*, i64)*, i8*)** %check_pair_func, align 8
  %cmp9 = icmp eq i32 (i8*, i8*, i32 (i8*, i8*, i64)*, i8*)* %7, null
  br i1 %cmp9, label %if.then10, label %if.end11

if.then10:                                        ; preds = %if.end7
  store i32 -14720, i32* %retval, align 4
  br label %return

if.end11:                                         ; preds = %if.end7
  %8 = load %struct.mbedtls_pk_context*, %struct.mbedtls_pk_context** %prv.addr, align 8
  %pk_info12 = getelementptr inbounds %struct.mbedtls_pk_context, %struct.mbedtls_pk_context* %8, i32 0, i32 0
  %9 = load %struct.mbedtls_pk_info_t*, %struct.mbedtls_pk_info_t** %pk_info12, align 8
  %type = getelementptr inbounds %struct.mbedtls_pk_info_t, %struct.mbedtls_pk_info_t* %9, i32 0, i32 0
  %10 = load i32, i32* %type, align 8
  %cmp13 = icmp eq i32 %10, 5
  br i1 %cmp13, label %if.then14, label %if.else

if.then14:                                        ; preds = %if.end11
  %11 = load %struct.mbedtls_pk_context*, %struct.mbedtls_pk_context** %pub.addr, align 8
  %pk_info15 = getelementptr inbounds %struct.mbedtls_pk_context, %struct.mbedtls_pk_context* %11, i32 0, i32 0
  %12 = load %struct.mbedtls_pk_info_t*, %struct.mbedtls_pk_info_t** %pk_info15, align 8
  %type16 = getelementptr inbounds %struct.mbedtls_pk_info_t, %struct.mbedtls_pk_info_t* %12, i32 0, i32 0
  %13 = load i32, i32* %type16, align 8
  %cmp17 = icmp ne i32 %13, 1
  br i1 %cmp17, label %if.then18, label %if.end19

if.then18:                                        ; preds = %if.then14
  store i32 -16128, i32* %retval, align 4
  br label %return

if.end19:                                         ; preds = %if.then14
  br label %if.end25

if.else:                                          ; preds = %if.end11
  %14 = load %struct.mbedtls_pk_context*, %struct.mbedtls_pk_context** %pub.addr, align 8
  %pk_info20 = getelementptr inbounds %struct.mbedtls_pk_context, %struct.mbedtls_pk_context* %14, i32 0, i32 0
  %15 = load %struct.mbedtls_pk_info_t*, %struct.mbedtls_pk_info_t** %pk_info20, align 8
  %16 = load %struct.mbedtls_pk_context*, %struct.mbedtls_pk_context** %prv.addr, align 8
  %pk_info21 = getelementptr inbounds %struct.mbedtls_pk_context, %struct.mbedtls_pk_context* %16, i32 0, i32 0
  %17 = load %struct.mbedtls_pk_info_t*, %struct.mbedtls_pk_info_t** %pk_info21, align 8
  %cmp22 = icmp ne %struct.mbedtls_pk_info_t* %15, %17
  br i1 %cmp22, label %if.then23, label %if.end24

if.then23:                                        ; preds = %if.else
  store i32 -16128, i32* %retval, align 4
  br label %return

if.end24:                                         ; preds = %if.else
  br label %if.end25

if.end25:                                         ; preds = %if.end24, %if.end19
  %18 = load %struct.mbedtls_pk_context*, %struct.mbedtls_pk_context** %prv.addr, align 8
  %pk_info26 = getelementptr inbounds %struct.mbedtls_pk_context, %struct.mbedtls_pk_context* %18, i32 0, i32 0
  %19 = load %struct.mbedtls_pk_info_t*, %struct.mbedtls_pk_info_t** %pk_info26, align 8
  %check_pair_func27 = getelementptr inbounds %struct.mbedtls_pk_info_t, %struct.mbedtls_pk_info_t* %19, i32 0, i32 8
  %20 = load i32 (i8*, i8*, i32 (i8*, i8*, i64)*, i8*)*, i32 (i8*, i8*, i32 (i8*, i8*, i64)*, i8*)** %check_pair_func27, align 8
  %21 = load %struct.mbedtls_pk_context*, %struct.mbedtls_pk_context** %pub.addr, align 8
  %pk_ctx = getelementptr inbounds %struct.mbedtls_pk_context, %struct.mbedtls_pk_context* %21, i32 0, i32 1
  %22 = load i8*, i8** %pk_ctx, align 8
  %23 = load %struct.mbedtls_pk_context*, %struct.mbedtls_pk_context** %prv.addr, align 8
  %pk_ctx28 = getelementptr inbounds %struct.mbedtls_pk_context, %struct.mbedtls_pk_context* %23, i32 0, i32 1
  %24 = load i8*, i8** %pk_ctx28, align 8
  %25 = load i32 (i8*, i8*, i64)*, i32 (i8*, i8*, i64)** %f_rng.addr, align 8
  %26 = load i8*, i8** %p_rng.addr, align 8
  %call = call i32 %20(i8* noundef %22, i8* noundef %24, i32 (i8*, i8*, i64)* noundef %25, i8* noundef %26) #2
  store i32 %call, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end25, %if.then23, %if.then18, %if.then10, %if.then6, %if.then
  %27 = load i32, i32* %retval, align 4
  ret i32 %27
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @mbedtls_pk_get_bitlen(%struct.mbedtls_pk_context* noundef %ctx) #0 {
entry:
  %retval = alloca i64, align 8
  %ctx.addr = alloca %struct.mbedtls_pk_context*, align 8
  store %struct.mbedtls_pk_context* %ctx, %struct.mbedtls_pk_context** %ctx.addr, align 8
  %0 = load %struct.mbedtls_pk_context*, %struct.mbedtls_pk_context** %ctx.addr, align 8
  %cmp = icmp eq %struct.mbedtls_pk_context* %0, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load %struct.mbedtls_pk_context*, %struct.mbedtls_pk_context** %ctx.addr, align 8
  %pk_info = getelementptr inbounds %struct.mbedtls_pk_context, %struct.mbedtls_pk_context* %1, i32 0, i32 0
  %2 = load %struct.mbedtls_pk_info_t*, %struct.mbedtls_pk_info_t** %pk_info, align 8
  %cmp1 = icmp eq %struct.mbedtls_pk_info_t* %2, null
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i64 0, i64* %retval, align 8
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %3 = load %struct.mbedtls_pk_context*, %struct.mbedtls_pk_context** %ctx.addr, align 8
  %pk_info2 = getelementptr inbounds %struct.mbedtls_pk_context, %struct.mbedtls_pk_context* %3, i32 0, i32 0
  %4 = load %struct.mbedtls_pk_info_t*, %struct.mbedtls_pk_info_t** %pk_info2, align 8
  %get_bitlen = getelementptr inbounds %struct.mbedtls_pk_info_t, %struct.mbedtls_pk_info_t* %4, i32 0, i32 2
  %5 = load i64 (i8*)*, i64 (i8*)** %get_bitlen, align 8
  %6 = load %struct.mbedtls_pk_context*, %struct.mbedtls_pk_context** %ctx.addr, align 8
  %pk_ctx = getelementptr inbounds %struct.mbedtls_pk_context, %struct.mbedtls_pk_context* %6, i32 0, i32 1
  %7 = load i8*, i8** %pk_ctx, align 8
  %call = call i64 %5(i8* noundef %7) #2
  store i64 %call, i64* %retval, align 8
  br label %return

return:                                           ; preds = %if.end, %if.then
  %8 = load i64, i64* %retval, align 8
  ret i64 %8
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_pk_debug(%struct.mbedtls_pk_context* noundef %ctx, %struct.mbedtls_pk_debug_item* noundef %items) #0 {
entry:
  %retval = alloca i32, align 4
  %ctx.addr = alloca %struct.mbedtls_pk_context*, align 8
  %items.addr = alloca %struct.mbedtls_pk_debug_item*, align 8
  store %struct.mbedtls_pk_context* %ctx, %struct.mbedtls_pk_context** %ctx.addr, align 8
  store %struct.mbedtls_pk_debug_item* %items, %struct.mbedtls_pk_debug_item** %items.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  %0 = load %struct.mbedtls_pk_context*, %struct.mbedtls_pk_context** %ctx.addr, align 8
  %pk_info = getelementptr inbounds %struct.mbedtls_pk_context, %struct.mbedtls_pk_context* %0, i32 0, i32 0
  %1 = load %struct.mbedtls_pk_info_t*, %struct.mbedtls_pk_info_t** %pk_info, align 8
  %cmp = icmp eq %struct.mbedtls_pk_info_t* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.end
  store i32 -16000, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %do.end
  %2 = load %struct.mbedtls_pk_context*, %struct.mbedtls_pk_context** %ctx.addr, align 8
  %pk_info1 = getelementptr inbounds %struct.mbedtls_pk_context, %struct.mbedtls_pk_context* %2, i32 0, i32 0
  %3 = load %struct.mbedtls_pk_info_t*, %struct.mbedtls_pk_info_t** %pk_info1, align 8
  %debug_func = getelementptr inbounds %struct.mbedtls_pk_info_t, %struct.mbedtls_pk_info_t* %3, i32 0, i32 11
  %4 = load void (i8*, %struct.mbedtls_pk_debug_item*)*, void (i8*, %struct.mbedtls_pk_debug_item*)** %debug_func, align 8
  %cmp2 = icmp eq void (i8*, %struct.mbedtls_pk_debug_item*)* %4, null
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  store i32 -16128, i32* %retval, align 4
  br label %return

if.end4:                                          ; preds = %if.end
  %5 = load %struct.mbedtls_pk_context*, %struct.mbedtls_pk_context** %ctx.addr, align 8
  %pk_info5 = getelementptr inbounds %struct.mbedtls_pk_context, %struct.mbedtls_pk_context* %5, i32 0, i32 0
  %6 = load %struct.mbedtls_pk_info_t*, %struct.mbedtls_pk_info_t** %pk_info5, align 8
  %debug_func6 = getelementptr inbounds %struct.mbedtls_pk_info_t, %struct.mbedtls_pk_info_t* %6, i32 0, i32 11
  %7 = load void (i8*, %struct.mbedtls_pk_debug_item*)*, void (i8*, %struct.mbedtls_pk_debug_item*)** %debug_func6, align 8
  %8 = load %struct.mbedtls_pk_context*, %struct.mbedtls_pk_context** %ctx.addr, align 8
  %pk_ctx = getelementptr inbounds %struct.mbedtls_pk_context, %struct.mbedtls_pk_context* %8, i32 0, i32 1
  %9 = load i8*, i8** %pk_ctx, align 8
  %10 = load %struct.mbedtls_pk_debug_item*, %struct.mbedtls_pk_debug_item** %items.addr, align 8
  call void %7(i8* noundef %9, %struct.mbedtls_pk_debug_item* noundef %10) #2
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end4, %if.then3, %if.then
  %11 = load i32, i32* %retval, align 4
  ret i32 %11
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @mbedtls_pk_get_name(%struct.mbedtls_pk_context* noundef %ctx) #0 {
entry:
  %retval = alloca i8*, align 8
  %ctx.addr = alloca %struct.mbedtls_pk_context*, align 8
  store %struct.mbedtls_pk_context* %ctx, %struct.mbedtls_pk_context** %ctx.addr, align 8
  %0 = load %struct.mbedtls_pk_context*, %struct.mbedtls_pk_context** %ctx.addr, align 8
  %cmp = icmp eq %struct.mbedtls_pk_context* %0, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load %struct.mbedtls_pk_context*, %struct.mbedtls_pk_context** %ctx.addr, align 8
  %pk_info = getelementptr inbounds %struct.mbedtls_pk_context, %struct.mbedtls_pk_context* %1, i32 0, i32 0
  %2 = load %struct.mbedtls_pk_info_t*, %struct.mbedtls_pk_info_t** %pk_info, align 8
  %cmp1 = icmp eq %struct.mbedtls_pk_info_t* %2, null
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8** %retval, align 8
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %3 = load %struct.mbedtls_pk_context*, %struct.mbedtls_pk_context** %ctx.addr, align 8
  %pk_info2 = getelementptr inbounds %struct.mbedtls_pk_context, %struct.mbedtls_pk_context* %3, i32 0, i32 0
  %4 = load %struct.mbedtls_pk_info_t*, %struct.mbedtls_pk_info_t** %pk_info2, align 8
  %name = getelementptr inbounds %struct.mbedtls_pk_info_t, %struct.mbedtls_pk_info_t* %4, i32 0, i32 1
  %5 = load i8*, i8** %name, align 8
  store i8* %5, i8** %retval, align 8
  br label %return

return:                                           ; preds = %if.end, %if.then
  %6 = load i8*, i8** %retval, align 8
  ret i8* %6
}

declare dso_local %struct.mbedtls_md_info_t* @mbedtls_md_info_from_type(i32 noundef) #1

declare dso_local zeroext i8 @mbedtls_md_get_size(%struct.mbedtls_md_info_t* noundef) #1

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nobuiltin "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.0"}
