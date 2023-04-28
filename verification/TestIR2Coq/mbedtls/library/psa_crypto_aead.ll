; ModuleID = 'psa_crypto_aead.c'
source_filename = "psa_crypto_aead.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.psa_key_attributes_s = type { %struct.psa_core_key_attributes_t, i8*, i64 }
%struct.psa_core_key_attributes_t = type { i16, i16, i32, i32, %struct.psa_key_policy_s, i16 }
%struct.psa_key_policy_s = type { i32, i32, i32 }
%struct.mbedtls_psa_aead_operation_t = type { i32, i16, i8, i8, %union.anon }
%union.anon = type { %struct.mbedtls_gcm_context }
%struct.mbedtls_gcm_context = type { %struct.mbedtls_cipher_context_t, [16 x i64], [16 x i64], i64, i64, [16 x i8], [16 x i8], [16 x i8], i32 }
%struct.mbedtls_cipher_context_t = type { %struct.mbedtls_cipher_info_t*, i32, i32, void (i8*, i64, i64)*, i32 (i8*, i64, i64*)*, [16 x i8], i64, [16 x i8], i64, i8*, %struct.mbedtls_cmac_context_t* }
%struct.mbedtls_cipher_info_t = type { i32, i32, i32, i8*, i32, i32, i32, %struct.mbedtls_cipher_base_t* }
%struct.mbedtls_cipher_base_t = type opaque
%struct.mbedtls_cmac_context_t = type { [16 x i8], [16 x i8], i64 }
%struct.mbedtls_ccm_context = type { [16 x i8], [16 x i8], %struct.mbedtls_cipher_context_t, i64, i64, i64, i64, i8, i8, i32 }
%struct.mbedtls_chachapoly_context = type { %struct.mbedtls_chacha20_context, %struct.mbedtls_poly1305_context, i64, i64, i32, i32 }
%struct.mbedtls_chacha20_context = type { [16 x i32], [64 x i8], i64 }
%struct.mbedtls_poly1305_context = type { [4 x i32], [4 x i32], [5 x i32], [16 x i8], i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_psa_aead_encrypt(%struct.psa_key_attributes_s* noundef %attributes, i8* noundef %key_buffer, i64 noundef %key_buffer_size, i32 noundef %alg, i8* noundef %nonce, i64 noundef %nonce_length, i8* noundef %additional_data, i64 noundef %additional_data_length, i8* noundef %plaintext, i64 noundef %plaintext_length, i8* noundef %ciphertext, i64 noundef %ciphertext_size, i64* noundef %ciphertext_length) #0 {
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
  %operation = alloca %struct.mbedtls_psa_aead_operation_t, align 8
  %tag = alloca i8*, align 8
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
  %0 = bitcast %struct.mbedtls_psa_aead_operation_t* %operation to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %0, i8 0, i64 432, i1 false)
  %1 = bitcast i8* %0 to { i32, i16, i8, i8, { i32, [420 x i8] } }*
  %2 = getelementptr inbounds { i32, i16, i8, i8, { i32, [420 x i8] } }, { i32, i16, i8, i8, { i32, [420 x i8] } }* %1, i32 0, i32 4
  %3 = load %struct.psa_key_attributes_s*, %struct.psa_key_attributes_s** %attributes.addr, align 8
  %4 = load i8*, i8** %key_buffer.addr, align 8
  %5 = load i64, i64* %key_buffer_size.addr, align 8
  %6 = load i32, i32* %alg.addr, align 4
  %call = call i32 @psa_aead_setup(%struct.mbedtls_psa_aead_operation_t* noundef %operation, %struct.psa_key_attributes_s* noundef %3, i8* noundef %4, i64 noundef %5, i32 noundef %6) #3
  store i32 %call, i32* %status, align 4
  %7 = load i32, i32* %status, align 4
  %cmp = icmp ne i32 %7, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %exit

if.end:                                           ; preds = %entry
  %8 = load i64, i64* %ciphertext_size.addr, align 8
  %9 = load i64, i64* %plaintext_length.addr, align 8
  %tag_length = getelementptr inbounds %struct.mbedtls_psa_aead_operation_t, %struct.mbedtls_psa_aead_operation_t* %operation, i32 0, i32 3
  %10 = load i8, i8* %tag_length, align 1
  %conv = zext i8 %10 to i64
  %add = add i64 %9, %conv
  %cmp1 = icmp ult i64 %8, %add
  br i1 %cmp1, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  store i32 -138, i32* %status, align 4
  br label %exit

if.end4:                                          ; preds = %if.end
  %11 = load i8*, i8** %ciphertext.addr, align 8
  %12 = load i64, i64* %plaintext_length.addr, align 8
  %add.ptr = getelementptr inbounds i8, i8* %11, i64 %12
  store i8* %add.ptr, i8** %tag, align 8
  %alg5 = getelementptr inbounds %struct.mbedtls_psa_aead_operation_t, %struct.mbedtls_psa_aead_operation_t* %operation, i32 0, i32 0
  %13 = load i32, i32* %alg5, align 8
  %cmp6 = icmp eq i32 %13, 89129216
  br i1 %cmp6, label %if.then8, label %if.else

if.then8:                                         ; preds = %if.end4
  %ctx = getelementptr inbounds %struct.mbedtls_psa_aead_operation_t, %struct.mbedtls_psa_aead_operation_t* %operation, i32 0, i32 4
  %ccm = bitcast %union.anon* %ctx to %struct.mbedtls_ccm_context*
  %14 = load i64, i64* %plaintext_length.addr, align 8
  %15 = load i8*, i8** %nonce.addr, align 8
  %16 = load i64, i64* %nonce_length.addr, align 8
  %17 = load i8*, i8** %additional_data.addr, align 8
  %18 = load i64, i64* %additional_data_length.addr, align 8
  %19 = load i8*, i8** %plaintext.addr, align 8
  %20 = load i8*, i8** %ciphertext.addr, align 8
  %21 = load i8*, i8** %tag, align 8
  %tag_length9 = getelementptr inbounds %struct.mbedtls_psa_aead_operation_t, %struct.mbedtls_psa_aead_operation_t* %operation, i32 0, i32 3
  %22 = load i8, i8* %tag_length9, align 1
  %conv10 = zext i8 %22 to i64
  %call11 = call i32 @mbedtls_ccm_encrypt_and_tag(%struct.mbedtls_ccm_context* noundef %ccm, i64 noundef %14, i8* noundef %15, i64 noundef %16, i8* noundef %17, i64 noundef %18, i8* noundef %19, i8* noundef %20, i8* noundef %21, i64 noundef %conv10) #3
  %call12 = call i32 @mbedtls_to_psa_error(i32 noundef %call11) #3
  store i32 %call12, i32* %status, align 4
  br label %if.end39

if.else:                                          ; preds = %if.end4
  %alg13 = getelementptr inbounds %struct.mbedtls_psa_aead_operation_t, %struct.mbedtls_psa_aead_operation_t* %operation, i32 0, i32 0
  %23 = load i32, i32* %alg13, align 8
  %cmp14 = icmp eq i32 %23, 89129472
  br i1 %cmp14, label %if.then16, label %if.else22

if.then16:                                        ; preds = %if.else
  %ctx17 = getelementptr inbounds %struct.mbedtls_psa_aead_operation_t, %struct.mbedtls_psa_aead_operation_t* %operation, i32 0, i32 4
  %gcm = bitcast %union.anon* %ctx17 to %struct.mbedtls_gcm_context*
  %24 = load i64, i64* %plaintext_length.addr, align 8
  %25 = load i8*, i8** %nonce.addr, align 8
  %26 = load i64, i64* %nonce_length.addr, align 8
  %27 = load i8*, i8** %additional_data.addr, align 8
  %28 = load i64, i64* %additional_data_length.addr, align 8
  %29 = load i8*, i8** %plaintext.addr, align 8
  %30 = load i8*, i8** %ciphertext.addr, align 8
  %tag_length18 = getelementptr inbounds %struct.mbedtls_psa_aead_operation_t, %struct.mbedtls_psa_aead_operation_t* %operation, i32 0, i32 3
  %31 = load i8, i8* %tag_length18, align 1
  %conv19 = zext i8 %31 to i64
  %32 = load i8*, i8** %tag, align 8
  %call20 = call i32 @mbedtls_gcm_crypt_and_tag(%struct.mbedtls_gcm_context* noundef %gcm, i32 noundef 1, i64 noundef %24, i8* noundef %25, i64 noundef %26, i8* noundef %27, i64 noundef %28, i8* noundef %29, i8* noundef %30, i64 noundef %conv19, i8* noundef %32) #3
  %call21 = call i32 @mbedtls_to_psa_error(i32 noundef %call20) #3
  store i32 %call21, i32* %status, align 4
  br label %if.end38

if.else22:                                        ; preds = %if.else
  %alg23 = getelementptr inbounds %struct.mbedtls_psa_aead_operation_t, %struct.mbedtls_psa_aead_operation_t* %operation, i32 0, i32 0
  %33 = load i32, i32* %alg23, align 8
  %cmp24 = icmp eq i32 %33, 84935936
  br i1 %cmp24, label %if.then26, label %if.else36

if.then26:                                        ; preds = %if.else22
  %tag_length27 = getelementptr inbounds %struct.mbedtls_psa_aead_operation_t, %struct.mbedtls_psa_aead_operation_t* %operation, i32 0, i32 3
  %34 = load i8, i8* %tag_length27, align 1
  %conv28 = zext i8 %34 to i32
  %cmp29 = icmp ne i32 %conv28, 16
  br i1 %cmp29, label %if.then31, label %if.end32

if.then31:                                        ; preds = %if.then26
  store i32 -134, i32* %status, align 4
  br label %exit

if.end32:                                         ; preds = %if.then26
  %ctx33 = getelementptr inbounds %struct.mbedtls_psa_aead_operation_t, %struct.mbedtls_psa_aead_operation_t* %operation, i32 0, i32 4
  %chachapoly = bitcast %union.anon* %ctx33 to %struct.mbedtls_chachapoly_context*
  %35 = load i64, i64* %plaintext_length.addr, align 8
  %36 = load i8*, i8** %nonce.addr, align 8
  %37 = load i8*, i8** %additional_data.addr, align 8
  %38 = load i64, i64* %additional_data_length.addr, align 8
  %39 = load i8*, i8** %plaintext.addr, align 8
  %40 = load i8*, i8** %ciphertext.addr, align 8
  %41 = load i8*, i8** %tag, align 8
  %call34 = call i32 @mbedtls_chachapoly_encrypt_and_tag(%struct.mbedtls_chachapoly_context* noundef %chachapoly, i64 noundef %35, i8* noundef %36, i8* noundef %37, i64 noundef %38, i8* noundef %39, i8* noundef %40, i8* noundef %41) #3
  %call35 = call i32 @mbedtls_to_psa_error(i32 noundef %call34) #3
  store i32 %call35, i32* %status, align 4
  br label %if.end37

if.else36:                                        ; preds = %if.else22
  %42 = load i8*, i8** %tag, align 8
  %43 = load i8*, i8** %nonce.addr, align 8
  %44 = load i64, i64* %nonce_length.addr, align 8
  %45 = load i8*, i8** %additional_data.addr, align 8
  %46 = load i64, i64* %additional_data_length.addr, align 8
  %47 = load i8*, i8** %plaintext.addr, align 8
  store i32 -134, i32* %retval, align 4
  br label %return

if.end37:                                         ; preds = %if.end32
  br label %if.end38

if.end38:                                         ; preds = %if.end37, %if.then16
  br label %if.end39

if.end39:                                         ; preds = %if.end38, %if.then8
  %48 = load i32, i32* %status, align 4
  %cmp40 = icmp eq i32 %48, 0
  br i1 %cmp40, label %if.then42, label %if.end46

if.then42:                                        ; preds = %if.end39
  %49 = load i64, i64* %plaintext_length.addr, align 8
  %tag_length43 = getelementptr inbounds %struct.mbedtls_psa_aead_operation_t, %struct.mbedtls_psa_aead_operation_t* %operation, i32 0, i32 3
  %50 = load i8, i8* %tag_length43, align 1
  %conv44 = zext i8 %50 to i64
  %add45 = add i64 %49, %conv44
  %51 = load i64*, i64** %ciphertext_length.addr, align 8
  store i64 %add45, i64* %51, align 8
  br label %if.end46

if.end46:                                         ; preds = %if.then42, %if.end39
  br label %exit

exit:                                             ; preds = %if.end46, %if.then31, %if.then3, %if.then
  %call47 = call i32 @mbedtls_psa_aead_abort(%struct.mbedtls_psa_aead_operation_t* noundef %operation) #3
  %52 = load i32, i32* %status, align 4
  store i32 %52, i32* %retval, align 4
  br label %return

return:                                           ; preds = %exit, %if.else36
  %53 = load i32, i32* %retval, align 4
  ret i32 %53
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @psa_aead_setup(%struct.mbedtls_psa_aead_operation_t* noundef %operation, %struct.psa_key_attributes_s* noundef %attributes, i8* noundef %key_buffer, i64 noundef %key_buffer_size, i32 noundef %alg) #0 {
entry:
  %retval = alloca i32, align 4
  %operation.addr = alloca %struct.mbedtls_psa_aead_operation_t*, align 8
  %attributes.addr = alloca %struct.psa_key_attributes_s*, align 8
  %key_buffer.addr = alloca i8*, align 8
  %key_buffer_size.addr = alloca i64, align 8
  %alg.addr = alloca i32, align 4
  %status = alloca i32, align 4
  %key_bits = alloca i64, align 8
  %cipher_info = alloca %struct.mbedtls_cipher_info_t*, align 8
  %cipher_id = alloca i32, align 4
  %full_tag_length = alloca i64, align 8
  store %struct.mbedtls_psa_aead_operation_t* %operation, %struct.mbedtls_psa_aead_operation_t** %operation.addr, align 8
  store %struct.psa_key_attributes_s* %attributes, %struct.psa_key_attributes_s** %attributes.addr, align 8
  store i8* %key_buffer, i8** %key_buffer.addr, align 8
  store i64 %key_buffer_size, i64* %key_buffer_size.addr, align 8
  store i32 %alg, i32* %alg.addr, align 4
  store i32 -151, i32* %status, align 4
  store i64 0, i64* %full_tag_length, align 8
  %0 = load i64, i64* %key_buffer_size.addr, align 8
  %1 = load %struct.psa_key_attributes_s*, %struct.psa_key_attributes_s** %attributes.addr, align 8
  %core = getelementptr inbounds %struct.psa_key_attributes_s, %struct.psa_key_attributes_s* %1, i32 0, i32 0
  %bits = getelementptr inbounds %struct.psa_core_key_attributes_t, %struct.psa_core_key_attributes_t* %core, i32 0, i32 1
  %2 = load i16, i16* %bits, align 2
  %conv = zext i16 %2 to i64
  store i64 %conv, i64* %key_bits, align 8
  %3 = load i32, i32* %alg.addr, align 4
  %4 = load %struct.psa_key_attributes_s*, %struct.psa_key_attributes_s** %attributes.addr, align 8
  %core1 = getelementptr inbounds %struct.psa_key_attributes_s, %struct.psa_key_attributes_s* %4, i32 0, i32 0
  %type = getelementptr inbounds %struct.psa_core_key_attributes_t, %struct.psa_core_key_attributes_t* %core1, i32 0, i32 0
  %5 = load i16, i16* %type, align 8
  %6 = load i64, i64* %key_bits, align 8
  %call = call %struct.mbedtls_cipher_info_t* @mbedtls_cipher_info_from_psa(i32 noundef %3, i16 noundef zeroext %5, i64 noundef %6, i32* noundef %cipher_id) #3
  store %struct.mbedtls_cipher_info_t* %call, %struct.mbedtls_cipher_info_t** %cipher_info, align 8
  %7 = load %struct.mbedtls_cipher_info_t*, %struct.mbedtls_cipher_info_t** %cipher_info, align 8
  %cmp = icmp eq %struct.mbedtls_cipher_info_t* %7, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -134, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %8 = load i32, i32* %alg.addr, align 4
  %and = and i32 %8, -4161537
  %or = or i32 %and, 0
  switch i32 %or, label %sw.default [
    i32 88080640, label %sw.bb
    i32 88080896, label %sw.bb27
    i32 83887360, label %sw.bb59
  ]

sw.bb:                                            ; preds = %if.end
  %9 = load %struct.mbedtls_psa_aead_operation_t*, %struct.mbedtls_psa_aead_operation_t** %operation.addr, align 8
  %alg3 = getelementptr inbounds %struct.mbedtls_psa_aead_operation_t, %struct.mbedtls_psa_aead_operation_t* %9, i32 0, i32 0
  store i32 89129216, i32* %alg3, align 8
  store i64 16, i64* %full_tag_length, align 8
  %10 = load %struct.psa_key_attributes_s*, %struct.psa_key_attributes_s** %attributes.addr, align 8
  %core4 = getelementptr inbounds %struct.psa_key_attributes_s, %struct.psa_key_attributes_s* %10, i32 0, i32 0
  %type5 = getelementptr inbounds %struct.psa_core_key_attributes_t, %struct.psa_core_key_attributes_t* %core4, i32 0, i32 0
  %11 = load i16, i16* %type5, align 8
  %conv6 = zext i16 %11 to i32
  %and7 = and i32 %conv6, 28672
  %cmp8 = icmp eq i32 %and7, 8192
  br i1 %cmp8, label %cond.true, label %cond.false

cond.true:                                        ; preds = %sw.bb
  %12 = load %struct.psa_key_attributes_s*, %struct.psa_key_attributes_s** %attributes.addr, align 8
  %core10 = getelementptr inbounds %struct.psa_key_attributes_s, %struct.psa_key_attributes_s* %12, i32 0, i32 0
  %type11 = getelementptr inbounds %struct.psa_core_key_attributes_t, %struct.psa_core_key_attributes_t* %core10, i32 0, i32 0
  %13 = load i16, i16* %type11, align 8
  %conv12 = zext i16 %13 to i32
  %shr = ashr i32 %conv12, 8
  %and13 = and i32 %shr, 7
  %shl = shl i32 1, %and13
  br label %cond.end

cond.false:                                       ; preds = %sw.bb
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %shl, %cond.true ], [ 0, %cond.false ]
  %cmp14 = icmp ne i32 %cond, 16
  br i1 %cmp14, label %if.then16, label %if.end17

if.then16:                                        ; preds = %cond.end
  store i32 -135, i32* %retval, align 4
  br label %return

if.end17:                                         ; preds = %cond.end
  %14 = load %struct.mbedtls_psa_aead_operation_t*, %struct.mbedtls_psa_aead_operation_t** %operation.addr, align 8
  %ctx = getelementptr inbounds %struct.mbedtls_psa_aead_operation_t, %struct.mbedtls_psa_aead_operation_t* %14, i32 0, i32 4
  %ccm = bitcast %union.anon* %ctx to %struct.mbedtls_ccm_context*
  call void @mbedtls_ccm_init(%struct.mbedtls_ccm_context* noundef %ccm) #3
  %15 = load %struct.mbedtls_psa_aead_operation_t*, %struct.mbedtls_psa_aead_operation_t** %operation.addr, align 8
  %ctx18 = getelementptr inbounds %struct.mbedtls_psa_aead_operation_t, %struct.mbedtls_psa_aead_operation_t* %15, i32 0, i32 4
  %ccm19 = bitcast %union.anon* %ctx18 to %struct.mbedtls_ccm_context*
  %16 = load i32, i32* %cipher_id, align 4
  %17 = load i8*, i8** %key_buffer.addr, align 8
  %18 = load i64, i64* %key_bits, align 8
  %conv20 = trunc i64 %18 to i32
  %call21 = call i32 @mbedtls_ccm_setkey(%struct.mbedtls_ccm_context* noundef %ccm19, i32 noundef %16, i8* noundef %17, i32 noundef %conv20) #3
  %call22 = call i32 @mbedtls_to_psa_error(i32 noundef %call21) #3
  store i32 %call22, i32* %status, align 4
  %19 = load i32, i32* %status, align 4
  %cmp23 = icmp ne i32 %19, 0
  br i1 %cmp23, label %if.then25, label %if.end26

if.then25:                                        ; preds = %if.end17
  %20 = load i32, i32* %status, align 4
  store i32 %20, i32* %retval, align 4
  br label %return

if.end26:                                         ; preds = %if.end17
  br label %sw.epilog

sw.bb27:                                          ; preds = %if.end
  %21 = load %struct.mbedtls_psa_aead_operation_t*, %struct.mbedtls_psa_aead_operation_t** %operation.addr, align 8
  %alg28 = getelementptr inbounds %struct.mbedtls_psa_aead_operation_t, %struct.mbedtls_psa_aead_operation_t* %21, i32 0, i32 0
  store i32 89129472, i32* %alg28, align 8
  store i64 16, i64* %full_tag_length, align 8
  %22 = load %struct.psa_key_attributes_s*, %struct.psa_key_attributes_s** %attributes.addr, align 8
  %core29 = getelementptr inbounds %struct.psa_key_attributes_s, %struct.psa_key_attributes_s* %22, i32 0, i32 0
  %type30 = getelementptr inbounds %struct.psa_core_key_attributes_t, %struct.psa_core_key_attributes_t* %core29, i32 0, i32 0
  %23 = load i16, i16* %type30, align 8
  %conv31 = zext i16 %23 to i32
  %and32 = and i32 %conv31, 28672
  %cmp33 = icmp eq i32 %and32, 8192
  br i1 %cmp33, label %cond.true35, label %cond.false42

cond.true35:                                      ; preds = %sw.bb27
  %24 = load %struct.psa_key_attributes_s*, %struct.psa_key_attributes_s** %attributes.addr, align 8
  %core36 = getelementptr inbounds %struct.psa_key_attributes_s, %struct.psa_key_attributes_s* %24, i32 0, i32 0
  %type37 = getelementptr inbounds %struct.psa_core_key_attributes_t, %struct.psa_core_key_attributes_t* %core36, i32 0, i32 0
  %25 = load i16, i16* %type37, align 8
  %conv38 = zext i16 %25 to i32
  %shr39 = ashr i32 %conv38, 8
  %and40 = and i32 %shr39, 7
  %shl41 = shl i32 1, %and40
  br label %cond.end43

cond.false42:                                     ; preds = %sw.bb27
  br label %cond.end43

cond.end43:                                       ; preds = %cond.false42, %cond.true35
  %cond44 = phi i32 [ %shl41, %cond.true35 ], [ 0, %cond.false42 ]
  %cmp45 = icmp ne i32 %cond44, 16
  br i1 %cmp45, label %if.then47, label %if.end48

if.then47:                                        ; preds = %cond.end43
  store i32 -135, i32* %retval, align 4
  br label %return

if.end48:                                         ; preds = %cond.end43
  %26 = load %struct.mbedtls_psa_aead_operation_t*, %struct.mbedtls_psa_aead_operation_t** %operation.addr, align 8
  %ctx49 = getelementptr inbounds %struct.mbedtls_psa_aead_operation_t, %struct.mbedtls_psa_aead_operation_t* %26, i32 0, i32 4
  %gcm = bitcast %union.anon* %ctx49 to %struct.mbedtls_gcm_context*
  call void @mbedtls_gcm_init(%struct.mbedtls_gcm_context* noundef %gcm) #3
  %27 = load %struct.mbedtls_psa_aead_operation_t*, %struct.mbedtls_psa_aead_operation_t** %operation.addr, align 8
  %ctx50 = getelementptr inbounds %struct.mbedtls_psa_aead_operation_t, %struct.mbedtls_psa_aead_operation_t* %27, i32 0, i32 4
  %gcm51 = bitcast %union.anon* %ctx50 to %struct.mbedtls_gcm_context*
  %28 = load i32, i32* %cipher_id, align 4
  %29 = load i8*, i8** %key_buffer.addr, align 8
  %30 = load i64, i64* %key_bits, align 8
  %conv52 = trunc i64 %30 to i32
  %call53 = call i32 @mbedtls_gcm_setkey(%struct.mbedtls_gcm_context* noundef %gcm51, i32 noundef %28, i8* noundef %29, i32 noundef %conv52) #3
  %call54 = call i32 @mbedtls_to_psa_error(i32 noundef %call53) #3
  store i32 %call54, i32* %status, align 4
  %31 = load i32, i32* %status, align 4
  %cmp55 = icmp ne i32 %31, 0
  br i1 %cmp55, label %if.then57, label %if.end58

if.then57:                                        ; preds = %if.end48
  %32 = load i32, i32* %status, align 4
  store i32 %32, i32* %retval, align 4
  br label %return

if.end58:                                         ; preds = %if.end48
  br label %sw.epilog

sw.bb59:                                          ; preds = %if.end
  %33 = load %struct.mbedtls_psa_aead_operation_t*, %struct.mbedtls_psa_aead_operation_t** %operation.addr, align 8
  %alg60 = getelementptr inbounds %struct.mbedtls_psa_aead_operation_t, %struct.mbedtls_psa_aead_operation_t* %33, i32 0, i32 0
  store i32 84935936, i32* %alg60, align 8
  store i64 16, i64* %full_tag_length, align 8
  %34 = load i32, i32* %alg.addr, align 4
  %cmp61 = icmp ne i32 %34, 84935936
  br i1 %cmp61, label %if.then63, label %if.end64

if.then63:                                        ; preds = %sw.bb59
  store i32 -134, i32* %retval, align 4
  br label %return

if.end64:                                         ; preds = %sw.bb59
  %35 = load %struct.mbedtls_psa_aead_operation_t*, %struct.mbedtls_psa_aead_operation_t** %operation.addr, align 8
  %ctx65 = getelementptr inbounds %struct.mbedtls_psa_aead_operation_t, %struct.mbedtls_psa_aead_operation_t* %35, i32 0, i32 4
  %chachapoly = bitcast %union.anon* %ctx65 to %struct.mbedtls_chachapoly_context*
  call void @mbedtls_chachapoly_init(%struct.mbedtls_chachapoly_context* noundef %chachapoly) #3
  %36 = load %struct.mbedtls_psa_aead_operation_t*, %struct.mbedtls_psa_aead_operation_t** %operation.addr, align 8
  %ctx66 = getelementptr inbounds %struct.mbedtls_psa_aead_operation_t, %struct.mbedtls_psa_aead_operation_t* %36, i32 0, i32 4
  %chachapoly67 = bitcast %union.anon* %ctx66 to %struct.mbedtls_chachapoly_context*
  %37 = load i8*, i8** %key_buffer.addr, align 8
  %call68 = call i32 @mbedtls_chachapoly_setkey(%struct.mbedtls_chachapoly_context* noundef %chachapoly67, i8* noundef %37) #3
  %call69 = call i32 @mbedtls_to_psa_error(i32 noundef %call68) #3
  store i32 %call69, i32* %status, align 4
  %38 = load i32, i32* %status, align 4
  %cmp70 = icmp ne i32 %38, 0
  br i1 %cmp70, label %if.then72, label %if.end73

if.then72:                                        ; preds = %if.end64
  %39 = load i32, i32* %status, align 4
  store i32 %39, i32* %retval, align 4
  br label %return

if.end73:                                         ; preds = %if.end64
  br label %sw.epilog

sw.default:                                       ; preds = %if.end
  %40 = load i32, i32* %status, align 4
  %41 = load i8*, i8** %key_buffer.addr, align 8
  store i32 -134, i32* %retval, align 4
  br label %return

sw.epilog:                                        ; preds = %if.end73, %if.end58, %if.end26
  %42 = load %struct.psa_key_attributes_s*, %struct.psa_key_attributes_s** %attributes.addr, align 8
  %core74 = getelementptr inbounds %struct.psa_key_attributes_s, %struct.psa_key_attributes_s* %42, i32 0, i32 0
  %type75 = getelementptr inbounds %struct.psa_core_key_attributes_t, %struct.psa_core_key_attributes_t* %core74, i32 0, i32 0
  %43 = load i16, i16* %type75, align 8
  %conv76 = zext i16 %43 to i32
  %and77 = and i32 %conv76, 28672
  %cmp78 = icmp eq i32 %and77, 8192
  br i1 %cmp78, label %cond.true80, label %cond.false87

cond.true80:                                      ; preds = %sw.epilog
  %44 = load %struct.psa_key_attributes_s*, %struct.psa_key_attributes_s** %attributes.addr, align 8
  %core81 = getelementptr inbounds %struct.psa_key_attributes_s, %struct.psa_key_attributes_s* %44, i32 0, i32 0
  %type82 = getelementptr inbounds %struct.psa_core_key_attributes_t, %struct.psa_core_key_attributes_t* %core81, i32 0, i32 0
  %45 = load i16, i16* %type82, align 8
  %conv83 = zext i16 %45 to i32
  %shr84 = ashr i32 %conv83, 8
  %and85 = and i32 %shr84, 7
  %shl86 = shl i32 1, %and85
  br label %cond.end88

cond.false87:                                     ; preds = %sw.epilog
  br label %cond.end88

cond.end88:                                       ; preds = %cond.false87, %cond.true80
  %cond89 = phi i32 [ %shl86, %cond.true80 ], [ 0, %cond.false87 ]
  %cmp90 = icmp eq i32 %cond89, 16
  br i1 %cmp90, label %cond.true92, label %cond.false102

cond.true92:                                      ; preds = %cond.end88
  %46 = load i32, i32* %alg.addr, align 4
  %xor = xor i32 %46, 89129216
  %and93 = and i32 %xor, -4161537
  %tobool = icmp ne i32 %and93, 0
  br i1 %tobool, label %cond.false95, label %cond.true94

cond.true94:                                      ; preds = %cond.true92
  br label %cond.end100

cond.false95:                                     ; preds = %cond.true92
  %47 = load i32, i32* %alg.addr, align 4
  %xor96 = xor i32 %47, 89129472
  %and97 = and i32 %xor96, -4161537
  %tobool98 = icmp ne i32 %and97, 0
  %lnot = xor i1 %tobool98, true
  %48 = zext i1 %lnot to i64
  %cond99 = select i1 %lnot, i32 12, i32 0
  br label %cond.end100

cond.end100:                                      ; preds = %cond.false95, %cond.true94
  %cond101 = phi i32 [ 13, %cond.true94 ], [ %cond99, %cond.false95 ]
  br label %cond.end113

cond.false102:                                    ; preds = %cond.end88
  %49 = load %struct.psa_key_attributes_s*, %struct.psa_key_attributes_s** %attributes.addr, align 8
  %core103 = getelementptr inbounds %struct.psa_key_attributes_s, %struct.psa_key_attributes_s* %49, i32 0, i32 0
  %type104 = getelementptr inbounds %struct.psa_core_key_attributes_t, %struct.psa_core_key_attributes_t* %core103, i32 0, i32 0
  %50 = load i16, i16* %type104, align 8
  %conv105 = zext i16 %50 to i32
  %cmp106 = icmp eq i32 %conv105, 8196
  br i1 %cmp106, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %cond.false102
  %51 = load i32, i32* %alg.addr, align 4
  %xor108 = xor i32 %51, 84935936
  %and109 = and i32 %xor108, -4161537
  %tobool110 = icmp ne i32 %and109, 0
  %lnot111 = xor i1 %tobool110, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %cond.false102
  %52 = phi i1 [ false, %cond.false102 ], [ %lnot111, %land.rhs ]
  %53 = zext i1 %52 to i64
  %cond112 = select i1 %52, i32 12, i32 0
  br label %cond.end113

cond.end113:                                      ; preds = %land.end, %cond.end100
  %cond114 = phi i32 [ %cond101, %cond.end100 ], [ %cond112, %land.end ]
  %cmp115 = icmp ne i32 %cond114, 0
  br i1 %cmp115, label %cond.true117, label %cond.false120

cond.true117:                                     ; preds = %cond.end113
  %54 = load i32, i32* %alg.addr, align 4
  %and118 = and i32 %54, 4128768
  %shr119 = lshr i32 %and118, 16
  br label %cond.end121

cond.false120:                                    ; preds = %cond.end113
  %55 = load i64, i64* %key_bits, align 8
  br label %cond.end121

cond.end121:                                      ; preds = %cond.false120, %cond.true117
  %cond122 = phi i32 [ %shr119, %cond.true117 ], [ 0, %cond.false120 ]
  %conv123 = zext i32 %cond122 to i64
  %56 = load i64, i64* %full_tag_length, align 8
  %cmp124 = icmp ugt i64 %conv123, %56
  br i1 %cmp124, label %if.then126, label %if.end127

if.then126:                                       ; preds = %cond.end121
  store i32 -135, i32* %retval, align 4
  br label %return

if.end127:                                        ; preds = %cond.end121
  %57 = load %struct.psa_key_attributes_s*, %struct.psa_key_attributes_s** %attributes.addr, align 8
  %call128 = call zeroext i16 @psa_get_key_type(%struct.psa_key_attributes_s* noundef %57) #3
  %58 = load %struct.mbedtls_psa_aead_operation_t*, %struct.mbedtls_psa_aead_operation_t** %operation.addr, align 8
  %key_type = getelementptr inbounds %struct.mbedtls_psa_aead_operation_t, %struct.mbedtls_psa_aead_operation_t* %58, i32 0, i32 1
  store i16 %call128, i16* %key_type, align 4
  %59 = load %struct.mbedtls_psa_aead_operation_t*, %struct.mbedtls_psa_aead_operation_t** %operation.addr, align 8
  %key_type129 = getelementptr inbounds %struct.mbedtls_psa_aead_operation_t, %struct.mbedtls_psa_aead_operation_t* %59, i32 0, i32 1
  %60 = load i16, i16* %key_type129, align 4
  %conv130 = zext i16 %60 to i32
  %and131 = and i32 %conv130, 28672
  %cmp132 = icmp eq i32 %and131, 8192
  br i1 %cmp132, label %cond.true134, label %cond.false140

cond.true134:                                     ; preds = %if.end127
  %61 = load %struct.mbedtls_psa_aead_operation_t*, %struct.mbedtls_psa_aead_operation_t** %operation.addr, align 8
  %key_type135 = getelementptr inbounds %struct.mbedtls_psa_aead_operation_t, %struct.mbedtls_psa_aead_operation_t* %61, i32 0, i32 1
  %62 = load i16, i16* %key_type135, align 4
  %conv136 = zext i16 %62 to i32
  %shr137 = ashr i32 %conv136, 8
  %and138 = and i32 %shr137, 7
  %shl139 = shl i32 1, %and138
  br label %cond.end141

cond.false140:                                    ; preds = %if.end127
  br label %cond.end141

cond.end141:                                      ; preds = %cond.false140, %cond.true134
  %cond142 = phi i32 [ %shl139, %cond.true134 ], [ 0, %cond.false140 ]
  %cmp143 = icmp eq i32 %cond142, 16
  br i1 %cmp143, label %cond.true145, label %cond.false158

cond.true145:                                     ; preds = %cond.end141
  %63 = load i32, i32* %alg.addr, align 4
  %xor146 = xor i32 %63, 89129216
  %and147 = and i32 %xor146, -4161537
  %tobool148 = icmp ne i32 %and147, 0
  br i1 %tobool148, label %cond.false150, label %cond.true149

cond.true149:                                     ; preds = %cond.true145
  br label %cond.end156

cond.false150:                                    ; preds = %cond.true145
  %64 = load i32, i32* %alg.addr, align 4
  %xor151 = xor i32 %64, 89129472
  %and152 = and i32 %xor151, -4161537
  %tobool153 = icmp ne i32 %and152, 0
  %lnot154 = xor i1 %tobool153, true
  %65 = zext i1 %lnot154 to i64
  %cond155 = select i1 %lnot154, i32 12, i32 0
  br label %cond.end156

cond.end156:                                      ; preds = %cond.false150, %cond.true149
  %cond157 = phi i32 [ 13, %cond.true149 ], [ %cond155, %cond.false150 ]
  br label %cond.end170

cond.false158:                                    ; preds = %cond.end141
  %66 = load %struct.mbedtls_psa_aead_operation_t*, %struct.mbedtls_psa_aead_operation_t** %operation.addr, align 8
  %key_type159 = getelementptr inbounds %struct.mbedtls_psa_aead_operation_t, %struct.mbedtls_psa_aead_operation_t* %66, i32 0, i32 1
  %67 = load i16, i16* %key_type159, align 4
  %conv160 = zext i16 %67 to i32
  %cmp161 = icmp eq i32 %conv160, 8196
  br i1 %cmp161, label %land.rhs163, label %land.end168

land.rhs163:                                      ; preds = %cond.false158
  %68 = load i32, i32* %alg.addr, align 4
  %xor164 = xor i32 %68, 84935936
  %and165 = and i32 %xor164, -4161537
  %tobool166 = icmp ne i32 %and165, 0
  %lnot167 = xor i1 %tobool166, true
  br label %land.end168

land.end168:                                      ; preds = %land.rhs163, %cond.false158
  %69 = phi i1 [ false, %cond.false158 ], [ %lnot167, %land.rhs163 ]
  %70 = zext i1 %69 to i64
  %cond169 = select i1 %69, i32 12, i32 0
  br label %cond.end170

cond.end170:                                      ; preds = %land.end168, %cond.end156
  %cond171 = phi i32 [ %cond157, %cond.end156 ], [ %cond169, %land.end168 ]
  %cmp172 = icmp ne i32 %cond171, 0
  br i1 %cmp172, label %cond.true174, label %cond.false177

cond.true174:                                     ; preds = %cond.end170
  %71 = load i32, i32* %alg.addr, align 4
  %and175 = and i32 %71, 4128768
  %shr176 = lshr i32 %and175, 16
  br label %cond.end178

cond.false177:                                    ; preds = %cond.end170
  %72 = load i64, i64* %key_bits, align 8
  br label %cond.end178

cond.end178:                                      ; preds = %cond.false177, %cond.true174
  %cond179 = phi i32 [ %shr176, %cond.true174 ], [ 0, %cond.false177 ]
  %conv180 = trunc i32 %cond179 to i8
  %73 = load %struct.mbedtls_psa_aead_operation_t*, %struct.mbedtls_psa_aead_operation_t** %operation.addr, align 8
  %tag_length = getelementptr inbounds %struct.mbedtls_psa_aead_operation_t, %struct.mbedtls_psa_aead_operation_t* %73, i32 0, i32 3
  store i8 %conv180, i8* %tag_length, align 1
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %cond.end178, %if.then126, %sw.default, %if.then72, %if.then63, %if.then57, %if.then47, %if.then25, %if.then16, %if.then
  %74 = load i32, i32* %retval, align 4
  ret i32 %74
}

declare dso_local i32 @mbedtls_to_psa_error(i32 noundef) #2

declare dso_local i32 @mbedtls_ccm_encrypt_and_tag(%struct.mbedtls_ccm_context* noundef, i64 noundef, i8* noundef, i64 noundef, i8* noundef, i64 noundef, i8* noundef, i8* noundef, i8* noundef, i64 noundef) #2

declare dso_local i32 @mbedtls_gcm_crypt_and_tag(%struct.mbedtls_gcm_context* noundef, i32 noundef, i64 noundef, i8* noundef, i64 noundef, i8* noundef, i64 noundef, i8* noundef, i8* noundef, i64 noundef, i8* noundef) #2

declare dso_local i32 @mbedtls_chachapoly_encrypt_and_tag(%struct.mbedtls_chachapoly_context* noundef, i64 noundef, i8* noundef, i8* noundef, i64 noundef, i8* noundef, i8* noundef, i8* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_psa_aead_abort(%struct.mbedtls_psa_aead_operation_t* noundef %operation) #0 {
entry:
  %operation.addr = alloca %struct.mbedtls_psa_aead_operation_t*, align 8
  store %struct.mbedtls_psa_aead_operation_t* %operation, %struct.mbedtls_psa_aead_operation_t** %operation.addr, align 8
  %0 = load %struct.mbedtls_psa_aead_operation_t*, %struct.mbedtls_psa_aead_operation_t** %operation.addr, align 8
  %alg = getelementptr inbounds %struct.mbedtls_psa_aead_operation_t, %struct.mbedtls_psa_aead_operation_t* %0, i32 0, i32 0
  %1 = load i32, i32* %alg, align 8
  switch i32 %1, label %sw.epilog [
    i32 89129216, label %sw.bb
    i32 89129472, label %sw.bb1
    i32 84935936, label %sw.bb3
  ]

sw.bb:                                            ; preds = %entry
  %2 = load %struct.mbedtls_psa_aead_operation_t*, %struct.mbedtls_psa_aead_operation_t** %operation.addr, align 8
  %ctx = getelementptr inbounds %struct.mbedtls_psa_aead_operation_t, %struct.mbedtls_psa_aead_operation_t* %2, i32 0, i32 4
  %ccm = bitcast %union.anon* %ctx to %struct.mbedtls_ccm_context*
  call void @mbedtls_ccm_free(%struct.mbedtls_ccm_context* noundef %ccm) #3
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  %3 = load %struct.mbedtls_psa_aead_operation_t*, %struct.mbedtls_psa_aead_operation_t** %operation.addr, align 8
  %ctx2 = getelementptr inbounds %struct.mbedtls_psa_aead_operation_t, %struct.mbedtls_psa_aead_operation_t* %3, i32 0, i32 4
  %gcm = bitcast %union.anon* %ctx2 to %struct.mbedtls_gcm_context*
  call void @mbedtls_gcm_free(%struct.mbedtls_gcm_context* noundef %gcm) #3
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  %4 = load %struct.mbedtls_psa_aead_operation_t*, %struct.mbedtls_psa_aead_operation_t** %operation.addr, align 8
  %ctx4 = getelementptr inbounds %struct.mbedtls_psa_aead_operation_t, %struct.mbedtls_psa_aead_operation_t* %4, i32 0, i32 4
  %chachapoly = bitcast %union.anon* %ctx4 to %struct.mbedtls_chachapoly_context*
  call void @mbedtls_chachapoly_free(%struct.mbedtls_chachapoly_context* noundef %chachapoly) #3
  br label %sw.epilog

sw.epilog:                                        ; preds = %entry, %sw.bb3, %sw.bb1, %sw.bb
  %5 = load %struct.mbedtls_psa_aead_operation_t*, %struct.mbedtls_psa_aead_operation_t** %operation.addr, align 8
  %is_encrypt = getelementptr inbounds %struct.mbedtls_psa_aead_operation_t, %struct.mbedtls_psa_aead_operation_t* %5, i32 0, i32 2
  %bf.load = load i8, i8* %is_encrypt, align 2
  %bf.clear = and i8 %bf.load, -2
  %bf.set = or i8 %bf.clear, 0
  store i8 %bf.set, i8* %is_encrypt, align 2
  ret i32 0
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_psa_aead_decrypt(%struct.psa_key_attributes_s* noundef %attributes, i8* noundef %key_buffer, i64 noundef %key_buffer_size, i32 noundef %alg, i8* noundef %nonce, i64 noundef %nonce_length, i8* noundef %additional_data, i64 noundef %additional_data_length, i8* noundef %ciphertext, i64 noundef %ciphertext_length, i8* noundef %plaintext, i64 noundef %plaintext_size, i64* noundef %plaintext_length) #0 {
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
  %operation = alloca %struct.mbedtls_psa_aead_operation_t, align 8
  %tag = alloca i8*, align 8
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
  %0 = bitcast %struct.mbedtls_psa_aead_operation_t* %operation to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %0, i8 0, i64 432, i1 false)
  %1 = bitcast i8* %0 to { i32, i16, i8, i8, { i32, [420 x i8] } }*
  %2 = getelementptr inbounds { i32, i16, i8, i8, { i32, [420 x i8] } }, { i32, i16, i8, i8, { i32, [420 x i8] } }* %1, i32 0, i32 4
  store i8* null, i8** %tag, align 8
  %3 = load %struct.psa_key_attributes_s*, %struct.psa_key_attributes_s** %attributes.addr, align 8
  %4 = load i8*, i8** %key_buffer.addr, align 8
  %5 = load i64, i64* %key_buffer_size.addr, align 8
  %6 = load i32, i32* %alg.addr, align 4
  %call = call i32 @psa_aead_setup(%struct.mbedtls_psa_aead_operation_t* noundef %operation, %struct.psa_key_attributes_s* noundef %3, i8* noundef %4, i64 noundef %5, i32 noundef %6) #3
  store i32 %call, i32* %status, align 4
  %7 = load i32, i32* %status, align 4
  %cmp = icmp ne i32 %7, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %exit

if.end:                                           ; preds = %entry
  %tag_length = getelementptr inbounds %struct.mbedtls_psa_aead_operation_t, %struct.mbedtls_psa_aead_operation_t* %operation, i32 0, i32 3
  %8 = load i8, i8* %tag_length, align 1
  %conv = zext i8 %8 to i64
  %9 = load i8*, i8** %ciphertext.addr, align 8
  %10 = load i64, i64* %ciphertext_length.addr, align 8
  %11 = load i64, i64* %plaintext_size.addr, align 8
  %call1 = call i32 @psa_aead_unpadded_locate_tag(i64 noundef %conv, i8* noundef %9, i64 noundef %10, i64 noundef %11, i8** noundef %tag) #3
  store i32 %call1, i32* %status, align 4
  %12 = load i32, i32* %status, align 4
  %cmp2 = icmp ne i32 %12, 0
  br i1 %cmp2, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  br label %exit

if.end5:                                          ; preds = %if.end
  %alg6 = getelementptr inbounds %struct.mbedtls_psa_aead_operation_t, %struct.mbedtls_psa_aead_operation_t* %operation, i32 0, i32 0
  %13 = load i32, i32* %alg6, align 8
  %cmp7 = icmp eq i32 %13, 89129216
  br i1 %cmp7, label %if.then9, label %if.else

if.then9:                                         ; preds = %if.end5
  %ctx = getelementptr inbounds %struct.mbedtls_psa_aead_operation_t, %struct.mbedtls_psa_aead_operation_t* %operation, i32 0, i32 4
  %ccm = bitcast %union.anon* %ctx to %struct.mbedtls_ccm_context*
  %14 = load i64, i64* %ciphertext_length.addr, align 8
  %tag_length10 = getelementptr inbounds %struct.mbedtls_psa_aead_operation_t, %struct.mbedtls_psa_aead_operation_t* %operation, i32 0, i32 3
  %15 = load i8, i8* %tag_length10, align 1
  %conv11 = zext i8 %15 to i64
  %sub = sub i64 %14, %conv11
  %16 = load i8*, i8** %nonce.addr, align 8
  %17 = load i64, i64* %nonce_length.addr, align 8
  %18 = load i8*, i8** %additional_data.addr, align 8
  %19 = load i64, i64* %additional_data_length.addr, align 8
  %20 = load i8*, i8** %ciphertext.addr, align 8
  %21 = load i8*, i8** %plaintext.addr, align 8
  %22 = load i8*, i8** %tag, align 8
  %tag_length12 = getelementptr inbounds %struct.mbedtls_psa_aead_operation_t, %struct.mbedtls_psa_aead_operation_t* %operation, i32 0, i32 3
  %23 = load i8, i8* %tag_length12, align 1
  %conv13 = zext i8 %23 to i64
  %call14 = call i32 @mbedtls_ccm_auth_decrypt(%struct.mbedtls_ccm_context* noundef %ccm, i64 noundef %sub, i8* noundef %16, i64 noundef %17, i8* noundef %18, i64 noundef %19, i8* noundef %20, i8* noundef %21, i8* noundef %22, i64 noundef %conv13) #3
  %call15 = call i32 @mbedtls_to_psa_error(i32 noundef %call14) #3
  store i32 %call15, i32* %status, align 4
  br label %if.end48

if.else:                                          ; preds = %if.end5
  %alg16 = getelementptr inbounds %struct.mbedtls_psa_aead_operation_t, %struct.mbedtls_psa_aead_operation_t* %operation, i32 0, i32 0
  %24 = load i32, i32* %alg16, align 8
  %cmp17 = icmp eq i32 %24, 89129472
  br i1 %cmp17, label %if.then19, label %if.else28

if.then19:                                        ; preds = %if.else
  %ctx20 = getelementptr inbounds %struct.mbedtls_psa_aead_operation_t, %struct.mbedtls_psa_aead_operation_t* %operation, i32 0, i32 4
  %gcm = bitcast %union.anon* %ctx20 to %struct.mbedtls_gcm_context*
  %25 = load i64, i64* %ciphertext_length.addr, align 8
  %tag_length21 = getelementptr inbounds %struct.mbedtls_psa_aead_operation_t, %struct.mbedtls_psa_aead_operation_t* %operation, i32 0, i32 3
  %26 = load i8, i8* %tag_length21, align 1
  %conv22 = zext i8 %26 to i64
  %sub23 = sub i64 %25, %conv22
  %27 = load i8*, i8** %nonce.addr, align 8
  %28 = load i64, i64* %nonce_length.addr, align 8
  %29 = load i8*, i8** %additional_data.addr, align 8
  %30 = load i64, i64* %additional_data_length.addr, align 8
  %31 = load i8*, i8** %tag, align 8
  %tag_length24 = getelementptr inbounds %struct.mbedtls_psa_aead_operation_t, %struct.mbedtls_psa_aead_operation_t* %operation, i32 0, i32 3
  %32 = load i8, i8* %tag_length24, align 1
  %conv25 = zext i8 %32 to i64
  %33 = load i8*, i8** %ciphertext.addr, align 8
  %34 = load i8*, i8** %plaintext.addr, align 8
  %call26 = call i32 @mbedtls_gcm_auth_decrypt(%struct.mbedtls_gcm_context* noundef %gcm, i64 noundef %sub23, i8* noundef %27, i64 noundef %28, i8* noundef %29, i64 noundef %30, i8* noundef %31, i64 noundef %conv25, i8* noundef %33, i8* noundef %34) #3
  %call27 = call i32 @mbedtls_to_psa_error(i32 noundef %call26) #3
  store i32 %call27, i32* %status, align 4
  br label %if.end47

if.else28:                                        ; preds = %if.else
  %alg29 = getelementptr inbounds %struct.mbedtls_psa_aead_operation_t, %struct.mbedtls_psa_aead_operation_t* %operation, i32 0, i32 0
  %35 = load i32, i32* %alg29, align 8
  %cmp30 = icmp eq i32 %35, 84935936
  br i1 %cmp30, label %if.then32, label %if.else45

if.then32:                                        ; preds = %if.else28
  %tag_length33 = getelementptr inbounds %struct.mbedtls_psa_aead_operation_t, %struct.mbedtls_psa_aead_operation_t* %operation, i32 0, i32 3
  %36 = load i8, i8* %tag_length33, align 1
  %conv34 = zext i8 %36 to i32
  %cmp35 = icmp ne i32 %conv34, 16
  br i1 %cmp35, label %if.then37, label %if.end38

if.then37:                                        ; preds = %if.then32
  store i32 -134, i32* %status, align 4
  br label %exit

if.end38:                                         ; preds = %if.then32
  %ctx39 = getelementptr inbounds %struct.mbedtls_psa_aead_operation_t, %struct.mbedtls_psa_aead_operation_t* %operation, i32 0, i32 4
  %chachapoly = bitcast %union.anon* %ctx39 to %struct.mbedtls_chachapoly_context*
  %37 = load i64, i64* %ciphertext_length.addr, align 8
  %tag_length40 = getelementptr inbounds %struct.mbedtls_psa_aead_operation_t, %struct.mbedtls_psa_aead_operation_t* %operation, i32 0, i32 3
  %38 = load i8, i8* %tag_length40, align 1
  %conv41 = zext i8 %38 to i64
  %sub42 = sub i64 %37, %conv41
  %39 = load i8*, i8** %nonce.addr, align 8
  %40 = load i8*, i8** %additional_data.addr, align 8
  %41 = load i64, i64* %additional_data_length.addr, align 8
  %42 = load i8*, i8** %tag, align 8
  %43 = load i8*, i8** %ciphertext.addr, align 8
  %44 = load i8*, i8** %plaintext.addr, align 8
  %call43 = call i32 @mbedtls_chachapoly_auth_decrypt(%struct.mbedtls_chachapoly_context* noundef %chachapoly, i64 noundef %sub42, i8* noundef %39, i8* noundef %40, i64 noundef %41, i8* noundef %42, i8* noundef %43, i8* noundef %44) #3
  %call44 = call i32 @mbedtls_to_psa_error(i32 noundef %call43) #3
  store i32 %call44, i32* %status, align 4
  br label %if.end46

if.else45:                                        ; preds = %if.else28
  %45 = load i8*, i8** %nonce.addr, align 8
  %46 = load i64, i64* %nonce_length.addr, align 8
  %47 = load i8*, i8** %additional_data.addr, align 8
  %48 = load i64, i64* %additional_data_length.addr, align 8
  %49 = load i8*, i8** %plaintext.addr, align 8
  store i32 -134, i32* %retval, align 4
  br label %return

if.end46:                                         ; preds = %if.end38
  br label %if.end47

if.end47:                                         ; preds = %if.end46, %if.then19
  br label %if.end48

if.end48:                                         ; preds = %if.end47, %if.then9
  %50 = load i32, i32* %status, align 4
  %cmp49 = icmp eq i32 %50, 0
  br i1 %cmp49, label %if.then51, label %if.end55

if.then51:                                        ; preds = %if.end48
  %51 = load i64, i64* %ciphertext_length.addr, align 8
  %tag_length52 = getelementptr inbounds %struct.mbedtls_psa_aead_operation_t, %struct.mbedtls_psa_aead_operation_t* %operation, i32 0, i32 3
  %52 = load i8, i8* %tag_length52, align 1
  %conv53 = zext i8 %52 to i64
  %sub54 = sub i64 %51, %conv53
  %53 = load i64*, i64** %plaintext_length.addr, align 8
  store i64 %sub54, i64* %53, align 8
  br label %if.end55

if.end55:                                         ; preds = %if.then51, %if.end48
  br label %exit

exit:                                             ; preds = %if.end55, %if.then37, %if.then4, %if.then
  %call56 = call i32 @mbedtls_psa_aead_abort(%struct.mbedtls_psa_aead_operation_t* noundef %operation) #3
  %54 = load i32, i32* %status, align 4
  %cmp57 = icmp eq i32 %54, 0
  br i1 %cmp57, label %if.then59, label %if.end63

if.then59:                                        ; preds = %exit
  %55 = load i64, i64* %ciphertext_length.addr, align 8
  %tag_length60 = getelementptr inbounds %struct.mbedtls_psa_aead_operation_t, %struct.mbedtls_psa_aead_operation_t* %operation, i32 0, i32 3
  %56 = load i8, i8* %tag_length60, align 1
  %conv61 = zext i8 %56 to i64
  %sub62 = sub i64 %55, %conv61
  %57 = load i64*, i64** %plaintext_length.addr, align 8
  store i64 %sub62, i64* %57, align 8
  br label %if.end63

if.end63:                                         ; preds = %if.then59, %exit
  %58 = load i32, i32* %status, align 4
  store i32 %58, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end63, %if.else45
  %59 = load i32, i32* %retval, align 4
  ret i32 %59
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @psa_aead_unpadded_locate_tag(i64 noundef %tag_length, i8* noundef %ciphertext, i64 noundef %ciphertext_length, i64 noundef %plaintext_size, i8** noundef %p_tag) #0 {
entry:
  %retval = alloca i32, align 4
  %tag_length.addr = alloca i64, align 8
  %ciphertext.addr = alloca i8*, align 8
  %ciphertext_length.addr = alloca i64, align 8
  %plaintext_size.addr = alloca i64, align 8
  %p_tag.addr = alloca i8**, align 8
  %payload_length = alloca i64, align 8
  store i64 %tag_length, i64* %tag_length.addr, align 8
  store i8* %ciphertext, i8** %ciphertext.addr, align 8
  store i64 %ciphertext_length, i64* %ciphertext_length.addr, align 8
  store i64 %plaintext_size, i64* %plaintext_size.addr, align 8
  store i8** %p_tag, i8*** %p_tag.addr, align 8
  %0 = load i64, i64* %tag_length.addr, align 8
  %1 = load i64, i64* %ciphertext_length.addr, align 8
  %cmp = icmp ugt i64 %0, %1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -135, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i64, i64* %ciphertext_length.addr, align 8
  %3 = load i64, i64* %tag_length.addr, align 8
  %sub = sub i64 %2, %3
  store i64 %sub, i64* %payload_length, align 8
  %4 = load i64, i64* %payload_length, align 8
  %5 = load i64, i64* %plaintext_size.addr, align 8
  %cmp1 = icmp ugt i64 %4, %5
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  store i32 -138, i32* %retval, align 4
  br label %return

if.end3:                                          ; preds = %if.end
  %6 = load i8*, i8** %ciphertext.addr, align 8
  %7 = load i64, i64* %payload_length, align 8
  %add.ptr = getelementptr inbounds i8, i8* %6, i64 %7
  %8 = load i8**, i8*** %p_tag.addr, align 8
  store i8* %add.ptr, i8** %8, align 8
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end3, %if.then2, %if.then
  %9 = load i32, i32* %retval, align 4
  ret i32 %9
}

declare dso_local i32 @mbedtls_ccm_auth_decrypt(%struct.mbedtls_ccm_context* noundef, i64 noundef, i8* noundef, i64 noundef, i8* noundef, i64 noundef, i8* noundef, i8* noundef, i8* noundef, i64 noundef) #2

declare dso_local i32 @mbedtls_gcm_auth_decrypt(%struct.mbedtls_gcm_context* noundef, i64 noundef, i8* noundef, i64 noundef, i8* noundef, i64 noundef, i8* noundef, i64 noundef, i8* noundef, i8* noundef) #2

declare dso_local i32 @mbedtls_chachapoly_auth_decrypt(%struct.mbedtls_chachapoly_context* noundef, i64 noundef, i8* noundef, i8* noundef, i64 noundef, i8* noundef, i8* noundef, i8* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_psa_aead_encrypt_setup(%struct.mbedtls_psa_aead_operation_t* noundef %operation, %struct.psa_key_attributes_s* noundef %attributes, i8* noundef %key_buffer, i64 noundef %key_buffer_size, i32 noundef %alg) #0 {
entry:
  %operation.addr = alloca %struct.mbedtls_psa_aead_operation_t*, align 8
  %attributes.addr = alloca %struct.psa_key_attributes_s*, align 8
  %key_buffer.addr = alloca i8*, align 8
  %key_buffer_size.addr = alloca i64, align 8
  %alg.addr = alloca i32, align 4
  %status = alloca i32, align 4
  store %struct.mbedtls_psa_aead_operation_t* %operation, %struct.mbedtls_psa_aead_operation_t** %operation.addr, align 8
  store %struct.psa_key_attributes_s* %attributes, %struct.psa_key_attributes_s** %attributes.addr, align 8
  store i8* %key_buffer, i8** %key_buffer.addr, align 8
  store i64 %key_buffer_size, i64* %key_buffer_size.addr, align 8
  store i32 %alg, i32* %alg.addr, align 4
  store i32 -151, i32* %status, align 4
  %0 = load %struct.mbedtls_psa_aead_operation_t*, %struct.mbedtls_psa_aead_operation_t** %operation.addr, align 8
  %1 = load %struct.psa_key_attributes_s*, %struct.psa_key_attributes_s** %attributes.addr, align 8
  %2 = load i8*, i8** %key_buffer.addr, align 8
  %3 = load i64, i64* %key_buffer_size.addr, align 8
  %4 = load i32, i32* %alg.addr, align 4
  %call = call i32 @psa_aead_setup(%struct.mbedtls_psa_aead_operation_t* noundef %0, %struct.psa_key_attributes_s* noundef %1, i8* noundef %2, i64 noundef %3, i32 noundef %4) #3
  store i32 %call, i32* %status, align 4
  %5 = load i32, i32* %status, align 4
  %cmp = icmp eq i32 %5, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load %struct.mbedtls_psa_aead_operation_t*, %struct.mbedtls_psa_aead_operation_t** %operation.addr, align 8
  %is_encrypt = getelementptr inbounds %struct.mbedtls_psa_aead_operation_t, %struct.mbedtls_psa_aead_operation_t* %6, i32 0, i32 2
  %bf.load = load i8, i8* %is_encrypt, align 2
  %bf.clear = and i8 %bf.load, -2
  %bf.set = or i8 %bf.clear, 1
  store i8 %bf.set, i8* %is_encrypt, align 2
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %7 = load i32, i32* %status, align 4
  ret i32 %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_psa_aead_decrypt_setup(%struct.mbedtls_psa_aead_operation_t* noundef %operation, %struct.psa_key_attributes_s* noundef %attributes, i8* noundef %key_buffer, i64 noundef %key_buffer_size, i32 noundef %alg) #0 {
entry:
  %operation.addr = alloca %struct.mbedtls_psa_aead_operation_t*, align 8
  %attributes.addr = alloca %struct.psa_key_attributes_s*, align 8
  %key_buffer.addr = alloca i8*, align 8
  %key_buffer_size.addr = alloca i64, align 8
  %alg.addr = alloca i32, align 4
  %status = alloca i32, align 4
  store %struct.mbedtls_psa_aead_operation_t* %operation, %struct.mbedtls_psa_aead_operation_t** %operation.addr, align 8
  store %struct.psa_key_attributes_s* %attributes, %struct.psa_key_attributes_s** %attributes.addr, align 8
  store i8* %key_buffer, i8** %key_buffer.addr, align 8
  store i64 %key_buffer_size, i64* %key_buffer_size.addr, align 8
  store i32 %alg, i32* %alg.addr, align 4
  store i32 -151, i32* %status, align 4
  %0 = load %struct.mbedtls_psa_aead_operation_t*, %struct.mbedtls_psa_aead_operation_t** %operation.addr, align 8
  %1 = load %struct.psa_key_attributes_s*, %struct.psa_key_attributes_s** %attributes.addr, align 8
  %2 = load i8*, i8** %key_buffer.addr, align 8
  %3 = load i64, i64* %key_buffer_size.addr, align 8
  %4 = load i32, i32* %alg.addr, align 4
  %call = call i32 @psa_aead_setup(%struct.mbedtls_psa_aead_operation_t* noundef %0, %struct.psa_key_attributes_s* noundef %1, i8* noundef %2, i64 noundef %3, i32 noundef %4) #3
  store i32 %call, i32* %status, align 4
  %5 = load i32, i32* %status, align 4
  %cmp = icmp eq i32 %5, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load %struct.mbedtls_psa_aead_operation_t*, %struct.mbedtls_psa_aead_operation_t** %operation.addr, align 8
  %is_encrypt = getelementptr inbounds %struct.mbedtls_psa_aead_operation_t, %struct.mbedtls_psa_aead_operation_t* %6, i32 0, i32 2
  %bf.load = load i8, i8* %is_encrypt, align 2
  %bf.clear = and i8 %bf.load, -2
  %bf.set = or i8 %bf.clear, 0
  store i8 %bf.set, i8* %is_encrypt, align 2
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %7 = load i32, i32* %status, align 4
  ret i32 %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_psa_aead_set_nonce(%struct.mbedtls_psa_aead_operation_t* noundef %operation, i8* noundef %nonce, i64 noundef %nonce_length) #0 {
entry:
  %retval = alloca i32, align 4
  %operation.addr = alloca %struct.mbedtls_psa_aead_operation_t*, align 8
  %nonce.addr = alloca i8*, align 8
  %nonce_length.addr = alloca i64, align 8
  %status = alloca i32, align 4
  store %struct.mbedtls_psa_aead_operation_t* %operation, %struct.mbedtls_psa_aead_operation_t** %operation.addr, align 8
  store i8* %nonce, i8** %nonce.addr, align 8
  store i64 %nonce_length, i64* %nonce_length.addr, align 8
  store i32 -151, i32* %status, align 4
  %0 = load %struct.mbedtls_psa_aead_operation_t*, %struct.mbedtls_psa_aead_operation_t** %operation.addr, align 8
  %alg = getelementptr inbounds %struct.mbedtls_psa_aead_operation_t, %struct.mbedtls_psa_aead_operation_t* %0, i32 0, i32 0
  %1 = load i32, i32* %alg, align 8
  %cmp = icmp eq i32 %1, 89129472
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load %struct.mbedtls_psa_aead_operation_t*, %struct.mbedtls_psa_aead_operation_t** %operation.addr, align 8
  %ctx = getelementptr inbounds %struct.mbedtls_psa_aead_operation_t, %struct.mbedtls_psa_aead_operation_t* %2, i32 0, i32 4
  %gcm = bitcast %union.anon* %ctx to %struct.mbedtls_gcm_context*
  %3 = load %struct.mbedtls_psa_aead_operation_t*, %struct.mbedtls_psa_aead_operation_t** %operation.addr, align 8
  %is_encrypt = getelementptr inbounds %struct.mbedtls_psa_aead_operation_t, %struct.mbedtls_psa_aead_operation_t* %3, i32 0, i32 2
  %bf.load = load i8, i8* %is_encrypt, align 2
  %bf.clear = and i8 %bf.load, 1
  %bf.cast = zext i8 %bf.clear to i32
  %tobool = icmp ne i32 %bf.cast, 0
  %4 = zext i1 %tobool to i64
  %cond = select i1 %tobool, i32 1, i32 0
  %5 = load i8*, i8** %nonce.addr, align 8
  %6 = load i64, i64* %nonce_length.addr, align 8
  %call = call i32 @mbedtls_gcm_starts(%struct.mbedtls_gcm_context* noundef %gcm, i32 noundef %cond, i8* noundef %5, i64 noundef %6) #3
  %call1 = call i32 @mbedtls_to_psa_error(i32 noundef %call) #3
  store i32 %call1, i32* %status, align 4
  br label %if.end32

if.else:                                          ; preds = %entry
  %7 = load %struct.mbedtls_psa_aead_operation_t*, %struct.mbedtls_psa_aead_operation_t** %operation.addr, align 8
  %alg2 = getelementptr inbounds %struct.mbedtls_psa_aead_operation_t, %struct.mbedtls_psa_aead_operation_t* %7, i32 0, i32 0
  %8 = load i32, i32* %alg2, align 8
  %cmp3 = icmp eq i32 %8, 89129216
  br i1 %cmp3, label %if.then4, label %if.else14

if.then4:                                         ; preds = %if.else
  %9 = load %struct.mbedtls_psa_aead_operation_t*, %struct.mbedtls_psa_aead_operation_t** %operation.addr, align 8
  %ctx5 = getelementptr inbounds %struct.mbedtls_psa_aead_operation_t, %struct.mbedtls_psa_aead_operation_t* %9, i32 0, i32 4
  %ccm = bitcast %union.anon* %ctx5 to %struct.mbedtls_ccm_context*
  %10 = load %struct.mbedtls_psa_aead_operation_t*, %struct.mbedtls_psa_aead_operation_t** %operation.addr, align 8
  %is_encrypt6 = getelementptr inbounds %struct.mbedtls_psa_aead_operation_t, %struct.mbedtls_psa_aead_operation_t* %10, i32 0, i32 2
  %bf.load7 = load i8, i8* %is_encrypt6, align 2
  %bf.clear8 = and i8 %bf.load7, 1
  %bf.cast9 = zext i8 %bf.clear8 to i32
  %tobool10 = icmp ne i32 %bf.cast9, 0
  %11 = zext i1 %tobool10 to i64
  %cond11 = select i1 %tobool10, i32 1, i32 0
  %12 = load i8*, i8** %nonce.addr, align 8
  %13 = load i64, i64* %nonce_length.addr, align 8
  %call12 = call i32 @mbedtls_ccm_starts(%struct.mbedtls_ccm_context* noundef %ccm, i32 noundef %cond11, i8* noundef %12, i64 noundef %13) #3
  %call13 = call i32 @mbedtls_to_psa_error(i32 noundef %call12) #3
  store i32 %call13, i32* %status, align 4
  br label %if.end31

if.else14:                                        ; preds = %if.else
  %14 = load %struct.mbedtls_psa_aead_operation_t*, %struct.mbedtls_psa_aead_operation_t** %operation.addr, align 8
  %alg15 = getelementptr inbounds %struct.mbedtls_psa_aead_operation_t, %struct.mbedtls_psa_aead_operation_t* %14, i32 0, i32 0
  %15 = load i32, i32* %alg15, align 8
  %cmp16 = icmp eq i32 %15, 84935936
  br i1 %cmp16, label %if.then17, label %if.else29

if.then17:                                        ; preds = %if.else14
  %16 = load i64, i64* %nonce_length.addr, align 8
  %cmp18 = icmp ne i64 %16, 12
  br i1 %cmp18, label %if.then19, label %if.end

if.then19:                                        ; preds = %if.then17
  store i32 -135, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %if.then17
  %17 = load %struct.mbedtls_psa_aead_operation_t*, %struct.mbedtls_psa_aead_operation_t** %operation.addr, align 8
  %ctx20 = getelementptr inbounds %struct.mbedtls_psa_aead_operation_t, %struct.mbedtls_psa_aead_operation_t* %17, i32 0, i32 4
  %chachapoly = bitcast %union.anon* %ctx20 to %struct.mbedtls_chachapoly_context*
  %18 = load i8*, i8** %nonce.addr, align 8
  %19 = load %struct.mbedtls_psa_aead_operation_t*, %struct.mbedtls_psa_aead_operation_t** %operation.addr, align 8
  %is_encrypt21 = getelementptr inbounds %struct.mbedtls_psa_aead_operation_t, %struct.mbedtls_psa_aead_operation_t* %19, i32 0, i32 2
  %bf.load22 = load i8, i8* %is_encrypt21, align 2
  %bf.clear23 = and i8 %bf.load22, 1
  %bf.cast24 = zext i8 %bf.clear23 to i32
  %tobool25 = icmp ne i32 %bf.cast24, 0
  %20 = zext i1 %tobool25 to i64
  %cond26 = select i1 %tobool25, i32 0, i32 1
  %call27 = call i32 @mbedtls_chachapoly_starts(%struct.mbedtls_chachapoly_context* noundef %chachapoly, i8* noundef %18, i32 noundef %cond26) #3
  %call28 = call i32 @mbedtls_to_psa_error(i32 noundef %call27) #3
  store i32 %call28, i32* %status, align 4
  br label %if.end30

if.else29:                                        ; preds = %if.else14
  %21 = load %struct.mbedtls_psa_aead_operation_t*, %struct.mbedtls_psa_aead_operation_t** %operation.addr, align 8
  %22 = load i8*, i8** %nonce.addr, align 8
  %23 = load i64, i64* %nonce_length.addr, align 8
  store i32 -134, i32* %retval, align 4
  br label %return

if.end30:                                         ; preds = %if.end
  br label %if.end31

if.end31:                                         ; preds = %if.end30, %if.then4
  br label %if.end32

if.end32:                                         ; preds = %if.end31, %if.then
  %24 = load i32, i32* %status, align 4
  store i32 %24, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end32, %if.else29, %if.then19
  %25 = load i32, i32* %retval, align 4
  ret i32 %25
}

declare dso_local i32 @mbedtls_gcm_starts(%struct.mbedtls_gcm_context* noundef, i32 noundef, i8* noundef, i64 noundef) #2

declare dso_local i32 @mbedtls_ccm_starts(%struct.mbedtls_ccm_context* noundef, i32 noundef, i8* noundef, i64 noundef) #2

declare dso_local i32 @mbedtls_chachapoly_starts(%struct.mbedtls_chachapoly_context* noundef, i8* noundef, i32 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_psa_aead_set_lengths(%struct.mbedtls_psa_aead_operation_t* noundef %operation, i64 noundef %ad_length, i64 noundef %plaintext_length) #0 {
entry:
  %retval = alloca i32, align 4
  %operation.addr = alloca %struct.mbedtls_psa_aead_operation_t*, align 8
  %ad_length.addr = alloca i64, align 8
  %plaintext_length.addr = alloca i64, align 8
  store %struct.mbedtls_psa_aead_operation_t* %operation, %struct.mbedtls_psa_aead_operation_t** %operation.addr, align 8
  store i64 %ad_length, i64* %ad_length.addr, align 8
  store i64 %plaintext_length, i64* %plaintext_length.addr, align 8
  %0 = load %struct.mbedtls_psa_aead_operation_t*, %struct.mbedtls_psa_aead_operation_t** %operation.addr, align 8
  %alg = getelementptr inbounds %struct.mbedtls_psa_aead_operation_t, %struct.mbedtls_psa_aead_operation_t* %0, i32 0, i32 0
  %1 = load i32, i32* %alg, align 8
  %cmp = icmp eq i32 %1, 89129216
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.mbedtls_psa_aead_operation_t*, %struct.mbedtls_psa_aead_operation_t** %operation.addr, align 8
  %ctx = getelementptr inbounds %struct.mbedtls_psa_aead_operation_t, %struct.mbedtls_psa_aead_operation_t* %2, i32 0, i32 4
  %ccm = bitcast %union.anon* %ctx to %struct.mbedtls_ccm_context*
  %3 = load i64, i64* %ad_length.addr, align 8
  %4 = load i64, i64* %plaintext_length.addr, align 8
  %5 = load %struct.mbedtls_psa_aead_operation_t*, %struct.mbedtls_psa_aead_operation_t** %operation.addr, align 8
  %tag_length = getelementptr inbounds %struct.mbedtls_psa_aead_operation_t, %struct.mbedtls_psa_aead_operation_t* %5, i32 0, i32 3
  %6 = load i8, i8* %tag_length, align 1
  %conv = zext i8 %6 to i64
  %call = call i32 @mbedtls_ccm_set_lengths(%struct.mbedtls_ccm_context* noundef %ccm, i64 noundef %3, i64 noundef %4, i64 noundef %conv) #3
  %call1 = call i32 @mbedtls_to_psa_error(i32 noundef %call) #3
  store i32 %call1, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %7 = load i32, i32* %retval, align 4
  ret i32 %7
}

declare dso_local i32 @mbedtls_ccm_set_lengths(%struct.mbedtls_ccm_context* noundef, i64 noundef, i64 noundef, i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_psa_aead_update_ad(%struct.mbedtls_psa_aead_operation_t* noundef %operation, i8* noundef %input, i64 noundef %input_length) #0 {
entry:
  %retval = alloca i32, align 4
  %operation.addr = alloca %struct.mbedtls_psa_aead_operation_t*, align 8
  %input.addr = alloca i8*, align 8
  %input_length.addr = alloca i64, align 8
  %status = alloca i32, align 4
  store %struct.mbedtls_psa_aead_operation_t* %operation, %struct.mbedtls_psa_aead_operation_t** %operation.addr, align 8
  store i8* %input, i8** %input.addr, align 8
  store i64 %input_length, i64* %input_length.addr, align 8
  store i32 -151, i32* %status, align 4
  %0 = load %struct.mbedtls_psa_aead_operation_t*, %struct.mbedtls_psa_aead_operation_t** %operation.addr, align 8
  %alg = getelementptr inbounds %struct.mbedtls_psa_aead_operation_t, %struct.mbedtls_psa_aead_operation_t* %0, i32 0, i32 0
  %1 = load i32, i32* %alg, align 8
  %cmp = icmp eq i32 %1, 89129472
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load %struct.mbedtls_psa_aead_operation_t*, %struct.mbedtls_psa_aead_operation_t** %operation.addr, align 8
  %ctx = getelementptr inbounds %struct.mbedtls_psa_aead_operation_t, %struct.mbedtls_psa_aead_operation_t* %2, i32 0, i32 4
  %gcm = bitcast %union.anon* %ctx to %struct.mbedtls_gcm_context*
  %3 = load i8*, i8** %input.addr, align 8
  %4 = load i64, i64* %input_length.addr, align 8
  %call = call i32 @mbedtls_gcm_update_ad(%struct.mbedtls_gcm_context* noundef %gcm, i8* noundef %3, i64 noundef %4) #3
  %call1 = call i32 @mbedtls_to_psa_error(i32 noundef %call) #3
  store i32 %call1, i32* %status, align 4
  br label %if.end17

if.else:                                          ; preds = %entry
  %5 = load %struct.mbedtls_psa_aead_operation_t*, %struct.mbedtls_psa_aead_operation_t** %operation.addr, align 8
  %alg2 = getelementptr inbounds %struct.mbedtls_psa_aead_operation_t, %struct.mbedtls_psa_aead_operation_t* %5, i32 0, i32 0
  %6 = load i32, i32* %alg2, align 8
  %cmp3 = icmp eq i32 %6, 89129216
  br i1 %cmp3, label %if.then4, label %if.else8

if.then4:                                         ; preds = %if.else
  %7 = load %struct.mbedtls_psa_aead_operation_t*, %struct.mbedtls_psa_aead_operation_t** %operation.addr, align 8
  %ctx5 = getelementptr inbounds %struct.mbedtls_psa_aead_operation_t, %struct.mbedtls_psa_aead_operation_t* %7, i32 0, i32 4
  %ccm = bitcast %union.anon* %ctx5 to %struct.mbedtls_ccm_context*
  %8 = load i8*, i8** %input.addr, align 8
  %9 = load i64, i64* %input_length.addr, align 8
  %call6 = call i32 @mbedtls_ccm_update_ad(%struct.mbedtls_ccm_context* noundef %ccm, i8* noundef %8, i64 noundef %9) #3
  %call7 = call i32 @mbedtls_to_psa_error(i32 noundef %call6) #3
  store i32 %call7, i32* %status, align 4
  br label %if.end16

if.else8:                                         ; preds = %if.else
  %10 = load %struct.mbedtls_psa_aead_operation_t*, %struct.mbedtls_psa_aead_operation_t** %operation.addr, align 8
  %alg9 = getelementptr inbounds %struct.mbedtls_psa_aead_operation_t, %struct.mbedtls_psa_aead_operation_t* %10, i32 0, i32 0
  %11 = load i32, i32* %alg9, align 8
  %cmp10 = icmp eq i32 %11, 84935936
  br i1 %cmp10, label %if.then11, label %if.else15

if.then11:                                        ; preds = %if.else8
  %12 = load %struct.mbedtls_psa_aead_operation_t*, %struct.mbedtls_psa_aead_operation_t** %operation.addr, align 8
  %ctx12 = getelementptr inbounds %struct.mbedtls_psa_aead_operation_t, %struct.mbedtls_psa_aead_operation_t* %12, i32 0, i32 4
  %chachapoly = bitcast %union.anon* %ctx12 to %struct.mbedtls_chachapoly_context*
  %13 = load i8*, i8** %input.addr, align 8
  %14 = load i64, i64* %input_length.addr, align 8
  %call13 = call i32 @mbedtls_chachapoly_update_aad(%struct.mbedtls_chachapoly_context* noundef %chachapoly, i8* noundef %13, i64 noundef %14) #3
  %call14 = call i32 @mbedtls_to_psa_error(i32 noundef %call13) #3
  store i32 %call14, i32* %status, align 4
  br label %if.end

if.else15:                                        ; preds = %if.else8
  %15 = load %struct.mbedtls_psa_aead_operation_t*, %struct.mbedtls_psa_aead_operation_t** %operation.addr, align 8
  %16 = load i8*, i8** %input.addr, align 8
  %17 = load i64, i64* %input_length.addr, align 8
  store i32 -134, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %if.then11
  br label %if.end16

if.end16:                                         ; preds = %if.end, %if.then4
  br label %if.end17

if.end17:                                         ; preds = %if.end16, %if.then
  %18 = load i32, i32* %status, align 4
  store i32 %18, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end17, %if.else15
  %19 = load i32, i32* %retval, align 4
  ret i32 %19
}

declare dso_local i32 @mbedtls_gcm_update_ad(%struct.mbedtls_gcm_context* noundef, i8* noundef, i64 noundef) #2

declare dso_local i32 @mbedtls_ccm_update_ad(%struct.mbedtls_ccm_context* noundef, i8* noundef, i64 noundef) #2

declare dso_local i32 @mbedtls_chachapoly_update_aad(%struct.mbedtls_chachapoly_context* noundef, i8* noundef, i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_psa_aead_update(%struct.mbedtls_psa_aead_operation_t* noundef %operation, i8* noundef %input, i64 noundef %input_length, i8* noundef %output, i64 noundef %output_size, i64* noundef %output_length) #0 {
entry:
  %retval = alloca i32, align 4
  %operation.addr = alloca %struct.mbedtls_psa_aead_operation_t*, align 8
  %input.addr = alloca i8*, align 8
  %input_length.addr = alloca i64, align 8
  %output.addr = alloca i8*, align 8
  %output_size.addr = alloca i64, align 8
  %output_length.addr = alloca i64*, align 8
  %update_output_length = alloca i64, align 8
  %status = alloca i32, align 4
  store %struct.mbedtls_psa_aead_operation_t* %operation, %struct.mbedtls_psa_aead_operation_t** %operation.addr, align 8
  store i8* %input, i8** %input.addr, align 8
  store i64 %input_length, i64* %input_length.addr, align 8
  store i8* %output, i8** %output.addr, align 8
  store i64 %output_size, i64* %output_size.addr, align 8
  store i64* %output_length, i64** %output_length.addr, align 8
  store i32 -151, i32* %status, align 4
  %0 = load i64, i64* %input_length.addr, align 8
  store i64 %0, i64* %update_output_length, align 8
  %1 = load %struct.mbedtls_psa_aead_operation_t*, %struct.mbedtls_psa_aead_operation_t** %operation.addr, align 8
  %alg = getelementptr inbounds %struct.mbedtls_psa_aead_operation_t, %struct.mbedtls_psa_aead_operation_t* %1, i32 0, i32 0
  %2 = load i32, i32* %alg, align 8
  %cmp = icmp eq i32 %2, 89129472
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = load %struct.mbedtls_psa_aead_operation_t*, %struct.mbedtls_psa_aead_operation_t** %operation.addr, align 8
  %ctx = getelementptr inbounds %struct.mbedtls_psa_aead_operation_t, %struct.mbedtls_psa_aead_operation_t* %3, i32 0, i32 4
  %gcm = bitcast %union.anon* %ctx to %struct.mbedtls_gcm_context*
  %4 = load i8*, i8** %input.addr, align 8
  %5 = load i64, i64* %input_length.addr, align 8
  %6 = load i8*, i8** %output.addr, align 8
  %7 = load i64, i64* %output_size.addr, align 8
  %call = call i32 @mbedtls_gcm_update(%struct.mbedtls_gcm_context* noundef %gcm, i8* noundef %4, i64 noundef %5, i8* noundef %6, i64 noundef %7, i64* noundef %update_output_length) #3
  %call1 = call i32 @mbedtls_to_psa_error(i32 noundef %call) #3
  store i32 %call1, i32* %status, align 4
  br label %if.end23

if.else:                                          ; preds = %entry
  %8 = load %struct.mbedtls_psa_aead_operation_t*, %struct.mbedtls_psa_aead_operation_t** %operation.addr, align 8
  %alg2 = getelementptr inbounds %struct.mbedtls_psa_aead_operation_t, %struct.mbedtls_psa_aead_operation_t* %8, i32 0, i32 0
  %9 = load i32, i32* %alg2, align 8
  %cmp3 = icmp eq i32 %9, 89129216
  br i1 %cmp3, label %if.then4, label %if.else10

if.then4:                                         ; preds = %if.else
  %10 = load i64, i64* %output_size.addr, align 8
  %11 = load i64, i64* %input_length.addr, align 8
  %cmp5 = icmp ult i64 %10, %11
  br i1 %cmp5, label %if.then6, label %if.end

if.then6:                                         ; preds = %if.then4
  store i32 -138, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %if.then4
  %12 = load %struct.mbedtls_psa_aead_operation_t*, %struct.mbedtls_psa_aead_operation_t** %operation.addr, align 8
  %ctx7 = getelementptr inbounds %struct.mbedtls_psa_aead_operation_t, %struct.mbedtls_psa_aead_operation_t* %12, i32 0, i32 4
  %ccm = bitcast %union.anon* %ctx7 to %struct.mbedtls_ccm_context*
  %13 = load i8*, i8** %input.addr, align 8
  %14 = load i64, i64* %input_length.addr, align 8
  %15 = load i8*, i8** %output.addr, align 8
  %16 = load i64, i64* %output_size.addr, align 8
  %call8 = call i32 @mbedtls_ccm_update(%struct.mbedtls_ccm_context* noundef %ccm, i8* noundef %13, i64 noundef %14, i8* noundef %15, i64 noundef %16, i64* noundef %update_output_length) #3
  %call9 = call i32 @mbedtls_to_psa_error(i32 noundef %call8) #3
  store i32 %call9, i32* %status, align 4
  br label %if.end22

if.else10:                                        ; preds = %if.else
  %17 = load %struct.mbedtls_psa_aead_operation_t*, %struct.mbedtls_psa_aead_operation_t** %operation.addr, align 8
  %alg11 = getelementptr inbounds %struct.mbedtls_psa_aead_operation_t, %struct.mbedtls_psa_aead_operation_t* %17, i32 0, i32 0
  %18 = load i32, i32* %alg11, align 8
  %cmp12 = icmp eq i32 %18, 84935936
  br i1 %cmp12, label %if.then13, label %if.else20

if.then13:                                        ; preds = %if.else10
  %19 = load i64, i64* %output_size.addr, align 8
  %20 = load i64, i64* %input_length.addr, align 8
  %cmp14 = icmp ult i64 %19, %20
  br i1 %cmp14, label %if.then15, label %if.end16

if.then15:                                        ; preds = %if.then13
  store i32 -138, i32* %retval, align 4
  br label %return

if.end16:                                         ; preds = %if.then13
  %21 = load %struct.mbedtls_psa_aead_operation_t*, %struct.mbedtls_psa_aead_operation_t** %operation.addr, align 8
  %ctx17 = getelementptr inbounds %struct.mbedtls_psa_aead_operation_t, %struct.mbedtls_psa_aead_operation_t* %21, i32 0, i32 4
  %chachapoly = bitcast %union.anon* %ctx17 to %struct.mbedtls_chachapoly_context*
  %22 = load i64, i64* %input_length.addr, align 8
  %23 = load i8*, i8** %input.addr, align 8
  %24 = load i8*, i8** %output.addr, align 8
  %call18 = call i32 @mbedtls_chachapoly_update(%struct.mbedtls_chachapoly_context* noundef %chachapoly, i64 noundef %22, i8* noundef %23, i8* noundef %24) #3
  %call19 = call i32 @mbedtls_to_psa_error(i32 noundef %call18) #3
  store i32 %call19, i32* %status, align 4
  br label %if.end21

if.else20:                                        ; preds = %if.else10
  %25 = load %struct.mbedtls_psa_aead_operation_t*, %struct.mbedtls_psa_aead_operation_t** %operation.addr, align 8
  %26 = load i8*, i8** %input.addr, align 8
  %27 = load i8*, i8** %output.addr, align 8
  %28 = load i64, i64* %output_size.addr, align 8
  store i32 -134, i32* %retval, align 4
  br label %return

if.end21:                                         ; preds = %if.end16
  br label %if.end22

if.end22:                                         ; preds = %if.end21, %if.end
  br label %if.end23

if.end23:                                         ; preds = %if.end22, %if.then
  %29 = load i32, i32* %status, align 4
  %cmp24 = icmp eq i32 %29, 0
  br i1 %cmp24, label %if.then25, label %if.end26

if.then25:                                        ; preds = %if.end23
  %30 = load i64, i64* %update_output_length, align 8
  %31 = load i64*, i64** %output_length.addr, align 8
  store i64 %30, i64* %31, align 8
  br label %if.end26

if.end26:                                         ; preds = %if.then25, %if.end23
  %32 = load i32, i32* %status, align 4
  store i32 %32, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end26, %if.else20, %if.then15, %if.then6
  %33 = load i32, i32* %retval, align 4
  ret i32 %33
}

declare dso_local i32 @mbedtls_gcm_update(%struct.mbedtls_gcm_context* noundef, i8* noundef, i64 noundef, i8* noundef, i64 noundef, i64* noundef) #2

declare dso_local i32 @mbedtls_ccm_update(%struct.mbedtls_ccm_context* noundef, i8* noundef, i64 noundef, i8* noundef, i64 noundef, i64* noundef) #2

declare dso_local i32 @mbedtls_chachapoly_update(%struct.mbedtls_chachapoly_context* noundef, i64 noundef, i8* noundef, i8* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_psa_aead_finish(%struct.mbedtls_psa_aead_operation_t* noundef %operation, i8* noundef %ciphertext, i64 noundef %ciphertext_size, i64* noundef %ciphertext_length, i8* noundef %tag, i64 noundef %tag_size, i64* noundef %tag_length) #0 {
entry:
  %retval = alloca i32, align 4
  %operation.addr = alloca %struct.mbedtls_psa_aead_operation_t*, align 8
  %ciphertext.addr = alloca i8*, align 8
  %ciphertext_size.addr = alloca i64, align 8
  %ciphertext_length.addr = alloca i64*, align 8
  %tag.addr = alloca i8*, align 8
  %tag_size.addr = alloca i64, align 8
  %tag_length.addr = alloca i64*, align 8
  %status = alloca i32, align 4
  %finish_output_size = alloca i64, align 8
  store %struct.mbedtls_psa_aead_operation_t* %operation, %struct.mbedtls_psa_aead_operation_t** %operation.addr, align 8
  store i8* %ciphertext, i8** %ciphertext.addr, align 8
  store i64 %ciphertext_size, i64* %ciphertext_size.addr, align 8
  store i64* %ciphertext_length, i64** %ciphertext_length.addr, align 8
  store i8* %tag, i8** %tag.addr, align 8
  store i64 %tag_size, i64* %tag_size.addr, align 8
  store i64* %tag_length, i64** %tag_length.addr, align 8
  store i32 -151, i32* %status, align 4
  store i64 0, i64* %finish_output_size, align 8
  %0 = load i64, i64* %tag_size.addr, align 8
  %1 = load %struct.mbedtls_psa_aead_operation_t*, %struct.mbedtls_psa_aead_operation_t** %operation.addr, align 8
  %tag_length1 = getelementptr inbounds %struct.mbedtls_psa_aead_operation_t, %struct.mbedtls_psa_aead_operation_t* %1, i32 0, i32 3
  %2 = load i8, i8* %tag_length1, align 1
  %conv = zext i8 %2 to i64
  %cmp = icmp ult i64 %0, %conv
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -138, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %3 = load %struct.mbedtls_psa_aead_operation_t*, %struct.mbedtls_psa_aead_operation_t** %operation.addr, align 8
  %alg = getelementptr inbounds %struct.mbedtls_psa_aead_operation_t, %struct.mbedtls_psa_aead_operation_t* %3, i32 0, i32 0
  %4 = load i32, i32* %alg, align 8
  %cmp3 = icmp eq i32 %4, 89129472
  br i1 %cmp3, label %if.then5, label %if.else

if.then5:                                         ; preds = %if.end
  %5 = load %struct.mbedtls_psa_aead_operation_t*, %struct.mbedtls_psa_aead_operation_t** %operation.addr, align 8
  %ctx = getelementptr inbounds %struct.mbedtls_psa_aead_operation_t, %struct.mbedtls_psa_aead_operation_t* %5, i32 0, i32 4
  %gcm = bitcast %union.anon* %ctx to %struct.mbedtls_gcm_context*
  %6 = load i8*, i8** %ciphertext.addr, align 8
  %7 = load i64, i64* %ciphertext_size.addr, align 8
  %8 = load i64*, i64** %ciphertext_length.addr, align 8
  %9 = load i8*, i8** %tag.addr, align 8
  %10 = load %struct.mbedtls_psa_aead_operation_t*, %struct.mbedtls_psa_aead_operation_t** %operation.addr, align 8
  %tag_length6 = getelementptr inbounds %struct.mbedtls_psa_aead_operation_t, %struct.mbedtls_psa_aead_operation_t* %10, i32 0, i32 3
  %11 = load i8, i8* %tag_length6, align 1
  %conv7 = zext i8 %11 to i64
  %call = call i32 @mbedtls_gcm_finish(%struct.mbedtls_gcm_context* noundef %gcm, i8* noundef %6, i64 noundef %7, i64* noundef %8, i8* noundef %9, i64 noundef %conv7) #3
  %call8 = call i32 @mbedtls_to_psa_error(i32 noundef %call) #3
  store i32 %call8, i32* %status, align 4
  br label %if.end39

if.else:                                          ; preds = %if.end
  %12 = load %struct.mbedtls_psa_aead_operation_t*, %struct.mbedtls_psa_aead_operation_t** %operation.addr, align 8
  %alg9 = getelementptr inbounds %struct.mbedtls_psa_aead_operation_t, %struct.mbedtls_psa_aead_operation_t* %12, i32 0, i32 0
  %13 = load i32, i32* %alg9, align 8
  %cmp10 = icmp eq i32 %13, 89129216
  br i1 %cmp10, label %if.then12, label %if.else24

if.then12:                                        ; preds = %if.else
  %14 = load i64, i64* %tag_size.addr, align 8
  %15 = load %struct.mbedtls_psa_aead_operation_t*, %struct.mbedtls_psa_aead_operation_t** %operation.addr, align 8
  %tag_length13 = getelementptr inbounds %struct.mbedtls_psa_aead_operation_t, %struct.mbedtls_psa_aead_operation_t* %15, i32 0, i32 3
  %16 = load i8, i8* %tag_length13, align 1
  %conv14 = zext i8 %16 to i64
  %cmp15 = icmp ult i64 %14, %conv14
  br i1 %cmp15, label %if.then17, label %if.end18

if.then17:                                        ; preds = %if.then12
  store i32 -138, i32* %retval, align 4
  br label %return

if.end18:                                         ; preds = %if.then12
  %17 = load %struct.mbedtls_psa_aead_operation_t*, %struct.mbedtls_psa_aead_operation_t** %operation.addr, align 8
  %ctx19 = getelementptr inbounds %struct.mbedtls_psa_aead_operation_t, %struct.mbedtls_psa_aead_operation_t* %17, i32 0, i32 4
  %ccm = bitcast %union.anon* %ctx19 to %struct.mbedtls_ccm_context*
  %18 = load i8*, i8** %tag.addr, align 8
  %19 = load %struct.mbedtls_psa_aead_operation_t*, %struct.mbedtls_psa_aead_operation_t** %operation.addr, align 8
  %tag_length20 = getelementptr inbounds %struct.mbedtls_psa_aead_operation_t, %struct.mbedtls_psa_aead_operation_t* %19, i32 0, i32 3
  %20 = load i8, i8* %tag_length20, align 1
  %conv21 = zext i8 %20 to i64
  %call22 = call i32 @mbedtls_ccm_finish(%struct.mbedtls_ccm_context* noundef %ccm, i8* noundef %18, i64 noundef %conv21) #3
  %call23 = call i32 @mbedtls_to_psa_error(i32 noundef %call22) #3
  store i32 %call23, i32* %status, align 4
  br label %if.end38

if.else24:                                        ; preds = %if.else
  %21 = load %struct.mbedtls_psa_aead_operation_t*, %struct.mbedtls_psa_aead_operation_t** %operation.addr, align 8
  %alg25 = getelementptr inbounds %struct.mbedtls_psa_aead_operation_t, %struct.mbedtls_psa_aead_operation_t* %21, i32 0, i32 0
  %22 = load i32, i32* %alg25, align 8
  %cmp26 = icmp eq i32 %22, 84935936
  br i1 %cmp26, label %if.then28, label %if.else36

if.then28:                                        ; preds = %if.else24
  %23 = load i64, i64* %tag_size.addr, align 8
  %cmp29 = icmp ult i64 %23, 16
  br i1 %cmp29, label %if.then31, label %if.end32

if.then31:                                        ; preds = %if.then28
  store i32 -138, i32* %retval, align 4
  br label %return

if.end32:                                         ; preds = %if.then28
  %24 = load %struct.mbedtls_psa_aead_operation_t*, %struct.mbedtls_psa_aead_operation_t** %operation.addr, align 8
  %ctx33 = getelementptr inbounds %struct.mbedtls_psa_aead_operation_t, %struct.mbedtls_psa_aead_operation_t* %24, i32 0, i32 4
  %chachapoly = bitcast %union.anon* %ctx33 to %struct.mbedtls_chachapoly_context*
  %25 = load i8*, i8** %tag.addr, align 8
  %call34 = call i32 @mbedtls_chachapoly_finish(%struct.mbedtls_chachapoly_context* noundef %chachapoly, i8* noundef %25) #3
  %call35 = call i32 @mbedtls_to_psa_error(i32 noundef %call34) #3
  store i32 %call35, i32* %status, align 4
  br label %if.end37

if.else36:                                        ; preds = %if.else24
  %26 = load i8*, i8** %ciphertext.addr, align 8
  %27 = load i64, i64* %ciphertext_size.addr, align 8
  %28 = load i64*, i64** %ciphertext_length.addr, align 8
  %29 = load i8*, i8** %tag.addr, align 8
  %30 = load i64, i64* %tag_size.addr, align 8
  %31 = load i64*, i64** %tag_length.addr, align 8
  store i32 -134, i32* %retval, align 4
  br label %return

if.end37:                                         ; preds = %if.end32
  br label %if.end38

if.end38:                                         ; preds = %if.end37, %if.end18
  br label %if.end39

if.end39:                                         ; preds = %if.end38, %if.then5
  %32 = load i32, i32* %status, align 4
  %cmp40 = icmp eq i32 %32, 0
  br i1 %cmp40, label %if.then42, label %if.end45

if.then42:                                        ; preds = %if.end39
  %33 = load i64, i64* %finish_output_size, align 8
  %34 = load i64*, i64** %ciphertext_length.addr, align 8
  store i64 %33, i64* %34, align 8
  %35 = load %struct.mbedtls_psa_aead_operation_t*, %struct.mbedtls_psa_aead_operation_t** %operation.addr, align 8
  %tag_length43 = getelementptr inbounds %struct.mbedtls_psa_aead_operation_t, %struct.mbedtls_psa_aead_operation_t* %35, i32 0, i32 3
  %36 = load i8, i8* %tag_length43, align 1
  %conv44 = zext i8 %36 to i64
  %37 = load i64*, i64** %tag_length.addr, align 8
  store i64 %conv44, i64* %37, align 8
  br label %if.end45

if.end45:                                         ; preds = %if.then42, %if.end39
  %38 = load i32, i32* %status, align 4
  store i32 %38, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end45, %if.else36, %if.then31, %if.then17, %if.then
  %39 = load i32, i32* %retval, align 4
  ret i32 %39
}

declare dso_local i32 @mbedtls_gcm_finish(%struct.mbedtls_gcm_context* noundef, i8* noundef, i64 noundef, i64* noundef, i8* noundef, i64 noundef) #2

declare dso_local i32 @mbedtls_ccm_finish(%struct.mbedtls_ccm_context* noundef, i8* noundef, i64 noundef) #2

declare dso_local i32 @mbedtls_chachapoly_finish(%struct.mbedtls_chachapoly_context* noundef, i8* noundef) #2

declare dso_local void @mbedtls_ccm_free(%struct.mbedtls_ccm_context* noundef) #2

declare dso_local void @mbedtls_gcm_free(%struct.mbedtls_gcm_context* noundef) #2

declare dso_local void @mbedtls_chachapoly_free(%struct.mbedtls_chachapoly_context* noundef) #2

declare dso_local %struct.mbedtls_cipher_info_t* @mbedtls_cipher_info_from_psa(i32 noundef, i16 noundef zeroext, i64 noundef, i32* noundef) #2

declare dso_local void @mbedtls_ccm_init(%struct.mbedtls_ccm_context* noundef) #2

declare dso_local i32 @mbedtls_ccm_setkey(%struct.mbedtls_ccm_context* noundef, i32 noundef, i8* noundef, i32 noundef) #2

declare dso_local void @mbedtls_gcm_init(%struct.mbedtls_gcm_context* noundef) #2

declare dso_local i32 @mbedtls_gcm_setkey(%struct.mbedtls_gcm_context* noundef, i32 noundef, i8* noundef, i32 noundef) #2

declare dso_local void @mbedtls_chachapoly_init(%struct.mbedtls_chachapoly_context* noundef) #2

declare dso_local i32 @mbedtls_chachapoly_setkey(%struct.mbedtls_chachapoly_context* noundef, i8* noundef) #2

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

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly nofree nounwind willreturn writeonly }
attributes #2 = { "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nobuiltin "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.0"}
