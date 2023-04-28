; ModuleID = 'psa_crypto_rsa.c'
source_filename = "psa_crypto_rsa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mbedtls_ctr_drbg_context = type { [16 x i8], i32, i32, i64, i32, %struct.mbedtls_aes_context, i32 (i8*, i8*, i64)*, i8* }
%struct.mbedtls_aes_context = type { i32, i32*, [68 x i32] }
%struct.mbedtls_pk_info_t = type { i32, i8*, i64 (i8*)*, i32 (i32)*, i32 (i8*, i32, i8*, i64, i8*, i64)*, i32 (i8*, i32, i8*, i64, i8*, i64, i64*, i32 (i8*, i8*, i64)*, i8*)*, i32 (i8*, i8*, i64, i8*, i64*, i64, i32 (i8*, i8*, i64)*, i8*)*, i32 (i8*, i8*, i64, i8*, i64*, i64, i32 (i8*, i8*, i64)*, i8*)*, i32 (i8*, i8*, i32 (i8*, i8*, i64)*, i8*)*, i8* ()*, void (i8*)*, void (i8*, %struct.mbedtls_pk_debug_item*)* }
%struct.mbedtls_pk_debug_item = type { i32, i8*, i8* }
%struct.mbedtls_rsa_context = type { i32, i64, %struct.mbedtls_mpi, %struct.mbedtls_mpi, %struct.mbedtls_mpi, %struct.mbedtls_mpi, %struct.mbedtls_mpi, %struct.mbedtls_mpi, %struct.mbedtls_mpi, %struct.mbedtls_mpi, %struct.mbedtls_mpi, %struct.mbedtls_mpi, %struct.mbedtls_mpi, %struct.mbedtls_mpi, %struct.mbedtls_mpi, i32, i32 }
%struct.mbedtls_mpi = type { i32, i64, i64* }
%struct.mbedtls_pk_context = type { %struct.mbedtls_pk_info_t*, i8* }
%struct.psa_key_attributes_s = type { %struct.psa_core_key_attributes_t, i8*, i64 }
%struct.psa_core_key_attributes_t = type { i16, i16, i32, i32, %struct.psa_key_policy_s, i16 }
%struct.psa_key_policy_s = type { i32, i32, i32 }
%struct.mbedtls_md_info_t = type { i8*, i32, i8, i8 }

@mbedtls_psa_random_state = external dso_local constant %struct.mbedtls_ctr_drbg_context*, align 8
@mbedtls_rsa_info = external dso_local constant %struct.mbedtls_pk_info_t, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_psa_rsa_load_representation(i16 noundef zeroext %type, i8* noundef %data, i64 noundef %data_length, %struct.mbedtls_rsa_context** noundef %p_rsa) #0 {
entry:
  %type.addr = alloca i16, align 2
  %data.addr = alloca i8*, align 8
  %data_length.addr = alloca i64, align 8
  %p_rsa.addr = alloca %struct.mbedtls_rsa_context**, align 8
  %status = alloca i32, align 4
  %ctx = alloca %struct.mbedtls_pk_context, align 8
  %bits = alloca i64, align 8
  store i16 %type, i16* %type.addr, align 2
  store i8* %data, i8** %data.addr, align 8
  store i64 %data_length, i64* %data_length.addr, align 8
  store %struct.mbedtls_rsa_context** %p_rsa, %struct.mbedtls_rsa_context*** %p_rsa.addr, align 8
  call void @mbedtls_pk_init(%struct.mbedtls_pk_context* noundef %ctx) #3
  %0 = load i16, i16* %type.addr, align 2
  %conv = zext i16 %0 to i32
  %and = and i32 %conv, 28672
  %cmp = icmp eq i32 %and, 28672
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %data.addr, align 8
  %2 = load i64, i64* %data_length.addr, align 8
  %3 = load %struct.mbedtls_ctr_drbg_context*, %struct.mbedtls_ctr_drbg_context** @mbedtls_psa_random_state, align 8
  %4 = bitcast %struct.mbedtls_ctr_drbg_context* %3 to i8*
  %call = call i32 @mbedtls_pk_parse_key(%struct.mbedtls_pk_context* noundef %ctx, i8* noundef %1, i64 noundef %2, i8* noundef null, i64 noundef 0, i32 (i8*, i8*, i64)* noundef @mbedtls_ctr_drbg_random, i8* noundef %4) #3
  %call2 = call i32 @mbedtls_to_psa_error(i32 noundef %call) #3
  store i32 %call2, i32* %status, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  %5 = load i8*, i8** %data.addr, align 8
  %6 = load i64, i64* %data_length.addr, align 8
  %call3 = call i32 @mbedtls_pk_parse_public_key(%struct.mbedtls_pk_context* noundef %ctx, i8* noundef %5, i64 noundef %6) #3
  %call4 = call i32 @mbedtls_to_psa_error(i32 noundef %call3) #3
  store i32 %call4, i32* %status, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %7 = load i32, i32* %status, align 4
  %cmp5 = icmp ne i32 %7, 0
  br i1 %cmp5, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.end
  br label %exit

if.end8:                                          ; preds = %if.end
  %call9 = call i32 @mbedtls_pk_get_type(%struct.mbedtls_pk_context* noundef %ctx) #3
  %cmp10 = icmp ne i32 %call9, 1
  br i1 %cmp10, label %if.then12, label %if.end13

if.then12:                                        ; preds = %if.end8
  store i32 -135, i32* %status, align 4
  br label %exit

if.end13:                                         ; preds = %if.end8
  %8 = bitcast %struct.mbedtls_pk_context* %ctx to { %struct.mbedtls_pk_info_t*, i8* }*
  %9 = getelementptr inbounds { %struct.mbedtls_pk_info_t*, i8* }, { %struct.mbedtls_pk_info_t*, i8* }* %8, i32 0, i32 0
  %10 = load %struct.mbedtls_pk_info_t*, %struct.mbedtls_pk_info_t** %9, align 8
  %11 = getelementptr inbounds { %struct.mbedtls_pk_info_t*, i8* }, { %struct.mbedtls_pk_info_t*, i8* }* %8, i32 0, i32 1
  %12 = load i8*, i8** %11, align 8
  %call14 = call %struct.mbedtls_rsa_context* @mbedtls_pk_rsa(%struct.mbedtls_pk_info_t* %10, i8* %12) #3
  %call15 = call i64 @mbedtls_rsa_get_len(%struct.mbedtls_rsa_context* noundef %call14) #3
  %mul = mul i64 %call15, 8
  store i64 %mul, i64* %bits, align 8
  %13 = load i64, i64* %bits, align 8
  %cmp16 = icmp ugt i64 %13, 4096
  br i1 %cmp16, label %if.then18, label %if.end19

if.then18:                                        ; preds = %if.end13
  store i32 -134, i32* %status, align 4
  br label %exit

if.end19:                                         ; preds = %if.end13
  %14 = bitcast %struct.mbedtls_pk_context* %ctx to { %struct.mbedtls_pk_info_t*, i8* }*
  %15 = getelementptr inbounds { %struct.mbedtls_pk_info_t*, i8* }, { %struct.mbedtls_pk_info_t*, i8* }* %14, i32 0, i32 0
  %16 = load %struct.mbedtls_pk_info_t*, %struct.mbedtls_pk_info_t** %15, align 8
  %17 = getelementptr inbounds { %struct.mbedtls_pk_info_t*, i8* }, { %struct.mbedtls_pk_info_t*, i8* }* %14, i32 0, i32 1
  %18 = load i8*, i8** %17, align 8
  %call20 = call %struct.mbedtls_rsa_context* @mbedtls_pk_rsa(%struct.mbedtls_pk_info_t* %16, i8* %18) #3
  %call21 = call i32 @psa_check_rsa_key_byte_aligned(%struct.mbedtls_rsa_context* noundef %call20) #3
  store i32 %call21, i32* %status, align 4
  %19 = load i32, i32* %status, align 4
  %cmp22 = icmp ne i32 %19, 0
  br i1 %cmp22, label %if.then24, label %if.end25

if.then24:                                        ; preds = %if.end19
  br label %exit

if.end25:                                         ; preds = %if.end19
  %20 = bitcast %struct.mbedtls_pk_context* %ctx to { %struct.mbedtls_pk_info_t*, i8* }*
  %21 = getelementptr inbounds { %struct.mbedtls_pk_info_t*, i8* }, { %struct.mbedtls_pk_info_t*, i8* }* %20, i32 0, i32 0
  %22 = load %struct.mbedtls_pk_info_t*, %struct.mbedtls_pk_info_t** %21, align 8
  %23 = getelementptr inbounds { %struct.mbedtls_pk_info_t*, i8* }, { %struct.mbedtls_pk_info_t*, i8* }* %20, i32 0, i32 1
  %24 = load i8*, i8** %23, align 8
  %call26 = call %struct.mbedtls_rsa_context* @mbedtls_pk_rsa(%struct.mbedtls_pk_info_t* %22, i8* %24) #3
  %25 = load %struct.mbedtls_rsa_context**, %struct.mbedtls_rsa_context*** %p_rsa.addr, align 8
  store %struct.mbedtls_rsa_context* %call26, %struct.mbedtls_rsa_context** %25, align 8
  %pk_info = getelementptr inbounds %struct.mbedtls_pk_context, %struct.mbedtls_pk_context* %ctx, i32 0, i32 0
  store %struct.mbedtls_pk_info_t* null, %struct.mbedtls_pk_info_t** %pk_info, align 8
  br label %exit

exit:                                             ; preds = %if.end25, %if.then24, %if.then18, %if.then12, %if.then7
  call void @mbedtls_pk_free(%struct.mbedtls_pk_context* noundef %ctx) #3
  %26 = load i32, i32* %status, align 4
  ret i32 %26
}

declare dso_local void @mbedtls_pk_init(%struct.mbedtls_pk_context* noundef) #1

declare dso_local i32 @mbedtls_to_psa_error(i32 noundef) #1

declare dso_local i32 @mbedtls_pk_parse_key(%struct.mbedtls_pk_context* noundef, i8* noundef, i64 noundef, i8* noundef, i64 noundef, i32 (i8*, i8*, i64)* noundef, i8* noundef) #1

declare dso_local i32 @mbedtls_ctr_drbg_random(i8* noundef, i8* noundef, i64 noundef) #1

declare dso_local i32 @mbedtls_pk_parse_public_key(%struct.mbedtls_pk_context* noundef, i8* noundef, i64 noundef) #1

declare dso_local i32 @mbedtls_pk_get_type(%struct.mbedtls_pk_context* noundef) #1

declare dso_local i64 @mbedtls_rsa_get_len(%struct.mbedtls_rsa_context* noundef) #1

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
  %call = call i32 @mbedtls_pk_get_type(%struct.mbedtls_pk_context* noundef %pk) #3
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
define internal i32 @psa_check_rsa_key_byte_aligned(%struct.mbedtls_rsa_context* noundef %rsa) #0 {
entry:
  %rsa.addr = alloca %struct.mbedtls_rsa_context*, align 8
  %n = alloca %struct.mbedtls_mpi, align 8
  %status = alloca i32, align 4
  store %struct.mbedtls_rsa_context* %rsa, %struct.mbedtls_rsa_context** %rsa.addr, align 8
  call void @mbedtls_mpi_init(%struct.mbedtls_mpi* noundef %n) #3
  %0 = load %struct.mbedtls_rsa_context*, %struct.mbedtls_rsa_context** %rsa.addr, align 8
  %call = call i32 @mbedtls_rsa_export(%struct.mbedtls_rsa_context* noundef %0, %struct.mbedtls_mpi* noundef %n, %struct.mbedtls_mpi* noundef null, %struct.mbedtls_mpi* noundef null, %struct.mbedtls_mpi* noundef null, %struct.mbedtls_mpi* noundef null) #3
  %call1 = call i32 @mbedtls_to_psa_error(i32 noundef %call) #3
  store i32 %call1, i32* %status, align 4
  %1 = load i32, i32* %status, align 4
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end5

if.then:                                          ; preds = %entry
  %call2 = call i64 @mbedtls_mpi_bitlen(%struct.mbedtls_mpi* noundef %n) #3
  %rem = urem i64 %call2, 8
  %cmp3 = icmp ne i64 %rem, 0
  br i1 %cmp3, label %if.then4, label %if.end

if.then4:                                         ; preds = %if.then
  store i32 -134, i32* %status, align 4
  br label %if.end

if.end:                                           ; preds = %if.then4, %if.then
  br label %if.end5

if.end5:                                          ; preds = %if.end, %entry
  call void @mbedtls_mpi_free(%struct.mbedtls_mpi* noundef %n) #3
  %2 = load i32, i32* %status, align 4
  ret i32 %2
}

declare dso_local void @mbedtls_pk_free(%struct.mbedtls_pk_context* noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_psa_rsa_import_key(%struct.psa_key_attributes_s* noundef %attributes, i8* noundef %data, i64 noundef %data_length, i8* noundef %key_buffer, i64 noundef %key_buffer_size, i64* noundef %key_buffer_length, i64* noundef %bits) #0 {
entry:
  %attributes.addr = alloca %struct.psa_key_attributes_s*, align 8
  %data.addr = alloca i8*, align 8
  %data_length.addr = alloca i64, align 8
  %key_buffer.addr = alloca i8*, align 8
  %key_buffer_size.addr = alloca i64, align 8
  %key_buffer_length.addr = alloca i64*, align 8
  %bits.addr = alloca i64*, align 8
  %status = alloca i32, align 4
  %rsa = alloca %struct.mbedtls_rsa_context*, align 8
  store %struct.psa_key_attributes_s* %attributes, %struct.psa_key_attributes_s** %attributes.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  store i64 %data_length, i64* %data_length.addr, align 8
  store i8* %key_buffer, i8** %key_buffer.addr, align 8
  store i64 %key_buffer_size, i64* %key_buffer_size.addr, align 8
  store i64* %key_buffer_length, i64** %key_buffer_length.addr, align 8
  store i64* %bits, i64** %bits.addr, align 8
  store %struct.mbedtls_rsa_context* null, %struct.mbedtls_rsa_context** %rsa, align 8
  %0 = load %struct.psa_key_attributes_s*, %struct.psa_key_attributes_s** %attributes.addr, align 8
  %core = getelementptr inbounds %struct.psa_key_attributes_s, %struct.psa_key_attributes_s* %0, i32 0, i32 0
  %type = getelementptr inbounds %struct.psa_core_key_attributes_t, %struct.psa_core_key_attributes_t* %core, i32 0, i32 0
  %1 = load i16, i16* %type, align 8
  %2 = load i8*, i8** %data.addr, align 8
  %3 = load i64, i64* %data_length.addr, align 8
  %call = call i32 @mbedtls_psa_rsa_load_representation(i16 noundef zeroext %1, i8* noundef %2, i64 noundef %3, %struct.mbedtls_rsa_context** noundef %rsa) #3
  store i32 %call, i32* %status, align 4
  %4 = load i32, i32* %status, align 4
  %cmp = icmp ne i32 %4, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %exit

if.end:                                           ; preds = %entry
  %5 = load %struct.mbedtls_rsa_context*, %struct.mbedtls_rsa_context** %rsa, align 8
  %call1 = call i64 @mbedtls_rsa_get_len(%struct.mbedtls_rsa_context* noundef %5) #3
  %mul = mul i64 %call1, 8
  %conv = trunc i64 %mul to i16
  %conv2 = zext i16 %conv to i64
  %6 = load i64*, i64** %bits.addr, align 8
  store i64 %conv2, i64* %6, align 8
  %7 = load %struct.psa_key_attributes_s*, %struct.psa_key_attributes_s** %attributes.addr, align 8
  %core3 = getelementptr inbounds %struct.psa_key_attributes_s, %struct.psa_key_attributes_s* %7, i32 0, i32 0
  %type4 = getelementptr inbounds %struct.psa_core_key_attributes_t, %struct.psa_core_key_attributes_t* %core3, i32 0, i32 0
  %8 = load i16, i16* %type4, align 8
  %9 = load %struct.mbedtls_rsa_context*, %struct.mbedtls_rsa_context** %rsa, align 8
  %10 = load i8*, i8** %key_buffer.addr, align 8
  %11 = load i64, i64* %key_buffer_size.addr, align 8
  %12 = load i64*, i64** %key_buffer_length.addr, align 8
  %call5 = call i32 @mbedtls_psa_rsa_export_key(i16 noundef zeroext %8, %struct.mbedtls_rsa_context* noundef %9, i8* noundef %10, i64 noundef %11, i64* noundef %12) #3
  store i32 %call5, i32* %status, align 4
  br label %exit

exit:                                             ; preds = %if.end, %if.then
  %13 = load %struct.mbedtls_rsa_context*, %struct.mbedtls_rsa_context** %rsa, align 8
  call void @mbedtls_rsa_free(%struct.mbedtls_rsa_context* noundef %13) #3
  %14 = load %struct.mbedtls_rsa_context*, %struct.mbedtls_rsa_context** %rsa, align 8
  %15 = bitcast %struct.mbedtls_rsa_context* %14 to i8*
  call void @free(i8* noundef %15) #4
  %16 = load i32, i32* %status, align 4
  ret i32 %16
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_psa_rsa_export_key(i16 noundef zeroext %type, %struct.mbedtls_rsa_context* noundef %rsa, i8* noundef %data, i64 noundef %data_size, i64* noundef %data_length) #0 {
entry:
  %retval = alloca i32, align 4
  %type.addr = alloca i16, align 2
  %rsa.addr = alloca %struct.mbedtls_rsa_context*, align 8
  %data.addr = alloca i8*, align 8
  %data_size.addr = alloca i64, align 8
  %data_length.addr = alloca i64*, align 8
  %ret = alloca i32, align 4
  %pk = alloca %struct.mbedtls_pk_context, align 8
  %pos = alloca i8*, align 8
  store i16 %type, i16* %type.addr, align 2
  store %struct.mbedtls_rsa_context* %rsa, %struct.mbedtls_rsa_context** %rsa.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  store i64 %data_size, i64* %data_size.addr, align 8
  store i64* %data_length, i64** %data_length.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %1 = load i64, i64* %data_size.addr, align 8
  %add.ptr = getelementptr inbounds i8, i8* %0, i64 %1
  store i8* %add.ptr, i8** %pos, align 8
  call void @mbedtls_pk_init(%struct.mbedtls_pk_context* noundef %pk) #3
  %pk_info = getelementptr inbounds %struct.mbedtls_pk_context, %struct.mbedtls_pk_context* %pk, i32 0, i32 0
  store %struct.mbedtls_pk_info_t* @mbedtls_rsa_info, %struct.mbedtls_pk_info_t** %pk_info, align 8
  %2 = load %struct.mbedtls_rsa_context*, %struct.mbedtls_rsa_context** %rsa.addr, align 8
  %3 = bitcast %struct.mbedtls_rsa_context* %2 to i8*
  %pk_ctx = getelementptr inbounds %struct.mbedtls_pk_context, %struct.mbedtls_pk_context* %pk, i32 0, i32 1
  store i8* %3, i8** %pk_ctx, align 8
  %4 = load i16, i16* %type.addr, align 2
  %conv = zext i16 %4 to i32
  %and = and i32 %conv, 28672
  %cmp = icmp eq i32 %and, 28672
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %5 = load i8*, i8** %data.addr, align 8
  %6 = load i64, i64* %data_size.addr, align 8
  %call = call i32 @mbedtls_pk_write_key_der(%struct.mbedtls_pk_context* noundef %pk, i8* noundef %5, i64 noundef %6) #3
  store i32 %call, i32* %ret, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  %7 = load i8*, i8** %data.addr, align 8
  %call2 = call i32 @mbedtls_pk_write_pubkey(i8** noundef %pos, i8* noundef %7, %struct.mbedtls_pk_context* noundef %pk) #3
  store i32 %call2, i32* %ret, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %8 = load i32, i32* %ret, align 4
  %cmp3 = icmp slt i32 %8, 0
  br i1 %cmp3, label %if.then5, label %if.end8

if.then5:                                         ; preds = %if.end
  %9 = load i8*, i8** %data.addr, align 8
  %10 = load i64, i64* %data_size.addr, align 8
  %call6 = call i8* @memset(i8* noundef %9, i32 noundef 0, i64 noundef %10) #4
  %11 = load i32, i32* %ret, align 4
  %call7 = call i32 @mbedtls_to_psa_error(i32 noundef %11) #3
  store i32 %call7, i32* %retval, align 4
  br label %return

if.end8:                                          ; preds = %if.end
  %12 = load i32, i32* %ret, align 4
  %conv9 = sext i32 %12 to i64
  %mul = mul i64 2, %conv9
  %13 = load i64, i64* %data_size.addr, align 8
  %cmp10 = icmp ule i64 %mul, %13
  br i1 %cmp10, label %if.then12, label %if.else23

if.then12:                                        ; preds = %if.end8
  %14 = load i8*, i8** %data.addr, align 8
  %15 = load i8*, i8** %data.addr, align 8
  %16 = load i64, i64* %data_size.addr, align 8
  %add.ptr13 = getelementptr inbounds i8, i8* %15, i64 %16
  %17 = load i32, i32* %ret, align 4
  %idx.ext = sext i32 %17 to i64
  %idx.neg = sub i64 0, %idx.ext
  %add.ptr14 = getelementptr inbounds i8, i8* %add.ptr13, i64 %idx.neg
  %18 = load i32, i32* %ret, align 4
  %conv15 = sext i32 %18 to i64
  %call16 = call i8* @memcpy(i8* noundef %14, i8* noundef %add.ptr14, i64 noundef %conv15) #4
  %19 = load i8*, i8** %data.addr, align 8
  %20 = load i64, i64* %data_size.addr, align 8
  %add.ptr17 = getelementptr inbounds i8, i8* %19, i64 %20
  %21 = load i32, i32* %ret, align 4
  %idx.ext18 = sext i32 %21 to i64
  %idx.neg19 = sub i64 0, %idx.ext18
  %add.ptr20 = getelementptr inbounds i8, i8* %add.ptr17, i64 %idx.neg19
  %22 = load i32, i32* %ret, align 4
  %conv21 = sext i32 %22 to i64
  %call22 = call i8* @memset(i8* noundef %add.ptr20, i32 noundef 0, i64 noundef %conv21) #4
  br label %if.end39

if.else23:                                        ; preds = %if.end8
  %23 = load i32, i32* %ret, align 4
  %conv24 = sext i32 %23 to i64
  %24 = load i64, i64* %data_size.addr, align 8
  %cmp25 = icmp ult i64 %conv24, %24
  br i1 %cmp25, label %if.then27, label %if.end38

if.then27:                                        ; preds = %if.else23
  %25 = load i8*, i8** %data.addr, align 8
  %26 = load i8*, i8** %data.addr, align 8
  %27 = load i64, i64* %data_size.addr, align 8
  %add.ptr28 = getelementptr inbounds i8, i8* %26, i64 %27
  %28 = load i32, i32* %ret, align 4
  %idx.ext29 = sext i32 %28 to i64
  %idx.neg30 = sub i64 0, %idx.ext29
  %add.ptr31 = getelementptr inbounds i8, i8* %add.ptr28, i64 %idx.neg30
  %29 = load i32, i32* %ret, align 4
  %conv32 = sext i32 %29 to i64
  %call33 = call i8* @memmove(i8* noundef %25, i8* noundef %add.ptr31, i64 noundef %conv32) #4
  %30 = load i8*, i8** %data.addr, align 8
  %31 = load i32, i32* %ret, align 4
  %idx.ext34 = sext i32 %31 to i64
  %add.ptr35 = getelementptr inbounds i8, i8* %30, i64 %idx.ext34
  %32 = load i64, i64* %data_size.addr, align 8
  %33 = load i32, i32* %ret, align 4
  %conv36 = sext i32 %33 to i64
  %sub = sub i64 %32, %conv36
  %call37 = call i8* @memset(i8* noundef %add.ptr35, i32 noundef 0, i64 noundef %sub) #4
  br label %if.end38

if.end38:                                         ; preds = %if.then27, %if.else23
  br label %if.end39

if.end39:                                         ; preds = %if.end38, %if.then12
  %34 = load i32, i32* %ret, align 4
  %conv40 = sext i32 %34 to i64
  %35 = load i64*, i64** %data_length.addr, align 8
  store i64 %conv40, i64* %35, align 8
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end39, %if.then5
  %36 = load i32, i32* %retval, align 4
  ret i32 %36
}

declare dso_local void @mbedtls_rsa_free(%struct.mbedtls_rsa_context* noundef) #1

; Function Attrs: nounwind
declare dso_local void @free(i8* noundef) #2

declare dso_local i32 @mbedtls_pk_write_key_der(%struct.mbedtls_pk_context* noundef, i8* noundef, i64 noundef) #1

declare dso_local i32 @mbedtls_pk_write_pubkey(i8** noundef, i8* noundef, %struct.mbedtls_pk_context* noundef) #1

; Function Attrs: nounwind
declare dso_local i8* @memset(i8* noundef, i32 noundef, i64 noundef) #2

; Function Attrs: nounwind
declare dso_local i8* @memcpy(i8* noundef, i8* noundef, i64 noundef) #2

; Function Attrs: nounwind
declare dso_local i8* @memmove(i8* noundef, i8* noundef, i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_psa_rsa_export_public_key(%struct.psa_key_attributes_s* noundef %attributes, i8* noundef %key_buffer, i64 noundef %key_buffer_size, i8* noundef %data, i64 noundef %data_size, i64* noundef %data_length) #0 {
entry:
  %retval = alloca i32, align 4
  %attributes.addr = alloca %struct.psa_key_attributes_s*, align 8
  %key_buffer.addr = alloca i8*, align 8
  %key_buffer_size.addr = alloca i64, align 8
  %data.addr = alloca i8*, align 8
  %data_size.addr = alloca i64, align 8
  %data_length.addr = alloca i64*, align 8
  %status = alloca i32, align 4
  %rsa = alloca %struct.mbedtls_rsa_context*, align 8
  store %struct.psa_key_attributes_s* %attributes, %struct.psa_key_attributes_s** %attributes.addr, align 8
  store i8* %key_buffer, i8** %key_buffer.addr, align 8
  store i64 %key_buffer_size, i64* %key_buffer_size.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  store i64 %data_size, i64* %data_size.addr, align 8
  store i64* %data_length, i64** %data_length.addr, align 8
  store i32 -151, i32* %status, align 4
  store %struct.mbedtls_rsa_context* null, %struct.mbedtls_rsa_context** %rsa, align 8
  %0 = load %struct.psa_key_attributes_s*, %struct.psa_key_attributes_s** %attributes.addr, align 8
  %core = getelementptr inbounds %struct.psa_key_attributes_s, %struct.psa_key_attributes_s* %0, i32 0, i32 0
  %type = getelementptr inbounds %struct.psa_core_key_attributes_t, %struct.psa_core_key_attributes_t* %core, i32 0, i32 0
  %1 = load i16, i16* %type, align 8
  %2 = load i8*, i8** %key_buffer.addr, align 8
  %3 = load i64, i64* %key_buffer_size.addr, align 8
  %call = call i32 @mbedtls_psa_rsa_load_representation(i16 noundef zeroext %1, i8* noundef %2, i64 noundef %3, %struct.mbedtls_rsa_context** noundef %rsa) #3
  store i32 %call, i32* %status, align 4
  %4 = load i32, i32* %status, align 4
  %cmp = icmp ne i32 %4, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load i32, i32* %status, align 4
  store i32 %5, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %6 = load %struct.mbedtls_rsa_context*, %struct.mbedtls_rsa_context** %rsa, align 8
  %7 = load i8*, i8** %data.addr, align 8
  %8 = load i64, i64* %data_size.addr, align 8
  %9 = load i64*, i64** %data_length.addr, align 8
  %call1 = call i32 @mbedtls_psa_rsa_export_key(i16 noundef zeroext 16385, %struct.mbedtls_rsa_context* noundef %6, i8* noundef %7, i64 noundef %8, i64* noundef %9) #3
  store i32 %call1, i32* %status, align 4
  %10 = load %struct.mbedtls_rsa_context*, %struct.mbedtls_rsa_context** %rsa, align 8
  call void @mbedtls_rsa_free(%struct.mbedtls_rsa_context* noundef %10) #3
  %11 = load %struct.mbedtls_rsa_context*, %struct.mbedtls_rsa_context** %rsa, align 8
  %12 = bitcast %struct.mbedtls_rsa_context* %11 to i8*
  call void @free(i8* noundef %12) #4
  %13 = load i32, i32* %status, align 4
  store i32 %13, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %14 = load i32, i32* %retval, align 4
  ret i32 %14
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_psa_rsa_generate_key(%struct.psa_key_attributes_s* noundef %attributes, i8* noundef %key_buffer, i64 noundef %key_buffer_size, i64* noundef %key_buffer_length) #0 {
entry:
  %retval = alloca i32, align 4
  %attributes.addr = alloca %struct.psa_key_attributes_s*, align 8
  %key_buffer.addr = alloca i8*, align 8
  %key_buffer_size.addr = alloca i64, align 8
  %key_buffer_length.addr = alloca i64*, align 8
  %status = alloca i32, align 4
  %rsa = alloca %struct.mbedtls_rsa_context, align 8
  %ret = alloca i32, align 4
  %exponent = alloca i32, align 4
  store %struct.psa_key_attributes_s* %attributes, %struct.psa_key_attributes_s** %attributes.addr, align 8
  store i8* %key_buffer, i8** %key_buffer.addr, align 8
  store i64 %key_buffer_size, i64* %key_buffer_size.addr, align 8
  store i64* %key_buffer_length, i64** %key_buffer_length.addr, align 8
  store i32 -110, i32* %ret, align 4
  %0 = load %struct.psa_key_attributes_s*, %struct.psa_key_attributes_s** %attributes.addr, align 8
  %domain_parameters = getelementptr inbounds %struct.psa_key_attributes_s, %struct.psa_key_attributes_s* %0, i32 0, i32 1
  %1 = load i8*, i8** %domain_parameters, align 8
  %2 = load %struct.psa_key_attributes_s*, %struct.psa_key_attributes_s** %attributes.addr, align 8
  %domain_parameters_size = getelementptr inbounds %struct.psa_key_attributes_s, %struct.psa_key_attributes_s* %2, i32 0, i32 2
  %3 = load i64, i64* %domain_parameters_size, align 8
  %call = call i32 @psa_rsa_read_exponent(i8* noundef %1, i64 noundef %3, i32* noundef %exponent) #3
  store i32 %call, i32* %status, align 4
  %4 = load i32, i32* %status, align 4
  %cmp = icmp ne i32 %4, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load i32, i32* %status, align 4
  store i32 %5, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  call void @mbedtls_rsa_init(%struct.mbedtls_rsa_context* noundef %rsa) #3
  %6 = load %struct.mbedtls_ctr_drbg_context*, %struct.mbedtls_ctr_drbg_context** @mbedtls_psa_random_state, align 8
  %7 = bitcast %struct.mbedtls_ctr_drbg_context* %6 to i8*
  %8 = load %struct.psa_key_attributes_s*, %struct.psa_key_attributes_s** %attributes.addr, align 8
  %core = getelementptr inbounds %struct.psa_key_attributes_s, %struct.psa_key_attributes_s* %8, i32 0, i32 0
  %bits = getelementptr inbounds %struct.psa_core_key_attributes_t, %struct.psa_core_key_attributes_t* %core, i32 0, i32 1
  %9 = load i16, i16* %bits, align 2
  %conv = zext i16 %9 to i32
  %10 = load i32, i32* %exponent, align 4
  %call1 = call i32 @mbedtls_rsa_gen_key(%struct.mbedtls_rsa_context* noundef %rsa, i32 (i8*, i8*, i64)* noundef @mbedtls_ctr_drbg_random, i8* noundef %7, i32 noundef %conv, i32 noundef %10) #3
  store i32 %call1, i32* %ret, align 4
  %11 = load i32, i32* %ret, align 4
  %cmp2 = icmp ne i32 %11, 0
  br i1 %cmp2, label %if.then4, label %if.end6

if.then4:                                         ; preds = %if.end
  %12 = load i32, i32* %ret, align 4
  %call5 = call i32 @mbedtls_to_psa_error(i32 noundef %12) #3
  store i32 %call5, i32* %retval, align 4
  br label %return

if.end6:                                          ; preds = %if.end
  %13 = load %struct.psa_key_attributes_s*, %struct.psa_key_attributes_s** %attributes.addr, align 8
  %core7 = getelementptr inbounds %struct.psa_key_attributes_s, %struct.psa_key_attributes_s* %13, i32 0, i32 0
  %type = getelementptr inbounds %struct.psa_core_key_attributes_t, %struct.psa_core_key_attributes_t* %core7, i32 0, i32 0
  %14 = load i16, i16* %type, align 8
  %15 = load i8*, i8** %key_buffer.addr, align 8
  %16 = load i64, i64* %key_buffer_size.addr, align 8
  %17 = load i64*, i64** %key_buffer_length.addr, align 8
  %call8 = call i32 @mbedtls_psa_rsa_export_key(i16 noundef zeroext %14, %struct.mbedtls_rsa_context* noundef %rsa, i8* noundef %15, i64 noundef %16, i64* noundef %17) #3
  store i32 %call8, i32* %status, align 4
  call void @mbedtls_rsa_free(%struct.mbedtls_rsa_context* noundef %rsa) #3
  %18 = load i32, i32* %status, align 4
  store i32 %18, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end6, %if.then4, %if.then
  %19 = load i32, i32* %retval, align 4
  ret i32 %19
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @psa_rsa_read_exponent(i8* noundef %domain_parameters, i64 noundef %domain_parameters_size, i32* noundef %exponent) #0 {
entry:
  %retval = alloca i32, align 4
  %domain_parameters.addr = alloca i8*, align 8
  %domain_parameters_size.addr = alloca i64, align 8
  %exponent.addr = alloca i32*, align 8
  %i = alloca i64, align 8
  %acc = alloca i32, align 4
  store i8* %domain_parameters, i8** %domain_parameters.addr, align 8
  store i64 %domain_parameters_size, i64* %domain_parameters_size.addr, align 8
  store i32* %exponent, i32** %exponent.addr, align 8
  store i32 0, i32* %acc, align 4
  %0 = load i64, i64* %domain_parameters_size.addr, align 8
  %cmp = icmp eq i64 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i32*, i32** %exponent.addr, align 8
  store i32 65537, i32* %1, align 4
  store i32 0, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i64, i64* %domain_parameters_size.addr, align 8
  %cmp1 = icmp ugt i64 %2, 4
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  store i32 -134, i32* %retval, align 4
  br label %return

if.end3:                                          ; preds = %if.end
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end3
  %3 = load i64, i64* %i, align 8
  %4 = load i64, i64* %domain_parameters_size.addr, align 8
  %cmp4 = icmp ult i64 %3, %4
  br i1 %cmp4, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %acc, align 4
  %shl = shl i32 %5, 8
  %6 = load i8*, i8** %domain_parameters.addr, align 8
  %7 = load i64, i64* %i, align 8
  %arrayidx = getelementptr inbounds i8, i8* %6, i64 %7
  %8 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %8 to i32
  %or = or i32 %shl, %conv
  store i32 %or, i32* %acc, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %9 = load i64, i64* %i, align 8
  %inc = add i64 %9, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond, !llvm.loop !4

for.end:                                          ; preds = %for.cond
  %10 = load i32, i32* %acc, align 4
  %cmp5 = icmp ugt i32 %10, 2147483647
  br i1 %cmp5, label %if.then7, label %if.end8

if.then7:                                         ; preds = %for.end
  store i32 -134, i32* %retval, align 4
  br label %return

if.end8:                                          ; preds = %for.end
  %11 = load i32, i32* %acc, align 4
  %12 = load i32*, i32** %exponent.addr, align 8
  store i32 %11, i32* %12, align 4
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end8, %if.then7, %if.then2, %if.then
  %13 = load i32, i32* %retval, align 4
  ret i32 %13
}

declare dso_local void @mbedtls_rsa_init(%struct.mbedtls_rsa_context* noundef) #1

declare dso_local i32 @mbedtls_rsa_gen_key(%struct.mbedtls_rsa_context* noundef, i32 (i8*, i8*, i64)* noundef, i8* noundef, i32 noundef, i32 noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_psa_rsa_sign_hash(%struct.psa_key_attributes_s* noundef %attributes, i8* noundef %key_buffer, i64 noundef %key_buffer_size, i32 noundef %alg, i8* noundef %hash, i64 noundef %hash_length, i8* noundef %signature, i64 noundef %signature_size, i64* noundef %signature_length) #0 {
entry:
  %retval = alloca i32, align 4
  %attributes.addr = alloca %struct.psa_key_attributes_s*, align 8
  %key_buffer.addr = alloca i8*, align 8
  %key_buffer_size.addr = alloca i64, align 8
  %alg.addr = alloca i32, align 4
  %hash.addr = alloca i8*, align 8
  %hash_length.addr = alloca i64, align 8
  %signature.addr = alloca i8*, align 8
  %signature_size.addr = alloca i64, align 8
  %signature_length.addr = alloca i64*, align 8
  %status = alloca i32, align 4
  %rsa = alloca %struct.mbedtls_rsa_context*, align 8
  %ret = alloca i32, align 4
  %md_alg = alloca i32, align 4
  store %struct.psa_key_attributes_s* %attributes, %struct.psa_key_attributes_s** %attributes.addr, align 8
  store i8* %key_buffer, i8** %key_buffer.addr, align 8
  store i64 %key_buffer_size, i64* %key_buffer_size.addr, align 8
  store i32 %alg, i32* %alg.addr, align 4
  store i8* %hash, i8** %hash.addr, align 8
  store i64 %hash_length, i64* %hash_length.addr, align 8
  store i8* %signature, i8** %signature.addr, align 8
  store i64 %signature_size, i64* %signature_size.addr, align 8
  store i64* %signature_length, i64** %signature_length.addr, align 8
  store i32 -151, i32* %status, align 4
  store %struct.mbedtls_rsa_context* null, %struct.mbedtls_rsa_context** %rsa, align 8
  store i32 -110, i32* %ret, align 4
  %0 = load %struct.psa_key_attributes_s*, %struct.psa_key_attributes_s** %attributes.addr, align 8
  %core = getelementptr inbounds %struct.psa_key_attributes_s, %struct.psa_key_attributes_s* %0, i32 0, i32 0
  %type = getelementptr inbounds %struct.psa_core_key_attributes_t, %struct.psa_core_key_attributes_t* %core, i32 0, i32 0
  %1 = load i16, i16* %type, align 8
  %2 = load i8*, i8** %key_buffer.addr, align 8
  %3 = load i64, i64* %key_buffer_size.addr, align 8
  %call = call i32 @mbedtls_psa_rsa_load_representation(i16 noundef zeroext %1, i8* noundef %2, i64 noundef %3, %struct.mbedtls_rsa_context** noundef %rsa) #3
  store i32 %call, i32* %status, align 4
  %4 = load i32, i32* %status, align 4
  %cmp = icmp ne i32 %4, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load i32, i32* %status, align 4
  store i32 %5, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %6 = load i32, i32* %alg.addr, align 4
  %7 = load i64, i64* %hash_length.addr, align 8
  %call1 = call i32 @psa_rsa_decode_md_type(i32 noundef %6, i64 noundef %7, i32* noundef %md_alg) #3
  store i32 %call1, i32* %status, align 4
  %8 = load i32, i32* %status, align 4
  %cmp2 = icmp ne i32 %8, 0
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  br label %exit

if.end4:                                          ; preds = %if.end
  %9 = load i64, i64* %signature_size.addr, align 8
  %10 = load %struct.mbedtls_rsa_context*, %struct.mbedtls_rsa_context** %rsa, align 8
  %call5 = call i64 @mbedtls_rsa_get_len(%struct.mbedtls_rsa_context* noundef %10) #3
  %cmp6 = icmp ult i64 %9, %call5
  br i1 %cmp6, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.end4
  store i32 -138, i32* %status, align 4
  br label %exit

if.end8:                                          ; preds = %if.end4
  %11 = load i32, i32* %alg.addr, align 4
  %and = and i32 %11, -256
  %cmp9 = icmp eq i32 %and, 100663808
  br i1 %cmp9, label %if.then10, label %if.else

if.then10:                                        ; preds = %if.end8
  %12 = load %struct.mbedtls_rsa_context*, %struct.mbedtls_rsa_context** %rsa, align 8
  %call11 = call i32 @mbedtls_rsa_set_padding(%struct.mbedtls_rsa_context* noundef %12, i32 noundef 0, i32 noundef 0) #3
  store i32 %call11, i32* %ret, align 4
  %13 = load i32, i32* %ret, align 4
  %cmp12 = icmp eq i32 %13, 0
  br i1 %cmp12, label %if.then13, label %if.end15

if.then13:                                        ; preds = %if.then10
  %14 = load %struct.mbedtls_rsa_context*, %struct.mbedtls_rsa_context** %rsa, align 8
  %15 = load %struct.mbedtls_ctr_drbg_context*, %struct.mbedtls_ctr_drbg_context** @mbedtls_psa_random_state, align 8
  %16 = bitcast %struct.mbedtls_ctr_drbg_context* %15 to i8*
  %17 = load i32, i32* %md_alg, align 4
  %18 = load i64, i64* %hash_length.addr, align 8
  %conv = trunc i64 %18 to i32
  %19 = load i8*, i8** %hash.addr, align 8
  %20 = load i8*, i8** %signature.addr, align 8
  %call14 = call i32 @mbedtls_rsa_pkcs1_sign(%struct.mbedtls_rsa_context* noundef %14, i32 (i8*, i8*, i64)* noundef @mbedtls_ctr_drbg_random, i8* noundef %16, i32 noundef %17, i32 noundef %conv, i8* noundef %19, i8* noundef %20) #3
  store i32 %call14, i32* %ret, align 4
  br label %if.end15

if.end15:                                         ; preds = %if.then13, %if.then10
  br label %if.end32

if.else:                                          ; preds = %if.end8
  %21 = load i32, i32* %alg.addr, align 4
  %and16 = and i32 %21, -256
  %cmp17 = icmp eq i32 %and16, 100664064
  br i1 %cmp17, label %if.then22, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else
  %22 = load i32, i32* %alg.addr, align 4
  %and19 = and i32 %22, -256
  %cmp20 = icmp eq i32 %and19, 100668160
  br i1 %cmp20, label %if.then22, label %if.else30

if.then22:                                        ; preds = %lor.lhs.false, %if.else
  %23 = load %struct.mbedtls_rsa_context*, %struct.mbedtls_rsa_context** %rsa, align 8
  %24 = load i32, i32* %md_alg, align 4
  %call23 = call i32 @mbedtls_rsa_set_padding(%struct.mbedtls_rsa_context* noundef %23, i32 noundef 1, i32 noundef %24) #3
  store i32 %call23, i32* %ret, align 4
  %25 = load i32, i32* %ret, align 4
  %cmp24 = icmp eq i32 %25, 0
  br i1 %cmp24, label %if.then26, label %if.end29

if.then26:                                        ; preds = %if.then22
  %26 = load %struct.mbedtls_rsa_context*, %struct.mbedtls_rsa_context** %rsa, align 8
  %27 = load %struct.mbedtls_ctr_drbg_context*, %struct.mbedtls_ctr_drbg_context** @mbedtls_psa_random_state, align 8
  %28 = bitcast %struct.mbedtls_ctr_drbg_context* %27 to i8*
  %29 = load i64, i64* %hash_length.addr, align 8
  %conv27 = trunc i64 %29 to i32
  %30 = load i8*, i8** %hash.addr, align 8
  %31 = load i8*, i8** %signature.addr, align 8
  %call28 = call i32 @mbedtls_rsa_rsassa_pss_sign(%struct.mbedtls_rsa_context* noundef %26, i32 (i8*, i8*, i64)* noundef @mbedtls_ctr_drbg_random, i8* noundef %28, i32 noundef 0, i32 noundef %conv27, i8* noundef %30, i8* noundef %31) #3
  store i32 %call28, i32* %ret, align 4
  br label %if.end29

if.end29:                                         ; preds = %if.then26, %if.then22
  br label %if.end31

if.else30:                                        ; preds = %lor.lhs.false
  store i32 -135, i32* %status, align 4
  br label %exit

if.end31:                                         ; preds = %if.end29
  br label %if.end32

if.end32:                                         ; preds = %if.end31, %if.end15
  %32 = load i32, i32* %ret, align 4
  %cmp33 = icmp eq i32 %32, 0
  br i1 %cmp33, label %if.then35, label %if.end37

if.then35:                                        ; preds = %if.end32
  %33 = load %struct.mbedtls_rsa_context*, %struct.mbedtls_rsa_context** %rsa, align 8
  %call36 = call i64 @mbedtls_rsa_get_len(%struct.mbedtls_rsa_context* noundef %33) #3
  %34 = load i64*, i64** %signature_length.addr, align 8
  store i64 %call36, i64* %34, align 8
  br label %if.end37

if.end37:                                         ; preds = %if.then35, %if.end32
  %35 = load i32, i32* %ret, align 4
  %call38 = call i32 @mbedtls_to_psa_error(i32 noundef %35) #3
  store i32 %call38, i32* %status, align 4
  br label %exit

exit:                                             ; preds = %if.end37, %if.else30, %if.then7, %if.then3
  %36 = load %struct.mbedtls_rsa_context*, %struct.mbedtls_rsa_context** %rsa, align 8
  call void @mbedtls_rsa_free(%struct.mbedtls_rsa_context* noundef %36) #3
  %37 = load %struct.mbedtls_rsa_context*, %struct.mbedtls_rsa_context** %rsa, align 8
  %38 = bitcast %struct.mbedtls_rsa_context* %37 to i8*
  call void @free(i8* noundef %38) #4
  %39 = load i32, i32* %status, align 4
  store i32 %39, i32* %retval, align 4
  br label %return

return:                                           ; preds = %exit, %if.then
  %40 = load i32, i32* %retval, align 4
  ret i32 %40
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @psa_rsa_decode_md_type(i32 noundef %alg, i64 noundef %hash_length, i32* noundef %md_alg) #0 {
entry:
  %retval = alloca i32, align 4
  %alg.addr = alloca i32, align 4
  %hash_length.addr = alloca i64, align 8
  %md_alg.addr = alloca i32*, align 8
  %hash_alg = alloca i32, align 4
  %md_info = alloca %struct.mbedtls_md_info_t*, align 8
  store i32 %alg, i32* %alg.addr, align 4
  store i64 %hash_length, i64* %hash_length.addr, align 8
  store i32* %md_alg, i32** %md_alg.addr, align 8
  %0 = load i32, i32* %alg.addr, align 4
  %and = and i32 %0, -256
  %cmp = icmp eq i32 %and, 100664064
  br i1 %cmp, label %land.lhs.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32, i32* %alg.addr, align 4
  %and1 = and i32 %1, -256
  %cmp2 = icmp eq i32 %and1, 100668160
  br i1 %cmp2, label %land.lhs.true, label %lor.lhs.false3

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %2 = load i32, i32* %alg.addr, align 4
  %and4 = and i32 %2, -256
  %cmp5 = icmp eq i32 %and4, 100663808
  br i1 %cmp5, label %land.lhs.true, label %lor.lhs.false6

lor.lhs.false6:                                   ; preds = %lor.lhs.false3
  %3 = load i32, i32* %alg.addr, align 4
  %and7 = and i32 %3, -256
  %and8 = and i32 %and7, -257
  %cmp9 = icmp eq i32 %and8, 100664832
  br i1 %cmp9, label %land.lhs.true, label %lor.lhs.false10

lor.lhs.false10:                                  ; preds = %lor.lhs.false6
  %4 = load i32, i32* %alg.addr, align 4
  %and11 = and i32 %4, -256
  %cmp12 = icmp eq i32 %and11, 100665600
  br i1 %cmp12, label %land.lhs.true, label %lor.lhs.false13

lor.lhs.false13:                                  ; preds = %lor.lhs.false10
  %5 = load i32, i32* %alg.addr, align 4
  %and14 = and i32 %5, -256
  %and15 = and i32 %and14, -257
  %cmp16 = icmp eq i32 %and15, 100664320
  br i1 %cmp16, label %land.lhs.true, label %cond.false

land.lhs.true:                                    ; preds = %lor.lhs.false13, %lor.lhs.false10, %lor.lhs.false6, %lor.lhs.false3, %lor.lhs.false, %entry
  %6 = load i32, i32* %alg.addr, align 4
  %and17 = and i32 %6, 255
  %cmp18 = icmp ne i32 %and17, 0
  br i1 %cmp18, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true
  %7 = load i32, i32* %alg.addr, align 4
  %and19 = and i32 %7, 255
  %or = or i32 %and19, 33554432
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true, %lor.lhs.false13
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %or, %cond.true ], [ 0, %cond.false ]
  store i32 %cond, i32* %hash_alg, align 4
  %8 = load i32, i32* %hash_alg, align 4
  %call = call %struct.mbedtls_md_info_t* @mbedtls_md_info_from_psa(i32 noundef %8) #3
  store %struct.mbedtls_md_info_t* %call, %struct.mbedtls_md_info_t** %md_info, align 8
  %9 = load %struct.mbedtls_md_info_t*, %struct.mbedtls_md_info_t** %md_info, align 8
  %call20 = call i32 @mbedtls_md_get_type(%struct.mbedtls_md_info_t* noundef %9) #3
  %10 = load i32*, i32** %md_alg.addr, align 8
  store i32 %call20, i32* %10, align 4
  %11 = load i64, i64* %hash_length.addr, align 8
  %cmp21 = icmp ugt i64 %11, 4294967295
  br i1 %cmp21, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  store i32 -135, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %cond.end
  %12 = load i32, i32* %alg.addr, align 4
  %cmp22 = icmp ne i32 %12, 100663808
  br i1 %cmp22, label %if.then23, label %if.end32

if.then23:                                        ; preds = %if.end
  %13 = load %struct.mbedtls_md_info_t*, %struct.mbedtls_md_info_t** %md_info, align 8
  %cmp24 = icmp eq %struct.mbedtls_md_info_t* %13, null
  br i1 %cmp24, label %if.then25, label %if.end26

if.then25:                                        ; preds = %if.then23
  store i32 -134, i32* %retval, align 4
  br label %return

if.end26:                                         ; preds = %if.then23
  %14 = load %struct.mbedtls_md_info_t*, %struct.mbedtls_md_info_t** %md_info, align 8
  %call27 = call zeroext i8 @mbedtls_md_get_size(%struct.mbedtls_md_info_t* noundef %14) #3
  %conv = zext i8 %call27 to i64
  %15 = load i64, i64* %hash_length.addr, align 8
  %cmp28 = icmp ne i64 %conv, %15
  br i1 %cmp28, label %if.then30, label %if.end31

if.then30:                                        ; preds = %if.end26
  store i32 -135, i32* %retval, align 4
  br label %return

if.end31:                                         ; preds = %if.end26
  br label %if.end32

if.end32:                                         ; preds = %if.end31, %if.end
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end32, %if.then30, %if.then25, %if.then
  %16 = load i32, i32* %retval, align 4
  ret i32 %16
}

declare dso_local i32 @mbedtls_rsa_set_padding(%struct.mbedtls_rsa_context* noundef, i32 noundef, i32 noundef) #1

declare dso_local i32 @mbedtls_rsa_pkcs1_sign(%struct.mbedtls_rsa_context* noundef, i32 (i8*, i8*, i64)* noundef, i8* noundef, i32 noundef, i32 noundef, i8* noundef, i8* noundef) #1

declare dso_local i32 @mbedtls_rsa_rsassa_pss_sign(%struct.mbedtls_rsa_context* noundef, i32 (i8*, i8*, i64)* noundef, i8* noundef, i32 noundef, i32 noundef, i8* noundef, i8* noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_psa_rsa_verify_hash(%struct.psa_key_attributes_s* noundef %attributes, i8* noundef %key_buffer, i64 noundef %key_buffer_size, i32 noundef %alg, i8* noundef %hash, i64 noundef %hash_length, i8* noundef %signature, i64 noundef %signature_length) #0 {
entry:
  %attributes.addr = alloca %struct.psa_key_attributes_s*, align 8
  %key_buffer.addr = alloca i8*, align 8
  %key_buffer_size.addr = alloca i64, align 8
  %alg.addr = alloca i32, align 4
  %hash.addr = alloca i8*, align 8
  %hash_length.addr = alloca i64, align 8
  %signature.addr = alloca i8*, align 8
  %signature_length.addr = alloca i64, align 8
  %status = alloca i32, align 4
  %rsa = alloca %struct.mbedtls_rsa_context*, align 8
  %ret = alloca i32, align 4
  %md_alg = alloca i32, align 4
  %slen = alloca i32, align 4
  store %struct.psa_key_attributes_s* %attributes, %struct.psa_key_attributes_s** %attributes.addr, align 8
  store i8* %key_buffer, i8** %key_buffer.addr, align 8
  store i64 %key_buffer_size, i64* %key_buffer_size.addr, align 8
  store i32 %alg, i32* %alg.addr, align 4
  store i8* %hash, i8** %hash.addr, align 8
  store i64 %hash_length, i64* %hash_length.addr, align 8
  store i8* %signature, i8** %signature.addr, align 8
  store i64 %signature_length, i64* %signature_length.addr, align 8
  store i32 -151, i32* %status, align 4
  store %struct.mbedtls_rsa_context* null, %struct.mbedtls_rsa_context** %rsa, align 8
  store i32 -110, i32* %ret, align 4
  %0 = load %struct.psa_key_attributes_s*, %struct.psa_key_attributes_s** %attributes.addr, align 8
  %core = getelementptr inbounds %struct.psa_key_attributes_s, %struct.psa_key_attributes_s* %0, i32 0, i32 0
  %type = getelementptr inbounds %struct.psa_core_key_attributes_t, %struct.psa_core_key_attributes_t* %core, i32 0, i32 0
  %1 = load i16, i16* %type, align 8
  %2 = load i8*, i8** %key_buffer.addr, align 8
  %3 = load i64, i64* %key_buffer_size.addr, align 8
  %call = call i32 @mbedtls_psa_rsa_load_representation(i16 noundef zeroext %1, i8* noundef %2, i64 noundef %3, %struct.mbedtls_rsa_context** noundef %rsa) #3
  store i32 %call, i32* %status, align 4
  %4 = load i32, i32* %status, align 4
  %cmp = icmp ne i32 %4, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %exit

if.end:                                           ; preds = %entry
  %5 = load i32, i32* %alg.addr, align 4
  %6 = load i64, i64* %hash_length.addr, align 8
  %call1 = call i32 @psa_rsa_decode_md_type(i32 noundef %5, i64 noundef %6, i32* noundef %md_alg) #3
  store i32 %call1, i32* %status, align 4
  %7 = load i32, i32* %status, align 4
  %cmp2 = icmp ne i32 %7, 0
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  br label %exit

if.end4:                                          ; preds = %if.end
  %8 = load i64, i64* %signature_length.addr, align 8
  %9 = load %struct.mbedtls_rsa_context*, %struct.mbedtls_rsa_context** %rsa, align 8
  %call5 = call i64 @mbedtls_rsa_get_len(%struct.mbedtls_rsa_context* noundef %9) #3
  %cmp6 = icmp ne i64 %8, %call5
  br i1 %cmp6, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.end4
  store i32 -149, i32* %status, align 4
  br label %exit

if.end8:                                          ; preds = %if.end4
  %10 = load i32, i32* %alg.addr, align 4
  %and = and i32 %10, -256
  %cmp9 = icmp eq i32 %and, 100663808
  br i1 %cmp9, label %if.then10, label %if.else

if.then10:                                        ; preds = %if.end8
  %11 = load %struct.mbedtls_rsa_context*, %struct.mbedtls_rsa_context** %rsa, align 8
  %call11 = call i32 @mbedtls_rsa_set_padding(%struct.mbedtls_rsa_context* noundef %11, i32 noundef 0, i32 noundef 0) #3
  store i32 %call11, i32* %ret, align 4
  %12 = load i32, i32* %ret, align 4
  %cmp12 = icmp eq i32 %12, 0
  br i1 %cmp12, label %if.then13, label %if.end15

if.then13:                                        ; preds = %if.then10
  %13 = load %struct.mbedtls_rsa_context*, %struct.mbedtls_rsa_context** %rsa, align 8
  %14 = load i32, i32* %md_alg, align 4
  %15 = load i64, i64* %hash_length.addr, align 8
  %conv = trunc i64 %15 to i32
  %16 = load i8*, i8** %hash.addr, align 8
  %17 = load i8*, i8** %signature.addr, align 8
  %call14 = call i32 @mbedtls_rsa_pkcs1_verify(%struct.mbedtls_rsa_context* noundef %13, i32 noundef %14, i32 noundef %conv, i8* noundef %16, i8* noundef %17) #3
  store i32 %call14, i32* %ret, align 4
  br label %if.end15

if.end15:                                         ; preds = %if.then13, %if.then10
  br label %if.end33

if.else:                                          ; preds = %if.end8
  %18 = load i32, i32* %alg.addr, align 4
  %and16 = and i32 %18, -256
  %cmp17 = icmp eq i32 %and16, 100664064
  br i1 %cmp17, label %if.then22, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else
  %19 = load i32, i32* %alg.addr, align 4
  %and19 = and i32 %19, -256
  %cmp20 = icmp eq i32 %and19, 100668160
  br i1 %cmp20, label %if.then22, label %if.else31

if.then22:                                        ; preds = %lor.lhs.false, %if.else
  %20 = load %struct.mbedtls_rsa_context*, %struct.mbedtls_rsa_context** %rsa, align 8
  %21 = load i32, i32* %md_alg, align 4
  %call23 = call i32 @mbedtls_rsa_set_padding(%struct.mbedtls_rsa_context* noundef %20, i32 noundef 1, i32 noundef %21) #3
  store i32 %call23, i32* %ret, align 4
  %22 = load i32, i32* %ret, align 4
  %cmp24 = icmp eq i32 %22, 0
  br i1 %cmp24, label %if.then26, label %if.end30

if.then26:                                        ; preds = %if.then22
  %23 = load i32, i32* %alg.addr, align 4
  %24 = load %struct.mbedtls_rsa_context*, %struct.mbedtls_rsa_context** %rsa, align 8
  %25 = load i64, i64* %hash_length.addr, align 8
  %call27 = call i32 @rsa_pss_expected_salt_len(i32 noundef %23, %struct.mbedtls_rsa_context* noundef %24, i64 noundef %25) #3
  store i32 %call27, i32* %slen, align 4
  %26 = load %struct.mbedtls_rsa_context*, %struct.mbedtls_rsa_context** %rsa, align 8
  %27 = load i32, i32* %md_alg, align 4
  %28 = load i64, i64* %hash_length.addr, align 8
  %conv28 = trunc i64 %28 to i32
  %29 = load i8*, i8** %hash.addr, align 8
  %30 = load i32, i32* %md_alg, align 4
  %31 = load i32, i32* %slen, align 4
  %32 = load i8*, i8** %signature.addr, align 8
  %call29 = call i32 @mbedtls_rsa_rsassa_pss_verify_ext(%struct.mbedtls_rsa_context* noundef %26, i32 noundef %27, i32 noundef %conv28, i8* noundef %29, i32 noundef %30, i32 noundef %31, i8* noundef %32) #3
  store i32 %call29, i32* %ret, align 4
  br label %if.end30

if.end30:                                         ; preds = %if.then26, %if.then22
  br label %if.end32

if.else31:                                        ; preds = %lor.lhs.false
  store i32 -135, i32* %status, align 4
  br label %exit

if.end32:                                         ; preds = %if.end30
  br label %if.end33

if.end33:                                         ; preds = %if.end32, %if.end15
  %33 = load i32, i32* %ret, align 4
  %cmp34 = icmp eq i32 %33, -16640
  br i1 %cmp34, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end33
  br label %cond.end

cond.false:                                       ; preds = %if.end33
  %34 = load i32, i32* %ret, align 4
  %call36 = call i32 @mbedtls_to_psa_error(i32 noundef %34) #3
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ -149, %cond.true ], [ %call36, %cond.false ]
  store i32 %cond, i32* %status, align 4
  br label %exit

exit:                                             ; preds = %cond.end, %if.else31, %if.then7, %if.then3, %if.then
  %35 = load %struct.mbedtls_rsa_context*, %struct.mbedtls_rsa_context** %rsa, align 8
  call void @mbedtls_rsa_free(%struct.mbedtls_rsa_context* noundef %35) #3
  %36 = load %struct.mbedtls_rsa_context*, %struct.mbedtls_rsa_context** %rsa, align 8
  %37 = bitcast %struct.mbedtls_rsa_context* %36 to i8*
  call void @free(i8* noundef %37) #4
  %38 = load i32, i32* %status, align 4
  ret i32 %38
}

declare dso_local i32 @mbedtls_rsa_pkcs1_verify(%struct.mbedtls_rsa_context* noundef, i32 noundef, i32 noundef, i8* noundef, i8* noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rsa_pss_expected_salt_len(i32 noundef %alg, %struct.mbedtls_rsa_context* noundef %rsa, i64 noundef %hash_length) #0 {
entry:
  %retval = alloca i32, align 4
  %alg.addr = alloca i32, align 4
  %rsa.addr = alloca %struct.mbedtls_rsa_context*, align 8
  %hash_length.addr = alloca i64, align 8
  %klen = alloca i32, align 4
  %hlen = alloca i32, align 4
  %room = alloca i32, align 4
  store i32 %alg, i32* %alg.addr, align 4
  store %struct.mbedtls_rsa_context* %rsa, %struct.mbedtls_rsa_context** %rsa.addr, align 8
  store i64 %hash_length, i64* %hash_length.addr, align 8
  %0 = load i32, i32* %alg.addr, align 4
  %and = and i32 %0, -256
  %cmp = icmp eq i32 %and, 100668160
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct.mbedtls_rsa_context*, %struct.mbedtls_rsa_context** %rsa.addr, align 8
  %call = call i64 @mbedtls_rsa_get_len(%struct.mbedtls_rsa_context* noundef %1) #3
  %conv = trunc i64 %call to i32
  store i32 %conv, i32* %klen, align 4
  %2 = load i64, i64* %hash_length.addr, align 8
  %conv1 = trunc i64 %2 to i32
  store i32 %conv1, i32* %hlen, align 4
  %3 = load i32, i32* %klen, align 4
  %sub = sub nsw i32 %3, 2
  %4 = load i32, i32* %hlen, align 4
  %sub2 = sub nsw i32 %sub, %4
  store i32 %sub2, i32* %room, align 4
  %5 = load i32, i32* %room, align 4
  %cmp3 = icmp slt i32 %5, 0
  br i1 %cmp3, label %if.then5, label %if.else

if.then5:                                         ; preds = %if.end
  store i32 0, i32* %retval, align 4
  br label %return

if.else:                                          ; preds = %if.end
  %6 = load i32, i32* %room, align 4
  %7 = load i32, i32* %hlen, align 4
  %cmp6 = icmp sgt i32 %6, %7
  br i1 %cmp6, label %if.then8, label %if.else9

if.then8:                                         ; preds = %if.else
  %8 = load i32, i32* %hlen, align 4
  store i32 %8, i32* %retval, align 4
  br label %return

if.else9:                                         ; preds = %if.else
  %9 = load i32, i32* %room, align 4
  store i32 %9, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.else9, %if.then8, %if.then5, %if.then
  %10 = load i32, i32* %retval, align 4
  ret i32 %10
}

declare dso_local i32 @mbedtls_rsa_rsassa_pss_verify_ext(%struct.mbedtls_rsa_context* noundef, i32 noundef, i32 noundef, i8* noundef, i32 noundef, i32 noundef, i8* noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_psa_asymmetric_encrypt(%struct.psa_key_attributes_s* noundef %attributes, i8* noundef %key_buffer, i64 noundef %key_buffer_size, i32 noundef %alg, i8* noundef %input, i64 noundef %input_length, i8* noundef %salt, i64 noundef %salt_length, i8* noundef %output, i64 noundef %output_size, i64* noundef %output_length) #0 {
entry:
  %attributes.addr = alloca %struct.psa_key_attributes_s*, align 8
  %key_buffer.addr = alloca i8*, align 8
  %key_buffer_size.addr = alloca i64, align 8
  %alg.addr = alloca i32, align 4
  %input.addr = alloca i8*, align 8
  %input_length.addr = alloca i64, align 8
  %salt.addr = alloca i8*, align 8
  %salt_length.addr = alloca i64, align 8
  %output.addr = alloca i8*, align 8
  %output_size.addr = alloca i64, align 8
  %output_length.addr = alloca i64*, align 8
  %status = alloca i32, align 4
  %rsa = alloca %struct.mbedtls_rsa_context*, align 8
  store %struct.psa_key_attributes_s* %attributes, %struct.psa_key_attributes_s** %attributes.addr, align 8
  store i8* %key_buffer, i8** %key_buffer.addr, align 8
  store i64 %key_buffer_size, i64* %key_buffer_size.addr, align 8
  store i32 %alg, i32* %alg.addr, align 4
  store i8* %input, i8** %input.addr, align 8
  store i64 %input_length, i64* %input_length.addr, align 8
  store i8* %salt, i8** %salt.addr, align 8
  store i64 %salt_length, i64* %salt_length.addr, align 8
  store i8* %output, i8** %output.addr, align 8
  store i64 %output_size, i64* %output_size.addr, align 8
  store i64* %output_length, i64** %output_length.addr, align 8
  store i32 -151, i32* %status, align 4
  %0 = load i8*, i8** %key_buffer.addr, align 8
  %1 = load i64, i64* %key_buffer_size.addr, align 8
  %2 = load i8*, i8** %input.addr, align 8
  %3 = load i64, i64* %input_length.addr, align 8
  %4 = load i8*, i8** %salt.addr, align 8
  %5 = load i64, i64* %salt_length.addr, align 8
  %6 = load i8*, i8** %output.addr, align 8
  %7 = load i64, i64* %output_size.addr, align 8
  %8 = load i64*, i64** %output_length.addr, align 8
  %9 = load %struct.psa_key_attributes_s*, %struct.psa_key_attributes_s** %attributes.addr, align 8
  %core = getelementptr inbounds %struct.psa_key_attributes_s, %struct.psa_key_attributes_s* %9, i32 0, i32 0
  %type = getelementptr inbounds %struct.psa_core_key_attributes_t, %struct.psa_core_key_attributes_t* %core, i32 0, i32 0
  %10 = load i16, i16* %type, align 8
  %conv = zext i16 %10 to i32
  %and = and i32 %conv, -12289
  %cmp = icmp eq i32 %and, 16385
  br i1 %cmp, label %if.then, label %if.else37

if.then:                                          ; preds = %entry
  store %struct.mbedtls_rsa_context* null, %struct.mbedtls_rsa_context** %rsa, align 8
  %11 = load %struct.psa_key_attributes_s*, %struct.psa_key_attributes_s** %attributes.addr, align 8
  %core2 = getelementptr inbounds %struct.psa_key_attributes_s, %struct.psa_key_attributes_s* %11, i32 0, i32 0
  %type3 = getelementptr inbounds %struct.psa_core_key_attributes_t, %struct.psa_core_key_attributes_t* %core2, i32 0, i32 0
  %12 = load i16, i16* %type3, align 8
  %13 = load i8*, i8** %key_buffer.addr, align 8
  %14 = load i64, i64* %key_buffer_size.addr, align 8
  %call = call i32 @mbedtls_psa_rsa_load_representation(i16 noundef zeroext %12, i8* noundef %13, i64 noundef %14, %struct.mbedtls_rsa_context** noundef %rsa) #3
  store i32 %call, i32* %status, align 4
  %15 = load i32, i32* %status, align 4
  %cmp4 = icmp ne i32 %15, 0
  br i1 %cmp4, label %if.then6, label %if.end

if.then6:                                         ; preds = %if.then
  br label %rsa_exit

if.end:                                           ; preds = %if.then
  %16 = load i64, i64* %output_size.addr, align 8
  %17 = load %struct.mbedtls_rsa_context*, %struct.mbedtls_rsa_context** %rsa, align 8
  %call7 = call i64 @mbedtls_rsa_get_len(%struct.mbedtls_rsa_context* noundef %17) #3
  %cmp8 = icmp ult i64 %16, %call7
  br i1 %cmp8, label %if.then10, label %if.end11

if.then10:                                        ; preds = %if.end
  store i32 -138, i32* %status, align 4
  br label %rsa_exit

if.end11:                                         ; preds = %if.end
  %18 = load i32, i32* %alg.addr, align 4
  %cmp12 = icmp eq i32 %18, 117441024
  br i1 %cmp12, label %if.then14, label %if.else

if.then14:                                        ; preds = %if.end11
  %19 = load %struct.mbedtls_rsa_context*, %struct.mbedtls_rsa_context** %rsa, align 8
  %20 = load %struct.mbedtls_ctr_drbg_context*, %struct.mbedtls_ctr_drbg_context** @mbedtls_psa_random_state, align 8
  %21 = bitcast %struct.mbedtls_ctr_drbg_context* %20 to i8*
  %22 = load i64, i64* %input_length.addr, align 8
  %23 = load i8*, i8** %input.addr, align 8
  %24 = load i8*, i8** %output.addr, align 8
  %call15 = call i32 @mbedtls_rsa_pkcs1_encrypt(%struct.mbedtls_rsa_context* noundef %19, i32 (i8*, i8*, i64)* noundef @mbedtls_ctr_drbg_random, i8* noundef %21, i64 noundef %22, i8* noundef %23, i8* noundef %24) #3
  %call16 = call i32 @mbedtls_to_psa_error(i32 noundef %call15) #3
  store i32 %call16, i32* %status, align 4
  br label %if.end31

if.else:                                          ; preds = %if.end11
  %25 = load i32, i32* %alg.addr, align 4
  %and17 = and i32 %25, -256
  %cmp18 = icmp eq i32 %and17, 117441280
  br i1 %cmp18, label %if.then20, label %if.else29

if.then20:                                        ; preds = %if.else
  %26 = load i32, i32* %alg.addr, align 4
  %27 = load %struct.mbedtls_rsa_context*, %struct.mbedtls_rsa_context** %rsa, align 8
  %call21 = call i32 @psa_rsa_oaep_set_padding_mode(i32 noundef %26, %struct.mbedtls_rsa_context* noundef %27) #3
  %call22 = call i32 @mbedtls_to_psa_error(i32 noundef %call21) #3
  store i32 %call22, i32* %status, align 4
  %28 = load i32, i32* %status, align 4
  %cmp23 = icmp ne i32 %28, 0
  br i1 %cmp23, label %if.then25, label %if.end26

if.then25:                                        ; preds = %if.then20
  br label %rsa_exit

if.end26:                                         ; preds = %if.then20
  %29 = load %struct.mbedtls_rsa_context*, %struct.mbedtls_rsa_context** %rsa, align 8
  %30 = load %struct.mbedtls_ctr_drbg_context*, %struct.mbedtls_ctr_drbg_context** @mbedtls_psa_random_state, align 8
  %31 = bitcast %struct.mbedtls_ctr_drbg_context* %30 to i8*
  %32 = load i8*, i8** %salt.addr, align 8
  %33 = load i64, i64* %salt_length.addr, align 8
  %34 = load i64, i64* %input_length.addr, align 8
  %35 = load i8*, i8** %input.addr, align 8
  %36 = load i8*, i8** %output.addr, align 8
  %call27 = call i32 @mbedtls_rsa_rsaes_oaep_encrypt(%struct.mbedtls_rsa_context* noundef %29, i32 (i8*, i8*, i64)* noundef @mbedtls_ctr_drbg_random, i8* noundef %31, i8* noundef %32, i64 noundef %33, i64 noundef %34, i8* noundef %35, i8* noundef %36) #3
  %call28 = call i32 @mbedtls_to_psa_error(i32 noundef %call27) #3
  store i32 %call28, i32* %status, align 4
  br label %if.end30

if.else29:                                        ; preds = %if.else
  store i32 -135, i32* %status, align 4
  br label %if.end30

if.end30:                                         ; preds = %if.else29, %if.end26
  br label %if.end31

if.end31:                                         ; preds = %if.end30, %if.then14
  br label %rsa_exit

rsa_exit:                                         ; preds = %if.end31, %if.then25, %if.then10, %if.then6
  %37 = load i32, i32* %status, align 4
  %cmp32 = icmp eq i32 %37, 0
  br i1 %cmp32, label %if.then34, label %if.end36

if.then34:                                        ; preds = %rsa_exit
  %38 = load %struct.mbedtls_rsa_context*, %struct.mbedtls_rsa_context** %rsa, align 8
  %call35 = call i64 @mbedtls_rsa_get_len(%struct.mbedtls_rsa_context* noundef %38) #3
  %39 = load i64*, i64** %output_length.addr, align 8
  store i64 %call35, i64* %39, align 8
  br label %if.end36

if.end36:                                         ; preds = %if.then34, %rsa_exit
  %40 = load %struct.mbedtls_rsa_context*, %struct.mbedtls_rsa_context** %rsa, align 8
  call void @mbedtls_rsa_free(%struct.mbedtls_rsa_context* noundef %40) #3
  %41 = load %struct.mbedtls_rsa_context*, %struct.mbedtls_rsa_context** %rsa, align 8
  %42 = bitcast %struct.mbedtls_rsa_context* %41 to i8*
  call void @free(i8* noundef %42) #4
  br label %if.end38

if.else37:                                        ; preds = %entry
  store i32 -134, i32* %status, align 4
  br label %if.end38

if.end38:                                         ; preds = %if.else37, %if.end36
  %43 = load i32, i32* %status, align 4
  ret i32 %43
}

declare dso_local i32 @mbedtls_rsa_pkcs1_encrypt(%struct.mbedtls_rsa_context* noundef, i32 (i8*, i8*, i64)* noundef, i8* noundef, i64 noundef, i8* noundef, i8* noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @psa_rsa_oaep_set_padding_mode(i32 noundef %alg, %struct.mbedtls_rsa_context* noundef %rsa) #0 {
entry:
  %alg.addr = alloca i32, align 4
  %rsa.addr = alloca %struct.mbedtls_rsa_context*, align 8
  %hash_alg = alloca i32, align 4
  %md_info = alloca %struct.mbedtls_md_info_t*, align 8
  %md_alg = alloca i32, align 4
  store i32 %alg, i32* %alg.addr, align 4
  store %struct.mbedtls_rsa_context* %rsa, %struct.mbedtls_rsa_context** %rsa.addr, align 8
  %0 = load i32, i32* %alg.addr, align 4
  %and = and i32 %0, -256
  %cmp = icmp eq i32 %and, 117441280
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %1 = load i32, i32* %alg.addr, align 4
  %and1 = and i32 %1, 255
  %or = or i32 %and1, 33554432
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %or, %cond.true ], [ 0, %cond.false ]
  store i32 %cond, i32* %hash_alg, align 4
  %2 = load i32, i32* %hash_alg, align 4
  %call = call %struct.mbedtls_md_info_t* @mbedtls_md_info_from_psa(i32 noundef %2) #3
  store %struct.mbedtls_md_info_t* %call, %struct.mbedtls_md_info_t** %md_info, align 8
  %3 = load %struct.mbedtls_md_info_t*, %struct.mbedtls_md_info_t** %md_info, align 8
  %call2 = call i32 @mbedtls_md_get_type(%struct.mbedtls_md_info_t* noundef %3) #3
  store i32 %call2, i32* %md_alg, align 4
  %4 = load %struct.mbedtls_rsa_context*, %struct.mbedtls_rsa_context** %rsa.addr, align 8
  %5 = load i32, i32* %md_alg, align 4
  %call3 = call i32 @mbedtls_rsa_set_padding(%struct.mbedtls_rsa_context* noundef %4, i32 noundef 1, i32 noundef %5) #3
  ret i32 %call3
}

declare dso_local i32 @mbedtls_rsa_rsaes_oaep_encrypt(%struct.mbedtls_rsa_context* noundef, i32 (i8*, i8*, i64)* noundef, i8* noundef, i8* noundef, i64 noundef, i64 noundef, i8* noundef, i8* noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_psa_asymmetric_decrypt(%struct.psa_key_attributes_s* noundef %attributes, i8* noundef %key_buffer, i64 noundef %key_buffer_size, i32 noundef %alg, i8* noundef %input, i64 noundef %input_length, i8* noundef %salt, i64 noundef %salt_length, i8* noundef %output, i64 noundef %output_size, i64* noundef %output_length) #0 {
entry:
  %attributes.addr = alloca %struct.psa_key_attributes_s*, align 8
  %key_buffer.addr = alloca i8*, align 8
  %key_buffer_size.addr = alloca i64, align 8
  %alg.addr = alloca i32, align 4
  %input.addr = alloca i8*, align 8
  %input_length.addr = alloca i64, align 8
  %salt.addr = alloca i8*, align 8
  %salt_length.addr = alloca i64, align 8
  %output.addr = alloca i8*, align 8
  %output_size.addr = alloca i64, align 8
  %output_length.addr = alloca i64*, align 8
  %status = alloca i32, align 4
  %rsa = alloca %struct.mbedtls_rsa_context*, align 8
  store %struct.psa_key_attributes_s* %attributes, %struct.psa_key_attributes_s** %attributes.addr, align 8
  store i8* %key_buffer, i8** %key_buffer.addr, align 8
  store i64 %key_buffer_size, i64* %key_buffer_size.addr, align 8
  store i32 %alg, i32* %alg.addr, align 4
  store i8* %input, i8** %input.addr, align 8
  store i64 %input_length, i64* %input_length.addr, align 8
  store i8* %salt, i8** %salt.addr, align 8
  store i64 %salt_length, i64* %salt_length.addr, align 8
  store i8* %output, i8** %output.addr, align 8
  store i64 %output_size, i64* %output_size.addr, align 8
  store i64* %output_length, i64** %output_length.addr, align 8
  store i32 -151, i32* %status, align 4
  %0 = load i8*, i8** %key_buffer.addr, align 8
  %1 = load i64, i64* %key_buffer_size.addr, align 8
  %2 = load i8*, i8** %input.addr, align 8
  %3 = load i64, i64* %input_length.addr, align 8
  %4 = load i8*, i8** %salt.addr, align 8
  %5 = load i64, i64* %salt_length.addr, align 8
  %6 = load i8*, i8** %output.addr, align 8
  %7 = load i64, i64* %output_size.addr, align 8
  %8 = load i64*, i64** %output_length.addr, align 8
  %9 = load i64*, i64** %output_length.addr, align 8
  store i64 0, i64* %9, align 8
  %10 = load %struct.psa_key_attributes_s*, %struct.psa_key_attributes_s** %attributes.addr, align 8
  %core = getelementptr inbounds %struct.psa_key_attributes_s, %struct.psa_key_attributes_s* %10, i32 0, i32 0
  %type = getelementptr inbounds %struct.psa_core_key_attributes_t, %struct.psa_core_key_attributes_t* %core, i32 0, i32 0
  %11 = load i16, i16* %type, align 8
  %conv = zext i16 %11 to i32
  %cmp = icmp eq i32 %conv, 28673
  br i1 %cmp, label %if.then, label %if.else31

if.then:                                          ; preds = %entry
  store %struct.mbedtls_rsa_context* null, %struct.mbedtls_rsa_context** %rsa, align 8
  %12 = load %struct.psa_key_attributes_s*, %struct.psa_key_attributes_s** %attributes.addr, align 8
  %core2 = getelementptr inbounds %struct.psa_key_attributes_s, %struct.psa_key_attributes_s* %12, i32 0, i32 0
  %type3 = getelementptr inbounds %struct.psa_core_key_attributes_t, %struct.psa_core_key_attributes_t* %core2, i32 0, i32 0
  %13 = load i16, i16* %type3, align 8
  %14 = load i8*, i8** %key_buffer.addr, align 8
  %15 = load i64, i64* %key_buffer_size.addr, align 8
  %call = call i32 @mbedtls_psa_rsa_load_representation(i16 noundef zeroext %13, i8* noundef %14, i64 noundef %15, %struct.mbedtls_rsa_context** noundef %rsa) #3
  store i32 %call, i32* %status, align 4
  %16 = load i32, i32* %status, align 4
  %cmp4 = icmp ne i32 %16, 0
  br i1 %cmp4, label %if.then6, label %if.end

if.then6:                                         ; preds = %if.then
  br label %rsa_exit

if.end:                                           ; preds = %if.then
  %17 = load i64, i64* %input_length.addr, align 8
  %18 = load %struct.mbedtls_rsa_context*, %struct.mbedtls_rsa_context** %rsa, align 8
  %call7 = call i64 @mbedtls_rsa_get_len(%struct.mbedtls_rsa_context* noundef %18) #3
  %cmp8 = icmp ne i64 %17, %call7
  br i1 %cmp8, label %if.then10, label %if.end11

if.then10:                                        ; preds = %if.end
  store i32 -135, i32* %status, align 4
  br label %rsa_exit

if.end11:                                         ; preds = %if.end
  %19 = load i32, i32* %alg.addr, align 4
  %cmp12 = icmp eq i32 %19, 117441024
  br i1 %cmp12, label %if.then14, label %if.else

if.then14:                                        ; preds = %if.end11
  %20 = load %struct.mbedtls_rsa_context*, %struct.mbedtls_rsa_context** %rsa, align 8
  %21 = load %struct.mbedtls_ctr_drbg_context*, %struct.mbedtls_ctr_drbg_context** @mbedtls_psa_random_state, align 8
  %22 = bitcast %struct.mbedtls_ctr_drbg_context* %21 to i8*
  %23 = load i64*, i64** %output_length.addr, align 8
  %24 = load i8*, i8** %input.addr, align 8
  %25 = load i8*, i8** %output.addr, align 8
  %26 = load i64, i64* %output_size.addr, align 8
  %call15 = call i32 @mbedtls_rsa_pkcs1_decrypt(%struct.mbedtls_rsa_context* noundef %20, i32 (i8*, i8*, i64)* noundef @mbedtls_ctr_drbg_random, i8* noundef %22, i64* noundef %23, i8* noundef %24, i8* noundef %25, i64 noundef %26) #3
  %call16 = call i32 @mbedtls_to_psa_error(i32 noundef %call15) #3
  store i32 %call16, i32* %status, align 4
  br label %if.end30

if.else:                                          ; preds = %if.end11
  %27 = load i32, i32* %alg.addr, align 4
  %and = and i32 %27, -256
  %cmp17 = icmp eq i32 %and, 117441280
  br i1 %cmp17, label %if.then19, label %if.else28

if.then19:                                        ; preds = %if.else
  %28 = load i32, i32* %alg.addr, align 4
  %29 = load %struct.mbedtls_rsa_context*, %struct.mbedtls_rsa_context** %rsa, align 8
  %call20 = call i32 @psa_rsa_oaep_set_padding_mode(i32 noundef %28, %struct.mbedtls_rsa_context* noundef %29) #3
  %call21 = call i32 @mbedtls_to_psa_error(i32 noundef %call20) #3
  store i32 %call21, i32* %status, align 4
  %30 = load i32, i32* %status, align 4
  %cmp22 = icmp ne i32 %30, 0
  br i1 %cmp22, label %if.then24, label %if.end25

if.then24:                                        ; preds = %if.then19
  br label %rsa_exit

if.end25:                                         ; preds = %if.then19
  %31 = load %struct.mbedtls_rsa_context*, %struct.mbedtls_rsa_context** %rsa, align 8
  %32 = load %struct.mbedtls_ctr_drbg_context*, %struct.mbedtls_ctr_drbg_context** @mbedtls_psa_random_state, align 8
  %33 = bitcast %struct.mbedtls_ctr_drbg_context* %32 to i8*
  %34 = load i8*, i8** %salt.addr, align 8
  %35 = load i64, i64* %salt_length.addr, align 8
  %36 = load i64*, i64** %output_length.addr, align 8
  %37 = load i8*, i8** %input.addr, align 8
  %38 = load i8*, i8** %output.addr, align 8
  %39 = load i64, i64* %output_size.addr, align 8
  %call26 = call i32 @mbedtls_rsa_rsaes_oaep_decrypt(%struct.mbedtls_rsa_context* noundef %31, i32 (i8*, i8*, i64)* noundef @mbedtls_ctr_drbg_random, i8* noundef %33, i8* noundef %34, i64 noundef %35, i64* noundef %36, i8* noundef %37, i8* noundef %38, i64 noundef %39) #3
  %call27 = call i32 @mbedtls_to_psa_error(i32 noundef %call26) #3
  store i32 %call27, i32* %status, align 4
  br label %if.end29

if.else28:                                        ; preds = %if.else
  store i32 -135, i32* %status, align 4
  br label %if.end29

if.end29:                                         ; preds = %if.else28, %if.end25
  br label %if.end30

if.end30:                                         ; preds = %if.end29, %if.then14
  br label %rsa_exit

rsa_exit:                                         ; preds = %if.end30, %if.then24, %if.then10, %if.then6
  %40 = load %struct.mbedtls_rsa_context*, %struct.mbedtls_rsa_context** %rsa, align 8
  call void @mbedtls_rsa_free(%struct.mbedtls_rsa_context* noundef %40) #3
  %41 = load %struct.mbedtls_rsa_context*, %struct.mbedtls_rsa_context** %rsa, align 8
  %42 = bitcast %struct.mbedtls_rsa_context* %41 to i8*
  call void @free(i8* noundef %42) #4
  br label %if.end32

if.else31:                                        ; preds = %entry
  store i32 -134, i32* %status, align 4
  br label %if.end32

if.end32:                                         ; preds = %if.else31, %rsa_exit
  %43 = load i32, i32* %status, align 4
  ret i32 %43
}

declare dso_local i32 @mbedtls_rsa_pkcs1_decrypt(%struct.mbedtls_rsa_context* noundef, i32 (i8*, i8*, i64)* noundef, i8* noundef, i64* noundef, i8* noundef, i8* noundef, i64 noundef) #1

declare dso_local i32 @mbedtls_rsa_rsaes_oaep_decrypt(%struct.mbedtls_rsa_context* noundef, i32 (i8*, i8*, i64)* noundef, i8* noundef, i8* noundef, i64 noundef, i64* noundef, i8* noundef, i8* noundef, i64 noundef) #1

declare dso_local void @mbedtls_mpi_init(%struct.mbedtls_mpi* noundef) #1

declare dso_local i32 @mbedtls_rsa_export(%struct.mbedtls_rsa_context* noundef, %struct.mbedtls_mpi* noundef, %struct.mbedtls_mpi* noundef, %struct.mbedtls_mpi* noundef, %struct.mbedtls_mpi* noundef, %struct.mbedtls_mpi* noundef) #1

declare dso_local i64 @mbedtls_mpi_bitlen(%struct.mbedtls_mpi* noundef) #1

declare dso_local void @mbedtls_mpi_free(%struct.mbedtls_mpi* noundef) #1

declare dso_local %struct.mbedtls_md_info_t* @mbedtls_md_info_from_psa(i32 noundef) #1

declare dso_local i32 @mbedtls_md_get_type(%struct.mbedtls_md_info_t* noundef) #1

declare dso_local zeroext i8 @mbedtls_md_get_size(%struct.mbedtls_md_info_t* noundef) #1

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nobuiltin "no-builtins" }
attributes #4 = { nobuiltin nounwind "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.0"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
