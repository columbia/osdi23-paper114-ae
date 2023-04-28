; ModuleID = 'psa_crypto_driver_wrappers.c'
source_filename = "psa_crypto_driver_wrappers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.psa_key_attributes_s = type { %struct.psa_core_key_attributes_t, i8*, i64 }
%struct.psa_core_key_attributes_t = type { i16, i16, i32, i32, %struct.psa_key_policy_s, i16 }
%struct.psa_key_policy_s = type { i32, i32, i32 }
%struct.psa_cipher_operation_s = type { i32, i8, i8, %union.psa_driver_cipher_context_t }
%union.psa_driver_cipher_context_t = type { %struct.mbedtls_psa_cipher_operation_t }
%struct.mbedtls_psa_cipher_operation_t = type { i32, i8, i8, %union.anon }
%union.anon = type { %struct.mbedtls_cipher_context_t }
%struct.mbedtls_cipher_context_t = type { %struct.mbedtls_cipher_info_t*, i32, i32, void (i8*, i64, i64)*, i32 (i8*, i64, i64*)*, [16 x i8], i64, [16 x i8], i64, i8*, %struct.mbedtls_cmac_context_t* }
%struct.mbedtls_cipher_info_t = type { i32, i32, i32, i8*, i32, i32, i32, %struct.mbedtls_cipher_base_t* }
%struct.mbedtls_cipher_base_t = type opaque
%struct.mbedtls_cmac_context_t = type { [16 x i8], [16 x i8], i64 }
%struct.psa_hash_operation_s = type { i32, %union.psa_driver_hash_context_t }
%union.psa_driver_hash_context_t = type { %struct.mbedtls_psa_hash_operation_t }
%struct.mbedtls_psa_hash_operation_t = type { i32, %union.anon.0 }
%union.anon.0 = type { %struct.mbedtls_sha512_context }
%struct.mbedtls_sha512_context = type { [2 x i64], [8 x i64], [128 x i8], i32 }
%struct.psa_aead_operation_s = type { i32, i32, i16, i64, i64, i8, %union.psa_driver_aead_context_t }
%union.psa_driver_aead_context_t = type { %struct.mbedtls_psa_aead_operation_t }
%struct.mbedtls_psa_aead_operation_t = type { i32, i16, i8, i8, %union.anon.1 }
%union.anon.1 = type { %struct.mbedtls_gcm_context }
%struct.mbedtls_gcm_context = type { %struct.mbedtls_cipher_context_t, [16 x i64], [16 x i64], i64, i64, [16 x i8], [16 x i8], [16 x i8], i32 }
%struct.psa_mac_operation_s = type { i32, i8, i8, %union.psa_driver_mac_context_t }
%union.psa_driver_mac_context_t = type { %struct.mbedtls_psa_mac_operation_t }
%struct.mbedtls_psa_mac_operation_t = type { i32, %union.anon.2 }
%union.anon.2 = type { %struct.mbedtls_psa_hmac_operation_t }
%struct.mbedtls_psa_hmac_operation_t = type { i32, %struct.psa_hash_operation_s, [128 x i8] }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @psa_driver_wrapper_init() #0 {
entry:
  %status = alloca i32, align 4
  store i32 -151, i32* %status, align 4
  %0 = load i32, i32* %status, align 4
  ret i32 0
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @psa_driver_wrapper_free() #0 {
entry:
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @psa_driver_wrapper_sign_message(%struct.psa_key_attributes_s* noundef %attributes, i8* noundef %key_buffer, i64 noundef %key_buffer_size, i32 noundef %alg, i8* noundef %input, i64 noundef %input_length, i8* noundef %signature, i64 noundef %signature_size, i64* noundef %signature_length) #0 {
entry:
  %attributes.addr = alloca %struct.psa_key_attributes_s*, align 8
  %key_buffer.addr = alloca i8*, align 8
  %key_buffer_size.addr = alloca i64, align 8
  %alg.addr = alloca i32, align 4
  %input.addr = alloca i8*, align 8
  %input_length.addr = alloca i64, align 8
  %signature.addr = alloca i8*, align 8
  %signature_size.addr = alloca i64, align 8
  %signature_length.addr = alloca i64*, align 8
  %status = alloca i32, align 4
  %location = alloca i32, align 4
  store %struct.psa_key_attributes_s* %attributes, %struct.psa_key_attributes_s** %attributes.addr, align 8
  store i8* %key_buffer, i8** %key_buffer.addr, align 8
  store i64 %key_buffer_size, i64* %key_buffer_size.addr, align 8
  store i32 %alg, i32* %alg.addr, align 4
  store i8* %input, i8** %input.addr, align 8
  store i64 %input_length, i64* %input_length.addr, align 8
  store i8* %signature, i8** %signature.addr, align 8
  store i64 %signature_size, i64* %signature_size.addr, align 8
  store i64* %signature_length, i64** %signature_length.addr, align 8
  store i32 -151, i32* %status, align 4
  %0 = load %struct.psa_key_attributes_s*, %struct.psa_key_attributes_s** %attributes.addr, align 8
  %core = getelementptr inbounds %struct.psa_key_attributes_s, %struct.psa_key_attributes_s* %0, i32 0, i32 0
  %lifetime = getelementptr inbounds %struct.psa_core_key_attributes_t, %struct.psa_core_key_attributes_t* %core, i32 0, i32 2
  %1 = load i32, i32* %lifetime, align 4
  %shr = lshr i32 %1, 8
  store i32 %shr, i32* %location, align 4
  %2 = load i32, i32* %location, align 4
  switch i32 %2, label %sw.default [
    i32 0, label %sw.bb
  ]

sw.bb:                                            ; preds = %entry
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %3 = load i32, i32* %status, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb
  %4 = load %struct.psa_key_attributes_s*, %struct.psa_key_attributes_s** %attributes.addr, align 8
  %5 = load i8*, i8** %key_buffer.addr, align 8
  %6 = load i64, i64* %key_buffer_size.addr, align 8
  %7 = load i32, i32* %alg.addr, align 4
  %8 = load i8*, i8** %input.addr, align 8
  %9 = load i64, i64* %input_length.addr, align 8
  %10 = load i8*, i8** %signature.addr, align 8
  %11 = load i64, i64* %signature_size.addr, align 8
  %12 = load i64*, i64** %signature_length.addr, align 8
  %call = call i32 @psa_sign_message_builtin(%struct.psa_key_attributes_s* noundef %4, i8* noundef %5, i64 noundef %6, i32 noundef %7, i8* noundef %8, i64 noundef %9, i8* noundef %10, i64 noundef %11, i64* noundef %12) #2
  ret i32 %call
}

declare dso_local i32 @psa_sign_message_builtin(%struct.psa_key_attributes_s* noundef, i8* noundef, i64 noundef, i32 noundef, i8* noundef, i64 noundef, i8* noundef, i64 noundef, i64* noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @psa_driver_wrapper_verify_message(%struct.psa_key_attributes_s* noundef %attributes, i8* noundef %key_buffer, i64 noundef %key_buffer_size, i32 noundef %alg, i8* noundef %input, i64 noundef %input_length, i8* noundef %signature, i64 noundef %signature_length) #0 {
entry:
  %attributes.addr = alloca %struct.psa_key_attributes_s*, align 8
  %key_buffer.addr = alloca i8*, align 8
  %key_buffer_size.addr = alloca i64, align 8
  %alg.addr = alloca i32, align 4
  %input.addr = alloca i8*, align 8
  %input_length.addr = alloca i64, align 8
  %signature.addr = alloca i8*, align 8
  %signature_length.addr = alloca i64, align 8
  %status = alloca i32, align 4
  %location = alloca i32, align 4
  store %struct.psa_key_attributes_s* %attributes, %struct.psa_key_attributes_s** %attributes.addr, align 8
  store i8* %key_buffer, i8** %key_buffer.addr, align 8
  store i64 %key_buffer_size, i64* %key_buffer_size.addr, align 8
  store i32 %alg, i32* %alg.addr, align 4
  store i8* %input, i8** %input.addr, align 8
  store i64 %input_length, i64* %input_length.addr, align 8
  store i8* %signature, i8** %signature.addr, align 8
  store i64 %signature_length, i64* %signature_length.addr, align 8
  store i32 -151, i32* %status, align 4
  %0 = load %struct.psa_key_attributes_s*, %struct.psa_key_attributes_s** %attributes.addr, align 8
  %core = getelementptr inbounds %struct.psa_key_attributes_s, %struct.psa_key_attributes_s* %0, i32 0, i32 0
  %lifetime = getelementptr inbounds %struct.psa_core_key_attributes_t, %struct.psa_core_key_attributes_t* %core, i32 0, i32 2
  %1 = load i32, i32* %lifetime, align 4
  %shr = lshr i32 %1, 8
  store i32 %shr, i32* %location, align 4
  %2 = load i32, i32* %location, align 4
  switch i32 %2, label %sw.default [
    i32 0, label %sw.bb
  ]

sw.bb:                                            ; preds = %entry
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %3 = load i32, i32* %status, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb
  %4 = load %struct.psa_key_attributes_s*, %struct.psa_key_attributes_s** %attributes.addr, align 8
  %5 = load i8*, i8** %key_buffer.addr, align 8
  %6 = load i64, i64* %key_buffer_size.addr, align 8
  %7 = load i32, i32* %alg.addr, align 4
  %8 = load i8*, i8** %input.addr, align 8
  %9 = load i64, i64* %input_length.addr, align 8
  %10 = load i8*, i8** %signature.addr, align 8
  %11 = load i64, i64* %signature_length.addr, align 8
  %call = call i32 @psa_verify_message_builtin(%struct.psa_key_attributes_s* noundef %4, i8* noundef %5, i64 noundef %6, i32 noundef %7, i8* noundef %8, i64 noundef %9, i8* noundef %10, i64 noundef %11) #2
  ret i32 %call
}

declare dso_local i32 @psa_verify_message_builtin(%struct.psa_key_attributes_s* noundef, i8* noundef, i64 noundef, i32 noundef, i8* noundef, i64 noundef, i8* noundef, i64 noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @psa_driver_wrapper_sign_hash(%struct.psa_key_attributes_s* noundef %attributes, i8* noundef %key_buffer, i64 noundef %key_buffer_size, i32 noundef %alg, i8* noundef %hash, i64 noundef %hash_length, i8* noundef %signature, i64 noundef %signature_size, i64* noundef %signature_length) #0 {
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
  %location = alloca i32, align 4
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
  %0 = load %struct.psa_key_attributes_s*, %struct.psa_key_attributes_s** %attributes.addr, align 8
  %core = getelementptr inbounds %struct.psa_key_attributes_s, %struct.psa_key_attributes_s* %0, i32 0, i32 0
  %lifetime = getelementptr inbounds %struct.psa_core_key_attributes_t, %struct.psa_core_key_attributes_t* %core, i32 0, i32 2
  %1 = load i32, i32* %lifetime, align 4
  %shr = lshr i32 %1, 8
  store i32 %shr, i32* %location, align 4
  %2 = load i32, i32* %location, align 4
  switch i32 %2, label %sw.default [
    i32 0, label %sw.bb
  ]

sw.bb:                                            ; preds = %entry
  %3 = load %struct.psa_key_attributes_s*, %struct.psa_key_attributes_s** %attributes.addr, align 8
  %4 = load i8*, i8** %key_buffer.addr, align 8
  %5 = load i64, i64* %key_buffer_size.addr, align 8
  %6 = load i32, i32* %alg.addr, align 4
  %7 = load i8*, i8** %hash.addr, align 8
  %8 = load i64, i64* %hash_length.addr, align 8
  %9 = load i8*, i8** %signature.addr, align 8
  %10 = load i64, i64* %signature_size.addr, align 8
  %11 = load i64*, i64** %signature_length.addr, align 8
  %call = call i32 @psa_sign_hash_builtin(%struct.psa_key_attributes_s* noundef %3, i8* noundef %4, i64 noundef %5, i32 noundef %6, i8* noundef %7, i64 noundef %8, i8* noundef %9, i64 noundef %10, i64* noundef %11) #2
  store i32 %call, i32* %retval, align 4
  br label %return

sw.default:                                       ; preds = %entry
  %12 = load i32, i32* %status, align 4
  store i32 -135, i32* %retval, align 4
  br label %return

return:                                           ; preds = %sw.default, %sw.bb
  %13 = load i32, i32* %retval, align 4
  ret i32 %13
}

declare dso_local i32 @psa_sign_hash_builtin(%struct.psa_key_attributes_s* noundef, i8* noundef, i64 noundef, i32 noundef, i8* noundef, i64 noundef, i8* noundef, i64 noundef, i64* noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @psa_driver_wrapper_verify_hash(%struct.psa_key_attributes_s* noundef %attributes, i8* noundef %key_buffer, i64 noundef %key_buffer_size, i32 noundef %alg, i8* noundef %hash, i64 noundef %hash_length, i8* noundef %signature, i64 noundef %signature_length) #0 {
entry:
  %retval = alloca i32, align 4
  %attributes.addr = alloca %struct.psa_key_attributes_s*, align 8
  %key_buffer.addr = alloca i8*, align 8
  %key_buffer_size.addr = alloca i64, align 8
  %alg.addr = alloca i32, align 4
  %hash.addr = alloca i8*, align 8
  %hash_length.addr = alloca i64, align 8
  %signature.addr = alloca i8*, align 8
  %signature_length.addr = alloca i64, align 8
  %status = alloca i32, align 4
  %location = alloca i32, align 4
  store %struct.psa_key_attributes_s* %attributes, %struct.psa_key_attributes_s** %attributes.addr, align 8
  store i8* %key_buffer, i8** %key_buffer.addr, align 8
  store i64 %key_buffer_size, i64* %key_buffer_size.addr, align 8
  store i32 %alg, i32* %alg.addr, align 4
  store i8* %hash, i8** %hash.addr, align 8
  store i64 %hash_length, i64* %hash_length.addr, align 8
  store i8* %signature, i8** %signature.addr, align 8
  store i64 %signature_length, i64* %signature_length.addr, align 8
  store i32 -151, i32* %status, align 4
  %0 = load %struct.psa_key_attributes_s*, %struct.psa_key_attributes_s** %attributes.addr, align 8
  %core = getelementptr inbounds %struct.psa_key_attributes_s, %struct.psa_key_attributes_s* %0, i32 0, i32 0
  %lifetime = getelementptr inbounds %struct.psa_core_key_attributes_t, %struct.psa_core_key_attributes_t* %core, i32 0, i32 2
  %1 = load i32, i32* %lifetime, align 4
  %shr = lshr i32 %1, 8
  store i32 %shr, i32* %location, align 4
  %2 = load i32, i32* %location, align 4
  switch i32 %2, label %sw.default [
    i32 0, label %sw.bb
  ]

sw.bb:                                            ; preds = %entry
  %3 = load %struct.psa_key_attributes_s*, %struct.psa_key_attributes_s** %attributes.addr, align 8
  %4 = load i8*, i8** %key_buffer.addr, align 8
  %5 = load i64, i64* %key_buffer_size.addr, align 8
  %6 = load i32, i32* %alg.addr, align 4
  %7 = load i8*, i8** %hash.addr, align 8
  %8 = load i64, i64* %hash_length.addr, align 8
  %9 = load i8*, i8** %signature.addr, align 8
  %10 = load i64, i64* %signature_length.addr, align 8
  %call = call i32 @psa_verify_hash_builtin(%struct.psa_key_attributes_s* noundef %3, i8* noundef %4, i64 noundef %5, i32 noundef %6, i8* noundef %7, i64 noundef %8, i8* noundef %9, i64 noundef %10) #2
  store i32 %call, i32* %retval, align 4
  br label %return

sw.default:                                       ; preds = %entry
  %11 = load i32, i32* %status, align 4
  store i32 -135, i32* %retval, align 4
  br label %return

return:                                           ; preds = %sw.default, %sw.bb
  %12 = load i32, i32* %retval, align 4
  ret i32 %12
}

declare dso_local i32 @psa_verify_hash_builtin(%struct.psa_key_attributes_s* noundef, i8* noundef, i64 noundef, i32 noundef, i8* noundef, i64 noundef, i8* noundef, i64 noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @psa_driver_wrapper_get_key_buffer_size_from_key_data(%struct.psa_key_attributes_s* noundef %attributes, i8* noundef %data, i64 noundef %data_length, i64* noundef %key_buffer_size) #0 {
entry:
  %attributes.addr = alloca %struct.psa_key_attributes_s*, align 8
  %data.addr = alloca i8*, align 8
  %data_length.addr = alloca i64, align 8
  %key_buffer_size.addr = alloca i64*, align 8
  %location = alloca i32, align 4
  %key_type = alloca i16, align 2
  store %struct.psa_key_attributes_s* %attributes, %struct.psa_key_attributes_s** %attributes.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  store i64 %data_length, i64* %data_length.addr, align 8
  store i64* %key_buffer_size, i64** %key_buffer_size.addr, align 8
  %0 = load %struct.psa_key_attributes_s*, %struct.psa_key_attributes_s** %attributes.addr, align 8
  %core = getelementptr inbounds %struct.psa_key_attributes_s, %struct.psa_key_attributes_s* %0, i32 0, i32 0
  %lifetime = getelementptr inbounds %struct.psa_core_key_attributes_t, %struct.psa_core_key_attributes_t* %core, i32 0, i32 2
  %1 = load i32, i32* %lifetime, align 4
  %shr = lshr i32 %1, 8
  store i32 %shr, i32* %location, align 4
  %2 = load %struct.psa_key_attributes_s*, %struct.psa_key_attributes_s** %attributes.addr, align 8
  %core1 = getelementptr inbounds %struct.psa_key_attributes_s, %struct.psa_key_attributes_s* %2, i32 0, i32 0
  %type = getelementptr inbounds %struct.psa_core_key_attributes_t, %struct.psa_core_key_attributes_t* %core1, i32 0, i32 0
  %3 = load i16, i16* %type, align 8
  store i16 %3, i16* %key_type, align 2
  %4 = load i64*, i64** %key_buffer_size.addr, align 8
  store i64 0, i64* %4, align 8
  %5 = load i32, i32* %location, align 4
  switch i32 %5, label %sw.default [
  ]

sw.default:                                       ; preds = %entry
  %6 = load i16, i16* %key_type, align 2
  %7 = load i8*, i8** %data.addr, align 8
  %8 = load i64, i64* %data_length.addr, align 8
  ret i32 -135
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @psa_driver_wrapper_get_key_buffer_size(%struct.psa_key_attributes_s* noundef %attributes, i64* noundef %key_buffer_size) #0 {
entry:
  %attributes.addr = alloca %struct.psa_key_attributes_s*, align 8
  %key_buffer_size.addr = alloca i64*, align 8
  %location = alloca i32, align 4
  %key_type = alloca i16, align 2
  %key_bits = alloca i64, align 8
  store %struct.psa_key_attributes_s* %attributes, %struct.psa_key_attributes_s** %attributes.addr, align 8
  store i64* %key_buffer_size, i64** %key_buffer_size.addr, align 8
  %0 = load %struct.psa_key_attributes_s*, %struct.psa_key_attributes_s** %attributes.addr, align 8
  %core = getelementptr inbounds %struct.psa_key_attributes_s, %struct.psa_key_attributes_s* %0, i32 0, i32 0
  %lifetime = getelementptr inbounds %struct.psa_core_key_attributes_t, %struct.psa_core_key_attributes_t* %core, i32 0, i32 2
  %1 = load i32, i32* %lifetime, align 4
  %shr = lshr i32 %1, 8
  store i32 %shr, i32* %location, align 4
  %2 = load %struct.psa_key_attributes_s*, %struct.psa_key_attributes_s** %attributes.addr, align 8
  %core1 = getelementptr inbounds %struct.psa_key_attributes_s, %struct.psa_key_attributes_s* %2, i32 0, i32 0
  %type = getelementptr inbounds %struct.psa_core_key_attributes_t, %struct.psa_core_key_attributes_t* %core1, i32 0, i32 0
  %3 = load i16, i16* %type, align 8
  store i16 %3, i16* %key_type, align 2
  %4 = load %struct.psa_key_attributes_s*, %struct.psa_key_attributes_s** %attributes.addr, align 8
  %core2 = getelementptr inbounds %struct.psa_key_attributes_s, %struct.psa_key_attributes_s* %4, i32 0, i32 0
  %bits = getelementptr inbounds %struct.psa_core_key_attributes_t, %struct.psa_core_key_attributes_t* %core2, i32 0, i32 1
  %5 = load i16, i16* %bits, align 2
  %conv = zext i16 %5 to i64
  store i64 %conv, i64* %key_bits, align 8
  %6 = load i64*, i64** %key_buffer_size.addr, align 8
  store i64 0, i64* %6, align 8
  %7 = load i32, i32* %location, align 4
  switch i32 %7, label %sw.default [
  ]

sw.default:                                       ; preds = %entry
  %8 = load i16, i16* %key_type, align 2
  %9 = load i64, i64* %key_bits, align 8
  ret i32 -135
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @psa_driver_wrapper_generate_key(%struct.psa_key_attributes_s* noundef %attributes, i8* noundef %key_buffer, i64 noundef %key_buffer_size, i64* noundef %key_buffer_length) #0 {
entry:
  %attributes.addr = alloca %struct.psa_key_attributes_s*, align 8
  %key_buffer.addr = alloca i8*, align 8
  %key_buffer_size.addr = alloca i64, align 8
  %key_buffer_length.addr = alloca i64*, align 8
  %status = alloca i32, align 4
  %location = alloca i32, align 4
  store %struct.psa_key_attributes_s* %attributes, %struct.psa_key_attributes_s** %attributes.addr, align 8
  store i8* %key_buffer, i8** %key_buffer.addr, align 8
  store i64 %key_buffer_size, i64* %key_buffer_size.addr, align 8
  store i64* %key_buffer_length, i64** %key_buffer_length.addr, align 8
  store i32 -151, i32* %status, align 4
  %0 = load %struct.psa_key_attributes_s*, %struct.psa_key_attributes_s** %attributes.addr, align 8
  %core = getelementptr inbounds %struct.psa_key_attributes_s, %struct.psa_key_attributes_s* %0, i32 0, i32 0
  %lifetime = getelementptr inbounds %struct.psa_core_key_attributes_t, %struct.psa_core_key_attributes_t* %core, i32 0, i32 2
  %1 = load i32, i32* %lifetime, align 4
  %shr = lshr i32 %1, 8
  store i32 %shr, i32* %location, align 4
  %2 = load i32, i32* %location, align 4
  switch i32 %2, label %sw.default [
    i32 0, label %sw.bb
  ]

sw.bb:                                            ; preds = %entry
  %3 = load %struct.psa_key_attributes_s*, %struct.psa_key_attributes_s** %attributes.addr, align 8
  %4 = load i8*, i8** %key_buffer.addr, align 8
  %5 = load i64, i64* %key_buffer_size.addr, align 8
  %6 = load i64*, i64** %key_buffer_length.addr, align 8
  %call = call i32 @psa_generate_key_internal(%struct.psa_key_attributes_s* noundef %3, i8* noundef %4, i64 noundef %5, i64* noundef %6) #2
  store i32 %call, i32* %status, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  store i32 -135, i32* %status, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb
  %7 = load i32, i32* %status, align 4
  ret i32 %7
}

declare dso_local i32 @psa_generate_key_internal(%struct.psa_key_attributes_s* noundef, i8* noundef, i64 noundef, i64* noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @psa_driver_wrapper_import_key(%struct.psa_key_attributes_s* noundef %attributes, i8* noundef %data, i64 noundef %data_length, i8* noundef %key_buffer, i64 noundef %key_buffer_size, i64* noundef %key_buffer_length, i64* noundef %bits) #0 {
entry:
  %retval = alloca i32, align 4
  %attributes.addr = alloca %struct.psa_key_attributes_s*, align 8
  %data.addr = alloca i8*, align 8
  %data_length.addr = alloca i64, align 8
  %key_buffer.addr = alloca i8*, align 8
  %key_buffer_size.addr = alloca i64, align 8
  %key_buffer_length.addr = alloca i64*, align 8
  %bits.addr = alloca i64*, align 8
  %status = alloca i32, align 4
  %location = alloca i32, align 4
  store %struct.psa_key_attributes_s* %attributes, %struct.psa_key_attributes_s** %attributes.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  store i64 %data_length, i64* %data_length.addr, align 8
  store i8* %key_buffer, i8** %key_buffer.addr, align 8
  store i64 %key_buffer_size, i64* %key_buffer_size.addr, align 8
  store i64* %key_buffer_length, i64** %key_buffer_length.addr, align 8
  store i64* %bits, i64** %bits.addr, align 8
  store i32 -151, i32* %status, align 4
  %0 = load %struct.psa_key_attributes_s*, %struct.psa_key_attributes_s** %attributes.addr, align 8
  %call = call i32 @psa_get_key_lifetime(%struct.psa_key_attributes_s* noundef %0) #2
  %shr = lshr i32 %call, 8
  store i32 %shr, i32* %location, align 4
  %1 = load i32, i32* %location, align 4
  switch i32 %1, label %sw.default [
    i32 0, label %sw.bb
  ]

sw.bb:                                            ; preds = %entry
  %2 = load %struct.psa_key_attributes_s*, %struct.psa_key_attributes_s** %attributes.addr, align 8
  %3 = load i8*, i8** %data.addr, align 8
  %4 = load i64, i64* %data_length.addr, align 8
  %5 = load i8*, i8** %key_buffer.addr, align 8
  %6 = load i64, i64* %key_buffer_size.addr, align 8
  %7 = load i64*, i64** %key_buffer_length.addr, align 8
  %8 = load i64*, i64** %bits.addr, align 8
  %call1 = call i32 @psa_import_key_into_slot(%struct.psa_key_attributes_s* noundef %2, i8* noundef %3, i64 noundef %4, i8* noundef %5, i64 noundef %6, i64* noundef %7, i64* noundef %8) #2
  store i32 %call1, i32* %retval, align 4
  br label %return

sw.default:                                       ; preds = %entry
  %9 = load i32, i32* %status, align 4
  store i32 -135, i32* %retval, align 4
  br label %return

return:                                           ; preds = %sw.default, %sw.bb
  %10 = load i32, i32* %retval, align 4
  ret i32 %10
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @psa_get_key_lifetime(%struct.psa_key_attributes_s* noundef %attributes) #0 {
entry:
  %attributes.addr = alloca %struct.psa_key_attributes_s*, align 8
  store %struct.psa_key_attributes_s* %attributes, %struct.psa_key_attributes_s** %attributes.addr, align 8
  %0 = load %struct.psa_key_attributes_s*, %struct.psa_key_attributes_s** %attributes.addr, align 8
  %core = getelementptr inbounds %struct.psa_key_attributes_s, %struct.psa_key_attributes_s* %0, i32 0, i32 0
  %lifetime = getelementptr inbounds %struct.psa_core_key_attributes_t, %struct.psa_core_key_attributes_t* %core, i32 0, i32 2
  %1 = load i32, i32* %lifetime, align 4
  ret i32 %1
}

declare dso_local i32 @psa_import_key_into_slot(%struct.psa_key_attributes_s* noundef, i8* noundef, i64 noundef, i8* noundef, i64 noundef, i64* noundef, i64* noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @psa_driver_wrapper_export_key(%struct.psa_key_attributes_s* noundef %attributes, i8* noundef %key_buffer, i64 noundef %key_buffer_size, i8* noundef %data, i64 noundef %data_size, i64* noundef %data_length) #0 {
entry:
  %retval = alloca i32, align 4
  %attributes.addr = alloca %struct.psa_key_attributes_s*, align 8
  %key_buffer.addr = alloca i8*, align 8
  %key_buffer_size.addr = alloca i64, align 8
  %data.addr = alloca i8*, align 8
  %data_size.addr = alloca i64, align 8
  %data_length.addr = alloca i64*, align 8
  %status = alloca i32, align 4
  %location = alloca i32, align 4
  store %struct.psa_key_attributes_s* %attributes, %struct.psa_key_attributes_s** %attributes.addr, align 8
  store i8* %key_buffer, i8** %key_buffer.addr, align 8
  store i64 %key_buffer_size, i64* %key_buffer_size.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  store i64 %data_size, i64* %data_size.addr, align 8
  store i64* %data_length, i64** %data_length.addr, align 8
  store i32 -135, i32* %status, align 4
  %0 = load %struct.psa_key_attributes_s*, %struct.psa_key_attributes_s** %attributes.addr, align 8
  %call = call i32 @psa_get_key_lifetime(%struct.psa_key_attributes_s* noundef %0) #2
  %shr = lshr i32 %call, 8
  store i32 %shr, i32* %location, align 4
  %1 = load i32, i32* %location, align 4
  switch i32 %1, label %sw.default [
    i32 0, label %sw.bb
  ]

sw.bb:                                            ; preds = %entry
  %2 = load %struct.psa_key_attributes_s*, %struct.psa_key_attributes_s** %attributes.addr, align 8
  %3 = load i8*, i8** %key_buffer.addr, align 8
  %4 = load i64, i64* %key_buffer_size.addr, align 8
  %5 = load i8*, i8** %data.addr, align 8
  %6 = load i64, i64* %data_size.addr, align 8
  %7 = load i64*, i64** %data_length.addr, align 8
  %call1 = call i32 @psa_export_key_internal(%struct.psa_key_attributes_s* noundef %2, i8* noundef %3, i64 noundef %4, i8* noundef %5, i64 noundef %6, i64* noundef %7) #2
  store i32 %call1, i32* %retval, align 4
  br label %return

sw.default:                                       ; preds = %entry
  %8 = load i32, i32* %status, align 4
  store i32 %8, i32* %retval, align 4
  br label %return

return:                                           ; preds = %sw.default, %sw.bb
  %9 = load i32, i32* %retval, align 4
  ret i32 %9
}

declare dso_local i32 @psa_export_key_internal(%struct.psa_key_attributes_s* noundef, i8* noundef, i64 noundef, i8* noundef, i64 noundef, i64* noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @psa_driver_wrapper_export_public_key(%struct.psa_key_attributes_s* noundef %attributes, i8* noundef %key_buffer, i64 noundef %key_buffer_size, i8* noundef %data, i64 noundef %data_size, i64* noundef %data_length) #0 {
entry:
  %retval = alloca i32, align 4
  %attributes.addr = alloca %struct.psa_key_attributes_s*, align 8
  %key_buffer.addr = alloca i8*, align 8
  %key_buffer_size.addr = alloca i64, align 8
  %data.addr = alloca i8*, align 8
  %data_size.addr = alloca i64, align 8
  %data_length.addr = alloca i64*, align 8
  %status = alloca i32, align 4
  %location = alloca i32, align 4
  store %struct.psa_key_attributes_s* %attributes, %struct.psa_key_attributes_s** %attributes.addr, align 8
  store i8* %key_buffer, i8** %key_buffer.addr, align 8
  store i64 %key_buffer_size, i64* %key_buffer_size.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  store i64 %data_size, i64* %data_size.addr, align 8
  store i64* %data_length, i64** %data_length.addr, align 8
  store i32 -135, i32* %status, align 4
  %0 = load %struct.psa_key_attributes_s*, %struct.psa_key_attributes_s** %attributes.addr, align 8
  %call = call i32 @psa_get_key_lifetime(%struct.psa_key_attributes_s* noundef %0) #2
  %shr = lshr i32 %call, 8
  store i32 %shr, i32* %location, align 4
  %1 = load i32, i32* %location, align 4
  switch i32 %1, label %sw.default [
    i32 0, label %sw.bb
  ]

sw.bb:                                            ; preds = %entry
  %2 = load %struct.psa_key_attributes_s*, %struct.psa_key_attributes_s** %attributes.addr, align 8
  %3 = load i8*, i8** %key_buffer.addr, align 8
  %4 = load i64, i64* %key_buffer_size.addr, align 8
  %5 = load i8*, i8** %data.addr, align 8
  %6 = load i64, i64* %data_size.addr, align 8
  %7 = load i64*, i64** %data_length.addr, align 8
  %call1 = call i32 @psa_export_public_key_internal(%struct.psa_key_attributes_s* noundef %2, i8* noundef %3, i64 noundef %4, i8* noundef %5, i64 noundef %6, i64* noundef %7) #2
  store i32 %call1, i32* %retval, align 4
  br label %return

sw.default:                                       ; preds = %entry
  %8 = load i32, i32* %status, align 4
  store i32 %8, i32* %retval, align 4
  br label %return

return:                                           ; preds = %sw.default, %sw.bb
  %9 = load i32, i32* %retval, align 4
  ret i32 %9
}

declare dso_local i32 @psa_export_public_key_internal(%struct.psa_key_attributes_s* noundef, i8* noundef, i64 noundef, i8* noundef, i64 noundef, i64* noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @psa_driver_wrapper_get_builtin_key(i64 noundef %slot_number, %struct.psa_key_attributes_s* noundef %attributes, i8* noundef %key_buffer, i64 noundef %key_buffer_size, i64* noundef %key_buffer_length) #0 {
entry:
  %slot_number.addr = alloca i64, align 8
  %attributes.addr = alloca %struct.psa_key_attributes_s*, align 8
  %key_buffer.addr = alloca i8*, align 8
  %key_buffer_size.addr = alloca i64, align 8
  %key_buffer_length.addr = alloca i64*, align 8
  %location = alloca i32, align 4
  store i64 %slot_number, i64* %slot_number.addr, align 8
  store %struct.psa_key_attributes_s* %attributes, %struct.psa_key_attributes_s** %attributes.addr, align 8
  store i8* %key_buffer, i8** %key_buffer.addr, align 8
  store i64 %key_buffer_size, i64* %key_buffer_size.addr, align 8
  store i64* %key_buffer_length, i64** %key_buffer_length.addr, align 8
  %0 = load %struct.psa_key_attributes_s*, %struct.psa_key_attributes_s** %attributes.addr, align 8
  %core = getelementptr inbounds %struct.psa_key_attributes_s, %struct.psa_key_attributes_s* %0, i32 0, i32 0
  %lifetime = getelementptr inbounds %struct.psa_core_key_attributes_t, %struct.psa_core_key_attributes_t* %core, i32 0, i32 2
  %1 = load i32, i32* %lifetime, align 4
  %shr = lshr i32 %1, 8
  store i32 %shr, i32* %location, align 4
  %2 = load i32, i32* %location, align 4
  switch i32 %2, label %sw.default [
  ]

sw.default:                                       ; preds = %entry
  %3 = load i64, i64* %slot_number.addr, align 8
  %4 = load i8*, i8** %key_buffer.addr, align 8
  %5 = load i64, i64* %key_buffer_size.addr, align 8
  %6 = load i64*, i64** %key_buffer_length.addr, align 8
  ret i32 -140
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @psa_driver_wrapper_copy_key(%struct.psa_key_attributes_s* noundef %attributes, i8* noundef %source_key, i64 noundef %source_key_length, i8* noundef %target_key_buffer, i64 noundef %target_key_buffer_size, i64* noundef %target_key_buffer_length) #0 {
entry:
  %attributes.addr = alloca %struct.psa_key_attributes_s*, align 8
  %source_key.addr = alloca i8*, align 8
  %source_key_length.addr = alloca i64, align 8
  %target_key_buffer.addr = alloca i8*, align 8
  %target_key_buffer_size.addr = alloca i64, align 8
  %target_key_buffer_length.addr = alloca i64*, align 8
  %status = alloca i32, align 4
  %location = alloca i32, align 4
  store %struct.psa_key_attributes_s* %attributes, %struct.psa_key_attributes_s** %attributes.addr, align 8
  store i8* %source_key, i8** %source_key.addr, align 8
  store i64 %source_key_length, i64* %source_key_length.addr, align 8
  store i8* %target_key_buffer, i8** %target_key_buffer.addr, align 8
  store i64 %target_key_buffer_size, i64* %target_key_buffer_size.addr, align 8
  store i64* %target_key_buffer_length, i64** %target_key_buffer_length.addr, align 8
  store i32 -151, i32* %status, align 4
  %0 = load %struct.psa_key_attributes_s*, %struct.psa_key_attributes_s** %attributes.addr, align 8
  %core = getelementptr inbounds %struct.psa_key_attributes_s, %struct.psa_key_attributes_s* %0, i32 0, i32 0
  %lifetime = getelementptr inbounds %struct.psa_core_key_attributes_t, %struct.psa_core_key_attributes_t* %core, i32 0, i32 2
  %1 = load i32, i32* %lifetime, align 4
  %shr = lshr i32 %1, 8
  store i32 %shr, i32* %location, align 4
  %2 = load i32, i32* %location, align 4
  switch i32 %2, label %sw.default [
  ]

sw.default:                                       ; preds = %entry
  %3 = load i8*, i8** %source_key.addr, align 8
  %4 = load i64, i64* %source_key_length.addr, align 8
  %5 = load i8*, i8** %target_key_buffer.addr, align 8
  %6 = load i64, i64* %target_key_buffer_size.addr, align 8
  %7 = load i64*, i64** %target_key_buffer_length.addr, align 8
  store i32 -135, i32* %status, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default
  %8 = load i32, i32* %status, align 4
  ret i32 %8
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @psa_driver_wrapper_cipher_encrypt(%struct.psa_key_attributes_s* noundef %attributes, i8* noundef %key_buffer, i64 noundef %key_buffer_size, i32 noundef %alg, i8* noundef %iv, i64 noundef %iv_length, i8* noundef %input, i64 noundef %input_length, i8* noundef %output, i64 noundef %output_size, i64* noundef %output_length) #0 {
entry:
  %retval = alloca i32, align 4
  %attributes.addr = alloca %struct.psa_key_attributes_s*, align 8
  %key_buffer.addr = alloca i8*, align 8
  %key_buffer_size.addr = alloca i64, align 8
  %alg.addr = alloca i32, align 4
  %iv.addr = alloca i8*, align 8
  %iv_length.addr = alloca i64, align 8
  %input.addr = alloca i8*, align 8
  %input_length.addr = alloca i64, align 8
  %output.addr = alloca i8*, align 8
  %output_size.addr = alloca i64, align 8
  %output_length.addr = alloca i64*, align 8
  %status = alloca i32, align 4
  %location = alloca i32, align 4
  store %struct.psa_key_attributes_s* %attributes, %struct.psa_key_attributes_s** %attributes.addr, align 8
  store i8* %key_buffer, i8** %key_buffer.addr, align 8
  store i64 %key_buffer_size, i64* %key_buffer_size.addr, align 8
  store i32 %alg, i32* %alg.addr, align 4
  store i8* %iv, i8** %iv.addr, align 8
  store i64 %iv_length, i64* %iv_length.addr, align 8
  store i8* %input, i8** %input.addr, align 8
  store i64 %input_length, i64* %input_length.addr, align 8
  store i8* %output, i8** %output.addr, align 8
  store i64 %output_size, i64* %output_size.addr, align 8
  store i64* %output_length, i64** %output_length.addr, align 8
  store i32 -151, i32* %status, align 4
  %0 = load %struct.psa_key_attributes_s*, %struct.psa_key_attributes_s** %attributes.addr, align 8
  %core = getelementptr inbounds %struct.psa_key_attributes_s, %struct.psa_key_attributes_s* %0, i32 0, i32 0
  %lifetime = getelementptr inbounds %struct.psa_core_key_attributes_t, %struct.psa_core_key_attributes_t* %core, i32 0, i32 2
  %1 = load i32, i32* %lifetime, align 4
  %shr = lshr i32 %1, 8
  store i32 %shr, i32* %location, align 4
  %2 = load i32, i32* %location, align 4
  switch i32 %2, label %sw.default [
    i32 0, label %sw.bb
  ]

sw.bb:                                            ; preds = %entry
  %3 = load %struct.psa_key_attributes_s*, %struct.psa_key_attributes_s** %attributes.addr, align 8
  %4 = load i8*, i8** %key_buffer.addr, align 8
  %5 = load i64, i64* %key_buffer_size.addr, align 8
  %6 = load i32, i32* %alg.addr, align 4
  %7 = load i8*, i8** %iv.addr, align 8
  %8 = load i64, i64* %iv_length.addr, align 8
  %9 = load i8*, i8** %input.addr, align 8
  %10 = load i64, i64* %input_length.addr, align 8
  %11 = load i8*, i8** %output.addr, align 8
  %12 = load i64, i64* %output_size.addr, align 8
  %13 = load i64*, i64** %output_length.addr, align 8
  %call = call i32 @mbedtls_psa_cipher_encrypt(%struct.psa_key_attributes_s* noundef %3, i8* noundef %4, i64 noundef %5, i32 noundef %6, i8* noundef %7, i64 noundef %8, i8* noundef %9, i64 noundef %10, i8* noundef %11, i64 noundef %12, i64* noundef %13) #2
  store i32 %call, i32* %retval, align 4
  br label %return

sw.default:                                       ; preds = %entry
  %14 = load i32, i32* %status, align 4
  %15 = load i8*, i8** %key_buffer.addr, align 8
  %16 = load i64, i64* %key_buffer_size.addr, align 8
  %17 = load i32, i32* %alg.addr, align 4
  %18 = load i8*, i8** %iv.addr, align 8
  %19 = load i64, i64* %iv_length.addr, align 8
  %20 = load i8*, i8** %input.addr, align 8
  %21 = load i64, i64* %input_length.addr, align 8
  %22 = load i8*, i8** %output.addr, align 8
  %23 = load i64, i64* %output_size.addr, align 8
  %24 = load i64*, i64** %output_length.addr, align 8
  store i32 -135, i32* %retval, align 4
  br label %return

return:                                           ; preds = %sw.default, %sw.bb
  %25 = load i32, i32* %retval, align 4
  ret i32 %25
}

declare dso_local i32 @mbedtls_psa_cipher_encrypt(%struct.psa_key_attributes_s* noundef, i8* noundef, i64 noundef, i32 noundef, i8* noundef, i64 noundef, i8* noundef, i64 noundef, i8* noundef, i64 noundef, i64* noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @psa_driver_wrapper_cipher_decrypt(%struct.psa_key_attributes_s* noundef %attributes, i8* noundef %key_buffer, i64 noundef %key_buffer_size, i32 noundef %alg, i8* noundef %input, i64 noundef %input_length, i8* noundef %output, i64 noundef %output_size, i64* noundef %output_length) #0 {
entry:
  %retval = alloca i32, align 4
  %attributes.addr = alloca %struct.psa_key_attributes_s*, align 8
  %key_buffer.addr = alloca i8*, align 8
  %key_buffer_size.addr = alloca i64, align 8
  %alg.addr = alloca i32, align 4
  %input.addr = alloca i8*, align 8
  %input_length.addr = alloca i64, align 8
  %output.addr = alloca i8*, align 8
  %output_size.addr = alloca i64, align 8
  %output_length.addr = alloca i64*, align 8
  %status = alloca i32, align 4
  %location = alloca i32, align 4
  store %struct.psa_key_attributes_s* %attributes, %struct.psa_key_attributes_s** %attributes.addr, align 8
  store i8* %key_buffer, i8** %key_buffer.addr, align 8
  store i64 %key_buffer_size, i64* %key_buffer_size.addr, align 8
  store i32 %alg, i32* %alg.addr, align 4
  store i8* %input, i8** %input.addr, align 8
  store i64 %input_length, i64* %input_length.addr, align 8
  store i8* %output, i8** %output.addr, align 8
  store i64 %output_size, i64* %output_size.addr, align 8
  store i64* %output_length, i64** %output_length.addr, align 8
  store i32 -151, i32* %status, align 4
  %0 = load %struct.psa_key_attributes_s*, %struct.psa_key_attributes_s** %attributes.addr, align 8
  %core = getelementptr inbounds %struct.psa_key_attributes_s, %struct.psa_key_attributes_s* %0, i32 0, i32 0
  %lifetime = getelementptr inbounds %struct.psa_core_key_attributes_t, %struct.psa_core_key_attributes_t* %core, i32 0, i32 2
  %1 = load i32, i32* %lifetime, align 4
  %shr = lshr i32 %1, 8
  store i32 %shr, i32* %location, align 4
  %2 = load i32, i32* %location, align 4
  switch i32 %2, label %sw.default [
    i32 0, label %sw.bb
  ]

sw.bb:                                            ; preds = %entry
  %3 = load %struct.psa_key_attributes_s*, %struct.psa_key_attributes_s** %attributes.addr, align 8
  %4 = load i8*, i8** %key_buffer.addr, align 8
  %5 = load i64, i64* %key_buffer_size.addr, align 8
  %6 = load i32, i32* %alg.addr, align 4
  %7 = load i8*, i8** %input.addr, align 8
  %8 = load i64, i64* %input_length.addr, align 8
  %9 = load i8*, i8** %output.addr, align 8
  %10 = load i64, i64* %output_size.addr, align 8
  %11 = load i64*, i64** %output_length.addr, align 8
  %call = call i32 @mbedtls_psa_cipher_decrypt(%struct.psa_key_attributes_s* noundef %3, i8* noundef %4, i64 noundef %5, i32 noundef %6, i8* noundef %7, i64 noundef %8, i8* noundef %9, i64 noundef %10, i64* noundef %11) #2
  store i32 %call, i32* %retval, align 4
  br label %return

sw.default:                                       ; preds = %entry
  %12 = load i32, i32* %status, align 4
  %13 = load i8*, i8** %key_buffer.addr, align 8
  %14 = load i64, i64* %key_buffer_size.addr, align 8
  %15 = load i32, i32* %alg.addr, align 4
  %16 = load i8*, i8** %input.addr, align 8
  %17 = load i64, i64* %input_length.addr, align 8
  %18 = load i8*, i8** %output.addr, align 8
  %19 = load i64, i64* %output_size.addr, align 8
  %20 = load i64*, i64** %output_length.addr, align 8
  store i32 -135, i32* %retval, align 4
  br label %return

return:                                           ; preds = %sw.default, %sw.bb
  %21 = load i32, i32* %retval, align 4
  ret i32 %21
}

declare dso_local i32 @mbedtls_psa_cipher_decrypt(%struct.psa_key_attributes_s* noundef, i8* noundef, i64 noundef, i32 noundef, i8* noundef, i64 noundef, i8* noundef, i64 noundef, i64* noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @psa_driver_wrapper_cipher_encrypt_setup(%struct.psa_cipher_operation_s* noundef %operation, %struct.psa_key_attributes_s* noundef %attributes, i8* noundef %key_buffer, i64 noundef %key_buffer_size, i32 noundef %alg) #0 {
entry:
  %retval = alloca i32, align 4
  %operation.addr = alloca %struct.psa_cipher_operation_s*, align 8
  %attributes.addr = alloca %struct.psa_key_attributes_s*, align 8
  %key_buffer.addr = alloca i8*, align 8
  %key_buffer_size.addr = alloca i64, align 8
  %alg.addr = alloca i32, align 4
  %status = alloca i32, align 4
  %location = alloca i32, align 4
  store %struct.psa_cipher_operation_s* %operation, %struct.psa_cipher_operation_s** %operation.addr, align 8
  store %struct.psa_key_attributes_s* %attributes, %struct.psa_key_attributes_s** %attributes.addr, align 8
  store i8* %key_buffer, i8** %key_buffer.addr, align 8
  store i64 %key_buffer_size, i64* %key_buffer_size.addr, align 8
  store i32 %alg, i32* %alg.addr, align 4
  store i32 -151, i32* %status, align 4
  %0 = load %struct.psa_key_attributes_s*, %struct.psa_key_attributes_s** %attributes.addr, align 8
  %core = getelementptr inbounds %struct.psa_key_attributes_s, %struct.psa_key_attributes_s* %0, i32 0, i32 0
  %lifetime = getelementptr inbounds %struct.psa_core_key_attributes_t, %struct.psa_core_key_attributes_t* %core, i32 0, i32 2
  %1 = load i32, i32* %lifetime, align 4
  %shr = lshr i32 %1, 8
  store i32 %shr, i32* %location, align 4
  %2 = load i32, i32* %location, align 4
  switch i32 %2, label %sw.default [
    i32 0, label %sw.bb
  ]

sw.bb:                                            ; preds = %entry
  %3 = load %struct.psa_cipher_operation_s*, %struct.psa_cipher_operation_s** %operation.addr, align 8
  %ctx = getelementptr inbounds %struct.psa_cipher_operation_s, %struct.psa_cipher_operation_s* %3, i32 0, i32 3
  %mbedtls_ctx = bitcast %union.psa_driver_cipher_context_t* %ctx to %struct.mbedtls_psa_cipher_operation_t*
  %4 = load %struct.psa_key_attributes_s*, %struct.psa_key_attributes_s** %attributes.addr, align 8
  %5 = load i8*, i8** %key_buffer.addr, align 8
  %6 = load i64, i64* %key_buffer_size.addr, align 8
  %7 = load i32, i32* %alg.addr, align 4
  %call = call i32 @mbedtls_psa_cipher_encrypt_setup(%struct.mbedtls_psa_cipher_operation_t* noundef %mbedtls_ctx, %struct.psa_key_attributes_s* noundef %4, i8* noundef %5, i64 noundef %6, i32 noundef %7) #2
  store i32 %call, i32* %status, align 4
  %8 = load i32, i32* %status, align 4
  %cmp = icmp eq i32 %8, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb
  %9 = load %struct.psa_cipher_operation_s*, %struct.psa_cipher_operation_s** %operation.addr, align 8
  %id = getelementptr inbounds %struct.psa_cipher_operation_s, %struct.psa_cipher_operation_s* %9, i32 0, i32 0
  store i32 1, i32* %id, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.bb
  %10 = load i32, i32* %status, align 4
  %cmp1 = icmp ne i32 %10, -134
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  %11 = load i32, i32* %status, align 4
  store i32 %11, i32* %retval, align 4
  br label %return

if.end3:                                          ; preds = %if.end
  store i32 -134, i32* %retval, align 4
  br label %return

sw.default:                                       ; preds = %entry
  %12 = load i32, i32* %status, align 4
  %13 = load %struct.psa_cipher_operation_s*, %struct.psa_cipher_operation_s** %operation.addr, align 8
  %14 = load i8*, i8** %key_buffer.addr, align 8
  %15 = load i64, i64* %key_buffer_size.addr, align 8
  %16 = load i32, i32* %alg.addr, align 4
  store i32 -135, i32* %retval, align 4
  br label %return

return:                                           ; preds = %sw.default, %if.end3, %if.then2
  %17 = load i32, i32* %retval, align 4
  ret i32 %17
}

declare dso_local i32 @mbedtls_psa_cipher_encrypt_setup(%struct.mbedtls_psa_cipher_operation_t* noundef, %struct.psa_key_attributes_s* noundef, i8* noundef, i64 noundef, i32 noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @psa_driver_wrapper_cipher_decrypt_setup(%struct.psa_cipher_operation_s* noundef %operation, %struct.psa_key_attributes_s* noundef %attributes, i8* noundef %key_buffer, i64 noundef %key_buffer_size, i32 noundef %alg) #0 {
entry:
  %retval = alloca i32, align 4
  %operation.addr = alloca %struct.psa_cipher_operation_s*, align 8
  %attributes.addr = alloca %struct.psa_key_attributes_s*, align 8
  %key_buffer.addr = alloca i8*, align 8
  %key_buffer_size.addr = alloca i64, align 8
  %alg.addr = alloca i32, align 4
  %status = alloca i32, align 4
  %location = alloca i32, align 4
  store %struct.psa_cipher_operation_s* %operation, %struct.psa_cipher_operation_s** %operation.addr, align 8
  store %struct.psa_key_attributes_s* %attributes, %struct.psa_key_attributes_s** %attributes.addr, align 8
  store i8* %key_buffer, i8** %key_buffer.addr, align 8
  store i64 %key_buffer_size, i64* %key_buffer_size.addr, align 8
  store i32 %alg, i32* %alg.addr, align 4
  store i32 -135, i32* %status, align 4
  %0 = load %struct.psa_key_attributes_s*, %struct.psa_key_attributes_s** %attributes.addr, align 8
  %core = getelementptr inbounds %struct.psa_key_attributes_s, %struct.psa_key_attributes_s* %0, i32 0, i32 0
  %lifetime = getelementptr inbounds %struct.psa_core_key_attributes_t, %struct.psa_core_key_attributes_t* %core, i32 0, i32 2
  %1 = load i32, i32* %lifetime, align 4
  %shr = lshr i32 %1, 8
  store i32 %shr, i32* %location, align 4
  %2 = load i32, i32* %location, align 4
  switch i32 %2, label %sw.default [
    i32 0, label %sw.bb
  ]

sw.bb:                                            ; preds = %entry
  %3 = load %struct.psa_cipher_operation_s*, %struct.psa_cipher_operation_s** %operation.addr, align 8
  %ctx = getelementptr inbounds %struct.psa_cipher_operation_s, %struct.psa_cipher_operation_s* %3, i32 0, i32 3
  %mbedtls_ctx = bitcast %union.psa_driver_cipher_context_t* %ctx to %struct.mbedtls_psa_cipher_operation_t*
  %4 = load %struct.psa_key_attributes_s*, %struct.psa_key_attributes_s** %attributes.addr, align 8
  %5 = load i8*, i8** %key_buffer.addr, align 8
  %6 = load i64, i64* %key_buffer_size.addr, align 8
  %7 = load i32, i32* %alg.addr, align 4
  %call = call i32 @mbedtls_psa_cipher_decrypt_setup(%struct.mbedtls_psa_cipher_operation_t* noundef %mbedtls_ctx, %struct.psa_key_attributes_s* noundef %4, i8* noundef %5, i64 noundef %6, i32 noundef %7) #2
  store i32 %call, i32* %status, align 4
  %8 = load i32, i32* %status, align 4
  %cmp = icmp eq i32 %8, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb
  %9 = load %struct.psa_cipher_operation_s*, %struct.psa_cipher_operation_s** %operation.addr, align 8
  %id = getelementptr inbounds %struct.psa_cipher_operation_s, %struct.psa_cipher_operation_s* %9, i32 0, i32 0
  store i32 1, i32* %id, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.bb
  %10 = load i32, i32* %status, align 4
  store i32 %10, i32* %retval, align 4
  br label %return

sw.default:                                       ; preds = %entry
  %11 = load i32, i32* %status, align 4
  %12 = load %struct.psa_cipher_operation_s*, %struct.psa_cipher_operation_s** %operation.addr, align 8
  %13 = load i8*, i8** %key_buffer.addr, align 8
  %14 = load i64, i64* %key_buffer_size.addr, align 8
  %15 = load i32, i32* %alg.addr, align 4
  store i32 -135, i32* %retval, align 4
  br label %return

return:                                           ; preds = %sw.default, %if.end
  %16 = load i32, i32* %retval, align 4
  ret i32 %16
}

declare dso_local i32 @mbedtls_psa_cipher_decrypt_setup(%struct.mbedtls_psa_cipher_operation_t* noundef, %struct.psa_key_attributes_s* noundef, i8* noundef, i64 noundef, i32 noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @psa_driver_wrapper_cipher_set_iv(%struct.psa_cipher_operation_s* noundef %operation, i8* noundef %iv, i64 noundef %iv_length) #0 {
entry:
  %retval = alloca i32, align 4
  %operation.addr = alloca %struct.psa_cipher_operation_s*, align 8
  %iv.addr = alloca i8*, align 8
  %iv_length.addr = alloca i64, align 8
  store %struct.psa_cipher_operation_s* %operation, %struct.psa_cipher_operation_s** %operation.addr, align 8
  store i8* %iv, i8** %iv.addr, align 8
  store i64 %iv_length, i64* %iv_length.addr, align 8
  %0 = load %struct.psa_cipher_operation_s*, %struct.psa_cipher_operation_s** %operation.addr, align 8
  %id = getelementptr inbounds %struct.psa_cipher_operation_s, %struct.psa_cipher_operation_s* %0, i32 0, i32 0
  %1 = load i32, i32* %id, align 8
  switch i32 %1, label %sw.epilog [
    i32 1, label %sw.bb
  ]

sw.bb:                                            ; preds = %entry
  %2 = load %struct.psa_cipher_operation_s*, %struct.psa_cipher_operation_s** %operation.addr, align 8
  %ctx = getelementptr inbounds %struct.psa_cipher_operation_s, %struct.psa_cipher_operation_s* %2, i32 0, i32 3
  %mbedtls_ctx = bitcast %union.psa_driver_cipher_context_t* %ctx to %struct.mbedtls_psa_cipher_operation_t*
  %3 = load i8*, i8** %iv.addr, align 8
  %4 = load i64, i64* %iv_length.addr, align 8
  %call = call i32 @mbedtls_psa_cipher_set_iv(%struct.mbedtls_psa_cipher_operation_t* noundef %mbedtls_ctx, i8* noundef %3, i64 noundef %4) #2
  store i32 %call, i32* %retval, align 4
  br label %return

sw.epilog:                                        ; preds = %entry
  %5 = load i8*, i8** %iv.addr, align 8
  %6 = load i64, i64* %iv_length.addr, align 8
  store i32 -135, i32* %retval, align 4
  br label %return

return:                                           ; preds = %sw.epilog, %sw.bb
  %7 = load i32, i32* %retval, align 4
  ret i32 %7
}

declare dso_local i32 @mbedtls_psa_cipher_set_iv(%struct.mbedtls_psa_cipher_operation_t* noundef, i8* noundef, i64 noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @psa_driver_wrapper_cipher_update(%struct.psa_cipher_operation_s* noundef %operation, i8* noundef %input, i64 noundef %input_length, i8* noundef %output, i64 noundef %output_size, i64* noundef %output_length) #0 {
entry:
  %retval = alloca i32, align 4
  %operation.addr = alloca %struct.psa_cipher_operation_s*, align 8
  %input.addr = alloca i8*, align 8
  %input_length.addr = alloca i64, align 8
  %output.addr = alloca i8*, align 8
  %output_size.addr = alloca i64, align 8
  %output_length.addr = alloca i64*, align 8
  store %struct.psa_cipher_operation_s* %operation, %struct.psa_cipher_operation_s** %operation.addr, align 8
  store i8* %input, i8** %input.addr, align 8
  store i64 %input_length, i64* %input_length.addr, align 8
  store i8* %output, i8** %output.addr, align 8
  store i64 %output_size, i64* %output_size.addr, align 8
  store i64* %output_length, i64** %output_length.addr, align 8
  %0 = load %struct.psa_cipher_operation_s*, %struct.psa_cipher_operation_s** %operation.addr, align 8
  %id = getelementptr inbounds %struct.psa_cipher_operation_s, %struct.psa_cipher_operation_s* %0, i32 0, i32 0
  %1 = load i32, i32* %id, align 8
  switch i32 %1, label %sw.epilog [
    i32 1, label %sw.bb
  ]

sw.bb:                                            ; preds = %entry
  %2 = load %struct.psa_cipher_operation_s*, %struct.psa_cipher_operation_s** %operation.addr, align 8
  %ctx = getelementptr inbounds %struct.psa_cipher_operation_s, %struct.psa_cipher_operation_s* %2, i32 0, i32 3
  %mbedtls_ctx = bitcast %union.psa_driver_cipher_context_t* %ctx to %struct.mbedtls_psa_cipher_operation_t*
  %3 = load i8*, i8** %input.addr, align 8
  %4 = load i64, i64* %input_length.addr, align 8
  %5 = load i8*, i8** %output.addr, align 8
  %6 = load i64, i64* %output_size.addr, align 8
  %7 = load i64*, i64** %output_length.addr, align 8
  %call = call i32 @mbedtls_psa_cipher_update(%struct.mbedtls_psa_cipher_operation_t* noundef %mbedtls_ctx, i8* noundef %3, i64 noundef %4, i8* noundef %5, i64 noundef %6, i64* noundef %7) #2
  store i32 %call, i32* %retval, align 4
  br label %return

sw.epilog:                                        ; preds = %entry
  %8 = load i8*, i8** %input.addr, align 8
  %9 = load i64, i64* %input_length.addr, align 8
  %10 = load i8*, i8** %output.addr, align 8
  %11 = load i64, i64* %output_size.addr, align 8
  %12 = load i64*, i64** %output_length.addr, align 8
  store i32 -135, i32* %retval, align 4
  br label %return

return:                                           ; preds = %sw.epilog, %sw.bb
  %13 = load i32, i32* %retval, align 4
  ret i32 %13
}

declare dso_local i32 @mbedtls_psa_cipher_update(%struct.mbedtls_psa_cipher_operation_t* noundef, i8* noundef, i64 noundef, i8* noundef, i64 noundef, i64* noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @psa_driver_wrapper_cipher_finish(%struct.psa_cipher_operation_s* noundef %operation, i8* noundef %output, i64 noundef %output_size, i64* noundef %output_length) #0 {
entry:
  %retval = alloca i32, align 4
  %operation.addr = alloca %struct.psa_cipher_operation_s*, align 8
  %output.addr = alloca i8*, align 8
  %output_size.addr = alloca i64, align 8
  %output_length.addr = alloca i64*, align 8
  store %struct.psa_cipher_operation_s* %operation, %struct.psa_cipher_operation_s** %operation.addr, align 8
  store i8* %output, i8** %output.addr, align 8
  store i64 %output_size, i64* %output_size.addr, align 8
  store i64* %output_length, i64** %output_length.addr, align 8
  %0 = load %struct.psa_cipher_operation_s*, %struct.psa_cipher_operation_s** %operation.addr, align 8
  %id = getelementptr inbounds %struct.psa_cipher_operation_s, %struct.psa_cipher_operation_s* %0, i32 0, i32 0
  %1 = load i32, i32* %id, align 8
  switch i32 %1, label %sw.epilog [
    i32 1, label %sw.bb
  ]

sw.bb:                                            ; preds = %entry
  %2 = load %struct.psa_cipher_operation_s*, %struct.psa_cipher_operation_s** %operation.addr, align 8
  %ctx = getelementptr inbounds %struct.psa_cipher_operation_s, %struct.psa_cipher_operation_s* %2, i32 0, i32 3
  %mbedtls_ctx = bitcast %union.psa_driver_cipher_context_t* %ctx to %struct.mbedtls_psa_cipher_operation_t*
  %3 = load i8*, i8** %output.addr, align 8
  %4 = load i64, i64* %output_size.addr, align 8
  %5 = load i64*, i64** %output_length.addr, align 8
  %call = call i32 @mbedtls_psa_cipher_finish(%struct.mbedtls_psa_cipher_operation_t* noundef %mbedtls_ctx, i8* noundef %3, i64 noundef %4, i64* noundef %5) #2
  store i32 %call, i32* %retval, align 4
  br label %return

sw.epilog:                                        ; preds = %entry
  %6 = load i8*, i8** %output.addr, align 8
  %7 = load i64, i64* %output_size.addr, align 8
  %8 = load i64*, i64** %output_length.addr, align 8
  store i32 -135, i32* %retval, align 4
  br label %return

return:                                           ; preds = %sw.epilog, %sw.bb
  %9 = load i32, i32* %retval, align 4
  ret i32 %9
}

declare dso_local i32 @mbedtls_psa_cipher_finish(%struct.mbedtls_psa_cipher_operation_t* noundef, i8* noundef, i64 noundef, i64* noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @psa_driver_wrapper_cipher_abort(%struct.psa_cipher_operation_s* noundef %operation) #0 {
entry:
  %retval = alloca i32, align 4
  %operation.addr = alloca %struct.psa_cipher_operation_s*, align 8
  %status = alloca i32, align 4
  store %struct.psa_cipher_operation_s* %operation, %struct.psa_cipher_operation_s** %operation.addr, align 8
  store i32 -151, i32* %status, align 4
  %0 = load %struct.psa_cipher_operation_s*, %struct.psa_cipher_operation_s** %operation.addr, align 8
  %id = getelementptr inbounds %struct.psa_cipher_operation_s, %struct.psa_cipher_operation_s* %0, i32 0, i32 0
  %1 = load i32, i32* %id, align 8
  switch i32 %1, label %sw.epilog [
    i32 1, label %sw.bb
  ]

sw.bb:                                            ; preds = %entry
  %2 = load %struct.psa_cipher_operation_s*, %struct.psa_cipher_operation_s** %operation.addr, align 8
  %ctx = getelementptr inbounds %struct.psa_cipher_operation_s, %struct.psa_cipher_operation_s* %2, i32 0, i32 3
  %mbedtls_ctx = bitcast %union.psa_driver_cipher_context_t* %ctx to %struct.mbedtls_psa_cipher_operation_t*
  %call = call i32 @mbedtls_psa_cipher_abort(%struct.mbedtls_psa_cipher_operation_t* noundef %mbedtls_ctx) #2
  store i32 %call, i32* %retval, align 4
  br label %return

sw.epilog:                                        ; preds = %entry
  %3 = load i32, i32* %status, align 4
  store i32 -135, i32* %retval, align 4
  br label %return

return:                                           ; preds = %sw.epilog, %sw.bb
  %4 = load i32, i32* %retval, align 4
  ret i32 %4
}

declare dso_local i32 @mbedtls_psa_cipher_abort(%struct.mbedtls_psa_cipher_operation_t* noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @psa_driver_wrapper_hash_compute(i32 noundef %alg, i8* noundef %input, i64 noundef %input_length, i8* noundef %hash, i64 noundef %hash_size, i64* noundef %hash_length) #0 {
entry:
  %retval = alloca i32, align 4
  %alg.addr = alloca i32, align 4
  %input.addr = alloca i8*, align 8
  %input_length.addr = alloca i64, align 8
  %hash.addr = alloca i8*, align 8
  %hash_size.addr = alloca i64, align 8
  %hash_length.addr = alloca i64*, align 8
  %status = alloca i32, align 4
  store i32 %alg, i32* %alg.addr, align 4
  store i8* %input, i8** %input.addr, align 8
  store i64 %input_length, i64* %input_length.addr, align 8
  store i8* %hash, i8** %hash.addr, align 8
  store i64 %hash_size, i64* %hash_size.addr, align 8
  store i64* %hash_length, i64** %hash_length.addr, align 8
  store i32 -151, i32* %status, align 4
  %0 = load i32, i32* %alg.addr, align 4
  %1 = load i8*, i8** %input.addr, align 8
  %2 = load i64, i64* %input_length.addr, align 8
  %3 = load i8*, i8** %hash.addr, align 8
  %4 = load i64, i64* %hash_size.addr, align 8
  %5 = load i64*, i64** %hash_length.addr, align 8
  %call = call i32 @mbedtls_psa_hash_compute(i32 noundef %0, i8* noundef %1, i64 noundef %2, i8* noundef %3, i64 noundef %4, i64* noundef %5) #2
  store i32 %call, i32* %status, align 4
  %6 = load i32, i32* %status, align 4
  %cmp = icmp ne i32 %6, -134
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %7 = load i32, i32* %status, align 4
  store i32 %7, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %8 = load i32, i32* %status, align 4
  %9 = load i32, i32* %alg.addr, align 4
  %10 = load i8*, i8** %input.addr, align 8
  %11 = load i64, i64* %input_length.addr, align 8
  %12 = load i8*, i8** %hash.addr, align 8
  %13 = load i64, i64* %hash_size.addr, align 8
  %14 = load i64*, i64** %hash_length.addr, align 8
  store i32 -134, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %15 = load i32, i32* %retval, align 4
  ret i32 %15
}

declare dso_local i32 @mbedtls_psa_hash_compute(i32 noundef, i8* noundef, i64 noundef, i8* noundef, i64 noundef, i64* noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @psa_driver_wrapper_hash_setup(%struct.psa_hash_operation_s* noundef %operation, i32 noundef %alg) #0 {
entry:
  %retval = alloca i32, align 4
  %operation.addr = alloca %struct.psa_hash_operation_s*, align 8
  %alg.addr = alloca i32, align 4
  %status = alloca i32, align 4
  store %struct.psa_hash_operation_s* %operation, %struct.psa_hash_operation_s** %operation.addr, align 8
  store i32 %alg, i32* %alg.addr, align 4
  store i32 -151, i32* %status, align 4
  %0 = load %struct.psa_hash_operation_s*, %struct.psa_hash_operation_s** %operation.addr, align 8
  %ctx = getelementptr inbounds %struct.psa_hash_operation_s, %struct.psa_hash_operation_s* %0, i32 0, i32 1
  %mbedtls_ctx = bitcast %union.psa_driver_hash_context_t* %ctx to %struct.mbedtls_psa_hash_operation_t*
  %1 = load i32, i32* %alg.addr, align 4
  %call = call i32 @mbedtls_psa_hash_setup(%struct.mbedtls_psa_hash_operation_t* noundef %mbedtls_ctx, i32 noundef %1) #2
  store i32 %call, i32* %status, align 4
  %2 = load i32, i32* %status, align 4
  %cmp = icmp eq i32 %2, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %struct.psa_hash_operation_s*, %struct.psa_hash_operation_s** %operation.addr, align 8
  %id = getelementptr inbounds %struct.psa_hash_operation_s, %struct.psa_hash_operation_s* %3, i32 0, i32 0
  store i32 1, i32* %id, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load i32, i32* %status, align 4
  %cmp1 = icmp ne i32 %4, -134
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  %5 = load i32, i32* %status, align 4
  store i32 %5, i32* %retval, align 4
  br label %return

if.end3:                                          ; preds = %if.end
  %6 = load i32, i32* %status, align 4
  %7 = load %struct.psa_hash_operation_s*, %struct.psa_hash_operation_s** %operation.addr, align 8
  %8 = load i32, i32* %alg.addr, align 4
  store i32 -134, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end3, %if.then2
  %9 = load i32, i32* %retval, align 4
  ret i32 %9
}

declare dso_local i32 @mbedtls_psa_hash_setup(%struct.mbedtls_psa_hash_operation_t* noundef, i32 noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @psa_driver_wrapper_hash_clone(%struct.psa_hash_operation_s* noundef %source_operation, %struct.psa_hash_operation_s* noundef %target_operation) #0 {
entry:
  %retval = alloca i32, align 4
  %source_operation.addr = alloca %struct.psa_hash_operation_s*, align 8
  %target_operation.addr = alloca %struct.psa_hash_operation_s*, align 8
  store %struct.psa_hash_operation_s* %source_operation, %struct.psa_hash_operation_s** %source_operation.addr, align 8
  store %struct.psa_hash_operation_s* %target_operation, %struct.psa_hash_operation_s** %target_operation.addr, align 8
  %0 = load %struct.psa_hash_operation_s*, %struct.psa_hash_operation_s** %source_operation.addr, align 8
  %id = getelementptr inbounds %struct.psa_hash_operation_s, %struct.psa_hash_operation_s* %0, i32 0, i32 0
  %1 = load i32, i32* %id, align 8
  switch i32 %1, label %sw.default [
    i32 1, label %sw.bb
  ]

sw.bb:                                            ; preds = %entry
  %2 = load %struct.psa_hash_operation_s*, %struct.psa_hash_operation_s** %target_operation.addr, align 8
  %id1 = getelementptr inbounds %struct.psa_hash_operation_s, %struct.psa_hash_operation_s* %2, i32 0, i32 0
  store i32 1, i32* %id1, align 8
  %3 = load %struct.psa_hash_operation_s*, %struct.psa_hash_operation_s** %source_operation.addr, align 8
  %ctx = getelementptr inbounds %struct.psa_hash_operation_s, %struct.psa_hash_operation_s* %3, i32 0, i32 1
  %mbedtls_ctx = bitcast %union.psa_driver_hash_context_t* %ctx to %struct.mbedtls_psa_hash_operation_t*
  %4 = load %struct.psa_hash_operation_s*, %struct.psa_hash_operation_s** %target_operation.addr, align 8
  %ctx2 = getelementptr inbounds %struct.psa_hash_operation_s, %struct.psa_hash_operation_s* %4, i32 0, i32 1
  %mbedtls_ctx3 = bitcast %union.psa_driver_hash_context_t* %ctx2 to %struct.mbedtls_psa_hash_operation_t*
  %call = call i32 @mbedtls_psa_hash_clone(%struct.mbedtls_psa_hash_operation_t* noundef %mbedtls_ctx, %struct.mbedtls_psa_hash_operation_t* noundef %mbedtls_ctx3) #2
  store i32 %call, i32* %retval, align 4
  br label %return

sw.default:                                       ; preds = %entry
  %5 = load %struct.psa_hash_operation_s*, %struct.psa_hash_operation_s** %target_operation.addr, align 8
  store i32 -137, i32* %retval, align 4
  br label %return

return:                                           ; preds = %sw.default, %sw.bb
  %6 = load i32, i32* %retval, align 4
  ret i32 %6
}

declare dso_local i32 @mbedtls_psa_hash_clone(%struct.mbedtls_psa_hash_operation_t* noundef, %struct.mbedtls_psa_hash_operation_t* noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @psa_driver_wrapper_hash_update(%struct.psa_hash_operation_s* noundef %operation, i8* noundef %input, i64 noundef %input_length) #0 {
entry:
  %retval = alloca i32, align 4
  %operation.addr = alloca %struct.psa_hash_operation_s*, align 8
  %input.addr = alloca i8*, align 8
  %input_length.addr = alloca i64, align 8
  store %struct.psa_hash_operation_s* %operation, %struct.psa_hash_operation_s** %operation.addr, align 8
  store i8* %input, i8** %input.addr, align 8
  store i64 %input_length, i64* %input_length.addr, align 8
  %0 = load %struct.psa_hash_operation_s*, %struct.psa_hash_operation_s** %operation.addr, align 8
  %id = getelementptr inbounds %struct.psa_hash_operation_s, %struct.psa_hash_operation_s* %0, i32 0, i32 0
  %1 = load i32, i32* %id, align 8
  switch i32 %1, label %sw.default [
    i32 1, label %sw.bb
  ]

sw.bb:                                            ; preds = %entry
  %2 = load %struct.psa_hash_operation_s*, %struct.psa_hash_operation_s** %operation.addr, align 8
  %ctx = getelementptr inbounds %struct.psa_hash_operation_s, %struct.psa_hash_operation_s* %2, i32 0, i32 1
  %mbedtls_ctx = bitcast %union.psa_driver_hash_context_t* %ctx to %struct.mbedtls_psa_hash_operation_t*
  %3 = load i8*, i8** %input.addr, align 8
  %4 = load i64, i64* %input_length.addr, align 8
  %call = call i32 @mbedtls_psa_hash_update(%struct.mbedtls_psa_hash_operation_t* noundef %mbedtls_ctx, i8* noundef %3, i64 noundef %4) #2
  store i32 %call, i32* %retval, align 4
  br label %return

sw.default:                                       ; preds = %entry
  %5 = load i8*, i8** %input.addr, align 8
  %6 = load i64, i64* %input_length.addr, align 8
  store i32 -137, i32* %retval, align 4
  br label %return

return:                                           ; preds = %sw.default, %sw.bb
  %7 = load i32, i32* %retval, align 4
  ret i32 %7
}

declare dso_local i32 @mbedtls_psa_hash_update(%struct.mbedtls_psa_hash_operation_t* noundef, i8* noundef, i64 noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @psa_driver_wrapper_hash_finish(%struct.psa_hash_operation_s* noundef %operation, i8* noundef %hash, i64 noundef %hash_size, i64* noundef %hash_length) #0 {
entry:
  %retval = alloca i32, align 4
  %operation.addr = alloca %struct.psa_hash_operation_s*, align 8
  %hash.addr = alloca i8*, align 8
  %hash_size.addr = alloca i64, align 8
  %hash_length.addr = alloca i64*, align 8
  store %struct.psa_hash_operation_s* %operation, %struct.psa_hash_operation_s** %operation.addr, align 8
  store i8* %hash, i8** %hash.addr, align 8
  store i64 %hash_size, i64* %hash_size.addr, align 8
  store i64* %hash_length, i64** %hash_length.addr, align 8
  %0 = load %struct.psa_hash_operation_s*, %struct.psa_hash_operation_s** %operation.addr, align 8
  %id = getelementptr inbounds %struct.psa_hash_operation_s, %struct.psa_hash_operation_s* %0, i32 0, i32 0
  %1 = load i32, i32* %id, align 8
  switch i32 %1, label %sw.default [
    i32 1, label %sw.bb
  ]

sw.bb:                                            ; preds = %entry
  %2 = load %struct.psa_hash_operation_s*, %struct.psa_hash_operation_s** %operation.addr, align 8
  %ctx = getelementptr inbounds %struct.psa_hash_operation_s, %struct.psa_hash_operation_s* %2, i32 0, i32 1
  %mbedtls_ctx = bitcast %union.psa_driver_hash_context_t* %ctx to %struct.mbedtls_psa_hash_operation_t*
  %3 = load i8*, i8** %hash.addr, align 8
  %4 = load i64, i64* %hash_size.addr, align 8
  %5 = load i64*, i64** %hash_length.addr, align 8
  %call = call i32 @mbedtls_psa_hash_finish(%struct.mbedtls_psa_hash_operation_t* noundef %mbedtls_ctx, i8* noundef %3, i64 noundef %4, i64* noundef %5) #2
  store i32 %call, i32* %retval, align 4
  br label %return

sw.default:                                       ; preds = %entry
  %6 = load i8*, i8** %hash.addr, align 8
  %7 = load i64, i64* %hash_size.addr, align 8
  %8 = load i64*, i64** %hash_length.addr, align 8
  store i32 -137, i32* %retval, align 4
  br label %return

return:                                           ; preds = %sw.default, %sw.bb
  %9 = load i32, i32* %retval, align 4
  ret i32 %9
}

declare dso_local i32 @mbedtls_psa_hash_finish(%struct.mbedtls_psa_hash_operation_t* noundef, i8* noundef, i64 noundef, i64* noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @psa_driver_wrapper_hash_abort(%struct.psa_hash_operation_s* noundef %operation) #0 {
entry:
  %retval = alloca i32, align 4
  %operation.addr = alloca %struct.psa_hash_operation_s*, align 8
  store %struct.psa_hash_operation_s* %operation, %struct.psa_hash_operation_s** %operation.addr, align 8
  %0 = load %struct.psa_hash_operation_s*, %struct.psa_hash_operation_s** %operation.addr, align 8
  %id = getelementptr inbounds %struct.psa_hash_operation_s, %struct.psa_hash_operation_s* %0, i32 0, i32 0
  %1 = load i32, i32* %id, align 8
  switch i32 %1, label %sw.default [
    i32 1, label %sw.bb
  ]

sw.bb:                                            ; preds = %entry
  %2 = load %struct.psa_hash_operation_s*, %struct.psa_hash_operation_s** %operation.addr, align 8
  %ctx = getelementptr inbounds %struct.psa_hash_operation_s, %struct.psa_hash_operation_s* %2, i32 0, i32 1
  %mbedtls_ctx = bitcast %union.psa_driver_hash_context_t* %ctx to %struct.mbedtls_psa_hash_operation_t*
  %call = call i32 @mbedtls_psa_hash_abort(%struct.mbedtls_psa_hash_operation_t* noundef %mbedtls_ctx) #2
  store i32 %call, i32* %retval, align 4
  br label %return

sw.default:                                       ; preds = %entry
  store i32 -137, i32* %retval, align 4
  br label %return

return:                                           ; preds = %sw.default, %sw.bb
  %3 = load i32, i32* %retval, align 4
  ret i32 %3
}

declare dso_local i32 @mbedtls_psa_hash_abort(%struct.mbedtls_psa_hash_operation_t* noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @psa_driver_wrapper_aead_encrypt(%struct.psa_key_attributes_s* noundef %attributes, i8* noundef %key_buffer, i64 noundef %key_buffer_size, i32 noundef %alg, i8* noundef %nonce, i64 noundef %nonce_length, i8* noundef %additional_data, i64 noundef %additional_data_length, i8* noundef %plaintext, i64 noundef %plaintext_length, i8* noundef %ciphertext, i64 noundef %ciphertext_size, i64* noundef %ciphertext_length) #0 {
entry:
  %retval = alloca i32, align 4
  %attributes.addr = alloca %struct.psa_key_attributes_s*, align 8
  %key_buffer.addr = alloca i8*, align 8
  %key_buffer_size.addr = alloca i64, align 8
  %alg.addr = alloca i32, align 4
  %nonce.addr = alloca i8*, align 8
  %nonce_length.addr = alloca i64, align 8
  %additional_data.addr = alloca i8*, align 8
  %additional_data_length.addr = alloca i64, align 8
  %plaintext.addr = alloca i8*, align 8
  %plaintext_length.addr = alloca i64, align 8
  %ciphertext.addr = alloca i8*, align 8
  %ciphertext_size.addr = alloca i64, align 8
  %ciphertext_length.addr = alloca i64*, align 8
  %status = alloca i32, align 4
  %location = alloca i32, align 4
  store %struct.psa_key_attributes_s* %attributes, %struct.psa_key_attributes_s** %attributes.addr, align 8
  store i8* %key_buffer, i8** %key_buffer.addr, align 8
  store i64 %key_buffer_size, i64* %key_buffer_size.addr, align 8
  store i32 %alg, i32* %alg.addr, align 4
  store i8* %nonce, i8** %nonce.addr, align 8
  store i64 %nonce_length, i64* %nonce_length.addr, align 8
  store i8* %additional_data, i8** %additional_data.addr, align 8
  store i64 %additional_data_length, i64* %additional_data_length.addr, align 8
  store i8* %plaintext, i8** %plaintext.addr, align 8
  store i64 %plaintext_length, i64* %plaintext_length.addr, align 8
  store i8* %ciphertext, i8** %ciphertext.addr, align 8
  store i64 %ciphertext_size, i64* %ciphertext_size.addr, align 8
  store i64* %ciphertext_length, i64** %ciphertext_length.addr, align 8
  store i32 -151, i32* %status, align 4
  %0 = load %struct.psa_key_attributes_s*, %struct.psa_key_attributes_s** %attributes.addr, align 8
  %core = getelementptr inbounds %struct.psa_key_attributes_s, %struct.psa_key_attributes_s* %0, i32 0, i32 0
  %lifetime = getelementptr inbounds %struct.psa_core_key_attributes_t, %struct.psa_core_key_attributes_t* %core, i32 0, i32 2
  %1 = load i32, i32* %lifetime, align 4
  %shr = lshr i32 %1, 8
  store i32 %shr, i32* %location, align 4
  %2 = load i32, i32* %location, align 4
  switch i32 %2, label %sw.default [
    i32 0, label %sw.bb
  ]

sw.bb:                                            ; preds = %entry
  %3 = load %struct.psa_key_attributes_s*, %struct.psa_key_attributes_s** %attributes.addr, align 8
  %4 = load i8*, i8** %key_buffer.addr, align 8
  %5 = load i64, i64* %key_buffer_size.addr, align 8
  %6 = load i32, i32* %alg.addr, align 4
  %7 = load i8*, i8** %nonce.addr, align 8
  %8 = load i64, i64* %nonce_length.addr, align 8
  %9 = load i8*, i8** %additional_data.addr, align 8
  %10 = load i64, i64* %additional_data_length.addr, align 8
  %11 = load i8*, i8** %plaintext.addr, align 8
  %12 = load i64, i64* %plaintext_length.addr, align 8
  %13 = load i8*, i8** %ciphertext.addr, align 8
  %14 = load i64, i64* %ciphertext_size.addr, align 8
  %15 = load i64*, i64** %ciphertext_length.addr, align 8
  %call = call i32 @mbedtls_psa_aead_encrypt(%struct.psa_key_attributes_s* noundef %3, i8* noundef %4, i64 noundef %5, i32 noundef %6, i8* noundef %7, i64 noundef %8, i8* noundef %9, i64 noundef %10, i8* noundef %11, i64 noundef %12, i8* noundef %13, i64 noundef %14, i64* noundef %15) #2
  store i32 %call, i32* %retval, align 4
  br label %return

sw.default:                                       ; preds = %entry
  %16 = load i32, i32* %status, align 4
  store i32 -135, i32* %retval, align 4
  br label %return

return:                                           ; preds = %sw.default, %sw.bb
  %17 = load i32, i32* %retval, align 4
  ret i32 %17
}

declare dso_local i32 @mbedtls_psa_aead_encrypt(%struct.psa_key_attributes_s* noundef, i8* noundef, i64 noundef, i32 noundef, i8* noundef, i64 noundef, i8* noundef, i64 noundef, i8* noundef, i64 noundef, i8* noundef, i64 noundef, i64* noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @psa_driver_wrapper_aead_decrypt(%struct.psa_key_attributes_s* noundef %attributes, i8* noundef %key_buffer, i64 noundef %key_buffer_size, i32 noundef %alg, i8* noundef %nonce, i64 noundef %nonce_length, i8* noundef %additional_data, i64 noundef %additional_data_length, i8* noundef %ciphertext, i64 noundef %ciphertext_length, i8* noundef %plaintext, i64 noundef %plaintext_size, i64* noundef %plaintext_length) #0 {
entry:
  %retval = alloca i32, align 4
  %attributes.addr = alloca %struct.psa_key_attributes_s*, align 8
  %key_buffer.addr = alloca i8*, align 8
  %key_buffer_size.addr = alloca i64, align 8
  %alg.addr = alloca i32, align 4
  %nonce.addr = alloca i8*, align 8
  %nonce_length.addr = alloca i64, align 8
  %additional_data.addr = alloca i8*, align 8
  %additional_data_length.addr = alloca i64, align 8
  %ciphertext.addr = alloca i8*, align 8
  %ciphertext_length.addr = alloca i64, align 8
  %plaintext.addr = alloca i8*, align 8
  %plaintext_size.addr = alloca i64, align 8
  %plaintext_length.addr = alloca i64*, align 8
  %status = alloca i32, align 4
  %location = alloca i32, align 4
  store %struct.psa_key_attributes_s* %attributes, %struct.psa_key_attributes_s** %attributes.addr, align 8
  store i8* %key_buffer, i8** %key_buffer.addr, align 8
  store i64 %key_buffer_size, i64* %key_buffer_size.addr, align 8
  store i32 %alg, i32* %alg.addr, align 4
  store i8* %nonce, i8** %nonce.addr, align 8
  store i64 %nonce_length, i64* %nonce_length.addr, align 8
  store i8* %additional_data, i8** %additional_data.addr, align 8
  store i64 %additional_data_length, i64* %additional_data_length.addr, align 8
  store i8* %ciphertext, i8** %ciphertext.addr, align 8
  store i64 %ciphertext_length, i64* %ciphertext_length.addr, align 8
  store i8* %plaintext, i8** %plaintext.addr, align 8
  store i64 %plaintext_size, i64* %plaintext_size.addr, align 8
  store i64* %plaintext_length, i64** %plaintext_length.addr, align 8
  store i32 -151, i32* %status, align 4
  %0 = load %struct.psa_key_attributes_s*, %struct.psa_key_attributes_s** %attributes.addr, align 8
  %core = getelementptr inbounds %struct.psa_key_attributes_s, %struct.psa_key_attributes_s* %0, i32 0, i32 0
  %lifetime = getelementptr inbounds %struct.psa_core_key_attributes_t, %struct.psa_core_key_attributes_t* %core, i32 0, i32 2
  %1 = load i32, i32* %lifetime, align 4
  %shr = lshr i32 %1, 8
  store i32 %shr, i32* %location, align 4
  %2 = load i32, i32* %location, align 4
  switch i32 %2, label %sw.default [
    i32 0, label %sw.bb
  ]

sw.bb:                                            ; preds = %entry
  %3 = load %struct.psa_key_attributes_s*, %struct.psa_key_attributes_s** %attributes.addr, align 8
  %4 = load i8*, i8** %key_buffer.addr, align 8
  %5 = load i64, i64* %key_buffer_size.addr, align 8
  %6 = load i32, i32* %alg.addr, align 4
  %7 = load i8*, i8** %nonce.addr, align 8
  %8 = load i64, i64* %nonce_length.addr, align 8
  %9 = load i8*, i8** %additional_data.addr, align 8
  %10 = load i64, i64* %additional_data_length.addr, align 8
  %11 = load i8*, i8** %ciphertext.addr, align 8
  %12 = load i64, i64* %ciphertext_length.addr, align 8
  %13 = load i8*, i8** %plaintext.addr, align 8
  %14 = load i64, i64* %plaintext_size.addr, align 8
  %15 = load i64*, i64** %plaintext_length.addr, align 8
  %call = call i32 @mbedtls_psa_aead_decrypt(%struct.psa_key_attributes_s* noundef %3, i8* noundef %4, i64 noundef %5, i32 noundef %6, i8* noundef %7, i64 noundef %8, i8* noundef %9, i64 noundef %10, i8* noundef %11, i64 noundef %12, i8* noundef %13, i64 noundef %14, i64* noundef %15) #2
  store i32 %call, i32* %retval, align 4
  br label %return

sw.default:                                       ; preds = %entry
  %16 = load i32, i32* %status, align 4
  store i32 -135, i32* %retval, align 4
  br label %return

return:                                           ; preds = %sw.default, %sw.bb
  %17 = load i32, i32* %retval, align 4
  ret i32 %17
}

declare dso_local i32 @mbedtls_psa_aead_decrypt(%struct.psa_key_attributes_s* noundef, i8* noundef, i64 noundef, i32 noundef, i8* noundef, i64 noundef, i8* noundef, i64 noundef, i8* noundef, i64 noundef, i8* noundef, i64 noundef, i64* noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @psa_driver_get_tag_len(%struct.psa_aead_operation_s* noundef %operation, i8* noundef %tag_len) #0 {
entry:
  %retval = alloca i32, align 4
  %operation.addr = alloca %struct.psa_aead_operation_s*, align 8
  %tag_len.addr = alloca i8*, align 8
  store %struct.psa_aead_operation_s* %operation, %struct.psa_aead_operation_s** %operation.addr, align 8
  store i8* %tag_len, i8** %tag_len.addr, align 8
  %0 = load %struct.psa_aead_operation_s*, %struct.psa_aead_operation_s** %operation.addr, align 8
  %cmp = icmp eq %struct.psa_aead_operation_s* %0, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i8*, i8** %tag_len.addr, align 8
  %cmp1 = icmp eq i8* %1, null
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 -135, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %2 = load %struct.psa_aead_operation_s*, %struct.psa_aead_operation_s** %operation.addr, align 8
  %ctx = getelementptr inbounds %struct.psa_aead_operation_s, %struct.psa_aead_operation_s* %2, i32 0, i32 6
  %mbedtls_ctx = bitcast %union.psa_driver_aead_context_t* %ctx to %struct.mbedtls_psa_aead_operation_t*
  %tag_length = getelementptr inbounds %struct.mbedtls_psa_aead_operation_t, %struct.mbedtls_psa_aead_operation_t* %mbedtls_ctx, i32 0, i32 3
  %3 = load i8, i8* %tag_length, align 1
  %4 = load i8*, i8** %tag_len.addr, align 8
  store i8 %3, i8* %4, align 1
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %5 = load i32, i32* %retval, align 4
  ret i32 %5
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @psa_driver_wrapper_aead_encrypt_setup(%struct.psa_aead_operation_s* noundef %operation, %struct.psa_key_attributes_s* noundef %attributes, i8* noundef %key_buffer, i64 noundef %key_buffer_size, i32 noundef %alg) #0 {
entry:
  %retval = alloca i32, align 4
  %operation.addr = alloca %struct.psa_aead_operation_s*, align 8
  %attributes.addr = alloca %struct.psa_key_attributes_s*, align 8
  %key_buffer.addr = alloca i8*, align 8
  %key_buffer_size.addr = alloca i64, align 8
  %alg.addr = alloca i32, align 4
  %status = alloca i32, align 4
  %location = alloca i32, align 4
  store %struct.psa_aead_operation_s* %operation, %struct.psa_aead_operation_s** %operation.addr, align 8
  store %struct.psa_key_attributes_s* %attributes, %struct.psa_key_attributes_s** %attributes.addr, align 8
  store i8* %key_buffer, i8** %key_buffer.addr, align 8
  store i64 %key_buffer_size, i64* %key_buffer_size.addr, align 8
  store i32 %alg, i32* %alg.addr, align 4
  store i32 -151, i32* %status, align 4
  %0 = load %struct.psa_key_attributes_s*, %struct.psa_key_attributes_s** %attributes.addr, align 8
  %core = getelementptr inbounds %struct.psa_key_attributes_s, %struct.psa_key_attributes_s* %0, i32 0, i32 0
  %lifetime = getelementptr inbounds %struct.psa_core_key_attributes_t, %struct.psa_core_key_attributes_t* %core, i32 0, i32 2
  %1 = load i32, i32* %lifetime, align 4
  %shr = lshr i32 %1, 8
  store i32 %shr, i32* %location, align 4
  %2 = load i32, i32* %location, align 4
  switch i32 %2, label %sw.default [
    i32 0, label %sw.bb
  ]

sw.bb:                                            ; preds = %entry
  %3 = load %struct.psa_aead_operation_s*, %struct.psa_aead_operation_s** %operation.addr, align 8
  %id = getelementptr inbounds %struct.psa_aead_operation_s, %struct.psa_aead_operation_s* %3, i32 0, i32 0
  store i32 1, i32* %id, align 8
  %4 = load %struct.psa_aead_operation_s*, %struct.psa_aead_operation_s** %operation.addr, align 8
  %ctx = getelementptr inbounds %struct.psa_aead_operation_s, %struct.psa_aead_operation_s* %4, i32 0, i32 6
  %mbedtls_ctx = bitcast %union.psa_driver_aead_context_t* %ctx to %struct.mbedtls_psa_aead_operation_t*
  %5 = load %struct.psa_key_attributes_s*, %struct.psa_key_attributes_s** %attributes.addr, align 8
  %6 = load i8*, i8** %key_buffer.addr, align 8
  %7 = load i64, i64* %key_buffer_size.addr, align 8
  %8 = load i32, i32* %alg.addr, align 4
  %call = call i32 @mbedtls_psa_aead_encrypt_setup(%struct.mbedtls_psa_aead_operation_t* noundef %mbedtls_ctx, %struct.psa_key_attributes_s* noundef %5, i8* noundef %6, i64 noundef %7, i32 noundef %8) #2
  store i32 %call, i32* %status, align 4
  %9 = load i32, i32* %status, align 4
  store i32 %9, i32* %retval, align 4
  br label %return

sw.default:                                       ; preds = %entry
  %10 = load i32, i32* %status, align 4
  store i32 -135, i32* %retval, align 4
  br label %return

return:                                           ; preds = %sw.default, %sw.bb
  %11 = load i32, i32* %retval, align 4
  ret i32 %11
}

declare dso_local i32 @mbedtls_psa_aead_encrypt_setup(%struct.mbedtls_psa_aead_operation_t* noundef, %struct.psa_key_attributes_s* noundef, i8* noundef, i64 noundef, i32 noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @psa_driver_wrapper_aead_decrypt_setup(%struct.psa_aead_operation_s* noundef %operation, %struct.psa_key_attributes_s* noundef %attributes, i8* noundef %key_buffer, i64 noundef %key_buffer_size, i32 noundef %alg) #0 {
entry:
  %retval = alloca i32, align 4
  %operation.addr = alloca %struct.psa_aead_operation_s*, align 8
  %attributes.addr = alloca %struct.psa_key_attributes_s*, align 8
  %key_buffer.addr = alloca i8*, align 8
  %key_buffer_size.addr = alloca i64, align 8
  %alg.addr = alloca i32, align 4
  %status = alloca i32, align 4
  %location = alloca i32, align 4
  store %struct.psa_aead_operation_s* %operation, %struct.psa_aead_operation_s** %operation.addr, align 8
  store %struct.psa_key_attributes_s* %attributes, %struct.psa_key_attributes_s** %attributes.addr, align 8
  store i8* %key_buffer, i8** %key_buffer.addr, align 8
  store i64 %key_buffer_size, i64* %key_buffer_size.addr, align 8
  store i32 %alg, i32* %alg.addr, align 4
  store i32 -151, i32* %status, align 4
  %0 = load %struct.psa_key_attributes_s*, %struct.psa_key_attributes_s** %attributes.addr, align 8
  %core = getelementptr inbounds %struct.psa_key_attributes_s, %struct.psa_key_attributes_s* %0, i32 0, i32 0
  %lifetime = getelementptr inbounds %struct.psa_core_key_attributes_t, %struct.psa_core_key_attributes_t* %core, i32 0, i32 2
  %1 = load i32, i32* %lifetime, align 4
  %shr = lshr i32 %1, 8
  store i32 %shr, i32* %location, align 4
  %2 = load i32, i32* %location, align 4
  switch i32 %2, label %sw.default [
    i32 0, label %sw.bb
  ]

sw.bb:                                            ; preds = %entry
  %3 = load %struct.psa_aead_operation_s*, %struct.psa_aead_operation_s** %operation.addr, align 8
  %id = getelementptr inbounds %struct.psa_aead_operation_s, %struct.psa_aead_operation_s* %3, i32 0, i32 0
  store i32 1, i32* %id, align 8
  %4 = load %struct.psa_aead_operation_s*, %struct.psa_aead_operation_s** %operation.addr, align 8
  %ctx = getelementptr inbounds %struct.psa_aead_operation_s, %struct.psa_aead_operation_s* %4, i32 0, i32 6
  %mbedtls_ctx = bitcast %union.psa_driver_aead_context_t* %ctx to %struct.mbedtls_psa_aead_operation_t*
  %5 = load %struct.psa_key_attributes_s*, %struct.psa_key_attributes_s** %attributes.addr, align 8
  %6 = load i8*, i8** %key_buffer.addr, align 8
  %7 = load i64, i64* %key_buffer_size.addr, align 8
  %8 = load i32, i32* %alg.addr, align 4
  %call = call i32 @mbedtls_psa_aead_decrypt_setup(%struct.mbedtls_psa_aead_operation_t* noundef %mbedtls_ctx, %struct.psa_key_attributes_s* noundef %5, i8* noundef %6, i64 noundef %7, i32 noundef %8) #2
  store i32 %call, i32* %status, align 4
  %9 = load i32, i32* %status, align 4
  store i32 %9, i32* %retval, align 4
  br label %return

sw.default:                                       ; preds = %entry
  %10 = load i32, i32* %status, align 4
  store i32 -135, i32* %retval, align 4
  br label %return

return:                                           ; preds = %sw.default, %sw.bb
  %11 = load i32, i32* %retval, align 4
  ret i32 %11
}

declare dso_local i32 @mbedtls_psa_aead_decrypt_setup(%struct.mbedtls_psa_aead_operation_t* noundef, %struct.psa_key_attributes_s* noundef, i8* noundef, i64 noundef, i32 noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @psa_driver_wrapper_aead_set_nonce(%struct.psa_aead_operation_s* noundef %operation, i8* noundef %nonce, i64 noundef %nonce_length) #0 {
entry:
  %retval = alloca i32, align 4
  %operation.addr = alloca %struct.psa_aead_operation_s*, align 8
  %nonce.addr = alloca i8*, align 8
  %nonce_length.addr = alloca i64, align 8
  store %struct.psa_aead_operation_s* %operation, %struct.psa_aead_operation_s** %operation.addr, align 8
  store i8* %nonce, i8** %nonce.addr, align 8
  store i64 %nonce_length, i64* %nonce_length.addr, align 8
  %0 = load %struct.psa_aead_operation_s*, %struct.psa_aead_operation_s** %operation.addr, align 8
  %id = getelementptr inbounds %struct.psa_aead_operation_s, %struct.psa_aead_operation_s* %0, i32 0, i32 0
  %1 = load i32, i32* %id, align 8
  switch i32 %1, label %sw.epilog [
    i32 1, label %sw.bb
  ]

sw.bb:                                            ; preds = %entry
  %2 = load %struct.psa_aead_operation_s*, %struct.psa_aead_operation_s** %operation.addr, align 8
  %ctx = getelementptr inbounds %struct.psa_aead_operation_s, %struct.psa_aead_operation_s* %2, i32 0, i32 6
  %mbedtls_ctx = bitcast %union.psa_driver_aead_context_t* %ctx to %struct.mbedtls_psa_aead_operation_t*
  %3 = load i8*, i8** %nonce.addr, align 8
  %4 = load i64, i64* %nonce_length.addr, align 8
  %call = call i32 @mbedtls_psa_aead_set_nonce(%struct.mbedtls_psa_aead_operation_t* noundef %mbedtls_ctx, i8* noundef %3, i64 noundef %4) #2
  store i32 %call, i32* %retval, align 4
  br label %return

sw.epilog:                                        ; preds = %entry
  %5 = load i8*, i8** %nonce.addr, align 8
  %6 = load i64, i64* %nonce_length.addr, align 8
  store i32 -135, i32* %retval, align 4
  br label %return

return:                                           ; preds = %sw.epilog, %sw.bb
  %7 = load i32, i32* %retval, align 4
  ret i32 %7
}

declare dso_local i32 @mbedtls_psa_aead_set_nonce(%struct.mbedtls_psa_aead_operation_t* noundef, i8* noundef, i64 noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @psa_driver_wrapper_aead_set_lengths(%struct.psa_aead_operation_s* noundef %operation, i64 noundef %ad_length, i64 noundef %plaintext_length) #0 {
entry:
  %retval = alloca i32, align 4
  %operation.addr = alloca %struct.psa_aead_operation_s*, align 8
  %ad_length.addr = alloca i64, align 8
  %plaintext_length.addr = alloca i64, align 8
  store %struct.psa_aead_operation_s* %operation, %struct.psa_aead_operation_s** %operation.addr, align 8
  store i64 %ad_length, i64* %ad_length.addr, align 8
  store i64 %plaintext_length, i64* %plaintext_length.addr, align 8
  %0 = load %struct.psa_aead_operation_s*, %struct.psa_aead_operation_s** %operation.addr, align 8
  %id = getelementptr inbounds %struct.psa_aead_operation_s, %struct.psa_aead_operation_s* %0, i32 0, i32 0
  %1 = load i32, i32* %id, align 8
  switch i32 %1, label %sw.epilog [
    i32 1, label %sw.bb
  ]

sw.bb:                                            ; preds = %entry
  %2 = load %struct.psa_aead_operation_s*, %struct.psa_aead_operation_s** %operation.addr, align 8
  %ctx = getelementptr inbounds %struct.psa_aead_operation_s, %struct.psa_aead_operation_s* %2, i32 0, i32 6
  %mbedtls_ctx = bitcast %union.psa_driver_aead_context_t* %ctx to %struct.mbedtls_psa_aead_operation_t*
  %3 = load i64, i64* %ad_length.addr, align 8
  %4 = load i64, i64* %plaintext_length.addr, align 8
  %call = call i32 @mbedtls_psa_aead_set_lengths(%struct.mbedtls_psa_aead_operation_t* noundef %mbedtls_ctx, i64 noundef %3, i64 noundef %4) #2
  store i32 %call, i32* %retval, align 4
  br label %return

sw.epilog:                                        ; preds = %entry
  %5 = load i64, i64* %ad_length.addr, align 8
  %6 = load i64, i64* %plaintext_length.addr, align 8
  store i32 -135, i32* %retval, align 4
  br label %return

return:                                           ; preds = %sw.epilog, %sw.bb
  %7 = load i32, i32* %retval, align 4
  ret i32 %7
}

declare dso_local i32 @mbedtls_psa_aead_set_lengths(%struct.mbedtls_psa_aead_operation_t* noundef, i64 noundef, i64 noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @psa_driver_wrapper_aead_update_ad(%struct.psa_aead_operation_s* noundef %operation, i8* noundef %input, i64 noundef %input_length) #0 {
entry:
  %retval = alloca i32, align 4
  %operation.addr = alloca %struct.psa_aead_operation_s*, align 8
  %input.addr = alloca i8*, align 8
  %input_length.addr = alloca i64, align 8
  store %struct.psa_aead_operation_s* %operation, %struct.psa_aead_operation_s** %operation.addr, align 8
  store i8* %input, i8** %input.addr, align 8
  store i64 %input_length, i64* %input_length.addr, align 8
  %0 = load %struct.psa_aead_operation_s*, %struct.psa_aead_operation_s** %operation.addr, align 8
  %id = getelementptr inbounds %struct.psa_aead_operation_s, %struct.psa_aead_operation_s* %0, i32 0, i32 0
  %1 = load i32, i32* %id, align 8
  switch i32 %1, label %sw.epilog [
    i32 1, label %sw.bb
  ]

sw.bb:                                            ; preds = %entry
  %2 = load %struct.psa_aead_operation_s*, %struct.psa_aead_operation_s** %operation.addr, align 8
  %ctx = getelementptr inbounds %struct.psa_aead_operation_s, %struct.psa_aead_operation_s* %2, i32 0, i32 6
  %mbedtls_ctx = bitcast %union.psa_driver_aead_context_t* %ctx to %struct.mbedtls_psa_aead_operation_t*
  %3 = load i8*, i8** %input.addr, align 8
  %4 = load i64, i64* %input_length.addr, align 8
  %call = call i32 @mbedtls_psa_aead_update_ad(%struct.mbedtls_psa_aead_operation_t* noundef %mbedtls_ctx, i8* noundef %3, i64 noundef %4) #2
  store i32 %call, i32* %retval, align 4
  br label %return

sw.epilog:                                        ; preds = %entry
  %5 = load i8*, i8** %input.addr, align 8
  %6 = load i64, i64* %input_length.addr, align 8
  store i32 -135, i32* %retval, align 4
  br label %return

return:                                           ; preds = %sw.epilog, %sw.bb
  %7 = load i32, i32* %retval, align 4
  ret i32 %7
}

declare dso_local i32 @mbedtls_psa_aead_update_ad(%struct.mbedtls_psa_aead_operation_t* noundef, i8* noundef, i64 noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @psa_driver_wrapper_aead_update(%struct.psa_aead_operation_s* noundef %operation, i8* noundef %input, i64 noundef %input_length, i8* noundef %output, i64 noundef %output_size, i64* noundef %output_length) #0 {
entry:
  %retval = alloca i32, align 4
  %operation.addr = alloca %struct.psa_aead_operation_s*, align 8
  %input.addr = alloca i8*, align 8
  %input_length.addr = alloca i64, align 8
  %output.addr = alloca i8*, align 8
  %output_size.addr = alloca i64, align 8
  %output_length.addr = alloca i64*, align 8
  store %struct.psa_aead_operation_s* %operation, %struct.psa_aead_operation_s** %operation.addr, align 8
  store i8* %input, i8** %input.addr, align 8
  store i64 %input_length, i64* %input_length.addr, align 8
  store i8* %output, i8** %output.addr, align 8
  store i64 %output_size, i64* %output_size.addr, align 8
  store i64* %output_length, i64** %output_length.addr, align 8
  %0 = load %struct.psa_aead_operation_s*, %struct.psa_aead_operation_s** %operation.addr, align 8
  %id = getelementptr inbounds %struct.psa_aead_operation_s, %struct.psa_aead_operation_s* %0, i32 0, i32 0
  %1 = load i32, i32* %id, align 8
  switch i32 %1, label %sw.epilog [
    i32 1, label %sw.bb
  ]

sw.bb:                                            ; preds = %entry
  %2 = load %struct.psa_aead_operation_s*, %struct.psa_aead_operation_s** %operation.addr, align 8
  %ctx = getelementptr inbounds %struct.psa_aead_operation_s, %struct.psa_aead_operation_s* %2, i32 0, i32 6
  %mbedtls_ctx = bitcast %union.psa_driver_aead_context_t* %ctx to %struct.mbedtls_psa_aead_operation_t*
  %3 = load i8*, i8** %input.addr, align 8
  %4 = load i64, i64* %input_length.addr, align 8
  %5 = load i8*, i8** %output.addr, align 8
  %6 = load i64, i64* %output_size.addr, align 8
  %7 = load i64*, i64** %output_length.addr, align 8
  %call = call i32 @mbedtls_psa_aead_update(%struct.mbedtls_psa_aead_operation_t* noundef %mbedtls_ctx, i8* noundef %3, i64 noundef %4, i8* noundef %5, i64 noundef %6, i64* noundef %7) #2
  store i32 %call, i32* %retval, align 4
  br label %return

sw.epilog:                                        ; preds = %entry
  %8 = load i8*, i8** %input.addr, align 8
  %9 = load i64, i64* %input_length.addr, align 8
  %10 = load i8*, i8** %output.addr, align 8
  %11 = load i64, i64* %output_size.addr, align 8
  %12 = load i64*, i64** %output_length.addr, align 8
  store i32 -135, i32* %retval, align 4
  br label %return

return:                                           ; preds = %sw.epilog, %sw.bb
  %13 = load i32, i32* %retval, align 4
  ret i32 %13
}

declare dso_local i32 @mbedtls_psa_aead_update(%struct.mbedtls_psa_aead_operation_t* noundef, i8* noundef, i64 noundef, i8* noundef, i64 noundef, i64* noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @psa_driver_wrapper_aead_finish(%struct.psa_aead_operation_s* noundef %operation, i8* noundef %ciphertext, i64 noundef %ciphertext_size, i64* noundef %ciphertext_length, i8* noundef %tag, i64 noundef %tag_size, i64* noundef %tag_length) #0 {
entry:
  %retval = alloca i32, align 4
  %operation.addr = alloca %struct.psa_aead_operation_s*, align 8
  %ciphertext.addr = alloca i8*, align 8
  %ciphertext_size.addr = alloca i64, align 8
  %ciphertext_length.addr = alloca i64*, align 8
  %tag.addr = alloca i8*, align 8
  %tag_size.addr = alloca i64, align 8
  %tag_length.addr = alloca i64*, align 8
  store %struct.psa_aead_operation_s* %operation, %struct.psa_aead_operation_s** %operation.addr, align 8
  store i8* %ciphertext, i8** %ciphertext.addr, align 8
  store i64 %ciphertext_size, i64* %ciphertext_size.addr, align 8
  store i64* %ciphertext_length, i64** %ciphertext_length.addr, align 8
  store i8* %tag, i8** %tag.addr, align 8
  store i64 %tag_size, i64* %tag_size.addr, align 8
  store i64* %tag_length, i64** %tag_length.addr, align 8
  %0 = load %struct.psa_aead_operation_s*, %struct.psa_aead_operation_s** %operation.addr, align 8
  %id = getelementptr inbounds %struct.psa_aead_operation_s, %struct.psa_aead_operation_s* %0, i32 0, i32 0
  %1 = load i32, i32* %id, align 8
  switch i32 %1, label %sw.epilog [
    i32 1, label %sw.bb
  ]

sw.bb:                                            ; preds = %entry
  %2 = load %struct.psa_aead_operation_s*, %struct.psa_aead_operation_s** %operation.addr, align 8
  %ctx = getelementptr inbounds %struct.psa_aead_operation_s, %struct.psa_aead_operation_s* %2, i32 0, i32 6
  %mbedtls_ctx = bitcast %union.psa_driver_aead_context_t* %ctx to %struct.mbedtls_psa_aead_operation_t*
  %3 = load i8*, i8** %ciphertext.addr, align 8
  %4 = load i64, i64* %ciphertext_size.addr, align 8
  %5 = load i64*, i64** %ciphertext_length.addr, align 8
  %6 = load i8*, i8** %tag.addr, align 8
  %7 = load i64, i64* %tag_size.addr, align 8
  %8 = load i64*, i64** %tag_length.addr, align 8
  %call = call i32 @mbedtls_psa_aead_finish(%struct.mbedtls_psa_aead_operation_t* noundef %mbedtls_ctx, i8* noundef %3, i64 noundef %4, i64* noundef %5, i8* noundef %6, i64 noundef %7, i64* noundef %8) #2
  store i32 %call, i32* %retval, align 4
  br label %return

sw.epilog:                                        ; preds = %entry
  %9 = load i8*, i8** %ciphertext.addr, align 8
  %10 = load i64, i64* %ciphertext_size.addr, align 8
  %11 = load i64*, i64** %ciphertext_length.addr, align 8
  %12 = load i8*, i8** %tag.addr, align 8
  %13 = load i64, i64* %tag_size.addr, align 8
  %14 = load i64*, i64** %tag_length.addr, align 8
  store i32 -135, i32* %retval, align 4
  br label %return

return:                                           ; preds = %sw.epilog, %sw.bb
  %15 = load i32, i32* %retval, align 4
  ret i32 %15
}

declare dso_local i32 @mbedtls_psa_aead_finish(%struct.mbedtls_psa_aead_operation_t* noundef, i8* noundef, i64 noundef, i64* noundef, i8* noundef, i64 noundef, i64* noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @psa_driver_wrapper_aead_verify(%struct.psa_aead_operation_s* noundef %operation, i8* noundef %plaintext, i64 noundef %plaintext_size, i64* noundef %plaintext_length, i8* noundef %tag, i64 noundef %tag_length) #0 {
entry:
  %retval = alloca i32, align 4
  %operation.addr = alloca %struct.psa_aead_operation_s*, align 8
  %plaintext.addr = alloca i8*, align 8
  %plaintext_size.addr = alloca i64, align 8
  %plaintext_length.addr = alloca i64*, align 8
  %tag.addr = alloca i8*, align 8
  %tag_length.addr = alloca i64, align 8
  %status = alloca i32, align 4
  %check_tag = alloca [16 x i8], align 16
  %check_tag_length = alloca i64, align 8
  store %struct.psa_aead_operation_s* %operation, %struct.psa_aead_operation_s** %operation.addr, align 8
  store i8* %plaintext, i8** %plaintext.addr, align 8
  store i64 %plaintext_size, i64* %plaintext_size.addr, align 8
  store i64* %plaintext_length, i64** %plaintext_length.addr, align 8
  store i8* %tag, i8** %tag.addr, align 8
  store i64 %tag_length, i64* %tag_length.addr, align 8
  %0 = load %struct.psa_aead_operation_s*, %struct.psa_aead_operation_s** %operation.addr, align 8
  %id = getelementptr inbounds %struct.psa_aead_operation_s, %struct.psa_aead_operation_s* %0, i32 0, i32 0
  %1 = load i32, i32* %id, align 8
  switch i32 %1, label %sw.epilog [
    i32 1, label %sw.bb
  ]

sw.bb:                                            ; preds = %entry
  store i32 -151, i32* %status, align 4
  %2 = load %struct.psa_aead_operation_s*, %struct.psa_aead_operation_s** %operation.addr, align 8
  %ctx = getelementptr inbounds %struct.psa_aead_operation_s, %struct.psa_aead_operation_s* %2, i32 0, i32 6
  %mbedtls_ctx = bitcast %union.psa_driver_aead_context_t* %ctx to %struct.mbedtls_psa_aead_operation_t*
  %3 = load i8*, i8** %plaintext.addr, align 8
  %4 = load i64, i64* %plaintext_size.addr, align 8
  %5 = load i64*, i64** %plaintext_length.addr, align 8
  %arraydecay = getelementptr inbounds [16 x i8], [16 x i8]* %check_tag, i64 0, i64 0
  %call = call i32 @mbedtls_psa_aead_finish(%struct.mbedtls_psa_aead_operation_t* noundef %mbedtls_ctx, i8* noundef %3, i64 noundef %4, i64* noundef %5, i8* noundef %arraydecay, i64 noundef 16, i64* noundef %check_tag_length) #2
  store i32 %call, i32* %status, align 4
  %6 = load i32, i32* %status, align 4
  %cmp = icmp eq i32 %6, 0
  br i1 %cmp, label %if.then, label %if.end6

if.then:                                          ; preds = %sw.bb
  %7 = load i64, i64* %tag_length.addr, align 8
  %8 = load i64, i64* %check_tag_length, align 8
  %cmp1 = icmp ne i64 %7, %8
  br i1 %cmp1, label %if.then5, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then
  %9 = load i8*, i8** %tag.addr, align 8
  %arraydecay2 = getelementptr inbounds [16 x i8], [16 x i8]* %check_tag, i64 0, i64 0
  %10 = load i64, i64* %tag_length.addr, align 8
  %call3 = call i32 @mbedtls_psa_safer_memcmp(i8* noundef %9, i8* noundef %arraydecay2, i64 noundef %10) #2
  %cmp4 = icmp ne i32 %call3, 0
  br i1 %cmp4, label %if.then5, label %if.end

if.then5:                                         ; preds = %lor.lhs.false, %if.then
  store i32 -149, i32* %status, align 4
  br label %if.end

if.end:                                           ; preds = %if.then5, %lor.lhs.false
  br label %if.end6

if.end6:                                          ; preds = %if.end, %sw.bb
  %arraydecay7 = getelementptr inbounds [16 x i8], [16 x i8]* %check_tag, i64 0, i64 0
  call void @mbedtls_platform_zeroize(i8* noundef %arraydecay7, i64 noundef 16) #2
  %11 = load i32, i32* %status, align 4
  store i32 %11, i32* %retval, align 4
  br label %return

sw.epilog:                                        ; preds = %entry
  %12 = load i8*, i8** %plaintext.addr, align 8
  %13 = load i64, i64* %plaintext_size.addr, align 8
  %14 = load i64*, i64** %plaintext_length.addr, align 8
  %15 = load i8*, i8** %tag.addr, align 8
  %16 = load i64, i64* %tag_length.addr, align 8
  store i32 -135, i32* %retval, align 4
  br label %return

return:                                           ; preds = %sw.epilog, %if.end6
  %17 = load i32, i32* %retval, align 4
  ret i32 %17
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
define dso_local i32 @psa_driver_wrapper_aead_abort(%struct.psa_aead_operation_s* noundef %operation) #0 {
entry:
  %retval = alloca i32, align 4
  %operation.addr = alloca %struct.psa_aead_operation_s*, align 8
  store %struct.psa_aead_operation_s* %operation, %struct.psa_aead_operation_s** %operation.addr, align 8
  %0 = load %struct.psa_aead_operation_s*, %struct.psa_aead_operation_s** %operation.addr, align 8
  %id = getelementptr inbounds %struct.psa_aead_operation_s, %struct.psa_aead_operation_s* %0, i32 0, i32 0
  %1 = load i32, i32* %id, align 8
  switch i32 %1, label %sw.epilog [
    i32 1, label %sw.bb
  ]

sw.bb:                                            ; preds = %entry
  %2 = load %struct.psa_aead_operation_s*, %struct.psa_aead_operation_s** %operation.addr, align 8
  %ctx = getelementptr inbounds %struct.psa_aead_operation_s, %struct.psa_aead_operation_s* %2, i32 0, i32 6
  %mbedtls_ctx = bitcast %union.psa_driver_aead_context_t* %ctx to %struct.mbedtls_psa_aead_operation_t*
  %call = call i32 @mbedtls_psa_aead_abort(%struct.mbedtls_psa_aead_operation_t* noundef %mbedtls_ctx) #2
  store i32 %call, i32* %retval, align 4
  br label %return

sw.epilog:                                        ; preds = %entry
  store i32 -135, i32* %retval, align 4
  br label %return

return:                                           ; preds = %sw.epilog, %sw.bb
  %3 = load i32, i32* %retval, align 4
  ret i32 %3
}

declare dso_local i32 @mbedtls_psa_aead_abort(%struct.mbedtls_psa_aead_operation_t* noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @psa_driver_wrapper_mac_compute(%struct.psa_key_attributes_s* noundef %attributes, i8* noundef %key_buffer, i64 noundef %key_buffer_size, i32 noundef %alg, i8* noundef %input, i64 noundef %input_length, i8* noundef %mac, i64 noundef %mac_size, i64* noundef %mac_length) #0 {
entry:
  %retval = alloca i32, align 4
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
  %location = alloca i32, align 4
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
  %0 = load %struct.psa_key_attributes_s*, %struct.psa_key_attributes_s** %attributes.addr, align 8
  %core = getelementptr inbounds %struct.psa_key_attributes_s, %struct.psa_key_attributes_s* %0, i32 0, i32 0
  %lifetime = getelementptr inbounds %struct.psa_core_key_attributes_t, %struct.psa_core_key_attributes_t* %core, i32 0, i32 2
  %1 = load i32, i32* %lifetime, align 4
  %shr = lshr i32 %1, 8
  store i32 %shr, i32* %location, align 4
  %2 = load i32, i32* %location, align 4
  switch i32 %2, label %sw.default [
    i32 0, label %sw.bb
  ]

sw.bb:                                            ; preds = %entry
  %3 = load %struct.psa_key_attributes_s*, %struct.psa_key_attributes_s** %attributes.addr, align 8
  %4 = load i8*, i8** %key_buffer.addr, align 8
  %5 = load i64, i64* %key_buffer_size.addr, align 8
  %6 = load i32, i32* %alg.addr, align 4
  %7 = load i8*, i8** %input.addr, align 8
  %8 = load i64, i64* %input_length.addr, align 8
  %9 = load i8*, i8** %mac.addr, align 8
  %10 = load i64, i64* %mac_size.addr, align 8
  %11 = load i64*, i64** %mac_length.addr, align 8
  %call = call i32 @mbedtls_psa_mac_compute(%struct.psa_key_attributes_s* noundef %3, i8* noundef %4, i64 noundef %5, i32 noundef %6, i8* noundef %7, i64 noundef %8, i8* noundef %9, i64 noundef %10, i64* noundef %11) #2
  store i32 %call, i32* %status, align 4
  %12 = load i32, i32* %status, align 4
  %cmp = icmp ne i32 %12, -134
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb
  %13 = load i32, i32* %status, align 4
  store i32 %13, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %sw.bb
  store i32 -134, i32* %retval, align 4
  br label %return

sw.default:                                       ; preds = %entry
  %14 = load i8*, i8** %key_buffer.addr, align 8
  %15 = load i64, i64* %key_buffer_size.addr, align 8
  %16 = load i32, i32* %alg.addr, align 4
  %17 = load i8*, i8** %input.addr, align 8
  %18 = load i64, i64* %input_length.addr, align 8
  %19 = load i8*, i8** %mac.addr, align 8
  %20 = load i64, i64* %mac_size.addr, align 8
  %21 = load i64*, i64** %mac_length.addr, align 8
  %22 = load i32, i32* %status, align 4
  store i32 -135, i32* %retval, align 4
  br label %return

return:                                           ; preds = %sw.default, %if.end, %if.then
  %23 = load i32, i32* %retval, align 4
  ret i32 %23
}

declare dso_local i32 @mbedtls_psa_mac_compute(%struct.psa_key_attributes_s* noundef, i8* noundef, i64 noundef, i32 noundef, i8* noundef, i64 noundef, i8* noundef, i64 noundef, i64* noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @psa_driver_wrapper_mac_sign_setup(%struct.psa_mac_operation_s* noundef %operation, %struct.psa_key_attributes_s* noundef %attributes, i8* noundef %key_buffer, i64 noundef %key_buffer_size, i32 noundef %alg) #0 {
entry:
  %retval = alloca i32, align 4
  %operation.addr = alloca %struct.psa_mac_operation_s*, align 8
  %attributes.addr = alloca %struct.psa_key_attributes_s*, align 8
  %key_buffer.addr = alloca i8*, align 8
  %key_buffer_size.addr = alloca i64, align 8
  %alg.addr = alloca i32, align 4
  %status = alloca i32, align 4
  %location = alloca i32, align 4
  store %struct.psa_mac_operation_s* %operation, %struct.psa_mac_operation_s** %operation.addr, align 8
  store %struct.psa_key_attributes_s* %attributes, %struct.psa_key_attributes_s** %attributes.addr, align 8
  store i8* %key_buffer, i8** %key_buffer.addr, align 8
  store i64 %key_buffer_size, i64* %key_buffer_size.addr, align 8
  store i32 %alg, i32* %alg.addr, align 4
  store i32 -151, i32* %status, align 4
  %0 = load %struct.psa_key_attributes_s*, %struct.psa_key_attributes_s** %attributes.addr, align 8
  %core = getelementptr inbounds %struct.psa_key_attributes_s, %struct.psa_key_attributes_s* %0, i32 0, i32 0
  %lifetime = getelementptr inbounds %struct.psa_core_key_attributes_t, %struct.psa_core_key_attributes_t* %core, i32 0, i32 2
  %1 = load i32, i32* %lifetime, align 4
  %shr = lshr i32 %1, 8
  store i32 %shr, i32* %location, align 4
  %2 = load i32, i32* %location, align 4
  switch i32 %2, label %sw.default [
    i32 0, label %sw.bb
  ]

sw.bb:                                            ; preds = %entry
  %3 = load %struct.psa_mac_operation_s*, %struct.psa_mac_operation_s** %operation.addr, align 8
  %ctx = getelementptr inbounds %struct.psa_mac_operation_s, %struct.psa_mac_operation_s* %3, i32 0, i32 3
  %mbedtls_ctx = bitcast %union.psa_driver_mac_context_t* %ctx to %struct.mbedtls_psa_mac_operation_t*
  %4 = load %struct.psa_key_attributes_s*, %struct.psa_key_attributes_s** %attributes.addr, align 8
  %5 = load i8*, i8** %key_buffer.addr, align 8
  %6 = load i64, i64* %key_buffer_size.addr, align 8
  %7 = load i32, i32* %alg.addr, align 4
  %call = call i32 @mbedtls_psa_mac_sign_setup(%struct.mbedtls_psa_mac_operation_t* noundef %mbedtls_ctx, %struct.psa_key_attributes_s* noundef %4, i8* noundef %5, i64 noundef %6, i32 noundef %7) #2
  store i32 %call, i32* %status, align 4
  %8 = load i32, i32* %status, align 4
  %cmp = icmp eq i32 %8, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb
  %9 = load %struct.psa_mac_operation_s*, %struct.psa_mac_operation_s** %operation.addr, align 8
  %id = getelementptr inbounds %struct.psa_mac_operation_s, %struct.psa_mac_operation_s* %9, i32 0, i32 0
  store i32 1, i32* %id, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.bb
  %10 = load i32, i32* %status, align 4
  %cmp1 = icmp ne i32 %10, -134
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  %11 = load i32, i32* %status, align 4
  store i32 %11, i32* %retval, align 4
  br label %return

if.end3:                                          ; preds = %if.end
  store i32 -134, i32* %retval, align 4
  br label %return

sw.default:                                       ; preds = %entry
  %12 = load i32, i32* %status, align 4
  %13 = load %struct.psa_mac_operation_s*, %struct.psa_mac_operation_s** %operation.addr, align 8
  %14 = load i8*, i8** %key_buffer.addr, align 8
  %15 = load i64, i64* %key_buffer_size.addr, align 8
  %16 = load i32, i32* %alg.addr, align 4
  store i32 -135, i32* %retval, align 4
  br label %return

return:                                           ; preds = %sw.default, %if.end3, %if.then2
  %17 = load i32, i32* %retval, align 4
  ret i32 %17
}

declare dso_local i32 @mbedtls_psa_mac_sign_setup(%struct.mbedtls_psa_mac_operation_t* noundef, %struct.psa_key_attributes_s* noundef, i8* noundef, i64 noundef, i32 noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @psa_driver_wrapper_mac_verify_setup(%struct.psa_mac_operation_s* noundef %operation, %struct.psa_key_attributes_s* noundef %attributes, i8* noundef %key_buffer, i64 noundef %key_buffer_size, i32 noundef %alg) #0 {
entry:
  %retval = alloca i32, align 4
  %operation.addr = alloca %struct.psa_mac_operation_s*, align 8
  %attributes.addr = alloca %struct.psa_key_attributes_s*, align 8
  %key_buffer.addr = alloca i8*, align 8
  %key_buffer_size.addr = alloca i64, align 8
  %alg.addr = alloca i32, align 4
  %status = alloca i32, align 4
  %location = alloca i32, align 4
  store %struct.psa_mac_operation_s* %operation, %struct.psa_mac_operation_s** %operation.addr, align 8
  store %struct.psa_key_attributes_s* %attributes, %struct.psa_key_attributes_s** %attributes.addr, align 8
  store i8* %key_buffer, i8** %key_buffer.addr, align 8
  store i64 %key_buffer_size, i64* %key_buffer_size.addr, align 8
  store i32 %alg, i32* %alg.addr, align 4
  store i32 -151, i32* %status, align 4
  %0 = load %struct.psa_key_attributes_s*, %struct.psa_key_attributes_s** %attributes.addr, align 8
  %core = getelementptr inbounds %struct.psa_key_attributes_s, %struct.psa_key_attributes_s* %0, i32 0, i32 0
  %lifetime = getelementptr inbounds %struct.psa_core_key_attributes_t, %struct.psa_core_key_attributes_t* %core, i32 0, i32 2
  %1 = load i32, i32* %lifetime, align 4
  %shr = lshr i32 %1, 8
  store i32 %shr, i32* %location, align 4
  %2 = load i32, i32* %location, align 4
  switch i32 %2, label %sw.default [
    i32 0, label %sw.bb
  ]

sw.bb:                                            ; preds = %entry
  %3 = load %struct.psa_mac_operation_s*, %struct.psa_mac_operation_s** %operation.addr, align 8
  %ctx = getelementptr inbounds %struct.psa_mac_operation_s, %struct.psa_mac_operation_s* %3, i32 0, i32 3
  %mbedtls_ctx = bitcast %union.psa_driver_mac_context_t* %ctx to %struct.mbedtls_psa_mac_operation_t*
  %4 = load %struct.psa_key_attributes_s*, %struct.psa_key_attributes_s** %attributes.addr, align 8
  %5 = load i8*, i8** %key_buffer.addr, align 8
  %6 = load i64, i64* %key_buffer_size.addr, align 8
  %7 = load i32, i32* %alg.addr, align 4
  %call = call i32 @mbedtls_psa_mac_verify_setup(%struct.mbedtls_psa_mac_operation_t* noundef %mbedtls_ctx, %struct.psa_key_attributes_s* noundef %4, i8* noundef %5, i64 noundef %6, i32 noundef %7) #2
  store i32 %call, i32* %status, align 4
  %8 = load i32, i32* %status, align 4
  %cmp = icmp eq i32 %8, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb
  %9 = load %struct.psa_mac_operation_s*, %struct.psa_mac_operation_s** %operation.addr, align 8
  %id = getelementptr inbounds %struct.psa_mac_operation_s, %struct.psa_mac_operation_s* %9, i32 0, i32 0
  store i32 1, i32* %id, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.bb
  %10 = load i32, i32* %status, align 4
  %cmp1 = icmp ne i32 %10, -134
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  %11 = load i32, i32* %status, align 4
  store i32 %11, i32* %retval, align 4
  br label %return

if.end3:                                          ; preds = %if.end
  store i32 -134, i32* %retval, align 4
  br label %return

sw.default:                                       ; preds = %entry
  %12 = load i32, i32* %status, align 4
  %13 = load %struct.psa_mac_operation_s*, %struct.psa_mac_operation_s** %operation.addr, align 8
  %14 = load i8*, i8** %key_buffer.addr, align 8
  %15 = load i64, i64* %key_buffer_size.addr, align 8
  %16 = load i32, i32* %alg.addr, align 4
  store i32 -135, i32* %retval, align 4
  br label %return

return:                                           ; preds = %sw.default, %if.end3, %if.then2
  %17 = load i32, i32* %retval, align 4
  ret i32 %17
}

declare dso_local i32 @mbedtls_psa_mac_verify_setup(%struct.mbedtls_psa_mac_operation_t* noundef, %struct.psa_key_attributes_s* noundef, i8* noundef, i64 noundef, i32 noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @psa_driver_wrapper_mac_update(%struct.psa_mac_operation_s* noundef %operation, i8* noundef %input, i64 noundef %input_length) #0 {
entry:
  %retval = alloca i32, align 4
  %operation.addr = alloca %struct.psa_mac_operation_s*, align 8
  %input.addr = alloca i8*, align 8
  %input_length.addr = alloca i64, align 8
  store %struct.psa_mac_operation_s* %operation, %struct.psa_mac_operation_s** %operation.addr, align 8
  store i8* %input, i8** %input.addr, align 8
  store i64 %input_length, i64* %input_length.addr, align 8
  %0 = load %struct.psa_mac_operation_s*, %struct.psa_mac_operation_s** %operation.addr, align 8
  %id = getelementptr inbounds %struct.psa_mac_operation_s, %struct.psa_mac_operation_s* %0, i32 0, i32 0
  %1 = load i32, i32* %id, align 8
  switch i32 %1, label %sw.default [
    i32 1, label %sw.bb
  ]

sw.bb:                                            ; preds = %entry
  %2 = load %struct.psa_mac_operation_s*, %struct.psa_mac_operation_s** %operation.addr, align 8
  %ctx = getelementptr inbounds %struct.psa_mac_operation_s, %struct.psa_mac_operation_s* %2, i32 0, i32 3
  %mbedtls_ctx = bitcast %union.psa_driver_mac_context_t* %ctx to %struct.mbedtls_psa_mac_operation_t*
  %3 = load i8*, i8** %input.addr, align 8
  %4 = load i64, i64* %input_length.addr, align 8
  %call = call i32 @mbedtls_psa_mac_update(%struct.mbedtls_psa_mac_operation_t* noundef %mbedtls_ctx, i8* noundef %3, i64 noundef %4) #2
  store i32 %call, i32* %retval, align 4
  br label %return

sw.default:                                       ; preds = %entry
  %5 = load i8*, i8** %input.addr, align 8
  %6 = load i64, i64* %input_length.addr, align 8
  store i32 -135, i32* %retval, align 4
  br label %return

return:                                           ; preds = %sw.default, %sw.bb
  %7 = load i32, i32* %retval, align 4
  ret i32 %7
}

declare dso_local i32 @mbedtls_psa_mac_update(%struct.mbedtls_psa_mac_operation_t* noundef, i8* noundef, i64 noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @psa_driver_wrapper_mac_sign_finish(%struct.psa_mac_operation_s* noundef %operation, i8* noundef %mac, i64 noundef %mac_size, i64* noundef %mac_length) #0 {
entry:
  %retval = alloca i32, align 4
  %operation.addr = alloca %struct.psa_mac_operation_s*, align 8
  %mac.addr = alloca i8*, align 8
  %mac_size.addr = alloca i64, align 8
  %mac_length.addr = alloca i64*, align 8
  store %struct.psa_mac_operation_s* %operation, %struct.psa_mac_operation_s** %operation.addr, align 8
  store i8* %mac, i8** %mac.addr, align 8
  store i64 %mac_size, i64* %mac_size.addr, align 8
  store i64* %mac_length, i64** %mac_length.addr, align 8
  %0 = load %struct.psa_mac_operation_s*, %struct.psa_mac_operation_s** %operation.addr, align 8
  %id = getelementptr inbounds %struct.psa_mac_operation_s, %struct.psa_mac_operation_s* %0, i32 0, i32 0
  %1 = load i32, i32* %id, align 8
  switch i32 %1, label %sw.default [
    i32 1, label %sw.bb
  ]

sw.bb:                                            ; preds = %entry
  %2 = load %struct.psa_mac_operation_s*, %struct.psa_mac_operation_s** %operation.addr, align 8
  %ctx = getelementptr inbounds %struct.psa_mac_operation_s, %struct.psa_mac_operation_s* %2, i32 0, i32 3
  %mbedtls_ctx = bitcast %union.psa_driver_mac_context_t* %ctx to %struct.mbedtls_psa_mac_operation_t*
  %3 = load i8*, i8** %mac.addr, align 8
  %4 = load i64, i64* %mac_size.addr, align 8
  %5 = load i64*, i64** %mac_length.addr, align 8
  %call = call i32 @mbedtls_psa_mac_sign_finish(%struct.mbedtls_psa_mac_operation_t* noundef %mbedtls_ctx, i8* noundef %3, i64 noundef %4, i64* noundef %5) #2
  store i32 %call, i32* %retval, align 4
  br label %return

sw.default:                                       ; preds = %entry
  %6 = load i8*, i8** %mac.addr, align 8
  %7 = load i64, i64* %mac_size.addr, align 8
  %8 = load i64*, i64** %mac_length.addr, align 8
  store i32 -135, i32* %retval, align 4
  br label %return

return:                                           ; preds = %sw.default, %sw.bb
  %9 = load i32, i32* %retval, align 4
  ret i32 %9
}

declare dso_local i32 @mbedtls_psa_mac_sign_finish(%struct.mbedtls_psa_mac_operation_t* noundef, i8* noundef, i64 noundef, i64* noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @psa_driver_wrapper_mac_verify_finish(%struct.psa_mac_operation_s* noundef %operation, i8* noundef %mac, i64 noundef %mac_length) #0 {
entry:
  %retval = alloca i32, align 4
  %operation.addr = alloca %struct.psa_mac_operation_s*, align 8
  %mac.addr = alloca i8*, align 8
  %mac_length.addr = alloca i64, align 8
  store %struct.psa_mac_operation_s* %operation, %struct.psa_mac_operation_s** %operation.addr, align 8
  store i8* %mac, i8** %mac.addr, align 8
  store i64 %mac_length, i64* %mac_length.addr, align 8
  %0 = load %struct.psa_mac_operation_s*, %struct.psa_mac_operation_s** %operation.addr, align 8
  %id = getelementptr inbounds %struct.psa_mac_operation_s, %struct.psa_mac_operation_s* %0, i32 0, i32 0
  %1 = load i32, i32* %id, align 8
  switch i32 %1, label %sw.default [
    i32 1, label %sw.bb
  ]

sw.bb:                                            ; preds = %entry
  %2 = load %struct.psa_mac_operation_s*, %struct.psa_mac_operation_s** %operation.addr, align 8
  %ctx = getelementptr inbounds %struct.psa_mac_operation_s, %struct.psa_mac_operation_s* %2, i32 0, i32 3
  %mbedtls_ctx = bitcast %union.psa_driver_mac_context_t* %ctx to %struct.mbedtls_psa_mac_operation_t*
  %3 = load i8*, i8** %mac.addr, align 8
  %4 = load i64, i64* %mac_length.addr, align 8
  %call = call i32 @mbedtls_psa_mac_verify_finish(%struct.mbedtls_psa_mac_operation_t* noundef %mbedtls_ctx, i8* noundef %3, i64 noundef %4) #2
  store i32 %call, i32* %retval, align 4
  br label %return

sw.default:                                       ; preds = %entry
  %5 = load i8*, i8** %mac.addr, align 8
  %6 = load i64, i64* %mac_length.addr, align 8
  store i32 -135, i32* %retval, align 4
  br label %return

return:                                           ; preds = %sw.default, %sw.bb
  %7 = load i32, i32* %retval, align 4
  ret i32 %7
}

declare dso_local i32 @mbedtls_psa_mac_verify_finish(%struct.mbedtls_psa_mac_operation_t* noundef, i8* noundef, i64 noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @psa_driver_wrapper_mac_abort(%struct.psa_mac_operation_s* noundef %operation) #0 {
entry:
  %retval = alloca i32, align 4
  %operation.addr = alloca %struct.psa_mac_operation_s*, align 8
  store %struct.psa_mac_operation_s* %operation, %struct.psa_mac_operation_s** %operation.addr, align 8
  %0 = load %struct.psa_mac_operation_s*, %struct.psa_mac_operation_s** %operation.addr, align 8
  %id = getelementptr inbounds %struct.psa_mac_operation_s, %struct.psa_mac_operation_s* %0, i32 0, i32 0
  %1 = load i32, i32* %id, align 8
  switch i32 %1, label %sw.default [
    i32 1, label %sw.bb
  ]

sw.bb:                                            ; preds = %entry
  %2 = load %struct.psa_mac_operation_s*, %struct.psa_mac_operation_s** %operation.addr, align 8
  %ctx = getelementptr inbounds %struct.psa_mac_operation_s, %struct.psa_mac_operation_s* %2, i32 0, i32 3
  %mbedtls_ctx = bitcast %union.psa_driver_mac_context_t* %ctx to %struct.mbedtls_psa_mac_operation_t*
  %call = call i32 @mbedtls_psa_mac_abort(%struct.mbedtls_psa_mac_operation_t* noundef %mbedtls_ctx) #2
  store i32 %call, i32* %retval, align 4
  br label %return

sw.default:                                       ; preds = %entry
  store i32 -135, i32* %retval, align 4
  br label %return

return:                                           ; preds = %sw.default, %sw.bb
  %3 = load i32, i32* %retval, align 4
  ret i32 %3
}

declare dso_local i32 @mbedtls_psa_mac_abort(%struct.mbedtls_psa_mac_operation_t* noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @psa_driver_wrapper_asymmetric_encrypt(%struct.psa_key_attributes_s* noundef %attributes, i8* noundef %key_buffer, i64 noundef %key_buffer_size, i32 noundef %alg, i8* noundef %input, i64 noundef %input_length, i8* noundef %salt, i64 noundef %salt_length, i8* noundef %output, i64 noundef %output_size, i64* noundef %output_length) #0 {
entry:
  %retval = alloca i32, align 4
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
  %location = alloca i32, align 4
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
  %0 = load %struct.psa_key_attributes_s*, %struct.psa_key_attributes_s** %attributes.addr, align 8
  %core = getelementptr inbounds %struct.psa_key_attributes_s, %struct.psa_key_attributes_s* %0, i32 0, i32 0
  %lifetime = getelementptr inbounds %struct.psa_core_key_attributes_t, %struct.psa_core_key_attributes_t* %core, i32 0, i32 2
  %1 = load i32, i32* %lifetime, align 4
  %shr = lshr i32 %1, 8
  store i32 %shr, i32* %location, align 4
  %2 = load i32, i32* %location, align 4
  switch i32 %2, label %sw.default [
    i32 0, label %sw.bb
  ]

sw.bb:                                            ; preds = %entry
  %3 = load %struct.psa_key_attributes_s*, %struct.psa_key_attributes_s** %attributes.addr, align 8
  %4 = load i8*, i8** %key_buffer.addr, align 8
  %5 = load i64, i64* %key_buffer_size.addr, align 8
  %6 = load i32, i32* %alg.addr, align 4
  %7 = load i8*, i8** %input.addr, align 8
  %8 = load i64, i64* %input_length.addr, align 8
  %9 = load i8*, i8** %salt.addr, align 8
  %10 = load i64, i64* %salt_length.addr, align 8
  %11 = load i8*, i8** %output.addr, align 8
  %12 = load i64, i64* %output_size.addr, align 8
  %13 = load i64*, i64** %output_length.addr, align 8
  %call = call i32 @mbedtls_psa_asymmetric_encrypt(%struct.psa_key_attributes_s* noundef %3, i8* noundef %4, i64 noundef %5, i32 noundef %6, i8* noundef %7, i64 noundef %8, i8* noundef %9, i64 noundef %10, i8* noundef %11, i64 noundef %12, i64* noundef %13) #2
  store i32 %call, i32* %retval, align 4
  br label %return

sw.default:                                       ; preds = %entry
  %14 = load i32, i32* %status, align 4
  %15 = load i8*, i8** %key_buffer.addr, align 8
  %16 = load i64, i64* %key_buffer_size.addr, align 8
  %17 = load i32, i32* %alg.addr, align 4
  %18 = load i8*, i8** %input.addr, align 8
  %19 = load i64, i64* %input_length.addr, align 8
  %20 = load i8*, i8** %salt.addr, align 8
  %21 = load i64, i64* %salt_length.addr, align 8
  %22 = load i8*, i8** %output.addr, align 8
  %23 = load i64, i64* %output_size.addr, align 8
  %24 = load i64*, i64** %output_length.addr, align 8
  store i32 -135, i32* %retval, align 4
  br label %return

return:                                           ; preds = %sw.default, %sw.bb
  %25 = load i32, i32* %retval, align 4
  ret i32 %25
}

declare dso_local i32 @mbedtls_psa_asymmetric_encrypt(%struct.psa_key_attributes_s* noundef, i8* noundef, i64 noundef, i32 noundef, i8* noundef, i64 noundef, i8* noundef, i64 noundef, i8* noundef, i64 noundef, i64* noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @psa_driver_wrapper_asymmetric_decrypt(%struct.psa_key_attributes_s* noundef %attributes, i8* noundef %key_buffer, i64 noundef %key_buffer_size, i32 noundef %alg, i8* noundef %input, i64 noundef %input_length, i8* noundef %salt, i64 noundef %salt_length, i8* noundef %output, i64 noundef %output_size, i64* noundef %output_length) #0 {
entry:
  %retval = alloca i32, align 4
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
  %location = alloca i32, align 4
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
  %0 = load %struct.psa_key_attributes_s*, %struct.psa_key_attributes_s** %attributes.addr, align 8
  %core = getelementptr inbounds %struct.psa_key_attributes_s, %struct.psa_key_attributes_s* %0, i32 0, i32 0
  %lifetime = getelementptr inbounds %struct.psa_core_key_attributes_t, %struct.psa_core_key_attributes_t* %core, i32 0, i32 2
  %1 = load i32, i32* %lifetime, align 4
  %shr = lshr i32 %1, 8
  store i32 %shr, i32* %location, align 4
  %2 = load i32, i32* %location, align 4
  switch i32 %2, label %sw.default [
    i32 0, label %sw.bb
  ]

sw.bb:                                            ; preds = %entry
  %3 = load %struct.psa_key_attributes_s*, %struct.psa_key_attributes_s** %attributes.addr, align 8
  %4 = load i8*, i8** %key_buffer.addr, align 8
  %5 = load i64, i64* %key_buffer_size.addr, align 8
  %6 = load i32, i32* %alg.addr, align 4
  %7 = load i8*, i8** %input.addr, align 8
  %8 = load i64, i64* %input_length.addr, align 8
  %9 = load i8*, i8** %salt.addr, align 8
  %10 = load i64, i64* %salt_length.addr, align 8
  %11 = load i8*, i8** %output.addr, align 8
  %12 = load i64, i64* %output_size.addr, align 8
  %13 = load i64*, i64** %output_length.addr, align 8
  %call = call i32 @mbedtls_psa_asymmetric_decrypt(%struct.psa_key_attributes_s* noundef %3, i8* noundef %4, i64 noundef %5, i32 noundef %6, i8* noundef %7, i64 noundef %8, i8* noundef %9, i64 noundef %10, i8* noundef %11, i64 noundef %12, i64* noundef %13) #2
  store i32 %call, i32* %retval, align 4
  br label %return

sw.default:                                       ; preds = %entry
  %14 = load i32, i32* %status, align 4
  %15 = load i8*, i8** %key_buffer.addr, align 8
  %16 = load i64, i64* %key_buffer_size.addr, align 8
  %17 = load i32, i32* %alg.addr, align 4
  %18 = load i8*, i8** %input.addr, align 8
  %19 = load i64, i64* %input_length.addr, align 8
  %20 = load i8*, i8** %salt.addr, align 8
  %21 = load i64, i64* %salt_length.addr, align 8
  %22 = load i8*, i8** %output.addr, align 8
  %23 = load i64, i64* %output_size.addr, align 8
  %24 = load i64*, i64** %output_length.addr, align 8
  store i32 -135, i32* %retval, align 4
  br label %return

return:                                           ; preds = %sw.default, %sw.bb
  %25 = load i32, i32* %retval, align 4
  ret i32 %25
}

declare dso_local i32 @mbedtls_psa_asymmetric_decrypt(%struct.psa_key_attributes_s* noundef, i8* noundef, i64 noundef, i32 noundef, i8* noundef, i64 noundef, i8* noundef, i64 noundef, i8* noundef, i64 noundef, i64* noundef) #1

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nobuiltin "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.0"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
