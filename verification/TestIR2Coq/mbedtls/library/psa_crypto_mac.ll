; ModuleID = 'psa_crypto_mac.c'
source_filename = "psa_crypto_mac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mbedtls_psa_mac_operation_t = type { i32, %union.anon }
%union.anon = type { %struct.mbedtls_psa_hmac_operation_t }
%struct.mbedtls_psa_hmac_operation_t = type { i32, %struct.psa_hash_operation_s, [128 x i8] }
%struct.psa_hash_operation_s = type { i32, %union.psa_driver_hash_context_t }
%union.psa_driver_hash_context_t = type { %struct.mbedtls_psa_hash_operation_t }
%struct.mbedtls_psa_hash_operation_t = type { i32, %union.anon.0 }
%union.anon.0 = type { %struct.mbedtls_sha512_context }
%struct.mbedtls_sha512_context = type { [2 x i64], [8 x i64], [128 x i8], i32 }
%struct.mbedtls_cipher_context_t = type { %struct.mbedtls_cipher_info_t*, i32, i32, void (i8*, i64, i64)*, i32 (i8*, i64, i64*)*, [16 x i8], i64, [16 x i8], i64, i8*, %struct.mbedtls_cmac_context_t* }
%struct.mbedtls_cipher_info_t = type { i32, i32, i32, i8*, i32, i32, i32, %struct.mbedtls_cipher_base_t* }
%struct.mbedtls_cipher_base_t = type opaque
%struct.mbedtls_cmac_context_t = type { [16 x i8], [16 x i8], i64 }
%struct.psa_key_attributes_s = type { %struct.psa_core_key_attributes_t, i8*, i64 }
%struct.psa_core_key_attributes_t = type { i16, i16, i32, i32, %struct.psa_key_policy_s, i16 }
%struct.psa_key_policy_s = type { i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_psa_mac_abort(%struct.mbedtls_psa_mac_operation_t* noundef %operation) #0 {
entry:
  %retval = alloca i32, align 4
  %operation.addr = alloca %struct.mbedtls_psa_mac_operation_t*, align 8
  store %struct.mbedtls_psa_mac_operation_t* %operation, %struct.mbedtls_psa_mac_operation_t** %operation.addr, align 8
  %0 = load %struct.mbedtls_psa_mac_operation_t*, %struct.mbedtls_psa_mac_operation_t** %operation.addr, align 8
  %alg = getelementptr inbounds %struct.mbedtls_psa_mac_operation_t, %struct.mbedtls_psa_mac_operation_t* %0, i32 0, i32 0
  %1 = load i32, i32* %alg, align 8
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4
  br label %return

if.else:                                          ; preds = %entry
  %2 = load %struct.mbedtls_psa_mac_operation_t*, %struct.mbedtls_psa_mac_operation_t** %operation.addr, align 8
  %alg1 = getelementptr inbounds %struct.mbedtls_psa_mac_operation_t, %struct.mbedtls_psa_mac_operation_t* %2, i32 0, i32 0
  %3 = load i32, i32* %alg1, align 8
  %and = and i32 %3, -4161537
  %cmp2 = icmp eq i32 %and, 62915072
  br i1 %cmp2, label %if.then3, label %if.else4

if.then3:                                         ; preds = %if.else
  %4 = load %struct.mbedtls_psa_mac_operation_t*, %struct.mbedtls_psa_mac_operation_t** %operation.addr, align 8
  %ctx = getelementptr inbounds %struct.mbedtls_psa_mac_operation_t, %struct.mbedtls_psa_mac_operation_t* %4, i32 0, i32 1
  %cmac = bitcast %union.anon* %ctx to %struct.mbedtls_cipher_context_t*
  call void @mbedtls_cipher_free(%struct.mbedtls_cipher_context_t* noundef %cmac) #4
  br label %if.end11

if.else4:                                         ; preds = %if.else
  %5 = load %struct.mbedtls_psa_mac_operation_t*, %struct.mbedtls_psa_mac_operation_t** %operation.addr, align 8
  %alg5 = getelementptr inbounds %struct.mbedtls_psa_mac_operation_t, %struct.mbedtls_psa_mac_operation_t* %5, i32 0, i32 0
  %6 = load i32, i32* %alg5, align 8
  %and6 = and i32 %6, 2143289344
  %cmp7 = icmp eq i32 %and6, 58720256
  br i1 %cmp7, label %if.then8, label %if.else10

if.then8:                                         ; preds = %if.else4
  %7 = load %struct.mbedtls_psa_mac_operation_t*, %struct.mbedtls_psa_mac_operation_t** %operation.addr, align 8
  %ctx9 = getelementptr inbounds %struct.mbedtls_psa_mac_operation_t, %struct.mbedtls_psa_mac_operation_t* %7, i32 0, i32 1
  %hmac = bitcast %union.anon* %ctx9 to %struct.mbedtls_psa_hmac_operation_t*
  %call = call i32 @psa_hmac_abort_internal(%struct.mbedtls_psa_hmac_operation_t* noundef %hmac) #4
  br label %if.end

if.else10:                                        ; preds = %if.else4
  br label %bad_state

if.end:                                           ; preds = %if.then8
  br label %if.end11

if.end11:                                         ; preds = %if.end, %if.then3
  br label %if.end12

if.end12:                                         ; preds = %if.end11
  %8 = load %struct.mbedtls_psa_mac_operation_t*, %struct.mbedtls_psa_mac_operation_t** %operation.addr, align 8
  %alg13 = getelementptr inbounds %struct.mbedtls_psa_mac_operation_t, %struct.mbedtls_psa_mac_operation_t* %8, i32 0, i32 0
  store i32 0, i32* %alg13, align 8
  store i32 0, i32* %retval, align 4
  br label %return

bad_state:                                        ; preds = %if.else10
  %9 = load %struct.mbedtls_psa_mac_operation_t*, %struct.mbedtls_psa_mac_operation_t** %operation.addr, align 8
  %10 = bitcast %struct.mbedtls_psa_mac_operation_t* %9 to i8*
  %call14 = call i8* @memset(i8* noundef %10, i32 noundef 0, i64 noundef 376) #5
  store i32 -137, i32* %retval, align 4
  br label %return

return:                                           ; preds = %bad_state, %if.end12, %if.then
  %11 = load i32, i32* %retval, align 4
  ret i32 %11
}

declare dso_local void @mbedtls_cipher_free(%struct.mbedtls_cipher_context_t* noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @psa_hmac_abort_internal(%struct.mbedtls_psa_hmac_operation_t* noundef %hmac) #0 {
entry:
  %hmac.addr = alloca %struct.mbedtls_psa_hmac_operation_t*, align 8
  store %struct.mbedtls_psa_hmac_operation_t* %hmac, %struct.mbedtls_psa_hmac_operation_t** %hmac.addr, align 8
  %0 = load %struct.mbedtls_psa_hmac_operation_t*, %struct.mbedtls_psa_hmac_operation_t** %hmac.addr, align 8
  %opad = getelementptr inbounds %struct.mbedtls_psa_hmac_operation_t, %struct.mbedtls_psa_hmac_operation_t* %0, i32 0, i32 2
  %arraydecay = getelementptr inbounds [128 x i8], [128 x i8]* %opad, i64 0, i64 0
  call void @mbedtls_platform_zeroize(i8* noundef %arraydecay, i64 noundef 128) #4
  %1 = load %struct.mbedtls_psa_hmac_operation_t*, %struct.mbedtls_psa_hmac_operation_t** %hmac.addr, align 8
  %hash_ctx = getelementptr inbounds %struct.mbedtls_psa_hmac_operation_t, %struct.mbedtls_psa_hmac_operation_t* %1, i32 0, i32 1
  %call = call i32 @psa_hash_abort(%struct.psa_hash_operation_s* noundef %hash_ctx) #4
  ret i32 %call
}

; Function Attrs: nounwind
declare dso_local i8* @memset(i8* noundef, i32 noundef, i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_psa_mac_sign_setup(%struct.mbedtls_psa_mac_operation_t* noundef %operation, %struct.psa_key_attributes_s* noundef %attributes, i8* noundef %key_buffer, i64 noundef %key_buffer_size, i32 noundef %alg) #0 {
entry:
  %operation.addr = alloca %struct.mbedtls_psa_mac_operation_t*, align 8
  %attributes.addr = alloca %struct.psa_key_attributes_s*, align 8
  %key_buffer.addr = alloca i8*, align 8
  %key_buffer_size.addr = alloca i64, align 8
  %alg.addr = alloca i32, align 4
  store %struct.mbedtls_psa_mac_operation_t* %operation, %struct.mbedtls_psa_mac_operation_t** %operation.addr, align 8
  store %struct.psa_key_attributes_s* %attributes, %struct.psa_key_attributes_s** %attributes.addr, align 8
  store i8* %key_buffer, i8** %key_buffer.addr, align 8
  store i64 %key_buffer_size, i64* %key_buffer_size.addr, align 8
  store i32 %alg, i32* %alg.addr, align 4
  %0 = load %struct.mbedtls_psa_mac_operation_t*, %struct.mbedtls_psa_mac_operation_t** %operation.addr, align 8
  %1 = load %struct.psa_key_attributes_s*, %struct.psa_key_attributes_s** %attributes.addr, align 8
  %2 = load i8*, i8** %key_buffer.addr, align 8
  %3 = load i64, i64* %key_buffer_size.addr, align 8
  %4 = load i32, i32* %alg.addr, align 4
  %call = call i32 @psa_mac_setup(%struct.mbedtls_psa_mac_operation_t* noundef %0, %struct.psa_key_attributes_s* noundef %1, i8* noundef %2, i64 noundef %3, i32 noundef %4) #4
  ret i32 %call
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @psa_mac_setup(%struct.mbedtls_psa_mac_operation_t* noundef %operation, %struct.psa_key_attributes_s* noundef %attributes, i8* noundef %key_buffer, i64 noundef %key_buffer_size, i32 noundef %alg) #0 {
entry:
  %retval = alloca i32, align 4
  %operation.addr = alloca %struct.mbedtls_psa_mac_operation_t*, align 8
  %attributes.addr = alloca %struct.psa_key_attributes_s*, align 8
  %key_buffer.addr = alloca i8*, align 8
  %key_buffer_size.addr = alloca i64, align 8
  %alg.addr = alloca i32, align 4
  %status = alloca i32, align 4
  store %struct.mbedtls_psa_mac_operation_t* %operation, %struct.mbedtls_psa_mac_operation_t** %operation.addr, align 8
  store %struct.psa_key_attributes_s* %attributes, %struct.psa_key_attributes_s** %attributes.addr, align 8
  store i8* %key_buffer, i8** %key_buffer.addr, align 8
  store i64 %key_buffer_size, i64* %key_buffer_size.addr, align 8
  store i32 %alg, i32* %alg.addr, align 4
  store i32 -151, i32* %status, align 4
  %0 = load %struct.mbedtls_psa_mac_operation_t*, %struct.mbedtls_psa_mac_operation_t** %operation.addr, align 8
  %alg1 = getelementptr inbounds %struct.mbedtls_psa_mac_operation_t, %struct.mbedtls_psa_mac_operation_t* %0, i32 0, i32 0
  %1 = load i32, i32* %alg1, align 8
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -137, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.mbedtls_psa_mac_operation_t*, %struct.mbedtls_psa_mac_operation_t** %operation.addr, align 8
  %3 = load i32, i32* %alg.addr, align 4
  %call = call i32 @mac_init(%struct.mbedtls_psa_mac_operation_t* noundef %2, i32 noundef %3) #4
  store i32 %call, i32* %status, align 4
  %4 = load i32, i32* %status, align 4
  %cmp2 = icmp ne i32 %4, 0
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  %5 = load i32, i32* %status, align 4
  store i32 %5, i32* %retval, align 4
  br label %return

if.end4:                                          ; preds = %if.end
  %6 = load i32, i32* %alg.addr, align 4
  %and = and i32 %6, -4161537
  %cmp5 = icmp eq i32 %and, 62915072
  br i1 %cmp5, label %if.then6, label %if.else

if.then6:                                         ; preds = %if.end4
  %7 = load i64, i64* %key_buffer_size.addr, align 8
  %8 = load %struct.mbedtls_psa_mac_operation_t*, %struct.mbedtls_psa_mac_operation_t** %operation.addr, align 8
  %9 = load %struct.psa_key_attributes_s*, %struct.psa_key_attributes_s** %attributes.addr, align 8
  %10 = load i8*, i8** %key_buffer.addr, align 8
  %call7 = call i32 @cmac_setup(%struct.mbedtls_psa_mac_operation_t* noundef %8, %struct.psa_key_attributes_s* noundef %9, i8* noundef %10) #4
  store i32 %call7, i32* %status, align 4
  br label %if.end15

if.else:                                          ; preds = %if.end4
  %11 = load i32, i32* %alg.addr, align 4
  %and8 = and i32 %11, 2143289344
  %cmp9 = icmp eq i32 %and8, 58720256
  br i1 %cmp9, label %if.then10, label %if.else13

if.then10:                                        ; preds = %if.else
  %12 = load %struct.mbedtls_psa_mac_operation_t*, %struct.mbedtls_psa_mac_operation_t** %operation.addr, align 8
  %ctx = getelementptr inbounds %struct.mbedtls_psa_mac_operation_t, %struct.mbedtls_psa_mac_operation_t* %12, i32 0, i32 1
  %hmac = bitcast %union.anon* %ctx to %struct.mbedtls_psa_hmac_operation_t*
  %13 = load i8*, i8** %key_buffer.addr, align 8
  %14 = load i64, i64* %key_buffer_size.addr, align 8
  %15 = load i32, i32* %alg.addr, align 4
  %and11 = and i32 %15, 255
  %or = or i32 33554432, %and11
  %call12 = call i32 @psa_hmac_setup_internal(%struct.mbedtls_psa_hmac_operation_t* noundef %hmac, i8* noundef %13, i64 noundef %14, i32 noundef %or) #4
  store i32 %call12, i32* %status, align 4
  br label %if.end14

if.else13:                                        ; preds = %if.else
  %16 = load %struct.psa_key_attributes_s*, %struct.psa_key_attributes_s** %attributes.addr, align 8
  %17 = load i8*, i8** %key_buffer.addr, align 8
  %18 = load i64, i64* %key_buffer_size.addr, align 8
  store i32 -134, i32* %status, align 4
  br label %if.end14

if.end14:                                         ; preds = %if.else13, %if.then10
  br label %if.end15

if.end15:                                         ; preds = %if.end14, %if.then6
  %19 = load i32, i32* %status, align 4
  %cmp16 = icmp ne i32 %19, 0
  br i1 %cmp16, label %if.then17, label %if.end19

if.then17:                                        ; preds = %if.end15
  %20 = load %struct.mbedtls_psa_mac_operation_t*, %struct.mbedtls_psa_mac_operation_t** %operation.addr, align 8
  %call18 = call i32 @mbedtls_psa_mac_abort(%struct.mbedtls_psa_mac_operation_t* noundef %20) #4
  br label %if.end19

if.end19:                                         ; preds = %if.then17, %if.end15
  %21 = load i32, i32* %status, align 4
  store i32 %21, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end19, %if.then3, %if.then
  %22 = load i32, i32* %retval, align 4
  ret i32 %22
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_psa_mac_verify_setup(%struct.mbedtls_psa_mac_operation_t* noundef %operation, %struct.psa_key_attributes_s* noundef %attributes, i8* noundef %key_buffer, i64 noundef %key_buffer_size, i32 noundef %alg) #0 {
entry:
  %operation.addr = alloca %struct.mbedtls_psa_mac_operation_t*, align 8
  %attributes.addr = alloca %struct.psa_key_attributes_s*, align 8
  %key_buffer.addr = alloca i8*, align 8
  %key_buffer_size.addr = alloca i64, align 8
  %alg.addr = alloca i32, align 4
  store %struct.mbedtls_psa_mac_operation_t* %operation, %struct.mbedtls_psa_mac_operation_t** %operation.addr, align 8
  store %struct.psa_key_attributes_s* %attributes, %struct.psa_key_attributes_s** %attributes.addr, align 8
  store i8* %key_buffer, i8** %key_buffer.addr, align 8
  store i64 %key_buffer_size, i64* %key_buffer_size.addr, align 8
  store i32 %alg, i32* %alg.addr, align 4
  %0 = load %struct.mbedtls_psa_mac_operation_t*, %struct.mbedtls_psa_mac_operation_t** %operation.addr, align 8
  %1 = load %struct.psa_key_attributes_s*, %struct.psa_key_attributes_s** %attributes.addr, align 8
  %2 = load i8*, i8** %key_buffer.addr, align 8
  %3 = load i64, i64* %key_buffer_size.addr, align 8
  %4 = load i32, i32* %alg.addr, align 4
  %call = call i32 @psa_mac_setup(%struct.mbedtls_psa_mac_operation_t* noundef %0, %struct.psa_key_attributes_s* noundef %1, i8* noundef %2, i64 noundef %3, i32 noundef %4) #4
  ret i32 %call
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_psa_mac_update(%struct.mbedtls_psa_mac_operation_t* noundef %operation, i8* noundef %input, i64 noundef %input_length) #0 {
entry:
  %retval = alloca i32, align 4
  %operation.addr = alloca %struct.mbedtls_psa_mac_operation_t*, align 8
  %input.addr = alloca i8*, align 8
  %input_length.addr = alloca i64, align 8
  store %struct.mbedtls_psa_mac_operation_t* %operation, %struct.mbedtls_psa_mac_operation_t** %operation.addr, align 8
  store i8* %input, i8** %input.addr, align 8
  store i64 %input_length, i64* %input_length.addr, align 8
  %0 = load %struct.mbedtls_psa_mac_operation_t*, %struct.mbedtls_psa_mac_operation_t** %operation.addr, align 8
  %alg = getelementptr inbounds %struct.mbedtls_psa_mac_operation_t, %struct.mbedtls_psa_mac_operation_t* %0, i32 0, i32 0
  %1 = load i32, i32* %alg, align 8
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -137, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.mbedtls_psa_mac_operation_t*, %struct.mbedtls_psa_mac_operation_t** %operation.addr, align 8
  %alg1 = getelementptr inbounds %struct.mbedtls_psa_mac_operation_t, %struct.mbedtls_psa_mac_operation_t* %2, i32 0, i32 0
  %3 = load i32, i32* %alg1, align 8
  %and = and i32 %3, -4161537
  %cmp2 = icmp eq i32 %and, 62915072
  br i1 %cmp2, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.end
  %4 = load %struct.mbedtls_psa_mac_operation_t*, %struct.mbedtls_psa_mac_operation_t** %operation.addr, align 8
  %ctx = getelementptr inbounds %struct.mbedtls_psa_mac_operation_t, %struct.mbedtls_psa_mac_operation_t* %4, i32 0, i32 1
  %cmac = bitcast %union.anon* %ctx to %struct.mbedtls_cipher_context_t*
  %5 = load i8*, i8** %input.addr, align 8
  %6 = load i64, i64* %input_length.addr, align 8
  %call = call i32 @mbedtls_cipher_cmac_update(%struct.mbedtls_cipher_context_t* noundef %cmac, i8* noundef %5, i64 noundef %6) #4
  %call4 = call i32 @mbedtls_to_psa_error(i32 noundef %call) #4
  store i32 %call4, i32* %retval, align 4
  br label %return

if.else:                                          ; preds = %if.end
  %7 = load %struct.mbedtls_psa_mac_operation_t*, %struct.mbedtls_psa_mac_operation_t** %operation.addr, align 8
  %alg5 = getelementptr inbounds %struct.mbedtls_psa_mac_operation_t, %struct.mbedtls_psa_mac_operation_t* %7, i32 0, i32 0
  %8 = load i32, i32* %alg5, align 8
  %and6 = and i32 %8, 2143289344
  %cmp7 = icmp eq i32 %and6, 58720256
  br i1 %cmp7, label %if.then8, label %if.else11

if.then8:                                         ; preds = %if.else
  %9 = load %struct.mbedtls_psa_mac_operation_t*, %struct.mbedtls_psa_mac_operation_t** %operation.addr, align 8
  %ctx9 = getelementptr inbounds %struct.mbedtls_psa_mac_operation_t, %struct.mbedtls_psa_mac_operation_t* %9, i32 0, i32 1
  %hmac = bitcast %union.anon* %ctx9 to %struct.mbedtls_psa_hmac_operation_t*
  %10 = load i8*, i8** %input.addr, align 8
  %11 = load i64, i64* %input_length.addr, align 8
  %call10 = call i32 @psa_hmac_update_internal(%struct.mbedtls_psa_hmac_operation_t* noundef %hmac, i8* noundef %10, i64 noundef %11) #4
  store i32 %call10, i32* %retval, align 4
  br label %return

if.else11:                                        ; preds = %if.else
  %12 = load i8*, i8** %input.addr, align 8
  %13 = load i64, i64* %input_length.addr, align 8
  store i32 -137, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.else11, %if.then8, %if.then3, %if.then
  %14 = load i32, i32* %retval, align 4
  ret i32 %14
}

declare dso_local i32 @mbedtls_to_psa_error(i32 noundef) #1

declare dso_local i32 @mbedtls_cipher_cmac_update(%struct.mbedtls_cipher_context_t* noundef, i8* noundef, i64 noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @psa_hmac_update_internal(%struct.mbedtls_psa_hmac_operation_t* noundef %hmac, i8* noundef %data, i64 noundef %data_length) #0 {
entry:
  %hmac.addr = alloca %struct.mbedtls_psa_hmac_operation_t*, align 8
  %data.addr = alloca i8*, align 8
  %data_length.addr = alloca i64, align 8
  store %struct.mbedtls_psa_hmac_operation_t* %hmac, %struct.mbedtls_psa_hmac_operation_t** %hmac.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  store i64 %data_length, i64* %data_length.addr, align 8
  %0 = load %struct.mbedtls_psa_hmac_operation_t*, %struct.mbedtls_psa_hmac_operation_t** %hmac.addr, align 8
  %hash_ctx = getelementptr inbounds %struct.mbedtls_psa_hmac_operation_t, %struct.mbedtls_psa_hmac_operation_t* %0, i32 0, i32 1
  %1 = load i8*, i8** %data.addr, align 8
  %2 = load i64, i64* %data_length.addr, align 8
  %call = call i32 @psa_hash_update(%struct.psa_hash_operation_s* noundef %hash_ctx, i8* noundef %1, i64 noundef %2) #4
  ret i32 %call
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_psa_mac_sign_finish(%struct.mbedtls_psa_mac_operation_t* noundef %operation, i8* noundef %mac, i64 noundef %mac_size, i64* noundef %mac_length) #0 {
entry:
  %retval = alloca i32, align 4
  %operation.addr = alloca %struct.mbedtls_psa_mac_operation_t*, align 8
  %mac.addr = alloca i8*, align 8
  %mac_size.addr = alloca i64, align 8
  %mac_length.addr = alloca i64*, align 8
  %status = alloca i32, align 4
  store %struct.mbedtls_psa_mac_operation_t* %operation, %struct.mbedtls_psa_mac_operation_t** %operation.addr, align 8
  store i8* %mac, i8** %mac.addr, align 8
  store i64 %mac_size, i64* %mac_size.addr, align 8
  store i64* %mac_length, i64** %mac_length.addr, align 8
  store i32 -151, i32* %status, align 4
  %0 = load %struct.mbedtls_psa_mac_operation_t*, %struct.mbedtls_psa_mac_operation_t** %operation.addr, align 8
  %alg = getelementptr inbounds %struct.mbedtls_psa_mac_operation_t, %struct.mbedtls_psa_mac_operation_t* %0, i32 0, i32 0
  %1 = load i32, i32* %alg, align 8
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -137, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.mbedtls_psa_mac_operation_t*, %struct.mbedtls_psa_mac_operation_t** %operation.addr, align 8
  %3 = load i8*, i8** %mac.addr, align 8
  %4 = load i64, i64* %mac_size.addr, align 8
  %call = call i32 @psa_mac_finish_internal(%struct.mbedtls_psa_mac_operation_t* noundef %2, i8* noundef %3, i64 noundef %4) #4
  store i32 %call, i32* %status, align 4
  %5 = load i32, i32* %status, align 4
  %cmp1 = icmp eq i32 %5, 0
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  %6 = load i64, i64* %mac_size.addr, align 8
  %7 = load i64*, i64** %mac_length.addr, align 8
  store i64 %6, i64* %7, align 8
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.end
  %8 = load i32, i32* %status, align 4
  store i32 %8, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end3, %if.then
  %9 = load i32, i32* %retval, align 4
  ret i32 %9
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @psa_mac_finish_internal(%struct.mbedtls_psa_mac_operation_t* noundef %operation, i8* noundef %mac, i64 noundef %mac_size) #0 {
entry:
  %retval = alloca i32, align 4
  %operation.addr = alloca %struct.mbedtls_psa_mac_operation_t*, align 8
  %mac.addr = alloca i8*, align 8
  %mac_size.addr = alloca i64, align 8
  %tmp = alloca [16 x i8], align 16
  %ret = alloca i32, align 4
  store %struct.mbedtls_psa_mac_operation_t* %operation, %struct.mbedtls_psa_mac_operation_t** %operation.addr, align 8
  store i8* %mac, i8** %mac.addr, align 8
  store i64 %mac_size, i64* %mac_size.addr, align 8
  %0 = load %struct.mbedtls_psa_mac_operation_t*, %struct.mbedtls_psa_mac_operation_t** %operation.addr, align 8
  %alg = getelementptr inbounds %struct.mbedtls_psa_mac_operation_t, %struct.mbedtls_psa_mac_operation_t* %0, i32 0, i32 0
  %1 = load i32, i32* %alg, align 8
  %and = and i32 %1, -4161537
  %cmp = icmp eq i32 %and, 62915072
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load %struct.mbedtls_psa_mac_operation_t*, %struct.mbedtls_psa_mac_operation_t** %operation.addr, align 8
  %ctx = getelementptr inbounds %struct.mbedtls_psa_mac_operation_t, %struct.mbedtls_psa_mac_operation_t* %2, i32 0, i32 1
  %cmac = bitcast %union.anon* %ctx to %struct.mbedtls_cipher_context_t*
  %arraydecay = getelementptr inbounds [16 x i8], [16 x i8]* %tmp, i64 0, i64 0
  %call = call i32 @mbedtls_cipher_cmac_finish(%struct.mbedtls_cipher_context_t* noundef %cmac, i8* noundef %arraydecay) #4
  store i32 %call, i32* %ret, align 4
  %3 = load i32, i32* %ret, align 4
  %cmp1 = icmp eq i32 %3, 0
  br i1 %cmp1, label %if.then2, label %if.end

if.then2:                                         ; preds = %if.then
  %4 = load i8*, i8** %mac.addr, align 8
  %arraydecay3 = getelementptr inbounds [16 x i8], [16 x i8]* %tmp, i64 0, i64 0
  %5 = load i64, i64* %mac_size.addr, align 8
  %call4 = call i8* @memcpy(i8* noundef %4, i8* noundef %arraydecay3, i64 noundef %5) #5
  br label %if.end

if.end:                                           ; preds = %if.then2, %if.then
  %arraydecay5 = getelementptr inbounds [16 x i8], [16 x i8]* %tmp, i64 0, i64 0
  call void @mbedtls_platform_zeroize(i8* noundef %arraydecay5, i64 noundef 16) #4
  %6 = load i32, i32* %ret, align 4
  %call6 = call i32 @mbedtls_to_psa_error(i32 noundef %6) #4
  store i32 %call6, i32* %retval, align 4
  br label %return

if.else:                                          ; preds = %entry
  %7 = load %struct.mbedtls_psa_mac_operation_t*, %struct.mbedtls_psa_mac_operation_t** %operation.addr, align 8
  %alg7 = getelementptr inbounds %struct.mbedtls_psa_mac_operation_t, %struct.mbedtls_psa_mac_operation_t* %7, i32 0, i32 0
  %8 = load i32, i32* %alg7, align 8
  %and8 = and i32 %8, 2143289344
  %cmp9 = icmp eq i32 %and8, 58720256
  br i1 %cmp9, label %if.then10, label %if.else13

if.then10:                                        ; preds = %if.else
  %9 = load %struct.mbedtls_psa_mac_operation_t*, %struct.mbedtls_psa_mac_operation_t** %operation.addr, align 8
  %ctx11 = getelementptr inbounds %struct.mbedtls_psa_mac_operation_t, %struct.mbedtls_psa_mac_operation_t* %9, i32 0, i32 1
  %hmac = bitcast %union.anon* %ctx11 to %struct.mbedtls_psa_hmac_operation_t*
  %10 = load i8*, i8** %mac.addr, align 8
  %11 = load i64, i64* %mac_size.addr, align 8
  %call12 = call i32 @psa_hmac_finish_internal(%struct.mbedtls_psa_hmac_operation_t* noundef %hmac, i8* noundef %10, i64 noundef %11) #4
  store i32 %call12, i32* %retval, align 4
  br label %return

if.else13:                                        ; preds = %if.else
  %12 = load %struct.mbedtls_psa_mac_operation_t*, %struct.mbedtls_psa_mac_operation_t** %operation.addr, align 8
  %13 = load i8*, i8** %mac.addr, align 8
  %14 = load i64, i64* %mac_size.addr, align 8
  store i32 -137, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.else13, %if.then10, %if.end
  %15 = load i32, i32* %retval, align 4
  ret i32 %15
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_psa_mac_verify_finish(%struct.mbedtls_psa_mac_operation_t* noundef %operation, i8* noundef %mac, i64 noundef %mac_length) #0 {
entry:
  %retval = alloca i32, align 4
  %operation.addr = alloca %struct.mbedtls_psa_mac_operation_t*, align 8
  %mac.addr = alloca i8*, align 8
  %mac_length.addr = alloca i64, align 8
  %actual_mac = alloca [64 x i8], align 16
  %status = alloca i32, align 4
  store %struct.mbedtls_psa_mac_operation_t* %operation, %struct.mbedtls_psa_mac_operation_t** %operation.addr, align 8
  store i8* %mac, i8** %mac.addr, align 8
  store i64 %mac_length, i64* %mac_length.addr, align 8
  store i32 -151, i32* %status, align 4
  %0 = load %struct.mbedtls_psa_mac_operation_t*, %struct.mbedtls_psa_mac_operation_t** %operation.addr, align 8
  %alg = getelementptr inbounds %struct.mbedtls_psa_mac_operation_t, %struct.mbedtls_psa_mac_operation_t* %0, i32 0, i32 0
  %1 = load i32, i32* %alg, align 8
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -137, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i64, i64* %mac_length.addr, align 8
  %cmp1 = icmp ugt i64 %2, 64
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  store i32 -135, i32* %retval, align 4
  br label %return

if.end3:                                          ; preds = %if.end
  %3 = load %struct.mbedtls_psa_mac_operation_t*, %struct.mbedtls_psa_mac_operation_t** %operation.addr, align 8
  %arraydecay = getelementptr inbounds [64 x i8], [64 x i8]* %actual_mac, i64 0, i64 0
  %4 = load i64, i64* %mac_length.addr, align 8
  %call = call i32 @psa_mac_finish_internal(%struct.mbedtls_psa_mac_operation_t* noundef %3, i8* noundef %arraydecay, i64 noundef %4) #4
  store i32 %call, i32* %status, align 4
  %5 = load i32, i32* %status, align 4
  %cmp4 = icmp ne i32 %5, 0
  br i1 %cmp4, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end3
  br label %cleanup

if.end6:                                          ; preds = %if.end3
  %6 = load i8*, i8** %mac.addr, align 8
  %arraydecay7 = getelementptr inbounds [64 x i8], [64 x i8]* %actual_mac, i64 0, i64 0
  %7 = load i64, i64* %mac_length.addr, align 8
  %call8 = call i32 @mbedtls_psa_safer_memcmp(i8* noundef %6, i8* noundef %arraydecay7, i64 noundef %7) #4
  %cmp9 = icmp ne i32 %call8, 0
  br i1 %cmp9, label %if.then10, label %if.end11

if.then10:                                        ; preds = %if.end6
  store i32 -149, i32* %status, align 4
  br label %if.end11

if.end11:                                         ; preds = %if.then10, %if.end6
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %if.then5
  %arraydecay12 = getelementptr inbounds [64 x i8], [64 x i8]* %actual_mac, i64 0, i64 0
  call void @mbedtls_platform_zeroize(i8* noundef %arraydecay12, i64 noundef 64) #4
  %8 = load i32, i32* %status, align 4
  store i32 %8, i32* %retval, align 4
  br label %return

return:                                           ; preds = %cleanup, %if.then2, %if.then
  %9 = load i32, i32* %retval, align 4
  ret i32 %9
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mbedtls_psa_safer_memcmp(i8* noundef %a, i8* noundef %b, i64 noundef %n) #0 {
entry:
  %a.addr = alloca i8*, align 8
  %b.addr = alloca i8*, align 8
  %n.addr = alloca i64, align 8
  %i = alloca i64, align 8
  %diff = alloca i8, align 1
  store i8* %a, i8** %a.addr, align 8
  store i8* %b, i8** %b.addr, align 8
  store i64 %n, i64* %n.addr, align 8
  store i8 0, i8* %diff, align 1
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, i64* %i, align 8
  %1 = load i64, i64* %n.addr, align 8
  %cmp = icmp ult i64 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i8*, i8** %a.addr, align 8
  %3 = load i64, i64* %i, align 8
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 %3
  %4 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %4 to i32
  %5 = load i8*, i8** %b.addr, align 8
  %6 = load i64, i64* %i, align 8
  %arrayidx1 = getelementptr inbounds i8, i8* %5, i64 %6
  %7 = load i8, i8* %arrayidx1, align 1
  %conv2 = zext i8 %7 to i32
  %xor = xor i32 %conv, %conv2
  %8 = load i8, i8* %diff, align 1
  %conv3 = zext i8 %8 to i32
  %or = or i32 %conv3, %xor
  %conv4 = trunc i32 %or to i8
  store i8 %conv4, i8* %diff, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %9 = load i64, i64* %i, align 8
  %inc = add i64 %9, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond, !llvm.loop !4

for.end:                                          ; preds = %for.cond
  %10 = load i8, i8* %diff, align 1
  %conv5 = zext i8 %10 to i32
  ret i32 %conv5
}

declare dso_local void @mbedtls_platform_zeroize(i8* noundef, i64 noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_psa_mac_compute(%struct.psa_key_attributes_s* noundef %attributes, i8* noundef %key_buffer, i64 noundef %key_buffer_size, i32 noundef %alg, i8* noundef %input, i64 noundef %input_length, i8* noundef %mac, i64 noundef %mac_size, i64* noundef %mac_length) #0 {
entry:
  %attributes.addr = alloca %struct.psa_key_attributes_s*, align 8
  %key_buffer.addr = alloca i8*, align 8
  %key_buffer_size.addr = alloca i64, align 8
  %alg.addr = alloca i32, align 4
  %input.addr = alloca i8*, align 8
  %input_length.addr = alloca i64, align 8
  %mac.addr = alloca i8*, align 8
  %mac_size.addr = alloca i64, align 8
  %mac_length.addr = alloca i64*, align 8
  %status = alloca i32, align 4
  %operation = alloca %struct.mbedtls_psa_mac_operation_t, align 8
  store %struct.psa_key_attributes_s* %attributes, %struct.psa_key_attributes_s** %attributes.addr, align 8
  store i8* %key_buffer, i8** %key_buffer.addr, align 8
  store i64 %key_buffer_size, i64* %key_buffer_size.addr, align 8
  store i32 %alg, i32* %alg.addr, align 4
  store i8* %input, i8** %input.addr, align 8
  store i64 %input_length, i64* %input_length.addr, align 8
  store i8* %mac, i8** %mac.addr, align 8
  store i64 %mac_size, i64* %mac_size.addr, align 8
  store i64* %mac_length, i64** %mac_length.addr, align 8
  store i32 -151, i32* %status, align 4
  %0 = bitcast %struct.mbedtls_psa_mac_operation_t* %operation to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %0, i8 0, i64 376, i1 false)
  %1 = bitcast i8* %0 to { i32, [4 x i8], { i32, [364 x i8] } }*
  %2 = getelementptr inbounds { i32, [4 x i8], { i32, [364 x i8] } }, { i32, [4 x i8], { i32, [364 x i8] } }* %1, i32 0, i32 2
  %3 = load %struct.psa_key_attributes_s*, %struct.psa_key_attributes_s** %attributes.addr, align 8
  %4 = load i8*, i8** %key_buffer.addr, align 8
  %5 = load i64, i64* %key_buffer_size.addr, align 8
  %6 = load i32, i32* %alg.addr, align 4
  %call = call i32 @psa_mac_setup(%struct.mbedtls_psa_mac_operation_t* noundef %operation, %struct.psa_key_attributes_s* noundef %3, i8* noundef %4, i64 noundef %5, i32 noundef %6) #4
  store i32 %call, i32* %status, align 4
  %7 = load i32, i32* %status, align 4
  %cmp = icmp ne i32 %7, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %exit

if.end:                                           ; preds = %entry
  %8 = load i64, i64* %input_length.addr, align 8
  %cmp1 = icmp ugt i64 %8, 0
  br i1 %cmp1, label %if.then2, label %if.end7

if.then2:                                         ; preds = %if.end
  %9 = load i8*, i8** %input.addr, align 8
  %10 = load i64, i64* %input_length.addr, align 8
  %call3 = call i32 @mbedtls_psa_mac_update(%struct.mbedtls_psa_mac_operation_t* noundef %operation, i8* noundef %9, i64 noundef %10) #4
  store i32 %call3, i32* %status, align 4
  %11 = load i32, i32* %status, align 4
  %cmp4 = icmp ne i32 %11, 0
  br i1 %cmp4, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.then2
  br label %exit

if.end6:                                          ; preds = %if.then2
  br label %if.end7

if.end7:                                          ; preds = %if.end6, %if.end
  %12 = load i8*, i8** %mac.addr, align 8
  %13 = load i64, i64* %mac_size.addr, align 8
  %call8 = call i32 @psa_mac_finish_internal(%struct.mbedtls_psa_mac_operation_t* noundef %operation, i8* noundef %12, i64 noundef %13) #4
  store i32 %call8, i32* %status, align 4
  %14 = load i32, i32* %status, align 4
  %cmp9 = icmp eq i32 %14, 0
  br i1 %cmp9, label %if.then10, label %if.end11

if.then10:                                        ; preds = %if.end7
  %15 = load i64, i64* %mac_size.addr, align 8
  %16 = load i64*, i64** %mac_length.addr, align 8
  store i64 %15, i64* %16, align 8
  br label %if.end11

if.end11:                                         ; preds = %if.then10, %if.end7
  br label %exit

exit:                                             ; preds = %if.end11, %if.then5, %if.then
  %call12 = call i32 @mbedtls_psa_mac_abort(%struct.mbedtls_psa_mac_operation_t* noundef %operation) #4
  %17 = load i32, i32* %status, align 4
  ret i32 %17
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

declare dso_local i32 @psa_hash_abort(%struct.psa_hash_operation_s* noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mac_init(%struct.mbedtls_psa_mac_operation_t* noundef %operation, i32 noundef %alg) #0 {
entry:
  %operation.addr = alloca %struct.mbedtls_psa_mac_operation_t*, align 8
  %alg.addr = alloca i32, align 4
  %status = alloca i32, align 4
  store %struct.mbedtls_psa_mac_operation_t* %operation, %struct.mbedtls_psa_mac_operation_t** %operation.addr, align 8
  store i32 %alg, i32* %alg.addr, align 4
  store i32 -151, i32* %status, align 4
  %0 = load i32, i32* %alg.addr, align 4
  %1 = load %struct.mbedtls_psa_mac_operation_t*, %struct.mbedtls_psa_mac_operation_t** %operation.addr, align 8
  %alg1 = getelementptr inbounds %struct.mbedtls_psa_mac_operation_t, %struct.mbedtls_psa_mac_operation_t* %1, i32 0, i32 0
  store i32 %0, i32* %alg1, align 8
  %2 = load %struct.mbedtls_psa_mac_operation_t*, %struct.mbedtls_psa_mac_operation_t** %operation.addr, align 8
  %alg2 = getelementptr inbounds %struct.mbedtls_psa_mac_operation_t, %struct.mbedtls_psa_mac_operation_t* %2, i32 0, i32 0
  %3 = load i32, i32* %alg2, align 8
  %and = and i32 %3, -4161537
  %cmp = icmp eq i32 %and, 62915072
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %4 = load %struct.mbedtls_psa_mac_operation_t*, %struct.mbedtls_psa_mac_operation_t** %operation.addr, align 8
  %ctx = getelementptr inbounds %struct.mbedtls_psa_mac_operation_t, %struct.mbedtls_psa_mac_operation_t* %4, i32 0, i32 1
  %cmac = bitcast %union.anon* %ctx to %struct.mbedtls_cipher_context_t*
  call void @mbedtls_cipher_init(%struct.mbedtls_cipher_context_t* noundef %cmac) #4
  store i32 0, i32* %status, align 4
  br label %if.end10

if.else:                                          ; preds = %entry
  %5 = load %struct.mbedtls_psa_mac_operation_t*, %struct.mbedtls_psa_mac_operation_t** %operation.addr, align 8
  %alg3 = getelementptr inbounds %struct.mbedtls_psa_mac_operation_t, %struct.mbedtls_psa_mac_operation_t* %5, i32 0, i32 0
  %6 = load i32, i32* %alg3, align 8
  %and4 = and i32 %6, 2143289344
  %cmp5 = icmp eq i32 %and4, 58720256
  br i1 %cmp5, label %if.then6, label %if.else9

if.then6:                                         ; preds = %if.else
  %7 = load %struct.mbedtls_psa_mac_operation_t*, %struct.mbedtls_psa_mac_operation_t** %operation.addr, align 8
  %ctx7 = getelementptr inbounds %struct.mbedtls_psa_mac_operation_t, %struct.mbedtls_psa_mac_operation_t* %7, i32 0, i32 1
  %hmac = bitcast %union.anon* %ctx7 to %struct.mbedtls_psa_hmac_operation_t*
  %alg8 = getelementptr inbounds %struct.mbedtls_psa_hmac_operation_t, %struct.mbedtls_psa_hmac_operation_t* %hmac, i32 0, i32 0
  store i32 0, i32* %alg8, align 8
  store i32 0, i32* %status, align 4
  br label %if.end

if.else9:                                         ; preds = %if.else
  %8 = load %struct.mbedtls_psa_mac_operation_t*, %struct.mbedtls_psa_mac_operation_t** %operation.addr, align 8
  store i32 -134, i32* %status, align 4
  br label %if.end

if.end:                                           ; preds = %if.else9, %if.then6
  br label %if.end10

if.end10:                                         ; preds = %if.end, %if.then
  %9 = load i32, i32* %status, align 4
  %cmp11 = icmp ne i32 %9, 0
  br i1 %cmp11, label %if.then12, label %if.end13

if.then12:                                        ; preds = %if.end10
  %10 = load %struct.mbedtls_psa_mac_operation_t*, %struct.mbedtls_psa_mac_operation_t** %operation.addr, align 8
  %11 = bitcast %struct.mbedtls_psa_mac_operation_t* %10 to i8*
  %call = call i8* @memset(i8* noundef %11, i32 noundef 0, i64 noundef 376) #5
  br label %if.end13

if.end13:                                         ; preds = %if.then12, %if.end10
  %12 = load i32, i32* %status, align 4
  ret i32 %12
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cmac_setup(%struct.mbedtls_psa_mac_operation_t* noundef %operation, %struct.psa_key_attributes_s* noundef %attributes, i8* noundef %key_buffer) #0 {
entry:
  %retval = alloca i32, align 4
  %operation.addr = alloca %struct.mbedtls_psa_mac_operation_t*, align 8
  %attributes.addr = alloca %struct.psa_key_attributes_s*, align 8
  %key_buffer.addr = alloca i8*, align 8
  %ret = alloca i32, align 4
  %cipher_info = alloca %struct.mbedtls_cipher_info_t*, align 8
  store %struct.mbedtls_psa_mac_operation_t* %operation, %struct.mbedtls_psa_mac_operation_t** %operation.addr, align 8
  store %struct.psa_key_attributes_s* %attributes, %struct.psa_key_attributes_s** %attributes.addr, align 8
  store i8* %key_buffer, i8** %key_buffer.addr, align 8
  store i32 -110, i32* %ret, align 4
  %0 = load %struct.psa_key_attributes_s*, %struct.psa_key_attributes_s** %attributes.addr, align 8
  %call = call zeroext i16 @psa_get_key_type(%struct.psa_key_attributes_s* noundef %0) #4
  %conv = zext i16 %call to i32
  %cmp = icmp eq i32 %conv, 8961
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %1 = load %struct.psa_key_attributes_s*, %struct.psa_key_attributes_s** %attributes.addr, align 8
  %call2 = call i64 @psa_get_key_bits(%struct.psa_key_attributes_s* noundef %1) #4
  %cmp3 = icmp eq i64 %call2, 64
  br i1 %cmp3, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %2 = load %struct.psa_key_attributes_s*, %struct.psa_key_attributes_s** %attributes.addr, align 8
  %call5 = call i64 @psa_get_key_bits(%struct.psa_key_attributes_s* noundef %2) #4
  %cmp6 = icmp eq i64 %call5, 128
  br i1 %cmp6, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %land.lhs.true
  store i32 -134, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false, %entry
  %3 = load %struct.psa_key_attributes_s*, %struct.psa_key_attributes_s** %attributes.addr, align 8
  %call8 = call zeroext i16 @psa_get_key_type(%struct.psa_key_attributes_s* noundef %3) #4
  %4 = load %struct.psa_key_attributes_s*, %struct.psa_key_attributes_s** %attributes.addr, align 8
  %call9 = call i64 @psa_get_key_bits(%struct.psa_key_attributes_s* noundef %4) #4
  %call10 = call %struct.mbedtls_cipher_info_t* @mbedtls_cipher_info_from_psa(i32 noundef 62915072, i16 noundef zeroext %call8, i64 noundef %call9, i32* noundef null) #4
  store %struct.mbedtls_cipher_info_t* %call10, %struct.mbedtls_cipher_info_t** %cipher_info, align 8
  %5 = load %struct.mbedtls_cipher_info_t*, %struct.mbedtls_cipher_info_t** %cipher_info, align 8
  %cmp11 = icmp eq %struct.mbedtls_cipher_info_t* %5, null
  br i1 %cmp11, label %if.then13, label %if.end14

if.then13:                                        ; preds = %if.end
  store i32 -134, i32* %retval, align 4
  br label %return

if.end14:                                         ; preds = %if.end
  %6 = load %struct.mbedtls_psa_mac_operation_t*, %struct.mbedtls_psa_mac_operation_t** %operation.addr, align 8
  %ctx = getelementptr inbounds %struct.mbedtls_psa_mac_operation_t, %struct.mbedtls_psa_mac_operation_t* %6, i32 0, i32 1
  %cmac = bitcast %union.anon* %ctx to %struct.mbedtls_cipher_context_t*
  %7 = load %struct.mbedtls_cipher_info_t*, %struct.mbedtls_cipher_info_t** %cipher_info, align 8
  %call15 = call i32 @mbedtls_cipher_setup(%struct.mbedtls_cipher_context_t* noundef %cmac, %struct.mbedtls_cipher_info_t* noundef %7) #4
  store i32 %call15, i32* %ret, align 4
  %8 = load i32, i32* %ret, align 4
  %cmp16 = icmp ne i32 %8, 0
  br i1 %cmp16, label %if.then18, label %if.end19

if.then18:                                        ; preds = %if.end14
  br label %exit

if.end19:                                         ; preds = %if.end14
  %9 = load %struct.mbedtls_psa_mac_operation_t*, %struct.mbedtls_psa_mac_operation_t** %operation.addr, align 8
  %ctx20 = getelementptr inbounds %struct.mbedtls_psa_mac_operation_t, %struct.mbedtls_psa_mac_operation_t* %9, i32 0, i32 1
  %cmac21 = bitcast %union.anon* %ctx20 to %struct.mbedtls_cipher_context_t*
  %10 = load i8*, i8** %key_buffer.addr, align 8
  %11 = load %struct.psa_key_attributes_s*, %struct.psa_key_attributes_s** %attributes.addr, align 8
  %call22 = call i64 @psa_get_key_bits(%struct.psa_key_attributes_s* noundef %11) #4
  %call23 = call i32 @mbedtls_cipher_cmac_starts(%struct.mbedtls_cipher_context_t* noundef %cmac21, i8* noundef %10, i64 noundef %call22) #4
  store i32 %call23, i32* %ret, align 4
  br label %exit

exit:                                             ; preds = %if.end19, %if.then18
  %12 = load i32, i32* %ret, align 4
  %call24 = call i32 @mbedtls_to_psa_error(i32 noundef %12) #4
  store i32 %call24, i32* %retval, align 4
  br label %return

return:                                           ; preds = %exit, %if.then13, %if.then
  %13 = load i32, i32* %retval, align 4
  ret i32 %13
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @psa_hmac_setup_internal(%struct.mbedtls_psa_hmac_operation_t* noundef %hmac, i8* noundef %key, i64 noundef %key_length, i32 noundef %hash_alg) #0 {
entry:
  %retval = alloca i32, align 4
  %hmac.addr = alloca %struct.mbedtls_psa_hmac_operation_t*, align 8
  %key.addr = alloca i8*, align 8
  %key_length.addr = alloca i64, align 8
  %hash_alg.addr = alloca i32, align 4
  %ipad = alloca [128 x i8], align 16
  %i = alloca i64, align 8
  %hash_size = alloca i64, align 8
  %block_size = alloca i64, align 8
  %status = alloca i32, align 4
  store %struct.mbedtls_psa_hmac_operation_t* %hmac, %struct.mbedtls_psa_hmac_operation_t** %hmac.addr, align 8
  store i8* %key, i8** %key.addr, align 8
  store i64 %key_length, i64* %key_length.addr, align 8
  store i32 %hash_alg, i32* %hash_alg.addr, align 4
  %0 = load i32, i32* %hash_alg.addr, align 4
  %and = and i32 %0, 255
  %or = or i32 33554432, %and
  %cmp = icmp eq i32 %or, 33554435
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end80

cond.false:                                       ; preds = %entry
  %1 = load i32, i32* %hash_alg.addr, align 4
  %and1 = and i32 %1, 255
  %or2 = or i32 33554432, %and1
  %cmp3 = icmp eq i32 %or2, 33554436
  br i1 %cmp3, label %cond.true4, label %cond.false5

cond.true4:                                       ; preds = %cond.false
  br label %cond.end78

cond.false5:                                      ; preds = %cond.false
  %2 = load i32, i32* %hash_alg.addr, align 4
  %and6 = and i32 %2, 255
  %or7 = or i32 33554432, %and6
  %cmp8 = icmp eq i32 %or7, 33554437
  br i1 %cmp8, label %cond.true9, label %cond.false10

cond.true9:                                       ; preds = %cond.false5
  br label %cond.end76

cond.false10:                                     ; preds = %cond.false5
  %3 = load i32, i32* %hash_alg.addr, align 4
  %and11 = and i32 %3, 255
  %or12 = or i32 33554432, %and11
  %cmp13 = icmp eq i32 %or12, 33554440
  br i1 %cmp13, label %cond.true14, label %cond.false15

cond.true14:                                      ; preds = %cond.false10
  br label %cond.end74

cond.false15:                                     ; preds = %cond.false10
  %4 = load i32, i32* %hash_alg.addr, align 4
  %and16 = and i32 %4, 255
  %or17 = or i32 33554432, %and16
  %cmp18 = icmp eq i32 %or17, 33554441
  br i1 %cmp18, label %cond.true19, label %cond.false20

cond.true19:                                      ; preds = %cond.false15
  br label %cond.end72

cond.false20:                                     ; preds = %cond.false15
  %5 = load i32, i32* %hash_alg.addr, align 4
  %and21 = and i32 %5, 255
  %or22 = or i32 33554432, %and21
  %cmp23 = icmp eq i32 %or22, 33554442
  br i1 %cmp23, label %cond.true24, label %cond.false25

cond.true24:                                      ; preds = %cond.false20
  br label %cond.end70

cond.false25:                                     ; preds = %cond.false20
  %6 = load i32, i32* %hash_alg.addr, align 4
  %and26 = and i32 %6, 255
  %or27 = or i32 33554432, %and26
  %cmp28 = icmp eq i32 %or27, 33554443
  br i1 %cmp28, label %cond.true29, label %cond.false30

cond.true29:                                      ; preds = %cond.false25
  br label %cond.end68

cond.false30:                                     ; preds = %cond.false25
  %7 = load i32, i32* %hash_alg.addr, align 4
  %and31 = and i32 %7, 255
  %or32 = or i32 33554432, %and31
  %cmp33 = icmp eq i32 %or32, 33554444
  br i1 %cmp33, label %cond.true34, label %cond.false35

cond.true34:                                      ; preds = %cond.false30
  br label %cond.end66

cond.false35:                                     ; preds = %cond.false30
  %8 = load i32, i32* %hash_alg.addr, align 4
  %and36 = and i32 %8, 255
  %or37 = or i32 33554432, %and36
  %cmp38 = icmp eq i32 %or37, 33554445
  br i1 %cmp38, label %cond.true39, label %cond.false40

cond.true39:                                      ; preds = %cond.false35
  br label %cond.end64

cond.false40:                                     ; preds = %cond.false35
  %9 = load i32, i32* %hash_alg.addr, align 4
  %and41 = and i32 %9, 255
  %or42 = or i32 33554432, %and41
  %cmp43 = icmp eq i32 %or42, 33554448
  br i1 %cmp43, label %cond.true44, label %cond.false45

cond.true44:                                      ; preds = %cond.false40
  br label %cond.end62

cond.false45:                                     ; preds = %cond.false40
  %10 = load i32, i32* %hash_alg.addr, align 4
  %and46 = and i32 %10, 255
  %or47 = or i32 33554432, %and46
  %cmp48 = icmp eq i32 %or47, 33554449
  br i1 %cmp48, label %cond.true49, label %cond.false50

cond.true49:                                      ; preds = %cond.false45
  br label %cond.end60

cond.false50:                                     ; preds = %cond.false45
  %11 = load i32, i32* %hash_alg.addr, align 4
  %and51 = and i32 %11, 255
  %or52 = or i32 33554432, %and51
  %cmp53 = icmp eq i32 %or52, 33554450
  br i1 %cmp53, label %cond.true54, label %cond.false55

cond.true54:                                      ; preds = %cond.false50
  br label %cond.end

cond.false55:                                     ; preds = %cond.false50
  %12 = load i32, i32* %hash_alg.addr, align 4
  %and56 = and i32 %12, 255
  %or57 = or i32 33554432, %and56
  %cmp58 = icmp eq i32 %or57, 33554451
  %13 = zext i1 %cmp58 to i64
  %cond = select i1 %cmp58, i32 64, i32 0
  br label %cond.end

cond.end:                                         ; preds = %cond.false55, %cond.true54
  %cond59 = phi i32 [ 48, %cond.true54 ], [ %cond, %cond.false55 ]
  br label %cond.end60

cond.end60:                                       ; preds = %cond.end, %cond.true49
  %cond61 = phi i32 [ 32, %cond.true49 ], [ %cond59, %cond.end ]
  br label %cond.end62

cond.end62:                                       ; preds = %cond.end60, %cond.true44
  %cond63 = phi i32 [ 28, %cond.true44 ], [ %cond61, %cond.end60 ]
  br label %cond.end64

cond.end64:                                       ; preds = %cond.end62, %cond.true39
  %cond65 = phi i32 [ 32, %cond.true39 ], [ %cond63, %cond.end62 ]
  br label %cond.end66

cond.end66:                                       ; preds = %cond.end64, %cond.true34
  %cond67 = phi i32 [ 28, %cond.true34 ], [ %cond65, %cond.end64 ]
  br label %cond.end68

cond.end68:                                       ; preds = %cond.end66, %cond.true29
  %cond69 = phi i32 [ 64, %cond.true29 ], [ %cond67, %cond.end66 ]
  br label %cond.end70

cond.end70:                                       ; preds = %cond.end68, %cond.true24
  %cond71 = phi i32 [ 48, %cond.true24 ], [ %cond69, %cond.end68 ]
  br label %cond.end72

cond.end72:                                       ; preds = %cond.end70, %cond.true19
  %cond73 = phi i32 [ 32, %cond.true19 ], [ %cond71, %cond.end70 ]
  br label %cond.end74

cond.end74:                                       ; preds = %cond.end72, %cond.true14
  %cond75 = phi i32 [ 28, %cond.true14 ], [ %cond73, %cond.end72 ]
  br label %cond.end76

cond.end76:                                       ; preds = %cond.end74, %cond.true9
  %cond77 = phi i32 [ 20, %cond.true9 ], [ %cond75, %cond.end74 ]
  br label %cond.end78

cond.end78:                                       ; preds = %cond.end76, %cond.true4
  %cond79 = phi i32 [ 20, %cond.true4 ], [ %cond77, %cond.end76 ]
  br label %cond.end80

cond.end80:                                       ; preds = %cond.end78, %cond.true
  %cond81 = phi i32 [ 16, %cond.true ], [ %cond79, %cond.end78 ]
  %conv = sext i32 %cond81 to i64
  store i64 %conv, i64* %hash_size, align 8
  %14 = load i32, i32* %hash_alg.addr, align 4
  %and82 = and i32 %14, 255
  %or83 = or i32 33554432, %and82
  %cmp84 = icmp eq i32 %or83, 33554435
  br i1 %cmp84, label %cond.true86, label %cond.false87

cond.true86:                                      ; preds = %cond.end80
  br label %cond.end181

cond.false87:                                     ; preds = %cond.end80
  %15 = load i32, i32* %hash_alg.addr, align 4
  %and88 = and i32 %15, 255
  %or89 = or i32 33554432, %and88
  %cmp90 = icmp eq i32 %or89, 33554436
  br i1 %cmp90, label %cond.true92, label %cond.false93

cond.true92:                                      ; preds = %cond.false87
  br label %cond.end179

cond.false93:                                     ; preds = %cond.false87
  %16 = load i32, i32* %hash_alg.addr, align 4
  %and94 = and i32 %16, 255
  %or95 = or i32 33554432, %and94
  %cmp96 = icmp eq i32 %or95, 33554437
  br i1 %cmp96, label %cond.true98, label %cond.false99

cond.true98:                                      ; preds = %cond.false93
  br label %cond.end177

cond.false99:                                     ; preds = %cond.false93
  %17 = load i32, i32* %hash_alg.addr, align 4
  %and100 = and i32 %17, 255
  %or101 = or i32 33554432, %and100
  %cmp102 = icmp eq i32 %or101, 33554440
  br i1 %cmp102, label %cond.true104, label %cond.false105

cond.true104:                                     ; preds = %cond.false99
  br label %cond.end175

cond.false105:                                    ; preds = %cond.false99
  %18 = load i32, i32* %hash_alg.addr, align 4
  %and106 = and i32 %18, 255
  %or107 = or i32 33554432, %and106
  %cmp108 = icmp eq i32 %or107, 33554441
  br i1 %cmp108, label %cond.true110, label %cond.false111

cond.true110:                                     ; preds = %cond.false105
  br label %cond.end173

cond.false111:                                    ; preds = %cond.false105
  %19 = load i32, i32* %hash_alg.addr, align 4
  %and112 = and i32 %19, 255
  %or113 = or i32 33554432, %and112
  %cmp114 = icmp eq i32 %or113, 33554442
  br i1 %cmp114, label %cond.true116, label %cond.false117

cond.true116:                                     ; preds = %cond.false111
  br label %cond.end171

cond.false117:                                    ; preds = %cond.false111
  %20 = load i32, i32* %hash_alg.addr, align 4
  %and118 = and i32 %20, 255
  %or119 = or i32 33554432, %and118
  %cmp120 = icmp eq i32 %or119, 33554443
  br i1 %cmp120, label %cond.true122, label %cond.false123

cond.true122:                                     ; preds = %cond.false117
  br label %cond.end169

cond.false123:                                    ; preds = %cond.false117
  %21 = load i32, i32* %hash_alg.addr, align 4
  %and124 = and i32 %21, 255
  %or125 = or i32 33554432, %and124
  %cmp126 = icmp eq i32 %or125, 33554444
  br i1 %cmp126, label %cond.true128, label %cond.false129

cond.true128:                                     ; preds = %cond.false123
  br label %cond.end167

cond.false129:                                    ; preds = %cond.false123
  %22 = load i32, i32* %hash_alg.addr, align 4
  %and130 = and i32 %22, 255
  %or131 = or i32 33554432, %and130
  %cmp132 = icmp eq i32 %or131, 33554445
  br i1 %cmp132, label %cond.true134, label %cond.false135

cond.true134:                                     ; preds = %cond.false129
  br label %cond.end165

cond.false135:                                    ; preds = %cond.false129
  %23 = load i32, i32* %hash_alg.addr, align 4
  %and136 = and i32 %23, 255
  %or137 = or i32 33554432, %and136
  %cmp138 = icmp eq i32 %or137, 33554448
  br i1 %cmp138, label %cond.true140, label %cond.false141

cond.true140:                                     ; preds = %cond.false135
  br label %cond.end163

cond.false141:                                    ; preds = %cond.false135
  %24 = load i32, i32* %hash_alg.addr, align 4
  %and142 = and i32 %24, 255
  %or143 = or i32 33554432, %and142
  %cmp144 = icmp eq i32 %or143, 33554449
  br i1 %cmp144, label %cond.true146, label %cond.false147

cond.true146:                                     ; preds = %cond.false141
  br label %cond.end161

cond.false147:                                    ; preds = %cond.false141
  %25 = load i32, i32* %hash_alg.addr, align 4
  %and148 = and i32 %25, 255
  %or149 = or i32 33554432, %and148
  %cmp150 = icmp eq i32 %or149, 33554450
  br i1 %cmp150, label %cond.true152, label %cond.false153

cond.true152:                                     ; preds = %cond.false147
  br label %cond.end159

cond.false153:                                    ; preds = %cond.false147
  %26 = load i32, i32* %hash_alg.addr, align 4
  %and154 = and i32 %26, 255
  %or155 = or i32 33554432, %and154
  %cmp156 = icmp eq i32 %or155, 33554451
  %27 = zext i1 %cmp156 to i64
  %cond158 = select i1 %cmp156, i32 72, i32 0
  br label %cond.end159

cond.end159:                                      ; preds = %cond.false153, %cond.true152
  %cond160 = phi i32 [ 104, %cond.true152 ], [ %cond158, %cond.false153 ]
  br label %cond.end161

cond.end161:                                      ; preds = %cond.end159, %cond.true146
  %cond162 = phi i32 [ 136, %cond.true146 ], [ %cond160, %cond.end159 ]
  br label %cond.end163

cond.end163:                                      ; preds = %cond.end161, %cond.true140
  %cond164 = phi i32 [ 144, %cond.true140 ], [ %cond162, %cond.end161 ]
  br label %cond.end165

cond.end165:                                      ; preds = %cond.end163, %cond.true134
  %cond166 = phi i32 [ 128, %cond.true134 ], [ %cond164, %cond.end163 ]
  br label %cond.end167

cond.end167:                                      ; preds = %cond.end165, %cond.true128
  %cond168 = phi i32 [ 128, %cond.true128 ], [ %cond166, %cond.end165 ]
  br label %cond.end169

cond.end169:                                      ; preds = %cond.end167, %cond.true122
  %cond170 = phi i32 [ 128, %cond.true122 ], [ %cond168, %cond.end167 ]
  br label %cond.end171

cond.end171:                                      ; preds = %cond.end169, %cond.true116
  %cond172 = phi i32 [ 128, %cond.true116 ], [ %cond170, %cond.end169 ]
  br label %cond.end173

cond.end173:                                      ; preds = %cond.end171, %cond.true110
  %cond174 = phi i32 [ 64, %cond.true110 ], [ %cond172, %cond.end171 ]
  br label %cond.end175

cond.end175:                                      ; preds = %cond.end173, %cond.true104
  %cond176 = phi i32 [ 64, %cond.true104 ], [ %cond174, %cond.end173 ]
  br label %cond.end177

cond.end177:                                      ; preds = %cond.end175, %cond.true98
  %cond178 = phi i32 [ 64, %cond.true98 ], [ %cond176, %cond.end175 ]
  br label %cond.end179

cond.end179:                                      ; preds = %cond.end177, %cond.true92
  %cond180 = phi i32 [ 64, %cond.true92 ], [ %cond178, %cond.end177 ]
  br label %cond.end181

cond.end181:                                      ; preds = %cond.end179, %cond.true86
  %cond182 = phi i32 [ 64, %cond.true86 ], [ %cond180, %cond.end179 ]
  %conv183 = sext i32 %cond182 to i64
  store i64 %conv183, i64* %block_size, align 8
  %28 = load i32, i32* %hash_alg.addr, align 4
  %29 = load %struct.mbedtls_psa_hmac_operation_t*, %struct.mbedtls_psa_hmac_operation_t** %hmac.addr, align 8
  %alg = getelementptr inbounds %struct.mbedtls_psa_hmac_operation_t, %struct.mbedtls_psa_hmac_operation_t* %29, i32 0, i32 0
  store i32 %28, i32* %alg, align 8
  %30 = load i64, i64* %block_size, align 8
  %cmp184 = icmp ugt i64 %30, 128
  br i1 %cmp184, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end181
  store i32 -134, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %cond.end181
  %31 = load i64, i64* %block_size, align 8
  %cmp186 = icmp ugt i64 %31, 128
  br i1 %cmp186, label %if.then188, label %if.end189

if.then188:                                       ; preds = %if.end
  store i32 -134, i32* %retval, align 4
  br label %return

if.end189:                                        ; preds = %if.end
  %32 = load i64, i64* %block_size, align 8
  %33 = load i64, i64* %hash_size, align 8
  %cmp190 = icmp ult i64 %32, %33
  br i1 %cmp190, label %if.then192, label %if.end193

if.then192:                                       ; preds = %if.end189
  store i32 -134, i32* %retval, align 4
  br label %return

if.end193:                                        ; preds = %if.end189
  %34 = load i64, i64* %key_length.addr, align 8
  %35 = load i64, i64* %block_size, align 8
  %cmp194 = icmp ugt i64 %34, %35
  br i1 %cmp194, label %if.then196, label %if.else

if.then196:                                       ; preds = %if.end193
  %36 = load i32, i32* %hash_alg.addr, align 4
  %37 = load i8*, i8** %key.addr, align 8
  %38 = load i64, i64* %key_length.addr, align 8
  %arraydecay = getelementptr inbounds [128 x i8], [128 x i8]* %ipad, i64 0, i64 0
  %call = call i32 @psa_hash_compute(i32 noundef %36, i8* noundef %37, i64 noundef %38, i8* noundef %arraydecay, i64 noundef 128, i64* noundef %key_length.addr) #4
  store i32 %call, i32* %status, align 4
  %39 = load i32, i32* %status, align 4
  %cmp197 = icmp ne i32 %39, 0
  br i1 %cmp197, label %if.then199, label %if.end200

if.then199:                                       ; preds = %if.then196
  br label %cleanup

if.end200:                                        ; preds = %if.then196
  br label %if.end207

if.else:                                          ; preds = %if.end193
  %40 = load i64, i64* %key_length.addr, align 8
  %cmp201 = icmp ne i64 %40, 0
  br i1 %cmp201, label %if.then203, label %if.end206

if.then203:                                       ; preds = %if.else
  %arraydecay204 = getelementptr inbounds [128 x i8], [128 x i8]* %ipad, i64 0, i64 0
  %41 = load i8*, i8** %key.addr, align 8
  %42 = load i64, i64* %key_length.addr, align 8
  %call205 = call i8* @memcpy(i8* noundef %arraydecay204, i8* noundef %41, i64 noundef %42) #5
  br label %if.end206

if.end206:                                        ; preds = %if.then203, %if.else
  br label %if.end207

if.end207:                                        ; preds = %if.end206, %if.end200
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end207
  %43 = load i64, i64* %i, align 8
  %44 = load i64, i64* %key_length.addr, align 8
  %cmp208 = icmp ult i64 %43, %44
  br i1 %cmp208, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %45 = load i64, i64* %i, align 8
  %arrayidx = getelementptr inbounds [128 x i8], [128 x i8]* %ipad, i64 0, i64 %45
  %46 = load i8, i8* %arrayidx, align 1
  %conv210 = zext i8 %46 to i32
  %xor = xor i32 %conv210, 54
  %conv211 = trunc i32 %xor to i8
  store i8 %conv211, i8* %arrayidx, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %47 = load i64, i64* %i, align 8
  %inc = add i64 %47, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %arraydecay212 = getelementptr inbounds [128 x i8], [128 x i8]* %ipad, i64 0, i64 0
  %48 = load i64, i64* %key_length.addr, align 8
  %add.ptr = getelementptr inbounds i8, i8* %arraydecay212, i64 %48
  %49 = load i64, i64* %block_size, align 8
  %50 = load i64, i64* %key_length.addr, align 8
  %sub = sub i64 %49, %50
  %call213 = call i8* @memset(i8* noundef %add.ptr, i32 noundef 54, i64 noundef %sub) #5
  store i64 0, i64* %i, align 8
  br label %for.cond214

for.cond214:                                      ; preds = %for.inc224, %for.end
  %51 = load i64, i64* %i, align 8
  %52 = load i64, i64* %key_length.addr, align 8
  %cmp215 = icmp ult i64 %51, %52
  br i1 %cmp215, label %for.body217, label %for.end226

for.body217:                                      ; preds = %for.cond214
  %53 = load i64, i64* %i, align 8
  %arrayidx218 = getelementptr inbounds [128 x i8], [128 x i8]* %ipad, i64 0, i64 %53
  %54 = load i8, i8* %arrayidx218, align 1
  %conv219 = zext i8 %54 to i32
  %xor220 = xor i32 %conv219, 54
  %xor221 = xor i32 %xor220, 92
  %conv222 = trunc i32 %xor221 to i8
  %55 = load %struct.mbedtls_psa_hmac_operation_t*, %struct.mbedtls_psa_hmac_operation_t** %hmac.addr, align 8
  %opad = getelementptr inbounds %struct.mbedtls_psa_hmac_operation_t, %struct.mbedtls_psa_hmac_operation_t* %55, i32 0, i32 2
  %56 = load i64, i64* %i, align 8
  %arrayidx223 = getelementptr inbounds [128 x i8], [128 x i8]* %opad, i64 0, i64 %56
  store i8 %conv222, i8* %arrayidx223, align 1
  br label %for.inc224

for.inc224:                                       ; preds = %for.body217
  %57 = load i64, i64* %i, align 8
  %inc225 = add i64 %57, 1
  store i64 %inc225, i64* %i, align 8
  br label %for.cond214, !llvm.loop !7

for.end226:                                       ; preds = %for.cond214
  %58 = load %struct.mbedtls_psa_hmac_operation_t*, %struct.mbedtls_psa_hmac_operation_t** %hmac.addr, align 8
  %opad227 = getelementptr inbounds %struct.mbedtls_psa_hmac_operation_t, %struct.mbedtls_psa_hmac_operation_t* %58, i32 0, i32 2
  %arraydecay228 = getelementptr inbounds [128 x i8], [128 x i8]* %opad227, i64 0, i64 0
  %59 = load i64, i64* %key_length.addr, align 8
  %add.ptr229 = getelementptr inbounds i8, i8* %arraydecay228, i64 %59
  %60 = load i64, i64* %block_size, align 8
  %61 = load i64, i64* %key_length.addr, align 8
  %sub230 = sub i64 %60, %61
  %call231 = call i8* @memset(i8* noundef %add.ptr229, i32 noundef 92, i64 noundef %sub230) #5
  %62 = load %struct.mbedtls_psa_hmac_operation_t*, %struct.mbedtls_psa_hmac_operation_t** %hmac.addr, align 8
  %hash_ctx = getelementptr inbounds %struct.mbedtls_psa_hmac_operation_t, %struct.mbedtls_psa_hmac_operation_t* %62, i32 0, i32 1
  %63 = load i32, i32* %hash_alg.addr, align 4
  %call232 = call i32 @psa_hash_setup(%struct.psa_hash_operation_s* noundef %hash_ctx, i32 noundef %63) #4
  store i32 %call232, i32* %status, align 4
  %64 = load i32, i32* %status, align 4
  %cmp233 = icmp ne i32 %64, 0
  br i1 %cmp233, label %if.then235, label %if.end236

if.then235:                                       ; preds = %for.end226
  br label %cleanup

if.end236:                                        ; preds = %for.end226
  %65 = load %struct.mbedtls_psa_hmac_operation_t*, %struct.mbedtls_psa_hmac_operation_t** %hmac.addr, align 8
  %hash_ctx237 = getelementptr inbounds %struct.mbedtls_psa_hmac_operation_t, %struct.mbedtls_psa_hmac_operation_t* %65, i32 0, i32 1
  %arraydecay238 = getelementptr inbounds [128 x i8], [128 x i8]* %ipad, i64 0, i64 0
  %66 = load i64, i64* %block_size, align 8
  %call239 = call i32 @psa_hash_update(%struct.psa_hash_operation_s* noundef %hash_ctx237, i8* noundef %arraydecay238, i64 noundef %66) #4
  store i32 %call239, i32* %status, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end236, %if.then235, %if.then199
  %arraydecay240 = getelementptr inbounds [128 x i8], [128 x i8]* %ipad, i64 0, i64 0
  call void @mbedtls_platform_zeroize(i8* noundef %arraydecay240, i64 noundef 128) #4
  %67 = load i32, i32* %status, align 4
  store i32 %67, i32* %retval, align 4
  br label %return

return:                                           ; preds = %cleanup, %if.then192, %if.then188, %if.then
  %68 = load i32, i32* %retval, align 4
  ret i32 %68
}

declare dso_local void @mbedtls_cipher_init(%struct.mbedtls_cipher_context_t* noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i16 @psa_get_key_type(%struct.psa_key_attributes_s* noundef %attributes) #0 {
entry:
  %attributes.addr = alloca %struct.psa_key_attributes_s*, align 8
  store %struct.psa_key_attributes_s* %attributes, %struct.psa_key_attributes_s** %attributes.addr, align 8
  %0 = load %struct.psa_key_attributes_s*, %struct.psa_key_attributes_s** %attributes.addr, align 8
  %core = getelementptr inbounds %struct.psa_key_attributes_s, %struct.psa_key_attributes_s* %0, i32 0, i32 0
  %type = getelementptr inbounds %struct.psa_core_key_attributes_t, %struct.psa_core_key_attributes_t* %core, i32 0, i32 0
  %1 = load i16, i16* %type, align 8
  ret i16 %1
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @psa_get_key_bits(%struct.psa_key_attributes_s* noundef %attributes) #0 {
entry:
  %attributes.addr = alloca %struct.psa_key_attributes_s*, align 8
  store %struct.psa_key_attributes_s* %attributes, %struct.psa_key_attributes_s** %attributes.addr, align 8
  %0 = load %struct.psa_key_attributes_s*, %struct.psa_key_attributes_s** %attributes.addr, align 8
  %core = getelementptr inbounds %struct.psa_key_attributes_s, %struct.psa_key_attributes_s* %0, i32 0, i32 0
  %bits = getelementptr inbounds %struct.psa_core_key_attributes_t, %struct.psa_core_key_attributes_t* %core, i32 0, i32 1
  %1 = load i16, i16* %bits, align 2
  %conv = zext i16 %1 to i64
  ret i64 %conv
}

declare dso_local %struct.mbedtls_cipher_info_t* @mbedtls_cipher_info_from_psa(i32 noundef, i16 noundef zeroext, i64 noundef, i32* noundef) #1

declare dso_local i32 @mbedtls_cipher_setup(%struct.mbedtls_cipher_context_t* noundef, %struct.mbedtls_cipher_info_t* noundef) #1

declare dso_local i32 @mbedtls_cipher_cmac_starts(%struct.mbedtls_cipher_context_t* noundef, i8* noundef, i64 noundef) #1

declare dso_local i32 @psa_hash_compute(i32 noundef, i8* noundef, i64 noundef, i8* noundef, i64 noundef, i64* noundef) #1

; Function Attrs: nounwind
declare dso_local i8* @memcpy(i8* noundef, i8* noundef, i64 noundef) #2

declare dso_local i32 @psa_hash_setup(%struct.psa_hash_operation_s* noundef, i32 noundef) #1

declare dso_local i32 @psa_hash_update(%struct.psa_hash_operation_s* noundef, i8* noundef, i64 noundef) #1

declare dso_local i32 @mbedtls_cipher_cmac_finish(%struct.mbedtls_cipher_context_t* noundef, i8* noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @psa_hmac_finish_internal(%struct.mbedtls_psa_hmac_operation_t* noundef %hmac, i8* noundef %mac, i64 noundef %mac_size) #0 {
entry:
  %retval = alloca i32, align 4
  %hmac.addr = alloca %struct.mbedtls_psa_hmac_operation_t*, align 8
  %mac.addr = alloca i8*, align 8
  %mac_size.addr = alloca i64, align 8
  %tmp = alloca [64 x i8], align 16
  %hash_alg = alloca i32, align 4
  %hash_size = alloca i64, align 8
  %block_size = alloca i64, align 8
  %status = alloca i32, align 4
  store %struct.mbedtls_psa_hmac_operation_t* %hmac, %struct.mbedtls_psa_hmac_operation_t** %hmac.addr, align 8
  store i8* %mac, i8** %mac.addr, align 8
  store i64 %mac_size, i64* %mac_size.addr, align 8
  %0 = load %struct.mbedtls_psa_hmac_operation_t*, %struct.mbedtls_psa_hmac_operation_t** %hmac.addr, align 8
  %alg = getelementptr inbounds %struct.mbedtls_psa_hmac_operation_t, %struct.mbedtls_psa_hmac_operation_t* %0, i32 0, i32 0
  %1 = load i32, i32* %alg, align 8
  store i32 %1, i32* %hash_alg, align 4
  store i64 0, i64* %hash_size, align 8
  %2 = load i32, i32* %hash_alg, align 4
  %and = and i32 %2, 255
  %or = or i32 33554432, %and
  %cmp = icmp eq i32 %or, 33554435
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end80

cond.false:                                       ; preds = %entry
  %3 = load i32, i32* %hash_alg, align 4
  %and1 = and i32 %3, 255
  %or2 = or i32 33554432, %and1
  %cmp3 = icmp eq i32 %or2, 33554436
  br i1 %cmp3, label %cond.true4, label %cond.false5

cond.true4:                                       ; preds = %cond.false
  br label %cond.end78

cond.false5:                                      ; preds = %cond.false
  %4 = load i32, i32* %hash_alg, align 4
  %and6 = and i32 %4, 255
  %or7 = or i32 33554432, %and6
  %cmp8 = icmp eq i32 %or7, 33554437
  br i1 %cmp8, label %cond.true9, label %cond.false10

cond.true9:                                       ; preds = %cond.false5
  br label %cond.end76

cond.false10:                                     ; preds = %cond.false5
  %5 = load i32, i32* %hash_alg, align 4
  %and11 = and i32 %5, 255
  %or12 = or i32 33554432, %and11
  %cmp13 = icmp eq i32 %or12, 33554440
  br i1 %cmp13, label %cond.true14, label %cond.false15

cond.true14:                                      ; preds = %cond.false10
  br label %cond.end74

cond.false15:                                     ; preds = %cond.false10
  %6 = load i32, i32* %hash_alg, align 4
  %and16 = and i32 %6, 255
  %or17 = or i32 33554432, %and16
  %cmp18 = icmp eq i32 %or17, 33554441
  br i1 %cmp18, label %cond.true19, label %cond.false20

cond.true19:                                      ; preds = %cond.false15
  br label %cond.end72

cond.false20:                                     ; preds = %cond.false15
  %7 = load i32, i32* %hash_alg, align 4
  %and21 = and i32 %7, 255
  %or22 = or i32 33554432, %and21
  %cmp23 = icmp eq i32 %or22, 33554442
  br i1 %cmp23, label %cond.true24, label %cond.false25

cond.true24:                                      ; preds = %cond.false20
  br label %cond.end70

cond.false25:                                     ; preds = %cond.false20
  %8 = load i32, i32* %hash_alg, align 4
  %and26 = and i32 %8, 255
  %or27 = or i32 33554432, %and26
  %cmp28 = icmp eq i32 %or27, 33554443
  br i1 %cmp28, label %cond.true29, label %cond.false30

cond.true29:                                      ; preds = %cond.false25
  br label %cond.end68

cond.false30:                                     ; preds = %cond.false25
  %9 = load i32, i32* %hash_alg, align 4
  %and31 = and i32 %9, 255
  %or32 = or i32 33554432, %and31
  %cmp33 = icmp eq i32 %or32, 33554444
  br i1 %cmp33, label %cond.true34, label %cond.false35

cond.true34:                                      ; preds = %cond.false30
  br label %cond.end66

cond.false35:                                     ; preds = %cond.false30
  %10 = load i32, i32* %hash_alg, align 4
  %and36 = and i32 %10, 255
  %or37 = or i32 33554432, %and36
  %cmp38 = icmp eq i32 %or37, 33554445
  br i1 %cmp38, label %cond.true39, label %cond.false40

cond.true39:                                      ; preds = %cond.false35
  br label %cond.end64

cond.false40:                                     ; preds = %cond.false35
  %11 = load i32, i32* %hash_alg, align 4
  %and41 = and i32 %11, 255
  %or42 = or i32 33554432, %and41
  %cmp43 = icmp eq i32 %or42, 33554448
  br i1 %cmp43, label %cond.true44, label %cond.false45

cond.true44:                                      ; preds = %cond.false40
  br label %cond.end62

cond.false45:                                     ; preds = %cond.false40
  %12 = load i32, i32* %hash_alg, align 4
  %and46 = and i32 %12, 255
  %or47 = or i32 33554432, %and46
  %cmp48 = icmp eq i32 %or47, 33554449
  br i1 %cmp48, label %cond.true49, label %cond.false50

cond.true49:                                      ; preds = %cond.false45
  br label %cond.end60

cond.false50:                                     ; preds = %cond.false45
  %13 = load i32, i32* %hash_alg, align 4
  %and51 = and i32 %13, 255
  %or52 = or i32 33554432, %and51
  %cmp53 = icmp eq i32 %or52, 33554450
  br i1 %cmp53, label %cond.true54, label %cond.false55

cond.true54:                                      ; preds = %cond.false50
  br label %cond.end

cond.false55:                                     ; preds = %cond.false50
  %14 = load i32, i32* %hash_alg, align 4
  %and56 = and i32 %14, 255
  %or57 = or i32 33554432, %and56
  %cmp58 = icmp eq i32 %or57, 33554451
  %15 = zext i1 %cmp58 to i64
  %cond = select i1 %cmp58, i32 72, i32 0
  br label %cond.end

cond.end:                                         ; preds = %cond.false55, %cond.true54
  %cond59 = phi i32 [ 104, %cond.true54 ], [ %cond, %cond.false55 ]
  br label %cond.end60

cond.end60:                                       ; preds = %cond.end, %cond.true49
  %cond61 = phi i32 [ 136, %cond.true49 ], [ %cond59, %cond.end ]
  br label %cond.end62

cond.end62:                                       ; preds = %cond.end60, %cond.true44
  %cond63 = phi i32 [ 144, %cond.true44 ], [ %cond61, %cond.end60 ]
  br label %cond.end64

cond.end64:                                       ; preds = %cond.end62, %cond.true39
  %cond65 = phi i32 [ 128, %cond.true39 ], [ %cond63, %cond.end62 ]
  br label %cond.end66

cond.end66:                                       ; preds = %cond.end64, %cond.true34
  %cond67 = phi i32 [ 128, %cond.true34 ], [ %cond65, %cond.end64 ]
  br label %cond.end68

cond.end68:                                       ; preds = %cond.end66, %cond.true29
  %cond69 = phi i32 [ 128, %cond.true29 ], [ %cond67, %cond.end66 ]
  br label %cond.end70

cond.end70:                                       ; preds = %cond.end68, %cond.true24
  %cond71 = phi i32 [ 128, %cond.true24 ], [ %cond69, %cond.end68 ]
  br label %cond.end72

cond.end72:                                       ; preds = %cond.end70, %cond.true19
  %cond73 = phi i32 [ 64, %cond.true19 ], [ %cond71, %cond.end70 ]
  br label %cond.end74

cond.end74:                                       ; preds = %cond.end72, %cond.true14
  %cond75 = phi i32 [ 64, %cond.true14 ], [ %cond73, %cond.end72 ]
  br label %cond.end76

cond.end76:                                       ; preds = %cond.end74, %cond.true9
  %cond77 = phi i32 [ 64, %cond.true9 ], [ %cond75, %cond.end74 ]
  br label %cond.end78

cond.end78:                                       ; preds = %cond.end76, %cond.true4
  %cond79 = phi i32 [ 64, %cond.true4 ], [ %cond77, %cond.end76 ]
  br label %cond.end80

cond.end80:                                       ; preds = %cond.end78, %cond.true
  %cond81 = phi i32 [ 64, %cond.true ], [ %cond79, %cond.end78 ]
  %conv = sext i32 %cond81 to i64
  store i64 %conv, i64* %block_size, align 8
  %16 = load %struct.mbedtls_psa_hmac_operation_t*, %struct.mbedtls_psa_hmac_operation_t** %hmac.addr, align 8
  %hash_ctx = getelementptr inbounds %struct.mbedtls_psa_hmac_operation_t, %struct.mbedtls_psa_hmac_operation_t* %16, i32 0, i32 1
  %arraydecay = getelementptr inbounds [64 x i8], [64 x i8]* %tmp, i64 0, i64 0
  %call = call i32 @psa_hash_finish(%struct.psa_hash_operation_s* noundef %hash_ctx, i8* noundef %arraydecay, i64 noundef 64, i64* noundef %hash_size) #4
  store i32 %call, i32* %status, align 4
  %17 = load i32, i32* %status, align 4
  %cmp82 = icmp ne i32 %17, 0
  br i1 %cmp82, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end80
  %18 = load i32, i32* %status, align 4
  store i32 %18, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %cond.end80
  %19 = load %struct.mbedtls_psa_hmac_operation_t*, %struct.mbedtls_psa_hmac_operation_t** %hmac.addr, align 8
  %hash_ctx84 = getelementptr inbounds %struct.mbedtls_psa_hmac_operation_t, %struct.mbedtls_psa_hmac_operation_t* %19, i32 0, i32 1
  %20 = load i32, i32* %hash_alg, align 4
  %call85 = call i32 @psa_hash_setup(%struct.psa_hash_operation_s* noundef %hash_ctx84, i32 noundef %20) #4
  store i32 %call85, i32* %status, align 4
  %21 = load i32, i32* %status, align 4
  %cmp86 = icmp ne i32 %21, 0
  br i1 %cmp86, label %if.then88, label %if.end89

if.then88:                                        ; preds = %if.end
  br label %exit

if.end89:                                         ; preds = %if.end
  %22 = load %struct.mbedtls_psa_hmac_operation_t*, %struct.mbedtls_psa_hmac_operation_t** %hmac.addr, align 8
  %hash_ctx90 = getelementptr inbounds %struct.mbedtls_psa_hmac_operation_t, %struct.mbedtls_psa_hmac_operation_t* %22, i32 0, i32 1
  %23 = load %struct.mbedtls_psa_hmac_operation_t*, %struct.mbedtls_psa_hmac_operation_t** %hmac.addr, align 8
  %opad = getelementptr inbounds %struct.mbedtls_psa_hmac_operation_t, %struct.mbedtls_psa_hmac_operation_t* %23, i32 0, i32 2
  %arraydecay91 = getelementptr inbounds [128 x i8], [128 x i8]* %opad, i64 0, i64 0
  %24 = load i64, i64* %block_size, align 8
  %call92 = call i32 @psa_hash_update(%struct.psa_hash_operation_s* noundef %hash_ctx90, i8* noundef %arraydecay91, i64 noundef %24) #4
  store i32 %call92, i32* %status, align 4
  %25 = load i32, i32* %status, align 4
  %cmp93 = icmp ne i32 %25, 0
  br i1 %cmp93, label %if.then95, label %if.end96

if.then95:                                        ; preds = %if.end89
  br label %exit

if.end96:                                         ; preds = %if.end89
  %26 = load %struct.mbedtls_psa_hmac_operation_t*, %struct.mbedtls_psa_hmac_operation_t** %hmac.addr, align 8
  %hash_ctx97 = getelementptr inbounds %struct.mbedtls_psa_hmac_operation_t, %struct.mbedtls_psa_hmac_operation_t* %26, i32 0, i32 1
  %arraydecay98 = getelementptr inbounds [64 x i8], [64 x i8]* %tmp, i64 0, i64 0
  %27 = load i64, i64* %hash_size, align 8
  %call99 = call i32 @psa_hash_update(%struct.psa_hash_operation_s* noundef %hash_ctx97, i8* noundef %arraydecay98, i64 noundef %27) #4
  store i32 %call99, i32* %status, align 4
  %28 = load i32, i32* %status, align 4
  %cmp100 = icmp ne i32 %28, 0
  br i1 %cmp100, label %if.then102, label %if.end103

if.then102:                                       ; preds = %if.end96
  br label %exit

if.end103:                                        ; preds = %if.end96
  %29 = load %struct.mbedtls_psa_hmac_operation_t*, %struct.mbedtls_psa_hmac_operation_t** %hmac.addr, align 8
  %hash_ctx104 = getelementptr inbounds %struct.mbedtls_psa_hmac_operation_t, %struct.mbedtls_psa_hmac_operation_t* %29, i32 0, i32 1
  %arraydecay105 = getelementptr inbounds [64 x i8], [64 x i8]* %tmp, i64 0, i64 0
  %call106 = call i32 @psa_hash_finish(%struct.psa_hash_operation_s* noundef %hash_ctx104, i8* noundef %arraydecay105, i64 noundef 64, i64* noundef %hash_size) #4
  store i32 %call106, i32* %status, align 4
  %30 = load i32, i32* %status, align 4
  %cmp107 = icmp ne i32 %30, 0
  br i1 %cmp107, label %if.then109, label %if.end110

if.then109:                                       ; preds = %if.end103
  br label %exit

if.end110:                                        ; preds = %if.end103
  %31 = load i8*, i8** %mac.addr, align 8
  %arraydecay111 = getelementptr inbounds [64 x i8], [64 x i8]* %tmp, i64 0, i64 0
  %32 = load i64, i64* %mac_size.addr, align 8
  %call112 = call i8* @memcpy(i8* noundef %31, i8* noundef %arraydecay111, i64 noundef %32) #5
  br label %exit

exit:                                             ; preds = %if.end110, %if.then109, %if.then102, %if.then95, %if.then88
  %arraydecay113 = getelementptr inbounds [64 x i8], [64 x i8]* %tmp, i64 0, i64 0
  %33 = load i64, i64* %hash_size, align 8
  call void @mbedtls_platform_zeroize(i8* noundef %arraydecay113, i64 noundef %33) #4
  %34 = load i32, i32* %status, align 4
  store i32 %34, i32* %retval, align 4
  br label %return

return:                                           ; preds = %exit, %if.then
  %35 = load i32, i32* %retval, align 4
  ret i32 %35
}

declare dso_local i32 @psa_hash_finish(%struct.psa_hash_operation_s* noundef, i8* noundef, i64 noundef, i64* noundef) #1

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
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
!7 = distinct !{!7, !5}
